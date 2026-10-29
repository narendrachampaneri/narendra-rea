// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 18 functions

// ---- b2WheelJoint::b2WheelJoint  @ 0x6d73a8
/* b2WheelJoint::b2WheelJoint(b2WheelJointDef const*) */

b2WheelJoint * __thiscall b2WheelJoint::b2WheelJoint(b2WheelJoint *this,b2WheelJointDef *param_1)

{
  b2WheelJoint *pbVar1;
  undefined4 uVar2;
  float fVar3;
  undefined4 local_18;
  undefined4 uStack_14;
  b2WheelJointDef *local_10;
  b2WheelJoint *local_c;
  
  local_10 = param_1;
  local_c = this;
  b2Joint::b2Joint((b2Joint *)this,(b2JointDef *)param_1);
  *(undefined ***)local_c = &PTR_GetAnchorA_1_0093c140;
  b2Vec2::b2Vec2((b2Vec2 *)(local_c + 0x4c));
  b2Vec2::b2Vec2((b2Vec2 *)(local_c + 0x54));
  b2Vec2::b2Vec2((b2Vec2 *)(local_c + 0x5c));
  b2Vec2::b2Vec2((b2Vec2 *)(local_c + 100));
  b2Vec2::b2Vec2((b2Vec2 *)(local_c + 0x8c));
  b2Vec2::b2Vec2((b2Vec2 *)(local_c + 0x94));
  b2Vec2::b2Vec2((b2Vec2 *)(local_c + 0xac));
  fVar3 = (float)b2Vec2::b2Vec2((b2Vec2 *)(local_c + 0xb4));
  pbVar1 = local_c;
  uVar2 = *(undefined4 *)(local_10 + 0x18);
  *(undefined4 *)(local_c + 0x4c) = *(undefined4 *)(local_10 + 0x14);
  *(undefined4 *)(local_c + 0x50) = uVar2;
  uVar2 = *(undefined4 *)(local_10 + 0x20);
  *(undefined4 *)(local_c + 0x54) = *(undefined4 *)(local_10 + 0x1c);
  *(undefined4 *)(local_c + 0x58) = uVar2;
  uVar2 = *(undefined4 *)(local_10 + 0x28);
  *(undefined4 *)(local_c + 0x5c) = *(undefined4 *)(local_10 + 0x24);
  *(undefined4 *)(local_c + 0x60) = uVar2;
  b2Cross(fVar3,(b2Vec2 *)&local_18);
  *(undefined4 *)(pbVar1 + 100) = local_18;
  *(undefined4 *)(pbVar1 + 0x68) = uStack_14;
  *(undefined4 *)(local_c + 0xcc) = 0;
  *(undefined4 *)(local_c + 0x6c) = 0;
  *(undefined4 *)(local_c + 0xd0) = 0;
  *(undefined4 *)(local_c + 0x70) = 0;
  *(undefined4 *)(local_c + 0xd4) = 0;
  *(undefined4 *)(local_c + 0x74) = 0;
  *(undefined4 *)(local_c + 0x78) = *(undefined4 *)(local_10 + 0x30);
  *(undefined4 *)(local_c + 0x7c) = *(undefined4 *)(local_10 + 0x34);
  local_c[0x80] = *(b2WheelJoint *)(local_10 + 0x2c);
  *(undefined4 *)(local_c + 0x44) = *(undefined4 *)(local_10 + 0x38);
  *(undefined4 *)(local_c + 0x48) = *(undefined4 *)(local_10 + 0x3c);
  *(undefined4 *)(local_c + 0xd8) = 0;
  *(undefined4 *)(local_c + 0xdc) = 0;
  b2Vec2::SetZero((b2Vec2 *)(local_c + 0xac));
  b2Vec2::SetZero((b2Vec2 *)(local_c + 0xb4));
  return local_c;
}

// ---- b2WheelJoint::InitVelocityConstraints  @ 0x6d7504
/* b2WheelJoint::InitVelocityConstraints(b2SolverData const&) */

void b2WheelJoint::InitVelocityConstraints(b2SolverData *param_1)

{
  b2SolverData *pbVar1;
  float *in_r1;
  undefined4 uVar2;
  undefined4 *puVar3;
  float in_s0;
  float fVar4;
  float extraout_s0;
  float extraout_s0_00;
  float extraout_s0_01;
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
  undefined4 local_90;
  undefined4 local_8c;
  float local_88;
  float local_84;
  float local_80;
  float local_7c;
  float local_78;
  float local_74;
  float local_70;
  float local_6c;
  undefined4 local_68;
  undefined4 uStack_64;
  undefined4 local_60;
  undefined4 uStack_5c;
  undefined4 local_58;
  undefined4 uStack_54;
  undefined4 local_50;
  undefined4 uStack_4c;
  b2Rot abStack_48 [8];
  b2Rot abStack_40 [8];
  b2Rot abStack_38 [8];
  b2Rot abStack_30 [8];
  b2Vec2 abStack_28 [8];
  b2Vec2 abStack_20 [8];
  b2Vec2 abStack_18 [8];
  b2Vec2 abStack_10 [8];
  
  *(undefined4 *)(param_1 + 0x84) = *(undefined4 *)(*(int *)(param_1 + 0x30) + 8);
  *(undefined4 *)(param_1 + 0x88) = *(undefined4 *)(*(int *)(param_1 + 0x34) + 8);
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
  local_a0 = *(float *)(param_1 + 0x9c);
  local_9c = *(float *)(param_1 + 0xa0);
  local_98 = *(float *)(param_1 + 0xa4);
  local_94 = *(float *)(param_1 + 0xa8);
  puVar3 = (undefined4 *)((int)in_r1[6] + *(int *)(param_1 + 0x84) * 0xc);
  local_68 = *puVar3;
  uStack_64 = puVar3[1];
  local_90 = *(undefined4 *)(*(int *)(param_1 + 0x84) * 0xc + (int)in_r1[6] + 8);
  puVar3 = (undefined4 *)((int)in_r1[7] + *(int *)(param_1 + 0x84) * 0xc);
  local_60 = *puVar3;
  uStack_5c = puVar3[1];
  local_a8 = *(float *)(*(int *)(param_1 + 0x84) * 0xc + (int)in_r1[7] + 8);
  puVar3 = (undefined4 *)((int)in_r1[6] + *(int *)(param_1 + 0x88) * 0xc);
  local_58 = *puVar3;
  uStack_54 = puVar3[1];
  local_8c = *(undefined4 *)(*(int *)(param_1 + 0x88) * 0xc + (int)in_r1[6] + 8);
  puVar3 = (undefined4 *)((int)in_r1[7] + *(int *)(param_1 + 0x88) * 0xc);
  local_50 = *puVar3;
  uStack_4c = puVar3[1];
  local_a4 = *(float *)(*(int *)(param_1 + 0x88) * 0xc + (int)in_r1[7] + 8);
  local_b0 = in_r1;
  local_ac = param_1;
  fVar4 = (float)b2Rot::b2Rot(abStack_48,in_s0);
  b2Rot::b2Rot(abStack_40,fVar4);
  ::operator-(abStack_10,(b2Vec2 *)(local_ac + 0x4c));
  b2Mul(abStack_38,(b2Vec2 *)abStack_48);
  ::operator-(abStack_10,(b2Vec2 *)(local_ac + 0x54));
  b2Mul(abStack_30,(b2Vec2 *)abStack_40);
  ::operator+(abStack_18,(b2Vec2 *)&local_58);
  ::operator-(abStack_10,abStack_18);
  ::operator-(abStack_28,abStack_10);
  pbVar1 = local_ac;
  b2Mul((b2Rot *)&local_b8,(b2Vec2 *)abStack_48);
  *(undefined4 *)(pbVar1 + 0xb4) = local_b8;
  *(undefined4 *)(pbVar1 + 0xb8) = uStack_b4;
  ::operator+(abStack_10,abStack_28);
  uVar2 = b2Cross(abStack_10,(b2Vec2 *)(local_ac + 0xb4));
  *(undefined4 *)(local_ac + 0xc4) = uVar2;
  uVar2 = b2Cross((b2Vec2 *)abStack_30,(b2Vec2 *)(local_ac + 0xb4));
  pbVar1 = local_ac;
  *(undefined4 *)(local_ac + 200) = uVar2;
  *(float *)(local_ac + 0xcc) =
       local_a0 + local_9c + *(float *)(local_ac + 0xc4) * local_98 * *(float *)(local_ac + 0xc4) +
       *(float *)(local_ac + 200) * local_94 * *(float *)(local_ac + 200);
  if (0.0 < *(float *)(local_ac + 0xcc)) {
    *(float *)(local_ac + 0xcc) = 1.0 / *(float *)(local_ac + 0xcc);
  }
  *(undefined4 *)(local_ac + 0xd4) = 0;
  *(undefined4 *)(local_ac + 0xd8) = 0;
  *(undefined4 *)(local_ac + 0xdc) = 0;
  if (*(float *)(local_ac + 0x44) <= 0.0) {
    *(undefined4 *)(local_ac + 0x74) = 0;
    fVar4 = extraout_s0;
  }
  else {
    b2Mul((b2Rot *)&local_b8,(b2Vec2 *)abStack_48);
    *(undefined4 *)(pbVar1 + 0xac) = local_b8;
    *(undefined4 *)(pbVar1 + 0xb0) = uStack_b4;
    ::operator+(abStack_10,abStack_28);
    uVar2 = b2Cross(abStack_10,(b2Vec2 *)(local_ac + 0xac));
    *(undefined4 *)(local_ac + 0xbc) = uVar2;
    uVar2 = b2Cross((b2Vec2 *)abStack_30,(b2Vec2 *)(local_ac + 0xac));
    *(undefined4 *)(local_ac + 0xc0) = uVar2;
    local_88 = local_a0 + local_9c +
               *(float *)(local_ac + 0xbc) * local_98 * *(float *)(local_ac + 0xbc) +
               *(float *)(local_ac + 0xc0) * local_94 * *(float *)(local_ac + 0xc0);
    fVar4 = extraout_s0_00;
    if (0.0 < local_88) {
      *(float *)(local_ac + 0xd4) = 1.0 / local_88;
      local_84 = (float)b2Dot(abStack_28,(b2Vec2 *)(local_ac + 0xac));
      local_80 = *(float *)(local_ac + 0x44) * 6.2831855;
      local_7c = (*(float *)(local_ac + 0xd4) + *(float *)(local_ac + 0xd4)) *
                 *(float *)(local_ac + 0x48) * local_80;
      local_78 = *(float *)(local_ac + 0xd4) * local_80 * local_80;
      local_74 = *local_b0;
      *(float *)(local_ac + 0xdc) = (local_74 * local_78 + local_7c) * local_74;
      if (0.0 < *(float *)(local_ac + 0xdc)) {
        *(float *)(local_ac + 0xdc) = 1.0 / *(float *)(local_ac + 0xdc);
      }
      *(float *)(local_ac + 0xd8) = local_84 * local_74 * local_78 * *(float *)(local_ac + 0xdc);
      *(float *)(local_ac + 0xd4) = *(float *)(local_ac + 0xdc) + local_88;
      fVar4 = extraout_s0_01;
      if (0.0 < *(float *)(local_ac + 0xd4)) {
        *(float *)(local_ac + 0xd4) = 1.0 / *(float *)(local_ac + 0xd4);
      }
    }
  }
  if (local_ac[0x80] == (b2SolverData)0x0) {
    *(undefined4 *)(local_ac + 0xd0) = 0;
    *(undefined4 *)(local_ac + 0x70) = 0;
  }
  else {
    *(float *)(local_ac + 0xd0) = local_98 + local_94;
    if (0.0 < *(float *)(local_ac + 0xd0)) {
      *(float *)(local_ac + 0xd0) = 1.0 / *(float *)(local_ac + 0xd0);
    }
  }
  if (*(char *)(local_b0 + 5) == '\0') {
    *(undefined4 *)(local_ac + 0x6c) = 0;
    *(undefined4 *)(local_ac + 0x74) = 0;
    *(undefined4 *)(local_ac + 0x70) = 0;
  }
  else {
    *(float *)(local_ac + 0x6c) = *(float *)(local_ac + 0x6c) * local_b0[2];
    *(float *)(local_ac + 0x74) = *(float *)(local_ac + 0x74) * local_b0[2];
    *(float *)(local_ac + 0x70) = *(float *)(local_ac + 0x70) * local_b0[2];
    fVar4 = (float)::operator*(fVar4,abStack_18);
    ::operator*(fVar4,abStack_10);
    fVar4 = (float)::operator+(abStack_20,abStack_18);
    local_70 = *(float *)(local_ac + 0x6c) * *(float *)(local_ac + 0xc4) +
               *(float *)(local_ac + 0x74) * *(float *)(local_ac + 0xbc) +
               *(float *)(local_ac + 0x70);
    local_6c = *(float *)(local_ac + 0x6c) * *(float *)(local_ac + 200) +
               *(float *)(local_ac + 0x74) * *(float *)(local_ac + 0xc0) +
               *(float *)(local_ac + 0x70);
    ::operator*(fVar4,abStack_10);
    fVar4 = (float)b2Vec2::operator-=((b2Vec2 *)&local_60,abStack_10);
    local_a8 = local_a8 - *(float *)(local_ac + 0xa4) * local_70;
    ::operator*(fVar4,abStack_10);
    b2Vec2::operator+=((b2Vec2 *)&local_50,abStack_10);
    local_a4 = local_a4 + *(float *)(local_ac + 0xa8) * local_6c;
  }
  puVar3 = (undefined4 *)(*(int *)(local_ac + 0x84) * 0xc + (int)local_b0[7]);
  *puVar3 = local_60;
  puVar3[1] = uStack_5c;
  *(float *)(*(int *)(local_ac + 0x84) * 0xc + (int)local_b0[7] + 8) = local_a8;
  puVar3 = (undefined4 *)(*(int *)(local_ac + 0x88) * 0xc + (int)local_b0[7]);
  *puVar3 = local_50;
  puVar3[1] = uStack_4c;
  *(float *)(*(int *)(local_ac + 0x88) * 0xc + (int)local_b0[7] + 8) = local_a4;
  return;
}

// ---- b2WheelJoint::SolveVelocityConstraints  @ 0x6d7c30
/* b2WheelJoint::SolveVelocityConstraints(b2SolverData const&) */

void __thiscall b2WheelJoint::SolveVelocityConstraints(b2WheelJoint *this,b2SolverData *param_1)

{
  float fVar1;
  undefined4 extraout_r0;
  undefined4 *puVar2;
  float fVar3;
  float fVar4;
  float fVar5;
  float fVar6;
  float extraout_s0;
  float extraout_s0_00;
  float extraout_s0_01;
  float extraout_s1;
  float extraout_s2;
  float fVar7;
  float fVar8;
  float fVar9;
  undefined4 local_28;
  undefined4 uStack_24;
  undefined4 local_20;
  undefined4 uStack_1c;
  b2Vec2 abStack_18 [8];
  b2Vec2 abStack_10 [8];
  
  fVar3 = *(float *)(this + 0xa4);
  fVar4 = *(float *)(this + 0xa8);
  puVar2 = (undefined4 *)(*(int *)(param_1 + 0x1c) + *(int *)(this + 0x84) * 0xc);
  local_28 = *puVar2;
  uStack_24 = puVar2[1];
  fVar5 = *(float *)(*(int *)(this + 0x84) * 0xc + *(int *)(param_1 + 0x1c) + 8);
  puVar2 = (undefined4 *)(*(int *)(param_1 + 0x1c) + *(int *)(this + 0x88) * 0xc);
  local_20 = *puVar2;
  uStack_1c = puVar2[1];
  fVar6 = *(float *)(*(int *)(this + 0x88) * 0xc + *(int *)(param_1 + 0x1c) + 8);
  ::operator-(abStack_10,(b2Vec2 *)&local_20);
  fVar1 = (float)b2Dot((b2Vec2 *)(this + 0xac),abStack_10);
  fVar9 = -*(float *)(this + 0xd4) *
          (*(float *)(this + 0xd8) +
           ((fVar1 + *(float *)(this + 0xc0) * fVar6) - *(float *)(this + 0xbc) * fVar5) +
          *(float *)(this + 0xdc) * *(float *)(this + 0x74));
  *(float *)(this + 0x74) = *(float *)(this + 0x74) + fVar9;
  fVar1 = (float)::operator*(extraout_s0,abStack_18);
  fVar7 = *(float *)(this + 0xbc);
  fVar8 = *(float *)(this + 0xc0);
  ::operator*(fVar1,abStack_10);
  fVar1 = (float)b2Vec2::operator-=((b2Vec2 *)&local_28,abStack_10);
  ::operator*(fVar1,abStack_10);
  b2Vec2::operator+=((b2Vec2 *)&local_20,abStack_10);
  fVar1 = *(float *)(this + 0x70);
  b2Clamp<float>(extraout_s0_00,extraout_s1,extraout_s2);
  *(undefined4 *)(this + 0x70) = extraout_r0;
  fVar7 = (fVar5 - fVar3 * fVar7 * fVar9) - fVar3 * (*(float *)(this + 0x70) - fVar1);
  fVar8 = fVar6 + fVar4 * fVar8 * fVar9 + fVar4 * (*(float *)(this + 0x70) - fVar1);
  ::operator-(abStack_10,(b2Vec2 *)&local_20);
  fVar1 = (float)b2Dot((b2Vec2 *)(this + 0xb4),abStack_10);
  fVar9 = -*(float *)(this + 0xcc) *
          ((fVar1 + *(float *)(this + 200) * fVar8) - *(float *)(this + 0xc4) * fVar7);
  *(float *)(this + 0x6c) = *(float *)(this + 0x6c) + fVar9;
  fVar1 = (float)::operator*(extraout_s0_01,abStack_18);
  fVar5 = *(float *)(this + 0xc4);
  fVar6 = *(float *)(this + 200);
  ::operator*(fVar1,abStack_10);
  fVar1 = (float)b2Vec2::operator-=((b2Vec2 *)&local_28,abStack_10);
  ::operator*(fVar1,abStack_10);
  b2Vec2::operator+=((b2Vec2 *)&local_20,abStack_10);
  puVar2 = (undefined4 *)(*(int *)(this + 0x84) * 0xc + *(int *)(param_1 + 0x1c));
  *puVar2 = local_28;
  puVar2[1] = uStack_24;
  *(float *)(*(int *)(this + 0x84) * 0xc + *(int *)(param_1 + 0x1c) + 8) =
       fVar7 - fVar3 * fVar5 * fVar9;
  puVar2 = (undefined4 *)(*(int *)(this + 0x88) * 0xc + *(int *)(param_1 + 0x1c));
  *puVar2 = local_20;
  puVar2[1] = uStack_1c;
  *(float *)(*(int *)(this + 0x88) * 0xc + *(int *)(param_1 + 0x1c) + 8) =
       fVar8 + fVar4 * fVar6 * fVar9;
  return;
}

// ---- b2WheelJoint::SolvePositionConstraints  @ 0x6d8038
/* b2WheelJoint::SolvePositionConstraints(b2SolverData const&) */

bool b2WheelJoint::SolvePositionConstraints(b2SolverData *param_1)

{
  float fVar1;
  float fVar2;
  float extraout_r0;
  int in_r1;
  undefined4 *puVar3;
  float fVar4;
  float fVar5;
  float in_s0;
  float fVar6;
  float extraout_s0;
  float fVar7;
  float fVar8;
  float local_7c;
  undefined4 local_58;
  undefined4 uStack_54;
  undefined4 local_50;
  undefined4 uStack_4c;
  b2Rot abStack_48 [8];
  b2Rot abStack_40 [8];
  b2Rot abStack_38 [8];
  b2Rot abStack_30 [8];
  b2Vec2 abStack_28 [8];
  b2Rot abStack_20 [8];
  b2Vec2 abStack_18 [8];
  b2Vec2 abStack_10 [12];
  
  puVar3 = (undefined4 *)(*(int *)(in_r1 + 0x18) + *(int *)(param_1 + 0x84) * 0xc);
  local_58 = *puVar3;
  uStack_54 = puVar3[1];
  fVar4 = *(float *)(*(int *)(param_1 + 0x84) * 0xc + *(int *)(in_r1 + 0x18) + 8);
  puVar3 = (undefined4 *)(*(int *)(in_r1 + 0x18) + *(int *)(param_1 + 0x88) * 0xc);
  local_50 = *puVar3;
  uStack_4c = puVar3[1];
  fVar5 = *(float *)(*(int *)(param_1 + 0x88) * 0xc + *(int *)(in_r1 + 0x18) + 8);
  fVar6 = (float)b2Rot::b2Rot(abStack_48,in_s0);
  b2Rot::b2Rot(abStack_40,fVar6);
  ::operator-(abStack_10,(b2Vec2 *)(param_1 + 0x4c));
  b2Mul(abStack_38,(b2Vec2 *)abStack_48);
  ::operator-(abStack_10,(b2Vec2 *)(param_1 + 0x54));
  b2Mul(abStack_30,(b2Vec2 *)abStack_40);
  ::operator-(abStack_18,(b2Vec2 *)&local_50);
  ::operator+(abStack_10,abStack_18);
  ::operator-(abStack_28,abStack_10);
  b2Mul(abStack_20,(b2Vec2 *)abStack_48);
  ::operator+(abStack_10,abStack_28);
  fVar6 = (float)b2Cross(abStack_10,(b2Vec2 *)abStack_20);
  fVar1 = (float)b2Cross((b2Vec2 *)abStack_30,(b2Vec2 *)abStack_20);
  fVar2 = (float)b2Dot(abStack_28,(b2Vec2 *)abStack_20);
  local_7c = *(float *)(param_1 + 0x9c) + *(float *)(param_1 + 0xa0) +
             *(float *)(param_1 + 0xa4) * *(float *)(param_1 + 0xc4) * *(float *)(param_1 + 0xc4) +
             *(float *)(param_1 + 0xa8) * *(float *)(param_1 + 200) * *(float *)(param_1 + 200);
  if (local_7c == 0.0) {
    local_7c = 0.0;
  }
  else {
    local_7c = -fVar2 / local_7c;
  }
  fVar2 = (float)::operator*(extraout_s0,abStack_18);
  ::operator*(fVar2,abStack_10);
  fVar2 = (float)b2Vec2::operator-=((b2Vec2 *)&local_58,abStack_10);
  fVar7 = *(float *)(param_1 + 0xa4);
  ::operator*(fVar2,abStack_10);
  fVar2 = (float)b2Vec2::operator+=((b2Vec2 *)&local_50,abStack_10);
  fVar8 = *(float *)(param_1 + 0xa8);
  puVar3 = (undefined4 *)(*(int *)(param_1 + 0x84) * 0xc + *(int *)(in_r1 + 0x18));
  *puVar3 = local_58;
  puVar3[1] = uStack_54;
  *(float *)(*(int *)(param_1 + 0x84) * 0xc + *(int *)(in_r1 + 0x18) + 8) =
       fVar4 - fVar7 * local_7c * fVar6;
  puVar3 = (undefined4 *)(*(int *)(param_1 + 0x88) * 0xc + *(int *)(in_r1 + 0x18));
  *puVar3 = local_50;
  puVar3[1] = uStack_4c;
  *(float *)(*(int *)(param_1 + 0x88) * 0xc + *(int *)(in_r1 + 0x18) + 8) =
       fVar5 + fVar8 * local_7c * fVar1;
  b2Abs<float>(fVar2);
  return extraout_r0 <= 0.005;
}

// ---- b2WheelJoint::GetAnchorA  @ 0x6d8350
/* b2WheelJoint::GetAnchorA() const */

b2Body * b2WheelJoint::GetAnchorA(void)

{
  b2Body *in_r0;
  int in_r1;
  
  b2Body::GetWorldPoint(in_r0,*(b2Vec2 **)(in_r1 + 0x30));
  return in_r0;
}

// ---- b2WheelJoint::GetAnchorB  @ 0x6d8374
/* b2WheelJoint::GetAnchorB() const */

b2Body * b2WheelJoint::GetAnchorB(void)

{
  b2Body *in_r0;
  int in_r1;
  
  b2Body::GetWorldPoint(in_r0,*(b2Vec2 **)(in_r1 + 0x34));
  return in_r0;
}

// ---- b2WheelJoint::GetReactionForce  @ 0x6d8398
/* b2WheelJoint::GetReactionForce(float) const */

b2WheelJoint * __thiscall b2WheelJoint::GetReactionForce(b2WheelJoint *this,float param_1)

{
  float fVar1;
  b2Vec2 abStack_20 [8];
  b2Vec2 abStack_18 [8];
  b2Vec2 abStack_10 [12];
  
  fVar1 = (float)::operator*(param_1,abStack_20);
  ::operator*(fVar1,abStack_18);
  fVar1 = (float)::operator+(abStack_10,abStack_20);
  ::operator*(fVar1,(b2Vec2 *)this);
  return this;
}

// ---- b2WheelJoint::GetReactionTorque  @ 0x6d83f0
/* b2WheelJoint::GetReactionTorque(float) const */

float __thiscall b2WheelJoint::GetReactionTorque(b2WheelJoint *this,float param_1)

{
  float in_r1;
  
  return *(float *)(this + 0x70) * in_r1;
}

// ---- b2WheelJoint::GetJointTranslation  @ 0x6d8410
/* b2WheelJoint::GetJointTranslation() const */

undefined4 __thiscall b2WheelJoint::GetJointTranslation(b2WheelJoint *this)

{
  undefined4 uVar1;
  b2Vec2 *pbVar2;
  b2Vec2 *pbVar3;
  b2Body abStack_28 [8];
  b2Body abStack_20 [8];
  b2Vec2 abStack_18 [8];
  b2Body abStack_10 [12];
  
  pbVar2 = *(b2Vec2 **)(this + 0x30);
  pbVar3 = *(b2Vec2 **)(this + 0x34);
  b2Body::GetWorldPoint(abStack_28,pbVar2);
  b2Body::GetWorldPoint(abStack_20,pbVar3);
  ::operator-(abStack_18,(b2Vec2 *)abStack_20);
  b2Body::GetWorldVector(abStack_10,pbVar2);
  uVar1 = b2Dot(abStack_18,(b2Vec2 *)abStack_10);
  return uVar1;
}

// ---- b2WheelJoint::GetJointSpeed  @ 0x6d847c
/* b2WheelJoint::GetJointSpeed() const */

float __thiscall b2WheelJoint::GetJointSpeed(b2WheelJoint *this)

{
  return *(float *)(*(int *)(this + 0x34) + 0x48) - *(float *)(*(int *)(this + 0x30) + 0x48);
}

// ---- b2WheelJoint::IsMotorEnabled  @ 0x6d84a8
/* b2WheelJoint::IsMotorEnabled() const */

b2WheelJoint __thiscall b2WheelJoint::IsMotorEnabled(b2WheelJoint *this)

{
  return this[0x80];
}

// ---- b2WheelJoint::EnableMotor  @ 0x6d84b8
/* b2WheelJoint::EnableMotor(bool) */

void __thiscall b2WheelJoint::EnableMotor(b2WheelJoint *this,bool param_1)

{
  b2Body::SetAwake(*(b2Body **)(this + 0x30),true);
  b2Body::SetAwake(*(b2Body **)(this + 0x34),true);
  this[0x80] = (b2WheelJoint)param_1;
  return;
}

// ---- b2WheelJoint::SetMotorSpeed  @ 0x6d84ec
/* b2WheelJoint::SetMotorSpeed(float) */

void __thiscall b2WheelJoint::SetMotorSpeed(b2WheelJoint *this,float param_1)

{
  undefined4 in_r1;
  
  b2Body::SetAwake(*(b2Body **)(this + 0x30),true);
  b2Body::SetAwake(*(b2Body **)(this + 0x34),true);
  *(undefined4 *)(this + 0x7c) = in_r1;
  return;
}

// ---- b2WheelJoint::SetMaxMotorTorque  @ 0x6d8518
/* b2WheelJoint::SetMaxMotorTorque(float) */

void __thiscall b2WheelJoint::SetMaxMotorTorque(b2WheelJoint *this,float param_1)

{
  undefined4 in_r1;
  
  b2Body::SetAwake(*(b2Body **)(this + 0x30),true);
  b2Body::SetAwake(*(b2Body **)(this + 0x34),true);
  *(undefined4 *)(this + 0x78) = in_r1;
  return;
}

// ---- b2WheelJoint::GetMotorTorque  @ 0x6d8544
/* b2WheelJoint::GetMotorTorque(float) const */

float __thiscall b2WheelJoint::GetMotorTorque(b2WheelJoint *this,float param_1)

{
  float in_r1;
  
  return *(float *)(this + 0x70) * in_r1;
}

// ---- b2WheelJoint::Dump  @ 0x6d8564
/* b2WheelJoint::Dump() */

void __thiscall b2WheelJoint::Dump(b2WheelJoint *this)

{
  undefined4 extraout_r1;
  undefined4 extraout_r1_00;
  undefined4 extraout_r1_01;
  undefined4 extraout_r1_02;
  undefined4 extraout_r1_03;
  undefined4 extraout_r1_04;
  undefined4 extraout_r1_05;
  undefined4 uVar1;
  undefined4 uVar2;
  
  uVar1 = *(undefined4 *)(*(int *)(this + 0x30) + 8);
  uVar2 = *(undefined4 *)(*(int *)(this + 0x34) + 8);
  b2Log("  b2WheelJointDef jd;\n");
  b2Log("  jd.bodyA = bodies[%d];\n",uVar1);
  b2Log("  jd.bodyB = bodies[%d];\n",uVar2);
  b2Log("  jd.collideConnected = bool(%d);\n",(uint)(byte)this[0x3d]);
  b2Log("  jd.localAnchorA.Set(%.15lef, %.15lef);\n",extraout_r1,
        SUB84((double)*(float *)(this + 0x4c),0),
        (int)((ulonglong)(double)*(float *)(this + 0x4c) >> 0x20),(double)*(float *)(this + 0x50));
  b2Log("  jd.localAnchorB.Set(%.15lef, %.15lef);\n",extraout_r1_00,
        SUB84((double)*(float *)(this + 0x54),0),
        (int)((ulonglong)(double)*(float *)(this + 0x54) >> 0x20),(double)*(float *)(this + 0x58));
  b2Log("  jd.localAxisA.Set(%.15lef, %.15lef);\n",extraout_r1_01,
        SUB84((double)*(float *)(this + 0x5c),0),
        (int)((ulonglong)(double)*(float *)(this + 0x5c) >> 0x20),(double)*(float *)(this + 0x60));
  b2Log("  jd.enableMotor = bool(%d);\n",(uint)(byte)this[0x80]);
  b2Log("  jd.motorSpeed = %.15lef;\n",extraout_r1_02,SUB84((double)*(float *)(this + 0x7c),0),
        (int)((ulonglong)(double)*(float *)(this + 0x7c) >> 0x20));
  b2Log("  jd.maxMotorTorque = %.15lef;\n",extraout_r1_03,SUB84((double)*(float *)(this + 0x78),0),
        (int)((ulonglong)(double)*(float *)(this + 0x78) >> 0x20));
  b2Log("  jd.frequencyHz = %.15lef;\n",extraout_r1_04,SUB84((double)*(float *)(this + 0x44),0),
        (int)((ulonglong)(double)*(float *)(this + 0x44) >> 0x20));
  b2Log("  jd.dampingRatio = %.15lef;\n",extraout_r1_05,SUB84((double)*(float *)(this + 0x48),0),
        (int)((ulonglong)(double)*(float *)(this + 0x48) >> 0x20));
  b2Log("  joints[%d] = m_world->CreateJoint(&jd);\n",*(undefined4 *)(this + 0x38));
  return;
}

// ---- b2WheelJoint::~b2WheelJoint  @ 0x6d86dc
/* WARNING: Removing unreachable block (ram,0x006d86fe) */
/* b2WheelJoint::~b2WheelJoint() */

b2WheelJoint * __thiscall b2WheelJoint::~b2WheelJoint(b2WheelJoint *this)

{
  *(undefined ***)this = &PTR_GetAnchorA_1_0093c140;
  b2Joint::~b2Joint((b2Joint *)this);
  return this;
}

// ---- b2WheelJoint::~b2WheelJoint  @ 0x6d8718
/* b2WheelJoint::~b2WheelJoint() */

b2WheelJoint * __thiscall b2WheelJoint::~b2WheelJoint(b2WheelJoint *this)

{
  ~b2WheelJoint(this);
  operator_delete(this);
  return this;
}
