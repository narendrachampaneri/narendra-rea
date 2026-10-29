// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 5 functions

// ---- b2Mat33::Solve33  @ 0x6c8f20
/* b2Mat33::Solve33(b2Vec3 const&) const */

b2Vec3 * b2Mat33::Solve33(b2Vec3 *param_1)

{
  float fVar1;
  b2Vec3 *in_r1;
  b2Vec3 *in_r2;
  float local_18;
  b2Vec3 abStack_14 [12];
  
  b2Cross(abStack_14,in_r1 + 0xc);
  local_18 = (float)b2Dot(in_r1,abStack_14);
  if (local_18 != 0.0) {
    local_18 = 1.0 / local_18;
  }
  b2Vec3::b2Vec3(param_1);
  b2Cross(abStack_14,in_r1 + 0xc);
  fVar1 = (float)b2Dot(in_r2,abStack_14);
  *(float *)param_1 = fVar1 * local_18;
  b2Cross(abStack_14,in_r2);
  fVar1 = (float)b2Dot(in_r1,abStack_14);
  *(float *)(param_1 + 4) = fVar1 * local_18;
  b2Cross(abStack_14,in_r1 + 0xc);
  fVar1 = (float)b2Dot(in_r1,abStack_14);
  *(float *)(param_1 + 8) = fVar1 * local_18;
  return param_1;
}

// ---- b2Mat33::Solve22  @ 0x6c900c
/* b2Mat33::Solve22(b2Vec2 const&) const */

b2Vec2 * b2Mat33::Solve22(b2Vec2 *param_1)

{
  float *in_r1;
  float *in_r2;
  float fVar1;
  float fVar2;
  float fVar3;
  float fVar4;
  float local_1c;
  
  fVar1 = *in_r1;
  fVar2 = in_r1[3];
  fVar3 = in_r1[1];
  fVar4 = in_r1[4];
  local_1c = fVar1 * fVar4 - fVar2 * fVar3;
  if (local_1c != 0.0) {
    local_1c = 1.0 / local_1c;
  }
  b2Vec2::b2Vec2(param_1);
  *(float *)param_1 = (*in_r2 * fVar4 - in_r2[1] * fVar2) * local_1c;
  *(float *)(param_1 + 4) = (in_r2[1] * fVar1 - *in_r2 * fVar3) * local_1c;
  return param_1;
}

// ---- b2Mat33::GetInverse22  @ 0x6c90d8
/* b2Mat33::GetInverse22(b2Mat33*) const */

void __thiscall b2Mat33::GetInverse22(b2Mat33 *this,b2Mat33 *param_1)

{
  float fVar1;
  float fVar2;
  float fVar3;
  float local_14;
  
  fVar1 = *(float *)this;
  fVar2 = *(float *)(this + 0xc);
  fVar3 = *(float *)(this + 4);
  local_14 = fVar1 * *(float *)(this + 0x10) - fVar2 * fVar3;
  if (local_14 != 0.0) {
    local_14 = 1.0 / local_14;
  }
  *(float *)param_1 = local_14 * *(float *)(this + 0x10);
  *(float *)(param_1 + 0xc) = -local_14 * fVar2;
  *(undefined4 *)(param_1 + 8) = 0;
  *(float *)(param_1 + 4) = -local_14 * fVar3;
  *(float *)(param_1 + 0x10) = local_14 * fVar1;
  *(undefined4 *)(param_1 + 0x14) = 0;
  *(undefined4 *)(param_1 + 0x18) = 0;
  *(undefined4 *)(param_1 + 0x1c) = 0;
  *(undefined4 *)(param_1 + 0x20) = 0;
  return;
}

// ---- b2Mat33::GetSymInverse33  @ 0x6c91b0
/* b2Mat33::GetSymInverse33(b2Mat33*) const */

void __thiscall b2Mat33::GetSymInverse33(b2Mat33 *this,b2Mat33 *param_1)

{
  float fVar1;
  float fVar2;
  float fVar3;
  float fVar4;
  float fVar5;
  float fVar6;
  float local_30;
  b2Vec3 abStack_14 [12];
  
  b2Cross(abStack_14,(b2Vec3 *)(this + 0xc));
  local_30 = (float)b2Dot((b2Vec3 *)this,abStack_14);
  if (local_30 != 0.0) {
    local_30 = 1.0 / local_30;
  }
  fVar1 = *(float *)this;
  fVar2 = *(float *)(this + 0xc);
  fVar3 = *(float *)(this + 0x18);
  fVar4 = *(float *)(this + 0x10);
  fVar5 = *(float *)(this + 0x1c);
  fVar6 = *(float *)(this + 0x20);
  *(float *)param_1 = (fVar4 * fVar6 - fVar5 * fVar5) * local_30;
  *(float *)(param_1 + 4) = (fVar3 * fVar5 - fVar2 * fVar6) * local_30;
  *(float *)(param_1 + 8) = (fVar2 * fVar5 - fVar3 * fVar4) * local_30;
  *(undefined4 *)(param_1 + 0xc) = *(undefined4 *)(param_1 + 4);
  *(float *)(param_1 + 0x10) = (fVar1 * fVar6 - fVar3 * fVar3) * local_30;
  *(float *)(param_1 + 0x14) = (fVar3 * fVar2 - fVar1 * fVar5) * local_30;
  *(undefined4 *)(param_1 + 0x18) = *(undefined4 *)(param_1 + 8);
  *(undefined4 *)(param_1 + 0x1c) = *(undefined4 *)(param_1 + 0x14);
  *(float *)(param_1 + 0x20) = (fVar1 * fVar4 - fVar2 * fVar2) * local_30;
  return;
}

// ---- b2Mat33::b2Mat33  @ 0x6d0b94
/* b2Mat33::b2Mat33() */

b2Mat33 * __thiscall b2Mat33::b2Mat33(b2Mat33 *this)

{
  b2Vec3::b2Vec3((b2Vec3 *)this);
  b2Vec3::b2Vec3((b2Vec3 *)(this + 0xc));
  b2Vec3::b2Vec3((b2Vec3 *)(this + 0x18));
  return this;
}
