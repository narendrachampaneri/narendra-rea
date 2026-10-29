// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 93 functions

// ---- FUN_00502048  @ 0x502048
void FUN_00502048(int param_1,int param_2)

{
  if ((param_1 == 1) && (param_2 == 0xffff)) {
    RakNet::SystemAddress::SystemAddress((SystemAddress *)&DAT_00960998);
    RakNet::RakNetGUID::RakNetGUID((RakNetGUID *)&DAT_009609b0,0xffffffffffffffff);
  }
  return;
}

// ---- FUN_00502db0  @ 0x502db0
void FUN_00502db0(int param_1,int param_2)

{
  if ((param_1 == 1) && (param_2 == 0xffff)) {
    RakNet::SystemAddress::SystemAddress((SystemAddress *)&DAT_009609c0);
    RakNet::RakNetGUID::RakNetGUID((RakNetGUID *)&DAT_009609d8,0xffffffffffffffff);
  }
  return;
}

// ---- FUN_005043d0  @ 0x5043d0
void FUN_005043d0(int param_1,int param_2)

{
  if ((param_1 == 1) && (param_2 == 0xffff)) {
    RakNet::SystemAddress::SystemAddress((SystemAddress *)&DAT_009609e8);
    RakNet::RakNetGUID::RakNetGUID((RakNetGUID *)&DAT_00960a00,0xffffffffffffffff);
  }
  return;
}

// ---- FUN_00504680  @ 0x504680
void FUN_00504680(int param_1,int param_2)

{
  if ((param_1 == 1) && (param_2 == 0xffff)) {
    RakNet::SystemAddress::SystemAddress((SystemAddress *)&DAT_00960a10);
    RakNet::RakNetGUID::RakNetGUID((RakNetGUID *)&DAT_00960a28,0xffffffffffffffff);
  }
  return;
}

// ---- FUN_00504dc8  @ 0x504dc8
void FUN_00504dc8(int param_1,int param_2)

{
  if ((param_1 == 1) && (param_2 == 0xffff)) {
    RakNet::SystemAddress::SystemAddress((SystemAddress *)&DAT_00960a38);
    RakNet::RakNetGUID::RakNetGUID((RakNetGUID *)&DAT_00960a50,0xffffffffffffffff);
  }
  return;
}

// ---- FUN_0050540c  @ 0x50540c
void FUN_0050540c(int param_1,int param_2)

{
  if ((param_1 == 1) && (param_2 == 0xffff)) {
    RakNet::SystemAddress::SystemAddress((SystemAddress *)&DAT_00960a68);
    RakNet::RakNetGUID::RakNetGUID((RakNetGUID *)&DAT_00960a80,0xffffffffffffffff);
    DataStructures::List<_findinfo_t*>::List((List<_findinfo_t*> *)&DAT_00960a90);
    FUN_007985bc(&DAT_00960a90,0x505485,&DAT_00943000);
  }
  return;
}

// ---- FUN_00505b44  @ 0x505b44
void FUN_00505b44(char *param_1,char *param_2,size_t param_3)

{
  char cVar1;
  size_t sVar2;
  size_t sVar3;
  
  cVar1 = *param_2;
  if ((((cVar1 != 'h') || (param_2[1] != 't')) || (param_2[2] != 't')) ||
     (((param_2[3] != 'p' || (param_2[4] != ':')) || ((param_2[5] != '/' || (param_2[6] != '/'))))))
  {
    sVar2 = strlen(param_1);
    sVar3 = sVar2;
    if (cVar1 != '/') {
      sVar3 = sVar2 + 1;
      param_1[sVar2] = '/';
    }
    if ((int)param_3 < (int)sVar3) {
      return;
    }
    param_1 = param_1 + sVar3;
    param_3 = param_3 - sVar3;
  }
  strncpy(param_1,param_2,param_3);
  return;
}

// ---- FUN_00506824  @ 0x506824
void FUN_00506824(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 *param_4,
                 char *param_5,socklen_t param_6)

{
  int __fd;
  int iVar1;
  char *pcVar2;
  ssize_t sVar3;
  undefined4 uVar4;
  int iVar5;
  socklen_t local_830;
  sockaddr asStack_82c [128];
  int local_2c;
  
  local_2c = __stack_chk_guard;
  *param_4 = 0;
  __fd = connecthostport();
  if (__fd < 0) {
    uVar4 = 0;
  }
  else {
    if (param_5 != (char *)0x0) {
      local_830 = 0x10;
      iVar1 = getsockname(__fd,asStack_82c,&local_830);
      if (iVar1 < 0) {
        perror("getsockname");
      }
      else {
        iVar1 = getnameinfo(asStack_82c,local_830,param_5,param_6,(char *)0x0,0,10);
        if (iVar1 != 0) {
          pcVar2 = gai_strerror(iVar1);
          fprintf((FILE *)recv,"getnameinfo() failed : %s\n",pcVar2);
        }
      }
    }
    iVar1 = snprintf((char *)asStack_82c,0x800,
                     "GET %s HTTP/%s\r\nHost: %s:%d\r\nConnection: Close\r\nUser-Agent: OS/version, UPnP/1.0, MiniUPnPc/1.5\r\n\r\n"
                     ,param_3,&DAT_008006e5,param_1,param_2);
    for (iVar5 = 0; iVar5 < iVar1; iVar5 = iVar5 + sVar3) {
      sVar3 = send(__fd,asStack_82c[0].sa_data + iVar5 + -2,iVar1 - iVar5,0);
      if (sVar3 < 0) {
        perror("send");
        close(__fd);
        uVar4 = 0;
        goto LAB_00506904;
      }
    }
    uVar4 = getHTTPResponse(__fd,param_4);
  }
LAB_00506904:
  if (local_2c != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar4);
  }
  return;
}

// ---- FUN_00506ca2  @ 0x506ca2
void FUN_00506ca2(char *param_1)

{
  if (param_1 == (char *)0x0) {
    return;
  }
  strtoul(param_1,(char **)0x0,0);
  return;
}

// ---- FUN_00507c48  @ 0x507c48
void FUN_00507c48(int *param_1,void *param_2,size_t param_3)

{
  int *piVar1;
  int iVar2;
  
  piVar1 = malloc(0x88);
  if (0x3e < (int)param_3) {
    param_3 = 0x3f;
  }
  strncpy((char *)(piVar1 + 2),(char *)(param_1 + 1),0x40);
  *(undefined1 *)((int)piVar1 + 0x47) = 0;
  memcpy(piVar1 + 0x12,param_2,param_3);
  *(undefined1 *)((int)piVar1 + param_3 + 0x48) = 0;
  iVar2 = *param_1;
  *piVar1 = iVar2;
  if (iVar2 != 0) {
    *(int **)(iVar2 + 4) = piVar1;
  }
  *param_1 = (int)piVar1;
  piVar1[1] = (int)param_1;
  return;
}

// ---- FUN_00507c92  @ 0x507c92
void FUN_00507c92(int param_1,void *param_2,size_t param_3)

{
  if (0x3e < (int)param_3) {
    param_3 = 0x3f;
  }
  memcpy((void *)(param_1 + 4),param_2,param_3);
  *(undefined1 *)(param_3 + param_1 + 4) = 0;
  return;
}

// ---- FUN_005080e4  @ 0x5080e4
void FUN_005080e4(int param_1)

{
  void *pvVar1;
  
  pvVar1 = *(void **)(param_1 + 0xc);
  FUN_007be0b4((int)pvVar1 + 4);
  operator_delete(pvVar1);
  return;
}

// ---- FUN_0050811a  @ 0x50811a
_Function_base * FUN_0050811a(_Function_base *param_1)

{
  std::_Function_base::~_Function_base(param_1 + 0x10);
  std::_Function_base::~_Function_base(param_1);
  return param_1;
}

// ---- FUN_0050812e  @ 0x50812e
_Function_base * FUN_0050812e(_Function_base *param_1)

{
  std::_Function_base::~_Function_base(param_1 + 0x10);
  std::_Function_base::~_Function_base(param_1);
  return param_1;
}

// ---- FUN_00508168  @ 0x508168
void FUN_00508168(undefined4 *param_1,undefined4 *param_2)

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

// ---- FUN_0050818c  @ 0x50818c
_Function_base * FUN_0050818c(_Function_base *param_1)

{
  std::_Function_base::~_Function_base(param_1 + 0x10);
  std::_Function_base::~_Function_base(param_1);
  return param_1;
}

// ---- FUN_005082ea  @ 0x5082ea
_Function_base * FUN_005082ea(_Function_base *param_1)

{
  std::_Function_base::~_Function_base(param_1 + 0x10);
  std::_Function_base::~_Function_base(param_1);
  return param_1;
}

// ---- FUN_005083f6  @ 0x5083f6
void FUN_005083f6(undefined4 *param_1,undefined4 *param_2)

{
  int iVar1;
  int *piVar2;
  mutex *local_14;
  
  piVar2 = (int *)*param_1;
  local_14 = (mutex *)*piVar2;
  std::mutex::lock(local_14);
  iVar1 = *piVar2;
  *(undefined4 *)(iVar1 + 0xc) = *param_2;
  gpg::Achievement::operator=((Achievement *)(iVar1 + 0x10),(Achievement *)(param_2 + 1));
  *(undefined1 *)(*piVar2 + 8) = 1;
  FUN_007be0e0(*piVar2 + 4);
  std::lock_guard<std::mutex>::~lock_guard((lock_guard<std::mutex> *)&local_14);
  return;
}

// ---- FUN_00508650  @ 0x508650
function<void(std::function<void()>)> *
FUN_00508650(function<void(std::function<void()>)> *param_1,undefined4 *param_2)

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
  function<void(gpg::AchievementManager::FetchResponse_const&)> afStack_30 [20];
  
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
  local_44 = 0x5083f7;
  local_38 = 0;
  local_48 = (code *)0x50835d;
  std::function<void(gpg::AchievementManager::FetchResponse_const&)>::function
            (afStack_30,(function *)local_50);
  std::function<void(std::function<void()>)>::function(param_1,afStack_40);
  std::function<void(gpg::AchievementManager::FetchResponse_const&)>::function
            ((function<void(gpg::AchievementManager::FetchResponse_const&)> *)(param_1 + 0x10),
             (function *)afStack_30);
  FUN_0050818c(afStack_40);
  std::_Function_base::~_Function_base((_Function_base *)local_50);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_64);
  std::_Function_base::~_Function_base(a_Stack_60);
  return param_1;
}

// ---- FUN_005086f8  @ 0x5086f8
function<void(std::function<void()>)> *
FUN_005086f8(function<void(std::function<void()>)> *param_1,undefined4 *param_2)

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
  function<void(gpg::UIStatus_const&)> afStack_30 [8];
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
  local_44 = &LAB_0050843c_1;
  local_38 = 0;
  local_48 = (code *)0x5083a3;
  local_28 = 0;
  std::function<void(gpg::UIStatus_const&)>::swap
            ((function<void(gpg::UIStatus_const&)> *)local_50,(function *)afStack_30);
  std::function<void(std::function<void()>)>::function(param_1,afStack_40);
  *(undefined4 *)(param_1 + 0x18) = 0;
  std::function<void(gpg::UIStatus_const&)>::swap(afStack_30,(function *)(param_1 + 0x10));
  FUN_005082ea(afStack_40);
  std::_Function_base::~_Function_base((_Function_base *)local_50);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_64);
  std::_Function_base::~_Function_base(a_Stack_60);
  return param_1;
}

// ---- FUN_005087a8  @ 0x5087a8
function<void(std::function<void()>)> * FUN_005087a8(function<void(std::function<void()>)> *param_1)

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
  function<void(gpg::AchievementManager::FetchAllResponse_const&)> afStack_30 [8];
  undefined4 local_28;
  
  local_58 = 0;
  FUN_00508168(&local_68);
  local_48 = (code *)0x0;
  local_50[0] = operator_new(8);
  uVar1 = local_64;
  *local_50[0] = local_68;
  local_50[0][1] = 0;
  local_64 = 0;
  local_50[0][1] = uVar1;
  local_44 = 0x50910b;
  local_68 = 0;
  local_38 = 0;
  local_48 = (code *)0x50831f;
  local_28 = 0;
  std::function<void(gpg::AchievementManager::FetchAllResponse_const&)>::swap
            ((function<void(gpg::AchievementManager::FetchAllResponse_const&)> *)local_50,
             (function *)afStack_30);
  std::function<void(std::function<void()>)>::function(param_1,afStack_40);
  *(undefined4 *)(param_1 + 0x18) = 0;
  std::function<void(gpg::AchievementManager::FetchAllResponse_const&)>::swap
            (afStack_30,(function *)(param_1 + 0x10));
  FUN_0050812e(afStack_40);
  std::_Function_base::~_Function_base((_Function_base *)local_50);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_64);
  std::_Function_base::~_Function_base(a_Stack_60);
  return param_1;
}

// ---- FUN_00508884  @ 0x508884
void FUN_00508884(function<void(std::function<void()>)> *param_1,FetchResponse *param_2)

{
  function<void(gpg::AchievementManager::FetchResponse_const&)> *this;
  function<void(gpg::AchievementManager::FetchResponse_const&)> *local_44 [2];
  code *local_3c;
  code *local_38;
  function<void(gpg::AchievementManager::FetchResponse_const&)> afStack_34 [16];
  undefined4 local_24;
  Achievement aAStack_20 [12];
  
  if (*(int *)(param_1 + 0x18) != 0) {
    if (*(int *)(param_1 + 8) == 0) {
      std::function<void(gpg::AchievementManager::FetchResponse_const&)>::operator()
                ((function<void(gpg::AchievementManager::FetchResponse_const&)> *)(param_1 + 0x10),
                 param_2);
    }
    else {
      std::function<void(gpg::AchievementManager::FetchResponse_const&)>::function
                (afStack_34,(function *)(param_1 + 0x10));
      local_24 = *(undefined4 *)param_2;
      gpg::Achievement::Achievement(aAStack_20,(Achievement *)(param_2 + 4));
      local_3c = (code *)0x0;
      this = operator_new(0x1c);
      std::function<void(gpg::AchievementManager::FetchResponse_const&)>::function
                (this,(function *)afStack_34);
      gpg::AchievementManager::FetchResponse::FetchResponse
                ((FetchResponse *)(this + 0x10),(FetchResponse *)&local_24);
      local_38 = (code *)0x508ac3;
      local_3c = (code *)0x5084c1;
      local_44[0] = this;
      std::function<void(std::function<void()>)>::operator()(param_1,(_Function_base *)local_44);
      std::_Function_base::~_Function_base((_Function_base *)local_44);
      gpg::Achievement::~Achievement(aAStack_20);
      std::_Function_base::~_Function_base((_Function_base *)afStack_34);
    }
  }
  return;
}

// ---- FUN_00508cc4  @ 0x508cc4
Achievement * FUN_00508cc4(Achievement *param_1,Achievement *param_2,Achievement *param_3)

{
  for (; param_1 != param_2; param_1 = param_1 + 8) {
    if (param_3 != (Achievement *)0x0) {
      gpg::Achievement::Achievement(param_3,param_1);
    }
    param_3 = param_3 + 8;
  }
  return param_3;
}

// ---- FUN_00508d64  @ 0x508d64
void FUN_00508d64(function<void(std::function<void()>)> *param_1,FetchAllResponse *param_2)

{
  function *pfVar1;
  function *local_48 [2];
  code *local_40;
  code *local_3c;
  function<void(gpg::AchievementManager::FetchAllResponse_const&)> afStack_38 [16];
  FetchAllResponse aFStack_28 [4];
  vector<gpg::Achievement,std::allocator<gpg::Achievement>> avStack_24 [12];
  
  if (*(int *)(param_1 + 0x18) != 0) {
    if (*(int *)(param_1 + 8) == 0) {
      std::function<void(gpg::AchievementManager::FetchAllResponse_const&)>::operator()
                ((function<void(gpg::AchievementManager::FetchAllResponse_const&)> *)
                 (param_1 + 0x10),param_2);
    }
    else {
      std::function<void(gpg::AchievementManager::FetchAllResponse_const&)>::function
                (afStack_38,
                 (function<void(gpg::AchievementManager::FetchAllResponse_const&)> *)
                 (param_1 + 0x10));
      gpg::AchievementManager::FetchAllResponse::FetchAllResponse(aFStack_28,param_2);
      local_40 = (code *)0x0;
      pfVar1 = operator_new(0x20);
      *(undefined4 *)(pfVar1 + 8) = 0;
      std::function<void(gpg::AchievementManager::FetchAllResponse_const&)>::swap(afStack_38,pfVar1)
      ;
      gpg::AchievementManager::FetchAllResponse::FetchAllResponse
                ((FetchAllResponse *)(pfVar1 + 0x10),aFStack_28);
      local_3c = (code *)0x508851;
      local_40 = (code *)0x508cff;
      local_48[0] = pfVar1;
      std::function<void(std::function<void()>)>::operator()(param_1,local_48);
      std::_Function_base::~_Function_base((_Function_base *)local_48);
      std::vector<gpg::Achievement,std::allocator<gpg::Achievement>>::~vector(avStack_24);
      std::_Function_base::~_Function_base((_Function_base *)afStack_38);
    }
  }
  return;
}

// ---- FUN_0050910a  @ 0x50910a
void FUN_0050910a(undefined4 *param_1,undefined4 *param_2)

{
  int iVar1;
  int *piVar2;
  mutex *local_14;
  
  piVar2 = (int *)*param_1;
  local_14 = (mutex *)*piVar2;
  std::mutex::lock(local_14);
  iVar1 = *piVar2;
  *(undefined4 *)(iVar1 + 0xc) = *param_2;
  std::vector<gpg::Achievement,std::allocator<gpg::Achievement>>::operator=
            ((vector<gpg::Achievement,std::allocator<gpg::Achievement>> *)(iVar1 + 0x10),
             (vector *)(param_2 + 1));
  *(undefined1 *)(*piVar2 + 8) = 1;
  FUN_007be0e0(*piVar2 + 4);
  std::lock_guard<std::mutex>::~lock_guard((lock_guard<std::mutex> *)&local_14);
  return;
}

// ---- FUN_00509150  @ 0x509150
undefined4 * FUN_00509150(undefined4 *param_1,undefined4 param_2)

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
    *puVar1 = &PTR_LAB_00508024_1_009242d8;
  }
  local_14 = param_1[1];
  param_1[1] = puVar1;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_14);
  return param_1;
}

// ---- FUN_005091e8  @ 0x5091e8
undefined4 * FUN_005091e8(undefined4 *param_1,undefined4 param_2,undefined4 param_3)

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
    gpg::Achievement::Achievement((Achievement *)(puVar1 + 4));
  }
  uVar2 = *param_1;
  local_1c = 0;
  puVar1 = operator_new(0x14);
  if (puVar1 != (undefined4 *)0x0) {
    puVar1[1] = 1;
    puVar1[2] = 1;
    puVar1[3] = uVar2;
    *puVar1 = &PTR_LAB_00508010_1_009242f8;
  }
  local_1c = param_1[1];
  param_1[1] = puVar1;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_1c);
  return param_1;
}

// ---- FUN_005092a8  @ 0x5092a8
undefined4 * FUN_005092a8(undefined4 *param_1,undefined4 param_2)

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
    *puVar1 = &PTR_LAB_00507ffc_1_00924318;
  }
  local_14 = param_1[1];
  param_1[1] = puVar1;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_14);
  return param_1;
}

// ---- FUN_00509ab2  @ 0x509ab2
_Function_base * FUN_00509ab2(_Function_base *param_1)

{
  std::_Function_base::~_Function_base(param_1 + 0x10);
  std::_Function_base::~_Function_base(param_1);
  return param_1;
}

// ---- FUN_00509ac6  @ 0x509ac6
_Function_base * FUN_00509ac6(_Function_base *param_1)

{
  std::_Function_base::~_Function_base(param_1 + 0x10);
  std::_Function_base::~_Function_base(param_1);
  return param_1;
}

// ---- FUN_00509ada  @ 0x509ada
_Function_base * FUN_00509ada(_Function_base *param_1)

{
  std::_Function_base::~_Function_base(param_1 + 0x10);
  std::_Function_base::~_Function_base(param_1);
  return param_1;
}

// ---- FUN_00509aee  @ 0x509aee
_Function_base * FUN_00509aee(_Function_base *param_1)

{
  std::_Function_base::~_Function_base(param_1 + 0x10);
  std::_Function_base::~_Function_base(param_1);
  return param_1;
}

// ---- FUN_00509b02  @ 0x509b02
_Function_base * FUN_00509b02(_Function_base *param_1)

{
  std::_Function_base::~_Function_base(param_1 + 0x10);
  std::_Function_base::~_Function_base(param_1);
  return param_1;
}

// ---- FUN_00509b16  @ 0x509b16
_Function_base * FUN_00509b16(_Function_base *param_1)

{
  std::_Function_base::~_Function_base(param_1 + 0x10);
  std::_Function_base::~_Function_base(param_1);
  return param_1;
}

// ---- FUN_00509b2a  @ 0x509b2a
_Function_base * FUN_00509b2a(_Function_base *param_1)

{
  std::_Function_base::~_Function_base(param_1 + 0x10);
  std::_Function_base::~_Function_base(param_1);
  return param_1;
}

// ---- FUN_00509b3e  @ 0x509b3e
_Function_base * FUN_00509b3e(_Function_base *param_1)

{
  std::_Function_base::~_Function_base(param_1 + 0x10);
  std::_Function_base::~_Function_base(param_1);
  return param_1;
}

// ---- FUN_00509c80  @ 0x509c80
function<void(std::function<void()>)> *
FUN_00509c80(function<void(std::function<void()>)> *param_1,function *param_2,function *param_3)

{
  function<void(gpg::LogLevel,std::string_const&)> afStack_48 [8];
  undefined4 local_40;
  function<void(std::function<void()>)> afStack_38 [8];
  undefined4 local_30;
  function<void(gpg::LogLevel,std::string_const&)> afStack_28 [20];
  
  if (*(int *)(param_3 + 8) == 0) {
    local_40 = 0;
    local_30 = 0;
  }
  else {
    std::function<void(gpg::LogLevel,std::string_const&)>::function(afStack_48,param_3);
    std::function<void(std::function<void()>)>::function(afStack_38,param_2);
  }
  std::function<void(gpg::LogLevel,std::string_const&)>::function(afStack_28,(function *)afStack_48)
  ;
  std::function<void(std::function<void()>)>::function(param_1,(function *)afStack_38);
  std::function<void(gpg::LogLevel,std::string_const&)>::function
            ((function<void(gpg::LogLevel,std::string_const&)> *)(param_1 + 0x10),
             (function *)afStack_28);
  FUN_0050811a(afStack_38);
  std::_Function_base::~_Function_base((_Function_base *)afStack_48);
  return param_1;
}

// ---- FUN_0050a444  @ 0x50a444
int FUN_0050a444(int param_1)

{
  FUN_007c5914(param_1 + 0x150);
  FUN_007c5914(param_1 + 0x14c);
  std::
  _Rb_tree<std::string,std::string,std::_Identity<std::string>,std::less<std::string>,std::allocator<std::string>>
  ::_M_erase((_Rb_tree<std::string,std::string,std::_Identity<std::string>,std::less<std::string>,std::allocator<std::string>>
              *)(param_1 + 0x130),*(_Rb_tree_node **)(param_1 + 0x138));
  std::_Function_base::~_Function_base((_Function_base *)(param_1 + 0x120));
  FUN_00509b3e(param_1 + 0x100);
  FUN_00509b2a(param_1 + 0xe0);
  FUN_00509b16(param_1 + 0xc0);
  FUN_00509b02(param_1 + 0xa0);
  FUN_00509aee(param_1 + 0x80);
  FUN_00509ada(param_1 + 0x60);
  FUN_00509ac6(param_1 + 0x40);
  FUN_00509ab2(param_1 + 0x20);
  FUN_0050811a(param_1);
  return param_1;
}

// ---- FUN_0050a4b6  @ 0x50a4b6
undefined4 * FUN_0050a4b6(undefined4 *param_1)

{
  void *pvVar1;
  
  pvVar1 = (void *)*param_1;
  if (pvVar1 != (void *)0x0) {
    FUN_0050a444(pvVar1);
    operator_delete(pvVar1);
  }
  *param_1 = 0;
  return param_1;
}

// ---- FUN_0050a6f2  @ 0x50a6f2
void FUN_0050a6f2(int param_1,undefined4 param_2)

{
  *(undefined4 *)(param_1 + 0x148) = param_2;
  return;
}

// ---- FUN_0050a6f8  @ 0x50a6f8
void FUN_0050a6f8(int param_1)

{
  thunk_FUN_007c653c(param_1 + 0x14c);
  return;
}

// ---- FUN_0050a700  @ 0x50a700
void FUN_0050a700(int param_1)

{
  thunk_FUN_007c653c(param_1 + 0x150);
  return;
}

// ---- FUN_0050a708  @ 0x50a708
undefined4 * FUN_0050a708(void)

{
  int iVar1;
  uint uVar2;
  
  uVar2 = DAT_00960b30 & 1;
  if ((uVar2 == 0) && (iVar1 = __cxa_guard_acquire(&DAT_00960b30), iVar1 != 0)) {
    DAT_00960b38 = 0;
    DAT_00960b34 = uVar2;
    __cxa_guard_release(&DAT_00960b30);
  }
  return &DAT_00960b34;
}

// ---- FUN_0050a740  @ 0x50a740
int FUN_0050a740(int param_1)

{
  return param_1 + 0x120;
}

// ---- FUN_0050a822  @ 0x50a822
function<void(std::function<void()>)> *
FUN_0050a822(function<void(std::function<void()>)> *param_1,function *param_2)

{
  std::function<void(std::function<void()>)>::function(param_1,param_2);
  std::function<void(gpg::LogLevel,std::string_const&)>::function
            ((function<void(gpg::LogLevel,std::string_const&)> *)(param_1 + 0x10),param_2 + 0x10);
  return param_1;
}

// ---- FUN_0050a896  @ 0x50a896
undefined4 FUN_0050a896(undefined4 param_1)

{
  FUN_0050a822();
  return param_1;
}

// ---- FUN_0050a990  @ 0x50a990
void FUN_0050a990(int param_1,function *param_2)

{
  function<void(gpg::AuthOperation)> afStack_20 [8];
  undefined4 local_18;
  
  std::function<void(std::function<void()>)>::operator=
            ((function<void(std::function<void()>)> *)(param_1 + 0x20),param_2);
  local_18 = 0;
  std::function<void(gpg::AuthOperation)>::swap
            ((function<void(gpg::AuthOperation)> *)(param_2 + 0x10),afStack_20);
  std::function<void(gpg::AuthOperation)>::swap(afStack_20,(function *)(param_1 + 0x30));
  std::_Function_base::~_Function_base((_Function_base *)afStack_20);
  return;
}

// ---- FUN_0050a9c0  @ 0x50a9c0
void FUN_0050a9c0(int param_1,function *param_2)

{
  function afStack_20 [8];
  undefined4 local_18;
  
  std::function<void(std::function<void()>)>::operator=
            ((function<void(std::function<void()>)> *)(param_1 + 0x60),param_2);
  local_18 = 0;
  std::function<void(gpg::OobError)>::swap
            ((function<void(gpg::OobError)> *)(param_2 + 0x10),afStack_20);
  std::function<void(gpg::OobError)>::swap
            ((function<void(gpg::OobError)> *)afStack_20,(function *)(param_1 + 0x70));
  std::_Function_base::~_Function_base((_Function_base *)afStack_20);
  return;
}

// ---- FUN_0050a9f0  @ 0x50a9f0
void FUN_0050a9f0(int param_1,function *param_2)

{
  function afStack_20 [8];
  undefined4 local_18;
  
  std::function<void(std::function<void()>)>::operator=
            ((function<void(std::function<void()>)> *)(param_1 + 0x40),param_2);
  local_18 = 0;
  std::function<void(gpg::AuthOperation,gpg::AuthStatus)>::swap
            ((function<void(gpg::AuthOperation,gpg::AuthStatus)> *)(param_2 + 0x10),afStack_20);
  std::function<void(gpg::AuthOperation,gpg::AuthStatus)>::swap
            ((function<void(gpg::AuthOperation,gpg::AuthStatus)> *)afStack_20,
             (function *)(param_1 + 0x50));
  std::_Function_base::~_Function_base((_Function_base *)afStack_20);
  return;
}

// ---- FUN_0050aa20  @ 0x50aa20
void FUN_0050aa20(int param_1,function *param_2)

{
  function afStack_20 [8];
  undefined4 local_18;
  
  std::function<void(std::function<void()>)>::operator=
            ((function<void(std::function<void()>)> *)(param_1 + 0xa0),param_2);
  local_18 = 0;
  std::function<void(gpg::Player)>::swap((function<void(gpg::Player)> *)(param_2 + 0x10),afStack_20)
  ;
  std::function<void(gpg::Player)>::swap
            ((function<void(gpg::Player)> *)afStack_20,(function *)(param_1 + 0xb0));
  std::_Function_base::~_Function_base((_Function_base *)afStack_20);
  return;
}

// ---- FUN_0050aa50  @ 0x50aa50
void FUN_0050aa50(int param_1,function *param_2)

{
  function afStack_20 [8];
  undefined4 local_18;
  
  std::function<void(std::function<void()>)>::operator=
            ((function<void(std::function<void()>)> *)(param_1 + 0xe0),param_2);
  local_18 = 0;
  std::function<void(gpg::MultiplayerEvent,std::string,gpg::TurnBasedMatch)>::swap
            ((function<void(gpg::MultiplayerEvent,std::string,gpg::TurnBasedMatch)> *)
             (param_2 + 0x10),afStack_20);
  std::function<void(gpg::MultiplayerEvent,std::string,gpg::TurnBasedMatch)>::swap
            ((function<void(gpg::MultiplayerEvent,std::string,gpg::TurnBasedMatch)> *)afStack_20,
             (function *)(param_1 + 0xf0));
  std::_Function_base::~_Function_base((_Function_base *)afStack_20);
  return;
}

// ---- FUN_0050aa80  @ 0x50aa80
void FUN_0050aa80(int param_1,function *param_2)

{
  function afStack_20 [8];
  undefined4 local_18;
  
  std::function<void(std::function<void()>)>::operator=
            ((function<void(std::function<void()>)> *)(param_1 + 0x80),param_2);
  local_18 = 0;
  std::function<void(std::string_const&)>::swap
            ((function<void(std::string_const&)> *)(param_2 + 0x10),afStack_20);
  std::function<void(std::string_const&)>::swap
            ((function<void(std::string_const&)> *)afStack_20,(function *)(param_1 + 0x90));
  std::_Function_base::~_Function_base((_Function_base *)afStack_20);
  return;
}

// ---- FUN_0050aab0  @ 0x50aab0
void FUN_0050aab0(int param_1,function *param_2)

{
  function afStack_20 [8];
  undefined4 local_18;
  
  std::function<void(std::function<void()>)>::operator=
            ((function<void(std::function<void()>)> *)(param_1 + 0x100),param_2);
  local_18 = 0;
  std::function<void(gpg::Quest)>::swap((function<void(gpg::Quest)> *)(param_2 + 0x10),afStack_20);
  std::function<void(gpg::Quest)>::swap
            ((function<void(gpg::Quest)> *)afStack_20,(function *)(param_1 + 0x110));
  std::_Function_base::~_Function_base((_Function_base *)afStack_20);
  return;
}

// ---- FUN_0050aae2  @ 0x50aae2
void FUN_0050aae2(int param_1,function *param_2)

{
  function afStack_20 [8];
  undefined4 local_18;
  
  std::function<void(std::function<void()>)>::operator=
            ((function<void(std::function<void()>)> *)(param_1 + 0xc0),param_2);
  local_18 = 0;
  std::function<void(gpg::MultiplayerEvent,std::string,gpg::MultiplayerInvitation)>::swap
            ((function<void(gpg::MultiplayerEvent,std::string,gpg::MultiplayerInvitation)> *)
             (param_2 + 0x10),afStack_20);
  std::function<void(gpg::MultiplayerEvent,std::string,gpg::MultiplayerInvitation)>::swap
            ((function<void(gpg::MultiplayerEvent,std::string,gpg::MultiplayerInvitation)> *)
             afStack_20,(function *)(param_1 + 0xd0));
  std::_Function_base::~_Function_base((_Function_base *)afStack_20);
  return;
}

// ---- FUN_0050ab12  @ 0x50ab12
void FUN_0050ab12(function<void(std::function<void()>)> *param_1,function *param_2,
                 undefined4 param_3,undefined4 param_4)

{
  function<void(std::function<void()>)> *this;
  function<void(std::function<void()>)> *pfStack_20;
  function *pfStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  
  this = param_1 + 0x120;
  pfStack_20 = param_1;
  pfStack_1c = param_2;
  uStack_18 = param_3;
  uStack_14 = param_4;
  std::function<void(std::function<void()>)>::operator=(this,param_2);
  std::function<void(std::function<void()>)>::function
            ((function<void(std::function<void()>)> *)&pfStack_20,(function *)this);
  if (*(int *)(param_1 + 8) != 0) {
    std::function<void(std::function<void()>)>::operator=(param_1,(function *)&pfStack_20);
  }
  std::_Function_base::~_Function_base((_Function_base *)&pfStack_20);
  std::function<void(std::function<void()>)>::function
            ((function<void(std::function<void()>)> *)&pfStack_20,(function *)this);
  if (*(int *)(param_1 + 0x28) != 0) {
    std::function<void(std::function<void()>)>::operator=(param_1 + 0x20,(function *)&pfStack_20);
  }
  std::_Function_base::~_Function_base((_Function_base *)&pfStack_20);
  std::function<void(std::function<void()>)>::function
            ((function<void(std::function<void()>)> *)&pfStack_20,(function *)this);
  if (*(int *)(param_1 + 0x48) != 0) {
    std::function<void(std::function<void()>)>::operator=(param_1 + 0x40,(function *)&pfStack_20);
  }
  std::_Function_base::~_Function_base((_Function_base *)&pfStack_20);
  std::function<void(std::function<void()>)>::function
            ((function<void(std::function<void()>)> *)&pfStack_20,(function *)this);
  if (*(int *)(param_1 + 0x88) != 0) {
    std::function<void(std::function<void()>)>::operator=(param_1 + 0x80,(function *)&pfStack_20);
  }
  std::_Function_base::~_Function_base((_Function_base *)&pfStack_20);
  std::function<void(std::function<void()>)>::function
            ((function<void(std::function<void()>)> *)&pfStack_20,(function *)this);
  if (*(int *)(param_1 + 0xa8) != 0) {
    std::function<void(std::function<void()>)>::operator=(param_1 + 0xa0,(function *)&pfStack_20);
  }
  std::_Function_base::~_Function_base((_Function_base *)&pfStack_20);
  return;
}

// ---- FUN_0050abb2  @ 0x50abb2
function<void(std::function<void()>)> *
FUN_0050abb2(function<void(std::function<void()>)> *param_1,function *param_2)

{
  std::function<void(std::function<void()>)>::function(param_1,param_2);
  *(undefined4 *)(param_1 + 0x18) = 0;
  std::function<void(gpg::LogLevel,std::string_const&)>::swap
            ((function<void(gpg::LogLevel,std::string_const&)> *)(param_2 + 0x10),
             (function *)(param_1 + 0x10));
  return param_1;
}

// ---- FUN_0050abd0  @ 0x50abd0
undefined4 FUN_0050abd0(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 *puVar1;
  undefined4 *local_b4 [2];
  undefined1 *local_ac;
  undefined1 *local_a8;
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
  local_a8 = &LAB_0050b214_1;
  local_8c = 0;
  local_ac = &LAB_0050a846_1;
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

// ---- FUN_0050ac88  @ 0x50ac88
void FUN_0050ac88(function<void(std::function<void()>)> *param_1,undefined4 param_2,
                 undefined4 param_3)

{
  function afStack_68 [8];
  undefined4 local_60;
  undefined1 auStack_58 [32];
  function afStack_38 [16];
  function<void(gpg::LogLevel,std::string_const&)> afStack_28 [20];
  
  FUN_0050abb2(auStack_58);
  FUN_0050abd0(afStack_38,param_1,auStack_58,param_3);
  std::function<void(std::function<void()>)>::operator=(param_1,afStack_38);
  local_60 = 0;
  std::function<void(gpg::LogLevel,std::string_const&)>::swap(afStack_28,afStack_68);
  std::function<void(gpg::LogLevel,std::string_const&)>::swap
            ((function<void(gpg::LogLevel,std::string_const&)> *)afStack_68,
             (function *)(param_1 + 0x10));
  std::_Function_base::~_Function_base((_Function_base *)afStack_68);
  FUN_0050811a(afStack_38);
  FUN_0050811a(auStack_58);
  return;
}

// ---- FUN_0050ace8  @ 0x50ace8
int FUN_0050ace8(int param_1)

{
  void *__s;
  code *local_80 [2];
  code *local_78;
  code *local_74;
  code *local_70 [2];
  code *local_68;
  code *local_64;
  _Function_base a_Stack_60 [8];
  undefined4 local_58;
  function afStack_40 [8];
  undefined4 local_38;
  function afStack_30 [8];
  undefined4 local_28;
  
  local_68 = (code *)0x0;
  local_80[0] = (code *)0x5539c9;
  local_74 = (code *)0x509a6d;
  local_38 = 0;
  local_28 = 0;
  local_78 = (code *)0x509a79;
  std::function<void(gpg::LogLevel,std::string_const&)>::swap
            ((function<void(gpg::LogLevel,std::string_const&)> *)local_80,afStack_30);
  FUN_0050abb2(a_Stack_60,afStack_40);
  FUN_0050811a(afStack_40);
  std::_Function_base::~_Function_base((_Function_base *)local_80);
  std::_Function_base::~_Function_base((_Function_base *)local_70);
  FUN_0050abd0(param_1,param_1,a_Stack_60,2);
  FUN_0050811a(a_Stack_60);
  local_58 = 0;
  local_70[0] = (code *)0x50dbd9;
  local_64 = (code *)0x50a5c5;
  local_38 = 0;
  local_28 = 0;
  local_68 = (code *)0x50a5cf;
  std::function<void(gpg::AuthOperation)>::swap
            ((function<void(gpg::AuthOperation)> *)local_70,
             (function<void(gpg::AuthOperation)> *)afStack_30);
  std::function<void(std::function<void()>)>::function
            ((function<void(std::function<void()>)> *)(param_1 + 0x20),afStack_40);
  *(undefined4 *)(param_1 + 0x38) = 0;
  std::function<void(gpg::AuthOperation)>::swap
            ((function<void(gpg::AuthOperation)> *)afStack_30,(function *)(param_1 + 0x30));
  std::_Function_base::~_Function_base((_Function_base *)afStack_30);
  std::_Function_base::~_Function_base((_Function_base *)afStack_40);
  std::_Function_base::~_Function_base((_Function_base *)local_70);
  std::_Function_base::~_Function_base(a_Stack_60);
  local_58 = 0;
  local_70[0] = (code *)0x50dc09;
  local_64 = (code *)0x50a5e7;
  local_38 = 0;
  local_28 = 0;
  local_68 = (code *)0x50a5f3;
  std::function<void(gpg::AuthOperation,gpg::AuthStatus)>::swap
            ((function<void(gpg::AuthOperation,gpg::AuthStatus)> *)local_70,afStack_30);
  std::function<void(std::function<void()>)>::function
            ((function<void(std::function<void()>)> *)(param_1 + 0x40),afStack_40);
  *(undefined4 *)(param_1 + 0x58) = 0;
  std::function<void(gpg::AuthOperation,gpg::AuthStatus)>::swap
            ((function<void(gpg::AuthOperation,gpg::AuthStatus)> *)afStack_30,
             (function *)(param_1 + 0x50));
  std::_Function_base::~_Function_base((_Function_base *)afStack_30);
  std::_Function_base::~_Function_base((_Function_base *)afStack_40);
  std::_Function_base::~_Function_base((_Function_base *)local_70);
  std::_Function_base::~_Function_base(a_Stack_60);
  local_58 = 0;
  local_70[0] = (code *)0x50dc59;
  local_64 = (code *)0x50a60b;
  local_38 = 0;
  local_28 = 0;
  local_68 = (code *)0x50a615;
  std::function<void(gpg::OobError)>::swap((function<void(gpg::OobError)> *)local_70,afStack_30);
  std::function<void(std::function<void()>)>::function
            ((function<void(std::function<void()>)> *)(param_1 + 0x60),afStack_40);
  *(undefined4 *)(param_1 + 0x78) = 0;
  std::function<void(gpg::OobError)>::swap
            ((function<void(gpg::OobError)> *)afStack_30,(function *)(param_1 + 0x70));
  std::_Function_base::~_Function_base((_Function_base *)afStack_30);
  std::_Function_base::~_Function_base((_Function_base *)afStack_40);
  std::_Function_base::~_Function_base((_Function_base *)local_70);
  std::_Function_base::~_Function_base(a_Stack_60);
  local_58 = 0;
  local_70[0] = (code *)0x50dc69;
  local_64 = (code *)0x50a62d;
  local_38 = 0;
  local_28 = 0;
  local_68 = (code *)0x50a637;
  std::function<void(std::string_const&)>::swap
            ((function<void(std::string_const&)> *)local_70,afStack_30);
  std::function<void(std::function<void()>)>::function
            ((function<void(std::function<void()>)> *)(param_1 + 0x80),afStack_40);
  *(undefined4 *)(param_1 + 0x98) = 0;
  std::function<void(std::string_const&)>::swap
            ((function<void(std::string_const&)> *)afStack_30,(function *)(param_1 + 0x90));
  std::_Function_base::~_Function_base((_Function_base *)afStack_30);
  std::_Function_base::~_Function_base((_Function_base *)afStack_40);
  std::_Function_base::~_Function_base((_Function_base *)local_70);
  std::_Function_base::~_Function_base(a_Stack_60);
  local_58 = 0;
  local_70[0] = (code *)0x50dc7d;
  local_64 = (code *)0x50a6af;
  local_38 = 0;
  local_28 = 0;
  local_68 = (code *)0x50a64f;
  std::function<void(gpg::Player)>::swap((function<void(gpg::Player)> *)local_70,afStack_30);
  std::function<void(std::function<void()>)>::function
            ((function<void(std::function<void()>)> *)(param_1 + 0xa0),afStack_40);
  *(undefined4 *)(param_1 + 0xb8) = 0;
  std::function<void(gpg::Player)>::swap
            ((function<void(gpg::Player)> *)afStack_30,(function *)(param_1 + 0xb0));
  std::_Function_base::~_Function_base((_Function_base *)afStack_30);
  std::_Function_base::~_Function_base((_Function_base *)afStack_40);
  std::_Function_base::~_Function_base((_Function_base *)local_70);
  std::_Function_base::~_Function_base(a_Stack_60);
  local_58 = 0;
  local_70[0] = (code *)0x50dcad;
  local_64 = (code *)0x50a799;
  local_38 = 0;
  local_28 = 0;
  local_68 = (code *)0x50a667;
  std::function<void(gpg::MultiplayerEvent,std::string,gpg::MultiplayerInvitation)>::swap
            ((function<void(gpg::MultiplayerEvent,std::string,gpg::MultiplayerInvitation)> *)
             local_70,afStack_30);
  std::function<void(std::function<void()>)>::function
            ((function<void(std::function<void()>)> *)(param_1 + 0xc0),afStack_40);
  *(undefined4 *)(param_1 + 0xd8) = 0;
  std::function<void(gpg::MultiplayerEvent,std::string,gpg::MultiplayerInvitation)>::swap
            ((function<void(gpg::MultiplayerEvent,std::string,gpg::MultiplayerInvitation)> *)
             afStack_30,(function *)(param_1 + 0xd0));
  std::_Function_base::~_Function_base((_Function_base *)afStack_30);
  std::_Function_base::~_Function_base((_Function_base *)afStack_40);
  std::_Function_base::~_Function_base((_Function_base *)local_70);
  std::_Function_base::~_Function_base(a_Stack_60);
  local_58 = 0;
  local_70[0] = (code *)0x50dccd;
  local_64 = (code *)0x50a749;
  local_38 = 0;
  local_28 = 0;
  local_68 = (code *)0x50a67f;
  std::function<void(gpg::MultiplayerEvent,std::string,gpg::TurnBasedMatch)>::swap
            ((function<void(gpg::MultiplayerEvent,std::string,gpg::TurnBasedMatch)> *)local_70,
             afStack_30);
  std::function<void(std::function<void()>)>::function
            ((function<void(std::function<void()>)> *)(param_1 + 0xe0),afStack_40);
  *(undefined4 *)(param_1 + 0xf8) = 0;
  std::function<void(gpg::MultiplayerEvent,std::string,gpg::TurnBasedMatch)>::swap
            ((function<void(gpg::MultiplayerEvent,std::string,gpg::TurnBasedMatch)> *)afStack_30,
             (function *)(param_1 + 0xf0));
  std::_Function_base::~_Function_base((_Function_base *)afStack_30);
  std::_Function_base::~_Function_base((_Function_base *)afStack_40);
  std::_Function_base::~_Function_base((_Function_base *)local_70);
  std::_Function_base::~_Function_base(a_Stack_60);
  local_58 = 0;
  local_70[0] = (code *)0x50dced;
  local_64 = (code *)0x50a6d1;
  local_38 = 0;
  local_28 = 0;
  local_68 = (code *)0x50a697;
  std::function<void(gpg::Quest)>::swap((function<void(gpg::Quest)> *)local_70,afStack_30);
  std::function<void(std::function<void()>)>::function
            ((function<void(std::function<void()>)> *)(param_1 + 0x100),afStack_40);
  *(undefined4 *)(param_1 + 0x118) = 0;
  std::function<void(gpg::Quest)>::swap
            ((function<void(gpg::Quest)> *)afStack_30,(function *)(param_1 + 0x110));
  std::_Function_base::~_Function_base((_Function_base *)afStack_30);
  std::_Function_base::~_Function_base((_Function_base *)afStack_40);
  std::_Function_base::~_Function_base((_Function_base *)local_70);
  std::_Function_base::~_Function_base(a_Stack_60);
  __s = (void *)(param_1 + 0x134);
  *(undefined4 *)(param_1 + 0x120) = 0x50e285;
  *(undefined4 *)(param_1 + 300) = 0x50a927;
  *(undefined4 *)(param_1 + 0x128) = 0x50a5ad;
  memset(__s,0,0x10);
  *(undefined4 *)(param_1 + 0x148) = 4;
  *(undefined4 *)(param_1 + 0x144) = 0;
  *(void **)(param_1 + 0x13c) = __s;
  *(void **)(param_1 + 0x140) = __s;
  *(undefined1 **)(param_1 + 0x14c) = &DAT_00972528;
  *(undefined1 **)(param_1 + 0x150) = &DAT_00972528;
  return param_1;
}

// ---- FUN_0050b0a8  @ 0x50b0a8
void FUN_0050b0a8(int param_1,string *param_2)

{
  int iVar1;
  _Rb_tree_node_base *p_Var2;
  _Rb_tree_node_base *p_Var3;
  bool bVar4;
  
  bVar4 = true;
  p_Var2 = *(_Rb_tree_node_base **)(param_1 + 0x138);
  p_Var3 = (_Rb_tree_node_base *)(param_1 + 0x134);
  while (p_Var2 != (_Rb_tree_node_base *)0x0) {
    iVar1 = FUN_007c567c(param_2,p_Var2 + 0x10);
    bVar4 = iVar1 < 0;
    p_Var3 = p_Var2;
    if (bVar4) {
      p_Var2 = *(_Rb_tree_node_base **)(p_Var2 + 8);
    }
    else {
      p_Var2 = *(_Rb_tree_node_base **)(p_Var2 + 0xc);
    }
  }
  p_Var2 = p_Var3;
  if (bVar4) {
    if (p_Var3 == *(_Rb_tree_node_base **)(param_1 + 0x13c)) goto LAB_0050b0f6;
    p_Var2 = (_Rb_tree_node_base *)thunk_FUN_0079972c(p_Var3);
  }
  iVar1 = FUN_007c567c(p_Var2 + 0x10,param_2);
  if (-1 < iVar1) {
    return;
  }
LAB_0050b0f6:
  std::
  _Rb_tree<std::string,std::string,std::_Identity<std::string>,std::less<std::string>,std::allocator<std::string>>
  ::_M_insert_<std::string_const&>
            ((_Rb_tree<std::string,std::string,std::_Identity<std::string>,std::less<std::string>,std::allocator<std::string>>
              *)(param_1 + 0x130),(_Rb_tree_node_base *)0x0,p_Var3,param_2);
  return;
}

// ---- FUN_0050b118  @ 0x50b118
void FUN_0050b118(int param_1,undefined4 *param_2,undefined4 param_3)

{
  code *pcVar1;
  code *pcVar2;
  function *pfVar3;
  code *pcVar4;
  function *local_50 [2];
  code *local_48;
  code *local_44;
  _Function_base a_Stack_40 [8];
  code *local_38;
  code *local_34;
  function<void(gpg::LogLevel,std::string_const&)> afStack_30 [16];
  undefined1 *local_20;
  undefined4 local_1c;
  
  if (*(int *)(param_1 + 0x18) != 0) {
    if (*(int *)(param_1 + 8) == 0) {
      std::function<void(gpg::LogLevel,std::string_const&)>::operator()
                ((function *)(param_1 + 0x10),*param_2);
    }
    else {
      std::function<void(gpg::LogLevel,std::string_const&)>::function
                (afStack_30,(function *)(param_1 + 0x10));
      FUN_007c64e8(&local_20,param_3);
      local_1c = *param_2;
      local_48 = (code *)0x0;
      pfVar3 = operator_new(0x18);
      *(undefined4 *)(pfVar3 + 8) = 0;
      std::function<void(gpg::LogLevel,std::string_const&)>::swap(afStack_30,pfVar3);
      *(undefined1 **)(pfVar3 + 0x10) = local_20;
      local_20 = &DAT_00972528;
      *(undefined4 *)(pfVar3 + 0x14) = local_1c;
      local_44 = (code *)0x50b22f;
      local_48 = (code *)0x50a8a3;
      local_50[0] = pfVar3;
      if (*(int *)(param_1 + 8) == 0) {
        FUN_007c4d54();
        std::_Function_base::~_Function_base((_Function_base *)afStack_30);
                    /* WARNING: Subroutine does not return */
        __cxa_end_cleanup();
      }
      pcVar4 = *(code **)(param_1 + 0xc);
      local_38 = (code *)0x0;
      std::swap<std::_Any_data>((_Any_data *)local_50,(_Any_data *)a_Stack_40);
      pcVar2 = local_34;
      pcVar1 = local_38;
      local_38 = local_48;
      local_48 = pcVar1;
      local_34 = local_44;
      local_44 = pcVar2;
      (*pcVar4)(param_1,a_Stack_40);
      std::_Function_base::~_Function_base(a_Stack_40);
      std::_Function_base::~_Function_base((_Function_base *)local_50);
      FUN_007c5914(&local_20);
      std::_Function_base::~_Function_base((_Function_base *)afStack_30);
    }
  }
  return;
}

// ---- FUN_0050db70  @ 0x50db70
undefined4 * FUN_0050db70(undefined4 *param_1)

{
  *param_1 = &PTR___Sp_counted_base_1_009242b8;
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0050dbac  @ 0x50dbac
void FUN_0050dbac(int param_1)

{
  undefined4 *puVar1;
  
  puVar1 = *(undefined4 **)(param_1 + 0xc);
  (**(code **)*puVar1)(puVar1);
  operator_delete(puVar1);
  return;
}

// ---- FUN_0050dd3c  @ 0x50dd3c
_Impl_base * FUN_0050dd3c(_Impl_base *param_1)

{
  *(undefined **)param_1 = &DAT_008fe550;
  FUN_0050811a(param_1 + 0xc);
  std::thread::_Impl_base::~_Impl_base(param_1);
  return param_1;
}

// ---- FUN_0050dd5c  @ 0x50dd5c
void * FUN_0050dd5c(void *param_1)

{
  FUN_0050dd3c();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0050dd8c  @ 0x50dd8c
void FUN_0050dd8c(int param_1)

{
  undefined1 auStack_4c [4];
  undefined *local_48;
  char local_44;
  _Function_base a_Stack_40 [8];
  undefined4 local_38;
  undefined4 local_34;
  
  FUN_007c6a60(a_Stack_40,"callback_queue",(unique_lock<std::mutex> *)&local_48);
  FUN_0052a16c(a_Stack_40);
  FUN_007c5914(a_Stack_40);
  FUN_0050a822(a_Stack_40,param_1 + 0xc);
  FUN_0051683e(auStack_4c,a_Stack_40);
  FUN_0050811a(a_Stack_40);
  do {
    local_48 = &DAT_00960b44;
    local_44 = 0;
    std::mutex::lock((mutex *)&DAT_00960b44);
    local_44 = '\x01';
    if (DAT_00960b64 == DAT_00960b54) {
      FUN_007be0c0(&DAT_00960b74,(unique_lock<std::mutex> *)&local_48);
    }
    else {
      local_38 = 0;
      if (*(int *)(DAT_00960b54 + 8) != 0) {
        local_34 = *(undefined4 *)(DAT_00960b54 + 0xc);
        local_38 = *(undefined4 *)(DAT_00960b54 + 8);
        (**(code **)(DAT_00960b54 + 8))(a_Stack_40,DAT_00960b54,2);
      }
      if (DAT_00960b54 == DAT_00960b5c + -0x10) {
        std::_Function_base::~_Function_base(DAT_00960b54);
        operator_delete(DAT_00960b58);
        DAT_00960b54 = *(_Function_base **)(DAT_00960b60 + 4);
        DAT_00960b5c = DAT_00960b54 + 0x200;
        DAT_00960b58 = DAT_00960b54;
        DAT_00960b60 = DAT_00960b60 + 4;
      }
      else {
        std::_Function_base::~_Function_base(DAT_00960b54);
        DAT_00960b54 = DAT_00960b54 + 0x10;
      }
      std::unique_lock<std::mutex>::unlock((unique_lock<std::mutex> *)&local_48);
      FUN_00553a70(a_Stack_40);
      std::_Function_base::~_Function_base(a_Stack_40);
    }
    if (local_44 != '\0') {
      std::unique_lock<std::mutex>::unlock((unique_lock<std::mutex> *)&local_48);
    }
  } while( true );
}

// ---- FUN_0050df70  @ 0x50df70
undefined4 * FUN_0050df70(undefined4 *param_1,_Any_data *param_2)

{
  undefined4 *puVar1;
  undefined4 *puVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 *local_48;
  undefined4 *local_44;
  undefined4 *local_40;
  undefined4 *local_3c;
  _Any_data a_Stack_38 [8];
  undefined4 local_30;
  undefined4 local_2c;
  _Any_data a_Stack_28 [8];
  undefined4 local_20;
  undefined4 local_1c;
  
  *param_1 = 0;
  local_30 = 0;
  std::swap<std::_Any_data>(param_2,a_Stack_38);
  uVar3 = *(undefined4 *)(param_2 + 8);
  local_20 = 0;
  *(undefined4 *)(param_2 + 8) = local_30;
  uVar4 = *(undefined4 *)(param_2 + 0xc);
  *(undefined4 *)(param_2 + 0xc) = local_2c;
  local_30 = uVar3;
  local_2c = uVar4;
  std::swap<std::_Any_data>(param_2 + 0x10,a_Stack_28);
  uVar3 = *(undefined4 *)(param_2 + 0x18);
  local_40 = (undefined4 *)0x0;
  *(undefined4 *)(param_2 + 0x18) = local_20;
  uVar4 = *(undefined4 *)(param_2 + 0x1c);
  *(undefined4 *)(param_2 + 0x1c) = local_1c;
  local_3c = (undefined4 *)0x0;
  local_20 = uVar3;
  local_1c = uVar4;
  puVar1 = operator_new(0x2c);
  local_40 = puVar1;
  if (puVar1 != (undefined4 *)0x0) {
    puVar1[1] = 0;
    puVar1[2] = 0;
    puVar1[5] = 0;
    *puVar1 = &DAT_008fe550;
    std::swap<std::_Any_data>(a_Stack_38,(_Any_data *)(puVar1 + 3));
    uVar3 = puVar1[5];
    puVar1[9] = 0;
    puVar1[5] = local_30;
    uVar4 = puVar1[6];
    puVar1[6] = local_2c;
    local_30 = uVar3;
    local_2c = uVar4;
    std::swap<std::_Any_data>(a_Stack_28,(_Any_data *)(puVar1 + 7));
    uVar3 = puVar1[9];
    puVar1[9] = local_20;
    uVar4 = puVar1[10];
    puVar1[10] = local_1c;
    local_20 = uVar3;
    local_1c = uVar4;
  }
  puVar1 = local_40;
  local_48 = (undefined4 *)0x0;
  puVar2 = operator_new(0x14);
  if (puVar2 != (undefined4 *)0x0) {
    puVar2[1] = 1;
    puVar2[2] = 1;
    puVar2[3] = puVar1;
    *puVar2 = &PTR_LAB_0050db5c_1_008fe530;
  }
  local_48 = local_3c;
  local_3c = puVar2;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_48);
  local_48 = local_40;
  local_44 = local_3c;
  local_3c = (undefined4 *)0x0;
  local_40 = (undefined4 *)0x0;
  FUN_007bfe74(param_1,&local_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_44);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_3c);
  FUN_0050811a(a_Stack_38);
  return param_1;
}

// ---- FUN_0050e48c  @ 0x50e48c
undefined4 * FUN_0050e48c(undefined4 *param_1)

{
  *param_1 = &PTR___Sp_counted_base_1_009242b8;
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0050e4bc  @ 0x50e4bc
void FUN_0050e4bc(int param_1)

{
  _Function_base *this;
  
  this = *(_Function_base **)(param_1 + 0xc);
  std::_Function_base::~_Function_base(this + 0x10);
  std::_Function_base::~_Function_base(this);
  operator_delete(this);
  return;
}

// ---- FUN_0050e594  @ 0x50e594
undefined4 * FUN_0050e594(undefined4 *param_1,undefined4 param_2,undefined4 param_3)

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
    *puVar2 = &PTR_LAB_0050e478_1_00924350;
  }
  local_14 = param_1[1];
  param_1[1] = puVar2;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_14);
  return param_1;
}

// ---- FUN_0050e83c  @ 0x50e83c
undefined4 * FUN_0050e83c(undefined4 *param_1)

{
  *param_1 = &PTR___Sp_counted_base_1_009242b8;
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0050e89c  @ 0x50e89c
void FUN_0050e89c(int param_1)

{
  void *pvVar1;
  
  pvVar1 = *(void **)(param_1 + 0xc);
  gpg::Event::~Event((Event *)((int)pvVar1 + 0x10));
  FUN_007be0b4((int)pvVar1 + 4);
  operator_delete(pvVar1);
  return;
}

// ---- FUN_0050e8be  @ 0x50e8be
_Function_base * FUN_0050e8be(_Function_base *param_1)

{
  std::_Function_base::~_Function_base(param_1 + 0x10);
  std::_Function_base::~_Function_base(param_1);
  return param_1;
}

// ---- FUN_0050e916  @ 0x50e916
void FUN_0050e916(undefined4 *param_1,undefined4 *param_2)

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

// ---- FUN_0050e93a  @ 0x50e93a
_Function_base * FUN_0050e93a(_Function_base *param_1)

{
  std::_Function_base::~_Function_base(param_1 + 0x10);
  std::_Function_base::~_Function_base(param_1);
  return param_1;
}

// ---- FUN_0050e962  @ 0x50e962
void FUN_0050e962(undefined4 *param_1,undefined4 *param_2)

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

// ---- FUN_0050ea5a  @ 0x50ea5a
void FUN_0050ea5a(undefined4 *param_1,undefined4 *param_2)

{
  int iVar1;
  int *piVar2;
  mutex *local_14;
  
  piVar2 = (int *)*param_1;
  local_14 = (mutex *)*piVar2;
  std::mutex::lock(local_14);
  iVar1 = *piVar2;
  *(undefined4 *)(iVar1 + 0xc) = *param_2;
  gpg::Event::operator=((Event *)(iVar1 + 0x10),(Event *)(param_2 + 1));
  *(undefined1 *)(*piVar2 + 8) = 1;
  FUN_007be0e0(*piVar2 + 4);
  std::lock_guard<std::mutex>::~lock_guard((lock_guard<std::mutex> *)&local_14);
  return;
}

// ---- FUN_0050eb9a  @ 0x50eb9a
void FUN_0050eb9a(int param_1)

{
  void *pvVar1;
  
  pvVar1 = *(void **)(param_1 + 0xc);
  std::
  _Rb_tree<std::string,std::pair<std::string_const,gpg::Event>,std::_Select1st<std::pair<std::string_const,gpg::Event>>,std::less<std::string>,std::allocator<std::pair<std::string_const,gpg::Event>>>
  ::~_Rb_tree((_Rb_tree<std::string,std::pair<std::string_const,gpg::Event>,std::_Select1st<std::pair<std::string_const,gpg::Event>>,std::less<std::string>,std::allocator<std::pair<std::string_const,gpg::Event>>>
               *)((int)pvVar1 + 0x10));
  FUN_007be0b4((int)pvVar1 + 4);
  operator_delete(pvVar1);
  return;
}

// ---- FUN_0050ebf0  @ 0x50ebf0
function * FUN_0050ebf0(function *param_1)

{
  undefined4 uVar1;
  undefined4 local_68;
  undefined4 local_64;
  _Function_base a_Stack_60 [8];
  undefined4 local_58;
  undefined4 *local_50 [2];
  code *local_48;
  undefined4 local_44;
  function<void(std::function<void()>)> afStack_40 [8];
  undefined4 local_38;
  function<void(gpg::EventManager::FetchAllResponse_const&)> afStack_30 [8];
  undefined4 local_28;
  
  local_58 = 0;
  FUN_0050e916(&local_68);
  local_48 = (code *)0x0;
  local_50[0] = operator_new(8);
  uVar1 = local_64;
  *local_50[0] = local_68;
  local_50[0][1] = 0;
  local_64 = 0;
  local_50[0][1] = uVar1;
  local_44 = 0x50f7d9;
  local_68 = 0;
  local_38 = 0;
  local_48 = (code *)0x50e9df;
  local_28 = 0;
  std::function<void(gpg::EventManager::FetchAllResponse_const&)>::swap
            ((function<void(gpg::EventManager::FetchAllResponse_const&)> *)local_50,
             (function *)afStack_30);
  *(undefined4 *)(param_1 + 8) = 0;
  std::function<void(std::function<void()>)>::swap(afStack_40,param_1);
  *(undefined4 *)(param_1 + 0x18) = 0;
  std::function<void(gpg::EventManager::FetchAllResponse_const&)>::swap(afStack_30,param_1 + 0x10);
  FUN_0050e8be(afStack_40);
  std::_Function_base::~_Function_base((_Function_base *)local_50);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_64);
  std::_Function_base::~_Function_base(a_Stack_60);
  return param_1;
}

// ---- FUN_0050ecc0  @ 0x50ecc0
function * FUN_0050ecc0(function *param_1)

{
  undefined4 uVar1;
  undefined4 local_68;
  undefined4 local_64;
  _Function_base a_Stack_60 [8];
  undefined4 local_58;
  undefined4 *local_50 [2];
  code *local_48;
  undefined4 local_44;
  function<void(std::function<void()>)> afStack_40 [8];
  undefined4 local_38;
  function<void(gpg::EventManager::FetchResponse_const&)> afStack_30 [16];
  
  local_58 = 0;
  FUN_0050e962(&local_68);
  local_48 = (code *)0x0;
  local_50[0] = operator_new(8);
  uVar1 = local_64;
  *local_50[0] = local_68;
  local_50[0][1] = 0;
  local_64 = 0;
  local_50[0][1] = uVar1;
  local_44 = 0x50ea5b;
  local_68 = 0;
  local_38 = 0;
  local_48 = (code *)0x50ea1d;
  std::function<void(gpg::EventManager::FetchResponse_const&)>::function
            (afStack_30,(function *)local_50);
  *(undefined4 *)(param_1 + 8) = 0;
  std::function<void(std::function<void()>)>::swap(afStack_40,param_1);
  std::function<void(gpg::EventManager::FetchResponse_const&)>::function
            ((function<void(gpg::EventManager::FetchResponse_const&)> *)(param_1 + 0x10),
             (function *)afStack_30);
  FUN_0050e93a(afStack_40);
  std::_Function_base::~_Function_base((_Function_base *)local_50);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_64);
  std::_Function_base::~_Function_base(a_Stack_60);
  return param_1;
}

// ---- FUN_0050edac  @ 0x50edac
void FUN_0050edac(function<void(std::function<void()>)> *param_1,FetchResponse *param_2)

{
  function<void(gpg::EventManager::FetchResponse_const&)> *this;
  function<void(gpg::EventManager::FetchResponse_const&)> *local_44 [2];
  code *local_3c;
  code *local_38;
  function<void(gpg::EventManager::FetchResponse_const&)> afStack_34 [16];
  undefined4 local_24;
  Event aEStack_20 [12];
  
  if (*(int *)(param_1 + 0x18) != 0) {
    if (*(int *)(param_1 + 8) == 0) {
      std::function<void(gpg::EventManager::FetchResponse_const&)>::operator()
                ((function<void(gpg::EventManager::FetchResponse_const&)> *)(param_1 + 0x10),param_2
                );
    }
    else {
      std::function<void(gpg::EventManager::FetchResponse_const&)>::function
                (afStack_34,(function *)(param_1 + 0x10));
      local_24 = *(undefined4 *)param_2;
      gpg::Event::Event(aEStack_20,(Event *)(param_2 + 4));
      local_3c = (code *)0x0;
      this = operator_new(0x1c);
      std::function<void(gpg::EventManager::FetchResponse_const&)>::function
                (this,(function *)afStack_34);
      gpg::EventManager::FetchResponse::FetchResponse
                ((FetchResponse *)(this + 0x10),(FetchResponse *)&local_24);
      local_38 = (code *)0x50efef;
      local_3c = (code *)0x50eaf5;
      local_44[0] = this;
      std::function<void(std::function<void()>)>::operator()(param_1,(_Function_base *)local_44);
      std::_Function_base::~_Function_base((_Function_base *)local_44);
      gpg::Event::~Event(aEStack_20);
      std::_Function_base::~_Function_base((_Function_base *)afStack_34);
    }
  }
  return;
}

// ---- FUN_0050eff8  @ 0x50eff8
undefined4 * FUN_0050eff8(undefined4 *param_1,undefined4 param_2)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  undefined4 local_14;
  
  *param_1 = 0;
  param_1[1] = 0;
  local_14 = param_2;
  puVar1 = operator_new(0x28);
  *param_1 = puVar1;
  if (puVar1 != (undefined4 *)0x0) {
    *puVar1 = 0;
    *puVar1 = 0;
    puVar1[1] = 0;
    FUN_007be0ac(puVar1 + 1);
    *(undefined1 *)(puVar1 + 2) = 0;
    memset(puVar1 + 3,0,0x1c);
    std::
    _Rb_tree<std::string,std::pair<std::string_const,gpg::Event>,std::_Select1st<std::pair<std::string_const,gpg::Event>>,std::less<std::string>,std::allocator<std::pair<std::string_const,gpg::Event>>>
    ::_Rb_tree_impl<std::less<std::string>,true>::_Rb_tree_impl
              ((_Rb_tree_impl<std::less<std::string>,true> *)(puVar1 + 4));
  }
  uVar2 = *param_1;
  local_14 = 0;
  puVar1 = operator_new(0x14);
  if (puVar1 != (undefined4 *)0x0) {
    puVar1[1] = 1;
    puVar1[2] = 1;
    puVar1[3] = uVar2;
    *puVar1 = &PTR_LAB_0050e828_1_00924370;
  }
  local_14 = param_1[1];
  param_1[1] = puVar1;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_14);
  return param_1;
}

// ---- FUN_0050f098  @ 0x50f098
undefined4 * FUN_0050f098(undefined4 *param_1,undefined4 param_2,undefined4 param_3)

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
    gpg::Event::Event((Event *)(puVar1 + 4));
  }
  uVar2 = *param_1;
  local_1c = 0;
  puVar1 = operator_new(0x14);
  if (puVar1 != (undefined4 *)0x0) {
    puVar1[1] = 1;
    puVar1[2] = 1;
    puVar1[3] = uVar2;
    *puVar1 = &PTR_LAB_0050e814_1_00924390;
  }
  local_1c = param_1[1];
  param_1[1] = puVar1;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_1c);
  return param_1;
}

// ---- FUN_0050f7d8  @ 0x50f7d8
void FUN_0050f7d8(undefined4 *param_1,undefined4 *param_2,undefined4 param_3)

{
  int iVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  int *piVar5;
  _Rb_tree<std::string,std::pair<std::string_const,gpg::Event>,std::_Select1st<std::pair<std::string_const,gpg::Event>>,std::less<std::string>,std::allocator<std::pair<std::string_const,gpg::Event>>>
  *this;
  mutex *local_1c;
  undefined4 uStack_18;
  
  piVar5 = (int *)*param_1;
  local_1c = (mutex *)*piVar5;
  uStack_18 = param_3;
  std::mutex::lock(local_1c);
  iVar4 = *piVar5;
  this = (_Rb_tree<std::string,std::pair<std::string_const,gpg::Event>,std::_Select1st<std::pair<std::string_const,gpg::Event>>,std::less<std::string>,std::allocator<std::pair<std::string_const,gpg::Event>>>
          *)(iVar4 + 0x10);
  *(undefined4 *)(iVar4 + 0xc) = *param_2;
  if (this != (_Rb_tree<std::string,std::pair<std::string_const,gpg::Event>,std::_Select1st<std::pair<std::string_const,gpg::Event>>,std::less<std::string>,std::allocator<std::pair<std::string_const,gpg::Event>>>
               *)(param_2 + 1)) {
    std::
    _Rb_tree<std::string,std::pair<std::string_const,gpg::Event>,std::_Select1st<std::pair<std::string_const,gpg::Event>>,std::less<std::string>,std::allocator<std::pair<std::string_const,gpg::Event>>>
    ::_M_erase(this,*(_Rb_tree_node **)(iVar4 + 0x18));
    *(int *)(iVar4 + 0x1c) = iVar4 + 0x14;
    *(undefined4 *)(iVar4 + 0x18) = 0;
    *(int *)(iVar4 + 0x20) = iVar4 + 0x14;
    *(undefined4 *)(iVar4 + 0x24) = 0;
    if ((_Rb_tree_node *)param_2[3] != (_Rb_tree_node *)0x0) {
      iVar1 = std::
              _Rb_tree<std::string,std::pair<std::string_const,gpg::Event>,std::_Select1st<std::pair<std::string_const,gpg::Event>>,std::less<std::string>,std::allocator<std::pair<std::string_const,gpg::Event>>>
              ::_M_copy((_Rb_tree_node *)this,(_Rb_tree_node *)param_2[3]);
      *(int *)(iVar4 + 0x18) = iVar1;
      iVar2 = iVar1;
      do {
        iVar3 = iVar2;
        iVar2 = *(int *)(iVar3 + 8);
      } while (iVar2 != 0);
      *(int *)(iVar4 + 0x1c) = iVar3;
      do {
        iVar2 = iVar1;
        iVar1 = *(int *)(iVar2 + 0xc);
      } while (iVar1 != 0);
      *(int *)(iVar4 + 0x20) = iVar2;
      *(undefined4 *)(iVar4 + 0x24) = param_2[6];
    }
  }
  *(undefined1 *)(*piVar5 + 8) = 1;
  FUN_007be0e0(*piVar5 + 4);
  std::lock_guard<std::mutex>::~lock_guard((lock_guard<std::mutex> *)&local_1c);
  return;
}

// ---- FUN_0050f858  @ 0x50f858
void FUN_0050f858(function<void(std::function<void()>)> *param_1,FetchAllResponse *param_2)

{
  undefined1 *puVar1;
  undefined1 *puVar2;
  function *pfVar3;
  function *local_54 [2];
  code *local_4c;
  code *local_48;
  function<void(gpg::EventManager::FetchAllResponse_const&)> afStack_44 [16];
  undefined4 local_34;
  _Rb_tree_node a_Stack_30 [4];
  undefined1 auStack_2c [4];
  undefined1 *local_28;
  undefined1 *local_24;
  undefined1 *local_20;
  undefined4 local_1c;
  
  if (*(int *)(param_1 + 0x18) != 0) {
    if (*(int *)(param_1 + 8) == 0) {
      std::function<void(gpg::EventManager::FetchAllResponse_const&)>::operator()
                ((function<void(gpg::EventManager::FetchAllResponse_const&)> *)(param_1 + 0x10),
                 param_2);
    }
    else {
      std::function<void(gpg::EventManager::FetchAllResponse_const&)>::function
                (afStack_44,(function *)(param_1 + 0x10));
      local_34 = *(undefined4 *)param_2;
      memset(auStack_2c,0,0x10);
      local_24 = auStack_2c;
      local_1c = 0;
      local_20 = local_24;
      if (*(_Rb_tree_node **)(param_2 + 0xc) != (_Rb_tree_node *)0x0) {
        local_28 = (undefined1 *)
                   std::
                   _Rb_tree<std::string,std::pair<std::string_const,gpg::Event>,std::_Select1st<std::pair<std::string_const,gpg::Event>>,std::less<std::string>,std::allocator<std::pair<std::string_const,gpg::Event>>>
                   ::_M_copy(a_Stack_30,*(_Rb_tree_node **)(param_2 + 0xc));
        puVar2 = local_28;
        do {
          local_24 = puVar2;
          puVar1 = local_28;
          puVar2 = *(undefined1 **)(local_24 + 8);
        } while (*(undefined1 **)(local_24 + 8) != (undefined1 *)0x0);
        do {
          local_20 = puVar1;
          puVar1 = *(undefined1 **)(local_20 + 0xc);
        } while (*(undefined1 **)(local_20 + 0xc) != (undefined1 *)0x0);
        local_1c = *(undefined4 *)(param_2 + 0x18);
      }
      local_4c = (code *)0x0;
      pfVar3 = operator_new(0x2c);
      *(undefined4 *)(pfVar3 + 8) = 0;
      std::function<void(gpg::EventManager::FetchAllResponse_const&)>::swap(afStack_44,pfVar3);
      gpg::EventManager::FetchAllResponse::FetchAllResponse
                ((FetchAllResponse *)(pfVar3 + 0x10),(FetchAllResponse *)&local_34);
      local_48 = (code *)0x50ed91;
      local_4c = (code *)0x50f771;
      local_54[0] = pfVar3;
      std::function<void(std::function<void()>)>::operator()(param_1,(_Function_base *)local_54);
      std::_Function_base::~_Function_base((_Function_base *)local_54);
      std::
      _Rb_tree<std::string,std::pair<std::string_const,gpg::Event>,std::_Select1st<std::pair<std::string_const,gpg::Event>>,std::less<std::string>,std::allocator<std::pair<std::string_const,gpg::Event>>>
      ::~_Rb_tree((_Rb_tree<std::string,std::pair<std::string_const,gpg::Event>,std::_Select1st<std::pair<std::string_const,gpg::Event>>,std::less<std::string>,std::allocator<std::pair<std::string_const,gpg::Event>>>
                   *)a_Stack_30);
      std::_Function_base::~_Function_base((_Function_base *)afStack_44);
    }
  }
  return;
}

// ---- FUN_0050fae0  @ 0x50fae0
undefined4 * FUN_0050fae0(undefined4 *param_1)

{
  *param_1 = &PTR___Sp_counted_base_1_009242b8;
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0050fb70  @ 0x50fb70
void FUN_0050fb70(int *param_1)

{
  if (param_1 != (int *)0x0) {
    (**(code **)(*param_1 + 4))();
  }
  return;
}

// ---- FUN_0050fb82  @ 0x50fb82
void FUN_0050fb82(int param_1)

{
  void *pvVar1;
  
  pvVar1 = *(void **)(param_1 + 0xc);
  FUN_007be0b4((int)pvVar1 + 4);
  operator_delete(pvVar1);
  return;
}

// ---- FUN_0050fbc0  @ 0x50fbc0
void FUN_0050fbc0(undefined4 *param_1,undefined4 param_2)

{
  int *piVar1;
  pthread_mutex_t *__mutex;
  
  piVar1 = (int *)*param_1;
  __mutex = (pthread_mutex_t *)*piVar1;
  std::mutex::lock((mutex *)&__mutex->__data);
  *(undefined4 *)(*piVar1 + 0xc) = param_2;
  *(undefined1 *)(*piVar1 + 8) = 1;
  FUN_007be0e0(*piVar1 + 4);
  pthread_mutex_unlock(__mutex);
  return;
}

// ---- FUN_0050fd1e  @ 0x50fd1e
_Function_base * FUN_0050fd1e(_Function_base *param_1)

{
  std::_Function_base::~_Function_base(param_1 + 0x10);
  std::_Function_base::~_Function_base(param_1);
  return param_1;
}

// ---- FUN_0050fd32  @ 0x50fd32
void FUN_0050fd32(undefined4 *param_1,undefined4 *param_2)

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

// ---- FUN_0050fd94  @ 0x50fd94
int * FUN_0050fd94(int *param_1,int *param_2,undefined4 param_3)

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
    *puVar2 = &PTR_LAB_0050facc_1_009243b0;
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

// ---- FUN_0050fe78  @ 0x50fe78
_Any_data * FUN_0050fe78(_Any_data *param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 local_68;
  undefined4 local_64;
  _Function_base a_Stack_60 [8];
  undefined4 local_58;
  undefined4 *local_50 [2];
  code *local_48;
  undefined4 local_44;
  _Any_data a_Stack_40 [8];
  undefined4 local_38;
  undefined4 local_34;
  function<void(gpg::FlushStatus)> afStack_30 [8];
  undefined4 local_28;
  
  local_58 = 0;
  FUN_0050fd32(&local_68);
  local_48 = (code *)0x0;
  local_50[0] = operator_new(8);
  uVar1 = local_64;
  *local_50[0] = local_68;
  local_50[0][1] = 0;
  local_64 = 0;
  local_50[0][1] = uVar1;
  local_44 = 0x50fbc1;
  local_68 = 0;
  local_38 = 0;
  local_48 = (code *)0x50fd57;
  local_28 = 0;
  std::function<void(gpg::FlushStatus)>::swap
            ((function<void(gpg::FlushStatus)> *)local_50,(function *)afStack_30);
  *(undefined4 *)(param_1 + 8) = 0;
  std::swap<std::_Any_data>(a_Stack_40,param_1);
  uVar1 = *(undefined4 *)(param_1 + 8);
  *(undefined4 *)(param_1 + 0x18) = 0;
  *(undefined4 *)(param_1 + 8) = local_38;
  uVar2 = *(undefined4 *)(param_1 + 0xc);
  *(undefined4 *)(param_1 + 0xc) = local_34;
  local_38 = uVar1;
  local_34 = uVar2;
  std::function<void(gpg::FlushStatus)>::swap(afStack_30,(function *)(param_1 + 0x10));
  FUN_0050fd1e(a_Stack_40);
  std::_Function_base::~_Function_base((_Function_base *)local_50);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_64);
  std::_Function_base::~_Function_base(a_Stack_60);
  return param_1;
}
