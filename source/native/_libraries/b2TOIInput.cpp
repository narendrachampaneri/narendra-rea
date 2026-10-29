// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 1 functions

// ---- b2TOIInput::b2TOIInput  @ 0x6dd220
/* b2TOIInput::b2TOIInput() */

b2TOIInput * __thiscall b2TOIInput::b2TOIInput(b2TOIInput *this)

{
  b2DistanceProxy::b2DistanceProxy((b2DistanceProxy *)this);
  b2DistanceProxy::b2DistanceProxy((b2DistanceProxy *)(this + 0x1c));
  b2Sweep::b2Sweep((b2Sweep *)(this + 0x38));
  b2Sweep::b2Sweep((b2Sweep *)(this + 0x5c));
  return this;
}
