// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 434 functions

// ---- FUN_005400e0  @ 0x5400e0
undefined4 FUN_005400e0(undefined4 param_1,undefined4 param_2)

{
  undefined4 uVar1;
  undefined1 auStack_30 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_2c [4];
  undefined4 local_28;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  
  FUN_0053777a(auStack_30,param_1);
  FUN_0053fff8(&local_28,0,&local_20,auStack_30,param_2);
  local_20 = local_28;
  local_1c = local_24;
  local_24 = 0;
  local_28 = 0;
  uVar1 = FUN_00510986(param_1,&local_20);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_1c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_24);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_2c);
  return uVar1;
}

// ---- FUN_005405ca  @ 0x5405ca
void FUN_005405ca(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  int *piVar2;
  
  piVar2 = (int *)*param_1;
  iVar1 = *(int *)(*piVar2 + 0x1c);
  if (*(int *)(iVar1 + 8) == 0) {
    iVar1 = FUN_007c4d54(iVar1,0,piVar2[2],piVar2[3],param_1,param_2,param_3,param_4);
  }
  (**(code **)(iVar1 + 0xc))();
  return;
}

// ---- FUN_005405f8  @ 0x5405f8
void FUN_005405f8(int param_1)

{
  int iVar1;
  
  iVar1 = FUN_00548c48(param_1 + 0x90);
  if (iVar1 == 0) {
    FUN_00548de4(param_1 + 0x90,"connect");
    return;
  }
  return;
}

// ---- FUN_0054072c  @ 0x54072c
void FUN_0054072c(undefined4 *param_1,int param_2,int param_3)

{
  void *pvVar1;
  uint uVar2;
  
  uVar2 = param_3 - param_2 >> 2;
  pvVar1 = (void *)0x0;
  if (uVar2 != 0) {
    if (0x3fffffff < uVar2) {
      FUN_007c4844();
    }
    pvVar1 = operator_new(uVar2 * 4);
  }
  param_1[2] = (void *)(uVar2 * 4 + (int)pvVar1);
  *param_1 = pvVar1;
  for (; param_2 != param_3; param_2 = param_2 + 4) {
    if (pvVar1 != (void *)0x0) {
      FUN_007c64e8(pvVar1,param_2);
    }
    pvVar1 = (void *)((int)pvVar1 + 4);
  }
  param_1[1] = pvVar1;
  return;
}

// ---- FUN_005407be  @ 0x5407be
void FUN_005407be(int param_1)

{
  undefined4 *puVar1;
  
  puVar1 = *(undefined4 **)(param_1 + 0xc);
  (**(code **)*puVar1)(puVar1);
  operator_delete(puVar1);
  return;
}

// ---- FUN_005407ea  @ 0x5407ea
void FUN_005407ea(int param_1)

{
  undefined4 *puVar1;
  
  puVar1 = *(undefined4 **)(param_1 + 0xc);
  (**(code **)*puVar1)(puVar1);
  operator_delete(puVar1);
  return;
}

// ---- FUN_00540816  @ 0x540816
void FUN_00540816(int param_1)

{
  undefined4 *puVar1;
  
  puVar1 = *(undefined4 **)(param_1 + 0xc);
  (**(code **)*puVar1)(puVar1);
  operator_delete(puVar1);
  return;
}

// ---- FUN_00540842  @ 0x540842
void FUN_00540842(int param_1)

{
  undefined4 *puVar1;
  
  puVar1 = *(undefined4 **)(param_1 + 0xc);
  (**(code **)*puVar1)(puVar1);
  operator_delete(puVar1);
  return;
}

// ---- FUN_0054086e  @ 0x54086e
void FUN_0054086e(int param_1)

{
  undefined4 *puVar1;
  
  puVar1 = *(undefined4 **)(param_1 + 0xc);
  (**(code **)*puVar1)(puVar1);
  operator_delete(puVar1);
  return;
}

// ---- FUN_005408e8  @ 0x5408e8
void FUN_005408e8(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  undefined4 extraout_r2;
  
  iVar1 = FUN_00548c48(param_1 + 0x90);
  if (iVar1 == 0) {
    FUN_00548de4(param_1 + 0x90,"disconnect");
    FUN_005457c4();
    FUN_00518614(param_1,0xfffffffd,extraout_r2,param_4);
    return;
  }
  return;
}

// ---- FUN_00540920  @ 0x540920
int FUN_00540920(int param_1)

{
  FUN_007c5914(param_1 + 0x1c);
  FUN_007c5914(param_1 + 0x18);
  FUN_007c5914(param_1 + 0x14);
  FUN_007c5914(param_1 + 0x10);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(param_1 + 4));
  return param_1;
}

// ---- FUN_0054094e  @ 0x54094e
int FUN_0054094e(int param_1)

{
  if (*(void **)(param_1 + 0x14) != (void *)0x0) {
    operator_delete(*(void **)(param_1 + 0x14));
  }
  FUN_007c5914(param_1 + 0x10);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(param_1 + 4));
  return param_1;
}

// ---- FUN_0054096c  @ 0x54096c
void FUN_0054096c(int param_1,undefined4 param_2)

{
  int iVar1;
  undefined4 uVar2;
  undefined4 extraout_r2;
  undefined4 extraout_r3;
  int iVar3;
  mutex *local_14;
  
  local_14 = (mutex *)(param_1 + 0xa0);
  iVar3 = param_1;
  std::mutex::lock(local_14);
  iVar1 = FUN_00548c48(param_2);
  if (iVar1 == 0) {
    FUN_005166ae(1,"NearbyConnections client connected.",extraout_r2,extraout_r3,iVar3);
    FUN_00544d54();
    uVar2 = 1;
  }
  else {
    FUN_005166ae(1,"NearbyConnections client disconnected.",extraout_r2,extraout_r3,iVar3);
    FUN_005457c4();
    uVar2 = 0xfffffffd;
  }
  FUN_00518614(param_1,uVar2);
  std::lock_guard<std::mutex>::~lock_guard((lock_guard<std::mutex> *)&local_14);
  return;
}

// ---- FUN_00540b94  @ 0x540b94
void FUN_00540b94(int *param_1)

{
  param_1 = (int *)*param_1;
  std::function<void(long_long,std::string_const&)>::operator()
            (CONCAT44(param_1 + 4,*(int *)(*param_1 + 0x1c) + 0x10),(string *)param_1[2]);
  return;
}

// ---- FUN_00540bb2  @ 0x540bb2
void FUN_00540bb2(int *param_1)

{
  param_1 = (int *)*param_1;
  std::function<void(long_long,std::string_const&)>::operator()
            (CONCAT44(param_1 + 4,*(int *)(*param_1 + 0x1c) + 0x10),(string *)param_1[2]);
  return;
}

// ---- FUN_00540bd0  @ 0x540bd0
undefined4 * FUN_00540bd0(undefined4 *param_1)

{
  _Function_base *this;
  
  this = (_Function_base *)*param_1;
  if (this != (_Function_base *)0x0) {
    std::_Function_base::~_Function_base(this + 0x10);
    std::_Function_base::~_Function_base(this);
    operator_delete(this);
  }
  *param_1 = 0;
  return param_1;
}

// ---- FUN_00540d0c  @ 0x540d0c
undefined4 * FUN_00540d0c(undefined4 *param_1)

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

// ---- FUN_00540d52  @ 0x540d52
void FUN_00540d52(undefined4 *param_1,undefined4 *param_2)

{
  undefined4 uVar1;
  
  *param_1 = *param_2;
  param_1[1] = 0;
  uVar1 = param_2[1];
  param_2[1] = 0;
  param_1[1] = uVar1;
  *param_2 = 0;
  return;
}

// ---- FUN_00540d68  @ 0x540d68
undefined4 * FUN_00540d68(undefined4 *param_1)

{
  _Function_base *this;
  
  this = (_Function_base *)param_1[7];
  *param_1 = &PTR_FUN_00540d68_1_00925ef8;
  if (this != (_Function_base *)0x0) {
    std::_Function_base::~_Function_base(this + 0x10);
    std::_Function_base::~_Function_base(this);
    operator_delete(this);
  }
  param_1[7] = 0;
  std::_Function_base::~_Function_base((_Function_base *)(param_1 + 3));
  *param_1 = &PTR__IEndpointDiscoveryListener_1_00925ec8;
  std::__weak_count<(__gnu_cxx::_Lock_policy)2>::~__weak_count
            ((__weak_count<(__gnu_cxx::_Lock_policy)2> *)(param_1 + 2));
  return param_1;
}

// ---- FUN_00540db8  @ 0x540db8
void * FUN_00540db8(void *param_1)

{
  FUN_00540d68();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_00540dcc  @ 0x540dcc
undefined4 * FUN_00540dcc(undefined4 *param_1,function *param_2,int param_3,function *param_4)

{
  void *pvVar1;
  
  param_1[1] = 0;
  param_1[2] = 0;
  *param_1 = &PTR_FUN_00540e78_1_00925f10;
  std::function<void(std::function<void()>)>::function
            ((function<void(std::function<void()>)> *)(param_1 + 3),param_2);
  pvVar1 = operator_new(0x20);
  *(undefined4 *)((int)pvVar1 + 8) = 0;
  if (*(int *)(param_3 + 8) != 0) {
    *(undefined4 *)((int)pvVar1 + 0xc) = *(undefined4 *)(param_3 + 0xc);
    *(undefined4 *)((int)pvVar1 + 8) = *(undefined4 *)(param_3 + 8);
    (**(code **)(param_3 + 8))(pvVar1,param_3,2);
  }
  std::function<void(long_long,std::string_const&)>::function
            ((function<void(long_long,std::string_const&)> *)((int)pvVar1 + 0x10),
             (function *)(param_3 + 0x10));
  param_1[7] = pvVar1;
  std::function<void(long_long,std::string_const&)>::function
            ((function<void(long_long,std::string_const&)> *)(param_1 + 8),param_4);
  return param_1;
}

// ---- FUN_00540e78  @ 0x540e78
undefined4 * FUN_00540e78(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_00540e78_1_00925f10;
  std::_Function_base::~_Function_base((_Function_base *)(param_1 + 8));
  FUN_00540bd0(param_1 + 7);
  std::_Function_base::~_Function_base((_Function_base *)(param_1 + 3));
  *param_1 = &PTR__IMessageListener_1_00925ee0;
  std::__weak_count<(__gnu_cxx::_Lock_policy)2>::~__weak_count
            ((__weak_count<(__gnu_cxx::_Lock_policy)2> *)(param_1 + 2));
  return param_1;
}

// ---- FUN_00540ebc  @ 0x540ebc
void * FUN_00540ebc(void *param_1)

{
  FUN_00540e78();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_00540ece  @ 0x540ece
void FUN_00540ece(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  code *pcVar1;
  int *piStack_28;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  
  pcVar1 = *(code **)(*param_1 + 0x34);
  piStack_28 = param_1;
  local_24 = param_2;
  local_20 = param_3;
  local_1c = param_4;
  FUN_007c64e8(&piStack_28);
  local_24 = 0;
  local_20 = 0;
  local_1c = 0;
  FUN_0054072c((vector<std::string,std::allocator<std::string>> *)&local_24,&piStack_28,&local_24);
  (*pcVar1)(param_1,(vector<std::string,std::allocator<std::string>> *)&local_24,param_3);
  std::vector<std::string,std::allocator<std::string>>::~vector
            ((vector<std::string,std::allocator<std::string>> *)&local_24);
  FUN_007c5914(&piStack_28);
  return;
}

// ---- FUN_00540f7e  @ 0x540f7e
undefined4 * FUN_00540f7e(undefined4 *param_1,int param_2)

{
  int iStack_14;
  
  iStack_14 = param_2;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&iStack_14,(__weak_count *)(param_2 + 8))
  ;
  *param_1 = *(undefined4 *)(param_2 + 4);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(param_1 + 1),
             (__shared_count *)&iStack_14);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&iStack_14);
  return param_1;
}

// ---- FUN_00540fac  @ 0x540fac
void FUN_00540fac(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                 undefined4 param_5)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  undefined4 uVar3;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_4c [4];
  undefined4 *local_48 [2];
  code *local_40;
  undefined4 local_3c;
  undefined4 local_38;
  undefined4 local_34;
  undefined4 local_30;
  undefined4 uStack_2c;
  undefined1 auStack_28 [12];
  
  if (*(int *)(*(int *)(param_1 + 0x1c) + 0x18) != 0) {
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
              (a_Stack_4c,(__weak_count *)(param_1 + 8));
    uVar3 = *(undefined4 *)(param_1 + 4);
    local_38 = uVar3;
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_34,(__shared_count *)a_Stack_4c)
    ;
    local_30 = param_3;
    uStack_2c = param_4;
    FUN_007c64e8(auStack_28,param_5);
    local_40 = (code *)0x0;
    puVar2 = operator_new(0x18);
    uVar1 = local_34;
    *puVar2 = local_38;
    puVar2[1] = 0;
    local_34 = 0;
    local_38 = 0;
    puVar2[1] = uVar1;
    puVar2[2] = local_30;
    puVar2[3] = uStack_2c;
    FUN_007c64e8(puVar2 + 4,auStack_28,local_30,uStack_2c,uVar3);
    local_3c = 0x540b95;
    local_40 = (code *)0x5409d1;
    local_48[0] = puVar2;
    std::function<void(std::function<void()>)>::operator()
              ((function<void(std::function<void()>)> *)(param_1 + 0xc),(_Function_base *)local_48);
    std::_Function_base::~_Function_base((_Function_base *)local_48);
    FUN_007c5914(auStack_28);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_34);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_4c);
  }
  return;
}

// ---- FUN_0054109c  @ 0x54109c
void FUN_0054109c(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                 undefined4 param_5,vector *param_6,undefined1 param_7)

{
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_5c [4];
  _Function_base a_Stack_58 [16];
  undefined4 local_48;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_44 [4];
  undefined4 local_40;
  undefined4 uStack_3c;
  undefined1 auStack_38 [4];
  vector<unsigned_char,std::allocator<unsigned_char>> avStack_34 [12];
  undefined1 local_28;
  
  if (*(int *)(*(int *)(param_1 + 0x1c) + 8) != 0) {
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
              (a_Stack_5c,(__weak_count *)(param_1 + 8));
    local_48 = *(undefined4 *)(param_1 + 4);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
              (a_Stack_44,(__shared_count *)a_Stack_5c);
    local_40 = param_3;
    uStack_3c = param_4;
    FUN_007c64e8(auStack_38,param_5);
    std::vector<unsigned_char,std::allocator<unsigned_char>>::vector(avStack_34,param_6);
    local_28 = param_7;
    std::function<void()>::
    function<gpg::MessageListenerHelperImpl::WrappedMessageListener::OnMessageReceived(long_long,std::string_const&,std::vector<unsigned_char,std::allocator<unsigned_char>>const&,bool)::_lambda()_1_,void>
              (a_Stack_58,&local_48);
    std::function<void(std::function<void()>)>::operator()
              ((function<void(std::function<void()>)> *)(param_1 + 0xc),a_Stack_58);
    std::_Function_base::~_Function_base(a_Stack_58);
    FUN_0054094e(&local_48);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_5c);
  }
  return;
}

// ---- FUN_0054113c  @ 0x54113c
void FUN_0054113c(int param_1,undefined4 param_2,string *param_3,undefined4 param_4,
                 undefined4 param_5)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  undefined4 extraout_r1;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_54 [4];
  undefined4 *local_50 [2];
  code *local_48;
  undefined4 local_44;
  undefined4 local_40;
  undefined4 local_3c;
  string *local_38;
  undefined4 uStack_34;
  undefined1 auStack_30 [12];
  
  if (*(int *)(*(int *)(param_1 + 0x1c) + 0x18) != 0) {
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
              (a_Stack_54,(__weak_count *)(param_1 + 8));
    local_40 = *(undefined4 *)(param_1 + 4);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_3c,(__shared_count *)a_Stack_54)
    ;
    local_38 = param_3;
    uStack_34 = param_4;
    FUN_007c64e8(auStack_30,param_5);
    local_48 = (code *)0x0;
    puVar2 = operator_new(0x18);
    uVar1 = local_3c;
    *puVar2 = local_40;
    puVar2[1] = 0;
    local_3c = 0;
    local_40 = 0;
    puVar2[1] = uVar1;
    puVar2[2] = local_38;
    puVar2[3] = uStack_34;
    FUN_007c64e8(puVar2 + 4,auStack_30);
    local_44 = 0x540bb3;
    local_48 = (code *)0x540a47;
    local_50[0] = puVar2;
    std::function<void(std::function<void()>)>::operator()
              ((function<void(std::function<void()>)> *)(param_1 + 0xc),(_Function_base *)local_50);
    std::_Function_base::~_Function_base((_Function_base *)local_50);
    FUN_007c5914(auStack_30);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_3c);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_54);
    param_2 = extraout_r1;
  }
  std::function<void(long_long,std::string_const&)>::operator()
            (CONCAT44(param_2,param_1 + 0x20),param_3);
  return;
}

// ---- FUN_00541248  @ 0x541248
void FUN_00541248(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                 EndpointDetails *param_5)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_54 [4];
  undefined4 *local_50 [2];
  code *local_48;
  undefined1 *local_44;
  undefined4 local_40;
  undefined4 local_3c;
  undefined4 local_38;
  undefined4 uStack_34;
  EndpointDetails aEStack_30 [4];
  undefined1 auStack_2c [4];
  undefined1 auStack_28 [4];
  undefined1 auStack_24 [8];
  
  if (*(int *)(*(int *)(param_1 + 0x1c) + 8) != 0) {
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
              (a_Stack_54,(__weak_count *)(param_1 + 8));
    local_40 = *(undefined4 *)(param_1 + 4);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_3c,(__shared_count *)a_Stack_54)
    ;
    local_38 = param_3;
    uStack_34 = param_4;
    gpg::EndpointDetails::EndpointDetails(aEStack_30,param_5);
    local_48 = (code *)0x0;
    puVar2 = operator_new(0x20);
    uVar1 = local_3c;
    *puVar2 = local_40;
    puVar2[1] = 0;
    local_3c = 0;
    local_40 = 0;
    puVar2[1] = uVar1;
    puVar2[2] = local_38;
    puVar2[3] = uStack_34;
    gpg::EndpointDetails::EndpointDetails((EndpointDetails *)(puVar2 + 4),aEStack_30);
    local_44 = &LAB_005405a8_1;
    local_48 = (code *)0x540abd;
    local_50[0] = puVar2;
    std::function<void(std::function<void()>)>::operator()
              ((function<void(std::function<void()>)> *)(param_1 + 0xc),(_Function_base *)local_50);
    std::_Function_base::~_Function_base((_Function_base *)local_50);
    FUN_007c5914(auStack_24);
    FUN_007c5914(auStack_28);
    FUN_007c5914(auStack_2c);
    FUN_007c5914(aEStack_30);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_3c);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_54);
  }
  return;
}

// ---- FUN_00541348  @ 0x541348
void FUN_00541348(undefined4 param_1,int param_2,undefined4 param_3,undefined4 param_4,
                 undefined4 param_5,undefined4 *param_6,function *param_7,function *param_8)

{
  code *pcVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined1 auStack_70 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_6c [4];
  function<void(std::function<void()>)> afStack_68 [16];
  _Function_base a_Stack_58 [8];
  code *local_50;
  undefined4 local_4c;
  function<void(std::function<void()>)> afStack_48 [16];
  _Function_base a_Stack_38 [8];
  code *local_30;
  undefined4 local_2c;
  
  FUN_00540d52(auStack_70,param_3);
  uVar2 = *param_6;
  uVar3 = param_6[1];
  std::function<void(std::function<void()>)>::function(afStack_68,param_7);
  local_50 = (code *)0x0;
  pcVar1 = *(code **)(param_7 + 0x18);
  if (pcVar1 != (code *)0x0) {
    local_4c = *(undefined4 *)(param_7 + 0x1c);
    local_50 = pcVar1;
    (*pcVar1)(a_Stack_58,param_7 + 0x10,2);
  }
  std::function<void(std::function<void()>)>::function(afStack_48,param_8);
  local_30 = (code *)0x0;
  pcVar1 = *(code **)(param_8 + 0x18);
  if (pcVar1 != (code *)0x0) {
    local_2c = *(undefined4 *)(param_8 + 0x1c);
    local_30 = pcVar1;
    (*pcVar1)(a_Stack_38,param_8 + 0x10,2);
  }
  if (param_2 != 0) {
    FUN_00551c70(param_2,auStack_70,param_4,param_5,uVar2,uVar3,afStack_68,afStack_48);
  }
  std::_Function_base::~_Function_base(a_Stack_38);
  std::_Function_base::~_Function_base((_Function_base *)afStack_48);
  std::_Function_base::~_Function_base(a_Stack_58);
  std::_Function_base::~_Function_base((_Function_base *)afStack_68);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_6c);
  return;
}

// ---- FUN_00541432  @ 0x541432
void FUN_00541432(undefined4 param_1,int param_2,undefined4 param_3,undefined4 param_4,
                 undefined4 param_5,undefined4 param_6,function *param_7,undefined4 *param_8)

{
  code *pcVar1;
  undefined1 auStack_50 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_4c [4];
  undefined4 local_48;
  undefined4 local_44;
  function<void(std::function<void()>)> afStack_40 [16];
  _Function_base a_Stack_30 [8];
  code *local_28;
  undefined4 local_24;
  
  FUN_00540d52(auStack_50,param_3);
  std::function<void(std::function<void()>)>::function(afStack_40,param_7);
  local_28 = (code *)0x0;
  pcVar1 = *(code **)(param_7 + 0x18);
  if (pcVar1 != (code *)0x0) {
    local_24 = *(undefined4 *)(param_7 + 0x1c);
    local_28 = pcVar1;
    (*pcVar1)(a_Stack_30,param_7 + 0x10,2);
  }
  local_48 = *param_8;
  local_44 = param_8[1];
  param_8[1] = 0;
  *param_8 = 0;
  if (param_2 != 0) {
    FUN_005509dc(param_2,auStack_50,param_4,param_5,param_6,afStack_40,&local_48);
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_44);
  std::_Function_base::~_Function_base(a_Stack_30);
  std::_Function_base::~_Function_base((_Function_base *)afStack_40);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_4c);
  return;
}

// ---- FUN_005414dc  @ 0x5414dc
int * FUN_005414dc(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                  undefined4 param_5,undefined4 param_6,undefined4 param_7,undefined4 param_8,
                  undefined4 param_9)

{
  void *pvVar1;
  undefined4 *puVar2;
  int iVar3;
  undefined1 auStack_18 [4];
  int local_14;
  
  *param_1 = 0;
  *(undefined4 *)(param_1 + 1) = 0;
  pvVar1 = operator_new(0x70);
  *param_1 = (int)pvVar1;
  FUN_00541348(auStack_18,pvVar1,param_4,param_5,param_6,param_7,param_8,param_9);
  iVar3 = *param_1;
  local_14 = 0;
  puVar2 = operator_new(0x14);
  if (puVar2 != (undefined4 *)0x0) {
    puVar2[1] = 1;
    puVar2[2] = 1;
    puVar2[3] = iVar3;
    *puVar2 = &PTR_LAB_0054031c_1_00925f28;
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

// ---- FUN_00541590  @ 0x541590
void FUN_00541590(int param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 in_stack_00000008;
  undefined4 in_stack_0000000c;
  undefined1 auStack_38 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_34 [4];
  undefined4 local_30;
  undefined4 local_2c;
  undefined4 local_28;
  undefined4 local_24 [2];
  
  FUN_00540f7e(auStack_38,param_1);
  FUN_005414dc(&local_30,0,&local_28,auStack_38,param_2,param_3,&stack0x00000000,in_stack_00000008,
               in_stack_0000000c);
  local_28 = local_30;
  local_24[0] = local_2c;
  local_2c = 0;
  local_30 = 0;
  FUN_00519138(param_1 + 0x14,&local_28);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_24);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_2c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_34);
  return;
}

// ---- FUN_00541614  @ 0x541614
int * FUN_00541614(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  void *pvVar1;
  undefined4 *puVar2;
  int iVar3;
  int *local_20;
  undefined4 uStack_1c;
  
  *param_1 = 0;
  *(undefined4 *)(param_1 + 1) = 0;
  local_20 = param_1;
  uStack_1c = param_2;
  pvVar1 = operator_new(0x14);
  *param_1 = (int)pvVar1;
  FUN_00540d52((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_20,param_4);
  if (pvVar1 != (void *)0x0) {
    FUN_005535a8(pvVar1,(__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_20);
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&uStack_1c);
  iVar3 = *param_1;
  local_20 = (int *)0x0;
  puVar2 = operator_new(0x14);
  if (puVar2 != (undefined4 *)0x0) {
    puVar2[1] = 1;
    puVar2[2] = 1;
    puVar2[3] = iVar3;
    *puVar2 = &PTR_LAB_00540308_1_00925f48;
  }
  local_20 = (int *)param_1[1];
  param_1[1] = (int)puVar2;
  iVar3 = *param_1;
  if (iVar3 != 0) {
    *(int *)(iVar3 + 4) = iVar3;
    std::__weak_count<(__gnu_cxx::_Lock_policy)2>::operator=
              ((__weak_count<(__gnu_cxx::_Lock_policy)2> *)(iVar3 + 8),
               (__shared_count *)(param_1 + 1));
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_20);
  return param_1;
}

// ---- FUN_005416d8  @ 0x5416d8
void FUN_005416d8(int param_1)

{
  undefined1 auStack_30 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_2c [4];
  undefined4 local_28;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c [2];
  
  FUN_00540f7e(auStack_30,param_1);
  FUN_00541614(&local_28,0,&local_20,auStack_30);
  local_20 = local_28;
  local_1c[0] = local_24;
  local_24 = 0;
  local_28 = 0;
  FUN_00519138(param_1 + 0x14,&local_20);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_1c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_24);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_2c);
  return;
}

// ---- FUN_00541740  @ 0x541740
int * FUN_00541740(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                  undefined4 param_5,undefined4 param_6,undefined4 *param_7)

{
  void *pvVar1;
  undefined4 *puVar2;
  int iVar3;
  undefined4 local_30;
  undefined4 local_2c;
  int local_28;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_24 [8];
  
  *param_1 = 0;
  *(undefined4 *)(param_1 + 1) = 0;
  pvVar1 = operator_new(0x2c);
  *param_1 = (int)pvVar1;
  FUN_00540d52((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_28,param_4);
  local_30 = *param_7;
  local_2c = param_7[1];
  param_7[1] = 0;
  *param_7 = 0;
  if (pvVar1 != (void *)0x0) {
    FUN_0054f9e0(pvVar1,(__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_28,param_5,param_6,
                 &local_30);
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_2c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_24);
  iVar3 = *param_1;
  local_28 = 0;
  puVar2 = operator_new(0x14);
  if (puVar2 != (undefined4 *)0x0) {
    puVar2[1] = 1;
    puVar2[2] = 1;
    puVar2[3] = iVar3;
    *puVar2 = &PTR_LAB_005402f4_1_00925f68;
  }
  local_28 = param_1[1];
  param_1[1] = (int)puVar2;
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

// ---- FUN_00541830  @ 0x541830
int * FUN_00541830(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                  undefined4 param_5)

{
  void *pvVar1;
  undefined4 *puVar2;
  int iVar3;
  int *local_20;
  undefined4 uStack_1c;
  
  *param_1 = 0;
  *(undefined4 *)(param_1 + 1) = 0;
  local_20 = param_1;
  uStack_1c = param_2;
  pvVar1 = operator_new(0x18);
  *param_1 = (int)pvVar1;
  FUN_00540d52((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_20,param_4);
  if (pvVar1 != (void *)0x0) {
    FUN_005503cc(pvVar1,(__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_20,param_5);
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&uStack_1c);
  iVar3 = *param_1;
  local_20 = (int *)0x0;
  puVar2 = operator_new(0x14);
  if (puVar2 != (undefined4 *)0x0) {
    puVar2[1] = 1;
    puVar2[2] = 1;
    puVar2[3] = iVar3;
    *puVar2 = &PTR_LAB_005402e0_1_00925f88;
  }
  local_20 = (int *)param_1[1];
  param_1[1] = (int)puVar2;
  iVar3 = *param_1;
  if (iVar3 != 0) {
    *(int *)(iVar3 + 4) = iVar3;
    std::__weak_count<(__gnu_cxx::_Lock_policy)2>::operator=
              ((__weak_count<(__gnu_cxx::_Lock_policy)2> *)(iVar3 + 8),
               (__shared_count *)(param_1 + 1));
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_20);
  return param_1;
}

// ---- FUN_005418f8  @ 0x5418f8
void FUN_005418f8(int param_1,undefined4 param_2)

{
  undefined1 auStack_30 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_2c [4];
  undefined4 local_28;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  
  FUN_00540f7e(auStack_30,param_1);
  FUN_00541830(&local_28,0,&local_20,auStack_30,param_2);
  local_20 = local_28;
  local_1c = local_24;
  local_24 = 0;
  local_28 = 0;
  FUN_00519138(param_1 + 0x14,&local_20);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_1c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_24);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_2c);
  return;
}

// ---- FUN_0054196c  @ 0x54196c
int * FUN_0054196c(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                  undefined4 param_5,undefined4 *param_6,undefined4 *param_7)

{
  void *pvVar1;
  undefined4 *puVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  int iVar5;
  undefined4 local_30;
  undefined4 local_2c;
  int local_28;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_24 [8];
  
  *param_1 = 0;
  *(undefined4 *)(param_1 + 1) = 0;
  pvVar1 = operator_new(0x28);
  *param_1 = (int)pvVar1;
  FUN_00540d52((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_28,param_4);
  local_30 = *param_7;
  local_2c = param_7[1];
  uVar3 = *param_6;
  uVar4 = param_6[1];
  param_7[1] = 0;
  *param_7 = 0;
  if (pvVar1 != (void *)0x0) {
    FUN_00552ea4(pvVar1,(__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_28,param_5,uVar4,uVar3,
                 uVar4,&local_30);
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_2c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_24);
  iVar5 = *param_1;
  local_28 = 0;
  puVar2 = operator_new(0x14);
  if (puVar2 != (undefined4 *)0x0) {
    puVar2[1] = 1;
    puVar2[2] = 1;
    puVar2[3] = iVar5;
    *puVar2 = &PTR_LAB_005402cc_1_00925fa8;
  }
  local_28 = param_1[1];
  param_1[1] = (int)puVar2;
  iVar5 = *param_1;
  if (iVar5 != 0) {
    *(int *)(iVar5 + 4) = iVar5;
    std::__weak_count<(__gnu_cxx::_Lock_policy)2>::operator=
              ((__weak_count<(__gnu_cxx::_Lock_policy)2> *)(iVar5 + 8),
               (__shared_count *)(param_1 + 1));
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_28);
  return param_1;
}

// ---- FUN_00541a64  @ 0x541a64
int * FUN_00541a64(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                  undefined4 param_5)

{
  void *pvVar1;
  undefined4 *puVar2;
  int iVar3;
  int *local_20;
  undefined4 uStack_1c;
  
  *param_1 = 0;
  *(undefined4 *)(param_1 + 1) = 0;
  local_20 = param_1;
  uStack_1c = param_2;
  pvVar1 = operator_new(0x18);
  *param_1 = (int)pvVar1;
  FUN_00540d52((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_20,param_4);
  if (pvVar1 != (void *)0x0) {
    FUN_0055371c(pvVar1,(__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_20,param_5);
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&uStack_1c);
  iVar3 = *param_1;
  local_20 = (int *)0x0;
  puVar2 = operator_new(0x14);
  if (puVar2 != (undefined4 *)0x0) {
    puVar2[1] = 1;
    puVar2[2] = 1;
    puVar2[3] = iVar3;
    *puVar2 = &PTR_LAB_005402b8_1_00925fc8;
  }
  local_20 = (int *)param_1[1];
  param_1[1] = (int)puVar2;
  iVar3 = *param_1;
  if (iVar3 != 0) {
    *(int *)(iVar3 + 4) = iVar3;
    std::__weak_count<(__gnu_cxx::_Lock_policy)2>::operator=
              ((__weak_count<(__gnu_cxx::_Lock_policy)2> *)(iVar3 + 8),
               (__shared_count *)(param_1 + 1));
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_20);
  return param_1;
}

// ---- FUN_00541b2c  @ 0x541b2c
void FUN_00541b2c(int param_1,undefined4 param_2)

{
  undefined1 auStack_30 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_2c [4];
  undefined4 local_28;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  
  FUN_00540f7e(auStack_30,param_1);
  FUN_00541a64(&local_28,0,&local_20,auStack_30,param_2);
  local_20 = local_28;
  local_1c = local_24;
  local_24 = 0;
  local_28 = 0;
  FUN_00519138(param_1 + 0x14,&local_20);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_1c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_24);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_2c);
  return;
}

// ---- FUN_00541ba0  @ 0x541ba0
int * FUN_00541ba0(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                  undefined4 param_5,undefined4 param_6,undefined4 param_7,undefined4 param_8,
                  undefined4 param_9)

{
  void *pvVar1;
  undefined4 *puVar2;
  int iVar3;
  undefined1 auStack_18 [4];
  int local_14;
  
  *param_1 = 0;
  *(undefined4 *)(param_1 + 1) = 0;
  pvVar1 = operator_new(0x50);
  *param_1 = (int)pvVar1;
  FUN_00541432(auStack_18,pvVar1,param_4,param_5,param_6,param_7,param_8,param_9);
  iVar3 = *param_1;
  local_14 = 0;
  puVar2 = operator_new(0x14);
  if (puVar2 != (undefined4 *)0x0) {
    puVar2[1] = 1;
    puVar2[2] = 1;
    puVar2[3] = iVar3;
    *puVar2 = &PTR_LAB_005402a4_1_00925fe8;
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

// ---- FUN_00541c54  @ 0x541c54
int * FUN_00541c54(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                  undefined4 param_5,undefined4 param_6,undefined1 *param_7)

{
  void *pvVar1;
  undefined4 *puVar2;
  int iVar3;
  int local_20;
  undefined4 uStack_1c;
  
  *param_1 = 0;
  *(undefined4 *)(param_1 + 1) = 0;
  local_20 = param_3;
  uStack_1c = param_4;
  pvVar1 = operator_new(0x30);
  *param_1 = (int)pvVar1;
  FUN_00540d52((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_20,param_4);
  if (pvVar1 != (void *)0x0) {
    FUN_0055168c(pvVar1,(__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_20,param_5,param_6,
                 *param_7,param_2);
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&uStack_1c);
  iVar3 = *param_1;
  local_20 = 0;
  puVar2 = operator_new(0x14);
  if (puVar2 != (undefined4 *)0x0) {
    puVar2[1] = 1;
    puVar2[2] = 1;
    puVar2[3] = iVar3;
    *puVar2 = &PTR_LAB_00540290_1_00926008;
  }
  local_20 = param_1[1];
  param_1[1] = (int)puVar2;
  iVar3 = *param_1;
  if (iVar3 != 0) {
    *(int *)(iVar3 + 4) = iVar3;
    std::__weak_count<(__gnu_cxx::_Lock_policy)2>::operator=
              ((__weak_count<(__gnu_cxx::_Lock_policy)2> *)(iVar3 + 8),
               (__shared_count *)(param_1 + 1));
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_20);
  return param_1;
}

// ---- FUN_00541d24  @ 0x541d24
void FUN_00541d24(int param_1,undefined4 param_2,undefined4 param_3)

{
  undefined1 local_39;
  undefined1 auStack_38 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_34 [4];
  undefined4 local_30;
  undefined4 local_2c;
  undefined4 local_28;
  undefined4 local_24 [2];
  
  FUN_00540f7e(auStack_38,param_1);
  local_39 = 1;
  FUN_00541c54(&local_30,0,&local_28,auStack_38,param_2,param_3,&local_39);
  local_28 = local_30;
  local_24[0] = local_2c;
  local_2c = 0;
  local_30 = 0;
  FUN_00519138(param_1 + 0x14,&local_28);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_24);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_2c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_34);
  return;
}

// ---- FUN_00541e28  @ 0x541e28
int * FUN_00541e28(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                  undefined4 param_5)

{
  void *pvVar1;
  undefined4 *puVar2;
  int iVar3;
  int *local_20;
  undefined4 uStack_1c;
  
  *param_1 = 0;
  *(undefined4 *)(param_1 + 1) = 0;
  local_20 = param_1;
  uStack_1c = param_2;
  pvVar1 = operator_new(0x18);
  *param_1 = (int)pvVar1;
  FUN_00540d52((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_20,param_4);
  if (pvVar1 != (void *)0x0) {
    FUN_00550230(pvVar1,(__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_20,param_5);
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&uStack_1c);
  iVar3 = *param_1;
  local_20 = (int *)0x0;
  puVar2 = operator_new(0x14);
  if (puVar2 != (undefined4 *)0x0) {
    puVar2[1] = 1;
    puVar2[2] = 1;
    puVar2[3] = iVar3;
    *puVar2 = &PTR_LAB_0054027c_1_00926028;
  }
  local_20 = (int *)param_1[1];
  param_1[1] = (int)puVar2;
  iVar3 = *param_1;
  if (iVar3 != 0) {
    *(int *)(iVar3 + 4) = iVar3;
    std::__weak_count<(__gnu_cxx::_Lock_policy)2>::operator=
              ((__weak_count<(__gnu_cxx::_Lock_policy)2> *)(iVar3 + 8),
               (__shared_count *)(param_1 + 1));
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_20);
  return param_1;
}

// ---- FUN_00541ef0  @ 0x541ef0
void FUN_00541ef0(int param_1,undefined4 param_2)

{
  undefined1 auStack_30 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_2c [4];
  undefined4 local_28;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  
  FUN_00540f7e(auStack_30,param_1);
  FUN_00541e28(&local_28,0,&local_20,auStack_30,param_2);
  local_20 = local_28;
  local_1c = local_24;
  local_24 = 0;
  local_28 = 0;
  FUN_00519138(param_1 + 0x14,&local_20);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_1c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_24);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_2c);
  return;
}

// ---- FUN_00541f64  @ 0x541f64
int * FUN_00541f64(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  void *pvVar1;
  undefined4 *puVar2;
  int iVar3;
  int *local_20;
  undefined4 uStack_1c;
  
  *param_1 = 0;
  *(undefined4 *)(param_1 + 1) = 0;
  local_20 = param_1;
  uStack_1c = param_2;
  pvVar1 = operator_new(0x14);
  *param_1 = (int)pvVar1;
  FUN_00540d52((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_20,param_4);
  if (pvVar1 != (void *)0x0) {
    FUN_00553844(pvVar1,(__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_20);
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&uStack_1c);
  iVar3 = *param_1;
  local_20 = (int *)0x0;
  puVar2 = operator_new(0x14);
  if (puVar2 != (undefined4 *)0x0) {
    puVar2[1] = 1;
    puVar2[2] = 1;
    puVar2[3] = iVar3;
    *puVar2 = &PTR_LAB_00540268_1_00926048;
  }
  local_20 = (int *)param_1[1];
  param_1[1] = (int)puVar2;
  iVar3 = *param_1;
  if (iVar3 != 0) {
    *(int *)(iVar3 + 4) = iVar3;
    std::__weak_count<(__gnu_cxx::_Lock_policy)2>::operator=
              ((__weak_count<(__gnu_cxx::_Lock_policy)2> *)(iVar3 + 8),
               (__shared_count *)(param_1 + 1));
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_20);
  return param_1;
}

// ---- FUN_00542028  @ 0x542028
void FUN_00542028(int param_1)

{
  undefined1 auStack_30 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_2c [4];
  undefined4 local_28;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c [2];
  
  FUN_00540f7e(auStack_30,param_1);
  FUN_00541f64(&local_28,0,&local_20,auStack_30);
  local_20 = local_28;
  local_1c[0] = local_24;
  local_24 = 0;
  local_28 = 0;
  FUN_00519138(param_1 + 0x14,&local_20);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_1c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_24);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_2c);
  return;
}

// ---- FUN_00542090  @ 0x542090
int * FUN_00542090(int *param_1,undefined4 param_2,undefined4 param_3,function *param_4,
                  undefined4 param_5,function *param_6)

{
  void *pvVar1;
  undefined4 *puVar2;
  int iVar3;
  function<void(long_long,std::string_const&)> afStack_38 [16];
  int local_28 [4];
  
  *param_1 = 0;
  *(undefined4 *)(param_1 + 1) = 0;
  pvVar1 = operator_new(0x30);
  *param_1 = (int)pvVar1;
  std::function<void(std::function<void()>)>::function
            ((function<void(std::function<void()>)> *)local_28,param_4);
  std::function<void(long_long,std::string_const&)>::function(afStack_38,param_6);
  if (pvVar1 != (void *)0x0) {
    FUN_00540dcc(pvVar1,(function<void(std::function<void()>)> *)local_28,param_5,afStack_38);
  }
  std::_Function_base::~_Function_base((_Function_base *)afStack_38);
  std::_Function_base::~_Function_base((_Function_base *)local_28);
  iVar3 = *param_1;
  local_28[0] = 0;
  puVar2 = operator_new(0x14);
  if (puVar2 != (undefined4 *)0x0) {
    puVar2[1] = 1;
    puVar2[2] = 1;
    puVar2[3] = iVar3;
    *puVar2 = &PTR_LAB_00540254_1_00926068;
  }
  local_28[0] = param_1[1];
  param_1[1] = (int)puVar2;
  iVar3 = *param_1;
  if (iVar3 != 0) {
    *(int *)(iVar3 + 4) = iVar3;
    std::__weak_count<(__gnu_cxx::_Lock_policy)2>::operator=
              ((__weak_count<(__gnu_cxx::_Lock_policy)2> *)(iVar3 + 8),
               (__shared_count *)(param_1 + 1));
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_28);
  return param_1;
}

// ---- FUN_0054217c  @ 0x54217c
undefined4 *
FUN_0054217c(undefined4 *param_1,undefined4 param_2,undefined4 *param_3,undefined4 param_4)

{
  undefined4 local_28;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_24 [4];
  undefined4 local_20;
  undefined4 local_1c [2];
  
  FUN_00542090(&local_28,0,&local_20,param_2,*param_3,param_4);
  local_20 = local_28;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_1c,(__shared_count *)a_Stack_24);
  *param_1 = local_20;
  param_1[1] = local_1c[0];
  local_1c[0] = 0;
  local_20 = 0;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_1c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_24);
  return param_1;
}

// ---- FUN_005421cc  @ 0x5421cc
void FUN_005421cc(int param_1,undefined4 param_2,undefined4 param_3,undefined4 *param_4)

{
  function *pfVar1;
  undefined1 auStack_70 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_6c [4];
  undefined4 local_68;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_64 [4];
  undefined1 auStack_60 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_5c [4];
  undefined4 local_58;
  undefined4 local_54;
  undefined4 local_50;
  undefined4 local_4c;
  function<void(std::function<void()>)> afStack_48 [16];
  void *local_38 [2];
  undefined1 *local_30;
  undefined *local_2c;
  
  FUN_00540f7e(auStack_70,param_1);
  pfVar1 = (function *)FUN_00518514(param_1);
  std::function<void(std::function<void()>)>::function(afStack_48,pfVar1);
  local_68 = *param_4;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_64,(__shared_count *)(param_4 + 1));
  local_30 = (undefined1 *)0x0;
  local_38[0] = operator_new(1);
  local_2c = &DAT_0054023d;
  local_30 = &LAB_005406cc_1;
  FUN_0054217c(auStack_60,afStack_48,&local_68,(_Function_base *)local_38);
  FUN_00541740(&local_58,0,&local_50,auStack_70,param_2,param_3,auStack_60);
  local_50 = local_58;
  local_4c = local_54;
  local_54 = 0;
  local_58 = 0;
  FUN_00519138(param_1 + 0x14,&local_50);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_4c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_54);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_5c);
  std::_Function_base::~_Function_base((_Function_base *)local_38);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_64);
  std::_Function_base::~_Function_base((_Function_base *)afStack_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_6c);
  return;
}

// ---- FUN_005422e8  @ 0x5422e8
void FUN_005422e8(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                 undefined4 param_5,undefined4 *param_6)

{
  function *pfVar1;
  undefined1 auStack_70 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_6c [4];
  undefined4 local_68;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_64 [4];
  undefined1 auStack_60 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_5c [4];
  undefined4 local_58;
  undefined4 local_54;
  undefined4 local_50;
  undefined4 local_4c;
  function<void(std::function<void()>)> afStack_48 [16];
  void *local_38 [2];
  undefined1 *local_30;
  undefined *local_2c;
  
  FUN_00540f7e(auStack_70,param_1);
  pfVar1 = (function *)FUN_00518514(param_1);
  std::function<void(std::function<void()>)>::function(afStack_48,pfVar1);
  local_68 = *param_6;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_64,(__shared_count *)(param_6 + 1));
  local_30 = (undefined1 *)0x0;
  local_38[0] = operator_new(1);
  local_2c = &DAT_0054023f;
  local_30 = &LAB_005406f6_1;
  FUN_0054217c(auStack_60,afStack_48,&local_68,(_Function_base *)local_38);
  FUN_00541ba0(&local_58,0,&local_50,auStack_70,param_2,param_3,param_4,param_5,auStack_60);
  local_50 = local_58;
  local_4c = local_54;
  local_54 = 0;
  local_58 = 0;
  FUN_00519138(param_1 + 0x14,&local_50);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_4c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_54);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_5c);
  std::_Function_base::~_Function_base((_Function_base *)local_38);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_64);
  std::_Function_base::~_Function_base((_Function_base *)afStack_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_6c);
  return;
}

// ---- FUN_0054240c  @ 0x54240c
int * FUN_0054240c(int *param_1,undefined4 param_2,undefined4 param_3,function *param_4,
                  function *param_5)

{
  undefined4 *puVar1;
  function<void(long_long,gpg::EndpointDetails_const&)> *this;
  int iVar2;
  int local_38 [5];
  
  *param_1 = 0;
  *(undefined4 *)(param_1 + 1) = 0;
  puVar1 = operator_new(0x20);
  *param_1 = (int)puVar1;
  std::function<void(std::function<void()>)>::function
            ((function<void(std::function<void()>)> *)local_38,param_4);
  if (puVar1 != (undefined4 *)0x0) {
    puVar1[1] = 0;
    puVar1[2] = 0;
    *puVar1 = &PTR_FUN_00540d68_1_00925ef8;
    std::function<void(std::function<void()>)>::function
              ((function<void(std::function<void()>)> *)(puVar1 + 3),(function *)local_38);
    this = operator_new(0x20);
    std::function<void(long_long,gpg::EndpointDetails_const&)>::function(this,param_5);
    std::function<void(long_long,std::string_const&)>::function
              ((function<void(long_long,std::string_const&)> *)(this + 0x10),param_5 + 0x10);
    puVar1[7] = this;
  }
  std::_Function_base::~_Function_base((_Function_base *)local_38);
  iVar2 = *param_1;
  local_38[0] = 0;
  puVar1 = operator_new(0x14);
  if (puVar1 != (undefined4 *)0x0) {
    puVar1[1] = 1;
    puVar1[2] = 1;
    puVar1[3] = iVar2;
    *puVar1 = &PTR_LAB_00540240_1_00926088;
  }
  local_38[0] = param_1[1];
  param_1[1] = (int)puVar1;
  iVar2 = *param_1;
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

// ---- FUN_00542548  @ 0x542548
void FUN_00542548(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                 undefined4 *param_5)

{
  function *pfVar1;
  undefined4 local_70;
  undefined4 uStack_6c;
  undefined1 auStack_68 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_64 [4];
  undefined4 local_60;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_5c [4];
  undefined4 local_58;
  undefined4 local_54;
  undefined4 local_50;
  undefined4 local_4c;
  undefined4 local_48;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_44 [4];
  undefined4 local_40;
  undefined4 local_3c;
  function<void(std::function<void()>)> afStack_38 [20];
  
  local_70 = param_3;
  uStack_6c = param_4;
  FUN_00540f7e(auStack_68,param_1);
  pfVar1 = (function *)FUN_00518514(param_1);
  std::function<void(std::function<void()>)>::function(afStack_38,pfVar1);
  local_60 = *param_5;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_5c,(__shared_count *)(param_5 + 1));
  FUN_0054240c(&local_48,0,&local_58,afStack_38,local_60);
  local_40 = local_48;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_3c,(__shared_count *)a_Stack_44);
  local_54 = local_3c;
  local_58 = local_40;
  local_3c = 0;
  local_40 = 0;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_3c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_44);
  FUN_0054196c(&local_50,0,&local_40,auStack_68,param_2,&local_70,&local_58);
  local_3c = local_4c;
  local_40 = local_50;
  local_50 = 0;
  local_4c = 0;
  FUN_00519138(param_1 + 0x14,&local_40);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_3c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_4c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_54);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_5c);
  std::_Function_base::~_Function_base((_Function_base *)afStack_38);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_64);
  return;
}

// ---- FUN_005427d8  @ 0x5427d8
void FUN_005427d8(int param_1,undefined4 param_2)

{
  uint uVar1;
  int iVar2;
  undefined4 uVar3;
  mutex *local_2c;
  undefined1 auStack_28 [20];
  
  local_2c = (mutex *)(param_1 + 0xa0);
  std::mutex::lock(local_2c);
  uVar1 = FUN_00548d1c(param_2,"getErrorCode");
  if ((((uVar1 - 1 < 3) || ((uVar1 & 0xfffffffd) == 5)) || (uVar1 == 9)) || (uVar1 == 0xc)) {
    uVar3 = FUN_00548bac(param_1 + 0x20);
    FUN_00548074(auStack_28,&DAT_00961aa4,&DAT_009612a4,"getErrorDialog",
                 "(ILandroid/app/Activity;I)Landroid/app/Dialog;",uVar1,uVar3,0x475047);
    iVar2 = FUN_00548c48(auStack_28);
    if (iVar2 == 0) {
      FUN_00548de4(auStack_28,&DAT_00805f86);
    }
    FUN_00548ab0(auStack_28);
    if (uVar1 == 2) {
      uVar3 = 0xfffffffc;
      goto LAB_00542866;
    }
  }
  uVar3 = 0xfffffffe;
LAB_00542866:
  FUN_00518614(param_1,uVar3);
  std::lock_guard<std::mutex>::~lock_guard((lock_guard<std::mutex> *)&local_2c);
  return;
}

// ---- FUN_005428a4  @ 0x5428a4
void FUN_005428a4(undefined4 *param_1)

{
  undefined4 uVar1;
  undefined1 auStack_30 [16];
  undefined1 auStack_20 [16];
  
  param_1 = (undefined4 *)*param_1;
  FUN_00548b30(auStack_30);
  uVar1 = *param_1;
  FUN_00548b30(auStack_20,auStack_30);
  FUN_005427d8(uVar1,auStack_20);
  FUN_00548ab0(auStack_20);
  FUN_00548ab0(auStack_30);
  return;
}

// ---- FUN_0054294c  @ 0x54294c
undefined4 * FUN_0054294c(undefined4 *param_1,undefined4 *param_2,undefined4 param_3)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  int iVar4;
  undefined4 *puVar5;
  undefined4 *puVar6;
  undefined1 auStack_cc [4];
  undefined1 auStack_c8 [16];
  undefined1 auStack_b8 [16];
  undefined1 auStack_a8 [16];
  undefined1 auStack_98 [16];
  undefined1 auStack_88 [16];
  undefined1 auStack_78 [16];
  undefined1 auStack_68 [16];
  undefined4 *local_58 [2];
  undefined1 *local_50;
  undefined1 *local_4c;
  undefined1 auStack_48 [16];
  undefined4 *local_38 [2];
  undefined1 *local_30;
  undefined4 local_2c;
  
  local_38[0] = (undefined4 *)*param_2;
  *param_2 = 0;
  FUN_005184f8(param_1,(_Function_base *)local_38);
  FUN_00540d0c((_Function_base *)local_38);
  *param_1 = &PTR_FUN_00542cac_1_009260a8;
  param_1[4] = &PTR_DAT_00926110;
  FUN_007c6a60(auStack_cc,"nearby_connections",(_Function_base *)local_38);
  FUN_00518e24(param_1 + 5,auStack_cc,1);
  puVar6 = param_1 + 8;
  FUN_007c5914(auStack_cc);
  FUN_0053dbf8(puVar6,param_3);
  puVar5 = param_1 + 0x24;
  FUN_00548b18(puVar5);
  param_1[0x28] = 0;
  param_1[0x28] = 0;
  param_1[0x2a] = 0;
  param_1[0x2b] = 0;
  uVar1 = FUN_00548bac(puVar6);
  FUN_00545074(auStack_68);
  local_50 = (undefined1 *)0x0;
  local_58[0] = operator_new(4);
  *local_58[0] = param_1;
  local_4c = &LAB_0054266e_1;
  local_50 = &LAB_0054066c_1;
  FUN_00537340(auStack_68,param_1,&LAB_005461f0_1,(_Function_base *)local_58);
  std::_Function_base::~_Function_base((_Function_base *)local_58);
  FUN_00548b30(auStack_c8,auStack_68);
  FUN_00548ab0(auStack_68);
  uVar2 = FUN_00548bac(auStack_c8);
  FUN_00545074(auStack_48);
  local_30 = (undefined1 *)0x0;
  local_38[0] = operator_new(4);
  *local_38[0] = param_1;
  local_2c = 0x5428a5;
  local_30 = &LAB_0054069c_1;
  FUN_00537340(auStack_48,param_1,0x546269,(_Function_base *)local_38);
  std::_Function_base::~_Function_base((_Function_base *)local_38);
  FUN_00548b30(auStack_b8,auStack_48);
  FUN_00548ab0(auStack_48);
  uVar3 = FUN_00548bac(auStack_b8);
  FUN_00547b78((_Function_base *)local_58,&DAT_00961da4,
               "(Landroid/content/Context;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V"
               ,uVar1,uVar2,uVar3);
  FUN_00548ab0(auStack_b8);
  FUN_00548ab0(auStack_c8);
  iVar4 = FUN_00548c48((_Function_base *)local_58);
  if (iVar4 == 0) {
    FUN_00547b10(auStack_98,&DAT_009618a4,&DAT_009633a4,"CONNECTIONS_API",
                 "Lcom/google/android/gms/common/api/Api;");
    uVar1 = FUN_00548bac(auStack_98);
    FUN_0054968c(auStack_a8,(_Function_base *)local_58,&DAT_00961da4,"addApi",
                 "(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;"
                 ,uVar1);
    FUN_00548ab0(auStack_a8);
    FUN_00548ab0(auStack_98);
    FUN_0054968c(auStack_78,(_Function_base *)local_58,&DAT_009613a4,"build",
                 "()Lcom/google/android/gms/common/api/GoogleApiClient;");
    FUN_00549380(auStack_88,auStack_78);
    FUN_00548b60(puVar5,auStack_88);
    FUN_00548ab0(auStack_88);
    FUN_00548ab0(auStack_78);
    iVar4 = FUN_00548c48(puVar5);
    if (iVar4 == 0) {
      FUN_005166ae(1,"Successfully created Android Nearby Connections from builder.");
      FUN_00548de4(puVar5,"connect");
    }
    else {
      FUN_005166ae(4,"Failed to create GoogleApiClient from builder.");
    }
    FUN_005488f0(param_1 + 4,puVar6);
  }
  else {
    FUN_005166ae(4,"Failed to create GoogleApiClient.Builder.");
  }
  FUN_00548ab0((_Function_base *)local_58);
  return param_1;
}

// ---- FUN_00542c4c  @ 0x542c4c
undefined4 * FUN_00542c4c(undefined4 *param_1,undefined4 *param_2,undefined4 *param_3)

{
  void *pvVar1;
  undefined4 uVar2;
  undefined4 *puStack_20;
  undefined4 *local_1c;
  
  puStack_20 = param_1;
  local_1c = param_2;
  FUN_00549ab4(&puStack_20);
  local_1c = (undefined4 *)*param_2;
  *param_2 = 0;
  uVar2 = *param_3;
  pvVar1 = operator_new(0xb0);
  FUN_0054294c(pvVar1,&local_1c,uVar2);
  *param_1 = pvVar1;
  FUN_00540d0c(&local_1c);
  FUN_00549ad2(&puStack_20);
  return param_1;
}

// ---- FUN_00542cac  @ 0x542cac
undefined4 * FUN_00542cac(undefined4 *param_1,undefined4 param_2)

{
  undefined4 uStack_14;
  
  *param_1 = &PTR_FUN_00542cac_1_009260a8;
  param_1[4] = &PTR_DAT_00926110;
  uStack_14 = param_2;
  FUN_00549ab4(&uStack_14);
  FUN_005408e8(param_1);
  FUN_005456f8(param_1,&LAB_005461f0_1);
  FUN_005456f8(param_1,0x546269);
  FUN_005456f8(2,0x545bc1);
  FUN_005456f8(2,0x5465ed);
  FUN_005456f8(2,0x5465b1);
  FUN_005456f8(2,0x5468d5);
  FUN_0054824c(param_1 + 4,param_1 + 8);
  FUN_005457f8(param_1);
  FUN_00549ad2(&uStack_14);
  FUN_00548ab0(param_1 + 0x24);
  FUN_0053dcb2(param_1 + 8);
  FUN_00518884(param_1 + 5);
  FUN_0051845c(param_1);
  return param_1;
}

// ---- FUN_00542d68  @ 0x542d68
void * FUN_00542d68(void *param_1)

{
  FUN_00542cac();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_00542e40  @ 0x542e40
_Function_base * FUN_00542e40(_Function_base *param_1)

{
  std::_Function_base::~_Function_base(param_1 + 0x10);
  std::_Function_base::~_Function_base(param_1);
  return param_1;
}

// ---- FUN_005431c4  @ 0x5431c4
void FUN_005431c4(undefined4 param_1,_Any_data *param_2)

{
  undefined4 uVar1;
  undefined4 uVar2;
  _Function_base a_Stack_20 [8];
  undefined4 local_18;
  undefined4 local_14;
  
  local_18 = 0;
  std::swap<std::_Any_data>(param_2,(_Any_data *)a_Stack_20);
  uVar1 = *(undefined4 *)(param_2 + 8);
  *(undefined4 *)(param_2 + 8) = local_18;
  uVar2 = *(undefined4 *)(param_2 + 0xc);
  *(undefined4 *)(param_2 + 0xc) = local_14;
  local_18 = uVar1;
  local_14 = uVar2;
  FUN_005166ae(4,"Trying to call on_launched_with_snapshot_ without a valid enqueuer.");
  std::_Function_base::~_Function_base(a_Stack_20);
  return;
}

// ---- FUN_00543208  @ 0x543208
void FUN_00543208(undefined4 param_1,_Any_data *param_2)

{
  undefined4 uVar1;
  undefined4 uVar2;
  _Function_base a_Stack_20 [8];
  undefined4 local_18;
  undefined4 local_14;
  
  local_18 = 0;
  std::swap<std::_Any_data>(param_2,(_Any_data *)a_Stack_20);
  uVar1 = *(undefined4 *)(param_2 + 8);
  *(undefined4 *)(param_2 + 8) = local_18;
  uVar2 = *(undefined4 *)(param_2 + 0xc);
  *(undefined4 *)(param_2 + 0xc) = local_14;
  local_18 = uVar1;
  local_14 = uVar2;
  FUN_005166ae(4,"Trying to call on_launched_with_quest_ without a valid enqueuer.");
  std::_Function_base::~_Function_base(a_Stack_20);
  return;
}

// ---- FUN_0054324c  @ 0x54324c
int FUN_0054324c(int param_1)

{
  code *local_60 [2];
  code *local_58;
  code *local_54;
  _Function_base a_Stack_50 [8];
  undefined4 local_48;
  function<void(std::function<void()>)> afStack_40 [8];
  undefined4 local_38;
  function<void(gpg::SnapshotMetadata)> afStack_30 [8];
  undefined4 local_28;
  
  FUN_00548b18();
  *(undefined4 *)(param_1 + 0x18) = 0;
  FUN_00548b18(param_1 + 0x20);
  local_48 = 0;
  local_60[0] = (code *)0x542db5;
  local_54 = (code *)0x542d93;
  local_38 = 0;
  local_28 = 0;
  local_58 = (code *)0x542d7b;
  std::function<void(gpg::SnapshotMetadata)>::swap
            ((function<void(gpg::SnapshotMetadata)> *)local_60,(function *)afStack_30);
  *(undefined4 *)(param_1 + 0x38) = 0;
  std::function<void(std::function<void()>)>::swap(afStack_40,(function *)(param_1 + 0x30));
  *(undefined4 *)(param_1 + 0x48) = 0;
  std::function<void(gpg::SnapshotMetadata)>::swap(afStack_30,(function *)(param_1 + 0x40));
  FUN_00542e40(afStack_40);
  std::_Function_base::~_Function_base((_Function_base *)local_60);
  std::_Function_base::~_Function_base(a_Stack_50);
  local_48 = 0;
  local_60[0] = (code *)0x542dd1;
  local_54 = (code *)0x50a6d1;
  local_38 = 0;
  local_28 = 0;
  local_58 = (code *)0x50a697;
  std::function<void(gpg::Quest)>::swap
            ((function<void(gpg::Quest)> *)local_60,(function *)afStack_30);
  *(undefined4 *)(param_1 + 0x58) = 0;
  std::function<void(std::function<void()>)>::swap(afStack_40,(function *)(param_1 + 0x50));
  *(undefined4 *)(param_1 + 0x68) = 0;
  std::function<void(gpg::Quest)>::swap
            ((function<void(gpg::Quest)> *)afStack_30,(function *)(param_1 + 0x60));
  FUN_00509b3e(afStack_40);
  std::_Function_base::~_Function_base((_Function_base *)local_60);
  std::_Function_base::~_Function_base(a_Stack_50);
  return param_1;
}

// ---- FUN_00543484  @ 0x543484
undefined4 FUN_00543484(undefined4 param_1)

{
  int iVar1;
  bool bVar2;
  undefined1 auStack_20 [20];
  
  iVar1 = FUN_00548c48();
  if (iVar1 == 0) {
    FUN_0054968c(auStack_20,param_1,&DAT_009619a4,"getStatus",
                 "()Lcom/google/android/gms/common/api/Status;");
    iVar1 = FUN_00548d1c(auStack_20,"getStatusCode");
    FUN_00548ab0(auStack_20);
    if (iVar1 < 0xbbb) {
      if (2999 < iVar1) {
        return 0xfffffffe;
      }
      if (iVar1 < 10) {
        if (7 < iVar1) {
          return 0xfffffffe;
        }
        if (iVar1 == 3) {
          return 2;
        }
        if (iVar1 < 4) {
          if (iVar1 == 1) {
            return 0xfffffffe;
          }
          if (1 < iVar1) {
            return 0xfffffffd;
          }
          if (iVar1 == 0) {
            return 1;
          }
        }
        else {
          if (iVar1 == 5) {
            return 1;
          }
          if (iVar1 < 5) {
            return 0xfffffffe;
          }
          if (iVar1 == 6) {
            return 0xfffffffe;
          }
          if (iVar1 == 7) {
            return 0xffffffff;
          }
        }
      }
      else {
        if (iVar1 == 0x3e9) {
          return 0xfffffffd;
        }
        if (iVar1 < 0x3ea) {
          if (iVar1 == 0xf) {
            return 0xfffffffb;
          }
          if (iVar1 == 1000) {
            return 0xfffffffd;
          }
          bVar2 = iVar1 == 0xe;
        }
        else {
          if (iVar1 < 0x3ec) {
            return 0xfffffffe;
          }
          bVar2 = iVar1 == 0x5dc;
        }
        if (bVar2) {
          return 0xfffffffe;
        }
      }
    }
    else {
      if (iVar1 == 0x1966) {
        return 0xfffffff6;
      }
      if (iVar1 < 0x1967) {
        if (iVar1 == 0xfa5) {
          return 0xfffffffe;
        }
        if (iVar1 < 0xfa6) {
          if (0xfa3 < iVar1) {
            return 3;
          }
          if (3999 < iVar1) {
            return 0xfffffffe;
          }
          if (iVar1 == 0xbbb) {
            return 1;
          }
        }
        else {
          if (iVar1 == 0x1964) {
            return 0xfffffff6;
          }
          if (0x1964 < iVar1) {
            return 0xfffffff8;
          }
          if (iVar1 - 6000U < 5) {
            return 0xfffffffe;
          }
        }
      }
      else {
        if (iVar1 < 0x196c) {
          if (0x1969 < iVar1) {
            return 0xfffffff6;
          }
          if (iVar1 != 0x1968) {
            if (0x1968 < iVar1) {
              return 0xfffffff9;
            }
            return 0xfffffff5;
          }
          return 0xfffffff7;
        }
        if (iVar1 == 0x1f41) {
          return 0xfffffff0;
        }
        if (iVar1 < 0x1f42) {
          if (iVar1 == 8000) {
            return 0xfffffff1;
          }
        }
        else {
          if (iVar1 == 0x1f42) {
            return 0xfffffff3;
          }
          if (iVar1 == 0x1f43) {
            return 0xfffffff2;
          }
        }
      }
    }
    FUN_005166ae(3,"Unexpected GamesStatusCode %i",iVar1);
  }
  return 0xfffffffe;
}

// ---- FUN_00543650  @ 0x543650
undefined4 * FUN_00543650(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_00543650_1_00926130;
  FUN_00533468();
  return param_1;
}

// ---- FUN_00543668  @ 0x543668
void * FUN_00543668(void *param_1)

{
  FUN_00543650();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0054367c  @ 0x54367c
undefined4 * FUN_0054367c(undefined4 *param_1,undefined4 *param_2)

{
  bool bVar1;
  undefined4 uVar2;
  int *piVar3;
  int local_24;
  undefined4 local_20;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_1c [8];
  
  uVar2 = *param_2;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_24,(__shared_count *)(param_2 + 1)
            );
  local_20 = uVar2;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_1c,(__shared_count *)&local_24);
  param_1[1] = 0;
  param_1[2] = 0;
  *param_1 = &PTR_FUN_005107b4_1_00924458;
  param_1[3] = local_20;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(param_1 + 4),
             (__shared_count *)a_Stack_1c);
  param_1[8] = 0;
  param_1[6] = 0;
  param_1[7] = 0;
  param_1[8] = 0;
  param_1[9] = 0;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_1c);
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
  *param_1 = &PTR_FUN_00543650_1_00926130;
  return param_1;
}

// ---- FUN_00543720  @ 0x543720
void FUN_00543720(int *param_1)

{
  if (param_1 != (int *)0x0) {
    (**(code **)(*param_1 + 4))();
  }
  return;
}

// ---- FUN_0054372c  @ 0x54372c
void FUN_0054372c(int *param_1)

{
  if (param_1 != (int *)0x0) {
    (**(code **)(*param_1 + 4))();
  }
  return;
}

// ---- FUN_00543738  @ 0x543738
undefined4 * FUN_00543738(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_00543738_1_00926188;
  FUN_0050e8be(param_1 + 0xc);
  FUN_00533468(param_1);
  return param_1;
}

// ---- FUN_00543758  @ 0x543758
void * FUN_00543758(void *param_1)

{
  FUN_00543738();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0054376c  @ 0x54376c
undefined4 * FUN_0054376c(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0054376c_1_009261e0;
  FUN_00543738();
  return param_1;
}

// ---- FUN_00543784  @ 0x543784
void * FUN_00543784(void *param_1)

{
  FUN_0054376c();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_00543798  @ 0x543798
undefined4 * FUN_00543798(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_00543798_1_00926240;
  FUN_0054376c();
  return param_1;
}

// ---- FUN_005437b0  @ 0x5437b0
void * FUN_005437b0(void *param_1)

{
  FUN_00543798();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_00543808  @ 0x543808
int FUN_00543808(int param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  *(undefined4 *)(param_1 + 8) = 0;
  if (*(int *)(param_2 + 8) != 0) {
    *(undefined4 *)(param_1 + 0xc) = *(undefined4 *)(param_2 + 0xc);
    *(undefined4 *)(param_1 + 8) = *(undefined4 *)(param_2 + 8);
    (**(code **)(param_2 + 8))(param_1,param_2,2,*(code **)(param_2 + 8),param_4);
  }
  std::function<void(gpg::EventManager::FetchAllResponse_const&)>::function
            ((function<void(gpg::EventManager::FetchAllResponse_const&)> *)(param_1 + 0x10),
             (function *)(param_2 + 0x10));
  return param_1;
}

// ---- FUN_00543844  @ 0x543844
undefined4 *
FUN_00543844(undefined4 *param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4)

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
  FUN_00543808(auStack_68,param_3);
  local_78 = uVar1;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_74,(__shared_count *)a_Stack_7c);
  FUN_00543808(auStack_48,auStack_68);
  local_70 = local_78;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_6c,(__shared_count *)a_Stack_74);
  FUN_00533528(param_1,&local_70);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_6c);
  *param_1 = &PTR_FUN_00543738_1_00926188;
  FUN_00543808(param_1 + 0xc,auStack_48);
  FUN_0050e8be(auStack_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_74);
  *param_1 = &PTR_FUN_0054376c_1_009261e0;
  FUN_0050e8be(auStack_68);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_7c);
  param_1[0x14] = param_4;
  *param_1 = &PTR_FUN_00543798_1_00926240;
  return param_1;
}

// ---- FUN_00543a5c  @ 0x543a5c
undefined4 * FUN_00543a5c(undefined4 *param_1,int param_2)

{
  undefined4 uVar1;
  _Rb_tree_impl<std::less<std::string>,true> a_Stack_28 [28];
  
  FUN_005108ea(*(undefined4 *)(param_2 + 0x28));
  uVar1 = thunk_FUN_00529dec();
  std::
  _Rb_tree<std::string,std::pair<std::string_const,gpg::Event>,std::_Select1st<std::pair<std::string_const,gpg::Event>>,std::less<std::string>,std::allocator<std::pair<std::string_const,gpg::Event>>>
  ::_Rb_tree_impl<std::less<std::string>,true>::_Rb_tree_impl(a_Stack_28);
  *param_1 = uVar1;
  std::
  _Rb_tree<std::string,std::pair<std::string_const,gpg::Event>,std::_Select1st<std::pair<std::string_const,gpg::Event>>,std::less<std::string>,std::allocator<std::pair<std::string_const,gpg::Event>>>
  ::_Rb_tree((_Rb_tree<std::string,std::pair<std::string_const,gpg::Event>,std::_Select1st<std::pair<std::string_const,gpg::Event>>,std::less<std::string>,std::allocator<std::pair<std::string_const,gpg::Event>>>
              *)(param_1 + 1),(_Rb_tree *)a_Stack_28);
  std::
  _Rb_tree<std::string,std::pair<std::string_const,gpg::Event>,std::_Select1st<std::pair<std::string_const,gpg::Event>>,std::less<std::string>,std::allocator<std::pair<std::string_const,gpg::Event>>>
  ::~_Rb_tree((_Rb_tree<std::string,std::pair<std::string_const,gpg::Event>,std::_Select1st<std::pair<std::string_const,gpg::Event>>,std::less<std::string>,std::allocator<std::pair<std::string_const,gpg::Event>>>
               *)a_Stack_28);
  return param_1;
}

// ---- FUN_00543a94  @ 0x543a94
void FUN_00543a94(int *param_1,undefined4 param_2)

{
  int iVar1;
  undefined4 local_34;
  _Rb_tree_impl<std::less<std::string>,true> a_Stack_30 [28];
  
  iVar1 = FUN_00548c48(param_2);
  if (iVar1 == 0) {
    (**(code **)(*param_1 + 0x50))(&local_34,param_1,param_2);
    FUN_0050f858(param_1 + 0xc,&local_34);
  }
  else {
    local_34 = 0xfffffffe;
    std::
    _Rb_tree<std::string,std::pair<std::string_const,gpg::Event>,std::_Select1st<std::pair<std::string_const,gpg::Event>>,std::less<std::string>,std::allocator<std::pair<std::string_const,gpg::Event>>>
    ::_Rb_tree_impl<std::less<std::string>,true>::_Rb_tree_impl(a_Stack_30);
    FUN_0050f858(param_1 + 0xc,&local_34);
  }
  std::
  _Rb_tree<std::string,std::pair<std::string_const,gpg::Event>,std::_Select1st<std::pair<std::string_const,gpg::Event>>,std::less<std::string>,std::allocator<std::pair<std::string_const,gpg::Event>>>
  ::~_Rb_tree((_Rb_tree<std::string,std::pair<std::string_const,gpg::Event>,std::_Select1st<std::pair<std::string_const,gpg::Event>>,std::less<std::string>,std::allocator<std::pair<std::string_const,gpg::Event>>>
               *)a_Stack_30);
  return;
}

// ---- FUN_00543b1c  @ 0x543b1c
undefined4
FUN_00543b1c(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 *param_4)

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
  local_3c = 0x543fc5;
  local_40 = (code *)0x5437c3;
  FUN_00533700(a_Stack_38,(_Function_base *)local_48);
  pvVar2 = operator_new(0x14);
  FUN_0053372c(pvVar2,a_Stack_38);
  local_64 = pvVar2;
  FUN_005453a8(auStack_58,param_2,param_3,&local_64);
  if (local_64 != (void *)0x0) {
    FUN_00543720();
  }
  std::_Function_base::~_Function_base(a_Stack_38);
  std::_Function_base::~_Function_base((_Function_base *)local_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_5c);
  FUN_00548b30(param_1,auStack_58);
  FUN_00548ab0(auStack_58);
  return param_1;
}

// ---- FUN_00543bfc  @ 0x543bfc
undefined4 FUN_00543bfc(undefined4 param_1,int param_2)

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
  if (local_34 == 0) goto LAB_00543c18;
  piVar2 = (int *)(local_34 + 4);
  unaff_r4 = &local_28;
  local_28 = *(int *)(local_34 + 4);
  while( true ) {
    iVar3 = local_28;
    if (local_28 == 0) {
LAB_00543c18:
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
  FUN_00543b1c(unaff_r4,0,0x5463d1,&local_30,iVar3);
  FUN_00548b30(param_1,unaff_r4);
  FUN_00548ab0(unaff_r4);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_2c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_34);
  return param_1;
}

// ---- FUN_00543cb4  @ 0x543cb4
void FUN_00543cb4(int param_1)

{
  undefined4 uVar1;
  undefined1 auStack_48 [16];
  undefined1 auStack_38 [16];
  undefined1 auStack_28 [20];
  
  FUN_00547b10(auStack_48,&DAT_00961324,&DAT_009610a4,"Events",
               "Lcom/google/android/gms/games/event/Events;");
  uVar1 = FUN_00548bac(*(int *)(param_1 + 0x28) + 0xf4);
  FUN_0054968c(auStack_38,auStack_48,&DAT_00963024,&DAT_008057f6,
               "(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/common/api/PendingResult;"
               ,uVar1,*(int *)(param_1 + 0x50) == 2);
  FUN_00543bfc(auStack_28,param_1);
  uVar1 = FUN_00548bac(auStack_28);
  FUN_00548d90(auStack_38,"setResultCallback",
               "(Lcom/google/android/gms/common/api/ResultCallback;)V",uVar1);
  FUN_00548ab0(auStack_28);
  FUN_00548ab0(auStack_38);
  FUN_00548ab0(auStack_48);
  return;
}

// ---- FUN_00543d7c  @ 0x543d7c
void FUN_00543d7c(int param_1,undefined4 param_2)

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

// ---- FUN_00543dfc  @ 0x543dfc
undefined4 * FUN_00543dfc(undefined4 *param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 uVar1;
  int iVar2;
  _Rb_tree_impl<std::less<std::string>,true> *this;
  int iVar3;
  undefined4 *puVar4;
  undefined1 auStack_90 [4];
  undefined4 local_8c;
  undefined4 local_88;
  undefined4 local_84;
  undefined4 local_80;
  Event aEStack_7c [8];
  string asStack_74 [8];
  undefined1 auStack_6c [16];
  _Rb_tree_impl<std::less<std::string>,true> a_Stack_5c [24];
  undefined4 local_44;
  _Rb_tree_impl<std::less<std::string>,true> a_Stack_40 [28];
  
  uVar1 = FUN_00543d7c(param_2,param_3);
  FUN_0054932c(&local_44,param_3,&DAT_00962e24);
  FUN_0054968c(auStack_6c,&local_44,&DAT_009626a4,"getEvents",
               "()Lcom/google/android/gms/games/event/EventBuffer;");
  FUN_00548ab0(&local_44);
  iVar2 = gpg::IsError(uVar1);
  if (iVar2 == 0) {
    iVar2 = FUN_00548d1c(auStack_6c,"getCount");
    this = a_Stack_5c;
    std::
    _Rb_tree<std::string,std::pair<std::string_const,gpg::Event>,std::_Select1st<std::pair<std::string_const,gpg::Event>>,std::less<std::string>,std::allocator<std::pair<std::string_const,gpg::Event>>>
    ::_Rb_tree_impl<std::less<std::string>,true>::_Rb_tree_impl(this);
    puVar4 = &local_84;
    for (iVar3 = 0; iVar3 < iVar2; iVar3 = iVar3 + 1) {
      FUN_0054968c(&local_44,auStack_6c,&DAT_00963324,&DAT_0080598d,
                   "(I)Lcom/google/android/gms/games/event/Event;",iVar3,uVar1,puVar4);
      FUN_00549104(auStack_90,&local_44,"getEventId");
      FUN_00544b44(&local_8c,&local_44,auStack_90);
      local_84 = local_8c;
      local_80 = local_88;
      local_88 = 0;
      local_8c = 0;
      gpg::Event::Event(aEStack_7c,&local_84);
      std::
      _Rb_tree<std::string,std::pair<std::string_const,gpg::Event>,std::_Select1st<std::pair<std::string_const,gpg::Event>>,std::less<std::string>,std::allocator<std::pair<std::string_const,gpg::Event>>>
      ::_M_emplace_unique<std::string&,gpg::Event>(asStack_74,(Event *)this);
      gpg::Event::~Event(aEStack_7c);
      std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
                ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_80);
      std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
                ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_88);
      FUN_007c5914(auStack_90);
      FUN_00548ab0(&local_44);
    }
    FUN_00548de4(auStack_6c,"close");
    local_44 = uVar1;
    std::
    _Rb_tree<std::string,std::pair<std::string_const,gpg::Event>,std::_Select1st<std::pair<std::string_const,gpg::Event>>,std::less<std::string>,std::allocator<std::pair<std::string_const,gpg::Event>>>
    ::_Rb_tree((_Rb_tree<std::string,std::pair<std::string_const,gpg::Event>,std::_Select1st<std::pair<std::string_const,gpg::Event>>,std::less<std::string>,std::allocator<std::pair<std::string_const,gpg::Event>>>
                *)a_Stack_40,(_Rb_tree *)this);
    *param_1 = local_44;
    std::
    _Rb_tree<std::string,std::pair<std::string_const,gpg::Event>,std::_Select1st<std::pair<std::string_const,gpg::Event>>,std::less<std::string>,std::allocator<std::pair<std::string_const,gpg::Event>>>
    ::_Rb_tree((_Rb_tree<std::string,std::pair<std::string_const,gpg::Event>,std::_Select1st<std::pair<std::string_const,gpg::Event>>,std::less<std::string>,std::allocator<std::pair<std::string_const,gpg::Event>>>
                *)(param_1 + 1),(_Rb_tree *)a_Stack_40);
    std::
    _Rb_tree<std::string,std::pair<std::string_const,gpg::Event>,std::_Select1st<std::pair<std::string_const,gpg::Event>>,std::less<std::string>,std::allocator<std::pair<std::string_const,gpg::Event>>>
    ::~_Rb_tree((_Rb_tree<std::string,std::pair<std::string_const,gpg::Event>,std::_Select1st<std::pair<std::string_const,gpg::Event>>,std::less<std::string>,std::allocator<std::pair<std::string_const,gpg::Event>>>
                 *)a_Stack_40);
  }
  else {
    FUN_00548de4(auStack_6c,"close");
    this = a_Stack_40;
    local_44 = uVar1;
    std::
    _Rb_tree<std::string,std::pair<std::string_const,gpg::Event>,std::_Select1st<std::pair<std::string_const,gpg::Event>>,std::less<std::string>,std::allocator<std::pair<std::string_const,gpg::Event>>>
    ::_Rb_tree_impl<std::less<std::string>,true>::_Rb_tree_impl(this);
    *param_1 = local_44;
    std::
    _Rb_tree<std::string,std::pair<std::string_const,gpg::Event>,std::_Select1st<std::pair<std::string_const,gpg::Event>>,std::less<std::string>,std::allocator<std::pair<std::string_const,gpg::Event>>>
    ::_Rb_tree((_Rb_tree<std::string,std::pair<std::string_const,gpg::Event>,std::_Select1st<std::pair<std::string_const,gpg::Event>>,std::less<std::string>,std::allocator<std::pair<std::string_const,gpg::Event>>>
                *)(param_1 + 1),(_Rb_tree *)this);
  }
  std::
  _Rb_tree<std::string,std::pair<std::string_const,gpg::Event>,std::_Select1st<std::pair<std::string_const,gpg::Event>>,std::less<std::string>,std::allocator<std::pair<std::string_const,gpg::Event>>>
  ::~_Rb_tree((_Rb_tree<std::string,std::pair<std::string_const,gpg::Event>,std::_Select1st<std::pair<std::string_const,gpg::Event>>,std::less<std::string>,std::allocator<std::pair<std::string_const,gpg::Event>>>
               *)this);
  FUN_00548ab0(auStack_6c);
  return param_1;
}

// ---- FUN_00543fc4  @ 0x543fc4
void FUN_00543fc4(undefined4 *param_1)

{
  undefined4 uVar1;
  undefined1 auStack_30 [16];
  undefined1 auStack_20 [16];
  
  param_1 = (undefined4 *)*param_1;
  FUN_00548b30(auStack_30);
  uVar1 = *param_1;
  FUN_00548b30(auStack_20,auStack_30);
  FUN_00543a94(uVar1,auStack_20);
  FUN_00548ab0(auStack_20);
  FUN_00548ab0(auStack_30);
  return;
}

// ---- FUN_00544048  @ 0x544048
undefined4 * FUN_00544048(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_00544048_1_009262a0;
  FUN_0050e93a(param_1 + 0xc);
  FUN_00533468(param_1);
  return param_1;
}

// ---- FUN_00544068  @ 0x544068
void * FUN_00544068(void *param_1)

{
  FUN_00544048();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0054407c  @ 0x54407c
undefined4 * FUN_0054407c(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0054407c_1_009262f8;
  FUN_00544048();
  return param_1;
}

// ---- FUN_00544094  @ 0x544094
void * FUN_00544094(void *param_1)

{
  FUN_0054407c();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_005440a8  @ 0x5440a8
undefined4 * FUN_005440a8(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_005440a8_1_00926358;
  FUN_007c5914(param_1 + 0x15);
  FUN_0054407c(param_1);
  return param_1;
}

// ---- FUN_005440c8  @ 0x5440c8
void * FUN_005440c8(void *param_1)

{
  FUN_005440a8();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_00544120  @ 0x544120
int FUN_00544120(int param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  *(undefined4 *)(param_1 + 8) = 0;
  if (*(int *)(param_2 + 8) != 0) {
    *(undefined4 *)(param_1 + 0xc) = *(undefined4 *)(param_2 + 0xc);
    *(undefined4 *)(param_1 + 8) = *(undefined4 *)(param_2 + 8);
    (**(code **)(param_2 + 8))(param_1,param_2,2,*(code **)(param_2 + 8),param_4);
  }
  std::function<void(gpg::EventManager::FetchResponse_const&)>::function
            ((function<void(gpg::EventManager::FetchResponse_const&)> *)(param_1 + 0x10),
             (function *)(param_2 + 0x10));
  return param_1;
}

// ---- FUN_0054415c  @ 0x54415c
undefined4 *
FUN_0054415c(undefined4 *param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4,
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
  FUN_00544120(auStack_68,param_3);
  local_78 = uVar1;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_74,(__shared_count *)a_Stack_7c);
  FUN_00544120(auStack_48,auStack_68);
  local_70 = local_78;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_6c,(__shared_count *)a_Stack_74);
  FUN_00533528(param_1,&local_70);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_6c);
  *param_1 = &PTR_FUN_00544048_1_009262a0;
  FUN_00544120(param_1 + 0xc,auStack_48);
  FUN_0050e93a(auStack_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_74);
  *param_1 = &PTR_FUN_0054407c_1_009262f8;
  FUN_0050e93a(auStack_68);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_7c);
  param_1[0x14] = param_4;
  *param_1 = &PTR_FUN_005440a8_1_00926358;
  FUN_007c64e8(param_1 + 0x15,param_5);
  return param_1;
}

// ---- FUN_0054424c  @ 0x54424c
void FUN_0054424c(int *param_1,undefined4 param_2)

{
  int iVar1;
  undefined4 local_24;
  Event aEStack_20 [12];
  
  iVar1 = FUN_00548c48(param_2);
  if (iVar1 == 0) {
    (**(code **)(*param_1 + 0x50))(&local_24,param_1,param_2);
    FUN_0050edac(param_1 + 0xc,&local_24);
  }
  else {
    local_24 = 0xfffffffe;
    gpg::Event::Event(aEStack_20);
    FUN_0050edac(param_1 + 0xc,&local_24);
  }
  gpg::Event::~Event(aEStack_20);
  return;
}

// ---- FUN_005442d4  @ 0x5442d4
undefined4
FUN_005442d4(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 *param_4)

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
  local_3c = 0x5447d9;
  local_40 = (code *)0x5440db;
  FUN_00533700(a_Stack_38,(_Function_base *)local_48);
  pvVar2 = operator_new(0x14);
  FUN_0053372c(pvVar2,a_Stack_38);
  local_64 = pvVar2;
  FUN_005453a8(auStack_58,param_2,param_3,&local_64);
  if (local_64 != (void *)0x0) {
    FUN_00533eee();
  }
  std::_Function_base::~_Function_base(a_Stack_38);
  std::_Function_base::~_Function_base((_Function_base *)local_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_5c);
  FUN_00548b30(param_1,auStack_58);
  FUN_00548ab0(auStack_58);
  return param_1;
}

// ---- FUN_005443b4  @ 0x5443b4
undefined4 FUN_005443b4(undefined4 param_1,int param_2)

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
  if (local_34 == 0) goto LAB_005443d0;
  piVar2 = (int *)(local_34 + 4);
  unaff_r4 = &local_28;
  local_28 = *(int *)(local_34 + 4);
  while( true ) {
    iVar3 = local_28;
    if (local_28 == 0) {
LAB_005443d0:
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
  FUN_005442d4(unaff_r4,0,0x5463d1,&local_30,iVar3);
  FUN_00548b30(param_1,unaff_r4);
  FUN_00548ab0(unaff_r4);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_2c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_34);
  return param_1;
}

// ---- FUN_0054446c  @ 0x54446c
void FUN_0054446c(int param_1)

{
  undefined4 uVar1;
  undefined1 auStack_48 [16];
  undefined1 auStack_38 [16];
  undefined1 auStack_28 [20];
  
  FUN_00547b10(auStack_48,&DAT_00961324,&DAT_009610a4,"Events",
               "Lcom/google/android/gms/games/event/Events;");
  uVar1 = FUN_00548bac(*(int *)(param_1 + 0x28) + 0xf4);
  FUN_0054968c(auStack_38,auStack_48,&DAT_00963024,&DAT_008057f6,
               "(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/common/api/PendingResult;"
               ,uVar1,*(int *)(param_1 + 0x50) == 2);
  FUN_005443b4(auStack_28,param_1);
  uVar1 = FUN_00548bac(auStack_28);
  FUN_00548d90(auStack_38,"setResultCallback",
               "(Lcom/google/android/gms/common/api/ResultCallback;)V",uVar1);
  FUN_00548ab0(auStack_28);
  FUN_00548ab0(auStack_38);
  FUN_00548ab0(auStack_48);
  return;
}

// ---- FUN_00544534  @ 0x544534
void FUN_00544534(int param_1,undefined4 param_2)

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

// ---- FUN_005445b4  @ 0x5445b4
int * FUN_005445b4(int *param_1,int param_2,undefined4 param_3)

{
  undefined4 uVar1;
  void *pvVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  int local_70;
  undefined4 local_6c;
  int local_68;
  undefined4 local_64;
  void *local_60;
  Event aEStack_5c [8];
  void *local_54;
  undefined4 local_50 [2];
  undefined1 auStack_48 [16];
  int local_38;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_34 [16];
  
  pvVar2 = (void *)FUN_00544534(param_2,param_3);
  FUN_0054932c(&local_38,param_3,&DAT_00962e24);
  FUN_0054968c(auStack_48,&local_38,&DAT_009626a4,"getEvents",
               "()Lcom/google/android/gms/games/event/EventBuffer;");
  FUN_00548ab0(&local_38);
  iVar3 = gpg::IsError(pvVar2);
  if (iVar3 == 0) {
    iVar3 = FUN_00548d1c(auStack_48,"getCount");
    local_70 = 0;
    local_6c = 0;
    for (iVar5 = 0; iVar5 < iVar3; iVar5 = iVar5 + 1) {
      FUN_0054968c(&local_38,auStack_48,&DAT_00963324,&DAT_0080598d,
                   "(I)Lcom/google/android/gms/games/event/Event;",iVar5);
      FUN_00549104(&local_60,&local_38,"getEventId");
      if ((*(size_t *)((int)local_60 + -0xc) == *(size_t *)((int)*(void **)(param_2 + 0x54) + -0xc))
         && (iVar4 = memcmp(local_60,*(void **)(param_2 + 0x54),*(size_t *)((int)local_60 + -0xc)),
            iVar4 == 0)) {
        FUN_00544b44(&local_68,&local_38,&local_60);
        uVar1 = local_64;
        local_70 = local_68;
        local_50[0] = local_6c;
        local_64 = 0;
        local_68 = 0;
        local_54 = (void *)0x0;
        local_6c = uVar1;
        std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
                  ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_50);
        std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
                  ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_64);
        FUN_007c5914(&local_60);
        FUN_00548ab0(&local_38);
        break;
      }
      FUN_007c5914(&local_60);
      FUN_00548ab0(&local_38);
    }
    FUN_00548de4(auStack_48,"close");
    if (local_70 == 0) {
      local_38 = -2;
      gpg::Event::Event((Event *)a_Stack_34);
      *param_1 = local_38;
      gpg::Event::Event((Event *)(param_1 + 1),(Event *)a_Stack_34);
      gpg::Event::~Event((Event *)a_Stack_34);
    }
    else {
      local_38 = local_70;
      local_54 = pvVar2;
      std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
                (a_Stack_34,(__shared_count *)&local_6c);
      gpg::Event::Event((Event *)local_50,&local_38);
      *param_1 = (int)local_54;
      gpg::Event::Event((Event *)(param_1 + 1),(Event *)local_50);
      gpg::Event::~Event((Event *)local_50);
      std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_34);
    }
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_6c);
  }
  else {
    FUN_00548de4(auStack_48,"close");
    local_60 = pvVar2;
    gpg::Event::Event(aEStack_5c);
    *param_1 = (int)local_60;
    gpg::Event::Event((Event *)(param_1 + 1),aEStack_5c);
    gpg::Event::~Event(aEStack_5c);
  }
  FUN_00548ab0(auStack_48);
  return param_1;
}

// ---- FUN_005447d8  @ 0x5447d8
void FUN_005447d8(undefined4 *param_1)

{
  undefined4 uVar1;
  undefined1 auStack_30 [16];
  undefined1 auStack_20 [16];
  
  param_1 = (undefined4 *)*param_1;
  FUN_00548b30(auStack_30);
  uVar1 = *param_1;
  FUN_00548b30(auStack_20,auStack_30);
  FUN_0054424c(uVar1,auStack_20);
  FUN_00548ab0(auStack_20);
  FUN_00548ab0(auStack_30);
  return;
}

// ---- FUN_0054481c  @ 0x54481c
undefined4 * FUN_0054481c(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0054481c_1_009263b8;
  FUN_007c5914(param_1 + 0xc);
  FUN_00533468(param_1);
  return param_1;
}

// ---- FUN_0054483c  @ 0x54483c
void * FUN_0054483c(void *param_1)

{
  FUN_0054481c();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_00544850  @ 0x544850
undefined4 *
FUN_00544850(undefined4 *param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4)

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
  *param_1 = &PTR_FUN_0054481c_1_009263b8;
  FUN_007c64e8(param_1 + 0xc,param_3);
  param_1[0xd] = param_4;
  return param_1;
}

// ---- FUN_00544948  @ 0x544948
void FUN_00544948(int param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined1 auStack_38 [16];
  undefined1 auStack_28 [20];
  
  FUN_00547b10(auStack_38,&DAT_00961324,&DAT_009610a4,"Events",
               "Lcom/google/android/gms/games/event/Events;");
  uVar1 = FUN_00548bac(*(int *)(param_1 + 0x28) + 0xf4);
  FUN_0054942c(auStack_28,param_1 + 0x30,0);
  uVar2 = FUN_00548bac(auStack_28);
  FUN_00548d90(auStack_38,"increment",
               "(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;I)V",uVar1,
               uVar2,*(undefined4 *)(param_1 + 0x34));
  FUN_00548ab0(auStack_28);
  FUN_00548ab0(auStack_38);
  return;
}

// ---- FUN_005449f4  @ 0x5449f4
undefined4 * FUN_005449f4(undefined4 *param_1)

{
  *param_1 = &PTR___Sp_counted_base_1_009242b8;
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_00544a24  @ 0x544a24
void FUN_00544a24(int param_1)

{
  undefined4 *puVar1;
  
  puVar1 = *(undefined4 **)(param_1 + 0xc);
  (**(code **)*puVar1)(puVar1);
  operator_delete(puVar1);
  return;
}

// ---- FUN_00544a3c  @ 0x544a3c
undefined4 * FUN_00544a3c(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_00544a3c_1_00926410;
  if ((_Sp_counted_base<(__gnu_cxx::_Lock_policy)2> *)param_1[0xb] !=
      (_Sp_counted_base<(__gnu_cxx::_Lock_policy)2> *)0x0) {
    std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_weak_release
              ((_Sp_counted_base<(__gnu_cxx::_Lock_policy)2> *)param_1[0xb]);
  }
  FUN_0056ac9c(param_1);
  return param_1;
}

// ---- FUN_00544a60  @ 0x544a60
void * FUN_00544a60(void *param_1)

{
  FUN_00544a3c();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_00544a74  @ 0x544a74
int * FUN_00544a74(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  bool bVar1;
  undefined4 *puVar2;
  int *piVar3;
  int iVar4;
  int iVar5;
  int local_14;
  
  *param_1 = 0;
  param_1[1] = 0;
  local_14 = param_2;
  puVar2 = operator_new(0x30);
  *param_1 = (int)puVar2;
  if (puVar2 != (undefined4 *)0x0) {
    FUN_0056ae48(puVar2,param_4);
    puVar2[10] = 0;
    puVar2[0xb] = 0;
    *puVar2 = &PTR_FUN_00544a3c_1_00926410;
  }
  iVar4 = *param_1;
  local_14 = 0;
  puVar2 = operator_new(0x14);
  if (puVar2 != (undefined4 *)0x0) {
    puVar2[1] = 1;
    puVar2[2] = 1;
    puVar2[3] = iVar4;
    *puVar2 = &PTR_LAB_005449e0_1_00926450;
  }
  local_14 = param_1[1];
  iVar4 = *param_1;
  param_1[1] = (int)puVar2;
  if (iVar4 != 0) {
    *(int *)(iVar4 + 0x28) = iVar4;
    iVar5 = param_1[1];
    if (iVar5 != 0) {
      piVar3 = (int *)(iVar5 + 8);
      DataMemoryBarrier(0x1f);
      do {
        ExclusiveAccess(piVar3);
        bVar1 = (bool)hasExclusiveAccess(piVar3);
      } while (!bVar1);
      *piVar3 = *piVar3 + 1;
      DataMemoryBarrier(0x1f);
    }
    if (*(_Sp_counted_base<(__gnu_cxx::_Lock_policy)2> **)(iVar4 + 0x2c) !=
        (_Sp_counted_base<(__gnu_cxx::_Lock_policy)2> *)0x0) {
      std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_weak_release
                (*(_Sp_counted_base<(__gnu_cxx::_Lock_policy)2> **)(iVar4 + 0x2c));
    }
    *(int *)(iVar4 + 0x2c) = iVar5;
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_14);
  return param_1;
}

// ---- FUN_00544b44  @ 0x544b44
undefined4 * FUN_00544b44(undefined4 *param_1,undefined4 param_2,int *param_3)

{
  int iVar1;
  undefined1 auStack_6c [4];
  undefined1 auStack_68 [4];
  undefined1 auStack_64 [4];
  undefined1 auStack_60 [4];
  undefined1 auStack_5c [4];
  undefined4 local_58;
  undefined4 local_54;
  undefined **local_50;
  undefined4 *local_4c;
  undefined4 *local_48;
  undefined4 *local_44;
  undefined8 local_40;
  undefined4 *local_38;
  undefined4 local_34;
  uint local_2c;
  undefined4 local_28;
  undefined4 local_24;
  
  FUN_0056abb8(&local_50);
  local_28 = 0;
  local_24 = 0;
  local_50 = &PTR_FUN_00544a3c_1_00926410;
  if (*(int *)(*param_3 + -0xc) == 0) {
    FUN_00549104(auStack_68,param_2,"getEventId");
  }
  else {
    FUN_007c64e8(auStack_68,param_3);
  }
  local_2c = local_2c | 1;
  if (local_4c == &DAT_00960c38) {
    local_4c = operator_new(4);
    *local_4c = &DAT_00972528;
  }
  FUN_007c653c(local_4c,auStack_68);
  FUN_007c5914(auStack_68);
  FUN_005490cc(auStack_64,param_2,&DAT_00801f93,"getName");
  local_2c = local_2c | 2;
  if (local_48 == &DAT_00960c38) {
    local_48 = operator_new(4);
    *local_48 = &DAT_00972528;
  }
  FUN_007c653c(local_48,auStack_64);
  FUN_007c5914(auStack_64);
  FUN_00549104(auStack_60,param_2,"getDescription");
  local_2c = local_2c | 4;
  if (local_44 == &DAT_00960c38) {
    local_44 = operator_new(4);
    *local_44 = &DAT_00972528;
  }
  FUN_007c653c(local_44,auStack_60);
  FUN_007c5914(auStack_60);
  iVar1 = FUN_00548cb4(param_2,"isVisible");
  if (iVar1 == 0) {
    local_34 = 1;
  }
  else {
    local_34 = 2;
  }
  local_2c = local_2c | 8;
  local_40 = FUN_00548d84(param_2,"getValue");
  local_2c = local_2c | 0x10;
  FUN_005490cc(auStack_5c,param_2,&DAT_00801f93,"getIconImageUrl");
  local_2c = local_2c | 0x20;
  if (local_38 == &DAT_00960c38) {
    local_38 = operator_new(4);
    *local_38 = &DAT_00972528;
  }
  FUN_007c653c(local_38,auStack_5c);
  FUN_007c5914(auStack_5c);
  FUN_00544a74(&local_58,0,auStack_6c,&local_50);
  *param_1 = local_58;
  param_1[1] = local_54;
  local_54 = 0;
  local_58 = 0;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_54);
  FUN_00544a3c(&local_50);
  return param_1;
}

// ---- FUN_00544d24  @ 0x544d24
void FUN_00544d24(int *param_1)

{
  (**(code **)(*param_1 + 0x60))();
  return;
}

// ---- FUN_00544d30  @ 0x544d30
void FUN_00544d30(undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 *local_14;
  undefined4 uStack_10;
  
  local_14 = &DAT_00960c44;
  uStack_10 = param_3;
  std::mutex::lock((mutex *)&DAT_00960c44);
  DAT_00960c60 = 1;
  std::lock_guard<std::mutex>::~lock_guard((lock_guard<std::mutex> *)&local_14);
  return;
}

// ---- FUN_00544d54  @ 0x544d54
void FUN_00544d54(undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 *local_14;
  undefined4 uStack_10;
  
  local_14 = &DAT_00960c44;
  uStack_10 = param_3;
  std::mutex::lock((mutex *)&DAT_00960c44);
  DAT_00960c61 = 1;
  std::lock_guard<std::mutex>::~lock_guard((lock_guard<std::mutex> *)&local_14);
  return;
}

// ---- FUN_00544d78  @ 0x544d78
int * FUN_00544d78(int *param_1)

{
  if ((int *)*param_1 != (int *)0x0) {
    (**(code **)(*(int *)*param_1 + 4))();
  }
  *param_1 = 0;
  return param_1;
}

// ---- FUN_00544d8e  @ 0x544d8e
int * FUN_00544d8e(int *param_1)

{
  int iVar1;
  int iVar2;
  
  iVar2 = param_1[1];
  for (iVar1 = *param_1; iVar1 != iVar2; iVar1 = iVar1 + 4) {
    FUN_00544d78(iVar1);
  }
  if ((void *)*param_1 != (void *)0x0) {
    operator_delete((void *)*param_1);
  }
  return param_1;
}

// ---- FUN_00544db0  @ 0x544db0
int FUN_00544db0(int param_1,int param_2,int param_3,int param_4)

{
  bool bVar1;
  
  if ((param_2 == 0) && (param_3 != param_1 + 4)) {
    bVar1 = *(uint *)(param_4 + 0x10) < *(uint *)(param_3 + 0x10);
  }
  else {
    bVar1 = true;
  }
  FUN_007997e8(bVar1,param_4,param_3,param_1 + 4,param_4);
  *(int *)(param_1 + 0x14) = *(int *)(param_1 + 0x14) + 1;
  return param_4;
}

// ---- FUN_00544dde  @ 0x544dde
uint FUN_00544dde(int *param_1,uint param_2,undefined4 param_3)

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

// ---- FUN_00544e14  @ 0x544e14
void FUN_00544e14(int *param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 *puVar1;
  uint uVar2;
  uint uVar3;
  undefined4 *puVar4;
  undefined4 *puVar5;
  undefined4 *puVar6;
  undefined4 *puVar7;
  int iVar8;
  undefined4 uVar9;
  int iVar10;
  
  puVar7 = (undefined4 *)param_1[1];
  if (puVar7 != (undefined4 *)param_1[2]) {
    if (puVar7 != (undefined4 *)0x0) {
      *puVar7 = *param_2;
    }
    param_1[1] = param_1[1] + 4;
    return;
  }
  uVar2 = FUN_00544dde(param_1,1,"vector::_M_emplace_back_aux",puVar7,param_4);
  if (uVar2 == 0) {
    puVar7 = (undefined4 *)0x0;
  }
  else {
    uVar3 = uVar2;
    if (0x3fffffff < uVar2) {
      uVar3 = FUN_007c4844();
    }
    puVar7 = operator_new(uVar3 << 2);
  }
  iVar8 = param_1[1] - *param_1 >> 2;
  if (puVar7 + iVar8 != (undefined4 *)0x0) {
    puVar7[iVar8] = *param_2;
  }
  puVar5 = (undefined4 *)*param_1;
  puVar4 = (undefined4 *)param_1[1];
  puVar6 = puVar7;
  puVar1 = puVar5;
  while (puVar4 != puVar1) {
    if (puVar6 != (undefined4 *)0x0) {
      uVar9 = *puVar1;
      *puVar1 = 0;
      *puVar6 = uVar9;
    }
    puVar6 = puVar6 + 1;
    puVar1 = puVar1 + 1;
  }
  iVar10 = param_1[1];
  for (iVar8 = *param_1; iVar8 != iVar10; iVar8 = iVar8 + 4) {
    FUN_00544d78(iVar8);
  }
  if ((void *)*param_1 != (void *)0x0) {
    operator_delete((void *)*param_1);
  }
  *param_1 = (int)puVar7;
  param_1[1] = (int)puVar7 + ((int)puVar4 - (int)puVar5 & 0xfffffffcU) + 4;
  param_1[2] = (int)(puVar7 + uVar2);
  return;
}

// ---- FUN_00544ecc  @ 0x544ecc
void FUN_00544ecc(int *param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 *puVar1;
  uint uVar2;
  uint uVar3;
  undefined4 *puVar4;
  undefined4 *puVar5;
  undefined4 uVar6;
  undefined4 *puVar7;
  undefined4 *puVar8;
  int iVar9;
  int iVar10;
  
  puVar8 = (undefined4 *)param_1[1];
  if (puVar8 != (undefined4 *)param_1[2]) {
    if (puVar8 != (undefined4 *)0x0) {
      uVar6 = *param_2;
      *param_2 = 0;
      *puVar8 = uVar6;
    }
    param_1[1] = param_1[1] + 4;
    return;
  }
  uVar2 = FUN_00544dde(param_1,1,"vector::_M_emplace_back_aux",puVar8,param_4);
  if (uVar2 == 0) {
    puVar8 = (undefined4 *)0x0;
  }
  else {
    uVar3 = uVar2;
    if (0x3fffffff < uVar2) {
      uVar3 = FUN_007c4844();
    }
    puVar8 = operator_new(uVar3 << 2);
  }
  iVar9 = param_1[1] - *param_1 >> 2;
  if (puVar8 + iVar9 != (undefined4 *)0x0) {
    uVar6 = *param_2;
    *param_2 = 0;
    puVar8[iVar9] = uVar6;
  }
  puVar5 = (undefined4 *)*param_1;
  puVar4 = (undefined4 *)param_1[1];
  puVar7 = puVar8;
  puVar1 = puVar5;
  while (puVar4 != puVar1) {
    if (puVar7 != (undefined4 *)0x0) {
      uVar6 = *puVar1;
      *puVar1 = 0;
      *puVar7 = uVar6;
    }
    puVar7 = puVar7 + 1;
    puVar1 = puVar1 + 1;
  }
  iVar10 = param_1[1];
  for (iVar9 = *param_1; iVar9 != iVar10; iVar9 = iVar9 + 4) {
    FUN_00544d78(iVar9);
  }
  if ((void *)*param_1 != (void *)0x0) {
    operator_delete((void *)*param_1);
  }
  *param_1 = (int)puVar8;
  param_1[1] = (int)puVar8 + ((int)puVar4 - (int)puVar5 & 0xfffffffcU) + 4;
  param_1[2] = (int)(puVar8 + uVar2);
  return;
}

// ---- FUN_00544f8c  @ 0x544f8c
int * FUN_00544f8c(int *param_1,int param_2,uint *param_3)

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

// ---- FUN_00544fe0  @ 0x544fe0
int * FUN_00544fe0(int *param_1,int param_2,int param_3,uint *param_4)

{
  int iVar1;
  uint uVar2;
  
  if (param_3 == param_2 + 4) {
    if ((*(int *)(param_2 + 0x14) == 0) ||
       (iVar1 = *(int *)(param_2 + 0x10), *param_4 <= *(uint *)(iVar1 + 0x10))) {
LAB_00545062:
      FUN_00544f8c(param_1,param_2,param_4);
      return param_1;
    }
    *param_1 = 0;
LAB_0054505e:
    param_1[1] = iVar1;
  }
  else {
    uVar2 = *param_4;
    if (uVar2 < *(uint *)(param_3 + 0x10)) {
      if (param_3 != *(int *)(param_2 + 0xc)) {
        iVar1 = thunk_FUN_0079972c(param_3);
        if (uVar2 <= *(uint *)(iVar1 + 0x10)) goto LAB_00545062;
        if (*(int *)(iVar1 + 0xc) == 0) {
          *param_1 = 0;
LAB_00545056:
          param_1[1] = iVar1;
          return param_1;
        }
      }
      *param_1 = param_3;
    }
    else {
      if (uVar2 <= *(uint *)(param_3 + 0x10)) {
        iVar1 = 0;
        *param_1 = param_3;
        goto LAB_0054505e;
      }
      if (param_3 != *(int *)(param_2 + 0x10)) {
        iVar1 = FUN_00799768(param_3);
        if (*(uint *)(iVar1 + 0x10) <= uVar2) goto LAB_00545062;
        if (*(int *)(param_3 + 0xc) != 0) {
          *param_1 = iVar1;
          goto LAB_00545056;
        }
      }
      *param_1 = 0;
    }
    param_1[1] = param_3;
  }
  return param_1;
}

// ---- FUN_00545074  @ 0x545074
undefined4 FUN_00545074(undefined4 param_1)

{
  undefined1 auStack_20 [20];
  
  FUN_00548040(auStack_20,&DAT_00962824);
  FUN_00548b30(param_1,auStack_20);
  FUN_00548ab0(auStack_20);
  return param_1;
}

// ---- FUN_005450a8  @ 0x5450a8
undefined4 FUN_005450a8(undefined4 param_1)

{
  undefined1 auStack_20 [20];
  
  FUN_00549380(auStack_20);
  FUN_00548b30(param_1,auStack_20);
  FUN_00548ab0(auStack_20);
  return param_1;
}

// ---- FUN_005450d2  @ 0x5450d2
void FUN_005450d2(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                 _Vector_base *param_5)

{
  code *pcVar1;
  _Vector_base<unsigned_char,std::allocator<unsigned_char>> a_Stack_a0 [12];
  _Vector_base<unsigned_char,std::allocator<unsigned_char>> a_Stack_94 [12];
  undefined1 auStack_88 [16];
  undefined1 auStack_78 [16];
  undefined1 auStack_68 [16];
  undefined1 auStack_58 [16];
  undefined1 auStack_48 [16];
  undefined1 auStack_38 [20];
  
  FUN_00548b30(auStack_88);
  FUN_00548b30(auStack_78,param_3);
  FUN_00548b30(auStack_68,param_4);
  std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::_Vector_base(a_Stack_a0,param_5);
  if (*(int *)(param_1 + 0xc) == 0) {
    FUN_007c4d54();
  }
  pcVar1 = *(code **)(param_1 + 0x10);
  FUN_00548b30(auStack_38,auStack_88);
  FUN_00548b30(auStack_48,auStack_78);
  FUN_00548b30(auStack_58,auStack_68);
  std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::_Vector_base
            (a_Stack_94,(_Vector_base *)a_Stack_a0);
  (*pcVar1)(param_1 + 4,auStack_38,auStack_48,auStack_58,a_Stack_94);
  std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::~_Vector_base(a_Stack_94);
  FUN_00548ab0(auStack_58);
  FUN_00548ab0(auStack_48);
  FUN_00548ab0(auStack_38);
  std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::~_Vector_base(a_Stack_a0);
  FUN_00548ab0(auStack_68);
  FUN_00548ab0(auStack_78);
  FUN_00548ab0(auStack_88);
  return;
}

// ---- FUN_005451c8  @ 0x5451c8
void FUN_005451c8(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                 undefined4 param_5)

{
  code *pcVar1;
  undefined1 auStack_a8 [16];
  undefined1 auStack_98 [16];
  undefined1 auStack_88 [16];
  undefined1 auStack_78 [16];
  undefined1 auStack_68 [16];
  undefined1 auStack_58 [16];
  undefined1 auStack_48 [16];
  undefined1 auStack_38 [20];
  
  FUN_00548b30(auStack_a8);
  FUN_00548b30(auStack_98,param_3);
  FUN_00548b30(auStack_88,param_4);
  FUN_00548b30(auStack_78,param_5);
  if (*(int *)(param_1 + 0xc) == 0) {
    FUN_007c4d54();
  }
  pcVar1 = *(code **)(param_1 + 0x10);
  FUN_00548b30(auStack_38,auStack_a8);
  FUN_00548b30(auStack_48,auStack_98);
  FUN_00548b30(auStack_58,auStack_88);
  FUN_00548b30(auStack_68,auStack_78);
  (*pcVar1)(param_1 + 4,auStack_38,auStack_48,auStack_58,auStack_68);
  FUN_00548ab0(auStack_68);
  FUN_00548ab0(auStack_58);
  FUN_00548ab0(auStack_48);
  FUN_00548ab0(auStack_38);
  FUN_00548ab0(auStack_78);
  FUN_00548ab0(auStack_88);
  FUN_00548ab0(auStack_98);
  FUN_00548ab0(auStack_a8);
  return;
}

// ---- FUN_005452c2  @ 0x5452c2
void FUN_005452c2(undefined4 *param_1)

{
  undefined4 *puVar1;
  undefined4 *puVar2;
  
  puVar1 = (undefined4 *)*param_1;
  while (puVar1 != param_1) {
    puVar2 = (undefined4 *)*puVar1;
    FUN_00544d78(puVar1 + 7);
    FUN_00548ab0(puVar1 + 2);
    operator_delete(puVar1);
    puVar1 = puVar2;
  }
  return;
}

// ---- FUN_005452ec  @ 0x5452ec
void FUN_005452ec(undefined4 param_1,void *param_2)

{
  void *pvVar1;
  
  while (param_2 != (void *)0x0) {
    FUN_005452ec(param_1,*(undefined4 *)((int)param_2 + 0xc));
    pvVar1 = *(void **)((int)param_2 + 8);
    FUN_005452c2((int)param_2 + 0x14);
    operator_delete(param_2);
    param_2 = pvVar1;
  }
  return;
}

// ---- FUN_00545312  @ 0x545312
int FUN_00545312(int param_1)

{
  FUN_005452ec(param_1 + 4,*(undefined4 *)(param_1 + 0xc));
  return param_1;
}

// ---- FUN_00545322  @ 0x545322
int FUN_00545322(int param_1,uint *param_2,undefined4 param_3)

{
  int iVar1;
  void *__s;
  int iVar2;
  int iVar3;
  int local_20;
  uint *local_1c;
  undefined4 uStack_18;
  
  iVar1 = *(int *)(param_1 + 8);
  iVar2 = param_1 + 4;
  while (iVar3 = iVar1, iVar3 != 0) {
    if (*(uint *)(iVar3 + 0x10) < *param_2) {
      iVar1 = *(int *)(iVar3 + 0xc);
    }
    else {
      iVar1 = *(int *)(iVar3 + 8);
      iVar2 = iVar3;
    }
  }
  if ((iVar2 == param_1 + 4) || (*param_2 < *(uint *)(iVar2 + 0x10))) {
    local_20 = param_1;
    local_1c = param_2;
    uStack_18 = param_3;
    __s = operator_new(0x1c);
    if (__s != (void *)0x0) {
      memset(__s,0,0x10);
      *(uint *)((int)__s + 0x10) = *param_2;
      *(int *)((int)__s + 0x14) = (int)__s + 0x14;
      *(int *)((int)__s + 0x18) = (int)__s + 0x14;
    }
    FUN_00544fe0(&local_20,param_1,iVar2,(int)__s + 0x10);
    iVar2 = local_20;
    if (local_1c == (uint *)0x0) {
      FUN_005452c2((int)__s + 0x14);
      operator_delete(__s);
    }
    else {
      iVar2 = FUN_00544db0(param_1,local_20,local_1c,__s);
    }
  }
  return iVar2 + 0x14;
}

// ---- FUN_005453a8  @ 0x5453a8
void FUN_005453a8(undefined4 param_1,int param_2,undefined4 param_3,undefined4 *param_4)

{
  char cVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 *puVar4;
  undefined4 local_34 [2];
  undefined4 local_2c;
  undefined4 *local_28;
  char local_24;
  
  local_28 = &DAT_00960c44;
  local_24 = 0;
  local_34[0] = param_3;
  std::mutex::lock((mutex *)&DAT_00960c44);
  local_24 = '\x01';
  cVar1 = DAT_00960c60;
  if (((param_2 == 0) || (cVar1 = DAT_00960c61, param_2 == 1)) && (cVar1 == '\0')) {
    std::unique_lock<std::mutex>::unlock((unique_lock<std::mutex> *)&local_28);
    (**(code **)(*(int *)*param_4 + 8))();
  }
  else {
    uVar3 = FUN_00545322(&DAT_00960c48,local_34);
    puVar4 = operator_new(0x20);
    if (puVar4 != (undefined4 *)0x0) {
      *puVar4 = 0;
      puVar4[1] = 0;
      local_2c = *param_4;
      *param_4 = 0;
      FUN_00549380(puVar4 + 2,param_1);
      uVar2 = local_2c;
      puVar4[6] = param_2;
      local_2c = 0;
      puVar4[7] = uVar2;
      FUN_00544d78(&local_2c);
    }
    FUN_00799b9c(puVar4,uVar3);
  }
  if (local_24 != '\0') {
    std::unique_lock<std::mutex>::unlock((unique_lock<std::mutex> *)&local_28);
  }
  return;
}

// ---- FUN_00545484  @ 0x545484
undefined4 FUN_00545484(int param_1,undefined4 param_2)

{
  int *piVar1;
  undefined4 uVar2;
  undefined4 local_1c [2];
  undefined4 *local_14 [2];
  
  local_14[0] = &DAT_00960c44;
  local_1c[0] = param_2;
  std::mutex::lock((mutex *)&DAT_00960c44);
  piVar1 = (int *)FUN_00545322(&DAT_00960c48,local_1c);
  do {
    if ((int *)*piVar1 == piVar1) {
      uVar2 = 0;
      goto LAB_005454be;
    }
  } while (param_1 != ((int *)*piVar1)[6]);
  uVar2 = 1;
LAB_005454be:
  std::lock_guard<std::mutex>::~lock_guard((lock_guard<std::mutex> *)local_14);
  return uVar2;
}

// ---- FUN_005454d0  @ 0x5454d0
int FUN_005454d0(int param_1,uint *param_2,undefined4 param_3)

{
  int iVar1;
  void *__s;
  int iVar2;
  int iVar3;
  int local_20;
  uint *local_1c;
  undefined4 uStack_18;
  
  iVar1 = *(int *)(param_1 + 8);
  iVar2 = param_1 + 4;
  while (iVar3 = iVar1, iVar3 != 0) {
    if (*(uint *)(iVar3 + 0x10) < *param_2) {
      iVar1 = *(int *)(iVar3 + 0xc);
    }
    else {
      iVar1 = *(int *)(iVar3 + 8);
      iVar2 = iVar3;
    }
  }
  if ((iVar2 == param_1 + 4) || (*param_2 < *(uint *)(iVar2 + 0x10))) {
    local_20 = param_1;
    local_1c = param_2;
    uStack_18 = param_3;
    __s = operator_new(0x1c);
    if (__s != (void *)0x0) {
      memset(__s,0,0x10);
      *(uint *)((int)__s + 0x10) = *param_2;
      *(int *)((int)__s + 0x14) = (int)__s + 0x14;
      *(int *)((int)__s + 0x18) = (int)__s + 0x14;
    }
    FUN_00544fe0(&local_20,param_1,iVar2,(int)__s + 0x10);
    iVar2 = local_20;
    if (local_1c == (uint *)0x0) {
      FUN_005452c2((int)__s + 0x14);
      operator_delete(__s);
    }
    else {
      iVar2 = FUN_00544db0(param_1,local_20,local_1c,__s);
    }
  }
  return iVar2 + 0x14;
}

// ---- FUN_00545554  @ 0x545554
void FUN_00545554(int param_1,undefined4 param_2,_Vector_base *param_3,undefined4 param_4)

{
  code *pcVar1;
  undefined1 *puVar2;
  code *pcVar3;
  _Vector_base<unsigned_char,std::allocator<unsigned_char>> a_Stack_7c [12];
  _Vector_base<unsigned_char,std::allocator<unsigned_char>> a_Stack_70 [12];
  _Vector_base<unsigned_char,std::allocator<unsigned_char>> a_Stack_64 [12];
  undefined1 auStack_58 [16];
  undefined1 auStack_48 [16];
  undefined1 auStack_38 [20];
  
  puVar2 = auStack_58;
  FUN_00548b30(puVar2);
  std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::_Vector_base(a_Stack_7c,param_3);
  FUN_00548b30(auStack_48,auStack_58);
  std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::_Vector_base
            (a_Stack_70,(_Vector_base *)a_Stack_7c);
  if (*(int *)(param_1 + 0xc) == 0) {
    FUN_007c4d54();
  }
  pcVar1 = *(code **)(param_1 + 0x10);
  pcVar3 = pcVar1;
  FUN_00548b30(auStack_38,auStack_48);
  std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::_Vector_base
            (a_Stack_64,(_Vector_base *)a_Stack_70);
  (*pcVar1)(param_1 + 4,auStack_38,a_Stack_64,param_4,puVar2,pcVar3);
  std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::~_Vector_base(a_Stack_64);
  FUN_00548ab0(auStack_38);
  std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::~_Vector_base(a_Stack_70);
  FUN_00548ab0(auStack_48);
  std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::~_Vector_base(a_Stack_7c);
  FUN_00548ab0(auStack_58);
  return;
}

// ---- FUN_00545614  @ 0x545614
void FUN_00545614(int param_1,undefined4 param_2,undefined4 param_3)

{
  code *pcVar1;
  undefined1 auStack_88 [16];
  undefined1 auStack_78 [16];
  undefined1 auStack_68 [16];
  undefined1 auStack_58 [16];
  undefined1 auStack_48 [16];
  undefined1 auStack_38 [20];
  
  FUN_00548b30(auStack_88);
  FUN_00548b30(auStack_78,param_3);
  FUN_00548b30(auStack_58,auStack_88);
  FUN_00548b30(auStack_68,auStack_78);
  if (*(int *)(param_1 + 0xc) == 0) {
    FUN_007c4d54();
  }
  pcVar1 = *(code **)(param_1 + 0x10);
  FUN_00548b30(auStack_38,auStack_58);
  FUN_00548b30(auStack_48,auStack_68);
  (*pcVar1)(param_1 + 4,auStack_38,auStack_48);
  FUN_00548ab0(auStack_48);
  FUN_00548ab0(auStack_38);
  FUN_00548ab0(auStack_68);
  FUN_00548ab0(auStack_58);
  FUN_00548ab0(auStack_78);
  FUN_00548ab0(auStack_88);
  return;
}

// ---- FUN_005456d0  @ 0x5456d0
undefined4 FUN_005456d0(undefined4 *param_1)

{
  undefined4 uVar1;
  
  uVar1 = *param_1;
  FUN_00799bac();
  FUN_00544d78(param_1 + 7);
  FUN_00548ab0(param_1 + 2);
  operator_delete(param_1);
  return uVar1;
}

// ---- FUN_005456f8  @ 0x5456f8
void FUN_005456f8(int param_1,undefined4 param_2)

{
  undefined4 *puVar1;
  int iVar2;
  undefined4 *puVar3;
  undefined4 local_2c;
  undefined4 *local_28;
  undefined4 *local_24;
  undefined4 *local_20;
  undefined4 local_1c;
  
  local_24 = (undefined4 *)0x0;
  local_20 = (undefined4 *)0x0;
  local_1c = 0;
  local_28 = &DAT_00960c44;
  local_2c = param_2;
  std::mutex::lock((mutex *)&DAT_00960c44);
  puVar1 = (undefined4 *)FUN_00545322(&DAT_00960c48,&local_2c);
  puVar3 = (undefined4 *)*puVar1;
  while (puVar3 != puVar1) {
    iVar2 = puVar3[6];
    if ((param_1 == iVar2) || (param_1 == 2)) {
      if ((iVar2 == 0) || (iVar2 == 1)) {
        FUN_00544ecc(&local_24,puVar3 + 7);
      }
      puVar3 = (undefined4 *)FUN_005456d0(puVar3);
    }
    else {
      puVar3 = (undefined4 *)*puVar3;
    }
  }
  std::lock_guard<std::mutex>::~lock_guard((lock_guard<std::mutex> *)&local_28);
  puVar1 = local_20;
  for (puVar3 = local_24; puVar3 != puVar1; puVar3 = puVar3 + 1) {
    (**(code **)(*(int *)*puVar3 + 8))();
  }
  FUN_00544d8e(&local_24);
  return;
}

// ---- FUN_00545790  @ 0x545790
void FUN_00545790(undefined4 param_1)

{
  undefined4 extraout_r2;
  undefined4 extraout_r3;
  undefined4 *local_14;
  
  local_14 = &DAT_00960c44;
  std::mutex::lock((mutex *)&DAT_00960c44);
  DAT_00960c60 = 0;
  std::lock_guard<std::mutex>::~lock_guard((lock_guard<std::mutex> *)&local_14);
  FUN_005456f8(0,0x5463d1,extraout_r2,extraout_r3,param_1);
  return;
}

// ---- FUN_005457c4  @ 0x5457c4
void FUN_005457c4(undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 *local_14;
  undefined4 uStack_10;
  
  local_14 = &DAT_00960c44;
  uStack_10 = param_3;
  std::mutex::lock((mutex *)&DAT_00960c44);
  DAT_00960c61 = 0;
  std::lock_guard<std::mutex>::~lock_guard((lock_guard<std::mutex> *)&local_14);
  FUN_005456f8(1,0x5463d1);
  return;
}

// ---- FUN_005457f8  @ 0x5457f8
void FUN_005457f8(int param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 *puVar1;
  undefined *puVar2;
  undefined4 *local_1c;
  undefined4 uStack_18;
  
  local_1c = &DAT_00960c44;
  uStack_18 = param_3;
  std::mutex::lock((mutex *)&DAT_00960c44);
  for (puVar2 = DAT_00960c54; puVar2 != &DAT_00960c4c; puVar2 = (undefined *)FUN_00799768(puVar2)) {
    puVar1 = *(undefined4 **)(puVar2 + 0x14);
    while (puVar1 != (undefined4 *)(puVar2 + 0x14)) {
      if (puVar1[6] == param_1) {
        puVar1 = (undefined4 *)FUN_005456d0();
      }
      else {
        puVar1 = (undefined4 *)*puVar1;
      }
    }
  }
  std::lock_guard<std::mutex>::~lock_guard((lock_guard<std::mutex> *)&local_1c);
  return;
}

// ---- FUN_00545844  @ 0x545844
void FUN_00545844(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                 undefined4 param_5)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  int iVar3;
  undefined4 *puVar4;
  undefined4 *local_54;
  undefined4 *local_50;
  undefined4 local_4c;
  undefined4 *local_48 [4];
  undefined4 local_38 [5];
  
  local_54 = (undefined4 *)0x0;
  local_50 = (undefined4 *)0x0;
  local_4c = 0;
  local_48[0] = &DAT_00960c44;
  std::mutex::lock((mutex *)&DAT_00960c44);
  local_38[0] = param_1;
  puVar1 = (undefined4 *)FUN_005454d0(&DAT_00960c48,local_38);
  puVar4 = (undefined4 *)*puVar1;
LAB_0054587e:
  do {
    if (puVar4 == puVar1) {
      std::lock_guard<std::mutex>::~lock_guard((lock_guard<std::mutex> *)local_48);
      puVar1 = local_50;
      for (puVar4 = local_54; puVar4 != puVar1; puVar4 = puVar4 + 1) {
        uVar2 = *puVar4;
        FUN_005450a8((lock_guard<std::mutex> *)local_48,param_4);
        FUN_005450a8(local_38,param_5);
        FUN_00545614(uVar2,(lock_guard<std::mutex> *)local_48,local_38);
        FUN_00548ab0(local_38);
        FUN_00548ab0((lock_guard<std::mutex> *)local_48);
      }
      FUN_00544d8e(&local_54);
      return;
    }
    uVar2 = FUN_00548bac(puVar4 + 2);
    iVar3 = FUN_00544d24(param_2,param_3,uVar2);
    if (iVar3 != 0) {
      if (puVar4[6] == 0) {
        FUN_00544ecc(&local_54,puVar4 + 7);
        puVar4 = (undefined4 *)FUN_005456d0(puVar4);
        goto LAB_0054587e;
      }
      local_38[0] = (**(code **)(*(int *)puVar4[7] + 0xc))();
      FUN_00544e14(&local_54,local_38);
    }
    puVar4 = (undefined4 *)*puVar4;
  } while( true );
}

// ---- FUN_00545938  @ 0x545938
void FUN_00545938(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined1 auStack_38 [16];
  undefined1 auStack_28 [16];
  
  FUN_0054929e(auStack_38,&DAT_00962a24);
  FUN_0054929e(auStack_28,&DAT_00961124,param_4);
  FUN_00545844(0x545939,param_1,param_2,auStack_38,auStack_28);
  FUN_00548ab0(auStack_28);
  FUN_00548ab0(auStack_38);
  return;
}

// ---- FUN_005459a4  @ 0x5459a4
void FUN_005459a4(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined1 auStack_38 [16];
  undefined1 auStack_28 [16];
  
  FUN_0054929e(auStack_38,&DAT_00962a24);
  FUN_0054929e(auStack_28,&DAT_00961124,param_4);
  FUN_00545844(0x5459a5,param_1,param_2,auStack_38,auStack_28);
  FUN_00548ab0(auStack_28);
  FUN_00548ab0(auStack_38);
  return;
}

// ---- FUN_00545a10  @ 0x545a10
void FUN_00545a10(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined1 auStack_38 [16];
  undefined1 auStack_28 [16];
  
  FUN_0054929e(auStack_38,&DAT_00962a24);
  FUN_0054929e(auStack_28,&DAT_00961124,param_4);
  FUN_00545844(0x545a11,param_1,param_2,auStack_38,auStack_28);
  FUN_00548ab0(auStack_28);
  FUN_00548ab0(auStack_38);
  return;
}

// ---- FUN_00545a7c  @ 0x545a7c
void FUN_00545a7c(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined1 auStack_38 [16];
  undefined1 auStack_28 [16];
  
  FUN_0054929e(auStack_38,&DAT_00962a24);
  FUN_0054929e(auStack_28,&DAT_00961124,param_4);
  FUN_00545844(0x545a7d,param_1,param_2,auStack_38,auStack_28);
  FUN_00548ab0(auStack_28);
  FUN_00548ab0(auStack_38);
  return;
}

// ---- FUN_00545ae8  @ 0x545ae8
void FUN_00545ae8(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined1 auStack_38 [16];
  undefined1 auStack_28 [16];
  
  FUN_0054929e(auStack_38,&DAT_00962a24);
  FUN_0054929e(auStack_28,&DAT_00961124,param_4);
  FUN_00545844(0x545ae9,param_1,param_2,auStack_38,auStack_28);
  FUN_00548ab0(auStack_28);
  FUN_00548ab0(auStack_38);
  return;
}

// ---- FUN_00545b54  @ 0x545b54
void FUN_00545b54(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined1 auStack_38 [16];
  undefined1 auStack_28 [16];
  
  FUN_0054929e(auStack_38,&DAT_00962a24);
  FUN_0054929e(auStack_28,&DAT_00961124,param_4);
  FUN_00545844(0x545b55,param_1,param_2,auStack_38,auStack_28);
  FUN_00548ab0(auStack_28);
  FUN_00548ab0(auStack_38);
  return;
}

// ---- FUN_00545bc0  @ 0x545bc0
void FUN_00545bc0(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                 undefined1 param_5)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  int iVar3;
  undefined4 *puVar4;
  _Vector_base<unsigned_char,std::allocator<unsigned_char>> a_Stack_6c [12];
  undefined4 *local_60;
  undefined4 *local_5c;
  undefined4 local_58;
  undefined4 *local_54 [3];
  undefined1 auStack_48 [16];
  undefined4 local_38 [5];
  
  FUN_0054929e(auStack_48,&DAT_009628a4);
  FUN_0054f7ec(a_Stack_6c,param_4);
  local_60 = (undefined4 *)0x0;
  local_5c = (undefined4 *)0x0;
  local_58 = 0;
  local_54[0] = &DAT_00960c44;
  std::mutex::lock((mutex *)&DAT_00960c44);
  local_38[0] = 0x545bc1;
  puVar1 = (undefined4 *)FUN_005454d0(&DAT_00960c48,local_38);
  puVar4 = (undefined4 *)*puVar1;
LAB_00545c1a:
  do {
    if (puVar4 == puVar1) {
      std::lock_guard<std::mutex>::~lock_guard((lock_guard<std::mutex> *)local_54);
      puVar1 = local_5c;
      for (puVar4 = local_60; puVar4 != puVar1; puVar4 = puVar4 + 1) {
        uVar2 = *puVar4;
        FUN_005450a8(local_38,auStack_48);
        std::vector<unsigned_char,std::allocator<unsigned_char>>::vector
                  ((vector<unsigned_char,std::allocator<unsigned_char>> *)local_54,a_Stack_6c);
        FUN_00545554(uVar2,local_38,(lock_guard<std::mutex> *)local_54,param_5);
        std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::~_Vector_base
                  ((_Vector_base<unsigned_char,std::allocator<unsigned_char>> *)local_54);
        FUN_00548ab0(local_38);
      }
      FUN_00544d8e(&local_60);
      std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::~_Vector_base(a_Stack_6c);
      FUN_00548ab0(auStack_48);
      return;
    }
    uVar2 = FUN_00548bac(puVar4 + 2);
    iVar3 = FUN_00544d24(param_1,param_2,uVar2);
    if (iVar3 != 0) {
      if (puVar4[6] == 0) {
        FUN_00544ecc(&local_60,puVar4 + 7);
        puVar4 = (undefined4 *)FUN_005456d0(puVar4);
        goto LAB_00545c1a;
      }
      local_38[0] = (**(code **)(*(int *)puVar4[7] + 0xc))();
      FUN_00544e14(&local_60,local_38);
    }
    puVar4 = (undefined4 *)*puVar4;
  } while( true );
}

// ---- FUN_00545cfc  @ 0x545cfc
void FUN_00545cfc(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                 undefined4 param_5)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  int iVar3;
  undefined4 *puVar4;
  code *pcVar5;
  int *piVar6;
  undefined1 *puVar7;
  int *piVar8;
  code *pcVar9;
  int *local_84;
  int *local_80;
  undefined4 local_7c;
  undefined1 auStack_78 [16];
  undefined1 auStack_68 [16];
  undefined1 auStack_58 [16];
  undefined4 *local_48 [4];
  undefined4 local_38 [5];
  
  FUN_0054929e(auStack_78,&DAT_009628a4,param_5);
  local_84 = (int *)0x0;
  local_80 = (int *)0x0;
  local_7c = 0;
  local_48[0] = &DAT_00960c44;
  std::mutex::lock((mutex *)&DAT_00960c44);
  local_38[0] = 0x545cfd;
  puVar1 = (undefined4 *)FUN_005454d0(&DAT_00960c48,local_38);
  puVar4 = (undefined4 *)*puVar1;
LAB_00545d4a:
  do {
    if (puVar4 == puVar1) {
      std::lock_guard<std::mutex>::~lock_guard((lock_guard<std::mutex> *)local_48);
      puVar7 = auStack_68;
      piVar6 = local_84;
      piVar8 = local_80;
      while (piVar6 != piVar8) {
        iVar3 = *piVar6;
        FUN_005450a8(auStack_68,auStack_78);
        FUN_00548b30(auStack_58,auStack_68);
        FUN_00548b30((lock_guard<std::mutex> *)local_48,auStack_58);
        if (*(int *)(iVar3 + 0xc) == 0) {
          FUN_007c4d54();
        }
        pcVar5 = *(code **)(iVar3 + 0x10);
        pcVar9 = pcVar5;
        FUN_00548b30(local_38,(lock_guard<std::mutex> *)local_48);
        (*pcVar5)(iVar3 + 4,param_3,param_4,local_38,puVar7,piVar8,pcVar9);
        FUN_00548ab0(local_38);
        FUN_00548ab0((lock_guard<std::mutex> *)local_48);
        FUN_00548ab0(auStack_58);
        FUN_00548ab0(auStack_68);
        piVar6 = piVar6 + 1;
      }
      FUN_00544d8e(&local_84);
      FUN_00548ab0(auStack_78);
      return;
    }
    uVar2 = FUN_00548bac(puVar4 + 2);
    iVar3 = FUN_00544d24(param_1,param_2,uVar2);
    if (iVar3 != 0) {
      if (puVar4[6] == 0) {
        FUN_00544ecc(&local_84,puVar4 + 7);
        puVar4 = (undefined4 *)FUN_005456d0(puVar4);
        goto LAB_00545d4a;
      }
      local_38[0] = (**(code **)(*(int *)puVar4[7] + 0xc))();
      FUN_00544e14(&local_84,local_38);
    }
    puVar4 = (undefined4 *)*puVar4;
  } while( true );
}

// ---- FUN_00545e64  @ 0x545e64
void FUN_00545e64(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                 undefined4 param_5)

{
  int *piVar1;
  undefined4 *puVar2;
  undefined4 uVar3;
  int iVar4;
  undefined4 *puVar5;
  int *piVar6;
  code *pcVar7;
  int *local_74;
  int *local_70;
  undefined4 local_6c;
  undefined1 auStack_68 [16];
  undefined1 auStack_58 [16];
  undefined4 *local_48 [4];
  undefined4 local_38 [5];
  
  local_74 = (int *)0x0;
  local_70 = (int *)0x0;
  local_6c = 0;
  local_48[0] = &DAT_00960c44;
  std::mutex::lock((mutex *)&DAT_00960c44);
  local_38[0] = param_1;
  puVar2 = (undefined4 *)FUN_005454d0(&DAT_00960c48,local_38);
  puVar5 = (undefined4 *)*puVar2;
LAB_00545e9e:
  do {
    if (puVar5 == puVar2) {
      std::lock_guard<std::mutex>::~lock_guard((lock_guard<std::mutex> *)local_48);
      piVar1 = local_70;
      piVar6 = local_74;
      while (piVar6 != piVar1) {
        iVar4 = *piVar6;
        FUN_005450a8(auStack_68,param_5);
        FUN_00548b30(auStack_58,auStack_68);
        FUN_00548b30((lock_guard<std::mutex> *)local_48,auStack_58);
        if (*(int *)(iVar4 + 0xc) == 0) {
          FUN_007c4d54();
        }
        pcVar7 = *(code **)(iVar4 + 0x10);
        FUN_00548b30(local_38,(lock_guard<std::mutex> *)local_48);
        (*pcVar7)(iVar4 + 4,param_4,local_38);
        FUN_00548ab0(local_38);
        FUN_00548ab0((lock_guard<std::mutex> *)local_48);
        FUN_00548ab0(auStack_58);
        FUN_00548ab0(auStack_68);
        piVar6 = piVar6 + 1;
      }
      FUN_00544d8e(&local_74);
      return;
    }
    uVar3 = FUN_00548bac(puVar5 + 2);
    iVar4 = FUN_00544d24(param_2,param_3,uVar3);
    if (iVar4 != 0) {
      if (puVar5[6] == 0) {
        FUN_00544ecc(&local_74,puVar5 + 7);
        puVar5 = (undefined4 *)FUN_005456d0(puVar5);
        goto LAB_00545e9e;
      }
      local_38[0] = (**(code **)(*(int *)puVar5[7] + 0xc))();
      FUN_00544e14(&local_74,local_38);
    }
    puVar5 = (undefined4 *)*puVar5;
  } while( true );
}

// ---- FUN_00545f9c  @ 0x545f9c
void FUN_00545f9c(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined1 auStack_28 [20];
  
  FUN_0054929e(auStack_28,&DAT_00962a24,param_4);
  FUN_00545e64(0x545f9d,param_1,param_2,param_3,auStack_28);
  FUN_00548ab0(auStack_28);
  return;
}

// ---- FUN_00545fe4  @ 0x545fe4
void FUN_00545fe4(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined1 auStack_28 [20];
  
  FUN_0054929e(auStack_28,&DAT_009628a4,param_4);
  FUN_00545e64(0x545fe5,param_1,param_2,param_3,auStack_28);
  FUN_00548ab0(auStack_28);
  return;
}

// ---- FUN_0054602c  @ 0x54602c
void FUN_0054602c(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined1 auStack_28 [20];
  
  FUN_0054929e(auStack_28,&DAT_00962a24,param_4);
  FUN_00545e64(0x54602d,param_1,param_2,param_3,auStack_28);
  FUN_00548ab0(auStack_28);
  return;
}

// ---- FUN_00546074  @ 0x546074
void FUN_00546074(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined1 auStack_28 [20];
  
  FUN_0054929e(auStack_28,&DAT_00962a24,param_4);
  FUN_00545e64(0x546075,param_1,param_2,param_3,auStack_28);
  FUN_00548ab0(auStack_28);
  return;
}

// ---- FUN_005460bc  @ 0x5460bc
void FUN_005460bc(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int *piVar1;
  undefined4 *puVar2;
  undefined4 uVar3;
  int iVar4;
  undefined4 *puVar5;
  int *piVar6;
  code *pcVar7;
  int *local_74;
  int *local_70;
  undefined4 local_6c;
  undefined1 auStack_68 [16];
  undefined1 auStack_58 [16];
  undefined4 *local_48 [4];
  undefined4 local_38 [5];
  
  local_74 = (int *)0x0;
  local_70 = (int *)0x0;
  local_6c = 0;
  local_48[0] = &DAT_00960c44;
  std::mutex::lock((mutex *)&DAT_00960c44);
  local_38[0] = param_1;
  puVar2 = (undefined4 *)FUN_005454d0(&DAT_00960c48,local_38);
  puVar5 = (undefined4 *)*puVar2;
LAB_005460f4:
  do {
    if (puVar5 == puVar2) {
      std::lock_guard<std::mutex>::~lock_guard((lock_guard<std::mutex> *)local_48);
      piVar1 = local_70;
      piVar6 = local_74;
      while (piVar6 != piVar1) {
        iVar4 = *piVar6;
        FUN_005450a8(auStack_68,param_4);
        FUN_00548b30(auStack_58,auStack_68);
        FUN_00548b30((lock_guard<std::mutex> *)local_48,auStack_58);
        if (*(int *)(iVar4 + 0xc) == 0) {
          FUN_007c4d54();
        }
        pcVar7 = *(code **)(iVar4 + 0x10);
        FUN_00548b30(local_38,(lock_guard<std::mutex> *)local_48);
        (*pcVar7)(iVar4 + 4,local_38);
        FUN_00548ab0(local_38);
        FUN_00548ab0((lock_guard<std::mutex> *)local_48);
        FUN_00548ab0(auStack_58);
        FUN_00548ab0(auStack_68);
        piVar6 = piVar6 + 1;
      }
      FUN_00544d8e(&local_74);
      return;
    }
    uVar3 = FUN_00548bac(puVar5 + 2);
    iVar4 = FUN_00544d24(param_2,param_3,uVar3);
    if (iVar4 != 0) {
      if (puVar5[6] == 0) {
        FUN_00544ecc(&local_74,puVar5 + 7);
        puVar5 = (undefined4 *)FUN_005456d0(puVar5);
        goto LAB_005460f4;
      }
      local_38[0] = (**(code **)(*(int *)puVar5[7] + 0xc))();
      FUN_00544e14(&local_74,local_38);
    }
    puVar5 = (undefined4 *)*puVar5;
  } while( true );
}

// ---- FUN_00546234  @ 0x546234
void FUN_00546234(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  
  uStack_20 = param_1;
  uStack_1c = param_2;
  uStack_18 = param_3;
  uStack_14 = param_4;
  FUN_00548b18(&uStack_20);
  FUN_005460bc(&LAB_005461f0_1,param_1,param_2,&uStack_20);
  FUN_00548ab0(&uStack_20);
  return;
}

// ---- FUN_00546268  @ 0x546268
void FUN_00546268(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  
  uStack_20 = param_1;
  uStack_1c = param_2;
  uStack_18 = param_3;
  uStack_14 = param_4;
  FUN_0054929e(&uStack_20,&DAT_00962da4);
  FUN_005460bc(0x546269,param_1,param_2,&uStack_20);
  FUN_00548ab0(&uStack_20);
  return;
}

// ---- FUN_005462a4  @ 0x5462a4
void FUN_005462a4(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  
  uStack_20 = param_1;
  uStack_1c = param_2;
  uStack_18 = param_3;
  uStack_14 = param_4;
  FUN_0054929e(&uStack_20,&DAT_00962f24);
  FUN_005460bc(0x5462a5,param_1,param_2,&uStack_20);
  FUN_00548ab0(&uStack_20);
  return;
}

// ---- FUN_005462e0  @ 0x5462e0
void FUN_005462e0(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  
  uStack_20 = param_1;
  uStack_1c = param_2;
  uStack_18 = param_3;
  uStack_14 = param_4;
  FUN_0054929e(&uStack_20,&DAT_009628a4);
  FUN_005460bc(0x5462e1,param_1,param_2,&uStack_20);
  FUN_00548ab0(&uStack_20);
  return;
}

// ---- FUN_0054631c  @ 0x54631c
void FUN_0054631c(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  
  uStack_20 = param_1;
  uStack_1c = param_2;
  uStack_18 = param_3;
  uStack_14 = param_4;
  FUN_0054929e(&uStack_20,&DAT_009620a4);
  FUN_005460bc(0x54631d,param_1,param_2,&uStack_20);
  FUN_00548ab0(&uStack_20);
  return;
}

// ---- FUN_00546358  @ 0x546358
void FUN_00546358(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  
  uStack_20 = param_1;
  uStack_1c = param_2;
  uStack_18 = param_3;
  uStack_14 = param_4;
  FUN_0054929e(&uStack_20,&DAT_009628a4);
  FUN_005460bc(0x546359,param_1,param_2,&uStack_20);
  FUN_00548ab0(&uStack_20);
  return;
}

// ---- FUN_00546394  @ 0x546394
void FUN_00546394(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  
  uStack_20 = param_1;
  uStack_1c = param_2;
  uStack_18 = param_3;
  uStack_14 = param_4;
  FUN_0054929e(&uStack_20,&DAT_009632a4);
  FUN_005460bc(0x546395,param_1,param_2,&uStack_20);
  FUN_00548ab0(&uStack_20);
  return;
}

// ---- FUN_005463d0  @ 0x5463d0
void FUN_005463d0(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  
  uStack_20 = param_1;
  uStack_1c = param_2;
  uStack_18 = param_3;
  uStack_14 = param_4;
  FUN_0054929e(&uStack_20,&DAT_00962c24);
  FUN_005460bc(0x5463d1,param_1,param_2,&uStack_20);
  FUN_00548ab0(&uStack_20);
  return;
}

// ---- FUN_0054640c  @ 0x54640c
void FUN_0054640c(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  
  uStack_20 = param_1;
  uStack_1c = param_2;
  uStack_18 = param_3;
  uStack_14 = param_4;
  FUN_0054929e(&uStack_20,&DAT_00961c24);
  FUN_005460bc(0x54640d,param_1,param_2,&uStack_20);
  FUN_00548ab0(&uStack_20);
  return;
}

// ---- FUN_00546448  @ 0x546448
void FUN_00546448(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  
  uStack_20 = param_1;
  uStack_1c = param_2;
  uStack_18 = param_3;
  uStack_14 = param_4;
  FUN_0054929e(&uStack_20,&DAT_00962a24);
  FUN_005460bc(0x546449,param_1,param_2,&uStack_20);
  FUN_00548ab0(&uStack_20);
  return;
}

// ---- FUN_00546484  @ 0x546484
void FUN_00546484(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  
  uStack_20 = param_1;
  uStack_1c = param_2;
  uStack_18 = param_3;
  uStack_14 = param_4;
  FUN_0054929e(&uStack_20,&DAT_00962a24);
  FUN_005460bc(0x546485,param_1,param_2,&uStack_20);
  FUN_00548ab0(&uStack_20);
  return;
}

// ---- FUN_005464c0  @ 0x5464c0
void FUN_005464c0(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  
  uStack_20 = param_1;
  uStack_1c = param_2;
  uStack_18 = param_3;
  uStack_14 = param_4;
  FUN_0054929e(&uStack_20,&DAT_009628a4);
  FUN_005460bc(0x5464c1,param_1,param_2,&uStack_20);
  FUN_00548ab0(&uStack_20);
  return;
}

// ---- FUN_005464fc  @ 0x5464fc
void FUN_005464fc(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  
  uStack_20 = param_1;
  uStack_1c = param_2;
  uStack_18 = param_3;
  uStack_14 = param_4;
  FUN_0054929e(&uStack_20,&DAT_009628a4);
  FUN_005460bc(0x5464fd,param_1,param_2,&uStack_20);
  FUN_00548ab0(&uStack_20);
  return;
}

// ---- FUN_00546538  @ 0x546538
void FUN_00546538(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  
  uStack_20 = param_1;
  uStack_1c = param_2;
  uStack_18 = param_3;
  uStack_14 = param_4;
  FUN_0054929e(&uStack_20,&DAT_00962a24);
  FUN_005460bc(0x546539,param_1,param_2,&uStack_20);
  FUN_00548ab0(&uStack_20);
  return;
}

// ---- FUN_00546574  @ 0x546574
void FUN_00546574(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  
  uStack_20 = param_1;
  uStack_1c = param_2;
  uStack_18 = param_3;
  uStack_14 = param_4;
  FUN_0054929e(&uStack_20,&DAT_00962a24);
  FUN_005460bc(0x546575,param_1,param_2,&uStack_20);
  FUN_00548ab0(&uStack_20);
  return;
}

// ---- FUN_005465b0  @ 0x5465b0
void FUN_005465b0(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  
  uStack_20 = param_1;
  uStack_1c = param_2;
  uStack_18 = param_3;
  uStack_14 = param_4;
  FUN_0054929e(&uStack_20,&DAT_009628a4);
  FUN_005460bc(0x5465b1,param_1,param_2,&uStack_20);
  FUN_00548ab0(&uStack_20);
  return;
}

// ---- FUN_005465ec  @ 0x5465ec
void FUN_005465ec(undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
  undefined1 auStack_28 [20];
  
  FUN_005166ae(1,"Received a NearbyConnections onDisconnected signal from a remote endpoint.");
  FUN_0054929e(auStack_28,&DAT_009628a4,param_3);
  FUN_005460bc(0x5465ed,param_1,param_2,auStack_28);
  FUN_00548ab0(auStack_28);
  return;
}

// ---- FUN_0054663c  @ 0x54663c
void FUN_0054663c(int param_1,undefined4 param_2,undefined4 param_3,_Vector_base *param_4)

{
  code *pcVar1;
  _Vector_base<unsigned_char,std::allocator<unsigned_char>> a_Stack_ac [12];
  _Vector_base<unsigned_char,std::allocator<unsigned_char>> a_Stack_a0 [12];
  _Vector_base<unsigned_char,std::allocator<unsigned_char>> a_Stack_94 [12];
  undefined1 auStack_88 [16];
  undefined1 auStack_78 [16];
  undefined1 auStack_68 [16];
  undefined1 auStack_58 [16];
  undefined1 auStack_48 [16];
  undefined1 auStack_38 [20];
  
  FUN_00548b30(auStack_88);
  FUN_00548b30(auStack_78,param_3);
  std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::_Vector_base(a_Stack_ac,param_4);
  FUN_00548b30(auStack_58,auStack_88);
  FUN_00548b30(auStack_68,auStack_78);
  std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::_Vector_base
            (a_Stack_a0,(_Vector_base *)a_Stack_ac);
  if (*(int *)(param_1 + 0xc) == 0) {
    FUN_007c4d54();
  }
  pcVar1 = *(code **)(param_1 + 0x10);
  FUN_00548b30(auStack_38,auStack_58);
  FUN_00548b30(auStack_48,auStack_68);
  std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::_Vector_base
            (a_Stack_94,(_Vector_base *)a_Stack_a0);
  (*pcVar1)(param_1 + 4,auStack_38,auStack_48,a_Stack_94);
  std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::~_Vector_base(a_Stack_94);
  FUN_00548ab0(auStack_48);
  FUN_00548ab0(auStack_38);
  std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::~_Vector_base(a_Stack_a0);
  FUN_00548ab0(auStack_68);
  FUN_00548ab0(auStack_58);
  std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::~_Vector_base(a_Stack_ac);
  FUN_00548ab0(auStack_78);
  FUN_00548ab0(auStack_88);
  return;
}

// ---- FUN_005468d4  @ 0x5468d4
void FUN_005468d4(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                 undefined4 param_5,undefined4 param_6)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  int iVar3;
  undefined4 *puVar4;
  undefined4 *local_104;
  undefined4 *local_f4;
  undefined4 *local_f0;
  undefined4 local_ec;
  undefined1 auStack_e8 [16];
  undefined1 auStack_d8 [16];
  undefined1 auStack_c8 [16];
  undefined1 auStack_b8 [16];
  undefined1 auStack_a8 [16];
  undefined1 auStack_98 [16];
  undefined1 auStack_88 [16];
  undefined1 auStack_78 [16];
  undefined1 auStack_68 [16];
  undefined1 auStack_58 [16];
  undefined4 *local_48 [4];
  undefined4 local_38 [5];
  
  FUN_0054929e(auStack_e8,&DAT_009628a4);
  FUN_0054929e(auStack_d8,&DAT_009628a4,param_4);
  FUN_0054929e(auStack_c8,&DAT_009628a4,param_5);
  FUN_0054929e(auStack_b8,&DAT_009628a4,param_6);
  local_f4 = (undefined4 *)0x0;
  local_f0 = (undefined4 *)0x0;
  local_ec = 0;
  local_48[0] = &DAT_00960c44;
  std::mutex::lock((mutex *)&DAT_00960c44);
  local_38[0] = 0x5468d5;
  puVar1 = (undefined4 *)FUN_005454d0(&DAT_00960c48,local_38);
  puVar4 = (undefined4 *)*puVar1;
LAB_0054694a:
  do {
    if (puVar4 == puVar1) {
      std::lock_guard<std::mutex>::~lock_guard((lock_guard<std::mutex> *)local_48);
      puVar1 = local_f0;
      local_104 = local_f4;
      while( true ) {
        if (local_104 == puVar1) break;
        uVar2 = *local_104;
        FUN_005450a8(auStack_a8,auStack_e8);
        FUN_005450a8(auStack_98,auStack_d8);
        FUN_005450a8(auStack_88,auStack_c8);
        FUN_005450a8(auStack_78,auStack_b8);
        FUN_00548b30(local_38,auStack_a8);
        FUN_00548b30((lock_guard<std::mutex> *)local_48,auStack_98);
        FUN_00548b30(auStack_58,auStack_88);
        FUN_00548b30(auStack_68,auStack_78);
        FUN_005451c8(uVar2,local_38,(lock_guard<std::mutex> *)local_48,auStack_58,auStack_68);
        FUN_00548ab0(auStack_68);
        FUN_00548ab0(auStack_58);
        FUN_00548ab0((lock_guard<std::mutex> *)local_48);
        FUN_00548ab0(local_38);
        FUN_00548ab0(auStack_78);
        FUN_00548ab0(auStack_88);
        FUN_00548ab0(auStack_98);
        FUN_00548ab0(auStack_a8);
        local_104 = local_104 + 1;
      }
      FUN_00544d8e(&local_f4);
      FUN_00548ab0(auStack_b8);
      FUN_00548ab0(auStack_c8);
      FUN_00548ab0(auStack_d8);
      FUN_00548ab0(auStack_e8);
      return;
    }
    uVar2 = FUN_00548bac(puVar4 + 2);
    iVar3 = FUN_00544d24(param_1,param_2,uVar2);
    if (iVar3 != 0) {
      if (puVar4[6] == 0) {
        FUN_00544ecc(&local_f4,puVar4 + 7);
        puVar4 = (undefined4 *)FUN_005456d0(puVar4);
        goto LAB_0054694a;
      }
      local_38[0] = (**(code **)(*(int *)puVar4[7] + 0xc))();
      FUN_00544e14(&local_f4,local_38);
    }
    puVar4 = (undefined4 *)*puVar4;
  } while( true );
}

// ---- FUN_00546af0  @ 0x546af0
void FUN_00546af0(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                 undefined4 param_5,undefined4 param_6)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  int iVar3;
  undefined4 *puVar4;
  undefined4 *local_f4;
  _Vector_base<unsigned_char,std::allocator<unsigned_char>> a_Stack_e8 [12];
  undefined4 *local_dc;
  undefined4 *local_d8;
  undefined4 local_d4;
  vector<unsigned_char,std::allocator<unsigned_char>> avStack_d0 [12];
  _Vector_base<unsigned_char,std::allocator<unsigned_char>> a_Stack_c4 [12];
  undefined1 auStack_b8 [16];
  undefined1 auStack_a8 [16];
  undefined1 auStack_98 [16];
  undefined1 auStack_88 [16];
  undefined1 auStack_78 [16];
  undefined1 auStack_68 [16];
  undefined1 auStack_58 [16];
  undefined4 *local_48 [4];
  undefined4 local_38 [5];
  
  FUN_005166ae(1,"Received a Nearby Connection Request.");
  FUN_0054929e(auStack_b8,&DAT_009628a4,param_3);
  FUN_0054929e(auStack_a8,&DAT_009628a4,param_4);
  FUN_0054929e(auStack_98,&DAT_009628a4,param_5);
  FUN_0054f7ec(a_Stack_e8,param_6);
  local_dc = (undefined4 *)0x0;
  local_d8 = (undefined4 *)0x0;
  local_d4 = 0;
  local_48[0] = &DAT_00960c44;
  std::mutex::lock((mutex *)&DAT_00960c44);
  local_38[0] = 0x546af1;
  puVar1 = (undefined4 *)FUN_005454d0(&DAT_00960c48,local_38);
  puVar4 = (undefined4 *)*puVar1;
LAB_00546b72:
  do {
    if (puVar4 == puVar1) {
      std::lock_guard<std::mutex>::~lock_guard((lock_guard<std::mutex> *)local_48);
      puVar1 = local_d8;
      local_f4 = local_dc;
      while( true ) {
        if (local_f4 == puVar1) break;
        uVar2 = *local_f4;
        FUN_005450a8(auStack_88,auStack_b8);
        FUN_005450a8(auStack_78,auStack_a8);
        FUN_005450a8(auStack_68,auStack_98);
        std::vector<unsigned_char,std::allocator<unsigned_char>>::vector(avStack_d0,a_Stack_e8);
        FUN_00548b30(local_38,auStack_88);
        FUN_00548b30((lock_guard<std::mutex> *)local_48,auStack_78);
        FUN_00548b30(auStack_58,auStack_68);
        std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::_Vector_base
                  (a_Stack_c4,(_Vector_base *)avStack_d0);
        FUN_005450d2(uVar2,local_38,(lock_guard<std::mutex> *)local_48,auStack_58,a_Stack_c4);
        std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::~_Vector_base(a_Stack_c4);
        FUN_00548ab0(auStack_58);
        FUN_00548ab0((lock_guard<std::mutex> *)local_48);
        FUN_00548ab0(local_38);
        std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::~_Vector_base
                  ((_Vector_base<unsigned_char,std::allocator<unsigned_char>> *)avStack_d0);
        FUN_00548ab0(auStack_68);
        FUN_00548ab0(auStack_78);
        FUN_00548ab0(auStack_88);
        local_f4 = local_f4 + 1;
      }
      FUN_00544d8e(&local_dc);
      std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::~_Vector_base(a_Stack_e8);
      FUN_00548ab0(auStack_98);
      FUN_00548ab0(auStack_a8);
      FUN_00548ab0(auStack_b8);
      return;
    }
    uVar2 = FUN_00548bac(puVar4 + 2);
    iVar3 = FUN_00544d24(param_1,param_2,uVar2);
    if (iVar3 != 0) {
      if (puVar4[6] == 0) {
        FUN_00544ecc(&local_dc,puVar4 + 7);
        puVar4 = (undefined4 *)FUN_005456d0(puVar4);
        goto LAB_00546b72;
      }
      local_38[0] = (**(code **)(*(int *)puVar4[7] + 0xc))();
      FUN_00544e14(&local_dc,local_38);
    }
    puVar4 = (undefined4 *)*puVar4;
  } while( true );
}

// ---- FUN_00546d18  @ 0x546d18
void FUN_00546d18(int *param_1)

{
  (**(code **)(*param_1 + 0x178))();
  return;
}

// ---- FUN_00546d24  @ 0x546d24
void FUN_00546d24(int *param_1)

{
  (**(code **)(*param_1 + 0x1c4))();
  return;
}

// ---- FUN_00546d30  @ 0x546d30
void FUN_00546d30(int *param_1)

{
  (**(code **)(*param_1 + 0x1cc))();
  return;
}

// ---- FUN_00546d3c  @ 0x546d3c
void FUN_00546d3c(int *param_1)

{
  (**(code **)(*param_1 + 0x1d8))();
  return;
}

// ---- FUN_00546d48  @ 0x546d48
void FUN_00546d48(int *param_1)

{
  (**(code **)(*param_1 + 0x238))();
  return;
}

// ---- FUN_00546d54  @ 0x546d54
void FUN_00546d54(int *param_1)

{
  (**(code **)(*param_1 + 0x240))();
  return;
}

// ---- FUN_00546d60  @ 0x546d60
undefined4 * FUN_00546d60(undefined4 *param_1)

{
  if ((void *)*param_1 != (void *)0x0) {
    operator_delete((void *)*param_1);
  }
  return param_1;
}

// ---- FUN_00546d70  @ 0x546d70
void FUN_00546d70(int *param_1)

{
  (**(code **)(*param_1 + 0x3c))();
  return;
}

// ---- FUN_00546d7a  @ 0x546d7a
void FUN_00546d7a(int *param_1)

{
  (**(code **)(*param_1 + 0x44))();
  return;
}

// ---- FUN_00546d84  @ 0x546d84
int * FUN_00546d84(int *param_1)

{
  if (-1 < *param_1) {
    close(*param_1);
  }
  return param_1;
}

// ---- FUN_00546d98  @ 0x546d98
undefined1 FUN_00546d98(void)

{
  return DAT_00960c9d;
}

// ---- FUN_00546da4  @ 0x546da4
undefined4 FUN_00546da4(undefined4 *param_1,int *param_2,undefined4 param_3)

{
  int iVar1;
  
  iVar1 = FUN_00546d70(param_2);
  if (iVar1 == 0) {
    if ((param_1[2] == 0) ||
       (iVar1 = (**(code **)(*param_2 + 0x35c))(param_2,param_3,param_1[1]), iVar1 == 0)) {
      return 1;
    }
    FUN_005166ae(4,"Can\'t register natives for class %s.",*param_1);
  }
  else {
    FUN_005166ae(4,"Can\'t register class %s: an exception occurred.",*param_1);
    FUN_00546d7a(param_2);
  }
  DAT_00960c9d = 1;
  return 0;
}

// ---- FUN_00546e14  @ 0x546e14
undefined4 FUN_00546e14(undefined4 *param_1)

{
  return *param_1;
}

// ---- FUN_00546e24  @ 0x546e24
void FUN_00546e24(int param_1)

{
  FUN_00548bb0(param_1 + 0xc);
  return;
}

// ---- FUN_00546e2a  @ 0x546e2a
void FUN_00546e2a(int param_1)

{
  FUN_00548c48(param_1 + 0xc);
  return;
}

// ---- FUN_00546e30  @ 0x546e30
void FUN_00546e30(undefined4 param_1,void *param_2)

{
  void *pvVar1;
  
  while (param_2 != (void *)0x0) {
    FUN_00546e30(param_1,*(undefined4 *)((int)param_2 + 0xc));
    pvVar1 = *(void **)((int)param_2 + 8);
    operator_delete(param_2);
    param_2 = pvVar1;
  }
  return;
}

// ---- FUN_00546e4e  @ 0x546e4e
void FUN_00546e4e(undefined4 param_1,void *param_2)

{
  void *pvVar1;
  
  while (param_2 != (void *)0x0) {
    FUN_00546e4e(param_1,*(undefined4 *)((int)param_2 + 0xc));
    pvVar1 = *(void **)((int)param_2 + 8);
    operator_delete(param_2);
    param_2 = pvVar1;
  }
  return;
}

// ---- FUN_00546ede  @ 0x546ede
void FUN_00546ede(int *param_1,undefined4 *param_2)

{
  void *__dest;
  undefined4 *puVar1;
  uint uVar2;
  int iVar3;
  uint uVar4;
  uint uVar5;
  size_t __n;
  
  puVar1 = (undefined4 *)param_1[1];
  if (puVar1 != (undefined4 *)param_1[2]) {
    if (puVar1 != (undefined4 *)0x0) {
      *puVar1 = *param_2;
    }
    param_1[1] = param_1[1] + 4;
    return;
  }
  uVar4 = param_1[1] - *param_1 >> 2;
  uVar2 = uVar4;
  if (uVar4 == 0) {
    uVar2 = 1;
  }
  uVar5 = 0x3fffffff;
  if (!CARRY4(uVar2,uVar4)) {
    if (uVar2 + uVar4 < 0x3fffffff) {
      uVar5 = uVar2 + uVar4;
    }
    if (uVar5 == 0) {
      __dest = (void *)0x0;
      goto LAB_00546e9c;
    }
  }
  __dest = operator_new(uVar5 << 2);
LAB_00546e9c:
  iVar3 = param_1[1] - *param_1 >> 2;
  if ((void *)((int)__dest + iVar3 * 4) != (void *)0x0) {
    *(undefined4 *)((int)__dest + iVar3 * 4) = *param_2;
  }
  iVar3 = param_1[1] - *param_1 >> 2;
  __n = iVar3 * 4;
  if (iVar3 != 0) {
    memmove(__dest,(void *)*param_1,__n);
  }
  if ((void *)*param_1 != (void *)0x0) {
    operator_delete((void *)*param_1);
  }
  *param_1 = (int)__dest;
  param_1[1] = (int)__dest + __n + 4;
  param_1[2] = (int)((int)__dest + uVar5 * 4);
  return;
}

// ---- FUN_00546f00  @ 0x546f00
int FUN_00546f00(int param_1)

{
  void *__s;
  
  __s = (void *)(param_1 + 4);
  memset(__s,0,0x10);
  *(void **)(param_1 + 0xc) = __s;
  *(undefined4 *)(param_1 + 0x14) = 0;
  *(void **)(param_1 + 0x10) = __s;
  return param_1;
}

// ---- FUN_00546f3e  @ 0x546f3e
int * FUN_00546f3e(int *param_1,int param_2,tuple *param_3)

{
  int iVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  
  iVar1 = 1;
  iVar3 = param_2 + 4;
  iVar2 = *(int *)(param_2 + 8);
  while (iVar4 = iVar2, iVar4 != 0) {
    iVar1 = std::
            __tuple_compare<0u,0u,2u,std::tuple<char_const*,char_const*>,std::tuple<char_const*,char_const*>>
            ::__less(param_3,(tuple *)(iVar4 + 0x10));
    iVar3 = iVar4;
    iVar2 = *(int *)(iVar4 + 0xc);
    if (iVar1 != 0) {
      iVar2 = *(int *)(iVar4 + 8);
    }
  }
  iVar2 = iVar3;
  if (iVar1 != 0) {
    if (iVar3 == *(int *)(param_2 + 0xc)) {
      *param_1 = 0;
      param_1[1] = iVar3;
      return param_1;
    }
    iVar2 = thunk_FUN_0079972c(iVar3);
  }
  iVar1 = std::
          __tuple_compare<0u,0u,2u,std::tuple<char_const*,char_const*>,std::tuple<char_const*,char_const*>>
          ::__less((tuple *)(iVar2 + 0x10),param_3);
  if (iVar1 == 0) {
    *param_1 = iVar2;
    param_1[1] = 0;
  }
  else {
    *param_1 = 0;
    param_1[1] = iVar3;
  }
  return param_1;
}

// ---- FUN_00546fa0  @ 0x546fa0
void * FUN_00546fa0(void *param_1,void *param_2,undefined4 param_3,undefined4 *param_4)

{
  void *pvVar1;
  void *__s;
  int iVar2;
  void *pvVar3;
  undefined4 uVar4;
  void *pvVar5;
  tuple *ptVar6;
  void *pvVar7;
  void *local_30;
  void *local_2c;
  undefined4 uStack_28;
  
  local_30 = param_1;
  local_2c = param_2;
  uStack_28 = param_3;
  __s = operator_new(0x1c);
  ptVar6 = (tuple *)((int)__s + 0x10);
  if (__s != (void *)0x0) {
    memset(__s,0,0x10);
    uVar4 = ((undefined4 *)*param_4)[1];
    *(undefined4 *)ptVar6 = *(undefined4 *)*param_4;
    *(undefined4 *)((int)__s + 0x14) = uVar4;
    *(undefined4 *)((int)__s + 0x18) = 0;
  }
  pvVar7 = (void *)((int)param_1 + 4);
  if (param_2 == pvVar7) {
    if (*(int *)((int)param_1 + 0x14) == 0) {
LAB_00547078:
      FUN_00546f3e(&local_30,param_1,ptVar6);
      pvVar5 = local_2c;
      pvVar1 = local_30;
      goto LAB_00547086;
    }
    pvVar5 = *(void **)((int)param_1 + 0x10);
    iVar2 = std::
            __tuple_compare<0u,0u,2u,std::tuple<char_const*,char_const*>,std::tuple<char_const*,char_const*>>
            ::__less((tuple *)((int)pvVar5 + 0x10),ptVar6);
    if (iVar2 == 0) goto LAB_00547078;
    if (pvVar5 == (void *)0x0) {
      param_2 = (void *)0x0;
      goto LAB_005470b2;
    }
LAB_0054708a:
    if (pvVar5 == pvVar7) {
LAB_0054709a:
      uVar4 = 1;
    }
    else {
      uVar4 = std::
              __tuple_compare<0u,0u,2u,std::tuple<char_const*,char_const*>,std::tuple<char_const*,char_const*>>
              ::__less(ptVar6,(tuple *)((int)pvVar5 + 0x10));
    }
    FUN_007997e8(uVar4,__s,pvVar5,pvVar7);
    *(int *)((int)param_1 + 0x14) = *(int *)((int)param_1 + 0x14) + 1;
    param_2 = __s;
  }
  else {
    iVar2 = std::
            __tuple_compare<0u,0u,2u,std::tuple<char_const*,char_const*>,std::tuple<char_const*,char_const*>>
            ::__less(ptVar6,(tuple *)((int)param_2 + 0x10));
    if (iVar2 == 0) {
      iVar2 = std::
              __tuple_compare<0u,0u,2u,std::tuple<char_const*,char_const*>,std::tuple<char_const*,char_const*>>
              ::__less((tuple *)((int)param_2 + 0x10),ptVar6);
      if (iVar2 != 0) {
        pvVar5 = param_2;
        pvVar1 = (void *)0x0;
        if (param_2 != *(void **)((int)param_1 + 0x10)) {
          pvVar5 = (void *)FUN_00799768(param_2);
          iVar2 = std::
                  __tuple_compare<0u,0u,2u,std::tuple<char_const*,char_const*>,std::tuple<char_const*,char_const*>>
                  ::__less(ptVar6,(tuple *)((int)pvVar5 + 0x10));
          if (iVar2 == 0) goto LAB_00547078;
          pvVar1 = pvVar5;
          if (*(int *)((int)param_2 + 0xc) == 0) {
            pvVar5 = param_2;
            pvVar1 = (void *)0x0;
          }
        }
        goto LAB_00547086;
      }
    }
    else {
      pvVar5 = param_2;
      pvVar1 = param_2;
      if (param_2 != *(void **)((int)param_1 + 0xc)) {
        pvVar3 = (void *)thunk_FUN_0079972c(param_2);
        iVar2 = std::
                __tuple_compare<0u,0u,2u,std::tuple<char_const*,char_const*>,std::tuple<char_const*,char_const*>>
                ::__less((tuple *)((int)pvVar3 + 0x10),ptVar6);
        if (iVar2 == 0) {
          FUN_00546f3e(&local_30,param_1,ptVar6);
          pvVar5 = local_2c;
          pvVar1 = local_30;
        }
        else {
          pvVar5 = param_2;
          if (*(int *)((int)pvVar3 + 0xc) == 0) {
            pvVar5 = pvVar3;
            pvVar1 = (void *)0x0;
          }
        }
      }
LAB_00547086:
      param_2 = pvVar1;
      if (pvVar5 != (void *)0x0) {
        if (param_2 == (void *)0x0) goto LAB_0054708a;
        goto LAB_0054709a;
      }
    }
LAB_005470b2:
    operator_delete(__s);
  }
  return param_2;
}

// ---- FUN_005470c8  @ 0x5470c8
undefined4
FUN_005470c8(undefined4 *param_1,undefined4 param_2,undefined4 param_3,int param_4,int param_5,
            code *param_6,uint param_7)

{
  int *piVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  undefined4 uVar7;
  undefined4 uVar8;
  undefined1 auStack_38 [4];
  tuple *local_34;
  undefined4 local_30;
  undefined4 local_2c;
  
  iVar5 = param_5 + 4;
  iVar3 = *(int *)(param_5 + 8);
  iVar6 = iVar5;
  local_30 = param_3;
  local_2c = param_2;
  while (iVar4 = iVar6, iVar6 = iVar3, iVar6 != 0) {
    iVar2 = std::
            __tuple_compare<0u,0u,2u,std::tuple<char_const*,char_const*>,std::tuple<char_const*,char_const*>>
            ::__less((tuple *)(iVar6 + 0x10),(tuple *)&local_30);
    iVar3 = *(int *)(iVar6 + 8);
    if (iVar2 != 0) {
      iVar3 = *(int *)(iVar6 + 0xc);
      iVar6 = iVar4;
    }
  }
  if ((iVar4 == iVar5) ||
     (iVar3 = std::
              __tuple_compare<0u,0u,2u,std::tuple<char_const*,char_const*>,std::tuple<char_const*,char_const*>>
              ::__less((tuple *)&local_30,(tuple *)(iVar4 + 0x10)), iVar3 != 0)) {
    if ((param_7 & 1) != 0) {
      param_6 = *(code **)(param_6 + *(int *)(param_4 + ((int)param_7 >> 1)));
    }
    uVar8 = FUN_00548bb0(param_1 + 3);
    uVar8 = (*param_6)(param_4 + ((int)param_7 >> 1),uVar8,param_2,param_3);
    iVar3 = FUN_00546d70(param_4);
    if (iVar3 != 0) {
      FUN_00546d7a(param_4);
      uVar7 = *param_1;
      FUN_00549ae8(&local_34,iVar3);
      FUN_005166ae(4,"Can\'t find %s.%s: %s.",uVar7,param_2,local_34);
      FUN_007c5914(&local_34);
    }
    iVar3 = iVar5;
    iVar6 = *(int *)(param_5 + 8);
    while (iVar4 = iVar3, iVar6 != 0) {
      iVar2 = std::
              __tuple_compare<0u,0u,2u,std::tuple<char_const*,char_const*>,std::tuple<char_const*,char_const*>>
              ::__less((tuple *)(iVar6 + 0x10),(tuple *)&local_30);
      piVar1 = (int *)(iVar6 + 0xc);
      iVar3 = iVar6;
      iVar6 = *(int *)(iVar6 + 8);
      if (iVar2 != 0) {
        iVar3 = iVar4;
        iVar6 = *piVar1;
      }
    }
    if ((iVar4 == iVar5) ||
       (iVar3 = std::
                __tuple_compare<0u,0u,2u,std::tuple<char_const*,char_const*>,std::tuple<char_const*,char_const*>>
                ::__less((tuple *)&local_30,(tuple *)(iVar4 + 0x10)), iVar3 != 0)) {
      local_34 = (tuple *)&local_30;
      iVar4 = FUN_00546fa0(param_5,iVar4,&DAT_00831302,&local_34,auStack_38);
    }
    *(undefined4 *)(iVar4 + 0x18) = uVar8;
  }
  else {
    uVar8 = *(undefined4 *)(iVar4 + 0x18);
  }
  return uVar8;
}

// ---- FUN_00547204  @ 0x547204
undefined4 FUN_00547204(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  mutex *local_24;
  undefined4 local_20;
  undefined4 local_1c;
  
  local_24 = (mutex *)(param_1 + 0x1c);
  std::mutex::lock(local_24);
  local_20 = 0x2eb4d9;
  local_1c = 0;
  uVar1 = FUN_005470c8(param_1,param_2,param_3,param_4,param_1 + 0x20,0x2eb4d9,0);
  std::lock_guard<std::mutex>::~lock_guard((lock_guard<std::mutex> *)&local_24);
  return uVar1;
}

// ---- FUN_00547264  @ 0x547264
undefined4 FUN_00547264(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  mutex *local_24;
  undefined4 local_20;
  undefined4 local_1c;
  
  local_24 = (mutex *)(param_1 + 0x1c);
  std::mutex::lock(local_24);
  local_20 = 0x546d25;
  local_1c = 0;
  uVar1 = FUN_005470c8(param_1,param_2,param_3,param_4,param_1 + 0x38,0x546d25,0);
  std::lock_guard<std::mutex>::~lock_guard((lock_guard<std::mutex> *)&local_24);
  return uVar1;
}

// ---- FUN_005472c4  @ 0x5472c4
void FUN_005472c4(undefined4 *param_1,int param_2,code *param_3,uint param_4,undefined4 param_5,
                 undefined4 param_6,undefined4 param_7)

{
  undefined4 uVar1;
  undefined4 uVar2;
  
  if ((param_4 & 1) != 0) {
    param_3 = *(code **)(param_3 + *(int *)(param_2 + ((int)param_4 >> 1)));
  }
  uVar1 = FUN_00548bb0(param_1 + 3);
  uVar2 = FUN_00547264(param_1,param_5,param_6,param_2);
  (*param_3)(param_2 + ((int)param_4 >> 1),uVar1,uVar2,param_7);
  FUN_00549bf4(param_2,*param_1,param_5);
  return;
}

// ---- FUN_00547368  @ 0x547368
bool FUN_00547368(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  int iVar4;
  int iVar5;
  undefined4 uStack_4;
  
  uStack_4 = param_4;
  uVar1 = FUN_00549a1c(param_1,param_2,param_3,&uStack_4,param_1);
  uVar2 = FUN_00548bb0(param_1 + 3);
  uVar3 = FUN_00547264(param_1,param_2,param_3,uVar1);
  iVar4 = FUN_00546d3c(uVar1,uVar2,uVar3,&uStack_4);
  iVar5 = FUN_00549bf4(uVar1,*param_1,param_2);
  if (iVar5 != 0) {
    iVar4 = 0;
  }
  return iVar4 != 0;
}

// ---- FUN_005473c6  @ 0x5473c6
int * FUN_005473c6(int *param_1,int param_2,tuple *param_3)

{
  int iVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  
  iVar1 = 1;
  iVar3 = param_2 + 4;
  iVar2 = *(int *)(param_2 + 8);
  while (iVar4 = iVar2, iVar4 != 0) {
    iVar1 = std::
            __tuple_compare<0u,0u,2u,std::tuple<char_const*,char_const*>,std::tuple<char_const*,char_const*>>
            ::__less(param_3,(tuple *)(iVar4 + 0x10));
    iVar3 = iVar4;
    iVar2 = *(int *)(iVar4 + 0xc);
    if (iVar1 != 0) {
      iVar2 = *(int *)(iVar4 + 8);
    }
  }
  iVar2 = iVar3;
  if (iVar1 != 0) {
    if (iVar3 == *(int *)(param_2 + 0xc)) {
      *param_1 = 0;
      param_1[1] = iVar3;
      return param_1;
    }
    iVar2 = thunk_FUN_0079972c(iVar3);
  }
  iVar1 = std::
          __tuple_compare<0u,0u,2u,std::tuple<char_const*,char_const*>,std::tuple<char_const*,char_const*>>
          ::__less((tuple *)(iVar2 + 0x10),param_3);
  if (iVar1 == 0) {
    *param_1 = iVar2;
    param_1[1] = 0;
  }
  else {
    *param_1 = 0;
    param_1[1] = iVar3;
  }
  return param_1;
}

// ---- FUN_00547428  @ 0x547428
void * FUN_00547428(void *param_1,void *param_2,undefined4 param_3,undefined4 *param_4)

{
  void *pvVar1;
  void *__s;
  int iVar2;
  void *pvVar3;
  undefined4 uVar4;
  void *pvVar5;
  tuple *ptVar6;
  void *pvVar7;
  void *local_30;
  void *local_2c;
  undefined4 uStack_28;
  
  local_30 = param_1;
  local_2c = param_2;
  uStack_28 = param_3;
  __s = operator_new(0x1c);
  ptVar6 = (tuple *)((int)__s + 0x10);
  if (__s != (void *)0x0) {
    memset(__s,0,0x10);
    uVar4 = ((undefined4 *)*param_4)[1];
    *(undefined4 *)ptVar6 = *(undefined4 *)*param_4;
    *(undefined4 *)((int)__s + 0x14) = uVar4;
    *(undefined4 *)((int)__s + 0x18) = 0;
  }
  pvVar7 = (void *)((int)param_1 + 4);
  if (param_2 == pvVar7) {
    if (*(int *)((int)param_1 + 0x14) == 0) {
LAB_00547500:
      FUN_005473c6(&local_30,param_1,ptVar6);
      pvVar5 = local_2c;
      pvVar1 = local_30;
      goto LAB_0054750e;
    }
    pvVar5 = *(void **)((int)param_1 + 0x10);
    iVar2 = std::
            __tuple_compare<0u,0u,2u,std::tuple<char_const*,char_const*>,std::tuple<char_const*,char_const*>>
            ::__less((tuple *)((int)pvVar5 + 0x10),ptVar6);
    if (iVar2 == 0) goto LAB_00547500;
    if (pvVar5 == (void *)0x0) {
      param_2 = (void *)0x0;
      goto LAB_0054753a;
    }
LAB_00547512:
    if (pvVar5 == pvVar7) {
LAB_00547522:
      uVar4 = 1;
    }
    else {
      uVar4 = std::
              __tuple_compare<0u,0u,2u,std::tuple<char_const*,char_const*>,std::tuple<char_const*,char_const*>>
              ::__less(ptVar6,(tuple *)((int)pvVar5 + 0x10));
    }
    FUN_007997e8(uVar4,__s,pvVar5,pvVar7);
    *(int *)((int)param_1 + 0x14) = *(int *)((int)param_1 + 0x14) + 1;
    param_2 = __s;
  }
  else {
    iVar2 = std::
            __tuple_compare<0u,0u,2u,std::tuple<char_const*,char_const*>,std::tuple<char_const*,char_const*>>
            ::__less(ptVar6,(tuple *)((int)param_2 + 0x10));
    if (iVar2 == 0) {
      iVar2 = std::
              __tuple_compare<0u,0u,2u,std::tuple<char_const*,char_const*>,std::tuple<char_const*,char_const*>>
              ::__less((tuple *)((int)param_2 + 0x10),ptVar6);
      if (iVar2 != 0) {
        pvVar5 = param_2;
        pvVar1 = (void *)0x0;
        if (param_2 != *(void **)((int)param_1 + 0x10)) {
          pvVar5 = (void *)FUN_00799768(param_2);
          iVar2 = std::
                  __tuple_compare<0u,0u,2u,std::tuple<char_const*,char_const*>,std::tuple<char_const*,char_const*>>
                  ::__less(ptVar6,(tuple *)((int)pvVar5 + 0x10));
          if (iVar2 == 0) goto LAB_00547500;
          pvVar1 = pvVar5;
          if (*(int *)((int)param_2 + 0xc) == 0) {
            pvVar5 = param_2;
            pvVar1 = (void *)0x0;
          }
        }
        goto LAB_0054750e;
      }
    }
    else {
      pvVar5 = param_2;
      pvVar1 = param_2;
      if (param_2 != *(void **)((int)param_1 + 0xc)) {
        pvVar3 = (void *)thunk_FUN_0079972c(param_2);
        iVar2 = std::
                __tuple_compare<0u,0u,2u,std::tuple<char_const*,char_const*>,std::tuple<char_const*,char_const*>>
                ::__less((tuple *)((int)pvVar3 + 0x10),ptVar6);
        if (iVar2 == 0) {
          FUN_005473c6(&local_30,param_1,ptVar6);
          pvVar5 = local_2c;
          pvVar1 = local_30;
        }
        else {
          pvVar5 = param_2;
          if (*(int *)((int)pvVar3 + 0xc) == 0) {
            pvVar5 = pvVar3;
            pvVar1 = (void *)0x0;
          }
        }
      }
LAB_0054750e:
      param_2 = pvVar1;
      if (pvVar5 != (void *)0x0) {
        if (param_2 == (void *)0x0) goto LAB_00547512;
        goto LAB_00547522;
      }
    }
LAB_0054753a:
    operator_delete(__s);
  }
  return param_2;
}

// ---- FUN_00547550  @ 0x547550
undefined4
FUN_00547550(undefined4 *param_1,undefined4 param_2,undefined4 param_3,int param_4,int param_5,
            code *param_6,uint param_7)

{
  int *piVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  undefined4 uVar7;
  undefined4 uVar8;
  undefined1 auStack_38 [4];
  tuple *local_34;
  undefined4 local_30;
  undefined4 local_2c;
  
  iVar5 = param_5 + 4;
  iVar3 = *(int *)(param_5 + 8);
  iVar6 = iVar5;
  local_30 = param_3;
  local_2c = param_2;
  while (iVar4 = iVar6, iVar6 = iVar3, iVar6 != 0) {
    iVar2 = std::
            __tuple_compare<0u,0u,2u,std::tuple<char_const*,char_const*>,std::tuple<char_const*,char_const*>>
            ::__less((tuple *)(iVar6 + 0x10),(tuple *)&local_30);
    iVar3 = *(int *)(iVar6 + 8);
    if (iVar2 != 0) {
      iVar3 = *(int *)(iVar6 + 0xc);
      iVar6 = iVar4;
    }
  }
  if ((iVar4 == iVar5) ||
     (iVar3 = std::
              __tuple_compare<0u,0u,2u,std::tuple<char_const*,char_const*>,std::tuple<char_const*,char_const*>>
              ::__less((tuple *)&local_30,(tuple *)(iVar4 + 0x10)), iVar3 != 0)) {
    if ((param_7 & 1) != 0) {
      param_6 = *(code **)(param_6 + *(int *)(param_4 + ((int)param_7 >> 1)));
    }
    uVar8 = FUN_00548bb0(param_1 + 3);
    uVar8 = (*param_6)(param_4 + ((int)param_7 >> 1),uVar8,param_2,param_3);
    iVar3 = FUN_00546d70(param_4);
    if (iVar3 != 0) {
      FUN_00546d7a(param_4);
      uVar7 = *param_1;
      FUN_00549ae8(&local_34,iVar3);
      FUN_005166ae(4,"Can\'t find %s.%s: %s.",uVar7,param_2,local_34);
      FUN_007c5914(&local_34);
    }
    iVar3 = iVar5;
    iVar6 = *(int *)(param_5 + 8);
    while (iVar4 = iVar3, iVar6 != 0) {
      iVar2 = std::
              __tuple_compare<0u,0u,2u,std::tuple<char_const*,char_const*>,std::tuple<char_const*,char_const*>>
              ::__less((tuple *)(iVar6 + 0x10),(tuple *)&local_30);
      piVar1 = (int *)(iVar6 + 0xc);
      iVar3 = iVar6;
      iVar6 = *(int *)(iVar6 + 8);
      if (iVar2 != 0) {
        iVar3 = iVar4;
        iVar6 = *piVar1;
      }
    }
    if ((iVar4 == iVar5) ||
       (iVar3 = std::
                __tuple_compare<0u,0u,2u,std::tuple<char_const*,char_const*>,std::tuple<char_const*,char_const*>>
                ::__less((tuple *)&local_30,(tuple *)(iVar4 + 0x10)), iVar3 != 0)) {
      local_34 = (tuple *)&local_30;
      iVar4 = FUN_00547428(param_5,iVar4,&DAT_00831302,&local_34,auStack_38);
    }
    *(undefined4 *)(iVar4 + 0x18) = uVar8;
  }
  else {
    uVar8 = *(undefined4 *)(iVar4 + 0x18);
  }
  return uVar8;
}

// ---- FUN_0054768c  @ 0x54768c
undefined4 FUN_0054768c(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  mutex *local_24;
  undefined4 local_20;
  undefined4 local_1c;
  
  local_24 = (mutex *)(param_1 + 0x1c);
  std::mutex::lock(local_24);
  local_20 = 0x546d19;
  local_1c = 0;
  uVar1 = FUN_00547550(param_1,param_2,param_3,param_4,param_1 + 0x50,0x546d19,0);
  std::lock_guard<std::mutex>::~lock_guard((lock_guard<std::mutex> *)&local_24);
  return uVar1;
}

// ---- FUN_005476ec  @ 0x5476ec
undefined4 FUN_005476ec(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  mutex *local_24;
  undefined4 local_20;
  undefined4 local_1c;
  
  local_24 = (mutex *)(param_1 + 0x1c);
  std::mutex::lock(local_24);
  local_20 = 0x546d55;
  local_1c = 0;
  uVar1 = FUN_00547550(param_1,param_2,param_3,param_4,param_1 + 0x68,0x546d55,0);
  std::lock_guard<std::mutex>::~lock_guard((lock_guard<std::mutex> *)&local_24);
  return uVar1;
}

// ---- FUN_0054774c  @ 0x54774c
undefined4 *
FUN_0054774c(undefined4 *param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4,
            char param_5)

{
  undefined4 *puVar1;
  undefined4 *local_1c;
  undefined4 uStack_18;
  
  puVar1 = param_1 + 9;
  *param_1 = param_2;
  param_1[1] = param_3;
  param_1[2] = param_4;
  local_1c = param_2;
  uStack_18 = param_3;
  FUN_00548b18(param_1 + 3);
  param_1[7] = 0;
  param_1[7] = 0;
  memset(puVar1,0,0x10);
  param_1[0xb] = puVar1;
  param_1[0xc] = puVar1;
  puVar1 = param_1 + 0xf;
  param_1[0xd] = 0;
  memset(puVar1,0,0x10);
  param_1[0x11] = puVar1;
  param_1[0x12] = puVar1;
  puVar1 = param_1 + 0x15;
  param_1[0x13] = 0;
  memset(puVar1,0,0x10);
  param_1[0x19] = 0;
  param_1[0x17] = puVar1;
  param_1[0x18] = puVar1;
  FUN_00546f00(param_1 + 0x1a);
  if (param_5 == '\0') {
    puVar1 = &DAT_00960c84;
  }
  else {
    puVar1 = &DAT_00960c90;
  }
  local_1c = param_1;
  FUN_00546ede(puVar1,&local_1c);
  return param_1;
}

// ---- FUN_00547800  @ 0x547800
undefined4 FUN_00547800(undefined4 param_1)

{
  FUN_0054774c();
  return param_1;
}

// ---- FUN_00547814  @ 0x547814
void FUN_00547814(undefined4 *param_1,int *param_2)

{
  undefined4 uVar1;
  int iVar2;
  undefined4 local_3c;
  undefined1 auStack_38 [16];
  undefined1 auStack_28 [20];
  
  uVar1 = (**(code **)(*param_2 + 0x18))(param_2,*param_1);
  iVar2 = FUN_00546da4(param_1,param_2,uVar1);
  if (iVar2 != 0) {
    local_3c = uVar1;
    FUN_005493b8(auStack_38,&DAT_009638a4,&local_3c);
    FUN_00549380(auStack_28,auStack_38);
    FUN_00548b60(param_1 + 3,auStack_28);
    FUN_00548ab0(auStack_28);
    FUN_00548ab0(auStack_38);
  }
  return;
}

// ---- FUN_005478c4  @ 0x5478c4
void FUN_005478c4(undefined4 *param_1,int *param_2,undefined4 param_3)

{
  int iVar1;
  char *pcVar2;
  char *pcVar3;
  int iVar4;
  undefined4 uVar5;
  char *pcVar6;
  int local_60;
  undefined1 auStack_5c [4];
  undefined1 auStack_58 [16];
  undefined1 auStack_48 [16];
  undefined1 auStack_38 [20];
  
  iVar1 = FUN_00548c48(param_1 + 3);
  if (iVar1 != 0) {
    iVar1 = strncmp((char *)*param_1,"com/google/android/gms/games/NativeSdkLifecycleCallbacks",0x39
                   );
    if (iVar1 == 0) {
      iVar1 = (**(code **)(*param_2 + 0x18))
                        (param_2,"android/app/Application$ActivityLifecycleCallbacks");
      iVar4 = FUN_00546d70(param_2);
      if ((iVar4 != 0) || (iVar1 == 0)) {
        FUN_005166ae(1,"Skipping registration of optional class: %s.",*param_1);
        FUN_00546d7a(param_2);
        return;
      }
    }
    FUN_007c6a60(&local_60,*param_1,auStack_38);
    pcVar2 = (char *)FUN_007c5a74(&local_60);
    pcVar3 = (char *)FUN_007c5aac(&local_60);
    while (pcVar6 = pcVar2, pcVar6 != pcVar3) {
      pcVar2 = pcVar6 + 1;
      if (*pcVar6 == '/') {
        *pcVar6 = '.';
      }
    }
    FUN_007c6728(auStack_5c,&local_60,1,*(int *)(local_60 + -0xc) + -2);
    FUN_007c5914(auStack_5c);
    FUN_0054942c(auStack_48,&local_60,param_2);
    uVar5 = FUN_00548bfc(auStack_48);
    FUN_0054968c(auStack_58,param_3,&DAT_009638a4,"loadClass",
                 "(Ljava/lang/String;)Ljava/lang/Class;",uVar5);
    FUN_00548ab0(auStack_48);
    iVar1 = FUN_00548c48(auStack_58);
    if (iVar1 == 0) {
      uVar5 = FUN_00548bb0(auStack_58);
    }
    else {
      uVar5 = 0;
    }
    iVar1 = FUN_00546da4(param_1,param_2,uVar5);
    if (iVar1 != 0) {
      FUN_00549380(auStack_38,auStack_58);
      FUN_00548b60(param_1 + 3,auStack_38);
      FUN_00548ab0(auStack_38);
    }
    FUN_00548ab0(auStack_58);
    FUN_007c5914(&local_60);
  }
  return;
}

// ---- FUN_00547b10  @ 0x547b10
undefined4
FUN_00547b10(undefined4 param_1,int param_2,undefined4 param_3,undefined4 param_4,undefined4 param_5
            )

{
  int *piVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 local_34;
  undefined1 auStack_30 [20];
  
  piVar1 = (int *)FUN_00549a1c();
  uVar2 = FUN_00548bb0(param_2 + 0xc);
  uVar3 = FUN_005476ec(param_2,param_4,param_5,piVar1);
  local_34 = (**(code **)(*piVar1 + 0x244))(piVar1,uVar2,uVar3);
  FUN_00549274(auStack_30,param_3,&local_34);
  FUN_00548b30(param_1,auStack_30);
  FUN_00548ab0(auStack_30);
  return param_1;
}

// ---- FUN_00547b78  @ 0x547b78
undefined4
FUN_00547b78(undefined4 param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4)

{
  int *piVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  int iVar4;
  undefined4 local_3c;
  undefined1 auStack_38 [20];
  undefined4 uStack_4;
  
  uStack_4 = param_4;
  piVar1 = (int *)FUN_00549a1c();
  uVar2 = FUN_00548bb0(param_2 + 3);
  uVar3 = FUN_00547204(param_2,"<init>",param_3,piVar1);
  local_3c = (**(code **)(*piVar1 + 0x74))(piVar1,uVar2,uVar3,&uStack_4);
  iVar4 = FUN_00549bf4(piVar1,*param_2,"<init>");
  if (iVar4 != 0) {
    local_3c = 0;
  }
  FUN_00549274(auStack_38,param_2,&local_3c);
  FUN_00548b30(param_1,auStack_38);
  FUN_00548ab0(auStack_38);
  return param_1;
}

// ---- FUN_00547c04  @ 0x547c04
undefined4 FUN_00547c04(undefined4 param_1)

{
  int *piVar1;
  int *piVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 *puVar5;
  int iVar6;
  undefined4 uVar7;
  undefined4 uVar8;
  DIR *__dirp;
  dirent *pdVar9;
  ssize_t sVar10;
  char *pcVar11;
  uint uVar12;
  int *piVar13;
  int *piVar14;
  bool bVar15;
  undefined1 auStack_f4 [4];
  undefined *local_f0;
  char *local_ec;
  char *local_e8;
  int local_e4;
  int local_e0;
  undefined1 auStack_dc [4];
  undefined1 auStack_d8 [4];
  string asStack_d4 [4];
  undefined1 auStack_d0 [16];
  undefined1 auStack_c0 [16];
  undefined1 auStack_b0 [16];
  char *local_a0 [4];
  stat local_90;
  
  local_f0 = &DAT_00960ca0;
  std::mutex::lock((mutex *)&DAT_00960ca0);
  if (DAT_00960c9c == '\0') {
    uVar3 = FUN_00549a1c();
    FUN_005493e8(auStack_d0,".gpg.classloader",0);
    uVar4 = FUN_00548bac(auStack_d0);
    FUN_0054968c(&local_90,param_1,&DAT_00962ea4,"getDir","(Ljava/lang/String;I)Ljava/io/File;",
                 uVar4,0);
    FUN_00549104(&local_ec,&local_90,"getAbsolutePath");
    FUN_00548ab0(&local_90);
    FUN_00548ab0(auStack_d0);
    std::operator+((string *)&local_e4,(char *)&local_ec);
    FUN_0051693c(&local_e0,&DAT_00943fe0,DAT_00943fdc);
    uVar12 = *(int *)(local_e4 + -0xc) + *(int *)(local_e0 + -0xc);
    if ((*(uint *)(local_e4 + -8) < uVar12) && (uVar12 <= *(uint *)(local_e0 + -8))) {
      puVar5 = (undefined4 *)FUN_007c5ff4(&local_e0,0,(string *)&local_e4);
    }
    else {
      puVar5 = (undefined4 *)FUN_007c6120((string *)&local_e4,&local_e0);
    }
    local_90.st_dev._0_4_ = *puVar5;
    *puVar5 = &DAT_00972528;
    puVar5 = (undefined4 *)FUN_007c62f0(&local_90,&DAT_0080768a);
    local_e8 = (char *)*puVar5;
    *puVar5 = &DAT_00972528;
    FUN_007c5914(&local_90);
    FUN_007c5914(&local_e0);
    FUN_007c5914((string *)&local_e4);
    FUN_005166ae(1,"Using classes from %s.",local_e8);
    iVar6 = stat(local_e8,&local_90);
    if (iVar6 == 0) {
LAB_00547d16:
      FUN_0054942c(auStack_c0,&local_e8,uVar3);
      uVar4 = FUN_00548bfc(auStack_c0);
      FUN_0054942c(auStack_b0,&local_ec,uVar3);
      uVar7 = FUN_00548bfc(auStack_b0);
      FUN_0054968c(local_a0,param_1,&DAT_00961b24,"getClassLoader","()Ljava/lang/ClassLoader;");
      uVar8 = FUN_00548bac(local_a0);
      FUN_00547b78(auStack_d0,&DAT_009615a4,
                   "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V"
                   ,uVar4,uVar7,0,uVar8);
      FUN_00548ab0(local_a0);
      FUN_00548ab0(auStack_b0);
      FUN_00548ab0(auStack_c0);
      iVar6 = FUN_00548c48(auStack_d0);
      piVar1 = DAT_00960c94;
      piVar13 = DAT_00960c90;
      if (iVar6 == 0) {
        for (; piVar2 = DAT_00960c94, piVar14 = DAT_00960c90, piVar13 != piVar1;
            piVar13 = piVar13 + 1) {
          FUN_005478c4(*piVar13,uVar3,auStack_d0);
        }
        for (; piVar14 != piVar2; piVar14 = piVar14 + 1) {
          FUN_005491a4(*piVar14 + 0xc,uVar3);
        }
        DAT_00960c9c = '\x01';
        FUN_00548ab0(auStack_d0);
        FUN_007c5914(&local_e8);
        FUN_007c5914(&local_ec);
        goto LAB_00547dd8;
      }
      FUN_005166ae(4,"Could not create class loader from file.");
      FUN_00548ab0(auStack_d0);
    }
    else {
      __dirp = opendir(local_ec);
      if (__dirp == (DIR *)0x0) {
        FUN_005166ae(4,"Error emptying previous jar directory.");
      }
      else {
        pdVar9 = readdir(__dirp);
        while (pdVar9 != (dirent *)0x0) {
          FUN_007c6a60(auStack_dc,&DAT_008076a6,local_a0);
          pcVar11 = pdVar9->d_name + 8;
          iVar6 = FUN_007c5724(auStack_dc,pcVar11);
          if (iVar6 == 0) {
            bVar15 = false;
          }
          else {
            FUN_007c6a60(auStack_d8,&DAT_008076a8,auStack_f4);
            iVar6 = FUN_007c5724(auStack_d8,pcVar11);
            bVar15 = iVar6 != 0;
            FUN_007c5914(auStack_d8);
          }
          FUN_007c5914(auStack_dc);
          if (bVar15) {
            std::operator+(asStack_d4,(char *)&local_ec);
            puVar5 = (undefined4 *)FUN_007c62f0(asStack_d4,pcVar11);
            local_a0[0] = (char *)*puVar5;
            *puVar5 = &DAT_00972528;
            unlink(local_a0[0]);
            FUN_007c5914(local_a0);
            FUN_007c5914(asStack_d4);
          }
          pdVar9 = readdir(__dirp);
        }
        closedir(__dirp);
        local_a0[0] = (char *)open(local_e8,0x80241,0x1c0);
        if ((int)local_a0[0] < 0) {
          pcVar11 = "Could not open output file to write jar.";
        }
        else {
          sVar10 = write((int)local_a0[0],&DAT_00943fe0,DAT_00943fdc);
          if (sVar10 != -1) {
            FUN_00546d84(local_a0);
            goto LAB_00547d16;
          }
          pcVar11 = "Could not write jar to output file.";
        }
        FUN_005166ae(4,pcVar11);
        FUN_00546d84(local_a0);
      }
    }
    uVar3 = 0;
    FUN_007c5914(&local_e8);
    FUN_007c5914(&local_ec);
  }
  else {
LAB_00547dd8:
    uVar3 = 1;
  }
  std::lock_guard<std::mutex>::~lock_guard((lock_guard<std::mutex> *)&local_f0);
  return uVar3;
}

// ---- FUN_00548040  @ 0x548040
undefined4 FUN_00548040(undefined4 param_1,undefined4 param_2)

{
  undefined1 auStack_20 [20];
  
  FUN_00547b78(auStack_20,param_2,&DAT_00807799);
  FUN_00548b30(param_1,auStack_20);
  FUN_00548ab0(auStack_20);
  return param_1;
}

// ---- FUN_00548074  @ 0x548074
undefined4
FUN_00548074(undefined4 param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  int iVar4;
  undefined4 local_34;
  undefined1 auStack_30 [16];
  
  uVar1 = FUN_00549a1c();
  uVar2 = FUN_00548bb0(param_2 + 3);
  uVar3 = FUN_00547264(param_2,param_4,param_5,uVar1);
  uVar2 = FUN_00546d30(uVar1,uVar2,uVar3,&stack0x00000004);
  iVar4 = FUN_00549bf4(uVar1,*param_2,param_4);
  if (iVar4 != 0) {
    uVar2 = 0;
  }
  local_34 = uVar2;
  FUN_00549274(auStack_30,param_3,&local_34);
  FUN_00548b30(param_1,auStack_30);
  FUN_00548ab0(auStack_30);
  return param_1;
}

// ---- FUN_0054812c  @ 0x54812c
undefined4 * FUN_0054812c(undefined4 *param_1)

{
  int iVar1;
  size_t __n;
  undefined4 *puVar2;
  
  puVar2 = DAT_00960c7c;
  while( true ) {
    if ((undefined4 **)puVar2 == &DAT_00960c7c) {
      return (undefined4 *)0x0;
    }
    __n = *(size_t *)((int)*param_1 + -0xc);
    if ((__n == *(size_t *)((int)puVar2[6] + -0xc)) &&
       (iVar1 = memcmp((void *)*param_1,(void *)puVar2[6],__n), iVar1 == 0)) break;
    puVar2 = (undefined4 *)*puVar2;
  }
  return puVar2 + 2;
}

// ---- FUN_00548168  @ 0x548168
undefined4 FUN_00548168(undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 uVar1;
  undefined4 *local_14;
  undefined4 uStack_10;
  
  local_14 = &DAT_00960c64;
  uStack_10 = param_3;
  std::mutex::lock((mutex *)&DAT_00960c64);
  if (DAT_00960c78 == '\0') {
    uVar1 = 0;
  }
  else {
    uVar1 = FUN_00548c48(&DAT_00960c68);
  }
  std::lock_guard<std::mutex>::~lock_guard((lock_guard<std::mutex> *)&local_14);
  return uVar1;
}

// ---- FUN_005481a8  @ 0x5481a8
void FUN_005481a8(undefined4 *param_1)

{
  undefined4 *puVar1;
  undefined4 *puVar2;
  
  puVar1 = (undefined4 *)*param_1;
  while (puVar1 != param_1) {
    puVar2 = (undefined4 *)*puVar1;
    operator_delete(puVar1);
    puVar1 = puVar2;
  }
  return;
}

// ---- FUN_005481c0  @ 0x5481c0
undefined4 * FUN_005481c0(undefined4 *param_1,undefined4 param_2)

{
  undefined1 *local_3c;
  undefined1 auStack_38 [16];
  undefined1 auStack_28 [20];
  
  FUN_0054932c(auStack_38,param_2,&DAT_00961ea4);
  FUN_0054968c(auStack_28,auStack_38,&DAT_009638a4,"getClass","()Ljava/lang/Class;");
  FUN_00549104(&local_3c,auStack_28,"getName");
  *param_1 = local_3c;
  local_3c = &DAT_00972528;
  FUN_007c5914(&local_3c);
  FUN_00548ab0(auStack_28);
  FUN_00548ab0(auStack_38);
  return param_1;
}

// ---- FUN_0054824c  @ 0x54824c
void FUN_0054824c(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 *puVar1;
  undefined4 *puVar2;
  int iVar3;
  undefined4 *puVar4;
  undefined4 *puVar5;
  undefined4 *puVar6;
  int local_24;
  undefined4 *local_20;
  undefined4 uStack_1c;
  
  local_24 = param_1;
  local_20 = (undefined4 *)param_3;
  uStack_1c = param_4;
  FUN_005166ae(1,"Cleaning up lifecycle callbacks.",param_3,param_4,param_1);
  FUN_00549a1c();
  local_20 = &DAT_00960c64;
  std::mutex::lock((mutex *)&DAT_00960c64);
  FUN_005481c0(&uStack_1c,param_2);
  iVar3 = FUN_0054812c(&uStack_1c);
  FUN_007c5914(&uStack_1c);
  if (iVar3 != 0) {
    puVar1 = (undefined4 *)(iVar3 + 0x14);
    puVar6 = (undefined4 *)*puVar1;
    puVar2 = puVar1;
    while (puVar5 = puVar2, puVar4 = puVar6, puVar4 != puVar1) {
      puVar6 = (undefined4 *)*puVar4;
      puVar2 = puVar5;
      if ((puVar4[2] == local_24) && (puVar2 = puVar4, puVar4 + 2 != &local_24)) {
        FUN_00799bac(puVar4);
        operator_delete(puVar4);
        puVar2 = puVar5;
      }
    }
    if (puVar5 != puVar4) {
      FUN_00799bac(puVar5);
      operator_delete(puVar5);
    }
  }
  std::lock_guard<std::mutex>::~lock_guard((lock_guard<std::mutex> *)&local_20);
  return;
}

// ---- FUN_005482e8  @ 0x5482e8
int FUN_005482e8(int param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 *puVar1;
  int iVar2;
  
  FUN_00549380();
  FUN_005481c0(param_1 + 0x10,param_1);
  iVar2 = param_1 + 0x14;
  *(int *)(param_1 + 0x14) = iVar2;
  *(int *)(param_1 + 0x18) = iVar2;
  puVar1 = operator_new(0xc);
  if (puVar1 != (undefined4 *)0x0) {
    *puVar1 = 0;
    puVar1[1] = 0;
    puVar1[2] = param_3;
  }
  FUN_00799b9c(puVar1,iVar2);
  return param_1;
}

// ---- FUN_00548340  @ 0x548340
void FUN_00548340(int *param_1,undefined4 param_2,code *param_3,uint param_4)

{
  undefined4 uVar1;
  undefined4 uVar2;
  int iVar3;
  code *pcVar4;
  undefined4 *puVar5;
  undefined4 *puVar6;
  undefined4 *local_3c;
  undefined1 auStack_38 [20];
  
  FUN_0054929e(auStack_38,&DAT_00963aa4,param_2,param_4,param_3,param_4);
  local_3c = &DAT_00960c64;
  std::mutex::lock((mutex *)&DAT_00960c64);
  puVar5 = DAT_00960c7c;
  do {
    if ((undefined4 **)puVar5 == &DAT_00960c7c) {
LAB_005483b0:
      std::lock_guard<std::mutex>::~lock_guard((lock_guard<std::mutex> *)&local_3c);
      FUN_00548ab0(auStack_38);
      return;
    }
    uVar1 = FUN_00548bac(puVar5 + 2);
    uVar2 = FUN_00548bac(auStack_38);
    iVar3 = (**(code **)(*param_1 + 0x60))(param_1,uVar1,uVar2);
    if (iVar3 != 0) {
      if (puVar5 + 2 != (undefined4 *)0x0) {
        for (puVar6 = (undefined4 *)puVar5[7]; puVar6 != puVar5 + 7; puVar6 = (undefined4 *)*puVar6)
        {
          pcVar4 = param_3;
          if ((param_4 & 1) != 0) {
            pcVar4 = *(code **)(param_3 + *(int *)(puVar6[2] + ((int)param_4 >> 1)));
          }
          (*pcVar4)(puVar6[2] + ((int)param_4 >> 1));
        }
      }
      goto LAB_005483b0;
    }
    puVar5 = (undefined4 *)*puVar5;
  } while( true );
}

// ---- FUN_005485a4  @ 0x5485a4
void FUN_005485a4(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  int iVar2;
  undefined4 uVar3;
  undefined4 *puVar4;
  undefined4 *local_68;
  undefined1 auStack_64 [4];
  undefined1 auStack_60 [16];
  undefined1 auStack_50 [16];
  undefined1 auStack_40 [16];
  undefined1 auStack_30 [20];
  
  FUN_0054929e(auStack_60,&DAT_009639a4,param_4);
  FUN_0054929e(auStack_50,&DAT_00963aa4,param_3);
  local_68 = &DAT_00960c64;
  std::mutex::lock((mutex *)&DAT_00960c64);
  FUN_005481c0(auStack_64,auStack_50);
  iVar1 = FUN_0054812c(auStack_64);
  FUN_007c5914(auStack_64);
  if (iVar1 != 0) {
    iVar2 = FUN_00548c48(auStack_60);
    if (iVar2 == 0) {
      FUN_005493e8(auStack_40,".gpg.seen",0);
      uVar3 = FUN_00548bac(auStack_40);
      uVar3 = FUN_00548c54(auStack_60,"getBoolean","(Ljava/lang/String;Z)Z",uVar3,0);
      FUN_00548ab0(auStack_40);
    }
    else {
      uVar3 = 0;
    }
    FUN_00549380(auStack_30,auStack_50);
    FUN_00548b60(iVar1,auStack_30);
    FUN_00548ab0(auStack_30);
    for (puVar4 = *(undefined4 **)(iVar1 + 0x14); puVar4 != (undefined4 *)(iVar1 + 0x14);
        puVar4 = (undefined4 *)*puVar4) {
      (**(code **)(*(int *)puVar4[2] + 0xc))((int *)puVar4[2],iVar1,uVar3);
    }
  }
  std::lock_guard<std::mutex>::~lock_guard((lock_guard<std::mutex> *)&local_68);
  FUN_00548ab0(auStack_50);
  FUN_00548ab0(auStack_60);
  return;
}

// ---- FUN_005486ec  @ 0x5486ec
void FUN_005486ec(void)

{
  undefined4 in_r3;
  undefined4 *puVar1;
  undefined4 *puVar2;
  undefined4 in_stack_00000000;
  undefined4 in_stack_00000004;
  undefined4 *local_44;
  undefined1 auStack_40 [16];
  undefined1 auStack_30 [16];
  
  FUN_0054929e(auStack_40,&DAT_00963aa4);
  FUN_0054929e(auStack_30,&DAT_009630a4,in_stack_00000004);
  local_44 = &DAT_00960c64;
  std::mutex::lock((mutex *)&DAT_00960c64);
  for (puVar1 = DAT_00960c7c; (undefined4 **)puVar1 != &DAT_00960c7c; puVar1 = (undefined4 *)*puVar1
      ) {
    for (puVar2 = (undefined4 *)puVar1[7]; puVar2 != puVar1 + 7; puVar2 = (undefined4 *)*puVar2) {
      (**(code **)(*(int *)puVar2[2] + 0x14))((int *)puVar2[2],in_r3,in_stack_00000000,auStack_30);
    }
  }
  std::lock_guard<std::mutex>::~lock_guard((lock_guard<std::mutex> *)&local_44);
  FUN_00548ab0(auStack_30);
  FUN_00548ab0(auStack_40);
  return;
}

// ---- FUN_005487cc  @ 0x5487cc
void FUN_005487cc(void)

{
  int iVar1;
  undefined4 uVar2;
  undefined4 in_r3;
  undefined1 auStack_48 [16];
  undefined1 auStack_38 [16];
  undefined1 auStack_28 [20];
  
  FUN_0054929e(auStack_48,&DAT_00963aa4);
  FUN_005481c0(auStack_38,auStack_48);
  iVar1 = FUN_0054812c(auStack_38);
  FUN_007c5914(auStack_38);
  if (iVar1 != 0) {
    FUN_0054929e(auStack_38,&DAT_009639a4,in_r3);
    FUN_005493e8(auStack_28,".gpg.seen",0);
    uVar2 = FUN_00548bac(auStack_28);
    FUN_00548d90(auStack_38,"putBoolean","(Ljava/lang/String;Z)V",uVar2,1);
    FUN_00548ab0(auStack_28);
    FUN_00548ab0(auStack_38);
  }
  FUN_00548ab0(auStack_48);
  return;
}

// ---- FUN_005488ac  @ 0x5488ac
int FUN_005488ac(int param_1)

{
  undefined4 *puVar1;
  undefined4 *puVar2;
  
  puVar1 = *(undefined4 **)(param_1 + 0x18);
  while (puVar1 != (undefined4 *)(param_1 + 0x18)) {
    puVar2 = (undefined4 *)*puVar1;
    FUN_005481a8(puVar1 + 7);
    FUN_007c5914(puVar1 + 6);
    FUN_00548ab0(puVar1 + 2);
    operator_delete(puVar1);
    puVar1 = puVar2;
  }
  FUN_00548ab0(param_1 + 4);
  return param_1;
}

// ---- FUN_005488f0  @ 0x5488f0
void FUN_005488f0(undefined4 param_1,undefined4 param_2)

{
  int iVar1;
  undefined4 uVar2;
  undefined4 *puVar3;
  undefined4 *local_68;
  undefined1 auStack_64 [4];
  undefined1 auStack_60 [16];
  undefined1 auStack_50 [16];
  undefined1 auStack_40 [16];
  undefined1 auStack_30 [20];
  
  FUN_00549a1c();
  local_68 = &DAT_00960c64;
  std::mutex::lock((mutex *)&DAT_00960c64);
  if ((DAT_00960c78 == '\0') && (iVar1 = FUN_00548c48(&DAT_00960c68), iVar1 != 0)) {
    iVar1 = FUN_00546e2a(&DAT_00962024);
    if (iVar1 == 0) {
      FUN_00548040(auStack_60,&DAT_00962024);
      FUN_00548b60(&DAT_00960c68,auStack_60);
      FUN_00548ab0(auStack_60);
      FUN_0054968c(auStack_50,param_2,&DAT_009641a4,"getApplication","()Landroid/app/Application;");
      uVar2 = FUN_00548bac(&DAT_00960c68);
      FUN_00548d90(auStack_50,"registerActivityLifecycleCallbacks",
                   "(Landroid/app/Application$ActivityLifecycleCallbacks;)V",uVar2);
      FUN_00548ab0(auStack_50);
    }
  }
  DAT_00960c78 = 1;
  FUN_005481c0(auStack_64,param_2);
  iVar1 = FUN_0054812c(auStack_64);
  FUN_007c5914(auStack_64);
  if (iVar1 == 0) {
    FUN_00549380(auStack_40,param_2);
    puVar3 = operator_new(0x24);
    if (puVar3 != (undefined4 *)0x0) {
      *puVar3 = 0;
      puVar3[1] = 0;
      FUN_00548b30(auStack_30,auStack_40);
      FUN_005482e8(puVar3 + 2,auStack_30,param_1);
      FUN_00548ab0(auStack_30);
    }
    FUN_00799b9c(puVar3,&DAT_00960c7c);
    FUN_00548ab0(auStack_40);
  }
  else {
    puVar3 = operator_new(0xc);
    if (puVar3 != (undefined4 *)0x0) {
      puVar3[2] = param_1;
      *puVar3 = 0;
      puVar3[1] = 0;
    }
    FUN_00799b9c(puVar3,iVar1 + 0x14);
  }
  std::lock_guard<std::mutex>::~lock_guard((lock_guard<std::mutex> *)&local_68);
  return;
}

// ---- FUN_00548a80  @ 0x548a80
void FUN_00548a80(int *param_1)

{
  (**(code **)(*param_1 + 0x8c))();
  return;
}

// ---- FUN_00548a8c  @ 0x548a8c
void FUN_00548a8c(int *param_1)

{
  (**(code **)(*param_1 + 0x98))();
  return;
}

// ---- FUN_00548a98  @ 0x548a98
void FUN_00548a98(int *param_1)

{
  (**(code **)(*param_1 + 200))();
  return;
}

// ---- FUN_00548aa4  @ 0x548aa4
void FUN_00548aa4(int *param_1)

{
  (**(code **)(*param_1 + 0xd4))();
  return;
}

// ---- FUN_00548ab0  @ 0x548ab0
undefined4 * FUN_00548ab0(undefined4 *param_1,undefined4 param_2,undefined4 param_3)

{
  int *piVar1;
  undefined4 uVar2;
  undefined4 uStack_14;
  undefined4 uStack_10;
  
  *param_1 = &DAT_00926470;
  if (param_1[2] != 0) {
    uStack_14 = param_2;
    uStack_10 = param_3;
    FUN_00549ab4(&uStack_14);
    if (param_1[3] == 0) {
      uVar2 = FUN_00549a1c();
      FUN_002eb49c(uVar2,param_1[2]);
    }
    else if (param_1[3] == 1) {
      piVar1 = (int *)FUN_00549a1c();
      (**(code **)(*piVar1 + 0x58))(piVar1,param_1[2]);
    }
    FUN_00549ad2(&uStack_14);
  }
  return param_1;
}

// ---- FUN_00548af8  @ 0x548af8
void * FUN_00548af8(void *param_1)

{
  FUN_00548ab0();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_00548b0a  @ 0x548b0a
void FUN_00548b0a(int *param_1)

{
  (**(code **)(*param_1 + 0x80))();
  return;
}

// ---- FUN_00548b18  @ 0x548b18
void FUN_00548b18(undefined4 *param_1)

{
  *param_1 = &DAT_00926470;
  param_1[1] = 0;
  param_1[2] = 0;
  param_1[3] = 2;
  return;
}

// ---- FUN_00548b30  @ 0x548b30
void FUN_00548b30(undefined4 *param_1,int param_2)

{
  undefined4 uVar1;
  
  *param_1 = &DAT_00926470;
  param_1[3] = 2;
  param_1[2] = 0;
  param_1[1] = 0;
  param_1[1] = *(undefined4 *)(param_2 + 4);
  *(undefined4 *)(param_2 + 4) = 0;
  uVar1 = param_1[2];
  param_1[2] = *(undefined4 *)(param_2 + 8);
  *(undefined4 *)(param_2 + 8) = uVar1;
  uVar1 = param_1[3];
  param_1[3] = *(undefined4 *)(param_2 + 0xc);
  *(undefined4 *)(param_2 + 0xc) = uVar1;
  return;
}

// ---- FUN_00548b60  @ 0x548b60
void FUN_00548b60(int param_1,int param_2)

{
  undefined4 uVar1;
  
  uVar1 = *(undefined4 *)(param_1 + 4);
  *(undefined4 *)(param_1 + 4) = *(undefined4 *)(param_2 + 4);
  *(undefined4 *)(param_2 + 4) = uVar1;
  uVar1 = *(undefined4 *)(param_1 + 8);
  *(undefined4 *)(param_1 + 8) = *(undefined4 *)(param_2 + 8);
  *(undefined4 *)(param_2 + 8) = uVar1;
  uVar1 = *(undefined4 *)(param_1 + 0xc);
  *(undefined4 *)(param_1 + 0xc) = *(undefined4 *)(param_2 + 0xc);
  *(undefined4 *)(param_2 + 0xc) = uVar1;
  return;
}

// ---- FUN_00548b7c  @ 0x548b7c
void FUN_00548b7c(int param_1)

{
  int *piVar1;
  
  if (param_1 != 0) {
    piVar1 = (int *)FUN_00549a1c();
    (**(code **)(*piVar1 + 100))(piVar1,param_1);
    return;
  }
  return;
}

// ---- FUN_00548b92  @ 0x548b92
void FUN_00548b92(int param_1)

{
  int *piVar1;
  
  if (param_1 != 0) {
    piVar1 = (int *)FUN_00549a1c();
    (**(code **)(*piVar1 + 0x54))(piVar1,param_1);
    return;
  }
  return;
}

// ---- FUN_00548bac  @ 0x548bac
undefined4 FUN_00548bac(int param_1)

{
  return *(undefined4 *)(param_1 + 8);
}

// ---- FUN_00548bb0  @ 0x548bb0
undefined4 FUN_00548bb0(int param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  int iVar3;
  undefined4 uVar4;
  
  uVar1 = FUN_00549a1c();
  if (*(undefined **)(param_1 + 4) != &DAT_009638a4) {
    uVar4 = *(undefined4 *)(param_1 + 8);
    uVar2 = FUN_00546e24();
    iVar3 = FUN_00548b0a(uVar1,uVar4,uVar2);
    if (iVar3 == 0) {
      uVar1 = FUN_00546e14(*(undefined4 *)(param_1 + 4));
      FUN_005166ae(4,"Not a class: class is %s.",uVar1);
      return 0;
    }
  }
  return *(undefined4 *)(param_1 + 8);
}

// ---- FUN_00548bfc  @ 0x548bfc
undefined4 FUN_00548bfc(int param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  int iVar3;
  undefined4 uVar4;
  
  uVar1 = FUN_00549a1c();
  if (*(undefined **)(param_1 + 4) != &DAT_009628a4) {
    uVar4 = *(undefined4 *)(param_1 + 8);
    uVar2 = FUN_00546e24();
    iVar3 = FUN_00548b0a(uVar1,uVar4,uVar2);
    if (iVar3 == 0) {
      uVar1 = FUN_00546e14(*(undefined4 *)(param_1 + 4));
      FUN_005166ae(4,"Not a string: class is %s.",uVar1);
      return 0;
    }
  }
  return *(undefined4 *)(param_1 + 8);
}

// ---- FUN_00548c48  @ 0x548c48
int FUN_00548c48(int param_1)

{
  int iVar1;
  
  iVar1 = 1 - *(uint *)(param_1 + 8);
  if (1 < *(uint *)(param_1 + 8)) {
    iVar1 = 0;
  }
  return iVar1;
}

// ---- FUN_00548c54  @ 0x548c54
bool FUN_00548c54(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  undefined4 uVar2;
  int iVar3;
  int iVar4;
  undefined4 uVar5;
  undefined4 uStack_4;
  
  uStack_4 = param_4;
  uVar1 = FUN_00549a1c(param_1,param_2,param_3,&uStack_4,param_1);
  uVar5 = *(undefined4 *)(param_1 + 8);
  uVar2 = FUN_00547204(*(undefined4 *)(param_1 + 4),param_2,param_3,uVar1);
  iVar3 = FUN_00548a8c(uVar1,uVar5,uVar2,&uStack_4);
  uVar2 = FUN_00546e14(*(undefined4 *)(param_1 + 4));
  iVar4 = FUN_00549bf4(uVar1,uVar2,param_2);
  if (iVar4 != 0) {
    iVar3 = 0;
  }
  return iVar3 != 0;
}

// ---- FUN_00548cb4  @ 0x548cb4
void FUN_00548cb4(undefined4 param_1,undefined4 param_2)

{
  FUN_00548c54(param_1,param_2,&DAT_008094b7);
  return;
}

// ---- FUN_00548cc0  @ 0x548cc0
undefined4 FUN_00548cc0(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  undefined4 uVar2;
  int iVar3;
  undefined4 uVar4;
  undefined4 uStack_4;
  
  uStack_4 = param_4;
  uVar1 = FUN_00549a1c(param_1,param_2,param_3,&uStack_4,param_1);
  uVar4 = *(undefined4 *)(param_1 + 8);
  uVar2 = FUN_00547204(*(undefined4 *)(param_1 + 4),param_2,param_3,uVar1);
  uVar4 = FUN_00548a98(uVar1,uVar4,uVar2,&uStack_4);
  uVar2 = FUN_00546e14(*(undefined4 *)(param_1 + 4));
  iVar3 = FUN_00549bf4(uVar1,uVar2,param_2);
  if (iVar3 != 0) {
    uVar4 = 0;
  }
  return uVar4;
}

// ---- FUN_00548d1c  @ 0x548d1c
void FUN_00548d1c(undefined4 param_1,undefined4 param_2)

{
  FUN_00548cc0(param_1,param_2,&DAT_008094bb);
  return;
}

// ---- FUN_00548d28  @ 0x548d28
undefined8 FUN_00548d28(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  undefined4 uVar2;
  int iVar3;
  undefined4 uVar4;
  undefined8 uVar5;
  undefined4 uStack_4;
  
  uStack_4 = param_4;
  uVar1 = FUN_00549a1c(param_1,param_2,param_3,&uStack_4,param_1);
  uVar4 = *(undefined4 *)(param_1 + 8);
  uVar2 = FUN_00547204(*(undefined4 *)(param_1 + 4),param_2,param_3,uVar1);
  uVar5 = FUN_00548aa4(uVar1,uVar4,uVar2,&uStack_4);
  uVar2 = FUN_00546e14(*(undefined4 *)(param_1 + 4));
  iVar3 = FUN_00549bf4(uVar1,uVar2,param_2);
  if (iVar3 != 0) {
    uVar5 = 0;
  }
  return uVar5;
}

// ---- FUN_00548d84  @ 0x548d84
void FUN_00548d84(undefined4 param_1,undefined4 param_2)

{
  FUN_00548d28(param_1,param_2,&DAT_008094bf);
  return;
}

// ---- FUN_00548d90  @ 0x548d90
void FUN_00548d90(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int *piVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  int iVar4;
  undefined4 uStack_4;
  
  iVar4 = param_1;
  uStack_4 = param_4;
  piVar1 = (int *)FUN_00549a1c();
  uVar3 = *(undefined4 *)(param_1 + 8);
  uVar2 = FUN_00547204(*(undefined4 *)(param_1 + 4),param_2,param_3,piVar1,iVar4);
  (**(code **)(*piVar1 + 0xf8))(piVar1,uVar3,uVar2,&uStack_4);
  uVar2 = FUN_00546e14(*(undefined4 *)(param_1 + 4));
  FUN_00549bf4(piVar1,uVar2,param_2);
  return;
}

// ---- FUN_00548de4  @ 0x548de4
void FUN_00548de4(undefined4 param_1,undefined4 param_2)

{
  FUN_00548d90(param_1,param_2,&DAT_00807799);
  return;
}

// ---- FUN_00548ec0  @ 0x548ec0
undefined4 * FUN_00548ec0(undefined4 *param_1,undefined4 param_2,undefined4 param_3)

{
  int iVar1;
  int *piVar2;
  undefined4 uVar3;
  undefined4 *puVar4;
  undefined1 *local_24;
  undefined4 uStack_20;
  
  local_24 = &DAT_00972528;
  puVar4 = param_1;
  uStack_20 = param_3;
  iVar1 = FUN_00548bfc(param_2);
  if (iVar1 != 0) {
    piVar2 = (int *)FUN_00549a1c();
    uVar3 = (**(code **)(*piVar2 + 0x2a4))(piVar2,iVar1,0,*(code **)(*piVar2 + 0x2a4),puVar4);
    FUN_007c5e70(&local_24,uVar3);
    (**(code **)(*piVar2 + 0x2a8))(piVar2,iVar1,uVar3);
  }
  *param_1 = local_24;
  local_24 = &DAT_00972528;
  FUN_007c5914(&local_24);
  return param_1;
}

// ---- FUN_00548f34  @ 0x548f34
undefined4
FUN_00548f34(int param_1,int param_2,code *param_3,uint param_4,undefined4 param_5,
            undefined4 param_6,undefined4 param_7)

{
  undefined4 uVar1;
  int iVar2;
  uint uVar3;
  code *pcVar4;
  undefined4 uVar5;
  bool bVar6;
  
  bVar6 = (param_4 & 1) != 0;
  uVar5 = *(undefined4 *)(param_1 + 8);
  uVar3 = param_4;
  if (bVar6) {
    uVar3 = *(uint *)(param_2 + ((int)param_4 >> 1));
  }
  pcVar4 = param_3;
  if (bVar6) {
    pcVar4 = *(code **)(param_3 + uVar3);
  }
  uVar1 = FUN_00547204(*(undefined4 *)(param_1 + 4),param_5,param_6,param_2,param_3,param_4,param_3)
  ;
  uVar1 = (*pcVar4)(param_2 + ((int)param_4 >> 1),uVar5,uVar1,param_7);
  uVar5 = FUN_00546e14(*(undefined4 *)(param_1 + 4));
  iVar2 = FUN_00549bf4(param_2,uVar5,param_5);
  if (iVar2 != 0) {
    uVar1 = 0;
  }
  return uVar1;
}

// ---- FUN_00548f98  @ 0x548f98
undefined4 *
FUN_00548f98(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5,undefined4 param_6)

{
  int *piVar1;
  int iVar2;
  undefined4 uVar3;
  undefined1 *local_2c;
  undefined4 local_28;
  undefined4 local_24;
  
  piVar1 = (int *)FUN_00549a1c();
  local_28 = 0x548a81;
  local_24 = 0;
  iVar2 = FUN_00548f34(param_2,piVar1,0x548a81,0,param_4,param_5,param_6);
  if (iVar2 == 0) {
    FUN_007c6a60(param_1,param_3,&local_2c);
  }
  else {
    local_2c = &DAT_00972528;
    uVar3 = (**(code **)(*piVar1 + 0x2a4))(piVar1,iVar2,0);
    FUN_007c5e70(&local_2c,uVar3);
    (**(code **)(*piVar1 + 0x2a8))(piVar1,iVar2,uVar3);
    FUN_002eb49c(piVar1,iVar2);
    *param_1 = local_2c;
    local_2c = &DAT_00972528;
    FUN_007c5914(&local_2c);
  }
  return param_1;
}

// ---- FUN_0054904c  @ 0x54904c
undefined4 *
FUN_0054904c(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined1 *param_4)

{
  undefined1 *local_14;
  
  local_14 = param_4;
  FUN_00548f98(&local_14,param_2,"(null)",param_3,param_4,&stack0x00000000,&stack0x00000000);
  *param_1 = local_14;
  local_14 = &DAT_00972528;
  FUN_007c5914(&local_14);
  return param_1;
}

// ---- FUN_00549094  @ 0x549094
undefined4 * FUN_00549094(undefined4 *param_1)

{
  undefined1 *local_14 [2];
  
  FUN_00548f98(local_14);
  *param_1 = local_14[0];
  local_14[0] = &DAT_00972528;
  FUN_007c5914(local_14);
  return param_1;
}

// ---- FUN_005490cc  @ 0x5490cc
undefined4 * FUN_005490cc(undefined4 *param_1)

{
  undefined1 *local_14 [2];
  
  FUN_00549094(local_14);
  *param_1 = local_14[0];
  local_14[0] = &DAT_00972528;
  FUN_007c5914(local_14);
  return param_1;
}

// ---- FUN_00549104  @ 0x549104
undefined4 * FUN_00549104(undefined4 *param_1,undefined1 *param_2,undefined4 param_3)

{
  undefined1 *local_14;
  undefined4 uStack_10;
  
  local_14 = param_2;
  uStack_10 = param_3;
  FUN_005490cc(&local_14,param_2,"(null)",param_3,param_1);
  *param_1 = local_14;
  local_14 = &DAT_00972528;
  FUN_007c5914(&local_14);
  return param_1;
}

// ---- FUN_00549138  @ 0x549138
undefined4 * FUN_00549138(undefined4 *param_1,int param_2)

{
  undefined1 *local_24;
  undefined *local_20;
  undefined *local_1c;
  undefined4 local_18;
  undefined4 local_14;
  
  local_18 = FUN_00548b7c(*(undefined4 *)(param_2 + 8));
  local_20 = &DAT_00926470;
  local_1c = &DAT_00961ea4;
  local_14 = 0;
  FUN_00549104(&local_24,&local_20,"toString");
  *param_1 = local_24;
  local_24 = &DAT_00972528;
  FUN_007c5914(&local_24);
  FUN_00548ab0(&local_20);
  return param_1;
}

// ---- FUN_005491a4  @ 0x5491a4
void FUN_005491a4(int param_1,int *param_2)

{
  undefined4 uVar1;
  int iVar2;
  undefined4 local_28;
  undefined4 local_24;
  undefined1 auStack_20 [16];
  
  iVar2 = *(int *)(param_1 + 8);
  if (iVar2 != 0) {
    if (*(int *)(param_1 + 4) == 0) {
      FUN_005166ae(3,"Object not type-checked: no class.");
    }
    else {
      uVar1 = FUN_00546e24();
      iVar2 = FUN_00548b0a(param_2,iVar2,uVar1);
      if (iVar2 == 0) {
        uVar1 = FUN_00546e14(*(undefined4 *)(param_1 + 4));
        FUN_005166ae(4,"Type violation: not of type %s.",uVar1);
        local_28 = (**(code **)(*param_2 + 0x7c))(param_2,*(undefined4 *)(param_1 + 8));
        FUN_00549274(auStack_20,&DAT_009638a4,&local_28);
        FUN_00549138(&local_24,auStack_20);
        FUN_005166ae(1,"Type was %s.",local_24);
        FUN_007c5914(&local_24);
        FUN_00548ab0(auStack_20);
      }
    }
  }
  return;
}

// ---- FUN_0054924c  @ 0x54924c
undefined4 *
FUN_0054924c(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
            char param_5)

{
  undefined4 uVar1;
  
  *param_1 = &DAT_00926470;
  param_1[1] = param_2;
  param_1[2] = param_3;
  param_1[3] = param_4;
  if (param_5 != '\0') {
    uVar1 = FUN_00549a1c();
    FUN_005491a4(param_1,uVar1);
  }
  return param_1;
}

// ---- FUN_00549274  @ 0x549274
undefined4 FUN_00549274(undefined4 param_1,undefined4 param_2,undefined4 *param_3)

{
  undefined1 auStack_20 [20];
  
  FUN_0054924c(auStack_20,param_2,*param_3,0,1);
  FUN_00548b30(param_1,auStack_20);
  FUN_00548ab0(auStack_20);
  return param_1;
}

// ---- FUN_0054929e  @ 0x54929e
undefined4 FUN_0054929e(undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
  undefined1 auStack_20 [20];
  
  FUN_0054924c(auStack_20,param_2,param_3,2,1);
  FUN_00548b30(param_1,auStack_20);
  FUN_00548ab0(auStack_20);
  return param_1;
}

// ---- FUN_005492c6  @ 0x5492c6
undefined4 FUN_005492c6(undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 uVar1;
  undefined1 auStack_20 [16];
  
  uVar1 = FUN_00548b92(param_3);
  FUN_0054924c(auStack_20,param_2,uVar1,1,1);
  FUN_00548b30(param_1,auStack_20);
  FUN_00548ab0(auStack_20);
  return param_1;
}

// ---- FUN_005492f8  @ 0x5492f8
undefined4 FUN_005492f8(undefined4 param_1,undefined4 param_2,int param_3)

{
  undefined4 uVar1;
  undefined1 auStack_20 [16];
  
  uVar1 = FUN_00548b7c(*(undefined4 *)(param_3 + 8));
  FUN_0054924c(auStack_20,param_2,uVar1,0,1);
  FUN_00548b30(param_1,auStack_20);
  FUN_00548ab0(auStack_20);
  return param_1;
}

// ---- FUN_0054932c  @ 0x54932c
undefined4 FUN_0054932c(undefined4 param_1,int param_2,undefined4 param_3)

{
  undefined4 uVar1;
  int iVar2;
  undefined1 auStack_28 [20];
  
  iVar2 = *(int *)(param_2 + 0xc);
  if (iVar2 == 1) {
    uVar1 = FUN_00548b92(*(undefined4 *)(param_2 + 8));
  }
  else if (iVar2 == 2) {
    uVar1 = *(undefined4 *)(param_2 + 8);
  }
  else if (iVar2 == 0) {
    uVar1 = FUN_00548b7c(*(undefined4 *)(param_2 + 8));
  }
  else {
    uVar1 = 0;
  }
  FUN_0054924c(auStack_28,param_3,uVar1,*(undefined4 *)(param_2 + 0xc),1);
  FUN_00548b30(param_1,auStack_28);
  FUN_00548ab0(auStack_28);
  return param_1;
}

// ---- FUN_00549380  @ 0x549380
undefined4 FUN_00549380(undefined4 param_1,int param_2)

{
  undefined4 uVar1;
  undefined *local_20;
  undefined4 uStack_1c;
  undefined4 local_18;
  undefined4 local_14;
  
  uVar1 = *(undefined4 *)(param_2 + 4);
  local_18 = FUN_00548b92(*(undefined4 *)(param_2 + 8));
  local_20 = &DAT_00926470;
  local_14 = 1;
  uStack_1c = uVar1;
  FUN_00548b30(param_1,&local_20);
  FUN_00548ab0(&local_20);
  return param_1;
}

// ---- FUN_005493b8  @ 0x5493b8
undefined4 FUN_005493b8(undefined4 param_1,undefined4 param_2,undefined4 *param_3)

{
  undefined *local_20;
  undefined4 local_1c;
  undefined4 local_18;
  undefined4 local_14;
  
  local_18 = *param_3;
  local_20 = &DAT_00926470;
  local_14 = 0;
  local_1c = param_2;
  FUN_00548b30(param_1,&local_20);
  FUN_00548ab0(&local_20);
  return param_1;
}

// ---- FUN_005493e8  @ 0x5493e8
undefined4 FUN_005493e8(undefined4 param_1,undefined4 param_2,int *param_3)

{
  undefined4 local_24;
  undefined1 auStack_20 [20];
  
  if (param_3 == (int *)0x0) {
    param_3 = (int *)FUN_00549a1c();
  }
  local_24 = (**(code **)(*param_3 + 0x29c))(param_3,param_2);
  FUN_005493b8(auStack_20,&DAT_009628a4,&local_24);
  FUN_00548b30(param_1,auStack_20);
  FUN_00548ab0(auStack_20);
  return param_1;
}

// ---- FUN_0054942c  @ 0x54942c
undefined4 FUN_0054942c(undefined4 param_1,undefined4 *param_2)

{
  undefined1 auStack_20 [20];
  
  FUN_005493e8(auStack_20,*param_2);
  FUN_00548b30(param_1,auStack_20);
  FUN_00548ab0(auStack_20);
  return param_1;
}

// ---- FUN_00549450  @ 0x549450
undefined4 FUN_00549450(undefined4 param_1,int *param_2)

{
  int iVar1;
  int iVar2;
  undefined1 auStack_40 [16];
  undefined1 auStack_30 [8];
  undefined4 local_28;
  
  FUN_00548040(auStack_40,&DAT_00961824);
  iVar2 = param_2[1];
  for (iVar1 = *param_2; iVar1 != iVar2; iVar1 = iVar1 + 4) {
    FUN_0054942c(auStack_30,iVar1,0);
    FUN_00548c54(auStack_40,&DAT_00809538,"(Ljava/lang/Object;)Z",local_28);
    FUN_00548ab0(auStack_30);
  }
  FUN_00548b30(param_1,auStack_40);
  FUN_00548ab0(auStack_40);
  return param_1;
}

// ---- FUN_005494d0  @ 0x5494d0
undefined4 FUN_005494d0(undefined4 param_1,uint param_2,int param_3,int *param_4)

{
  undefined4 uVar1;
  int iVar2;
  undefined *puVar3;
  uint uVar4;
  undefined4 local_3c;
  undefined1 auStack_38 [20];
  
  if (param_4 == (int *)0x0) {
    param_4 = (int *)FUN_00549a1c();
  }
  if (param_3 == 0) {
    puVar3 = &DAT_00961ea4;
  }
  else {
    puVar3 = *(undefined **)(param_2 + 4);
  }
  uVar1 = FUN_00546e24(puVar3);
  uVar4 = param_2 + param_3 * 0x10;
  uVar1 = (**(code **)(*param_4 + 0x2b0))(param_4,param_3,uVar1,0);
  iVar2 = 0;
  for (; param_2 < uVar4; param_2 = param_2 + 0x10) {
    if (*(undefined **)(param_2 + 4) != puVar3) {
      FUN_005166ae(4,"Mixed types passed to JavaReference::NewByteArray.");
    }
    (**(code **)(*param_4 + 0x2b8))(param_4,uVar1,iVar2,*(undefined4 *)(param_2 + 8));
    iVar2 = iVar2 + 1;
  }
  local_3c = uVar1;
  FUN_005493b8(auStack_38,&DAT_00961ea4,&local_3c);
  FUN_00548b30(param_1,auStack_38);
  FUN_00548ab0(auStack_38);
  return param_1;
}

// ---- FUN_00549584  @ 0x549584
undefined4 FUN_00549584(undefined4 param_1,int *param_2,int *param_3)

{
  undefined4 uVar1;
  undefined4 local_2c;
  undefined1 auStack_28 [20];
  
  if (param_3 == (int *)0x0) {
    param_3 = (int *)FUN_00549a1c();
  }
  uVar1 = (**(code **)(*param_3 + 0x2c0))(param_3,param_2[1] - *param_2);
  (**(code **)(*param_3 + 0x340))(param_3,uVar1,0,param_2[1] - *param_2,*param_2);
  local_2c = uVar1;
  FUN_005493b8(auStack_28,&DAT_00961ea4,&local_2c);
  FUN_00548b30(param_1,auStack_28);
  FUN_00548ab0(auStack_28);
  return param_1;
}

// ---- FUN_005495ec  @ 0x5495ec
undefined4 FUN_005495ec(undefined4 param_1,int *param_2,int *param_3)

{
  undefined4 uVar1;
  undefined4 local_2c;
  undefined1 auStack_28 [20];
  
  if (param_3 == (int *)0x0) {
    param_3 = (int *)FUN_00549a1c();
  }
  uVar1 = (**(code **)(*param_3 + 0x2cc))(param_3,param_2[1] - *param_2 >> 2);
  (**(code **)(*param_3 + 0x34c))(param_3,uVar1,0,param_2[1] - *param_2 >> 2,*param_2);
  local_2c = uVar1;
  FUN_005493b8(auStack_28,&DAT_00961ea4,&local_2c);
  FUN_00548b30(param_1,auStack_28);
  FUN_00548ab0(auStack_28);
  return param_1;
}

// ---- FUN_00549654  @ 0x549654
undefined4 FUN_00549654(undefined4 param_1,int param_2)

{
  undefined4 uVar1;
  undefined *local_20;
  undefined4 uStack_1c;
  undefined4 local_18;
  undefined4 local_14;
  
  uVar1 = *(undefined4 *)(param_2 + 4);
  local_18 = FUN_00548b7c(*(undefined4 *)(param_2 + 8));
  local_20 = &DAT_00926470;
  local_14 = 0;
  uStack_1c = uVar1;
  FUN_00548b30(param_1,&local_20);
  FUN_00548ab0(&local_20);
  return param_1;
}

// ---- FUN_0054968c  @ 0x54968c
undefined4
FUN_0054968c(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5)

{
  undefined4 uVar1;
  undefined4 local_34;
  undefined4 local_30;
  undefined4 local_2c;
  undefined1 auStack_28 [16];
  
  uVar1 = FUN_00549a1c();
  local_30 = 0x548a81;
  local_2c = 0;
  local_34 = FUN_00548f34(param_2,uVar1,0x548a81,0,param_4,param_5,&stack0x00000004);
  FUN_00549274(auStack_28,param_3,&local_34);
  FUN_00548b30(param_1,auStack_28);
  FUN_00548ab0(auStack_28);
  return param_1;
}

// ---- FUN_005496f0  @ 0x5496f0
undefined4 *
FUN_005496f0(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int *piVar1;
  int iVar2;
  uint uVar3;
  int iVar4;
  void *pvVar5;
  int iVar6;
  void *local_2c;
  void *local_28;
  int local_24;
  
  piVar1 = (int *)FUN_00549a1c(param_1,param_2,param_4);
  iVar2 = FUN_00548f34(param_2,piVar1,0x548a81,0,param_3,param_4,&stack0x00000000);
  if (iVar2 == 0) {
    *param_1 = 0;
    param_1[1] = 0;
    param_1[2] = 0;
  }
  else {
    uVar3 = (**(code **)(*piVar1 + 0x2ac))(piVar1,iVar2);
    iVar4 = (**(code **)(*piVar1 + 0x378))(piVar1,iVar2,0);
    local_2c = (void *)0x0;
    local_28 = (void *)0x0;
    local_24 = 0;
    pvVar5 = (void *)0x0;
    if (uVar3 != 0) {
      pvVar5 = operator_new(uVar3);
    }
    local_24 = (int)pvVar5 + uVar3;
    for (iVar6 = 0; 0 < (int)(uVar3 - iVar6); iVar6 = iVar6 + 1) {
      *(undefined1 *)((int)pvVar5 + iVar6) = *(undefined1 *)(iVar4 + iVar6);
    }
    local_28 = pvVar5;
    if (-1 < (int)uVar3) {
      local_28 = (void *)((int)pvVar5 + uVar3);
    }
    local_2c = pvVar5;
    (**(code **)(*piVar1 + 0x37c))(piVar1,iVar2,iVar4,0);
    FUN_002eb49c(piVar1,iVar2);
    *param_1 = local_2c;
    param_1[1] = local_28;
    param_1[2] = local_24;
  }
  local_24 = 0;
  local_2c = (void *)local_24;
  local_28 = (void *)local_24;
  std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::~_Vector_base
            ((_Vector_base<unsigned_char,std::allocator<unsigned_char>> *)&local_2c);
  return param_1;
}

// ---- FUN_005497e4  @ 0x5497e4
undefined4 * FUN_005497e4(undefined4 *param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 local_1c;
  undefined4 local_18;
  undefined4 local_14;
  
  FUN_005496f0((_Vector_base<unsigned_char,std::allocator<unsigned_char>> *)&local_1c,param_2,
               param_3,&DAT_00809585);
  uVar3 = local_14;
  uVar2 = local_18;
  uVar1 = local_1c;
  local_1c = 0;
  *param_1 = uVar1;
  local_18 = 0;
  param_1[1] = uVar2;
  local_14 = 0;
  param_1[2] = uVar3;
  std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::~_Vector_base
            ((_Vector_base<unsigned_char,std::allocator<unsigned_char>> *)&local_1c);
  return param_1;
}

// ---- FUN_0054981c  @ 0x54981c
bool FUN_0054981c(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  bool bVar1;
  int iVar2;
  undefined4 *local_20;
  undefined4 local_1c;
  undefined4 *local_18;
  undefined4 uStack_14;
  
  local_20 = param_1;
  local_1c = param_2;
  local_18 = (undefined4 *)param_3;
  uStack_14 = param_4;
  if (DAT_009643ac == (int *)0x0) {
    FUN_005166ae(4,"Unable to fetch Java environment: no Java VM set.");
    bVar1 = false;
  }
  else {
    iVar2 = (**(code **)(*DAT_009643ac + 0x18))(DAT_009643ac,param_1,0x10006);
    bVar1 = false;
    if (iVar2 != 0) {
      if (*(char *)(param_1 + 1) != '\0') {
        FUN_005166ae(3,"Unexpectedly detached from JNI. Re-attaching.");
      }
      FUN_00529f30(&local_20);
      memset(&local_1c,0,0xc);
      local_1c = 0x10006;
      local_18 = local_20;
      iVar2 = (**(code **)(*DAT_009643ac + 0x10))(DAT_009643ac,param_1,&local_1c);
      if (iVar2 != 0) {
        FUN_005166ae(4,"Unable to fetch Java environment: fetch failed.");
        *param_1 = 0;
      }
      else {
        FUN_005166ae(1,"Attached to JVM on thread %s",local_20);
        *(undefined1 *)(param_1 + 1) = 1;
      }
      bVar1 = iVar2 == 0;
      FUN_007c5914(&local_20);
    }
  }
  return bVar1;
}

// ---- FUN_005498d4  @ 0x5498d4
undefined4 * FUN_005498d4(void)

{
  int iVar1;
  undefined4 *__pointer;
  uint uVar2;
  
  uVar2 = DAT_009643a8 & 1;
  if ((uVar2 == 0) && (iVar1 = __cxa_guard_acquire(), iVar1 != 0)) {
    DAT_009643a4 = uVar2;
    pthread_key_create(&DAT_009643a4,(__destr_function *)0x549a07);
    __cxa_guard_release(&DAT_009643a8);
    FUN_007985bc(&DAT_009643a4,&LAB_005499dc_1,&DAT_00943000);
  }
  __pointer = pthread_getspecific(DAT_009643a4);
  if (__pointer == (undefined4 *)0x0) {
    __pointer = operator_new(8);
    *__pointer = 0;
    *(undefined1 *)(__pointer + 1) = 0;
    FUN_0054981c();
    pthread_setspecific(DAT_009643a4,__pointer);
  }
  return __pointer;
}

// ---- FUN_0054997c  @ 0x54997c
void FUN_0054997c(undefined4 *param_1,undefined4 param_2,undefined4 param_3)

{
  int iVar1;
  undefined4 local_14;
  undefined4 uStack_10;
  
  if (*(char *)(param_1 + 1) != '\0') {
    local_14 = param_2;
    uStack_10 = param_3;
    FUN_00529f30(&local_14);
    FUN_005166ae(1,"Detaching from JVM on thread %s",local_14);
    FUN_007c5914(&local_14);
    iVar1 = (**(code **)(*DAT_009643ac + 0x14))();
    if ((iVar1 != 0) && (iVar1 != -2)) {
      FUN_005166ae(1,"Didn\'t detach thread from Java VM: error occurred.");
    }
    *(undefined1 *)(param_1 + 1) = 0;
    *param_1 = 0;
  }
  return;
}

// ---- FUN_00549a06  @ 0x549a06
void FUN_00549a06(void *param_1)

{
  if (param_1 != (void *)0x0) {
    FUN_0054997c();
    operator_delete(param_1);
    return;
  }
  return;
}

// ---- FUN_00549a1c  @ 0x549a1c
undefined4 FUN_00549a1c(void)

{
  undefined4 *puVar1;
  
  puVar1 = (undefined4 *)FUN_005498d4();
  return *puVar1;
}

// ---- FUN_00549a28  @ 0x549a28
void FUN_00549a28(int param_1,undefined4 param_2,undefined4 *param_3,undefined4 param_4)

{
  int *piVar1;
  int *piVar2;
  undefined4 uVar3;
  char *pcVar4;
  int *piVar5;
  int *piVar6;
  
  if (param_1 == 0) {
    pcVar4 = "Not setting Java VM: null value passed.";
  }
  else {
    param_3 = &DAT_009643ac;
    if (DAT_009643ac == 0) {
      DAT_009643ac = param_1;
      uVar3 = FUN_00549a1c();
      piVar2 = DAT_00960c88;
      for (piVar5 = DAT_00960c84; piVar1 = DAT_00960c88, piVar6 = DAT_00960c84, piVar5 != piVar2;
          piVar5 = piVar5 + 1) {
        FUN_00547814(*piVar5,uVar3);
      }
      for (; piVar6 != piVar1; piVar6 = piVar6 + 1) {
        FUN_005491a4(*piVar6 + 0xc,uVar3);
      }
      return;
    }
    if (DAT_009643ac == param_1) {
      return;
    }
    pcVar4 = "Not setting Java VM: already set to distinct value.";
  }
  FUN_005166ae(4,pcVar4,param_3,param_4);
  return;
}

// ---- FUN_00549a6c  @ 0x549a6c
void FUN_00549a6c(int param_1,int param_2)

{
  int *piVar1;
  int *piVar2;
  int *piVar3;
  char *pcVar4;
  int *piVar5;
  int *piVar6;
  undefined1 auStack_38 [16];
  undefined4 local_28 [5];
  
  if ((param_1 == 0) || (param_2 == 0)) {
    pcVar4 = "Not setting Java VM: null value passed for vm or activity.";
  }
  else {
    if (DAT_009643ac == 0) {
      DAT_009643ac = param_1;
      piVar3 = (int *)FUN_00549a1c();
      FUN_00547814(&DAT_00963aa4,piVar3);
      FUN_00547814(&DAT_00961b24,piVar3);
      FUN_00547814(&DAT_009638a4,piVar3);
      FUN_00547814(&DAT_009628a4,piVar3);
      local_28[0] = (**(code **)(*piVar3 + 100))(piVar3,param_2);
      FUN_00549274(auStack_38,&DAT_00963aa4,local_28);
      FUN_0054968c(local_28,auStack_38,&DAT_00961b24,"getClassLoader","()Ljava/lang/ClassLoader;");
      piVar1 = DAT_00960c88;
      for (piVar5 = DAT_00960c84; piVar2 = DAT_00960c88, piVar6 = DAT_00960c84, piVar5 != piVar1;
          piVar5 = piVar5 + 1) {
        FUN_005478c4(*piVar5,piVar3,local_28);
      }
      for (; piVar6 != piVar2; piVar6 = piVar6 + 1) {
        FUN_005491a4(*piVar6 + 0xc,piVar3);
      }
      FUN_00548ab0(local_28);
      FUN_00548ab0(auStack_38);
      return;
    }
    if (DAT_009643ac == param_1) {
      return;
    }
    pcVar4 = "Not setting Java VM: already set to distinct value.";
  }
  FUN_005166ae(4,pcVar4);
  return;
}

// ---- FUN_00549ab4  @ 0x549ab4
undefined1 * FUN_00549ab4(undefined1 *param_1)

{
  undefined1 uVar1;
  undefined4 *puVar2;
  
  *param_1 = 0;
  puVar2 = (undefined4 *)FUN_005498d4();
  uVar1 = FUN_0054981c();
  *param_1 = uVar1;
  FUN_00546d7a(*puVar2);
  return param_1;
}

// ---- FUN_00549ad2  @ 0x549ad2
char * FUN_00549ad2(char *param_1)

{
  if (*param_1 != '\0') {
    FUN_005498d4();
    FUN_0054997c();
  }
  return param_1;
}

// ---- FUN_00549ae8  @ 0x549ae8
undefined4 * FUN_00549ae8(undefined4 *param_1,undefined1 *param_2,undefined4 param_3)

{
  int *piVar1;
  undefined4 uVar2;
  int iVar3;
  int iVar4;
  char *pcVar5;
  undefined4 *puVar6;
  undefined1 *local_24;
  undefined4 uStack_20;
  
  puVar6 = param_1;
  local_24 = param_2;
  uStack_20 = param_3;
  piVar1 = (int *)FUN_00549a1c();
  uVar2 = FUN_00546e24(&DAT_00964224);
  iVar3 = (**(code **)(*piVar1 + 0x84))(piVar1,uVar2,"toString","()Ljava/lang/String;",puVar6);
  if ((iVar3 == 0) || (iVar4 = FUN_00546d70(piVar1), iVar4 != 0)) {
    FUN_00546d7a(piVar1);
    FUN_005166ae(4,"No debug string: couldn\'t find Throwable.toString().");
    pcVar5 = "(error)";
  }
  else {
    iVar3 = FUN_002eb500(piVar1,param_2,iVar3);
    iVar4 = FUN_00546d70(piVar1);
    if (iVar4 == 0) {
      if (iVar3 != 0) {
        local_24 = &DAT_00972528;
        uVar2 = (**(code **)(*piVar1 + 0x2a4))(piVar1,iVar3,0);
        FUN_007c5e70(&local_24,uVar2);
        (**(code **)(*piVar1 + 0x2a8))(piVar1,iVar3,uVar2);
        *param_1 = local_24;
        local_24 = &DAT_00972528;
        FUN_007c5914(&local_24);
        return param_1;
      }
      pcVar5 = "(null)";
    }
    else {
      FUN_00546d7a(piVar1);
      FUN_005166ae(4,"No debug string: exception in Throwable.toString().");
      pcVar5 = "(error)";
    }
  }
  FUN_007c6a60(param_1,pcVar5,&local_24);
  return param_1;
}

// ---- FUN_00549bf4  @ 0x549bf4
undefined4 FUN_00549bf4(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  int iVar2;
  undefined4 uVar3;
  undefined4 uStack_20;
  undefined4 local_1c;
  
  uStack_20 = param_3;
  local_1c = param_4;
  iVar1 = FUN_00546d70();
  if (iVar1 == 0) {
    uVar3 = 0;
  }
  else {
    FUN_00546d7a(param_1);
    FUN_007c6a60(&local_1c,param_3,&uStack_20);
    iVar2 = FUN_007c5724(&local_1c,"toString");
    FUN_007c5914(&local_1c);
    if (iVar2 == 0) {
      FUN_005166ae(4,"Exception in %s.%s: an exception occurred.",param_2,param_3);
    }
    else {
      FUN_00549ae8(&local_1c,iVar1);
      FUN_005166ae(4,"Exception in %s.%s: %s.",param_2,param_3,local_1c);
      FUN_007c5914(&local_1c);
    }
    uVar3 = 1;
  }
  return uVar3;
}

// ---- FUN_00549c88  @ 0x549c88
void FUN_00549c88(undefined4 param_1,void *param_2)

{
  if (param_2 != (void *)0x0) {
    FUN_0054997c(param_2);
    operator_delete(param_2);
    return;
  }
  return;
}

// ---- FUN_00549ca0  @ 0x549ca0
void FUN_00549ca0(void *param_1)

{
  if (param_1 != (void *)0x0) {
    operator_delete(param_1);
    return;
  }
  return;
}

// ---- FUN_00549ca8  @ 0x549ca8
undefined4 * FUN_00549ca8(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_00549ca8_1_00926480;
  FUN_00512ea2(param_1 + 0xc);
  FUN_00533468(param_1);
  return param_1;
}

// ---- FUN_00549cc8  @ 0x549cc8
void * FUN_00549cc8(void *param_1)

{
  FUN_00549ca8();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_00549cdc  @ 0x549cdc
undefined4 * FUN_00549cdc(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_00549cdc_1_009264d8;
  FUN_00549ca8();
  return param_1;
}

// ---- FUN_00549cf4  @ 0x549cf4
void * FUN_00549cf4(void *param_1)

{
  FUN_00549cdc();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_00549d08  @ 0x549d08
undefined4 * FUN_00549d08(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_00549d08_1_00926538;
  FUN_00549cdc();
  return param_1;
}

// ---- FUN_00549d20  @ 0x549d20
void * FUN_00549d20(void *param_1)

{
  FUN_00549d08();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_00549d78  @ 0x549d78
int FUN_00549d78(int param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  *(undefined4 *)(param_1 + 8) = 0;
  if (*(int *)(param_2 + 8) != 0) {
    *(undefined4 *)(param_1 + 0xc) = *(undefined4 *)(param_2 + 0xc);
    *(undefined4 *)(param_1 + 8) = *(undefined4 *)(param_2 + 8);
    (**(code **)(param_2 + 8))(param_1,param_2,2,*(code **)(param_2 + 8),param_4);
  }
  std::function<void(gpg::LeaderboardManager::FetchAllResponse_const&)>::function
            ((function<void(gpg::LeaderboardManager::FetchAllResponse_const&)> *)(param_1 + 0x10),
             (function *)(param_2 + 0x10));
  return param_1;
}

// ---- FUN_00549db4  @ 0x549db4
undefined4 *
FUN_00549db4(undefined4 *param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4)

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
  FUN_00549d78(auStack_68,param_3);
  local_78 = uVar1;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_74,(__shared_count *)a_Stack_7c);
  FUN_00549d78(auStack_48,auStack_68);
  local_70 = local_78;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_6c,(__shared_count *)a_Stack_74);
  FUN_00533528(param_1,&local_70);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_6c);
  *param_1 = &PTR_FUN_00549ca8_1_00926480;
  FUN_00549d78(param_1 + 0xc,auStack_48);
  FUN_00512ea2(auStack_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_74);
  *param_1 = &PTR_FUN_00549cdc_1_009264d8;
  FUN_00512ea2(auStack_68);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_7c);
  param_1[0x14] = param_4;
  *param_1 = &PTR_FUN_00549d08_1_00926538;
  return param_1;
}

// ---- FUN_00549e94  @ 0x549e94
FetchAllResponse * FUN_00549e94(FetchAllResponse *param_1,int param_2)

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
  gpg::LeaderboardManager::FetchAllResponse::FetchAllResponse(param_1,(FetchAllResponse *)&local_20)
  ;
  std::vector<gpg::Leaderboard,std::allocator<gpg::Leaderboard>>::~vector
            ((vector<gpg::Leaderboard,std::allocator<gpg::Leaderboard>> *)&local_1c);
  return param_1;
}

// ---- FUN_0054a01a  @ 0x54a01a
void FUN_0054a01a(int *param_1,undefined4 param_2)

{
  int iVar1;
  undefined4 local_28;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  
  iVar1 = FUN_00548c48(param_2);
  if (iVar1 == 0) {
    (**(code **)(*param_1 + 0x50))(&local_28,param_1,param_2);
    FUN_00514624(param_1 + 0xc,&local_28);
  }
  else {
    local_28 = 0xfffffffe;
    local_24 = 0;
    local_20 = 0;
    local_1c = 0;
    FUN_00514624(param_1 + 0xc,&local_28);
  }
  std::vector<gpg::Leaderboard,std::allocator<gpg::Leaderboard>>::~vector
            ((vector<gpg::Leaderboard,std::allocator<gpg::Leaderboard>> *)&local_24);
  return;
}

// ---- FUN_0054a0a4  @ 0x54a0a4
undefined4
FUN_0054a0a4(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 *param_4)

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
  local_3c = 0x54a575;
  local_40 = (code *)0x549d33;
  FUN_00533700(a_Stack_38,(_Function_base *)local_48);
  pvVar2 = operator_new(0x14);
  FUN_0053372c(pvVar2,a_Stack_38);
  local_64 = pvVar2;
  FUN_005453a8(auStack_58,param_2,param_3,&local_64);
  if (local_64 != (void *)0x0) {
    FUN_00533420();
  }
  std::_Function_base::~_Function_base(a_Stack_38);
  std::_Function_base::~_Function_base((_Function_base *)local_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_5c);
  FUN_00548b30(param_1,auStack_58);
  FUN_00548ab0(auStack_58);
  return param_1;
}

// ---- FUN_0054a184  @ 0x54a184
undefined4 FUN_0054a184(undefined4 param_1,int param_2)

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
  if (local_34 == 0) goto LAB_0054a1a0;
  piVar2 = (int *)(local_34 + 4);
  unaff_r4 = &local_28;
  local_28 = *(int *)(local_34 + 4);
  while( true ) {
    iVar3 = local_28;
    if (local_28 == 0) {
LAB_0054a1a0:
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
  FUN_0054a0a4(unaff_r4,0,0x5463d1,&local_30,iVar3);
  FUN_00548b30(param_1,unaff_r4);
  FUN_00548ab0(unaff_r4);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_2c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_34);
  return param_1;
}

// ---- FUN_0054a23c  @ 0x54a23c
void FUN_0054a23c(int param_1)

{
  undefined4 uVar1;
  undefined1 auStack_48 [16];
  undefined1 auStack_38 [16];
  undefined1 auStack_28 [20];
  
  FUN_00547b10(auStack_48,&DAT_00961324,&DAT_00963ba4,"Leaderboards",
               "Lcom/google/android/gms/games/leaderboard/Leaderboards;");
  uVar1 = FUN_00548bac(*(int *)(param_1 + 0x28) + 0xf4);
  FUN_0054968c(auStack_38,auStack_48,&DAT_00963024,"loadLeaderboardMetadata",
               "(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/common/api/PendingResult;"
               ,uVar1,*(int *)(param_1 + 0x50) == 2);
  FUN_0054a184(auStack_28,param_1);
  uVar1 = FUN_00548bac(auStack_28);
  FUN_00548d90(auStack_38,"setResultCallback",
               "(Lcom/google/android/gms/common/api/ResultCallback;)V",uVar1);
  FUN_00548ab0(auStack_28);
  FUN_00548ab0(auStack_38);
  FUN_00548ab0(auStack_48);
  return;
}

// ---- FUN_0054a304  @ 0x54a304
void FUN_0054a304(int param_1,undefined4 param_2)

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

// ---- FUN_0054a384  @ 0x54a384
FetchAllResponse * FUN_0054a384(FetchAllResponse *param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 uVar1;
  int iVar2;
  uint uVar3;
  Leaderboard *pLVar4;
  vector<gpg::Leaderboard,std::allocator<gpg::Leaderboard>> *this;
  uint uVar5;
  undefined1 auStack_64 [4];
  undefined1 auStack_60 [4];
  Leaderboard aLStack_5c [8];
  Leaderboard *local_54;
  Leaderboard *local_50;
  Leaderboard *local_4c;
  undefined1 auStack_48 [16];
  undefined4 local_38;
  undefined4 local_34;
  undefined4 local_30;
  undefined4 local_2c;
  
  uVar1 = FUN_0054a304(param_2,param_3);
  FUN_0054932c((FetchAllResponse *)&local_38,param_3,&DAT_00960fa4);
  FUN_0054968c(auStack_48,(FetchAllResponse *)&local_38,&DAT_00963ea4,"getLeaderboards",
               "()Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;");
  FUN_00548ab0((FetchAllResponse *)&local_38);
  iVar2 = gpg::IsError(uVar1);
  local_38 = uVar1;
  if (iVar2 == 0) {
    uVar3 = FUN_00548d1c(auStack_48,"getCount");
    local_54 = (Leaderboard *)0x0;
    local_50 = (Leaderboard *)0x0;
    local_4c = (Leaderboard *)0x0;
    if (0x1fffffff < uVar3) {
                    /* WARNING: Subroutine does not return */
      FUN_007c49e8("vector::reserve");
    }
    if (uVar3 != 0) {
      pLVar4 = operator_new(uVar3 * 8);
      std::__uninitialized_copy<false>::__uninit_copy<gpg::Leaderboard*,gpg::Leaderboard*>
                ((Leaderboard *)0x0,(Leaderboard *)0x0,pLVar4);
      std::_Destroy_aux<false>::__destroy<gpg::Leaderboard*>(local_54,local_50);
      FUN_00549ca0(local_54);
      local_4c = pLVar4 + uVar3 * 8;
      local_50 = pLVar4;
    }
    local_54 = local_50;
    for (uVar5 = 0; uVar5 != uVar3; uVar5 = uVar5 + 1) {
      FUN_0054968c((FetchAllResponse *)&local_38,auStack_48,&DAT_00960ea4,&DAT_0080598d,
                   "(I)Ljava/lang/Object;",uVar5);
      FUN_007c6a60(auStack_60,&DAT_00801f93,auStack_64);
      FUN_0054f0d0(aLStack_5c,(FetchAllResponse *)&local_38,auStack_60);
      if (local_50 == local_4c) {
        std::vector<gpg::Leaderboard,std::allocator<gpg::Leaderboard>>::
        _M_emplace_back_aux<gpg::Leaderboard>
                  ((vector<gpg::Leaderboard,std::allocator<gpg::Leaderboard>> *)&local_54,aLStack_5c
                  );
      }
      else {
        if (local_50 != (Leaderboard *)0x0) {
          gpg::Leaderboard::Leaderboard(local_50,aLStack_5c);
        }
        local_50 = local_50 + 8;
      }
      gpg::Leaderboard::~Leaderboard(aLStack_5c);
      FUN_007c5914(auStack_60);
      FUN_00548ab0((FetchAllResponse *)&local_38);
    }
    FUN_00548de4(auStack_48,"close");
    this = (vector<gpg::Leaderboard,std::allocator<gpg::Leaderboard>> *)&local_54;
    std::vector<gpg::Leaderboard,std::allocator<gpg::Leaderboard>>::vector
              ((vector<gpg::Leaderboard,std::allocator<gpg::Leaderboard>> *)&local_34,this);
    gpg::LeaderboardManager::FetchAllResponse::FetchAllResponse
              (param_1,(FetchAllResponse *)&local_38);
    std::vector<gpg::Leaderboard,std::allocator<gpg::Leaderboard>>::~vector
              ((vector<gpg::Leaderboard,std::allocator<gpg::Leaderboard>> *)&local_34);
  }
  else {
    FUN_00548de4(auStack_48,"close");
    local_34 = 0;
    local_30 = 0;
    local_2c = 0;
    gpg::LeaderboardManager::FetchAllResponse::FetchAllResponse
              (param_1,(FetchAllResponse *)&local_38);
    this = (vector<gpg::Leaderboard,std::allocator<gpg::Leaderboard>> *)&local_34;
  }
  std::vector<gpg::Leaderboard,std::allocator<gpg::Leaderboard>>::~vector(this);
  FUN_00548ab0(auStack_48);
  return param_1;
}

// ---- FUN_0054a574  @ 0x54a574
void FUN_0054a574(undefined4 *param_1)

{
  undefined4 uVar1;
  undefined1 auStack_30 [16];
  undefined1 auStack_20 [16];
  
  param_1 = (undefined4 *)*param_1;
  FUN_00548b30(auStack_30);
  uVar1 = *param_1;
  FUN_00548b30(auStack_20,auStack_30);
  FUN_0054a01a(uVar1,auStack_20);
  FUN_00548ab0(auStack_20);
  FUN_00548ab0(auStack_30);
  return;
}

// ---- FUN_0054a5e0  @ 0x54a5e0
undefined4 * FUN_0054a5e0(undefined4 *param_1)

{
  *param_1 = &PTR___Sp_counted_base_1_009242b8;
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0054a640  @ 0x54a640
void FUN_0054a640(void *param_1)

{
  if (param_1 != (void *)0x0) {
    operator_delete(param_1);
    return;
  }
  return;
}

// ---- FUN_0054a648  @ 0x54a648
void FUN_0054a648(int *param_1)

{
  if (param_1 != (int *)0x0) {
    (**(code **)(*param_1 + 4))();
  }
  return;
}

// ---- FUN_0054a654  @ 0x54a654
void FUN_0054a654(void *param_1)

{
  FUN_007c5914((int)param_1 + 0x18);
  FUN_007c5914((int)param_1 + 0x14);
  FUN_007c5914((int)param_1 + 0x10);
  operator_delete(param_1);
  return;
}

// ---- FUN_0054a69e  @ 0x54a69e
void FUN_0054a69e(int param_1)

{
  void *pvVar1;
  
  pvVar1 = *(void **)(param_1 + 0xc);
  gpg::Score::~Score((Score *)((int)pvVar1 + 0x18));
  FUN_007c5914(pvVar1);
  operator_delete(pvVar1);
  return;
}

// ---- FUN_0054a6bc  @ 0x54a6bc
undefined4 * FUN_0054a6bc(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0054a6bc_1_00926598;
  FUN_00512f2c(param_1 + 0xc);
  FUN_00533468(param_1);
  return param_1;
}

// ---- FUN_0054a6dc  @ 0x54a6dc
void * FUN_0054a6dc(void *param_1)

{
  FUN_0054a6bc();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0054a6f0  @ 0x54a6f0
undefined4 * FUN_0054a6f0(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0054a6f0_1_009265f0;
  FUN_0054a6bc();
  return param_1;
}

// ---- FUN_0054a708  @ 0x54a708
void * FUN_0054a708(void *param_1)

{
  FUN_0054a6f0();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0054a71c  @ 0x54a71c
undefined4 * FUN_0054a71c(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0054a71c_1_00926690;
  FUN_007c5914(param_1 + 0x15);
  FUN_0054a6f0(param_1);
  return param_1;
}

// ---- FUN_0054a73c  @ 0x54a73c
void * FUN_0054a73c(void *param_1)

{
  FUN_0054a71c();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0054a794  @ 0x54a794
int FUN_0054a794(int param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  *(undefined4 *)(param_1 + 8) = 0;
  if (*(int *)(param_2 + 8) != 0) {
    *(undefined4 *)(param_1 + 0xc) = *(undefined4 *)(param_2 + 0xc);
    *(undefined4 *)(param_1 + 8) = *(undefined4 *)(param_2 + 8);
    (**(code **)(param_2 + 8))(param_1,param_2,2,*(code **)(param_2 + 8),param_4);
  }
  std::function<void(gpg::LeaderboardManager::FetchAllScoreSummariesResponse_const&)>::function
            ((function<void(gpg::LeaderboardManager::FetchAllScoreSummariesResponse_const&)> *)
             (param_1 + 0x10),(function *)(param_2 + 0x10));
  return param_1;
}

// ---- FUN_0054a7d0  @ 0x54a7d0
undefined4 *
FUN_0054a7d0(undefined4 *param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4,
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
  FUN_0054a794(auStack_68,param_3);
  local_78 = uVar1;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_74,(__shared_count *)a_Stack_7c);
  FUN_0054a794(auStack_48,auStack_68);
  local_70 = local_78;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_6c,(__shared_count *)a_Stack_74);
  FUN_00533528(param_1,&local_70);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_6c);
  *param_1 = &PTR_FUN_0054a6bc_1_00926598;
  FUN_0054a794(param_1 + 0xc,auStack_48);
  FUN_00512f2c(auStack_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_74);
  *param_1 = &PTR_FUN_0054a6f0_1_009265f0;
  FUN_00512f2c(auStack_68);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_7c);
  param_1[0x14] = param_4;
  *param_1 = &PTR_FUN_0054a71c_1_00926690;
  FUN_007c64e8(param_1 + 0x15,param_5);
  param_1[0x16] = 0;
  param_1[0x16] = 0;
  param_1[0x17] = 0;
  return param_1;
}

// ---- FUN_0054a8c8  @ 0x54a8c8
FetchAllScoreSummariesResponse * FUN_0054a8c8(FetchAllScoreSummariesResponse *param_1,int param_2)

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
  gpg::LeaderboardManager::FetchAllScoreSummariesResponse::FetchAllScoreSummariesResponse
            (param_1,(FetchAllScoreSummariesResponse *)&local_20);
  std::vector<gpg::ScoreSummary,std::allocator<gpg::ScoreSummary>>::~vector
            ((vector<gpg::ScoreSummary,std::allocator<gpg::ScoreSummary>> *)&local_1c);
  return param_1;
}

// ---- FUN_0054a970  @ 0x54a970
undefined4 *
FUN_0054a970(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
            undefined4 *param_5,undefined4 *param_6,undefined4 *param_7,Score *param_8,
            undefined1 *param_9)

{
  undefined1 uVar1;
  undefined4 *puVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  undefined1 *local_34;
  undefined4 local_30 [3];
  
  *param_1 = 0;
  param_1[1] = 0;
  puVar2 = operator_new(0x28);
  *param_1 = puVar2;
  FUN_007c64e8(&local_34,param_4);
  uVar6 = *param_5;
  uVar3 = *param_6;
  uVar4 = *param_7;
  uVar5 = param_7[1];
  gpg::Score::Score((Score *)local_30,param_8);
  uVar1 = *param_9;
  if (puVar2 != (undefined4 *)0x0) {
    puVar2[1] = uVar6;
    puVar2[4] = uVar4;
    puVar2[5] = uVar5;
    *puVar2 = local_34;
    local_34 = &DAT_00972528;
    puVar2[2] = uVar3;
    gpg::Score::Score((Score *)(puVar2 + 6),(Score *)local_30);
    *(undefined1 *)(puVar2 + 8) = uVar1;
  }
  gpg::Score::~Score((Score *)local_30);
  FUN_007c5914(&local_34);
  uVar3 = *param_1;
  local_30[0] = 0;
  puVar2 = operator_new(0x14);
  if (puVar2 != (undefined4 *)0x0) {
    puVar2[1] = 1;
    puVar2[2] = 1;
    puVar2[3] = uVar3;
    *puVar2 = &PTR_LAB_0054a5b8_1_00926670;
  }
  local_30[0] = param_1[1];
  param_1[1] = puVar2;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_30);
  return param_1;
}

// ---- FUN_0054aabe  @ 0x54aabe
void FUN_0054aabe(int *param_1,undefined4 param_2)

{
  int iVar1;
  undefined4 local_28;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  
  iVar1 = FUN_00548c48(param_2);
  if (iVar1 == 0) {
    (**(code **)(*param_1 + 0x50))(&local_28,param_1,param_2);
    FUN_00514aec(param_1 + 0xc,&local_28);
  }
  else {
    local_28 = 0xfffffffe;
    local_24 = 0;
    local_20 = 0;
    local_1c = 0;
    FUN_00514aec(param_1 + 0xc,&local_28);
  }
  std::vector<gpg::ScoreSummary,std::allocator<gpg::ScoreSummary>>::~vector
            ((vector<gpg::ScoreSummary,std::allocator<gpg::ScoreSummary>> *)&local_24);
  return;
}

// ---- FUN_0054ac24  @ 0x54ac24
undefined4
FUN_0054ac24(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 *param_4)

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
  local_3c = 0x54b131;
  local_40 = (code *)0x54a74f;
  FUN_00533700(a_Stack_38,(_Function_base *)local_48);
  pvVar2 = operator_new(0x14);
  FUN_0053372c(pvVar2,a_Stack_38);
  local_64 = pvVar2;
  FUN_005453a8(auStack_58,param_2,param_3,&local_64);
  if (local_64 != (void *)0x0) {
    FUN_0054a648();
  }
  std::_Function_base::~_Function_base(a_Stack_38);
  std::_Function_base::~_Function_base((_Function_base *)local_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_5c);
  FUN_00548b30(param_1,auStack_58);
  FUN_00548ab0(auStack_58);
  return param_1;
}

// ---- FUN_0054ad04  @ 0x54ad04
void FUN_0054ad04(int param_1)

{
  bool bVar1;
  int iVar2;
  undefined4 *puVar3;
  undefined4 uVar4;
  int *piVar5;
  int *piVar6;
  undefined4 uVar7;
  int *extraout_r2;
  int extraout_r3;
  int iVar8;
  uint uVar9;
  uint local_8c;
  int local_74;
  int local_70;
  undefined4 local_6c;
  undefined1 auStack_68 [16];
  undefined1 auStack_58 [16];
  undefined1 auStack_48 [16];
  int local_38;
  undefined4 local_34 [4];
  
  FUN_0054942c(auStack_68,param_1 + 0x54,0);
  uVar9 = DAT_009643b0 & 1;
  if ((uVar9 == 0) && (iVar2 = __cxa_guard_acquire(), iVar2 != 0)) {
    DAT_009643b8 = (undefined4 *)uVar9;
    DAT_009643bc = (undefined4 *)uVar9;
    DAT_009643c0 = (undefined4 *)uVar9;
    puVar3 = operator_new(0xc);
    DAT_009643bc = puVar3 + 3;
    DAT_009643b8 = puVar3;
    DAT_009643c0 = DAT_009643bc;
    *puVar3 = 1;
    puVar3[1] = 2;
    puVar3[2] = 3;
    __cxa_guard_release(&DAT_009643b0);
    FUN_007985bc(&DAT_009643b8,0x54a68f,&DAT_00943000);
  }
  uVar9 = DAT_009643b4 & 1;
  if ((uVar9 == 0) && (iVar2 = __cxa_guard_acquire(), iVar2 != 0)) {
    DAT_009643c4 = (undefined4 *)uVar9;
    DAT_009643c8 = (undefined4 *)uVar9;
    DAT_009643cc = (undefined4 *)uVar9;
    puVar3 = operator_new(8);
    DAT_009643c8 = puVar3 + 2;
    DAT_009643c4 = puVar3;
    DAT_009643cc = DAT_009643c8;
    *puVar3 = 1;
    puVar3[1] = 2;
    __cxa_guard_release(&DAT_009643b4,2,&DAT_00831424);
    FUN_007985bc(&DAT_009643c4,0x54a67f,&DAT_00943000);
  }
  std::mutex::lock((mutex *)&((pthread_mutex_t *)(param_1 + 0x58))->__data);
  pthread_mutex_unlock((pthread_mutex_t *)(param_1 + 0x58));
  local_8c = 0;
  *(int *)(param_1 + 0x5c) =
       ((int)DAT_009643c8 - (int)DAT_009643c4 >> 2) * ((int)DAT_009643bc - (int)DAT_009643b8 >> 2);
  for (; local_8c < (uint)((int)DAT_009643bc - (int)DAT_009643b8 >> 2); local_8c = local_8c + 1) {
    for (uVar9 = 0; uVar9 < (uint)((int)DAT_009643c8 - (int)DAT_009643c4 >> 2); uVar9 = uVar9 + 1) {
      FUN_00547b10(auStack_58,&DAT_00961324,&DAT_00963ba4,"Leaderboards",
                   "Lcom/google/android/gms/games/leaderboard/Leaderboards;");
      uVar4 = FUN_00548bac(*(int *)(param_1 + 0x28) + 0xf4);
      piVar5 = (int *)FUN_00548bac(auStack_68);
      piVar6 = (int *)FUN_0054eb3c(DAT_009643b8[local_8c]);
      uVar7 = FUN_0054ec64(DAT_009643c4[uVar9]);
      FUN_0054968c(auStack_48,auStack_58,&DAT_00963024,"loadTopScores",
                   "(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;IIIZ)Lcom/google/android/gms/common/api/PendingResult;"
                   ,uVar4,piVar5,piVar6,uVar7,1,*(int *)(param_1 + 0x50) == 2);
      local_74 = *(int *)(param_1 + 8);
      if (local_74 == 0) {
        std::__throw_bad_weak_ptr();
      }
      else {
        piVar5 = (int *)(local_74 + 4);
        piVar6 = &local_70;
        iVar2 = *(int *)(local_74 + 4);
        do {
          local_70 = iVar2;
          iVar8 = local_70;
          if (local_70 == 0) {
            std::__throw_bad_weak_ptr();
            piVar5 = extraout_r2;
            iVar8 = extraout_r3;
          }
          DataMemoryBarrier(0x1f);
          ExclusiveAccess(piVar5);
          iVar2 = *piVar5;
          bVar1 = false;
          if (iVar2 == local_70) {
            bVar1 = (bool)hasExclusiveAccess(piVar5);
            if (bVar1) {
              *piVar5 = iVar8 + 1;
            }
            DataMemoryBarrier(0x1f);
          }
        } while (!bVar1);
        local_38 = *(int *)(param_1 + 4);
        piVar5 = &local_38;
        std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
                  ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_34,
                   (__shared_count *)&local_74);
        local_6c = local_34[0];
        local_70 = local_38;
        local_38 = 0;
        local_34[0] = 0;
        std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
                  ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_34);
        FUN_0054ac24(piVar5,0,0x5463d1,piVar6);
      }
      uVar4 = FUN_00548bac(piVar5);
      FUN_00548d90(auStack_48,"setResultCallback",
                   "(Lcom/google/android/gms/common/api/ResultCallback;)V",uVar4);
      FUN_00548ab0(piVar5);
      std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
                ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(piVar6 + 1));
      std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
                ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_74);
      FUN_00548ab0(auStack_48);
      FUN_00548ab0(auStack_58);
    }
  }
  FUN_00548ab0(auStack_68);
  return;
}

// ---- FUN_0054b088  @ 0x54b088
void FUN_0054b088(int *param_1,undefined4 param_2)

{
  undefined1 *puVar1;
  int iVar2;
  undefined1 auStack_30 [16];
  undefined1 auStack_20 [16];
  
  iVar2 = *param_1;
  std::mutex::lock((mutex *)&((pthread_mutex_t *)(iVar2 + 0x58))->__data);
  pthread_mutex_unlock((pthread_mutex_t *)(iVar2 + 0x58));
  iVar2 = *(int *)(*param_1 + 0x5c) + -1;
  *(int *)(*param_1 + 0x5c) = iVar2;
  if (iVar2 == 0) {
    iVar2 = *param_1;
    FUN_00549380(auStack_20,param_2);
    FUN_0054aabe(iVar2,auStack_20);
    puVar1 = auStack_20;
  }
  else {
    puVar1 = auStack_30;
    FUN_0054932c(puVar1,param_2,&DAT_00961924);
    FUN_0054968c(auStack_20,puVar1,&DAT_009635a4,"getScores",
                 "()Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;");
    FUN_00548de4(auStack_20,"close");
    FUN_00548ab0(auStack_20);
  }
  FUN_00548ab0(puVar1);
  return;
}

// ---- FUN_0054b130  @ 0x54b130
void FUN_0054b130(undefined4 *param_1)

{
  undefined4 uVar1;
  undefined1 auStack_20 [20];
  
  uVar1 = *param_1;
  FUN_00548b30(auStack_20);
  FUN_0054b088(uVar1,auStack_20);
  FUN_00548ab0(auStack_20);
  return;
}

// ---- FUN_0054b158  @ 0x54b158
void FUN_0054b158(int param_1,undefined4 param_2)

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

// ---- FUN_0054b1d8  @ 0x54b1d8
FetchAllScoreSummariesResponse *
FUN_0054b1d8(FetchAllScoreSummariesResponse *param_1,int param_2,undefined4 param_3)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  int iVar3;
  uint uVar4;
  ScoreSummary *pSVar5;
  undefined4 *puVar6;
  undefined4 uVar7;
  uint *puVar8;
  undefined8 *puVar9;
  undefined8 *puVar10;
  undefined4 uVar11;
  bool bVar12;
  undefined8 uVar13;
  longlong lVar14;
  uint local_104;
  undefined1 auStack_d0 [3];
  undefined1 local_cd;
  undefined4 *local_cc;
  undefined4 *local_c8;
  undefined4 *local_c4;
  undefined4 local_c0;
  undefined4 local_bc;
  uint local_b8;
  int iStack_b4;
  undefined8 local_b0;
  undefined4 local_a8;
  undefined4 uStack_a4;
  undefined8 local_a0;
  undefined4 local_98;
  undefined4 uStack_94;
  undefined8 local_90;
  undefined4 *local_84;
  undefined4 *local_80;
  undefined4 *local_7c;
  undefined4 *local_78;
  undefined4 *local_74 [2];
  undefined4 *local_6c;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_68 [4];
  ScoreSummary *local_64;
  ScoreSummary *local_60;
  ScoreSummary *local_5c;
  undefined1 auStack_58 [16];
  undefined1 auStack_48 [16];
  undefined4 local_38;
  undefined4 local_34;
  undefined4 local_30;
  undefined4 local_2c;
  
  uVar2 = FUN_0054b158(param_2,param_3);
  FUN_0054932c(auStack_48,param_3,&DAT_00961924);
  FUN_0054968c((FetchAllScoreSummariesResponse *)&local_38,auStack_48,&DAT_009635a4,"getScores",
               "()Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;");
  FUN_00548de4((FetchAllScoreSummariesResponse *)&local_38,"close");
  FUN_00548ab0((FetchAllScoreSummariesResponse *)&local_38);
  FUN_00548ab0(auStack_48);
  iVar3 = gpg::IsError(uVar2);
  local_38 = uVar2;
  if (iVar3 == 0) {
    FUN_0054932c((FetchAllScoreSummariesResponse *)&local_38,param_3,&DAT_00961924);
    FUN_0054968c(auStack_58,(FetchAllScoreSummariesResponse *)&local_38,&DAT_00960ea4,
                 "getLeaderboard","()Lcom/google/android/gms/games/leaderboard/Leaderboard;");
    FUN_00548ab0((FetchAllScoreSummariesResponse *)&local_38);
    iVar3 = FUN_00548c48(auStack_58);
    if (iVar3 == 0) {
      FUN_0054968c(auStack_48,auStack_58,&DAT_00961824,"getVariants","()Ljava/util/ArrayList;");
      uVar4 = FUN_00548d1c(auStack_48,&DAT_00806800);
      local_64 = (ScoreSummary *)0x0;
      local_60 = (ScoreSummary *)0x0;
      local_5c = (ScoreSummary *)0x0;
      if (0x1fffffff < uVar4) {
                    /* WARNING: Subroutine does not return */
        FUN_007c49e8("vector::reserve");
      }
      if (uVar4 != 0) {
        pSVar5 = operator_new(uVar4 * 8);
        std::__uninitialized_copy<false>::__uninit_copy<gpg::ScoreSummary*,gpg::ScoreSummary*>
                  ((ScoreSummary *)0x0,(ScoreSummary *)0x0,pSVar5);
        std::_Destroy_aux<false>::__destroy<gpg::ScoreSummary*>(local_64,local_60);
        FUN_0054a640(local_64);
        local_5c = pSVar5 + uVar4 * 8;
        local_60 = pSVar5;
      }
      local_64 = local_60;
      for (local_104 = 0; local_104 != uVar4; local_104 = local_104 + 1) {
        FUN_0054968c((FetchAllScoreSummariesResponse *)&local_38,auStack_48,&DAT_00961f24,
                     &DAT_0080598d,"(I)Ljava/lang/Object;",local_104);
        FUN_00548d1c((FetchAllScoreSummariesResponse *)&local_38,"getTimeSpan");
        local_c0 = FUN_0054ed84();
        FUN_00548d1c((FetchAllScoreSummariesResponse *)&local_38,"getCollection");
        local_bc = FUN_0054eeac();
        local_b8 = 0;
        iStack_b4 = 0;
        uVar13 = FUN_00548d84((FetchAllScoreSummariesResponse *)&local_38,"getNumScores");
        iVar3 = (int)((ulonglong)uVar13 >> 0x20);
        bVar12 = local_b8 < (uint)uVar13;
        puVar8 = (uint *)&local_b0;
        if ((int)((iStack_b4 - iVar3) - (uint)bVar12) < 0 ==
            (SBORROW4(iStack_b4,iVar3) != SBORROW4(iStack_b4 - iVar3,(uint)bVar12))) {
          puVar8 = &local_b8;
        }
        local_a8 = 0;
        uStack_a4 = 0;
        local_b0 = uVar13;
        uVar13 = FUN_00548d84((FetchAllScoreSummariesResponse *)&local_38,"getPlayerRank");
        if ((int)((ulonglong)uVar13 >> 0x20) < (int)(uint)((int)uVar13 == 0)) {
          puVar10 = (undefined8 *)&local_a8;
        }
        else {
          puVar10 = &local_a0;
        }
        local_98 = 0;
        uStack_94 = 0;
        local_a0 = uVar13;
        uVar13 = FUN_00548d84((FetchAllScoreSummariesResponse *)&local_38,"getRawPlayerScore");
        puVar9 = &local_90;
        if ((int)((ulonglong)uVar13 >> 0x20) < (int)(uint)((int)uVar13 == 0)) {
          puVar9 = (undefined8 *)&local_98;
        }
        local_90 = uVar13;
        FUN_005490cc(&local_cc,(FetchAllScoreSummariesResponse *)&local_38,&DAT_00801f93,
                     "getPlayerScoreTag");
        FUN_005490cc(&local_c8,(FetchAllScoreSummariesResponse *)&local_38,&DAT_00801f93,
                     "getDisplayPlayerScore");
        FUN_005490cc(&local_c4,(FetchAllScoreSummariesResponse *)&local_38,&DAT_00801f93,
                     "getDisplayPlayerRank");
        local_84 = (undefined4 *)0x0;
        local_80 = (undefined4 *)0x0;
        local_84 = operator_new(0x20);
        uVar2 = *(undefined4 *)puVar9;
        uVar7 = *(undefined4 *)((int)puVar9 + 4);
        local_6c = local_cc;
        uVar11 = *(undefined4 *)((int)puVar10 + 4);
        local_74[0] = local_c8;
        local_7c = local_c4;
        if (local_84 != (undefined4 *)0x0) {
          *local_84 = *(undefined4 *)puVar10;
          local_84[1] = uVar11;
          local_84[4] = local_cc;
          local_84[2] = uVar2;
          local_84[3] = uVar7;
          local_84[5] = local_c8;
          local_84[6] = local_c4;
          local_7c = (undefined4 *)&DAT_00972528;
          local_74[0] = (undefined4 *)&DAT_00972528;
          local_6c = (undefined4 *)&DAT_00972528;
        }
        local_cc = (undefined4 *)&DAT_00972528;
        local_c8 = (undefined4 *)&DAT_00972528;
        local_c4 = (undefined4 *)&DAT_00972528;
        FUN_007c5914(&local_7c);
        FUN_007c5914((Score *)local_74);
        FUN_007c5914((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_6c);
        puVar1 = local_84;
        local_6c = (undefined4 *)0x0;
        puVar6 = operator_new(0x14);
        if (puVar6 != (undefined4 *)0x0) {
          puVar6[1] = 1;
          puVar6[2] = 1;
          puVar6[3] = puVar1;
          *puVar6 = &PTR_LAB_0054a5cc_1_00926650;
        }
        local_6c = local_80;
        local_80 = puVar6;
        std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
                  ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_6c);
        local_7c = local_84;
        local_78 = local_80;
        local_80 = (undefined4 *)0x0;
        local_84 = (undefined4 *)0x0;
        gpg::Score::Score((Score *)local_74,&local_7c);
        lVar14 = FUN_00548d84(&local_38,"getPlayerRank");
        local_cd = lVar14 == -1;
        FUN_0054a970((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_6c,0,auStack_d0,
                     param_2 + 0x54,&local_c0,&local_bc,puVar8,(Score *)local_74,&local_cd);
        if (local_60 == local_5c) {
          std::vector<gpg::ScoreSummary,std::allocator<gpg::ScoreSummary>>::
          _M_emplace_back_aux<std::shared_ptr<gpg::ScoreSummaryImpl>>
                    ((vector<gpg::ScoreSummary,std::allocator<gpg::ScoreSummary>> *)&local_64,
                     (__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_6c);
        }
        else {
          __gnu_cxx::new_allocator<gpg::ScoreSummary>::
          construct<gpg::ScoreSummary,std::shared_ptr<gpg::ScoreSummaryImpl>>
                    ((new_allocator<gpg::ScoreSummary> *)&local_64,local_60,
                     (__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_6c);
          local_60 = local_60 + 8;
        }
        std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_68);
        gpg::Score::~Score((Score *)local_74);
        std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
                  ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_78);
        std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
                  ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_80);
        FUN_007c5914(&local_c4);
        FUN_007c5914(&local_c8);
        FUN_007c5914(&local_cc);
        FUN_00548ab0(&local_38);
      }
      std::vector<gpg::ScoreSummary,std::allocator<gpg::ScoreSummary>>::vector
                ((vector<gpg::ScoreSummary,std::allocator<gpg::ScoreSummary>> *)&local_34,
                 (new_allocator<gpg::ScoreSummary> *)&local_64);
      gpg::LeaderboardManager::FetchAllScoreSummariesResponse::FetchAllScoreSummariesResponse
                (param_1,(FetchAllScoreSummariesResponse *)&local_38);
      std::vector<gpg::ScoreSummary,std::allocator<gpg::ScoreSummary>>::~vector
                ((vector<gpg::ScoreSummary,std::allocator<gpg::ScoreSummary>> *)&local_34);
      std::vector<gpg::ScoreSummary,std::allocator<gpg::ScoreSummary>>::~vector
                ((vector<gpg::ScoreSummary,std::allocator<gpg::ScoreSummary>> *)&local_64);
      FUN_00548ab0(auStack_48);
    }
    else {
      FUN_005166ae(4,"Couldn\'t fetch leaderboard variant: no leaderboard metadata.");
      local_38 = 0xfffffffe;
      local_34 = 0;
      local_30 = 0;
      local_2c = 0;
      gpg::LeaderboardManager::FetchAllScoreSummariesResponse::FetchAllScoreSummariesResponse
                (param_1,(FetchAllScoreSummariesResponse *)&local_38);
      std::vector<gpg::ScoreSummary,std::allocator<gpg::ScoreSummary>>::~vector
                ((vector<gpg::ScoreSummary,std::allocator<gpg::ScoreSummary>> *)&local_34);
    }
    FUN_00548ab0(auStack_58);
  }
  else {
    local_34 = 0;
    local_30 = 0;
    local_2c = 0;
    gpg::LeaderboardManager::FetchAllScoreSummariesResponse::FetchAllScoreSummariesResponse
              (param_1,(FetchAllScoreSummariesResponse *)&local_38);
    std::vector<gpg::ScoreSummary,std::allocator<gpg::ScoreSummary>>::~vector
              ((vector<gpg::ScoreSummary,std::allocator<gpg::ScoreSummary>> *)&local_34);
  }
  return param_1;
}

// ---- FUN_0054b6ec  @ 0x54b6ec
void FUN_0054b6ec(int *param_1)

{
  if (param_1 != (int *)0x0) {
    (**(code **)(*param_1 + 4))();
  }
  return;
}

// ---- FUN_0054b6f8  @ 0x54b6f8
void FUN_0054b6f8(int *param_1)

{
  if (param_1 != (int *)0x0) {
    (**(code **)(*param_1 + 4))();
  }
  return;
}

// ---- FUN_0054b744  @ 0x54b744
undefined4 * FUN_0054b744(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0054b744_1_009266f0;
  FUN_00512e7a(param_1 + 0xc);
  FUN_00533468(param_1);
  return param_1;
}

// ---- FUN_0054b764  @ 0x54b764
void * FUN_0054b764(void *param_1)

{
  FUN_0054b744();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0054b778  @ 0x54b778
undefined4 * FUN_0054b778(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0054b778_1_00926748;
  FUN_0054b744();
  return param_1;
}

// ---- FUN_0054b790  @ 0x54b790
void * FUN_0054b790(void *param_1)

{
  FUN_0054b778();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0054b7a4  @ 0x54b7a4
undefined4 * FUN_0054b7a4(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0054b7a4_1_009267a8;
  FUN_007c5914(param_1 + 0x15);
  FUN_0054b778(param_1);
  return param_1;
}

// ---- FUN_0054b7c4  @ 0x54b7c4
void * FUN_0054b7c4(void *param_1)

{
  FUN_0054b7a4();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0054b81c  @ 0x54b81c
int FUN_0054b81c(int param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  *(undefined4 *)(param_1 + 8) = 0;
  if (*(int *)(param_2 + 8) != 0) {
    *(undefined4 *)(param_1 + 0xc) = *(undefined4 *)(param_2 + 0xc);
    *(undefined4 *)(param_1 + 8) = *(undefined4 *)(param_2 + 8);
    (**(code **)(param_2 + 8))(param_1,param_2,2,*(code **)(param_2 + 8),param_4);
  }
  std::function<void(gpg::LeaderboardManager::FetchResponse_const&)>::function
            ((function<void(gpg::LeaderboardManager::FetchResponse_const&)> *)(param_1 + 0x10),
             (function *)(param_2 + 0x10));
  return param_1;
}

// ---- FUN_0054b858  @ 0x54b858
undefined4 *
FUN_0054b858(undefined4 *param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4,
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
  FUN_0054b81c(auStack_68,param_3);
  local_78 = uVar1;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_74,(__shared_count *)a_Stack_7c);
  FUN_0054b81c(auStack_48,auStack_68);
  local_70 = local_78;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_6c,(__shared_count *)a_Stack_74);
  FUN_00533528(param_1,&local_70);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_6c);
  *param_1 = &PTR_FUN_0054b744_1_009266f0;
  FUN_0054b81c(param_1 + 0xc,auStack_48);
  FUN_00512e7a(auStack_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_74);
  *param_1 = &PTR_FUN_0054b778_1_00926748;
  FUN_00512e7a(auStack_68);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_7c);
  param_1[0x14] = param_4;
  *param_1 = &PTR_FUN_0054b7a4_1_009267a8;
  FUN_007c64e8(param_1 + 0x15,param_5);
  return param_1;
}

// ---- FUN_0054b948  @ 0x54b948
void FUN_0054b948(int *param_1,undefined4 param_2)

{
  int iVar1;
  undefined4 local_24;
  Leaderboard aLStack_20 [12];
  
  iVar1 = FUN_00548c48(param_2);
  if (iVar1 == 0) {
    (**(code **)(*param_1 + 0x50))(&local_24,param_1,param_2);
    FUN_005138f4(param_1 + 0xc,&local_24);
  }
  else {
    local_24 = 0xfffffffe;
    gpg::Leaderboard::Leaderboard(aLStack_20);
    FUN_005138f4(param_1 + 0xc,&local_24);
  }
  gpg::Leaderboard::~Leaderboard(aLStack_20);
  return;
}

// ---- FUN_0054b9d0  @ 0x54b9d0
undefined4
FUN_0054b9d0(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 *param_4)

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
  local_3c = 0x54bea5;
  local_40 = (code *)0x54b7d7;
  FUN_00533700(a_Stack_38,(_Function_base *)local_48);
  pvVar2 = operator_new(0x14);
  FUN_0053372c(pvVar2,a_Stack_38);
  local_64 = pvVar2;
  FUN_005453a8(auStack_58,param_2,param_3,&local_64);
  if (local_64 != (void *)0x0) {
    FUN_0054b6ec();
  }
  std::_Function_base::~_Function_base(a_Stack_38);
  std::_Function_base::~_Function_base((_Function_base *)local_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_5c);
  FUN_00548b30(param_1,auStack_58);
  FUN_00548ab0(auStack_58);
  return param_1;
}

// ---- FUN_0054bab0  @ 0x54bab0
undefined4 FUN_0054bab0(undefined4 param_1,int param_2)

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
  if (local_34 == 0) goto LAB_0054bacc;
  piVar2 = (int *)(local_34 + 4);
  unaff_r4 = &local_28;
  local_28 = *(int *)(local_34 + 4);
  while( true ) {
    iVar3 = local_28;
    if (local_28 == 0) {
LAB_0054bacc:
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
  FUN_0054b9d0(unaff_r4,0,0x5463d1,&local_30,iVar3);
  FUN_00548b30(param_1,unaff_r4);
  FUN_00548ab0(unaff_r4);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_2c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_34);
  return param_1;
}

// ---- FUN_0054bb68  @ 0x54bb68
void FUN_0054bb68(int param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined1 auStack_58 [16];
  undefined1 auStack_48 [16];
  undefined1 auStack_38 [16];
  undefined1 auStack_28 [16];
  
  FUN_00547b10(auStack_58,&DAT_00961324,&DAT_00963ba4,"Leaderboards",
               "Lcom/google/android/gms/games/leaderboard/Leaderboards;");
  uVar1 = FUN_00548bac(*(int *)(param_1 + 0x28) + 0xf4);
  FUN_0054942c(auStack_48,param_1 + 0x54,0);
  uVar2 = FUN_00548bac(auStack_48);
  FUN_0054968c(auStack_38,auStack_58,&DAT_00963024,"loadLeaderboardMetadata",
               "(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Z)Lcom/google/android/gms/common/api/PendingResult;"
               ,uVar1,uVar2,*(int *)(param_1 + 0x50) == 2);
  FUN_0054bab0(auStack_28,param_1);
  uVar1 = FUN_00548bac(auStack_28);
  FUN_00548d90(auStack_38,"setResultCallback",
               "(Lcom/google/android/gms/common/api/ResultCallback;)V",uVar1);
  FUN_00548ab0(auStack_28);
  FUN_00548ab0(auStack_38);
  FUN_00548ab0(auStack_48);
  FUN_00548ab0(auStack_58);
  return;
}

// ---- FUN_0054bc5c  @ 0x54bc5c
void FUN_0054bc5c(int param_1,undefined4 param_2)

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

// ---- FUN_0054bcdc  @ 0x54bcdc
undefined4 * FUN_0054bcdc(undefined4 *param_1,int param_2,undefined4 param_3)

{
  undefined4 uVar1;
  int iVar2;
  int iVar3;
  undefined4 *puVar4;
  int iVar5;
  void *local_58;
  undefined4 local_54;
  Leaderboard aLStack_50 [8];
  undefined1 auStack_48 [16];
  undefined4 local_38;
  Leaderboard aLStack_34 [16];
  
  uVar1 = FUN_0054bc5c(param_2,param_3);
  puVar4 = &local_38;
  FUN_0054932c(puVar4,param_3,&DAT_00960fa4);
  FUN_0054968c(auStack_48,puVar4,&DAT_00963ea4,"getLeaderboards",
               "()Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;");
  FUN_00548ab0(puVar4);
  iVar2 = gpg::IsError(uVar1);
  if (iVar2 == 0) {
    iVar2 = FUN_00548d1c(auStack_48,"getCount");
    for (iVar5 = 0; iVar5 < iVar2; iVar5 = iVar5 + 1) {
      FUN_0054968c(puVar4,auStack_48,&DAT_00960ea4,&DAT_0080598d,"(I)Ljava/lang/Object;",iVar5);
      FUN_00549104(&local_58,puVar4,"getLeaderboardId");
      if ((*(size_t *)((int)local_58 + -0xc) == *(size_t *)((int)*(void **)(param_2 + 0x54) + -0xc))
         && (iVar3 = memcmp(local_58,*(void **)(param_2 + 0x54),*(size_t *)((int)local_58 + -0xc)),
            iVar3 == 0)) {
        local_54 = uVar1;
        FUN_0054f0d0(aLStack_50,puVar4,&local_58);
        FUN_00548de4(auStack_48,"close");
        *param_1 = local_54;
        gpg::Leaderboard::Leaderboard((Leaderboard *)(param_1 + 1),aLStack_50);
        gpg::Leaderboard::~Leaderboard(aLStack_50);
        FUN_007c5914(&local_58);
        FUN_00548ab0(puVar4);
        goto LAB_0054be64;
      }
      FUN_007c5914(&local_58);
      FUN_00548ab0(puVar4);
    }
    FUN_00548de4(auStack_48,"close");
    local_38 = 0xfffffffe;
    gpg::Leaderboard::Leaderboard(aLStack_34);
    *param_1 = local_38;
    gpg::Leaderboard::Leaderboard((Leaderboard *)(param_1 + 1),aLStack_34);
  }
  else {
    FUN_00548de4(auStack_48,"close");
    puVar4 = &local_54;
    local_54 = uVar1;
    gpg::Leaderboard::Leaderboard(aLStack_50);
    *param_1 = local_54;
    gpg::Leaderboard::Leaderboard((Leaderboard *)(param_1 + 1),aLStack_50);
  }
  gpg::Leaderboard::~Leaderboard((Leaderboard *)(puVar4 + 1));
LAB_0054be64:
  FUN_00548ab0(auStack_48);
  return param_1;
}

// ---- FUN_0054bea4  @ 0x54bea4
void FUN_0054bea4(undefined4 *param_1)

{
  undefined4 uVar1;
  undefined1 auStack_30 [16];
  undefined1 auStack_20 [16];
  
  param_1 = (undefined4 *)*param_1;
  FUN_00548b30(auStack_30);
  uVar1 = *param_1;
  FUN_00548b30(auStack_20,auStack_30);
  FUN_0054b948(uVar1,auStack_20);
  FUN_00548ab0(auStack_20);
  FUN_00548ab0(auStack_30);
  return;
}

// ---- FUN_0054bf20  @ 0x54bf20
undefined4 * FUN_0054bf20(undefined4 *param_1)

{
  *param_1 = &DAT_00926808;
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0054bf98  @ 0x54bf98
void FUN_0054bf98(void *param_1)

{
  if (param_1 != (void *)0x0) {
    operator_delete(param_1);
    return;
  }
  return;
}

// ---- FUN_0054bfa0  @ 0x54bfa0
void FUN_0054bfa0(int *param_1)

{
  if (param_1 != (int *)0x0) {
    (**(code **)(*param_1 + 4))();
  }
  return;
}

// ---- FUN_0054bfac  @ 0x54bfac
void FUN_0054bfac(int *param_1)

{
  if (param_1 != (int *)0x0) {
    (**(code **)(*param_1 + 4))();
  }
  return;
}

// ---- FUN_0054bfb8  @ 0x54bfb8
void FUN_0054bfb8(int *param_1)

{
  if (param_1 != (int *)0x0) {
    (**(code **)(*param_1 + 4))();
  }
  return;
}

// ---- FUN_0054c044  @ 0x54c044
undefined4 * FUN_0054c044(undefined4 *param_1,int param_2,int param_3)

{
  undefined4 uVar1;
  int iVar2;
  
  *param_1 = &DAT_009268d0;
  if (*(int *)(param_2 + 0x10) == 0) {
    FUN_00548b18(param_1 + 1);
  }
  else {
    FUN_00549380(param_1 + 1,*(int *)(param_2 + 0x10) + 4);
  }
  if (*(int *)(param_2 + 0x10) == 0) {
    uVar1 = 0xffffffff;
  }
  else {
    uVar1 = *(undefined4 *)(*(int *)(param_2 + 0x10) + 0x14);
  }
  param_1[5] = uVar1;
  iVar2 = 0;
  if (*(int *)(param_2 + 0x10) != 0) {
    iVar2 = *(int *)(*(int *)(param_2 + 0x10) + 0x18);
  }
  param_1[6] = iVar2 + param_3;
  return param_1;
}

// ---- FUN_0054c098  @ 0x54c098
undefined4 * FUN_0054c098(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0054c098_1_00926818;
  FUN_00512edc(param_1 + 0xc);
  FUN_00533468(param_1);
  return param_1;
}

// ---- FUN_0054c0b8  @ 0x54c0b8
void * FUN_0054c0b8(void *param_1)

{
  FUN_0054c098();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0054c0cc  @ 0x54c0cc
undefined4 * FUN_0054c0cc(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0054c0cc_1_00926870;
  FUN_0054c098();
  return param_1;
}

// ---- FUN_0054c0e4  @ 0x54c0e4
void * FUN_0054c0e4(void *param_1)

{
  FUN_0054c0cc();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0054c0f8  @ 0x54c0f8
undefined4 * FUN_0054c0f8(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0054c0f8_1_00926920;
  gpg::ScorePage::ScorePageToken::~ScorePageToken((ScorePageToken *)(param_1 + 0x17));
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(param_1 + 0x15));
  FUN_0054c0cc(param_1);
  return param_1;
}

// ---- FUN_0054c120  @ 0x54c120
void * FUN_0054c120(void *param_1)

{
  FUN_0054c0f8();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0054c178  @ 0x54c178
int FUN_0054c178(int param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  *(undefined4 *)(param_1 + 8) = 0;
  if (*(int *)(param_2 + 8) != 0) {
    *(undefined4 *)(param_1 + 0xc) = *(undefined4 *)(param_2 + 0xc);
    *(undefined4 *)(param_1 + 8) = *(undefined4 *)(param_2 + 8);
    (**(code **)(param_2 + 8))(param_1,param_2,2,*(code **)(param_2 + 8),param_4);
  }
  std::function<void(gpg::LeaderboardManager::FetchScorePageResponse_const&)>::function
            ((function<void(gpg::LeaderboardManager::FetchScorePageResponse_const&)> *)
             (param_1 + 0x10),(function *)(param_2 + 0x10));
  return param_1;
}

// ---- FUN_0054c1b4  @ 0x54c1b4
undefined4 *
FUN_0054c1b4(undefined4 *param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4,
            ScorePageToken *param_5,undefined4 param_6)

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
  FUN_0054c178(auStack_68,param_3);
  local_78 = uVar1;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_74,(__shared_count *)a_Stack_7c);
  FUN_0054c178(auStack_48,auStack_68);
  local_70 = local_78;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_6c,(__shared_count *)a_Stack_74);
  FUN_00533528(param_1,&local_70);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_6c);
  *param_1 = &PTR_FUN_0054c098_1_00926818;
  FUN_0054c178(param_1 + 0xc,auStack_48);
  FUN_00512edc(auStack_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_74);
  *param_1 = &PTR_FUN_0054c0cc_1_00926870;
  FUN_00512edc(auStack_68);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_7c);
  *param_1 = &PTR_FUN_0054c0f8_1_00926920;
  param_1[0x14] = *param_2;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(param_1 + 0x15),
             (__shared_count *)(param_2 + 1));
  param_1[0x16] = param_4;
  gpg::ScorePage::ScorePageToken::ScorePageToken((ScorePageToken *)(param_1 + 0x17),param_5);
  param_1[0x19] = param_6;
  return param_1;
}

// ---- FUN_0054c2c8  @ 0x54c2c8
int * FUN_0054c2c8(int *param_1)

{
  if ((int *)*param_1 != (int *)0x0) {
    (**(code **)(*(int *)*param_1 + 4))();
  }
  *param_1 = 0;
  return param_1;
}

// ---- FUN_0054c2f4  @ 0x54c2f4
void FUN_0054c2f4(void *param_1)

{
  std::vector<gpg::ScorePage::Entry,std::allocator<gpg::ScorePage::Entry>>::~vector
            ((vector<gpg::ScorePage::Entry,std::allocator<gpg::ScorePage::Entry>> *)
             ((int)param_1 + 0x20));
  gpg::ScorePage::ScorePageToken::~ScorePageToken((ScorePageToken *)((int)param_1 + 0x18));
  gpg::ScorePage::ScorePageToken::~ScorePageToken((ScorePageToken *)((int)param_1 + 0x10));
  FUN_007c5914(param_1);
  operator_delete(param_1);
  return;
}

// ---- FUN_0054c324  @ 0x54c324
undefined4 *
FUN_0054c324(undefined4 *param_1,undefined1 *param_2,undefined4 param_3,undefined4 *param_4,
            Score *param_5,undefined4 *param_6)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined1 *local_2c;
  undefined4 local_28;
  undefined4 *puStack_24;
  
  *param_1 = 0;
  param_1[1] = 0;
  local_2c = param_2;
  local_28 = param_3;
  puStack_24 = param_4;
  puVar1 = operator_new(0x18);
  *param_1 = puVar1;
  local_2c = (undefined1 *)*param_4;
  *param_4 = &DAT_00972528;
  gpg::Score::Score((Score *)&local_28,param_5);
  uVar2 = *param_6;
  uVar3 = param_6[1];
  if (puVar1 != (undefined4 *)0x0) {
    *puVar1 = local_2c;
    local_2c = &DAT_00972528;
    gpg::Score::Score((Score *)(puVar1 + 1),(Score *)&local_28);
    puVar1[4] = uVar2;
    puVar1[5] = uVar3;
  }
  gpg::Score::~Score((Score *)&local_28);
  FUN_007c5914(&local_2c);
  uVar2 = *param_1;
  local_28 = 0;
  puVar1 = operator_new(0x14);
  if (puVar1 != (undefined4 *)0x0) {
    puVar1[1] = 1;
    puVar1[2] = 1;
    puVar1[3] = uVar2;
    *puVar1 = &PTR_LAB_0054bf0c_1_009268e0;
  }
  local_28 = param_1[1];
  param_1[1] = puVar1;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_28);
  return param_1;
}

// ---- FUN_0054c424  @ 0x54c424
undefined4 *
FUN_0054c424(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 *param_4,
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
  local_1c = *param_4;
  *param_4 = 0;
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

// ---- FUN_0054c508  @ 0x54c508
ScorePageToken * FUN_0054c508(ScorePageToken *param_1,int param_2,undefined4 param_3)

{
  undefined4 local_44;
  int local_40;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_3c [4];
  undefined4 local_38;
  undefined4 local_34;
  undefined4 local_30;
  undefined4 local_2c;
  ScorePageToken aSStack_28 [12];
  
  local_40 = *(int *)(param_2 + 0x5c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_3c,(__shared_count *)(param_2 + 0x60));
  local_44 = param_3;
  FUN_0054c424(&local_38,0,&local_30,&local_44,local_40,local_40 + 4,local_40 + 8,local_40 + 0xc);
  local_30 = local_38;
  local_2c = local_34;
  local_34 = 0;
  local_38 = 0;
  gpg::ScorePage::ScorePageToken::ScorePageToken(aSStack_28,&local_30);
  gpg::ScorePage::ScorePageToken::ScorePageToken(param_1,aSStack_28);
  gpg::ScorePage::ScorePageToken::~ScorePageToken(aSStack_28);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_2c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_34);
  FUN_0054c2c8(&local_44);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_3c);
  return param_1;
}

// ---- FUN_0054c69c  @ 0x54c69c
void FUN_0054c69c(undefined4 param_1,undefined4 *param_2,undefined4 param_3,undefined4 *param_4,
                 undefined4 *param_5,undefined4 *param_6,ScorePageToken *param_7,
                 ScorePageToken *param_8,int *param_9)

{
  Entry *pEVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  uint uVar5;
  Entry *pEVar6;
  Entry *pEVar7;
  undefined1 *local_48;
  ScorePageToken aSStack_44 [8];
  ScorePageToken aSStack_3c [8];
  Entry *local_34;
  Entry *local_30;
  Entry *local_2c;
  
  FUN_007c64e8(&local_48,param_3);
  uVar4 = *param_4;
  uVar2 = *param_5;
  uVar3 = *param_6;
  gpg::ScorePage::ScorePageToken::ScorePageToken(aSStack_44,param_7);
  gpg::ScorePage::ScorePageToken::ScorePageToken(aSStack_3c,param_8);
  local_34 = (Entry *)0x0;
  uVar5 = param_9[1] - *param_9 >> 3;
  local_30 = (Entry *)0x0;
  local_2c = (Entry *)0x0;
  pEVar1 = (Entry *)0x0;
  if (uVar5 != 0) {
    if (0x1fffffff < uVar5) {
      FUN_007c4844();
    }
    pEVar1 = operator_new(uVar5 * 8);
  }
  local_2c = pEVar1 + uVar5 * 8;
  pEVar7 = (Entry *)param_9[1];
  local_34 = pEVar1;
  local_30 = pEVar1;
  for (pEVar6 = (Entry *)*param_9; pEVar6 != pEVar7; pEVar6 = pEVar6 + 8) {
    if (pEVar1 != (Entry *)0x0) {
      gpg::ScorePage::Entry::Entry(pEVar1,pEVar6);
    }
    pEVar1 = pEVar1 + 8;
  }
  local_30 = pEVar1;
  if (param_2 != (undefined4 *)0x0) {
    *param_2 = local_48;
    local_48 = &DAT_00972528;
    param_2[1] = uVar4;
    param_2[2] = uVar2;
    param_2[3] = uVar3;
    gpg::ScorePage::ScorePageToken::ScorePageToken((ScorePageToken *)(param_2 + 4),aSStack_44);
    gpg::ScorePage::ScorePageToken::ScorePageToken((ScorePageToken *)(param_2 + 6),aSStack_3c);
    pEVar7 = local_2c;
    pEVar6 = local_30;
    pEVar1 = local_34;
    local_34 = (Entry *)0x0;
    param_2[8] = pEVar1;
    local_30 = (Entry *)0x0;
    param_2[9] = pEVar6;
    local_2c = (Entry *)0x0;
    param_2[10] = pEVar7;
  }
  std::vector<gpg::ScorePage::Entry,std::allocator<gpg::ScorePage::Entry>>::~vector
            ((vector<gpg::ScorePage::Entry,std::allocator<gpg::ScorePage::Entry>> *)&local_34);
  gpg::ScorePage::ScorePageToken::~ScorePageToken(aSStack_3c);
  gpg::ScorePage::ScorePageToken::~ScorePageToken(aSStack_44);
  FUN_007c5914(&local_48);
  return;
}

// ---- FUN_0054c7e4  @ 0x54c7e4
void FUN_0054c7e4(int *param_1,undefined4 param_2)

{
  int iVar1;
  undefined4 local_24;
  ScorePage aSStack_20 [12];
  
  iVar1 = FUN_00548c48(param_2);
  if (iVar1 == 0) {
    (**(code **)(*param_1 + 0x50))(&local_24,param_1,param_2);
    FUN_00513b68(param_1 + 0xc,&local_24);
  }
  else {
    local_24 = 0xfffffffe;
    gpg::ScorePage::ScorePage(aSStack_20);
    FUN_00513b68(param_1 + 0xc,&local_24);
  }
  gpg::ScorePage::~ScorePage(aSStack_20);
  return;
}

// ---- FUN_0054c86c  @ 0x54c86c
undefined4
FUN_0054c86c(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 *param_4)

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
  local_3c = &LAB_0054d4fa_1;
  local_40 = (code *)0x54c133;
  FUN_00533700(a_Stack_38,(_Function_base *)local_48);
  pvVar2 = operator_new(0x14);
  FUN_0053372c(pvVar2,a_Stack_38);
  local_64 = pvVar2;
  FUN_005453a8(auStack_58,param_2,param_3,&local_64);
  if (local_64 != (void *)0x0) {
    FUN_0054bfa0();
  }
  std::_Function_base::~_Function_base(a_Stack_38);
  std::_Function_base::~_Function_base((_Function_base *)local_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_5c);
  FUN_00548b30(param_1,auStack_58);
  FUN_00548ab0(auStack_58);
  return param_1;
}

// ---- FUN_0054c94c  @ 0x54c94c
undefined4 FUN_0054c94c(undefined4 param_1,int param_2)

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
  if (local_34 == 0) goto LAB_0054c968;
  piVar2 = (int *)(local_34 + 4);
  unaff_r4 = &local_28;
  local_28 = *(int *)(local_34 + 4);
  while( true ) {
    iVar3 = local_28;
    if (local_28 == 0) {
LAB_0054c968:
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
  FUN_0054c86c(unaff_r4,0,0x5463d1,&local_30,iVar3);
  FUN_00548b30(param_1,unaff_r4);
  FUN_00548ab0(unaff_r4);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_2c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_34);
  return param_1;
}

// ---- FUN_0054ca04  @ 0x54ca04
void FUN_0054ca04(int param_1)

{
  undefined4 uVar1;
  int iVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  int iVar6;
  int iVar7;
  char *pcVar8;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_8c [4];
  undefined1 auStack_88 [16];
  undefined1 auStack_78 [16];
  undefined1 auStack_68 [16];
  undefined1 auStack_58 [16];
  undefined1 auStack_48 [16];
  undefined1 auStack_38 [20];
  
  uVar1 = FUN_00549a1c();
  iVar6 = *(int *)(param_1 + 0x5c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_8c,(__shared_count *)(param_1 + 0x60));
  FUN_00548b18(auStack_88);
  iVar7 = *(int *)(iVar6 + 0x10);
  if (iVar7 != 0) {
    iVar2 = FUN_00548c48(iVar7 + 4);
    if (iVar2 == 0) {
      FUN_00547b10(auStack_78,&DAT_00961324,&DAT_00963ba4,"Leaderboards",
                   "Lcom/google/android/gms/games/leaderboard/Leaderboards;");
      uVar3 = FUN_00548bac(*(int *)(param_1 + 0x50) + 0xf4);
      uVar4 = FUN_00548bac(iVar7 + 4);
      FUN_0054968c(auStack_68,auStack_78,&DAT_00963024,"loadMoreScores",
                   "(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;II)Lcom/google/android/gms/common/api/PendingResult;"
                   ,uVar3,uVar4,*(undefined4 *)(param_1 + 100),*(undefined4 *)(iVar7 + 0x14));
      FUN_00548b60(auStack_88,auStack_68);
      FUN_00548ab0(auStack_68);
      FUN_00548ab0(auStack_78);
    }
  }
  iVar7 = FUN_00548c48(auStack_88);
  if (iVar7 != 0) {
    FUN_0054942c(auStack_38,iVar6,uVar1);
    FUN_00547b10(auStack_58,&DAT_00961324,&DAT_00963ba4,"Leaderboards",
                 "Lcom/google/android/gms/games/leaderboard/Leaderboards;");
    if (*(int *)(iVar6 + 4) == 2) {
      pcVar8 = "loadPlayerCenteredScores";
    }
    else {
      pcVar8 = "loadTopScores";
    }
    uVar1 = FUN_00548bac(*(int *)(param_1 + 0x50) + 0xf4);
    uVar3 = FUN_00548bac(auStack_38);
    uVar4 = FUN_0054eb3c(*(undefined4 *)(iVar6 + 8));
    uVar5 = FUN_0054ec64(*(undefined4 *)(iVar6 + 0xc));
    FUN_0054968c(auStack_48,auStack_58,&DAT_00963024,pcVar8,
                 "(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;IIIZ)Lcom/google/android/gms/common/api/PendingResult;"
                 ,uVar1,uVar3,uVar4,uVar5,*(undefined4 *)(param_1 + 100),
                 *(int *)(param_1 + 0x58) == 2);
    FUN_00548b60(auStack_88,auStack_48);
    FUN_00548ab0(auStack_48);
    FUN_00548ab0(auStack_58);
    FUN_00548ab0(auStack_38);
  }
  FUN_0054c94c(auStack_38,param_1);
  uVar1 = FUN_00548bac(auStack_38);
  FUN_00548d90(auStack_88,"setResultCallback",
               "(Lcom/google/android/gms/common/api/ResultCallback;)V",uVar1);
  FUN_00548ab0(auStack_38);
  FUN_00548ab0(auStack_88);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_8c);
  return;
}

// ---- FUN_0054cc14  @ 0x54cc14
void FUN_0054cc14(int param_1,undefined4 param_2)

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

// ---- FUN_0054cc94  @ 0x54cc94
undefined4 * FUN_0054cc94(undefined4 *param_1,int param_2,undefined4 param_3)

{
  bool bVar1;
  bool bVar2;
  bool bVar3;
  bool bVar4;
  int iVar5;
  undefined8 *puVar6;
  int iVar7;
  undefined8 *puVar8;
  uint uVar9;
  Entry *pEVar10;
  undefined4 uVar11;
  int iVar12;
  int iVar13;
  void *pvVar14;
  undefined4 *puVar15;
  int iVar16;
  uint uVar17;
  int iVar18;
  int iVar19;
  undefined8 uVar20;
  undefined8 uVar21;
  int local_100;
  undefined1 auStack_ec [4];
  undefined1 auStack_e8 [4];
  undefined8 *local_e4;
  undefined8 *local_e0;
  undefined8 *local_dc;
  int local_d8;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_d4 [4];
  undefined8 *local_d0;
  undefined4 *local_cc;
  Score aSStack_c8 [8];
  undefined4 *local_c0;
  undefined4 local_bc;
  Entry aEStack_b8 [8];
  int local_b0;
  int local_ac;
  ScorePageToken aSStack_a8 [8];
  int local_a0;
  int local_9c;
  ScorePageToken aSStack_98 [8];
  undefined8 *local_90;
  undefined8 *local_8c;
  undefined8 local_88;
  undefined8 *local_7c;
  undefined4 *local_78 [2];
  Entry *local_70;
  Entry *local_6c;
  Entry *local_68;
  undefined8 *local_64;
  undefined4 local_60 [2];
  undefined1 auStack_58 [16];
  undefined1 auStack_48 [16];
  undefined4 local_38;
  ScorePage aSStack_34 [16];
  
  iVar7 = FUN_00548c48(param_3);
  if (iVar7 != 0) {
    local_38 = 0xfffffffe;
    gpg::ScorePage::ScorePage(aSStack_34);
    *param_1 = local_38;
    gpg::ScorePage::ScorePage((ScorePage *)(param_1 + 1),aSStack_34);
    gpg::ScorePage::~ScorePage(aSStack_34);
    return param_1;
  }
  FUN_0054932c(&local_38,param_3,&DAT_00961924);
  FUN_0054968c(auStack_58,&local_38,&DAT_009635a4,"getScores",
               "()Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;");
  FUN_00548ab0(&local_38);
  puVar8 = (undefined8 *)FUN_0054cc14(param_2,param_3);
  iVar7 = gpg::IsError();
  if (iVar7 != 0) {
    FUN_00548de4(auStack_58,"close");
    local_88._0_4_ = puVar8;
    gpg::ScorePage::ScorePage((ScorePage *)((int)&local_88 + 4));
    *param_1 = (undefined8 *)local_88;
    gpg::ScorePage::ScorePage((ScorePage *)(param_1 + 1),(ScorePage *)((int)&local_88 + 4));
    gpg::ScorePage::~ScorePage((ScorePage *)((int)&local_88 + 4));
    goto LAB_0054d32c;
  }
  local_d8 = *(int *)(param_2 + 0x5c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_d4,(__shared_count *)(param_2 + 0x60));
  uVar9 = FUN_00548d1c(auStack_58,"getCount");
  if (*(int *)(local_d8 + 0x10) == 0) {
    iVar7 = 0;
LAB_0054cdb8:
    uVar17 = *(uint *)(param_2 + 100);
    local_70 = (Entry *)0x0;
    if (uVar17 < uVar9) {
      local_100 = uVar9 - uVar17;
    }
    else {
      local_100 = 0;
      uVar17 = uVar9;
    }
    local_6c = (Entry *)0x0;
    local_68 = (Entry *)0x0;
    if (0x1fffffff < uVar17) {
                    /* WARNING: Subroutine does not return */
      FUN_007c49e8("vector::reserve");
    }
    if (uVar17 != 0) {
      pEVar10 = operator_new(uVar17 * 8);
      std::__uninitialized_copy<false>::__uninit_copy<gpg::ScorePage::Entry*,gpg::ScorePage::Entry*>
                ((Entry *)0x0,(Entry *)0x0,pEVar10);
      std::_Destroy_aux<false>::__destroy<gpg::ScorePage::Entry*>(local_70,local_6c);
      FUN_0054bf98(local_70);
      local_68 = pEVar10 + uVar17 * 8;
      local_6c = pEVar10;
    }
    local_70 = local_6c;
    for (uVar9 = 0; uVar9 != uVar17; uVar9 = uVar9 + 1) {
      FUN_0054968c(auStack_48,auStack_58,&DAT_009637a4,&DAT_0080598d,
                   "(I)Lcom/google/android/gms/games/leaderboard/LeaderboardScore;",uVar9 + iVar7);
      FUN_0054968c(&local_38,auStack_48,&DAT_009621a4,"getScoreHolder",
                   "()Lcom/google/android/gms/games/Player;");
      FUN_00549104(auStack_e8,&local_38,"getPlayerId");
      uVar20 = FUN_00548d84(auStack_48,"getRank");
      uVar21 = FUN_00548d84(auStack_48,"getRawScore");
      FUN_005490cc(&local_e4,auStack_48,&DAT_00801f93,"getScoreTag");
      FUN_005490cc(&local_e0,auStack_48,&DAT_00801f93,"getDisplayScore");
      FUN_005490cc(&local_dc,auStack_48,&DAT_00801f93,"getDisplayRank");
      local_d0 = (undefined8 *)0x0;
      local_cc = (undefined4 *)0x0;
      local_d0 = operator_new(0x20);
      local_64 = local_e4;
      local_7c = local_e0;
      local_88._0_4_ = local_dc;
      if (local_d0 != (undefined8 *)0x0) {
        *(undefined8 **)(local_d0 + 2) = local_e4;
        *local_d0 = uVar20;
        local_d0[1] = uVar21;
        *(undefined8 **)((int)local_d0 + 0x14) = local_e0;
        *(undefined8 **)(local_d0 + 3) = local_dc;
        local_88._0_4_ = (undefined8 *)&DAT_00972528;
        local_7c = (undefined8 *)&DAT_00972528;
        local_64 = (undefined8 *)&DAT_00972528;
      }
      local_e4 = (undefined8 *)&DAT_00972528;
      local_e0 = (undefined8 *)&DAT_00972528;
      local_dc = (undefined8 *)&DAT_00972528;
      FUN_007c5914(&local_88);
      FUN_007c5914(&local_7c);
      FUN_007c5914(&local_64);
      puVar6 = local_d0;
      local_64 = (undefined8 *)0x0;
      puVar15 = operator_new(0x14);
      if (puVar15 != (undefined4 *)0x0) {
        puVar15[1] = 1;
        puVar15[2] = 1;
        puVar15[3] = puVar6;
        *puVar15 = &PTR_LAB_0054a5cc_1_00926650;
      }
      local_64 = (undefined8 *)local_cc;
      local_cc = puVar15;
      std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
                ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_64);
      local_7c = local_d0;
      local_78[0] = local_cc;
      local_cc = (undefined4 *)0x0;
      local_d0 = (undefined8 *)0x0;
      gpg::Score::Score(aSStack_c8,&local_7c);
      local_88 = FUN_00548d84(auStack_48,"getTimestampMillis");
      FUN_0054c324(&local_c0,0,auStack_ec,auStack_e8,aSStack_c8,&local_88);
      local_64 = (undefined8 *)local_c0;
      local_60[0] = local_bc;
      local_bc = 0;
      local_c0 = (undefined4 *)0x0;
      gpg::ScorePage::Entry::Entry(aEStack_b8,&local_64);
      if (local_6c == local_68) {
        std::vector<gpg::ScorePage::Entry,std::allocator<gpg::ScorePage::Entry>>::
        _M_emplace_back_aux<gpg::ScorePage::Entry>
                  ((vector<gpg::ScorePage::Entry,std::allocator<gpg::ScorePage::Entry>> *)&local_70,
                   aEStack_b8);
      }
      else {
        if (local_6c != (Entry *)0x0) {
          gpg::ScorePage::Entry::Entry(local_6c,aEStack_b8);
        }
        local_6c = local_6c + 8;
      }
      gpg::ScorePage::Entry::~Entry(aEStack_b8);
      std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
                ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_60);
      std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
                ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_bc);
      gpg::Score::~Score(aSStack_c8);
      std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
                ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_78);
      std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
                ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_cc);
      FUN_007c5914(&local_dc);
      FUN_007c5914(&local_e0);
      FUN_007c5914(&local_e4);
      FUN_007c5914(auStack_e8);
      FUN_00548ab0(&local_38);
      FUN_00548ab0(auStack_48);
    }
    uVar11 = FUN_00548bac(auStack_58);
    iVar12 = FUN_00547368(&DAT_00963f24,"hasPrevPage",
                          "(Lcom/google/android/gms/common/data/DataBuffer;)Z",uVar11);
    uVar11 = FUN_00548bac(auStack_58);
    iVar13 = FUN_00547368(&DAT_00963f24,"hasNextPage",
                          "(Lcom/google/android/gms/common/data/DataBuffer;)Z",uVar11);
    FUN_00548de4(auStack_58,"close");
    iVar5 = local_d8;
    iVar18 = local_d8 + 4;
    iVar19 = local_d8 + 8;
    iVar16 = local_d8 + 0xc;
    local_64 = puVar8;
    if (iVar7 == 0) {
      if (iVar12 == 0) {
        local_b0 = iVar7;
        local_ac = iVar7;
        gpg::ScorePage::ScorePageToken::ScorePageToken(aSStack_a8,&local_b0);
        bVar4 = true;
        goto LAB_0054d178;
      }
      FUN_00549380(auStack_48,auStack_58);
      puVar15 = operator_new(0x1c);
      *puVar15 = &DAT_009268d0;
      FUN_00548b30(puVar15 + 1,auStack_48);
      puVar15[5] = 1;
      puVar15[6] = 0;
      FUN_0054c508(aSStack_a8,param_2,puVar15);
      bVar3 = true;
      bVar4 = false;
    }
    else {
      pvVar14 = operator_new(0x1c);
      FUN_0054c044(pvVar14,iVar5,-*(int *)(param_2 + 100));
      FUN_0054c508(aSStack_a8,param_2,pvVar14);
      bVar4 = false;
LAB_0054d178:
      bVar3 = false;
    }
    iVar12 = local_d8;
    if (local_100 == 0) {
      if (iVar13 == 0) {
        local_a0 = iVar13;
        local_9c = iVar13;
        gpg::ScorePage::ScorePageToken::ScorePageToken(aSStack_98,&local_a0);
        bVar1 = true;
        goto LAB_0054d224;
      }
      FUN_00549380(&local_38,auStack_58);
      puVar15 = operator_new(0x1c);
      *puVar15 = &DAT_009268d0;
      FUN_00548b30(puVar15 + 1,&local_38);
      puVar15[6] = iVar7 + uVar17;
      puVar15[5] = 0;
      FUN_0054c508(aSStack_98,param_2,puVar15);
      bVar1 = false;
      bVar2 = true;
    }
    else {
      pvVar14 = operator_new(0x1c);
      FUN_0054c044(pvVar14,iVar12,*(undefined4 *)(param_2 + 100));
      FUN_0054c508(aSStack_98,param_2,pvVar14);
      bVar1 = false;
LAB_0054d224:
      bVar2 = false;
    }
    local_90 = (undefined8 *)0x0;
    local_8c = (undefined8 *)0x0;
    local_90 = operator_new(0x2c);
    FUN_0054c69c(&local_88,local_90,iVar5,iVar18,iVar19,iVar16,aSStack_a8,aSStack_98,
                 (vector<gpg::ScorePage::Entry,std::allocator<gpg::ScorePage::Entry>> *)&local_70);
    puVar8 = local_90;
    local_7c = (undefined8 *)0x0;
    puVar15 = operator_new(0x14);
    if (puVar15 != (undefined4 *)0x0) {
      puVar15[1] = 1;
      puVar15[2] = 1;
      puVar15[3] = puVar8;
      *puVar15 = &PTR_LAB_0054bef8_1_00926900;
    }
    local_7c = local_8c;
    local_8c = (undefined8 *)puVar15;
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_7c);
    local_7c = local_90;
    local_78[0] = (undefined4 *)local_8c;
    local_8c = (undefined8 *)0x0;
    local_90 = (undefined8 *)0x0;
    gpg::ScorePage::ScorePage((ScorePage *)local_60,&local_7c);
    *param_1 = local_64;
    gpg::ScorePage::ScorePage((ScorePage *)(param_1 + 1),(ScorePage *)local_60);
    gpg::ScorePage::~ScorePage((ScorePage *)local_60);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_78);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_8c);
    gpg::ScorePage::ScorePageToken::~ScorePageToken(aSStack_98);
    if (bVar1) {
      std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
                ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_9c);
    }
    if (bVar2) {
      FUN_00548ab0(&local_38);
    }
    gpg::ScorePage::ScorePageToken::~ScorePageToken(aSStack_a8);
    if (bVar4) {
      std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
                ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_ac);
    }
    if (bVar3) {
      FUN_00548ab0(auStack_48);
    }
    std::vector<gpg::ScorePage::Entry,std::allocator<gpg::ScorePage::Entry>>::~vector
              ((vector<gpg::ScorePage::Entry,std::allocator<gpg::ScorePage::Entry>> *)&local_70);
  }
  else {
    iVar7 = *(int *)(*(int *)(local_d8 + 0x10) + 0x18);
    if (iVar7 < (int)uVar9) {
      uVar9 = uVar9 - iVar7;
      goto LAB_0054cdb8;
    }
    FUN_00548de4(auStack_58,"close");
    local_7c = (undefined8 *)&SUB_fffffffe;
    gpg::ScorePage::ScorePage((ScorePage *)local_78);
    *param_1 = local_7c;
    gpg::ScorePage::ScorePage((ScorePage *)(param_1 + 1),(ScorePage *)local_78);
    gpg::ScorePage::~ScorePage((ScorePage *)local_78);
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_d4);
LAB_0054d32c:
  FUN_00548ab0(auStack_58);
  return param_1;
}

// ---- FUN_0054d53c  @ 0x54d53c
void FUN_0054d53c(int *param_1)

{
  if (param_1 != (int *)0x0) {
    (**(code **)(*param_1 + 4))();
  }
  return;
}

// ---- FUN_0054d548  @ 0x54d548
void FUN_0054d548(int *param_1)

{
  if (param_1 != (int *)0x0) {
    (**(code **)(*param_1 + 4))();
  }
  return;
}

// ---- FUN_0054d554  @ 0x54d554
void FUN_0054d554(int *param_1)

{
  if (param_1 != (int *)0x0) {
    (**(code **)(*param_1 + 4))();
  }
  return;
}

// ---- FUN_0054d5c4  @ 0x54d5c4
undefined4 * FUN_0054d5c4(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0054d5c4_1_00926980;
  FUN_00512f04(param_1 + 0xc);
  FUN_00533468(param_1);
  return param_1;
}

// ---- FUN_0054d5e4  @ 0x54d5e4
void * FUN_0054d5e4(void *param_1)

{
  FUN_0054d5c4();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0054d5f8  @ 0x54d5f8
undefined4 * FUN_0054d5f8(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0054d5f8_1_009269d8;
  FUN_0054d5c4();
  return param_1;
}

// ---- FUN_0054d610  @ 0x54d610
void * FUN_0054d610(void *param_1)

{
  FUN_0054d5f8();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0054d624  @ 0x54d624
undefined4 * FUN_0054d624(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0054d624_1_00926a38;
  FUN_007c5914(param_1 + 0x15);
  FUN_0054d5f8(param_1);
  return param_1;
}

// ---- FUN_0054d644  @ 0x54d644
void * FUN_0054d644(void *param_1)

{
  FUN_0054d624();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0054d69c  @ 0x54d69c
int FUN_0054d69c(int param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  *(undefined4 *)(param_1 + 8) = 0;
  if (*(int *)(param_2 + 8) != 0) {
    *(undefined4 *)(param_1 + 0xc) = *(undefined4 *)(param_2 + 0xc);
    *(undefined4 *)(param_1 + 8) = *(undefined4 *)(param_2 + 8);
    (**(code **)(param_2 + 8))(param_1,param_2,2,*(code **)(param_2 + 8),param_4);
  }
  std::function<void(gpg::LeaderboardManager::FetchScoreSummaryResponse_const&)>::function
            ((function<void(gpg::LeaderboardManager::FetchScoreSummaryResponse_const&)> *)
             (param_1 + 0x10),(function *)(param_2 + 0x10));
  return param_1;
}

// ---- FUN_0054d6d8  @ 0x54d6d8
undefined4 *
FUN_0054d6d8(undefined4 *param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5,undefined4 param_6,undefined4 param_7)

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
  FUN_0054d69c(auStack_68,param_3);
  local_78 = uVar1;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_74,(__shared_count *)a_Stack_7c);
  FUN_0054d69c(auStack_48,auStack_68);
  local_70 = local_78;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_6c,(__shared_count *)a_Stack_74);
  FUN_00533528(param_1,&local_70);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_6c);
  *param_1 = &PTR_FUN_0054d5c4_1_00926980;
  FUN_0054d69c(param_1 + 0xc,auStack_48);
  FUN_00512f04(auStack_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_74);
  *param_1 = &PTR_FUN_0054d5f8_1_009269d8;
  FUN_00512f04(auStack_68);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_7c);
  param_1[0x14] = param_4;
  *param_1 = &PTR_FUN_0054d624_1_00926a38;
  FUN_007c64e8(param_1 + 0x15,param_5);
  param_1[0x16] = param_6;
  param_1[0x17] = param_7;
  return param_1;
}

// ---- FUN_0054d7d0  @ 0x54d7d0
undefined4 *
FUN_0054d7d0(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
            undefined4 *param_5,undefined4 *param_6,undefined4 *param_7,Score *param_8,
            undefined1 *param_9)

{
  undefined1 uVar1;
  undefined4 *puVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  undefined1 *local_34;
  undefined4 local_30 [3];
  
  *param_1 = 0;
  param_1[1] = 0;
  puVar2 = operator_new(0x28);
  *param_1 = puVar2;
  FUN_007c64e8(&local_34,param_4);
  uVar6 = *param_5;
  uVar3 = *param_6;
  uVar4 = *param_7;
  uVar5 = param_7[1];
  gpg::Score::Score((Score *)local_30,param_8);
  uVar1 = *param_9;
  if (puVar2 != (undefined4 *)0x0) {
    puVar2[1] = uVar6;
    puVar2[4] = uVar4;
    puVar2[5] = uVar5;
    *puVar2 = local_34;
    local_34 = &DAT_00972528;
    puVar2[2] = uVar3;
    gpg::Score::Score((Score *)(puVar2 + 6),(Score *)local_30);
    *(undefined1 *)(puVar2 + 8) = uVar1;
  }
  gpg::Score::~Score((Score *)local_30);
  FUN_007c5914(&local_34);
  uVar3 = *param_1;
  local_30[0] = 0;
  puVar2 = operator_new(0x14);
  if (puVar2 != (undefined4 *)0x0) {
    puVar2[1] = 1;
    puVar2[2] = 1;
    puVar2[3] = uVar3;
    *puVar2 = &PTR_LAB_0054a5b8_1_00926670;
  }
  local_30[0] = param_1[1];
  param_1[1] = puVar2;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_30);
  return param_1;
}

// ---- FUN_0054d8ec  @ 0x54d8ec
void FUN_0054d8ec(int *param_1,undefined4 param_2)

{
  int iVar1;
  undefined4 local_24;
  ScoreSummary aSStack_20 [12];
  
  iVar1 = FUN_00548c48(param_2);
  if (iVar1 == 0) {
    (**(code **)(*param_1 + 0x50))(&local_24,param_1,param_2);
    FUN_00513e98(param_1 + 0xc,&local_24);
  }
  else {
    local_24 = 0xfffffffe;
    gpg::ScoreSummary::ScoreSummary(aSStack_20);
    FUN_00513e98(param_1 + 0xc,&local_24);
  }
  gpg::ScoreSummary::~ScoreSummary(aSStack_20);
  return;
}

// ---- FUN_0054d974  @ 0x54d974
undefined4
FUN_0054d974(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 *param_4)

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
  local_3c = 0x54e19d;
  local_40 = (code *)0x54d657;
  FUN_00533700(a_Stack_38,(_Function_base *)local_48);
  pvVar2 = operator_new(0x14);
  FUN_0053372c(pvVar2,a_Stack_38);
  local_64 = pvVar2;
  FUN_005453a8(auStack_58,param_2,param_3,&local_64);
  if (local_64 != (void *)0x0) {
    FUN_0054d53c();
  }
  std::_Function_base::~_Function_base(a_Stack_38);
  std::_Function_base::~_Function_base((_Function_base *)local_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_5c);
  FUN_00548b30(param_1,auStack_58);
  FUN_00548ab0(auStack_58);
  return param_1;
}

// ---- FUN_0054da54  @ 0x54da54
undefined4 FUN_0054da54(undefined4 param_1,int param_2)

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
  if (local_34 == 0) goto LAB_0054da70;
  piVar2 = (int *)(local_34 + 4);
  unaff_r4 = &local_28;
  local_28 = *(int *)(local_34 + 4);
  while( true ) {
    iVar3 = local_28;
    if (local_28 == 0) {
LAB_0054da70:
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
  FUN_0054d974(unaff_r4,0,0x5463d1,&local_30,iVar3);
  FUN_00548b30(param_1,unaff_r4);
  FUN_00548ab0(unaff_r4);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_2c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_34);
  return param_1;
}

// ---- FUN_0054db0c  @ 0x54db0c
void FUN_0054db0c(int param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined1 auStack_60 [16];
  undefined1 auStack_50 [16];
  undefined1 auStack_40 [16];
  undefined1 auStack_30 [16];
  
  FUN_0054942c(auStack_60,param_1 + 0x54,0);
  FUN_00547b10(auStack_50,&DAT_00961324,&DAT_00963ba4,"Leaderboards",
               "Lcom/google/android/gms/games/leaderboard/Leaderboards;");
  uVar1 = FUN_00548bac(*(int *)(param_1 + 0x28) + 0xf4);
  uVar2 = FUN_00548bac(auStack_60);
  uVar3 = FUN_0054eb3c(*(undefined4 *)(param_1 + 0x58));
  uVar4 = FUN_0054ec64(*(undefined4 *)(param_1 + 0x5c));
  FUN_0054968c(auStack_40,auStack_50,&DAT_00963024,"loadTopScores",
               "(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;IIIZ)Lcom/google/android/gms/common/api/PendingResult;"
               ,uVar1,uVar2,uVar3,uVar4,1,*(int *)(param_1 + 0x50) == 2);
  FUN_0054da54(auStack_30,param_1);
  uVar1 = FUN_00548bac(auStack_30);
  FUN_00548d90(auStack_40,"setResultCallback",
               "(Lcom/google/android/gms/common/api/ResultCallback;)V",uVar1);
  FUN_00548ab0(auStack_30);
  FUN_00548ab0(auStack_40);
  FUN_00548ab0(auStack_50);
  FUN_00548ab0(auStack_60);
  return;
}

// ---- FUN_0054dc1c  @ 0x54dc1c
void FUN_0054dc1c(int param_1,undefined4 param_2)

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

// ---- FUN_0054dc9c  @ 0x54dc9c
undefined4 * FUN_0054dc9c(undefined4 *param_1,int param_2,undefined4 param_3)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  undefined4 *puVar7;
  undefined4 uVar8;
  undefined8 *puVar9;
  int iVar10;
  undefined8 *puVar11;
  undefined4 uVar12;
  bool bVar13;
  longlong lVar14;
  uint *local_e8;
  undefined1 auStack_d0 [3];
  undefined1 local_cd;
  undefined1 *local_cc;
  undefined1 *local_c8;
  undefined1 *local_c4;
  uint local_c0;
  int iStack_bc;
  undefined8 local_b8;
  undefined4 local_b0;
  undefined4 uStack_ac;
  undefined8 local_a8;
  undefined4 local_a0;
  undefined4 uStack_9c;
  undefined8 local_98;
  undefined4 *local_90;
  undefined4 *local_8c;
  undefined4 *local_88;
  undefined4 *local_84;
  undefined1 *local_80 [2];
  undefined1 *local_78;
  undefined4 local_74;
  undefined1 *local_70;
  undefined4 local_6c [2];
  undefined4 local_64;
  ScoreSummary aSStack_60 [8];
  undefined1 auStack_58 [16];
  undefined1 auStack_48 [16];
  undefined4 local_38;
  ScoreSummary aSStack_34 [16];
  
  uVar2 = FUN_0054dc1c(param_2,param_3);
  FUN_0054932c(auStack_48,param_3,&DAT_00961924);
  FUN_0054968c(&local_38,auStack_48,&DAT_009635a4,"getScores",
               "()Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;");
  FUN_00548de4(&local_38,"close");
  FUN_00548ab0(&local_38);
  FUN_00548ab0(auStack_48);
  iVar3 = gpg::IsError(uVar2);
  if (iVar3 == 0) {
    FUN_0054932c(&local_38,param_3,&DAT_00961924);
    FUN_0054968c(auStack_58,&local_38,&DAT_00960ea4,"getLeaderboard",
                 "()Lcom/google/android/gms/games/leaderboard/Leaderboard;");
    FUN_00548ab0(&local_38);
    iVar3 = FUN_00548c48(auStack_58);
    if (iVar3 == 0) {
      FUN_0054968c(auStack_48,auStack_58,&DAT_00961824,"getVariants","()Ljava/util/ArrayList;");
      iVar3 = FUN_00548d1c(auStack_48,&DAT_00806800);
      iVar4 = FUN_0054eb3c(*(undefined4 *)(param_2 + 0x58));
      iVar5 = FUN_0054ec64(*(undefined4 *)(param_2 + 0x5c));
      for (iVar10 = 0; iVar10 < iVar3; iVar10 = iVar10 + 1) {
        FUN_0054968c(&local_38,auStack_48,&DAT_00961f24,&DAT_0080598d,"(I)Ljava/lang/Object;",iVar10
                    );
        iVar6 = FUN_00548d1c(&local_38,"getTimeSpan");
        if ((iVar6 == iVar4) && (iVar6 = FUN_00548d1c(&local_38,"getCollection"), iVar6 == iVar5)) {
          local_c0 = 0;
          iStack_bc = 0;
          local_64 = uVar2;
          local_b8 = FUN_00548d84(&local_38,"getNumScores");
          iVar3 = (int)((ulonglong)local_b8 >> 0x20);
          bVar13 = local_c0 < (uint)local_b8;
          if ((int)((iStack_bc - iVar3) - (uint)bVar13) < 0 ==
              (SBORROW4(iStack_bc,iVar3) != SBORROW4(iStack_bc - iVar3,(uint)bVar13))) {
            local_e8 = &local_c0;
          }
          else {
            local_e8 = (uint *)&local_b8;
          }
          local_b0 = 0;
          uStack_ac = 0;
          local_a8 = FUN_00548d84(&local_38,"getPlayerRank");
          puVar11 = &local_a8;
          if ((int)((ulonglong)local_a8 >> 0x20) < (int)(uint)((int)local_a8 == 0)) {
            puVar11 = (undefined8 *)&local_b0;
          }
          local_a0 = 0;
          uStack_9c = 0;
          local_98 = FUN_00548d84(&local_38,"getRawPlayerScore");
          puVar9 = &local_98;
          if ((int)((ulonglong)local_98 >> 0x20) < (int)(uint)((int)local_98 == 0)) {
            puVar9 = (undefined8 *)&local_a0;
          }
          FUN_005490cc(&local_cc,&local_38,&DAT_00801f93,"getPlayerScoreTag");
          FUN_005490cc(&local_c8,&local_38,&DAT_00801f93,"getDisplayPlayerScore");
          FUN_005490cc(&local_c4,&local_38,&DAT_00801f93,"getDisplayPlayerRank");
          local_90 = (undefined4 *)0x0;
          local_8c = (undefined4 *)0x0;
          local_90 = operator_new(0x20);
          uVar2 = *(undefined4 *)puVar11;
          uVar8 = *(undefined4 *)((int)puVar11 + 4);
          uVar12 = *(undefined4 *)((int)puVar9 + 4);
          local_70 = local_cc;
          local_78 = local_c8;
          local_80[0] = local_c4;
          if (local_90 != (undefined4 *)0x0) {
            local_90[2] = *(undefined4 *)puVar9;
            local_90[3] = uVar12;
            local_90[4] = local_cc;
            *local_90 = uVar2;
            local_90[1] = uVar8;
            local_90[5] = local_c8;
            local_90[6] = local_c4;
            local_80[0] = &DAT_00972528;
            local_78 = &DAT_00972528;
            local_70 = &DAT_00972528;
          }
          local_cc = &DAT_00972528;
          local_c8 = &DAT_00972528;
          local_c4 = &DAT_00972528;
          FUN_007c5914((Score *)local_80);
          FUN_007c5914(&local_78);
          FUN_007c5914((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_70);
          puVar1 = local_90;
          local_70 = (undefined1 *)0x0;
          puVar7 = operator_new(0x14);
          if (puVar7 != (undefined4 *)0x0) {
            puVar7[1] = 1;
            puVar7[2] = 1;
            puVar7[3] = puVar1;
            *puVar7 = &PTR_LAB_0054a5cc_1_00926650;
          }
          local_70 = (undefined1 *)local_8c;
          local_8c = puVar7;
          std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
                    ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_70);
          local_88 = local_90;
          local_84 = local_8c;
          local_8c = (undefined4 *)0x0;
          local_90 = (undefined4 *)0x0;
          gpg::Score::Score((Score *)local_80,&local_88);
          lVar14 = FUN_00548d84(&local_38,"getPlayerRank");
          local_cd = lVar14 == -1;
          FUN_0054d7d0(&local_78,0,auStack_d0,param_2 + 0x54,param_2 + 0x58,param_2 + 0x5c,local_e8,
                       (Score *)local_80,&local_cd);
          local_70 = local_78;
          local_6c[0] = local_74;
          local_74 = 0;
          local_78 = (undefined1 *)0x0;
          gpg::ScoreSummary::ScoreSummary
                    (aSStack_60,(__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_70);
          *param_1 = local_64;
          gpg::ScoreSummary::ScoreSummary((ScoreSummary *)(param_1 + 1),aSStack_60);
          gpg::ScoreSummary::~ScoreSummary(aSStack_60);
          std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
                    ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_6c);
          std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
                    ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_74);
          gpg::Score::~Score((Score *)local_80);
          std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
                    ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_84);
          std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
                    ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_8c);
          FUN_007c5914(&local_c4);
          FUN_007c5914(&local_c8);
          FUN_007c5914(&local_cc);
          FUN_00548ab0(&local_38);
          goto LAB_0054de40;
        }
        FUN_00548ab0(&local_38);
      }
      FUN_005166ae(4,"Couldn\'t fetch leaderboard variant: not found.");
      local_38 = 0xfffffffe;
      gpg::ScoreSummary::ScoreSummary(aSStack_34);
      *param_1 = local_38;
      gpg::ScoreSummary::ScoreSummary((ScoreSummary *)(param_1 + 1),aSStack_34);
      gpg::ScoreSummary::~ScoreSummary(aSStack_34);
LAB_0054de40:
      FUN_00548ab0(auStack_48);
    }
    else {
      FUN_005166ae(4,"Couldn\'t fetch leaderboard variant: no leaderboard metadata.");
      local_70 = (undefined1 *)0xfffffffe;
      gpg::ScoreSummary::ScoreSummary((ScoreSummary *)local_6c);
      *param_1 = local_70;
      gpg::ScoreSummary::ScoreSummary((ScoreSummary *)(param_1 + 1),(ScoreSummary *)local_6c);
      gpg::ScoreSummary::~ScoreSummary((ScoreSummary *)local_6c);
    }
    FUN_00548ab0(auStack_58);
  }
  else {
    local_38 = uVar2;
    gpg::ScoreSummary::ScoreSummary(aSStack_34);
    *param_1 = local_38;
    gpg::ScoreSummary::ScoreSummary((ScoreSummary *)(param_1 + 1),aSStack_34);
    gpg::ScoreSummary::~ScoreSummary(aSStack_34);
  }
  return param_1;
}

// ---- FUN_0054e19c  @ 0x54e19c
void FUN_0054e19c(undefined4 *param_1)

{
  undefined4 uVar1;
  undefined1 auStack_30 [16];
  undefined1 auStack_20 [16];
  
  param_1 = (undefined4 *)*param_1;
  FUN_00548b30(auStack_30);
  uVar1 = *param_1;
  FUN_00548b30(auStack_20,auStack_30);
  FUN_0054d8ec(uVar1,auStack_20);
  FUN_00548ab0(auStack_20);
  FUN_00548ab0(auStack_30);
  return;
}

// ---- FUN_0054e1e0  @ 0x54e1e0
undefined4 * FUN_0054e1e0(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0054e1e0_1_00926a98;
  FUN_00534944();
  return param_1;
}

// ---- FUN_0054e1f8  @ 0x54e1f8
void * FUN_0054e1f8(void *param_1)

{
  FUN_0054e1e0();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0054e20c  @ 0x54e20c
undefined4 * FUN_0054e20c(undefined4 *param_1,undefined4 *param_2,undefined4 param_3)

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
  FUN_0051344a(auStack_68,param_3);
  local_80 = uVar1;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_7c,(__shared_count *)a_Stack_84);
  FUN_0051344a(auStack_48,auStack_68);
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
  *param_1 = &PTR_FUN_00534910_1_00925410;
  FUN_0051344a(param_1 + 0xc,auStack_48);
  FUN_005082ea(auStack_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_7c);
  *param_1 = &PTR_FUN_00534944_1_00925468;
  *(undefined1 *)(param_1 + 0x14) = 0;
  FUN_005082ea(auStack_68);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_84);
  *param_1 = &PTR_FUN_0054e1e0_1_00926a98;
  return param_1;
}

// ---- FUN_0054e350  @ 0x54e350
void FUN_0054e350(int param_1)

{
  bool bVar1;
  undefined4 uVar2;
  int iVar3;
  int *piVar4;
  int *extraout_r2;
  int extraout_r3;
  int iVar5;
  int *unaff_r5;
  int *unaff_r10;
  undefined4 local_5c;
  int local_58;
  int local_54;
  int local_50;
  int local_4c;
  undefined1 auStack_48 [16];
  int *local_38;
  int local_34;
  code *local_30;
  undefined4 local_2c;
  
  FUN_00547b10((_Function_base *)&local_38,&DAT_00961324,&DAT_00963ba4,"Leaderboards",
               "Lcom/google/android/gms/games/leaderboard/Leaderboards;");
  uVar2 = FUN_00548bac(*(int *)(param_1 + 0x28) + 0xf4);
  FUN_0054968c(auStack_48,(_Function_base *)&local_38,&DAT_009630a4,"getAllLeaderboardsIntent",
               "(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/Intent;",uVar2
              );
  FUN_00548ab0((_Function_base *)&local_38);
  local_54 = *(int *)(param_1 + 8);
  uVar2 = *(undefined4 *)(param_1 + 0x28);
  if (local_54 == 0) {
    iVar3 = std::__throw_bad_weak_ptr();
  }
  else {
    piVar4 = (int *)(local_54 + 4);
    unaff_r5 = &local_50;
    iVar3 = *(int *)(local_54 + 4);
    do {
      local_50 = iVar3;
      iVar5 = local_50;
      if (local_50 == 0) {
        std::__throw_bad_weak_ptr();
        piVar4 = extraout_r2;
        iVar5 = extraout_r3;
      }
      DataMemoryBarrier(0x1f);
      ExclusiveAccess(piVar4);
      iVar3 = *piVar4;
      bVar1 = false;
      if (iVar3 == local_50) {
        bVar1 = (bool)hasExclusiveAccess(piVar4);
        if (bVar1) {
          *piVar4 = iVar5 + 1;
        }
        DataMemoryBarrier(0x1f);
      }
    } while (!bVar1);
    local_58 = *(int *)(param_1 + 4);
    unaff_r10 = &local_58;
    local_38 = (int *)local_58;
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_34,(__shared_count *)&local_54);
    local_4c = local_34;
    local_50 = (int)local_38;
    local_38 = (int *)0x0;
    local_34 = 0;
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_34);
    local_30 = (code *)0x0;
    local_38 = operator_new(8);
    iVar3 = local_4c;
    *local_38 = local_50;
    local_38[1] = 0;
    local_4c = 0;
    local_38[1] = iVar3;
    local_2c = 0x534e09;
    local_50 = 0;
    local_30 = (code *)0x53499b;
    iVar3 = FUN_0053eea8(uVar2,auStack_48,(_Function_base *)&local_38);
  }
  std::_Function_base::~_Function_base((_Function_base *)&local_38);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(unaff_r5 + 1));
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(unaff_r10 + 1));
  if (iVar3 == 0) {
    local_5c = 0xfffffff4;
    FUN_00514114(param_1 + 0x30,&local_5c);
  }
  FUN_00548ab0(auStack_48);
  return;
}

// ---- FUN_0054e4d4  @ 0x54e4d4
undefined4 * FUN_0054e4d4(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0054e4d4_1_00926af8;
  FUN_007c5914(param_1 + 0x15);
  FUN_00534944(param_1);
  return param_1;
}

// ---- FUN_0054e4f4  @ 0x54e4f4
void * FUN_0054e4f4(void *param_1)

{
  FUN_0054e4d4();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0054e508  @ 0x54e508
undefined4 *
FUN_0054e508(undefined4 *param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4,
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
  FUN_0051344a(auStack_68,param_5);
  local_78 = uVar1;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_74,(__shared_count *)a_Stack_7c);
  FUN_0051344a(auStack_48,auStack_68);
  local_70 = local_78;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_6c,(__shared_count *)a_Stack_74);
  FUN_00533528(param_1,&local_70);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_6c);
  *param_1 = &PTR_FUN_00534910_1_00925410;
  FUN_0051344a(param_1 + 0xc,auStack_48);
  FUN_005082ea(auStack_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_74);
  *param_1 = &PTR_FUN_00534944_1_00925468;
  *(undefined1 *)(param_1 + 0x14) = 0;
  FUN_005082ea(auStack_68);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_7c);
  *param_1 = &PTR_FUN_0054e4d4_1_00926af8;
  FUN_007c64e8(param_1 + 0x15,param_3);
  param_1[0x16] = param_4;
  return param_1;
}

// ---- FUN_0054e600  @ 0x54e600
void FUN_0054e600(int param_1)

{
  bool bVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  int iVar5;
  int *piVar6;
  int *extraout_r2;
  int extraout_r3;
  int iVar7;
  int *unaff_r10;
  undefined4 local_64;
  int local_60;
  int local_5c;
  undefined1 auStack_58 [16];
  int local_48;
  int local_44 [3];
  int *local_38;
  int local_34;
  code *local_30;
  undefined4 local_2c;
  
  FUN_00547b10(&local_48,&DAT_00961324,&DAT_00963ba4,"Leaderboards",
               "Lcom/google/android/gms/games/leaderboard/Leaderboards;");
  uVar2 = FUN_00548bac(*(int *)(param_1 + 0x28) + 0xf4);
  FUN_0054942c((_Function_base *)&local_38,param_1 + 0x54,0);
  uVar3 = FUN_00548bac((_Function_base *)&local_38);
  uVar4 = FUN_0054eb3c(*(undefined4 *)(param_1 + 0x58));
  FUN_0054968c(auStack_58,&local_48,&DAT_009630a4,"getLeaderboardIntent",
               "(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;I)Landroid/content/Intent;"
               ,uVar2,uVar3,uVar4);
  FUN_00548ab0((_Function_base *)&local_38);
  FUN_00548ab0(&local_48);
  local_5c = *(int *)(param_1 + 8);
  uVar2 = *(undefined4 *)(param_1 + 0x28);
  if (local_5c == 0) {
    iVar5 = std::__throw_bad_weak_ptr();
  }
  else {
    piVar6 = (int *)(local_5c + 4);
    iVar5 = *(int *)(local_5c + 4);
    do {
      local_48 = iVar5;
      iVar7 = local_48;
      if (local_48 == 0) {
        std::__throw_bad_weak_ptr();
        piVar6 = extraout_r2;
        iVar7 = extraout_r3;
      }
      DataMemoryBarrier(0x1f);
      ExclusiveAccess(piVar6);
      iVar5 = *piVar6;
      bVar1 = false;
      if (iVar5 == local_48) {
        bVar1 = (bool)hasExclusiveAccess(piVar6);
        if (bVar1) {
          *piVar6 = iVar7 + 1;
        }
        DataMemoryBarrier(0x1f);
      }
    } while (!bVar1);
    local_60 = *(int *)(param_1 + 4);
    unaff_r10 = &local_60;
    local_38 = (int *)local_60;
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_34,(__shared_count *)&local_5c);
    local_44[0] = local_34;
    local_48 = (int)local_38;
    local_38 = (int *)0x0;
    local_34 = 0;
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_34);
    local_30 = (code *)0x0;
    local_38 = operator_new(8);
    iVar5 = local_44[0];
    *local_38 = local_48;
    local_38[1] = 0;
    local_44[0] = 0;
    local_38[1] = iVar5;
    local_2c = 0x534e09;
    local_48 = 0;
    local_30 = (code *)0x53499b;
    iVar5 = FUN_0053eea8(uVar2,auStack_58,(_Function_base *)&local_38);
  }
  std::_Function_base::~_Function_base((_Function_base *)&local_38);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_44);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(unaff_r10 + 1));
  if (iVar5 == 0) {
    local_64 = 0xfffffff4;
    FUN_00514114(param_1 + 0x30,&local_64);
  }
  FUN_00548ab0(auStack_58);
  return;
}

// ---- FUN_0054e7b4  @ 0x54e7b4
undefined4 * FUN_0054e7b4(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0054e7b4_1_00926b58;
  FUN_007c5914(param_1 + 0x10);
  FUN_007c5914(param_1 + 0xc);
  FUN_00533468(param_1);
  return param_1;
}

// ---- FUN_0054e7dc  @ 0x54e7dc
void * FUN_0054e7dc(void *param_1)

{
  FUN_0054e7b4();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0054e7f0  @ 0x54e7f0
undefined4 *
FUN_0054e7f0(undefined4 *param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5,undefined4 param_6,undefined4 param_7)

{
  undefined4 uVar1;
  _Sp_counted_base<(__gnu_cxx::_Lock_policy)2> *local_24;
  undefined4 local_20;
  _Sp_counted_base<(__gnu_cxx::_Lock_policy)2> *local_1c [2];
  
  uVar1 = *param_2;
  local_24 = (_Sp_counted_base<(__gnu_cxx::_Lock_policy)2> *)param_2[1];
  if (local_24 != (_Sp_counted_base<(__gnu_cxx::_Lock_policy)2> *)0x0) {
    std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_add_ref_copy(local_24);
  }
  local_1c[0] = local_24;
  local_20 = uVar1;
  if (local_24 != (_Sp_counted_base<(__gnu_cxx::_Lock_policy)2> *)0x0) {
    std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_add_ref_copy(local_24);
  }
  param_1[1] = 0;
  param_1[2] = 0;
  *param_1 = &PTR_FUN_005107b4_1_00924458;
  param_1[4] = local_1c[0];
  param_1[3] = local_20;
  if (local_1c[0] != (_Sp_counted_base<(__gnu_cxx::_Lock_policy)2> *)0x0) {
    std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_add_ref_copy(local_1c[0]);
  }
  param_1[8] = 0;
  param_1[8] = 0;
  param_1[9] = 0;
  param_1[6] = 0;
  param_1[7] = 0;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_1c);
  *param_1 = &PTR_FUN_00533468_1_00925100;
  param_1[0xb] = local_24;
  param_1[10] = uVar1;
  if (local_24 != (_Sp_counted_base<(__gnu_cxx::_Lock_policy)2> *)0x0) {
    std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_add_ref_copy(local_24);
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_24);
  *param_1 = &PTR_FUN_0054e7b4_1_00926b58;
  FUN_007c64e8(param_1 + 0xc,param_3);
  param_1[0xe] = param_5;
  param_1[0xf] = param_6;
  FUN_007c64e8(param_1 + 0x10,param_7);
  return param_1;
}

// ---- FUN_0054e8ac  @ 0x54e8ac
void FUN_0054e8ac(int param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined1 auStack_50 [16];
  undefined1 auStack_40 [16];
  undefined1 auStack_30 [16];
  
  uVar1 = FUN_00549a1c();
  FUN_0054942c(auStack_50,param_1 + 0x30,uVar1);
  if (*(int *)(*(int *)(param_1 + 0x40) + -0xc) == 0) {
    FUN_00547b10(auStack_30,&DAT_00961324,&DAT_00963ba4,"Leaderboards",
                 "Lcom/google/android/gms/games/leaderboard/Leaderboards;");
    uVar1 = FUN_00548bac(*(int *)(param_1 + 0x28) + 0xf4);
    uVar2 = FUN_00548bac(auStack_50);
    FUN_00548d90(auStack_30,"submitScore",
                 "(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;J)V",uVar1,
                 uVar2);
  }
  else {
    FUN_0054942c(auStack_30,param_1 + 0x40,uVar1);
    FUN_00547b10(auStack_40,&DAT_00961324,&DAT_00963ba4,"Leaderboards",
                 "Lcom/google/android/gms/games/leaderboard/Leaderboards;");
    uVar1 = FUN_00548bac(*(int *)(param_1 + 0x28) + 0xf4);
    uVar2 = FUN_00548bac(auStack_50);
    FUN_00548bac(auStack_30);
    FUN_00548d90(auStack_40,"submitScore",
                 "(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;JLjava/lang/String;)V"
                 ,uVar1,uVar2);
    FUN_00548ab0(auStack_40);
  }
  FUN_00548ab0(auStack_30);
  FUN_00548ab0(auStack_50);
  return;
}

// ---- FUN_0054e9f0  @ 0x54e9f0
undefined4 * FUN_0054e9f0(undefined4 *param_1)

{
  *param_1 = &PTR___Sp_counted_base_1_009242b8;
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0054ea48  @ 0x54ea48
int FUN_0054ea48(int *param_1,undefined4 *param_2,int *param_3)

{
  int *piVar1;
  gpg *pgVar2;
  undefined4 uVar3;
  int iVar4;
  int iVar5;
  int *piVar6;
  undefined1 auStack_d0 [4];
  undefined1 auStack_cc [8];
  undefined1 auStack_c4 [4];
  undefined1 auStack_c0 [176];
  
  piVar6 = (int *)*param_2;
  piVar1 = piVar6 + param_2[1] * 2;
  for (iVar5 = (int)(param_2[1] << 3) >> 5; 0 < iVar5; iVar5 = iVar5 + -1) {
    iVar4 = *param_1;
    if (*piVar6 == iVar4) goto LAB_0054eaba;
    if (piVar6[2] == iVar4) {
      piVar6 = piVar6 + 2;
      goto LAB_0054eaba;
    }
    if (piVar6[4] == iVar4) {
      piVar6 = piVar6 + 4;
      goto LAB_0054eaba;
    }
    if (piVar6[6] == iVar4) {
      piVar6 = piVar6 + 6;
      goto LAB_0054eaba;
    }
    piVar6 = piVar6 + 8;
  }
  iVar5 = (int)piVar1 - (int)piVar6 >> 3;
  if (iVar5 == 2) {
LAB_0054eaa8:
    if (*piVar6 != *param_1) {
      piVar6 = piVar6 + 2;
LAB_0054eab2:
      if (*piVar6 != *param_1) goto LAB_0054eac2;
    }
  }
  else {
    if (iVar5 != 3) {
      if (iVar5 != 1) goto LAB_0054eac2;
      goto LAB_0054eab2;
    }
    if (*piVar6 != *param_1) {
      piVar6 = piVar6 + 2;
      goto LAB_0054eaa8;
    }
  }
LAB_0054eaba:
  if (piVar6 != piVar1) {
    return piVar6[1];
  }
LAB_0054eac2:
  FUN_007aaa70(auStack_cc,0x18);
  pgVar2 = (gpg *)FUN_007bbcd0(auStack_c4,"Invalid conversion from ");
  uVar3 = gpg::operator<<(pgVar2,*param_1);
  uVar3 = FUN_007bbcd0(uVar3,": using ");
  uVar3 = thunk_FUN_007bbd6c(uVar3,*param_3);
  FUN_007bbcd0(uVar3,"instead.");
  FUN_007a9920(auStack_d0,auStack_c0);
  FUN_00516680(4,auStack_d0);
  FUN_007c5914(auStack_d0);
  iVar5 = *param_3;
  FUN_007a95a8(auStack_cc);
  return iVar5;
}

// ---- FUN_0054eb3c  @ 0x54eb3c
void FUN_0054eb3c(undefined4 param_1)

{
  undefined4 local_34 [2];
  undefined4 local_2c;
  undefined4 *local_28;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  undefined4 local_18;
  undefined4 local_14;
  undefined4 local_10;
  undefined4 local_c;
  
  local_28 = &local_20;
  local_20 = 1;
  local_14 = 1;
  local_10 = 3;
  local_24 = 3;
  local_1c = 0;
  local_18 = 2;
  local_c = 2;
  local_2c = 2;
  local_34[0] = param_1;
  FUN_0054ea48(local_34,&local_28,&local_2c);
  return;
}

// ---- FUN_0054eb70  @ 0x54eb70
int FUN_0054eb70(int *param_1,undefined4 *param_2,int *param_3)

{
  int *piVar1;
  gpg *pgVar2;
  undefined4 uVar3;
  int iVar4;
  int iVar5;
  int *piVar6;
  undefined1 auStack_d0 [4];
  undefined1 auStack_cc [8];
  undefined1 auStack_c4 [4];
  undefined1 auStack_c0 [176];
  
  piVar6 = (int *)*param_2;
  piVar1 = piVar6 + param_2[1] * 2;
  for (iVar5 = (int)(param_2[1] << 3) >> 5; 0 < iVar5; iVar5 = iVar5 + -1) {
    iVar4 = *param_1;
    if (*piVar6 == iVar4) goto LAB_0054ebe2;
    if (piVar6[2] == iVar4) {
      piVar6 = piVar6 + 2;
      goto LAB_0054ebe2;
    }
    if (piVar6[4] == iVar4) {
      piVar6 = piVar6 + 4;
      goto LAB_0054ebe2;
    }
    if (piVar6[6] == iVar4) {
      piVar6 = piVar6 + 6;
      goto LAB_0054ebe2;
    }
    piVar6 = piVar6 + 8;
  }
  iVar5 = (int)piVar1 - (int)piVar6 >> 3;
  if (iVar5 == 2) {
LAB_0054ebd0:
    if (*piVar6 != *param_1) {
      piVar6 = piVar6 + 2;
LAB_0054ebda:
      if (*piVar6 != *param_1) goto LAB_0054ebea;
    }
  }
  else {
    if (iVar5 != 3) {
      if (iVar5 != 1) goto LAB_0054ebea;
      goto LAB_0054ebda;
    }
    if (*piVar6 != *param_1) {
      piVar6 = piVar6 + 2;
      goto LAB_0054ebd0;
    }
  }
LAB_0054ebe2:
  if (piVar6 != piVar1) {
    return piVar6[1];
  }
LAB_0054ebea:
  FUN_007aaa70(auStack_cc,0x18);
  pgVar2 = (gpg *)FUN_007bbcd0(auStack_c4,"Invalid conversion from ");
  uVar3 = gpg::operator<<(pgVar2,*param_1);
  uVar3 = FUN_007bbcd0(uVar3,": using ");
  uVar3 = thunk_FUN_007bbd6c(uVar3,*param_3);
  FUN_007bbcd0(uVar3,"instead.");
  FUN_007a9920(auStack_d0,auStack_c0);
  FUN_00516680(4,auStack_d0);
  FUN_007c5914(auStack_d0);
  iVar5 = *param_3;
  FUN_007a95a8(auStack_cc);
  return iVar5;
}

// ---- FUN_0054ec64  @ 0x54ec64
void FUN_0054ec64(undefined4 param_1)

{
  undefined4 local_2c [2];
  undefined4 local_24;
  undefined4 *local_20;
  undefined4 local_1c;
  undefined4 local_18;
  undefined4 local_14;
  undefined4 local_10;
  undefined4 local_c;
  
  local_18 = 1;
  local_10 = 2;
  local_c = 1;
  local_20 = &local_18;
  local_1c = 2;
  local_14 = 0;
  local_24 = 0;
  local_2c[0] = param_1;
  FUN_0054eb70(local_2c,&local_20,&local_24);
  return;
}

// ---- FUN_0054ec90  @ 0x54ec90
int FUN_0054ec90(int *param_1,undefined4 *param_2,int *param_3)

{
  int *piVar1;
  undefined4 uVar2;
  gpg *pgVar3;
  int iVar4;
  int iVar5;
  int *piVar6;
  undefined1 auStack_d0 [4];
  undefined1 auStack_cc [8];
  undefined1 auStack_c4 [4];
  undefined1 auStack_c0 [176];
  
  piVar6 = (int *)*param_2;
  piVar1 = piVar6 + param_2[1] * 2;
  for (iVar5 = (int)(param_2[1] << 3) >> 5; 0 < iVar5; iVar5 = iVar5 + -1) {
    iVar4 = *param_1;
    if (*piVar6 == iVar4) goto LAB_0054ed02;
    if (piVar6[2] == iVar4) {
      piVar6 = piVar6 + 2;
      goto LAB_0054ed02;
    }
    if (piVar6[4] == iVar4) {
      piVar6 = piVar6 + 4;
      goto LAB_0054ed02;
    }
    if (piVar6[6] == iVar4) {
      piVar6 = piVar6 + 6;
      goto LAB_0054ed02;
    }
    piVar6 = piVar6 + 8;
  }
  iVar5 = (int)piVar1 - (int)piVar6 >> 3;
  if (iVar5 == 2) {
LAB_0054ecf0:
    if (*piVar6 != *param_1) {
      piVar6 = piVar6 + 2;
LAB_0054ecfa:
      if (*piVar6 != *param_1) goto LAB_0054ed0a;
    }
  }
  else {
    if (iVar5 != 3) {
      if (iVar5 != 1) goto LAB_0054ed0a;
      goto LAB_0054ecfa;
    }
    if (*piVar6 != *param_1) {
      piVar6 = piVar6 + 2;
      goto LAB_0054ecf0;
    }
  }
LAB_0054ed02:
  if (piVar6 != piVar1) {
    return piVar6[1];
  }
LAB_0054ed0a:
  FUN_007aaa70(auStack_cc,0x18);
  uVar2 = FUN_007bbcd0(auStack_c4,"Invalid conversion from ");
  uVar2 = thunk_FUN_007bbd6c(uVar2,*param_1);
  pgVar3 = (gpg *)FUN_007bbcd0(uVar2,": using ");
  uVar2 = gpg::operator<<(pgVar3,*param_3);
  FUN_007bbcd0(uVar2,"instead.");
  FUN_007a9920(auStack_d0,auStack_c0);
  FUN_00516680(4,auStack_d0);
  FUN_007c5914(auStack_d0);
  iVar5 = *param_3;
  FUN_007a95a8(auStack_cc);
  return iVar5;
}

// ---- FUN_0054ed84  @ 0x54ed84
void FUN_0054ed84(undefined4 param_1)

{
  undefined4 local_34 [2];
  undefined4 local_2c;
  undefined4 *local_28;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  undefined4 local_18;
  undefined4 local_14;
  undefined4 local_10;
  undefined4 local_c;
  
  local_28 = &local_20;
  local_20 = 0;
  local_1c = 1;
  local_18 = 1;
  local_14 = 2;
  local_10 = 2;
  local_c = 3;
  local_24 = 3;
  local_2c = 3;
  local_34[0] = param_1;
  FUN_0054ec90(local_34,&local_28,&local_2c);
  return;
}

// ---- FUN_0054edb8  @ 0x54edb8
int FUN_0054edb8(int *param_1,undefined4 *param_2,int *param_3)

{
  int *piVar1;
  undefined4 uVar2;
  gpg *pgVar3;
  int iVar4;
  int iVar5;
  int *piVar6;
  undefined1 auStack_d0 [4];
  undefined1 auStack_cc [8];
  undefined1 auStack_c4 [4];
  undefined1 auStack_c0 [176];
  
  piVar6 = (int *)*param_2;
  piVar1 = piVar6 + param_2[1] * 2;
  for (iVar5 = (int)(param_2[1] << 3) >> 5; 0 < iVar5; iVar5 = iVar5 + -1) {
    iVar4 = *param_1;
    if (*piVar6 == iVar4) goto LAB_0054ee2a;
    if (piVar6[2] == iVar4) {
      piVar6 = piVar6 + 2;
      goto LAB_0054ee2a;
    }
    if (piVar6[4] == iVar4) {
      piVar6 = piVar6 + 4;
      goto LAB_0054ee2a;
    }
    if (piVar6[6] == iVar4) {
      piVar6 = piVar6 + 6;
      goto LAB_0054ee2a;
    }
    piVar6 = piVar6 + 8;
  }
  iVar5 = (int)piVar1 - (int)piVar6 >> 3;
  if (iVar5 == 2) {
LAB_0054ee18:
    if (*piVar6 != *param_1) {
      piVar6 = piVar6 + 2;
LAB_0054ee22:
      if (*piVar6 != *param_1) goto LAB_0054ee32;
    }
  }
  else {
    if (iVar5 != 3) {
      if (iVar5 != 1) goto LAB_0054ee32;
      goto LAB_0054ee22;
    }
    if (*piVar6 != *param_1) {
      piVar6 = piVar6 + 2;
      goto LAB_0054ee18;
    }
  }
LAB_0054ee2a:
  if (piVar6 != piVar1) {
    return piVar6[1];
  }
LAB_0054ee32:
  FUN_007aaa70(auStack_cc,0x18);
  uVar2 = FUN_007bbcd0(auStack_c4,"Invalid conversion from ");
  uVar2 = thunk_FUN_007bbd6c(uVar2,*param_1);
  pgVar3 = (gpg *)FUN_007bbcd0(uVar2,": using ");
  uVar2 = gpg::operator<<(pgVar3,*param_3);
  FUN_007bbcd0(uVar2,"instead.");
  FUN_007a9920(auStack_d0,auStack_c0);
  FUN_00516680(4,auStack_d0);
  FUN_007c5914(auStack_d0);
  iVar5 = *param_3;
  FUN_007a95a8(auStack_cc);
  return iVar5;
}

// ---- FUN_0054eeac  @ 0x54eeac
void FUN_0054eeac(undefined4 param_1)

{
  undefined4 local_2c [2];
  undefined4 local_24;
  undefined4 *local_20;
  undefined4 local_1c;
  undefined4 local_18;
  undefined4 local_14;
  undefined4 local_10;
  undefined4 local_c;
  
  local_20 = &local_18;
  local_c = 2;
  local_1c = 2;
  local_18 = 0;
  local_14 = 1;
  local_10 = 1;
  local_24 = 1;
  local_2c[0] = param_1;
  FUN_0054edb8(local_2c,&local_20,&local_24);
  return;
}

// ---- FUN_0054eed8  @ 0x54eed8
int FUN_0054eed8(int *param_1,undefined4 *param_2,int *param_3)

{
  int *piVar1;
  undefined4 uVar2;
  gpg *pgVar3;
  int iVar4;
  int iVar5;
  int *piVar6;
  undefined1 auStack_d0 [4];
  undefined1 auStack_cc [8];
  undefined1 auStack_c4 [4];
  undefined1 auStack_c0 [176];
  
  piVar6 = (int *)*param_2;
  piVar1 = piVar6 + param_2[1] * 2;
  for (iVar5 = (int)(param_2[1] << 3) >> 5; 0 < iVar5; iVar5 = iVar5 + -1) {
    iVar4 = *param_1;
    if (*piVar6 == iVar4) goto LAB_0054ef4a;
    if (piVar6[2] == iVar4) {
      piVar6 = piVar6 + 2;
      goto LAB_0054ef4a;
    }
    if (piVar6[4] == iVar4) {
      piVar6 = piVar6 + 4;
      goto LAB_0054ef4a;
    }
    if (piVar6[6] == iVar4) {
      piVar6 = piVar6 + 6;
      goto LAB_0054ef4a;
    }
    piVar6 = piVar6 + 8;
  }
  iVar5 = (int)piVar1 - (int)piVar6 >> 3;
  if (iVar5 == 2) {
LAB_0054ef38:
    if (*piVar6 != *param_1) {
      piVar6 = piVar6 + 2;
LAB_0054ef42:
      if (*piVar6 != *param_1) goto LAB_0054ef52;
    }
  }
  else {
    if (iVar5 != 3) {
      if (iVar5 != 1) goto LAB_0054ef52;
      goto LAB_0054ef42;
    }
    if (*piVar6 != *param_1) {
      piVar6 = piVar6 + 2;
      goto LAB_0054ef38;
    }
  }
LAB_0054ef4a:
  if (piVar6 != piVar1) {
    return piVar6[1];
  }
LAB_0054ef52:
  FUN_007aaa70(auStack_cc,0x18);
  uVar2 = FUN_007bbcd0(auStack_c4,"Invalid conversion from ");
  uVar2 = thunk_FUN_007bbd6c(uVar2,*param_1);
  pgVar3 = (gpg *)FUN_007bbcd0(uVar2,": using ");
  uVar2 = gpg::operator<<(pgVar3,*param_3);
  FUN_007bbcd0(uVar2,"instead.");
  FUN_007a9920(auStack_d0,auStack_c0);
  FUN_00516680(4,auStack_d0);
  FUN_007c5914(auStack_d0);
  iVar5 = *param_3;
  FUN_007a95a8(auStack_cc);
  return iVar5;
}

// ---- FUN_0054efcc  @ 0x54efcc
void FUN_0054efcc(undefined4 param_1)

{
  undefined4 local_2c [2];
  undefined4 local_24;
  undefined4 *local_20;
  undefined4 local_1c;
  undefined4 local_18;
  undefined4 local_14;
  undefined4 local_10;
  undefined4 local_c;
  
  local_20 = &local_18;
  local_14 = 2;
  local_1c = 2;
  local_18 = 0;
  local_10 = 1;
  local_c = 1;
  local_24 = 1;
  local_2c[0] = param_1;
  FUN_0054eed8(local_2c,&local_20,&local_24);
  return;
}

// ---- FUN_0054eff8  @ 0x54eff8
undefined4 *
FUN_0054eff8(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
            undefined4 *param_5,undefined4 *param_6,undefined4 *param_7)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  undefined1 *puVar3;
  undefined1 *local_2c;
  undefined1 *local_28;
  undefined1 *local_24 [2];
  
  *param_1 = 0;
  param_1[1] = 0;
  puVar1 = operator_new(0x10);
  *param_1 = puVar1;
  FUN_007c64e8((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_24,param_4);
  puVar3 = (undefined1 *)*param_5;
  *param_5 = &DAT_00972528;
  uVar2 = *param_6;
  local_2c = (undefined1 *)*param_7;
  *param_7 = &DAT_00972528;
  local_28 = puVar3;
  if (puVar1 != (undefined4 *)0x0) {
    *puVar1 = local_24[0];
    local_28 = &DAT_00972528;
    puVar1[1] = puVar3;
    puVar1[2] = uVar2;
    puVar1[3] = local_2c;
    local_2c = &DAT_00972528;
    local_24[0] = &DAT_00972528;
  }
  FUN_007c5914(&local_2c);
  FUN_007c5914(&local_28);
  FUN_007c5914((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_24);
  uVar2 = *param_1;
  local_24[0] = (undefined1 *)0x0;
  puVar1 = operator_new(0x14);
  if (puVar1 != (undefined4 *)0x0) {
    puVar1[1] = 1;
    puVar1[2] = 1;
    puVar1[3] = uVar2;
    *puVar1 = &PTR_LAB_0054e9dc_1_00926bb0;
  }
  local_24[0] = (undefined1 *)param_1[1];
  param_1[1] = puVar1;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_24);
  return param_1;
}

// ---- FUN_0054f0d0  @ 0x54f0d0
Leaderboard * FUN_0054f0d0(Leaderboard *param_1,undefined4 param_2,int *param_3)

{
  undefined1 auStack_48 [4];
  undefined1 auStack_44 [4];
  undefined1 auStack_40 [4];
  undefined4 local_3c;
  undefined4 local_38;
  undefined4 local_34;
  undefined4 local_30;
  undefined4 local_2c;
  Leaderboard aLStack_28 [8];
  
  if (*(int *)(*param_3 + -0xc) == 0) {
    FUN_00549104(auStack_48,param_2,"getLeaderboardId");
  }
  else {
    FUN_007c64e8(auStack_48,param_3);
  }
  FUN_00549104(auStack_44,param_2,"getDisplayName");
  FUN_00548d1c(param_2,"getScoreOrder");
  local_3c = FUN_0054efcc();
  FUN_005490cc(auStack_40,param_2,&DAT_00801f93,"getIconImageUrl");
  FUN_0054eff8(&local_38,0,&local_30,auStack_48,auStack_44,&local_3c,auStack_40);
  local_30 = local_38;
  local_2c = local_34;
  local_34 = 0;
  local_38 = 0;
  gpg::Leaderboard::Leaderboard(aLStack_28,&local_30);
  gpg::Leaderboard::Leaderboard(param_1,aLStack_28);
  gpg::Leaderboard::~Leaderboard(aLStack_28);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_2c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_34);
  FUN_007c5914(auStack_40);
  FUN_007c5914(auStack_44);
  FUN_007c5914(auStack_48);
  return param_1;
}

// ---- FUN_0054f210  @ 0x54f210
undefined4 FUN_0054f210(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  switch(param_1) {
  case 0:
    return 6;
  case 1:
    return 3;
  case 2:
    return 5;
  case 3:
    break;
  case 4:
    return 2;
  case 5:
    return 1;
  default:
    FUN_005166ae(4,"Unrecognized Java match result: %d",param_1,param_4,param_4);
  }
  return 4;
}

// ---- FUN_0054f248  @ 0x54f248
undefined4 FUN_0054f248(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  switch(param_1) {
  case 0:
    break;
  case 1:
    return 1;
  case 2:
    return 2;
  case 3:
    return 3;
  case 4:
    return 4;
  case 5:
    return 6;
  case 6:
    return 7;
  default:
    FUN_005166ae(4,"Unrecognized participant status: %d",param_1,param_4,param_4);
  }
  return 5;
}

// ---- FUN_0054f288  @ 0x54f288
undefined4 *
FUN_0054f288(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 *param_4,
            undefined4 *param_5,undefined4 *param_6,undefined4 *param_7,Player *param_8,
            undefined4 *param_9,undefined4 *param_10,undefined4 *param_11,undefined1 *param_12,
            undefined4 param_13,undefined4 *param_14,undefined1 *param_15)

{
  undefined1 uVar1;
  undefined1 uVar2;
  undefined4 *puVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  undefined1 auStack_48 [4];
  undefined1 *local_44;
  undefined1 *local_40;
  undefined1 *local_3c;
  undefined1 *local_38;
  undefined1 *local_34;
  undefined4 local_30 [3];
  
  *param_1 = 0;
  param_1[1] = 0;
  puVar3 = operator_new(0x34);
  *param_1 = puVar3;
  local_34 = (undefined1 *)*param_4;
  *param_4 = &DAT_00972528;
  local_38 = (undefined1 *)*param_5;
  *param_5 = &DAT_00972528;
  local_3c = (undefined1 *)*param_6;
  *param_6 = &DAT_00972528;
  local_40 = (undefined1 *)*param_7;
  *param_7 = &DAT_00972528;
  gpg::Player::Player((Player *)local_30,param_8);
  uVar4 = *param_9;
  uVar5 = *param_10;
  uVar6 = *param_11;
  uVar1 = *param_12;
  FUN_007c6a60(&local_44,param_13,auStack_48);
  uVar7 = *param_14;
  uVar2 = *param_15;
  if (puVar3 != (undefined4 *)0x0) {
    *puVar3 = local_34;
    local_34 = &DAT_00972528;
    puVar3[1] = local_38;
    puVar3[2] = local_3c;
    puVar3[3] = local_40;
    local_40 = local_34;
    local_3c = local_34;
    local_38 = local_34;
    gpg::Player::Player((Player *)(puVar3 + 4),(Player *)local_30);
    puVar3[6] = uVar4;
    puVar3[7] = uVar5;
    puVar3[8] = uVar6;
    *(undefined1 *)(puVar3 + 9) = uVar1;
    puVar3[10] = local_44;
    local_44 = &DAT_00972528;
    *(undefined1 *)(puVar3 + 0xc) = uVar2;
    puVar3[0xb] = uVar7;
  }
  FUN_007c5914(&local_44);
  gpg::Player::~Player((Player *)local_30);
  FUN_007c5914(&local_40);
  FUN_007c5914(&local_3c);
  FUN_007c5914(&local_38);
  FUN_007c5914(&local_34);
  uVar4 = *param_1;
  local_30[0] = 0;
  puVar3 = operator_new(0x14);
  if (puVar3 != (undefined4 *)0x0) {
    puVar3[1] = 1;
    puVar3[2] = 1;
    puVar3[3] = uVar4;
    *puVar3 = &PTR_LAB_0052ae40_1_00924d58;
  }
  local_30[0] = param_1[1];
  param_1[1] = puVar3;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_30);
  return param_1;
}

// ---- FUN_0054f45c  @ 0x54f45c
undefined4 * FUN_0054f45c(undefined4 *param_1,undefined4 param_2)

{
  undefined4 uVar1;
  undefined4 uVar2;
  int iVar3;
  int iVar4;
  undefined1 auStack_94 [4];
  undefined1 auStack_90 [2];
  undefined1 local_8e;
  undefined1 local_8d;
  undefined4 local_8c;
  undefined4 local_88;
  undefined1 auStack_84 [4];
  undefined1 auStack_80 [4];
  undefined1 auStack_7c [4];
  undefined1 auStack_78 [4];
  undefined1 auStack_74 [4];
  undefined4 local_70;
  undefined4 local_6c;
  undefined4 local_68;
  undefined4 local_64;
  undefined4 local_60;
  undefined4 local_5c;
  Player aPStack_58 [8];
  undefined4 local_50;
  undefined4 local_4c;
  undefined1 auStack_48 [16];
  undefined1 auStack_38 [20];
  
  FUN_0054968c(auStack_48,param_2,&DAT_009621a4,"getPlayer",
               "()Lcom/google/android/gms/games/Player;");
  FUN_0054968c(auStack_38,param_2,&DAT_00961524,"getResult",
               "()Lcom/google/android/gms/games/multiplayer/ParticipantResult;");
  FUN_00548d1c(param_2,"getStatus");
  local_8c = FUN_0054f248();
  iVar3 = FUN_00548c48(auStack_38);
  if (iVar3 == 0) {
    FUN_00548d1c(auStack_38,"getResult");
    local_88 = FUN_0054f210();
  }
  else {
    local_88 = 4;
  }
  FUN_00549104(auStack_84,param_2,"getParticipantId");
  FUN_00549104(auStack_80,param_2,"getDisplayName");
  FUN_005490cc(auStack_7c,param_2,&DAT_00801f93,"getIconImageUrl");
  FUN_005490cc(auStack_78,param_2,&DAT_00801f93,"getHiResImageUrl");
  iVar3 = FUN_00548c48(auStack_48);
  if (iVar3 == 0) {
    FUN_007c6a60(auStack_74,&DAT_00801f93,auStack_94);
    FUN_005553d4(&local_68,auStack_48,auStack_74);
    local_5c = local_64;
    local_60 = local_68;
    local_68 = 0;
    local_64 = 0;
    gpg::Player::Player(aPStack_58,&local_60);
  }
  else {
    gpg::Player::Player(aPStack_58);
  }
  iVar4 = FUN_00548c48(auStack_38);
  if (iVar4 == 0) {
    local_70 = FUN_00548d1c(auStack_38,"getPlacing");
  }
  else {
    local_70 = 0;
  }
  local_8e = FUN_00548cb4(param_2,"isConnectedToRoom");
  local_6c = 0;
  local_8d = 0;
  FUN_0054f288(&local_50,0,auStack_90,auStack_84,auStack_80,auStack_7c,auStack_78,aPStack_58,
               &local_8c,&local_88,&local_70,&local_8e,&DAT_00801f93,&local_6c,&local_8d);
  uVar2 = local_4c;
  uVar1 = local_50;
  local_50 = 0;
  *param_1 = uVar1;
  local_4c = 0;
  param_1[1] = uVar2;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_4c);
  gpg::Player::~Player(aPStack_58);
  if (iVar3 == 0) {
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_5c);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_64);
    FUN_007c5914(auStack_74);
  }
  FUN_007c5914(auStack_78);
  FUN_007c5914(auStack_7c);
  FUN_007c5914(auStack_80);
  FUN_007c5914(auStack_84);
  FUN_00548ab0(auStack_38);
  FUN_00548ab0(auStack_48);
  return param_1;
}

// ---- FUN_0054f6ec  @ 0x54f6ec
MultiplayerParticipant *
FUN_0054f6ec(MultiplayerParticipant *param_1,undefined4 param_2,undefined4 param_3)

{
  int iVar1;
  undefined4 uVar2;
  undefined4 local_58;
  undefined4 local_54;
  undefined4 local_50;
  undefined4 local_4c;
  MultiplayerParticipant aMStack_48 [8];
  undefined1 auStack_40 [16];
  undefined1 auStack_30 [20];
  
  FUN_0054968c(auStack_40,param_2,&DAT_009628a4,param_3,"()Ljava/lang/String;");
  iVar1 = FUN_00548c48(auStack_40);
  if (iVar1 == 0) {
    uVar2 = FUN_00548bac(auStack_40);
    FUN_0054968c(auStack_30,param_2,&DAT_009617a4,"getParticipant",
                 "(Ljava/lang/String;)Lcom/google/android/gms/games/multiplayer/Participant;",uVar2)
    ;
    FUN_0054f45c(&local_58,auStack_30);
    local_50 = local_58;
    local_4c = local_54;
    local_54 = 0;
    local_58 = 0;
    gpg::MultiplayerParticipant::MultiplayerParticipant
              (aMStack_48,(MultiplayerParticipant *)&local_50);
    gpg::MultiplayerParticipant::MultiplayerParticipant(param_1,aMStack_48);
    gpg::MultiplayerParticipant::~MultiplayerParticipant(aMStack_48);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_4c);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_54);
    FUN_00548ab0(auStack_30);
  }
  else {
    gpg::MultiplayerParticipant::MultiplayerParticipant((MultiplayerParticipant *)&local_50);
    gpg::MultiplayerParticipant::MultiplayerParticipant(param_1,(MultiplayerParticipant *)&local_50)
    ;
    gpg::MultiplayerParticipant::~MultiplayerParticipant((MultiplayerParticipant *)&local_50);
  }
  FUN_00548ab0(auStack_40);
  return param_1;
}

// ---- FUN_0054f7ec  @ 0x54f7ec
undefined4 * FUN_0054f7ec(undefined4 *param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  int *piVar1;
  uint uVar2;
  int iVar3;
  void *pvVar4;
  int iVar5;
  undefined4 *puVar6;
  void *local_24;
  void *local_20;
  int local_1c;
  
  if (param_2 == 0) {
    *param_1 = 0;
    param_1[1] = 0;
    param_1[2] = 0;
  }
  else {
    puVar6 = param_1;
    local_24 = (void *)param_2;
    local_20 = (void *)param_3;
    local_1c = param_4;
    piVar1 = (int *)FUN_00549a1c();
    uVar2 = (**(code **)(*piVar1 + 0x2ac))(piVar1,param_2);
    iVar3 = (**(code **)(*piVar1 + 0x378))(piVar1,param_2,0,*(code **)(*piVar1 + 0x378),puVar6);
    local_24 = (void *)0x0;
    local_20 = (void *)0x0;
    local_1c = 0;
    pvVar4 = (void *)0x0;
    if (uVar2 != 0) {
      pvVar4 = operator_new(uVar2);
    }
    local_1c = (int)pvVar4 + uVar2;
    for (iVar5 = 0; 0 < (int)(uVar2 - iVar5); iVar5 = iVar5 + 1) {
      *(undefined1 *)((int)pvVar4 + iVar5) = *(undefined1 *)(iVar3 + iVar5);
    }
    local_20 = pvVar4;
    if (-1 < (int)uVar2) {
      local_20 = (void *)((int)pvVar4 + uVar2);
    }
    local_24 = pvVar4;
    (**(code **)(*piVar1 + 0x37c))(piVar1,param_2,iVar3,0);
    *param_1 = local_24;
    param_1[1] = local_20;
    param_1[2] = local_1c;
  }
  local_1c = 0;
  local_24 = (void *)local_1c;
  local_20 = (void *)local_1c;
  std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::~_Vector_base
            ((_Vector_base<unsigned_char,std::allocator<unsigned_char>> *)&local_24);
  return param_1;
}

// ---- FUN_0054f8a0  @ 0x54f8a0
undefined4 * FUN_0054f8a0(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0054f8a0_1_00926bf0;
  std::_Function_base::~_Function_base((_Function_base *)(param_1 + 1));
  *param_1 = &PTR_LAB_005333e4_1_00925210;
  return param_1;
}

// ---- FUN_0054f8c8  @ 0x54f8c8
void * FUN_0054f8c8(void *param_1)

{
  FUN_0054f8a0();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0054f8dc  @ 0x54f8dc
undefined4 * FUN_0054f8dc(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0054f8dc_1_00926bd0;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(param_1 + 4));
  FUN_005128f8(param_1);
  return param_1;
}

// ---- FUN_0054f8fc  @ 0x54f8fc
void * FUN_0054f8fc(void *param_1)

{
  FUN_0054f8dc();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0054f9e0  @ 0x54f9e0
undefined4 *
FUN_0054f9e0(undefined4 *param_1,undefined4 *param_2,undefined4 param_3,int *param_4,
            undefined4 *param_5)

{
  void *__dest;
  int iVar1;
  undefined4 uVar2;
  int iVar3;
  size_t __n;
  uint uVar4;
  undefined4 *puStack_1c;
  
  uVar2 = *param_2;
  puStack_1c = param_2;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&puStack_1c,
             (__shared_count *)(param_2 + 1));
  param_1[1] = 0;
  param_1[2] = 0;
  *param_1 = &PTR_FUN_0054f8dc_1_00926bd0;
  param_1[3] = uVar2;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(param_1 + 4),
             (__shared_count *)&puStack_1c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&puStack_1c);
  *param_1 = &PTR_FUN_0054fa9c_1_00926c08;
  FUN_007c64e8(param_1 + 5,param_3);
  iVar1 = param_4[1];
  iVar3 = *param_4;
  param_1[6] = 0;
  param_1[7] = 0;
  param_1[8] = 0;
  uVar4 = iVar1 - iVar3;
  if (uVar4 == 0) {
    __dest = (void *)0x0;
  }
  else {
    __dest = operator_new(uVar4);
  }
  param_1[6] = __dest;
  param_1[7] = __dest;
  param_1[8] = uVar4 + (int)__dest;
  __n = param_4[1] - *param_4;
  if (__n != 0) {
    memmove(__dest,(void *)*param_4,__n);
  }
  param_1[7] = (int)__dest + __n;
  param_1[9] = *param_5;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(param_1 + 10),
             (__shared_count *)(param_5 + 1));
  return param_1;
}

// ---- FUN_0054fa9c  @ 0x54fa9c
undefined4 * FUN_0054fa9c(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0054fa9c_1_00926c08;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(param_1 + 10));
  std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::~_Vector_base
            ((_Vector_base<unsigned_char,std::allocator<unsigned_char>> *)(param_1 + 6));
  FUN_007c5914(param_1 + 5);
  FUN_0054f8dc(param_1);
  return param_1;
}

// ---- FUN_0054facc  @ 0x54facc
void * FUN_0054facc(void *param_1)

{
  FUN_0054fa9c();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0054fade  @ 0x54fade
int FUN_0054fade(int param_1,int param_2)

{
  *(undefined4 *)(param_1 + 8) = 0;
  if (*(int *)(param_2 + 8) != 0) {
    *(undefined4 *)(param_1 + 0xc) = *(undefined4 *)(param_2 + 0xc);
    *(undefined4 *)(param_1 + 8) = *(undefined4 *)(param_2 + 8);
    (**(code **)(param_2 + 8))(param_1,param_2,2);
  }
  return param_1;
}

// ---- FUN_0054fb08  @ 0x54fb08
undefined4 * FUN_0054fb08(undefined4 *param_1,_Any_data *param_2)

{
  undefined4 uVar1;
  
  *param_1 = &PTR_FUN_0054f8a0_1_00926bf0;
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

// ---- FUN_0054fb3c  @ 0x54fb3c
void * FUN_0054fb3c(int param_1)

{
  void *pvVar1;
  _Function_base a_Stack_20 [20];
  
  FUN_0054fade(a_Stack_20,param_1 + 4);
  pvVar1 = operator_new(0x14);
  FUN_0054fb08(pvVar1,a_Stack_20);
  std::_Function_base::~_Function_base(a_Stack_20);
  return pvVar1;
}

// ---- FUN_0054fc2c  @ 0x54fc2c
undefined4 FUN_0054fc2c(undefined4 param_1,int param_2)

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
  undefined4 local_24;
  
  local_5c = *(int *)(param_2 + 8);
  if (local_5c == 0) goto LAB_0054fc48;
  piVar3 = (int *)(local_5c + 4);
  unaff_r5 = (_Function_base *)&local_30;
  local_30 = (undefined4 *)*(int *)(local_5c + 4);
  while( true ) {
    puVar4 = local_30;
    if (local_30 == (undefined4 *)0x0) {
LAB_0054fc48:
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
  local_24 = 0x5500cd;
  local_28 = (code *)0x54f99b;
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

// ---- FUN_0054fd68  @ 0x54fd68
undefined4 FUN_0054fd68(int param_1)

{
  void *pvVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_cc [4];
  undefined1 auStack_c8 [16];
  undefined4 *local_b8 [2];
  undefined1 *local_b0;
  undefined1 *local_ac;
  undefined4 *local_a8 [2];
  undefined1 *local_a0;
  undefined1 *local_9c;
  undefined1 auStack_98 [16];
  undefined1 auStack_88 [16];
  undefined1 auStack_78 [16];
  undefined1 auStack_68 [16];
  undefined1 auStack_58 [16];
  _Function_base a_Stack_48 [16];
  void *local_38;
  undefined4 local_34 [4];
  
  FUN_00545074(auStack_c8);
  uVar5 = *(undefined4 *)(param_1 + 0x24);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_cc,(__shared_count *)(param_1 + 0x28));
  local_38 = (void *)uVar5;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_34,(__shared_count *)a_Stack_cc);
  local_b0 = (undefined1 *)0x0;
  local_b8[0] = operator_new(8);
  uVar2 = local_34[0];
  *local_b8[0] = local_38;
  local_b8[0][1] = 0;
  local_34[0] = 0;
  local_b8[0][1] = uVar2;
  local_38 = (void *)0x0;
  local_ac = &LAB_0054fb6c_1;
  local_b0 = &LAB_0054f954_1;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_34);
  FUN_0054fade((_Function_base *)&local_38,(_Function_base *)local_b8);
  std::_Function_base::~_Function_base((_Function_base *)&local_38);
  FUN_0054fade(a_Stack_48,(_Function_base *)local_b8);
  pvVar1 = operator_new(0x14);
  FUN_0054fb08(pvVar1,a_Stack_48);
  local_38 = pvVar1;
  FUN_005453a8(auStack_c8,uVar5,0x545bc1,(_Function_base *)&local_38);
  FUN_00544d78((_Function_base *)&local_38);
  std::_Function_base::~_Function_base(a_Stack_48);
  local_38 = (void *)uVar5;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_34,(__shared_count *)a_Stack_cc);
  local_a0 = (undefined1 *)0x0;
  local_a8[0] = operator_new(8);
  uVar2 = local_34[0];
  *local_a8[0] = local_38;
  local_a8[0][1] = 0;
  local_34[0] = 0;
  local_a8[0][1] = uVar2;
  local_38 = (void *)0x0;
  local_9c = &LAB_0054fbe2_1;
  local_a0 = &LAB_0054f90e_1;
  FUN_00537340(auStack_c8,uVar5,0x5465ed,(_Function_base *)local_a8);
  std::_Function_base::~_Function_base((_Function_base *)local_a8);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_34);
  FUN_00547b10(auStack_98,&DAT_009618a4,&DAT_00962d24,"Connections",
               "Lcom/google/android/gms/nearby/connection/Connections;");
  uVar2 = FUN_00548bac(*(int *)(param_1 + 0xc) + 0x90);
  FUN_0054942c(auStack_88,param_1 + 0x14,0);
  uVar5 = FUN_00548bac(auStack_88);
  FUN_00549584(auStack_78,param_1 + 0x18,0);
  uVar3 = FUN_00548bac(auStack_78);
  uVar4 = FUN_00548bac(auStack_c8);
  FUN_0054968c(auStack_68,auStack_98,&DAT_00963024,"acceptConnectionRequest",
               "(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;[BLcom/google/android/gms/nearby/connection/Connections$MessageListener;)Lcom/google/android/gms/common/api/PendingResult;"
               ,uVar2,uVar5,uVar3,uVar4);
  FUN_0054fc2c(auStack_58,param_1);
  uVar2 = FUN_00548bac(auStack_58);
  FUN_00548d90(auStack_68,"setResultCallback",
               "(Lcom/google/android/gms/common/api/ResultCallback;)V",uVar2);
  FUN_00548ab0(auStack_58);
  FUN_00548ab0(auStack_68);
  FUN_00548ab0(auStack_78);
  FUN_00548ab0(auStack_88);
  FUN_00548ab0(auStack_98);
  std::_Function_base::~_Function_base((_Function_base *)local_b8);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_cc);
  FUN_00548ab0(auStack_c8);
  return 1;
}
