// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 11 functions

// ---- b2DistanceJoint::b2DistanceJoint  @ 0x6ccbe8
/* b2DistanceJoint::b2DistanceJoint(b2DistanceJointDef const*) */

b2DistanceJoint * __thiscall
b2DistanceJoint::b2DistanceJoint(b2DistanceJoint *this,b2DistanceJointDef *param_1)

{
  undefined4 uVar1;
  
  b2Joint::b2Joint((b2Joint *)this,(b2JointDef *)param_1);
  *(undefined ***)this = &PTR_GetAnchorA_1_0093bec8;
  b2Vec2::b2Vec2((b2Vec2 *)(this + 0x50));
  b2Vec2::b2Vec2((b2Vec2 *)(this + 0x58));
  b2Vec2::b2Vec2((b2Vec2 *)(this + 0x74));
  b2Vec2::b2Vec2((b2Vec2 *)(this + 0x7c));
  b2Vec2::b2Vec2((b2Vec2 *)(this + 0x84));
  b2Vec2::b2Vec2((b2Vec2 *)(this + 0x8c));
  b2Vec2::b2Vec2((b2Vec2 *)(this + 0x94));
  uVar1 = *(undefined4 *)(param_1 + 0x18);
  *(undefined4 *)(this + 0x50) = *(undefined4 *)(param_1 + 0x14);
  *(undefined4 *)(this + 0x54) = uVar1;
  uVar1 = *(undefined4 *)(param_1 + 0x20);
  *(undefined4 *)(this + 0x58) = *(undefined4 *)(param_1 + 0x1c);
  *(undefined4 *)(this + 0x5c) = uVar1;
  *(undefined4 *)(this + 0x68) = *(undefined4 *)(param_1 + 0x24);
  *(undefined4 *)(this + 0x44) = *(undefined4 *)(param_1 + 0x28);
  *(undefined4 *)(this + 0x48) = *(undefined4 *)(param_1 + 0x2c);
  *(undefined4 *)(this + 100) = 0;
  *(undefined4 *)(this + 0x60) = 0;
  *(undefined4 *)(this + 0x4c) = 0;
  return this;
}

// ---- b2DistanceJoint::InitVelocityConstraints  @ 0x6cccb0
/* b2DistanceJoint::InitVelocityConstraints(b2SolverData const&) */

void b2DistanceJoint::InitVelocityConstraints(b2SolverData *param_1)

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
  float extraout_s1;
  float fVar5;
  undefined4 local_98;
  undefined4 uStack_94;
  float *local_90;
  b2SolverData *local_8c;
  float local_84;
  float local_80;
  undefined4 local_7c;
  undefined4 local_78;
  float local_74;
  float local_70;
  float local_6c;
  float local_68;
  float local_64;
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
  
  *(undefined4 *)(param_1 + 0x6c) = *(undefined4 *)(*(int *)(param_1 + 0x30) + 8);
  *(undefined4 *)(param_1 + 0x70) = *(undefined4 *)(*(int *)(param_1 + 0x34) + 8);
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
  puVar3 = (undefined4 *)((int)in_r1[6] + *(int *)(param_1 + 0x6c) * 0xc);
  local_50 = *puVar3;
  uStack_4c = puVar3[1];
  local_7c = *(undefined4 *)(*(int *)(param_1 + 0x6c) * 0xc + (int)in_r1[6] + 8);
  puVar3 = (undefined4 *)((int)in_r1[7] + *(int *)(param_1 + 0x6c) * 0xc);
  local_48 = *puVar3;
  uStack_44 = puVar3[1];
  local_84 = *(float *)(*(int *)(param_1 + 0x6c) * 0xc + (int)in_r1[7] + 8);
  puVar3 = (undefined4 *)((int)in_r1[6] + *(int *)(param_1 + 0x70) * 0xc);
  local_40 = *puVar3;
  uStack_3c = puVar3[1];
  local_78 = *(undefined4 *)(*(int *)(param_1 + 0x70) * 0xc + (int)in_r1[6] + 8);
  puVar3 = (undefined4 *)((int)in_r1[7] + *(int *)(param_1 + 0x70) * 0xc);
  local_38 = *puVar3;
  uStack_34 = puVar3[1];
  local_80 = *(float *)(*(int *)(param_1 + 0x70) * 0xc + (int)in_r1[7] + 8);
  local_90 = in_r1;
  local_8c = param_1;
  fVar4 = (float)b2Rot::b2Rot(abStack_30,in_s0);
  b2Rot::b2Rot(abStack_28,fVar4);
  ::operator-(abStack_18,(b2Vec2 *)(local_8c + 0x50));
  pbVar1 = local_8c;
  b2Mul((b2Rot *)&local_98,(b2Vec2 *)abStack_30);
  *(undefined4 *)(pbVar1 + 0x7c) = local_98;
  *(undefined4 *)(pbVar1 + 0x80) = uStack_94;
  ::operator-(abStack_18,(b2Vec2 *)(local_8c + 0x58));
  pbVar1 = local_8c;
  b2Mul((b2Rot *)&local_98,(b2Vec2 *)abStack_28);
  *(undefined4 *)(pbVar1 + 0x84) = local_98;
  *(undefined4 *)(pbVar1 + 0x88) = uStack_94;
  ::operator+(abStack_20,(b2Vec2 *)&local_40);
  ::operator-(abStack_18,abStack_20);
  pbVar1 = local_8c;
  ::operator-((b2Vec2 *)&local_98,abStack_18);
  *(undefined4 *)(pbVar1 + 0x74) = local_98;
  *(undefined4 *)(pbVar1 + 0x78) = uStack_94;
  local_74 = (float)b2Vec2::Length((b2Vec2 *)(local_8c + 0x74));
  if (local_74 <= 0.005) {
    b2Vec2::Set((b2Vec2 *)(local_8c + 0x74),extraout_s0,extraout_s1);
  }
  else {
    b2Vec2::operator*=((b2Vec2 *)(local_8c + 0x74),extraout_s0);
  }
  local_70 = (float)b2Cross((b2Vec2 *)(local_8c + 0x7c),(b2Vec2 *)(local_8c + 0x74));
  local_6c = (float)b2Cross((b2Vec2 *)(local_8c + 0x84),(b2Vec2 *)(local_8c + 0x74));
  local_68 = *(float *)(local_8c + 0x9c) + *(float *)(local_8c + 0xa4) * local_70 * local_70 +
             *(float *)(local_8c + 0xa0) + *(float *)(local_8c + 0xa8) * local_6c * local_6c;
  if (local_68 == 0.0) {
    fVar4 = 0.0;
  }
  else {
    fVar4 = 1.0 / local_68;
  }
  *(float *)(local_8c + 0xac) = fVar4;
  if (*(float *)(local_8c + 0x44) <= 0.0) {
    *(undefined4 *)(local_8c + 0x60) = 0;
    *(undefined4 *)(local_8c + 0x4c) = 0;
  }
  else {
    local_64 = local_74 - *(float *)(local_8c + 0x68);
    local_60 = *(float *)(local_8c + 0x44) * 6.2831855;
    local_5c = (*(float *)(local_8c + 0xac) + *(float *)(local_8c + 0xac)) *
               *(float *)(local_8c + 0x48) * local_60;
    local_58 = *(float *)(local_8c + 0xac) * local_60 * local_60;
    local_54 = *local_90;
    *(float *)(local_8c + 0x60) = (local_54 * local_58 + local_5c) * local_54;
    if (*(float *)(local_8c + 0x60) == 0.0) {
      fVar4 = 0.0;
    }
    else {
      fVar4 = 1.0 / *(float *)(local_8c + 0x60);
    }
    *(float *)(local_8c + 0x60) = fVar4;
    *(float *)(local_8c + 0x4c) = local_64 * local_54 * local_58 * *(float *)(local_8c + 0x60);
    local_68 = local_68 + *(float *)(local_8c + 0x60);
    if (local_68 == 0.0) {
      fVar4 = 0.0;
    }
    else {
      fVar4 = 1.0 / local_68;
    }
    *(float *)(local_8c + 0xac) = fVar4;
  }
  if (*(char *)(local_90 + 5) == '\0') {
    *(undefined4 *)(local_8c + 100) = 0;
  }
  else {
    *(float *)(local_8c + 100) = *(float *)(local_8c + 100) * local_90[2];
    fVar4 = (float)::operator*(extraout_s0_00,abStack_20);
    ::operator*(fVar4,abStack_18);
    b2Vec2::operator-=((b2Vec2 *)&local_48,abStack_18);
    fVar5 = *(float *)(local_8c + 0xa4);
    fVar4 = (float)b2Cross((b2Vec2 *)(local_8c + 0x7c),abStack_20);
    local_84 = local_84 - fVar5 * fVar4;
    ::operator*(extraout_s0_01,abStack_18);
    b2Vec2::operator+=((b2Vec2 *)&local_38,abStack_18);
    fVar5 = *(float *)(local_8c + 0xa8);
    fVar4 = (float)b2Cross((b2Vec2 *)(local_8c + 0x84),abStack_20);
    local_80 = local_80 + fVar5 * fVar4;
  }
  puVar3 = (undefined4 *)(*(int *)(local_8c + 0x6c) * 0xc + (int)local_90[7]);
  *puVar3 = local_48;
  puVar3[1] = uStack_44;
  *(float *)(*(int *)(local_8c + 0x6c) * 0xc + (int)local_90[7] + 8) = local_84;
  puVar3 = (undefined4 *)(*(int *)(local_8c + 0x70) * 0xc + (int)local_90[7]);
  *puVar3 = local_38;
  puVar3[1] = uStack_34;
  *(float *)(*(int *)(local_8c + 0x70) * 0xc + (int)local_90[7] + 8) = local_80;
  return;
}

// ---- b2DistanceJoint::SolveVelocityConstraints  @ 0x6cd22c
/* b2DistanceJoint::SolveVelocityConstraints(b2SolverData const&) */

void b2DistanceJoint::SolveVelocityConstraints(b2SolverData *param_1)

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
  undefined4 local_40;
  undefined4 uStack_3c;
  undefined4 local_38;
  undefined4 uStack_34;
  b2Vec2 abStack_30 [8];
  b2Vec2 abStack_28 [8];
  b2Vec2 abStack_20 [8];
  b2Vec2 abStack_18 [8];
  
  puVar2 = (undefined4 *)(*(int *)(in_r1 + 0x1c) + *(int *)(param_1 + 0x6c) * 0xc);
  local_40 = *puVar2;
  uStack_3c = puVar2[1];
  fVar3 = *(float *)(*(int *)(param_1 + 0x6c) * 0xc + *(int *)(in_r1 + 0x1c) + 8);
  puVar2 = (undefined4 *)(*(int *)(in_r1 + 0x1c) + *(int *)(param_1 + 0x70) * 0xc);
  local_38 = *puVar2;
  uStack_34 = puVar2[1];
  fVar4 = *(float *)(*(int *)(param_1 + 0x70) * 0xc + *(int *)(in_r1 + 0x1c) + 8);
  b2Cross(in_s0,abStack_18);
  fVar5 = (float)::operator+(abStack_30,(b2Vec2 *)&local_40);
  b2Cross(fVar5,abStack_18);
  ::operator+(abStack_28,(b2Vec2 *)&local_38);
  ::operator-(abStack_18,abStack_28);
  fVar5 = (float)b2Dot((b2Vec2 *)(param_1 + 0x74),abStack_18);
  *(float *)(param_1 + 100) =
       *(float *)(param_1 + 100) +
       -*(float *)(param_1 + 0xac) *
       (*(float *)(param_1 + 0x4c) + fVar5 + *(float *)(param_1 + 0x60) * *(float *)(param_1 + 100))
  ;
  fVar5 = (float)::operator*(extraout_s0,abStack_20);
  ::operator*(fVar5,abStack_18);
  b2Vec2::operator-=((b2Vec2 *)&local_40,abStack_18);
  fVar6 = *(float *)(param_1 + 0xa4);
  fVar5 = (float)b2Cross((b2Vec2 *)(param_1 + 0x7c),abStack_20);
  ::operator*(extraout_s0_00,abStack_18);
  b2Vec2::operator+=((b2Vec2 *)&local_38,abStack_18);
  fVar7 = *(float *)(param_1 + 0xa8);
  fVar1 = (float)b2Cross((b2Vec2 *)(param_1 + 0x84),abStack_20);
  puVar2 = (undefined4 *)(*(int *)(param_1 + 0x6c) * 0xc + *(int *)(in_r1 + 0x1c));
  *puVar2 = local_40;
  puVar2[1] = uStack_3c;
  *(float *)(*(int *)(param_1 + 0x6c) * 0xc + *(int *)(in_r1 + 0x1c) + 8) = fVar3 - fVar6 * fVar5;
  puVar2 = (undefined4 *)(*(int *)(param_1 + 0x70) * 0xc + *(int *)(in_r1 + 0x1c));
  *puVar2 = local_38;
  puVar2[1] = uStack_34;
  *(float *)(*(int *)(param_1 + 0x70) * 0xc + *(int *)(in_r1 + 0x1c) + 8) = fVar4 + fVar7 * fVar1;
  return;
}

// ---- b2DistanceJoint::SolvePositionConstraints  @ 0x6cd468
/* b2DistanceJoint::SolvePositionConstraints(b2SolverData const&) */

undefined1 b2DistanceJoint::SolvePositionConstraints(b2SolverData *param_1)

{
  int iVar1;
  float fVar2;
  float extraout_r0;
  int in_r1;
  undefined4 *puVar3;
  undefined1 extraout_r3;
  undefined1 uVar4;
  float fVar5;
  float fVar6;
  float in_s0;
  float fVar7;
  float extraout_s0;
  float extraout_s0_00;
  float extraout_s0_01;
  float extraout_s1;
  float extraout_s2;
  float fVar8;
  float fVar9;
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
  
  if (*(float *)(param_1 + 0x44) <= 0.0) {
    puVar3 = (undefined4 *)(*(int *)(in_r1 + 0x18) + *(int *)(param_1 + 0x6c) * 0xc);
    local_58 = *puVar3;
    uStack_54 = puVar3[1];
    fVar5 = *(float *)(*(int *)(param_1 + 0x6c) * 0xc + *(int *)(in_r1 + 0x18) + 8);
    puVar3 = (undefined4 *)(*(int *)(in_r1 + 0x18) + *(int *)(param_1 + 0x70) * 0xc);
    local_50 = *puVar3;
    uStack_4c = puVar3[1];
    fVar6 = *(float *)(*(int *)(param_1 + 0x70) * 0xc + *(int *)(in_r1 + 0x18) + 8);
    fVar7 = (float)b2Rot::b2Rot(abStack_48,in_s0);
    b2Rot::b2Rot(abStack_40,fVar7);
    ::operator-(abStack_18,(b2Vec2 *)(param_1 + 0x50));
    b2Mul(abStack_38,(b2Vec2 *)abStack_48);
    ::operator-(abStack_18,(b2Vec2 *)(param_1 + 0x58));
    b2Mul(abStack_30,(b2Vec2 *)abStack_40);
    ::operator+(abStack_20,(b2Vec2 *)&local_50);
    ::operator-(abStack_18,abStack_20);
    ::operator-(abStack_28,abStack_18);
    b2Vec2::Normalize(abStack_28);
    fVar7 = b2Clamp<float>(extraout_s0,extraout_s1,extraout_s2);
    fVar7 = (float)::operator*(fVar7,abStack_20);
    ::operator*(fVar7,abStack_18);
    b2Vec2::operator-=((b2Vec2 *)&local_58,abStack_18);
    fVar8 = *(float *)(param_1 + 0xa4);
    fVar7 = (float)b2Cross((b2Vec2 *)abStack_38,abStack_20);
    ::operator*(extraout_s0_00,abStack_18);
    b2Vec2::operator+=((b2Vec2 *)&local_50,abStack_18);
    fVar9 = *(float *)(param_1 + 0xa8);
    fVar2 = (float)b2Cross((b2Vec2 *)abStack_30,abStack_20);
    puVar3 = (undefined4 *)(*(int *)(param_1 + 0x6c) * 0xc + *(int *)(in_r1 + 0x18));
    *puVar3 = local_58;
    puVar3[1] = uStack_54;
    *(float *)(*(int *)(param_1 + 0x6c) * 0xc + *(int *)(in_r1 + 0x18) + 8) = fVar5 - fVar8 * fVar7;
    puVar3 = (undefined4 *)(*(int *)(param_1 + 0x70) * 0xc + *(int *)(in_r1 + 0x18));
    *puVar3 = local_50;
    puVar3[1] = uStack_4c;
    *(float *)(*(int *)(param_1 + 0x70) * 0xc + *(int *)(in_r1 + 0x18) + 8) = fVar6 + fVar9 * fVar2;
    b2Abs<float>(extraout_s0_01);
    iVar1 = (uint)(extraout_r0 < 0.005) << 0x1f;
    uVar4 = extraout_r3;
    if (-1 < iVar1) {
      uVar4 = 0;
    }
    if (iVar1 < 0) {
      uVar4 = 1;
    }
  }
  else {
    uVar4 = 1;
  }
  return uVar4;
}

// ---- b2DistanceJoint::GetAnchorA  @ 0x6cd708
/* b2DistanceJoint::GetAnchorA() const */

b2Body * b2DistanceJoint::GetAnchorA(void)

{
  b2Body *in_r0;
  int in_r1;
  
  b2Body::GetWorldPoint(in_r0,*(b2Vec2 **)(in_r1 + 0x30));
  return in_r0;
}

// ---- b2DistanceJoint::GetAnchorB  @ 0x6cd72c
/* b2DistanceJoint::GetAnchorB() const */

b2Body * b2DistanceJoint::GetAnchorB(void)

{
  b2Body *in_r0;
  int in_r1;
  
  b2Body::GetWorldPoint(in_r0,*(b2Vec2 **)(in_r1 + 0x34));
  return in_r0;
}

// ---- b2DistanceJoint::GetReactionForce  @ 0x6cd750
/* b2DistanceJoint::GetReactionForce(float) const */

b2DistanceJoint * __thiscall b2DistanceJoint::GetReactionForce(b2DistanceJoint *this,float param_1)

{
  ::operator*(param_1,(b2Vec2 *)this);
  return this;
}

// ---- b2DistanceJoint::GetReactionTorque  @ 0x6cd784
/* b2DistanceJoint::GetReactionTorque(float) const */

undefined4 b2DistanceJoint::GetReactionTorque(float param_1)

{
  return 0;
}

// ---- b2DistanceJoint::Dump  @ 0x6cd794
/* b2DistanceJoint::Dump() */

void __thiscall b2DistanceJoint::Dump(b2DistanceJoint *this)

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
  b2Log("  b2DistanceJointDef jd;\n");
  b2Log("  jd.bodyA = bodies[%d];\n",uVar1);
  b2Log("  jd.bodyB = bodies[%d];\n",uVar2);
  b2Log("  jd.collideConnected = bool(%d);\n",(uint)(byte)this[0x3d]);
  b2Log("  jd.localAnchorA.Set(%.15lef, %.15lef);\n",extraout_r1,
        SUB84((double)*(float *)(this + 0x50),0),
        (int)((ulonglong)(double)*(float *)(this + 0x50) >> 0x20),(double)*(float *)(this + 0x54));
  b2Log("  jd.localAnchorB.Set(%.15lef, %.15lef);\n",extraout_r1_00,
        SUB84((double)*(float *)(this + 0x58),0),
        (int)((ulonglong)(double)*(float *)(this + 0x58) >> 0x20),(double)*(float *)(this + 0x5c));
  b2Log("  jd.length = %.15lef;\n",extraout_r1_01,SUB84((double)*(float *)(this + 0x68),0),
        (int)((ulonglong)(double)*(float *)(this + 0x68) >> 0x20));
  b2Log("  jd.frequencyHz = %.15lef;\n",extraout_r1_02,SUB84((double)*(float *)(this + 0x44),0),
        (int)((ulonglong)(double)*(float *)(this + 0x44) >> 0x20));
  b2Log("  jd.dampingRatio = %.15lef;\n",extraout_r1_03,SUB84((double)*(float *)(this + 0x48),0),
        (int)((ulonglong)(double)*(float *)(this + 0x48) >> 0x20));
  b2Log("  joints[%d] = m_world->CreateJoint(&jd);\n",*(undefined4 *)(this + 0x38));
  return;
}

// ---- b2DistanceJoint::~b2DistanceJoint  @ 0x6cd8b0
/* WARNING: Removing unreachable block (ram,0x006cd8d2) */
/* b2DistanceJoint::~b2DistanceJoint() */

b2DistanceJoint * __thiscall b2DistanceJoint::~b2DistanceJoint(b2DistanceJoint *this)

{
  *(undefined ***)this = &PTR_GetAnchorA_1_0093bec8;
  b2Joint::~b2Joint((b2Joint *)this);
  return this;
}

// ---- b2DistanceJoint::~b2DistanceJoint  @ 0x6cd8ec
/* b2DistanceJoint::~b2DistanceJoint() */

b2DistanceJoint * __thiscall b2DistanceJoint::~b2DistanceJoint(b2DistanceJoint *this)

{
  ~b2DistanceJoint(this);
  operator_delete(this);
  return this;
}
