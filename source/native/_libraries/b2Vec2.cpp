// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 14 functions

// ---- b2Vec2::b2Vec2  @ 0x6bfd10
/* b2Vec2::b2Vec2() */

b2Vec2 * __thiscall b2Vec2::b2Vec2(b2Vec2 *this)

{
  return this;
}

// ---- b2Vec2::b2Vec2  @ 0x6bfd1c
/* b2Vec2::b2Vec2(float, float) */

b2Vec2 * __thiscall b2Vec2::b2Vec2(b2Vec2 *this,float param_1,float param_2)

{
  undefined4 in_r1;
  undefined4 in_r2;
  
  *(undefined4 *)this = in_r1;
  *(undefined4 *)(this + 4) = in_r2;
  return this;
}

// ---- b2Vec2::SetZero  @ 0x6bfd38
/* b2Vec2::SetZero() */

void __thiscall b2Vec2::SetZero(b2Vec2 *this)

{
  *(undefined4 *)this = 0;
  *(undefined4 *)(this + 4) = 0;
  return;
}

// ---- b2Vec2::Set  @ 0x6c04f0
/* b2Vec2::Set(float, float) */

void __thiscall b2Vec2::Set(b2Vec2 *this,float param_1,float param_2)

{
  undefined4 in_r1;
  undefined4 in_r2;
  
  *(undefined4 *)this = in_r1;
  *(undefined4 *)(this + 4) = in_r2;
  return;
}

// ---- b2Vec2::Length  @ 0x6c0508
/* b2Vec2::Length() const */

undefined4 __thiscall b2Vec2::Length(b2Vec2 *this)

{
  undefined4 uVar1;
  float in_s0;
  
  uVar1 = std::sqrt(in_s0);
  return uVar1;
}

// ---- b2Vec2::Normalize  @ 0x6c0544
/* b2Vec2::Normalize() */

float __thiscall b2Vec2::Normalize(b2Vec2 *this)

{
  float fVar1;
  
  fVar1 = (float)Length(this);
  if ((int)((uint)(fVar1 < 1.1920929e-07) << 0x1f) < 0) {
    fVar1 = 0.0;
  }
  else {
    *(float *)this = *(float *)this * (1.0 / fVar1);
    *(float *)(this + 4) = *(float *)(this + 4) * (1.0 / fVar1);
  }
  return fVar1;
}

// ---- b2Vec2::operator-  @ 0x6c0b6c
/* b2Vec2::TEMPNAMEPLACEHOLDERVALUE() const */

b2Vec2 * __thiscall b2Vec2::operator-(b2Vec2 *this)

{
  undefined8 uVar1;
  
  uVar1 = b2Vec2(this);
  Set(this,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
  return this;
}

// ---- b2Vec2::operator+=  @ 0x6c1034
/* b2Vec2::TEMPNAMEPLACEHOLDERVALUE(b2Vec2 const&) */

void __thiscall b2Vec2::operator+=(b2Vec2 *this,b2Vec2 *param_1)

{
  *(float *)this = *(float *)this + *(float *)param_1;
  *(float *)(this + 4) = *(float *)(this + 4) + *(float *)(param_1 + 4);
  return;
}

// ---- b2Vec2::operator*=  @ 0x6c106c
/* b2Vec2::TEMPNAMEPLACEHOLDERVALUE(float) */

void __thiscall b2Vec2::operator*=(b2Vec2 *this,float param_1)

{
  float in_r1;
  
  *(float *)this = *(float *)this * in_r1;
  *(float *)(this + 4) = *(float *)(this + 4) * in_r1;
  return;
}

// ---- b2Vec2::operator()  @ 0x6c4848
/* b2Vec2::TEMPNAMEPLACEHOLDERVALUE(int) const */

undefined4 __thiscall b2Vec2::operator()(b2Vec2 *this,int param_1)

{
  return *(undefined4 *)(this + param_1 * 4);
}

// ---- b2Vec2::operator()  @ 0x6c4860
/* b2Vec2::TEMPNAMEPLACEHOLDERVALUE(int) */

b2Vec2 * __thiscall b2Vec2::operator()(b2Vec2 *this,int param_1)

{
  return this + param_1 * 4;
}

// ---- b2Vec2::operator-=  @ 0x6c5208
/* b2Vec2::TEMPNAMEPLACEHOLDERVALUE(b2Vec2 const&) */

void __thiscall b2Vec2::operator-=(b2Vec2 *this,b2Vec2 *param_1)

{
  *(float *)this = *(float *)this - *(float *)param_1;
  *(float *)(this + 4) = *(float *)(this + 4) - *(float *)(param_1 + 4);
  return;
}

// ---- b2Vec2::LengthSquared  @ 0x6c5240
/* b2Vec2::LengthSquared() const */

float __thiscall b2Vec2::LengthSquared(b2Vec2 *this)

{
  return *(float *)this * *(float *)this + *(float *)(this + 4) * *(float *)(this + 4);
}

// ---- b2Vec2::Skew  @ 0x6dee90
/* b2Vec2::Skew() const */

b2Vec2 * b2Vec2::Skew(void)

{
  b2Vec2 *in_r0;
  float in_s0;
  float in_s1;
  
  b2Vec2(in_r0,in_s0,in_s1);
  return in_r0;
}
