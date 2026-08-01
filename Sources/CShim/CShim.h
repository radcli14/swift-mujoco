#include <pthread.h>
#include <stddef.h>
// This is used to expose the underlying offset of the items. Swift have issues with anonymous union.
extern int offsetAnonymousUnionOfMjuiItem();

// Register MuJoCo's built-in mesh-file decoders (OBJ + STL) so that models referencing external
// .obj / .stl meshes can be compiled. Safe to call multiple times (registration is dedup-safe).
// The binding calls this once before the first model is loaded.
extern void mj_registerBuiltinDecoders(void);

// Run `body` with a MuJoCo error handler installed, so an internal MuJoCo error unwinds back
// here instead of terminating the process.
//
// WHY THIS EXISTS: `mju_error` — reached from the `mjERROR` macro used throughout the engine —
// ends in `exit(EXIT_FAILURE)` when no handler is installed (see `mju_error_raw` in
// engine_util_errmem.c). That is a clean process exit, not a signal, so the host app simply
// vanishes with no crash report and no chance to recover — exactly what a
// "rank-deficient sparse Hessian" from the Newton solver does to a running simulation.
//
// MuJoCo's contract is that an error handler must NOT return to its caller: the engine has
// already decided its state is unusable, and `mju_error_raw` would otherwise fall through and
// let the caller continue on garbage. `longjmp` is the only way to honour that from C, and is
// the same mechanism MuJoCo's own Python bindings use.
//
// Uses the THREAD-LOCAL handler (`_mjPRIVATE__set_tls_error_fn`) rather than the global
// `mju_user_error`, so a protected call on one thread cannot capture errors raised on another —
// which matters here because model compilation and stepping can run concurrently. The previous
// handler and jump target are saved and restored, so nested protected calls behave correctly.
//
// Returns 0 on success. On a MuJoCo error returns 1 and, when `errbuf` is non-NULL, copies the
// NUL-terminated message (truncated to `errbuf_len`) into it.
//
// CAVEAT worth knowing: `longjmp` skips any cleanup between the error site and here. MuJoCo's
// engine is C with no destructors, and its scratch space lives on `mjData`'s arena, which is
// reset per step rather than freed — so the leak surface is bounded. It is still the reason a
// failed call should be treated as "this model/step is unusable", not "retry and carry on".
extern int mj_protectedCall(void (*body)(void *), void *context, char *errbuf, size_t errbuf_len);
