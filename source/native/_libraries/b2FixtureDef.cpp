// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 1 functions

// ---- b2FixtureDef::b2FixtureDef  @ 0x6d8754
/* b2FixtureDef::b2FixtureDef() */

b2FixtureDef * __thiscall b2FixtureDef::b2FixtureDef(b2FixtureDef *this)

{
  b2Filter::b2Filter((b2Filter *)(this + 0x16));
  *(undefined4 *)this = 0;
  *(undefined4 *)(this + 4) = 0;
  *(undefined4 *)(this + 8) = 0x3e4ccccd;
  *(undefined4 *)(this + 0xc) = 0;
  *(undefined4 *)(this + 0x10) = 0;
  this[0x14] = (b2FixtureDef)0x0;
  return this;
}
