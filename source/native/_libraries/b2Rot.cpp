// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 3 functions

// ---- b2Rot::b2Rot  @ 0x6c10a0
/* b2Rot::b2Rot() */

b2Rot * __thiscall b2Rot::b2Rot(b2Rot *this)

{
  return this;
}

// ---- b2Rot::Set  @ 0x6c10ac
/* b2Rot::Set(float) */

void __thiscall b2Rot::Set(b2Rot *this,float param_1)

{
  undefined4 extraout_r0;
  undefined4 extraout_r0_00;
  float __x;
  
  __x = sinf(param_1);
  *(undefined4 *)this = extraout_r0;
  cosf(__x);
  *(undefined4 *)(this + 4) = extraout_r0_00;
  return;
}

// ---- b2Rot::b2Rot  @ 0x6cca90
/* b2Rot::b2Rot(float) */

b2Rot * __thiscall b2Rot::b2Rot(b2Rot *this,float param_1)

{
  undefined4 extraout_r0;
  undefined4 extraout_r0_00;
  float __x;
  
  __x = sinf(param_1);
  *(undefined4 *)this = extraout_r0;
  cosf(__x);
  *(undefined4 *)(this + 4) = extraout_r0_00;
  return this;
}
