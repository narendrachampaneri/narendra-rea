// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 252 functions

// ---- FUN_005101c0  @ 0x5101c0
undefined4 * FUN_005101c0(undefined4 *param_1,undefined4 param_2)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  undefined4 local_14;
  
  *param_1 = 0;
  param_1[1] = 0;
  local_14 = param_2;
  puVar1 = operator_new(0x10);
  *param_1 = puVar1;
  if (puVar1 != (undefined4 *)0x0) {
    *puVar1 = 0;
    *puVar1 = 0;
    puVar1[1] = 0;
    FUN_007be0ac(puVar1 + 1);
    *(undefined1 *)(puVar1 + 2) = 0;
    puVar1[3] = 0;
  }
  uVar2 = *param_1;
  local_14 = 0;
  puVar1 = operator_new(0x14);
  if (puVar1 != (undefined4 *)0x0) {
    puVar1[1] = 1;
    puVar1[2] = 1;
    puVar1[3] = uVar2;
    *puVar1 = &PTR_LAB_0050fab8_1_009243d0;
  }
  local_14 = param_1[1];
  param_1[1] = puVar1;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_14);
  return param_1;
}

// ---- FUN_005103d8  @ 0x5103d8
undefined4 * FUN_005103d8(undefined4 *param_1)

{
  *param_1 = &PTR___Sp_counted_base_1_009242b8;
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_005105b0  @ 0x5105b0
void FUN_005105b0(int param_1)

{
  undefined4 *puVar1;
  
  puVar1 = *(undefined4 **)(param_1 + 0xc);
  (**(code **)*puVar1)(puVar1);
  operator_delete(puVar1);
  return;
}

// ---- FUN_005105dc  @ 0x5105dc
undefined4 * FUN_005105dc(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_005105dc_1_00924408;
  std::_Function_base::~_Function_base((_Function_base *)(param_1 + 3));
  FUN_005127a4(param_1);
  return param_1;
}

// ---- FUN_005105fc  @ 0x5105fc
void * FUN_005105fc(void *param_1)

{
  FUN_005105dc();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_00510640  @ 0x510640
void FUN_00510640(undefined4 *param_1,undefined4 *param_2)

{
  bool bVar1;
  int iVar2;
  int *piVar3;
  
  *param_1 = *param_2;
  iVar2 = param_2[1];
  param_1[1] = iVar2;
  if (iVar2 != 0) {
    piVar3 = (int *)(iVar2 + 4);
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

// ---- FUN_0051066c  @ 0x51066c
void FUN_0051066c(int param_1)

{
  void *local_20 [2];
  undefined1 *local_18;
  undefined1 *local_14;
  
  local_18 = (undefined1 *)0x0;
  local_20[0] = operator_new(1);
  local_14 = &LAB_00510468_1;
  local_18 = &LAB_00510508_1;
  gpg::AchievementManager::FetchAll((AchievementManager *)(param_1 + 0xc),1,local_20);
  std::_Function_base::~_Function_base((_Function_base *)local_20);
  return;
}

// ---- FUN_005106b4  @ 0x5106b4
void FUN_005106b4(int param_1)

{
  void *local_20 [2];
  undefined1 *local_18;
  undefined1 *local_14;
  
  local_18 = (undefined1 *)0x0;
  local_20[0] = operator_new(1);
  local_14 = &LAB_00510490_1;
  local_18 = &LAB_00510532_1;
  gpg::EventManager::FetchAll((EventManager *)(param_1 + 0x10),1,local_20);
  std::_Function_base::~_Function_base((_Function_base *)local_20);
  return;
}

// ---- FUN_005106fc  @ 0x5106fc
void FUN_005106fc(int param_1)

{
  void *local_20 [2];
  undefined1 *local_18;
  undefined1 *local_14;
  
  local_18 = (undefined1 *)0x0;
  local_20[0] = operator_new(1);
  local_14 = &LAB_005104b8_1;
  local_18 = &LAB_0051055c_1;
  gpg::PlayerManager::FetchSelf((PlayerManager *)(param_1 + 0x18),1,local_20);
  std::_Function_base::~_Function_base((_Function_base *)local_20);
  return;
}

// ---- FUN_0051075c  @ 0x51075c
int FUN_0051075c(int param_1)

{
  return *(int *)(param_1 + 0x2c) + 0x120;
}

// ---- FUN_00510774  @ 0x510774
int FUN_00510774(int param_1)

{
  return *(int *)(param_1 + 0x2c) + 0x130;
}

// ---- FUN_0051077c  @ 0x51077c
uint FUN_0051077c(int param_1,uint param_2,char param_3)

{
  uint extraout_r1;
  uint uVar1;
  
  uVar1 = (param_2 & 0xf) << 8 |
          (uint)(byte)(param_3 << 4) | (*(uint *)(*(int *)(param_1 + 0x2c) + 0x148) & 0xff) << 0xc;
  __aeabi_uidivmod(uVar1 >> 4,0xd);
  return extraout_r1 | uVar1;
}

// ---- FUN_005107b4  @ 0x5107b4
undefined4 * FUN_005107b4(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_005107b4_1_00924458;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(param_1 + 4));
  FUN_005127a4(param_1);
  return param_1;
}

// ---- FUN_005107d4  @ 0x5107d4
void * FUN_005107d4(void *param_1)

{
  FUN_005107b4();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_005107e8  @ 0x5107e8
undefined4 * FUN_005107e8(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_005107e8_1_009244b0;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(param_1 + 0x13));
  FUN_0050fd1e(param_1 + 10);
  FUN_005107b4(param_1);
  return param_1;
}

// ---- FUN_00510810  @ 0x510810
void * FUN_00510810(void *param_1)

{
  FUN_005107e8();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_00510822  @ 0x510822
void FUN_00510822(int param_1,undefined4 *param_2,undefined4 param_3)

{
  undefined4 local_18;
  undefined4 *puStack_14;
  undefined4 uStack_10;
  
  local_18 = *param_2;
  puStack_14 = param_2;
  uStack_10 = param_3;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&puStack_14,
             (__shared_count *)(param_2 + 1));
  FUN_00512a64(param_1 + 0x4c,&local_18);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&puStack_14);
  return;
}

// ---- FUN_00510854  @ 0x510854
void FUN_00510854(int param_1,undefined4 *param_2,undefined4 param_3)

{
  undefined4 local_18;
  undefined4 *puStack_14;
  undefined4 uStack_10;
  
  local_18 = *param_2;
  puStack_14 = param_2;
  uStack_10 = param_3;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&puStack_14,
             (__shared_count *)(param_2 + 1));
  FUN_00512a64(param_1 + 0x60,&local_18);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&puStack_14);
  return;
}

// ---- FUN_005108c6  @ 0x5108c6
bool FUN_005108c6(int param_1,undefined4 param_2,undefined4 param_3)

{
  int iVar1;
  mutex *local_14;
  undefined4 uStack_10;
  
  local_14 = (mutex *)(param_1 + 0x30);
  uStack_10 = param_3;
  std::mutex::lock(local_14);
  iVar1 = *(int *)(param_1 + 0x34);
  std::lock_guard<std::mutex>::~lock_guard((lock_guard<std::mutex> *)&local_14);
  return iVar1 == 1;
}

// ---- FUN_005108ea  @ 0x5108ea
undefined4 FUN_005108ea(int param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 uVar1;
  mutex *local_14;
  undefined4 uStack_10;
  
  local_14 = (mutex *)(param_1 + 0x30);
  uStack_10 = param_3;
  std::mutex::lock(local_14);
  uVar1 = *(undefined4 *)(param_1 + 0x3c);
  std::lock_guard<std::mutex>::~lock_guard((lock_guard<std::mutex> *)&local_14);
  return uVar1;
}

// ---- FUN_00510908  @ 0x510908
undefined4 FUN_00510908(int param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 uVar1;
  mutex *local_14;
  undefined4 uStack_10;
  
  local_14 = (mutex *)(param_1 + 0x30);
  uStack_10 = param_3;
  std::mutex::lock(local_14);
  uVar1 = *(undefined4 *)(param_1 + 0x44);
  std::lock_guard<std::mutex>::~lock_guard((lock_guard<std::mutex> *)&local_14);
  return uVar1;
}

// ---- FUN_00510926  @ 0x510926
undefined4 FUN_00510926(int param_1,int param_2,undefined4 *param_3)

{
  undefined4 uVar1;
  mutex *local_24;
  undefined4 local_20;
  undefined4 local_1c [2];
  
  local_24 = (mutex *)(param_1 + 0x30);
  std::mutex::lock(local_24);
  if ((param_2 == 0) || (*(int *)(param_1 + 0x34) == 1)) {
    local_20 = *param_3;
    local_1c[0] = param_3[1];
    param_3[1] = 0;
    *param_3 = 0;
    FUN_00510822(param_1,&local_20);
    uVar1 = 1;
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_1c);
  }
  else {
    uVar1 = 0;
  }
  std::lock_guard<std::mutex>::~lock_guard((lock_guard<std::mutex> *)&local_24);
  return uVar1;
}

// ---- FUN_00510986  @ 0x510986
undefined4 FUN_00510986(undefined4 param_1,undefined4 *param_2,undefined4 param_3)

{
  undefined4 uVar1;
  undefined4 local_18;
  undefined4 *puStack_14;
  undefined4 uStack_10;
  
  local_18 = *param_2;
  puStack_14 = param_2;
  uStack_10 = param_3;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&puStack_14,
             (__shared_count *)(param_2 + 1));
  uVar1 = FUN_00510926(param_1,1,&local_18);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&puStack_14);
  return uVar1;
}

// ---- FUN_005109bc  @ 0x5109bc
undefined4 FUN_005109bc(undefined4 param_1,undefined4 *param_2,undefined4 param_3)

{
  undefined4 uVar1;
  undefined4 local_18;
  undefined4 *puStack_14;
  undefined4 uStack_10;
  
  local_18 = *param_2;
  puStack_14 = param_2;
  uStack_10 = param_3;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&puStack_14,
             (__shared_count *)(param_2 + 1));
  uVar1 = FUN_00510926(param_1,0,&local_18);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&puStack_14);
  return uVar1;
}

// ---- FUN_005109f2  @ 0x5109f2
undefined4 FUN_005109f2(undefined4 param_1,undefined4 *param_2,undefined4 param_3)

{
  undefined4 uVar1;
  undefined4 local_18;
  undefined4 *puStack_14;
  undefined4 uStack_10;
  
  local_18 = *param_2;
  puStack_14 = param_2;
  uStack_10 = param_3;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&puStack_14,
             (__shared_count *)(param_2 + 1));
  uVar1 = FUN_00510926(param_1,0,&local_18);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&puStack_14);
  return uVar1;
}

// ---- FUN_00510a86  @ 0x510a86
function<void(std::function<void()>)> *
FUN_00510a86(function<void(std::function<void()>)> *param_1,int param_2)

{
  function *pfVar1;
  
  pfVar1 = *(function **)(param_2 + 0x2c);
  std::function<void(std::function<void()>)>::function(param_1,pfVar1);
  *(undefined4 *)(param_1 + 0x18) = 0;
  if (*(int *)(pfVar1 + 0x18) != 0) {
    *(undefined4 *)(param_1 + 0x1c) = *(undefined4 *)(pfVar1 + 0x1c);
    *(undefined4 *)(param_1 + 0x18) = *(undefined4 *)(pfVar1 + 0x18);
    (**(code **)(pfVar1 + 0x18))(param_1 + 0x10,pfVar1 + 0x10,2);
  }
  return param_1;
}

// ---- FUN_00510af2  @ 0x510af2
function<void(std::function<void()>)> *
FUN_00510af2(function<void(std::function<void()>)> *param_1,function *param_2)

{
  std::function<void(std::function<void()>)>::function(param_1,param_2);
  std::function<void(gpg::FlushStatus)>::function
            ((function<void(gpg::FlushStatus)> *)(param_1 + 0x10),param_2 + 0x10);
  return param_1;
}

// ---- FUN_00510b18  @ 0x510b18
undefined4 * FUN_00510b18(undefined4 *param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 *puStack_28;
  undefined4 uStack_24;
  
  puStack_28 = param_1;
  uStack_24 = param_2;
  FUN_00510640(&puStack_28);
  param_1[1] = 0;
  param_1[2] = 0;
  *param_1 = &PTR_FUN_005107b4_1_00924458;
  FUN_00510640(param_1 + 3,&puStack_28);
  param_1[8] = 0;
  param_1[6] = 0;
  param_1[7] = 0;
  param_1[8] = 0;
  param_1[9] = 0;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&uStack_24);
  *param_1 = &PTR_FUN_005107e8_1_009244b0;
  FUN_00510af2(param_1 + 10,param_3);
  FUN_00510640(param_1 + 0x12,param_2);
  return param_1;
}

// ---- FUN_00510c54  @ 0x510c54
void FUN_00510c54(int param_1)

{
  int iVar1;
  
  iVar1 = std::
          _Rb_tree<std::string,std::string,std::_Identity<std::string>,std::less<std::string>,std::allocator<std::string>>
          ::find((_Rb_tree<std::string,std::string,std::_Identity<std::string>,std::less<std::string>,std::allocator<std::string>>
                  *)(*(int *)(param_1 + 0x2c) + 0x130),(string *)&DAT_00960bfc);
  if (*(int *)(param_1 + 0x2c) + 0x134 == iVar1) {
    FUN_005166ae(4,"Accessing Snapshots without correct scope: call EnableSnapshots.");
    return;
  }
  return;
}

// ---- FUN_00510c8c  @ 0x510c8c
void FUN_00510c8c(int param_1)

{
  int iVar1;
  void *local_20 [2];
  undefined1 *local_18;
  undefined1 *local_14;
  
  iVar1 = std::
          _Rb_tree<std::string,std::string,std::_Identity<std::string>,std::less<std::string>,std::allocator<std::string>>
          ::find((_Rb_tree<std::string,std::string,std::_Identity<std::string>,std::less<std::string>,std::allocator<std::string>>
                  *)(*(int *)(param_1 + 0x2c) + 0x130),(string *)&DAT_00960bfc);
  if (*(int *)(param_1 + 0x2c) + 0x134 != iVar1) {
    local_18 = (undefined1 *)0x0;
    local_20[0] = operator_new(1);
    local_14 = &LAB_005104e0_1;
    local_18 = &LAB_00510586_1;
    gpg::SnapshotManager::FetchAll((SnapshotManager *)(param_1 + 0x20),1,local_20);
    std::_Function_base::~_Function_base((_Function_base *)local_20);
  }
  return;
}

// ---- FUN_00510d70  @ 0x510d70
void FUN_00510d70(int param_1,int param_2)

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
  if (iVar3 == 0) goto LAB_00510d82;
  piVar2 = (int *)(iVar3 + 4);
  local_14 = *(int *)(iVar3 + 4);
  do {
    iVar3 = local_14;
    if (local_14 == 0) {
LAB_00510d82:
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

// ---- FUN_00510db0  @ 0x510db0
void FUN_00510db0(function<void(std::function<void()>)> *param_1,undefined4 *param_2)

{
  function *pfVar1;
  function *local_3c [2];
  code *local_34;
  code *local_30;
  function<void(gpg::FlushStatus)> afStack_2c [16];
  undefined4 local_1c;
  
  if (*(int *)(param_1 + 0x18) != 0) {
    if (*(int *)(param_1 + 8) == 0) {
      std::function<void(gpg::FlushStatus)>::operator()
                ((function<void(gpg::FlushStatus)> *)(param_1 + 0x10),*param_2);
    }
    else {
      std::function<void(gpg::FlushStatus)>::function(afStack_2c,(function *)(param_1 + 0x10));
      local_1c = *param_2;
      local_34 = (code *)0x0;
      pfVar1 = operator_new(0x14);
      *(undefined4 *)(pfVar1 + 8) = 0;
      std::function<void(gpg::FlushStatus)>::swap(afStack_2c,pfVar1);
      *(undefined4 *)(pfVar1 + 0x10) = local_1c;
      local_30 = (code *)0x510d69;
      local_34 = (code *)0x510b8d;
      local_3c[0] = pfVar1;
      std::function<void(std::function<void()>)>::operator()(param_1,(_Function_base *)local_3c);
      std::_Function_base::~_Function_base((_Function_base *)local_3c);
      std::_Function_base::~_Function_base((_Function_base *)afStack_2c);
    }
  }
  return;
}

// ---- FUN_00510e5e  @ 0x510e5e
void FUN_00510e5e(int param_1,undefined4 param_2)

{
  undefined4 extraout_r2;
  undefined4 extraout_r3;
  int iVar1;
  undefined4 local_c;
  
  iVar1 = param_1;
  local_c = param_2;
  FUN_005108ea(*(undefined4 *)(param_1 + 0x48));
  local_c = thunk_FUN_00529dc4();
  FUN_00510db0(param_1 + 0x28,&local_c,extraout_r2,extraout_r3,iVar1);
  return;
}

// ---- FUN_005110d2  @ 0x5110d2
void FUN_005110d2(function<void(std::function<void()>)> *param_1,undefined4 *param_2,
                 undefined4 *param_3)

{
  _Function_base a_Stack_40 [16];
  function<void(gpg::AuthOperation,gpg::AuthStatus)> afStack_30 [16];
  undefined4 local_20;
  undefined4 local_1c;
  
  if (*(int *)(param_1 + 0x18) != 0) {
    if (*(int *)(param_1 + 8) == 0) {
      std::function<void(gpg::AuthOperation,gpg::AuthStatus)>::operator()
                ((function<void(gpg::AuthOperation,gpg::AuthStatus)> *)(param_1 + 0x10),*param_2,
                 *param_3);
    }
    else {
      std::function<void(gpg::AuthOperation,gpg::AuthStatus)>::function
                (afStack_30,(function<void(gpg::AuthOperation,gpg::AuthStatus)> *)(param_1 + 0x10));
      local_20 = *param_3;
      local_1c = *param_2;
      std::function<void()>::
      function<std::_Bind<std::function<void(gpg::AuthOperation,gpg::AuthStatus)>(gpg::AuthOperation,gpg::AuthStatus)>,void>
                ((function<void()> *)a_Stack_40,afStack_30);
      std::function<void(std::function<void()>)>::operator()(param_1,a_Stack_40);
      std::_Function_base::~_Function_base(a_Stack_40);
      std::_Function_base::~_Function_base((_Function_base *)afStack_30);
    }
  }
  return;
}

// ---- FUN_00511138  @ 0x511138
void FUN_00511138(int param_1)

{
  int iVar1;
  _Function_base a_Stack_40 [16];
  mutex *local_30 [4];
  undefined4 local_20;
  undefined4 local_1c;
  
  iVar1 = *(int *)(param_1 + 0x2c);
  if (*(int *)(iVar1 + 0x58) != 0) {
    if (*(int *)(iVar1 + 0x48) == 0) {
      std::function<void(gpg::AuthOperation,gpg::AuthStatus)>::operator()
                ((function<void(gpg::AuthOperation,gpg::AuthStatus)> *)(iVar1 + 0x50),2,0xfffffffd);
    }
    else {
      std::function<void(gpg::AuthOperation,gpg::AuthStatus)>::function
                ((function<void(gpg::AuthOperation,gpg::AuthStatus)> *)local_30,
                 (function<void(gpg::AuthOperation,gpg::AuthStatus)> *)(iVar1 + 0x50));
      local_20 = 0xfffffffd;
      local_1c = 2;
      std::function<void()>::
      function<std::_Bind<std::function<void(gpg::AuthOperation,gpg::AuthStatus)>(gpg::AuthOperation,gpg::AuthStatus)>,void>
                ((function<void()> *)a_Stack_40,
                 (function<void(gpg::AuthOperation,gpg::AuthStatus)> *)local_30);
      std::function<void(std::function<void()>)>::operator()
                ((function<void(std::function<void()>)> *)(iVar1 + 0x40),a_Stack_40);
      std::_Function_base::~_Function_base(a_Stack_40);
      std::_Function_base::~_Function_base((_Function_base *)local_30);
    }
  }
  if (DAT_00960b79 != '\0') {
    local_30[0] = (mutex *)(param_1 + 0x30);
    std::mutex::lock(local_30[0]);
    *(undefined4 *)(param_1 + 0x38) = 1;
    *(undefined4 *)(param_1 + 0x40) = 1;
    std::lock_guard<std::mutex>::~lock_guard((lock_guard<std::mutex> *)local_30);
  }
  return;
}

// ---- FUN_005112b0  @ 0x5112b0
void FUN_005112b0(function<void(std::function<void()>)> *param_1,string *param_2)

{
  _Any_data *p_Var1;
  undefined4 uVar2;
  undefined4 uVar3;
  _Any_data *local_3c [2];
  code *local_34;
  code *local_30;
  function<void(std::string_const&)> afStack_2c [8];
  undefined4 local_24;
  undefined4 local_20;
  undefined1 *local_1c;
  
  if (*(int *)(param_1 + 0x18) != 0) {
    if (*(int *)(param_1 + 8) == 0) {
      std::function<void(std::string_const&)>::operator()
                ((function<void(std::string_const&)> *)(param_1 + 0x10),param_2);
    }
    else {
      std::function<void(std::string_const&)>::function(afStack_2c,(function *)(param_1 + 0x10));
      FUN_007c64e8(&local_1c,param_2);
      local_34 = (code *)0x0;
      p_Var1 = operator_new(0x14);
      *(undefined4 *)(p_Var1 + 8) = 0;
      std::swap<std::_Any_data>((_Any_data *)afStack_2c,p_Var1);
      uVar2 = *(undefined4 *)(p_Var1 + 8);
      *(undefined4 *)(p_Var1 + 8) = local_24;
      uVar3 = *(undefined4 *)(p_Var1 + 0xc);
      *(undefined4 *)(p_Var1 + 0xc) = local_20;
      *(undefined1 **)(p_Var1 + 0x10) = local_1c;
      local_1c = &DAT_00972528;
      local_30 = (code *)0x510e99;
      local_34 = (code *)0x51124d;
      local_3c[0] = p_Var1;
      local_24 = uVar2;
      local_20 = uVar3;
      std::function<void(std::function<void()>)>::operator()(param_1,(_Function_base *)local_3c);
      std::_Function_base::~_Function_base((_Function_base *)local_3c);
      FUN_007c5914(&local_1c);
      std::_Function_base::~_Function_base((_Function_base *)afStack_2c);
    }
  }
  return;
}

// ---- FUN_0051142c  @ 0x51142c
void FUN_0051142c(function<void(std::function<void()>)> *param_1,Player *param_2)

{
  _Any_data *p_Var1;
  undefined4 uVar2;
  undefined4 uVar3;
  _Any_data *local_40 [2];
  code *local_38;
  code *local_34;
  function<void(gpg::Player)> afStack_30 [8];
  undefined4 local_28;
  undefined4 local_24;
  Player aPStack_20 [8];
  
  if (*(int *)(param_1 + 0x18) != 0) {
    if (*(int *)(param_1 + 8) == 0) {
      gpg::Player::Player((Player *)afStack_30,param_2);
      std::function<void(gpg::Player)>::operator()
                ((function<void(gpg::Player)> *)(param_1 + 0x10),afStack_30);
      gpg::Player::~Player((Player *)afStack_30);
    }
    else {
      std::function<void(gpg::Player)>::function(afStack_30,(function *)(param_1 + 0x10));
      gpg::Player::Player(aPStack_20,param_2);
      local_38 = (code *)0x0;
      p_Var1 = operator_new(0x18);
      *(undefined4 *)(p_Var1 + 8) = 0;
      std::swap<std::_Any_data>((_Any_data *)afStack_30,p_Var1);
      uVar2 = *(undefined4 *)(p_Var1 + 8);
      *(undefined4 *)(p_Var1 + 8) = local_28;
      uVar3 = *(undefined4 *)(p_Var1 + 0xc);
      *(undefined4 *)(p_Var1 + 0xc) = local_24;
      local_28 = uVar2;
      local_24 = uVar3;
      gpg::Player::Player((Player *)(p_Var1 + 0x10),aPStack_20);
      local_34 = (code *)0x510ed1;
      local_38 = (code *)0x5113c7;
      local_40[0] = p_Var1;
      std::function<void(std::function<void()>)>::operator()(param_1,local_40);
      std::_Function_base::~_Function_base((_Function_base *)local_40);
      gpg::Player::~Player(aPStack_20);
      std::_Function_base::~_Function_base((_Function_base *)afStack_30);
    }
  }
  return;
}

// ---- FUN_00511550  @ 0x511550
void FUN_00511550(function<void(std::function<void()>)> *param_1,undefined4 *param_2)

{
  _Any_data *p_Var1;
  undefined4 uVar2;
  undefined4 uVar3;
  _Any_data *local_3c [2];
  code *local_34;
  code *local_30;
  function<void(gpg::AuthOperation)> afStack_2c [8];
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  
  if (*(int *)(param_1 + 0x18) != 0) {
    if (*(int *)(param_1 + 8) == 0) {
      std::function<void(gpg::AuthOperation)>::operator()
                ((function<void(gpg::AuthOperation)> *)(param_1 + 0x10),*param_2);
    }
    else {
      std::function<void(gpg::AuthOperation)>::function
                (afStack_2c,(function<void(gpg::AuthOperation)> *)(param_1 + 0x10));
      local_1c = *param_2;
      local_34 = (code *)0x0;
      p_Var1 = operator_new(0x14);
      *(undefined4 *)(p_Var1 + 8) = 0;
      std::swap<std::_Any_data>((_Any_data *)afStack_2c,p_Var1);
      uVar2 = *(undefined4 *)(p_Var1 + 8);
      *(undefined4 *)(p_Var1 + 8) = local_24;
      uVar3 = *(undefined4 *)(p_Var1 + 0xc);
      *(undefined4 *)(p_Var1 + 0xc) = local_20;
      *(undefined4 *)(p_Var1 + 0x10) = local_1c;
      local_30 = (code *)0x510efb;
      local_34 = (code *)0x51185f;
      local_3c[0] = p_Var1;
      local_24 = uVar2;
      local_20 = uVar3;
      std::function<void(std::function<void()>)>::operator()(param_1,(_Function_base *)local_3c);
      std::_Function_base::~_Function_base((_Function_base *)local_3c);
      std::_Function_base::~_Function_base((_Function_base *)afStack_2c);
    }
  }
  return;
}

// ---- FUN_005115f8  @ 0x5115f8
int FUN_005115f8(int *param_1)

{
  char cVar1;
  int iVar2;
  code *pcVar3;
  mutex *this;
  int iVar4;
  int iVar5;
  int iVar6;
  int iVar7;
  int iVar8;
  int iVar9;
  bool bVar10;
  int local_30;
  mutex *local_2c [2];
  
  cVar1 = DAT_00960b78;
  iVar2 = DAT_00943f38;
  this = (mutex *)(param_1 + 0xc);
  local_2c[0] = this;
  std::mutex::lock(this);
  iVar5 = param_1[0xd];
  iVar6 = param_1[0xe];
  iVar7 = param_1[0xf];
  iVar8 = param_1[0x10];
  iVar9 = param_1[0x12];
  iVar4 = param_1[0x11];
  std::lock_guard<std::mutex>::~lock_guard((lock_guard<std::mutex> *)local_2c);
  if ((char)iVar9 != '\0') {
    return 0;
  }
  iVar9 = iVar5;
  local_30 = iVar7;
  if (iVar5 == 1) {
    if (iVar8 == 0) {
      local_2c[0] = (mutex *)0x2;
      FUN_00511550(param_1[0xb] + 0x20,(lock_guard<std::mutex> *)local_2c);
      (**(code **)(*param_1 + 0x148))(param_1,cVar1);
      local_30 = -3;
    }
    else {
      if ((iVar8 != 1) || (iVar2 = (**(code **)(*param_1 + 0x128))(param_1), iVar2 != 0))
      goto LAB_005117ee;
      local_2c[0] = (mutex *)0x2;
      FUN_00511550(param_1[0xb] + 0x20,(lock_guard<std::mutex> *)local_2c);
      local_30 = -3;
      local_2c[0] = (mutex *)0x2;
      FUN_005110d2(param_1[0xb] + 0x40,(lock_guard<std::mutex> *)local_2c,&local_30);
    }
    iVar9 = 0;
    bVar10 = false;
  }
  else {
    if (iVar8 == 1) {
      if (iVar6 == 1) {
        local_2c[0] = (mutex *)iVar6;
        FUN_00511550(param_1[0xb] + 0x20,(lock_guard<std::mutex> *)local_2c);
        if (cVar1 == '\0') {
          pcVar3 = *(code **)(*param_1 + 0x144);
LAB_005116fc:
          iVar2 = (*pcVar3)(param_1);
        }
      }
      else {
        if (iVar6 != 2) goto LAB_005117ee;
        local_2c[0] = (mutex *)iVar8;
        FUN_00511550(param_1[0xb] + 0x20,(lock_guard<std::mutex> *)local_2c);
        if (cVar1 == '\0') {
          pcVar3 = *(code **)(*param_1 + 0x140);
          goto LAB_005116fc;
        }
      }
      bVar10 = iVar2 == 1;
      local_2c[0] = (mutex *)0x1;
      if (bVar10) {
        iVar9 = 1;
      }
      local_30 = iVar2;
      FUN_005110d2(param_1[0xb] + 0x40,(lock_guard<std::mutex> *)local_2c,&local_30);
      if (iVar9 != iVar5) goto LAB_00511732;
    }
    else {
LAB_005117ee:
      bVar10 = false;
    }
    if (local_30 == iVar7) goto LAB_00511764;
  }
LAB_00511732:
  local_2c[0] = this;
  std::mutex::lock(this);
  param_1[0xd] = iVar9;
  param_1[0xf] = local_30;
  std::lock_guard<std::mutex>::~lock_guard((lock_guard<std::mutex> *)local_2c);
  if (iVar9 != iVar5) {
    local_2c[0] = this;
    std::mutex::lock(this);
    param_1[0x11] = param_1[0x11] + 1;
    std::lock_guard<std::mutex>::~lock_guard((lock_guard<std::mutex> *)local_2c);
  }
LAB_00511764:
  if (bVar10) {
    (**(code **)(*param_1 + 0x114))(param_1);
  }
  if ((iVar9 == 1) && (iVar5 != 1)) {
    (**(code **)(*param_1 + 0x124))(param_1);
  }
  if ((bVar10) && (cVar1 == '\0')) {
    (**(code **)(*param_1 + 0x14c))(param_1);
    FUN_0051066c(param_1);
    FUN_005106b4(param_1);
    (**(code **)(*param_1 + 0x150))(param_1);
    (**(code **)(*param_1 + 0x154))(param_1);
    FUN_00510c8c(param_1);
  }
  if (iVar9 != 1) {
    if ((iVar6 != 0) && (DAT_00960b79 == '\0')) {
      local_2c[0] = this;
      std::mutex::lock(this);
      param_1[0xe] = 0;
      std::lock_guard<std::mutex>::~lock_guard((lock_guard<std::mutex> *)local_2c);
    }
    return 0;
  }
  return iVar4;
}

// ---- FUN_00511920  @ 0x511920
void FUN_00511920(int *param_1)

{
  _Any_data *p_Var1;
  undefined4 uVar2;
  undefined4 uVar3;
  int iVar4;
  _Any_data *local_44 [2];
  code *local_3c;
  code *local_38;
  mutex *local_34 [2];
  undefined4 local_2c;
  undefined4 local_28;
  undefined4 local_24;
  
  local_34[0] = (mutex *)0x2;
  FUN_00511550(param_1[0xb] + 0x20,(lock_guard<std::mutex> *)local_34);
  local_34[0] = (mutex *)(param_1 + 0xc);
  std::mutex::lock(local_34[0]);
  iVar4 = param_1[0xd];
  if (iVar4 != 0) {
    param_1[0xd] = 0;
    param_1[0xe] = 0;
  }
  std::lock_guard<std::mutex>::~lock_guard((lock_guard<std::mutex> *)local_34);
  if (iVar4 != 0) {
    iVar4 = param_1[0xb];
    if (*(int *)(iVar4 + 0x78) != 0) {
      if (*(int *)(iVar4 + 0x68) == 0) {
        std::function<void(gpg::OobError)>::operator()
                  ((function<void(gpg::OobError)> *)(iVar4 + 0x70),1);
      }
      else {
        std::function<void(gpg::OobError)>::function
                  ((function<void(gpg::OobError)> *)local_34,(function *)(iVar4 + 0x70));
        local_24 = 1;
        local_3c = (code *)0x0;
        p_Var1 = operator_new(0x14);
        *(undefined4 *)(p_Var1 + 8) = 0;
        std::swap<std::_Any_data>((_Any_data *)local_34,p_Var1);
        uVar2 = *(undefined4 *)(p_Var1 + 8);
        *(undefined4 *)(p_Var1 + 8) = local_2c;
        uVar3 = *(undefined4 *)(p_Var1 + 0xc);
        *(undefined4 *)(p_Var1 + 0xc) = local_28;
        local_38 = (code *)0x510f13;
        *(undefined4 *)(p_Var1 + 0x10) = local_24;
        local_3c = (code *)0x5118d5;
        local_44[0] = p_Var1;
        local_2c = uVar2;
        local_28 = uVar3;
        std::function<void(std::function<void()>)>::operator()
                  ((function<void(std::function<void()>)> *)(iVar4 + 0x60),
                   (_Function_base *)local_44);
        std::_Function_base::~_Function_base((_Function_base *)local_44);
        std::_Function_base::~_Function_base((_Function_base *)local_34);
      }
    }
    (**(code **)(*param_1 + 0x148))(param_1,DAT_00960b78);
  }
  return;
}

// ---- FUN_00511a98  @ 0x511a98
void FUN_00511a98(function<void(std::function<void()>)> *param_1,undefined4 *param_2,
                 undefined4 param_3,MultiplayerInvitation *param_4)

{
  _Any_data *p_Var1;
  undefined4 uVar2;
  undefined4 uVar3;
  _Any_data *local_58 [2];
  code *local_50;
  code *local_4c;
  function<void(gpg::MultiplayerEvent,std::string,gpg::MultiplayerInvitation)> afStack_48 [8];
  undefined4 local_40;
  undefined4 local_3c;
  MultiplayerInvitation aMStack_38 [16];
  undefined1 *local_28;
  undefined4 local_24;
  
  if (*(int *)(param_1 + 0x18) != 0) {
    if (*(int *)(param_1 + 8) == 0) {
      uVar2 = *param_2;
      FUN_007c64e8(local_58,param_3);
      gpg::MultiplayerInvitation::MultiplayerInvitation((MultiplayerInvitation *)afStack_48,param_4)
      ;
      std::function<void(gpg::MultiplayerEvent,std::string,gpg::MultiplayerInvitation)>::operator()
                ((function<void(gpg::MultiplayerEvent,std::string,gpg::MultiplayerInvitation)> *)
                 (param_1 + 0x10),uVar2,local_58,afStack_48);
      gpg::MultiplayerInvitation::~MultiplayerInvitation((MultiplayerInvitation *)afStack_48);
      FUN_007c5914(local_58);
    }
    else {
      std::function<void(gpg::MultiplayerEvent,std::string,gpg::MultiplayerInvitation)>::function
                (afStack_48,
                 (function<void(gpg::MultiplayerEvent,std::string,gpg::MultiplayerInvitation)> *)
                 (param_1 + 0x10));
      gpg::MultiplayerInvitation::MultiplayerInvitation(aMStack_38,param_4);
      FUN_007c64e8(&local_28,param_3);
      local_24 = *param_2;
      local_50 = (code *)0x0;
      p_Var1 = operator_new(0x28);
      *(undefined4 *)(p_Var1 + 8) = 0;
      std::swap<std::_Any_data>((_Any_data *)afStack_48,p_Var1);
      uVar2 = *(undefined4 *)(p_Var1 + 8);
      *(undefined4 *)(p_Var1 + 8) = local_40;
      uVar3 = *(undefined4 *)(p_Var1 + 0xc);
      *(undefined4 *)(p_Var1 + 0xc) = local_3c;
      local_40 = uVar2;
      local_3c = uVar3;
      gpg::MultiplayerInvitation::MultiplayerInvitation
                ((MultiplayerInvitation *)(p_Var1 + 0x10),aMStack_38);
      *(undefined1 **)(p_Var1 + 0x20) = local_28;
      local_28 = &DAT_00972528;
      *(undefined4 *)(p_Var1 + 0x24) = local_24;
      local_4c = (code *)0x510f7d;
      local_50 = (code *)0x511a11;
      local_58[0] = p_Var1;
      std::function<void(std::function<void()>)>::operator()(param_1,local_58);
      std::_Function_base::~_Function_base((_Function_base *)local_58);
      FUN_007c5914(&local_28);
      gpg::MultiplayerInvitation::~MultiplayerInvitation(aMStack_38);
      std::_Function_base::~_Function_base((_Function_base *)afStack_48);
    }
  }
  return;
}

// ---- FUN_00511be0  @ 0x511be0
void FUN_00511be0(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                 undefined4 param_5)

{
  undefined4 local_c;
  undefined4 uStack_8;
  
  local_c = param_2;
  uStack_8 = param_3;
  FUN_00511a98(*(int *)(param_1 + 0x2c) + 0xc0,&local_c,param_4,param_5,param_1);
  return;
}

// ---- FUN_00511cac  @ 0x511cac
void FUN_00511cac(function<void(std::function<void()>)> *param_1,undefined4 *param_2,
                 undefined4 param_3,TurnBasedMatch *param_4)

{
  _Any_data *p_Var1;
  undefined4 uVar2;
  undefined4 uVar3;
  _Any_data *local_50 [2];
  code *local_48;
  code *local_44;
  function<void(gpg::MultiplayerEvent,std::string,gpg::TurnBasedMatch)> afStack_40 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_3c [4];
  undefined4 local_38;
  undefined4 local_34;
  TurnBasedMatch aTStack_30 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_2c [4];
  undefined1 *local_28;
  undefined4 local_24;
  
  if (*(int *)(param_1 + 0x18) != 0) {
    if (*(int *)(param_1 + 8) == 0) {
      uVar2 = *param_2;
      FUN_007c64e8(local_50,param_3);
      gpg::TurnBasedMatch::TurnBasedMatch((TurnBasedMatch *)afStack_40,param_4);
      std::function<void(gpg::MultiplayerEvent,std::string,gpg::TurnBasedMatch)>::operator()
                ((function<void(gpg::MultiplayerEvent,std::string,gpg::TurnBasedMatch)> *)
                 (param_1 + 0x10),uVar2,local_50,afStack_40);
      std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_3c);
      FUN_007c5914(local_50);
    }
    else {
      std::function<void(gpg::MultiplayerEvent,std::string,gpg::TurnBasedMatch)>::function
                (afStack_40,(function *)(param_1 + 0x10));
      gpg::TurnBasedMatch::TurnBasedMatch(aTStack_30,param_4);
      FUN_007c64e8(&local_28,param_3);
      local_24 = *param_2;
      local_48 = (code *)0x0;
      p_Var1 = operator_new(0x20);
      *(undefined4 *)(p_Var1 + 8) = 0;
      std::swap<std::_Any_data>((_Any_data *)afStack_40,p_Var1);
      uVar2 = *(undefined4 *)(p_Var1 + 8);
      *(undefined4 *)(p_Var1 + 8) = local_38;
      uVar3 = *(undefined4 *)(p_Var1 + 0xc);
      *(undefined4 *)(p_Var1 + 0xc) = local_34;
      local_38 = uVar2;
      local_34 = uVar3;
      gpg::TurnBasedMatch::TurnBasedMatch((TurnBasedMatch *)(p_Var1 + 0x10),aTStack_30);
      *(undefined1 **)(p_Var1 + 0x18) = local_28;
      local_28 = &DAT_00972528;
      *(undefined4 *)(p_Var1 + 0x1c) = local_24;
      local_44 = (code *)0x51102d;
      local_48 = (code *)0x511c27;
      local_50[0] = p_Var1;
      std::function<void(std::function<void()>)>::operator()(param_1,local_50);
      std::_Function_base::~_Function_base((_Function_base *)local_50);
      FUN_007c5914(&local_28);
      std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_2c);
      std::_Function_base::~_Function_base((_Function_base *)afStack_40);
    }
  }
  return;
}

// ---- FUN_00511df4  @ 0x511df4
void FUN_00511df4(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                 undefined4 param_5)

{
  undefined4 local_c;
  undefined4 uStack_8;
  
  local_c = param_2;
  uStack_8 = param_3;
  FUN_00511cac(*(int *)(param_1 + 0x2c) + 0xe0,&local_c,param_4,param_5,param_1);
  return;
}

// ---- FUN_00511ea0  @ 0x511ea0
void FUN_00511ea0(function<void(std::function<void()>)> *param_1,Quest *param_2)

{
  _Any_data *p_Var1;
  undefined4 uVar2;
  undefined4 uVar3;
  _Any_data *local_40 [2];
  code *local_38;
  code *local_34;
  function<void(gpg::Quest)> afStack_30 [8];
  undefined4 local_28;
  undefined4 local_24;
  Quest aQStack_20 [8];
  
  if (*(int *)(param_1 + 0x18) != 0) {
    if (*(int *)(param_1 + 8) == 0) {
      gpg::Quest::Quest((Quest *)afStack_30,param_2);
      std::function<void(gpg::Quest)>::operator()
                ((function<void(gpg::Quest)> *)(param_1 + 0x10),afStack_30);
      gpg::Quest::~Quest((Quest *)afStack_30);
    }
    else {
      std::function<void(gpg::Quest)>::function(afStack_30,(function *)(param_1 + 0x10));
      gpg::Quest::Quest(aQStack_20,param_2);
      local_38 = (code *)0x0;
      p_Var1 = operator_new(0x18);
      *(undefined4 *)(p_Var1 + 8) = 0;
      std::swap<std::_Any_data>((_Any_data *)afStack_30,p_Var1);
      uVar2 = *(undefined4 *)(p_Var1 + 8);
      *(undefined4 *)(p_Var1 + 8) = local_28;
      uVar3 = *(undefined4 *)(p_Var1 + 0xc);
      *(undefined4 *)(p_Var1 + 0xc) = local_24;
      local_28 = uVar2;
      local_24 = uVar3;
      gpg::Quest::Quest((Quest *)(p_Var1 + 0x10),aQStack_20);
      local_34 = (code *)0x5110a9;
      local_38 = (code *)0x511e3b;
      local_40[0] = p_Var1;
      std::function<void(std::function<void()>)>::operator()(param_1,local_40);
      std::_Function_base::~_Function_base((_Function_base *)local_40);
      gpg::Quest::~Quest(aQStack_20);
      std::_Function_base::~_Function_base((_Function_base *)afStack_30);
    }
  }
  return;
}

// ---- FUN_00511f8c  @ 0x511f8c
void FUN_00511f8c(int *param_1,Quest *param_2,undefined4 param_3)

{
  code *pcVar1;
  int *piStack_20;
  Quest *pQStack_1c;
  undefined4 uStack_18;
  
  pcVar1 = *(code **)(*param_1 + 0x120);
  piStack_20 = param_1;
  pQStack_1c = param_2;
  uStack_18 = param_3;
  gpg::Quest::Quest((Quest *)&piStack_20,param_2);
  (*pcVar1)(param_1,(Quest *)&piStack_20);
  gpg::Quest::~Quest((Quest *)&piStack_20);
  FUN_00511ea0(param_1[0xb] + 0x100,param_2);
  return;
}

// ---- FUN_00512040  @ 0x512040
int * FUN_00512040(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 *param_4,
                  _Any_data *param_5)

{
  void *pvVar1;
  int iVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  int iVar5;
  undefined1 auStack_4c [4];
  undefined4 local_48;
  undefined4 local_44;
  int local_40 [2];
  undefined4 local_38;
  undefined4 local_34;
  function afStack_30 [8];
  undefined4 local_28;
  
  *param_1 = 0;
  *(undefined4 *)(param_1 + 1) = 0;
  pvVar1 = operator_new(0x50);
  *param_1 = (int)pvVar1;
  local_48 = *param_4;
  *param_4 = 0;
  local_38 = 0;
  local_44 = param_4[1];
  param_4[1] = 0;
  std::swap<std::_Any_data>(param_5,(_Any_data *)local_40);
  uVar3 = *(undefined4 *)(param_5 + 8);
  local_28 = 0;
  *(undefined4 *)(param_5 + 8) = local_38;
  uVar4 = *(undefined4 *)(param_5 + 0xc);
  *(undefined4 *)(param_5 + 0xc) = local_34;
  local_38 = uVar3;
  local_34 = uVar4;
  std::function<void(gpg::FlushStatus)>::swap
            ((function<void(gpg::FlushStatus)> *)(param_5 + 0x10),afStack_30);
  if (pvVar1 != (void *)0x0) {
    FUN_00510b18(pvVar1,&local_48,(__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_40);
  }
  FUN_0050fd1e((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_40);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_44);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::
  __shared_count<gpg::GameServicesImpl::FlushOperation*,std::__shared_ptr<gpg::GameServicesImpl::FlushOperation,(__gnu_cxx::_Lock_policy)2>::_Deleter<std::allocator<gpg::GameServicesImpl::FlushOperation>>,std::allocator<gpg::GameServicesImpl::FlushOperation>>
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_40,*param_1,auStack_4c,&local_48);
  iVar5 = param_1[1];
  iVar2 = *param_1;
  param_1[1] = local_40[0];
  local_40[0] = iVar5;
  if (iVar2 != 0) {
    *(int *)(iVar2 + 4) = iVar2;
    std::__weak_count<(__gnu_cxx::_Lock_policy)2>::operator=
              ((__weak_count<(__gnu_cxx::_Lock_policy)2> *)(iVar2 + 8),
               (__shared_count *)(param_1 + 1));
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_40);
  return param_1;
}

// ---- FUN_0051221c  @ 0x51221c
void FUN_0051221c(int param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  mutex *local_94;
  undefined1 auStack_90 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_8c [4];
  function<void(gpg::FlushStatus)> afStack_88 [8];
  undefined4 local_80;
  undefined4 local_78;
  undefined4 local_74;
  undefined4 local_70;
  _Any_data a_Stack_68 [8];
  undefined4 local_60;
  undefined4 local_5c;
  function afStack_58 [8];
  undefined4 local_50;
  undefined4 local_48;
  undefined4 local_44;
  undefined4 local_40;
  undefined4 local_3c;
  function<void(gpg::FlushStatus)> afStack_38 [8];
  undefined4 local_30;
  
  if (DAT_00960b79 != '\0') {
    FUN_005166ae(4,"This authorization mode is set to disallow authorization by UI.");
    return;
  }
  local_94 = (mutex *)(param_1 + 0x30);
  std::mutex::lock(local_94);
  *(undefined4 *)(param_1 + 0x40) = 1;
  *(undefined4 *)(param_1 + 0x38) = 2;
  FUN_00510d70(auStack_90,param_1 + 4);
  local_70 = 0;
  local_80 = 0;
  local_40 = 0;
  local_30 = 0;
  std::function<void(gpg::FlushStatus)>::swap(afStack_88,(function *)afStack_38);
  local_60 = 0;
  std::swap<std::_Any_data>((_Any_data *)&local_48,a_Stack_68);
  uVar2 = local_5c;
  uVar1 = local_60;
  local_50 = 0;
  local_60 = local_40;
  local_40 = uVar1;
  local_5c = local_3c;
  local_3c = uVar2;
  std::function<void(gpg::FlushStatus)>::swap(afStack_38,afStack_58);
  FUN_0050fd1e((_Any_data *)&local_48);
  std::_Function_base::~_Function_base((_Function_base *)afStack_88);
  std::_Function_base::~_Function_base((_Function_base *)&local_78);
  FUN_00512040((_Function_base *)&local_78,0,(_Any_data *)&local_48,auStack_90,a_Stack_68);
  local_44 = local_74;
  local_48 = local_78;
  local_78 = 0;
  local_74 = 0;
  FUN_00510822(param_1,(_Any_data *)&local_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_44);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_74);
  FUN_0050fd1e(a_Stack_68);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_8c);
  std::lock_guard<std::mutex>::~lock_guard((lock_guard<std::mutex> *)&local_94);
  return;
}

// ---- FUN_00512240  @ 0x512240
void FUN_00512240(int param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  mutex *pmStack_94;
  undefined1 auStack_90 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_8c [4];
  function<void(gpg::FlushStatus)> afStack_88 [8];
  undefined4 uStack_80;
  undefined4 uStack_78;
  undefined4 uStack_74;
  undefined4 uStack_70;
  _Any_data a_Stack_68 [8];
  undefined4 uStack_60;
  undefined4 uStack_5c;
  function afStack_58 [8];
  undefined4 uStack_50;
  undefined4 uStack_48;
  undefined4 uStack_44;
  undefined4 uStack_40;
  undefined4 uStack_3c;
  function<void(gpg::FlushStatus)> afStack_38 [8];
  undefined4 uStack_30;
  
  pmStack_94 = (mutex *)(param_1 + 0x30);
  std::mutex::lock(pmStack_94);
  *(undefined4 *)(param_1 + 0x40) = 0;
  *(undefined4 *)(param_1 + 0x38) = 0;
  FUN_00510d70(auStack_90,param_1 + 4);
  uStack_70 = 0;
  uStack_80 = 0;
  uStack_40 = 0;
  uStack_30 = 0;
  std::function<void(gpg::FlushStatus)>::swap(afStack_88,(function *)afStack_38);
  uStack_60 = 0;
  std::swap<std::_Any_data>((_Any_data *)&uStack_48,a_Stack_68);
  uVar2 = uStack_5c;
  uVar1 = uStack_60;
  uStack_50 = 0;
  uStack_60 = uStack_40;
  uStack_40 = uVar1;
  uStack_5c = uStack_3c;
  uStack_3c = uVar2;
  std::function<void(gpg::FlushStatus)>::swap(afStack_38,afStack_58);
  FUN_0050fd1e((_Any_data *)&uStack_48);
  std::_Function_base::~_Function_base((_Function_base *)afStack_88);
  std::_Function_base::~_Function_base((_Function_base *)&uStack_78);
  FUN_00512040((_Function_base *)&uStack_78,0,(_Any_data *)&uStack_48,auStack_90,a_Stack_68);
  uStack_44 = uStack_74;
  uStack_48 = uStack_78;
  uStack_78 = 0;
  uStack_74 = 0;
  FUN_00510822(param_1,(_Any_data *)&uStack_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&uStack_44);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&uStack_74);
  FUN_0050fd1e(a_Stack_68);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_8c);
  std::lock_guard<std::mutex>::~lock_guard((lock_guard<std::mutex> *)&pmStack_94);
  return;
}

// ---- FUN_00512248  @ 0x512248
int * FUN_00512248(int *param_1,undefined4 param_2,undefined4 param_3,int param_4)

{
  undefined4 *puVar1;
  code *pcVar2;
  int iVar3;
  int *local_28;
  undefined4 uStack_24;
  code *local_20;
  int local_1c;
  
  *param_1 = 0;
  *(undefined4 *)(param_1 + 1) = 0;
  local_28 = param_1;
  uStack_24 = param_2;
  local_20 = (code *)param_3;
  local_1c = param_4;
  puVar1 = operator_new(0x1c);
  *param_1 = (int)puVar1;
  pcVar2 = *(code **)(param_4 + 8);
  local_20 = (code *)0x0;
  if (pcVar2 != (code *)0x0) {
    local_1c = *(int *)(param_4 + 0xc);
    local_20 = pcVar2;
    (*pcVar2)((_Any_data *)&local_28,param_4,2);
  }
  if (puVar1 != (undefined4 *)0x0) {
    puVar1[1] = 0;
    puVar1[2] = 0;
    puVar1[5] = 0;
    *puVar1 = &PTR_FUN_005105dc_1_00924408;
    std::swap<std::_Any_data>((_Any_data *)&local_28,(_Any_data *)(puVar1 + 3));
    pcVar2 = (code *)puVar1[5];
    puVar1[5] = local_20;
    iVar3 = puVar1[6];
    puVar1[6] = local_1c;
    local_20 = pcVar2;
    local_1c = iVar3;
  }
  std::_Function_base::~_Function_base((_Function_base *)&local_28);
  iVar3 = *param_1;
  local_28 = (int *)0x0;
  puVar1 = operator_new(0x14);
  if (puVar1 != (undefined4 *)0x0) {
    puVar1[1] = 1;
    puVar1[2] = 1;
    puVar1[3] = iVar3;
    *puVar1 = &PTR_LAB_005103b0_1_00924528;
  }
  local_28 = (int *)param_1[1];
  param_1[1] = (int)puVar1;
  iVar3 = *param_1;
  if (iVar3 != 0) {
    *(int *)(iVar3 + 4) = iVar3;
    std::__weak_count<(__gnu_cxx::_Lock_policy)2>::operator=
              ((__weak_count<(__gnu_cxx::_Lock_policy)2> *)(iVar3 + 8),
               (__shared_count *)(param_1 + 1));
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_28);
  return param_1;
}

// ---- FUN_00512344  @ 0x512344
undefined4 FUN_00512344(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  undefined4 local_20;
  undefined4 local_1c;
  undefined4 local_18;
  undefined4 local_14;
  
  local_20 = param_1;
  local_1c = param_2;
  local_18 = param_3;
  local_14 = param_4;
  FUN_00512248(&local_20,0,&local_18,param_2);
  local_18 = local_20;
  local_14 = local_1c;
  local_1c = 0;
  local_20 = 0;
  uVar1 = FUN_00510986(param_1,&local_18);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_14);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_1c);
  return uVar1;
}

// ---- FUN_005123e4  @ 0x5123e4
int * FUN_005123e4(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 *param_4,
                  undefined4 param_5)

{
  void *pvVar1;
  int iVar2;
  int iVar3;
  undefined1 auStack_44 [4];
  undefined4 local_40;
  undefined4 local_3c;
  int local_38 [8];
  
  *param_1 = 0;
  *(undefined4 *)(param_1 + 1) = 0;
  pvVar1 = operator_new(0x50);
  *param_1 = (int)pvVar1;
  local_40 = *param_4;
  local_3c = param_4[1];
  param_4[1] = 0;
  *param_4 = 0;
  FUN_00510af2((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_38,param_5);
  if (pvVar1 != (void *)0x0) {
    FUN_00510b18(pvVar1,&local_40,(__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_38);
  }
  FUN_0050fd1e((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_38);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_3c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::
  __shared_count<gpg::GameServicesImpl::FlushOperation*,std::__shared_ptr<gpg::GameServicesImpl::FlushOperation,(__gnu_cxx::_Lock_policy)2>::_Deleter<std::allocator<gpg::GameServicesImpl::FlushOperation>>,std::allocator<gpg::GameServicesImpl::FlushOperation>>
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_38,*param_1,auStack_44,&local_40);
  iVar3 = param_1[1];
  iVar2 = *param_1;
  param_1[1] = local_38[0];
  local_38[0] = iVar3;
  if (iVar2 != 0) {
    *(int *)(iVar2 + 4) = iVar2;
    std::__weak_count<(__gnu_cxx::_Lock_policy)2>::operator=
              ((__weak_count<(__gnu_cxx::_Lock_policy)2> *)(iVar2 + 8),
               (__shared_count *)(param_1 + 1));
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_38);
  return param_1;
}

// ---- FUN_005124a2  @ 0x5124a2
undefined4 FUN_005124a2(int param_1,undefined4 param_2)

{
  undefined4 uVar1;
  undefined1 auStack_30 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_2c [4];
  undefined4 local_28;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  
  FUN_00510d70(auStack_30,param_1 + 4);
  FUN_005123e4(&local_28,0,&local_20,auStack_30,param_2);
  local_1c = local_24;
  local_20 = local_28;
  local_28 = 0;
  local_24 = 0;
  uVar1 = FUN_00510926(param_1,0,&local_20);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_1c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_24);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_2c);
  return uVar1;
}

// ---- FUN_00512518  @ 0x512518
GameServicesImpl * FUN_00512518(GameServicesImpl *param_1,undefined4 *param_2)

{
  undefined4 uVar1;
  undefined1 auStack_40 [4];
  undefined1 auStack_3c [4];
  undefined4 local_38;
  undefined4 uStack_34;
  undefined4 local_30;
  undefined4 uStack_2c;
  
  *(undefined4 *)(param_1 + 4) = 0;
  *(undefined4 *)(param_1 + 8) = 0;
  *(undefined ***)param_1 = &PTR_FUN_005126c0_1_00924548;
  gpg::AchievementManager::AchievementManager((AchievementManager *)(param_1 + 0xc),param_1);
  gpg::EventManager::EventManager((EventManager *)(param_1 + 0x10),param_1);
  gpg::LeaderboardManager::LeaderboardManager((LeaderboardManager *)(param_1 + 0x14),param_1);
  gpg::PlayerManager::PlayerManager((PlayerManager *)(param_1 + 0x18),param_1);
  gpg::QuestManager::QuestManager((QuestManager *)(param_1 + 0x1c),param_1);
  gpg::SnapshotManager::SnapshotManager((SnapshotManager *)(param_1 + 0x20),param_1);
  gpg::TurnBasedMultiplayerManager::TurnBasedMultiplayerManager
            ((TurnBasedMultiplayerManager *)(param_1 + 0x24),param_1);
  gpg::RealTimeMultiplayerManager::RealTimeMultiplayerManager
            ((RealTimeMultiplayerManager *)(param_1 + 0x28),param_1);
  uVar1 = *param_2;
  *param_2 = 0;
  *(undefined4 *)(param_1 + 0x3c) = 0xfffffffd;
  *(undefined4 *)(param_1 + 0x2c) = uVar1;
  *(undefined4 *)(param_1 + 0x30) = 0;
  *(undefined4 *)(param_1 + 0x38) = 1;
  *(undefined4 *)(param_1 + 0x40) = 1;
  *(undefined4 *)(param_1 + 0x44) = 1;
  *(undefined4 *)(param_1 + 0x30) = 0;
  *(undefined4 *)(param_1 + 0x34) = 0;
  param_1[0x48] = (GameServicesImpl)0x0;
  FUN_007c6a60(auStack_40,"main_dispatch",&local_30);
  local_38 = 8;
  uStack_34 = 1;
  FUN_00512898(param_1 + 0x4c,auStack_40,8,1,1);
  FUN_007c5914(auStack_40);
  FUN_007c6a60(auStack_3c,"snapshot_helper",auStack_40);
  local_30 = 0x34;
  uStack_2c = 1;
  FUN_00512898(param_1 + 0x60,auStack_3c,0x34,1,1);
  FUN_007c5914(auStack_3c);
  return param_1;
}

// ---- FUN_005126c0  @ 0x5126c0
undefined4 *
FUN_005126c0(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  void *pvVar1;
  
  *param_1 = &PTR_FUN_005126c0_1_00924548;
  FUN_005166ae(1,"GameServicesImpl successfully cleaned up.",param_3,&PTR_FUN_005126c0_1_00924548,
               param_4);
  FUN_00512858(param_1 + 0x18);
  FUN_00512858(param_1 + 0x13);
  pvVar1 = (void *)param_1[0xb];
  if (pvVar1 != (void *)0x0) {
    FUN_0050a444(pvVar1);
    operator_delete(pvVar1);
  }
  param_1[0xb] = 0;
  gpg::RealTimeMultiplayerManager::~RealTimeMultiplayerManager
            ((RealTimeMultiplayerManager *)(param_1 + 10));
  gpg::TurnBasedMultiplayerManager::~TurnBasedMultiplayerManager
            ((TurnBasedMultiplayerManager *)(param_1 + 9));
  gpg::SnapshotManager::~SnapshotManager((SnapshotManager *)(param_1 + 8));
  gpg::QuestManager::~QuestManager((QuestManager *)(param_1 + 7));
  gpg::PlayerManager::~PlayerManager((PlayerManager *)(param_1 + 6));
  gpg::LeaderboardManager::~LeaderboardManager((LeaderboardManager *)(param_1 + 5));
  gpg::EventManager::~EventManager((EventManager *)(param_1 + 4));
  gpg::AchievementManager::~AchievementManager((AchievementManager *)(param_1 + 3));
  std::__weak_count<(__gnu_cxx::_Lock_policy)2>::~__weak_count
            ((__weak_count<(__gnu_cxx::_Lock_policy)2> *)(param_1 + 2));
  return param_1;
}

// ---- FUN_00512750  @ 0x512750
void * FUN_00512750(void *param_1)

{
  FUN_005126c0();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_005127a4  @ 0x5127a4
undefined4 * FUN_005127a4(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_005127a4_1_009246a8;
  std::__weak_count<(__gnu_cxx::_Lock_policy)2>::~__weak_count
            ((__weak_count<(__gnu_cxx::_Lock_policy)2> *)(param_1 + 2));
  return param_1;
}

// ---- FUN_005127c0  @ 0x5127c0
void * FUN_005127c0(void *param_1)

{
  FUN_005127a4();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_00512814  @ 0x512814
void FUN_00512814(int param_1)

{
  (**(code **)(**(int **)(param_1 + 0xc) + 0x40))
            (*(int **)(param_1 + 0xc),*(undefined4 *)(param_1 + 0x14),
             *(undefined4 *)(param_1 + 0x18));
  return;
}

// ---- FUN_00512828  @ 0x512828
undefined4 * FUN_00512828(undefined4 *param_1)

{
  *param_1 = &PTR___Sp_counted_base_1_009242b8;
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_00512858  @ 0x512858
undefined4 * FUN_00512858(undefined4 *param_1)

{
  *param_1 = &DAT_00924748;
  FUN_00518884();
  return param_1;
}

// ---- FUN_00512898  @ 0x512898
undefined4 *
FUN_00512898(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
            undefined1 param_5)

{
  FUN_00518e24(param_1,param_2,param_5);
  *param_1 = &DAT_00924748;
  param_1[3] = param_3;
  param_1[4] = param_4;
  return param_1;
}

// ---- FUN_005128f8  @ 0x5128f8
undefined4 * FUN_005128f8(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_005128f8_1_009246f8;
  if ((_Sp_counted_base<(__gnu_cxx::_Lock_policy)2> *)param_1[2] !=
      (_Sp_counted_base<(__gnu_cxx::_Lock_policy)2> *)0x0) {
    std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_weak_release
              ((_Sp_counted_base<(__gnu_cxx::_Lock_policy)2> *)param_1[2]);
  }
  return param_1;
}

// ---- FUN_00512914  @ 0x512914
void * FUN_00512914(void *param_1)

{
  FUN_005128f8();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_00512928  @ 0x512928
undefined4 * FUN_00512928(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_00512928_1_00924710;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(param_1 + 4));
  FUN_005128f8(param_1);
  return param_1;
}

// ---- FUN_00512948  @ 0x512948
void * FUN_00512948(void *param_1)

{
  FUN_00512928();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0051295c  @ 0x51295c
int * FUN_0051295c(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 *param_4,
                  undefined4 *param_5)

{
  bool bVar1;
  undefined4 *puVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  int *piVar5;
  int iVar6;
  int iVar7;
  int *local_20;
  int local_1c;
  undefined4 uStack_18;
  
  *param_1 = 0;
  param_1[1] = 0;
  local_20 = param_1;
  local_1c = param_2;
  uStack_18 = param_3;
  puVar2 = operator_new(0x1c);
  *param_1 = (int)puVar2;
  local_20 = (int *)*param_4;
  local_1c = param_4[1];
  if (local_1c != 0) {
    piVar5 = (int *)(local_1c + 4);
    DataMemoryBarrier(0x1f);
    do {
      ExclusiveAccess(piVar5);
      bVar1 = (bool)hasExclusiveAccess(piVar5);
    } while (!bVar1);
    *piVar5 = *piVar5 + 1;
    DataMemoryBarrier(0x1f);
  }
  uVar3 = *param_5;
  uVar4 = param_5[1];
  if (puVar2 != (undefined4 *)0x0) {
    puVar2[1] = 0;
    puVar2[2] = 0;
    *puVar2 = &PTR_FUN_00512928_1_00924710;
    puVar2[3] = local_20;
    puVar2[4] = local_1c;
    if (local_1c != 0) {
      piVar5 = (int *)(local_1c + 4);
      DataMemoryBarrier(0x1f);
      do {
        ExclusiveAccess(piVar5);
        bVar1 = (bool)hasExclusiveAccess(piVar5);
      } while (!bVar1);
      *piVar5 = *piVar5 + 1;
      DataMemoryBarrier(0x1f);
    }
    puVar2[5] = uVar3;
    puVar2[6] = uVar4;
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_1c);
  iVar6 = *param_1;
  local_20 = (int *)0x0;
  puVar2 = operator_new(0x14);
  if (puVar2 != (undefined4 *)0x0) {
    puVar2[1] = 1;
    puVar2[2] = 1;
    puVar2[3] = iVar6;
    *puVar2 = &PTR_LAB_005127d8_1_00924728;
  }
  local_20 = (int *)param_1[1];
  iVar6 = *param_1;
  param_1[1] = (int)puVar2;
  if (iVar6 != 0) {
    *(int *)(iVar6 + 4) = iVar6;
    iVar7 = param_1[1];
    if (iVar7 != 0) {
      piVar5 = (int *)(iVar7 + 8);
      DataMemoryBarrier(0x1f);
      do {
        ExclusiveAccess(piVar5);
        bVar1 = (bool)hasExclusiveAccess(piVar5);
      } while (!bVar1);
      *piVar5 = *piVar5 + 1;
      DataMemoryBarrier(0x1f);
    }
    if (*(_Sp_counted_base<(__gnu_cxx::_Lock_policy)2> **)(iVar6 + 8) !=
        (_Sp_counted_base<(__gnu_cxx::_Lock_policy)2> *)0x0) {
      std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_weak_release
                (*(_Sp_counted_base<(__gnu_cxx::_Lock_policy)2> **)(iVar6 + 8));
    }
    *(int *)(iVar6 + 8) = iVar7;
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_20);
  return param_1;
}

// ---- FUN_00512a64  @ 0x512a64
undefined4 FUN_00512a64(int param_1,undefined4 param_2)

{
  bool bVar1;
  undefined4 uVar2;
  int *piVar3;
  undefined4 local_28;
  int local_24;
  undefined4 local_20;
  int local_1c [2];
  
  FUN_0051295c(&local_28,0,&local_20,param_2,param_1 + 0xc);
  local_20 = local_28;
  local_1c[0] = local_24;
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
  uVar2 = FUN_00519138(param_1,&local_20);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_1c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_24);
  return uVar2;
}

// ---- FUN_00512d00  @ 0x512d00
undefined4 * FUN_00512d00(undefined4 *param_1)

{
  *param_1 = &PTR___Sp_counted_base_1_009242b8;
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_00512e20  @ 0x512e20
void FUN_00512e20(int param_1)

{
  void *pvVar1;
  
  pvVar1 = *(void **)(param_1 + 0xc);
  gpg::Leaderboard::~Leaderboard((Leaderboard *)((int)pvVar1 + 0x10));
  FUN_007be0b4((int)pvVar1 + 4);
  operator_delete(pvVar1);
  return;
}

// ---- FUN_00512e3c  @ 0x512e3c
void FUN_00512e3c(int param_1)

{
  void *pvVar1;
  
  pvVar1 = *(void **)(param_1 + 0xc);
  gpg::ScoreSummary::~ScoreSummary((ScoreSummary *)((int)pvVar1 + 0x10));
  FUN_007be0b4((int)pvVar1 + 4);
  operator_delete(pvVar1);
  return;
}

// ---- FUN_00512e7a  @ 0x512e7a
_Function_base * FUN_00512e7a(_Function_base *param_1)

{
  std::_Function_base::~_Function_base(param_1 + 0x10);
  std::_Function_base::~_Function_base(param_1);
  return param_1;
}

// ---- FUN_00512ea2  @ 0x512ea2
_Function_base * FUN_00512ea2(_Function_base *param_1)

{
  std::_Function_base::~_Function_base(param_1 + 0x10);
  std::_Function_base::~_Function_base(param_1);
  return param_1;
}

// ---- FUN_00512edc  @ 0x512edc
_Function_base * FUN_00512edc(_Function_base *param_1)

{
  std::_Function_base::~_Function_base(param_1 + 0x10);
  std::_Function_base::~_Function_base(param_1);
  return param_1;
}

// ---- FUN_00512f04  @ 0x512f04
_Function_base * FUN_00512f04(_Function_base *param_1)

{
  std::_Function_base::~_Function_base(param_1 + 0x10);
  std::_Function_base::~_Function_base(param_1);
  return param_1;
}

// ---- FUN_00512f2c  @ 0x512f2c
_Function_base * FUN_00512f2c(_Function_base *param_1)

{
  std::_Function_base::~_Function_base(param_1 + 0x10);
  std::_Function_base::~_Function_base(param_1);
  return param_1;
}

// ---- FUN_00513238  @ 0x513238
int * FUN_00513238(int *param_1)

{
  if ((int *)*param_1 != (int *)0x0) {
    (**(code **)(*(int *)*param_1 + 4))();
  }
  *param_1 = 0;
  return param_1;
}

// ---- FUN_0051324e  @ 0x51324e
void FUN_0051324e(int param_1)

{
  void *pvVar1;
  
  pvVar1 = *(void **)(param_1 + 0xc);
  FUN_00513238((int)pvVar1 + 0x10);
  FUN_007c5914(pvVar1);
  operator_delete(pvVar1);
  return;
}

// ---- FUN_0051344a  @ 0x51344a
function<void(std::function<void()>)> *
FUN_0051344a(function<void(std::function<void()>)> *param_1,function *param_2)

{
  std::function<void(std::function<void()>)>::function(param_1,param_2);
  std::function<void(gpg::UIStatus_const&)>::function
            ((function<void(gpg::UIStatus_const&)> *)(param_1 + 0x10),param_2 + 0x10);
  return param_1;
}

// ---- FUN_00513518  @ 0x513518
function<void(std::function<void()>)> *
FUN_00513518(function<void(std::function<void()>)> *param_1,function *param_2,
            function<void(gpg::UIStatus_const&)> *param_3)

{
  function<void(gpg::UIStatus_const&)> afStack_48 [8];
  undefined4 local_40;
  function<void(std::function<void()>)> afStack_38 [8];
  undefined4 local_30;
  function<void(gpg::UIStatus_const&)> afStack_28 [8];
  undefined4 local_20;
  
  if (*(int *)(param_3 + 8) == 0) {
    local_40 = 0;
    local_30 = 0;
  }
  else {
    local_40 = 0;
    std::function<void(gpg::UIStatus_const&)>::swap(param_3,(function *)afStack_48);
    std::function<void(std::function<void()>)>::function(afStack_38,param_2);
  }
  local_20 = 0;
  std::function<void(gpg::UIStatus_const&)>::swap(afStack_48,(function *)afStack_28);
  std::function<void(std::function<void()>)>::function(param_1,(function *)afStack_38);
  *(undefined4 *)(param_1 + 0x18) = 0;
  std::function<void(gpg::UIStatus_const&)>::swap(afStack_28,(function *)(param_1 + 0x10));
  FUN_005082ea(afStack_38);
  std::_Function_base::~_Function_base((_Function_base *)afStack_48);
  return param_1;
}

// ---- FUN_0051358c  @ 0x51358c
function<void(std::function<void()>)> *
FUN_0051358c(function<void(std::function<void()>)> *param_1,undefined4 *param_2)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 local_64;
  _Function_base a_Stack_60 [8];
  undefined4 local_58;
  undefined4 *local_50 [2];
  code *local_48;
  undefined4 local_44;
  function afStack_40 [8];
  undefined4 local_38;
  function<void(gpg::LeaderboardManager::FetchAllResponse_const&)> afStack_30 [8];
  undefined4 local_28;
  
  uVar2 = *param_2;
  local_58 = 0;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_64,(__shared_count *)(param_2 + 1)
            );
  local_48 = (code *)0x0;
  local_50[0] = operator_new(8);
  uVar1 = local_64;
  *local_50[0] = uVar2;
  local_50[0][1] = 0;
  local_64 = 0;
  local_50[0][1] = uVar1;
  local_44 = 0x51496b;
  local_38 = 0;
  local_48 = (code *)0x513167;
  local_28 = 0;
  std::function<void(gpg::LeaderboardManager::FetchAllResponse_const&)>::swap
            ((function<void(gpg::LeaderboardManager::FetchAllResponse_const&)> *)local_50,
             (function *)afStack_30);
  std::function<void(std::function<void()>)>::function(param_1,afStack_40);
  *(undefined4 *)(param_1 + 0x18) = 0;
  std::function<void(gpg::LeaderboardManager::FetchAllResponse_const&)>::swap
            (afStack_30,(function *)(param_1 + 0x10));
  FUN_00512ea2(afStack_40);
  std::_Function_base::~_Function_base((_Function_base *)local_50);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_64);
  std::_Function_base::~_Function_base(a_Stack_60);
  return param_1;
}

// ---- FUN_0051363c  @ 0x51363c
function<void(std::function<void()>)> *
FUN_0051363c(function<void(std::function<void()>)> *param_1,undefined4 *param_2)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 local_64;
  _Function_base a_Stack_60 [8];
  undefined4 local_58;
  undefined4 *local_50 [2];
  code *local_48;
  undefined1 *local_44;
  function afStack_40 [8];
  undefined4 local_38;
  function<void(gpg::LeaderboardManager::FetchScoreSummaryResponse_const&)> afStack_30 [20];
  
  uVar2 = *param_2;
  local_58 = 0;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_64,(__shared_count *)(param_2 + 1)
            );
  local_48 = (code *)0x0;
  local_50[0] = operator_new(8);
  uVar1 = local_64;
  *local_50[0] = uVar2;
  local_50[0][1] = 0;
  local_64 = 0;
  local_50[0][1] = uVar1;
  local_44 = &LAB_00513094_1;
  local_38 = 0;
  local_48 = (code *)0x513121;
  std::function<void(gpg::LeaderboardManager::FetchScoreSummaryResponse_const&)>::function
            (afStack_30,(function *)local_50);
  std::function<void(std::function<void()>)>::function(param_1,afStack_40);
  std::function<void(gpg::LeaderboardManager::FetchScoreSummaryResponse_const&)>::function
            ((function<void(gpg::LeaderboardManager::FetchScoreSummaryResponse_const&)> *)
             (param_1 + 0x10),(function *)afStack_30);
  FUN_00512f04(afStack_40);
  std::_Function_base::~_Function_base((_Function_base *)local_50);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_64);
  std::_Function_base::~_Function_base(a_Stack_60);
  return param_1;
}

// ---- FUN_005136e4  @ 0x5136e4
function<void(std::function<void()>)> *
FUN_005136e4(function<void(std::function<void()>)> *param_1,undefined4 *param_2)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 local_64;
  _Function_base a_Stack_60 [8];
  undefined4 local_58;
  undefined4 *local_50 [2];
  code *local_48;
  undefined1 *local_44;
  function afStack_40 [8];
  undefined4 local_38;
  function<void(gpg::LeaderboardManager::FetchResponse_const&)> afStack_30 [20];
  
  uVar2 = *param_2;
  local_58 = 0;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_64,(__shared_count *)(param_2 + 1)
            );
  local_48 = (code *)0x0;
  local_50[0] = operator_new(8);
  uVar1 = local_64;
  *local_50[0] = uVar2;
  local_50[0][1] = 0;
  local_64 = 0;
  local_50[0][1] = uVar1;
  local_44 = &LAB_00513008_1;
  local_38 = 0;
  local_48 = (code *)0x5130db;
  std::function<void(gpg::LeaderboardManager::FetchResponse_const&)>::function
            (afStack_30,(function *)local_50);
  std::function<void(std::function<void()>)>::function(param_1,afStack_40);
  std::function<void(gpg::LeaderboardManager::FetchResponse_const&)>::function
            ((function<void(gpg::LeaderboardManager::FetchResponse_const&)> *)(param_1 + 0x10),
             (function *)afStack_30);
  FUN_00512e7a(afStack_40);
  std::_Function_base::~_Function_base((_Function_base *)local_50);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_64);
  std::_Function_base::~_Function_base(a_Stack_60);
  return param_1;
}

// ---- FUN_0051378c  @ 0x51378c
function<void(std::function<void()>)> *
FUN_0051378c(function<void(std::function<void()>)> *param_1,undefined4 *param_2)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 local_64;
  _Function_base a_Stack_60 [8];
  undefined4 local_58;
  undefined4 *local_50 [2];
  code *local_48;
  undefined1 *local_44;
  function afStack_40 [8];
  undefined4 local_38;
  function<void(gpg::LeaderboardManager::FetchScorePageResponse_const&)> afStack_30 [20];
  
  uVar2 = *param_2;
  local_58 = 0;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_64,(__shared_count *)(param_2 + 1)
            );
  local_48 = (code *)0x0;
  local_50[0] = operator_new(8);
  uVar1 = local_64;
  *local_50[0] = uVar2;
  local_50[0][1] = 0;
  local_64 = 0;
  local_50[0][1] = uVar1;
  local_44 = &LAB_0051304e_1;
  local_38 = 0;
  local_48 = (code *)0x5131ad;
  std::function<void(gpg::LeaderboardManager::FetchScorePageResponse_const&)>::function
            (afStack_30,(function *)local_50);
  std::function<void(std::function<void()>)>::function(param_1,afStack_40);
  std::function<void(gpg::LeaderboardManager::FetchScorePageResponse_const&)>::function
            ((function<void(gpg::LeaderboardManager::FetchScorePageResponse_const&)> *)
             (param_1 + 0x10),(function *)afStack_30);
  FUN_00512edc(afStack_40);
  std::_Function_base::~_Function_base((_Function_base *)local_50);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_64);
  std::_Function_base::~_Function_base(a_Stack_60);
  return param_1;
}

// ---- FUN_00513834  @ 0x513834
function<void(std::function<void()>)> *
FUN_00513834(function<void(std::function<void()>)> *param_1,undefined4 *param_2)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 local_64;
  _Function_base a_Stack_60 [8];
  undefined4 local_58;
  undefined4 *local_50 [2];
  code *local_48;
  undefined4 local_44;
  function afStack_40 [8];
  undefined4 local_38;
  function<void(gpg::LeaderboardManager::FetchAllScoreSummariesResponse_const&)> afStack_30 [8];
  undefined4 local_28;
  
  uVar2 = *param_2;
  local_58 = 0;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_64,(__shared_count *)(param_2 + 1)
            );
  local_48 = (code *)0x0;
  local_50[0] = operator_new(8);
  uVar1 = local_64;
  *local_50[0] = uVar2;
  local_50[0][1] = 0;
  local_64 = 0;
  local_50[0][1] = uVar1;
  local_44 = 0x514e3f;
  local_38 = 0;
  local_48 = (code *)0x5131f3;
  local_28 = 0;
  std::function<void(gpg::LeaderboardManager::FetchAllScoreSummariesResponse_const&)>::swap
            ((function<void(gpg::LeaderboardManager::FetchAllScoreSummariesResponse_const&)> *)
             local_50,(function *)afStack_30);
  std::function<void(std::function<void()>)>::function(param_1,afStack_40);
  *(undefined4 *)(param_1 + 0x18) = 0;
  std::function<void(gpg::LeaderboardManager::FetchAllScoreSummariesResponse_const&)>::swap
            (afStack_30,(function *)(param_1 + 0x10));
  FUN_00512f2c(afStack_40);
  std::_Function_base::~_Function_base((_Function_base *)local_50);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_64);
  std::_Function_base::~_Function_base(a_Stack_60);
  return param_1;
}

// ---- FUN_005138f4  @ 0x5138f4
void FUN_005138f4(function<void(std::function<void()>)> *param_1,FetchResponse *param_2)

{
  function<void(gpg::LeaderboardManager::FetchResponse_const&)> *this;
  function<void(gpg::LeaderboardManager::FetchResponse_const&)> *local_44 [2];
  code *local_3c;
  code *local_38;
  function<void(gpg::LeaderboardManager::FetchResponse_const&)> afStack_34 [16];
  undefined4 local_24;
  Leaderboard aLStack_20 [12];
  
  if (*(int *)(param_1 + 0x18) != 0) {
    if (*(int *)(param_1 + 8) == 0) {
      std::function<void(gpg::LeaderboardManager::FetchResponse_const&)>::operator()
                ((function<void(gpg::LeaderboardManager::FetchResponse_const&)> *)(param_1 + 0x10),
                 param_2);
    }
    else {
      std::function<void(gpg::LeaderboardManager::FetchResponse_const&)>::function
                (afStack_34,(function *)(param_1 + 0x10));
      local_24 = *(undefined4 *)param_2;
      gpg::Leaderboard::Leaderboard(aLStack_20,(Leaderboard *)(param_2 + 4));
      local_3c = (code *)0x0;
      this = operator_new(0x1c);
      std::function<void(gpg::LeaderboardManager::FetchResponse_const&)>::function
                (this,(function *)afStack_34);
      gpg::LeaderboardManager::FetchResponse::FetchResponse
                ((FetchResponse *)(this + 0x10),(FetchResponse *)&local_24);
      local_38 = (code *)0x513b33;
      local_3c = (code *)0x513295;
      local_44[0] = this;
      std::function<void(std::function<void()>)>::operator()(param_1,(_Function_base *)local_44);
      std::_Function_base::~_Function_base((_Function_base *)local_44);
      gpg::Leaderboard::~Leaderboard(aLStack_20);
      std::_Function_base::~_Function_base((_Function_base *)afStack_34);
    }
  }
  return;
}

// ---- FUN_00513b68  @ 0x513b68
void FUN_00513b68(function<void(std::function<void()>)> *param_1,FetchScorePageResponse *param_2)

{
  function<void(gpg::LeaderboardManager::FetchScorePageResponse_const&)> *this;
  function<void(gpg::LeaderboardManager::FetchScorePageResponse_const&)> *local_44 [2];
  code *local_3c;
  code *local_38;
  function<void(gpg::LeaderboardManager::FetchScorePageResponse_const&)> afStack_34 [16];
  undefined4 local_24;
  ScorePage aSStack_20 [12];
  
  if (*(int *)(param_1 + 0x18) != 0) {
    if (*(int *)(param_1 + 8) == 0) {
      std::function<void(gpg::LeaderboardManager::FetchScorePageResponse_const&)>::operator()
                ((function<void(gpg::LeaderboardManager::FetchScorePageResponse_const&)> *)
                 (param_1 + 0x10),param_2);
    }
    else {
      std::function<void(gpg::LeaderboardManager::FetchScorePageResponse_const&)>::function
                (afStack_34,(function *)(param_1 + 0x10));
      local_24 = *(undefined4 *)param_2;
      gpg::ScorePage::ScorePage(aSStack_20,(ScorePage *)(param_2 + 4));
      local_3c = (code *)0x0;
      this = operator_new(0x1c);
      std::function<void(gpg::LeaderboardManager::FetchScorePageResponse_const&)>::function
                (this,(function *)afStack_34);
      gpg::LeaderboardManager::FetchScorePageResponse::FetchScorePageResponse
                ((FetchScorePageResponse *)(this + 0x10),(FetchScorePageResponse *)&local_24);
      local_38 = (code *)0x513e7f;
      local_3c = (code *)0x513351;
      local_44[0] = this;
      std::function<void(std::function<void()>)>::operator()(param_1,(_Function_base *)local_44);
      std::_Function_base::~_Function_base((_Function_base *)local_44);
      gpg::ScorePage::~ScorePage(aSStack_20);
      std::_Function_base::~_Function_base((_Function_base *)afStack_34);
    }
  }
  return;
}

// ---- FUN_00513e98  @ 0x513e98
void FUN_00513e98(function<void(std::function<void()>)> *param_1,FetchScoreSummaryResponse *param_2)

{
  function<void(gpg::LeaderboardManager::FetchScoreSummaryResponse_const&)> *this;
  function<void(gpg::LeaderboardManager::FetchScoreSummaryResponse_const&)> *local_44 [2];
  code *local_3c;
  code *local_38;
  function<void(gpg::LeaderboardManager::FetchScoreSummaryResponse_const&)> afStack_34 [16];
  undefined4 local_24;
  ScoreSummary aSStack_20 [12];
  
  if (*(int *)(param_1 + 0x18) != 0) {
    if (*(int *)(param_1 + 8) == 0) {
      std::function<void(gpg::LeaderboardManager::FetchScoreSummaryResponse_const&)>::operator()
                ((function<void(gpg::LeaderboardManager::FetchScoreSummaryResponse_const&)> *)
                 (param_1 + 0x10),param_2);
    }
    else {
      std::function<void(gpg::LeaderboardManager::FetchScoreSummaryResponse_const&)>::function
                (afStack_34,
                 (function<void(gpg::LeaderboardManager::FetchScoreSummaryResponse_const&)> *)
                 (param_1 + 0x10));
      local_24 = *(undefined4 *)param_2;
      gpg::ScoreSummary::ScoreSummary(aSStack_20,(ScoreSummary *)(param_2 + 4));
      local_3c = (code *)0x0;
      this = operator_new(0x1c);
      std::function<void(gpg::LeaderboardManager::FetchScoreSummaryResponse_const&)>::function
                (this,(function *)afStack_34);
      gpg::LeaderboardManager::FetchScoreSummaryResponse::FetchScoreSummaryResponse
                ((FetchScoreSummaryResponse *)(this + 0x10),(FetchScoreSummaryResponse *)&local_24);
      local_38 = (code *)0x5140ef;
      local_3c = (code *)0x5133b9;
      local_44[0] = this;
      std::function<void(std::function<void()>)>::operator()(param_1,(_Function_base *)local_44);
      std::_Function_base::~_Function_base((_Function_base *)local_44);
      gpg::ScoreSummary::~ScoreSummary(aSStack_20);
      std::_Function_base::~_Function_base((_Function_base *)afStack_34);
    }
  }
  return;
}

// ---- FUN_00514114  @ 0x514114
void FUN_00514114(function<void(std::function<void()>)> *param_1,UIStatus *param_2)

{
  function *pfVar1;
  function *local_3c [2];
  code *local_34;
  code *local_30;
  function<void(gpg::UIStatus_const&)> afStack_2c [16];
  undefined4 local_1c;
  
  if (*(int *)(param_1 + 0x18) != 0) {
    if (*(int *)(param_1 + 8) == 0) {
      std::function<void(gpg::UIStatus_const&)>::operator()
                ((function<void(gpg::UIStatus_const&)> *)(param_1 + 0x10),param_2);
    }
    else {
      std::function<void(gpg::UIStatus_const&)>::function(afStack_2c,(function *)(param_1 + 0x10));
      local_1c = *(undefined4 *)param_2;
      local_34 = (code *)0x0;
      pfVar1 = operator_new(0x14);
      *(undefined4 *)(pfVar1 + 8) = 0;
      std::function<void(gpg::UIStatus_const&)>::swap(afStack_2c,pfVar1);
      *(undefined4 *)(pfVar1 + 0x10) = local_1c;
      local_30 = (code *)0x508add;
      local_34 = (code *)0x508553;
      local_3c[0] = pfVar1;
      std::function<void(std::function<void()>)>::operator()(param_1,(_Function_base *)local_3c);
      std::_Function_base::~_Function_base((_Function_base *)local_3c);
      std::_Function_base::~_Function_base((_Function_base *)afStack_2c);
    }
  }
  return;
}

// ---- FUN_00514394  @ 0x514394
undefined4 *
FUN_00514394(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5,undefined4 *param_6,undefined4 *param_7,undefined4 *param_8)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 *local_20;
  undefined4 local_1c;
  undefined4 uStack_18;
  
  *param_1 = 0;
  param_1[1] = 0;
  local_20 = param_1;
  local_1c = param_2;
  uStack_18 = param_3;
  puVar1 = operator_new(0x14);
  *param_1 = puVar1;
  local_1c = 0;
  FUN_007c64e8(&local_20,param_5);
  uVar4 = local_1c;
  uVar2 = *param_6;
  uVar3 = *param_7;
  if (puVar1 != (undefined4 *)0x0) {
    puVar1[3] = *param_8;
    puVar1[1] = uVar2;
    *puVar1 = local_20;
    puVar1[2] = uVar3;
    local_20 = (undefined4 *)&DAT_00972528;
    local_1c = 0;
    puVar1[4] = uVar4;
  }
  FUN_007c5914(&local_20);
  FUN_00513238((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_1c);
  uVar4 = *param_1;
  local_1c = 0;
  puVar1 = operator_new(0x14);
  if (puVar1 != (undefined4 *)0x0) {
    puVar1[1] = 1;
    puVar1[2] = 1;
    puVar1[3] = uVar4;
    *puVar1 = &PTR_LAB_00512cec_1_00924758;
  }
  local_1c = param_1[1];
  param_1[1] = puVar1;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_1c);
  return param_1;
}

// ---- FUN_00514516  @ 0x514516
void FUN_00514516(int param_1)

{
  void *pvVar1;
  
  pvVar1 = *(void **)(param_1 + 0xc);
  std::vector<gpg::Leaderboard,std::allocator<gpg::Leaderboard>>::~vector
            ((vector<gpg::Leaderboard,std::allocator<gpg::Leaderboard>> *)((int)pvVar1 + 0x10));
  FUN_007be0b4((int)pvVar1 + 4);
  operator_delete(pvVar1);
  return;
}

// ---- FUN_00514532  @ 0x514532
Leaderboard * FUN_00514532(Leaderboard *param_1,Leaderboard *param_2,Leaderboard *param_3)

{
  for (; param_1 != param_2; param_1 = param_1 + 8) {
    if (param_3 != (Leaderboard *)0x0) {
      gpg::Leaderboard::Leaderboard(param_3,param_1);
    }
    param_3 = param_3 + 8;
  }
  return param_3;
}

// ---- FUN_00514624  @ 0x514624
void FUN_00514624(function<void(std::function<void()>)> *param_1,FetchAllResponse *param_2)

{
  function *pfVar1;
  function *local_48 [2];
  code *local_40;
  code *local_3c;
  function<void(gpg::LeaderboardManager::FetchAllResponse_const&)> afStack_38 [16];
  FetchAllResponse aFStack_28 [4];
  vector<gpg::Leaderboard,std::allocator<gpg::Leaderboard>> avStack_24 [12];
  
  if (*(int *)(param_1 + 0x18) != 0) {
    if (*(int *)(param_1 + 8) == 0) {
      std::function<void(gpg::LeaderboardManager::FetchAllResponse_const&)>::operator()
                ((function<void(gpg::LeaderboardManager::FetchAllResponse_const&)> *)
                 (param_1 + 0x10),param_2);
    }
    else {
      std::function<void(gpg::LeaderboardManager::FetchAllResponse_const&)>::function
                (afStack_38,(function *)(param_1 + 0x10));
      gpg::LeaderboardManager::FetchAllResponse::FetchAllResponse(aFStack_28,param_2);
      local_40 = (code *)0x0;
      pfVar1 = operator_new(0x20);
      *(undefined4 *)(pfVar1 + 8) = 0;
      std::function<void(gpg::LeaderboardManager::FetchAllResponse_const&)>::swap(afStack_38,pfVar1)
      ;
      gpg::LeaderboardManager::FetchAllResponse::FetchAllResponse
                ((FetchAllResponse *)(pfVar1 + 0x10),aFStack_28);
      local_3c = (code *)0x513b4d;
      local_40 = (code *)0x5145c1;
      local_48[0] = pfVar1;
      std::function<void(std::function<void()>)>::operator()(param_1,local_48);
      std::_Function_base::~_Function_base((_Function_base *)local_48);
      std::vector<gpg::Leaderboard,std::allocator<gpg::Leaderboard>>::~vector(avStack_24);
      std::_Function_base::~_Function_base((_Function_base *)afStack_38);
    }
  }
  return;
}

// ---- FUN_0051496a  @ 0x51496a
void FUN_0051496a(undefined4 *param_1,undefined4 *param_2)

{
  int iVar1;
  int *piVar2;
  mutex *local_14;
  
  piVar2 = (int *)*param_1;
  local_14 = (mutex *)*piVar2;
  std::mutex::lock(local_14);
  iVar1 = *piVar2;
  *(undefined4 *)(iVar1 + 0xc) = *param_2;
  std::vector<gpg::Leaderboard,std::allocator<gpg::Leaderboard>>::operator=
            ((vector<gpg::Leaderboard,std::allocator<gpg::Leaderboard>> *)(iVar1 + 0x10),
             (vector *)(param_2 + 1));
  *(undefined1 *)(*piVar2 + 8) = 1;
  FUN_007be0e0(*piVar2 + 4);
  std::lock_guard<std::mutex>::~lock_guard((lock_guard<std::mutex> *)&local_14);
  return;
}

// ---- FUN_005149dc  @ 0x5149dc
void FUN_005149dc(int param_1)

{
  void *pvVar1;
  
  pvVar1 = *(void **)(param_1 + 0xc);
  std::vector<gpg::ScoreSummary,std::allocator<gpg::ScoreSummary>>::~vector
            ((vector<gpg::ScoreSummary,std::allocator<gpg::ScoreSummary>> *)((int)pvVar1 + 0x10));
  FUN_007be0b4((int)pvVar1 + 4);
  operator_delete(pvVar1);
  return;
}

// ---- FUN_005149f8  @ 0x5149f8
ScoreSummary * FUN_005149f8(ScoreSummary *param_1,ScoreSummary *param_2,ScoreSummary *param_3)

{
  for (; param_1 != param_2; param_1 = param_1 + 8) {
    if (param_3 != (ScoreSummary *)0x0) {
      gpg::ScoreSummary::ScoreSummary(param_3,param_1);
    }
    param_3 = param_3 + 8;
  }
  return param_3;
}

// ---- FUN_00514aec  @ 0x514aec
void FUN_00514aec(function<void(std::function<void()>)> *param_1,
                 FetchAllScoreSummariesResponse *param_2)

{
  function *pfVar1;
  function *local_48 [2];
  code *local_40;
  code *local_3c;
  function<void(gpg::LeaderboardManager::FetchAllScoreSummariesResponse_const&)> afStack_38 [16];
  FetchAllScoreSummariesResponse aFStack_28 [4];
  vector<gpg::ScoreSummary,std::allocator<gpg::ScoreSummary>> avStack_24 [12];
  
  if (*(int *)(param_1 + 0x18) != 0) {
    if (*(int *)(param_1 + 8) == 0) {
      std::function<void(gpg::LeaderboardManager::FetchAllScoreSummariesResponse_const&)>::
      operator()((function<void(gpg::LeaderboardManager::FetchAllScoreSummariesResponse_const&)> *)
                 (param_1 + 0x10),param_2);
    }
    else {
      std::function<void(gpg::LeaderboardManager::FetchAllScoreSummariesResponse_const&)>::function
                (afStack_38,(function *)(param_1 + 0x10));
      gpg::LeaderboardManager::FetchAllScoreSummariesResponse::FetchAllScoreSummariesResponse
                (aFStack_28,param_2);
      local_40 = (code *)0x0;
      pfVar1 = operator_new(0x20);
      *(undefined4 *)(pfVar1 + 8) = 0;
      std::function<void(gpg::LeaderboardManager::FetchAllScoreSummariesResponse_const&)>::swap
                (afStack_38,pfVar1);
      gpg::LeaderboardManager::FetchAllScoreSummariesResponse::FetchAllScoreSummariesResponse
                ((FetchAllScoreSummariesResponse *)(pfVar1 + 0x10),aFStack_28);
      local_3c = (code *)0x514109;
      local_40 = (code *)0x514a87;
      local_48[0] = pfVar1;
      std::function<void(std::function<void()>)>::operator()(param_1,local_48);
      std::_Function_base::~_Function_base((_Function_base *)local_48);
      std::vector<gpg::ScoreSummary,std::allocator<gpg::ScoreSummary>>::~vector(avStack_24);
      std::_Function_base::~_Function_base((_Function_base *)afStack_38);
    }
  }
  return;
}

// ---- FUN_00514e3e  @ 0x514e3e
void FUN_00514e3e(undefined4 *param_1,undefined4 *param_2)

{
  int iVar1;
  int *piVar2;
  mutex *local_14;
  
  piVar2 = (int *)*param_1;
  local_14 = (mutex *)*piVar2;
  std::mutex::lock(local_14);
  iVar1 = *piVar2;
  *(undefined4 *)(iVar1 + 0xc) = *param_2;
  std::vector<gpg::ScoreSummary,std::allocator<gpg::ScoreSummary>>::operator=
            ((vector<gpg::ScoreSummary,std::allocator<gpg::ScoreSummary>> *)(iVar1 + 0x10),
             (vector *)(param_2 + 1));
  *(undefined1 *)(*piVar2 + 8) = 1;
  FUN_007be0e0(*piVar2 + 4);
  std::lock_guard<std::mutex>::~lock_guard((lock_guard<std::mutex> *)&local_14);
  return;
}

// ---- FUN_00514e84  @ 0x514e84
undefined4 * FUN_00514e84(undefined4 *param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  undefined4 local_1c;
  undefined4 uStack_18;
  
  *param_1 = 0;
  param_1[1] = 0;
  local_1c = param_2;
  uStack_18 = param_3;
  puVar1 = operator_new(0x18);
  *param_1 = puVar1;
  if (puVar1 != (undefined4 *)0x0) {
    *puVar1 = 0;
    *puVar1 = 0;
    puVar1[1] = 0;
    FUN_007be0ac(puVar1 + 1);
    *(undefined1 *)(puVar1 + 2) = 0;
    puVar1[3] = 0;
    puVar1[4] = 0;
    puVar1[5] = 0;
    gpg::Leaderboard::Leaderboard((Leaderboard *)(puVar1 + 4));
  }
  uVar2 = *param_1;
  local_1c = 0;
  puVar1 = operator_new(0x14);
  if (puVar1 != (undefined4 *)0x0) {
    puVar1[1] = 1;
    puVar1[2] = 1;
    puVar1[3] = uVar2;
    *puVar1 = &PTR_LAB_00512cd8_1_00924778;
  }
  local_1c = param_1[1];
  param_1[1] = puVar1;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_1c);
  return param_1;
}

// ---- FUN_00514f44  @ 0x514f44
undefined4 * FUN_00514f44(undefined4 *param_1,undefined4 param_2)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  undefined4 local_14;
  
  *param_1 = 0;
  param_1[1] = 0;
  local_14 = param_2;
  puVar1 = operator_new(0x1c);
  *param_1 = puVar1;
  if (puVar1 != (undefined4 *)0x0) {
    *puVar1 = 0;
    *puVar1 = 0;
    puVar1[1] = 0;
    FUN_007be0ac(puVar1 + 1);
    *(undefined1 *)(puVar1 + 2) = 0;
    memset(puVar1 + 3,0,0x10);
  }
  uVar2 = *param_1;
  local_14 = 0;
  puVar1 = operator_new(0x14);
  if (puVar1 != (undefined4 *)0x0) {
    puVar1[1] = 1;
    puVar1[2] = 1;
    puVar1[3] = uVar2;
    *puVar1 = &PTR_LAB_00512cc4_1_00924798;
  }
  local_14 = param_1[1];
  param_1[1] = puVar1;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_14);
  return param_1;
}

// ---- FUN_00514fdc  @ 0x514fdc
undefined4 * FUN_00514fdc(undefined4 *param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  undefined4 local_1c;
  undefined4 uStack_18;
  
  *param_1 = 0;
  param_1[1] = 0;
  local_1c = param_2;
  uStack_18 = param_3;
  puVar1 = operator_new(0x18);
  *param_1 = puVar1;
  if (puVar1 != (undefined4 *)0x0) {
    *puVar1 = 0;
    *puVar1 = 0;
    puVar1[1] = 0;
    FUN_007be0ac(puVar1 + 1);
    *(undefined1 *)(puVar1 + 2) = 0;
    puVar1[3] = 0;
    puVar1[4] = 0;
    puVar1[5] = 0;
    gpg::ScorePage::ScorePage((ScorePage *)(puVar1 + 4));
  }
  uVar2 = *param_1;
  local_1c = 0;
  puVar1 = operator_new(0x14);
  if (puVar1 != (undefined4 *)0x0) {
    puVar1[1] = 1;
    puVar1[2] = 1;
    puVar1[3] = uVar2;
    *puVar1 = &PTR_LAB_00512cb0_1_009247b8;
  }
  local_1c = param_1[1];
  param_1[1] = puVar1;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_1c);
  return param_1;
}

// ---- FUN_0051509c  @ 0x51509c
undefined4 * FUN_0051509c(undefined4 *param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  undefined4 local_1c;
  undefined4 uStack_18;
  
  *param_1 = 0;
  param_1[1] = 0;
  local_1c = param_2;
  uStack_18 = param_3;
  puVar1 = operator_new(0x18);
  *param_1 = puVar1;
  if (puVar1 != (undefined4 *)0x0) {
    *puVar1 = 0;
    *puVar1 = 0;
    puVar1[1] = 0;
    FUN_007be0ac(puVar1 + 1);
    *(undefined1 *)(puVar1 + 2) = 0;
    puVar1[3] = 0;
    puVar1[4] = 0;
    puVar1[5] = 0;
    gpg::ScoreSummary::ScoreSummary((ScoreSummary *)(puVar1 + 4));
  }
  uVar2 = *param_1;
  local_1c = 0;
  puVar1 = operator_new(0x14);
  if (puVar1 != (undefined4 *)0x0) {
    puVar1[1] = 1;
    puVar1[2] = 1;
    puVar1[3] = uVar2;
    *puVar1 = &PTR_LAB_00512c9c_1_009247d8;
  }
  local_1c = param_1[1];
  param_1[1] = puVar1;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_1c);
  return param_1;
}

// ---- FUN_0051515c  @ 0x51515c
undefined4 * FUN_0051515c(undefined4 *param_1,undefined4 param_2)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  undefined4 local_14;
  
  *param_1 = 0;
  param_1[1] = 0;
  local_14 = param_2;
  puVar1 = operator_new(0x1c);
  *param_1 = puVar1;
  if (puVar1 != (undefined4 *)0x0) {
    *puVar1 = 0;
    *puVar1 = 0;
    puVar1[1] = 0;
    FUN_007be0ac(puVar1 + 1);
    *(undefined1 *)(puVar1 + 2) = 0;
    memset(puVar1 + 3,0,0x10);
  }
  uVar2 = *param_1;
  local_14 = 0;
  puVar1 = operator_new(0x14);
  if (puVar1 != (undefined4 *)0x0) {
    puVar1[1] = 1;
    puVar1[2] = 1;
    puVar1[3] = uVar2;
    *puVar1 = &PTR_LAB_00512c88_1_009247f8;
  }
  local_14 = param_1[1];
  param_1[1] = puVar1;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_14);
  return param_1;
}

// ---- FUN_0051601c  @ 0x51601c
undefined4 FUN_0051601c(int *param_1,undefined4 param_2,uint param_3,int param_4)

{
  longlong lVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  int iVar4;
  int iVar5;
  undefined4 local_38;
  int iStack_34;
  undefined4 local_30;
  int iStack_2c;
  mutex *local_28;
  undefined1 local_24;
  
  uVar2 = FUN_00529ec0(0xfffffffe);
  uVar3 = FUN_00529ec0(0xfffffffb);
  iVar4 = FUN_00553a80();
  if (iVar4 != 0) {
    FUN_005166ae(4,"Blocking calls are not allowed from the UI thread.");
    return uVar2;
  }
  local_28 = (mutex *)*param_1;
  local_24 = 0;
  if (local_28 == (mutex *)0x0) {
                    /* WARNING: Subroutine does not return */
    FUN_007c4c60(1);
  }
  std::mutex::lock(local_28);
  local_24 = 1;
  iVar4 = *param_1;
  if (*(char *)(iVar4 + 8) == '\0') {
    FUN_007bfd24(&local_38);
    lVar1 = (ulonglong)param_3 * 1000000 + CONCAT44(param_4 * 1000000,local_38);
    local_30 = (undefined4)lVar1;
    iStack_2c = iStack_34 + (int)((ulonglong)lVar1 >> 0x20);
    do {
      if (*(char *)(*param_1 + 8) != '\0') goto LAB_005160b6;
      iVar5 = std::condition_variable::
              __wait_until_impl<std::chrono::duration<long_long,std::ratio<1ll,1000000000ll>>>
                        ((unique_lock *)(iVar4 + 4),(time_point *)&local_28);
    } while (iVar5 != 1);
    if (*(char *)(*param_1 + 8) == '\0') goto LAB_005160ba;
  }
LAB_005160b6:
  uVar3 = *(undefined4 *)(*param_1 + 0xc);
LAB_005160ba:
  std::unique_lock<std::mutex>::~unique_lock((unique_lock<std::mutex> *)&local_28);
  return uVar3;
}

// ---- FUN_005162e0  @ 0x5162e0
void FUN_005162e0(undefined4 *param_1,uint param_2)

{
  uint uVar1;
  void *pvVar2;
  void *pvVar3;
  int iVar4;
  undefined4 *puVar5;
  undefined4 *puVar6;
  int iVar7;
  undefined4 *puVar8;
  
  iVar7 = (param_2 >> 4) + 1;
  uVar1 = (param_2 >> 4) + 3;
  if (uVar1 < 8) {
    uVar1 = 8;
  }
  param_1[1] = uVar1;
  pvVar2 = operator_new(uVar1 << 2);
  uVar1 = (uint)(param_1[1] - iVar7) >> 1;
  puVar5 = (undefined4 *)((int)pvVar2 + uVar1 * 4);
  puVar8 = puVar5 + iVar7;
  *param_1 = pvVar2;
  for (puVar6 = puVar5; puVar6 < puVar8; puVar6 = puVar6 + 1) {
    pvVar3 = operator_new(0x200);
    *puVar6 = pvVar3;
  }
  param_1[5] = puVar5;
  iVar7 = *(int *)((int)pvVar2 + uVar1 * 4);
  param_1[4] = iVar7 + 0x200;
  param_1[3] = iVar7;
  param_1[9] = puVar8 + -1;
  iVar4 = puVar8[-1];
  param_1[2] = iVar7;
  param_1[8] = iVar4 + 0x200;
  param_1[7] = iVar4;
  param_1[6] = iVar4 + (param_2 & 0xf) * 0x20;
  return;
}

// ---- FUN_0051638c  @ 0x51638c
void FUN_0051638c(undefined4 *param_1,undefined4 *param_2)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  
  uVar6 = *param_1;
  uVar7 = param_1[1];
  uVar5 = param_1[2];
  uVar4 = param_1[3];
  uVar1 = param_2[1];
  uVar2 = param_2[2];
  uVar3 = param_2[3];
  *param_1 = *param_2;
  param_1[1] = uVar1;
  param_1[2] = uVar2;
  param_1[3] = uVar3;
  *param_2 = uVar6;
  param_2[1] = uVar7;
  param_2[2] = uVar5;
  param_2[3] = uVar4;
  return;
}

// ---- FUN_005163c4  @ 0x5163c4
int * FUN_005163c4(int *param_1)

{
  int iVar1;
  undefined4 *puVar2;
  InternalCallback *pIVar3;
  InternalCallback *pIVar4;
  undefined4 *puVar5;
  undefined4 *puVar6;
  InternalCallback *pIVar7;
  InternalCallback *pIVar8;
  
  puVar6 = (undefined4 *)param_1[5];
  pIVar4 = (InternalCallback *)param_1[2];
  pIVar8 = (InternalCallback *)param_1[4];
  pIVar3 = (InternalCallback *)param_1[6];
  pIVar7 = (InternalCallback *)param_1[7];
  puVar5 = (undefined4 *)param_1[9];
  puVar2 = puVar6;
  while (puVar2 = puVar2 + 1, puVar2 < puVar5) {
    std::_Destroy_aux<false>::__destroy<gpg::InternalCallback<gpg::LogLevel,std::string_const&>*>
              ((InternalCallback *)*puVar2,(InternalCallback *)*puVar2 + 0x200);
  }
  if (puVar6 != puVar5) {
    std::_Destroy_aux<false>::__destroy<gpg::InternalCallback<gpg::LogLevel,std::string_const&>*>
              (pIVar4,pIVar8);
    pIVar4 = pIVar7;
  }
  std::_Destroy_aux<false>::__destroy<gpg::InternalCallback<gpg::LogLevel,std::string_const&>*>
            (pIVar4,pIVar3);
  if (*param_1 != 0) {
    iVar1 = param_1[9];
    for (puVar2 = (undefined4 *)param_1[5]; puVar2 < (undefined4 *)(iVar1 + 4); puVar2 = puVar2 + 1)
    {
      operator_delete((void *)*puVar2);
    }
    operator_delete((void *)*param_1);
  }
  return param_1;
}

// ---- FUN_0051642c  @ 0x51642c
pthread_key_t * FUN_0051642c(pthread_key_t *param_1)

{
  void *pvVar1;
  
  pvVar1 = pthread_getspecific(*param_1);
  if (pvVar1 != (void *)0x0) {
    FUN_005163c4();
    operator_delete(pvVar1);
    pthread_setspecific(*param_1,(void *)0x0);
  }
  pthread_key_delete(*param_1);
  return param_1;
}

// ---- FUN_00516456  @ 0x516456
void FUN_00516456(undefined4 param_1,void *param_2)

{
  if (param_2 != (void *)0x0) {
    FUN_005163c4(param_2);
    operator_delete(param_2);
    return;
  }
  return;
}

// ---- FUN_00516470  @ 0x516470
undefined4 * FUN_00516470(void)

{
  int iVar1;
  undefined4 *__pointer;
  undefined4 *puVar2;
  undefined4 *puVar3;
  uint uVar4;
  undefined4 *local_38;
  undefined4 *local_34;
  undefined4 *local_30;
  undefined4 *local_2c;
  undefined4 *local_28;
  undefined4 *local_24;
  undefined4 *local_20;
  undefined4 *local_1c;
  undefined4 *local_18;
  undefined4 *local_14;
  
  uVar4 = DAT_00960bd4 & 1;
  if ((uVar4 == 0) && (iVar1 = __cxa_guard_acquire(), iVar1 != 0)) {
    DAT_00960bd8 = uVar4;
    pthread_key_create(&DAT_00960bd8,(__destr_function *)0x516705);
    __cxa_guard_release(&DAT_00960bd4);
    FUN_007985bc(&DAT_00960bd8,0x51642d,&DAT_00943000);
  }
  __pointer = pthread_getspecific(DAT_00960bd8);
  if (__pointer == (undefined4 *)0x0) {
    local_38 = __pointer;
    local_34 = __pointer;
    local_30 = __pointer;
    local_2c = __pointer;
    local_28 = __pointer;
    local_24 = __pointer;
    local_20 = __pointer;
    local_1c = __pointer;
    local_18 = __pointer;
    local_14 = __pointer;
    FUN_005162e0(&local_38,0);
    __pointer = operator_new(0x28);
    *__pointer = 0;
    __pointer[1] = 0;
    __pointer[2] = 0;
    __pointer[3] = 0;
    __pointer[4] = 0;
    __pointer[5] = 0;
    __pointer[6] = 0;
    __pointer[7] = 0;
    __pointer[8] = 0;
    __pointer[9] = 0;
    FUN_005162e0();
    if (local_38 != (undefined4 *)0x0) {
      FUN_0051638c(__pointer + 2,&local_30);
      FUN_0051638c(__pointer + 6,&local_20);
      puVar2 = (undefined4 *)*__pointer;
      *__pointer = local_38;
      puVar3 = (undefined4 *)__pointer[1];
      __pointer[1] = local_34;
      local_38 = puVar2;
      local_34 = puVar3;
    }
    FUN_005163c4(&local_38);
    pthread_setspecific(DAT_00960bd8,__pointer);
  }
  return __pointer;
}

// ---- FUN_00516580  @ 0x516580
undefined4 FUN_00516580(undefined4 param_1)

{
  int iVar1;
  void *pvVar2;
  int iVar3;
  int iVar4;
  
  iVar1 = FUN_00516470();
  pvVar2 = *(void **)(iVar1 + 0x18);
  if (pvVar2 == *(void **)(iVar1 + 0x1c)) {
    operator_delete(pvVar2);
    iVar3 = *(int *)(iVar1 + 0x24);
    *(int *)(iVar1 + 0x24) = iVar3 + -4;
    iVar4 = *(int *)(iVar3 + -4);
    iVar3 = iVar4 + 0x1e0;
    *(int *)(iVar1 + 0x1c) = iVar4;
    *(int *)(iVar1 + 0x20) = iVar4 + 0x200;
  }
  else {
    iVar3 = (int)pvVar2 + -0x20;
  }
  *(int *)(iVar1 + 0x18) = iVar3;
  FUN_0050811a();
  return param_1;
}

// ---- FUN_005165bc  @ 0x5165bc
_Any_data * FUN_005165bc(_Any_data *param_1)

{
  int iVar1;
  int iVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined1 *local_58 [2];
  code *local_50;
  code *local_4c;
  _Function_base a_Stack_48 [8];
  int local_40;
  _Any_data a_Stack_38 [8];
  int local_30;
  undefined4 local_2c;
  function<void(gpg::LogLevel,std::string_const&)> afStack_28 [8];
  int local_20;
  
  iVar1 = FUN_00516470();
  local_40 = (*(int *)(iVar1 + 0x18) - *(int *)(iVar1 + 0x1c) >> 5) +
             ((*(int *)(iVar1 + 0x24) - *(int *)(iVar1 + 0x14) >> 2) + -1) * 0x10 +
             (*(int *)(iVar1 + 0x10) - *(int *)(iVar1 + 8) >> 5);
  if (local_40 == 0) {
    local_58[0] = &LAB_005162dc_1;
    local_4c = (code *)0x509a6d;
    local_50 = (code *)0x509a79;
    local_30 = local_40;
    local_20 = local_40;
    std::function<void(gpg::LogLevel,std::string_const&)>::swap
              ((function<void(gpg::LogLevel,std::string_const&)> *)local_58,(function *)afStack_28);
    *(undefined4 *)(param_1 + 8) = 0;
    std::swap<std::_Any_data>(a_Stack_38,param_1);
    uVar3 = *(undefined4 *)(param_1 + 8);
    *(undefined4 *)(param_1 + 0x18) = 0;
    *(int *)(param_1 + 8) = local_30;
    uVar4 = *(undefined4 *)(param_1 + 0xc);
    *(undefined4 *)(param_1 + 0xc) = local_2c;
    local_30 = uVar3;
    local_2c = uVar4;
    std::function<void(gpg::LogLevel,std::string_const&)>::swap
              (afStack_28,(function *)(param_1 + 0x10));
    FUN_0050811a(a_Stack_38);
    std::_Function_base::~_Function_base((_Function_base *)local_58);
    std::_Function_base::~_Function_base(a_Stack_48);
  }
  else {
    iVar1 = FUN_00516470();
    iVar2 = *(int *)(iVar1 + 0x18);
    if (iVar2 == *(int *)(iVar1 + 0x1c)) {
      iVar2 = *(int *)(*(int *)(iVar1 + 0x24) + -4) + 0x200;
    }
    FUN_0050a822(param_1,iVar2 + -0x20);
  }
  return param_1;
}

// ---- FUN_00516680  @ 0x516680
void FUN_00516680(undefined4 param_1,undefined4 param_2)

{
  undefined4 local_34;
  undefined1 auStack_30 [36];
  
  local_34 = param_1;
  FUN_005165bc(auStack_30);
  FUN_0050b118(auStack_30,&local_34,param_2);
  FUN_0050811a(auStack_30);
  return;
}

// ---- FUN_005166ae  @ 0x5166ae
void FUN_005166ae(undefined4 param_1,char *param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  undefined4 uStack_28;
  undefined4 *local_24;
  char *local_20;
  undefined4 uStack_1c;
  undefined4 uStack_8;
  undefined4 uStack_4;
  
  local_24 = &uStack_8;
  local_20 = (char *)0x0;
  uStack_28 = param_1;
  uStack_1c = param_4;
  uStack_8 = param_3;
  uStack_4 = param_4;
  iVar1 = vasprintf(&local_20,param_2,local_24);
  if (-1 < iVar1) {
    FUN_007c6a60(&uStack_1c,local_20,&uStack_28);
    FUN_00516680(param_1,&uStack_1c);
    FUN_007c5914(&uStack_1c);
    free(local_20);
  }
  return;
}

// ---- FUN_00516704  @ 0x516704
void FUN_00516704(void *param_1)

{
  if (param_1 != (void *)0x0) {
    FUN_005163c4();
    operator_delete(param_1);
    return;
  }
  return;
}

// ---- FUN_0051673a  @ 0x51673a
void FUN_0051673a(int *param_1,undefined4 param_2)

{
  void *pvVar1;
  int iVar2;
  uint uVar3;
  InternalCallback *pIVar4;
  InternalCallback **ppIVar5;
  InternalCallback **__src;
  uint uVar6;
  int iVar7;
  int iVar8;
  
  iVar2 = param_1[9];
  uVar3 = param_1[1];
  if (uVar3 - (iVar2 - *param_1 >> 2) < 2) {
    __src = (InternalCallback **)param_1[5];
    iVar7 = iVar2 - (int)__src >> 2;
    iVar8 = iVar7 + 2;
    if ((uint)(iVar8 * 2) < uVar3) {
      ppIVar5 = (InternalCallback **)(*param_1 + (uVar3 - iVar8 >> 1) * 4);
      if (ppIVar5 < __src) {
        std::__copy_move<false,true,std::random_access_iterator_tag>::
        __copy_m<gpg::InternalCallback<gpg::LogLevel,std::string_const&>*>
                  (__src,(InternalCallback **)(iVar2 + 4),ppIVar5);
      }
      else {
        iVar2 = (iVar2 + 4) - (int)__src >> 2;
        if (iVar2 != 0) {
          memmove(ppIVar5 + ((iVar7 + 1) - iVar2),__src,iVar2 * 4);
        }
      }
    }
    else {
      uVar6 = uVar3;
      if (uVar3 == 0) {
        uVar6 = 1;
      }
      uVar6 = uVar3 + 2 + uVar6;
      if (0x3fffffff < uVar6) {
        FUN_007c4844();
      }
      pvVar1 = operator_new(uVar6 * 4);
      ppIVar5 = (InternalCallback **)((int)pvVar1 + (uVar6 - iVar8 >> 1) * 4);
      std::__copy_move<false,true,std::random_access_iterator_tag>::
      __copy_m<gpg::InternalCallback<gpg::LogLevel,std::string_const&>*>
                ((InternalCallback **)param_1[5],(InternalCallback **)(param_1[9] + 4),ppIVar5);
      operator_delete((void *)*param_1);
      *param_1 = (int)pvVar1;
      param_1[1] = uVar6;
    }
    param_1[5] = (int)ppIVar5;
    pIVar4 = *ppIVar5;
    param_1[3] = (int)pIVar4;
    param_1[4] = (int)(pIVar4 + 0x200);
    param_1[9] = (int)(ppIVar5 + iVar7);
    pIVar4 = ppIVar5[iVar7];
    param_1[7] = (int)pIVar4;
    param_1[8] = (int)(pIVar4 + 0x200);
  }
  iVar2 = param_1[9];
  pvVar1 = operator_new(0x200);
  *(void **)(iVar2 + 4) = pvVar1;
  if (param_1[6] != 0) {
    FUN_0050a822(param_1[6],param_2);
  }
  iVar2 = param_1[9];
  param_1[9] = iVar2 + 4;
  iVar2 = *(int *)(iVar2 + 4);
  param_1[8] = iVar2 + 0x200;
  param_1[7] = iVar2;
  param_1[6] = iVar2;
  return;
}

// ---- FUN_0051683e  @ 0x51683e
undefined4 FUN_0051683e(undefined4 param_1,undefined4 param_2)

{
  int iVar1;
  int iVar2;
  
  iVar1 = FUN_00516470();
  iVar2 = *(int *)(iVar1 + 0x18);
  if (iVar2 == *(int *)(iVar1 + 0x20) + -0x20) {
    FUN_0051673a(iVar1,param_2);
  }
  else {
    if (iVar2 != 0) {
      FUN_0050a822(iVar2,param_2);
    }
    *(int *)(iVar1 + 0x18) = *(int *)(iVar1 + 0x18) + 0x20;
  }
  return param_1;
}

// ---- FUN_00516880  @ 0x516880
undefined4 * FUN_00516880(undefined4 *param_1,undefined4 param_2,undefined4 param_3)

{
  undefined1 uVar1;
  undefined4 uVar2;
  int iVar3;
  undefined1 *local_188;
  undefined1 local_184 [16];
  undefined1 auStack_174 [152];
  undefined1 auStack_dc [8];
  int local_d4;
  undefined1 auStack_d0 [4];
  undefined4 auStack_cc [44];
  
  FUN_007c6810(auStack_dc,param_2,param_3,auStack_174);
  FUN_007c5914(auStack_dc);
  FUN_0052f3b4(auStack_174);
  FUN_0052f3d8(auStack_174,param_2,param_3);
  FUN_0052f44c(local_184,auStack_174);
  FUN_007aaa70(auStack_dc,0x18);
  uVar2 = FUN_007bb208(&local_d4,0x516871);
  FUN_007bb93c(uVar2,0x30);
  iVar3 = 0;
  do {
    uVar1 = local_184[iVar3];
    *(undefined4 *)((int)auStack_cc + *(int *)(local_d4 + -0xc)) = 2;
    thunk_FUN_007bbd6c(&local_d4,uVar1);
    iVar3 = iVar3 + 1;
  } while (iVar3 != 0x10);
  FUN_007a9920(&local_188,auStack_d0);
  *param_1 = local_188;
  local_188 = &DAT_00972528;
  FUN_007c5914(&local_188);
  FUN_007a95a8(auStack_dc);
  return param_1;
}

// ---- FUN_0051693c  @ 0x51693c
undefined4 * FUN_0051693c(undefined4 *param_1,undefined1 *param_2,undefined4 param_3)

{
  undefined1 *local_14;
  undefined4 uStack_10;
  
  local_14 = param_2;
  uStack_10 = param_3;
  FUN_00516880(&local_14);
  *param_1 = local_14;
  local_14 = &DAT_00972528;
  FUN_007c5914(&local_14);
  return param_1;
}

// ---- FUN_00516b50  @ 0x516b50
undefined4 * FUN_00516b50(undefined4 *param_1)

{
  *param_1 = &PTR___Sp_counted_base_1_009242b8;
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_00516b80  @ 0x516b80
void FUN_00516b80(int param_1)

{
  _Function_base *this;
  
  this = *(_Function_base **)(param_1 + 0xc);
  std::_Function_base::~_Function_base(this + 0x10);
  std::_Function_base::~_Function_base(this);
  operator_delete(this);
  return;
}

// ---- FUN_00516c58  @ 0x516c58
undefined4 * FUN_00516c58(undefined4 *param_1,undefined4 param_2,undefined4 param_3)

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
  pvVar1 = operator_new(0x20);
  *param_1 = pvVar1;
  if (pvVar1 != (void *)0x0) {
    *(undefined4 *)((int)pvVar1 + 8) = 0;
    *(undefined4 *)((int)pvVar1 + 0x18) = 0;
  }
  uVar3 = *param_1;
  local_14 = 0;
  puVar2 = operator_new(0x14);
  if (puVar2 != (undefined4 *)0x0) {
    puVar2[1] = 1;
    puVar2[2] = 1;
    puVar2[3] = uVar3;
    *puVar2 = &PTR_LAB_00516b3c_1_00924818;
  }
  local_14 = param_1[1];
  param_1[1] = puVar2;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_14);
  return param_1;
}

// ---- FUN_00517264  @ 0x517264
void FUN_00517264(undefined4 *param_1)

{
  (**(code **)(**(int **)*param_1 + 8))();
  return;
}

// ---- FUN_00517278  @ 0x517278
void FUN_00517278(undefined4 *param_1)

{
  (**(code **)(**(int **)*param_1 + 0xc))();
  return;
}

// ---- FUN_0051728c  @ 0x51728c
void FUN_0051728c(undefined4 *param_1)

{
  (**(code **)(**(int **)*param_1 + 8))();
  return;
}

// ---- FUN_005172aa  @ 0x5172aa
void FUN_005172aa(undefined4 *param_1)

{
  (**(code **)(**(int **)*param_1 + 0xc))();
  return;
}

// ---- FUN_005172d4  @ 0x5172d4
undefined4 * FUN_005172d4(undefined4 *param_1)

{
  *param_1 = &PTR___Sp_counted_base_1_009242b8;
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_00517304  @ 0x517304
void FUN_00517304(int *param_1)

{
  if (param_1 != (int *)0x0) {
    (**(code **)(*param_1 + 4))();
  }
  return;
}

// ---- FUN_00517482  @ 0x517482
_Function_base * FUN_00517482(_Function_base *param_1)

{
  std::_Function_base::~_Function_base(param_1 + 0x10);
  std::_Function_base::~_Function_base(param_1);
  return param_1;
}

// ---- FUN_005175cc  @ 0x5175cc
undefined4 * FUN_005175cc(undefined4 *param_1)

{
  void *pvVar1;
  
  pvVar1 = (void *)*param_1;
  if (pvVar1 != (void *)0x0) {
    std::_Function_base::~_Function_base((_Function_base *)((int)pvVar1 + 0x4c));
    std::_Function_base::~_Function_base((_Function_base *)((int)pvVar1 + 0x3c));
    std::_Function_base::~_Function_base((_Function_base *)((int)pvVar1 + 0x2c));
    std::_Function_base::~_Function_base((_Function_base *)((int)pvVar1 + 0x1c));
    std::_Function_base::~_Function_base((_Function_base *)((int)pvVar1 + 0xc));
    FUN_007c5914((int)pvVar1 + 8);
    operator_delete(pvVar1);
  }
  *param_1 = 0;
  return param_1;
}

// ---- FUN_005176dc  @ 0x5176dc
int * FUN_005176dc(int *param_1,int *param_2,undefined4 param_3)

{
  bool bVar1;
  undefined4 *puVar2;
  int iVar3;
  int iVar4;
  int *piVar5;
  int *piVar6;
  int iVar7;
  undefined4 *local_1c;
  undefined4 uStack_18;
  
  *param_1 = *param_2;
  param_1[1] = 0;
  iVar7 = *param_2;
  local_1c = (undefined4 *)0x0;
  uStack_18 = param_3;
  puVar2 = operator_new(0x14);
  iVar3 = *param_2;
  *param_2 = 0;
  if (puVar2 != (undefined4 *)0x0) {
    puVar2[1] = 1;
    puVar2[2] = 1;
    puVar2[3] = iVar3;
    *puVar2 = &PTR_LAB_005172c0_1_00924838;
  }
  local_1c = puVar2;
  if (puVar2 != (undefined4 *)param_1[1]) {
    if (puVar2 != (undefined4 *)0x0) {
      piVar5 = puVar2 + 1;
      DataMemoryBarrier(0x1f);
      do {
        ExclusiveAccess(piVar5);
        bVar1 = (bool)hasExclusiveAccess(piVar5);
      } while (!bVar1);
      *piVar5 = *piVar5 + 1;
      DataMemoryBarrier(0x1f);
    }
    if (param_1[1] != 0) {
      FUN_0033ce90();
    }
    param_1[1] = (int)puVar2;
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_1c);
  if (iVar7 != 0) {
    *(int *)(iVar7 + 4) = iVar7;
    iVar3 = param_1[1];
    if (iVar3 != 0) {
      piVar5 = (int *)(iVar3 + 8);
      DataMemoryBarrier(0x1f);
      do {
        ExclusiveAccess(piVar5);
        bVar1 = (bool)hasExclusiveAccess(piVar5);
      } while (!bVar1);
      *piVar5 = *piVar5 + 1;
      DataMemoryBarrier(0x1f);
    }
    piVar5 = *(int **)(iVar7 + 8);
    if (piVar5 != (int *)0x0) {
      piVar6 = piVar5 + 2;
      DataMemoryBarrier(0x1f);
      do {
        ExclusiveAccess(piVar6);
        iVar4 = *piVar6;
        bVar1 = (bool)hasExclusiveAccess(piVar6);
      } while (!bVar1);
      *piVar6 = iVar4 + -1;
      DataMemoryBarrier(0x1f);
      if (iVar4 == 1) {
        (**(code **)(*piVar5 + 0xc))();
      }
    }
    *(int *)(iVar7 + 8) = iVar3;
  }
  return param_1;
}

// ---- FUN_00517a0a  @ 0x517a0a
function *
FUN_00517a0a(function *param_1,function *param_2,
            function<void(long_long,gpg::ConnectionResponse_const&)> *param_3)

{
  function<void(long_long,gpg::ConnectionResponse_const&)> afStack_48 [8];
  undefined4 local_40;
  function<void(std::function<void()>)> afStack_38 [8];
  undefined4 local_30;
  function<void(long_long,gpg::ConnectionResponse_const&)> afStack_28 [8];
  undefined4 local_20;
  
  if (*(int *)(param_3 + 8) == 0) {
    local_40 = 0;
    local_30 = 0;
  }
  else {
    local_40 = 0;
    std::function<void(long_long,gpg::ConnectionResponse_const&)>::swap
              (param_3,(function *)afStack_48);
    std::function<void(std::function<void()>)>::function(afStack_38,param_2);
  }
  local_20 = 0;
  std::function<void(long_long,gpg::ConnectionResponse_const&)>::swap
            (afStack_48,(function *)afStack_28);
  *(undefined4 *)(param_1 + 8) = 0;
  std::function<void(std::function<void()>)>::swap(afStack_38,param_1);
  *(undefined4 *)(param_1 + 0x18) = 0;
  std::function<void(long_long,gpg::ConnectionResponse_const&)>::swap(afStack_28,param_1 + 0x10);
  FUN_00517482(afStack_38);
  std::_Function_base::~_Function_base((_Function_base *)afStack_48);
  return param_1;
}

// ---- FUN_00517b04  @ 0x517b04
undefined4 *
FUN_00517b04(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 *param_4)

{
  function<void(long_long,std::string_const&,std::vector<unsigned_char,std::allocator<unsigned_char>>const&,bool)>
  *pfVar1;
  undefined4 *puVar2;
  undefined4 uVar3;
  undefined4 local_14;
  
  *param_1 = 0;
  param_1[1] = 0;
  local_14 = param_2;
  pfVar1 = operator_new(0x20);
  *param_1 = pfVar1;
  uVar3 = *param_4;
  if (pfVar1 != (function<void(long_long,std::string_const&,std::vector<unsigned_char,std::allocator<unsigned_char>>const&,bool)>
                 *)0x0) {
    std::
    function<void(long_long,std::string_const&,std::vector<unsigned_char,std::allocator<unsigned_char>>const&,bool)>
    ::
    function<gpg::MessageListenerHelperImpl::MessageListenerHelperImpl(gpg::IMessageListener*)::_lambda(long_long,std::string_const&,std::vector<unsigned_char,std::allocator<unsigned_char>>const&,bool)_1_,void>
              (pfVar1,uVar3);
    std::function<void(long_long,std::string_const&)>::
    function<gpg::MessageListenerHelperImpl::MessageListenerHelperImpl(gpg::IMessageListener*)::_lambda(long_long,std::string_const&)_2_,void>
              ((function<void(long_long,std::string_const&)> *)(pfVar1 + 0x10),uVar3);
  }
  uVar3 = *param_1;
  local_14 = 0;
  puVar2 = operator_new(0x14);
  if (puVar2 != (undefined4 *)0x0) {
    puVar2[1] = 1;
    puVar2[2] = 1;
    puVar2[3] = uVar3;
    *puVar2 = &PTR_LAB_00516b3c_1_00924818;
  }
  local_14 = param_1[1];
  param_1[1] = puVar2;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_14);
  return param_1;
}

// ---- FUN_00517cc0  @ 0x517cc0
undefined4 *
FUN_00517cc0(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 *param_4)

{
  function<void(long_long,gpg::EndpointDetails_const&)> *pfVar1;
  undefined4 *puVar2;
  undefined4 uVar3;
  undefined4 local_14;
  
  *param_1 = 0;
  param_1[1] = 0;
  local_14 = param_2;
  pfVar1 = operator_new(0x20);
  *param_1 = pfVar1;
  uVar3 = *param_4;
  if (pfVar1 != (function<void(long_long,gpg::EndpointDetails_const&)> *)0x0) {
    std::function<void(long_long,gpg::EndpointDetails_const&)>::
    function<gpg::EndpointDiscoveryListenerHelperImpl::EndpointDiscoveryListenerHelperImpl(gpg::IEndpointDiscoveryListener*)::_lambda(long_long,gpg::EndpointDetails_const&)_1_,void>
              (pfVar1,uVar3);
    std::function<void(long_long,std::string_const&)>::
    function<gpg::EndpointDiscoveryListenerHelperImpl::EndpointDiscoveryListenerHelperImpl(gpg::IEndpointDiscoveryListener*)::_lambda(long_long,std::string_const&)_2_,void>
              ((function<void(long_long,std::string_const&)> *)(pfVar1 + 0x10),uVar3);
  }
  uVar3 = *param_1;
  local_14 = 0;
  puVar2 = operator_new(0x14);
  if (puVar2 != (undefined4 *)0x0) {
    puVar2[1] = 1;
    puVar2[2] = 1;
    puVar2[3] = uVar3;
    *puVar2 = &PTR_LAB_0050e478_1_00924350;
  }
  local_14 = param_1[1];
  param_1[1] = puVar2;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_14);
  return param_1;
}

// ---- FUN_00517e1e  @ 0x517e1e
_Function_base * FUN_00517e1e(_Function_base *param_1)

{
  std::_Function_base::~_Function_base(param_1 + 0x10);
  std::_Function_base::~_Function_base(param_1);
  return param_1;
}

// ---- FUN_00518124  @ 0x518124
void FUN_00518124(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  *param_1 = param_3;
  param_1[1] = param_4;
  return;
}

// ---- FUN_0051812a  @ 0x51812a
void FUN_0051812a(int param_1)

{
  thunk_FUN_007c653c(param_1 + 8);
  return;
}

// ---- FUN_00518130  @ 0x518130
int FUN_00518130(int param_1)

{
  return param_1 + 0x4c;
}

// ---- FUN_00518134  @ 0x518134
undefined4 FUN_00518134(undefined4 param_1,int param_2)

{
  FUN_0050a822(param_1,param_2 + 0x2c);
  return param_1;
}

// ---- FUN_005181c0  @ 0x5181c0
undefined4 FUN_005181c0(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 *puVar1;
  undefined4 *local_b4 [2];
  undefined1 *local_ac;
  undefined4 local_a8;
  function<void(gpg::LogLevel,std::string_const&)> afStack_a4 [8];
  undefined4 local_9c;
  _Function_base a_Stack_94 [8];
  undefined4 local_8c;
  undefined1 auStack_84 [32];
  undefined1 auStack_64 [8];
  undefined4 local_5c;
  function afStack_54 [8];
  undefined4 local_4c;
  undefined4 local_44;
  undefined1 auStack_40 [36];
  
  local_44 = param_4;
  FUN_0050a822(auStack_40,param_3);
  local_ac = (undefined1 *)0x0;
  puVar1 = operator_new(0x24);
  *puVar1 = local_44;
  FUN_0050abb2(puVar1 + 1,auStack_40);
  local_a8 = 0x518441;
  local_8c = 0;
  local_ac = &LAB_00518142_1;
  local_9c = 0;
  local_b4[0] = puVar1;
  std::function<void(gpg::LogLevel,std::string_const&)>::swap
            ((function<void(gpg::LogLevel,std::string_const&)> *)local_b4,(function *)afStack_a4);
  local_5c = 0;
  local_4c = 0;
  std::function<void(gpg::LogLevel,std::string_const&)>::swap(afStack_a4,afStack_54);
  FUN_0050abb2(auStack_84,auStack_64);
  FUN_0050811a(auStack_64);
  std::_Function_base::~_Function_base((_Function_base *)afStack_a4);
  std::_Function_base::~_Function_base(a_Stack_94);
  FUN_0050abb2(param_1,auStack_84);
  FUN_0050811a(auStack_84);
  std::_Function_base::~_Function_base((_Function_base *)local_b4);
  FUN_0050811a(auStack_40);
  return param_1;
}

// ---- FUN_00518278  @ 0x518278
void FUN_00518278(int param_1,undefined4 param_2,undefined4 param_3)

{
  function afStack_68 [8];
  undefined4 local_60;
  undefined1 auStack_58 [32];
  function afStack_38 [16];
  function<void(gpg::LogLevel,std::string_const&)> afStack_28 [20];
  
  FUN_0050abb2(auStack_58);
  FUN_005181c0(afStack_38,param_1,auStack_58,param_3);
  std::function<void(std::function<void()>)>::operator=
            ((function<void(std::function<void()>)> *)(param_1 + 0x2c),afStack_38);
  local_60 = 0;
  std::function<void(gpg::LogLevel,std::string_const&)>::swap(afStack_28,afStack_68);
  std::function<void(gpg::LogLevel,std::string_const&)>::swap
            ((function<void(gpg::LogLevel,std::string_const&)> *)afStack_68,
             (function *)(param_1 + 0x3c));
  std::_Function_base::~_Function_base((_Function_base *)afStack_68);
  FUN_0050811a(afStack_38);
  FUN_0050811a(auStack_58);
  return;
}

// ---- FUN_005182d8  @ 0x5182d8
void FUN_005182d8(int param_1,function *param_2)

{
  function afStack_20 [8];
  undefined4 local_18;
  
  std::function<void(std::function<void()>)>::operator=
            ((function<void(std::function<void()>)> *)(param_1 + 0xc),param_2);
  local_18 = 0;
  std::function<void(gpg::InitializationStatus)>::swap
            ((function<void(gpg::InitializationStatus)> *)(param_2 + 0x10),afStack_20);
  std::function<void(gpg::InitializationStatus)>::swap
            ((function<void(gpg::InitializationStatus)> *)afStack_20,(function *)(param_1 + 0x1c));
  std::_Function_base::~_Function_base((_Function_base *)afStack_20);
  return;
}

// ---- FUN_00518308  @ 0x518308
undefined4 * FUN_00518308(undefined4 *param_1)

{
  code *local_88 [2];
  code *local_80;
  code *local_7c;
  undefined1 *local_78 [2];
  code *local_70;
  code *local_6c;
  _Function_base a_Stack_68 [8];
  undefined4 local_60;
  function<void(std::function<void()>)> afStack_48 [8];
  undefined4 local_40;
  function<void(gpg::InitializationStatus)> afStack_38 [8];
  undefined4 local_30;
  
  *param_1 = 0;
  param_1[1] = 0;
  local_60 = 0;
  param_1[2] = &DAT_00972528;
  local_78[0] = &LAB_00518114_1;
  local_6c = (code *)0x5180f3;
  local_40 = 0;
  local_30 = 0;
  local_70 = (code *)0x5180fd;
  std::function<void(gpg::InitializationStatus)>::swap
            ((function<void(gpg::InitializationStatus)> *)local_78,(function *)afStack_38);
  param_1[5] = 0;
  std::function<void(std::function<void()>)>::swap(afStack_48,(function *)(param_1 + 3));
  param_1[9] = 0;
  std::function<void(gpg::InitializationStatus)>::swap(afStack_38,(function *)(param_1 + 7));
  std::_Function_base::~_Function_base((_Function_base *)afStack_38);
  std::_Function_base::~_Function_base((_Function_base *)afStack_48);
  std::_Function_base::~_Function_base((_Function_base *)local_78);
  std::_Function_base::~_Function_base(a_Stack_68);
  local_70 = (code *)0x0;
  local_88[0] = (code *)0x5539c9;
  local_7c = (code *)0x509a6d;
  local_40 = 0;
  local_30 = 0;
  local_80 = (code *)0x509a79;
  std::function<void(gpg::LogLevel,std::string_const&)>::swap
            ((function<void(gpg::LogLevel,std::string_const&)> *)local_88,(function *)afStack_38);
  FUN_0050abb2(a_Stack_68,afStack_48);
  FUN_0050811a(afStack_48);
  std::_Function_base::~_Function_base((_Function_base *)local_88);
  std::_Function_base::~_Function_base((_Function_base *)local_78);
  FUN_005181c0(param_1 + 0xb,param_1,a_Stack_68,2);
  FUN_0050811a(a_Stack_68);
  param_1[0x13] = 0x50e285;
  param_1[0x16] = 0x50a927;
  param_1[0x15] = 0x50a5ad;
  return param_1;
}

// ---- FUN_00518440  @ 0x518440
void FUN_00518440(int *param_1,int param_2,undefined4 param_3)

{
  int iVar1;
  int local_c;
  undefined4 uStack_8;
  
  iVar1 = *(int *)*param_1;
  if (iVar1 <= param_2) {
    local_c = param_2;
    uStack_8 = param_3;
    FUN_0050b118((int *)*param_1 + 1,&local_c,param_3,iVar1,param_1);
  }
  return;
}

// ---- FUN_0051845c  @ 0x51845c
undefined4 *
FUN_0051845c(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  bool bVar1;
  int *piVar2;
  int iVar3;
  int *piVar4;
  void *pvVar5;
  
  *param_1 = &PTR_FUN_0051845c_1_00924858;
  FUN_005166ae(1,"NearbyConnectionsImpl successfully cleaned up.",param_3,
               &PTR_FUN_0051845c_1_00924858,param_4);
  pvVar5 = (void *)param_1[3];
  if (pvVar5 != (void *)0x0) {
    std::_Function_base::~_Function_base((_Function_base *)((int)pvVar5 + 0x4c));
    std::_Function_base::~_Function_base((_Function_base *)((int)pvVar5 + 0x3c));
    std::_Function_base::~_Function_base((_Function_base *)((int)pvVar5 + 0x2c));
    std::_Function_base::~_Function_base((_Function_base *)((int)pvVar5 + 0x1c));
    std::_Function_base::~_Function_base((_Function_base *)((int)pvVar5 + 0xc));
    FUN_007c5914((int)pvVar5 + 8);
    operator_delete(pvVar5);
  }
  piVar2 = (int *)param_1[2];
  param_1[3] = 0;
  if (piVar2 != (int *)0x0) {
    piVar4 = piVar2 + 2;
    DataMemoryBarrier(0x1f);
    do {
      ExclusiveAccess(piVar4);
      iVar3 = *piVar4;
      bVar1 = (bool)hasExclusiveAccess(piVar4);
    } while (!bVar1);
    *piVar4 = iVar3 + -1;
    DataMemoryBarrier(0x1f);
    if (iVar3 == 1) {
      (**(code **)(*piVar2 + 0xc))();
    }
  }
  return param_1;
}

// ---- FUN_005184e4  @ 0x5184e4
void * FUN_005184e4(void *param_1)

{
  FUN_0051845c();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_005184f8  @ 0x5184f8
void FUN_005184f8(undefined4 *param_1,undefined4 *param_2)

{
  undefined4 uVar1;
  
  param_1[1] = 0;
  param_1[2] = 0;
  *param_1 = &PTR_FUN_0051845c_1_00924858;
  uVar1 = *param_2;
  *param_2 = 0;
  param_1[3] = uVar1;
  return;
}

// ---- FUN_00518514  @ 0x518514
int FUN_00518514(int param_1)

{
  return *(int *)(param_1 + 0xc) + 0x4c;
}

// ---- FUN_00518614  @ 0x518614
void FUN_00518614(int param_1,undefined4 param_2)

{
  undefined4 uVar1;
  undefined4 uVar2;
  int iVar3;
  code *pcVar4;
  _Any_data a_Stack_4c [8];
  undefined4 local_44;
  undefined4 local_40;
  _Function_base a_Stack_3c [8];
  undefined4 local_34;
  undefined4 local_30;
  function<void(gpg::InitializationStatus)> afStack_2c [16];
  undefined4 local_1c;
  
  iVar3 = *(int *)(param_1 + 0xc);
  if (*(int *)(iVar3 + 0x24) != 0) {
    if (*(int *)(iVar3 + 0x14) == 0) {
      std::function<void(gpg::InitializationStatus)>::operator()
                ((function<void(gpg::InitializationStatus)> *)(iVar3 + 0x1c));
    }
    else {
      std::function<void(gpg::InitializationStatus)>::function
                (afStack_2c,(function *)(iVar3 + 0x1c));
      local_1c = param_2;
      std::function<void()>::
      function<std::_Bind<std::function<void(gpg::InitializationStatus)>(gpg::InitializationStatus)>,void>
                ((function<void()> *)a_Stack_4c,afStack_2c);
      if (*(int *)(iVar3 + 0x14) == 0) {
        FUN_007c4d54();
      }
      pcVar4 = *(code **)(iVar3 + 0x18);
      local_34 = 0;
      std::swap<std::_Any_data>(a_Stack_4c,(_Any_data *)a_Stack_3c);
      uVar2 = local_30;
      uVar1 = local_34;
      local_34 = local_44;
      local_44 = uVar1;
      local_30 = local_40;
      local_40 = uVar2;
      (*pcVar4)(iVar3 + 0xc,a_Stack_3c);
      std::_Function_base::~_Function_base(a_Stack_3c);
      std::_Function_base::~_Function_base((_Function_base *)a_Stack_4c);
      std::_Function_base::~_Function_base((_Function_base *)afStack_2c);
    }
  }
  return;
}

// ---- FUN_005186b2  @ 0x5186b2
void FUN_005186b2(int *param_1)

{
  byte bVar1;
  code *pcVar2;
  int iVar3;
  byte *pbVar4;
  
  iVar3 = *param_1;
  pbVar4 = *(byte **)(iVar3 + 4);
  pcVar2 = *(code **)(**(int **)(iVar3 + 8) + 8);
  bVar1 = (*pcVar2)(*(int **)(iVar3 + 8),pcVar2,*(undefined4 *)(iVar3 + 0x10),
                    *(undefined4 *)(iVar3 + 0x14));
  *pbVar4 = bVar1 ^ 1;
  return;
}

// ---- FUN_005186f4  @ 0x5186f4
undefined4 * FUN_005186f4(undefined4 *param_1)

{
  *param_1 = &PTR___Sp_counted_base_1_009242b8;
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0051876a  @ 0x51876a
void FUN_0051876a(int param_1)

{
  mutex *local_c;
  
  local_c = (mutex *)(param_1 + 0x18);
  std::mutex::lock(local_c);
  if (*(char *)(param_1 + 0x1c) != '\0') {
    *(undefined1 *)(param_1 + 0x1c) = 0;
    FUN_007be0d0(param_1 + 0x38);
  }
  std::lock_guard<std::mutex>::~lock_guard((lock_guard<std::mutex> *)&local_c);
  return;
}

// ---- FUN_00518884  @ 0x518884
undefined4 * FUN_00518884(undefined4 *param_1)

{
  *param_1 = &DAT_00924900;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(param_1 + 2));
  return param_1;
}

// ---- FUN_005188a0  @ 0x5188a0
void * FUN_005188a0(void *param_1)

{
  FUN_00518884();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_005188b2  @ 0x5188b2
void FUN_005188b2(undefined4 *param_1)

{
  undefined4 *puVar1;
  undefined4 *puVar2;
  
  puVar1 = (undefined4 *)*param_1;
  while (puVar1 != param_1) {
    puVar2 = (undefined4 *)*puVar1;
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(puVar1 + 3));
    operator_delete(puVar1);
    puVar1 = puVar2;
  }
  return;
}

// ---- FUN_005188d2  @ 0x5188d2
int FUN_005188d2(int param_1)

{
  FUN_007be0b4(param_1 + 0x38);
  FUN_005188b2(param_1 + 0x30);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(param_1 + 0x24));
  FUN_007c5914(param_1 + 8);
  std::__weak_count<(__gnu_cxx::_Lock_policy)2>::~__weak_count
            ((__weak_count<(__gnu_cxx::_Lock_policy)2> *)(param_1 + 4));
  return param_1;
}

// ---- FUN_005188fe  @ 0x5188fe
void FUN_005188fe(int param_1)

{
  void *pvVar1;
  
  pvVar1 = *(void **)(param_1 + 0xc);
  FUN_005188d2(pvVar1);
  operator_delete(pvVar1);
  return;
}

// ---- FUN_00518912  @ 0x518912
undefined4 *
FUN_00518912(undefined4 *param_1,undefined4 param_2,undefined1 param_3,undefined4 *param_4)

{
  undefined4 uVar1;
  undefined4 uVar2;
  
  *param_1 = 0;
  param_1[1] = 0;
  FUN_007c64e8(param_1 + 2);
  uVar1 = *param_4;
  uVar2 = param_4[1];
  param_1[6] = 0;
  param_1[6] = 0;
  param_1[4] = uVar1;
  param_1[5] = uVar2;
  param_1[10] = 0;
  param_1[0xb] = 0;
  *(undefined1 *)(param_1 + 7) = param_3;
  *(undefined1 *)((int)param_1 + 0x1d) = 0;
  param_1[8] = 0;
  param_1[9] = 0;
  param_1[0xc] = param_1 + 0xc;
  param_1[0xd] = param_1 + 0xc;
  param_1[0xe] = 0;
  FUN_007be0ac(param_1 + 0xe);
  return param_1;
}

// ---- FUN_00518968  @ 0x518968
void FUN_00518968(undefined4 param_1,void *param_2)

{
  FUN_00799bac(param_2);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)((int)param_2 + 0xc));
  operator_delete(param_2);
  return;
}

// ---- FUN_00518c68  @ 0x518c68
void FUN_00518c68(undefined4 ***param_1,undefined4 *param_2,undefined4 *param_3)

{
  undefined4 ****ppppuVar1;
  undefined4 ****ppppuVar2;
  undefined4 *puVar3;
  undefined4 uVar4;
  undefined4 **ppuVar5;
  undefined4 ***pppuVar6;
  undefined4 *puVar7;
  undefined4 ***pppuVar8;
  undefined4 ***local_28;
  undefined4 ***local_24;
  undefined4 *puStack_20;
  
  local_28 = param_1;
  local_24 = (undefined4 ***)param_2;
  puStack_20 = param_3;
  for (pppuVar8 = (undefined4 ***)*param_1; pppuVar8 != param_1;
      pppuVar8 = (undefined4 ***)*pppuVar8) {
    if (param_2 == param_3) goto LAB_00518c7c;
    ppuVar5 = (undefined4 **)param_2[3];
    pppuVar8[4] = (undefined4 **)param_2[2];
    pppuVar8[5] = ppuVar5;
    pppuVar8[2] = (undefined4 **)*param_2;
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::operator=
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(pppuVar8 + 3),
               (__shared_count *)(param_2 + 1));
    param_2 = param_2 + 4;
  }
  ppppuVar1 = &local_28;
  ppppuVar2 = &local_28;
  if (param_2 == param_3) {
LAB_00518c7c:
    while (pppuVar8 != param_1) {
      pppuVar6 = (undefined4 ***)*pppuVar8;
      FUN_00518968(param_1,pppuVar8);
      pppuVar8 = pppuVar6;
    }
  }
  else {
    do {
      local_24 = ppppuVar2;
      local_28 = ppppuVar1;
      puVar7 = param_2 + 4;
      puVar3 = operator_new(0x18);
      if (puVar3 != (undefined4 *)0x0) {
        *puVar3 = 0;
        puVar3[1] = 0;
        puVar3[2] = *param_2;
        std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
                  ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(puVar3 + 3),
                   (__shared_count *)(param_2 + 1));
        uVar4 = param_2[3];
        puVar3[4] = param_2[2];
        puVar3[5] = uVar4;
      }
      FUN_00799b9c(puVar3,&local_28);
      ppppuVar1 = (undefined4 ****)local_28;
      ppppuVar2 = (undefined4 ****)local_24;
      param_2 = puVar7;
    } while (param_3 != puVar7);
    if ((undefined4 ****)local_28 != &local_28) {
      FUN_00799b68(param_1,local_28,&local_28);
    }
    FUN_005188b2(&local_28);
  }
  return;
}

// ---- FUN_00518d22  @ 0x518d22
void FUN_00518d22(int param_1,undefined4 param_2,undefined4 param_3)

{
  int iStack_18;
  mutex *local_14;
  undefined4 uStack_10;
  
  local_14 = (mutex *)(param_1 + 0x18);
  iStack_18 = param_1;
  uStack_10 = param_3;
  std::mutex::lock(local_14);
  FUN_00518c68(param_1 + 0x30,&iStack_18,&iStack_18,0);
  *(undefined1 *)(param_1 + 0x1d) = 1;
  std::lock_guard<std::mutex>::~lock_guard((lock_guard<std::mutex> *)&local_14);
  return;
}

// ---- FUN_00518d60  @ 0x518d60
int * FUN_00518d60(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                  undefined1 *param_5,undefined4 param_6)

{
  bool bVar1;
  void *pvVar2;
  undefined4 *puVar3;
  int *piVar4;
  int iVar5;
  int iVar6;
  int local_14;
  
  *param_1 = 0;
  param_1[1] = 0;
  piVar4 = param_1;
  local_14 = param_2;
  pvVar2 = operator_new(0x40);
  *param_1 = (int)pvVar2;
  if (pvVar2 != (void *)0x0) {
    FUN_00518912(pvVar2,param_4,*param_5,param_6,piVar4);
  }
  iVar5 = *param_1;
  local_14 = 0;
  puVar3 = operator_new(0x14);
  if (puVar3 != (undefined4 *)0x0) {
    puVar3[1] = 1;
    puVar3[2] = 1;
    puVar3[3] = iVar5;
    *puVar3 = &PTR_LAB_005186e0_1_009248c0;
  }
  local_14 = param_1[1];
  iVar5 = *param_1;
  param_1[1] = (int)puVar3;
  if (iVar5 != 0) {
    *(int *)iVar5 = iVar5;
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
    if (*(_Sp_counted_base<(__gnu_cxx::_Lock_policy)2> **)(iVar5 + 4) !=
        (_Sp_counted_base<(__gnu_cxx::_Lock_policy)2> *)0x0) {
      std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_weak_release
                (*(_Sp_counted_base<(__gnu_cxx::_Lock_policy)2> **)(iVar5 + 4));
    }
    *(int *)(iVar5 + 4) = iVar6;
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_14);
  return param_1;
}

// ---- FUN_00518e24  @ 0x518e24
undefined4 * FUN_00518e24(undefined4 *param_1,undefined4 param_2,undefined1 param_3)

{
  undefined1 local_11 [5];
  undefined1 auStack_c [4];
  
  *param_1 = &DAT_00924900;
  local_11[0] = param_3;
  FUN_00518d60(param_1 + 1,0,auStack_c,param_2,local_11,&DAT_008312f8);
  return param_1;
}

// ---- FUN_00518e60  @ 0x518e60
undefined4 *
FUN_00518e60(undefined4 *param_1,undefined4 param_2,undefined1 param_3,undefined4 param_4)

{
  undefined1 local_19 [5];
  undefined1 auStack_14 [8];
  
  *param_1 = &DAT_00924900;
  local_19[0] = param_3;
  FUN_00518d60(param_1 + 1,0,auStack_14,param_2,local_19,param_4);
  return param_1;
}

// ---- FUN_00518ed4  @ 0x518ed4
undefined4 * FUN_00518ed4(undefined4 *param_1,int param_2)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  int local_14;
  
  *param_1 = 0;
  param_1[1] = 0;
  local_14 = param_2;
  puVar1 = operator_new(0x38);
  *param_1 = puVar1;
  if (puVar1 != (undefined4 *)0x0) {
    puVar1[1] = 0;
    puVar1[2] = 0;
    *puVar1 = &PTR___Impl_1_009248a8;
    FUN_0050abb2(puVar1 + 3,param_2);
    puVar1[0xb] = *(undefined4 *)(param_2 + 0x20);
    uVar2 = *(undefined4 *)(param_2 + 0x28);
    puVar1[0xc] = *(undefined4 *)(param_2 + 0x24);
    puVar1[0xd] = uVar2;
  }
  uVar2 = *param_1;
  local_14 = 0;
  puVar1 = operator_new(0x14);
  if (puVar1 != (undefined4 *)0x0) {
    puVar1[1] = 1;
    puVar1[2] = 1;
    puVar1[3] = uVar2;
    *puVar1 = &PTR___Sp_counted_deleter_1_009248e0;
  }
  local_14 = param_1[1];
  param_1[1] = puVar1;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_14);
  return param_1;
}

// ---- FUN_00518ffc  @ 0x518ffc
void FUN_00518ffc(Impl *param_1)

{
  bool bVar1;
  int iVar2;
  int *piVar3;
  InternalCallback *unaff_r4;
  thread atStack_48 [4];
  Impl *local_44;
  undefined1 *local_40;
  int local_3c;
  int local_38;
  undefined4 local_34 [8];
  
  if ((param_1[0x1c] != (Impl)0x0) && (*(int *)(param_1 + 0x20) == 0)) {
    local_3c = *(int *)(param_1 + 4);
    if (local_3c == 0) {
LAB_00519088:
      std::__throw_bad_weak_ptr();
    }
    else {
      piVar3 = (int *)(local_3c + 4);
      unaff_r4 = (InternalCallback *)&local_38;
      local_38 = *(int *)(local_3c + 4);
      do {
        if (local_38 == 0) goto LAB_00519088;
        DataMemoryBarrier(0x1f);
        ExclusiveAccess(piVar3);
        iVar2 = *piVar3;
        bVar1 = false;
        if (iVar2 == local_38) {
          bVar1 = (bool)hasExclusiveAccess(piVar3);
          if (bVar1) {
            *piVar3 = local_38 + 1;
          }
          DataMemoryBarrier(0x1f);
        }
        local_38 = iVar2;
      } while (!bVar1);
      local_38 = *(int *)(param_1 + 0x20);
      *(undefined4 *)(param_1 + 0x20) = *(undefined4 *)param_1;
      local_34[0] = *(undefined4 *)(param_1 + 0x24);
      *(int *)(param_1 + 0x24) = local_3c;
      local_3c = 0;
      local_40 = (undefined1 *)0x0;
      std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
                ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_34);
      std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
                ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_3c);
      local_3c = 0;
      local_40 = &LAB_00518988_1;
      local_44 = param_1;
      FUN_005165bc(unaff_r4);
      std::thread::
      thread<void(gpg::OperationQueue::Impl::*)(gpg::InternalCallback<gpg::LogLevel,std::string_const&>),gpg::OperationQueue::Impl*const,gpg::InternalCallback<gpg::LogLevel,std::string_const&>>
                (atStack_48,(_func_void_InternalCallback *)&local_40,&local_44,unaff_r4);
    }
    FUN_0050811a(unaff_r4);
    FUN_007bfda0(atStack_48);
    std::thread::~thread(atStack_48);
  }
  return;
}

// ---- FUN_005190bc  @ 0x5190bc
undefined8 FUN_005190bc(int param_1,int *param_2,undefined4 param_3)

{
  undefined4 *puVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  mutex *local_24;
  undefined4 uStack_20;
  
  local_24 = (mutex *)(param_1 + 0x18);
  uStack_20 = param_3;
  std::mutex::lock(local_24);
  FUN_00518ffc(param_1);
  iVar3 = *(uint *)(param_1 + 0x28) + 1;
  iVar4 = *(int *)(param_1 + 0x2c) + (uint)(0xfffffffe < *(uint *)(param_1 + 0x28));
  *(int *)(param_1 + 0x28) = iVar3;
  *(int *)(param_1 + 0x2c) = iVar4;
  if (*param_2 != 0) {
    puVar1 = operator_new(0x18);
    if (puVar1 != (undefined4 *)0x0) {
      *puVar1 = 0;
      puVar1[1] = 0;
      iVar2 = *param_2;
      puVar1[3] = 0;
      puVar1[2] = iVar2;
      iVar2 = param_2[1];
      param_2[1] = 0;
      puVar1[3] = iVar2;
      *param_2 = 0;
      puVar1[4] = iVar3;
      puVar1[5] = iVar4;
    }
    FUN_00799b9c(puVar1,param_1 + 0x30);
    FUN_007be0d0(param_1 + 0x38);
  }
  std::lock_guard<std::mutex>::~lock_guard((lock_guard<std::mutex> *)&local_24);
  return CONCAT44(iVar4,iVar3);
}

// ---- FUN_00519138  @ 0x519138
undefined4 FUN_00519138(int param_1,undefined4 *param_2)

{
  undefined4 uVar1;
  undefined4 local_18;
  undefined4 *puStack_14;
  
  local_18 = *param_2;
  uVar1 = *(undefined4 *)(param_1 + 4);
  puStack_14 = param_2;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&puStack_14,
             (__shared_count *)(param_2 + 1));
  uVar1 = FUN_005190bc(uVar1,&local_18);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&puStack_14);
  return uVar1;
}

// ---- FUN_005191c8  @ 0x5191c8
undefined4 * FUN_005191c8(undefined4 *param_1)

{
  *param_1 = &PTR___Sp_counted_base_1_009242b8;
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_005192d6  @ 0x5192d6
void FUN_005192d6(int param_1)

{
  _Rb_tree<std::string,std::pair<std::string_const,std::pair<unsigned_int,gpg::MatchResult>>,std::_Select1st<std::pair<std::string_const,std::pair<unsigned_int,gpg::MatchResult>>>,std::less<std::string>,std::allocator<std::pair<std::string_const,std::pair<unsigned_int,gpg::MatchResult>>>>
  *this;
  
  this = *(_Rb_tree<std::string,std::pair<std::string_const,std::pair<unsigned_int,gpg::MatchResult>>,std::_Select1st<std::pair<std::string_const,std::pair<unsigned_int,gpg::MatchResult>>>,std::less<std::string>,std::allocator<std::pair<std::string_const,std::pair<unsigned_int,gpg::MatchResult>>>>
           **)(param_1 + 0xc);
  std::
  _Rb_tree<std::string,std::pair<std::string_const,std::pair<unsigned_int,gpg::MatchResult>>,std::_Select1st<std::pair<std::string_const,std::pair<unsigned_int,gpg::MatchResult>>>,std::less<std::string>,std::allocator<std::pair<std::string_const,std::pair<unsigned_int,gpg::MatchResult>>>>
  ::_M_erase(this,*(_Rb_tree_node **)(this + 8));
  operator_delete(this);
  return;
}

// ---- FUN_005196ac  @ 0x5196ac
undefined4 * FUN_005196ac(undefined4 *param_1,undefined4 param_2,undefined4 param_3,int param_4)

{
  _Rb_tree<std::string,std::pair<std::string_const,std::pair<unsigned_int,gpg::MatchResult>>,std::_Select1st<std::pair<std::string_const,std::pair<unsigned_int,gpg::MatchResult>>>,std::less<std::string>,std::allocator<std::pair<std::string_const,std::pair<unsigned_int,gpg::MatchResult>>>>
  *this;
  int iVar1;
  undefined4 *puVar2;
  int iVar3;
  int iVar4;
  undefined4 uVar5;
  _Rb_tree_node *__s;
  undefined4 local_1c;
  undefined4 uStack_18;
  
  *param_1 = 0;
  param_1[1] = 0;
  local_1c = param_2;
  uStack_18 = param_3;
  this = operator_new(0x18);
  *param_1 = this;
  if (this != (_Rb_tree<std::string,std::pair<std::string_const,std::pair<unsigned_int,gpg::MatchResult>>,std::_Select1st<std::pair<std::string_const,std::pair<unsigned_int,gpg::MatchResult>>>,std::less<std::string>,std::allocator<std::pair<std::string_const,std::pair<unsigned_int,gpg::MatchResult>>>>
               *)0x0) {
    __s = (_Rb_tree_node *)(this + 4);
    memset(__s,0,0x10);
    *(_Rb_tree_node **)(this + 0xc) = __s;
    *(undefined4 *)(this + 0x14) = 0;
    *(_Rb_tree_node **)(this + 0x10) = __s;
    if (*(_Rb_tree_node **)(param_4 + 8) != (_Rb_tree_node *)0x0) {
      iVar1 = std::
              _Rb_tree<std::string,std::pair<std::string_const,std::pair<unsigned_int,gpg::MatchResult>>,std::_Select1st<std::pair<std::string_const,std::pair<unsigned_int,gpg::MatchResult>>>,std::less<std::string>,std::allocator<std::pair<std::string_const,std::pair<unsigned_int,gpg::MatchResult>>>>
              ::_M_copy(this,*(_Rb_tree_node **)(param_4 + 8),__s);
      *(int *)(this + 8) = iVar1;
      iVar4 = iVar1;
      do {
        iVar3 = iVar4;
        iVar4 = *(int *)(iVar3 + 8);
      } while (iVar4 != 0);
      *(int *)(this + 0xc) = iVar3;
      do {
        iVar4 = iVar1;
        iVar1 = *(int *)(iVar4 + 0xc);
      } while (iVar1 != 0);
      *(int *)(this + 0x10) = iVar4;
      *(undefined4 *)(this + 0x14) = *(undefined4 *)(param_4 + 0x14);
    }
  }
  uVar5 = *param_1;
  local_1c = 0;
  puVar2 = operator_new(0x14);
  if (puVar2 != (undefined4 *)0x0) {
    puVar2[1] = 1;
    puVar2[2] = 1;
    puVar2[3] = uVar5;
    *puVar2 = &PTR_LAB_005191b4_1_00924910;
  }
  local_1c = param_1[1];
  param_1[1] = puVar2;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_1c);
  return param_1;
}

// ---- FUN_00519ce4  @ 0x519ce4
undefined4 * FUN_00519ce4(undefined4 *param_1)

{
  *param_1 = &PTR___Sp_counted_base_1_009242b8;
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_00519d74  @ 0x519d74
void FUN_00519d74(int param_1)

{
  void *pvVar1;
  
  pvVar1 = *(void **)(param_1 + 0xc);
  gpg::Player::~Player((Player *)((int)pvVar1 + 0x10));
  FUN_007be0b4((int)pvVar1 + 4);
  operator_delete(pvVar1);
  return;
}

// ---- FUN_00519d90  @ 0x519d90
void FUN_00519d90(int param_1)

{
  void *pvVar1;
  
  pvVar1 = *(void **)(param_1 + 0xc);
  gpg::Player::~Player((Player *)((int)pvVar1 + 0x10));
  FUN_007be0b4((int)pvVar1 + 4);
  operator_delete(pvVar1);
  return;
}

// ---- FUN_00519db2  @ 0x519db2
_Function_base * FUN_00519db2(_Function_base *param_1)

{
  std::_Function_base::~_Function_base(param_1 + 0x10);
  std::_Function_base::~_Function_base(param_1);
  return param_1;
}

// ---- FUN_00519dda  @ 0x519dda
void FUN_00519dda(undefined4 *param_1,undefined4 *param_2)

{
  bool bVar1;
  int iVar2;
  int *piVar3;
  
  *param_1 = *param_2;
  iVar2 = param_2[1];
  param_1[1] = iVar2;
  if (iVar2 != 0) {
    piVar3 = (int *)(iVar2 + 4);
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

// ---- FUN_00519dfe  @ 0x519dfe
_Function_base * FUN_00519dfe(_Function_base *param_1)

{
  std::_Function_base::~_Function_base(param_1 + 0x10);
  std::_Function_base::~_Function_base(param_1);
  return param_1;
}

// ---- FUN_00519e26  @ 0x519e26
_Function_base * FUN_00519e26(_Function_base *param_1)

{
  std::_Function_base::~_Function_base(param_1 + 0x10);
  std::_Function_base::~_Function_base(param_1);
  return param_1;
}

// ---- FUN_00519e60  @ 0x519e60
void FUN_00519e60(undefined4 *param_1,undefined4 *param_2)

{
  int iVar1;
  int *piVar2;
  mutex *local_14;
  
  piVar2 = (int *)*param_1;
  local_14 = (mutex *)*piVar2;
  std::mutex::lock(local_14);
  iVar1 = *piVar2;
  *(undefined4 *)(iVar1 + 0xc) = *param_2;
  gpg::Player::operator=((Player *)(iVar1 + 0x10),(Player *)(param_2 + 1));
  *(undefined1 *)(*piVar2 + 8) = 1;
  FUN_007be0e0(*piVar2 + 4);
  std::lock_guard<std::mutex>::~lock_guard((lock_guard<std::mutex> *)&local_14);
  return;
}

// ---- FUN_0051a104  @ 0x51a104
function<void(std::function<void()>)> *
FUN_0051a104(function<void(std::function<void()>)> *param_1,function *param_2)

{
  std::function<void(std::function<void()>)>::function(param_1,param_2);
  std::function<void(gpg::PlayerManager::FetchListResponse_const&)>::function
            ((function<void(gpg::PlayerManager::FetchListResponse_const&)> *)(param_1 + 0x10),
             param_2 + 0x10);
  return param_1;
}

// ---- FUN_0051a190  @ 0x51a190
function<void(std::function<void()>)> *
FUN_0051a190(function<void(std::function<void()>)> *param_1,function *param_2,
            function<void(gpg::PlayerManager::FetchListResponse_const&)> *param_3)

{
  function<void(gpg::PlayerManager::FetchListResponse_const&)> afStack_48 [8];
  undefined4 local_40;
  function<void(std::function<void()>)> afStack_38 [8];
  undefined4 local_30;
  function<void(gpg::PlayerManager::FetchListResponse_const&)> afStack_28 [8];
  undefined4 local_20;
  
  if (*(int *)(param_3 + 8) == 0) {
    local_40 = 0;
    local_30 = 0;
  }
  else {
    local_40 = 0;
    std::function<void(gpg::PlayerManager::FetchListResponse_const&)>::swap
              (param_3,(function *)afStack_48);
    std::function<void(std::function<void()>)>::function(afStack_38,param_2);
  }
  local_20 = 0;
  std::function<void(gpg::PlayerManager::FetchListResponse_const&)>::swap
            (afStack_48,(function *)afStack_28);
  std::function<void(std::function<void()>)>::function(param_1,(function *)afStack_38);
  *(undefined4 *)(param_1 + 0x18) = 0;
  std::function<void(gpg::PlayerManager::FetchListResponse_const&)>::swap
            (afStack_28,(function *)(param_1 + 0x10));
  FUN_00519e26(afStack_38);
  std::_Function_base::~_Function_base((_Function_base *)afStack_48);
  return param_1;
}

// ---- FUN_0051a204  @ 0x51a204
function<void(std::function<void()>)> * FUN_0051a204(function<void(std::function<void()>)> *param_1)

{
  undefined4 uVar1;
  undefined4 local_68;
  undefined4 local_64;
  _Function_base a_Stack_60 [8];
  undefined4 local_58;
  undefined4 *local_50 [2];
  code *local_48;
  undefined4 local_44;
  function afStack_40 [8];
  undefined4 local_38;
  function<void(gpg::PlayerManager::FetchSelfResponse_const&)> afStack_30 [20];
  
  local_58 = 0;
  FUN_00519dda(&local_68);
  local_48 = (code *)0x0;
  local_50[0] = operator_new(8);
  uVar1 = local_64;
  *local_50[0] = local_68;
  local_50[0][1] = 0;
  local_68 = 0;
  local_64 = 0;
  local_50[0][1] = uVar1;
  local_44 = 0x519e61;
  local_38 = 0;
  local_48 = (code *)0x519eed;
  std::function<void(gpg::PlayerManager::FetchSelfResponse_const&)>::function
            (afStack_30,(function *)local_50);
  std::function<void(std::function<void()>)>::function(param_1,afStack_40);
  std::function<void(gpg::PlayerManager::FetchSelfResponse_const&)>::function
            ((function<void(gpg::PlayerManager::FetchSelfResponse_const&)> *)(param_1 + 0x10),
             (function *)afStack_30);
  FUN_00519db2(afStack_40);
  std::_Function_base::~_Function_base((_Function_base *)local_50);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_64);
  std::_Function_base::~_Function_base(a_Stack_60);
  return param_1;
}

// ---- FUN_0051a2a4  @ 0x51a2a4
function<void(std::function<void()>)> *
FUN_0051a2a4(function<void(std::function<void()>)> *param_1,undefined4 *param_2)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 local_64;
  _Function_base a_Stack_60 [8];
  undefined4 local_58;
  undefined4 *local_50 [2];
  code *local_48;
  undefined1 *local_44;
  function afStack_40 [8];
  undefined4 local_38;
  function<void(gpg::PlayerManager::FetchResponse_const&)> afStack_30 [20];
  
  uVar2 = *param_2;
  local_58 = 0;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_64,(__shared_count *)(param_2 + 1)
            );
  local_48 = (code *)0x0;
  local_50[0] = operator_new(8);
  uVar1 = local_64;
  *local_50[0] = uVar2;
  local_50[0][1] = 0;
  local_64 = 0;
  local_50[0][1] = uVar1;
  local_44 = &LAB_00519ea6_1;
  local_38 = 0;
  local_48 = (code *)0x519f2b;
  std::function<void(gpg::PlayerManager::FetchResponse_const&)>::function
            (afStack_30,(function *)local_50);
  std::function<void(std::function<void()>)>::function(param_1,afStack_40);
  std::function<void(gpg::PlayerManager::FetchResponse_const&)>::function
            ((function<void(gpg::PlayerManager::FetchResponse_const&)> *)(param_1 + 0x10),
             (function *)afStack_30);
  FUN_00519dfe(afStack_40);
  std::_Function_base::~_Function_base((_Function_base *)local_50);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_64);
  std::_Function_base::~_Function_base(a_Stack_60);
  return param_1;
}

// ---- FUN_0051a34c  @ 0x51a34c
function<void(std::function<void()>)> *
FUN_0051a34c(function<void(std::function<void()>)> *param_1,undefined4 *param_2)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 local_64;
  _Function_base a_Stack_60 [8];
  undefined4 local_58;
  undefined4 *local_50 [2];
  code *local_48;
  undefined4 local_44;
  function afStack_40 [8];
  undefined4 local_38;
  function<void(gpg::PlayerManager::FetchListResponse_const&)> afStack_30 [8];
  undefined4 local_28;
  
  uVar2 = *param_2;
  local_58 = 0;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_64,(__shared_count *)(param_2 + 1)
            );
  local_48 = (code *)0x0;
  local_50[0] = operator_new(8);
  uVar1 = local_64;
  *local_50[0] = uVar2;
  local_50[0][1] = 0;
  local_64 = 0;
  local_50[0][1] = uVar1;
  local_44 = 0x51aebf;
  local_38 = 0;
  local_48 = (code *)0x519f71;
  local_28 = 0;
  std::function<void(gpg::PlayerManager::FetchListResponse_const&)>::swap
            ((function<void(gpg::PlayerManager::FetchListResponse_const&)> *)local_50,
             (function *)afStack_30);
  std::function<void(std::function<void()>)>::function(param_1,afStack_40);
  *(undefined4 *)(param_1 + 0x18) = 0;
  std::function<void(gpg::PlayerManager::FetchListResponse_const&)>::swap
            (afStack_30,(function *)(param_1 + 0x10));
  FUN_00519e26(afStack_40);
  std::_Function_base::~_Function_base((_Function_base *)local_50);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_64);
  std::_Function_base::~_Function_base(a_Stack_60);
  return param_1;
}

// ---- FUN_0051a40c  @ 0x51a40c
void FUN_0051a40c(function<void(std::function<void()>)> *param_1,FetchSelfResponse *param_2)

{
  function<void(gpg::PlayerManager::FetchSelfResponse_const&)> *this;
  function<void(gpg::PlayerManager::FetchSelfResponse_const&)> *local_44 [2];
  code *local_3c;
  code *local_38;
  function<void(gpg::PlayerManager::FetchSelfResponse_const&)> afStack_34 [16];
  undefined4 local_24;
  Player aPStack_20 [12];
  
  if (*(int *)(param_1 + 0x18) != 0) {
    if (*(int *)(param_1 + 8) == 0) {
      std::function<void(gpg::PlayerManager::FetchSelfResponse_const&)>::operator()
                ((function<void(gpg::PlayerManager::FetchSelfResponse_const&)> *)(param_1 + 0x10),
                 param_2);
    }
    else {
      std::function<void(gpg::PlayerManager::FetchSelfResponse_const&)>::function
                (afStack_34,(function *)(param_1 + 0x10));
      local_24 = *(undefined4 *)param_2;
      gpg::Player::Player(aPStack_20,(Player *)(param_2 + 4));
      local_3c = (code *)0x0;
      this = operator_new(0x1c);
      std::function<void(gpg::PlayerManager::FetchSelfResponse_const&)>::function
                (this,(function *)afStack_34);
      gpg::PlayerManager::FetchSelfResponse::FetchSelfResponse
                ((FetchSelfResponse *)(this + 0x10),(FetchSelfResponse *)&local_24);
      local_38 = (code *)0x51a63b;
      local_3c = (code *)0x519fe1;
      local_44[0] = this;
      std::function<void(std::function<void()>)>::operator()(param_1,(_Function_base *)local_44);
      std::_Function_base::~_Function_base((_Function_base *)local_44);
      gpg::Player::~Player(aPStack_20);
      std::_Function_base::~_Function_base((_Function_base *)afStack_34);
    }
  }
  return;
}

// ---- FUN_0051a654  @ 0x51a654
void FUN_0051a654(function<void(std::function<void()>)> *param_1,FetchResponse *param_2)

{
  function<void(gpg::PlayerManager::FetchResponse_const&)> *this;
  function<void(gpg::PlayerManager::FetchResponse_const&)> *local_44 [2];
  code *local_3c;
  code *local_38;
  function<void(gpg::PlayerManager::FetchResponse_const&)> afStack_34 [16];
  undefined4 local_24;
  Player aPStack_20 [12];
  
  if (*(int *)(param_1 + 0x18) != 0) {
    if (*(int *)(param_1 + 8) == 0) {
      std::function<void(gpg::PlayerManager::FetchResponse_const&)>::operator()
                ((function<void(gpg::PlayerManager::FetchResponse_const&)> *)(param_1 + 0x10),
                 param_2);
    }
    else {
      std::function<void(gpg::PlayerManager::FetchResponse_const&)>::function
                (afStack_34,(function *)(param_1 + 0x10));
      local_24 = *(undefined4 *)param_2;
      gpg::Player::Player(aPStack_20,(Player *)(param_2 + 4));
      local_3c = (code *)0x0;
      this = operator_new(0x1c);
      std::function<void(gpg::PlayerManager::FetchResponse_const&)>::function
                (this,(function *)afStack_34);
      gpg::PlayerManager::FetchResponse::FetchResponse
                ((FetchResponse *)(this + 0x10),(FetchResponse *)&local_24);
      local_38 = (code *)0x51a893;
      local_3c = (code *)0x51a073;
      local_44[0] = this;
      std::function<void(std::function<void()>)>::operator()(param_1,(_Function_base *)local_44);
      std::_Function_base::~_Function_base((_Function_base *)local_44);
      gpg::Player::~Player(aPStack_20);
      std::_Function_base::~_Function_base((_Function_base *)afStack_34);
    }
  }
  return;
}

// ---- FUN_0051a8e2  @ 0x51a8e2
void FUN_0051a8e2(int param_1)

{
  void *pvVar1;
  
  pvVar1 = *(void **)(param_1 + 0xc);
  std::vector<gpg::Player,std::allocator<gpg::Player>>::~vector
            ((vector<gpg::Player,std::allocator<gpg::Player>> *)((int)pvVar1 + 0x10));
  FUN_007be0b4((int)pvVar1 + 4);
  operator_delete(pvVar1);
  return;
}

// ---- FUN_0051a8fe  @ 0x51a8fe
Player * FUN_0051a8fe(Player *param_1,Player *param_2,Player *param_3)

{
  for (; param_1 != param_2; param_1 = param_1 + 8) {
    if (param_3 != (Player *)0x0) {
      gpg::Player::Player(param_3,param_1);
    }
    param_3 = param_3 + 8;
  }
  return param_3;
}

// ---- FUN_0051a9f0  @ 0x51a9f0
void FUN_0051a9f0(function<void(std::function<void()>)> *param_1,FetchListResponse *param_2)

{
  function *pfVar1;
  function *local_48 [2];
  code *local_40;
  code *local_3c;
  function<void(gpg::PlayerManager::FetchListResponse_const&)> afStack_38 [16];
  FetchListResponse aFStack_28 [4];
  vector<gpg::Player,std::allocator<gpg::Player>> avStack_24 [12];
  
  if (*(int *)(param_1 + 0x18) != 0) {
    if (*(int *)(param_1 + 8) == 0) {
      std::function<void(gpg::PlayerManager::FetchListResponse_const&)>::operator()
                ((function<void(gpg::PlayerManager::FetchListResponse_const&)> *)(param_1 + 0x10),
                 param_2);
    }
    else {
      std::function<void(gpg::PlayerManager::FetchListResponse_const&)>::function
                (afStack_38,(function *)(param_1 + 0x10));
      gpg::PlayerManager::FetchListResponse::FetchListResponse(aFStack_28,param_2);
      local_40 = (code *)0x0;
      pfVar1 = operator_new(0x20);
      *(undefined4 *)(pfVar1 + 8) = 0;
      std::function<void(gpg::PlayerManager::FetchListResponse_const&)>::swap(afStack_38,pfVar1);
      gpg::PlayerManager::FetchListResponse::FetchListResponse
                ((FetchListResponse *)(pfVar1 + 0x10),aFStack_28);
      local_3c = (code *)0x51a8ad;
      local_40 = (code *)0x51a98d;
      local_48[0] = pfVar1;
      std::function<void(std::function<void()>)>::operator()(param_1,local_48);
      std::_Function_base::~_Function_base((_Function_base *)local_48);
      std::vector<gpg::Player,std::allocator<gpg::Player>>::~vector(avStack_24);
      std::_Function_base::~_Function_base((_Function_base *)afStack_38);
    }
  }
  return;
}

// ---- FUN_0051aebe  @ 0x51aebe
void FUN_0051aebe(undefined4 *param_1,undefined4 *param_2)

{
  int iVar1;
  int *piVar2;
  mutex *local_14;
  
  piVar2 = (int *)*param_1;
  local_14 = (mutex *)*piVar2;
  std::mutex::lock(local_14);
  iVar1 = *piVar2;
  *(undefined4 *)(iVar1 + 0xc) = *param_2;
  std::vector<gpg::Player,std::allocator<gpg::Player>>::operator=
            ((vector<gpg::Player,std::allocator<gpg::Player>> *)(iVar1 + 0x10),
             (vector *)(param_2 + 1));
  *(undefined1 *)(*piVar2 + 8) = 1;
  FUN_007be0e0(*piVar2 + 4);
  std::lock_guard<std::mutex>::~lock_guard((lock_guard<std::mutex> *)&local_14);
  return;
}

// ---- FUN_0051af04  @ 0x51af04
undefined4 * FUN_0051af04(undefined4 *param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  undefined4 local_1c;
  undefined4 uStack_18;
  
  *param_1 = 0;
  param_1[1] = 0;
  local_1c = param_2;
  uStack_18 = param_3;
  puVar1 = operator_new(0x18);
  *param_1 = puVar1;
  if (puVar1 != (undefined4 *)0x0) {
    *puVar1 = 0;
    *puVar1 = 0;
    puVar1[1] = 0;
    FUN_007be0ac(puVar1 + 1);
    *(undefined1 *)(puVar1 + 2) = 0;
    puVar1[3] = 0;
    puVar1[4] = 0;
    puVar1[5] = 0;
    gpg::Player::Player((Player *)(puVar1 + 4));
  }
  uVar2 = *param_1;
  local_1c = 0;
  puVar1 = operator_new(0x14);
  if (puVar1 != (undefined4 *)0x0) {
    puVar1[1] = 1;
    puVar1[2] = 1;
    puVar1[3] = uVar2;
    *puVar1 = &PTR_LAB_00519cd0_1_00924930;
  }
  local_1c = param_1[1];
  param_1[1] = puVar1;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_1c);
  return param_1;
}

// ---- FUN_0051afc4  @ 0x51afc4
undefined4 * FUN_0051afc4(undefined4 *param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  undefined4 local_1c;
  undefined4 uStack_18;
  
  *param_1 = 0;
  param_1[1] = 0;
  local_1c = param_2;
  uStack_18 = param_3;
  puVar1 = operator_new(0x18);
  *param_1 = puVar1;
  if (puVar1 != (undefined4 *)0x0) {
    *puVar1 = 0;
    *puVar1 = 0;
    puVar1[1] = 0;
    FUN_007be0ac(puVar1 + 1);
    *(undefined1 *)(puVar1 + 2) = 0;
    puVar1[3] = 0;
    puVar1[4] = 0;
    puVar1[5] = 0;
    gpg::Player::Player((Player *)(puVar1 + 4));
  }
  uVar2 = *param_1;
  local_1c = 0;
  puVar1 = operator_new(0x14);
  if (puVar1 != (undefined4 *)0x0) {
    puVar1[1] = 1;
    puVar1[2] = 1;
    puVar1[3] = uVar2;
    *puVar1 = &PTR_LAB_00519cbc_1_00924950;
  }
  local_1c = param_1[1];
  param_1[1] = puVar1;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_1c);
  return param_1;
}

// ---- FUN_0051b084  @ 0x51b084
undefined4 * FUN_0051b084(undefined4 *param_1,undefined4 param_2)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  undefined4 local_14;
  
  *param_1 = 0;
  param_1[1] = 0;
  local_14 = param_2;
  puVar1 = operator_new(0x1c);
  *param_1 = puVar1;
  if (puVar1 != (undefined4 *)0x0) {
    *puVar1 = 0;
    *puVar1 = 0;
    puVar1[1] = 0;
    FUN_007be0ac(puVar1 + 1);
    *(undefined1 *)(puVar1 + 2) = 0;
    memset(puVar1 + 3,0,0x10);
  }
  uVar2 = *param_1;
  local_14 = 0;
  puVar1 = operator_new(0x14);
  if (puVar1 != (undefined4 *)0x0) {
    puVar1[1] = 1;
    puVar1[2] = 1;
    puVar1[3] = uVar2;
    *puVar1 = &PTR_LAB_00519ca8_1_00924970;
  }
  local_14 = param_1[1];
  param_1[1] = puVar1;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_14);
  return param_1;
}

// ---- FUN_0051b658  @ 0x51b658
FetchListResponse * FUN_0051b658(FetchListResponse *param_1,int *param_2,uint param_3,int param_4)

{
  longlong lVar1;
  int iVar2;
  int iVar3;
  FetchListResponse *pFVar4;
  undefined4 local_60;
  int iStack_5c;
  mutex *local_58;
  undefined1 local_54;
  undefined4 local_50;
  undefined4 local_4c;
  undefined4 local_48;
  undefined4 local_44;
  undefined4 local_40;
  undefined4 local_3c;
  undefined4 local_38;
  undefined4 local_34;
  undefined4 local_30;
  int aiStack_2c [3];
  
  local_4c = 0;
  local_48 = 0;
  local_44 = 0;
  local_3c = 0;
  local_38 = 0;
  local_34 = 0;
  local_50 = 0xfffffffe;
  local_40 = 0xfffffffb;
  iVar2 = FUN_00553a80();
  if (iVar2 != 0) {
    FUN_005166ae(4,"Blocking calls are not allowed from the UI thread.");
    gpg::PlayerManager::FetchListResponse::FetchListResponse
              ((FetchListResponse *)&local_30,(FetchListResponse *)&local_50);
    goto LAB_0051b72e;
  }
  local_58 = (mutex *)*param_2;
  local_54 = 0;
  if (local_58 == (mutex *)0x0) {
                    /* WARNING: Subroutine does not return */
    FUN_007c4c60(1);
  }
  std::mutex::lock(local_58);
  local_54 = 1;
  iVar2 = *param_2;
  if (*(char *)(iVar2 + 8) == '\0') {
    FUN_007bfd24(&local_60);
    lVar1 = (ulonglong)param_3 * 1000000 + CONCAT44(param_4 * 1000000,local_60);
    local_30 = (undefined4)lVar1;
    aiStack_2c[0] = iStack_5c + (int)((ulonglong)lVar1 >> 0x20);
    do {
      if (*(char *)(*param_2 + 8) != '\0') goto LAB_0051b718;
      iVar3 = std::condition_variable::
              __wait_until_impl<std::chrono::duration<long_long,std::ratio<1ll,1000000000ll>>>
                        ((unique_lock *)(iVar2 + 4),(time_point *)&local_58);
    } while (iVar3 != 1);
    if (*(char *)(*param_2 + 8) != '\0') goto LAB_0051b718;
    pFVar4 = (FetchListResponse *)&local_40;
  }
  else {
LAB_0051b718:
    pFVar4 = (FetchListResponse *)(*param_2 + 0xc);
  }
  gpg::PlayerManager::FetchListResponse::FetchListResponse((FetchListResponse *)&local_30,pFVar4);
  std::unique_lock<std::mutex>::~unique_lock((unique_lock<std::mutex> *)&local_58);
LAB_0051b72e:
  gpg::PlayerManager::FetchListResponse::FetchListResponse(param_1,(FetchListResponse *)&local_30);
  std::vector<gpg::Player,std::allocator<gpg::Player>>::~vector
            ((vector<gpg::Player,std::allocator<gpg::Player>> *)aiStack_2c);
  std::vector<gpg::Player,std::allocator<gpg::Player>>::~vector
            ((vector<gpg::Player,std::allocator<gpg::Player>> *)&local_3c);
  std::vector<gpg::Player,std::allocator<gpg::Player>>::~vector
            ((vector<gpg::Player,std::allocator<gpg::Player>> *)&local_4c);
  return param_1;
}

// ---- FUN_0051bdce  @ 0x51bdce
QuestMilestone * FUN_0051bdce(QuestMilestone *param_1,int param_2)

{
  bool bVar1;
  int extraout_r1;
  int *piVar2;
  int *extraout_r2;
  int extraout_r3;
  int iVar3;
  QuestMilestone *unaff_r4;
  int iVar4;
  undefined4 local_28;
  int local_24;
  int local_20 [3];
  
  local_24 = *(int *)(param_2 + 100);
  if (local_24 == 0) goto LAB_0051bde8;
  piVar2 = (int *)(local_24 + 4);
  unaff_r4 = (QuestMilestone *)local_20;
  local_20[0] = *(int *)(local_24 + 4);
  while( true ) {
    iVar3 = local_20[0];
    if (local_20[0] == 0) {
LAB_0051bde8:
      std::__throw_bad_weak_ptr();
      param_2 = extraout_r1;
      piVar2 = extraout_r2;
      iVar3 = extraout_r3;
    }
    DataMemoryBarrier(0x1f);
    ExclusiveAccess(piVar2);
    iVar4 = *piVar2;
    bVar1 = false;
    if (iVar4 == *(int *)unaff_r4) {
      bVar1 = (bool)hasExclusiveAccess(piVar2);
      if (bVar1) {
        *piVar2 = iVar3 + 1;
      }
      DataMemoryBarrier(0x1f);
    }
    if (bVar1) break;
    *(int *)unaff_r4 = iVar4;
  }
  local_28 = *(undefined4 *)(param_2 + 0x60);
  gpg::QuestMilestone::QuestMilestone(unaff_r4,&local_28);
  gpg::QuestMilestone::QuestMilestone(param_1,unaff_r4);
  gpg::QuestMilestone::~QuestMilestone(unaff_r4);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_24);
  return param_1;
}

// ---- FUN_0051bf64  @ 0x51bf64
undefined4 * FUN_0051bf64(undefined4 *param_1)

{
  *param_1 = &PTR___Sp_counted_base_1_009242b8;
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0051c054  @ 0x51c054
void FUN_0051c054(int param_1)

{
  void *pvVar1;
  
  pvVar1 = *(void **)(param_1 + 0xc);
  gpg::Quest::~Quest((Quest *)((int)pvVar1 + 0x10));
  FUN_007be0b4((int)pvVar1 + 4);
  operator_delete(pvVar1);
  return;
}

// ---- FUN_0051c092  @ 0x51c092
_Function_base * FUN_0051c092(_Function_base *param_1)

{
  std::_Function_base::~_Function_base(param_1 + 0x10);
  std::_Function_base::~_Function_base(param_1);
  return param_1;
}

// ---- FUN_0051c0ba  @ 0x51c0ba
_Function_base * FUN_0051c0ba(_Function_base *param_1)

{
  std::_Function_base::~_Function_base(param_1 + 0x10);
  std::_Function_base::~_Function_base(param_1);
  return param_1;
}

// ---- FUN_0051c0f4  @ 0x51c0f4
_Function_base * FUN_0051c0f4(_Function_base *param_1)

{
  std::_Function_base::~_Function_base(param_1 + 0x10);
  std::_Function_base::~_Function_base(param_1);
  return param_1;
}

// ---- FUN_0051c11c  @ 0x51c11c
_Function_base * FUN_0051c11c(_Function_base *param_1)

{
  std::_Function_base::~_Function_base(param_1 + 0x10);
  std::_Function_base::~_Function_base(param_1);
  return param_1;
}

// ---- FUN_0051c144  @ 0x51c144
void FUN_0051c144(int param_1)

{
  void *pvVar1;
  
  pvVar1 = *(void **)(param_1 + 0xc);
  gpg::QuestManager::ClaimMilestoneResponse::~ClaimMilestoneResponse
            ((ClaimMilestoneResponse *)((int)pvVar1 + 0xc));
  FUN_007be0b4((int)pvVar1 + 4);
  operator_delete(pvVar1);
  return;
}

// ---- FUN_0051c190  @ 0x51c190
_Function_base * FUN_0051c190(_Function_base *param_1)

{
  std::_Function_base::~_Function_base(param_1 + 0x10);
  std::_Function_base::~_Function_base(param_1);
  return param_1;
}

// ---- FUN_0051c1b8  @ 0x51c1b8
void FUN_0051c1b8(int param_1)

{
  void *pvVar1;
  
  pvVar1 = *(void **)(param_1 + 0xc);
  gpg::QuestManager::QuestUIResponse::~QuestUIResponse((QuestUIResponse *)((int)pvVar1 + 0xc));
  FUN_007be0b4((int)pvVar1 + 4);
  operator_delete(pvVar1);
  return;
}

// ---- FUN_0051c54e  @ 0x51c54e
function<void(std::function<void()>)> *
FUN_0051c54e(function<void(std::function<void()>)> *param_1,function *param_2)

{
  std::function<void(std::function<void()>)>::function(param_1,param_2);
  std::function<void(gpg::QuestManager::FetchListResponse_const&)>::function
            ((function<void(gpg::QuestManager::FetchListResponse_const&)> *)(param_1 + 0x10),
             param_2 + 0x10);
  return param_1;
}

// ---- FUN_0051c67a  @ 0x51c67a
function<void(std::function<void()>)> *
FUN_0051c67a(function<void(std::function<void()>)> *param_1,function *param_2)

{
  std::function<void(std::function<void()>)>::function(param_1,param_2);
  std::function<void(gpg::QuestManager::QuestUIResponse_const&)>::function
            ((function<void(gpg::QuestManager::QuestUIResponse_const&)> *)(param_1 + 0x10),
             param_2 + 0x10);
  return param_1;
}

// ---- FUN_0051c774  @ 0x51c774
function<void(std::function<void()>)> *
FUN_0051c774(function<void(std::function<void()>)> *param_1,function *param_2,
            function<void(gpg::QuestManager::FetchListResponse_const&)> *param_3)

{
  function<void(gpg::QuestManager::FetchListResponse_const&)> afStack_48 [8];
  undefined4 local_40;
  function<void(std::function<void()>)> afStack_38 [8];
  undefined4 local_30;
  function<void(gpg::QuestManager::FetchListResponse_const&)> afStack_28 [8];
  undefined4 local_20;
  
  if (*(int *)(param_3 + 8) == 0) {
    local_40 = 0;
    local_30 = 0;
  }
  else {
    local_40 = 0;
    std::function<void(gpg::QuestManager::FetchListResponse_const&)>::swap
              (param_3,(function *)afStack_48);
    std::function<void(std::function<void()>)>::function(afStack_38,param_2);
  }
  local_20 = 0;
  std::function<void(gpg::QuestManager::FetchListResponse_const&)>::swap
            (afStack_48,(function *)afStack_28);
  std::function<void(std::function<void()>)>::function(param_1,(function *)afStack_38);
  *(undefined4 *)(param_1 + 0x18) = 0;
  std::function<void(gpg::QuestManager::FetchListResponse_const&)>::swap
            (afStack_28,(function *)(param_1 + 0x10));
  FUN_0051c0ba(afStack_38);
  std::_Function_base::~_Function_base((_Function_base *)afStack_48);
  return param_1;
}

// ---- FUN_0051c7e8  @ 0x51c7e8
function<void(std::function<void()>)> *
FUN_0051c7e8(function<void(std::function<void()>)> *param_1,undefined4 *param_2)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 local_64;
  _Function_base a_Stack_60 [8];
  undefined4 local_58;
  undefined4 *local_50 [2];
  code *local_48;
  undefined1 *local_44;
  function afStack_40 [8];
  undefined4 local_38;
  function<void(gpg::QuestManager::AcceptResponse_const&)> afStack_30 [20];
  
  uVar2 = *param_2;
  local_58 = 0;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_64,(__shared_count *)(param_2 + 1)
            );
  local_48 = (code *)0x0;
  local_50[0] = operator_new(8);
  uVar1 = local_64;
  *local_50[0] = uVar2;
  local_50[0][1] = 0;
  local_64 = 0;
  local_50[0][1] = uVar1;
  local_44 = &LAB_0051c24a_1;
  local_38 = 0;
  local_48 = (code *)0x51c3c1;
  std::function<void(gpg::QuestManager::AcceptResponse_const&)>::function
            (afStack_30,(function *)local_50);
  std::function<void(std::function<void()>)>::function(param_1,afStack_40);
  std::function<void(gpg::QuestManager::AcceptResponse_const&)>::function
            ((function<void(gpg::QuestManager::AcceptResponse_const&)> *)(param_1 + 0x10),
             (function *)afStack_30);
  FUN_0051c0f4(afStack_40);
  std::_Function_base::~_Function_base((_Function_base *)local_50);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_64);
  std::_Function_base::~_Function_base(a_Stack_60);
  return param_1;
}

// ---- FUN_0051c890  @ 0x51c890
function<void(std::function<void()>)> *
FUN_0051c890(function<void(std::function<void()>)> *param_1,undefined4 *param_2)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 local_64;
  _Function_base a_Stack_60 [8];
  undefined4 local_58;
  undefined4 *local_50 [2];
  code *local_48;
  undefined1 *local_44;
  function afStack_40 [8];
  undefined4 local_38;
  function<void(gpg::QuestManager::QuestUIResponse_const&)> afStack_30 [20];
  
  uVar2 = *param_2;
  local_58 = 0;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_64,(__shared_count *)(param_2 + 1)
            );
  local_48 = (code *)0x0;
  local_50[0] = operator_new(8);
  uVar1 = local_64;
  *local_50[0] = uVar2;
  local_50[0][1] = 0;
  local_64 = 0;
  local_50[0][1] = uVar1;
  local_44 = &LAB_0051c2e2_1;
  local_38 = 0;
  local_48 = (code *)0x51c37b;
  std::function<void(gpg::QuestManager::QuestUIResponse_const&)>::function
            (afStack_30,(function *)local_50);
  std::function<void(std::function<void()>)>::function(param_1,afStack_40);
  std::function<void(gpg::QuestManager::QuestUIResponse_const&)>::function
            ((function<void(gpg::QuestManager::QuestUIResponse_const&)> *)(param_1 + 0x10),
             (function *)afStack_30);
  FUN_0051c190(afStack_40);
  std::_Function_base::~_Function_base((_Function_base *)local_50);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_64);
  std::_Function_base::~_Function_base(a_Stack_60);
  return param_1;
}

// ---- FUN_0051c938  @ 0x51c938
function<void(std::function<void()>)> *
FUN_0051c938(function<void(std::function<void()>)> *param_1,undefined4 *param_2)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 local_64;
  _Function_base a_Stack_60 [8];
  undefined4 local_58;
  undefined4 *local_50 [2];
  code *local_48;
  undefined4 local_44;
  function afStack_40 [8];
  undefined4 local_38;
  function<void(gpg::QuestManager::FetchListResponse_const&)> afStack_30 [8];
  undefined4 local_28;
  
  uVar2 = *param_2;
  local_58 = 0;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_64,(__shared_count *)(param_2 + 1)
            );
  local_48 = (code *)0x0;
  local_50[0] = operator_new(8);
  uVar1 = local_64;
  *local_50[0] = uVar2;
  local_50[0][1] = 0;
  local_64 = 0;
  local_50[0][1] = uVar1;
  local_44 = 0x51dc29;
  local_38 = 0;
  local_48 = (code *)0x51c407;
  local_28 = 0;
  std::function<void(gpg::QuestManager::FetchListResponse_const&)>::swap
            ((function<void(gpg::QuestManager::FetchListResponse_const&)> *)local_50,
             (function *)afStack_30);
  std::function<void(std::function<void()>)>::function(param_1,afStack_40);
  *(undefined4 *)(param_1 + 0x18) = 0;
  std::function<void(gpg::QuestManager::FetchListResponse_const&)>::swap
            (afStack_30,(function *)(param_1 + 0x10));
  FUN_0051c0ba(afStack_40);
  std::_Function_base::~_Function_base((_Function_base *)local_50);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_64);
  std::_Function_base::~_Function_base(a_Stack_60);
  return param_1;
}

// ---- FUN_0051c9e8  @ 0x51c9e8
function<void(std::function<void()>)> *
FUN_0051c9e8(function<void(std::function<void()>)> *param_1,undefined4 *param_2)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 local_64;
  _Function_base a_Stack_60 [8];
  undefined4 local_58;
  undefined4 *local_50 [2];
  code *local_48;
  undefined1 *local_44;
  function afStack_40 [8];
  undefined4 local_38;
  function<void(gpg::QuestManager::FetchResponse_const&)> afStack_30 [20];
  
  uVar2 = *param_2;
  local_58 = 0;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_64,(__shared_count *)(param_2 + 1)
            );
  local_48 = (code *)0x0;
  local_50[0] = operator_new(8);
  uVar1 = local_64;
  *local_50[0] = uVar2;
  local_50[0][1] = 0;
  local_64 = 0;
  local_50[0][1] = uVar1;
  local_44 = &LAB_0051c204_1;
  local_38 = 0;
  local_48 = (code *)0x51c335;
  std::function<void(gpg::QuestManager::FetchResponse_const&)>::function
            (afStack_30,(function *)local_50);
  std::function<void(std::function<void()>)>::function(param_1,afStack_40);
  std::function<void(gpg::QuestManager::FetchResponse_const&)>::function
            ((function<void(gpg::QuestManager::FetchResponse_const&)> *)(param_1 + 0x10),
             (function *)afStack_30);
  FUN_0051c092(afStack_40);
  std::_Function_base::~_Function_base((_Function_base *)local_50);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_64);
  std::_Function_base::~_Function_base(a_Stack_60);
  return param_1;
}

// ---- FUN_0051ca90  @ 0x51ca90
function<void(std::function<void()>)> *
FUN_0051ca90(function<void(std::function<void()>)> *param_1,undefined4 *param_2)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 local_64;
  _Function_base a_Stack_60 [8];
  undefined4 local_58;
  undefined4 *local_50 [2];
  code *local_48;
  undefined1 *local_44;
  function afStack_40 [8];
  undefined4 local_38;
  function<void(gpg::QuestManager::ClaimMilestoneResponse_const&)> afStack_30 [20];
  
  uVar2 = *param_2;
  local_58 = 0;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_64,(__shared_count *)(param_2 + 1)
            );
  local_48 = (code *)0x0;
  local_50[0] = operator_new(8);
  uVar1 = local_64;
  *local_50[0] = uVar2;
  local_50[0][1] = 0;
  local_64 = 0;
  local_50[0][1] = uVar1;
  local_44 = &LAB_0051c290_1;
  local_38 = 0;
  local_48 = (code *)0x51c44d;
  std::function<void(gpg::QuestManager::ClaimMilestoneResponse_const&)>::function
            (afStack_30,(function *)local_50);
  std::function<void(std::function<void()>)>::function(param_1,afStack_40);
  std::function<void(gpg::QuestManager::ClaimMilestoneResponse_const&)>::function
            ((function<void(gpg::QuestManager::ClaimMilestoneResponse_const&)> *)(param_1 + 0x10),
             (function *)afStack_30);
  FUN_0051c11c(afStack_40);
  std::_Function_base::~_Function_base((_Function_base *)local_50);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_64);
  std::_Function_base::~_Function_base(a_Stack_60);
  return param_1;
}

// ---- FUN_0051cb38  @ 0x51cb38
function<void(std::function<void()>)> *
FUN_0051cb38(function<void(std::function<void()>)> *param_1,function *param_2,_Any_data *param_3)

{
  undefined4 uVar1;
  undefined4 uVar2;
  _Function_base a_Stack_48 [8];
  undefined4 local_40;
  undefined4 local_3c;
  function<void(std::function<void()>)> afStack_38 [8];
  undefined4 local_30;
  function<void(gpg::QuestManager::QuestUIResponse_const&)> afStack_28 [16];
  
  if (*(int *)(param_3 + 8) == 0) {
    local_40 = 0;
    local_30 = 0;
  }
  else {
    local_40 = 0;
    std::swap<std::_Any_data>(param_3,(_Any_data *)a_Stack_48);
    uVar1 = *(undefined4 *)(param_3 + 8);
    *(undefined4 *)(param_3 + 8) = local_40;
    uVar2 = *(undefined4 *)(param_3 + 0xc);
    *(undefined4 *)(param_3 + 0xc) = local_3c;
    local_40 = uVar1;
    local_3c = uVar2;
    std::function<void(std::function<void()>)>::function(afStack_38,param_2);
  }
  std::function<void(gpg::QuestManager::QuestUIResponse_const&)>::function
            (afStack_28,(function *)a_Stack_48);
  std::function<void(std::function<void()>)>::function(param_1,(function *)afStack_38);
  std::function<void(gpg::QuestManager::QuestUIResponse_const&)>::function
            ((function<void(gpg::QuestManager::QuestUIResponse_const&)> *)(param_1 + 0x10),
             (function *)afStack_28);
  FUN_0051c190(afStack_38);
  std::_Function_base::~_Function_base(a_Stack_48);
  return param_1;
}

// ---- FUN_0051cbc4  @ 0x51cbc4
void FUN_0051cbc4(function<void(std::function<void()>)> *param_1,FetchResponse *param_2)

{
  function<void(gpg::QuestManager::FetchResponse_const&)> *this;
  function<void(gpg::QuestManager::FetchResponse_const&)> *local_44 [2];
  code *local_3c;
  code *local_38;
  function<void(gpg::QuestManager::FetchResponse_const&)> afStack_34 [16];
  undefined4 local_24;
  Quest aQStack_20 [12];
  
  if (*(int *)(param_1 + 0x18) != 0) {
    if (*(int *)(param_1 + 8) == 0) {
      std::function<void(gpg::QuestManager::FetchResponse_const&)>::operator()
                ((function<void(gpg::QuestManager::FetchResponse_const&)> *)(param_1 + 0x10),param_2
                );
    }
    else {
      std::function<void(gpg::QuestManager::FetchResponse_const&)>::function
                (afStack_34,(function *)(param_1 + 0x10));
      local_24 = *(undefined4 *)param_2;
      gpg::Quest::Quest(aQStack_20,(Quest *)(param_2 + 4));
      local_3c = (code *)0x0;
      this = operator_new(0x1c);
      std::function<void(gpg::QuestManager::FetchResponse_const&)>::function
                (this,(function *)afStack_34);
      gpg::QuestManager::FetchResponse::FetchResponse
                ((FetchResponse *)(this + 0x10),(FetchResponse *)&local_24);
      local_38 = (code *)0x51ce03;
      local_3c = (code *)0x51c4bd;
      local_44[0] = this;
      std::function<void(std::function<void()>)>::operator()(param_1,(_Function_base *)local_44);
      std::_Function_base::~_Function_base((_Function_base *)local_44);
      gpg::Quest::~Quest(aQStack_20);
      std::_Function_base::~_Function_base((_Function_base *)afStack_34);
    }
  }
  return;
}

// ---- FUN_0051ce38  @ 0x51ce38
void FUN_0051ce38(function<void(std::function<void()>)> *param_1,AcceptResponse *param_2)

{
  function<void(gpg::QuestManager::AcceptResponse_const&)> *this;
  function<void(gpg::QuestManager::AcceptResponse_const&)> *local_44 [2];
  code *local_3c;
  code *local_38;
  function<void(gpg::QuestManager::AcceptResponse_const&)> afStack_34 [16];
  undefined4 local_24;
  Quest aQStack_20 [12];
  
  if (*(int *)(param_1 + 0x18) != 0) {
    if (*(int *)(param_1 + 8) == 0) {
      std::function<void(gpg::QuestManager::AcceptResponse_const&)>::operator()
                ((function<void(gpg::QuestManager::AcceptResponse_const&)> *)(param_1 + 0x10),
                 param_2);
    }
    else {
      std::function<void(gpg::QuestManager::AcceptResponse_const&)>::function
                (afStack_34,(function *)(param_1 + 0x10));
      local_24 = *(undefined4 *)param_2;
      gpg::Quest::Quest(aQStack_20,(Quest *)(param_2 + 4));
      local_3c = (code *)0x0;
      this = operator_new(0x1c);
      std::function<void(gpg::QuestManager::AcceptResponse_const&)>::function
                (this,(function *)afStack_34);
      gpg::QuestManager::AcceptResponse::AcceptResponse
                ((AcceptResponse *)(this + 0x10),(AcceptResponse *)&local_24);
      local_38 = (code *)0x51d075;
      local_3c = (code *)0x51c59d;
      local_44[0] = this;
      std::function<void(std::function<void()>)>::operator()(param_1,(_Function_base *)local_44);
      std::_Function_base::~_Function_base((_Function_base *)local_44);
      gpg::Quest::~Quest(aQStack_20);
      std::_Function_base::~_Function_base((_Function_base *)afStack_34);
    }
  }
  return;
}

// ---- FUN_0051d124  @ 0x51d124
void FUN_0051d124(function<void(std::function<void()>)> *param_1,ClaimMilestoneResponse *param_2)

{
  function<void(gpg::QuestManager::ClaimMilestoneResponse_const&)> *this;
  function<void(gpg::QuestManager::ClaimMilestoneResponse_const&)> *local_4c [2];
  code *local_44;
  code *local_40;
  function<void(gpg::QuestManager::ClaimMilestoneResponse_const&)> afStack_3c [16];
  ClaimMilestoneResponse aCStack_2c [24];
  
  if (*(int *)(param_1 + 0x18) != 0) {
    if (*(int *)(param_1 + 8) == 0) {
      std::function<void(gpg::QuestManager::ClaimMilestoneResponse_const&)>::operator()
                ((function<void(gpg::QuestManager::ClaimMilestoneResponse_const&)> *)
                 (param_1 + 0x10),param_2);
    }
    else {
      std::function<void(gpg::QuestManager::ClaimMilestoneResponse_const&)>::function
                (afStack_3c,(function *)(param_1 + 0x10));
      gpg::QuestManager::ClaimMilestoneResponse::ClaimMilestoneResponse(aCStack_2c,param_2);
      local_44 = (code *)0x0;
      this = operator_new(0x24);
      std::function<void(gpg::QuestManager::ClaimMilestoneResponse_const&)>::function
                (this,(function *)afStack_3c);
      gpg::QuestManager::ClaimMilestoneResponse::ClaimMilestoneResponse
                ((ClaimMilestoneResponse *)(this + 0x10),aCStack_2c);
      local_40 = (code *)0x51d369;
      local_44 = (code *)0x51d0af;
      local_4c[0] = this;
      std::function<void(std::function<void()>)>::operator()(param_1,(_Function_base *)local_4c);
      std::_Function_base::~_Function_base((_Function_base *)local_4c);
      gpg::QuestManager::ClaimMilestoneResponse::~ClaimMilestoneResponse(aCStack_2c);
      std::_Function_base::~_Function_base((_Function_base *)afStack_3c);
    }
  }
  return;
}

// ---- FUN_0051d418  @ 0x51d418
void FUN_0051d418(function<void(std::function<void()>)> *param_1,QuestUIResponse *param_2)

{
  function<void(gpg::QuestManager::QuestUIResponse_const&)> *this;
  function<void(gpg::QuestManager::QuestUIResponse_const&)> *local_4c [2];
  code *local_44;
  code *local_40;
  function<void(gpg::QuestManager::QuestUIResponse_const&)> afStack_3c [16];
  QuestUIResponse aQStack_2c [24];
  
  if (*(int *)(param_1 + 0x18) != 0) {
    if (*(int *)(param_1 + 8) == 0) {
      std::function<void(gpg::QuestManager::QuestUIResponse_const&)>::operator()
                ((function<void(gpg::QuestManager::QuestUIResponse_const&)> *)(param_1 + 0x10),
                 param_2);
    }
    else {
      std::function<void(gpg::QuestManager::QuestUIResponse_const&)>::function
                (afStack_3c,(function *)(param_1 + 0x10));
      gpg::QuestManager::QuestUIResponse::QuestUIResponse(aQStack_2c,param_2);
      local_44 = (code *)0x0;
      this = operator_new(0x24);
      std::function<void(gpg::QuestManager::QuestUIResponse_const&)>::function
                (this,(function *)afStack_3c);
      gpg::QuestManager::QuestUIResponse::QuestUIResponse
                ((QuestUIResponse *)(this + 0x10),aQStack_2c);
      local_40 = (code *)0x51d6c5;
      local_44 = (code *)0x51d3a3;
      local_4c[0] = this;
      std::function<void(std::function<void()>)>::operator()(param_1,(_Function_base *)local_4c);
      std::_Function_base::~_Function_base((_Function_base *)local_4c);
      gpg::QuestManager::QuestUIResponse::~QuestUIResponse(aQStack_2c);
      std::_Function_base::~_Function_base((_Function_base *)afStack_3c);
    }
  }
  return;
}

// ---- FUN_0051d6fa  @ 0x51d6fa
void FUN_0051d6fa(int param_1)

{
  void *pvVar1;
  
  pvVar1 = *(void **)(param_1 + 0xc);
  std::vector<gpg::Quest,std::allocator<gpg::Quest>>::~vector
            ((vector<gpg::Quest,std::allocator<gpg::Quest>> *)((int)pvVar1 + 0x10));
  FUN_007be0b4((int)pvVar1 + 4);
  operator_delete(pvVar1);
  return;
}

// ---- FUN_0051d716  @ 0x51d716
Quest * FUN_0051d716(Quest *param_1,Quest *param_2,Quest *param_3)

{
  for (; param_1 != param_2; param_1 = param_1 + 8) {
    if (param_3 != (Quest *)0x0) {
      gpg::Quest::Quest(param_3,param_1);
    }
    param_3 = param_3 + 8;
  }
  return param_3;
}

// ---- FUN_0051d808  @ 0x51d808
void FUN_0051d808(function<void(std::function<void()>)> *param_1,FetchListResponse *param_2)

{
  function *pfVar1;
  function *local_48 [2];
  code *local_40;
  code *local_3c;
  function<void(gpg::QuestManager::FetchListResponse_const&)> afStack_38 [16];
  FetchListResponse aFStack_28 [4];
  vector<gpg::Quest,std::allocator<gpg::Quest>> avStack_24 [12];
  
  if (*(int *)(param_1 + 0x18) != 0) {
    if (*(int *)(param_1 + 8) == 0) {
      std::function<void(gpg::QuestManager::FetchListResponse_const&)>::operator()
                ((function<void(gpg::QuestManager::FetchListResponse_const&)> *)(param_1 + 0x10),
                 param_2);
    }
    else {
      std::function<void(gpg::QuestManager::FetchListResponse_const&)>::function
                (afStack_38,(function *)(param_1 + 0x10));
      gpg::QuestManager::FetchListResponse::FetchListResponse(aFStack_28,param_2);
      local_40 = (code *)0x0;
      pfVar1 = operator_new(0x20);
      *(undefined4 *)(pfVar1 + 8) = 0;
      std::function<void(gpg::QuestManager::FetchListResponse_const&)>::swap(afStack_38,pfVar1);
      gpg::QuestManager::FetchListResponse::FetchListResponse
                ((FetchListResponse *)(pfVar1 + 0x10),aFStack_28);
      local_3c = (code *)0x51ce1d;
      local_40 = (code *)0x51d7a5;
      local_48[0] = pfVar1;
      std::function<void(std::function<void()>)>::operator()(param_1,local_48);
      std::_Function_base::~_Function_base((_Function_base *)local_48);
      std::vector<gpg::Quest,std::allocator<gpg::Quest>>::~vector(avStack_24);
      std::_Function_base::~_Function_base((_Function_base *)afStack_38);
    }
  }
  return;
}

// ---- FUN_0051dc28  @ 0x51dc28
void FUN_0051dc28(undefined4 *param_1,undefined4 *param_2)

{
  int iVar1;
  int *piVar2;
  mutex *local_14;
  
  piVar2 = (int *)*param_1;
  local_14 = (mutex *)*piVar2;
  std::mutex::lock(local_14);
  iVar1 = *piVar2;
  *(undefined4 *)(iVar1 + 0xc) = *param_2;
  std::vector<gpg::Quest,std::allocator<gpg::Quest>>::operator=
            ((vector<gpg::Quest,std::allocator<gpg::Quest>> *)(iVar1 + 0x10),(vector *)(param_2 + 1)
            );
  *(undefined1 *)(*piVar2 + 8) = 1;
  FUN_007be0e0(*piVar2 + 4);
  std::lock_guard<std::mutex>::~lock_guard((lock_guard<std::mutex> *)&local_14);
  return;
}

// ---- FUN_0051dc70  @ 0x51dc70
undefined4 * FUN_0051dc70(undefined4 *param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  undefined4 local_1c;
  undefined4 uStack_18;
  
  *param_1 = 0;
  param_1[1] = 0;
  local_1c = param_2;
  uStack_18 = param_3;
  puVar1 = operator_new(0x18);
  *param_1 = puVar1;
  if (puVar1 != (undefined4 *)0x0) {
    *puVar1 = 0;
    *puVar1 = 0;
    puVar1[1] = 0;
    FUN_007be0ac(puVar1 + 1);
    *(undefined1 *)(puVar1 + 2) = 0;
    puVar1[3] = 0;
    puVar1[4] = 0;
    puVar1[5] = 0;
    gpg::Quest::Quest((Quest *)(puVar1 + 4));
  }
  uVar2 = *param_1;
  local_1c = 0;
  puVar1 = operator_new(0x14);
  if (puVar1 != (undefined4 *)0x0) {
    puVar1[1] = 1;
    puVar1[2] = 1;
    puVar1[3] = uVar2;
    *puVar1 = &PTR_LAB_0051bf50_1_00924990;
  }
  local_1c = param_1[1];
  param_1[1] = puVar1;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_1c);
  return param_1;
}

// ---- FUN_0051dd30  @ 0x51dd30
undefined4 * FUN_0051dd30(undefined4 *param_1,undefined4 param_2)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  undefined4 local_14;
  
  *param_1 = 0;
  param_1[1] = 0;
  local_14 = param_2;
  puVar1 = operator_new(0x1c);
  *param_1 = puVar1;
  if (puVar1 != (undefined4 *)0x0) {
    *puVar1 = 0;
    *puVar1 = 0;
    puVar1[1] = 0;
    FUN_007be0ac(puVar1 + 1);
    *(undefined1 *)(puVar1 + 2) = 0;
    memset(puVar1 + 3,0,0x10);
  }
  uVar2 = *param_1;
  local_14 = 0;
  puVar1 = operator_new(0x14);
  if (puVar1 != (undefined4 *)0x0) {
    puVar1[1] = 1;
    puVar1[2] = 1;
    puVar1[3] = uVar2;
    *puVar1 = &PTR_LAB_0051bf3c_1_009249b0;
  }
  local_14 = param_1[1];
  param_1[1] = puVar1;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_14);
  return param_1;
}

// ---- FUN_0051ddc8  @ 0x51ddc8
undefined4 * FUN_0051ddc8(undefined4 *param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  undefined4 local_1c;
  undefined4 uStack_18;
  
  *param_1 = 0;
  param_1[1] = 0;
  local_1c = param_2;
  uStack_18 = param_3;
  puVar1 = operator_new(0x18);
  *param_1 = puVar1;
  if (puVar1 != (undefined4 *)0x0) {
    *puVar1 = 0;
    *puVar1 = 0;
    puVar1[1] = 0;
    FUN_007be0ac(puVar1 + 1);
    *(undefined1 *)(puVar1 + 2) = 0;
    puVar1[3] = 0;
    puVar1[4] = 0;
    puVar1[5] = 0;
    gpg::Quest::Quest((Quest *)(puVar1 + 4));
  }
  uVar2 = *param_1;
  local_1c = 0;
  puVar1 = operator_new(0x14);
  if (puVar1 != (undefined4 *)0x0) {
    puVar1[1] = 1;
    puVar1[2] = 1;
    puVar1[3] = uVar2;
    *puVar1 = &PTR_LAB_0051bf28_1_009249d0;
  }
  local_1c = param_1[1];
  param_1[1] = puVar1;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_1c);
  return param_1;
}

// ---- FUN_0051de88  @ 0x51de88
undefined4 * FUN_0051de88(undefined4 *param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  undefined4 local_1c;
  undefined4 uStack_18;
  
  *param_1 = 0;
  param_1[1] = 0;
  local_1c = param_2;
  uStack_18 = param_3;
  puVar1 = operator_new(0x20);
  *param_1 = puVar1;
  if (puVar1 != (undefined4 *)0x0) {
    *puVar1 = 0;
    *puVar1 = 0;
    puVar1[1] = 0;
    FUN_007be0ac(puVar1 + 1);
    *(undefined1 *)(puVar1 + 2) = 0;
    memset((ClaimMilestoneResponse *)(puVar1 + 3),0,0x14);
    gpg::QuestManager::ClaimMilestoneResponse::ClaimMilestoneResponse
              ((ClaimMilestoneResponse *)(puVar1 + 3));
  }
  uVar2 = *param_1;
  local_1c = 0;
  puVar1 = operator_new(0x14);
  if (puVar1 != (undefined4 *)0x0) {
    puVar1[1] = 1;
    puVar1[2] = 1;
    puVar1[3] = uVar2;
    *puVar1 = &PTR_LAB_0051bf14_1_009249f0;
  }
  local_1c = param_1[1];
  param_1[1] = puVar1;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_1c);
  return param_1;
}

// ---- FUN_0051df4c  @ 0x51df4c
undefined4 * FUN_0051df4c(undefined4 *param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  undefined4 local_1c;
  undefined4 uStack_18;
  
  *param_1 = 0;
  param_1[1] = 0;
  local_1c = param_2;
  uStack_18 = param_3;
  puVar1 = operator_new(0x20);
  *param_1 = puVar1;
  if (puVar1 != (undefined4 *)0x0) {
    *puVar1 = 0;
    *puVar1 = 0;
    puVar1[1] = 0;
    FUN_007be0ac(puVar1 + 1);
    *(undefined1 *)(puVar1 + 2) = 0;
    memset((QuestUIResponse *)(puVar1 + 3),0,0x14);
    gpg::QuestManager::QuestUIResponse::QuestUIResponse((QuestUIResponse *)(puVar1 + 3));
  }
  uVar2 = *param_1;
  local_1c = 0;
  puVar1 = operator_new(0x14);
  if (puVar1 != (undefined4 *)0x0) {
    puVar1[1] = 1;
    puVar1[2] = 1;
    puVar1[3] = uVar2;
    *puVar1 = &PTR_LAB_0051bf00_1_00924a10;
  }
  local_1c = param_1[1];
  param_1[1] = puVar1;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_1c);
  return param_1;
}

// ---- FUN_0051e2b8  @ 0x51e2b8
FetchListResponse * FUN_0051e2b8(FetchListResponse *param_1,int *param_2,uint param_3,int param_4)

{
  longlong lVar1;
  int iVar2;
  int iVar3;
  FetchListResponse *pFVar4;
  undefined4 local_60;
  int iStack_5c;
  mutex *local_58;
  undefined1 local_54;
  undefined4 local_50;
  undefined4 local_4c;
  undefined4 local_48;
  undefined4 local_44;
  undefined4 local_40;
  undefined4 local_3c;
  undefined4 local_38;
  undefined4 local_34;
  undefined4 local_30;
  int aiStack_2c [3];
  
  local_4c = 0;
  local_48 = 0;
  local_44 = 0;
  local_3c = 0;
  local_38 = 0;
  local_34 = 0;
  local_50 = 0xfffffffe;
  local_40 = 0xfffffffb;
  iVar2 = FUN_00553a80();
  if (iVar2 != 0) {
    FUN_005166ae(4,"Blocking calls are not allowed from the UI thread.");
    gpg::QuestManager::FetchListResponse::FetchListResponse
              ((FetchListResponse *)&local_30,(FetchListResponse *)&local_50);
    goto LAB_0051e38e;
  }
  local_58 = (mutex *)*param_2;
  local_54 = 0;
  if (local_58 == (mutex *)0x0) {
                    /* WARNING: Subroutine does not return */
    FUN_007c4c60(1);
  }
  std::mutex::lock(local_58);
  local_54 = 1;
  iVar2 = *param_2;
  if (*(char *)(iVar2 + 8) == '\0') {
    FUN_007bfd24(&local_60);
    lVar1 = (ulonglong)param_3 * 1000000 + CONCAT44(param_4 * 1000000,local_60);
    local_30 = (undefined4)lVar1;
    aiStack_2c[0] = iStack_5c + (int)((ulonglong)lVar1 >> 0x20);
    do {
      if (*(char *)(*param_2 + 8) != '\0') goto LAB_0051e378;
      iVar3 = std::condition_variable::
              __wait_until_impl<std::chrono::duration<long_long,std::ratio<1ll,1000000000ll>>>
                        ((unique_lock *)(iVar2 + 4),(time_point *)&local_58);
    } while (iVar3 != 1);
    if (*(char *)(*param_2 + 8) != '\0') goto LAB_0051e378;
    pFVar4 = (FetchListResponse *)&local_40;
  }
  else {
LAB_0051e378:
    pFVar4 = (FetchListResponse *)(*param_2 + 0xc);
  }
  gpg::QuestManager::FetchListResponse::FetchListResponse((FetchListResponse *)&local_30,pFVar4);
  std::unique_lock<std::mutex>::~unique_lock((unique_lock<std::mutex> *)&local_58);
LAB_0051e38e:
  gpg::QuestManager::FetchListResponse::FetchListResponse(param_1,(FetchListResponse *)&local_30);
  std::vector<gpg::Quest,std::allocator<gpg::Quest>>::~vector
            ((vector<gpg::Quest,std::allocator<gpg::Quest>> *)aiStack_2c);
  std::vector<gpg::Quest,std::allocator<gpg::Quest>>::~vector
            ((vector<gpg::Quest,std::allocator<gpg::Quest>> *)&local_3c);
  std::vector<gpg::Quest,std::allocator<gpg::Quest>>::~vector
            ((vector<gpg::Quest,std::allocator<gpg::Quest>> *)&local_4c);
  return param_1;
}

// ---- FUN_0051eb60  @ 0x51eb60
QuestUIResponse * FUN_0051eb60(QuestUIResponse *param_1,int *param_2,uint param_3,int param_4)

{
  int iVar1;
  int iVar2;
  QuestUIResponse *pQVar3;
  uint uVar4;
  uint local_80;
  int iStack_7c;
  int local_78;
  int iStack_74;
  mutex *local_6c;
  undefined1 local_68;
  undefined4 local_64 [5];
  undefined4 local_50 [5];
  QuestUIResponse aQStack_3c [24];
  
  gpg::QuestManager::QuestUIResponse::QuestUIResponse((QuestUIResponse *)local_64);
  gpg::QuestManager::QuestUIResponse::QuestUIResponse((QuestUIResponse *)local_50);
  local_64[0] = 0xfffffffe;
  local_50[0] = 0xfffffffb;
  iVar1 = FUN_00553a80();
  if (iVar1 != 0) {
    FUN_005166ae(4,"Blocking calls are not allowed from the UI thread.");
    gpg::QuestManager::QuestUIResponse::QuestUIResponse(aQStack_3c,(QuestUIResponse *)local_64);
    goto LAB_0051ec1a;
  }
  local_6c = (mutex *)*param_2;
  local_68 = 0;
  if (local_6c == (mutex *)0x0) {
                    /* WARNING: Subroutine does not return */
    FUN_007c4c60(1);
  }
  std::mutex::lock(local_6c);
  local_68 = 1;
  iVar1 = *param_2;
  if (*(char *)(iVar1 + 8) == '\0') {
    FUN_007bfd24(&local_80);
    uVar4 = (uint)((ulonglong)param_3 * 1000000);
    local_78 = uVar4 + local_80;
    iStack_74 = param_4 * 1000000 + (int)((ulonglong)param_3 * 1000000 >> 0x20) +
                iStack_7c + (uint)CARRY4(uVar4,local_80);
    do {
      if (*(char *)(*param_2 + 8) != '\0') goto LAB_0051ec0a;
      iVar2 = std::condition_variable::
              __wait_until_impl<std::chrono::duration<long_long,std::ratio<1ll,1000000000ll>>>
                        ((unique_lock *)(iVar1 + 4),(time_point *)&local_6c);
    } while (iVar2 != 1);
    pQVar3 = (QuestUIResponse *)local_50;
    if (*(char *)(*param_2 + 8) != '\0') goto LAB_0051ec0a;
  }
  else {
LAB_0051ec0a:
    pQVar3 = (QuestUIResponse *)(*param_2 + 0xc);
  }
  gpg::QuestManager::QuestUIResponse::QuestUIResponse(aQStack_3c,pQVar3);
  std::unique_lock<std::mutex>::~unique_lock((unique_lock<std::mutex> *)&local_6c);
LAB_0051ec1a:
  gpg::QuestManager::QuestUIResponse::QuestUIResponse(param_1,aQStack_3c);
  gpg::QuestManager::QuestUIResponse::~QuestUIResponse(aQStack_3c);
  gpg::QuestManager::QuestUIResponse::~QuestUIResponse((QuestUIResponse *)local_50);
  gpg::QuestManager::QuestUIResponse::~QuestUIResponse((QuestUIResponse *)local_64);
  return param_1;
}

// ---- FUN_0051ef28  @ 0x51ef28
undefined4 FUN_0051ef28(int param_1)

{
  return *(undefined4 *)(*(int *)(param_1 + 0x18) + *(int *)(param_1 + 0x28) * 4);
}

// ---- FUN_0051f1a8  @ 0x51f1a8
undefined4 * FUN_0051f1a8(undefined4 *param_1)

{
  *param_1 = &PTR___Sp_counted_base_1_009242b8;
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0051f1fc  @ 0x51f1fc
_Function_base * FUN_0051f1fc(_Function_base *param_1)

{
  std::_Function_base::~_Function_base(param_1 + 0x50);
  std::_Function_base::~_Function_base(param_1 + 0x40);
  std::_Function_base::~_Function_base(param_1 + 0x30);
  std::_Function_base::~_Function_base(param_1 + 0x20);
  std::_Function_base::~_Function_base(param_1 + 0x10);
  std::_Function_base::~_Function_base(param_1);
  return param_1;
}

// ---- FUN_0051f230  @ 0x51f230
void FUN_0051f230(int param_1)

{
  void *pvVar1;
  
  pvVar1 = *(void **)(param_1 + 0xc);
  FUN_0051f1fc(pvVar1);
  operator_delete(pvVar1);
  return;
}

// ---- FUN_0051f374  @ 0x51f374
undefined4 * FUN_0051f374(undefined4 *param_1,undefined4 param_2,undefined4 param_3)

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
  pvVar1 = operator_new(0x60);
  *param_1 = pvVar1;
  if (pvVar1 != (void *)0x0) {
    *(undefined4 *)((int)pvVar1 + 8) = 0;
    *(undefined4 *)((int)pvVar1 + 0x18) = 0;
    *(undefined4 *)((int)pvVar1 + 0x28) = 0;
    *(undefined4 *)((int)pvVar1 + 0x38) = 0;
    *(undefined4 *)((int)pvVar1 + 0x48) = 0;
    *(undefined4 *)((int)pvVar1 + 0x58) = 0;
  }
  uVar3 = *param_1;
  local_14 = 0;
  puVar2 = operator_new(0x14);
  if (puVar2 != (undefined4 *)0x0) {
    puVar2[1] = 1;
    puVar2[2] = 1;
    puVar2[3] = uVar3;
    *puVar2 = &PTR_LAB_0051f194_1_00924a30;
  }
  local_14 = param_1[1];
  param_1[1] = puVar2;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_14);
  return param_1;
}

// ---- FUN_0051f408  @ 0x51f408
void FUN_0051f408(undefined4 *param_1)

{
  (**(code **)(**(int **)*param_1 + 8))();
  return;
}

// ---- FUN_0051f416  @ 0x51f416
void FUN_0051f416(undefined4 *param_1)

{
  (**(code **)(**(int **)*param_1 + 0xc))();
  return;
}

// ---- FUN_0051f424  @ 0x51f424
void FUN_0051f424(undefined4 *param_1)

{
  (**(code **)(**(int **)*param_1 + 0x10))();
  return;
}

// ---- FUN_0051f4dc  @ 0x51f4dc
undefined4 * FUN_0051f4dc(undefined4 *param_1)

{
  *param_1 = &PTR___Sp_counted_base_1_009242b8;
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0051f754  @ 0x51f754
void FUN_0051f754(int param_1)

{
  void *pvVar1;
  
  pvVar1 = *(void **)(param_1 + 0xc);
  FUN_007be0b4((int)pvVar1 + 4);
  operator_delete(pvVar1);
  return;
}

// ---- FUN_0051f768  @ 0x51f768
void FUN_0051f768(int param_1)

{
  void *pvVar1;
  
  pvVar1 = *(void **)(param_1 + 0xc);
  FUN_007be0b4((int)pvVar1 + 4);
  operator_delete(pvVar1);
  return;
}

// ---- FUN_0051f77c  @ 0x51f77c
undefined4 * FUN_0051f77c(undefined4 *param_1,undefined4 param_2)

{
  undefined4 *puVar1;
  
  param_1[2] = 0;
  puVar1 = operator_new(4);
  *puVar1 = param_2;
  param_1[3] = 0x51f409;
  *param_1 = puVar1;
  param_1[2] = 0x51f62d;
  param_1[6] = 0;
  puVar1 = operator_new(4);
  *puVar1 = param_2;
  param_1[7] = 0x51f417;
  param_1[4] = puVar1;
  param_1[6] = 0x51f65d;
  param_1[10] = 0;
  puVar1 = operator_new(4);
  *puVar1 = param_2;
  param_1[0xb] = 0x51f425;
  param_1[8] = puVar1;
  param_1[10] = 0x51f68d;
  param_1[0xe] = 0;
  puVar1 = operator_new(4);
  *puVar1 = param_2;
  param_1[0xf] = &LAB_0051f432_1;
  param_1[0xc] = puVar1;
  param_1[0xe] = 0x51f6bd;
  param_1[0x12] = 0;
  puVar1 = operator_new(4);
  *puVar1 = param_2;
  param_1[0x13] = &LAB_0051f440_1;
  param_1[0x10] = puVar1;
  param_1[0x12] = 0x51f6ed;
  param_1[0x16] = 0;
  puVar1 = operator_new(4);
  *puVar1 = param_2;
  param_1[0x17] = &LAB_0052018a_1;
  param_1[0x14] = puVar1;
  param_1[0x16] = 0x51f71d;
  return param_1;
}

// ---- FUN_0051f8b6  @ 0x51f8b6
_Function_base * FUN_0051f8b6(_Function_base *param_1)

{
  std::_Function_base::~_Function_base(param_1 + 0x10);
  std::_Function_base::~_Function_base(param_1);
  return param_1;
}

// ---- FUN_0051f9a4  @ 0x51f9a4
_Function_base * FUN_0051f9a4(_Function_base *param_1)

{
  std::_Function_base::~_Function_base(param_1 + 0x10);
  std::_Function_base::~_Function_base(param_1);
  return param_1;
}

// ---- FUN_0051f9b8  @ 0x51f9b8
_Function_base * FUN_0051f9b8(_Function_base *param_1)

{
  std::_Function_base::~_Function_base(param_1 + 0x10);
  std::_Function_base::~_Function_base(param_1);
  return param_1;
}

// ---- FUN_0051f9cc  @ 0x51f9cc
_Function_base * FUN_0051f9cc(_Function_base *param_1)

{
  std::_Function_base::~_Function_base(param_1 + 0x10);
  std::_Function_base::~_Function_base(param_1);
  return param_1;
}

// ---- FUN_0051f9f4  @ 0x51f9f4
_Function_base * FUN_0051f9f4(_Function_base *param_1)

{
  std::_Function_base::~_Function_base(param_1 + 0x10);
  std::_Function_base::~_Function_base(param_1);
  return param_1;
}

// ---- FUN_0051fa36  @ 0x51fa36
_Function_base * FUN_0051fa36(_Function_base *param_1)

{
  std::_Function_base::~_Function_base(param_1 + 0x10);
  std::_Function_base::~_Function_base(param_1);
  return param_1;
}

// ---- FUN_0051fa5e  @ 0x51fa5e
_Function_base * FUN_0051fa5e(_Function_base *param_1)

{
  std::_Function_base::~_Function_base(param_1 + 0x10);
  std::_Function_base::~_Function_base(param_1);
  return param_1;
}

// ---- FUN_0051fa98  @ 0x51fa98
void FUN_0051fa98(int param_1)

{
  void *pvVar1;
  
  pvVar1 = *(void **)(param_1 + 0xc);
  gpg::MultiplayerInvitation::~MultiplayerInvitation((MultiplayerInvitation *)((int)pvVar1 + 0x10));
  FUN_007be0b4((int)pvVar1 + 4);
  operator_delete(pvVar1);
  return;
}

// ---- FUN_0051fc9e  @ 0x51fc9e
void FUN_0051fc9e(int param_1)

{
  void *pvVar1;
  
  pvVar1 = *(void **)(param_1 + 0xc);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)((int)pvVar1 + 0x14));
  FUN_007be0b4((int)pvVar1 + 4);
  operator_delete(pvVar1);
  return;
}

// ---- FUN_0051fcba  @ 0x51fcba
void FUN_0051fcba(int param_1)

{
  void *pvVar1;
  
  pvVar1 = *(void **)(param_1 + 0xc);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)((int)pvVar1 + 0x14));
  FUN_007be0b4((int)pvVar1 + 4);
  operator_delete(pvVar1);
  return;
}

// ---- FUN_0051fcd6  @ 0x51fcd6
void FUN_0051fcd6(undefined4 *param_1,undefined4 *param_2)

{
  int iVar1;
  int *piVar2;
  mutex *local_14;
  
  piVar2 = (int *)*param_1;
  local_14 = (mutex *)*piVar2;
  std::mutex::lock(local_14);
  iVar1 = *piVar2;
  *(undefined4 *)(iVar1 + 0xc) = *param_2;
  gpg::RealTimeRoom::operator=((RealTimeRoom *)(iVar1 + 0x10),(RealTimeRoom *)(param_2 + 1));
  *(undefined1 *)(*piVar2 + 8) = 1;
  FUN_007be0e0(*piVar2 + 4);
  std::lock_guard<std::mutex>::~lock_guard((lock_guard<std::mutex> *)&local_14);
  return;
}

// ---- FUN_0051fe32  @ 0x51fe32
function<void(std::function<void()>)> *
FUN_0051fe32(function<void(std::function<void()>)> *param_1,function *param_2)

{
  std::function<void(std::function<void()>)>::function(param_1,param_2);
  std::function<void(gpg::RealTimeMultiplayerManager::RealTimeRoomResponse_const&)>::function
            ((function<void(gpg::RealTimeMultiplayerManager::RealTimeRoomResponse_const&)> *)
             (param_1 + 0x10),param_2 + 0x10);
  return param_1;
}
