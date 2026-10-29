// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 1 functions

// ---- b2Color::b2Color  @ 0x6dc5dc
/* b2Color::b2Color(float, float, float) */

b2Color * __thiscall b2Color::b2Color(b2Color *this,float param_1,float param_2,float param_3)

{
  undefined4 in_r1;
  undefined4 in_r2;
  undefined4 in_r3;
  
  *(undefined4 *)this = in_r1;
  *(undefined4 *)(this + 4) = in_r2;
  *(undefined4 *)(this + 8) = in_r3;
  return this;
}
