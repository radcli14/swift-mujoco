#include <pthread.h>
// This is used to expose the underlying offset of the items. Swift have issues with anonymous union.
extern int offsetAnonymousUnionOfMjuiItem();

// Register MuJoCo's built-in mesh-file decoders (OBJ + STL) so that models referencing external
// .obj / .stl meshes can be compiled. Safe to call multiple times (registration is dedup-safe).
// The binding calls this once before the first model is loaded.
extern void mj_registerBuiltinDecoders(void);
