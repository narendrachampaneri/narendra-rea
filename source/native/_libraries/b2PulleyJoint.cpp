// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 16 functions

// ---- b2PulleyJoint::b2PulleyJoint  @ 0x6d2c6c
/* b2PulleyJoint::b2PulleyJoint(b2PulleyJointDef const*) */

b2PulleyJoint * __thiscall
b2PulleyJoint::b2PulleyJoint(b2PulleyJoint *this,b2PulleyJointDef *param_1)

{
  undefined4 uVar1;
  
  b2Joint::b2Joint((b2Joint *)this,(b2JointDef *)param_1);
  *(undefined ***)this = &PTR_GetAnchorA_1_0093c040;
  b2Vec2::b2Vec2((b2Vec2 *)(this + 0x44));
  b2Vec2::b2Vec2((b2Vec2 *)(this + 0x4c));
  b2Vec2::b2Vec2((b2Vec2 *)(this + 0x5c));
  b2Vec2::b2Vec2((b2Vec2 *)(this + 100));
  b2Vec2::b2Vec2((b2Vec2 *)(this + 0x80));
  b2Vec2::b2Vec2((b2Vec2 *)(this + 0x88));
  b2Vec2::b2Vec2((b2Vec2 *)(this + 0x90));
  b2Vec2::b2Vec2((b2Vec2 *)(this + 0x98));
  b2Vec2::b2Vec2((b2Vec2 *)(this + 0xa0));
  b2Vec2::b2Vec2((b2Vec2 *)(this + 0xa8));
  uVar1 = *(undefined4 *)(param_1 + 0x18);
  *(undefined4 *)(this + 0x44) = *(undefined4 *)(param_1 + 0x14);
  *(undefined4 *)(this + 0x48) = uVar1;
  uVar1 = *(undefined4 *)(param_1 + 0x20);
  *(undefined4 *)(this + 0x4c) = *(undefined4 *)(param_1 + 0x1c);
  *(undefined4 *)(this + 0x50) = uVar1;
  uVar1 = *(undefined4 *)(param_1 + 0x28);
  *(undefined4 *)(this + 0x5c) = *(undefined4 *)(param_1 + 0x24);
  *(undefined4 *)(this + 0x60) = uVar1;
  uVar1 = *(undefined4 *)(param_1 + 0x30);
  *(undefined4 *)(this + 100) = *(undefined4 *)(param_1 + 0x2c);
  *(undefined4 *)(this + 0x68) = uVar1;
  *(undefined4 *)(this + 0x54) = *(undefined4 *)(param_1 + 0x34);
  *(undefined4 *)(this + 0x58) = *(undefined4 *)(param_1 + 0x38);
  *(undefined4 *)(this + 0x70) = *(undefined4 *)(param_1 + 0x3c);
  *(float *)(this + 0x6c) =
       *(float *)(param_1 + 0x34) + *(float *)(this + 0x70) * *(float *)(param_1 + 0x38);
  *(undefined4 *)(this + 0x74) = 0;
  return this;
}

// ---- b2PulleyJoint::InitVelocityConstraints  @ 0x6d2d80
/* b2PulleyJoint::InitVelocityConstraints(b2SolverData const&) */

void b2PulleyJoint::InitVelocityConstraints(b2SolverData *param_1)

{
  b2SolverData *pbVar1;
  int in_r1;
  undefined4 uVar2;
  undefined4 *puVar3;
  float in_s0;
  float fVar4;
  float extraout_s0;
  float extraout_s0_00;
  float extraout_s0_01;
  float fVar5;
  undefined4 local_90;
  undefined4 uStack_8c;
  int local_88;
  b2SolverData *local_84;
  float local_80;
  float local_7c;
  undefined4 local_78;
  undefined4 local_74;
  float local_70;
  float local_6c;
  float local_68;
  float local_64;
  float local_60;
  float local_5c;
  undefined4 local_58;
  undefined4 uStack_54;
  undefined4 local_50;
  undefined4 uStack_4c;
  undefined4 local_48;
  undefined4 uStack_44;
  undefined4 local_40;
  undefined4 uStack_3c;
  b2Rot abStack_38 [8];
  b2Rot abStack_30 [8];
  b2Vec2 abStack_28 [8];
  b2Vec2 abStack_20 [8];
  b2Vec2 abStack_18 [8];
  
  *(undefined4 *)(param_1 + 0x78) = *(undefined4 *)(*(int *)(param_1 + 0x30) + 8);
  *(undefined4 *)(param_1 + 0x7c) = *(undefined4 *)(*(int *)(param_1 + 0x34) + 8);
  uVar2 = *(undefined4 *)(*(int *)(param_1 + 0x30) + 0x20);
  *(undefined4 *)(param_1 + 0xa0) = *(undefined4 *)(*(int *)(param_1 + 0x30) + 0x1c);
  *(undefined4 *)(param_1 + 0xa4) = uVar2;
  uVar2 = *(undefined4 *)(*(int *)(param_1 + 0x34) + 0x20);
  *(undefined4 *)(param_1 + 0xa8) = *(undefined4 *)(*(int *)(param_1 + 0x34) + 0x1c);
  *(undefined4 *)(param_1 + 0xac) = uVar2;
  *(undefined4 *)(param_1 + 0xb0) = *(undefined4 *)(*(int *)(param_1 + 0x30) + 0x78);
  *(undefined4 *)(param_1 + 0xb4) = *(undefined4 *)(*(int *)(param_1 + 0x34) + 0x78);
  *(undefined4 *)(param_1 + 0xb8) = *(undefined4 *)(*(int *)(param_1 + 0x30) + 0x80);
  *(undefined4 *)(param_1 + 0xbc) = *(undefined4 *)(*(int *)(param_1 + 0x34) + 0x80);
  puVar3 = (undefined4 *)(*(int *)(in_r1 + 0x18) + *(int *)(param_1 + 0x78) * 0xc);
  local_58 = *puVar3;
  uStack_54 = puVar3[1];
  local_78 = *(undefined4 *)(*(int *)(param_1 + 0x78) * 0xc + *(int *)(in_r1 + 0x18) + 8);
  puVar3 = (undefined4 *)(*(int *)(in_r1 + 0x1c) + *(int *)(param_1 + 0x78) * 0xc);
  local_50 = *puVar3;
  uStack_4c = puVar3[1];
  local_80 = *(float *)(*(int *)(param_1 + 0x78) * 0xc + *(int *)(in_r1 + 0x1c) + 8);
  puVar3 = (undefined4 *)(*(int *)(in_r1 + 0x18) + *(int *)(param_1 + 0x7c) * 0xc);
  local_48 = *puVar3;
  uStack_44 = puVar3[1];
  local_74 = *(undefined4 *)(*(int *)(param_1 + 0x7c) * 0xc + *(int *)(in_r1 + 0x18) + 8);
  puVar3 = (undefined4 *)(*(int *)(in_r1 + 0x1c) + *(int *)(param_1 + 0x7c) * 0xc);
  local_40 = *puVar3;
  uStack_3c = puVar3[1];
  local_7c = *(float *)(*(int *)(param_1 + 0x7c) * 0xc + *(int *)(in_r1 + 0x1c) + 8);
  local_88 = in_r1;
  local_84 = param_1;
  fVar4 = (float)b2Rot::b2Rot(abStack_38,in_s0);
  b2Rot::b2Rot(abStack_30,fVar4);
  ::operator-(abStack_18,(b2Vec2 *)(local_84 + 0x5c));
  pbVar1 = local_84;
  b2Mul((b2Rot *)&local_90,(b2Vec2 *)abStack_38);
  *(undefined4 *)(pbVar1 + 0x90) = local_90;
  *(undefined4 *)(pbVar1 + 0x94) = uStack_8c;
  ::operator-(abStack_18,(b2Vec2 *)(local_84 + 100));
  pbVar1 = local_84;
  b2Mul((b2Rot *)&local_90,(b2Vec2 *)abStack_30);
  *(undefined4 *)(pbVar1 + 0x98) = local_90;
  *(undefined4 *)(pbVar1 + 0x9c) = uStack_8c;
  ::operator+(abStack_18,(b2Vec2 *)&local_58);
  pbVar1 = local_84;
  ::operator-((b2Vec2 *)&local_90,abStack_18);
  *(undefined4 *)(pbVar1 + 0x80) = local_90;
  *(undefined4 *)(pbVar1 + 0x84) = uStack_8c;
  ::operator+(abStack_18,(b2Vec2 *)&local_48);
  pbVar1 = local_84;
  ::operator-((b2Vec2 *)&local_90,abStack_18);
  *(undefined4 *)(pbVar1 + 0x88) = local_90;
  *(undefined4 *)(pbVar1 + 0x8c) = uStack_8c;
  local_70 = (float)b2Vec2::Length((b2Vec2 *)(local_84 + 0x80));
  local_6c = (float)b2Vec2::Length((b2Vec2 *)(local_84 + 0x88));
  if (local_70 <= 0.049999997) {
    fVar4 = (float)b2Vec2::SetZero((b2Vec2 *)(local_84 + 0x80));
  }
  else {
    fVar4 = (float)b2Vec2::operator*=((b2Vec2 *)(local_84 + 0x80),extraout_s0);
  }
  if (local_6c <= 0.049999997) {
    b2Vec2::SetZero((b2Vec2 *)(local_84 + 0x88));
  }
  else {
    b2Vec2::operator*=((b2Vec2 *)(local_84 + 0x88),fVar4);
  }
  local_68 = (float)b2Cross((b2Vec2 *)(local_84 + 0x90),(b2Vec2 *)(local_84 + 0x80));
  local_64 = (float)b2Cross((b2Vec2 *)(local_84 + 0x98),(b2Vec2 *)(local_84 + 0x88));
  local_60 = *(float *)(local_84 + 0xb0) + *(float *)(local_84 + 0xb8) * local_68 * local_68;
  local_5c = *(float *)(local_84 + 0xb4) + *(float *)(local_84 + 0xbc) * local_64 * local_64;
  *(float *)(local_84 + 0xc0) =
       *(float *)(local_84 + 0x70) * *(float *)(local_84 + 0x70) * local_5c + local_60;
  if (0.0 < *(float *)(local_84 + 0xc0)) {
    *(float *)(local_84 + 0xc0) = 1.0 / *(float *)(local_84 + 0xc0);
  }
  if (*(char *)(local_88 + 0x14) == '\0') {
    *(undefined4 *)(local_84 + 0x74) = 0;
  }
  else {
    *(float *)(local_84 + 0x74) = *(float *)(local_84 + 0x74) * *(float *)(local_88 + 8);
    fVar4 = (float)::operator*(extraout_s0_00,abStack_28);
    fVar4 = (float)::operator*(fVar4,abStack_20);
    ::operator*(fVar4,abStack_18);
    b2Vec2::operator+=((b2Vec2 *)&local_50,abStack_18);
    fVar5 = *(float *)(local_84 + 0xb8);
    fVar4 = (float)b2Cross((b2Vec2 *)(local_84 + 0x90),abStack_28);
    local_80 = local_80 + fVar5 * fVar4;
    ::operator*(extraout_s0_01,abStack_18);
    b2Vec2::operator+=((b2Vec2 *)&local_40,abStack_18);
    fVar5 = *(float *)(local_84 + 0xbc);
    fVar4 = (float)b2Cross((b2Vec2 *)(local_84 + 0x98),abStack_20);
    local_7c = local_7c + fVar5 * fVar4;
  }
  puVar3 = (undefined4 *)(*(int *)(local_84 + 0x78) * 0xc + *(int *)(local_88 + 0x1c));
  *puVar3 = local_50;
  puVar3[1] = uStack_4c;
  *(float *)(*(int *)(local_84 + 0x78) * 0xc + *(int *)(local_88 + 0x1c) + 8) = local_80;
  puVar3 = (undefined4 *)(*(int *)(local_84 + 0x7c) * 0xc + *(int *)(local_88 + 0x1c));
  *puVar3 = local_40;
  puVar3[1] = uStack_3c;
  *(float *)(*(int *)(local_84 + 0x7c) * 0xc + *(int *)(local_88 + 0x1c) + 8) = local_7c;
  return;
}

// ---- b2PulleyJoint::SolveVelocityConstraints  @ 0x6d3278
/* b2PulleyJoint::SolveVelocityConstraints(b2SolverData const&) */

void b2PulleyJoint::SolveVelocityConstraints(b2SolverData *param_1)

{
  float fVar1;
  int in_r1;
  undefined4 *puVar2;
  float fVar3;
  float fVar4;
  float in_s0;
  float fVar5;
  float extraout_s0;
  float extraout_s0_00;
  float fVar6;
  float fVar7;
  undefined4 local_48;
  undefined4 uStack_44;
  undefined4 local_40;
  undefined4 uStack_3c;
  b2Vec2 abStack_38 [8];
  b2Vec2 abStack_30 [8];
  b2Vec2 abStack_28 [8];
  b2Vec2 abStack_20 [8];
  b2Vec2 abStack_18 [12];
  
  puVar2 = (undefined4 *)(*(int *)(in_r1 + 0x1c) + *(int *)(param_1 + 0x78) * 0xc);
  local_48 = *puVar2;
  uStack_44 = puVar2[1];
  fVar3 = *(float *)(*(int *)(param_1 + 0x78) * 0xc + *(int *)(in_r1 + 0x1c) + 8);
  puVar2 = (undefined4 *)(*(int *)(in_r1 + 0x1c) + *(int *)(param_1 + 0x7c) * 0xc);
  local_40 = *puVar2;
  uStack_3c = puVar2[1];
  fVar4 = *(float *)(*(int *)(param_1 + 0x7c) * 0xc + *(int *)(in_r1 + 0x1c) + 8);
  b2Cross(in_s0,abStack_18);
  fVar5 = (float)::operator+(abStack_38,(b2Vec2 *)&local_48);
  b2Cross(fVar5,abStack_18);
  ::operator+(abStack_30,(b2Vec2 *)&local_40);
  fVar5 = (float)b2Dot((b2Vec2 *)(param_1 + 0x80),abStack_38);
  fVar7 = *(float *)(param_1 + 0x70);
  fVar1 = (float)b2Dot((b2Vec2 *)(param_1 + 0x88),abStack_30);
  *(float *)(param_1 + 0x74) =
       *(float *)(param_1 + 0x74) + -*(float *)(param_1 + 0xc0) * (-fVar5 - fVar7 * fVar1);
  fVar5 = (float)::operator*(extraout_s0,abStack_28);
  fVar5 = (float)::operator*(fVar5,abStack_20);
  ::operator*(fVar5,abStack_18);
  b2Vec2::operator+=((b2Vec2 *)&local_48,abStack_18);
  fVar7 = *(float *)(param_1 + 0xb8);
  fVar5 = (float)b2Cross((b2Vec2 *)(param_1 + 0x90),abStack_28);
  ::operator*(extraout_s0_00,abStack_18);
  b2Vec2::operator+=((b2Vec2 *)&local_40,abStack_18);
  fVar6 = *(float *)(param_1 + 0xbc);
  fVar1 = (float)b2Cross((b2Vec2 *)(param_1 + 0x98),abStack_20);
  puVar2 = (undefined4 *)(*(int *)(param_1 + 0x78) * 0xc + *(int *)(in_r1 + 0x1c));
  *puVar2 = local_48;
  puVar2[1] = uStack_44;
  *(float *)(*(int *)(param_1 + 0x78) * 0xc + *(int *)(in_r1 + 0x1c) + 8) = fVar3 + fVar7 * fVar5;
  puVar2 = (undefined4 *)(*(int *)(param_1 + 0x7c) * 0xc + *(int *)(in_r1 + 0x1c));
  *puVar2 = local_40;
  puVar2[1] = uStack_3c;
  *(float *)(*(int *)(param_1 + 0x7c) * 0xc + *(int *)(in_r1 + 0x1c) + 8) = fVar4 + fVar6 * fVar1;
  return;
}

// ---- b2PulleyJoint::SolvePositionConstraints  @ 0x6d34e4
/* b2PulleyJoint::SolvePositionConstraints(b2SolverData const&) */

undefined1 b2PulleyJoint::SolvePositionConstraints(b2SolverData *param_1)

{
  int iVar1;
  float fVar2;
  float extraout_r0;
  int in_r1;
  undefined4 *puVar3;
  undefined1 uVar4;
  float fVar5;
  float fVar6;
  int iVar7;
  float in_s0;
  float fVar8;
  float extraout_s0;
  float extraout_s0_00;
  float extraout_s0_01;
  float fVar9;
  float fVar10;
  undefined4 local_68;
  undefined4 uStack_64;
  undefined4 local_60;
  undefined4 uStack_5c;
  b2Rot abStack_58 [8];
  b2Rot abStack_50 [8];
  b2Rot abStack_48 [8];
  b2Rot abStack_40 [8];
  b2Vec2 abStack_38 [8];
  b2Vec2 abStack_30 [8];
  b2Vec2 abStack_28 [8];
  b2Vec2 abStack_20 [8];
  b2Vec2 abStack_18 [12];
  
  puVar3 = (undefined4 *)(*(int *)(in_r1 + 0x18) + *(int *)(param_1 + 0x78) * 0xc);
  local_68 = *puVar3;
  uStack_64 = puVar3[1];
  fVar5 = *(float *)(*(int *)(param_1 + 0x78) * 0xc + *(int *)(in_r1 + 0x18) + 8);
  puVar3 = (undefined4 *)(*(int *)(in_r1 + 0x18) + *(int *)(param_1 + 0x7c) * 0xc);
  local_60 = *puVar3;
  uStack_5c = puVar3[1];
  fVar6 = *(float *)(*(int *)(param_1 + 0x7c) * 0xc + *(int *)(in_r1 + 0x18) + 8);
  fVar8 = (float)b2Rot::b2Rot(abStack_58,in_s0);
  b2Rot::b2Rot(abStack_50,fVar8);
  ::operator-(abStack_18,(b2Vec2 *)(param_1 + 0x5c));
  b2Mul(abStack_48,(b2Vec2 *)abStack_58);
  ::operator-(abStack_18,(b2Vec2 *)(param_1 + 100));
  b2Mul(abStack_40,(b2Vec2 *)abStack_50);
  ::operator+(abStack_18,(b2Vec2 *)&local_68);
  ::operator-(abStack_38,abStack_18);
  ::operator+(abStack_18,(b2Vec2 *)&local_60);
  ::operator-(abStack_30,abStack_18);
  fVar8 = (float)b2Vec2::Length(abStack_38);
  fVar2 = (float)b2Vec2::Length(abStack_30);
  if (fVar8 <= 0.049999997) {
    fVar8 = (float)b2Vec2::SetZero(abStack_38);
  }
  else {
    fVar8 = (float)b2Vec2::operator*=(abStack_38,extraout_s0);
  }
  if (fVar2 <= 0.049999997) {
    b2Vec2::SetZero(abStack_30);
  }
  else {
    b2Vec2::operator*=(abStack_30,fVar8);
  }
  b2Cross((b2Vec2 *)abStack_48,abStack_38);
  b2Cross((b2Vec2 *)abStack_40,abStack_30);
  fVar8 = b2Abs<float>(extraout_s0_00);
  fVar8 = (float)::operator*(fVar8,abStack_28);
  fVar8 = (float)::operator*(fVar8,abStack_20);
  ::operator*(fVar8,abStack_18);
  b2Vec2::operator+=((b2Vec2 *)&local_68,abStack_18);
  fVar9 = *(float *)(param_1 + 0xb8);
  fVar8 = (float)b2Cross((b2Vec2 *)abStack_48,abStack_28);
  ::operator*(extraout_s0_01,abStack_18);
  b2Vec2::operator+=((b2Vec2 *)&local_60,abStack_18);
  fVar10 = *(float *)(param_1 + 0xbc);
  fVar2 = (float)b2Cross((b2Vec2 *)abStack_40,abStack_20);
  puVar3 = (undefined4 *)(*(int *)(param_1 + 0x78) * 0xc + *(int *)(in_r1 + 0x18));
  *puVar3 = local_68;
  puVar3[1] = uStack_64;
  *(float *)(*(int *)(param_1 + 0x78) * 0xc + *(int *)(in_r1 + 0x18) + 8) = fVar5 + fVar9 * fVar8;
  puVar3 = (undefined4 *)(*(int *)(param_1 + 0x7c) * 0xc + *(int *)(in_r1 + 0x18));
  *puVar3 = local_60;
  puVar3[1] = uStack_5c;
  iVar7 = *(int *)(param_1 + 0x7c) * 0xc + *(int *)(in_r1 + 0x18);
  *(float *)(iVar7 + 8) = fVar6 + fVar10 * fVar2;
  iVar1 = (uint)(extraout_r0 < 0.005) << 0x1f;
  if (-1 < iVar1) {
    iVar7 = 0;
  }
  uVar4 = (undefined1)iVar7;
  if (iVar1 < 0) {
    uVar4 = 1;
  }
  return uVar4;
}

// ---- b2PulleyJoint::GetAnchorA  @ 0x6d38cc
/* b2PulleyJoint::GetAnchorA() const */

b2Body * b2PulleyJoint::GetAnchorA(void)

{
  b2Body *in_r0;
  int in_r1;
  
  b2Body::GetWorldPoint(in_r0,*(b2Vec2 **)(in_r1 + 0x30));
  return in_r0;
}

// ---- b2PulleyJoint::GetAnchorB  @ 0x6d38f0
/* b2PulleyJoint::GetAnchorB() const */

b2Body * b2PulleyJoint::GetAnchorB(void)

{
  b2Body *in_r0;
  int in_r1;
  
  b2Body::GetWorldPoint(in_r0,*(b2Vec2 **)(in_r1 + 0x34));
  return in_r0;
}

// ---- b2PulleyJoint::GetReactionForce  @ 0x6d3914
/* b2PulleyJoint::GetReactionForce(float) const */

b2PulleyJoint * __thiscall b2PulleyJoint::GetReactionForce(b2PulleyJoint *this,float param_1)

{
  float fVar1;
  b2Vec2 abStack_10 [12];
  
  fVar1 = (float)::operator*(param_1,abStack_10);
  ::operator*(fVar1,(b2Vec2 *)this);
  return this;
}

// ---- b2PulleyJoint::GetReactionTorque  @ 0x6d3948
/* b2PulleyJoint::GetReactionTorque(float) const */

undefined4 b2PulleyJoint::GetReactionTorque(float param_1)

{
  return 0;
}

// ---- b2PulleyJoint::GetGroundAnchorA  @ 0x6d3958
/* b2PulleyJoint::GetGroundAnchorA() const */

undefined4 * b2PulleyJoint::GetGroundAnchorA(void)

{
  undefined4 *in_r0;
  int in_r1;
  undefined4 uVar1;
  
  uVar1 = *(undefined4 *)(in_r1 + 0x48);
  *in_r0 = *(undefined4 *)(in_r1 + 0x44);
  in_r0[1] = uVar1;
  return in_r0;
}

// ---- b2PulleyJoint::GetGroundAnchorB  @ 0x6d3974
/* b2PulleyJoint::GetGroundAnchorB() const */

undefined4 * b2PulleyJoint::GetGroundAnchorB(void)

{
  undefined4 *in_r0;
  int in_r1;
  undefined4 uVar1;
  
  uVar1 = *(undefined4 *)(in_r1 + 0x50);
  *in_r0 = *(undefined4 *)(in_r1 + 0x4c);
  in_r0[1] = uVar1;
  return in_r0;
}

// ---- b2PulleyJoint::GetLengthA  @ 0x6d3990
/* b2PulleyJoint::GetLengthA() const */

undefined4 __thiscall b2PulleyJoint::GetLengthA(b2PulleyJoint *this)

{
  undefined4 uVar1;
  b2Body abStack_20 [8];
  undefined4 local_18;
  undefined4 uStack_14;
  b2Vec2 abStack_10 [12];
  
  b2Body::GetWorldPoint(abStack_20,*(b2Vec2 **)(this + 0x30));
  local_18 = *(undefined4 *)(this + 0x44);
  uStack_14 = *(undefined4 *)(this + 0x48);
  ::operator-(abStack_10,(b2Vec2 *)abStack_20);
  uVar1 = b2Vec2::Length(abStack_10);
  return uVar1;
}

// ---- b2PulleyJoint::GetLengthB  @ 0x6d39dc
/* b2PulleyJoint::GetLengthB() const */

undefined4 __thiscall b2PulleyJoint::GetLengthB(b2PulleyJoint *this)

{
  undefined4 uVar1;
  b2Body abStack_20 [8];
  undefined4 local_18;
  undefined4 uStack_14;
  b2Vec2 abStack_10 [12];
  
  b2Body::GetWorldPoint(abStack_20,*(b2Vec2 **)(this + 0x34));
  local_18 = *(undefined4 *)(this + 0x4c);
  uStack_14 = *(undefined4 *)(this + 0x50);
  ::operator-(abStack_10,(b2Vec2 *)abStack_20);
  uVar1 = b2Vec2::Length(abStack_10);
  return uVar1;
}

// ---- b2PulleyJoint::GetRatio  @ 0x6d3a28
/* b2PulleyJoint::GetRatio() const */

undefined4 __thiscall b2PulleyJoint::GetRatio(b2PulleyJoint *this)

{
  return *(undefined4 *)(this + 0x70);
}

// ---- b2PulleyJoint::Dump  @ 0x6d3a38
/* b2PulleyJoint::Dump() */

void __thiscall b2PulleyJoint::Dump(b2PulleyJoint *this)

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
  b2Log("  b2PulleyJointDef jd;\n");
  b2Log("  jd.bodyA = bodies[%d];\n",uVar1);
  b2Log("  jd.bodyB = bodies[%d];\n",uVar2);
  b2Log("  jd.collideConnected = bool(%d);\n",(uint)(byte)this[0x3d]);
  b2Log("  jd.groundAnchorA.Set(%.15lef, %.15lef);\n",extraout_r1,
        SUB84((double)*(float *)(this + 0x44),0),
        (int)((ulonglong)(double)*(float *)(this + 0x44) >> 0x20),(double)*(float *)(this + 0x48));
  b2Log("  jd.groundAnchorB.Set(%.15lef, %.15lef);\n",extraout_r1_00,
        SUB84((double)*(float *)(this + 0x4c),0),
        (int)((ulonglong)(double)*(float *)(this + 0x4c) >> 0x20),(double)*(float *)(this + 0x50));
  b2Log("  jd.localAnchorA.Set(%.15lef, %.15lef);\n",extraout_r1_01,
        SUB84((double)*(float *)(this + 0x5c),0),
        (int)((ulonglong)(double)*(float *)(this + 0x5c) >> 0x20),(double)*(float *)(this + 0x60));
  b2Log("  jd.localAnchorB.Set(%.15lef, %.15lef);\n",extraout_r1_02,
        SUB84((double)*(float *)(this + 100),0),
        (int)((ulonglong)(double)*(float *)(this + 100) >> 0x20),(double)*(float *)(this + 0x68));
  b2Log("  jd.lengthA = %.15lef;\n",extraout_r1_03,SUB84((double)*(float *)(this + 0x54),0),
        (int)((ulonglong)(double)*(float *)(this + 0x54) >> 0x20));
  b2Log("  jd.lengthB = %.15lef;\n",extraout_r1_04,SUB84((double)*(float *)(this + 0x58),0),
        (int)((ulonglong)(double)*(float *)(this + 0x58) >> 0x20));
  b2Log("  jd.ratio = %.15lef;\n",extraout_r1_05,SUB84((double)*(float *)(this + 0x70),0),
        (int)((ulonglong)(double)*(float *)(this + 0x70) >> 0x20));
  b2Log("  joints[%d] = m_world->CreateJoint(&jd);\n",*(undefined4 *)(this + 0x38));
  return;
}

// ---- b2PulleyJoint::~b2PulleyJoint  @ 0x6d3ba8
/* WARNING: Removing unreachable block (ram,0x006d3bca) */
/* b2PulleyJoint::~b2PulleyJoint() */

b2PulleyJoint * __thiscall b2PulleyJoint::~b2PulleyJoint(b2PulleyJoint *this)

{
  *(undefined ***)this = &PTR_GetAnchorA_1_0093c040;
  b2Joint::~b2Joint((b2Joint *)this);
  return this;
}

// ---- b2PulleyJoint::~b2PulleyJoint  @ 0x6d3be4
/* b2PulleyJoint::~b2PulleyJoint() */

b2PulleyJoint * __thiscall b2PulleyJoint::~b2PulleyJoint(b2PulleyJoint *this)

{
  ~b2PulleyJoint(this);
  operator_delete(this);
  return this;
}
