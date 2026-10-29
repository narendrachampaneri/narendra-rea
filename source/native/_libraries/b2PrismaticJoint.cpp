// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 23 functions

// ---- b2PrismaticJoint::b2PrismaticJoint  @ 0x6d0d80
/* b2PrismaticJoint::b2PrismaticJoint(b2PrismaticJointDef const*) */

b2PrismaticJoint * __thiscall
b2PrismaticJoint::b2PrismaticJoint(b2PrismaticJoint *this,b2PrismaticJointDef *param_1)

{
  b2PrismaticJoint *pbVar1;
  undefined4 uVar2;
  float fVar3;
  undefined4 local_18;
  undefined4 uStack_14;
  b2PrismaticJointDef *local_10;
  b2PrismaticJoint *local_c;
  
  local_10 = param_1;
  local_c = this;
  b2Joint::b2Joint((b2Joint *)this,(b2JointDef *)param_1);
  *(undefined ***)local_c = &PTR_GetAnchorA_1_0093c000;
  b2Vec2::b2Vec2((b2Vec2 *)(local_c + 0x44));
  b2Vec2::b2Vec2((b2Vec2 *)(local_c + 0x4c));
  b2Vec2::b2Vec2((b2Vec2 *)(local_c + 0x54));
  b2Vec2::b2Vec2((b2Vec2 *)(local_c + 0x5c));
  b2Vec3::b2Vec3((b2Vec3 *)(local_c + 0x68));
  b2Vec2::b2Vec2((b2Vec2 *)(local_c + 0x98));
  b2Vec2::b2Vec2((b2Vec2 *)(local_c + 0xa0));
  b2Vec2::b2Vec2((b2Vec2 *)(local_c + 0xb8));
  b2Vec2::b2Vec2((b2Vec2 *)(local_c + 0xc0));
  b2Mat33::b2Mat33((b2Mat33 *)(local_c + 0xd8));
  uVar2 = *(undefined4 *)(local_10 + 0x18);
  *(undefined4 *)(local_c + 0x44) = *(undefined4 *)(local_10 + 0x14);
  *(undefined4 *)(local_c + 0x48) = uVar2;
  uVar2 = *(undefined4 *)(local_10 + 0x20);
  *(undefined4 *)(local_c + 0x4c) = *(undefined4 *)(local_10 + 0x1c);
  *(undefined4 *)(local_c + 0x50) = uVar2;
  uVar2 = *(undefined4 *)(local_10 + 0x28);
  *(undefined4 *)(local_c + 0x54) = *(undefined4 *)(local_10 + 0x24);
  *(undefined4 *)(local_c + 0x58) = uVar2;
  fVar3 = (float)b2Vec2::Normalize((b2Vec2 *)(local_c + 0x54));
  pbVar1 = local_c;
  b2Cross(fVar3,(b2Vec2 *)&local_18);
  *(undefined4 *)(pbVar1 + 0x5c) = local_18;
  *(undefined4 *)(pbVar1 + 0x60) = uStack_14;
  *(undefined4 *)(local_c + 100) = *(undefined4 *)(local_10 + 0x2c);
  b2Vec3::SetZero((b2Vec3 *)(local_c + 0x68));
  *(undefined4 *)(local_c + 0xfc) = 0;
  *(undefined4 *)(local_c + 0x74) = 0;
  *(undefined4 *)(local_c + 0x78) = *(undefined4 *)(local_10 + 0x34);
  *(undefined4 *)(local_c + 0x7c) = *(undefined4 *)(local_10 + 0x38);
  *(undefined4 *)(local_c + 0x80) = *(undefined4 *)(local_10 + 0x40);
  *(undefined4 *)(local_c + 0x84) = *(undefined4 *)(local_10 + 0x44);
  local_c[0x88] = *(b2PrismaticJoint *)(local_10 + 0x30);
  local_c[0x89] = *(b2PrismaticJoint *)(local_10 + 0x3c);
  *(undefined4 *)(local_c + 0x8c) = 0;
  b2Vec2::SetZero((b2Vec2 *)(local_c + 0xb8));
  b2Vec2::SetZero((b2Vec2 *)(local_c + 0xc0));
  return local_c;
}

// ---- b2PrismaticJoint::InitVelocityConstraints  @ 0x6d0efc
/* b2PrismaticJoint::InitVelocityConstraints(b2SolverData const&) */

void b2PrismaticJoint::InitVelocityConstraints(b2SolverData *param_1)

{
  int iVar1;
  b2SolverData *pbVar2;
  float extraout_r0;
  int in_r1;
  undefined4 uVar3;
  undefined4 *puVar4;
  char extraout_r3;
  char cVar5;
  float in_s0;
  float fVar6;
  float extraout_s0;
  float extraout_s0_00;
  float extraout_s0_01;
  float extraout_s0_02;
  float extraout_s1;
  float extraout_s1_00;
  float extraout_s1_01;
  float extraout_s2;
  float extraout_s2_00;
  float extraout_s2_01;
  undefined4 local_c0;
  undefined4 uStack_bc;
  int local_b8;
  b2SolverData *local_b4;
  float local_ac;
  float local_a8;
  float local_a4;
  undefined4 local_a0;
  undefined4 local_9c;
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
  
  *(undefined4 *)(param_1 + 0x90) = *(undefined4 *)(*(int *)(param_1 + 0x30) + 8);
  *(undefined4 *)(param_1 + 0x94) = *(undefined4 *)(*(int *)(param_1 + 0x34) + 8);
  uVar3 = *(undefined4 *)(*(int *)(param_1 + 0x30) + 0x20);
  *(undefined4 *)(param_1 + 0x98) = *(undefined4 *)(*(int *)(param_1 + 0x30) + 0x1c);
  *(undefined4 *)(param_1 + 0x9c) = uVar3;
  uVar3 = *(undefined4 *)(*(int *)(param_1 + 0x34) + 0x20);
  *(undefined4 *)(param_1 + 0xa0) = *(undefined4 *)(*(int *)(param_1 + 0x34) + 0x1c);
  *(undefined4 *)(param_1 + 0xa4) = uVar3;
  *(undefined4 *)(param_1 + 0xa8) = *(undefined4 *)(*(int *)(param_1 + 0x30) + 0x78);
  *(undefined4 *)(param_1 + 0xac) = *(undefined4 *)(*(int *)(param_1 + 0x34) + 0x78);
  *(undefined4 *)(param_1 + 0xb0) = *(undefined4 *)(*(int *)(param_1 + 0x30) + 0x80);
  *(undefined4 *)(param_1 + 0xb4) = *(undefined4 *)(*(int *)(param_1 + 0x34) + 0x80);
  puVar4 = (undefined4 *)(*(int *)(in_r1 + 0x18) + *(int *)(param_1 + 0x90) * 0xc);
  local_68 = *puVar4;
  uStack_64 = puVar4[1];
  local_a0 = *(undefined4 *)(*(int *)(param_1 + 0x90) * 0xc + *(int *)(in_r1 + 0x18) + 8);
  puVar4 = (undefined4 *)(*(int *)(in_r1 + 0x1c) + *(int *)(param_1 + 0x90) * 0xc);
  local_60 = *puVar4;
  uStack_5c = puVar4[1];
  local_ac = *(float *)(*(int *)(param_1 + 0x90) * 0xc + *(int *)(in_r1 + 0x1c) + 8);
  puVar4 = (undefined4 *)(*(int *)(in_r1 + 0x18) + *(int *)(param_1 + 0x94) * 0xc);
  local_58 = *puVar4;
  uStack_54 = puVar4[1];
  local_9c = *(undefined4 *)(*(int *)(param_1 + 0x94) * 0xc + *(int *)(in_r1 + 0x18) + 8);
  puVar4 = (undefined4 *)(*(int *)(in_r1 + 0x1c) + *(int *)(param_1 + 0x94) * 0xc);
  local_50 = *puVar4;
  uStack_4c = puVar4[1];
  local_a8 = *(float *)(*(int *)(param_1 + 0x94) * 0xc + *(int *)(in_r1 + 0x1c) + 8);
  local_b8 = in_r1;
  local_b4 = param_1;
  fVar6 = (float)b2Rot::b2Rot(abStack_48,in_s0);
  b2Rot::b2Rot(abStack_40,fVar6);
  ::operator-(abStack_10,(b2Vec2 *)(local_b4 + 0x44));
  b2Mul(abStack_38,(b2Vec2 *)abStack_48);
  ::operator-(abStack_10,(b2Vec2 *)(local_b4 + 0x4c));
  b2Mul(abStack_30,(b2Vec2 *)abStack_40);
  ::operator-(abStack_18,(b2Vec2 *)&local_58);
  ::operator+(abStack_10,abStack_18);
  ::operator-(abStack_28,abStack_10);
  pbVar2 = local_b4;
  local_98 = *(float *)(local_b4 + 0xa8);
  local_94 = *(float *)(local_b4 + 0xac);
  local_90 = *(float *)(local_b4 + 0xb0);
  local_8c = *(float *)(local_b4 + 0xb4);
  b2Mul((b2Rot *)&local_c0,(b2Vec2 *)abStack_48);
  *(undefined4 *)(pbVar2 + 0xb8) = local_c0;
  *(undefined4 *)(pbVar2 + 0xbc) = uStack_bc;
  ::operator+(abStack_10,abStack_28);
  uVar3 = b2Cross(abStack_10,(b2Vec2 *)(local_b4 + 0xb8));
  *(undefined4 *)(local_b4 + 0xd0) = uVar3;
  uVar3 = b2Cross((b2Vec2 *)abStack_30,(b2Vec2 *)(local_b4 + 0xb8));
  pbVar2 = local_b4;
  *(undefined4 *)(local_b4 + 0xd4) = uVar3;
  *(float *)(local_b4 + 0xfc) =
       local_98 + local_94 + *(float *)(local_b4 + 0xd0) * local_90 * *(float *)(local_b4 + 0xd0) +
       *(float *)(local_b4 + 0xd4) * local_8c * *(float *)(local_b4 + 0xd4);
  if (0.0 < *(float *)(local_b4 + 0xfc)) {
    *(float *)(local_b4 + 0xfc) = 1.0 / *(float *)(local_b4 + 0xfc);
  }
  b2Mul((b2Rot *)&local_c0,(b2Vec2 *)abStack_48);
  *(undefined4 *)(pbVar2 + 0xc0) = local_c0;
  *(undefined4 *)(pbVar2 + 0xc4) = uStack_bc;
  ::operator+(abStack_10,abStack_28);
  uVar3 = b2Cross(abStack_10,(b2Vec2 *)(local_b4 + 0xc0));
  *(undefined4 *)(local_b4 + 200) = uVar3;
  uVar3 = b2Cross((b2Vec2 *)abStack_30,(b2Vec2 *)(local_b4 + 0xc0));
  *(undefined4 *)(local_b4 + 0xcc) = uVar3;
  local_88 = local_98 + local_94 +
             *(float *)(local_b4 + 200) * local_90 * *(float *)(local_b4 + 200) +
             *(float *)(local_b4 + 0xcc) * local_8c * *(float *)(local_b4 + 0xcc);
  local_84 = *(float *)(local_b4 + 200) * local_90 + *(float *)(local_b4 + 0xcc) * local_8c;
  local_80 = *(float *)(local_b4 + 200) * local_90 * *(float *)(local_b4 + 0xd0) +
             *(float *)(local_b4 + 0xcc) * local_8c * *(float *)(local_b4 + 0xd4);
  local_a4 = local_90 + local_8c;
  if (local_a4 == 0.0) {
    local_a4 = 1.0;
  }
  local_7c = *(float *)(local_b4 + 0xd0) * local_90 + *(float *)(local_b4 + 0xd4) * local_8c;
  local_78 = local_98 + local_94 +
             *(float *)(local_b4 + 0xd0) * local_90 * *(float *)(local_b4 + 0xd0) +
             *(float *)(local_b4 + 0xd4) * local_8c * *(float *)(local_b4 + 0xd4);
  b2Vec3::Set((b2Vec3 *)(local_b4 + 0xd8),extraout_s0,extraout_s1,extraout_s2);
  b2Vec3::Set((b2Vec3 *)(local_b4 + 0xe4),extraout_s0_00,extraout_s1_00,extraout_s2_00);
  fVar6 = (float)b2Vec3::Set((b2Vec3 *)(local_b4 + 0xf0),extraout_s0_01,extraout_s1_01,
                             extraout_s2_01);
  if (local_b4[0x88] == (b2SolverData)0x0) {
    *(undefined4 *)(local_b4 + 0x8c) = 0;
    *(undefined4 *)(local_b4 + 0x70) = 0;
  }
  else {
    local_74 = (float)b2Dot((b2Vec2 *)(local_b4 + 0xb8),abStack_28);
    fVar6 = b2Abs<float>(extraout_s0_02);
    iVar1 = (uint)(extraout_r0 < 0.01) << 0x1f;
    cVar5 = extraout_r3;
    if (-1 < iVar1) {
      cVar5 = '\0';
    }
    if (iVar1 < 0) {
      cVar5 = '\x01';
    }
    if (cVar5 == '\0') {
      if (*(float *)(local_b4 + 0x78) < local_74) {
        if (local_74 < *(float *)(local_b4 + 0x7c)) {
          *(undefined4 *)(local_b4 + 0x8c) = 0;
          *(undefined4 *)(local_b4 + 0x70) = 0;
        }
        else if (*(int *)(local_b4 + 0x8c) != 2) {
          *(undefined4 *)(local_b4 + 0x8c) = 2;
          *(undefined4 *)(local_b4 + 0x70) = 0;
        }
      }
      else if (*(int *)(local_b4 + 0x8c) != 1) {
        *(undefined4 *)(local_b4 + 0x8c) = 1;
        *(undefined4 *)(local_b4 + 0x70) = 0;
      }
    }
    else {
      *(undefined4 *)(local_b4 + 0x8c) = 3;
    }
  }
  if (local_b4[0x89] != (b2SolverData)0x1) {
    *(undefined4 *)(local_b4 + 0x74) = 0;
  }
  if (*(char *)(local_b8 + 0x14) == '\0') {
    b2Vec3::SetZero((b2Vec3 *)(local_b4 + 0x68));
    *(undefined4 *)(local_b4 + 0x74) = 0;
  }
  else {
    fVar6 = (float)b2Vec3::operator*=((b2Vec3 *)(local_b4 + 0x68),fVar6);
    *(float *)(local_b4 + 0x74) = *(float *)(local_b4 + 0x74) * *(float *)(local_b8 + 8);
    fVar6 = (float)::operator*(fVar6,abStack_18);
    ::operator*(fVar6,abStack_10);
    fVar6 = (float)::operator+(abStack_20,abStack_18);
    local_70 = *(float *)(local_b4 + 0x68) * *(float *)(local_b4 + 200) +
               *(float *)(local_b4 + 0x6c) +
               (*(float *)(local_b4 + 0x74) + *(float *)(local_b4 + 0x70)) *
               *(float *)(local_b4 + 0xd0);
    local_6c = *(float *)(local_b4 + 0x68) * *(float *)(local_b4 + 0xcc) +
               *(float *)(local_b4 + 0x6c) +
               (*(float *)(local_b4 + 0x74) + *(float *)(local_b4 + 0x70)) *
               *(float *)(local_b4 + 0xd4);
    ::operator*(fVar6,abStack_10);
    fVar6 = (float)b2Vec2::operator-=((b2Vec2 *)&local_60,abStack_10);
    local_ac = local_ac - local_90 * local_70;
    ::operator*(fVar6,abStack_10);
    b2Vec2::operator+=((b2Vec2 *)&local_50,abStack_10);
    local_a8 = local_a8 + local_8c * local_6c;
  }
  puVar4 = (undefined4 *)(*(int *)(local_b4 + 0x90) * 0xc + *(int *)(local_b8 + 0x1c));
  *puVar4 = local_60;
  puVar4[1] = uStack_5c;
  *(float *)(*(int *)(local_b4 + 0x90) * 0xc + *(int *)(local_b8 + 0x1c) + 8) = local_ac;
  puVar4 = (undefined4 *)(*(int *)(local_b4 + 0x94) * 0xc + *(int *)(local_b8 + 0x1c));
  *puVar4 = local_50;
  puVar4[1] = uStack_4c;
  *(float *)(*(int *)(local_b4 + 0x94) * 0xc + *(int *)(local_b8 + 0x1c) + 8) = local_a8;
  return;
}

// ---- b2PrismaticJoint::SolveVelocityConstraints  @ 0x6d1678
/* b2PrismaticJoint::SolveVelocityConstraints(b2SolverData const&) */

void __thiscall
b2PrismaticJoint::SolveVelocityConstraints(b2PrismaticJoint *this,b2SolverData *param_1)

{
  bool bVar1;
  float fVar2;
  undefined4 extraout_r0;
  undefined4 extraout_r0_00;
  undefined4 extraout_r0_01;
  float extraout_r0_02;
  float extraout_r0_03;
  undefined4 *puVar3;
  b2Vec2 *pbVar4;
  float extraout_s0;
  float extraout_s0_00;
  float extraout_s0_01;
  float extraout_s1;
  float extraout_s1_00;
  undefined8 uVar5;
  float extraout_s2;
  float extraout_s2_00;
  float local_d8;
  float fStack_d4;
  float fStack_d0;
  b2SolverData *local_c8;
  b2PrismaticJoint *local_c4;
  float local_bc;
  float local_b8;
  undefined4 local_b4;
  undefined4 local_b0;
  float local_ac;
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
  undefined4 local_78;
  undefined4 uStack_74;
  undefined4 local_70;
  undefined4 uStack_6c;
  float local_68;
  float local_64;
  b2Vec2 abStack_60 [8];
  undefined4 local_58;
  undefined4 local_54;
  b2Vec2 abStack_50 [8];
  b2Vec2 abStack_48 [8];
  float local_40;
  float local_3c;
  undefined4 local_34;
  undefined4 local_30;
  undefined4 local_2c;
  float local_28;
  float local_24;
  float local_20;
  b2Vec2 abStack_1c [12];
  
  puVar3 = (undefined4 *)(*(int *)(param_1 + 0x1c) + *(int *)(this + 0x90) * 0xc);
  local_78 = *puVar3;
  uStack_74 = puVar3[1];
  local_bc = *(float *)(*(int *)(this + 0x90) * 0xc + *(int *)(param_1 + 0x1c) + 8);
  puVar3 = (undefined4 *)(*(int *)(param_1 + 0x1c) + *(int *)(this + 0x94) * 0xc);
  local_70 = *puVar3;
  uStack_6c = puVar3[1];
  local_b8 = *(float *)(*(int *)(this + 0x94) * 0xc + *(int *)(param_1 + 0x1c) + 8);
  local_b4 = *(undefined4 *)(this + 0xa8);
  local_b0 = *(undefined4 *)(this + 0xac);
  local_ac = *(float *)(this + 0xb0);
  local_a8 = *(float *)(this + 0xb4);
  local_c8 = param_1;
  local_c4 = this;
  if ((this[0x89] != (b2PrismaticJoint)0x0) && (*(int *)(this + 0x8c) != 3)) {
    ::operator-(abStack_1c,(b2Vec2 *)&local_70);
    fVar2 = (float)b2Dot((b2Vec2 *)(this + 0xb8),abStack_1c);
    local_a4 = (fVar2 + *(float *)(local_c4 + 0xd4) * local_b8) -
               *(float *)(local_c4 + 0xd0) * local_bc;
    local_a0 = *(float *)(local_c4 + 0xfc) * (*(float *)(local_c4 + 0x84) - local_a4);
    local_9c = *(float *)(local_c4 + 0x74);
    local_98 = *(float *)local_c8 * *(float *)(local_c4 + 0x80);
    fVar2 = b2Clamp<float>(extraout_s0,extraout_s1,extraout_s2);
    *(undefined4 *)(local_c4 + 0x74) = extraout_r0;
    local_a0 = *(float *)(local_c4 + 0x74) - local_9c;
    fVar2 = (float)::operator*(fVar2,(b2Vec2 *)&local_28);
    local_94 = *(float *)(local_c4 + 0xd0) * local_a0;
    local_90 = *(float *)(local_c4 + 0xd4) * local_a0;
    ::operator*(fVar2,abStack_1c);
    fVar2 = (float)b2Vec2::operator-=((b2Vec2 *)&local_78,abStack_1c);
    local_bc = local_bc - local_ac * local_94;
    ::operator*(fVar2,abStack_1c);
    b2Vec2::operator+=((b2Vec2 *)&local_70,abStack_1c);
    local_b8 = local_b8 + local_a8 * local_90;
  }
  b2Vec2::b2Vec2((b2Vec2 *)&local_68);
  pbVar4 = (b2Vec2 *)(local_c4 + 0xc0);
  ::operator-(abStack_1c,(b2Vec2 *)&local_70);
  fVar2 = (float)b2Dot(pbVar4,abStack_1c);
  local_68 = (fVar2 + *(float *)(local_c4 + 0xcc) * local_b8) -
             *(float *)(local_c4 + 200) * local_bc;
  local_64 = local_b8 - local_bc;
  if ((local_c4[0x88] != (b2PrismaticJoint)0x0) && (*(int *)(local_c4 + 0x8c) != 0)) {
    pbVar4 = (b2Vec2 *)(local_c4 + 0xb8);
    ::operator-(abStack_1c,(b2Vec2 *)&local_70);
    fVar2 = (float)b2Dot(pbVar4,abStack_1c);
    local_8c = (fVar2 + *(float *)(local_c4 + 0xd4) * local_b8) -
               *(float *)(local_c4 + 0xd0) * local_bc;
    b2Vec3::b2Vec3((b2Vec3 *)&local_40,extraout_s0_00,extraout_s1_00,extraout_s2_00);
    local_34 = *(undefined4 *)(local_c4 + 0x68);
    local_30 = *(undefined4 *)(local_c4 + 0x6c);
    local_2c = *(undefined4 *)(local_c4 + 0x70);
    b2Vec3::operator-((b2Vec3 *)abStack_1c);
    b2Mat33::Solve33((b2Vec3 *)&local_28);
    uVar5 = b2Vec3::operator+=((b2Vec3 *)(local_c4 + 0x68),(b2Vec3 *)&local_28);
    fVar2 = (float)((ulonglong)uVar5 >> 0x20);
    if (*(int *)(local_c4 + 0x8c) == 1) {
      b2Max<float>((float)uVar5,fVar2);
      *(undefined4 *)(local_c4 + 0x70) = extraout_r0_00;
    }
    else if (*(int *)(local_c4 + 0x8c) == 2) {
      b2Min<float>((float)uVar5,fVar2);
      *(undefined4 *)(local_c4 + 0x70) = extraout_r0_01;
    }
    uVar5 = b2Vec2::operator-(abStack_50);
    fVar2 = (float)b2Vec2::b2Vec2(abStack_48,(float)uVar5,(float)((ulonglong)uVar5 >> 0x20));
    ::operator*(fVar2,abStack_1c);
    ::operator-(abStack_60,abStack_50);
    uVar5 = b2Mat33::Solve22(abStack_48);
    b2Vec2::b2Vec2(abStack_1c,(float)uVar5,(float)((ulonglong)uVar5 >> 0x20));
    ::operator+((b2Vec2 *)&local_58,abStack_48);
    *(undefined4 *)(local_c4 + 0x68) = local_58;
    *(undefined4 *)(local_c4 + 0x6c) = local_54;
    fVar2 = (float)::operator-((b2Vec3 *)&local_d8,(b2Vec3 *)(local_c4 + 0x68));
    local_28 = local_d8;
    local_24 = fStack_d4;
    local_20 = fStack_d0;
    fVar2 = (float)::operator*(fVar2,abStack_48);
    ::operator*(fVar2,abStack_1c);
    fVar2 = (float)::operator+(abStack_50,abStack_48);
    local_88 = local_28 * *(float *)(local_c4 + 200) + local_24 +
               local_20 * *(float *)(local_c4 + 0xd0);
    local_84 = local_28 * *(float *)(local_c4 + 0xcc) + local_24 +
               local_20 * *(float *)(local_c4 + 0xd4);
    ::operator*(fVar2,abStack_1c);
    fVar2 = (float)b2Vec2::operator-=((b2Vec2 *)&local_78,abStack_1c);
    local_bc = local_bc - local_ac * local_88;
    ::operator*(fVar2,abStack_1c);
    b2Vec2::operator+=((b2Vec2 *)&local_70,abStack_1c);
    local_b8 = local_b8 + local_a8 * local_84;
    goto LAB_006d1d3a;
  }
  b2Vec2::operator-(abStack_1c);
  fVar2 = (float)b2Mat33::Solve22((b2Vec2 *)&local_40);
  *(float *)(local_c4 + 0x68) = *(float *)(local_c4 + 0x68) + local_40;
  *(float *)(local_c4 + 0x6c) = *(float *)(local_c4 + 0x6c) + local_3c;
  fVar2 = (float)::operator*(fVar2,(b2Vec2 *)&local_34);
  local_80 = local_40 * *(float *)(local_c4 + 200) + local_3c;
  local_7c = local_40 * *(float *)(local_c4 + 0xcc) + local_3c;
  ::operator*(fVar2,abStack_1c);
  fVar2 = (float)b2Vec2::operator-=((b2Vec2 *)&local_78,abStack_1c);
  local_bc = local_bc - local_ac * local_80;
  ::operator*(fVar2,abStack_1c);
  b2Vec2::operator+=((b2Vec2 *)&local_70,abStack_1c);
  local_b8 = local_b8 + local_a8 * local_7c;
  local_28 = local_68;
  local_24 = local_64;
  pbVar4 = (b2Vec2 *)(local_c4 + 0xc0);
  ::operator-(abStack_1c,(b2Vec2 *)&local_70);
  fVar2 = (float)b2Dot(pbVar4,abStack_1c);
  local_68 = (fVar2 + *(float *)(local_c4 + 0xcc) * local_b8) -
             *(float *)(local_c4 + 200) * local_bc;
  local_64 = local_b8 - local_bc;
  fVar2 = b2Abs<float>(extraout_s0_01);
  if (0.01 < extraout_r0_02) {
LAB_006d1d0c:
    bVar1 = true;
  }
  else {
    b2Abs<float>(fVar2);
    if (0.01 < extraout_r0_03) goto LAB_006d1d0c;
    bVar1 = false;
  }
  if (bVar1) {
    b2Mul22((b2Mat33 *)abStack_1c,(b2Vec2 *)(local_c4 + 0xd8));
  }
LAB_006d1d3a:
  puVar3 = (undefined4 *)(*(int *)(local_c4 + 0x90) * 0xc + *(int *)(local_c8 + 0x1c));
  *puVar3 = local_78;
  puVar3[1] = uStack_74;
  *(float *)(*(int *)(local_c4 + 0x90) * 0xc + *(int *)(local_c8 + 0x1c) + 8) = local_bc;
  puVar3 = (undefined4 *)(*(int *)(local_c4 + 0x94) * 0xc + *(int *)(local_c8 + 0x1c));
  *puVar3 = local_70;
  puVar3[1] = uStack_6c;
  *(float *)(*(int *)(local_c4 + 0x94) * 0xc + *(int *)(local_c8 + 0x1c) + 8) = local_b8;
  return;
}

// ---- b2PrismaticJoint::SolvePositionConstraints  @ 0x6d1dc0
/* b2PrismaticJoint::SolvePositionConstraints(b2SolverData const&) */

undefined4 b2PrismaticJoint::SolvePositionConstraints(b2SolverData *param_1)

{
  int iVar1;
  float extraout_r0;
  float extraout_r0_00;
  float extraout_r0_01;
  undefined4 extraout_r0_02;
  float extraout_r0_03;
  undefined4 extraout_r0_04;
  float extraout_r0_05;
  undefined4 extraout_r0_06;
  float extraout_r0_07;
  int in_r1;
  undefined4 *puVar2;
  char extraout_r3;
  char cVar3;
  undefined4 uVar4;
  float in_s0;
  float fVar5;
  float extraout_s0;
  float extraout_s0_00;
  float extraout_s0_01;
  float extraout_s0_02;
  float extraout_s0_03;
  float extraout_s1;
  float extraout_s1_00;
  float extraout_s1_01;
  float extraout_s1_02;
  float extraout_s1_03;
  float extraout_s1_04;
  float extraout_s1_05;
  undefined8 uVar6;
  float extraout_s2;
  float extraout_s2_00;
  float extraout_s2_01;
  float extraout_s2_02;
  float local_120;
  float fStack_11c;
  float fStack_118;
  int local_110;
  b2SolverData *local_10c;
  char local_105;
  float local_104;
  undefined4 local_100;
  float local_fc;
  float local_f8;
  float local_f4;
  float local_f0;
  float local_ec;
  float local_e8;
  float local_e4;
  float local_e0;
  float local_dc;
  float local_d8;
  float local_d4;
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
  undefined4 local_a0;
  undefined4 uStack_9c;
  undefined4 local_98;
  undefined4 uStack_94;
  b2Rot abStack_90 [8];
  b2Rot abStack_88 [8];
  b2Rot abStack_80 [8];
  b2Rot abStack_78 [8];
  b2Vec2 abStack_70 [8];
  b2Rot abStack_68 [8];
  b2Rot abStack_60 [8];
  float local_58;
  float local_54;
  float local_50;
  float local_4c;
  float local_48;
  float local_44;
  float local_40;
  undefined4 local_3c;
  b2Vec2 abStack_38 [12];
  b2Vec2 abStack_2c [8];
  b2Vec2 abStack_24 [4];
  b2Vec3 abStack_20 [12];
  b2Vec3 abStack_14 [16];
  
  puVar2 = (undefined4 *)(*(int *)(in_r1 + 0x18) + *(int *)(param_1 + 0x90) * 0xc);
  local_a0 = *puVar2;
  uStack_9c = puVar2[1];
  local_f4 = *(float *)(*(int *)(param_1 + 0x90) * 0xc + *(int *)(in_r1 + 0x18) + 8);
  puVar2 = (undefined4 *)(*(int *)(in_r1 + 0x18) + *(int *)(param_1 + 0x94) * 0xc);
  local_98 = *puVar2;
  uStack_94 = puVar2[1];
  local_f0 = *(float *)(*(int *)(param_1 + 0x94) * 0xc + *(int *)(in_r1 + 0x18) + 8);
  local_110 = in_r1;
  local_10c = param_1;
  fVar5 = (float)b2Rot::b2Rot(abStack_90,in_s0);
  b2Rot::b2Rot(abStack_88,fVar5);
  local_ec = *(float *)(local_10c + 0xa8);
  local_e8 = *(float *)(local_10c + 0xac);
  local_e4 = *(float *)(local_10c + 0xb0);
  local_e0 = *(float *)(local_10c + 0xb4);
  ::operator-(abStack_2c,(b2Vec2 *)(local_10c + 0x44));
  b2Mul(abStack_80,(b2Vec2 *)abStack_90);
  ::operator-(abStack_2c,(b2Vec2 *)(local_10c + 0x4c));
  b2Mul(abStack_78,(b2Vec2 *)abStack_88);
  ::operator+(abStack_38,(b2Vec2 *)&local_98);
  ::operator-(abStack_2c,abStack_38);
  ::operator-(abStack_70,abStack_2c);
  b2Mul(abStack_68,(b2Vec2 *)abStack_90);
  ::operator+(abStack_2c,abStack_70);
  local_dc = (float)b2Cross(abStack_2c,(b2Vec2 *)abStack_68);
  local_d8 = (float)b2Cross((b2Vec2 *)abStack_78,(b2Vec2 *)abStack_68);
  b2Mul(abStack_60,(b2Vec2 *)abStack_90);
  ::operator+(abStack_2c,abStack_70);
  local_d4 = (float)b2Cross(abStack_2c,(b2Vec2 *)abStack_60);
  local_d0 = (float)b2Cross((b2Vec2 *)abStack_78,(b2Vec2 *)abStack_60);
  b2Vec3::b2Vec3((b2Vec3 *)&local_50);
  b2Vec2::b2Vec2((b2Vec2 *)&local_58);
  local_58 = (float)b2Dot((b2Vec2 *)abStack_60,abStack_70);
  local_54 = (local_f0 - local_f4) - *(float *)(local_10c + 100);
  fVar5 = b2Abs<float>(extraout_s0);
  local_104 = extraout_r0;
  b2Abs<float>(fVar5);
  local_105 = '\0';
  local_100 = 0;
  local_cc = extraout_r0_00;
  if (local_10c[0x88] != (b2SolverData)0x0) {
    local_c8 = (float)b2Dot((b2Vec2 *)abStack_68,abStack_70);
    fVar5 = b2Abs<float>(extraout_s0_00);
    iVar1 = (uint)(extraout_r0_01 < 0.01) << 0x1f;
    cVar3 = extraout_r3;
    if (-1 < iVar1) {
      cVar3 = '\0';
    }
    if (iVar1 < 0) {
      cVar3 = '\x01';
    }
    if (cVar3 == '\0') {
      if (*(float *)(local_10c + 0x78) < local_c8) {
        if (*(float *)(local_10c + 0x7c) <= local_c8) {
          fVar5 = b2Clamp<float>(fVar5,extraout_s1,extraout_s2);
          local_100 = extraout_r0_06;
          b2Max<float>(fVar5,extraout_s1_02);
          local_105 = '\x01';
          local_104 = extraout_r0_07;
        }
      }
      else {
        fVar5 = b2Clamp<float>(fVar5,extraout_s1,extraout_s2);
        local_100 = extraout_r0_04;
        b2Max<float>(fVar5,extraout_s1_01);
        local_105 = '\x01';
        local_104 = extraout_r0_05;
      }
    }
    else {
      fVar5 = b2Clamp<float>(fVar5,extraout_s1,extraout_s2);
      local_100 = extraout_r0_02;
      fVar5 = b2Abs<float>(fVar5);
      b2Max<float>(fVar5,extraout_s1_00);
      local_105 = '\x01';
      local_104 = extraout_r0_03;
    }
  }
  if (local_105 == '\0') {
    local_b0 = local_ec + local_e8 + local_e4 * local_d4 * local_d4 + local_e0 * local_d0 * local_d0
    ;
    local_ac = local_e4 * local_d4 + local_e0 * local_d0;
    local_f8 = local_e4 + local_e0;
    if (local_f8 == 0.0) {
      local_f8 = 1.0;
    }
    uVar6 = b2Mat22::b2Mat22((b2Mat22 *)abStack_2c);
    uVar6 = b2Vec2::Set(abStack_2c,(float)uVar6,(float)((ulonglong)uVar6 >> 0x20));
    b2Vec2::Set(abStack_24,(float)uVar6,(float)((ulonglong)uVar6 >> 0x20));
    b2Vec2::operator-(abStack_38);
    fVar5 = (float)b2Mat22::Solve((b2Vec2 *)&local_44);
    local_50 = local_44;
    local_4c = local_40;
    local_48 = 0.0;
  }
  else {
    local_c4 = local_ec + local_e8 + local_e4 * local_d4 * local_d4 + local_e0 * local_d0 * local_d0
    ;
    local_c0 = local_e4 * local_d4 + local_e0 * local_d0;
    local_bc = local_e4 * local_d4 * local_dc + local_e0 * local_d0 * local_d8;
    local_fc = local_e4 + local_e0;
    if (local_fc == 0.0) {
      local_fc = 1.0;
    }
    local_b8 = local_e4 * local_dc + local_e0 * local_d8;
    local_b4 = local_ec + local_e8 + local_e4 * local_dc * local_dc + local_e0 * local_d8 * local_d8
    ;
    b2Mat33::b2Mat33((b2Mat33 *)abStack_2c);
    b2Vec3::Set((b2Vec3 *)abStack_2c,extraout_s0_01,extraout_s1_03,extraout_s2_00);
    b2Vec3::Set(abStack_20,extraout_s0_02,extraout_s1_04,extraout_s2_01);
    b2Vec3::Set(abStack_14,extraout_s0_03,extraout_s1_05,extraout_s2_02);
    b2Vec3::b2Vec3((b2Vec3 *)&local_44);
    local_44 = local_58;
    local_40 = local_54;
    local_3c = local_100;
    b2Vec3::operator-((b2Vec3 *)abStack_38);
    fVar5 = (float)b2Mat33::Solve33((b2Vec3 *)&local_120);
    local_50 = local_120;
    local_4c = fStack_11c;
    local_48 = fStack_118;
  }
  fVar5 = (float)::operator*(fVar5,abStack_38);
  ::operator*(fVar5,abStack_2c);
  fVar5 = (float)::operator+((b2Vec2 *)&local_44,abStack_38);
  local_a8 = local_50 * local_d4 + local_4c + local_48 * local_dc;
  local_a4 = local_50 * local_d0 + local_4c + local_48 * local_d8;
  ::operator*(fVar5,abStack_2c);
  fVar5 = (float)b2Vec2::operator-=((b2Vec2 *)&local_a0,abStack_2c);
  local_f4 = local_f4 - local_e4 * local_a8;
  ::operator*(fVar5,abStack_2c);
  b2Vec2::operator+=((b2Vec2 *)&local_98,abStack_2c);
  puVar2 = (undefined4 *)(*(int *)(local_10c + 0x90) * 0xc + *(int *)(local_110 + 0x18));
  *puVar2 = local_a0;
  puVar2[1] = uStack_9c;
  *(float *)(*(int *)(local_10c + 0x90) * 0xc + *(int *)(local_110 + 0x18) + 8) = local_f4;
  puVar2 = (undefined4 *)(*(int *)(local_10c + 0x94) * 0xc + *(int *)(local_110 + 0x18));
  *puVar2 = local_98;
  puVar2[1] = uStack_94;
  *(float *)(*(int *)(local_10c + 0x94) * 0xc + *(int *)(local_110 + 0x18) + 8) =
       local_f0 + local_e0 * local_a4;
  if ((0.005 < local_104) || (0.03490659 < local_cc)) {
    uVar4 = 0;
  }
  else {
    uVar4 = 1;
  }
  return uVar4;
}

// ---- b2PrismaticJoint::GetAnchorA  @ 0x6d2564
/* b2PrismaticJoint::GetAnchorA() const */

b2Body * b2PrismaticJoint::GetAnchorA(void)

{
  b2Body *in_r0;
  int in_r1;
  
  b2Body::GetWorldPoint(in_r0,*(b2Vec2 **)(in_r1 + 0x30));
  return in_r0;
}

// ---- b2PrismaticJoint::GetAnchorB  @ 0x6d2588
/* b2PrismaticJoint::GetAnchorB() const */

b2Body * b2PrismaticJoint::GetAnchorB(void)

{
  b2Body *in_r0;
  int in_r1;
  
  b2Body::GetWorldPoint(in_r0,*(b2Vec2 **)(in_r1 + 0x34));
  return in_r0;
}

// ---- b2PrismaticJoint::GetReactionForce  @ 0x6d25ac
/* b2PrismaticJoint::GetReactionForce(float) const */

b2PrismaticJoint * __thiscall
b2PrismaticJoint::GetReactionForce(b2PrismaticJoint *this,float param_1)

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

// ---- b2PrismaticJoint::GetReactionTorque  @ 0x6d2614
/* b2PrismaticJoint::GetReactionTorque(float) const */

float __thiscall b2PrismaticJoint::GetReactionTorque(b2PrismaticJoint *this,float param_1)

{
  float in_r1;
  
  return *(float *)(this + 0x6c) * in_r1;
}

// ---- b2PrismaticJoint::GetJointTranslation  @ 0x6d2634
/* b2PrismaticJoint::GetJointTranslation() const */

undefined4 __thiscall b2PrismaticJoint::GetJointTranslation(b2PrismaticJoint *this)

{
  undefined4 uVar1;
  b2Body abStack_28 [8];
  b2Body abStack_20 [8];
  b2Vec2 abStack_18 [8];
  b2Body abStack_10 [12];
  
  b2Body::GetWorldPoint(abStack_28,*(b2Vec2 **)(this + 0x30));
  b2Body::GetWorldPoint(abStack_20,*(b2Vec2 **)(this + 0x34));
  ::operator-(abStack_18,(b2Vec2 *)abStack_20);
  b2Body::GetWorldVector(abStack_10,*(b2Vec2 **)(this + 0x30));
  uVar1 = b2Dot(abStack_18,(b2Vec2 *)abStack_10);
  return uVar1;
}

// ---- b2PrismaticJoint::GetJointSpeed  @ 0x6d26a0
/* b2PrismaticJoint::GetJointSpeed() const */

float __thiscall b2PrismaticJoint::GetJointSpeed(b2PrismaticJoint *this)

{
  int iVar1;
  int iVar2;
  float fVar3;
  float extraout_s0;
  float fVar4;
  b2Rot abStack_80 [8];
  b2Rot abStack_78 [8];
  b2Vec2 abStack_70 [8];
  b2Vec2 abStack_68 [8];
  b2Vec2 abStack_60 [8];
  b2Rot abStack_58 [8];
  undefined4 local_50;
  undefined4 uStack_4c;
  undefined4 local_48;
  undefined4 uStack_44;
  b2Vec2 abStack_40 [8];
  b2Vec2 abStack_38 [8];
  b2Vec2 abStack_30 [8];
  b2Vec2 abStack_28 [8];
  b2Vec2 abStack_20 [8];
  b2Vec2 abStack_18 [8];
  
  iVar1 = *(int *)(this + 0x30);
  iVar2 = *(int *)(this + 0x34);
  ::operator-(abStack_18,(b2Vec2 *)(this + 0x44));
  b2Mul(abStack_80,(b2Vec2 *)(iVar1 + 0x14));
  ::operator-(abStack_18,(b2Vec2 *)(this + 0x4c));
  b2Mul(abStack_78,(b2Vec2 *)(iVar2 + 0x14));
  ::operator+(abStack_70,(b2Vec2 *)(iVar1 + 0x2c));
  ::operator+(abStack_68,(b2Vec2 *)(iVar2 + 0x2c));
  ::operator-(abStack_60,abStack_68);
  fVar3 = (float)b2Mul(abStack_58,(b2Vec2 *)(iVar1 + 0x14));
  local_50 = *(undefined4 *)(iVar1 + 0x40);
  uStack_4c = *(undefined4 *)(iVar1 + 0x44);
  local_48 = *(undefined4 *)(iVar2 + 0x40);
  uStack_44 = *(undefined4 *)(iVar2 + 0x44);
  b2Cross(fVar3,abStack_40);
  fVar3 = (float)b2Dot(abStack_60,abStack_40);
  b2Cross(extraout_s0,abStack_38);
  ::operator+(abStack_30,(b2Vec2 *)&local_48);
  fVar4 = (float)::operator-(abStack_28,abStack_30);
  b2Cross(fVar4,abStack_20);
  ::operator-(abStack_18,abStack_28);
  fVar4 = (float)b2Dot((b2Vec2 *)abStack_58,abStack_18);
  return fVar3 + fVar4;
}

// ---- b2PrismaticJoint::IsLimitEnabled  @ 0x6d2810
/* b2PrismaticJoint::IsLimitEnabled() const */

b2PrismaticJoint __thiscall b2PrismaticJoint::IsLimitEnabled(b2PrismaticJoint *this)

{
  return this[0x88];
}

// ---- b2PrismaticJoint::EnableLimit  @ 0x6d2820
/* b2PrismaticJoint::EnableLimit(bool) */

void __thiscall b2PrismaticJoint::EnableLimit(b2PrismaticJoint *this,bool param_1)

{
  if ((b2PrismaticJoint)param_1 != this[0x88]) {
    b2Body::SetAwake(*(b2Body **)(this + 0x30),true);
    b2Body::SetAwake(*(b2Body **)(this + 0x34),true);
    this[0x88] = (b2PrismaticJoint)param_1;
    *(undefined4 *)(this + 0x70) = 0;
  }
  return;
}

// ---- b2PrismaticJoint::GetLowerLimit  @ 0x6d286c
/* b2PrismaticJoint::GetLowerLimit() const */

undefined4 __thiscall b2PrismaticJoint::GetLowerLimit(b2PrismaticJoint *this)

{
  return *(undefined4 *)(this + 0x78);
}

// ---- b2PrismaticJoint::GetUpperLimit  @ 0x6d287c
/* b2PrismaticJoint::GetUpperLimit() const */

undefined4 __thiscall b2PrismaticJoint::GetUpperLimit(b2PrismaticJoint *this)

{
  return *(undefined4 *)(this + 0x7c);
}

// ---- b2PrismaticJoint::SetLimits  @ 0x6d288c
/* b2PrismaticJoint::SetLimits(float, float) */

float __thiscall b2PrismaticJoint::SetLimits(b2PrismaticJoint *this,float param_1,float param_2)

{
  float in_r1;
  float in_r2;
  
  if ((*(float *)(this + 0x78) != in_r1) || (*(float *)(this + 0x7c) != in_r2)) {
    b2Body::SetAwake(*(b2Body **)(this + 0x30),true);
    param_1 = (float)b2Body::SetAwake(*(b2Body **)(this + 0x34),true);
    *(float *)(this + 0x78) = in_r1;
    *(float *)(this + 0x7c) = in_r2;
    *(undefined4 *)(this + 0x70) = 0;
  }
  return param_1;
}

// ---- b2PrismaticJoint::IsMotorEnabled  @ 0x6d28f0
/* b2PrismaticJoint::IsMotorEnabled() const */

b2PrismaticJoint __thiscall b2PrismaticJoint::IsMotorEnabled(b2PrismaticJoint *this)

{
  return this[0x89];
}

// ---- b2PrismaticJoint::EnableMotor  @ 0x6d2900
/* b2PrismaticJoint::EnableMotor(bool) */

void __thiscall b2PrismaticJoint::EnableMotor(b2PrismaticJoint *this,bool param_1)

{
  b2Body::SetAwake(*(b2Body **)(this + 0x30),true);
  b2Body::SetAwake(*(b2Body **)(this + 0x34),true);
  this[0x89] = (b2PrismaticJoint)param_1;
  return;
}

// ---- b2PrismaticJoint::SetMotorSpeed  @ 0x6d2934
/* b2PrismaticJoint::SetMotorSpeed(float) */

void __thiscall b2PrismaticJoint::SetMotorSpeed(b2PrismaticJoint *this,float param_1)

{
  undefined4 in_r1;
  
  b2Body::SetAwake(*(b2Body **)(this + 0x30),true);
  b2Body::SetAwake(*(b2Body **)(this + 0x34),true);
  *(undefined4 *)(this + 0x84) = in_r1;
  return;
}

// ---- b2PrismaticJoint::SetMaxMotorForce  @ 0x6d2964
/* b2PrismaticJoint::SetMaxMotorForce(float) */

void __thiscall b2PrismaticJoint::SetMaxMotorForce(b2PrismaticJoint *this,float param_1)

{
  undefined4 in_r1;
  
  b2Body::SetAwake(*(b2Body **)(this + 0x30),true);
  b2Body::SetAwake(*(b2Body **)(this + 0x34),true);
  *(undefined4 *)(this + 0x80) = in_r1;
  return;
}

// ---- b2PrismaticJoint::GetMotorForce  @ 0x6d2994
/* b2PrismaticJoint::GetMotorForce(float) const */

float __thiscall b2PrismaticJoint::GetMotorForce(b2PrismaticJoint *this,float param_1)

{
  float in_r1;
  
  return *(float *)(this + 0x74) * in_r1;
}

// ---- b2PrismaticJoint::Dump  @ 0x6d29b4
/* b2PrismaticJoint::Dump() */

void __thiscall b2PrismaticJoint::Dump(b2PrismaticJoint *this)

{
  undefined4 extraout_r1;
  undefined4 extraout_r1_00;
  undefined4 extraout_r1_01;
  undefined4 extraout_r1_02;
  undefined4 extraout_r1_03;
  undefined4 extraout_r1_04;
  undefined4 extraout_r1_05;
  undefined4 extraout_r1_06;
  undefined4 uVar1;
  undefined4 uVar2;
  
  uVar1 = *(undefined4 *)(*(int *)(this + 0x30) + 8);
  uVar2 = *(undefined4 *)(*(int *)(this + 0x34) + 8);
  b2Log("  b2PrismaticJointDef jd;\n");
  b2Log("  jd.bodyA = bodies[%d];\n",uVar1);
  b2Log("  jd.bodyB = bodies[%d];\n",uVar2);
  b2Log("  jd.collideConnected = bool(%d);\n",(uint)(byte)this[0x3d]);
  b2Log("  jd.localAnchorA.Set(%.15lef, %.15lef);\n",extraout_r1,
        SUB84((double)*(float *)(this + 0x44),0),
        (int)((ulonglong)(double)*(float *)(this + 0x44) >> 0x20),(double)*(float *)(this + 0x48));
  b2Log("  jd.localAnchorB.Set(%.15lef, %.15lef);\n",extraout_r1_00,
        SUB84((double)*(float *)(this + 0x4c),0),
        (int)((ulonglong)(double)*(float *)(this + 0x4c) >> 0x20),(double)*(float *)(this + 0x50));
  b2Log("  jd.localAxisA.Set(%.15lef, %.15lef);\n",extraout_r1_01,
        SUB84((double)*(float *)(this + 0x54),0),
        (int)((ulonglong)(double)*(float *)(this + 0x54) >> 0x20),(double)*(float *)(this + 0x58));
  b2Log("  jd.referenceAngle = %.15lef;\n",extraout_r1_02,SUB84((double)*(float *)(this + 100),0),
        (int)((ulonglong)(double)*(float *)(this + 100) >> 0x20));
  b2Log("  jd.enableLimit = bool(%d);\n",(uint)(byte)this[0x88]);
  b2Log("  jd.lowerTranslation = %.15lef;\n",extraout_r1_03,SUB84((double)*(float *)(this + 0x78),0)
        ,(int)((ulonglong)(double)*(float *)(this + 0x78) >> 0x20));
  b2Log("  jd.upperTranslation = %.15lef;\n",extraout_r1_04,SUB84((double)*(float *)(this + 0x7c),0)
        ,(int)((ulonglong)(double)*(float *)(this + 0x7c) >> 0x20));
  b2Log("  jd.enableMotor = bool(%d);\n",(uint)(byte)this[0x89]);
  b2Log("  jd.motorSpeed = %.15lef;\n",extraout_r1_05,SUB84((double)*(float *)(this + 0x84),0),
        (int)((ulonglong)(double)*(float *)(this + 0x84) >> 0x20));
  b2Log("  jd.maxMotorForce = %.15lef;\n",extraout_r1_06,SUB84((double)*(float *)(this + 0x80),0),
        (int)((ulonglong)(double)*(float *)(this + 0x80) >> 0x20));
  b2Log("  joints[%d] = m_world->CreateJoint(&jd);\n",*(undefined4 *)(this + 0x38));
  return;
}

// ---- b2PrismaticJoint::~b2PrismaticJoint  @ 0x6d2b60
/* WARNING: Removing unreachable block (ram,0x006d2b82) */
/* b2PrismaticJoint::~b2PrismaticJoint() */

b2PrismaticJoint * __thiscall b2PrismaticJoint::~b2PrismaticJoint(b2PrismaticJoint *this)

{
  *(undefined ***)this = &PTR_GetAnchorA_1_0093c000;
  b2Joint::~b2Joint((b2Joint *)this);
  return this;
}

// ---- b2PrismaticJoint::~b2PrismaticJoint  @ 0x6d2b9c
/* b2PrismaticJoint::~b2PrismaticJoint() */

b2PrismaticJoint * __thiscall b2PrismaticJoint::~b2PrismaticJoint(b2PrismaticJoint *this)

{
  ~b2PrismaticJoint(this);
  operator_delete(this);
  return this;
}
