// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 13 functions

// ---- b2RopeJoint::b2RopeJoint  @ 0x6d53a4
/* b2RopeJoint::b2RopeJoint(b2RopeJointDef const*) */

b2RopeJoint * __thiscall b2RopeJoint::b2RopeJoint(b2RopeJoint *this,b2RopeJointDef *param_1)

{
  undefined4 uVar1;
  
  b2Joint::b2Joint((b2Joint *)this,(b2JointDef *)param_1);
  *(undefined ***)this = &PTR_GetAnchorA_1_0093c0c0;
  b2Vec2::b2Vec2((b2Vec2 *)(this + 0x44));
  b2Vec2::b2Vec2((b2Vec2 *)(this + 0x4c));
  b2Vec2::b2Vec2((b2Vec2 *)(this + 0x68));
  b2Vec2::b2Vec2((b2Vec2 *)(this + 0x70));
  b2Vec2::b2Vec2((b2Vec2 *)(this + 0x78));
  b2Vec2::b2Vec2((b2Vec2 *)(this + 0x80));
  b2Vec2::b2Vec2((b2Vec2 *)(this + 0x88));
  uVar1 = *(undefined4 *)(param_1 + 0x18);
  *(undefined4 *)(this + 0x44) = *(undefined4 *)(param_1 + 0x14);
  *(undefined4 *)(this + 0x48) = uVar1;
  uVar1 = *(undefined4 *)(param_1 + 0x20);
  *(undefined4 *)(this + 0x4c) = *(undefined4 *)(param_1 + 0x1c);
  *(undefined4 *)(this + 0x50) = uVar1;
  *(undefined4 *)(this + 0x54) = *(undefined4 *)(param_1 + 0x24);
  *(undefined4 *)(this + 0xa0) = 0;
  *(undefined4 *)(this + 0x5c) = 0;
  *(undefined4 *)(this + 0xa4) = 0;
  *(undefined4 *)(this + 0x58) = 0;
  return this;
}

// ---- b2RopeJoint::InitVelocityConstraints  @ 0x6d5464
/* b2RopeJoint::InitVelocityConstraints(b2SolverData const&) */

void b2RopeJoint::InitVelocityConstraints(b2SolverData *param_1)

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
  undefined4 local_80;
  undefined4 uStack_7c;
  int local_78;
  b2SolverData *local_74;
  float local_70;
  float local_6c;
  undefined4 local_68;
  undefined4 local_64;
  float local_60;
  float local_5c;
  float local_58;
  float local_54;
  undefined4 local_50;
  undefined4 uStack_4c;
  undefined4 local_48;
  undefined4 uStack_44;
  undefined4 local_40;
  undefined4 uStack_3c;
  undefined4 local_38;
  undefined4 uStack_34;
  b2Rot abStack_30 [8];
  b2Rot abStack_28 [8];
  b2Vec2 abStack_20 [8];
  b2Vec2 abStack_18 [8];
  
  *(undefined4 *)(param_1 + 0x60) = *(undefined4 *)(*(int *)(param_1 + 0x30) + 8);
  *(undefined4 *)(param_1 + 100) = *(undefined4 *)(*(int *)(param_1 + 0x34) + 8);
  uVar2 = *(undefined4 *)(*(int *)(param_1 + 0x30) + 0x20);
  *(undefined4 *)(param_1 + 0x80) = *(undefined4 *)(*(int *)(param_1 + 0x30) + 0x1c);
  *(undefined4 *)(param_1 + 0x84) = uVar2;
  uVar2 = *(undefined4 *)(*(int *)(param_1 + 0x34) + 0x20);
  *(undefined4 *)(param_1 + 0x88) = *(undefined4 *)(*(int *)(param_1 + 0x34) + 0x1c);
  *(undefined4 *)(param_1 + 0x8c) = uVar2;
  *(undefined4 *)(param_1 + 0x90) = *(undefined4 *)(*(int *)(param_1 + 0x30) + 0x78);
  *(undefined4 *)(param_1 + 0x94) = *(undefined4 *)(*(int *)(param_1 + 0x34) + 0x78);
  *(undefined4 *)(param_1 + 0x98) = *(undefined4 *)(*(int *)(param_1 + 0x30) + 0x80);
  *(undefined4 *)(param_1 + 0x9c) = *(undefined4 *)(*(int *)(param_1 + 0x34) + 0x80);
  puVar3 = (undefined4 *)(*(int *)(in_r1 + 0x18) + *(int *)(param_1 + 0x60) * 0xc);
  local_50 = *puVar3;
  uStack_4c = puVar3[1];
  local_68 = *(undefined4 *)(*(int *)(param_1 + 0x60) * 0xc + *(int *)(in_r1 + 0x18) + 8);
  puVar3 = (undefined4 *)(*(int *)(in_r1 + 0x1c) + *(int *)(param_1 + 0x60) * 0xc);
  local_48 = *puVar3;
  uStack_44 = puVar3[1];
  local_70 = *(float *)(*(int *)(param_1 + 0x60) * 0xc + *(int *)(in_r1 + 0x1c) + 8);
  puVar3 = (undefined4 *)(*(int *)(in_r1 + 0x18) + *(int *)(param_1 + 100) * 0xc);
  local_40 = *puVar3;
  uStack_3c = puVar3[1];
  local_64 = *(undefined4 *)(*(int *)(param_1 + 100) * 0xc + *(int *)(in_r1 + 0x18) + 8);
  puVar3 = (undefined4 *)(*(int *)(in_r1 + 0x1c) + *(int *)(param_1 + 100) * 0xc);
  local_38 = *puVar3;
  uStack_34 = puVar3[1];
  local_6c = *(float *)(*(int *)(param_1 + 100) * 0xc + *(int *)(in_r1 + 0x1c) + 8);
  local_78 = in_r1;
  local_74 = param_1;
  fVar4 = (float)b2Rot::b2Rot(abStack_30,in_s0);
  b2Rot::b2Rot(abStack_28,fVar4);
  ::operator-(abStack_18,(b2Vec2 *)(local_74 + 0x44));
  pbVar1 = local_74;
  b2Mul((b2Rot *)&local_80,(b2Vec2 *)abStack_30);
  *(undefined4 *)(pbVar1 + 0x70) = local_80;
  *(undefined4 *)(pbVar1 + 0x74) = uStack_7c;
  ::operator-(abStack_18,(b2Vec2 *)(local_74 + 0x4c));
  pbVar1 = local_74;
  b2Mul((b2Rot *)&local_80,(b2Vec2 *)abStack_28);
  *(undefined4 *)(pbVar1 + 0x78) = local_80;
  *(undefined4 *)(pbVar1 + 0x7c) = uStack_7c;
  ::operator+(abStack_20,(b2Vec2 *)&local_40);
  ::operator-(abStack_18,abStack_20);
  pbVar1 = local_74;
  ::operator-((b2Vec2 *)&local_80,abStack_18);
  *(undefined4 *)(pbVar1 + 0x68) = local_80;
  *(undefined4 *)(pbVar1 + 0x6c) = uStack_7c;
  uVar2 = b2Vec2::Length((b2Vec2 *)(local_74 + 0x68));
  *(undefined4 *)(local_74 + 0x58) = uVar2;
  local_60 = *(float *)(local_74 + 0x58) - *(float *)(local_74 + 0x54);
  if (local_60 <= 0.0) {
    *(undefined4 *)(local_74 + 0xa4) = 0;
  }
  else {
    *(undefined4 *)(local_74 + 0xa4) = 2;
  }
  if (*(float *)(local_74 + 0x58) <= 0.005) {
    b2Vec2::SetZero((b2Vec2 *)(local_74 + 0x68));
    *(undefined4 *)(local_74 + 0xa0) = 0;
    *(undefined4 *)(local_74 + 0x5c) = 0;
  }
  else {
    b2Vec2::operator*=((b2Vec2 *)(local_74 + 0x68),extraout_s0);
    local_5c = (float)b2Cross((b2Vec2 *)(local_74 + 0x70),(b2Vec2 *)(local_74 + 0x68));
    local_58 = (float)b2Cross((b2Vec2 *)(local_74 + 0x78),(b2Vec2 *)(local_74 + 0x68));
    local_54 = *(float *)(local_74 + 0x90) + *(float *)(local_74 + 0x98) * local_5c * local_5c +
               *(float *)(local_74 + 0x94) + *(float *)(local_74 + 0x9c) * local_58 * local_58;
    if (local_54 == 0.0) {
      fVar4 = 0.0;
    }
    else {
      fVar4 = 1.0 / local_54;
    }
    *(float *)(local_74 + 0xa0) = fVar4;
    if (*(char *)(local_78 + 0x14) == '\0') {
      *(undefined4 *)(local_74 + 0x5c) = 0;
    }
    else {
      *(float *)(local_74 + 0x5c) = *(float *)(local_74 + 0x5c) * *(float *)(local_78 + 8);
      fVar4 = (float)::operator*(extraout_s0_00,abStack_20);
      ::operator*(fVar4,abStack_18);
      b2Vec2::operator-=((b2Vec2 *)&local_48,abStack_18);
      fVar5 = *(float *)(local_74 + 0x98);
      fVar4 = (float)b2Cross((b2Vec2 *)(local_74 + 0x70),abStack_20);
      local_70 = local_70 - fVar5 * fVar4;
      ::operator*(extraout_s0_01,abStack_18);
      b2Vec2::operator+=((b2Vec2 *)&local_38,abStack_18);
      fVar5 = *(float *)(local_74 + 0x9c);
      fVar4 = (float)b2Cross((b2Vec2 *)(local_74 + 0x78),abStack_20);
      local_6c = local_6c + fVar5 * fVar4;
    }
    puVar3 = (undefined4 *)(*(int *)(local_74 + 0x60) * 0xc + *(int *)(local_78 + 0x1c));
    *puVar3 = local_48;
    puVar3[1] = uStack_44;
    *(float *)(*(int *)(local_74 + 0x60) * 0xc + *(int *)(local_78 + 0x1c) + 8) = local_70;
    puVar3 = (undefined4 *)(*(int *)(local_74 + 100) * 0xc + *(int *)(local_78 + 0x1c));
    *puVar3 = local_38;
    puVar3[1] = uStack_34;
    *(float *)(*(int *)(local_74 + 100) * 0xc + *(int *)(local_78 + 0x1c) + 8) = local_6c;
  }
  return;
}

// ---- b2RopeJoint::SolveVelocityConstraints  @ 0x6d58f4
/* b2RopeJoint::SolveVelocityConstraints(b2SolverData const&) */

void b2RopeJoint::SolveVelocityConstraints(b2SolverData *param_1)

{
  undefined4 extraout_r0;
  float fVar1;
  int in_r1;
  undefined4 *puVar2;
  float fVar3;
  float fVar4;
  float in_s0;
  float fVar5;
  float extraout_s0;
  undefined8 uVar6;
  float fVar7;
  float fVar8;
  undefined4 local_40;
  undefined4 uStack_3c;
  undefined4 local_38;
  undefined4 uStack_34;
  b2Vec2 abStack_30 [8];
  b2Vec2 abStack_28 [8];
  b2Vec2 abStack_20 [8];
  b2Vec2 abStack_18 [8];
  
  puVar2 = (undefined4 *)(*(int *)(in_r1 + 0x1c) + *(int *)(param_1 + 0x60) * 0xc);
  local_40 = *puVar2;
  uStack_3c = puVar2[1];
  fVar3 = *(float *)(*(int *)(param_1 + 0x60) * 0xc + *(int *)(in_r1 + 0x1c) + 8);
  puVar2 = (undefined4 *)(*(int *)(in_r1 + 0x1c) + *(int *)(param_1 + 100) * 0xc);
  local_38 = *puVar2;
  uStack_34 = puVar2[1];
  fVar4 = *(float *)(*(int *)(param_1 + 100) * 0xc + *(int *)(in_r1 + 0x1c) + 8);
  b2Cross(in_s0,abStack_18);
  fVar5 = (float)::operator+(abStack_30,(b2Vec2 *)&local_40);
  b2Cross(fVar5,abStack_18);
  ::operator+(abStack_28,(b2Vec2 *)&local_38);
  ::operator-(abStack_18,abStack_28);
  uVar6 = b2Dot((b2Vec2 *)(param_1 + 0x68),abStack_18);
  fVar5 = b2Min<float>((float)uVar6,(float)((ulonglong)uVar6 >> 0x20));
  *(undefined4 *)(param_1 + 0x5c) = extraout_r0;
  fVar5 = (float)::operator*(fVar5,abStack_20);
  ::operator*(fVar5,abStack_18);
  b2Vec2::operator-=((b2Vec2 *)&local_40,abStack_18);
  fVar7 = *(float *)(param_1 + 0x98);
  fVar5 = (float)b2Cross((b2Vec2 *)(param_1 + 0x70),abStack_20);
  ::operator*(extraout_s0,abStack_18);
  b2Vec2::operator+=((b2Vec2 *)&local_38,abStack_18);
  fVar8 = *(float *)(param_1 + 0x9c);
  fVar1 = (float)b2Cross((b2Vec2 *)(param_1 + 0x78),abStack_20);
  puVar2 = (undefined4 *)(*(int *)(param_1 + 0x60) * 0xc + *(int *)(in_r1 + 0x1c));
  *puVar2 = local_40;
  puVar2[1] = uStack_3c;
  *(float *)(*(int *)(param_1 + 0x60) * 0xc + *(int *)(in_r1 + 0x1c) + 8) = fVar3 - fVar7 * fVar5;
  puVar2 = (undefined4 *)(*(int *)(param_1 + 100) * 0xc + *(int *)(in_r1 + 0x1c));
  *puVar2 = local_38;
  puVar2[1] = uStack_34;
  *(float *)(*(int *)(param_1 + 100) * 0xc + *(int *)(in_r1 + 0x1c) + 8) = fVar4 + fVar8 * fVar1;
  return;
}

// ---- b2RopeJoint::SolvePositionConstraints  @ 0x6d5b74
/* b2RopeJoint::SolvePositionConstraints(b2SolverData const&) */

undefined1 b2RopeJoint::SolvePositionConstraints(b2SolverData *param_1)

{
  int iVar1;
  float fVar2;
  int in_r1;
  undefined4 *puVar3;
  undefined1 uVar4;
  float fVar5;
  float fVar6;
  float in_s0;
  float fVar7;
  float extraout_s0;
  float fVar8;
  float extraout_s0_00;
  float extraout_s1;
  float extraout_s2;
  float fVar9;
  float fVar10;
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
  b2Vec2 abStack_18 [12];
  
  puVar3 = (undefined4 *)(*(int *)(in_r1 + 0x18) + *(int *)(param_1 + 0x60) * 0xc);
  local_58 = *puVar3;
  uStack_54 = puVar3[1];
  fVar5 = *(float *)(*(int *)(param_1 + 0x60) * 0xc + *(int *)(in_r1 + 0x18) + 8);
  puVar3 = (undefined4 *)(*(int *)(in_r1 + 0x18) + *(int *)(param_1 + 100) * 0xc);
  local_50 = *puVar3;
  uStack_4c = puVar3[1];
  fVar6 = *(float *)(*(int *)(param_1 + 100) * 0xc + *(int *)(in_r1 + 0x18) + 8);
  fVar7 = (float)b2Rot::b2Rot(abStack_48,in_s0);
  b2Rot::b2Rot(abStack_40,fVar7);
  ::operator-(abStack_18,(b2Vec2 *)(param_1 + 0x44));
  b2Mul(abStack_38,(b2Vec2 *)abStack_48);
  ::operator-(abStack_18,(b2Vec2 *)(param_1 + 0x4c));
  b2Mul(abStack_30,(b2Vec2 *)abStack_40);
  ::operator+(abStack_20,(b2Vec2 *)&local_50);
  ::operator-(abStack_18,abStack_20);
  ::operator-(abStack_28,abStack_18);
  fVar7 = (float)b2Vec2::Normalize(abStack_28);
  fVar8 = b2Clamp<float>(extraout_s0,extraout_s1,extraout_s2);
  fVar8 = (float)::operator*(fVar8,abStack_20);
  ::operator*(fVar8,abStack_18);
  b2Vec2::operator-=((b2Vec2 *)&local_58,abStack_18);
  fVar9 = *(float *)(param_1 + 0x98);
  fVar8 = (float)b2Cross((b2Vec2 *)abStack_38,abStack_20);
  ::operator*(extraout_s0_00,abStack_18);
  b2Vec2::operator+=((b2Vec2 *)&local_50,abStack_18);
  fVar10 = *(float *)(param_1 + 0x9c);
  fVar2 = (float)b2Cross((b2Vec2 *)abStack_30,abStack_20);
  puVar3 = (undefined4 *)(*(int *)(param_1 + 0x60) * 0xc + *(int *)(in_r1 + 0x18));
  *puVar3 = local_58;
  puVar3[1] = uStack_54;
  *(float *)(*(int *)(param_1 + 0x60) * 0xc + *(int *)(in_r1 + 0x18) + 8) = fVar5 - fVar9 * fVar8;
  puVar3 = (undefined4 *)(*(int *)(param_1 + 100) * 0xc + *(int *)(in_r1 + 0x18));
  *puVar3 = local_50;
  puVar3[1] = uStack_4c;
  *(float *)(*(int *)(param_1 + 100) * 0xc + *(int *)(in_r1 + 0x18) + 8) = fVar6 + fVar10 * fVar2;
  iVar1 = (uint)(fVar7 - *(float *)(param_1 + 0x54) < 0.005) << 0x1f;
  if (-1 < iVar1) {
    param_1 = (b2SolverData *)0x0;
  }
  uVar4 = SUB41(param_1,0);
  if (iVar1 < 0) {
    uVar4 = 1;
  }
  return uVar4;
}

// ---- b2RopeJoint::GetAnchorA  @ 0x6d5e00
/* b2RopeJoint::GetAnchorA() const */

b2Body * b2RopeJoint::GetAnchorA(void)

{
  b2Body *in_r0;
  int in_r1;
  
  b2Body::GetWorldPoint(in_r0,*(b2Vec2 **)(in_r1 + 0x30));
  return in_r0;
}

// ---- b2RopeJoint::GetAnchorB  @ 0x6d5e24
/* b2RopeJoint::GetAnchorB() const */

b2Body * b2RopeJoint::GetAnchorB(void)

{
  b2Body *in_r0;
  int in_r1;
  
  b2Body::GetWorldPoint(in_r0,*(b2Vec2 **)(in_r1 + 0x34));
  return in_r0;
}

// ---- b2RopeJoint::GetReactionForce  @ 0x6d5e48
/* b2RopeJoint::GetReactionForce(float) const */

b2RopeJoint * __thiscall b2RopeJoint::GetReactionForce(b2RopeJoint *this,float param_1)

{
  ::operator*(param_1,(b2Vec2 *)this);
  return this;
}

// ---- b2RopeJoint::GetReactionTorque  @ 0x6d5e7c
/* b2RopeJoint::GetReactionTorque(float) const */

undefined4 b2RopeJoint::GetReactionTorque(float param_1)

{
  return 0;
}

// ---- b2RopeJoint::GetMaxLength  @ 0x6d5e8c
/* b2RopeJoint::GetMaxLength() const */

undefined4 __thiscall b2RopeJoint::GetMaxLength(b2RopeJoint *this)

{
  return *(undefined4 *)(this + 0x54);
}

// ---- b2RopeJoint::GetLimitState  @ 0x6d5e9c
/* b2RopeJoint::GetLimitState() const */

undefined4 __thiscall b2RopeJoint::GetLimitState(b2RopeJoint *this)

{
  return *(undefined4 *)(this + 0xa4);
}

// ---- b2RopeJoint::Dump  @ 0x6d5eac
/* b2RopeJoint::Dump() */

void __thiscall b2RopeJoint::Dump(b2RopeJoint *this)

{
  undefined4 extraout_r1;
  undefined4 extraout_r1_00;
  undefined4 extraout_r1_01;
  undefined4 uVar1;
  undefined4 uVar2;
  
  uVar1 = *(undefined4 *)(*(int *)(this + 0x30) + 8);
  uVar2 = *(undefined4 *)(*(int *)(this + 0x34) + 8);
  b2Log("  b2RopeJointDef jd;\n");
  b2Log("  jd.bodyA = bodies[%d];\n",uVar1);
  b2Log("  jd.bodyB = bodies[%d];\n",uVar2);
  b2Log("  jd.collideConnected = bool(%d);\n",(uint)(byte)this[0x3d]);
  b2Log("  jd.localAnchorA.Set(%.15lef, %.15lef);\n",extraout_r1,
        SUB84((double)*(float *)(this + 0x44),0),
        (int)((ulonglong)(double)*(float *)(this + 0x44) >> 0x20),(double)*(float *)(this + 0x48));
  b2Log("  jd.localAnchorB.Set(%.15lef, %.15lef);\n",extraout_r1_00,
        SUB84((double)*(float *)(this + 0x4c),0),
        (int)((ulonglong)(double)*(float *)(this + 0x4c) >> 0x20),(double)*(float *)(this + 0x50));
  b2Log("  jd.maxLength = %.15lef;\n",extraout_r1_01,SUB84((double)*(float *)(this + 0x54),0),
        (int)((ulonglong)(double)*(float *)(this + 0x54) >> 0x20));
  b2Log("  joints[%d] = m_world->CreateJoint(&jd);\n",*(undefined4 *)(this + 0x38));
  return;
}

// ---- b2RopeJoint::~b2RopeJoint  @ 0x6d5f90
/* WARNING: Removing unreachable block (ram,0x006d5fb2) */
/* b2RopeJoint::~b2RopeJoint() */

b2RopeJoint * __thiscall b2RopeJoint::~b2RopeJoint(b2RopeJoint *this)

{
  *(undefined ***)this = &PTR_GetAnchorA_1_0093c0c0;
  b2Joint::~b2Joint((b2Joint *)this);
  return this;
}

// ---- b2RopeJoint::~b2RopeJoint  @ 0x6d5fcc
/* b2RopeJoint::~b2RopeJoint() */

b2RopeJoint * __thiscall b2RopeJoint::~b2RopeJoint(b2RopeJoint *this)

{
  ~b2RopeJoint(this);
  operator_delete(this);
  return this;
}
