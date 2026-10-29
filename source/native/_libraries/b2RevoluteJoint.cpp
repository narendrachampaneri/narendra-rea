// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 23 functions

// ---- b2RevoluteJoint::b2RevoluteJoint  @ 0x6d3c8c
/* b2RevoluteJoint::b2RevoluteJoint(b2RevoluteJointDef const*) */

b2RevoluteJoint * __thiscall
b2RevoluteJoint::b2RevoluteJoint(b2RevoluteJoint *this,b2RevoluteJointDef *param_1)

{
  undefined4 uVar1;
  
  b2Joint::b2Joint((b2Joint *)this,(b2JointDef *)param_1);
  *(undefined ***)this = &PTR_GetAnchorA_1_0093c080;
  b2Vec2::b2Vec2((b2Vec2 *)(this + 0x44));
  b2Vec2::b2Vec2((b2Vec2 *)(this + 0x4c));
  b2Vec3::b2Vec3((b2Vec3 *)(this + 0x54));
  b2Vec2::b2Vec2((b2Vec2 *)(this + 0x88));
  b2Vec2::b2Vec2((b2Vec2 *)(this + 0x90));
  b2Vec2::b2Vec2((b2Vec2 *)(this + 0x98));
  b2Vec2::b2Vec2((b2Vec2 *)(this + 0xa0));
  b2Mat33::b2Mat33((b2Mat33 *)(this + 0xb8));
  uVar1 = *(undefined4 *)(param_1 + 0x18);
  *(undefined4 *)(this + 0x44) = *(undefined4 *)(param_1 + 0x14);
  *(undefined4 *)(this + 0x48) = uVar1;
  uVar1 = *(undefined4 *)(param_1 + 0x20);
  *(undefined4 *)(this + 0x4c) = *(undefined4 *)(param_1 + 0x1c);
  *(undefined4 *)(this + 0x50) = uVar1;
  *(undefined4 *)(this + 0x74) = *(undefined4 *)(param_1 + 0x24);
  b2Vec3::SetZero((b2Vec3 *)(this + 0x54));
  *(undefined4 *)(this + 0x60) = 0;
  *(undefined4 *)(this + 0x78) = *(undefined4 *)(param_1 + 0x2c);
  *(undefined4 *)(this + 0x7c) = *(undefined4 *)(param_1 + 0x30);
  *(undefined4 *)(this + 0x68) = *(undefined4 *)(param_1 + 0x3c);
  *(undefined4 *)(this + 0x6c) = *(undefined4 *)(param_1 + 0x38);
  this[0x70] = *(b2RevoluteJoint *)(param_1 + 0x28);
  this[100] = *(b2RevoluteJoint *)(param_1 + 0x34);
  *(undefined4 *)(this + 0xe0) = 0;
  return this;
}

// ---- b2RevoluteJoint::InitVelocityConstraints  @ 0x6d3d88
/* b2RevoluteJoint::InitVelocityConstraints(b2SolverData const&) */

void b2RevoluteJoint::InitVelocityConstraints(b2SolverData *param_1)

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
  undefined8 uVar7;
  undefined4 local_80;
  undefined4 uStack_7c;
  int local_78;
  b2SolverData *local_74;
  undefined1 local_6d;
  float local_6c;
  float local_68;
  float local_64;
  float local_60;
  float local_5c;
  float local_58;
  float local_54;
  float local_50;
  float local_4c;
  undefined4 local_48;
  undefined4 uStack_44;
  undefined4 local_40;
  undefined4 uStack_3c;
  undefined4 local_38;
  undefined4 uStack_34;
  undefined4 local_30;
  undefined4 uStack_2c;
  b2Rot abStack_28 [8];
  b2Rot abStack_20 [8];
  b2Vec2 abStack_18 [8];
  b2Vec2 abStack_10 [8];
  
  *(undefined4 *)(param_1 + 0x80) = *(undefined4 *)(*(int *)(param_1 + 0x30) + 8);
  *(undefined4 *)(param_1 + 0x84) = *(undefined4 *)(*(int *)(param_1 + 0x34) + 8);
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
  puVar4 = (undefined4 *)(*(int *)(in_r1 + 0x18) + *(int *)(param_1 + 0x80) * 0xc);
  local_48 = *puVar4;
  uStack_44 = puVar4[1];
  local_64 = *(float *)(*(int *)(param_1 + 0x80) * 0xc + *(int *)(in_r1 + 0x18) + 8);
  puVar4 = (undefined4 *)(*(int *)(in_r1 + 0x1c) + *(int *)(param_1 + 0x80) * 0xc);
  local_40 = *puVar4;
  uStack_3c = puVar4[1];
  local_6c = *(float *)(*(int *)(param_1 + 0x80) * 0xc + *(int *)(in_r1 + 0x1c) + 8);
  puVar4 = (undefined4 *)(*(int *)(in_r1 + 0x18) + *(int *)(param_1 + 0x84) * 0xc);
  local_38 = *puVar4;
  uStack_34 = puVar4[1];
  local_60 = *(float *)(*(int *)(param_1 + 0x84) * 0xc + *(int *)(in_r1 + 0x18) + 8);
  puVar4 = (undefined4 *)(*(int *)(in_r1 + 0x1c) + *(int *)(param_1 + 0x84) * 0xc);
  local_30 = *puVar4;
  uStack_2c = puVar4[1];
  local_68 = *(float *)(*(int *)(param_1 + 0x84) * 0xc + *(int *)(in_r1 + 0x1c) + 8);
  local_78 = in_r1;
  local_74 = param_1;
  fVar6 = (float)b2Rot::b2Rot(abStack_28,in_s0);
  b2Rot::b2Rot(abStack_20,fVar6);
  ::operator-(abStack_10,(b2Vec2 *)(local_74 + 0x44));
  pbVar2 = local_74;
  b2Mul((b2Rot *)&local_80,(b2Vec2 *)abStack_28);
  *(undefined4 *)(pbVar2 + 0x88) = local_80;
  *(undefined4 *)(pbVar2 + 0x8c) = uStack_7c;
  ::operator-(abStack_10,(b2Vec2 *)(local_74 + 0x4c));
  pbVar2 = local_74;
  fVar6 = (float)b2Mul((b2Rot *)&local_80,(b2Vec2 *)abStack_20);
  *(undefined4 *)(pbVar2 + 0x90) = local_80;
  *(undefined4 *)(pbVar2 + 0x94) = uStack_7c;
  local_5c = *(float *)(local_74 + 0xa8);
  local_58 = *(float *)(local_74 + 0xac);
  local_54 = *(float *)(local_74 + 0xb0);
  local_50 = *(float *)(local_74 + 0xb4);
  local_6d = local_54 + local_50 == 0.0;
  *(float *)(local_74 + 0xb8) =
       local_5c + local_58 + *(float *)(local_74 + 0x8c) * *(float *)(local_74 + 0x8c) * local_54 +
       *(float *)(local_74 + 0x94) * *(float *)(local_74 + 0x94) * local_50;
  *(float *)(local_74 + 0xc4) =
       -*(float *)(local_74 + 0x8c) * *(float *)(local_74 + 0x88) * local_54 -
       *(float *)(local_74 + 0x94) * *(float *)(local_74 + 0x90) * local_50;
  *(float *)(local_74 + 0xd0) =
       -*(float *)(local_74 + 0x8c) * local_54 - *(float *)(local_74 + 0x94) * local_50;
  *(undefined4 *)(local_74 + 0xbc) = *(undefined4 *)(local_74 + 0xc4);
  *(float *)(local_74 + 200) =
       local_5c + local_58 + *(float *)(local_74 + 0x88) * *(float *)(local_74 + 0x88) * local_54 +
       *(float *)(local_74 + 0x90) * *(float *)(local_74 + 0x90) * local_50;
  *(float *)(local_74 + 0xd4) =
       *(float *)(local_74 + 0x88) * local_54 + *(float *)(local_74 + 0x90) * local_50;
  *(undefined4 *)(local_74 + 0xc0) = *(undefined4 *)(local_74 + 0xd0);
  *(undefined4 *)(local_74 + 0xcc) = *(undefined4 *)(local_74 + 0xd4);
  *(float *)(local_74 + 0xd8) = local_54 + local_50;
  *(float *)(local_74 + 0xdc) = local_54 + local_50;
  if (0.0 < *(float *)(local_74 + 0xdc)) {
    *(float *)(local_74 + 0xdc) = 1.0 / *(float *)(local_74 + 0xdc);
  }
  if ((local_74[100] != (b2SolverData)0x1) || ((bool)local_6d)) {
    *(undefined4 *)(local_74 + 0x60) = 0;
  }
  if ((local_74[0x70] == (b2SolverData)0x0) || ((bool)local_6d)) {
    *(undefined4 *)(local_74 + 0xe0) = 0;
  }
  else {
    local_4c = (local_60 - local_64) - *(float *)(local_74 + 0x74);
    fVar6 = b2Abs<float>(fVar6);
    iVar1 = (uint)(extraout_r0 < 0.06981318) << 0x1f;
    cVar5 = extraout_r3;
    if (-1 < iVar1) {
      cVar5 = '\0';
    }
    if (iVar1 < 0) {
      cVar5 = '\x01';
    }
    if (cVar5 == '\0') {
      if (*(float *)(local_74 + 0x78) < local_4c) {
        if (local_4c < *(float *)(local_74 + 0x7c)) {
          *(undefined4 *)(local_74 + 0xe0) = 0;
          *(undefined4 *)(local_74 + 0x5c) = 0;
        }
        else {
          if (*(int *)(local_74 + 0xe0) != 2) {
            *(undefined4 *)(local_74 + 0x5c) = 0;
          }
          *(undefined4 *)(local_74 + 0xe0) = 2;
        }
      }
      else {
        if (*(int *)(local_74 + 0xe0) != 1) {
          *(undefined4 *)(local_74 + 0x5c) = 0;
        }
        *(undefined4 *)(local_74 + 0xe0) = 1;
      }
    }
    else {
      *(undefined4 *)(local_74 + 0xe0) = 3;
    }
  }
  if (*(char *)(local_78 + 0x14) == '\0') {
    b2Vec3::SetZero((b2Vec3 *)(local_74 + 0x54));
    *(undefined4 *)(local_74 + 0x60) = 0;
  }
  else {
    uVar7 = b2Vec3::operator*=((b2Vec3 *)(local_74 + 0x54),fVar6);
    *(float *)(local_74 + 0x60) = *(float *)(local_74 + 0x60) * *(float *)(local_78 + 8);
    fVar6 = (float)b2Vec2::b2Vec2(abStack_18,(float)uVar7,(float)((ulonglong)uVar7 >> 0x20));
    ::operator*(fVar6,abStack_10);
    b2Vec2::operator-=((b2Vec2 *)&local_40,abStack_10);
    fVar6 = (float)b2Cross((b2Vec2 *)(local_74 + 0x88),abStack_18);
    local_6c = local_6c -
               (fVar6 + *(float *)(local_74 + 0x60) + *(float *)(local_74 + 0x5c)) * local_54;
    ::operator*(extraout_s0,abStack_10);
    b2Vec2::operator+=((b2Vec2 *)&local_30,abStack_10);
    fVar6 = (float)b2Cross((b2Vec2 *)(local_74 + 0x90),abStack_18);
    local_68 = local_68 +
               (fVar6 + *(float *)(local_74 + 0x60) + *(float *)(local_74 + 0x5c)) * local_50;
  }
  puVar4 = (undefined4 *)(*(int *)(local_74 + 0x80) * 0xc + *(int *)(local_78 + 0x1c));
  *puVar4 = local_40;
  puVar4[1] = uStack_3c;
  *(float *)(*(int *)(local_74 + 0x80) * 0xc + *(int *)(local_78 + 0x1c) + 8) = local_6c;
  puVar4 = (undefined4 *)(*(int *)(local_74 + 0x84) * 0xc + *(int *)(local_78 + 0x1c));
  *puVar4 = local_30;
  puVar4[1] = uStack_2c;
  *(float *)(*(int *)(local_74 + 0x84) * 0xc + *(int *)(local_78 + 0x1c) + 8) = local_68;
  return;
}

// ---- b2RevoluteJoint::SolveVelocityConstraints  @ 0x6d43c0
/* b2RevoluteJoint::SolveVelocityConstraints(b2SolverData const&) */

void b2RevoluteJoint::SolveVelocityConstraints(b2SolverData *param_1)

{
  bool bVar1;
  undefined4 extraout_r0;
  float fVar2;
  int in_r1;
  undefined4 *puVar3;
  float fVar4;
  float fVar5;
  float fVar6;
  float in_s0;
  float extraout_s0;
  float extraout_s0_00;
  float extraout_s0_01;
  float in_s1;
  float extraout_s1;
  undefined8 uVar7;
  float in_s2;
  float extraout_s2;
  float local_90;
  float local_8c;
  undefined4 local_5c;
  undefined4 uStack_58;
  undefined4 local_54;
  undefined4 uStack_50;
  b2Vec2 local_4c [8];
  b2Vec2 abStack_44 [8];
  b2Vec2 abStack_3c [8];
  b2Vec2 abStack_34 [8];
  b2Vec2 abStack_2c [12];
  float local_20;
  float local_1c;
  float local_18;
  float local_14;
  float local_10;
  
  puVar3 = (undefined4 *)(*(int *)(in_r1 + 0x1c) + *(int *)(param_1 + 0x80) * 0xc);
  local_5c = *puVar3;
  uStack_58 = puVar3[1];
  local_90 = *(float *)(*(int *)(param_1 + 0x80) * 0xc + *(int *)(in_r1 + 0x1c) + 8);
  puVar3 = (undefined4 *)(*(int *)(in_r1 + 0x1c) + *(int *)(param_1 + 0x84) * 0xc);
  local_54 = *puVar3;
  uStack_50 = puVar3[1];
  local_8c = *(float *)(*(int *)(param_1 + 0x84) * 0xc + *(int *)(in_r1 + 0x1c) + 8);
  fVar4 = *(float *)(param_1 + 0xb0);
  fVar5 = *(float *)(param_1 + 0xb4);
  bVar1 = fVar4 + fVar5 == 0.0;
  if (((param_1[100] != (b2SolverData)0x0) && (*(int *)(param_1 + 0xe0) != 3)) && (!bVar1)) {
    fVar6 = *(float *)(param_1 + 0x60);
    in_s0 = b2Clamp<float>(in_s0,in_s1,in_s2);
    *(undefined4 *)(param_1 + 0x60) = extraout_r0;
    local_90 = local_90 - fVar4 * (*(float *)(param_1 + 0x60) - fVar6);
    local_8c = local_8c + fVar5 * (*(float *)(param_1 + 0x60) - fVar6);
  }
  if (((param_1[0x70] == (b2SolverData)0x0) || (*(int *)(param_1 + 0xe0) == 0)) || (bVar1)) {
    b2Cross(in_s0,abStack_34);
    ::operator+(abStack_2c,(b2Vec2 *)&local_54);
    fVar6 = (float)::operator-((b2Vec2 *)&local_20,abStack_2c);
    b2Cross(fVar6,(b2Vec2 *)&local_14);
    ::operator-(abStack_3c,(b2Vec2 *)&local_20);
    b2Vec2::operator-((b2Vec2 *)&local_14);
    fVar6 = (float)b2Mat33::Solve22((b2Vec2 *)&local_20);
    *(float *)(param_1 + 0x54) = *(float *)(param_1 + 0x54) + local_20;
    *(float *)(param_1 + 0x58) = *(float *)(param_1 + 0x58) + local_1c;
    ::operator*(fVar6,(b2Vec2 *)&local_14);
    b2Vec2::operator-=((b2Vec2 *)&local_5c,(b2Vec2 *)&local_14);
    fVar6 = (float)b2Cross((b2Vec2 *)(param_1 + 0x88),(b2Vec2 *)&local_20);
    ::operator*(extraout_s0_01,(b2Vec2 *)&local_14);
    b2Vec2::operator+=((b2Vec2 *)&local_54,(b2Vec2 *)&local_14);
    fVar2 = (float)b2Cross((b2Vec2 *)(param_1 + 0x90),(b2Vec2 *)&local_20);
  }
  else {
    b2Cross(in_s0,abStack_34);
    ::operator+(abStack_2c,(b2Vec2 *)&local_54);
    fVar6 = (float)::operator-((b2Vec2 *)&local_20,abStack_2c);
    b2Cross(fVar6,(b2Vec2 *)&local_14);
    ::operator-(local_4c,(b2Vec2 *)&local_20);
    b2Vec3::b2Vec3((b2Vec3 *)abStack_2c,extraout_s0,extraout_s1,extraout_s2);
    b2Mat33::Solve33((b2Vec3 *)&local_14);
    uVar7 = b2Vec3::operator-((b2Vec3 *)&local_20);
    if (*(int *)(param_1 + 0xe0) == 3) {
      uVar7 = b2Vec3::operator+=((b2Vec3 *)(param_1 + 0x54),(b2Vec3 *)&local_20);
    }
    else if (*(int *)(param_1 + 0xe0) == 1) {
      if ((int)((uint)(*(float *)(param_1 + 0x5c) + local_18 < 0.0) << 0x1f) < 0) {
        uVar7 = b2Vec2::operator-(abStack_3c);
        fVar6 = (float)b2Vec2::b2Vec2(abStack_34,(float)uVar7,(float)((ulonglong)uVar7 >> 0x20));
        ::operator*(fVar6,(b2Vec2 *)&local_14);
        ::operator+(abStack_44,abStack_3c);
        uVar7 = b2Mat33::Solve22((b2Vec2 *)&local_14);
        local_20 = local_14;
        local_1c = local_10;
        local_18 = -*(float *)(param_1 + 0x5c);
        *(float *)(param_1 + 0x54) = *(float *)(param_1 + 0x54) + local_14;
        *(float *)(param_1 + 0x58) = *(float *)(param_1 + 0x58) + local_10;
        *(undefined4 *)(param_1 + 0x5c) = 0;
      }
      else {
        uVar7 = b2Vec3::operator+=((b2Vec3 *)(param_1 + 0x54),(b2Vec3 *)&local_20);
      }
    }
    else if (*(int *)(param_1 + 0xe0) == 2) {
      if (*(float *)(param_1 + 0x5c) + local_18 <= 0.0) {
        uVar7 = b2Vec3::operator+=((b2Vec3 *)(param_1 + 0x54),(b2Vec3 *)&local_20);
      }
      else {
        uVar7 = b2Vec2::operator-(abStack_3c);
        fVar6 = (float)b2Vec2::b2Vec2(abStack_34,(float)uVar7,(float)((ulonglong)uVar7 >> 0x20));
        ::operator*(fVar6,(b2Vec2 *)&local_14);
        ::operator+(abStack_44,abStack_3c);
        uVar7 = b2Mat33::Solve22((b2Vec2 *)&local_14);
        local_20 = local_14;
        local_1c = local_10;
        local_18 = -*(float *)(param_1 + 0x5c);
        *(float *)(param_1 + 0x54) = *(float *)(param_1 + 0x54) + local_14;
        *(float *)(param_1 + 0x58) = *(float *)(param_1 + 0x58) + local_10;
        *(undefined4 *)(param_1 + 0x5c) = 0;
      }
    }
    fVar6 = (float)b2Vec2::b2Vec2(abStack_34,(float)uVar7,(float)((ulonglong)uVar7 >> 0x20));
    ::operator*(fVar6,(b2Vec2 *)&local_14);
    b2Vec2::operator-=((b2Vec2 *)&local_5c,(b2Vec2 *)&local_14);
    fVar6 = (float)b2Cross((b2Vec2 *)(param_1 + 0x88),abStack_34);
    fVar6 = fVar6 + local_18;
    ::operator*(extraout_s0_00,(b2Vec2 *)&local_14);
    b2Vec2::operator+=((b2Vec2 *)&local_54,(b2Vec2 *)&local_14);
    fVar2 = (float)b2Cross((b2Vec2 *)(param_1 + 0x90),abStack_34);
    fVar2 = fVar2 + local_18;
  }
  local_8c = local_8c + fVar2 * fVar5;
  local_90 = local_90 - fVar6 * fVar4;
  puVar3 = (undefined4 *)(*(int *)(param_1 + 0x80) * 0xc + *(int *)(in_r1 + 0x1c));
  *puVar3 = local_5c;
  puVar3[1] = uStack_58;
  *(float *)(*(int *)(param_1 + 0x80) * 0xc + *(int *)(in_r1 + 0x1c) + 8) = local_90;
  puVar3 = (undefined4 *)(*(int *)(param_1 + 0x84) * 0xc + *(int *)(in_r1 + 0x1c));
  *puVar3 = local_54;
  puVar3[1] = uStack_50;
  *(float *)(*(int *)(param_1 + 0x84) * 0xc + *(int *)(in_r1 + 0x1c) + 8) = local_8c;
  return;
}

// ---- b2RevoluteJoint::SolvePositionConstraints  @ 0x6d4a20
/* b2RevoluteJoint::SolvePositionConstraints(b2SolverData const&) */

undefined4 b2RevoluteJoint::SolvePositionConstraints(b2SolverData *param_1)

{
  float extraout_r0;
  float extraout_r0_00;
  float extraout_r0_01;
  float extraout_r0_02;
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
  float extraout_s1;
  float extraout_s2;
  float fVar7;
  float local_94;
  float local_90;
  float local_8c;
  float local_88;
  undefined4 local_60;
  undefined4 uStack_5c;
  undefined4 local_58;
  undefined4 uStack_54;
  b2Rot abStack_50 [8];
  b2Rot abStack_48 [8];
  float local_40;
  float local_3c;
  float local_38;
  float local_34;
  b2Vec2 abStack_30 [8];
  b2Vec2 abStack_28 [8];
  b2Vec2 abStack_20 [8];
  float local_18;
  float local_14;
  float local_10;
  float local_c;
  
  puVar1 = (undefined4 *)(*(int *)(in_r1 + 0x18) + *(int *)(param_1 + 0x80) * 0xc);
  local_60 = *puVar1;
  uStack_5c = puVar1[1];
  local_94 = *(float *)(*(int *)(param_1 + 0x80) * 0xc + *(int *)(in_r1 + 0x18) + 8);
  puVar1 = (undefined4 *)(*(int *)(in_r1 + 0x18) + *(int *)(param_1 + 0x84) * 0xc);
  local_58 = *puVar1;
  uStack_54 = puVar1[1];
  local_90 = *(float *)(*(int *)(param_1 + 0x84) * 0xc + *(int *)(in_r1 + 0x18) + 8);
  fVar6 = (float)b2Rot::b2Rot(abStack_50,in_s0);
  b2Rot::b2Rot(abStack_48,fVar6);
  local_8c = 0.0;
  fVar6 = extraout_s0;
  if (((param_1[0x70] != (b2SolverData)0x0) && (*(int *)(param_1 + 0xe0) != 0)) &&
     (*(float *)(param_1 + 0xb0) + *(float *)(param_1 + 0xb4) != 0.0)) {
    fVar7 = (local_90 - local_94) - *(float *)(param_1 + 0x74);
    local_88 = 0.0;
    if (*(int *)(param_1 + 0xe0) == 3) {
      fVar6 = b2Clamp<float>(extraout_s0,extraout_s1,extraout_s2);
      local_88 = -*(float *)(param_1 + 0xdc) * extraout_r0;
      fVar6 = b2Abs<float>(fVar6);
      local_8c = extraout_r0_00;
    }
    else if (*(int *)(param_1 + 0xe0) == 1) {
      local_8c = -(fVar7 - *(float *)(param_1 + 0x78));
      fVar6 = b2Clamp<float>(extraout_s0,extraout_s1,extraout_s2);
      local_88 = -*(float *)(param_1 + 0xdc) * extraout_r0_01;
    }
    else if (*(int *)(param_1 + 0xe0) == 2) {
      local_8c = fVar7 - *(float *)(param_1 + 0x7c);
      fVar6 = b2Clamp<float>(extraout_s0,extraout_s1,extraout_s2);
      local_88 = -*(float *)(param_1 + 0xdc) * extraout_r0_02;
    }
    local_94 = local_94 - *(float *)(param_1 + 0xb0) * local_88;
    local_90 = local_90 + *(float *)(param_1 + 0xb4) * local_88;
  }
  fVar6 = (float)b2Rot::Set(abStack_50,fVar6);
  b2Rot::Set(abStack_48,fVar6);
  ::operator-((b2Vec2 *)&local_18,(b2Vec2 *)(param_1 + 0x44));
  b2Mul((b2Rot *)&local_40,(b2Vec2 *)abStack_50);
  ::operator-((b2Vec2 *)&local_18,(b2Vec2 *)(param_1 + 0x4c));
  b2Mul((b2Rot *)&local_38,(b2Vec2 *)abStack_48);
  ::operator+(abStack_20,(b2Vec2 *)&local_58);
  ::operator-((b2Vec2 *)&local_18,abStack_20);
  ::operator-(abStack_30,(b2Vec2 *)&local_18);
  fVar6 = (float)b2Vec2::Length(abStack_30);
  fVar7 = *(float *)(param_1 + 0xa8);
  fVar2 = *(float *)(param_1 + 0xac);
  fVar3 = *(float *)(param_1 + 0xb0);
  fVar4 = *(float *)(param_1 + 0xb4);
  b2Mat22::b2Mat22((b2Mat22 *)&local_18);
  local_18 = fVar7 + fVar2 + local_3c * fVar3 * local_3c + local_34 * fVar4 * local_34;
  local_14 = -fVar3 * local_40 * local_3c - local_38 * fVar4 * local_34;
  local_c = fVar7 + fVar2 + local_40 * fVar3 * local_40 + local_38 * fVar4 * local_38;
  local_10 = local_14;
  b2Mat22::Solve(abStack_20);
  fVar7 = (float)b2Vec2::operator-(abStack_28);
  ::operator*(fVar7,abStack_20);
  b2Vec2::operator-=((b2Vec2 *)&local_60,abStack_20);
  fVar7 = (float)b2Cross((b2Vec2 *)&local_40,abStack_28);
  ::operator*(extraout_s0_00,abStack_20);
  b2Vec2::operator+=((b2Vec2 *)&local_58,abStack_20);
  fVar2 = (float)b2Cross((b2Vec2 *)&local_38,abStack_28);
  puVar1 = (undefined4 *)(*(int *)(param_1 + 0x80) * 0xc + *(int *)(in_r1 + 0x18));
  *puVar1 = local_60;
  puVar1[1] = uStack_5c;
  *(float *)(*(int *)(param_1 + 0x80) * 0xc + *(int *)(in_r1 + 0x18) + 8) = local_94 - fVar7 * fVar3
  ;
  puVar1 = (undefined4 *)(*(int *)(param_1 + 0x84) * 0xc + *(int *)(in_r1 + 0x18));
  *puVar1 = local_58;
  puVar1[1] = uStack_54;
  *(float *)(*(int *)(param_1 + 0x84) * 0xc + *(int *)(in_r1 + 0x18) + 8) = local_90 + fVar2 * fVar4
  ;
  if ((0.005 < fVar6) || (0.03490659 < local_8c)) {
    uVar5 = 0;
  }
  else {
    uVar5 = 1;
  }
  return uVar5;
}

// ---- b2RevoluteJoint::GetAnchorA  @ 0x6d4f34
/* b2RevoluteJoint::GetAnchorA() const */

b2Body * b2RevoluteJoint::GetAnchorA(void)

{
  b2Body *in_r0;
  int in_r1;
  
  b2Body::GetWorldPoint(in_r0,*(b2Vec2 **)(in_r1 + 0x30));
  return in_r0;
}

// ---- b2RevoluteJoint::GetAnchorB  @ 0x6d4f58
/* b2RevoluteJoint::GetAnchorB() const */

b2Body * b2RevoluteJoint::GetAnchorB(void)

{
  b2Body *in_r0;
  int in_r1;
  
  b2Body::GetWorldPoint(in_r0,*(b2Vec2 **)(in_r1 + 0x34));
  return in_r0;
}

// ---- b2RevoluteJoint::GetReactionForce  @ 0x6d4f7c
/* b2RevoluteJoint::GetReactionForce(float) const */

b2Vec2 * b2RevoluteJoint::GetReactionForce(float param_1)

{
  b2Vec2 *in_r0;
  float fVar1;
  float in_s1;
  b2Vec2 abStack_10 [12];
  
  fVar1 = (float)b2Vec2::b2Vec2(abStack_10,param_1,in_s1);
  ::operator*(fVar1,in_r0);
  return in_r0;
}

// ---- b2RevoluteJoint::GetReactionTorque  @ 0x6d4fb0
/* b2RevoluteJoint::GetReactionTorque(float) const */

float __thiscall b2RevoluteJoint::GetReactionTorque(b2RevoluteJoint *this,float param_1)

{
  float in_r1;
  
  return *(float *)(this + 0x5c) * in_r1;
}

// ---- b2RevoluteJoint::GetJointAngle  @ 0x6d4fd0
/* b2RevoluteJoint::GetJointAngle() const */

float __thiscall b2RevoluteJoint::GetJointAngle(b2RevoluteJoint *this)

{
  return (*(float *)(*(int *)(this + 0x34) + 0x38) - *(float *)(*(int *)(this + 0x30) + 0x38)) -
         *(float *)(this + 0x74);
}

// ---- b2RevoluteJoint::GetJointSpeed  @ 0x6d5004
/* b2RevoluteJoint::GetJointSpeed() const */

float __thiscall b2RevoluteJoint::GetJointSpeed(b2RevoluteJoint *this)

{
  return *(float *)(*(int *)(this + 0x34) + 0x48) - *(float *)(*(int *)(this + 0x30) + 0x48);
}

// ---- b2RevoluteJoint::IsMotorEnabled  @ 0x6d5030
/* b2RevoluteJoint::IsMotorEnabled() const */

b2RevoluteJoint __thiscall b2RevoluteJoint::IsMotorEnabled(b2RevoluteJoint *this)

{
  return this[100];
}

// ---- b2RevoluteJoint::EnableMotor  @ 0x6d5040
/* b2RevoluteJoint::EnableMotor(bool) */

void __thiscall b2RevoluteJoint::EnableMotor(b2RevoluteJoint *this,bool param_1)

{
  b2Body::SetAwake(*(b2Body **)(this + 0x30),true);
  b2Body::SetAwake(*(b2Body **)(this + 0x34),true);
  this[100] = (b2RevoluteJoint)param_1;
  return;
}

// ---- b2RevoluteJoint::GetMotorTorque  @ 0x6d5074
/* b2RevoluteJoint::GetMotorTorque(float) const */

float __thiscall b2RevoluteJoint::GetMotorTorque(b2RevoluteJoint *this,float param_1)

{
  float in_r1;
  
  return *(float *)(this + 0x60) * in_r1;
}

// ---- b2RevoluteJoint::SetMotorSpeed  @ 0x6d5094
/* b2RevoluteJoint::SetMotorSpeed(float) */

void __thiscall b2RevoluteJoint::SetMotorSpeed(b2RevoluteJoint *this,float param_1)

{
  undefined4 in_r1;
  
  b2Body::SetAwake(*(b2Body **)(this + 0x30),true);
  b2Body::SetAwake(*(b2Body **)(this + 0x34),true);
  *(undefined4 *)(this + 0x6c) = in_r1;
  return;
}

// ---- b2RevoluteJoint::SetMaxMotorTorque  @ 0x6d50c0
/* b2RevoluteJoint::SetMaxMotorTorque(float) */

void __thiscall b2RevoluteJoint::SetMaxMotorTorque(b2RevoluteJoint *this,float param_1)

{
  undefined4 in_r1;
  
  b2Body::SetAwake(*(b2Body **)(this + 0x30),true);
  b2Body::SetAwake(*(b2Body **)(this + 0x34),true);
  *(undefined4 *)(this + 0x68) = in_r1;
  return;
}

// ---- b2RevoluteJoint::IsLimitEnabled  @ 0x6d50ec
/* b2RevoluteJoint::IsLimitEnabled() const */

b2RevoluteJoint __thiscall b2RevoluteJoint::IsLimitEnabled(b2RevoluteJoint *this)

{
  return this[0x70];
}

// ---- b2RevoluteJoint::EnableLimit  @ 0x6d50fc
/* b2RevoluteJoint::EnableLimit(bool) */

void __thiscall b2RevoluteJoint::EnableLimit(b2RevoluteJoint *this,bool param_1)

{
  if ((b2RevoluteJoint)param_1 != this[0x70]) {
    b2Body::SetAwake(*(b2Body **)(this + 0x30),true);
    b2Body::SetAwake(*(b2Body **)(this + 0x34),true);
    this[0x70] = (b2RevoluteJoint)param_1;
    *(undefined4 *)(this + 0x5c) = 0;
  }
  return;
}

// ---- b2RevoluteJoint::GetLowerLimit  @ 0x6d5148
/* b2RevoluteJoint::GetLowerLimit() const */

undefined4 __thiscall b2RevoluteJoint::GetLowerLimit(b2RevoluteJoint *this)

{
  return *(undefined4 *)(this + 0x78);
}

// ---- b2RevoluteJoint::GetUpperLimit  @ 0x6d5158
/* b2RevoluteJoint::GetUpperLimit() const */

undefined4 __thiscall b2RevoluteJoint::GetUpperLimit(b2RevoluteJoint *this)

{
  return *(undefined4 *)(this + 0x7c);
}

// ---- b2RevoluteJoint::SetLimits  @ 0x6d5168
/* b2RevoluteJoint::SetLimits(float, float) */

float __thiscall b2RevoluteJoint::SetLimits(b2RevoluteJoint *this,float param_1,float param_2)

{
  float in_r1;
  float in_r2;
  
  if ((*(float *)(this + 0x78) != in_r1) || (*(float *)(this + 0x7c) != in_r2)) {
    b2Body::SetAwake(*(b2Body **)(this + 0x30),true);
    param_1 = (float)b2Body::SetAwake(*(b2Body **)(this + 0x34),true);
    *(undefined4 *)(this + 0x5c) = 0;
    *(float *)(this + 0x78) = in_r1;
    *(float *)(this + 0x7c) = in_r2;
  }
  return param_1;
}

// ---- b2RevoluteJoint::Dump  @ 0x6d51cc
/* b2RevoluteJoint::Dump() */

void __thiscall b2RevoluteJoint::Dump(b2RevoluteJoint *this)

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
  b2Log("  b2RevoluteJointDef jd;\n");
  b2Log("  jd.bodyA = bodies[%d];\n",uVar1);
  b2Log("  jd.bodyB = bodies[%d];\n",uVar2);
  b2Log("  jd.collideConnected = bool(%d);\n",(uint)(byte)this[0x3d]);
  b2Log("  jd.localAnchorA.Set(%.15lef, %.15lef);\n",extraout_r1,
        SUB84((double)*(float *)(this + 0x44),0),
        (int)((ulonglong)(double)*(float *)(this + 0x44) >> 0x20),(double)*(float *)(this + 0x48));
  b2Log("  jd.localAnchorB.Set(%.15lef, %.15lef);\n",extraout_r1_00,
        SUB84((double)*(float *)(this + 0x4c),0),
        (int)((ulonglong)(double)*(float *)(this + 0x4c) >> 0x20),(double)*(float *)(this + 0x50));
  b2Log("  jd.referenceAngle = %.15lef;\n",extraout_r1_01,SUB84((double)*(float *)(this + 0x74),0),
        (int)((ulonglong)(double)*(float *)(this + 0x74) >> 0x20));
  b2Log("  jd.enableLimit = bool(%d);\n",(uint)(byte)this[0x70]);
  b2Log("  jd.lowerAngle = %.15lef;\n",extraout_r1_02,SUB84((double)*(float *)(this + 0x78),0),
        (int)((ulonglong)(double)*(float *)(this + 0x78) >> 0x20));
  b2Log("  jd.upperAngle = %.15lef;\n",extraout_r1_03,SUB84((double)*(float *)(this + 0x7c),0),
        (int)((ulonglong)(double)*(float *)(this + 0x7c) >> 0x20));
  b2Log("  jd.enableMotor = bool(%d);\n",(uint)(byte)this[100]);
  b2Log("  jd.motorSpeed = %.15lef;\n",extraout_r1_04,SUB84((double)*(float *)(this + 0x6c),0),
        (int)((ulonglong)(double)*(float *)(this + 0x6c) >> 0x20));
  b2Log("  jd.maxMotorTorque = %.15lef;\n",extraout_r1_05,SUB84((double)*(float *)(this + 0x68),0),
        (int)((ulonglong)(double)*(float *)(this + 0x68) >> 0x20));
  b2Log("  joints[%d] = m_world->CreateJoint(&jd);\n",*(undefined4 *)(this + 0x38));
  return;
}

// ---- b2RevoluteJoint::~b2RevoluteJoint  @ 0x6d534c
/* WARNING: Removing unreachable block (ram,0x006d536e) */
/* b2RevoluteJoint::~b2RevoluteJoint() */

b2RevoluteJoint * __thiscall b2RevoluteJoint::~b2RevoluteJoint(b2RevoluteJoint *this)

{
  *(undefined ***)this = &PTR_GetAnchorA_1_0093c080;
  b2Joint::~b2Joint((b2Joint *)this);
  return this;
}

// ---- b2RevoluteJoint::~b2RevoluteJoint  @ 0x6d5388
/* b2RevoluteJoint::~b2RevoluteJoint() */

b2RevoluteJoint * __thiscall b2RevoluteJoint::~b2RevoluteJoint(b2RevoluteJoint *this)

{
  ~b2RevoluteJoint(this);
  operator_delete(this);
  return this;
}
