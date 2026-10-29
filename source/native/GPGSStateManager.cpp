// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 17 functions

// ---- GPGSStateManager::setSignInCompletedionFlag  @ 0x342884
/* GPGSStateManager::setSignInCompletedionFlag(bool) */

void GPGSStateManager::setSignInCompletedionFlag(bool param_1)

{
  is_sign_in_completed_ = param_1;
  return;
}

// ---- GPGSStateManager::setAuthInProgressFlag  @ 0x3428a8
/* GPGSStateManager::setAuthInProgressFlag(bool) */

void GPGSStateManager::setAuthInProgressFlag(bool param_1)

{
  is_auth_in_progress_ = param_1;
  return;
}

// ---- GPGSStateManager::IsAuthInProgress  @ 0x3428cc
/* GPGSStateManager::IsAuthInProgress() */

undefined1 GPGSStateManager::IsAuthInProgress(void)

{
  bool bVar1;
  undefined1 uVar2;
  
  bVar1 = std::unique_ptr::operator_cast_to_bool((unique_ptr *)&game_services_);
  uVar2 = is_auth_in_progress_;
  if (!bVar1) {
    uVar2 = 0;
  }
  return uVar2;
}

// ---- GPGSStateManager::GetGameServices  @ 0x3429e4
/* GPGSStateManager::GetGameServices() */

undefined4 GPGSStateManager::GetGameServices(void)

{
  bool bVar1;
  undefined4 uVar2;
  
  bVar1 = std::unique_ptr::operator_cast_to_bool((unique_ptr *)&game_services_);
  if (bVar1) {
    uVar2 = std::unique_ptr<gpg::GameServices,std::default_delete<gpg::GameServices>>::get
                      ((unique_ptr<gpg::GameServices,std::default_delete<gpg::GameServices>> *)
                       &game_services_);
  }
  else {
    uVar2 = 0;
  }
  return uVar2;
}

// ---- GPGSStateManager::IsAuthorized  @ 0x342a1c
/* GPGSStateManager::IsAuthorized() */

undefined1 GPGSStateManager::IsAuthorized(void)

{
  bool bVar1;
  int iVar2;
  GameServices *this;
  
  __android_log_print(4,"DA2_GPGStateManager","Entering GPGSStateManager::IsAuthorized()");
  bVar1 = std::unique_ptr::operator_cast_to_bool((unique_ptr *)&game_services_);
  if ((bVar1) && (is_sign_in_completed_ != '\0')) {
    bVar1 = true;
  }
  else {
    bVar1 = false;
  }
  if ((bVar1) && (iVar2 = ApplicationInterface::isGpgsReady(), iVar2 != 0)) {
    this = (GameServices *)
           std::unique_ptr<gpg::GameServices,std::default_delete<gpg::GameServices>>::operator->
                     ((unique_ptr<gpg::GameServices,std::default_delete<gpg::GameServices>> *)
                      &game_services_);
    iVar2 = gpg::GameServices::IsAuthorized(this);
    if (iVar2 != 0) {
      return 1;
    }
  }
  return 0;
}

// ---- GPGSStateManager::isServiceInitialized  @ 0x342aa8
/* GPGSStateManager::isServiceInitialized() */

bool GPGSStateManager::isServiceInitialized(void)

{
  bool bVar1;
  
  bVar1 = std::unique_ptr::operator_cast_to_bool((unique_ptr *)&game_services_);
  return bVar1;
}

// ---- GPGSStateManager::InitServices  @ 0x342ce8
/* GPGSStateManager::InitServices(gpg::AndroidPlatformConfiguration const&, std::function<void
   (gpg::AuthOperation)>, std::function<void (gpg::AuthOperation, gpg::AuthStatus)>,
   std::function<void (gpg::MultiplayerEvent, std::string, gpg::MultiplayerInvitation)>) */

void GPGSStateManager::InitServices
               (undefined4 param_1,function *param_2,function *param_3,function *param_4)

{
  bool bVar1;
  Builder *pBVar2;
  Builder aBStack_8c [4];
  AndroidPlatformConfiguration aAStack_88 [4];
  function<void(gpg::LogLevel,std::string_const&)> afStack_84 [16];
  function<void(gpg::AuthOperation)> afStack_74 [16];
  function<void(gpg::AuthOperation)> afStack_64 [16];
  function<void(gpg::AuthOperation,gpg::AuthStatus)> afStack_54 [16];
  function<void(gpg::AuthOperation,gpg::AuthStatus)> afStack_44 [16];
  function<void(gpg::MultiplayerEvent,std::string,gpg::MultiplayerInvitation)> afStack_34 [16];
  function<void(gpg::MultiplayerEvent,std::string,gpg::MultiplayerInvitation)> afStack_24 [16];
  int local_14;
  
  local_14 = __stack_chk_guard;
  printf("Initializing Services (GPGSStateManager)");
  bVar1 = std::unique_ptr::operator_cast_to_bool((unique_ptr *)&game_services_);
  if (!bVar1) {
    printf("GPGSStateManager: Uninitialized services, so creating");
    gpg::GameServices::Builder::Builder(aBStack_8c);
    pBVar2 = (Builder *)gpg::GameServices::Builder::EnableSnapshots(aBStack_8c);
    pBVar2 = (Builder *)gpg::GameServices::Builder::SetDefaultOnLog(pBVar2,3);
    FUN_003435c8(afStack_84);
    pBVar2 = (Builder *)gpg::GameServices::Builder::SetOnLog(pBVar2,afStack_84);
    std::function<void(gpg::AuthOperation)>::function(afStack_74,param_2);
    FUN_00343720(afStack_64,afStack_74);
    pBVar2 = (Builder *)gpg::GameServices::Builder::SetOnAuthActionStarted(pBVar2,afStack_64);
    std::function<void(gpg::AuthOperation,gpg::AuthStatus)>::function(afStack_54,param_3);
    FUN_00343884(afStack_44,afStack_54);
    pBVar2 = (Builder *)gpg::GameServices::Builder::SetOnAuthActionFinished(pBVar2,afStack_44);
    std::function<void(gpg::MultiplayerEvent,std::string,gpg::MultiplayerInvitation)>::function
              (afStack_34,param_4);
    FUN_00343988(afStack_24,afStack_34);
    gpg::GameServices::Builder::SetOnMultiplayerInvitationEvent(pBVar2,afStack_24);
    gpg::GameServices::Builder::Create(aAStack_88);
    std::unique_ptr<gpg::GameServices,std::default_delete<gpg::GameServices>>::operator=
              ((unique_ptr<gpg::GameServices,std::default_delete<gpg::GameServices>> *)
               &game_services_,(unique_ptr *)aAStack_88);
    std::unique_ptr<gpg::GameServices,std::default_delete<gpg::GameServices>>::~unique_ptr
              ((unique_ptr<gpg::GameServices,std::default_delete<gpg::GameServices>> *)aAStack_88);
    std::function<void(gpg::MultiplayerEvent,std::string,gpg::MultiplayerInvitation)>::~function
              (afStack_24);
    FUN_00342cb0(afStack_34);
    std::function<void(gpg::AuthOperation,gpg::AuthStatus)>::~function(afStack_44);
    FUN_00342bc0(afStack_54);
    std::function<void(gpg::AuthOperation)>::~function(afStack_64);
    FUN_00342b30(afStack_74);
    std::function<void(gpg::LogLevel,std::string_const&)>::~function(afStack_84);
    gpg::GameServices::Builder::~Builder(aBStack_8c);
  }
  printf("Created");
  if (local_14 != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}

// ---- GPGSStateManager::BeginUserInitiatedSignIn  @ 0x342eb0
/* GPGSStateManager::BeginUserInitiatedSignIn() */

void GPGSStateManager::BeginUserInitiatedSignIn(void)

{
  bool bVar1;
  char cVar2;
  GameServices *this;
  
  printf("Entering GPGSStateManager::BeginUserInitiatedSignIn()");
  bVar1 = std::operator==((unique_ptr *)&game_services_,(_func_decltype_nullptr *)0x0);
  if ((!bVar1) && (cVar2 = IsAuthorized(), cVar2 != '\x01')) {
    this = (GameServices *)
           std::unique_ptr<gpg::GameServices,std::default_delete<gpg::GameServices>>::operator->
                     ((unique_ptr<gpg::GameServices,std::default_delete<gpg::GameServices>> *)
                      &game_services_);
    gpg::GameServices::StartAuthorizationUI(this);
  }
  printf("Leaving GPGSStateManager::BeginUserInitiatedSignIn()");
  return;
}

// ---- GPGSStateManager::SignOut  @ 0x342f10
/* GPGSStateManager::SignOut() */

void GPGSStateManager::SignOut(void)

{
  int iVar1;
  GameServices *this;
  
  iVar1 = IsAuthorized();
  if (iVar1 != 0) {
    this = (GameServices *)
           std::unique_ptr<gpg::GameServices,std::default_delete<gpg::GameServices>>::operator->
                     ((unique_ptr<gpg::GameServices,std::default_delete<gpg::GameServices>> *)
                      &game_services_);
    gpg::GameServices::SignOut(this);
  }
  return;
}

// ---- GPGSStateManager::UnlockAchievement  @ 0x342f3c
/* GPGSStateManager::UnlockAchievement(char const*) */

void GPGSStateManager::UnlockAchievement(char *param_1)

{
  int iVar1;
  GameServices *this;
  AchievementManager *this_00;
  undefined1 auStack_10 [4];
  string asStack_c [4];
  
  iVar1 = IsAuthorized();
  if (iVar1 != 0) {
    this = (GameServices *)
           std::unique_ptr<gpg::GameServices,std::default_delete<gpg::GameServices>>::operator->
                     ((unique_ptr<gpg::GameServices,std::default_delete<gpg::GameServices>> *)
                      &game_services_);
    this_00 = (AchievementManager *)gpg::GameServices::Achievements(this);
    FUN_0079a3f4(auStack_10);
    FUN_007c6a60(asStack_c,param_1,auStack_10);
    gpg::AchievementManager::Unlock(this_00,asStack_c);
    FUN_007c5914(asStack_c);
    FUN_0079a3fc(auStack_10);
  }
  return;
}

// ---- GPGSStateManager::SetPercentCompleteOnAchievement  @ 0x342fb8
/* GPGSStateManager::SetPercentCompleteOnAchievement(char const*, int) */

void GPGSStateManager::SetPercentCompleteOnAchievement(char *param_1,int param_2)

{
  int iVar1;
  GameServices *this;
  AchievementManager *this_00;
  int *piVar2;
  uint *puVar3;
  int local_20;
  char *local_1c;
  undefined1 auStack_18 [4];
  int local_14 [2];
  string asStack_c [4];
  
  local_20 = param_2;
  local_1c = param_1;
  iVar1 = IsAuthorized();
  if (iVar1 != 0) {
    this = (GameServices *)
           std::unique_ptr<gpg::GameServices,std::default_delete<gpg::GameServices>>::operator->
                     ((unique_ptr<gpg::GameServices,std::default_delete<gpg::GameServices>> *)
                      &game_services_);
    this_00 = (AchievementManager *)gpg::GameServices::Achievements(this);
    FUN_0079a3f4(auStack_18);
    FUN_007c6a60(asStack_c,local_1c,auStack_18);
    local_14[1] = 0;
    local_14[0] = 100;
    piVar2 = std::min<int>(local_14,&local_20);
    puVar3 = (uint *)std::max<int>(local_14 + 1,piVar2);
    gpg::AchievementManager::SetStepsAtLeast(this_00,asStack_c,*puVar3);
    FUN_007c5914(asStack_c);
    FUN_0079a3fc(auStack_18);
  }
  return;
}

// ---- GPGSStateManager::FetchAllAchievements  @ 0x343128
/* GPGSStateManager::FetchAllAchievements(std::function<void
   (gpg::AchievementManager::FetchAllResponse const&)>) */

void GPGSStateManager::FetchAllAchievements(function *param_1)

{
  int iVar1;
  GameServices *this;
  AchievementManager *pAVar2;
  function<void(gpg::AchievementManager::FetchAllResponse_const&)> afStack_34 [16];
  function<void(gpg::AchievementManager::FetchAllResponse_const&)> afStack_24 [16];
  int local_14;
  
  local_14 = __stack_chk_guard;
  printf(
        "Entering GPGSStateManager::FetchAllAchievements(...) Fetching all achievements (nonblocking)"
        );
  iVar1 = IsAuthorized();
  if (iVar1 != 0) {
    this = (GameServices *)
           std::unique_ptr<gpg::GameServices,std::default_delete<gpg::GameServices>>::operator->
                     ((unique_ptr<gpg::GameServices,std::default_delete<gpg::GameServices>> *)
                      &game_services_);
    pAVar2 = (AchievementManager *)gpg::GameServices::Achievements(this);
    std::function<void(gpg::AchievementManager::FetchAllResponse_const&)>::function
              (afStack_34,param_1);
    FUN_00343c3c(afStack_24,afStack_34);
    gpg::AchievementManager::FetchAll(pAVar2,2,afStack_24);
    std::function<void(gpg::AchievementManager::FetchAllResponse_const&)>::~function(afStack_24);
    FUN_003430f0(afStack_34);
  }
  if (local_14 != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}

// ---- GPGSStateManager::SubmitHighScore  @ 0x3431d0
/* GPGSStateManager::SubmitHighScore(char const*, unsigned long long) */

void GPGSStateManager::SubmitHighScore(char *param_1,ulonglong param_2)

{
  int iVar1;
  GameServices *this;
  string *psVar2;
  undefined1 auStack_10 [4];
  undefined1 auStack_c [4];
  
  iVar1 = IsAuthorized();
  if (iVar1 != 0) {
    this = (GameServices *)
           std::unique_ptr<gpg::GameServices,std::default_delete<gpg::GameServices>>::operator->
                     ((unique_ptr<gpg::GameServices,std::default_delete<gpg::GameServices>> *)
                      &game_services_);
    psVar2 = (string *)gpg::GameServices::Leaderboards(this);
    FUN_0079a3f4(auStack_10);
    FUN_007c6a60(auStack_c,param_1,auStack_10);
    gpg::LeaderboardManager::SubmitScore(psVar2,param_2);
    FUN_007c5914(auStack_c);
    FUN_0079a3fc(auStack_10);
  }
  return;
}

// ---- GPGSStateManager::ShowAchievements  @ 0x343278
/* GPGSStateManager::ShowAchievements() */

void GPGSStateManager::ShowAchievements(void)

{
  int iVar1;
  GameServices *this;
  AchievementManager *pAVar2;
  function<void(gpg::UIStatus_const&)> afStack_24 [16];
  int local_14;
  
  local_14 = __stack_chk_guard;
  iVar1 = IsAuthorized();
  if (iVar1 != 0) {
    this = (GameServices *)
           std::unique_ptr<gpg::GameServices,std::default_delete<gpg::GameServices>>::operator->
                     ((unique_ptr<gpg::GameServices,std::default_delete<gpg::GameServices>> *)
                      &game_services_);
    pAVar2 = (AchievementManager *)gpg::GameServices::Achievements(this);
    FUN_00343cd0(afStack_24);
    gpg::AchievementManager::ShowAllUI(pAVar2,afStack_24);
    std::function<void(gpg::UIStatus_const&)>::~function(afStack_24);
  }
  if (local_14 != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}

// ---- GPGSStateManager::ShowAllLeaderboards  @ 0x3432fc
/* GPGSStateManager::ShowAllLeaderboards() */

void GPGSStateManager::ShowAllLeaderboards(void)

{
  int iVar1;
  GameServices *this;
  LeaderboardManager *pLVar2;
  function<void(gpg::UIStatus_const&)> afStack_24 [16];
  int local_14;
  
  local_14 = __stack_chk_guard;
  iVar1 = IsAuthorized();
  if (iVar1 != 0) {
    this = (GameServices *)
           std::unique_ptr<gpg::GameServices,std::default_delete<gpg::GameServices>>::operator->
                     ((unique_ptr<gpg::GameServices,std::default_delete<gpg::GameServices>> *)
                      &game_services_);
    pLVar2 = (LeaderboardManager *)gpg::GameServices::Leaderboards(this);
    FUN_00343d44(afStack_24);
    gpg::LeaderboardManager::ShowAllUI(pLVar2,afStack_24);
    std::function<void(gpg::UIStatus_const&)>::~function(afStack_24);
  }
  if (local_14 != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}

// ---- GPGSStateManager::ShowLeaderboard  @ 0x343374
/* GPGSStateManager::ShowLeaderboard(char const*) */

void GPGSStateManager::ShowLeaderboard(char *param_1)

{
  int iVar1;
  GameServices *this;
  string *psVar2;
  undefined1 auStack_10 [4];
  undefined1 auStack_c [4];
  
  iVar1 = IsAuthorized();
  if (iVar1 != 0) {
    this = (GameServices *)
           std::unique_ptr<gpg::GameServices,std::default_delete<gpg::GameServices>>::operator->
                     ((unique_ptr<gpg::GameServices,std::default_delete<gpg::GameServices>> *)
                      &game_services_);
    psVar2 = (string *)gpg::GameServices::Leaderboards(this);
    FUN_0079a3f4(auStack_10);
    FUN_007c6a60(auStack_c,param_1,auStack_10);
    gpg::LeaderboardManager::ShowUI(psVar2);
    FUN_007c5914(auStack_c);
    FUN_0079a3fc(auStack_10);
  }
  return;
}

// ---- GPGSStateManager::FetchLeaderboardScore  @ 0x343408
/* GPGSStateManager::FetchLeaderboardScore(std::string, std::function<void
   (gpg::LeaderboardManager::FetchScoreSummaryResponse const&)>) */

void GPGSStateManager::FetchLeaderboardScore(undefined4 param_1,function *param_2)

{
  int iVar1;
  GameServices *this;
  LeaderboardManager *pLVar2;
  function<void(gpg::LeaderboardManager::FetchScoreSummaryResponse_const&)> afStack_24 [16];
  int local_14;
  
  local_14 = __stack_chk_guard;
  iVar1 = IsAuthorized();
  if (iVar1 != 0) {
    this = (GameServices *)
           std::unique_ptr<gpg::GameServices,std::default_delete<gpg::GameServices>>::operator->
                     ((unique_ptr<gpg::GameServices,std::default_delete<gpg::GameServices>> *)
                      &game_services_);
    pLVar2 = (LeaderboardManager *)gpg::GameServices::Leaderboards(this);
    std::function<void(gpg::LeaderboardManager::FetchScoreSummaryResponse_const&)>::function
              (afStack_24,param_2);
    gpg::LeaderboardManager::FetchScoreSummary(pLVar2,2,param_1,3,1,afStack_24);
    std::function<void(gpg::LeaderboardManager::FetchScoreSummaryResponse_const&)>::~function
              (afStack_24);
  }
  if (local_14 != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}
