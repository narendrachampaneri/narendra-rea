// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 9 functions

// ---- b2Island::b2Island  @ 0x6db46c
/* b2Island::b2Island(int, int, int, b2StackAllocator*, b2ContactListener*) */

b2Island * __thiscall
b2Island::b2Island(b2Island *this,int param_1,int param_2,int param_3,b2StackAllocator *param_4,
                  b2ContactListener *param_5)

{
  undefined4 uVar1;
  
  *(int *)(this + 0x28) = param_1;
  *(int *)(this + 0x2c) = param_2;
  *(int *)(this + 0x30) = param_3;
  *(undefined4 *)(this + 0x1c) = 0;
  *(undefined4 *)(this + 0x24) = 0;
  *(undefined4 *)(this + 0x20) = 0;
  *(b2StackAllocator **)this = param_4;
  *(b2ContactListener **)(this + 4) = param_5;
  uVar1 = b2StackAllocator::Allocate(*(b2StackAllocator **)this,param_1 << 2);
  *(undefined4 *)(this + 8) = uVar1;
  uVar1 = b2StackAllocator::Allocate(*(b2StackAllocator **)this,param_2 << 2);
  *(undefined4 *)(this + 0xc) = uVar1;
  uVar1 = b2StackAllocator::Allocate(*(b2StackAllocator **)this,param_3 << 2);
  *(undefined4 *)(this + 0x10) = uVar1;
  uVar1 = b2StackAllocator::Allocate(*(b2StackAllocator **)this,*(int *)(this + 0x28) * 0xc);
  *(undefined4 *)(this + 0x18) = uVar1;
  uVar1 = b2StackAllocator::Allocate(*(b2StackAllocator **)this,*(int *)(this + 0x28) * 0xc);
  *(undefined4 *)(this + 0x14) = uVar1;
  return this;
}

// ---- b2Island::~b2Island  @ 0x6db534
/* b2Island::~b2Island() */

b2Island * __thiscall b2Island::~b2Island(b2Island *this)

{
  b2StackAllocator::Free(*(b2StackAllocator **)this,*(void **)(this + 0x14));
  b2StackAllocator::Free(*(b2StackAllocator **)this,*(void **)(this + 0x18));
  b2StackAllocator::Free(*(b2StackAllocator **)this,*(void **)(this + 0x10));
  b2StackAllocator::Free(*(b2StackAllocator **)this,*(void **)(this + 0xc));
  b2StackAllocator::Free(*(b2StackAllocator **)this,*(void **)(this + 8));
  return this;
}

// ---- b2Island::Solve  @ 0x6db594
/* b2Island::Solve(b2Profile*, b2TimeStep const&, b2Vec2 const&, bool) */

void __thiscall
b2Island::Solve(b2Island *this,b2Profile *param_1,b2TimeStep *param_2,b2Vec2 *param_3,bool param_4)

{
  bool bVar1;
  bool bVar2;
  char cVar3;
  char cVar4;
  float extraout_r0;
  undefined4 uVar5;
  float fVar6;
  float extraout_r0_00;
  int iVar7;
  float fVar8;
  float extraout_r0_01;
  int *piVar9;
  undefined4 *puVar10;
  float fVar11;
  b2Body *this_00;
  float fVar12;
  float extraout_s0;
  float extraout_s0_00;
  float extraout_s0_01;
  float extraout_s0_02;
  float extraout_s0_03;
  float extraout_s0_04;
  float extraout_s1;
  float extraout_s1_00;
  float extraout_s1_01;
  float extraout_s1_02;
  float extraout_s2;
  float extraout_s2_00;
  int local_11c;
  float local_118;
  int local_114;
  int local_110;
  int local_10c;
  int local_108;
  float local_104;
  int local_100;
  int local_fc;
  int local_f8;
  float local_f4;
  int local_f0;
  int local_ec;
  b2Timer abStack_b8 [8];
  undefined4 local_b0;
  undefined4 uStack_ac;
  int local_a8;
  int iStack_a4;
  int local_a0;
  int iStack_9c;
  b2Vec2 abStack_98 [8];
  undefined4 local_90;
  undefined4 uStack_8c;
  undefined4 uStack_88;
  undefined4 uStack_84;
  undefined4 local_80;
  undefined4 uStack_7c;
  undefined4 local_78;
  undefined4 local_74;
  undefined4 local_70;
  undefined4 uStack_6c;
  undefined4 uStack_68;
  undefined4 uStack_64;
  undefined4 local_60;
  undefined4 uStack_5c;
  undefined4 local_58;
  undefined4 local_54;
  undefined4 local_50;
  undefined4 local_4c;
  undefined4 local_48;
  b2Vec2 abStack_44 [40];
  b2ContactVelocityConstraint *local_1c;
  
  fVar12 = (float)b2Timer::b2Timer(abStack_b8);
  fVar11 = *(float *)param_2;
  for (local_11c = 0; local_11c < *(int *)(this + 0x1c); local_11c = local_11c + 1) {
    piVar9 = *(int **)(local_11c * 4 + *(int *)(this + 8));
    local_a8 = piVar9[0xb];
    iStack_a4 = piVar9[0xc];
    iVar7 = piVar9[0xe];
    local_a0 = piVar9[0x10];
    iStack_9c = piVar9[0x11];
    local_118 = (float)piVar9[0x12];
    piVar9[9] = piVar9[0xb];
    piVar9[10] = piVar9[0xc];
    piVar9[0xd] = piVar9[0xe];
    if (*piVar9 == 2) {
      fVar12 = (float)::operator*(fVar12,abStack_98);
      ::operator*(fVar12,(b2Vec2 *)&local_90);
      fVar12 = (float)::operator+((b2Vec2 *)&local_70,abStack_98);
      ::operator*(fVar12,abStack_44);
      b2Vec2::operator+=((b2Vec2 *)&local_a0,abStack_44);
      fVar6 = (float)piVar9[0x20];
      fVar8 = (float)piVar9[0x15];
      fVar12 = b2Clamp<float>(extraout_s0,extraout_s1,extraout_s2);
      b2Vec2::operator*=((b2Vec2 *)&local_a0,fVar12);
      fVar12 = b2Clamp<float>(extraout_s0_00,extraout_s1_00,extraout_s2_00);
      local_118 = (fVar6 * fVar11 * fVar8 + local_118) * extraout_r0;
    }
    piVar9 = (int *)(local_11c * 0xc + *(int *)(this + 0x14));
    *piVar9 = local_a8;
    piVar9[1] = iStack_a4;
    *(int *)(local_11c * 0xc + *(int *)(this + 0x14) + 8) = iVar7;
    piVar9 = (int *)(local_11c * 0xc + *(int *)(this + 0x18));
    *piVar9 = local_a0;
    piVar9[1] = iStack_9c;
    *(float *)(local_11c * 0xc + *(int *)(this + 0x18) + 8) = local_118;
  }
  b2Timer::Reset(abStack_b8);
  local_90 = *(undefined4 *)param_2;
  uStack_8c = *(undefined4 *)(param_2 + 4);
  uStack_88 = *(undefined4 *)(param_2 + 8);
  uStack_84 = *(undefined4 *)(param_2 + 0xc);
  local_80 = *(undefined4 *)(param_2 + 0x10);
  uStack_7c = *(undefined4 *)(param_2 + 0x14);
  local_78 = *(undefined4 *)(this + 0x14);
  local_74 = *(undefined4 *)(this + 0x18);
  local_70 = *(undefined4 *)param_2;
  uStack_6c = *(undefined4 *)(param_2 + 4);
  uStack_68 = *(undefined4 *)(param_2 + 8);
  uStack_64 = *(undefined4 *)(param_2 + 0xc);
  local_60 = *(undefined4 *)(param_2 + 0x10);
  uStack_5c = *(undefined4 *)(param_2 + 0x14);
  local_58 = *(undefined4 *)(this + 0xc);
  local_54 = *(undefined4 *)(this + 0x24);
  local_50 = *(undefined4 *)(this + 0x14);
  local_4c = *(undefined4 *)(this + 0x18);
  local_48 = *(undefined4 *)this;
  b2ContactSolver::b2ContactSolver((b2ContactSolver *)abStack_44,(b2ContactSolverDef *)&local_70);
  b2ContactSolver::InitializeVelocityConstraints((b2ContactSolver *)abStack_44);
  if (param_2[0x14] != (b2TimeStep)0x0) {
    b2ContactSolver::WarmStart();
  }
  for (local_114 = 0; local_114 < *(int *)(this + 0x20); local_114 = local_114 + 1) {
    (**(code **)(**(int **)(local_114 * 4 + *(int *)(this + 0x10)) + 0x1c))
              (*(undefined4 *)(local_114 * 4 + *(int *)(this + 0x10)),&local_90);
  }
  uVar5 = b2Timer::GetMilliseconds(abStack_b8);
  *(undefined4 *)(param_1 + 0xc) = uVar5;
  b2Timer::Reset(abStack_b8);
  for (local_110 = 0; local_110 < *(int *)(param_2 + 0xc); local_110 = local_110 + 1) {
    for (local_10c = 0; local_10c < *(int *)(this + 0x20); local_10c = local_10c + 1) {
      (**(code **)(**(int **)(local_10c * 4 + *(int *)(this + 0x10)) + 0x20))
                (*(undefined4 *)(local_10c * 4 + *(int *)(this + 0x10)),&local_90);
    }
    b2ContactSolver::SolveVelocityConstraints();
  }
  b2ContactSolver::StoreImpulses((b2ContactSolver *)abStack_44);
  uVar5 = b2Timer::GetMilliseconds(abStack_b8);
  *(undefined4 *)(param_1 + 0x10) = uVar5;
  fVar12 = extraout_s0_01;
  for (local_108 = 0; local_108 < *(int *)(this + 0x1c); local_108 = local_108 + 1) {
    puVar10 = (undefined4 *)(*(int *)(this + 0x14) + local_108 * 0xc);
    local_b0 = *puVar10;
    uStack_ac = puVar10[1];
    fVar8 = *(float *)(local_108 * 0xc + *(int *)(this + 0x14) + 8);
    piVar9 = (int *)(*(int *)(this + 0x18) + local_108 * 0xc);
    local_a8 = *piVar9;
    iStack_a4 = piVar9[1];
    local_104 = *(float *)(local_108 * 0xc + *(int *)(this + 0x18) + 8);
    ::operator*(fVar12,(b2Vec2 *)&local_a0);
    fVar6 = (float)b2Dot((b2Vec2 *)&local_a0,(b2Vec2 *)&local_a0);
    fVar12 = extraout_s0_02;
    if (4.0 < fVar6) {
      fVar12 = (float)b2Vec2::Length((b2Vec2 *)&local_a0);
      fVar12 = (float)b2Vec2::operator*=((b2Vec2 *)&local_a8,fVar12);
    }
    if (2.4674013 < fVar11 * local_104 * fVar11 * local_104) {
      fVar12 = b2Abs<float>(fVar12);
      local_104 = local_104 * (1.5707964 / extraout_r0_00);
    }
    ::operator*(fVar12,abStack_98);
    fVar12 = (float)b2Vec2::operator+=((b2Vec2 *)&local_b0,abStack_98);
    puVar10 = (undefined4 *)(local_108 * 0xc + *(int *)(this + 0x14));
    *puVar10 = local_b0;
    puVar10[1] = uStack_ac;
    *(float *)(local_108 * 0xc + *(int *)(this + 0x14) + 8) = fVar8 + fVar11 * local_104;
    piVar9 = (int *)(local_108 * 0xc + *(int *)(this + 0x18));
    *piVar9 = local_a8;
    piVar9[1] = iStack_a4;
    *(float *)(local_108 * 0xc + *(int *)(this + 0x18) + 8) = local_104;
  }
  b2Timer::Reset(abStack_b8);
  bVar2 = false;
  local_100 = 0;
  do {
    if (*(int *)(param_2 + 0x10) <= local_100) {
LAB_006dbb84:
      for (local_f8 = 0; local_f8 < *(int *)(this + 0x1c); local_f8 = local_f8 + 1) {
        iVar7 = *(int *)(local_f8 * 4 + *(int *)(this + 8));
        puVar10 = (undefined4 *)(*(int *)(this + 0x14) + local_f8 * 0xc);
        uVar5 = puVar10[1];
        *(undefined4 *)(iVar7 + 0x2c) = *puVar10;
        *(undefined4 *)(iVar7 + 0x30) = uVar5;
        *(undefined4 *)(iVar7 + 0x38) = *(undefined4 *)(local_f8 * 0xc + *(int *)(this + 0x14) + 8);
        puVar10 = (undefined4 *)(*(int *)(this + 0x18) + local_f8 * 0xc);
        uVar5 = puVar10[1];
        *(undefined4 *)(iVar7 + 0x40) = *puVar10;
        *(undefined4 *)(iVar7 + 0x44) = uVar5;
        *(undefined4 *)(iVar7 + 0x48) = *(undefined4 *)(local_f8 * 0xc + *(int *)(this + 0x18) + 8);
        b2Body::SynchronizeTransform();
      }
      uVar5 = b2Timer::GetMilliseconds(abStack_b8);
      *(undefined4 *)(param_1 + 0x14) = uVar5;
      Report(this,local_1c);
      if (param_4) {
        local_f4 = 3.4028235e+38;
        for (local_f0 = 0; local_f0 < *(int *)(this + 0x1c); local_f0 = local_f0 + 1) {
          this_00 = *(b2Body **)(local_f0 * 4 + *(int *)(this + 8));
          iVar7 = b2Body::GetType(this_00);
          if (iVar7 != 0) {
            fVar12 = extraout_s0_03;
            fVar6 = extraout_s1_01;
            if ((((*(ushort *)(this_00 + 4) & 4) == 0) ||
                (0.0012184699 < *(float *)(this_00 + 0x48) * *(float *)(this_00 + 0x48))) ||
               (fVar8 = (float)b2Dot((b2Vec2 *)(this_00 + 0x40),(b2Vec2 *)(this_00 + 0x40)),
               fVar12 = extraout_s0_04, fVar6 = extraout_s1_02, 0.0001 < fVar8)) {
              bVar1 = true;
            }
            else {
              bVar1 = false;
            }
            if (bVar1) {
              *(undefined4 *)(this_00 + 0x90) = 0;
              local_f4 = 0.0;
            }
            else {
              *(float *)(this_00 + 0x90) = *(float *)(this_00 + 0x90) + fVar11;
              b2Min<float>(fVar12,fVar6);
              local_f4 = extraout_r0_01;
            }
          }
        }
        if ((0.5 <= local_f4) && (bVar2)) {
          for (local_ec = 0; local_ec < *(int *)(this + 0x1c); local_ec = local_ec + 1) {
            b2Body::SetAwake(*(b2Body **)(local_ec * 4 + *(int *)(this + 8)),false);
          }
        }
      }
      b2ContactSolver::~b2ContactSolver((b2ContactSolver *)abStack_44);
      return;
    }
    cVar3 = b2ContactSolver::SolvePositionConstraints((b2ContactSolver *)abStack_44);
    bVar1 = true;
    for (local_fc = 0; local_fc < *(int *)(this + 0x20); local_fc = local_fc + 1) {
      cVar4 = (**(code **)(**(int **)(local_fc * 4 + *(int *)(this + 0x10)) + 0x24))
                        (*(undefined4 *)(local_fc * 4 + *(int *)(this + 0x10)),&local_90);
      if ((bVar1) && (cVar4 != '\0')) {
        bVar1 = true;
      }
      else {
        bVar1 = false;
      }
    }
    if ((cVar3 != '\0') && (bVar1)) {
      bVar2 = true;
      goto LAB_006dbb84;
    }
    local_100 = local_100 + 1;
  } while( true );
}

// ---- b2Island::SolveTOI  @ 0x6dbda8
/* b2Island::SolveTOI(b2TimeStep const&, int, int) */

void __thiscall b2Island::SolveTOI(b2Island *this,b2TimeStep *param_1,int param_2,int param_3)

{
  char cVar1;
  float fVar2;
  float extraout_r0;
  int iVar3;
  undefined4 uVar4;
  undefined4 *puVar5;
  float fVar6;
  float fVar7;
  float fVar8;
  float extraout_s0;
  int local_c0;
  int local_bc;
  int local_b8;
  int local_b4;
  float local_b0;
  undefined4 local_90;
  undefined4 uStack_8c;
  undefined4 local_88;
  undefined4 uStack_84;
  b2Vec2 abStack_80 [8];
  b2Vec2 abStack_78 [8];
  undefined4 local_70;
  undefined4 uStack_6c;
  undefined4 uStack_68;
  undefined4 uStack_64;
  undefined4 local_60;
  undefined4 uStack_5c;
  undefined4 local_58;
  undefined4 local_54;
  undefined4 local_50;
  undefined4 local_4c;
  undefined4 local_48;
  b2ContactSolver abStack_44 [40];
  b2ContactVelocityConstraint *local_1c;
  
  for (local_c0 = 0; local_c0 < *(int *)(this + 0x1c); local_c0 = local_c0 + 1) {
    iVar3 = *(int *)(local_c0 * 4 + *(int *)(this + 8));
    puVar5 = (undefined4 *)(local_c0 * 0xc + *(int *)(this + 0x14));
    uVar4 = *(undefined4 *)(iVar3 + 0x30);
    *puVar5 = *(undefined4 *)(iVar3 + 0x2c);
    puVar5[1] = uVar4;
    *(undefined4 *)(local_c0 * 0xc + *(int *)(this + 0x14) + 8) = *(undefined4 *)(iVar3 + 0x38);
    puVar5 = (undefined4 *)(local_c0 * 0xc + *(int *)(this + 0x18));
    uVar4 = *(undefined4 *)(iVar3 + 0x44);
    *puVar5 = *(undefined4 *)(iVar3 + 0x40);
    puVar5[1] = uVar4;
    *(undefined4 *)(local_c0 * 0xc + *(int *)(this + 0x18) + 8) = *(undefined4 *)(iVar3 + 0x48);
  }
  local_58 = *(undefined4 *)(this + 0xc);
  local_54 = *(undefined4 *)(this + 0x24);
  local_48 = *(undefined4 *)this;
  local_70 = *(undefined4 *)param_1;
  uStack_6c = *(undefined4 *)(param_1 + 4);
  uStack_68 = *(undefined4 *)(param_1 + 8);
  uStack_64 = *(undefined4 *)(param_1 + 0xc);
  local_60 = *(undefined4 *)(param_1 + 0x10);
  uStack_5c = *(undefined4 *)(param_1 + 0x14);
  local_50 = *(undefined4 *)(this + 0x14);
  local_4c = *(undefined4 *)(this + 0x18);
  b2ContactSolver::b2ContactSolver(abStack_44,(b2ContactSolverDef *)&local_70);
  local_bc = 0;
  while ((local_bc < *(int *)(param_1 + 0x10) &&
         (cVar1 = b2ContactSolver::SolveTOIPositionConstraints(abStack_44,param_2,param_3),
         cVar1 == '\0'))) {
    local_bc = local_bc + 1;
  }
  iVar3 = *(int *)(param_2 * 4 + *(int *)(this + 8));
  puVar5 = (undefined4 *)(*(int *)(this + 0x14) + param_2 * 0xc);
  uVar4 = puVar5[1];
  *(undefined4 *)(iVar3 + 0x24) = *puVar5;
  *(undefined4 *)(iVar3 + 0x28) = uVar4;
  *(undefined4 *)(*(int *)(param_2 * 4 + *(int *)(this + 8)) + 0x34) =
       *(undefined4 *)(param_2 * 0xc + *(int *)(this + 0x14) + 8);
  iVar3 = *(int *)(param_3 * 4 + *(int *)(this + 8));
  puVar5 = (undefined4 *)(*(int *)(this + 0x14) + param_3 * 0xc);
  uVar4 = puVar5[1];
  *(undefined4 *)(iVar3 + 0x24) = *puVar5;
  *(undefined4 *)(iVar3 + 0x28) = uVar4;
  *(undefined4 *)(*(int *)(param_3 * 4 + *(int *)(this + 8)) + 0x34) =
       *(undefined4 *)(param_3 * 0xc + *(int *)(this + 0x14) + 8);
  fVar8 = (float)b2ContactSolver::InitializeVelocityConstraints(abStack_44);
  for (local_b8 = 0; local_b8 < *(int *)(param_1 + 0xc); local_b8 = local_b8 + 1) {
    fVar8 = (float)b2ContactSolver::SolveVelocityConstraints();
  }
  fVar6 = *(float *)param_1;
  for (local_b4 = 0; local_b4 < *(int *)(this + 0x1c); local_b4 = local_b4 + 1) {
    puVar5 = (undefined4 *)(*(int *)(this + 0x14) + local_b4 * 0xc);
    local_90 = *puVar5;
    uStack_8c = puVar5[1];
    fVar7 = *(float *)(local_b4 * 0xc + *(int *)(this + 0x14) + 8);
    puVar5 = (undefined4 *)(*(int *)(this + 0x18) + local_b4 * 0xc);
    local_88 = *puVar5;
    uStack_84 = puVar5[1];
    local_b0 = *(float *)(local_b4 * 0xc + *(int *)(this + 0x18) + 8);
    ::operator*(fVar8,abStack_80);
    fVar2 = (float)b2Dot(abStack_80,abStack_80);
    fVar8 = extraout_s0;
    if (4.0 < fVar2) {
      fVar8 = (float)b2Vec2::Length(abStack_80);
      fVar8 = (float)b2Vec2::operator*=((b2Vec2 *)&local_88,fVar8);
    }
    fVar2 = fVar6 * local_b0;
    if (2.4674013 < fVar2 * fVar2) {
      fVar8 = b2Abs<float>(fVar8);
      local_b0 = local_b0 * (1.5707964 / extraout_r0);
    }
    ::operator*(fVar8,abStack_78);
    b2Vec2::operator+=((b2Vec2 *)&local_90,abStack_78);
    fVar7 = fVar7 + fVar6 * local_b0;
    puVar5 = (undefined4 *)(local_b4 * 0xc + *(int *)(this + 0x14));
    *puVar5 = local_90;
    puVar5[1] = uStack_8c;
    *(float *)(local_b4 * 0xc + *(int *)(this + 0x14) + 8) = fVar7;
    puVar5 = (undefined4 *)(local_b4 * 0xc + *(int *)(this + 0x18));
    *puVar5 = local_88;
    puVar5[1] = uStack_84;
    *(float *)(local_b4 * 0xc + *(int *)(this + 0x18) + 8) = local_b0;
    iVar3 = *(int *)(local_b4 * 4 + *(int *)(this + 8));
    *(undefined4 *)(iVar3 + 0x2c) = local_90;
    *(undefined4 *)(iVar3 + 0x30) = uStack_8c;
    *(float *)(iVar3 + 0x38) = fVar7;
    *(undefined4 *)(iVar3 + 0x40) = local_88;
    *(undefined4 *)(iVar3 + 0x44) = uStack_84;
    *(float *)(iVar3 + 0x48) = local_b0;
    fVar8 = (float)b2Body::SynchronizeTransform();
  }
  Report(this,local_1c);
  b2ContactSolver::~b2ContactSolver(abStack_44);
  return;
}

// ---- b2Island::Report  @ 0x6dc178
/* b2Island::Report(b2ContactVelocityConstraint const*) */

void __thiscall b2Island::Report(b2Island *this,b2ContactVelocityConstraint *param_1)

{
  undefined4 uVar1;
  int local_2c;
  int local_28;
  undefined4 auStack_1c [6];
  
  if (*(int *)(this + 4) != 0) {
    for (local_2c = 0; local_2c < *(int *)(this + 0x24); local_2c = local_2c + 1) {
      uVar1 = *(undefined4 *)(local_2c * 4 + *(int *)(this + 0xc));
      auStack_1c[4] = *(undefined4 *)(param_1 + local_2c * 0x98 + 0x90);
      for (local_28 = 0; local_28 < *(int *)(param_1 + local_2c * 0x98 + 0x90);
          local_28 = local_28 + 1) {
        auStack_1c[local_28] = *(undefined4 *)(param_1 + local_28 * 0x24 + local_2c * 0x98 + 0x10);
        auStack_1c[local_28 + 2] =
             *(undefined4 *)(param_1 + local_28 * 0x24 + local_2c * 0x98 + 0x14);
      }
      (**(code **)(**(int **)(this + 4) + 0x14))(*(undefined4 *)(this + 4),uVar1,auStack_1c);
    }
  }
  return;
}

// ---- b2Island::Clear  @ 0x6dc4f8
/* b2Island::Clear() */

void __thiscall b2Island::Clear(b2Island *this)

{
  *(undefined4 *)(this + 0x1c) = 0;
  *(undefined4 *)(this + 0x24) = 0;
  *(undefined4 *)(this + 0x20) = 0;
  return;
}

// ---- b2Island::Add  @ 0x6dc514
/* b2Island::Add(b2Body*) */

void __thiscall b2Island::Add(b2Island *this,b2Body *param_1)

{
  *(undefined4 *)(param_1 + 8) = *(undefined4 *)(this + 0x1c);
  *(b2Body **)(*(int *)(this + 0x1c) * 4 + *(int *)(this + 8)) = param_1;
  *(int *)(this + 0x1c) = *(int *)(this + 0x1c) + 1;
  return;
}

// ---- b2Island::Add  @ 0x6dc540
/* b2Island::Add(b2Contact*) */

void __thiscall b2Island::Add(b2Island *this,b2Contact *param_1)

{
  int iVar1;
  
  iVar1 = *(int *)(this + 0x24);
  *(int *)(this + 0x24) = iVar1 + 1;
  *(b2Contact **)(iVar1 * 4 + *(int *)(this + 0xc)) = param_1;
  return;
}

// ---- b2Island::Add  @ 0x6dc560
/* b2Island::Add(b2Joint*) */

void __thiscall b2Island::Add(b2Island *this,b2Joint *param_1)

{
  int iVar1;
  
  iVar1 = *(int *)(this + 0x20);
  *(int *)(this + 0x20) = iVar1 + 1;
  *(b2Joint **)(iVar1 * 4 + *(int *)(this + 0x10)) = param_1;
  return;
}
