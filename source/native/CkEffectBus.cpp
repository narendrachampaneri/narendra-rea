// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 2 functions

// ---- CkEffectBus::~CkEffectBus  @ 0x777500
/* CkEffectBus::~CkEffectBus() */

CkEffectBus * __thiscall CkEffectBus::~CkEffectBus(CkEffectBus *this)

{
  return this;
}

// ---- CkEffectBus::~CkEffectBus  @ 0x777504
/* CkEffectBus::~CkEffectBus() */

void __thiscall CkEffectBus::~CkEffectBus(CkEffectBus *this)

{
  if (this == (CkEffectBus *)0x0) {
    return;
  }
  free(this);
  return;
}
