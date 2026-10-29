// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 417 functions

// ---- FUN_00560108  @ 0x560108
OpenResponse * FUN_00560108(OpenResponse *param_1,int param_2,undefined4 param_3)

{
  int iVar1;
  undefined4 uVar2;
  bool bVar3;
  undefined1 *local_a4;
  undefined4 local_a0;
  __shared_count a_Stack_9c [4];
  undefined4 local_98;
  __shared_count a_Stack_94 [4];
  undefined4 local_90;
  undefined4 local_8c;
  undefined4 local_88;
  undefined4 local_84;
  undefined4 local_80;
  undefined4 local_7c;
  undefined1 auStack_78 [16];
  undefined1 auStack_68 [16];
  undefined1 auStack_58 [16];
  undefined4 local_48;
  SnapshotMetadata aSStack_44 [8];
  undefined1 *local_3c;
  SnapshotMetadata aSStack_38 [8];
  SnapshotMetadata aSStack_30 [12];
  
  iVar1 = FUN_00543484(param_3);
  if (iVar1 == -3) {
    FUN_00511920(*(undefined4 *)(param_2 + 0x28));
  }
  else if (iVar1 == -2) {
    FUN_0054968c((OpenResponse *)&local_48,param_3,&DAT_009619a4,"getStatus",
                 "()Lcom/google/android/gms/common/api/Status;");
    uVar2 = FUN_00548d1c((OpenResponse *)&local_48,"getStatusCode");
    FUN_00548ab0((OpenResponse *)&local_48);
    FUN_005166ae(1,"Encountered GmsCore error with status code: %d",uVar2);
  }
  uVar2 = FUN_00529e98(iVar1);
  iVar1 = gpg::IsError();
  local_48 = uVar2;
  if (iVar1 == 0) {
    FUN_0054932c(auStack_78,param_3,&DAT_00963e24);
    FUN_005490cc(&local_a4,auStack_78,&DAT_00801f93,"getConflictId");
    bVar3 = *(int *)(local_a4 + -0xc) != 0;
    FUN_0054968c(auStack_68,auStack_78,&DAT_00961ba4,"getSnapshot",
                 "()Lcom/google/android/gms/games/snapshot/Snapshot;");
    FUN_0053470e((OpenResponse *)&local_48,param_2 + 0x28);
    FUN_007c6a60(&local_88,&DAT_00801f93,auStack_58);
    FUN_00561f00(&local_a0,(OpenResponse *)&local_48,auStack_68,&local_88,bVar3);
    FUN_007c5914(&local_88);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)aSStack_44);
    FUN_0054968c(auStack_58,auStack_78,&DAT_00961ba4,"getConflictingSnapshot",
                 "()Lcom/google/android/gms/games/snapshot/Snapshot;");
    FUN_0053470e((OpenResponse *)&local_48,param_2 + 0x28);
    FUN_007c6a60(&local_80,&DAT_00801f93,&local_88);
    FUN_00561f00(&local_98,(OpenResponse *)&local_48,auStack_58,&local_80,bVar3);
    FUN_007c5914(&local_80);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)aSStack_44);
    if (bVar3) {
      local_90 = 0;
      local_8c = 0;
    }
    else {
      local_90 = local_a0;
      std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
                ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_8c,a_Stack_9c);
    }
    gpg::SnapshotMetadata::SnapshotMetadata(aSStack_44,&local_90);
    local_3c = local_a4;
    local_a4 = &DAT_00972528;
    if (bVar3) {
      local_88 = local_a0;
      std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
                ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_84,a_Stack_9c);
    }
    else {
      local_88 = 0;
      local_84 = 0;
    }
    gpg::SnapshotMetadata::SnapshotMetadata(aSStack_38,&local_88);
    if (bVar3) {
      local_80 = local_98;
      std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
                ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_7c,a_Stack_94);
    }
    else {
      local_80 = 0;
      local_7c = 0;
    }
    gpg::SnapshotMetadata::SnapshotMetadata(aSStack_30,&local_80);
    gpg::SnapshotManager::OpenResponse::OpenResponse(param_1,(OpenResponse *)&local_48);
    gpg::SnapshotManager::OpenResponse::~OpenResponse((OpenResponse *)&local_48);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_7c);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_84);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_8c);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)a_Stack_94);
    FUN_00548ab0(auStack_58);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)a_Stack_9c);
    FUN_00548ab0(auStack_68);
    FUN_007c5914(&local_a4);
    FUN_00548ab0(auStack_78);
  }
  else {
    gpg::SnapshotMetadata::SnapshotMetadata(aSStack_44);
    local_3c = &DAT_00972528;
    gpg::SnapshotMetadata::SnapshotMetadata(aSStack_38);
    gpg::SnapshotMetadata::SnapshotMetadata(aSStack_30);
    gpg::SnapshotManager::OpenResponse::OpenResponse(param_1,(OpenResponse *)&local_48);
    gpg::SnapshotManager::OpenResponse::~OpenResponse((OpenResponse *)&local_48);
  }
  return param_1;
}

// ---- FUN_005603fc  @ 0x5603fc
void FUN_005603fc(undefined4 *param_1)

{
  undefined4 uVar1;
  undefined1 auStack_30 [16];
  undefined1 auStack_20 [16];
  
  param_1 = (undefined4 *)*param_1;
  FUN_00548b30(auStack_30);
  uVar1 = *param_1;
  FUN_00548b30(auStack_20,auStack_30);
  FUN_0055fd2c(uVar1,auStack_20);
  FUN_00548ab0(auStack_20);
  FUN_00548ab0(auStack_30);
  return;
}

// ---- FUN_00560440  @ 0x560440
undefined4 * FUN_00560440(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_00560440_1_00928188;
  FUN_00526878(param_1 + 0xc);
  FUN_00533468(param_1);
  return param_1;
}

// ---- FUN_00560460  @ 0x560460
void * FUN_00560460(void *param_1)

{
  FUN_00560440();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_00560474  @ 0x560474
undefined4 * FUN_00560474(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_00560474_1_009281e0;
  FUN_00560440();
  return param_1;
}

// ---- FUN_0056048c  @ 0x56048c
void * FUN_0056048c(void *param_1)

{
  FUN_00560474();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_005604a0  @ 0x5604a0
undefined4 * FUN_005604a0(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_005604a0_1_00928240;
  gpg::SnapshotMetadata::~SnapshotMetadata((SnapshotMetadata *)(param_1 + 0x14));
  FUN_00560474(param_1);
  return param_1;
}

// ---- FUN_005604c0  @ 0x5604c0
void * FUN_005604c0(void *param_1)

{
  FUN_005604a0();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_005604d2  @ 0x5604d2
int FUN_005604d2(int param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  *(undefined4 *)(param_1 + 8) = 0;
  if (*(int *)(param_2 + 8) != 0) {
    *(undefined4 *)(param_1 + 0xc) = *(undefined4 *)(param_2 + 0xc);
    *(undefined4 *)(param_1 + 8) = *(undefined4 *)(param_2 + 8);
    (**(code **)(param_2 + 8))(param_1,param_2,2,*(code **)(param_2 + 8),param_4);
  }
  std::function<void(gpg::SnapshotManager::ReadResponse_const&)>::function
            ((function<void(gpg::SnapshotManager::ReadResponse_const&)> *)(param_1 + 0x10),
             (function *)(param_2 + 0x10));
  return param_1;
}

// ---- FUN_0056050c  @ 0x56050c
undefined4 *
FUN_0056050c(undefined4 *param_1,undefined4 *param_2,undefined4 param_3,SnapshotMetadata *param_4)

{
  undefined4 uVar1;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_7c [4];
  undefined4 local_78;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_74 [4];
  undefined4 local_70;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_6c [4];
  undefined1 auStack_68 [32];
  undefined1 auStack_48 [36];
  
  uVar1 = *param_2;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_7c,(__shared_count *)(param_2 + 1));
  FUN_005604d2(auStack_68,param_3);
  local_78 = uVar1;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_74,(__shared_count *)a_Stack_7c);
  FUN_005604d2(auStack_48,auStack_68);
  local_70 = local_78;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_6c,(__shared_count *)a_Stack_74);
  FUN_00533528(param_1,&local_70);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_6c);
  *param_1 = &PTR_FUN_00560440_1_00928188;
  FUN_005604d2(param_1 + 0xc,auStack_48);
  FUN_00526878(auStack_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_74);
  *param_1 = &PTR_FUN_00560474_1_009281e0;
  FUN_00526878(auStack_68);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_7c);
  *param_1 = &PTR_FUN_005604a0_1_00928240;
  gpg::SnapshotMetadata::SnapshotMetadata((SnapshotMetadata *)(param_1 + 0x14),param_4);
  return param_1;
}

// ---- FUN_00560624  @ 0x560624
void FUN_00560624(int *param_1,undefined4 param_2)

{
  int iVar1;
  undefined4 local_28;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  
  iVar1 = FUN_00548c48(param_2);
  if (iVar1 == 0) {
    (**(code **)(*param_1 + 0x50))(&local_28,param_1,param_2);
    FUN_00528f28(param_1 + 0xc,&local_28);
  }
  else {
    local_28 = 0xfffffffe;
    local_24 = 0;
    local_20 = 0;
    local_1c = 0;
    FUN_00528f28(param_1 + 0xc,&local_28);
  }
  std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::~_Vector_base
            ((_Vector_base<unsigned_char,std::allocator<unsigned_char>> *)&local_24);
  return;
}

// ---- FUN_00560728  @ 0x560728
undefined4 * FUN_00560728(undefined4 *param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 uVar1;
  int iVar2;
  undefined1 auStack_38 [16];
  undefined4 local_28;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  
  iVar2 = FUN_00548c48(param_3);
  if (iVar2 == 0) {
    local_28 = 1;
    FUN_0054968c(auStack_38,param_3,&DAT_00961ca4,"getSnapshotContents",
                 "()Lcom/google/android/gms/games/snapshot/SnapshotContents;");
    FUN_005497e4(&local_24,auStack_38,"readFully");
    uVar1 = local_1c;
    param_1[1] = local_24;
    *param_1 = local_28;
    local_24 = 0;
    param_1[2] = local_20;
    local_20 = 0;
    local_1c = 0;
    param_1[3] = uVar1;
    std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::~_Vector_base
              ((_Vector_base<unsigned_char,std::allocator<unsigned_char>> *)&local_24);
    FUN_00548ab0(auStack_38);
  }
  else {
    param_1[2] = 0;
    *param_1 = 0xfffffffe;
    param_1[1] = 0;
    param_1[3] = 0;
    local_28 = 0xfffffffe;
    local_24 = 0;
    local_20 = 0;
    local_1c = 0;
    std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::~_Vector_base
              ((_Vector_base<unsigned_char,std::allocator<unsigned_char>> *)&local_24);
  }
  return param_1;
}

// ---- FUN_005607cc  @ 0x5607cc
void FUN_005607cc(int *param_1)

{
  if (param_1 != (int *)0x0) {
    (**(code **)(*param_1 + 4))();
  }
  return;
}

// ---- FUN_005607d8  @ 0x5607d8
undefined4 * FUN_005607d8(undefined4 *param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  undefined4 uStack_18;
  undefined4 uStack_14;
  
  uStack_18 = param_3;
  uStack_14 = param_4;
  FUN_005108ea(*(undefined4 *)(param_2 + 0x28));
  uVar1 = thunk_FUN_00529dec();
  gpg::SnapshotMetadata::SnapshotMetadata((SnapshotMetadata *)&uStack_18);
  *param_1 = uVar1;
  gpg::SnapshotMetadata::SnapshotMetadata
            ((SnapshotMetadata *)(param_1 + 1),(SnapshotMetadata *)&uStack_18);
  gpg::SnapshotMetadata::~SnapshotMetadata((SnapshotMetadata *)&uStack_18);
  return param_1;
}

// ---- FUN_00560818  @ 0x560818
undefined4 * FUN_00560818(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_00560818_1_009282a0;
  FUN_007c5914(param_1 + 0x18);
  gpg::SnapshotMetadataChange::~SnapshotMetadataChange((SnapshotMetadataChange *)(param_1 + 0x16));
  gpg::SnapshotMetadata::~SnapshotMetadata((SnapshotMetadata *)(param_1 + 0x14));
  FUN_0055e550(param_1);
  return param_1;
}

// ---- FUN_00560848  @ 0x560848
void * FUN_00560848(void *param_1)

{
  FUN_00560818();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_005608a0  @ 0x5608a0
undefined4 *
FUN_005608a0(undefined4 *param_1,undefined4 *param_2,undefined4 param_3,SnapshotMetadata *param_4,
            SnapshotMetadataChange *param_5,undefined4 param_6)

{
  undefined4 uVar1;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_7c [4];
  undefined4 local_78;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_74 [4];
  undefined4 local_70;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_6c [4];
  undefined1 auStack_68 [32];
  undefined1 auStack_48 [36];
  
  uVar1 = *param_2;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_7c,(__shared_count *)(param_2 + 1));
  FUN_00526a4e(auStack_68,param_3);
  local_78 = uVar1;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_74,(__shared_count *)a_Stack_7c);
  FUN_00526a4e(auStack_48,auStack_68);
  local_70 = local_78;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_6c,(__shared_count *)a_Stack_74);
  FUN_00533528(param_1,&local_70);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_6c);
  *param_1 = &PTR_FUN_0055e51c_1_00927d90;
  FUN_00526a4e(param_1 + 0xc,auStack_48);
  FUN_005267ea(auStack_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_74);
  *param_1 = &PTR_FUN_0055e550_1_00927de8;
  FUN_005267ea(auStack_68);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_7c);
  *param_1 = &PTR_FUN_00560818_1_009282a0;
  gpg::SnapshotMetadata::SnapshotMetadata((SnapshotMetadata *)(param_1 + 0x14),param_4);
  gpg::SnapshotMetadataChange::SnapshotMetadataChange
            ((SnapshotMetadataChange *)(param_1 + 0x16),param_5);
  FUN_007c64e8(param_1 + 0x18,param_6);
  return param_1;
}

// ---- FUN_005609b8  @ 0x5609b8
undefined4
FUN_005609b8(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 *param_4)

{
  undefined4 uVar1;
  void *pvVar2;
  void *local_64;
  undefined4 local_60;
  undefined4 local_5c;
  undefined1 auStack_58 [16];
  undefined4 *local_48 [2];
  code *local_40;
  undefined1 *local_3c;
  _Function_base a_Stack_38 [20];
  
  FUN_00545074(auStack_58);
  local_60 = *param_4;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_5c,(__shared_count *)(param_4 + 1)
            );
  local_40 = (code *)0x0;
  local_48[0] = operator_new(8);
  uVar1 = local_5c;
  *local_48[0] = local_60;
  local_48[0][1] = 0;
  local_60 = 0;
  local_5c = 0;
  local_48[0][1] = uVar1;
  local_3c = &LAB_00560fd8_1;
  local_40 = (code *)0x56085b;
  FUN_00533700(a_Stack_38,(_Function_base *)local_48);
  pvVar2 = operator_new(0x14);
  FUN_0053372c(pvVar2,a_Stack_38);
  local_64 = pvVar2;
  FUN_005453a8(auStack_58,param_2,param_3,&local_64);
  if (local_64 != (void *)0x0) {
    FUN_005607cc();
  }
  std::_Function_base::~_Function_base(a_Stack_38);
  std::_Function_base::~_Function_base((_Function_base *)local_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_5c);
  FUN_00548b30(param_1,auStack_58);
  FUN_00548ab0(auStack_58);
  return param_1;
}

// ---- FUN_00560a98  @ 0x560a98
undefined4 FUN_00560a98(undefined4 param_1,int param_2)

{
  bool bVar1;
  int extraout_r1;
  int *piVar2;
  int *extraout_r2;
  int extraout_r3;
  int iVar3;
  int *unaff_r4;
  int iVar4;
  int local_34;
  int local_30;
  undefined4 local_2c;
  int local_28;
  undefined4 local_24;
  
  local_34 = *(int *)(param_2 + 8);
  if (local_34 == 0) goto LAB_00560ab4;
  piVar2 = (int *)(local_34 + 4);
  unaff_r4 = &local_28;
  local_28 = *(int *)(local_34 + 4);
  while( true ) {
    iVar3 = local_28;
    if (local_28 == 0) {
LAB_00560ab4:
      std::__throw_bad_weak_ptr();
      param_2 = extraout_r1;
      piVar2 = extraout_r2;
      iVar3 = extraout_r3;
    }
    DataMemoryBarrier(0x1f);
    ExclusiveAccess(piVar2);
    iVar4 = *piVar2;
    bVar1 = false;
    if (iVar4 == *unaff_r4) {
      bVar1 = (bool)hasExclusiveAccess(piVar2);
      if (bVar1) {
        *piVar2 = iVar3 + 1;
      }
      DataMemoryBarrier(0x1f);
    }
    if (bVar1) break;
    *unaff_r4 = iVar4;
  }
  iVar3 = *(int *)(param_2 + 4);
  local_28 = iVar3;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(unaff_r4 + 1),
             (__shared_count *)&local_34);
  local_2c = local_24;
  local_30 = local_28;
  local_28 = 0;
  local_24 = 0;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(unaff_r4 + 1));
  FUN_005609b8(unaff_r4,0,0x5463d1,&local_30,iVar3);
  FUN_00548b30(param_1,unaff_r4);
  FUN_00548ab0(unaff_r4);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_2c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_34);
  return param_1;
}

// ---- FUN_00560b50  @ 0x560b50
void FUN_00560b50(int param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined1 *puVar6;
  int iVar7;
  undefined1 *puVar8;
  undefined1 *puVar9;
  undefined1 auStack_e4 [4];
  int local_e0;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_dc [4];
  undefined1 auStack_d8 [16];
  undefined1 auStack_c8 [16];
  undefined1 auStack_b8 [16];
  undefined1 auStack_a8 [16];
  undefined1 auStack_98 [16];
  undefined1 auStack_88 [16];
  undefined1 auStack_78 [16];
  undefined1 auStack_68 [16];
  undefined1 auStack_58 [16];
  undefined1 auStack_48 [16];
  undefined1 auStack_38 [20];
  
  local_e0 = *(int *)(param_1 + 0x50);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_dc,(__shared_count *)(param_1 + 0x54));
  if (local_e0 == 0) {
    FUN_005166ae(4,"Attempting to resolve conflict using invalid snapshot metadata: skipping.");
    FUN_00548b18(auStack_d8);
    FUN_0055e730(param_1,auStack_d8);
    FUN_00548ab0(auStack_d8);
  }
  else {
    FUN_007c64e8(auStack_e4,*(undefined4 *)(local_e0 + 4));
    if (*(int *)(local_e0 + 0x4c) == 0) {
      iVar7 = *(int *)(local_e0 + 0x48);
    }
    else {
      iVar7 = *(int *)(local_e0 + 0x4c) + 0x20;
    }
    if (*(char *)(iVar7 + 0x2c) == '\0') {
      FUN_005166ae(4,
                   "Attempting to resolve conflict using a snapshot not provided by an open call with a conflict status: skipping."
                  );
      puVar6 = auStack_c8;
      FUN_00548b18(puVar6);
      FUN_0055e730(param_1,puVar6);
    }
    else {
      puVar6 = auStack_b8;
      FUN_00549654(puVar6,iVar7 + 0xc);
      FUN_0054968c(auStack_a8,puVar6,&DAT_00961ca4,"getSnapshotContents",
                   "()Lcom/google/android/gms/games/snapshot/SnapshotContents;");
      FUN_00562038(auStack_98,param_1 + 0x58);
      puVar8 = auStack_78;
      FUN_00547b10(auStack_78,&DAT_00961324,&DAT_009631a4,"Snapshots",
                   "Lcom/google/android/gms/games/snapshot/Snapshots;");
      uVar1 = FUN_00548bac(*(int *)(param_1 + 0x28) + 0xf4);
      FUN_0054942c(auStack_68,param_1 + 0x60,0);
      uVar2 = FUN_00548bac(auStack_68);
      puVar9 = auStack_58;
      FUN_0054942c(puVar9,auStack_e4,0);
      uVar3 = FUN_00548bac(auStack_58);
      uVar4 = FUN_00548bac(auStack_98);
      uVar5 = FUN_00548bac(auStack_a8);
      FUN_0054968c(auStack_88,auStack_78,&DAT_00963024,"resolveConflict",
                   "(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;Lcom/google/android/gms/games/snapshot/SnapshotContents;)Lcom/google/android/gms/common/api/PendingResult;"
                   ,uVar1,uVar2,uVar3,uVar4,uVar5,puVar8,puVar9);
      FUN_00548ab0(auStack_58);
      FUN_00548ab0(auStack_68);
      FUN_00548ab0(auStack_78);
      iVar7 = FUN_00548c48(auStack_88);
      if (iVar7 == 0) {
        puVar8 = auStack_38;
        FUN_00560a98(puVar8,param_1);
        uVar1 = FUN_00548bac(puVar8);
        FUN_00548d90(auStack_88,"setResultCallback",
                     "(Lcom/google/android/gms/common/api/ResultCallback;)V",uVar1);
      }
      else {
        puVar8 = auStack_48;
        FUN_00548b18(puVar8);
        FUN_0055e730(param_1,puVar8);
      }
      FUN_00548ab0(puVar8);
      FUN_00548ab0(auStack_88);
      FUN_00548ab0(auStack_98);
      FUN_00548ab0(auStack_a8);
    }
    FUN_00548ab0(puVar6);
    FUN_007c5914(auStack_e4);
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_dc);
  return;
}

// ---- FUN_00560dac  @ 0x560dac
undefined4 * FUN_00560dac(undefined4 *param_1,int param_2,undefined4 param_3)

{
  int iVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined1 auStack_80 [4];
  undefined1 auStack_7c [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_78 [4];
  undefined4 local_74;
  SnapshotMetadata aSStack_70 [8];
  undefined1 auStack_68 [16];
  undefined1 auStack_58 [16];
  undefined1 auStack_48 [16];
  undefined4 local_38;
  SnapshotMetadata aSStack_34 [16];
  
  iVar1 = FUN_00543484(param_3);
  if (iVar1 == -3) {
    FUN_00511920(*(undefined4 *)(param_2 + 0x28));
  }
  else if (iVar1 == -2) {
    FUN_0054968c(&local_38,param_3,&DAT_009619a4,"getStatus",
                 "()Lcom/google/android/gms/common/api/Status;");
    uVar2 = FUN_00548d1c(&local_38,"getStatusCode");
    FUN_00548ab0(&local_38);
    FUN_005166ae(1,"Encountered GmsCore error with status code: %d",uVar2);
  }
  uVar2 = FUN_00529e98(iVar1);
  iVar1 = gpg::IsError();
  if (iVar1 == 0) {
    FUN_0054932c(auStack_68,param_3,&DAT_00963e24);
    FUN_0054968c(auStack_58,auStack_68,&DAT_00961ba4,"getSnapshot",
                 "()Lcom/google/android/gms/games/snapshot/Snapshot;");
    FUN_0054968c(auStack_48,auStack_58,&DAT_00961224,"getMetadata",
                 "()Lcom/google/android/gms/games/snapshot/SnapshotMetadata;");
    FUN_00547b10(&local_38,&DAT_00961324,&DAT_009631a4,"Snapshots",
                 "Lcom/google/android/gms/games/snapshot/Snapshots;");
    uVar2 = FUN_00548bac(*(int *)(param_2 + 0x28) + 0xf4);
    uVar3 = FUN_00548bac(auStack_58);
    FUN_00548d90(&local_38,"discardAndClose",
                 "(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/snapshot/Snapshot;)V"
                 ,uVar2,uVar3);
    FUN_00548ab0(&local_38);
    FUN_00561e8a(param_2 + 0x50);
    local_74 = 1;
    FUN_007c6a60(auStack_80,&DAT_00801f93,&local_38);
    FUN_00562324(auStack_7c,auStack_48,auStack_80);
    gpg::SnapshotMetadata::SnapshotMetadata(aSStack_70,auStack_7c);
    *param_1 = local_74;
    gpg::SnapshotMetadata::SnapshotMetadata((SnapshotMetadata *)(param_1 + 1),aSStack_70);
    gpg::SnapshotMetadata::~SnapshotMetadata(aSStack_70);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_78);
    FUN_007c5914(auStack_80);
    FUN_00548ab0(auStack_48);
    FUN_00548ab0(auStack_58);
    FUN_00548ab0(auStack_68);
  }
  else {
    local_38 = FUN_00529dec(uVar2);
    gpg::SnapshotMetadata::SnapshotMetadata(aSStack_34);
    *param_1 = local_38;
    gpg::SnapshotMetadata::SnapshotMetadata((SnapshotMetadata *)(param_1 + 1),aSStack_34);
    gpg::SnapshotMetadata::~SnapshotMetadata(aSStack_34);
  }
  return param_1;
}

// ---- FUN_005610a4  @ 0x5610a4
undefined4 * FUN_005610a4(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_005610a4_1_00928300;
  FUN_0052688c(param_1 + 0xc);
  FUN_00533468(param_1);
  return param_1;
}

// ---- FUN_005610c4  @ 0x5610c4
void * FUN_005610c4(void *param_1)

{
  FUN_005610a4();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_005610d8  @ 0x5610d8
undefined4 * FUN_005610d8(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_005610d8_1_00928358;
  FUN_005610a4();
  return param_1;
}

// ---- FUN_005610f0  @ 0x5610f0
void * FUN_005610f0(void *param_1)

{
  FUN_005610d8();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_00561104  @ 0x561104
undefined4 * FUN_00561104(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_00561104_1_009283b8;
  FUN_007c5914(param_1 + 0x16);
  FUN_005610d8(param_1);
  return param_1;
}

// ---- FUN_00561124  @ 0x561124
void * FUN_00561124(void *param_1)

{
  FUN_00561104();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0056117c  @ 0x56117c
function<void(std::function<void()>)> *
FUN_0056117c(function<void(std::function<void()>)> *param_1,function *param_2)

{
  std::function<void(std::function<void()>)>::function(param_1,param_2);
  std::function<void(gpg::SnapshotManager::SnapshotSelectUIResponse_const&)>::function
            ((function<void(gpg::SnapshotManager::SnapshotSelectUIResponse_const&)> *)
             (param_1 + 0x10),param_2 + 0x10);
  return param_1;
}

// ---- FUN_005611a0  @ 0x5611a0
undefined4 *
FUN_005611a0(undefined4 *param_1,undefined4 *param_2,undefined4 param_3,undefined1 param_4,
            undefined1 param_5,undefined4 param_6,undefined4 param_7)

{
  undefined4 uVar1;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_7c [4];
  undefined4 local_78;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_74 [4];
  undefined4 local_70;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_6c [4];
  undefined1 auStack_68 [32];
  undefined1 auStack_48 [36];
  
  uVar1 = *param_2;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_7c,(__shared_count *)(param_2 + 1));
  FUN_0056117c(auStack_68,param_3);
  local_78 = uVar1;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_74,(__shared_count *)a_Stack_7c);
  FUN_0056117c(auStack_48,auStack_68);
  local_70 = local_78;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_6c,(__shared_count *)a_Stack_74);
  FUN_00533528(param_1,&local_70);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_6c);
  *param_1 = &PTR_FUN_005610a4_1_00928300;
  FUN_0056117c(param_1 + 0xc,auStack_48);
  FUN_0052688c(auStack_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_74);
  *param_1 = &PTR_FUN_005610d8_1_00928358;
  *(undefined1 *)(param_1 + 0x14) = 1;
  FUN_0052688c(auStack_68);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_7c);
  *(undefined1 *)((int)param_1 + 0x51) = param_4;
  *param_1 = &PTR_FUN_00561104_1_009283b8;
  *(undefined1 *)((int)param_1 + 0x52) = param_5;
  param_1[0x15] = param_6;
  FUN_007c64e8(param_1 + 0x16,param_7);
  return param_1;
}

// ---- FUN_005612a4  @ 0x5612a4
void FUN_005612a4(int *param_1,undefined4 param_2,undefined4 param_3,int param_4)

{
  undefined4 uVar1;
  undefined4 uVar2;
  int *piVar3;
  int iVar4;
  _Any_data a_Stack_80 [8];
  undefined4 local_78;
  undefined4 local_74;
  _Function_base a_Stack_70 [8];
  undefined4 local_68;
  _Function_base a_Stack_60 [8];
  undefined4 local_58;
  undefined4 local_54;
  _Any_data a_Stack_50 [8];
  undefined4 local_48;
  undefined4 local_44;
  undefined4 local_40;
  SnapshotMetadata aSStack_3c [4];
  undefined4 local_38;
  undefined4 local_34;
  _Any_data a_Stack_30 [8];
  undefined4 local_28;
  undefined4 local_24;
  
  piVar3 = param_1 + 0xc;
  if (param_4 == 0) {
    if ((char)param_1[0x14] == '\0') {
      local_40 = 1;
      gpg::SnapshotMetadata::SnapshotMetadata(aSStack_3c);
      FUN_005272f0(piVar3,(_Any_data *)&local_40);
    }
    else {
      local_40 = 0xfffffffa;
      gpg::SnapshotMetadata::SnapshotMetadata(aSStack_3c);
      FUN_005272f0(piVar3,(_Any_data *)&local_40);
    }
  }
  else if (param_4 == 0x2711) {
    FUN_005166ae(1,"UI returned RECONNECT_REQUIRED: handling.");
    FUN_00536858(param_1[10]);
    iVar4 = param_1[10];
    local_68 = 0;
    local_78 = 0;
    local_38 = 0;
    local_28 = 0;
    std::swap<std::_Any_data>(a_Stack_80,a_Stack_30);
    uVar2 = local_24;
    uVar1 = local_28;
    local_58 = 0;
    local_28 = local_78;
    local_78 = uVar1;
    local_24 = local_74;
    local_74 = uVar2;
    std::swap<std::_Any_data>((_Any_data *)&local_40,(_Any_data *)a_Stack_60);
    uVar2 = local_54;
    uVar1 = local_58;
    local_48 = 0;
    local_58 = local_38;
    local_38 = uVar1;
    local_54 = local_34;
    local_34 = uVar2;
    std::swap<std::_Any_data>(a_Stack_30,a_Stack_50);
    uVar2 = local_44;
    uVar1 = local_48;
    local_48 = local_28;
    local_28 = uVar1;
    local_44 = local_24;
    local_24 = uVar2;
    std::_Function_base::~_Function_base((_Function_base *)a_Stack_30);
    std::_Function_base::~_Function_base((_Function_base *)&local_40);
    std::_Function_base::~_Function_base((_Function_base *)a_Stack_80);
    std::_Function_base::~_Function_base(a_Stack_70);
    FUN_005124a2(iVar4,a_Stack_60);
    std::_Function_base::~_Function_base((_Function_base *)a_Stack_50);
    std::_Function_base::~_Function_base(a_Stack_60);
    local_40 = 0xfffffffd;
    gpg::SnapshotMetadata::SnapshotMetadata(aSStack_3c);
    FUN_005272f0(piVar3,(_Any_data *)&local_40);
  }
  else if (param_4 == 0x2715) {
    local_40 = 0xffffffee;
    gpg::SnapshotMetadata::SnapshotMetadata(aSStack_3c);
    FUN_005272f0(piVar3,(_Any_data *)&local_40);
  }
  else {
    iVar4 = FUN_00548c48(param_2);
    if (iVar4 == 0) {
      (**(code **)(*param_1 + 0x50))((_Any_data *)&local_40,param_1,param_2);
      FUN_005272f0(piVar3,(_Any_data *)&local_40);
    }
    else {
      local_40 = 0xfffffffe;
      gpg::SnapshotMetadata::SnapshotMetadata(aSStack_3c);
      FUN_005272f0(piVar3,(_Any_data *)&local_40);
    }
  }
  gpg::SnapshotMetadata::~SnapshotMetadata(aSStack_3c);
  return;
}

// ---- FUN_0056162c  @ 0x56162c
undefined4 * FUN_0056162c(undefined4 *param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 uVar1;
  int iVar2;
  undefined4 *puVar3;
  SnapshotMetadata *this;
  undefined1 auStack_8c [4];
  undefined1 auStack_88 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_84 [4];
  undefined4 local_80;
  SnapshotMetadata aSStack_7c [8];
  undefined4 local_74;
  SnapshotMetadata aSStack_70 [8];
  undefined1 auStack_68 [16];
  undefined1 auStack_58 [16];
  undefined4 local_48;
  SnapshotMetadata aSStack_44 [12];
  SnapshotMetadata aSStack_38 [20];
  
  FUN_00547b10(auStack_68,&DAT_009631a4,&DAT_009628a4,"EXTRA_SNAPSHOT_METADATA","Ljava/lang/String;"
              );
  FUN_00547b10(auStack_58,&DAT_009631a4,&DAT_009628a4,"EXTRA_SNAPSHOT_NEW","Ljava/lang/String;");
  uVar1 = FUN_00548bac(auStack_68);
  iVar2 = FUN_00548c54(param_3,"hasExtra","(Ljava/lang/String;)Z",uVar1);
  this = (SnapshotMetadata *)(param_1 + 1);
  if (iVar2 == 0) {
    uVar1 = FUN_00548bac(auStack_58);
    iVar2 = FUN_00548c54(param_3,"getBooleanExtra","(Ljava/lang/String;Z)Z",uVar1,0);
    if (iVar2 == 0) {
      puVar3 = &local_48;
      local_48 = 0xfffffffe;
      gpg::SnapshotMetadata::SnapshotMetadata(aSStack_44);
      *param_1 = local_48;
      gpg::SnapshotMetadata::SnapshotMetadata(this,aSStack_44);
    }
    else {
      puVar3 = &local_74;
      local_74 = 1;
      gpg::SnapshotMetadata::SnapshotMetadata(aSStack_70);
      *param_1 = local_74;
      gpg::SnapshotMetadata::SnapshotMetadata(this,aSStack_70);
    }
    gpg::SnapshotMetadata::~SnapshotMetadata((SnapshotMetadata *)(puVar3 + 1));
  }
  else {
    uVar1 = FUN_00548bac(auStack_68);
    FUN_0054968c(aSStack_38,param_3,&DAT_009636a4,"getParcelableExtra",
                 "(Ljava/lang/String;)Landroid/os/Parcelable;",uVar1);
    FUN_0054932c(&local_48,aSStack_38,&DAT_00961224);
    FUN_00548ab0(aSStack_38);
    FUN_007c6a60(auStack_8c,&DAT_00801f93,&local_74);
    FUN_00562324(auStack_88,&local_48,auStack_8c);
    gpg::SnapshotMetadata::SnapshotMetadata(aSStack_38,auStack_88);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_84);
    FUN_007c5914(auStack_8c);
    local_80 = 1;
    gpg::SnapshotMetadata::SnapshotMetadata(aSStack_7c,aSStack_38);
    *param_1 = local_80;
    gpg::SnapshotMetadata::SnapshotMetadata(this,aSStack_7c);
    gpg::SnapshotMetadata::~SnapshotMetadata(aSStack_7c);
    gpg::SnapshotMetadata::~SnapshotMetadata(aSStack_38);
    FUN_00548ab0(&local_48);
  }
  FUN_00548ab0(auStack_58);
  FUN_00548ab0(auStack_68);
  return param_1;
}

// ---- FUN_0056181c  @ 0x56181c
void FUN_0056181c(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  undefined1 auStack_38 [16];
  undefined1 auStack_28 [16];
  
  param_1 = (undefined4 *)*param_1;
  FUN_00548b30(auStack_38);
  uVar1 = *param_1;
  FUN_00548b30(auStack_28,auStack_38);
  FUN_005612a4(uVar1,auStack_28,param_3,param_4);
  FUN_00548ab0(auStack_28);
  FUN_00548ab0(auStack_38);
  return;
}

// ---- FUN_00561894  @ 0x561894
undefined4 * FUN_00561894(undefined4 *param_1)

{
  *param_1 = &PTR_LAB_00561870_1_00928418;
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0056190a  @ 0x56190a
int * FUN_0056190a(int *param_1)

{
  if ((int *)*param_1 != (int *)0x0) {
    (**(code **)(*(int *)*param_1 + 4))();
  }
  *param_1 = 0;
  return param_1;
}

// ---- FUN_00561920  @ 0x561920
void FUN_00561920(undefined4 *param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 local_c;
  undefined4 uStack_8;
  
  local_c = param_1[1];
  *param_1 = 0;
  param_1[1] = 0;
  uStack_8 = param_3;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_c);
  return;
}

// ---- FUN_0056193c  @ 0x56193c
int * FUN_0056193c(int *param_1)

{
  if ((int *)*param_1 != (int *)0x0) {
    (**(code **)(*(int *)*param_1 + 4))();
  }
  *param_1 = 0;
  return param_1;
}

// ---- FUN_00561954  @ 0x561954
undefined4 * FUN_00561954(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_00561954_1_00928430;
  FUN_0056190a(param_1 + 0x12);
  std::__weak_count<(__gnu_cxx::_Lock_policy)2>::~__weak_count
            ((__weak_count<(__gnu_cxx::_Lock_policy)2> *)(param_1 + 0xf));
  FUN_00571d28(param_1);
  return param_1;
}

// ---- FUN_0056197c  @ 0x56197c
void * FUN_0056197c(void *param_1)

{
  FUN_00561954();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_00561990  @ 0x561990
undefined4 *
FUN_00561990(undefined4 *param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5,undefined4 param_6,undefined4 param_7,undefined4 param_8,
            undefined4 param_9,undefined4 param_10,undefined4 param_11,undefined4 param_12,
            undefined4 param_13)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  
  FUN_00571be8();
  param_1[0x10] = 0;
  param_1[0xe] = 0;
  param_1[0xf] = 0;
  param_1[0x10] = 0;
  *param_1 = &PTR_FUN_00561954_1_00928430;
  *(undefined1 *)(param_1 + 0x11) = 0;
  uVar2 = *param_2;
  *param_2 = 0;
  param_1[0x12] = uVar2;
  param_1[0x13] = 0;
  param_1[0xd] = param_1[0xd] | 1;
  if ((undefined4 *)param_1[1] == &DAT_00960c38) {
    puVar1 = operator_new(4);
    *puVar1 = &DAT_00972528;
    param_1[1] = puVar1;
  }
  FUN_007c653c(param_1[1],param_3);
  param_1[0xd] = param_1[0xd] | 2;
  if ((undefined4 *)param_1[2] == &DAT_00960c38) {
    puVar1 = operator_new(4);
    *puVar1 = &DAT_00972528;
    param_1[2] = puVar1;
  }
  FUN_007c653c(param_1[2],param_4);
  param_1[0xd] = param_1[0xd] | 4;
  if ((undefined4 *)param_1[3] == &DAT_00960c38) {
    puVar1 = operator_new(4);
    *puVar1 = &DAT_00972528;
    param_1[3] = puVar1;
  }
  FUN_007c653c(param_1[3],param_5);
  param_1[4] = param_7;
  param_1[5] = param_8;
  param_1[0xd] = param_1[0xd] | 0xb8;
  param_1[6] = param_9;
  param_1[7] = param_10;
  param_1[10] = param_11;
  param_1[0xb] = param_12;
  if ((undefined4 *)param_1[8] == &DAT_00960c38) {
    puVar1 = operator_new(4);
    *puVar1 = &DAT_00972528;
    param_1[8] = puVar1;
  }
  FUN_007c653c(param_1[8],param_13);
  return param_1;
}

// ---- FUN_00561aa8  @ 0x561aa8
int * FUN_00561aa8(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 *param_4,
                  undefined4 param_5,undefined4 param_6,undefined4 param_7)

{
  bool bVar1;
  void *pvVar2;
  undefined4 *puVar3;
  int *piVar4;
  int iVar5;
  int iVar6;
  int local_24 [2];
  
  *param_1 = 0;
  param_1[1] = 0;
  pvVar2 = operator_new(0x50);
  *param_1 = (int)pvVar2;
  local_24[0] = *param_4;
  *param_4 = 0;
  if (pvVar2 != (void *)0x0) {
    FUN_00561990(pvVar2,(__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_24,param_5,param_6,
                 param_7);
  }
  FUN_0056190a((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_24);
  iVar5 = *param_1;
  local_24[0] = 0;
  puVar3 = operator_new(0x14);
  if (puVar3 != (undefined4 *)0x0) {
    puVar3[1] = 1;
    puVar3[2] = 1;
    puVar3[3] = iVar5;
    *puVar3 = &PTR_LAB_00561880_1_00928470;
  }
  local_24[0] = param_1[1];
  iVar5 = *param_1;
  param_1[1] = (int)puVar3;
  if (iVar5 != 0) {
    *(int *)(iVar5 + 0x38) = iVar5;
    iVar6 = param_1[1];
    if (iVar6 != 0) {
      piVar4 = (int *)(iVar6 + 8);
      DataMemoryBarrier(0x1f);
      do {
        ExclusiveAccess(piVar4);
        bVar1 = (bool)hasExclusiveAccess(piVar4);
      } while (!bVar1);
      *piVar4 = *piVar4 + 1;
      DataMemoryBarrier(0x1f);
    }
    if (*(_Sp_counted_base<(__gnu_cxx::_Lock_policy)2> **)(iVar5 + 0x3c) !=
        (_Sp_counted_base<(__gnu_cxx::_Lock_policy)2> *)0x0) {
      std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_weak_release
                (*(_Sp_counted_base<(__gnu_cxx::_Lock_policy)2> **)(iVar5 + 0x3c));
    }
    *(int *)(iVar5 + 0x3c) = iVar6;
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_24);
  return param_1;
}

// ---- FUN_00561bc8  @ 0x561bc8
undefined4 * FUN_00561bc8(undefined4 *param_1,undefined4 param_2,undefined4 param_3,int *param_4)

{
  undefined1 auStack_50 [4];
  undefined1 auStack_4c [4];
  undefined1 auStack_48 [4];
  undefined1 auStack_44 [4];
  undefined1 auStack_40 [4];
  undefined4 local_3c;
  undefined8 local_38;
  undefined8 local_30;
  undefined4 local_28;
  undefined4 local_24;
  
  if (*(int *)(*param_4 + -0xc) == 0) {
    FUN_00549104(auStack_4c,param_2,"getSnapshotId");
  }
  else {
    FUN_007c64e8(auStack_4c,param_4);
  }
  FUN_00549104(auStack_48,param_2,"getTitle");
  FUN_00549104(auStack_44,param_2,"getDescription");
  local_38 = FUN_00548d84(param_2,"getPlayedTime");
  local_30 = FUN_00548d84(param_2,"getLastModifiedTimestamp");
  local_3c = 0;
  FUN_00549104(auStack_40,param_2,"getCoverImageUrl");
  FUN_00561aa8(&local_28,0,auStack_50,param_3,auStack_4c,auStack_48,auStack_44,&local_38,&local_30,
               &local_3c,auStack_40);
  param_1[1] = local_24;
  *param_1 = local_28;
  local_24 = 0;
  local_28 = 0;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_24);
  FUN_007c5914(auStack_40);
  FUN_007c5914(auStack_44);
  FUN_007c5914(auStack_48);
  FUN_007c5914(auStack_4c);
  return param_1;
}

// ---- FUN_00561cd4  @ 0x561cd4
undefined4 *
FUN_00561cd4(undefined4 *param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4,
            undefined1 param_5)

{
  undefined4 uVar1;
  undefined1 auStack_38 [16];
  undefined1 auStack_28 [20];
  
  *param_1 = &PTR_FUN_00561de0_1_00928490;
  param_1[1] = *param_2;
  param_1[2] = 0;
  uVar1 = param_2[1];
  param_2[1] = 0;
  param_1[2] = uVar1;
  *param_2 = 0;
  FUN_0054932c(auStack_38,param_3,&DAT_00961ba4);
  FUN_00549380(param_1 + 3,auStack_38);
  FUN_00548ab0(auStack_38);
  FUN_0054932c(auStack_28,param_4,&DAT_00961224);
  FUN_00549380(param_1 + 7,auStack_28);
  FUN_00548ab0(auStack_28);
  *(undefined1 *)(param_1 + 0xb) = param_5;
  return param_1;
}

// ---- FUN_00561de0  @ 0x561de0
undefined4 * FUN_00561de0(undefined4 *param_1)

{
  int iVar1;
  undefined4 *puVar2;
  int *piVar3;
  code *pcVar4;
  undefined1 auStack_30 [20];
  
  *param_1 = &PTR_FUN_00561de0_1_00928490;
  puVar2 = param_1 + 3;
  if ((param_1[1] != 0) && (iVar1 = FUN_00548c48(puVar2), iVar1 == 0)) {
    FUN_005166ae(1,"Snapshot was not committed, discarding.");
    piVar3 = (int *)param_1[1];
    pcVar4 = *(code **)(*piVar3 + 0x158);
    FUN_00548b30(auStack_30,puVar2);
    (*pcVar4)(piVar3,auStack_30);
    FUN_00548ab0(auStack_30);
    FUN_00548b18(auStack_30);
    FUN_00548b60(puVar2,auStack_30);
    FUN_00548ab0(auStack_30);
    FUN_00561920(param_1 + 1);
  }
  FUN_00548ab0(param_1 + 7);
  FUN_00548ab0(puVar2);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(param_1 + 2));
  *param_1 = &PTR_LAB_00561870_1_00928418;
  return param_1;
}

// ---- FUN_00561e78  @ 0x561e78
void * FUN_00561e78(void *param_1)

{
  FUN_00561de0();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_00561e8a  @ 0x561e8a
void FUN_00561e8a(int *param_1)

{
  bool bVar1;
  int iVar2;
  int *piVar3;
  int local_2c;
  undefined1 auStack_28 [20];
  
  iVar2 = *param_1;
  local_2c = param_1[1];
  if (local_2c != 0) {
    piVar3 = (int *)(local_2c + 4);
    DataMemoryBarrier(0x1f);
    do {
      ExclusiveAccess(piVar3);
      bVar1 = (bool)hasExclusiveAccess(piVar3);
    } while (!bVar1);
    *piVar3 = *piVar3 + 1;
    DataMemoryBarrier(0x1f);
  }
  if (iVar2 != 0) {
    if (*(int *)(iVar2 + 0x4c) == 0) {
      iVar2 = *(int *)(iVar2 + 0x48);
    }
    else {
      iVar2 = *(int *)(iVar2 + 0x4c) + 0x20;
    }
    FUN_00548b18(auStack_28);
    FUN_00548b60(iVar2 + 0xc,auStack_28);
    FUN_00548ab0(auStack_28);
    FUN_00561920(iVar2 + 4);
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_2c);
  return;
}

// ---- FUN_00561f00  @ 0x561f00
undefined4 *
FUN_00561f00(undefined4 *param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4,
            undefined1 param_5)

{
  int iVar1;
  void *pvVar2;
  void *local_44;
  undefined4 local_40;
  undefined4 local_3c;
  undefined4 local_38;
  undefined4 local_34;
  undefined1 auStack_30 [20];
  
  iVar1 = FUN_00548c48(param_3);
  if (iVar1 == 0) {
    FUN_0054968c(auStack_30,param_3,&DAT_00961224,"getMetadata",
                 "()Lcom/google/android/gms/games/snapshot/SnapshotMetadata;");
    local_40 = *param_2;
    *param_2 = 0;
    local_3c = param_2[1];
    param_2[1] = 0;
    pvVar2 = operator_new(0x30);
    FUN_00561cd4(pvVar2,&local_40,param_3,auStack_30,param_5);
    local_44 = pvVar2;
    FUN_00561bc8(&local_38,auStack_30,&local_44,param_4);
    param_1[1] = local_34;
    *param_1 = local_38;
    local_34 = 0;
    local_38 = 0;
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_34);
    FUN_0056193c(&local_44);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_3c);
    FUN_00548ab0(auStack_30);
  }
  else {
    *param_1 = 0;
    param_1[1] = 0;
  }
  return param_1;
}

// ---- FUN_00562038  @ 0x562038
undefined4 FUN_00562038(undefined4 param_1,SnapshotMetadataChange *param_2)

{
  int iVar1;
  undefined4 uVar2;
  int *piVar3;
  undefined4 *puVar4;
  undefined *puVar5;
  uint uVar6;
  undefined *local_16c;
  undefined4 local_160;
  CoverImage aCStack_15c [8];
  CoverImage aCStack_154 [8];
  CoverImage aCStack_14c [8];
  undefined1 auStack_144 [16];
  undefined1 auStack_134 [16];
  undefined1 auStack_124 [16];
  undefined1 auStack_114 [16];
  undefined1 auStack_104 [16];
  undefined1 auStack_f4 [16];
  undefined1 auStack_e4 [8];
  int local_dc;
  undefined1 auStack_d8 [4];
  undefined4 auStack_d4 [44];
  
  FUN_00548040(auStack_144,&DAT_00963b24);
  iVar1 = gpg::SnapshotMetadataChange::DescriptionIsChanged(param_2);
  if (iVar1 != 0) {
    uVar2 = gpg::SnapshotMetadataChange::Description(param_2);
    FUN_0054942c(auStack_134,uVar2,0);
    uVar2 = FUN_00548bac(auStack_134);
    FUN_0054968c(auStack_124,auStack_144,&DAT_00963b24,"setDescription",
                 "(Ljava/lang/String;)Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;"
                 ,uVar2);
    FUN_00548ab0(auStack_124);
    FUN_00548ab0(auStack_134);
  }
  iVar1 = gpg::SnapshotMetadataChange::PlayedTimeIsChanged(param_2);
  if (iVar1 != 0) {
    gpg::SnapshotMetadataChange::PlayedTime();
    FUN_0054968c(auStack_114,auStack_144,&DAT_00963b24,"setPlayedTimeMillis",
                 "(J)Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;");
    FUN_00548ab0(auStack_114);
  }
  iVar1 = gpg::SnapshotMetadataChange::ImageIsChanged(param_2);
  if (iVar1 != 0) {
    gpg::SnapshotMetadataChange::Image();
    piVar3 = (int *)gpg::SnapshotMetadataChange::CoverImage::Data(aCStack_15c);
    gpg::SnapshotMetadataChange::CoverImage::~CoverImage(aCStack_15c);
    FUN_00549584(auStack_104,piVar3,0);
    uVar2 = FUN_00548bac(auStack_104);
    FUN_00548074(auStack_114,&DAT_00961624,&DAT_00964324,"decodeByteArray",
                 "([BII)Landroid/graphics/Bitmap;",uVar2,0,piVar3[1] - *piVar3);
    FUN_00548ab0(auStack_104);
    iVar1 = FUN_00548c48(auStack_114);
    if (iVar1 == 0) {
      uVar2 = FUN_00548bac(auStack_114);
      FUN_0054968c(auStack_f4,auStack_144,&DAT_00963b24,"setCoverImage",
                   "(Landroid/graphics/Bitmap;)Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;"
                   ,uVar2);
      FUN_00548ab0(auStack_f4);
    }
    else {
      gpg::SnapshotMetadataChange::Image();
      puVar4 = (undefined4 *)gpg::SnapshotMetadataChange::CoverImage::MimeType(aCStack_154);
      FUN_005166ae(4,"Not setting image on snapshot: Unable to decode %s.",*puVar4);
      gpg::SnapshotMetadataChange::CoverImage::~CoverImage(aCStack_154);
      gpg::SnapshotMetadataChange::Image();
      piVar3 = (int *)gpg::SnapshotMetadataChange::CoverImage::Data(aCStack_14c);
      gpg::SnapshotMetadataChange::CoverImage::~CoverImage(aCStack_14c);
      iVar1 = piVar3[1] - *piVar3;
      if (0x3ff < iVar1) {
        iVar1 = 0x400;
      }
      FUN_007aaa70(auStack_e4,0x18);
      uVar2 = FUN_007bbcd0(&local_dc,"Data:\n");
      uVar2 = FUN_007bb208(uVar2,0x516871);
      FUN_007bb93c(uVar2,0x30);
      local_16c = &DAT_0080c518;
      for (uVar6 = 0; (int)uVar6 < iVar1; uVar6 = uVar6 + 1) {
        *(undefined4 *)((int)auStack_d4 + *(int *)(local_dc + -0xc)) = 2;
        thunk_FUN_007bbd6c(&local_dc,*(undefined1 *)(*piVar3 + uVar6));
        puVar5 = local_16c;
        if ((uVar6 & 0xf) == 0xf) {
          puVar5 = &DAT_0080c516;
        }
        FUN_007bbcd0(&local_dc,puVar5);
      }
      FUN_007a9920(&local_160,auStack_d8);
      FUN_005166ae(1,&DAT_0080c64d,local_160);
      FUN_007c5914(&local_160);
      FUN_007a95a8(auStack_e4);
    }
    FUN_00548ab0(auStack_114);
  }
  FUN_0054968c(auStack_e4,auStack_144,&DAT_00963ca4,"build",
               "()Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;");
  FUN_00548b30(param_1,auStack_e4);
  FUN_00548ab0(auStack_e4);
  FUN_00548ab0(auStack_144);
  return param_1;
}

// ---- FUN_00562324  @ 0x562324
undefined4 * FUN_00562324(undefined4 *param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 *puVar3;
  undefined4 *local_34;
  undefined4 local_30;
  undefined4 local_2c [4];
  
  puVar3 = operator_new(0x30);
  *puVar3 = &PTR_FUN_00561de0_1_00928490;
  puVar3[1] = 0;
  puVar3[2] = 0;
  FUN_00548b18(puVar3 + 3);
  FUN_0054932c(&local_30,param_2,&DAT_00961224);
  FUN_00549380(puVar3 + 7,&local_30);
  FUN_00548ab0(&local_30);
  *(undefined1 *)(puVar3 + 0xb) = 0;
  local_34 = puVar3;
  FUN_00561bc8(&local_30,param_2,&local_34,param_3);
  uVar2 = local_2c[0];
  uVar1 = local_30;
  local_30 = 0;
  *param_1 = uVar1;
  local_2c[0] = 0;
  param_1[1] = uVar2;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_2c);
  FUN_0056193c(&local_34);
  return param_1;
}

// ---- FUN_005623e8  @ 0x5623e8
undefined4 * FUN_005623e8(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_005623e8_1_009284a8;
  FUN_0052af58(param_1 + 0xc);
  FUN_00533468(param_1);
  return param_1;
}

// ---- FUN_00562408  @ 0x562408
void * FUN_00562408(void *param_1)

{
  FUN_005623e8();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0056241c  @ 0x56241c
undefined4 * FUN_0056241c(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0056241c_1_00928500;
  FUN_005623e8();
  return param_1;
}

// ---- FUN_00562434  @ 0x562434
void * FUN_00562434(void *param_1)

{
  FUN_0056241c();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_00562448  @ 0x562448
undefined4 * FUN_00562448(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_00562448_1_00928560;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(param_1 + 0x15));
  FUN_0056241c(param_1);
  return param_1;
}

// ---- FUN_00562468  @ 0x562468
void * FUN_00562468(void *param_1)

{
  FUN_00562448();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0056247a  @ 0x56247a
undefined4 * FUN_0056247a(undefined4 *param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  undefined4 uStack_18;
  undefined4 uStack_14;
  
  uStack_18 = param_3;
  uStack_14 = param_4;
  FUN_005108ea(*(undefined4 *)(param_2 + 0x28));
  uVar1 = thunk_FUN_00529e14();
  gpg::TurnBasedMatch::TurnBasedMatch((TurnBasedMatch *)&uStack_18);
  *param_1 = uVar1;
  gpg::TurnBasedMatch::TurnBasedMatch((TurnBasedMatch *)(param_1 + 1),(TurnBasedMatch *)&uStack_18);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&uStack_14);
  return param_1;
}

// ---- FUN_00562504  @ 0x562504
undefined4 *
FUN_00562504(undefined4 *param_1,undefined4 *param_2,undefined4 param_3,
            TurnBasedMatchConfig *param_4)

{
  undefined4 uVar1;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_7c [4];
  undefined4 local_78;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_74 [4];
  undefined4 local_70;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_6c [4];
  undefined1 auStack_68 [32];
  undefined1 auStack_48 [36];
  
  uVar1 = *param_2;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_7c,(__shared_count *)(param_2 + 1));
  FUN_0052b37a(auStack_68,param_3);
  local_78 = uVar1;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_74,(__shared_count *)a_Stack_7c);
  FUN_0052b37a(auStack_48,auStack_68);
  local_70 = local_78;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_6c,(__shared_count *)a_Stack_74);
  FUN_00533528(param_1,&local_70);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_6c);
  *param_1 = &PTR_FUN_005623e8_1_009284a8;
  FUN_0052b37a(param_1 + 0xc,auStack_48);
  FUN_0052af58(auStack_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_74);
  *param_1 = &PTR_FUN_0056241c_1_00928500;
  FUN_0052af58(auStack_68);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_7c);
  *param_1 = &PTR_FUN_00562448_1_00928560;
  gpg::TurnBasedMatchConfig::TurnBasedMatchConfig((TurnBasedMatchConfig *)(param_1 + 0x14),param_4);
  return param_1;
}

// ---- FUN_005625f0  @ 0x5625f0
void FUN_005625f0(int *param_1,undefined4 param_2)

{
  int iVar1;
  undefined4 local_24;
  TurnBasedMatch aTStack_20 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_1c [8];
  
  iVar1 = FUN_00548c48(param_2);
  if (iVar1 == 0) {
    (**(code **)(*param_1 + 0x50))(&local_24,param_1,param_2);
    FUN_0052b918(param_1 + 0xc,&local_24);
  }
  else {
    local_24 = 0xfffffffe;
    gpg::TurnBasedMatch::TurnBasedMatch(aTStack_20);
    FUN_0052b918(param_1 + 0xc,&local_24);
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_1c);
  return;
}

// ---- FUN_00562680  @ 0x562680
undefined4
FUN_00562680(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 *param_4)

{
  undefined4 uVar1;
  void *pvVar2;
  void *local_64;
  undefined4 local_60;
  undefined4 local_5c;
  undefined1 auStack_58 [16];
  undefined4 *local_48 [2];
  code *local_40;
  undefined4 local_3c;
  _Function_base a_Stack_38 [20];
  
  FUN_00545074(auStack_58);
  local_60 = *param_4;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_5c,(__shared_count *)(param_4 + 1)
            );
  local_40 = (code *)0x0;
  local_48[0] = operator_new(8);
  uVar1 = local_5c;
  *local_48[0] = local_60;
  local_48[0][1] = 0;
  local_60 = 0;
  local_5c = 0;
  local_48[0][1] = uVar1;
  local_3c = 0x562bfd;
  local_40 = (code *)0x5624bf;
  FUN_00533700(a_Stack_38,(_Function_base *)local_48);
  pvVar2 = operator_new(0x14);
  FUN_0053372c(pvVar2,a_Stack_38);
  local_64 = pvVar2;
  FUN_005453a8(auStack_58,param_2,param_3,&local_64);
  if (local_64 != (void *)0x0) {
    FUN_0055648e();
  }
  std::_Function_base::~_Function_base(a_Stack_38);
  std::_Function_base::~_Function_base((_Function_base *)local_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_5c);
  FUN_00548b30(param_1,auStack_58);
  FUN_00548ab0(auStack_58);
  return param_1;
}

// ---- FUN_00562760  @ 0x562760
undefined4 FUN_00562760(undefined4 param_1,int param_2)

{
  bool bVar1;
  int extraout_r1;
  int *piVar2;
  int *extraout_r2;
  int extraout_r3;
  int iVar3;
  int *unaff_r4;
  int iVar4;
  int local_34;
  int local_30;
  undefined4 local_2c;
  int local_28;
  undefined4 local_24;
  
  local_34 = *(int *)(param_2 + 8);
  if (local_34 == 0) goto LAB_0056277c;
  piVar2 = (int *)(local_34 + 4);
  unaff_r4 = &local_28;
  local_28 = *(int *)(local_34 + 4);
  while( true ) {
    iVar3 = local_28;
    if (local_28 == 0) {
LAB_0056277c:
      std::__throw_bad_weak_ptr();
      param_2 = extraout_r1;
      piVar2 = extraout_r2;
      iVar3 = extraout_r3;
    }
    DataMemoryBarrier(0x1f);
    ExclusiveAccess(piVar2);
    iVar4 = *piVar2;
    bVar1 = false;
    if (iVar4 == *unaff_r4) {
      bVar1 = (bool)hasExclusiveAccess(piVar2);
      if (bVar1) {
        *piVar2 = iVar3 + 1;
      }
      DataMemoryBarrier(0x1f);
    }
    if (bVar1) break;
    *unaff_r4 = iVar4;
  }
  iVar3 = *(int *)(param_2 + 4);
  local_28 = iVar3;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(unaff_r4 + 1),
             (__shared_count *)&local_34);
  local_2c = local_24;
  local_30 = local_28;
  local_28 = 0;
  local_24 = 0;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(unaff_r4 + 1));
  FUN_00562680(unaff_r4,0,0x5463d1,&local_30,iVar3);
  FUN_00548b30(param_1,unaff_r4);
  FUN_00548ab0(unaff_r4);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_2c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_34);
  return param_1;
}

// ---- FUN_00562818  @ 0x562818
void FUN_00562818(int param_1)

{
  int iVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  int *piVar4;
  int iVar5;
  TurnBasedMatchConfig *this;
  undefined1 auStack_c8 [16];
  undefined1 auStack_b8 [16];
  undefined1 auStack_a8 [16];
  undefined1 auStack_98 [16];
  undefined1 auStack_88 [16];
  undefined1 auStack_78 [16];
  undefined1 auStack_68 [16];
  undefined1 auStack_58 [16];
  undefined1 auStack_48 [16];
  undefined1 auStack_38 [20];
  
  this = (TurnBasedMatchConfig *)(param_1 + 0x50);
  FUN_00548074(auStack_c8,&DAT_00960da4,&DAT_009616a4,"builder",
               "()Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig$Builder;"
              );
  iVar1 = gpg::TurnBasedMatchConfig::Variant(this);
  if (iVar1 != -1) {
    uVar2 = gpg::TurnBasedMatchConfig::Variant(this);
    FUN_0054968c(auStack_b8,auStack_c8,&DAT_009616a4,"setVariant",
                 "(I)Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig$Builder;"
                 ,uVar2);
    FUN_00548ab0(auStack_b8);
  }
  iVar1 = gpg::TurnBasedMatchConfig::MinimumAutomatchingPlayers(this);
  if (iVar1 != 0) {
    uVar2 = gpg::TurnBasedMatchConfig::MinimumAutomatchingPlayers(this);
    uVar3 = gpg::TurnBasedMatchConfig::MaximumAutomatchingPlayers(this);
    gpg::TurnBasedMatchConfig::ExclusiveBitMask(this);
    FUN_00548074(auStack_a8,&DAT_00960da4,&DAT_009639a4,"createAutoMatchCriteria",
                 "(IIJ)Landroid/os/Bundle;",uVar2,uVar3);
    uVar2 = FUN_00548bac(auStack_a8);
    FUN_0054968c(auStack_98,auStack_c8,&DAT_009616a4,"setAutoMatchCriteria",
                 "(Landroid/os/Bundle;)Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig$Builder;"
                 ,uVar2);
    FUN_00548ab0(auStack_98);
    FUN_00548ab0(auStack_a8);
  }
  piVar4 = (int *)gpg::TurnBasedMatchConfig::PlayerIdsToInvite(this);
  iVar1 = *piVar4;
  while( true ) {
    iVar5 = gpg::TurnBasedMatchConfig::PlayerIdsToInvite(this);
    if (iVar1 == *(int *)(iVar5 + 4)) break;
    FUN_0054942c(auStack_88,iVar1,0);
    uVar2 = FUN_00548bac(auStack_88);
    FUN_0054968c(auStack_78,auStack_c8,&DAT_009616a4,"addInvitedPlayer",
                 "(Ljava/lang/String;)Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig$Builder;"
                 ,uVar2);
    iVar1 = iVar1 + 4;
    FUN_00548ab0(auStack_78);
    FUN_00548ab0(auStack_88);
  }
  FUN_00547b10(auStack_68,&DAT_00961324,&DAT_00960e24,"TurnBasedMultiplayer",
               "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer;");
  uVar2 = FUN_00548bac(*(int *)(param_1 + 0x28) + 0xf4);
  FUN_0054968c(auStack_58,auStack_c8,&DAT_00960da4,"build",
               "()Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;");
  uVar3 = FUN_00548bac(auStack_58);
  FUN_0054968c(auStack_48,auStack_68,&DAT_00963024,"createMatch",
               "(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;)Lcom/google/android/gms/common/api/PendingResult;"
               ,uVar2,uVar3);
  FUN_00562760(auStack_38,param_1);
  uVar2 = FUN_00548bac(auStack_38);
  FUN_00548d90(auStack_48,"setResultCallback",
               "(Lcom/google/android/gms/common/api/ResultCallback;)V",uVar2);
  FUN_00548ab0(auStack_38);
  FUN_00548ab0(auStack_48);
  FUN_00548ab0(auStack_58);
  FUN_00548ab0(auStack_68);
  FUN_00548ab0(auStack_c8);
  return;
}

// ---- FUN_00562a88  @ 0x562a88
undefined4 * FUN_00562a88(undefined4 *param_1,int param_2,undefined4 param_3)

{
  int iVar1;
  undefined4 uVar2;
  undefined4 local_50;
  undefined4 local_4c;
  undefined4 local_48;
  undefined4 local_44;
  undefined1 auStack_40 [16];
  undefined4 local_30;
  TurnBasedMatch aTStack_2c [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_28 [12];
  
  iVar1 = FUN_00543484(param_3);
  if (iVar1 == -3) {
    FUN_00511920(*(undefined4 *)(param_2 + 0x28));
  }
  else if (iVar1 == -2) {
    FUN_0054968c(&local_30,param_3,&DAT_009619a4,"getStatus",
                 "()Lcom/google/android/gms/common/api/Status;");
    uVar2 = FUN_00548d1c(&local_30,"getStatusCode");
    FUN_00548ab0(&local_30);
    FUN_005166ae(1,"Encountered GmsCore error with status code: %d",uVar2);
  }
  uVar2 = FUN_00529e14(iVar1);
  iVar1 = gpg::IsError();
  if (iVar1 == 0) {
    FUN_0054932c(&local_30,param_3,&DAT_00961e24);
    FUN_0054968c(auStack_40,&local_30,&DAT_009620a4,"getMatch",
                 "()Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;");
    FUN_00548ab0(&local_30);
    local_30 = 1;
    FUN_00566298(&local_50,auStack_40);
    local_48 = local_50;
    local_44 = local_4c;
    local_4c = 0;
    local_50 = 0;
    gpg::TurnBasedMatch::TurnBasedMatch(aTStack_2c,&local_48);
    *param_1 = local_30;
    gpg::TurnBasedMatch::TurnBasedMatch((TurnBasedMatch *)(param_1 + 1),aTStack_2c);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_28);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_44);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_4c);
    FUN_00548ab0(auStack_40);
  }
  else {
    local_30 = uVar2;
    gpg::TurnBasedMatch::TurnBasedMatch(aTStack_2c);
    *param_1 = local_30;
    gpg::TurnBasedMatch::TurnBasedMatch((TurnBasedMatch *)(param_1 + 1),aTStack_2c);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_28);
  }
  return param_1;
}

// ---- FUN_00562bfc  @ 0x562bfc
void FUN_00562bfc(undefined4 *param_1)

{
  undefined4 uVar1;
  undefined1 auStack_30 [16];
  undefined1 auStack_20 [16];
  
  param_1 = (undefined4 *)*param_1;
  FUN_00548b30(auStack_30);
  uVar1 = *param_1;
  FUN_00548b30(auStack_20,auStack_30);
  FUN_005625f0(uVar1,auStack_20);
  FUN_00548ab0(auStack_20);
  FUN_00548ab0(auStack_30);
  return;
}

// ---- FUN_00562c3e  @ 0x562c3e
void FUN_00562c3e(void *param_1)

{
  if (param_1 != (void *)0x0) {
    operator_delete(param_1);
    return;
  }
  return;
}

// ---- FUN_00562c46  @ 0x562c46
void FUN_00562c46(int *param_1)

{
  if (param_1 != (int *)0x0) {
    (**(code **)(*param_1 + 4))();
  }
  return;
}

// ---- FUN_00562c54  @ 0x562c54
undefined4 * FUN_00562c54(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_00562c54_1_009285c0;
  FUN_0052b0c4(param_1 + 0xc);
  FUN_00533468(param_1);
  return param_1;
}

// ---- FUN_00562c74  @ 0x562c74
void * FUN_00562c74(void *param_1)

{
  FUN_00562c54();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_00562c88  @ 0x562c88
undefined4 * FUN_00562c88(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_00562c88_1_00928618;
  FUN_00562c54();
  return param_1;
}

// ---- FUN_00562ca0  @ 0x562ca0
void * FUN_00562ca0(void *param_1)

{
  FUN_00562c88();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_00562cb4  @ 0x562cb4
undefined4 * FUN_00562cb4(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_00562cb4_1_00928678;
  FUN_00562c88();
  return param_1;
}

// ---- FUN_00562ccc  @ 0x562ccc
void * FUN_00562ccc(void *param_1)

{
  FUN_00562cb4();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_00562d24  @ 0x562d24
int FUN_00562d24(int param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  *(undefined4 *)(param_1 + 8) = 0;
  if (*(int *)(param_2 + 8) != 0) {
    *(undefined4 *)(param_1 + 0xc) = *(undefined4 *)(param_2 + 0xc);
    *(undefined4 *)(param_1 + 8) = *(undefined4 *)(param_2 + 8);
    (**(code **)(param_2 + 8))(param_1,param_2,2,*(code **)(param_2 + 8),param_4);
  }
  std::function<void(gpg::TurnBasedMultiplayerManager::TurnBasedMatchesResponse_const&)>::function
            ((function<void(gpg::TurnBasedMultiplayerManager::TurnBasedMatchesResponse_const&)> *)
             (param_1 + 0x10),(function *)(param_2 + 0x10));
  return param_1;
}

// ---- FUN_00562d60  @ 0x562d60
undefined4 * FUN_00562d60(undefined4 *param_1,undefined4 *param_2,undefined4 param_3)

{
  undefined4 uVar1;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_74 [4];
  undefined4 local_70;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_6c [4];
  undefined4 local_68;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_64 [4];
  undefined1 auStack_60 [32];
  undefined1 auStack_40 [32];
  
  uVar1 = *param_2;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_74,(__shared_count *)(param_2 + 1));
  FUN_00562d24(auStack_60,param_3);
  local_70 = uVar1;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_6c,(__shared_count *)a_Stack_74);
  FUN_00562d24(auStack_40,auStack_60);
  local_68 = local_70;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_64,(__shared_count *)a_Stack_6c);
  FUN_00533528(param_1,&local_68);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_64);
  *param_1 = &PTR_FUN_00562c54_1_009285c0;
  FUN_00562d24(param_1 + 0xc,auStack_40);
  FUN_0052b0c4(auStack_40);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_6c);
  *param_1 = &PTR_FUN_00562c88_1_00928618;
  FUN_0052b0c4(auStack_60);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_74);
  *param_1 = &PTR_FUN_00562cb4_1_00928678;
  return param_1;
}

// ---- FUN_00562e38  @ 0x562e38
void FUN_00562e38(undefined4 *param_1,undefined4 *param_2)

{
  undefined4 uVar1;
  undefined4 local_14;
  undefined4 local_10;
  undefined4 local_c;
  
  local_14 = *param_1;
  *param_1 = 0;
  local_10 = param_1[1];
  param_1[1] = 0;
  local_c = param_1[2];
  param_1[2] = 0;
  *param_1 = *param_2;
  *param_2 = 0;
  uVar1 = param_1[1];
  param_1[1] = param_2[1];
  param_2[1] = uVar1;
  uVar1 = param_1[2];
  param_1[2] = param_2[2];
  param_2[2] = uVar1;
  std::vector<gpg::TurnBasedMatch,std::allocator<gpg::TurnBasedMatch>>::~vector
            ((vector<gpg::TurnBasedMatch,std::allocator<gpg::TurnBasedMatch>> *)&local_14);
  return;
}

// ---- FUN_00562e80  @ 0x562e80
TurnBasedMatchesResponse * FUN_00562e80(TurnBasedMatchesResponse *param_1,int param_2)

{
  undefined4 local_44;
  undefined4 local_40;
  undefined4 local_3c;
  undefined4 local_38;
  undefined4 local_34;
  undefined4 local_30;
  undefined4 local_2c;
  undefined4 local_28;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  undefined4 local_18;
  undefined4 local_14;
  
  FUN_005108ea(*(undefined4 *)(param_2 + 0x28));
  local_44 = thunk_FUN_00529e14();
  local_40 = 0;
  local_3c = 0;
  local_38 = 0;
  local_34 = 0;
  local_30 = 0;
  local_2c = 0;
  local_28 = 0;
  local_24 = 0;
  local_20 = 0;
  local_1c = 0;
  local_18 = 0;
  local_14 = 0;
  gpg::TurnBasedMultiplayerManager::TurnBasedMatchesResponse::TurnBasedMatchesResponse
            (param_1,(TurnBasedMatchesResponse *)&local_44);
  gpg::TurnBasedMultiplayerManager::TurnBasedMatchesResponse::{unnamed_type#1}::
  ~TurnBasedMatchesResponse((_unnamed_type_1_ *)&local_40);
  return param_1;
}

// ---- FUN_00563026  @ 0x563026
void FUN_00563026(int *param_1,undefined4 param_2)

{
  int iVar1;
  undefined4 local_4c;
  undefined4 local_48;
  undefined4 local_44;
  undefined4 local_40;
  undefined4 local_3c;
  undefined4 local_38;
  undefined4 local_34;
  undefined4 local_30;
  undefined4 local_2c;
  undefined4 local_28;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  
  iVar1 = FUN_00548c48(param_2);
  if (iVar1 == 0) {
    (**(code **)(*param_1 + 0x50))(&local_4c,param_1,param_2);
    FUN_0052ce74(param_1 + 0xc,&local_4c);
  }
  else {
    local_4c = 0xfffffffe;
    local_48 = 0;
    local_44 = 0;
    local_40 = 0;
    local_3c = 0;
    local_38 = 0;
    local_34 = 0;
    local_30 = 0;
    local_2c = 0;
    local_28 = 0;
    local_24 = 0;
    local_20 = 0;
    local_1c = 0;
    FUN_0052ce74(param_1 + 0xc,&local_4c);
  }
  gpg::TurnBasedMultiplayerManager::TurnBasedMatchesResponse::{unnamed_type#1}::
  ~TurnBasedMatchesResponse((_unnamed_type_1_ *)&local_48);
  return;
}

// ---- FUN_005630c0  @ 0x5630c0
undefined4
FUN_005630c0(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 *param_4)

{
  undefined4 uVar1;
  void *pvVar2;
  void *local_64;
  undefined4 local_60;
  undefined4 local_5c;
  undefined1 auStack_58 [16];
  undefined4 *local_48 [2];
  code *local_40;
  undefined4 local_3c;
  _Function_base a_Stack_38 [20];
  
  FUN_00545074(auStack_58);
  local_60 = *param_4;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_5c,(__shared_count *)(param_4 + 1)
            );
  local_40 = (code *)0x0;
  local_48[0] = operator_new(8);
  uVar1 = local_5c;
  *local_48[0] = local_60;
  local_48[0][1] = 0;
  local_60 = 0;
  local_5c = 0;
  local_48[0][1] = uVar1;
  local_3c = 0x5636d9;
  local_40 = (code *)0x562cdf;
  FUN_00533700(a_Stack_38,(_Function_base *)local_48);
  pvVar2 = operator_new(0x14);
  FUN_0053372c(pvVar2,a_Stack_38);
  local_64 = pvVar2;
  FUN_005453a8(auStack_58,param_2,param_3,&local_64);
  if (local_64 != (void *)0x0) {
    FUN_00562c46();
  }
  std::_Function_base::~_Function_base(a_Stack_38);
  std::_Function_base::~_Function_base((_Function_base *)local_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_5c);
  FUN_00548b30(param_1,auStack_58);
  FUN_00548ab0(auStack_58);
  return param_1;
}

// ---- FUN_005631a0  @ 0x5631a0
undefined4 FUN_005631a0(undefined4 param_1,int param_2)

{
  bool bVar1;
  int extraout_r1;
  int *piVar2;
  int *extraout_r2;
  int extraout_r3;
  int iVar3;
  int *unaff_r4;
  int iVar4;
  int local_34;
  int local_30;
  undefined4 local_2c;
  int local_28;
  undefined4 local_24;
  
  local_34 = *(int *)(param_2 + 8);
  if (local_34 == 0) goto LAB_005631bc;
  piVar2 = (int *)(local_34 + 4);
  unaff_r4 = &local_28;
  local_28 = *(int *)(local_34 + 4);
  while( true ) {
    iVar3 = local_28;
    if (local_28 == 0) {
LAB_005631bc:
      std::__throw_bad_weak_ptr();
      param_2 = extraout_r1;
      piVar2 = extraout_r2;
      iVar3 = extraout_r3;
    }
    DataMemoryBarrier(0x1f);
    ExclusiveAccess(piVar2);
    iVar4 = *piVar2;
    bVar1 = false;
    if (iVar4 == *unaff_r4) {
      bVar1 = (bool)hasExclusiveAccess(piVar2);
      if (bVar1) {
        *piVar2 = iVar3 + 1;
      }
      DataMemoryBarrier(0x1f);
    }
    if (bVar1) break;
    *unaff_r4 = iVar4;
  }
  iVar3 = *(int *)(param_2 + 4);
  local_28 = iVar3;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(unaff_r4 + 1),
             (__shared_count *)&local_34);
  local_2c = local_24;
  local_30 = local_28;
  local_28 = 0;
  local_24 = 0;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(unaff_r4 + 1));
  FUN_005630c0(unaff_r4,0,0x5463d1,&local_30,iVar3);
  FUN_00548b30(param_1,unaff_r4);
  FUN_00548ab0(unaff_r4);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_2c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_34);
  return param_1;
}

// ---- FUN_00563258  @ 0x563258
void FUN_00563258(int param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 *puVar4;
  undefined4 *puVar5;
  undefined4 *local_5c;
  undefined4 *local_58;
  undefined4 *local_54;
  undefined1 auStack_50 [16];
  undefined1 auStack_40 [16];
  undefined1 auStack_30 [20];
  
  FUN_00547b10(auStack_40,&DAT_00961324,&DAT_00960e24,"TurnBasedMultiplayer",
               "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer;");
  uVar1 = FUN_00548bac(*(int *)(param_1 + 0x28) + 0xf4);
  local_5c = (undefined4 *)0x0;
  local_58 = (undefined4 *)0x0;
  local_54 = (undefined4 *)0x0;
  local_5c = operator_new(0x10);
  local_58 = local_5c + 4;
  puVar5 = &DAT_0083140c;
  puVar4 = local_5c;
  do {
    uVar2 = *puVar5;
    uVar3 = puVar5[1];
    puVar5 = puVar5 + 2;
    *puVar4 = uVar2;
    puVar4[1] = uVar3;
    puVar4 = puVar4 + 2;
  } while (puVar5 != &DAT_0083141c);
  local_54 = local_58;
  FUN_005495ec(auStack_30,(_Vector_base<int,std::allocator<int>> *)&local_5c,0);
  uVar2 = FUN_00548bac(auStack_30);
  FUN_0054968c(auStack_50,auStack_40,&DAT_00963024,"loadMatchesByStatus",
               "(Lcom/google/android/gms/common/api/GoogleApiClient;[I)Lcom/google/android/gms/common/api/PendingResult;"
               ,uVar1,uVar2);
  FUN_00548ab0(auStack_30);
  std::_Vector_base<int,std::allocator<int>>::~_Vector_base
            ((_Vector_base<int,std::allocator<int>> *)&local_5c);
  FUN_00548ab0(auStack_40);
  FUN_005631a0(auStack_30,param_1);
  uVar1 = FUN_00548bac(auStack_30);
  FUN_00548d90(auStack_50,"setResultCallback",
               "(Lcom/google/android/gms/common/api/ResultCallback;)V",uVar1);
  FUN_00548ab0(auStack_30);
  FUN_00548ab0(auStack_50);
  return;
}

// ---- FUN_00563388  @ 0x563388
void FUN_00563388(int param_1,undefined4 param_2)

{
  int iVar1;
  undefined4 uVar2;
  undefined1 auStack_20 [16];
  
  iVar1 = FUN_00543484(param_2);
  if (iVar1 == -3) {
    FUN_00511920(*(undefined4 *)(param_1 + 0x28));
  }
  else if (iVar1 == -2) {
    FUN_0054968c(auStack_20,param_2,&DAT_009619a4,"getStatus",
                 "()Lcom/google/android/gms/common/api/Status;");
    uVar2 = FUN_00548d1c(auStack_20,"getStatusCode");
    FUN_00548ab0(auStack_20);
    FUN_005166ae(1,"Encountered GmsCore error with status code: %d",uVar2);
  }
  FUN_00529e14(iVar1);
  return;
}

// ---- FUN_00563408  @ 0x563408
TurnBasedMatchesResponse *
FUN_00563408(TurnBasedMatchesResponse *param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 uVar1;
  int iVar2;
  uint uVar3;
  uint uVar4;
  undefined4 local_f8;
  undefined4 local_f4;
  vector<gpg::TurnBasedMatch,std::allocator<gpg::TurnBasedMatch>> avStack_f0 [12];
  vector<gpg::TurnBasedMatch,std::allocator<gpg::TurnBasedMatch>> avStack_e4 [12];
  vector<gpg::TurnBasedMatch,std::allocator<gpg::TurnBasedMatch>> avStack_d8 [12];
  undefined1 auStack_cc [16];
  undefined1 auStack_bc [16];
  undefined1 auStack_ac [16];
  MultiplayerInvitation aMStack_9c [16];
  undefined1 auStack_8c [16];
  undefined1 auStack_7c [16];
  undefined4 local_6c;
  undefined4 local_68 [3];
  undefined4 local_5c;
  undefined4 local_58;
  MultiplayerInvitation *local_54;
  MultiplayerInvitation *local_50;
  undefined4 local_4c;
  undefined4 local_48;
  undefined4 local_44;
  undefined4 local_40;
  undefined4 local_3c;
  undefined4 local_38;
  undefined4 local_34;
  undefined4 local_30;
  undefined4 local_2c;
  
  uVar1 = FUN_00563388(param_2,param_3);
  FUN_0054932c((TurnBasedMatchesResponse *)&local_5c,param_3,&DAT_00962424);
  FUN_0054968c(auStack_cc,(TurnBasedMatchesResponse *)&local_5c,&DAT_00962124,"getMatches",
               "()Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;");
  FUN_00548ab0((TurnBasedMatchesResponse *)&local_5c);
  iVar2 = gpg::IsError(uVar1);
  if (iVar2 == 0) {
    memset((TurnBasedMatchesResponse *)&local_5c,0,0x34);
    local_5c = 1;
    FUN_0054968c(auStack_bc,auStack_cc,&DAT_009627a4,"getInvitations",
                 "()Lcom/google/android/gms/games/multiplayer/InvitationBuffer;");
    uVar3 = FUN_00548d1c(auStack_bc,"getCount");
    std::vector<gpg::MultiplayerInvitation,std::allocator<gpg::MultiplayerInvitation>>::reserve
              ((vector<gpg::MultiplayerInvitation,std::allocator<gpg::MultiplayerInvitation>> *)
               &local_58,uVar3);
    for (uVar4 = 0; uVar4 != uVar3; uVar4 = uVar4 + 1) {
      FUN_0054968c(auStack_ac,auStack_bc,&DAT_00962f24,&DAT_0080598d,"(I)Ljava/lang/Object;",uVar4);
      FUN_00566880(&local_f8,auStack_ac);
      local_6c = local_f8;
      local_68[0] = local_f4;
      local_f4 = 0;
      local_f8 = 0;
      gpg::MultiplayerInvitation::MultiplayerInvitation(aMStack_9c,&local_6c);
      if (local_54 == local_50) {
        std::vector<gpg::MultiplayerInvitation,std::allocator<gpg::MultiplayerInvitation>>::
        _M_emplace_back_aux<gpg::MultiplayerInvitation>
                  ((vector<gpg::MultiplayerInvitation,std::allocator<gpg::MultiplayerInvitation>> *)
                   &local_58,aMStack_9c);
      }
      else {
        if (local_54 != (MultiplayerInvitation *)0x0) {
          gpg::MultiplayerInvitation::MultiplayerInvitation(local_54,aMStack_9c);
        }
        local_54 = local_54 + 0x10;
      }
      gpg::MultiplayerInvitation::~MultiplayerInvitation(aMStack_9c);
      std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
                ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_68);
      std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
                ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_f4);
      FUN_00548ab0(auStack_ac);
    }
    FUN_00548de4(auStack_bc,"close");
    FUN_0054968c(auStack_8c,auStack_cc,&DAT_00960f24,"getMyTurnMatches",
                 "()Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;");
    FUN_00566acc(avStack_f0,auStack_8c);
    FUN_00562e38(&local_4c,avStack_f0);
    std::vector<gpg::TurnBasedMatch,std::allocator<gpg::TurnBasedMatch>>::~vector(avStack_f0);
    FUN_00548ab0(auStack_8c);
    FUN_0054968c(auStack_7c,auStack_cc,&DAT_00960f24,"getTheirTurnMatches",
                 "()Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;");
    FUN_00566acc(avStack_e4,auStack_7c);
    FUN_00562e38(&local_40,avStack_e4);
    std::vector<gpg::TurnBasedMatch,std::allocator<gpg::TurnBasedMatch>>::~vector(avStack_e4);
    FUN_00548ab0(auStack_7c);
    FUN_0054968c(&local_6c,auStack_cc,&DAT_00960f24,"getCompletedMatches",
                 "()Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;");
    FUN_00566acc(avStack_d8,&local_6c);
    FUN_00562e38(&local_34,avStack_d8);
    std::vector<gpg::TurnBasedMatch,std::allocator<gpg::TurnBasedMatch>>::~vector(avStack_d8);
    FUN_00548ab0(&local_6c);
    gpg::TurnBasedMultiplayerManager::TurnBasedMatchesResponse::TurnBasedMatchesResponse
              (param_1,(TurnBasedMatchesResponse *)&local_5c);
    FUN_00548ab0(auStack_bc);
  }
  else {
    FUN_00548de4(auStack_cc,"close");
    local_58 = 0;
    local_54 = (MultiplayerInvitation *)0x0;
    local_50 = (MultiplayerInvitation *)0x0;
    local_4c = 0;
    local_48 = 0;
    local_44 = 0;
    local_40 = 0;
    local_3c = 0;
    local_38 = 0;
    local_34 = 0;
    local_30 = 0;
    local_2c = 0;
    local_5c = uVar1;
    gpg::TurnBasedMultiplayerManager::TurnBasedMatchesResponse::TurnBasedMatchesResponse
              (param_1,(TurnBasedMatchesResponse *)&local_5c);
  }
  gpg::TurnBasedMultiplayerManager::TurnBasedMatchesResponse::{unnamed_type#1}::
  ~TurnBasedMatchesResponse((_unnamed_type_1_ *)&local_58);
  FUN_00548ab0(auStack_cc);
  return param_1;
}

// ---- FUN_005636d8  @ 0x5636d8
void FUN_005636d8(undefined4 *param_1)

{
  undefined4 uVar1;
  undefined1 auStack_30 [16];
  undefined1 auStack_20 [16];
  
  param_1 = (undefined4 *)*param_1;
  FUN_00548b30(auStack_30);
  uVar1 = *param_1;
  FUN_00548b30(auStack_20,auStack_30);
  FUN_00563026(uVar1,auStack_20);
  FUN_00548ab0(auStack_20);
  FUN_00548ab0(auStack_30);
  return;
}

// ---- FUN_005637a4  @ 0x5637a4
undefined4 * FUN_005637a4(undefined4 *param_1,undefined4 *param_2,undefined4 param_3)

{
  undefined4 uVar1;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_54 [4];
  undefined4 local_50;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_4c [4];
  undefined4 local_48;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_44 [4];
  undefined1 auStack_40 [36];
  
  uVar1 = *param_2;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_54,(__shared_count *)(param_2 + 1));
  FUN_0052b37a(auStack_40,param_3);
  local_50 = uVar1;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_4c,(__shared_count *)a_Stack_54);
  local_48 = local_50;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_44,(__shared_count *)a_Stack_4c);
  param_1[1] = 0;
  param_1[2] = 0;
  *param_1 = &PTR_FUN_005107b4_1_00924458;
  param_1[3] = local_48;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(param_1 + 4),
             (__shared_count *)a_Stack_44);
  param_1[8] = 0;
  param_1[6] = 0;
  param_1[7] = 0;
  param_1[8] = 0;
  param_1[9] = 0;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_44);
  *param_1 = &PTR_FUN_00533468_1_00925100;
  param_1[10] = local_50;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(param_1 + 0xb),
             (__shared_count *)a_Stack_4c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_4c);
  *param_1 = &PTR_FUN_005623e8_1_009284a8;
  FUN_0052b37a(param_1 + 0xc,auStack_40);
  FUN_0052af58(auStack_40);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_54);
  *param_1 = &PTR_FUN_0056241c_1_00928500;
  return param_1;
}

// ---- FUN_00563894  @ 0x563894
undefined4 *
FUN_00563894(undefined4 *param_1,undefined4 *param_2,undefined4 param_3,undefined4 *param_4)

{
  undefined4 local_40;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_3c [4];
  undefined1 auStack_38 [32];
  
  local_40 = *param_2;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_3c,(__shared_count *)(param_2 + 1));
  FUN_0052b37a(auStack_38,param_3);
  FUN_005637a4(param_1,&local_40,auStack_38);
  FUN_0052af58(auStack_38);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_3c);
  *param_1 = &PTR_FUN_00563938_1_009286d8;
  param_1[0x14] = *param_4;
  *param_4 = &DAT_00972528;
  *(undefined1 *)(param_1 + 0x15) = 1;
  param_1[0x16] = 0;
  param_1[0x17] = 0;
  param_1[0x18] = 0;
  gpg::ParticipantResults::ParticipantResults((ParticipantResults *)(param_1 + 0x19));
  return param_1;
}

// ---- FUN_00563938  @ 0x563938
undefined4 * FUN_00563938(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_00563938_1_009286d8;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(param_1 + 0x1a));
  std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::~_Vector_base
            ((_Vector_base<unsigned_char,std::allocator<unsigned_char>> *)(param_1 + 0x16));
  FUN_007c5914(param_1 + 0x14);
  FUN_0056241c(param_1);
  return param_1;
}

// ---- FUN_00563968  @ 0x563968
void * FUN_00563968(void *param_1)

{
  FUN_00563938();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0056397c  @ 0x56397c
undefined4 *
FUN_0056397c(undefined4 *param_1,undefined4 *param_2,undefined4 param_3,undefined4 *param_4,
            undefined4 *param_5,ParticipantResults *param_6)

{
  undefined4 uVar1;
  undefined4 local_48;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_44 [4];
  undefined1 auStack_40 [36];
  
  local_48 = *param_2;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_44,(__shared_count *)(param_2 + 1));
  FUN_0052b37a(auStack_40,param_3);
  FUN_005637a4(param_1,&local_48,auStack_40);
  FUN_0052af58(auStack_40);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_44);
  *param_1 = &PTR_FUN_00563938_1_009286d8;
  param_1[0x14] = *param_4;
  *param_4 = &DAT_00972528;
  param_1[0x17] = 0;
  param_1[0x18] = 0;
  param_1[0x16] = 0;
  *(undefined1 *)(param_1 + 0x15) = 0;
  param_1[0x16] = *param_5;
  *param_5 = 0;
  uVar1 = param_1[0x17];
  param_1[0x17] = param_5[1];
  param_5[1] = uVar1;
  uVar1 = param_1[0x18];
  param_1[0x18] = param_5[2];
  param_5[2] = uVar1;
  gpg::ParticipantResults::ParticipantResults((ParticipantResults *)(param_1 + 0x19),param_6);
  return param_1;
}

// ---- FUN_00563a3c  @ 0x563a3c
undefined4
FUN_00563a3c(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 *param_4)

{
  undefined4 uVar1;
  void *pvVar2;
  void *local_64;
  undefined4 local_60;
  undefined4 local_5c;
  undefined1 auStack_58 [16];
  undefined4 *local_48 [2];
  code *local_40;
  undefined1 *local_3c;
  _Function_base a_Stack_38 [20];
  
  FUN_00545074(auStack_58);
  local_60 = *param_4;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_5c,(__shared_count *)(param_4 + 1)
            );
  local_40 = (code *)0x0;
  local_48[0] = operator_new(8);
  uVar1 = local_5c;
  *local_48[0] = local_60;
  local_48[0][1] = 0;
  local_60 = 0;
  local_5c = 0;
  local_48[0][1] = uVar1;
  local_3c = &LAB_0056400c_1;
  local_40 = (code *)0x56375f;
  FUN_00533700(a_Stack_38,(_Function_base *)local_48);
  pvVar2 = operator_new(0x14);
  FUN_0053372c(pvVar2,a_Stack_38);
  local_64 = pvVar2;
  FUN_005453a8(auStack_58,param_2,param_3,&local_64);
  if (local_64 != (void *)0x0) {
    FUN_0054bfac();
  }
  std::_Function_base::~_Function_base(a_Stack_38);
  std::_Function_base::~_Function_base((_Function_base *)local_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_5c);
  FUN_00548b30(param_1,auStack_58);
  FUN_00548ab0(auStack_58);
  return param_1;
}

// ---- FUN_00563b1c  @ 0x563b1c
undefined4 FUN_00563b1c(undefined4 param_1,int param_2)

{
  bool bVar1;
  int extraout_r1;
  int *piVar2;
  int *extraout_r2;
  int extraout_r3;
  int iVar3;
  int *unaff_r4;
  int iVar4;
  int local_34;
  int local_30;
  undefined4 local_2c;
  int local_28;
  undefined4 local_24;
  
  local_34 = *(int *)(param_2 + 8);
  if (local_34 == 0) goto LAB_00563b38;
  piVar2 = (int *)(local_34 + 4);
  unaff_r4 = &local_28;
  local_28 = *(int *)(local_34 + 4);
  while( true ) {
    iVar3 = local_28;
    if (local_28 == 0) {
LAB_00563b38:
      std::__throw_bad_weak_ptr();
      param_2 = extraout_r1;
      piVar2 = extraout_r2;
      iVar3 = extraout_r3;
    }
    DataMemoryBarrier(0x1f);
    ExclusiveAccess(piVar2);
    iVar4 = *piVar2;
    bVar1 = false;
    if (iVar4 == *unaff_r4) {
      bVar1 = (bool)hasExclusiveAccess(piVar2);
      if (bVar1) {
        *piVar2 = iVar3 + 1;
      }
      DataMemoryBarrier(0x1f);
    }
    if (bVar1) break;
    *unaff_r4 = iVar4;
  }
  iVar3 = *(int *)(param_2 + 4);
  local_28 = iVar3;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(unaff_r4 + 1),
             (__shared_count *)&local_34);
  local_2c = local_24;
  local_30 = local_28;
  local_28 = 0;
  local_24 = 0;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(unaff_r4 + 1));
  FUN_00563a3c(unaff_r4,0,0x5463d1,&local_30,iVar3);
  FUN_00548b30(param_1,unaff_r4);
  FUN_00548ab0(unaff_r4);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_2c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_34);
  return param_1;
}

// ---- FUN_00563bd4  @ 0x563bd4
void FUN_00563bd4(int param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined1 *puVar5;
  int iVar6;
  int iVar7;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_ac [4];
  undefined1 auStack_a8 [16];
  undefined1 auStack_98 [16];
  undefined1 auStack_88 [16];
  undefined1 auStack_78 [16];
  undefined1 auStack_68 [16];
  undefined1 auStack_58 [16];
  undefined1 auStack_48 [16];
  undefined1 auStack_38 [20];
  
  if (*(char *)(param_1 + 0x54) == '\0') {
    uVar1 = FUN_00549a1c();
    FUN_00549584(auStack_a8,param_1 + 0x58,uVar1);
    FUN_00548040(auStack_98,&DAT_00961824);
    iVar6 = *(int *)(param_1 + 100);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
              (a_Stack_ac,(__shared_count *)(param_1 + 0x68));
    for (iVar7 = *(int *)(iVar6 + 0xc); iVar7 != iVar6 + 4; iVar7 = FUN_007997a0(iVar7)) {
      FUN_0054942c(auStack_88,iVar7 + 0x10,uVar1);
      uVar2 = FUN_00548bac(auStack_88);
      uVar3 = FUN_00565900(*(undefined4 *)(iVar7 + 0x18));
      FUN_00547b78(auStack_78,&DAT_00961524,"(Ljava/lang/String;II)V",uVar2,uVar3,
                   *(undefined4 *)(iVar7 + 0x14));
      uVar2 = FUN_00548bac(auStack_78);
      FUN_00548c54(auStack_98,&DAT_00809538,"(Ljava/lang/Object;)Z",uVar2);
      FUN_00548ab0(auStack_78);
      FUN_00548ab0(auStack_88);
    }
    FUN_00547b10(auStack_68,&DAT_00961324,&DAT_00960e24,"TurnBasedMultiplayer",
                 "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer;");
    uVar2 = FUN_00548bac(*(int *)(param_1 + 0x28) + 0xf4);
    FUN_0054942c(auStack_58,param_1 + 0x50,uVar1);
    uVar1 = FUN_00548bac(auStack_58);
    uVar3 = FUN_00548bac(auStack_a8);
    uVar4 = FUN_00548bac(auStack_98);
    FUN_0054968c(auStack_48,auStack_68,&DAT_00963024,"finishMatch",
                 "(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;[BLjava/util/List;)Lcom/google/android/gms/common/api/PendingResult;"
                 ,uVar2,uVar1,uVar3,uVar4);
    FUN_00563b1c(auStack_38,param_1);
    uVar1 = FUN_00548bac(auStack_38);
    FUN_00548d90(auStack_48,"setResultCallback",
                 "(Lcom/google/android/gms/common/api/ResultCallback;)V",uVar1);
    FUN_00548ab0(auStack_38);
    FUN_00548ab0(auStack_48);
    FUN_00548ab0(auStack_58);
    FUN_00548ab0(auStack_68);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_ac);
    FUN_00548ab0(auStack_98);
    puVar5 = auStack_a8;
  }
  else {
    puVar5 = auStack_68;
    FUN_00547b10(puVar5,&DAT_00961324,&DAT_00960e24,"TurnBasedMultiplayer",
                 "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer;");
    uVar1 = FUN_00548bac(*(int *)(param_1 + 0x28) + 0xf4);
    FUN_0054942c(auStack_58,param_1 + 0x50,0);
    uVar2 = FUN_00548bac(auStack_58);
    FUN_0054968c(auStack_48,puVar5,&DAT_00963024,"finishMatch",
                 "(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;"
                 ,uVar1,uVar2);
    FUN_00563b1c(auStack_38,param_1);
    uVar1 = FUN_00548bac(auStack_38);
    FUN_00548d90(auStack_48,"setResultCallback",
                 "(Lcom/google/android/gms/common/api/ResultCallback;)V",uVar1);
    FUN_00548ab0(auStack_38);
    FUN_00548ab0(auStack_48);
    FUN_00548ab0(auStack_58);
  }
  FUN_00548ab0(puVar5);
  return;
}

// ---- FUN_00563e98  @ 0x563e98
undefined4 * FUN_00563e98(undefined4 *param_1,int param_2,undefined4 param_3)

{
  int iVar1;
  undefined4 uVar2;
  undefined4 local_50;
  undefined4 local_4c;
  undefined4 local_48;
  undefined4 local_44;
  undefined1 auStack_40 [16];
  undefined4 local_30;
  TurnBasedMatch aTStack_2c [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_28 [12];
  
  iVar1 = FUN_00543484(param_3);
  if (iVar1 == -3) {
    FUN_00511920(*(undefined4 *)(param_2 + 0x28));
  }
  else if (iVar1 == -2) {
    FUN_0054968c(&local_30,param_3,&DAT_009619a4,"getStatus",
                 "()Lcom/google/android/gms/common/api/Status;");
    uVar2 = FUN_00548d1c(&local_30,"getStatusCode");
    FUN_00548ab0(&local_30);
    FUN_005166ae(1,"Encountered GmsCore error with status code: %d",uVar2);
  }
  uVar2 = FUN_00529e14(iVar1);
  iVar1 = gpg::IsError();
  if (iVar1 == 0) {
    FUN_0054932c(&local_30,param_3,&DAT_00963124);
    FUN_0054968c(auStack_40,&local_30,&DAT_009620a4,"getMatch",
                 "()Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;");
    FUN_00548ab0(&local_30);
    local_30 = 1;
    FUN_00566298(&local_50,auStack_40);
    local_48 = local_50;
    local_44 = local_4c;
    local_4c = 0;
    local_50 = 0;
    gpg::TurnBasedMatch::TurnBasedMatch(aTStack_2c,&local_48);
    *param_1 = local_30;
    gpg::TurnBasedMatch::TurnBasedMatch((TurnBasedMatch *)(param_1 + 1),aTStack_2c);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_28);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_44);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_4c);
    FUN_00548ab0(auStack_40);
  }
  else {
    local_30 = uVar2;
    gpg::TurnBasedMatch::TurnBasedMatch(aTStack_2c);
    *param_1 = local_30;
    gpg::TurnBasedMatch::TurnBasedMatch((TurnBasedMatch *)(param_1 + 1),aTStack_2c);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_28);
  }
  return param_1;
}

// ---- FUN_00564050  @ 0x564050
undefined4 * FUN_00564050(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_00564050_1_00928738;
  FUN_007c5914(param_1 + 0x17);
  FUN_007c5914(param_1 + 0x16);
  FUN_0056241c(param_1);
  return param_1;
}

// ---- FUN_00564078  @ 0x564078
void * FUN_00564078(void *param_1)

{
  FUN_00564050();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_00564114  @ 0x564114
undefined4 *
FUN_00564114(undefined4 *param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5,undefined4 param_6,undefined4 param_7)

{
  undefined4 local_40;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_3c [4];
  undefined1 auStack_38 [32];
  
  local_40 = *param_2;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_3c,(__shared_count *)(param_2 + 1));
  FUN_0052b37a(auStack_38,param_3);
  FUN_005637a4(param_1,&local_40,auStack_38);
  FUN_0052af58(auStack_38);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_3c);
  param_1[0x14] = param_4;
  *param_1 = &PTR_FUN_00564050_1_00928738;
  param_1[0x15] = param_5;
  FUN_007c64e8(param_1 + 0x16,param_6);
  FUN_007c64e8(param_1 + 0x17,param_7);
  *(undefined1 *)(param_1 + 0x18) = 1;
  return param_1;
}

// ---- FUN_005641a8  @ 0x5641a8
undefined4 *
FUN_005641a8(undefined4 *param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5,undefined4 param_6)

{
  undefined4 local_40;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_3c [4];
  undefined1 auStack_38 [32];
  
  local_40 = *param_2;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_3c,(__shared_count *)(param_2 + 1));
  FUN_0052b37a(auStack_38,param_3);
  FUN_005637a4(param_1,&local_40,auStack_38);
  FUN_0052af58(auStack_38);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_3c);
  param_1[0x14] = param_4;
  *param_1 = &PTR_FUN_00564050_1_00928738;
  param_1[0x15] = param_5;
  FUN_007c64e8(param_1 + 0x16,param_6);
  FUN_007c6a60(param_1 + 0x17,&DAT_00801f93,auStack_38);
  *(undefined1 *)(param_1 + 0x18) = 0;
  return param_1;
}

// ---- FUN_00564244  @ 0x564244
undefined4
FUN_00564244(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 *param_4)

{
  undefined4 uVar1;
  void *pvVar2;
  void *local_64;
  undefined4 local_60;
  undefined4 local_5c;
  undefined1 auStack_58 [16];
  undefined4 *local_48 [2];
  code *local_40;
  undefined1 *local_3c;
  _Function_base a_Stack_38 [20];
  
  FUN_00545074(auStack_58);
  local_60 = *param_4;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_5c,(__shared_count *)(param_4 + 1)
            );
  local_40 = (code *)0x0;
  local_48[0] = operator_new(8);
  uVar1 = local_5c;
  *local_48[0] = local_60;
  local_48[0][1] = 0;
  local_60 = 0;
  local_5c = 0;
  local_48[0][1] = uVar1;
  local_3c = &LAB_00564740_1;
  local_40 = (code *)0x5640cf;
  FUN_00533700(a_Stack_38,(_Function_base *)local_48);
  pvVar2 = operator_new(0x14);
  FUN_0053372c(pvVar2,a_Stack_38);
  local_64 = pvVar2;
  FUN_005453a8(auStack_58,param_2,param_3,&local_64);
  if (local_64 != (void *)0x0) {
    FUN_0054372c();
  }
  std::_Function_base::~_Function_base(a_Stack_38);
  std::_Function_base::~_Function_base((_Function_base *)local_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_5c);
  FUN_00548b30(param_1,auStack_58);
  FUN_00548ab0(auStack_58);
  return param_1;
}

// ---- FUN_00564324  @ 0x564324
undefined4 FUN_00564324(undefined4 param_1,int param_2)

{
  bool bVar1;
  int extraout_r1;
  int *piVar2;
  int *extraout_r2;
  int extraout_r3;
  int iVar3;
  int *unaff_r4;
  int iVar4;
  int local_34;
  int local_30;
  undefined4 local_2c;
  int local_28;
  undefined4 local_24;
  
  local_34 = *(int *)(param_2 + 8);
  if (local_34 == 0) goto LAB_00564340;
  piVar2 = (int *)(local_34 + 4);
  unaff_r4 = &local_28;
  local_28 = *(int *)(local_34 + 4);
  while( true ) {
    iVar3 = local_28;
    if (local_28 == 0) {
LAB_00564340:
      std::__throw_bad_weak_ptr();
      param_2 = extraout_r1;
      piVar2 = extraout_r2;
      iVar3 = extraout_r3;
    }
    DataMemoryBarrier(0x1f);
    ExclusiveAccess(piVar2);
    iVar4 = *piVar2;
    bVar1 = false;
    if (iVar4 == *unaff_r4) {
      bVar1 = (bool)hasExclusiveAccess(piVar2);
      if (bVar1) {
        *piVar2 = iVar3 + 1;
      }
      DataMemoryBarrier(0x1f);
    }
    if (bVar1) break;
    *unaff_r4 = iVar4;
  }
  iVar3 = *(int *)(param_2 + 4);
  local_28 = iVar3;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(unaff_r4 + 1),
             (__shared_count *)&local_34);
  local_2c = local_24;
  local_30 = local_28;
  local_28 = 0;
  local_24 = 0;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(unaff_r4 + 1));
  FUN_00564244(unaff_r4,0,0x5463d1,&local_30,iVar3);
  FUN_00548b30(param_1,unaff_r4);
  FUN_00548ab0(unaff_r4);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_2c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_34);
  return param_1;
}

// ---- FUN_005643dc  @ 0x5643dc
void FUN_005643dc(int param_1)

{
  bool bVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined1 *puVar5;
  undefined4 uVar6;
  undefined1 *puVar7;
  undefined1 auStack_88 [16];
  undefined1 auStack_78 [16];
  undefined1 auStack_68 [16];
  undefined1 auStack_58 [16];
  undefined1 auStack_48 [16];
  undefined1 auStack_38 [20];
  
  if (*(char *)(param_1 + 0x60) == '\0') {
    puVar7 = auStack_48;
    FUN_00547b10(puVar7,&DAT_00961324,&DAT_00960e24,"TurnBasedMultiplayer",
                 "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer;");
    uVar6 = *(undefined4 *)(param_1 + 0x54);
    uVar2 = FUN_00548bac(*(int *)(param_1 + 0x28) + 0xf4);
    FUN_0054942c(auStack_38,param_1 + 0x58,0);
    uVar3 = FUN_00548bac(auStack_38);
    FUN_0054968c(auStack_88,puVar7,&DAT_00963024,uVar6,
                 "(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;"
                 ,uVar2,uVar3);
    puVar5 = auStack_38;
  }
  else {
    puVar7 = auStack_78;
    FUN_00547b10(puVar7,&DAT_00961324,&DAT_00960e24,"TurnBasedMultiplayer",
                 "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer;");
    uVar6 = *(undefined4 *)(param_1 + 0x54);
    uVar2 = FUN_00548bac(*(int *)(param_1 + 0x28) + 0xf4);
    puVar5 = auStack_68;
    FUN_0054942c(puVar5,param_1 + 0x58,0);
    uVar3 = FUN_00548bac(puVar5);
    bVar1 = *(int *)(*(int *)(param_1 + 0x5c) + -0xc) == 0;
    if (bVar1) {
      uVar4 = 0;
    }
    else {
      FUN_0054942c(auStack_58,param_1 + 0x5c,0);
      uVar4 = FUN_00548bac(auStack_58);
    }
    FUN_0054968c(auStack_88,puVar7,&DAT_00963024,uVar6,
                 "(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;"
                 ,uVar2,uVar3,uVar4);
    if (!bVar1) {
      FUN_00548ab0(auStack_58);
    }
  }
  FUN_00548ab0(puVar5);
  FUN_00548ab0(puVar7);
  FUN_00564324(auStack_38,param_1);
  uVar2 = FUN_00548bac(auStack_38);
  FUN_00548d90(auStack_88,"setResultCallback",
               "(Lcom/google/android/gms/common/api/ResultCallback;)V",uVar2);
  FUN_00548ab0(auStack_38);
  FUN_00548ab0(auStack_88);
  return;
}

// ---- FUN_0056459c  @ 0x56459c
undefined4 * FUN_0056459c(undefined4 *param_1,int param_2,undefined4 param_3)

{
  int iVar1;
  undefined4 uVar2;
  TurnBasedMatch *this;
  undefined4 local_50;
  undefined4 local_4c;
  undefined4 local_48;
  undefined4 local_44;
  undefined1 auStack_40 [16];
  undefined4 local_30;
  TurnBasedMatch aTStack_2c [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_28 [12];
  
  iVar1 = FUN_00543484(param_3);
  if (iVar1 == -3) {
    FUN_00511920(*(undefined4 *)(param_2 + 0x28));
  }
  else if (iVar1 == -2) {
    FUN_0054968c(&local_30,param_3,&DAT_009619a4,"getStatus",
                 "()Lcom/google/android/gms/common/api/Status;");
    uVar2 = FUN_00548d1c(&local_30,"getStatusCode");
    FUN_00548ab0(&local_30);
    FUN_005166ae(1,"Encountered GmsCore error with status code: %d",uVar2);
  }
  this = (TurnBasedMatch *)(param_1 + 1);
  uVar2 = FUN_00529e14(iVar1);
  iVar1 = gpg::IsError();
  if (iVar1 == 0) {
    if ((*(undefined **)(param_2 + 0x50) == &DAT_009614a4) ||
       (*(undefined **)(param_2 + 0x50) == &DAT_00961e24)) {
      FUN_0054932c(&local_30,param_3);
      FUN_0054968c(auStack_40,&local_30,&DAT_009620a4,"getMatch",
                   "()Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;");
      FUN_00548ab0(&local_30);
      local_30 = 1;
      FUN_00566298(&local_50,auStack_40);
      local_48 = local_50;
      local_44 = local_4c;
      local_4c = 0;
      local_50 = 0;
      gpg::TurnBasedMatch::TurnBasedMatch(aTStack_2c,&local_48);
      *param_1 = local_30;
      gpg::TurnBasedMatch::TurnBasedMatch(this,aTStack_2c);
      std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_28);
      std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
                ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_44);
      std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
                ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_4c);
      FUN_00548ab0(auStack_40);
      return param_1;
    }
    local_30 = 1;
    gpg::TurnBasedMatch::TurnBasedMatch(aTStack_2c);
    *param_1 = local_30;
    gpg::TurnBasedMatch::TurnBasedMatch(this,aTStack_2c);
  }
  else {
    local_30 = uVar2;
    gpg::TurnBasedMatch::TurnBasedMatch(aTStack_2c);
    *param_1 = local_30;
    gpg::TurnBasedMatch::TurnBasedMatch(this,aTStack_2c);
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_28);
  return param_1;
}

// ---- FUN_00564784  @ 0x564784
undefined4 * FUN_00564784(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_00564784_1_00928798;
  FUN_007c5914(param_1 + 0xd);
  FUN_00533468(param_1);
  return param_1;
}

// ---- FUN_005647a4  @ 0x5647a4
void * FUN_005647a4(void *param_1)

{
  FUN_00564784();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_005647b8  @ 0x5647b8
undefined4 *
FUN_005647b8(undefined4 *param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4)

{
  bool bVar1;
  undefined4 uVar2;
  int *piVar3;
  int local_24;
  undefined4 local_20;
  int local_1c;
  
  uVar2 = *param_2;
  local_24 = param_2[1];
  if (local_24 != 0) {
    piVar3 = (int *)(local_24 + 4);
    DataMemoryBarrier(0x1f);
    do {
      ExclusiveAccess(piVar3);
      bVar1 = (bool)hasExclusiveAccess(piVar3);
    } while (!bVar1);
    *piVar3 = *piVar3 + 1;
    DataMemoryBarrier(0x1f);
  }
  if (local_24 != 0) {
    piVar3 = (int *)(local_24 + 4);
    DataMemoryBarrier(0x1f);
    do {
      ExclusiveAccess(piVar3);
      bVar1 = (bool)hasExclusiveAccess(piVar3);
    } while (!bVar1);
    *piVar3 = *piVar3 + 1;
    DataMemoryBarrier(0x1f);
  }
  param_1[1] = 0;
  param_1[2] = 0;
  *param_1 = &PTR_FUN_005107b4_1_00924458;
  param_1[4] = local_24;
  param_1[3] = uVar2;
  if (local_24 != 0) {
    piVar3 = (int *)(local_24 + 4);
    DataMemoryBarrier(0x1f);
    do {
      ExclusiveAccess(piVar3);
      bVar1 = (bool)hasExclusiveAccess(piVar3);
    } while (!bVar1);
    *piVar3 = *piVar3 + 1;
    DataMemoryBarrier(0x1f);
  }
  param_1[8] = 0;
  param_1[8] = 0;
  param_1[9] = 0;
  param_1[6] = 0;
  param_1[7] = 0;
  local_20 = uVar2;
  local_1c = local_24;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_1c);
  *param_1 = &PTR_FUN_00533468_1_00925100;
  param_1[0xb] = local_24;
  param_1[10] = uVar2;
  if (local_24 != 0) {
    piVar3 = (int *)(local_24 + 4);
    DataMemoryBarrier(0x1f);
    do {
      ExclusiveAccess(piVar3);
      bVar1 = (bool)hasExclusiveAccess(piVar3);
    } while (!bVar1);
    *piVar3 = *piVar3 + 1;
    DataMemoryBarrier(0x1f);
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_24);
  param_1[0xc] = param_3;
  *param_1 = &PTR_FUN_00564784_1_00928798;
  FUN_007c64e8(param_1 + 0xd,param_4);
  return param_1;
}

// ---- FUN_005648b0  @ 0x5648b0
void FUN_005648b0(int param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined1 auStack_38 [16];
  undefined1 auStack_28 [16];
  
  FUN_00547b10(auStack_38,&DAT_00961324,&DAT_00960e24,"TurnBasedMultiplayer",
               "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer;");
  uVar3 = *(undefined4 *)(param_1 + 0x30);
  uVar1 = FUN_00548bac(*(int *)(param_1 + 0x28) + 0xf4);
  FUN_0054942c(auStack_28,param_1 + 0x34,0);
  uVar2 = FUN_00548bac(auStack_28);
  FUN_00548d90(auStack_38,uVar3,
               "(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V",uVar1,
               uVar2);
  FUN_00548ab0(auStack_28);
  FUN_00548ab0(auStack_38);
  return;
}

// ---- FUN_00564940  @ 0x564940
undefined4 * FUN_00564940(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_00564940_1_009287f0;
  FUN_0052b0d8(param_1 + 0xc);
  FUN_00533468(param_1);
  return param_1;
}

// ---- FUN_00564960  @ 0x564960
void * FUN_00564960(void *param_1)

{
  FUN_00564940();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_00564974  @ 0x564974
undefined4 * FUN_00564974(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_00564974_1_00928848;
  FUN_00564940();
  return param_1;
}

// ---- FUN_0056498c  @ 0x56498c
void * FUN_0056498c(void *param_1)

{
  FUN_00564974();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_005649a0  @ 0x5649a0
undefined4 * FUN_005649a0(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_005649a0_1_009288a8;
  FUN_00564974();
  return param_1;
}

// ---- FUN_005649b8  @ 0x5649b8
void * FUN_005649b8(void *param_1)

{
  FUN_005649a0();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_00564aa2  @ 0x564aa2
function<void(std::function<void()>)> *
FUN_00564aa2(function<void(std::function<void()>)> *param_1,function *param_2)

{
  std::function<void(std::function<void()>)>::function(param_1,param_2);
  std::function<void(gpg::TurnBasedMultiplayerManager::MatchInboxUIResponse_const&)>::function
            ((function<void(gpg::TurnBasedMultiplayerManager::MatchInboxUIResponse_const&)> *)
             (param_1 + 0x10),param_2 + 0x10);
  return param_1;
}

// ---- FUN_00564ac8  @ 0x564ac8
undefined4 * FUN_00564ac8(undefined4 *param_1,undefined4 *param_2,undefined4 param_3)

{
  undefined4 uVar1;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_84 [4];
  undefined4 local_80;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_7c [4];
  undefined4 local_78;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_74 [4];
  undefined4 local_70;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_6c [4];
  undefined1 auStack_68 [32];
  undefined1 auStack_48 [36];
  
  uVar1 = *param_2;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_84,(__shared_count *)(param_2 + 1));
  FUN_00564aa2(auStack_68,param_3);
  local_80 = uVar1;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_7c,(__shared_count *)a_Stack_84);
  FUN_00564aa2(auStack_48,auStack_68);
  local_78 = local_80;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_74,(__shared_count *)a_Stack_7c);
  local_70 = local_78;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_6c,(__shared_count *)a_Stack_74);
  param_1[1] = 0;
  param_1[2] = 0;
  *param_1 = &PTR_FUN_005107b4_1_00924458;
  param_1[3] = local_70;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(param_1 + 4),
             (__shared_count *)a_Stack_6c);
  param_1[8] = 0;
  param_1[6] = 0;
  param_1[7] = 0;
  param_1[8] = 0;
  param_1[9] = 0;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_6c);
  *param_1 = &PTR_FUN_00533468_1_00925100;
  param_1[10] = local_78;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(param_1 + 0xb),
             (__shared_count *)a_Stack_74);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_74);
  *param_1 = &PTR_FUN_00564940_1_009287f0;
  FUN_00564aa2(param_1 + 0xc,auStack_48);
  FUN_0052b0d8(auStack_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_7c);
  *param_1 = &PTR_FUN_00564974_1_00928848;
  *(undefined1 *)(param_1 + 0x14) = 1;
  FUN_0052b0d8(auStack_68);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_84);
  *param_1 = &PTR_FUN_005649a0_1_009288a8;
  return param_1;
}

// ---- FUN_00564c0c  @ 0x564c0c
void FUN_00564c0c(int *param_1)

{
  undefined1 auStack_1c [8];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_14 [8];
  
  (**(code **)(*param_1 + 0x4c))(auStack_1c,param_1);
  FUN_0052c688(param_1 + 0xc,auStack_1c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_14);
  return;
}

// ---- FUN_00564c40  @ 0x564c40
void FUN_00564c40(int *param_1,undefined4 param_2,undefined4 param_3,int param_4)

{
  undefined4 uVar1;
  undefined4 uVar2;
  int *piVar3;
  int iVar4;
  _Any_data a_Stack_80 [8];
  undefined4 local_78;
  undefined4 local_74;
  _Function_base a_Stack_70 [8];
  undefined4 local_68;
  _Function_base a_Stack_60 [8];
  undefined4 local_58;
  undefined4 local_54;
  _Any_data a_Stack_50 [8];
  undefined4 local_48;
  undefined4 local_44;
  undefined4 local_40;
  TurnBasedMatch aTStack_3c [4];
  undefined4 local_38;
  undefined4 local_34;
  _Any_data a_Stack_30 [8];
  undefined4 local_28;
  undefined4 local_24;
  
  piVar3 = param_1 + 0xc;
  if (param_4 == 0) {
    if ((char)param_1[0x14] == '\0') {
      local_40 = 1;
      gpg::TurnBasedMatch::TurnBasedMatch(aTStack_3c);
      FUN_0052c688(piVar3,(_Any_data *)&local_40);
    }
    else {
      local_40 = 0xfffffffa;
      gpg::TurnBasedMatch::TurnBasedMatch(aTStack_3c);
      FUN_0052c688(piVar3,(_Any_data *)&local_40);
    }
  }
  else if (param_4 == 0x2711) {
    FUN_005166ae(1,"UI returned RECONNECT_REQUIRED: handling.");
    FUN_00536858(param_1[10]);
    iVar4 = param_1[10];
    local_68 = 0;
    local_78 = 0;
    local_38 = 0;
    local_28 = 0;
    std::swap<std::_Any_data>(a_Stack_80,a_Stack_30);
    uVar2 = local_24;
    uVar1 = local_28;
    local_58 = 0;
    local_28 = local_78;
    local_78 = uVar1;
    local_24 = local_74;
    local_74 = uVar2;
    std::swap<std::_Any_data>((_Any_data *)&local_40,(_Any_data *)a_Stack_60);
    uVar2 = local_54;
    uVar1 = local_58;
    local_48 = 0;
    local_58 = local_38;
    local_38 = uVar1;
    local_54 = local_34;
    local_34 = uVar2;
    std::swap<std::_Any_data>(a_Stack_30,a_Stack_50);
    uVar2 = local_44;
    uVar1 = local_48;
    local_48 = local_28;
    local_28 = uVar1;
    local_44 = local_24;
    local_24 = uVar2;
    std::_Function_base::~_Function_base((_Function_base *)a_Stack_30);
    std::_Function_base::~_Function_base((_Function_base *)&local_40);
    std::_Function_base::~_Function_base((_Function_base *)a_Stack_80);
    std::_Function_base::~_Function_base(a_Stack_70);
    FUN_005124a2(iVar4,a_Stack_60);
    std::_Function_base::~_Function_base((_Function_base *)a_Stack_50);
    std::_Function_base::~_Function_base(a_Stack_60);
    local_40 = 0xfffffffd;
    gpg::TurnBasedMatch::TurnBasedMatch(aTStack_3c);
    FUN_0052c688(piVar3,(_Any_data *)&local_40);
  }
  else if (param_4 == 0x2715) {
    local_40 = 0xffffffee;
    gpg::TurnBasedMatch::TurnBasedMatch(aTStack_3c);
    FUN_0052c688(piVar3,(_Any_data *)&local_40);
  }
  else {
    iVar4 = FUN_00548c48(param_2);
    if (iVar4 == 0) {
      (**(code **)(*param_1 + 0x50))((_Any_data *)&local_40,param_1,param_2);
      FUN_0052c688(piVar3,(_Any_data *)&local_40);
    }
    else {
      local_40 = 0xfffffffe;
      gpg::TurnBasedMatch::TurnBasedMatch(aTStack_3c);
      FUN_0052c688(piVar3,(_Any_data *)&local_40);
    }
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_38);
  return;
}

// ---- FUN_00564dc8  @ 0x564dc8
void FUN_00564dc8(int param_1)

{
  bool bVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  int iVar4;
  int iVar5;
  int *piVar6;
  int *extraout_r2;
  int extraout_r3;
  undefined4 *unaff_r5;
  undefined4 *unaff_r9;
  int local_58;
  undefined4 local_54;
  int local_50;
  undefined4 local_4c;
  undefined4 local_48;
  undefined1 auStack_40 [16];
  undefined4 *local_30;
  undefined4 local_2c;
  code *local_28;
  undefined4 local_24;
  
  FUN_00547b10((_Function_base *)&local_30,&DAT_00961324,&DAT_00960e24,"TurnBasedMultiplayer",
               "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer;");
  uVar3 = FUN_00548bac(*(int *)(param_1 + 0x28) + 0xf4);
  FUN_0054968c(auStack_40,(_Function_base *)&local_30,&DAT_009630a4,"getInboxIntent",
               "(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/Intent;",uVar3
              );
  FUN_00548ab0((_Function_base *)&local_30);
  local_50 = *(int *)(param_1 + 8);
  uVar3 = *(undefined4 *)(param_1 + 0x28);
  if (local_50 == 0) {
    iVar5 = std::__throw_bad_weak_ptr();
  }
  else {
    piVar6 = (int *)(local_50 + 4);
    local_58 = *(int *)(local_50 + 4);
    do {
      iVar5 = local_58;
      if (local_58 == 0) {
        std::__throw_bad_weak_ptr();
        piVar6 = extraout_r2;
        iVar5 = extraout_r3;
      }
      DataMemoryBarrier(0x1f);
      ExclusiveAccess(piVar6);
      iVar4 = *piVar6;
      bVar1 = false;
      if (iVar4 == local_58) {
        bVar1 = (bool)hasExclusiveAccess(piVar6);
        if (bVar1) {
          *piVar6 = iVar5 + 1;
        }
        DataMemoryBarrier(0x1f);
      }
      local_58 = iVar4;
    } while (!bVar1);
    local_54 = *(undefined4 *)(param_1 + 4);
    unaff_r9 = &local_54;
    local_30 = (undefined4 *)local_54;
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_2c,(__shared_count *)&local_50);
    local_48 = local_2c;
    local_4c = local_30;
    local_30 = (undefined4 *)0x0;
    local_2c = 0;
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_2c);
    local_28 = (code *)0x0;
    unaff_r5 = &local_4c;
    local_30 = operator_new(8);
    uVar2 = local_48;
    *local_30 = local_4c;
    local_30[1] = 0;
    local_48 = 0;
    local_30[1] = uVar2;
    local_24 = 0x5650a9;
    local_4c = (undefined4 *)0x0;
    local_28 = (code *)0x564a5d;
    iVar5 = FUN_0053eea8(uVar3,auStack_40,(_Function_base *)&local_30);
  }
  std::_Function_base::~_Function_base((_Function_base *)&local_30);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(unaff_r5 + 1));
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(unaff_r9 + 1));
  if (iVar5 == 0) {
    local_4c = (undefined4 *)0xfffffff4;
    gpg::TurnBasedMatch::TurnBasedMatch((TurnBasedMatch *)(unaff_r5 + 1));
    FUN_0052c688(param_1 + 0x30,unaff_r5);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(unaff_r5 + 2));
  }
  FUN_00548ab0(auStack_40);
  return;
}

// ---- FUN_00564f58  @ 0x564f58
undefined4 * FUN_00564f58(undefined4 *param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 uVar1;
  int iVar2;
  undefined4 local_64;
  undefined4 local_60;
  undefined4 local_5c;
  undefined4 local_58;
  TurnBasedMatch aTStack_54 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_50 [4];
  undefined4 local_4c;
  TurnBasedMatch aTStack_48 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_44 [4];
  undefined1 auStack_40 [16];
  undefined1 auStack_30 [16];
  
  memset(&local_4c,0,0xc);
  local_4c = 1;
  gpg::TurnBasedMatch::TurnBasedMatch(aTStack_48);
  FUN_00547b10(auStack_40,&DAT_00961a24,&DAT_009628a4,"EXTRA_TURN_BASED_MATCH","Ljava/lang/String;")
  ;
  uVar1 = FUN_00548bac(auStack_40);
  iVar2 = FUN_00548c54(param_3,"hasExtra","(Ljava/lang/String;)Z",uVar1);
  if (iVar2 == 0) {
    local_4c = 0xfffffffe;
  }
  else {
    uVar1 = FUN_00548bac(auStack_40);
    FUN_0054968c(auStack_30,param_3,&DAT_009620a4,"getParcelableExtra",
                 "(Ljava/lang/String;)Landroid/os/Parcelable;",uVar1);
    FUN_00566298(&local_64,auStack_30);
    local_5c = local_64;
    local_58 = local_60;
    local_60 = 0;
    local_64 = 0;
    gpg::TurnBasedMatch::TurnBasedMatch(aTStack_54,&local_5c);
    gpg::TurnBasedMatch::operator=(aTStack_48,aTStack_54);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_50);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_58);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_60);
    FUN_00548ab0(auStack_30);
  }
  *param_1 = local_4c;
  gpg::TurnBasedMatch::TurnBasedMatch((TurnBasedMatch *)(param_1 + 1),aTStack_48);
  FUN_00548ab0(auStack_40);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_44);
  return param_1;
}

// ---- FUN_005650a8  @ 0x5650a8
void FUN_005650a8(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  undefined1 auStack_38 [16];
  undefined1 auStack_28 [16];
  
  param_1 = (undefined4 *)*param_1;
  FUN_00548b30(auStack_38);
  uVar1 = *param_1;
  FUN_00548b30(auStack_28,auStack_38);
  FUN_00564c40(uVar1,auStack_28,param_3,param_4);
  FUN_00548ab0(auStack_28);
  FUN_00548ab0(auStack_38);
  return;
}

// ---- FUN_0056513c  @ 0x56513c
undefined4 * FUN_0056513c(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0056513c_1_00928908;
  FUN_007c5914(param_1 + 0x1a);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(param_1 + 0x19));
  if ((void *)param_1[0x15] != (void *)0x0) {
    operator_delete((void *)param_1[0x15]);
  }
  FUN_007c5914(param_1 + 0x14);
  FUN_0056241c(param_1);
  return param_1;
}

// ---- FUN_00565174  @ 0x565174
void * FUN_00565174(void *param_1)

{
  FUN_0056513c();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_005651cc  @ 0x5651cc
undefined4 *
FUN_005651cc(undefined4 *param_1,undefined4 *param_2,undefined4 param_3,undefined4 *param_4,
            undefined4 *param_5,ParticipantResults *param_6,undefined4 *param_7)

{
  undefined4 uVar1;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_7c [4];
  undefined4 local_78;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_74 [4];
  undefined4 local_70;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_6c [4];
  undefined1 auStack_68 [32];
  undefined1 auStack_48 [36];
  
  uVar1 = *param_2;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_7c,(__shared_count *)(param_2 + 1));
  FUN_0052b37a(auStack_68,param_3);
  local_78 = uVar1;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_74,(__shared_count *)a_Stack_7c);
  FUN_0052b37a(auStack_48,auStack_68);
  local_70 = local_78;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_6c,(__shared_count *)a_Stack_74);
  FUN_00533528(param_1,&local_70);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_6c);
  *param_1 = &PTR_FUN_005623e8_1_009284a8;
  FUN_0052b37a(param_1 + 0xc,auStack_48);
  FUN_0052af58(auStack_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_74);
  *param_1 = &PTR_FUN_0056241c_1_00928500;
  FUN_0052af58(auStack_68);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_7c);
  *param_1 = &PTR_FUN_0056513c_1_00928908;
  param_1[0x14] = *param_4;
  *param_4 = &DAT_00972528;
  param_1[0x16] = 0;
  param_1[0x17] = 0;
  param_1[0x15] = 0;
  param_1[0x15] = *param_5;
  *param_5 = 0;
  uVar1 = param_1[0x16];
  param_1[0x16] = param_5[1];
  param_5[1] = uVar1;
  uVar1 = param_1[0x17];
  param_1[0x17] = param_5[2];
  param_5[2] = uVar1;
  gpg::ParticipantResults::ParticipantResults((ParticipantResults *)(param_1 + 0x18),param_6);
  param_1[0x1a] = *param_7;
  *param_7 = &DAT_00972528;
  return param_1;
}

// ---- FUN_00565310  @ 0x565310
undefined4
FUN_00565310(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 *param_4)

{
  undefined4 uVar1;
  void *pvVar2;
  void *local_64;
  undefined4 local_60;
  undefined4 local_5c;
  undefined1 auStack_58 [16];
  undefined4 *local_48 [2];
  code *local_40;
  undefined1 *local_3c;
  _Function_base a_Stack_38 [20];
  
  FUN_00545074(auStack_58);
  local_60 = *param_4;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_5c,(__shared_count *)(param_4 + 1)
            );
  local_40 = (code *)0x0;
  local_48[0] = operator_new(8);
  uVar1 = local_5c;
  *local_48[0] = local_60;
  local_48[0][1] = 0;
  local_60 = 0;
  local_5c = 0;
  local_48[0][1] = uVar1;
  local_3c = &LAB_00565868_1;
  local_40 = (code *)0x565187;
  FUN_00533700(a_Stack_38,(_Function_base *)local_48);
  pvVar2 = operator_new(0x14);
  FUN_0053372c(pvVar2,a_Stack_38);
  local_64 = pvVar2;
  FUN_005453a8(auStack_58,param_2,param_3,&local_64);
  if (local_64 != (void *)0x0) {
    FUN_0054bfb8();
  }
  std::_Function_base::~_Function_base(a_Stack_38);
  std::_Function_base::~_Function_base((_Function_base *)local_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_5c);
  FUN_00548b30(param_1,auStack_58);
  FUN_00548ab0(auStack_58);
  return param_1;
}

// ---- FUN_005653f0  @ 0x5653f0
undefined4 FUN_005653f0(undefined4 param_1,int param_2)

{
  bool bVar1;
  int extraout_r1;
  int *piVar2;
  int *extraout_r2;
  int extraout_r3;
  int iVar3;
  int *unaff_r4;
  int iVar4;
  int local_34;
  int local_30;
  undefined4 local_2c;
  int local_28;
  undefined4 local_24;
  
  local_34 = *(int *)(param_2 + 8);
  if (local_34 == 0) goto LAB_0056540c;
  piVar2 = (int *)(local_34 + 4);
  unaff_r4 = &local_28;
  local_28 = *(int *)(local_34 + 4);
  while( true ) {
    iVar3 = local_28;
    if (local_28 == 0) {
LAB_0056540c:
      std::__throw_bad_weak_ptr();
      param_2 = extraout_r1;
      piVar2 = extraout_r2;
      iVar3 = extraout_r3;
    }
    DataMemoryBarrier(0x1f);
    ExclusiveAccess(piVar2);
    iVar4 = *piVar2;
    bVar1 = false;
    if (iVar4 == *unaff_r4) {
      bVar1 = (bool)hasExclusiveAccess(piVar2);
      if (bVar1) {
        *piVar2 = iVar3 + 1;
      }
      DataMemoryBarrier(0x1f);
    }
    if (bVar1) break;
    *unaff_r4 = iVar4;
  }
  iVar3 = *(int *)(param_2 + 4);
  local_28 = iVar3;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(unaff_r4 + 1),
             (__shared_count *)&local_34);
  local_2c = local_24;
  local_30 = local_28;
  local_28 = 0;
  local_24 = 0;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(unaff_r4 + 1));
  FUN_00565310(unaff_r4,0,0x5463d1,&local_30,iVar3);
  FUN_00548b30(param_1,unaff_r4);
  FUN_00548ab0(unaff_r4);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_2c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_34);
  return param_1;
}

// ---- FUN_005654a8  @ 0x5654a8
void FUN_005654a8(int param_1)

{
  bool bVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  int iVar6;
  int iVar7;
  undefined4 local_d0;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_bc [4];
  undefined1 auStack_b8 [16];
  undefined1 auStack_a8 [16];
  undefined1 auStack_98 [16];
  undefined1 auStack_88 [16];
  undefined1 auStack_78 [16];
  undefined1 auStack_68 [16];
  undefined1 auStack_58 [16];
  undefined1 auStack_48 [16];
  undefined1 auStack_38 [20];
  
  uVar2 = FUN_00549a1c();
  FUN_00549584(auStack_b8,param_1 + 0x54,uVar2);
  FUN_00548040(auStack_a8,&DAT_00961824);
  iVar6 = *(int *)(param_1 + 0x60);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_bc,(__shared_count *)(param_1 + 100));
  for (iVar7 = *(int *)(iVar6 + 0xc); iVar7 != iVar6 + 4; iVar7 = FUN_007997a0(iVar7)) {
    FUN_0054942c(auStack_98,iVar7 + 0x10,uVar2);
    uVar3 = FUN_00548bac(auStack_98);
    uVar4 = FUN_00565900(*(undefined4 *)(iVar7 + 0x18));
    FUN_00547b78(auStack_88,&DAT_00961524,"(Ljava/lang/String;II)V",uVar3,uVar4,
                 *(undefined4 *)(iVar7 + 0x14));
    uVar3 = FUN_00548bac(auStack_88);
    FUN_00548c54(auStack_a8,&DAT_00809538,"(Ljava/lang/Object;)Z",uVar3);
    FUN_00548ab0(auStack_88);
    FUN_00548ab0(auStack_98);
  }
  FUN_00547b10(auStack_78,&DAT_00961324,&DAT_00960e24,"TurnBasedMultiplayer",
               "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer;");
  uVar3 = FUN_00548bac(*(int *)(param_1 + 0x28) + 0xf4);
  FUN_0054942c(auStack_68,param_1 + 0x50,uVar2);
  uVar4 = FUN_00548bac(auStack_68);
  uVar5 = FUN_00548bac(auStack_b8);
  bVar1 = *(int *)(*(int *)(param_1 + 0x68) + -0xc) == 0;
  if (bVar1) {
    local_d0 = 0;
  }
  else {
    FUN_0054942c(auStack_58,param_1 + 0x68,uVar2);
    local_d0 = FUN_00548bac(auStack_58);
  }
  uVar2 = FUN_00548bac(auStack_a8);
  FUN_0054968c(auStack_48,auStack_78,&DAT_00963024,"takeTurn",
               "(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;[BLjava/lang/String;Ljava/util/List;)Lcom/google/android/gms/common/api/PendingResult;"
               ,uVar3,uVar4,uVar5,local_d0,uVar2);
  FUN_005653f0(auStack_38,param_1);
  uVar2 = FUN_00548bac(auStack_38);
  FUN_00548d90(auStack_48,"setResultCallback",
               "(Lcom/google/android/gms/common/api/ResultCallback;)V",uVar2);
  FUN_00548ab0(auStack_38);
  FUN_00548ab0(auStack_48);
  if (!bVar1) {
    FUN_00548ab0(auStack_58);
  }
  FUN_00548ab0(auStack_68);
  FUN_00548ab0(auStack_78);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_bc);
  FUN_00548ab0(auStack_a8);
  FUN_00548ab0(auStack_b8);
  return;
}

// ---- FUN_005656f4  @ 0x5656f4
undefined4 * FUN_005656f4(undefined4 *param_1,int param_2,undefined4 param_3)

{
  int iVar1;
  undefined4 uVar2;
  undefined4 local_50;
  undefined4 local_4c;
  undefined4 local_48;
  undefined4 local_44;
  undefined1 auStack_40 [16];
  undefined4 local_30;
  TurnBasedMatch aTStack_2c [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_28 [12];
  
  iVar1 = FUN_00543484(param_3);
  if (iVar1 == -3) {
    FUN_00511920(*(undefined4 *)(param_2 + 0x28));
  }
  else if (iVar1 == -2) {
    FUN_0054968c(&local_30,param_3,&DAT_009619a4,"getStatus",
                 "()Lcom/google/android/gms/common/api/Status;");
    uVar2 = FUN_00548d1c(&local_30,"getStatusCode");
    FUN_00548ab0(&local_30);
    FUN_005166ae(1,"Encountered GmsCore error with status code: %d",uVar2);
  }
  uVar2 = FUN_00529e14(iVar1);
  iVar1 = gpg::IsError();
  if (iVar1 == 0) {
    FUN_0054932c(&local_30,param_3,&DAT_00963124);
    FUN_0054968c(auStack_40,&local_30,&DAT_009620a4,"getMatch",
                 "()Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;");
    FUN_00548ab0(&local_30);
    local_30 = 1;
    FUN_00566298(&local_50,auStack_40);
    local_48 = local_50;
    local_44 = local_4c;
    local_4c = 0;
    local_50 = 0;
    gpg::TurnBasedMatch::TurnBasedMatch(aTStack_2c,&local_48);
    *param_1 = local_30;
    gpg::TurnBasedMatch::TurnBasedMatch((TurnBasedMatch *)(param_1 + 1),aTStack_2c);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_28);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_44);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_4c);
    FUN_00548ab0(auStack_40);
  }
  else {
    local_30 = uVar2;
    gpg::TurnBasedMatch::TurnBasedMatch(aTStack_2c);
    *param_1 = local_30;
    gpg::TurnBasedMatch::TurnBasedMatch((TurnBasedMatch *)(param_1 + 1),aTStack_2c);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_28);
  }
  return param_1;
}

// ---- FUN_005658c0  @ 0x5658c0
undefined4 * FUN_005658c0(undefined4 *param_1)

{
  *param_1 = &PTR___Sp_counted_base_1_009242b8;
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_005658f0  @ 0x5658f0
void FUN_005658f0(void *param_1)

{
  if (param_1 != (void *)0x0) {
    operator_delete(param_1);
    return;
  }
  return;
}

// ---- FUN_005658f8  @ 0x5658f8
void FUN_005658f8(void *param_1)

{
  if (param_1 != (void *)0x0) {
    operator_delete(param_1);
    return;
  }
  return;
}

// ---- FUN_00565900  @ 0x565900
undefined4 FUN_00565900(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  switch(param_1) {
  case 1:
    return 5;
  case 2:
    return 4;
  case 3:
    return 1;
  case 4:
    break;
  case 5:
    return 2;
  case 6:
    return 0;
  default:
    FUN_005166ae(4,"Unrecognized match result: %d",param_1,param_1 + -1,param_4);
  }
  return 3;
}

// ---- FUN_0056593c  @ 0x56593c
undefined4 FUN_0056593c(int param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  if (param_2 == 0) {
    return 1;
  }
  if (param_2 == 2) {
    return 2;
  }
  if (param_2 == 1) {
    if (param_1 == 1) {
      return 3;
    }
    if (param_1 == 2) {
      return 4;
    }
  }
  else if (param_2 == 3) {
    if (param_1 == 2) {
      return 5;
    }
    if (param_1 == 4) {
      return 6;
    }
    if (param_1 == 3) {
      return 7;
    }
  }
  FUN_005166ae(4,"Unexpected match status and turn status combination.",param_3,param_4,param_4);
  return 6;
}

// ---- FUN_00565990  @ 0x565990
undefined4 * FUN_00565990(undefined4 *param_1,undefined4 param_2)

{
  void *pvVar1;
  undefined4 *puVar2;
  undefined4 uVar3;
  void *__s;
  undefined4 local_14;
  
  *param_1 = 0;
  param_1[1] = 0;
  local_14 = param_2;
  pvVar1 = operator_new(0x18);
  *param_1 = pvVar1;
  if (pvVar1 != (void *)0x0) {
    __s = (void *)((int)pvVar1 + 4);
    memset(__s,0,0x10);
    *(void **)((int)pvVar1 + 0xc) = __s;
    *(undefined4 *)((int)pvVar1 + 0x14) = 0;
    *(void **)((int)pvVar1 + 0x10) = __s;
  }
  uVar3 = *param_1;
  local_14 = 0;
  puVar2 = operator_new(0x14);
  if (puVar2 != (undefined4 *)0x0) {
    puVar2[1] = 1;
    puVar2[2] = 1;
    puVar2[3] = uVar3;
    *puVar2 = &PTR_LAB_005191b4_1_00924910;
  }
  local_14 = param_1[1];
  param_1[1] = puVar2;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_14);
  return param_1;
}

// ---- FUN_00565a1c  @ 0x565a1c
undefined4 *
FUN_00565a1c(undefined4 *param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4,
            MultiplayerParticipant *param_5,MultiplayerParticipant *param_6,undefined4 param_7,
            undefined4 param_8,MultiplayerParticipant *param_9,MultiplayerParticipant *param_10,
            undefined4 param_11,undefined4 *param_12,ParticipantResults *param_13,
            undefined4 *param_14,_Vector_base *param_15,_Vector_base *param_16,undefined4 param_17,
            undefined4 param_18,undefined4 param_19,undefined4 param_20,undefined4 param_21,
            undefined4 param_22,undefined4 param_23,undefined4 param_24,undefined1 param_25)

{
  undefined4 uVar1;
  
  *param_1 = *param_2;
  *param_2 = &DAT_00972528;
  param_1[2] = param_3;
  param_1[3] = param_4;
  gpg::MultiplayerParticipant::MultiplayerParticipant
            ((MultiplayerParticipant *)(param_1 + 4),param_5);
  gpg::MultiplayerParticipant::MultiplayerParticipant
            ((MultiplayerParticipant *)(param_1 + 6),param_6);
  param_1[8] = param_7;
  param_1[9] = param_8;
  gpg::MultiplayerParticipant::MultiplayerParticipant
            ((MultiplayerParticipant *)(param_1 + 10),param_9);
  gpg::MultiplayerParticipant::MultiplayerParticipant
            ((MultiplayerParticipant *)(param_1 + 0xc),param_10);
  param_1[0xe] = param_11;
  param_1[0xf] = *param_12;
  *param_12 = &DAT_00972528;
  gpg::ParticipantResults::ParticipantResults((ParticipantResults *)(param_1 + 0x10),param_13);
  param_1[0x13] = 0;
  param_1[0x14] = 0;
  param_1[0x12] = 0;
  param_1[0x12] = *param_14;
  *param_14 = 0;
  uVar1 = param_1[0x13];
  param_1[0x13] = param_14[1];
  param_14[1] = uVar1;
  uVar1 = param_1[0x14];
  param_1[0x14] = param_14[2];
  param_14[2] = uVar1;
  std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::_Vector_base
            ((_Vector_base<unsigned_char,std::allocator<unsigned_char>> *)(param_1 + 0x15),param_15)
  ;
  std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::_Vector_base
            ((_Vector_base<unsigned_char,std::allocator<unsigned_char>> *)(param_1 + 0x18),param_16)
  ;
  param_1[0x1b] = param_17;
  param_1[0x1c] = param_18;
  param_1[0x1e] = param_19;
  param_1[0x1f] = param_20;
  param_1[0x20] = param_21;
  param_1[0x21] = param_22;
  param_1[0x22] = param_23;
  FUN_007c64e8(param_1 + 0x23,param_24);
  *(undefined1 *)(param_1 + 0x24) = param_25;
  return param_1;
}

// ---- FUN_00565b68  @ 0x565b68
void FUN_00565b68(int param_1)

{
  void *pvVar1;
  
  pvVar1 = *(void **)(param_1 + 0xc);
  FUN_007c5914((int)pvVar1 + 0x8c);
  std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::~_Vector_base
            ((_Vector_base<unsigned_char,std::allocator<unsigned_char>> *)((int)pvVar1 + 0x60));
  std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::~_Vector_base
            ((_Vector_base<unsigned_char,std::allocator<unsigned_char>> *)((int)pvVar1 + 0x54));
  std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>::~vector
            ((vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>> *)
             ((int)pvVar1 + 0x48));
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)((int)pvVar1 + 0x44));
  FUN_007c5914((int)pvVar1 + 0x3c);
  gpg::MultiplayerParticipant::~MultiplayerParticipant
            ((MultiplayerParticipant *)((int)pvVar1 + 0x30));
  gpg::MultiplayerParticipant::~MultiplayerParticipant
            ((MultiplayerParticipant *)((int)pvVar1 + 0x28));
  gpg::MultiplayerParticipant::~MultiplayerParticipant
            ((MultiplayerParticipant *)((int)pvVar1 + 0x18));
  gpg::MultiplayerParticipant::~MultiplayerParticipant
            ((MultiplayerParticipant *)((int)pvVar1 + 0x10));
  FUN_007c5914(pvVar1);
  operator_delete(pvVar1);
  return;
}

// ---- FUN_00565c9c  @ 0x565c9c
undefined4 *
FUN_00565c9c(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 *param_4,
            undefined4 *param_5,MultiplayerParticipant *param_6,MultiplayerParticipant *param_7,
            undefined4 *param_8,MultiplayerParticipant *param_9,MultiplayerParticipant *param_10,
            undefined4 *param_11,undefined4 *param_12,ParticipantResults *param_13,
            undefined4 *param_14,_Vector_base *param_15,_Vector_base *param_16,undefined4 *param_17,
            undefined4 *param_18,undefined4 *param_19,undefined4 *param_20,undefined4 *param_21,
            undefined4 *param_22,undefined4 *param_23,undefined1 *param_24)

{
  void *pvVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  undefined4 uVar8;
  undefined4 uVar9;
  undefined4 uVar10;
  undefined4 uVar11;
  undefined4 uVar12;
  undefined4 uVar13;
  undefined4 local_80;
  undefined4 local_7c;
  undefined4 local_78;
  ParticipantResults aPStack_74 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_70 [4];
  MultiplayerParticipant aMStack_6c [8];
  MultiplayerParticipant aMStack_64 [8];
  MultiplayerParticipant aMStack_5c [8];
  MultiplayerParticipant aMStack_54 [8];
  _Vector_base<unsigned_char,std::allocator<unsigned_char>> a_Stack_4c [12];
  _Vector_base<unsigned_char,std::allocator<unsigned_char>> a_Stack_40 [12];
  undefined4 local_34;
  undefined4 local_30;
  undefined4 local_2c;
  
  *param_1 = 0;
  param_1[1] = 0;
  pvVar1 = operator_new(0x98);
  *param_1 = pvVar1;
  local_78 = *param_4;
  *param_4 = &DAT_00972528;
  uVar2 = *param_5;
  uVar5 = param_5[1];
  gpg::MultiplayerParticipant::MultiplayerParticipant(aMStack_54,param_6);
  gpg::MultiplayerParticipant::MultiplayerParticipant(aMStack_5c,param_7);
  uVar3 = *param_8;
  uVar6 = param_8[1];
  gpg::MultiplayerParticipant::MultiplayerParticipant(aMStack_64,param_9);
  gpg::MultiplayerParticipant::MultiplayerParticipant(aMStack_6c,param_10);
  uVar9 = *param_11;
  local_7c = *param_12;
  *param_12 = &DAT_00972528;
  gpg::ParticipantResults::ParticipantResults(aPStack_74,param_13);
  local_30 = param_14[1];
  local_34 = *param_14;
  local_2c = param_14[2];
  *param_14 = 0;
  param_14[1] = 0;
  param_14[2] = 0;
  std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::_Vector_base(a_Stack_40,param_15);
  std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::_Vector_base(a_Stack_4c,param_16);
  uVar7 = *param_17;
  uVar10 = *param_18;
  uVar8 = *param_19;
  uVar11 = param_19[1];
  uVar4 = *param_20;
  uVar13 = *param_21;
  uVar12 = *param_22;
  local_80 = *param_23;
  *param_23 = &DAT_00972528;
  if (pvVar1 != (void *)0x0) {
    FUN_00565a1c(pvVar1,&local_78,uVar2,uVar5,aMStack_54,aMStack_5c,uVar3,uVar6,aMStack_64,
                 aMStack_6c,uVar9,&local_7c,aPStack_74,
                 (vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>> *)
                 &local_34,a_Stack_40,a_Stack_4c,uVar7,uVar10,uVar8,uVar11,uVar4,uVar13,uVar12,
                 &local_80,*param_24);
  }
  FUN_007c5914(&local_80);
  std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::~_Vector_base(a_Stack_4c);
  std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::~_Vector_base(a_Stack_40);
  std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>::~vector
            ((vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>> *)
             &local_34);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_70);
  FUN_007c5914(&local_7c);
  gpg::MultiplayerParticipant::~MultiplayerParticipant(aMStack_6c);
  gpg::MultiplayerParticipant::~MultiplayerParticipant(aMStack_64);
  gpg::MultiplayerParticipant::~MultiplayerParticipant(aMStack_5c);
  gpg::MultiplayerParticipant::~MultiplayerParticipant(aMStack_54);
  FUN_007c5914(&local_78);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::
  __shared_count<gpg::TurnBasedMatchImpl*,std::__shared_ptr<gpg::TurnBasedMatchImpl,(__gnu_cxx::_Lock_policy)2>::_Deleter<std::allocator<gpg::TurnBasedMatchImpl>>,std::allocator<gpg::TurnBasedMatchImpl>>
            ((vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>> *)
             &local_34,*param_1,a_Stack_4c,a_Stack_40);
  uVar2 = param_1[1];
  param_1[1] = local_34;
  local_34 = uVar2;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_34);
  return param_1;
}

// ---- FUN_00565ee8  @ 0x565ee8
undefined4 *
FUN_00565ee8(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 *param_4,
            undefined4 *param_5,MultiplayerParticipant *param_6,MultiplayerParticipant *param_7,
            undefined4 *param_8,MultiplayerParticipant *param_9,MultiplayerParticipant *param_10,
            undefined4 *param_11,undefined4 *param_12,ParticipantResults *param_13,
            undefined4 *param_14,_Vector_base *param_15,_Vector_base *param_16,undefined4 *param_17,
            undefined4 *param_18,int *param_19,undefined4 *param_20,undefined4 *param_21,
            undefined4 *param_22,undefined4 param_23,undefined1 *param_24)

{
  void *pvVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  undefined4 uVar8;
  int iVar9;
  undefined4 uVar10;
  undefined4 uVar11;
  undefined4 uVar12;
  undefined1 auStack_84 [4];
  undefined1 auStack_80 [4];
  undefined4 local_7c;
  undefined4 local_78;
  ParticipantResults aPStack_74 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_70 [4];
  MultiplayerParticipant aMStack_6c [8];
  MultiplayerParticipant aMStack_64 [8];
  MultiplayerParticipant aMStack_5c [8];
  MultiplayerParticipant aMStack_54 [8];
  _Vector_base<unsigned_char,std::allocator<unsigned_char>> a_Stack_4c [12];
  _Vector_base<unsigned_char,std::allocator<unsigned_char>> a_Stack_40 [12];
  undefined4 local_34;
  undefined4 local_30;
  undefined4 local_2c;
  
  *param_1 = 0;
  param_1[1] = 0;
  pvVar1 = operator_new(0x98);
  *param_1 = pvVar1;
  local_78 = *param_4;
  *param_4 = &DAT_00972528;
  uVar2 = *param_5;
  uVar4 = param_5[1];
  gpg::MultiplayerParticipant::MultiplayerParticipant(aMStack_54,param_6);
  gpg::MultiplayerParticipant::MultiplayerParticipant(aMStack_5c,param_7);
  uVar3 = *param_8;
  uVar5 = param_8[1];
  gpg::MultiplayerParticipant::MultiplayerParticipant(aMStack_64,param_9);
  gpg::MultiplayerParticipant::MultiplayerParticipant(aMStack_6c,param_10);
  uVar6 = *param_11;
  local_7c = *param_12;
  *param_12 = &DAT_00972528;
  gpg::ParticipantResults::ParticipantResults(aPStack_74,param_13);
  local_30 = param_14[1];
  local_34 = *param_14;
  local_2c = param_14[2];
  *param_14 = 0;
  param_14[1] = 0;
  param_14[2] = 0;
  std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::_Vector_base(a_Stack_40,param_15);
  std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::_Vector_base(a_Stack_4c,param_16);
  uVar7 = *param_17;
  uVar8 = *param_18;
  iVar9 = *param_19;
  uVar10 = *param_20;
  uVar11 = *param_21;
  uVar12 = *param_22;
  FUN_007c6a60(auStack_80,param_23,auStack_84);
  if (pvVar1 != (void *)0x0) {
    FUN_00565a1c(pvVar1,&local_78,uVar2,uVar4,aMStack_54,aMStack_5c,uVar3,uVar5,aMStack_64,
                 aMStack_6c,uVar6,&local_7c,aPStack_74,
                 (vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>> *)
                 &local_34,a_Stack_40,a_Stack_4c,uVar7,uVar8,iVar9,iVar9 >> 0x1f,uVar10,uVar11,
                 uVar12,auStack_80,*param_24);
  }
  FUN_007c5914(auStack_80);
  std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::~_Vector_base(a_Stack_4c);
  std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::~_Vector_base(a_Stack_40);
  std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>::~vector
            ((vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>> *)
             &local_34);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_70);
  FUN_007c5914(&local_7c);
  gpg::MultiplayerParticipant::~MultiplayerParticipant(aMStack_6c);
  gpg::MultiplayerParticipant::~MultiplayerParticipant(aMStack_64);
  gpg::MultiplayerParticipant::~MultiplayerParticipant(aMStack_5c);
  gpg::MultiplayerParticipant::~MultiplayerParticipant(aMStack_54);
  FUN_007c5914(&local_78);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::
  __shared_count<gpg::TurnBasedMatchImpl*,std::__shared_ptr<gpg::TurnBasedMatchImpl,(__gnu_cxx::_Lock_policy)2>::_Deleter<std::allocator<gpg::TurnBasedMatchImpl>>,std::allocator<gpg::TurnBasedMatchImpl>>
            ((vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>> *)
             &local_34,*param_1,a_Stack_4c,a_Stack_40);
  uVar2 = param_1[1];
  param_1[1] = local_34;
  local_34 = uVar2;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_34);
  return param_1;
}

// ---- FUN_00566298  @ 0x566298
undefined4 * FUN_00566298(undefined4 *param_1,undefined4 param_2)

{
  uint uVar1;
  MultiplayerParticipant *pMVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  int iVar6;
  MultiplayerParticipant *this;
  uint uVar7;
  undefined1 auStack_12c [3];
  undefined1 local_129;
  undefined1 auStack_128 [4];
  undefined1 auStack_124 [4];
  undefined1 auStack_120 [4];
  undefined4 local_11c;
  undefined4 local_118;
  undefined4 local_114;
  undefined4 local_110;
  undefined4 local_10c;
  undefined4 local_108 [2];
  ParticipantResults aPStack_100 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_fc [4];
  undefined4 local_f8;
  undefined4 local_f4;
  undefined8 local_f0;
  MultiplayerParticipant aMStack_e4 [8];
  MultiplayerParticipant aMStack_dc [8];
  MultiplayerParticipant aMStack_d4 [8];
  MultiplayerParticipant aMStack_cc [8];
  undefined4 local_c4;
  undefined4 local_c0;
  MultiplayerParticipant *local_bc;
  MultiplayerParticipant *local_b8;
  MultiplayerParticipant *local_b4;
  _Vector_base<unsigned_char,std::allocator<unsigned_char>> a_Stack_b0 [12];
  _Vector_base<unsigned_char,std::allocator<unsigned_char>> a_Stack_a4 [12];
  undefined1 auStack_98 [16];
  undefined8 local_88 [2];
  undefined8 local_78 [2];
  undefined1 auStack_68 [16];
  undefined1 auStack_58 [16];
  undefined1 auStack_48 [16];
  undefined4 local_38;
  undefined4 local_34 [4];
  
  FUN_0054968c(auStack_98,param_2,&DAT_00961824,"getParticipantIds","()Ljava/util/ArrayList;");
  uVar1 = FUN_00548d1c(auStack_98,&DAT_00806800);
  local_bc = (MultiplayerParticipant *)0x0;
  local_b8 = (MultiplayerParticipant *)0x0;
  local_b4 = (MultiplayerParticipant *)0x0;
  if (0x1fffffff < uVar1) {
                    /* WARNING: Subroutine does not return */
    FUN_007c49e8("vector::reserve");
  }
  if (uVar1 != 0) {
    pMVar2 = operator_new(uVar1 * 8);
    std::__uninitialized_copy<false>::
    __uninit_copy<gpg::MultiplayerParticipant*,gpg::MultiplayerParticipant*>
              ((MultiplayerParticipant *)0x0,(MultiplayerParticipant *)0x0,pMVar2);
    std::_Destroy_aux<false>::__destroy<gpg::MultiplayerParticipant*>(local_bc,local_b8);
    FUN_005658f0(local_bc);
    local_b4 = pMVar2 + uVar1 * 8;
    local_b8 = pMVar2;
  }
  local_bc = local_b8;
  for (uVar7 = 0; uVar7 != uVar1; uVar7 = uVar7 + 1) {
    FUN_0054968c(local_88,auStack_98,&DAT_009628a4,&DAT_0080598d,"(I)Ljava/lang/Object;",uVar7);
    uVar3 = FUN_00548bac(local_88);
    FUN_0054968c(local_78,param_2,&DAT_009617a4,"getParticipant",
                 "(Ljava/lang/String;)Lcom/google/android/gms/games/multiplayer/Participant;",uVar3)
    ;
    FUN_0054f45c(&local_110,local_78);
    local_38 = local_110;
    local_34[0] = local_10c;
    local_10c = 0;
    local_110 = 0;
    gpg::MultiplayerParticipant::MultiplayerParticipant
              ((MultiplayerParticipant *)local_108,&local_38);
    if (local_b8 == local_b4) {
      std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>::
      _M_emplace_back_aux<gpg::MultiplayerParticipant>
                ((vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>> *)
                 &local_bc,(MultiplayerParticipant *)local_108);
    }
    else {
      if (local_b8 != (MultiplayerParticipant *)0x0) {
        gpg::MultiplayerParticipant::MultiplayerParticipant
                  (local_b8,(MultiplayerParticipant *)local_108);
      }
      local_b8 = local_b8 + 8;
    }
    gpg::MultiplayerParticipant::~MultiplayerParticipant((MultiplayerParticipant *)local_108);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_34);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_10c);
    FUN_00548ab0(local_78);
    FUN_00548ab0(local_88);
  }
  FUN_00565990(&local_f8);
  local_38 = local_f8;
  local_34[0] = local_f4;
  local_f4 = 0;
  local_f8 = 0;
  gpg::ParticipantResults::ParticipantResults(aPStack_100,&local_38);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_34);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_f4);
  pMVar2 = local_b8;
  for (this = local_bc; this != pMVar2; this = this + 8) {
    uVar3 = gpg::MultiplayerParticipant::Id(this);
    uVar4 = gpg::MultiplayerParticipant::MatchRank(this);
    uVar5 = gpg::MultiplayerParticipant::MatchResult(this);
    gpg::ParticipantResults::WithResult(&local_f0,aPStack_100,uVar3,uVar4,uVar5);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)((int)&local_f0 + 4));
  }
  FUN_0054968c(auStack_68,param_2,&DAT_009639a4,"getAutoMatchCriteria","()Landroid/os/Bundle;");
  FUN_00547b10(auStack_58,&DAT_00961a24,&DAT_009628a4,"EXTRA_MIN_AUTOMATCH_PLAYERS",
               "Ljava/lang/String;");
  FUN_00547b10(auStack_48,&DAT_00961a24,&DAT_009628a4,"EXTRA_MAX_AUTOMATCH_PLAYERS",
               "Ljava/lang/String;");
  FUN_00547b10(&local_38,&DAT_00961a24,&DAT_009628a4,"EXTRA_EXCLUSIVE_BIT_MASK","Ljava/lang/String;"
              );
  FUN_00549104(auStack_128,param_2,"getMatchId");
  local_f0 = FUN_00548d84(param_2,"getCreationTimestamp");
  FUN_0054f6ec(aMStack_e4,param_2,"getCreatorId");
  gpg::MultiplayerParticipant::MultiplayerParticipant(aMStack_dc);
  local_88[0] = FUN_00548d84(param_2,"getLastUpdatedTimestamp");
  FUN_0054f6ec(aMStack_d4,param_2,"getLastUpdaterId");
  FUN_0054f6ec(aMStack_cc,param_2,"getPendingParticipantId");
  uVar3 = FUN_00548d1c(param_2,"getStatus");
  uVar4 = FUN_00548d1c(param_2,"getTurnStatus");
  local_11c = FUN_0056593c(uVar3,uVar4);
  FUN_00549104(auStack_124,param_2,"getDescription");
  FUN_005497e4(a_Stack_b0,param_2,"getData");
  FUN_005497e4(a_Stack_a4,param_2,"getPreviousMatchData");
  iVar6 = FUN_00548c48(auStack_68);
  if (iVar6 == 0) {
    uVar3 = FUN_00548bac(auStack_58);
    local_118 = FUN_00548cc0(auStack_68,"getInt","(Ljava/lang/String;)I",uVar3);
  }
  else {
    local_118 = 0;
  }
  iVar6 = FUN_00548c48(auStack_68);
  if (iVar6 == 0) {
    uVar3 = FUN_00548bac(auStack_48);
    local_114 = FUN_00548cc0(auStack_68,"getInt","(Ljava/lang/String;)I",uVar3);
  }
  else {
    local_114 = 0;
  }
  iVar6 = FUN_00548c48(auStack_68);
  if (iVar6 == 0) {
    uVar3 = FUN_00548bac(&local_38);
    local_78[0] = FUN_00548d28(auStack_68,"getLong","(Ljava/lang/String;)J",uVar3);
  }
  else {
    local_78[0] = 0;
  }
  local_110 = FUN_00548d1c(param_2,"getVariant");
  local_108[0] = FUN_00548d1c(param_2,"getVersion");
  local_f8 = FUN_00548d1c(param_2,"getMatchNumber");
  FUN_005490cc(auStack_120,param_2,&DAT_00801f93,"getRematchId");
  local_129 = FUN_00548cb4(param_2,"isLocallyModified");
  FUN_00565c9c(&local_c4,0,auStack_12c,auStack_128,&local_f0,aMStack_e4,aMStack_dc,local_88,
               aMStack_d4,aMStack_cc,&local_11c,auStack_124,aPStack_100,&local_bc,a_Stack_b0,
               a_Stack_a4,&local_118,&local_114,local_78,&local_110,local_108,&local_f8,auStack_120,
               &local_129);
  param_1[1] = local_c0;
  *param_1 = local_c4;
  local_c0 = 0;
  local_c4 = 0;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_c0);
  FUN_007c5914(auStack_120);
  std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::~_Vector_base(a_Stack_a4);
  std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::~_Vector_base(a_Stack_b0);
  FUN_007c5914(auStack_124);
  gpg::MultiplayerParticipant::~MultiplayerParticipant(aMStack_cc);
  gpg::MultiplayerParticipant::~MultiplayerParticipant(aMStack_d4);
  gpg::MultiplayerParticipant::~MultiplayerParticipant(aMStack_dc);
  gpg::MultiplayerParticipant::~MultiplayerParticipant(aMStack_e4);
  FUN_007c5914(auStack_128);
  FUN_00548ab0(&local_38);
  FUN_00548ab0(auStack_48);
  FUN_00548ab0(auStack_58);
  FUN_00548ab0(auStack_68);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_fc);
  std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>::~vector
            ((vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>> *)
             &local_bc);
  FUN_00548ab0(auStack_98);
  return param_1;
}

// ---- FUN_00566880  @ 0x566880
undefined4 * FUN_00566880(undefined4 *param_1,undefined4 param_2)

{
  undefined4 uVar1;
  undefined4 uVar2;
  ParticipantResults *this;
  undefined1 auStack_d8 [3];
  undefined1 local_d5;
  undefined1 auStack_d4 [4];
  undefined1 *local_d0;
  undefined4 local_cc;
  undefined4 local_c8;
  undefined4 local_c4;
  undefined4 local_c0;
  undefined4 local_bc;
  undefined4 local_b8;
  undefined4 local_b4;
  undefined8 local_b0;
  undefined4 local_a8;
  undefined4 uStack_a4;
  MultiplayerParticipant aMStack_9c [8];
  undefined4 local_94;
  undefined4 local_90;
  undefined4 local_8c;
  undefined4 local_88;
  MultiplayerParticipant aMStack_84 [8];
  MultiplayerParticipant aMStack_7c [8];
  MultiplayerParticipant aMStack_74 [8];
  ParticipantResults aPStack_6c [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_68 [4];
  undefined4 local_64;
  undefined4 local_60;
  undefined4 local_5c;
  undefined4 local_58;
  undefined4 local_54;
  undefined4 local_50;
  undefined4 local_4c;
  undefined4 local_48;
  undefined4 local_44;
  undefined4 local_40;
  undefined4 local_3c;
  undefined1 auStack_38 [20];
  
  FUN_00549104(auStack_d4,param_2,"getInvitationId");
  local_b0 = FUN_00548d84(param_2,"getCreationTimestamp");
  gpg::MultiplayerParticipant::MultiplayerParticipant(aMStack_9c);
  FUN_0054968c(auStack_38,param_2,&DAT_009617a4,"getInviter",
               "()Lcom/google/android/gms/games/multiplayer/Participant;");
  FUN_0054f45c(&local_94,auStack_38);
  local_88 = local_90;
  local_8c = local_94;
  local_90 = 0;
  local_94 = 0;
  gpg::MultiplayerParticipant::MultiplayerParticipant(aMStack_84,&local_8c);
  local_a8 = 0;
  uStack_a4 = 0;
  gpg::MultiplayerParticipant::MultiplayerParticipant(aMStack_7c);
  gpg::MultiplayerParticipant::MultiplayerParticipant(aMStack_74);
  this = aPStack_6c;
  local_cc = 1;
  local_d0 = &DAT_00972528;
  gpg::ParticipantResults::ParticipantResults(this);
  local_5c = 0;
  local_58 = 0;
  local_54 = 0;
  local_50 = 0;
  local_4c = 0;
  local_48 = 0;
  local_44 = 0;
  local_40 = 0;
  local_3c = 0;
  local_c8 = 0;
  local_c4 = FUN_00548d1c(param_2,"getAvailableAutoMatchSlots");
  local_c0 = 0;
  local_bc = FUN_00548d1c(param_2,"getVariant");
  local_b8 = 0;
  local_b4 = 0;
  local_d5 = 0;
  FUN_00565ee8(&local_64,0,auStack_d8,auStack_d4,&local_b0,aMStack_9c,aMStack_84,&local_a8,
               aMStack_7c,aMStack_74,&local_cc,&local_d0,aPStack_6c,&local_5c,&local_50,&local_44,
               &local_c8,&local_c4,&local_c0,&local_bc,&local_b8,&local_b4,&DAT_00801f93,&local_d5,
               this);
  uVar2 = local_60;
  uVar1 = local_64;
  local_64 = 0;
  *param_1 = uVar1;
  local_60 = 0;
  param_1[1] = uVar2;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_60);
  std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::~_Vector_base
            ((_Vector_base<unsigned_char,std::allocator<unsigned_char>> *)&local_44);
  std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::~_Vector_base
            ((_Vector_base<unsigned_char,std::allocator<unsigned_char>> *)&local_50);
  std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>::~vector
            ((vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>> *)
             &local_5c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_68);
  FUN_007c5914(&local_d0);
  gpg::MultiplayerParticipant::~MultiplayerParticipant(aMStack_74);
  gpg::MultiplayerParticipant::~MultiplayerParticipant(aMStack_7c);
  gpg::MultiplayerParticipant::~MultiplayerParticipant(aMStack_84);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_88);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_90);
  FUN_00548ab0(auStack_38);
  gpg::MultiplayerParticipant::~MultiplayerParticipant(aMStack_9c);
  FUN_007c5914(auStack_d4);
  return param_1;
}

// ---- FUN_00566acc  @ 0x566acc
undefined4 * FUN_00566acc(undefined4 *param_1,undefined4 param_2)

{
  undefined4 uVar1;
  TurnBasedMatch *pTVar2;
  TurnBasedMatch *pTVar3;
  uint uVar4;
  int iVar5;
  shared_ptr asStack_4c [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_48 [4];
  undefined4 local_44;
  TurnBasedMatch *local_40;
  TurnBasedMatch *local_3c;
  undefined1 auStack_38 [20];
  
  local_44 = 0;
  local_40 = (TurnBasedMatch *)0x0;
  local_3c = (TurnBasedMatch *)0x0;
  uVar4 = FUN_00548d1c(param_2,"getCount");
  std::vector<gpg::TurnBasedMatch,std::allocator<gpg::TurnBasedMatch>>::reserve
            ((vector<gpg::TurnBasedMatch,std::allocator<gpg::TurnBasedMatch>> *)&local_44,uVar4);
  for (iVar5 = 0; iVar5 < (int)uVar4; iVar5 = iVar5 + 1) {
    FUN_0054968c(auStack_38,param_2,&DAT_009620a4,&DAT_0080598d,"(I)Ljava/lang/Object;",iVar5);
    FUN_00566298(asStack_4c,auStack_38);
    if (local_40 == local_3c) {
      std::vector<gpg::TurnBasedMatch,std::allocator<gpg::TurnBasedMatch>>::
      _M_emplace_back_aux<std::shared_ptr<gpg::TurnBasedMatchImpl>>
                ((vector<gpg::TurnBasedMatch,std::allocator<gpg::TurnBasedMatch>> *)&local_44,
                 asStack_4c);
    }
    else {
      __gnu_cxx::new_allocator<gpg::TurnBasedMatch>::
      construct<gpg::TurnBasedMatch,std::shared_ptr<gpg::TurnBasedMatchImpl>>
                ((new_allocator<gpg::TurnBasedMatch> *)&local_44,local_40,asStack_4c);
      local_40 = local_40 + 8;
    }
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_48);
    FUN_00548ab0(auStack_38);
  }
  FUN_00548de4(param_2,"close");
  pTVar3 = local_3c;
  pTVar2 = local_40;
  uVar1 = local_44;
  local_44 = 0;
  *param_1 = uVar1;
  local_40 = (TurnBasedMatch *)0x0;
  param_1[1] = pTVar2;
  local_3c = (TurnBasedMatch *)0x0;
  param_1[2] = pTVar3;
  std::vector<gpg::TurnBasedMatch,std::allocator<gpg::TurnBasedMatch>>::~vector
            ((vector<gpg::TurnBasedMatch,std::allocator<gpg::TurnBasedMatch>> *)&local_44);
  return param_1;
}

// ---- FUN_00566c14  @ 0x566c14
undefined4 * FUN_00566c14(undefined4 *param_1)

{
  *param_1 = &PTR___Sp_counted_base_1_009242b8;
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_00566cec  @ 0x566cec
undefined4 * FUN_00566cec(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_00566cec_1_00928a08;
  FUN_005696d0();
  return param_1;
}

// ---- FUN_00566d04  @ 0x566d04
void * FUN_00566d04(void *param_1)

{
  FUN_00566cec();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_00566d18  @ 0x566d18
undefined4 * FUN_00566d18(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_00566d18_1_00928a28;
  FUN_005696d0();
  return param_1;
}

// ---- FUN_00566d30  @ 0x566d30
void * FUN_00566d30(void *param_1)

{
  FUN_00566d18();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_00566d42  @ 0x566d42
void FUN_00566d42(void *param_1)

{
  if (param_1 != (void *)0x0) {
    operator_delete(param_1);
    return;
  }
  return;
}

// ---- FUN_00566d4a  @ 0x566d4a
void FUN_00566d4a(int param_1)

{
  undefined4 *puVar1;
  
  puVar1 = *(undefined4 **)(param_1 + 0xc);
  (**(code **)*puVar1)(puVar1);
  operator_delete(puVar1);
  return;
}

// ---- FUN_00566d60  @ 0x566d60
void FUN_00566d60(int param_1)

{
  undefined4 *puVar1;
  
  puVar1 = *(undefined4 **)(param_1 + 0xc);
  (**(code **)*puVar1)(puVar1);
  operator_delete(puVar1);
  return;
}

// ---- FUN_00566d76  @ 0x566d76
void FUN_00566d76(int param_1)

{
  undefined4 *puVar1;
  
  puVar1 = *(undefined4 **)(param_1 + 0xc);
  (**(code **)*puVar1)(puVar1);
  operator_delete(puVar1);
  return;
}

// ---- FUN_00566d8c  @ 0x566d8c
undefined4 * FUN_00566d8c(undefined4 *param_1,undefined4 param_2)

{
  undefined4 *puStack_18;
  undefined4 uStack_14;
  
  puStack_18 = param_1;
  uStack_14 = param_2;
  FUN_007c6a60(&uStack_14,"HaltingState",&puStack_18);
  FUN_005696a0(param_1,param_2,&uStack_14);
  FUN_007c5914(&uStack_14);
  *param_1 = &PTR_FUN_00566cec_1_00928a08;
  return param_1;
}

// ---- FUN_00566e22  @ 0x566e22
bool FUN_00566e22(undefined4 param_1,undefined4 *param_2)

{
  int iVar1;
  
  iVar1 = FUN_00569760(*param_2);
  return iVar1 == -1;
}

// ---- FUN_00566e4c  @ 0x566e4c
void FUN_00566e4c(undefined4 *param_1)

{
  (**(code **)(*(int *)*param_1 + 8))();
  *(undefined1 *)(param_1 + 3) = 1;
  return;
}

// ---- FUN_00566e5e  @ 0x566e5e
void FUN_00566e5e(undefined4 *param_1)

{
  (**(code **)(*(int *)*param_1 + 0xc))();
  *(undefined1 *)(param_1 + 3) = 0;
  return;
}

// ---- FUN_00566e8e  @ 0x566e8e
undefined4 * FUN_00566e8e(undefined4 *param_1,undefined4 *param_2)

{
  *param_1 = *param_2;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(param_1 + 1),
             (__shared_count *)(param_2 + 1));
  return param_1;
}

// ---- FUN_00566ea2  @ 0x566ea2
undefined4 FUN_00566ea2(undefined4 param_1,int param_2)

{
  FUN_00566e8e(param_1,param_2 + 0x88);
  return param_1;
}

// ---- FUN_00566eb0  @ 0x566eb0
undefined4 * FUN_00566eb0(undefined4 *param_1,undefined4 *param_2)

{
  *param_1 = *param_2;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(param_1 + 1),
             (__shared_count *)(param_2 + 1));
  return param_1;
}

// ---- FUN_00566ec4  @ 0x566ec4
int FUN_00566ec4(int param_1,undefined4 param_2,undefined4 param_3)

{
  FUN_00566eb0();
  *(undefined4 *)(param_1 + 8) = param_3;
  *(undefined1 *)(param_1 + 0xc) = 0;
  return param_1;
}

// ---- FUN_00566efc  @ 0x566efc
undefined4 * FUN_00566efc(undefined4 *param_1,undefined4 *param_2)

{
  undefined1 *local_d0;
  undefined1 auStack_cc [8];
  undefined1 auStack_c4 [4];
  undefined1 auStack_c0 [176];
  
  FUN_007aaa70(auStack_cc,0x18);
  thunk_FUN_007bbd6c(auStack_c4,*param_2);
  FUN_007a9920(&local_d0,auStack_c0);
  *param_1 = local_d0;
  local_d0 = &DAT_00972528;
  FUN_007c5914(&local_d0);
  FUN_007a95a8(auStack_cc);
  return param_1;
}

// ---- FUN_00566f50  @ 0x566f50
void FUN_00566f50(undefined4 param_1,undefined4 *param_2)

{
  undefined4 local_1c;
  undefined1 auStack_18 [4];
  char acStack_14 [8];
  
  local_1c = FUN_00569760(*param_2);
  FUN_00566efc(auStack_18,&local_1c);
  std::operator+(acStack_14,(string *)" - unhandledMessage: message.type=");
  FUN_00516680(4,acStack_14);
  FUN_007c5914(acStack_14);
  FUN_007c5914(auStack_18);
  return;
}

// ---- FUN_00566fa4  @ 0x566fa4
int FUN_00566fa4(int param_1)

{
  return *(int *)(param_1 + 4) + -4;
}

// ---- FUN_00566fac  @ 0x566fac
undefined4 * FUN_00566fac(undefined4 *param_1,char *param_2,int *param_3)

{
  size_t sVar1;
  
  sVar1 = strlen(param_2);
  *param_1 = &DAT_00972528;
  FUN_007c60a0(param_1,*(int *)(*param_3 + -0xc) + sVar1);
  FUN_007c6234(param_1,param_2,sVar1);
  FUN_007c6120(param_1,param_3);
  return param_1;
}

// ---- FUN_00566ff8  @ 0x566ff8
undefined4 * FUN_00566ff8(undefined4 *param_1,undefined4 *param_2)

{
  undefined1 *local_d0;
  undefined1 auStack_cc [8];
  undefined1 auStack_c4 [4];
  undefined1 auStack_c0 [176];
  
  FUN_007aaa70(auStack_cc,0x18);
  thunk_FUN_007bbf08(auStack_c4,*param_2);
  FUN_007a9920(&local_d0,auStack_c0);
  *param_1 = local_d0;
  local_d0 = &DAT_00972528;
  FUN_007c5914(&local_d0);
  FUN_007a95a8(auStack_cc);
  return param_1;
}

// ---- FUN_005670b6  @ 0x5670b6
void FUN_005670b6(recursive_mutex *param_1,undefined4 param_2)

{
  recursive_mutex *prStack_18;
  undefined4 uStack_14;
  
  prStack_18 = param_1;
  uStack_14 = param_2;
  std::unique_lock<std::recursive_mutex>::unique_lock
            ((unique_lock<std::recursive_mutex> *)&prStack_18,param_1);
  param_1[0x1c] = SUB41(param_2,0);
  std::unique_lock<std::recursive_mutex>::~unique_lock
            ((unique_lock<std::recursive_mutex> *)&prStack_18);
  return;
}

// ---- FUN_005670d6  @ 0x5670d6
recursive_mutex FUN_005670d6(recursive_mutex *param_1,undefined4 param_2,undefined4 param_3)

{
  recursive_mutex rVar1;
  recursive_mutex *prStack_18;
  undefined4 uStack_14;
  undefined4 uStack_10;
  
  prStack_18 = param_1;
  uStack_14 = param_2;
  uStack_10 = param_3;
  std::unique_lock<std::recursive_mutex>::unique_lock
            ((unique_lock<std::recursive_mutex> *)&prStack_18,param_1);
  rVar1 = param_1[0x1c];
  std::unique_lock<std::recursive_mutex>::~unique_lock
            ((unique_lock<std::recursive_mutex> *)&prStack_18);
  return rVar1;
}

// ---- FUN_005670f0  @ 0x5670f0
int FUN_005670f0(recursive_mutex *param_1,undefined4 param_2,undefined4 param_3)

{
  int iVar1;
  int iVar2;
  recursive_mutex *prStack_18;
  undefined4 uStack_14;
  undefined4 uStack_10;
  
  prStack_18 = param_1;
  uStack_14 = param_2;
  uStack_10 = param_3;
  std::unique_lock<std::recursive_mutex>::unique_lock
            ((unique_lock<std::recursive_mutex> *)&prStack_18,param_1);
  iVar1 = *(int *)(param_1 + 8);
  iVar2 = *(int *)(param_1 + 4);
  std::unique_lock<std::recursive_mutex>::~unique_lock
            ((unique_lock<std::recursive_mutex> *)&prStack_18);
  return iVar1 - iVar2 >> 2;
}

// ---- FUN_00567130  @ 0x567130
undefined4 FUN_00567130(undefined4 param_1,recursive_mutex *param_2,int param_3)

{
  uint uVar1;
  uint extraout_r1;
  undefined1 auStack_24 [4];
  unique_lock<std::recursive_mutex> auStack_20 [12];
  
  std::unique_lock<std::recursive_mutex>::unique_lock(auStack_20,param_2);
  __aeabi_uidivmod(*(int *)(param_2 + 0x14) + param_3,*(undefined4 *)(param_2 + 0x10));
  uVar1 = FUN_005670f0(param_2);
  if (extraout_r1 < uVar1) {
    FUN_007c64e8(param_1,*(int *)(param_2 + 4) + extraout_r1 * 4);
  }
  else {
    FUN_007c6a60(param_1,&DAT_00801f93,auStack_24);
  }
  std::unique_lock<std::recursive_mutex>::~unique_lock(auStack_20);
  return param_1;
}

// ---- FUN_00567190  @ 0x567190
void FUN_00567190(recursive_mutex *param_1,undefined4 param_2)

{
  undefined4 uVar1;
  uint uVar2;
  undefined1 auStack_34 [4];
  unique_lock<std::recursive_mutex> auStack_30 [12];
  
  std::unique_lock<std::recursive_mutex>::unique_lock(auStack_30,param_1);
  uVar1 = FUN_007bbcd0(param_2," total records=");
  FUN_007bbf08(uVar1,*(int *)(param_1 + 8) - *(int *)(param_1 + 4) >> 2);
  FUN_007bb8e4();
  uVar2 = 0;
  while( true ) {
    if ((uint)(*(int *)(param_1 + 8) - *(int *)(param_1 + 4) >> 2) <= uVar2) break;
    uVar1 = FUN_007bbcd0(param_2," rec[");
    uVar1 = thunk_FUN_007bbd6c(uVar1,uVar2);
    uVar1 = FUN_007bbcd0(uVar1,&DAT_0080cdda);
    FUN_00567130(auStack_34,param_1,uVar2);
    FUN_007af9cc(uVar1,auStack_34);
    FUN_007bb8e4();
    FUN_007c5914(auStack_34);
    FUN_007bb250(param_2);
    uVar2 = uVar2 + 1;
  }
  std::unique_lock<std::recursive_mutex>::~unique_lock(auStack_30);
  return;
}

// ---- FUN_0056726a  @ 0x56726a
void FUN_0056726a(recursive_mutex *param_1,undefined4 param_2,undefined4 param_3)

{
  recursive_mutex *prStack_18;
  undefined4 uStack_14;
  undefined4 uStack_10;
  
  prStack_18 = param_1;
  uStack_14 = param_2;
  uStack_10 = param_3;
  std::unique_lock<std::recursive_mutex>::unique_lock
            ((unique_lock<std::recursive_mutex> *)&prStack_18,param_1);
  std::vector<std::string,std::allocator<std::string>>::clear
            ((vector<std::string,std::allocator<std::string>> *)(param_1 + 4));
  std::unique_lock<std::recursive_mutex>::~unique_lock
            ((unique_lock<std::recursive_mutex> *)&prStack_18);
  return;
}

// ---- FUN_00567286  @ 0x567286
undefined4 FUN_00567286(int param_1,undefined4 param_2)

{
  int *piVar1;
  code *pcVar2;
  int iStack_18;
  undefined4 uStack_14;
  
  piVar1 = *(int **)(param_1 + 0xc);
  pcVar2 = *(code **)(*piVar1 + 0xc);
  iStack_18 = param_1;
  uStack_14 = param_2;
  FUN_00566e8e(&iStack_18);
  (*pcVar2)(piVar1,&iStack_18);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&uStack_14);
  return 0;
}

// ---- FUN_005672b2  @ 0x5672b2
undefined4 * FUN_005672b2(undefined4 *param_1)

{
  void *pvVar1;
  
  pvVar1 = (void *)*param_1;
  if (pvVar1 != (void *)0x0) {
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)((int)pvVar1 + 4));
    operator_delete(pvVar1);
  }
  *param_1 = 0;
  return param_1;
}

// ---- FUN_005672d0  @ 0x5672d0
void FUN_005672d0(int param_1,uint param_2)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  int iVar3;
  undefined1 auStack_2c [4];
  int *local_28;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_24 [8];
  
  iVar3 = param_2 << 2;
  for (; param_2 < (uint)(*(int *)(param_1 + 0x4c) - *(int *)(param_1 + 0x48) >> 2);
      param_2 = param_2 + 1) {
    if (*(char *)(param_1 + 0x20) != '\0') {
      FUN_00566eb0(&local_28,*(undefined4 *)(*(int *)(param_1 + 0x48) + iVar3));
      uVar2 = (**(code **)(*local_28 + 0x10))();
      FUN_00566fac(auStack_2c,"invokeEnterMethods: ",uVar2);
      FUN_00516680(1,auStack_2c);
      FUN_007c5914(auStack_2c);
      std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_24);
    }
    puVar1 = (undefined4 *)(*(int *)(param_1 + 0x48) + iVar3);
    iVar3 = iVar3 + 4;
    FUN_00566e4c(*puVar1);
  }
  return;
}

// ---- FUN_00567354  @ 0x567354
int FUN_00567354(int *param_1,int param_2,undefined4 param_3)

{
  int local_18;
  int local_14;
  undefined4 uStack_10;
  
  local_18 = (int)param_1;
  local_14 = param_2;
  uStack_10 = param_3;
  FUN_00566eb0(&local_18,*(undefined4 *)(*(int *)(param_2 + 0x4c) + -4));
  *param_1 = local_18;
  param_1[1] = local_14;
  local_14 = 0;
  local_18 = 0;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_14);
  return (int)param_1;
}

// ---- FUN_00567380  @ 0x567380
void FUN_00567380(int *param_1,undefined4 param_2)

{
  undefined4 uVar1;
  undefined4 uVar2;
  int *local_18;
  undefined4 uStack_14;
  
  local_18 = param_1;
  uStack_14 = param_2;
  uVar1 = FUN_007af9cc(param_2,param_1 + 3);
  FUN_007bbcd0(uVar1,&DAT_0080cdf3);
  FUN_007bb8e4();
  FUN_00567190(param_1 + 9,param_2);
  uVar1 = FUN_007bbcd0(param_2,"cur_state=");
  FUN_00567354(&local_18,param_1);
  uVar2 = (**(code **)(*local_18 + 0x10))();
  FUN_007af9cc(uVar1,uVar2);
  FUN_007bb8e4();
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&uStack_14);
  return;
}

// ---- FUN_005673ec  @ 0x5673ec
void FUN_005673ec(int param_1,int param_2)

{
  int *piVar1;
  undefined4 uVar2;
  int iVar3;
  undefined1 auStack_2c [4];
  int *local_28;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_24 [8];
  
  while( true ) {
    if ((uint)(*(int *)(param_1 + 0x4c) - *(int *)(param_1 + 0x48)) >> 2 == 0) {
      return;
    }
    piVar1 = (int *)FUN_00566fa4(param_1 + 0x48);
    iVar3 = *piVar1;
    if (iVar3 == param_2) break;
    if (*(char *)(param_1 + 0x20) != '\0') {
      FUN_00566eb0(&local_28,iVar3);
      uVar2 = (**(code **)(*local_28 + 0x10))();
      FUN_00566fac(auStack_2c,"invokeExitMethods: ",uVar2);
      FUN_00516680(1,auStack_2c);
      FUN_007c5914(auStack_2c);
      std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_24);
    }
    FUN_00566e5e(iVar3);
    *(int *)(param_1 + 0x4c) = *(int *)(param_1 + 0x4c) + -4;
  }
  return;
}

// ---- FUN_00567478  @ 0x567478
undefined4 * FUN_00567478(undefined4 *param_1,undefined4 *param_2)

{
  undefined4 uVar1;
  int iVar2;
  undefined1 auStack_110 [4];
  char acStack_10c [4];
  string asStack_108 [4];
  undefined4 local_104;
  string asStack_100 [4];
  string asStack_fc [4];
  undefined1 auStack_f8 [4];
  undefined1 *local_f4;
  undefined1 *local_f0;
  int *local_ec;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_e8 [4];
  undefined1 auStack_e4 [8];
  undefined1 auStack_dc [4];
  undefined1 auStack_d8 [180];
  
  uVar1 = (**(code **)(*(int *)*param_2 + 0x10))();
  FUN_00566fac(acStack_10c,"state=",uVar1);
  std::operator+(asStack_108,acStack_10c);
  FUN_007aaa70(auStack_e4,0x18);
  thunk_FUN_007bc07c(auStack_dc,*(undefined1 *)(param_2 + 3));
  FUN_007a9920(&local_f0,auStack_d8);
  local_104 = local_f0;
  local_f0 = &DAT_00972528;
  FUN_007c5914(&local_f0);
  FUN_007a95a8(auStack_e4);
  std::operator+(asStack_100,asStack_108);
  std::operator+(asStack_fc,(char *)asStack_100);
  iVar2 = param_2[2];
  if (iVar2 != 0) {
    FUN_00566eb0(&local_ec);
    uVar1 = (**(code **)(*local_ec + 0x10))();
    FUN_007c64e8(auStack_f8,uVar1);
  }
  else {
    FUN_007c6a60(auStack_f8,"nullptr",auStack_110);
  }
  std::operator+((string *)&local_f4,asStack_fc);
  *param_1 = local_f4;
  local_f4 = &DAT_00972528;
  FUN_007c5914((string *)&local_f4);
  FUN_007c5914(auStack_f8);
  if (iVar2 != 0) {
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_e8);
  }
  FUN_007c5914(asStack_fc);
  FUN_007c5914(asStack_100);
  FUN_007c5914(&local_104);
  FUN_007c5914(asStack_108);
  FUN_007c5914(acStack_10c);
  return param_1;
}

// ---- FUN_005675fc  @ 0x5675fc
int * FUN_005675fc(int *param_1)

{
  int iVar1;
  int iVar2;
  
  iVar2 = param_1[1];
  for (iVar1 = *param_1; iVar1 != iVar2; iVar1 = iVar1 + 8) {
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(iVar1 + 4));
  }
  if ((void *)*param_1 != (void *)0x0) {
    operator_delete((void *)*param_1);
  }
  return param_1;
}

// ---- FUN_00567780  @ 0x567780
void FUN_00567780(undefined4 param_1,void *param_2)

{
  void *pvVar1;
  
  while (param_2 != (void *)0x0) {
    FUN_00567780(param_1,*(undefined4 *)((int)param_2 + 0xc));
    pvVar1 = *(void **)((int)param_2 + 8);
    FUN_005672b2((int)param_2 + 0x18);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)((int)param_2 + 0x14));
    operator_delete(param_2);
    param_2 = pvVar1;
  }
  return;
}

// ---- FUN_005677ae  @ 0x5677ae
undefined4 * FUN_005677ae(undefined4 *param_1,undefined4 *param_2)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 local_c;
  
  uVar1 = *param_2;
  uVar2 = param_2[1];
  param_2[1] = 0;
  *param_2 = 0;
  *param_1 = uVar1;
  local_c = param_1[1];
  param_1[1] = uVar2;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_c);
  return param_1;
}

// ---- FUN_005677d4  @ 0x5677d4
void FUN_005677d4(int param_1,undefined4 *param_2)

{
  undefined4 uVar1;
  undefined4 local_18;
  undefined4 *puStack_14;
  
  local_18 = *param_2;
  puStack_14 = param_2;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&puStack_14,
             (__shared_count *)(param_2 + 1));
  FUN_005677ae(param_1 + 0x80,&local_18);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&puStack_14);
  if (*(char *)(param_1 + 0x20) != '\0') {
    uVar1 = (**(code **)(**(int **)(param_1 + 0x80) + 0x10))();
    FUN_00566fac(&local_18,"transitionTo: dest_state=",uVar1);
    FUN_00516680(1,&local_18);
    FUN_007c5914(&local_18);
  }
  return;
}

// ---- FUN_00567838  @ 0x567838
int * FUN_00567838(int *param_1,undefined4 param_2)

{
  int *piVar1;
  undefined4 uVar2;
  int iVar3;
  int iVar4;
  code *pcVar5;
  int *local_38;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_34 [4];
  int *local_30;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_2c [8];
  
  piVar1 = (int *)FUN_00566fa4(param_1 + 0x12);
  iVar4 = *piVar1;
  if ((char)param_1[8] != '\0') {
    FUN_00566eb0(&local_30,iVar4);
    uVar2 = (**(code **)(*local_30 + 0x10))();
    FUN_00566fac(&local_38,"processMessage: ",uVar2);
    FUN_00516680(1,&local_38);
    FUN_007c5914(&local_38);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_2c);
  }
  FUN_00566e8e(&local_30,param_2);
  iVar3 = FUN_00566e22(param_1,&local_30);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_2c);
  if (iVar3 == 0) {
    while( true ) {
      FUN_00566eb0(&local_38,iVar4);
      piVar1 = local_38;
      pcVar5 = *(code **)(*local_38 + 0x14);
      FUN_00566e8e(&local_30,param_2);
      iVar3 = (*pcVar5)(piVar1,&local_30);
      std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_2c);
      std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_34);
      if (iVar3 == 0) break;
      iVar4 = *(int *)(iVar4 + 8);
      if (iVar4 == 0) {
        pcVar5 = *(code **)(*param_1 + 0x10);
        FUN_00566e8e(&local_30,param_2);
        (*pcVar5)(param_1,&local_30);
        std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_2c);
        goto LAB_00567992;
      }
      if ((char)param_1[8] != '\0') {
        FUN_00566eb0(&local_30,iVar4);
        uVar2 = (**(code **)(*local_30 + 0x10))();
        FUN_00566fac(&local_38,"processMessage: ",uVar2);
        FUN_00516680(1,&local_38);
        FUN_007c5914(&local_38);
        std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_2c);
      }
    }
  }
  else {
    local_30 = (int *)param_1[6];
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
              (a_Stack_2c,(__shared_count *)(param_1 + 7));
    FUN_005677d4(param_1,&local_30);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_2c);
  }
  if (iVar4 == 0) {
LAB_00567992:
    piVar1 = (int *)0x0;
  }
  else {
    FUN_00566eb0(&local_30,iVar4);
    piVar1 = local_30;
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_2c);
  }
  return piVar1;
}

// ---- FUN_005679d6  @ 0x5679d6
void FUN_005679d6(int param_1)

{
  int iVar1;
  int iVar2;
  int iVar3;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  
  local_20 = *(undefined4 *)(param_1 + 0x9c);
  *(undefined4 *)(param_1 + 0x9c) = 0;
  local_1c = *(undefined4 *)(param_1 + 0xa0);
  *(undefined4 *)(param_1 + 0xa0) = 0;
  local_24 = 0;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_1c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_24);
  local_20 = *(undefined4 *)(param_1 + 0x88);
  *(undefined4 *)(param_1 + 0x88) = 0;
  local_1c = *(undefined4 *)(param_1 + 0x8c);
  *(undefined4 *)(param_1 + 0x8c) = 0;
  local_24 = 0;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_1c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_24);
  FUN_0056726a(param_1 + 0x24);
  *(undefined4 *)(param_1 + 0x4c) = *(undefined4 *)(param_1 + 0x48);
  *(undefined4 *)(param_1 + 0x58) = *(undefined4 *)(param_1 + 0x54);
  FUN_00567780(param_1 + 0x60,*(undefined4 *)(param_1 + 0x68));
  *(int *)(param_1 + 0x6c) = param_1 + 100;
  *(int *)(param_1 + 0x70) = param_1 + 100;
  *(undefined4 *)(param_1 + 0x68) = 0;
  *(undefined4 *)(param_1 + 0x74) = 0;
  local_20 = 0;
  local_1c = 0;
  FUN_005677ae(param_1 + 0x78,&local_20);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_1c);
  local_20 = 0;
  local_1c = 0;
  FUN_005677ae(param_1 + 0x80,&local_20);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_1c);
  iVar3 = *(int *)(param_1 + 0x94);
  iVar2 = *(int *)(param_1 + 0x90);
  for (iVar1 = iVar2; iVar1 != iVar3; iVar1 = iVar1 + 8) {
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(iVar1 + 4));
  }
  *(int *)(param_1 + 0x94) = iVar2;
  return;
}

// ---- FUN_00567a9e  @ 0x567a9e
int FUN_00567a9e(int param_1,uint *param_2)

{
  int iVar1;
  int iVar2;
  int iVar3;
  
  iVar1 = param_1 + 4;
  iVar2 = iVar1;
  iVar3 = *(int *)(param_1 + 8);
  while (iVar3 != 0) {
    if (*(uint *)(iVar3 + 0x10) < *param_2) {
      iVar3 = *(int *)(iVar3 + 0xc);
    }
    else {
      iVar2 = iVar3;
      iVar3 = *(int *)(iVar3 + 8);
    }
  }
  if ((iVar2 != iVar1) && (*(uint *)(iVar2 + 0x10) <= *param_2)) {
    iVar1 = iVar2;
  }
  return iVar1;
}

// ---- FUN_00567c0c  @ 0x567c0c
undefined4 * FUN_00567c0c(undefined4 *param_1)

{
  *param_1 = &PTR_LAB_005693b8_1_00928a48;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(param_1 + 0x28));
  FUN_005675fc(param_1 + 0x24);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(param_1 + 0x23));
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(param_1 + 0x21));
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(param_1 + 0x1f));
  FUN_00567780(param_1 + 0x18,param_1[0x1a]);
  FUN_00566d42(param_1[0x15]);
  FUN_00566d42(param_1[0x12]);
  std::vector<std::string,std::allocator<std::string>>::~vector
            ((vector<std::string,std::allocator<std::string>> *)(param_1 + 10));
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(param_1 + 7));
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(param_1 + 5));
  FUN_007c5914(param_1 + 3);
  std::__weak_count<(__gnu_cxx::_Lock_policy)2>::~__weak_count
            ((__weak_count<(__gnu_cxx::_Lock_policy)2> *)(param_1 + 2));
  return param_1;
}

// ---- FUN_00567c84  @ 0x567c84
void * FUN_00567c84(void *param_1)

{
  FUN_00567c0c();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_00567c98  @ 0x567c98
void FUN_00567c98(recursive_mutex *param_1,int param_2,int *param_3,int *param_4,int *param_5,
                 int *param_6)

{
  gpg *pgVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 extraout_r1;
  undefined4 extraout_r1_00;
  int iVar4;
  int iVar5;
  undefined4 *puVar6;
  undefined4 local_118;
  undefined4 uStack_114;
  undefined1 auStack_10c [4];
  undefined1 auStack_108 [4];
  undefined1 auStack_104 [4];
  undefined1 auStack_100 [4];
  undefined1 auStack_fc [4];
  undefined1 auStack_f8 [4];
  undefined1 *local_f4;
  undefined1 auStack_f0 [4];
  unique_lock<std::recursive_mutex> auStack_ec [8];
  undefined1 auStack_e4 [8];
  undefined1 auStack_dc [4];
  undefined1 auStack_d8 [180];
  
  FUN_007aaa70(auStack_e4,0x18);
  pgVar1 = (gpg *)FUN_007bbcd0(auStack_dc,"time=");
  FUN_0052a2b0(&local_118);
  gpg::operator<<(pgVar1,extraout_r1,local_118,uStack_114);
  uVar2 = FUN_007bbcd0(auStack_dc," processed=");
  if (param_4 == (int *)0x0) {
    FUN_007c6a60(auStack_100,"<nullptr>",auStack_10c);
  }
  else {
    uVar3 = (**(code **)(*param_4 + 0x10))(param_4);
    FUN_007c64e8(auStack_100,uVar3);
  }
  FUN_007af9cc(uVar2,auStack_100);
  FUN_007c5914(auStack_100);
  uVar2 = FUN_007bbcd0(auStack_dc," org=");
  if (param_5 == (int *)0x0) {
    FUN_007c6a60(auStack_fc,"<nullptr>",auStack_108);
  }
  else {
    uVar3 = (**(code **)(*param_5 + 0x10))(param_5);
    FUN_007c64e8(auStack_fc,uVar3);
  }
  FUN_007af9cc(uVar2,auStack_fc);
  FUN_007c5914(auStack_fc);
  uVar2 = FUN_007bbcd0(auStack_dc," dest=");
  if (param_6 == (int *)0x0) {
    FUN_007c6a60(auStack_f8,"<nullptr>",auStack_104);
  }
  else {
    uVar3 = (**(code **)(*param_6 + 0x10))(param_6);
    FUN_007c64e8(auStack_f8,uVar3);
  }
  FUN_007af9cc(uVar2,auStack_f8);
  FUN_007c5914(auStack_f8);
  uVar2 = FUN_007bbcd0(auStack_dc," message_type=");
  if (param_2 == 0) {
    uVar3 = 0;
  }
  else {
    uVar3 = FUN_00569760(param_2);
  }
  thunk_FUN_007bbd6c(uVar2,uVar3);
  if (*(int *)(*param_3 + -0xc) != 0) {
    uVar2 = FUN_007bbcd0(auStack_dc,&DAT_0080c518);
    FUN_007af9cc(uVar2,param_3);
  }
  std::unique_lock<std::recursive_mutex>::unique_lock(auStack_ec,param_1);
  *(int *)(param_1 + 0x18) = *(int *)(param_1 + 0x18) + 1;
  iVar5 = *(int *)(param_1 + 4);
  if ((uint)(*(int *)(param_1 + 8) - iVar5 >> 2) < *(uint *)(param_1 + 0x10)) {
    FUN_007a9920((string *)&local_f4,auStack_d8);
    puVar6 = *(undefined4 **)(param_1 + 8);
    if (puVar6 == *(undefined4 **)(param_1 + 0xc)) {
      std::vector<std::string,std::allocator<std::string>>::_M_emplace_back_aux<std::string>
                ((vector<std::string,std::allocator<std::string>> *)(param_1 + 4),
                 (string *)&local_f4);
    }
    else {
      if (puVar6 != (undefined4 *)0x0) {
        *puVar6 = local_f4;
        local_f4 = &DAT_00972528;
      }
      *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 4;
    }
    FUN_007c5914((string *)&local_f4);
  }
  else {
    iVar4 = *(int *)(param_1 + 0x14);
    FUN_007a9920(auStack_f0,auStack_d8);
    FUN_007c52bc(iVar5 + iVar4 * 4,auStack_f0);
    FUN_007c5914(auStack_f0);
    __aeabi_idivmod(*(int *)(param_1 + 0x14) + 1,*(undefined4 *)(param_1 + 0x10));
    *(undefined4 *)(param_1 + 0x14) = extraout_r1_00;
  }
  std::unique_lock<std::recursive_mutex>::~unique_lock(auStack_ec);
  FUN_007a95a8(auStack_e4);
  return;
}

// ---- FUN_00567ed4  @ 0x567ed4
void FUN_00567ed4(int param_1,undefined4 param_2)

{
  undefined4 *puVar1;
  undefined1 auStack_44 [4];
  undefined4 local_40;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_3c [4];
  undefined4 local_38;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_34 [4];
  undefined4 local_30;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_2c [8];
  
  FUN_00566e8e(&local_40,param_1 + 0x88);
  FUN_007c64e8(auStack_44,param_2);
  FUN_00567354(&local_38,param_1);
  puVar1 = (undefined4 *)FUN_00566fa4(param_1 + 0x48);
  FUN_00566eb0(&local_30,*puVar1);
  FUN_00567c98(param_1 + 0x24,local_40,auStack_44,local_38,local_30,*(undefined4 *)(param_1 + 0x80))
  ;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_2c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_34);
  FUN_007c5914(auStack_44);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_3c);
  return;
}

// ---- FUN_00567fa8  @ 0x567fa8
uint FUN_00567fa8(int *param_1,uint param_2,undefined4 param_3)

{
  uint uVar1;
  
  uVar1 = param_1[1] - *param_1 >> 2;
  if (0x3fffffff - uVar1 < param_2) {
                    /* WARNING: Subroutine does not return */
    FUN_007c49e8(param_3);
  }
  if (uVar1 < param_2) {
    param_2 = uVar1 + param_2;
  }
  else {
    param_2 = uVar1 * 2;
  }
  if (uVar1 <= param_2) {
    if (0x3ffffffe < param_2) {
      param_2 = 0x3fffffff;
    }
    return param_2;
  }
  return 0x3fffffff;
}

// ---- FUN_00567fde  @ 0x567fde
int * FUN_00567fde(int *param_1,int param_2,uint *param_3)

{
  int iVar1;
  int iVar2;
  bool bVar3;
  
  bVar3 = true;
  iVar1 = *(int *)(param_2 + 8);
  iVar2 = param_2 + 4;
  while (iVar1 != 0) {
    bVar3 = *param_3 < *(uint *)(iVar1 + 0x10);
    iVar2 = iVar1;
    if (bVar3) {
      iVar1 = *(int *)(iVar1 + 8);
    }
    else {
      iVar1 = *(int *)(iVar1 + 0xc);
    }
  }
  iVar1 = iVar2;
  if (bVar3) {
    if (iVar2 == *(int *)(param_2 + 0xc)) {
      *param_1 = 0;
      param_1[1] = iVar2;
      return param_1;
    }
    iVar1 = thunk_FUN_0079972c(iVar2);
  }
  if (*(uint *)(iVar1 + 0x10) < *param_3) {
    *param_1 = 0;
    param_1[1] = iVar2;
  }
  else {
    *param_1 = iVar1;
    param_1[1] = 0;
  }
  return param_1;
}

// ---- FUN_00568032  @ 0x568032
void * FUN_00568032(void *param_1,void *param_2,undefined4 param_3,undefined4 *param_4)

{
  void *__s;
  void *pvVar1;
  void *pvVar2;
  void *pvVar3;
  uint uVar4;
  int iVar5;
  void *pvVar6;
  bool bVar7;
  void *local_28;
  void *local_24;
  
  local_28 = param_1;
  local_24 = param_2;
  __s = operator_new(0x1c);
  iVar5 = (int)__s + 0x10;
  if (__s != (void *)0x0) {
    memset(__s,0,0x10);
    FUN_00566eb0(iVar5,*param_4);
    *(undefined4 *)((int)__s + 0x18) = 0;
  }
  pvVar6 = (void *)((int)param_1 + 4);
  if (param_2 == pvVar6) {
    if ((*(int *)((int)param_1 + 0x14) == 0) ||
       (pvVar2 = *(void **)((int)param_1 + 0x10),
       *(uint *)((int)__s + 0x10) <= *(uint *)((int)pvVar2 + 0x10))) {
LAB_00568126:
      FUN_00567fde(&local_28,param_1,iVar5);
      pvVar2 = local_24;
      pvVar3 = local_28;
      goto LAB_005680e2;
    }
LAB_005680e6:
    if (pvVar2 == pvVar6) {
LAB_005680f8:
      bVar7 = true;
    }
    else {
      bVar7 = *(uint *)((int)__s + 0x10) < *(uint *)((int)pvVar2 + 0x10);
    }
    FUN_007997e8(bVar7,__s,pvVar2,pvVar6);
    *(int *)((int)param_1 + 0x14) = *(int *)((int)param_1 + 0x14) + 1;
    param_2 = __s;
  }
  else {
    uVar4 = *(uint *)((int)__s + 0x10);
    if (uVar4 < *(uint *)((int)param_2 + 0x10)) {
      pvVar2 = param_2;
      pvVar3 = param_2;
      if (param_2 != *(void **)((int)param_1 + 0xc)) {
        pvVar1 = (void *)thunk_FUN_0079972c(param_2);
        if (uVar4 <= *(uint *)((int)pvVar1 + 0x10)) goto LAB_00568126;
        pvVar2 = param_2;
        if (*(int *)((int)pvVar1 + 0xc) == 0) {
          pvVar3 = (void *)0x0;
          pvVar2 = pvVar1;
        }
      }
LAB_005680e2:
      param_2 = pvVar3;
      if (pvVar2 != (void *)0x0) {
        if (pvVar3 == (void *)0x0) goto LAB_005680e6;
        goto LAB_005680f8;
      }
    }
    else if (*(uint *)((int)param_2 + 0x10) < uVar4) {
      if (param_2 == *(void **)((int)param_1 + 0x10)) {
        pvVar3 = (void *)0x0;
        pvVar2 = param_2;
      }
      else {
        pvVar3 = (void *)FUN_00799768(param_2);
        if (uVar4 < *(uint *)((int)pvVar3 + 0x10)) {
          pvVar2 = pvVar3;
          if (*(int *)((int)param_2 + 0xc) == 0) {
            pvVar3 = (void *)0x0;
            pvVar2 = param_2;
          }
        }
        else {
          FUN_00567fde(&local_28,param_1,iVar5);
          pvVar2 = local_24;
          pvVar3 = local_28;
        }
      }
      goto LAB_005680e2;
    }
    FUN_005672b2((int)__s + 0x18);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)((int)__s + 0x14));
    operator_delete(__s);
  }
  return param_2;
}

// ---- FUN_0056813c  @ 0x56813c
int FUN_0056813c(int param_1,uint *param_2,undefined4 param_3)

{
  int iVar1;
  int iVar2;
  undefined4 uStack_18;
  uint *local_14;
  
  iVar1 = param_1 + 4;
  iVar2 = *(int *)(param_1 + 8);
  while (iVar2 != 0) {
    if (*(uint *)(iVar2 + 0x10) < *param_2) {
      iVar2 = *(int *)(iVar2 + 0xc);
    }
    else {
      iVar1 = iVar2;
      iVar2 = *(int *)(iVar2 + 8);
    }
  }
  if ((iVar1 == param_1 + 4) || (*param_2 < *(uint *)(iVar1 + 0x10))) {
    uStack_18 = param_3;
    local_14 = param_2;
    iVar1 = FUN_00568032(param_1,iVar1,&DAT_00831303,&local_14,&uStack_18,param_2);
  }
  return iVar1 + 0x18;
}

// ---- FUN_0056818c  @ 0x56818c
int FUN_0056818c(int param_1,undefined4 *param_2,int *param_3)

{
  void *pvVar1;
  undefined4 uVar2;
  int iVar3;
  int iVar4;
  void *pvVar5;
  int *piVar6;
  int iVar7;
  bool bVar8;
  undefined1 auStack_4c [4];
  void *local_48;
  string asStack_44 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_40 [4];
  int local_3c;
  int local_38;
  uint local_34;
  undefined4 local_30;
  void *local_2c [2];
  
  if (*(char *)(param_1 + 0x20) != '\0') {
    uVar2 = (**(code **)(*(int *)*param_2 + 0x10))();
    FUN_00566fac(&local_48,"addStateInternal: E state=",uVar2);
    std::operator+(asStack_44,(char *)&local_48);
    if ((int *)*param_3 == (int *)0x0) {
      FUN_007c6a60(&local_3c,&DAT_00801f93,auStack_4c);
    }
    else {
      uVar2 = (**(code **)(*(int *)*param_3 + 0x10))();
      FUN_007c64e8(&local_3c,uVar2);
    }
    std::operator+((string *)&local_34,asStack_44);
    FUN_00516680(1,(string *)&local_34);
    FUN_007c5914((string *)&local_34);
    FUN_007c5914(&local_3c);
    FUN_007c5914(asStack_44);
    FUN_007c5914(&local_48);
  }
  iVar7 = param_1 + 0x60;
  if (*param_3 == 0) {
    iVar3 = 0;
  }
  else {
    iVar3 = FUN_00567a9e(iVar7,param_3);
    if (iVar3 == param_1 + 100) {
      FUN_00566eb0(&local_3c,param_3);
      local_34 = 0;
      local_30 = 0;
      iVar3 = FUN_0056818c(param_1,&local_3c,&local_34);
      std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
                ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_30);
      std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
                ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_38);
    }
    else {
      iVar3 = *(int *)(iVar3 + 0x18);
    }
  }
  iVar4 = FUN_00567a9e(iVar7,param_2);
  if (iVar4 == param_1 + 100) {
    FUN_00566eb0(asStack_44,param_2);
    pvVar5 = operator_new(0x10);
    FUN_00566eb0(pvVar5,asStack_44);
    *(int *)((int)pvVar5 + 8) = iVar3;
    *(undefined1 *)((int)pvVar5 + 0xc) = 0;
    local_48 = pvVar5;
    FUN_00566eb0(&local_34,param_2);
    local_2c[0] = local_48;
    local_48 = (void *)0x0;
    FUN_00567fde(&local_3c,iVar7,&local_34);
    if (local_38 != 0) {
      if (local_3c == 0) {
        if (local_38 == iVar4) {
          bVar8 = true;
        }
        else {
          bVar8 = local_34 < *(uint *)(local_38 + 0x10);
        }
      }
      else {
        bVar8 = true;
      }
      pvVar5 = operator_new(0x1c);
      if (pvVar5 != (void *)0x0) {
        memset(pvVar5,0,0x10);
        pvVar1 = local_2c[0];
        uVar2 = local_30;
        *(uint *)((int)pvVar5 + 0x10) = local_34;
        local_30 = 0;
        *(undefined4 *)((int)pvVar5 + 0x14) = uVar2;
        local_34 = 0;
        local_2c[0] = (void *)0x0;
        *(void **)((int)pvVar5 + 0x18) = pvVar1;
      }
      FUN_007997e8(bVar8,pvVar5,local_38,iVar4);
      *(int *)(param_1 + 0x74) = *(int *)(param_1 + 0x74) + 1;
    }
    FUN_005672b2(local_2c);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_30);
    FUN_005672b2(&local_48);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_40);
    piVar6 = (int *)FUN_0056813c(iVar7,param_2);
    iVar7 = *piVar6;
  }
  else {
    iVar7 = *(int *)(iVar4 + 0x18);
  }
  if ((*(int *)(iVar7 + 8) == 0) || (*(int *)(iVar7 + 8) == iVar3)) {
    if (*(char *)(param_1 + 0x20) != '\0') {
      FUN_00567478(asStack_44,iVar7);
      std::operator+((char *)&local_34,(string *)"addStateInternal: X state_info: ");
      FUN_00516680(1,&local_34);
      FUN_007c5914(&local_34);
      FUN_007c5914(asStack_44);
    }
  }
  else {
    FUN_005166ae(4,"state already added");
    iVar7 = 0;
  }
  return iVar7;
}

// ---- FUN_00568492  @ 0x568492
void FUN_00568492(int param_1,int param_2)

{
  bool bVar1;
  int *piVar2;
  int *extraout_r2;
  int iVar3;
  int extraout_r3;
  int iVar4;
  undefined8 uVar5;
  int local_14;
  
  uVar5 = CONCAT44(param_2,param_1);
  iVar3 = *(int *)(param_2 + 4);
  *(int *)(param_1 + 4) = iVar3;
  local_14 = param_2;
  if (iVar3 == 0) goto LAB_005684a4;
  piVar2 = (int *)(iVar3 + 4);
  local_14 = *(int *)(iVar3 + 4);
  do {
    iVar3 = local_14;
    if (local_14 == 0) {
LAB_005684a4:
      uVar5 = std::__throw_bad_weak_ptr();
      piVar2 = extraout_r2;
      iVar3 = extraout_r3;
    }
    DataMemoryBarrier(0x1f);
    ExclusiveAccess(piVar2);
    iVar4 = *piVar2;
    bVar1 = false;
    if (iVar4 == local_14) {
      bVar1 = (bool)hasExclusiveAccess(piVar2);
      if (bVar1) {
        *piVar2 = iVar3 + 1;
      }
      DataMemoryBarrier(0x1f);
    }
    local_14 = iVar4;
  } while (!bVar1);
  *(undefined4 *)uVar5 = *(undefined4 *)((ulonglong)uVar5 >> 0x20);
  return;
}

// ---- FUN_005684d0  @ 0x5684d0
void FUN_005684d0(int param_1,undefined4 param_2)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 local_40;
  __shared_count a_Stack_3c [4];
  undefined4 local_38;
  undefined4 local_34;
  undefined4 local_30;
  undefined4 local_2c;
  undefined4 *local_28 [2];
  undefined1 *local_20;
  undefined1 *local_1c;
  
  if (*(int *)(param_1 + 0x9c) != 0) {
    FUN_00568492(&local_40,param_1 + 4);
    uVar3 = *(undefined4 *)(param_1 + 0x9c);
    local_38 = local_40;
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_34,a_Stack_3c);
    FUN_00566e8e(&local_30,param_2);
    local_20 = (undefined1 *)0x0;
    local_28[0] = operator_new(0x10);
    uVar2 = local_2c;
    uVar1 = local_34;
    local_28[0][3] = 0;
    *local_28[0] = local_38;
    local_28[0][1] = 0;
    local_34 = 0;
    local_28[0][1] = uVar1;
    local_38 = 0;
    local_28[0][2] = local_30;
    local_2c = 0;
    local_30 = 0;
    local_28[0][3] = uVar2;
    local_1c = &LAB_005691d4_1;
    local_20 = &LAB_005676d2_1;
    FUN_005248dc(uVar3,(_Function_base *)local_28);
    std::_Function_base::~_Function_base((_Function_base *)local_28);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_2c);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_34);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)a_Stack_3c);
  }
  return;
}

// ---- FUN_00568594  @ 0x568594
void FUN_00568594(int param_1,undefined4 param_2)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 local_48;
  __shared_count a_Stack_44 [4];
  undefined4 local_40;
  undefined4 local_3c;
  undefined4 local_38;
  undefined4 local_34;
  undefined4 *local_30 [2];
  undefined1 *local_28;
  undefined1 *local_24;
  
  if (*(int *)(param_1 + 0x9c) != 0) {
    FUN_00568492(&local_48,param_1 + 4);
    uVar3 = *(undefined4 *)(param_1 + 0x9c);
    local_40 = local_48;
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_3c,a_Stack_44);
    FUN_00566e8e(&local_38,param_2);
    local_28 = (undefined1 *)0x0;
    local_30[0] = operator_new(0x10);
    uVar2 = local_34;
    uVar1 = local_3c;
    local_30[0][3] = 0;
    *local_30[0] = local_40;
    local_30[0][1] = 0;
    local_3c = 0;
    local_30[0][1] = uVar1;
    local_40 = 0;
    local_30[0][2] = local_38;
    local_34 = 0;
    local_38 = 0;
    local_30[0][3] = uVar2;
    local_24 = &LAB_00569200_1;
    local_28 = &LAB_0056761e_1;
    FUN_00524d1c(uVar3);
    std::_Function_base::~_Function_base((_Function_base *)local_30);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_34);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_3c);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)a_Stack_44);
  }
  return;
}

// ---- FUN_0056866c  @ 0x56866c
void FUN_0056866c(int param_1,undefined4 param_2)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 local_40;
  __shared_count a_Stack_3c [4];
  undefined4 local_38;
  undefined4 local_34;
  undefined4 local_30;
  undefined4 local_2c;
  undefined4 *local_28 [2];
  undefined1 *local_20;
  undefined1 *local_1c;
  
  if (*(int *)(param_1 + 0x9c) != 0) {
    FUN_00568492(&local_40,param_1 + 4);
    uVar3 = *(undefined4 *)(param_1 + 0x9c);
    local_38 = local_40;
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_34,a_Stack_3c);
    FUN_00566e8e(&local_30,param_2);
    local_20 = (undefined1 *)0x0;
    local_28[0] = operator_new(0x10);
    uVar2 = local_2c;
    uVar1 = local_34;
    local_28[0][3] = 0;
    *local_28[0] = local_38;
    local_28[0][1] = 0;
    local_34 = 0;
    local_28[0][1] = uVar1;
    local_38 = 0;
    local_28[0][2] = local_30;
    local_2c = 0;
    local_30 = 0;
    local_28[0][3] = uVar2;
    local_1c = &LAB_0056922c_1;
    local_20 = &LAB_00567678_1;
    FUN_00524940(uVar3,(_Function_base *)local_28);
    std::_Function_base::~_Function_base((_Function_base *)local_28);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_2c);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_34);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)a_Stack_3c);
  }
  return;
}

// ---- FUN_00568730  @ 0x568730
void FUN_00568730(int param_1)

{
  int iVar1;
  int iVar2;
  int iVar3;
  undefined4 local_38;
  undefined1 auStack_34 [4];
  undefined4 local_30;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_2c [4];
  char acStack_28 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_24 [4];
  
  iVar3 = *(int *)(param_1 + 0x94);
  while (iVar2 = *(int *)(param_1 + 0x90), iVar2 != iVar3) {
    iVar3 = iVar3 + -8;
    FUN_00566e8e(&local_30,iVar3);
    if (*(char *)(param_1 + 0x20) != '\0') {
      local_38 = FUN_00569760(local_30);
      FUN_00566efc(auStack_34,&local_38);
      std::operator+(acStack_28,(string *)"moveDeferredMessageAtFrontOfQueue; what=");
      FUN_00516680(1,acStack_28);
      FUN_007c5914(acStack_28);
      FUN_007c5914(auStack_34);
    }
    FUN_00566e8e(acStack_28,&local_30);
    FUN_0056866c(param_1,acStack_28);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_24);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_2c);
  }
  iVar1 = *(int *)(param_1 + 0x94);
  for (; iVar2 != iVar1; iVar2 = iVar2 + 8) {
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(iVar2 + 4));
  }
  *(int *)(param_1 + 0x94) = iVar3;
  return;
}

// ---- FUN_005687f8  @ 0x5687f8
undefined4 *
FUN_005687f8(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 *param_4)

{
  void *pvVar1;
  undefined4 *puVar2;
  undefined4 uVar3;
  undefined4 local_14;
  undefined4 uStack_10;
  
  *param_1 = 0;
  param_1[1] = 0;
  local_14 = param_2;
  uStack_10 = param_3;
  pvVar1 = operator_new(8);
  *param_1 = pvVar1;
  if (pvVar1 != (void *)0x0) {
    FUN_00569764(pvVar1,*param_4);
  }
  uVar3 = *param_1;
  local_14 = 0;
  puVar2 = operator_new(0x14);
  if (puVar2 != (undefined4 *)0x0) {
    puVar2[1] = 1;
    puVar2[2] = 1;
    puVar2[3] = uVar3;
    *puVar2 = &PTR_LAB_00566c00_1_00928988;
  }
  local_14 = param_1[1];
  param_1[1] = puVar2;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_14);
  return param_1;
}

// ---- FUN_0056892c  @ 0x56892c
undefined4 * FUN_0056892c(int *param_1,int *param_2,undefined4 *param_3)

{
  int iVar1;
  uint uVar2;
  uint uVar3;
  undefined4 *puVar4;
  undefined4 *puVar5;
  
  puVar4 = (undefined4 *)*param_1;
  iVar1 = (int)puVar4 - *param_2;
  uVar2 = iVar1 >> 2;
  puVar5 = param_3;
  for (uVar3 = uVar2; 0 < (int)uVar3; uVar3 = uVar3 - 1) {
    puVar4 = puVar4 + -1;
    *puVar5 = *puVar4;
    puVar5 = puVar5 + 1;
  }
  return param_3 + (uVar2 & ~(iVar1 >> 0x1f));
}

// ---- FUN_00568954  @ 0x568954
int * FUN_00568954(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 *param_4)

{
  void *pvVar1;
  undefined4 *puVar2;
  int iVar3;
  int local_14;
  
  *param_1 = 0;
  *(undefined4 *)(param_1 + 1) = 0;
  local_14 = param_2;
  pvVar1 = operator_new(0x14);
  *param_1 = (int)pvVar1;
  if (pvVar1 != (void *)0x0) {
    FUN_00566d8c(pvVar1,*param_4);
  }
  iVar3 = *param_1;
  local_14 = 0;
  puVar2 = operator_new(0x14);
  if (puVar2 != (undefined4 *)0x0) {
    puVar2[1] = 1;
    puVar2[2] = 1;
    puVar2[3] = iVar3;
    *puVar2 = &PTR_LAB_00566bec_1_009289a8;
  }
  local_14 = param_1[1];
  param_1[1] = (int)puVar2;
  iVar3 = *param_1;
  if (iVar3 != 0) {
    *(int *)(iVar3 + 4) = iVar3;
    std::__weak_count<(__gnu_cxx::_Lock_policy)2>::operator=
              ((__weak_count<(__gnu_cxx::_Lock_policy)2> *)(iVar3 + 8),
               (__shared_count *)(param_1 + 1));
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_14);
  return param_1;
}

// ---- FUN_00568abc  @ 0x568abc
void FUN_00568abc(undefined4 *param_1,uint param_2)

{
  StateInfo **ppSVar1;
  StateInfo **ppSVar2;
  StateInfo **ppSVar3;
  
  if (0x3fffffff < param_2) {
                    /* WARNING: Subroutine does not return */
    FUN_007c49e8("vector::reserve");
  }
  ppSVar2 = (StateInfo **)*param_1;
  if ((uint)(param_1[2] - (int)ppSVar2 >> 2) < param_2) {
    ppSVar3 = (StateInfo **)param_1[1];
    if (param_2 == 0) {
      ppSVar1 = (StateInfo **)0x0;
    }
    else {
      ppSVar1 = operator_new(param_2 * 4);
    }
    std::__copy_move<true,true,std::random_access_iterator_tag>::
    __copy_m<gpg::StateMachine::StateInfo*>(ppSVar2,ppSVar3,ppSVar1);
    FUN_00566d42(*param_1);
    *param_1 = ppSVar1;
    param_1[1] = ppSVar1 + ((int)ppSVar3 - (int)ppSVar2 >> 2);
    param_1[2] = ppSVar1 + param_2;
  }
  return;
}

// ---- FUN_00568b1c  @ 0x568b1c
void FUN_00568b1c(undefined4 *param_1,StateInfo **param_2,int *param_3,int *param_4)

{
  int iVar1;
  StateInfo **ppSVar2;
  uint uVar3;
  StateInfo **ppSVar4;
  uint uVar5;
  int local_30;
  int local_2c [2];
  
  iVar1 = *param_3;
  local_30 = *param_4;
  if (iVar1 != local_30) {
    ppSVar4 = (StateInfo **)param_1[1];
    uVar5 = iVar1 - local_30 >> 2;
    if ((uint)(param_1[2] - (int)ppSVar4 >> 2) < uVar5) {
      uVar5 = FUN_00567fa8(param_1,uVar5,"vector::_M_range_insert");
      ppSVar4 = (StateInfo **)0x0;
      if (uVar5 != 0) {
        if (0x3fffffff < uVar5) {
          FUN_007c4844();
        }
        ppSVar4 = operator_new(uVar5 * 4);
      }
      ppSVar2 = std::__copy_move<true,true,std::random_access_iterator_tag>::
                __copy_m<gpg::StateMachine::StateInfo*>((StateInfo **)*param_1,param_2,ppSVar4);
      local_2c[0] = *param_3;
      local_30 = *param_4;
      ppSVar2 = (StateInfo **)FUN_0056892c(local_2c,&local_30,ppSVar2);
      ppSVar2 = std::__copy_move<true,true,std::random_access_iterator_tag>::
                __copy_m<gpg::StateMachine::StateInfo*>(param_2,(StateInfo **)param_1[1],ppSVar2);
      FUN_00566d42(*param_1);
      *param_1 = ppSVar4;
      param_1[1] = ppSVar2;
      param_1[2] = ppSVar4 + uVar5;
    }
    else {
      uVar3 = (int)ppSVar4 - (int)param_2 >> 2;
      if (uVar5 < uVar3) {
        std::__copy_move<true,true,std::random_access_iterator_tag>::
        __copy_m<gpg::StateMachine::StateInfo*>(ppSVar4 + -uVar5,ppSVar4,ppSVar4);
        iVar1 = (int)(ppSVar4 + -uVar5) - (int)param_2 >> 2;
        param_1[1] = uVar5 * 4 + param_1[1];
        if (iVar1 != 0) {
          memmove(ppSVar4 + -iVar1,param_2,iVar1 * 4);
        }
        local_2c[0] = *param_3;
        local_30 = *param_4;
      }
      else {
        iVar1 = iVar1 + uVar3 * -4;
        local_2c[0] = iVar1;
        FUN_0056892c(local_2c,&local_30,ppSVar4,uVar3,iVar1);
        ppSVar2 = (StateInfo **)(param_1[1] + (uVar5 - uVar3) * 4);
        param_1[1] = ppSVar2;
        std::__copy_move<true,true,std::random_access_iterator_tag>::
        __copy_m<gpg::StateMachine::StateInfo*>(param_2,ppSVar4,ppSVar2);
        param_1[1] = param_1[1] + uVar3 * 4;
        local_2c[0] = *param_3;
        local_30 = iVar1;
      }
      FUN_0056892c(local_2c,&local_30,param_2);
    }
  }
  return;
}

// ---- FUN_00568c44  @ 0x568c44
int FUN_00568c44(int param_1)

{
  int *piVar1;
  undefined4 *puVar2;
  int local_54;
  int local_50;
  undefined1 auStack_4c [4];
  char acStack_48 [4];
  string asStack_44 [4];
  undefined1 auStack_40 [4];
  string asStack_3c [4];
  string asStack_38 [4];
  undefined4 local_34;
  int *local_30;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_2c [8];
  
  piVar1 = (int *)(param_1 + 0x48);
  local_34 = *(undefined4 *)(param_1 + 0x58);
  local_54 = *(int *)(param_1 + 0x4c) - *piVar1 >> 2;
  local_30 = *(int **)(param_1 + 0x54);
  FUN_00568b1c(piVar1,*(int *)(param_1 + 0x4c),(string *)&local_34,&local_30,0);
  if (*(char *)(param_1 + 0x20) != '\0') {
    local_50 = *(int *)(param_1 + 0x4c) - *(int *)(param_1 + 0x48) >> 2;
    FUN_00566ff8(auStack_4c,&local_50);
    std::operator+(acStack_48,(string *)"moveTempStackToStateStack: X state_stack_.size()=");
    std::operator+(asStack_44,acStack_48);
    FUN_00566ff8(auStack_40,&local_54);
    std::operator+(asStack_3c,asStack_44);
    std::operator+(asStack_38,(char *)asStack_3c);
    puVar2 = (undefined4 *)FUN_00566fa4(piVar1);
    FUN_00566eb0(&local_30,*puVar2);
    (**(code **)(*local_30 + 0x10))();
    std::operator+((string *)&local_34,asStack_38);
    FUN_00516680(1,(string *)&local_34);
    FUN_007c5914((string *)&local_34);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_2c);
    FUN_007c5914(asStack_38);
    FUN_007c5914(asStack_3c);
    FUN_007c5914(auStack_40);
    FUN_007c5914(asStack_44);
    FUN_007c5914(acStack_48);
    FUN_007c5914(auStack_4c);
  }
  return local_54;
}

// ---- FUN_00568d90  @ 0x568d90
void FUN_00568d90(int *param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4)

{
  uint uVar1;
  StateInfo **ppSVar2;
  StateInfo **ppSVar3;
  undefined4 *puVar4;
  int iVar5;
  
  puVar4 = (undefined4 *)param_1[1];
  if (puVar4 != (undefined4 *)param_1[2]) {
    if (puVar4 != (undefined4 *)0x0) {
      *puVar4 = *param_2;
    }
    param_1[1] = param_1[1] + 4;
    return;
  }
  uVar1 = FUN_00567fa8(param_1,1,"vector::_M_emplace_back_aux",puVar4,param_4);
  ppSVar2 = (StateInfo **)0x0;
  if (uVar1 != 0) {
    if (0x3fffffff < uVar1) {
      FUN_007c4844();
    }
    ppSVar2 = operator_new(uVar1 * 4);
  }
  iVar5 = param_1[1] - *param_1 >> 2;
  if (ppSVar2 + iVar5 != (StateInfo **)0x0) {
    ppSVar2[iVar5] = (StateInfo *)*param_2;
  }
  ppSVar3 = std::__copy_move<true,true,std::random_access_iterator_tag>::
            __copy_m<gpg::StateMachine::StateInfo*>
                      ((StateInfo **)*param_1,(StateInfo **)param_1[1],ppSVar2);
  FUN_00566d42(*param_1);
  *param_1 = (int)ppSVar2;
  param_1[1] = (int)(ppSVar3 + 1);
  param_1[2] = (int)(ppSVar2 + uVar1);
  return;
}

// ---- FUN_00568e08  @ 0x568e08
int FUN_00568e08(int param_1)

{
  int *piVar1;
  int local_34;
  int local_30;
  undefined1 auStack_2c [4];
  char acStack_28 [4];
  string asStack_24 [4];
  undefined1 auStack_20 [4];
  string asStack_1c [4];
  
  *(undefined4 *)(param_1 + 0x58) = *(undefined4 *)(param_1 + 0x54);
  piVar1 = (int *)FUN_0056813c();
  local_34 = *piVar1;
  do {
    FUN_00568d90(param_1 + 0x54,&local_34);
    local_34 = *(int *)(local_34 + 8);
    if (local_34 == 0) break;
  } while (*(char *)(local_34 + 0xc) == '\0');
  if (*(char *)(param_1 + 0x20) != '\0') {
    local_30 = *(int *)(param_1 + 0x58) - *(int *)(param_1 + 0x54) >> 2;
    FUN_00566ff8(auStack_2c,&local_30);
    std::operator+(acStack_28,
                   (string *)"setupTempStateStackWithStatesToEnter: X temp_state_stack_count_=");
    std::operator+(asStack_24,acStack_28);
    FUN_00567478(auStack_20,local_34);
    std::operator+(asStack_1c,asStack_24);
    FUN_00516680(1,asStack_1c);
    FUN_007c5914(asStack_1c);
    FUN_007c5914(auStack_20);
    FUN_007c5914(asStack_24);
    FUN_007c5914(acStack_28);
    FUN_007c5914(auStack_2c);
  }
  return local_34;
}

// ---- FUN_00568ef0  @ 0x568ef0
void FUN_00568ef0(int *param_1,undefined4 param_2,undefined4 *param_3)

{
  undefined4 *puVar1;
  int iVar2;
  int iVar3;
  undefined1 *puVar4;
  code *pcVar5;
  int *piVar6;
  undefined4 uVar7;
  undefined1 auStack_48 [4];
  undefined1 auStack_44 [4];
  undefined4 local_40;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_3c [4];
  int local_38;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_34 [4];
  int local_30;
  int local_2c [2];
  
  puVar1 = (undefined4 *)FUN_00566fa4(param_1 + 0x12);
  FUN_00566eb0(&local_40,*puVar1);
  pcVar5 = *(code **)(*param_1 + 0x1c);
  FUN_00566e8e(&local_30,param_3);
  iVar2 = (*pcVar5)(param_1,&local_30);
  piVar6 = param_1 + 9;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_2c);
  iVar3 = FUN_005670d6(piVar6);
  if (iVar3 == 0) {
    if (iVar2 == 0) goto LAB_00568fb8;
    uVar7 = *param_3;
    puVar4 = auStack_44;
    pcVar5 = *(code **)(*param_1 + 0x20);
    FUN_00566e8e(&local_30,param_3);
    (*pcVar5)(puVar4,param_1,&local_30);
    FUN_00567c98(piVar6,uVar7,puVar4,param_2,local_40,param_1[0x20]);
  }
  else {
    if (param_1[0x20] == 0) goto LAB_00568fb8;
    uVar7 = *param_3;
    puVar4 = auStack_48;
    pcVar5 = *(code **)(*param_1 + 0x20);
    FUN_00566e8e(&local_30,param_3);
    (*pcVar5)(puVar4,param_1,&local_30);
    FUN_00567c98(piVar6,uVar7,puVar4,param_2,local_40,param_1[0x20]);
  }
  FUN_007c5914(puVar4);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_2c);
LAB_00568fb8:
  FUN_00566eb0(&local_38,param_1 + 0x20);
  if (local_38 != 0) {
    while( true ) {
      if ((char)param_1[8] != '\0') {
        FUN_005166ae(1,"handleMessage: new destination call exit/enter");
      }
      FUN_00566eb0(&local_30,&local_38);
      uVar7 = FUN_00568e08(param_1,&local_30);
      std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
                ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_2c);
      FUN_005673ec(param_1,uVar7);
      uVar7 = FUN_00568c44(param_1);
      FUN_005672d0(param_1,uVar7);
      FUN_00568730(param_1);
      if (local_38 == param_1[0x20]) break;
      local_38 = param_1[0x20];
      std::__shared_count<(__gnu_cxx::_Lock_policy)2>::operator=
                (a_Stack_34,(__shared_count *)(param_1 + 0x21));
    }
    local_2c[0] = param_1[0x21];
    local_30 = local_38;
    param_1[0x20] = 0;
    param_1[0x21] = 0;
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_2c);
  }
  if (local_38 != 0) {
    if (local_38 == param_1[6]) {
      (**(code **)(*param_1 + 0x18))(param_1);
      FUN_005679d6(param_1);
    }
    else if (local_38 == param_1[4]) {
      (**(code **)(*param_1 + 0x14))(param_1);
    }
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_34);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_3c);
  return;
}

// ---- FUN_005690bc  @ 0x5690bc
void FUN_005690bc(int param_1,undefined4 *param_2)

{
  undefined4 uVar1;
  int iVar2;
  undefined4 local_28;
  undefined1 auStack_24 [4];
  char acStack_20 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_1c [8];
  
  if (*(int *)(param_1 + 0x9c) != 0) {
    if (*(char *)(param_1 + 0x20) != '\0') {
      local_28 = FUN_00569760(*param_2);
      FUN_00566efc(auStack_24,&local_28);
      std::operator+(acStack_20,(string *)"handleMessage: E message.Type()=");
      FUN_00516680(1,acStack_20);
      FUN_007c5914(acStack_20);
      FUN_007c5914(auStack_24);
    }
    *(undefined4 *)(param_1 + 0x88) = *param_2;
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::operator=
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(param_1 + 0x8c),
               (__shared_count *)(param_2 + 1));
    if (*(char *)(param_1 + 0x44) == '\0') {
      iVar2 = FUN_00569760(*(undefined4 *)(param_1 + 0x88));
      if (iVar2 != -2) {
        local_28 = FUN_00569760(*param_2);
        FUN_00566efc(auStack_24,&local_28);
        std::operator+(acStack_20,
                       (string *)
                       "StateMachine.handleMessage: The start method not called, received message:")
        ;
        FUN_00516680(4,acStack_20);
        FUN_007c5914(acStack_20);
        FUN_007c5914(auStack_24);
        return;
      }
      *(undefined1 *)(param_1 + 0x44) = 1;
      FUN_005672d0(param_1,0);
      uVar1 = 0;
    }
    else {
      FUN_00566e8e(acStack_20,param_2);
      uVar1 = FUN_00567838(param_1,acStack_20);
      std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_1c);
    }
    FUN_00566e8e(acStack_20,param_2);
    FUN_00568ef0(param_1,uVar1,acStack_20);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_1c);
  }
  return;
}

// ---- FUN_00569258  @ 0x569258
void FUN_00569258(int param_1,int param_2)

{
  undefined4 uVar1;
  int *piVar2;
  int local_14;
  
  local_14 = param_2;
  if (*(char *)(param_1 + 0x20) != '\0') {
    uVar1 = (**(code **)(**(int **)(param_1 + 0x78) + 0x10))();
    FUN_00566fac(&local_14,"setupInitialStateStack: E initial_state_=",uVar1);
    FUN_00516680(1,&local_14);
    FUN_007c5914(&local_14);
  }
  piVar2 = (int *)FUN_0056813c(param_1 + 0x60,param_1 + 0x78);
  for (local_14 = *piVar2; local_14 != 0; local_14 = *(int *)(local_14 + 8)) {
    FUN_00568d90(param_1 + 0x54,&local_14);
  }
  *(undefined4 *)(param_1 + 0x4c) = *(undefined4 *)(param_1 + 0x48);
  FUN_00568c44(param_1);
  return;
}

// ---- FUN_005693d0  @ 0x5693d0
int FUN_005693d0(int param_1)

{
  int iVar1;
  undefined4 *puVar2;
  int iVar3;
  undefined4 *puVar4;
  
  FUN_007be0f8(param_1 + 0x24);
  iVar3 = *(int *)(param_1 + 0x18);
  for (iVar1 = *(int *)(param_1 + 0x14); iVar1 != iVar3; iVar1 = iVar1 + 0x18) {
    std::_Function_base::~_Function_base((_Function_base *)(iVar1 + 8));
  }
  if (*(void **)(param_1 + 0x14) != (void *)0x0) {
    operator_delete(*(void **)(param_1 + 0x14));
  }
  puVar2 = *(undefined4 **)(param_1 + 0xc);
  while (puVar2 != (undefined4 *)(param_1 + 0xc)) {
    puVar4 = (undefined4 *)*puVar2;
    std::_Function_base::~_Function_base((_Function_base *)(puVar2 + 2));
    operator_delete(puVar2);
    puVar2 = puVar4;
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(param_1 + 8));
  return param_1;
}

// ---- FUN_00569420  @ 0x569420
void FUN_00569420(void *param_1)

{
  FUN_005693d0((int)param_1 + 0xc);
  FUN_007c5914((int)param_1 + 8);
  std::__weak_count<(__gnu_cxx::_Lock_policy)2>::~__weak_count
            ((__weak_count<(__gnu_cxx::_Lock_policy)2> *)((int)param_1 + 4));
  operator_delete(param_1);
  return;
}

// ---- FUN_005696a0  @ 0x5696a0
void FUN_005696a0(undefined4 *param_1,undefined4 param_2,undefined4 *param_3)

{
  param_1[1] = 0;
  param_1[2] = 0;
  param_1[3] = param_2;
  *param_1 = &PTR_FUN_005696d0_1_00928a78;
  param_1[4] = *param_3;
  *param_3 = &DAT_00972528;
  return;
}

// ---- FUN_005696d0  @ 0x5696d0
undefined4 * FUN_005696d0(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_005696d0_1_00928a78;
  FUN_007c5914(param_1 + 4);
  std::__weak_count<(__gnu_cxx::_Lock_policy)2>::~__weak_count
            ((__weak_count<(__gnu_cxx::_Lock_policy)2> *)(param_1 + 2));
  return param_1;
}

// ---- FUN_005696f4  @ 0x5696f4
void * FUN_005696f4(void *param_1)

{
  FUN_005696d0();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_00569760  @ 0x569760
undefined4 FUN_00569760(int param_1)

{
  return *(undefined4 *)(param_1 + 4);
}

// ---- FUN_00569764  @ 0x569764
void FUN_00569764(undefined4 *param_1,undefined4 param_2)

{
  param_1[1] = param_2;
  *param_1 = &DAT_00928a98;
  return;
}

// ---- FUN_00569798  @ 0x569798
void FUN_00569798(int param_1)

{
  if ((*(uint *)(param_1 + 0x3c) & 0xff) != 0) {
    if (((int)(*(uint *)(param_1 + 0x3c) << 0x1f) < 0) &&
       (*(undefined4 **)(param_1 + 4) != &DAT_00960c38)) {
      FUN_007c5b70();
    }
    if ((*(int *)(param_1 + 0x3c) << 0x1e < 0) && (*(undefined4 **)(param_1 + 8) != &DAT_00960c38))
    {
      FUN_007c5b70();
    }
    if ((*(int *)(param_1 + 0x3c) << 0x1d < 0) && (*(undefined4 **)(param_1 + 0xc) != &DAT_00960c38)
       ) {
      FUN_007c5b70();
    }
    *(undefined4 *)(param_1 + 0x10) = 1;
    *(undefined4 *)(param_1 + 0x14) = 1;
    *(undefined4 *)(param_1 + 0x18) = 0;
    *(undefined4 *)(param_1 + 0x1c) = 0;
    *(undefined4 *)(param_1 + 0x20) = 0;
    *(undefined4 *)(param_1 + 0x24) = 0;
  }
  if ((*(uint *)(param_1 + 0x3c) & 0xff00) != 0) {
    if (((int)(*(uint *)(param_1 + 0x3c) << 0x17) < 0) &&
       (*(undefined4 **)(param_1 + 0x28) != &DAT_00960c38)) {
      FUN_007c5b70();
    }
    if ((*(int *)(param_1 + 0x3c) << 0x16 < 0) &&
       (*(undefined4 **)(param_1 + 0x2c) != &DAT_00960c38)) {
      FUN_007c5b70();
    }
    *(undefined4 *)(param_1 + 0x30) = 0;
    *(undefined4 *)(param_1 + 0x34) = 0;
  }
  memset((void *)(param_1 + 0x3c),0,4);
  return;
}

// ---- FUN_00569844  @ 0x569844
void FUN_00569844(int param_1,undefined4 param_2,undefined4 param_3)

{
  int iVar1;
  int extraout_r1;
  int extraout_r1_00;
  int extraout_r1_01;
  int extraout_r1_02;
  int extraout_r1_03;
  int iVar2;
  undefined4 uVar3;
  
  iVar1 = param_1;
  uVar3 = param_2;
  if (*(int *)(param_1 + 0x3c) << 0x1f < 0) {
    FUN_00530b60(1,*(undefined4 *)(param_1 + 4),param_2,*(int *)(param_1 + 0x3c),param_1,param_2,
                 param_3);
  }
  if (*(int *)(param_1 + 0x3c) << 0x1e < 0) {
    FUN_00530b60(2,*(undefined4 *)(param_1 + 8),param_2,*(int *)(param_1 + 0x3c),iVar1,uVar3,param_3
                );
  }
  iVar2 = *(int *)(param_1 + 0x3c) << 0x1d;
  if (iVar2 < 0) {
    FUN_00530b60(3,*(undefined4 *)(param_1 + 0xc),param_2,iVar2,iVar1,uVar3,param_3);
  }
  if (*(int *)(param_1 + 0x3c) << 0x1c < 0) {
    FUN_00530b46(4,*(undefined4 *)(param_1 + 0x10),param_2);
  }
  iVar1 = *(int *)(param_1 + 0x3c) << 0x1b;
  if (iVar1 < 0) {
    FUN_00530b46(5,*(undefined4 *)(param_1 + 0x14),param_2);
    iVar1 = extraout_r1;
  }
  if (*(int *)(param_1 + 0x3c) << 0x1a < 0) {
    FUN_005309ec(6,*(undefined4 *)(param_1 + 0x18),param_2);
    iVar1 = extraout_r1_00;
  }
  if (*(int *)(param_1 + 0x3c) << 0x19 < 0) {
    FUN_005309ec(7,*(undefined4 *)(param_1 + 0x1c),param_2);
    iVar1 = extraout_r1_01;
  }
  if (*(int *)(param_1 + 0x3c) << 0x18 < 0) {
    FUN_00530a06(8,iVar1,*(undefined4 *)(param_1 + 0x20),*(undefined4 *)(param_1 + 0x24),param_2);
  }
  iVar1 = *(int *)(param_1 + 0x3c) << 0x17;
  if (iVar1 < 0) {
    FUN_00530b60(9,*(undefined4 *)(param_1 + 0x28),param_2);
    iVar1 = extraout_r1_02;
  }
  if (*(int *)(param_1 + 0x3c) << 0x16 < 0) {
    FUN_00530b60(10,*(undefined4 *)(param_1 + 0x2c),param_2);
    iVar1 = extraout_r1_03;
  }
  if (*(int *)(param_1 + 0x3c) << 0x15 < 0) {
    FUN_00530a06(0xb,iVar1,*(undefined4 *)(param_1 + 0x30),*(undefined4 *)(param_1 + 0x34),param_2);
  }
  return;
}

// ---- FUN_0056991c  @ 0x56991c
undefined4 FUN_0056991c(int param_1,uint *param_2)

{
  byte bVar1;
  undefined4 uVar2;
  
  if (*(byte **)(param_1 + 4) < *(byte **)(param_1 + 8)) {
    bVar1 = **(byte **)(param_1 + 4);
    if (-1 < (int)((uint)bVar1 << 0x18)) {
      *param_2 = (uint)bVar1;
      param_2[1] = 0;
      *(int *)(param_1 + 4) = *(int *)(param_1 + 4) + 1;
      return 1;
    }
  }
  uVar2 = FUN_0053132e();
  return uVar2;
}

// ---- FUN_00569940  @ 0x569940
undefined4 FUN_00569940(uint param_1)

{
  undefined4 uVar1;
  
  if (0x7f < param_1) {
    uVar1 = FUN_00531a52();
    return uVar1;
  }
  return 1;
}

// ---- FUN_0056994c  @ 0x56994c
int FUN_0056994c(int *param_1)

{
  int iVar1;
  
  iVar1 = FUN_00569940(*(undefined4 *)(*param_1 + -0xc));
  return iVar1 + *(int *)(*param_1 + -0xc);
}

// ---- FUN_00569964  @ 0x569964
int FUN_00569964(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  int iVar2;
  int extraout_r2;
  int iVar3;
  
  iVar1 = 0;
  if ((*(uint *)(param_1 + 0x3c) & 0xff) != 0) {
    iVar1 = 0;
    if ((*(uint *)(param_1 + 0x3c) & 1) != 0) {
      iVar1 = FUN_0056994c(*(undefined4 *)(param_1 + 4));
      iVar1 = iVar1 + 1;
    }
    if (*(int *)(param_1 + 0x3c) << 0x1e < 0) {
      iVar2 = FUN_0056994c(*(undefined4 *)(param_1 + 8));
      iVar1 = iVar1 + iVar2 + 1;
    }
    if (*(int *)(param_1 + 0x3c) << 0x1d < 0) {
      iVar2 = FUN_0056994c(*(undefined4 *)(param_1 + 0xc));
      iVar1 = iVar1 + iVar2 + 1;
    }
    if (*(int *)(param_1 + 0x3c) << 0x1c < 0) {
      if (*(int *)(param_1 + 0x10) < 0) {
        iVar2 = 10;
      }
      else {
        iVar2 = FUN_00569940();
      }
      iVar1 = iVar1 + iVar2 + 1;
    }
    if (*(int *)(param_1 + 0x3c) << 0x1b < 0) {
      if (*(int *)(param_1 + 0x14) < 0) {
        iVar2 = 10;
      }
      else {
        iVar2 = FUN_00569940();
      }
      iVar1 = iVar1 + iVar2 + 1;
    }
    if (*(int *)(param_1 + 0x3c) << 0x1a < 0) {
      iVar2 = FUN_00569940(*(undefined4 *)(param_1 + 0x18));
      iVar1 = iVar1 + iVar2 + 1;
    }
    if (*(int *)(param_1 + 0x3c) << 0x19 < 0) {
      iVar2 = FUN_00569940(*(undefined4 *)(param_1 + 0x1c));
      iVar1 = iVar1 + iVar2 + 1;
    }
    if (*(int *)(param_1 + 0x3c) << 0x18 < 0) {
      iVar2 = FUN_00531a7a(*(undefined4 *)(param_1 + 0x20),*(undefined4 *)(param_1 + 0x24));
      iVar1 = iVar1 + iVar2 + 1;
    }
  }
  if ((*(uint *)(param_1 + 0x3c) & 0xff00) != 0) {
    if ((int)(*(uint *)(param_1 + 0x3c) << 0x17) < 0) {
      iVar2 = FUN_0056994c(*(undefined4 *)(param_1 + 0x28));
      iVar1 = iVar1 + iVar2 + 1;
    }
    iVar2 = *(int *)(param_1 + 0x3c) << 0x16;
    if (iVar2 < 0) {
      iVar2 = FUN_0056994c(*(undefined4 *)(param_1 + 0x2c));
      iVar1 = iVar1 + iVar2 + 1;
      iVar2 = extraout_r2;
    }
    iVar3 = *(int *)(param_1 + 0x3c) << 0x15;
    if (iVar3 < 0) {
      iVar2 = FUN_00531a7a(*(undefined4 *)(param_1 + 0x30),*(undefined4 *)(param_1 + 0x34),iVar2,
                           iVar3,param_4);
      iVar1 = iVar1 + iVar2 + 1;
    }
  }
  *(int *)(param_1 + 0x38) = iVar1;
  return iVar1;
}

// ---- FUN_00569a3e  @ 0x569a3e
bool FUN_00569a3e(int param_1)

{
  return param_1 - 1U < 2;
}

// ---- FUN_00569a4a  @ 0x569a4a
bool FUN_00569a4a(int param_1)

{
  return param_1 - 1U < 3;
}

// ---- FUN_00569a58  @ 0x569a58
int FUN_00569a58(int param_1,int param_2)

{
  int iVar1;
  undefined4 *puVar2;
  int iVar3;
  uint uVar4;
  byte *pbVar5;
  uint uVar6;
  char *pcVar7;
  int iVar8;
  int local_24;
  
  iVar8 = param_1;
  local_24 = param_2;
LAB_00569a6e:
  do {
    pbVar5 = *(byte **)(param_2 + 4);
    if ((pbVar5 < *(byte **)(param_2 + 8)) && (uVar4 = (uint)*pbVar5, -1 < (int)(uVar4 << 0x18))) {
      *(uint *)(param_2 + 0x14) = uVar4;
      *(byte **)(param_2 + 4) = pbVar5 + 1;
    }
    else {
      uVar4 = FUN_00531548(param_2);
      *(uint *)(param_2 + 0x14) = uVar4;
    }
    if (uVar4 == 0) {
      return 1;
    }
    uVar6 = uVar4 & 7;
    switch(uVar4 >> 3) {
    case 1:
      if (uVar6 == 2) {
        *(uint *)(param_1 + 0x3c) = *(uint *)(param_1 + 0x3c) | 1;
        if (*(undefined4 **)(param_1 + 4) == &DAT_00960c38) {
          puVar2 = operator_new(4);
          *puVar2 = &DAT_00972528;
          *(undefined4 **)(param_1 + 4) = puVar2;
        }
        iVar3 = FUN_00530d42(param_2,*(undefined4 *)(param_1 + 4));
        if (iVar3 == 0) {
          return 0;
        }
        pcVar7 = *(char **)(param_2 + 4);
        if ((pcVar7 < *(char **)(param_2 + 8)) && (*pcVar7 == '\x12')) {
          *(char **)(param_2 + 4) = pcVar7 + 1;
LAB_00569b0c:
          *(uint *)(param_1 + 0x3c) = *(uint *)(param_1 + 0x3c) | 2;
          if (*(undefined4 **)(param_1 + 8) == &DAT_00960c38) {
            puVar2 = operator_new(4);
            *puVar2 = &DAT_00972528;
            *(undefined4 **)(param_1 + 8) = puVar2;
          }
          iVar3 = FUN_00530d42(param_2,*(undefined4 *)(param_1 + 8));
          if (iVar3 == 0) {
            return 0;
          }
          pcVar7 = *(char **)(param_2 + 4);
          if ((pcVar7 < *(char **)(param_2 + 8)) && (*pcVar7 == '\x1a')) {
            *(char **)(param_2 + 4) = pcVar7 + 1;
LAB_00569b54:
            *(uint *)(param_1 + 0x3c) = *(uint *)(param_1 + 0x3c) | 4;
            if (*(undefined4 **)(param_1 + 0xc) == &DAT_00960c38) {
              puVar2 = operator_new(4);
              *puVar2 = &DAT_00972528;
              *(undefined4 **)(param_1 + 0xc) = puVar2;
            }
            iVar3 = FUN_00530d42(param_2,*(undefined4 *)(param_1 + 0xc));
            if (iVar3 == 0) {
              return 0;
            }
            pcVar7 = *(char **)(param_2 + 4);
            if ((pcVar7 < *(char **)(param_2 + 8)) && (*pcVar7 == ' ')) {
              *(char **)(param_2 + 4) = pcVar7 + 1;
LAB_00569ba0:
              iVar1 = FUN_005307ec(param_2,&local_24);
              iVar3 = local_24;
              if (iVar1 == 0) {
                return 0;
              }
              iVar1 = FUN_00569a3e(local_24);
              if (iVar1 != 0) {
                *(int *)(param_1 + 0x10) = iVar3;
                *(uint *)(param_1 + 0x3c) = *(uint *)(param_1 + 0x3c) | 8;
              }
              pcVar7 = *(char **)(param_2 + 4);
              if ((pcVar7 < *(char **)(param_2 + 8)) && (*pcVar7 == '(')) {
                *(char **)(param_2 + 4) = pcVar7 + 1;
LAB_00569be2:
                iVar1 = FUN_005307ec(param_2,&local_24);
                iVar3 = local_24;
                if (iVar1 == 0) {
                  return 0;
                }
                iVar1 = FUN_00569a4a(local_24);
                if (iVar1 != 0) {
                  *(int *)(param_1 + 0x14) = iVar3;
                  *(uint *)(param_1 + 0x3c) = *(uint *)(param_1 + 0x3c) | 0x10;
                }
                pcVar7 = *(char **)(param_2 + 4);
                if ((pcVar7 < *(char **)(param_2 + 8)) && (*pcVar7 == '0')) {
                  *(char **)(param_2 + 4) = pcVar7 + 1;
LAB_00569c26:
                  iVar3 = FUN_005307ec(param_2,param_1 + 0x18);
                  if (iVar3 == 0) {
                    return 0;
                  }
                  *(uint *)(param_1 + 0x3c) = *(uint *)(param_1 + 0x3c) | 0x20;
                  pcVar7 = *(char **)(param_2 + 4);
                  if ((pcVar7 < *(char **)(param_2 + 8)) && (*pcVar7 == '8')) {
                    *(char **)(param_2 + 4) = pcVar7 + 1;
LAB_00569c5c:
                    iVar3 = FUN_005307ec(param_2,param_1 + 0x1c);
                    if (iVar3 == 0) {
                      return 0;
                    }
                    *(uint *)(param_1 + 0x3c) = *(uint *)(param_1 + 0x3c) | 0x40;
                    pcVar7 = *(char **)(param_2 + 4);
                    if ((pcVar7 < *(char **)(param_2 + 8)) && (*pcVar7 == '@')) {
                      *(char **)(param_2 + 4) = pcVar7 + 1;
LAB_00569c90:
                      iVar3 = FUN_0056991c(param_2,param_1 + 0x20);
                      if (iVar3 == 0) {
                        return 0;
                      }
                      *(uint *)(param_1 + 0x3c) = *(uint *)(param_1 + 0x3c) | 0x80;
                      pcVar7 = *(char **)(param_2 + 4);
                      if ((pcVar7 < *(char **)(param_2 + 8)) && (*pcVar7 == 'J')) {
                        *(char **)(param_2 + 4) = pcVar7 + 1;
LAB_00569cc2:
                        *(uint *)(param_1 + 0x3c) = *(uint *)(param_1 + 0x3c) | 0x100;
                        if (*(undefined4 **)(param_1 + 0x28) == &DAT_00960c38) {
                          puVar2 = operator_new(4);
                          *puVar2 = &DAT_00972528;
                          *(undefined4 **)(param_1 + 0x28) = puVar2;
                        }
                        iVar3 = FUN_00530d42(param_2,*(undefined4 *)(param_1 + 0x28));
                        if (iVar3 == 0) {
                          return 0;
                        }
                        pcVar7 = *(char **)(param_2 + 4);
                        if ((pcVar7 < *(char **)(param_2 + 8)) && (*pcVar7 == 'R')) {
                          *(char **)(param_2 + 4) = pcVar7 + 1;
LAB_00569d0e:
                          *(uint *)(param_1 + 0x3c) = *(uint *)(param_1 + 0x3c) | 0x200;
                          if (*(undefined4 **)(param_1 + 0x2c) == &DAT_00960c38) {
                            puVar2 = operator_new(4);
                            *puVar2 = &DAT_00972528;
                            *(undefined4 **)(param_1 + 0x2c) = puVar2;
                          }
                          iVar3 = FUN_00530d42(param_2,*(undefined4 *)(param_1 + 0x2c));
                          if (iVar3 == 0) {
                            return 0;
                          }
                          pcVar7 = *(char **)(param_2 + 4);
                          if ((pcVar7 < *(char **)(param_2 + 8)) && (*pcVar7 == 'X')) {
                            *(char **)(param_2 + 4) = pcVar7 + 1;
LAB_00569d58:
                            iVar3 = FUN_0056991c(param_2,param_1 + 0x30);
                            if (iVar3 == 0) {
                              return 0;
                            }
                            *(uint *)(param_1 + 0x3c) = *(uint *)(param_1 + 0x3c) | 0x400;
                            if ((*(int *)(param_2 + 4) == *(int *)(param_2 + 8)) &&
                               ((*(int *)(param_2 + 0x20) != 0 ||
                                (*(int *)(param_2 + 0xc) == *(int *)(param_2 + 0x1c))))) {
                              *(undefined4 *)(param_2 + 0x14) = 0;
                              *(undefined1 *)(param_2 + 0x18) = 1;
                              return iVar3;
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
        goto LAB_00569a6e;
      }
      break;
    case 2:
      if (uVar6 == 2) goto LAB_00569b0c;
      break;
    case 3:
      if (uVar6 == 2) goto LAB_00569b54;
      break;
    case 4:
      if (uVar6 == 0) goto LAB_00569ba0;
      break;
    case 5:
      if (uVar6 == 0) goto LAB_00569be2;
      break;
    case 6:
      if (uVar6 == 0) goto LAB_00569c26;
      break;
    case 7:
      if (uVar6 == 0) goto LAB_00569c5c;
      break;
    case 8:
      if (uVar6 == 0) goto LAB_00569c90;
      break;
    case 9:
      if (uVar6 == 2) goto LAB_00569cc2;
      break;
    case 10:
      if (uVar6 == 2) goto LAB_00569d0e;
      break;
    case 0xb:
      if (uVar6 == 0) goto LAB_00569d58;
    }
    if (uVar6 == 4) {
      return 1;
    }
    iVar3 = FUN_0053086a(param_2,uVar4,uVar4,uVar6,iVar8);
    if (iVar3 == 0) {
      return 0;
    }
  } while( true );
}

// ---- FUN_00569dbc  @ 0x569dbc
void FUN_00569dbc(int param_1)

{
  *(undefined4 *)(param_1 + 0x10) = 1;
  *(undefined4 *)(param_1 + 0x14) = 1;
  *(undefined4 *)(param_1 + 0x38) = 0;
  *(undefined4 **)(param_1 + 4) = &DAT_00960c38;
  *(undefined4 *)(param_1 + 0x20) = 0;
  *(undefined4 *)(param_1 + 0x24) = 0;
  *(undefined4 *)(param_1 + 0x30) = 0;
  *(undefined4 *)(param_1 + 0x34) = 0;
  *(undefined4 **)(param_1 + 8) = &DAT_00960c38;
  *(undefined4 **)(param_1 + 0xc) = &DAT_00960c38;
  *(undefined4 *)(param_1 + 0x18) = 0;
  *(undefined4 *)(param_1 + 0x1c) = 0;
  *(undefined4 **)(param_1 + 0x28) = &DAT_00960c38;
  *(undefined4 **)(param_1 + 0x2c) = &DAT_00960c38;
  memset((void *)(param_1 + 0x3c),0,4);
  return;
}

// ---- FUN_00569e04  @ 0x569e04
undefined4 * FUN_00569e04(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_00569ef8_1_00928aa8;
  FUN_00569dbc();
  return param_1;
}

// ---- FUN_00569e1c  @ 0x569e1c
void FUN_00569e1c(void)

{
  vector<void(*)(),std::allocator<void(*)()>> *pvVar1;
  undefined4 uVar2;
  void *pvVar3;
  undefined4 *puVar4;
  undefined *puStack_c;
  
  if (DAT_009643f9 == '\0') {
    DAT_009643f9 = 1;
    FUN_0052f9dc("asD0Ev","asD0Ev",
                 "/builddata/pulse-data/agents/hpya5.eem/recipes/816348608/base/google3/googleclient/play_games_infra/play_games_sdk/proto/gen/achievement_impl.pb.cc"
                );
    pvVar3 = operator_new(0x40);
    FUN_00569e04();
    puStack_c = &UNK_00569779;
    DAT_009643f4 = pvVar3;
    FUN_0052f604(0x960c24,0x52f855);
    uVar2 = DAT_00960c30;
    FUN_0052fb80(DAT_00960c30);
    pvVar1 = DAT_00960c2c;
    puVar4 = *(undefined4 **)(DAT_00960c2c + 4);
    if (puVar4 == *(undefined4 **)(DAT_00960c2c + 8)) {
      std::vector<void(*)(),std::allocator<void(*)()>>::_M_emplace_back_aux<void(*const&)()>
                (DAT_00960c2c,(_func_void *)&puStack_c);
    }
    else {
      if (puVar4 != (undefined4 *)0x0) {
        *puVar4 = puStack_c;
      }
      *(int *)(pvVar1 + 4) = *(int *)(pvVar1 + 4) + 4;
    }
    FUN_0052f8cc(uVar2);
    return;
  }
  return;
}

// ---- FUN_00569e80  @ 0x569e80
void FUN_00569e80(int param_1)

{
  undefined4 *puVar1;
  
  puVar1 = *(undefined4 **)(param_1 + 4);
  if ((puVar1 != &DAT_00960c38) && (puVar1 != (undefined4 *)0x0)) {
    FUN_007c5914(puVar1);
    operator_delete(puVar1);
  }
  puVar1 = *(undefined4 **)(param_1 + 8);
  if ((puVar1 != &DAT_00960c38) && (puVar1 != (undefined4 *)0x0)) {
    FUN_007c5914(puVar1);
    operator_delete(puVar1);
  }
  puVar1 = *(undefined4 **)(param_1 + 0xc);
  if ((puVar1 != &DAT_00960c38) && (puVar1 != (undefined4 *)0x0)) {
    FUN_007c5914(puVar1);
    operator_delete(puVar1);
  }
  puVar1 = *(undefined4 **)(param_1 + 0x28);
  if ((puVar1 != &DAT_00960c38) && (puVar1 != (undefined4 *)0x0)) {
    FUN_007c5914(puVar1);
    operator_delete(puVar1);
  }
  puVar1 = *(undefined4 **)(param_1 + 0x2c);
  if ((puVar1 != &DAT_00960c38) && (puVar1 != (undefined4 *)0x0)) {
    FUN_007c5914(puVar1);
    operator_delete(puVar1);
    return;
  }
  return;
}

// ---- FUN_00569ef8  @ 0x569ef8
undefined4 * FUN_00569ef8(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_00569ef8_1_00928aa8;
  FUN_00569e80();
  FUN_0052fe6c(param_1);
  return param_1;
}

// ---- FUN_00569f18  @ 0x569f18
void * FUN_00569f18(void *param_1)

{
  FUN_00569ef8();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_00569f50  @ 0x569f50
void FUN_00569f50(int param_1,int param_2)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  undefined1 auStack_2c [4];
  undefined1 auStack_28 [20];
  
  if (param_2 == param_1) {
    FUN_0052f7f0(auStack_28,3,
                 "/builddata/pulse-data/agents/hpya5.eem/recipes/816348608/base/google3/googleclient/play_games_infra/play_games_sdk/proto/gen/achievement_impl.pb.cc"
                 ,0x230);
    uVar1 = FUN_0052f6be(auStack_28,"CHECK failed: (&from) != (this): ");
    FUN_0052f9d4(auStack_2c,uVar1);
    FUN_0052f808(auStack_28);
  }
  if ((*(uint *)(param_2 + 0x3c) & 0xff) != 0) {
    if ((int)(*(uint *)(param_2 + 0x3c) << 0x1f) < 0) {
      uVar1 = *(undefined4 *)(param_2 + 4);
      *(uint *)(param_1 + 0x3c) = *(uint *)(param_1 + 0x3c) | 1;
      if (*(undefined4 **)(param_1 + 4) == &DAT_00960c38) {
        puVar2 = operator_new(4);
        *puVar2 = &DAT_00972528;
        *(undefined4 **)(param_1 + 4) = puVar2;
      }
      FUN_007c653c(*(undefined4 *)(param_1 + 4),uVar1);
    }
    if (*(int *)(param_2 + 0x3c) << 0x1e < 0) {
      uVar1 = *(undefined4 *)(param_2 + 8);
      *(uint *)(param_1 + 0x3c) = *(uint *)(param_1 + 0x3c) | 2;
      if (*(undefined4 **)(param_1 + 8) == &DAT_00960c38) {
        puVar2 = operator_new(4);
        *puVar2 = &DAT_00972528;
        *(undefined4 **)(param_1 + 8) = puVar2;
      }
      FUN_007c653c(*(undefined4 *)(param_1 + 8),uVar1);
    }
    if (*(int *)(param_2 + 0x3c) << 0x1d < 0) {
      uVar1 = *(undefined4 *)(param_2 + 0xc);
      *(uint *)(param_1 + 0x3c) = *(uint *)(param_1 + 0x3c) | 4;
      if (*(undefined4 **)(param_1 + 0xc) == &DAT_00960c38) {
        puVar2 = operator_new(4);
        *puVar2 = &DAT_00972528;
        *(undefined4 **)(param_1 + 0xc) = puVar2;
      }
      FUN_007c653c(*(undefined4 *)(param_1 + 0xc),uVar1);
    }
    if (*(int *)(param_2 + 0x3c) << 0x1c < 0) {
      *(undefined4 *)(param_1 + 0x10) = *(undefined4 *)(param_2 + 0x10);
      *(uint *)(param_1 + 0x3c) = *(uint *)(param_1 + 0x3c) | 8;
    }
    if (*(int *)(param_2 + 0x3c) << 0x1b < 0) {
      *(undefined4 *)(param_1 + 0x14) = *(undefined4 *)(param_2 + 0x14);
      *(uint *)(param_1 + 0x3c) = *(uint *)(param_1 + 0x3c) | 0x10;
    }
    if (*(int *)(param_2 + 0x3c) << 0x1a < 0) {
      *(undefined4 *)(param_1 + 0x18) = *(undefined4 *)(param_2 + 0x18);
      *(uint *)(param_1 + 0x3c) = *(uint *)(param_1 + 0x3c) | 0x20;
    }
    if (*(int *)(param_2 + 0x3c) << 0x19 < 0) {
      *(undefined4 *)(param_1 + 0x1c) = *(undefined4 *)(param_2 + 0x1c);
      *(uint *)(param_1 + 0x3c) = *(uint *)(param_1 + 0x3c) | 0x40;
    }
    if (*(int *)(param_2 + 0x3c) << 0x18 < 0) {
      uVar1 = *(undefined4 *)(param_2 + 0x24);
      *(undefined4 *)(param_1 + 0x20) = *(undefined4 *)(param_2 + 0x20);
      *(undefined4 *)(param_1 + 0x24) = uVar1;
      *(uint *)(param_1 + 0x3c) = *(uint *)(param_1 + 0x3c) | 0x80;
    }
  }
  if ((*(uint *)(param_2 + 0x3c) & 0xff00) != 0) {
    if ((int)(*(uint *)(param_2 + 0x3c) << 0x17) < 0) {
      uVar1 = *(undefined4 *)(param_2 + 0x28);
      *(uint *)(param_1 + 0x3c) = *(uint *)(param_1 + 0x3c) | 0x100;
      if (*(undefined4 **)(param_1 + 0x28) == &DAT_00960c38) {
        puVar2 = operator_new(4);
        *puVar2 = &DAT_00972528;
        *(undefined4 **)(param_1 + 0x28) = puVar2;
      }
      FUN_007c653c(*(undefined4 *)(param_1 + 0x28),uVar1);
    }
    if (*(int *)(param_2 + 0x3c) << 0x16 < 0) {
      uVar1 = *(undefined4 *)(param_2 + 0x2c);
      *(uint *)(param_1 + 0x3c) = *(uint *)(param_1 + 0x3c) | 0x200;
      if (*(undefined4 **)(param_1 + 0x2c) == &DAT_00960c38) {
        puVar2 = operator_new(4);
        *puVar2 = &DAT_00972528;
        *(undefined4 **)(param_1 + 0x2c) = puVar2;
      }
      FUN_007c653c(*(undefined4 *)(param_1 + 0x2c),uVar1);
    }
    if (*(int *)(param_2 + 0x3c) << 0x15 < 0) {
      uVar1 = *(undefined4 *)(param_2 + 0x34);
      *(undefined4 *)(param_1 + 0x30) = *(undefined4 *)(param_2 + 0x30);
      *(undefined4 *)(param_1 + 0x34) = uVar1;
      *(uint *)(param_1 + 0x3c) = *(uint *)(param_1 + 0x3c) | 0x400;
    }
  }
  return;
}

// ---- FUN_0056a128  @ 0x56a128
undefined4 * FUN_0056a128(undefined4 *param_1,undefined4 param_2)

{
  *param_1 = &PTR_FUN_00569ef8_1_00928aa8;
  FUN_00569dbc();
  FUN_00569f50(param_1,param_2);
  return param_1;
}

// ---- FUN_0056a224  @ 0x56a224
void FUN_0056a224(int param_1)

{
  if ((*(uint *)(param_1 + 0x1c) & 0xff) != 0) {
    if (((int)(*(uint *)(param_1 + 0x1c) << 0x1f) < 0) &&
       (*(undefined4 **)(param_1 + 4) != &DAT_00960c38)) {
      FUN_007c5b70();
    }
    *(undefined4 *)(param_1 + 0x10) = 1;
    *(undefined4 *)(param_1 + 8) = 0;
    *(undefined4 *)(param_1 + 0xc) = 0;
    *(undefined4 *)(param_1 + 0x14) = 0;
  }
  memset((void *)(param_1 + 0x1c),0,4);
  return;
}

// ---- FUN_0056a2d4  @ 0x56a2d4
int FUN_0056a2d4(int param_1)

{
  int iVar1;
  int iVar2;
  int *piVar3;
  
  iVar1 = 0;
  if ((*(uint *)(param_1 + 0x1c) & 0xff) != 0) {
    iVar1 = 0;
    if ((*(uint *)(param_1 + 0x1c) & 1) != 0) {
      piVar3 = *(int **)(param_1 + 4);
      if (*(uint *)(*piVar3 + -0xc) < 0x80) {
        iVar1 = 1;
      }
      else {
        iVar1 = FUN_00531a52();
      }
      iVar1 = *(int *)(*piVar3 + -0xc) + iVar1 + 1;
    }
    if (*(int *)(param_1 + 0x1c) << 0x1e < 0) {
      if ((int)*(uint *)(param_1 + 0x10) < 0) {
        iVar2 = 10;
      }
      else if (*(uint *)(param_1 + 0x10) < 0x80) {
        iVar2 = 1;
      }
      else {
        iVar2 = FUN_00531a52();
      }
      iVar1 = iVar1 + iVar2 + 1;
    }
    if (*(int *)(param_1 + 0x1c) << 0x1d < 0) {
      iVar2 = FUN_00531a7a(*(undefined4 *)(param_1 + 8),*(undefined4 *)(param_1 + 0xc));
      iVar1 = iVar1 + iVar2 + 1;
    }
    if (*(int *)(param_1 + 0x1c) << 0x1c < 0) {
      if (*(uint *)(param_1 + 0x14) < 0x80) {
        iVar2 = 1;
      }
      else {
        iVar2 = FUN_00531a52();
      }
      iVar1 = iVar1 + iVar2 + 1;
    }
  }
  *(int *)(param_1 + 0x18) = iVar1;
  return iVar1;
}

// ---- FUN_0056a354  @ 0x56a354
bool FUN_0056a354(int param_1)

{
  return param_1 - 1U < 4;
}

// ---- FUN_0056a360  @ 0x56a360
int FUN_0056a360(int param_1,int param_2,undefined4 param_3)

{
  byte bVar1;
  undefined4 *puVar2;
  int iVar3;
  int iVar4;
  byte *pbVar5;
  uint uVar6;
  uint uVar7;
  char *pcVar8;
  int iVar9;
  int local_24;
  undefined4 uStack_20;
  
  iVar9 = param_1;
  local_24 = param_2;
  uStack_20 = param_3;
LAB_0056a374:
  do {
    pbVar5 = *(byte **)(param_2 + 4);
    if ((pbVar5 < *(byte **)(param_2 + 8)) && (uVar7 = (uint)*pbVar5, -1 < (int)(uVar7 << 0x18))) {
      *(uint *)(param_2 + 0x14) = uVar7;
      *(byte **)(param_2 + 4) = pbVar5 + 1;
    }
    else {
      uVar7 = FUN_00531548(param_2);
      *(uint *)(param_2 + 0x14) = uVar7;
    }
    if (uVar7 == 0) {
      return 1;
    }
    uVar6 = uVar7 & 7;
    switch(uVar7 >> 3) {
    case 1:
      if (uVar6 == 2) {
        *(uint *)(param_1 + 0x1c) = *(uint *)(param_1 + 0x1c) | 1;
        if (*(undefined4 **)(param_1 + 4) == &DAT_00960c38) {
          puVar2 = operator_new(4);
          *puVar2 = &DAT_00972528;
          *(undefined4 **)(param_1 + 4) = puVar2;
        }
        iVar4 = FUN_00530d42(param_2,*(undefined4 *)(param_1 + 4));
        if (iVar4 == 0) {
          return 0;
        }
        pcVar8 = *(char **)(param_2 + 4);
        if ((pcVar8 < *(char **)(param_2 + 8)) && (*pcVar8 == '\x10')) {
          *(char **)(param_2 + 4) = pcVar8 + 1;
LAB_0056a402:
          iVar3 = FUN_005307ec(param_2,&local_24);
          iVar4 = local_24;
          if (iVar3 == 0) {
            return 0;
          }
          iVar3 = FUN_0056a354(local_24);
          if (iVar3 != 0) {
            *(int *)(param_1 + 0x10) = iVar4;
            *(uint *)(param_1 + 0x1c) = *(uint *)(param_1 + 0x1c) | 2;
          }
          pcVar8 = *(char **)(param_2 + 4);
          if ((pcVar8 < *(char **)(param_2 + 8)) && (*pcVar8 == '\x18')) {
            *(char **)(param_2 + 4) = pcVar8 + 1;
LAB_0056a43e:
            if ((*(byte **)(param_2 + 4) < *(byte **)(param_2 + 8)) &&
               (bVar1 = **(byte **)(param_2 + 4), -1 < (int)((uint)bVar1 << 0x18))) {
              *(uint *)(param_1 + 8) = (uint)bVar1;
              *(undefined4 *)(param_1 + 0xc) = 0;
              *(int *)(param_2 + 4) = *(int *)(param_2 + 4) + 1;
            }
            else {
              iVar4 = FUN_0053132e(param_2,param_1 + 8);
              if (iVar4 == 0) {
                return 0;
              }
            }
            *(uint *)(param_1 + 0x1c) = *(uint *)(param_1 + 0x1c) | 4;
            pcVar8 = *(char **)(param_2 + 4);
            if ((pcVar8 < *(char **)(param_2 + 8)) && (*pcVar8 == ' ')) {
              *(char **)(param_2 + 4) = pcVar8 + 1;
LAB_0056a48a:
              iVar4 = FUN_005307ec(param_2,param_1 + 0x14);
              if (iVar4 == 0) {
                return 0;
              }
              *(uint *)(param_1 + 0x1c) = *(uint *)(param_1 + 0x1c) | 8;
              if ((*(int *)(param_2 + 4) == *(int *)(param_2 + 8)) &&
                 ((*(int *)(param_2 + 0x20) != 0 ||
                  (*(int *)(param_2 + 0xc) == *(int *)(param_2 + 0x1c))))) {
                *(undefined4 *)(param_2 + 0x14) = 0;
                *(undefined1 *)(param_2 + 0x18) = 1;
                return iVar4;
              }
            }
          }
        }
        goto LAB_0056a374;
      }
      break;
    case 2:
      if (uVar6 == 0) goto LAB_0056a402;
      break;
    case 3:
      if (uVar6 == 0) goto LAB_0056a43e;
      break;
    case 4:
      if (uVar6 == 0) goto LAB_0056a48a;
    }
    if (uVar6 == 4) {
      return 1;
    }
    iVar4 = FUN_0053086a(param_2,uVar7,uVar6,uVar7,iVar9);
    if (iVar4 == 0) {
      return 0;
    }
  } while( true );
}

// ---- FUN_0056a4e8  @ 0x56a4e8
void FUN_0056a4e8(int param_1)

{
  *(undefined4 *)(param_1 + 0x18) = 0;
  *(undefined4 *)(param_1 + 0x14) = 0;
  *(undefined4 **)(param_1 + 4) = &DAT_00960c38;
  *(undefined4 *)(param_1 + 0x10) = 1;
  *(undefined4 *)(param_1 + 8) = 0;
  *(undefined4 *)(param_1 + 0xc) = 0;
  memset((void *)(param_1 + 0x1c),0,4);
  return;
}

// ---- FUN_0056a510  @ 0x56a510
undefined4 * FUN_0056a510(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0056a5b4_1_00928ae8;
  FUN_0056a4e8();
  return param_1;
}

// ---- FUN_0056a528  @ 0x56a528
void FUN_0056a528(void)

{
  vector<void(*)(),std::allocator<void(*)()>> *pvVar1;
  undefined4 uVar2;
  void *pvVar3;
  undefined4 *puVar4;
  undefined *puStack_c;
  
  if (DAT_00964401 == '\0') {
    DAT_00964401 = 1;
    FUN_0052f9dc("asD0Ev","asD0Ev",
                 "/builddata/pulse-data/agents/hpya5.eem/recipes/816348608/base/google3/googleclient/play_games_infra/play_games_sdk/proto/gen/achievement_op.pb.cc"
                );
    pvVar3 = operator_new(0x20);
    FUN_0056a510();
    puStack_c = &UNK_0056a1fd;
    DAT_009643fc = pvVar3;
    FUN_0052f604(0x960c24,0x52f855);
    uVar2 = DAT_00960c30;
    FUN_0052fb80(DAT_00960c30);
    pvVar1 = DAT_00960c2c;
    puVar4 = *(undefined4 **)(DAT_00960c2c + 4);
    if (puVar4 == *(undefined4 **)(DAT_00960c2c + 8)) {
      std::vector<void(*)(),std::allocator<void(*)()>>::_M_emplace_back_aux<void(*const&)()>
                (DAT_00960c2c,(_func_void *)&puStack_c);
    }
    else {
      if (puVar4 != (undefined4 *)0x0) {
        *puVar4 = puStack_c;
      }
      *(int *)(pvVar1 + 4) = *(int *)(pvVar1 + 4) + 4;
    }
    FUN_0052f8cc(uVar2);
    return;
  }
  return;
}

// ---- FUN_0056a58c  @ 0x56a58c
void FUN_0056a58c(int param_1)

{
  undefined4 *puVar1;
  
  puVar1 = *(undefined4 **)(param_1 + 4);
  if ((puVar1 != &DAT_00960c38) && (puVar1 != (undefined4 *)0x0)) {
    FUN_007c5914(puVar1);
    operator_delete(puVar1);
    return;
  }
  return;
}

// ---- FUN_0056a5b4  @ 0x56a5b4
undefined4 * FUN_0056a5b4(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0056a5b4_1_00928ae8;
  FUN_0056a58c();
  FUN_0052fe6c(param_1);
  return param_1;
}

// ---- FUN_0056a5d4  @ 0x56a5d4
void * FUN_0056a5d4(void *param_1)

{
  FUN_0056a5b4();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0056a788  @ 0x56a788
void FUN_0056a788(int param_1)

{
  if ((*(uint *)(param_1 + 0x24) & 0xff) != 0) {
    if (((int)(*(uint *)(param_1 + 0x24) << 0x1f) < 0) &&
       (*(undefined4 **)(param_1 + 4) != &DAT_00960c38)) {
      FUN_007c5b70();
    }
    if ((*(int *)(param_1 + 0x24) << 0x1e < 0) && (*(undefined4 **)(param_1 + 8) != &DAT_00960c38))
    {
      FUN_007c5b70();
    }
    if ((*(int *)(param_1 + 0x24) << 0x1d < 0) && (*(undefined4 **)(param_1 + 0xc) != &DAT_00960c38)
       ) {
      FUN_007c5b70();
    }
    *(undefined4 *)(param_1 + 0x1c) = 1;
    *(undefined4 *)(param_1 + 0x10) = 0;
    *(undefined4 *)(param_1 + 0x14) = 0;
    if ((*(int *)(param_1 + 0x24) << 0x1a < 0) &&
       (*(undefined4 **)(param_1 + 0x18) != &DAT_00960c38)) {
      FUN_007c5b70();
    }
  }
  memset((void *)(param_1 + 0x24),0,4);
  return;
}

// ---- FUN_0056a80c  @ 0x56a80c
void FUN_0056a80c(int param_1,undefined4 param_2,undefined4 param_3)

{
  int iVar1;
  int extraout_r1;
  int iVar2;
  undefined4 uVar3;
  
  iVar1 = param_1;
  uVar3 = param_2;
  if (*(int *)(param_1 + 0x24) << 0x1f < 0) {
    FUN_00530b60(1,*(undefined4 *)(param_1 + 4),param_2,*(int *)(param_1 + 0x24),param_1,param_2,
                 param_3);
  }
  iVar2 = *(int *)(param_1 + 0x24) << 0x1e;
  if (iVar2 < 0) {
    FUN_00530b60(2,*(undefined4 *)(param_1 + 8),param_2,iVar2,iVar1,uVar3,param_3);
  }
  if (*(int *)(param_1 + 0x24) << 0x1d < 0) {
    FUN_00530b60(3,*(undefined4 *)(param_1 + 0xc),param_2,*(int *)(param_1 + 0x24),iVar1,uVar3,
                 param_3);
  }
  iVar1 = *(int *)(param_1 + 0x24) << 0x1c;
  if (iVar1 < 0) {
    FUN_00530b46(4,*(undefined4 *)(param_1 + 0x1c),param_2);
    iVar1 = extraout_r1;
  }
  if (*(int *)(param_1 + 0x24) << 0x1b < 0) {
    FUN_00530a06(5,iVar1,*(undefined4 *)(param_1 + 0x10),*(undefined4 *)(param_1 + 0x14),param_2);
  }
  if (*(int *)(param_1 + 0x24) << 0x1a < 0) {
    FUN_00530b60(6,*(undefined4 *)(param_1 + 0x18),param_2);
    return;
  }
  return;
}

// ---- FUN_0056a91a  @ 0x56a91a
bool FUN_0056a91a(int param_1)

{
  return param_1 - 1U < 2;
}

// ---- FUN_0056a928  @ 0x56a928
int FUN_0056a928(int param_1,uint param_2,undefined4 param_3)

{
  byte bVar1;
  int iVar2;
  uint uVar3;
  undefined4 *extraout_r2;
  undefined4 *extraout_r2_00;
  undefined4 *extraout_r2_01;
  undefined4 *puVar4;
  undefined4 *extraout_r2_02;
  byte *pbVar5;
  uint uVar6;
  char *pcVar7;
  undefined4 *puVar8;
  int iVar9;
  uint local_24;
  undefined4 uStack_20;
  
  iVar9 = param_1;
  local_24 = param_2;
  uStack_20 = param_3;
LAB_0056a93c:
  do {
    pbVar5 = *(byte **)(param_2 + 4);
    if ((pbVar5 < *(byte **)(param_2 + 8)) && (uVar3 = (uint)*pbVar5, -1 < (int)(uVar3 << 0x18))) {
      *(uint *)(param_2 + 0x14) = uVar3;
      *(byte **)(param_2 + 4) = pbVar5 + 1;
    }
    else {
      uVar3 = FUN_00531548(param_2);
      *(uint *)(param_2 + 0x14) = uVar3;
    }
    if (uVar3 == 0) {
      return 1;
    }
    uVar6 = uVar3 & 7;
    switch(uVar3 >> 3) {
    case 1:
      if (uVar6 == 2) {
        puVar4 = *(undefined4 **)(param_1 + 4);
        *(uint *)(param_1 + 0x24) = *(uint *)(param_1 + 0x24) | 1;
        puVar8 = &DAT_00960c38;
        if (puVar4 == &DAT_00960c38) {
          puVar4 = operator_new(4);
          puVar8 = (undefined4 *)&DAT_00972528;
          *puVar4 = &DAT_00972528;
          *(undefined4 **)(param_1 + 4) = puVar4;
          puVar4 = extraout_r2;
        }
        iVar2 = FUN_00530d42(param_2,*(undefined4 *)(param_1 + 4),puVar4,puVar8,iVar9);
        if (iVar2 == 0) {
          return 0;
        }
        pcVar7 = *(char **)(param_2 + 4);
        if ((pcVar7 < *(char **)(param_2 + 8)) && (*pcVar7 == '\x12')) {
          *(char **)(param_2 + 4) = pcVar7 + 1;
LAB_0056a9d0:
          puVar4 = *(undefined4 **)(param_1 + 8);
          *(uint *)(param_1 + 0x24) = *(uint *)(param_1 + 0x24) | 2;
          puVar8 = &DAT_00960c38;
          if (puVar4 == &DAT_00960c38) {
            puVar4 = operator_new(4);
            puVar8 = (undefined4 *)&DAT_00972528;
            *puVar4 = &DAT_00972528;
            *(undefined4 **)(param_1 + 8) = puVar4;
            puVar4 = extraout_r2_00;
          }
          iVar2 = FUN_00530d42(param_2,*(undefined4 *)(param_1 + 8),puVar4,puVar8,iVar9);
          if (iVar2 == 0) {
            return 0;
          }
          pcVar7 = *(char **)(param_2 + 4);
          if ((pcVar7 < *(char **)(param_2 + 8)) && (*pcVar7 == '\x1a')) {
            *(char **)(param_2 + 4) = pcVar7 + 1;
LAB_0056aa18:
            puVar4 = *(undefined4 **)(param_1 + 0xc);
            *(uint *)(param_1 + 0x24) = *(uint *)(param_1 + 0x24) | 4;
            puVar8 = &DAT_00960c38;
            if (puVar4 == &DAT_00960c38) {
              puVar4 = operator_new(4);
              puVar8 = (undefined4 *)&DAT_00972528;
              *puVar4 = &DAT_00972528;
              *(undefined4 **)(param_1 + 0xc) = puVar4;
              puVar4 = extraout_r2_01;
            }
            iVar2 = FUN_00530d42(param_2,*(undefined4 *)(param_1 + 0xc),puVar4,puVar8,iVar9);
            if (iVar2 == 0) {
              return 0;
            }
            pcVar7 = *(char **)(param_2 + 4);
            if ((pcVar7 < *(char **)(param_2 + 8)) && (*pcVar7 == ' ')) {
              *(char **)(param_2 + 4) = pcVar7 + 1;
LAB_0056aa62:
              pbVar5 = *(byte **)(param_2 + 4);
              if ((pbVar5 < *(byte **)(param_2 + 8)) &&
                 (bVar1 = *pbVar5, -1 < (int)((uint)bVar1 << 0x18))) {
                *(byte **)(param_2 + 4) = pbVar5 + 1;
                local_24 = (uint)bVar1;
              }
              else {
                iVar2 = FUN_0053145a(param_2,&local_24);
                if (iVar2 == 0) {
                  return 0;
                }
              }
              uVar3 = local_24;
              iVar2 = FUN_0056a91a(local_24);
              if (iVar2 != 0) {
                *(uint *)(param_1 + 0x1c) = uVar3;
                *(uint *)(param_1 + 0x24) = *(uint *)(param_1 + 0x24) | 8;
              }
              pcVar7 = *(char **)(param_2 + 4);
              if ((pcVar7 < *(char **)(param_2 + 8)) && (*pcVar7 == '(')) {
                *(char **)(param_2 + 4) = pcVar7 + 1;
LAB_0056aab8:
                if ((*(byte **)(param_2 + 4) < *(byte **)(param_2 + 8)) &&
                   (bVar1 = **(byte **)(param_2 + 4), -1 < (int)((uint)bVar1 << 0x18))) {
                  *(uint *)(param_1 + 0x10) = (uint)bVar1;
                  *(undefined4 *)(param_1 + 0x14) = 0;
                  *(int *)(param_2 + 4) = *(int *)(param_2 + 4) + 1;
                }
                else {
                  iVar2 = FUN_0053132e(param_2,param_1 + 0x10);
                  if (iVar2 == 0) {
                    return 0;
                  }
                }
                *(uint *)(param_1 + 0x24) = *(uint *)(param_1 + 0x24) | 0x10;
                pcVar7 = *(char **)(param_2 + 4);
                if ((pcVar7 < *(char **)(param_2 + 8)) && (*pcVar7 == '2')) {
                  *(char **)(param_2 + 4) = pcVar7 + 1;
LAB_0056ab08:
                  puVar4 = *(undefined4 **)(param_1 + 0x18);
                  *(uint *)(param_1 + 0x24) = *(uint *)(param_1 + 0x24) | 0x20;
                  puVar8 = &DAT_00960c38;
                  if (puVar4 == &DAT_00960c38) {
                    puVar4 = operator_new(4);
                    puVar8 = (undefined4 *)&DAT_00972528;
                    *puVar4 = &DAT_00972528;
                    *(undefined4 **)(param_1 + 0x18) = puVar4;
                    puVar4 = extraout_r2_02;
                  }
                  iVar2 = FUN_00530d42(param_2,*(undefined4 *)(param_1 + 0x18),puVar4,puVar8,iVar9);
                  if (iVar2 == 0) {
                    return 0;
                  }
                  if ((*(int *)(param_2 + 4) == *(int *)(param_2 + 8)) &&
                     ((*(int *)(param_2 + 0x20) != 0 ||
                      (*(int *)(param_2 + 0xc) == *(int *)(param_2 + 0x1c))))) {
                    *(undefined4 *)(param_2 + 0x14) = 0;
                    *(undefined1 *)(param_2 + 0x18) = 1;
                    return iVar2;
                  }
                }
              }
            }
          }
        }
        goto LAB_0056a93c;
      }
      break;
    case 2:
      if (uVar6 == 2) goto LAB_0056a9d0;
      break;
    case 3:
      if (uVar6 == 2) goto LAB_0056aa18;
      break;
    case 4:
      if (uVar6 == 0) goto LAB_0056aa62;
      break;
    case 5:
      if (uVar6 == 0) goto LAB_0056aab8;
      break;
    case 6:
      if (uVar6 == 2) goto LAB_0056ab08;
    }
    if (uVar6 == 4) {
      return 1;
    }
    iVar2 = FUN_0053086a(param_2);
    if (iVar2 == 0) {
      return 0;
    }
  } while( true );
}

// ---- FUN_0056ab84  @ 0x56ab84
void FUN_0056ab84(int param_1)

{
  *(undefined4 *)(param_1 + 0x1c) = 1;
  *(undefined4 *)(param_1 + 0x20) = 0;
  *(undefined4 **)(param_1 + 4) = &DAT_00960c38;
  *(undefined4 **)(param_1 + 8) = &DAT_00960c38;
  *(undefined4 *)(param_1 + 0x10) = 0;
  *(undefined4 *)(param_1 + 0x14) = 0;
  *(undefined4 **)(param_1 + 0xc) = &DAT_00960c38;
  *(undefined4 **)(param_1 + 0x18) = &DAT_00960c38;
  memset((void *)(param_1 + 0x24),0,4);
  return;
}

// ---- FUN_0056abb8  @ 0x56abb8
undefined4 * FUN_0056abb8(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0056ac9c_1_00928b28;
  FUN_0056ab84();
  return param_1;
}

// ---- FUN_0056abd0  @ 0x56abd0
void FUN_0056abd0(void)

{
  vector<void(*)(),std::allocator<void(*)()>> *pvVar1;
  undefined4 uVar2;
  void *pvVar3;
  undefined4 *puVar4;
  undefined *puStack_c;
  
  if (DAT_00964409 == '\0') {
    DAT_00964409 = 1;
    FUN_0052f9dc("asD0Ev","asD0Ev",
                 "/builddata/pulse-data/agents/hpya5.eem/recipes/816348608/base/google3/googleclient/play_games_infra/play_games_sdk/proto/gen/event_impl.pb.cc"
                );
    pvVar3 = operator_new(0x28);
    FUN_0056abb8();
    puStack_c = &UNK_0056a769;
    DAT_00964404 = pvVar3;
    FUN_0052f604(0x960c24,0x52f855);
    uVar2 = DAT_00960c30;
    FUN_0052fb80(DAT_00960c30);
    pvVar1 = DAT_00960c2c;
    puVar4 = *(undefined4 **)(DAT_00960c2c + 4);
    if (puVar4 == *(undefined4 **)(DAT_00960c2c + 8)) {
      std::vector<void(*)(),std::allocator<void(*)()>>::_M_emplace_back_aux<void(*const&)()>
                (DAT_00960c2c,(_func_void *)&puStack_c);
    }
    else {
      if (puVar4 != (undefined4 *)0x0) {
        *puVar4 = puStack_c;
      }
      *(int *)(pvVar1 + 4) = *(int *)(pvVar1 + 4) + 4;
    }
    FUN_0052f8cc(uVar2);
    return;
  }
  return;
}

// ---- FUN_0056ac34  @ 0x56ac34
void FUN_0056ac34(int param_1)

{
  undefined4 *puVar1;
  
  puVar1 = *(undefined4 **)(param_1 + 4);
  if ((puVar1 != &DAT_00960c38) && (puVar1 != (undefined4 *)0x0)) {
    FUN_007c5914(puVar1);
    operator_delete(puVar1);
  }
  puVar1 = *(undefined4 **)(param_1 + 8);
  if ((puVar1 != &DAT_00960c38) && (puVar1 != (undefined4 *)0x0)) {
    FUN_007c5914(puVar1);
    operator_delete(puVar1);
  }
  puVar1 = *(undefined4 **)(param_1 + 0xc);
  if ((puVar1 != &DAT_00960c38) && (puVar1 != (undefined4 *)0x0)) {
    FUN_007c5914(puVar1);
    operator_delete(puVar1);
  }
  puVar1 = *(undefined4 **)(param_1 + 0x18);
  if ((puVar1 != &DAT_00960c38) && (puVar1 != (undefined4 *)0x0)) {
    FUN_007c5914(puVar1);
    operator_delete(puVar1);
    return;
  }
  return;
}

// ---- FUN_0056ac9c  @ 0x56ac9c
undefined4 * FUN_0056ac9c(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0056ac9c_1_00928b28;
  FUN_0056ac34();
  FUN_0052fe6c(param_1);
  return param_1;
}

// ---- FUN_0056acbc  @ 0x56acbc
void * FUN_0056acbc(void *param_1)

{
  FUN_0056ac9c();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0056acf4  @ 0x56acf4
void FUN_0056acf4(int param_1,int param_2)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  undefined1 auStack_2c [4];
  undefined1 auStack_28 [20];
  
  if (param_2 == param_1) {
    FUN_0052f7f0(auStack_28,3,
                 "/builddata/pulse-data/agents/hpya5.eem/recipes/816348608/base/google3/googleclient/play_games_infra/play_games_sdk/proto/gen/event_impl.pb.cc"
                 ,0x17d);
    uVar1 = FUN_0052f6be(auStack_28,"CHECK failed: (&from) != (this): ");
    FUN_0052f9d4(auStack_2c,uVar1);
    FUN_0052f808(auStack_28);
  }
  if ((*(uint *)(param_2 + 0x24) & 0xff) != 0) {
    if ((int)(*(uint *)(param_2 + 0x24) << 0x1f) < 0) {
      uVar1 = *(undefined4 *)(param_2 + 4);
      *(uint *)(param_1 + 0x24) = *(uint *)(param_1 + 0x24) | 1;
      if (*(undefined4 **)(param_1 + 4) == &DAT_00960c38) {
        puVar2 = operator_new(4);
        *puVar2 = &DAT_00972528;
        *(undefined4 **)(param_1 + 4) = puVar2;
      }
      FUN_007c653c(*(undefined4 *)(param_1 + 4),uVar1);
    }
    if (*(int *)(param_2 + 0x24) << 0x1e < 0) {
      uVar1 = *(undefined4 *)(param_2 + 8);
      *(uint *)(param_1 + 0x24) = *(uint *)(param_1 + 0x24) | 2;
      if (*(undefined4 **)(param_1 + 8) == &DAT_00960c38) {
        puVar2 = operator_new(4);
        *puVar2 = &DAT_00972528;
        *(undefined4 **)(param_1 + 8) = puVar2;
      }
      FUN_007c653c(*(undefined4 *)(param_1 + 8),uVar1);
    }
    if (*(int *)(param_2 + 0x24) << 0x1d < 0) {
      uVar1 = *(undefined4 *)(param_2 + 0xc);
      *(uint *)(param_1 + 0x24) = *(uint *)(param_1 + 0x24) | 4;
      if (*(undefined4 **)(param_1 + 0xc) == &DAT_00960c38) {
        puVar2 = operator_new(4);
        *puVar2 = &DAT_00972528;
        *(undefined4 **)(param_1 + 0xc) = puVar2;
      }
      FUN_007c653c(*(undefined4 *)(param_1 + 0xc),uVar1);
    }
    if (*(int *)(param_2 + 0x24) << 0x1c < 0) {
      *(undefined4 *)(param_1 + 0x1c) = *(undefined4 *)(param_2 + 0x1c);
      *(uint *)(param_1 + 0x24) = *(uint *)(param_1 + 0x24) | 8;
    }
    if (*(int *)(param_2 + 0x24) << 0x1b < 0) {
      uVar1 = *(undefined4 *)(param_2 + 0x14);
      *(undefined4 *)(param_1 + 0x10) = *(undefined4 *)(param_2 + 0x10);
      *(undefined4 *)(param_1 + 0x14) = uVar1;
      *(uint *)(param_1 + 0x24) = *(uint *)(param_1 + 0x24) | 0x10;
    }
    if (*(int *)(param_2 + 0x24) << 0x1a < 0) {
      uVar1 = *(undefined4 *)(param_2 + 0x18);
      *(uint *)(param_1 + 0x24) = *(uint *)(param_1 + 0x24) | 0x20;
      if (*(undefined4 **)(param_1 + 0x18) == &DAT_00960c38) {
        puVar2 = operator_new(4);
        *puVar2 = &DAT_00972528;
        *(undefined4 **)(param_1 + 0x18) = puVar2;
      }
      FUN_007c653c(*(undefined4 *)(param_1 + 0x18),uVar1);
    }
  }
  return;
}

// ---- FUN_0056ae48  @ 0x56ae48
undefined4 * FUN_0056ae48(undefined4 *param_1,undefined4 param_2)

{
  *param_1 = &PTR_FUN_0056ac9c_1_00928b28;
  FUN_0056ab84();
  FUN_0056acf4(param_1,param_2);
  return param_1;
}

// ---- FUN_0056af38  @ 0x56af38
undefined4 FUN_0056af38(int param_1)

{
  int iVar1;
  int iVar2;
  
  iVar2 = 0;
  while( true ) {
    if (*(int *)(param_1 + 8) <= iVar2) {
      return 1;
    }
    iVar1 = (**(code **)(**(int **)(*(int *)(param_1 + 4) + iVar2 * 4) + 0x14))();
    if (iVar1 == 0) break;
    iVar2 = iVar2 + 1;
  }
  return 0;
}

// ---- FUN_0056af5c  @ 0x56af5c
void FUN_0056af5c(int param_1)

{
  if ((*(uint *)(param_1 + 0x1c) & 0xff) != 0) {
    if (((int)(*(uint *)(param_1 + 0x1c) << 0x1f) < 0) &&
       (*(undefined4 **)(param_1 + 4) != &DAT_00960c38)) {
      FUN_007c5b70();
    }
    *(undefined4 *)(param_1 + 8) = 0;
    *(undefined4 *)(param_1 + 0xc) = 0;
    *(undefined4 *)(param_1 + 0x10) = 0;
    *(undefined4 *)(param_1 + 0x14) = 0;
  }
  memset((void *)(param_1 + 0x1c),0,4);
  return;
}

// ---- FUN_0056b0c0  @ 0x56b0c0
void FUN_0056b0c0(int param_1,undefined4 param_2,undefined4 param_3)

{
  int iVar1;
  int extraout_r1;
  int extraout_r1_00;
  
  iVar1 = *(int *)(param_1 + 0x1c) << 0x1f;
  if (iVar1 < 0) {
    FUN_00530b60(1,*(undefined4 *)(param_1 + 4),param_2,*(int *)(param_1 + 0x1c),param_1,param_2,
                 param_3);
    iVar1 = extraout_r1;
  }
  if (*(int *)(param_1 + 0x1c) << 0x1e < 0) {
    FUN_00530a06(2,iVar1,*(undefined4 *)(param_1 + 8),*(undefined4 *)(param_1 + 0xc),param_2);
    iVar1 = extraout_r1_00;
  }
  if (*(int *)(param_1 + 0x1c) << 0x1d < 0) {
    FUN_00530a06(3,iVar1,*(undefined4 *)(param_1 + 0x10),*(undefined4 *)(param_1 + 0x14),param_2);
  }
  return;
}

// ---- FUN_0056b100  @ 0x56b100
void FUN_0056b100(int param_1,undefined4 param_2)

{
  int iVar1;
  int extraout_r1;
  int extraout_r1_00;
  int extraout_r1_01;
  int iVar2;
  
  iVar1 = *(int *)(param_1 + 0x28) << 0x1f;
  if (iVar1 < 0) {
    FUN_00530b46(1,*(undefined4 *)(param_1 + 0x20),param_2,*(int *)(param_1 + 0x28),param_1,param_2)
    ;
    iVar1 = extraout_r1;
  }
  if (*(int *)(param_1 + 0x28) << 0x1e < 0) {
    iVar1 = *(int *)(param_1 + 4);
    if (iVar1 == 0) {
      iVar1 = *(int *)(DAT_00964410 + 4);
    }
    FUN_00530c7a(3,iVar1,param_2);
    iVar1 = extraout_r1_00;
  }
  for (iVar2 = 0; iVar2 < *(int *)(param_1 + 0xc); iVar2 = iVar2 + 1) {
    FUN_00530c7a(4,*(undefined4 *)(*(int *)(param_1 + 8) + iVar2 * 4),param_2);
    iVar1 = extraout_r1_01;
  }
  if (*(int *)(param_1 + 0x28) << 0x1c < 0) {
    FUN_00530a06(5,iVar1,*(undefined4 *)(param_1 + 0x18),*(undefined4 *)(param_1 + 0x1c),param_2);
  }
  return;
}

// ---- FUN_0056b1b0  @ 0x56b1b0
undefined4 FUN_0056b1b0(int param_1)

{
  undefined4 uVar1;
  
  if (*(int *)(param_1 + 4) == *(int *)(param_1 + 8)) {
    if ((*(int *)(param_1 + 0x20) != 0) ||
       (uVar1 = 0, *(int *)(param_1 + 0xc) == *(int *)(param_1 + 0x1c))) {
      *(undefined4 *)(param_1 + 0x14) = 0;
      uVar1 = 1;
      *(undefined1 *)(param_1 + 0x18) = 1;
    }
    return uVar1;
  }
  return 0;
}

// ---- FUN_0056b1d4  @ 0x56b1d4
undefined4 FUN_0056b1d4(int param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  byte *pbVar2;
  uint uVar3;
  undefined4 *puVar4;
  undefined4 *extraout_r2;
  uint uVar5;
  undefined4 *puVar6;
  char *pcVar7;
  
LAB_0056b1e2:
  do {
    pbVar2 = *(byte **)(param_2 + 4);
    if ((pbVar2 < *(byte **)(param_2 + 8)) && (uVar5 = (uint)*pbVar2, -1 < (int)(uVar5 << 0x18))) {
      *(uint *)(param_2 + 0x14) = uVar5;
      *(byte **)(param_2 + 4) = pbVar2 + 1;
    }
    else {
      uVar5 = FUN_00531548(param_2);
      *(uint *)(param_2 + 0x14) = uVar5;
    }
    if (uVar5 == 0) {
      return 1;
    }
    uVar3 = uVar5 >> 3;
    uVar5 = uVar5 & 7;
    if (uVar3 == 2) {
      if (uVar5 == 0) {
LAB_0056b268:
        iVar1 = FUN_0056991c(param_2,param_1 + 8);
        if (iVar1 == 0) {
          return 0;
        }
        *(uint *)(param_1 + 0x1c) = *(uint *)(param_1 + 0x1c) | 2;
        pcVar7 = *(char **)(param_2 + 4);
        if ((pcVar7 < *(char **)(param_2 + 8)) && (*pcVar7 == '\x18')) {
          *(char **)(param_2 + 4) = pcVar7 + 1;
LAB_0056b292:
          iVar1 = FUN_0056991c(param_2,param_1 + 0x10);
          if (iVar1 == 0) {
            return 0;
          }
          *(uint *)(param_1 + 0x1c) = *(uint *)(param_1 + 0x1c) | 4;
          iVar1 = FUN_0056b1b0(param_2);
          if (iVar1 != 0) {
            return 1;
          }
        }
        goto LAB_0056b1e2;
      }
    }
    else if (uVar3 == 3) {
      if (uVar5 == 0) goto LAB_0056b292;
    }
    else if ((uVar3 == 1) && (uVar5 == 2)) {
      puVar4 = *(undefined4 **)(param_1 + 4);
      *(uint *)(param_1 + 0x1c) = *(uint *)(param_1 + 0x1c) | 1;
      puVar6 = &DAT_00960c38;
      if (puVar4 == &DAT_00960c38) {
        puVar4 = operator_new(4);
        puVar6 = (undefined4 *)&DAT_00972528;
        *puVar4 = &DAT_00972528;
        *(undefined4 **)(param_1 + 4) = puVar4;
        puVar4 = extraout_r2;
      }
      iVar1 = FUN_00530d42(param_2,*(undefined4 *)(param_1 + 4),puVar4,puVar6,param_4);
      if (iVar1 == 0) {
        return 0;
      }
      pcVar7 = *(char **)(param_2 + 4);
      if ((pcVar7 < *(char **)(param_2 + 8)) && (*pcVar7 == '\x10')) {
        *(char **)(param_2 + 4) = pcVar7 + 1;
        goto LAB_0056b268;
      }
      goto LAB_0056b1e2;
    }
    if (uVar5 == 4) {
      return 1;
    }
    iVar1 = FUN_0053086a(param_2);
    if (iVar1 == 0) {
      return 0;
    }
  } while( true );
}

// ---- FUN_0056b2cc  @ 0x56b2cc
int FUN_0056b2cc(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  int iVar2;
  int extraout_r2;
  int iVar3;
  int *piVar4;
  
  iVar1 = 0;
  if ((*(uint *)(param_1 + 0x1c) & 0xff) != 0) {
    iVar1 = 0;
    if ((*(uint *)(param_1 + 0x1c) & 1) != 0) {
      piVar4 = *(int **)(param_1 + 4);
      iVar1 = FUN_00569940(*(undefined4 *)(*piVar4 + -0xc));
      iVar1 = iVar1 + *(int *)(*piVar4 + -0xc) + 1;
    }
    iVar2 = *(int *)(param_1 + 0x1c) << 0x1e;
    if (iVar2 < 0) {
      iVar2 = FUN_00531a7a(*(undefined4 *)(param_1 + 8),*(undefined4 *)(param_1 + 0xc),iVar2,
                           *(int *)(param_1 + 0x1c),param_4);
      iVar1 = iVar1 + iVar2 + 1;
      iVar2 = extraout_r2;
    }
    iVar3 = *(int *)(param_1 + 0x1c) << 0x1d;
    if (iVar3 < 0) {
      iVar2 = FUN_00531a7a(*(undefined4 *)(param_1 + 0x10),*(undefined4 *)(param_1 + 0x14),iVar2,
                           iVar3,param_4);
      iVar1 = iVar1 + iVar2 + 1;
    }
  }
  *(int *)(param_1 + 0x18) = iVar1;
  return iVar1;
}

// ---- FUN_0056b31e  @ 0x56b31e
int FUN_0056b31e(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  int iVar2;
  int iVar3;
  undefined4 extraout_r2;
  uint uVar4;
  int iVar5;
  
  uVar4 = *(uint *)(param_1 + 0x2c);
  iVar1 = 0;
  if ((uVar4 & 0x1fe) != 0) {
    iVar1 = 0;
    if ((uVar4 & 2) != 0) {
      iVar1 = FUN_00531a7a(*(undefined4 *)(param_1 + 0x18),*(undefined4 *)(param_1 + 0x1c),param_3,
                           uVar4,param_4);
      iVar1 = iVar1 + 1;
      param_3 = extraout_r2;
    }
    iVar5 = *(int *)(param_1 + 0x2c) << 0x1d;
    if (iVar5 < 0) {
      iVar5 = FUN_00531a7a(*(undefined4 *)(param_1 + 0x20),*(undefined4 *)(param_1 + 0x24),param_3,
                           iVar5,param_4);
      iVar1 = iVar1 + iVar5 + 1;
    }
  }
  iVar1 = iVar1 + *(int *)(param_1 + 8);
  for (iVar5 = 0; iVar5 < *(int *)(param_1 + 8); iVar5 = iVar5 + 1) {
    iVar2 = FUN_0056b2cc(*(undefined4 *)(*(int *)(param_1 + 4) + iVar5 * 4));
    iVar3 = FUN_00569940();
    iVar1 = iVar1 + iVar3 + iVar2;
  }
  *(int *)(param_1 + 0x28) = iVar1;
  return iVar1;
}

// ---- FUN_0056b378  @ 0x56b378
int FUN_0056b378(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  int extraout_r2;
  
  iVar1 = 0;
  if ((*(uint *)(param_1 + 0x28) & 0xff) != 0) {
    iVar1 = 0;
    if ((*(uint *)(param_1 + 0x28) & 1) != 0) {
      if (*(int *)(param_1 + 0x20) < 0) {
        iVar1 = 10;
      }
      else {
        iVar1 = FUN_00569940();
      }
      iVar1 = iVar1 + 1;
    }
    iVar4 = *(int *)(param_1 + 0x28) << 0x1e;
    if (iVar4 < 0) {
      iVar4 = *(int *)(param_1 + 4);
      if (iVar4 == 0) {
        iVar4 = *(int *)(DAT_00964410 + 4);
      }
      iVar4 = FUN_0056b2cc(iVar4);
      iVar2 = FUN_00569940();
      iVar1 = iVar1 + iVar2 + iVar4 + 1;
      iVar4 = extraout_r2;
    }
    iVar2 = *(int *)(param_1 + 0x28) << 0x1c;
    if (iVar2 < 0) {
      iVar4 = FUN_00531a7a(*(undefined4 *)(param_1 + 0x18),*(undefined4 *)(param_1 + 0x1c),iVar4,
                           iVar2,param_4);
      iVar1 = iVar1 + iVar4 + 1;
    }
  }
  iVar1 = iVar1 + *(int *)(param_1 + 0xc);
  for (iVar4 = 0; iVar4 < *(int *)(param_1 + 0xc); iVar4 = iVar4 + 1) {
    iVar2 = FUN_0056b31e(*(undefined4 *)(*(int *)(param_1 + 8) + iVar4 * 4));
    iVar3 = FUN_00569940();
    iVar1 = iVar1 + iVar3 + iVar2;
  }
  *(int *)(param_1 + 0x24) = iVar1;
  return iVar1;
}

// ---- FUN_0056b3fc  @ 0x56b3fc
bool FUN_0056b3fc(int param_1)

{
  return param_1 - 1U < 2;
}

// ---- FUN_0056b40c  @ 0x56b40c
void FUN_0056b40c(int param_1)

{
  *(undefined4 *)(param_1 + 0x18) = 0;
  *(undefined4 **)(param_1 + 4) = &DAT_00960c38;
  *(undefined4 *)(param_1 + 8) = 0;
  *(undefined4 *)(param_1 + 0xc) = 0;
  *(undefined4 *)(param_1 + 0x10) = 0;
  *(undefined4 *)(param_1 + 0x14) = 0;
  memset((void *)(param_1 + 0x1c),0,4);
  return;
}

// ---- FUN_0056b434  @ 0x56b434
undefined4 * FUN_0056b434(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0056b4a8_1_00928be8;
  FUN_0056b40c();
  return param_1;
}

// ---- FUN_0056b45e  @ 0x56b45e
undefined4 FUN_0056b45e(int param_1)

{
  void *pvVar1;
  
  *(uint *)(param_1 + 0x28) = *(uint *)(param_1 + 0x28) | 2;
  if (*(int *)(param_1 + 4) == 0) {
    pvVar1 = operator_new(0x20);
    FUN_0056b434();
    *(void **)(param_1 + 4) = pvVar1;
  }
  return *(undefined4 *)(param_1 + 4);
}

// ---- FUN_0056b480  @ 0x56b480
void FUN_0056b480(int param_1)

{
  undefined4 *puVar1;
  
  puVar1 = *(undefined4 **)(param_1 + 4);
  if ((puVar1 != &DAT_00960c38) && (puVar1 != (undefined4 *)0x0)) {
    FUN_007c5914(puVar1);
    operator_delete(puVar1);
    return;
  }
  return;
}

// ---- FUN_0056b4a8  @ 0x56b4a8
undefined4 * FUN_0056b4a8(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0056b4a8_1_00928be8;
  FUN_0056b480();
  FUN_0052fe6c(param_1);
  return param_1;
}

// ---- FUN_0056b4c8  @ 0x56b4c8
void * FUN_0056b4c8(void *param_1)

{
  FUN_0056b4a8();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0056b4e0  @ 0x56b4e0
void FUN_0056b4e0(int param_1,int param_2)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  undefined1 auStack_24 [4];
  undefined1 auStack_20 [16];
  
  if (param_2 == param_1) {
    FUN_0052f7f0(auStack_20,3,
                 "/builddata/pulse-data/agents/hpya5.eem/recipes/816348608/base/google3/googleclient/play_games_infra/play_games_sdk/proto/gen/event_op.pb.cc"
                 ,0x118);
    uVar1 = FUN_0052f6be(auStack_20,"CHECK failed: (&from) != (this): ");
    FUN_0052f9d4(auStack_24,uVar1);
    FUN_0052f808(auStack_20);
  }
  if ((*(uint *)(param_2 + 0x1c) & 0xff) != 0) {
    if ((int)(*(uint *)(param_2 + 0x1c) << 0x1f) < 0) {
      uVar1 = *(undefined4 *)(param_2 + 4);
      *(uint *)(param_1 + 0x1c) = *(uint *)(param_1 + 0x1c) | 1;
      if (*(undefined4 **)(param_1 + 4) == &DAT_00960c38) {
        puVar2 = operator_new(4);
        *puVar2 = &DAT_00972528;
        *(undefined4 **)(param_1 + 4) = puVar2;
      }
      FUN_007c653c(*(undefined4 *)(param_1 + 4),uVar1);
    }
    if (*(int *)(param_2 + 0x1c) << 0x1e < 0) {
      uVar1 = *(undefined4 *)(param_2 + 0xc);
      *(undefined4 *)(param_1 + 8) = *(undefined4 *)(param_2 + 8);
      *(undefined4 *)(param_1 + 0xc) = uVar1;
      *(uint *)(param_1 + 0x1c) = *(uint *)(param_1 + 0x1c) | 2;
    }
    if (*(int *)(param_2 + 0x1c) << 0x1d < 0) {
      uVar1 = *(undefined4 *)(param_2 + 0x14);
      *(undefined4 *)(param_1 + 0x10) = *(undefined4 *)(param_2 + 0x10);
      *(undefined4 *)(param_1 + 0x14) = uVar1;
      *(uint *)(param_1 + 0x1c) = *(uint *)(param_1 + 0x1c) | 4;
    }
  }
  return;
}

// ---- FUN_0056b630  @ 0x56b630
void FUN_0056b630(int param_1)

{
  *(undefined4 *)(param_1 + 0x18) = 0;
  *(undefined4 *)(param_1 + 0x1c) = 0;
  *(undefined4 *)(param_1 + 0x20) = 0;
  *(undefined4 *)(param_1 + 0x24) = 0;
  *(undefined4 *)(param_1 + 0x28) = 0;
  memset((void *)(param_1 + 0x2c),0,4);
  return;
}

// ---- FUN_0056b64c  @ 0x56b64c
undefined4 * FUN_0056b64c(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0056bd98_1_00928b68;
  param_1[1] = 0;
  param_1[2] = 0;
  param_1[3] = 0;
  param_1[4] = 0;
  FUN_0056b630();
  return param_1;
}

// ---- FUN_0056b6cc  @ 0x56b6cc
void FUN_0056b6cc(int param_1)

{
  *(undefined4 *)(param_1 + 0x20) = 1;
  *(undefined4 *)(param_1 + 0x24) = 0;
  *(undefined4 *)(param_1 + 4) = 0;
  *(undefined4 *)(param_1 + 0x18) = 0;
  *(undefined4 *)(param_1 + 0x1c) = 0;
  memset((void *)(param_1 + 0x28),0,4);
  return;
}

// ---- FUN_0056b6e8  @ 0x56b6e8
undefined4 * FUN_0056b6e8(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0056be34_1_00928ba8;
  param_1[2] = 0;
  param_1[3] = 0;
  param_1[4] = 0;
  param_1[5] = 0;
  FUN_0056b6cc();
  return param_1;
}

// ---- FUN_0056b70c  @ 0x56b70c
void FUN_0056b70c(void)

{
  vector<void(*)(),std::allocator<void(*)()>> *pvVar1;
  undefined4 uVar2;
  void *pvVar3;
  undefined4 *puVar4;
  
  if (DAT_00964414 == '\0') {
    DAT_00964414 = 1;
    FUN_0052f9dc("asD0Ev","asD0Ev",
                 "/builddata/pulse-data/agents/hpya5.eem/recipes/816348608/base/google3/googleclient/play_games_infra/play_games_sdk/proto/gen/event_op.pb.cc"
                );
    pvVar3 = operator_new(0x30);
    FUN_0056b6e8();
    DAT_00964410 = pvVar3;
    pvVar3 = operator_new(0x20);
    FUN_0056b434();
    DAT_00964418 = pvVar3;
    pvVar3 = operator_new(0x30);
    FUN_0056b64c();
    DAT_0096440c = pvVar3;
    FUN_0056b7ac(DAT_00964410);
    FUN_0052f604(0x960c24,0x52f855);
    uVar2 = DAT_00960c30;
    FUN_0052fb80(DAT_00960c30);
    pvVar1 = DAT_00960c2c;
    puVar4 = *(undefined4 **)(DAT_00960c2c + 4);
    if (puVar4 == *(undefined4 **)(DAT_00960c2c + 8)) {
      std::vector<void(*)(),std::allocator<void(*)()>>::_M_emplace_back_aux<void(*const&)()>
                (DAT_00960c2c,(_func_void *)&stack0xfffffff4);
    }
    else {
      if (puVar4 != (undefined4 *)0x0) {
        *puVar4 = &UNK_0056aef5;
      }
      *(int *)(pvVar1 + 4) = *(int *)(pvVar1 + 4) + 4;
    }
    FUN_0052f8cc(uVar2);
    return;
  }
  return;
}

// ---- FUN_0056b78c  @ 0x56b78c
int FUN_0056b78c(void)

{
  if (DAT_00964418 == 0) {
    FUN_0056b70c();
  }
  return DAT_00964418;
}

// ---- FUN_0056b7ac  @ 0x56b7ac
void FUN_0056b7ac(int param_1)

{
  undefined4 uVar1;
  
  uVar1 = FUN_0056b78c();
  *(undefined4 *)(param_1 + 4) = uVar1;
  return;
}

// ---- FUN_0056b7b8  @ 0x56b7b8
int FUN_0056b7b8(void)

{
  if (DAT_0096440c == 0) {
    FUN_0056b70c();
  }
  return DAT_0096440c;
}

// ---- FUN_0056b7ec  @ 0x56b7ec
void FUN_0056b7ec(int param_1)

{
  if ((param_1 != DAT_00964410) && (*(int **)(param_1 + 4) != (int *)0x0)) {
    (**(code **)(**(int **)(param_1 + 4) + 4))();
  }
  return;
}

// ---- FUN_0056b878  @ 0x56b878
char FUN_0056b878(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  char cVar1;
  int iVar2;
  undefined4 uVar3;
  undefined4 local_14;
  
  local_14 = param_2;
  iVar2 = FUN_005307ec(param_1,&local_14,param_3,param_4,param_1);
  if ((iVar2 != 0) &&
     (iVar2 = *(int *)(param_1 + 0x2c) + 1, *(int *)(param_1 + 0x2c) = iVar2,
     iVar2 <= *(int *)(param_1 + 0x30))) {
    uVar3 = FUN_00530eac(param_1,local_14);
    iVar2 = FUN_0056b1d4(param_2,param_1);
    if ((iVar2 != 0) && (cVar1 = *(char *)(param_1 + 0x18), cVar1 != '\0')) {
      FUN_00530eea(param_1,uVar3);
      if (*(int *)(param_1 + 0x2c) < 1) {
        return cVar1;
      }
      *(int *)(param_1 + 0x2c) = *(int *)(param_1 + 0x2c) + -1;
      return cVar1;
    }
  }
  return '\0';
}

// ---- FUN_0056b8cc  @ 0x56b8cc
void * FUN_0056b8cc(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  void *pvVar1;
  int iVar2;
  int iVar3;
  
  iVar3 = param_1[1];
  iVar2 = param_1[2];
  if (iVar3 < iVar2) {
    param_1[1] = iVar3 + 1;
    return *(void **)(*param_1 + iVar3 * 4);
  }
  if (iVar2 == param_1[3]) {
    FUN_00530720(param_1,iVar2 + 1,param_3,param_1[3],param_4);
  }
  param_1[2] = param_1[2] + 1;
  pvVar1 = operator_new(0x20);
  FUN_0056b434();
  iVar2 = param_1[1];
  param_1[1] = iVar2 + 1;
  *(void **)(*param_1 + iVar2 * 4) = pvVar1;
  return pvVar1;
}

// ---- FUN_0056b912  @ 0x56b912
undefined4 FUN_0056b912(int param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  int iVar2;
  byte *pbVar3;
  uint uVar4;
  uint uVar5;
  char *pcVar6;
  
LAB_0056b91e:
  do {
    pbVar3 = *(byte **)(param_2 + 4);
    if ((pbVar3 < *(byte **)(param_2 + 8)) && (uVar5 = (uint)*pbVar3, -1 < (int)(uVar5 << 0x18))) {
      *(uint *)(param_2 + 0x14) = uVar5;
      *(byte **)(param_2 + 4) = pbVar3 + 1;
    }
    else {
      uVar5 = FUN_00531548(param_2);
      *(uint *)(param_2 + 0x14) = uVar5;
    }
    if (uVar5 == 0) {
      return 1;
    }
    uVar4 = uVar5 >> 3;
    uVar5 = uVar5 & 7;
    if (uVar4 == 2) {
      uVar1 = 2;
      pcVar6 = (char *)0x0;
      if (uVar5 == 0) {
LAB_0056b984:
        iVar2 = FUN_0056991c(param_2,param_1 + 0x18,uVar1,pcVar6,param_4);
        if (iVar2 == 0) {
          return 0;
        }
        *(uint *)(param_1 + 0x2c) = *(uint *)(param_1 + 0x2c) | 2;
        pcVar6 = *(char **)(param_2 + 4);
        if ((pcVar6 < *(char **)(param_2 + 8)) && (*pcVar6 == '\x18')) {
          pcVar6 = pcVar6 + 1;
          *(char **)(param_2 + 4) = pcVar6;
          uVar1 = 0x18;
LAB_0056b9b0:
          iVar2 = FUN_0056991c(param_2,param_1 + 0x20,uVar1,pcVar6,param_4);
          if (iVar2 == 0) {
            return 0;
          }
          *(uint *)(param_1 + 0x2c) = *(uint *)(param_1 + 0x2c) | 4;
          iVar2 = FUN_0056b1b0(param_2);
          if (iVar2 != 0) {
            return 1;
          }
        }
        goto LAB_0056b91e;
      }
    }
    else if (uVar4 == 3) {
      uVar1 = 3;
      pcVar6 = (char *)0x0;
      if (uVar5 == 0) goto LAB_0056b9b0;
    }
    else if ((uVar4 == 1) && (uVar5 == 2)) {
      while( true ) {
        uVar1 = FUN_0056b8cc(param_1 + 4);
        iVar2 = FUN_0056b878(param_2,uVar1);
        if (iVar2 == 0) {
          return 0;
        }
        pcVar6 = *(char **)(param_2 + 4);
        if (*(char **)(param_2 + 8) <= pcVar6) goto LAB_0056b91e;
        if (*pcVar6 != '\n') break;
        *(char **)(param_2 + 4) = pcVar6 + 1;
      }
      if (*pcVar6 == '\x10') {
        pcVar6 = pcVar6 + 1;
        *(char **)(param_2 + 4) = pcVar6;
        uVar1 = 0x10;
        goto LAB_0056b984;
      }
      goto LAB_0056b91e;
    }
    if (uVar5 == 4) {
      return 1;
    }
    iVar2 = FUN_0053086a(param_2);
    if (iVar2 == 0) {
      return 0;
    }
  } while( true );
}

// ---- FUN_0056b9ec  @ 0x56b9ec
void FUN_0056b9ec(int param_1,int param_2)

{
  undefined4 uVar1;
  int iVar2;
  undefined4 uVar3;
  undefined1 auStack_2c [4];
  undefined1 auStack_28 [16];
  
  if (param_2 == param_1) {
    FUN_0052f7f0(auStack_28,3,
                 "/builddata/pulse-data/agents/hpya5.eem/recipes/816348608/base/google3/googleclient/play_games_infra/play_games_sdk/proto/gen/event_op.pb.cc"
                 ,0x207);
    uVar1 = FUN_0052f6be(auStack_28,"CHECK failed: (&from) != (this): ");
    FUN_0052f9d4(auStack_2c,uVar1);
    FUN_0052f808(auStack_28);
  }
  FUN_00530720(param_1 + 4,*(int *)(param_1 + 8) + *(int *)(param_2 + 8));
  for (iVar2 = 0; iVar2 < *(int *)(param_2 + 8); iVar2 = iVar2 + 1) {
    uVar3 = *(undefined4 *)(*(int *)(param_2 + 4) + iVar2 * 4);
    uVar1 = FUN_0056b8cc(param_1 + 4);
    FUN_0056b4e0(uVar1,uVar3);
  }
  if ((*(uint *)(param_2 + 0x2c) & 0x1fe) != 0) {
    if ((int)(*(uint *)(param_2 + 0x2c) << 0x1e) < 0) {
      uVar1 = *(undefined4 *)(param_2 + 0x1c);
      *(undefined4 *)(param_1 + 0x18) = *(undefined4 *)(param_2 + 0x18);
      *(undefined4 *)(param_1 + 0x1c) = uVar1;
      *(uint *)(param_1 + 0x2c) = *(uint *)(param_1 + 0x2c) | 2;
    }
    if (*(int *)(param_2 + 0x2c) << 0x1d < 0) {
      uVar1 = *(undefined4 *)(param_2 + 0x24);
      *(undefined4 *)(param_1 + 0x20) = *(undefined4 *)(param_2 + 0x20);
      *(undefined4 *)(param_1 + 0x24) = uVar1;
      *(uint *)(param_1 + 0x2c) = *(uint *)(param_1 + 0x2c) | 4;
    }
  }
  return;
}

// ---- FUN_0056babe  @ 0x56babe
void * FUN_0056babe(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  void *pvVar1;
  int iVar2;
  int iVar3;
  
  iVar3 = param_1[1];
  iVar2 = param_1[2];
  if (iVar3 < iVar2) {
    param_1[1] = iVar3 + 1;
    return *(void **)(*param_1 + iVar3 * 4);
  }
  if (iVar2 == param_1[3]) {
    FUN_00530720(param_1,iVar2 + 1,param_3,param_1[3],param_4);
  }
  param_1[2] = param_1[2] + 1;
  pvVar1 = operator_new(0x30);
  FUN_0056b64c();
  iVar2 = param_1[1];
  param_1[1] = iVar2 + 1;
  *(void **)(*param_1 + iVar2 * 4) = pvVar1;
  return pvVar1;
}

// ---- FUN_0056bb04  @ 0x56bb04
undefined4 FUN_0056bb04(int param_1,int param_2)

{
  char cVar1;
  int iVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  int iVar5;
  byte *pbVar6;
  uint uVar7;
  uint uVar8;
  char *pcVar9;
  int iVar10;
  int local_24;
  
  iVar10 = param_1;
  local_24 = param_2;
LAB_0056bb12:
  pbVar6 = *(byte **)(param_2 + 4);
  if ((pbVar6 < *(byte **)(param_2 + 8)) && (uVar8 = (uint)*pbVar6, -1 < (int)(uVar8 << 0x18))) {
    *(uint *)(param_2 + 0x14) = uVar8;
    *(byte **)(param_2 + 4) = pbVar6 + 1;
  }
  else {
    uVar8 = FUN_00531548(param_2);
    *(uint *)(param_2 + 0x14) = uVar8;
  }
  if (uVar8 == 0) {
    return 1;
  }
  uVar7 = uVar8 & 7;
  switch(uVar8 >> 3) {
  case 1:
    if (uVar7 != 0) break;
    iVar2 = FUN_005307ec(param_2,&local_24);
    iVar5 = local_24;
    if (iVar2 == 0) {
      return 0;
    }
    iVar2 = FUN_0056b3fc(local_24);
    if (iVar2 != 0) {
      *(int *)(param_1 + 0x20) = iVar5;
      *(uint *)(param_1 + 0x28) = *(uint *)(param_1 + 0x28) | 1;
    }
    pcVar9 = *(char **)(param_2 + 4);
    if ((pcVar9 < *(char **)(param_2 + 8)) && (*pcVar9 == '\x1a')) {
      *(char **)(param_2 + 4) = pcVar9 + 1;
LAB_0056bb88:
      uVar3 = FUN_0056b45e(param_1);
      iVar5 = FUN_0056b878(param_2,uVar3);
      if (iVar5 == 0) {
        return 0;
      }
      pcVar9 = *(char **)(param_2 + 4);
      if ((pcVar9 < *(char **)(param_2 + 8)) && (*pcVar9 == '\"')) {
        *(char **)(param_2 + 4) = pcVar9 + 1;
LAB_0056bbba:
        while( true ) {
          uVar3 = FUN_0056babe(param_1 + 8);
          iVar5 = FUN_005307ec(param_2,&local_24);
          if (iVar5 == 0) {
            return 0;
          }
          iVar5 = *(int *)(param_2 + 0x2c) + 1;
          *(int *)(param_2 + 0x2c) = iVar5;
          if (*(int *)(param_2 + 0x30) < iVar5) {
            return 0;
          }
          uVar4 = FUN_00530eac(param_2,local_24);
          iVar5 = FUN_0056b912(uVar3,param_2);
          if (iVar5 == 0) {
            return 0;
          }
          cVar1 = *(char *)(param_2 + 0x18);
          if (cVar1 == '\0') {
            return 0;
          }
          FUN_00530eea(param_2,uVar4);
          if (0 < *(int *)(param_2 + 0x2c)) {
            *(int *)(param_2 + 0x2c) = *(int *)(param_2 + 0x2c) + -1;
          }
          if (cVar1 == '\0') {
            return 0;
          }
          pcVar9 = *(char **)(param_2 + 4);
          if (*(char **)(param_2 + 8) <= pcVar9) goto LAB_0056bb12;
          if (*pcVar9 != '\"') break;
          *(char **)(param_2 + 4) = pcVar9 + 1;
        }
        if (*pcVar9 == '(') {
          *(char **)(param_2 + 4) = pcVar9 + 1;
LAB_0056bc30:
          iVar5 = FUN_0056991c(param_2,param_1 + 0x18);
          if (iVar5 == 0) {
            return 0;
          }
          *(uint *)(param_1 + 0x28) = *(uint *)(param_1 + 0x28) | 8;
          iVar5 = FUN_0056b1b0(param_2);
          if (iVar5 != 0) {
            return 1;
          }
        }
      }
    }
    goto LAB_0056bb12;
  case 3:
    if (uVar7 == 2) goto LAB_0056bb88;
    break;
  case 4:
    if (uVar7 == 2) goto LAB_0056bbba;
    break;
  case 5:
    if (uVar7 == 0) goto LAB_0056bc30;
  }
  if (uVar7 == 4) {
    return 1;
  }
  iVar5 = FUN_0053086a(param_2,uVar8,uVar7,uVar8,iVar10);
  if (iVar5 == 0) {
    return 0;
  }
  goto LAB_0056bb12;
}

// ---- FUN_0056bc7c  @ 0x56bc7c
void FUN_0056bc7c(int param_1,int param_2)

{
  undefined4 uVar1;
  int iVar2;
  undefined4 uVar3;
  undefined1 auStack_2c [4];
  undefined1 auStack_28 [16];
  
  if (param_2 == param_1) {
    FUN_0052f7f0(auStack_28,3,
                 "/builddata/pulse-data/agents/hpya5.eem/recipes/816348608/base/google3/googleclient/play_games_infra/play_games_sdk/proto/gen/event_op.pb.cc"
                 ,799);
    uVar1 = FUN_0052f6be(auStack_28,"CHECK failed: (&from) != (this): ");
    FUN_0052f9d4(auStack_2c,uVar1);
    FUN_0052f808(auStack_28);
  }
  FUN_00530720(param_1 + 8,*(int *)(param_1 + 0xc) + *(int *)(param_2 + 0xc));
  for (iVar2 = 0; iVar2 < *(int *)(param_2 + 0xc); iVar2 = iVar2 + 1) {
    uVar3 = *(undefined4 *)(*(int *)(param_2 + 8) + iVar2 * 4);
    uVar1 = FUN_0056babe(param_1 + 8);
    FUN_0056b9ec(uVar1,uVar3);
  }
  if ((*(uint *)(param_2 + 0x28) & 0xff) != 0) {
    if ((int)(*(uint *)(param_2 + 0x28) << 0x1f) < 0) {
      *(undefined4 *)(param_1 + 0x20) = *(undefined4 *)(param_2 + 0x20);
      *(uint *)(param_1 + 0x28) = *(uint *)(param_1 + 0x28) | 1;
    }
    if (*(int *)(param_2 + 0x28) << 0x1e < 0) {
      uVar1 = FUN_0056b45e(param_1);
      iVar2 = *(int *)(param_2 + 4);
      if (iVar2 == 0) {
        iVar2 = *(int *)(DAT_00964410 + 4);
      }
      FUN_0056b4e0(uVar1,iVar2);
    }
    if (*(int *)(param_2 + 0x28) << 0x1c < 0) {
      uVar1 = *(undefined4 *)(param_2 + 0x1c);
      *(undefined4 *)(param_1 + 0x18) = *(undefined4 *)(param_2 + 0x18);
      *(undefined4 *)(param_1 + 0x1c) = uVar1;
      *(uint *)(param_1 + 0x28) = *(uint *)(param_1 + 0x28) | 8;
    }
  }
  return;
}

// ---- FUN_0056bd6e  @ 0x56bd6e
void FUN_0056bd6e(undefined4 *param_1)

{
  void *pvVar1;
  int *piVar2;
  int iVar3;
  
  iVar3 = 0;
  while( true ) {
    pvVar1 = (void *)*param_1;
    if ((int)param_1[2] <= iVar3) break;
    piVar2 = *(int **)((int)pvVar1 + iVar3 * 4);
    if (piVar2 != (int *)0x0) {
      (**(code **)(*piVar2 + 4))();
    }
    iVar3 = iVar3 + 1;
  }
  if (pvVar1 != (void *)0x0) {
    operator_delete__(pvVar1);
    return;
  }
  return;
}

// ---- FUN_0056bd98  @ 0x56bd98
undefined4 * FUN_0056bd98(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0056bd98_1_00928b68;
  FUN_0056bd6e(param_1 + 1);
  FUN_0052fe6c(param_1);
  return param_1;
}

// ---- FUN_0056bdb8  @ 0x56bdb8
void * FUN_0056bdb8(void *param_1)

{
  FUN_0056bd98();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0056bdcc  @ 0x56bdcc
undefined4 * FUN_0056bdcc(undefined4 *param_1,undefined4 param_2)

{
  *param_1 = &PTR_FUN_0056bd98_1_00928b68;
  param_1[1] = 0;
  param_1[2] = 0;
  param_1[3] = 0;
  param_1[4] = 0;
  FUN_0056b630();
  FUN_0056b9ec(param_1,param_2);
  return param_1;
}

// ---- FUN_0056be08  @ 0x56be08
void FUN_0056be08(undefined4 *param_1)

{
  void *pvVar1;
  int *piVar2;
  int iVar3;
  
  iVar3 = 0;
  while( true ) {
    pvVar1 = (void *)*param_1;
    if ((int)param_1[2] <= iVar3) break;
    piVar2 = *(int **)((int)pvVar1 + iVar3 * 4);
    if (piVar2 != (int *)0x0) {
      (**(code **)(*piVar2 + 4))();
    }
    iVar3 = iVar3 + 1;
  }
  if (pvVar1 != (void *)0x0) {
    operator_delete__(pvVar1);
    return;
  }
  return;
}

// ---- FUN_0056be34  @ 0x56be34
undefined4 * FUN_0056be34(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0056be34_1_00928ba8;
  FUN_0056b7ec();
  FUN_0056be08(param_1 + 2);
  FUN_0052fe6c(param_1);
  return param_1;
}

// ---- FUN_0056be5c  @ 0x56be5c
void * FUN_0056be5c(void *param_1)

{
  FUN_0056be34();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0056be70  @ 0x56be70
undefined4 * FUN_0056be70(undefined4 *param_1,undefined4 param_2)

{
  *param_1 = &PTR_FUN_0056be34_1_00928ba8;
  param_1[2] = 0;
  param_1[3] = 0;
  param_1[4] = 0;
  param_1[5] = 0;
  FUN_0056b6cc();
  FUN_0056bc7c(param_1,param_2);
  return param_1;
}

// ---- FUN_0056bedc  @ 0x56bedc
void FUN_0056bedc(int param_1)

{
  if ((*(uint *)(param_1 + 0x1c) & 0xff) != 0) {
    if (((int)(*(uint *)(param_1 + 0x1c) << 0x1f) < 0) &&
       (*(undefined4 **)(param_1 + 4) != &DAT_00960c38)) {
      FUN_007c5b70();
    }
    *(undefined4 *)(param_1 + 0x14) = 1;
    *(undefined4 *)(param_1 + 8) = 0;
    *(undefined4 *)(param_1 + 0xc) = 0;
    if ((*(int *)(param_1 + 0x1c) << 0x1c < 0) &&
       (*(undefined4 **)(param_1 + 0x10) != &DAT_00960c38)) {
      FUN_007c5b70();
    }
  }
  memset((void *)(param_1 + 0x1c),0,4);
  return;
}

// ---- FUN_0056bfa4  @ 0x56bfa4
int FUN_0056bfa4(int param_1)

{
  int iVar1;
  int iVar2;
  int *piVar3;
  
  iVar1 = 0;
  if ((*(uint *)(param_1 + 0x1c) & 0xff) != 0) {
    iVar1 = 0;
    if ((*(uint *)(param_1 + 0x1c) & 1) != 0) {
      piVar3 = *(int **)(param_1 + 4);
      if (*(uint *)(*piVar3 + -0xc) < 0x80) {
        iVar1 = 1;
      }
      else {
        iVar1 = FUN_00531a52();
      }
      iVar1 = *(int *)(*piVar3 + -0xc) + iVar1 + 1;
    }
    if (*(int *)(param_1 + 0x1c) << 0x1e < 0) {
      if ((int)*(uint *)(param_1 + 0x14) < 0) {
        iVar2 = 10;
      }
      else if (*(uint *)(param_1 + 0x14) < 0x80) {
        iVar2 = 1;
      }
      else {
        iVar2 = FUN_00531a52();
      }
      iVar1 = iVar1 + iVar2 + 1;
    }
    if (*(int *)(param_1 + 0x1c) << 0x1d < 0) {
      iVar2 = FUN_00531a7a(*(undefined4 *)(param_1 + 8),*(undefined4 *)(param_1 + 0xc));
      iVar1 = iVar1 + iVar2 + 1;
    }
    if (*(int *)(param_1 + 0x1c) << 0x1c < 0) {
      piVar3 = *(int **)(param_1 + 0x10);
      if (*(uint *)(*piVar3 + -0xc) < 0x80) {
        iVar2 = 1;
      }
      else {
        iVar2 = FUN_00531a52();
      }
      iVar1 = iVar1 + iVar2 + *(int *)(*piVar3 + -0xc) + 1;
    }
  }
  *(int *)(param_1 + 0x18) = iVar1;
  return iVar1;
}

// ---- FUN_0056c032  @ 0x56c032
bool FUN_0056c032(int param_1)

{
  return param_1 == 1;
}

// ---- FUN_0056c03c  @ 0x56c03c
int FUN_0056c03c(int param_1,uint param_2,undefined4 param_3)

{
  byte bVar1;
  int iVar2;
  uint uVar3;
  undefined4 *extraout_r2;
  undefined4 *puVar4;
  undefined4 *extraout_r2_00;
  byte *pbVar5;
  uint uVar6;
  char *pcVar7;
  undefined4 *puVar8;
  int iVar9;
  uint local_24;
  undefined4 uStack_20;
  
  iVar9 = param_1;
  local_24 = param_2;
  uStack_20 = param_3;
LAB_0056c050:
  do {
    pbVar5 = *(byte **)(param_2 + 4);
    if ((pbVar5 < *(byte **)(param_2 + 8)) && (uVar3 = (uint)*pbVar5, -1 < (int)(uVar3 << 0x18))) {
      *(uint *)(param_2 + 0x14) = uVar3;
      *(byte **)(param_2 + 4) = pbVar5 + 1;
    }
    else {
      uVar3 = FUN_00531548(param_2);
      *(uint *)(param_2 + 0x14) = uVar3;
    }
    if (uVar3 == 0) {
      return 1;
    }
    uVar6 = uVar3 & 7;
    switch(uVar3 >> 3) {
    case 1:
      if (uVar6 == 2) {
        puVar4 = *(undefined4 **)(param_1 + 4);
        *(uint *)(param_1 + 0x1c) = *(uint *)(param_1 + 0x1c) | 1;
        puVar8 = &DAT_00960c38;
        if (puVar4 == &DAT_00960c38) {
          puVar4 = operator_new(4);
          puVar8 = (undefined4 *)&DAT_00972528;
          *puVar4 = &DAT_00972528;
          *(undefined4 **)(param_1 + 4) = puVar4;
          puVar4 = extraout_r2;
        }
        iVar2 = FUN_00530d42(param_2,*(undefined4 *)(param_1 + 4),puVar4,puVar8,iVar9);
        if (iVar2 == 0) {
          return 0;
        }
        pcVar7 = *(char **)(param_2 + 4);
        if ((pcVar7 < *(char **)(param_2 + 8)) && (*pcVar7 == '\x10')) {
          *(char **)(param_2 + 4) = pcVar7 + 1;
LAB_0056c0da:
          pbVar5 = *(byte **)(param_2 + 4);
          if ((pbVar5 < *(byte **)(param_2 + 8)) &&
             (bVar1 = *pbVar5, -1 < (int)((uint)bVar1 << 0x18))) {
            *(byte **)(param_2 + 4) = pbVar5 + 1;
            local_24 = (uint)bVar1;
          }
          else {
            iVar2 = FUN_0053145a(param_2,&local_24);
            if (iVar2 == 0) {
              return 0;
            }
          }
          uVar3 = local_24;
          iVar2 = FUN_0056c032(local_24);
          if (iVar2 != 0) {
            *(uint *)(param_1 + 0x14) = uVar3;
            *(uint *)(param_1 + 0x1c) = *(uint *)(param_1 + 0x1c) | 2;
          }
          pcVar7 = *(char **)(param_2 + 4);
          if ((pcVar7 < *(char **)(param_2 + 8)) && (*pcVar7 == '\x18')) {
            *(char **)(param_2 + 4) = pcVar7 + 1;
LAB_0056c12c:
            if ((*(byte **)(param_2 + 4) < *(byte **)(param_2 + 8)) &&
               (bVar1 = **(byte **)(param_2 + 4), -1 < (int)((uint)bVar1 << 0x18))) {
              *(uint *)(param_1 + 8) = (uint)bVar1;
              *(undefined4 *)(param_1 + 0xc) = 0;
              *(int *)(param_2 + 4) = *(int *)(param_2 + 4) + 1;
            }
            else {
              iVar2 = FUN_0053132e(param_2,param_1 + 8);
              if (iVar2 == 0) {
                return 0;
              }
            }
            *(uint *)(param_1 + 0x1c) = *(uint *)(param_1 + 0x1c) | 4;
            pcVar7 = *(char **)(param_2 + 4);
            if ((pcVar7 < *(char **)(param_2 + 8)) && (*pcVar7 == '\"')) {
              *(char **)(param_2 + 4) = pcVar7 + 1;
LAB_0056c17a:
              puVar4 = *(undefined4 **)(param_1 + 0x10);
              *(uint *)(param_1 + 0x1c) = *(uint *)(param_1 + 0x1c) | 8;
              puVar8 = &DAT_00960c38;
              if (puVar4 == &DAT_00960c38) {
                puVar4 = operator_new(4);
                puVar8 = (undefined4 *)&DAT_00972528;
                *puVar4 = &DAT_00972528;
                *(undefined4 **)(param_1 + 0x10) = puVar4;
                puVar4 = extraout_r2_00;
              }
              iVar2 = FUN_00530d42(param_2,*(undefined4 *)(param_1 + 0x10),puVar4,puVar8,iVar9);
              if (iVar2 == 0) {
                return 0;
              }
              if ((*(int *)(param_2 + 4) == *(int *)(param_2 + 8)) &&
                 ((*(int *)(param_2 + 0x20) != 0 ||
                  (*(int *)(param_2 + 0xc) == *(int *)(param_2 + 0x1c))))) {
                *(undefined4 *)(param_2 + 0x14) = 0;
                *(undefined1 *)(param_2 + 0x18) = 1;
                return iVar2;
              }
            }
          }
        }
        goto LAB_0056c050;
      }
      break;
    case 2:
      if (uVar6 == 0) goto LAB_0056c0da;
      break;
    case 3:
      if (uVar6 == 0) goto LAB_0056c12c;
      break;
    case 4:
      if (uVar6 == 2) goto LAB_0056c17a;
    }
    if (uVar6 == 4) {
      return 1;
    }
    iVar2 = FUN_0053086a(param_2);
    if (iVar2 == 0) {
      return 0;
    }
  } while( true );
}

// ---- FUN_0056c1f4  @ 0x56c1f4
void FUN_0056c1f4(int param_1)

{
  *(undefined4 *)(param_1 + 0x14) = 1;
  *(undefined4 *)(param_1 + 0x18) = 0;
  *(undefined4 **)(param_1 + 4) = &DAT_00960c38;
  *(undefined4 **)(param_1 + 0x10) = &DAT_00960c38;
  *(undefined4 *)(param_1 + 8) = 0;
  *(undefined4 *)(param_1 + 0xc) = 0;
  memset((void *)(param_1 + 0x1c),0,4);
  return;
}

// ---- FUN_0056c220  @ 0x56c220
undefined4 * FUN_0056c220(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0056c2dc_1_00928c28;
  FUN_0056c1f4();
  return param_1;
}

// ---- FUN_0056c238  @ 0x56c238
void FUN_0056c238(void)

{
  vector<void(*)(),std::allocator<void(*)()>> *pvVar1;
  undefined4 uVar2;
  void *pvVar3;
  undefined4 *puVar4;
  undefined *puStack_c;
  
  if (DAT_00964424 == '\0') {
    DAT_00964424 = 1;
    FUN_0052f9dc("asD0Ev","asD0Ev",
                 "/builddata/pulse-data/agents/hpya5.eem/recipes/816348608/base/google3/googleclient/play_games_infra/play_games_sdk/proto/gen/leaderboard_op.pb.cc"
                );
    pvVar3 = operator_new(0x20);
    FUN_0056c220();
    puStack_c = &UNK_0056beb5;
    DAT_00964420 = pvVar3;
    FUN_0052f604(0x960c24,0x52f855);
    uVar2 = DAT_00960c30;
    FUN_0052fb80(DAT_00960c30);
    pvVar1 = DAT_00960c2c;
    puVar4 = *(undefined4 **)(DAT_00960c2c + 4);
    if (puVar4 == *(undefined4 **)(DAT_00960c2c + 8)) {
      std::vector<void(*)(),std::allocator<void(*)()>>::_M_emplace_back_aux<void(*const&)()>
                (DAT_00960c2c,(_func_void *)&puStack_c);
    }
    else {
      if (puVar4 != (undefined4 *)0x0) {
        *puVar4 = puStack_c;
      }
      *(int *)(pvVar1 + 4) = *(int *)(pvVar1 + 4) + 4;
    }
    FUN_0052f8cc(uVar2);
    return;
  }
  return;
}

// ---- FUN_0056c29c  @ 0x56c29c
void FUN_0056c29c(int param_1)

{
  undefined4 *puVar1;
  
  puVar1 = *(undefined4 **)(param_1 + 4);
  if ((puVar1 != &DAT_00960c38) && (puVar1 != (undefined4 *)0x0)) {
    FUN_007c5914(puVar1);
    operator_delete(puVar1);
  }
  puVar1 = *(undefined4 **)(param_1 + 0x10);
  if ((puVar1 != &DAT_00960c38) && (puVar1 != (undefined4 *)0x0)) {
    FUN_007c5914(puVar1);
    operator_delete(puVar1);
    return;
  }
  return;
}

// ---- FUN_0056c2dc  @ 0x56c2dc
undefined4 * FUN_0056c2dc(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0056c2dc_1_00928c28;
  FUN_0056c29c();
  FUN_0052fe6c(param_1);
  return param_1;
}

// ---- FUN_0056c2fc  @ 0x56c2fc
void * FUN_0056c2fc(void *param_1)

{
  FUN_0056c2dc();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0056c334  @ 0x56c334
void FUN_0056c334(int param_1,int param_2)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  undefined1 auStack_2c [4];
  undefined1 auStack_28 [20];
  
  if (param_2 == param_1) {
    FUN_0052f7f0(auStack_28,3,
                 "/builddata/pulse-data/agents/hpya5.eem/recipes/816348608/base/google3/googleclient/play_games_infra/play_games_sdk/proto/gen/leaderboard_op.pb.cc"
                 ,0x138);
    uVar1 = FUN_0052f6be(auStack_28,"CHECK failed: (&from) != (this): ");
    FUN_0052f9d4(auStack_2c,uVar1);
    FUN_0052f808(auStack_28);
  }
  if ((*(uint *)(param_2 + 0x1c) & 0xff) != 0) {
    if ((int)(*(uint *)(param_2 + 0x1c) << 0x1f) < 0) {
      uVar1 = *(undefined4 *)(param_2 + 4);
      *(uint *)(param_1 + 0x1c) = *(uint *)(param_1 + 0x1c) | 1;
      if (*(undefined4 **)(param_1 + 4) == &DAT_00960c38) {
        puVar2 = operator_new(4);
        *puVar2 = &DAT_00972528;
        *(undefined4 **)(param_1 + 4) = puVar2;
      }
      FUN_007c653c(*(undefined4 *)(param_1 + 4),uVar1);
    }
    if (*(int *)(param_2 + 0x1c) << 0x1e < 0) {
      *(undefined4 *)(param_1 + 0x14) = *(undefined4 *)(param_2 + 0x14);
      *(uint *)(param_1 + 0x1c) = *(uint *)(param_1 + 0x1c) | 2;
    }
    if (*(int *)(param_2 + 0x1c) << 0x1d < 0) {
      uVar1 = *(undefined4 *)(param_2 + 0xc);
      *(undefined4 *)(param_1 + 8) = *(undefined4 *)(param_2 + 8);
      *(undefined4 *)(param_1 + 0xc) = uVar1;
      *(uint *)(param_1 + 0x1c) = *(uint *)(param_1 + 0x1c) | 4;
    }
    if (*(int *)(param_2 + 0x1c) << 0x1c < 0) {
      uVar1 = *(undefined4 *)(param_2 + 0x10);
      *(uint *)(param_1 + 0x1c) = *(uint *)(param_1 + 0x1c) | 8;
      if (*(undefined4 **)(param_1 + 0x10) == &DAT_00960c38) {
        puVar2 = operator_new(4);
        *puVar2 = &DAT_00972528;
        *(undefined4 **)(param_1 + 0x10) = puVar2;
      }
      FUN_007c653c(*(undefined4 *)(param_1 + 0x10),uVar1);
    }
  }
  return;
}

// ---- FUN_0056c424  @ 0x56c424
undefined4 * FUN_0056c424(undefined4 *param_1,undefined4 param_2)

{
  *param_1 = &PTR_FUN_0056c2dc_1_00928c28;
  FUN_0056c1f4();
  FUN_0056c334(param_1,param_2);
  return param_1;
}

// ---- FUN_0056c650  @ 0x56c650
undefined4 * FUN_0056c650(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0056c650_1_00928e28;
  FUN_0052fe6c();
  return param_1;
}

// ---- FUN_0056c668  @ 0x56c668
void * FUN_0056c668(void *param_1)

{
  FUN_0056c650();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0056c67c  @ 0x56c67c
undefined4 * FUN_0056c67c(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0056c67c_1_00928d28;
  FUN_0052fe6c();
  return param_1;
}

// ---- FUN_0056c694  @ 0x56c694
void * FUN_0056c694(void *param_1)

{
  FUN_0056c67c();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0056c6a8  @ 0x56c6a8
undefined4 * FUN_0056c6a8(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0056c6a8_1_00928da8;
  FUN_0052fe6c();
  return param_1;
}

// ---- FUN_0056c6c0  @ 0x56c6c0
void * FUN_0056c6c0(void *param_1)

{
  FUN_0056c6a8();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0056c6d4  @ 0x56c6d4
undefined4 * FUN_0056c6d4(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0056c6d4_1_00928ee8;
  FUN_0052fe6c();
  return param_1;
}

// ---- FUN_0056c6ec  @ 0x56c6ec
void * FUN_0056c6ec(void *param_1)

{
  FUN_0056c6d4();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0056c700  @ 0x56c700
undefined4 * FUN_0056c700(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0056c700_1_00928ce8;
  FUN_0052fe6c();
  return param_1;
}

// ---- FUN_0056c718  @ 0x56c718
void * FUN_0056c718(void *param_1)

{
  FUN_0056c700();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0056c72c  @ 0x56c72c
undefined4 * FUN_0056c72c(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0056c72c_1_00928de8;
  FUN_0052fe6c();
  return param_1;
}

// ---- FUN_0056c744  @ 0x56c744
void * FUN_0056c744(void *param_1)

{
  FUN_0056c72c();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0056c758  @ 0x56c758
undefined4 * FUN_0056c758(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0056c758_1_00928ea8;
  FUN_0052fe6c();
  return param_1;
}

// ---- FUN_0056c770  @ 0x56c770
void * FUN_0056c770(void *param_1)

{
  FUN_0056c758();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0056c784  @ 0x56c784
undefined4 * FUN_0056c784(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0056c784_1_00928ca8;
  FUN_0052fe6c();
  return param_1;
}

// ---- FUN_0056c79c  @ 0x56c79c
void * FUN_0056c79c(void *param_1)

{
  FUN_0056c784();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0056c880  @ 0x56c880
void FUN_0056c880(int param_1)

{
  if ((((*(uint *)(param_1 + 0xc) & 0xff) != 0) && ((int)(*(uint *)(param_1 + 0xc) << 0x1f) < 0)) &&
     (*(undefined4 **)(param_1 + 4) != &DAT_00960c38)) {
    FUN_007c5b70();
  }
  memset((void *)(param_1 + 0xc),0,4);
  return;
}

// ---- FUN_0056c8b4  @ 0x56c8b4
void FUN_0056c8b4(int param_1)

{
  if ((((*(uint *)(param_1 + 0xc) & 0xff) != 0) && ((int)(*(uint *)(param_1 + 0xc) << 0x1f) < 0)) &&
     (*(undefined4 **)(param_1 + 4) != &DAT_00960c38)) {
    FUN_007c5b70();
  }
  memset((void *)(param_1 + 0xc),0,4);
  return;
}

// ---- FUN_0056c8e8  @ 0x56c8e8
void FUN_0056c8e8(int param_1)

{
  if ((((*(uint *)(param_1 + 0xc) & 0xff) != 0) && ((int)(*(uint *)(param_1 + 0xc) << 0x1f) < 0)) &&
     (*(undefined4 **)(param_1 + 4) != &DAT_00960c38)) {
    FUN_007c5b70();
  }
  memset((void *)(param_1 + 0xc),0,4);
  return;
}

// ---- FUN_0056cad8  @ 0x56cad8
undefined4 FUN_0056cad8(undefined4 param_1,int param_2)

{
  int iVar1;
  uint uVar2;
  byte *pbVar3;
  
  while( true ) {
    pbVar3 = *(byte **)(param_2 + 4);
    if ((pbVar3 < *(byte **)(param_2 + 8)) && (uVar2 = (uint)*pbVar3, -1 < (int)(uVar2 << 0x18))) {
      *(uint *)(param_2 + 0x14) = uVar2;
      *(byte **)(param_2 + 4) = pbVar3 + 1;
    }
    else {
      uVar2 = FUN_00531548(param_2);
      *(uint *)(param_2 + 0x14) = uVar2;
    }
    if ((uVar2 == 0) || ((uVar2 & 7) == 4)) break;
    iVar1 = FUN_0053086a(param_2);
    if (iVar1 == 0) {
      return 0;
    }
  }
  return 1;
}

// ---- FUN_0056cb16  @ 0x56cb16
undefined4 FUN_0056cb16(undefined4 param_1,int param_2)

{
  int iVar1;
  uint uVar2;
  byte *pbVar3;
  
  while( true ) {
    pbVar3 = *(byte **)(param_2 + 4);
    if ((pbVar3 < *(byte **)(param_2 + 8)) && (uVar2 = (uint)*pbVar3, -1 < (int)(uVar2 << 0x18))) {
      *(uint *)(param_2 + 0x14) = uVar2;
      *(byte **)(param_2 + 4) = pbVar3 + 1;
    }
    else {
      uVar2 = FUN_00531548(param_2);
      *(uint *)(param_2 + 0x14) = uVar2;
    }
    if ((uVar2 == 0) || ((uVar2 & 7) == 4)) break;
    iVar1 = FUN_0053086a(param_2);
    if (iVar1 == 0) {
      return 0;
    }
  }
  return 1;
}

// ---- FUN_0056cb54  @ 0x56cb54
undefined4 FUN_0056cb54(undefined4 param_1,int param_2)

{
  int iVar1;
  uint uVar2;
  byte *pbVar3;
  
  while( true ) {
    pbVar3 = *(byte **)(param_2 + 4);
    if ((pbVar3 < *(byte **)(param_2 + 8)) && (uVar2 = (uint)*pbVar3, -1 < (int)(uVar2 << 0x18))) {
      *(uint *)(param_2 + 0x14) = uVar2;
      *(byte **)(param_2 + 4) = pbVar3 + 1;
    }
    else {
      uVar2 = FUN_00531548(param_2);
      *(uint *)(param_2 + 0x14) = uVar2;
    }
    if ((uVar2 == 0) || ((uVar2 & 7) == 4)) break;
    iVar1 = FUN_0053086a(param_2);
    if (iVar1 == 0) {
      return 0;
    }
  }
  return 1;
}

// ---- FUN_0056cc0e  @ 0x56cc0e
undefined4 FUN_0056cc0e(undefined4 param_1,int param_2)

{
  int iVar1;
  uint uVar2;
  byte *pbVar3;
  
  while( true ) {
    pbVar3 = *(byte **)(param_2 + 4);
    if ((pbVar3 < *(byte **)(param_2 + 8)) && (uVar2 = (uint)*pbVar3, -1 < (int)(uVar2 << 0x18))) {
      *(uint *)(param_2 + 0x14) = uVar2;
      *(byte **)(param_2 + 4) = pbVar3 + 1;
    }
    else {
      uVar2 = FUN_00531548(param_2);
      *(uint *)(param_2 + 0x14) = uVar2;
    }
    if ((uVar2 == 0) || ((uVar2 & 7) == 4)) break;
    iVar1 = FUN_0053086a(param_2);
    if (iVar1 == 0) {
      return 0;
    }
  }
  return 1;
}

// ---- FUN_0056cd1c  @ 0x56cd1c
undefined4 FUN_0056cd1c(int param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 *puVar1;
  int iVar2;
  uint uVar3;
  undefined4 *extraout_r2;
  undefined4 *extraout_r2_00;
  undefined4 *extraout_r2_01;
  byte *pbVar4;
  uint uVar5;
  undefined4 *puVar6;
  char *pcVar7;
  
LAB_0056cd26:
  pbVar4 = *(byte **)(param_2 + 4);
  if ((pbVar4 < *(byte **)(param_2 + 8)) && (uVar3 = (uint)*pbVar4, -1 < (int)(uVar3 << 0x18))) {
    *(uint *)(param_2 + 0x14) = uVar3;
    *(byte **)(param_2 + 4) = pbVar4 + 1;
  }
  else {
    uVar3 = FUN_00531548(param_2);
    *(uint *)(param_2 + 0x14) = uVar3;
  }
  if (uVar3 == 0) {
    return 1;
  }
  uVar5 = uVar3 & 7;
  switch(uVar3 >> 3) {
  case 1:
    if (uVar5 != 2) break;
    puVar1 = *(undefined4 **)(param_1 + 4);
    *(uint *)(param_1 + 0x18) = *(uint *)(param_1 + 0x18) | 1;
    puVar6 = &DAT_00960c38;
    if (puVar1 == &DAT_00960c38) {
      puVar1 = operator_new(4);
      puVar6 = (undefined4 *)&DAT_00972528;
      *puVar1 = &DAT_00972528;
      *(undefined4 **)(param_1 + 4) = puVar1;
      puVar1 = extraout_r2;
    }
    iVar2 = FUN_00530d42(param_2,*(undefined4 *)(param_1 + 4),puVar1,puVar6,param_4);
    if (iVar2 == 0) {
      return 0;
    }
    pcVar7 = *(char **)(param_2 + 4);
    if ((pcVar7 < *(char **)(param_2 + 8)) && (*pcVar7 == '\x12')) {
      *(char **)(param_2 + 4) = pcVar7 + 1;
LAB_0056cdb0:
      puVar1 = *(undefined4 **)(param_1 + 8);
      *(uint *)(param_1 + 0x18) = *(uint *)(param_1 + 0x18) | 2;
      puVar6 = &DAT_00960c38;
      if (puVar1 == &DAT_00960c38) {
        puVar1 = operator_new(4);
        puVar6 = (undefined4 *)&DAT_00972528;
        *puVar1 = &DAT_00972528;
        *(undefined4 **)(param_1 + 8) = puVar1;
        puVar1 = extraout_r2_00;
      }
      iVar2 = FUN_00530d42(param_2,*(undefined4 *)(param_1 + 8),puVar1,puVar6,param_4);
      if (iVar2 == 0) {
        return 0;
      }
      pcVar7 = *(char **)(param_2 + 4);
      if ((pcVar7 < *(char **)(param_2 + 8)) && (*pcVar7 == '\x1a')) {
        *(char **)(param_2 + 4) = pcVar7 + 1;
LAB_0056cdf6:
        puVar1 = *(undefined4 **)(param_1 + 0xc);
        *(uint *)(param_1 + 0x18) = *(uint *)(param_1 + 0x18) | 4;
        puVar6 = &DAT_00960c38;
        if (puVar1 == &DAT_00960c38) {
          puVar1 = operator_new(4);
          puVar6 = (undefined4 *)&DAT_00972528;
          *puVar1 = &DAT_00972528;
          *(undefined4 **)(param_1 + 0xc) = puVar1;
          puVar1 = extraout_r2_01;
        }
        iVar2 = FUN_00530d42(param_2,*(undefined4 *)(param_1 + 0xc),puVar1,puVar6,param_4);
        if (iVar2 == 0) {
          return 0;
        }
        pcVar7 = *(char **)(param_2 + 4);
        if ((pcVar7 < *(char **)(param_2 + 8)) && (*pcVar7 == '\"')) {
          *(char **)(param_2 + 4) = pcVar7 + 1;
LAB_0056ce40:
          *(uint *)(param_1 + 0x18) = *(uint *)(param_1 + 0x18) | 8;
          if (*(undefined4 **)(param_1 + 0x10) == &DAT_00960c38) {
            puVar1 = operator_new(4);
            *puVar1 = &DAT_00972528;
            *(undefined4 **)(param_1 + 0x10) = puVar1;
          }
          iVar2 = FUN_00530d9c(param_2,*(undefined4 *)(param_1 + 0x10));
          if (iVar2 == 0) {
            return 0;
          }
          iVar2 = FUN_0056b1b0(param_2);
          if (iVar2 != 0) {
            return 1;
          }
        }
      }
    }
    goto LAB_0056cd26;
  case 2:
    if (uVar5 == 2) goto LAB_0056cdb0;
    break;
  case 3:
    if (uVar5 == 2) goto LAB_0056cdf6;
    break;
  case 4:
    if (uVar5 == 2) goto LAB_0056ce40;
  }
  if (uVar5 == 4) {
    return 1;
  }
  iVar2 = FUN_0053086a(param_2);
  if (iVar2 == 0) {
    return 0;
  }
  goto LAB_0056cd26;
}

// ---- FUN_0056ce9c  @ 0x56ce9c
undefined4 FUN_0056ce9c(int param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  uint uVar2;
  undefined4 *puVar3;
  undefined4 *extraout_r2;
  byte *pbVar4;
  undefined4 *puVar5;
  
  do {
    while( true ) {
      pbVar4 = *(byte **)(param_2 + 4);
      if ((pbVar4 < *(byte **)(param_2 + 8)) && (uVar2 = (uint)*pbVar4, -1 < (int)(uVar2 << 0x18)))
      {
        *(uint *)(param_2 + 0x14) = uVar2;
        *(byte **)(param_2 + 4) = pbVar4 + 1;
      }
      else {
        uVar2 = FUN_00531548(param_2);
        *(uint *)(param_2 + 0x14) = uVar2;
      }
      if (uVar2 == 0) {
        return 1;
      }
      if ((uVar2 >> 3 != 1) || ((uVar2 & 7) != 2)) break;
      puVar3 = *(undefined4 **)(param_1 + 4);
      *(uint *)(param_1 + 0xc) = *(uint *)(param_1 + 0xc) | 1;
      puVar5 = &DAT_00960c38;
      if (puVar3 == &DAT_00960c38) {
        puVar3 = operator_new(4);
        puVar5 = (undefined4 *)&DAT_00972528;
        *puVar3 = &DAT_00972528;
        *(undefined4 **)(param_1 + 4) = puVar3;
        puVar3 = extraout_r2;
      }
      iVar1 = FUN_00530d9c(param_2,*(undefined4 *)(param_1 + 4),puVar3,puVar5,param_4);
      if (iVar1 == 0) {
        return 0;
      }
      iVar1 = FUN_0056b1b0(param_2);
      if (iVar1 != 0) {
        return 1;
      }
    }
    if ((uVar2 & 7) == 4) {
      return 1;
    }
    iVar1 = FUN_0053086a(param_2);
  } while (iVar1 != 0);
  return 0;
}

// ---- FUN_0056d04c  @ 0x56d04c
int FUN_0056d04c(int *param_1)

{
  int iVar1;
  
  if (*(uint *)(*param_1 + -0xc) < 0x80) {
    iVar1 = 1;
  }
  else {
    iVar1 = FUN_00531a52();
  }
  return iVar1 + *(int *)(*param_1 + -0xc);
}

// ---- FUN_0056d06c  @ 0x56d06c
int FUN_0056d06c(int param_1)

{
  int iVar1;
  int iVar2;
  
  iVar1 = 0;
  if ((*(uint *)(param_1 + 0x18) & 0xff) != 0) {
    iVar1 = 0;
    if ((*(uint *)(param_1 + 0x18) & 1) != 0) {
      iVar1 = FUN_0056994c(*(undefined4 *)(param_1 + 4));
      iVar1 = iVar1 + 1;
    }
    if (*(int *)(param_1 + 0x18) << 0x1e < 0) {
      iVar2 = FUN_0056994c(*(undefined4 *)(param_1 + 8));
      iVar1 = iVar1 + iVar2 + 1;
    }
    if (*(int *)(param_1 + 0x18) << 0x1d < 0) {
      iVar2 = FUN_0056994c(*(undefined4 *)(param_1 + 0xc));
      iVar1 = iVar1 + iVar2 + 1;
    }
    if (*(int *)(param_1 + 0x18) << 0x1c < 0) {
      iVar2 = FUN_0056d04c(*(undefined4 *)(param_1 + 0x10));
      iVar1 = iVar1 + iVar2 + 1;
    }
  }
  *(int *)(param_1 + 0x14) = iVar1;
  return iVar1;
}

// ---- FUN_0056d0bc  @ 0x56d0bc
void FUN_0056d0bc(int param_1)

{
  int iVar1;
  
  iVar1 = 0;
  if (((*(uint *)(param_1 + 0xc) & 0xff) != 0) && (iVar1 = 0, (*(uint *)(param_1 + 0xc) & 1) != 0))
  {
    iVar1 = FUN_0056d04c(*(undefined4 *)(param_1 + 4));
    iVar1 = iVar1 + 1;
  }
  *(int *)(param_1 + 8) = iVar1;
  return;
}

// ---- FUN_0056d0da  @ 0x56d0da
void FUN_0056d0da(int param_1)

{
  int iVar1;
  
  iVar1 = 0;
  if (((*(uint *)(param_1 + 0xc) & 0xff) != 0) && (iVar1 = 0, (*(uint *)(param_1 + 0xc) & 1) != 0))
  {
    iVar1 = FUN_0056d04c(*(undefined4 *)(param_1 + 4));
    iVar1 = iVar1 + 1;
  }
  *(int *)(param_1 + 8) = iVar1;
  return;
}

// ---- FUN_0056d118  @ 0x56d118
void FUN_0056d118(int param_1)

{
  *(undefined4 *)(param_1 + 0x14) = 0;
  *(undefined4 **)(param_1 + 4) = &DAT_00960c38;
  *(undefined4 **)(param_1 + 8) = &DAT_00960c38;
  *(undefined4 **)(param_1 + 0xc) = &DAT_00960c38;
  *(undefined4 **)(param_1 + 0x10) = &DAT_00960c38;
  memset((void *)(param_1 + 0x18),0,4);
  return;
}

// ---- FUN_0056d140  @ 0x56d140
undefined4 * FUN_0056d140(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0056d1d4_1_00928d68;
  FUN_0056d118();
  return param_1;
}

// ---- FUN_0056d16c  @ 0x56d16c
void FUN_0056d16c(int param_1)

{
  undefined4 *puVar1;
  
  puVar1 = *(undefined4 **)(param_1 + 4);
  if ((puVar1 != &DAT_00960c38) && (puVar1 != (undefined4 *)0x0)) {
    FUN_007c5914(puVar1);
    operator_delete(puVar1);
  }
  puVar1 = *(undefined4 **)(param_1 + 8);
  if ((puVar1 != &DAT_00960c38) && (puVar1 != (undefined4 *)0x0)) {
    FUN_007c5914(puVar1);
    operator_delete(puVar1);
  }
  puVar1 = *(undefined4 **)(param_1 + 0xc);
  if ((puVar1 != &DAT_00960c38) && (puVar1 != (undefined4 *)0x0)) {
    FUN_007c5914(puVar1);
    operator_delete(puVar1);
  }
  puVar1 = *(undefined4 **)(param_1 + 0x10);
  if ((puVar1 != &DAT_00960c38) && (puVar1 != (undefined4 *)0x0)) {
    FUN_007c5914(puVar1);
    operator_delete(puVar1);
    return;
  }
  return;
}

// ---- FUN_0056d1d4  @ 0x56d1d4
undefined4 * FUN_0056d1d4(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0056d1d4_1_00928d68;
  FUN_0056d16c();
  FUN_0052fe6c(param_1);
  return param_1;
}

// ---- FUN_0056d1f4  @ 0x56d1f4
void * FUN_0056d1f4(void *param_1)

{
  FUN_0056d1d4();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0056d20c  @ 0x56d20c
void FUN_0056d20c(int param_1,int param_2)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  undefined1 auStack_2c [4];
  undefined1 auStack_28 [20];
  
  if (param_2 == param_1) {
    FUN_0052f7f0(auStack_28,3,
                 "/builddata/pulse-data/agents/hpya5.eem/recipes/816348608/base/google3/googleclient/play_games_infra/play_games_sdk/proto/gen/local_connection_msg.pb.cc"
                 ,0x153);
    uVar1 = FUN_0052f6be(auStack_28,"CHECK failed: (&from) != (this): ");
    FUN_0052f9d4(auStack_2c,uVar1);
    FUN_0052f808(auStack_28);
  }
  if ((*(uint *)(param_2 + 0x18) & 0xff) != 0) {
    if ((int)(*(uint *)(param_2 + 0x18) << 0x1f) < 0) {
      uVar1 = *(undefined4 *)(param_2 + 4);
      *(uint *)(param_1 + 0x18) = *(uint *)(param_1 + 0x18) | 1;
      if (*(undefined4 **)(param_1 + 4) == &DAT_00960c38) {
        puVar2 = operator_new(4);
        *puVar2 = &DAT_00972528;
        *(undefined4 **)(param_1 + 4) = puVar2;
      }
      FUN_007c653c(*(undefined4 *)(param_1 + 4),uVar1);
    }
    if (*(int *)(param_2 + 0x18) << 0x1e < 0) {
      uVar1 = *(undefined4 *)(param_2 + 8);
      *(uint *)(param_1 + 0x18) = *(uint *)(param_1 + 0x18) | 2;
      if (*(undefined4 **)(param_1 + 8) == &DAT_00960c38) {
        puVar2 = operator_new(4);
        *puVar2 = &DAT_00972528;
        *(undefined4 **)(param_1 + 8) = puVar2;
      }
      FUN_007c653c(*(undefined4 *)(param_1 + 8),uVar1);
    }
    if (*(int *)(param_2 + 0x18) << 0x1d < 0) {
      uVar1 = *(undefined4 *)(param_2 + 0xc);
      *(uint *)(param_1 + 0x18) = *(uint *)(param_1 + 0x18) | 4;
      if (*(undefined4 **)(param_1 + 0xc) == &DAT_00960c38) {
        puVar2 = operator_new(4);
        *puVar2 = &DAT_00972528;
        *(undefined4 **)(param_1 + 0xc) = puVar2;
      }
      FUN_007c653c(*(undefined4 *)(param_1 + 0xc),uVar1);
    }
    if (*(int *)(param_2 + 0x18) << 0x1c < 0) {
      uVar1 = *(undefined4 *)(param_2 + 0x10);
      *(uint *)(param_1 + 0x18) = *(uint *)(param_1 + 0x18) | 8;
      if (*(undefined4 **)(param_1 + 0x10) == &DAT_00960c38) {
        puVar2 = operator_new(4);
        *puVar2 = &DAT_00972528;
        *(undefined4 **)(param_1 + 0x10) = puVar2;
      }
      FUN_007c653c(*(undefined4 *)(param_1 + 0x10),uVar1);
    }
  }
  return;
}

// ---- FUN_0056d338  @ 0x56d338
undefined4 * FUN_0056d338(undefined4 *param_1,undefined4 param_2)

{
  *param_1 = &PTR_FUN_0056d1d4_1_00928d68;
  FUN_0056d118();
  FUN_0056d20c(param_1,param_2);
  return param_1;
}

// ---- FUN_0056d3be  @ 0x56d3be
void FUN_0056d3be(int param_1)

{
  *(undefined4 *)(param_1 + 8) = 0;
  *(undefined1 *)(param_1 + 4) = 0;
  memset((void *)(param_1 + 0xc),0,4);
  return;
}

// ---- FUN_0056d3d0  @ 0x56d3d0
undefined4 * FUN_0056d3d0(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0056c650_1_00928e28;
  FUN_0056d3be();
  return param_1;
}

// ---- FUN_0056d4d8  @ 0x56d4d8
void FUN_0056d4d8(int param_1)

{
  *(undefined4 *)(param_1 + 8) = 0;
  *(undefined4 **)(param_1 + 4) = &DAT_00960c38;
  memset((void *)(param_1 + 0xc),0,4);
  return;
}

// ---- FUN_0056d4f4  @ 0x56d4f4
undefined4 * FUN_0056d4f4(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0056d548_1_00928e68;
  FUN_0056d4d8();
  return param_1;
}

// ---- FUN_0056d520  @ 0x56d520
void FUN_0056d520(int param_1)

{
  undefined4 *puVar1;
  
  puVar1 = *(undefined4 **)(param_1 + 4);
  if ((puVar1 != &DAT_00960c38) && (puVar1 != (undefined4 *)0x0)) {
    FUN_007c5914(puVar1);
    operator_delete(puVar1);
    return;
  }
  return;
}

// ---- FUN_0056d548  @ 0x56d548
undefined4 * FUN_0056d548(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0056d548_1_00928e68;
  FUN_0056d520();
  FUN_0052fe6c(param_1);
  return param_1;
}

// ---- FUN_0056d568  @ 0x56d568
void * FUN_0056d568(void *param_1)

{
  FUN_0056d548();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0056d682  @ 0x56d682
void FUN_0056d682(int param_1)

{
  *(undefined4 *)(param_1 + 4) = 0;
  memset((void *)(param_1 + 8),0,4);
  return;
}

// ---- FUN_0056d690  @ 0x56d690
undefined4 * FUN_0056d690(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0056c67c_1_00928d28;
  FUN_0056d682();
  return param_1;
}

// ---- FUN_0056d76a  @ 0x56d76a
void FUN_0056d76a(int param_1)

{
  *(undefined4 *)(param_1 + 4) = 0;
  memset((void *)(param_1 + 8),0,4);
  return;
}

// ---- FUN_0056d778  @ 0x56d778
undefined4 * FUN_0056d778(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0056c6a8_1_00928da8;
  FUN_0056d76a();
  return param_1;
}

// ---- FUN_0056d852  @ 0x56d852
void FUN_0056d852(int param_1)

{
  *(undefined4 *)(param_1 + 4) = 0;
  memset((void *)(param_1 + 8),0,4);
  return;
}

// ---- FUN_0056d860  @ 0x56d860
undefined4 * FUN_0056d860(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0056c6d4_1_00928ee8;
  FUN_0056d852();
  return param_1;
}

// ---- FUN_0056d93c  @ 0x56d93c
void FUN_0056d93c(int param_1)

{
  *(undefined4 *)(param_1 + 8) = 0;
  *(undefined4 **)(param_1 + 4) = &DAT_00960c38;
  memset((void *)(param_1 + 0xc),0,4);
  return;
}

// ---- FUN_0056d958  @ 0x56d958
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

int * FUN_0056d958(int *param_1)

{
  *param_1 = _FUN_0056d96c + 0x56d968;
  FUN_0056d93c();
  return param_1;
}

// ---- FUN_0056d96c  @ 0x56d96c
void * FUN_0056d96c(void)

{
  void *pvVar1;
  
  pvVar1 = operator_new(0x10);
  FUN_0056d958();
  return pvVar1;
}

// ---- FUN_0056d984  @ 0x56d984
void FUN_0056d984(int param_1)

{
  undefined4 *puVar1;
  
  puVar1 = *(undefined4 **)(param_1 + 4);
  if ((puVar1 != &DAT_00960c38) && (puVar1 != (undefined4 *)0x0)) {
    FUN_007c5914(puVar1);
    operator_delete(puVar1);
    return;
  }
  return;
}

// ---- FUN_0056dae6  @ 0x56dae6
void FUN_0056dae6(int param_1)

{
  *(undefined4 *)(param_1 + 4) = 0;
  memset((void *)(param_1 + 8),0,4);
  return;
}

// ---- FUN_0056daf4  @ 0x56daf4
undefined4 * FUN_0056daf4(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0056c700_1_00928ce8;
  FUN_0056dae6();
  return param_1;
}

// ---- FUN_0056dbd0  @ 0x56dbd0
void FUN_0056dbd0(int param_1)

{
  *(undefined4 *)(param_1 + 8) = 0;
  *(undefined4 **)(param_1 + 4) = &DAT_00960c38;
  memset((void *)(param_1 + 0xc),0,4);
  return;
}

// ---- FUN_0056dbec  @ 0x56dbec
undefined4 * FUN_0056dbec(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0056dc40_1_00928c68;
  FUN_0056dbd0();
  return param_1;
}

// ---- FUN_0056dc18  @ 0x56dc18
void FUN_0056dc18(int param_1)

{
  undefined4 *puVar1;
  
  puVar1 = *(undefined4 **)(param_1 + 4);
  if ((puVar1 != &DAT_00960c38) && (puVar1 != (undefined4 *)0x0)) {
    FUN_007c5914(puVar1);
    operator_delete(puVar1);
    return;
  }
  return;
}

// ---- FUN_0056dc40  @ 0x56dc40
undefined4 * FUN_0056dc40(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0056dc40_1_00928c68;
  FUN_0056dc18();
  FUN_0052fe6c(param_1);
  return param_1;
}

// ---- FUN_0056dc60  @ 0x56dc60
void * FUN_0056dc60(void *param_1)

{
  FUN_0056dc40();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0056dd7a  @ 0x56dd7a
void FUN_0056dd7a(int param_1)

{
  *(undefined4 *)(param_1 + 4) = 0;
  memset((void *)(param_1 + 8),0,4);
  return;
}

// ---- FUN_0056dd88  @ 0x56dd88
undefined4 * FUN_0056dd88(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0056c72c_1_00928de8;
  FUN_0056dd7a();
  return param_1;
}

// ---- FUN_0056de62  @ 0x56de62
void FUN_0056de62(int param_1)

{
  *(undefined4 *)(param_1 + 4) = 0;
  memset((void *)(param_1 + 8),0,4);
  return;
}

// ---- FUN_0056de70  @ 0x56de70
undefined4 * FUN_0056de70(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0056c758_1_00928ea8;
  FUN_0056de62();
  return param_1;
}

// ---- FUN_0056df4a  @ 0x56df4a
void FUN_0056df4a(int param_1)

{
  *(undefined4 *)(param_1 + 4) = 0;
  memset((void *)(param_1 + 8),0,4);
  return;
}

// ---- FUN_0056df58  @ 0x56df58
undefined4 * FUN_0056df58(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0056c784_1_00928ca8;
  FUN_0056df4a();
  return param_1;
}

// ---- FUN_0056df70  @ 0x56df70
void FUN_0056df70(void)

{
  vector<void(*)(),std::allocator<void(*)()>> *pvVar1;
  undefined4 uVar2;
  void *pvVar3;
  undefined4 *puVar4;
  undefined *puStack_c;
  
  if (DAT_00964444 == '\0') {
    DAT_00964444 = 1;
    FUN_0052f9dc("asD0Ev","asD0Ev",
                 "/builddata/pulse-data/agents/hpya5.eem/recipes/816348608/base/google3/googleclient/play_games_infra/play_games_sdk/proto/gen/local_connection_msg.pb.cc"
                );
    pvVar3 = operator_new(0x1c);
    FUN_0056d140();
    DAT_00964450 = pvVar3;
    pvVar3 = operator_new(0x10);
    FUN_0056d3d0();
    DAT_00964434 = pvVar3;
    pvVar3 = operator_new(0x10);
    FUN_0056d4f4();
    DAT_0096445c = pvVar3;
    pvVar3 = operator_new(0xc);
    FUN_0056d690();
    DAT_0096443c = pvVar3;
    pvVar3 = operator_new(0xc);
    FUN_0056d778();
    DAT_00964458 = pvVar3;
    pvVar3 = operator_new(0xc);
    FUN_0056d860();
    DAT_00964448 = pvVar3;
    pvVar3 = operator_new(0x10);
    FUN_0056d958();
    DAT_0096444c = pvVar3;
    pvVar3 = operator_new(0xc);
    FUN_0056daf4();
    DAT_00964430 = pvVar3;
    pvVar3 = operator_new(0x10);
    FUN_0056dbec();
    DAT_00964454 = pvVar3;
    pvVar3 = operator_new(0xc);
    FUN_0056dd88();
    DAT_00964440 = pvVar3;
    pvVar3 = operator_new(0xc);
    FUN_0056de70();
    DAT_0096442c = pvVar3;
    pvVar3 = operator_new(0xc);
    FUN_0056df58();
    puStack_c = &UNK_0056c4e5;
    DAT_00964428 = pvVar3;
    FUN_0052f604(0x960c24,0x52f855);
    uVar2 = DAT_00960c30;
    FUN_0052fb80(DAT_00960c30);
    pvVar1 = DAT_00960c2c;
    puVar4 = *(undefined4 **)(DAT_00960c2c + 4);
    if (puVar4 == *(undefined4 **)(DAT_00960c2c + 8)) {
      std::vector<void(*)(),std::allocator<void(*)()>>::_M_emplace_back_aux<void(*const&)()>
                (DAT_00960c2c,(_func_void *)&puStack_c);
    }
    else {
      if (puVar4 != (undefined4 *)0x0) {
        *puVar4 = puStack_c;
      }
      *(int *)(pvVar1 + 4) = *(int *)(pvVar1 + 4) + 4;
    }
    FUN_0052f8cc(uVar2);
    return;
  }
  return;
}

// ---- FUN_0056e2f8  @ 0x56e2f8
void FUN_0056e2f8(void)

{
  vector<void(*)(),std::allocator<void(*)()>> *pvVar1;
  undefined4 uVar2;
  undefined4 *puVar3;
  undefined *puStack_c;
  
  if (DAT_00964461 == '\0') {
    DAT_00964461 = 1;
    FUN_0052f9dc("asD0Ev","asD0Ev",
                 "/builddata/pulse-data/agents/hpya5.eem/recipes/816348608/base/google3/googleclient/play_games_infra/play_games_sdk/proto/gen/local_connection_msg_id.pb.cc"
                );
    puStack_c = &UNK_0056e2f5;
    FUN_0052f604(0x960c24,0x52f855);
    uVar2 = DAT_00960c30;
    FUN_0052fb80(DAT_00960c30);
    pvVar1 = DAT_00960c2c;
    puVar3 = *(undefined4 **)(DAT_00960c2c + 4);
    if (puVar3 == *(undefined4 **)(DAT_00960c2c + 8)) {
      std::vector<void(*)(),std::allocator<void(*)()>>::_M_emplace_back_aux<void(*const&)()>
                (DAT_00960c2c,(_func_void *)&puStack_c);
    }
    else {
      if (puVar3 != (undefined4 *)0x0) {
        *puVar3 = puStack_c;
      }
      *(int *)(pvVar1 + 4) = *(int *)(pvVar1 + 4) + 4;
    }
    FUN_0052f8cc(uVar2);
    return;
  }
  return;
}

// ---- FUN_0056e458  @ 0x56e458
undefined4 FUN_0056e458(int param_1)

{
  void *pvVar1;
  
  *(uint *)(param_1 + 0x2c) = *(uint *)(param_1 + 0x2c) | 0x10;
  if (*(int *)(param_1 + 0x14) == 0) {
    pvVar1 = operator_new(0x40);
    FUN_0056eecc();
    *(void **)(param_1 + 0x14) = pvVar1;
  }
  return *(undefined4 *)(param_1 + 0x14);
}

// ---- FUN_0056e484  @ 0x56e484
bool FUN_0056e484(int param_1)

{
  return param_1 - 1U < 7;
}

// ---- FUN_0056e490  @ 0x56e490
bool FUN_0056e490(int param_1)

{
  return param_1 - 1U < 6;
}

// ---- FUN_0056e49c  @ 0x56e49c
void FUN_0056e49c(int param_1)

{
  undefined4 uVar1;
  
  uVar1 = FUN_0056f020();
  *(undefined4 *)(param_1 + 0x14) = uVar1;
  return;
}

// ---- FUN_0056e4a8  @ 0x56e4a8
void FUN_0056e4a8(int param_1)

{
  *(undefined4 *)(param_1 + 0x28) = 0;
  *(undefined4 *)(param_1 + 0x14) = 0;
  *(undefined4 **)(param_1 + 4) = &DAT_00960c38;
  *(undefined4 **)(param_1 + 8) = &DAT_00960c38;
  *(undefined4 **)(param_1 + 0xc) = &DAT_00960c38;
  *(undefined4 **)(param_1 + 0x10) = &DAT_00960c38;
  *(undefined4 *)(param_1 + 0x20) = 0;
  *(undefined4 *)(param_1 + 0x18) = 1;
  *(undefined4 *)(param_1 + 0x1c) = 1;
  *(undefined1 *)(param_1 + 0x24) = 0;
  memset((void *)(param_1 + 0x2c),0,4);
  return;
}

// ---- FUN_0056e4e8  @ 0x56e4e8
undefined4 * FUN_0056e4e8(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0056e5e8_1_00928f68;
  FUN_0056e4a8();
  return param_1;
}

// ---- FUN_0056e500  @ 0x56e500
void FUN_0056e500(void)

{
  vector<void(*)(),std::allocator<void(*)()>> *pvVar1;
  undefined4 uVar2;
  void *pvVar3;
  undefined4 *puVar4;
  undefined *puStack_c;
  
  if (DAT_00964462 == '\0') {
    DAT_00964462 = 1;
    FUN_0052f9dc("asD0Ev","asD0Ev",
                 "/builddata/pulse-data/agents/hpya5.eem/recipes/816348608/base/google3/googleclient/play_games_infra/play_games_sdk/proto/gen/multiplayer_participant_impl.pb.cc"
                );
    FUN_0056eee4();
    pvVar3 = operator_new(0x30);
    FUN_0056e4e8();
    DAT_00964464 = pvVar3;
    FUN_0056e49c(pvVar3);
    puStack_c = &UNK_0056e34d;
    FUN_0052f604(0x960c24,0x52f855);
    uVar2 = DAT_00960c30;
    FUN_0052fb80(DAT_00960c30);
    pvVar1 = DAT_00960c2c;
    puVar4 = *(undefined4 **)(DAT_00960c2c + 4);
    if (puVar4 == *(undefined4 **)(DAT_00960c2c + 8)) {
      std::vector<void(*)(),std::allocator<void(*)()>>::_M_emplace_back_aux<void(*const&)()>
                (DAT_00960c2c,(_func_void *)&puStack_c);
    }
    else {
      if (puVar4 != (undefined4 *)0x0) {
        *puVar4 = puStack_c;
      }
      *(int *)(pvVar1 + 4) = *(int *)(pvVar1 + 4) + 4;
    }
    FUN_0052f8cc(uVar2);
    return;
  }
  return;
}

// ---- FUN_0056e56c  @ 0x56e56c
void FUN_0056e56c(int param_1)

{
  undefined4 *puVar1;
  
  puVar1 = *(undefined4 **)(param_1 + 4);
  if ((puVar1 != &DAT_00960c38) && (puVar1 != (undefined4 *)0x0)) {
    FUN_007c5914(puVar1);
    operator_delete(puVar1);
  }
  puVar1 = *(undefined4 **)(param_1 + 8);
  if ((puVar1 != &DAT_00960c38) && (puVar1 != (undefined4 *)0x0)) {
    FUN_007c5914(puVar1);
    operator_delete(puVar1);
  }
  puVar1 = *(undefined4 **)(param_1 + 0xc);
  if ((puVar1 != &DAT_00960c38) && (puVar1 != (undefined4 *)0x0)) {
    FUN_007c5914(puVar1);
    operator_delete(puVar1);
  }
  puVar1 = *(undefined4 **)(param_1 + 0x10);
  if ((puVar1 != &DAT_00960c38) && (puVar1 != (undefined4 *)0x0)) {
    FUN_007c5914(puVar1);
    operator_delete(puVar1);
  }
  if ((param_1 != DAT_00964464) && (*(int **)(param_1 + 0x14) != (int *)0x0)) {
    (**(code **)(**(int **)(param_1 + 0x14) + 4))();
  }
  return;
}

// ---- FUN_0056e5e8  @ 0x56e5e8
undefined4 * FUN_0056e5e8(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0056e5e8_1_00928f68;
  FUN_0056e56c();
  FUN_0052fe6c(param_1);
  return param_1;
}

// ---- FUN_0056e608  @ 0x56e608
void * FUN_0056e608(void *param_1)

{
  FUN_0056e5e8();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0056e620  @ 0x56e620
int FUN_0056e620(void)

{
  if (DAT_00964464 == 0) {
    FUN_0056e500();
  }
  return DAT_00964464;
}

// ---- FUN_0056e640  @ 0x56e640
void FUN_0056e640(int param_1,int param_2)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  int iVar3;
  undefined1 auStack_2c [4];
  undefined1 auStack_28 [20];
  
  if (param_2 == param_1) {
    FUN_0052f7f0(auStack_28,3,
                 "/builddata/pulse-data/agents/hpya5.eem/recipes/816348608/base/google3/googleclient/play_games_infra/play_games_sdk/proto/gen/multiplayer_participant_impl.pb.cc"
                 ,0x1fb);
    uVar1 = FUN_0052f6be(auStack_28,"CHECK failed: (&from) != (this): ");
    FUN_0052f9d4(auStack_2c,uVar1);
    FUN_0052f808(auStack_28);
  }
  if ((*(uint *)(param_2 + 0x2c) & 0xff) != 0) {
    if ((int)(*(uint *)(param_2 + 0x2c) << 0x1f) < 0) {
      uVar1 = *(undefined4 *)(param_2 + 4);
      *(uint *)(param_1 + 0x2c) = *(uint *)(param_1 + 0x2c) | 1;
      if (*(undefined4 **)(param_1 + 4) == &DAT_00960c38) {
        puVar2 = operator_new(4);
        *puVar2 = &DAT_00972528;
        *(undefined4 **)(param_1 + 4) = puVar2;
      }
      FUN_007c653c(*(undefined4 *)(param_1 + 4),uVar1);
    }
    if (*(int *)(param_2 + 0x2c) << 0x1e < 0) {
      uVar1 = *(undefined4 *)(param_2 + 8);
      *(uint *)(param_1 + 0x2c) = *(uint *)(param_1 + 0x2c) | 2;
      if (*(undefined4 **)(param_1 + 8) == &DAT_00960c38) {
        puVar2 = operator_new(4);
        *puVar2 = &DAT_00972528;
        *(undefined4 **)(param_1 + 8) = puVar2;
      }
      FUN_007c653c(*(undefined4 *)(param_1 + 8),uVar1);
    }
    if (*(int *)(param_2 + 0x2c) << 0x1d < 0) {
      uVar1 = *(undefined4 *)(param_2 + 0xc);
      *(uint *)(param_1 + 0x2c) = *(uint *)(param_1 + 0x2c) | 4;
      if (*(undefined4 **)(param_1 + 0xc) == &DAT_00960c38) {
        puVar2 = operator_new(4);
        *puVar2 = &DAT_00972528;
        *(undefined4 **)(param_1 + 0xc) = puVar2;
      }
      FUN_007c653c(*(undefined4 *)(param_1 + 0xc),uVar1);
    }
    if (*(int *)(param_2 + 0x2c) << 0x1c < 0) {
      uVar1 = *(undefined4 *)(param_2 + 0x10);
      *(uint *)(param_1 + 0x2c) = *(uint *)(param_1 + 0x2c) | 8;
      if (*(undefined4 **)(param_1 + 0x10) == &DAT_00960c38) {
        puVar2 = operator_new(4);
        *puVar2 = &DAT_00972528;
        *(undefined4 **)(param_1 + 0x10) = puVar2;
      }
      FUN_007c653c(*(undefined4 *)(param_1 + 0x10),uVar1);
    }
    if (*(int *)(param_2 + 0x2c) << 0x1b < 0) {
      uVar1 = FUN_0056e458(param_1);
      iVar3 = *(int *)(param_2 + 0x14);
      if (iVar3 == 0) {
        iVar3 = *(int *)(DAT_00964464 + 0x14);
      }
      FUN_0056f040(uVar1,iVar3);
    }
    if (*(int *)(param_2 + 0x2c) << 0x1a < 0) {
      *(undefined4 *)(param_1 + 0x18) = *(undefined4 *)(param_2 + 0x18);
      *(uint *)(param_1 + 0x2c) = *(uint *)(param_1 + 0x2c) | 0x20;
    }
    if (*(int *)(param_2 + 0x2c) << 0x19 < 0) {
      *(undefined4 *)(param_1 + 0x1c) = *(undefined4 *)(param_2 + 0x1c);
      *(uint *)(param_1 + 0x2c) = *(uint *)(param_1 + 0x2c) | 0x40;
    }
    if (*(int *)(param_2 + 0x2c) << 0x18 < 0) {
      *(undefined4 *)(param_1 + 0x20) = *(undefined4 *)(param_2 + 0x20);
      *(uint *)(param_1 + 0x2c) = *(uint *)(param_1 + 0x2c) | 0x80;
    }
  }
  if (((*(uint *)(param_2 + 0x2c) & 0xff00) != 0) && ((int)(*(uint *)(param_2 + 0x2c) << 0x17) < 0))
  {
    *(undefined1 *)(param_1 + 0x24) = *(undefined1 *)(param_2 + 0x24);
    *(uint *)(param_1 + 0x2c) = *(uint *)(param_1 + 0x2c) | 0x100;
  }
  return;
}

// ---- FUN_0056e894  @ 0x56e894
void FUN_0056e894(int param_1)

{
  if ((*(uint *)(param_1 + 0x2c) & 0xff) != 0) {
    if (((int)(*(uint *)(param_1 + 0x2c) << 0x1f) < 0) &&
       (*(undefined4 **)(param_1 + 4) != &DAT_00960c38)) {
      FUN_007c5b70();
    }
    if ((*(int *)(param_1 + 0x2c) << 0x1e < 0) && (*(undefined4 **)(param_1 + 8) != &DAT_00960c38))
    {
      FUN_007c5b70();
    }
    if ((*(int *)(param_1 + 0x2c) << 0x1d < 0) && (*(undefined4 **)(param_1 + 0xc) != &DAT_00960c38)
       ) {
      FUN_007c5b70();
    }
    if ((*(int *)(param_1 + 0x2c) << 0x1c < 0) &&
       (*(undefined4 **)(param_1 + 0x10) != &DAT_00960c38)) {
      FUN_007c5b70();
    }
    if ((*(int *)(param_1 + 0x2c) << 0x1b < 0) && (*(int *)(param_1 + 0x14) != 0)) {
      FUN_0056f2d4();
    }
    *(undefined4 *)(param_1 + 0x18) = 1;
    *(undefined4 *)(param_1 + 0x1c) = 1;
    *(undefined4 *)(param_1 + 0x20) = 0;
  }
  if ((*(uint *)(param_1 + 0x2c) & 0xff00) != 0) {
    *(undefined1 *)(param_1 + 0x24) = 0;
  }
  memset((void *)(param_1 + 0x2c),0,4);
  return;
}

// ---- FUN_0056e930  @ 0x56e930
int FUN_0056e930(int param_1,int param_2)

{
  char cVar1;
  undefined4 *puVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  int iVar5;
  int iVar6;
  uint uVar7;
  byte *pbVar8;
  uint uVar9;
  char *pcVar10;
  int iVar11;
  int local_24;
  
  iVar11 = param_1;
  local_24 = param_2;
LAB_0056e942:
  pbVar8 = *(byte **)(param_2 + 4);
  if ((pbVar8 < *(byte **)(param_2 + 8)) && (uVar7 = (uint)*pbVar8, -1 < (int)(uVar7 << 0x18))) {
    *(uint *)(param_2 + 0x14) = uVar7;
    *(byte **)(param_2 + 4) = pbVar8 + 1;
  }
  else {
    uVar7 = FUN_00531548(param_2);
    *(uint *)(param_2 + 0x14) = uVar7;
  }
  if (uVar7 == 0) {
    return 1;
  }
  uVar9 = uVar7 & 7;
  switch(uVar7 >> 3) {
  case 1:
    if (uVar9 != 2) break;
    *(uint *)(param_1 + 0x2c) = *(uint *)(param_1 + 0x2c) | 1;
    if (*(undefined4 **)(param_1 + 4) == &DAT_00960c38) {
      puVar2 = operator_new(4);
      *puVar2 = &DAT_00972528;
      *(undefined4 **)(param_1 + 4) = puVar2;
    }
    iVar6 = FUN_00530d42(param_2,*(undefined4 *)(param_1 + 4));
    if (iVar6 == 0) {
      return 0;
    }
    pcVar10 = *(char **)(param_2 + 4);
    if ((pcVar10 < *(char **)(param_2 + 8)) && (*pcVar10 == '\x12')) {
      *(char **)(param_2 + 4) = pcVar10 + 1;
LAB_0056e9dc:
      *(uint *)(param_1 + 0x2c) = *(uint *)(param_1 + 0x2c) | 2;
      if (*(undefined4 **)(param_1 + 8) == &DAT_00960c38) {
        puVar2 = operator_new(4);
        *puVar2 = &DAT_00972528;
        *(undefined4 **)(param_1 + 8) = puVar2;
      }
      iVar6 = FUN_00530d42(param_2,*(undefined4 *)(param_1 + 8));
      if (iVar6 == 0) {
        return 0;
      }
      pcVar10 = *(char **)(param_2 + 4);
      if ((pcVar10 < *(char **)(param_2 + 8)) && (*pcVar10 == '\x1a')) {
        *(char **)(param_2 + 4) = pcVar10 + 1;
LAB_0056ea24:
        *(uint *)(param_1 + 0x2c) = *(uint *)(param_1 + 0x2c) | 4;
        if (*(undefined4 **)(param_1 + 0xc) == &DAT_00960c38) {
          puVar2 = operator_new(4);
          *puVar2 = &DAT_00972528;
          *(undefined4 **)(param_1 + 0xc) = puVar2;
        }
        iVar6 = FUN_00530d42(param_2,*(undefined4 *)(param_1 + 0xc));
        if (iVar6 == 0) {
          return 0;
        }
        pcVar10 = *(char **)(param_2 + 4);
        if ((pcVar10 < *(char **)(param_2 + 8)) && (*pcVar10 == '\"')) {
          *(char **)(param_2 + 4) = pcVar10 + 1;
LAB_0056ea70:
          *(uint *)(param_1 + 0x2c) = *(uint *)(param_1 + 0x2c) | 8;
          if (*(undefined4 **)(param_1 + 0x10) == &DAT_00960c38) {
            puVar2 = operator_new(4);
            *puVar2 = &DAT_00972528;
            *(undefined4 **)(param_1 + 0x10) = puVar2;
          }
          iVar6 = FUN_00530d42(param_2,*(undefined4 *)(param_1 + 0x10));
          if (iVar6 == 0) {
            return 0;
          }
          pcVar10 = *(char **)(param_2 + 4);
          if ((pcVar10 < *(char **)(param_2 + 8)) && (*pcVar10 == '*')) {
            *(char **)(param_2 + 4) = pcVar10 + 1;
LAB_0056eabc:
            uVar3 = FUN_0056e458(param_1);
            iVar6 = FUN_005307ec(param_2,&local_24);
            if (iVar6 == 0) {
              return 0;
            }
            iVar6 = *(int *)(param_2 + 0x2c) + 1;
            *(int *)(param_2 + 0x2c) = iVar6;
            if (*(int *)(param_2 + 0x30) < iVar6) {
              return 0;
            }
            uVar4 = FUN_00530eac(param_2,local_24);
            iVar6 = FUN_0056f3f8(uVar3,param_2);
            if (iVar6 == 0) {
              return 0;
            }
            cVar1 = *(char *)(param_2 + 0x18);
            if (cVar1 == '\0') {
              return 0;
            }
            FUN_00530eea(param_2,uVar4);
            if (0 < *(int *)(param_2 + 0x2c)) {
              *(int *)(param_2 + 0x2c) = *(int *)(param_2 + 0x2c) + -1;
            }
            if (cVar1 == '\0') {
              return 0;
            }
            pcVar10 = *(char **)(param_2 + 4);
            if ((pcVar10 < *(char **)(param_2 + 8)) && (*pcVar10 == '0')) {
              *(char **)(param_2 + 4) = pcVar10 + 1;
LAB_0056eb3c:
              iVar5 = FUN_005307ec(param_2,&local_24);
              iVar6 = local_24;
              if (iVar5 == 0) {
                return 0;
              }
              iVar5 = FUN_0056e484(local_24);
              if (iVar5 != 0) {
                *(int *)(param_1 + 0x18) = iVar6;
                *(uint *)(param_1 + 0x2c) = *(uint *)(param_1 + 0x2c) | 0x20;
              }
              pcVar10 = *(char **)(param_2 + 4);
              if ((pcVar10 < *(char **)(param_2 + 8)) && (*pcVar10 == '8')) {
                *(char **)(param_2 + 4) = pcVar10 + 1;
LAB_0056eb7e:
                iVar5 = FUN_005307ec(param_2,&local_24);
                iVar6 = local_24;
                if (iVar5 == 0) {
                  return 0;
                }
                iVar5 = FUN_0056e490(local_24);
                if (iVar5 != 0) {
                  *(int *)(param_1 + 0x1c) = iVar6;
                  *(uint *)(param_1 + 0x2c) = *(uint *)(param_1 + 0x2c) | 0x40;
                }
                pcVar10 = *(char **)(param_2 + 4);
                if ((pcVar10 < *(char **)(param_2 + 8)) && (*pcVar10 == '@')) {
                  *(char **)(param_2 + 4) = pcVar10 + 1;
LAB_0056ebc0:
                  iVar6 = FUN_005307ec(param_2,param_1 + 0x20);
                  if (iVar6 == 0) {
                    return 0;
                  }
                  *(uint *)(param_1 + 0x2c) = *(uint *)(param_1 + 0x2c) | 0x80;
                  pcVar10 = *(char **)(param_2 + 4);
                  if ((pcVar10 < *(char **)(param_2 + 8)) && (*pcVar10 == 'H')) {
                    *(char **)(param_2 + 4) = pcVar10 + 1;
LAB_0056ebf0:
                    iVar6 = FUN_005307ec(param_2,&local_24);
                    if (iVar6 == 0) {
                      return 0;
                    }
                    *(bool *)(param_1 + 0x24) = local_24 != 0;
                    *(uint *)(param_1 + 0x2c) = *(uint *)(param_1 + 0x2c) | 0x100;
                    if ((*(int *)(param_2 + 4) == *(int *)(param_2 + 8)) &&
                       ((*(int *)(param_2 + 0x20) != 0 ||
                        (*(int *)(param_2 + 0xc) == *(int *)(param_2 + 0x1c))))) {
                      *(undefined4 *)(param_2 + 0x14) = 0;
                      *(undefined1 *)(param_2 + 0x18) = 1;
                      return iVar6;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
    goto LAB_0056e942;
  case 2:
    if (uVar9 == 2) goto LAB_0056e9dc;
    break;
  case 3:
    if (uVar9 == 2) goto LAB_0056ea24;
    break;
  case 4:
    if (uVar9 == 2) goto LAB_0056ea70;
    break;
  case 5:
    if (uVar9 == 2) goto LAB_0056eabc;
    break;
  case 6:
    if (uVar9 == 0) goto LAB_0056eb3c;
    break;
  case 7:
    if (uVar9 == 0) goto LAB_0056eb7e;
    break;
  case 8:
    if (uVar9 == 0) goto LAB_0056ebc0;
    break;
  case 9:
    if (uVar9 == 0) goto LAB_0056ebf0;
  }
  if (uVar9 == 4) {
    return 1;
  }
  iVar6 = FUN_0053086a(param_2,uVar7,uVar7,uVar9,iVar11);
  if (iVar6 == 0) {
    return 0;
  }
  goto LAB_0056e942;
}

// ---- FUN_0056ec5c  @ 0x56ec5c
int FUN_0056ec5c(int param_1)

{
  int iVar1;
  int iVar2;
  int iVar3;
  
  iVar1 = 0;
  if ((*(uint *)(param_1 + 0x2c) & 0xff) != 0) {
    iVar1 = 0;
    if ((*(uint *)(param_1 + 0x2c) & 1) != 0) {
      iVar1 = FUN_0056994c(*(undefined4 *)(param_1 + 4));
      iVar1 = iVar1 + 1;
    }
    if (*(int *)(param_1 + 0x2c) << 0x1e < 0) {
      iVar2 = FUN_0056994c(*(undefined4 *)(param_1 + 8));
      iVar1 = iVar1 + iVar2 + 1;
    }
    if (*(int *)(param_1 + 0x2c) << 0x1d < 0) {
      iVar2 = FUN_0056994c(*(undefined4 *)(param_1 + 0xc));
      iVar1 = iVar1 + iVar2 + 1;
    }
    if (*(int *)(param_1 + 0x2c) << 0x1c < 0) {
      iVar2 = FUN_0056994c(*(undefined4 *)(param_1 + 0x10));
      iVar1 = iVar1 + iVar2 + 1;
    }
    if (*(int *)(param_1 + 0x2c) << 0x1b < 0) {
      iVar2 = *(int *)(param_1 + 0x14);
      if (iVar2 == 0) {
        iVar2 = *(int *)(DAT_00964464 + 0x14);
      }
      iVar2 = FUN_0056f6dc(iVar2);
      iVar3 = FUN_00569940();
      iVar1 = iVar1 + iVar3 + iVar2 + 1;
    }
    if (*(int *)(param_1 + 0x2c) << 0x1a < 0) {
      if (*(int *)(param_1 + 0x18) < 0) {
        iVar2 = 10;
      }
      else {
        iVar2 = FUN_00569940();
      }
      iVar1 = iVar1 + iVar2 + 1;
    }
    if (*(int *)(param_1 + 0x2c) << 0x19 < 0) {
      if (*(int *)(param_1 + 0x1c) < 0) {
        iVar2 = 10;
      }
      else {
        iVar2 = FUN_00569940();
      }
      iVar1 = iVar1 + iVar2 + 1;
    }
    if (*(int *)(param_1 + 0x2c) << 0x18 < 0) {
      iVar2 = FUN_00569940(*(undefined4 *)(param_1 + 0x20));
      iVar1 = iVar1 + iVar2 + 1;
    }
  }
  if (((*(uint *)(param_1 + 0x2c) & 0xff00) != 0) && ((int)(*(uint *)(param_1 + 0x2c) << 0x17) < 0))
  {
    iVar1 = iVar1 + 2;
  }
  *(int *)(param_1 + 0x28) = iVar1;
  return iVar1;
}

// ---- FUN_0056ee1c  @ 0x56ee1c
undefined4 FUN_0056ee1c(int param_1)

{
  void *pvVar1;
  
  *(uint *)(param_1 + 0x38) = *(uint *)(param_1 + 0x38) | 0x10;
  if (*(int *)(param_1 + 0x14) == 0) {
    pvVar1 = operator_new(0x28);
    FUN_0056f9dc();
    *(void **)(param_1 + 0x14) = pvVar1;
  }
  return *(undefined4 *)(param_1 + 0x14);
}

// ---- FUN_0056ee48  @ 0x56ee48
undefined4 FUN_0056ee48(int param_1)

{
  void *pvVar1;
  
  *(uint *)(param_1 + 0x38) = *(uint *)(param_1 + 0x38) | 0x20;
  if (*(int *)(param_1 + 0x18) == 0) {
    pvVar1 = operator_new(0x28);
    FUN_0056f9dc();
    *(void **)(param_1 + 0x18) = pvVar1;
  }
  return *(undefined4 *)(param_1 + 0x18);
}

// ---- FUN_0056ee74  @ 0x56ee74
void FUN_0056ee74(int param_1)

{
  undefined4 uVar1;
  
  uVar1 = FUN_0056fa5c();
  *(undefined4 *)(param_1 + 0x14) = uVar1;
  uVar1 = FUN_0056fa5c();
  *(undefined4 *)(param_1 + 0x18) = uVar1;
  return;
}

// ---- FUN_0056ee88  @ 0x56ee88
void FUN_0056ee88(int param_1)

{
  *(undefined4 *)(param_1 + 0x34) = 0;
  *(undefined4 *)(param_1 + 0x20) = 0;
  *(undefined4 *)(param_1 + 0x24) = 0;
  *(undefined4 *)(param_1 + 0x28) = 0;
  *(undefined4 *)(param_1 + 0x2c) = 0;
  *(undefined4 **)(param_1 + 4) = &DAT_00960c38;
  *(undefined4 **)(param_1 + 8) = &DAT_00960c38;
  *(undefined4 **)(param_1 + 0xc) = &DAT_00960c38;
  *(undefined4 **)(param_1 + 0x10) = &DAT_00960c38;
  *(undefined4 *)(param_1 + 0x14) = 0;
  *(undefined4 *)(param_1 + 0x18) = 0;
  *(undefined4 **)(param_1 + 0x30) = &DAT_00960c38;
  memset((void *)(param_1 + 0x38),0,4);
  return;
}

// ---- FUN_0056eecc  @ 0x56eecc
undefined4 * FUN_0056eecc(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0056efe8_1_00928fa8;
  FUN_0056ee88();
  return param_1;
}

// ---- FUN_0056eee4  @ 0x56eee4
void FUN_0056eee4(void)

{
  vector<void(*)(),std::allocator<void(*)()>> *pvVar1;
  undefined4 uVar2;
  void *pvVar3;
  undefined4 *puVar4;
  undefined *puStack_c;
  
  if (DAT_0096446a == '\0') {
    DAT_0096446a = 1;
    FUN_0052f9dc("asD0Ev","asD0Ev",
                 "/builddata/pulse-data/agents/hpya5.eem/recipes/816348608/base/google3/googleclient/play_games_infra/play_games_sdk/proto/gen/player_impl.pb.cc"
                );
    FUN_0056f9f4();
    pvVar3 = operator_new(0x40);
    FUN_0056eecc();
    DAT_0096446c = pvVar3;
    FUN_0056ee74(pvVar3);
    puStack_c = &UNK_0056ed25;
    FUN_0052f604(0x960c24,0x52f855);
    uVar2 = DAT_00960c30;
    FUN_0052fb80(DAT_00960c30);
    pvVar1 = DAT_00960c2c;
    puVar4 = *(undefined4 **)(DAT_00960c2c + 4);
    if (puVar4 == *(undefined4 **)(DAT_00960c2c + 8)) {
      std::vector<void(*)(),std::allocator<void(*)()>>::_M_emplace_back_aux<void(*const&)()>
                (DAT_00960c2c,(_func_void *)&puStack_c);
    }
    else {
      if (puVar4 != (undefined4 *)0x0) {
        *puVar4 = puStack_c;
      }
      *(int *)(pvVar1 + 4) = *(int *)(pvVar1 + 4) + 4;
    }
    FUN_0052f8cc(uVar2);
    return;
  }
  return;
}

// ---- FUN_0056ef50  @ 0x56ef50
void FUN_0056ef50(int param_1)

{
  undefined4 *puVar1;
  
  puVar1 = *(undefined4 **)(param_1 + 4);
  if ((puVar1 != &DAT_00960c38) && (puVar1 != (undefined4 *)0x0)) {
    FUN_007c5914(puVar1);
    operator_delete(puVar1);
  }
  puVar1 = *(undefined4 **)(param_1 + 8);
  if ((puVar1 != &DAT_00960c38) && (puVar1 != (undefined4 *)0x0)) {
    FUN_007c5914(puVar1);
    operator_delete(puVar1);
  }
  puVar1 = *(undefined4 **)(param_1 + 0xc);
  if ((puVar1 != &DAT_00960c38) && (puVar1 != (undefined4 *)0x0)) {
    FUN_007c5914(puVar1);
    operator_delete(puVar1);
  }
  puVar1 = *(undefined4 **)(param_1 + 0x10);
  if ((puVar1 != &DAT_00960c38) && (puVar1 != (undefined4 *)0x0)) {
    FUN_007c5914(puVar1);
    operator_delete(puVar1);
  }
  puVar1 = *(undefined4 **)(param_1 + 0x30);
  if ((puVar1 != &DAT_00960c38) && (puVar1 != (undefined4 *)0x0)) {
    FUN_007c5914(puVar1);
    operator_delete(puVar1);
  }
  if (param_1 != DAT_0096446c) {
    if (*(int **)(param_1 + 0x14) != (int *)0x0) {
      (**(code **)(**(int **)(param_1 + 0x14) + 4))();
    }
    if (*(int **)(param_1 + 0x18) != (int *)0x0) {
      (**(code **)(**(int **)(param_1 + 0x18) + 4))();
    }
  }
  return;
}

// ---- FUN_0056efe8  @ 0x56efe8
undefined4 * FUN_0056efe8(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0056efe8_1_00928fa8;
  FUN_0056ef50();
  FUN_0052fe6c(param_1);
  return param_1;
}

// ---- FUN_0056f008  @ 0x56f008
void * FUN_0056f008(void *param_1)

{
  FUN_0056efe8();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0056f020  @ 0x56f020
int FUN_0056f020(void)

{
  if (DAT_0096446c == 0) {
    FUN_0056eee4();
  }
  return DAT_0096446c;
}

// ---- FUN_0056f040  @ 0x56f040
void FUN_0056f040(int param_1,int param_2)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  int iVar3;
  undefined1 auStack_2c [4];
  undefined1 auStack_28 [20];
  
  if (param_2 == param_1) {
    FUN_0052f7f0(auStack_28,3,
                 "/builddata/pulse-data/agents/hpya5.eem/recipes/816348608/base/google3/googleclient/play_games_infra/play_games_sdk/proto/gen/player_impl.pb.cc"
                 ,0x1e8);
    uVar1 = FUN_0052f6be(auStack_28,"CHECK failed: (&from) != (this): ");
    FUN_0052f9d4(auStack_2c,uVar1);
    FUN_0052f808(auStack_28);
  }
  if ((*(uint *)(param_2 + 0x38) & 0xff) != 0) {
    if ((int)(*(uint *)(param_2 + 0x38) << 0x1f) < 0) {
      uVar1 = *(undefined4 *)(param_2 + 4);
      *(uint *)(param_1 + 0x38) = *(uint *)(param_1 + 0x38) | 1;
      if (*(undefined4 **)(param_1 + 4) == &DAT_00960c38) {
        puVar2 = operator_new(4);
        *puVar2 = &DAT_00972528;
        *(undefined4 **)(param_1 + 4) = puVar2;
      }
      FUN_007c653c(*(undefined4 *)(param_1 + 4),uVar1);
    }
    if (*(int *)(param_2 + 0x38) << 0x1e < 0) {
      uVar1 = *(undefined4 *)(param_2 + 8);
      *(uint *)(param_1 + 0x38) = *(uint *)(param_1 + 0x38) | 2;
      if (*(undefined4 **)(param_1 + 8) == &DAT_00960c38) {
        puVar2 = operator_new(4);
        *puVar2 = &DAT_00972528;
        *(undefined4 **)(param_1 + 8) = puVar2;
      }
      FUN_007c653c(*(undefined4 *)(param_1 + 8),uVar1);
    }
    if (*(int *)(param_2 + 0x38) << 0x1d < 0) {
      uVar1 = *(undefined4 *)(param_2 + 0xc);
      *(uint *)(param_1 + 0x38) = *(uint *)(param_1 + 0x38) | 4;
      if (*(undefined4 **)(param_1 + 0xc) == &DAT_00960c38) {
        puVar2 = operator_new(4);
        *puVar2 = &DAT_00972528;
        *(undefined4 **)(param_1 + 0xc) = puVar2;
      }
      FUN_007c653c(*(undefined4 *)(param_1 + 0xc),uVar1);
    }
    if (*(int *)(param_2 + 0x38) << 0x1c < 0) {
      uVar1 = *(undefined4 *)(param_2 + 0x10);
      *(uint *)(param_1 + 0x38) = *(uint *)(param_1 + 0x38) | 8;
      if (*(undefined4 **)(param_1 + 0x10) == &DAT_00960c38) {
        puVar2 = operator_new(4);
        *puVar2 = &DAT_00972528;
        *(undefined4 **)(param_1 + 0x10) = puVar2;
      }
      FUN_007c653c(*(undefined4 *)(param_1 + 0x10),uVar1);
    }
    if (*(int *)(param_2 + 0x38) << 0x1b < 0) {
      uVar1 = FUN_0056ee1c(param_1);
      iVar3 = *(int *)(param_2 + 0x14);
      if (iVar3 == 0) {
        iVar3 = *(int *)(DAT_0096446c + 0x14);
      }
      FUN_0056fa7c(uVar1,iVar3);
    }
    if (*(int *)(param_2 + 0x38) << 0x1a < 0) {
      uVar1 = FUN_0056ee48(param_1);
      iVar3 = *(int *)(param_2 + 0x18);
      if (iVar3 == 0) {
        iVar3 = *(int *)(DAT_0096446c + 0x18);
      }
      FUN_0056fa7c(uVar1,iVar3);
    }
    if (*(int *)(param_2 + 0x38) << 0x19 < 0) {
      uVar1 = *(undefined4 *)(param_2 + 0x24);
      *(undefined4 *)(param_1 + 0x20) = *(undefined4 *)(param_2 + 0x20);
      *(undefined4 *)(param_1 + 0x24) = uVar1;
      *(uint *)(param_1 + 0x38) = *(uint *)(param_1 + 0x38) | 0x40;
    }
    if (*(int *)(param_2 + 0x38) << 0x18 < 0) {
      uVar1 = *(undefined4 *)(param_2 + 0x2c);
      *(undefined4 *)(param_1 + 0x28) = *(undefined4 *)(param_2 + 0x28);
      *(undefined4 *)(param_1 + 0x2c) = uVar1;
      *(uint *)(param_1 + 0x38) = *(uint *)(param_1 + 0x38) | 0x80;
    }
  }
  if (((*(uint *)(param_2 + 0x38) & 0xff00) != 0) && ((int)(*(uint *)(param_2 + 0x38) << 0x17) < 0))
  {
    uVar1 = *(undefined4 *)(param_2 + 0x30);
    *(uint *)(param_1 + 0x38) = *(uint *)(param_1 + 0x38) | 0x100;
    if (*(undefined4 **)(param_1 + 0x30) == &DAT_00960c38) {
      puVar2 = operator_new(4);
      *puVar2 = &DAT_00972528;
      *(undefined4 **)(param_1 + 0x30) = puVar2;
    }
    FUN_007c653c(*(undefined4 *)(param_1 + 0x30),uVar1);
  }
  return;
}

// ---- FUN_0056f2d4  @ 0x56f2d4
void FUN_0056f2d4(int param_1)

{
  if ((*(uint *)(param_1 + 0x38) & 0xff) != 0) {
    if (((int)(*(uint *)(param_1 + 0x38) << 0x1f) < 0) &&
       (*(undefined4 **)(param_1 + 4) != &DAT_00960c38)) {
      FUN_007c5b70();
    }
    if ((*(int *)(param_1 + 0x38) << 0x1e < 0) && (*(undefined4 **)(param_1 + 8) != &DAT_00960c38))
    {
      FUN_007c5b70();
    }
    if ((*(int *)(param_1 + 0x38) << 0x1d < 0) && (*(undefined4 **)(param_1 + 0xc) != &DAT_00960c38)
       ) {
      FUN_007c5b70();
    }
    if ((*(int *)(param_1 + 0x38) << 0x1c < 0) &&
       (*(undefined4 **)(param_1 + 0x10) != &DAT_00960c38)) {
      FUN_007c5b70();
    }
    if ((*(int *)(param_1 + 0x38) << 0x1b < 0) && (*(int *)(param_1 + 0x14) != 0)) {
      FUN_0056f7ee();
    }
    if ((*(int *)(param_1 + 0x38) << 0x1a < 0) && (*(int *)(param_1 + 0x18) != 0)) {
      FUN_0056f7ee();
    }
    *(undefined4 *)(param_1 + 0x20) = 0;
    *(undefined4 *)(param_1 + 0x24) = 0;
    *(undefined4 *)(param_1 + 0x28) = 0;
    *(undefined4 *)(param_1 + 0x2c) = 0;
  }
  if ((((*(uint *)(param_1 + 0x38) & 0xff00) != 0) && ((int)(*(uint *)(param_1 + 0x38) << 0x17) < 0)
      ) && (*(undefined4 **)(param_1 + 0x30) != &DAT_00960c38)) {
    FUN_007c5b70();
  }
  memset((void *)(param_1 + 0x38),0,4);
  return;
}

// ---- FUN_0056f38c  @ 0x56f38c
char FUN_0056f38c(int param_1,byte *param_2)

{
  char cVar1;
  undefined4 uVar2;
  byte *pbVar3;
  byte *pbVar4;
  int iVar5;
  byte *local_14;
  
  pbVar4 = *(byte **)(param_1 + 4);
  pbVar3 = *(byte **)(param_1 + 8);
  if ((pbVar4 < pbVar3) && (pbVar3 = (byte *)(uint)*pbVar4, -1 < (int)pbVar3 << 0x18)) {
    *(byte **)(param_1 + 4) = pbVar4 + 1;
    local_14 = pbVar3;
  }
  else {
    local_14 = param_2;
    iVar5 = FUN_0053145a(param_1,&local_14,pbVar3,pbVar4,param_1);
    if (iVar5 == 0) {
      return '\0';
    }
  }
  iVar5 = *(int *)(param_1 + 0x2c) + 1;
  *(int *)(param_1 + 0x2c) = iVar5;
  if (iVar5 <= *(int *)(param_1 + 0x30)) {
    uVar2 = FUN_00530eac(param_1,local_14);
    iVar5 = FUN_0056f8b2(param_2,param_1);
    if ((iVar5 != 0) && (cVar1 = *(char *)(param_1 + 0x18), cVar1 != '\0')) {
      FUN_00530eea(param_1,uVar2);
      if (0 < *(int *)(param_1 + 0x2c)) {
        *(int *)(param_1 + 0x2c) = *(int *)(param_1 + 0x2c) + -1;
        return cVar1;
      }
      return cVar1;
    }
  }
  return '\0';
}

// ---- FUN_0056f3f8  @ 0x56f3f8
int FUN_0056f3f8(int param_1,int param_2)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  int iVar3;
  uint uVar4;
  byte *pbVar5;
  uint uVar6;
  char *pcVar7;
  
LAB_0056f40c:
  pbVar5 = *(byte **)(param_2 + 4);
  if ((pbVar5 < *(byte **)(param_2 + 8)) && (uVar4 = (uint)*pbVar5, -1 < (int)(uVar4 << 0x18))) {
    *(uint *)(param_2 + 0x14) = uVar4;
    *(byte **)(param_2 + 4) = pbVar5 + 1;
  }
  else {
    uVar4 = FUN_00531548(param_2);
    *(uint *)(param_2 + 0x14) = uVar4;
  }
  if (uVar4 == 0) {
    return 1;
  }
  uVar6 = uVar4 & 7;
  switch(uVar4 >> 3) {
  case 1:
    if (uVar6 != 2) break;
    *(uint *)(param_1 + 0x38) = *(uint *)(param_1 + 0x38) | 1;
    if (*(undefined4 **)(param_1 + 4) == &DAT_00960c38) {
      puVar2 = operator_new(4);
      *puVar2 = &DAT_00972528;
      *(undefined4 **)(param_1 + 4) = puVar2;
    }
    iVar3 = FUN_00530d42(param_2,*(undefined4 *)(param_1 + 4));
    if (iVar3 == 0) {
      return 0;
    }
    pcVar7 = *(char **)(param_2 + 4);
    if ((pcVar7 < *(char **)(param_2 + 8)) && (*pcVar7 == '\x12')) {
      *(char **)(param_2 + 4) = pcVar7 + 1;
LAB_0056f4a8:
      *(uint *)(param_1 + 0x38) = *(uint *)(param_1 + 0x38) | 2;
      if (*(undefined4 **)(param_1 + 8) == &DAT_00960c38) {
        puVar2 = operator_new(4);
        *puVar2 = &DAT_00972528;
        *(undefined4 **)(param_1 + 8) = puVar2;
      }
      iVar3 = FUN_00530d42(param_2,*(undefined4 *)(param_1 + 8));
      if (iVar3 == 0) {
        return 0;
      }
      pcVar7 = *(char **)(param_2 + 4);
      if ((pcVar7 < *(char **)(param_2 + 8)) && (*pcVar7 == '\x1a')) {
        *(char **)(param_2 + 4) = pcVar7 + 1;
LAB_0056f4f0:
        *(uint *)(param_1 + 0x38) = *(uint *)(param_1 + 0x38) | 4;
        if (*(undefined4 **)(param_1 + 0xc) == &DAT_00960c38) {
          puVar2 = operator_new(4);
          *puVar2 = &DAT_00972528;
          *(undefined4 **)(param_1 + 0xc) = puVar2;
        }
        iVar3 = FUN_00530d42(param_2,*(undefined4 *)(param_1 + 0xc));
        if (iVar3 == 0) {
          return 0;
        }
        pcVar7 = *(char **)(param_2 + 4);
        if ((pcVar7 < *(char **)(param_2 + 8)) && (*pcVar7 == '\"')) {
          *(char **)(param_2 + 4) = pcVar7 + 1;
LAB_0056f53c:
          *(uint *)(param_1 + 0x38) = *(uint *)(param_1 + 0x38) | 8;
          if (*(undefined4 **)(param_1 + 0x10) == &DAT_00960c38) {
            puVar2 = operator_new(4);
            *puVar2 = &DAT_00972528;
            *(undefined4 **)(param_1 + 0x10) = puVar2;
          }
          iVar3 = FUN_00530d42(param_2,*(undefined4 *)(param_1 + 0x10));
          if (iVar3 == 0) {
            return 0;
          }
          pcVar7 = *(char **)(param_2 + 4);
          if ((pcVar7 < *(char **)(param_2 + 8)) && (*pcVar7 == '*')) {
            *(char **)(param_2 + 4) = pcVar7 + 1;
LAB_0056f588:
            uVar1 = FUN_0056ee1c(param_1);
            iVar3 = FUN_0056f38c(param_2,uVar1);
            if (iVar3 == 0) {
              return 0;
            }
            pcVar7 = *(char **)(param_2 + 4);
            if ((pcVar7 < *(char **)(param_2 + 8)) && (*pcVar7 == '2')) {
              *(char **)(param_2 + 4) = pcVar7 + 1;
LAB_0056f5b8:
              uVar1 = FUN_0056ee48(param_1);
              iVar3 = FUN_0056f38c(param_2,uVar1);
              if (iVar3 == 0) {
                return 0;
              }
              pcVar7 = *(char **)(param_2 + 4);
              if ((pcVar7 < *(char **)(param_2 + 8)) && (*pcVar7 == '8')) {
                *(char **)(param_2 + 4) = pcVar7 + 1;
LAB_0056f5e8:
                iVar3 = FUN_0056991c(param_2,param_1 + 0x20);
                if (iVar3 == 0) {
                  return 0;
                }
                *(uint *)(param_1 + 0x38) = *(uint *)(param_1 + 0x38) | 0x40;
                pcVar7 = *(char **)(param_2 + 4);
                if ((pcVar7 < *(char **)(param_2 + 8)) && (*pcVar7 == '@')) {
                  *(char **)(param_2 + 4) = pcVar7 + 1;
LAB_0056f61a:
                  iVar3 = FUN_0056991c(param_2,param_1 + 0x28);
                  if (iVar3 == 0) {
                    return 0;
                  }
                  *(uint *)(param_1 + 0x38) = *(uint *)(param_1 + 0x38) | 0x80;
                  pcVar7 = *(char **)(param_2 + 4);
                  if ((pcVar7 < *(char **)(param_2 + 8)) && (*pcVar7 == 'J')) {
                    *(char **)(param_2 + 4) = pcVar7 + 1;
LAB_0056f64c:
                    *(uint *)(param_1 + 0x38) = *(uint *)(param_1 + 0x38) | 0x100;
                    if (*(undefined4 **)(param_1 + 0x30) == &DAT_00960c38) {
                      puVar2 = operator_new(4);
                      *puVar2 = &DAT_00972528;
                      *(undefined4 **)(param_1 + 0x30) = puVar2;
                    }
                    iVar3 = FUN_00530d42(param_2,*(undefined4 *)(param_1 + 0x30));
                    if (iVar3 == 0) {
                      return 0;
                    }
                    if ((*(int *)(param_2 + 4) == *(int *)(param_2 + 8)) &&
                       ((*(int *)(param_2 + 0x20) != 0 ||
                        (*(int *)(param_2 + 0xc) == *(int *)(param_2 + 0x1c))))) {
                      *(undefined4 *)(param_2 + 0x14) = 0;
                      *(undefined1 *)(param_2 + 0x18) = 1;
                      return iVar3;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
    goto LAB_0056f40c;
  case 2:
    if (uVar6 == 2) goto LAB_0056f4a8;
    break;
  case 3:
    if (uVar6 == 2) goto LAB_0056f4f0;
    break;
  case 4:
    if (uVar6 == 2) goto LAB_0056f53c;
    break;
  case 5:
    if (uVar6 == 2) goto LAB_0056f588;
    break;
  case 6:
    if (uVar6 == 2) goto LAB_0056f5b8;
    break;
  case 7:
    if (uVar6 == 0) goto LAB_0056f5e8;
    break;
  case 8:
    if (uVar6 == 0) goto LAB_0056f61a;
    break;
  case 9:
    if (uVar6 == 2) goto LAB_0056f64c;
  }
  if (uVar6 == 4) {
    return 1;
  }
  iVar3 = FUN_0053086a(param_2);
  if (iVar3 == 0) {
    return 0;
  }
  goto LAB_0056f40c;
}

// ---- FUN_0056f6c4  @ 0x56f6c4
int FUN_0056f6c4(void)

{
  uint uVar1;
  int iVar2;
  
  uVar1 = FUN_0056f80e();
  if (uVar1 < 0x80) {
    iVar2 = 1;
  }
  else {
    iVar2 = FUN_00531a52();
  }
  return iVar2 + uVar1;
}

// ---- FUN_0056f6dc  @ 0x56f6dc
int FUN_0056f6dc(int param_1)

{
  int iVar1;
  int iVar2;
  
  iVar1 = 0;
  if ((*(uint *)(param_1 + 0x38) & 0xff) != 0) {
    iVar1 = 0;
    if ((*(uint *)(param_1 + 0x38) & 1) != 0) {
      iVar1 = FUN_0056994c(*(undefined4 *)(param_1 + 4));
      iVar1 = iVar1 + 1;
    }
    if (*(int *)(param_1 + 0x38) << 0x1e < 0) {
      iVar2 = FUN_0056994c(*(undefined4 *)(param_1 + 8));
      iVar1 = iVar1 + iVar2 + 1;
    }
    if (*(int *)(param_1 + 0x38) << 0x1d < 0) {
      iVar2 = FUN_0056994c(*(undefined4 *)(param_1 + 0xc));
      iVar1 = iVar1 + iVar2 + 1;
    }
    if (*(int *)(param_1 + 0x38) << 0x1c < 0) {
      iVar2 = FUN_0056994c(*(undefined4 *)(param_1 + 0x10));
      iVar1 = iVar1 + iVar2 + 1;
    }
    if (*(int *)(param_1 + 0x38) << 0x1b < 0) {
      iVar2 = *(int *)(param_1 + 0x14);
      if (iVar2 == 0) {
        iVar2 = *(int *)(DAT_0096446c + 0x14);
      }
      iVar2 = FUN_0056f6c4(iVar2);
      iVar1 = iVar1 + iVar2 + 1;
    }
    if (*(int *)(param_1 + 0x38) << 0x1a < 0) {
      iVar2 = *(int *)(param_1 + 0x18);
      if (iVar2 == 0) {
        iVar2 = *(int *)(DAT_0096446c + 0x18);
      }
      iVar2 = FUN_0056f6c4(iVar2);
      iVar1 = iVar1 + iVar2 + 1;
    }
    if (*(int *)(param_1 + 0x38) << 0x19 < 0) {
      iVar2 = FUN_00531a7a(*(undefined4 *)(param_1 + 0x20),*(undefined4 *)(param_1 + 0x24));
      iVar1 = iVar1 + iVar2 + 1;
    }
    if (*(int *)(param_1 + 0x38) << 0x18 < 0) {
      iVar2 = FUN_00531a7a(*(undefined4 *)(param_1 + 0x28),*(undefined4 *)(param_1 + 0x2c));
      iVar1 = iVar1 + iVar2 + 1;
    }
  }
  if (((*(uint *)(param_1 + 0x38) & 0xff00) != 0) && ((int)(*(uint *)(param_1 + 0x38) << 0x17) < 0))
  {
    iVar2 = FUN_0056994c(*(undefined4 *)(param_1 + 0x30));
    iVar1 = iVar1 + iVar2 + 1;
  }
  *(int *)(param_1 + 0x34) = iVar1;
  return iVar1;
}

// ---- FUN_0056f7c4  @ 0x56f7c4
undefined4 * FUN_0056f7c4(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0056f7c4_1_00928fe8;
  FUN_0052fe6c();
  return param_1;
}

// ---- FUN_0056f7dc  @ 0x56f7dc
void * FUN_0056f7dc(void *param_1)

{
  FUN_0056f7c4();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0056f7ee  @ 0x56f7ee
void FUN_0056f7ee(int param_1)

{
  if (*(char *)(param_1 + 0x20) != '\0') {
    *(undefined4 *)(param_1 + 0x18) = 0;
    *(undefined4 *)(param_1 + 8) = 0;
    *(undefined4 *)(param_1 + 0xc) = 0;
    *(undefined4 *)(param_1 + 0x10) = 0;
    *(undefined4 *)(param_1 + 0x14) = 0;
  }
  memset((void *)(param_1 + 0x20),0,4);
  return;
}

// ---- FUN_0056f80e  @ 0x56f80e
int FUN_0056f80e(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  int iVar2;
  int extraout_r2;
  int iVar3;
  
  iVar1 = 0;
  if ((*(uint *)(param_1 + 0x20) & 0xff) != 0) {
    iVar1 = 0;
    if ((*(uint *)(param_1 + 0x20) & 1) != 0) {
      if (*(uint *)(param_1 + 0x18) < 0x80) {
        iVar1 = 1;
      }
      else {
        iVar1 = FUN_00531a52();
      }
      iVar1 = iVar1 + 1;
    }
    iVar2 = *(int *)(param_1 + 0x20) << 0x1e;
    if (iVar2 < 0) {
      iVar2 = FUN_00531a7a(*(undefined4 *)(param_1 + 8),*(undefined4 *)(param_1 + 0xc),iVar2,
                           *(int *)(param_1 + 0x20),param_4);
      iVar1 = iVar1 + iVar2 + 1;
      iVar2 = extraout_r2;
    }
    iVar3 = *(int *)(param_1 + 0x20) << 0x1d;
    if (iVar3 < 0) {
      iVar2 = FUN_00531a7a(*(undefined4 *)(param_1 + 0x10),*(undefined4 *)(param_1 + 0x14),iVar2,
                           iVar3,param_4);
      iVar1 = iVar1 + iVar2 + 1;
    }
  }
  *(int *)(param_1 + 0x1c) = iVar1;
  return iVar1;
}

// ---- FUN_0056f8b2  @ 0x56f8b2
int FUN_0056f8b2(int param_1,int param_2)

{
  int iVar1;
  uint uVar2;
  byte *pbVar3;
  uint uVar4;
  uint uVar5;
  char *pcVar6;
  
LAB_0056f8c6:
  do {
    pbVar3 = *(byte **)(param_2 + 4);
    if ((pbVar3 < *(byte **)(param_2 + 8)) && (uVar5 = (uint)*pbVar3, -1 < (int)(uVar5 << 0x18))) {
      *(uint *)(param_2 + 0x14) = uVar5;
      *(byte **)(param_2 + 4) = pbVar3 + 1;
    }
    else {
      uVar5 = FUN_00531548(param_2);
      *(uint *)(param_2 + 0x14) = uVar5;
    }
    if (uVar5 == 0) {
      return 1;
    }
    uVar2 = uVar5 >> 3;
    uVar4 = uVar5 & 7;
    if (uVar2 == 2) {
      if (uVar4 == 0) {
LAB_0056f948:
        iVar1 = FUN_0056991c(param_2,param_1 + 8);
        if (iVar1 == 0) {
          return 0;
        }
        *(uint *)(param_1 + 0x20) = *(uint *)(param_1 + 0x20) | 2;
        pcVar6 = *(char **)(param_2 + 4);
        if ((pcVar6 < *(char **)(param_2 + 8)) && (*pcVar6 == '\x18')) {
          *(char **)(param_2 + 4) = pcVar6 + 1;
LAB_0056f972:
          iVar1 = FUN_0056991c(param_2,param_1 + 0x10);
          if (iVar1 == 0) {
            return 0;
          }
          *(uint *)(param_1 + 0x20) = *(uint *)(param_1 + 0x20) | 4;
          if ((*(int *)(param_2 + 4) == *(int *)(param_2 + 8)) &&
             ((*(int *)(param_2 + 0x20) != 0 ||
              (*(int *)(param_2 + 0xc) == *(int *)(param_2 + 0x1c))))) {
            *(undefined4 *)(param_2 + 0x14) = 0;
            *(undefined1 *)(param_2 + 0x18) = 1;
            return iVar1;
          }
        }
        goto LAB_0056f8c6;
      }
    }
    else if (uVar2 == 3) {
      if (uVar4 == 0) goto LAB_0056f972;
    }
    else if ((uVar2 == 1) && (uVar4 == 0)) {
      if ((*(byte **)(param_2 + 4) < *(byte **)(param_2 + 8)) &&
         (uVar5 = (uint)**(byte **)(param_2 + 4), -1 < (int)(uVar5 << 0x18))) {
        *(uint *)(param_1 + 0x18) = uVar5;
        *(int *)(param_2 + 4) = *(int *)(param_2 + 4) + 1;
      }
      else {
        iVar1 = FUN_0053145a(param_2,param_1 + 0x18);
        if (iVar1 == 0) {
          return 0;
        }
      }
      *(uint *)(param_1 + 0x20) = *(uint *)(param_1 + 0x20) | 1;
      pcVar6 = *(char **)(param_2 + 4);
      if ((pcVar6 < *(char **)(param_2 + 8)) && (*pcVar6 == '\x10')) {
        *(char **)(param_2 + 4) = pcVar6 + 1;
        goto LAB_0056f948;
      }
      goto LAB_0056f8c6;
    }
    if (uVar4 == 4) {
      return 1;
    }
    iVar1 = FUN_0053086a(param_2,uVar5);
    if (iVar1 == 0) {
      return 0;
    }
  } while( true );
}

// ---- FUN_0056f9c0  @ 0x56f9c0
void FUN_0056f9c0(int param_1)

{
  *(undefined4 *)(param_1 + 0x1c) = 0;
  *(undefined4 *)(param_1 + 8) = 0;
  *(undefined4 *)(param_1 + 0xc) = 0;
  *(undefined4 *)(param_1 + 0x10) = 0;
  *(undefined4 *)(param_1 + 0x14) = 0;
  *(undefined4 *)(param_1 + 0x18) = 0;
  memset((void *)(param_1 + 0x20),0,4);
  return;
}

// ---- FUN_0056f9dc  @ 0x56f9dc
undefined4 * FUN_0056f9dc(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0056f7c4_1_00928fe8;
  FUN_0056f9c0();
  return param_1;
}

// ---- FUN_0056f9f4  @ 0x56f9f4
void FUN_0056f9f4(void)

{
  vector<void(*)(),std::allocator<void(*)()>> *pvVar1;
  undefined4 uVar2;
  void *pvVar3;
  undefined4 *puVar4;
  undefined *puStack_c;
  
  if (DAT_00964470 == '\0') {
    DAT_00964470 = 1;
    FUN_0052f9dc("asD0Ev","asD0Ev",
                 "/builddata/pulse-data/agents/hpya5.eem/recipes/816348608/base/google3/googleclient/play_games_infra/play_games_sdk/proto/gen/player_level_impl.pb.cc"
                );
    pvVar3 = operator_new(0x28);
    FUN_0056f9dc();
    puStack_c = &UNK_0056f7a9;
    DAT_00964474 = pvVar3;
    FUN_0052f604(0x960c24,0x52f855);
    uVar2 = DAT_00960c30;
    FUN_0052fb80(DAT_00960c30);
    pvVar1 = DAT_00960c2c;
    puVar4 = *(undefined4 **)(DAT_00960c2c + 4);
    if (puVar4 == *(undefined4 **)(DAT_00960c2c + 8)) {
      std::vector<void(*)(),std::allocator<void(*)()>>::_M_emplace_back_aux<void(*const&)()>
                (DAT_00960c2c,(_func_void *)&puStack_c);
    }
    else {
      if (puVar4 != (undefined4 *)0x0) {
        *puVar4 = puStack_c;
      }
      *(int *)(pvVar1 + 4) = *(int *)(pvVar1 + 4) + 4;
    }
    FUN_0052f8cc(uVar2);
    return;
  }
  return;
}

// ---- FUN_0056fa5c  @ 0x56fa5c
int FUN_0056fa5c(void)

{
  if (DAT_00964474 == 0) {
    FUN_0056f9f4();
  }
  return DAT_00964474;
}

// ---- FUN_0056fa7c  @ 0x56fa7c
void FUN_0056fa7c(int param_1,int param_2)

{
  undefined4 uVar1;
  undefined1 auStack_24 [4];
  undefined1 auStack_20 [16];
  
  if (param_2 == param_1) {
    FUN_0052f7f0(auStack_20,3,
                 "/builddata/pulse-data/agents/hpya5.eem/recipes/816348608/base/google3/googleclient/play_games_infra/play_games_sdk/proto/gen/player_level_impl.pb.cc"
                 ,0xfb);
    uVar1 = FUN_0052f6be(auStack_20,"CHECK failed: (&from) != (this): ");
    FUN_0052f9d4(auStack_24,uVar1);
    FUN_0052f808(auStack_20);
  }
  if ((*(uint *)(param_2 + 0x20) & 0xff) != 0) {
    if ((int)(*(uint *)(param_2 + 0x20) << 0x1f) < 0) {
      *(undefined4 *)(param_1 + 0x18) = *(undefined4 *)(param_2 + 0x18);
      *(uint *)(param_1 + 0x20) = *(uint *)(param_1 + 0x20) | 1;
    }
    if (*(int *)(param_2 + 0x20) << 0x1e < 0) {
      uVar1 = *(undefined4 *)(param_2 + 0xc);
      *(undefined4 *)(param_1 + 8) = *(undefined4 *)(param_2 + 8);
      *(undefined4 *)(param_1 + 0xc) = uVar1;
      *(uint *)(param_1 + 0x20) = *(uint *)(param_1 + 0x20) | 2;
    }
    if (*(int *)(param_2 + 0x20) << 0x1d < 0) {
      uVar1 = *(undefined4 *)(param_2 + 0x14);
      *(undefined4 *)(param_1 + 0x10) = *(undefined4 *)(param_2 + 0x10);
      *(undefined4 *)(param_1 + 0x14) = uVar1;
      *(uint *)(param_1 + 0x20) = *(uint *)(param_1 + 0x20) | 4;
    }
  }
  return;
}

// ---- FUN_0056fbd0  @ 0x56fbd0
void FUN_0056fbd0(int param_1)

{
  if ((*(uint *)(param_1 + 0x38) & 0xff) != 0) {
    if (((int)(*(uint *)(param_1 + 0x38) << 0x1f) < 0) &&
       (*(undefined4 **)(param_1 + 4) != &DAT_00960c38)) {
      FUN_007c5b70();
    }
    if ((*(int *)(param_1 + 0x38) << 0x1e < 0) && (*(undefined4 **)(param_1 + 8) != &DAT_00960c38))
    {
      FUN_007c5b70();
    }
    *(undefined4 *)(param_1 + 0x30) = 2;
    *(undefined4 *)(param_1 + 0x10) = 0;
    *(undefined4 *)(param_1 + 0x14) = 0;
    *(undefined4 *)(param_1 + 0x18) = 0;
    *(undefined4 *)(param_1 + 0x1c) = 0;
    if ((*(int *)(param_1 + 0x38) << 0x1a < 0) &&
       (*(undefined4 **)(param_1 + 0x20) != &DAT_00960c38)) {
      FUN_007c5b70();
    }
    if ((*(int *)(param_1 + 0x38) << 0x19 < 0) &&
       (*(undefined4 **)(param_1 + 0x24) != &DAT_00960c38)) {
      FUN_007c5b70();
    }
    *(undefined4 *)(param_1 + 0x28) = 0;
    *(undefined4 *)(param_1 + 0x2c) = 0;
  }
  memset((void *)(param_1 + 0x38),0,4);
  return;
}

// ---- FUN_0056fc60  @ 0x56fc60
void FUN_0056fc60(int param_1)

{
  int iVar1;
  
  if ((*(uint *)(param_1 + 0x5c) & 0xff) != 0) {
    if (((int)(*(uint *)(param_1 + 0x5c) << 0x1f) < 0) &&
       (*(undefined4 **)(param_1 + 4) != &DAT_00960c38)) {
      FUN_007c5b70();
    }
    if ((*(int *)(param_1 + 0x5c) << 0x1e < 0) && (*(undefined4 **)(param_1 + 8) != &DAT_00960c38))
    {
      FUN_007c5b70();
    }
    if ((*(int *)(param_1 + 0x5c) << 0x1d < 0) && (*(undefined4 **)(param_1 + 0xc) != &DAT_00960c38)
       ) {
      FUN_007c5b70();
    }
    if ((*(int *)(param_1 + 0x5c) << 0x1c < 0) &&
       (*(undefined4 **)(param_1 + 0x10) != &DAT_00960c38)) {
      FUN_007c5b70();
    }
    if ((*(int *)(param_1 + 0x5c) << 0x1b < 0) &&
       (*(undefined4 **)(param_1 + 0x14) != &DAT_00960c38)) {
      FUN_007c5b70();
    }
    *(undefined4 *)(param_1 + 0x28) = 0;
    *(undefined4 *)(param_1 + 0x2c) = 1;
  }
  if ((*(uint *)(param_1 + 0x5c) & 0xff00) != 0) {
    *(undefined4 *)(param_1 + 0x30) = 0;
    *(undefined4 *)(param_1 + 0x34) = 0;
    *(undefined4 *)(param_1 + 0x38) = 0;
    *(undefined4 *)(param_1 + 0x3c) = 0;
    *(undefined4 *)(param_1 + 0x40) = 0;
    *(undefined4 *)(param_1 + 0x44) = 0;
    *(undefined4 *)(param_1 + 0x48) = 0;
    *(undefined4 *)(param_1 + 0x4c) = 0;
    *(undefined4 *)(param_1 + 0x50) = 0;
    *(undefined4 *)(param_1 + 0x54) = 0;
  }
  for (iVar1 = 0; iVar1 < *(int *)(param_1 + 0x1c); iVar1 = iVar1 + 1) {
    (**(code **)(**(int **)(*(int *)(param_1 + 0x18) + iVar1 * 4) + 0x10))();
  }
  *(undefined4 *)(param_1 + 0x1c) = 0;
  memset((void *)(param_1 + 0x5c),0,4);
  return;
}

// ---- FUN_0056fd2c  @ 0x56fd2c
void FUN_0056fd2c(int param_1,undefined4 param_2,undefined4 param_3)

{
  int iVar1;
  int extraout_r1;
  int extraout_r1_00;
  int extraout_r1_01;
  int iVar2;
  int extraout_r1_02;
  int extraout_r1_03;
  undefined4 uVar3;
  
  iVar2 = param_1;
  uVar3 = param_2;
  if (*(int *)(param_1 + 0x38) << 0x1f < 0) {
    FUN_00530b60(1,*(undefined4 *)(param_1 + 4),param_2,*(int *)(param_1 + 0x38),param_1,param_2,
                 param_3);
  }
  iVar1 = *(int *)(param_1 + 0x38) << 0x1e;
  if (iVar1 < 0) {
    FUN_00530b60(2,*(undefined4 *)(param_1 + 8),param_2,*(int *)(param_1 + 0x38),iVar2,uVar3,param_3
                );
    iVar1 = extraout_r1;
  }
  if (*(int *)(param_1 + 0x38) << 0x1d < 0) {
    FUN_00530b46(3,*(undefined4 *)(param_1 + 0x30),param_2);
    iVar1 = extraout_r1_00;
  }
  if (*(int *)(param_1 + 0x38) << 0x1c < 0) {
    FUN_00530a06(4,iVar1,*(undefined4 *)(param_1 + 0x10),*(undefined4 *)(param_1 + 0x14),param_2);
    iVar1 = extraout_r1_01;
  }
  if (*(int *)(param_1 + 0x38) << 0x1b < 0) {
    FUN_00530a06(5,iVar1,*(undefined4 *)(param_1 + 0x18),*(undefined4 *)(param_1 + 0x1c),param_2);
  }
  iVar2 = *(int *)(param_1 + 0x38) << 0x1a;
  if (iVar2 < 0) {
    FUN_00530bd8(6,*(undefined4 *)(param_1 + 0x20),param_2);
    iVar2 = extraout_r1_02;
  }
  if (*(int *)(param_1 + 0x38) << 0x19 < 0) {
    FUN_00530b60(7,*(undefined4 *)(param_1 + 0x24),param_2);
    iVar2 = extraout_r1_03;
  }
  if (*(int *)(param_1 + 0x38) << 0x18 < 0) {
    FUN_00530a06(8,iVar2,*(undefined4 *)(param_1 + 0x28),*(undefined4 *)(param_1 + 0x2c),param_2);
  }
  return;
}

// ---- FUN_0056fdbc  @ 0x56fdbc
undefined4 FUN_0056fdbc(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uStack_c;
  
  uStack_c = param_2;
  FUN_007c6a60(param_1,"gpg.proto.QuestMilestoneImpl",&uStack_c,param_4,param_1);
  return param_1;
}

// ---- FUN_0056feda  @ 0x56feda
undefined4 FUN_0056feda(int param_1)

{
  int iVar1;
  undefined4 uVar2;
  int iVar3;
  
  uVar2 = 0;
  if ((*(uint *)(param_1 + 0x5c) & 1) != 0) {
    for (iVar3 = 0; iVar3 < *(int *)(param_1 + 0x1c); iVar3 = iVar3 + 1) {
      iVar1 = (**(code **)(**(int **)(*(int *)(param_1 + 0x18) + iVar3 * 4) + 0x14))();
      if (iVar1 == 0) {
        return 0;
      }
    }
    uVar2 = 1;
  }
  return uVar2;
}

// ---- FUN_0056ff04  @ 0x56ff04
int FUN_0056ff04(int param_1)

{
  int iVar1;
  int iVar2;
  int *piVar3;
  
  iVar1 = 0;
  if ((*(uint *)(param_1 + 0x38) & 0xff) != 0) {
    iVar1 = 0;
    if ((*(uint *)(param_1 + 0x38) & 1) != 0) {
      iVar1 = FUN_0056994c(*(undefined4 *)(param_1 + 4));
      iVar1 = iVar1 + 1;
    }
    if (*(int *)(param_1 + 0x38) << 0x1e < 0) {
      iVar2 = FUN_0056994c(*(undefined4 *)(param_1 + 8));
      iVar1 = iVar1 + iVar2 + 1;
    }
    if (*(int *)(param_1 + 0x38) << 0x1d < 0) {
      if (*(int *)(param_1 + 0x30) < 0) {
        iVar2 = 10;
      }
      else {
        iVar2 = FUN_00569940();
      }
      iVar1 = iVar1 + iVar2 + 1;
    }
    if (*(int *)(param_1 + 0x38) << 0x1c < 0) {
      iVar2 = FUN_00531a7a(*(undefined4 *)(param_1 + 0x10),*(undefined4 *)(param_1 + 0x14));
      iVar1 = iVar1 + iVar2 + 1;
    }
    if (*(int *)(param_1 + 0x38) << 0x1b < 0) {
      iVar2 = FUN_00531a7a(*(undefined4 *)(param_1 + 0x18),*(undefined4 *)(param_1 + 0x1c));
      iVar1 = iVar1 + iVar2 + 1;
    }
    if (*(int *)(param_1 + 0x38) << 0x1a < 0) {
      piVar3 = *(int **)(param_1 + 0x20);
      iVar2 = FUN_00569940(*(undefined4 *)(*piVar3 + -0xc));
      iVar1 = iVar1 + iVar2 + *(int *)(*piVar3 + -0xc) + 1;
    }
    if (*(int *)(param_1 + 0x38) << 0x19 < 0) {
      iVar2 = FUN_0056994c(*(undefined4 *)(param_1 + 0x24));
      iVar1 = iVar1 + iVar2 + 1;
    }
    if (*(int *)(param_1 + 0x38) << 0x18 < 0) {
      iVar2 = FUN_00531a7a(*(undefined4 *)(param_1 + 0x28),*(undefined4 *)(param_1 + 0x2c));
      iVar1 = iVar1 + iVar2 + 1;
    }
  }
  *(int *)(param_1 + 0x34) = iVar1;
  return iVar1;
}

// ---- FUN_0056ffb0  @ 0x56ffb0
int FUN_0056ffb0(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  
  iVar1 = 0;
  if ((*(uint *)(param_1 + 0x5c) & 0xff) != 0) {
    iVar1 = 0;
    if ((*(uint *)(param_1 + 0x5c) & 1) != 0) {
      iVar1 = FUN_0056994c(*(undefined4 *)(param_1 + 4));
      iVar1 = iVar1 + 1;
    }
    if (*(int *)(param_1 + 0x5c) << 0x1e < 0) {
      iVar2 = FUN_0056994c(*(undefined4 *)(param_1 + 8));
      iVar1 = iVar1 + iVar2 + 1;
    }
    if (*(int *)(param_1 + 0x5c) << 0x1d < 0) {
      iVar2 = FUN_0056994c(*(undefined4 *)(param_1 + 0xc));
      iVar1 = iVar1 + iVar2 + 1;
    }
    if (*(int *)(param_1 + 0x5c) << 0x1c < 0) {
      iVar2 = FUN_0056994c(*(undefined4 *)(param_1 + 0x10));
      iVar1 = iVar1 + iVar2 + 1;
    }
    if (*(int *)(param_1 + 0x5c) << 0x1b < 0) {
      iVar2 = FUN_0056994c(*(undefined4 *)(param_1 + 0x14));
      iVar1 = iVar1 + iVar2 + 1;
    }
    if (*(int *)(param_1 + 0x5c) << 0x1a < 0) {
      iVar2 = FUN_00569940(*(undefined4 *)(param_1 + 0x28));
      iVar1 = iVar1 + iVar2 + 1;
    }
    if (*(int *)(param_1 + 0x5c) << 0x18 < 0) {
      if (*(int *)(param_1 + 0x2c) < 0) {
        iVar2 = 10;
      }
      else {
        iVar2 = FUN_00569940();
      }
      iVar1 = iVar1 + iVar2 + 1;
    }
  }
  if ((*(uint *)(param_1 + 0x5c) & 0xff00) != 0) {
    if ((int)(*(uint *)(param_1 + 0x5c) << 0x17) < 0) {
      iVar2 = FUN_00531a7a(*(undefined4 *)(param_1 + 0x30),*(undefined4 *)(param_1 + 0x34));
      iVar1 = iVar1 + iVar2 + 1;
    }
    if (*(int *)(param_1 + 0x5c) << 0x16 < 0) {
      iVar2 = FUN_00531a7a(*(undefined4 *)(param_1 + 0x38),*(undefined4 *)(param_1 + 0x3c));
      iVar1 = iVar1 + iVar2 + 1;
    }
    if (*(int *)(param_1 + 0x5c) << 0x15 < 0) {
      iVar2 = FUN_00531a7a(*(undefined4 *)(param_1 + 0x40),*(undefined4 *)(param_1 + 0x44));
      iVar1 = iVar1 + iVar2 + 1;
    }
    iVar2 = *(int *)(param_1 + 0x5c) << 0x14;
    if (iVar2 < 0) {
      iVar2 = FUN_00531a7a(*(undefined4 *)(param_1 + 0x48),*(undefined4 *)(param_1 + 0x4c),iVar2,
                           *(int *)(param_1 + 0x5c),param_4);
      iVar1 = iVar1 + iVar2 + 1;
    }
    if (*(int *)(param_1 + 0x5c) << 0x13 < 0) {
      iVar2 = FUN_00531a7a(*(undefined4 *)(param_1 + 0x50),*(undefined4 *)(param_1 + 0x54));
      iVar1 = iVar1 + iVar2 + 1;
    }
  }
  iVar1 = iVar1 + *(int *)(param_1 + 0x1c);
  for (iVar2 = 0; iVar2 < *(int *)(param_1 + 0x1c); iVar2 = iVar2 + 1) {
    iVar3 = FUN_0056ff04(*(undefined4 *)(*(int *)(param_1 + 0x18) + iVar2 * 4));
    iVar4 = FUN_00569940();
    iVar1 = iVar1 + iVar4 + iVar3;
  }
  *(int *)(param_1 + 0x58) = iVar1;
  return iVar1;
}
