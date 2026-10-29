// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 8 functions

// ---- b2ContactSolver::b2ContactSolver  @ 0x6ca47c
/* b2ContactSolver::b2ContactSolver(b2ContactSolverDef*) */

b2ContactSolver * __thiscall
b2ContactSolver::b2ContactSolver(b2ContactSolver *this,b2ContactSolverDef *param_1)

{
  int iVar1;
  int iVar2;
  int iVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  b2Contact *this_00;
  b2Fixture *this_01;
  b2Fixture *this_02;
  int iVar7;
  int iVar8;
  int iVar9;
  undefined4 *puVar10;
  b2Vec2 *this_03;
  undefined4 *puVar11;
  int local_54;
  int local_50;
  
  uVar4 = *(undefined4 *)(param_1 + 4);
  uVar5 = *(undefined4 *)(param_1 + 8);
  uVar6 = *(undefined4 *)(param_1 + 0xc);
  *(undefined4 *)this = *(undefined4 *)param_1;
  *(undefined4 *)(this + 4) = uVar4;
  *(undefined4 *)(this + 8) = uVar5;
  *(undefined4 *)(this + 0xc) = uVar6;
  uVar4 = *(undefined4 *)(param_1 + 0x14);
  *(undefined4 *)(this + 0x10) = *(undefined4 *)(param_1 + 0x10);
  *(undefined4 *)(this + 0x14) = uVar4;
  *(undefined4 *)(this + 0x20) = *(undefined4 *)(param_1 + 0x28);
  *(undefined4 *)(this + 0x30) = *(undefined4 *)(param_1 + 0x1c);
  uVar4 = b2StackAllocator::Allocate
                    (*(b2StackAllocator **)(this + 0x20),*(int *)(this + 0x30) * 0x58);
  *(undefined4 *)(this + 0x24) = uVar4;
  uVar4 = b2StackAllocator::Allocate
                    (*(b2StackAllocator **)(this + 0x20),*(int *)(this + 0x30) * 0x98);
  *(undefined4 *)(this + 0x28) = uVar4;
  *(undefined4 *)(this + 0x18) = *(undefined4 *)(param_1 + 0x20);
  *(undefined4 *)(this + 0x1c) = *(undefined4 *)(param_1 + 0x24);
  *(undefined4 *)(this + 0x2c) = *(undefined4 *)(param_1 + 0x18);
  for (local_54 = 0; local_54 < *(int *)(this + 0x30); local_54 = local_54 + 1) {
    this_00 = *(b2Contact **)(local_54 * 4 + *(int *)(this + 0x2c));
    this_01 = *(b2Fixture **)(this_00 + 0x30);
    this_02 = *(b2Fixture **)(this_00 + 0x34);
    iVar1 = b2Fixture::GetShape(this_01);
    iVar2 = b2Fixture::GetShape(this_02);
    uVar5 = *(undefined4 *)(iVar1 + 8);
    uVar6 = *(undefined4 *)(iVar2 + 8);
    iVar1 = b2Fixture::GetBody(this_01);
    iVar2 = b2Fixture::GetBody(this_02);
    iVar3 = b2Contact::GetManifold(this_00);
    iVar7 = *(int *)(iVar3 + 0x3c);
    iVar8 = local_54 * 0x98 + *(int *)(this + 0x28);
    *(undefined4 *)(iVar8 + 0x88) = *(undefined4 *)(this_00 + 0x88);
    *(undefined4 *)(iVar8 + 0x8c) = *(undefined4 *)(this_00 + 0x8c);
    *(undefined4 *)(iVar8 + 0x70) = *(undefined4 *)(iVar1 + 8);
    *(undefined4 *)(iVar8 + 0x74) = *(undefined4 *)(iVar2 + 8);
    *(undefined4 *)(iVar8 + 0x78) = *(undefined4 *)(iVar1 + 0x78);
    *(undefined4 *)(iVar8 + 0x7c) = *(undefined4 *)(iVar2 + 0x78);
    *(undefined4 *)(iVar8 + 0x80) = *(undefined4 *)(iVar1 + 0x80);
    *(undefined4 *)(iVar8 + 0x84) = *(undefined4 *)(iVar2 + 0x80);
    *(int *)(iVar8 + 0x94) = local_54;
    *(int *)(iVar8 + 0x90) = iVar7;
    b2Mat22::SetZero((b2Mat22 *)(iVar8 + 0x60));
    b2Mat22::SetZero((b2Mat22 *)(iVar8 + 0x50));
    iVar9 = local_54 * 0x58 + *(int *)(this + 0x24);
    *(undefined4 *)(iVar9 + 0x20) = *(undefined4 *)(iVar1 + 8);
    *(undefined4 *)(iVar9 + 0x24) = *(undefined4 *)(iVar2 + 8);
    *(undefined4 *)(iVar9 + 0x28) = *(undefined4 *)(iVar1 + 0x78);
    *(undefined4 *)(iVar9 + 0x2c) = *(undefined4 *)(iVar2 + 0x78);
    uVar4 = *(undefined4 *)(iVar1 + 0x20);
    *(undefined4 *)(iVar9 + 0x30) = *(undefined4 *)(iVar1 + 0x1c);
    *(undefined4 *)(iVar9 + 0x34) = uVar4;
    uVar4 = *(undefined4 *)(iVar2 + 0x20);
    *(undefined4 *)(iVar9 + 0x38) = *(undefined4 *)(iVar2 + 0x1c);
    *(undefined4 *)(iVar9 + 0x3c) = uVar4;
    *(undefined4 *)(iVar9 + 0x40) = *(undefined4 *)(iVar1 + 0x80);
    *(undefined4 *)(iVar9 + 0x44) = *(undefined4 *)(iVar2 + 0x80);
    uVar4 = *(undefined4 *)(iVar3 + 0x2c);
    *(undefined4 *)(iVar9 + 0x10) = *(undefined4 *)(iVar3 + 0x28);
    *(undefined4 *)(iVar9 + 0x14) = uVar4;
    uVar4 = *(undefined4 *)(iVar3 + 0x34);
    *(undefined4 *)(iVar9 + 0x18) = *(undefined4 *)(iVar3 + 0x30);
    *(undefined4 *)(iVar9 + 0x1c) = uVar4;
    *(int *)(iVar9 + 0x54) = iVar7;
    *(undefined4 *)(iVar9 + 0x4c) = uVar5;
    *(undefined4 *)(iVar9 + 0x50) = uVar6;
    *(undefined4 *)(iVar9 + 0x48) = *(undefined4 *)(iVar3 + 0x38);
    for (local_50 = 0; local_50 < iVar7; local_50 = local_50 + 1) {
      puVar10 = (undefined4 *)(local_50 * 0x14 + iVar3);
      this_03 = (b2Vec2 *)(local_50 * 0x24 + iVar8);
      if (this[0x14] == (b2ContactSolver)0x0) {
        *(undefined4 *)(this_03 + 0x10) = 0;
        *(undefined4 *)(this_03 + 0x14) = 0;
      }
      else {
        *(float *)(this_03 + 0x10) = *(float *)(this + 8) * (float)puVar10[2];
        *(float *)(this_03 + 0x14) = *(float *)(this + 8) * (float)puVar10[3];
      }
      b2Vec2::SetZero(this_03);
      b2Vec2::SetZero(this_03 + 8);
      *(undefined4 *)(this_03 + 0x18) = 0;
      *(undefined4 *)(this_03 + 0x1c) = 0;
      *(undefined4 *)(this_03 + 0x20) = 0;
      puVar11 = (undefined4 *)(local_50 * 8 + iVar9);
      uVar4 = puVar10[1];
      *puVar11 = *puVar10;
      puVar11[1] = uVar4;
    }
  }
  return this;
}

// ---- b2ContactSolver::~b2ContactSolver  @ 0x6ca750
/* b2ContactSolver::~b2ContactSolver() */

b2ContactSolver * __thiscall b2ContactSolver::~b2ContactSolver(b2ContactSolver *this)

{
  b2StackAllocator::Free(*(b2StackAllocator **)(this + 0x20),*(void **)(this + 0x28));
  b2StackAllocator::Free(*(b2StackAllocator **)(this + 0x20),*(void **)(this + 0x24));
  return this;
}

// ---- b2ContactSolver::InitializeVelocityConstraints  @ 0x6ca7b0
/* b2ContactSolver::InitializeVelocityConstraints() */

void __thiscall b2ContactSolver::InitializeVelocityConstraints(b2ContactSolver *this)

{
  undefined4 *puVar1;
  b2Vec2 *pbVar2;
  b2Vec2 *pbVar3;
  float fVar4;
  float extraout_s0;
  float extraout_s0_00;
  float extraout_s0_01;
  undefined8 uVar5;
  float extraout_s1;
  undefined4 local_150;
  undefined4 uStack_14c;
  undefined4 uStack_148;
  undefined4 uStack_144;
  undefined4 local_140;
  undefined4 uStack_13c;
  b2ContactSolver *local_134;
  int local_130;
  int local_12c;
  b2Vec2 *local_128;
  int local_124;
  undefined4 local_120;
  undefined4 local_11c;
  b2Transform *local_118;
  int local_114;
  int local_110;
  float local_10c;
  float local_108;
  float local_104;
  float local_100;
  undefined4 local_fc;
  undefined4 local_f8;
  undefined4 local_f4;
  undefined4 local_f0;
  int local_ec;
  b2Vec2 *local_e8;
  float local_e4;
  float local_e0;
  float local_dc;
  float local_d8;
  float local_d4;
  float local_d0;
  float local_cc;
  b2Vec2 *local_c8;
  b2Vec2 *local_c4;
  float local_c0;
  float local_bc;
  float local_b8;
  float local_b4;
  float local_b0;
  float local_ac;
  float local_a8;
  undefined4 local_a4;
  undefined4 local_a0;
  undefined4 uStack_9c;
  undefined4 local_98;
  undefined4 uStack_94;
  undefined4 local_90;
  undefined4 uStack_8c;
  undefined4 local_88;
  undefined4 uStack_84;
  undefined4 local_80;
  undefined4 uStack_7c;
  undefined4 local_78;
  undefined4 uStack_74;
  b2Vec2 abStack_70 [8];
  b2Vec2 abStack_68 [8];
  b2Vec2 abStack_60 [8];
  b2Vec2 abStack_58 [8];
  b2Vec2 abStack_50 [8];
  b2Vec2 abStack_48 [8];
  undefined4 local_40;
  undefined4 uStack_3c;
  b2Rot abStack_38 [8];
  undefined4 local_30;
  undefined4 uStack_2c;
  b2Rot abStack_28 [8];
  undefined4 local_20;
  undefined4 uStack_1c;
  
  local_134 = this;
  for (local_130 = 0; local_130 < *(int *)(local_134 + 0x30); local_130 = local_130 + 1) {
    local_128 = (b2Vec2 *)(local_130 * 0x98 + *(int *)(local_134 + 0x28));
    local_124 = local_130 * 0x58 + *(int *)(local_134 + 0x24);
    local_120 = *(undefined4 *)(local_124 + 0x4c);
    local_11c = *(undefined4 *)(local_124 + 0x50);
    local_118 = (b2Transform *)
                b2Contact::GetManifold
                          (*(b2Contact **)
                            (*(int *)(local_128 + 0x94) * 4 + *(int *)(local_134 + 0x2c)));
    local_114 = *(int *)(local_128 + 0x70);
    local_110 = *(int *)(local_128 + 0x74);
    local_10c = *(float *)(local_128 + 0x78);
    local_108 = *(float *)(local_128 + 0x7c);
    local_104 = *(float *)(local_128 + 0x80);
    local_100 = *(float *)(local_128 + 0x84);
    local_a0 = *(undefined4 *)(local_124 + 0x30);
    uStack_9c = *(undefined4 *)(local_124 + 0x34);
    local_98 = *(undefined4 *)(local_124 + 0x38);
    uStack_94 = *(undefined4 *)(local_124 + 0x3c);
    puVar1 = (undefined4 *)(*(int *)(local_134 + 0x18) + local_114 * 0xc);
    local_90 = *puVar1;
    uStack_8c = puVar1[1];
    local_fc = *(undefined4 *)(local_114 * 0xc + *(int *)(local_134 + 0x18) + 8);
    puVar1 = (undefined4 *)(*(int *)(local_134 + 0x1c) + local_114 * 0xc);
    local_88 = *puVar1;
    uStack_84 = puVar1[1];
    local_f8 = *(undefined4 *)(local_114 * 0xc + *(int *)(local_134 + 0x1c) + 8);
    puVar1 = (undefined4 *)(*(int *)(local_134 + 0x18) + local_110 * 0xc);
    local_80 = *puVar1;
    uStack_7c = puVar1[1];
    local_f4 = *(undefined4 *)(local_110 * 0xc + *(int *)(local_134 + 0x18) + 8);
    puVar1 = (undefined4 *)(*(int *)(local_134 + 0x1c) + local_110 * 0xc);
    local_78 = *puVar1;
    uStack_74 = puVar1[1];
    local_f0 = *(undefined4 *)(local_110 * 0xc + *(int *)(local_134 + 0x1c) + 8);
    b2Transform::b2Transform((b2Transform *)&local_40);
    fVar4 = (float)b2Transform::b2Transform((b2Transform *)&local_30);
    fVar4 = (float)b2Rot::Set(abStack_38,fVar4);
    b2Rot::Set(abStack_28,fVar4);
    b2Mul((b2Rot *)&local_20,(b2Vec2 *)abStack_38);
    ::operator-((b2Vec2 *)&local_140,(b2Vec2 *)&local_90);
    local_40 = local_140;
    uStack_3c = uStack_13c;
    b2Mul((b2Rot *)&local_20,(b2Vec2 *)abStack_28);
    ::operator-((b2Vec2 *)&local_140,(b2Vec2 *)&local_80);
    local_30 = local_140;
    uStack_2c = uStack_13c;
    uVar5 = b2WorldManifold::b2WorldManifold((b2WorldManifold *)&local_20);
    b2WorldManifold::Initialize
              ((b2Manifold *)&local_20,local_118,(float)uVar5,(b2Transform *)&local_40,
               (float)((ulonglong)uVar5 >> 0x20));
    *(undefined4 *)(local_128 + 0x48) = local_20;
    *(undefined4 *)(local_128 + 0x4c) = uStack_1c;
    local_ec = *(int *)(local_128 + 0x90);
    for (local_12c = 0; local_12c < local_ec; local_12c = local_12c + 1) {
      pbVar2 = local_128 + local_12c * 0x24;
      local_e8 = pbVar2;
      ::operator-((b2Vec2 *)&local_140,(b2Vec2 *)(&local_20 + (local_12c + 1) * 2));
      pbVar3 = local_e8;
      *(undefined4 *)pbVar2 = local_140;
      *(undefined4 *)(pbVar2 + 4) = uStack_13c;
      ::operator-((b2Vec2 *)&local_140,(b2Vec2 *)(&local_20 + (local_12c + 1) * 2));
      *(undefined4 *)(pbVar3 + 8) = local_140;
      *(undefined4 *)(pbVar3 + 0xc) = uStack_13c;
      local_e4 = (float)b2Cross(local_e8,local_128 + 0x48);
      local_e0 = (float)b2Cross(local_e8 + 8,local_128 + 0x48);
      local_dc = local_10c + local_108 + local_104 * local_e4 * local_e4 +
                 local_100 * local_e0 * local_e0;
      if (local_dc <= 0.0) {
        fVar4 = 0.0;
      }
      else {
        fVar4 = 1.0 / local_dc;
      }
      *(float *)(local_e8 + 0x18) = fVar4;
      b2Cross(abStack_70,extraout_s0);
      local_d8 = (float)b2Cross(local_e8,abStack_70);
      local_d4 = (float)b2Cross(local_e8 + 8,abStack_70);
      local_d0 = local_10c + local_108 + local_104 * local_d8 * local_d8 +
                 local_100 * local_d4 * local_d4;
      if (local_d0 <= 0.0) {
        fVar4 = 0.0;
      }
      else {
        fVar4 = 1.0 / local_d0;
      }
      *(float *)(local_e8 + 0x1c) = fVar4;
      *(undefined4 *)(local_e8 + 0x20) = 0;
      pbVar3 = local_128 + 0x48;
      b2Cross(extraout_s0_00,abStack_68);
      ::operator+(abStack_60,(b2Vec2 *)&local_78);
      fVar4 = (float)::operator-(abStack_58,abStack_60);
      b2Cross(fVar4,abStack_50);
      ::operator-(abStack_48,abStack_58);
      local_cc = (float)b2Dot(pbVar3,abStack_48);
      if ((int)((uint)(local_cc < -1.0) << 0x1f) < 0) {
        *(float *)(local_e8 + 0x20) = -*(float *)(local_128 + 0x8c) * local_cc;
      }
    }
    if (*(int *)(local_128 + 0x90) == 2) {
      local_c8 = local_128;
      local_c4 = local_128 + 0x24;
      local_c0 = (float)b2Cross(local_128,local_128 + 0x48);
      local_bc = (float)b2Cross(local_c8 + 8,local_128 + 0x48);
      local_b8 = (float)b2Cross(local_c4,local_128 + 0x48);
      local_b4 = (float)b2Cross(local_c4 + 8,local_128 + 0x48);
      local_b0 = local_10c + local_108 + local_104 * local_c0 * local_c0 +
                 local_100 * local_bc * local_bc;
      local_ac = local_10c + local_108 + local_104 * local_b8 * local_b8 +
                 local_100 * local_b4 * local_b4;
      local_a8 = local_10c + local_108 + local_104 * local_c0 * local_b8 +
                 local_100 * local_bc * local_b4;
      local_a4 = 0x447a0000;
      if ((int)((uint)(local_b0 * local_b0 < (local_b0 * local_ac - local_a8 * local_a8) * 1000.0)
               << 0x1f) < 0) {
        uVar5 = b2Vec2::Set(local_128 + 0x60,extraout_s0_01,extraout_s1);
        b2Vec2::Set(local_128 + 0x68,(float)uVar5,(float)((ulonglong)uVar5 >> 0x20));
        pbVar3 = local_128;
        b2Mat22::GetInverse();
        *(undefined4 *)(pbVar3 + 0x50) = local_150;
        *(undefined4 *)(pbVar3 + 0x54) = uStack_14c;
        *(undefined4 *)(pbVar3 + 0x58) = uStack_148;
        *(undefined4 *)(pbVar3 + 0x5c) = uStack_144;
      }
      else {
        *(undefined4 *)(local_128 + 0x90) = 1;
      }
    }
  }
  return;
}

// ---- b2ContactSolver::WarmStart  @ 0x6cae60
/* b2ContactSolver::WarmStart() */

void b2ContactSolver::WarmStart(void)

{
  int in_r0;
  undefined4 *puVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  float fVar5;
  float fVar6;
  int iVar7;
  b2Vec2 *pbVar8;
  float in_s0;
  float fVar9;
  float extraout_s0;
  float extraout_s0_00;
  int local_74;
  float local_70;
  float local_6c;
  int local_68;
  undefined4 local_40;
  undefined4 uStack_3c;
  undefined4 local_38;
  undefined4 uStack_34;
  undefined4 local_30;
  undefined4 uStack_2c;
  b2Vec2 abStack_28 [8];
  b2Vec2 abStack_20 [8];
  b2Vec2 abStack_18 [8];
  b2Vec2 abStack_10 [12];
  
  for (local_74 = 0; local_74 < *(int *)(in_r0 + 0x30); local_74 = local_74 + 1) {
    iVar2 = local_74 * 0x98 + *(int *)(in_r0 + 0x28);
    iVar3 = *(int *)(iVar2 + 0x70);
    iVar4 = *(int *)(iVar2 + 0x74);
    fVar5 = *(float *)(iVar2 + 0x80);
    fVar6 = *(float *)(iVar2 + 0x84);
    iVar7 = *(int *)(iVar2 + 0x90);
    puVar1 = (undefined4 *)(*(int *)(in_r0 + 0x1c) + iVar3 * 0xc);
    local_40 = *puVar1;
    uStack_3c = puVar1[1];
    local_70 = *(float *)(iVar3 * 0xc + *(int *)(in_r0 + 0x1c) + 8);
    puVar1 = (undefined4 *)(*(int *)(in_r0 + 0x1c) + iVar4 * 0xc);
    local_38 = *puVar1;
    uStack_34 = puVar1[1];
    local_6c = *(float *)(iVar4 * 0xc + *(int *)(in_r0 + 0x1c) + 8);
    local_30 = *(undefined4 *)(iVar2 + 0x48);
    uStack_2c = *(undefined4 *)(iVar2 + 0x4c);
    in_s0 = (float)b2Cross(abStack_28,in_s0);
    for (local_68 = 0; local_68 < iVar7; local_68 = local_68 + 1) {
      pbVar8 = (b2Vec2 *)(local_68 * 0x24 + iVar2);
      fVar9 = (float)::operator*(in_s0,abStack_18);
      ::operator*(fVar9,abStack_10);
      ::operator+(abStack_20,abStack_18);
      fVar9 = (float)b2Cross(pbVar8,abStack_20);
      local_70 = local_70 - fVar9 * fVar5;
      ::operator*(extraout_s0,abStack_10);
      b2Vec2::operator-=((b2Vec2 *)&local_40,abStack_10);
      fVar9 = (float)b2Cross(pbVar8 + 8,abStack_20);
      local_6c = local_6c + fVar9 * fVar6;
      ::operator*(extraout_s0_00,abStack_10);
      in_s0 = (float)b2Vec2::operator+=((b2Vec2 *)&local_38,abStack_10);
    }
    puVar1 = (undefined4 *)(iVar3 * 0xc + *(int *)(in_r0 + 0x1c));
    *puVar1 = local_40;
    puVar1[1] = uStack_3c;
    *(float *)(iVar3 * 0xc + *(int *)(in_r0 + 0x1c) + 8) = local_70;
    puVar1 = (undefined4 *)(iVar4 * 0xc + *(int *)(in_r0 + 0x1c));
    *puVar1 = local_38;
    puVar1[1] = uStack_34;
    *(float *)(iVar4 * 0xc + *(int *)(in_r0 + 0x1c) + 8) = local_6c;
  }
  return;
}

// ---- b2ContactSolver::SolveVelocityConstraints  @ 0x6cb074
/* b2ContactSolver::SolveVelocityConstraints() */

void b2ContactSolver::SolveVelocityConstraints(void)

{
  int in_r0;
  undefined4 extraout_r0;
  undefined4 extraout_r0_00;
  float fVar1;
  undefined4 *puVar2;
  b2Vec2 *pbVar3;
  int iVar4;
  int iVar5;
  float fVar6;
  float fVar7;
  int iVar8;
  b2Vec2 *pbVar9;
  float in_s0;
  float extraout_s0;
  float extraout_s0_00;
  undefined4 extraout_s0_01;
  float fVar10;
  float extraout_s0_02;
  float extraout_s0_03;
  float extraout_s0_04;
  float extraout_s0_05;
  float extraout_s0_06;
  float extraout_s0_07;
  undefined8 uVar11;
  float extraout_s1;
  undefined4 extraout_s1_00;
  float extraout_s2;
  int local_ec;
  float local_e8;
  float local_e4;
  int local_e0;
  undefined4 local_80;
  undefined4 uStack_7c;
  undefined4 local_78;
  undefined4 uStack_74;
  undefined4 local_70;
  undefined4 uStack_6c;
  b2Vec2 abStack_68 [8];
  b2Vec2 abStack_60 [8];
  b2Vec2 abStack_58 [8];
  b2Vec2 abStack_50 [8];
  float local_48;
  float local_44;
  float local_40;
  float local_3c;
  b2Vec2 local_38 [8];
  b2Vec2 abStack_30 [8];
  b2Vec2 abStack_28 [8];
  b2Vec2 abStack_20 [8];
  b2Vec2 abStack_18 [12];
  
  for (local_ec = 0; local_ec < *(int *)(in_r0 + 0x30); local_ec = local_ec + 1) {
    pbVar3 = (b2Vec2 *)(local_ec * 0x98 + *(int *)(in_r0 + 0x28));
    iVar4 = *(int *)(pbVar3 + 0x70);
    iVar5 = *(int *)(pbVar3 + 0x74);
    fVar6 = *(float *)(pbVar3 + 0x80);
    fVar7 = *(float *)(pbVar3 + 0x84);
    iVar8 = *(int *)(pbVar3 + 0x90);
    puVar2 = (undefined4 *)(*(int *)(in_r0 + 0x1c) + iVar4 * 0xc);
    local_80 = *puVar2;
    uStack_7c = puVar2[1];
    local_e8 = *(float *)(iVar4 * 0xc + *(int *)(in_r0 + 0x1c) + 8);
    puVar2 = (undefined4 *)(*(int *)(in_r0 + 0x1c) + iVar5 * 0xc);
    local_78 = *puVar2;
    uStack_74 = puVar2[1];
    local_e4 = *(float *)(iVar5 * 0xc + *(int *)(in_r0 + 0x1c) + 8);
    local_70 = *(undefined4 *)(pbVar3 + 0x48);
    uStack_6c = *(undefined4 *)(pbVar3 + 0x4c);
    uVar11 = b2Cross(abStack_68,in_s0);
    local_e0 = 0;
    while( true ) {
      fVar10 = (float)uVar11;
      if (iVar8 <= local_e0) break;
      pbVar9 = pbVar3 + local_e0 * 0x24;
      b2Cross(fVar10,abStack_30);
      ::operator+(abStack_28,(b2Vec2 *)&local_78);
      fVar10 = (float)::operator-(abStack_20,abStack_28);
      b2Cross(fVar10,abStack_18);
      ::operator-(local_38,abStack_20);
      b2Dot(local_38,abStack_68);
      fVar10 = b2Clamp<float>(extraout_s0,extraout_s1,extraout_s2);
      *(undefined4 *)(pbVar9 + 0x14) = extraout_r0;
      fVar10 = (float)::operator*(fVar10,abStack_20);
      ::operator*(fVar10,abStack_18);
      b2Vec2::operator-=((b2Vec2 *)&local_80,abStack_18);
      fVar10 = (float)b2Cross(pbVar9,abStack_20);
      local_e8 = local_e8 - fVar10 * fVar6;
      ::operator*(extraout_s0_00,abStack_18);
      b2Vec2::operator+=((b2Vec2 *)&local_78,abStack_18);
      fVar10 = (float)b2Cross(pbVar9 + 8,abStack_20);
      uVar11 = CONCAT44(extraout_s1_00,extraout_s0_01);
      local_e4 = local_e4 + fVar10 * fVar7;
      local_e0 = local_e0 + 1;
    }
    if (*(int *)(pbVar3 + 0x90) == 1) {
      b2Cross(fVar10,abStack_30);
      ::operator+(abStack_28,(b2Vec2 *)&local_78);
      fVar10 = (float)::operator-(abStack_20,abStack_28);
      b2Cross(fVar10,abStack_18);
      ::operator-(local_38,abStack_20);
      uVar11 = b2Dot(local_38,(b2Vec2 *)&local_70);
      fVar10 = b2Max<float>((float)uVar11,(float)((ulonglong)uVar11 >> 0x20));
      *(undefined4 *)(pbVar3 + 0x10) = extraout_r0_00;
      fVar10 = (float)::operator*(fVar10,abStack_20);
      ::operator*(fVar10,abStack_18);
      b2Vec2::operator-=((b2Vec2 *)&local_80,abStack_18);
      fVar10 = (float)b2Cross(pbVar3,abStack_20);
      local_e8 = local_e8 - fVar10 * fVar6;
      ::operator*(extraout_s0_02,abStack_18);
      b2Vec2::operator+=((b2Vec2 *)&local_78,abStack_18);
      fVar6 = (float)b2Cross(pbVar3 + 8,abStack_20);
      local_e4 = local_e4 + fVar6 * fVar7;
      in_s0 = extraout_s0_03;
    }
    else {
      pbVar9 = pbVar3 + 0x24;
      fVar10 = (float)b2Vec2::b2Vec2(abStack_60,fVar10,(float)((ulonglong)uVar11 >> 0x20));
      b2Cross(fVar10,abStack_30);
      ::operator+(abStack_28,(b2Vec2 *)&local_78);
      fVar10 = (float)::operator-(abStack_20,abStack_28);
      b2Cross(fVar10,abStack_18);
      fVar10 = (float)::operator-(abStack_58,abStack_20);
      b2Cross(fVar10,abStack_30);
      ::operator+(abStack_28,(b2Vec2 *)&local_78);
      fVar10 = (float)::operator-(abStack_20,abStack_28);
      b2Cross(fVar10,abStack_18);
      ::operator-(abStack_50,abStack_20);
      fVar10 = (float)b2Dot(abStack_58,(b2Vec2 *)&local_70);
      fVar1 = (float)b2Dot(abStack_50,(b2Vec2 *)&local_70);
      b2Vec2::b2Vec2((b2Vec2 *)&local_48);
      local_48 = fVar10 - *(float *)(pbVar3 + 0x20);
      local_44 = fVar1 - *(float *)(pbVar3 + 0x44);
      b2Mul((b2Mat22 *)abStack_18,pbVar3 + 0x60);
      b2Vec2::operator-=((b2Vec2 *)&local_48,abStack_18);
      b2Mul((b2Mat22 *)abStack_18,pbVar3 + 0x50);
      in_s0 = (float)b2Vec2::operator-((b2Vec2 *)&local_40);
      if ((local_40 < 0.0) || (local_3c < 0.0)) {
        local_40 = -*(float *)(pbVar3 + 0x18) * local_48;
        local_3c = 0.0;
        if ((local_40 < 0.0) || (*(float *)(pbVar3 + 100) * local_40 + local_44 < 0.0)) {
          local_40 = 0.0;
          local_3c = -*(float *)(pbVar3 + 0x3c) * local_44;
          if ((local_3c < 0.0) || (*(float *)(pbVar3 + 0x68) * local_3c + local_48 < 0.0)) {
            local_40 = 0.0;
            local_3c = 0.0;
            if ((0.0 <= local_48) && (0.0 <= local_44)) {
              fVar10 = (float)::operator-(local_38,(b2Vec2 *)&local_40);
              fVar10 = (float)::operator*(fVar10,abStack_30);
              ::operator*(fVar10,abStack_28);
              fVar10 = (float)::operator+(abStack_20,abStack_30);
              ::operator*(fVar10,abStack_18);
              b2Vec2::operator-=((b2Vec2 *)&local_80,abStack_18);
              fVar10 = (float)b2Cross(pbVar3,abStack_30);
              fVar1 = (float)b2Cross(pbVar9,abStack_28);
              local_e8 = local_e8 - (fVar10 + fVar1) * fVar6;
              fVar6 = (float)::operator+(abStack_20,abStack_30);
              ::operator*(fVar6,abStack_18);
              b2Vec2::operator+=((b2Vec2 *)&local_78,abStack_18);
              fVar6 = (float)b2Cross(pbVar3 + 8,abStack_30);
              fVar10 = (float)b2Cross(pbVar3 + 0x2c,abStack_28);
              local_e4 = local_e4 + (fVar6 + fVar10) * fVar7;
              *(float *)(pbVar3 + 0x10) = local_40;
              *(float *)(pbVar3 + 0x34) = local_3c;
              in_s0 = extraout_s0_07;
            }
          }
          else {
            fVar10 = (float)::operator-(local_38,(b2Vec2 *)&local_40);
            fVar10 = (float)::operator*(fVar10,abStack_30);
            ::operator*(fVar10,abStack_28);
            fVar10 = (float)::operator+(abStack_20,abStack_30);
            ::operator*(fVar10,abStack_18);
            b2Vec2::operator-=((b2Vec2 *)&local_80,abStack_18);
            fVar10 = (float)b2Cross(pbVar3,abStack_30);
            fVar1 = (float)b2Cross(pbVar9,abStack_28);
            local_e8 = local_e8 - (fVar10 + fVar1) * fVar6;
            fVar6 = (float)::operator+(abStack_20,abStack_30);
            ::operator*(fVar6,abStack_18);
            b2Vec2::operator+=((b2Vec2 *)&local_78,abStack_18);
            fVar6 = (float)b2Cross(pbVar3 + 8,abStack_30);
            fVar10 = (float)b2Cross(pbVar3 + 0x2c,abStack_28);
            local_e4 = local_e4 + (fVar6 + fVar10) * fVar7;
            *(float *)(pbVar3 + 0x10) = local_40;
            *(float *)(pbVar3 + 0x34) = local_3c;
            in_s0 = extraout_s0_06;
          }
        }
        else {
          fVar10 = (float)::operator-(local_38,(b2Vec2 *)&local_40);
          fVar10 = (float)::operator*(fVar10,abStack_30);
          ::operator*(fVar10,abStack_28);
          fVar10 = (float)::operator+(abStack_20,abStack_30);
          ::operator*(fVar10,abStack_18);
          b2Vec2::operator-=((b2Vec2 *)&local_80,abStack_18);
          fVar10 = (float)b2Cross(pbVar3,abStack_30);
          fVar1 = (float)b2Cross(pbVar9,abStack_28);
          local_e8 = local_e8 - (fVar10 + fVar1) * fVar6;
          fVar6 = (float)::operator+(abStack_20,abStack_30);
          ::operator*(fVar6,abStack_18);
          b2Vec2::operator+=((b2Vec2 *)&local_78,abStack_18);
          fVar6 = (float)b2Cross(pbVar3 + 8,abStack_30);
          fVar10 = (float)b2Cross(pbVar3 + 0x2c,abStack_28);
          local_e4 = local_e4 + (fVar6 + fVar10) * fVar7;
          *(float *)(pbVar3 + 0x10) = local_40;
          *(float *)(pbVar3 + 0x34) = local_3c;
          in_s0 = extraout_s0_05;
        }
      }
      else {
        fVar10 = (float)::operator-(local_38,(b2Vec2 *)&local_40);
        fVar10 = (float)::operator*(fVar10,abStack_30);
        ::operator*(fVar10,abStack_28);
        fVar10 = (float)::operator+(abStack_20,abStack_30);
        ::operator*(fVar10,abStack_18);
        b2Vec2::operator-=((b2Vec2 *)&local_80,abStack_18);
        fVar10 = (float)b2Cross(pbVar3,abStack_30);
        fVar1 = (float)b2Cross(pbVar9,abStack_28);
        local_e8 = local_e8 - (fVar10 + fVar1) * fVar6;
        fVar6 = (float)::operator+(abStack_20,abStack_30);
        ::operator*(fVar6,abStack_18);
        b2Vec2::operator+=((b2Vec2 *)&local_78,abStack_18);
        fVar6 = (float)b2Cross(pbVar3 + 8,abStack_30);
        fVar10 = (float)b2Cross(pbVar3 + 0x2c,abStack_28);
        local_e4 = local_e4 + (fVar6 + fVar10) * fVar7;
        *(float *)(pbVar3 + 0x10) = local_40;
        *(float *)(pbVar3 + 0x34) = local_3c;
        in_s0 = extraout_s0_04;
      }
    }
    puVar2 = (undefined4 *)(iVar4 * 0xc + *(int *)(in_r0 + 0x1c));
    *puVar2 = local_80;
    puVar2[1] = uStack_7c;
    *(float *)(iVar4 * 0xc + *(int *)(in_r0 + 0x1c) + 8) = local_e8;
    puVar2 = (undefined4 *)(iVar5 * 0xc + *(int *)(in_r0 + 0x1c));
    *puVar2 = local_78;
    puVar2[1] = uStack_74;
    *(float *)(iVar5 * 0xc + *(int *)(in_r0 + 0x1c) + 8) = local_e4;
  }
  return;
}

// ---- b2ContactSolver::StoreImpulses  @ 0x6cbb1c
/* b2ContactSolver::StoreImpulses() */

void __thiscall b2ContactSolver::StoreImpulses(b2ContactSolver *this)

{
  int iVar1;
  int iVar2;
  int local_18;
  int local_14;
  
  for (local_18 = 0; local_18 < *(int *)(this + 0x30); local_18 = local_18 + 1) {
    iVar2 = local_18 * 0x98 + *(int *)(this + 0x28);
    iVar1 = b2Contact::GetManifold
                      (*(b2Contact **)(*(int *)(iVar2 + 0x94) * 4 + *(int *)(this + 0x2c)));
    for (local_14 = 0; local_14 < *(int *)(iVar2 + 0x90); local_14 = local_14 + 1) {
      *(undefined4 *)(local_14 * 0x14 + iVar1 + 8) = *(undefined4 *)(local_14 * 0x24 + iVar2 + 0x10)
      ;
      *(undefined4 *)(local_14 * 0x14 + iVar1 + 0xc) =
           *(undefined4 *)(local_14 * 0x24 + iVar2 + 0x14);
    }
  }
  return;
}

// ---- b2ContactSolver::SolvePositionConstraints  @ 0x6cbe00
/* b2ContactSolver::SolvePositionConstraints() */

bool __thiscall b2ContactSolver::SolvePositionConstraints(b2ContactSolver *this)

{
  float extraout_r0;
  float extraout_r0_00;
  undefined4 *puVar1;
  float fVar2;
  float extraout_s0;
  float extraout_s0_00;
  undefined8 uVar3;
  float extraout_s1;
  float extraout_s2;
  undefined4 local_e8;
  undefined4 uStack_e4;
  b2ContactSolver *local_dc;
  float local_d8;
  int local_d4;
  float local_d0;
  float local_cc;
  int local_c8;
  b2Transform *local_c4;
  int local_c0;
  int local_bc;
  float local_b8;
  float local_b4;
  float local_b0;
  float local_ac;
  int local_a8;
  undefined4 local_a4;
  float local_a0;
  float local_9c;
  float local_98;
  float local_94;
  float local_90;
  undefined4 local_8c;
  undefined4 uStack_88;
  undefined4 local_84;
  undefined4 uStack_80;
  undefined4 local_7c;
  undefined4 uStack_78;
  undefined4 local_74;
  undefined4 uStack_70;
  undefined4 local_6c;
  undefined4 uStack_68;
  undefined4 local_64;
  undefined4 uStack_60;
  b2Vec2 abStack_5c [8];
  b2Vec2 abStack_54 [8];
  b2Vec2 abStack_4c [8];
  b2Vec2 abStack_44 [8];
  undefined4 local_3c;
  undefined4 uStack_38;
  b2Rot abStack_34 [8];
  undefined4 local_2c;
  undefined4 uStack_28;
  b2Rot abStack_24 [8];
  undefined4 local_1c;
  undefined4 uStack_18;
  undefined4 local_14;
  undefined4 uStack_10;
  undefined4 local_c;
  
  local_d8 = 0.0;
  local_dc = this;
  for (local_d4 = 0; local_d4 < *(int *)(local_dc + 0x30); local_d4 = local_d4 + 1) {
    local_c4 = (b2Transform *)(local_d4 * 0x58 + *(int *)(local_dc + 0x24));
    local_c0 = *(int *)(local_c4 + 0x20);
    local_bc = *(int *)(local_c4 + 0x24);
    local_8c = *(undefined4 *)(local_c4 + 0x30);
    uStack_88 = *(undefined4 *)(local_c4 + 0x34);
    local_b8 = *(float *)(local_c4 + 0x28);
    local_b4 = *(float *)(local_c4 + 0x40);
    local_84 = *(undefined4 *)(local_c4 + 0x38);
    uStack_80 = *(undefined4 *)(local_c4 + 0x3c);
    local_b0 = *(float *)(local_c4 + 0x2c);
    local_ac = *(float *)(local_c4 + 0x44);
    local_a8 = *(int *)(local_c4 + 0x54);
    puVar1 = (undefined4 *)(*(int *)(local_dc + 0x18) + local_c0 * 0xc);
    local_7c = *puVar1;
    uStack_78 = puVar1[1];
    local_d0 = *(float *)(local_c0 * 0xc + *(int *)(local_dc + 0x18) + 8);
    puVar1 = (undefined4 *)(*(int *)(local_dc + 0x18) + local_bc * 0xc);
    local_74 = *puVar1;
    uStack_70 = puVar1[1];
    local_cc = *(float *)(local_bc * 0xc + *(int *)(local_dc + 0x18) + 8);
    for (local_c8 = 0; local_c8 < local_a8; local_c8 = local_c8 + 1) {
      b2Transform::b2Transform((b2Transform *)&local_3c);
      fVar2 = (float)b2Transform::b2Transform((b2Transform *)&local_2c);
      fVar2 = (float)b2Rot::Set(abStack_34,fVar2);
      b2Rot::Set(abStack_24,fVar2);
      b2Mul((b2Rot *)&local_1c,(b2Vec2 *)abStack_34);
      ::operator-((b2Vec2 *)&local_e8,(b2Vec2 *)&local_7c);
      local_3c = local_e8;
      uStack_38 = uStack_e4;
      b2Mul((b2Rot *)&local_1c,(b2Vec2 *)abStack_24);
      ::operator-((b2Vec2 *)&local_e8,(b2Vec2 *)&local_74);
      local_2c = local_e8;
      uStack_28 = uStack_e4;
      b2PositionSolverManifold::b2PositionSolverManifold((b2PositionSolverManifold *)&local_1c);
      b2PositionSolverManifold::Initialize
                ((b2ContactPositionConstraint *)&local_1c,local_c4,(b2Transform *)&local_3c,
                 (int)&local_2c);
      local_6c = local_1c;
      uStack_68 = uStack_18;
      local_64 = local_14;
      uStack_60 = uStack_10;
      local_a4 = local_c;
      ::operator-(abStack_5c,(b2Vec2 *)&local_64);
      uVar3 = ::operator-(abStack_54,(b2Vec2 *)&local_64);
      fVar2 = b2Min<float>((float)uVar3,(float)((ulonglong)uVar3 >> 0x20));
      local_d8 = extraout_r0;
      b2Clamp<float>(fVar2,extraout_s1,extraout_s2);
      local_a0 = extraout_r0_00;
      local_9c = (float)b2Cross(abStack_5c,(b2Vec2 *)&local_6c);
      local_98 = (float)b2Cross(abStack_54,(b2Vec2 *)&local_6c);
      local_94 = local_b8 + local_b0 + local_b4 * local_9c * local_9c +
                 local_ac * local_98 * local_98;
      if (local_94 <= 0.0) {
        local_90 = 0.0;
      }
      else {
        local_90 = -local_a0 / local_94;
      }
      fVar2 = (float)::operator*(extraout_s0,abStack_4c);
      ::operator*(fVar2,abStack_44);
      b2Vec2::operator-=((b2Vec2 *)&local_7c,abStack_44);
      fVar2 = (float)b2Cross(abStack_5c,abStack_4c);
      local_d0 = local_d0 - fVar2 * local_b4;
      ::operator*(extraout_s0_00,abStack_44);
      b2Vec2::operator+=((b2Vec2 *)&local_74,abStack_44);
      fVar2 = (float)b2Cross(abStack_54,abStack_4c);
      local_cc = local_cc + fVar2 * local_ac;
    }
    puVar1 = (undefined4 *)(local_c0 * 0xc + *(int *)(local_dc + 0x18));
    *puVar1 = local_7c;
    puVar1[1] = uStack_78;
    *(float *)(local_c0 * 0xc + *(int *)(local_dc + 0x18) + 8) = local_d0;
    puVar1 = (undefined4 *)(local_bc * 0xc + *(int *)(local_dc + 0x18));
    *puVar1 = local_74;
    puVar1[1] = uStack_70;
    *(float *)(local_bc * 0xc + *(int *)(local_dc + 0x18) + 8) = local_cc;
  }
  return -0.015 <= local_d8;
}

// ---- b2ContactSolver::SolveTOIPositionConstraints  @ 0x6cc1a0
/* b2ContactSolver::SolveTOIPositionConstraints(int, int) */

bool __thiscall
b2ContactSolver::SolveTOIPositionConstraints(b2ContactSolver *this,int param_1,int param_2)

{
  float extraout_r0;
  float extraout_r0_00;
  undefined4 *puVar1;
  float fVar2;
  float extraout_s0;
  float extraout_s0_00;
  undefined8 uVar3;
  float extraout_s1;
  float extraout_s2;
  undefined4 local_f0;
  undefined4 uStack_ec;
  int local_e4;
  int local_e0;
  b2ContactSolver *local_dc;
  float local_d8;
  int local_d4;
  float local_d0;
  float local_cc;
  float local_c8;
  float local_c4;
  float local_c0;
  float local_bc;
  int local_b8;
  b2Transform *local_b4;
  int local_b0;
  int local_ac;
  int local_a8;
  undefined4 local_a4;
  float local_a0;
  float local_9c;
  float local_98;
  float local_94;
  float local_90;
  undefined4 local_8c;
  undefined4 uStack_88;
  undefined4 local_84;
  undefined4 uStack_80;
  undefined4 local_7c;
  undefined4 uStack_78;
  undefined4 local_74;
  undefined4 uStack_70;
  undefined4 local_6c;
  undefined4 uStack_68;
  undefined4 local_64;
  undefined4 uStack_60;
  b2Vec2 abStack_5c [8];
  b2Vec2 abStack_54 [8];
  b2Vec2 abStack_4c [8];
  b2Vec2 abStack_44 [8];
  undefined4 local_3c;
  undefined4 uStack_38;
  b2Rot abStack_34 [8];
  undefined4 local_2c;
  undefined4 uStack_28;
  b2Rot abStack_24 [8];
  undefined4 local_1c;
  undefined4 uStack_18;
  undefined4 local_14;
  undefined4 uStack_10;
  undefined4 local_c;
  
  local_d8 = 0.0;
  local_e4 = param_2;
  local_e0 = param_1;
  local_dc = this;
  for (local_d4 = 0; local_d4 < *(int *)(local_dc + 0x30); local_d4 = local_d4 + 1) {
    local_b4 = (b2Transform *)(local_d4 * 0x58 + *(int *)(local_dc + 0x24));
    local_b0 = *(int *)(local_b4 + 0x20);
    local_ac = *(int *)(local_b4 + 0x24);
    local_8c = *(undefined4 *)(local_b4 + 0x30);
    uStack_88 = *(undefined4 *)(local_b4 + 0x34);
    local_84 = *(undefined4 *)(local_b4 + 0x38);
    uStack_80 = *(undefined4 *)(local_b4 + 0x3c);
    local_a8 = *(int *)(local_b4 + 0x54);
    local_d0 = 0.0;
    local_cc = 0.0;
    if ((local_b0 == local_e0) || (local_b0 == local_e4)) {
      local_d0 = *(float *)(local_b4 + 0x28);
      local_cc = *(float *)(local_b4 + 0x40);
    }
    local_c8 = *(float *)(local_b4 + 0x2c);
    local_c4 = *(float *)(local_b4 + 0x44);
    if ((local_ac == local_e0) || (local_ac == local_e4)) {
      local_c8 = *(float *)(local_b4 + 0x2c);
      local_c4 = *(float *)(local_b4 + 0x44);
    }
    puVar1 = (undefined4 *)(*(int *)(local_dc + 0x18) + local_b0 * 0xc);
    local_7c = *puVar1;
    uStack_78 = puVar1[1];
    local_c0 = *(float *)(local_b0 * 0xc + *(int *)(local_dc + 0x18) + 8);
    puVar1 = (undefined4 *)(*(int *)(local_dc + 0x18) + local_ac * 0xc);
    local_74 = *puVar1;
    uStack_70 = puVar1[1];
    local_bc = *(float *)(local_ac * 0xc + *(int *)(local_dc + 0x18) + 8);
    for (local_b8 = 0; local_b8 < local_a8; local_b8 = local_b8 + 1) {
      b2Transform::b2Transform((b2Transform *)&local_3c);
      fVar2 = (float)b2Transform::b2Transform((b2Transform *)&local_2c);
      fVar2 = (float)b2Rot::Set(abStack_34,fVar2);
      b2Rot::Set(abStack_24,fVar2);
      b2Mul((b2Rot *)&local_1c,(b2Vec2 *)abStack_34);
      ::operator-((b2Vec2 *)&local_f0,(b2Vec2 *)&local_7c);
      local_3c = local_f0;
      uStack_38 = uStack_ec;
      b2Mul((b2Rot *)&local_1c,(b2Vec2 *)abStack_24);
      ::operator-((b2Vec2 *)&local_f0,(b2Vec2 *)&local_74);
      local_2c = local_f0;
      uStack_28 = uStack_ec;
      b2PositionSolverManifold::b2PositionSolverManifold((b2PositionSolverManifold *)&local_1c);
      b2PositionSolverManifold::Initialize
                ((b2ContactPositionConstraint *)&local_1c,local_b4,(b2Transform *)&local_3c,
                 (int)&local_2c);
      local_6c = local_1c;
      uStack_68 = uStack_18;
      local_64 = local_14;
      uStack_60 = uStack_10;
      local_a4 = local_c;
      ::operator-(abStack_5c,(b2Vec2 *)&local_64);
      uVar3 = ::operator-(abStack_54,(b2Vec2 *)&local_64);
      fVar2 = b2Min<float>((float)uVar3,(float)((ulonglong)uVar3 >> 0x20));
      local_d8 = extraout_r0;
      b2Clamp<float>(fVar2,extraout_s1,extraout_s2);
      local_a0 = extraout_r0_00;
      local_9c = (float)b2Cross(abStack_5c,(b2Vec2 *)&local_6c);
      local_98 = (float)b2Cross(abStack_54,(b2Vec2 *)&local_6c);
      local_94 = local_d0 + local_c8 + local_cc * local_9c * local_9c +
                 local_c4 * local_98 * local_98;
      if (local_94 <= 0.0) {
        local_90 = 0.0;
      }
      else {
        local_90 = -local_a0 / local_94;
      }
      fVar2 = (float)::operator*(extraout_s0,abStack_4c);
      ::operator*(fVar2,abStack_44);
      b2Vec2::operator-=((b2Vec2 *)&local_7c,abStack_44);
      fVar2 = (float)b2Cross(abStack_5c,abStack_4c);
      local_c0 = local_c0 - fVar2 * local_cc;
      ::operator*(extraout_s0_00,abStack_44);
      b2Vec2::operator+=((b2Vec2 *)&local_74,abStack_44);
      fVar2 = (float)b2Cross(abStack_54,abStack_4c);
      local_bc = local_bc + fVar2 * local_c4;
    }
    puVar1 = (undefined4 *)(local_b0 * 0xc + *(int *)(local_dc + 0x18));
    *puVar1 = local_7c;
    puVar1[1] = uStack_78;
    *(float *)(local_b0 * 0xc + *(int *)(local_dc + 0x18) + 8) = local_c0;
    puVar1 = (undefined4 *)(local_ac * 0xc + *(int *)(local_dc + 0x18));
    *puVar1 = local_74;
    puVar1[1] = uStack_70;
    *(float *)(local_ac * 0xc + *(int *)(local_dc + 0x18) + 8) = local_bc;
  }
  return -0.0075 <= local_d8;
}
