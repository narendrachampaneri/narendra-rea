// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 19 functions

// ---- b2MouseJoint::Dump  @ 0x6d0194
/* b2MouseJoint::Dump() */

void b2MouseJoint::Dump(void)

{
  b2Log("Mouse joint dumping is not supported.\n");
  return;
}

// ---- b2MouseJoint::b2MouseJoint  @ 0x6d01dc
/* b2MouseJoint::b2MouseJoint(b2MouseJointDef const*) */

b2MouseJoint * __thiscall b2MouseJoint::b2MouseJoint(b2MouseJoint *this,b2MouseJointDef *param_1)

{
  b2MouseJoint *pbVar1;
  b2Vec2 *pbVar2;
  undefined4 uVar3;
  undefined4 local_18;
  undefined4 uStack_14;
  b2MouseJointDef *local_10;
  b2MouseJoint *local_c;
  
  local_10 = param_1;
  local_c = this;
  b2Joint::b2Joint((b2Joint *)this,(b2JointDef *)param_1);
  *(undefined ***)local_c = &PTR_GetAnchorA_1_0093bfc0;
  b2Vec2::b2Vec2((b2Vec2 *)(local_c + 0x44));
  b2Vec2::b2Vec2((b2Vec2 *)(local_c + 0x4c));
  b2Vec2::b2Vec2((b2Vec2 *)(local_c + 0x60));
  b2Vec2::b2Vec2((b2Vec2 *)(local_c + 0x78));
  b2Vec2::b2Vec2((b2Vec2 *)(local_c + 0x80));
  b2Mat22::b2Mat22((b2Mat22 *)(local_c + 0x90));
  b2Vec2::b2Vec2((b2Vec2 *)(local_c + 0xa0));
  uVar3 = *(undefined4 *)(local_10 + 0x18);
  *(undefined4 *)(local_c + 0x4c) = *(undefined4 *)(local_10 + 0x14);
  *(undefined4 *)(local_c + 0x50) = uVar3;
  pbVar2 = (b2Vec2 *)b2Body::GetTransform(*(b2Body **)(local_c + 0x34));
  pbVar1 = local_c;
  b2MulT((b2Transform *)&local_18,pbVar2);
  *(undefined4 *)(pbVar1 + 0x44) = local_18;
  *(undefined4 *)(pbVar1 + 0x48) = uStack_14;
  *(undefined4 *)(local_c + 0x68) = *(undefined4 *)(local_10 + 0x1c);
  b2Vec2::SetZero((b2Vec2 *)(local_c + 0x60));
  *(undefined4 *)(local_c + 0x54) = *(undefined4 *)(local_10 + 0x20);
  *(undefined4 *)(local_c + 0x58) = *(undefined4 *)(local_10 + 0x24);
  *(undefined4 *)(local_c + 0x5c) = 0;
  *(undefined4 *)(local_c + 0x6c) = 0;
  return local_c;
}

// ---- b2MouseJoint::SetTarget  @ 0x6d02c0
/* b2MouseJoint::SetTarget(b2Vec2 const&) */

void __thiscall b2MouseJoint::SetTarget(b2MouseJoint *this,b2Vec2 *param_1)

{
  char cVar1;
  undefined4 uVar2;
  
  cVar1 = b2Body::IsAwake(*(b2Body **)(this + 0x34));
  if (cVar1 != '\x01') {
    b2Body::SetAwake(*(b2Body **)(this + 0x34),true);
  }
  uVar2 = *(undefined4 *)(param_1 + 4);
  *(undefined4 *)(this + 0x4c) = *(undefined4 *)param_1;
  *(undefined4 *)(this + 0x50) = uVar2;
  return;
}

// ---- b2MouseJoint::GetTarget  @ 0x6d0300
/* b2MouseJoint::GetTarget() const */

b2MouseJoint * __thiscall b2MouseJoint::GetTarget(b2MouseJoint *this)

{
  return this + 0x4c;
}

// ---- b2MouseJoint::SetMaxForce  @ 0x6d0310
/* b2MouseJoint::SetMaxForce(float) */

void __thiscall b2MouseJoint::SetMaxForce(b2MouseJoint *this,float param_1)

{
  undefined4 in_r1;
  
  *(undefined4 *)(this + 0x68) = in_r1;
  return;
}

// ---- b2MouseJoint::GetMaxForce  @ 0x6d0320
/* b2MouseJoint::GetMaxForce() const */

undefined4 __thiscall b2MouseJoint::GetMaxForce(b2MouseJoint *this)

{
  return *(undefined4 *)(this + 0x68);
}

// ---- b2MouseJoint::SetFrequency  @ 0x6d0330
/* b2MouseJoint::SetFrequency(float) */

void __thiscall b2MouseJoint::SetFrequency(b2MouseJoint *this,float param_1)

{
  undefined4 in_r1;
  
  *(undefined4 *)(this + 0x54) = in_r1;
  return;
}

// ---- b2MouseJoint::GetFrequency  @ 0x6d0340
/* b2MouseJoint::GetFrequency() const */

undefined4 __thiscall b2MouseJoint::GetFrequency(b2MouseJoint *this)

{
  return *(undefined4 *)(this + 0x54);
}

// ---- b2MouseJoint::SetDampingRatio  @ 0x6d0350
/* b2MouseJoint::SetDampingRatio(float) */

void __thiscall b2MouseJoint::SetDampingRatio(b2MouseJoint *this,float param_1)

{
  undefined4 in_r1;
  
  *(undefined4 *)(this + 0x58) = in_r1;
  return;
}

// ---- b2MouseJoint::GetDampingRatio  @ 0x6d0360
/* b2MouseJoint::GetDampingRatio() const */

undefined4 __thiscall b2MouseJoint::GetDampingRatio(b2MouseJoint *this)

{
  return *(undefined4 *)(this + 0x58);
}

// ---- b2MouseJoint::InitVelocityConstraints  @ 0x6d0370
/* b2MouseJoint::InitVelocityConstraints(b2SolverData const&) */

void b2MouseJoint::InitVelocityConstraints(b2SolverData *param_1)

{
  b2SolverData *pbVar1;
  float *in_r1;
  undefined4 uVar2;
  undefined4 *puVar3;
  float in_s0;
  float fVar4;
  float fVar5;
  undefined4 local_80;
  undefined4 uStack_7c;
  undefined4 uStack_78;
  undefined4 uStack_74;
  undefined4 local_70;
  undefined4 uStack_6c;
  float *local_68;
  b2SolverData *local_64;
  float local_5c;
  undefined4 local_58;
  float local_54;
  float local_50;
  float local_4c;
  float local_48;
  float local_44;
  undefined4 local_40;
  undefined4 uStack_3c;
  undefined4 local_38;
  undefined4 uStack_34;
  b2Rot abStack_30 [8];
  b2Vec2 abStack_28 [8];
  float local_20;
  float local_1c;
  float local_18;
  float local_14;
  
  *(undefined4 *)(param_1 + 0x74) = *(undefined4 *)(*(int *)(param_1 + 0x34) + 8);
  uVar2 = *(undefined4 *)(*(int *)(param_1 + 0x34) + 0x20);
  *(undefined4 *)(param_1 + 0x80) = *(undefined4 *)(*(int *)(param_1 + 0x34) + 0x1c);
  *(undefined4 *)(param_1 + 0x84) = uVar2;
  *(undefined4 *)(param_1 + 0x88) = *(undefined4 *)(*(int *)(param_1 + 0x34) + 0x78);
  *(undefined4 *)(param_1 + 0x8c) = *(undefined4 *)(*(int *)(param_1 + 0x34) + 0x80);
  puVar3 = (undefined4 *)((int)in_r1[6] + *(int *)(param_1 + 0x74) * 0xc);
  local_40 = *puVar3;
  uStack_3c = puVar3[1];
  local_58 = *(undefined4 *)(*(int *)(param_1 + 0x74) * 0xc + (int)in_r1[6] + 8);
  puVar3 = (undefined4 *)((int)in_r1[7] + *(int *)(param_1 + 0x74) * 0xc);
  local_38 = *puVar3;
  uStack_34 = puVar3[1];
  local_5c = *(float *)(*(int *)(param_1 + 0x74) * 0xc + (int)in_r1[7] + 8);
  local_68 = in_r1;
  local_64 = param_1;
  b2Rot::b2Rot(abStack_30,in_s0);
  local_54 = (float)b2Body::GetMass(*(b2Body **)(local_64 + 0x34));
  local_50 = *(float *)(local_64 + 0x54) * 6.2831855;
  local_4c = (local_54 + local_54) * *(float *)(local_64 + 0x58) * local_50;
  local_48 = local_50 * local_50 * local_54;
  local_44 = *local_68;
  *(float *)(local_64 + 0x6c) = (local_44 * local_48 + local_4c) * local_44;
  if (*(float *)(local_64 + 0x6c) != 0.0) {
    *(float *)(local_64 + 0x6c) = 1.0 / *(float *)(local_64 + 0x6c);
  }
  *(float *)(local_64 + 0x5c) = local_44 * local_48 * *(float *)(local_64 + 0x6c);
  ::operator-((b2Vec2 *)&local_20,(b2Vec2 *)(local_64 + 0x44));
  pbVar1 = local_64;
  b2Mul((b2Rot *)&local_70,(b2Vec2 *)abStack_30);
  *(undefined4 *)(pbVar1 + 0x78) = local_70;
  *(undefined4 *)(pbVar1 + 0x7c) = uStack_6c;
  b2Mat22::b2Mat22((b2Mat22 *)&local_20);
  pbVar1 = local_64;
  local_20 = *(float *)(local_64 + 0x88) +
             *(float *)(local_64 + 0x8c) * *(float *)(local_64 + 0x7c) * *(float *)(local_64 + 0x7c)
             + *(float *)(local_64 + 0x6c);
  local_1c = -*(float *)(local_64 + 0x8c) * *(float *)(local_64 + 0x78) *
             *(float *)(local_64 + 0x7c);
  local_14 = *(float *)(local_64 + 0x88) +
             *(float *)(local_64 + 0x8c) * *(float *)(local_64 + 0x78) * *(float *)(local_64 + 0x78)
             + *(float *)(local_64 + 0x6c);
  local_18 = local_1c;
  b2Mat22::GetInverse();
  *(undefined4 *)(pbVar1 + 0x90) = local_80;
  *(undefined4 *)(pbVar1 + 0x94) = uStack_7c;
  *(undefined4 *)(pbVar1 + 0x98) = uStack_78;
  *(undefined4 *)(pbVar1 + 0x9c) = uStack_74;
  ::operator+(abStack_28,(b2Vec2 *)&local_40);
  pbVar1 = local_64;
  fVar4 = (float)::operator-((b2Vec2 *)&local_80,abStack_28);
  *(undefined4 *)(pbVar1 + 0xa0) = local_80;
  *(undefined4 *)(pbVar1 + 0xa4) = uStack_7c;
  fVar4 = (float)b2Vec2::operator*=((b2Vec2 *)(local_64 + 0xa0),fVar4);
  local_5c = local_5c * 0.98;
  if (*(char *)(local_68 + 5) == '\0') {
    b2Vec2::SetZero((b2Vec2 *)(local_64 + 0x60));
  }
  else {
    fVar4 = (float)b2Vec2::operator*=((b2Vec2 *)(local_64 + 0x60),fVar4);
    ::operator*(fVar4,abStack_28);
    b2Vec2::operator+=((b2Vec2 *)&local_38,abStack_28);
    fVar5 = *(float *)(local_64 + 0x8c);
    fVar4 = (float)b2Cross((b2Vec2 *)(local_64 + 0x78),(b2Vec2 *)(local_64 + 0x60));
    local_5c = local_5c + fVar5 * fVar4;
  }
  puVar3 = (undefined4 *)(*(int *)(local_64 + 0x74) * 0xc + (int)local_68[7]);
  *puVar3 = local_38;
  puVar3[1] = uStack_34;
  *(float *)(*(int *)(local_64 + 0x74) * 0xc + (int)local_68[7] + 8) = local_5c;
  return;
}

// ---- b2MouseJoint::SolveVelocityConstraints  @ 0x6d06d8
/* b2MouseJoint::SolveVelocityConstraints(b2SolverData const&) */

void b2MouseJoint::SolveVelocityConstraints(b2SolverData *param_1)

{
  float *in_r1;
  undefined4 *puVar1;
  b2Vec2 *pbVar2;
  float in_s0;
  float fVar3;
  float fVar4;
  undefined4 local_60;
  undefined4 uStack_5c;
  float *local_58;
  b2SolverData *local_54;
  float local_50;
  float local_4c;
  undefined4 local_48;
  undefined4 uStack_44;
  b2Vec2 abStack_40 [8];
  undefined4 local_38;
  undefined4 uStack_34;
  b2Vec2 abStack_30 [8];
  b2Vec2 abStack_28 [8];
  undefined4 local_20;
  undefined4 uStack_1c;
  b2Vec2 abStack_18 [8];
  
  puVar1 = (undefined4 *)((int)in_r1[7] + *(int *)(param_1 + 0x74) * 0xc);
  local_48 = *puVar1;
  uStack_44 = puVar1[1];
  local_50 = *(float *)(*(int *)(param_1 + 0x74) * 0xc + (int)in_r1[7] + 8);
  local_58 = in_r1;
  local_54 = param_1;
  b2Cross(in_s0,abStack_18);
  ::operator+(abStack_40,(b2Vec2 *)&local_48);
  pbVar2 = (b2Vec2 *)(local_54 + 0x90);
  fVar3 = (float)::operator+(abStack_30,abStack_40);
  ::operator*(fVar3,abStack_28);
  ::operator+((b2Vec2 *)&local_20,abStack_30);
  b2Vec2::operator-(abStack_18);
  b2Mul((b2Mat22 *)&local_38,pbVar2);
  local_20 = *(undefined4 *)(local_54 + 0x60);
  uStack_1c = *(undefined4 *)(local_54 + 100);
  b2Vec2::operator+=((b2Vec2 *)(local_54 + 0x60),(b2Vec2 *)&local_38);
  local_4c = *local_58 * *(float *)(local_54 + 0x68);
  fVar3 = (float)b2Vec2::LengthSquared((b2Vec2 *)(local_54 + 0x60));
  if (local_4c * local_4c < fVar3) {
    pbVar2 = (b2Vec2 *)(local_54 + 0x60);
    fVar3 = (float)b2Vec2::Length((b2Vec2 *)(local_54 + 0x60));
    b2Vec2::operator*=(pbVar2,fVar3);
  }
  fVar3 = (float)::operator-((b2Vec2 *)&local_60,(b2Vec2 *)(local_54 + 0x60));
  local_38 = local_60;
  uStack_34 = uStack_5c;
  ::operator*(fVar3,abStack_18);
  b2Vec2::operator+=((b2Vec2 *)&local_48,abStack_18);
  fVar4 = *(float *)(local_54 + 0x8c);
  fVar3 = (float)b2Cross((b2Vec2 *)(local_54 + 0x78),(b2Vec2 *)&local_38);
  puVar1 = (undefined4 *)(*(int *)(local_54 + 0x74) * 0xc + (int)local_58[7]);
  *puVar1 = local_48;
  puVar1[1] = uStack_44;
  *(float *)(*(int *)(local_54 + 0x74) * 0xc + (int)local_58[7] + 8) = local_50 + fVar4 * fVar3;
  return;
}

// ---- b2MouseJoint::SolvePositionConstraints  @ 0x6d08c0
/* b2MouseJoint::SolvePositionConstraints(b2SolverData const&) */

undefined4 b2MouseJoint::SolvePositionConstraints(b2SolverData *param_1)

{
  return 1;
}

// ---- b2MouseJoint::GetAnchorA  @ 0x6d08d0
/* b2MouseJoint::GetAnchorA() const */

undefined4 * b2MouseJoint::GetAnchorA(void)

{
  undefined4 *in_r0;
  int in_r1;
  undefined4 uVar1;
  
  uVar1 = *(undefined4 *)(in_r1 + 0x50);
  *in_r0 = *(undefined4 *)(in_r1 + 0x4c);
  in_r0[1] = uVar1;
  return in_r0;
}

// ---- b2MouseJoint::GetAnchorB  @ 0x6d08ec
/* b2MouseJoint::GetAnchorB() const */

b2Body * b2MouseJoint::GetAnchorB(void)

{
  b2Body *in_r0;
  int in_r1;
  
  b2Body::GetWorldPoint(in_r0,*(b2Vec2 **)(in_r1 + 0x34));
  return in_r0;
}

// ---- b2MouseJoint::GetReactionForce  @ 0x6d0910
/* b2MouseJoint::GetReactionForce(float) const */

b2MouseJoint * __thiscall b2MouseJoint::GetReactionForce(b2MouseJoint *this,float param_1)

{
  ::operator*(param_1,(b2Vec2 *)this);
  return this;
}

// ---- b2MouseJoint::GetReactionTorque  @ 0x6d0934
/* b2MouseJoint::GetReactionTorque(float) const */

float __thiscall b2MouseJoint::GetReactionTorque(b2MouseJoint *this,float param_1)

{
  float in_r1;
  
  return in_r1 * 0.0;
}

// ---- b2MouseJoint::~b2MouseJoint  @ 0x6d0954
/* WARNING: Removing unreachable block (ram,0x006d0976) */
/* b2MouseJoint::~b2MouseJoint() */

b2MouseJoint * __thiscall b2MouseJoint::~b2MouseJoint(b2MouseJoint *this)

{
  *(undefined ***)this = &PTR_GetAnchorA_1_0093bfc0;
  b2Joint::~b2Joint((b2Joint *)this);
  return this;
}

// ---- b2MouseJoint::~b2MouseJoint  @ 0x6d0990
/* b2MouseJoint::~b2MouseJoint() */

b2MouseJoint * __thiscall b2MouseJoint::~b2MouseJoint(b2MouseJoint *this)

{
  ~b2MouseJoint(this);
  operator_delete(this);
  return this;
}
