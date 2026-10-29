// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 15 functions

// ---- b2FrictionJoint::b2FrictionJoint  @ 0x6cd964
/* b2FrictionJoint::b2FrictionJoint(b2FrictionJointDef const*) */

b2FrictionJoint * __thiscall
b2FrictionJoint::b2FrictionJoint(b2FrictionJoint *this,b2FrictionJointDef *param_1)

{
  undefined4 uVar1;
  
  b2Joint::b2Joint((b2Joint *)this,(b2JointDef *)param_1);
  *(undefined ***)this = &PTR_GetAnchorA_1_0093bf40;
  b2Vec2::b2Vec2((b2Vec2 *)(this + 0x44));
  b2Vec2::b2Vec2((b2Vec2 *)(this + 0x4c));
  b2Vec2::b2Vec2((b2Vec2 *)(this + 0x54));
  b2Vec2::b2Vec2((b2Vec2 *)(this + 0x70));
  b2Vec2::b2Vec2((b2Vec2 *)(this + 0x78));
  b2Vec2::b2Vec2((b2Vec2 *)(this + 0x80));
  b2Vec2::b2Vec2((b2Vec2 *)(this + 0x88));
  b2Mat22::b2Mat22((b2Mat22 *)(this + 0xa0));
  uVar1 = *(undefined4 *)(param_1 + 0x18);
  *(undefined4 *)(this + 0x44) = *(undefined4 *)(param_1 + 0x14);
  *(undefined4 *)(this + 0x48) = uVar1;
  uVar1 = *(undefined4 *)(param_1 + 0x20);
  *(undefined4 *)(this + 0x4c) = *(undefined4 *)(param_1 + 0x1c);
  *(undefined4 *)(this + 0x50) = uVar1;
  b2Vec2::SetZero((b2Vec2 *)(this + 0x54));
  *(undefined4 *)(this + 0x5c) = 0;
  *(undefined4 *)(this + 0x60) = *(undefined4 *)(param_1 + 0x24);
  *(undefined4 *)(this + 100) = *(undefined4 *)(param_1 + 0x28);
  return this;
}

// ---- b2FrictionJoint::InitVelocityConstraints  @ 0x6cda28
/* b2FrictionJoint::InitVelocityConstraints(b2SolverData const&) */

void b2FrictionJoint::InitVelocityConstraints(b2SolverData *param_1)

{
  b2SolverData *pbVar1;
  int in_r1;
  undefined4 uVar2;
  undefined4 *puVar3;
  float in_s0;
  float fVar4;
  float extraout_s0;
  undefined8 uVar5;
  undefined4 local_88;
  undefined4 uStack_84;
  undefined4 uStack_80;
  undefined4 uStack_7c;
  undefined4 local_78;
  undefined4 uStack_74;
  int local_70;
  b2SolverData *local_6c;
  float local_68;
  float local_64;
  undefined4 local_60;
  undefined4 local_5c;
  float local_58;
  float local_54;
  float local_50;
  float local_4c;
  undefined4 local_48;
  undefined4 uStack_44;
  undefined4 local_40;
  undefined4 uStack_3c;
  b2Rot abStack_38 [8];
  b2Rot abStack_30 [8];
  b2Vec2 abStack_28 [8];
  b2Vec2 abStack_20 [8];
  float local_18;
  float local_14;
  float local_10;
  float local_c;
  
  *(undefined4 *)(param_1 + 0x68) = *(undefined4 *)(*(int *)(param_1 + 0x30) + 8);
  *(undefined4 *)(param_1 + 0x6c) = *(undefined4 *)(*(int *)(param_1 + 0x34) + 8);
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
  local_60 = *(undefined4 *)(*(int *)(param_1 + 0x68) * 0xc + *(int *)(in_r1 + 0x18) + 8);
  puVar3 = (undefined4 *)(*(int *)(in_r1 + 0x1c) + *(int *)(param_1 + 0x68) * 0xc);
  local_48 = *puVar3;
  uStack_44 = puVar3[1];
  local_68 = *(float *)(*(int *)(param_1 + 0x68) * 0xc + *(int *)(in_r1 + 0x1c) + 8);
  local_5c = *(undefined4 *)(*(int *)(param_1 + 0x6c) * 0xc + *(int *)(in_r1 + 0x18) + 8);
  puVar3 = (undefined4 *)(*(int *)(in_r1 + 0x1c) + *(int *)(param_1 + 0x6c) * 0xc);
  local_40 = *puVar3;
  uStack_3c = puVar3[1];
  local_64 = *(float *)(*(int *)(param_1 + 0x6c) * 0xc + *(int *)(in_r1 + 0x1c) + 8);
  local_70 = in_r1;
  local_6c = param_1;
  fVar4 = (float)b2Rot::b2Rot(abStack_38,in_s0);
  b2Rot::b2Rot(abStack_30,fVar4);
  ::operator-((b2Vec2 *)&local_18,(b2Vec2 *)(local_6c + 0x44));
  pbVar1 = local_6c;
  b2Mul((b2Rot *)&local_78,(b2Vec2 *)abStack_38);
  *(undefined4 *)(pbVar1 + 0x70) = local_78;
  *(undefined4 *)(pbVar1 + 0x74) = uStack_74;
  ::operator-((b2Vec2 *)&local_18,(b2Vec2 *)(local_6c + 0x4c));
  pbVar1 = local_6c;
  b2Mul((b2Rot *)&local_78,(b2Vec2 *)abStack_30);
  *(undefined4 *)(pbVar1 + 0x78) = local_78;
  *(undefined4 *)(pbVar1 + 0x7c) = uStack_74;
  local_58 = *(float *)(local_6c + 0x90);
  local_54 = *(float *)(local_6c + 0x94);
  local_50 = *(float *)(local_6c + 0x98);
  local_4c = *(float *)(local_6c + 0x9c);
  b2Mat22::b2Mat22((b2Mat22 *)&local_18);
  pbVar1 = local_6c;
  local_18 = local_58 + local_54 +
             *(float *)(local_6c + 0x74) * local_50 * *(float *)(local_6c + 0x74) +
             *(float *)(local_6c + 0x7c) * local_4c * *(float *)(local_6c + 0x7c);
  local_14 = -local_50 * *(float *)(local_6c + 0x70) * *(float *)(local_6c + 0x74) -
             *(float *)(local_6c + 0x78) * local_4c * *(float *)(local_6c + 0x7c);
  local_c = local_58 + local_54 +
            *(float *)(local_6c + 0x70) * local_50 * *(float *)(local_6c + 0x70) +
            *(float *)(local_6c + 0x78) * local_4c * *(float *)(local_6c + 0x78);
  local_10 = local_14;
  fVar4 = (float)b2Mat22::GetInverse();
  *(undefined4 *)(pbVar1 + 0xa0) = local_88;
  *(undefined4 *)(pbVar1 + 0xa4) = uStack_84;
  *(undefined4 *)(pbVar1 + 0xa8) = uStack_80;
  *(undefined4 *)(pbVar1 + 0xac) = uStack_7c;
  *(float *)(local_6c + 0xb0) = local_50 + local_4c;
  if (0.0 < *(float *)(local_6c + 0xb0)) {
    *(float *)(local_6c + 0xb0) = 1.0 / *(float *)(local_6c + 0xb0);
  }
  if (*(char *)(local_70 + 0x14) == '\0') {
    b2Vec2::SetZero((b2Vec2 *)(local_6c + 0x54));
    *(undefined4 *)(local_6c + 0x5c) = 0;
  }
  else {
    uVar5 = b2Vec2::operator*=((b2Vec2 *)(local_6c + 0x54),fVar4);
    *(float *)(local_6c + 0x5c) = *(float *)(local_6c + 0x5c) * *(float *)(local_70 + 8);
    fVar4 = (float)b2Vec2::b2Vec2(abStack_28,(float)uVar5,(float)((ulonglong)uVar5 >> 0x20));
    ::operator*(fVar4,abStack_20);
    b2Vec2::operator-=((b2Vec2 *)&local_48,abStack_20);
    fVar4 = (float)b2Cross((b2Vec2 *)(local_6c + 0x70),abStack_28);
    local_68 = local_68 - (fVar4 + *(float *)(local_6c + 0x5c)) * local_50;
    ::operator*(extraout_s0,abStack_20);
    b2Vec2::operator+=((b2Vec2 *)&local_40,abStack_20);
    fVar4 = (float)b2Cross((b2Vec2 *)(local_6c + 0x78),abStack_28);
    local_64 = local_64 + (fVar4 + *(float *)(local_6c + 0x5c)) * local_4c;
  }
  puVar3 = (undefined4 *)(*(int *)(local_6c + 0x68) * 0xc + *(int *)(local_70 + 0x1c));
  *puVar3 = local_48;
  puVar3[1] = uStack_44;
  *(float *)(*(int *)(local_6c + 0x68) * 0xc + *(int *)(local_70 + 0x1c) + 8) = local_68;
  puVar3 = (undefined4 *)(*(int *)(local_6c + 0x6c) * 0xc + *(int *)(local_70 + 0x1c));
  *puVar3 = local_40;
  puVar3[1] = uStack_3c;
  *(float *)(*(int *)(local_6c + 0x6c) * 0xc + *(int *)(local_70 + 0x1c) + 8) = local_64;
  return;
}

// ---- b2FrictionJoint::SolveVelocityConstraints  @ 0x6cde60
/* b2FrictionJoint::SolveVelocityConstraints(b2SolverData const&) */

void b2FrictionJoint::SolveVelocityConstraints(b2SolverData *param_1)

{
  undefined4 extraout_r0;
  float *in_r1;
  undefined4 *puVar1;
  float in_s0;
  float fVar2;
  float extraout_s0;
  float in_s1;
  float in_s2;
  undefined4 local_80;
  undefined4 uStack_7c;
  float *local_78;
  b2SolverData *local_74;
  float local_70;
  float local_6c;
  undefined4 local_68;
  undefined4 local_64;
  float local_60;
  float local_5c;
  float local_58;
  float local_54;
  float local_50;
  float local_4c;
  float local_48;
  float local_44;
  undefined4 local_40;
  undefined4 uStack_3c;
  undefined4 local_38;
  undefined4 uStack_34;
  b2Vec2 abStack_30 [8];
  b2Vec2 abStack_28 [8];
  undefined4 local_20;
  undefined4 uStack_1c;
  undefined4 local_18;
  undefined4 uStack_14;
  b2Vec2 abStack_10 [12];
  
  puVar1 = (undefined4 *)((int)in_r1[7] + *(int *)(param_1 + 0x68) * 0xc);
  local_40 = *puVar1;
  uStack_3c = puVar1[1];
  local_70 = *(float *)(*(int *)(param_1 + 0x68) * 0xc + (int)in_r1[7] + 8);
  puVar1 = (undefined4 *)((int)in_r1[7] + *(int *)(param_1 + 0x6c) * 0xc);
  local_38 = *puVar1;
  uStack_34 = puVar1[1];
  local_6c = *(float *)(*(int *)(param_1 + 0x6c) * 0xc + (int)in_r1[7] + 8);
  local_68 = *(undefined4 *)(param_1 + 0x90);
  local_64 = *(undefined4 *)(param_1 + 0x94);
  local_60 = *(float *)(param_1 + 0x98);
  local_5c = *(float *)(param_1 + 0x9c);
  local_58 = *in_r1;
  local_54 = local_6c - local_70;
  local_50 = -*(float *)(param_1 + 0xb0) * local_54;
  local_4c = *(float *)(param_1 + 0x5c);
  local_48 = *(float *)(param_1 + 100) * local_58;
  local_78 = in_r1;
  local_74 = param_1;
  fVar2 = b2Clamp<float>(in_s0,in_s1,in_s2);
  *(undefined4 *)(local_74 + 0x5c) = extraout_r0;
  local_50 = *(float *)(local_74 + 0x5c) - local_4c;
  local_70 = local_70 - local_60 * local_50;
  local_6c = local_6c + local_5c * local_50;
  b2Cross(fVar2,abStack_28);
  ::operator+((b2Vec2 *)&local_20,(b2Vec2 *)&local_38);
  fVar2 = (float)::operator-((b2Vec2 *)&local_18,(b2Vec2 *)&local_20);
  b2Cross(fVar2,abStack_10);
  ::operator-(abStack_30,(b2Vec2 *)&local_18);
  b2Mul((b2Mat22 *)abStack_10,(b2Vec2 *)(local_74 + 0xa0));
  b2Vec2::operator-((b2Vec2 *)&local_20);
  local_18 = *(undefined4 *)(local_74 + 0x54);
  uStack_14 = *(undefined4 *)(local_74 + 0x58);
  b2Vec2::operator+=((b2Vec2 *)(local_74 + 0x54),(b2Vec2 *)&local_20);
  local_44 = *(float *)(local_74 + 0x60) * local_58;
  fVar2 = (float)b2Vec2::LengthSquared((b2Vec2 *)(local_74 + 0x54));
  if (local_44 * local_44 < fVar2) {
    fVar2 = (float)b2Vec2::Normalize((b2Vec2 *)(local_74 + 0x54));
    b2Vec2::operator*=((b2Vec2 *)(local_74 + 0x54),fVar2);
  }
  fVar2 = (float)::operator-((b2Vec2 *)&local_80,(b2Vec2 *)(local_74 + 0x54));
  local_20 = local_80;
  uStack_1c = uStack_7c;
  ::operator*(fVar2,abStack_10);
  b2Vec2::operator-=((b2Vec2 *)&local_40,abStack_10);
  fVar2 = (float)b2Cross((b2Vec2 *)(local_74 + 0x70),(b2Vec2 *)&local_20);
  local_70 = local_70 - fVar2 * local_60;
  ::operator*(extraout_s0,abStack_10);
  b2Vec2::operator+=((b2Vec2 *)&local_38,abStack_10);
  fVar2 = (float)b2Cross((b2Vec2 *)(local_74 + 0x78),(b2Vec2 *)&local_20);
  puVar1 = (undefined4 *)(*(int *)(local_74 + 0x68) * 0xc + (int)local_78[7]);
  *puVar1 = local_40;
  puVar1[1] = uStack_3c;
  *(float *)(*(int *)(local_74 + 0x68) * 0xc + (int)local_78[7] + 8) = local_70;
  puVar1 = (undefined4 *)(*(int *)(local_74 + 0x6c) * 0xc + (int)local_78[7]);
  *puVar1 = local_38;
  puVar1[1] = uStack_34;
  *(float *)(*(int *)(local_74 + 0x6c) * 0xc + (int)local_78[7] + 8) = local_6c + fVar2 * local_5c;
  return;
}

// ---- b2FrictionJoint::SolvePositionConstraints  @ 0x6ce1a0
/* b2FrictionJoint::SolvePositionConstraints(b2SolverData const&) */

undefined4 b2FrictionJoint::SolvePositionConstraints(b2SolverData *param_1)

{
  return 1;
}

// ---- b2FrictionJoint::GetAnchorA  @ 0x6ce1b0
/* b2FrictionJoint::GetAnchorA() const */

b2Body * b2FrictionJoint::GetAnchorA(void)

{
  b2Body *in_r0;
  int in_r1;
  
  b2Body::GetWorldPoint(in_r0,*(b2Vec2 **)(in_r1 + 0x30));
  return in_r0;
}

// ---- b2FrictionJoint::GetAnchorB  @ 0x6ce1d4
/* b2FrictionJoint::GetAnchorB() const */

b2Body * b2FrictionJoint::GetAnchorB(void)

{
  b2Body *in_r0;
  int in_r1;
  
  b2Body::GetWorldPoint(in_r0,*(b2Vec2 **)(in_r1 + 0x34));
  return in_r0;
}

// ---- b2FrictionJoint::GetReactionForce  @ 0x6ce1f8
/* b2FrictionJoint::GetReactionForce(float) const */

b2FrictionJoint * __thiscall b2FrictionJoint::GetReactionForce(b2FrictionJoint *this,float param_1)

{
  ::operator*(param_1,(b2Vec2 *)this);
  return this;
}

// ---- b2FrictionJoint::GetReactionTorque  @ 0x6ce21c
/* b2FrictionJoint::GetReactionTorque(float) const */

float __thiscall b2FrictionJoint::GetReactionTorque(b2FrictionJoint *this,float param_1)

{
  float in_r1;
  
  return *(float *)(this + 0x5c) * in_r1;
}

// ---- b2FrictionJoint::SetMaxForce  @ 0x6ce23c
/* b2FrictionJoint::SetMaxForce(float) */

void __thiscall b2FrictionJoint::SetMaxForce(b2FrictionJoint *this,float param_1)

{
  undefined4 in_r1;
  
  *(undefined4 *)(this + 0x60) = in_r1;
  return;
}

// ---- b2FrictionJoint::GetMaxForce  @ 0x6ce24c
/* b2FrictionJoint::GetMaxForce() const */

undefined4 __thiscall b2FrictionJoint::GetMaxForce(b2FrictionJoint *this)

{
  return *(undefined4 *)(this + 0x60);
}

// ---- b2FrictionJoint::SetMaxTorque  @ 0x6ce25c
/* b2FrictionJoint::SetMaxTorque(float) */

void __thiscall b2FrictionJoint::SetMaxTorque(b2FrictionJoint *this,float param_1)

{
  undefined4 in_r1;
  
  *(undefined4 *)(this + 100) = in_r1;
  return;
}

// ---- b2FrictionJoint::GetMaxTorque  @ 0x6ce26c
/* b2FrictionJoint::GetMaxTorque() const */

undefined4 __thiscall b2FrictionJoint::GetMaxTorque(b2FrictionJoint *this)

{
  return *(undefined4 *)(this + 100);
}

// ---- b2FrictionJoint::Dump  @ 0x6ce27c
/* b2FrictionJoint::Dump() */

void __thiscall b2FrictionJoint::Dump(b2FrictionJoint *this)

{
  undefined4 extraout_r1;
  undefined4 extraout_r1_00;
  undefined4 extraout_r1_01;
  undefined4 extraout_r1_02;
  undefined4 uVar1;
  undefined4 uVar2;
  
  uVar1 = *(undefined4 *)(*(int *)(this + 0x30) + 8);
  uVar2 = *(undefined4 *)(*(int *)(this + 0x34) + 8);
  b2Log("  b2FrictionJointDef jd;\n");
  b2Log("  jd.bodyA = bodies[%d];\n",uVar1);
  b2Log("  jd.bodyB = bodies[%d];\n",uVar2);
  b2Log("  jd.collideConnected = bool(%d);\n",(uint)(byte)this[0x3d]);
  b2Log("  jd.localAnchorA.Set(%.15lef, %.15lef);\n",extraout_r1,
        SUB84((double)*(float *)(this + 0x44),0),
        (int)((ulonglong)(double)*(float *)(this + 0x44) >> 0x20),(double)*(float *)(this + 0x48));
  b2Log("  jd.localAnchorB.Set(%.15lef, %.15lef);\n",extraout_r1_00,
        SUB84((double)*(float *)(this + 0x4c),0),
        (int)((ulonglong)(double)*(float *)(this + 0x4c) >> 0x20),(double)*(float *)(this + 0x50));
  b2Log("  jd.maxForce = %.15lef;\n",extraout_r1_01,SUB84((double)*(float *)(this + 0x60),0),
        (int)((ulonglong)(double)*(float *)(this + 0x60) >> 0x20));
  b2Log("  jd.maxTorque = %.15lef;\n",extraout_r1_02,SUB84((double)*(float *)(this + 100),0),
        (int)((ulonglong)(double)*(float *)(this + 100) >> 0x20));
  b2Log("  joints[%d] = m_world->CreateJoint(&jd);\n",*(undefined4 *)(this + 0x38));
  return;
}

// ---- b2FrictionJoint::~b2FrictionJoint  @ 0x6ce37c
/* WARNING: Removing unreachable block (ram,0x006ce39e) */
/* b2FrictionJoint::~b2FrictionJoint() */

b2FrictionJoint * __thiscall b2FrictionJoint::~b2FrictionJoint(b2FrictionJoint *this)

{
  *(undefined ***)this = &PTR_GetAnchorA_1_0093bf40;
  b2Joint::~b2Joint((b2Joint *)this);
  return this;
}

// ---- b2FrictionJoint::~b2FrictionJoint  @ 0x6ce3b8
/* b2FrictionJoint::~b2FrictionJoint() */

b2FrictionJoint * __thiscall b2FrictionJoint::~b2FrictionJoint(b2FrictionJoint *this)

{
  ~b2FrictionJoint(this);
  operator_delete(this);
  return this;
}
