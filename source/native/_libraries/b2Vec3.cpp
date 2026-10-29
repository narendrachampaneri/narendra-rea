// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 7 functions

// ---- b2Vec3::b2Vec3  @ 0x6c8e18
/* b2Vec3::b2Vec3() */

b2Vec3 * __thiscall b2Vec3::b2Vec3(b2Vec3 *this)

{
  return this;
}

// ---- b2Vec3::b2Vec3  @ 0x6c8e24
/* b2Vec3::b2Vec3(float, float, float) */

b2Vec3 * __thiscall b2Vec3::b2Vec3(b2Vec3 *this,float param_1,float param_2,float param_3)

{
  undefined4 in_r1;
  undefined4 in_r2;
  undefined4 in_r3;
  
  *(undefined4 *)this = in_r1;
  *(undefined4 *)(this + 4) = in_r2;
  *(undefined4 *)(this + 8) = in_r3;
  return this;
}

// ---- b2Vec3::SetZero  @ 0x6d09ac
/* b2Vec3::SetZero() */

void __thiscall b2Vec3::SetZero(b2Vec3 *this)

{
  *(undefined4 *)this = 0;
  *(undefined4 *)(this + 4) = 0;
  *(undefined4 *)(this + 8) = 0;
  return;
}

// ---- b2Vec3::Set  @ 0x6d09cc
/* b2Vec3::Set(float, float, float) */

void __thiscall b2Vec3::Set(b2Vec3 *this,float param_1,float param_2,float param_3)

{
  undefined4 in_r1;
  undefined4 in_r2;
  undefined4 in_r3;
  
  *(undefined4 *)this = in_r1;
  *(undefined4 *)(this + 4) = in_r2;
  *(undefined4 *)(this + 8) = in_r3;
  return;
}

// ---- b2Vec3::operator-  @ 0x6d09ec
/* b2Vec3::TEMPNAMEPLACEHOLDERVALUE() const */

b2Vec3 * __thiscall b2Vec3::operator-(b2Vec3 *this)

{
  float extraout_s0;
  float extraout_s1;
  float extraout_s2;
  
  b2Vec3(this);
  Set(this,extraout_s0,extraout_s1,extraout_s2);
  return this;
}

// ---- b2Vec3::operator+=  @ 0x6d0a34
/* b2Vec3::TEMPNAMEPLACEHOLDERVALUE(b2Vec3 const&) */

void __thiscall b2Vec3::operator+=(b2Vec3 *this,b2Vec3 *param_1)

{
  *(float *)this = *(float *)this + *(float *)param_1;
  *(float *)(this + 4) = *(float *)(this + 4) + *(float *)(param_1 + 4);
  *(float *)(this + 8) = *(float *)(this + 8) + *(float *)(param_1 + 8);
  return;
}

// ---- b2Vec3::operator*=  @ 0x6d0a80
/* b2Vec3::TEMPNAMEPLACEHOLDERVALUE(float) */

void __thiscall b2Vec3::operator*=(b2Vec3 *this,float param_1)

{
  float in_r1;
  
  *(float *)this = *(float *)this * in_r1;
  *(float *)(this + 4) = *(float *)(this + 4) * in_r1;
  *(float *)(this + 8) = *(float *)(this + 8) * in_r1;
  return;
}
