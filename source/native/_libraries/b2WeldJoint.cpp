// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 11 functions

// ---- b2WeldJoint::b2WeldJoint  @ 0x6d6184
/* b2WeldJoint::b2WeldJoint(b2WeldJointDef const*) */

b2WeldJoint * __thiscall b2WeldJoint::b2WeldJoint(b2WeldJoint *this,b2WeldJointDef *param_1)

{
  undefined4 uVar1;
  
  b2Joint::b2Joint((b2Joint *)this,(b2JointDef *)param_1);
  *(undefined ***)this = &PTR_GetAnchorA_1_0093c100;
  b2Vec2::b2Vec2((b2Vec2 *)(this + 0x50));
  b2Vec2::b2Vec2((b2Vec2 *)(this + 0x58));
  b2Vec3::b2Vec3((b2Vec3 *)(this + 0x68));
  b2Vec2::b2Vec2((b2Vec2 *)(this + 0x7c));
  b2Vec2::b2Vec2((b2Vec2 *)(this + 0x84));
  b2Vec2::b2Vec2((b2Vec2 *)(this + 0x8c));
  b2Vec2::b2Vec2((b2Vec2 *)(this + 0x94));
  b2Mat33::b2Mat33((b2Mat33 *)(this + 0xac));
  uVar1 = *(undefined4 *)(param_1 + 0x18);
  *(undefined4 *)(this + 0x50) = *(undefined4 *)(param_1 + 0x14);
  *(undefined4 *)(this + 0x54) = uVar1;
  uVar1 = *(undefined4 *)(param_1 + 0x20);
  *(undefined4 *)(this + 0x58) = *(undefined4 *)(param_1 + 0x1c);
  *(undefined4 *)(this + 0x5c) = uVar1;
  *(undefined4 *)(this + 0x60) = *(undefined4 *)(param_1 + 0x24);
  *(undefined4 *)(this + 0x44) = *(undefined4 *)(param_1 + 0x28);
  *(undefined4 *)(this + 0x48) = *(undefined4 *)(param_1 + 0x2c);
  b2Vec3::SetZero((b2Vec3 *)(this + 0x68));
  return this;
}

// ---- b2WeldJoint::InitVelocityConstraints  @ 0x6d6248
/* b2WeldJoint::InitVelocityConstraints(b2SolverData const&) */

void b2WeldJoint::InitVelocityConstraints(b2SolverData *param_1)

{
  b2SolverData *pbVar1;
  float *in_r1;
  undefined4 uVar2;
  undefined4 *puVar3;
  float in_s0;
  float fVar4;
  float extraout_s0;
  undefined8 uVar5;
  float fVar6;
  undefined4 local_b8;
  undefined4 uStack_b4;
  float *local_b0;
  b2SolverData *local_ac;
  float local_a8;
  float local_a4;
  float local_a0;
  float local_9c;
  float local_98;
  float local_94;
  float local_90;
  float local_8c;
  float local_88;
  float local_84;
  float local_80;
  float local_7c;
  float local_78;
  float local_74;
  float local_70;
  undefined4 local_6c;
  undefined4 uStack_68;
  undefined4 local_64;
  undefined4 uStack_60;
  undefined4 local_5c;
  undefined4 uStack_58;
  undefined4 local_54;
  undefined4 uStack_50;
  b2Rot abStack_4c [8];
  b2Rot abStack_44 [8];
  b2Vec2 abStack_3c [8];
  b2Vec2 abStack_34 [8];
  float local_2c;
  float local_28;
  float local_24;
  float local_20;
  float local_1c;
  float local_18;
  float local_14;
  float local_10;
  float local_c;
  
  *(undefined4 *)(param_1 + 0x74) = *(undefined4 *)(*(int *)(param_1 + 0x30) + 8);
  *(undefined4 *)(param_1 + 0x78) = *(undefined4 *)(*(int *)(param_1 + 0x34) + 8);
  uVar2 = *(undefined4 *)(*(int *)(param_1 + 0x30) + 0x20);
  *(undefined4 *)(param_1 + 0x8c) = *(undefined4 *)(*(int *)(param_1 + 0x30) + 0x1c);
  *(undefined4 *)(param_1 + 0x90) = uVar2;
  uVar2 = *(undefined4 *)(*(int *)(param_1 + 0x34) + 0x20);
  *(undefined4 *)(param_1 + 0x94) = *(undefined4 *)(*(int *)(param_1 + 0x34) + 0x1c);
  *(undefined4 *)(param_1 + 0x98) = uVar2;
  *(undefined4 *)(param_1 + 0x9c) = *(undefined4 *)(*(int *)(param_1 + 0x30) + 0x78);
  *(undefined4 *)(param_1 + 0xa0) = *(undefined4 *)(*(int *)(param_1 + 0x34) + 0x78);
  *(undefined4 *)(param_1 + 0xa4) = *(undefined4 *)(*(int *)(param_1 + 0x30) + 0x80);
  *(undefined4 *)(param_1 + 0xa8) = *(undefined4 *)(*(int *)(param_1 + 0x34) + 0x80);
  puVar3 = (undefined4 *)((int)in_r1[6] + *(int *)(param_1 + 0x74) * 0xc);
  local_6c = *puVar3;
  uStack_68 = puVar3[1];
  local_a0 = *(float *)(*(int *)(param_1 + 0x74) * 0xc + (int)in_r1[6] + 8);
  puVar3 = (undefined4 *)((int)in_r1[7] + *(int *)(param_1 + 0x74) * 0xc);
  local_64 = *puVar3;
  uStack_60 = puVar3[1];
  local_a8 = *(float *)(*(int *)(param_1 + 0x74) * 0xc + (int)in_r1[7] + 8);
  puVar3 = (undefined4 *)((int)in_r1[6] + *(int *)(param_1 + 0x78) * 0xc);
  local_5c = *puVar3;
  uStack_58 = puVar3[1];
  local_9c = *(float *)(*(int *)(param_1 + 0x78) * 0xc + (int)in_r1[6] + 8);
  puVar3 = (undefined4 *)((int)in_r1[7] + *(int *)(param_1 + 0x78) * 0xc);
  local_54 = *puVar3;
  uStack_50 = puVar3[1];
  local_a4 = *(float *)(*(int *)(param_1 + 0x78) * 0xc + (int)in_r1[7] + 8);
  local_b0 = in_r1;
  local_ac = param_1;
  fVar4 = (float)b2Rot::b2Rot(abStack_4c,in_s0);
  b2Rot::b2Rot(abStack_44,fVar4);
  ::operator-((b2Vec2 *)&local_2c,(b2Vec2 *)(local_ac + 0x50));
  pbVar1 = local_ac;
  b2Mul((b2Rot *)&local_b8,(b2Vec2 *)abStack_4c);
  *(undefined4 *)(pbVar1 + 0x7c) = local_b8;
  *(undefined4 *)(pbVar1 + 0x80) = uStack_b4;
  ::operator-((b2Vec2 *)&local_2c,(b2Vec2 *)(local_ac + 0x58));
  pbVar1 = local_ac;
  b2Mul((b2Rot *)&local_b8,(b2Vec2 *)abStack_44);
  *(undefined4 *)(pbVar1 + 0x84) = local_b8;
  *(undefined4 *)(pbVar1 + 0x88) = uStack_b4;
  local_98 = *(float *)(local_ac + 0x9c);
  local_94 = *(float *)(local_ac + 0xa0);
  local_90 = *(float *)(local_ac + 0xa4);
  local_8c = *(float *)(local_ac + 0xa8);
  b2Mat33::b2Mat33((b2Mat33 *)&local_2c);
  local_2c = local_98 + local_94 +
             *(float *)(local_ac + 0x80) * *(float *)(local_ac + 0x80) * local_90 +
             *(float *)(local_ac + 0x88) * *(float *)(local_ac + 0x88) * local_8c;
  local_28 = -*(float *)(local_ac + 0x80) * *(float *)(local_ac + 0x7c) * local_90 -
             *(float *)(local_ac + 0x88) * *(float *)(local_ac + 0x84) * local_8c;
  local_24 = -*(float *)(local_ac + 0x80) * local_90 - *(float *)(local_ac + 0x88) * local_8c;
  local_1c = local_98 + local_94 +
             *(float *)(local_ac + 0x7c) * *(float *)(local_ac + 0x7c) * local_90 +
             *(float *)(local_ac + 0x84) * *(float *)(local_ac + 0x84) * local_8c;
  local_18 = *(float *)(local_ac + 0x7c) * local_90 + *(float *)(local_ac + 0x84) * local_8c;
  local_c = local_90 + local_8c;
  local_20 = local_28;
  local_14 = local_24;
  local_10 = local_18;
  if (*(float *)(local_ac + 0x44) <= 0.0) {
    fVar4 = (float)b2Mat33::GetSymInverse33((b2Mat33 *)&local_2c,(b2Mat33 *)(local_ac + 0xac));
    *(undefined4 *)(local_ac + 100) = 0;
    *(undefined4 *)(local_ac + 0x4c) = 0;
  }
  else {
    fVar4 = (float)b2Mat33::GetInverse22((b2Mat33 *)&local_2c,(b2Mat33 *)(local_ac + 0xac));
    local_88 = local_90 + local_8c;
    if (local_88 <= 0.0) {
      local_84 = 0.0;
    }
    else {
      local_84 = 1.0 / local_88;
    }
    local_80 = (local_9c - local_a0) - *(float *)(local_ac + 0x60);
    local_7c = *(float *)(local_ac + 0x44) * 6.2831855;
    local_78 = (local_84 + local_84) * *(float *)(local_ac + 0x48) * local_7c;
    local_74 = local_84 * local_7c * local_7c;
    local_70 = *local_b0;
    *(float *)(local_ac + 100) = (local_70 * local_74 + local_78) * local_70;
    if (*(float *)(local_ac + 100) == 0.0) {
      fVar6 = 0.0;
    }
    else {
      fVar6 = 1.0 / *(float *)(local_ac + 100);
    }
    *(float *)(local_ac + 100) = fVar6;
    *(float *)(local_ac + 0x4c) = local_80 * local_70 * local_74 * *(float *)(local_ac + 100);
    local_88 = local_88 + *(float *)(local_ac + 100);
    if (local_88 == 0.0) {
      fVar6 = 0.0;
    }
    else {
      fVar6 = 1.0 / local_88;
    }
    *(float *)(local_ac + 0xcc) = fVar6;
  }
  if (*(char *)(local_b0 + 5) == '\0') {
    b2Vec3::SetZero((b2Vec3 *)(local_ac + 0x68));
  }
  else {
    uVar5 = b2Vec3::operator*=((b2Vec3 *)(local_ac + 0x68),fVar4);
    fVar4 = (float)b2Vec2::b2Vec2(abStack_3c,(float)uVar5,(float)((ulonglong)uVar5 >> 0x20));
    ::operator*(fVar4,abStack_34);
    b2Vec2::operator-=((b2Vec2 *)&local_64,abStack_34);
    fVar4 = (float)b2Cross((b2Vec2 *)(local_ac + 0x7c),abStack_3c);
    local_a8 = local_a8 - (fVar4 + *(float *)(local_ac + 0x70)) * local_90;
    ::operator*(extraout_s0,abStack_34);
    b2Vec2::operator+=((b2Vec2 *)&local_54,abStack_34);
    fVar4 = (float)b2Cross((b2Vec2 *)(local_ac + 0x84),abStack_3c);
    local_a4 = local_a4 + (fVar4 + *(float *)(local_ac + 0x70)) * local_8c;
  }
  puVar3 = (undefined4 *)(*(int *)(local_ac + 0x74) * 0xc + (int)local_b0[7]);
  *puVar3 = local_64;
  puVar3[1] = uStack_60;
  *(float *)(*(int *)(local_ac + 0x74) * 0xc + (int)local_b0[7] + 8) = local_a8;
  puVar3 = (undefined4 *)(*(int *)(local_ac + 0x78) * 0xc + (int)local_b0[7]);
  *puVar3 = local_54;
  puVar3[1] = uStack_50;
  *(float *)(*(int *)(local_ac + 0x78) * 0xc + (int)local_b0[7] + 8) = local_a4;
  return;
}

// ---- b2WeldJoint::SolveVelocityConstraints  @ 0x6d6840
/* b2WeldJoint::SolveVelocityConstraints(b2SolverData const&) */

void b2WeldJoint::SolveVelocityConstraints(b2SolverData *param_1)

{
  int in_r1;
  undefined4 *puVar1;
  float fVar2;
  float fVar3;
  float in_s0;
  float fVar4;
  float extraout_s0;
  float extraout_s0_00;
  float extraout_s0_01;
  float extraout_s1;
  undefined8 uVar5;
  float extraout_s2;
  float fVar6;
  float local_70;
  float local_6c;
  undefined4 local_4c;
  undefined4 uStack_48;
  undefined4 local_44;
  undefined4 uStack_40;
  b2Vec2 local_3c [8];
  b2Vec2 abStack_34 [8];
  float local_2c;
  float local_28;
  float local_20;
  float local_1c;
  float local_18;
  b2Vec2 abStack_14 [16];
  
  puVar1 = (undefined4 *)(*(int *)(in_r1 + 0x1c) + *(int *)(param_1 + 0x74) * 0xc);
  local_4c = *puVar1;
  uStack_48 = puVar1[1];
  local_70 = *(float *)(*(int *)(param_1 + 0x74) * 0xc + *(int *)(in_r1 + 0x1c) + 8);
  puVar1 = (undefined4 *)(*(int *)(in_r1 + 0x1c) + *(int *)(param_1 + 0x78) * 0xc);
  local_44 = *puVar1;
  uStack_40 = puVar1[1];
  local_6c = *(float *)(*(int *)(param_1 + 0x78) * 0xc + *(int *)(in_r1 + 0x1c) + 8);
  fVar2 = *(float *)(param_1 + 0xa4);
  fVar3 = *(float *)(param_1 + 0xa8);
  if (*(float *)(param_1 + 0x44) <= 0.0) {
    b2Cross(in_s0,abStack_34);
    ::operator+((b2Vec2 *)&local_2c,(b2Vec2 *)&local_44);
    fVar4 = (float)::operator-((b2Vec2 *)&local_20,(b2Vec2 *)&local_2c);
    b2Cross(fVar4,abStack_14);
    ::operator-(local_3c,(b2Vec2 *)&local_20);
    b2Vec3::b2Vec3((b2Vec3 *)&local_2c,extraout_s0_00,extraout_s1,extraout_s2);
    b2Mul((b2Mat33 *)abStack_14,(b2Vec3 *)(param_1 + 0xac));
    b2Vec3::operator-((b2Vec3 *)&local_20);
    uVar5 = b2Vec3::operator+=((b2Vec3 *)(param_1 + 0x68),(b2Vec3 *)&local_20);
    fVar4 = (float)b2Vec2::b2Vec2(abStack_34,(float)uVar5,(float)((ulonglong)uVar5 >> 0x20));
    ::operator*(fVar4,abStack_14);
    b2Vec2::operator-=((b2Vec2 *)&local_4c,abStack_14);
    fVar4 = (float)b2Cross((b2Vec2 *)(param_1 + 0x7c),abStack_34);
    local_70 = local_70 - (fVar4 + local_18) * fVar2;
    ::operator*(extraout_s0_01,abStack_14);
    b2Vec2::operator+=((b2Vec2 *)&local_44,abStack_14);
    fVar2 = (float)b2Cross((b2Vec2 *)(param_1 + 0x84),abStack_34);
    local_6c = local_6c + (fVar2 + local_18) * fVar3;
  }
  else {
    fVar6 = -*(float *)(param_1 + 0xcc) *
            (*(float *)(param_1 + 0x4c) + (local_6c - local_70) +
            *(float *)(param_1 + 100) * *(float *)(param_1 + 0x70));
    *(float *)(param_1 + 0x70) = *(float *)(param_1 + 0x70) + fVar6;
    b2Cross(in_s0,abStack_34);
    ::operator+((b2Vec2 *)&local_2c,(b2Vec2 *)&local_44);
    fVar4 = (float)::operator-((b2Vec2 *)&local_20,(b2Vec2 *)&local_2c);
    b2Cross(fVar4,abStack_14);
    ::operator-(local_3c,(b2Vec2 *)&local_20);
    b2Mul22((b2Mat33 *)abStack_14,(b2Vec2 *)(param_1 + 0xac));
    fVar4 = (float)b2Vec2::operator-((b2Vec2 *)&local_2c);
    *(float *)(param_1 + 0x68) = *(float *)(param_1 + 0x68) + local_2c;
    *(float *)(param_1 + 0x6c) = *(float *)(param_1 + 0x6c) + local_28;
    local_20 = local_2c;
    local_1c = local_28;
    ::operator*(fVar4,abStack_14);
    b2Vec2::operator-=((b2Vec2 *)&local_4c,abStack_14);
    fVar4 = (float)b2Cross((b2Vec2 *)(param_1 + 0x7c),(b2Vec2 *)&local_20);
    local_70 = (local_70 - fVar2 * fVar6) - fVar4 * fVar2;
    ::operator*(extraout_s0,abStack_14);
    b2Vec2::operator+=((b2Vec2 *)&local_44,abStack_14);
    fVar2 = (float)b2Cross((b2Vec2 *)(param_1 + 0x84),(b2Vec2 *)&local_20);
    local_6c = local_6c + fVar3 * fVar6 + fVar2 * fVar3;
  }
  puVar1 = (undefined4 *)(*(int *)(param_1 + 0x74) * 0xc + *(int *)(in_r1 + 0x1c));
  *puVar1 = local_4c;
  puVar1[1] = uStack_48;
  *(float *)(*(int *)(param_1 + 0x74) * 0xc + *(int *)(in_r1 + 0x1c) + 8) = local_70;
  puVar1 = (undefined4 *)(*(int *)(param_1 + 0x78) * 0xc + *(int *)(in_r1 + 0x1c));
  *puVar1 = local_44;
  puVar1[1] = uStack_40;
  *(float *)(*(int *)(param_1 + 0x78) * 0xc + *(int *)(in_r1 + 0x1c) + 8) = local_6c;
  return;
}

// ---- b2WeldJoint::SolvePositionConstraints  @ 0x6d6c50
/* b2WeldJoint::SolvePositionConstraints(b2SolverData const&) */

undefined4 b2WeldJoint::SolvePositionConstraints(b2SolverData *param_1)

{
  float extraout_r0;
  int in_r1;
  undefined4 *puVar1;
  float fVar2;
  float fVar3;
  float fVar4;
  undefined4 uVar5;
  float in_s0;
  float fVar6;
  float extraout_s0;
  float extraout_s0_00;
  float extraout_s0_01;
  float extraout_s1;
  undefined8 uVar7;
  float extraout_s2;
  float local_b4;
  float local_b0;
  float local_ac;
  float local_a8;
  undefined4 local_90;
  undefined4 uStack_8c;
  undefined4 local_88;
  undefined4 uStack_84;
  b2Rot abStack_80 [8];
  b2Rot abStack_78 [8];
  float local_70;
  float local_6c;
  float local_68;
  float local_64;
  b2Vec2 local_60 [8];
  b2Vec2 abStack_58 [8];
  b2Vec2 abStack_50 [12];
  b2Vec2 local_44 [8];
  float local_3c;
  b2Vec2 abStack_38 [12];
  float local_2c;
  float local_28;
  float local_24;
  float local_20;
  float local_1c;
  float local_18;
  float local_14;
  float local_10;
  float local_c;
  
  puVar1 = (undefined4 *)(*(int *)(in_r1 + 0x18) + *(int *)(param_1 + 0x74) * 0xc);
  local_90 = *puVar1;
  uStack_8c = puVar1[1];
  local_b4 = *(float *)(*(int *)(param_1 + 0x74) * 0xc + *(int *)(in_r1 + 0x18) + 8);
  puVar1 = (undefined4 *)(*(int *)(in_r1 + 0x18) + *(int *)(param_1 + 0x78) * 0xc);
  local_88 = *puVar1;
  uStack_84 = puVar1[1];
  local_b0 = *(float *)(*(int *)(param_1 + 0x78) * 0xc + *(int *)(in_r1 + 0x18) + 8);
  fVar6 = (float)b2Rot::b2Rot(abStack_80,in_s0);
  b2Rot::b2Rot(abStack_78,fVar6);
  fVar6 = *(float *)(param_1 + 0x9c);
  fVar2 = *(float *)(param_1 + 0xa0);
  fVar3 = *(float *)(param_1 + 0xa4);
  fVar4 = *(float *)(param_1 + 0xa8);
  ::operator-((b2Vec2 *)&local_2c,(b2Vec2 *)(param_1 + 0x50));
  b2Mul((b2Rot *)&local_70,(b2Vec2 *)abStack_80);
  ::operator-((b2Vec2 *)&local_2c,(b2Vec2 *)(param_1 + 0x58));
  b2Mul((b2Rot *)&local_68,(b2Vec2 *)abStack_78);
  b2Mat33::b2Mat33((b2Mat33 *)&local_2c);
  local_2c = fVar6 + fVar2 + local_6c * local_6c * fVar3 + local_64 * local_64 * fVar4;
  local_28 = -local_6c * local_70 * fVar3 - local_64 * local_68 * fVar4;
  local_24 = -local_6c * fVar3 - local_64 * fVar4;
  local_1c = fVar6 + fVar2 + local_70 * local_70 * fVar3 + local_68 * local_68 * fVar4;
  local_18 = local_70 * fVar3 + local_68 * fVar4;
  local_c = fVar3 + fVar4;
  local_20 = local_28;
  local_14 = local_24;
  local_10 = local_18;
  if (*(float *)(param_1 + 0x44) <= 0.0) {
    ::operator+(local_44,(b2Vec2 *)&local_88);
    ::operator-(abStack_38,local_44);
    ::operator-(local_60,abStack_38);
    local_ac = (float)b2Vec2::Length(local_60);
    fVar6 = b2Abs<float>(extraout_s0_00);
    b2Vec3::b2Vec3((b2Vec3 *)abStack_50,fVar6,extraout_s1,extraout_s2);
    b2Mat33::Solve33((b2Vec3 *)abStack_38);
    uVar7 = b2Vec3::operator-((b2Vec3 *)local_44);
    fVar6 = (float)b2Vec2::b2Vec2(abStack_58,(float)uVar7,(float)((ulonglong)uVar7 >> 0x20));
    ::operator*(fVar6,abStack_38);
    b2Vec2::operator-=((b2Vec2 *)&local_90,abStack_38);
    fVar6 = (float)b2Cross((b2Vec2 *)&local_70,abStack_58);
    fVar6 = fVar6 + local_3c;
    ::operator*(extraout_s0_01,abStack_38);
    b2Vec2::operator+=((b2Vec2 *)&local_88,abStack_38);
    fVar2 = (float)b2Cross((b2Vec2 *)&local_68,abStack_58);
    fVar2 = fVar2 + local_3c;
    local_a8 = extraout_r0;
  }
  else {
    ::operator+(local_44,(b2Vec2 *)&local_88);
    ::operator-(abStack_38,local_44);
    ::operator-(abStack_50,abStack_38);
    local_ac = (float)b2Vec2::Length(abStack_50);
    local_a8 = 0.0;
    b2Mat33::Solve22(abStack_38);
    fVar6 = (float)b2Vec2::operator-(local_44);
    ::operator*(fVar6,abStack_38);
    b2Vec2::operator-=((b2Vec2 *)&local_90,abStack_38);
    fVar6 = (float)b2Cross((b2Vec2 *)&local_70,local_44);
    ::operator*(extraout_s0,abStack_38);
    b2Vec2::operator+=((b2Vec2 *)&local_88,abStack_38);
    fVar2 = (float)b2Cross((b2Vec2 *)&local_68,local_44);
  }
  local_b0 = local_b0 + fVar2 * fVar4;
  local_b4 = local_b4 - fVar6 * fVar3;
  puVar1 = (undefined4 *)(*(int *)(param_1 + 0x74) * 0xc + *(int *)(in_r1 + 0x18));
  *puVar1 = local_90;
  puVar1[1] = uStack_8c;
  *(float *)(*(int *)(param_1 + 0x74) * 0xc + *(int *)(in_r1 + 0x18) + 8) = local_b4;
  puVar1 = (undefined4 *)(*(int *)(param_1 + 0x78) * 0xc + *(int *)(in_r1 + 0x18));
  *puVar1 = local_88;
  puVar1[1] = uStack_84;
  *(float *)(*(int *)(param_1 + 0x78) * 0xc + *(int *)(in_r1 + 0x18) + 8) = local_b0;
  if ((0.005 < local_ac) || (0.03490659 < local_a8)) {
    uVar5 = 0;
  }
  else {
    uVar5 = 1;
  }
  return uVar5;
}

// ---- b2WeldJoint::GetAnchorA  @ 0x6d711c
/* b2WeldJoint::GetAnchorA() const */

b2Body * b2WeldJoint::GetAnchorA(void)

{
  b2Body *in_r0;
  int in_r1;
  
  b2Body::GetWorldPoint(in_r0,*(b2Vec2 **)(in_r1 + 0x30));
  return in_r0;
}

// ---- b2WeldJoint::GetAnchorB  @ 0x6d7140
/* b2WeldJoint::GetAnchorB() const */

b2Body * b2WeldJoint::GetAnchorB(void)

{
  b2Body *in_r0;
  int in_r1;
  
  b2Body::GetWorldPoint(in_r0,*(b2Vec2 **)(in_r1 + 0x34));
  return in_r0;
}

// ---- b2WeldJoint::GetReactionForce  @ 0x6d7164
/* b2WeldJoint::GetReactionForce(float) const */

b2Vec2 * b2WeldJoint::GetReactionForce(float param_1)

{
  b2Vec2 *in_r0;
  float fVar1;
  float in_s1;
  b2Vec2 abStack_10 [12];
  
  fVar1 = (float)b2Vec2::b2Vec2(abStack_10,param_1,in_s1);
  ::operator*(fVar1,in_r0);
  return in_r0;
}

// ---- b2WeldJoint::GetReactionTorque  @ 0x6d7198
/* b2WeldJoint::GetReactionTorque(float) const */

float __thiscall b2WeldJoint::GetReactionTorque(b2WeldJoint *this,float param_1)

{
  float in_r1;
  
  return *(float *)(this + 0x70) * in_r1;
}

// ---- b2WeldJoint::Dump  @ 0x6d71b8
/* b2WeldJoint::Dump() */

void __thiscall b2WeldJoint::Dump(b2WeldJoint *this)

{
  undefined4 extraout_r1;
  undefined4 extraout_r1_00;
  undefined4 extraout_r1_01;
  undefined4 extraout_r1_02;
  undefined4 extraout_r1_03;
  undefined4 uVar1;
  undefined4 uVar2;
  
  uVar1 = *(undefined4 *)(*(int *)(this + 0x30) + 8);
  uVar2 = *(undefined4 *)(*(int *)(this + 0x34) + 8);
  b2Log("  b2WeldJointDef jd;\n");
  b2Log("  jd.bodyA = bodies[%d];\n",uVar1);
  b2Log("  jd.bodyB = bodies[%d];\n",uVar2);
  b2Log("  jd.collideConnected = bool(%d);\n",(uint)(byte)this[0x3d]);
  b2Log("  jd.localAnchorA.Set(%.15lef, %.15lef);\n",extraout_r1,
        SUB84((double)*(float *)(this + 0x50),0),
        (int)((ulonglong)(double)*(float *)(this + 0x50) >> 0x20),(double)*(float *)(this + 0x54));
  b2Log("  jd.localAnchorB.Set(%.15lef, %.15lef);\n",extraout_r1_00,
        SUB84((double)*(float *)(this + 0x58),0),
        (int)((ulonglong)(double)*(float *)(this + 0x58) >> 0x20),(double)*(float *)(this + 0x5c));
  b2Log("  jd.referenceAngle = %.15lef;\n",extraout_r1_01,SUB84((double)*(float *)(this + 0x60),0),
        (int)((ulonglong)(double)*(float *)(this + 0x60) >> 0x20));
  b2Log("  jd.frequencyHz = %.15lef;\n",extraout_r1_02,SUB84((double)*(float *)(this + 0x44),0),
        (int)((ulonglong)(double)*(float *)(this + 0x44) >> 0x20));
  b2Log("  jd.dampingRatio = %.15lef;\n",extraout_r1_03,SUB84((double)*(float *)(this + 0x48),0),
        (int)((ulonglong)(double)*(float *)(this + 0x48) >> 0x20));
  b2Log("  joints[%d] = m_world->CreateJoint(&jd);\n",*(undefined4 *)(this + 0x38));
  return;
}

// ---- b2WeldJoint::~b2WeldJoint  @ 0x6d72d4
/* WARNING: Removing unreachable block (ram,0x006d72f6) */
/* b2WeldJoint::~b2WeldJoint() */

b2WeldJoint * __thiscall b2WeldJoint::~b2WeldJoint(b2WeldJoint *this)

{
  *(undefined ***)this = &PTR_GetAnchorA_1_0093c100;
  b2Joint::~b2Joint((b2Joint *)this);
  return this;
}

// ---- b2WeldJoint::~b2WeldJoint  @ 0x6d7310
/* b2WeldJoint::~b2WeldJoint() */

b2WeldJoint * __thiscall b2WeldJoint::~b2WeldJoint(b2WeldJoint *this)

{
  ~b2WeldJoint(this);
  operator_delete(this);
  return this;
}
