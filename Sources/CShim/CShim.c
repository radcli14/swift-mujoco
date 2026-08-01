#include <setjmp.h>
#include <stddef.h>
#include <string.h>

#include "mujoco/mjui.h"

int offsetAnonymousUnionOfMjuiItem() {
	return offsetof(struct mjuiItem_, single);
}

// Defined in the vendored decoder plugins (CMujoco/plugin/*_decoder). Referencing them here forces
// their translation units to be retained when MuJoCo is built as a static archive.
extern void mjregister_obj_decoder(void);
extern void mjregister_stl_decoder(void);

void mj_registerBuiltinDecoders(void) {
	mjregister_obj_decoder();
	mjregister_stl_decoder();
}

// MARK: - Protected calls

// MuJoCo's internal thread-local error hook (engine_util_errmem.h). Declared here rather than
// including that private header, which is not on the public include path.
extern void _mjPRIVATE__set_tls_error_fn(void (*h)(const char *));
extern void (*_mjPRIVATE__get_tls_error_fn(void))(const char *);

// Per-thread landing pad for `mj_protectedCall`. Thread-local because two threads may each be
// inside their own protected call — a shared jump target would send one thread's error into the
// other's stack frame.
//
// `mjc_active` guards against a stray MuJoCo error arriving on this thread while no protected
// call is in progress: `longjmp` to a stale `jmp_buf` would jump into a dead stack frame. In that
// case the handler returns, and `mju_error_raw` then simply returns to its caller — no worse than
// MuJoCo's own no-handler path minus the exit, and it cannot happen while the handler is only
// ever installed for the duration of a call below.
static _Thread_local jmp_buf mjc_jump;
static _Thread_local int mjc_active = 0;
static _Thread_local char mjc_message[1024];

static void mjc_error_handler(const char *msg) {
	if (msg) {
		strncpy(mjc_message, msg, sizeof(mjc_message) - 1);
		mjc_message[sizeof(mjc_message) - 1] = '\0';
	} else {
		mjc_message[0] = '\0';
	}
	if (mjc_active) {
		longjmp(mjc_jump, 1);
	}
	// No active protected call: fall through and let mju_error_raw return, rather than jumping
	// into a stack frame that no longer exists.
}

int mj_protectedCall(void (*body)(void *), void *context, char *errbuf, size_t errbuf_len) {
	if (body == NULL) {
		return 0;
	}

	// Save and restore both the handler and the active flag so protected calls can nest: an inner
	// call must hand control back to the OUTER landing pad once it completes.
	void (*previous_handler)(const char *) = _mjPRIVATE__get_tls_error_fn();
	int previous_active = mjc_active;
	jmp_buf previous_jump;
	memcpy(previous_jump, mjc_jump, sizeof(jmp_buf));

	int failed = 0;
	mjc_message[0] = '\0';

	if (setjmp(mjc_jump) == 0) {
		mjc_active = 1;
		_mjPRIVATE__set_tls_error_fn(mjc_error_handler);
		body(context);
	} else {
		// Arrived here via longjmp from mjc_error_handler.
		failed = 1;
	}

	_mjPRIVATE__set_tls_error_fn(previous_handler);
	mjc_active = previous_active;
	memcpy(mjc_jump, previous_jump, sizeof(jmp_buf));

	if (failed && errbuf != NULL && errbuf_len > 0) {
		strncpy(errbuf, mjc_message, errbuf_len - 1);
		errbuf[errbuf_len - 1] = '\0';
	}
	return failed;
}
