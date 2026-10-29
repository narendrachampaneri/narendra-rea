// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 13 functions

// ---- b2GearJoint::b2GearJoint  @ 0x6ce404
/* b2GearJoint::b2GearJoint(b2GearJointDef const*) */

b2GearJoint * __thiscall b2GearJoint::b2GearJoint(b2GearJoint *this,b2GearJointDef *param_1)

{
  undefined4 uVar1;
  int iVar2;
  float fVar3;
  float fVar4;
  float local_98;
  float local_94;
  b2Rot abStack_68 [8];
  undefined4 local_60;
  undefined4 uStack_5c;
  b2Rot abStack_58 [8];
  b2Vec2 abStack_50 [8];
  undefined4 local_48;
  undefined4 uStack_44;
  undefined4 uStack_40;
  undefined4 uStack_3c;
  undefined4 local_38;
  undefined4 uStack_34;
  undefined4 uStack_30;
  undefined4 uStack_2c;
  undefined4 local_28;
  undefined4 uStack_24;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined4 local_18;
  undefined4 uStack_14;
  undefined4 uStack_10;
  undefined4 uStack_c;
  
  b2Joint::b2Joint((b2Joint *)this,(b2JointDef *)param_1);
  *(undefined ***)this = &PTR_GetAnchorA_1_0093bf80;
  b2Vec2::b2Vec2((b2Vec2 *)(this + 0x5c));
  b2Vec2::b2Vec2((b2Vec2 *)(this + 100));
  b2Vec2::b2Vec2((b2Vec2 *)(this + 0x6c));
  b2Vec2::b2Vec2((b2Vec2 *)(this + 0x74));
  b2Vec2::b2Vec2((b2Vec2 *)(this + 0x7c));
  b2Vec2::b2Vec2((b2Vec2 *)(this + 0x84));
  b2Vec2::b2Vec2((b2Vec2 *)(this + 0xb0));
  b2Vec2::b2Vec2((b2Vec2 *)(this + 0xb8));
  b2Vec2::b2Vec2((b2Vec2 *)(this + 0xc0));
  b2Vec2::b2Vec2((b2Vec2 *)(this + 200));
  b2Vec2::b2Vec2((b2Vec2 *)(this + 0xf0));
  b2Vec2::b2Vec2((b2Vec2 *)(this + 0xf8));
  *(undefined4 *)(this + 0x44) = *(undefined4 *)(param_1 + 0x14);
  *(undefined4 *)(this + 0x48) = *(undefined4 *)(param_1 + 0x18);
  uVar1 = b2Joint::GetType(*(b2Joint **)(this + 0x44));
  *(undefined4 *)(this + 0x4c) = uVar1;
  uVar1 = b2Joint::GetType(*(b2Joint **)(this + 0x48));
  *(undefined4 *)(this + 0x50) = uVar1;
  uVar1 = b2Joint::GetBodyA(*(b2Joint **)(this + 0x44));
  *(undefined4 *)(this + 0x54) = uVar1;
  uVar1 = b2Joint::GetBodyB(*(b2Joint **)(this + 0x44));
  *(undefined4 *)(this + 0x30) = uVar1;
  iVar2 = *(int *)(this + 0x30);
  local_48 = *(undefined4 *)(iVar2 + 0xc);
  uStack_44 = *(undefined4 *)(iVar2 + 0x10);
  uStack_40 = *(undefined4 *)(iVar2 + 0x14);
  uStack_3c = *(undefined4 *)(iVar2 + 0x18);
  fVar3 = *(float *)(*(int *)(this + 0x30) + 0x38);
  iVar2 = *(int *)(this + 0x54);
  local_38 = *(undefined4 *)(iVar2 + 0xc);
  uStack_34 = *(undefined4 *)(iVar2 + 0x10);
  uStack_30 = *(undefined4 *)(iVar2 + 0x14);
  uStack_2c = *(undefined4 *)(iVar2 + 0x18);
  fVar4 = *(float *)(*(int *)(this + 0x54) + 0x38);
  if (*(int *)(this + 0x4c) == 1) {
    iVar2 = *(int *)(param_1 + 0x14);
    uVar1 = *(undefined4 *)(iVar2 + 0x48);
    *(undefined4 *)(this + 0x6c) = *(undefined4 *)(iVar2 + 0x44);
    *(undefined4 *)(this + 0x70) = uVar1;
    uVar1 = *(undefined4 *)(iVar2 + 0x50);
    *(undefined4 *)(this + 0x5c) = *(undefined4 *)(iVar2 + 0x4c);
    *(undefined4 *)(this + 0x60) = uVar1;
    *(undefined4 *)(this + 0x8c) = *(undefined4 *)(iVar2 + 0x74);
    b2Vec2::SetZero((b2Vec2 *)(this + 0x7c));
    local_98 = (fVar3 - fVar4) - *(float *)(this + 0x8c);
  }
  else {
    iVar2 = *(int *)(param_1 + 0x14);
    uVar1 = *(undefined4 *)(iVar2 + 0x48);
    *(undefined4 *)(this + 0x6c) = *(undefined4 *)(iVar2 + 0x44);
    *(undefined4 *)(this + 0x70) = uVar1;
    uVar1 = *(undefined4 *)(iVar2 + 0x50);
    *(undefined4 *)(this + 0x5c) = *(undefined4 *)(iVar2 + 0x4c);
    *(undefined4 *)(this + 0x60) = uVar1;
    *(undefined4 *)(this + 0x8c) = *(undefined4 *)(iVar2 + 100);
    uVar1 = *(undefined4 *)(iVar2 + 0x58);
    *(undefined4 *)(this + 0x7c) = *(undefined4 *)(iVar2 + 0x54);
    *(undefined4 *)(this + 0x80) = uVar1;
    local_60 = *(undefined4 *)(this + 0x6c);
    uStack_5c = *(undefined4 *)(this + 0x70);
    b2Mul((b2Rot *)&local_28,(b2Vec2 *)&uStack_40);
    ::operator-((b2Vec2 *)&local_18,(b2Vec2 *)&local_48);
    ::operator+(abStack_50,(b2Vec2 *)&local_28);
    b2MulT(abStack_58,(b2Vec2 *)&uStack_30);
    ::operator-((b2Vec2 *)&local_18,(b2Vec2 *)abStack_58);
    local_98 = (float)b2Dot((b2Vec2 *)&local_18,(b2Vec2 *)(this + 0x7c));
  }
  uVar1 = b2Joint::GetBodyA(*(b2Joint **)(this + 0x48));
  *(undefined4 *)(this + 0x58) = uVar1;
  uVar1 = b2Joint::GetBodyB(*(b2Joint **)(this + 0x48));
  *(undefined4 *)(this + 0x34) = uVar1;
  iVar2 = *(int *)(this + 0x34);
  local_28 = *(undefined4 *)(iVar2 + 0xc);
  uStack_24 = *(undefined4 *)(iVar2 + 0x10);
  uStack_20 = *(undefined4 *)(iVar2 + 0x14);
  uStack_1c = *(undefined4 *)(iVar2 + 0x18);
  fVar3 = *(float *)(*(int *)(this + 0x34) + 0x38);
  iVar2 = *(int *)(this + 0x58);
  local_18 = *(undefined4 *)(iVar2 + 0xc);
  uStack_14 = *(undefined4 *)(iVar2 + 0x10);
  uStack_10 = *(undefined4 *)(iVar2 + 0x14);
  uStack_c = *(undefined4 *)(iVar2 + 0x18);
  fVar4 = *(float *)(*(int *)(this + 0x58) + 0x38);
  if (*(int *)(this + 0x50) == 1) {
    iVar2 = *(int *)(param_1 + 0x18);
    uVar1 = *(undefined4 *)(iVar2 + 0x48);
    *(undefined4 *)(this + 0x74) = *(undefined4 *)(iVar2 + 0x44);
    *(undefined4 *)(this + 0x78) = uVar1;
    uVar1 = *(undefined4 *)(iVar2 + 0x50);
    *(undefined4 *)(this + 100) = *(undefined4 *)(iVar2 + 0x4c);
    *(undefined4 *)(this + 0x68) = uVar1;
    *(undefined4 *)(this + 0x90) = *(undefined4 *)(iVar2 + 0x74);
    b2Vec2::SetZero((b2Vec2 *)(this + 0x84));
    local_94 = (fVar3 - fVar4) - *(float *)(this + 0x90);
  }
  else {
    iVar2 = *(int *)(param_1 + 0x18);
    uVar1 = *(undefined4 *)(iVar2 + 0x48);
    *(undefined4 *)(this + 0x74) = *(undefined4 *)(iVar2 + 0x44);
    *(undefined4 *)(this + 0x78) = uVar1;
    uVar1 = *(undefined4 *)(iVar2 + 0x50);
    *(undefined4 *)(this + 100) = *(undefined4 *)(iVar2 + 0x4c);
    *(undefined4 *)(this + 0x68) = uVar1;
    *(undefined4 *)(this + 0x90) = *(undefined4 *)(iVar2 + 100);
    uVar1 = *(undefined4 *)(iVar2 + 0x58);
    *(undefined4 *)(this + 0x84) = *(undefined4 *)(iVar2 + 0x54);
    *(undefined4 *)(this + 0x88) = uVar1;
    b2Mul(abStack_58,(b2Vec2 *)&uStack_20);
    ::operator-(abStack_50,(b2Vec2 *)&local_28);
    ::operator+((b2Vec2 *)&local_60,(b2Vec2 *)abStack_58);
    b2MulT(abStack_68,(b2Vec2 *)&uStack_10);
    ::operator-(abStack_50,(b2Vec2 *)abStack_68);
    local_94 = (float)b2Dot(abStack_50,(b2Vec2 *)(this + 0x84));
  }
  *(undefined4 *)(this + 0x98) = *(undefined4 *)(param_1 + 0x1c);
  *(float *)(this + 0x94) = *(float *)(this + 0x98) * local_94 + local_98;
  *(undefined4 *)(this + 0x9c) = 0;
  return this;
}

// ---- b2GearJoint::InitVelocityConstraints  @ 0x6ce7d0
/* b2GearJoint::InitVelocityConstraints(b2SolverData const&) */

void b2GearJoint::InitVelocityConstraints(b2SolverData *param_1)

{
  b2SolverData *pbVar1;
  int in_r1;
  undefined4 uVar2;
  undefined4 *puVar3;
  float in_s0;
  float fVar4;
  float extraout_s0;
  float fVar5;
  undefined4 local_c0;
  undefined4 uStack_bc;
  int local_b8;
  b2SolverData *local_b4;
  float local_b0;
  float local_ac;
  float local_a8;
  float local_a4;
  undefined4 local_a0;
  undefined4 local_9c;
  undefined4 local_98;
  undefined4 local_94;
  undefined4 local_90;
  undefined4 uStack_8c;
  undefined4 local_88;
  undefined4 uStack_84;
  undefined4 local_80;
  undefined4 uStack_7c;
  undefined4 local_78;
  undefined4 uStack_74;
  undefined4 local_70;
  undefined4 uStack_6c;
  undefined4 local_68;
  undefined4 uStack_64;
  undefined4 local_60;
  undefined4 uStack_5c;
  undefined4 local_58;
  undefined4 uStack_54;
  b2Rot abStack_50 [8];
  b2Rot abStack_48 [8];
  b2Rot abStack_40 [8];
  b2Rot abStack_38 [8];
  undefined4 local_30;
  undefined4 uStack_2c;
  b2Rot abStack_28 [8];
  b2Rot abStack_20 [8];
  b2Vec2 abStack_18 [8];
  
  *(undefined4 *)(param_1 + 0xa0) = *(undefined4 *)(*(int *)(param_1 + 0x30) + 8);
  *(undefined4 *)(param_1 + 0xa4) = *(undefined4 *)(*(int *)(param_1 + 0x34) + 8);
  *(undefined4 *)(param_1 + 0xa8) = *(undefined4 *)(*(int *)(param_1 + 0x54) + 8);
  *(undefined4 *)(param_1 + 0xac) = *(undefined4 *)(*(int *)(param_1 + 0x58) + 8);
  uVar2 = *(undefined4 *)(*(int *)(param_1 + 0x30) + 0x20);
  *(undefined4 *)(param_1 + 0xb0) = *(undefined4 *)(*(int *)(param_1 + 0x30) + 0x1c);
  *(undefined4 *)(param_1 + 0xb4) = uVar2;
  uVar2 = *(undefined4 *)(*(int *)(param_1 + 0x34) + 0x20);
  *(undefined4 *)(param_1 + 0xb8) = *(undefined4 *)(*(int *)(param_1 + 0x34) + 0x1c);
  *(undefined4 *)(param_1 + 0xbc) = uVar2;
  uVar2 = *(undefined4 *)(*(int *)(param_1 + 0x54) + 0x20);
  *(undefined4 *)(param_1 + 0xc0) = *(undefined4 *)(*(int *)(param_1 + 0x54) + 0x1c);
  *(undefined4 *)(param_1 + 0xc4) = uVar2;
  uVar2 = *(undefined4 *)(*(int *)(param_1 + 0x58) + 0x20);
  *(undefined4 *)(param_1 + 200) = *(undefined4 *)(*(int *)(param_1 + 0x58) + 0x1c);
  *(undefined4 *)(param_1 + 0xcc) = uVar2;
  *(undefined4 *)(param_1 + 0xd0) = *(undefined4 *)(*(int *)(param_1 + 0x30) + 0x78);
  *(undefined4 *)(param_1 + 0xd4) = *(undefined4 *)(*(int *)(param_1 + 0x34) + 0x78);
  *(undefined4 *)(param_1 + 0xd8) = *(undefined4 *)(*(int *)(param_1 + 0x54) + 0x78);
  *(undefined4 *)(param_1 + 0xdc) = *(undefined4 *)(*(int *)(param_1 + 0x58) + 0x78);
  *(undefined4 *)(param_1 + 0xe0) = *(undefined4 *)(*(int *)(param_1 + 0x30) + 0x80);
  *(undefined4 *)(param_1 + 0xe4) = *(undefined4 *)(*(int *)(param_1 + 0x34) + 0x80);
  *(undefined4 *)(param_1 + 0xe8) = *(undefined4 *)(*(int *)(param_1 + 0x54) + 0x80);
  *(undefined4 *)(param_1 + 0xec) = *(undefined4 *)(*(int *)(param_1 + 0x58) + 0x80);
  puVar3 = (undefined4 *)(*(int *)(in_r1 + 0x18) + *(int *)(param_1 + 0xa0) * 0xc);
  local_90 = *puVar3;
  uStack_8c = puVar3[1];
  local_a0 = *(undefined4 *)(*(int *)(param_1 + 0xa0) * 0xc + *(int *)(in_r1 + 0x18) + 8);
  puVar3 = (undefined4 *)(*(int *)(in_r1 + 0x1c) + *(int *)(param_1 + 0xa0) * 0xc);
  local_88 = *puVar3;
  uStack_84 = puVar3[1];
  local_b0 = *(float *)(*(int *)(param_1 + 0xa0) * 0xc + *(int *)(in_r1 + 0x1c) + 8);
  puVar3 = (undefined4 *)(*(int *)(in_r1 + 0x18) + *(int *)(param_1 + 0xa4) * 0xc);
  local_80 = *puVar3;
  uStack_7c = puVar3[1];
  local_9c = *(undefined4 *)(*(int *)(param_1 + 0xa4) * 0xc + *(int *)(in_r1 + 0x18) + 8);
  puVar3 = (undefined4 *)(*(int *)(in_r1 + 0x1c) + *(int *)(param_1 + 0xa4) * 0xc);
  local_78 = *puVar3;
  uStack_74 = puVar3[1];
  local_ac = *(float *)(*(int *)(param_1 + 0xa4) * 0xc + *(int *)(in_r1 + 0x1c) + 8);
  puVar3 = (undefined4 *)(*(int *)(in_r1 + 0x18) + *(int *)(param_1 + 0xa8) * 0xc);
  local_70 = *puVar3;
  uStack_6c = puVar3[1];
  local_98 = *(undefined4 *)(*(int *)(param_1 + 0xa8) * 0xc + *(int *)(in_r1 + 0x18) + 8);
  puVar3 = (undefined4 *)(*(int *)(in_r1 + 0x1c) + *(int *)(param_1 + 0xa8) * 0xc);
  local_68 = *puVar3;
  uStack_64 = puVar3[1];
  local_a8 = *(float *)(*(int *)(param_1 + 0xa8) * 0xc + *(int *)(in_r1 + 0x1c) + 8);
  puVar3 = (undefined4 *)(*(int *)(in_r1 + 0x18) + *(int *)(param_1 + 0xac) * 0xc);
  local_60 = *puVar3;
  uStack_5c = puVar3[1];
  local_94 = *(undefined4 *)(*(int *)(param_1 + 0xac) * 0xc + *(int *)(in_r1 + 0x18) + 8);
  puVar3 = (undefined4 *)(*(int *)(in_r1 + 0x1c) + *(int *)(param_1 + 0xac) * 0xc);
  local_58 = *puVar3;
  uStack_54 = puVar3[1];
  local_a4 = *(float *)(*(int *)(param_1 + 0xac) * 0xc + *(int *)(in_r1 + 0x1c) + 8);
  local_b8 = in_r1;
  local_b4 = param_1;
  fVar4 = (float)b2Rot::b2Rot(abStack_50,in_s0);
  fVar4 = (float)b2Rot::b2Rot(abStack_48,fVar4);
  fVar4 = (float)b2Rot::b2Rot(abStack_40,fVar4);
  b2Rot::b2Rot(abStack_38,fVar4);
  *(undefined4 *)(local_b4 + 0x110) = 0;
  if (*(int *)(local_b4 + 0x4c) == 1) {
    b2Vec2::SetZero((b2Vec2 *)(local_b4 + 0xf0));
    *(undefined4 *)(local_b4 + 0x100) = 0x3f800000;
    *(undefined4 *)(local_b4 + 0x108) = 0x3f800000;
    *(float *)(local_b4 + 0x110) =
         *(float *)(local_b4 + 0x110) + *(float *)(local_b4 + 0xe0) + *(float *)(local_b4 + 0xe8);
  }
  else {
    b2Mul((b2Rot *)&local_30,(b2Vec2 *)abStack_40);
    ::operator-(abStack_18,(b2Vec2 *)(local_b4 + 0x6c));
    b2Mul(abStack_28,(b2Vec2 *)abStack_40);
    ::operator-(abStack_18,(b2Vec2 *)(local_b4 + 0x5c));
    b2Mul(abStack_20,(b2Vec2 *)abStack_50);
    *(undefined4 *)(local_b4 + 0xf0) = local_30;
    *(undefined4 *)(local_b4 + 0xf4) = uStack_2c;
    uVar2 = b2Cross((b2Vec2 *)abStack_28,(b2Vec2 *)&local_30);
    *(undefined4 *)(local_b4 + 0x108) = uVar2;
    uVar2 = b2Cross((b2Vec2 *)abStack_20,(b2Vec2 *)&local_30);
    *(undefined4 *)(local_b4 + 0x100) = uVar2;
    *(float *)(local_b4 + 0x110) =
         *(float *)(local_b4 + 0x110) +
         *(float *)(local_b4 + 0xd8) + *(float *)(local_b4 + 0xd0) +
         *(float *)(local_b4 + 0xe8) * *(float *)(local_b4 + 0x108) * *(float *)(local_b4 + 0x108) +
         *(float *)(local_b4 + 0xe0) * *(float *)(local_b4 + 0x100) * *(float *)(local_b4 + 0x100);
  }
  if (*(int *)(local_b4 + 0x50) == 1) {
    fVar4 = (float)b2Vec2::SetZero((b2Vec2 *)(local_b4 + 0xf8));
    *(undefined4 *)(local_b4 + 0x104) = *(undefined4 *)(local_b4 + 0x98);
    *(undefined4 *)(local_b4 + 0x10c) = *(undefined4 *)(local_b4 + 0x98);
    *(float *)(local_b4 + 0x110) =
         *(float *)(local_b4 + 0x110) +
         *(float *)(local_b4 + 0x98) * *(float *)(local_b4 + 0x98) *
         (*(float *)(local_b4 + 0xe4) + *(float *)(local_b4 + 0xec));
  }
  else {
    b2Mul((b2Rot *)&local_30,(b2Vec2 *)abStack_38);
    ::operator-(abStack_18,(b2Vec2 *)(local_b4 + 0x74));
    b2Mul(abStack_28,(b2Vec2 *)abStack_38);
    ::operator-(abStack_18,(b2Vec2 *)(local_b4 + 100));
    fVar4 = (float)b2Mul(abStack_20,(b2Vec2 *)abStack_48);
    pbVar1 = local_b4;
    ::operator*(fVar4,(b2Vec2 *)&local_c0);
    *(undefined4 *)(pbVar1 + 0xf8) = local_c0;
    *(undefined4 *)(pbVar1 + 0xfc) = uStack_bc;
    fVar5 = *(float *)(local_b4 + 0x98);
    fVar4 = (float)b2Cross((b2Vec2 *)abStack_28,(b2Vec2 *)&local_30);
    *(float *)(local_b4 + 0x10c) = fVar5 * fVar4;
    fVar5 = *(float *)(local_b4 + 0x98);
    fVar4 = (float)b2Cross((b2Vec2 *)abStack_20,(b2Vec2 *)&local_30);
    *(float *)(local_b4 + 0x104) = fVar5 * fVar4;
    *(float *)(local_b4 + 0x110) =
         *(float *)(local_b4 + 0x110) +
         *(float *)(local_b4 + 0x98) * *(float *)(local_b4 + 0x98) *
         (*(float *)(local_b4 + 0xdc) + *(float *)(local_b4 + 0xd4)) +
         *(float *)(local_b4 + 0xec) * *(float *)(local_b4 + 0x10c) * *(float *)(local_b4 + 0x10c) +
         *(float *)(local_b4 + 0xe4) * *(float *)(local_b4 + 0x104) * *(float *)(local_b4 + 0x104);
    fVar4 = extraout_s0;
  }
  if (*(float *)(local_b4 + 0x110) <= 0.0) {
    fVar5 = 0.0;
  }
  else {
    fVar5 = 1.0 / *(float *)(local_b4 + 0x110);
  }
  *(float *)(local_b4 + 0x110) = fVar5;
  if (*(char *)(local_b8 + 0x14) == '\0') {
    *(undefined4 *)(local_b4 + 0x9c) = 0;
  }
  else {
    ::operator*(fVar4,abStack_18);
    fVar4 = (float)b2Vec2::operator+=((b2Vec2 *)&local_88,abStack_18);
    local_b0 = local_b0 +
               *(float *)(local_b4 + 0xe0) * *(float *)(local_b4 + 0x9c) *
               *(float *)(local_b4 + 0x100);
    ::operator*(fVar4,abStack_18);
    fVar4 = (float)b2Vec2::operator+=((b2Vec2 *)&local_78,abStack_18);
    local_ac = local_ac +
               *(float *)(local_b4 + 0xe4) * *(float *)(local_b4 + 0x9c) *
               *(float *)(local_b4 + 0x104);
    ::operator*(fVar4,abStack_18);
    fVar4 = (float)b2Vec2::operator-=((b2Vec2 *)&local_68,abStack_18);
    local_a8 = local_a8 -
               *(float *)(local_b4 + 0xe8) * *(float *)(local_b4 + 0x9c) *
               *(float *)(local_b4 + 0x108);
    ::operator*(fVar4,abStack_18);
    b2Vec2::operator-=((b2Vec2 *)&local_58,abStack_18);
    local_a4 = local_a4 -
               *(float *)(local_b4 + 0xec) * *(float *)(local_b4 + 0x9c) *
               *(float *)(local_b4 + 0x10c);
  }
  puVar3 = (undefined4 *)(*(int *)(local_b4 + 0xa0) * 0xc + *(int *)(local_b8 + 0x1c));
  *puVar3 = local_88;
  puVar3[1] = uStack_84;
  *(float *)(*(int *)(local_b4 + 0xa0) * 0xc + *(int *)(local_b8 + 0x1c) + 8) = local_b0;
  puVar3 = (undefined4 *)(*(int *)(local_b4 + 0xa4) * 0xc + *(int *)(local_b8 + 0x1c));
  *puVar3 = local_78;
  puVar3[1] = uStack_74;
  *(float *)(*(int *)(local_b4 + 0xa4) * 0xc + *(int *)(local_b8 + 0x1c) + 8) = local_ac;
  puVar3 = (undefined4 *)(*(int *)(local_b4 + 0xa8) * 0xc + *(int *)(local_b8 + 0x1c));
  *puVar3 = local_68;
  puVar3[1] = uStack_64;
  *(float *)(*(int *)(local_b4 + 0xa8) * 0xc + *(int *)(local_b8 + 0x1c) + 8) = local_a8;
  puVar3 = (undefined4 *)(*(int *)(local_b4 + 0xac) * 0xc + *(int *)(local_b8 + 0x1c));
  *puVar3 = local_58;
  puVar3[1] = uStack_54;
  *(float *)(*(int *)(local_b4 + 0xac) * 0xc + *(int *)(local_b8 + 0x1c) + 8) = local_a4;
  return;
}

// ---- b2GearJoint::SolveVelocityConstraints  @ 0x6cf00c
/* b2GearJoint::SolveVelocityConstraints(b2SolverData const&) */

void __thiscall b2GearJoint::SolveVelocityConstraints(b2GearJoint *this,b2SolverData *param_1)

{
  float fVar1;
  float fVar2;
  undefined4 *puVar3;
  float fVar4;
  float fVar5;
  float fVar6;
  float fVar7;
  float extraout_s0;
  float fVar8;
  float fVar9;
  float fVar10;
  float fVar11;
  float fVar12;
  float fVar13;
  float fVar14;
  undefined4 local_40;
  undefined4 uStack_3c;
  undefined4 local_38;
  undefined4 uStack_34;
  undefined4 local_30;
  undefined4 uStack_2c;
  undefined4 local_28;
  undefined4 uStack_24;
  b2Vec2 abStack_20 [8];
  b2Vec2 abStack_18 [8];
  
  puVar3 = (undefined4 *)(*(int *)(param_1 + 0x1c) + *(int *)(this + 0xa0) * 0xc);
  local_40 = *puVar3;
  uStack_3c = puVar3[1];
  fVar4 = *(float *)(*(int *)(this + 0xa0) * 0xc + *(int *)(param_1 + 0x1c) + 8);
  puVar3 = (undefined4 *)(*(int *)(param_1 + 0x1c) + *(int *)(this + 0xa4) * 0xc);
  local_38 = *puVar3;
  uStack_34 = puVar3[1];
  fVar5 = *(float *)(*(int *)(this + 0xa4) * 0xc + *(int *)(param_1 + 0x1c) + 8);
  puVar3 = (undefined4 *)(*(int *)(param_1 + 0x1c) + *(int *)(this + 0xa8) * 0xc);
  local_30 = *puVar3;
  uStack_2c = puVar3[1];
  fVar6 = *(float *)(*(int *)(this + 0xa8) * 0xc + *(int *)(param_1 + 0x1c) + 8);
  puVar3 = (undefined4 *)(*(int *)(param_1 + 0x1c) + *(int *)(this + 0xac) * 0xc);
  local_28 = *puVar3;
  uStack_24 = puVar3[1];
  fVar7 = *(float *)(*(int *)(this + 0xac) * 0xc + *(int *)(param_1 + 0x1c) + 8);
  ::operator-(abStack_20,(b2Vec2 *)&local_40);
  fVar1 = (float)b2Dot((b2Vec2 *)(this + 0xf0),abStack_20);
  ::operator-(abStack_18,(b2Vec2 *)&local_38);
  fVar2 = (float)b2Dot((b2Vec2 *)(this + 0xf8),abStack_18);
  fVar10 = -*(float *)(this + 0x110) *
           (fVar1 + fVar2 +
           (*(float *)(this + 0x100) * fVar4 - *(float *)(this + 0x108) * fVar6) +
           (*(float *)(this + 0x104) * fVar5 - *(float *)(this + 0x10c) * fVar7));
  *(float *)(this + 0x9c) = *(float *)(this + 0x9c) + fVar10;
  ::operator*(extraout_s0,abStack_18);
  fVar1 = (float)b2Vec2::operator+=((b2Vec2 *)&local_40,abStack_18);
  fVar2 = *(float *)(this + 0xe0);
  fVar11 = *(float *)(this + 0x100);
  ::operator*(fVar1,abStack_18);
  fVar1 = (float)b2Vec2::operator+=((b2Vec2 *)&local_38,abStack_18);
  fVar8 = *(float *)(this + 0xe4);
  fVar12 = *(float *)(this + 0x104);
  ::operator*(fVar1,abStack_18);
  fVar1 = (float)b2Vec2::operator-=((b2Vec2 *)&local_30,abStack_18);
  fVar9 = *(float *)(this + 0xe8);
  fVar13 = *(float *)(this + 0x108);
  ::operator*(fVar1,abStack_18);
  b2Vec2::operator-=((b2Vec2 *)&local_28,abStack_18);
  fVar1 = *(float *)(this + 0xec);
  fVar14 = *(float *)(this + 0x10c);
  puVar3 = (undefined4 *)(*(int *)(this + 0xa0) * 0xc + *(int *)(param_1 + 0x1c));
  *puVar3 = local_40;
  puVar3[1] = uStack_3c;
  *(float *)(*(int *)(this + 0xa0) * 0xc + *(int *)(param_1 + 0x1c) + 8) =
       fVar4 + fVar2 * fVar10 * fVar11;
  puVar3 = (undefined4 *)(*(int *)(this + 0xa4) * 0xc + *(int *)(param_1 + 0x1c));
  *puVar3 = local_38;
  puVar3[1] = uStack_34;
  *(float *)(*(int *)(this + 0xa4) * 0xc + *(int *)(param_1 + 0x1c) + 8) =
       fVar5 + fVar8 * fVar10 * fVar12;
  puVar3 = (undefined4 *)(*(int *)(this + 0xa8) * 0xc + *(int *)(param_1 + 0x1c));
  *puVar3 = local_30;
  puVar3[1] = uStack_2c;
  *(float *)(*(int *)(this + 0xa8) * 0xc + *(int *)(param_1 + 0x1c) + 8) =
       fVar6 - fVar9 * fVar10 * fVar13;
  puVar3 = (undefined4 *)(*(int *)(this + 0xac) * 0xc + *(int *)(param_1 + 0x1c));
  *puVar3 = local_28;
  puVar3[1] = uStack_24;
  *(float *)(*(int *)(this + 0xac) * 0xc + *(int *)(param_1 + 0x1c) + 8) =
       fVar7 - fVar1 * fVar10 * fVar14;
  return;
}

// ---- b2GearJoint::SolvePositionConstraints  @ 0x6cf3fc
/* b2GearJoint::SolvePositionConstraints(b2SolverData const&) */

undefined1 b2GearJoint::SolvePositionConstraints(b2SolverData *param_1)

{
  int iVar1;
  int in_r1;
  undefined4 *puVar2;
  undefined1 uVar3;
  int iVar4;
  float in_s0;
  float fVar5;
  float extraout_s0;
  undefined4 local_e0;
  undefined4 uStack_dc;
  int local_d8;
  b2SolverData *local_d4;
  float local_d0;
  float local_cc;
  float local_c8;
  float local_c4;
  float local_c0;
  float local_bc;
  float local_b8;
  float local_b4;
  float local_b0;
  float local_ac;
  float local_a8;
  float local_a4;
  float local_a0;
  float local_9c;
  undefined4 local_98;
  undefined4 uStack_94;
  undefined4 local_90;
  undefined4 uStack_8c;
  undefined4 local_88;
  undefined4 uStack_84;
  undefined4 local_80;
  undefined4 uStack_7c;
  b2Rot abStack_78 [8];
  b2Rot abStack_70 [8];
  b2Rot abStack_68 [8];
  b2Rot abStack_60 [8];
  undefined4 local_58;
  undefined4 uStack_54;
  undefined4 local_50;
  undefined4 uStack_4c;
  undefined4 local_48;
  undefined4 uStack_44;
  b2Rot abStack_40 [8];
  b2Rot abStack_38 [8];
  b2Vec2 abStack_30 [8];
  b2Rot abStack_28 [8];
  b2Vec2 abStack_20 [8];
  b2Vec2 abStack_18 [12];
  
  puVar2 = (undefined4 *)(*(int *)(in_r1 + 0x18) + *(int *)(param_1 + 0xa0) * 0xc);
  local_98 = *puVar2;
  uStack_94 = puVar2[1];
  local_b0 = *(float *)(*(int *)(param_1 + 0xa0) * 0xc + *(int *)(in_r1 + 0x18) + 8);
  puVar2 = (undefined4 *)(*(int *)(in_r1 + 0x18) + *(int *)(param_1 + 0xa4) * 0xc);
  local_90 = *puVar2;
  uStack_8c = puVar2[1];
  local_ac = *(float *)(*(int *)(param_1 + 0xa4) * 0xc + *(int *)(in_r1 + 0x18) + 8);
  puVar2 = (undefined4 *)(*(int *)(in_r1 + 0x18) + *(int *)(param_1 + 0xa8) * 0xc);
  local_88 = *puVar2;
  uStack_84 = puVar2[1];
  local_a8 = *(float *)(*(int *)(param_1 + 0xa8) * 0xc + *(int *)(in_r1 + 0x18) + 8);
  puVar2 = (undefined4 *)(*(int *)(in_r1 + 0x18) + *(int *)(param_1 + 0xac) * 0xc);
  local_80 = *puVar2;
  uStack_7c = puVar2[1];
  local_a4 = *(float *)(*(int *)(param_1 + 0xac) * 0xc + *(int *)(in_r1 + 0x18) + 8);
  local_d8 = in_r1;
  local_d4 = param_1;
  fVar5 = (float)b2Rot::b2Rot(abStack_78,in_s0);
  fVar5 = (float)b2Rot::b2Rot(abStack_70,fVar5);
  fVar5 = (float)b2Rot::b2Rot(abStack_68,fVar5);
  b2Rot::b2Rot(abStack_60,fVar5);
  local_a0 = 0.0;
  b2Vec2::b2Vec2((b2Vec2 *)&local_58);
  b2Vec2::b2Vec2((b2Vec2 *)&local_50);
  local_b8 = 0.0;
  if (*(int *)(local_d4 + 0x4c) == 1) {
    b2Vec2::SetZero((b2Vec2 *)&local_58);
    local_c8 = 1.0;
    local_c0 = 1.0;
    local_b8 = local_b8 + *(float *)(local_d4 + 0xe0) + *(float *)(local_d4 + 0xe8);
    local_d0 = (local_b0 - local_a8) - *(float *)(local_d4 + 0x8c);
  }
  else {
    b2Mul((b2Rot *)&local_48,(b2Vec2 *)abStack_68);
    ::operator-(abStack_18,(b2Vec2 *)(local_d4 + 0x6c));
    b2Mul(abStack_40,(b2Vec2 *)abStack_68);
    ::operator-(abStack_18,(b2Vec2 *)(local_d4 + 0x5c));
    b2Mul(abStack_38,(b2Vec2 *)abStack_78);
    local_58 = local_48;
    uStack_54 = uStack_44;
    local_c0 = (float)b2Cross((b2Vec2 *)abStack_40,(b2Vec2 *)&local_48);
    local_c8 = (float)b2Cross((b2Vec2 *)abStack_38,(b2Vec2 *)&local_48);
    local_b8 = local_b8 +
               *(float *)(local_d4 + 0xd8) + *(float *)(local_d4 + 0xd0) +
               *(float *)(local_d4 + 0xe8) * local_c0 * local_c0 +
               *(float *)(local_d4 + 0xe0) * local_c8 * local_c8;
    ::operator-(abStack_30,(b2Vec2 *)(local_d4 + 0x6c));
    ::operator-(abStack_20,(b2Vec2 *)&local_98);
    ::operator+(abStack_18,(b2Vec2 *)abStack_38);
    b2MulT(abStack_28,(b2Vec2 *)abStack_68);
    ::operator-(abStack_18,(b2Vec2 *)abStack_28);
    local_d0 = (float)b2Dot(abStack_18,(b2Vec2 *)(local_d4 + 0x7c));
  }
  if (*(int *)(local_d4 + 0x50) == 1) {
    fVar5 = (float)b2Vec2::SetZero((b2Vec2 *)&local_50);
    local_c4 = *(float *)(local_d4 + 0x98);
    local_bc = *(float *)(local_d4 + 0x98);
    local_b8 = local_b8 +
               *(float *)(local_d4 + 0x98) * *(float *)(local_d4 + 0x98) *
               (*(float *)(local_d4 + 0xe4) + *(float *)(local_d4 + 0xec));
    local_cc = (local_ac - local_a4) - *(float *)(local_d4 + 0x90);
  }
  else {
    b2Mul((b2Rot *)&local_48,(b2Vec2 *)abStack_60);
    ::operator-(abStack_18,(b2Vec2 *)(local_d4 + 0x74));
    b2Mul(abStack_40,(b2Vec2 *)abStack_60);
    ::operator-(abStack_18,(b2Vec2 *)(local_d4 + 100));
    fVar5 = (float)b2Mul(abStack_38,(b2Vec2 *)abStack_70);
    ::operator*(fVar5,(b2Vec2 *)&local_e0);
    local_50 = local_e0;
    uStack_4c = uStack_dc;
    fVar5 = *(float *)(local_d4 + 0x98);
    local_bc = (float)b2Cross((b2Vec2 *)abStack_40,(b2Vec2 *)&local_48);
    local_bc = fVar5 * local_bc;
    fVar5 = *(float *)(local_d4 + 0x98);
    local_c4 = (float)b2Cross((b2Vec2 *)abStack_38,(b2Vec2 *)&local_48);
    local_c4 = fVar5 * local_c4;
    local_b8 = local_b8 +
               *(float *)(local_d4 + 0x98) * *(float *)(local_d4 + 0x98) *
               (*(float *)(local_d4 + 0xdc) + *(float *)(local_d4 + 0xd4)) +
               *(float *)(local_d4 + 0xec) * local_bc * local_bc +
               *(float *)(local_d4 + 0xe4) * local_c4 * local_c4;
    ::operator-(abStack_30,(b2Vec2 *)(local_d4 + 0x74));
    ::operator-(abStack_20,(b2Vec2 *)&local_90);
    ::operator+(abStack_18,(b2Vec2 *)abStack_38);
    b2MulT(abStack_28,(b2Vec2 *)abStack_60);
    ::operator-(abStack_18,(b2Vec2 *)abStack_28);
    local_cc = (float)b2Dot(abStack_18,(b2Vec2 *)(local_d4 + 0x84));
    fVar5 = extraout_s0;
  }
  local_9c = (*(float *)(local_d4 + 0x98) * local_cc + local_d0) - *(float *)(local_d4 + 0x94);
  local_b4 = 0.0;
  if (0.0 < local_b8) {
    local_b4 = -local_9c / local_b8;
  }
  ::operator*(fVar5,abStack_18);
  fVar5 = (float)b2Vec2::operator+=((b2Vec2 *)&local_98,abStack_18);
  local_b0 = local_b0 + *(float *)(local_d4 + 0xe0) * local_b4 * local_c8;
  ::operator*(fVar5,abStack_18);
  fVar5 = (float)b2Vec2::operator+=((b2Vec2 *)&local_90,abStack_18);
  local_ac = local_ac + *(float *)(local_d4 + 0xe4) * local_b4 * local_c4;
  ::operator*(fVar5,abStack_18);
  fVar5 = (float)b2Vec2::operator-=((b2Vec2 *)&local_88,abStack_18);
  local_a8 = local_a8 - *(float *)(local_d4 + 0xe8) * local_b4 * local_c0;
  ::operator*(fVar5,abStack_18);
  b2Vec2::operator-=((b2Vec2 *)&local_80,abStack_18);
  fVar5 = *(float *)(local_d4 + 0xec);
  puVar2 = (undefined4 *)(*(int *)(local_d4 + 0xa0) * 0xc + *(int *)(local_d8 + 0x18));
  *puVar2 = local_98;
  puVar2[1] = uStack_94;
  *(float *)(*(int *)(local_d4 + 0xa0) * 0xc + *(int *)(local_d8 + 0x18) + 8) = local_b0;
  puVar2 = (undefined4 *)(*(int *)(local_d4 + 0xa4) * 0xc + *(int *)(local_d8 + 0x18));
  *puVar2 = local_90;
  puVar2[1] = uStack_8c;
  *(float *)(*(int *)(local_d4 + 0xa4) * 0xc + *(int *)(local_d8 + 0x18) + 8) = local_ac;
  puVar2 = (undefined4 *)(*(int *)(local_d4 + 0xa8) * 0xc + *(int *)(local_d8 + 0x18));
  *puVar2 = local_88;
  puVar2[1] = uStack_84;
  *(float *)(*(int *)(local_d4 + 0xa8) * 0xc + *(int *)(local_d8 + 0x18) + 8) = local_a8;
  puVar2 = (undefined4 *)(*(int *)(local_d4 + 0xac) * 0xc + *(int *)(local_d8 + 0x18));
  *puVar2 = local_80;
  puVar2[1] = uStack_7c;
  iVar4 = *(int *)(local_d4 + 0xac) * 0xc + *(int *)(local_d8 + 0x18);
  *(float *)(iVar4 + 8) = local_a4 - fVar5 * local_b4 * local_bc;
  iVar1 = (uint)(local_a0 < 0.005) << 0x1f;
  if (-1 < iVar1) {
    iVar4 = 0;
  }
  uVar3 = (undefined1)iVar4;
  if (iVar1 < 0) {
    uVar3 = 1;
  }
  return uVar3;
}

// ---- b2GearJoint::GetAnchorA  @ 0x6cfb48
/* b2GearJoint::GetAnchorA() const */

b2Body * b2GearJoint::GetAnchorA(void)

{
  b2Body *in_r0;
  int in_r1;
  
  b2Body::GetWorldPoint(in_r0,*(b2Vec2 **)(in_r1 + 0x30));
  return in_r0;
}

// ---- b2GearJoint::GetAnchorB  @ 0x6cfb6c
/* b2GearJoint::GetAnchorB() const */

b2Body * b2GearJoint::GetAnchorB(void)

{
  b2Body *in_r0;
  int in_r1;
  
  b2Body::GetWorldPoint(in_r0,*(b2Vec2 **)(in_r1 + 0x34));
  return in_r0;
}

// ---- b2GearJoint::GetReactionForce  @ 0x6cfb90
/* b2GearJoint::GetReactionForce(float) const */

b2GearJoint * __thiscall b2GearJoint::GetReactionForce(b2GearJoint *this,float param_1)

{
  float fVar1;
  b2Vec2 abStack_10 [12];
  
  fVar1 = (float)::operator*(param_1,abStack_10);
  ::operator*(fVar1,(b2Vec2 *)this);
  return this;
}

// ---- b2GearJoint::GetReactionTorque  @ 0x6cfbc8
/* b2GearJoint::GetReactionTorque(float) const */

float __thiscall b2GearJoint::GetReactionTorque(b2GearJoint *this,float param_1)

{
  float in_r1;
  
  return in_r1 * *(float *)(this + 0x9c) * *(float *)(this + 0x100);
}

// ---- b2GearJoint::SetRatio  @ 0x6cfbf8
/* b2GearJoint::SetRatio(float) */

void __thiscall b2GearJoint::SetRatio(b2GearJoint *this,float param_1)

{
  undefined4 in_r1;
  
  *(undefined4 *)(this + 0x98) = in_r1;
  return;
}

// ---- b2GearJoint::GetRatio  @ 0x6cfc0c
/* b2GearJoint::GetRatio() const */

undefined4 __thiscall b2GearJoint::GetRatio(b2GearJoint *this)

{
  return *(undefined4 *)(this + 0x98);
}

// ---- b2GearJoint::Dump  @ 0x6cfc1c
/* b2GearJoint::Dump() */

void __thiscall b2GearJoint::Dump(b2GearJoint *this)

{
  undefined4 extraout_r1;
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  
  uVar1 = *(undefined4 *)(*(int *)(this + 0x30) + 8);
  uVar2 = *(undefined4 *)(*(int *)(this + 0x34) + 8);
  uVar3 = *(undefined4 *)(*(int *)(this + 0x44) + 0x38);
  uVar4 = *(undefined4 *)(*(int *)(this + 0x48) + 0x38);
  b2Log("  b2GearJointDef jd;\n");
  b2Log("  jd.bodyA = bodies[%d];\n",uVar1);
  b2Log("  jd.bodyB = bodies[%d];\n",uVar2);
  b2Log("  jd.collideConnected = bool(%d);\n",(uint)(byte)this[0x3d]);
  b2Log("  jd.joint1 = joints[%d];\n",uVar3);
  b2Log("  jd.joint2 = joints[%d];\n",uVar4);
  b2Log("  jd.ratio = %.15lef;\n",extraout_r1,SUB84((double)*(float *)(this + 0x98),0),
        (int)((ulonglong)(double)*(float *)(this + 0x98) >> 0x20));
  b2Log("  joints[%d] = m_world->CreateJoint(&jd);\n",*(undefined4 *)(this + 0x38));
  return;
}

// ---- b2GearJoint::~b2GearJoint  @ 0x6cfcdc
/* WARNING: Removing unreachable block (ram,0x006cfcfe) */
/* b2GearJoint::~b2GearJoint() */

b2GearJoint * __thiscall b2GearJoint::~b2GearJoint(b2GearJoint *this)

{
  *(undefined ***)this = &PTR_GetAnchorA_1_0093bf80;
  b2Joint::~b2Joint((b2Joint *)this);
  return this;
}

// ---- b2GearJoint::~b2GearJoint  @ 0x6cfd18
/* b2GearJoint::~b2GearJoint() */

b2GearJoint * __thiscall b2GearJoint::~b2GearJoint(b2GearJoint *this)

{
  ~b2GearJoint(this);
  operator_delete(this);
  return this;
}
