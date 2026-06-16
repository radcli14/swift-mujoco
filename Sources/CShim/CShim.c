#include <stddef.h>

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
