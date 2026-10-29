// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 1 functions

// ---- b2DistanceInput::b2DistanceInput  @ 0x6c50d8
/* b2DistanceInput::b2DistanceInput() */

b2DistanceInput * __thiscall b2DistanceInput::b2DistanceInput(b2DistanceInput *this)

{
  b2DistanceProxy::b2DistanceProxy((b2DistanceProxy *)this);
  b2DistanceProxy::b2DistanceProxy((b2DistanceProxy *)(this + 0x1c));
  b2Transform::b2Transform((b2Transform *)(this + 0x38));
  b2Transform::b2Transform((b2Transform *)(this + 0x48));
  return this;
}
