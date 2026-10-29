// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 6 functions

// ---- b2ContactListener::~b2ContactListener  @ 0x6d96ac
/* WARNING: Removing unreachable block (ram,0x006d96c6) */
/* b2ContactListener::~b2ContactListener() */

b2ContactListener * __thiscall b2ContactListener::~b2ContactListener(b2ContactListener *this)

{
  *(undefined ***)this = &PTR__b2ContactListener_1_0093c180;
  return this;
}

// ---- b2ContactListener::~b2ContactListener  @ 0x6d96e0
/* b2ContactListener::~b2ContactListener() */

b2ContactListener * __thiscall b2ContactListener::~b2ContactListener(b2ContactListener *this)

{
  ~b2ContactListener(this);
  operator_delete(this);
  return this;
}

// ---- b2ContactListener::BeginContact  @ 0x6d96fc
/* b2ContactListener::BeginContact(b2Contact*) */

void b2ContactListener::BeginContact(b2Contact *param_1)

{
  return;
}

// ---- b2ContactListener::EndContact  @ 0x6d9708
/* b2ContactListener::EndContact(b2Contact*) */

void b2ContactListener::EndContact(b2Contact *param_1)

{
  return;
}

// ---- b2ContactListener::PreSolve  @ 0x6d9714
/* b2ContactListener::PreSolve(b2Contact*, b2Manifold const*) */

void b2ContactListener::PreSolve(b2Contact *param_1,b2Manifold *param_2)

{
  return;
}

// ---- b2ContactListener::PostSolve  @ 0x6d9720
/* b2ContactListener::PostSolve(b2Contact*, b2ContactImpulse const*) */

void b2ContactListener::PostSolve(b2Contact *param_1,b2ContactImpulse *param_2)

{
  return;
}
