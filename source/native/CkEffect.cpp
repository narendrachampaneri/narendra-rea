// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 2 functions

// ---- CkEffect::~CkEffect  @ 0x78a2c8
/* CkEffect::~CkEffect() */

CkEffect * __thiscall CkEffect::~CkEffect(CkEffect *this)

{
  return this;
}

// ---- CkEffect::~CkEffect  @ 0x78a2cc
/* CkEffect::~CkEffect() */

void __thiscall CkEffect::~CkEffect(CkEffect *this)

{
  if (this == (CkEffect *)0x0) {
    return;
  }
  free(this);
  return;
}
