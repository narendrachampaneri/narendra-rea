// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 169 functions

// ---- FUN_0034033c  @ 0x34033c
undefined4 FUN_0034033c(_Any_data *param_1)

{
  undefined4 uVar1;
  
  uVar1 = std::_Any_data::_M_access(param_1);
  return uVar1;
}

// ---- FUN_0034045c  @ 0x34045c
undefined4 FUN_0034045c(_Any_data *param_1)

{
  undefined4 uVar1;
  
  uVar1 = std::_Any_data::_M_access(param_1);
  return uVar1;
}

// ---- FUN_0034054c  @ 0x34054c
undefined4 FUN_0034054c(_Any_data *param_1)

{
  undefined4 uVar1;
  
  uVar1 = std::_Any_data::_M_access(param_1);
  return uVar1;
}

// ---- FUN_003405a8  @ 0x3405a8
undefined4 FUN_003405a8(_Any_data *param_1)

{
  undefined4 uVar1;
  
  uVar1 = std::_Any_data::_M_access(param_1);
  return uVar1;
}

// ---- FUN_00340b74  @ 0x340b74
undefined4 FUN_00340b74(_Any_data *param_1)

{
  undefined4 uVar1;
  
  uVar1 = std::_Any_data::_M_access(param_1);
  return uVar1;
}

// ---- FUN_00340b8c  @ 0x340b8c
undefined4 FUN_00340b8c(_Any_data *param_1)

{
  undefined4 uVar1;
  
  uVar1 = std::_Any_data::_M_access(param_1);
  return uVar1;
}

// ---- FUN_00342654  @ 0x342654
void FUN_00342654(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  undefined4 uVar2;
  undefined1 auStack_c [4];
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_0095034c,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_00950354,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    uVar2 = 0;
    cocos2d::CCRect::CCRect((CCRect *)&DAT_0095035c,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
    FUN_00798644(&DAT_0095036c);
    FUN_007985bc(&DAT_0095036c,0x798b71,&DAT_00943000,&DAT_00943000,uVar2);
    FUN_0079a3f4(auStack_c);
    FUN_007c6a60(&DAT_00950370,"font02_new.png",auStack_c);
    FUN_0079a3fc(auStack_c);
    FUN_007985bc(&DAT_00950370,0x7c5915,&DAT_00943000);
    RakNet::SystemAddress::SystemAddress((SystemAddress *)&DAT_00950374);
    RakNet::RakNetGUID::RakNetGUID((RakNetGUID *)&DAT_00950388,0xffffffffffffffff);
  }
  return;
}

// ---- FUN_00342784  @ 0x342784
undefined4 FUN_00342784(void)

{
  return 1;
}

// ---- FUN_0034278c  @ 0x34278c
int FUN_0034278c(int *param_1,int param_2)

{
  bool bVar1;
  int iVar2;
  
  DataMemoryBarrier(0x1f);
  do {
    ExclusiveAccess(param_1);
    iVar2 = *param_1;
    bVar1 = (bool)hasExclusiveAccess(param_1);
  } while (!bVar1);
  *param_1 = iVar2 + param_2;
  DataMemoryBarrier(0x1f);
  return iVar2;
}

// ---- FUN_003427b8  @ 0x3427b8
int FUN_003427b8(int *param_1,int param_2)

{
  int iVar1;
  
  iVar1 = *param_1;
  *param_1 = *param_1 + param_2;
  return iVar1;
}

// ---- FUN_003427d8  @ 0x3427d8
undefined4 FUN_003427d8(undefined4 param_1,undefined4 param_2)

{
  int iVar1;
  undefined4 uVar2;
  
  iVar1 = FUN_00342784();
  if (iVar1 == 0) {
    uVar2 = FUN_003427b8(param_1,param_2);
  }
  else {
    uVar2 = FUN_0034278c(param_1,param_2);
  }
  return uVar2;
}

// ---- FUN_00342ac8  @ 0x342ac8
void FUN_00342ac8(void)

{
  return;
}

// ---- FUN_00342aec  @ 0x342aec
void FUN_00342aec(function<void(gpg::AuthOperation)> *param_1,undefined4 param_2)

{
  bool bVar1;
  
  GPGSStateManager::is_auth_in_progress_ = 1;
  bVar1 = std::operator!=(param_1,(_func_decltype_nullptr *)0x0);
  if (bVar1) {
    std::function<void(gpg::AuthOperation)>::operator()(param_1,param_2);
  }
  OnAuthActionStarted(param_2);
  return;
}

// ---- FUN_00342b30  @ 0x342b30
function<void(gpg::AuthOperation)> * FUN_00342b30(function<void(gpg::AuthOperation)> *param_1)

{
  std::function<void(gpg::AuthOperation)>::~function(param_1);
  return param_1;
}

// ---- FUN_00342b48  @ 0x342b48
function<void(gpg::AuthOperation)> *
FUN_00342b48(function<void(gpg::AuthOperation)> *param_1,function *param_2)

{
  std::function<void(gpg::AuthOperation)>::function(param_1,param_2);
  return param_1;
}

// ---- FUN_00342b68  @ 0x342b68
void FUN_00342b68(function<void(gpg::AuthOperation,gpg::AuthStatus)> *param_1,undefined4 param_2,
                 undefined4 param_3)

{
  bool bVar1;
  
  printf("GPGSStateManager: Sign in finished with a result of %d",param_3);
  GPGSStateManager::is_auth_in_progress_ = 0;
  bVar1 = std::operator!=(param_1,(_func_decltype_nullptr *)0x0);
  if (bVar1) {
    std::function<void(gpg::AuthOperation,gpg::AuthStatus)>::operator()(param_1,param_2,param_3);
  }
  OnAuthActionFinished(param_2,param_3);
  return;
}

// ---- FUN_00342bc0  @ 0x342bc0
function<void(gpg::AuthOperation,gpg::AuthStatus)> *
FUN_00342bc0(function<void(gpg::AuthOperation,gpg::AuthStatus)> *param_1)

{
  std::function<void(gpg::AuthOperation,gpg::AuthStatus)>::~function(param_1);
  return param_1;
}

// ---- FUN_00342bd8  @ 0x342bd8
function<void(gpg::AuthOperation,gpg::AuthStatus)> *
FUN_00342bd8(function<void(gpg::AuthOperation,gpg::AuthStatus)> *param_1,function *param_2)

{
  std::function<void(gpg::AuthOperation,gpg::AuthStatus)>::function(param_1,param_2);
  return param_1;
}

// ---- FUN_00342c50  @ 0x342c50
void FUN_00342c50(undefined4 param_1,undefined4 param_2,undefined4 param_3,
                 MultiplayerInvitation *param_4)

{
  undefined4 uVar1;
  undefined1 auStack_1c [4];
  MultiplayerInvitation aMStack_18 [16];
  
  uVar1 = GPGSRealtimeMultiplayerManager::sharedInstance();
  FUN_007c64e8(auStack_1c,param_3);
  gpg::MultiplayerInvitation::MultiplayerInvitation(aMStack_18,param_4);
  GPGSRealtimeMultiplayerManager::OnMultiplayerInvitation(uVar1,param_2,auStack_1c,aMStack_18);
  gpg::MultiplayerInvitation::~MultiplayerInvitation(aMStack_18);
  FUN_007c5914(auStack_1c);
  return;
}

// ---- FUN_00342cb0  @ 0x342cb0
function<void(gpg::MultiplayerEvent,std::string,gpg::MultiplayerInvitation)> *
FUN_00342cb0(function<void(gpg::MultiplayerEvent,std::string,gpg::MultiplayerInvitation)> *param_1)

{
  std::function<void(gpg::MultiplayerEvent,std::string,gpg::MultiplayerInvitation)>::~function
            (param_1);
  return param_1;
}

// ---- FUN_00342cc8  @ 0x342cc8
function<void(gpg::MultiplayerEvent,std::string,gpg::MultiplayerInvitation)> *
FUN_00342cc8(function<void(gpg::MultiplayerEvent,std::string,gpg::MultiplayerInvitation)> *param_1,
            function *param_2)

{
  std::function<void(gpg::MultiplayerEvent,std::string,gpg::MultiplayerInvitation)>::function
            (param_1,param_2);
  return param_1;
}

// ---- FUN_0034305c  @ 0x34305c
void FUN_0034305c(function<void(gpg::AchievementManager::FetchAllResponse_const&)> *param_1,
                 FetchAllResponse *param_2)

{
  bool bVar1;
  Achievement *pAVar2;
  undefined4 local_1c;
  undefined4 local_18;
  vector<gpg::Achievement,std::allocator<gpg::Achievement>> *local_14;
  Achievement aAStack_10 [12];
  
  local_14 = (vector<gpg::Achievement,std::allocator<gpg::Achievement>> *)(param_2 + 4);
  local_1c = std::vector<gpg::Achievement,std::allocator<gpg::Achievement>>::begin(local_14);
  local_18 = std::vector<gpg::Achievement,std::allocator<gpg::Achievement>>::end(local_14);
  while (bVar1 = __gnu_cxx::operator!=
                           ((__normal_iterator *)&local_1c,(__normal_iterator *)&local_18), bVar1) {
    pAVar2 = (Achievement *)
             __gnu_cxx::
             __normal_iterator<gpg::Achievement*,std::vector<gpg::Achievement,std::allocator<gpg::Achievement>>>
             ::operator*((__normal_iterator<gpg::Achievement*,std::vector<gpg::Achievement,std::allocator<gpg::Achievement>>>
                          *)&local_1c);
    gpg::Achievement::Achievement(aAStack_10,pAVar2);
    gpg::Achievement::~Achievement(aAStack_10);
    __gnu_cxx::
    __normal_iterator<gpg::Achievement*,std::vector<gpg::Achievement,std::allocator<gpg::Achievement>>>
    ::operator++((__normal_iterator<gpg::Achievement*,std::vector<gpg::Achievement,std::allocator<gpg::Achievement>>>
                  *)&local_1c);
  }
  bVar1 = std::operator!=(param_1,(_func_decltype_nullptr *)0x0);
  if (bVar1) {
    std::function<void(gpg::AchievementManager::FetchAllResponse_const&)>::operator()
              (param_1,param_2);
  }
  return;
}

// ---- FUN_003430f0  @ 0x3430f0
function<void(gpg::AchievementManager::FetchAllResponse_const&)> *
FUN_003430f0(function<void(gpg::AchievementManager::FetchAllResponse_const&)> *param_1)

{
  std::function<void(gpg::AchievementManager::FetchAllResponse_const&)>::~function(param_1);
  return param_1;
}

// ---- FUN_00343108  @ 0x343108
function<void(gpg::AchievementManager::FetchAllResponse_const&)> *
FUN_00343108(function<void(gpg::AchievementManager::FetchAllResponse_const&)> *param_1,
            function *param_2)

{
  std::function<void(gpg::AchievementManager::FetchAllResponse_const&)>::function(param_1,param_2);
  return param_1;
}

// ---- FUN_00343254  @ 0x343254
void FUN_00343254(void)

{
  return;
}

// ---- FUN_003432f0  @ 0x3432f0
void FUN_003432f0(void)

{
  return;
}

// ---- FUN_003435bc  @ 0x3435bc
undefined4 FUN_003435bc(undefined4 param_1)

{
  return param_1;
}

// ---- FUN_003435c8  @ 0x3435c8
_Function_base *
FUN_003435c8(_Maybe_unary_or_binary_function<void,gpg::LogLevel,std::string_const&> *param_1,
            undefined1 param_2)

{
  _Function_base *p_Var1;
  int iVar2;
  undefined4 uVar3;
  undefined1 local_10 [4];
  _Function_base *local_c;
  
  local_10[0] = param_2;
  local_c = (_Function_base *)param_1;
  std::_Maybe_unary_or_binary_function<void,gpg::LogLevel,std::string_const&>::
  _Maybe_unary_or_binary_function(param_1);
  std::_Function_base::_Function_base(local_c);
  iVar2 = FUN_00343ea0(local_10);
  p_Var1 = local_c;
  if (iVar2 != 0) {
    uVar3 = FUN_003435bc(local_10);
    FUN_00343eac(p_Var1,uVar3);
    *(undefined4 *)(local_c + 0xc) = 0x343ed9;
    *(undefined4 *)(local_c + 8) = 0x343f0d;
  }
  return local_c;
}

// ---- FUN_00343714  @ 0x343714
undefined4 FUN_00343714(undefined4 param_1)

{
  return param_1;
}

// ---- FUN_00343720  @ 0x343720
_Maybe_unary_or_binary_function<void,gpg::AuthOperation> *
FUN_00343720(_Maybe_unary_or_binary_function<void,gpg::AuthOperation> *param_1,undefined4 param_2)

{
  int iVar1;
  undefined4 uVar2;
  
  std::_Maybe_unary_or_binary_function<void,gpg::AuthOperation>::_Maybe_unary_or_binary_function
            (param_1);
  std::_Function_base::_Function_base((_Function_base *)param_1);
  iVar1 = FUN_00343fe0(param_2);
  if (iVar1 != 0) {
    uVar2 = FUN_00343714(param_2);
    FUN_00343fec(param_1,uVar2);
    *(undefined4 *)(param_1 + 0xc) = 0x34400d;
    *(undefined4 *)(param_1 + 8) = 0x344035;
  }
  return param_1;
}

// ---- FUN_00343878  @ 0x343878
undefined4 FUN_00343878(undefined4 param_1)

{
  return param_1;
}

// ---- FUN_00343884  @ 0x343884
_Maybe_unary_or_binary_function<void,gpg::AuthOperation,gpg::AuthStatus> *
FUN_00343884(_Maybe_unary_or_binary_function<void,gpg::AuthOperation,gpg::AuthStatus> *param_1,
            undefined4 param_2)

{
  int iVar1;
  undefined4 uVar2;
  
  std::_Maybe_unary_or_binary_function<void,gpg::AuthOperation,gpg::AuthStatus>::
  _Maybe_unary_or_binary_function(param_1);
  std::_Function_base::_Function_base((_Function_base *)param_1);
  iVar1 = FUN_00344108(param_2);
  if (iVar1 != 0) {
    uVar2 = FUN_00343878(param_2);
    FUN_00344114(param_1,uVar2);
    *(undefined4 *)(param_1 + 0xc) = 0x344135;
    *(undefined4 *)(param_1 + 8) = 0x34416d;
  }
  return param_1;
}

// ---- FUN_0034397c  @ 0x34397c
undefined4 FUN_0034397c(undefined4 param_1)

{
  return param_1;
}

// ---- FUN_00343988  @ 0x343988
_Maybe_unary_or_binary_function<void,gpg::MultiplayerEvent,std::string,gpg::MultiplayerInvitation> *
FUN_00343988(_Maybe_unary_or_binary_function<void,gpg::MultiplayerEvent,std::string,gpg::MultiplayerInvitation>
             *param_1,undefined4 param_2)

{
  int iVar1;
  undefined4 uVar2;
  
  std::
  _Maybe_unary_or_binary_function<void,gpg::MultiplayerEvent,std::string,gpg::MultiplayerInvitation>
  ::_Maybe_unary_or_binary_function(param_1);
  std::_Function_base::_Function_base((_Function_base *)param_1);
  iVar1 = FUN_00344240(param_2);
  if (iVar1 != 0) {
    uVar2 = FUN_0034397c(param_2);
    FUN_0034424c(param_1,uVar2);
    *(undefined4 *)(param_1 + 0xc) = 0x344285;
    *(undefined4 *)(param_1 + 8) = 0x344301;
  }
  return param_1;
}

// ---- FUN_00343c30  @ 0x343c30
undefined4 FUN_00343c30(undefined4 param_1)

{
  return param_1;
}

// ---- FUN_00343c3c  @ 0x343c3c
_Maybe_unary_or_binary_function<void,gpg::AchievementManager::FetchAllResponse_const&> *
FUN_00343c3c(_Maybe_unary_or_binary_function<void,gpg::AchievementManager::FetchAllResponse_const&>
             *param_1,undefined4 param_2)

{
  int iVar1;
  undefined4 uVar2;
  
  std::_Maybe_unary_or_binary_function<void,gpg::AchievementManager::FetchAllResponse_const&>::
  _Maybe_unary_or_binary_function(param_1);
  std::_Function_base::_Function_base((_Function_base *)param_1);
  iVar1 = FUN_0034445c(param_2);
  if (iVar1 != 0) {
    uVar2 = FUN_00343c30(param_2);
    FUN_00344468(param_1,uVar2);
    *(undefined4 *)(param_1 + 0xc) = 0x3444d1;
    *(undefined4 *)(param_1 + 8) = 0x344519;
  }
  return param_1;
}

// ---- FUN_00343cc4  @ 0x343cc4
undefined4 FUN_00343cc4(undefined4 param_1)

{
  return param_1;
}

// ---- FUN_00343cd0  @ 0x343cd0
_Function_base *
FUN_00343cd0(_Maybe_unary_or_binary_function<void,gpg::UIStatus_const&> *param_1,undefined1 param_2)

{
  _Function_base *p_Var1;
  int iVar2;
  undefined4 uVar3;
  undefined1 local_10 [4];
  _Function_base *local_c;
  
  local_10[0] = param_2;
  local_c = (_Function_base *)param_1;
  std::_Maybe_unary_or_binary_function<void,gpg::UIStatus_const&>::_Maybe_unary_or_binary_function
            (param_1);
  std::_Function_base::_Function_base(local_c);
  iVar2 = FUN_0034458c(local_10);
  p_Var1 = local_c;
  if (iVar2 != 0) {
    uVar3 = FUN_00343cc4(local_10);
    FUN_00344598(p_Var1,uVar3);
    *(undefined4 *)(local_c + 0xc) = 0x3445c5;
    *(undefined4 *)(local_c + 8) = 0x3445e9;
  }
  return local_c;
}

// ---- FUN_00343d38  @ 0x343d38
undefined4 FUN_00343d38(undefined4 param_1)

{
  return param_1;
}

// ---- FUN_00343d44  @ 0x343d44
_Function_base *
FUN_00343d44(_Maybe_unary_or_binary_function<void,gpg::UIStatus_const&> *param_1,undefined1 param_2)

{
  _Function_base *p_Var1;
  int iVar2;
  undefined4 uVar3;
  undefined1 local_10 [4];
  _Function_base *local_c;
  
  local_10[0] = param_2;
  local_c = (_Function_base *)param_1;
  std::_Maybe_unary_or_binary_function<void,gpg::UIStatus_const&>::_Maybe_unary_or_binary_function
            (param_1);
  std::_Function_base::_Function_base(local_c);
  iVar2 = FUN_0034465c(local_10);
  p_Var1 = local_c;
  if (iVar2 != 0) {
    uVar3 = FUN_00343d38(local_10);
    FUN_00344668(p_Var1,uVar3);
    *(undefined4 *)(local_c + 0xc) = 0x344689;
    *(undefined4 *)(local_c + 8) = 0x3446ad;
  }
  return local_c;
}

// ---- FUN_00343ea0  @ 0x343ea0
undefined4 FUN_00343ea0(void)

{
  return 1;
}

// ---- FUN_00343eac  @ 0x343eac
void FUN_00343eac(undefined4 param_1,undefined4 param_2)

{
  undefined4 uVar1;
  
  uVar1 = FUN_003435bc(param_2);
  FUN_00344740(param_1,uVar1);
  return;
}

// ---- FUN_00343ed8  @ 0x343ed8
void FUN_00343ed8(undefined4 param_1,undefined4 param_2,type *param_3)

{
  undefined4 uVar1;
  LogLevel *pLVar2;
  string *psVar3;
  undefined4 uVar4;
  undefined4 local_18;
  undefined4 local_14;
  
  local_18 = param_2;
  local_14 = param_1;
  uVar1 = FUN_00344768(param_1);
  pLVar2 = std::forward<gpg::LogLevel>((type *)&local_18);
  uVar4 = *(undefined4 *)pLVar2;
  psVar3 = std::forward<std::string_const&>(param_3);
  FUN_00342ac8(uVar1,uVar4,psVar3);
  return;
}

// ---- FUN_00343f0c  @ 0x343f0c
undefined4 FUN_00343f0c(_Any_data *param_1,undefined4 param_2,undefined4 param_3)

{
  type_info **pptVar1;
  undefined4 *puVar2;
  undefined4 uVar3;
  
  switch(param_3) {
  case 0:
    pptVar1 = std::_Any_data::_M_access<std::type_info_const*>(param_1);
    *pptVar1 = (type_info *)&PTR_PTR_009120e0;
    break;
  case 1:
    puVar2 = (undefined4 *)FUN_00344784(param_1);
    uVar3 = FUN_00344768(param_2);
    *puVar2 = uVar3;
    break;
  case 2:
    FUN_0034479c(param_1,param_2);
    break;
  case 3:
    FUN_003447c4(param_1);
  }
  return 0;
}

// ---- FUN_00343fe0  @ 0x343fe0
undefined4 FUN_00343fe0(void)

{
  return 1;
}

// ---- FUN_00343fec  @ 0x343fec
void FUN_00343fec(undefined4 param_1,undefined4 param_2)

{
  undefined4 uVar1;
  
  uVar1 = FUN_00343714(param_2);
  FUN_003448e0(param_1,uVar1);
  return;
}

// ---- FUN_0034400c  @ 0x34400c
void FUN_0034400c(undefined4 param_1,undefined4 param_2)

{
  undefined4 uVar1;
  AuthOperation *pAVar2;
  undefined4 local_10;
  undefined4 local_c;
  
  local_10 = param_2;
  local_c = param_1;
  uVar1 = FUN_00344920(param_1);
  pAVar2 = std::forward<gpg::AuthOperation>((type *)&local_10);
  FUN_00342aec(uVar1,*(undefined4 *)pAVar2);
  return;
}

// ---- FUN_00344034  @ 0x344034
undefined4 FUN_00344034(_Any_data *param_1,undefined4 param_2,undefined4 param_3)

{
  type_info **pptVar1;
  undefined4 *puVar2;
  undefined4 uVar3;
  
  switch(param_3) {
  case 0:
    pptVar1 = std::_Any_data::_M_access<std::type_info_const*>(param_1);
    *pptVar1 = (type_info *)&PTR_PTR_009120e8;
    break;
  case 1:
    puVar2 = (undefined4 *)FUN_0034493c(param_1);
    uVar3 = FUN_00344920(param_2);
    *puVar2 = uVar3;
    break;
  case 2:
    FUN_00344974(param_1,param_2);
    break;
  case 3:
    FUN_003449b4(param_1);
  }
  return 0;
}

// ---- FUN_00344108  @ 0x344108
undefined4 FUN_00344108(void)

{
  return 1;
}

// ---- FUN_00344114  @ 0x344114
void FUN_00344114(undefined4 param_1,undefined4 param_2)

{
  undefined4 uVar1;
  
  uVar1 = FUN_00343878(param_2);
  FUN_00344a20(param_1,uVar1);
  return;
}

// ---- FUN_00344134  @ 0x344134
void FUN_00344134(undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 uVar1;
  AuthOperation *pAVar2;
  AuthStatus *pAVar3;
  undefined4 uVar4;
  undefined4 local_1c;
  undefined4 local_18;
  undefined4 local_14;
  
  local_1c = param_3;
  local_18 = param_2;
  local_14 = param_1;
  uVar1 = FUN_00344a60(param_1);
  pAVar2 = std::forward<gpg::AuthOperation>((type *)&local_18);
  uVar4 = *(undefined4 *)pAVar2;
  pAVar3 = std::forward<gpg::AuthStatus>((type *)&local_1c);
  FUN_00342b68(uVar1,uVar4,*(undefined4 *)pAVar3);
  return;
}

// ---- FUN_0034416c  @ 0x34416c
undefined4 FUN_0034416c(_Any_data *param_1,undefined4 param_2,undefined4 param_3)

{
  type_info **pptVar1;
  undefined4 *puVar2;
  undefined4 uVar3;
  
  switch(param_3) {
  case 0:
    pptVar1 = std::_Any_data::_M_access<std::type_info_const*>(param_1);
    *pptVar1 = (type_info *)&PTR_PTR_009120f0;
    break;
  case 1:
    puVar2 = (undefined4 *)FUN_00344a7c(param_1);
    uVar3 = FUN_00344a60(param_2);
    *puVar2 = uVar3;
    break;
  case 2:
    FUN_00344ab4(param_1,param_2);
    break;
  case 3:
    FUN_00344af4(param_1);
  }
  return 0;
}

// ---- FUN_00344240  @ 0x344240
undefined4 FUN_00344240(void)

{
  return 1;
}

// ---- FUN_0034424c  @ 0x34424c
void FUN_0034424c(undefined4 param_1,undefined4 param_2)

{
  undefined4 uVar1;
  
  uVar1 = FUN_0034397c(param_2);
  FUN_00344b60(param_1,uVar1);
  return;
}

// ---- FUN_00344284  @ 0x344284
void FUN_00344284(undefined4 param_1,undefined4 param_2,type *param_3,type *param_4)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  string *psVar3;
  MultiplayerInvitation *pMVar4;
  undefined4 uVar5;
  undefined4 local_30;
  undefined4 local_2c;
  undefined1 auStack_24 [4];
  MultiplayerInvitation aMStack_20 [20];
  
  local_30 = param_2;
  local_2c = param_1;
  uVar1 = FUN_00344ba0(param_1);
  puVar2 = (undefined4 *)std::forward<gpg::MultiplayerEvent>((type *)&local_30);
  uVar5 = *puVar2;
  psVar3 = std::forward<std::string>(param_3);
  FUN_007c51c0(auStack_24,psVar3);
  pMVar4 = (MultiplayerInvitation *)std::forward<gpg::MultiplayerInvitation>(param_4);
  gpg::MultiplayerInvitation::MultiplayerInvitation(aMStack_20,pMVar4);
  FUN_00342c50(uVar1,uVar5,auStack_24,aMStack_20);
  gpg::MultiplayerInvitation::~MultiplayerInvitation(aMStack_20);
  FUN_007c5914(auStack_24);
  return;
}

// ---- FUN_00344300  @ 0x344300
undefined4 FUN_00344300(_Any_data *param_1,undefined4 param_2,undefined4 param_3)

{
  type_info **pptVar1;
  undefined4 *puVar2;
  undefined4 uVar3;
  
  switch(param_3) {
  case 0:
    pptVar1 = std::_Any_data::_M_access<std::type_info_const*>(param_1);
    *pptVar1 = (type_info *)&PTR_PTR_009120f8;
    break;
  case 1:
    puVar2 = (undefined4 *)FUN_00344bbc(param_1);
    uVar3 = FUN_00344ba0(param_2);
    *puVar2 = uVar3;
    break;
  case 2:
    FUN_00344bf4(param_1,param_2);
    break;
  case 3:
    FUN_00344c34(param_1);
  }
  return 0;
}

// ---- FUN_0034445c  @ 0x34445c
undefined4 FUN_0034445c(void)

{
  return 1;
}

// ---- FUN_00344468  @ 0x344468
void FUN_00344468(undefined4 param_1,undefined4 param_2)

{
  undefined4 uVar1;
  
  uVar1 = FUN_00343c30(param_2);
  FUN_00344ce4(param_1,uVar1);
  return;
}

// ---- FUN_003444d0  @ 0x3444d0
void FUN_003444d0(undefined4 param_1,type *param_2)

{
  undefined4 uVar1;
  FetchAllResponse *pFVar2;
  FetchAllResponse aFStack_18 [16];
  
  uVar1 = FUN_00344d24(param_1);
  pFVar2 = std::forward<gpg::AchievementManager::FetchAllResponse_const&>(param_2);
  gpg::AchievementManager::FetchAllResponse::FetchAllResponse(aFStack_18,pFVar2);
  FUN_0034305c(uVar1,aFStack_18);
  gpg::AchievementManager::FetchAllResponse::~FetchAllResponse(aFStack_18);
  return;
}

// ---- FUN_00344518  @ 0x344518
undefined4 FUN_00344518(_Any_data *param_1,undefined4 param_2,undefined4 param_3)

{
  type_info **pptVar1;
  undefined4 *puVar2;
  undefined4 uVar3;
  
  switch(param_3) {
  case 0:
    pptVar1 = std::_Any_data::_M_access<std::type_info_const*>(param_1);
    *pptVar1 = (type_info *)&PTR_PTR_00912100;
    break;
  case 1:
    puVar2 = (undefined4 *)FUN_00344e00(param_1);
    uVar3 = FUN_00344d24(param_2);
    *puVar2 = uVar3;
    break;
  case 2:
    FUN_00344e38(param_1,param_2);
    break;
  case 3:
    FUN_00344e78(param_1);
  }
  return 0;
}

// ---- FUN_0034458c  @ 0x34458c
undefined4 FUN_0034458c(void)

{
  return 1;
}

// ---- FUN_00344598  @ 0x344598
void FUN_00344598(undefined4 param_1,undefined4 param_2)

{
  undefined4 uVar1;
  
  uVar1 = FUN_00343cc4(param_2);
  FUN_00344ea0(param_1,uVar1);
  return;
}

// ---- FUN_003445c4  @ 0x3445c4
void FUN_003445c4(undefined4 param_1,type *param_2)

{
  undefined4 uVar1;
  UIStatus *pUVar2;
  
  uVar1 = FUN_00344ec8(param_1);
  pUVar2 = std::forward<gpg::UIStatus_const&>(param_2);
  FUN_00343254(uVar1,pUVar2);
  return;
}

// ---- FUN_003445e8  @ 0x3445e8
undefined4 FUN_003445e8(_Any_data *param_1,undefined4 param_2,undefined4 param_3)

{
  type_info **pptVar1;
  undefined4 *puVar2;
  undefined4 uVar3;
  
  switch(param_3) {
  case 0:
    pptVar1 = std::_Any_data::_M_access<std::type_info_const*>(param_1);
    *pptVar1 = (type_info *)&PTR_PTR_00912108;
    break;
  case 1:
    puVar2 = (undefined4 *)FUN_00344ee4(param_1);
    uVar3 = FUN_00344ec8(param_2);
    *puVar2 = uVar3;
    break;
  case 2:
    FUN_00344efc(param_1,param_2);
    break;
  case 3:
    FUN_00344f24(param_1);
  }
  return 0;
}

// ---- FUN_0034465c  @ 0x34465c
undefined4 FUN_0034465c(void)

{
  return 1;
}

// ---- FUN_00344668  @ 0x344668
void FUN_00344668(undefined4 param_1,undefined4 param_2)

{
  undefined4 uVar1;
  
  uVar1 = FUN_00343d38(param_2);
  FUN_00344f44(param_1,uVar1);
  return;
}

// ---- FUN_00344688  @ 0x344688
void FUN_00344688(undefined4 param_1,type *param_2)

{
  undefined4 uVar1;
  UIStatus *pUVar2;
  
  uVar1 = FUN_00344f6c(param_1);
  pUVar2 = std::forward<gpg::UIStatus_const&>(param_2);
  FUN_003432f0(uVar1,pUVar2);
  return;
}

// ---- FUN_003446ac  @ 0x3446ac
undefined4 FUN_003446ac(_Any_data *param_1,undefined4 param_2,undefined4 param_3)

{
  type_info **pptVar1;
  undefined4 *puVar2;
  undefined4 uVar3;
  
  switch(param_3) {
  case 0:
    pptVar1 = std::_Any_data::_M_access<std::type_info_const*>(param_1);
    *pptVar1 = (type_info *)&PTR_PTR_00912110;
    break;
  case 1:
    puVar2 = (undefined4 *)FUN_00344f88(param_1);
    uVar3 = FUN_00344f6c(param_2);
    *puVar2 = uVar3;
    break;
  case 2:
    FUN_00344fa0(param_1,param_2);
    break;
  case 3:
    FUN_00344fc8(param_1);
  }
  return 0;
}

// ---- FUN_00344740  @ 0x344740
void FUN_00344740(undefined4 param_1,undefined4 param_2)

{
  void *pvVar1;
  undefined4 *puVar2;
  
  FUN_003435bc(param_2);
  pvVar1 = operator_new(1);
  puVar2 = (undefined4 *)FUN_00344784(param_1);
  *puVar2 = pvVar1;
  return;
}

// ---- FUN_00344768  @ 0x344768
undefined4 FUN_00344768(undefined4 param_1)

{
  undefined4 *puVar1;
  
  puVar1 = (undefined4 *)FUN_00344fe8(param_1);
  return *puVar1;
}

// ---- FUN_00344784  @ 0x344784
undefined4 FUN_00344784(_Any_data *param_1)

{
  undefined4 uVar1;
  
  uVar1 = std::_Any_data::_M_access(param_1);
  return uVar1;
}

// ---- FUN_0034479c  @ 0x34479c
void FUN_0034479c(undefined4 param_1,undefined4 param_2)

{
  void *pvVar1;
  undefined4 *puVar2;
  
  FUN_00344fe8(param_2);
  pvVar1 = operator_new(1);
  puVar2 = (undefined4 *)FUN_00344784(param_1);
  *puVar2 = pvVar1;
  return;
}

// ---- FUN_003447c4  @ 0x3447c4
void FUN_003447c4(undefined4 param_1)

{
  undefined4 *puVar1;
  
  puVar1 = (undefined4 *)FUN_00344784(param_1);
  operator_delete((void *)*puVar1);
  return;
}

// ---- FUN_003448e0  @ 0x3448e0
void FUN_003448e0(undefined4 param_1,undefined4 param_2)

{
  undefined4 uVar1;
  void *pvVar2;
  undefined4 *puVar3;
  
  uVar1 = FUN_00343714(param_2);
  pvVar2 = operator_new(0x10);
  FUN_00342b48(pvVar2,uVar1);
  puVar3 = (undefined4 *)FUN_0034493c(param_1);
  *puVar3 = pvVar2;
  return;
}

// ---- FUN_00344920  @ 0x344920
undefined4 FUN_00344920(undefined4 param_1)

{
  undefined4 *puVar1;
  
  puVar1 = (undefined4 *)FUN_00345000(param_1);
  return *puVar1;
}

// ---- FUN_0034493c  @ 0x34493c
undefined4 FUN_0034493c(_Any_data *param_1)

{
  undefined4 uVar1;
  
  uVar1 = std::_Any_data::_M_access(param_1);
  return uVar1;
}

// ---- FUN_00344954  @ 0x344954
function<void(gpg::AuthOperation)> *
FUN_00344954(function<void(gpg::AuthOperation)> *param_1,function *param_2)

{
  std::function<void(gpg::AuthOperation)>::function(param_1,param_2);
  return param_1;
}

// ---- FUN_00344974  @ 0x344974
void FUN_00344974(undefined4 param_1,undefined4 param_2)

{
  undefined4 *puVar1;
  void *pvVar2;
  undefined4 uVar3;
  
  puVar1 = (undefined4 *)FUN_00345000(param_2);
  uVar3 = *puVar1;
  pvVar2 = operator_new(0x10);
  FUN_00344954(pvVar2,uVar3);
  puVar1 = (undefined4 *)FUN_0034493c(param_1);
  *puVar1 = pvVar2;
  return;
}

// ---- FUN_003449b4  @ 0x3449b4
void FUN_003449b4(undefined4 param_1)

{
  undefined4 *puVar1;
  void *pvVar2;
  
  puVar1 = (undefined4 *)FUN_0034493c(param_1);
  pvVar2 = (void *)*puVar1;
  if (pvVar2 != (void *)0x0) {
    FUN_00342b30(pvVar2);
    operator_delete(pvVar2);
  }
  return;
}

// ---- FUN_00344a20  @ 0x344a20
void FUN_00344a20(undefined4 param_1,undefined4 param_2)

{
  undefined4 uVar1;
  void *pvVar2;
  undefined4 *puVar3;
  
  uVar1 = FUN_00343878(param_2);
  pvVar2 = operator_new(0x10);
  FUN_00342bd8(pvVar2,uVar1);
  puVar3 = (undefined4 *)FUN_00344a7c(param_1);
  *puVar3 = pvVar2;
  return;
}

// ---- FUN_00344a60  @ 0x344a60
undefined4 FUN_00344a60(undefined4 param_1)

{
  undefined4 *puVar1;
  
  puVar1 = (undefined4 *)FUN_00345018(param_1);
  return *puVar1;
}

// ---- FUN_00344a7c  @ 0x344a7c
undefined4 FUN_00344a7c(_Any_data *param_1)

{
  undefined4 uVar1;
  
  uVar1 = std::_Any_data::_M_access(param_1);
  return uVar1;
}

// ---- FUN_00344a94  @ 0x344a94
function<void(gpg::AuthOperation,gpg::AuthStatus)> *
FUN_00344a94(function<void(gpg::AuthOperation,gpg::AuthStatus)> *param_1,function *param_2)

{
  std::function<void(gpg::AuthOperation,gpg::AuthStatus)>::function(param_1,param_2);
  return param_1;
}

// ---- FUN_00344ab4  @ 0x344ab4
void FUN_00344ab4(undefined4 param_1,undefined4 param_2)

{
  undefined4 *puVar1;
  void *pvVar2;
  undefined4 uVar3;
  
  puVar1 = (undefined4 *)FUN_00345018(param_2);
  uVar3 = *puVar1;
  pvVar2 = operator_new(0x10);
  FUN_00344a94(pvVar2,uVar3);
  puVar1 = (undefined4 *)FUN_00344a7c(param_1);
  *puVar1 = pvVar2;
  return;
}

// ---- FUN_00344af4  @ 0x344af4
void FUN_00344af4(undefined4 param_1)

{
  undefined4 *puVar1;
  void *pvVar2;
  
  puVar1 = (undefined4 *)FUN_00344a7c(param_1);
  pvVar2 = (void *)*puVar1;
  if (pvVar2 != (void *)0x0) {
    FUN_00342bc0(pvVar2);
    operator_delete(pvVar2);
  }
  return;
}

// ---- FUN_00344b60  @ 0x344b60
void FUN_00344b60(undefined4 param_1,undefined4 param_2)

{
  undefined4 uVar1;
  void *pvVar2;
  undefined4 *puVar3;
  
  uVar1 = FUN_0034397c(param_2);
  pvVar2 = operator_new(0x10);
  FUN_00342cc8(pvVar2,uVar1);
  puVar3 = (undefined4 *)FUN_00344bbc(param_1);
  *puVar3 = pvVar2;
  return;
}

// ---- FUN_00344ba0  @ 0x344ba0
undefined4 FUN_00344ba0(undefined4 param_1)

{
  undefined4 *puVar1;
  
  puVar1 = (undefined4 *)FUN_00345030(param_1);
  return *puVar1;
}

// ---- FUN_00344bbc  @ 0x344bbc
undefined4 FUN_00344bbc(_Any_data *param_1)

{
  undefined4 uVar1;
  
  uVar1 = std::_Any_data::_M_access(param_1);
  return uVar1;
}

// ---- FUN_00344bd4  @ 0x344bd4
function<void(gpg::MultiplayerEvent,std::string,gpg::MultiplayerInvitation)> *
FUN_00344bd4(function<void(gpg::MultiplayerEvent,std::string,gpg::MultiplayerInvitation)> *param_1,
            function *param_2)

{
  std::function<void(gpg::MultiplayerEvent,std::string,gpg::MultiplayerInvitation)>::function
            (param_1,param_2);
  return param_1;
}

// ---- FUN_00344bf4  @ 0x344bf4
void FUN_00344bf4(undefined4 param_1,undefined4 param_2)

{
  undefined4 *puVar1;
  void *pvVar2;
  undefined4 uVar3;
  
  puVar1 = (undefined4 *)FUN_00345030(param_2);
  uVar3 = *puVar1;
  pvVar2 = operator_new(0x10);
  FUN_00344bd4(pvVar2,uVar3);
  puVar1 = (undefined4 *)FUN_00344bbc(param_1);
  *puVar1 = pvVar2;
  return;
}

// ---- FUN_00344c34  @ 0x344c34
void FUN_00344c34(undefined4 param_1)

{
  undefined4 *puVar1;
  void *pvVar2;
  
  puVar1 = (undefined4 *)FUN_00344bbc(param_1);
  pvVar2 = (void *)*puVar1;
  if (pvVar2 != (void *)0x0) {
    FUN_00342cb0(pvVar2);
    operator_delete(pvVar2);
  }
  return;
}

// ---- FUN_00344ce4  @ 0x344ce4
void FUN_00344ce4(undefined4 param_1,undefined4 param_2)

{
  undefined4 uVar1;
  void *pvVar2;
  undefined4 *puVar3;
  
  uVar1 = FUN_00343c30(param_2);
  pvVar2 = operator_new(0x10);
  FUN_00343108(pvVar2,uVar1);
  puVar3 = (undefined4 *)FUN_00344e00(param_1);
  *puVar3 = pvVar2;
  return;
}

// ---- FUN_00344d24  @ 0x344d24
undefined4 FUN_00344d24(undefined4 param_1)

{
  undefined4 *puVar1;
  
  puVar1 = (undefined4 *)FUN_00345048(param_1);
  return *puVar1;
}

// ---- FUN_00344e00  @ 0x344e00
undefined4 FUN_00344e00(_Any_data *param_1)

{
  undefined4 uVar1;
  
  uVar1 = std::_Any_data::_M_access(param_1);
  return uVar1;
}

// ---- FUN_00344e18  @ 0x344e18
function<void(gpg::AchievementManager::FetchAllResponse_const&)> *
FUN_00344e18(function<void(gpg::AchievementManager::FetchAllResponse_const&)> *param_1,
            function *param_2)

{
  std::function<void(gpg::AchievementManager::FetchAllResponse_const&)>::function(param_1,param_2);
  return param_1;
}

// ---- FUN_00344e38  @ 0x344e38
void FUN_00344e38(undefined4 param_1,undefined4 param_2)

{
  undefined4 *puVar1;
  void *pvVar2;
  undefined4 uVar3;
  
  puVar1 = (undefined4 *)FUN_00345048(param_2);
  uVar3 = *puVar1;
  pvVar2 = operator_new(0x10);
  FUN_00344e18(pvVar2,uVar3);
  puVar1 = (undefined4 *)FUN_00344e00(param_1);
  *puVar1 = pvVar2;
  return;
}

// ---- FUN_00344e78  @ 0x344e78
void FUN_00344e78(undefined4 param_1)

{
  undefined4 *puVar1;
  void *pvVar2;
  
  puVar1 = (undefined4 *)FUN_00344e00(param_1);
  pvVar2 = (void *)*puVar1;
  if (pvVar2 != (void *)0x0) {
    FUN_003430f0(pvVar2);
    operator_delete(pvVar2);
  }
  return;
}

// ---- FUN_00344ea0  @ 0x344ea0
void FUN_00344ea0(undefined4 param_1,undefined4 param_2)

{
  void *pvVar1;
  undefined4 *puVar2;
  
  FUN_00343cc4(param_2);
  pvVar1 = operator_new(1);
  puVar2 = (undefined4 *)FUN_00344ee4(param_1);
  *puVar2 = pvVar1;
  return;
}

// ---- FUN_00344ec8  @ 0x344ec8
undefined4 FUN_00344ec8(undefined4 param_1)

{
  undefined4 *puVar1;
  
  puVar1 = (undefined4 *)FUN_003451c4(param_1);
  return *puVar1;
}

// ---- FUN_00344ee4  @ 0x344ee4
undefined4 FUN_00344ee4(_Any_data *param_1)

{
  undefined4 uVar1;
  
  uVar1 = std::_Any_data::_M_access(param_1);
  return uVar1;
}

// ---- FUN_00344efc  @ 0x344efc
void FUN_00344efc(undefined4 param_1,undefined4 param_2)

{
  void *pvVar1;
  undefined4 *puVar2;
  
  FUN_003451c4(param_2);
  pvVar1 = operator_new(1);
  puVar2 = (undefined4 *)FUN_00344ee4(param_1);
  *puVar2 = pvVar1;
  return;
}

// ---- FUN_00344f24  @ 0x344f24
void FUN_00344f24(undefined4 param_1)

{
  undefined4 *puVar1;
  
  puVar1 = (undefined4 *)FUN_00344ee4(param_1);
  operator_delete((void *)*puVar1);
  return;
}

// ---- FUN_00344f44  @ 0x344f44
void FUN_00344f44(undefined4 param_1,undefined4 param_2)

{
  void *pvVar1;
  undefined4 *puVar2;
  
  FUN_00343d38(param_2);
  pvVar1 = operator_new(1);
  puVar2 = (undefined4 *)FUN_00344f88(param_1);
  *puVar2 = pvVar1;
  return;
}

// ---- FUN_00344f6c  @ 0x344f6c
undefined4 FUN_00344f6c(undefined4 param_1)

{
  undefined4 *puVar1;
  
  puVar1 = (undefined4 *)FUN_003451dc(param_1);
  return *puVar1;
}

// ---- FUN_00344f88  @ 0x344f88
undefined4 FUN_00344f88(_Any_data *param_1)

{
  undefined4 uVar1;
  
  uVar1 = std::_Any_data::_M_access(param_1);
  return uVar1;
}

// ---- FUN_00344fa0  @ 0x344fa0
void FUN_00344fa0(undefined4 param_1,undefined4 param_2)

{
  void *pvVar1;
  undefined4 *puVar2;
  
  FUN_003451dc(param_2);
  pvVar1 = operator_new(1);
  puVar2 = (undefined4 *)FUN_00344f88(param_1);
  *puVar2 = pvVar1;
  return;
}

// ---- FUN_00344fc8  @ 0x344fc8
void FUN_00344fc8(undefined4 param_1)

{
  undefined4 *puVar1;
  
  puVar1 = (undefined4 *)FUN_00344f88(param_1);
  operator_delete((void *)*puVar1);
  return;
}

// ---- FUN_00344fe8  @ 0x344fe8
undefined4 FUN_00344fe8(_Any_data *param_1)

{
  undefined4 uVar1;
  
  uVar1 = std::_Any_data::_M_access(param_1);
  return uVar1;
}

// ---- FUN_00345000  @ 0x345000
undefined4 FUN_00345000(_Any_data *param_1)

{
  undefined4 uVar1;
  
  uVar1 = std::_Any_data::_M_access(param_1);
  return uVar1;
}

// ---- FUN_00345018  @ 0x345018
undefined4 FUN_00345018(_Any_data *param_1)

{
  undefined4 uVar1;
  
  uVar1 = std::_Any_data::_M_access(param_1);
  return uVar1;
}

// ---- FUN_00345030  @ 0x345030
undefined4 FUN_00345030(_Any_data *param_1)

{
  undefined4 uVar1;
  
  uVar1 = std::_Any_data::_M_access(param_1);
  return uVar1;
}

// ---- FUN_00345048  @ 0x345048
undefined4 FUN_00345048(_Any_data *param_1)

{
  undefined4 uVar1;
  
  uVar1 = std::_Any_data::_M_access(param_1);
  return uVar1;
}

// ---- FUN_003451c4  @ 0x3451c4
undefined4 FUN_003451c4(_Any_data *param_1)

{
  undefined4 uVar1;
  
  uVar1 = std::_Any_data::_M_access(param_1);
  return uVar1;
}

// ---- FUN_003451dc  @ 0x3451dc
undefined4 FUN_003451dc(_Any_data *param_1)

{
  undefined4 uVar1;
  
  uVar1 = std::_Any_data::_M_access(param_1);
  return uVar1;
}

// ---- FUN_00345524  @ 0x345524
void FUN_00345524(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  undefined4 uVar2;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_009503a0,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_009503a8,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    uVar2 = 0;
    cocos2d::CCRect::CCRect((CCRect *)&DAT_009503b0,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
    FUN_00798644(&DAT_009503c0);
    FUN_007985bc(&DAT_009503c0,0x798b71,&DAT_00943000,&DAT_00943000,uVar2);
    FUN_007985bc(&GPGSStateManager::game_services_,0x3434cd,&DAT_00943000);
  }
  return;
}

// ---- FUN_003455f8  @ 0x3455f8
uint FUN_003455f8(undefined1 param_1,undefined1 param_2,undefined1 param_3)

{
  undefined2 local_8;
  undefined1 local_4 [4];
  
  local_8 = CONCAT11(param_2,param_1);
  local_4._0_3_ = CONCAT12(param_3,local_8);
  return CONCAT13(0,local_4._0_3_);
}

// ---- FUN_00345654  @ 0x345654
CCPoint * FUN_00345654(CCPoint *param_1,CCPoint *param_2)

{
  cocos2d::CCPoint::operator+(param_1,param_2);
  return param_1;
}

// ---- FUN_00345674  @ 0x345674
undefined4 * FUN_00345674(undefined4 *param_1)

{
  undefined8 in_d0;
  undefined8 in_d1;
  undefined4 local_18;
  undefined4 uStack_14;
  undefined4 local_10;
  undefined4 uStack_c;
  
  local_10 = (undefined4)in_d0;
  uStack_c = (undefined4)((ulonglong)in_d0 >> 0x20);
  *param_1 = local_10;
  param_1[1] = uStack_c;
  local_18 = (undefined4)in_d1;
  uStack_14 = (undefined4)((ulonglong)in_d1 >> 0x20);
  param_1[2] = local_18;
  param_1[3] = uStack_14;
  return param_1;
}

// ---- FUN_0034569c  @ 0x34569c
CCRect * FUN_0034569c(float param_1,float param_2,float param_3,float param_4,CCRect *param_5)

{
  cocos2d::CCRect::CCRect(param_5,param_1,param_2,param_3,param_4);
  return param_5;
}

// ---- FUN_00345b48  @ 0x345b48
uint FUN_00345b48(float param_1,float param_2,float param_3)

{
  undefined4 uVar1;
  undefined4 extraout_r0;
  undefined4 extraout_r1;
  uint in_fpscr;
  uint uVar2;
  double in_d0;
  float fVar3;
  float fVar4;
  uint3 local_2c;
  float local_28;
  float local_24;
  float local_20;
  
  uVar2 = in_fpscr & 0xfffffff | (uint)(param_2 == 0.0) << 0x1e;
  if ((byte)(uVar2 >> 0x1e) == 0) {
    floor(in_d0);
    uVar1 = (undefined4)(longlong)(double)CONCAT44(extraout_r1,extraout_r0);
    fVar3 = (float)VectorSignedToFloat(uVar1,(byte)(uVar2 >> 0x16) & 3);
    fVar3 = param_1 / 60.0 - fVar3;
    fVar4 = (1.0 - param_2) * param_3;
    local_20 = (1.0 - param_2 * fVar3) * param_3;
    fVar3 = (1.0 - (1.0 - fVar3) * param_2) * param_3;
    local_28 = param_3;
    local_24 = fVar4;
    switch(uVar1) {
    case 0:
      local_24 = fVar3;
      local_20 = fVar4;
      break;
    case 1:
      local_28 = local_20;
      local_24 = param_3;
      local_20 = fVar4;
      break;
    case 2:
      local_28 = fVar4;
      local_24 = param_3;
      local_20 = fVar3;
      break;
    case 3:
      local_28 = fVar4;
      local_24 = local_20;
      local_20 = param_3;
      break;
    case 4:
      local_28 = fVar3;
      local_20 = param_3;
    }
    local_2c = FUN_003455f8((uint)(0.0 < local_28) * (int)local_28 & 0xff,
                            (uint)(0.0 < local_24) * (int)local_24 & 0xff,
                            (uint)(0.0 < local_20) * (int)local_20 & 0xff);
  }
  else {
    local_2c = FUN_003455f8((uint)(0.0 < param_3) * (int)param_3 & 0xff,
                            (uint)(0.0 < param_3) * (int)param_3 & 0xff,
                            (uint)(0.0 < param_3) * (int)param_3 & 0xff);
  }
  return (uint)local_2c;
}

// ---- FUN_00345d4c  @ 0x345d4c
vector<std::string,std::allocator<std::string>> *
FUN_00345d4c(vector<std::string,std::allocator<std::string>> *param_1,undefined4 param_2,
            char *param_3)

{
  int iVar1;
  int iVar2;
  size_t sVar3;
  string asStack_18 [4];
  string asStack_14 [4];
  int local_10;
  int local_c;
  
  std::vector<std::string,std::allocator<std::string>>::vector(param_1);
  local_10 = 0;
  local_c = 0;
  while (local_10 != -1) {
    local_10 = FUN_007c5380(param_2,param_3,local_c);
    iVar1 = local_c;
    if (local_10 == -1) {
      iVar2 = FUN_007c505c(param_2);
      FUN_007c6728(asStack_18,param_2,iVar1,iVar2 - local_c);
      std::vector<std::string,std::allocator<std::string>>::push_back(param_1,asStack_18);
      FUN_007c5914(asStack_18);
    }
    else {
      FUN_007c6728(asStack_14,param_2,local_c,local_10 - local_c);
      std::vector<std::string,std::allocator<std::string>>::push_back(param_1,asStack_14);
      FUN_007c5914(asStack_14);
    }
    sVar3 = strlen(param_3);
    local_c = local_10 + sVar3;
  }
  return param_1;
}

// ---- FUN_00345e0c  @ 0x345e0c
undefined4 FUN_00345e0c(undefined4 param_1,int param_2)

{
  undefined1 *puVar1;
  undefined1 auStack_68 [4];
  undefined1 auStack_64 [4];
  undefined1 auStack_60 [4];
  undefined1 auStack_5c [4];
  undefined1 auStack_58 [4];
  undefined1 auStack_54 [4];
  undefined1 auStack_50 [4];
  undefined1 auStack_4c [4];
  undefined1 auStack_48 [4];
  undefined1 auStack_44 [4];
  undefined1 auStack_40 [4];
  undefined1 auStack_3c [4];
  undefined1 auStack_38 [4];
  undefined1 auStack_34 [4];
  undefined1 auStack_30 [4];
  undefined1 auStack_2c [4];
  undefined1 auStack_28 [4];
  undefined1 auStack_24 [4];
  undefined1 auStack_20 [4];
  undefined1 auStack_1c [4];
  undefined1 auStack_18 [4];
  undefined1 auStack_14 [4];
  
  puVar1 = &stack0xfffffff0;
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_64,"PRIVATE",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_60,"PRIVATE 1ST CLASS",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_5c,"CORPORAL",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_58,"SERGEANT",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_54,"STAFF SERGEANT",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_50,"SERGEANT 1ST CLASS",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_4c,"MASTER SERGEANT",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_48,"1ST SERGEANT",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_44,"SERGEANT MAJOR",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_40,"2ND LIEUTENANT",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_3c,"1ST LIEUTENANT",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_38,"CAPTAIN",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_34,"MAJOR",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_30,"LIEUTENANT COLONEL",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_2c,"COLONEL",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_28,"BRIGADIER GENERAL",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_24,"MAJOR GENERAL",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_20,"LIEUTENANT GENERAL",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_1c,"GENERAL",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_18,"ARMY GENERAL",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_14,"COMMANDER IN CHIEF",auStack_68);
  FUN_0079a3fc(auStack_68);
  if ((param_2 < 0) || (DAT_0094333c <= param_2)) {
    FUN_0079a3f4(auStack_68);
    FUN_007c6a60(param_1,"INVALID",auStack_68);
    FUN_0079a3fc(auStack_68);
  }
  else {
    FUN_007c64e8(param_1,auStack_64 + param_2 * 4);
  }
  while (puVar1 != auStack_64) {
    puVar1 = puVar1 + -4;
    FUN_007c5914(puVar1);
  }
  return param_1;
}

// ---- FUN_003462dc  @ 0x3462dc
undefined4 FUN_003462dc(int param_1)

{
  undefined4 uVar1;
  undefined4 auStack_5c [22];
  
  memcpy(auStack_5c,&DAT_007d918c,0x54);
  if ((param_1 < 0) || (DAT_0094333c <= param_1)) {
    uVar1 = 0xffffffff;
  }
  else {
    uVar1 = auStack_5c[param_1];
  }
  return uVar1;
}

// ---- FUN_00347884  @ 0x347884
void FUN_00347884(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  undefined4 uVar2;
  undefined1 auStack_c [4];
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_009503c8,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_009503d0,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    uVar2 = 0;
    cocos2d::CCRect::CCRect((CCRect *)&DAT_009503d8,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
    FUN_00798644(&DAT_009503e8);
    FUN_007985bc(&DAT_009503e8,0x798b71,&DAT_00943000,&DAT_00943000,uVar2);
    FUN_0079a3f4(auStack_c);
    FUN_007c6a60(&DAT_009503ec,"font02_new.png",auStack_c);
    FUN_0079a3fc(auStack_c);
    FUN_007985bc(&DAT_009503ec,0x7c5915,&DAT_00943000);
    RakNet::SystemAddress::SystemAddress((SystemAddress *)&DAT_009503f0);
    RakNet::RakNetGUID::RakNetGUID((RakNetGUID *)&DAT_00950408,0xffffffffffffffff);
  }
  return;
}

// ---- FUN_003479b4  @ 0x3479b4
long FUN_003479b4(void)

{
  long lVar1;
  
  lVar1 = lrand48();
  return lVar1;
}

// ---- FUN_003479c0  @ 0x3479c0
uint FUN_003479c0(undefined1 param_1,undefined1 param_2,undefined1 param_3)

{
  undefined2 local_8;
  undefined1 local_4 [4];
  
  local_8 = CONCAT11(param_2,param_1);
  local_4._0_3_ = CONCAT12(param_3,local_8);
  return CONCAT13(0,local_4._0_3_);
}

// ---- FUN_00347a1c  @ 0x347a1c
undefined4 * FUN_00347a1c(undefined4 *param_1)

{
  undefined8 in_d0;
  undefined8 in_d1;
  undefined4 local_18;
  undefined4 uStack_14;
  undefined4 local_10;
  undefined4 uStack_c;
  
  local_10 = (undefined4)in_d0;
  uStack_c = (undefined4)((ulonglong)in_d0 >> 0x20);
  *param_1 = local_10;
  param_1[1] = uStack_c;
  local_18 = (undefined4)in_d1;
  uStack_14 = (undefined4)((ulonglong)in_d1 >> 0x20);
  param_1[2] = local_18;
  param_1[3] = uStack_14;
  return param_1;
}

// ---- FUN_00347a44  @ 0x347a44
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x00347a8e */
/* WARNING: Restarted to delay deadcode elimination for space: register */

undefined4 FUN_00347a44(undefined4 param_1)

{
  double in_d0;
  double in_d1;
  double in_d2;
  double in_d3;
  
  FUN_00347a1c(SUB84(in_d0 - in_d2,0),(int)((ulonglong)in_d0 >> 0x20),SUB84(in_d1 - in_d3,0),param_1
              );
  return param_1;
}

// ---- FUN_00347a9c  @ 0x347a9c
CCRect * FUN_00347a9c(float param_1,float param_2,float param_3,float param_4,CCRect *param_5)

{
  cocos2d::CCRect::CCRect(param_5,param_1,param_2,param_3,param_4);
  return param_5;
}

// ---- FUN_00347d90  @ 0x347d90
undefined4
FUN_00347d90(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
            double param_5,double param_6)

{
  float fVar1;
  undefined4 uVar2;
  float fVar3;
  float fVar4;
  float fVar5;
  float fVar6;
  
  fVar1 = (float)(**(code **)(*scaleLayer + 0x34))(scaleLayer);
  fVar3 = (float)(param_5 * (double)fVar1 + 10.0);
  fVar1 = (float)(**(code **)(*scaleLayer + 0x3c))(scaleLayer);
  fVar4 = (float)(param_6 * (double)fVar1 + 10.0);
  fVar5 = (float)screenSize / 2.0;
  fVar1 = (float)(**(code **)(*scaleLayer + 0x34))(scaleLayer);
  fVar5 = fVar5 / fVar1;
  fVar6 = screenSize._4_4_ / 2.0;
  fVar1 = (float)(**(code **)(*scaleLayer + 0x3c))(scaleLayer);
  fVar6 = fVar6 / fVar1;
  if ((double)CONCAT44(param_2,param_1) <= (double)((float)centerPoint + fVar5 + fVar3)) {
    if ((int)((uint)((double)CONCAT44(param_2,param_1) <
                    (double)(((float)centerPoint - fVar5) - fVar3)) << 0x1f) < 0) {
      uVar2 = 0;
    }
    else if ((double)CONCAT44(param_4,param_3) <= (double)(centerPoint._4_4_ + fVar6 + fVar4)) {
      if ((int)((uint)((double)CONCAT44(param_4,param_3) <
                      (double)((centerPoint._4_4_ - fVar6) - fVar4)) << 0x1f) < 0) {
        uVar2 = 0;
      }
      else {
        uVar2 = 1;
      }
    }
    else {
      uVar2 = 0;
    }
  }
  else {
    uVar2 = 0;
  }
  return uVar2;
}

// ---- FUN_00347f48  @ 0x347f48
uint FUN_00347f48(float param_1,float param_2,float param_3)

{
  undefined4 uVar1;
  undefined4 extraout_r0;
  undefined4 extraout_r1;
  uint in_fpscr;
  uint uVar2;
  double in_d0;
  float fVar3;
  float fVar4;
  uint3 local_2c;
  float local_28;
  float local_24;
  float local_20;
  
  uVar2 = in_fpscr & 0xfffffff | (uint)(param_2 == 0.0) << 0x1e;
  if ((byte)(uVar2 >> 0x1e) == 0) {
    floor(in_d0);
    uVar1 = (undefined4)(longlong)(double)CONCAT44(extraout_r1,extraout_r0);
    fVar3 = (float)VectorSignedToFloat(uVar1,(byte)(uVar2 >> 0x16) & 3);
    fVar3 = param_1 / 60.0 - fVar3;
    fVar4 = (1.0 - param_2) * param_3;
    local_20 = (1.0 - param_2 * fVar3) * param_3;
    fVar3 = (1.0 - (1.0 - fVar3) * param_2) * param_3;
    local_28 = param_3;
    local_24 = fVar4;
    switch(uVar1) {
    case 0:
      local_24 = fVar3;
      local_20 = fVar4;
      break;
    case 1:
      local_28 = local_20;
      local_24 = param_3;
      local_20 = fVar4;
      break;
    case 2:
      local_28 = fVar4;
      local_24 = param_3;
      local_20 = fVar3;
      break;
    case 3:
      local_28 = fVar4;
      local_24 = local_20;
      local_20 = param_3;
      break;
    case 4:
      local_28 = fVar3;
      local_20 = param_3;
    }
    local_2c = FUN_003479c0((uint)(0.0 < local_28) * (int)local_28 & 0xff,
                            (uint)(0.0 < local_24) * (int)local_24 & 0xff,
                            (uint)(0.0 < local_20) * (int)local_20 & 0xff);
  }
  else {
    local_2c = FUN_003479c0((uint)(0.0 < param_3) * (int)param_3 & 0xff,
                            (uint)(0.0 < param_3) * (int)param_3 & 0xff,
                            (uint)(0.0 < param_3) * (int)param_3 & 0xff);
  }
  return (uint)local_2c;
}

// ---- FUN_0034814c  @ 0x34814c
vector<std::string,std::allocator<std::string>> *
FUN_0034814c(vector<std::string,std::allocator<std::string>> *param_1,undefined4 param_2,
            char *param_3)

{
  int iVar1;
  int iVar2;
  size_t sVar3;
  string asStack_18 [4];
  string asStack_14 [4];
  int local_10;
  int local_c;
  
  std::vector<std::string,std::allocator<std::string>>::vector(param_1);
  local_10 = 0;
  local_c = 0;
  while (local_10 != -1) {
    local_10 = FUN_007c5380(param_2,param_3,local_c);
    iVar1 = local_c;
    if (local_10 == -1) {
      iVar2 = FUN_007c505c(param_2);
      FUN_007c6728(asStack_18,param_2,iVar1,iVar2 - local_c);
      std::vector<std::string,std::allocator<std::string>>::push_back(param_1,asStack_18);
      FUN_007c5914(asStack_18);
    }
    else {
      FUN_007c6728(asStack_14,param_2,local_c,local_10 - local_c);
      std::vector<std::string,std::allocator<std::string>>::push_back(param_1,asStack_14);
      FUN_007c5914(asStack_14);
    }
    sVar3 = strlen(param_3);
    local_c = local_10 + sVar3;
  }
  return param_1;
}

// ---- FUN_0034820c  @ 0x34820c
undefined4 FUN_0034820c(undefined4 param_1,int param_2)

{
  undefined1 *puVar1;
  undefined1 auStack_68 [4];
  undefined1 auStack_64 [4];
  undefined1 auStack_60 [4];
  undefined1 auStack_5c [4];
  undefined1 auStack_58 [4];
  undefined1 auStack_54 [4];
  undefined1 auStack_50 [4];
  undefined1 auStack_4c [4];
  undefined1 auStack_48 [4];
  undefined1 auStack_44 [4];
  undefined1 auStack_40 [4];
  undefined1 auStack_3c [4];
  undefined1 auStack_38 [4];
  undefined1 auStack_34 [4];
  undefined1 auStack_30 [4];
  undefined1 auStack_2c [4];
  undefined1 auStack_28 [4];
  undefined1 auStack_24 [4];
  undefined1 auStack_20 [4];
  undefined1 auStack_1c [4];
  undefined1 auStack_18 [4];
  undefined1 auStack_14 [4];
  
  puVar1 = &stack0xfffffff0;
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_64,"PRIVATE",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_60,"PRIVATE 1ST CLASS",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_5c,"CORPORAL",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_58,"SERGEANT",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_54,"STAFF SERGEANT",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_50,"SERGEANT 1ST CLASS",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_4c,"MASTER SERGEANT",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_48,"1ST SERGEANT",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_44,"SERGEANT MAJOR",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_40,"2ND LIEUTENANT",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_3c,"1ST LIEUTENANT",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_38,"CAPTAIN",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_34,"MAJOR",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_30,"LIEUTENANT COLONEL",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_2c,"COLONEL",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_28,"BRIGADIER GENERAL",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_24,"MAJOR GENERAL",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_20,"LIEUTENANT GENERAL",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_1c,"GENERAL",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_18,"ARMY GENERAL",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_14,"COMMANDER IN CHIEF",auStack_68);
  FUN_0079a3fc(auStack_68);
  if ((param_2 < 0) || (DAT_00943344 <= param_2)) {
    FUN_0079a3f4(auStack_68);
    FUN_007c6a60(param_1,"INVALID",auStack_68);
    FUN_0079a3fc(auStack_68);
  }
  else {
    FUN_007c64e8(param_1,auStack_64 + param_2 * 4);
  }
  while (puVar1 != auStack_64) {
    puVar1 = puVar1 + -4;
    FUN_007c5914(puVar1);
  }
  return param_1;
}

// ---- FUN_003486dc  @ 0x3486dc
undefined4 FUN_003486dc(int param_1)

{
  undefined4 uVar1;
  undefined4 auStack_5c [22];
  
  memcpy(auStack_5c,&DAT_007d9524,0x54);
  if ((param_1 < 0) || (DAT_00943344 <= param_1)) {
    uVar1 = 0xffffffff;
  }
  else {
    uVar1 = auStack_5c[param_1];
  }
  return uVar1;
}

// ---- FUN_00349048  @ 0x349048
void FUN_00349048(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  undefined4 uVar2;
  undefined1 auStack_c [4];
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_00950418,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_00950420,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    uVar2 = 0;
    cocos2d::CCRect::CCRect((CCRect *)&DAT_00950428,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
    FUN_00798644(&DAT_00950438);
    FUN_007985bc(&DAT_00950438,0x798b71,&DAT_00943000,&DAT_00943000,uVar2);
    FUN_0079a3f4(auStack_c);
    FUN_007c6a60(&DAT_0095043c,"font02_new.png",auStack_c);
    FUN_0079a3fc(auStack_c);
    FUN_007985bc(&DAT_0095043c,0x7c5915,&DAT_00943000);
  }
  return;
}

// ---- FUN_00349154  @ 0x349154
uint FUN_00349154(undefined1 param_1,undefined1 param_2,undefined1 param_3)

{
  undefined2 local_8;
  undefined1 local_4 [4];
  
  local_8 = CONCAT11(param_2,param_1);
  local_4._0_3_ = CONCAT12(param_3,local_8);
  return CONCAT13(0,local_4._0_3_);
}

// ---- FUN_003491b0  @ 0x3491b0
CCPoint * FUN_003491b0(CCPoint *param_1,CCPoint *param_2)

{
  cocos2d::CCPoint::operator+(param_1,param_2);
  return param_1;
}

// ---- FUN_003491f8  @ 0x3491f8
CCRect * FUN_003491f8(float param_1,float param_2,float param_3,float param_4,CCRect *param_5)

{
  cocos2d::CCRect::CCRect(param_5,param_1,param_2,param_3,param_4);
  return param_5;
}

// ---- FUN_00349258  @ 0x349258
float FUN_00349258(undefined4 param_1,undefined4 param_2)

{
  undefined4 extraout_r0;
  undefined4 extraout_r1;
  double in_d0;
  undefined4 local_14;
  undefined4 local_10;
  
  local_14 = (float)(double)CONCAT44(param_2,param_1);
  if (local_14 == 0.0) {
    local_14 = 1e-08;
  }
  atan(in_d0);
  local_10 = (float)((double)CONCAT44(extraout_r1,extraout_r0) * 57.295780181884766);
  if ((int)((uint)(local_14 < 0.0) << 0x1f) < 0) {
    local_10 = local_10 + 180.0;
  }
  if ((int)((uint)(local_10 < 0.0) << 0x1f) < 0) {
    local_10 = local_10 + 360.0;
  }
  return local_10;
}

// ---- FUN_00349318  @ 0x349318
float FUN_00349318(undefined4 param_1,undefined4 param_2)

{
  undefined4 extraout_r0;
  undefined4 extraout_r1;
  double in_d0;
  undefined4 local_14;
  undefined4 local_10;
  
  local_14 = (float)(double)CONCAT44(param_2,param_1);
  if (local_14 == 0.0) {
    local_14 = 1e-08;
  }
  atan(in_d0);
  local_10 = (float)((double)CONCAT44(extraout_r1,extraout_r0) * 57.295780181884766);
  if ((int)((uint)(local_14 < 0.0) << 0x1f) < 0) {
    local_10 = local_10 + 180.0;
  }
  if ((int)((uint)(local_10 < 0.0) << 0x1f) < 0) {
    local_10 = local_10 + 360.0;
  }
  return local_10;
}

// ---- FUN_003496a0  @ 0x3496a0
uint FUN_003496a0(float param_1,float param_2,float param_3)

{
  undefined4 uVar1;
  undefined4 extraout_r0;
  undefined4 extraout_r1;
  uint in_fpscr;
  uint uVar2;
  double in_d0;
  float fVar3;
  float fVar4;
  uint3 local_2c;
  float local_28;
  float local_24;
  float local_20;
  
  uVar2 = in_fpscr & 0xfffffff | (uint)(param_2 == 0.0) << 0x1e;
  if ((byte)(uVar2 >> 0x1e) == 0) {
    floor(in_d0);
    uVar1 = (undefined4)(longlong)(double)CONCAT44(extraout_r1,extraout_r0);
    fVar3 = (float)VectorSignedToFloat(uVar1,(byte)(uVar2 >> 0x16) & 3);
    fVar3 = param_1 / 60.0 - fVar3;
    fVar4 = (1.0 - param_2) * param_3;
    local_20 = (1.0 - param_2 * fVar3) * param_3;
    fVar3 = (1.0 - (1.0 - fVar3) * param_2) * param_3;
    local_28 = param_3;
    local_24 = fVar4;
    switch(uVar1) {
    case 0:
      local_24 = fVar3;
      local_20 = fVar4;
      break;
    case 1:
      local_28 = local_20;
      local_24 = param_3;
      local_20 = fVar4;
      break;
    case 2:
      local_28 = fVar4;
      local_24 = param_3;
      local_20 = fVar3;
      break;
    case 3:
      local_28 = fVar4;
      local_24 = local_20;
      local_20 = param_3;
      break;
    case 4:
      local_28 = fVar3;
      local_20 = param_3;
    }
    local_2c = FUN_00349154((uint)(0.0 < local_28) * (int)local_28 & 0xff,
                            (uint)(0.0 < local_24) * (int)local_24 & 0xff,
                            (uint)(0.0 < local_20) * (int)local_20 & 0xff);
  }
  else {
    local_2c = FUN_00349154((uint)(0.0 < param_3) * (int)param_3 & 0xff,
                            (uint)(0.0 < param_3) * (int)param_3 & 0xff,
                            (uint)(0.0 < param_3) * (int)param_3 & 0xff);
  }
  return (uint)local_2c;
}

// ---- FUN_003498a4  @ 0x3498a4
vector<std::string,std::allocator<std::string>> *
FUN_003498a4(vector<std::string,std::allocator<std::string>> *param_1,undefined4 param_2,
            char *param_3)

{
  int iVar1;
  int iVar2;
  size_t sVar3;
  string asStack_18 [4];
  string asStack_14 [4];
  int local_10;
  int local_c;
  
  std::vector<std::string,std::allocator<std::string>>::vector(param_1);
  local_10 = 0;
  local_c = 0;
  while (local_10 != -1) {
    local_10 = FUN_007c5380(param_2,param_3,local_c);
    iVar1 = local_c;
    if (local_10 == -1) {
      iVar2 = FUN_007c505c(param_2);
      FUN_007c6728(asStack_18,param_2,iVar1,iVar2 - local_c);
      std::vector<std::string,std::allocator<std::string>>::push_back(param_1,asStack_18);
      FUN_007c5914(asStack_18);
    }
    else {
      FUN_007c6728(asStack_14,param_2,local_c,local_10 - local_c);
      std::vector<std::string,std::allocator<std::string>>::push_back(param_1,asStack_14);
      FUN_007c5914(asStack_14);
    }
    sVar3 = strlen(param_3);
    local_c = local_10 + sVar3;
  }
  return param_1;
}

// ---- FUN_00349964  @ 0x349964
undefined4 FUN_00349964(undefined4 param_1,int param_2)

{
  undefined1 *puVar1;
  undefined1 auStack_68 [4];
  undefined1 auStack_64 [4];
  undefined1 auStack_60 [4];
  undefined1 auStack_5c [4];
  undefined1 auStack_58 [4];
  undefined1 auStack_54 [4];
  undefined1 auStack_50 [4];
  undefined1 auStack_4c [4];
  undefined1 auStack_48 [4];
  undefined1 auStack_44 [4];
  undefined1 auStack_40 [4];
  undefined1 auStack_3c [4];
  undefined1 auStack_38 [4];
  undefined1 auStack_34 [4];
  undefined1 auStack_30 [4];
  undefined1 auStack_2c [4];
  undefined1 auStack_28 [4];
  undefined1 auStack_24 [4];
  undefined1 auStack_20 [4];
  undefined1 auStack_1c [4];
  undefined1 auStack_18 [4];
  undefined1 auStack_14 [4];
  
  puVar1 = &stack0xfffffff0;
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_64,"PRIVATE",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_60,"PRIVATE 1ST CLASS",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_5c,"CORPORAL",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_58,"SERGEANT",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_54,"STAFF SERGEANT",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_50,"SERGEANT 1ST CLASS",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_4c,"MASTER SERGEANT",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_48,"1ST SERGEANT",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_44,"SERGEANT MAJOR",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_40,"2ND LIEUTENANT",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_3c,"1ST LIEUTENANT",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_38,"CAPTAIN",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_34,"MAJOR",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_30,"LIEUTENANT COLONEL",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_2c,"COLONEL",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_28,"BRIGADIER GENERAL",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_24,"MAJOR GENERAL",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_20,"LIEUTENANT GENERAL",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_1c,"GENERAL",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_18,"ARMY GENERAL",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_14,"COMMANDER IN CHIEF",auStack_68);
  FUN_0079a3fc(auStack_68);
  if ((param_2 < 0) || (DAT_0094334c <= param_2)) {
    FUN_0079a3f4(auStack_68);
    FUN_007c6a60(param_1,"INVALID",auStack_68);
    FUN_0079a3fc(auStack_68);
  }
  else {
    FUN_007c64e8(param_1,auStack_64 + param_2 * 4);
  }
  while (puVar1 != auStack_64) {
    puVar1 = puVar1 + -4;
    FUN_007c5914(puVar1);
  }
  return param_1;
}

// ---- FUN_00349e34  @ 0x349e34
undefined4 FUN_00349e34(int param_1)

{
  undefined4 uVar1;
  undefined4 auStack_5c [22];
  
  memcpy(auStack_5c,&DAT_007d9774,0x54);
  if ((param_1 < 0) || (DAT_0094334c <= param_1)) {
    uVar1 = 0xffffffff;
  }
  else {
    uVar1 = auStack_5c[param_1];
  }
  return uVar1;
}

// ---- FUN_0034e194  @ 0x34e194
void FUN_0034e194(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  undefined4 uVar2;
  undefined1 auStack_c [4];
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_00950440,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_00950448,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    uVar2 = 0;
    cocos2d::CCRect::CCRect((CCRect *)&DAT_00950450,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
    FUN_00798644(&DAT_00950460);
    FUN_007985bc(&DAT_00950460,0x798b71,&DAT_00943000,&DAT_00943000,uVar2);
    FUN_0079a3f4(auStack_c);
    FUN_007c6a60(&DAT_00950464,"font02_new.png",auStack_c);
    FUN_0079a3fc(auStack_c);
    FUN_007985bc(&DAT_00950464,0x7c5915,&DAT_00943000);
  }
  return;
}

// ---- FUN_0034e2a0  @ 0x34e2a0
long FUN_0034e2a0(void)

{
  long lVar1;
  
  lVar1 = lrand48();
  return lVar1;
}

// ---- FUN_0034e2ac  @ 0x34e2ac
uint FUN_0034e2ac(undefined1 param_1,undefined1 param_2,undefined1 param_3)

{
  undefined2 local_8;
  undefined1 local_4 [4];
  
  local_8 = CONCAT11(param_2,param_1);
  local_4._0_3_ = CONCAT12(param_3,local_8);
  return CONCAT13(0,local_4._0_3_);
}

// ---- FUN_0034e308  @ 0x34e308
undefined4 FUN_0034e308(void)

{
  double in_d0;
  double in_d1;
  undefined4 local_10;
  undefined4 local_8;
  
  if (in_d0 <= in_d1) {
    local_10 = SUB84(in_d1,0);
    local_8 = local_10;
  }
  else {
    local_8 = SUB84(in_d0,0);
  }
  return local_8;
}

// ---- FUN_0034e33c  @ 0x34e33c
undefined4 FUN_0034e33c(void)

{
  double in_d0;
  double in_d1;
  undefined4 local_10;
  undefined4 local_8;
  
  if ((int)((uint)(in_d0 < in_d1) << 0x1f) < 0) {
    local_8 = SUB84(in_d0,0);
  }
  else {
    local_10 = SUB84(in_d1,0);
    local_8 = local_10;
  }
  return local_8;
}

// ---- FUN_0034e370  @ 0x34e370
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x0034e388 */
/* WARNING: Restarted to delay deadcode elimination for space: register */

undefined4
FUN_0034e370(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5)

{
  undefined4 uVar1;
  
  uVar1 = FUN_0034e308(param_1,param_2,param_3);
  uVar1 = FUN_0034e33c(uVar1,param_2,param_5);
  return uVar1;
}

// ---- FUN_0034e3ac  @ 0x34e3ac
undefined4 * FUN_0034e3ac(undefined4 *param_1)

{
  undefined8 in_d0;
  undefined8 in_d1;
  undefined4 local_18;
  undefined4 uStack_14;
  undefined4 local_10;
  undefined4 uStack_c;
  
  local_10 = (undefined4)in_d0;
  uStack_c = (undefined4)((ulonglong)in_d0 >> 0x20);
  *param_1 = local_10;
  param_1[1] = uStack_c;
  local_18 = (undefined4)in_d1;
  uStack_14 = (undefined4)((ulonglong)in_d1 >> 0x20);
  param_1[2] = local_18;
  param_1[3] = uStack_14;
  return param_1;
}

// ---- FUN_0034e3d4  @ 0x34e3d4
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x0034e41e */
/* WARNING: Restarted to delay deadcode elimination for space: register */

undefined4 FUN_0034e3d4(undefined4 param_1)

{
  double in_d0;
  double in_d1;
  double in_d2;
  double in_d3;
  
  FUN_0034e3ac(SUB84(in_d0 + in_d2,0),(int)((ulonglong)in_d0 >> 0x20),SUB84(in_d1 + in_d3,0),param_1
              );
  return param_1;
}

// ---- FUN_0034e42c  @ 0x34e42c
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x0034e476 */
/* WARNING: Restarted to delay deadcode elimination for space: register */

undefined4 FUN_0034e42c(undefined4 param_1)

{
  double in_d0;
  double in_d1;
  double in_d2;
  double in_d3;
  
  FUN_0034e3ac(SUB84(in_d0 - in_d2,0),(int)((ulonglong)in_d0 >> 0x20),SUB84(in_d1 - in_d3,0),param_1
              );
  return param_1;
}

// ---- FUN_0034e484  @ 0x34e484
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x0034e4c2 */
/* WARNING: Restarted to delay deadcode elimination for space: register */

undefined4 FUN_0034e484(undefined4 param_1)

{
  double in_d0;
  double in_d1;
  double in_d2;
  
  FUN_0034e3ac(SUB84(in_d0 * in_d2,0),(int)((ulonglong)in_d0 >> 0x20),SUB84(in_d1 * in_d2,0),param_1
              );
  return param_1;
}

// ---- FUN_0034e4d0  @ 0x34e4d0
undefined4 FUN_0034e4d0(void)

{
  double in_d0;
  double in_d1;
  double in_d2;
  double in_d3;
  
  return SUB84(in_d0 * in_d2 + in_d1 * in_d3,0);
}

// ---- FUN_0034e518  @ 0x34e518
undefined4 FUN_0034e518(void)

{
  double in_d0;
  double in_d1;
  double in_d2;
  double in_d3;
  
  return SUB84(in_d0 * in_d3 - in_d1 * in_d2,0);
}

// ---- FUN_0034e560  @ 0x34e560
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x0034e5a2 */
/* WARNING: Restarted to delay deadcode elimination for space: register */

undefined4 FUN_0034e560(undefined4 param_1)

{
  undefined8 in_d0;
  undefined4 uVar1;
  undefined8 in_d1;
  undefined4 uVar2;
  double dVar3;
  undefined4 local_20;
  undefined4 local_18;
  
  uVar2 = (undefined4)((ulonglong)in_d1 >> 0x20);
  uVar1 = (undefined4)((ulonglong)in_d0 >> 0x20);
  local_20 = (undefined4)in_d0;
  local_18 = (undefined4)in_d1;
  dVar3 = (double)cpvlength(local_20,uVar1,local_18,uVar2);
  FUN_0034e484(local_20,uVar1,local_18,uVar2,SUB84(1.0 / dVar3,0),param_1);
  return param_1;
}

// ---- FUN_0034e5b0  @ 0x34e5b0
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x0034e5ea */
/* WARNING: Restarted to delay deadcode elimination for space: register */

undefined4 * FUN_0034e5b0(undefined4 *param_1)

{
  undefined4 uVar1;
  double in_d0;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined8 in_d1;
  undefined4 uVar4;
  double in_d2;
  undefined4 local_18 [2];
  undefined4 local_10;
  
  uVar4 = (undefined4)((ulonglong)in_d1 >> 0x20);
  uVar2 = (undefined4)((ulonglong)in_d0 >> 0x20);
  uVar1 = SUB84(in_d0,0);
  uVar3 = (undefined4)in_d1;
  FUN_0034e4d0(uVar1,uVar2,uVar3,uVar4,uVar1,(int)((ulonglong)in_d2 >> 0x20),uVar3);
  if (in_d0 <= in_d2 * in_d2) {
    *param_1 = uVar1;
    param_1[1] = uVar2;
    param_1[2] = uVar3;
    param_1[3] = uVar4;
  }
  else {
    FUN_0034e560(uVar1,uVar2,uVar3,local_18);
    FUN_0034e484(local_18[0],uVar2,local_10,uVar4,SUB84(in_d2,0),param_1);
  }
  return param_1;
}

// ---- FUN_0034e654  @ 0x34e654
void FUN_0034e654(int param_1)

{
  undefined8 in_d0;
  undefined8 in_d1;
  undefined4 local_20;
  undefined4 uStack_1c;
  undefined4 local_18;
  undefined4 uStack_14;
  
  local_20 = (undefined4)in_d0;
  uStack_1c = (undefined4)((ulonglong)in_d0 >> 0x20);
  local_18 = (undefined4)in_d1;
  uStack_14 = (undefined4)((ulonglong)in_d1 >> 0x20);
  *(undefined4 *)(param_1 + 0x28) = local_20;
  *(undefined4 *)(param_1 + 0x2c) = uStack_1c;
  *(undefined4 *)(param_1 + 0x30) = local_18;
  *(undefined4 *)(param_1 + 0x34) = uStack_14;
  return;
}

// ---- FUN_0034e680  @ 0x34e680
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x0034e6c8 */
/* WARNING: Restarted to delay deadcode elimination for space: register */

void FUN_0034e680(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                 undefined4 param_5,undefined4 param_6,undefined4 param_7,int param_8)

{
  int iVar1;
  undefined4 uVar2;
  double dVar3;
  undefined4 local_58;
  undefined4 uStack_54;
  undefined4 uStack_50;
  undefined4 uStack_4c;
  undefined4 local_48;
  undefined4 local_40;
  undefined4 local_38;
  undefined4 local_30;
  int local_24;
  undefined4 local_20 [2];
  undefined4 local_18;
  
  local_24 = param_8;
  local_48 = param_5;
  local_40 = param_7;
  local_38 = param_1;
  local_30 = param_3;
  FUN_0034e484(param_1,param_2,param_3,param_4,(int)*(undefined8 *)(param_8 + 0x10),local_20);
  iVar1 = local_24;
  uVar2 = (undefined4)*(undefined8 *)(local_24 + 0x38);
  FUN_0034e3d4(uVar2,param_2,(int)*(undefined8 *)(local_24 + 0x40),param_4,local_20[0],param_6,
               local_18,&local_58);
  *(undefined4 *)(iVar1 + 0x38) = local_58;
  *(undefined4 *)(iVar1 + 0x3c) = uStack_54;
  *(undefined4 *)(iVar1 + 0x40) = uStack_50;
  *(undefined4 *)(iVar1 + 0x44) = uStack_4c;
  dVar3 = *(double *)(local_24 + 0x20);
  FUN_0034e518(local_48,param_2,local_40,param_4,local_38,param_6,local_30);
  *(double *)(local_24 + 0x60) =
       *(double *)(local_24 + 0x60) + dVar3 * (double)CONCAT44(param_2,uVar2);
  return;
}

// ---- FUN_0034e74c  @ 0x34e74c
CCRect * FUN_0034e74c(float param_1,float param_2,float param_3,float param_4,CCRect *param_5)

{
  cocos2d::CCRect::CCRect(param_5,param_1,param_2,param_3,param_4);
  return param_5;
}

// ---- FUN_0034e7b0  @ 0x34e7b0
float FUN_0034e7b0(undefined4 param_1,undefined4 param_2)

{
  undefined4 extraout_r0;
  undefined4 extraout_r1;
  double in_d0;
  undefined4 local_14;
  undefined4 local_10;
  
  local_14 = (float)(double)CONCAT44(param_2,param_1);
  if (local_14 == 0.0) {
    local_14 = 1e-08;
  }
  atan(in_d0);
  local_10 = (float)((double)CONCAT44(extraout_r1,extraout_r0) * 57.295780181884766);
  if ((int)((uint)(local_14 < 0.0) << 0x1f) < 0) {
    local_10 = local_10 + 180.0;
  }
  if ((int)((uint)(local_10 < 0.0) << 0x1f) < 0) {
    local_10 = local_10 + 360.0;
  }
  return local_10;
}

// ---- FUN_0034e870  @ 0x34e870
float FUN_0034e870(undefined4 param_1,undefined4 param_2)

{
  undefined4 extraout_r0;
  undefined4 extraout_r1;
  double in_d0;
  undefined4 local_14;
  undefined4 local_10;
  
  local_14 = (float)(double)CONCAT44(param_2,param_1);
  if (local_14 == 0.0) {
    local_14 = 1e-08;
  }
  atan(in_d0);
  local_10 = (float)((double)CONCAT44(extraout_r1,extraout_r0) * 57.295780181884766);
  if ((int)((uint)(local_14 < 0.0) << 0x1f) < 0) {
    local_10 = local_10 + 180.0;
  }
  if ((int)((uint)(local_10 < 0.0) << 0x1f) < 0) {
    local_10 = local_10 + 360.0;
  }
  return local_10;
}

// ---- FUN_0034ea40  @ 0x34ea40
undefined4
FUN_0034ea40(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
            double param_5,double param_6)

{
  float fVar1;
  undefined4 uVar2;
  float fVar3;
  float fVar4;
  float fVar5;
  float fVar6;
  
  fVar1 = (float)(**(code **)(*scaleLayer + 0x34))(scaleLayer);
  fVar3 = (float)(param_5 * (double)fVar1 + 10.0);
  fVar1 = (float)(**(code **)(*scaleLayer + 0x3c))(scaleLayer);
  fVar4 = (float)(param_6 * (double)fVar1 + 10.0);
  fVar5 = (float)screenSize / 2.0;
  fVar1 = (float)(**(code **)(*scaleLayer + 0x34))(scaleLayer);
  fVar5 = fVar5 / fVar1;
  fVar6 = screenSize._4_4_ / 2.0;
  fVar1 = (float)(**(code **)(*scaleLayer + 0x3c))(scaleLayer);
  fVar6 = fVar6 / fVar1;
  if ((double)CONCAT44(param_2,param_1) <= (double)((float)centerPoint + fVar5 + fVar3)) {
    if ((int)((uint)((double)CONCAT44(param_2,param_1) <
                    (double)(((float)centerPoint - fVar5) - fVar3)) << 0x1f) < 0) {
      uVar2 = 0;
    }
    else if ((double)CONCAT44(param_4,param_3) <= (double)(centerPoint._4_4_ + fVar6 + fVar4)) {
      if ((int)((uint)((double)CONCAT44(param_4,param_3) <
                      (double)((centerPoint._4_4_ - fVar6) - fVar4)) << 0x1f) < 0) {
        uVar2 = 0;
      }
      else {
        uVar2 = 1;
      }
    }
    else {
      uVar2 = 0;
    }
  }
  else {
    uVar2 = 0;
  }
  return uVar2;
}

// ---- FUN_0034ebf8  @ 0x34ebf8
uint FUN_0034ebf8(float param_1,float param_2,float param_3)

{
  undefined4 uVar1;
  undefined4 extraout_r0;
  undefined4 extraout_r1;
  uint in_fpscr;
  uint uVar2;
  double in_d0;
  float fVar3;
  float fVar4;
  uint3 local_2c;
  float local_28;
  float local_24;
  float local_20;
  
  uVar2 = in_fpscr & 0xfffffff | (uint)(param_2 == 0.0) << 0x1e;
  if ((byte)(uVar2 >> 0x1e) == 0) {
    floor(in_d0);
    uVar1 = (undefined4)(longlong)(double)CONCAT44(extraout_r1,extraout_r0);
    fVar3 = (float)VectorSignedToFloat(uVar1,(byte)(uVar2 >> 0x16) & 3);
    fVar3 = param_1 / 60.0 - fVar3;
    fVar4 = (1.0 - param_2) * param_3;
    local_20 = (1.0 - param_2 * fVar3) * param_3;
    fVar3 = (1.0 - (1.0 - fVar3) * param_2) * param_3;
    local_28 = param_3;
    local_24 = fVar4;
    switch(uVar1) {
    case 0:
      local_24 = fVar3;
      local_20 = fVar4;
      break;
    case 1:
      local_28 = local_20;
      local_24 = param_3;
      local_20 = fVar4;
      break;
    case 2:
      local_28 = fVar4;
      local_24 = param_3;
      local_20 = fVar3;
      break;
    case 3:
      local_28 = fVar4;
      local_24 = local_20;
      local_20 = param_3;
      break;
    case 4:
      local_28 = fVar3;
      local_20 = param_3;
    }
    local_2c = FUN_0034e2ac((uint)(0.0 < local_28) * (int)local_28 & 0xff,
                            (uint)(0.0 < local_24) * (int)local_24 & 0xff,
                            (uint)(0.0 < local_20) * (int)local_20 & 0xff);
  }
  else {
    local_2c = FUN_0034e2ac((uint)(0.0 < param_3) * (int)param_3 & 0xff,
                            (uint)(0.0 < param_3) * (int)param_3 & 0xff,
                            (uint)(0.0 < param_3) * (int)param_3 & 0xff);
  }
  return (uint)local_2c;
}

// ---- FUN_0034edfc  @ 0x34edfc
vector<std::string,std::allocator<std::string>> *
FUN_0034edfc(vector<std::string,std::allocator<std::string>> *param_1,undefined4 param_2,
            char *param_3)

{
  int iVar1;
  int iVar2;
  size_t sVar3;
  string asStack_18 [4];
  string asStack_14 [4];
  int local_10;
  int local_c;
  
  std::vector<std::string,std::allocator<std::string>>::vector(param_1);
  local_10 = 0;
  local_c = 0;
  while (local_10 != -1) {
    local_10 = FUN_007c5380(param_2,param_3,local_c);
    iVar1 = local_c;
    if (local_10 == -1) {
      iVar2 = FUN_007c505c(param_2);
      FUN_007c6728(asStack_18,param_2,iVar1,iVar2 - local_c);
      std::vector<std::string,std::allocator<std::string>>::push_back(param_1,asStack_18);
      FUN_007c5914(asStack_18);
    }
    else {
      FUN_007c6728(asStack_14,param_2,local_c,local_10 - local_c);
      std::vector<std::string,std::allocator<std::string>>::push_back(param_1,asStack_14);
      FUN_007c5914(asStack_14);
    }
    sVar3 = strlen(param_3);
    local_c = local_10 + sVar3;
  }
  return param_1;
}

// ---- FUN_0034eebc  @ 0x34eebc
undefined4 FUN_0034eebc(undefined4 param_1,int param_2)

{
  undefined1 *puVar1;
  undefined1 auStack_68 [4];
  undefined1 auStack_64 [4];
  undefined1 auStack_60 [4];
  undefined1 auStack_5c [4];
  undefined1 auStack_58 [4];
  undefined1 auStack_54 [4];
  undefined1 auStack_50 [4];
  undefined1 auStack_4c [4];
  undefined1 auStack_48 [4];
  undefined1 auStack_44 [4];
  undefined1 auStack_40 [4];
  undefined1 auStack_3c [4];
  undefined1 auStack_38 [4];
  undefined1 auStack_34 [4];
  undefined1 auStack_30 [4];
  undefined1 auStack_2c [4];
  undefined1 auStack_28 [4];
  undefined1 auStack_24 [4];
  undefined1 auStack_20 [4];
  undefined1 auStack_1c [4];
  undefined1 auStack_18 [4];
  undefined1 auStack_14 [4];
  
  puVar1 = &stack0xfffffff0;
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_64,"PRIVATE",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_60,"PRIVATE 1ST CLASS",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_5c,"CORPORAL",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_58,"SERGEANT",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_54,"STAFF SERGEANT",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_50,"SERGEANT 1ST CLASS",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_4c,"MASTER SERGEANT",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_48,"1ST SERGEANT",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_44,"SERGEANT MAJOR",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_40,"2ND LIEUTENANT",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_3c,"1ST LIEUTENANT",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_38,"CAPTAIN",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_34,"MAJOR",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_30,"LIEUTENANT COLONEL",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_2c,"COLONEL",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_28,"BRIGADIER GENERAL",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_24,"MAJOR GENERAL",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_20,"LIEUTENANT GENERAL",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_1c,"GENERAL",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_18,"ARMY GENERAL",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_14,"COMMANDER IN CHIEF",auStack_68);
  FUN_0079a3fc(auStack_68);
  if ((param_2 < 0) || (DAT_00943354 <= param_2)) {
    FUN_0079a3f4(auStack_68);
    FUN_007c6a60(param_1,"INVALID",auStack_68);
    FUN_0079a3fc(auStack_68);
  }
  else {
    FUN_007c64e8(param_1,auStack_64 + param_2 * 4);
  }
  while (puVar1 != auStack_64) {
    puVar1 = puVar1 + -4;
    FUN_007c5914(puVar1);
  }
  return param_1;
}

// ---- FUN_0034f38c  @ 0x34f38c
undefined4 FUN_0034f38c(int param_1)

{
  undefined4 uVar1;
  undefined4 auStack_5c [22];
  
  memcpy(auStack_5c,&DAT_007d9ca4,0x54);
  if ((param_1 < 0) || (DAT_00943354 <= param_1)) {
    uVar1 = 0xffffffff;
  }
  else {
    uVar1 = auStack_5c[param_1];
  }
  return uVar1;
}

// ---- FUN_0034f500  @ 0x34f500
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x0034f56c */
/* WARNING: Restarted to delay deadcode elimination for space: register */

void FUN_0034f500(float param_1,undefined4 param_2,int param_3,undefined4 param_4,undefined4 param_5
                 ,undefined4 param_6,undefined4 param_7,undefined4 param_8,undefined4 param_9,
                 undefined4 param_10,double param_11)

{
  int iVar1;
  undefined4 uVar2;
  double in_d1;
  undefined4 uVar3;
  undefined4 in_s5;
  double dVar4;
  undefined4 local_88;
  undefined4 uStack_84;
  undefined4 uStack_80;
  undefined4 uStack_7c;
  int local_74;
  int local_6c;
  undefined4 local_68;
  undefined4 uStack_64;
  undefined4 local_60 [2];
  undefined4 local_58;
  undefined4 local_50 [2];
  undefined4 local_48;
  undefined4 local_40 [2];
  undefined4 local_38;
  undefined4 local_30 [2];
  undefined4 local_28;
  undefined4 local_20 [2];
  undefined4 local_18;
  undefined4 local_8;
  
  dVar4 = (double)CONCAT44(param_10,param_9);
  uVar3 = (undefined4)((ulonglong)in_d1 >> 0x20);
  local_6c = *(int *)(param_3 + 0x90);
  local_74 = param_3;
  local_8 = param_5;
  if (local_6c != 0) {
    dVar4 = (double)std::pow<float,double>(param_1,in_d1);
    local_8 = *(undefined4 *)(local_6c + 0xf8);
    param_7 = *(undefined4 *)(local_6c + 0x100);
  }
  param_9 = SUB84(dVar4,0);
  FUN_0034e484((int)*(undefined8 *)(local_74 + 0x38),param_2,(int)*(undefined8 *)(local_74 + 0x40),
               uVar3,param_9,local_60);
  FUN_0034e484((int)*(undefined8 *)(local_74 + 0x48),param_2,(int)*(undefined8 *)(local_74 + 0x50),
               uVar3,(int)*(undefined8 *)(local_74 + 0x10),local_50);
  FUN_0034e3d4(local_8,param_2,param_7,uVar3,local_50[0],in_s5,local_48,local_40);
  FUN_0034e484(local_40[0],param_2,local_38,uVar3,SUB84(param_11,0),local_30);
  FUN_0034e3d4(local_60[0],param_2,local_58,uVar3,local_30[0],in_s5,local_28,local_20);
  iVar1 = local_74;
  FUN_0034e5b0(local_20[0],param_2,local_18,uVar3,(int)*(undefined8 *)(local_74 + 0x80),&local_88);
  *(undefined4 *)(iVar1 + 0x38) = local_88;
  *(undefined4 *)(iVar1 + 0x3c) = uStack_84;
  *(undefined4 *)(iVar1 + 0x40) = uStack_80;
  *(undefined4 *)(iVar1 + 0x44) = uStack_7c;
  local_68 = *(undefined4 *)(local_74 + 0x88);
  uStack_64 = *(undefined4 *)(local_74 + 0x8c);
  uVar2 = SUB84(*(double *)(local_74 + 0x60) * dVar4 +
                *(double *)(local_74 + 0x68) * *(double *)(local_74 + 0x20) * param_11,0);
  FUN_0034e370(uVar2,param_2,SUB84(-*(double *)(local_74 + 0x88),0),uVar3,local_68);
  *(ulonglong *)(local_74 + 0x60) = CONCAT44(param_2,uVar2);
  return;
}
