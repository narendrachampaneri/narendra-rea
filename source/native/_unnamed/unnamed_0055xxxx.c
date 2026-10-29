// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 395 functions

// ---- FUN_00550014  @ 0x550014
undefined4 FUN_00550014(undefined4 param_1,undefined4 param_2)

{
  undefined4 uVar1;
  int iVar2;
  undefined4 uVar3;
  undefined1 auStack_20 [16];
  
  uVar1 = FUN_00543484(param_2);
  iVar2 = gpg::IsError();
  if (iVar2 != 0) {
    iVar2 = FUN_00548c48(param_2);
    if (iVar2 == 0) {
      FUN_0054968c(auStack_20,param_2,&DAT_009619a4,"getStatus",
                   "()Lcom/google/android/gms/common/api/Status;");
      uVar3 = FUN_00548d1c(auStack_20,"getStatusCode");
      FUN_00548ab0(auStack_20);
      FUN_005166ae(2,"Encountered GmsCore error with status code: %d",uVar3);
    }
    else {
      FUN_005166ae(1,"Base Java result of null was returned.  Returning error for operation.");
    }
  }
  return uVar1;
}

// ---- FUN_005500cc  @ 0x5500cc
void FUN_005500cc(undefined4 *param_1)

{
  int *piVar1;
  code *pcVar2;
  undefined1 auStack_38 [16];
  undefined1 auStack_28 [20];
  
  param_1 = (undefined4 *)*param_1;
  FUN_00548b30(auStack_38);
  piVar1 = (int *)*param_1;
  pcVar2 = *(code **)(*piVar1 + 0x10);
  FUN_00548b30(auStack_28,auStack_38);
  (*pcVar2)(piVar1,auStack_28);
  FUN_00548ab0(auStack_28);
  FUN_00548ab0(auStack_38);
  return;
}

// ---- FUN_005501fc  @ 0x5501fc
undefined4 * FUN_005501fc(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_005501fc_1_00926c28;
  FUN_007c5914(param_1 + 5);
  FUN_0054f8dc(param_1);
  return param_1;
}

// ---- FUN_0055021c  @ 0x55021c
void * FUN_0055021c(void *param_1)

{
  FUN_005501fc();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_00550230  @ 0x550230
undefined4 * FUN_00550230(undefined4 *param_1,undefined4 *param_2,undefined4 param_3)

{
  bool bVar1;
  undefined4 uVar2;
  int *piVar3;
  int local_14;
  undefined4 uStack_10;
  
  local_14 = param_2[1];
  uVar2 = *param_2;
  if (local_14 != 0) {
    piVar3 = (int *)(local_14 + 4);
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
  *param_1 = &PTR_FUN_0054f8dc_1_00926bd0;
  param_1[3] = uVar2;
  param_1[4] = local_14;
  if (local_14 != 0) {
    piVar3 = (int *)(local_14 + 4);
    DataMemoryBarrier(0x1f);
    do {
      ExclusiveAccess(piVar3);
      bVar1 = (bool)hasExclusiveAccess(piVar3);
    } while (!bVar1);
    *piVar3 = *piVar3 + 1;
    DataMemoryBarrier(0x1f);
  }
  uStack_10 = param_3;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_14);
  *param_1 = &PTR_FUN_005501fc_1_00926c28;
  FUN_007c64e8(param_1 + 5,param_3);
  return param_1;
}

// ---- FUN_005502b8  @ 0x5502b8
undefined4 FUN_005502b8(int param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined1 auStack_38 [16];
  undefined1 auStack_28 [20];
  
  FUN_00547b10(auStack_38,&DAT_009618a4,&DAT_00962d24,"Connections",
               "Lcom/google/android/gms/nearby/connection/Connections;");
  uVar1 = FUN_00548bac(*(int *)(param_1 + 0xc) + 0x90);
  FUN_0054942c(auStack_28,param_1 + 0x14,0);
  uVar2 = FUN_00548bac(auStack_28);
  FUN_00548d90(auStack_38,"disconnectFromEndpoint",
               "(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V",uVar1,
               uVar2);
  FUN_00548ab0(auStack_28);
  FUN_00548ab0(auStack_38);
  return 1;
}

// ---- FUN_00550348  @ 0x550348
void FUN_00550348(int *param_1)

{
  if (param_1 != (int *)0x0) {
    (**(code **)(*param_1 + 4))();
  }
  return;
}

// ---- FUN_00550354  @ 0x550354
undefined4 * FUN_00550354(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_00550354_1_00926c48;
  FUN_007c5914(param_1 + 5);
  FUN_0054f8dc(param_1);
  return param_1;
}

// ---- FUN_00550374  @ 0x550374
void * FUN_00550374(void *param_1)

{
  FUN_00550354();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_005503cc  @ 0x5503cc
undefined4 * FUN_005503cc(undefined4 *param_1,undefined4 *param_2,undefined4 param_3)

{
  bool bVar1;
  undefined4 uVar2;
  int *piVar3;
  int local_14;
  
  local_14 = param_2[1];
  uVar2 = *param_2;
  if (local_14 != 0) {
    piVar3 = (int *)(local_14 + 4);
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
  *param_1 = &PTR_FUN_0054f8dc_1_00926bd0;
  param_1[3] = uVar2;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(param_1 + 4),(__shared_count *)&local_14
            );
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_14);
  *param_1 = &PTR_FUN_00550354_1_00926c48;
  FUN_007c64e8(param_1 + 5,param_3);
  return param_1;
}

// ---- FUN_00550448  @ 0x550448
undefined4
FUN_00550448(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 *param_4)

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
  local_3c = &LAB_005506f4_1;
  local_40 = (code *)0x550387;
  FUN_00533700(a_Stack_38,(_Function_base *)local_48);
  pvVar2 = operator_new(0x14);
  FUN_0053372c(pvVar2,a_Stack_38);
  local_64 = pvVar2;
  FUN_005453a8(auStack_58,param_2,param_3,&local_64);
  if (local_64 != (void *)0x0) {
    FUN_00550348();
  }
  std::_Function_base::~_Function_base(a_Stack_38);
  std::_Function_base::~_Function_base((_Function_base *)local_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_5c);
  FUN_00548b30(param_1,auStack_58);
  FUN_00548ab0(auStack_58);
  return param_1;
}

// ---- FUN_00550528  @ 0x550528
undefined4 FUN_00550528(undefined4 param_1,int param_2)

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
  if (local_34 == 0) goto LAB_00550542;
  piVar2 = (int *)(local_34 + 4);
  unaff_r4 = &local_28;
  local_28 = *(int *)(local_34 + 4);
  while( true ) {
    iVar3 = local_28;
    if (local_28 == 0) {
LAB_00550542:
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
  local_30 = local_28;
  local_2c = local_24;
  local_24 = 0;
  local_28 = 0;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(unaff_r4 + 1));
  FUN_00550448(unaff_r4,1,0x5463d1,&local_30,iVar3);
  FUN_00548b30(param_1,unaff_r4);
  FUN_00548ab0(unaff_r4);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_2c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_34);
  return param_1;
}

// ---- FUN_005505dc  @ 0x5505dc
undefined4 FUN_005505dc(int param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined1 auStack_58 [16];
  undefined1 auStack_48 [16];
  undefined1 auStack_38 [16];
  undefined1 auStack_28 [16];
  
  FUN_00547b10(auStack_58,&DAT_009618a4,&DAT_00962d24,"Connections",
               "Lcom/google/android/gms/nearby/connection/Connections;");
  uVar1 = FUN_00548bac(*(int *)(param_1 + 0xc) + 0x90);
  FUN_0054942c(auStack_48,param_1 + 0x14,0);
  uVar2 = FUN_00548bac(auStack_48);
  FUN_0054968c(auStack_38,auStack_58,&DAT_00963024,"rejectConnectionRequest",
               "(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;"
               ,uVar1,uVar2);
  FUN_00550528(auStack_28,param_1);
  uVar1 = FUN_00548bac(auStack_28);
  FUN_00548d90(auStack_38,"setResultCallback",
               "(Lcom/google/android/gms/common/api/ResultCallback;)V",uVar1);
  FUN_00548ab0(auStack_28);
  FUN_00548ab0(auStack_38);
  FUN_00548ab0(auStack_48);
  FUN_00548ab0(auStack_58);
  return 1;
}

// ---- FUN_00550758  @ 0x550758
undefined4 * FUN_00550758(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_00550758_1_00926c68;
  std::_Function_base::~_Function_base((_Function_base *)(param_1 + 1));
  *param_1 = &PTR_LAB_005333e4_1_00925210;
  return param_1;
}

// ---- FUN_00550780  @ 0x550780
void * FUN_00550780(void *param_1)

{
  FUN_00550758();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_00550864  @ 0x550864
int FUN_00550864(int param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  *(undefined4 *)(param_1 + 8) = 0;
  if (*(int *)(param_2 + 8) != 0) {
    *(undefined4 *)(param_1 + 0xc) = *(undefined4 *)(param_2 + 0xc);
    *(undefined4 *)(param_1 + 8) = *(undefined4 *)(param_2 + 8);
    (**(code **)(param_2 + 8))(param_1,param_2,2,*(code **)(param_2 + 8),param_4);
  }
  std::function<void(long_long,gpg::ConnectionResponse_const&)>::function
            ((function<void(long_long,gpg::ConnectionResponse_const&)> *)(param_1 + 0x10),
             (function *)(param_2 + 0x10));
  return param_1;
}

// ---- FUN_005508fc  @ 0x5508fc
undefined4 * FUN_005508fc(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_005508fc_1_00926c80;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(param_1 + 0x13));
  FUN_00517482(param_1 + 10);
  std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::~_Vector_base
            ((_Vector_base<unsigned_char,std::allocator<unsigned_char>> *)(param_1 + 7));
  FUN_007c5914(param_1 + 6);
  FUN_007c5914(param_1 + 5);
  FUN_0054f8dc(param_1);
  return param_1;
}

// ---- FUN_0055093c  @ 0x55093c
void * FUN_0055093c(void *param_1)

{
  FUN_005508fc();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0055094e  @ 0x55094e
int FUN_0055094e(int param_1,int param_2)

{
  *(undefined4 *)(param_1 + 8) = 0;
  if (*(int *)(param_2 + 8) != 0) {
    *(undefined4 *)(param_1 + 0xc) = *(undefined4 *)(param_2 + 0xc);
    *(undefined4 *)(param_1 + 8) = *(undefined4 *)(param_2 + 8);
    (**(code **)(param_2 + 8))(param_1,param_2,2);
  }
  return param_1;
}

// ---- FUN_00550978  @ 0x550978
undefined4 * FUN_00550978(undefined4 *param_1,_Any_data *param_2)

{
  undefined4 uVar1;
  
  *param_1 = &PTR_FUN_00550758_1_00926c68;
  param_1[3] = 0;
  std::swap<std::_Any_data>(param_2,(_Any_data *)(param_1 + 1));
  uVar1 = *(undefined4 *)(param_2 + 8);
  *(undefined4 *)(param_2 + 8) = param_1[3];
  param_1[3] = uVar1;
  uVar1 = *(undefined4 *)(param_2 + 0xc);
  *(undefined4 *)(param_2 + 0xc) = param_1[4];
  param_1[4] = uVar1;
  return param_1;
}

// ---- FUN_005509ac  @ 0x5509ac
void * FUN_005509ac(int param_1)

{
  void *pvVar1;
  _Function_base a_Stack_20 [20];
  
  FUN_0055094e(a_Stack_20,param_1 + 4);
  pvVar1 = operator_new(0x14);
  FUN_00550978(pvVar1,a_Stack_20);
  std::_Function_base::~_Function_base(a_Stack_20);
  return pvVar1;
}

// ---- FUN_005509dc  @ 0x5509dc
undefined4 *
FUN_005509dc(undefined4 *param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4,
            vector *param_5,_Any_data *param_6,undefined4 *param_7)

{
  undefined4 uVar1;
  undefined4 *puStack_1c;
  
  uVar1 = *param_2;
  puStack_1c = param_2;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&puStack_1c,
             (__shared_count *)(param_2 + 1));
  param_1[1] = 0;
  param_1[2] = 0;
  *param_1 = &PTR_FUN_0054f8dc_1_00926bd0;
  param_1[3] = uVar1;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(param_1 + 4),
             (__shared_count *)&puStack_1c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&puStack_1c);
  *param_1 = &PTR_FUN_005508fc_1_00926c80;
  FUN_007c64e8(param_1 + 5,param_3);
  FUN_007c64e8(param_1 + 6,param_4);
  std::vector<unsigned_char,std::allocator<unsigned_char>>::vector
            ((vector<unsigned_char,std::allocator<unsigned_char>> *)(param_1 + 7),param_5);
  param_1[0xc] = 0;
  std::swap<std::_Any_data>(param_6,(_Any_data *)(param_1 + 10));
  uVar1 = *(undefined4 *)(param_6 + 8);
  *(undefined4 *)(param_6 + 8) = param_1[0xc];
  param_1[0xc] = uVar1;
  uVar1 = *(undefined4 *)(param_6 + 0xc);
  *(undefined4 *)(param_6 + 0xc) = param_1[0xd];
  param_1[0xd] = uVar1;
  param_1[0x10] = 0;
  std::function<void(long_long,gpg::ConnectionResponse_const&)>::swap
            ((function<void(long_long,gpg::ConnectionResponse_const&)> *)(param_6 + 0x10),
             (function *)(param_1 + 0xe));
  param_1[0x12] = *param_7;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(param_1 + 0x13),
             (__shared_count *)(param_7 + 1));
  return param_1;
}

// ---- FUN_00550ad4  @ 0x550ad4
void FUN_00550ad4(int param_1,undefined4 *param_2,ConnectionResponse *param_3)

{
  code *pcVar1;
  code *pcVar2;
  function *pfVar3;
  code *pcVar4;
  function *local_68 [2];
  code *local_60;
  code *local_5c;
  _Function_base a_Stack_58 [8];
  code *local_50;
  code *local_4c;
  function<void(long_long,gpg::ConnectionResponse_const&)> afStack_48 [16];
  undefined1 *local_38;
  undefined4 local_34;
  _Vector_base a_Stack_30 [16];
  undefined4 local_20;
  undefined4 uStack_1c;
  
  if (*(int *)(param_1 + 0x18) != 0) {
    pfVar3 = (function *)(param_1 + 0x10);
    if (*(int *)(param_1 + 8) == 0) {
      (**(code **)(param_1 + 0x1c))(pfVar3,pfVar3,*param_2,param_2[1],param_3);
    }
    else {
      std::function<void(long_long,gpg::ConnectionResponse_const&)>::function(afStack_48,pfVar3);
      gpg::ConnectionResponse::ConnectionResponse((ConnectionResponse *)&local_38,param_3);
      local_20 = *param_2;
      uStack_1c = param_2[1];
      local_60 = (code *)0x0;
      pfVar3 = operator_new(0x30);
      *(undefined4 *)(pfVar3 + 8) = 0;
      std::function<void(long_long,gpg::ConnectionResponse_const&)>::swap(afStack_48,pfVar3);
      *(undefined1 **)(pfVar3 + 0x10) = local_38;
      local_38 = &DAT_00972528;
      *(undefined4 *)(pfVar3 + 0x14) = local_34;
      std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::_Vector_base
                ((_Vector_base<unsigned_char,std::allocator<unsigned_char>> *)(pfVar3 + 0x18),
                 a_Stack_30);
      *(undefined4 *)(pfVar3 + 0x28) = local_20;
      *(undefined4 *)(pfVar3 + 0x2c) = uStack_1c;
      local_5c = (code *)0x550739;
      local_60 = (code *)0x550bf1;
      local_68[0] = pfVar3;
      if (*(int *)(param_1 + 8) == 0) {
        FUN_007c4d54();
        std::_Function_base::~_Function_base((_Function_base *)afStack_48);
                    /* WARNING: Subroutine does not return */
        __cxa_end_cleanup();
      }
      pcVar4 = *(code **)(param_1 + 0xc);
      local_50 = (code *)0x0;
      std::swap<std::_Any_data>((_Any_data *)local_68,(_Any_data *)a_Stack_58);
      pcVar2 = local_4c;
      pcVar1 = local_50;
      local_50 = local_60;
      local_60 = pcVar1;
      local_4c = local_5c;
      local_5c = pcVar2;
      (*pcVar4)(param_1,a_Stack_58);
      std::_Function_base::~_Function_base(a_Stack_58);
      std::_Function_base::~_Function_base((_Function_base *)local_68);
      gpg::ConnectionResponse::~ConnectionResponse((ConnectionResponse *)&local_38);
      std::_Function_base::~_Function_base((_Function_base *)afStack_48);
    }
  }
  return;
}

// ---- FUN_00550c5c  @ 0x550c5c
void FUN_00550c5c(undefined4 *param_1,undefined4 param_2,_Vector_base *param_3,int param_4)

{
  undefined4 extraout_r1;
  int *piVar1;
  code *pcVar2;
  undefined1 auStack_40 [4];
  _Vector_base<unsigned_char,std::allocator<unsigned_char>> a_Stack_3c [12];
  undefined1 auStack_30 [20];
  
  param_1 = (undefined4 *)*param_1;
  FUN_00548b30(auStack_30);
  std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::_Vector_base(a_Stack_3c,param_3);
  piVar1 = (int *)*param_1;
  pcVar2 = *(code **)(*piVar1 + 8);
  FUN_00548ec0(auStack_40,auStack_30);
  (*pcVar2)(piVar1,extraout_r1,0,0,auStack_40,a_Stack_3c,param_4 != 0);
  FUN_007c5914(auStack_40);
  std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::~_Vector_base(a_Stack_3c);
  FUN_00548ab0(auStack_30);
  return;
}

// ---- FUN_00550e2c  @ 0x550e2c
undefined4 FUN_00550e2c(undefined4 param_1,int param_2)

{
  bool bVar1;
  undefined4 uVar2;
  int extraout_r1;
  int *piVar3;
  int *extraout_r2;
  int extraout_r3;
  undefined4 *puVar4;
  int iVar5;
  _Function_base *unaff_r5;
  int local_5c;
  undefined4 local_58;
  undefined4 local_54;
  undefined4 local_50;
  undefined4 local_4c [3];
  undefined1 auStack_40 [16];
  undefined4 *local_30;
  undefined4 local_2c;
  code *local_28;
  undefined1 *local_24;
  
  local_5c = *(int *)(param_2 + 8);
  if (local_5c == 0) goto LAB_00550e48;
  piVar3 = (int *)(local_5c + 4);
  unaff_r5 = (_Function_base *)&local_30;
  local_30 = (undefined4 *)*(int *)(local_5c + 4);
  while( true ) {
    puVar4 = local_30;
    if (local_30 == (undefined4 *)0x0) {
LAB_00550e48:
      std::__throw_bad_weak_ptr();
      param_2 = extraout_r1;
      piVar3 = extraout_r2;
      puVar4 = (undefined4 *)extraout_r3;
    }
    DataMemoryBarrier(0x1f);
    ExclusiveAccess(piVar3);
    iVar5 = *piVar3;
    bVar1 = false;
    if (iVar5 == *(int *)unaff_r5) {
      bVar1 = (bool)hasExclusiveAccess(piVar3);
      if (bVar1) {
        *piVar3 = (int)puVar4 + 1;
      }
      DataMemoryBarrier(0x1f);
    }
    if (bVar1) break;
    *(int *)unaff_r5 = iVar5;
  }
  local_30 = *(undefined4 **)(param_2 + 4);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(unaff_r5 + 4),
             (__shared_count *)&local_5c);
  local_58 = local_30;
  local_54 = local_2c;
  local_2c = 0;
  local_30 = (undefined4 *)0x0;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(unaff_r5 + 4));
  FUN_00545074(auStack_40);
  local_50 = local_58;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_4c,(__shared_count *)&local_54);
  local_28 = (code *)0x0;
  local_30 = operator_new(8);
  uVar2 = local_4c[0];
  *local_30 = local_50;
  local_30[1] = 0;
  local_4c[0] = 0;
  local_30[1] = uVar2;
  local_24 = &LAB_005514d2_1;
  local_28 = (code *)0x55081f;
  local_50 = 0;
  FUN_00537340(auStack_40,1,0x5463d1,unaff_r5);
  std::_Function_base::~_Function_base(unaff_r5);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_4c);
  FUN_00548b30(&local_50,auStack_40);
  FUN_00548ab0(auStack_40);
  FUN_00548b30(param_1,&local_50);
  FUN_00548ab0(&local_50);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_54);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_5c);
  return param_1;
}

// ---- FUN_00550f68  @ 0x550f68
undefined4 FUN_00550f68(int param_1)

{
  void *pvVar1;
  _Any_data *p_Var2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  undefined4 uVar8;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_15c [4];
  undefined1 auStack_158 [16];
  undefined4 *local_148 [2];
  undefined1 *local_140;
  undefined4 local_13c;
  undefined4 *local_138 [2];
  undefined1 *local_130;
  undefined1 *local_12c;
  undefined1 auStack_128 [16];
  _Any_data *local_118 [2];
  undefined1 *local_110;
  undefined1 *local_10c;
  undefined1 auStack_108 [16];
  undefined1 auStack_f8 [16];
  undefined1 auStack_e8 [16];
  undefined1 auStack_d8 [16];
  undefined1 auStack_c8 [16];
  undefined1 auStack_b8 [16];
  _Function_base a_Stack_a8 [16];
  _Function_base a_Stack_98 [16];
  _Function_base a_Stack_88 [16];
  _Function_base a_Stack_78 [16];
  undefined1 auStack_68 [32];
  void *local_48;
  undefined4 local_44;
  undefined4 local_40;
  undefined4 local_3c;
  function<void(long_long,gpg::ConnectionResponse_const&)> afStack_38 [20];
  
  FUN_00545074(auStack_158);
  uVar8 = *(undefined4 *)(param_1 + 0x48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_15c,(__shared_count *)(param_1 + 0x4c));
  local_48 = (void *)uVar8;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_44,(__shared_count *)a_Stack_15c);
  local_140 = (undefined1 *)0x0;
  local_148[0] = operator_new(8);
  uVar7 = local_44;
  *local_148[0] = local_48;
  local_148[0][1] = 0;
  local_44 = 0;
  local_148[0][1] = uVar7;
  local_48 = (void *)0x0;
  local_13c = 0x550c5d;
  local_140 = &LAB_005507d8_1;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_44);
  FUN_0054fade(a_Stack_98,local_148);
  std::_Function_base::~_Function_base(a_Stack_98);
  FUN_0054fade(a_Stack_a8,local_148);
  pvVar1 = operator_new(0x14);
  FUN_0054fb08(pvVar1,a_Stack_a8);
  local_48 = pvVar1;
  FUN_005453a8(auStack_158,uVar8,0x545bc1,(_Any_data *)&local_48);
  FUN_00544d78((_Any_data *)&local_48);
  std::_Function_base::~_Function_base(a_Stack_a8);
  local_48 = (void *)uVar8;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_44,(__shared_count *)a_Stack_15c);
  local_130 = (undefined1 *)0x0;
  local_138[0] = operator_new(8);
  uVar7 = local_44;
  *local_138[0] = local_48;
  local_138[0][1] = 0;
  local_44 = 0;
  local_138[0][1] = uVar7;
  local_48 = (void *)0x0;
  local_12c = &LAB_00550cd2_1;
  local_130 = &LAB_00550792_1;
  FUN_00537340(auStack_158,uVar8,0x5465ed,(_Function_base *)local_138);
  std::_Function_base::~_Function_base((_Function_base *)local_138);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_44);
  FUN_00545074(auStack_128);
  FUN_00550864(auStack_68,param_1 + 0x28);
  FUN_00550864((_Any_data *)&local_48,auStack_68);
  local_110 = (undefined1 *)0x0;
  p_Var2 = operator_new(0x20);
  *(undefined4 *)(p_Var2 + 8) = 0;
  std::swap<std::_Any_data>((_Any_data *)&local_48,p_Var2);
  uVar7 = *(undefined4 *)(p_Var2 + 8);
  *(undefined4 *)(p_Var2 + 8) = local_40;
  uVar8 = *(undefined4 *)(p_Var2 + 0xc);
  *(undefined4 *)(p_Var2 + 0xc) = local_3c;
  *(undefined4 *)(p_Var2 + 0x18) = 0;
  local_40 = uVar7;
  local_3c = uVar8;
  std::function<void(long_long,gpg::ConnectionResponse_const&)>::swap
            (afStack_38,(function *)(p_Var2 + 0x10));
  local_10c = &LAB_00550d1c_1;
  local_110 = &LAB_0055089e_1;
  local_118[0] = p_Var2;
  FUN_00517482((_Any_data *)&local_48);
  FUN_0055094e(a_Stack_78,(_Function_base *)local_118);
  std::_Function_base::~_Function_base(a_Stack_78);
  FUN_0055094e(a_Stack_88,(_Function_base *)local_118);
  pvVar1 = operator_new(0x14);
  FUN_00550978(pvVar1,a_Stack_88);
  local_48 = pvVar1;
  FUN_005453a8(auStack_128,1,&LAB_0054674c_1,(_Any_data *)&local_48);
  FUN_00544d78((_Any_data *)&local_48);
  std::_Function_base::~_Function_base(a_Stack_88);
  FUN_00547b10(auStack_108,&DAT_009618a4,&DAT_00962d24,"Connections",
               "Lcom/google/android/gms/nearby/connection/Connections;");
  uVar7 = FUN_00548bac(*(int *)(param_1 + 0xc) + 0x90);
  FUN_0054942c(auStack_f8,param_1 + 0x14,0);
  uVar8 = FUN_00548bac(auStack_f8);
  FUN_0054942c(auStack_e8,param_1 + 0x18,0);
  uVar3 = FUN_00548bac(auStack_e8);
  FUN_00549584(auStack_d8,param_1 + 0x1c,0);
  uVar4 = FUN_00548bac(auStack_d8);
  uVar5 = FUN_00548bac(auStack_128);
  uVar6 = FUN_00548bac(auStack_158);
  FUN_0054968c(auStack_c8,auStack_108,&DAT_00963024,"sendConnectionRequest",
               "(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;[BLcom/google/android/gms/nearby/connection/Connections$ConnectionResponseCallback;Lcom/google/android/gms/nearby/connection/Connections$MessageListener;)Lcom/google/android/gms/common/api/PendingResult;"
               ,uVar7,uVar8,uVar3,uVar4,uVar5,uVar6);
  FUN_00550e2c(auStack_b8,param_1);
  uVar7 = FUN_00548bac(auStack_b8);
  FUN_00548d90(auStack_c8,"setResultCallback",
               "(Lcom/google/android/gms/common/api/ResultCallback;)V",uVar7);
  FUN_00548ab0(auStack_b8);
  FUN_00548ab0(auStack_c8);
  FUN_00548ab0(auStack_d8);
  FUN_00548ab0(auStack_e8);
  FUN_00548ab0(auStack_f8);
  FUN_00548ab0(auStack_108);
  std::_Function_base::~_Function_base((_Function_base *)local_118);
  FUN_00517482(auStack_68);
  FUN_00548ab0(auStack_128);
  std::_Function_base::~_Function_base((_Function_base *)local_148);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_15c);
  FUN_00548ab0(auStack_158);
  return 1;
}

// ---- FUN_00551380  @ 0x551380
void FUN_00551380(int param_1,undefined4 param_2)

{
  int iVar1;
  undefined4 uVar2;
  undefined1 auStack_28 [4];
  ConnectionResponse aCStack_24 [4];
  undefined4 local_20;
  undefined4 local_1c;
  undefined4 local_18;
  undefined4 local_14;
  
  iVar1 = FUN_00548c48(param_2);
  if (iVar1 == 0) {
    FUN_0054968c(aCStack_24,param_2,&DAT_009619a4,"getStatus",
                 "()Lcom/google/android/gms/common/api/Status;");
    iVar1 = FUN_00548d1c(aCStack_24,"getStatusCode");
    FUN_00548ab0(aCStack_24);
    if (iVar1 == 8000) {
      uVar2 = 0xfffffffe;
    }
    else if (iVar1 == 0x1f43) {
      uVar2 = 0xfffffffd;
    }
    else {
      if (iVar1 == 0) {
        FUN_005166ae(1,"SendConnectionRequestOperation completed successfully.");
        return;
      }
      uVar2 = 0xffffffff;
      FUN_005166ae(4,"Unknown ConnectionsStatusCode returned for SendConnectionRequestOperation: %d"
                   ,iVar1);
    }
    FUN_005166ae(4,"SendConnectionRequestOperation returned an error from Java.");
    FUN_007c6a60(aCStack_24,&DAT_00801f93,auStack_28);
    local_1c = 0;
    local_18 = 0;
    local_14 = 0;
    local_20 = uVar2;
    FUN_00550ad4(param_1 + 0x28,&DAT_00831428,aCStack_24);
  }
  else {
    FUN_005166ae(1,
                 "SendConnectionRequest was given a null Java value.  Returning error for operation."
                );
    FUN_007c6a60(aCStack_24,&DAT_00801f93,auStack_28);
    local_20 = 0xffffffff;
    local_1c = 0;
    local_18 = 0;
    local_14 = 0;
    FUN_00550ad4(param_1 + 0x28,&DAT_00831428,aCStack_24);
  }
  gpg::ConnectionResponse::~ConnectionResponse(aCStack_24);
  return;
}

// ---- FUN_005514a8  @ 0x5514a8
undefined4 FUN_005514a8(undefined4 param_1)

{
  undefined1 auStack_20 [20];
  
  FUN_00548b18(auStack_20);
  FUN_00548b30(param_1,auStack_20);
  FUN_00548ab0(auStack_20);
  return param_1;
}

// ---- FUN_0055163c  @ 0x55163c
undefined4 * FUN_0055163c(undefined4 *param_1)

{
  int iVar1;
  int iVar2;
  
  *param_1 = &PTR_FUN_0055163c_1_00926ca0;
  if ((void *)param_1[8] != (void *)0x0) {
    operator_delete((void *)param_1[8]);
  }
  iVar2 = param_1[6];
  for (iVar1 = param_1[5]; iVar1 != iVar2; iVar1 = iVar1 + 4) {
    FUN_007c5914(iVar1);
  }
  std::_Vector_base<std::string,std::allocator<std::string>>::~_Vector_base
            ((_Vector_base<std::string,std::allocator<std::string>> *)(param_1 + 5));
  FUN_0054f8dc(param_1);
  return param_1;
}

// ---- FUN_00551678  @ 0x551678
void * FUN_00551678(void *param_1)

{
  FUN_0055163c();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0055168c  @ 0x55168c
undefined4 *
FUN_0055168c(undefined4 *param_1,undefined4 *param_2,int *param_3,int *param_4,undefined1 param_5)

{
  bool bVar1;
  void *pvVar2;
  undefined4 uVar3;
  int *piVar4;
  int iVar5;
  int iVar6;
  uint uVar7;
  size_t __n;
  int local_24;
  
  uVar3 = *param_2;
  local_24 = param_2[1];
  if (local_24 != 0) {
    piVar4 = (int *)(local_24 + 4);
    DataMemoryBarrier(0x1f);
    do {
      ExclusiveAccess(piVar4);
      bVar1 = (bool)hasExclusiveAccess(piVar4);
    } while (!bVar1);
    *piVar4 = *piVar4 + 1;
    DataMemoryBarrier(0x1f);
  }
  param_1[1] = 0;
  param_1[2] = 0;
  *param_1 = &PTR_FUN_0054f8dc_1_00926bd0;
  param_1[3] = uVar3;
  param_1[4] = local_24;
  if (local_24 != 0) {
    piVar4 = (int *)(local_24 + 4);
    DataMemoryBarrier(0x1f);
    do {
      ExclusiveAccess(piVar4);
      bVar1 = (bool)hasExclusiveAccess(piVar4);
    } while (!bVar1);
    *piVar4 = *piVar4 + 1;
    DataMemoryBarrier(0x1f);
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_24);
  *param_1 = &PTR_FUN_0055163c_1_00926ca0;
  iVar5 = *param_3;
  iVar6 = param_3[1];
  param_1[5] = 0;
  uVar7 = iVar6 - iVar5 >> 2;
  param_1[6] = 0;
  param_1[7] = 0;
  pvVar2 = (void *)0x0;
  if (uVar7 != 0) {
    if (0x3fffffff < uVar7) {
      FUN_007c4844();
    }
    pvVar2 = operator_new(uVar7 * 4);
  }
  param_1[5] = pvVar2;
  param_1[6] = pvVar2;
  param_1[7] = (void *)((int)pvVar2 + uVar7 * 4);
  iVar6 = param_3[1];
  for (iVar5 = *param_3; iVar5 != iVar6; iVar5 = iVar5 + 4) {
    if (pvVar2 != (void *)0x0) {
      FUN_007c64e8(pvVar2,iVar5);
    }
    pvVar2 = (void *)((int)pvVar2 + 4);
  }
  param_1[6] = pvVar2;
  iVar5 = *param_4;
  iVar6 = param_4[1];
  param_1[8] = 0;
  uVar7 = iVar6 - iVar5;
  param_1[9] = 0;
  param_1[10] = 0;
  if (uVar7 == 0) {
    pvVar2 = (void *)0x0;
  }
  else {
    pvVar2 = operator_new(uVar7);
  }
  param_1[8] = pvVar2;
  param_1[9] = pvVar2;
  param_1[10] = uVar7 + (int)pvVar2;
  __n = param_4[1] - *param_4;
  if (__n != 0) {
    memmove(pvVar2,(void *)*param_4,__n);
  }
  param_1[9] = (int)pvVar2 + __n;
  *(undefined1 *)(param_1 + 0xb) = param_5;
  return param_1;
}

// ---- FUN_005517dc  @ 0x5517dc
undefined4 FUN_005517dc(int param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined1 auStack_50 [16];
  undefined1 auStack_40 [16];
  undefined1 auStack_30 [20];
  
  if (*(char *)(param_1 + 0x2c) == '\0') {
    FUN_00547b10(auStack_50,&DAT_009618a4,&DAT_00962d24,"Connections",
                 "Lcom/google/android/gms/nearby/connection/Connections;");
    uVar1 = FUN_00548bac(*(int *)(param_1 + 0xc) + 0x90);
    FUN_00549450(auStack_40,param_1 + 0x14);
    uVar2 = FUN_00548bac(auStack_40);
    FUN_00549584(auStack_30,param_1 + 0x20,0);
    uVar3 = FUN_00548bac(auStack_30);
    FUN_00548d90(auStack_50,"sendUnreliableMessage",
                 "(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/List;[B)V",uVar1,
                 uVar2,uVar3);
  }
  else {
    FUN_00547b10(auStack_50,&DAT_009618a4,&DAT_00962d24,"Connections",
                 "Lcom/google/android/gms/nearby/connection/Connections;");
    uVar1 = FUN_00548bac(*(int *)(param_1 + 0xc) + 0x90);
    FUN_00549450(auStack_40,param_1 + 0x14);
    uVar2 = FUN_00548bac(auStack_40);
    FUN_00549584(auStack_30,param_1 + 0x20,0);
    uVar3 = FUN_00548bac(auStack_30);
    FUN_00548d90(auStack_50,"sendReliableMessage",
                 "(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/List;[B)V",uVar1,
                 uVar2,uVar3);
  }
  FUN_00548ab0(auStack_30);
  FUN_00548ab0(auStack_40);
  FUN_00548ab0(auStack_50);
  return 1;
}

// ---- FUN_00551920  @ 0x551920
undefined4 * FUN_00551920(undefined4 *param_1)

{
  *param_1 = &PTR___Sp_counted_base_1_009242b8;
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_00551950  @ 0x551950
void FUN_00551950(int param_1)

{
  undefined4 *puVar1;
  
  puVar1 = *(undefined4 **)(param_1 + 0xc);
  (**(code **)*puVar1)(puVar1);
  operator_delete(puVar1);
  return;
}

// ---- FUN_005519a4  @ 0x5519a4
undefined4 * FUN_005519a4(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_005519a4_1_00926cc0;
  std::_Function_base::~_Function_base((_Function_base *)(param_1 + 1));
  *param_1 = &PTR_LAB_005333e4_1_00925210;
  return param_1;
}

// ---- FUN_005519cc  @ 0x5519cc
void * FUN_005519cc(void *param_1)

{
  FUN_005519a4();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_005519de  @ 0x5519de
_Function_base * FUN_005519de(_Function_base *param_1)

{
  std::_Function_base::~_Function_base(param_1 + 0x10);
  std::_Function_base::~_Function_base(param_1);
  return param_1;
}

// ---- FUN_00551a08  @ 0x551a08
_Impl_base * FUN_00551a08(_Impl_base *param_1)

{
  *(undefined **)param_1 = &DAT_008fe598;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(param_1 + 0x14));
  std::thread::_Impl_base::~_Impl_base(param_1);
  return param_1;
}

// ---- FUN_00551a28  @ 0x551a28
void * FUN_00551a28(void *param_1)

{
  FUN_00551a08();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_00551a3c  @ 0x551a3c
undefined4 * FUN_00551a3c(undefined4 *param_1,undefined4 *param_2)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 *puVar3;
  undefined4 *puVar4;
  undefined4 *local_40;
  undefined4 *local_3c;
  undefined4 *local_38;
  undefined4 *local_34;
  undefined4 local_30;
  undefined4 local_2c;
  undefined4 local_28;
  undefined4 uStack_24;
  undefined4 local_20;
  undefined4 uStack_1c;
  
  *param_1 = 0;
  local_30 = *param_2;
  *param_2 = 0;
  local_38 = (undefined4 *)0x0;
  local_2c = param_2[1];
  local_34 = (undefined4 *)0x0;
  param_2[1] = 0;
  local_28 = param_2[2];
  uStack_24 = param_2[3];
  local_20 = param_2[4];
  uStack_1c = param_2[5];
  puVar3 = operator_new(0x28);
  uVar2 = local_2c;
  uVar1 = local_30;
  if (puVar3 != (undefined4 *)0x0) {
    puVar3[1] = 0;
    puVar3[2] = 0;
    *puVar3 = &DAT_008fe598;
    local_30 = 0;
    puVar3[4] = uVar1;
    local_2c = 0;
    puVar3[5] = uVar2;
    puVar3[6] = local_28;
    puVar3[7] = uStack_24;
    puVar3[8] = local_20;
    puVar3[9] = uStack_1c;
  }
  local_40 = (undefined4 *)0x0;
  local_38 = puVar3;
  puVar4 = operator_new(0x14);
  if (puVar4 != (undefined4 *)0x0) {
    puVar4[1] = 1;
    puVar4[2] = 1;
    puVar4[3] = puVar3;
    *puVar4 = &PTR_LAB_0055190c_1_008fe578;
  }
  local_40 = local_34;
  local_34 = puVar4;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_40);
  local_40 = local_38;
  local_3c = local_34;
  local_34 = (undefined4 *)0x0;
  local_38 = (undefined4 *)0x0;
  FUN_007bfe74(param_1,&local_40);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_3c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_34);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_2c);
  return param_1;
}

// ---- FUN_00551b7a  @ 0x551b7a
int FUN_00551b7a(int param_1,int param_2)

{
  *(undefined4 *)(param_1 + 8) = 0;
  if (*(int *)(param_2 + 8) != 0) {
    *(undefined4 *)(param_1 + 0xc) = *(undefined4 *)(param_2 + 0xc);
    *(undefined4 *)(param_1 + 8) = *(undefined4 *)(param_2 + 8);
    (**(code **)(param_2 + 8))(param_1,param_2,2);
  }
  return param_1;
}

// ---- FUN_00551ba4  @ 0x551ba4
undefined4 * FUN_00551ba4(undefined4 *param_1)

{
  int iVar1;
  int iVar2;
  
  *param_1 = &PTR_FUN_00551ba4_1_00926cd8;
  FUN_005519de(param_1 + 0x14);
  std::_Function_base::~_Function_base((_Function_base *)(param_1 + 0x10));
  std::_Function_base::~_Function_base((_Function_base *)(param_1 + 0xc));
  iVar2 = param_1[7];
  for (iVar1 = param_1[6]; iVar1 != iVar2; iVar1 = iVar1 + 4) {
    FUN_007c5914(iVar1);
  }
  if ((void *)param_1[6] != (void *)0x0) {
    operator_delete((void *)param_1[6]);
  }
  FUN_007c5914(param_1 + 5);
  FUN_0054f8dc(param_1);
  return param_1;
}

// ---- FUN_00551bf8  @ 0x551bf8
void * FUN_00551bf8(void *param_1)

{
  FUN_00551ba4();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_00551c2c  @ 0x551c2c
_Any_data * FUN_00551c2c(_Any_data *param_1,_Any_data *param_2)

{
  undefined4 uVar1;
  
  *(undefined4 *)(param_1 + 8) = 0;
  std::swap<std::_Any_data>(param_2,param_1);
  uVar1 = *(undefined4 *)(param_2 + 8);
  *(undefined4 *)(param_2 + 8) = *(undefined4 *)(param_1 + 8);
  *(undefined4 *)(param_1 + 8) = uVar1;
  uVar1 = *(undefined4 *)(param_2 + 0xc);
  *(undefined4 *)(param_2 + 0xc) = *(undefined4 *)(param_1 + 0xc);
  *(undefined4 *)(param_1 + 0xc) = uVar1;
  *(undefined4 *)(param_1 + 0x18) = 0;
  std::swap<std::_Any_data>(param_2 + 0x10,param_1 + 0x10);
  uVar1 = *(undefined4 *)(param_2 + 0x18);
  *(undefined4 *)(param_2 + 0x18) = *(undefined4 *)(param_1 + 0x18);
  *(undefined4 *)(param_1 + 0x18) = uVar1;
  uVar1 = *(undefined4 *)(param_2 + 0x1c);
  *(undefined4 *)(param_2 + 0x1c) = *(undefined4 *)(param_1 + 0x1c);
  *(undefined4 *)(param_1 + 0x1c) = uVar1;
  return param_1;
}

// ---- FUN_00551c70  @ 0x551c70
undefined4 *
FUN_00551c70(undefined4 *param_1,undefined4 *param_2,undefined4 param_3,int *param_4,
            undefined4 param_5,undefined4 param_6,_Any_data *param_7,undefined4 param_8)

{
  bool bVar1;
  void *pvVar2;
  undefined4 uVar3;
  int *piVar4;
  int iVar5;
  int iVar6;
  uint uVar7;
  undefined4 *local_24;
  
  uVar3 = *param_2;
  local_24 = param_2;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_24,(__shared_count *)(param_2 + 1)
            );
  param_1[1] = 0;
  param_1[2] = 0;
  *param_1 = &PTR_FUN_0054f8dc_1_00926bd0;
  param_1[3] = uVar3;
  param_1[4] = local_24;
  if (local_24 != (undefined4 *)0x0) {
    piVar4 = local_24 + 1;
    DataMemoryBarrier(0x1f);
    do {
      ExclusiveAccess(piVar4);
      bVar1 = (bool)hasExclusiveAccess(piVar4);
    } while (!bVar1);
    *piVar4 = *piVar4 + 1;
    DataMemoryBarrier(0x1f);
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_24);
  *param_1 = &PTR_FUN_00551ba4_1_00926cd8;
  FUN_007c64e8(param_1 + 5,param_3);
  iVar5 = *param_4;
  iVar6 = param_4[1];
  param_1[6] = 0;
  uVar7 = iVar6 - iVar5 >> 2;
  param_1[7] = 0;
  param_1[8] = 0;
  pvVar2 = (void *)0x0;
  if (uVar7 != 0) {
    if (0x3fffffff < uVar7) {
      FUN_007c4844();
    }
    pvVar2 = operator_new(uVar7 * 4);
  }
  param_1[6] = pvVar2;
  param_1[7] = pvVar2;
  param_1[8] = (void *)((int)pvVar2 + uVar7 * 4);
  iVar6 = param_4[1];
  for (iVar5 = *param_4; iVar5 != iVar6; iVar5 = iVar5 + 4) {
    if (pvVar2 != (void *)0x0) {
      FUN_007c64e8(pvVar2,iVar5);
    }
    pvVar2 = (void *)((int)pvVar2 + 4);
  }
  param_1[7] = pvVar2;
  param_1[10] = param_5;
  param_1[0xb] = param_6;
  param_1[0xe] = 0;
  std::swap<std::_Any_data>(param_7,(_Any_data *)(param_1 + 0xc));
  uVar3 = *(undefined4 *)(param_7 + 8);
  *(undefined4 *)(param_7 + 8) = param_1[0xe];
  param_1[0xe] = uVar3;
  uVar3 = *(undefined4 *)(param_7 + 0xc);
  *(undefined4 *)(param_7 + 0xc) = param_1[0xf];
  param_1[0xf] = uVar3;
  param_1[0x12] = 0;
  std::swap<std::_Any_data>(param_7 + 0x10,(_Any_data *)(param_1 + 0x10));
  uVar3 = *(undefined4 *)(param_7 + 0x18);
  *(undefined4 *)(param_7 + 0x18) = param_1[0x12];
  param_1[0x12] = uVar3;
  uVar3 = *(undefined4 *)(param_7 + 0x1c);
  *(undefined4 *)(param_7 + 0x1c) = param_1[0x13];
  param_1[0x13] = uVar3;
  FUN_00551c2c(param_1 + 0x14,param_8);
  return param_1;
}

// ---- FUN_00551dec  @ 0x551dec
undefined4 * FUN_00551dec(undefined4 *param_1,_Any_data *param_2)

{
  undefined4 uVar1;
  
  *param_1 = &PTR_FUN_005519a4_1_00926cc0;
  param_1[3] = 0;
  std::swap<std::_Any_data>(param_2,(_Any_data *)(param_1 + 1));
  uVar1 = *(undefined4 *)(param_2 + 8);
  *(undefined4 *)(param_2 + 8) = param_1[3];
  param_1[3] = uVar1;
  uVar1 = *(undefined4 *)(param_2 + 0xc);
  *(undefined4 *)(param_2 + 0xc) = param_1[4];
  param_1[4] = uVar1;
  return param_1;
}

// ---- FUN_00551e20  @ 0x551e20
void * FUN_00551e20(int param_1)

{
  void *pvVar1;
  _Function_base a_Stack_20 [20];
  
  FUN_00551b7a(a_Stack_20,param_1 + 4);
  pvVar1 = operator_new(0x14);
  FUN_00551dec(pvVar1,a_Stack_20);
  std::_Function_base::~_Function_base(a_Stack_20);
  return pvVar1;
}

// ---- FUN_00551f68  @ 0x551f68
void FUN_00551f68(function<void(std::function<void()>)> *param_1,undefined4 *param_2,
                 StartAdvertisingResult *param_3)

{
  _Any_data *p_Var1;
  function *pfVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  _Any_data *local_50 [2];
  code *local_48;
  code *local_44;
  function<void(long_long,gpg::StartAdvertisingResult_const&)> afStack_40 [8];
  undefined4 local_38;
  undefined4 local_34;
  undefined4 local_30;
  undefined1 *local_2c;
  undefined1 *local_28;
  undefined4 local_20;
  undefined4 uStack_1c;
  
  if (*(int *)(param_1 + 0x18) != 0) {
    pfVar2 = (function *)(param_1 + 0x10);
    if (*(int *)(param_1 + 8) == 0) {
      (**(code **)(param_1 + 0x1c))(pfVar2,pfVar2,*param_2,param_2[1],param_3);
    }
    else {
      std::function<void(long_long,gpg::StartAdvertisingResult_const&)>::function(afStack_40,pfVar2)
      ;
      gpg::StartAdvertisingResult::StartAdvertisingResult
                ((StartAdvertisingResult *)&local_30,param_3);
      local_20 = *param_2;
      uStack_1c = param_2[1];
      local_48 = (code *)0x0;
      p_Var1 = operator_new(0x28);
      *(undefined4 *)(p_Var1 + 8) = 0;
      std::swap<std::_Any_data>((_Any_data *)afStack_40,p_Var1);
      uVar3 = *(undefined4 *)(p_Var1 + 8);
      *(undefined4 *)(p_Var1 + 8) = local_38;
      uVar4 = *(undefined4 *)(p_Var1 + 0xc);
      *(undefined4 *)(p_Var1 + 0xc) = local_34;
      *(undefined4 *)(p_Var1 + 0x10) = local_30;
      *(undefined1 **)(p_Var1 + 0x14) = local_2c;
      *(undefined1 **)(p_Var1 + 0x18) = local_28;
      local_2c = &DAT_00972528;
      *(undefined4 *)(p_Var1 + 0x20) = local_20;
      *(undefined4 *)(p_Var1 + 0x24) = uStack_1c;
      local_44 = (code *)0x551985;
      local_48 = (code *)0x551efb;
      local_50[0] = p_Var1;
      local_38 = uVar3;
      local_34 = uVar4;
      local_28 = local_2c;
      std::function<void(std::function<void()>)>::operator()(param_1,(_Function_base *)local_50);
      std::_Function_base::~_Function_base((_Function_base *)local_50);
      gpg::StartAdvertisingResult::~StartAdvertisingResult((StartAdvertisingResult *)&local_30);
      std::_Function_base::~_Function_base((_Function_base *)afStack_40);
    }
  }
  return;
}

// ---- FUN_00552082  @ 0x552082
int FUN_00552082(int param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  *(undefined4 *)(param_1 + 8) = 0;
  if (*(int *)(param_2 + 8) != 0) {
    *(undefined4 *)(param_1 + 0xc) = *(undefined4 *)(param_2 + 0xc);
    *(undefined4 *)(param_1 + 8) = *(undefined4 *)(param_2 + 8);
    (**(code **)(param_2 + 8))(param_1,param_2,2,*(code **)(param_2 + 8),param_4);
  }
  std::function<void(long_long,gpg::ConnectionRequest_const&)>::function
            ((function<void(long_long,gpg::ConnectionRequest_const&)> *)(param_1 + 0x10),
             (function *)(param_2 + 0x10));
  return param_1;
}

// ---- FUN_00552178  @ 0x552178
void FUN_00552178(function<void(std::function<void()>)> *param_1,undefined4 *param_2,
                 ConnectionRequest *param_3)

{
  _Any_data *p_Var1;
  function *pfVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  _Any_data *local_58 [2];
  code *local_50;
  code *local_4c;
  function<void(long_long,gpg::ConnectionRequest_const&)> afStack_48 [8];
  undefined4 local_40;
  undefined4 local_3c;
  undefined1 *local_38;
  undefined1 *local_34;
  undefined1 *local_30;
  _Vector_base a_Stack_2c [12];
  undefined4 local_20;
  undefined4 uStack_1c;
  
  if (*(int *)(param_1 + 0x18) != 0) {
    pfVar2 = (function *)(param_1 + 0x10);
    if (*(int *)(param_1 + 8) == 0) {
      (**(code **)(param_1 + 0x1c))(pfVar2,pfVar2,*param_2,param_2[1],param_3);
    }
    else {
      std::function<void(long_long,gpg::ConnectionRequest_const&)>::function(afStack_48,pfVar2);
      gpg::ConnectionRequest::ConnectionRequest((ConnectionRequest *)&local_38,param_3);
      local_20 = *param_2;
      uStack_1c = param_2[1];
      local_50 = (code *)0x0;
      p_Var1 = operator_new(0x30);
      *(undefined4 *)(p_Var1 + 8) = 0;
      std::swap<std::_Any_data>((_Any_data *)afStack_48,p_Var1);
      uVar3 = *(undefined4 *)(p_Var1 + 8);
      *(undefined4 *)(p_Var1 + 8) = local_40;
      uVar4 = *(undefined4 *)(p_Var1 + 0xc);
      *(undefined4 *)(p_Var1 + 0xc) = local_3c;
      *(undefined1 **)(p_Var1 + 0x10) = local_38;
      *(undefined1 **)(p_Var1 + 0x14) = local_34;
      local_38 = &DAT_00972528;
      *(undefined1 **)(p_Var1 + 0x18) = local_30;
      local_40 = uVar3;
      local_3c = uVar4;
      local_34 = local_38;
      local_30 = local_38;
      std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::_Vector_base
                ((_Vector_base<unsigned_char,std::allocator<unsigned_char>> *)(p_Var1 + 0x1c),
                 a_Stack_2c);
      *(undefined4 *)(p_Var1 + 0x28) = local_20;
      *(undefined4 *)(p_Var1 + 0x2c) = uStack_1c;
      local_4c = (code *)0x551967;
      local_50 = (code *)0x55210d;
      local_58[0] = p_Var1;
      std::function<void(std::function<void()>)>::operator()(param_1,(_Function_base *)local_58);
      std::_Function_base::~_Function_base((_Function_base *)local_58);
      gpg::ConnectionRequest::~ConnectionRequest((ConnectionRequest *)&local_38);
      std::_Function_base::~_Function_base((_Function_base *)afStack_48);
    }
  }
  return;
}

// ---- FUN_00552274  @ 0x552274
void FUN_00552274(undefined4 param_1,undefined4 param_2,undefined4 param_3,_Vector_base *param_4,
                 undefined4 param_5)

{
  int iVar1;
  ConnectionRequest aCStack_30 [4];
  undefined1 auStack_2c [4];
  undefined1 auStack_28 [4];
  _Vector_base<unsigned_char,std::allocator<unsigned_char>> a_Stack_24 [12];
  
  FUN_005166ae(1,"StartAdvertising operation received a connection request.");
  iVar1 = FUN_00548c48(param_1);
  if (iVar1 == 0) {
    FUN_00548ec0(aCStack_30,param_1);
    FUN_00548ec0(auStack_2c,param_2);
    FUN_00548ec0(auStack_28,param_3);
    std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::_Vector_base(a_Stack_24,param_4)
    ;
    FUN_00552178(param_5,&DAT_00831430,aCStack_30);
    gpg::ConnectionRequest::~ConnectionRequest(aCStack_30);
  }
  return;
}

// ---- FUN_00552484  @ 0x552484
void FUN_00552484(undefined4 *param_1,undefined4 *param_2)

{
  code *pcVar1;
  _Vector_base<unsigned_char,std::allocator<unsigned_char>> a_Stack_7c [12];
  undefined1 auStack_70 [16];
  undefined1 auStack_60 [16];
  undefined1 auStack_50 [16];
  undefined1 auStack_40 [32];
  
  pcVar1 = (code *)*param_1;
  FUN_00548b30(auStack_70,param_2[3]);
  FUN_00548b30(auStack_60,param_2[2]);
  FUN_00548b30(auStack_50,param_2[1]);
  std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::_Vector_base
            (a_Stack_7c,(_Vector_base *)*param_2);
  FUN_00552082(auStack_40,param_1 + 1);
  (*pcVar1)(auStack_70,auStack_60,auStack_50,a_Stack_7c,auStack_40);
  FUN_005519de(auStack_40);
  std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::~_Vector_base(a_Stack_7c);
  FUN_00548ab0(auStack_50);
  FUN_00548ab0(auStack_60);
  FUN_00548ab0(auStack_70);
  return;
}

// ---- FUN_00552544  @ 0x552544
undefined4
FUN_00552544(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 *param_4)

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
  local_5c = 0;
  local_48[0][1] = uVar1;
  local_60 = 0;
  local_3c = &LAB_00552cf6_1;
  local_40 = (code *)0x551b35;
  FUN_00533700(a_Stack_38,(_Function_base *)local_48);
  pvVar2 = operator_new(0x14);
  FUN_0053372c(pvVar2,a_Stack_38);
  local_64 = pvVar2;
  FUN_005453a8(auStack_58,param_2,param_3,&local_64);
  FUN_00544d78(&local_64);
  std::_Function_base::~_Function_base(a_Stack_38);
  std::_Function_base::~_Function_base((_Function_base *)local_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_5c);
  FUN_00548b30(param_1,auStack_58);
  FUN_00548ab0(auStack_58);
  return param_1;
}

// ---- FUN_00552628  @ 0x552628
undefined4 FUN_00552628(undefined4 param_1,int param_2)

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
  if (local_34 == 0) goto LAB_00552642;
  piVar2 = (int *)(local_34 + 4);
  unaff_r4 = &local_28;
  local_28 = *(int *)(local_34 + 4);
  while( true ) {
    iVar3 = local_28;
    if (local_28 == 0) {
LAB_00552642:
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
  local_30 = local_28;
  local_2c = local_24;
  local_24 = 0;
  local_28 = 0;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(unaff_r4 + 1));
  FUN_00552544(unaff_r4,1,0x5463d1,&local_30,iVar3);
  FUN_00548b30(param_1,unaff_r4);
  FUN_00548ab0(unaff_r4);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_2c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_34);
  return param_1;
}

// ---- FUN_005526dc  @ 0x5526dc
undefined4 FUN_005526dc(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  void *pvVar5;
  int iVar6;
  undefined4 uVar7;
  int iVar8;
  thread atStack_134 [4];
  undefined1 auStack_130 [16];
  undefined1 auStack_120 [16];
  undefined1 auStack_110 [16];
  undefined1 auStack_100 [16];
  undefined1 auStack_f0 [16];
  undefined4 *local_e0 [2];
  code *local_d8;
  undefined1 *local_d4;
  undefined1 auStack_d0 [16];
  undefined1 auStack_c0 [16];
  _Function_base a_Stack_b0 [16];
  undefined1 auStack_a0 [16];
  undefined1 auStack_90 [16];
  undefined1 auStack_80 [16];
  undefined1 auStack_70 [16];
  void *local_60;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_5c [12];
  void *local_50;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_4c [4];
  undefined1 *local_48;
  undefined4 uStack_44;
  undefined4 local_40;
  undefined4 uStack_3c;
  
  iVar6 = *(int *)(param_1 + 0xc);
  if (*(int *)(iVar6 + 0xa8) == 0 && *(int *)(iVar6 + 0xac) == 0) {
    *(undefined4 *)(iVar6 + 0xa8) = param_3;
    *(undefined4 *)(iVar6 + 0xac) = param_4;
    iVar6 = FUN_00545484(*(undefined4 *)(param_1 + 0xc),0x546af1);
    if (iVar6 != 0) {
      FUN_005456f8(*(undefined4 *)(param_1 + 0xc),0x546af1);
    }
    FUN_00548040(auStack_130,&DAT_00961824);
    iVar8 = *(int *)(param_1 + 0x1c);
    for (iVar6 = *(int *)(param_1 + 0x18); iVar6 != iVar8; iVar6 = iVar6 + 4) {
      FUN_0054942c(auStack_120,iVar6,0);
      uVar1 = FUN_00548bac(auStack_120);
      FUN_00547b78(auStack_110,&DAT_00962924,"(Ljava/lang/String;)V",uVar1);
      uVar1 = FUN_00548bac(auStack_110);
      FUN_00548c54(auStack_130,&DAT_00809538,"(Ljava/lang/Object;)Z",uVar1);
      FUN_00548ab0(auStack_110);
      FUN_00548ab0(auStack_120);
    }
    FUN_00548b18(auStack_100);
    if (*(int *)(param_1 + 0x18) != *(int *)(param_1 + 0x1c)) {
      uVar1 = FUN_00548bac(auStack_130);
      FUN_00547b78(auStack_f0,&DAT_00962b24,"(Ljava/util/List;)V",uVar1);
      FUN_00548b60(auStack_100,auStack_f0);
      FUN_00548ab0(auStack_f0);
    }
    local_50 = (void *)0x552275;
    FUN_00551c2c(a_Stack_4c,param_1 + 0x50);
    local_d8 = (code *)0x0;
    puVar2 = operator_new(0x24);
    *puVar2 = local_50;
    FUN_00551c2c(puVar2 + 1,a_Stack_4c);
    local_d4 = &LAB_00552528_1;
    local_d8 = (code *)0x5520bd;
    local_e0[0] = puVar2;
    FUN_005519de(a_Stack_4c);
    FUN_00547b10(auStack_d0,&DAT_009618a4,&DAT_00962d24,"Connections",
                 "Lcom/google/android/gms/nearby/connection/Connections;");
    uVar1 = FUN_00548bac(*(int *)(param_1 + 0xc) + 0x90);
    FUN_0054942c(auStack_c0,param_1 + 0x14,0);
    uVar3 = FUN_00548bac(auStack_c0);
    uVar4 = FUN_00548bac(auStack_100);
    uVar7 = *(undefined4 *)(param_1 + 0xc);
    FUN_00551b7a(a_Stack_b0,local_e0);
    FUN_00545074(auStack_70);
    FUN_00551b7a((_Function_base *)&local_50,a_Stack_b0);
    std::_Function_base::~_Function_base((_Function_base *)&local_50);
    FUN_00551b7a((_Function_base *)&local_60,a_Stack_b0);
    pvVar5 = operator_new(0x14);
    FUN_00551dec(pvVar5,(_Function_base *)&local_60);
    local_50 = pvVar5;
    FUN_005453a8(auStack_70,uVar7,0x546af1,(_Function_base *)&local_50);
    FUN_00544d78((_Function_base *)&local_50);
    std::_Function_base::~_Function_base((_Function_base *)&local_60);
    FUN_00548b30(auStack_a0,auStack_70);
    FUN_00548ab0(auStack_70);
    uVar7 = FUN_00548bac(auStack_a0);
    FUN_0054968c(auStack_90,auStack_d0,&DAT_00963024,"startAdvertising",
                 "(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/google/android/gms/nearby/connection/AppMetadata;JLcom/google/android/gms/nearby/connection/Connections$ConnectionRequestListener;)Lcom/google/android/gms/common/api/PendingResult;"
                 ,uVar1,uVar3,uVar4,0,0,uVar7);
    FUN_00552628(auStack_80,param_1);
    uVar1 = FUN_00548bac(auStack_80);
    FUN_00548d90(auStack_90,"setResultCallback",
                 "(Lcom/google/android/gms/common/api/ResultCallback;)V",uVar1);
    FUN_00548ab0(auStack_80);
    FUN_00548ab0(auStack_90);
    FUN_00548ab0(auStack_a0);
    std::_Function_base::~_Function_base(a_Stack_b0);
    FUN_00548ab0(auStack_c0);
    FUN_00548ab0(auStack_d0);
    if (*(int *)(param_1 + 0x28) != 0 || *(int *)(param_1 + 0x2c) != 0) {
      local_60 = *(void **)(param_1 + 0xc);
      std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
                (a_Stack_5c,(__shared_count *)(param_1 + 0x10));
      uVar1 = *(undefined4 *)(param_1 + 0x28);
      uVar3 = *(undefined4 *)(param_1 + 0x2c);
      local_50 = local_60;
      std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
                (a_Stack_4c,(__shared_count *)a_Stack_5c);
      local_48 = (undefined1 *)uVar1;
      uStack_44 = uVar3;
      local_40 = param_3;
      uStack_3c = param_4;
      FUN_00551a3c(atStack_134,(_Function_base *)&local_50);
      FUN_007bfda0(atStack_134);
      std::thread::~thread(atStack_134);
      std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_4c);
      std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_5c);
    }
    std::_Function_base::~_Function_base((_Function_base *)local_e0);
    FUN_00548ab0(auStack_100);
    FUN_00548ab0(auStack_130);
  }
  else {
    FUN_005166ae(4,"Cannot start advertising currently; already advertising.");
    local_50 = (void *)0xfffffffd;
    FUN_007c6a60(a_Stack_4c,&DAT_00801f93,&local_60);
    local_48 = &DAT_00972528;
    FUN_00551f68(param_1 + 0x30,&DAT_00831430,(StartAdvertisingResult *)&local_50);
    gpg::StartAdvertisingResult::~StartAdvertisingResult((StartAdvertisingResult *)&local_50);
  }
  return 1;
}

// ---- FUN_00552af0  @ 0x552af0
void FUN_00552af0(int param_1,undefined4 param_2)

{
  int iVar1;
  undefined4 uVar2;
  undefined1 *local_34;
  undefined4 local_30;
  undefined4 local_2c;
  undefined1 *local_28;
  
  iVar1 = FUN_00548c48(param_2);
  if (iVar1 == 0) {
    FUN_0054968c((StartAdvertisingResult *)&local_30,param_2,&DAT_009619a4,"getStatus",
                 "()Lcom/google/android/gms/common/api/Status;");
    iVar1 = FUN_00548d1c((StartAdvertisingResult *)&local_30,"getStatusCode");
    FUN_00548ab0((StartAdvertisingResult *)&local_30);
    if (iVar1 == 8000) {
      uVar2 = 0xfffffffe;
    }
    else if (iVar1 == 0x1f41) {
      uVar2 = 0xfffffffd;
    }
    else if (iVar1 == 0) {
      uVar2 = 1;
    }
    else {
      uVar2 = 0xffffffff;
      FUN_005166ae(4,"Unknown ConnectionsStatusCode returned to onConnectionResponse: %d",iVar1);
    }
    FUN_0054932c((StartAdvertisingResult *)&local_30,param_2,&DAT_009624a4);
    FUN_005490cc(&local_34,(StartAdvertisingResult *)&local_30,&DAT_00801f93,"getLocalEndpointName")
    ;
    FUN_00548ab0((StartAdvertisingResult *)&local_30);
    local_2c = local_34;
    local_34 = &DAT_00972528;
    local_30 = uVar2;
    local_28 = &DAT_00972528;
    FUN_00551f68(param_1 + 0x30,&DAT_00831430,(StartAdvertisingResult *)&local_30);
    gpg::StartAdvertisingResult::~StartAdvertisingResult((StartAdvertisingResult *)&local_30);
    FUN_007c5914(&local_34);
  }
  else {
    FUN_005166ae(1,
                 "StartAdvertisingResult was given a null Java value.  Returning error for operation."
                );
    local_30 = 0xffffffff;
    FUN_007c6a60(&local_2c,&DAT_00801f93,&local_34);
    local_28 = &DAT_00972528;
    FUN_00551f68(param_1 + 0x30,&DAT_00831430,(StartAdvertisingResult *)&local_30);
    gpg::StartAdvertisingResult::~StartAdvertisingResult((StartAdvertisingResult *)&local_30);
  }
  return;
}

// ---- FUN_00552c44  @ 0x552c44
undefined4 FUN_00552c44(undefined4 param_1)

{
  undefined1 auStack_20 [20];
  
  FUN_00548b18(auStack_20);
  FUN_00548b30(param_1,auStack_20);
  FUN_00548ab0(auStack_20);
  return param_1;
}

// ---- FUN_00552d3c  @ 0x552d3c
undefined4 * FUN_00552d3c(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_00552d3c_1_00926cf8;
  std::_Function_base::~_Function_base((_Function_base *)(param_1 + 1));
  *param_1 = &PTR_LAB_005333e4_1_00925210;
  return param_1;
}

// ---- FUN_00552d64  @ 0x552d64
void * FUN_00552d64(void *param_1)

{
  FUN_00552d3c();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_00552d98  @ 0x552d98
undefined4 * FUN_00552d98(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_00552d98_1_00926d10;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(param_1 + 9));
  FUN_007c5914(param_1 + 5);
  FUN_0054f8dc(param_1);
  return param_1;
}

// ---- FUN_00552dc0  @ 0x552dc0
void * FUN_00552dc0(void *param_1)

{
  FUN_00552d98();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_00552ea4  @ 0x552ea4
undefined4 *
FUN_00552ea4(undefined4 *param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5,undefined4 param_6,undefined4 *param_7)

{
  undefined4 uVar1;
  undefined4 *puStack_14;
  
  uVar1 = *param_2;
  puStack_14 = param_2;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&puStack_14,
             (__shared_count *)(param_2 + 1));
  param_1[1] = 0;
  param_1[2] = 0;
  *param_1 = &PTR_FUN_0054f8dc_1_00926bd0;
  param_1[3] = uVar1;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(param_1 + 4),
             (__shared_count *)&puStack_14);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&puStack_14);
  *param_1 = &PTR_FUN_00552d98_1_00926d10;
  FUN_007c64e8(param_1 + 5,param_3);
  param_1[6] = param_5;
  param_1[7] = param_6;
  param_1[8] = *param_7;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(param_1 + 9),
             (__shared_count *)(param_7 + 1));
  return param_1;
}

// ---- FUN_00552f20  @ 0x552f20
int FUN_00552f20(int param_1,int param_2)

{
  *(undefined4 *)(param_1 + 8) = 0;
  if (*(int *)(param_2 + 8) != 0) {
    *(undefined4 *)(param_1 + 0xc) = *(undefined4 *)(param_2 + 0xc);
    *(undefined4 *)(param_1 + 8) = *(undefined4 *)(param_2 + 8);
    (**(code **)(param_2 + 8))(param_1,param_2,2);
  }
  return param_1;
}

// ---- FUN_00552f4c  @ 0x552f4c
undefined4 * FUN_00552f4c(undefined4 *param_1,_Any_data *param_2)

{
  undefined4 uVar1;
  
  *param_1 = &PTR_FUN_00552d3c_1_00926cf8;
  param_1[3] = 0;
  std::swap<std::_Any_data>(param_2,(_Any_data *)(param_1 + 1));
  uVar1 = *(undefined4 *)(param_2 + 8);
  *(undefined4 *)(param_2 + 8) = param_1[3];
  param_1[3] = uVar1;
  uVar1 = *(undefined4 *)(param_2 + 0xc);
  *(undefined4 *)(param_2 + 0xc) = param_1[4];
  param_1[4] = uVar1;
  return param_1;
}

// ---- FUN_00552f80  @ 0x552f80
void * FUN_00552f80(int param_1)

{
  void *pvVar1;
  _Function_base a_Stack_20 [20];
  
  FUN_00552f20(a_Stack_20,param_1 + 4);
  pvVar1 = operator_new(0x14);
  FUN_00552f4c(pvVar1,a_Stack_20);
  std::_Function_base::~_Function_base(a_Stack_20);
  return pvVar1;
}

// ---- FUN_005530b8  @ 0x5530b8
undefined4 FUN_005530b8(undefined4 param_1,int param_2)

{
  bool bVar1;
  undefined4 uVar2;
  int extraout_r1;
  int *piVar3;
  int *extraout_r2;
  int extraout_r3;
  undefined4 *puVar4;
  int iVar5;
  _Function_base *unaff_r5;
  int local_5c;
  undefined4 local_58;
  undefined4 local_54;
  undefined4 local_50;
  undefined4 local_4c [3];
  undefined1 auStack_40 [16];
  undefined4 *local_30;
  undefined4 local_2c;
  code *local_28;
  undefined1 *local_24;
  
  local_5c = *(int *)(param_2 + 8);
  if (local_5c == 0) goto LAB_005530d4;
  piVar3 = (int *)(local_5c + 4);
  unaff_r5 = (_Function_base *)&local_30;
  local_30 = (undefined4 *)*(int *)(local_5c + 4);
  while( true ) {
    puVar4 = local_30;
    if (local_30 == (undefined4 *)0x0) {
LAB_005530d4:
      std::__throw_bad_weak_ptr();
      param_2 = extraout_r1;
      piVar3 = extraout_r2;
      puVar4 = (undefined4 *)extraout_r3;
    }
    DataMemoryBarrier(0x1f);
    ExclusiveAccess(piVar3);
    iVar5 = *piVar3;
    bVar1 = false;
    if (iVar5 == *(int *)unaff_r5) {
      bVar1 = (bool)hasExclusiveAccess(piVar3);
      if (bVar1) {
        *piVar3 = (int)puVar4 + 1;
      }
      DataMemoryBarrier(0x1f);
    }
    if (bVar1) break;
    *(int *)unaff_r5 = iVar5;
  }
  local_30 = *(undefined4 **)(param_2 + 4);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(unaff_r5 + 4),
             (__shared_count *)&local_5c);
  local_58 = local_30;
  local_54 = local_2c;
  local_2c = 0;
  local_30 = (undefined4 *)0x0;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(unaff_r5 + 4));
  FUN_00545074(auStack_40);
  local_50 = local_58;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_4c,(__shared_count *)&local_54);
  local_28 = (code *)0x0;
  local_30 = operator_new(8);
  uVar2 = local_4c[0];
  *local_30 = local_50;
  local_30[1] = 0;
  local_4c[0] = 0;
  local_30[1] = uVar2;
  local_24 = &LAB_00553554_1;
  local_28 = (code *)0x552dd3;
  local_50 = 0;
  FUN_00537340(auStack_40,1,0x5463d1,unaff_r5);
  std::_Function_base::~_Function_base(unaff_r5);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_4c);
  FUN_00548b30(&local_50,auStack_40);
  FUN_00548ab0(auStack_40);
  FUN_00548b30(param_1,&local_50);
  FUN_00548ab0(&local_50);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_54);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_5c);
  return param_1;
}

// ---- FUN_005531f4  @ 0x5531f4
undefined4 FUN_005531f4(int param_1)

{
  void *pvVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_bc [4];
  undefined1 auStack_b8 [16];
  undefined4 *local_a8 [2];
  undefined1 *local_a0;
  undefined1 *local_9c;
  undefined4 *local_98 [2];
  undefined1 *local_90;
  undefined1 *local_8c;
  undefined1 auStack_88 [16];
  undefined1 auStack_78 [16];
  undefined1 auStack_68 [16];
  undefined1 auStack_58 [16];
  _Function_base a_Stack_48 [16];
  void *local_38;
  undefined4 local_34 [4];
  
  FUN_00545074(auStack_b8);
  uVar3 = *(undefined4 *)(param_1 + 0x20);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_bc,(__shared_count *)(param_1 + 0x24));
  local_38 = (void *)uVar3;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_34,(__shared_count *)a_Stack_bc);
  local_a0 = (undefined1 *)0x0;
  local_a8[0] = operator_new(8);
  uVar2 = local_34[0];
  *local_a8[0] = local_38;
  local_a8[0][1] = 0;
  local_34[0] = 0;
  local_a8[0][1] = uVar2;
  local_38 = (void *)0x0;
  local_9c = &LAB_00552fb0_1;
  local_a0 = &LAB_00552e18_1;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_34);
  FUN_00552f20((_Function_base *)&local_38,(_Function_base *)local_a8);
  std::_Function_base::~_Function_base((_Function_base *)&local_38);
  FUN_00552f20(a_Stack_48,(_Function_base *)local_a8);
  pvVar1 = operator_new(0x14);
  FUN_00552f4c(pvVar1,a_Stack_48);
  local_38 = pvVar1;
  FUN_005453a8(auStack_b8,uVar3,0x5468d5,(_Function_base *)&local_38);
  FUN_00544d78((_Function_base *)&local_38);
  std::_Function_base::~_Function_base(a_Stack_48);
  local_38 = (void *)uVar3;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_34,(__shared_count *)a_Stack_bc);
  local_90 = (undefined1 *)0x0;
  local_98[0] = operator_new(8);
  uVar2 = local_34[0];
  *local_98[0] = local_38;
  local_98[0][1] = 0;
  local_34[0] = 0;
  local_98[0][1] = uVar2;
  local_38 = (void *)0x0;
  local_8c = &LAB_0055306e_1;
  local_90 = &LAB_00552e5e_1;
  FUN_00537340(auStack_b8,uVar3,0x5465b1,(_Function_base *)local_98);
  std::_Function_base::~_Function_base((_Function_base *)local_98);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_34);
  FUN_00547b10(auStack_88,&DAT_009618a4,&DAT_00962d24,"Connections",
               "Lcom/google/android/gms/nearby/connection/Connections;");
  uVar2 = FUN_00548bac(*(int *)(param_1 + 0xc) + 0x90);
  FUN_0054942c(auStack_78,param_1 + 0x14,0);
  uVar3 = FUN_00548bac(auStack_78);
  FUN_00548bac(auStack_b8);
  FUN_0054968c(auStack_68,auStack_88,&DAT_00963024,"startDiscovery",
               "(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;JLcom/google/android/gms/nearby/connection/Connections$EndpointDiscoveryListener;)Lcom/google/android/gms/common/api/PendingResult;"
               ,uVar2,uVar3);
  FUN_005530b8(auStack_58,param_1);
  uVar2 = FUN_00548bac(auStack_58);
  FUN_00548d90(auStack_68,"setResultCallback",
               "(Lcom/google/android/gms/common/api/ResultCallback;)V",uVar2);
  FUN_00548ab0(auStack_58);
  FUN_00548ab0(auStack_68);
  FUN_00548ab0(auStack_78);
  FUN_00548ab0(auStack_88);
  std::_Function_base::~_Function_base((_Function_base *)local_a8);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_bc);
  FUN_00548ab0(auStack_b8);
  return 1;
}

// ---- FUN_005534b4  @ 0x5534b4
undefined4 FUN_005534b4(undefined4 param_1)

{
  undefined1 auStack_20 [20];
  
  FUN_00548b18(auStack_20);
  FUN_00548b30(param_1,auStack_20);
  FUN_00548ab0(auStack_20);
  return param_1;
}

// ---- FUN_005535a8  @ 0x5535a8
undefined4 * FUN_005535a8(undefined4 *param_1,undefined4 *param_2)

{
  bool bVar1;
  undefined4 uVar2;
  int *piVar3;
  int local_c;
  
  uVar2 = *param_2;
  local_c = param_2[1];
  if (local_c != 0) {
    piVar3 = (int *)(local_c + 4);
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
  *param_1 = &PTR_FUN_0054f8dc_1_00926bd0;
  param_1[3] = uVar2;
  param_1[4] = local_c;
  if (local_c != 0) {
    piVar3 = (int *)(local_c + 4);
    DataMemoryBarrier(0x1f);
    do {
      ExclusiveAccess(piVar3);
      bVar1 = (bool)hasExclusiveAccess(piVar3);
    } while (!bVar1);
    *piVar3 = *piVar3 + 1;
    DataMemoryBarrier(0x1f);
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_c);
  *param_1 = &PTR_FUN_0055361c_1_00926d30;
  return param_1;
}

// ---- FUN_0055361c  @ 0x55361c
undefined4 * FUN_0055361c(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0055361c_1_00926d30;
  FUN_0054f8dc();
  return param_1;
}

// ---- FUN_00553634  @ 0x553634
void * FUN_00553634(void *param_1)

{
  FUN_0055361c();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_00553648  @ 0x553648
undefined4 FUN_00553648(int param_1)

{
  undefined4 uVar1;
  int iVar2;
  undefined1 auStack_20 [20];
  
  iVar2 = *(int *)(param_1 + 0xc);
  if (*(int *)(iVar2 + 0xa8) == 0 && *(int *)(iVar2 + 0xac) == 0) {
    FUN_005166ae(3,"StopAdvertising called without an active StartAdvertisingOperation ");
  }
  else {
    *(undefined4 *)(iVar2 + 0xa8) = 0;
    *(undefined4 *)(iVar2 + 0xac) = 0;
  }
  FUN_00547b10(auStack_20,&DAT_009618a4,&DAT_00962d24,"Connections",
               "Lcom/google/android/gms/nearby/connection/Connections;");
  uVar1 = FUN_00548bac(*(int *)(param_1 + 0xc) + 0x90);
  FUN_00548d90(auStack_20,"stopAdvertising","(Lcom/google/android/gms/common/api/GoogleApiClient;)V"
               ,uVar1);
  FUN_00548ab0(auStack_20);
  return 1;
}

// ---- FUN_005536e8  @ 0x5536e8
undefined4 * FUN_005536e8(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_005536e8_1_00926d50;
  FUN_007c5914(param_1 + 5);
  FUN_0054f8dc(param_1);
  return param_1;
}

// ---- FUN_00553708  @ 0x553708
void * FUN_00553708(void *param_1)

{
  FUN_005536e8();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0055371c  @ 0x55371c
undefined4 * FUN_0055371c(undefined4 *param_1,undefined4 *param_2,undefined4 param_3)

{
  bool bVar1;
  undefined4 uVar2;
  int *piVar3;
  int local_14;
  undefined4 uStack_10;
  
  local_14 = param_2[1];
  uVar2 = *param_2;
  if (local_14 != 0) {
    piVar3 = (int *)(local_14 + 4);
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
  *param_1 = &PTR_FUN_0054f8dc_1_00926bd0;
  param_1[3] = uVar2;
  param_1[4] = local_14;
  if (local_14 != 0) {
    piVar3 = (int *)(local_14 + 4);
    DataMemoryBarrier(0x1f);
    do {
      ExclusiveAccess(piVar3);
      bVar1 = (bool)hasExclusiveAccess(piVar3);
    } while (!bVar1);
    *piVar3 = *piVar3 + 1;
    DataMemoryBarrier(0x1f);
  }
  uStack_10 = param_3;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_14);
  *param_1 = &PTR_FUN_005536e8_1_00926d50;
  FUN_007c64e8(param_1 + 5,param_3);
  return param_1;
}

// ---- FUN_005537a4  @ 0x5537a4
undefined4 FUN_005537a4(int param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined1 auStack_38 [16];
  undefined1 auStack_28 [20];
  
  FUN_00547b10(auStack_38,&DAT_009618a4,&DAT_00962d24,"Connections",
               "Lcom/google/android/gms/nearby/connection/Connections;");
  uVar1 = FUN_00548bac(*(int *)(param_1 + 0xc) + 0x90);
  FUN_0054942c(auStack_28,param_1 + 0x14,0);
  uVar2 = FUN_00548bac(auStack_28);
  FUN_00548d90(auStack_38,"stopDiscovery",
               "(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V",uVar1,
               uVar2);
  FUN_00548ab0(auStack_28);
  FUN_00548ab0(auStack_38);
  return 1;
}

// ---- FUN_00553844  @ 0x553844
undefined4 * FUN_00553844(undefined4 *param_1,undefined4 *param_2)

{
  bool bVar1;
  undefined4 uVar2;
  int *piVar3;
  int local_c;
  
  uVar2 = *param_2;
  local_c = param_2[1];
  if (local_c != 0) {
    piVar3 = (int *)(local_c + 4);
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
  *param_1 = &PTR_FUN_0054f8dc_1_00926bd0;
  param_1[3] = uVar2;
  param_1[4] = local_c;
  if (local_c != 0) {
    piVar3 = (int *)(local_c + 4);
    DataMemoryBarrier(0x1f);
    do {
      ExclusiveAccess(piVar3);
      bVar1 = (bool)hasExclusiveAccess(piVar3);
    } while (!bVar1);
    *piVar3 = *piVar3 + 1;
    DataMemoryBarrier(0x1f);
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_c);
  *param_1 = &PTR_FUN_005538b8_1_00926d70;
  return param_1;
}

// ---- FUN_005538b8  @ 0x5538b8
undefined4 * FUN_005538b8(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_005538b8_1_00926d70;
  FUN_0054f8dc();
  return param_1;
}

// ---- FUN_005538d0  @ 0x5538d0
void * FUN_005538d0(void *param_1)

{
  FUN_005538b8();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_005538e4  @ 0x5538e4
undefined4 FUN_005538e4(int param_1)

{
  undefined4 uVar1;
  int iVar2;
  undefined1 auStack_20 [16];
  
  FUN_00547b10(auStack_20,&DAT_009618a4,&DAT_00962d24,"Connections",
               "Lcom/google/android/gms/nearby/connection/Connections;");
  uVar1 = FUN_00548bac(*(int *)(param_1 + 0xc) + 0x90);
  FUN_00548d90(auStack_20,"stopAllEndpoints",
               "(Lcom/google/android/gms/common/api/GoogleApiClient;)V",uVar1);
  FUN_00548ab0(auStack_20);
  iVar2 = FUN_00545484(*(undefined4 *)(param_1 + 0xc),0x546af1);
  if (iVar2 != 0) {
    FUN_005456f8(*(undefined4 *)(param_1 + 0xc),0x546af1);
  }
  iVar2 = *(int *)(param_1 + 0xc);
  *(undefined4 *)(iVar2 + 0xa8) = 0;
  *(undefined4 *)(iVar2 + 0xac) = 0;
  FUN_005456f8(2,0x545bc1);
  FUN_005456f8(2,0x5465ed);
  FUN_005456f8(2,0x5465b1);
  FUN_005456f8(2,0x5468d5);
  return 1;
}

// ---- FUN_00553a70  @ 0x553a70
void FUN_00553a70(int param_1)

{
  if (*(int *)(param_1 + 8) == 0) {
    param_1 = FUN_007c4d54();
  }
  (**(code **)(param_1 + 0xc))();
  return;
}

// ---- FUN_00553a80  @ 0x553a80
undefined4 FUN_00553a80(void)

{
  return 0;
}

// ---- FUN_00553a9c  @ 0x553a9c
void FUN_00553a9c(int *param_1)

{
  if (param_1 != (int *)0x0) {
    (**(code **)(*param_1 + 4))();
  }
  return;
}

// ---- FUN_00553aa8  @ 0x553aa8
undefined4 * FUN_00553aa8(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_00553aa8_1_00926d90;
  std::_Function_base::~_Function_base((_Function_base *)(param_1 + 0x10));
  std::_Function_base::~_Function_base((_Function_base *)(param_1 + 0xc));
  FUN_00533468(param_1);
  return param_1;
}

// ---- FUN_00553ad0  @ 0x553ad0
void * FUN_00553ad0(void *param_1)

{
  FUN_00553aa8();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_00553b28  @ 0x553b28
undefined4 *
FUN_00553b28(undefined4 *param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5,undefined4 param_6)

{
  undefined4 uVar1;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_5c [4];
  undefined4 local_58;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_54 [4];
  undefined4 local_50;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_4c [4];
  _Function_base a_Stack_48 [16];
  _Function_base a_Stack_38 [20];
  
  uVar1 = *param_2;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_5c,(__shared_count *)(param_2 + 1));
  FUN_0051a104(a_Stack_48,param_6);
  local_58 = uVar1;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_54,(__shared_count *)a_Stack_5c);
  local_50 = local_58;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_4c,(__shared_count *)a_Stack_54);
  param_1[1] = 0;
  *param_1 = &PTR_FUN_005107b4_1_00924458;
  param_1[2] = 0;
  param_1[3] = local_50;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(param_1 + 4),
             (__shared_count *)a_Stack_4c);
  param_1[6] = 0;
  param_1[7] = 0;
  param_1[8] = 0;
  param_1[9] = 0;
  param_1[8] = 0;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_4c);
  *param_1 = &PTR_FUN_00533468_1_00925100;
  param_1[10] = local_58;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(param_1 + 0xb),
             (__shared_count *)a_Stack_54);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_54);
  *param_1 = &PTR_FUN_00553aa8_1_00926d90;
  FUN_0051a104(param_1 + 0xc,a_Stack_48);
  std::_Function_base::~_Function_base(a_Stack_38);
  std::_Function_base::~_Function_base(a_Stack_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_5c);
  param_1[0x14] = param_3;
  *param_1 = &PTR_FUN_00553c68_1_00926de8;
  param_1[0x15] = param_4;
  param_1[0x16] = 0;
  param_1[0x17] = 0;
  param_1[0x18] = 0;
  param_1[0x19] = param_5;
  return param_1;
}

// ---- FUN_00553c68  @ 0x553c68
undefined4 * FUN_00553c68(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_00553c68_1_00926de8;
  std::vector<gpg::Player,std::allocator<gpg::Player>>::~vector
            ((vector<gpg::Player,std::allocator<gpg::Player>> *)(param_1 + 0x16));
  FUN_00553aa8(param_1);
  return param_1;
}

// ---- FUN_00553c88  @ 0x553c88
void * FUN_00553c88(void *param_1)

{
  FUN_00553c68();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_00553c9a  @ 0x553c9a
undefined4 * FUN_00553c9a(undefined4 *param_1,int param_2)

{
  undefined4 uVar1;
  undefined4 local_1c;
  undefined4 local_18;
  undefined4 local_14;
  
  FUN_005108ea(*(undefined4 *)(param_2 + 0x28));
  uVar1 = thunk_FUN_00529dec();
  local_1c = 0;
  local_18 = 0;
  local_14 = 0;
  *param_1 = uVar1;
  std::_Vector_base<gpg::Player,std::allocator<gpg::Player>>::_Vector_base
            ((_Vector_base<gpg::Player,std::allocator<gpg::Player>> *)(param_1 + 1),
             (_Vector_base *)&local_1c);
  std::vector<gpg::Player,std::allocator<gpg::Player>>::~vector
            ((vector<gpg::Player,std::allocator<gpg::Player>> *)&local_1c);
  return param_1;
}

// ---- FUN_00553de0  @ 0x553de0
undefined4
FUN_00553de0(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 *param_4)

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
  local_3c = 0x554405;
  local_40 = (code *)0x553ae3;
  FUN_00533700(a_Stack_38,(_Function_base *)local_48);
  pvVar2 = operator_new(0x14);
  FUN_0053372c(pvVar2,a_Stack_38);
  local_64 = pvVar2;
  FUN_005453a8(auStack_58,param_2,param_3,&local_64);
  if (local_64 != (void *)0x0) {
    FUN_00553a9c();
  }
  std::_Function_base::~_Function_base(a_Stack_38);
  std::_Function_base::~_Function_base((_Function_base *)local_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_5c);
  FUN_00548b30(param_1,auStack_58);
  FUN_00548ab0(auStack_58);
  return param_1;
}

// ---- FUN_00553ec0  @ 0x553ec0
undefined4 FUN_00553ec0(undefined4 param_1,int param_2)

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
  if (local_34 == 0) goto LAB_00553edc;
  piVar2 = (int *)(local_34 + 4);
  unaff_r4 = &local_28;
  local_28 = *(int *)(local_34 + 4);
  while( true ) {
    iVar3 = local_28;
    if (local_28 == 0) {
LAB_00553edc:
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
  FUN_00553de0(unaff_r4,0,0x5463d1,&local_30,iVar3);
  FUN_00548b30(param_1,unaff_r4);
  FUN_00548ab0(unaff_r4);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_2c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_34);
  return param_1;
}

// ---- FUN_00553f78  @ 0x553f78
void FUN_00553f78(int param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined1 auStack_50 [16];
  undefined1 auStack_40 [16];
  undefined1 auStack_30 [20];
  
  if (*(int *)(param_1 + 0x54) == 0) {
    FUN_00547b10(auStack_50,&DAT_00961324,&DAT_00962324,"Players",
                 "Lcom/google/android/gms/games/Players;");
    uVar2 = *(undefined4 *)(param_1 + 0x50);
    uVar1 = FUN_00548bac(*(int *)(param_1 + 0x28) + 0xf4);
    FUN_0054968c(auStack_40,auStack_50,&DAT_00963024,uVar2,
                 "(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/common/api/PendingResult;"
                 ,uVar1,*(int *)(param_1 + 100) == 2);
    FUN_00553ec0(auStack_30,param_1);
    uVar1 = FUN_00548bac(auStack_30);
    FUN_00548d90(auStack_40,"setResultCallback",
                 "(Lcom/google/android/gms/common/api/ResultCallback;)V",uVar1);
  }
  else {
    FUN_00547b10(auStack_50,&DAT_00961324,&DAT_00962324,"Players",
                 "Lcom/google/android/gms/games/Players;");
    uVar2 = *(undefined4 *)(param_1 + 0x50);
    uVar1 = FUN_00548bac(*(int *)(param_1 + 0x28) + 0xf4);
    FUN_0054968c(auStack_40,auStack_50,&DAT_00963024,uVar2,
                 "(Lcom/google/android/gms/common/api/GoogleApiClient;IZ)Lcom/google/android/gms/common/api/PendingResult;"
                 ,uVar1,0x19,*(int *)(param_1 + 100) == 2);
    FUN_00553ec0(auStack_30,param_1);
    uVar1 = FUN_00548bac(auStack_30);
    FUN_00548d90(auStack_40,"setResultCallback",
                 "(Lcom/google/android/gms/common/api/ResultCallback;)V",uVar1);
  }
  FUN_00548ab0(auStack_30);
  FUN_00548ab0(auStack_40);
  FUN_00548ab0(auStack_50);
  return;
}

// ---- FUN_005540c4  @ 0x5540c4
void FUN_005540c4(int param_1,undefined4 param_2)

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
  FUN_00529dec(iVar1);
  return;
}

// ---- FUN_00554144  @ 0x554144
void FUN_00554144(int param_1,undefined4 param_2)

{
  bool bVar1;
  int iVar2;
  undefined4 uVar3;
  int iVar4;
  Player *this;
  undefined4 uVar5;
  undefined1 auStack_7c [4];
  undefined4 local_78;
  undefined4 local_74;
  Player aPStack_70 [8];
  undefined1 auStack_68 [16];
  undefined1 auStack_58 [16];
  undefined4 local_48;
  undefined4 local_44 [3];
  undefined4 local_38;
  undefined4 local_34;
  undefined4 local_30;
  undefined4 local_2c;
  
  iVar2 = FUN_00548c48(param_2);
  if (iVar2 != 0) {
    local_38 = 0xfffffffe;
    local_34 = 0;
    local_30 = 0;
    local_2c = 0;
    FUN_0051a9f0(param_1 + 0x30,&local_38);
    std::vector<gpg::Player,std::allocator<gpg::Player>>::~vector
              ((vector<gpg::Player,std::allocator<gpg::Player>> *)&local_34);
    return;
  }
  uVar3 = FUN_005540c4(param_1,param_2);
  FUN_0054932c(&local_38,param_2,&DAT_00961d24);
  FUN_0054968c(auStack_68,&local_38,&DAT_009623a4,"getPlayers",
               "()Lcom/google/android/gms/games/PlayerBuffer;");
  FUN_00548ab0(&local_38);
  iVar2 = gpg::IsError(uVar3);
  if (iVar2 == 0) {
    iVar4 = FUN_00548d1c(auStack_68,"getCount");
    bVar1 = false;
    for (iVar2 = *(int *)(param_1 + 0x5c) - *(int *)(param_1 + 0x58) >> 3; iVar2 < iVar4;
        iVar2 = iVar2 + 1) {
      FUN_0054968c(&local_38,auStack_68,&DAT_009621a4,&DAT_0080598d,
                   "(I)Lcom/google/android/gms/games/Player;",iVar2);
      FUN_007c6a60(auStack_7c,&DAT_00801f93,auStack_58);
      FUN_005553d4(&local_78,&local_38,auStack_7c);
      local_48 = local_78;
      local_44[0] = local_74;
      local_74 = 0;
      local_78 = 0;
      gpg::Player::Player(aPStack_70,&local_48);
      this = *(Player **)(param_1 + 0x5c);
      if (this == *(Player **)(param_1 + 0x60)) {
        std::vector<gpg::Player,std::allocator<gpg::Player>>::_M_emplace_back_aux<gpg::Player>
                  ((vector<gpg::Player,std::allocator<gpg::Player>> *)(param_1 + 0x58),aPStack_70);
      }
      else {
        if (this != (Player *)0x0) {
          gpg::Player::Player(this,aPStack_70);
        }
        *(int *)(param_1 + 0x5c) = *(int *)(param_1 + 0x5c) + 8;
      }
      gpg::Player::~Player(aPStack_70);
      std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
                ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_44);
      std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
                ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_74);
      FUN_007c5914(auStack_7c);
      FUN_00548ab0(&local_38);
      bVar1 = true;
    }
    FUN_00548de4(auStack_68,"close");
    if ((*(int *)(param_1 + 0x54) != 0) && (bVar1)) {
      FUN_00547b10(auStack_58,&DAT_00961324,&DAT_00962324,"Players",
                   "Lcom/google/android/gms/games/Players;");
      uVar5 = *(undefined4 *)(param_1 + 0x54);
      uVar3 = FUN_00548bac(*(int *)(param_1 + 0x28) + 0xf4);
      FUN_0054968c(&local_48,auStack_58,&DAT_00963024,uVar5,
                   "(Lcom/google/android/gms/common/api/GoogleApiClient;I)Lcom/google/android/gms/common/api/PendingResult;"
                   ,uVar3,0x19);
      FUN_00553ec0(&local_38,param_1);
      uVar3 = FUN_00548bac(&local_38);
      FUN_00548d90(&local_48,"setResultCallback",
                   "(Lcom/google/android/gms/common/api/ResultCallback;)V",uVar3);
      FUN_00548ab0(&local_38);
      FUN_00548ab0(&local_48);
      FUN_00548ab0(auStack_58);
      goto LAB_0055434a;
    }
    local_38 = uVar3;
    std::_Vector_base<gpg::Player,std::allocator<gpg::Player>>::_Vector_base
              ((_Vector_base<gpg::Player,std::allocator<gpg::Player>> *)&local_34,
               (_Vector_base *)(param_1 + 0x58));
    FUN_0051a9f0(param_1 + 0x30,&local_38);
  }
  else {
    FUN_00548de4(auStack_68,"close");
    local_34 = 0;
    local_30 = 0;
    local_2c = 0;
    local_38 = uVar3;
    FUN_0051a9f0(param_1 + 0x30,&local_38);
  }
  std::vector<gpg::Player,std::allocator<gpg::Player>>::~vector
            ((vector<gpg::Player,std::allocator<gpg::Player>> *)&local_34);
LAB_0055434a:
  FUN_00548ab0(auStack_68);
  return;
}

// ---- FUN_00554404  @ 0x554404
void FUN_00554404(undefined4 *param_1)

{
  undefined4 uVar1;
  undefined1 auStack_30 [16];
  undefined1 auStack_20 [16];
  
  param_1 = (undefined4 *)*param_1;
  FUN_00548b30(auStack_30);
  uVar1 = *param_1;
  FUN_00548b30(auStack_20,auStack_30);
  FUN_00554144(uVar1,auStack_20);
  FUN_00548ab0(auStack_20);
  FUN_00548ab0(auStack_30);
  return;
}

// ---- FUN_00554488  @ 0x554488
undefined4 * FUN_00554488(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_00554488_1_00926e40;
  FUN_00519dfe(param_1 + 0xc);
  FUN_00533468(param_1);
  return param_1;
}

// ---- FUN_005544a8  @ 0x5544a8
void * FUN_005544a8(void *param_1)

{
  FUN_00554488();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_005544bc  @ 0x5544bc
undefined4 * FUN_005544bc(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_005544bc_1_00926e98;
  FUN_00554488();
  return param_1;
}

// ---- FUN_005544d4  @ 0x5544d4
void * FUN_005544d4(void *param_1)

{
  FUN_005544bc();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_005544e8  @ 0x5544e8
undefined4 * FUN_005544e8(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_005544e8_1_00926ef8;
  FUN_007c5914(param_1 + 0x14);
  FUN_005544bc(param_1);
  return param_1;
}

// ---- FUN_00554508  @ 0x554508
void * FUN_00554508(void *param_1)

{
  FUN_005544e8();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_00554560  @ 0x554560
int FUN_00554560(int param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  *(undefined4 *)(param_1 + 8) = 0;
  if (*(int *)(param_2 + 8) != 0) {
    *(undefined4 *)(param_1 + 0xc) = *(undefined4 *)(param_2 + 0xc);
    *(undefined4 *)(param_1 + 8) = *(undefined4 *)(param_2 + 8);
    (**(code **)(param_2 + 8))(param_1,param_2,2,*(code **)(param_2 + 8),param_4);
  }
  std::function<void(gpg::PlayerManager::FetchResponse_const&)>::function
            ((function<void(gpg::PlayerManager::FetchResponse_const&)> *)(param_1 + 0x10),
             (function *)(param_2 + 0x10));
  return param_1;
}

// ---- FUN_0055459c  @ 0x55459c
undefined4 *
FUN_0055459c(undefined4 *param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4)

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
  FUN_00554560(auStack_68,param_3);
  local_78 = uVar1;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_74,(__shared_count *)a_Stack_7c);
  FUN_00554560(auStack_48,auStack_68);
  local_70 = local_78;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_6c,(__shared_count *)a_Stack_74);
  FUN_00533528(param_1,&local_70);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_6c);
  *param_1 = &PTR_FUN_00554488_1_00926e40;
  FUN_00554560(param_1 + 0xc,auStack_48);
  FUN_00519dfe(auStack_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_74);
  *param_1 = &PTR_FUN_005544bc_1_00926e98;
  FUN_00519dfe(auStack_68);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_7c);
  *param_1 = &PTR_FUN_005544e8_1_00926ef8;
  FUN_007c64e8(param_1 + 0x14,param_4);
  return param_1;
}

// ---- FUN_00554688  @ 0x554688
void FUN_00554688(int *param_1,undefined4 param_2)

{
  int iVar1;
  undefined4 local_24;
  Player aPStack_20 [12];
  
  iVar1 = FUN_00548c48(param_2);
  if (iVar1 == 0) {
    (**(code **)(*param_1 + 0x50))(&local_24,param_1,param_2);
    FUN_0051a654(param_1 + 0xc,&local_24);
  }
  else {
    local_24 = 0xfffffffe;
    gpg::Player::Player(aPStack_20);
    FUN_0051a654(param_1 + 0xc,&local_24);
  }
  gpg::Player::~Player(aPStack_20);
  return;
}

// ---- FUN_00554710  @ 0x554710
undefined4
FUN_00554710(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 *param_4)

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
  local_3c = 0x554c49;
  local_40 = (code *)0x55451b;
  FUN_00533700(a_Stack_38,(_Function_base *)local_48);
  pvVar2 = operator_new(0x14);
  FUN_0053372c(pvVar2,a_Stack_38);
  local_64 = pvVar2;
  FUN_005453a8(auStack_58,param_2,param_3,&local_64);
  if (local_64 != (void *)0x0) {
    FUN_0054b6f8();
  }
  std::_Function_base::~_Function_base(a_Stack_38);
  std::_Function_base::~_Function_base((_Function_base *)local_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_5c);
  FUN_00548b30(param_1,auStack_58);
  FUN_00548ab0(auStack_58);
  return param_1;
}

// ---- FUN_005547f0  @ 0x5547f0
undefined4 FUN_005547f0(undefined4 param_1,int param_2)

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
  if (local_34 == 0) goto LAB_0055480c;
  piVar2 = (int *)(local_34 + 4);
  unaff_r4 = &local_28;
  local_28 = *(int *)(local_34 + 4);
  while( true ) {
    iVar3 = local_28;
    if (local_28 == 0) {
LAB_0055480c:
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
  FUN_00554710(unaff_r4,0,0x5463d1,&local_30,iVar3);
  FUN_00548b30(param_1,unaff_r4);
  FUN_00548ab0(unaff_r4);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_2c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_34);
  return param_1;
}

// ---- FUN_005548a8  @ 0x5548a8
void FUN_005548a8(int param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined1 auStack_58 [16];
  undefined1 auStack_48 [16];
  undefined1 auStack_38 [16];
  undefined1 auStack_28 [16];
  
  FUN_00547b10(auStack_58,&DAT_00961324,&DAT_00962324,"Players",
               "Lcom/google/android/gms/games/Players;");
  uVar1 = FUN_00548bac(*(int *)(param_1 + 0x28) + 0xf4);
  FUN_0054942c(auStack_48,param_1 + 0x50,0);
  uVar2 = FUN_00548bac(auStack_48);
  FUN_0054968c(auStack_38,auStack_58,&DAT_00963024,"loadPlayer",
               "(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;"
               ,uVar1,uVar2);
  FUN_005547f0(auStack_28,param_1);
  uVar1 = FUN_00548bac(auStack_28);
  FUN_00548d90(auStack_38,"setResultCallback",
               "(Lcom/google/android/gms/common/api/ResultCallback;)V",uVar1);
  FUN_00548ab0(auStack_28);
  FUN_00548ab0(auStack_38);
  FUN_00548ab0(auStack_48);
  FUN_00548ab0(auStack_58);
  return;
}

// ---- FUN_00554990  @ 0x554990
void FUN_00554990(int param_1,undefined4 param_2)

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
  FUN_00529dec(iVar1);
  return;
}

// ---- FUN_00554a10  @ 0x554a10
undefined4 * FUN_00554a10(undefined4 *param_1,int param_2,undefined4 param_3)

{
  undefined4 uVar1;
  int iVar2;
  int iVar3;
  undefined4 *puVar4;
  int iVar5;
  void *local_68;
  undefined4 local_64;
  undefined4 local_60;
  undefined4 local_5c;
  undefined4 local_58;
  undefined4 local_54;
  Player aPStack_50 [8];
  undefined1 auStack_48 [16];
  undefined4 local_38;
  Player aPStack_34 [16];
  
  uVar1 = FUN_00554990(param_2,param_3);
  puVar4 = &local_38;
  FUN_0054932c(puVar4,param_3,&DAT_00961d24);
  FUN_0054968c(auStack_48,puVar4,&DAT_009623a4,"getPlayers",
               "()Lcom/google/android/gms/games/PlayerBuffer;");
  FUN_00548ab0(puVar4);
  iVar2 = gpg::IsError(uVar1);
  if (iVar2 == 0) {
    iVar2 = FUN_00548d1c(auStack_48,"getCount");
    if (1 < iVar2) {
      FUN_005166ae(3,
                   "GmsCore returned multiple players from loadPlayer. Attempting to find requested player."
                  );
    }
    for (iVar5 = 0; iVar5 < iVar2; iVar5 = iVar5 + 1) {
      FUN_0054968c(puVar4,auStack_48,&DAT_009621a4,&DAT_0080598d,
                   "(I)Lcom/google/android/gms/games/Player;",iVar5);
      FUN_00549104(&local_68,puVar4,"getPlayerId");
      if ((*(size_t *)((int)local_68 + -0xc) == *(size_t *)((int)*(void **)(param_2 + 0x50) + -0xc))
         && (iVar3 = memcmp(local_68,*(void **)(param_2 + 0x50),*(size_t *)((int)local_68 + -0xc)),
            iVar3 == 0)) {
        memset(&local_54,0,0xc);
        local_54 = 1;
        FUN_005553d4(&local_64,puVar4,&local_68);
        local_5c = local_64;
        local_58 = local_60;
        local_60 = 0;
        local_64 = 0;
        gpg::Player::Player(aPStack_50,&local_5c);
        std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
                  ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_58);
        std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
                  ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_60);
        FUN_00548de4(auStack_48,"close");
        *param_1 = local_54;
        gpg::Player::Player((Player *)(param_1 + 1),aPStack_50);
        gpg::Player::~Player(aPStack_50);
        FUN_007c5914(&local_68);
        FUN_00548ab0(puVar4);
        goto LAB_00554c02;
      }
      FUN_007c5914(&local_68);
      FUN_00548ab0(puVar4);
    }
    FUN_005166ae(4,"Requested ID not returned from GmsCore.");
    FUN_00548de4(auStack_48,"close");
    local_38 = 0xfffffffe;
    gpg::Player::Player(aPStack_34);
    *param_1 = local_38;
    gpg::Player::Player((Player *)(param_1 + 1),aPStack_34);
  }
  else {
    FUN_00548de4(auStack_48,"close");
    puVar4 = &local_54;
    local_54 = uVar1;
    gpg::Player::Player(aPStack_50);
    *param_1 = local_54;
    gpg::Player::Player((Player *)(param_1 + 1),aPStack_50);
  }
  gpg::Player::~Player((Player *)(puVar4 + 1));
LAB_00554c02:
  FUN_00548ab0(auStack_48);
  return param_1;
}

// ---- FUN_00554c48  @ 0x554c48
void FUN_00554c48(undefined4 *param_1)

{
  undefined4 uVar1;
  undefined1 auStack_30 [16];
  undefined1 auStack_20 [16];
  
  param_1 = (undefined4 *)*param_1;
  FUN_00548b30(auStack_30);
  uVar1 = *param_1;
  FUN_00548b30(auStack_20,auStack_30);
  FUN_00554688(uVar1,auStack_20);
  FUN_00548ab0(auStack_20);
  FUN_00548ab0(auStack_30);
  return;
}

// ---- FUN_00554ccc  @ 0x554ccc
undefined4 * FUN_00554ccc(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_00554ccc_1_00926f58;
  FUN_00519db2(param_1 + 0xc);
  FUN_00533468(param_1);
  return param_1;
}

// ---- FUN_00554cec  @ 0x554cec
void * FUN_00554cec(void *param_1)

{
  FUN_00554ccc();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_00554d00  @ 0x554d00
undefined4 * FUN_00554d00(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_00554d00_1_00926fb0;
  FUN_00554ccc();
  return param_1;
}

// ---- FUN_00554d18  @ 0x554d18
void * FUN_00554d18(void *param_1)

{
  FUN_00554d00();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_00554d2c  @ 0x554d2c
undefined4 * FUN_00554d2c(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_00554d2c_1_00927010;
  FUN_00554d00();
  return param_1;
}

// ---- FUN_00554d44  @ 0x554d44
void * FUN_00554d44(void *param_1)

{
  FUN_00554d2c();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_00554d58  @ 0x554d58
undefined4 * FUN_00554d58(undefined4 *param_1,undefined4 param_2,undefined4 param_3)

{
  undefined1 auStack_3c [4];
  undefined1 auStack_38 [4];
  undefined4 local_34;
  undefined4 local_30;
  undefined4 local_2c;
  undefined4 local_28;
  undefined4 local_24;
  Player aPStack_20 [8];
  
  local_24 = 1;
  FUN_007c6a60(auStack_38,&DAT_00801f93,auStack_3c);
  FUN_005553d4(&local_34,param_3,auStack_38);
  local_2c = local_34;
  local_28 = local_30;
  local_30 = 0;
  local_34 = 0;
  gpg::Player::Player(aPStack_20,&local_2c);
  *param_1 = local_24;
  gpg::Player::Player((Player *)(param_1 + 1),aPStack_20);
  gpg::Player::~Player(aPStack_20);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_28);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_30);
  FUN_007c5914(auStack_38);
  return param_1;
}

// ---- FUN_00554dec  @ 0x554dec
int FUN_00554dec(int param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  *(undefined4 *)(param_1 + 8) = 0;
  if (*(int *)(param_2 + 8) != 0) {
    *(undefined4 *)(param_1 + 0xc) = *(undefined4 *)(param_2 + 0xc);
    *(undefined4 *)(param_1 + 8) = *(undefined4 *)(param_2 + 8);
    (**(code **)(param_2 + 8))(param_1,param_2,2,*(code **)(param_2 + 8),param_4);
  }
  std::function<void(gpg::PlayerManager::FetchSelfResponse_const&)>::function
            ((function<void(gpg::PlayerManager::FetchSelfResponse_const&)> *)(param_1 + 0x10),
             (function *)(param_2 + 0x10));
  return param_1;
}

// ---- FUN_00554e28  @ 0x554e28
undefined4 * FUN_00554e28(undefined4 *param_1,undefined4 param_2,undefined4 param_3)

{
  bool bVar1;
  int *piVar2;
  undefined1 auStack_80 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_7c [4];
  undefined1 auStack_78 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_74 [4];
  undefined4 local_70;
  int local_6c;
  undefined4 local_68;
  int local_64;
  undefined1 auStack_60 [32];
  undefined1 auStack_40 [36];
  
  FUN_0053470e(auStack_80);
  FUN_00554dec(auStack_60,param_3);
  FUN_0053470e(auStack_78,auStack_80);
  FUN_00554dec(auStack_40,auStack_60);
  FUN_0053470e(&local_70,auStack_78);
  local_68 = local_70;
  local_64 = local_6c;
  if (local_6c != 0) {
    piVar2 = (int *)(local_6c + 4);
    DataMemoryBarrier(0x1f);
    do {
      ExclusiveAccess(piVar2);
      bVar1 = (bool)hasExclusiveAccess(piVar2);
    } while (!bVar1);
    *piVar2 = *piVar2 + 1;
    DataMemoryBarrier(0x1f);
  }
  param_1[1] = 0;
  param_1[2] = 0;
  *param_1 = &PTR_FUN_005107b4_1_00924458;
  param_1[3] = local_70;
  param_1[4] = local_6c;
  if (local_6c != 0) {
    piVar2 = (int *)(local_6c + 4);
    DataMemoryBarrier(0x1f);
    do {
      ExclusiveAccess(piVar2);
      bVar1 = (bool)hasExclusiveAccess(piVar2);
    } while (!bVar1);
    *piVar2 = *piVar2 + 1;
    DataMemoryBarrier(0x1f);
  }
  param_1[6] = 0;
  param_1[7] = 0;
  param_1[8] = 0;
  param_1[9] = 0;
  param_1[8] = 0;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_64);
  *param_1 = &PTR_FUN_00533468_1_00925100;
  FUN_0053470e(param_1 + 10,&local_70);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_6c);
  *param_1 = &PTR_FUN_00554ccc_1_00926f58;
  FUN_00554dec(param_1 + 0xc,auStack_40);
  FUN_00519db2(auStack_40);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_74);
  *param_1 = &PTR_FUN_00554d00_1_00926fb0;
  FUN_00519db2(auStack_60);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_7c);
  *param_1 = &PTR_FUN_00554d2c_1_00927010;
  return param_1;
}

// ---- FUN_00554f64  @ 0x554f64
void FUN_00554f64(int *param_1,undefined4 param_2)

{
  int iVar1;
  undefined4 local_24;
  Player aPStack_20 [12];
  
  iVar1 = FUN_00548c48(param_2);
  if (iVar1 == 0) {
    (**(code **)(*param_1 + 0x50))(&local_24,param_1,param_2);
    FUN_0051a40c(param_1 + 0xc,&local_24);
  }
  else {
    local_24 = 0xfffffffe;
    gpg::Player::Player(aPStack_20);
    FUN_0051a40c(param_1 + 0xc,&local_24);
  }
  gpg::Player::~Player(aPStack_20);
  return;
}

// ---- FUN_005550bc  @ 0x5550bc
undefined4 * FUN_005550bc(undefined4 *param_1)

{
  *param_1 = &PTR___Sp_counted_base_1_009242b8;
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_00555124  @ 0x555124
void FUN_00555124(int param_1)

{
  void *pvVar1;
  
  pvVar1 = *(void **)(param_1 + 0xc);
  FUN_007c5914((int)pvVar1 + 0x30);
  gpg::PlayerLevel::~PlayerLevel((PlayerLevel *)((int)pvVar1 + 0x18));
  gpg::PlayerLevel::~PlayerLevel((PlayerLevel *)((int)pvVar1 + 0x10));
  FUN_007c5914((int)pvVar1 + 0xc);
  FUN_007c5914((int)pvVar1 + 8);
  FUN_007c5914((int)pvVar1 + 4);
  FUN_007c5914(pvVar1);
  operator_delete(pvVar1);
  return;
}

// ---- FUN_00555168  @ 0x555168
undefined4 *
FUN_00555168(undefined4 *param_1,undefined4 *param_2,undefined4 *param_3,undefined4 *param_4)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined4 *local_1c;
  undefined4 *puStack_18;
  
  *param_1 = 0;
  param_1[1] = 0;
  local_1c = param_2;
  puStack_18 = param_3;
  puVar1 = operator_new(0x18);
  *param_1 = puVar1;
  uVar2 = *param_4;
  uVar3 = param_4[1];
  uVar4 = *param_3;
  uVar5 = param_3[1];
  if (puVar1 != (undefined4 *)0x0) {
    *puVar1 = *param_2;
    puVar1[2] = uVar4;
    puVar1[3] = uVar5;
    puVar1[4] = uVar2;
    puVar1[5] = uVar3;
  }
  uVar2 = *param_1;
  local_1c = (undefined4 *)0x0;
  puVar1 = operator_new(0x14);
  if (puVar1 != (undefined4 *)0x0) {
    puVar1[1] = 1;
    puVar1[2] = 1;
    puVar1[3] = uVar2;
    *puVar1 = &PTR_LAB_005550a8_1_00927070;
  }
  local_1c = (undefined4 *)param_1[1];
  param_1[1] = puVar1;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_1c);
  return param_1;
}

// ---- FUN_005551f0  @ 0x5551f0
undefined4 * FUN_005551f0(undefined4 *param_1,undefined4 param_2)

{
  int iVar1;
  undefined4 local_2c;
  undefined8 local_28;
  undefined8 local_20;
  undefined4 local_18;
  undefined4 local_14;
  
  iVar1 = FUN_00548c48(param_2);
  if (iVar1 == 0) {
    local_2c = FUN_00548d1c(param_2,"getLevelNumber");
    local_28 = FUN_00548d84(param_2,"getMinXp");
    local_20 = FUN_00548d84(param_2,"getMaxXp");
    FUN_00555168(&local_18,&local_2c,&local_28,&local_20);
  }
  else {
    local_18 = 0;
    local_14 = 0;
  }
  *param_1 = local_18;
  param_1[1] = local_14;
  local_14 = 0;
  local_18 = 0;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_14);
  return param_1;
}

// ---- FUN_00555274  @ 0x555274
void FUN_00555274(undefined4 param_1,undefined4 *param_2,undefined4 param_3,undefined4 *param_4,
                 undefined4 *param_5,undefined4 *param_6,PlayerLevel *param_7,PlayerLevel *param_8,
                 undefined4 *param_9,undefined4 *param_10,undefined4 *param_11)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined1 *local_4c;
  undefined1 *local_48;
  undefined1 *local_44;
  undefined1 *local_40;
  undefined1 *local_3c;
  PlayerLevel aPStack_38 [8];
  PlayerLevel aPStack_30 [12];
  
  FUN_007c64e8(&local_4c,param_3);
  local_48 = (undefined1 *)*param_4;
  *param_4 = &DAT_00972528;
  local_44 = (undefined1 *)*param_5;
  *param_5 = &DAT_00972528;
  local_40 = (undefined1 *)*param_6;
  *param_6 = &DAT_00972528;
  gpg::PlayerLevel::PlayerLevel(aPStack_38,param_7);
  gpg::PlayerLevel::PlayerLevel(aPStack_30,param_8);
  uVar1 = *param_9;
  uVar3 = param_9[1];
  uVar2 = *param_10;
  uVar4 = param_10[1];
  local_3c = (undefined1 *)*param_11;
  *param_11 = &DAT_00972528;
  if (param_2 != (undefined4 *)0x0) {
    *param_2 = local_4c;
    param_2[1] = local_48;
    param_2[2] = local_44;
    param_2[3] = local_40;
    local_4c = &DAT_00972528;
    local_48 = &DAT_00972528;
    local_44 = &DAT_00972528;
    local_40 = &DAT_00972528;
    gpg::PlayerLevel::PlayerLevel((PlayerLevel *)(param_2 + 4),aPStack_38);
    gpg::PlayerLevel::PlayerLevel((PlayerLevel *)(param_2 + 6),aPStack_30);
    param_2[8] = uVar1;
    param_2[9] = uVar3;
    param_2[10] = uVar2;
    param_2[0xb] = uVar4;
    param_2[0xc] = local_3c;
    local_3c = &DAT_00972528;
  }
  FUN_007c5914(&local_3c);
  gpg::PlayerLevel::~PlayerLevel(aPStack_30);
  gpg::PlayerLevel::~PlayerLevel(aPStack_38);
  FUN_007c5914(&local_40);
  FUN_007c5914(&local_44);
  FUN_007c5914(&local_48);
  FUN_007c5914(&local_4c);
  return;
}

// ---- FUN_005553d4  @ 0x5553d4
undefined4 * FUN_005553d4(undefined4 *param_1,undefined4 param_2,int *param_3)

{
  void *pvVar1;
  int iVar2;
  undefined4 *puVar3;
  undefined1 auStack_bc [4];
  undefined1 auStack_b8 [4];
  undefined1 auStack_b4 [4];
  undefined1 auStack_b0 [4];
  undefined1 auStack_ac [4];
  undefined1 auStack_a8 [4];
  undefined4 local_a4;
  undefined8 local_a0;
  undefined8 local_98;
  undefined4 local_90;
  undefined4 local_8c;
  undefined4 local_88;
  undefined4 local_84;
  PlayerLevel aPStack_80 [8];
  undefined4 local_78;
  undefined4 local_74;
  undefined4 local_70;
  undefined4 local_6c;
  PlayerLevel aPStack_68 [8];
  void *local_60;
  undefined4 *local_5c;
  undefined1 auStack_58 [16];
  undefined1 auStack_48 [16];
  undefined1 auStack_38 [20];
  
  FUN_0054968c(auStack_58,param_2,&DAT_00962224,"getLevelInfo",
               "()Lcom/google/android/gms/games/PlayerLevelInfo;");
  if (*(int *)(*param_3 + -0xc) == 0) {
    FUN_00549104(auStack_b8,param_2,"getPlayerId");
  }
  else {
    FUN_007c64e8(auStack_b8,param_3);
  }
  FUN_00549104(auStack_b4,param_2,"getDisplayName");
  FUN_005490cc(auStack_b0,param_2,&DAT_00801f93,"getIconImageUrl");
  FUN_005490cc(auStack_ac,param_2,&DAT_00801f93,"getHiResImageUrl");
  iVar2 = FUN_00548c48(auStack_58);
  if (iVar2 == 0) {
    FUN_0054968c(auStack_48,auStack_58,&DAT_009625a4,"getCurrentLevel",
                 "()Lcom/google/android/gms/games/PlayerLevel;");
  }
  else {
    FUN_00548b18(auStack_48);
  }
  FUN_005551f0(&local_90,auStack_48);
  local_84 = local_8c;
  local_88 = local_90;
  local_8c = 0;
  local_90 = 0;
  gpg::PlayerLevel::PlayerLevel(aPStack_80,&local_88);
  iVar2 = FUN_00548c48(auStack_58);
  if (iVar2 == 0) {
    FUN_0054968c(auStack_38,auStack_58,&DAT_009625a4,"getNextLevel",
                 "()Lcom/google/android/gms/games/PlayerLevel;");
  }
  else {
    FUN_00548b18(auStack_38);
  }
  FUN_005551f0(&local_78,auStack_38);
  local_70 = local_78;
  local_6c = local_74;
  local_74 = 0;
  local_78 = 0;
  gpg::PlayerLevel::PlayerLevel(aPStack_68);
  iVar2 = FUN_00548c48(auStack_58);
  if (iVar2 == 0) {
    local_98 = FUN_00548d84(auStack_58,"getCurrentXpTotal");
  }
  else {
    local_98 = 0;
  }
  iVar2 = FUN_00548c48(auStack_58);
  if (iVar2 == 0) {
    local_a0 = FUN_00548d84(auStack_58,"getLastLevelUpTimestamp");
  }
  else {
    local_a0 = 0;
  }
  FUN_005490cc(auStack_a8,param_2,&DAT_00801f93,"getTitle");
  local_60 = (void *)0x0;
  local_5c = (undefined4 *)0x0;
  local_60 = operator_new(0x38);
  FUN_00555274(auStack_bc,local_60,auStack_b8,auStack_b4,auStack_b0,auStack_ac,aPStack_80,aPStack_68
               ,&local_98,&local_a0,auStack_a8);
  pvVar1 = local_60;
  local_a4 = 0;
  puVar3 = operator_new(0x14);
  if (puVar3 != (undefined4 *)0x0) {
    puVar3[1] = 1;
    puVar3[2] = 1;
    puVar3[3] = pvVar1;
    *puVar3 = &PTR_LAB_00555094_1_00927090;
  }
  local_a4 = local_5c;
  local_5c = puVar3;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_a4);
  param_1[1] = local_5c;
  *param_1 = local_60;
  local_5c = (undefined4 *)0x0;
  local_60 = (void *)0x0;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_5c);
  FUN_007c5914(auStack_a8);
  gpg::PlayerLevel::~PlayerLevel(aPStack_68);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_6c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_74);
  FUN_00548ab0(auStack_38);
  gpg::PlayerLevel::~PlayerLevel(aPStack_80);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_84);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_8c);
  FUN_00548ab0(auStack_48);
  FUN_007c5914(auStack_ac);
  FUN_007c5914(auStack_b0);
  FUN_007c5914(auStack_b4);
  FUN_007c5914(auStack_b8);
  FUN_00548ab0(auStack_58);
  return param_1;
}

// ---- FUN_00555788  @ 0x555788
undefined4 * FUN_00555788(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_00555788_1_009270b0;
  FUN_0051c0f4(param_1 + 0xc);
  FUN_00533468(param_1);
  return param_1;
}

// ---- FUN_005557a8  @ 0x5557a8
void * FUN_005557a8(void *param_1)

{
  FUN_00555788();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_005557bc  @ 0x5557bc
undefined4 * FUN_005557bc(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_005557bc_1_00927108;
  FUN_00555788();
  return param_1;
}

// ---- FUN_005557d4  @ 0x5557d4
void * FUN_005557d4(void *param_1)

{
  FUN_005557bc();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_005557e8  @ 0x5557e8
undefined4 * FUN_005557e8(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_005557e8_1_00927168;
  FUN_007c5914(param_1 + 0x14);
  FUN_005557bc(param_1);
  return param_1;
}

// ---- FUN_00555808  @ 0x555808
void * FUN_00555808(void *param_1)

{
  FUN_005557e8();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_00555860  @ 0x555860
int FUN_00555860(int param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  *(undefined4 *)(param_1 + 8) = 0;
  if (*(int *)(param_2 + 8) != 0) {
    *(undefined4 *)(param_1 + 0xc) = *(undefined4 *)(param_2 + 0xc);
    *(undefined4 *)(param_1 + 8) = *(undefined4 *)(param_2 + 8);
    (**(code **)(param_2 + 8))(param_1,param_2,2,*(code **)(param_2 + 8),param_4);
  }
  std::function<void(gpg::QuestManager::AcceptResponse_const&)>::function
            ((function<void(gpg::QuestManager::AcceptResponse_const&)> *)(param_1 + 0x10),
             (function *)(param_2 + 0x10));
  return param_1;
}

// ---- FUN_0055589c  @ 0x55589c
undefined4 * FUN_0055589c(undefined4 *param_1,undefined4 *param_2,undefined4 param_3,Quest *param_4)

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
  FUN_00555860(auStack_68,param_3);
  local_78 = uVar1;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_74,(__shared_count *)a_Stack_7c);
  FUN_00555860(auStack_48,auStack_68);
  local_70 = local_78;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_6c,(__shared_count *)a_Stack_74);
  FUN_00533528(param_1,&local_70);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_6c);
  *param_1 = &PTR_FUN_00555788_1_009270b0;
  FUN_00555860(param_1 + 0xc,auStack_48);
  FUN_0051c0f4(auStack_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_74);
  *param_1 = &PTR_FUN_005557bc_1_00927108;
  FUN_0051c0f4(auStack_68);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_7c);
  *param_1 = &PTR_FUN_005557e8_1_00927168;
  uVar1 = gpg::Quest::Id(param_4);
  FUN_007c64e8(param_1 + 0x14,uVar1);
  return param_1;
}

// ---- FUN_00555990  @ 0x555990
void FUN_00555990(int *param_1,undefined4 param_2)

{
  int iVar1;
  undefined4 local_24;
  Quest aQStack_20 [12];
  
  iVar1 = FUN_00548c48(param_2);
  if (iVar1 == 0) {
    (**(code **)(*param_1 + 0x50))(&local_24,param_1,param_2);
    FUN_0051ce38(param_1 + 0xc,&local_24);
  }
  else {
    local_24 = 0xfffffffe;
    gpg::Quest::Quest(aQStack_20);
    FUN_0051ce38(param_1 + 0xc,&local_24);
  }
  gpg::Quest::~Quest(aQStack_20);
  return;
}

// ---- FUN_00555a18  @ 0x555a18
undefined4
FUN_00555a18(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 *param_4)

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
  local_3c = 0x555d65;
  local_40 = (code *)0x55581b;
  FUN_00533700(a_Stack_38,(_Function_base *)local_48);
  pvVar2 = operator_new(0x14);
  FUN_0053372c(pvVar2,a_Stack_38);
  local_64 = pvVar2;
  FUN_005453a8(auStack_58,param_2,param_3,&local_64);
  if (local_64 != (void *)0x0) {
    FUN_0054d548();
  }
  std::_Function_base::~_Function_base(a_Stack_38);
  std::_Function_base::~_Function_base((_Function_base *)local_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_5c);
  FUN_00548b30(param_1,auStack_58);
  FUN_00548ab0(auStack_58);
  return param_1;
}

// ---- FUN_00555af8  @ 0x555af8
undefined4 FUN_00555af8(undefined4 param_1,int param_2)

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
  if (local_34 == 0) goto LAB_00555b14;
  piVar2 = (int *)(local_34 + 4);
  unaff_r4 = &local_28;
  local_28 = *(int *)(local_34 + 4);
  while( true ) {
    iVar3 = local_28;
    if (local_28 == 0) {
LAB_00555b14:
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
  FUN_00555a18(unaff_r4,0,0x5463d1,&local_30,iVar3);
  FUN_00548b30(param_1,unaff_r4);
  FUN_00548ab0(unaff_r4);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_2c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_34);
  return param_1;
}

// ---- FUN_00555bb0  @ 0x555bb0
void FUN_00555bb0(int param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined1 auStack_58 [16];
  undefined1 auStack_48 [16];
  undefined1 auStack_38 [16];
  undefined1 auStack_28 [16];
  
  FUN_00547b10(auStack_58,&DAT_00961324,&DAT_00962524,"Quests",
               "Lcom/google/android/gms/games/quest/Quests;");
  uVar1 = FUN_00548bac(*(int *)(param_1 + 0x28) + 0xf4);
  FUN_0054942c(auStack_48,param_1 + 0x50,0);
  uVar2 = FUN_00548bac(auStack_48);
  FUN_0054968c(auStack_38,auStack_58,&DAT_00963024,"accept",
               "(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;"
               ,uVar1,uVar2);
  FUN_00555af8(auStack_28,param_1);
  uVar1 = FUN_00548bac(auStack_28);
  FUN_00548d90(auStack_38,"setResultCallback",
               "(Lcom/google/android/gms/common/api/ResultCallback;)V",uVar1);
  FUN_00548ab0(auStack_28);
  FUN_00548ab0(auStack_38);
  FUN_00548ab0(auStack_48);
  FUN_00548ab0(auStack_58);
  return;
}

// ---- FUN_00555c98  @ 0x555c98
undefined4 * FUN_00555c98(undefined4 *param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 uVar1;
  int iVar2;
  undefined1 auStack_38 [16];
  undefined4 local_28;
  Quest aQStack_24 [12];
  
  FUN_00543484(param_3);
  uVar1 = FUN_00529e40();
  iVar2 = gpg::IsError();
  local_28 = uVar1;
  if (iVar2 == 0) {
    FUN_0054932c(&local_28,param_3,&DAT_00960d24);
    FUN_0054968c(auStack_38,&local_28,&DAT_009632a4,"getQuest",
                 "()Lcom/google/android/gms/games/quest/Quest;");
    FUN_00548ab0(&local_28);
    FUN_005583d8(aQStack_24,auStack_38);
    *param_1 = local_28;
    gpg::Quest::Quest((Quest *)(param_1 + 1),aQStack_24);
    gpg::Quest::~Quest(aQStack_24);
    FUN_00548ab0(auStack_38);
  }
  else {
    gpg::Quest::Quest(aQStack_24);
    *param_1 = local_28;
    gpg::Quest::Quest((Quest *)(param_1 + 1),aQStack_24);
    gpg::Quest::~Quest(aQStack_24);
  }
  return param_1;
}

// ---- FUN_00555d64  @ 0x555d64
void FUN_00555d64(undefined4 *param_1)

{
  undefined4 uVar1;
  undefined1 auStack_30 [16];
  undefined1 auStack_20 [16];
  
  param_1 = (undefined4 *)*param_1;
  FUN_00548b30(auStack_30);
  uVar1 = *param_1;
  FUN_00548b30(auStack_20,auStack_30);
  FUN_00555990(uVar1,auStack_20);
  FUN_00548ab0(auStack_20);
  FUN_00548ab0(auStack_30);
  return;
}

// ---- FUN_00555de8  @ 0x555de8
undefined4 * FUN_00555de8(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_00555de8_1_009271c8;
  FUN_0051c11c(param_1 + 0xc);
  FUN_00533468(param_1);
  return param_1;
}

// ---- FUN_00555e08  @ 0x555e08
void * FUN_00555e08(void *param_1)

{
  FUN_00555de8();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_00555e1c  @ 0x555e1c
undefined4 * FUN_00555e1c(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_00555e1c_1_00927220;
  FUN_00555de8();
  return param_1;
}

// ---- FUN_00555e34  @ 0x555e34
void * FUN_00555e34(void *param_1)

{
  FUN_00555e1c();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_00555e48  @ 0x555e48
undefined4 * FUN_00555e48(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_00555e48_1_00927280;
  FUN_007c5914(param_1 + 0x15);
  FUN_007c5914(param_1 + 0x14);
  FUN_00555e1c(param_1);
  return param_1;
}

// ---- FUN_00555e70  @ 0x555e70
void * FUN_00555e70(void *param_1)

{
  FUN_00555e48();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_00555ec8  @ 0x555ec8
int FUN_00555ec8(int param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  *(undefined4 *)(param_1 + 8) = 0;
  if (*(int *)(param_2 + 8) != 0) {
    *(undefined4 *)(param_1 + 0xc) = *(undefined4 *)(param_2 + 0xc);
    *(undefined4 *)(param_1 + 8) = *(undefined4 *)(param_2 + 8);
    (**(code **)(param_2 + 8))(param_1,param_2,2,*(code **)(param_2 + 8),param_4);
  }
  std::function<void(gpg::QuestManager::ClaimMilestoneResponse_const&)>::function
            ((function<void(gpg::QuestManager::ClaimMilestoneResponse_const&)> *)(param_1 + 0x10),
             (function *)(param_2 + 0x10));
  return param_1;
}

// ---- FUN_00555f04  @ 0x555f04
undefined4 *
FUN_00555f04(undefined4 *param_1,undefined4 *param_2,undefined4 param_3,QuestMilestone *param_4)

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
  FUN_00555ec8(auStack_68,param_3);
  local_78 = uVar1;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_74,(__shared_count *)a_Stack_7c);
  FUN_00555ec8(auStack_48,auStack_68);
  local_70 = local_78;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_6c,(__shared_count *)a_Stack_74);
  FUN_00533528(param_1,&local_70);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_6c);
  *param_1 = &PTR_FUN_00555de8_1_009271c8;
  FUN_00555ec8(param_1 + 0xc,auStack_48);
  FUN_0051c11c(auStack_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_74);
  *param_1 = &PTR_FUN_00555e1c_1_00927220;
  FUN_0051c11c(auStack_68);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_7c);
  *param_1 = &PTR_FUN_00555e48_1_00927280;
  uVar1 = gpg::QuestMilestone::QuestId(param_4);
  FUN_007c64e8(param_1 + 0x14,uVar1);
  uVar1 = gpg::QuestMilestone::Id(param_4);
  FUN_007c64e8(param_1 + 0x15,uVar1);
  return param_1;
}

// ---- FUN_00556014  @ 0x556014
void FUN_00556014(int *param_1,undefined4 param_2)

{
  int iVar1;
  undefined4 local_2c;
  QuestMilestone aQStack_28 [8];
  Quest aQStack_20 [12];
  
  iVar1 = FUN_00548c48(param_2);
  if (iVar1 == 0) {
    (**(code **)(*param_1 + 0x50))((ClaimMilestoneResponse *)&local_2c,param_1,param_2);
    FUN_0051d124(param_1 + 0xc,(ClaimMilestoneResponse *)&local_2c);
  }
  else {
    local_2c = 0xfffffffe;
    gpg::QuestMilestone::QuestMilestone(aQStack_28);
    gpg::Quest::Quest(aQStack_20);
    FUN_0051d124(param_1 + 0xc,(ClaimMilestoneResponse *)&local_2c);
  }
  gpg::QuestManager::ClaimMilestoneResponse::~ClaimMilestoneResponse
            ((ClaimMilestoneResponse *)&local_2c);
  return;
}

// ---- FUN_005560a4  @ 0x5560a4
undefined4
FUN_005560a4(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 *param_4)

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
  local_3c = 0x556439;
  local_40 = (code *)0x555e83;
  FUN_00533700(a_Stack_38,(_Function_base *)local_48);
  pvVar2 = operator_new(0x14);
  FUN_0053372c(pvVar2,a_Stack_38);
  local_64 = pvVar2;
  FUN_005453a8(auStack_58,param_2,param_3,&local_64);
  if (local_64 != (void *)0x0) {
    FUN_0054d554();
  }
  std::_Function_base::~_Function_base(a_Stack_38);
  std::_Function_base::~_Function_base((_Function_base *)local_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_5c);
  FUN_00548b30(param_1,auStack_58);
  FUN_00548ab0(auStack_58);
  return param_1;
}

// ---- FUN_00556184  @ 0x556184
undefined4 FUN_00556184(undefined4 param_1,int param_2)

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
  if (local_34 == 0) goto LAB_005561a0;
  piVar2 = (int *)(local_34 + 4);
  unaff_r4 = &local_28;
  local_28 = *(int *)(local_34 + 4);
  while( true ) {
    iVar3 = local_28;
    if (local_28 == 0) {
LAB_005561a0:
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
  FUN_005560a4(unaff_r4,0,0x5463d1,&local_30,iVar3);
  FUN_00548b30(param_1,unaff_r4);
  FUN_00548ab0(unaff_r4);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_2c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_34);
  return param_1;
}

// ---- FUN_0055623c  @ 0x55623c
void FUN_0055623c(int param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined1 auStack_70 [16];
  undefined1 auStack_60 [16];
  undefined1 auStack_50 [16];
  undefined1 auStack_40 [16];
  undefined1 auStack_30 [16];
  
  FUN_00547b10(auStack_70,&DAT_00961324,&DAT_00962524,"Quests",
               "Lcom/google/android/gms/games/quest/Quests;");
  uVar1 = FUN_00548bac(*(int *)(param_1 + 0x28) + 0xf4);
  FUN_0054942c(auStack_60,param_1 + 0x50,0);
  uVar2 = FUN_00548bac(auStack_60);
  FUN_0054942c(auStack_50,param_1 + 0x54,0);
  uVar3 = FUN_00548bac(auStack_50);
  FUN_0054968c(auStack_40,auStack_70,&DAT_00963024,"claim",
               "(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;"
               ,uVar1,uVar2,uVar3);
  FUN_00556184(auStack_30,param_1);
  uVar1 = FUN_00548bac(auStack_30);
  FUN_00548d90(auStack_40,"setResultCallback",
               "(Lcom/google/android/gms/common/api/ResultCallback;)V",uVar1);
  FUN_00548ab0(auStack_30);
  FUN_00548ab0(auStack_40);
  FUN_00548ab0(auStack_50);
  FUN_00548ab0(auStack_60);
  FUN_00548ab0(auStack_70);
  return;
}

// ---- FUN_00556350  @ 0x556350
ClaimMilestoneResponse *
FUN_00556350(ClaimMilestoneResponse *param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 uVar1;
  int iVar2;
  Quest aQStack_44 [8];
  undefined1 auStack_3c [16];
  undefined4 local_2c;
  QuestMilestone aQStack_28 [8];
  Quest aQStack_20 [8];
  
  FUN_00543484(param_3);
  uVar1 = FUN_00529e6c();
  iVar2 = gpg::IsError();
  local_2c = uVar1;
  if (iVar2 == 0) {
    FUN_0054932c((ClaimMilestoneResponse *)&local_2c,param_3,&DAT_00963d24);
    FUN_0054968c(auStack_3c,(ClaimMilestoneResponse *)&local_2c,&DAT_009632a4,"getQuest",
                 "()Lcom/google/android/gms/games/quest/Quest;");
    FUN_00548ab0((ClaimMilestoneResponse *)&local_2c);
    FUN_005583d8(aQStack_44,auStack_3c);
    gpg::Quest::CurrentMilestone();
    gpg::Quest::Quest(aQStack_20,aQStack_44);
    gpg::QuestManager::ClaimMilestoneResponse::ClaimMilestoneResponse
              (param_1,(ClaimMilestoneResponse *)&local_2c);
    gpg::QuestManager::ClaimMilestoneResponse::~ClaimMilestoneResponse
              ((ClaimMilestoneResponse *)&local_2c);
    gpg::Quest::~Quest(aQStack_44);
    FUN_00548ab0(auStack_3c);
  }
  else {
    gpg::QuestMilestone::QuestMilestone(aQStack_28);
    gpg::Quest::Quest(aQStack_20);
    gpg::QuestManager::ClaimMilestoneResponse::ClaimMilestoneResponse
              (param_1,(ClaimMilestoneResponse *)&local_2c);
    gpg::QuestManager::ClaimMilestoneResponse::~ClaimMilestoneResponse
              ((ClaimMilestoneResponse *)&local_2c);
  }
  return param_1;
}

// ---- FUN_00556438  @ 0x556438
void FUN_00556438(undefined4 *param_1)

{
  undefined4 uVar1;
  undefined1 auStack_30 [16];
  undefined1 auStack_20 [16];
  
  param_1 = (undefined4 *)*param_1;
  FUN_00548b30(auStack_30);
  uVar1 = *param_1;
  FUN_00548b30(auStack_20,auStack_30);
  FUN_00556014(uVar1,auStack_20);
  FUN_00548ab0(auStack_20);
  FUN_00548ab0(auStack_30);
  return;
}

// ---- FUN_0055647a  @ 0x55647a
void FUN_0055647a(void *param_1)

{
  if (param_1 != (void *)0x0) {
    operator_delete(param_1);
    return;
  }
  return;
}

// ---- FUN_00556482  @ 0x556482
void FUN_00556482(int *param_1)

{
  if (param_1 != (int *)0x0) {
    (**(code **)(*param_1 + 4))();
  }
  return;
}

// ---- FUN_0055648e  @ 0x55648e
void FUN_0055648e(int *param_1)

{
  if (param_1 != (int *)0x0) {
    (**(code **)(*param_1 + 4))();
  }
  return;
}

// ---- FUN_0055649c  @ 0x55649c
undefined4 * FUN_0055649c(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0055649c_1_009272e0;
  FUN_0051c0ba(param_1 + 0xc);
  FUN_00533468(param_1);
  return param_1;
}

// ---- FUN_005564bc  @ 0x5564bc
void * FUN_005564bc(void *param_1)

{
  FUN_0055649c();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_005564d0  @ 0x5564d0
undefined4 * FUN_005564d0(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_005564d0_1_00927338;
  FUN_0055649c();
  return param_1;
}

// ---- FUN_005564e8  @ 0x5564e8
void * FUN_005564e8(void *param_1)

{
  FUN_005564d0();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_005564fc  @ 0x5564fc
undefined4 * FUN_005564fc(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_005564fc_1_00927398;
  FUN_005564d0();
  return param_1;
}

// ---- FUN_00556514  @ 0x556514
void * FUN_00556514(void *param_1)

{
  FUN_005564fc();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0055656c  @ 0x55656c
undefined4 *
FUN_0055656c(undefined4 *param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5)

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
  FUN_0051c54e(auStack_68,param_3);
  local_78 = uVar1;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_74,(__shared_count *)a_Stack_7c);
  FUN_0051c54e(auStack_48,auStack_68);
  local_70 = local_78;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_6c,(__shared_count *)a_Stack_74);
  FUN_00533528(param_1,&local_70);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_6c);
  *param_1 = &PTR_FUN_0055649c_1_009272e0;
  FUN_0051c54e(param_1 + 0xc,auStack_48);
  FUN_0051c0ba(auStack_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_74);
  *param_1 = &PTR_FUN_005564d0_1_00927338;
  FUN_0051c0ba(auStack_68);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_7c);
  param_1[0x14] = param_4;
  *param_1 = &PTR_FUN_005564fc_1_00927398;
  param_1[0x15] = param_5;
  return param_1;
}

// ---- FUN_00556650  @ 0x556650
FetchListResponse * FUN_00556650(FetchListResponse *param_1,int param_2)

{
  undefined4 local_20;
  undefined4 local_1c;
  undefined4 local_18;
  undefined4 local_14;
  
  FUN_005108ea(*(undefined4 *)(param_2 + 0x28));
  local_20 = thunk_FUN_00529dec();
  local_1c = 0;
  local_18 = 0;
  local_14 = 0;
  gpg::QuestManager::FetchListResponse::FetchListResponse(param_1,(FetchListResponse *)&local_20);
  std::vector<gpg::Quest,std::allocator<gpg::Quest>>::~vector
            ((vector<gpg::Quest,std::allocator<gpg::Quest>> *)&local_1c);
  return param_1;
}

// ---- FUN_005567d6  @ 0x5567d6
void FUN_005567d6(int *param_1,undefined4 param_2)

{
  int iVar1;
  undefined4 local_28;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  
  iVar1 = FUN_00548c48(param_2);
  if (iVar1 == 0) {
    (**(code **)(*param_1 + 0x50))(&local_28,param_1,param_2);
    FUN_0051d808(param_1 + 0xc,&local_28);
  }
  else {
    local_28 = 0xfffffffe;
    local_24 = 0;
    local_20 = 0;
    local_1c = 0;
    FUN_0051d808(param_1 + 0xc,&local_28);
  }
  std::vector<gpg::Quest,std::allocator<gpg::Quest>>::~vector
            ((vector<gpg::Quest,std::allocator<gpg::Quest>> *)&local_24);
  return;
}

// ---- FUN_00556860  @ 0x556860
undefined4
FUN_00556860(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 *param_4)

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
  local_3c = 0x556d5d;
  local_40 = (code *)0x556527;
  FUN_00533700(a_Stack_38,(_Function_base *)local_48);
  pvVar2 = operator_new(0x14);
  FUN_0053372c(pvVar2,a_Stack_38);
  local_64 = pvVar2;
  FUN_005453a8(auStack_58,param_2,param_3,&local_64);
  if (local_64 != (void *)0x0) {
    FUN_00556482();
  }
  std::_Function_base::~_Function_base(a_Stack_38);
  std::_Function_base::~_Function_base((_Function_base *)local_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_5c);
  FUN_00548b30(param_1,auStack_58);
  FUN_00548ab0(auStack_58);
  return param_1;
}

// ---- FUN_00556940  @ 0x556940
undefined4 FUN_00556940(undefined4 param_1,int param_2)

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
  if (local_34 == 0) goto LAB_0055695c;
  piVar2 = (int *)(local_34 + 4);
  unaff_r4 = &local_28;
  local_28 = *(int *)(local_34 + 4);
  while( true ) {
    iVar3 = local_28;
    if (local_28 == 0) {
LAB_0055695c:
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
  FUN_00556860(unaff_r4,0,0x5463d1,&local_30,iVar3);
  FUN_00548b30(param_1,unaff_r4);
  FUN_00548ab0(unaff_r4);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_2c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_34);
  return param_1;
}

// ---- FUN_005569f8  @ 0x5569f8
void FUN_005569f8(int param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  void *local_64 [3];
  undefined1 auStack_58 [16];
  undefined1 auStack_48 [16];
  undefined1 auStack_38 [16];
  undefined1 auStack_28 [16];
  
  FUN_005582da(local_64,*(undefined4 *)(param_1 + 0x54));
  FUN_00547b10(auStack_58,&DAT_00961324,&DAT_00962524,"Quests",
               "Lcom/google/android/gms/games/quest/Quests;");
  uVar1 = FUN_00548bac(*(int *)(param_1 + 0x28) + 0xf4);
  FUN_005495ec(auStack_48,local_64,0);
  uVar2 = FUN_00548bac(auStack_48);
  FUN_0054968c(auStack_38,auStack_58,&DAT_00963024,&DAT_008057f6,
               "(Lcom/google/android/gms/common/api/GoogleApiClient;[IIZ)Lcom/google/android/gms/common/api/PendingResult;"
               ,uVar1,uVar2,0,*(int *)(param_1 + 0x50) == 2);
  FUN_00556940(auStack_28,param_1);
  uVar1 = FUN_00548bac(auStack_28);
  FUN_00548d90(auStack_38,"setResultCallback",
               "(Lcom/google/android/gms/common/api/ResultCallback;)V",uVar1);
  FUN_00548ab0(auStack_28);
  FUN_00548ab0(auStack_38);
  FUN_00548ab0(auStack_48);
  FUN_00548ab0(auStack_58);
  if (local_64[0] != (void *)0x0) {
    operator_delete(local_64[0]);
  }
  return;
}

// ---- FUN_00556b10  @ 0x556b10
void FUN_00556b10(int param_1,undefined4 param_2)

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
  FUN_00529dec(iVar1);
  return;
}

// ---- FUN_00556b90  @ 0x556b90
FetchListResponse * FUN_00556b90(FetchListResponse *param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 uVar1;
  int iVar2;
  uint uVar3;
  Quest *pQVar4;
  vector<gpg::Quest,std::allocator<gpg::Quest>> *this;
  uint uVar5;
  Quest aQStack_5c [8];
  Quest *local_54;
  Quest *local_50;
  Quest *local_4c;
  undefined1 auStack_48 [16];
  undefined4 local_38;
  undefined4 local_34;
  undefined4 local_30;
  undefined4 local_2c;
  
  uVar1 = FUN_00556b10(param_2,param_3);
  FUN_0054932c((FetchListResponse *)&local_38,param_3,&DAT_00963724);
  FUN_0054968c(auStack_48,(FetchListResponse *)&local_38,&DAT_00961424,"getQuests",
               "()Lcom/google/android/gms/games/quest/QuestBuffer;");
  FUN_00548ab0((FetchListResponse *)&local_38);
  iVar2 = gpg::IsError(uVar1);
  local_38 = uVar1;
  if (iVar2 == 0) {
    uVar3 = FUN_00548d1c(auStack_48,"getCount");
    local_54 = (Quest *)0x0;
    local_50 = (Quest *)0x0;
    local_4c = (Quest *)0x0;
    if (0x1fffffff < uVar3) {
                    /* WARNING: Subroutine does not return */
      FUN_007c49e8("vector::reserve");
    }
    if (uVar3 != 0) {
      pQVar4 = operator_new(uVar3 * 8);
      std::__uninitialized_copy<false>::__uninit_copy<gpg::Quest*,gpg::Quest*>
                ((Quest *)0x0,(Quest *)0x0,pQVar4);
      std::_Destroy_aux<false>::__destroy<gpg::Quest*>(local_54,local_50);
      FUN_0055647a(local_54);
      local_4c = pQVar4 + uVar3 * 8;
      local_50 = pQVar4;
    }
    local_54 = local_50;
    for (uVar5 = 0; uVar5 != uVar3; uVar5 = uVar5 + 1) {
      FUN_0054968c((FetchListResponse *)&local_38,auStack_48,&DAT_009632a4,&DAT_0080598d,
                   "(I)Ljava/lang/Object;",uVar5);
      FUN_005583d8(aQStack_5c,(FetchListResponse *)&local_38);
      if (local_50 == local_4c) {
        std::vector<gpg::Quest,std::allocator<gpg::Quest>>::_M_emplace_back_aux<gpg::Quest>
                  ((vector<gpg::Quest,std::allocator<gpg::Quest>> *)&local_54,aQStack_5c);
      }
      else {
        if (local_50 != (Quest *)0x0) {
          gpg::Quest::Quest(local_50,aQStack_5c);
        }
        local_50 = local_50 + 8;
      }
      gpg::Quest::~Quest(aQStack_5c);
      FUN_00548ab0((FetchListResponse *)&local_38);
    }
    FUN_00548de4(auStack_48,"close");
    this = (vector<gpg::Quest,std::allocator<gpg::Quest>> *)&local_54;
    std::vector<gpg::Quest,std::allocator<gpg::Quest>>::vector
              ((vector<gpg::Quest,std::allocator<gpg::Quest>> *)&local_34,this);
    gpg::QuestManager::FetchListResponse::FetchListResponse(param_1,(FetchListResponse *)&local_38);
    std::vector<gpg::Quest,std::allocator<gpg::Quest>>::~vector
              ((vector<gpg::Quest,std::allocator<gpg::Quest>> *)&local_34);
  }
  else {
    FUN_00548de4(auStack_48,"close");
    local_34 = 0;
    local_30 = 0;
    local_2c = 0;
    gpg::QuestManager::FetchListResponse::FetchListResponse(param_1,(FetchListResponse *)&local_38);
    this = (vector<gpg::Quest,std::allocator<gpg::Quest>> *)&local_34;
  }
  std::vector<gpg::Quest,std::allocator<gpg::Quest>>::~vector(this);
  FUN_00548ab0(auStack_48);
  return param_1;
}

// ---- FUN_00556d5c  @ 0x556d5c
void FUN_00556d5c(undefined4 *param_1)

{
  undefined4 uVar1;
  undefined1 auStack_30 [16];
  undefined1 auStack_20 [16];
  
  param_1 = (undefined4 *)*param_1;
  FUN_00548b30(auStack_30);
  uVar1 = *param_1;
  FUN_00548b30(auStack_20,auStack_30);
  FUN_005567d6(uVar1,auStack_20);
  FUN_00548ab0(auStack_20);
  FUN_00548ab0(auStack_30);
  return;
}

// ---- FUN_00556d9e  @ 0x556d9e
void FUN_00556d9e(int *param_1)

{
  if (param_1 != (int *)0x0) {
    (**(code **)(*param_1 + 4))();
  }
  return;
}

// ---- FUN_00556daa  @ 0x556daa
undefined4 * FUN_00556daa(undefined4 *param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  undefined4 uStack_18;
  undefined4 uStack_14;
  
  uStack_18 = param_3;
  uStack_14 = param_4;
  FUN_005108ea(*(undefined4 *)(param_2 + 0x28));
  uVar1 = thunk_FUN_00529dec();
  gpg::Quest::Quest((Quest *)&uStack_18);
  *param_1 = uVar1;
  gpg::Quest::Quest((Quest *)(param_1 + 1),(Quest *)&uStack_18);
  gpg::Quest::~Quest((Quest *)&uStack_18);
  return param_1;
}

// ---- FUN_00556dec  @ 0x556dec
undefined4 * FUN_00556dec(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_00556dec_1_009273f8;
  FUN_0051c092(param_1 + 0xc);
  FUN_00533468(param_1);
  return param_1;
}

// ---- FUN_00556e0c  @ 0x556e0c
void * FUN_00556e0c(void *param_1)

{
  FUN_00556dec();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_00556e20  @ 0x556e20
undefined4 * FUN_00556e20(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_00556e20_1_00927450;
  FUN_00556dec();
  return param_1;
}

// ---- FUN_00556e38  @ 0x556e38
void * FUN_00556e38(void *param_1)

{
  FUN_00556e20();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_00556e4c  @ 0x556e4c
undefined4 * FUN_00556e4c(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_00556e4c_1_009274b0;
  FUN_007c5914(param_1 + 0x15);
  FUN_00556e20(param_1);
  return param_1;
}

// ---- FUN_00556e6c  @ 0x556e6c
void * FUN_00556e6c(void *param_1)

{
  FUN_00556e4c();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_00556ec4  @ 0x556ec4
int FUN_00556ec4(int param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  *(undefined4 *)(param_1 + 8) = 0;
  if (*(int *)(param_2 + 8) != 0) {
    *(undefined4 *)(param_1 + 0xc) = *(undefined4 *)(param_2 + 0xc);
    *(undefined4 *)(param_1 + 8) = *(undefined4 *)(param_2 + 8);
    (**(code **)(param_2 + 8))(param_1,param_2,2,*(code **)(param_2 + 8),param_4);
  }
  std::function<void(gpg::QuestManager::FetchResponse_const&)>::function
            ((function<void(gpg::QuestManager::FetchResponse_const&)> *)(param_1 + 0x10),
             (function *)(param_2 + 0x10));
  return param_1;
}

// ---- FUN_00556f00  @ 0x556f00
undefined4 *
FUN_00556f00(undefined4 *param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5)

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
  FUN_00556ec4(auStack_68,param_3);
  local_78 = uVar1;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_74,(__shared_count *)a_Stack_7c);
  FUN_00556ec4(auStack_48,auStack_68);
  local_70 = local_78;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_6c,(__shared_count *)a_Stack_74);
  FUN_00533528(param_1,&local_70);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_6c);
  *param_1 = &PTR_FUN_00556dec_1_009273f8;
  FUN_00556ec4(param_1 + 0xc,auStack_48);
  FUN_0051c092(auStack_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_74);
  *param_1 = &PTR_FUN_00556e20_1_00927450;
  FUN_0051c092(auStack_68);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_7c);
  param_1[0x14] = param_4;
  *param_1 = &PTR_FUN_00556e4c_1_009274b0;
  FUN_007c64e8(param_1 + 0x15,param_5);
  return param_1;
}

// ---- FUN_00556ff0  @ 0x556ff0
void FUN_00556ff0(int *param_1,undefined4 param_2)

{
  int iVar1;
  undefined4 local_24;
  Quest aQStack_20 [12];
  
  iVar1 = FUN_00548c48(param_2);
  if (iVar1 == 0) {
    (**(code **)(*param_1 + 0x50))(&local_24,param_1,param_2);
    FUN_0051cbc4(param_1 + 0xc,&local_24);
  }
  else {
    local_24 = 0xfffffffe;
    gpg::Quest::Quest(aQStack_20);
    FUN_0051cbc4(param_1 + 0xc,&local_24);
  }
  gpg::Quest::~Quest(aQStack_20);
  return;
}

// ---- FUN_00557078  @ 0x557078
undefined4
FUN_00557078(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 *param_4)

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
  local_3c = 0x557505;
  local_40 = (code *)0x556e7f;
  FUN_00533700(a_Stack_38,(_Function_base *)local_48);
  pvVar2 = operator_new(0x14);
  FUN_0053372c(pvVar2,a_Stack_38);
  local_64 = pvVar2;
  FUN_005453a8(auStack_58,param_2,param_3,&local_64);
  if (local_64 != (void *)0x0) {
    FUN_00556d9e();
  }
  std::_Function_base::~_Function_base(a_Stack_38);
  std::_Function_base::~_Function_base((_Function_base *)local_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_5c);
  FUN_00548b30(param_1,auStack_58);
  FUN_00548ab0(auStack_58);
  return param_1;
}

// ---- FUN_00557158  @ 0x557158
undefined4 FUN_00557158(undefined4 param_1,int param_2)

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
  if (local_34 == 0) goto LAB_00557174;
  piVar2 = (int *)(local_34 + 4);
  unaff_r4 = &local_28;
  local_28 = *(int *)(local_34 + 4);
  while( true ) {
    iVar3 = local_28;
    if (local_28 == 0) {
LAB_00557174:
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
  FUN_00557078(unaff_r4,0,0x5463d1,&local_30,iVar3);
  FUN_00548b30(param_1,unaff_r4);
  FUN_00548ab0(unaff_r4);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_2c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_34);
  return param_1;
}

// ---- FUN_00557210  @ 0x557210
void FUN_00557210(int param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  int iVar3;
  undefined1 auStack_88 [16];
  undefined1 auStack_78 [16];
  undefined4 *local_68 [4];
  undefined1 auStack_58 [16];
  undefined1 auStack_48 [16];
  undefined1 auStack_38 [20];
  
  FUN_0054942c(auStack_88,param_1 + 0x54,0);
  FUN_00547b10(auStack_78,&DAT_00961324,&DAT_00962524,"Quests",
               "Lcom/google/android/gms/games/quest/Quests;");
  uVar1 = FUN_00548bac(*(int *)(param_1 + 0x28) + 0xf4);
  iVar3 = *(int *)(param_1 + 0x50);
  FUN_00548b30(local_68,auStack_88);
  FUN_005494d0(auStack_58,local_68,1,0);
  uVar2 = FUN_00548bac(auStack_58);
  FUN_0054968c(auStack_48,auStack_78,&DAT_00963024,"loadByIds",
               "(Lcom/google/android/gms/common/api/GoogleApiClient;Z[Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;"
               ,uVar1,iVar3 == 2,uVar2);
  FUN_00557158(auStack_38,param_1);
  uVar1 = FUN_00548bac(auStack_38);
  FUN_00548d90(auStack_48,"setResultCallback",
               "(Lcom/google/android/gms/common/api/ResultCallback;)V",uVar1);
  FUN_00548ab0(auStack_38);
  FUN_00548ab0(auStack_48);
  FUN_00548ab0(auStack_58);
  (*(code *)*local_68[0])(local_68);
  FUN_00548ab0(auStack_78);
  FUN_00548ab0(auStack_88);
  return;
}

// ---- FUN_00557350  @ 0x557350
undefined4 * FUN_00557350(undefined4 *param_1,int param_2,undefined4 param_3)

{
  int iVar1;
  undefined4 uVar2;
  undefined4 *puVar3;
  Quest *this;
  undefined4 local_64;
  Quest aQStack_60 [8];
  undefined4 local_58;
  Quest aQStack_54 [8];
  undefined4 local_4c;
  Quest aQStack_48 [8];
  undefined1 auStack_40 [16];
  undefined1 auStack_30 [20];
  
  iVar1 = FUN_00543484(param_3);
  if (iVar1 == -3) {
    FUN_00511920(*(undefined4 *)(param_2 + 0x28));
  }
  else if (iVar1 == -2) {
    FUN_0054968c(auStack_30,param_3,&DAT_009619a4,"getStatus",
                 "()Lcom/google/android/gms/common/api/Status;");
    uVar2 = FUN_00548d1c(auStack_30,"getStatusCode");
    FUN_00548ab0(auStack_30);
    FUN_005166ae(1,"Encountered GmsCore error with status code: %d",uVar2);
  }
  uVar2 = FUN_00529dec(iVar1);
  FUN_0054932c(auStack_30,param_3,&DAT_00963724);
  FUN_0054968c(auStack_40,auStack_30,&DAT_00961424,"getQuests",
               "()Lcom/google/android/gms/games/quest/QuestBuffer;");
  FUN_00548ab0(auStack_30);
  iVar1 = gpg::IsError(uVar2);
  this = (Quest *)(param_1 + 1);
  if (iVar1 == 0) {
    iVar1 = FUN_00548d1c(auStack_40,"getCount");
    if ((iVar1 == 1) ||
       (FUN_005166ae(4,"Unexpected number of quests returned from quest fetch."), iVar1 != 0)) {
      FUN_0054968c(auStack_30,auStack_40,&DAT_009632a4,&DAT_0080598d,"(I)Ljava/lang/Object;",0);
      local_4c = uVar2;
      FUN_005583d8(aQStack_48,auStack_30);
      *param_1 = local_4c;
      gpg::Quest::Quest(this,aQStack_48);
      gpg::Quest::~Quest(aQStack_48);
      FUN_00548ab0(auStack_30);
      goto LAB_005574be;
    }
    puVar3 = &local_58;
    local_58 = 0xfffffffe;
    gpg::Quest::Quest(aQStack_54);
    *param_1 = local_58;
    gpg::Quest::Quest(this,aQStack_54);
  }
  else {
    puVar3 = &local_64;
    local_64 = uVar2;
    gpg::Quest::Quest(aQStack_60);
    *param_1 = local_64;
    gpg::Quest::Quest(this,aQStack_60);
  }
  gpg::Quest::~Quest((Quest *)(puVar3 + 1));
LAB_005574be:
  FUN_00548ab0(auStack_40);
  return param_1;
}

// ---- FUN_00557504  @ 0x557504
void FUN_00557504(undefined4 *param_1)

{
  undefined4 uVar1;
  undefined1 auStack_30 [16];
  undefined1 auStack_20 [16];
  
  param_1 = (undefined4 *)*param_1;
  FUN_00548b30(auStack_30);
  uVar1 = *param_1;
  FUN_00548b30(auStack_20,auStack_30);
  FUN_00556ff0(uVar1,auStack_20);
  FUN_00548ab0(auStack_20);
  FUN_00548ab0(auStack_30);
  return;
}

// ---- FUN_00557594  @ 0x557594
QuestUIResponse * FUN_00557594(QuestUIResponse *param_1,int param_2)

{
  undefined4 local_24;
  Quest aQStack_20 [8];
  QuestMilestone aQStack_18 [12];
  
  FUN_005108ea(*(undefined4 *)(param_2 + 0x28));
  local_24 = thunk_FUN_00529ec0();
  gpg::Quest::Quest(aQStack_20);
  gpg::QuestMilestone::QuestMilestone(aQStack_18);
  gpg::QuestManager::QuestUIResponse::QuestUIResponse(param_1,(QuestUIResponse *)&local_24);
  gpg::QuestManager::QuestUIResponse::~QuestUIResponse((QuestUIResponse *)&local_24);
  return param_1;
}

// ---- FUN_005575d8  @ 0x5575d8
undefined4 * FUN_005575d8(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_005575d8_1_00927510;
  FUN_0051c190(param_1 + 0xc);
  FUN_00533468(param_1);
  return param_1;
}

// ---- FUN_005575f8  @ 0x5575f8
void * FUN_005575f8(void *param_1)

{
  FUN_005575d8();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0055760c  @ 0x55760c
undefined4 * FUN_0055760c(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0055760c_1_00927568;
  FUN_005575d8();
  return param_1;
}

// ---- FUN_00557624  @ 0x557624
void * FUN_00557624(void *param_1)

{
  FUN_0055760c();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_00557638  @ 0x557638
undefined4 * FUN_00557638(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_00557638_1_009275c8;
  FUN_007c5914(param_1 + 0x15);
  FUN_0055760c(param_1);
  return param_1;
}

// ---- FUN_00557658  @ 0x557658
void * FUN_00557658(void *param_1)

{
  FUN_00557638();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_005576b0  @ 0x5576b0
undefined4 *
FUN_005576b0(undefined4 *param_1,undefined4 *param_2,undefined4 param_3,undefined1 param_4)

{
  undefined4 uVar1;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_54 [4];
  undefined4 local_50;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_4c [4];
  undefined4 local_48;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_44 [4];
  undefined1 auStack_40 [32];
  
  uVar1 = *param_2;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_54,(__shared_count *)(param_2 + 1));
  FUN_0051c67a(auStack_40,param_3);
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
  *param_1 = &PTR_FUN_005575d8_1_00927510;
  FUN_0051c67a(param_1 + 0xc,auStack_40);
  FUN_0051c190(auStack_40);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_54);
  *(undefined1 *)(param_1 + 0x14) = param_4;
  *param_1 = &PTR_FUN_0055760c_1_00927568;
  return param_1;
}

// ---- FUN_005577a4  @ 0x5577a4
undefined4 *
FUN_005577a4(undefined4 *param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 local_40;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_3c [4];
  undefined1 auStack_38 [32];
  
  local_40 = *param_2;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_3c,(__shared_count *)(param_2 + 1));
  FUN_0051c67a(auStack_38,param_4);
  FUN_005576b0(param_1,&local_40,auStack_38,1);
  FUN_0051c190(auStack_38);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_3c);
  *param_1 = &PTR_FUN_00557638_1_009275c8;
  FUN_007c64e8(param_1 + 0x15,param_3);
  return param_1;
}

// ---- FUN_0055781c  @ 0x55781c
undefined4 * FUN_0055781c(undefined4 *param_1,undefined4 *param_2,undefined4 param_3)

{
  undefined4 local_40;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_3c [4];
  undefined1 auStack_38 [36];
  
  local_40 = *param_2;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_3c,(__shared_count *)(param_2 + 1));
  FUN_0051c67a(auStack_38,param_3);
  FUN_005576b0(param_1,&local_40,auStack_38,1);
  FUN_0051c190(auStack_38);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_3c);
  *param_1 = &PTR_FUN_00557638_1_009275c8;
  param_1[0x15] = &DAT_00972528;
  return param_1;
}

// ---- FUN_00557888  @ 0x557888
void FUN_00557888(int *param_1)

{
  QuestUIResponse aQStack_24 [24];
  
  (**(code **)(*param_1 + 0x4c))(aQStack_24,param_1);
  FUN_0051d418(param_1 + 0xc,aQStack_24);
  gpg::QuestManager::QuestUIResponse::~QuestUIResponse(aQStack_24);
  return;
}

// ---- FUN_005578b8  @ 0x5578b8
void FUN_005578b8(int *param_1,undefined4 param_2,undefined4 param_3,int param_4)

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
  Quest aQStack_3c [4];
  undefined4 local_38;
  undefined4 local_34;
  _Any_data a_Stack_30 [8];
  undefined4 local_28;
  undefined4 local_24;
  
  piVar3 = param_1 + 0xc;
  if (param_4 == 0) {
    if ((char)param_1[0x14] == '\0') {
      local_40 = 1;
      gpg::Quest::Quest(aQStack_3c);
      gpg::QuestMilestone::QuestMilestone((QuestMilestone *)&local_34);
      FUN_0051d418(piVar3,(_Any_data *)&local_40);
    }
    else {
      local_40 = 0xfffffffa;
      gpg::Quest::Quest(aQStack_3c);
      gpg::QuestMilestone::QuestMilestone((QuestMilestone *)&local_34);
      FUN_0051d418(piVar3,(_Any_data *)&local_40);
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
    gpg::Quest::Quest(aQStack_3c);
    gpg::QuestMilestone::QuestMilestone((QuestMilestone *)&local_34);
    FUN_0051d418(piVar3,(_Any_data *)&local_40);
  }
  else if (param_4 == 0x2715) {
    local_40 = 0xffffffee;
    gpg::Quest::Quest(aQStack_3c);
    gpg::QuestMilestone::QuestMilestone((QuestMilestone *)&local_34);
    FUN_0051d418(piVar3,(_Any_data *)&local_40);
  }
  else {
    iVar4 = FUN_00548c48(param_2);
    if (iVar4 == 0) {
      (**(code **)(*param_1 + 0x50))((_Any_data *)&local_40,param_1,param_2);
      FUN_0051d418(piVar3,(_Any_data *)&local_40);
    }
    else {
      local_40 = 0xfffffffe;
      gpg::Quest::Quest(aQStack_3c);
      gpg::QuestMilestone::QuestMilestone((QuestMilestone *)&local_34);
      FUN_0051d418(piVar3,(_Any_data *)&local_40);
    }
  }
  gpg::QuestManager::QuestUIResponse::~QuestUIResponse((QuestUIResponse *)&local_40);
  return;
}

// ---- FUN_00557a64  @ 0x557a64
void FUN_00557a64(int param_1)

{
  bool bVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  int iVar4;
  int iVar5;
  undefined4 uVar6;
  undefined4 *puVar7;
  int *piVar8;
  int *extraout_r2;
  int extraout_r3;
  undefined1 *puVar9;
  QuestUIResponse *this;
  _Function_base *this_00;
  undefined4 *unaff_r11;
  undefined4 *puVar10;
  int local_d4;
  undefined4 local_d0;
  int local_cc;
  undefined4 *local_c8;
  undefined4 *local_c4;
  undefined4 *local_c0;
  undefined1 auStack_bc [16];
  undefined1 auStack_ac [16];
  _Function_base a_Stack_9c [16];
  undefined4 auStack_8c [4];
  undefined1 auStack_7c [16];
  _Function_base a_Stack_6c [16];
  undefined4 local_5c;
  undefined4 local_58;
  undefined4 *local_4c [2];
  code *local_44;
  undefined4 local_40;
  undefined4 local_3c;
  undefined4 local_38 [5];
  
  FUN_00548b18(auStack_bc);
  if (*(int *)(*(int *)(param_1 + 0x54) + -0xc) == 0) {
    puVar9 = auStack_7c;
    FUN_00547b10(puVar9,&DAT_00961324,&DAT_00962524,"Quests",
                 "Lcom/google/android/gms/games/quest/Quests;");
    uVar2 = FUN_00548bac(*(int *)(param_1 + 0x28) + 0xf4);
    local_c8 = (undefined4 *)0x0;
    local_c4 = (undefined4 *)0x0;
    local_c0 = (undefined4 *)0x0;
    local_c8 = operator_new(0x18);
    local_c4 = local_c8 + 6;
    puVar10 = &DAT_008313f4;
    puVar7 = local_c8;
    do {
      uVar3 = *puVar10;
      uVar6 = puVar10[1];
      puVar10 = puVar10 + 2;
      *puVar7 = uVar3;
      puVar7[1] = uVar6;
      puVar7 = puVar7 + 2;
    } while (puVar10 != &DAT_0083140c);
    this_00 = a_Stack_6c;
    local_c0 = local_c4;
    FUN_005495ec(this_00,&local_c8,0);
    uVar3 = FUN_00548bac(this_00);
    puVar7 = &local_5c;
    FUN_0054968c(puVar7,puVar9,&DAT_009630a4,"getQuestsIntent",
                 "(Lcom/google/android/gms/common/api/GoogleApiClient;[I)Landroid/content/Intent;",
                 uVar2,uVar3);
    FUN_00548b60(auStack_bc,puVar7);
    FUN_00548ab0(puVar7);
    FUN_00548ab0(this_00);
    if (local_c8 != (undefined4 *)0x0) {
      operator_delete(local_c8);
    }
  }
  else {
    puVar9 = auStack_ac;
    FUN_00547b10(puVar9,&DAT_00961324,&DAT_00962524,"Quests",
                 "Lcom/google/android/gms/games/quest/Quests;");
    uVar2 = FUN_00548bac(*(int *)(param_1 + 0x28) + 0xf4);
    this_00 = a_Stack_9c;
    FUN_0054942c(this_00,param_1 + 0x54,0);
    uVar3 = FUN_00548bac(this_00);
    puVar7 = auStack_8c;
    FUN_0054968c(puVar7,puVar9,&DAT_009630a4,"getQuestIntent",
                 "(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Landroid/content/Intent;"
                 ,uVar2,uVar3);
    FUN_00548b60(auStack_bc,puVar7);
    FUN_00548ab0(puVar7);
    FUN_00548ab0(this_00);
  }
  FUN_00548ab0(puVar9);
  this = *(QuestUIResponse **)(param_1 + 0x28);
  local_cc = *(int *)(param_1 + 8);
  if (local_cc == 0) {
    iVar5 = std::__throw_bad_weak_ptr();
  }
  else {
    piVar8 = (int *)(local_cc + 4);
    local_d4 = *(int *)(local_cc + 4);
    do {
      iVar5 = local_d4;
      if (local_d4 == 0) {
        std::__throw_bad_weak_ptr();
        piVar8 = extraout_r2;
        iVar5 = extraout_r3;
      }
      DataMemoryBarrier(0x1f);
      ExclusiveAccess(piVar8);
      iVar4 = *piVar8;
      bVar1 = false;
      if (iVar4 == local_d4) {
        bVar1 = (bool)hasExclusiveAccess(piVar8);
        if (bVar1) {
          *piVar8 = iVar5 + 1;
        }
        DataMemoryBarrier(0x1f);
      }
      local_d4 = iVar4;
    } while (!bVar1);
    local_d0 = *(undefined4 *)(param_1 + 4);
    puVar7 = &local_d0;
    unaff_r11 = &local_5c;
    local_3c = local_d0;
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_38,(__shared_count *)&local_cc);
    local_58 = local_38[0];
    local_5c = local_3c;
    local_3c = 0;
    this_00 = (_Function_base *)local_4c;
    local_38[0] = 0;
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_38);
    local_44 = (code *)0x0;
    local_4c[0] = operator_new(8);
    uVar2 = local_58;
    *local_4c[0] = local_5c;
    local_4c[0][1] = 0;
    local_58 = 0;
    local_4c[0][1] = uVar2;
    local_5c = 0;
    local_40 = 0x557e85;
    local_44 = (code *)0x55766b;
    iVar5 = FUN_0053eea8(this,auStack_bc,this_00);
    this = (QuestUIResponse *)&local_3c;
  }
  std::_Function_base::~_Function_base(this_00);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(unaff_r11 + 1));
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(puVar7 + 1));
  if (iVar5 == 0) {
    local_3c = 0xfffffff4;
    gpg::Quest::Quest((Quest *)(this + 4));
    gpg::QuestMilestone::QuestMilestone((QuestMilestone *)(this + 0xc));
    FUN_0051d418(param_1 + 0x30,this);
    gpg::QuestManager::QuestUIResponse::~QuestUIResponse(this);
  }
  FUN_00548ab0(auStack_bc);
  return;
}

// ---- FUN_00557d3c  @ 0x557d3c
QuestUIResponse * FUN_00557d3c(QuestUIResponse *param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 uVar1;
  int iVar2;
  Quest aQStack_64 [8];
  QuestMilestone aQStack_5c [8];
  undefined1 auStack_54 [16];
  undefined1 auStack_44 [16];
  undefined4 local_34;
  Quest aQStack_30 [8];
  QuestMilestone aQStack_28 [12];
  
  memset((QuestUIResponse *)&local_34,0,0x14);
  local_34 = 1;
  gpg::Quest::Quest(aQStack_30);
  gpg::QuestMilestone::QuestMilestone(aQStack_28);
  FUN_00547b10(auStack_54,&DAT_00962524,&DAT_009628a4,"EXTRA_QUEST","Ljava/lang/String;");
  uVar1 = FUN_00548bac(auStack_54);
  iVar2 = FUN_00548c54(param_3,"hasExtra","(Ljava/lang/String;)Z",uVar1);
  if (iVar2 != 0) {
    uVar1 = FUN_00548bac(auStack_54);
    FUN_0054968c(auStack_44,param_3,&DAT_009632a4,"getParcelableExtra",
                 "(Ljava/lang/String;)Landroid/os/Parcelable;",uVar1);
    FUN_005583d8(aQStack_64,auStack_44);
    iVar2 = gpg::Quest::State(aQStack_64);
    if (iVar2 == 3) {
      gpg::Quest::operator=(aQStack_30,aQStack_64);
    }
    else {
      iVar2 = gpg::Quest::State(aQStack_64);
      if (iVar2 == 4) {
        gpg::Quest::CurrentMilestone();
        gpg::QuestMilestone::operator=(aQStack_28,aQStack_5c);
        gpg::QuestMilestone::~QuestMilestone(aQStack_5c);
      }
    }
    gpg::Quest::~Quest(aQStack_64);
    FUN_00548ab0(auStack_44);
  }
  gpg::QuestManager::QuestUIResponse::QuestUIResponse(param_1,(QuestUIResponse *)&local_34);
  FUN_00548ab0(auStack_54);
  gpg::QuestManager::QuestUIResponse::~QuestUIResponse((QuestUIResponse *)&local_34);
  return param_1;
}

// ---- FUN_00557e84  @ 0x557e84
void FUN_00557e84(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  undefined1 auStack_38 [16];
  undefined1 auStack_28 [16];
  
  param_1 = (undefined4 *)*param_1;
  FUN_00548b30(auStack_38);
  uVar1 = *param_1;
  FUN_00548b30(auStack_28,auStack_38);
  FUN_005578b8(uVar1,auStack_28,param_3,param_4);
  FUN_00548ab0(auStack_28);
  FUN_00548ab0(auStack_38);
  return;
}

// ---- FUN_00557efc  @ 0x557efc
undefined4 * FUN_00557efc(undefined4 *param_1)

{
  *param_1 = &PTR___Sp_counted_base_1_009242b8;
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_00557f20  @ 0x557f20
undefined4 FUN_00557f20(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  switch(param_1) {
  case 1:
    return 1;
  case 2:
    return 2;
  case 3:
    return 3;
  case 4:
    return 4;
  case 5:
    break;
  case 6:
    return 6;
  default:
    FUN_005166ae(4,"Invalid request state in Java: %d",param_1,param_1 + -1,param_4);
  }
  return 5;
}

// ---- FUN_00557f98  @ 0x557f98
undefined4 FUN_00557f98(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  switch(param_1) {
  case 1:
    break;
  case 2:
    return 2;
  case 3:
    return 3;
  case 4:
    return 4;
  default:
    FUN_005166ae(4,"Invalid milestone state in Java: %d",param_1,param_1 + -1,param_4);
  }
  return 1;
}

// ---- FUN_00557fc8  @ 0x557fc8
void FUN_00557fc8(undefined4 param_1,undefined4 param_2,int param_3)

{
  void *pvVar1;
  undefined4 *puVar2;
  undefined4 uVar3;
  undefined8 uVar4;
  void *local_2c;
  int local_28;
  
  FUN_00549104(&local_2c,param_1,"getMilestoneId");
  *(uint *)(param_3 + 0x38) = *(uint *)(param_3 + 0x38) | 1;
  if (*(undefined4 **)(param_3 + 4) == &DAT_00960c38) {
    puVar2 = operator_new(4);
    *puVar2 = &DAT_00972528;
    *(undefined4 **)(param_3 + 4) = puVar2;
  }
  FUN_007c653c(*(undefined4 *)(param_3 + 4),&local_2c);
  FUN_007c5914(&local_2c);
  *(uint *)(param_3 + 0x38) = *(uint *)(param_3 + 0x38) | 2;
  if (*(undefined4 **)(param_3 + 8) == &DAT_00960c38) {
    puVar2 = operator_new(4);
    *puVar2 = &DAT_00972528;
    *(undefined4 **)(param_3 + 8) = puVar2;
  }
  FUN_007c653c(*(undefined4 *)(param_3 + 8),param_2);
  FUN_00549104(&local_2c,param_1,"getEventId");
  *(uint *)(param_3 + 0x38) = *(uint *)(param_3 + 0x38) | 0x40;
  if (*(undefined4 **)(param_3 + 0x24) == &DAT_00960c38) {
    puVar2 = operator_new(4);
    *puVar2 = &DAT_00972528;
    *(undefined4 **)(param_3 + 0x24) = puVar2;
  }
  FUN_007c653c(*(undefined4 *)(param_3 + 0x24),&local_2c);
  FUN_007c5914(&local_2c);
  FUN_00548d1c(param_1,"getState");
  uVar3 = FUN_00557f98();
  *(uint *)(param_3 + 0x38) = *(uint *)(param_3 + 0x38) | 4;
  *(undefined4 *)(param_3 + 0x30) = uVar3;
  uVar4 = FUN_00548d84(param_1,"getCurrentProgress");
  *(uint *)(param_3 + 0x38) = *(uint *)(param_3 + 0x38) | 8;
  *(undefined8 *)(param_3 + 0x10) = uVar4;
  uVar4 = FUN_00548d84(param_1,"getTargetProgress");
  *(uint *)(param_3 + 0x38) = *(uint *)(param_3 + 0x38) | 0x10;
  *(undefined8 *)(param_3 + 0x18) = uVar4;
  FUN_005497e4(&local_2c,param_1,"getCompletionRewardData");
  pvVar1 = local_2c;
  *(uint *)(param_3 + 0x38) = *(uint *)(param_3 + 0x38) | 0x20;
  local_28 = local_28 - (int)local_2c;
  if (*(undefined4 **)(param_3 + 0x20) == &DAT_00960c38) {
    puVar2 = operator_new(4);
    *puVar2 = &DAT_00972528;
    *(undefined4 **)(param_3 + 0x20) = puVar2;
  }
  FUN_007c5d5c(*(undefined4 *)(param_3 + 0x20),pvVar1,local_28);
  *(undefined4 *)(param_3 + 0x28) = 0;
  *(undefined4 *)(param_3 + 0x2c) = 0;
  *(uint *)(param_3 + 0x38) = *(uint *)(param_3 + 0x38) | 0x80;
  if (local_2c != (void *)0x0) {
    operator_delete(local_2c);
  }
  return;
}

// ---- FUN_00558154  @ 0x558154
undefined4 * FUN_00558154(undefined4 *param_1,undefined4 param_2)

{
  bool bVar1;
  undefined4 *puVar2;
  undefined4 *puVar3;
  int *piVar4;
  undefined4 *local_14;
  
  local_14 = (undefined4 *)param_2;
  puVar2 = operator_new(0x78);
  FUN_00571048(puVar2,param_2);
  puVar2[0x18] = 0;
  puVar2[0x19] = 0;
  puVar2[0x1a] = 0;
  *puVar2 = &PTR_FUN_00558208_1_00927628;
  puVar2[0x1b] = 0;
  puVar2[0x1c] = 0;
  local_14 = (undefined4 *)0x0;
  puVar3 = operator_new(0x10);
  puVar3[1] = 1;
  puVar3[2] = 1;
  puVar3[3] = puVar2;
  *puVar3 = &PTR_LAB_00557ed8_1_00927668;
  piVar4 = puVar3 + 2;
  puVar2[0x18] = puVar2;
  DataMemoryBarrier(0x1f);
  do {
    ExclusiveAccess(piVar4);
    bVar1 = (bool)hasExclusiveAccess(piVar4);
  } while (!bVar1);
  *piVar4 = *piVar4 + 1;
  DataMemoryBarrier(0x1f);
  local_14 = puVar3;
  if ((_Sp_counted_base<(__gnu_cxx::_Lock_policy)2> *)puVar2[0x19] !=
      (_Sp_counted_base<(__gnu_cxx::_Lock_policy)2> *)0x0) {
    std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_weak_release
              ((_Sp_counted_base<(__gnu_cxx::_Lock_policy)2> *)puVar2[0x19]);
  }
  puVar2[0x19] = puVar3;
  *param_1 = puVar2;
  param_1[1] = local_14;
  local_14 = (undefined4 *)0x0;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_14);
  return param_1;
}

// ---- FUN_00558208  @ 0x558208
undefined4 * FUN_00558208(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_00558208_1_00927628;
  if ((void *)param_1[0x1a] != (void *)0x0) {
    operator_delete((void *)param_1[0x1a]);
  }
  if ((_Sp_counted_base<(__gnu_cxx::_Lock_policy)2> *)param_1[0x19] !=
      (_Sp_counted_base<(__gnu_cxx::_Lock_policy)2> *)0x0) {
    std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_weak_release
              ((_Sp_counted_base<(__gnu_cxx::_Lock_policy)2> *)param_1[0x19]);
  }
  FUN_0057100c(param_1);
  return param_1;
}

// ---- FUN_00558234  @ 0x558234
void * FUN_00558234(void *param_1)

{
  FUN_00558208();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_005582da  @ 0x5582da
undefined4 * FUN_005582da(undefined4 *param_1,int param_2)

{
  void *__dest;
  uint uVar1;
  int iVar2;
  size_t __n;
  undefined4 local_20;
  void *local_1c;
  int local_18;
  undefined4 local_14;
  
  local_1c = (void *)0x0;
  local_18 = 0;
  local_14 = 0;
  if (param_2 << 0x1f < 0) {
    local_20 = 1;
    std::vector<int,std::allocator<int>>::emplace_back<gpg::JavaSelects>
              ((vector<int,std::allocator<int>> *)&local_1c,(JavaSelects *)&local_20);
  }
  if (param_2 << 0x1e < 0) {
    local_20 = 2;
    std::vector<int,std::allocator<int>>::emplace_back<gpg::JavaSelects>
              ((vector<int,std::allocator<int>> *)&local_1c,(JavaSelects *)&local_20);
  }
  if (param_2 << 0x1d < 0) {
    local_20 = 3;
    std::vector<int,std::allocator<int>>::emplace_back<gpg::JavaSelects>
              ((vector<int,std::allocator<int>> *)&local_1c,(JavaSelects *)&local_20);
  }
  if (param_2 << 0x1c < 0) {
    local_20 = 4;
    std::vector<int,std::allocator<int>>::emplace_back<gpg::JavaSelects>
              ((vector<int,std::allocator<int>> *)&local_1c,(JavaSelects *)&local_20);
  }
  if (param_2 << 0x1b < 0) {
    local_20 = 0x65;
    std::vector<int,std::allocator<int>>::emplace_back<gpg::JavaSelects>
              ((vector<int,std::allocator<int>> *)&local_1c,(JavaSelects *)&local_20);
  }
  if (param_2 << 0x1a < 0) {
    local_20 = 5;
    std::vector<int,std::allocator<int>>::emplace_back<gpg::JavaSelects>
              ((vector<int,std::allocator<int>> *)&local_1c,(JavaSelects *)&local_20);
  }
  if (param_2 << 0x19 < 0) {
    local_20 = 0x66;
    std::vector<int,std::allocator<int>>::emplace_back<gpg::JavaSelects>
              ((vector<int,std::allocator<int>> *)&local_1c,(JavaSelects *)&local_20);
  }
  if (param_2 << 0x18 < 0) {
    local_20 = 6;
    std::vector<int,std::allocator<int>>::emplace_back<gpg::JavaSelects>
              ((vector<int,std::allocator<int>> *)&local_1c,(JavaSelects *)&local_20);
  }
  *param_1 = 0;
  uVar1 = local_18 - (int)local_1c >> 2;
  param_1[1] = 0;
  param_1[2] = 0;
  __dest = (void *)0x0;
  if (uVar1 != 0) {
    if (0x3fffffff < uVar1) {
      FUN_007c4844();
    }
    __dest = operator_new(uVar1 * 4);
  }
  param_1[2] = (void *)(uVar1 * 4 + (int)__dest);
  *param_1 = __dest;
  param_1[1] = __dest;
  iVar2 = local_18 - (int)local_1c >> 2;
  __n = iVar2 * 4;
  if (iVar2 != 0) {
    __dest = memmove(__dest,local_1c,__n);
  }
  param_1[1] = (void *)((int)__dest + __n);
  if (local_1c != (void *)0x0) {
    operator_delete(local_1c);
  }
  return param_1;
}

// ---- FUN_005583d8  @ 0x5583d8
Quest * FUN_005583d8(Quest *param_1,undefined4 param_2)

{
  void *pvVar1;
  undefined1 auStack_b8 [4];
  undefined1 auStack_b4 [4];
  undefined1 auStack_b0 [4];
  undefined1 auStack_ac [4];
  undefined4 local_a8;
  undefined4 local_a4;
  undefined4 local_a0;
  undefined4 local_9c;
  Quest aQStack_98 [8];
  undefined1 auStack_90 [16];
  undefined1 auStack_80 [4];
  undefined4 *local_7c;
  undefined4 *local_78;
  undefined4 *local_74;
  undefined4 *local_70;
  undefined4 *local_6c;
  int local_68;
  int local_64;
  int local_60;
  int local_5c;
  undefined4 local_54;
  undefined4 local_50;
  undefined4 uStack_4c;
  undefined8 local_48;
  undefined8 local_40;
  undefined8 local_38;
  uint local_24;
  
  FUN_00549104(auStack_b8,param_2,"getQuestId");
  FUN_0057070c(auStack_80);
  local_24 = local_24 | 1;
  if (local_7c == &DAT_00960c38) {
    local_7c = operator_new(4);
    *local_7c = &DAT_00972528;
  }
  FUN_007c653c(local_7c,auStack_b8);
  FUN_00549104(auStack_b4,param_2,"getName");
  local_24 = local_24 | 2;
  if (local_78 == &DAT_00960c38) {
    local_78 = operator_new(4);
    *local_78 = &DAT_00972528;
  }
  FUN_007c653c(local_78,auStack_b4);
  FUN_007c5914(auStack_b4);
  FUN_005490cc(auStack_b0,param_2,&DAT_00801f93,"getDescription");
  local_24 = local_24 | 4;
  if (local_74 == &DAT_00960c38) {
    local_74 = operator_new(4);
    *local_74 = &DAT_00972528;
  }
  FUN_007c653c(local_74,auStack_b0);
  FUN_007c5914(auStack_b0);
  FUN_005490cc(auStack_ac,param_2,&DAT_00801f93,"getIconImageUrl");
  local_24 = local_24 | 8;
  if (local_70 == &DAT_00960c38) {
    local_70 = operator_new(4);
    *local_70 = &DAT_00972528;
  }
  FUN_007c653c(local_70,auStack_ac);
  FUN_007c5914(auStack_ac);
  FUN_00549104(&local_a0,param_2,"getBannerImageUrl");
  local_24 = local_24 | 0x10;
  if (local_6c == &DAT_00960c38) {
    local_6c = operator_new(4);
    *local_6c = &DAT_00972528;
  }
  FUN_007c653c(local_6c,&local_a0);
  FUN_007c5914(&local_a0);
  FUN_0054968c(auStack_90,param_2,&DAT_00962aa4,"getCurrentMilestone",
               "()Lcom/google/android/gms/games/quest/Milestone;");
  if (local_64 < local_60) {
    pvVar1 = *(void **)(local_68 + local_64 * 4);
  }
  else {
    if (local_60 == local_5c) {
      FUN_00530720(&local_68,local_60 + 1);
    }
    local_60 = local_60 + 1;
    pvVar1 = operator_new(0x40);
    FUN_005703ac();
    *(void **)(local_68 + local_64 * 4) = pvVar1;
  }
  local_64 = local_64 + 1;
  FUN_00557fc8(auStack_90,auStack_b8,pvVar1);
  FUN_00548d1c(param_2,"getState");
  local_54 = FUN_00557f20();
  local_24 = local_24 | 0x180;
  local_50 = 0;
  uStack_4c = 0;
  local_48 = FUN_00548d84(param_2,"getStartTimestamp");
  local_24 = local_24 | 0x200;
  local_40 = FUN_00548d84(param_2,"getEndTimestamp");
  local_24 = local_24 | 0x400;
  local_38 = FUN_00548d84(param_2,"getAcceptedTimestamp");
  local_24 = local_24 | 0x800;
  FUN_00558154(&local_a8,auStack_80);
  local_a0 = local_a8;
  local_9c = local_a4;
  local_a4 = 0;
  local_a8 = 0;
  gpg::Quest::Quest(aQStack_98,&local_a0);
  gpg::Quest::Quest(param_1,aQStack_98);
  gpg::Quest::~Quest(aQStack_98);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_9c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_a4);
  FUN_00548ab0(auStack_90);
  FUN_0057100c(auStack_80);
  FUN_007c5914(auStack_b8);
  return param_1;
}

// ---- FUN_005586d8  @ 0x5586d8
undefined4 * FUN_005586d8(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_005586d8_1_009276e0;
  std::_Function_base::~_Function_base((_Function_base *)(param_1 + 1));
  *param_1 = &PTR_LAB_005333e4_1_00925210;
  return param_1;
}

// ---- FUN_00558700  @ 0x558700
void * FUN_00558700(void *param_1)

{
  FUN_005586d8();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_00558714  @ 0x558714
undefined4 * FUN_00558714(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_00558714_1_00927688;
  std::_Function_base::~_Function_base((_Function_base *)(param_1 + 0x10));
  std::_Function_base::~_Function_base((_Function_base *)(param_1 + 0xc));
  FUN_00533468(param_1);
  return param_1;
}

// ---- FUN_0055873c  @ 0x55873c
void * FUN_0055873c(void *param_1)

{
  FUN_00558714();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0055874e  @ 0x55874e
undefined4 * FUN_0055874e(undefined4 *param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  undefined4 uStack_18;
  undefined4 uStack_14;
  
  uStack_18 = param_3;
  uStack_14 = param_4;
  FUN_005108ea(*(undefined4 *)(param_2 + 0x28));
  uVar1 = thunk_FUN_00529e14();
  gpg::RealTimeRoom::RealTimeRoom((RealTimeRoom *)&uStack_18);
  *param_1 = uVar1;
  gpg::RealTimeRoom::RealTimeRoom((RealTimeRoom *)(param_1 + 1),(RealTimeRoom *)&uStack_18);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&uStack_14);
  return param_1;
}

// ---- FUN_00558794  @ 0x558794
undefined4 * FUN_00558794(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_00558794_1_009276f8;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(param_1 + 0x18));
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(param_1 + 0x16));
  FUN_007c5914(param_1 + 0x14);
  FUN_00558714(param_1);
  return param_1;
}

// ---- FUN_005587c4  @ 0x5587c4
void * FUN_005587c4(void *param_1)

{
  FUN_00558794();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0055881c  @ 0x55881c
undefined4 *
FUN_0055881c(undefined4 *param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4,
            undefined4 *param_5)

{
  undefined4 uVar1;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_5c [4];
  undefined4 local_58;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_54 [4];
  undefined4 local_50;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_4c [4];
  _Function_base a_Stack_48 [16];
  _Function_base a_Stack_38 [20];
  
  uVar1 = *param_2;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_5c,(__shared_count *)(param_2 + 1));
  FUN_0051fe32(a_Stack_48,param_3);
  local_58 = uVar1;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_54,(__shared_count *)a_Stack_5c);
  local_50 = local_58;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_4c,(__shared_count *)a_Stack_54);
  param_1[1] = 0;
  param_1[2] = 0;
  *param_1 = &PTR_FUN_005107b4_1_00924458;
  param_1[3] = local_50;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(param_1 + 4),
             (__shared_count *)a_Stack_4c);
  param_1[8] = 0;
  param_1[6] = 0;
  param_1[7] = 0;
  param_1[8] = 0;
  param_1[9] = 0;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_4c);
  *param_1 = &PTR_FUN_00533468_1_00925100;
  param_1[10] = local_58;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(param_1 + 0xb),
             (__shared_count *)a_Stack_54);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_54);
  *param_1 = &PTR_FUN_00558714_1_00927688;
  FUN_0051fe32(param_1 + 0xc,a_Stack_48);
  std::_Function_base::~_Function_base(a_Stack_38);
  std::_Function_base::~_Function_base(a_Stack_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_5c);
  *param_1 = &PTR_FUN_00558794_1_009276f8;
  FUN_007c64e8(param_1 + 0x14,param_4);
  param_1[0x15] = *param_5;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(param_1 + 0x16),
             (__shared_count *)(param_5 + 1));
  param_1[0x17] = *param_2;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(param_1 + 0x18),
             (__shared_count *)(param_2 + 1));
  return param_1;
}

// ---- FUN_00558960  @ 0x558960
int FUN_00558960(int param_1,int param_2)

{
  *(undefined4 *)(param_1 + 8) = 0;
  if (*(int *)(param_2 + 8) != 0) {
    *(undefined4 *)(param_1 + 0xc) = *(undefined4 *)(param_2 + 0xc);
    *(undefined4 *)(param_1 + 8) = *(undefined4 *)(param_2 + 8);
    (**(code **)(param_2 + 8))(param_1,param_2,2);
  }
  return param_1;
}

// ---- FUN_0055898c  @ 0x55898c
undefined4 * FUN_0055898c(undefined4 *param_1,_Any_data *param_2)

{
  undefined4 uVar1;
  
  *param_1 = &PTR_FUN_005586d8_1_009276e0;
  param_1[3] = 0;
  std::swap<std::_Any_data>(param_2,(_Any_data *)(param_1 + 1));
  uVar1 = *(undefined4 *)(param_2 + 8);
  *(undefined4 *)(param_2 + 8) = param_1[3];
  param_1[3] = uVar1;
  uVar1 = *(undefined4 *)(param_2 + 0xc);
  *(undefined4 *)(param_2 + 0xc) = param_1[4];
  param_1[4] = uVar1;
  return param_1;
}

// ---- FUN_005589c0  @ 0x5589c0
void * FUN_005589c0(int param_1)

{
  void *pvVar1;
  _Function_base a_Stack_20 [20];
  
  FUN_00558960(a_Stack_20,param_1 + 4);
  pvVar1 = operator_new(0x14);
  FUN_0055898c(pvVar1,a_Stack_20);
  std::_Function_base::~_Function_base(a_Stack_20);
  return pvVar1;
}

// ---- FUN_00558d70  @ 0x558d70
void FUN_00558d70(undefined4 *param_1,int param_2,undefined4 param_3)

{
  __shared_count<(__gnu_cxx::_Lock_policy)2> *this;
  int iVar1;
  int iVar2;
  int *piVar3;
  RealTimeRoom aRStack_58 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_54 [4];
  undefined4 local_50;
  undefined4 local_4c;
  undefined4 local_48;
  RealTimeRoom aRStack_44 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_40 [4];
  undefined4 local_3c;
  undefined4 local_38;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_34 [4];
  undefined1 auStack_30 [20];
  
  piVar3 = (int *)*param_1;
  FUN_00548b30(auStack_30,param_3);
  if (param_2 == 0) {
    FUN_0055db98(&local_50,auStack_30);
    local_3c = local_50;
    local_38 = local_4c;
    local_4c = 0;
    local_50 = 0;
    gpg::RealTimeRoom::RealTimeRoom(aRStack_58,&local_3c);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_38);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_4c);
    iVar1 = *piVar3;
    iVar2 = *(int *)(iVar1 + 0x5c);
    local_3c = *(undefined4 *)(iVar1 + 0x54);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_38,
               (__shared_count *)(iVar1 + 0x58));
    FUN_00559194(iVar2 + 0x78,aRStack_58,&local_3c);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_38);
    iVar2 = *piVar3;
    local_48 = 1;
    gpg::RealTimeRoom::RealTimeRoom(aRStack_44,aRStack_58);
    FUN_00520830(iVar2 + 0x30,&local_48);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_40);
    this = a_Stack_54;
  }
  else {
    iVar2 = *piVar3;
    local_3c = 0xfffffffe;
    gpg::RealTimeRoom::RealTimeRoom((RealTimeRoom *)&local_38);
    FUN_00520830(iVar2 + 0x30,&local_3c);
    this = a_Stack_34;
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(this);
  FUN_00548ab0(auStack_30);
  return;
}

// ---- FUN_00558eea  @ 0x558eea
void FUN_00558eea(undefined4 *param_1)

{
  *param_1 = 0;
  *param_1 = 0;
  param_1[1] = param_1 + 1;
  param_1[2] = param_1 + 1;
  return;
}

// ---- FUN_00558efa  @ 0x558efa
undefined4 * FUN_00558efa(int param_1,void *param_2,undefined4 param_3)

{
  undefined4 *puVar1;
  int iVar2;
  size_t __n;
  undefined4 *puVar3;
  int iStack_20;
  void *local_1c;
  undefined4 uStack_18;
  
  puVar3 = *(undefined4 **)(param_1 + 4);
  iStack_20 = param_1;
  local_1c = param_2;
  uStack_18 = param_3;
  FUN_007c64e8(&iStack_20);
  FUN_007c64e8(&local_1c,&iStack_20);
  for (; puVar3 != (undefined4 *)(param_1 + 4); puVar3 = (undefined4 *)*puVar3) {
    puVar1 = (undefined4 *)gpg::RealTimeRoom::Id((RealTimeRoom *)(puVar3 + 2));
    __n = *(size_t *)((int)*puVar1 + -0xc);
    if ((__n == *(size_t *)((int)local_1c + -0xc)) &&
       (iVar2 = memcmp((void *)*puVar1,local_1c,__n), iVar2 == 0)) break;
  }
  FUN_007c5914(&local_1c);
  FUN_007c5914(&iStack_20);
  return puVar3;
}

// ---- FUN_00558f5e  @ 0x558f5e
int FUN_00558f5e(int param_1)

{
  int iVar1;
  
  iVar1 = FUN_00558efa();
  if (iVar1 == param_1 + 4) {
    iVar1 = 0;
  }
  else {
    iVar1 = iVar1 + 8;
  }
  return iVar1;
}

// ---- FUN_00558f72  @ 0x558f72
undefined4 * FUN_00558f72(int param_1,int param_2)

{
  undefined4 *puVar1;
  
  puVar1 = *(undefined4 **)(param_1 + 4);
  while( true ) {
    if (puVar1 == (undefined4 *)(param_1 + 4)) {
      return (undefined4 *)0x0;
    }
    if (puVar1[4] == param_2) break;
    puVar1 = (undefined4 *)*puVar1;
  }
  return puVar1 + 2;
}

// ---- FUN_00558f8e  @ 0x558f8e
RealTimeRoom * FUN_00558f8e(RealTimeRoom *param_1,mutex *param_2,undefined4 param_3)

{
  RealTimeRoom *pRVar1;
  mutex *local_1c;
  undefined4 uStack_18;
  
  local_1c = param_2;
  uStack_18 = param_3;
  std::mutex::lock(param_2);
  pRVar1 = (RealTimeRoom *)FUN_00558f72(param_2,param_3);
  if (pRVar1 == (RealTimeRoom *)0x0) {
    gpg::RealTimeRoom::RealTimeRoom(param_1);
  }
  else {
    gpg::RealTimeRoom::RealTimeRoom(param_1,pRVar1);
  }
  std::lock_guard<std::mutex>::~lock_guard((lock_guard<std::mutex> *)&local_1c);
  return param_1;
}

// ---- FUN_00558fd4  @ 0x558fd4
void FUN_00558fd4(mutex *param_1,RealTimeRoom *param_2)

{
  undefined4 uVar1;
  RealTimeRoom *this;
  undefined4 extraout_r2;
  undefined4 extraout_r3;
  mutex *pmVar2;
  mutex *local_14;
  
  pmVar2 = param_1;
  local_14 = param_1;
  std::mutex::lock(param_1);
  uVar1 = gpg::RealTimeRoom::Id(param_2);
  this = (RealTimeRoom *)FUN_00558f5e(param_1,uVar1,extraout_r2,extraout_r3,pmVar2);
  if (this == (RealTimeRoom *)0x0) {
    FUN_005166ae(4,"Trying to update a room which does not exist in cache. Skipping.");
  }
  else {
    gpg::RealTimeRoom::operator=(this,param_2);
  }
  std::lock_guard<std::mutex>::~lock_guard((lock_guard<std::mutex> *)&local_14);
  return;
}

// ---- FUN_00559194  @ 0x559194
void FUN_00559194(mutex *param_1,RealTimeRoom *param_2,shared_ptr *param_3)

{
  mutex *local_1c;
  shared_ptr *psStack_18;
  
  local_1c = param_1;
  psStack_18 = param_3;
  std::mutex::lock(param_1);
  std::
  list<std::pair<gpg::RealTimeRoom,std::shared_ptr<gpg::IRealTimeEventListener>>,std::allocator<std::pair<gpg::RealTimeRoom,std::shared_ptr<gpg::IRealTimeEventListener>>>>
  ::emplace_back<gpg::RealTimeRoom_const&,std::shared_ptr<gpg::IRealTimeEventListener>&>
            ((list<std::pair<gpg::RealTimeRoom,std::shared_ptr<gpg::IRealTimeEventListener>>,std::allocator<std::pair<gpg::RealTimeRoom,std::shared_ptr<gpg::IRealTimeEventListener>>>>
              *)(param_1 + 4),param_2,param_3);
  std::lock_guard<std::mutex>::~lock_guard((lock_guard<std::mutex> *)&local_1c);
  return;
}

// ---- FUN_005591ec  @ 0x5591ec
void FUN_005591ec(mutex *param_1)

{
  _List_base<std::pair<gpg::RealTimeRoom,std::shared_ptr<gpg::IRealTimeEventListener>>,std::allocator<std::pair<gpg::RealTimeRoom,std::shared_ptr<gpg::IRealTimeEventListener>>>>
  *this;
  mutex *local_14;
  
  local_14 = param_1;
  std::mutex::lock(param_1);
  for (this = *(_List_base<std::pair<gpg::RealTimeRoom,std::shared_ptr<gpg::IRealTimeEventListener>>,std::allocator<std::pair<gpg::RealTimeRoom,std::shared_ptr<gpg::IRealTimeEventListener>>>>
                **)(param_1 + 4);
      this != (_List_base<std::pair<gpg::RealTimeRoom,std::shared_ptr<gpg::IRealTimeEventListener>>,std::allocator<std::pair<gpg::RealTimeRoom,std::shared_ptr<gpg::IRealTimeEventListener>>>>
               *)(param_1 + 4);
      this = *(_List_base<std::pair<gpg::RealTimeRoom,std::shared_ptr<gpg::IRealTimeEventListener>>,std::allocator<std::pair<gpg::RealTimeRoom,std::shared_ptr<gpg::IRealTimeEventListener>>>>
               **)this) {
    FUN_005457f8(*(undefined4 *)(this + 0x10));
  }
  std::
  _List_base<std::pair<gpg::RealTimeRoom,std::shared_ptr<gpg::IRealTimeEventListener>>,std::allocator<std::pair<gpg::RealTimeRoom,std::shared_ptr<gpg::IRealTimeEventListener>>>>
  ::_M_clear(this);
  *(_List_base<std::pair<gpg::RealTimeRoom,std::shared_ptr<gpg::IRealTimeEventListener>>,std::allocator<std::pair<gpg::RealTimeRoom,std::shared_ptr<gpg::IRealTimeEventListener>>>>
    **)(param_1 + 4) = this;
  *(_List_base<std::pair<gpg::RealTimeRoom,std::shared_ptr<gpg::IRealTimeEventListener>>,std::allocator<std::pair<gpg::RealTimeRoom,std::shared_ptr<gpg::IRealTimeEventListener>>>>
    **)(param_1 + 8) = this;
  std::lock_guard<std::mutex>::~lock_guard((lock_guard<std::mutex> *)&local_14);
  return;
}

// ---- FUN_00559228  @ 0x559228
int FUN_00559228(int param_1)

{
  FUN_005591ec();
  std::
  _List_base<std::pair<gpg::RealTimeRoom,std::shared_ptr<gpg::IRealTimeEventListener>>,std::allocator<std::pair<gpg::RealTimeRoom,std::shared_ptr<gpg::IRealTimeEventListener>>>>
  ::_M_clear((_List_base<std::pair<gpg::RealTimeRoom,std::shared_ptr<gpg::IRealTimeEventListener>>,std::allocator<std::pair<gpg::RealTimeRoom,std::shared_ptr<gpg::IRealTimeEventListener>>>>
              *)(param_1 + 4));
  return param_1;
}

// ---- FUN_0055923c  @ 0x55923c
undefined4 * FUN_0055923c(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0055923c_1_00927750;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(param_1 + 0x19));
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(param_1 + 0x17));
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(param_1 + 0x15));
  FUN_00558714(param_1);
  return param_1;
}

// ---- FUN_0055926c  @ 0x55926c
void * FUN_0055926c(void *param_1)

{
  FUN_0055923c();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0055927e  @ 0x55927e
undefined4 * FUN_0055927e(undefined4 *param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  undefined4 uStack_18;
  undefined4 uStack_14;
  
  uStack_18 = param_3;
  uStack_14 = param_4;
  FUN_005108ea(*(undefined4 *)(param_2 + 0x28));
  uVar1 = thunk_FUN_00529e14();
  gpg::RealTimeRoom::RealTimeRoom((RealTimeRoom *)&uStack_18);
  *param_1 = uVar1;
  gpg::RealTimeRoom::RealTimeRoom((RealTimeRoom *)(param_1 + 1),(RealTimeRoom *)&uStack_18);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&uStack_14);
  return param_1;
}

// ---- FUN_00559308  @ 0x559308
undefined4 *
FUN_00559308(undefined4 *param_1,undefined4 *param_2,undefined4 param_3,RealTimeRoomConfig *param_4,
            undefined4 *param_5)

{
  undefined4 uVar1;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_5c [4];
  undefined4 local_58;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_54 [4];
  undefined4 local_50;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_4c [4];
  _Function_base a_Stack_48 [16];
  _Function_base a_Stack_38 [20];
  
  uVar1 = *param_2;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_5c,(__shared_count *)(param_2 + 1));
  FUN_0051fe32(a_Stack_48,param_3);
  local_58 = uVar1;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_54,(__shared_count *)a_Stack_5c);
  local_50 = local_58;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_4c,(__shared_count *)a_Stack_54);
  param_1[1] = 0;
  param_1[2] = 0;
  *param_1 = &PTR_FUN_005107b4_1_00924458;
  param_1[3] = local_50;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(param_1 + 4),
             (__shared_count *)a_Stack_4c);
  param_1[8] = 0;
  param_1[6] = 0;
  param_1[7] = 0;
  param_1[8] = 0;
  param_1[9] = 0;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_4c);
  *param_1 = &PTR_FUN_00533468_1_00925100;
  param_1[10] = local_58;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(param_1 + 0xb),
             (__shared_count *)a_Stack_54);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_54);
  *param_1 = &PTR_FUN_00558714_1_00927688;
  FUN_0051fe32(param_1 + 0xc,a_Stack_48);
  std::_Function_base::~_Function_base(a_Stack_38);
  std::_Function_base::~_Function_base(a_Stack_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_5c);
  *param_1 = &PTR_FUN_0055923c_1_00927750;
  gpg::RealTimeRoomConfig::RealTimeRoomConfig((RealTimeRoomConfig *)(param_1 + 0x14),param_4);
  param_1[0x16] = *param_5;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(param_1 + 0x17),
             (__shared_count *)(param_5 + 1));
  param_1[0x18] = *param_2;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(param_1 + 0x19),
             (__shared_count *)(param_2 + 1));
  return param_1;
}

// ---- FUN_0055944c  @ 0x55944c
void FUN_0055944c(int param_1)

{
  void *pvVar1;
  int iVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  RealTimeRoomConfig *this;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_134 [4];
  undefined4 local_130;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_12c [4];
  undefined1 auStack_128 [16];
  undefined4 *local_118 [2];
  undefined1 *local_110;
  undefined4 local_10c;
  undefined1 auStack_108 [16];
  undefined1 auStack_f8 [16];
  undefined1 auStack_e8 [16];
  undefined1 auStack_d8 [16];
  undefined1 auStack_c8 [16];
  undefined1 auStack_b8 [16];
  undefined1 auStack_a8 [16];
  undefined1 auStack_98 [16];
  undefined1 auStack_88 [16];
  undefined1 auStack_78 [16];
  undefined1 auStack_68 [16];
  undefined4 local_58;
  undefined4 local_54 [3];
  undefined4 local_48;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_44 [12];
  void *local_38;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_34 [16];
  
  FUN_00545074(auStack_128);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_12c,(__weak_count *)(param_1 + 8));
  uVar4 = *(undefined4 *)(param_1 + 4);
  local_130 = uVar4;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_134,(__shared_count *)a_Stack_12c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_12c);
  local_58 = uVar4;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_54,(__shared_count *)a_Stack_134);
  local_110 = (undefined1 *)0x0;
  local_118[0] = operator_new(8);
  uVar4 = local_54[0];
  *local_118[0] = local_58;
  local_118[0][1] = 0;
  local_54[0] = 0;
  local_118[0][1] = uVar4;
  local_58 = 0;
  local_10c = 0x559865;
  local_110 = &LAB_005592c2_1;
  FUN_00558960((_Function_base *)&local_38,(_Function_base *)local_118);
  std::_Function_base::~_Function_base((_Function_base *)&local_38);
  FUN_00558960((_Function_base *)&local_48,(_Function_base *)local_118);
  pvVar1 = operator_new(0x14);
  FUN_0055898c(pvVar1,(_Function_base *)&local_48);
  local_38 = pvVar1;
  FUN_005453a8(auStack_128,0,0x546075,(_Function_base *)&local_38);
  FUN_00544d78((_Function_base *)&local_38);
  std::_Function_base::~_Function_base((_Function_base *)&local_48);
  std::_Function_base::~_Function_base((_Function_base *)local_118);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_54);
  uVar4 = FUN_00548bac(auStack_128);
  FUN_00548074(auStack_108,&DAT_00963da4,&DAT_00963c24,"builder",
               "(Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;)Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;"
               ,uVar4);
  if (*(int *)(param_1 + 0x58) != 0) {
    local_48 = *(undefined4 *)(param_1 + 0x60);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
              (a_Stack_44,(__shared_count *)(param_1 + 100));
    local_38 = *(void **)(param_1 + 0x58);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
              (a_Stack_34,(__shared_count *)(param_1 + 0x5c));
    FUN_0055d0e0(auStack_f8,(_Function_base *)&local_48,(_Function_base *)&local_38);
    uVar4 = FUN_00548bac(auStack_f8);
    FUN_0054968c(auStack_e8,auStack_108,&DAT_00963c24,"setMessageReceivedListener",
                 "(Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;)Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;"
                 ,uVar4);
    FUN_00548ab0(auStack_e8);
    FUN_00548ab0(auStack_f8);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_34);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_44);
    local_48 = *(undefined4 *)(param_1 + 0x60);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
              (a_Stack_44,(__shared_count *)(param_1 + 100));
    local_38 = *(void **)(param_1 + 0x58);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
              (a_Stack_34,(__shared_count *)(param_1 + 0x5c));
    FUN_0055d0e0(auStack_d8,(_Function_base *)&local_48,(_Function_base *)&local_38);
    uVar4 = FUN_00548bac(auStack_d8);
    FUN_0054968c(auStack_c8,auStack_108,&DAT_00963c24,"setRoomStatusUpdateListener",
                 "(Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;)Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;"
                 ,uVar4);
    FUN_00548ab0(auStack_c8);
    FUN_00548ab0(auStack_d8);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_34);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_44);
  }
  this = (RealTimeRoomConfig *)(param_1 + 0x50);
  iVar2 = gpg::RealTimeRoomConfig::Variant(this);
  if (iVar2 != -1) {
    uVar4 = gpg::RealTimeRoomConfig::Variant(this);
    FUN_0054968c(auStack_b8,auStack_108,&DAT_00963c24,"setVariant",
                 "(I)Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;",uVar4);
    FUN_00548ab0(auStack_b8);
  }
  iVar2 = gpg::RealTimeRoomConfig::MinimumAutomatchingPlayers(this);
  if (iVar2 != 0) {
    uVar4 = gpg::RealTimeRoomConfig::MinimumAutomatchingPlayers(this);
    uVar3 = gpg::RealTimeRoomConfig::MaximumAutomatchingPlayers(this);
    gpg::RealTimeRoomConfig::ExclusiveBitMask(this);
    FUN_00548074(auStack_a8,&DAT_00963da4,&DAT_009639a4,"createAutoMatchCriteria",
                 "(IIJ)Landroid/os/Bundle;",uVar4,uVar3);
    uVar4 = FUN_00548bac(auStack_a8);
    FUN_0054968c(auStack_98,auStack_108,&DAT_00963c24,"setAutoMatchCriteria",
                 "(Landroid/os/Bundle;)Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;"
                 ,uVar4);
    FUN_00548ab0(auStack_98);
    FUN_00548ab0(auStack_a8);
  }
  uVar4 = gpg::RealTimeRoomConfig::PlayerIdsToInvite(this);
  FUN_00549450(auStack_88,uVar4);
  uVar4 = FUN_00548bac(auStack_88);
  FUN_0054968c(auStack_78,auStack_108,&DAT_00963c24,"addPlayersToInvite",
               "(Ljava/util/ArrayList;)Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;"
               ,uVar4);
  FUN_00548ab0(auStack_78);
  FUN_00548ab0(auStack_88);
  FUN_00547b10(auStack_68,&DAT_00961324,&DAT_00963224,"RealTimeMultiplayer",
               "Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;");
  uVar4 = FUN_00548bac(*(int *)(param_1 + 0x60) + 0xf4);
  FUN_0054968c(&local_58,auStack_108,&DAT_00963da4,"build",
               "()Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;");
  uVar3 = FUN_00548bac(&local_58);
  FUN_00548d90(auStack_68,"create",
               "(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;)V"
               ,uVar4,uVar3);
  FUN_00548ab0(&local_58);
  FUN_00548ab0(auStack_68);
  FUN_00548ab0(auStack_108);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_134);
  FUN_00548ab0(auStack_128);
  return;
}

// ---- FUN_00559864  @ 0x559864
void FUN_00559864(undefined4 *param_1,int param_2,undefined4 param_3)

{
  __shared_count<(__gnu_cxx::_Lock_policy)2> *this;
  int iVar1;
  int iVar2;
  int *piVar3;
  RealTimeRoom aRStack_58 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_54 [4];
  undefined4 local_50;
  undefined4 local_4c;
  undefined4 local_48;
  RealTimeRoom aRStack_44 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_40 [4];
  undefined4 local_3c;
  undefined4 local_38;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_34 [4];
  undefined1 auStack_30 [20];
  
  piVar3 = (int *)*param_1;
  FUN_00548b30(auStack_30,param_3);
  if (param_2 == 0) {
    FUN_0055db98(&local_50,auStack_30);
    local_3c = local_50;
    local_38 = local_4c;
    local_4c = 0;
    local_50 = 0;
    gpg::RealTimeRoom::RealTimeRoom(aRStack_58,&local_3c);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_38);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_4c);
    iVar1 = *piVar3;
    iVar2 = *(int *)(iVar1 + 0x60);
    local_3c = *(undefined4 *)(iVar1 + 0x58);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_38,
               (__shared_count *)(iVar1 + 0x5c));
    FUN_00559194(iVar2 + 0x78,aRStack_58,&local_3c);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_38);
    iVar2 = *piVar3;
    local_48 = 1;
    gpg::RealTimeRoom::RealTimeRoom(aRStack_44,aRStack_58);
    FUN_00520830(iVar2 + 0x30,&local_48);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_40);
    this = a_Stack_54;
  }
  else {
    iVar2 = *piVar3;
    local_3c = 0xfffffffe;
    gpg::RealTimeRoom::RealTimeRoom((RealTimeRoom *)&local_38);
    FUN_00520830(iVar2 + 0x30,&local_3c);
    this = a_Stack_34;
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(this);
  FUN_00548ab0(auStack_30);
  return;
}

// ---- FUN_00559960  @ 0x559960
void FUN_00559960(int *param_1)

{
  if (param_1 != (int *)0x0) {
    (**(code **)(*param_1 + 4))();
  }
  return;
}

// ---- FUN_0055996c  @ 0x55996c
undefined4 * FUN_0055996c(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0055996c_1_009277a8;
  FUN_0051fa5e(param_1 + 0xc);
  FUN_00533468(param_1);
  return param_1;
}

// ---- FUN_0055998c  @ 0x55998c
void * FUN_0055998c(void *param_1)

{
  FUN_0055996c();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_005599a0  @ 0x5599a0
undefined4 * FUN_005599a0(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_005599a0_1_00927800;
  FUN_0055996c();
  return param_1;
}

// ---- FUN_005599b8  @ 0x5599b8
void * FUN_005599b8(void *param_1)

{
  FUN_005599a0();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_005599cc  @ 0x5599cc
undefined4 * FUN_005599cc(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_005599cc_1_00927860;
  FUN_005599a0();
  return param_1;
}

// ---- FUN_005599e4  @ 0x5599e4
void * FUN_005599e4(void *param_1)

{
  FUN_005599cc();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_00559a3c  @ 0x559a3c
int FUN_00559a3c(int param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  *(undefined4 *)(param_1 + 8) = 0;
  if (*(int *)(param_2 + 8) != 0) {
    *(undefined4 *)(param_1 + 0xc) = *(undefined4 *)(param_2 + 0xc);
    *(undefined4 *)(param_1 + 8) = *(undefined4 *)(param_2 + 8);
    (**(code **)(param_2 + 8))(param_1,param_2,2,*(code **)(param_2 + 8),param_4);
  }
  std::function<void(gpg::RealTimeMultiplayerManager::FetchInvitationsResponse_const&)>::function
            ((function<void(gpg::RealTimeMultiplayerManager::FetchInvitationsResponse_const&)> *)
             (param_1 + 0x10),(function *)(param_2 + 0x10));
  return param_1;
}

// ---- FUN_00559a78  @ 0x559a78
undefined4 * FUN_00559a78(undefined4 *param_1,undefined4 *param_2,undefined4 param_3)

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
  FUN_00559a3c(auStack_60,param_3);
  local_70 = uVar1;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_6c,(__shared_count *)a_Stack_74);
  FUN_00559a3c(auStack_40,auStack_60);
  local_68 = local_70;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_64,(__shared_count *)a_Stack_6c);
  FUN_00533528(param_1,&local_68);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_64);
  *param_1 = &PTR_FUN_0055996c_1_009277a8;
  FUN_00559a3c(param_1 + 0xc,auStack_40);
  FUN_0051fa5e(auStack_40);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_6c);
  *param_1 = &PTR_FUN_005599a0_1_00927800;
  FUN_0051fa5e(auStack_60);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_74);
  *param_1 = &PTR_FUN_005599cc_1_00927860;
  return param_1;
}

// ---- FUN_00559b50  @ 0x559b50
FetchInvitationsResponse * FUN_00559b50(FetchInvitationsResponse *param_1,int param_2)

{
  undefined4 local_20;
  undefined4 local_1c;
  undefined4 local_18;
  undefined4 local_14;
  
  FUN_005108ea(*(undefined4 *)(param_2 + 0x28));
  local_20 = thunk_FUN_00529dec();
  local_1c = 0;
  local_18 = 0;
  local_14 = 0;
  gpg::RealTimeMultiplayerManager::FetchInvitationsResponse::FetchInvitationsResponse
            (param_1,(FetchInvitationsResponse *)&local_20);
  std::vector<gpg::MultiplayerInvitation,std::allocator<gpg::MultiplayerInvitation>>::~vector
            ((vector<gpg::MultiplayerInvitation,std::allocator<gpg::MultiplayerInvitation>> *)
             &local_1c);
  return param_1;
}

// ---- FUN_00559c92  @ 0x559c92
void FUN_00559c92(int *param_1,undefined4 param_2)

{
  int iVar1;
  undefined4 local_28;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  
  iVar1 = FUN_00548c48(param_2);
  if (iVar1 == 0) {
    (**(code **)(*param_1 + 0x50))(&local_28,param_1,param_2);
    FUN_00521a48(param_1 + 0xc,&local_28);
  }
  else {
    local_28 = 0xfffffffe;
    local_24 = 0;
    local_20 = 0;
    local_1c = 0;
    FUN_00521a48(param_1 + 0xc,&local_28);
  }
  std::vector<gpg::MultiplayerInvitation,std::allocator<gpg::MultiplayerInvitation>>::~vector
            ((vector<gpg::MultiplayerInvitation,std::allocator<gpg::MultiplayerInvitation>> *)
             &local_24);
  return;
}

// ---- FUN_00559d1c  @ 0x559d1c
undefined4
FUN_00559d1c(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 *param_4)

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
  local_3c = 0x55a149;
  local_40 = (code *)0x5599f7;
  FUN_00533700(a_Stack_38,(_Function_base *)local_48);
  pvVar2 = operator_new(0x14);
  FUN_0053372c(pvVar2,a_Stack_38);
  local_64 = pvVar2;
  FUN_005453a8(auStack_58,param_2,param_3,&local_64);
  if (local_64 != (void *)0x0) {
    FUN_00559960();
  }
  std::_Function_base::~_Function_base(a_Stack_38);
  std::_Function_base::~_Function_base((_Function_base *)local_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_5c);
  FUN_00548b30(param_1,auStack_58);
  FUN_00548ab0(auStack_58);
  return param_1;
}

// ---- FUN_00559dfc  @ 0x559dfc
undefined4 FUN_00559dfc(undefined4 param_1,int param_2)

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
  if (local_34 == 0) goto LAB_00559e18;
  piVar2 = (int *)(local_34 + 4);
  unaff_r4 = &local_28;
  local_28 = *(int *)(local_34 + 4);
  while( true ) {
    iVar3 = local_28;
    if (local_28 == 0) {
LAB_00559e18:
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
  FUN_00559d1c(unaff_r4,0,0x5463d1,&local_30,iVar3);
  FUN_00548b30(param_1,unaff_r4);
  FUN_00548ab0(unaff_r4);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_2c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_34);
  return param_1;
}

// ---- FUN_00559f6c  @ 0x559f6c
void FUN_00559f6c(int param_1,undefined4 param_2)

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
  FUN_00529dec(iVar1);
  return;
}

// ---- FUN_00559fec  @ 0x559fec
FetchInvitationsResponse *
FUN_00559fec(FetchInvitationsResponse *param_1,undefined4 param_2,undefined4 param_3)

{
  FetchInvitationsResponse *pFVar1;
  undefined4 uVar2;
  MultiplayerInvitation *pMVar3;
  int iVar4;
  int iVar5;
  shared_ptr asStack_60 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_5c [4];
  undefined1 auStack_58 [16];
  undefined4 local_48;
  MultiplayerInvitation *local_44;
  MultiplayerInvitation *local_40;
  MultiplayerInvitation *local_3c;
  undefined4 local_38;
  undefined4 local_34;
  undefined4 local_30;
  undefined4 local_2c;
  
  uVar2 = FUN_00559f6c(param_2,param_3);
  FUN_0054932c((FetchInvitationsResponse *)&local_38,param_3,&DAT_00963624);
  FUN_0054968c(auStack_58,(FetchInvitationsResponse *)&local_38,&DAT_009627a4,"getInvitations",
               "()Lcom/google/android/gms/games/multiplayer/InvitationBuffer;");
  FUN_00548ab0((FetchInvitationsResponse *)&local_38);
  pMVar3 = (MultiplayerInvitation *)gpg::IsError(uVar2);
  if (pMVar3 == (MultiplayerInvitation *)0x0) {
    pFVar1 = (FetchInvitationsResponse *)&local_48;
    local_48 = uVar2;
    local_44 = pMVar3;
    local_40 = pMVar3;
    local_3c = pMVar3;
    iVar4 = FUN_00548d1c(auStack_58,"getCount");
    for (iVar5 = 0; iVar5 < iVar4; iVar5 = iVar5 + 1) {
      FUN_0054968c((FetchInvitationsResponse *)&local_38,auStack_58,&DAT_00962f24,&DAT_0080598d,
                   "(I)Ljava/lang/Object;",iVar5);
      FUN_0055cf50(asStack_60,(FetchInvitationsResponse *)&local_38);
      if (local_40 == local_3c) {
        std::vector<gpg::MultiplayerInvitation,std::allocator<gpg::MultiplayerInvitation>>::
        _M_emplace_back_aux<std::shared_ptr<gpg::RealTimeRoomImpl>>
                  ((vector<gpg::MultiplayerInvitation,std::allocator<gpg::MultiplayerInvitation>> *)
                   &local_44,asStack_60);
      }
      else {
        __gnu_cxx::new_allocator<gpg::MultiplayerInvitation>::
        construct<gpg::MultiplayerInvitation,std::shared_ptr<gpg::RealTimeRoomImpl>>
                  ((new_allocator<gpg::MultiplayerInvitation> *)&local_44,local_40,asStack_60);
        local_40 = local_40 + 0x10;
      }
      std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_5c);
      FUN_00548ab0((FetchInvitationsResponse *)&local_38);
    }
    FUN_00548de4(auStack_58,"close");
    gpg::RealTimeMultiplayerManager::FetchInvitationsResponse::FetchInvitationsResponse
              (param_1,pFVar1);
  }
  else {
    FUN_00548de4(auStack_58,"close");
    local_34 = 0;
    local_30 = 0;
    local_2c = 0;
    local_38 = uVar2;
    gpg::RealTimeMultiplayerManager::FetchInvitationsResponse::FetchInvitationsResponse
              (param_1,(FetchInvitationsResponse *)&local_38);
    pFVar1 = (FetchInvitationsResponse *)&local_38;
  }
  std::vector<gpg::MultiplayerInvitation,std::allocator<gpg::MultiplayerInvitation>>::~vector
            ((vector<gpg::MultiplayerInvitation,std::allocator<gpg::MultiplayerInvitation>> *)
             (pFVar1 + 4));
  FUN_00548ab0(auStack_58);
  return param_1;
}

// ---- FUN_0055a148  @ 0x55a148
void FUN_0055a148(undefined4 *param_1)

{
  undefined4 uVar1;
  undefined1 auStack_30 [16];
  undefined1 auStack_20 [16];
  
  param_1 = (undefined4 *)*param_1;
  FUN_00548b30(auStack_30);
  uVar1 = *param_1;
  FUN_00548b30(auStack_20,auStack_30);
  FUN_00559c92(uVar1,auStack_20);
  FUN_00548ab0(auStack_20);
  FUN_00548ab0(auStack_30);
  return;
}

// ---- FUN_0055a18c  @ 0x55a18c
undefined4 * FUN_0055a18c(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0055a18c_1_009278c0;
  FUN_007c5914(param_1 + 0xd);
  FUN_00533468(param_1);
  return param_1;
}

// ---- FUN_0055a1ac  @ 0x55a1ac
void * FUN_0055a1ac(void *param_1)

{
  FUN_0055a18c();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0055a1c0  @ 0x55a1c0
undefined4 *
FUN_0055a1c0(undefined4 *param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4)

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
  *param_1 = &PTR_FUN_0055a18c_1_009278c0;
  FUN_007c64e8(param_1 + 0xd,param_4);
  return param_1;
}

// ---- FUN_0055a2b8  @ 0x55a2b8
void FUN_0055a2b8(int param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined1 auStack_38 [16];
  undefined1 auStack_28 [16];
  
  FUN_00547b10(auStack_38,&DAT_00961324,&DAT_00963224,"RealTimeMultiplayer",
               "Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;");
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

// ---- FUN_0055a358  @ 0x55a358
undefined4 * FUN_0055a358(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0055a358_1_00927918;
  std::_Function_base::~_Function_base((_Function_base *)(param_1 + 0x10));
  std::_Function_base::~_Function_base((_Function_base *)(param_1 + 0xc));
  FUN_00533468(param_1);
  return param_1;
}

// ---- FUN_0055a380  @ 0x55a380
void * FUN_0055a380(void *param_1)

{
  FUN_0055a358();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0055a394  @ 0x55a394
undefined4 * FUN_0055a394(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0055a394_1_00927970;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(param_1 + 0x17));
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(param_1 + 0x15));
  FUN_0055a358(param_1);
  return param_1;
}

// ---- FUN_0055a3bc  @ 0x55a3bc
void * FUN_0055a3bc(void *param_1)

{
  FUN_0055a394();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0055a414  @ 0x55a414
int FUN_0055a414(int param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  *(undefined4 *)(param_1 + 8) = 0;
  if (*(int *)(param_2 + 8) != 0) {
    *(undefined4 *)(param_1 + 0xc) = *(undefined4 *)(param_2 + 0xc);
    *(undefined4 *)(param_1 + 8) = *(undefined4 *)(param_2 + 8);
    (**(code **)(param_2 + 8))(param_1,param_2,2,*(code **)(param_2 + 8),param_4);
  }
  std::function<void(gpg::ResponseStatus_const&)>::function
            ((function<void(gpg::ResponseStatus_const&)> *)(param_1 + 0x10),
             (function *)(param_2 + 0x10));
  return param_1;
}

// ---- FUN_0055a450  @ 0x55a450
undefined4 *
FUN_0055a450(undefined4 *param_1,undefined4 *param_2,undefined4 param_3,RealTimeRoom *param_4)

{
  undefined4 uVar1;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_5c [4];
  undefined4 local_58;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_54 [4];
  undefined4 local_50;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_4c [4];
  _Function_base a_Stack_48 [16];
  _Function_base a_Stack_38 [20];
  
  uVar1 = *param_2;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_5c,(__shared_count *)(param_2 + 1));
  FUN_0055a414(a_Stack_48,param_3);
  local_58 = uVar1;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_54,(__shared_count *)a_Stack_5c);
  local_50 = local_58;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_4c,(__shared_count *)a_Stack_54);
  param_1[1] = 0;
  param_1[2] = 0;
  *param_1 = &PTR_FUN_005107b4_1_00924458;
  param_1[3] = local_50;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(param_1 + 4),
             (__shared_count *)a_Stack_4c);
  param_1[8] = 0;
  param_1[6] = 0;
  param_1[7] = 0;
  param_1[8] = 0;
  param_1[9] = 0;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_4c);
  *param_1 = &PTR_FUN_00533468_1_00925100;
  param_1[10] = local_58;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(param_1 + 0xb),
             (__shared_count *)a_Stack_54);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_54);
  *param_1 = &PTR_FUN_0055a358_1_00927918;
  FUN_0055a414(param_1 + 0xc,a_Stack_48);
  std::_Function_base::~_Function_base(a_Stack_38);
  std::_Function_base::~_Function_base(a_Stack_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_5c);
  *param_1 = &PTR_FUN_0055a394_1_00927970;
  gpg::RealTimeRoom::RealTimeRoom((RealTimeRoom *)(param_1 + 0x14),param_4);
  param_1[0x16] = *param_2;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(param_1 + 0x17),
             (__shared_count *)(param_2 + 1));
  return param_1;
}

// ---- FUN_0055a584  @ 0x55a584
void FUN_0055a584(int param_1,ResponseStatus *param_2)

{
  code *pcVar1;
  code *pcVar2;
  _Any_data *p_Var3;
  undefined4 uVar4;
  undefined4 uVar5;
  code *pcVar6;
  _Any_data *local_4c [2];
  code *local_44;
  code *local_40;
  _Function_base a_Stack_3c [8];
  code *local_34;
  code *local_30;
  function<void(gpg::ResponseStatus_const&)> afStack_2c [8];
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  
  if (*(int *)(param_1 + 0x18) != 0) {
    if (*(int *)(param_1 + 8) == 0) {
      std::function<void(gpg::ResponseStatus_const&)>::operator()
                ((function<void(gpg::ResponseStatus_const&)> *)(param_1 + 0x10),param_2);
    }
    else {
      std::function<void(gpg::ResponseStatus_const&)>::function
                (afStack_2c,(function *)(param_1 + 0x10));
      local_1c = *(undefined4 *)param_2;
      local_44 = (code *)0x0;
      p_Var3 = operator_new(0x14);
      *(undefined4 *)(p_Var3 + 8) = 0;
      std::swap<std::_Any_data>((_Any_data *)afStack_2c,p_Var3);
      uVar4 = *(undefined4 *)(p_Var3 + 8);
      *(undefined4 *)(p_Var3 + 8) = local_24;
      uVar5 = *(undefined4 *)(p_Var3 + 0xc);
      *(undefined4 *)(p_Var3 + 0xc) = local_20;
      *(undefined4 *)(p_Var3 + 0x10) = local_1c;
      local_40 = (code *)0x520b6f;
      local_44 = (code *)0x51fee9;
      local_4c[0] = p_Var3;
      local_24 = uVar4;
      local_20 = uVar5;
      if (*(int *)(param_1 + 8) == 0) {
        FUN_007c4d54();
        std::_Function_base::~_Function_base((_Function_base *)local_4c);
        std::_Function_base::~_Function_base((_Function_base *)afStack_2c);
                    /* WARNING: Subroutine does not return */
        __cxa_end_cleanup();
      }
      pcVar6 = *(code **)(param_1 + 0xc);
      local_34 = (code *)0x0;
      std::swap<std::_Any_data>((_Any_data *)local_4c,(_Any_data *)a_Stack_3c);
      pcVar2 = local_30;
      pcVar1 = local_34;
      local_34 = local_44;
      local_44 = pcVar1;
      local_30 = local_40;
      local_40 = pcVar2;
      (*pcVar6)(param_1,a_Stack_3c);
      std::_Function_base::~_Function_base(a_Stack_3c);
      std::_Function_base::~_Function_base((_Function_base *)local_4c);
      std::_Function_base::~_Function_base((_Function_base *)afStack_2c);
    }
  }
  return;
}

// ---- FUN_0055a680  @ 0x55a680
void FUN_0055a680(int param_1)

{
  bool bVar1;
  int iVar2;
  void *pvVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  int *piVar6;
  int *extraout_r2;
  int extraout_r3;
  int iVar7;
  undefined4 uVar8;
  int unaff_r4;
  int unaff_r6;
  _Function_base *unaff_r7;
  int local_9c;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_94 [4];
  undefined4 local_90;
  int local_8c;
  undefined1 auStack_88 [16];
  undefined4 *local_78 [2];
  undefined1 *local_70;
  undefined4 local_6c;
  undefined1 auStack_68 [16];
  undefined4 local_58;
  undefined4 local_54 [3];
  _Function_base a_Stack_48 [16];
  void *local_38 [5];
  
  FUN_00545074(auStack_88);
  local_8c = *(int *)(param_1 + 8);
  if (local_8c == 0) {
    std::__throw_bad_weak_ptr();
    std::_Function_base::~_Function_base(unaff_r7);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(unaff_r4 + 4));
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(unaff_r6 + 4));
    FUN_00548ab0(auStack_88);
                    /* WARNING: Subroutine does not return */
    __cxa_end_cleanup();
  }
  piVar6 = (int *)(local_8c + 4);
  local_9c = *(int *)(local_8c + 4);
  do {
    iVar7 = local_9c;
    if (local_9c == 0) {
      std::__throw_bad_weak_ptr();
      piVar6 = extraout_r2;
      iVar7 = extraout_r3;
    }
    DataMemoryBarrier(0x1f);
    ExclusiveAccess(piVar6);
    iVar2 = *piVar6;
    bVar1 = false;
    if (iVar2 == local_9c) {
      bVar1 = (bool)hasExclusiveAccess(piVar6);
      if (bVar1) {
        *piVar6 = iVar7 + 1;
      }
      DataMemoryBarrier(0x1f);
    }
    local_9c = iVar2;
  } while (!bVar1);
  uVar8 = *(undefined4 *)(param_1 + 4);
  local_90 = uVar8;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_94,(__shared_count *)&local_8c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_8c);
  local_58 = uVar8;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_54,(__shared_count *)a_Stack_94);
  local_70 = (undefined1 *)0x0;
  local_78[0] = operator_new(8);
  uVar8 = local_54[0];
  *local_78[0] = local_58;
  local_78[0][1] = 0;
  local_54[0] = 0;
  local_78[0][1] = uVar8;
  local_58 = 0;
  local_6c = 0x55a869;
  local_70 = &LAB_0055a3ce_1;
  FUN_00558960((_Function_base *)local_38,(_Function_base *)local_78);
  std::_Function_base::~_Function_base((_Function_base *)local_38);
  FUN_00558960(a_Stack_48,(_Function_base *)local_78);
  pvVar3 = operator_new(0x14);
  FUN_0055898c(pvVar3,a_Stack_48);
  local_38[0] = pvVar3;
  FUN_005453a8(auStack_88,0,0x545fe5,(_Function_base *)local_38);
  FUN_00544d78((_Function_base *)local_38);
  std::_Function_base::~_Function_base(a_Stack_48);
  std::_Function_base::~_Function_base((_Function_base *)local_78);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_54);
  FUN_00547b10(auStack_68,&DAT_00961324,&DAT_00963224,"RealTimeMultiplayer",
               "Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;");
  uVar8 = FUN_00548bac(*(int *)(param_1 + 0x58) + 0xf4);
  uVar4 = FUN_00548bac(auStack_88);
  uVar5 = gpg::RealTimeRoom::Id((RealTimeRoom *)(param_1 + 0x50));
  FUN_0054942c(&local_58,uVar5,0);
  uVar5 = FUN_00548bac(&local_58);
  FUN_00548d90(auStack_68,"leave",
               "(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;Ljava/lang/String;)V"
               ,uVar8,uVar4,uVar5);
  FUN_00548ab0(&local_58);
  FUN_00548ab0(auStack_68);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_94);
  FUN_00548ab0(auStack_88);
  return;
}

// ---- FUN_0055a868  @ 0x55a868
void FUN_0055a868(undefined4 *param_1,int param_2,undefined4 param_3)

{
  undefined4 *puVar1;
  int *piVar2;
  undefined4 local_28;
  undefined4 local_24;
  undefined1 auStack_20 [16];
  
  puVar1 = &local_28;
  piVar2 = (int *)*param_1;
  FUN_00548b30(auStack_20,param_3);
  if (param_2 == 0) {
    local_28 = 1;
  }
  else {
    puVar1 = &local_24;
    local_24 = 0xfffffffe;
  }
  FUN_0055a584(*piVar2 + 0x30,puVar1);
  FUN_00548ab0(auStack_20);
  return;
}

// ---- FUN_0055a8b4  @ 0x55a8b4
undefined4 * FUN_0055a8b4(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0055a8b4_1_00927a20;
  std::_Function_base::~_Function_base((_Function_base *)(param_1 + 1));
  *param_1 = &PTR_LAB_005333e4_1_00925210;
  return param_1;
}

// ---- FUN_0055a8dc  @ 0x55a8dc
void * FUN_0055a8dc(void *param_1)

{
  FUN_0055a8b4();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0055a8f0  @ 0x55a8f0
undefined4 * FUN_0055a8f0(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0055a8f0_1_009279c8;
  std::_Function_base::~_Function_base((_Function_base *)(param_1 + 0x10));
  std::_Function_base::~_Function_base((_Function_base *)(param_1 + 0xc));
  FUN_00533468(param_1);
  return param_1;
}

// ---- FUN_0055a918  @ 0x55a918
void * FUN_0055a918(void *param_1)

{
  FUN_0055a8f0();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0055a92c  @ 0x55a92c
undefined4 * FUN_0055a92c(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0055a92c_1_00927a38;
  FUN_007c5914(param_1 + 0x18);
  if ((void *)param_1[0x15] != (void *)0x0) {
    operator_delete((void *)param_1[0x15]);
  }
  FUN_007c5914(param_1 + 0x14);
  FUN_0055a8f0(param_1);
  return param_1;
}

// ---- FUN_0055a95c  @ 0x55a95c
void * FUN_0055a95c(void *param_1)

{
  FUN_0055a92c();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0055a9b4  @ 0x55a9b4
int FUN_0055a9b4(int param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  *(undefined4 *)(param_1 + 8) = 0;
  if (*(int *)(param_2 + 8) != 0) {
    *(undefined4 *)(param_1 + 0xc) = *(undefined4 *)(param_2 + 0xc);
    *(undefined4 *)(param_1 + 8) = *(undefined4 *)(param_2 + 8);
    (**(code **)(param_2 + 8))(param_1,param_2,2,*(code **)(param_2 + 8),param_4);
  }
  std::function<void(gpg::MultiplayerStatus_const&)>::function
            ((function<void(gpg::MultiplayerStatus_const&)> *)(param_1 + 0x10),
             (function *)(param_2 + 0x10));
  return param_1;
}

// ---- FUN_0055a9f0  @ 0x55a9f0
undefined4 *
FUN_0055a9f0(undefined4 *param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4,
            int *param_5,undefined4 param_6)

{
  void *__dest;
  int iVar1;
  undefined4 uVar2;
  int iVar3;
  uint uVar4;
  size_t __n;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_5c [4];
  undefined4 local_58;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_54 [4];
  undefined4 local_50;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_4c [4];
  _Function_base a_Stack_48 [16];
  _Function_base a_Stack_38 [20];
  
  uVar2 = *param_2;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_5c,(__shared_count *)(param_2 + 1));
  FUN_0055a9b4(a_Stack_48,param_3);
  local_58 = uVar2;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_54,(__shared_count *)a_Stack_5c);
  local_50 = local_58;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_4c,(__shared_count *)a_Stack_54);
  param_1[1] = 0;
  param_1[2] = 0;
  *param_1 = &PTR_FUN_005107b4_1_00924458;
  param_1[3] = local_50;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(param_1 + 4),
             (__shared_count *)a_Stack_4c);
  param_1[8] = 0;
  param_1[6] = 0;
  param_1[7] = 0;
  param_1[8] = 0;
  param_1[9] = 0;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_4c);
  *param_1 = &PTR_FUN_00533468_1_00925100;
  param_1[10] = local_58;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(param_1 + 0xb),
             (__shared_count *)a_Stack_54);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_54);
  *param_1 = &PTR_FUN_0055a8f0_1_009279c8;
  FUN_0055a9b4(param_1 + 0xc,a_Stack_48);
  std::_Function_base::~_Function_base(a_Stack_38);
  std::_Function_base::~_Function_base(a_Stack_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_5c);
  *param_1 = &PTR_FUN_0055a92c_1_00927a38;
  FUN_007c64e8(param_1 + 0x14,param_4);
  iVar1 = *param_5;
  iVar3 = param_5[1];
  param_1[0x15] = 0;
  uVar4 = iVar3 - iVar1;
  param_1[0x16] = 0;
  param_1[0x17] = 0;
  if (uVar4 == 0) {
    __dest = (void *)0x0;
  }
  else {
    __dest = operator_new(uVar4);
  }
  param_1[0x15] = __dest;
  param_1[0x16] = __dest;
  param_1[0x17] = uVar4 + (int)__dest;
  __n = param_5[1] - *param_5;
  if (__n != 0) {
    __dest = memmove(__dest,(void *)*param_5,__n);
  }
  param_1[0x16] = (int)__dest + __n;
  FUN_007c64e8(param_1 + 0x18,param_6);
  return param_1;
}

// ---- FUN_0055ab6c  @ 0x55ab6c
int FUN_0055ab6c(int param_1,int param_2)

{
  *(undefined4 *)(param_1 + 8) = 0;
  if (*(int *)(param_2 + 8) != 0) {
    *(undefined4 *)(param_1 + 0xc) = *(undefined4 *)(param_2 + 0xc);
    *(undefined4 *)(param_1 + 8) = *(undefined4 *)(param_2 + 8);
    (**(code **)(param_2 + 8))(param_1,param_2,2);
  }
  return param_1;
}

// ---- FUN_0055ab98  @ 0x55ab98
undefined4 * FUN_0055ab98(undefined4 *param_1,_Any_data *param_2)

{
  undefined4 uVar1;
  
  *param_1 = &PTR_FUN_0055a8b4_1_00927a20;
  param_1[3] = 0;
  std::swap<std::_Any_data>(param_2,(_Any_data *)(param_1 + 1));
  uVar1 = *(undefined4 *)(param_2 + 8);
  *(undefined4 *)(param_2 + 8) = param_1[3];
  param_1[3] = uVar1;
  uVar1 = *(undefined4 *)(param_2 + 0xc);
  *(undefined4 *)(param_2 + 0xc) = param_1[4];
  param_1[4] = uVar1;
  return param_1;
}

// ---- FUN_0055abcc  @ 0x55abcc
void * FUN_0055abcc(int param_1)

{
  void *pvVar1;
  _Function_base a_Stack_20 [20];
  
  FUN_0055ab6c(a_Stack_20,param_1 + 4);
  pvVar1 = operator_new(0x14);
  FUN_0055ab98(pvVar1,a_Stack_20);
  std::_Function_base::~_Function_base(a_Stack_20);
  return pvVar1;
}

// ---- FUN_0055abfc  @ 0x55abfc
void FUN_0055abfc(int param_1,MultiplayerStatus *param_2)

{
  code *pcVar1;
  code *pcVar2;
  _Any_data *p_Var3;
  undefined4 uVar4;
  undefined4 uVar5;
  code *pcVar6;
  _Any_data *local_4c [2];
  code *local_44;
  code *local_40;
  _Function_base a_Stack_3c [8];
  code *local_34;
  code *local_30;
  function<void(gpg::MultiplayerStatus_const&)> afStack_2c [8];
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  
  if (*(int *)(param_1 + 0x18) != 0) {
    if (*(int *)(param_1 + 8) == 0) {
      std::function<void(gpg::MultiplayerStatus_const&)>::operator()
                ((function<void(gpg::MultiplayerStatus_const&)> *)(param_1 + 0x10),param_2);
    }
    else {
      std::function<void(gpg::MultiplayerStatus_const&)>::function
                (afStack_2c,(function *)(param_1 + 0x10));
      local_1c = *(undefined4 *)param_2;
      local_44 = (code *)0x0;
      p_Var3 = operator_new(0x14);
      *(undefined4 *)(p_Var3 + 8) = 0;
      std::swap<std::_Any_data>((_Any_data *)afStack_2c,p_Var3);
      uVar4 = *(undefined4 *)(p_Var3 + 8);
      *(undefined4 *)(p_Var3 + 8) = local_24;
      uVar5 = *(undefined4 *)(p_Var3 + 0xc);
      *(undefined4 *)(p_Var3 + 0xc) = local_20;
      *(undefined4 *)(p_Var3 + 0x10) = local_1c;
      local_40 = (code *)0x520d51;
      local_44 = (code *)0x51ff5f;
      local_4c[0] = p_Var3;
      local_24 = uVar4;
      local_20 = uVar5;
      if (*(int *)(param_1 + 8) == 0) {
        FUN_007c4d54();
        std::_Function_base::~_Function_base((_Function_base *)local_4c);
        std::_Function_base::~_Function_base((_Function_base *)afStack_2c);
                    /* WARNING: Subroutine does not return */
        __cxa_end_cleanup();
      }
      pcVar6 = *(code **)(param_1 + 0xc);
      local_34 = (code *)0x0;
      std::swap<std::_Any_data>((_Any_data *)local_4c,(_Any_data *)a_Stack_3c);
      pcVar2 = local_30;
      pcVar1 = local_34;
      local_34 = local_44;
      local_44 = pcVar1;
      local_30 = local_40;
      local_40 = pcVar2;
      (*pcVar6)(param_1,a_Stack_3c);
      std::_Function_base::~_Function_base(a_Stack_3c);
      std::_Function_base::~_Function_base((_Function_base *)local_4c);
      std::_Function_base::~_Function_base((_Function_base *)afStack_2c);
    }
  }
  return;
}

// ---- FUN_0055acdc  @ 0x55acdc
void FUN_0055acdc(int param_1,int param_2,undefined4 param_3)

{
  undefined4 local_c;
  undefined4 uStack_8;
  
  if (param_2 == 0) {
    local_c = 1;
  }
  else {
    local_c = 0xfffffffe;
  }
  uStack_8 = param_3;
  FUN_0055abfc(param_1 + 0x30,&local_c,param_3,local_c,param_1);
  return;
}

// ---- FUN_0055acfa  @ 0x55acfa
void FUN_0055acfa(int *param_1,undefined4 param_2)

{
  undefined4 local_c;
  
  local_c = param_2;
  local_c = (**(code **)(*param_1 + 0x4c))();
  FUN_0055abfc(param_1 + 0xc,&local_c);
  return;
}

// ---- FUN_0055ad16  @ 0x55ad16
void FUN_0055ad16(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  undefined1 auStack_38 [16];
  undefined1 auStack_28 [16];
  
  param_1 = (undefined4 *)*param_1;
  FUN_00548b30(auStack_38,param_4);
  uVar1 = *param_1;
  FUN_00548b30(auStack_28,auStack_38);
  FUN_0055acdc(uVar1,param_2,param_3,auStack_28);
  FUN_00548ab0(auStack_28);
  FUN_00548ab0(auStack_38);
  return;
}

// ---- FUN_0055b094  @ 0x55b094
undefined4 * FUN_0055b094(undefined4 *param_1)

{
  int iVar1;
  int iVar2;
  
  iVar1 = param_1[0x11];
  iVar2 = param_1[0x12];
  *param_1 = &PTR_FUN_0055b094_1_00927a90;
  for (; iVar1 != iVar2; iVar1 = iVar1 + 4) {
    FUN_007c5914(iVar1);
  }
  if ((void *)param_1[0x11] != (void *)0x0) {
    operator_delete((void *)param_1[0x11]);
  }
  if ((void *)param_1[0xe] != (void *)0x0) {
    operator_delete((void *)param_1[0xe]);
  }
  FUN_007c5914(param_1 + 0xd);
  FUN_00533468(param_1);
  return param_1;
}

// ---- FUN_0055b0d8  @ 0x55b0d8
void * FUN_0055b0d8(void *param_1)

{
  FUN_0055b094();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0055b0ec  @ 0x55b0ec
undefined4 *
FUN_0055b0ec(undefined4 *param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4,
            int *param_5,int *param_6)

{
  void *pvVar1;
  int iVar2;
  undefined4 uVar3;
  int iVar4;
  uint uVar5;
  size_t __n;
  _Sp_counted_base<(__gnu_cxx::_Lock_policy)2> *local_2c;
  undefined4 local_28;
  _Sp_counted_base<(__gnu_cxx::_Lock_policy)2> *local_24;
  
  local_2c = (_Sp_counted_base<(__gnu_cxx::_Lock_policy)2> *)param_2[1];
  uVar3 = *param_2;
  if (local_2c != (_Sp_counted_base<(__gnu_cxx::_Lock_policy)2> *)0x0) {
    local_28 = param_3;
    local_24 = (_Sp_counted_base<(__gnu_cxx::_Lock_policy)2> *)param_4;
    std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_add_ref_copy(local_2c);
  }
  local_24 = local_2c;
  local_28 = uVar3;
  if (local_2c != (_Sp_counted_base<(__gnu_cxx::_Lock_policy)2> *)0x0) {
    std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_add_ref_copy(local_2c);
  }
  param_1[1] = 0;
  param_1[2] = 0;
  *param_1 = &PTR_FUN_005107b4_1_00924458;
  param_1[4] = local_24;
  param_1[3] = local_28;
  if (local_24 != (_Sp_counted_base<(__gnu_cxx::_Lock_policy)2> *)0x0) {
    std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_add_ref_copy(local_24);
  }
  param_1[8] = 0;
  param_1[8] = 0;
  param_1[9] = 0;
  param_1[6] = 0;
  param_1[7] = 0;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_24);
  *param_1 = &PTR_FUN_00533468_1_00925100;
  param_1[0xb] = local_2c;
  param_1[10] = uVar3;
  if (local_2c != (_Sp_counted_base<(__gnu_cxx::_Lock_policy)2> *)0x0) {
    std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_add_ref_copy(local_2c);
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_2c);
  param_1[0xc] = param_3;
  *param_1 = &PTR_FUN_0055b094_1_00927a90;
  FUN_007c64e8(param_1 + 0xd,param_4);
  iVar2 = *param_5;
  iVar4 = param_5[1];
  param_1[0xe] = 0;
  uVar5 = iVar4 - iVar2;
  param_1[0xf] = 0;
  param_1[0x10] = 0;
  if (uVar5 == 0) {
    pvVar1 = (void *)0x0;
  }
  else {
    pvVar1 = operator_new(uVar5);
  }
  param_1[0xe] = pvVar1;
  param_1[0xf] = pvVar1;
  param_1[0x10] = uVar5 + (int)pvVar1;
  __n = param_5[1] - *param_5;
  if (__n != 0) {
    pvVar1 = memmove(pvVar1,(void *)*param_5,__n);
  }
  param_1[0xf] = (int)pvVar1 + __n;
  iVar2 = *param_6;
  iVar4 = param_6[1];
  param_1[0x11] = 0;
  uVar5 = iVar4 - iVar2 >> 2;
  param_1[0x12] = 0;
  param_1[0x13] = 0;
  pvVar1 = (void *)0x0;
  if (uVar5 != 0) {
    if (0x3fffffff < uVar5) {
      FUN_007c4844();
    }
    pvVar1 = operator_new(uVar5 * 4);
  }
  param_1[0x11] = pvVar1;
  param_1[0x13] = (void *)(uVar5 * 4 + (int)pvVar1);
  param_1[0x12] = pvVar1;
  iVar4 = param_6[1];
  for (iVar2 = *param_6; iVar2 != iVar4; iVar2 = iVar2 + 4) {
    if (pvVar1 != (void *)0x0) {
      FUN_007c64e8(pvVar1,iVar2);
    }
    pvVar1 = (void *)((int)pvVar1 + 4);
  }
  param_1[0x12] = pvVar1;
  return param_1;
}

// ---- FUN_0055b258  @ 0x55b258
void FUN_0055b258(int param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined1 *puVar5;
  int iVar6;
  int iVar7;
  undefined1 auStack_88 [16];
  undefined1 auStack_78 [16];
  undefined1 auStack_68 [16];
  undefined1 auStack_58 [16];
  undefined1 auStack_48 [16];
  undefined1 auStack_38 [20];
  
  FUN_00549584(auStack_88,param_1 + 0x38,0);
  if (*(int *)(param_1 + 0x30) == 0) {
    puVar5 = auStack_38;
    FUN_00548040(puVar5,&DAT_00961824);
    iVar6 = *(int *)(param_1 + 0x48);
    for (iVar7 = *(int *)(param_1 + 0x44); iVar7 != iVar6; iVar7 = iVar7 + 4) {
      FUN_0054942c(auStack_78,iVar7,0);
      uVar2 = FUN_00548bac(auStack_78);
      FUN_00548c54(puVar5,&DAT_00809538,"(Ljava/lang/Object;)Z",uVar2);
      FUN_00548ab0(auStack_78);
    }
    FUN_00547b10(auStack_68,&DAT_00961324,&DAT_00963224,"RealTimeMultiplayer",
                 "Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;");
    uVar2 = FUN_00548bac(*(int *)(param_1 + 0x28) + 0xf4);
    uVar3 = FUN_00548bac(auStack_88);
    FUN_0054942c(auStack_58,param_1 + 0x34,0);
    uVar4 = FUN_00548bac(auStack_58);
    uVar1 = FUN_00548bac(puVar5);
    FUN_00548cc0(auStack_68,"sendUnreliableMessage",
                 "(Lcom/google/android/gms/common/api/GoogleApiClient;[BLjava/lang/String;Ljava/util/List;)I"
                 ,uVar2,uVar3,uVar4,uVar1);
    FUN_00548ab0(auStack_58);
    FUN_00548ab0(auStack_68);
  }
  else {
    if (*(int *)(param_1 + 0x30) != 1) {
      FUN_005166ae(4,"Unknown send target for RTMPSendUnreliableOperation.");
      goto LAB_0055b3ac;
    }
    puVar5 = auStack_48;
    FUN_00547b10(puVar5,&DAT_00961324,&DAT_00963224,"RealTimeMultiplayer",
                 "Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;");
    uVar2 = FUN_00548bac(*(int *)(param_1 + 0x28) + 0xf4);
    uVar3 = FUN_00548bac(auStack_88);
    FUN_0054942c(auStack_38,param_1 + 0x34,0);
    uVar4 = FUN_00548bac(auStack_38);
    FUN_00548cc0(puVar5,"sendUnreliableMessageToOthers",
                 "(Lcom/google/android/gms/common/api/GoogleApiClient;[BLjava/lang/String;)I",uVar2,
                 uVar3,uVar4);
    FUN_00548ab0(auStack_38);
  }
  FUN_00548ab0(puVar5);
LAB_0055b3ac:
  FUN_00548ab0(auStack_88);
  return;
}

// ---- FUN_0055b424  @ 0x55b424
undefined4 * FUN_0055b424(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0055b424_1_00927ae8;
  FUN_0051f9cc(param_1 + 0xc);
  FUN_00533468(param_1);
  return param_1;
}

// ---- FUN_0055b444  @ 0x55b444
void * FUN_0055b444(void *param_1)

{
  FUN_0055b424();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0055b458  @ 0x55b458
undefined4 * FUN_0055b458(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0055b458_1_00927b40;
  FUN_0055b424();
  return param_1;
}

// ---- FUN_0055b470  @ 0x55b470
void * FUN_0055b470(void *param_1)

{
  FUN_0055b458();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0055b484  @ 0x55b484
undefined4 * FUN_0055b484(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0055b484_1_00927ba0;
  FUN_0055b458();
  return param_1;
}

// ---- FUN_0055b49c  @ 0x55b49c
void * FUN_0055b49c(void *param_1)

{
  FUN_0055b484();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0055b4b0  @ 0x55b4b0
undefined4 * FUN_0055b4b0(undefined4 *param_1)

{
  MultiplayerInvitation aMStack_20 [16];
  
  FUN_005166ae(4,"Android UI operation returned a value when none was expected.");
  gpg::MultiplayerInvitation::MultiplayerInvitation(aMStack_20);
  *param_1 = 0xfffffffe;
  gpg::MultiplayerInvitation::MultiplayerInvitation
            ((MultiplayerInvitation *)(param_1 + 1),aMStack_20);
  gpg::MultiplayerInvitation::~MultiplayerInvitation(aMStack_20);
  return param_1;
}

// ---- FUN_0055b4fc  @ 0x55b4fc
undefined4 * FUN_0055b4fc(undefined4 *param_1,int param_2)

{
  undefined4 uVar1;
  MultiplayerInvitation aMStack_20 [16];
  
  FUN_005108ea(*(undefined4 *)(param_2 + 0x28));
  uVar1 = thunk_FUN_00529ec0();
  gpg::MultiplayerInvitation::MultiplayerInvitation(aMStack_20);
  *param_1 = uVar1;
  gpg::MultiplayerInvitation::MultiplayerInvitation
            ((MultiplayerInvitation *)(param_1 + 1),aMStack_20);
  gpg::MultiplayerInvitation::~MultiplayerInvitation(aMStack_20);
  return param_1;
}

// ---- FUN_0055b584  @ 0x55b584
function<void(std::function<void()>)> *
FUN_0055b584(function<void(std::function<void()>)> *param_1,function *param_2)

{
  std::function<void(std::function<void()>)>::function(param_1,param_2);
  std::function<void(gpg::RealTimeMultiplayerManager::RoomInboxUIResponse_const&)>::function
            ((function<void(gpg::RealTimeMultiplayerManager::RoomInboxUIResponse_const&)> *)
             (param_1 + 0x10),param_2 + 0x10);
  return param_1;
}

// ---- FUN_0055b5a8  @ 0x55b5a8
undefined4 * FUN_0055b5a8(undefined4 *param_1,undefined4 *param_2,undefined4 param_3)

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
  FUN_0055b584(auStack_68,param_3);
  local_80 = uVar1;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_7c,(__shared_count *)a_Stack_84);
  FUN_0055b584(auStack_48,auStack_68);
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
  *param_1 = &PTR_FUN_0055b424_1_00927ae8;
  FUN_0055b584(param_1 + 0xc,auStack_48);
  FUN_0051f9cc(auStack_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_7c);
  *param_1 = &PTR_FUN_0055b458_1_00927b40;
  *(undefined1 *)(param_1 + 0x14) = 1;
  FUN_0051f9cc(auStack_68);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_84);
  *param_1 = &PTR_FUN_0055b484_1_00927ba0;
  return param_1;
}

// ---- FUN_0055b6ec  @ 0x55b6ec
void FUN_0055b6ec(int *param_1)

{
  undefined1 auStack_24 [4];
  MultiplayerInvitation aMStack_20 [20];
  
  (**(code **)(*param_1 + 0x4c))(auStack_24,param_1);
  FUN_00520f48(param_1 + 0xc,auStack_24);
  gpg::MultiplayerInvitation::~MultiplayerInvitation(aMStack_20);
  return;
}

// ---- FUN_0055b71c  @ 0x55b71c
void FUN_0055b71c(int *param_1,undefined4 param_2,undefined4 param_3,int param_4)

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
  MultiplayerInvitation aMStack_3c [4];
  undefined4 local_38;
  undefined4 local_34;
  _Any_data a_Stack_30 [8];
  undefined4 local_28;
  undefined4 local_24;
  
  piVar3 = param_1 + 0xc;
  if (param_4 == 0) {
    if ((char)param_1[0x14] == '\0') {
      local_40 = 1;
      gpg::MultiplayerInvitation::MultiplayerInvitation(aMStack_3c);
      FUN_00520f48(piVar3,(_Any_data *)&local_40);
    }
    else {
      local_40 = 0xfffffffa;
      gpg::MultiplayerInvitation::MultiplayerInvitation(aMStack_3c);
      FUN_00520f48(piVar3,(_Any_data *)&local_40);
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
    gpg::MultiplayerInvitation::MultiplayerInvitation(aMStack_3c);
    FUN_00520f48(piVar3,(_Any_data *)&local_40);
  }
  else if (param_4 == 0x2715) {
    local_40 = 0xffffffee;
    gpg::MultiplayerInvitation::MultiplayerInvitation(aMStack_3c);
    FUN_00520f48(piVar3,(_Any_data *)&local_40);
  }
  else {
    iVar4 = FUN_00548c48(param_2);
    if (iVar4 == 0) {
      (**(code **)(*param_1 + 0x50))((_Any_data *)&local_40,param_1,param_2);
      FUN_00520f48(piVar3,(_Any_data *)&local_40);
    }
    else {
      local_40 = 0xfffffffe;
      gpg::MultiplayerInvitation::MultiplayerInvitation(aMStack_3c);
      FUN_00520f48(piVar3,(_Any_data *)&local_40);
    }
  }
  gpg::MultiplayerInvitation::~MultiplayerInvitation(aMStack_3c);
  return;
}

// ---- FUN_0055b8a0  @ 0x55b8a0
void FUN_0055b8a0(int param_1)

{
  bool bVar1;
  undefined4 uVar2;
  int iVar3;
  int *piVar4;
  int *extraout_r2;
  int extraout_r3;
  int iVar5;
  int *unaff_r5;
  _Function_base *unaff_r8;
  int *unaff_r9;
  int local_6c;
  int local_68;
  int local_64;
  int local_60;
  undefined1 auStack_5c [16];
  int *local_4c [2];
  code *local_44;
  undefined4 local_40;
  int local_3c;
  int local_38 [5];
  
  FUN_00547b10(&local_3c,&DAT_00961324,&DAT_00962624,"Invitations",
               "Lcom/google/android/gms/games/multiplayer/Invitations;");
  uVar2 = FUN_00548bac(*(int *)(param_1 + 0x28) + 0xf4);
  FUN_0054968c(auStack_5c,&local_3c,&DAT_009630a4,"getInvitationInboxIntent",
               "(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/Intent;",uVar2
              );
  FUN_00548ab0(&local_3c);
  local_68 = *(int *)(param_1 + 8);
  uVar2 = *(undefined4 *)(param_1 + 0x28);
  if (local_68 == 0) {
    iVar3 = std::__throw_bad_weak_ptr();
  }
  else {
    piVar4 = (int *)(local_68 + 4);
    unaff_r5 = &local_64;
    iVar3 = *(int *)(local_68 + 4);
    do {
      local_64 = iVar3;
      iVar5 = local_64;
      if (local_64 == 0) {
        std::__throw_bad_weak_ptr();
        piVar4 = extraout_r2;
        iVar5 = extraout_r3;
      }
      DataMemoryBarrier(0x1f);
      ExclusiveAccess(piVar4);
      iVar3 = *piVar4;
      bVar1 = false;
      if (iVar3 == local_64) {
        bVar1 = (bool)hasExclusiveAccess(piVar4);
        if (bVar1) {
          *piVar4 = iVar5 + 1;
        }
        DataMemoryBarrier(0x1f);
      }
    } while (!bVar1);
    local_6c = *(int *)(param_1 + 4);
    unaff_r9 = &local_6c;
    local_3c = local_6c;
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_38,(__shared_count *)&local_68);
    local_60 = local_38[0];
    local_64 = local_3c;
    local_3c = 0;
    local_38[0] = 0;
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_38);
    local_44 = (code *)0x0;
    unaff_r8 = (_Function_base *)local_4c;
    local_4c[0] = operator_new(8);
    iVar3 = local_60;
    *local_4c[0] = local_64;
    local_4c[0][1] = 0;
    local_60 = 0;
    local_4c[0][1] = iVar3;
    local_64 = 0;
    local_40 = 0x55bb89;
    local_44 = (code *)0x55b53f;
    iVar3 = FUN_0053eea8(uVar2,auStack_5c,unaff_r8);
  }
  std::_Function_base::~_Function_base(unaff_r8);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(unaff_r5 + 1));
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(unaff_r9 + 1));
  if (iVar3 == 0) {
    local_3c = -0xc;
    gpg::MultiplayerInvitation::MultiplayerInvitation((MultiplayerInvitation *)local_38);
    FUN_00520f48(param_1 + 0x30,&local_3c);
    gpg::MultiplayerInvitation::~MultiplayerInvitation((MultiplayerInvitation *)local_38);
  }
  FUN_00548ab0(auStack_5c);
  return;
}

// ---- FUN_0055ba3c  @ 0x55ba3c
undefined4 * FUN_0055ba3c(undefined4 *param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 uVar1;
  int iVar2;
  undefined4 local_74;
  undefined4 local_70;
  undefined4 local_6c;
  undefined4 local_68;
  undefined1 auStack_64 [16];
  undefined1 auStack_54 [16];
  MultiplayerInvitation aMStack_44 [16];
  undefined4 local_34;
  MultiplayerInvitation aMStack_30 [16];
  
  memset(&local_34,0,0x14);
  local_34 = 1;
  gpg::MultiplayerInvitation::MultiplayerInvitation(aMStack_30);
  FUN_00547b10(auStack_64,&DAT_00961a24,&DAT_009628a4,"EXTRA_INVITATION","Ljava/lang/String;");
  uVar1 = FUN_00548bac(auStack_64);
  iVar2 = FUN_00548c54(param_3,"hasExtra","(Ljava/lang/String;)Z",uVar1);
  if (iVar2 == 0) {
    local_34 = 0xfffffffe;
  }
  else {
    uVar1 = FUN_00548bac(auStack_64);
    FUN_0054968c(auStack_54,param_3,&DAT_00962f24,"getParcelableExtra",
                 "(Ljava/lang/String;)Landroid/os/Parcelable;",uVar1);
    FUN_0055cf50(&local_74,auStack_54);
    local_6c = local_74;
    local_68 = local_70;
    local_70 = 0;
    local_74 = 0;
    gpg::MultiplayerInvitation::MultiplayerInvitation(aMStack_44,&local_6c);
    gpg::MultiplayerInvitation::operator=(aMStack_30,aMStack_44);
    gpg::MultiplayerInvitation::~MultiplayerInvitation(aMStack_44);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_68);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_70);
    FUN_00548ab0(auStack_54);
  }
  *param_1 = local_34;
  gpg::MultiplayerInvitation::MultiplayerInvitation
            ((MultiplayerInvitation *)(param_1 + 1),aMStack_30);
  FUN_00548ab0(auStack_64);
  gpg::MultiplayerInvitation::~MultiplayerInvitation(aMStack_30);
  return param_1;
}

// ---- FUN_0055bb88  @ 0x55bb88
void FUN_0055bb88(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  undefined1 auStack_38 [16];
  undefined1 auStack_28 [16];
  
  param_1 = (undefined4 *)*param_1;
  FUN_00548b30(auStack_38);
  uVar1 = *param_1;
  FUN_00548b30(auStack_28,auStack_38);
  FUN_0055b71c(uVar1,auStack_28,param_3,param_4);
  FUN_00548ab0(auStack_28);
  FUN_00548ab0(auStack_38);
  return;
}

// ---- FUN_0055bbd8  @ 0x55bbd8
undefined4 * FUN_0055bbd8(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0055bbd8_1_00927c00;
  FUN_0051fa36(param_1 + 0xc);
  FUN_00533468(param_1);
  return param_1;
}

// ---- FUN_0055bbf8  @ 0x55bbf8
void * FUN_0055bbf8(void *param_1)

{
  FUN_0055bbd8();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0055bc0c  @ 0x55bc0c
undefined4 * FUN_0055bc0c(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0055bc0c_1_00927c58;
  FUN_0055bbd8();
  return param_1;
}

// ---- FUN_0055bc24  @ 0x55bc24
void * FUN_0055bc24(void *param_1)

{
  FUN_0055bc0c();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0055bc84  @ 0x55bc84
undefined4 * FUN_0055bc84(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0055bc84_1_00927cb8;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(param_1 + 0x16));
  FUN_0055bc0c(param_1);
  return param_1;
}

// ---- FUN_0055bca4  @ 0x55bca4
void * FUN_0055bca4(void *param_1)

{
  FUN_0055bc84();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0055bd40  @ 0x55bd40
function<void(std::function<void()>)> *
FUN_0055bd40(function<void(std::function<void()>)> *param_1,function *param_2)

{
  std::function<void(std::function<void()>)>::function(param_1,param_2);
  std::function<void(gpg::RealTimeMultiplayerManager::WaitingRoomUIResponse_const&)>::function
            ((function<void(gpg::RealTimeMultiplayerManager::WaitingRoomUIResponse_const&)> *)
             (param_1 + 0x10),param_2 + 0x10);
  return param_1;
}

// ---- FUN_0055bd64  @ 0x55bd64
undefined4 *
FUN_0055bd64(undefined4 *param_1,undefined4 *param_2,undefined4 param_3,RealTimeRoom *param_4,
            undefined4 param_5)

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
  FUN_0055bd40(auStack_68,param_3);
  local_78 = uVar1;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_74,(__shared_count *)a_Stack_7c);
  FUN_0055bd40(auStack_48,auStack_68);
  local_70 = local_78;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_6c,(__shared_count *)a_Stack_74);
  FUN_00533528(param_1,&local_70);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_6c);
  *param_1 = &PTR_FUN_0055bbd8_1_00927c00;
  FUN_0055bd40(param_1 + 0xc,auStack_48);
  FUN_0051fa36(auStack_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_74);
  *param_1 = &PTR_FUN_0055bc0c_1_00927c58;
  *(undefined1 *)(param_1 + 0x14) = 1;
  FUN_0051fa36(auStack_68);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_7c);
  *param_1 = &PTR_FUN_0055bc84_1_00927cb8;
  gpg::RealTimeRoom::RealTimeRoom((RealTimeRoom *)(param_1 + 0x15),param_4);
  param_1[0x17] = param_5;
  return param_1;
}

// ---- FUN_0055be5c  @ 0x55be5c
void FUN_0055be5c(int *param_1)

{
  undefined1 auStack_1c [8];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_14 [8];
  
  (**(code **)(*param_1 + 0x4c))(auStack_1c,param_1);
  FUN_00521180(param_1 + 0xc,auStack_1c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_14);
  return;
}

// ---- FUN_0055be90  @ 0x55be90
void FUN_0055be90(int *param_1,undefined4 param_2,undefined4 param_3,int param_4)

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
  RealTimeRoom aRStack_3c [4];
  undefined4 local_38;
  undefined4 local_34;
  _Any_data a_Stack_30 [8];
  undefined4 local_28;
  undefined4 local_24;
  
  piVar3 = param_1 + 0xc;
  if (param_4 == 0) {
    if ((char)param_1[0x14] == '\0') {
      local_40 = 1;
      gpg::RealTimeRoom::RealTimeRoom(aRStack_3c);
      FUN_00521180(piVar3,(_Any_data *)&local_40);
    }
    else {
      local_40 = 0xfffffffa;
      gpg::RealTimeRoom::RealTimeRoom(aRStack_3c);
      FUN_00521180(piVar3,(_Any_data *)&local_40);
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
    gpg::RealTimeRoom::RealTimeRoom(aRStack_3c);
    FUN_00521180(piVar3,(_Any_data *)&local_40);
  }
  else if (param_4 == 0x2715) {
    local_40 = 0xffffffee;
    gpg::RealTimeRoom::RealTimeRoom(aRStack_3c);
    FUN_00521180(piVar3,(_Any_data *)&local_40);
  }
  else {
    iVar4 = FUN_00548c48(param_2);
    if (iVar4 == 0) {
      (**(code **)(*param_1 + 0x50))((_Any_data *)&local_40,param_1,param_2);
      FUN_00521180(piVar3,(_Any_data *)&local_40);
    }
    else {
      local_40 = 0xfffffffe;
      gpg::RealTimeRoom::RealTimeRoom(aRStack_3c);
      FUN_00521180(piVar3,(_Any_data *)&local_40);
    }
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_38);
  return;
}

// ---- FUN_0055c018  @ 0x55c018
void FUN_0055c018(int param_1)

{
  bool bVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  int iVar4;
  int iVar5;
  int *piVar6;
  int *extraout_r2;
  int extraout_r3;
  int local_60;
  int local_58;
  int local_54;
  int local_50;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_4c [4];
  int local_48;
  undefined4 local_44 [3];
  int *local_38;
  int local_34;
  code *local_30;
  undefined4 local_2c;
  
  FUN_00547b10((_Function_base *)&local_38,&DAT_00961324,&DAT_00963224,"RealTimeMultiplayer",
               "Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;");
  uVar2 = FUN_00548bac(*(int *)(param_1 + 0x28) + 0xf4);
  local_54 = *(int *)(param_1 + 0x54);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_50,
             (__shared_count *)(param_1 + 0x58));
  local_48 = local_54;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_44,(__shared_count *)&local_50);
  iVar5 = local_48;
  local_58 = local_44[0];
  local_44[0] = 0;
  local_48 = 0;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_44);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_50);
  uVar3 = FUN_00548bac(iVar5 + 0x58);
  FUN_0054968c(&local_48,(_Function_base *)&local_38,&DAT_009630a4,"getWaitingRoomIntent",
               "(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/multiplayer/realtime/Room;I)Landroid/content/Intent;"
               ,uVar2,uVar3,*(undefined4 *)(param_1 + 0x5c));
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_58);
  FUN_00548ab0((_Function_base *)&local_38);
  local_58 = *(int *)(param_1 + 8);
  uVar2 = *(undefined4 *)(param_1 + 0x28);
  if (local_58 == 0) {
    iVar5 = std::__throw_bad_weak_ptr();
  }
  else {
    piVar6 = (int *)(local_58 + 4);
    local_60 = *(int *)(local_58 + 4);
    do {
      iVar5 = local_60;
      if (local_60 == 0) {
        std::__throw_bad_weak_ptr();
        piVar6 = extraout_r2;
        iVar5 = extraout_r3;
      }
      DataMemoryBarrier(0x1f);
      ExclusiveAccess(piVar6);
      iVar4 = *piVar6;
      bVar1 = false;
      if (iVar4 == local_60) {
        bVar1 = (bool)hasExclusiveAccess(piVar6);
        if (bVar1) {
          *piVar6 = iVar5 + 1;
        }
        DataMemoryBarrier(0x1f);
      }
      local_60 = iVar4;
    } while (!bVar1);
    local_38 = *(int **)(param_1 + 4);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_34,(__shared_count *)&local_58);
    local_50 = local_34;
    local_54 = (int)local_38;
    local_38 = (int *)0x0;
    local_34 = 0;
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_34);
    local_30 = (code *)0x0;
    local_38 = operator_new(8);
    iVar5 = local_50;
    *local_38 = local_54;
    local_38[1] = 0;
    local_50 = 0;
    local_38[1] = iVar5;
    local_2c = 0x55c365;
    local_54 = 0;
    local_30 = (code *)0x55bcfb;
    iVar5 = FUN_0053eea8(uVar2,&local_48,(_Function_base *)&local_38);
  }
  std::_Function_base::~_Function_base((_Function_base *)&local_38);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_50);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_58);
  if (iVar5 == 0) {
    local_54 = -0xc;
    gpg::RealTimeRoom::RealTimeRoom((RealTimeRoom *)&local_50);
    FUN_00521180(param_1 + 0x30,&local_54);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_4c);
  }
  FUN_00548ab0(&local_48);
  return;
}

// ---- FUN_0055c214  @ 0x55c214
undefined4 * FUN_0055c214(undefined4 *param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 uVar1;
  int iVar2;
  undefined4 local_64;
  undefined4 local_60;
  undefined4 local_5c;
  undefined4 local_58;
  RealTimeRoom aRStack_54 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_50 [4];
  undefined4 local_4c;
  RealTimeRoom aRStack_48 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_44 [4];
  undefined1 auStack_40 [16];
  undefined1 auStack_30 [16];
  
  memset(&local_4c,0,0xc);
  local_4c = 1;
  gpg::RealTimeRoom::RealTimeRoom(aRStack_48);
  FUN_00547b10(auStack_40,&DAT_00961a24,&DAT_009628a4,"EXTRA_ROOM","Ljava/lang/String;");
  uVar1 = FUN_00548bac(auStack_40);
  iVar2 = FUN_00548c54(param_3,"hasExtra","(Ljava/lang/String;)Z",uVar1);
  if (iVar2 == 0) {
    local_4c = 0xfffffffe;
  }
  else {
    uVar1 = FUN_00548bac(auStack_40);
    FUN_0054968c(auStack_30,param_3,&DAT_00962a24,"getParcelableExtra",
                 "(Ljava/lang/String;)Landroid/os/Parcelable;",uVar1);
    FUN_0055db98(&local_64,auStack_30);
    local_5c = local_64;
    local_58 = local_60;
    local_60 = 0;
    local_64 = 0;
    gpg::RealTimeRoom::RealTimeRoom(aRStack_54,&local_5c);
    gpg::RealTimeRoom::operator=(aRStack_48,aRStack_54);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_50);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_58);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_60);
    FUN_00548ab0(auStack_30);
  }
  *param_1 = local_4c;
  gpg::RealTimeRoom::RealTimeRoom((RealTimeRoom *)(param_1 + 1),aRStack_48);
  FUN_00548ab0(auStack_40);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_44);
  return param_1;
}

// ---- FUN_0055c364  @ 0x55c364
void FUN_0055c364(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  undefined1 auStack_38 [16];
  undefined1 auStack_28 [16];
  
  param_1 = (undefined4 *)*param_1;
  FUN_00548b30(auStack_38);
  uVar1 = *param_1;
  FUN_00548b30(auStack_28,auStack_38);
  FUN_0055be90(uVar1,auStack_28,param_3,param_4);
  FUN_00548ab0(auStack_28);
  FUN_00548ab0(auStack_38);
  return;
}

// ---- FUN_0055c3dc  @ 0x55c3dc
undefined4 * FUN_0055c3dc(undefined4 *param_1)

{
  *param_1 = &PTR___Sp_counted_base_1_009242b8;
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0055c43c  @ 0x55c43c
void FUN_0055c43c(void *param_1)

{
  if (param_1 != (void *)0x0) {
    operator_delete(param_1);
    return;
  }
  return;
}

// ---- FUN_0055c444  @ 0x55c444
void FUN_0055c444(int param_1)

{
  undefined4 *puVar1;
  
  puVar1 = *(undefined4 **)(param_1 + 0xc);
  (**(code **)*puVar1)(puVar1);
  operator_delete(puVar1);
  return;
}

// ---- FUN_0055c45a  @ 0x55c45a
void FUN_0055c45a(int param_1)

{
  undefined4 *puVar1;
  
  puVar1 = *(undefined4 **)(param_1 + 0xc);
  (**(code **)*puVar1)(puVar1);
  operator_delete(puVar1);
  return;
}

// ---- FUN_0055c470  @ 0x55c470
undefined4 * FUN_0055c470(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0055c470_1_00927d38;
  std::_Function_base::~_Function_base((_Function_base *)(param_1 + 1));
  *param_1 = &PTR_LAB_005333e4_1_00925210;
  return param_1;
}

// ---- FUN_0055c498  @ 0x55c498
void * FUN_0055c498(void *param_1)

{
  FUN_0055c470();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0055c4ce  @ 0x55c4ce
void FUN_0055c4ce(undefined4 *param_1,undefined4 *param_2)

{
  bool bVar1;
  int iVar2;
  int *piVar3;
  
  *param_1 = *param_2;
  iVar2 = param_2[1];
  param_1[1] = iVar2;
  if (iVar2 != 0) {
    piVar3 = (int *)(iVar2 + 8);
    DataMemoryBarrier(0x1f);
    do {
      ExclusiveAccess(piVar3);
      bVar1 = (bool)hasExclusiveAccess(piVar3);
    } while (!bVar1);
    *piVar3 = *piVar3 + 1;
    DataMemoryBarrier(0x1f);
  }
  return;
}

// ---- FUN_0055c4f4  @ 0x55c4f4
undefined4 *
FUN_0055c4f4(undefined4 *param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 *puVar1;
  undefined4 extraout_r2;
  undefined4 uVar2;
  
  param_1[2] = 0;
  puVar1 = operator_new(0x10);
  *puVar1 = *param_2;
  puVar1[1] = 0;
  uVar2 = param_2[1];
  param_2[1] = 0;
  puVar1[1] = uVar2;
  *param_2 = 0;
  FUN_0055c4ce(puVar1 + 2,param_2 + 2,extraout_r2,uVar2,param_4);
  *param_1 = puVar1;
  param_1[3] = &LAB_0055e418_1;
  param_1[2] = &LAB_0055c61c_1;
  return param_1;
}

// ---- FUN_0055c544  @ 0x55c544
undefined4 *
FUN_0055c544(undefined4 *param_1,undefined4 param_2,undefined4 *param_3,undefined4 param_4,
            undefined4 param_5,undefined4 param_6,MultiplayerParticipant *param_7,undefined4 param_8
            ,undefined4 *param_9,undefined4 *param_10,undefined4 param_11,undefined4 param_12,
            undefined4 param_13,undefined4 param_14,undefined4 param_15,undefined4 param_16,
            undefined4 param_17,undefined4 param_18)

{
  bool bVar1;
  undefined4 uVar2;
  int iVar3;
  int *piVar4;
  
  *param_1 = &DAT_00927d18;
  FUN_007c64e8(param_1 + 1);
  param_1[2] = *param_3;
  iVar3 = param_3[1];
  param_1[3] = iVar3;
  if (iVar3 != 0) {
    piVar4 = (int *)(iVar3 + 4);
    DataMemoryBarrier(0x1f);
    do {
      ExclusiveAccess(piVar4);
      bVar1 = (bool)hasExclusiveAccess(piVar4);
    } while (!bVar1);
    *piVar4 = *piVar4 + 1;
    DataMemoryBarrier(0x1f);
  }
  param_1[4] = param_5;
  param_1[5] = param_6;
  gpg::MultiplayerParticipant::MultiplayerParticipant
            ((MultiplayerParticipant *)(param_1 + 6),param_7);
  param_1[8] = param_8;
  param_1[9] = *param_9;
  *param_9 = &DAT_00972528;
  param_1[0xb] = 0;
  param_1[0xc] = 0;
  param_1[10] = 0;
  param_1[10] = *param_10;
  *param_10 = 0;
  uVar2 = param_1[0xb];
  param_1[0xb] = param_10[1];
  param_10[1] = uVar2;
  uVar2 = param_1[0xc];
  param_1[0xc] = param_10[2];
  param_10[2] = uVar2;
  param_1[0xd] = param_11;
  param_1[0xe] = param_12;
  param_1[0x10] = param_13;
  param_1[0x11] = param_14;
  param_1[0x12] = param_15;
  param_1[0x14] = param_17;
  param_1[0x15] = param_18;
  return param_1;
}

// ---- FUN_0055c608  @ 0x55c608
int FUN_0055c608(int param_1)

{
  std::__weak_count<(__gnu_cxx::_Lock_policy)2>::~__weak_count
            ((__weak_count<(__gnu_cxx::_Lock_policy)2> *)(param_1 + 0xc));
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(param_1 + 4));
  return param_1;
}

// ---- FUN_0055c8d0  @ 0x55c8d0
int FUN_0055c8d0(int param_1,int param_2)

{
  *(undefined4 *)(param_1 + 8) = 0;
  if (*(int *)(param_2 + 8) != 0) {
    *(undefined4 *)(param_1 + 0xc) = *(undefined4 *)(param_2 + 0xc);
    *(undefined4 *)(param_1 + 8) = *(undefined4 *)(param_2 + 8);
    (**(code **)(param_2 + 8))(param_1,param_2,2);
  }
  return param_1;
}

// ---- FUN_0055c8fc  @ 0x55c8fc
undefined4 * FUN_0055c8fc(undefined4 *param_1,_Any_data *param_2)

{
  undefined4 uVar1;
  
  *param_1 = &PTR_FUN_0055c470_1_00927d38;
  param_1[3] = 0;
  std::swap<std::_Any_data>(param_2,(_Any_data *)(param_1 + 1));
  uVar1 = *(undefined4 *)(param_2 + 8);
  *(undefined4 *)(param_2 + 8) = param_1[3];
  param_1[3] = uVar1;
  uVar1 = *(undefined4 *)(param_2 + 0xc);
  *(undefined4 *)(param_2 + 0xc) = param_1[4];
  param_1[4] = uVar1;
  return param_1;
}

// ---- FUN_0055c930  @ 0x55c930
void FUN_0055c930(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  void *pvVar1;
  void *local_34;
  _Function_base a_Stack_30 [20];
  
  FUN_0055c8d0(a_Stack_30,param_4);
  std::_Function_base::~_Function_base(a_Stack_30);
  FUN_0055c8d0(a_Stack_30,param_4);
  pvVar1 = operator_new(0x14);
  FUN_0055c8fc(pvVar1,a_Stack_30);
  local_34 = pvVar1;
  FUN_005453a8(param_1,param_2,param_3,&local_34);
  FUN_00544d78(&local_34);
  std::_Function_base::~_Function_base(a_Stack_30);
  return;
}

// ---- FUN_0055ca16  @ 0x55ca16
MultiplayerParticipant *
FUN_0055ca16(MultiplayerParticipant *param_1,MultiplayerParticipant *param_2,
            MultiplayerParticipant *param_3,undefined4 param_4)

{
  MultiplayerParticipant *pMVar1;
  undefined4 *puVar2;
  int iVar3;
  size_t __n;
  MultiplayerParticipant *this;
  MultiplayerParticipant *local_24;
  MultiplayerParticipant *local_20;
  undefined4 uStack_1c;
  
  local_24 = param_2;
  local_20 = param_3;
  uStack_1c = param_4;
  gpg::RealTimeRoom::Participants();
  pMVar1 = local_20;
  this = local_24;
  while( true ) {
    if (this == pMVar1) {
      std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>::~vector
                ((vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>> *)
                 &local_24);
      gpg::MultiplayerParticipant::MultiplayerParticipant(param_1);
      return param_1;
    }
    puVar2 = (undefined4 *)gpg::MultiplayerParticipant::Id(this);
    __n = *(size_t *)((int)*puVar2 + -0xc);
    if ((__n == *(size_t *)((int)*(void **)param_3 + -0xc)) &&
       (iVar3 = memcmp((void *)*puVar2,*(void **)param_3,__n), iVar3 == 0)) break;
    this = this + 8;
  }
  gpg::MultiplayerParticipant::MultiplayerParticipant(param_1,this);
  std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>::~vector
            ((vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>> *)
             &local_24);
  return param_1;
}

// ---- FUN_0055ca84  @ 0x55ca84
undefined4 *
FUN_0055ca84(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
            MultiplayerParticipant *param_5,undefined4 param_6,undefined4 param_7,int *param_8,
            undefined4 param_9,undefined4 param_10,undefined4 param_11,undefined4 param_12,
            undefined4 param_13,undefined4 param_14,undefined4 param_15,undefined4 param_16,
            undefined4 param_17)

{
  MultiplayerParticipant *this;
  uint uVar1;
  MultiplayerParticipant *pMVar2;
  MultiplayerParticipant *pMVar3;
  undefined1 auStack_4c [4];
  undefined1 auStack_48 [4];
  undefined4 local_44;
  undefined4 local_40;
  MultiplayerParticipant aMStack_3c [8];
  MultiplayerParticipant *local_34;
  MultiplayerParticipant *local_30;
  MultiplayerParticipant *local_2c;
  
  FUN_007c64e8(auStack_4c);
  local_44 = 0;
  local_40 = 0;
  gpg::MultiplayerParticipant::MultiplayerParticipant(aMStack_3c,param_5);
  FUN_007c64e8(auStack_48,param_7);
  local_34 = (MultiplayerParticipant *)0x0;
  uVar1 = param_8[1] - *param_8 >> 3;
  local_30 = (MultiplayerParticipant *)0x0;
  local_2c = (MultiplayerParticipant *)0x0;
  this = (MultiplayerParticipant *)0x0;
  if (uVar1 != 0) {
    if (0x1fffffff < uVar1) {
      FUN_007c4844();
    }
    this = operator_new(uVar1 * 8);
  }
  local_2c = this + uVar1 * 8;
  pMVar3 = (MultiplayerParticipant *)param_8[1];
  local_34 = this;
  local_30 = this;
  for (pMVar2 = (MultiplayerParticipant *)*param_8; pMVar2 != pMVar3; pMVar2 = pMVar2 + 8) {
    if (this != (MultiplayerParticipant *)0x0) {
      gpg::MultiplayerParticipant::MultiplayerParticipant(this,pMVar2);
    }
    this = this + 8;
  }
  local_30 = this;
  FUN_0055c544(param_1,auStack_4c,&local_44,param_16,param_3,param_4,aMStack_3c,param_6,auStack_48,
               (vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>> *)
               &local_34,param_9,param_10,param_11,param_12,param_13);
  std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>::~vector
            ((vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>> *)
             &local_34);
  FUN_007c5914(auStack_48);
  gpg::MultiplayerParticipant::~MultiplayerParticipant(aMStack_3c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_40);
  FUN_007c5914(auStack_4c);
  *param_1 = &DAT_00927d28;
  FUN_00548b30(param_1 + 0x16,param_17);
  return param_1;
}

// ---- FUN_0055cbd4  @ 0x55cbd4
undefined4 *
FUN_0055cbd4(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 *param_4,
            undefined4 param_5,undefined4 *param_6,MultiplayerParticipant *param_7,
            undefined4 *param_8,undefined4 *param_9,undefined4 *param_10,undefined4 *param_11,
            undefined4 *param_12,int *param_13,undefined4 *param_14,int param_15)

{
  void *pvVar1;
  undefined4 uVar2;
  undefined4 *puVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined4 local_4c;
  undefined4 local_48;
  MultiplayerParticipant aMStack_44 [8];
  undefined4 local_3c;
  undefined4 local_38;
  undefined4 local_34;
  undefined4 local_30;
  undefined4 local_2c;
  
  *param_1 = 0;
  param_1[1] = 0;
  pvVar1 = operator_new(0x58);
  *param_1 = pvVar1;
  local_48 = *param_4;
  *param_4 = &DAT_00972528;
  local_3c = 0;
  local_38 = 0;
  uVar2 = *param_6;
  uVar4 = param_6[1];
  gpg::MultiplayerParticipant::MultiplayerParticipant(aMStack_44,param_7);
  uVar5 = *param_8;
  local_4c = *param_9;
  *param_9 = &DAT_00972528;
  local_34 = *param_10;
  local_30 = param_10[1];
  *param_10 = 0;
  param_10[1] = 0;
  local_2c = param_10[2];
  param_10[2] = 0;
  if (pvVar1 != (void *)0x0) {
    FUN_0055c544(pvVar1,&local_48,&local_3c,*(undefined4 *)(param_15 + 4),uVar2,uVar4,aMStack_44,
                 uVar5,&local_4c,
                 (vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>> *)
                 &local_34,*param_11,*param_12,*param_13,*param_13 >> 0x1f,*param_14);
  }
  std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>::~vector
            ((vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>> *)
             &local_34);
  FUN_007c5914(&local_4c);
  gpg::MultiplayerParticipant::~MultiplayerParticipant(aMStack_44);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_38);
  FUN_007c5914(&local_48);
  uVar2 = *param_1;
  local_34 = 0;
  puVar3 = operator_new(0x14);
  if (puVar3 != (undefined4 *)0x0) {
    puVar3[1] = 1;
    puVar3[2] = 1;
    puVar3[3] = uVar2;
    *puVar3 = &PTR_LAB_0055c3b4_1_00927d70;
  }
  local_34 = param_1[1];
  param_1[1] = puVar3;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_34);
  return param_1;
}

// ---- FUN_0055cd7c  @ 0x55cd7c
undefined4 * FUN_0055cd7c(undefined4 *param_1,undefined4 *param_2)

{
  if ((param_2[1] == 0) || (*(int *)(param_2[1] + 4) == 0)) {
    *param_1 = 0;
    param_1[1] = 0;
  }
  else {
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(param_1 + 1),
               (__weak_count *)(param_2 + 1));
    *param_1 = *param_2;
  }
  return param_1;
}

// ---- FUN_0055cf50  @ 0x55cf50
undefined4 * FUN_0055cf50(undefined4 *param_1,undefined4 param_2)

{
  undefined4 uVar1;
  undefined1 auStack_9c [4];
  undefined1 auStack_98 [4];
  undefined1 *local_94;
  undefined4 local_90;
  undefined4 local_8c;
  undefined4 local_88;
  undefined4 local_84;
  undefined4 local_80;
  undefined4 local_7c;
  undefined8 local_78;
  undefined4 local_70;
  undefined4 uStack_6c;
  undefined4 local_64;
  undefined4 local_60;
  undefined4 local_5c;
  undefined4 local_58;
  MultiplayerParticipant aMStack_54 [8];
  undefined4 local_4c;
  undefined4 local_48;
  undefined4 local_44;
  undefined4 local_40;
  undefined4 local_3c;
  undefined1 auStack_38 [20];
  
  FUN_00549104(auStack_98,param_2,"getInvitationId");
  local_7c = 0;
  local_78 = FUN_00548d84(param_2,"getCreationTimestamp");
  FUN_0054968c(auStack_38,param_2,&DAT_009617a4,"getInviter",
               "()Lcom/google/android/gms/games/multiplayer/Participant;");
  FUN_0054f45c(&local_64,auStack_38);
  local_5c = local_64;
  local_58 = local_60;
  local_60 = 0;
  local_64 = 0;
  gpg::MultiplayerParticipant::MultiplayerParticipant(aMStack_54,&local_5c);
  local_90 = 1;
  local_94 = &DAT_00972528;
  local_44 = 0;
  local_40 = 0;
  local_3c = 0;
  local_8c = 0;
  local_88 = FUN_00548d1c(param_2,"getAvailableAutoMatchSlots");
  local_84 = 0;
  local_80 = FUN_00548d1c(param_2,"getVariant");
  local_70 = 0;
  uStack_6c = 0;
  FUN_0055cbd4(&local_4c,0,auStack_9c,auStack_98,&local_7c,&local_78,aMStack_54,&local_90,&local_94,
               (vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>> *)
               &local_44,&local_8c,&local_88,&local_84,&local_80,&local_70);
  uVar1 = local_48;
  *param_1 = local_4c;
  local_4c = 0;
  local_48 = 0;
  param_1[1] = uVar1;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_48);
  std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>::~vector
            ((vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>> *)
             &local_44);
  FUN_007c5914(&local_94);
  gpg::MultiplayerParticipant::~MultiplayerParticipant(aMStack_54);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_58);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_60);
  FUN_00548ab0(auStack_38);
  FUN_007c5914(auStack_98);
  return param_1;
}

// ---- FUN_0055d0e0  @ 0x55d0e0
undefined4 FUN_0055d0e0(undefined4 param_1,undefined4 *param_2,__shared_ptr *param_3)

{
  bool bVar1;
  undefined4 *puVar2;
  undefined4 *puVar3;
  undefined4 uVar4;
  int *piVar5;
  undefined4 uVar6;
  undefined4 **ppuVar7;
  undefined4 local_e0;
  int local_dc;
  undefined1 auStack_d8 [16];
  undefined4 *local_c8 [2];
  undefined1 *local_c0;
  undefined4 local_bc;
  undefined4 *local_b8 [2];
  undefined1 *local_b0;
  undefined4 local_ac;
  undefined4 *local_a8 [2];
  undefined1 *local_a0;
  undefined1 *local_9c;
  undefined4 *local_98 [2];
  undefined1 *local_90;
  undefined1 *local_8c;
  undefined4 *local_88 [2];
  undefined1 *local_80;
  undefined4 local_7c;
  undefined4 *local_78 [2];
  undefined1 *local_70;
  undefined4 local_6c;
  undefined4 *local_68 [2];
  undefined1 *local_60;
  undefined1 *local_5c;
  __shared_ptr<gpg::IRealTimeEventListener,(__gnu_cxx::_Lock_policy)2> a_Stack_58 [8];
  undefined1 auStack_50 [8];
  _Function_base a_Stack_48 [8];
  undefined1 auStack_40 [8];
  undefined4 local_38;
  undefined4 local_34;
  undefined1 auStack_30 [4];
  __weak_count<(__gnu_cxx::_Lock_policy)2> a_Stack_2c [8];
  
  FUN_00545074(auStack_d8);
  local_e0 = *param_2;
  local_dc = param_2[1];
  if (local_dc != 0) {
    piVar5 = (int *)(local_dc + 8);
    DataMemoryBarrier(0x1f);
    do {
      ExclusiveAccess(piVar5);
      bVar1 = (bool)hasExclusiveAccess(piVar5);
    } while (!bVar1);
    *piVar5 = *piVar5 + 1;
    DataMemoryBarrier(0x1f);
  }
  uVar6 = *(undefined4 *)param_3;
  std::__shared_ptr<gpg::IRealTimeEventListener,(__gnu_cxx::_Lock_policy)2>::__shared_ptr
            ((__shared_ptr<gpg::IRealTimeEventListener,(__gnu_cxx::_Lock_policy)2> *)&local_38,
             param_3);
  FUN_0055c4ce(auStack_30,&local_e0);
  local_c0 = (undefined1 *)0x0;
  puVar2 = operator_new(0x10);
  uVar4 = local_34;
  *puVar2 = local_38;
  puVar2[1] = 0;
  local_34 = 0;
  puVar2[1] = uVar4;
  local_38 = 0;
  FUN_0055c4ce(puVar2 + 2,auStack_30,uVar4,puVar2,puVar2);
  local_bc = 0x55d669;
  local_c0 = &LAB_0055c666_1;
  local_c8[0] = puVar2;
  FUN_00537340(auStack_d8,uVar6,0x54640d,(_Function_base *)local_c8);
  std::_Function_base::~_Function_base((_Function_base *)local_c8);
  std::__weak_count<(__gnu_cxx::_Lock_policy)2>::~__weak_count(a_Stack_2c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_34);
  uVar6 = *(undefined4 *)param_3;
  std::__shared_ptr<gpg::IRealTimeEventListener,(__gnu_cxx::_Lock_policy)2>::__shared_ptr
            ((__shared_ptr<gpg::IRealTimeEventListener,(__gnu_cxx::_Lock_policy)2> *)&local_38,
             param_3);
  FUN_0055c4ce(auStack_30,&local_e0);
  local_b0 = (undefined1 *)0x0;
  puVar2 = operator_new(0x10);
  uVar4 = local_34;
  *puVar2 = local_38;
  puVar2[1] = 0;
  local_34 = 0;
  puVar2[1] = uVar4;
  local_38 = 0;
  FUN_0055c4ce(puVar2 + 2,auStack_30,uVar4,puVar2,puVar2);
  local_ac = 0x55e0b1;
  local_b0 = &LAB_0055c6b8_1;
  local_b8[0] = puVar2;
  FUN_00537340(auStack_d8,uVar6,0x546449,(_Function_base *)local_b8);
  std::_Function_base::~_Function_base((_Function_base *)local_b8);
  std::__weak_count<(__gnu_cxx::_Lock_policy)2>::~__weak_count(a_Stack_2c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_34);
  uVar6 = *(undefined4 *)param_3;
  std::__shared_ptr<gpg::IRealTimeEventListener,(__gnu_cxx::_Lock_policy)2>::__shared_ptr
            ((__shared_ptr<gpg::IRealTimeEventListener,(__gnu_cxx::_Lock_policy)2> *)&local_38,
             param_3);
  FUN_0055c4ce(auStack_30,&local_e0);
  local_a0 = (undefined1 *)0x0;
  puVar2 = operator_new(0x10);
  uVar4 = local_34;
  *puVar2 = local_38;
  puVar2[1] = 0;
  local_34 = 0;
  puVar2[1] = uVar4;
  local_38 = 0;
  FUN_0055c4ce(puVar2 + 2,auStack_30,uVar4,puVar2,puVar2);
  local_9c = &LAB_0055e15a_1;
  local_a0 = &LAB_0055c75c_1;
  local_a8[0] = puVar2;
  FUN_00537340(auStack_d8,uVar6,0x546485,(_Function_base *)local_a8);
  std::_Function_base::~_Function_base((_Function_base *)local_a8);
  std::__weak_count<(__gnu_cxx::_Lock_policy)2>::~__weak_count(a_Stack_2c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_34);
  std::__shared_ptr<gpg::IRealTimeEventListener,(__gnu_cxx::_Lock_policy)2>::__shared_ptr
            ((__shared_ptr<gpg::IRealTimeEventListener,(__gnu_cxx::_Lock_policy)2> *)&local_38,
             param_3);
  FUN_0055c4ce(auStack_30,&local_e0);
  local_90 = (undefined1 *)0x0;
  ppuVar7 = local_98;
  puVar3 = operator_new(0x10);
  uVar4 = local_34;
  *puVar3 = local_38;
  puVar3[1] = 0;
  local_34 = 0;
  puVar3[1] = uVar4;
  local_38 = 0;
  FUN_0055c4ce(puVar3 + 2,auStack_30);
  local_8c = &LAB_0055e204_1;
  local_90 = &LAB_0055c800_1;
  local_98[0] = puVar3;
  std::__weak_count<(__gnu_cxx::_Lock_policy)2>::~__weak_count(a_Stack_2c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_34);
  FUN_0055c930(auStack_d8,*(undefined4 *)param_3,0x545ae9,local_98,puVar2,ppuVar7);
  FUN_0055c930(auStack_d8,*(undefined4 *)param_3,0x545b55,local_98);
  uVar6 = *(undefined4 *)param_3;
  std::__shared_ptr<gpg::IRealTimeEventListener,(__gnu_cxx::_Lock_policy)2>::__shared_ptr
            ((__shared_ptr<gpg::IRealTimeEventListener,(__gnu_cxx::_Lock_policy)2> *)&local_38,
             param_3);
  FUN_0055c4ce(auStack_30,&local_e0);
  local_80 = (undefined1 *)0x0;
  puVar2 = operator_new(0x10);
  uVar4 = local_34;
  *puVar2 = local_38;
  puVar2[1] = 0;
  local_34 = 0;
  puVar2[1] = uVar4;
  local_38 = 0;
  FUN_0055c4ce(puVar2 + 2,auStack_30,uVar4,puVar2,puVar2);
  local_7c = 0x55d761;
  local_80 = &LAB_0055c70a_1;
  local_88[0] = puVar2;
  FUN_00537340(auStack_d8,uVar6,0x5464c1,(_Function_base *)local_88);
  std::_Function_base::~_Function_base((_Function_base *)local_88);
  std::__weak_count<(__gnu_cxx::_Lock_policy)2>::~__weak_count(a_Stack_2c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_34);
  uVar6 = *(undefined4 *)param_3;
  std::__shared_ptr<gpg::IRealTimeEventListener,(__gnu_cxx::_Lock_policy)2>::__shared_ptr
            ((__shared_ptr<gpg::IRealTimeEventListener,(__gnu_cxx::_Lock_policy)2> *)&local_38,
             param_3);
  FUN_0055c4ce(auStack_30,&local_e0);
  local_70 = (undefined1 *)0x0;
  puVar2 = operator_new(0x10);
  uVar4 = local_34;
  *puVar2 = local_38;
  puVar2[1] = 0;
  local_34 = 0;
  puVar2[1] = uVar4;
  local_38 = 0;
  FUN_0055c4ce(puVar2 + 2,auStack_30,uVar4,puVar2,puVar2);
  local_6c = 0x55d81d;
  local_70 = &LAB_0055c852_1;
  local_78[0] = puVar2;
  FUN_00537340(auStack_d8,uVar6,0x5464fd,(_Function_base *)local_78);
  std::_Function_base::~_Function_base((_Function_base *)local_78);
  std::__weak_count<(__gnu_cxx::_Lock_policy)2>::~__weak_count(a_Stack_2c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_34);
  std::__shared_ptr<gpg::IRealTimeEventListener,(__gnu_cxx::_Lock_policy)2>::__shared_ptr
            ((__shared_ptr<gpg::IRealTimeEventListener,(__gnu_cxx::_Lock_policy)2> *)&local_38,
             param_3);
  FUN_0055c4ce(auStack_30,&local_e0);
  local_60 = (undefined1 *)0x0;
  puVar2 = operator_new(0x10);
  uVar4 = local_34;
  *puVar2 = local_38;
  puVar2[1] = 0;
  local_34 = 0;
  puVar2[1] = uVar4;
  local_38 = 0;
  FUN_0055c4ce(puVar2 + 2,auStack_30);
  local_5c = &LAB_0055e2d0_1;
  local_60 = &LAB_0055c7ae_1;
  local_68[0] = puVar2;
  std::__weak_count<(__gnu_cxx::_Lock_policy)2>::~__weak_count(a_Stack_2c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_34);
  FUN_0055c930(auStack_d8,*(undefined4 *)param_3,0x545939,(_Function_base *)local_68);
  FUN_0055c930(auStack_d8,*(undefined4 *)param_3,0x5459a5,(_Function_base *)local_68);
  FUN_0055c930(auStack_d8,*(undefined4 *)param_3,0x545a11,(_Function_base *)local_68);
  FUN_0055c930(auStack_d8,*(undefined4 *)param_3,0x545a7d,(_Function_base *)local_68);
  std::__shared_ptr<gpg::IRealTimeEventListener,(__gnu_cxx::_Lock_policy)2>::__shared_ptr
            (a_Stack_58,param_3);
  FUN_0055c4ce(auStack_50,&local_e0);
  uVar4 = *(undefined4 *)param_3;
  std::__shared_ptr<gpg::IRealTimeEventListener,(__gnu_cxx::_Lock_policy)2>::__shared_ptr
            ((__shared_ptr<gpg::IRealTimeEventListener,(__gnu_cxx::_Lock_policy)2> *)&local_38,
             (__shared_ptr *)a_Stack_58);
  FUN_0055c4ce(auStack_30,auStack_50);
  FUN_0055c4f4(a_Stack_48,
               (__shared_ptr<gpg::IRealTimeEventListener,(__gnu_cxx::_Lock_policy)2> *)&local_38);
  FUN_00537340(auStack_d8,uVar4,0x546539,a_Stack_48);
  std::_Function_base::~_Function_base(a_Stack_48);
  FUN_0055c608((__shared_ptr<gpg::IRealTimeEventListener,(__gnu_cxx::_Lock_policy)2> *)&local_38);
  uVar4 = *(undefined4 *)param_3;
  std::__shared_ptr<gpg::IRealTimeEventListener,(__gnu_cxx::_Lock_policy)2>::__shared_ptr
            ((__shared_ptr<gpg::IRealTimeEventListener,(__gnu_cxx::_Lock_policy)2> *)a_Stack_48,
             (__shared_ptr *)a_Stack_58);
  FUN_0055c4ce(auStack_40,auStack_50);
  FUN_0055c4f4((__shared_ptr<gpg::IRealTimeEventListener,(__gnu_cxx::_Lock_policy)2> *)&local_38,
               a_Stack_48);
  FUN_00537340(auStack_d8,uVar4,0x546575,
               (__shared_ptr<gpg::IRealTimeEventListener,(__gnu_cxx::_Lock_policy)2> *)&local_38);
  std::_Function_base::~_Function_base((_Function_base *)&local_38);
  FUN_0055c608(a_Stack_48);
  FUN_00548b30(param_1,auStack_d8);
  FUN_0055c608(a_Stack_58);
  std::_Function_base::~_Function_base((_Function_base *)local_68);
  std::_Function_base::~_Function_base((_Function_base *)local_98);
  std::__weak_count<(__gnu_cxx::_Lock_policy)2>::~__weak_count
            ((__weak_count<(__gnu_cxx::_Lock_policy)2> *)&local_dc);
  FUN_00548ab0(auStack_d8);
  return param_1;
}

// ---- FUN_0055d668  @ 0x55d668
void FUN_0055d668(undefined4 *param_1)

{
  undefined4 uVar1;
  int iVar2;
  int *piVar3;
  code *pcVar4;
  undefined1 auStack_60 [4];
  int local_5c;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_58 [4];
  RealTimeRoom aRStack_54 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_50 [4];
  MultiplayerParticipant aMStack_4c [8];
  void *local_44 [3];
  undefined1 auStack_38 [20];
  
  param_1 = (undefined4 *)*param_1;
  FUN_00548b30(auStack_38);
  FUN_0055cd7c(&local_5c,param_1 + 2);
  if (local_5c != 0) {
    uVar1 = FUN_00536880();
    FUN_00558f8e(aRStack_54,uVar1,*param_1);
    iVar2 = gpg::RealTimeRoom::Valid(aRStack_54);
    if (iVar2 != 0) {
      piVar3 = (int *)*param_1;
      pcVar4 = *(code **)(*piVar3 + 0x1c);
      FUN_00549104(auStack_60,auStack_38,"getSenderParticipantId");
      FUN_0055ca16(aMStack_4c,aRStack_54,auStack_60);
      FUN_005497e4(local_44,auStack_38,"getMessageData");
      uVar1 = FUN_00548cb4(auStack_38,"isReliable");
      (*pcVar4)(piVar3,aRStack_54,aMStack_4c,local_44,uVar1);
      if (local_44[0] != (void *)0x0) {
        operator_delete(local_44[0]);
      }
      gpg::MultiplayerParticipant::~MultiplayerParticipant(aMStack_4c);
      FUN_007c5914(auStack_60);
    }
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_50);
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_58);
  FUN_00548ab0(auStack_38);
  return;
}

// ---- FUN_0055d760  @ 0x55d760
void FUN_0055d760(undefined4 *param_1)

{
  undefined4 uVar1;
  int iVar2;
  int *piVar3;
  code *pcVar4;
  undefined1 auStack_4c [4];
  int local_48;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_44 [4];
  RealTimeRoom aRStack_40 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_3c [4];
  MultiplayerParticipant aMStack_38 [8];
  undefined1 auStack_30 [16];
  
  param_1 = (undefined4 *)*param_1;
  FUN_00548b30(auStack_30);
  FUN_0055cd7c(&local_48,param_1 + 2);
  if (local_48 != 0) {
    uVar1 = FUN_00536880();
    FUN_00558f8e(aRStack_40,uVar1,*param_1);
    iVar2 = gpg::RealTimeRoom::Valid(aRStack_40);
    if (iVar2 != 0) {
      piVar3 = (int *)*param_1;
      pcVar4 = *(code **)(*piVar3 + 0x10);
      FUN_00549104(auStack_4c,auStack_30,"toString");
      FUN_0055ca16(aMStack_38,aRStack_40,auStack_4c);
      (*pcVar4)(piVar3,aRStack_40,aMStack_38);
      gpg::MultiplayerParticipant::~MultiplayerParticipant(aMStack_38);
      FUN_007c5914(auStack_4c);
    }
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_3c);
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_44);
  FUN_00548ab0(auStack_30);
  return;
}

// ---- FUN_0055d81c  @ 0x55d81c
void FUN_0055d81c(undefined4 *param_1)

{
  undefined4 uVar1;
  int iVar2;
  int *piVar3;
  code *pcVar4;
  undefined1 auStack_4c [4];
  int local_48;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_44 [4];
  RealTimeRoom aRStack_40 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_3c [4];
  MultiplayerParticipant aMStack_38 [8];
  undefined1 auStack_30 [16];
  
  param_1 = (undefined4 *)*param_1;
  FUN_00548b30(auStack_30);
  FUN_0055cd7c(&local_48,param_1 + 2);
  if (local_48 != 0) {
    uVar1 = FUN_00536880();
    FUN_00558f8e(aRStack_40,uVar1,*param_1);
    iVar2 = gpg::RealTimeRoom::Valid(aRStack_40);
    if (iVar2 != 0) {
      piVar3 = (int *)*param_1;
      pcVar4 = *(code **)(*piVar3 + 0x10);
      FUN_00549104(auStack_4c,auStack_30,"toString");
      FUN_0055ca16(aMStack_38,aRStack_40,auStack_4c);
      (*pcVar4)(piVar3,aRStack_40,aMStack_38);
      gpg::MultiplayerParticipant::~MultiplayerParticipant(aMStack_38);
      FUN_007c5914(auStack_4c);
    }
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_3c);
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_44);
  FUN_00548ab0(auStack_30);
  return;
}

// ---- FUN_0055d90a  @ 0x55d90a
undefined4 FUN_0055d90a(undefined4 param_1)

{
  undefined1 auStack_20 [20];
  
  FUN_00548b18(auStack_20);
  FUN_00548b30(param_1,auStack_20);
  FUN_00548ab0(auStack_20);
  return param_1;
}

// ---- FUN_0055d9ec  @ 0x55d9ec
undefined4 *
FUN_0055d9ec(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 *param_4,
            undefined4 *param_5,MultiplayerParticipant *param_6,undefined4 *param_7,
            undefined4 *param_8,undefined4 *param_9,undefined4 *param_10,undefined4 *param_11,
            undefined4 *param_12,undefined4 *param_13,undefined4 param_14,undefined4 param_15)

{
  void *pvVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 *puVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  undefined4 uVar8;
  undefined4 uVar9;
  undefined4 uVar10;
  undefined4 local_54;
  undefined4 local_50;
  MultiplayerParticipant aMStack_4c [8];
  undefined4 local_44;
  undefined4 local_40;
  undefined4 local_3c;
  undefined4 local_38 [5];
  
  *param_1 = 0;
  param_1[1] = 0;
  pvVar1 = operator_new(0x68);
  *param_1 = pvVar1;
  local_50 = *param_4;
  *param_4 = &DAT_00972528;
  uVar2 = *param_5;
  uVar5 = param_5[1];
  gpg::MultiplayerParticipant::MultiplayerParticipant(aMStack_4c,param_6);
  uVar10 = *param_7;
  local_54 = *param_8;
  *param_8 = &DAT_00972528;
  local_44 = *param_9;
  local_40 = param_9[1];
  *param_9 = 0;
  param_9[1] = 0;
  local_3c = param_9[2];
  param_9[2] = 0;
  uVar7 = *param_10;
  uVar8 = *param_11;
  uVar3 = *param_12;
  uVar6 = param_12[1];
  uVar9 = *param_13;
  FUN_00548b30((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_38,param_15);
  if (pvVar1 != (void *)0x0) {
    FUN_0055ca84(pvVar1,&local_50,uVar2,uVar5,aMStack_4c,uVar10,&local_54,
                 (vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>> *)
                 &local_44,uVar7,uVar8,uVar3,uVar6,uVar9);
  }
  FUN_00548ab0((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_38);
  std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>::~vector
            ((vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>> *)
             &local_44);
  FUN_007c5914(&local_54);
  gpg::MultiplayerParticipant::~MultiplayerParticipant(aMStack_4c);
  FUN_007c5914(&local_50);
  uVar2 = *param_1;
  local_38[0] = 0;
  puVar4 = operator_new(0x14);
  if (puVar4 != (undefined4 *)0x0) {
    puVar4[1] = 1;
    puVar4[2] = 1;
    puVar4[3] = uVar2;
    *puVar4 = &PTR_LAB_0055c3c8_1_00927d50;
  }
  local_38[0] = param_1[1];
  param_1[1] = puVar4;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_38);
  return param_1;
}

// ---- FUN_0055db98  @ 0x55db98
undefined4 * FUN_0055db98(undefined4 *param_1,undefined4 param_2)

{
  uint uVar1;
  MultiplayerParticipant *pMVar2;
  int iVar3;
  int iVar4;
  undefined4 uVar5;
  undefined *puVar6;
  undefined *puVar7;
  uint uVar8;
  undefined1 auStack_100 [4];
  undefined1 auStack_fc [4];
  undefined1 auStack_f8 [4];
  undefined4 local_f4;
  undefined4 local_f0;
  undefined4 local_ec;
  uint local_e8;
  undefined4 local_e4;
  undefined8 local_e0;
  MultiplayerParticipant aMStack_d4 [8];
  undefined4 local_cc;
  undefined4 local_c8;
  MultiplayerParticipant *local_c4;
  MultiplayerParticipant *local_c0;
  MultiplayerParticipant *local_bc;
  undefined1 auStack_b8 [16];
  int local_a8;
  int iStack_a4;
  undefined8 local_98 [2];
  undefined1 auStack_88 [16];
  undefined1 auStack_78 [16];
  undefined1 auStack_68 [16];
  undefined1 auStack_58 [16];
  uint local_48;
  undefined4 local_44;
  undefined4 local_40;
  undefined4 local_3c;
  undefined4 local_38;
  undefined4 local_34;
  undefined4 local_30;
  undefined4 local_2c;
  pair apStack_28 [4];
  
  FUN_0054968c(auStack_b8,param_2,&DAT_00961824,"getParticipantIds","()Ljava/util/ArrayList;");
  uVar1 = FUN_00548d1c(auStack_b8,&DAT_00806800);
  local_c4 = (MultiplayerParticipant *)0x0;
  local_c0 = (MultiplayerParticipant *)0x0;
  local_bc = (MultiplayerParticipant *)0x0;
  if (uVar1 < 0x20000000) {
    if (uVar1 != 0) {
      pMVar2 = operator_new(uVar1 * 8);
      std::__uninitialized_copy<false>::
      __uninit_copy<gpg::MultiplayerParticipant*,gpg::MultiplayerParticipant*>
                ((MultiplayerParticipant *)0x0,(MultiplayerParticipant *)0x0,pMVar2);
      std::_Destroy_aux<false>::__destroy<gpg::MultiplayerParticipant*>(local_c4,local_c0);
      FUN_0055c43c(local_c4);
      local_bc = pMVar2 + uVar1 * 8;
      local_c0 = pMVar2;
    }
    local_c4 = local_c0;
    for (uVar8 = 0; uVar8 != uVar1; uVar8 = uVar8 + 1) {
      FUN_0054968c(&local_a8,auStack_b8,&DAT_009628a4,&DAT_0080598d,"(I)Ljava/lang/Object;",uVar8);
      uVar5 = FUN_00548bac(&local_a8);
      FUN_0054968c(local_98,param_2,&DAT_009617a4,"getParticipant",
                   "(Ljava/lang/String;)Lcom/google/android/gms/games/multiplayer/Participant;",
                   uVar5);
      FUN_0054f45c(&local_e8,local_98);
      local_48 = local_e8;
      local_44 = local_e4;
      local_e4 = 0;
      local_e8 = 0;
      gpg::MultiplayerParticipant::MultiplayerParticipant
                ((MultiplayerParticipant *)&local_e0,&local_48);
      if (local_c0 == local_bc) {
        std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>::
        _M_emplace_back_aux<gpg::MultiplayerParticipant>
                  ((vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>
                    *)&local_c4,(MultiplayerParticipant *)&local_e0);
      }
      else {
        if (local_c0 != (MultiplayerParticipant *)0x0) {
          gpg::MultiplayerParticipant::MultiplayerParticipant
                    (local_c0,(MultiplayerParticipant *)&local_e0);
        }
        local_c0 = local_c0 + 8;
      }
      gpg::MultiplayerParticipant::~MultiplayerParticipant((MultiplayerParticipant *)&local_e0);
      std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
                ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_44);
      std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
                ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_e4);
      FUN_00548ab0(local_98);
      FUN_00548ab0(&local_a8);
    }
    FUN_0054968c(auStack_88,param_2,&DAT_009639a4,"getAutoMatchCriteria","()Landroid/os/Bundle;");
    FUN_00547b10(auStack_78,&DAT_00961a24,&DAT_009628a4,"EXTRA_MIN_AUTOMATCH_PLAYERS",
                 "Ljava/lang/String;");
    FUN_00547b10(auStack_68,&DAT_00961a24,&DAT_009628a4,"EXTRA_MAX_AUTOMATCH_PLAYERS",
                 "Ljava/lang/String;");
    FUN_00547b10(auStack_58,&DAT_00961a24,&DAT_009628a4,"EXTRA_EXCLUSIVE_BIT_MASK",
                 "Ljava/lang/String;");
    FUN_00549104(auStack_fc,param_2,"getRoomId");
    local_e0 = FUN_00548d84(param_2,"getCreationTimestamp");
    FUN_0054f6ec(aMStack_d4,param_2,"getCreatorId");
    iVar3 = FUN_00548d1c(param_2,"getStatus");
    uVar1 = DAT_009643f0 & 1;
    if (uVar1 == 0) {
      iVar4 = __cxa_guard_acquire();
      if (iVar4 != 0) {
        local_44 = 1;
        local_40 = 1;
        local_3c = 3;
        local_30 = 3;
        local_2c = 4;
        local_38 = 2;
        local_34 = 2;
        local_48 = uVar1;
        memset(&DAT_009643dc,0,0x10);
        DAT_009643e4 = &DAT_009643dc;
        DAT_009643e8 = &DAT_009643dc;
        DAT_009643ec = uVar1;
        std::
        _Rb_tree<int,std::pair<int_const,gpg::RealTimeRoomStatus>,std::_Select1st<std::pair<int_const,gpg::RealTimeRoomStatus>>,std::less<int>,std::allocator<std::pair<int_const,gpg::RealTimeRoomStatus>>>
        ::_M_insert_unique<std::pair<int_const,gpg::RealTimeRoomStatus>const*>
                  ((_Rb_tree<int,std::pair<int_const,gpg::RealTimeRoomStatus>,std::_Select1st<std::pair<int_const,gpg::RealTimeRoomStatus>>,std::less<int>,std::allocator<std::pair<int_const,gpg::RealTimeRoomStatus>>>
                    *)&DAT_009643d8,(pair *)&local_48,apStack_28);
        __cxa_guard_release(&DAT_009643f0);
        FUN_007985bc(&DAT_009643d8,0x55c8c3,&DAT_00943000);
      }
    }
    puVar6 = &DAT_009643dc;
    puVar7 = DAT_009643e0;
    while (puVar7 != (undefined *)0x0) {
      if (*(int *)(puVar7 + 0x10) < iVar3) {
        puVar7 = *(undefined **)(puVar7 + 0xc);
      }
      else {
        puVar6 = puVar7;
        puVar7 = *(undefined **)(puVar7 + 8);
      }
    }
    if ((puVar6 == &DAT_009643dc) || (iVar3 < *(int *)(puVar6 + 0x10))) {
      FUN_005166ae(4,"Could not convert RealTimeRoomStatus from Java response.");
      local_f4 = 5;
    }
    else {
      local_f4 = *(undefined4 *)(puVar6 + 0x14);
    }
    FUN_00549104(auStack_f8,param_2,"getDescription");
    iVar3 = FUN_00548c48(auStack_88);
    if (iVar3 == 0) {
      uVar5 = FUN_00548bac(auStack_78);
      local_f0 = FUN_00548cc0(auStack_88,"getInt","(Ljava/lang/String;)I",uVar5);
    }
    else {
      local_f0 = 0;
    }
    iVar3 = FUN_00548c48(auStack_88);
    if (iVar3 == 0) {
      uVar5 = FUN_00548bac(auStack_68);
      local_ec = FUN_00548cc0(auStack_88,"getInt","(Ljava/lang/String;)I",uVar5);
    }
    else {
      local_ec = 0;
    }
    iVar3 = FUN_00548c48(auStack_88);
    if (iVar3 == 0) {
      uVar5 = FUN_00548bac(auStack_58);
      local_98[0] = FUN_00548d28(auStack_88,"getLong","(Ljava/lang/String;)J",uVar5);
    }
    else {
      local_98[0] = 0;
    }
    local_e8 = FUN_00548d1c(param_2,"getVariant");
    local_a8 = FUN_00548d1c(param_2,"getAutoMatchWaitEstimateSeconds");
    iStack_a4 = local_a8 >> 0x1f;
    FUN_00549380(&local_48,param_2);
    FUN_0055d9ec(&local_cc,0,auStack_100,auStack_fc,&local_e0,aMStack_d4,&local_f4,auStack_f8,
                 (vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>> *)
                 &local_c4,&local_f0,&local_ec,local_98,&local_e8,&local_a8,&local_48);
    param_1[1] = local_c8;
    *param_1 = local_cc;
    local_c8 = 0;
    local_cc = 0;
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_c8);
    FUN_00548ab0(&local_48);
    FUN_007c5914(auStack_f8);
    gpg::MultiplayerParticipant::~MultiplayerParticipant(aMStack_d4);
    FUN_007c5914(auStack_fc);
    FUN_00548ab0(auStack_58);
    FUN_00548ab0(auStack_68);
    FUN_00548ab0(auStack_78);
    FUN_00548ab0(auStack_88);
    std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>::~vector
              ((vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>> *)
               &local_c4);
    FUN_00548ab0(auStack_b8);
    return param_1;
  }
                    /* WARNING: Subroutine does not return */
  FUN_007c49e8("vector::reserve");
}

// ---- FUN_0055e0b0  @ 0x55e0b0
void FUN_0055e0b0(undefined4 *param_1)

{
  undefined4 uVar1;
  int *piVar2;
  int local_50;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_4c [4];
  RealTimeRoom aRStack_48 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_44 [4];
  undefined4 local_40;
  undefined4 local_3c;
  undefined4 local_38;
  undefined4 local_34;
  undefined1 auStack_30 [20];
  
  param_1 = (undefined4 *)*param_1;
  FUN_00548b30(auStack_30);
  FUN_0055cd7c(&local_50,param_1 + 2);
  if (local_50 != 0) {
    FUN_0055db98(&local_40,auStack_30);
    local_38 = local_40;
    local_34 = local_3c;
    local_3c = 0;
    local_40 = 0;
    gpg::RealTimeRoom::RealTimeRoom(aRStack_48,&local_38);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_34);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_3c);
    uVar1 = FUN_00536880(local_50);
    FUN_00558fd4(uVar1,aRStack_48);
    piVar2 = (int *)*param_1;
    (**(code **)(*piVar2 + 0xc))(piVar2,aRStack_48);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_44);
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_4c);
  FUN_00548ab0(auStack_30);
  return;
}

// ---- FUN_0055e4c2  @ 0x55e4c2
void FUN_0055e4c2(int *param_1)

{
  if (param_1 != (int *)0x0) {
    (**(code **)(*param_1 + 4))();
  }
  return;
}

// ---- FUN_0055e4ce  @ 0x55e4ce
void FUN_0055e4ce(int *param_1)

{
  if (param_1 != (int *)0x0) {
    (**(code **)(*param_1 + 4))();
  }
  return;
}

// ---- FUN_0055e51c  @ 0x55e51c
undefined4 * FUN_0055e51c(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0055e51c_1_00927d90;
  FUN_005267ea(param_1 + 0xc);
  FUN_00533468(param_1);
  return param_1;
}

// ---- FUN_0055e53c  @ 0x55e53c
void * FUN_0055e53c(void *param_1)

{
  FUN_0055e51c();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0055e550  @ 0x55e550
undefined4 * FUN_0055e550(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0055e550_1_00927de8;
  FUN_0055e51c();
  return param_1;
}

// ---- FUN_0055e568  @ 0x55e568
void * FUN_0055e568(void *param_1)

{
  FUN_0055e550();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0055e57c  @ 0x55e57c
undefined4 * FUN_0055e57c(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0055e57c_1_00927e48;
  if ((void *)param_1[0x18] != (void *)0x0) {
    operator_delete((void *)param_1[0x18]);
  }
  gpg::SnapshotMetadataChange::~SnapshotMetadataChange((SnapshotMetadataChange *)(param_1 + 0x16));
  gpg::SnapshotMetadata::~SnapshotMetadata((SnapshotMetadata *)(param_1 + 0x14));
  FUN_0055e550(param_1);
  return param_1;
}

// ---- FUN_0055e5b0  @ 0x55e5b0
void * FUN_0055e5b0(void *param_1)

{
  FUN_0055e57c();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0055e608  @ 0x55e608
undefined4 *
FUN_0055e608(undefined4 *param_1,undefined4 *param_2,SnapshotMetadata *param_3,
            SnapshotMetadataChange *param_4,undefined4 *param_5,undefined4 param_6)

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
  FUN_00526a4e(auStack_68,param_6);
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
  *param_1 = &PTR_FUN_0055e57c_1_00927e48;
  gpg::SnapshotMetadata::SnapshotMetadata((SnapshotMetadata *)(param_1 + 0x14),param_3);
  gpg::SnapshotMetadataChange::SnapshotMetadataChange
            ((SnapshotMetadataChange *)(param_1 + 0x16),param_4);
  param_1[0x19] = 0;
  param_1[0x1a] = 0;
  param_1[0x18] = 0;
  param_1[0x18] = *param_5;
  *param_5 = 0;
  uVar1 = param_1[0x19];
  param_1[0x19] = param_5[1];
  param_5[1] = uVar1;
  uVar1 = param_1[0x1a];
  param_1[0x1a] = param_5[2];
  param_5[2] = uVar1;
  return param_1;
}

// ---- FUN_0055e730  @ 0x55e730
void FUN_0055e730(int *param_1,undefined4 param_2)

{
  int iVar1;
  undefined4 local_24;
  SnapshotMetadata aSStack_20 [12];
  
  iVar1 = FUN_00548c48(param_2);
  if (iVar1 == 0) {
    (**(code **)(*param_1 + 0x50))(&local_24,param_1,param_2);
    FUN_00526e34(param_1 + 0xc,&local_24);
  }
  else {
    local_24 = 0xfffffffe;
    gpg::SnapshotMetadata::SnapshotMetadata(aSStack_20);
    FUN_00526e34(param_1 + 0xc,&local_24);
  }
  gpg::SnapshotMetadata::~SnapshotMetadata(aSStack_20);
  return;
}

// ---- FUN_0055e7b8  @ 0x55e7b8
undefined4
FUN_0055e7b8(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 *param_4)

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
  local_3c = 0x55ecc1;
  local_40 = (code *)0x55e5c3;
  FUN_00533700(a_Stack_38,(_Function_base *)local_48);
  pvVar2 = operator_new(0x14);
  FUN_0053372c(pvVar2,a_Stack_38);
  local_64 = pvVar2;
  FUN_005453a8(auStack_58,param_2,param_3,&local_64);
  if (local_64 != (void *)0x0) {
    FUN_0055e4c2();
  }
  std::_Function_base::~_Function_base(a_Stack_38);
  std::_Function_base::~_Function_base((_Function_base *)local_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_5c);
  FUN_00548b30(param_1,auStack_58);
  FUN_00548ab0(auStack_58);
  return param_1;
}

// ---- FUN_0055e898  @ 0x55e898
undefined4 FUN_0055e898(undefined4 param_1,int param_2)

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
  if (local_34 == 0) goto LAB_0055e8b4;
  piVar2 = (int *)(local_34 + 4);
  unaff_r4 = &local_28;
  local_28 = *(int *)(local_34 + 4);
  while( true ) {
    iVar3 = local_28;
    if (local_28 == 0) {
LAB_0055e8b4:
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
  FUN_0055e7b8(unaff_r4,0,0x5463d1,&local_30,iVar3);
  FUN_00548b30(param_1,unaff_r4);
  FUN_00548ab0(unaff_r4);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_2c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_34);
  return param_1;
}

// ---- FUN_0055e950  @ 0x55e950
void FUN_0055e950(int param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  int iVar4;
  undefined1 *puVar5;
  undefined1 *puVar6;
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
  
  iVar4 = *(int *)(param_1 + 0x50);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_bc,(__shared_count *)(param_1 + 0x54));
  if (iVar4 == 0) {
    FUN_005166ae(4,"Attempting to commit invalid snapshot: skipping.");
    puVar5 = auStack_b8;
    FUN_00548b18(puVar5);
    FUN_0055e730(param_1,puVar5);
  }
  else {
    if (*(int *)(iVar4 + 0x4c) == 0) {
      iVar4 = *(int *)(iVar4 + 0x48);
    }
    else {
      iVar4 = *(int *)(iVar4 + 0x4c) + 0x20;
    }
    puVar5 = auStack_a8;
    FUN_00549654(puVar5,iVar4 + 0xc);
    FUN_0054968c(auStack_98,puVar5,&DAT_00961ca4,"getSnapshotContents",
                 "()Lcom/google/android/gms/games/snapshot/SnapshotContents;");
    FUN_00549584(auStack_88,param_1 + 0x60,0);
    uVar1 = FUN_00548bac(auStack_88);
    iVar4 = FUN_00548c54(auStack_98,"writeBytes","([B)Z",uVar1);
    FUN_00548ab0(auStack_88);
    if (iVar4 == 0) {
      FUN_005166ae(4,"Unable to write to snapshot.");
      puVar6 = auStack_78;
      FUN_00548b18(puVar6);
      FUN_0055e730(param_1,puVar6);
    }
    else {
      puVar6 = auStack_68;
      FUN_00562038(puVar6,param_1 + 0x58);
      FUN_00547b10(auStack_58,&DAT_00961324,&DAT_009631a4,"Snapshots",
                   "Lcom/google/android/gms/games/snapshot/Snapshots;");
      uVar1 = FUN_00548bac(*(int *)(param_1 + 0x28) + 0xf4);
      uVar2 = FUN_00548bac(puVar5);
      uVar3 = FUN_00548bac(puVar6);
      FUN_0054968c(auStack_48,auStack_58,&DAT_00963024,"commitAndClose",
                   "(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/snapshot/Snapshot;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;)Lcom/google/android/gms/common/api/PendingResult;"
                   ,uVar1,uVar2,uVar3);
      FUN_0055e898(auStack_38,param_1);
      uVar1 = FUN_00548bac(auStack_38);
      FUN_00548d90(auStack_48,"setResultCallback",
                   "(Lcom/google/android/gms/common/api/ResultCallback;)V",uVar1);
      FUN_00548ab0(auStack_38);
      FUN_00548ab0(auStack_48);
      FUN_00548ab0(auStack_58);
    }
    FUN_00548ab0(puVar6);
    FUN_00548ab0(auStack_98);
  }
  FUN_00548ab0(puVar5);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_bc);
  return;
}

// ---- FUN_0055eb48  @ 0x55eb48
undefined4 * FUN_0055eb48(undefined4 *param_1,int param_2,undefined4 param_3)

{
  int iVar1;
  undefined4 uVar2;
  undefined1 auStack_50 [4];
  undefined1 auStack_4c [4];
  undefined1 auStack_48 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_44 [4];
  undefined1 auStack_40 [16];
  undefined4 local_30;
  SnapshotMetadata aSStack_2c [16];
  
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
  uVar2 = FUN_00529dec(iVar1);
  iVar1 = gpg::IsError();
  if (iVar1 == 0) {
    FUN_00561e8a(param_2 + 0x50);
    FUN_0054932c(&local_30,param_3,&DAT_009629a4);
    FUN_0054968c(auStack_40,&local_30,&DAT_00961224,"getSnapshotMetadata",
                 "()Lcom/google/android/gms/games/snapshot/SnapshotMetadata;");
    FUN_00548ab0(&local_30);
    local_30 = 1;
    FUN_007c6a60(auStack_4c,&DAT_00801f93,auStack_50);
    FUN_00562324(auStack_48,auStack_40,auStack_4c);
    gpg::SnapshotMetadata::SnapshotMetadata(aSStack_2c,auStack_48);
    *param_1 = local_30;
    gpg::SnapshotMetadata::SnapshotMetadata((SnapshotMetadata *)(param_1 + 1),aSStack_2c);
    gpg::SnapshotMetadata::~SnapshotMetadata(aSStack_2c);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_44);
    FUN_007c5914(auStack_4c);
    FUN_00548ab0(auStack_40);
  }
  else {
    local_30 = uVar2;
    gpg::SnapshotMetadata::SnapshotMetadata(aSStack_2c);
    *param_1 = local_30;
    gpg::SnapshotMetadata::SnapshotMetadata((SnapshotMetadata *)(param_1 + 1),aSStack_2c);
    gpg::SnapshotMetadata::~SnapshotMetadata(aSStack_2c);
  }
  return param_1;
}

// ---- FUN_0055ecc0  @ 0x55ecc0
void FUN_0055ecc0(undefined4 *param_1)

{
  undefined4 uVar1;
  undefined1 auStack_30 [16];
  undefined1 auStack_20 [16];
  
  param_1 = (undefined4 *)*param_1;
  FUN_00548b30(auStack_30);
  uVar1 = *param_1;
  FUN_00548b30(auStack_20,auStack_30);
  FUN_0055e730(uVar1,auStack_20);
  FUN_00548ab0(auStack_20);
  FUN_00548ab0(auStack_30);
  return;
}

// ---- FUN_0055ed04  @ 0x55ed04
undefined4 * FUN_0055ed04(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0055ed04_1_00927ea8;
  gpg::SnapshotMetadata::~SnapshotMetadata((SnapshotMetadata *)(param_1 + 0xc));
  FUN_00533468(param_1);
  return param_1;
}

// ---- FUN_0055ed24  @ 0x55ed24
void * FUN_0055ed24(void *param_1)

{
  FUN_0055ed04();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0055ed38  @ 0x55ed38
undefined4 *
FUN_0055ed38(undefined4 *param_1,undefined4 *param_2,SnapshotMetadata *param_3,undefined4 param_4)

{
  undefined4 uVar1;
  undefined4 *puStack_2c;
  SnapshotMetadata *local_28;
  undefined4 uStack_24;
  
  uVar1 = *param_2;
  puStack_2c = param_2;
  local_28 = param_3;
  uStack_24 = param_4;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&puStack_2c,
             (__shared_count *)(param_2 + 1));
  local_28 = (SnapshotMetadata *)uVar1;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&uStack_24,(__shared_count *)&puStack_2c)
  ;
  param_1[1] = 0;
  param_1[2] = 0;
  *param_1 = &PTR_FUN_005107b4_1_00924458;
  param_1[3] = local_28;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(param_1 + 4),
             (__shared_count *)&uStack_24);
  param_1[8] = 0;
  param_1[6] = 0;
  param_1[7] = 0;
  param_1[8] = 0;
  param_1[9] = 0;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&uStack_24);
  *param_1 = &PTR_FUN_00533468_1_00925100;
  param_1[10] = uVar1;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(param_1 + 0xb),
             (__shared_count *)&puStack_2c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&puStack_2c);
  *param_1 = &PTR_FUN_0055ed04_1_00927ea8;
  gpg::SnapshotMetadata::SnapshotMetadata((SnapshotMetadata *)(param_1 + 0xc),param_3);
  return param_1;
}

// ---- FUN_0055ede4  @ 0x55ede4
void FUN_0055ede4(int param_1)

{
  int iVar1;
  int iVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  int iVar5;
  undefined1 auStack_58 [16];
  undefined1 auStack_48 [16];
  int local_38;
  undefined4 local_34 [4];
  
  iVar1 = gpg::SnapshotMetadata::Valid((SnapshotMetadata *)(param_1 + 0x30));
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to delete an invalid snapshot: skipping.");
  }
  else {
    local_38 = *(int *)(param_1 + 0x30);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_34,
               (__shared_count *)(param_1 + 0x34));
    if (*(int *)(local_38 + 0x4c) == 0) {
      iVar1 = *(int *)(local_38 + 0x48);
    }
    else {
      iVar1 = *(int *)(local_38 + 0x4c) + 0x20;
    }
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_34);
    if (*(int *)(iVar1 + 4) != 0) {
      iVar5 = iVar1 + 0xc;
      iVar2 = FUN_00548c48(iVar5);
      if (iVar2 == 0) {
        FUN_00549654(auStack_58,iVar5);
        FUN_00548b18(auStack_48);
        FUN_00548b60(iVar5,auStack_48);
        FUN_00548ab0(auStack_48);
        local_38 = *(int *)(iVar1 + 4);
        *(undefined4 *)(iVar1 + 4) = 0;
        local_34[0] = *(undefined4 *)(iVar1 + 8);
        *(undefined4 *)(iVar1 + 8) = 0;
        std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
                  ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_34);
        FUN_00547b10(&local_38,&DAT_00961324,&DAT_009631a4,"Snapshots",
                     "Lcom/google/android/gms/games/snapshot/Snapshots;");
        uVar3 = FUN_00548bac(*(int *)(param_1 + 0x28) + 0xf4);
        uVar4 = FUN_00548bac(auStack_58);
        FUN_00548d90(&local_38,"discardAndClose",
                     "(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/snapshot/Snapshot;)V"
                     ,uVar3,uVar4);
        FUN_00548ab0(&local_38);
        FUN_00548ab0(auStack_58);
      }
    }
    FUN_00549380(auStack_58,iVar1 + 0x1c);
    FUN_00547b10(auStack_48,&DAT_00961324,&DAT_009631a4,"Snapshots",
                 "Lcom/google/android/gms/games/snapshot/Snapshots;");
    uVar3 = FUN_00548bac(*(int *)(param_1 + 0x28) + 0xf4);
    uVar4 = FUN_00548bac(auStack_58);
    FUN_0054968c(&local_38,auStack_48,&DAT_00963024,"delete",
                 "(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/snapshot/SnapshotMetadata;)Lcom/google/android/gms/common/api/PendingResult;"
                 ,uVar3,uVar4);
    FUN_00548ab0(&local_38);
    FUN_00548ab0(auStack_48);
    FUN_00548ab0(auStack_58);
  }
  return;
}

// ---- FUN_0055ef7c  @ 0x55ef7c
undefined4 * FUN_0055ef7c(undefined4 *param_1,undefined4 *param_2,undefined4 param_3)

{
  bool bVar1;
  undefined4 uVar2;
  int *piVar3;
  int local_24;
  undefined4 local_20;
  int local_1c [2];
  
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
  param_1[3] = uVar2;
  param_1[4] = local_24;
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
  local_1c[0] = local_24;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_1c);
  *param_1 = &PTR_FUN_00533468_1_00925100;
  param_1[10] = uVar2;
  param_1[0xb] = local_24;
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
  *param_1 = &PTR_FUN_0055f0f0_1_00927f00;
  FUN_00548b30(param_1 + 0xc,param_3);
  return param_1;
}

// ---- FUN_0055f06c  @ 0x55f06c
void FUN_0055f06c(int param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined1 auStack_20 [16];
  
  FUN_00547b10(auStack_20,&DAT_00961324,&DAT_009631a4,"Snapshots",
               "Lcom/google/android/gms/games/snapshot/Snapshots;");
  uVar1 = FUN_00548bac(*(int *)(param_1 + 0x28) + 0xf4);
  uVar2 = FUN_00548bac(param_1 + 0x30);
  FUN_00548d90(auStack_20,"discardAndClose",
               "(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/snapshot/Snapshot;)V"
               ,uVar1,uVar2);
  FUN_00548ab0(auStack_20);
  FUN_005166ae(1,"Snapshot discard complete.");
  return;
}

// ---- FUN_0055f0f0  @ 0x55f0f0
undefined4 * FUN_0055f0f0(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0055f0f0_1_00927f00;
  FUN_00548ab0(param_1 + 0xc);
  FUN_00533468(param_1);
  return param_1;
}

// ---- FUN_0055f110  @ 0x55f110
void * FUN_0055f110(void *param_1)

{
  FUN_0055f0f0();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0055f122  @ 0x55f122
void FUN_0055f122(void *param_1)

{
  if (param_1 != (void *)0x0) {
    operator_delete(param_1);
    return;
  }
  return;
}

// ---- FUN_0055f12c  @ 0x55f12c
undefined4 * FUN_0055f12c(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0055f12c_1_00927f58;
  FUN_005267b0(param_1 + 0xc);
  FUN_00533468(param_1);
  return param_1;
}

// ---- FUN_0055f14c  @ 0x55f14c
void * FUN_0055f14c(void *param_1)

{
  FUN_0055f12c();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0055f160  @ 0x55f160
undefined4 * FUN_0055f160(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0055f160_1_00927fb0;
  FUN_0055f12c();
  return param_1;
}

// ---- FUN_0055f178  @ 0x55f178
void * FUN_0055f178(void *param_1)

{
  FUN_0055f160();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0055f18c  @ 0x55f18c
undefined4 * FUN_0055f18c(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0055f18c_1_00928010;
  FUN_0055f160();
  return param_1;
}

// ---- FUN_0055f1a4  @ 0x55f1a4
void * FUN_0055f1a4(void *param_1)

{
  FUN_0055f18c();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0055f1fc  @ 0x55f1fc
int FUN_0055f1fc(int param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  *(undefined4 *)(param_1 + 8) = 0;
  if (*(int *)(param_2 + 8) != 0) {
    *(undefined4 *)(param_1 + 0xc) = *(undefined4 *)(param_2 + 0xc);
    *(undefined4 *)(param_1 + 8) = *(undefined4 *)(param_2 + 8);
    (**(code **)(param_2 + 8))(param_1,param_2,2,*(code **)(param_2 + 8),param_4);
  }
  std::function<void(gpg::SnapshotManager::FetchAllResponse_const&)>::function
            ((function<void(gpg::SnapshotManager::FetchAllResponse_const&)> *)(param_1 + 0x10),
             (function *)(param_2 + 0x10));
  return param_1;
}

// ---- FUN_0055f238  @ 0x55f238
undefined4 *
FUN_0055f238(undefined4 *param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4)

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
  FUN_0055f1fc(auStack_68,param_3);
  local_78 = uVar1;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_74,(__shared_count *)a_Stack_7c);
  FUN_0055f1fc(auStack_48,auStack_68);
  local_70 = local_78;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_6c,(__shared_count *)a_Stack_74);
  FUN_00533528(param_1,&local_70);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_6c);
  *param_1 = &PTR_FUN_0055f12c_1_00927f58;
  FUN_0055f1fc(param_1 + 0xc,auStack_48);
  FUN_005267b0(auStack_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_74);
  *param_1 = &PTR_FUN_0055f160_1_00927fb0;
  FUN_005267b0(auStack_68);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_7c);
  param_1[0x14] = param_4;
  *param_1 = &PTR_FUN_0055f18c_1_00928010;
  return param_1;
}

// ---- FUN_0055f318  @ 0x55f318
FetchAllResponse * FUN_0055f318(FetchAllResponse *param_1,int param_2)

{
  undefined4 local_20;
  undefined4 local_1c;
  undefined4 local_18;
  undefined4 local_14;
  
  FUN_005108ea(*(undefined4 *)(param_2 + 0x28));
  local_20 = thunk_FUN_00529dec();
  local_1c = 0;
  local_18 = 0;
  local_14 = 0;
  gpg::SnapshotManager::FetchAllResponse::FetchAllResponse(param_1,(FetchAllResponse *)&local_20);
  std::vector<gpg::SnapshotMetadata,std::allocator<gpg::SnapshotMetadata>>::~vector
            ((vector<gpg::SnapshotMetadata,std::allocator<gpg::SnapshotMetadata>> *)&local_1c);
  return param_1;
}

// ---- FUN_0055f3f0  @ 0x55f3f0
void FUN_0055f3f0(int *param_1,undefined4 param_2)

{
  int iVar1;
  undefined4 local_28;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  
  iVar1 = FUN_00548c48(param_2);
  if (iVar1 == 0) {
    (**(code **)(*param_1 + 0x50))(&local_28,param_1,param_2);
    FUN_0052764c(param_1 + 0xc,&local_28);
  }
  else {
    local_28 = 0xfffffffe;
    local_24 = 0;
    local_20 = 0;
    local_1c = 0;
    FUN_0052764c(param_1 + 0xc,&local_28);
  }
  std::vector<gpg::SnapshotMetadata,std::allocator<gpg::SnapshotMetadata>>::~vector
            ((vector<gpg::SnapshotMetadata,std::allocator<gpg::SnapshotMetadata>> *)&local_24);
  return;
}

// ---- FUN_0055f558  @ 0x55f558
undefined4
FUN_0055f558(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 *param_4)

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
  local_3c = 0x55fa39;
  local_40 = (code *)0x55f1b7;
  FUN_00533700(a_Stack_38,(_Function_base *)local_48);
  pvVar2 = operator_new(0x14);
  FUN_0053372c(pvVar2,a_Stack_38);
  local_64 = pvVar2;
  FUN_005453a8(auStack_58,param_2,param_3,&local_64);
  if (local_64 != (void *)0x0) {
    FUN_0055e4ce();
  }
  std::_Function_base::~_Function_base(a_Stack_38);
  std::_Function_base::~_Function_base((_Function_base *)local_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_5c);
  FUN_00548b30(param_1,auStack_58);
  FUN_00548ab0(auStack_58);
  return param_1;
}

// ---- FUN_0055f638  @ 0x55f638
undefined4 FUN_0055f638(undefined4 param_1,int param_2)

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
  if (local_34 == 0) goto LAB_0055f654;
  piVar2 = (int *)(local_34 + 4);
  unaff_r4 = &local_28;
  local_28 = *(int *)(local_34 + 4);
  while( true ) {
    iVar3 = local_28;
    if (local_28 == 0) {
LAB_0055f654:
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
  FUN_0055f558(unaff_r4,0,0x5463d1,&local_30,iVar3);
  FUN_00548b30(param_1,unaff_r4);
  FUN_00548ab0(unaff_r4);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_2c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_34);
  return param_1;
}

// ---- FUN_0055f6f0  @ 0x55f6f0
void FUN_0055f6f0(int param_1)

{
  undefined4 uVar1;
  int iVar2;
  undefined1 *puVar3;
  undefined1 auStack_40 [16];
  undefined1 auStack_30 [16];
  undefined1 auStack_20 [16];
  
  puVar3 = auStack_20;
  FUN_00547b10(puVar3,&DAT_00961324,&DAT_009631a4,"Snapshots",
               "Lcom/google/android/gms/games/snapshot/Snapshots;");
  uVar1 = FUN_00548bac(*(int *)(param_1 + 0x28) + 0xf4);
  FUN_0054968c(auStack_40,puVar3,&DAT_00963024,&DAT_008057f6,
               "(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/common/api/PendingResult;"
               ,uVar1,*(int *)(param_1 + 0x50) == 2);
  FUN_00548ab0(puVar3);
  iVar2 = FUN_00548c48(auStack_40);
  if (iVar2 == 0) {
    FUN_0055f638(puVar3,param_1);
    uVar1 = FUN_00548bac(puVar3);
    FUN_00548d90(auStack_40,"setResultCallback",
                 "(Lcom/google/android/gms/common/api/ResultCallback;)V",uVar1);
  }
  else {
    puVar3 = auStack_30;
    FUN_00548b18(puVar3);
    FUN_0055f3f0(param_1,puVar3);
  }
  FUN_00548ab0(puVar3);
  FUN_00548ab0(auStack_40);
  return;
}

// ---- FUN_0055f7cc  @ 0x55f7cc
void FUN_0055f7cc(int param_1,undefined4 param_2)

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
  FUN_00529dec(iVar1);
  return;
}

// ---- FUN_0055f84c  @ 0x55f84c
FetchAllResponse * FUN_0055f84c(FetchAllResponse *param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 uVar1;
  int iVar2;
  uint uVar3;
  SnapshotMetadata *pSVar4;
  new_allocator<gpg::SnapshotMetadata> *this;
  uint uVar5;
  undefined1 auStack_64 [4];
  undefined1 auStack_60 [4];
  shared_ptr asStack_5c [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_58 [4];
  SnapshotMetadata *local_54;
  SnapshotMetadata *local_50;
  SnapshotMetadata *local_4c;
  undefined1 auStack_48 [16];
  undefined4 local_38;
  undefined4 local_34;
  undefined4 local_30;
  undefined4 local_2c;
  
  uVar1 = FUN_0055f7cc(param_2,param_3);
  FUN_0054932c((FetchAllResponse *)&local_38,param_3,&DAT_00963524);
  FUN_0054968c(auStack_48,(FetchAllResponse *)&local_38,&DAT_009611a4,"getSnapshots",
               "()Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;");
  FUN_00548ab0((FetchAllResponse *)&local_38);
  iVar2 = gpg::IsError(uVar1);
  local_38 = uVar1;
  if (iVar2 == 0) {
    uVar3 = FUN_00548d1c(auStack_48,"getCount");
    local_54 = (SnapshotMetadata *)0x0;
    local_50 = (SnapshotMetadata *)0x0;
    this = (new_allocator<gpg::SnapshotMetadata> *)&local_54;
    local_4c = (SnapshotMetadata *)0x0;
    if (0x1fffffff < uVar3) {
                    /* WARNING: Subroutine does not return */
      FUN_007c49e8("vector::reserve");
    }
    if (uVar3 != 0) {
      pSVar4 = operator_new(uVar3 * 8);
      std::__uninitialized_copy<false>::__uninit_copy<gpg::SnapshotMetadata*,gpg::SnapshotMetadata*>
                ((SnapshotMetadata *)0x0,(SnapshotMetadata *)0x0,pSVar4);
      std::_Destroy_aux<false>::__destroy<gpg::SnapshotMetadata*>(local_54,local_50);
      FUN_0055f122(local_54);
      local_4c = pSVar4 + uVar3 * 8;
      local_50 = pSVar4;
    }
    local_54 = local_50;
    for (uVar5 = 0; uVar5 != uVar3; uVar5 = uVar5 + 1) {
      FUN_0054968c((FetchAllResponse *)&local_38,auStack_48,&DAT_00961224,&DAT_0080598d,
                   "(I)Lcom/google/android/gms/games/snapshot/SnapshotMetadata;",uVar5);
      FUN_007c6a60(auStack_60,&DAT_00801f93,auStack_64);
      FUN_00562324(asStack_5c,(FetchAllResponse *)&local_38,auStack_60);
      if (local_50 == local_4c) {
        std::vector<gpg::SnapshotMetadata,std::allocator<gpg::SnapshotMetadata>>::
        _M_emplace_back_aux<std::shared_ptr<gpg::SnapshotMetadataImpl>>
                  ((vector<gpg::SnapshotMetadata,std::allocator<gpg::SnapshotMetadata>> *)this,
                   asStack_5c);
      }
      else {
        __gnu_cxx::new_allocator<gpg::SnapshotMetadata>::
        construct<gpg::SnapshotMetadata,std::shared_ptr<gpg::SnapshotMetadataImpl>>
                  (this,local_50,asStack_5c);
        local_50 = local_50 + 8;
      }
      std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_58);
      FUN_007c5914(auStack_60);
      FUN_00548ab0((FetchAllResponse *)&local_38);
    }
    FUN_00548de4(auStack_48,"close");
    std::vector<gpg::SnapshotMetadata,std::allocator<gpg::SnapshotMetadata>>::vector
              ((vector<gpg::SnapshotMetadata,std::allocator<gpg::SnapshotMetadata>> *)&local_34,this
              );
    gpg::SnapshotManager::FetchAllResponse::FetchAllResponse(param_1,(FetchAllResponse *)&local_38);
    std::vector<gpg::SnapshotMetadata,std::allocator<gpg::SnapshotMetadata>>::~vector
              ((vector<gpg::SnapshotMetadata,std::allocator<gpg::SnapshotMetadata>> *)&local_34);
  }
  else {
    FUN_00548de4(auStack_48,"close");
    local_34 = 0;
    local_30 = 0;
    local_2c = 0;
    gpg::SnapshotManager::FetchAllResponse::FetchAllResponse(param_1,(FetchAllResponse *)&local_38);
    this = (new_allocator<gpg::SnapshotMetadata> *)&local_34;
  }
  std::vector<gpg::SnapshotMetadata,std::allocator<gpg::SnapshotMetadata>>::~vector
            ((vector<gpg::SnapshotMetadata,std::allocator<gpg::SnapshotMetadata>> *)this);
  FUN_00548ab0(auStack_48);
  return param_1;
}

// ---- FUN_0055fa38  @ 0x55fa38
void FUN_0055fa38(undefined4 *param_1)

{
  undefined4 uVar1;
  undefined1 auStack_30 [16];
  undefined1 auStack_20 [16];
  
  param_1 = (undefined4 *)*param_1;
  FUN_00548b30(auStack_30);
  uVar1 = *param_1;
  FUN_00548b30(auStack_20,auStack_30);
  FUN_0055f3f0(uVar1,auStack_20);
  FUN_00548ab0(auStack_20);
  FUN_00548ab0(auStack_30);
  return;
}

// ---- FUN_0055fa7a  @ 0x55fa7a
void FUN_0055fa7a(int *param_1)

{
  if (param_1 != (int *)0x0) {
    (**(code **)(*param_1 + 4))();
  }
  return;
}

// ---- FUN_0055fa88  @ 0x55fa88
OpenResponse * FUN_0055fa88(OpenResponse *param_1,int param_2)

{
  undefined4 local_30;
  SnapshotMetadata aSStack_2c [8];
  undefined1 *local_24;
  SnapshotMetadata aSStack_20 [8];
  SnapshotMetadata aSStack_18 [12];
  
  FUN_005108ea(*(undefined4 *)(param_2 + 0x28));
  local_30 = thunk_FUN_00529e98();
  gpg::SnapshotMetadata::SnapshotMetadata(aSStack_2c);
  local_24 = &DAT_00972528;
  gpg::SnapshotMetadata::SnapshotMetadata(aSStack_20);
  gpg::SnapshotMetadata::SnapshotMetadata(aSStack_18);
  gpg::SnapshotManager::OpenResponse::OpenResponse(param_1,(OpenResponse *)&local_30);
  gpg::SnapshotManager::OpenResponse::~OpenResponse((OpenResponse *)&local_30);
  return param_1;
}

// ---- FUN_0055fae0  @ 0x55fae0
undefined4 * FUN_0055fae0(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0055fae0_1_00928070;
  FUN_00525364(param_1 + 0xc);
  FUN_00533468(param_1);
  return param_1;
}

// ---- FUN_0055fb00  @ 0x55fb00
void * FUN_0055fb00(void *param_1)

{
  FUN_0055fae0();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0055fb14  @ 0x55fb14
undefined4 * FUN_0055fb14(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0055fb14_1_009280c8;
  FUN_0055fae0();
  return param_1;
}

// ---- FUN_0055fb2c  @ 0x55fb2c
void * FUN_0055fb2c(void *param_1)

{
  FUN_0055fb14();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0055fb40  @ 0x55fb40
undefined4 * FUN_0055fb40(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0055fb40_1_00928128;
  FUN_007c5914(param_1 + 0x14);
  FUN_0055fb14(param_1);
  return param_1;
}

// ---- FUN_0055fb60  @ 0x55fb60
void * FUN_0055fb60(void *param_1)

{
  FUN_0055fb40();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0055fbb8  @ 0x55fbb8
int FUN_0055fbb8(int param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  *(undefined4 *)(param_1 + 8) = 0;
  if (*(int *)(param_2 + 8) != 0) {
    *(undefined4 *)(param_1 + 0xc) = *(undefined4 *)(param_2 + 0xc);
    *(undefined4 *)(param_1 + 8) = *(undefined4 *)(param_2 + 8);
    (**(code **)(param_2 + 8))(param_1,param_2,2,*(code **)(param_2 + 8),param_4);
  }
  std::function<void(gpg::SnapshotManager::OpenResponse_const&)>::function
            ((function<void(gpg::SnapshotManager::OpenResponse_const&)> *)(param_1 + 0x10),
             (function *)(param_2 + 0x10));
  return param_1;
}

// ---- FUN_0055fbf4  @ 0x55fbf4
undefined4 *
FUN_0055fbf4(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined1 auStack_88 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_84 [4];
  undefined1 auStack_80 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_7c [4];
  undefined4 local_78;
  __shared_count a_Stack_74 [4];
  undefined4 local_70;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_6c [4];
  undefined1 auStack_68 [32];
  undefined1 auStack_48 [36];
  
  FUN_0053470e(auStack_88);
  FUN_0055fbb8(auStack_68,param_3);
  FUN_0053470e(auStack_80,auStack_88);
  FUN_0055fbb8(auStack_48,auStack_68);
  FUN_0053470e(&local_78,auStack_80);
  local_70 = local_78;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count(a_Stack_6c,a_Stack_74);
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
  FUN_0053470e(param_1 + 10,&local_78);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)a_Stack_74);
  *param_1 = &PTR_FUN_0055fae0_1_00928070;
  FUN_0055fbb8(param_1 + 0xc,auStack_48);
  FUN_00525364(auStack_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_7c);
  *param_1 = &PTR_FUN_0055fb14_1_009280c8;
  FUN_00525364(auStack_68);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_84);
  *param_1 = &PTR_FUN_0055fb40_1_00928128;
  FUN_007c64e8(param_1 + 0x14,param_4);
  return param_1;
}

// ---- FUN_0055fd2c  @ 0x55fd2c
void FUN_0055fd2c(int *param_1,undefined4 param_2)

{
  int iVar1;
  undefined4 local_38;
  SnapshotMetadata aSStack_34 [8];
  undefined1 *local_2c;
  SnapshotMetadata aSStack_28 [8];
  SnapshotMetadata aSStack_20 [12];
  
  iVar1 = FUN_00548c48(param_2);
  if (iVar1 == 0) {
    (**(code **)(*param_1 + 0x50))(&local_38,param_1,param_2);
    FUN_00525a8a(param_1 + 0xc,&local_38);
  }
  else {
    local_38 = 0xfffffffe;
    gpg::SnapshotMetadata::SnapshotMetadata(aSStack_34);
    local_2c = &DAT_00972528;
    gpg::SnapshotMetadata::SnapshotMetadata(aSStack_28);
    gpg::SnapshotMetadata::SnapshotMetadata(aSStack_20);
    FUN_00525a8a(param_1 + 0xc,&local_38);
  }
  gpg::SnapshotManager::OpenResponse::~OpenResponse((OpenResponse *)&local_38);
  return;
}

// ---- FUN_0055fdcc  @ 0x55fdcc
undefined4
FUN_0055fdcc(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 *param_4)

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
  local_3c = 0x5603fd;
  local_40 = (code *)0x55fb73;
  FUN_00533700(a_Stack_38,(_Function_base *)local_48);
  pvVar2 = operator_new(0x14);
  FUN_0053372c(pvVar2,a_Stack_38);
  local_64 = pvVar2;
  FUN_005453a8(auStack_58,param_2,param_3,&local_64);
  if (local_64 != (void *)0x0) {
    FUN_0055fa7a();
  }
  std::_Function_base::~_Function_base(a_Stack_38);
  std::_Function_base::~_Function_base((_Function_base *)local_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_5c);
  FUN_00548b30(param_1,auStack_58);
  FUN_00548ab0(auStack_58);
  return param_1;
}

// ---- FUN_0055feac  @ 0x55feac
undefined4 FUN_0055feac(undefined4 param_1,int param_2)

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
  if (local_34 == 0) goto LAB_0055fec8;
  piVar2 = (int *)(local_34 + 4);
  unaff_r4 = &local_28;
  local_28 = *(int *)(local_34 + 4);
  while( true ) {
    iVar3 = local_28;
    if (local_28 == 0) {
LAB_0055fec8:
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
  FUN_0055fdcc(unaff_r4,0,0x5463d1,&local_30,iVar3);
  FUN_00548b30(param_1,unaff_r4);
  FUN_00548ab0(unaff_r4);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_2c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_34);
  return param_1;
}

// ---- FUN_0055ff64  @ 0x55ff64
void FUN_0055ff64(int param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  int iVar3;
  undefined1 *puVar4;
  undefined1 auStack_88 [16];
  undefined1 auStack_78 [16];
  undefined1 auStack_68 [16];
  undefined1 auStack_58 [16];
  undefined1 auStack_48 [16];
  undefined1 auStack_38 [20];
  
  FUN_00547b10(auStack_48,&DAT_00961324,&DAT_009631a4,"Snapshots",
               "Lcom/google/android/gms/games/snapshot/Snapshots;");
  uVar1 = FUN_00548bac(*(int *)(param_1 + 0x28) + 0xf4);
  puVar4 = auStack_38;
  FUN_0054942c(puVar4,param_1 + 0x50,0);
  uVar2 = FUN_00548bac(puVar4);
  FUN_0054968c(auStack_88,auStack_48,&DAT_00963024,&DAT_0080c19b,
               "(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Z)Lcom/google/android/gms/common/api/PendingResult;"
               ,uVar1,uVar2,1);
  FUN_00548ab0(puVar4);
  FUN_00548ab0(auStack_48);
  iVar3 = FUN_00548c48(auStack_88);
  if (iVar3 == 0) {
    FUN_00547b10(auStack_68,&DAT_00961324,&DAT_009631a4,"Snapshots",
                 "Lcom/google/android/gms/games/snapshot/Snapshots;");
    uVar1 = FUN_00548bac(*(int *)(param_1 + 0x28) + 0xf4);
    FUN_0054942c(auStack_58,param_1 + 0x50,0);
    uVar2 = FUN_00548bac(auStack_58);
    FUN_0054968c(auStack_48,auStack_68,&DAT_00963024,&DAT_0080c19b,
                 "(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Z)Lcom/google/android/gms/common/api/PendingResult;"
                 ,uVar1,uVar2,1);
    FUN_00548b60(auStack_88,auStack_48);
    FUN_00548ab0(auStack_48);
    FUN_00548ab0(auStack_58);
    FUN_00548ab0(auStack_68);
    FUN_0055feac(puVar4,param_1);
    uVar1 = FUN_00548bac(puVar4);
    FUN_00548d90(auStack_88,"setResultCallback",
                 "(Lcom/google/android/gms/common/api/ResultCallback;)V",uVar1);
  }
  else {
    puVar4 = auStack_78;
    FUN_00548b18(puVar4);
    FUN_0055fd2c(param_1,puVar4);
  }
  FUN_00548ab0(puVar4);
  FUN_00548ab0(auStack_88);
  return;
}
