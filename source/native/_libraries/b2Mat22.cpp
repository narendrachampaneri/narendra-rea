// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 4 functions

// ---- b2Mat22::b2Mat22  @ 0x6ca2f8
/* b2Mat22::b2Mat22() */

b2Mat22 * __thiscall b2Mat22::b2Mat22(b2Mat22 *this)

{
  b2Vec2::b2Vec2((b2Vec2 *)this);
  b2Vec2::b2Vec2((b2Vec2 *)(this + 8));
  return this;
}

// ---- b2Mat22::SetZero  @ 0x6ca31c
/* b2Mat22::SetZero() */

void __thiscall b2Mat22::SetZero(b2Mat22 *this)

{
  *(undefined4 *)this = 0;
  *(undefined4 *)(this + 8) = 0;
  *(undefined4 *)(this + 4) = 0;
  *(undefined4 *)(this + 0xc) = 0;
  return;
}

// ---- b2Mat22::GetInverse  @ 0x6ca344
/* b2Mat22::GetInverse() const */

b2Mat22 * b2Mat22::GetInverse(void)

{
  b2Mat22 *in_r0;
  float *in_r1;
  float fVar1;
  float fVar2;
  float fVar3;
  float fVar4;
  float local_1c;
  
  fVar1 = *in_r1;
  fVar2 = in_r1[2];
  fVar3 = in_r1[1];
  fVar4 = in_r1[3];
  b2Mat22(in_r0);
  local_1c = fVar1 * fVar4 - fVar2 * fVar3;
  if (local_1c != 0.0) {
    local_1c = 1.0 / local_1c;
  }
  *(float *)in_r0 = local_1c * fVar4;
  *(float *)(in_r0 + 8) = -local_1c * fVar2;
  *(float *)(in_r0 + 4) = -local_1c * fVar3;
  *(float *)(in_r0 + 0xc) = local_1c * fVar1;
  return in_r0;
}

// ---- b2Mat22::Solve  @ 0x6d0ac8
/* b2Mat22::Solve(b2Vec2 const&) const */

b2Vec2 * b2Mat22::Solve(b2Vec2 *param_1)

{
  float *in_r1;
  float *in_r2;
  float fVar1;
  float fVar2;
  float fVar3;
  float fVar4;
  float local_1c;
  
  fVar1 = *in_r1;
  fVar2 = in_r1[2];
  fVar3 = in_r1[1];
  fVar4 = in_r1[3];
  local_1c = fVar1 * fVar4 - fVar2 * fVar3;
  if (local_1c != 0.0) {
    local_1c = 1.0 / local_1c;
  }
  b2Vec2::b2Vec2(param_1);
  *(float *)param_1 = (*in_r2 * fVar4 - in_r2[1] * fVar2) * local_1c;
  *(float *)(param_1 + 4) = (in_r2[1] * fVar1 - *in_r2 * fVar3) * local_1c;
  return param_1;
}
