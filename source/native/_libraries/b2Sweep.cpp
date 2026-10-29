// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 4 functions

// ---- b2Sweep::GetTransform  @ 0x6c7ab8
/* b2Sweep::GetTransform(b2Transform*, float) const */

void b2Sweep::GetTransform(b2Transform *param_1,float param_2)

{
  b2Vec2 *pbVar1;
  b2Vec2 *in_r1;
  float in_r2;
  float fVar2;
  undefined4 local_38;
  undefined4 uStack_34;
  float local_2c;
  b2Vec2 *local_28;
  b2Transform *local_24;
  float local_1c;
  b2Vec2 abStack_18 [8];
  b2Vec2 abStack_10 [8];
  
  local_2c = in_r2;
  local_28 = in_r1;
  local_24 = param_1;
  fVar2 = (float)::operator*(param_2,abStack_18);
  ::operator*(fVar2,abStack_10);
  pbVar1 = local_28;
  fVar2 = (float)::operator+((b2Vec2 *)&local_38,abStack_18);
  *(undefined4 *)pbVar1 = local_38;
  *(undefined4 *)(pbVar1 + 4) = uStack_34;
  local_1c = (1.0 - local_2c) * *(float *)(local_24 + 0x18) + *(float *)(local_24 + 0x1c) * local_2c
  ;
  b2Rot::Set((b2Rot *)(local_28 + 8),fVar2);
  b2Mul((b2Rot *)abStack_10,local_28 + 8);
  b2Vec2::operator-=(local_28,abStack_10);
  return;
}

// ---- b2Sweep::Normalize  @ 0x6c7b6c
/* b2Sweep::Normalize() */

void b2Sweep::Normalize(void)

{
  int in_r0;
  float extraout_r0;
  float in_s0;
  
  floorf(in_s0);
  *(float *)(in_r0 + 0x18) = *(float *)(in_r0 + 0x18) - extraout_r0 * 6.2831855;
  *(float *)(in_r0 + 0x1c) = *(float *)(in_r0 + 0x1c) - extraout_r0 * 6.2831855;
  return;
}

// ---- b2Sweep::b2Sweep  @ 0x6c8478
/* b2Sweep::b2Sweep() */

b2Sweep * __thiscall b2Sweep::b2Sweep(b2Sweep *this)

{
  b2Vec2::b2Vec2((b2Vec2 *)this);
  b2Vec2::b2Vec2((b2Vec2 *)(this + 8));
  b2Vec2::b2Vec2((b2Vec2 *)(this + 0x10));
  return this;
}

// ---- b2Sweep::Advance  @ 0x6dc238
/* b2Sweep::Advance(float) */

void b2Sweep::Advance(float param_1)

{
  int iVar1;
  int in_r0;
  float in_r1;
  float fVar2;
  undefined4 local_30;
  undefined4 uStack_2c;
  float local_28;
  int local_24;
  float local_1c;
  b2Vec2 abStack_18 [8];
  b2Vec2 abStack_10 [8];
  
  local_1c = (in_r1 - *(float *)(in_r0 + 0x20)) / (1.0 - *(float *)(in_r0 + 0x20));
  local_28 = in_r1;
  local_24 = in_r0;
  fVar2 = (float)::operator*(param_1,abStack_18);
  ::operator*(fVar2,abStack_10);
  iVar1 = local_24;
  ::operator+((b2Vec2 *)&local_30,abStack_18);
  *(undefined4 *)(iVar1 + 8) = local_30;
  *(undefined4 *)(iVar1 + 0xc) = uStack_2c;
  *(float *)(local_24 + 0x18) =
       (1.0 - local_1c) * *(float *)(local_24 + 0x18) + *(float *)(local_24 + 0x1c) * local_1c;
  *(float *)(local_24 + 0x20) = local_28;
  return;
}
