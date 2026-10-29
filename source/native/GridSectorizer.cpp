// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 11 functions

// ---- GridSectorizer::GridSectorizer  @ 0x497738
/* GridSectorizer::GridSectorizer() */

GridSectorizer * __thiscall GridSectorizer::GridSectorizer(GridSectorizer *this)

{
  *(undefined4 *)(this + 0x28) = 0;
  return this;
}

// ---- GridSectorizer::~GridSectorizer  @ 0x49774c
/* GridSectorizer::~GridSectorizer() */

GridSectorizer * __thiscall GridSectorizer::~GridSectorizer(GridSectorizer *this)

{
  if (*(int *)(this + 0x28) != 0) {
    RakNet::OP_DELETE_ARRAY<DataStructures::List<void*>>
              (*(List **)(this + 0x28),
               "/Users/hunter/Appsomniacs/DoodleArmy2/cocos2d-x-2.2.5/projects/dam/proj.android-studio/dam/src/main/jni/../../../../../../../projects/dam/PlatformClasses/RakNet/Source/GridSectorizer.cpp"
               ,0x17);
  }
  return this;
}

// ---- GridSectorizer::Init  @ 0x49777c
/* GridSectorizer::Init(float, float, float, float, float, float) */

void __thiscall
GridSectorizer::Init
          (GridSectorizer *this,float param_1,float param_2,float param_3,float param_4,
          float param_5,float param_6)

{
  undefined4 extraout_r0;
  undefined4 extraout_r0_00;
  List *pLVar1;
  undefined4 extraout_r1;
  undefined4 extraout_r1_00;
  float in_r3;
  uint in_fpscr;
  double extraout_d0;
  double dVar2;
  float fVar3;
  float in_stack_00000000;
  float in_stack_00000004;
  float in_stack_00000008;
  
  dVar2 = (double)CONCAT44(param_2,param_1);
  if (*(int *)(this + 0x28) != 0) {
    RakNet::OP_DELETE_ARRAY<DataStructures::List<void*>>
              (*(List **)(this + 0x28),
               "/Users/hunter/Appsomniacs/DoodleArmy2/cocos2d-x-2.2.5/projects/dam/proj.android-studio/dam/src/main/jni/../../../../../../../projects/dam/PlatformClasses/RakNet/Source/GridSectorizer.cpp"
               ,0x1d);
    dVar2 = extraout_d0;
  }
  *(float *)this = in_r3;
  *(float *)(this + 4) = in_stack_00000000;
  *(float *)(this + 0x18) = in_stack_00000004 - in_r3;
  *(float *)(this + 0x1c) = in_stack_00000008 - in_stack_00000000;
  dVar2 = ceil(dVar2);
  *(int *)(this + 0x20) = (int)(longlong)(double)CONCAT44(extraout_r1,extraout_r0);
  ceil(dVar2);
  *(int *)(this + 0x24) = (int)(longlong)(double)CONCAT44(extraout_r1_00,extraout_r0_00);
  fVar3 = (float)VectorSignedToFloat(*(undefined4 *)(this + 0x20),(byte)(in_fpscr >> 0x16) & 3);
  *(float *)(this + 8) = *(float *)(this + 0x18) / fVar3;
  fVar3 = (float)VectorSignedToFloat(*(undefined4 *)(this + 0x24),(byte)(in_fpscr >> 0x16) & 3);
  *(float *)(this + 0xc) = *(float *)(this + 0x1c) / fVar3;
  *(float *)(this + 0x10) = 1.0 / *(float *)(this + 8);
  *(float *)(this + 0x14) = 1.0 / *(float *)(this + 0xc);
  pLVar1 = RakNet::OP_NEW_ARRAY<DataStructures::List<void*>>
                     (*(int *)(this + 0x24) * *(int *)(this + 0x20),
                      "/Users/hunter/Appsomniacs/DoodleArmy2/cocos2d-x-2.2.5/projects/dam/proj.android-studio/dam/src/main/jni/../../../../../../../projects/dam/PlatformClasses/RakNet/Source/GridSectorizer.cpp"
                      ,0x2f);
  *(List **)(this + 0x28) = pLVar1;
  return;
}

// ---- GridSectorizer::AddEntry  @ 0x4978b4
/* GridSectorizer::AddEntry(void*, float, float, float, float) */

void GridSectorizer::AddEntry(void *param_1,float param_2,float param_3,float param_4,float param_5)

{
  float extraout_s0;
  float extraout_s0_00;
  float extraout_s0_01;
  void *local_28;
  GridSectorizer *local_24;
  int local_20;
  int local_1c;
  int local_18;
  int local_14;
  int local_10;
  int local_c;
  
  local_24 = param_1;
  local_18 = WorldToCellXOffsetAndClamped(param_1,param_2);
  local_14 = WorldToCellYOffsetAndClamped(local_24,extraout_s0);
  local_10 = WorldToCellXOffsetAndClamped(local_24,extraout_s0_00);
  local_c = WorldToCellYOffsetAndClamped(local_24,extraout_s0_01);
  for (local_20 = local_18; local_20 <= local_10; local_20 = local_20 + 1) {
    for (local_1c = local_14; local_1c <= local_c; local_1c = local_1c + 1) {
      DataStructures::List<void*>::Insert
                ((List<void*> *)
                 (*(int *)(local_24 + 0x28) +
                 (local_20 + local_1c * *(int *)(local_24 + 0x20)) * 0xc),&local_28,
                 "/Users/hunter/Appsomniacs/DoodleArmy2/cocos2d-x-2.2.5/projects/dam/proj.android-studio/dam/src/main/jni/../../../../../../../projects/dam/PlatformClasses/RakNet/Source/GridSectorizer.cpp"
                 ,0x44);
    }
  }
  return;
}

// ---- GridSectorizer::GetEntries  @ 0x497954
/* GridSectorizer::GetEntries(DataStructures::List<void*>&, float, float, float, float) */

void GridSectorizer::GetEntries
               (List *param_1,float param_2,float param_3,float param_4,float param_5)

{
  int iVar1;
  int iVar2;
  int iVar3;
  void **ppvVar4;
  uint uVar5;
  List<void*> *in_r1;
  List<void*> *this;
  float extraout_s0;
  float extraout_s0_00;
  float extraout_s0_01;
  int local_28;
  int local_24;
  uint local_20;
  
  local_28 = WorldToCellXOffsetAndClamped((GridSectorizer *)param_1,param_2);
  iVar1 = WorldToCellYOffsetAndClamped((GridSectorizer *)param_1,extraout_s0);
  iVar2 = WorldToCellXOffsetAndClamped((GridSectorizer *)param_1,extraout_s0_00);
  iVar3 = WorldToCellYOffsetAndClamped((GridSectorizer *)param_1,extraout_s0_01);
  DataStructures::List<void*>::Clear
            (in_r1,true,
             "/Users/hunter/Appsomniacs/DoodleArmy2/cocos2d-x-2.2.5/projects/dam/proj.android-studio/dam/src/main/jni/../../../../../../../projects/dam/PlatformClasses/RakNet/Source/GridSectorizer.cpp"
             ,0x9e);
  for (; local_24 = iVar1, local_28 <= iVar2; local_28 = local_28 + 1) {
    for (; local_24 <= iVar3; local_24 = local_24 + 1) {
      this = (List<void*> *)
             ((local_24 * *(int *)(param_1 + 0x20) + local_28) * 0xc + *(int *)(param_1 + 0x28));
      for (local_20 = 0; uVar5 = DataStructures::List<void*>::Size(this), local_20 < uVar5;
          local_20 = local_20 + 1) {
        ppvVar4 = (void **)DataStructures::List<void*>::operator[](this,local_20);
        DataStructures::List<void*>::Insert
                  (in_r1,ppvVar4,
                   "/Users/hunter/Appsomniacs/DoodleArmy2/cocos2d-x-2.2.5/projects/dam/proj.android-studio/dam/src/main/jni/../../../../../../../projects/dam/PlatformClasses/RakNet/Source/GridSectorizer.cpp"
                   ,0xa5);
      }
    }
  }
  return;
}

// ---- GridSectorizer::PositionCrossesCells  @ 0x497a34
/* GridSectorizer::PositionCrossesCells(float, float, float, float) const */

undefined4 __thiscall
GridSectorizer::PositionCrossesCells
          (GridSectorizer *this,float param_1,float param_2,float param_3,float param_4)

{
  float in_r1;
  float in_r2;
  float in_r3;
  undefined4 uVar1;
  float in_stack_00000000;
  
  if ((in_r1 / *(float *)(this + 8) == in_r3 / *(float *)(this + 8)) &&
     (in_r2 / *(float *)(this + 0xc) == in_stack_00000000 / *(float *)(this + 0xc))) {
    uVar1 = 0;
  }
  else {
    uVar1 = 1;
  }
  return uVar1;
}

// ---- GridSectorizer::WorldToCellX  @ 0x497a98
/* GridSectorizer::WorldToCellX(float) const */

int __thiscall GridSectorizer::WorldToCellX(GridSectorizer *this,float param_1)

{
  float in_r1;
  
  return (int)((in_r1 - *(float *)this) * *(float *)(this + 0x10));
}

// ---- GridSectorizer::WorldToCellY  @ 0x497ac4
/* GridSectorizer::WorldToCellY(float) const */

int __thiscall GridSectorizer::WorldToCellY(GridSectorizer *this,float param_1)

{
  float in_r1;
  
  return (int)((in_r1 - *(float *)(this + 4)) * *(float *)(this + 0x14));
}

// ---- GridSectorizer::WorldToCellXOffsetAndClamped  @ 0x497af0
/* GridSectorizer::WorldToCellXOffsetAndClamped(float) const */

uint __thiscall GridSectorizer::WorldToCellXOffsetAndClamped(GridSectorizer *this,float param_1)

{
  uint uVar1;
  uint uVar2;
  
  uVar1 = WorldToCellX(this,param_1);
  uVar1 = uVar1 & ~((int)uVar1 >> 0x1f);
  uVar2 = *(int *)(this + 0x20) - 1U;
  if ((int)uVar1 < (int)(*(int *)(this + 0x20) - 1U)) {
    uVar2 = uVar1;
  }
  return uVar2;
}

// ---- GridSectorizer::WorldToCellYOffsetAndClamped  @ 0x497b28
/* GridSectorizer::WorldToCellYOffsetAndClamped(float) const */

uint __thiscall GridSectorizer::WorldToCellYOffsetAndClamped(GridSectorizer *this,float param_1)

{
  uint uVar1;
  uint uVar2;
  
  uVar1 = WorldToCellY(this,param_1);
  uVar1 = uVar1 & ~((int)uVar1 >> 0x1f);
  uVar2 = *(int *)(this + 0x24) - 1U;
  if ((int)uVar1 < (int)(*(int *)(this + 0x24) - 1U)) {
    uVar2 = uVar1;
  }
  return uVar2;
}

// ---- GridSectorizer::Clear  @ 0x497b60
/* GridSectorizer::Clear() */

void __thiscall GridSectorizer::Clear(GridSectorizer *this)

{
  int iVar1;
  int iVar2;
  int local_10;
  
  iVar2 = *(int *)(this + 0x20);
  iVar1 = *(int *)(this + 0x24);
  for (local_10 = 0; local_10 < iVar1 * iVar2; local_10 = local_10 + 1) {
    DataStructures::List<void*>::Clear
              ((List<void*> *)(local_10 * 0xc + *(int *)(this + 0x28)),true,
               "/Users/hunter/Appsomniacs/DoodleArmy2/cocos2d-x-2.2.5/projects/dam/proj.android-studio/dam/src/main/jni/../../../../../../../projects/dam/PlatformClasses/RakNet/Source/GridSectorizer.cpp"
               ,200);
  }
  return;
}
