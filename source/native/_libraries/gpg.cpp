// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 928 functions

// ---- gpg::IRealTimeEventListener::~IRealTimeEventListener  @ 0x339658
/* WARNING: Removing unreachable block (ram,0x00339672) */
/* gpg::IRealTimeEventListener::~IRealTimeEventListener() */

IRealTimeEventListener * __thiscall
gpg::IRealTimeEventListener::~IRealTimeEventListener(IRealTimeEventListener *this)

{
  *(undefined ***)this = &PTR__IRealTimeEventListener_1_009120b8;
  return this;
}

// ---- gpg::IRealTimeEventListener::~IRealTimeEventListener  @ 0x33968c
/* gpg::IRealTimeEventListener::~IRealTimeEventListener() */

IRealTimeEventListener * __thiscall
gpg::IRealTimeEventListener::~IRealTimeEventListener(IRealTimeEventListener *this)

{
  ~IRealTimeEventListener(this);
  operator_delete(this);
  return this;
}

// ---- gpg::IRealTimeEventListener::IRealTimeEventListener  @ 0x339704
/* gpg::IRealTimeEventListener::IRealTimeEventListener() */

IRealTimeEventListener * __thiscall
gpg::IRealTimeEventListener::IRealTimeEventListener(IRealTimeEventListener *this)

{
  *(undefined ***)this = &PTR__IRealTimeEventListener_1_009120b8;
  return this;
}

// ---- gpg::RealTimeRoom::~RealTimeRoom  @ 0x33975c
/* gpg::RealTimeRoom::~RealTimeRoom() */

RealTimeRoom * __thiscall gpg::RealTimeRoom::~RealTimeRoom(RealTimeRoom *this)

{
  std::shared_ptr<gpg::RealTimeRoomImpl_const>::~shared_ptr
            ((shared_ptr<gpg::RealTimeRoomImpl_const> *)this);
  return this;
}

// ---- gpg::RealTimeRoomConfig::Builder::~Builder  @ 0x33a75c
/* gpg::RealTimeRoomConfig::Builder::~Builder() */

Builder * __thiscall gpg::RealTimeRoomConfig::Builder::~Builder(Builder *this)

{
  std::shared_ptr<gpg::RealTimeRoomConfigImpl>::~shared_ptr
            ((shared_ptr<gpg::RealTimeRoomConfigImpl> *)this);
  return this;
}

// ---- gpg::RealTimeRoomConfig::~RealTimeRoomConfig  @ 0x33a7a8
/* gpg::RealTimeRoomConfig::~RealTimeRoomConfig() */

RealTimeRoomConfig * __thiscall
gpg::RealTimeRoomConfig::~RealTimeRoomConfig(RealTimeRoomConfig *this)

{
  std::shared_ptr<gpg::RealTimeRoomConfigImpl_const>::~shared_ptr
            ((shared_ptr<gpg::RealTimeRoomConfigImpl_const> *)this);
  return this;
}

// ---- gpg::RealTimeMultiplayerManager::RealTimeRoomResponse::~RealTimeRoomResponse  @ 0x33a7c0
/* gpg::RealTimeMultiplayerManager::RealTimeRoomResponse::~RealTimeRoomResponse() */

RealTimeRoomResponse * __thiscall
gpg::RealTimeMultiplayerManager::RealTimeRoomResponse::~RealTimeRoomResponse
          (RealTimeRoomResponse *this)

{
  RealTimeRoom::~RealTimeRoom((RealTimeRoom *)(this + 4));
  return this;
}

// ---- gpg::MultiplayerInvitation::~MultiplayerInvitation  @ 0x342c2c
/* gpg::MultiplayerInvitation::~MultiplayerInvitation() */

MultiplayerInvitation * __thiscall
gpg::MultiplayerInvitation::~MultiplayerInvitation(MultiplayerInvitation *this)

{
  std::shared_ptr<gpg::RealTimeRoomImpl_const>::~shared_ptr
            ((shared_ptr<gpg::RealTimeRoomImpl_const> *)(this + 8));
  std::shared_ptr<gpg::TurnBasedMatchImpl_const>::~shared_ptr
            ((shared_ptr<gpg::TurnBasedMatchImpl_const> *)this);
  return this;
}

// ---- gpg::AchievementManager::FetchAllResponse::FetchAllResponse  @ 0x344488
/* gpg::AchievementManager::FetchAllResponse::FetchAllResponse(gpg::AchievementManager::FetchAllResponse
   const&) */

FetchAllResponse * __thiscall
gpg::AchievementManager::FetchAllResponse::FetchAllResponse
          (FetchAllResponse *this,FetchAllResponse *param_1)

{
  *(undefined4 *)this = *(undefined4 *)param_1;
  std::vector<gpg::Achievement,std::allocator<gpg::Achievement>>::vector
            ((vector<gpg::Achievement,std::allocator<gpg::Achievement>> *)(this + 4),param_1 + 4);
  return this;
}

// ---- gpg::AchievementManager::FetchAllResponse::~FetchAllResponse  @ 0x3444b4
/* gpg::AchievementManager::FetchAllResponse::~FetchAllResponse() */

FetchAllResponse * __thiscall
gpg::AchievementManager::FetchAllResponse::~FetchAllResponse(FetchAllResponse *this)

{
  std::vector<gpg::Achievement,std::allocator<gpg::Achievement>>::~vector
            ((vector<gpg::Achievement,std::allocator<gpg::Achievement>> *)(this + 4));
  return this;
}

// ---- gpg::Achievement::Achievement  @ 0x507d26
/* gpg::Achievement::Achievement(std::shared_ptr<gpg::AchievementImpl const>) */

void __thiscall gpg::Achievement::Achievement(Achievement *this,undefined4 *param_2)

{
  bool bVar1;
  int iVar2;
  int *piVar3;
  
  *(undefined4 *)this = *param_2;
  iVar2 = param_2[1];
  *(int *)(this + 4) = iVar2;
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

// ---- gpg::Achievement::Achievement  @ 0x507d4a
/* gpg::Achievement::Achievement(gpg::Achievement const&) */

void __thiscall gpg::Achievement::Achievement(Achievement *this,Achievement *param_1)

{
  bool bVar1;
  int iVar2;
  int *piVar3;
  
  *(undefined4 *)this = *(undefined4 *)param_1;
  iVar2 = *(int *)(param_1 + 4);
  *(int *)(this + 4) = iVar2;
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

// ---- gpg::Achievement::Achievement  @ 0x507d6e
/* gpg::Achievement::Achievement(gpg::Achievement&&) */

void __thiscall gpg::Achievement::Achievement(Achievement *this,Achievement *param_1)

{
  undefined4 uVar1;
  
  *(undefined4 *)this = *(undefined4 *)param_1;
  *(undefined4 *)(this + 4) = 0;
  uVar1 = *(undefined4 *)(param_1 + 4);
  *(undefined4 *)(param_1 + 4) = 0;
  *(undefined4 *)(this + 4) = uVar1;
  *(undefined4 *)param_1 = 0;
  return;
}

// ---- gpg::Achievement::Valid  @ 0x507d82
/* gpg::Achievement::Valid() const */

bool __thiscall gpg::Achievement::Valid(Achievement *this)

{
  return *(int *)this != 0;
}

// ---- gpg::Achievement::Id  @ 0x507d8c
/* gpg::Achievement::Id() const */

undefined4 * __thiscall gpg::Achievement::Id(Achievement *this)

{
  int iVar1;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get id of an invalid Achievement");
    return &DAT_00960b7c;
  }
  return *(undefined4 **)this;
}

// ---- gpg::Achievement::Name  @ 0x507db4
/* gpg::Achievement::Name() const */

undefined4 * __thiscall gpg::Achievement::Name(Achievement *this)

{
  int iVar1;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get name of an invalid Achievement");
    return &DAT_00960b7c;
  }
  return (undefined4 *)(*(int *)this + 4);
}

// ---- gpg::Achievement::Description  @ 0x507de0
/* gpg::Achievement::Description() const */

undefined4 * __thiscall gpg::Achievement::Description(Achievement *this)

{
  int iVar1;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get description of an invalid Achievement");
    return &DAT_00960b7c;
  }
  return (undefined4 *)(*(int *)this + 8);
}

// ---- gpg::Achievement::Type  @ 0x507e0c
/* gpg::Achievement::Type() const */

undefined4 __thiscall gpg::Achievement::Type(Achievement *this)

{
  int iVar1;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get type of an invalid Achievement");
    return 1;
  }
  return *(undefined4 *)(*(int *)this + 0xc);
}

// ---- gpg::Achievement::State  @ 0x507e30
/* gpg::Achievement::State() const */

undefined4 __thiscall gpg::Achievement::State(Achievement *this)

{
  int iVar1;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get state of an invalid Achievement");
    return 1;
  }
  return *(undefined4 *)(*(int *)this + 0x10);
}

// ---- gpg::Achievement::CurrentSteps  @ 0x507e54
/* gpg::Achievement::CurrentSteps() const */

undefined4 __thiscall gpg::Achievement::CurrentSteps(Achievement *this)

{
  int iVar1;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get current steps of an invalid Achievement");
    return 0;
  }
  return *(undefined4 *)(*(int *)this + 0x14);
}

// ---- gpg::Achievement::TotalSteps  @ 0x507e78
/* gpg::Achievement::TotalSteps() const */

undefined4 __thiscall gpg::Achievement::TotalSteps(Achievement *this)

{
  int iVar1;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get total steps of an invalid Achievement");
    return 0;
  }
  return *(undefined4 *)(*(int *)this + 0x18);
}

// ---- gpg::Achievement::XP  @ 0x507e9c
/* gpg::Achievement::XP() const */

undefined8 __thiscall gpg::Achievement::XP(Achievement *this)

{
  int iVar1;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get experience of an invalid Achievement");
    return 0;
  }
  return *(undefined8 *)(*(int *)this + 0x20);
}

// ---- gpg::Achievement::RevealedIconUrl  @ 0x507ec4
/* gpg::Achievement::RevealedIconUrl() const */

undefined4 * __thiscall gpg::Achievement::RevealedIconUrl(Achievement *this)

{
  int iVar1;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get revealed icon URL of an invalid Achievement");
    return &DAT_00960b7c;
  }
  return (undefined4 *)(*(int *)this + 0x28);
}

// ---- gpg::Achievement::UnlockedIconUrl  @ 0x507ef0
/* gpg::Achievement::UnlockedIconUrl() const */

undefined4 * __thiscall gpg::Achievement::UnlockedIconUrl(Achievement *this)

{
  int iVar1;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get unlocked icon URL of an invalid Achievement");
    return &DAT_00960b7c;
  }
  return (undefined4 *)(*(int *)this + 0x2c);
}

// ---- gpg::Achievement::LastModifiedTime  @ 0x507f1c
/* gpg::Achievement::LastModifiedTime() const */

void gpg::Achievement::LastModifiedTime(void)

{
  undefined4 *in_r0;
  int iVar1;
  Achievement *in_r1;
  undefined4 uVar2;
  undefined4 uVar3;
  
  iVar1 = Valid(in_r1);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get last modified timestamp of an invalid Achievement");
    uVar2 = 0;
    uVar3 = 0;
  }
  else {
    uVar2 = *(undefined4 *)(*(int *)in_r1 + 0x30);
    uVar3 = *(undefined4 *)(*(int *)in_r1 + 0x34);
  }
  *in_r0 = uVar2;
  in_r0[1] = uVar3;
  return;
}

// ---- gpg::Achievement::~Achievement  @ 0x507f58
/* gpg::Achievement::~Achievement() */

Achievement * __thiscall gpg::Achievement::~Achievement(Achievement *this)

{
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(this + 4));
  return this;
}

// ---- gpg::Achievement::Achievement  @ 0x507f66
/* gpg::Achievement::Achievement() */

Achievement * __thiscall gpg::Achievement::Achievement(Achievement *this)

{
  undefined4 local_c;
  
  *(undefined4 *)this = 0;
  *(undefined4 *)(this + 4) = 0;
  local_c = 0;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_c);
  return this;
}

// ---- gpg::Achievement::operator=  @ 0x507f80
/* gpg::Achievement::TEMPNAMEPLACEHOLDERVALUE(gpg::Achievement&&) */

Achievement * __thiscall gpg::Achievement::operator=(Achievement *this,Achievement *param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 local_c;
  
  uVar1 = *(undefined4 *)param_1;
  uVar2 = *(undefined4 *)(param_1 + 4);
  *(undefined4 *)(param_1 + 4) = 0;
  *(undefined4 *)param_1 = 0;
  *(undefined4 *)this = uVar1;
  local_c = *(undefined4 *)(this + 4);
  *(undefined4 *)(this + 4) = uVar2;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_c);
  return this;
}

// ---- gpg::Achievement::operator=  @ 0x507fa6
/* gpg::Achievement::TEMPNAMEPLACEHOLDERVALUE(gpg::Achievement const&) */

Achievement * __thiscall gpg::Achievement::operator=(Achievement *this,Achievement *param_1)

{
  bool bVar1;
  int *piVar2;
  int iVar3;
  
  *(undefined4 *)this = *(undefined4 *)param_1;
  iVar3 = *(int *)(param_1 + 4);
  if (iVar3 != *(int *)(this + 4)) {
    if (iVar3 != 0) {
      piVar2 = (int *)(iVar3 + 4);
      DataMemoryBarrier(0x1f);
      do {
        ExclusiveAccess(piVar2);
        bVar1 = (bool)hasExclusiveAccess(piVar2);
      } while (!bVar1);
      *piVar2 = *piVar2 + 1;
      DataMemoryBarrier(0x1f);
    }
    if (*(int *)(this + 4) != 0) {
      FUN_0033ce90();
    }
    *(int *)(this + 4) = iVar3;
  }
  return this;
}

// ---- gpg::AchievementManager::AchievementManager  @ 0x508114
/* gpg::AchievementManager::AchievementManager(gpg::GameServicesImpl*) */

void __thiscall
gpg::AchievementManager::AchievementManager(AchievementManager *this,GameServicesImpl *param_1)

{
  *(GameServicesImpl **)this = param_1;
  return;
}

// ---- gpg::AchievementManager::~AchievementManager  @ 0x508118
/* gpg::AchievementManager::~AchievementManager() */

AchievementManager * __thiscall
gpg::AchievementManager::~AchievementManager(AchievementManager *this)

{
  return this;
}

// ---- gpg::AchievementManager::FetchAllResponse::FetchAllResponse  @ 0x508142
/* gpg::AchievementManager::FetchAllResponse::FetchAllResponse(gpg::AchievementManager::FetchAllResponse&&)
    */

void __thiscall
gpg::AchievementManager::FetchAllResponse::FetchAllResponse
          (FetchAllResponse *this,FetchAllResponse *param_1)

{
  undefined4 uVar1;
  
  *(undefined4 *)this = *(undefined4 *)param_1;
  *(undefined4 *)(this + 8) = 0;
  *(undefined4 *)(this + 0xc) = 0;
  *(undefined4 *)(this + 4) = 0;
  *(undefined4 *)(this + 4) = *(undefined4 *)(param_1 + 4);
  *(undefined4 *)(param_1 + 4) = 0;
  uVar1 = *(undefined4 *)(this + 8);
  *(undefined4 *)(this + 8) = *(undefined4 *)(param_1 + 8);
  *(undefined4 *)(param_1 + 8) = uVar1;
  uVar1 = *(undefined4 *)(this + 0xc);
  *(undefined4 *)(this + 0xc) = *(undefined4 *)(param_1 + 0xc);
  *(undefined4 *)(param_1 + 0xc) = uVar1;
  return;
}

// ---- gpg::AchievementManager::FetchResponse::FetchResponse  @ 0x5081a0
/* gpg::AchievementManager::FetchResponse::FetchResponse(gpg::AchievementManager::FetchResponse&&)
    */

FetchResponse * __thiscall
gpg::AchievementManager::FetchResponse::FetchResponse(FetchResponse *this,FetchResponse *param_1)

{
  *(undefined4 *)this = *(undefined4 *)param_1;
  Achievement::Achievement((Achievement *)(this + 4),(Achievement *)(param_1 + 4));
  return this;
}

// ---- gpg::AchievementManager::Increment  @ 0x5081b4
/* gpg::AchievementManager::Increment(std::string const&, unsigned int) */

void __thiscall
gpg::AchievementManager::Increment(AchievementManager *this,string *param_1,uint param_2)

{
  undefined1 auStack_3c [4];
  undefined1 auStack_38 [32];
  
  FUN_00510a86(auStack_38,*(undefined4 *)this);
  FUN_0051683e(auStack_3c,auStack_38);
  FUN_0050811a(auStack_38);
  (**(code **)(**(int **)this + 0x14))(*(int **)this,param_1,param_2);
  FUN_00516580(auStack_3c);
  return;
}

// ---- gpg::AchievementManager::Increment  @ 0x508204
/* gpg::AchievementManager::Increment(std::string const&) */

void __thiscall gpg::AchievementManager::Increment(AchievementManager *this,string *param_1)

{
  Increment(this,param_1,1);
  return;
}

// ---- gpg::AchievementManager::Reveal  @ 0x50820a
/* gpg::AchievementManager::Reveal(std::string const&) */

void __thiscall gpg::AchievementManager::Reveal(AchievementManager *this,string *param_1)

{
  undefined1 auStack_3c [4];
  undefined1 auStack_38 [36];
  
  FUN_00510a86(auStack_38,*(undefined4 *)this);
  FUN_0051683e(auStack_3c,auStack_38);
  FUN_0050811a(auStack_38);
  (**(code **)(**(int **)this + 0x18))(*(int **)this,param_1);
  FUN_00516580(auStack_3c);
  return;
}

// ---- gpg::AchievementManager::SetStepsAtLeast  @ 0x508252
/* gpg::AchievementManager::SetStepsAtLeast(std::string const&, unsigned int) */

void __thiscall
gpg::AchievementManager::SetStepsAtLeast(AchievementManager *this,string *param_1,uint param_2)

{
  undefined1 auStack_3c [4];
  undefined1 auStack_38 [32];
  
  FUN_00510a86(auStack_38,*(undefined4 *)this);
  FUN_0051683e(auStack_3c,auStack_38);
  FUN_0050811a(auStack_38);
  (**(code **)(**(int **)this + 0x1c))(*(int **)this,param_1,param_2);
  FUN_00516580(auStack_3c);
  return;
}

// ---- gpg::AchievementManager::Unlock  @ 0x5082a2
/* gpg::AchievementManager::Unlock(std::string const&) */

void __thiscall gpg::AchievementManager::Unlock(AchievementManager *this,string *param_1)

{
  undefined1 auStack_3c [4];
  undefined1 auStack_38 [36];
  
  FUN_00510a86(auStack_38,*(undefined4 *)this);
  FUN_0051683e(auStack_3c,auStack_38);
  FUN_0050811a(auStack_38);
  (**(code **)(**(int **)this + 0x20))(*(int **)this,param_1);
  FUN_00516580(auStack_3c);
  return;
}

// ---- gpg::AchievementManager::Fetch  @ 0x508948
/* gpg::AchievementManager::Fetch(gpg::DataSource, std::string const&, std::function<void
   (gpg::AchievementManager::FetchResponse const&)>) */

void __thiscall
gpg::AchievementManager::Fetch
          (AchievementManager *this,undefined4 param_2,undefined4 param_3,function *param_4)

{
  undefined4 uVar1;
  function *pfVar2;
  int iVar3;
  int *piVar4;
  code *pcVar5;
  undefined1 auStack_b8 [4];
  undefined4 local_b4;
  Achievement aAStack_b0 [8];
  function<void(gpg::AchievementManager::FetchResponse_const&)> afStack_a8 [8];
  int local_a0;
  undefined4 local_9c;
  _Function_base a_Stack_98 [8];
  int local_90;
  undefined4 local_8c;
  function<void(std::function<void()>)> afStack_88 [16];
  function<void(gpg::AchievementManager::FetchResponse_const&)> afStack_78 [16];
  function<void(std::function<void()>)> afStack_68 [16];
  function<void(gpg::AchievementManager::FetchResponse_const&)> afStack_58 [16];
  function<void(std::function<void()>)> afStack_48 [8];
  int local_40;
  function<void(gpg::AchievementManager::FetchResponse_const&)> afStack_38 [20];
  
  FUN_00510a86(afStack_48,*(undefined4 *)this);
  FUN_0051683e(auStack_b8,afStack_48);
  FUN_0050811a(afStack_48);
  pfVar2 = (function *)FUN_0051075c(*(undefined4 *)this);
  std::function<void(gpg::AchievementManager::FetchResponse_const&)>::function(afStack_a8,param_4);
  if (local_a0 == 0) {
    local_90 = local_a0;
    local_40 = local_a0;
  }
  else {
    local_90 = 0;
    std::swap<std::_Any_data>((_Any_data *)afStack_a8,(_Any_data *)a_Stack_98);
    uVar1 = local_8c;
    iVar3 = local_90;
    local_90 = local_a0;
    local_a0 = iVar3;
    local_8c = local_9c;
    local_9c = uVar1;
    std::function<void(std::function<void()>)>::function(afStack_48,pfVar2);
  }
  std::function<void(gpg::AchievementManager::FetchResponse_const&)>::function
            (afStack_38,(function *)a_Stack_98);
  std::function<void(std::function<void()>)>::function(afStack_88,(function *)afStack_48);
  std::function<void(gpg::AchievementManager::FetchResponse_const&)>::function
            (afStack_78,(function *)afStack_38);
  FUN_0050818c(afStack_48);
  std::_Function_base::~_Function_base(a_Stack_98);
  std::_Function_base::~_Function_base((_Function_base *)afStack_a8);
  piVar4 = *(int **)this;
  pcVar5 = *(code **)(*piVar4 + 0x10);
  std::function<void(std::function<void()>)>::function(afStack_68,(function *)afStack_88);
  std::function<void(gpg::AchievementManager::FetchResponse_const&)>::function
            (afStack_58,(function *)afStack_78);
  iVar3 = (*pcVar5)(piVar4,param_2,param_3,afStack_68);
  FUN_0050818c(afStack_68);
  if (iVar3 == 0) {
    local_b4 = 0xfffffffd;
    Achievement::Achievement(aAStack_b0);
    FUN_00508884(afStack_88,&local_b4);
    Achievement::~Achievement(aAStack_b0);
  }
  FUN_0050818c(afStack_88);
  FUN_00516580(auStack_b8);
  return;
}

// ---- gpg::AchievementManager::Fetch  @ 0x508a94
/* gpg::AchievementManager::Fetch(std::string const&, std::function<void
   (gpg::AchievementManager::FetchResponse const&)>) */

void gpg::AchievementManager::Fetch
               (AchievementManager *param_1,undefined4 param_2,function *param_3,undefined4 param_4)

{
  AchievementManager *pAStack_20;
  undefined4 uStack_1c;
  function *pfStack_18;
  undefined4 uStack_14;
  
  pAStack_20 = param_1;
  uStack_1c = param_2;
  pfStack_18 = param_3;
  uStack_14 = param_4;
  std::function<void(gpg::AchievementManager::FetchResponse_const&)>::function
            ((function<void(gpg::AchievementManager::FetchResponse_const&)> *)&pAStack_20,param_3);
  Fetch(param_1,1,param_2,
        (function<void(gpg::AchievementManager::FetchResponse_const&)> *)&pAStack_20);
  std::_Function_base::~_Function_base((_Function_base *)&pAStack_20);
  return;
}

// ---- gpg::AchievementManager::ShowAllUI  @ 0x508ae8
/* gpg::AchievementManager::ShowAllUI(std::function<void (gpg::UIStatus const&)>) */

void __thiscall gpg::AchievementManager::ShowAllUI(AchievementManager *this,function *param_2)

{
  function *pfVar1;
  int iVar2;
  int *piVar3;
  code *pcVar4;
  undefined1 auStack_d0 [4];
  function<void(gpg::UIStatus_const&)> afStack_cc [8];
  int local_c4;
  function<void(gpg::UIStatus_const&)> afStack_bc [8];
  int local_b4;
  function *local_ac [2];
  code *local_a4;
  code *local_a0;
  function<void(gpg::UIStatus_const&)> afStack_9c [16];
  undefined4 local_8c;
  function<void(std::function<void()>)> afStack_88 [8];
  int local_80;
  function afStack_78 [8];
  int local_70;
  function<void(std::function<void()>)> afStack_68 [16];
  function<void(gpg::UIStatus_const&)> afStack_58 [16];
  undefined4 local_48 [2];
  int local_40;
  function<void(gpg::UIStatus_const&)> afStack_38 [8];
  undefined4 local_30;
  
  FUN_00510a86((function<void(std::function<void()>)> *)local_48,*(undefined4 *)this);
  FUN_0051683e(auStack_d0,(function<void(std::function<void()>)> *)local_48);
  FUN_0050811a((function<void(std::function<void()>)> *)local_48);
  pfVar1 = (function *)FUN_0051075c(*(undefined4 *)this);
  std::function<void(gpg::UIStatus_const&)>::function(afStack_cc,param_2);
  if (local_c4 == 0) {
    local_b4 = local_c4;
    local_40 = local_c4;
  }
  else {
    local_b4 = 0;
    std::function<void(gpg::UIStatus_const&)>::swap(afStack_cc,(function *)afStack_bc);
    std::function<void(std::function<void()>)>::function
              ((function<void(std::function<void()>)> *)local_48,pfVar1);
  }
  local_30 = 0;
  std::function<void(gpg::UIStatus_const&)>::swap(afStack_bc,(function *)afStack_38);
  std::function<void(std::function<void()>)>::function(afStack_88,(function *)local_48);
  local_70 = 0;
  std::function<void(gpg::UIStatus_const&)>::swap(afStack_38,afStack_78);
  FUN_005082ea((function<void(std::function<void()>)> *)local_48);
  std::_Function_base::~_Function_base((_Function_base *)afStack_bc);
  std::_Function_base::~_Function_base((_Function_base *)afStack_cc);
  piVar3 = *(int **)this;
  pcVar4 = *(code **)(*piVar3 + 0x24);
  std::function<void(std::function<void()>)>::function(afStack_68,(function *)afStack_88);
  std::function<void(gpg::UIStatus_const&)>::function(afStack_58,afStack_78);
  iVar2 = (*pcVar4)(piVar3,afStack_68);
  FUN_005082ea(afStack_68);
  if ((iVar2 == 0) && (local_48[0] = 0xfffffffd, local_70 != 0)) {
    if (local_80 == 0) {
      std::function<void(gpg::UIStatus_const&)>::operator()
                ((function<void(gpg::UIStatus_const&)> *)afStack_78,(UIStatus *)local_48);
    }
    else {
      std::function<void(gpg::UIStatus_const&)>::function(afStack_9c,afStack_78);
      local_8c = local_48[0];
      local_a4 = (code *)0x0;
      pfVar1 = operator_new(0x14);
      *(undefined4 *)(pfVar1 + 8) = 0;
      std::function<void(gpg::UIStatus_const&)>::swap(afStack_9c,pfVar1);
      *(undefined4 *)(pfVar1 + 0x10) = local_8c;
      local_a0 = (code *)0x508add;
      local_a4 = (code *)0x508553;
      local_ac[0] = pfVar1;
      std::function<void(std::function<void()>)>::operator()(afStack_88,(_Function_base *)local_ac);
      std::_Function_base::~_Function_base((_Function_base *)local_ac);
      std::_Function_base::~_Function_base((_Function_base *)afStack_9c);
    }
  }
  FUN_005082ea(afStack_88);
  FUN_00516580(auStack_d0);
  return;
}

// ---- gpg::AchievementManager::ShowAllUI  @ 0x508c88
/* gpg::AchievementManager::ShowAllUI() */

void gpg::AchievementManager::ShowAllUI(void)

{
  _Function_base a_Stack_18 [8];
  undefined4 local_10;
  
  local_10 = 0;
  ShowAllUI();
  std::_Function_base::~_Function_base(a_Stack_18);
  return;
}

// ---- gpg::AchievementManager::FetchAll  @ 0x508e1c
/* gpg::AchievementManager::FetchAll(gpg::DataSource, std::string const&, std::function<void
   (gpg::AchievementManager::FetchAllResponse const&)>) */

void __thiscall
gpg::AchievementManager::FetchAll
          (AchievementManager *this,undefined4 param_2,undefined4 param_3,function *param_4)

{
  function *pfVar1;
  int iVar2;
  int *piVar3;
  code *pcVar4;
  undefined1 auStack_ac [4];
  function<void(gpg::AchievementManager::FetchAllResponse_const&)> afStack_a8 [8];
  int local_a0;
  function<void(gpg::AchievementManager::FetchAllResponse_const&)> afStack_98 [8];
  int local_90;
  function<void(std::function<void()>)> afStack_88 [16];
  function afStack_78 [8];
  undefined4 local_70;
  function<void(std::function<void()>)> afStack_68 [16];
  function<void(gpg::AchievementManager::FetchAllResponse_const&)> afStack_58 [16];
  undefined4 local_48;
  int local_44;
  int local_40;
  int local_3c;
  function afStack_38 [8];
  undefined4 local_30;
  
  FUN_00510a86((function<void(std::function<void()>)> *)&local_48,*(undefined4 *)this);
  FUN_0051683e(auStack_ac,(function<void(std::function<void()>)> *)&local_48);
  FUN_0050811a((function<void(std::function<void()>)> *)&local_48);
  pfVar1 = (function *)FUN_0051075c(*(undefined4 *)this);
  std::function<void(gpg::AchievementManager::FetchAllResponse_const&)>::function
            (afStack_a8,param_4);
  if (local_a0 == 0) {
    local_90 = local_a0;
    local_40 = local_a0;
  }
  else {
    local_90 = 0;
    std::function<void(gpg::AchievementManager::FetchAllResponse_const&)>::swap
              (afStack_a8,(function *)afStack_98);
    std::function<void(std::function<void()>)>::function
              ((function<void(std::function<void()>)> *)&local_48,pfVar1);
  }
  local_30 = 0;
  std::function<void(gpg::AchievementManager::FetchAllResponse_const&)>::swap(afStack_98,afStack_38)
  ;
  std::function<void(std::function<void()>)>::function(afStack_88,(function *)&local_48);
  local_70 = 0;
  std::function<void(gpg::AchievementManager::FetchAllResponse_const&)>::swap
            ((function<void(gpg::AchievementManager::FetchAllResponse_const&)> *)afStack_38,
             afStack_78);
  FUN_0050812e((function<void(std::function<void()>)> *)&local_48);
  std::_Function_base::~_Function_base((_Function_base *)afStack_98);
  std::_Function_base::~_Function_base((_Function_base *)afStack_a8);
  piVar3 = *(int **)this;
  pcVar4 = *(code **)(*piVar3 + 0xc);
  std::function<void(std::function<void()>)>::function(afStack_68,(function *)afStack_88);
  std::function<void(gpg::AchievementManager::FetchAllResponse_const&)>::function
            (afStack_58,afStack_78);
  iVar2 = (*pcVar4)(piVar3,param_2,param_3,afStack_68);
  FUN_0050812e(afStack_68);
  if (iVar2 == 0) {
    local_48 = 0xfffffffd;
    local_44 = iVar2;
    local_40 = iVar2;
    local_3c = iVar2;
    FUN_00508d64(afStack_88,(function<void(std::function<void()>)> *)&local_48);
    std::vector<gpg::Achievement,std::allocator<gpg::Achievement>>::~vector
              ((vector<gpg::Achievement,std::allocator<gpg::Achievement>> *)&local_44);
  }
  FUN_0050812e(afStack_88);
  FUN_00516580(auStack_ac);
  return;
}

// ---- gpg::AchievementManager::FetchAll  @ 0x508f60
/* gpg::AchievementManager::FetchAll(gpg::DataSource, std::function<void
   (gpg::AchievementManager::FetchAllResponse const&)>) */

void __thiscall
gpg::AchievementManager::FetchAll(AchievementManager *this,undefined4 param_2,function *param_3)

{
  undefined1 auStack_30 [4];
  undefined1 auStack_2c [4];
  function<void(gpg::AchievementManager::FetchAllResponse_const&)> afStack_28 [16];
  
  FUN_007c6a60(auStack_2c,&DAT_00800efc,auStack_30);
  std::function<void(gpg::AchievementManager::FetchAllResponse_const&)>::function
            (afStack_28,param_3);
  FetchAll(this,param_2,auStack_2c,afStack_28);
  std::_Function_base::~_Function_base((_Function_base *)afStack_28);
  FUN_007c5914(auStack_2c);
  return;
}

// ---- gpg::AchievementManager::FetchAll  @ 0x508fb8
/* gpg::AchievementManager::FetchAll(std::function<void (gpg::AchievementManager::FetchAllResponse
   const&)>) */

void __thiscall gpg::AchievementManager::FetchAll(AchievementManager *this,function *param_2)

{
  function<void(gpg::AchievementManager::FetchAllResponse_const&)> afStack_20 [20];
  
  std::function<void(gpg::AchievementManager::FetchAllResponse_const&)>::function
            (afStack_20,param_2);
  FetchAll(this,1,afStack_20);
  std::_Function_base::~_Function_base((_Function_base *)afStack_20);
  return;
}

// ---- gpg::AchievementManager::FetchAllBlocking  @ 0x5093a0
/* gpg::AchievementManager::FetchAllBlocking(gpg::DataSource, std::chrono::duration<long long,
   std::ratio<1ll, 1000ll> >, std::string const&) */

FetchAllResponse *
gpg::AchievementManager::FetchAllBlocking
          (FetchAllResponse *param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4,
          uint param_5,int param_6,undefined4 param_7)

{
  longlong lVar1;
  int iVar2;
  FetchAllResponse *pFVar3;
  int *piVar4;
  FetchAllResponse *this;
  code *pcVar5;
  unique_lock *puVar6;
  undefined4 local_98;
  int iStack_94;
  undefined1 auStack_90 [4];
  undefined1 auStack_8c [4];
  undefined4 local_88;
  int iStack_84;
  mutex *local_80;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_7c [4];
  mutex *local_78;
  undefined1 local_74;
  undefined4 local_68;
  undefined4 local_64;
  undefined4 local_60;
  undefined4 local_5c;
  undefined4 local_58;
  undefined4 local_54;
  undefined4 local_50;
  undefined4 local_4c;
  undefined4 local_48;
  int local_44;
  int local_40;
  int local_3c;
  
  FUN_00510a86((FetchAllResponse *)&local_48,*param_2,param_5,param_6,param_5,param_6);
  FUN_0051683e(auStack_90,(FetchAllResponse *)&local_48);
  FUN_0050811a((FetchAllResponse *)&local_48);
  FUN_00509150(&local_80,0,auStack_8c);
  piVar4 = (int *)*param_2;
  pFVar3 = (FetchAllResponse *)&local_58;
  pcVar5 = *(code **)(*piVar4 + 0xc);
  FUN_00508168(pFVar3,&local_80);
  FUN_005087a8((FetchAllResponse *)&local_48,pFVar3);
  iVar2 = (*pcVar5)(piVar4,param_3,param_7,(FetchAllResponse *)&local_48);
  FUN_0050812e((FetchAllResponse *)&local_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_54);
  if (iVar2 == 0) {
    local_48 = 0xfffffffd;
    local_44 = iVar2;
    local_40 = iVar2;
    local_3c = iVar2;
    FetchAllResponse::FetchAllResponse(param_1,(FetchAllResponse *)&local_48);
    this = (FetchAllResponse *)&local_48;
    goto LAB_0050950e;
  }
  local_64 = 0;
  local_60 = 0;
  local_5c = 0;
  local_54 = 0;
  local_50 = 0;
  local_4c = 0;
  local_68 = 0xfffffffe;
  local_58 = 0xfffffffb;
  iVar2 = FUN_00553a80();
  this = (FetchAllResponse *)&local_78;
  if (iVar2 == 0) {
    local_74 = 0;
    local_78 = local_80;
    if (local_80 == (mutex *)0x0) {
                    /* WARNING: Subroutine does not return */
      FUN_007c4c60(1);
    }
    std::mutex::lock(local_80);
    local_74 = 1;
    if (local_80[8] == (mutex)0x0) {
      puVar6 = (unique_lock *)(local_80 + 4);
      FUN_007bfd24(&local_98);
      lVar1 = (ulonglong)param_5 * 1000000 + CONCAT44(param_6 * 1000000,local_98);
      local_88 = (undefined4)lVar1;
      iStack_84 = iStack_94 + (int)((ulonglong)lVar1 >> 0x20);
      do {
        if (local_80[8] != (mutex)0x0) goto LAB_005094d8;
        iVar2 = std::condition_variable::
                __wait_until_impl<std::chrono::duration<long_long,std::ratio<1ll,1000000000ll>>>
                          (puVar6,(time_point *)this);
      } while (iVar2 != 1);
      if (local_80[8] != (mutex)0x0) goto LAB_005094d8;
    }
    else {
LAB_005094d8:
      pFVar3 = (FetchAllResponse *)(local_80 + 0xc);
    }
    FetchAllResponse::FetchAllResponse((FetchAllResponse *)&local_48,pFVar3);
    std::unique_lock<std::mutex>::~unique_lock((unique_lock<std::mutex> *)this);
  }
  else {
    FUN_005166ae(4,"Blocking calls are not allowed from the UI thread.");
    FetchAllResponse::FetchAllResponse((FetchAllResponse *)&local_48,(FetchAllResponse *)&local_68);
  }
  FetchAllResponse::FetchAllResponse(this,(FetchAllResponse *)&local_48);
  std::vector<gpg::Achievement,std::allocator<gpg::Achievement>>::~vector
            ((vector<gpg::Achievement,std::allocator<gpg::Achievement>> *)&local_44);
  std::vector<gpg::Achievement,std::allocator<gpg::Achievement>>::~vector
            ((vector<gpg::Achievement,std::allocator<gpg::Achievement>> *)&local_54);
  std::vector<gpg::Achievement,std::allocator<gpg::Achievement>>::~vector
            ((vector<gpg::Achievement,std::allocator<gpg::Achievement>> *)&local_64);
  FetchAllResponse::FetchAllResponse(param_1,this);
LAB_0050950e:
  std::vector<gpg::Achievement,std::allocator<gpg::Achievement>>::~vector
            ((vector<gpg::Achievement,std::allocator<gpg::Achievement>> *)(this + 4));
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_7c);
  FUN_00516580(auStack_90);
  return param_1;
}

// ---- gpg::AchievementManager::FetchAllBlocking  @ 0x509574
/* gpg::AchievementManager::FetchAllBlocking(gpg::DataSource, std::chrono::duration<long long,
   std::ratio<1ll, 1000ll> >) */

FetchAllResponse *
gpg::AchievementManager::FetchAllBlocking
          (FetchAllResponse *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
          undefined4 param_5,undefined4 param_6)

{
  undefined4 extraout_r3;
  undefined1 auStack_38 [4];
  undefined1 auStack_34 [4];
  FetchAllResponse aFStack_30 [4];
  vector<gpg::Achievement,std::allocator<gpg::Achievement>> avStack_2c [12];
  
  FUN_007c6a60(auStack_34,&DAT_00800efc,auStack_38);
  FetchAllBlocking(aFStack_30,param_2,param_3,extraout_r3,param_5,param_6,auStack_34);
  FetchAllResponse::FetchAllResponse(param_1,aFStack_30);
  std::vector<gpg::Achievement,std::allocator<gpg::Achievement>>::~vector(avStack_2c);
  FUN_007c5914(auStack_34);
  return param_1;
}

// ---- gpg::AchievementManager::FetchAllBlocking  @ 0x5095d0
/* gpg::AchievementManager::FetchAllBlocking(gpg::DataSource) */

FetchAllResponse * gpg::AchievementManager::FetchAllBlocking(FetchAllResponse *param_1)

{
  FetchAllResponse aFStack_20 [4];
  vector<gpg::Achievement,std::allocator<gpg::Achievement>> avStack_1c [12];
  
  FetchAllBlocking(aFStack_20);
  FetchAllResponse::FetchAllResponse(param_1,aFStack_20);
  std::vector<gpg::Achievement,std::allocator<gpg::Achievement>>::~vector(avStack_1c);
  return param_1;
}

// ---- gpg::AchievementManager::FetchAllBlocking  @ 0x509604
/* gpg::AchievementManager::FetchAllBlocking() */

void gpg::AchievementManager::FetchAllBlocking(void)

{
  FetchAllResponse *in_r0;
  undefined4 in_r1;
  FetchAllResponse aFStack_20 [4];
  vector<gpg::Achievement,std::allocator<gpg::Achievement>> avStack_1c [16];
  
  FetchAllBlocking(aFStack_20,in_r1,1);
  FetchAllResponse::FetchAllResponse(in_r0,aFStack_20);
  std::vector<gpg::Achievement,std::allocator<gpg::Achievement>>::~vector(avStack_1c);
  return;
}

// ---- gpg::AchievementManager::FetchAllBlocking  @ 0x509626
/* gpg::AchievementManager::FetchAllBlocking(std::chrono::duration<long long, std::ratio<1ll,
   1000ll> >) */

FetchAllResponse *
gpg::AchievementManager::FetchAllBlocking
          (FetchAllResponse *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  FetchAllResponse aFStack_20 [4];
  vector<gpg::Achievement,std::allocator<gpg::Achievement>> avStack_1c [16];
  
  FetchAllBlocking(aFStack_20,param_2,1,param_4,param_3,param_4);
  FetchAllResponse::FetchAllResponse(param_1,aFStack_20);
  std::vector<gpg::Achievement,std::allocator<gpg::Achievement>>::~vector(avStack_1c);
  return param_1;
}

// ---- gpg::AchievementManager::FetchBlocking  @ 0x509650
/* gpg::AchievementManager::FetchBlocking(gpg::DataSource, std::chrono::duration<long long,
   std::ratio<1ll, 1000ll> >, std::string const&) */

FetchResponse *
gpg::AchievementManager::FetchBlocking
          (FetchResponse *param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4,
          uint param_5,int param_6,undefined4 param_7)

{
  longlong lVar1;
  int iVar2;
  FetchResponse *pFVar3;
  unique_lock *puVar4;
  int *piVar5;
  code *pcVar6;
  undefined4 local_b0;
  int iStack_ac;
  undefined1 auStack_a8 [4];
  undefined1 auStack_a4 [4];
  undefined4 local_a0;
  int iStack_9c;
  mutex *local_94;
  __shared_count a_Stack_90 [4];
  mutex *local_8c;
  undefined1 local_88;
  undefined4 local_84;
  Achievement aAStack_80 [8];
  FetchResponse aFStack_78 [12];
  undefined4 local_6c;
  Achievement aAStack_68 [8];
  undefined4 local_60;
  Achievement aAStack_5c [8];
  mutex *local_54;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_50 [8];
  undefined1 auStack_48 [36];
  
  FUN_00510a86(auStack_48,*param_2);
  FUN_0051683e(auStack_a8,auStack_48);
  FUN_0050811a(auStack_48);
  FUN_005091e8(&local_94,0,auStack_a4);
  piVar5 = (int *)*param_2;
  pcVar6 = *(code **)(*piVar5 + 0x10);
  local_54 = local_94;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count(a_Stack_50,a_Stack_90);
  FUN_00508650(auStack_48,(FetchResponse *)&local_54);
  iVar2 = (*pcVar6)(piVar5,param_3,param_7,auStack_48);
  FUN_0050818c(auStack_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_50);
  if (iVar2 == 0) {
    pFVar3 = (FetchResponse *)&local_84;
    local_84 = 0xfffffffd;
    Achievement::Achievement(aAStack_80);
    FetchResponse::FetchResponse(param_1,pFVar3);
    goto LAB_005097f0;
  }
  Achievement::Achievement(aAStack_68);
  pFVar3 = (FetchResponse *)&local_60;
  Achievement::Achievement(aAStack_5c);
  local_6c = 0xfffffffe;
  local_60 = 0xfffffffb;
  iVar2 = FUN_00553a80();
  if (iVar2 == 0) {
    local_88 = 0;
    local_8c = local_94;
    if (local_94 == (mutex *)0x0) {
                    /* WARNING: Subroutine does not return */
      FUN_007c4c60(1);
    }
    std::mutex::lock(local_94);
    local_88 = 1;
    if (local_94[8] == (mutex)0x0) {
      puVar4 = (unique_lock *)(local_94 + 4);
      FUN_007bfd24(&local_b0);
      lVar1 = (ulonglong)param_5 * 1000000 + CONCAT44(param_6 * 1000000,local_b0);
      local_a0 = (undefined4)lVar1;
      iStack_9c = iStack_ac + (int)((ulonglong)lVar1 >> 0x20);
      do {
        if (local_94[8] != (mutex)0x0) goto LAB_00509792;
        iVar2 = std::condition_variable::
                __wait_until_impl<std::chrono::duration<long_long,std::ratio<1ll,1000000000ll>>>
                          (puVar4,(time_point *)&local_8c);
      } while (iVar2 != 1);
      if (local_94[8] != (mutex)0x0) goto LAB_00509792;
    }
    else {
LAB_00509792:
      pFVar3 = (FetchResponse *)(local_94 + 0xc);
    }
    FetchResponse::FetchResponse((FetchResponse *)&local_54,pFVar3);
    std::unique_lock<std::mutex>::~unique_lock((unique_lock<std::mutex> *)&local_8c);
  }
  else {
    FUN_005166ae(4,"Blocking calls are not allowed from the UI thread.");
    FetchResponse::FetchResponse((FetchResponse *)&local_54,(FetchResponse *)&local_6c);
  }
  pFVar3 = aFStack_78;
  FetchResponse::FetchResponse(pFVar3,(FetchResponse *)&local_54);
  Achievement::~Achievement((Achievement *)a_Stack_50);
  Achievement::~Achievement(aAStack_5c);
  Achievement::~Achievement(aAStack_68);
  FetchResponse::FetchResponse(param_1,pFVar3);
LAB_005097f0:
  Achievement::~Achievement((Achievement *)(pFVar3 + 4));
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)a_Stack_90);
  FUN_00516580(auStack_a8);
  return param_1;
}

// ---- gpg::AchievementManager::FetchBlocking  @ 0x509850
/* gpg::AchievementManager::FetchBlocking(gpg::DataSource, std::string const&) */

FetchResponse * gpg::AchievementManager::FetchBlocking(FetchResponse *param_1)

{
  FetchResponse aFStack_24 [4];
  Achievement aAStack_20 [12];
  
  FetchBlocking(aFStack_24);
  FetchResponse::FetchResponse(param_1,aFStack_24);
  Achievement::~Achievement(aAStack_20);
  return param_1;
}

// ---- gpg::AchievementManager::FetchBlocking  @ 0x509890
/* gpg::AchievementManager::FetchBlocking(std::string const&) */

string * gpg::AchievementManager::FetchBlocking(string *param_1)

{
  undefined4 in_r1;
  FetchResponse aFStack_1c [4];
  Achievement aAStack_18 [12];
  
  FetchBlocking(aFStack_1c,in_r1,1);
  FetchResponse::FetchResponse((FetchResponse *)param_1,aFStack_1c);
  Achievement::~Achievement(aAStack_18);
  return param_1;
}

// ---- gpg::AchievementManager::FetchBlocking  @ 0x5098c0
/* gpg::AchievementManager::FetchBlocking(std::chrono::duration<long long, std::ratio<1ll, 1000ll>
   >, std::string const&) */

FetchResponse *
gpg::AchievementManager::FetchBlocking
          (FetchResponse *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
          undefined4 param_5)

{
  FetchResponse aFStack_1c [4];
  Achievement aAStack_18 [12];
  
  FetchBlocking(aFStack_1c,param_2,1,param_5,param_3,param_4,param_5);
  FetchResponse::FetchResponse(param_1,aFStack_1c);
  Achievement::~Achievement(aAStack_18);
  return param_1;
}

// ---- gpg::AchievementManager::ShowAllUIBlocking  @ 0x5098f8
/* gpg::AchievementManager::ShowAllUIBlocking(std::chrono::duration<long long, std::ratio<1ll,
   1000ll> >) */

undefined4
gpg::AchievementManager::ShowAllUIBlocking
          (undefined4 *param_1,undefined4 param_2,uint param_3,int param_4)

{
  longlong lVar1;
  int iVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  int *piVar5;
  unique_lock *puVar6;
  code *pcVar7;
  undefined4 local_70;
  int iStack_6c;
  undefined1 auStack_68 [4];
  undefined1 auStack_64 [4];
  undefined4 local_60;
  int iStack_5c;
  mutex *local_58;
  __shared_count a_Stack_54 [4];
  mutex *local_50;
  __shared_count<(__gnu_cxx::_Lock_policy)2> local_4c [4];
  undefined1 auStack_48 [36];
  
  FUN_00510a86(auStack_48,*param_1);
  FUN_0051683e(auStack_68,auStack_48);
  FUN_0050811a(auStack_48);
  FUN_005092a8(&local_58,0,auStack_64);
  piVar5 = (int *)*param_1;
  pcVar7 = *(code **)(*piVar5 + 0x24);
  local_50 = local_58;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count(local_4c,a_Stack_54);
  FUN_005086f8(auStack_48,(unique_lock<std::mutex> *)&local_50);
  iVar2 = (*pcVar7)(piVar5,auStack_48);
  FUN_005082ea(auStack_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(local_4c);
  if (iVar2 == 0) {
    uVar4 = 0xfffffffd;
    goto LAB_00509a3e;
  }
  uVar3 = FUN_00529ec0(0xfffffffe);
  uVar4 = FUN_00529ec0(0xfffffffb);
  iVar2 = FUN_00553a80();
  if (iVar2 != 0) {
    FUN_005166ae(4,"Blocking calls are not allowed from the UI thread.");
    uVar4 = uVar3;
    goto LAB_00509a3e;
  }
  local_4c[0] = (__shared_count<(__gnu_cxx::_Lock_policy)2>)0x0;
  local_50 = local_58;
  if (local_58 == (mutex *)0x0) {
                    /* WARNING: Subroutine does not return */
    FUN_007c4c60(1);
  }
  std::mutex::lock(local_58);
  local_4c[0] = (__shared_count<(__gnu_cxx::_Lock_policy)2>)0x1;
  if (local_58[8] == (mutex)0x0) {
    puVar6 = (unique_lock *)(local_58 + 4);
    FUN_007bfd24(&local_70);
    lVar1 = (ulonglong)param_3 * 1000000 + CONCAT44(param_4 * 1000000,local_70);
    local_60 = (undefined4)lVar1;
    iStack_5c = iStack_6c + (int)((ulonglong)lVar1 >> 0x20);
    do {
      if (local_58[8] != (mutex)0x0) goto LAB_005099fa;
      iVar2 = std::condition_variable::
              __wait_until_impl<std::chrono::duration<long_long,std::ratio<1ll,1000000000ll>>>
                        (puVar6,(time_point *)&local_50);
    } while (iVar2 != 1);
    if (local_58[8] != (mutex)0x0) goto LAB_005099fa;
  }
  else {
LAB_005099fa:
    uVar4 = *(undefined4 *)(local_58 + 0xc);
  }
  std::unique_lock<std::mutex>::~unique_lock((unique_lock<std::mutex> *)&local_50);
LAB_00509a3e:
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)a_Stack_54);
  FUN_00516580(auStack_68);
  return uVar4;
}

// ---- gpg::AchievementManager::ShowAllUIBlocking  @ 0x509a5c
/* gpg::AchievementManager::ShowAllUIBlocking() */

void gpg::AchievementManager::ShowAllUIBlocking(void)

{
  undefined4 in_r0;
  undefined4 in_r1;
  
  ShowAllUIBlocking(in_r0,in_r1,0x6cebb800,0x49);
  return;
}

// ---- gpg::GameServices::Builder::Builder  @ 0x509a90
/* gpg::GameServices::Builder::Builder() */

Builder * __thiscall gpg::GameServices::Builder::Builder(Builder *this)

{
  void *pvVar1;
  
  pvVar1 = operator_new(0x154);
  FUN_0050ace8();
  *(void **)this = pvVar1;
  return this;
}

// ---- gpg::GameServices::Builder::EnableSnapshots  @ 0x509b54
/* gpg::GameServices::Builder::EnableSnapshots() */

Builder * __thiscall gpg::GameServices::Builder::EnableSnapshots(Builder *this)

{
  FUN_0050b0a8(*(undefined4 *)this,&DAT_00960bfc);
  return this;
}

// ---- gpg::GameServices::Builder::AddOauthScope  @ 0x509b6c
/* gpg::GameServices::Builder::AddOauthScope(std::string const&) */

string * gpg::GameServices::Builder::AddOauthScope(string *param_1)

{
  FUN_0050b0a8(*(undefined4 *)param_1);
  return param_1;
}

// ---- gpg::GameServices::Builder::InternalSetHighLevelSDK  @ 0x509b7a
/* gpg::GameServices::Builder::InternalSetHighLevelSDK(unsigned int) */

uint gpg::GameServices::Builder::InternalSetHighLevelSDK(uint param_1)

{
  FUN_0050a6f2(*(undefined4 *)param_1);
  return param_1;
}

// ---- gpg::GameServices::Builder::InternalSetDriveRootURL  @ 0x509b88
/* gpg::GameServices::Builder::InternalSetDriveRootURL(std::string const&) */

string * gpg::GameServices::Builder::InternalSetDriveRootURL(string *param_1)

{
  FUN_0050a6f8(*(undefined4 *)param_1);
  return param_1;
}

// ---- gpg::GameServices::Builder::InternalSetGamesRootURL  @ 0x509b96
/* gpg::GameServices::Builder::InternalSetGamesRootURL(std::string const&) */

string * gpg::GameServices::Builder::InternalSetGamesRootURL(string *param_1)

{
  FUN_0050a700(*(undefined4 *)param_1);
  return param_1;
}

// ---- gpg::GameServices::Builder::SetCallbackEnqueuer  @ 0x509ba4
/* gpg::GameServices::Builder::SetCallbackEnqueuer(std::function<void (std::function<void ()>)>) */

undefined4 *
gpg::GameServices::Builder::SetCallbackEnqueuer
          (undefined4 *param_1,function *param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  undefined4 *puStack_20;
  function *pfStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  
  uVar1 = *param_1;
  puStack_20 = param_1;
  pfStack_1c = param_2;
  uStack_18 = param_3;
  uStack_14 = param_4;
  std::function<void(std::function<void()>)>::function
            ((function<void(std::function<void()>)> *)&puStack_20,param_2);
  FUN_0050ab12(uVar1,(function<void(std::function<void()>)> *)&puStack_20);
  std::_Function_base::~_Function_base((_Function_base *)&puStack_20);
  return param_1;
}

// ---- gpg::GameServices::Builder::SetLogging  @ 0x509ce0
/* gpg::GameServices::Builder::SetLogging(std::function<void (gpg::LogLevel, std::string const&)>,
   gpg::LogLevel) */

Builder * __thiscall
gpg::GameServices::Builder::SetLogging(Builder *this,function *param_2,undefined4 param_3)

{
  undefined4 uVar1;
  undefined4 uVar2;
  function<void(gpg::LogLevel,std::string_const&)> afStack_50 [16];
  undefined1 auStack_40 [36];
  
  uVar2 = *(undefined4 *)this;
  uVar1 = FUN_0050a740(uVar2);
  std::function<void(gpg::LogLevel,std::string_const&)>::function(afStack_50,param_2);
  FUN_00509c80(auStack_40,uVar1,afStack_50);
  FUN_0050ac88(uVar2,auStack_40,param_3);
  FUN_0050811a(auStack_40);
  std::_Function_base::~_Function_base((_Function_base *)afStack_50);
  return this;
}

// ---- gpg::GameServices::Builder::SetLogging  @ 0x509d3a
/* gpg::GameServices::Builder::SetLogging(std::function<void (gpg::LogLevel, std::string const&)>)
    */

Builder * __thiscall gpg::GameServices::Builder::SetLogging(Builder *this,function *param_2)

{
  undefined4 uVar1;
  undefined4 uVar2;
  function<void(gpg::LogLevel,std::string_const&)> afStack_48 [16];
  undefined1 auStack_38 [32];
  
  uVar2 = *(undefined4 *)this;
  uVar1 = FUN_0050a740(uVar2);
  std::function<void(gpg::LogLevel,std::string_const&)>::function(afStack_48,param_2);
  FUN_00509c80(auStack_38,uVar1,afStack_48);
  FUN_0050ac88(uVar2,auStack_38,2);
  FUN_0050811a(auStack_38);
  std::_Function_base::~_Function_base((_Function_base *)afStack_48);
  return this;
}

// ---- gpg::GameServices::Builder::SetOnLog  @ 0x509d92
/* gpg::GameServices::Builder::SetOnLog(std::function<void (gpg::LogLevel, std::string const&)>,
   gpg::LogLevel) */

Builder * __thiscall
gpg::GameServices::Builder::SetOnLog(Builder *this,function *param_2,undefined4 param_3)

{
  undefined4 uVar1;
  undefined4 uVar2;
  function<void(gpg::LogLevel,std::string_const&)> afStack_50 [16];
  undefined1 auStack_40 [36];
  
  uVar2 = *(undefined4 *)this;
  uVar1 = FUN_0050a740(uVar2);
  std::function<void(gpg::LogLevel,std::string_const&)>::function(afStack_50,param_2);
  FUN_00509c80(auStack_40,uVar1,afStack_50);
  FUN_0050ac88(uVar2,auStack_40,param_3);
  FUN_0050811a(auStack_40);
  std::_Function_base::~_Function_base((_Function_base *)afStack_50);
  return this;
}

// ---- gpg::GameServices::Builder::SetOnLog  @ 0x509dec
/* gpg::GameServices::Builder::SetOnLog(std::function<void (gpg::LogLevel, std::string const&)>) */

Builder * __thiscall gpg::GameServices::Builder::SetOnLog(Builder *this,function *param_2)

{
  undefined4 uVar1;
  undefined4 uVar2;
  function<void(gpg::LogLevel,std::string_const&)> afStack_48 [16];
  undefined1 auStack_38 [32];
  
  uVar2 = *(undefined4 *)this;
  uVar1 = FUN_0050a740(uVar2);
  std::function<void(gpg::LogLevel,std::string_const&)>::function(afStack_48,param_2);
  FUN_00509c80(auStack_38,uVar1,afStack_48);
  FUN_0050ac88(uVar2,auStack_38,2);
  FUN_0050811a(auStack_38);
  std::_Function_base::~_Function_base((_Function_base *)afStack_48);
  return this;
}

// ---- gpg::GameServices::Builder::SetDefaultOnLog  @ 0x509e44
/* gpg::GameServices::Builder::SetDefaultOnLog(gpg::LogLevel) */

Builder * __thiscall gpg::GameServices::Builder::SetDefaultOnLog(Builder *this,undefined4 param_2)

{
  undefined4 uVar1;
  code *local_80 [2];
  code *local_78;
  code *local_74;
  _Function_base a_Stack_70 [8];
  undefined4 local_68;
  function<void(std::function<void()>)> afStack_60 [16];
  function<void(gpg::LogLevel,std::string_const&)> afStack_50 [16];
  function afStack_40 [8];
  undefined4 local_38;
  function<void(gpg::LogLevel,std::string_const&)> afStack_30 [16];
  
  local_80[0] = (code *)0x5539c9;
  local_68 = 0;
  local_38 = 0;
  local_74 = (code *)0x509a6d;
  uVar1 = *(undefined4 *)this;
  local_78 = (code *)0x509a79;
  std::function<void(gpg::LogLevel,std::string_const&)>::function(afStack_30,(function *)local_80);
  std::function<void(std::function<void()>)>::function(afStack_60,afStack_40);
  std::function<void(gpg::LogLevel,std::string_const&)>::function(afStack_50,(function *)afStack_30)
  ;
  FUN_0050811a(afStack_40);
  std::_Function_base::~_Function_base((_Function_base *)local_80);
  std::_Function_base::~_Function_base(a_Stack_70);
  FUN_0050ac88(uVar1,afStack_60,param_2);
  FUN_0050811a(afStack_60);
  return this;
}

// ---- gpg::GameServices::Builder::SetOnPlayerLevelUp  @ 0x509ed4
/* gpg::GameServices::Builder::SetOnPlayerLevelUp(std::function<void (gpg::Player)>) */

Builder * __thiscall
gpg::GameServices::Builder::SetOnPlayerLevelUp(Builder *this,function<void(gpg::Player)> *param_2)

{
  function *pfVar1;
  undefined4 uVar2;
  function<void(gpg::Player)> afStack_88 [8];
  int local_80;
  function<void(gpg::Player)> afStack_78 [8];
  int local_70;
  function<void(std::function<void()>)> afStack_68 [16];
  function afStack_58 [8];
  undefined4 local_50;
  function<void(std::function<void()>)> afStack_48 [8];
  int local_40;
  function<void(gpg::Player)> afStack_38 [8];
  undefined4 local_30;
  
  uVar2 = *(undefined4 *)this;
  pfVar1 = (function *)FUN_0050a740(uVar2);
  local_80 = 0;
  std::function<void(gpg::Player)>::swap(param_2,(function *)afStack_88);
  if (local_80 == 0) {
    local_70 = local_80;
    local_40 = local_80;
  }
  else {
    local_70 = 0;
    std::function<void(gpg::Player)>::swap(afStack_88,(function *)afStack_78);
    std::function<void(std::function<void()>)>::function(afStack_48,pfVar1);
  }
  local_30 = 0;
  std::function<void(gpg::Player)>::swap(afStack_78,(function *)afStack_38);
  std::function<void(std::function<void()>)>::function(afStack_68,(function *)afStack_48);
  local_50 = 0;
  std::function<void(gpg::Player)>::swap(afStack_38,afStack_58);
  FUN_00509b02(afStack_48);
  std::_Function_base::~_Function_base((_Function_base *)afStack_78);
  FUN_0050aa20(uVar2,afStack_68);
  FUN_00509b02(afStack_68);
  std::_Function_base::~_Function_base((_Function_base *)afStack_88);
  return this;
}

// ---- gpg::GameServices::Builder::SetOnTurnBasedMatchEvent  @ 0x509f82
/* gpg::GameServices::Builder::SetOnTurnBasedMatchEvent(std::function<void (gpg::MultiplayerEvent,
   std::string, gpg::TurnBasedMatch)>) */

Builder * __thiscall
gpg::GameServices::Builder::SetOnTurnBasedMatchEvent
          (Builder *this,
          function<void(gpg::MultiplayerEvent,std::string,gpg::TurnBasedMatch)> *param_2)

{
  function *pfVar1;
  undefined4 uVar2;
  function<void(gpg::MultiplayerEvent,std::string,gpg::TurnBasedMatch)> afStack_88 [8];
  int local_80;
  function<void(gpg::MultiplayerEvent,std::string,gpg::TurnBasedMatch)> afStack_78 [8];
  int local_70;
  function<void(std::function<void()>)> afStack_68 [16];
  function afStack_58 [8];
  undefined4 local_50;
  function<void(std::function<void()>)> afStack_48 [8];
  int local_40;
  function<void(gpg::MultiplayerEvent,std::string,gpg::TurnBasedMatch)> afStack_38 [8];
  undefined4 local_30;
  
  uVar2 = *(undefined4 *)this;
  pfVar1 = (function *)FUN_0050a740(uVar2);
  local_80 = 0;
  std::function<void(gpg::MultiplayerEvent,std::string,gpg::TurnBasedMatch)>::swap
            (param_2,(function *)afStack_88);
  if (local_80 == 0) {
    local_70 = local_80;
    local_40 = local_80;
  }
  else {
    local_70 = 0;
    std::function<void(gpg::MultiplayerEvent,std::string,gpg::TurnBasedMatch)>::swap
              (afStack_88,(function *)afStack_78);
    std::function<void(std::function<void()>)>::function(afStack_48,pfVar1);
  }
  local_30 = 0;
  std::function<void(gpg::MultiplayerEvent,std::string,gpg::TurnBasedMatch)>::swap
            (afStack_78,(function *)afStack_38);
  std::function<void(std::function<void()>)>::function(afStack_68,(function *)afStack_48);
  local_50 = 0;
  std::function<void(gpg::MultiplayerEvent,std::string,gpg::TurnBasedMatch)>::swap
            (afStack_38,afStack_58);
  FUN_00509b2a(afStack_48);
  std::_Function_base::~_Function_base((_Function_base *)afStack_78);
  FUN_0050aa50(uVar2,afStack_68);
  FUN_00509b2a(afStack_68);
  std::_Function_base::~_Function_base((_Function_base *)afStack_88);
  return this;
}

// ---- gpg::GameServices::Builder::SetOnMultiplayerInvitationEvent  @ 0x50a030
/* gpg::GameServices::Builder::SetOnMultiplayerInvitationEvent(std::function<void
   (gpg::MultiplayerEvent, std::string, gpg::MultiplayerInvitation)>) */

Builder * __thiscall
gpg::GameServices::Builder::SetOnMultiplayerInvitationEvent
          (Builder *this,
          function<void(gpg::MultiplayerEvent,std::string,gpg::MultiplayerInvitation)> *param_2)

{
  function *pfVar1;
  undefined4 uVar2;
  function<void(gpg::MultiplayerEvent,std::string,gpg::MultiplayerInvitation)> afStack_88 [8];
  int local_80;
  function<void(gpg::MultiplayerEvent,std::string,gpg::MultiplayerInvitation)> afStack_78 [8];
  int local_70;
  function<void(std::function<void()>)> afStack_68 [16];
  function afStack_58 [8];
  undefined4 local_50;
  function<void(std::function<void()>)> afStack_48 [8];
  int local_40;
  function<void(gpg::MultiplayerEvent,std::string,gpg::MultiplayerInvitation)> afStack_38 [8];
  undefined4 local_30;
  
  uVar2 = *(undefined4 *)this;
  pfVar1 = (function *)FUN_0050a740(uVar2);
  local_80 = 0;
  std::function<void(gpg::MultiplayerEvent,std::string,gpg::MultiplayerInvitation)>::swap
            (param_2,(function *)afStack_88);
  if (local_80 == 0) {
    local_70 = local_80;
    local_40 = local_80;
  }
  else {
    local_70 = 0;
    std::function<void(gpg::MultiplayerEvent,std::string,gpg::MultiplayerInvitation)>::swap
              (afStack_88,(function *)afStack_78);
    std::function<void(std::function<void()>)>::function(afStack_48,pfVar1);
  }
  local_30 = 0;
  std::function<void(gpg::MultiplayerEvent,std::string,gpg::MultiplayerInvitation)>::swap
            (afStack_78,(function *)afStack_38);
  std::function<void(std::function<void()>)>::function(afStack_68,(function *)afStack_48);
  local_50 = 0;
  std::function<void(gpg::MultiplayerEvent,std::string,gpg::MultiplayerInvitation)>::swap
            (afStack_38,afStack_58);
  FUN_00509b16(afStack_48);
  std::_Function_base::~_Function_base((_Function_base *)afStack_78);
  FUN_0050aae2(uVar2,afStack_68);
  FUN_00509b16(afStack_68);
  std::_Function_base::~_Function_base((_Function_base *)afStack_88);
  return this;
}

// ---- gpg::GameServices::Builder::SetOnAchievementUnlocked  @ 0x50a0de
/* gpg::GameServices::Builder::SetOnAchievementUnlocked(std::function<void (std::string const&)>) */

Builder * __thiscall
gpg::GameServices::Builder::SetOnAchievementUnlocked
          (Builder *this,function<void(std::string_const&)> *param_2)

{
  function *pfVar1;
  undefined4 uVar2;
  function<void(std::string_const&)> afStack_88 [8];
  int local_80;
  function<void(std::string_const&)> afStack_78 [8];
  int local_70;
  function<void(std::function<void()>)> afStack_68 [16];
  function afStack_58 [8];
  undefined4 local_50;
  function<void(std::function<void()>)> afStack_48 [8];
  int local_40;
  function<void(std::string_const&)> afStack_38 [8];
  undefined4 local_30;
  
  uVar2 = *(undefined4 *)this;
  pfVar1 = (function *)FUN_0050a740(uVar2);
  local_80 = 0;
  std::function<void(std::string_const&)>::swap(param_2,(function *)afStack_88);
  if (local_80 == 0) {
    local_70 = local_80;
    local_40 = local_80;
  }
  else {
    local_70 = 0;
    std::function<void(std::string_const&)>::swap(afStack_88,(function *)afStack_78);
    std::function<void(std::function<void()>)>::function(afStack_48,pfVar1);
  }
  local_30 = 0;
  std::function<void(std::string_const&)>::swap(afStack_78,(function *)afStack_38);
  std::function<void(std::function<void()>)>::function(afStack_68,(function *)afStack_48);
  local_50 = 0;
  std::function<void(std::string_const&)>::swap(afStack_38,afStack_58);
  FUN_00509aee(afStack_48);
  std::_Function_base::~_Function_base((_Function_base *)afStack_78);
  FUN_0050aa80(uVar2,afStack_68);
  FUN_00509aee(afStack_68);
  std::_Function_base::~_Function_base((_Function_base *)afStack_88);
  return this;
}

// ---- gpg::GameServices::Builder::InternalSetOnOobErrorDetected  @ 0x50a18c
/* gpg::GameServices::Builder::InternalSetOnOobErrorDetected(std::function<void (gpg::OobError)>) */

Builder * __thiscall
gpg::GameServices::Builder::InternalSetOnOobErrorDetected
          (Builder *this,function<void(gpg::OobError)> *param_2)

{
  function *pfVar1;
  undefined4 uVar2;
  function<void(gpg::OobError)> afStack_88 [8];
  int local_80;
  function<void(gpg::OobError)> afStack_78 [8];
  int local_70;
  function<void(std::function<void()>)> afStack_68 [16];
  function afStack_58 [8];
  undefined4 local_50;
  function<void(std::function<void()>)> afStack_48 [8];
  int local_40;
  function<void(gpg::OobError)> afStack_38 [8];
  undefined4 local_30;
  
  uVar2 = *(undefined4 *)this;
  pfVar1 = (function *)FUN_0050a740(uVar2);
  local_80 = 0;
  std::function<void(gpg::OobError)>::swap(param_2,(function *)afStack_88);
  if (local_80 == 0) {
    local_70 = local_80;
    local_40 = local_80;
  }
  else {
    local_70 = 0;
    std::function<void(gpg::OobError)>::swap(afStack_88,(function *)afStack_78);
    std::function<void(std::function<void()>)>::function(afStack_48,pfVar1);
  }
  local_30 = 0;
  std::function<void(gpg::OobError)>::swap(afStack_78,(function *)afStack_38);
  std::function<void(std::function<void()>)>::function(afStack_68,(function *)afStack_48);
  local_50 = 0;
  std::function<void(gpg::OobError)>::swap(afStack_38,afStack_58);
  FUN_00509ada(afStack_48);
  std::_Function_base::~_Function_base((_Function_base *)afStack_78);
  FUN_0050a9c0(uVar2,afStack_68);
  FUN_00509ada(afStack_68);
  std::_Function_base::~_Function_base((_Function_base *)afStack_88);
  return this;
}

// ---- gpg::GameServices::Builder::SetOnAuthActionFinished  @ 0x50a23a
/* gpg::GameServices::Builder::SetOnAuthActionFinished(std::function<void (gpg::AuthOperation,
   gpg::AuthStatus)>) */

Builder * __thiscall
gpg::GameServices::Builder::SetOnAuthActionFinished
          (Builder *this,function<void(gpg::AuthOperation,gpg::AuthStatus)> *param_2)

{
  function *pfVar1;
  undefined4 uVar2;
  function<void(gpg::AuthOperation,gpg::AuthStatus)> afStack_88 [8];
  int local_80;
  function<void(gpg::AuthOperation,gpg::AuthStatus)> afStack_78 [8];
  int local_70;
  function<void(std::function<void()>)> afStack_68 [16];
  function afStack_58 [8];
  undefined4 local_50;
  function<void(std::function<void()>)> afStack_48 [8];
  int local_40;
  function<void(gpg::AuthOperation,gpg::AuthStatus)> afStack_38 [8];
  undefined4 local_30;
  
  uVar2 = *(undefined4 *)this;
  pfVar1 = (function *)FUN_0050a740(uVar2);
  local_80 = 0;
  std::function<void(gpg::AuthOperation,gpg::AuthStatus)>::swap(param_2,(function *)afStack_88);
  if (local_80 == 0) {
    local_70 = local_80;
    local_40 = local_80;
  }
  else {
    local_70 = 0;
    std::function<void(gpg::AuthOperation,gpg::AuthStatus)>::swap(afStack_88,(function *)afStack_78)
    ;
    std::function<void(std::function<void()>)>::function(afStack_48,pfVar1);
  }
  local_30 = 0;
  std::function<void(gpg::AuthOperation,gpg::AuthStatus)>::swap(afStack_78,(function *)afStack_38);
  std::function<void(std::function<void()>)>::function(afStack_68,(function *)afStack_48);
  local_50 = 0;
  std::function<void(gpg::AuthOperation,gpg::AuthStatus)>::swap(afStack_38,afStack_58);
  FUN_00509ac6(afStack_48);
  std::_Function_base::~_Function_base((_Function_base *)afStack_78);
  FUN_0050a9f0(uVar2,afStack_68);
  FUN_00509ac6(afStack_68);
  std::_Function_base::~_Function_base((_Function_base *)afStack_88);
  return this;
}

// ---- gpg::GameServices::Builder::SetOnQuestCompleted  @ 0x50a2e8
/* gpg::GameServices::Builder::SetOnQuestCompleted(std::function<void (gpg::Quest)>) */

Builder * __thiscall
gpg::GameServices::Builder::SetOnQuestCompleted(Builder *this,function<void(gpg::Quest)> *param_2)

{
  function *pfVar1;
  undefined4 uVar2;
  function<void(gpg::Quest)> afStack_88 [8];
  int local_80;
  function<void(gpg::Quest)> afStack_78 [8];
  int local_70;
  function<void(std::function<void()>)> afStack_68 [16];
  function afStack_58 [8];
  undefined4 local_50;
  function<void(std::function<void()>)> afStack_48 [8];
  int local_40;
  function<void(gpg::Quest)> afStack_38 [8];
  undefined4 local_30;
  
  uVar2 = *(undefined4 *)this;
  pfVar1 = (function *)FUN_0050a740(uVar2);
  local_80 = 0;
  std::function<void(gpg::Quest)>::swap(param_2,(function *)afStack_88);
  if (local_80 == 0) {
    local_70 = local_80;
    local_40 = local_80;
  }
  else {
    local_70 = 0;
    std::function<void(gpg::Quest)>::swap(afStack_88,(function *)afStack_78);
    std::function<void(std::function<void()>)>::function(afStack_48,pfVar1);
  }
  local_30 = 0;
  std::function<void(gpg::Quest)>::swap(afStack_78,(function *)afStack_38);
  std::function<void(std::function<void()>)>::function(afStack_68,(function *)afStack_48);
  local_50 = 0;
  std::function<void(gpg::Quest)>::swap(afStack_38,afStack_58);
  FUN_00509b3e(afStack_48);
  std::_Function_base::~_Function_base((_Function_base *)afStack_78);
  FUN_0050aab0(uVar2,afStack_68);
  FUN_00509b3e(afStack_68);
  std::_Function_base::~_Function_base((_Function_base *)afStack_88);
  return this;
}

// ---- gpg::GameServices::Builder::SetOnAuthActionStarted  @ 0x50a396
/* gpg::GameServices::Builder::SetOnAuthActionStarted(std::function<void (gpg::AuthOperation)>) */

Builder * __thiscall
gpg::GameServices::Builder::SetOnAuthActionStarted
          (Builder *this,function<void(gpg::AuthOperation)> *param_2)

{
  function *pfVar1;
  undefined4 uVar2;
  function<void(gpg::AuthOperation)> afStack_88 [8];
  int local_80;
  function<void(gpg::AuthOperation)> afStack_78 [8];
  int local_70;
  function<void(std::function<void()>)> afStack_68 [16];
  function afStack_58 [8];
  undefined4 local_50;
  function<void(std::function<void()>)> afStack_48 [8];
  int local_40;
  function<void(gpg::AuthOperation)> afStack_38 [8];
  undefined4 local_30;
  
  uVar2 = *(undefined4 *)this;
  pfVar1 = (function *)FUN_0050a740(uVar2);
  local_80 = 0;
  std::function<void(gpg::AuthOperation)>::swap(param_2,afStack_88);
  if (local_80 == 0) {
    local_70 = local_80;
    local_40 = local_80;
  }
  else {
    local_70 = 0;
    std::function<void(gpg::AuthOperation)>::swap(afStack_88,afStack_78);
    std::function<void(std::function<void()>)>::function(afStack_48,pfVar1);
  }
  local_30 = 0;
  std::function<void(gpg::AuthOperation)>::swap(afStack_78,afStack_38);
  std::function<void(std::function<void()>)>::function(afStack_68,(function *)afStack_48);
  local_50 = 0;
  std::function<void(gpg::AuthOperation)>::swap(afStack_38,afStack_58);
  FUN_00509ab2(afStack_48);
  std::_Function_base::~_Function_base((_Function_base *)afStack_78);
  FUN_0050a990(uVar2,afStack_68);
  FUN_00509ab2(afStack_68);
  std::_Function_base::~_Function_base((_Function_base *)afStack_88);
  return this;
}

// ---- gpg::GameServices::Builder::~Builder  @ 0x50a4d2
/* gpg::GameServices::Builder::~Builder() */

Builder * __thiscall gpg::GameServices::Builder::~Builder(Builder *this)

{
  FUN_0050a4b6();
  return this;
}

// ---- gpg::GameServices::Builder::Create  @ 0x50a4e0
/* gpg::GameServices::Builder::Create(gpg::AndroidPlatformConfiguration const&) */

AndroidPlatformConfiguration *
gpg::GameServices::Builder::Create(AndroidPlatformConfiguration *param_1)

{
  int iVar1;
  pthread_mutex_t *__mutex;
  GameServices *pGVar2;
  undefined4 *in_r1;
  undefined1 auStack_44 [4];
  undefined4 local_40 [8];
  
  FUN_0050a896(local_40,*in_r1);
  FUN_0051683e(auStack_44,local_40);
  FUN_0050811a(local_40);
  iVar1 = AndroidPlatformConfiguration::Valid();
  if (iVar1 == 0) {
    *(undefined4 *)param_1 = 0;
  }
  else {
    __mutex = (pthread_mutex_t *)FUN_0050a708();
    iVar1 = pthread_mutex_lock(__mutex);
    if (iVar1 != 0) {
                    /* WARNING: Subroutine does not return */
      FUN_007c4c60();
    }
    if (__mutex->__size[4] == '\0') {
      __mutex->__size[4] = '\x01';
      pthread_mutex_unlock(__mutex);
      local_40[0] = *in_r1;
      *in_r1 = 0;
      pGVar2 = operator_new(8);
      GameServices(pGVar2,local_40);
      *(GameServices **)param_1 = pGVar2;
      FUN_0050a4b6(local_40);
    }
    else {
      FUN_005166ae(4,"Can only create one instance of GameServices at a time.");
      *(undefined4 *)param_1 = 0;
      pthread_mutex_unlock(__mutex);
    }
  }
  FUN_00516580(auStack_44);
  return param_1;
}

// ---- gpg::DebugString  @ 0x50b244
/* gpg::DebugString(gpg::AchievementType) */

undefined4 gpg::DebugString(undefined4 param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  char *pcVar1;
  int iStack_c;
  
  if (param_2 == 1) {
    pcVar1 = "STANDARD";
  }
  else if (param_2 == 2) {
    pcVar1 = "INCREMENTAL";
  }
  else {
    pcVar1 = "INVALID";
  }
  iStack_c = param_2;
  FUN_007c6a60(param_1,pcVar1,&iStack_c,param_4,param_1);
  return param_1;
}

// ---- gpg::DebugString  @ 0x50b278
/* gpg::DebugString(gpg::AchievementState) */

undefined4 gpg::DebugString(undefined4 param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  char *pcVar1;
  int iStack_c;
  
  if (param_2 == 2) {
    pcVar1 = "REVEALED";
  }
  else if (param_2 == 3) {
    pcVar1 = "UNLOCKED";
  }
  else if (param_2 == 1) {
    pcVar1 = "HIDDEN";
  }
  else {
    pcVar1 = "INVALID";
  }
  iStack_c = param_2;
  FUN_007c6a60(param_1,pcVar1,&iStack_c,param_4,param_1);
  return param_1;
}

// ---- gpg::operator<<  @ 0x50b2bc
/* gpg::TEMPNAMEPLACEHOLDERVALUE(std::ostream&, gpg::AchievementType) */

undefined4 __thiscall gpg::operator<<(gpg *this,undefined4 param_1,undefined4 param_3)

{
  undefined4 uVar1;
  undefined4 uStack_14;
  undefined4 uStack_10;
  
  uStack_14 = param_1;
  uStack_10 = param_3;
  DebugString(&uStack_14);
  uVar1 = FUN_007af9cc(this,&uStack_14);
  FUN_007c5914(&uStack_14);
  return uVar1;
}

// ---- gpg::operator<<  @ 0x50b2e8
/* gpg::TEMPNAMEPLACEHOLDERVALUE(std::ostream&, gpg::AchievementState) */

undefined4 __thiscall gpg::operator<<(gpg *this,undefined4 param_1,undefined4 param_3)

{
  undefined4 uVar1;
  undefined4 uStack_14;
  undefined4 uStack_10;
  
  uStack_14 = param_1;
  uStack_10 = param_3;
  DebugString(&uStack_14);
  uVar1 = FUN_007af9cc(this,&uStack_14);
  FUN_007c5914(&uStack_14);
  return uVar1;
}

// ---- gpg::DebugString  @ 0x50b314
/* gpg::DebugString(gpg::Achievement const&) */

gpg * __thiscall gpg::DebugString(gpg *this,Achievement *param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  gpg *pgVar3;
  undefined8 uVar4;
  undefined1 *local_d8;
  undefined1 auStack_d4 [8];
  undefined1 auStack_cc [4];
  undefined1 auStack_c8 [180];
  
  FUN_007aaa70(auStack_d4,0x18);
  uVar1 = FUN_007bbcd0(auStack_cc,"(name: ");
  uVar2 = Achievement::Name(param_1);
  uVar1 = FUN_007af9cc(uVar1,uVar2);
  uVar1 = FUN_007bbcd0(uVar1,&DAT_00800fa8);
  uVar1 = FUN_007bbcd0(uVar1,&DAT_00800fab);
  uVar2 = Achievement::Id(param_1);
  uVar1 = FUN_007af9cc(uVar1,uVar2);
  uVar1 = FUN_007bbcd0(uVar1,&DAT_00800fa8);
  uVar1 = FUN_007bbcd0(uVar1,"description: ");
  uVar2 = Achievement::Description(param_1);
  uVar1 = FUN_007af9cc(uVar1,uVar2);
  uVar1 = FUN_007bbcd0(uVar1,&DAT_00800fa8);
  uVar1 = FUN_007bbcd0(uVar1,"steps: ");
  uVar2 = Achievement::CurrentSteps(param_1);
  uVar1 = FUN_007bbf08(uVar1,uVar2);
  uVar1 = FUN_007bbcd0(uVar1,&DAT_00800fc6);
  uVar2 = Achievement::TotalSteps(param_1);
  uVar1 = FUN_007bbf08(uVar1,uVar2);
  uVar1 = FUN_007bbcd0(uVar1,&DAT_00800fa8);
  pgVar3 = (gpg *)FUN_007bbcd0(uVar1,"state: ");
  uVar1 = Achievement::State(param_1);
  uVar1 = operator<<(pgVar3,uVar1);
  uVar1 = FUN_007bbcd0(uVar1,&DAT_00800fa8);
  pgVar3 = (gpg *)FUN_007bbcd0(uVar1,"type: ");
  uVar1 = Achievement::Type(param_1);
  uVar1 = operator<<(pgVar3,uVar1);
  uVar1 = FUN_007bbcd0(uVar1,&DAT_00800fa8);
  uVar1 = FUN_007bbcd0(uVar1,&DAT_00800fd7);
  uVar4 = Achievement::XP(param_1);
  uVar2 = (undefined4)((ulonglong)uVar4 >> 0x20);
  uVar1 = FUN_007bc360(uVar1,uVar2,(int)uVar4,uVar2);
  FUN_007bbcd0(uVar1,&DAT_00800fdc);
  FUN_007a9920(&local_d8,auStack_c8);
  *(undefined1 **)this = local_d8;
  local_d8 = &DAT_00972528;
  FUN_007c5914(&local_d8);
  FUN_007a95a8(auStack_d4);
  return this;
}

// ---- gpg::operator<<  @ 0x50b49c
/* gpg::TEMPNAMEPLACEHOLDERVALUE(std::ostream&, gpg::Achievement const&) */

undefined4 __thiscall gpg::operator<<(gpg *this,ostream *param_1,Achievement *param_2)

{
  undefined4 uVar1;
  ostream *poStack_14;
  Achievement *pAStack_10;
  
  poStack_14 = param_1;
  pAStack_10 = param_2;
  DebugString((gpg *)&poStack_14,(Achievement *)param_1);
  uVar1 = FUN_007af9cc(this,(gpg *)&poStack_14);
  FUN_007c5914((gpg *)&poStack_14);
  return uVar1;
}

// ---- gpg::DebugString  @ 0x50b4c8
/* gpg::DebugString(gpg::LeaderboardOrder) */

undefined4 gpg::DebugString(undefined4 param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  char *pcVar1;
  int iStack_c;
  
  if (param_2 == 1) {
    pcVar1 = "LARGER IS BETTER";
  }
  else if (param_2 == 2) {
    pcVar1 = "SMALLER IS BETTER";
  }
  else {
    pcVar1 = "INVALID";
  }
  iStack_c = param_2;
  FUN_007c6a60(param_1,pcVar1,&iStack_c,param_4,param_1);
  return param_1;
}

// ---- gpg::DebugString  @ 0x50b4fc
/* gpg::DebugString(gpg::Leaderboard const&) */

gpg * __thiscall gpg::DebugString(gpg *this,Leaderboard *param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined1 auStack_dc [4];
  undefined1 *local_d8;
  undefined1 auStack_d4 [8];
  undefined1 auStack_cc [4];
  undefined1 auStack_c8 [180];
  
  FUN_007aaa70(auStack_d4,0x18);
  uVar1 = FUN_007bbcd0(auStack_cc,"(name: ");
  uVar2 = Leaderboard::Name(param_1);
  uVar1 = FUN_007af9cc(uVar1,uVar2);
  uVar1 = FUN_007bbcd0(uVar1,&DAT_00800fa8);
  uVar1 = FUN_007bbcd0(uVar1,&DAT_00800fab);
  uVar2 = Leaderboard::Id(param_1);
  uVar1 = FUN_007af9cc(uVar1,uVar2);
  uVar1 = FUN_007bbcd0(uVar1,&DAT_00800fa8);
  uVar1 = FUN_007bbcd0(uVar1,"order: ");
  uVar2 = Leaderboard::Order(param_1);
  DebugString(auStack_dc,uVar2);
  uVar1 = FUN_007af9cc(uVar1,auStack_dc);
  FUN_007bbcd0(uVar1,&DAT_00800fdc);
  FUN_007c5914(auStack_dc);
  FUN_007a9920(&local_d8,auStack_c8);
  *(undefined1 **)this = local_d8;
  local_d8 = &DAT_00972528;
  FUN_007c5914(&local_d8);
  FUN_007a95a8(auStack_d4);
  return this;
}

// ---- gpg::DebugString  @ 0x50b5dc
/* gpg::DebugString(gpg::LeaderboardStart) */

undefined4 gpg::DebugString(undefined4 param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  char *pcVar1;
  int iStack_c;
  
  if (param_2 == 1) {
    pcVar1 = "TOP SCORES";
  }
  else if (param_2 == 2) {
    pcVar1 = "PLAYER CENTERED";
  }
  else {
    pcVar1 = "INVALID";
  }
  iStack_c = param_2;
  FUN_007c6a60(param_1,pcVar1,&iStack_c,param_4,param_1);
  return param_1;
}

// ---- gpg::DebugString  @ 0x50b610
/* gpg::DebugString(gpg::LeaderboardTimeSpan) */

undefined4 gpg::DebugString(undefined4 param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  char *pcVar1;
  int iStack_c;
  
  if (param_2 == 2) {
    pcVar1 = "WEEKLY";
  }
  else if (param_2 == 3) {
    pcVar1 = "ALL TIME";
  }
  else if (param_2 == 1) {
    pcVar1 = "DAILY";
  }
  else {
    pcVar1 = "INVALID";
  }
  iStack_c = param_2;
  FUN_007c6a60(param_1,pcVar1,&iStack_c,param_4,param_1);
  return param_1;
}

// ---- gpg::DebugString  @ 0x50b654
/* gpg::DebugString(gpg::LeaderboardCollection) */

undefined4 gpg::DebugString(undefined4 param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  char *pcVar1;
  int iStack_c;
  
  if (param_2 == 1) {
    pcVar1 = "PUBLIC";
  }
  else if (param_2 == 2) {
    pcVar1 = "SOCIAL";
  }
  else {
    pcVar1 = "INVALID";
  }
  iStack_c = param_2;
  FUN_007c6a60(param_1,pcVar1,&iStack_c,param_4,param_1);
  return param_1;
}

// ---- gpg::DebugString  @ 0x50b688
/* gpg::DebugString(gpg::Score const&) */

gpg * __thiscall gpg::DebugString(gpg *this,Score *param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined8 uVar3;
  undefined1 *local_d8;
  undefined1 auStack_d4 [8];
  undefined1 auStack_cc [4];
  undefined1 auStack_c8 [180];
  
  FUN_007aaa70(auStack_d4,0x18);
  uVar1 = FUN_007bbcd0(auStack_cc,"(rank: ");
  uVar3 = Score::Rank(param_1);
  uVar2 = (undefined4)((ulonglong)uVar3 >> 0x20);
  uVar1 = FUN_007bc360(uVar1,uVar2,(int)uVar3,uVar2);
  uVar1 = FUN_007bbcd0(uVar1,&DAT_00800fa8);
  uVar1 = FUN_007bbcd0(uVar1,"value: ");
  uVar3 = Score::Value(param_1);
  uVar2 = (undefined4)((ulonglong)uVar3 >> 0x20);
  uVar1 = FUN_007bc360(uVar1,uVar2,(int)uVar3,uVar2);
  FUN_007bbcd0(uVar1,&DAT_00800fdc);
  FUN_007a9920(&local_d8,auStack_c8);
  *(undefined1 **)this = local_d8;
  local_d8 = &DAT_00972528;
  FUN_007c5914(&local_d8);
  FUN_007a95a8(auStack_d4);
  return this;
}

// ---- gpg::operator<<  @ 0x50b72c
/* gpg::TEMPNAMEPLACEHOLDERVALUE(std::ostream&, gpg::LeaderboardOrder) */

undefined4 __thiscall gpg::operator<<(gpg *this,undefined4 param_1,undefined4 param_3)

{
  undefined4 uVar1;
  undefined4 uStack_14;
  undefined4 uStack_10;
  
  uStack_14 = param_1;
  uStack_10 = param_3;
  DebugString(&uStack_14);
  uVar1 = FUN_007af9cc(this,&uStack_14);
  FUN_007c5914(&uStack_14);
  return uVar1;
}

// ---- gpg::operator<<  @ 0x50b758
/* gpg::TEMPNAMEPLACEHOLDERVALUE(std::ostream&, gpg::Leaderboard const&) */

undefined4 __thiscall gpg::operator<<(gpg *this,ostream *param_1,Leaderboard *param_2)

{
  undefined4 uVar1;
  ostream *poStack_14;
  Leaderboard *pLStack_10;
  
  poStack_14 = param_1;
  pLStack_10 = param_2;
  DebugString((gpg *)&poStack_14,(Leaderboard *)param_1);
  uVar1 = FUN_007af9cc(this,(gpg *)&poStack_14);
  FUN_007c5914((gpg *)&poStack_14);
  return uVar1;
}

// ---- gpg::operator<<  @ 0x50b784
/* gpg::TEMPNAMEPLACEHOLDERVALUE(std::ostream&, gpg::LeaderboardStart) */

undefined4 __thiscall gpg::operator<<(gpg *this,undefined4 param_1,undefined4 param_3)

{
  undefined4 uVar1;
  undefined4 uStack_14;
  undefined4 uStack_10;
  
  uStack_14 = param_1;
  uStack_10 = param_3;
  DebugString(&uStack_14);
  uVar1 = FUN_007af9cc(this,&uStack_14);
  FUN_007c5914(&uStack_14);
  return uVar1;
}

// ---- gpg::operator<<  @ 0x50b7b0
/* gpg::TEMPNAMEPLACEHOLDERVALUE(std::ostream&, gpg::LeaderboardTimeSpan) */

undefined4 __thiscall gpg::operator<<(gpg *this,undefined4 param_1,undefined4 param_3)

{
  undefined4 uVar1;
  undefined4 uStack_14;
  undefined4 uStack_10;
  
  uStack_14 = param_1;
  uStack_10 = param_3;
  DebugString(&uStack_14);
  uVar1 = FUN_007af9cc(this,&uStack_14);
  FUN_007c5914(&uStack_14);
  return uVar1;
}

// ---- gpg::operator<<  @ 0x50b7dc
/* gpg::TEMPNAMEPLACEHOLDERVALUE(std::ostream&, gpg::LeaderboardCollection) */

undefined4 __thiscall gpg::operator<<(gpg *this,undefined4 param_1,undefined4 param_3)

{
  undefined4 uVar1;
  undefined4 uStack_14;
  undefined4 uStack_10;
  
  uStack_14 = param_1;
  uStack_10 = param_3;
  DebugString(&uStack_14);
  uVar1 = FUN_007af9cc(this,&uStack_14);
  FUN_007c5914(&uStack_14);
  return uVar1;
}

// ---- gpg::DebugString  @ 0x50b808
/* gpg::DebugString(gpg::ScorePage const&) */

gpg * __thiscall gpg::DebugString(gpg *this,ScorePage *param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  gpg *pgVar3;
  undefined1 *local_d8;
  undefined1 auStack_d4 [8];
  undefined1 auStack_cc [4];
  undefined1 auStack_c8 [180];
  
  FUN_007aaa70(auStack_d4,0x18);
  uVar1 = FUN_007bbcd0(auStack_cc,"(leaderboard: ");
  uVar2 = ScorePage::LeaderboardId(param_1);
  uVar1 = FUN_007af9cc(uVar1,uVar2);
  uVar1 = FUN_007bbcd0(uVar1,&DAT_00800fa8);
  pgVar3 = (gpg *)FUN_007bbcd0(uVar1,"start: ");
  uVar1 = ScorePage::Start(param_1);
  uVar1 = operator<<(pgVar3,uVar1);
  uVar1 = FUN_007bbcd0(uVar1,&DAT_00800fa8);
  pgVar3 = (gpg *)FUN_007bbcd0(uVar1,"time_span: ");
  uVar1 = ScorePage::TimeSpan(param_1);
  uVar1 = operator<<(pgVar3,uVar1);
  uVar1 = FUN_007bbcd0(uVar1,&DAT_00800fa8);
  pgVar3 = (gpg *)FUN_007bbcd0(uVar1,"collection: ");
  uVar1 = ScorePage::Collection(param_1);
  uVar1 = operator<<(pgVar3,uVar1);
  uVar1 = FUN_007bbcd0(uVar1,&DAT_00800fa8);
  uVar1 = FUN_007bbcd0(uVar1,"has_next: ");
  uVar2 = ScorePage::HasNextScorePage(param_1);
  uVar1 = FUN_007bc07c(uVar1,uVar2);
  uVar1 = FUN_007bbcd0(uVar1,&DAT_00800fa8);
  uVar1 = FUN_007bbcd0(uVar1,"has_previous: ");
  uVar2 = ScorePage::HasPreviousScorePage(param_1);
  uVar1 = FUN_007bc07c(uVar1,uVar2);
  FUN_007bbcd0(uVar1,&DAT_00800fdc);
  FUN_007a9920(&local_d8,auStack_c8);
  *(undefined1 **)this = local_d8;
  local_d8 = &DAT_00972528;
  FUN_007c5914(&local_d8);
  FUN_007a95a8(auStack_d4);
  return this;
}

// ---- gpg::operator<<  @ 0x50b948
/* gpg::TEMPNAMEPLACEHOLDERVALUE(std::ostream&, gpg::Score const&) */

undefined4 __thiscall gpg::operator<<(gpg *this,ostream *param_1,Score *param_2)

{
  undefined4 uVar1;
  ostream *poStack_14;
  Score *pSStack_10;
  
  poStack_14 = param_1;
  pSStack_10 = param_2;
  DebugString((gpg *)&poStack_14,(Score *)param_1);
  uVar1 = FUN_007af9cc(this,(gpg *)&poStack_14);
  FUN_007c5914((gpg *)&poStack_14);
  return uVar1;
}

// ---- gpg::DebugString  @ 0x50b974
/* gpg::DebugString(gpg::ScorePage::Entry const&) */

gpg * __thiscall gpg::DebugString(gpg *this,Entry *param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  gpg *this_00;
  ostream *poVar3;
  Score *extraout_r2;
  undefined1 *local_d8;
  undefined1 auStack_d4 [8];
  undefined1 auStack_cc [4];
  undefined1 auStack_c8 [180];
  
  FUN_007aaa70(auStack_d4,0x18);
  uVar1 = FUN_007bbcd0(auStack_cc,"(player_id: ");
  uVar2 = ScorePage::Entry::PlayerId(param_1);
  uVar1 = FUN_007af9cc(uVar1,uVar2);
  uVar1 = FUN_007bbcd0(uVar1,&DAT_00800fa8);
  this_00 = (gpg *)FUN_007bbcd0(uVar1,"score: ");
  poVar3 = (ostream *)ScorePage::Entry::Score(param_1);
  uVar1 = operator<<(this_00,poVar3,extraout_r2);
  FUN_007bbcd0(uVar1,&DAT_00800fdc);
  FUN_007a9920(&local_d8,auStack_c8);
  *(undefined1 **)this = local_d8;
  local_d8 = &DAT_00972528;
  FUN_007c5914(&local_d8);
  FUN_007a95a8(auStack_d4);
  return this;
}

// ---- gpg::DebugString  @ 0x50ba14
/* gpg::DebugString(gpg::ScoreSummary const&) */

gpg * __thiscall gpg::DebugString(gpg *this,ScoreSummary *param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  gpg *pgVar3;
  ostream *poVar4;
  Score *extraout_r2;
  undefined8 uVar5;
  undefined1 *local_d8;
  undefined1 auStack_d4 [8];
  undefined1 auStack_cc [4];
  undefined1 auStack_c8 [180];
  
  FUN_007aaa70(auStack_d4,0x18);
  uVar1 = FUN_007bbcd0(auStack_cc,"(leaderboard id: ");
  uVar2 = ScoreSummary::LeaderboardId((ScoreSummary *)param_1);
  uVar1 = FUN_007af9cc(uVar1,uVar2);
  uVar1 = FUN_007bbcd0(uVar1,&DAT_00800fa8);
  pgVar3 = (gpg *)FUN_007bbcd0(uVar1,"time span: ");
  uVar1 = ScoreSummary::TimeSpan((ScoreSummary *)param_1);
  uVar1 = operator<<(pgVar3,uVar1);
  uVar1 = FUN_007bbcd0(uVar1,&DAT_00800fa8);
  pgVar3 = (gpg *)FUN_007bbcd0(uVar1,"collection: ");
  uVar1 = ScoreSummary::Collection((ScoreSummary *)param_1);
  uVar1 = operator<<(pgVar3,uVar1);
  uVar1 = FUN_007bbcd0(uVar1,&DAT_00800fa8);
  uVar1 = FUN_007bbcd0(uVar1,"appr. number of scores: ");
  uVar5 = ScoreSummary::ApproximateNumberOfScores((ScoreSummary *)param_1);
  uVar2 = (undefined4)((ulonglong)uVar5 >> 0x20);
  uVar1 = FUN_007bc360(uVar1,uVar2,(int)uVar5,uVar2);
  pgVar3 = (gpg *)FUN_007bbcd0(uVar1,", current player score: ");
  poVar4 = (ostream *)ScoreSummary::CurrentPlayerScore((ScoreSummary *)param_1);
  uVar1 = operator<<(pgVar3,poVar4,extraout_r2);
  FUN_007bbcd0(uVar1,&DAT_00800fdc);
  FUN_007a9920(&local_d8,auStack_c8);
  *(undefined1 **)this = local_d8;
  local_d8 = &DAT_00972528;
  FUN_007c5914(&local_d8);
  FUN_007a95a8(auStack_d4);
  return this;
}

// ---- gpg::operator<<  @ 0x50bb20
/* gpg::TEMPNAMEPLACEHOLDERVALUE(std::ostream&, gpg::ScorePage const&) */

undefined4 __thiscall gpg::operator<<(gpg *this,ostream *param_1,ScorePage *param_2)

{
  undefined4 uVar1;
  ostream *poStack_14;
  ScorePage *pSStack_10;
  
  poStack_14 = param_1;
  pSStack_10 = param_2;
  DebugString((gpg *)&poStack_14,(ScorePage *)param_1);
  uVar1 = FUN_007af9cc(this,(gpg *)&poStack_14);
  FUN_007c5914((gpg *)&poStack_14);
  return uVar1;
}

// ---- gpg::operator<<  @ 0x50bb4c
/* gpg::TEMPNAMEPLACEHOLDERVALUE(std::ostream&, gpg::ScorePage::Entry const&) */

undefined4 __thiscall gpg::operator<<(gpg *this,ostream *param_1,Entry *param_2)

{
  undefined4 uVar1;
  ostream *poStack_14;
  Entry *pEStack_10;
  
  poStack_14 = param_1;
  pEStack_10 = param_2;
  DebugString((gpg *)&poStack_14,(Entry *)param_1);
  uVar1 = FUN_007af9cc(this,(gpg *)&poStack_14);
  FUN_007c5914((gpg *)&poStack_14);
  return uVar1;
}

// ---- gpg::operator<<  @ 0x50bb78
/* gpg::TEMPNAMEPLACEHOLDERVALUE(std::ostream&, gpg::ScoreSummary const&) */

undefined4 __thiscall gpg::operator<<(gpg *this,ostream *param_1,ScoreSummary *param_2)

{
  undefined4 uVar1;
  ostream *poStack_14;
  ScoreSummary *pSStack_10;
  
  poStack_14 = param_1;
  pSStack_10 = param_2;
  DebugString((gpg *)&poStack_14,param_1);
  uVar1 = FUN_007af9cc(this,(gpg *)&poStack_14);
  FUN_007c5914((gpg *)&poStack_14);
  return uVar1;
}

// ---- gpg::DebugString  @ 0x50bba4
/* gpg::DebugString(gpg::TurnBasedMatchConfig const&) */

gpg * __thiscall gpg::DebugString(gpg *this,TurnBasedMatchConfig *param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  int iVar3;
  int *piVar4;
  int iVar5;
  int iVar6;
  undefined1 *local_e8;
  undefined1 auStack_e4 [8];
  undefined1 auStack_dc [4];
  undefined1 auStack_d8 [180];
  
  FUN_007aaa70(auStack_e4,0x18);
  uVar1 = FUN_007bbcd0(auStack_dc,"(minimum automatching players: ");
  uVar2 = TurnBasedMatchConfig::MinimumAutomatchingPlayers(param_1);
  uVar1 = FUN_007bbf08(uVar1,uVar2);
  uVar1 = FUN_007bbcd0(uVar1,&DAT_00800fa8);
  uVar1 = FUN_007bbcd0(uVar1,"maximum automatching players: ");
  uVar2 = TurnBasedMatchConfig::MaximumAutomatchingPlayers(param_1);
  uVar1 = FUN_007bbf08(uVar1,uVar2);
  uVar1 = FUN_007bbcd0(uVar1,&DAT_00800fa8);
  uVar1 = FUN_007bbcd0(uVar1,"variant: ");
  uVar2 = TurnBasedMatchConfig::Variant(param_1);
  uVar1 = FUN_007bbf08(uVar1,uVar2);
  uVar1 = FUN_007bbcd0(uVar1,&DAT_00800fa8);
  FUN_007bbcd0(uVar1,"player ids to invite: {");
  iVar3 = TurnBasedMatchConfig::Valid(param_1);
  if (iVar3 != 0) {
    piVar4 = (int *)TurnBasedMatchConfig::PlayerIdsToInvite(param_1);
    iVar3 = piVar4[1] - *piVar4 >> 2;
    iVar6 = iVar3 + -1;
    for (iVar5 = 0; iVar5 < iVar6; iVar5 = iVar5 + 1) {
      piVar4 = (int *)TurnBasedMatchConfig::PlayerIdsToInvite(param_1);
      uVar1 = FUN_007af9cc(auStack_dc,*piVar4 + iVar5 * 4);
      FUN_007bbcd0(uVar1,&DAT_00800fa8);
    }
    if (0 < iVar3) {
      piVar4 = (int *)TurnBasedMatchConfig::PlayerIdsToInvite(param_1);
      FUN_007af9cc(auStack_dc,*piVar4 + iVar6 * 4);
    }
  }
  FUN_007bbcd0(auStack_dc,&DAT_00801168);
  FUN_007a9920(&local_e8,auStack_d8);
  *(undefined1 **)this = local_e8;
  local_e8 = &DAT_00972528;
  FUN_007c5914(&local_e8);
  FUN_007a95a8(auStack_e4);
  return this;
}

// ---- gpg::operator<<  @ 0x50bcf8
/* gpg::TEMPNAMEPLACEHOLDERVALUE(std::ostream&, gpg::TurnBasedMatchConfig const&) */

undefined4 __thiscall gpg::operator<<(gpg *this,ostream *param_1,TurnBasedMatchConfig *param_2)

{
  undefined4 uVar1;
  ostream *poStack_14;
  TurnBasedMatchConfig *pTStack_10;
  
  poStack_14 = param_1;
  pTStack_10 = param_2;
  DebugString((gpg *)&poStack_14,(TurnBasedMatchConfig *)param_1);
  uVar1 = FUN_007af9cc(this,(gpg *)&poStack_14);
  FUN_007c5914((gpg *)&poStack_14);
  return uVar1;
}

// ---- gpg::DebugString  @ 0x50bd24
/* gpg::DebugString(gpg::Player const&) */

gpg * __thiscall gpg::DebugString(gpg *this,Player *param_1)

{
  int iVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined1 *puVar4;
  char *pcVar5;
  undefined1 *local_d8;
  undefined1 auStack_d4 [8];
  undefined1 auStack_cc [4];
  undefined1 auStack_c8 [180];
  
  FUN_007aaa70(auStack_d4,0x18);
  iVar1 = Player::Valid((Player *)param_1);
  if (iVar1 == 0) {
    puVar4 = auStack_cc;
    pcVar5 = "(Invalid Player)";
  }
  else {
    uVar2 = FUN_007bbcd0(auStack_cc,"(id: ");
    uVar3 = Player::Id((Player *)param_1);
    uVar2 = FUN_007af9cc(uVar2,uVar3);
    uVar2 = FUN_007bbcd0(uVar2,&DAT_00800fa8);
    uVar2 = FUN_007bbcd0(uVar2,"name: ");
    uVar3 = Player::Name((Player *)param_1);
    puVar4 = (undefined1 *)FUN_007af9cc(uVar2,uVar3);
    pcVar5 = ")";
  }
  FUN_007bbcd0(puVar4,pcVar5);
  FUN_007a9920(&local_d8,auStack_c8);
  *(undefined1 **)this = local_d8;
  local_d8 = &DAT_00972528;
  FUN_007c5914(&local_d8);
  FUN_007a95a8(auStack_d4);
  return this;
}

// ---- gpg::DebugString  @ 0x50bdd8
/* gpg::DebugString(gpg::PlayerLevel const&) */

gpg * __thiscall gpg::DebugString(gpg *this,PlayerLevel *param_1)

{
  int iVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined1 *puVar4;
  char *pcVar5;
  undefined8 uVar6;
  undefined1 *local_d8;
  undefined1 auStack_d4 [8];
  undefined1 auStack_cc [4];
  undefined1 auStack_c8 [180];
  
  FUN_007aaa70(auStack_d4,0x18);
  iVar1 = PlayerLevel::Valid(param_1);
  if (iVar1 == 0) {
    puVar4 = auStack_cc;
    pcVar5 = "(Invalid PlayerLevel)";
  }
  else {
    uVar2 = FUN_007bbcd0(auStack_cc,"(level: ");
    uVar3 = PlayerLevel::LevelNumber(param_1);
    uVar2 = FUN_007bbf08(uVar2,uVar3);
    uVar2 = FUN_007bbcd0(uVar2,", minxp: ");
    uVar6 = PlayerLevel::MinimumXP(param_1);
    uVar3 = (undefined4)((ulonglong)uVar6 >> 0x20);
    uVar2 = FUN_007bc360(uVar2,uVar3,(int)uVar6,uVar3);
    uVar2 = FUN_007bbcd0(uVar2,", maxxp: ");
    uVar6 = PlayerLevel::MaximumXP(param_1);
    uVar3 = (undefined4)((ulonglong)uVar6 >> 0x20);
    puVar4 = (undefined1 *)FUN_007bc360(uVar2,uVar3,(int)uVar6,uVar3);
    pcVar5 = ")";
  }
  FUN_007bbcd0(puVar4,pcVar5);
  FUN_007a9920(&local_d8,auStack_c8);
  *(undefined1 **)this = local_d8;
  local_d8 = &DAT_00972528;
  FUN_007c5914(&local_d8);
  FUN_007a95a8(auStack_d4);
  return this;
}

// ---- gpg::operator<<  @ 0x50bea0
/* gpg::TEMPNAMEPLACEHOLDERVALUE(std::ostream&, gpg::Player const&) */

undefined4 __thiscall gpg::operator<<(gpg *this,ostream *param_1,Player *param_2)

{
  undefined4 uVar1;
  ostream *poStack_14;
  Player *pPStack_10;
  
  poStack_14 = param_1;
  pPStack_10 = param_2;
  DebugString((gpg *)&poStack_14,param_1);
  uVar1 = FUN_007af9cc(this,(gpg *)&poStack_14);
  FUN_007c5914((gpg *)&poStack_14);
  return uVar1;
}

// ---- gpg::operator<<  @ 0x50becc
/* gpg::TEMPNAMEPLACEHOLDERVALUE(std::ostream&, gpg::PlayerLevel const&) */

undefined4 __thiscall gpg::operator<<(gpg *this,ostream *param_1,PlayerLevel *param_2)

{
  undefined4 uVar1;
  ostream *poStack_14;
  PlayerLevel *pPStack_10;
  
  poStack_14 = param_1;
  pPStack_10 = param_2;
  DebugString((gpg *)&poStack_14,(PlayerLevel *)param_1);
  uVar1 = FUN_007af9cc(this,(gpg *)&poStack_14);
  FUN_007c5914((gpg *)&poStack_14);
  return uVar1;
}

// ---- gpg::DebugString  @ 0x50bef8
/* gpg::DebugString(gpg::QuestState const&) */

gpg * __thiscall gpg::DebugString(gpg *this,QuestState *param_1)

{
  char *pcVar1;
  QuestState *pQStack_c;
  
  switch(*(int *)param_1) {
  case 1:
    pcVar1 = "UPCOMING";
    break;
  case 2:
    pcVar1 = "OPEN";
    break;
  case 3:
    pcVar1 = "ACCEPTED";
    break;
  case 4:
    pcVar1 = "COMPLETED";
    break;
  case 5:
    pcVar1 = "EXPIRED";
    break;
  case 6:
    pcVar1 = "FAILED";
    break;
  default:
    pcVar1 = "INVALID";
  }
  pQStack_c = param_1;
  FUN_007c6a60(this,pcVar1,&pQStack_c,*(int *)param_1 + -1,this);
  return this;
}

// ---- gpg::DebugString  @ 0x50bf6c
/* gpg::DebugString(gpg::QuestMilestoneState const&) */

gpg * __thiscall gpg::DebugString(gpg *this,QuestMilestoneState *param_1)

{
  char *pcVar1;
  QuestMilestoneState *pQStack_c;
  
  switch(*(int *)param_1) {
  case 1:
    pcVar1 = "NOT_STARTED";
    break;
  case 2:
    pcVar1 = "NOT_COMPLETED";
    break;
  case 3:
    pcVar1 = "COMPLETED_NOT_CLAIMED";
    break;
  case 4:
    pcVar1 = "CLAIMED";
    break;
  default:
    pcVar1 = "INVALID";
  }
  pQStack_c = param_1;
  FUN_007c6a60(this,pcVar1,&pQStack_c,*(int *)param_1 + -1,this);
  return this;
}

// ---- gpg::operator<<  @ 0x50bfc8
/* gpg::TEMPNAMEPLACEHOLDERVALUE(std::ostream&, gpg::QuestState const&) */

undefined4 __thiscall gpg::operator<<(gpg *this,ostream *param_1,QuestState *param_2)

{
  undefined4 uVar1;
  ostream *poStack_14;
  QuestState *pQStack_10;
  
  poStack_14 = param_1;
  pQStack_10 = param_2;
  DebugString((gpg *)&poStack_14,(QuestState *)param_1);
  uVar1 = FUN_007af9cc(this,(gpg *)&poStack_14);
  FUN_007c5914((gpg *)&poStack_14);
  return uVar1;
}

// ---- gpg::operator<<  @ 0x50bff4
/* gpg::TEMPNAMEPLACEHOLDERVALUE(std::ostream&, gpg::QuestMilestoneState const&) */

undefined4 __thiscall gpg::operator<<(gpg *this,ostream *param_1,QuestMilestoneState *param_2)

{
  undefined4 uVar1;
  ostream *poStack_14;
  QuestMilestoneState *pQStack_10;
  
  poStack_14 = param_1;
  pQStack_10 = param_2;
  DebugString((gpg *)&poStack_14,(QuestMilestoneState *)param_1);
  uVar1 = FUN_007af9cc(this,(gpg *)&poStack_14);
  FUN_007c5914((gpg *)&poStack_14);
  return uVar1;
}

// ---- gpg::DebugString  @ 0x50c020
/* gpg::DebugString(gpg::SnapshotMetadataChange::CoverImage const&) */

gpg * __thiscall gpg::DebugString(gpg *this,CoverImage *param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined1 *local_d8;
  undefined1 auStack_d4 [8];
  undefined1 auStack_cc [4];
  undefined1 auStack_c8 [180];
  
  FUN_007aaa70(auStack_d4,0x18);
  uVar1 = FUN_007bbcd0(auStack_cc,"(mime type: ");
  uVar2 = SnapshotMetadataChange::CoverImage::MimeType(param_1);
  uVar1 = FUN_007af9cc(uVar1,uVar2);
  uVar1 = FUN_007bbcd0(uVar1,&DAT_00800fa8);
  uVar1 = FUN_007bbcd0(uVar1,"width: ");
  uVar2 = SnapshotMetadataChange::CoverImage::Width(param_1);
  uVar1 = thunk_FUN_007bbd6c(uVar1,uVar2);
  uVar1 = FUN_007bbcd0(uVar1,&DAT_00800fa8);
  uVar1 = FUN_007bbcd0(uVar1,"height: ");
  uVar2 = SnapshotMetadataChange::CoverImage::Height(param_1);
  uVar1 = thunk_FUN_007bbd6c(uVar1,uVar2);
  FUN_007bbcd0(uVar1,&DAT_00800fdc);
  FUN_007a9920(&local_d8,auStack_c8);
  *(undefined1 **)this = local_d8;
  local_d8 = &DAT_00972528;
  FUN_007c5914(&local_d8);
  FUN_007a95a8(auStack_d4);
  return this;
}

// ---- gpg::operator<<  @ 0x50c0e8
/* gpg::TEMPNAMEPLACEHOLDERVALUE(std::ostream&, gpg::SnapshotMetadataChange::CoverImage const&) */

undefined4 __thiscall gpg::operator<<(gpg *this,ostream *param_1,CoverImage *param_2)

{
  undefined4 uVar1;
  ostream *poStack_14;
  CoverImage *pCStack_10;
  
  poStack_14 = param_1;
  pCStack_10 = param_2;
  DebugString((gpg *)&poStack_14,(CoverImage *)param_1);
  uVar1 = FUN_007af9cc(this,(gpg *)&poStack_14);
  FUN_007c5914((gpg *)&poStack_14);
  return uVar1;
}

// ---- gpg::DebugString  @ 0x50c114
/* gpg::DebugString(gpg::RealTimeRoomStatus) */

undefined4
gpg::DebugString(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  char *pcVar1;
  undefined4 uStack_c;
  
  switch(param_2) {
  case 1:
    pcVar1 = "INVITING";
    break;
  case 2:
    pcVar1 = "CONNECTING";
    break;
  case 3:
    pcVar1 = "AUTO MATCHING";
    break;
  case 4:
    pcVar1 = "ACTIVE";
    break;
  case 5:
    pcVar1 = "DELETED";
    break;
  default:
    pcVar1 = "INVALID";
  }
  uStack_c = param_2;
  FUN_007c6a60(param_1,pcVar1,&uStack_c,param_4,param_1);
  return param_1;
}

// ---- gpg::operator<<  @ 0x50c17c
/* gpg::TEMPNAMEPLACEHOLDERVALUE(std::ostream&, gpg::RealTimeRoomStatus) */

undefined4 __thiscall gpg::operator<<(gpg *this,undefined4 param_1,undefined4 param_3)

{
  undefined4 uVar1;
  undefined4 uStack_14;
  undefined4 uStack_10;
  
  uStack_14 = param_1;
  uStack_10 = param_3;
  DebugString(&uStack_14);
  uVar1 = FUN_007af9cc(this,&uStack_14);
  FUN_007c5914(&uStack_14);
  return uVar1;
}

// ---- gpg::DebugString  @ 0x50c1a8
/* gpg::DebugString(gpg::BaseStatus::StatusCode) */

undefined4
gpg::DebugString(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  char *pcVar1;
  undefined4 uStack_c;
  
  switch(param_2) {
  default:
    pcVar1 = "ERROR_UNKNOWN_ERROR";
    break;
  case 1:
    pcVar1 = "VALID";
    break;
  case 2:
    pcVar1 = "VALID_BUT_STALE";
    break;
  case 3:
    pcVar1 = "VALID_WITH_CONFLICT";
    break;
  case 4:
    pcVar1 = "FLUSHED";
    break;
  case 0xffffffee:
    pcVar1 = "ERROR_LEFT_ROOM";
    break;
  case 0xffffffef:
    pcVar1 = "ERROR_REAL_TIME_ROOM_NOT_JOINED";
    break;
  case 0xfffffff0:
    pcVar1 = "ERROR_MILESTONE_CLAIM_FAILED";
    break;
  case 0xfffffff1:
    pcVar1 = "ERROR_MILESTONE_ALREADY_CLAIMED";
    break;
  case 0xfffffff2:
    pcVar1 = "ERROR_QUEST_NOT_STARTED";
    break;
  case 0xfffffff3:
    pcVar1 = "ERROR_QUEST_NO_LONGER_AVAILABLE";
    break;
  case 0xfffffff4:
    pcVar1 = "ERROR_UI_BUSY";
    break;
  case 0xfffffff5:
    pcVar1 = "ERROR_MATCH_OUT_OF_DATE";
    break;
  case 0xfffffff6:
    pcVar1 = "ERROR_INVALID_MATCH";
    break;
  case 0xfffffff7:
    pcVar1 = "ERROR_INVALID_RESULTS";
    break;
  case 0xfffffff8:
    pcVar1 = "ERROR_INACTIVE_MATCH";
    break;
  case 0xfffffff9:
    pcVar1 = "ERROR_MATCH_ALREADY_REMATCHED";
    break;
  case 0xfffffffa:
    pcVar1 = "ERROR_CANCELED";
    break;
  case 0xfffffffb:
    pcVar1 = "ERROR_TIMEOUT";
    break;
  case 0xfffffffc:
    pcVar1 = "ERROR_VERSION_UPDATE_REQUIRED";
    break;
  case 0xfffffffd:
    pcVar1 = "ERROR_NOT_AUTHORIZED";
    break;
  case 0xfffffffe:
    pcVar1 = "ERROR_INTERNAL";
    break;
  case 0xffffffff:
    pcVar1 = "ERROR_LICENSE_CHECK_FAILED";
  }
  uStack_c = param_2;
  FUN_007c6a60(param_1,pcVar1,&uStack_c,param_4,param_1);
  return param_1;
}

// ---- gpg::DebugString  @ 0x50c2ec
/* gpg::DebugString(gpg::AuthStatus) */

undefined4 * gpg::DebugString(undefined4 *param_1,undefined1 *param_2,undefined4 param_3)

{
  undefined1 *local_14;
  undefined4 uStack_10;
  
  local_14 = param_2;
  uStack_10 = param_3;
  DebugString(&local_14);
  *param_1 = local_14;
  local_14 = &DAT_00972528;
  FUN_007c5914(&local_14);
  return param_1;
}

// ---- gpg::DebugString  @ 0x50c318
/* gpg::DebugString(gpg::ResponseStatus) */

undefined4 * gpg::DebugString(undefined4 *param_1,undefined1 *param_2,undefined4 param_3)

{
  undefined1 *local_14;
  undefined4 uStack_10;
  
  local_14 = param_2;
  uStack_10 = param_3;
  DebugString(&local_14);
  *param_1 = local_14;
  local_14 = &DAT_00972528;
  FUN_007c5914(&local_14);
  return param_1;
}

// ---- gpg::DebugString  @ 0x50c344
/* gpg::DebugString(gpg::FlushStatus) */

undefined4 * gpg::DebugString(undefined4 *param_1,undefined1 *param_2,undefined4 param_3)

{
  undefined1 *local_14;
  undefined4 uStack_10;
  
  local_14 = param_2;
  uStack_10 = param_3;
  DebugString(&local_14);
  *param_1 = local_14;
  local_14 = &DAT_00972528;
  FUN_007c5914(&local_14);
  return param_1;
}

// ---- gpg::DebugString  @ 0x50c370
/* gpg::DebugString(gpg::UIStatus) */

undefined4 * gpg::DebugString(undefined4 *param_1,undefined1 *param_2,undefined4 param_3)

{
  undefined1 *local_14;
  undefined4 uStack_10;
  
  local_14 = param_2;
  uStack_10 = param_3;
  DebugString(&local_14);
  *param_1 = local_14;
  local_14 = &DAT_00972528;
  FUN_007c5914(&local_14);
  return param_1;
}

// ---- gpg::DebugString  @ 0x50c39c
/* gpg::DebugString(gpg::MultiplayerStatus) */

undefined4 * gpg::DebugString(undefined4 *param_1,undefined1 *param_2,undefined4 param_3)

{
  undefined1 *local_14;
  undefined4 uStack_10;
  
  local_14 = param_2;
  uStack_10 = param_3;
  DebugString(&local_14);
  *param_1 = local_14;
  local_14 = &DAT_00972528;
  FUN_007c5914(&local_14);
  return param_1;
}

// ---- gpg::DebugString  @ 0x50c3c8
/* gpg::DebugString(gpg::QuestAcceptStatus) */

undefined4 * gpg::DebugString(undefined4 *param_1,undefined1 *param_2,undefined4 param_3)

{
  undefined1 *local_14;
  undefined4 uStack_10;
  
  local_14 = param_2;
  uStack_10 = param_3;
  DebugString(&local_14);
  *param_1 = local_14;
  local_14 = &DAT_00972528;
  FUN_007c5914(&local_14);
  return param_1;
}

// ---- gpg::DebugString  @ 0x50c3f4
/* gpg::DebugString(gpg::QuestClaimMilestoneStatus) */

undefined4 * gpg::DebugString(undefined4 *param_1,undefined1 *param_2,undefined4 param_3)

{
  undefined1 *local_14;
  undefined4 uStack_10;
  
  local_14 = param_2;
  uStack_10 = param_3;
  DebugString(&local_14);
  *param_1 = local_14;
  local_14 = &DAT_00972528;
  FUN_007c5914(&local_14);
  return param_1;
}

// ---- gpg::DebugString  @ 0x50c420
/* gpg::DebugString(gpg::SnapshotOpenStatus) */

undefined4 * gpg::DebugString(undefined4 *param_1,undefined1 *param_2,undefined4 param_3)

{
  undefined1 *local_14;
  undefined4 uStack_10;
  
  local_14 = param_2;
  uStack_10 = param_3;
  DebugString(&local_14);
  *param_1 = local_14;
  local_14 = &DAT_00972528;
  FUN_007c5914(&local_14);
  return param_1;
}

// ---- gpg::operator<<  @ 0x50c44c
/* gpg::TEMPNAMEPLACEHOLDERVALUE(std::ostream&, gpg::AuthStatus) */

undefined4 __thiscall gpg::operator<<(gpg *this,undefined4 param_1,undefined4 param_3)

{
  undefined4 uVar1;
  undefined4 uStack_14;
  undefined4 uStack_10;
  
  uStack_14 = param_1;
  uStack_10 = param_3;
  DebugString(&uStack_14);
  uVar1 = FUN_007af9cc(this,&uStack_14);
  FUN_007c5914(&uStack_14);
  return uVar1;
}

// ---- gpg::operator<<  @ 0x50c478
/* gpg::TEMPNAMEPLACEHOLDERVALUE(std::ostream&, gpg::ResponseStatus) */

undefined4 __thiscall gpg::operator<<(gpg *this,undefined4 param_1,undefined4 param_3)

{
  undefined4 uVar1;
  undefined4 uStack_14;
  undefined4 uStack_10;
  
  uStack_14 = param_1;
  uStack_10 = param_3;
  DebugString(&uStack_14);
  uVar1 = FUN_007af9cc(this,&uStack_14);
  FUN_007c5914(&uStack_14);
  return uVar1;
}

// ---- gpg::operator<<  @ 0x50c4a4
/* gpg::TEMPNAMEPLACEHOLDERVALUE(std::ostream&, gpg::FlushStatus) */

undefined4 __thiscall gpg::operator<<(gpg *this,undefined4 param_1,undefined4 param_3)

{
  undefined4 uVar1;
  undefined4 uStack_14;
  undefined4 uStack_10;
  
  uStack_14 = param_1;
  uStack_10 = param_3;
  DebugString(&uStack_14);
  uVar1 = FUN_007af9cc(this,&uStack_14);
  FUN_007c5914(&uStack_14);
  return uVar1;
}

// ---- gpg::operator<<  @ 0x50c4d0
/* gpg::TEMPNAMEPLACEHOLDERVALUE(std::ostream&, gpg::BaseStatus::StatusCode) */

undefined4 __thiscall gpg::operator<<(gpg *this,undefined4 param_1,undefined4 param_3)

{
  undefined4 uVar1;
  undefined4 uStack_14;
  undefined4 uStack_10;
  
  uStack_14 = param_1;
  uStack_10 = param_3;
  DebugString(&uStack_14);
  uVar1 = FUN_007af9cc(this,&uStack_14);
  FUN_007c5914(&uStack_14);
  return uVar1;
}

// ---- gpg::operator<<  @ 0x50c4fc
/* gpg::TEMPNAMEPLACEHOLDERVALUE(std::ostream&, gpg::UIStatus) */

undefined4 __thiscall gpg::operator<<(gpg *this,undefined4 param_1,undefined4 param_3)

{
  undefined4 uVar1;
  undefined4 uStack_14;
  undefined4 uStack_10;
  
  uStack_14 = param_1;
  uStack_10 = param_3;
  DebugString(&uStack_14);
  uVar1 = FUN_007af9cc(this,&uStack_14);
  FUN_007c5914(&uStack_14);
  return uVar1;
}

// ---- gpg::operator<<  @ 0x50c528
/* gpg::TEMPNAMEPLACEHOLDERVALUE(std::ostream&, gpg::MultiplayerStatus) */

undefined4 __thiscall gpg::operator<<(gpg *this,undefined4 param_1,undefined4 param_3)

{
  undefined4 uVar1;
  undefined4 uStack_14;
  undefined4 uStack_10;
  
  uStack_14 = param_1;
  uStack_10 = param_3;
  DebugString(&uStack_14);
  uVar1 = FUN_007af9cc(this,&uStack_14);
  FUN_007c5914(&uStack_14);
  return uVar1;
}

// ---- gpg::operator<<  @ 0x50c554
/* gpg::TEMPNAMEPLACEHOLDERVALUE(std::ostream&, gpg::QuestAcceptStatus) */

undefined4 __thiscall gpg::operator<<(gpg *this,undefined4 param_1,undefined4 param_3)

{
  undefined4 uVar1;
  undefined4 uStack_14;
  undefined4 uStack_10;
  
  uStack_14 = param_1;
  uStack_10 = param_3;
  DebugString(&uStack_14);
  uVar1 = FUN_007af9cc(this,&uStack_14);
  FUN_007c5914(&uStack_14);
  return uVar1;
}

// ---- gpg::operator<<  @ 0x50c580
/* gpg::TEMPNAMEPLACEHOLDERVALUE(std::ostream&, gpg::QuestClaimMilestoneStatus) */

undefined4 __thiscall gpg::operator<<(gpg *this,undefined4 param_1,undefined4 param_3)

{
  undefined4 uVar1;
  undefined4 uStack_14;
  undefined4 uStack_10;
  
  uStack_14 = param_1;
  uStack_10 = param_3;
  DebugString(&uStack_14);
  uVar1 = FUN_007af9cc(this,&uStack_14);
  FUN_007c5914(&uStack_14);
  return uVar1;
}

// ---- gpg::operator<<  @ 0x50c5ac
/* gpg::TEMPNAMEPLACEHOLDERVALUE(std::ostream&, gpg::SnapshotOpenStatus) */

undefined4 __thiscall gpg::operator<<(gpg *this,undefined4 param_1,undefined4 param_3)

{
  undefined4 uVar1;
  undefined4 uStack_14;
  undefined4 uStack_10;
  
  uStack_14 = param_1;
  uStack_10 = param_3;
  DebugString(&uStack_14);
  uVar1 = FUN_007af9cc(this,&uStack_14);
  FUN_007c5914(&uStack_14);
  return uVar1;
}

// ---- gpg::DebugString  @ 0x50c5d8
/* gpg::DebugString(gpg::DataSource) */

undefined4 gpg::DebugString(undefined4 param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  char *pcVar1;
  int iStack_c;
  
  if (param_2 == 2) {
    pcVar1 = "NETWORK ONLY";
  }
  else if (param_2 == 3) {
    pcVar1 = "CACHE ONLY";
  }
  else if (param_2 == 1) {
    pcVar1 = "CACHE OR NETWORK";
  }
  else {
    pcVar1 = "INVALID";
  }
  iStack_c = param_2;
  FUN_007c6a60(param_1,pcVar1,&iStack_c,param_4,param_1);
  return param_1;
}

// ---- gpg::DebugString  @ 0x50c61c
/* gpg::DebugString(gpg::LogLevel) */

undefined4
gpg::DebugString(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  char *pcVar1;
  undefined4 uStack_c;
  
  switch(param_2) {
  case 1:
    pcVar1 = "VERBOSE";
    break;
  case 2:
    pcVar1 = "INFO";
    break;
  case 3:
    pcVar1 = "WARNING";
    break;
  case 4:
    pcVar1 = "ERROR";
    break;
  default:
    pcVar1 = "INVALID";
  }
  uStack_c = param_2;
  FUN_007c6a60(param_1,pcVar1,&uStack_c,param_4,param_1);
  return param_1;
}

// ---- gpg::DebugString  @ 0x50c674
/* gpg::DebugString(gpg::AuthOperation) */

undefined4 gpg::DebugString(undefined4 param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  char *pcVar1;
  int iStack_c;
  
  if (param_2 == 1) {
    pcVar1 = "SIGN IN";
  }
  else if (param_2 == 2) {
    pcVar1 = "SIGN OUT";
  }
  else {
    pcVar1 = "INVALID";
  }
  iStack_c = param_2;
  FUN_007c6a60(param_1,pcVar1,&iStack_c,param_4,param_1);
  return param_1;
}

// ---- gpg::DebugString  @ 0x50c6a8
/* gpg::DebugString(gpg::ImageResolution) */

undefined4 gpg::DebugString(undefined4 param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  char *pcVar1;
  int iStack_c;
  
  if (param_2 == 1) {
    pcVar1 = "ICON";
  }
  else if (param_2 == 2) {
    pcVar1 = "HI RES";
  }
  else {
    pcVar1 = "INVALID";
  }
  iStack_c = param_2;
  FUN_007c6a60(param_1,pcVar1,&iStack_c,param_4,param_1);
  return param_1;
}

// ---- gpg::DebugString  @ 0x50c6dc
/* gpg::DebugString(gpg::EventVisibility) */

undefined4 gpg::DebugString(undefined4 param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  char *pcVar1;
  int iStack_c;
  
  if (param_2 == 1) {
    pcVar1 = "HIDDEN";
  }
  else if (param_2 == 2) {
    pcVar1 = "REVEALED";
  }
  else {
    pcVar1 = "INVALID";
  }
  iStack_c = param_2;
  FUN_007c6a60(param_1,pcVar1,&iStack_c,param_4,param_1);
  return param_1;
}

// ---- gpg::DebugString  @ 0x50c710
/* gpg::DebugString(gpg::ParticipantStatus) */

undefined4
gpg::DebugString(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  char *pcVar1;
  undefined4 uStack_c;
  
  switch(param_2) {
  case 1:
    pcVar1 = "INVITED";
    break;
  case 2:
    pcVar1 = "JOINED";
    break;
  case 3:
    pcVar1 = "DECLINED";
    break;
  case 4:
    pcVar1 = "LEFT";
    break;
  case 5:
    pcVar1 = "NOT INVITED YET";
    break;
  case 6:
    pcVar1 = "FINISHED";
    break;
  case 7:
    pcVar1 = "UNRESPONSIVE";
    break;
  default:
    pcVar1 = "INVALID";
  }
  uStack_c = param_2;
  FUN_007c6a60(param_1,pcVar1,&uStack_c,param_4,param_1);
  return param_1;
}

// ---- gpg::DebugString  @ 0x50c790
/* gpg::DebugString(gpg::MatchResult) */

undefined4
gpg::DebugString(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  char *pcVar1;
  undefined4 uStack_c;
  
  switch(param_2) {
  case 1:
    pcVar1 = "DISAGREED";
    break;
  case 2:
    pcVar1 = "DISCONNECTED";
    break;
  case 3:
    pcVar1 = "LOSS";
    break;
  case 4:
    pcVar1 = "NONE";
    break;
  case 5:
    pcVar1 = "TIE";
    break;
  case 6:
    pcVar1 = "WIN";
    break;
  default:
    pcVar1 = "INVALID";
  }
  uStack_c = param_2;
  FUN_007c6a60(param_1,pcVar1,&uStack_c,param_4,param_1);
  return param_1;
}

// ---- gpg::DebugString  @ 0x50c804
/* gpg::DebugString(gpg::MatchStatus) */

undefined4
gpg::DebugString(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  char *pcVar1;
  undefined4 uStack_c;
  
  switch(param_2) {
  case 1:
    pcVar1 = "INVITED";
    break;
  case 2:
    pcVar1 = "THEIR TURN";
    break;
  case 3:
    pcVar1 = "MY TURN";
    break;
  case 4:
    pcVar1 = "PENDING COMPLETION";
    break;
  case 5:
    pcVar1 = "COMPLETED";
    break;
  case 6:
    pcVar1 = "CANCELED";
    break;
  case 7:
    pcVar1 = "EXPIRED";
    break;
  default:
    pcVar1 = "INVALID";
  }
  uStack_c = param_2;
  FUN_007c6a60(param_1,pcVar1,&uStack_c,param_4,param_1);
  return param_1;
}

// ---- gpg::DebugString  @ 0x50c884
/* gpg::DebugString(gpg::MultiplayerEvent) */

undefined4 gpg::DebugString(undefined4 param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  char *pcVar1;
  int iStack_c;
  
  if (param_2 == 2) {
    pcVar1 = "UPDATED FROM APP LAUNCH";
  }
  else if (param_2 == 3) {
    pcVar1 = "REMOVED";
  }
  else if (param_2 == 1) {
    pcVar1 = "UPDATED";
  }
  else {
    pcVar1 = "INVALID";
  }
  iStack_c = param_2;
  FUN_007c6a60(param_1,pcVar1,&iStack_c,param_4,param_1);
  return param_1;
}

// ---- gpg::DebugString  @ 0x50c8c8
/* gpg::DebugString(gpg::SnapshotConflictPolicy) */

undefined4
gpg::DebugString(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  char *pcVar1;
  undefined4 uStack_c;
  
  switch(param_2) {
  case 1:
    pcVar1 = "MANUAL";
    break;
  case 2:
    pcVar1 = "LONGEST PLAYTIME";
    break;
  case 3:
    pcVar1 = "LAST KNOWN GOOD";
    break;
  case 4:
    pcVar1 = "MOST RECENTLY MODIFIED";
    break;
  case 5:
    pcVar1 = "HIGHEST PROGRESS";
    break;
  default:
    pcVar1 = "INVALID";
  }
  uStack_c = param_2;
  FUN_007c6a60(param_1,pcVar1,&uStack_c,param_4,param_1);
  return param_1;
}

// ---- gpg::operator<<  @ 0x50c930
/* gpg::TEMPNAMEPLACEHOLDERVALUE(std::ostream&, gpg::DataSource) */

undefined4 __thiscall gpg::operator<<(gpg *this,undefined4 param_1,undefined4 param_3)

{
  undefined4 uVar1;
  undefined4 uStack_14;
  undefined4 uStack_10;
  
  uStack_14 = param_1;
  uStack_10 = param_3;
  DebugString(&uStack_14);
  uVar1 = FUN_007af9cc(this,&uStack_14);
  FUN_007c5914(&uStack_14);
  return uVar1;
}

// ---- gpg::operator<<  @ 0x50c95c
/* gpg::TEMPNAMEPLACEHOLDERVALUE(std::ostream&, gpg::LogLevel) */

undefined4 __thiscall gpg::operator<<(gpg *this,undefined4 param_1,undefined4 param_3)

{
  undefined4 uVar1;
  undefined4 uStack_14;
  undefined4 uStack_10;
  
  uStack_14 = param_1;
  uStack_10 = param_3;
  DebugString(&uStack_14);
  uVar1 = FUN_007af9cc(this,&uStack_14);
  FUN_007c5914(&uStack_14);
  return uVar1;
}

// ---- gpg::operator<<  @ 0x50c988
/* gpg::TEMPNAMEPLACEHOLDERVALUE(std::ostream&, gpg::AuthOperation) */

undefined4 __thiscall gpg::operator<<(gpg *this,undefined4 param_1,undefined4 param_3)

{
  undefined4 uVar1;
  undefined4 uStack_14;
  undefined4 uStack_10;
  
  uStack_14 = param_1;
  uStack_10 = param_3;
  DebugString(&uStack_14);
  uVar1 = FUN_007af9cc(this,&uStack_14);
  FUN_007c5914(&uStack_14);
  return uVar1;
}

// ---- gpg::operator<<  @ 0x50c9b4
/* gpg::TEMPNAMEPLACEHOLDERVALUE(std::ostream&, gpg::ImageResolution) */

undefined4 __thiscall gpg::operator<<(gpg *this,undefined4 param_1,undefined4 param_3)

{
  undefined4 uVar1;
  undefined4 uStack_14;
  undefined4 uStack_10;
  
  uStack_14 = param_1;
  uStack_10 = param_3;
  DebugString(&uStack_14);
  uVar1 = FUN_007af9cc(this,&uStack_14);
  FUN_007c5914(&uStack_14);
  return uVar1;
}

// ---- gpg::operator<<  @ 0x50c9e0
/* gpg::TEMPNAMEPLACEHOLDERVALUE(std::ostream&, gpg::EventVisibility) */

undefined4 __thiscall gpg::operator<<(gpg *this,undefined4 param_1,undefined4 param_3)

{
  undefined4 uVar1;
  undefined4 uStack_14;
  undefined4 uStack_10;
  
  uStack_14 = param_1;
  uStack_10 = param_3;
  DebugString(&uStack_14);
  uVar1 = FUN_007af9cc(this,&uStack_14);
  FUN_007c5914(&uStack_14);
  return uVar1;
}

// ---- gpg::DebugString  @ 0x50ca0c
/* gpg::DebugString(gpg::Event const&) */

gpg * __thiscall gpg::DebugString(gpg *this,Event *param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  gpg *pgVar3;
  undefined8 uVar4;
  undefined1 *local_d8;
  undefined1 auStack_d4 [8];
  undefined1 auStack_cc [4];
  undefined1 auStack_c8 [180];
  
  FUN_007aaa70(auStack_d4,0x18);
  uVar1 = FUN_007bbcd0(auStack_cc,"(id: ");
  uVar2 = Event::Id(param_1);
  uVar1 = FUN_007af9cc(uVar1,uVar2);
  uVar1 = FUN_007bbcd0(uVar1,&DAT_00800fa8);
  uVar1 = FUN_007bbcd0(uVar1,"name: ");
  uVar2 = Event::Name(param_1);
  uVar1 = FUN_007af9cc(uVar1,uVar2);
  uVar1 = FUN_007bbcd0(uVar1,&DAT_00800fa8);
  uVar1 = FUN_007bbcd0(uVar1,"description: ");
  uVar2 = Event::Description(param_1);
  uVar1 = FUN_007af9cc(uVar1,uVar2);
  uVar1 = FUN_007bbcd0(uVar1,&DAT_00800fa8);
  pgVar3 = (gpg *)FUN_007bbcd0(uVar1,"visibility: ");
  uVar1 = Event::Visibility(param_1);
  uVar1 = operator<<(pgVar3,uVar1);
  uVar1 = FUN_007bbcd0(uVar1,&DAT_00800fa8);
  uVar1 = FUN_007bbcd0(uVar1,"count: ");
  uVar4 = Event::Count(param_1);
  uVar2 = (undefined4)((ulonglong)uVar4 >> 0x20);
  uVar1 = FUN_007bc360(uVar1,uVar2,(int)uVar4,uVar2);
  uVar1 = FUN_007bbcd0(uVar1,&DAT_00800fa8);
  uVar1 = FUN_007bbcd0(uVar1,"image url: ");
  uVar2 = Event::ImageUrl(param_1);
  uVar1 = FUN_007af9cc(uVar1,uVar2);
  FUN_007bbcd0(uVar1,&DAT_00800fdc);
  FUN_007a9920(&local_d8,auStack_c8);
  *(undefined1 **)this = local_d8;
  local_d8 = &DAT_00972528;
  FUN_007c5914(&local_d8);
  FUN_007a95a8(auStack_d4);
  return this;
}

// ---- gpg::operator<<  @ 0x50cb4c
/* gpg::TEMPNAMEPLACEHOLDERVALUE(std::ostream&, gpg::Event const&) */

undefined4 __thiscall gpg::operator<<(gpg *this,ostream *param_1,Event *param_2)

{
  undefined4 uVar1;
  ostream *poStack_14;
  Event *pEStack_10;
  
  poStack_14 = param_1;
  pEStack_10 = param_2;
  DebugString((gpg *)&poStack_14,(Event *)param_1);
  uVar1 = FUN_007af9cc(this,(gpg *)&poStack_14);
  FUN_007c5914((gpg *)&poStack_14);
  return uVar1;
}

// ---- gpg::operator<<  @ 0x50cb78
/* gpg::TEMPNAMEPLACEHOLDERVALUE(std::ostream&, gpg::ParticipantStatus) */

undefined4 __thiscall gpg::operator<<(gpg *this,undefined4 param_1,undefined4 param_3)

{
  undefined4 uVar1;
  undefined4 uStack_14;
  undefined4 uStack_10;
  
  uStack_14 = param_1;
  uStack_10 = param_3;
  DebugString(&uStack_14);
  uVar1 = FUN_007af9cc(this,&uStack_14);
  FUN_007c5914(&uStack_14);
  return uVar1;
}

// ---- gpg::operator<<  @ 0x50cba4
/* gpg::TEMPNAMEPLACEHOLDERVALUE(std::ostream&, gpg::MatchResult) */

undefined4 __thiscall gpg::operator<<(gpg *this,undefined4 param_1,undefined4 param_3)

{
  undefined4 uVar1;
  undefined4 uStack_14;
  undefined4 uStack_10;
  
  uStack_14 = param_1;
  uStack_10 = param_3;
  DebugString(&uStack_14);
  uVar1 = FUN_007af9cc(this,&uStack_14);
  FUN_007c5914(&uStack_14);
  return uVar1;
}

// ---- gpg::DebugString  @ 0x50cbd0
/* gpg::DebugString(gpg::MultiplayerParticipant const&) */

gpg * __thiscall gpg::DebugString(gpg *this,MultiplayerParticipant *param_1)

{
  int iVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  gpg *pgVar4;
  Player *extraout_r2;
  undefined1 *local_e0;
  Player aPStack_dc [8];
  undefined1 auStack_d4 [8];
  undefined1 auStack_cc [4];
  undefined1 auStack_c8 [176];
  
  FUN_007aaa70(auStack_d4,0x18);
  iVar1 = MultiplayerParticipant::Valid(param_1);
  if (iVar1 == 0) {
    FUN_007bbcd0(auStack_cc,"INVALID PARTICIPANT");
  }
  else {
    uVar2 = FUN_007bbcd0(auStack_cc,"(name: ");
    uVar3 = MultiplayerParticipant::DisplayName(param_1);
    uVar2 = FUN_007af9cc(uVar2,uVar3);
    uVar2 = FUN_007bbcd0(uVar2,&DAT_00800fa8);
    uVar2 = FUN_007bbcd0(uVar2,&DAT_00800fab);
    uVar3 = MultiplayerParticipant::Id(param_1);
    uVar2 = FUN_007af9cc(uVar2,uVar3);
    uVar2 = FUN_007bbcd0(uVar2,&DAT_00800fa8);
    uVar2 = FUN_007bbcd0(uVar2,"has player: ");
    uVar2 = FUN_007bb208(uVar2,0x50b23b);
    uVar3 = MultiplayerParticipant::HasPlayer(param_1);
    uVar2 = FUN_007bc07c(uVar2,uVar3);
    uVar2 = FUN_007bbcd0(uVar2,&DAT_00800fa8);
    pgVar4 = (gpg *)FUN_007bbcd0(uVar2,"player: ");
    MultiplayerParticipant::Player();
    uVar2 = operator<<(pgVar4,(ostream *)aPStack_dc,extraout_r2);
    uVar2 = FUN_007bbcd0(uVar2,&DAT_00800fa8);
    pgVar4 = (gpg *)FUN_007bbcd0(uVar2,"status: ");
    uVar2 = MultiplayerParticipant::Status(param_1);
    uVar2 = operator<<(pgVar4,uVar2);
    uVar2 = FUN_007bbcd0(uVar2,&DAT_00800fa8);
    uVar2 = FUN_007bbcd0(uVar2,"has match result: ");
    uVar3 = MultiplayerParticipant::HasMatchResult(param_1);
    uVar2 = FUN_007bc07c(uVar2,uVar3);
    uVar2 = FUN_007bbcd0(uVar2,&DAT_00800fa8);
    pgVar4 = (gpg *)FUN_007bbcd0(uVar2,"match result: ");
    uVar2 = MultiplayerParticipant::MatchResult(param_1);
    uVar2 = operator<<(pgVar4,uVar2);
    uVar2 = FUN_007bbcd0(uVar2,&DAT_00800fa8);
    uVar2 = FUN_007bbcd0(uVar2,"match rank: ");
    uVar3 = MultiplayerParticipant::MatchRank(param_1);
    uVar2 = FUN_007bbf08(uVar2,uVar3);
    FUN_007bbcd0(uVar2,&DAT_00800fdc);
    Player::~Player(aPStack_dc);
  }
  FUN_007a9920(&local_e0,auStack_c8);
  *(undefined1 **)this = local_e0;
  local_e0 = &DAT_00972528;
  FUN_007c5914(&local_e0);
  FUN_007a95a8(auStack_d4);
  return this;
}

// ---- gpg::operator<<  @ 0x50cda0
/* gpg::TEMPNAMEPLACEHOLDERVALUE(std::ostream&, gpg::MultiplayerParticipant const&) */

undefined4 __thiscall gpg::operator<<(gpg *this,ostream *param_1,MultiplayerParticipant *param_2)

{
  undefined4 uVar1;
  ostream *poStack_14;
  MultiplayerParticipant *pMStack_10;
  
  poStack_14 = param_1;
  pMStack_10 = param_2;
  DebugString((gpg *)&poStack_14,(MultiplayerParticipant *)param_1);
  uVar1 = FUN_007af9cc(this,(gpg *)&poStack_14);
  FUN_007c5914((gpg *)&poStack_14);
  return uVar1;
}

// ---- gpg::operator<<  @ 0x50cdcc
/* gpg::TEMPNAMEPLACEHOLDERVALUE(std::ostream&, gpg::MatchStatus) */

undefined4 __thiscall gpg::operator<<(gpg *this,undefined4 param_1,undefined4 param_3)

{
  undefined4 uVar1;
  undefined4 uStack_14;
  undefined4 uStack_10;
  
  uStack_14 = param_1;
  uStack_10 = param_3;
  DebugString(&uStack_14);
  uVar1 = FUN_007af9cc(this,&uStack_14);
  FUN_007c5914(&uStack_14);
  return uVar1;
}

// ---- gpg::operator<<  @ 0x50cdf8
/* gpg::TEMPNAMEPLACEHOLDERVALUE(std::ostream&, gpg::MultiplayerEvent) */

undefined4 __thiscall gpg::operator<<(gpg *this,undefined4 param_1,undefined4 param_3)

{
  undefined4 uVar1;
  undefined4 uStack_14;
  undefined4 uStack_10;
  
  uStack_14 = param_1;
  uStack_10 = param_3;
  DebugString(&uStack_14);
  uVar1 = FUN_007af9cc(this,&uStack_14);
  FUN_007c5914(&uStack_14);
  return uVar1;
}

// ---- gpg::operator<<  @ 0x50ce24
/* gpg::TEMPNAMEPLACEHOLDERVALUE(std::ostream&, gpg::SnapshotConflictPolicy) */

undefined4 __thiscall gpg::operator<<(gpg *this,undefined4 param_1,undefined4 param_3)

{
  undefined4 uVar1;
  undefined4 uStack_14;
  undefined4 uStack_10;
  
  uStack_14 = param_1;
  uStack_10 = param_3;
  DebugString(&uStack_14);
  uVar1 = FUN_007af9cc(this,&uStack_14);
  FUN_007c5914(&uStack_14);
  return uVar1;
}

// ---- gpg::DebugString  @ 0x50ce50
/* gpg::DebugString(std::chrono::duration<long long, std::ratio<1ll, 1000ll> >) */

undefined4 *
gpg::DebugString(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  undefined4 extraout_r1;
  undefined1 *local_d8;
  undefined1 auStack_d4 [8];
  undefined1 auStack_cc [4];
  undefined1 auStack_c8 [180];
  
  FUN_007aaa70(auStack_d4,0x18);
  uVar1 = FUN_007bc1e8(auStack_cc,extraout_r1,param_3,param_4);
  FUN_007bbcd0(uVar1,&DAT_00801652);
  FUN_007a9920(&local_d8,auStack_c8);
  *param_1 = local_d8;
  local_d8 = &DAT_00972528;
  FUN_007c5914(&local_d8);
  FUN_007a95a8(auStack_d4);
  return param_1;
}

// ---- gpg::operator<<  @ 0x50ceb4
/* gpg::TEMPNAMEPLACEHOLDERVALUE(std::ostream&, std::chrono::duration<long long, std::ratio<1ll,
   1000ll> >) */

undefined4 __thiscall gpg::operator<<(gpg *this,undefined4 param_1,undefined4 param_3)

{
  undefined4 uVar1;
  undefined4 uStack_14;
  undefined4 uStack_10;
  
  uStack_14 = param_1;
  uStack_10 = param_3;
  DebugString(&uStack_14);
  uVar1 = FUN_007af9cc(this,&uStack_14);
  FUN_007c5914(&uStack_14);
  return uVar1;
}

// ---- gpg::DebugString  @ 0x50cee0
/* gpg::DebugString(gpg::TurnBasedMatch const&) */

gpg * __thiscall gpg::DebugString(gpg *this,TurnBasedMatch *param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  gpg *pgVar3;
  undefined4 extraout_r1;
  undefined4 extraout_r1_00;
  MultiplayerParticipant *extraout_r2;
  MultiplayerParticipant *extraout_r2_00;
  MultiplayerParticipant *extraout_r2_01;
  undefined4 local_100;
  undefined4 uStack_fc;
  undefined1 *local_f8;
  ostream aoStack_f4 [8];
  ostream aoStack_ec [8];
  ostream aoStack_e4 [8];
  undefined1 auStack_dc [8];
  undefined1 auStack_d4 [4];
  undefined1 auStack_d0 [176];
  
  FUN_007aaa70(auStack_dc,0x18);
  uVar1 = FUN_007bbcd0(auStack_d4,"(id: ");
  uVar2 = TurnBasedMatch::Id((TurnBasedMatch *)param_1);
  uVar1 = FUN_007af9cc(uVar1,uVar2);
  uVar1 = FUN_007bbcd0(uVar1,&DAT_00800fa8);
  pgVar3 = (gpg *)FUN_007bbcd0(uVar1,"creation time: ");
  TurnBasedMatch::CreationTime();
  uVar1 = operator<<(pgVar3,extraout_r1,local_100,uStack_fc);
  uVar1 = FUN_007bbcd0(uVar1,&DAT_00800fa8);
  pgVar3 = (gpg *)FUN_007bbcd0(uVar1,"creating participant: ");
  TurnBasedMatch::CreatingParticipant();
  uVar1 = operator<<(pgVar3,aoStack_f4,extraout_r2);
  uVar1 = FUN_007bbcd0(uVar1,&DAT_00800fa8);
  pgVar3 = (gpg *)FUN_007bbcd0(uVar1,"last update: ");
  TurnBasedMatch::LastUpdateTime();
  uVar1 = operator<<(pgVar3,extraout_r1_00,local_100,uStack_fc);
  uVar1 = FUN_007bbcd0(uVar1,&DAT_00800fa8);
  pgVar3 = (gpg *)FUN_007bbcd0(uVar1,"last updating participant: ");
  TurnBasedMatch::LastUpdatingParticipant();
  uVar1 = operator<<(pgVar3,aoStack_ec,extraout_r2_00);
  pgVar3 = (gpg *)FUN_007bbcd0(uVar1,", pending participant: ");
  TurnBasedMatch::PendingParticipant();
  uVar1 = operator<<(pgVar3,aoStack_e4,extraout_r2_01);
  uVar1 = FUN_007bbcd0(uVar1,&DAT_00800fa8);
  pgVar3 = (gpg *)FUN_007bbcd0(uVar1,"status: ");
  uVar1 = TurnBasedMatch::Status((TurnBasedMatch *)param_1);
  uVar1 = operator<<(pgVar3,uVar1);
  uVar1 = FUN_007bbcd0(uVar1,&DAT_00800fa8);
  uVar1 = FUN_007bbcd0(uVar1,"free automatching slots: ");
  uVar2 = TurnBasedMatch::AutomatchingSlotsAvailable((TurnBasedMatch *)param_1);
  uVar1 = FUN_007bbf08(uVar1,uVar2);
  uVar1 = FUN_007bbcd0(uVar1,", variant: ");
  uVar2 = TurnBasedMatch::Variant((TurnBasedMatch *)param_1);
  uVar1 = FUN_007bbf08(uVar1,uVar2);
  uVar1 = FUN_007bbcd0(uVar1,&DAT_00800fa8);
  uVar1 = FUN_007bbcd0(uVar1,"rematch number: ");
  uVar2 = TurnBasedMatch::Number((TurnBasedMatch *)param_1);
  uVar1 = FUN_007bbf08(uVar1,uVar2);
  uVar1 = FUN_007bbcd0(uVar1,&DAT_00800fa8);
  uVar1 = FUN_007bbcd0(uVar1,"version: ");
  uVar2 = TurnBasedMatch::Version((TurnBasedMatch *)param_1);
  uVar1 = FUN_007bbf08(uVar1,uVar2);
  uVar1 = FUN_007bbcd0(uVar1,&DAT_00800fa8);
  uVar1 = FUN_007bbcd0(uVar1,"has previous match data: ");
  uVar1 = FUN_007bb208(uVar1,0x50b23b);
  uVar2 = TurnBasedMatch::HasPreviousMatchData((TurnBasedMatch *)param_1);
  uVar1 = FUN_007bc07c(uVar1,uVar2);
  uVar1 = FUN_007bbcd0(uVar1,&DAT_00800fa8);
  uVar1 = FUN_007bbcd0(uVar1,"rematch id: ");
  uVar2 = TurnBasedMatch::RematchId((TurnBasedMatch *)param_1);
  uVar1 = FUN_007af9cc(uVar1,uVar2);
  FUN_007bbcd0(uVar1,&DAT_00800fdc);
  MultiplayerParticipant::~MultiplayerParticipant((MultiplayerParticipant *)aoStack_e4);
  MultiplayerParticipant::~MultiplayerParticipant((MultiplayerParticipant *)aoStack_ec);
  MultiplayerParticipant::~MultiplayerParticipant((MultiplayerParticipant *)aoStack_f4);
  FUN_007a9920(&local_f8,auStack_d0);
  *(undefined1 **)this = local_f8;
  local_f8 = &DAT_00972528;
  FUN_007c5914(&local_f8);
  FUN_007a95a8(auStack_dc);
  return this;
}

// ---- gpg::operator<<  @ 0x50d178
/* gpg::TEMPNAMEPLACEHOLDERVALUE(std::ostream&, gpg::TurnBasedMatch const&) */

undefined4 __thiscall gpg::operator<<(gpg *this,ostream *param_1,TurnBasedMatch *param_2)

{
  undefined4 uVar1;
  ostream *poStack_14;
  TurnBasedMatch *pTStack_10;
  
  poStack_14 = param_1;
  pTStack_10 = param_2;
  DebugString((gpg *)&poStack_14,param_1);
  uVar1 = FUN_007af9cc(this,(gpg *)&poStack_14);
  FUN_007c5914((gpg *)&poStack_14);
  return uVar1;
}

// ---- gpg::DebugString  @ 0x50d1a4
/* gpg::DebugString(gpg::MultiplayerInvitation const&) */

gpg * __thiscall gpg::DebugString(gpg *this,MultiplayerInvitation *param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  gpg *pgVar3;
  undefined4 extraout_r1;
  MultiplayerParticipant *extraout_r2;
  undefined4 local_e8;
  undefined4 uStack_e4;
  undefined1 *local_e0;
  MultiplayerParticipant aMStack_dc [8];
  undefined1 auStack_d4 [8];
  undefined1 auStack_cc [4];
  undefined1 auStack_c8 [176];
  
  FUN_007aaa70(auStack_d4,0x18);
  uVar1 = FUN_007bbcd0(auStack_cc,"(id: ");
  uVar2 = MultiplayerInvitation::Id((MultiplayerInvitation *)param_1);
  uVar1 = FUN_007af9cc(uVar1,uVar2);
  uVar1 = FUN_007bbcd0(uVar1,&DAT_00800fa8);
  uVar1 = FUN_007bbcd0(uVar1,"variant: ");
  uVar2 = MultiplayerInvitation::Variant((MultiplayerInvitation *)param_1);
  uVar1 = FUN_007bbf08(uVar1,uVar2);
  uVar1 = FUN_007bbcd0(uVar1,&DAT_00800fa8);
  uVar1 = FUN_007bbcd0(uVar1,"free automatching slots: ");
  uVar2 = MultiplayerInvitation::AutomatchingSlotsAvailable((MultiplayerInvitation *)param_1);
  uVar1 = FUN_007bbf08(uVar1,uVar2);
  pgVar3 = (gpg *)FUN_007bbcd0(uVar1,", creation time: ");
  MultiplayerInvitation::CreationTime();
  uVar1 = operator<<(pgVar3,extraout_r1,local_e8,uStack_e4);
  uVar1 = FUN_007bbcd0(uVar1,&DAT_00800fa8);
  pgVar3 = (gpg *)FUN_007bbcd0(uVar1,"inviting participant: ");
  MultiplayerInvitation::InvitingParticipant();
  uVar1 = operator<<(pgVar3,(ostream *)aMStack_dc,extraout_r2);
  FUN_007bbcd0(uVar1,&DAT_00800fdc);
  MultiplayerParticipant::~MultiplayerParticipant(aMStack_dc);
  FUN_007a9920(&local_e0,auStack_c8);
  *(undefined1 **)this = local_e0;
  local_e0 = &DAT_00972528;
  FUN_007c5914(&local_e0);
  FUN_007a95a8(auStack_d4);
  return this;
}

// ---- gpg::operator<<  @ 0x50d2cc
/* gpg::TEMPNAMEPLACEHOLDERVALUE(std::ostream&, gpg::MultiplayerInvitation const&) */

undefined4 __thiscall gpg::operator<<(gpg *this,ostream *param_1,MultiplayerInvitation *param_2)

{
  undefined4 uVar1;
  ostream *poStack_14;
  MultiplayerInvitation *pMStack_10;
  
  poStack_14 = param_1;
  pMStack_10 = param_2;
  DebugString((gpg *)&poStack_14,param_1);
  uVar1 = FUN_007af9cc(this,(gpg *)&poStack_14);
  FUN_007c5914((gpg *)&poStack_14);
  return uVar1;
}

// ---- gpg::DebugString  @ 0x50d2f8
/* gpg::DebugString(gpg::Quest const&) */

gpg * __thiscall gpg::DebugString(gpg *this,Quest *param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  gpg *pgVar3;
  undefined4 extraout_r1;
  undefined4 extraout_r1_00;
  undefined4 extraout_r1_01;
  undefined4 extraout_r1_02;
  QuestMilestoneState *extraout_r2;
  QuestState *extraout_r2_00;
  undefined8 uVar4;
  undefined4 local_120;
  undefined4 uStack_11c;
  undefined4 local_114;
  undefined1 *local_110;
  QuestMilestone aQStack_10c [8];
  QuestMilestone aQStack_104 [8];
  QuestMilestone aQStack_fc [8];
  QuestMilestone aQStack_f4 [8];
  QuestMilestone aQStack_ec [8];
  undefined1 auStack_e4 [8];
  undefined1 auStack_dc [4];
  undefined1 auStack_d8 [180];
  
  FUN_007aaa70(auStack_e4,0x18);
  uVar1 = FUN_007bbcd0(auStack_dc,"(quest: ");
  uVar2 = Quest::Id((Quest *)param_1);
  uVar1 = FUN_007af9cc(uVar1,uVar2);
  uVar1 = FUN_007bbcd0(uVar1,&DAT_00801759);
  uVar1 = FUN_007bbcd0(uVar1,"name: ");
  uVar2 = Quest::Name((Quest *)param_1);
  uVar1 = FUN_007af9cc(uVar1,uVar2);
  uVar1 = FUN_007bbcd0(uVar1,&DAT_00800fa8);
  uVar1 = FUN_007bbcd0(uVar1,"description: ");
  uVar2 = Quest::Description((Quest *)param_1);
  uVar1 = FUN_007af9cc(uVar1,uVar2);
  uVar1 = FUN_007bbcd0(uVar1,&DAT_00800fa8);
  uVar1 = FUN_007bbcd0(uVar1,"icon: ");
  uVar2 = Quest::IconUrl((Quest *)param_1);
  uVar1 = FUN_007af9cc(uVar1,uVar2);
  uVar1 = FUN_007bbcd0(uVar1,&DAT_00800fa8);
  uVar1 = FUN_007bbcd0(uVar1,"banner: ");
  uVar2 = Quest::BannerUrl((Quest *)param_1);
  uVar1 = FUN_007af9cc(uVar1,uVar2);
  uVar1 = FUN_007bbcd0(uVar1,&DAT_00800fa8);
  uVar1 = FUN_007bbcd0(uVar1,"milestone id: ");
  Quest::CurrentMilestone();
  uVar2 = QuestMilestone::Id(aQStack_10c);
  uVar1 = FUN_007af9cc(uVar1,uVar2);
  uVar1 = FUN_007bbcd0(uVar1,&DAT_00800fa8);
  uVar1 = FUN_007bbcd0(uVar1,"milestone event id: ");
  Quest::CurrentMilestone();
  uVar2 = QuestMilestone::EventId(aQStack_104);
  uVar1 = FUN_007af9cc(uVar1,uVar2);
  uVar1 = FUN_007bbcd0(uVar1,&DAT_00800fa8);
  uVar1 = FUN_007bbcd0(uVar1,"milestone progress: ");
  Quest::CurrentMilestone();
  uVar4 = QuestMilestone::CurrentCount(aQStack_fc);
  uVar2 = (undefined4)((ulonglong)uVar4 >> 0x20);
  uVar1 = FUN_007bc360(uVar1,uVar2,(int)uVar4,uVar2);
  uVar1 = FUN_007bbcd0(uVar1,&DAT_00800fc6);
  Quest::CurrentMilestone();
  uVar4 = QuestMilestone::TargetCount(aQStack_f4);
  uVar2 = (undefined4)((ulonglong)uVar4 >> 0x20);
  uVar1 = FUN_007bc360(uVar1,uVar2,(int)uVar4,uVar2);
  uVar1 = FUN_007bbcd0(uVar1,&DAT_00800fa8);
  pgVar3 = (gpg *)FUN_007bbcd0(uVar1,"milestone state: ");
  Quest::CurrentMilestone();
  local_114 = QuestMilestone::State(aQStack_ec);
  uVar1 = operator<<(pgVar3,(ostream *)&local_114,extraout_r2);
  uVar1 = FUN_007bbcd0(uVar1,&DAT_00800fa8);
  pgVar3 = (gpg *)FUN_007bbcd0(uVar1,"state: ");
  local_110 = (undefined1 *)Quest::State((Quest *)param_1);
  uVar1 = operator<<(pgVar3,(ostream *)&local_110,extraout_r2_00);
  uVar1 = FUN_007bbcd0(uVar1,&DAT_00800fa8);
  pgVar3 = (gpg *)FUN_007bbcd0(uVar1,"motification/start/expiration/accepted times: ");
  Quest::ExpirationNotificationTime();
  uVar1 = operator<<(pgVar3,extraout_r1,local_120,uStack_11c);
  pgVar3 = (gpg *)FUN_007bbcd0(uVar1,&DAT_00800fc6);
  Quest::StartTime();
  uVar1 = operator<<(pgVar3,extraout_r1_00,local_120,uStack_11c);
  pgVar3 = (gpg *)FUN_007bbcd0(uVar1,&DAT_00800fc6);
  Quest::ExpirationTime();
  uVar1 = operator<<(pgVar3,extraout_r1_01,local_120,uStack_11c);
  pgVar3 = (gpg *)FUN_007bbcd0(uVar1,&DAT_00800fc6);
  Quest::AcceptedTime();
  operator<<(pgVar3,extraout_r1_02,local_120,uStack_11c);
  QuestMilestone::~QuestMilestone(aQStack_ec);
  QuestMilestone::~QuestMilestone(aQStack_f4);
  QuestMilestone::~QuestMilestone(aQStack_fc);
  QuestMilestone::~QuestMilestone(aQStack_104);
  QuestMilestone::~QuestMilestone(aQStack_10c);
  FUN_007a9920((ostream *)&local_110,auStack_d8);
  *(undefined1 **)this = local_110;
  local_110 = &DAT_00972528;
  FUN_007c5914((ostream *)&local_110);
  FUN_007a95a8(auStack_e4);
  return this;
}

// ---- gpg::operator<<  @ 0x50d60c
/* gpg::TEMPNAMEPLACEHOLDERVALUE(std::ostream&, gpg::Quest const&) */

undefined4 __thiscall gpg::operator<<(gpg *this,ostream *param_1,Quest *param_2)

{
  undefined4 uVar1;
  ostream *poStack_14;
  Quest *pQStack_10;
  
  poStack_14 = param_1;
  pQStack_10 = param_2;
  DebugString((gpg *)&poStack_14,param_1);
  uVar1 = FUN_007af9cc(this,(gpg *)&poStack_14);
  FUN_007c5914((gpg *)&poStack_14);
  return uVar1;
}

// ---- gpg::DebugString  @ 0x50d638
/* gpg::DebugString(gpg::SnapshotMetadata const&) */

gpg * __thiscall gpg::DebugString(gpg *this,SnapshotMetadata *param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  gpg *pgVar3;
  undefined4 extraout_r1;
  undefined4 extraout_r1_00;
  undefined4 local_e0;
  undefined4 uStack_dc;
  undefined1 *local_d8;
  undefined1 auStack_d4 [8];
  undefined1 auStack_cc [4];
  undefined1 auStack_c8 [176];
  
  FUN_007aaa70(auStack_d4,0x18);
  uVar1 = FUN_007bbcd0(auStack_cc,"(file name: ");
  uVar2 = SnapshotMetadata::FileName(param_1);
  uVar1 = FUN_007af9cc(uVar1,uVar2);
  uVar1 = FUN_007bbcd0(uVar1,&DAT_00800fa8);
  uVar1 = FUN_007bbcd0(uVar1,"description: ");
  uVar2 = SnapshotMetadata::Description(param_1);
  uVar1 = FUN_007af9cc(uVar1,uVar2);
  uVar1 = FUN_007bbcd0(uVar1,&DAT_00800fa8);
  uVar1 = FUN_007bbcd0(uVar1,"is open: ");
  uVar1 = FUN_007bb208(uVar1,0x50b23b);
  uVar2 = SnapshotMetadata::IsOpen(param_1);
  uVar1 = FUN_007bc07c(uVar1,uVar2);
  uVar1 = FUN_007bbcd0(uVar1,&DAT_00800fa8);
  pgVar3 = (gpg *)FUN_007bbcd0(uVar1,"played time: ");
  SnapshotMetadata::PlayedTime();
  uVar1 = operator<<(pgVar3,extraout_r1,local_e0,uStack_dc);
  uVar1 = FUN_007bbcd0(uVar1,&DAT_00800fa8);
  pgVar3 = (gpg *)FUN_007bbcd0(uVar1,"last modified time: ");
  SnapshotMetadata::LastModifiedTime();
  uVar1 = operator<<(pgVar3,extraout_r1_00,local_e0,uStack_dc);
  uVar1 = FUN_007bbcd0(uVar1,&DAT_00800fa8);
  uVar1 = FUN_007bbcd0(uVar1,"cover image url: ");
  uVar2 = SnapshotMetadata::CoverImageURL(param_1);
  uVar1 = FUN_007af9cc(uVar1,uVar2);
  FUN_007bbcd0(uVar1,&DAT_00800fdc);
  FUN_007a9920(&local_d8,auStack_c8);
  *(undefined1 **)this = local_d8;
  local_d8 = &DAT_00972528;
  FUN_007c5914(&local_d8);
  FUN_007a95a8(auStack_d4);
  return this;
}

// ---- gpg::operator<<  @ 0x50d794
/* gpg::TEMPNAMEPLACEHOLDERVALUE(std::ostream&, gpg::SnapshotMetadata const&) */

undefined4 __thiscall gpg::operator<<(gpg *this,ostream *param_1,SnapshotMetadata *param_2)

{
  undefined4 uVar1;
  ostream *poStack_14;
  SnapshotMetadata *pSStack_10;
  
  poStack_14 = param_1;
  pSStack_10 = param_2;
  DebugString((gpg *)&poStack_14,(SnapshotMetadata *)param_1);
  uVar1 = FUN_007af9cc(this,(gpg *)&poStack_14);
  FUN_007c5914((gpg *)&poStack_14);
  return uVar1;
}

// ---- gpg::DebugString  @ 0x50d7c0
/* gpg::DebugString(gpg::SnapshotMetadataChange const&) */

gpg * __thiscall gpg::DebugString(gpg *this,SnapshotMetadataChange *param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  gpg *pgVar3;
  undefined4 extraout_r1;
  CoverImage *extraout_r2;
  undefined4 local_e8;
  undefined4 uStack_e4;
  undefined1 *local_e0;
  CoverImage aCStack_dc [8];
  undefined1 auStack_d4 [8];
  undefined1 auStack_cc [4];
  undefined1 auStack_c8 [176];
  
  FUN_007aaa70(auStack_d4,0x18);
  uVar1 = FUN_007bbcd0(auStack_cc,"(description changed: ");
  uVar1 = FUN_007bb208(uVar1,0x50b23b);
  uVar2 = SnapshotMetadataChange::DescriptionIsChanged(param_1);
  uVar1 = FUN_007bc07c(uVar1,uVar2);
  uVar1 = FUN_007bbcd0(uVar1,&DAT_00800fa8);
  uVar1 = FUN_007bbcd0(uVar1,"description: ");
  uVar2 = SnapshotMetadataChange::Description(param_1);
  uVar1 = FUN_007af9cc(uVar1,uVar2);
  uVar1 = FUN_007bbcd0(uVar1,&DAT_00800fa8);
  uVar1 = FUN_007bbcd0(uVar1,"played time changed: ");
  uVar2 = SnapshotMetadataChange::PlayedTimeIsChanged(param_1);
  uVar1 = FUN_007bc07c(uVar1,uVar2);
  uVar1 = FUN_007bbcd0(uVar1,&DAT_00800fa8);
  pgVar3 = (gpg *)FUN_007bbcd0(uVar1,"played time: ");
  SnapshotMetadataChange::PlayedTime();
  uVar1 = operator<<(pgVar3,extraout_r1,local_e8,uStack_e4);
  uVar1 = FUN_007bbcd0(uVar1,&DAT_00800fa8);
  uVar1 = FUN_007bbcd0(uVar1,"image changed: ");
  uVar2 = SnapshotMetadataChange::ImageIsChanged(param_1);
  uVar1 = FUN_007bc07c(uVar1,uVar2);
  uVar1 = FUN_007bbcd0(uVar1,&DAT_00800fa8);
  pgVar3 = (gpg *)FUN_007bbcd0(uVar1,"image: ");
  SnapshotMetadataChange::Image();
  uVar1 = operator<<(pgVar3,(ostream *)aCStack_dc,extraout_r2);
  FUN_007bbcd0(uVar1,&DAT_00800fdc);
  SnapshotMetadataChange::CoverImage::~CoverImage(aCStack_dc);
  FUN_007a9920(&local_e0,auStack_c8);
  *(undefined1 **)this = local_e0;
  local_e0 = &DAT_00972528;
  FUN_007c5914(&local_e0);
  FUN_007a95a8(auStack_d4);
  return this;
}

// ---- gpg::operator<<  @ 0x50d928
/* gpg::TEMPNAMEPLACEHOLDERVALUE(std::ostream&, gpg::SnapshotMetadataChange const&) */

undefined4 __thiscall gpg::operator<<(gpg *this,ostream *param_1,SnapshotMetadataChange *param_2)

{
  undefined4 uVar1;
  ostream *poStack_14;
  SnapshotMetadataChange *pSStack_10;
  
  poStack_14 = param_1;
  pSStack_10 = param_2;
  DebugString((gpg *)&poStack_14,(SnapshotMetadataChange *)param_1);
  uVar1 = FUN_007af9cc(this,(gpg *)&poStack_14);
  FUN_007c5914((gpg *)&poStack_14);
  return uVar1;
}

// ---- gpg::DebugString  @ 0x50d954
/* gpg::DebugString(gpg::RealTimeRoom) */

gpg * __thiscall gpg::DebugString(gpg *this,RealTimeRoom *param_2)

{
  undefined4 uVar1;
  undefined4 uVar2;
  gpg *pgVar3;
  undefined4 extraout_r1;
  undefined4 extraout_r1_00;
  MultiplayerParticipant *extraout_r2;
  undefined4 local_f8;
  undefined4 uStack_f4;
  undefined1 auStack_ec [4];
  undefined1 *local_e8;
  MultiplayerParticipant aMStack_e4 [8];
  undefined1 auStack_dc [8];
  undefined1 auStack_d4 [4];
  undefined1 auStack_d0 [176];
  
  FUN_007aaa70(auStack_dc,0x18);
  uVar1 = FUN_007bbcd0(auStack_d4,"(id: ");
  uVar2 = RealTimeRoom::Id(param_2);
  uVar1 = FUN_007af9cc(uVar1,uVar2);
  uVar1 = FUN_007bbcd0(uVar1,&DAT_00800fa8);
  pgVar3 = (gpg *)FUN_007bbcd0(uVar1,"creation time: ");
  RealTimeRoom::CreationTime();
  uVar1 = operator<<(pgVar3,extraout_r1,local_f8,uStack_f4);
  uVar1 = FUN_007bbcd0(uVar1,&DAT_00800fa8);
  pgVar3 = (gpg *)FUN_007bbcd0(uVar1,"creating participant: ");
  RealTimeRoom::CreatingParticipant();
  uVar1 = operator<<(pgVar3,(ostream *)aMStack_e4,extraout_r2);
  uVar1 = FUN_007bbcd0(uVar1,&DAT_00800fa8);
  pgVar3 = (gpg *)FUN_007bbcd0(uVar1,"status: ");
  uVar1 = RealTimeRoom::Status(param_2);
  uVar1 = operator<<(pgVar3,uVar1);
  uVar1 = FUN_007bbcd0(uVar1,&DAT_00800fa8);
  uVar1 = FUN_007bbcd0(uVar1,"description: ");
  RealTimeRoom::Description();
  uVar1 = FUN_007af9cc(uVar1,auStack_ec);
  uVar1 = FUN_007bbcd0(uVar1,&DAT_00800fa8);
  uVar1 = FUN_007bbcd0(uVar1,"free automatching slots: ");
  uVar2 = RealTimeRoom::RemainingAutomatchingSlots(param_2);
  uVar1 = FUN_007bbf08(uVar1,uVar2);
  uVar1 = FUN_007bbcd0(uVar1,&DAT_00800fa8);
  uVar1 = FUN_007bbcd0(uVar1,"variant: ");
  uVar2 = RealTimeRoom::Variant(param_2);
  uVar1 = FUN_007bbf08(uVar1,uVar2);
  uVar1 = FUN_007bbcd0(uVar1,&DAT_00800fa8);
  pgVar3 = (gpg *)FUN_007bbcd0(uVar1,"automatch wait estimate: ");
  RealTimeRoom::AutomatchWaitEstimate();
  uVar1 = operator<<(pgVar3,extraout_r1_00,local_f8,uStack_f4);
  FUN_007bbcd0(uVar1,&DAT_00800fdc);
  FUN_007c5914(auStack_ec);
  MultiplayerParticipant::~MultiplayerParticipant(aMStack_e4);
  FUN_007a9920(&local_e8,auStack_d0);
  *(undefined1 **)this = local_e8;
  local_e8 = &DAT_00972528;
  FUN_007c5914(&local_e8);
  FUN_007a95a8(auStack_dc);
  return this;
}

// ---- gpg::operator<<  @ 0x50db18
/* gpg::TEMPNAMEPLACEHOLDERVALUE(std::ostream&, gpg::RealTimeRoom) */

undefined4
gpg::operator<<(undefined4 param_1,RealTimeRoom *param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  RealTimeRoom *pRStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  
  pRStack_1c = param_2;
  uStack_18 = param_3;
  uStack_14 = param_4;
  RealTimeRoom::RealTimeRoom((RealTimeRoom *)&uStack_18,param_2);
  DebugString((gpg *)&pRStack_1c,(RealTimeRoom *)&uStack_18);
  uVar1 = FUN_007af9cc(param_1,(gpg *)&pRStack_1c);
  FUN_007c5914((gpg *)&pRStack_1c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&uStack_14);
  return uVar1;
}

// ---- gpg::DEFAULT_ON_AUTH_ACTION_STARTED  @ 0x50dbd8
/* gpg::DEFAULT_ON_AUTH_ACTION_STARTED(gpg::AuthOperation) */

void gpg::DEFAULT_ON_AUTH_ACTION_STARTED
               (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 local_c;
  
  local_c = param_2;
  DebugString(&local_c,param_1,param_3,param_4,param_1);
  FUN_005166ae(2,"Auth operation started: %s",local_c);
  FUN_007c5914(&local_c);
  return;
}

// ---- gpg::DEFAULT_ON_AUTH_ACTION_FINISHED  @ 0x50dc08
/* gpg::DEFAULT_ON_AUTH_ACTION_FINISHED(gpg::AuthOperation, gpg::AuthStatus) */

void __thiscall
gpg::DEFAULT_ON_AUTH_ACTION_FINISHED(gpg *this,undefined4 param_2,undefined4 param_3)

{
  gpg *pgVar1;
  gpg *local_20;
  undefined4 local_1c;
  undefined4 uStack_18;
  
  local_20 = this;
  local_1c = param_2;
  uStack_18 = param_3;
  DebugString(&local_20,this);
  pgVar1 = local_20;
  DebugString(&local_1c,param_2);
  FUN_005166ae(2,"Auth operation %s finished with status %s",pgVar1,local_1c);
  FUN_007c5914(&local_1c);
  FUN_007c5914(&local_20);
  return;
}

// ---- gpg::DEFAULT_ON_OOB_ERROR_DETECTED  @ 0x50dc58
/* gpg::DEFAULT_ON_OOB_ERROR_DETECTED(gpg::OobError) */

void gpg::DEFAULT_ON_OOB_ERROR_DETECTED(void)

{
  FUN_005166ae(4,"Out of box error detected; the user must reauthenticate through the UIflow.");
  return;
}

// ---- gpg::DEFAULT_ON_ACHIEVEMENT_UNLOCKED  @ 0x50dc68
/* gpg::DEFAULT_ON_ACHIEVEMENT_UNLOCKED(std::string const&) */

void gpg::DEFAULT_ON_ACHIEVEMENT_UNLOCKED(string *param_1)

{
  FUN_005166ae(2,"Achievement with id: %s was just unlocked",*(undefined4 *)param_1);
  return;
}

// ---- gpg::DEFAULT_ON_PLAYER_LEVEL_UP  @ 0x50dc7c
/* gpg::DEFAULT_ON_PLAYER_LEVEL_UP(gpg::Player) */

void __thiscall gpg::DEFAULT_ON_PLAYER_LEVEL_UP(gpg *this,undefined4 param_2)

{
  undefined4 extraout_r3;
  undefined4 local_c;
  
  local_c = param_2;
  DebugString((gpg *)&local_c,this);
  FUN_005166ae(2,"Currently logged-in player just leveled up from: %s",local_c,extraout_r3,this);
  FUN_007c5914((gpg *)&local_c);
  return;
}

// ---- gpg::DEFAULT_ON_MULTIPLAYER_INVITATION_RECEIVED  @ 0x50dcac
/* gpg::DEFAULT_ON_MULTIPLAYER_INVITATION_RECEIVED(gpg::MultiplayerEvent, std::string,
   gpg::MultiplayerInvitation) */

void __thiscall
gpg::DEFAULT_ON_MULTIPLAYER_INVITATION_RECEIVED
          (undefined4 param_1,undefined4 param_2,MultiplayerInvitation *param_3,undefined4 param_4)

{
  undefined4 *puVar1;
  
  puVar1 = (undefined4 *)MultiplayerInvitation::Id(param_3);
  FUN_005166ae(2,"Received MultiplayerInvitation with id %s.",*puVar1,param_4);
  return;
}

// ---- gpg::DEFAULT_ON_TURN_BASED_MULTIPLAYER_EVENT  @ 0x50dccc
/* gpg::DEFAULT_ON_TURN_BASED_MULTIPLAYER_EVENT(gpg::MultiplayerEvent, std::string,
   gpg::TurnBasedMatch) */

void __thiscall
gpg::DEFAULT_ON_TURN_BASED_MULTIPLAYER_EVENT
          (undefined4 param_1,undefined4 param_2,TurnBasedMatch *param_3,undefined4 param_4)

{
  undefined4 *puVar1;
  
  puVar1 = (undefined4 *)TurnBasedMatch::Id(param_3);
  FUN_005166ae(2,"Received TurnBasedMatch with id %s.",*puVar1,param_4);
  return;
}

// ---- gpg::DEFAULT_ON_QUEST_COMPLETED  @ 0x50dcec
/* gpg::DEFAULT_ON_QUEST_COMPLETED(gpg::Quest) */

void gpg::DEFAULT_ON_QUEST_COMPLETED
               (Quest *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 *puVar1;
  
  puVar1 = (undefined4 *)Quest::Id(param_1);
  FUN_005166ae(2,"Completed Quest with id %s.",*puVar1,param_4);
  return;
}

// ---- gpg::DEFAULT_CALLBACK_ENQUEUER  @ 0x50e284
/* gpg::DEFAULT_CALLBACK_ENQUEUER(std::function<void ()>) */

void gpg::DEFAULT_CALLBACK_ENQUEUER(_Any_data *param_1)

{
  _Any_data *p_Var1;
  uint uVar2;
  int iVar3;
  undefined4 uVar4;
  uint uVar5;
  thread atStack_5c [4];
  undefined1 auStack_58 [32];
  uint local_38;
  uint local_34;
  uint local_30;
  uint local_2c;
  uint local_28;
  uint local_24;
  uint local_20;
  uint local_1c;
  uint local_18;
  uint local_14;
  
  uVar5 = DAT_00960b48 & 1;
  if ((uVar5 == 0) && (iVar3 = __cxa_guard_acquire(), iVar3 != 0)) {
    local_38 = uVar5;
    local_34 = uVar5;
    local_30 = uVar5;
    local_2c = uVar5;
    local_28 = uVar5;
    local_24 = uVar5;
    local_20 = uVar5;
    local_1c = uVar5;
    local_18 = uVar5;
    local_14 = uVar5;
    std::_Deque_base<std::function<void()>,std::allocator<std::function<void()>>>::_M_initialize_map
              ((_Deque_base<std::function<void()>,std::allocator<std::function<void()>>> *)&local_38
               ,0);
    DAT_00960b4c = 0;
    DAT_00960b50 = 0;
    DAT_00960b54 = 0;
    DAT_00960b58 = 0;
    DAT_00960b5c = 0;
    DAT_00960b60 = 0;
    DAT_00960b64 = (_Any_data *)0x0;
    DAT_00960b68 = 0;
    DAT_00960b6c = 0;
    DAT_00960b70 = 0;
    std::_Deque_base<std::function<void()>,std::allocator<std::function<void()>>>::_M_initialize_map
              ((_Deque_base<std::function<void()>,std::allocator<std::function<void()>>> *)
               &DAT_00960b4c,0);
    if (local_38 != 0) {
      std::
      swap<std::_Deque_iterator<std::function<void()>,std::function<void()>&,std::function<void()>*>>
                ((_Deque_iterator *)&DAT_00960b54,(_Deque_iterator *)&local_30);
      std::
      swap<std::_Deque_iterator<std::function<void()>,std::function<void()>&,std::function<void()>*>>
                ((_Deque_iterator *)&DAT_00960b64,(_Deque_iterator *)&local_20);
      uVar2 = local_34;
      uVar5 = local_38;
      local_38 = DAT_00960b4c;
      DAT_00960b4c = uVar5;
      local_34 = DAT_00960b50;
      DAT_00960b50 = uVar2;
    }
    __cxa_guard_release(&DAT_00960b48);
    FUN_007985bc(&DAT_00960b4c,0x50e151,&DAT_00943000);
    std::deque<std::function<void()>,std::allocator<std::function<void()>>>::~deque
              ((deque<std::function<void()>,std::allocator<std::function<void()>>> *)&local_38);
  }
  if ((-1 < DAT_00960b40 << 0x1f) && (iVar3 = __cxa_guard_acquire(&DAT_00960b40), iVar3 != 0)) {
    FUN_007be0ac(&DAT_00960b74);
    __cxa_guard_release(&DAT_00960b40);
    FUN_007985bc(&DAT_00960b74,&LAB_0050dba0_1,&DAT_00943000);
  }
  std::mutex::lock((mutex *)&DAT_00960b44);
  p_Var1 = DAT_00960b64;
  if (DAT_00960b64 == (_Any_data *)(DAT_00960b6c + -0x10)) {
    std::deque<std::function<void()>,std::allocator<std::function<void()>>>::
    _M_push_back_aux<std::function<void()>>
              ((deque<std::function<void()>,std::allocator<std::function<void()>>> *)&DAT_00960b4c,
               (function *)param_1);
  }
  else {
    if (DAT_00960b64 != (_Any_data *)0x0) {
      *(undefined4 *)(DAT_00960b64 + 8) = 0;
      std::swap<std::_Any_data>(param_1,p_Var1);
      uVar4 = *(undefined4 *)(param_1 + 8);
      *(undefined4 *)(param_1 + 8) = *(undefined4 *)(p_Var1 + 8);
      *(undefined4 *)(p_Var1 + 8) = uVar4;
      uVar4 = *(undefined4 *)(param_1 + 0xc);
      *(undefined4 *)(param_1 + 0xc) = *(undefined4 *)(p_Var1 + 0xc);
      *(undefined4 *)(p_Var1 + 0xc) = uVar4;
    }
    DAT_00960b64 = DAT_00960b64 + 0x10;
  }
  FUN_007be0d0(&DAT_00960b74);
  if (DAT_00960b3c == '\0') {
    DAT_00960b3c = '\x01';
    FUN_005165bc(auStack_58);
    FUN_0050a822(&local_38,auStack_58);
    FUN_0050df70(atStack_5c,&local_38);
    FUN_007bfda0(atStack_5c);
    std::thread::~thread(atStack_5c);
    FUN_0050811a(&local_38);
    FUN_0050811a(auStack_58);
  }
  pthread_mutex_unlock((pthread_mutex_t *)&DAT_00960b44);
  return;
}

// ---- gpg::EndpointDiscoveryListenerHelper::EndpointDiscoveryListenerHelper  @ 0x50e4d8
/* gpg::EndpointDiscoveryListenerHelper::EndpointDiscoveryListenerHelper(std::shared_ptr<gpg::EndpointDiscoveryListenerHelperImpl>)
    */

void __thiscall
gpg::EndpointDiscoveryListenerHelper::EndpointDiscoveryListenerHelper
          (EndpointDiscoveryListenerHelper *this,undefined4 *param_2)

{
  bool bVar1;
  int iVar2;
  int *piVar3;
  
  *(undefined4 *)this = *param_2;
  iVar2 = param_2[1];
  *(int *)(this + 4) = iVar2;
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

// ---- gpg::EndpointDiscoveryListenerHelper::SetOnEndpointLostCallback  @ 0x50e4fc
/* gpg::EndpointDiscoveryListenerHelper::SetOnEndpointLostCallback(std::function<void (long long,
   std::string const&)>) */

EndpointDiscoveryListenerHelper * __thiscall
gpg::EndpointDiscoveryListenerHelper::SetOnEndpointLostCallback
          (EndpointDiscoveryListenerHelper *this,_Any_data *param_2)

{
  undefined4 uVar1;
  undefined4 uVar2;
  int iVar3;
  _Any_data a_Stack_28 [8];
  undefined4 local_20;
  undefined4 local_1c;
  
  iVar3 = *(int *)this;
  local_20 = 0;
  std::swap<std::_Any_data>(param_2,a_Stack_28);
  uVar1 = *(undefined4 *)(param_2 + 8);
  *(undefined4 *)(param_2 + 8) = local_20;
  uVar2 = *(undefined4 *)(param_2 + 0xc);
  *(undefined4 *)(param_2 + 0xc) = local_1c;
  local_20 = uVar1;
  local_1c = uVar2;
  std::swap<std::_Any_data>(a_Stack_28,(_Any_data *)(iVar3 + 0x10));
  uVar1 = *(undefined4 *)(iVar3 + 0x18);
  *(undefined4 *)(iVar3 + 0x18) = local_20;
  uVar2 = *(undefined4 *)(iVar3 + 0x1c);
  *(undefined4 *)(iVar3 + 0x1c) = local_1c;
  local_20 = uVar1;
  local_1c = uVar2;
  std::_Function_base::~_Function_base((_Function_base *)a_Stack_28);
  return this;
}

// ---- gpg::EndpointDiscoveryListenerHelper::SetOnEndpointFoundCallback  @ 0x50e548
/* gpg::EndpointDiscoveryListenerHelper::SetOnEndpointFoundCallback(std::function<void (long long,
   gpg::EndpointDetails const&)>) */

EndpointDiscoveryListenerHelper * __thiscall
gpg::EndpointDiscoveryListenerHelper::SetOnEndpointFoundCallback
          (EndpointDiscoveryListenerHelper *this,_Any_data *param_2)

{
  undefined4 uVar1;
  undefined4 uVar2;
  _Any_data *p_Var3;
  _Any_data a_Stack_28 [8];
  undefined4 local_20;
  undefined4 local_1c;
  
  p_Var3 = *(_Any_data **)this;
  local_20 = 0;
  std::swap<std::_Any_data>(param_2,a_Stack_28);
  uVar1 = *(undefined4 *)(param_2 + 8);
  *(undefined4 *)(param_2 + 8) = local_20;
  uVar2 = *(undefined4 *)(param_2 + 0xc);
  *(undefined4 *)(param_2 + 0xc) = local_1c;
  local_20 = uVar1;
  local_1c = uVar2;
  std::swap<std::_Any_data>(a_Stack_28,p_Var3);
  uVar1 = *(undefined4 *)(p_Var3 + 8);
  *(undefined4 *)(p_Var3 + 8) = local_20;
  uVar2 = *(undefined4 *)(p_Var3 + 0xc);
  *(undefined4 *)(p_Var3 + 0xc) = local_1c;
  local_20 = uVar1;
  local_1c = uVar2;
  std::_Function_base::~_Function_base((_Function_base *)a_Stack_28);
  return this;
}

// ---- gpg::EndpointDiscoveryListenerHelper::EndpointDiscoveryListenerHelper  @ 0x50e614
/* gpg::EndpointDiscoveryListenerHelper::EndpointDiscoveryListenerHelper() */

EndpointDiscoveryListenerHelper * __thiscall
gpg::EndpointDiscoveryListenerHelper::EndpointDiscoveryListenerHelper
          (EndpointDiscoveryListenerHelper *this)

{
  undefined4 in_r3;
  undefined1 auStack_c [4];
  
  FUN_0050e594(this,0,auStack_c,in_r3,this);
  return this;
}

// ---- gpg::Event::Event  @ 0x50e628
/* gpg::Event::Event(std::shared_ptr<gpg::EventImpl const>) */

void __thiscall gpg::Event::Event(Event *this,undefined4 *param_2)

{
  bool bVar1;
  int iVar2;
  int *piVar3;
  
  *(undefined4 *)this = *param_2;
  iVar2 = param_2[1];
  *(int *)(this + 4) = iVar2;
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

// ---- gpg::Event::Event  @ 0x50e64c
/* gpg::Event::Event(gpg::Event const&) */

void __thiscall gpg::Event::Event(Event *this,Event *param_1)

{
  bool bVar1;
  int iVar2;
  int *piVar3;
  
  *(undefined4 *)this = *(undefined4 *)param_1;
  iVar2 = *(int *)(param_1 + 4);
  *(int *)(this + 4) = iVar2;
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

// ---- gpg::Event::Event  @ 0x50e670
/* gpg::Event::Event(gpg::Event&&) */

void __thiscall gpg::Event::Event(Event *this,Event *param_1)

{
  undefined4 uVar1;
  
  *(undefined4 *)this = *(undefined4 *)param_1;
  *(undefined4 *)(this + 4) = 0;
  uVar1 = *(undefined4 *)(param_1 + 4);
  *(undefined4 *)(param_1 + 4) = 0;
  *(undefined4 *)(this + 4) = uVar1;
  *(undefined4 *)param_1 = 0;
  return;
}

// ---- gpg::Event::Valid  @ 0x50e684
/* gpg::Event::Valid() const */

bool __thiscall gpg::Event::Valid(Event *this)

{
  return *(int *)this != 0;
}

// ---- gpg::Event::Id  @ 0x50e690
/* gpg::Event::Id() const */

undefined4 * __thiscall gpg::Event::Id(Event *this)

{
  int iVar1;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get id of an invalid Event");
    return &DAT_00960b7c;
  }
  return *(undefined4 **)(*(int *)this + 4);
}

// ---- gpg::Event::Name  @ 0x50e6bc
/* gpg::Event::Name() const */

undefined4 * __thiscall gpg::Event::Name(Event *this)

{
  int iVar1;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get name of an invalid Event");
    return &DAT_00960b7c;
  }
  return *(undefined4 **)(*(int *)this + 8);
}

// ---- gpg::Event::Description  @ 0x50e6e8
/* gpg::Event::Description() const */

undefined4 * __thiscall gpg::Event::Description(Event *this)

{
  int iVar1;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get description of an invalid Event");
    return &DAT_00960b7c;
  }
  return *(undefined4 **)(*(int *)this + 0xc);
}

// ---- gpg::Event::Visibility  @ 0x50e714
/* gpg::Event::Visibility() const */

undefined4 __thiscall gpg::Event::Visibility(Event *this)

{
  int iVar1;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get state of an invalid Event");
    return 1;
  }
  return *(undefined4 *)(*(int *)this + 0x1c);
}

// ---- gpg::Event::Count  @ 0x50e738
/* gpg::Event::Count() const */

undefined8 __thiscall gpg::Event::Count(Event *this)

{
  int iVar1;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get current steps of an invalid Event");
    return 0;
  }
  return *(undefined8 *)(*(int *)this + 0x10);
}

// ---- gpg::Event::ImageUrl  @ 0x50e760
/* gpg::Event::ImageUrl() const */

undefined4 * __thiscall gpg::Event::ImageUrl(Event *this)

{
  int iVar1;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get icon URL of an invalid Event");
    return &DAT_00960b7c;
  }
  return *(undefined4 **)(*(int *)this + 0x18);
}

// ---- gpg::Event::~Event  @ 0x50e78c
/* gpg::Event::~Event() */

Event * __thiscall gpg::Event::~Event(Event *this)

{
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(this + 4));
  return this;
}

// ---- gpg::Event::Event  @ 0x50e79a
/* gpg::Event::Event() */

Event * __thiscall gpg::Event::Event(Event *this)

{
  undefined4 local_c;
  
  *(undefined4 *)this = 0;
  *(undefined4 *)(this + 4) = 0;
  local_c = 0;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_c);
  return this;
}

// ---- gpg::Event::operator=  @ 0x50e7b4
/* gpg::Event::TEMPNAMEPLACEHOLDERVALUE(gpg::Event&&) */

Event * __thiscall gpg::Event::operator=(Event *this,Event *param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 local_c;
  
  uVar1 = *(undefined4 *)param_1;
  uVar2 = *(undefined4 *)(param_1 + 4);
  *(undefined4 *)(param_1 + 4) = 0;
  *(undefined4 *)param_1 = 0;
  *(undefined4 *)this = uVar1;
  local_c = *(undefined4 *)(this + 4);
  *(undefined4 *)(this + 4) = uVar2;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_c);
  return this;
}

// ---- gpg::Event::operator=  @ 0x50e7da
/* gpg::Event::TEMPNAMEPLACEHOLDERVALUE(gpg::Event const&) */

Event * __thiscall gpg::Event::operator=(Event *this,Event *param_1)

{
  bool bVar1;
  int *piVar2;
  int iVar3;
  
  *(undefined4 *)this = *(undefined4 *)param_1;
  iVar3 = *(int *)(param_1 + 4);
  if (iVar3 != *(int *)(this + 4)) {
    if (iVar3 != 0) {
      piVar2 = (int *)(iVar3 + 4);
      DataMemoryBarrier(0x1f);
      do {
        ExclusiveAccess(piVar2);
        bVar1 = (bool)hasExclusiveAccess(piVar2);
      } while (!bVar1);
      *piVar2 = *piVar2 + 1;
      DataMemoryBarrier(0x1f);
    }
    if (*(int *)(this + 4) != 0) {
      FUN_0033ce90();
    }
    *(int *)(this + 4) = iVar3;
  }
  return this;
}

// ---- gpg::EventManager::EventManager  @ 0x50e8b8
/* gpg::EventManager::EventManager(gpg::GameServicesImpl*) */

void __thiscall gpg::EventManager::EventManager(EventManager *this,GameServicesImpl *param_1)

{
  *(GameServicesImpl **)this = param_1;
  return;
}

// ---- gpg::EventManager::~EventManager  @ 0x50e8bc
/* gpg::EventManager::~EventManager() */

EventManager * __thiscall gpg::EventManager::~EventManager(EventManager *this)

{
  return this;
}

// ---- gpg::EventManager::FetchAllResponse::FetchAllResponse  @ 0x50e8d2
/* gpg::EventManager::FetchAllResponse::FetchAllResponse(gpg::EventManager::FetchAllResponse&&) */

FetchAllResponse * __thiscall
gpg::EventManager::FetchAllResponse::FetchAllResponse
          (FetchAllResponse *this,FetchAllResponse *param_1)

{
  FetchAllResponse *pFVar1;
  int iVar2;
  
  *(undefined4 *)this = *(undefined4 *)param_1;
  memset(this + 8,0,0x10);
  pFVar1 = this + 8;
  *(FetchAllResponse **)(this + 0x10) = pFVar1;
  *(undefined4 *)(this + 0x18) = 0;
  *(FetchAllResponse **)(this + 0x14) = pFVar1;
  iVar2 = *(int *)(param_1 + 0xc);
  if (iVar2 != 0) {
    *(int *)(this + 0xc) = iVar2;
    *(undefined4 *)(this + 0x10) = *(undefined4 *)(param_1 + 0x10);
    *(undefined4 *)(this + 0x14) = *(undefined4 *)(param_1 + 0x14);
    *(FetchAllResponse **)(iVar2 + 4) = pFVar1;
    *(FetchAllResponse **)(param_1 + 0x10) = param_1 + 8;
    *(FetchAllResponse **)(param_1 + 0x14) = param_1 + 8;
    *(undefined4 *)(param_1 + 0xc) = 0;
    *(undefined4 *)(this + 0x18) = *(undefined4 *)(param_1 + 0x18);
    *(undefined4 *)(param_1 + 0x18) = 0;
  }
  return this;
}

// ---- gpg::EventManager::FetchResponse::FetchResponse  @ 0x50e94e
/* gpg::EventManager::FetchResponse::FetchResponse(gpg::EventManager::FetchResponse&&) */

FetchResponse * __thiscall
gpg::EventManager::FetchResponse::FetchResponse(FetchResponse *this,FetchResponse *param_1)

{
  *(undefined4 *)this = *(undefined4 *)param_1;
  Event::Event((Event *)(this + 4),(Event *)(param_1 + 4));
  return this;
}

// ---- gpg::EventManager::Increment  @ 0x50e986
/* gpg::EventManager::Increment(std::string const&, unsigned int) */

void __thiscall gpg::EventManager::Increment(EventManager *this,string *param_1,uint param_2)

{
  undefined1 auStack_3c [4];
  undefined1 auStack_38 [32];
  
  FUN_00510a86(auStack_38,*(undefined4 *)this);
  FUN_0051683e(auStack_3c,auStack_38);
  FUN_0050811a(auStack_38);
  (**(code **)(**(int **)this + 0x44))(*(int **)this,param_1,param_2,0);
  FUN_00516580(auStack_3c);
  return;
}

// ---- gpg::EventManager::Increment  @ 0x50e9d8
/* gpg::EventManager::Increment(std::string const&) */

void __thiscall gpg::EventManager::Increment(EventManager *this,string *param_1)

{
  Increment(this,param_1,1);
  return;
}

// ---- gpg::EventManager::Fetch  @ 0x50ee70
/* gpg::EventManager::Fetch(gpg::DataSource, std::string const&, std::function<void
   (gpg::EventManager::FetchResponse const&)>) */

void __thiscall
gpg::EventManager::Fetch(EventManager *this,undefined4 param_2,undefined4 param_3,function *param_4)

{
  undefined4 uVar1;
  function *pfVar2;
  int iVar3;
  int *piVar4;
  code *pcVar5;
  undefined1 auStack_b8 [4];
  undefined4 local_b4;
  Event aEStack_b0 [8];
  function<void(gpg::EventManager::FetchResponse_const&)> afStack_a8 [8];
  int local_a0;
  undefined4 local_9c;
  _Function_base a_Stack_98 [8];
  int local_90;
  undefined4 local_8c;
  function afStack_88 [8];
  undefined4 local_80;
  function<void(gpg::EventManager::FetchResponse_const&)> afStack_78 [16];
  function<void(std::function<void()>)> afStack_68 [16];
  function<void(gpg::EventManager::FetchResponse_const&)> afStack_58 [16];
  function<void(std::function<void()>)> afStack_48 [8];
  int local_40;
  function<void(gpg::EventManager::FetchResponse_const&)> afStack_38 [20];
  
  FUN_00510a86(afStack_48,*(undefined4 *)this);
  FUN_0051683e(auStack_b8,afStack_48);
  FUN_0050811a(afStack_48);
  pfVar2 = (function *)FUN_0051075c(*(undefined4 *)this);
  std::function<void(gpg::EventManager::FetchResponse_const&)>::function(afStack_a8,param_4);
  if (local_a0 == 0) {
    local_90 = local_a0;
    local_40 = local_a0;
  }
  else {
    local_90 = 0;
    std::swap<std::_Any_data>((_Any_data *)afStack_a8,(_Any_data *)a_Stack_98);
    uVar1 = local_8c;
    iVar3 = local_90;
    local_90 = local_a0;
    local_a0 = iVar3;
    local_8c = local_9c;
    local_9c = uVar1;
    std::function<void(std::function<void()>)>::function(afStack_48,pfVar2);
  }
  std::function<void(gpg::EventManager::FetchResponse_const&)>::function
            (afStack_38,(function *)a_Stack_98);
  local_80 = 0;
  std::function<void(std::function<void()>)>::swap(afStack_48,afStack_88);
  std::function<void(gpg::EventManager::FetchResponse_const&)>::function
            (afStack_78,(function *)afStack_38);
  FUN_0050e93a(afStack_48);
  std::_Function_base::~_Function_base(a_Stack_98);
  std::_Function_base::~_Function_base((_Function_base *)afStack_a8);
  piVar4 = *(int **)this;
  pcVar5 = *(code **)(*piVar4 + 0x40);
  std::function<void(std::function<void()>)>::function(afStack_68,afStack_88);
  std::function<void(gpg::EventManager::FetchResponse_const&)>::function
            (afStack_58,(function *)afStack_78);
  iVar3 = (*pcVar5)(piVar4,param_2,param_3,afStack_68);
  FUN_0050e93a(afStack_68);
  if (iVar3 == 0) {
    local_b4 = 0xfffffffd;
    Event::Event(aEStack_b0);
    FUN_0050edac(afStack_88,&local_b4);
    Event::~Event(aEStack_b0);
  }
  FUN_0050e93a(afStack_88);
  FUN_00516580(auStack_b8);
  return;
}

// ---- gpg::EventManager::Fetch  @ 0x50efc0
/* gpg::EventManager::Fetch(std::string const&, std::function<void (gpg::EventManager::FetchResponse
   const&)>) */

void gpg::EventManager::Fetch
               (EventManager *param_1,undefined4 param_2,function *param_3,undefined4 param_4)

{
  EventManager *pEStack_20;
  undefined4 uStack_1c;
  function *pfStack_18;
  undefined4 uStack_14;
  
  pEStack_20 = param_1;
  uStack_1c = param_2;
  pfStack_18 = param_3;
  uStack_14 = param_4;
  std::function<void(gpg::EventManager::FetchResponse_const&)>::function
            ((function<void(gpg::EventManager::FetchResponse_const&)> *)&pEStack_20,param_3);
  Fetch(param_1,1,param_2,(function<void(gpg::EventManager::FetchResponse_const&)> *)&pEStack_20);
  std::_Function_base::~_Function_base((_Function_base *)&pEStack_20);
  return;
}

// ---- gpg::EventManager::FetchAllBlocking  @ 0x50f158
/* gpg::EventManager::FetchAllBlocking(gpg::DataSource, std::chrono::duration<long long,
   std::ratio<1ll, 1000ll> >) */

FetchAllResponse *
gpg::EventManager::FetchAllBlocking
          (FetchAllResponse *param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4,
          uint param_5,int param_6)

{
  longlong lVar1;
  int iVar2;
  _Rb_tree<std::string,std::pair<std::string_const,gpg::Event>,std::_Select1st<std::pair<std::string_const,gpg::Event>>,std::less<std::string>,std::allocator<std::pair<std::string_const,gpg::Event>>>
  *this;
  FetchAllResponse *pFVar3;
  unique_lock *puVar4;
  int *piVar5;
  code *pcVar6;
  undefined4 local_c0;
  int iStack_bc;
  undefined1 auStack_b8 [4];
  undefined1 auStack_b4 [4];
  undefined4 local_b0;
  int iStack_ac;
  mutex *local_a4;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_a0 [4];
  mutex *local_9c;
  _Rb_tree<std::string,std::pair<std::string_const,gpg::Event>,std::_Select1st<std::pair<std::string_const,gpg::Event>>,std::less<std::string>,std::allocator<std::pair<std::string_const,gpg::Event>>>
  local_98 [24];
  undefined4 local_80;
  _Rb_tree_impl<std::less<std::string>,true> a_Stack_7c [24];
  undefined4 local_64;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_60 [24];
  undefined4 local_48;
  _Rb_tree_impl<std::less<std::string>,true> a_Stack_44 [32];
  
  FUN_00510a86((FetchAllResponse *)&local_48,*param_2);
  FUN_0051683e(auStack_b8,(FetchAllResponse *)&local_48);
  FUN_0050811a((FetchAllResponse *)&local_48);
  FUN_0050eff8(&local_a4,0,auStack_b4);
  piVar5 = (int *)*param_2;
  pFVar3 = (FetchAllResponse *)&local_64;
  pcVar6 = *(code **)(*piVar5 + 0x3c);
  FUN_0050e916(pFVar3,&local_a4);
  FUN_0050ebf0((FetchAllResponse *)&local_48,pFVar3);
  iVar2 = (*pcVar6)(piVar5,param_3,(FetchAllResponse *)&local_48);
  FUN_0050e8be((FetchAllResponse *)&local_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_60);
  if (iVar2 == 0) {
    this = (_Rb_tree<std::string,std::pair<std::string_const,gpg::Event>,std::_Select1st<std::pair<std::string_const,gpg::Event>>,std::less<std::string>,std::allocator<std::pair<std::string_const,gpg::Event>>>
            *)a_Stack_44;
    local_48 = 0xfffffffd;
    std::
    _Rb_tree<std::string,std::pair<std::string_const,gpg::Event>,std::_Select1st<std::pair<std::string_const,gpg::Event>>,std::less<std::string>,std::allocator<std::pair<std::string_const,gpg::Event>>>
    ::_Rb_tree_impl<std::less<std::string>,true>::_Rb_tree_impl
              ((_Rb_tree_impl<std::less<std::string>,true> *)this);
    FetchAllResponse::FetchAllResponse(param_1,(FetchAllResponse *)&local_48);
    goto LAB_0050f2ca;
  }
  std::
  _Rb_tree<std::string,std::pair<std::string_const,gpg::Event>,std::_Select1st<std::pair<std::string_const,gpg::Event>>,std::less<std::string>,std::allocator<std::pair<std::string_const,gpg::Event>>>
  ::_Rb_tree_impl<std::less<std::string>,true>::_Rb_tree_impl(a_Stack_7c);
  std::
  _Rb_tree<std::string,std::pair<std::string_const,gpg::Event>,std::_Select1st<std::pair<std::string_const,gpg::Event>>,std::less<std::string>,std::allocator<std::pair<std::string_const,gpg::Event>>>
  ::_Rb_tree_impl<std::less<std::string>,true>::_Rb_tree_impl
            ((_Rb_tree_impl<std::less<std::string>,true> *)a_Stack_60);
  local_80 = 0xfffffffe;
  local_64 = 0xfffffffb;
  iVar2 = FUN_00553a80();
  if (iVar2 == 0) {
    local_98[0] = (_Rb_tree<std::string,std::pair<std::string_const,gpg::Event>,std::_Select1st<std::pair<std::string_const,gpg::Event>>,std::less<std::string>,std::allocator<std::pair<std::string_const,gpg::Event>>>
                   )0x0;
    local_9c = local_a4;
    if (local_a4 == (mutex *)0x0) {
                    /* WARNING: Subroutine does not return */
      FUN_007c4c60(1);
    }
    std::mutex::lock(local_a4);
    local_98[0] = (_Rb_tree<std::string,std::pair<std::string_const,gpg::Event>,std::_Select1st<std::pair<std::string_const,gpg::Event>>,std::less<std::string>,std::allocator<std::pair<std::string_const,gpg::Event>>>
                   )0x1;
    if (local_a4[8] == (mutex)0x0) {
      puVar4 = (unique_lock *)(local_a4 + 4);
      FUN_007bfd24(&local_c0);
      lVar1 = (ulonglong)param_5 * 1000000 + CONCAT44(param_6 * 1000000,local_c0);
      local_b0 = (undefined4)lVar1;
      iStack_ac = iStack_bc + (int)((ulonglong)lVar1 >> 0x20);
      do {
        if (local_a4[8] != (mutex)0x0) goto LAB_0050f292;
        iVar2 = std::condition_variable::
                __wait_until_impl<std::chrono::duration<long_long,std::ratio<1ll,1000000000ll>>>
                          (puVar4,(time_point *)&local_9c);
      } while (iVar2 != 1);
      if (local_a4[8] != (mutex)0x0) goto LAB_0050f292;
    }
    else {
LAB_0050f292:
      pFVar3 = (FetchAllResponse *)(local_a4 + 0xc);
    }
    FetchAllResponse::FetchAllResponse((FetchAllResponse *)&local_48,pFVar3);
    std::unique_lock<std::mutex>::~unique_lock((unique_lock<std::mutex> *)&local_9c);
  }
  else {
    FUN_005166ae(4,"Blocking calls are not allowed from the UI thread.");
    FetchAllResponse::FetchAllResponse((FetchAllResponse *)&local_48,(FetchAllResponse *)&local_80);
  }
  FetchAllResponse::FetchAllResponse((FetchAllResponse *)&local_9c,(FetchAllResponse *)&local_48);
  std::
  _Rb_tree<std::string,std::pair<std::string_const,gpg::Event>,std::_Select1st<std::pair<std::string_const,gpg::Event>>,std::less<std::string>,std::allocator<std::pair<std::string_const,gpg::Event>>>
  ::~_Rb_tree((_Rb_tree<std::string,std::pair<std::string_const,gpg::Event>,std::_Select1st<std::pair<std::string_const,gpg::Event>>,std::less<std::string>,std::allocator<std::pair<std::string_const,gpg::Event>>>
               *)a_Stack_44);
  std::
  _Rb_tree<std::string,std::pair<std::string_const,gpg::Event>,std::_Select1st<std::pair<std::string_const,gpg::Event>>,std::less<std::string>,std::allocator<std::pair<std::string_const,gpg::Event>>>
  ::~_Rb_tree((_Rb_tree<std::string,std::pair<std::string_const,gpg::Event>,std::_Select1st<std::pair<std::string_const,gpg::Event>>,std::less<std::string>,std::allocator<std::pair<std::string_const,gpg::Event>>>
               *)a_Stack_60);
  std::
  _Rb_tree<std::string,std::pair<std::string_const,gpg::Event>,std::_Select1st<std::pair<std::string_const,gpg::Event>>,std::less<std::string>,std::allocator<std::pair<std::string_const,gpg::Event>>>
  ::~_Rb_tree((_Rb_tree<std::string,std::pair<std::string_const,gpg::Event>,std::_Select1st<std::pair<std::string_const,gpg::Event>>,std::less<std::string>,std::allocator<std::pair<std::string_const,gpg::Event>>>
               *)a_Stack_7c);
  FetchAllResponse::FetchAllResponse(param_1,(FetchAllResponse *)&local_9c);
  this = local_98;
LAB_0050f2ca:
  std::
  _Rb_tree<std::string,std::pair<std::string_const,gpg::Event>,std::_Select1st<std::pair<std::string_const,gpg::Event>>,std::less<std::string>,std::allocator<std::pair<std::string_const,gpg::Event>>>
  ::~_Rb_tree(this);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_a0);
  FUN_00516580(auStack_b8);
  return param_1;
}

// ---- gpg::EventManager::FetchAllBlocking  @ 0x50f330
/* gpg::EventManager::FetchAllBlocking(gpg::DataSource) */

FetchAllResponse * gpg::EventManager::FetchAllBlocking(FetchAllResponse *param_1)

{
  FetchAllResponse aFStack_2c [4];
  _Rb_tree<std::string,std::pair<std::string_const,gpg::Event>,std::_Select1st<std::pair<std::string_const,gpg::Event>>,std::less<std::string>,std::allocator<std::pair<std::string_const,gpg::Event>>>
  a_Stack_28 [24];
  
  FetchAllBlocking(aFStack_2c);
  FetchAllResponse::FetchAllResponse(param_1,aFStack_2c);
  std::
  _Rb_tree<std::string,std::pair<std::string_const,gpg::Event>,std::_Select1st<std::pair<std::string_const,gpg::Event>>,std::less<std::string>,std::allocator<std::pair<std::string_const,gpg::Event>>>
  ::~_Rb_tree(a_Stack_28);
  return param_1;
}

// ---- gpg::EventManager::FetchAllBlocking  @ 0x50f364
/* gpg::EventManager::FetchAllBlocking() */

void gpg::EventManager::FetchAllBlocking(void)

{
  FetchAllResponse *in_r0;
  undefined4 in_r1;
  FetchAllResponse aFStack_2c [4];
  _Rb_tree<std::string,std::pair<std::string_const,gpg::Event>,std::_Select1st<std::pair<std::string_const,gpg::Event>>,std::less<std::string>,std::allocator<std::pair<std::string_const,gpg::Event>>>
  a_Stack_28 [28];
  
  FetchAllBlocking(aFStack_2c,in_r1,1);
  FetchAllResponse::FetchAllResponse(in_r0,aFStack_2c);
  std::
  _Rb_tree<std::string,std::pair<std::string_const,gpg::Event>,std::_Select1st<std::pair<std::string_const,gpg::Event>>,std::less<std::string>,std::allocator<std::pair<std::string_const,gpg::Event>>>
  ::~_Rb_tree(a_Stack_28);
  return;
}

// ---- gpg::EventManager::FetchAllBlocking  @ 0x50f388
/* gpg::EventManager::FetchAllBlocking(std::chrono::duration<long long, std::ratio<1ll, 1000ll> >)
    */

FetchAllResponse *
gpg::EventManager::FetchAllBlocking
          (FetchAllResponse *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  FetchAllResponse aFStack_2c [4];
  _Rb_tree<std::string,std::pair<std::string_const,gpg::Event>,std::_Select1st<std::pair<std::string_const,gpg::Event>>,std::less<std::string>,std::allocator<std::pair<std::string_const,gpg::Event>>>
  a_Stack_28 [28];
  
  FetchAllBlocking(aFStack_2c,param_2,1,param_4,param_3,param_4);
  FetchAllResponse::FetchAllResponse(param_1,aFStack_2c);
  std::
  _Rb_tree<std::string,std::pair<std::string_const,gpg::Event>,std::_Select1st<std::pair<std::string_const,gpg::Event>>,std::less<std::string>,std::allocator<std::pair<std::string_const,gpg::Event>>>
  ::~_Rb_tree(a_Stack_28);
  return param_1;
}

// ---- gpg::EventManager::FetchBlocking  @ 0x50f3b0
/* gpg::EventManager::FetchBlocking(gpg::DataSource, std::chrono::duration<long long,
   std::ratio<1ll, 1000ll> >, std::string const&) */

FetchResponse *
gpg::EventManager::FetchBlocking
          (FetchResponse *param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4,
          uint param_5,int param_6,undefined4 param_7)

{
  longlong lVar1;
  int iVar2;
  FetchResponse *pFVar3;
  unique_lock *puVar4;
  int *piVar5;
  code *pcVar6;
  undefined4 local_b0;
  int iStack_ac;
  undefined1 auStack_a8 [4];
  undefined1 auStack_a4 [4];
  undefined4 local_a0;
  int iStack_9c;
  mutex *local_94;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_90 [4];
  mutex *local_8c;
  undefined1 local_88;
  undefined4 local_84;
  Event aEStack_80 [8];
  FetchResponse aFStack_78 [12];
  undefined4 local_6c;
  Event aEStack_68 [8];
  undefined4 local_60;
  Event aEStack_5c [8];
  FetchResponse aFStack_54 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_50 [8];
  undefined1 auStack_48 [36];
  
  FUN_00510a86(auStack_48,*param_2);
  FUN_0051683e(auStack_a8,auStack_48);
  FUN_0050811a(auStack_48);
  FUN_0050f098(&local_94,0,auStack_a4);
  piVar5 = (int *)*param_2;
  pcVar6 = *(code **)(*piVar5 + 0x40);
  FUN_0050e962(aFStack_54,&local_94);
  FUN_0050ecc0(auStack_48,aFStack_54);
  iVar2 = (*pcVar6)(piVar5,param_3,param_7,auStack_48);
  FUN_0050e93a(auStack_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_50);
  if (iVar2 == 0) {
    pFVar3 = (FetchResponse *)&local_84;
    local_84 = 0xfffffffd;
    Event::Event(aEStack_80);
    FetchResponse::FetchResponse(param_1,pFVar3);
    goto LAB_0050f54a;
  }
  Event::Event(aEStack_68);
  pFVar3 = (FetchResponse *)&local_60;
  Event::Event(aEStack_5c);
  local_6c = 0xfffffffe;
  local_60 = 0xfffffffb;
  iVar2 = FUN_00553a80();
  if (iVar2 == 0) {
    local_88 = 0;
    local_8c = local_94;
    if (local_94 == (mutex *)0x0) {
                    /* WARNING: Subroutine does not return */
      FUN_007c4c60(1);
    }
    std::mutex::lock(local_94);
    local_88 = 1;
    if (local_94[8] == (mutex)0x0) {
      puVar4 = (unique_lock *)(local_94 + 4);
      FUN_007bfd24(&local_b0);
      lVar1 = (ulonglong)param_5 * 1000000 + CONCAT44(param_6 * 1000000,local_b0);
      local_a0 = (undefined4)lVar1;
      iStack_9c = iStack_ac + (int)((ulonglong)lVar1 >> 0x20);
      do {
        if (local_94[8] != (mutex)0x0) goto LAB_0050f4ec;
        iVar2 = std::condition_variable::
                __wait_until_impl<std::chrono::duration<long_long,std::ratio<1ll,1000000000ll>>>
                          (puVar4,(time_point *)&local_8c);
      } while (iVar2 != 1);
      if (local_94[8] != (mutex)0x0) goto LAB_0050f4ec;
    }
    else {
LAB_0050f4ec:
      pFVar3 = (FetchResponse *)(local_94 + 0xc);
    }
    FetchResponse::FetchResponse(aFStack_54,pFVar3);
    std::unique_lock<std::mutex>::~unique_lock((unique_lock<std::mutex> *)&local_8c);
  }
  else {
    FUN_005166ae(4,"Blocking calls are not allowed from the UI thread.");
    FetchResponse::FetchResponse(aFStack_54,(FetchResponse *)&local_6c);
  }
  pFVar3 = aFStack_78;
  FetchResponse::FetchResponse(pFVar3,aFStack_54);
  Event::~Event((Event *)a_Stack_50);
  Event::~Event(aEStack_5c);
  Event::~Event(aEStack_68);
  FetchResponse::FetchResponse(param_1,pFVar3);
LAB_0050f54a:
  Event::~Event((Event *)(pFVar3 + 4));
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_90);
  FUN_00516580(auStack_a8);
  return param_1;
}

// ---- gpg::EventManager::FetchBlocking  @ 0x50f5a8
/* gpg::EventManager::FetchBlocking(gpg::DataSource, std::string const&) */

FetchResponse * gpg::EventManager::FetchBlocking(FetchResponse *param_1)

{
  FetchResponse aFStack_24 [4];
  Event aEStack_20 [12];
  
  FetchBlocking(aFStack_24);
  FetchResponse::FetchResponse(param_1,aFStack_24);
  Event::~Event(aEStack_20);
  return param_1;
}

// ---- gpg::EventManager::FetchBlocking  @ 0x50f5e8
/* gpg::EventManager::FetchBlocking(std::string const&) */

string * gpg::EventManager::FetchBlocking(string *param_1)

{
  undefined4 in_r1;
  FetchResponse aFStack_1c [4];
  Event aEStack_18 [12];
  
  FetchBlocking(aFStack_1c,in_r1,1);
  FetchResponse::FetchResponse((FetchResponse *)param_1,aFStack_1c);
  Event::~Event(aEStack_18);
  return param_1;
}

// ---- gpg::EventManager::FetchBlocking  @ 0x50f618
/* gpg::EventManager::FetchBlocking(std::chrono::duration<long long, std::ratio<1ll, 1000ll> >,
   std::string const&) */

FetchResponse *
gpg::EventManager::FetchBlocking
          (FetchResponse *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
          undefined4 param_5)

{
  FetchResponse aFStack_1c [4];
  Event aEStack_18 [12];
  
  FetchBlocking(aFStack_1c,param_2,1,param_5,param_3,param_4,param_5);
  FetchResponse::FetchResponse(param_1,aFStack_1c);
  Event::~Event(aEStack_18);
  return param_1;
}

// ---- gpg::EventManager::FetchAll  @ 0x50f948
/* gpg::EventManager::FetchAll(gpg::DataSource, std::function<void
   (gpg::EventManager::FetchAllResponse const&)>) */

void __thiscall gpg::EventManager::FetchAll(EventManager *this,undefined4 param_2,function *param_3)

{
  function *pfVar1;
  int iVar2;
  int *piVar3;
  code *pcVar4;
  undefined1 auStack_ac [4];
  function<void(gpg::EventManager::FetchAllResponse_const&)> afStack_a8 [8];
  int local_a0;
  function<void(gpg::EventManager::FetchAllResponse_const&)> afStack_98 [8];
  int local_90;
  function afStack_88 [8];
  undefined4 local_80;
  function afStack_78 [8];
  undefined4 local_70;
  function<void(std::function<void()>)> afStack_68 [16];
  function<void(gpg::EventManager::FetchAllResponse_const&)> afStack_58 [16];
  undefined4 local_48;
  _Rb_tree_impl<std::less<std::string>,true> a_Stack_44 [4];
  int local_40;
  function afStack_38 [8];
  undefined4 local_30;
  
  FUN_00510a86((function<void(std::function<void()>)> *)&local_48,*(undefined4 *)this);
  FUN_0051683e(auStack_ac,(function<void(std::function<void()>)> *)&local_48);
  FUN_0050811a((function<void(std::function<void()>)> *)&local_48);
  pfVar1 = (function *)FUN_0051075c(*(undefined4 *)this);
  std::function<void(gpg::EventManager::FetchAllResponse_const&)>::function(afStack_a8,param_3);
  if (local_a0 == 0) {
    local_90 = local_a0;
    local_40 = local_a0;
  }
  else {
    local_90 = 0;
    std::function<void(gpg::EventManager::FetchAllResponse_const&)>::swap
              (afStack_a8,(function *)afStack_98);
    std::function<void(std::function<void()>)>::function
              ((function<void(std::function<void()>)> *)&local_48,pfVar1);
  }
  local_30 = 0;
  std::function<void(gpg::EventManager::FetchAllResponse_const&)>::swap(afStack_98,afStack_38);
  local_80 = 0;
  std::function<void(std::function<void()>)>::swap
            ((function<void(std::function<void()>)> *)&local_48,afStack_88);
  local_70 = 0;
  std::function<void(gpg::EventManager::FetchAllResponse_const&)>::swap
            ((function<void(gpg::EventManager::FetchAllResponse_const&)> *)afStack_38,afStack_78);
  FUN_0050e8be((function<void(std::function<void()>)> *)&local_48);
  std::_Function_base::~_Function_base((_Function_base *)afStack_98);
  std::_Function_base::~_Function_base((_Function_base *)afStack_a8);
  piVar3 = *(int **)this;
  pcVar4 = *(code **)(*piVar3 + 0x3c);
  std::function<void(std::function<void()>)>::function(afStack_68,afStack_88);
  std::function<void(gpg::EventManager::FetchAllResponse_const&)>::function(afStack_58,afStack_78);
  iVar2 = (*pcVar4)(piVar3,param_2,afStack_68);
  FUN_0050e8be(afStack_68);
  if (iVar2 == 0) {
    local_48 = 0xfffffffd;
    std::
    _Rb_tree<std::string,std::pair<std::string_const,gpg::Event>,std::_Select1st<std::pair<std::string_const,gpg::Event>>,std::less<std::string>,std::allocator<std::pair<std::string_const,gpg::Event>>>
    ::_Rb_tree_impl<std::less<std::string>,true>::_Rb_tree_impl(a_Stack_44);
    FUN_0050f858(afStack_88,(function<void(std::function<void()>)> *)&local_48);
    std::
    _Rb_tree<std::string,std::pair<std::string_const,gpg::Event>,std::_Select1st<std::pair<std::string_const,gpg::Event>>,std::less<std::string>,std::allocator<std::pair<std::string_const,gpg::Event>>>
    ::~_Rb_tree((_Rb_tree<std::string,std::pair<std::string_const,gpg::Event>,std::_Select1st<std::pair<std::string_const,gpg::Event>>,std::less<std::string>,std::allocator<std::pair<std::string_const,gpg::Event>>>
                 *)a_Stack_44);
  }
  FUN_0050e8be(afStack_88);
  FUN_00516580(auStack_ac);
  return;
}

// ---- gpg::EventManager::FetchAll  @ 0x50fa8e
/* gpg::EventManager::FetchAll(std::function<void (gpg::EventManager::FetchAllResponse const&)>) */

void __thiscall gpg::EventManager::FetchAll(EventManager *this,function *param_2)

{
  function<void(gpg::EventManager::FetchAllResponse_const&)> afStack_20 [20];
  
  std::function<void(gpg::EventManager::FetchAllResponse_const&)>::function(afStack_20,param_2);
  FetchAll(this,1,afStack_20);
  std::_Function_base::~_Function_base((_Function_base *)afStack_20);
  return;
}

// ---- gpg::GameServices::StartAuthorizationUI  @ 0x50fbea
/* gpg::GameServices::StartAuthorizationUI() */

void __thiscall gpg::GameServices::StartAuthorizationUI(GameServices *this)

{
  undefined1 auStack_34 [4];
  undefined1 auStack_30 [32];
  
  FUN_00510a86(auStack_30,*(undefined4 *)this);
  FUN_0051683e(auStack_34,auStack_30);
  FUN_0050811a(auStack_30);
  FUN_0051221c(*(undefined4 *)this);
  FUN_00516580(auStack_34);
  return;
}

// ---- gpg::GameServices::IsAuthorized  @ 0x50fc2c
/* gpg::GameServices::IsAuthorized() */

undefined4 __thiscall gpg::GameServices::IsAuthorized(GameServices *this)

{
  undefined4 uVar1;
  undefined1 auStack_34 [4];
  undefined1 auStack_30 [32];
  
  FUN_00510a86(auStack_30,*(undefined4 *)this);
  FUN_0051683e(auStack_34,auStack_30);
  FUN_0050811a(auStack_30);
  uVar1 = FUN_005108c6(*(undefined4 *)this);
  FUN_00516580(auStack_34);
  return uVar1;
}

// ---- gpg::GameServices::SignOut  @ 0x50fc72
/* gpg::GameServices::SignOut() */

void __thiscall gpg::GameServices::SignOut(GameServices *this)

{
  undefined1 auStack_34 [4];
  undefined1 auStack_30 [32];
  
  FUN_00510a86(auStack_30,*(undefined4 *)this);
  FUN_0051683e(auStack_34,auStack_30);
  FUN_0050811a(auStack_30);
  FUN_00512240(*(undefined4 *)this);
  FUN_00516580(auStack_34);
  return;
}

// ---- gpg::GameServices::Achievements  @ 0x50fcb4
/* gpg::GameServices::Achievements() */

int __thiscall gpg::GameServices::Achievements(GameServices *this)

{
  return *(int *)this + 0xc;
}

// ---- gpg::GameServices::Achievements  @ 0x50fcba
/* gpg::GameServices::Achievements() const */

int __thiscall gpg::GameServices::Achievements(GameServices *this)

{
  return *(int *)this + 0xc;
}

// ---- gpg::GameServices::Events  @ 0x50fcc0
/* gpg::GameServices::Events() */

int __thiscall gpg::GameServices::Events(GameServices *this)

{
  return *(int *)this + 0x10;
}

// ---- gpg::GameServices::Events  @ 0x50fcc6
/* gpg::GameServices::Events() const */

int __thiscall gpg::GameServices::Events(GameServices *this)

{
  return *(int *)this + 0x10;
}

// ---- gpg::GameServices::Leaderboards  @ 0x50fccc
/* gpg::GameServices::Leaderboards() */

int __thiscall gpg::GameServices::Leaderboards(GameServices *this)

{
  return *(int *)this + 0x14;
}

// ---- gpg::GameServices::Leaderboards  @ 0x50fcd2
/* gpg::GameServices::Leaderboards() const */

int __thiscall gpg::GameServices::Leaderboards(GameServices *this)

{
  return *(int *)this + 0x14;
}

// ---- gpg::GameServices::Snapshots  @ 0x50fcd8
/* gpg::GameServices::Snapshots() */

int __thiscall gpg::GameServices::Snapshots(GameServices *this)

{
  FUN_00510c54(*(undefined4 *)this);
  return *(int *)this + 0x20;
}

// ---- gpg::GameServices::Snapshots  @ 0x50fce8
/* gpg::GameServices::Snapshots() const */

int __thiscall gpg::GameServices::Snapshots(GameServices *this)

{
  return *(int *)this + 0x20;
}

// ---- gpg::GameServices::TurnBasedMultiplayer  @ 0x50fcee
/* gpg::GameServices::TurnBasedMultiplayer() */

int __thiscall gpg::GameServices::TurnBasedMultiplayer(GameServices *this)

{
  return *(int *)this + 0x24;
}

// ---- gpg::GameServices::TurnBasedMultiplayer  @ 0x50fcf4
/* gpg::GameServices::TurnBasedMultiplayer() const */

int __thiscall gpg::GameServices::TurnBasedMultiplayer(GameServices *this)

{
  return *(int *)this + 0x24;
}

// ---- gpg::GameServices::RealTimeMultiplayer  @ 0x50fcfa
/* gpg::GameServices::RealTimeMultiplayer() */

int __thiscall gpg::GameServices::RealTimeMultiplayer(GameServices *this)

{
  return *(int *)this + 0x28;
}

// ---- gpg::GameServices::RealTimeMultiplayer  @ 0x50fd00
/* gpg::GameServices::RealTimeMultiplayer() const */

int __thiscall gpg::GameServices::RealTimeMultiplayer(GameServices *this)

{
  return *(int *)this + 0x28;
}

// ---- gpg::GameServices::Players  @ 0x50fd06
/* gpg::GameServices::Players() */

int __thiscall gpg::GameServices::Players(GameServices *this)

{
  return *(int *)this + 0x18;
}

// ---- gpg::GameServices::Players  @ 0x50fd0c
/* gpg::GameServices::Players() const */

int __thiscall gpg::GameServices::Players(GameServices *this)

{
  return *(int *)this + 0x18;
}

// ---- gpg::GameServices::Quests  @ 0x50fd12
/* gpg::GameServices::Quests() */

int __thiscall gpg::GameServices::Quests(GameServices *this)

{
  return *(int *)this + 0x1c;
}

// ---- gpg::GameServices::Quests  @ 0x50fd18
/* gpg::GameServices::Quests() const */

int __thiscall gpg::GameServices::Quests(GameServices *this)

{
  return *(int *)this + 0x1c;
}

// ---- gpg::GameServices::Flush  @ 0x50ff30
/* gpg::GameServices::Flush(std::function<void (gpg::FlushStatus)>) */

void __thiscall gpg::GameServices::Flush(GameServices *this,int param_2)

{
  undefined4 uVar1;
  function *pfVar2;
  code *pcVar3;
  undefined4 uVar4;
  undefined1 auStack_8c [4];
  function<void(gpg::FlushStatus)> afStack_88 [8];
  code *local_80;
  undefined4 local_7c;
  function<void(gpg::FlushStatus)> afStack_78 [8];
  code *local_70;
  _Any_data a_Stack_68 [8];
  code *local_60;
  undefined4 local_5c;
  function afStack_58 [8];
  undefined4 local_50;
  function<void(std::function<void()>)> afStack_48 [8];
  code *local_40;
  undefined4 local_3c;
  function<void(gpg::FlushStatus)> afStack_38 [8];
  undefined4 local_30;
  
  FUN_00510a86(afStack_48,*(undefined4 *)this);
  FUN_0051683e(auStack_8c,afStack_48);
  FUN_0050811a(afStack_48);
  uVar4 = *(undefined4 *)this;
  pfVar2 = (function *)FUN_0051075c(uVar4);
  local_80 = (code *)0x0;
  pcVar3 = *(code **)(param_2 + 8);
  if (pcVar3 != (code *)0x0) {
    local_7c = *(undefined4 *)(param_2 + 0xc);
    local_80 = pcVar3;
    (*pcVar3)(afStack_88,param_2,2);
  }
  if (local_80 == (code *)0x0) {
    local_70 = local_80;
    local_40 = local_80;
  }
  else {
    local_70 = (code *)0x0;
    std::function<void(gpg::FlushStatus)>::swap(afStack_88,(function *)afStack_78);
    std::function<void(std::function<void()>)>::function(afStack_48,pfVar2);
  }
  local_30 = 0;
  std::function<void(gpg::FlushStatus)>::swap(afStack_78,(function *)afStack_38);
  local_60 = (code *)0x0;
  std::swap<std::_Any_data>((_Any_data *)afStack_48,a_Stack_68);
  uVar1 = local_5c;
  pcVar3 = local_60;
  local_50 = 0;
  local_60 = local_40;
  local_40 = pcVar3;
  local_5c = local_3c;
  local_3c = uVar1;
  std::function<void(gpg::FlushStatus)>::swap(afStack_38,afStack_58);
  FUN_0050fd1e(afStack_48);
  std::_Function_base::~_Function_base((_Function_base *)afStack_78);
  FUN_005124a2(uVar4,a_Stack_68);
  FUN_0050fd1e(a_Stack_68);
  std::_Function_base::~_Function_base((_Function_base *)afStack_88);
  FUN_00516580(auStack_8c);
  return;
}

// ---- gpg::GameServices::GameServices  @ 0x510034
/* gpg::GameServices::GameServices(std::unique_ptr<gpg::BuilderImpl,
   std::default_delete<gpg::BuilderImpl> >, gpg::AndroidPlatformConfiguration const&) */

GameServices * __thiscall gpg::GameServices::GameServices(GameServices *this,undefined4 *param_2)

{
  void *pvVar1;
  int local_24;
  void *local_20 [2];
  undefined4 local_18;
  
  local_20[0] = (void *)*param_2;
  *param_2 = 0;
  FUN_0053f800(&local_24,(_Function_base *)local_20);
  FUN_0050fd94(this,&local_24);
  if (local_24 != 0) {
    FUN_0050fb70();
  }
  pvVar1 = local_20[0];
  if (local_20[0] != (void *)0x0) {
    FUN_0050a444(local_20[0]);
    operator_delete(pvVar1);
  }
  (**(code **)(**(int **)this + 8))();
  local_18 = 0;
  Flush(this,(_Function_base *)local_20);
  std::_Function_base::~_Function_base((_Function_base *)local_20);
  return this;
}

// ---- gpg::GameServices::~GameServices  @ 0x5100c0
/* gpg::GameServices::~GameServices() */

GameServices * __thiscall gpg::GameServices::~GameServices(GameServices *this)

{
  int iVar1;
  pthread_mutex_t *__mutex;
  uint local_50;
  int iStack_4c;
  int local_48;
  int iStack_44;
  undefined4 local_40;
  undefined4 local_3c;
  char local_38;
  undefined4 local_34;
  mutex *local_30;
  undefined1 local_2c;
  undefined1 *local_28;
  undefined1 *local_24;
  
  local_40 = 0;
  local_3c = 0;
  FUN_007be0ac(&local_3c);
  local_38 = '\0';
  local_34 = 0xfffffffd;
  local_28 = (undefined1 *)0x0;
  local_30 = operator_new(4);
  *(mutex **)local_30 = (mutex *)&local_40;
  local_24 = &LAB_0050fb96_1;
  local_28 = &LAB_0050fb40_1;
  Flush(this,(_Function_base *)&local_30);
  std::_Function_base::~_Function_base((_Function_base *)&local_30);
  local_2c = 0;
  local_30 = (mutex *)&local_40;
  std::mutex::lock((mutex *)&local_40);
  local_2c = 1;
  if (local_38 == '\0') {
    FUN_007bfd24(&local_50);
    local_48 = local_50 + 0x7e11d600;
    iStack_44 = iStack_4c + (uint)(0x81ee29ff < local_50) + 3;
    do {
      if (local_38 != '\0') goto LAB_00510174;
      iVar1 = std::condition_variable::
              __wait_until_impl<std::chrono::duration<long_long,std::ratio<1ll,1000000000ll>>>
                        ((unique_lock *)&local_3c,(time_point *)&local_30);
    } while (iVar1 != 1);
    if (local_38 == '\0') {
      FUN_005166ae(1,
                   "GameServices cleanup took longer than 15 seconds or returned an error. Destroying object while GameServicesImpl may still be active."
                  );
    }
  }
LAB_00510174:
  std::unique_lock<std::mutex>::~unique_lock((unique_lock<std::mutex> *)&local_30);
  __mutex = (pthread_mutex_t *)FUN_0050a708();
  std::mutex::lock((mutex *)&__mutex->__data);
  __mutex->__size[4] = '\0';
  pthread_mutex_unlock(__mutex);
  FUN_007be0b4(&local_3c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(this + 4));
  return this;
}

// ---- gpg::GameServices::FlushBlocking  @ 0x510248
/* gpg::GameServices::FlushBlocking(std::chrono::duration<long long, std::ratio<1ll, 1000ll> >) */

undefined4
gpg::GameServices::FlushBlocking(undefined4 *param_1,undefined4 param_2,uint param_3,int param_4)

{
  longlong lVar1;
  undefined4 uVar2;
  int iVar3;
  undefined4 uVar4;
  unique_lock *puVar5;
  undefined4 local_70;
  int iStack_6c;
  undefined1 auStack_68 [4];
  undefined1 auStack_64 [4];
  undefined4 local_60;
  int iStack_5c;
  mutex *local_58;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_54 [4];
  mutex *local_50;
  __shared_count<(__gnu_cxx::_Lock_policy)2> local_4c [4];
  undefined1 auStack_48 [36];
  
  FUN_00510a86(auStack_48,*param_1);
  FUN_0051683e(auStack_68,auStack_48);
  FUN_0050811a(auStack_48);
  FUN_005101c0(&local_58,0,auStack_64);
  uVar4 = *param_1;
  FUN_0050fd32((unique_lock<std::mutex> *)&local_50,&local_58);
  FUN_0050fe78(auStack_48,(unique_lock<std::mutex> *)&local_50);
  FUN_005124a2(uVar4,auStack_48);
  FUN_0050fd1e(auStack_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(local_4c);
  uVar2 = FUN_00529dc4(0xfffffffe);
  uVar4 = FUN_00529dc4(0xfffffffb);
  iVar3 = FUN_00553a80();
  if (iVar3 != 0) {
    FUN_005166ae(4,"Blocking calls are not allowed from the UI thread.");
    uVar4 = uVar2;
    goto LAB_00510374;
  }
  local_4c[0] = (__shared_count<(__gnu_cxx::_Lock_policy)2>)0x0;
  local_50 = local_58;
  if (local_58 == (mutex *)0x0) {
                    /* WARNING: Subroutine does not return */
    FUN_007c4c60(1);
  }
  std::mutex::lock(local_58);
  local_4c[0] = (__shared_count<(__gnu_cxx::_Lock_policy)2>)0x1;
  if (local_58[8] == (mutex)0x0) {
    puVar5 = (unique_lock *)(local_58 + 4);
    FUN_007bfd24(&local_70);
    lVar1 = (ulonglong)param_3 * 1000000 + CONCAT44(param_4 * 1000000,local_70);
    local_60 = (undefined4)lVar1;
    iStack_5c = iStack_6c + (int)((ulonglong)lVar1 >> 0x20);
    do {
      if (local_58[8] != (mutex)0x0) goto LAB_00510336;
      iVar3 = std::condition_variable::
              __wait_until_impl<std::chrono::duration<long_long,std::ratio<1ll,1000000000ll>>>
                        (puVar5,(time_point *)&local_50);
    } while (iVar3 != 1);
    if (local_58[8] != (mutex)0x0) goto LAB_00510336;
  }
  else {
LAB_00510336:
    uVar4 = *(undefined4 *)(local_58 + 0xc);
  }
  std::unique_lock<std::mutex>::~unique_lock((unique_lock<std::mutex> *)&local_50);
LAB_00510374:
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_54);
  FUN_00516580(auStack_68);
  return uVar4;
}

// ---- gpg::GameServices::FlushBlocking  @ 0x510390
/* gpg::GameServices::FlushBlocking() */

void gpg::GameServices::FlushBlocking(void)

{
  undefined4 in_r0;
  undefined4 in_r1;
  
  FlushBlocking(in_r0,in_r1,0x6cebb800,0x49);
  return;
}

// ---- gpg::Leaderboard::Leaderboard  @ 0x512af6
/* gpg::Leaderboard::Leaderboard(std::shared_ptr<gpg::LeaderboardImpl const>) */

void __thiscall gpg::Leaderboard::Leaderboard(Leaderboard *this,undefined4 *param_2)

{
  bool bVar1;
  int iVar2;
  int *piVar3;
  
  *(undefined4 *)this = *param_2;
  iVar2 = param_2[1];
  *(int *)(this + 4) = iVar2;
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

// ---- gpg::Leaderboard::Leaderboard  @ 0x512b1a
/* gpg::Leaderboard::Leaderboard(gpg::Leaderboard const&) */

void __thiscall gpg::Leaderboard::Leaderboard(Leaderboard *this,Leaderboard *param_1)

{
  bool bVar1;
  int iVar2;
  int *piVar3;
  
  *(undefined4 *)this = *(undefined4 *)param_1;
  iVar2 = *(int *)(param_1 + 4);
  *(int *)(this + 4) = iVar2;
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

// ---- gpg::Leaderboard::Leaderboard  @ 0x512b3e
/* gpg::Leaderboard::Leaderboard(gpg::Leaderboard&&) */

void __thiscall gpg::Leaderboard::Leaderboard(Leaderboard *this,Leaderboard *param_1)

{
  undefined4 uVar1;
  
  *(undefined4 *)this = *(undefined4 *)param_1;
  *(undefined4 *)(this + 4) = 0;
  uVar1 = *(undefined4 *)(param_1 + 4);
  *(undefined4 *)(param_1 + 4) = 0;
  *(undefined4 *)(this + 4) = uVar1;
  *(undefined4 *)param_1 = 0;
  return;
}

// ---- gpg::Leaderboard::Valid  @ 0x512b52
/* gpg::Leaderboard::Valid() const */

bool __thiscall gpg::Leaderboard::Valid(Leaderboard *this)

{
  return *(int *)this != 0;
}

// ---- gpg::Leaderboard::Id  @ 0x512b5c
/* gpg::Leaderboard::Id() const */

undefined4 * __thiscall gpg::Leaderboard::Id(Leaderboard *this)

{
  int iVar1;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get id of an invalid Leaderboard");
    return &DAT_00960b7c;
  }
  return *(undefined4 **)this;
}

// ---- gpg::Leaderboard::Name  @ 0x512b84
/* gpg::Leaderboard::Name() const */

undefined4 * __thiscall gpg::Leaderboard::Name(Leaderboard *this)

{
  int iVar1;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get name of an invalid Leaderboard");
    return &DAT_00960b7c;
  }
  return (undefined4 *)(*(int *)this + 4);
}

// ---- gpg::Leaderboard::Order  @ 0x512bb0
/* gpg::Leaderboard::Order() const */

undefined4 __thiscall gpg::Leaderboard::Order(Leaderboard *this)

{
  int iVar1;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get LeaderboardOrder of an invalid Leaderboard");
    return 1;
  }
  return *(undefined4 *)(*(int *)this + 8);
}

// ---- gpg::Leaderboard::IconUrl  @ 0x512bd4
/* gpg::Leaderboard::IconUrl() const */

undefined4 * __thiscall gpg::Leaderboard::IconUrl(Leaderboard *this)

{
  int iVar1;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get icon URL of an invalid Leaderboard");
    return &DAT_00960b7c;
  }
  return (undefined4 *)(*(int *)this + 0xc);
}

// ---- gpg::Leaderboard::~Leaderboard  @ 0x512c00
/* gpg::Leaderboard::~Leaderboard() */

Leaderboard * __thiscall gpg::Leaderboard::~Leaderboard(Leaderboard *this)

{
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(this + 4));
  return this;
}

// ---- gpg::Leaderboard::Leaderboard  @ 0x512c0e
/* gpg::Leaderboard::Leaderboard() */

Leaderboard * __thiscall gpg::Leaderboard::Leaderboard(Leaderboard *this)

{
  undefined4 local_c;
  
  *(undefined4 *)this = 0;
  *(undefined4 *)(this + 4) = 0;
  local_c = 0;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_c);
  return this;
}

// ---- gpg::Leaderboard::operator=  @ 0x512c28
/* gpg::Leaderboard::TEMPNAMEPLACEHOLDERVALUE(gpg::Leaderboard&&) */

Leaderboard * __thiscall gpg::Leaderboard::operator=(Leaderboard *this,Leaderboard *param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 local_c;
  
  uVar1 = *(undefined4 *)param_1;
  uVar2 = *(undefined4 *)(param_1 + 4);
  *(undefined4 *)(param_1 + 4) = 0;
  *(undefined4 *)param_1 = 0;
  *(undefined4 *)this = uVar1;
  local_c = *(undefined4 *)(this + 4);
  *(undefined4 *)(this + 4) = uVar2;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_c);
  return this;
}

// ---- gpg::Leaderboard::operator=  @ 0x512c4e
/* gpg::Leaderboard::TEMPNAMEPLACEHOLDERVALUE(gpg::Leaderboard const&) */

Leaderboard * __thiscall gpg::Leaderboard::operator=(Leaderboard *this,Leaderboard *param_1)

{
  bool bVar1;
  int *piVar2;
  int iVar3;
  
  *(undefined4 *)this = *(undefined4 *)param_1;
  iVar3 = *(int *)(param_1 + 4);
  if (iVar3 != *(int *)(this + 4)) {
    if (iVar3 != 0) {
      piVar2 = (int *)(iVar3 + 4);
      DataMemoryBarrier(0x1f);
      do {
        ExclusiveAccess(piVar2);
        bVar1 = (bool)hasExclusiveAccess(piVar2);
      } while (!bVar1);
      *piVar2 = *piVar2 + 1;
      DataMemoryBarrier(0x1f);
    }
    if (*(int *)(this + 4) != 0) {
      FUN_0033ce90();
    }
    *(int *)(this + 4) = iVar3;
  }
  return this;
}

// ---- gpg::LeaderboardManager::LeaderboardManager  @ 0x512e74
/* gpg::LeaderboardManager::LeaderboardManager(gpg::GameServicesImpl*) */

void __thiscall
gpg::LeaderboardManager::LeaderboardManager(LeaderboardManager *this,GameServicesImpl *param_1)

{
  *(GameServicesImpl **)this = param_1;
  return;
}

// ---- gpg::LeaderboardManager::~LeaderboardManager  @ 0x512e78
/* gpg::LeaderboardManager::~LeaderboardManager() */

LeaderboardManager * __thiscall
gpg::LeaderboardManager::~LeaderboardManager(LeaderboardManager *this)

{
  return this;
}

// ---- gpg::LeaderboardManager::FetchResponse::FetchResponse  @ 0x512e8e
/* gpg::LeaderboardManager::FetchResponse::FetchResponse(gpg::LeaderboardManager::FetchResponse&&)
    */

FetchResponse * __thiscall
gpg::LeaderboardManager::FetchResponse::FetchResponse(FetchResponse *this,FetchResponse *param_1)

{
  *(undefined4 *)this = *(undefined4 *)param_1;
  Leaderboard::Leaderboard((Leaderboard *)(this + 4),(Leaderboard *)(param_1 + 4));
  return this;
}

// ---- gpg::LeaderboardManager::FetchAllResponse::FetchAllResponse  @ 0x512eb6
/* gpg::LeaderboardManager::FetchAllResponse::FetchAllResponse(gpg::LeaderboardManager::FetchAllResponse&&)
    */

void __thiscall
gpg::LeaderboardManager::FetchAllResponse::FetchAllResponse
          (FetchAllResponse *this,FetchAllResponse *param_1)

{
  undefined4 uVar1;
  
  *(undefined4 *)this = *(undefined4 *)param_1;
  *(undefined4 *)(this + 8) = 0;
  *(undefined4 *)(this + 0xc) = 0;
  *(undefined4 *)(this + 4) = 0;
  *(undefined4 *)(this + 4) = *(undefined4 *)(param_1 + 4);
  *(undefined4 *)(param_1 + 4) = 0;
  uVar1 = *(undefined4 *)(this + 8);
  *(undefined4 *)(this + 8) = *(undefined4 *)(param_1 + 8);
  *(undefined4 *)(param_1 + 8) = uVar1;
  uVar1 = *(undefined4 *)(this + 0xc);
  *(undefined4 *)(this + 0xc) = *(undefined4 *)(param_1 + 0xc);
  *(undefined4 *)(param_1 + 0xc) = uVar1;
  return;
}

// ---- gpg::LeaderboardManager::FetchScorePageResponse::FetchScorePageResponse  @ 0x512ef0
/* gpg::LeaderboardManager::FetchScorePageResponse::FetchScorePageResponse(gpg::LeaderboardManager::FetchScorePageResponse&&)
    */

FetchScorePageResponse * __thiscall
gpg::LeaderboardManager::FetchScorePageResponse::FetchScorePageResponse
          (FetchScorePageResponse *this,FetchScorePageResponse *param_1)

{
  *(undefined4 *)this = *(undefined4 *)param_1;
  ScorePage::ScorePage((ScorePage *)(this + 4),(ScorePage *)(param_1 + 4));
  return this;
}

// ---- gpg::LeaderboardManager::FetchScoreSummaryResponse::FetchScoreSummaryResponse  @ 0x512f18
/* gpg::LeaderboardManager::FetchScoreSummaryResponse::FetchScoreSummaryResponse(gpg::LeaderboardManager::FetchScoreSummaryResponse&&)
    */

FetchScoreSummaryResponse * __thiscall
gpg::LeaderboardManager::FetchScoreSummaryResponse::FetchScoreSummaryResponse
          (FetchScoreSummaryResponse *this,FetchScoreSummaryResponse *param_1)

{
  *(undefined4 *)this = *(undefined4 *)param_1;
  ScoreSummary::ScoreSummary((ScoreSummary *)(this + 4),(ScoreSummary *)(param_1 + 4));
  return this;
}

// ---- gpg::LeaderboardManager::FetchAllScoreSummariesResponse::FetchAllScoreSummariesResponse  @ 0x512f40
/* gpg::LeaderboardManager::FetchAllScoreSummariesResponse::FetchAllScoreSummariesResponse(gpg::LeaderboardManager::FetchAllScoreSummariesResponse&&)
    */

void __thiscall
gpg::LeaderboardManager::FetchAllScoreSummariesResponse::FetchAllScoreSummariesResponse
          (FetchAllScoreSummariesResponse *this,FetchAllScoreSummariesResponse *param_1)

{
  undefined4 uVar1;
  
  *(undefined4 *)this = *(undefined4 *)param_1;
  *(undefined4 *)(this + 8) = 0;
  *(undefined4 *)(this + 0xc) = 0;
  *(undefined4 *)(this + 4) = 0;
  *(undefined4 *)(this + 4) = *(undefined4 *)(param_1 + 4);
  *(undefined4 *)(param_1 + 4) = 0;
  uVar1 = *(undefined4 *)(this + 8);
  *(undefined4 *)(this + 8) = *(undefined4 *)(param_1 + 8);
  *(undefined4 *)(param_1 + 8) = uVar1;
  uVar1 = *(undefined4 *)(this + 0xc);
  *(undefined4 *)(this + 0xc) = *(undefined4 *)(param_1 + 0xc);
  *(undefined4 *)(param_1 + 0xc) = uVar1;
  return;
}

// ---- gpg::LeaderboardManager::SubmitScore  @ 0x512f66
/* gpg::LeaderboardManager::SubmitScore(std::string const&, unsigned long long, std::string const&)
    */

void gpg::LeaderboardManager::SubmitScore(string *param_1,ulonglong param_2,string *param_3)

{
  undefined1 auStack_44 [4];
  undefined1 auStack_40 [36];
  
  FUN_00510a86(auStack_40,*(undefined4 *)param_1);
  FUN_0051683e(auStack_44,auStack_40);
  FUN_0050811a(auStack_40);
  (**(code **)(**(int **)param_1 + 0x5c))();
  FUN_00516580(auStack_44);
  return;
}

// ---- gpg::LeaderboardManager::SubmitScore  @ 0x512fc4
/* gpg::LeaderboardManager::SubmitScore(std::string const&, unsigned long long) */

void gpg::LeaderboardManager::SubmitScore(string *param_1,ulonglong param_2)

{
  string *psVar1;
  undefined8 uStack_20;
  
  psVar1 = (string *)((int)&uStack_20 + 4);
  uStack_20 = param_2;
  FUN_007c6a60(psVar1,&DAT_00801f93,&uStack_20,(int)(param_2 >> 0x20),param_1);
  SubmitScore(param_1,param_2,psVar1);
  FUN_007c5914(psVar1);
  return;
}

// ---- gpg::LeaderboardManager::Fetch  @ 0x5139b8
/* gpg::LeaderboardManager::Fetch(gpg::DataSource, std::string const&, std::function<void
   (gpg::LeaderboardManager::FetchResponse const&)>) */

void __thiscall
gpg::LeaderboardManager::Fetch
          (LeaderboardManager *this,undefined4 param_2,undefined4 param_3,function *param_4)

{
  undefined4 uVar1;
  function *pfVar2;
  int iVar3;
  int *piVar4;
  code *pcVar5;
  undefined1 auStack_b8 [4];
  undefined4 local_b4;
  Leaderboard aLStack_b0 [8];
  function<void(gpg::LeaderboardManager::FetchResponse_const&)> afStack_a8 [8];
  int local_a0;
  undefined4 local_9c;
  _Function_base a_Stack_98 [8];
  int local_90;
  undefined4 local_8c;
  function<void(std::function<void()>)> afStack_88 [16];
  function<void(gpg::LeaderboardManager::FetchResponse_const&)> afStack_78 [16];
  function<void(std::function<void()>)> afStack_68 [16];
  function<void(gpg::LeaderboardManager::FetchResponse_const&)> afStack_58 [16];
  function<void(std::function<void()>)> afStack_48 [8];
  int local_40;
  function<void(gpg::LeaderboardManager::FetchResponse_const&)> afStack_38 [20];
  
  FUN_00510a86(afStack_48,*(undefined4 *)this);
  FUN_0051683e(auStack_b8,afStack_48);
  FUN_0050811a(afStack_48);
  pfVar2 = (function *)FUN_0051075c(*(undefined4 *)this);
  std::function<void(gpg::LeaderboardManager::FetchResponse_const&)>::function(afStack_a8,param_4);
  if (local_a0 == 0) {
    local_90 = local_a0;
    local_40 = local_a0;
  }
  else {
    local_90 = 0;
    std::swap<std::_Any_data>((_Any_data *)afStack_a8,(_Any_data *)a_Stack_98);
    uVar1 = local_8c;
    iVar3 = local_90;
    local_90 = local_a0;
    local_a0 = iVar3;
    local_8c = local_9c;
    local_9c = uVar1;
    std::function<void(std::function<void()>)>::function(afStack_48,pfVar2);
  }
  std::function<void(gpg::LeaderboardManager::FetchResponse_const&)>::function
            (afStack_38,(function *)a_Stack_98);
  std::function<void(std::function<void()>)>::function(afStack_88,(function *)afStack_48);
  std::function<void(gpg::LeaderboardManager::FetchResponse_const&)>::function
            (afStack_78,(function *)afStack_38);
  FUN_00512e7a(afStack_48);
  std::_Function_base::~_Function_base(a_Stack_98);
  std::_Function_base::~_Function_base((_Function_base *)afStack_a8);
  piVar4 = *(int **)this;
  pcVar5 = *(code **)(*piVar4 + 0x48);
  std::function<void(std::function<void()>)>::function(afStack_68,(function *)afStack_88);
  std::function<void(gpg::LeaderboardManager::FetchResponse_const&)>::function
            (afStack_58,(function *)afStack_78);
  iVar3 = (*pcVar5)(piVar4,param_2,param_3,afStack_68);
  FUN_00512e7a(afStack_68);
  if (iVar3 == 0) {
    local_b4 = 0xfffffffd;
    Leaderboard::Leaderboard(aLStack_b0);
    FUN_005138f4(afStack_88,&local_b4);
    Leaderboard::~Leaderboard(aLStack_b0);
  }
  FUN_00512e7a(afStack_88);
  FUN_00516580(auStack_b8);
  return;
}

// ---- gpg::LeaderboardManager::Fetch  @ 0x513b04
/* gpg::LeaderboardManager::Fetch(std::string const&, std::function<void
   (gpg::LeaderboardManager::FetchResponse const&)>) */

void gpg::LeaderboardManager::Fetch
               (LeaderboardManager *param_1,undefined4 param_2,function *param_3,undefined4 param_4)

{
  LeaderboardManager *pLStack_20;
  undefined4 uStack_1c;
  function *pfStack_18;
  undefined4 uStack_14;
  
  pLStack_20 = param_1;
  uStack_1c = param_2;
  pfStack_18 = param_3;
  uStack_14 = param_4;
  std::function<void(gpg::LeaderboardManager::FetchResponse_const&)>::function
            ((function<void(gpg::LeaderboardManager::FetchResponse_const&)> *)&pLStack_20,param_3);
  Fetch(param_1,1,param_2,
        (function<void(gpg::LeaderboardManager::FetchResponse_const&)> *)&pLStack_20);
  std::_Function_base::~_Function_base((_Function_base *)&pLStack_20);
  return;
}

// ---- gpg::LeaderboardManager::FetchScorePage  @ 0x513c2c
/* gpg::LeaderboardManager::FetchScorePage(gpg::DataSource, gpg::ScorePage::ScorePageToken const&,
   unsigned int, std::function<void (gpg::LeaderboardManager::FetchScorePageResponse const&)>) */

void __thiscall
gpg::LeaderboardManager::FetchScorePage
          (LeaderboardManager *this,undefined4 param_2,ScorePageToken *param_3,uint param_4,
          function *param_5)

{
  undefined4 uVar1;
  function *pfVar2;
  int iVar3;
  undefined4 *puVar4;
  int *piVar5;
  code *pcVar6;
  undefined1 auStack_d0 [4];
  undefined4 local_cc;
  ScorePage aSStack_c8 [8];
  undefined4 local_c0;
  ScorePage aSStack_bc [8];
  undefined4 local_b4;
  ScorePage aSStack_b0 [8];
  function<void(gpg::LeaderboardManager::FetchScorePageResponse_const&)> afStack_a8 [8];
  int local_a0;
  undefined4 local_9c;
  _Function_base a_Stack_98 [8];
  int local_90;
  undefined4 local_8c;
  function<void(std::function<void()>)> afStack_88 [16];
  function<void(gpg::LeaderboardManager::FetchScorePageResponse_const&)> afStack_78 [16];
  function<void(std::function<void()>)> afStack_68 [16];
  function<void(gpg::LeaderboardManager::FetchScorePageResponse_const&)> afStack_58 [16];
  function<void(std::function<void()>)> afStack_48 [8];
  int local_40;
  function<void(gpg::LeaderboardManager::FetchScorePageResponse_const&)> afStack_38 [20];
  
  FUN_00510a86(afStack_48,*(undefined4 *)this);
  FUN_0051683e(auStack_d0,afStack_48);
  FUN_0050811a(afStack_48);
  pfVar2 = (function *)FUN_0051075c(*(undefined4 *)this);
  std::function<void(gpg::LeaderboardManager::FetchScorePageResponse_const&)>::function
            (afStack_a8,param_5);
  if (local_a0 == 0) {
    local_90 = local_a0;
    local_40 = local_a0;
  }
  else {
    local_90 = 0;
    std::swap<std::_Any_data>((_Any_data *)afStack_a8,(_Any_data *)a_Stack_98);
    uVar1 = local_8c;
    iVar3 = local_90;
    local_90 = local_a0;
    local_a0 = iVar3;
    local_8c = local_9c;
    local_9c = uVar1;
    std::function<void(std::function<void()>)>::function(afStack_48,pfVar2);
  }
  std::function<void(gpg::LeaderboardManager::FetchScorePageResponse_const&)>::function
            (afStack_38,(function *)a_Stack_98);
  std::function<void(std::function<void()>)>::function(afStack_88,(function *)afStack_48);
  std::function<void(gpg::LeaderboardManager::FetchScorePageResponse_const&)>::function
            (afStack_78,(function *)afStack_38);
  FUN_00512edc(afStack_48);
  std::_Function_base::~_Function_base(a_Stack_98);
  std::_Function_base::~_Function_base((_Function_base *)afStack_a8);
  if (param_4 == 0) {
    FUN_005166ae(4,"Fetching less than one score: skipping.");
    puVar4 = &local_cc;
    local_cc = 0xfffffffe;
    ScorePage::ScorePage(aSStack_c8);
    FUN_00513b68(afStack_88,puVar4);
  }
  else {
    iVar3 = ScorePage::ScorePageToken::Valid(param_3);
    if (iVar3 == 0) {
      FUN_005166ae(4,"Fetching scores with an invalid token: skipping.");
      puVar4 = &local_c0;
      local_c0 = 0xfffffffe;
      ScorePage::ScorePage(aSStack_bc);
      FUN_00513b68(afStack_88,puVar4);
    }
    else {
      piVar5 = *(int **)this;
      if (0x18 < param_4) {
        param_4 = 0x19;
      }
      pcVar6 = *(code **)(*piVar5 + 0x58);
      std::function<void(std::function<void()>)>::function(afStack_68,(function *)afStack_88);
      std::function<void(gpg::LeaderboardManager::FetchScorePageResponse_const&)>::function
                (afStack_58,(function *)afStack_78);
      iVar3 = (*pcVar6)(piVar5,param_2,param_3,param_4,afStack_68);
      FUN_00512edc(afStack_68);
      if (iVar3 != 0) goto LAB_00513d9c;
      puVar4 = &local_b4;
      local_b4 = 0xfffffffd;
      ScorePage::ScorePage(aSStack_b0);
      FUN_00513b68(afStack_88,puVar4);
    }
  }
  ScorePage::~ScorePage((ScorePage *)(puVar4 + 1));
LAB_00513d9c:
  FUN_00512edc(afStack_88);
  FUN_00516580(auStack_d0);
  return;
}

// ---- gpg::LeaderboardManager::FetchScorePage  @ 0x513de4
/* gpg::LeaderboardManager::FetchScorePage(gpg::DataSource, gpg::ScorePage::ScorePageToken const&,
   std::function<void (gpg::LeaderboardManager::FetchScorePageResponse const&)>) */

void __thiscall
gpg::LeaderboardManager::FetchScorePage
          (LeaderboardManager *this,undefined4 param_2,undefined4 param_3,function *param_4)

{
  function<void(gpg::LeaderboardManager::FetchScorePageResponse_const&)> afStack_28 [20];
  
  std::function<void(gpg::LeaderboardManager::FetchScorePageResponse_const&)>::function
            (afStack_28,param_4);
  FetchScorePage(this,param_2,param_3,0x14,afStack_28);
  std::_Function_base::~_Function_base((_Function_base *)afStack_28);
  return;
}

// ---- gpg::LeaderboardManager::FetchScorePage  @ 0x513e1a
/* gpg::LeaderboardManager::FetchScorePage(gpg::ScorePage::ScorePageToken const&, std::function<void
   (gpg::LeaderboardManager::FetchScorePageResponse const&)>) */

void gpg::LeaderboardManager::FetchScorePage
               (LeaderboardManager *param_1,undefined4 param_2,function *param_3,undefined4 param_4)

{
  LeaderboardManager *pLStack_20;
  undefined4 uStack_1c;
  function *pfStack_18;
  undefined4 uStack_14;
  
  pLStack_20 = param_1;
  uStack_1c = param_2;
  pfStack_18 = param_3;
  uStack_14 = param_4;
  std::function<void(gpg::LeaderboardManager::FetchScorePageResponse_const&)>::function
            ((function<void(gpg::LeaderboardManager::FetchScorePageResponse_const&)> *)&pLStack_20,
             param_3);
  FetchScorePage(param_1,1,param_2,
                 (function<void(gpg::LeaderboardManager::FetchScorePageResponse_const&)> *)
                 &pLStack_20);
  std::_Function_base::~_Function_base((_Function_base *)&pLStack_20);
  return;
}

// ---- gpg::LeaderboardManager::FetchScorePage  @ 0x513e48
/* gpg::LeaderboardManager::FetchScorePage(gpg::ScorePage::ScorePageToken const&, unsigned int,
   std::function<void (gpg::LeaderboardManager::FetchScorePageResponse const&)>) */

void __thiscall
gpg::LeaderboardManager::FetchScorePage
          (LeaderboardManager *this,undefined4 param_1,undefined4 param_2,function *param_4)

{
  function<void(gpg::LeaderboardManager::FetchScorePageResponse_const&)> afStack_28 [20];
  
  std::function<void(gpg::LeaderboardManager::FetchScorePageResponse_const&)>::function
            (afStack_28,param_4);
  FetchScorePage(this,1,param_1,param_2,afStack_28);
  std::_Function_base::~_Function_base((_Function_base *)afStack_28);
  return;
}

// ---- gpg::LeaderboardManager::FetchScoreSummary  @ 0x513f5c
/* gpg::LeaderboardManager::FetchScoreSummary(gpg::DataSource, std::string const&,
   gpg::LeaderboardTimeSpan, gpg::LeaderboardCollection, std::function<void
   (gpg::LeaderboardManager::FetchScoreSummaryResponse const&)>) */

void __thiscall
gpg::LeaderboardManager::FetchScoreSummary
          (LeaderboardManager *this,undefined4 param_2,undefined4 param_3,undefined4 param_4,
          undefined4 param_5,function *param_6)

{
  undefined4 uVar1;
  function *pfVar2;
  int iVar3;
  int *piVar4;
  code *pcVar5;
  undefined1 auStack_b8 [4];
  undefined4 local_b4;
  ScoreSummary aSStack_b0 [8];
  function<void(gpg::LeaderboardManager::FetchScoreSummaryResponse_const&)> afStack_a8 [8];
  int local_a0;
  undefined4 local_9c;
  _Function_base a_Stack_98 [8];
  int local_90;
  undefined4 local_8c;
  function<void(std::function<void()>)> afStack_88 [16];
  function<void(gpg::LeaderboardManager::FetchScoreSummaryResponse_const&)> afStack_78 [16];
  function<void(std::function<void()>)> afStack_68 [16];
  function<void(gpg::LeaderboardManager::FetchScoreSummaryResponse_const&)> afStack_58 [16];
  function<void(std::function<void()>)> afStack_48 [8];
  int local_40;
  function<void(gpg::LeaderboardManager::FetchScoreSummaryResponse_const&)> afStack_38 [20];
  
  FUN_00510a86(afStack_48,*(undefined4 *)this);
  FUN_0051683e(auStack_b8,afStack_48);
  FUN_0050811a(afStack_48);
  pfVar2 = (function *)FUN_0051075c(*(undefined4 *)this);
  std::function<void(gpg::LeaderboardManager::FetchScoreSummaryResponse_const&)>::function
            (afStack_a8,param_6);
  if (local_a0 == 0) {
    local_90 = local_a0;
    local_40 = local_a0;
  }
  else {
    local_90 = 0;
    std::swap<std::_Any_data>((_Any_data *)afStack_a8,(_Any_data *)a_Stack_98);
    uVar1 = local_8c;
    iVar3 = local_90;
    local_90 = local_a0;
    local_a0 = iVar3;
    local_8c = local_9c;
    local_9c = uVar1;
    std::function<void(std::function<void()>)>::function(afStack_48,pfVar2);
  }
  std::function<void(gpg::LeaderboardManager::FetchScoreSummaryResponse_const&)>::function
            (afStack_38,(function *)a_Stack_98);
  std::function<void(std::function<void()>)>::function(afStack_88,(function *)afStack_48);
  std::function<void(gpg::LeaderboardManager::FetchScoreSummaryResponse_const&)>::function
            (afStack_78,(function *)afStack_38);
  FUN_00512f04(afStack_48);
  std::_Function_base::~_Function_base(a_Stack_98);
  std::_Function_base::~_Function_base((_Function_base *)afStack_a8);
  piVar4 = *(int **)this;
  pcVar5 = *(code **)(*piVar4 + 0x50);
  std::function<void(std::function<void()>)>::function(afStack_68,(function *)afStack_88);
  std::function<void(gpg::LeaderboardManager::FetchScoreSummaryResponse_const&)>::function
            (afStack_58,afStack_78);
  iVar3 = (*pcVar5)(piVar4,param_2,param_3,param_4,param_5,afStack_68);
  FUN_00512f04(afStack_68);
  if (iVar3 == 0) {
    local_b4 = 0xfffffffd;
    ScoreSummary::ScoreSummary(aSStack_b0);
    FUN_00513e98(afStack_88,&local_b4);
    ScoreSummary::~ScoreSummary(aSStack_b0);
  }
  FUN_00512f04(afStack_88);
  FUN_00516580(auStack_b8);
  return;
}

// ---- gpg::LeaderboardManager::FetchScoreSummary  @ 0x5140ae
/* gpg::LeaderboardManager::FetchScoreSummary(std::string const&, gpg::LeaderboardTimeSpan,
   gpg::LeaderboardCollection, std::function<void
   (gpg::LeaderboardManager::FetchScoreSummaryResponse const&)>) */

void __thiscall
gpg::LeaderboardManager::FetchScoreSummary
          (LeaderboardManager *this,undefined4 param_1,undefined4 param_3,undefined4 param_4,
          function *param_5)

{
  function<void(gpg::LeaderboardManager::FetchScoreSummaryResponse_const&)> afStack_28 [16];
  
  std::function<void(gpg::LeaderboardManager::FetchScoreSummaryResponse_const&)>::function
            (afStack_28,param_5);
  FetchScoreSummary(this,1,param_1,param_3,param_4,afStack_28);
  std::_Function_base::~_Function_base((_Function_base *)afStack_28);
  return;
}

// ---- gpg::LeaderboardManager::ShowAllUI  @ 0x5141ac
/* gpg::LeaderboardManager::ShowAllUI(std::function<void (gpg::UIStatus const&)>) */

void __thiscall gpg::LeaderboardManager::ShowAllUI(LeaderboardManager *this,function *param_2)

{
  undefined4 uVar1;
  int iVar2;
  int *piVar3;
  code *pcVar4;
  undefined1 auStack_74 [4];
  function<void(gpg::UIStatus_const&)> afStack_70 [16];
  undefined1 auStack_60 [32];
  undefined4 local_40 [9];
  
  FUN_00510a86(local_40,*(undefined4 *)this);
  FUN_0051683e(auStack_74,local_40);
  FUN_0050811a(local_40);
  uVar1 = FUN_0051075c(*(undefined4 *)this);
  std::function<void(gpg::UIStatus_const&)>::function(afStack_70,param_2);
  FUN_00513518(auStack_60,uVar1,afStack_70);
  std::_Function_base::~_Function_base((_Function_base *)afStack_70);
  piVar3 = *(int **)this;
  pcVar4 = *(code **)(*piVar3 + 0x60);
  FUN_0051344a(local_40,auStack_60);
  iVar2 = (*pcVar4)(piVar3,local_40);
  FUN_005082ea(local_40);
  if (iVar2 == 0) {
    local_40[0] = 0xfffffffd;
    FUN_00514114(auStack_60,local_40);
  }
  FUN_005082ea(auStack_60);
  FUN_00516580(auStack_74);
  return;
}

// ---- gpg::LeaderboardManager::ShowAllUI  @ 0x514264
/* gpg::LeaderboardManager::ShowAllUI() */

void gpg::LeaderboardManager::ShowAllUI(void)

{
  _Function_base a_Stack_18 [8];
  undefined4 local_10;
  
  local_10 = 0;
  ShowAllUI();
  std::_Function_base::~_Function_base(a_Stack_18);
  return;
}

// ---- gpg::LeaderboardManager::ShowUI  @ 0x514284
/* gpg::LeaderboardManager::ShowUI(std::string const&, gpg::LeaderboardTimeSpan, std::function<void
   (gpg::UIStatus const&)>) */

void __thiscall
gpg::LeaderboardManager::ShowUI
          (LeaderboardManager *this,undefined4 param_1,undefined4 param_3,function *param_4)

{
  undefined4 uVar1;
  int iVar2;
  int *piVar3;
  code *pcVar4;
  undefined1 auStack_7c [4];
  function<void(gpg::UIStatus_const&)> afStack_78 [16];
  undefined1 auStack_68 [32];
  undefined4 local_48 [9];
  
  FUN_00510a86(local_48,*(undefined4 *)this);
  FUN_0051683e(auStack_7c,local_48);
  FUN_0050811a(local_48);
  uVar1 = FUN_0051075c(*(undefined4 *)this);
  std::function<void(gpg::UIStatus_const&)>::function(afStack_78,param_4);
  FUN_00513518(auStack_68,uVar1,afStack_78);
  std::_Function_base::~_Function_base((_Function_base *)afStack_78);
  piVar3 = *(int **)this;
  pcVar4 = *(code **)(*piVar3 + 100);
  FUN_0051344a(local_48,auStack_68);
  iVar2 = (*pcVar4)(piVar3,param_1,param_3,local_48);
  FUN_005082ea(local_48);
  if (iVar2 == 0) {
    local_48[0] = 0xfffffffd;
    FUN_00514114(auStack_68,local_48);
  }
  FUN_005082ea(auStack_68);
  FUN_00516580(auStack_7c);
  return;
}

// ---- gpg::LeaderboardManager::ShowUI  @ 0x514344
/* gpg::LeaderboardManager::ShowUI(std::string const&, std::function<void (gpg::UIStatus const&)>)
    */

void gpg::LeaderboardManager::ShowUI
               (LeaderboardManager *param_1,undefined4 param_2,function *param_3,undefined4 param_4)

{
  LeaderboardManager *pLStack_20;
  undefined4 uStack_1c;
  function *pfStack_18;
  undefined4 uStack_14;
  
  pLStack_20 = param_1;
  uStack_1c = param_2;
  pfStack_18 = param_3;
  uStack_14 = param_4;
  std::function<void(gpg::UIStatus_const&)>::function
            ((function<void(gpg::UIStatus_const&)> *)&pLStack_20,param_3);
  ShowUI(param_1,param_2,3,(function<void(gpg::UIStatus_const&)> *)&pLStack_20);
  std::_Function_base::~_Function_base((_Function_base *)&pLStack_20);
  return;
}

// ---- gpg::LeaderboardManager::ShowUI  @ 0x514372
/* gpg::LeaderboardManager::ShowUI(std::string const&) */

void gpg::LeaderboardManager::ShowUI(string *param_1)

{
  undefined4 in_r1;
  string *apsStack_18 [2];
  undefined4 local_10;
  
  local_10 = 0;
  apsStack_18[0] = param_1;
  ShowUI(param_1,in_r1,(_Function_base *)apsStack_18);
  std::_Function_base::~_Function_base((_Function_base *)apsStack_18);
  return;
}

// ---- gpg::LeaderboardManager::ScorePageToken  @ 0x514470
/* gpg::LeaderboardManager::ScorePageToken(std::string const&, gpg::LeaderboardStart,
   gpg::LeaderboardTimeSpan, gpg::LeaderboardCollection) const */

ScorePageToken *
gpg::LeaderboardManager::ScorePageToken
          (ScorePageToken *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 local_3c [2];
  undefined4 local_34;
  undefined4 local_30;
  undefined4 local_2c;
  undefined4 local_28;
  undefined4 local_24;
  ScorePageToken aSStack_20 [12];
  
  local_34 = 0;
  local_3c[0] = param_4;
  FUN_00514394(&local_30,0,aSStack_20,&local_34,param_3,local_3c,&stack0x00000000,&stack0x00000004);
  local_24 = local_2c;
  local_28 = local_30;
  local_30 = 0;
  local_2c = 0;
  ScorePage::ScorePageToken::ScorePageToken(aSStack_20,&local_28);
  ScorePage::ScorePageToken::ScorePageToken(param_1,aSStack_20);
  ScorePage::ScorePageToken::~ScorePageToken(aSStack_20);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_24);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_2c);
  return param_1;
}

// ---- gpg::LeaderboardManager::FetchAllResponse::FetchAllResponse  @ 0x51456c
/* gpg::LeaderboardManager::FetchAllResponse::FetchAllResponse(gpg::LeaderboardManager::FetchAllResponse
   const&) */

FetchAllResponse * __thiscall
gpg::LeaderboardManager::FetchAllResponse::FetchAllResponse
          (FetchAllResponse *this,FetchAllResponse *param_1)

{
  void *pvVar1;
  undefined4 uVar2;
  int iVar3;
  uint uVar4;
  int iVar5;
  
  *(undefined4 *)this = *(undefined4 *)param_1;
  iVar5 = *(int *)(param_1 + 4);
  iVar3 = *(int *)(param_1 + 8);
  *(undefined4 *)(this + 4) = 0;
  uVar4 = iVar3 - iVar5 >> 3;
  *(undefined4 *)(this + 8) = 0;
  *(undefined4 *)(this + 0xc) = 0;
  pvVar1 = (void *)0x0;
  if (uVar4 != 0) {
    if (0x1fffffff < uVar4) {
      FUN_007c4844();
    }
    pvVar1 = operator_new(uVar4 * 8);
  }
  *(void **)(this + 4) = pvVar1;
  *(void **)(this + 8) = pvVar1;
  *(void **)(this + 0xc) = (void *)(uVar4 * 8 + (int)pvVar1);
  uVar2 = FUN_00514532(*(undefined4 *)(param_1 + 4),*(undefined4 *)(param_1 + 8));
  *(undefined4 *)(this + 8) = uVar2;
  return this;
}

// ---- gpg::LeaderboardManager::FetchAll  @ 0x5146dc
/* gpg::LeaderboardManager::FetchAll(gpg::DataSource, std::function<void
   (gpg::LeaderboardManager::FetchAllResponse const&)>) */

void __thiscall
gpg::LeaderboardManager::FetchAll(LeaderboardManager *this,undefined4 param_2,function *param_3)

{
  function *pfVar1;
  int iVar2;
  int *piVar3;
  code *pcVar4;
  undefined1 auStack_ac [4];
  function<void(gpg::LeaderboardManager::FetchAllResponse_const&)> afStack_a8 [8];
  int local_a0;
  function<void(gpg::LeaderboardManager::FetchAllResponse_const&)> afStack_98 [8];
  int local_90;
  function<void(std::function<void()>)> afStack_88 [16];
  function afStack_78 [8];
  undefined4 local_70;
  function<void(std::function<void()>)> afStack_68 [16];
  function<void(gpg::LeaderboardManager::FetchAllResponse_const&)> afStack_58 [16];
  undefined4 local_48;
  int local_44;
  int local_40;
  int local_3c;
  function<void(gpg::LeaderboardManager::FetchAllResponse_const&)> afStack_38 [8];
  undefined4 local_30;
  
  FUN_00510a86((function<void(std::function<void()>)> *)&local_48,*(undefined4 *)this);
  FUN_0051683e(auStack_ac,(function<void(std::function<void()>)> *)&local_48);
  FUN_0050811a((function<void(std::function<void()>)> *)&local_48);
  pfVar1 = (function *)FUN_0051075c(*(undefined4 *)this);
  std::function<void(gpg::LeaderboardManager::FetchAllResponse_const&)>::function
            (afStack_a8,param_3);
  if (local_a0 == 0) {
    local_90 = local_a0;
    local_40 = local_a0;
  }
  else {
    local_90 = 0;
    std::function<void(gpg::LeaderboardManager::FetchAllResponse_const&)>::swap
              (afStack_a8,(function *)afStack_98);
    std::function<void(std::function<void()>)>::function
              ((function<void(std::function<void()>)> *)&local_48,pfVar1);
  }
  local_30 = 0;
  std::function<void(gpg::LeaderboardManager::FetchAllResponse_const&)>::swap
            (afStack_98,(function *)afStack_38);
  std::function<void(std::function<void()>)>::function(afStack_88,(function *)&local_48);
  local_70 = 0;
  std::function<void(gpg::LeaderboardManager::FetchAllResponse_const&)>::swap(afStack_38,afStack_78)
  ;
  FUN_00512ea2((function<void(std::function<void()>)> *)&local_48);
  std::_Function_base::~_Function_base((_Function_base *)afStack_98);
  std::_Function_base::~_Function_base((_Function_base *)afStack_a8);
  piVar3 = *(int **)this;
  pcVar4 = *(code **)(*piVar3 + 0x4c);
  std::function<void(std::function<void()>)>::function(afStack_68,(function *)afStack_88);
  std::function<void(gpg::LeaderboardManager::FetchAllResponse_const&)>::function
            (afStack_58,afStack_78);
  iVar2 = (*pcVar4)(piVar3,param_2,afStack_68);
  FUN_00512ea2(afStack_68);
  if (iVar2 == 0) {
    local_48 = 0xfffffffd;
    local_44 = iVar2;
    local_40 = iVar2;
    local_3c = iVar2;
    FUN_00514624(afStack_88,(function<void(std::function<void()>)> *)&local_48);
    std::vector<gpg::Leaderboard,std::allocator<gpg::Leaderboard>>::~vector
              ((vector<gpg::Leaderboard,std::allocator<gpg::Leaderboard>> *)&local_44);
  }
  FUN_00512ea2(afStack_88);
  FUN_00516580(auStack_ac);
  return;
}

// ---- gpg::LeaderboardManager::FetchAll  @ 0x514818
/* gpg::LeaderboardManager::FetchAll(std::function<void (gpg::LeaderboardManager::FetchAllResponse
   const&)>) */

void __thiscall gpg::LeaderboardManager::FetchAll(LeaderboardManager *this,function *param_2)

{
  function<void(gpg::LeaderboardManager::FetchAllResponse_const&)> afStack_20 [20];
  
  std::function<void(gpg::LeaderboardManager::FetchAllResponse_const&)>::function
            (afStack_20,param_2);
  FetchAll(this,1,afStack_20);
  std::_Function_base::~_Function_base((_Function_base *)afStack_20);
  return;
}

// ---- gpg::LeaderboardManager::FetchAllScoreSummariesResponse::FetchAllScoreSummariesResponse  @ 0x514a32
/* gpg::LeaderboardManager::FetchAllScoreSummariesResponse::FetchAllScoreSummariesResponse(gpg::LeaderboardManager::FetchAllScoreSummariesResponse
   const&) */

FetchAllScoreSummariesResponse * __thiscall
gpg::LeaderboardManager::FetchAllScoreSummariesResponse::FetchAllScoreSummariesResponse
          (FetchAllScoreSummariesResponse *this,FetchAllScoreSummariesResponse *param_1)

{
  void *pvVar1;
  undefined4 uVar2;
  int iVar3;
  uint uVar4;
  int iVar5;
  
  *(undefined4 *)this = *(undefined4 *)param_1;
  iVar5 = *(int *)(param_1 + 4);
  iVar3 = *(int *)(param_1 + 8);
  *(undefined4 *)(this + 4) = 0;
  uVar4 = iVar3 - iVar5 >> 3;
  *(undefined4 *)(this + 8) = 0;
  *(undefined4 *)(this + 0xc) = 0;
  pvVar1 = (void *)0x0;
  if (uVar4 != 0) {
    if (0x1fffffff < uVar4) {
      FUN_007c4844();
    }
    pvVar1 = operator_new(uVar4 * 8);
  }
  *(void **)(this + 4) = pvVar1;
  *(void **)(this + 8) = pvVar1;
  *(void **)(this + 0xc) = (void *)(uVar4 * 8 + (int)pvVar1);
  uVar2 = FUN_005149f8(*(undefined4 *)(param_1 + 4),*(undefined4 *)(param_1 + 8));
  *(undefined4 *)(this + 8) = uVar2;
  return this;
}

// ---- gpg::LeaderboardManager::FetchAllScoreSummaries  @ 0x514ba4
/* gpg::LeaderboardManager::FetchAllScoreSummaries(gpg::DataSource, std::string const&,
   std::function<void (gpg::LeaderboardManager::FetchAllScoreSummariesResponse const&)>) */

void __thiscall
gpg::LeaderboardManager::FetchAllScoreSummaries
          (LeaderboardManager *this,undefined4 param_2,undefined4 param_3,function *param_4)

{
  function *pfVar1;
  int iVar2;
  int *piVar3;
  code *pcVar4;
  undefined1 auStack_ac [4];
  function<void(gpg::LeaderboardManager::FetchAllScoreSummariesResponse_const&)> afStack_a8 [8];
  int local_a0;
  function<void(gpg::LeaderboardManager::FetchAllScoreSummariesResponse_const&)> afStack_98 [8];
  int local_90;
  function<void(std::function<void()>)> afStack_88 [16];
  function afStack_78 [8];
  undefined4 local_70;
  function<void(std::function<void()>)> afStack_68 [16];
  function<void(gpg::LeaderboardManager::FetchAllScoreSummariesResponse_const&)> afStack_58 [16];
  undefined4 local_48;
  int local_44;
  int local_40;
  int local_3c;
  function afStack_38 [8];
  undefined4 local_30;
  
  FUN_00510a86((function<void(std::function<void()>)> *)&local_48,*(undefined4 *)this);
  FUN_0051683e(auStack_ac,(function<void(std::function<void()>)> *)&local_48);
  FUN_0050811a((function<void(std::function<void()>)> *)&local_48);
  pfVar1 = (function *)FUN_0051075c(*(undefined4 *)this);
  std::function<void(gpg::LeaderboardManager::FetchAllScoreSummariesResponse_const&)>::function
            (afStack_a8,param_4);
  if (local_a0 == 0) {
    local_90 = local_a0;
    local_40 = local_a0;
  }
  else {
    local_90 = 0;
    std::function<void(gpg::LeaderboardManager::FetchAllScoreSummariesResponse_const&)>::swap
              (afStack_a8,(function *)afStack_98);
    std::function<void(std::function<void()>)>::function
              ((function<void(std::function<void()>)> *)&local_48,pfVar1);
  }
  local_30 = 0;
  std::function<void(gpg::LeaderboardManager::FetchAllScoreSummariesResponse_const&)>::swap
            (afStack_98,afStack_38);
  std::function<void(std::function<void()>)>::function(afStack_88,(function *)&local_48);
  local_70 = 0;
  std::function<void(gpg::LeaderboardManager::FetchAllScoreSummariesResponse_const&)>::swap
            ((function<void(gpg::LeaderboardManager::FetchAllScoreSummariesResponse_const&)> *)
             afStack_38,afStack_78);
  FUN_00512f2c((function<void(std::function<void()>)> *)&local_48);
  std::_Function_base::~_Function_base((_Function_base *)afStack_98);
  std::_Function_base::~_Function_base((_Function_base *)afStack_a8);
  piVar3 = *(int **)this;
  pcVar4 = *(code **)(*piVar3 + 0x54);
  std::function<void(std::function<void()>)>::function(afStack_68,(function *)afStack_88);
  std::function<void(gpg::LeaderboardManager::FetchAllScoreSummariesResponse_const&)>::function
            (afStack_58,afStack_78);
  iVar2 = (*pcVar4)(piVar3,param_2,param_3,afStack_68);
  FUN_00512f2c(afStack_68);
  if (iVar2 == 0) {
    local_48 = 0xfffffffd;
    local_44 = iVar2;
    local_40 = iVar2;
    local_3c = iVar2;
    FUN_00514aec(afStack_88,(function<void(std::function<void()>)> *)&local_48);
    std::vector<gpg::ScoreSummary,std::allocator<gpg::ScoreSummary>>::~vector
              ((vector<gpg::ScoreSummary,std::allocator<gpg::ScoreSummary>> *)&local_44);
  }
  FUN_00512f2c(afStack_88);
  FUN_00516580(auStack_ac);
  return;
}

// ---- gpg::LeaderboardManager::FetchAllScoreSummaries  @ 0x514ce8
/* gpg::LeaderboardManager::FetchAllScoreSummaries(std::string const&, std::function<void
   (gpg::LeaderboardManager::FetchAllScoreSummariesResponse const&)>) */

void gpg::LeaderboardManager::FetchAllScoreSummaries
               (LeaderboardManager *param_1,undefined4 param_2,function *param_3,undefined4 param_4)

{
  LeaderboardManager *pLStack_20;
  undefined4 uStack_1c;
  function *pfStack_18;
  undefined4 uStack_14;
  
  pLStack_20 = param_1;
  uStack_1c = param_2;
  pfStack_18 = param_3;
  uStack_14 = param_4;
  std::function<void(gpg::LeaderboardManager::FetchAllScoreSummariesResponse_const&)>::function
            ((function<void(gpg::LeaderboardManager::FetchAllScoreSummariesResponse_const&)> *)
             &pLStack_20,param_3);
  FetchAllScoreSummaries
            (param_1,1,param_2,
             (function<void(gpg::LeaderboardManager::FetchAllScoreSummariesResponse_const&)> *)
             &pLStack_20);
  std::_Function_base::~_Function_base((_Function_base *)&pLStack_20);
  return;
}

// ---- gpg::LeaderboardManager::FetchBlocking  @ 0x5151f4
/* gpg::LeaderboardManager::FetchBlocking(gpg::DataSource, std::chrono::duration<long long,
   std::ratio<1ll, 1000ll> >, std::string const&) */

FetchResponse *
gpg::LeaderboardManager::FetchBlocking
          (FetchResponse *param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4,
          uint param_5,int param_6,undefined4 param_7)

{
  longlong lVar1;
  int iVar2;
  FetchResponse *pFVar3;
  unique_lock *puVar4;
  int *piVar5;
  code *pcVar6;
  undefined4 local_b0;
  int iStack_ac;
  undefined1 auStack_a8 [4];
  undefined1 auStack_a4 [4];
  undefined4 local_a0;
  int iStack_9c;
  mutex *local_94;
  __shared_count a_Stack_90 [4];
  mutex *local_8c;
  undefined1 local_88;
  undefined4 local_84;
  Leaderboard aLStack_80 [8];
  FetchResponse aFStack_78 [12];
  undefined4 local_6c;
  Leaderboard aLStack_68 [8];
  undefined4 local_60;
  Leaderboard aLStack_5c [8];
  mutex *local_54;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_50 [8];
  undefined1 auStack_48 [36];
  
  FUN_00510a86(auStack_48,*param_2);
  FUN_0051683e(auStack_a8,auStack_48);
  FUN_0050811a(auStack_48);
  FUN_00514e84(&local_94,0,auStack_a4);
  piVar5 = (int *)*param_2;
  pcVar6 = *(code **)(*piVar5 + 0x48);
  local_54 = local_94;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count(a_Stack_50,a_Stack_90);
  FUN_005136e4(auStack_48,(FetchResponse *)&local_54);
  iVar2 = (*pcVar6)(piVar5,param_3,param_7,auStack_48);
  FUN_00512e7a(auStack_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_50);
  if (iVar2 == 0) {
    pFVar3 = (FetchResponse *)&local_84;
    local_84 = 0xfffffffd;
    Leaderboard::Leaderboard(aLStack_80);
    FetchResponse::FetchResponse(param_1,pFVar3);
    goto LAB_00515394;
  }
  Leaderboard::Leaderboard(aLStack_68);
  pFVar3 = (FetchResponse *)&local_60;
  Leaderboard::Leaderboard(aLStack_5c);
  local_6c = 0xfffffffe;
  local_60 = 0xfffffffb;
  iVar2 = FUN_00553a80();
  if (iVar2 == 0) {
    local_88 = 0;
    local_8c = local_94;
    if (local_94 == (mutex *)0x0) {
                    /* WARNING: Subroutine does not return */
      FUN_007c4c60(1);
    }
    std::mutex::lock(local_94);
    local_88 = 1;
    if (local_94[8] == (mutex)0x0) {
      puVar4 = (unique_lock *)(local_94 + 4);
      FUN_007bfd24(&local_b0);
      lVar1 = (ulonglong)param_5 * 1000000 + CONCAT44(param_6 * 1000000,local_b0);
      local_a0 = (undefined4)lVar1;
      iStack_9c = iStack_ac + (int)((ulonglong)lVar1 >> 0x20);
      do {
        if (local_94[8] != (mutex)0x0) goto LAB_00515336;
        iVar2 = std::condition_variable::
                __wait_until_impl<std::chrono::duration<long_long,std::ratio<1ll,1000000000ll>>>
                          (puVar4,(time_point *)&local_8c);
      } while (iVar2 != 1);
      if (local_94[8] != (mutex)0x0) goto LAB_00515336;
    }
    else {
LAB_00515336:
      pFVar3 = (FetchResponse *)(local_94 + 0xc);
    }
    FetchResponse::FetchResponse((FetchResponse *)&local_54,pFVar3);
    std::unique_lock<std::mutex>::~unique_lock((unique_lock<std::mutex> *)&local_8c);
  }
  else {
    FUN_005166ae(4,"Blocking calls are not allowed from the UI thread.");
    FetchResponse::FetchResponse((FetchResponse *)&local_54,(FetchResponse *)&local_6c);
  }
  pFVar3 = aFStack_78;
  FetchResponse::FetchResponse(pFVar3,(FetchResponse *)&local_54);
  Leaderboard::~Leaderboard((Leaderboard *)a_Stack_50);
  Leaderboard::~Leaderboard(aLStack_5c);
  Leaderboard::~Leaderboard(aLStack_68);
  FetchResponse::FetchResponse(param_1,pFVar3);
LAB_00515394:
  Leaderboard::~Leaderboard((Leaderboard *)(pFVar3 + 4));
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)a_Stack_90);
  FUN_00516580(auStack_a8);
  return param_1;
}

// ---- gpg::LeaderboardManager::FetchBlocking  @ 0x5153f4
/* gpg::LeaderboardManager::FetchBlocking(gpg::DataSource, std::string const&) */

FetchResponse * gpg::LeaderboardManager::FetchBlocking(FetchResponse *param_1)

{
  FetchResponse aFStack_24 [4];
  Leaderboard aLStack_20 [12];
  
  FetchBlocking(aFStack_24);
  FetchResponse::FetchResponse(param_1,aFStack_24);
  Leaderboard::~Leaderboard(aLStack_20);
  return param_1;
}

// ---- gpg::LeaderboardManager::FetchBlocking  @ 0x515434
/* gpg::LeaderboardManager::FetchBlocking(std::string const&) */

string * gpg::LeaderboardManager::FetchBlocking(string *param_1)

{
  undefined4 in_r1;
  FetchResponse aFStack_1c [4];
  Leaderboard aLStack_18 [12];
  
  FetchBlocking(aFStack_1c,in_r1,1);
  FetchResponse::FetchResponse((FetchResponse *)param_1,aFStack_1c);
  Leaderboard::~Leaderboard(aLStack_18);
  return param_1;
}

// ---- gpg::LeaderboardManager::FetchBlocking  @ 0x515464
/* gpg::LeaderboardManager::FetchBlocking(std::chrono::duration<long long, std::ratio<1ll, 1000ll>
   >, std::string const&) */

FetchResponse *
gpg::LeaderboardManager::FetchBlocking
          (FetchResponse *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
          undefined4 param_5)

{
  FetchResponse aFStack_1c [4];
  Leaderboard aLStack_18 [12];
  
  FetchBlocking(aFStack_1c,param_2,1,param_5,param_3,param_4,param_5);
  FetchResponse::FetchResponse(param_1,aFStack_1c);
  Leaderboard::~Leaderboard(aLStack_18);
  return param_1;
}

// ---- gpg::LeaderboardManager::FetchAllBlocking  @ 0x51549c
/* gpg::LeaderboardManager::FetchAllBlocking(gpg::DataSource, std::chrono::duration<long long,
   std::ratio<1ll, 1000ll> >) */

FetchAllResponse *
gpg::LeaderboardManager::FetchAllBlocking
          (FetchAllResponse *param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4,
          uint param_5,int param_6)

{
  longlong lVar1;
  int iVar2;
  FetchAllResponse *pFVar3;
  int *piVar4;
  FetchAllResponse *this;
  code *pcVar5;
  unique_lock *puVar6;
  undefined4 local_98;
  int iStack_94;
  undefined1 auStack_90 [4];
  undefined1 auStack_8c [4];
  undefined4 local_88;
  int iStack_84;
  mutex *local_80;
  __shared_count a_Stack_7c [4];
  mutex *local_78;
  undefined1 local_74;
  undefined4 local_68;
  undefined4 local_64;
  undefined4 local_60;
  undefined4 local_5c;
  mutex *local_58;
  undefined4 local_54;
  undefined4 local_50;
  undefined4 local_4c;
  undefined4 local_48;
  int local_44;
  int local_40;
  int local_3c;
  
  FUN_00510a86((FetchAllResponse *)&local_48,*param_2,param_5,param_6,param_5,param_6);
  FUN_0051683e(auStack_90,(FetchAllResponse *)&local_48);
  FUN_0050811a((FetchAllResponse *)&local_48);
  FUN_00514f44(&local_80,0,auStack_8c);
  piVar4 = (int *)*param_2;
  pcVar5 = *(code **)(*piVar4 + 0x4c);
  pFVar3 = (FetchAllResponse *)&local_58;
  local_58 = local_80;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_54,a_Stack_7c);
  FUN_0051358c((FetchAllResponse *)&local_48,pFVar3);
  iVar2 = (*pcVar5)(piVar4,param_3,(FetchAllResponse *)&local_48);
  FUN_00512ea2((FetchAllResponse *)&local_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_54);
  if (iVar2 == 0) {
    local_48 = 0xfffffffd;
    local_44 = iVar2;
    local_40 = iVar2;
    local_3c = iVar2;
    FetchAllResponse::FetchAllResponse(param_1,(FetchAllResponse *)&local_48);
    this = (FetchAllResponse *)&local_48;
    goto LAB_0051560e;
  }
  local_64 = 0;
  local_60 = 0;
  local_5c = 0;
  local_54 = 0;
  local_50 = 0;
  local_4c = 0;
  local_68 = 0xfffffffe;
  local_58 = (mutex *)0xfffffffb;
  iVar2 = FUN_00553a80();
  this = (FetchAllResponse *)&local_78;
  if (iVar2 == 0) {
    local_74 = 0;
    local_78 = local_80;
    if (local_80 == (mutex *)0x0) {
                    /* WARNING: Subroutine does not return */
      FUN_007c4c60(1);
    }
    std::mutex::lock(local_80);
    local_74 = 1;
    if (local_80[8] == (mutex)0x0) {
      puVar6 = (unique_lock *)(local_80 + 4);
      FUN_007bfd24(&local_98);
      lVar1 = (ulonglong)param_5 * 1000000 + CONCAT44(param_6 * 1000000,local_98);
      local_88 = (undefined4)lVar1;
      iStack_84 = iStack_94 + (int)((ulonglong)lVar1 >> 0x20);
      do {
        if (local_80[8] != (mutex)0x0) goto LAB_005155d8;
        iVar2 = std::condition_variable::
                __wait_until_impl<std::chrono::duration<long_long,std::ratio<1ll,1000000000ll>>>
                          (puVar6,(time_point *)this);
      } while (iVar2 != 1);
      if (local_80[8] != (mutex)0x0) goto LAB_005155d8;
    }
    else {
LAB_005155d8:
      pFVar3 = (FetchAllResponse *)(local_80 + 0xc);
    }
    FetchAllResponse::FetchAllResponse((FetchAllResponse *)&local_48,pFVar3);
    std::unique_lock<std::mutex>::~unique_lock((unique_lock<std::mutex> *)this);
  }
  else {
    FUN_005166ae(4,"Blocking calls are not allowed from the UI thread.");
    FetchAllResponse::FetchAllResponse((FetchAllResponse *)&local_48,(FetchAllResponse *)&local_68);
  }
  FetchAllResponse::FetchAllResponse(this,(FetchAllResponse *)&local_48);
  std::vector<gpg::Leaderboard,std::allocator<gpg::Leaderboard>>::~vector
            ((vector<gpg::Leaderboard,std::allocator<gpg::Leaderboard>> *)&local_44);
  std::vector<gpg::Leaderboard,std::allocator<gpg::Leaderboard>>::~vector
            ((vector<gpg::Leaderboard,std::allocator<gpg::Leaderboard>> *)&local_54);
  std::vector<gpg::Leaderboard,std::allocator<gpg::Leaderboard>>::~vector
            ((vector<gpg::Leaderboard,std::allocator<gpg::Leaderboard>> *)&local_64);
  FetchAllResponse::FetchAllResponse(param_1,this);
LAB_0051560e:
  std::vector<gpg::Leaderboard,std::allocator<gpg::Leaderboard>>::~vector
            ((vector<gpg::Leaderboard,std::allocator<gpg::Leaderboard>> *)(this + 4));
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)a_Stack_7c);
  FUN_00516580(auStack_90);
  return param_1;
}

// ---- gpg::LeaderboardManager::FetchAllBlocking  @ 0x515674
/* gpg::LeaderboardManager::FetchAllBlocking(gpg::DataSource) */

FetchAllResponse * gpg::LeaderboardManager::FetchAllBlocking(FetchAllResponse *param_1)

{
  FetchAllResponse aFStack_20 [4];
  vector<gpg::Leaderboard,std::allocator<gpg::Leaderboard>> avStack_1c [12];
  
  FetchAllBlocking(aFStack_20);
  FetchAllResponse::FetchAllResponse(param_1,aFStack_20);
  std::vector<gpg::Leaderboard,std::allocator<gpg::Leaderboard>>::~vector(avStack_1c);
  return param_1;
}

// ---- gpg::LeaderboardManager::FetchAllBlocking  @ 0x5156a8
/* gpg::LeaderboardManager::FetchAllBlocking() */

void gpg::LeaderboardManager::FetchAllBlocking(void)

{
  FetchAllResponse *in_r0;
  undefined4 in_r1;
  FetchAllResponse aFStack_20 [4];
  vector<gpg::Leaderboard,std::allocator<gpg::Leaderboard>> avStack_1c [16];
  
  FetchAllBlocking(aFStack_20,in_r1,1);
  FetchAllResponse::FetchAllResponse(in_r0,aFStack_20);
  std::vector<gpg::Leaderboard,std::allocator<gpg::Leaderboard>>::~vector(avStack_1c);
  return;
}

// ---- gpg::LeaderboardManager::FetchAllBlocking  @ 0x5156ca
/* gpg::LeaderboardManager::FetchAllBlocking(std::chrono::duration<long long, std::ratio<1ll,
   1000ll> >) */

FetchAllResponse *
gpg::LeaderboardManager::FetchAllBlocking
          (FetchAllResponse *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  FetchAllResponse aFStack_20 [4];
  vector<gpg::Leaderboard,std::allocator<gpg::Leaderboard>> avStack_1c [16];
  
  FetchAllBlocking(aFStack_20,param_2,1,param_4,param_3,param_4);
  FetchAllResponse::FetchAllResponse(param_1,aFStack_20);
  std::vector<gpg::Leaderboard,std::allocator<gpg::Leaderboard>>::~vector(avStack_1c);
  return param_1;
}

// ---- gpg::LeaderboardManager::FetchScorePageBlocking  @ 0x5156f4
/* gpg::LeaderboardManager::FetchScorePageBlocking(gpg::DataSource, std::chrono::duration<long long,
   std::ratio<1ll, 1000ll> >, gpg::ScorePage::ScorePageToken const&, unsigned int) */

FetchScorePageResponse *
gpg::LeaderboardManager::FetchScorePageBlocking
          (FetchScorePageResponse *param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4
          ,uint param_5,int param_6,ScorePageToken *param_7,int param_8)

{
  longlong lVar1;
  int iVar2;
  FetchScorePageResponse *pFVar3;
  unique_lock *puVar4;
  int *piVar5;
  code *pcVar6;
  undefined4 local_c8;
  int iStack_c4;
  undefined1 auStack_c0 [4];
  undefined1 auStack_bc [4];
  undefined4 local_b8;
  int iStack_b4;
  mutex *local_ac;
  __shared_count a_Stack_a8 [4];
  mutex *local_a4;
  undefined1 local_a0;
  undefined4 local_9c;
  ScorePage aSStack_98 [8];
  undefined4 local_90;
  ScorePage aSStack_8c [8];
  undefined4 local_84;
  ScorePage aSStack_80 [8];
  FetchScorePageResponse aFStack_78 [12];
  undefined4 local_6c;
  ScorePage aSStack_68 [8];
  undefined4 local_60;
  ScorePage aSStack_5c [8];
  mutex *local_54;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_50 [8];
  undefined1 auStack_48 [36];
  
  FUN_00510a86(auStack_48,*param_2);
  FUN_0051683e(auStack_c0,auStack_48);
  FUN_0050811a(auStack_48);
  if (param_8 == 0) {
    FUN_005166ae(4,"Fetching less than one score: skipping.");
    pFVar3 = (FetchScorePageResponse *)&local_9c;
    local_9c = 0xfffffffe;
    ScorePage::ScorePage(aSStack_98);
    FetchScorePageResponse::FetchScorePageResponse(param_1,pFVar3);
  }
  else {
    iVar2 = ScorePage::ScorePageToken::Valid(param_7);
    if (iVar2 != 0) {
      FUN_00514fdc(&local_ac,0,auStack_bc);
      piVar5 = (int *)*param_2;
      pcVar6 = *(code **)(*piVar5 + 0x58);
      local_54 = local_ac;
      std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count(a_Stack_50,a_Stack_a8);
      FUN_0051378c(auStack_48,(FetchScorePageResponse *)&local_54);
      iVar2 = (*pcVar6)(piVar5,param_3,param_7,param_8,auStack_48);
      FUN_00512edc(auStack_48);
      std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_50);
      if (iVar2 == 0) {
        pFVar3 = (FetchScorePageResponse *)&local_84;
        local_84 = 0xfffffffd;
        ScorePage::ScorePage(aSStack_80);
        FetchScorePageResponse::FetchScorePageResponse(param_1,pFVar3);
      }
      else {
        ScorePage::ScorePage(aSStack_68);
        pFVar3 = (FetchScorePageResponse *)&local_60;
        ScorePage::ScorePage(aSStack_5c);
        local_6c = 0xfffffffe;
        local_60 = 0xfffffffb;
        iVar2 = FUN_00553a80();
        if (iVar2 == 0) {
          local_a0 = 0;
          local_a4 = local_ac;
          if (local_ac == (mutex *)0x0) {
                    /* WARNING: Subroutine does not return */
            FUN_007c4c60(1);
          }
          std::mutex::lock(local_ac);
          local_a0 = 1;
          if (local_ac[8] == (mutex)0x0) {
            puVar4 = (unique_lock *)(local_ac + 4);
            FUN_007bfd24(&local_c8);
            lVar1 = (ulonglong)param_5 * 1000000 + CONCAT44(param_6 * 1000000,local_c8);
            local_b8 = (undefined4)lVar1;
            iStack_b4 = iStack_c4 + (int)((ulonglong)lVar1 >> 0x20);
            do {
              if (local_ac[8] != (mutex)0x0) goto LAB_00515892;
              iVar2 = std::condition_variable::
                      __wait_until_impl<std::chrono::duration<long_long,std::ratio<1ll,1000000000ll>>>
                                (puVar4,(time_point *)&local_a4);
            } while (iVar2 != 1);
            if (local_ac[8] != (mutex)0x0) goto LAB_00515892;
          }
          else {
LAB_00515892:
            pFVar3 = (FetchScorePageResponse *)(local_ac + 0xc);
          }
          FetchScorePageResponse::FetchScorePageResponse((FetchScorePageResponse *)&local_54,pFVar3)
          ;
          std::unique_lock<std::mutex>::~unique_lock((unique_lock<std::mutex> *)&local_a4);
        }
        else {
          FUN_005166ae(4,"Blocking calls are not allowed from the UI thread.");
          FetchScorePageResponse::FetchScorePageResponse
                    ((FetchScorePageResponse *)&local_54,(FetchScorePageResponse *)&local_6c);
        }
        pFVar3 = aFStack_78;
        FetchScorePageResponse::FetchScorePageResponse(pFVar3,(FetchScorePageResponse *)&local_54);
        ScorePage::~ScorePage((ScorePage *)a_Stack_50);
        ScorePage::~ScorePage(aSStack_5c);
        ScorePage::~ScorePage(aSStack_68);
        FetchScorePageResponse::FetchScorePageResponse(param_1,pFVar3);
      }
      ScorePage::~ScorePage((ScorePage *)(pFVar3 + 4));
      std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
                ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)a_Stack_a8);
      goto LAB_00515944;
    }
    FUN_005166ae(4,"Fetching scores with an invalid token: skipping.");
    pFVar3 = (FetchScorePageResponse *)&local_90;
    local_90 = 0xfffffffe;
    ScorePage::ScorePage(aSStack_8c);
    FetchScorePageResponse::FetchScorePageResponse(param_1,pFVar3);
  }
  ScorePage::~ScorePage((ScorePage *)(pFVar3 + 4));
LAB_00515944:
  FUN_00516580(auStack_c0);
  return param_1;
}

// ---- gpg::LeaderboardManager::FetchScorePageBlocking  @ 0x515964
/* gpg::LeaderboardManager::FetchScorePageBlocking(gpg::DataSource, std::chrono::duration<long long,
   std::ratio<1ll, 1000ll> >, gpg::ScorePage::ScorePageToken const&) */

FetchScorePageResponse *
gpg::LeaderboardManager::FetchScorePageBlocking(FetchScorePageResponse *param_1)

{
  FetchScorePageResponse aFStack_24 [4];
  ScorePage aSStack_20 [12];
  
  FetchScorePageBlocking(aFStack_24);
  FetchScorePageResponse::FetchScorePageResponse(param_1,aFStack_24);
  ScorePage::~ScorePage(aSStack_20);
  return param_1;
}

// ---- gpg::LeaderboardManager::FetchScorePageBlocking  @ 0x5159a0
/* gpg::LeaderboardManager::FetchScorePageBlocking(gpg::DataSource, gpg::ScorePage::ScorePageToken
   const&) */

FetchScorePageResponse *
gpg::LeaderboardManager::FetchScorePageBlocking(FetchScorePageResponse *param_1)

{
  FetchScorePageResponse aFStack_24 [4];
  ScorePage aSStack_20 [12];
  
  FetchScorePageBlocking(aFStack_24);
  FetchScorePageResponse::FetchScorePageResponse(param_1,aFStack_24);
  ScorePage::~ScorePage(aSStack_20);
  return param_1;
}

// ---- gpg::LeaderboardManager::FetchScorePageBlocking  @ 0x5159e0
/* gpg::LeaderboardManager::FetchScorePageBlocking(gpg::ScorePage::ScorePageToken const&) */

ScorePageToken * gpg::LeaderboardManager::FetchScorePageBlocking(ScorePageToken *param_1)

{
  undefined4 in_r1;
  FetchScorePageResponse aFStack_1c [4];
  ScorePage aSStack_18 [12];
  
  FetchScorePageBlocking(aFStack_1c,in_r1,1);
  FetchScorePageResponse::FetchScorePageResponse((FetchScorePageResponse *)param_1,aFStack_1c);
  ScorePage::~ScorePage(aSStack_18);
  return param_1;
}

// ---- gpg::LeaderboardManager::FetchScorePageBlocking  @ 0x515a10
/* gpg::LeaderboardManager::FetchScorePageBlocking(std::chrono::duration<long long, std::ratio<1ll,
   1000ll> >, gpg::ScorePage::ScorePageToken const&) */

FetchScorePageResponse *
gpg::LeaderboardManager::FetchScorePageBlocking
          (FetchScorePageResponse *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
          undefined4 param_5)

{
  FetchScorePageResponse aFStack_1c [4];
  ScorePage aSStack_18 [12];
  
  FetchScorePageBlocking(aFStack_1c,param_2,1,param_5,param_3,param_4,param_5);
  FetchScorePageResponse::FetchScorePageResponse(param_1,aFStack_1c);
  ScorePage::~ScorePage(aSStack_18);
  return param_1;
}

// ---- gpg::LeaderboardManager::FetchScorePageBlocking  @ 0x515a48
/* gpg::LeaderboardManager::FetchScorePageBlocking(gpg::DataSource, gpg::ScorePage::ScorePageToken
   const&, unsigned int) */

FetchScorePageResponse *
gpg::LeaderboardManager::FetchScorePageBlocking(FetchScorePageResponse *param_1)

{
  FetchScorePageResponse aFStack_24 [4];
  ScorePage aSStack_20 [12];
  
  FetchScorePageBlocking(aFStack_24);
  FetchScorePageResponse::FetchScorePageResponse(param_1,aFStack_24);
  ScorePage::~ScorePage(aSStack_20);
  return param_1;
}

// ---- gpg::LeaderboardManager::FetchScorePageBlocking  @ 0x515a8c
/* gpg::LeaderboardManager::FetchScorePageBlocking(gpg::ScorePage::ScorePageToken const&, unsigned
   int) */

ScorePageToken *
gpg::LeaderboardManager::FetchScorePageBlocking(ScorePageToken *param_1,uint param_2)

{
  FetchScorePageResponse aFStack_1c [4];
  ScorePage aSStack_18 [8];
  
  FetchScorePageBlocking(aFStack_1c,param_2,1);
  FetchScorePageResponse::FetchScorePageResponse((FetchScorePageResponse *)param_1,aFStack_1c);
  ScorePage::~ScorePage(aSStack_18);
  return param_1;
}

// ---- gpg::LeaderboardManager::FetchScorePageBlocking  @ 0x515ac0
/* gpg::LeaderboardManager::FetchScorePageBlocking(std::chrono::duration<long long, std::ratio<1ll,
   1000ll> >, gpg::ScorePage::ScorePageToken const&, unsigned int) */

FetchScorePageResponse *
gpg::LeaderboardManager::FetchScorePageBlocking
          (FetchScorePageResponse *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
          undefined4 param_5,undefined4 param_6)

{
  FetchScorePageResponse aFStack_1c [4];
  ScorePage aSStack_18 [12];
  
  FetchScorePageBlocking(aFStack_1c,param_2,1,param_6,param_3,param_4,param_5,param_6);
  FetchScorePageResponse::FetchScorePageResponse(param_1,aFStack_1c);
  ScorePage::~ScorePage(aSStack_18);
  return param_1;
}

// ---- gpg::LeaderboardManager::FetchScoreSummaryBlocking  @ 0x515afc
/* gpg::LeaderboardManager::FetchScoreSummaryBlocking(gpg::DataSource, std::chrono::duration<long
   long, std::ratio<1ll, 1000ll> >, std::string const&, gpg::LeaderboardTimeSpan,
   gpg::LeaderboardCollection) */

FetchScoreSummaryResponse *
gpg::LeaderboardManager::FetchScoreSummaryBlocking
          (FetchScoreSummaryResponse *param_1,undefined4 *param_2,undefined4 param_3,
          undefined4 param_4,uint param_5,int param_6,undefined4 param_7,undefined4 param_8,
          undefined4 param_9)

{
  longlong lVar1;
  int iVar2;
  FetchScoreSummaryResponse *pFVar3;
  unique_lock *puVar4;
  int *piVar5;
  code *pcVar6;
  undefined4 local_b0;
  int iStack_ac;
  undefined1 auStack_a8 [4];
  undefined1 auStack_a4 [4];
  undefined4 local_a0;
  int iStack_9c;
  mutex *local_94;
  __shared_count a_Stack_90 [4];
  mutex *local_8c;
  undefined1 local_88;
  undefined4 local_84;
  ScoreSummary aSStack_80 [8];
  FetchScoreSummaryResponse aFStack_78 [12];
  undefined4 local_6c;
  ScoreSummary aSStack_68 [8];
  undefined4 local_60;
  ScoreSummary aSStack_5c [8];
  mutex *local_54;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_50 [8];
  undefined1 auStack_48 [36];
  
  FUN_00510a86(auStack_48,*param_2);
  FUN_0051683e(auStack_a8,auStack_48);
  FUN_0050811a(auStack_48);
  FUN_0051509c(&local_94,0,auStack_a4);
  piVar5 = (int *)*param_2;
  pcVar6 = *(code **)(*piVar5 + 0x50);
  local_54 = local_94;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count(a_Stack_50,a_Stack_90);
  FUN_0051363c(auStack_48,(FetchScoreSummaryResponse *)&local_54);
  iVar2 = (*pcVar6)(piVar5,param_3,param_7,param_8,param_9,auStack_48);
  FUN_00512f04(auStack_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_50);
  if (iVar2 == 0) {
    pFVar3 = (FetchScoreSummaryResponse *)&local_84;
    local_84 = 0xfffffffd;
    ScoreSummary::ScoreSummary(aSStack_80);
    FetchScoreSummaryResponse::FetchScoreSummaryResponse(param_1,pFVar3);
    goto LAB_00515ca2;
  }
  ScoreSummary::ScoreSummary(aSStack_68);
  pFVar3 = (FetchScoreSummaryResponse *)&local_60;
  ScoreSummary::ScoreSummary(aSStack_5c);
  local_6c = 0xfffffffe;
  local_60 = 0xfffffffb;
  iVar2 = FUN_00553a80();
  if (iVar2 == 0) {
    local_88 = 0;
    local_8c = local_94;
    if (local_94 == (mutex *)0x0) {
                    /* WARNING: Subroutine does not return */
      FUN_007c4c60(1);
    }
    std::mutex::lock(local_94);
    local_88 = 1;
    if (local_94[8] == (mutex)0x0) {
      puVar4 = (unique_lock *)(local_94 + 4);
      FUN_007bfd24(&local_b0);
      lVar1 = (ulonglong)param_5 * 1000000 + CONCAT44(param_6 * 1000000,local_b0);
      local_a0 = (undefined4)lVar1;
      iStack_9c = iStack_ac + (int)((ulonglong)lVar1 >> 0x20);
      do {
        if (local_94[8] != (mutex)0x0) goto LAB_00515c44;
        iVar2 = std::condition_variable::
                __wait_until_impl<std::chrono::duration<long_long,std::ratio<1ll,1000000000ll>>>
                          (puVar4,(time_point *)&local_8c);
      } while (iVar2 != 1);
      if (local_94[8] != (mutex)0x0) goto LAB_00515c44;
    }
    else {
LAB_00515c44:
      pFVar3 = (FetchScoreSummaryResponse *)(local_94 + 0xc);
    }
    FetchScoreSummaryResponse::FetchScoreSummaryResponse
              ((FetchScoreSummaryResponse *)&local_54,pFVar3);
    std::unique_lock<std::mutex>::~unique_lock((unique_lock<std::mutex> *)&local_8c);
  }
  else {
    FUN_005166ae(4,"Blocking calls are not allowed from the UI thread.");
    FetchScoreSummaryResponse::FetchScoreSummaryResponse
              ((FetchScoreSummaryResponse *)&local_54,(FetchScoreSummaryResponse *)&local_6c);
  }
  pFVar3 = aFStack_78;
  FetchScoreSummaryResponse::FetchScoreSummaryResponse
            (pFVar3,(FetchScoreSummaryResponse *)&local_54);
  ScoreSummary::~ScoreSummary((ScoreSummary *)a_Stack_50);
  ScoreSummary::~ScoreSummary(aSStack_5c);
  ScoreSummary::~ScoreSummary(aSStack_68);
  FetchScoreSummaryResponse::FetchScoreSummaryResponse(param_1,pFVar3);
LAB_00515ca2:
  ScoreSummary::~ScoreSummary((ScoreSummary *)(pFVar3 + 4));
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)a_Stack_90);
  FUN_00516580(auStack_a8);
  return param_1;
}

// ---- gpg::LeaderboardManager::FetchScoreSummaryBlocking  @ 0x515d00
/* gpg::LeaderboardManager::FetchScoreSummaryBlocking(gpg::DataSource, std::string const&,
   gpg::LeaderboardTimeSpan, gpg::LeaderboardCollection) */

FetchScoreSummaryResponse *
gpg::LeaderboardManager::FetchScoreSummaryBlocking(FetchScoreSummaryResponse *param_1)

{
  FetchScoreSummaryResponse aFStack_24 [4];
  ScoreSummary aSStack_20 [12];
  
  FetchScoreSummaryBlocking(aFStack_24);
  FetchScoreSummaryResponse::FetchScoreSummaryResponse(param_1,aFStack_24);
  ScoreSummary::~ScoreSummary(aSStack_20);
  return param_1;
}

// ---- gpg::LeaderboardManager::FetchScoreSummaryBlocking  @ 0x515d48
/* gpg::LeaderboardManager::FetchScoreSummaryBlocking(std::string const&, gpg::LeaderboardTimeSpan,
   gpg::LeaderboardCollection) */

FetchScoreSummaryResponse *
gpg::LeaderboardManager::FetchScoreSummaryBlocking
          (FetchScoreSummaryResponse *param_1,undefined4 param_2,undefined4 param_3,
          undefined4 param_4,undefined4 param_5)

{
  FetchScoreSummaryResponse aFStack_1c [4];
  ScoreSummary aSStack_18 [8];
  
  FetchScoreSummaryBlocking(aFStack_1c,param_2,1,param_3,param_4,param_5);
  FetchScoreSummaryResponse::FetchScoreSummaryResponse(param_1,aFStack_1c);
  ScoreSummary::~ScoreSummary(aSStack_18);
  return param_1;
}

// ---- gpg::LeaderboardManager::FetchScoreSummaryBlocking  @ 0x515d80
/* gpg::LeaderboardManager::FetchScoreSummaryBlocking(std::chrono::duration<long long,
   std::ratio<1ll, 1000ll> >, std::string const&, gpg::LeaderboardTimeSpan,
   gpg::LeaderboardCollection) */

FetchScoreSummaryResponse *
gpg::LeaderboardManager::FetchScoreSummaryBlocking
          (FetchScoreSummaryResponse *param_1,undefined4 param_2,undefined4 param_3,
          undefined4 param_4,undefined4 param_5,undefined4 param_6,undefined4 param_7)

{
  FetchScoreSummaryResponse aFStack_1c [4];
  ScoreSummary aSStack_18 [12];
  
  FetchScoreSummaryBlocking(aFStack_1c,param_2,1,param_7,param_3,param_4,param_5,param_6,param_7);
  FetchScoreSummaryResponse::FetchScoreSummaryResponse(param_1,aFStack_1c);
  ScoreSummary::~ScoreSummary(aSStack_18);
  return param_1;
}

// ---- gpg::LeaderboardManager::FetchAllScoreSummariesBlocking  @ 0x515dc0
/* gpg::LeaderboardManager::FetchAllScoreSummariesBlocking(gpg::DataSource,
   std::chrono::duration<long long, std::ratio<1ll, 1000ll> >, std::string const&) */

FetchAllScoreSummariesResponse *
gpg::LeaderboardManager::FetchAllScoreSummariesBlocking
          (FetchAllScoreSummariesResponse *param_1,undefined4 *param_2,undefined4 param_3,
          undefined4 param_4,uint param_5,int param_6,undefined4 param_7)

{
  longlong lVar1;
  int iVar2;
  FetchAllScoreSummariesResponse *pFVar3;
  int *piVar4;
  FetchAllScoreSummariesResponse *this;
  code *pcVar5;
  unique_lock *puVar6;
  undefined4 local_98;
  int iStack_94;
  undefined1 auStack_90 [4];
  undefined1 auStack_8c [4];
  undefined4 local_88;
  int iStack_84;
  mutex *local_80;
  __shared_count a_Stack_7c [4];
  mutex *local_78;
  undefined1 local_74;
  undefined4 local_68;
  undefined4 local_64;
  undefined4 local_60;
  undefined4 local_5c;
  mutex *local_58;
  undefined4 local_54;
  undefined4 local_50;
  undefined4 local_4c;
  undefined4 local_48;
  int local_44;
  int local_40;
  int local_3c;
  
  FUN_00510a86((FetchAllScoreSummariesResponse *)&local_48,*param_2,param_5,param_6,param_5,param_6)
  ;
  FUN_0051683e(auStack_90,(FetchAllScoreSummariesResponse *)&local_48);
  FUN_0050811a((FetchAllScoreSummariesResponse *)&local_48);
  FUN_0051515c(&local_80,0,auStack_8c);
  piVar4 = (int *)*param_2;
  pcVar5 = *(code **)(*piVar4 + 0x54);
  pFVar3 = (FetchAllScoreSummariesResponse *)&local_58;
  local_58 = local_80;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_54,a_Stack_7c);
  FUN_00513834((FetchAllScoreSummariesResponse *)&local_48,pFVar3);
  iVar2 = (*pcVar5)(piVar4,param_3,param_7,(FetchAllScoreSummariesResponse *)&local_48);
  FUN_00512f2c((FetchAllScoreSummariesResponse *)&local_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_54);
  if (iVar2 == 0) {
    local_48 = 0xfffffffd;
    local_44 = iVar2;
    local_40 = iVar2;
    local_3c = iVar2;
    FetchAllScoreSummariesResponse::FetchAllScoreSummariesResponse
              (param_1,(FetchAllScoreSummariesResponse *)&local_48);
    this = (FetchAllScoreSummariesResponse *)&local_48;
    goto LAB_00515f34;
  }
  local_64 = 0;
  local_60 = 0;
  local_5c = 0;
  local_54 = 0;
  local_50 = 0;
  local_4c = 0;
  local_68 = 0xfffffffe;
  local_58 = (mutex *)0xfffffffb;
  iVar2 = FUN_00553a80();
  this = (FetchAllScoreSummariesResponse *)&local_78;
  if (iVar2 == 0) {
    local_74 = 0;
    local_78 = local_80;
    if (local_80 == (mutex *)0x0) {
                    /* WARNING: Subroutine does not return */
      FUN_007c4c60(1);
    }
    std::mutex::lock(local_80);
    local_74 = 1;
    if (local_80[8] == (mutex)0x0) {
      puVar6 = (unique_lock *)(local_80 + 4);
      FUN_007bfd24(&local_98);
      lVar1 = (ulonglong)param_5 * 1000000 + CONCAT44(param_6 * 1000000,local_98);
      local_88 = (undefined4)lVar1;
      iStack_84 = iStack_94 + (int)((ulonglong)lVar1 >> 0x20);
      do {
        if (local_80[8] != (mutex)0x0) goto LAB_00515efe;
        iVar2 = std::condition_variable::
                __wait_until_impl<std::chrono::duration<long_long,std::ratio<1ll,1000000000ll>>>
                          (puVar6,(time_point *)this);
      } while (iVar2 != 1);
      if (local_80[8] != (mutex)0x0) goto LAB_00515efe;
    }
    else {
LAB_00515efe:
      pFVar3 = (FetchAllScoreSummariesResponse *)(local_80 + 0xc);
    }
    FetchAllScoreSummariesResponse::FetchAllScoreSummariesResponse
              ((FetchAllScoreSummariesResponse *)&local_48,pFVar3);
    std::unique_lock<std::mutex>::~unique_lock((unique_lock<std::mutex> *)this);
  }
  else {
    FUN_005166ae(4,"Blocking calls are not allowed from the UI thread.");
    FetchAllScoreSummariesResponse::FetchAllScoreSummariesResponse
              ((FetchAllScoreSummariesResponse *)&local_48,
               (FetchAllScoreSummariesResponse *)&local_68);
  }
  FetchAllScoreSummariesResponse::FetchAllScoreSummariesResponse
            (this,(FetchAllScoreSummariesResponse *)&local_48);
  std::vector<gpg::ScoreSummary,std::allocator<gpg::ScoreSummary>>::~vector
            ((vector<gpg::ScoreSummary,std::allocator<gpg::ScoreSummary>> *)&local_44);
  std::vector<gpg::ScoreSummary,std::allocator<gpg::ScoreSummary>>::~vector
            ((vector<gpg::ScoreSummary,std::allocator<gpg::ScoreSummary>> *)&local_54);
  std::vector<gpg::ScoreSummary,std::allocator<gpg::ScoreSummary>>::~vector
            ((vector<gpg::ScoreSummary,std::allocator<gpg::ScoreSummary>> *)&local_64);
  FetchAllScoreSummariesResponse::FetchAllScoreSummariesResponse(param_1,this);
LAB_00515f34:
  std::vector<gpg::ScoreSummary,std::allocator<gpg::ScoreSummary>>::~vector
            ((vector<gpg::ScoreSummary,std::allocator<gpg::ScoreSummary>> *)(this + 4));
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)a_Stack_7c);
  FUN_00516580(auStack_90);
  return param_1;
}

// ---- gpg::LeaderboardManager::FetchAllScoreSummariesBlocking  @ 0x515f98
/* gpg::LeaderboardManager::FetchAllScoreSummariesBlocking(gpg::DataSource, std::string const&) */

FetchAllScoreSummariesResponse *
gpg::LeaderboardManager::FetchAllScoreSummariesBlocking(FetchAllScoreSummariesResponse *param_1)

{
  FetchAllScoreSummariesResponse aFStack_20 [4];
  vector<gpg::ScoreSummary,std::allocator<gpg::ScoreSummary>> avStack_1c [12];
  
  FetchAllScoreSummariesBlocking(aFStack_20);
  FetchAllScoreSummariesResponse::FetchAllScoreSummariesResponse(param_1,aFStack_20);
  std::vector<gpg::ScoreSummary,std::allocator<gpg::ScoreSummary>>::~vector(avStack_1c);
  return param_1;
}

// ---- gpg::LeaderboardManager::FetchAllScoreSummariesBlocking  @ 0x515fcc
/* gpg::LeaderboardManager::FetchAllScoreSummariesBlocking(std::string const&) */

string * gpg::LeaderboardManager::FetchAllScoreSummariesBlocking(string *param_1)

{
  undefined4 in_r1;
  FetchAllScoreSummariesResponse aFStack_20 [4];
  vector<gpg::ScoreSummary,std::allocator<gpg::ScoreSummary>> avStack_1c [16];
  
  FetchAllScoreSummariesBlocking(aFStack_20,in_r1,1);
  FetchAllScoreSummariesResponse::FetchAllScoreSummariesResponse
            ((FetchAllScoreSummariesResponse *)param_1,aFStack_20);
  std::vector<gpg::ScoreSummary,std::allocator<gpg::ScoreSummary>>::~vector(avStack_1c);
  return param_1;
}

// ---- gpg::LeaderboardManager::FetchAllScoreSummariesBlocking  @ 0x515ff0
/* gpg::LeaderboardManager::FetchAllScoreSummariesBlocking(std::chrono::duration<long long,
   std::ratio<1ll, 1000ll> >, std::string const&) */

FetchAllScoreSummariesResponse *
gpg::LeaderboardManager::FetchAllScoreSummariesBlocking
          (FetchAllScoreSummariesResponse *param_1,undefined4 param_2,undefined4 param_3,
          undefined4 param_4,undefined4 param_5)

{
  FetchAllScoreSummariesResponse aFStack_20 [4];
  vector<gpg::ScoreSummary,std::allocator<gpg::ScoreSummary>> avStack_1c [16];
  
  FetchAllScoreSummariesBlocking(aFStack_20,param_2,1,param_5,param_3,param_4,param_5);
  FetchAllScoreSummariesResponse::FetchAllScoreSummariesResponse(param_1,aFStack_20);
  std::vector<gpg::ScoreSummary,std::allocator<gpg::ScoreSummary>>::~vector(avStack_1c);
  return param_1;
}

// ---- gpg::LeaderboardManager::ShowAllUIBlocking  @ 0x5160dc
/* gpg::LeaderboardManager::ShowAllUIBlocking(std::chrono::duration<long long, std::ratio<1ll,
   1000ll> >) */

undefined4
gpg::LeaderboardManager::ShowAllUIBlocking
          (undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  undefined4 uVar2;
  undefined4 extraout_r1;
  int *piVar3;
  code *pcVar4;
  undefined1 auStack_5c [4];
  undefined4 local_58;
  __shared_count a_Stack_54 [4];
  undefined4 local_50;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_4c [4];
  undefined1 auStack_48 [36];
  
  FUN_00510a86(auStack_48,*param_1);
  FUN_0051683e(auStack_5c,auStack_48);
  FUN_0050811a(auStack_48);
  FUN_005092a8(&local_58,0,&local_50);
  piVar3 = (int *)*param_1;
  pcVar4 = *(code **)(*piVar3 + 0x60);
  local_50 = local_58;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count(a_Stack_4c,a_Stack_54);
  FUN_005086f8(auStack_48,&local_50);
  iVar1 = (*pcVar4)(piVar3,auStack_48);
  FUN_005082ea(auStack_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_4c);
  if (iVar1 == 0) {
    uVar2 = 0xfffffffd;
  }
  else {
    uVar2 = FUN_0051601c(&local_58,extraout_r1,param_3,param_4);
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)a_Stack_54);
  FUN_00516580(auStack_5c);
  return uVar2;
}

// ---- gpg::LeaderboardManager::ShowAllUIBlocking  @ 0x5161ac
/* gpg::LeaderboardManager::ShowAllUIBlocking() */

void gpg::LeaderboardManager::ShowAllUIBlocking(void)

{
  undefined4 in_r0;
  undefined4 in_r1;
  
  ShowAllUIBlocking(in_r0,in_r1,0x6cebb800,0x49);
  return;
}

// ---- gpg::LeaderboardManager::ShowUIBlocking  @ 0x5161bc
/* gpg::LeaderboardManager::ShowUIBlocking(std::chrono::duration<long long, std::ratio<1ll, 1000ll>
   >, std::string const&, gpg::LeaderboardTimeSpan) */

undefined4
gpg::LeaderboardManager::ShowUIBlocking
          (undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
          undefined4 param_5,undefined4 param_6)

{
  int iVar1;
  undefined4 uVar2;
  undefined4 extraout_r1;
  int *piVar3;
  code *pcVar4;
  undefined1 auStack_5c [4];
  undefined4 local_58;
  __shared_count a_Stack_54 [4];
  undefined4 local_50;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_4c [4];
  undefined1 auStack_48 [36];
  
  FUN_00510a86(auStack_48,*param_1);
  FUN_0051683e(auStack_5c,auStack_48);
  FUN_0050811a(auStack_48);
  FUN_005092a8(&local_58,0,&local_50);
  piVar3 = (int *)*param_1;
  pcVar4 = *(code **)(*piVar3 + 100);
  local_50 = local_58;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count(a_Stack_4c,a_Stack_54);
  FUN_005086f8(auStack_48,&local_50);
  iVar1 = (*pcVar4)(piVar3,param_5,param_6,auStack_48);
  FUN_005082ea(auStack_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_4c);
  if (iVar1 == 0) {
    uVar2 = 0xfffffffd;
  }
  else {
    uVar2 = FUN_0051601c(&local_58,extraout_r1,param_3,param_4);
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)a_Stack_54);
  FUN_00516580(auStack_5c);
  return uVar2;
}

// ---- gpg::LeaderboardManager::ShowUIBlocking  @ 0x51628e
/* gpg::LeaderboardManager::ShowUIBlocking(std::chrono::duration<long long, std::ratio<1ll, 1000ll>
   >, std::string const&) */

void gpg::LeaderboardManager::ShowUIBlocking(void)

{
  ShowUIBlocking();
  return;
}

// ---- gpg::LeaderboardManager::ShowUIBlocking  @ 0x5162a4
/* gpg::LeaderboardManager::ShowUIBlocking(std::string const&) */

void gpg::LeaderboardManager::ShowUIBlocking(string *param_1)

{
  undefined4 in_r1;
  
  ShowUIBlocking(param_1,in_r1,0x6cebb800,0x49);
  return;
}

// ---- gpg::LeaderboardManager::ShowUIBlocking  @ 0x5162c0
/* gpg::LeaderboardManager::ShowUIBlocking(std::string const&, gpg::LeaderboardTimeSpan) */

void __thiscall
gpg::LeaderboardManager::ShowUIBlocking
          (LeaderboardManager *this,undefined4 param_1,undefined4 param_3)

{
  ShowUIBlocking(this,param_1,0x6cebb800,0x49,param_1,param_3,param_3);
  return;
}

// ---- gpg::MessageListenerHelper::MessageListenerHelper  @ 0x516b9c
/* gpg::MessageListenerHelper::MessageListenerHelper(std::shared_ptr<gpg::MessageListenerHelperImpl>)
    */

void __thiscall
gpg::MessageListenerHelper::MessageListenerHelper(MessageListenerHelper *this,undefined4 *param_2)

{
  bool bVar1;
  int iVar2;
  int *piVar3;
  
  *(undefined4 *)this = *param_2;
  iVar2 = param_2[1];
  *(int *)(this + 4) = iVar2;
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

// ---- gpg::MessageListenerHelper::SetOnDisconnectedCallback  @ 0x516bc0
/* gpg::MessageListenerHelper::SetOnDisconnectedCallback(std::function<void (long long, std::string
   const&)>) */

MessageListenerHelper * __thiscall
gpg::MessageListenerHelper::SetOnDisconnectedCallback
          (MessageListenerHelper *this,_Any_data *param_2)

{
  undefined4 uVar1;
  undefined4 uVar2;
  int iVar3;
  _Any_data a_Stack_28 [8];
  undefined4 local_20;
  undefined4 local_1c;
  
  iVar3 = *(int *)this;
  local_20 = 0;
  std::swap<std::_Any_data>(param_2,a_Stack_28);
  uVar1 = *(undefined4 *)(param_2 + 8);
  *(undefined4 *)(param_2 + 8) = local_20;
  uVar2 = *(undefined4 *)(param_2 + 0xc);
  *(undefined4 *)(param_2 + 0xc) = local_1c;
  local_20 = uVar1;
  local_1c = uVar2;
  std::swap<std::_Any_data>(a_Stack_28,(_Any_data *)(iVar3 + 0x10));
  uVar1 = *(undefined4 *)(iVar3 + 0x18);
  *(undefined4 *)(iVar3 + 0x18) = local_20;
  uVar2 = *(undefined4 *)(iVar3 + 0x1c);
  *(undefined4 *)(iVar3 + 0x1c) = local_1c;
  local_20 = uVar1;
  local_1c = uVar2;
  std::_Function_base::~_Function_base((_Function_base *)a_Stack_28);
  return this;
}

// ---- gpg::MessageListenerHelper::SetOnMessageReceivedCallback  @ 0x516c0c
/* gpg::MessageListenerHelper::SetOnMessageReceivedCallback(std::function<void (long long,
   std::string const&, std::vector<unsigned char, std::allocator<unsigned char> > const&, bool)>) */

MessageListenerHelper * __thiscall
gpg::MessageListenerHelper::SetOnMessageReceivedCallback
          (MessageListenerHelper *this,_Any_data *param_2)

{
  undefined4 uVar1;
  undefined4 uVar2;
  _Any_data *p_Var3;
  _Any_data a_Stack_28 [8];
  undefined4 local_20;
  undefined4 local_1c;
  
  p_Var3 = *(_Any_data **)this;
  local_20 = 0;
  std::swap<std::_Any_data>(param_2,a_Stack_28);
  uVar1 = *(undefined4 *)(param_2 + 8);
  *(undefined4 *)(param_2 + 8) = local_20;
  uVar2 = *(undefined4 *)(param_2 + 0xc);
  *(undefined4 *)(param_2 + 0xc) = local_1c;
  local_20 = uVar1;
  local_1c = uVar2;
  std::swap<std::_Any_data>(a_Stack_28,p_Var3);
  uVar1 = *(undefined4 *)(p_Var3 + 8);
  *(undefined4 *)(p_Var3 + 8) = local_20;
  uVar2 = *(undefined4 *)(p_Var3 + 0xc);
  *(undefined4 *)(p_Var3 + 0xc) = local_1c;
  local_20 = uVar1;
  local_1c = uVar2;
  std::_Function_base::~_Function_base((_Function_base *)a_Stack_28);
  return this;
}

// ---- gpg::MessageListenerHelper::MessageListenerHelper  @ 0x516cd8
/* gpg::MessageListenerHelper::MessageListenerHelper() */

MessageListenerHelper * __thiscall
gpg::MessageListenerHelper::MessageListenerHelper(MessageListenerHelper *this)

{
  undefined4 in_r3;
  undefined1 auStack_c [4];
  
  FUN_00516c58(this,0,auStack_c,in_r3,this);
  return this;
}

// ---- gpg::MultiplayerInvitation::MultiplayerInvitation  @ 0x516cec
/* gpg::MultiplayerInvitation::MultiplayerInvitation() */

void __thiscall gpg::MultiplayerInvitation::MultiplayerInvitation(MultiplayerInvitation *this)

{
  *(undefined4 *)this = 0;
  *(undefined4 *)(this + 4) = 0;
  *(undefined4 *)(this + 8) = 0;
  *(undefined4 *)(this + 0xc) = 0;
  return;
}

// ---- gpg::MultiplayerInvitation::MultiplayerInvitation  @ 0x516cf8
/* gpg::MultiplayerInvitation::MultiplayerInvitation(gpg::MultiplayerInvitation&&) */

void __thiscall
gpg::MultiplayerInvitation::MultiplayerInvitation
          (MultiplayerInvitation *this,MultiplayerInvitation *param_1)

{
  undefined4 uVar1;
  
  *(undefined4 *)this = *(undefined4 *)param_1;
  *(undefined4 *)(this + 4) = 0;
  uVar1 = *(undefined4 *)(param_1 + 4);
  *(undefined4 *)(param_1 + 4) = 0;
  *(undefined4 *)(this + 4) = uVar1;
  uVar1 = *(undefined4 *)(param_1 + 8);
  *(undefined4 *)param_1 = 0;
  *(undefined4 *)(this + 0xc) = 0;
  *(undefined4 *)(this + 8) = uVar1;
  uVar1 = *(undefined4 *)(param_1 + 0xc);
  *(undefined4 *)(param_1 + 0xc) = 0;
  *(undefined4 *)(this + 0xc) = uVar1;
  *(undefined4 *)(param_1 + 8) = 0;
  return;
}

// ---- gpg::MultiplayerInvitation::Valid  @ 0x516d1a
/* gpg::MultiplayerInvitation::Valid() const */

bool __thiscall gpg::MultiplayerInvitation::Valid(MultiplayerInvitation *this)

{
  if (*(int *)(this + 8) == 0) {
    return *(int *)this != 0;
  }
  return true;
}

// ---- gpg::MultiplayerInvitation::Type  @ 0x516d2c
/* gpg::MultiplayerInvitation::Type() const */

undefined4 __thiscall gpg::MultiplayerInvitation::Type(MultiplayerInvitation *this)

{
  int iVar1;
  undefined4 uVar2;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get type from an invalid MultiplayerInvitation.");
    return 1;
  }
  if (*(int *)this == 0) {
    uVar2 = 2;
  }
  else {
    uVar2 = 1;
  }
  return uVar2;
}

// ---- gpg::MultiplayerInvitation::Id  @ 0x516d54
/* gpg::MultiplayerInvitation::Id() const */

undefined4 * __thiscall gpg::MultiplayerInvitation::Id(MultiplayerInvitation *this)

{
  int iVar1;
  undefined4 *puVar2;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get Id from an invalid MultiplayerInvitation.");
    return &DAT_00960b7c;
  }
  iVar1 = Type(this);
  if (iVar1 == 1) {
    puVar2 = *(undefined4 **)this;
  }
  else {
    puVar2 = (undefined4 *)(*(int *)(this + 8) + 4);
  }
  return puVar2;
}

// ---- gpg::MultiplayerInvitation::CreationTime  @ 0x516d8c
/* gpg::MultiplayerInvitation::CreationTime() const */

void gpg::MultiplayerInvitation::CreationTime(void)

{
  undefined4 *in_r0;
  int iVar1;
  MultiplayerInvitation *in_r1;
  undefined4 uVar2;
  undefined4 *puVar3;
  undefined4 uVar4;
  
  iVar1 = Valid(in_r1);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get creation time from an invalid MultiplayerInvitation.");
    uVar2 = 0;
    uVar4 = 0;
  }
  else {
    iVar1 = Type(in_r1);
    if (iVar1 == 1) {
      puVar3 = (undefined4 *)(*(int *)in_r1 + 8);
    }
    else {
      puVar3 = (undefined4 *)(*(int *)(in_r1 + 8) + 0x10);
    }
    uVar2 = *puVar3;
    uVar4 = puVar3[1];
  }
  *in_r0 = uVar2;
  in_r0[1] = uVar4;
  return;
}

// ---- gpg::MultiplayerInvitation::InvitingParticipant  @ 0x516dcc
/* gpg::MultiplayerInvitation::InvitingParticipant() const */

void gpg::MultiplayerInvitation::InvitingParticipant(void)

{
  MultiplayerParticipant *in_r0;
  int iVar1;
  MultiplayerInvitation *in_r1;
  MultiplayerParticipant aMStack_18 [12];
  
  iVar1 = Valid(in_r1);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get inviting participant from an invalid MultiplayerInvitation.");
    MultiplayerParticipant::MultiplayerParticipant(aMStack_18);
    MultiplayerParticipant::MultiplayerParticipant(in_r0,aMStack_18);
    MultiplayerParticipant::~MultiplayerParticipant(aMStack_18);
  }
  else {
    iVar1 = Type(in_r1);
    if (iVar1 == 1) {
      iVar1 = *(int *)in_r1;
    }
    else {
      iVar1 = *(int *)(in_r1 + 8);
    }
    MultiplayerParticipant::MultiplayerParticipant(in_r0,(MultiplayerParticipant *)(iVar1 + 0x18));
  }
  return;
}

// ---- gpg::MultiplayerInvitation::Participants  @ 0x516e28
/* gpg::MultiplayerInvitation::Participants() const */

undefined4 * __thiscall gpg::MultiplayerInvitation::Participants(MultiplayerInvitation *this)

{
  int iVar1;
  undefined4 *puVar2;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get participants from an invalid MultiplayerInvitation.");
    return &DAT_00960b94;
  }
  iVar1 = Type(this);
  if (iVar1 == 1) {
    puVar2 = (undefined4 *)(*(int *)this + 0x48);
  }
  else {
    puVar2 = (undefined4 *)(*(int *)(this + 8) + 0x28);
  }
  return puVar2;
}

// ---- gpg::MultiplayerInvitation::AutomatchingSlotsAvailable  @ 0x516e60
/* gpg::MultiplayerInvitation::AutomatchingSlotsAvailable() const */

undefined4 __thiscall
gpg::MultiplayerInvitation::AutomatchingSlotsAvailable(MultiplayerInvitation *this)

{
  int iVar1;
  undefined4 *puVar2;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,
                 "Attempting to get available automatching slots from an invalid MultiplayerInvitation."
                );
    return 0;
  }
  iVar1 = Type(this);
  if (iVar1 == 1) {
    puVar2 = (undefined4 *)(*(int *)this + 0x70);
  }
  else {
    puVar2 = (undefined4 *)(*(int *)(this + 8) + 0x38);
  }
  return *puVar2;
}

// ---- gpg::MultiplayerInvitation::Variant  @ 0x516e94
/* gpg::MultiplayerInvitation::Variant() const */

undefined4 __thiscall gpg::MultiplayerInvitation::Variant(MultiplayerInvitation *this)

{
  int iVar1;
  undefined4 *puVar2;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get variant from an invalid MultiplayerInvitation.");
    return 0;
  }
  iVar1 = Type(this);
  if (iVar1 == 1) {
    puVar2 = (undefined4 *)(*(int *)this + 0x80);
  }
  else {
    puVar2 = (undefined4 *)(*(int *)(this + 8) + 0x48);
  }
  return *puVar2;
}

// ---- gpg::MultiplayerInvitation::MultiplayerInvitation  @ 0x516ec8
/* gpg::MultiplayerInvitation::MultiplayerInvitation(std::shared_ptr<gpg::RealTimeRoomImpl const>)
    */

MultiplayerInvitation * __thiscall
gpg::MultiplayerInvitation::MultiplayerInvitation(MultiplayerInvitation *this,undefined4 *param_2)

{
  *(undefined4 *)this = 0;
  *(undefined4 *)(this + 4) = 0;
  *(undefined4 *)(this + 8) = *param_2;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(this + 0xc),
             (__shared_count *)(param_2 + 1));
  return this;
}

// ---- gpg::MultiplayerInvitation::MultiplayerInvitation  @ 0x516ee4
/* gpg::MultiplayerInvitation::MultiplayerInvitation(std::shared_ptr<gpg::TurnBasedMatchImpl const>)
    */

MultiplayerInvitation * __thiscall
gpg::MultiplayerInvitation::MultiplayerInvitation(MultiplayerInvitation *this,undefined4 *param_2)

{
  *(undefined4 *)this = *param_2;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(this + 4),
             (__shared_count *)(param_2 + 1));
  *(undefined4 *)(this + 8) = 0;
  *(undefined4 *)(this + 0xc) = 0;
  return this;
}

// ---- gpg::MultiplayerInvitation::MultiplayerInvitation  @ 0x516efe
/* gpg::MultiplayerInvitation::MultiplayerInvitation(gpg::MultiplayerInvitation const&) */

MultiplayerInvitation * __thiscall
gpg::MultiplayerInvitation::MultiplayerInvitation
          (MultiplayerInvitation *this,MultiplayerInvitation *param_1)

{
  *(undefined4 *)this = *(undefined4 *)param_1;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(this + 4),
             (__shared_count *)(param_1 + 4));
  *(undefined4 *)(this + 8) = *(undefined4 *)(param_1 + 8);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(this + 0xc),
             (__shared_count *)(param_1 + 0xc));
  return this;
}

// ---- gpg::MultiplayerInvitation::operator=  @ 0x516f24
/* gpg::MultiplayerInvitation::TEMPNAMEPLACEHOLDERVALUE(gpg::MultiplayerInvitation&&) */

MultiplayerInvitation * __thiscall
gpg::MultiplayerInvitation::operator=(MultiplayerInvitation *this,MultiplayerInvitation *param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 local_1c [2];
  
  uVar1 = *(undefined4 *)param_1;
  uVar2 = *(undefined4 *)(param_1 + 4);
  *(undefined4 *)(param_1 + 4) = 0;
  *(undefined4 *)param_1 = 0;
  *(undefined4 *)this = uVar1;
  local_1c[0] = *(undefined4 *)(this + 4);
  *(undefined4 *)(this + 4) = uVar2;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_1c);
  uVar1 = *(undefined4 *)(param_1 + 8);
  *(undefined4 *)(param_1 + 8) = 0;
  uVar2 = *(undefined4 *)(param_1 + 0xc);
  *(undefined4 *)(param_1 + 0xc) = 0;
  *(undefined4 *)(this + 8) = uVar1;
  local_1c[0] = *(undefined4 *)(this + 0xc);
  *(undefined4 *)(this + 0xc) = uVar2;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_1c);
  return this;
}

// ---- gpg::MultiplayerInvitation::operator=  @ 0x516f9a
/* gpg::MultiplayerInvitation::TEMPNAMEPLACEHOLDERVALUE(gpg::MultiplayerInvitation const&) */

MultiplayerInvitation * __thiscall
gpg::MultiplayerInvitation::operator=(MultiplayerInvitation *this,MultiplayerInvitation *param_1)

{
  *(undefined4 *)this = *(undefined4 *)param_1;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::operator=
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(this + 4),
             (__shared_count *)(param_1 + 4));
  *(undefined4 *)(this + 8) = *(undefined4 *)(param_1 + 8);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::operator=
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(this + 0xc),
             (__shared_count *)(param_1 + 0xc));
  return this;
}

// ---- gpg::MultiplayerParticipant::MultiplayerParticipant  @ 0x516fc0
/* gpg::MultiplayerParticipant::MultiplayerParticipant() */

void __thiscall gpg::MultiplayerParticipant::MultiplayerParticipant(MultiplayerParticipant *this)

{
  *(undefined4 *)this = 0;
  *(undefined4 *)(this + 4) = 0;
  return;
}

// ---- gpg::MultiplayerParticipant::MultiplayerParticipant  @ 0x516fc8
/* gpg::MultiplayerParticipant::MultiplayerParticipant(std::shared_ptr<gpg::MultiplayerParticipantImpl
   const>) */

void __thiscall
gpg::MultiplayerParticipant::MultiplayerParticipant
          (MultiplayerParticipant *this,undefined4 *param_2)

{
  bool bVar1;
  int iVar2;
  int *piVar3;
  
  *(undefined4 *)this = *param_2;
  iVar2 = param_2[1];
  *(int *)(this + 4) = iVar2;
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

// ---- gpg::MultiplayerParticipant::MultiplayerParticipant  @ 0x516fec
/* gpg::MultiplayerParticipant::MultiplayerParticipant(gpg::MultiplayerParticipant const&) */

void __thiscall
gpg::MultiplayerParticipant::MultiplayerParticipant
          (MultiplayerParticipant *this,MultiplayerParticipant *param_1)

{
  bool bVar1;
  int iVar2;
  int *piVar3;
  
  *(undefined4 *)this = *(undefined4 *)param_1;
  iVar2 = *(int *)(param_1 + 4);
  *(int *)(this + 4) = iVar2;
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

// ---- gpg::MultiplayerParticipant::MultiplayerParticipant  @ 0x517010
/* gpg::MultiplayerParticipant::MultiplayerParticipant(gpg::MultiplayerParticipant&&) */

void __thiscall
gpg::MultiplayerParticipant::MultiplayerParticipant
          (MultiplayerParticipant *this,MultiplayerParticipant *param_1)

{
  undefined4 uVar1;
  
  *(undefined4 *)this = *(undefined4 *)param_1;
  *(undefined4 *)(this + 4) = 0;
  uVar1 = *(undefined4 *)(param_1 + 4);
  *(undefined4 *)(param_1 + 4) = 0;
  *(undefined4 *)(this + 4) = uVar1;
  *(undefined4 *)param_1 = 0;
  return;
}

// ---- gpg::MultiplayerParticipant::Valid  @ 0x517024
/* gpg::MultiplayerParticipant::Valid() const */

bool __thiscall gpg::MultiplayerParticipant::Valid(MultiplayerParticipant *this)

{
  return *(int *)this != 0;
}

// ---- gpg::MultiplayerParticipant::Id  @ 0x517030
/* gpg::MultiplayerParticipant::Id() const */

undefined4 * __thiscall gpg::MultiplayerParticipant::Id(MultiplayerParticipant *this)

{
  int iVar1;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get id of an invalid MultiplayerParticipant");
    return &DAT_00960b7c;
  }
  return *(undefined4 **)this;
}

// ---- gpg::MultiplayerParticipant::DisplayName  @ 0x517058
/* gpg::MultiplayerParticipant::DisplayName() const */

undefined4 * __thiscall gpg::MultiplayerParticipant::DisplayName(MultiplayerParticipant *this)

{
  int iVar1;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get name of an invalid MultiplayerParticipant");
    return &DAT_00960b7c;
  }
  return (undefined4 *)(*(int *)this + 4);
}

// ---- gpg::MultiplayerParticipant::AvatarUrl  @ 0x517084
/* gpg::MultiplayerParticipant::AvatarUrl(gpg::ImageResolution) const */

undefined4 * __thiscall
gpg::MultiplayerParticipant::AvatarUrl(MultiplayerParticipant *this,int param_2)

{
  int iVar1;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get avatar URL of an invalid MultiplayerParticipant");
    return &DAT_00960b7c;
  }
  if (param_2 != 1) {
    if (param_2 == 2) {
      return (undefined4 *)(*(int *)this + 0xc);
    }
    FUN_005166ae(4,"AvatarUrl: Invalid image resolution used.  Defaulting to ICON.");
  }
  return (undefined4 *)(*(int *)this + 8);
}

// ---- gpg::MultiplayerParticipant::HasPlayer  @ 0x5170cc
/* gpg::MultiplayerParticipant::HasPlayer() const */

undefined4 __thiscall gpg::MultiplayerParticipant::HasPlayer(MultiplayerParticipant *this)

{
  int iVar1;
  undefined4 uVar2;
  
  iVar1 = Valid(this);
  if (iVar1 != 0) {
    uVar2 = gpg::Player::Valid((Player *)(*(int *)this + 0x10));
    return uVar2;
  }
  FUN_005166ae(4,"Attempting to call HasPlayer on an invalid MultiplayerParticipant");
  return 0;
}

// ---- gpg::MultiplayerParticipant::Player  @ 0x5170f8
/* gpg::MultiplayerParticipant::Player() const */

void gpg::MultiplayerParticipant::Player(void)

{
  Player *in_r0;
  int iVar1;
  MultiplayerParticipant *in_r1;
  Player *pPVar2;
  
  iVar1 = Valid(in_r1);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get player from an invalid MultiplayerParticipant");
    pPVar2 = (Player *)&DAT_00960bc8;
  }
  else {
    pPVar2 = (Player *)(*(int *)in_r1 + 0x10);
  }
  gpg::Player::Player(in_r0,pPVar2);
  return;
}

// ---- gpg::MultiplayerParticipant::Status  @ 0x517130
/* gpg::MultiplayerParticipant::Status() const */

undefined4 __thiscall gpg::MultiplayerParticipant::Status(MultiplayerParticipant *this)

{
  int iVar1;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get status from an invalid MultiplayerParticipant");
    return 6;
  }
  return *(undefined4 *)(*(int *)this + 0x18);
}

// ---- gpg::MultiplayerParticipant::HasMatchResult  @ 0x517154
/* gpg::MultiplayerParticipant::HasMatchResult() const */

undefined4 __thiscall gpg::MultiplayerParticipant::HasMatchResult(MultiplayerParticipant *this)

{
  int iVar1;
  undefined4 uVar2;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to call HasMatchResult on an invalid MultiplayerParticipant");
    uVar2 = 0;
  }
  else {
    uVar2 = 0;
    if (*(int *)(*(int *)this + 0x1c) != 4) {
      uVar2 = 1;
    }
  }
  return uVar2;
}

// ---- gpg::MultiplayerParticipant::MatchResult  @ 0x517180
/* gpg::MultiplayerParticipant::MatchResult() const */

undefined4 __thiscall gpg::MultiplayerParticipant::MatchResult(MultiplayerParticipant *this)

{
  int iVar1;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get result from an invalid MultiplayerParticipant");
    return 4;
  }
  return *(undefined4 *)(*(int *)this + 0x1c);
}

// ---- gpg::MultiplayerParticipant::MatchRank  @ 0x5171a4
/* gpg::MultiplayerParticipant::MatchRank() const */

undefined4 __thiscall gpg::MultiplayerParticipant::MatchRank(MultiplayerParticipant *this)

{
  int iVar1;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get rank from an invalid MultiplayerParticipant");
    return 0;
  }
  return *(undefined4 *)(*(int *)this + 0x20);
}

// ---- gpg::MultiplayerParticipant::IsConnectedToRoom  @ 0x5171d0
/* gpg::MultiplayerParticipant::IsConnectedToRoom() const */

undefined1 __thiscall gpg::MultiplayerParticipant::IsConnectedToRoom(MultiplayerParticipant *this)

{
  int iVar1;
  undefined1 uVar2;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to call IsConnectedToRoom on an invalid MultiplayerParticipant");
    uVar2 = 0;
  }
  else {
    uVar2 = *(undefined1 *)(*(int *)this + 0x24);
  }
  return uVar2;
}

// ---- gpg::MultiplayerParticipant::~MultiplayerParticipant  @ 0x5171f8
/* gpg::MultiplayerParticipant::~MultiplayerParticipant() */

MultiplayerParticipant * __thiscall
gpg::MultiplayerParticipant::~MultiplayerParticipant(MultiplayerParticipant *this)

{
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(this + 4));
  return this;
}

// ---- gpg::MultiplayerParticipant::operator=  @ 0x517206
/* gpg::MultiplayerParticipant::TEMPNAMEPLACEHOLDERVALUE(gpg::MultiplayerParticipant&&) */

MultiplayerParticipant * __thiscall
gpg::MultiplayerParticipant::operator=(MultiplayerParticipant *this,MultiplayerParticipant *param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 local_c;
  
  uVar1 = *(undefined4 *)param_1;
  uVar2 = *(undefined4 *)(param_1 + 4);
  *(undefined4 *)(param_1 + 4) = 0;
  *(undefined4 *)param_1 = 0;
  *(undefined4 *)this = uVar1;
  local_c = *(undefined4 *)(this + 4);
  *(undefined4 *)(this + 4) = uVar2;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_c);
  return this;
}

// ---- gpg::MultiplayerParticipant::operator=  @ 0x51722c
/* gpg::MultiplayerParticipant::TEMPNAMEPLACEHOLDERVALUE(gpg::MultiplayerParticipant const&) */

MultiplayerParticipant * __thiscall
gpg::MultiplayerParticipant::operator=(MultiplayerParticipant *this,MultiplayerParticipant *param_1)

{
  bool bVar1;
  int *piVar2;
  int iVar3;
  
  *(undefined4 *)this = *(undefined4 *)param_1;
  iVar3 = *(int *)(param_1 + 4);
  if (iVar3 != *(int *)(this + 4)) {
    if (iVar3 != 0) {
      piVar2 = (int *)(iVar3 + 4);
      DataMemoryBarrier(0x1f);
      do {
        ExclusiveAccess(piVar2);
        bVar1 = (bool)hasExclusiveAccess(piVar2);
      } while (!bVar1);
      *piVar2 = *piVar2 + 1;
      DataMemoryBarrier(0x1f);
    }
    if (*(int *)(this + 4) != 0) {
      FUN_0033ce90();
    }
    *(int *)(this + 4) = iVar3;
  }
  return this;
}

// ---- gpg::NearbyConnections::GetLocalEndpointId  @ 0x5173d8
/* gpg::NearbyConnections::GetLocalEndpointId() */

void gpg::NearbyConnections::GetLocalEndpointId(void)

{
  undefined4 *in_r0;
  int *in_r1;
  int *local_14 [2];
  
  if ((int *)*in_r1 == (int *)0x0) {
    FUN_007c6a60();
  }
  else {
    local_14[0] = in_r1;
    (**(code **)(*(int *)*in_r1 + 0xc))(local_14);
    *in_r0 = local_14[0];
    local_14[0] = (int *)&DAT_00972528;
    FUN_007c5914(local_14);
  }
  return;
}

// ---- gpg::NearbyConnections::GetLocalDeviceId  @ 0x517418
/* gpg::NearbyConnections::GetLocalDeviceId() */

void gpg::NearbyConnections::GetLocalDeviceId(void)

{
  undefined4 *in_r0;
  int *in_r1;
  int *local_14 [2];
  
  if ((int *)*in_r1 == (int *)0x0) {
    FUN_007c6a60();
  }
  else {
    local_14[0] = in_r1;
    (**(code **)(*(int *)*in_r1 + 0x10))(local_14);
    *in_r0 = local_14[0];
    local_14[0] = (int *)&DAT_00972528;
    FUN_007c5914(local_14);
  }
  return;
}

// ---- gpg::NearbyConnections::StopAdvertising  @ 0x517458
/* gpg::NearbyConnections::StopAdvertising() */

void __thiscall gpg::NearbyConnections::StopAdvertising(NearbyConnections *this)

{
  if (*(int **)this != (int *)0x0) {
    (**(code **)(**(int **)this + 0x18))();
  }
  return;
}

// ---- gpg::NearbyConnections::RejectConnectionRequest  @ 0x517466
/* gpg::NearbyConnections::RejectConnectionRequest(std::string const&) */

void gpg::NearbyConnections::RejectConnectionRequest(string *param_1)

{
  if (*(int **)param_1 != (int *)0x0) {
    (**(code **)(**(int **)param_1 + 0x20))();
  }
  return;
}

// ---- gpg::NearbyConnections::StopDiscovery  @ 0x517474
/* gpg::NearbyConnections::StopDiscovery(std::string const&) */

void gpg::NearbyConnections::StopDiscovery(string *param_1)

{
  if (*(int **)param_1 != (int *)0x0) {
    (**(code **)(**(int **)param_1 + 0x28))();
  }
  return;
}

// ---- gpg::NearbyConnections::SendReliableMessage  @ 0x517496
/* gpg::NearbyConnections::SendReliableMessage(std::string const&, std::vector<unsigned char,
   std::allocator<unsigned char> > const&) */

void gpg::NearbyConnections::SendReliableMessage(string *param_1,vector *param_2)

{
  if (*(int **)param_1 != (int *)0x0) {
    (**(code **)(**(int **)param_1 + 0x30))();
  }
  return;
}

// ---- gpg::NearbyConnections::SendReliableMessage  @ 0x5174a4
/* gpg::NearbyConnections::SendReliableMessage(std::vector<std::string, std::allocator<std::string >
   > const&, std::vector<unsigned char, std::allocator<unsigned char> > const&) */

void gpg::NearbyConnections::SendReliableMessage(vector *param_1,vector *param_2)

{
  if (*(int **)param_1 != (int *)0x0) {
    (**(code **)(**(int **)param_1 + 0x34))();
  }
  return;
}

// ---- gpg::NearbyConnections::SendUnreliableMessage  @ 0x5174b2
/* gpg::NearbyConnections::SendUnreliableMessage(std::string const&, std::vector<unsigned char,
   std::allocator<unsigned char> > const&) */

void gpg::NearbyConnections::SendUnreliableMessage(string *param_1,vector *param_2)

{
  if (*(int **)param_1 != (int *)0x0) {
    (**(code **)(**(int **)param_1 + 0x38))();
  }
  return;
}

// ---- gpg::NearbyConnections::SendUnreliableMessage  @ 0x5174c0
/* gpg::NearbyConnections::SendUnreliableMessage(std::vector<std::string, std::allocator<std::string
   > > const&, std::vector<unsigned char, std::allocator<unsigned char> > const&) */

void gpg::NearbyConnections::SendUnreliableMessage(vector *param_1,vector *param_2)

{
  if (*(int **)param_1 != (int *)0x0) {
    (**(code **)(**(int **)param_1 + 0x3c))();
  }
  return;
}

// ---- gpg::NearbyConnections::Disconnect  @ 0x5174ce
/* gpg::NearbyConnections::Disconnect(std::string const&) */

void gpg::NearbyConnections::Disconnect(string *param_1)

{
  if (*(int **)param_1 != (int *)0x0) {
    (**(code **)(**(int **)param_1 + 0x40))();
  }
  return;
}

// ---- gpg::NearbyConnections::Stop  @ 0x5174dc
/* gpg::NearbyConnections::Stop() */

void __thiscall gpg::NearbyConnections::Stop(NearbyConnections *this)

{
  if (*(int **)this != (int *)0x0) {
    (**(code **)(**(int **)this + 0x44))();
  }
  return;
}

// ---- gpg::NearbyConnections::~NearbyConnections  @ 0x51763c
/* gpg::NearbyConnections::~NearbyConnections() */

NearbyConnections * __thiscall gpg::NearbyConnections::~NearbyConnections(NearbyConnections *this)

{
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(this + 4));
  return this;
}

// ---- gpg::NearbyConnections::AcceptConnectionRequest  @ 0x51764a
/* gpg::NearbyConnections::AcceptConnectionRequest(std::string const&, std::vector<unsigned char,
   std::allocator<unsigned char> > const&, gpg::MessageListenerHelper) */

void __thiscall
gpg::NearbyConnections::AcceptConnectionRequest
          (NearbyConnections *this,undefined4 param_1,undefined4 param_2,undefined4 *param_4)

{
  int *piVar1;
  code *pcVar2;
  undefined4 local_20;
  undefined4 uStack_1c;
  
  piVar1 = *(int **)this;
  if (piVar1 != (int *)0x0) {
    local_20 = *param_4;
    pcVar2 = *(code **)(*piVar1 + 0x1c);
    uStack_1c = param_1;
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&uStack_1c,
               (__shared_count *)(param_4 + 1));
    (*pcVar2)(piVar1,param_1,param_2,&local_20);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&uStack_1c);
  }
  return;
}

// ---- gpg::NearbyConnections::StartDiscovery  @ 0x51768e
/* gpg::NearbyConnections::StartDiscovery(std::string const&, std::chrono::duration<long long,
   std::ratio<1ll, 1000ll> >, gpg::EndpointDiscoveryListenerHelper) */

void gpg::NearbyConnections::StartDiscovery
               (undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
               undefined4 *param_5)

{
  int *piVar1;
  code *pcVar2;
  undefined4 local_28;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_24 [8];
  
  piVar1 = (int *)*param_1;
  if (piVar1 != (int *)0x0) {
    local_28 = *param_5;
    pcVar2 = *(code **)(*piVar1 + 0x24);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
              (a_Stack_24,(__shared_count *)(param_5 + 1));
    (*pcVar2)(piVar1,param_2,param_3,param_4,&local_28);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_24);
  }
  return;
}

// ---- gpg::NearbyConnections::NearbyConnections  @ 0x5177a4
/* gpg::NearbyConnections::NearbyConnections(std::unique_ptr<gpg::NearbyConnectionsBuilderImpl,
   std::default_delete<gpg::NearbyConnectionsBuilderImpl> >, gpg::AndroidPlatformConfiguration
   const&) */

NearbyConnections * __thiscall
gpg::NearbyConnections::NearbyConnections(NearbyConnections *this,undefined4 *param_2)

{
  NearbyConnections *local_18;
  undefined4 local_14;
  
  local_14 = *param_2;
  *param_2 = 0;
  local_18 = this;
  FUN_00542c4c(&local_18,&local_14);
  FUN_005176dc(this,&local_18);
  if (local_18 != (NearbyConnections *)0x0) {
    FUN_00517304();
  }
  FUN_005175cc(&local_14);
  if (*(int **)this != (int *)0x0) {
    (**(code **)(**(int **)this + 8))();
  }
  return this;
}

// ---- gpg::NearbyConnections::StartAdvertising  @ 0x517836
/* gpg::NearbyConnections::StartAdvertising(std::string const&, std::vector<gpg::AppIdentifier,
   std::allocator<gpg::AppIdentifier> > const&, std::chrono::duration<long long, std::ratio<1ll,
   1000ll> >, std::function<void (long long, gpg::StartAdvertisingResult const&)>,
   std::function<void (long long, gpg::ConnectionRequest const&)>) */

void gpg::NearbyConnections::StartAdvertising
               (undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
               undefined4 param_5,undefined4 param_6,int param_7,int param_8)

{
  function *pfVar1;
  code *pcVar2;
  code *pcVar3;
  int *piVar4;
  function<void(long_long,gpg::StartAdvertisingResult_const&)> afStack_c8 [8];
  code *local_c0;
  undefined4 local_bc;
  function<void(long_long,gpg::ConnectionRequest_const&)> afStack_b8 [8];
  code *local_b0;
  undefined4 local_ac;
  function<void(long_long,gpg::StartAdvertisingResult_const&)> afStack_a8 [8];
  code *local_a0;
  function<void(long_long,gpg::ConnectionRequest_const&)> afStack_98 [8];
  code *local_90;
  _Function_base a_Stack_88 [8];
  undefined4 local_80;
  function afStack_78 [8];
  undefined4 local_70;
  function<void(std::function<void()>)> afStack_68 [8];
  code *local_60;
  function<void(long_long,gpg::StartAdvertisingResult_const&)> afStack_58 [8];
  undefined4 local_50;
  function<void(std::function<void()>)> afStack_48 [8];
  code *local_40;
  function<void(long_long,gpg::ConnectionRequest_const&)> afStack_38 [8];
  undefined4 local_30;
  
  piVar4 = (int *)*param_1;
  if (piVar4 != (int *)0x0) {
    pcVar2 = *(code **)(*piVar4 + 0x14);
    pfVar1 = (function *)FUN_00518514(piVar4);
    local_c0 = (code *)0x0;
    pcVar3 = *(code **)(param_7 + 8);
    if (pcVar3 != (code *)0x0) {
      local_bc = *(undefined4 *)(param_7 + 0xc);
      local_c0 = pcVar3;
      (*pcVar3)(afStack_c8,param_7,2);
    }
    if (local_c0 == (code *)0x0) {
      local_a0 = local_c0;
      local_60 = local_c0;
    }
    else {
      local_a0 = (code *)0x0;
      std::function<void(long_long,gpg::StartAdvertisingResult_const&)>::swap
                (afStack_c8,(function *)afStack_a8);
      std::function<void(std::function<void()>)>::function(afStack_68,pfVar1);
    }
    local_50 = 0;
    std::function<void(long_long,gpg::StartAdvertisingResult_const&)>::swap
              (afStack_a8,(function *)afStack_58);
    local_80 = 0;
    std::function<void(std::function<void()>)>::swap(afStack_68,(function *)a_Stack_88);
    local_70 = 0;
    std::function<void(long_long,gpg::StartAdvertisingResult_const&)>::swap(afStack_58,afStack_78);
    std::_Function_base::~_Function_base((_Function_base *)afStack_58);
    std::_Function_base::~_Function_base((_Function_base *)afStack_68);
    std::_Function_base::~_Function_base((_Function_base *)afStack_a8);
    pfVar1 = (function *)FUN_00518514(*param_1);
    local_b0 = (code *)0x0;
    pcVar3 = *(code **)(param_8 + 8);
    if (pcVar3 != (code *)0x0) {
      local_ac = *(undefined4 *)(param_8 + 0xc);
      local_b0 = pcVar3;
      (*pcVar3)(afStack_b8,param_8,2);
    }
    if (local_b0 == (code *)0x0) {
      local_90 = local_b0;
      local_40 = local_b0;
    }
    else {
      local_90 = (code *)0x0;
      std::function<void(long_long,gpg::ConnectionRequest_const&)>::swap
                (afStack_b8,(function *)afStack_98);
      std::function<void(std::function<void()>)>::function(afStack_48,pfVar1);
    }
    local_30 = 0;
    std::function<void(long_long,gpg::ConnectionRequest_const&)>::swap
              (afStack_98,(function *)afStack_38);
    local_60 = (code *)0x0;
    std::function<void(std::function<void()>)>::swap(afStack_48,(function *)afStack_68);
    local_50 = 0;
    std::function<void(long_long,gpg::ConnectionRequest_const&)>::swap
              (afStack_38,(function *)afStack_58);
    std::_Function_base::~_Function_base((_Function_base *)afStack_38);
    std::_Function_base::~_Function_base((_Function_base *)afStack_48);
    std::_Function_base::~_Function_base((_Function_base *)afStack_98);
    (*pcVar2)(piVar4,param_2,param_3,pcVar2,param_5,param_6,a_Stack_88,afStack_68);
    std::_Function_base::~_Function_base((_Function_base *)afStack_58);
    std::_Function_base::~_Function_base((_Function_base *)afStack_68);
    std::_Function_base::~_Function_base((_Function_base *)afStack_b8);
    std::_Function_base::~_Function_base((_Function_base *)afStack_78);
    std::_Function_base::~_Function_base(a_Stack_88);
    std::_Function_base::~_Function_base((_Function_base *)afStack_c8);
  }
  return;
}

// ---- gpg::NearbyConnections::SendConnectionRequest  @ 0x517a7a
/* gpg::NearbyConnections::SendConnectionRequest(std::string const&, std::string const&,
   std::vector<unsigned char, std::allocator<unsigned char> > const&, std::function<void (long long,
   gpg::ConnectionResponse const&)>, gpg::MessageListenerHelper) */

void __thiscall
gpg::NearbyConnections::SendConnectionRequest
          (NearbyConnections *this,undefined4 param_1,undefined4 param_2,undefined4 param_3,
          function *param_5,undefined4 *param_6)

{
  undefined4 uVar1;
  int *piVar2;
  code *pcVar3;
  undefined4 local_60;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_5c [4];
  function<void(long_long,gpg::ConnectionResponse_const&)> afStack_58 [16];
  undefined1 auStack_48 [36];
  
  piVar2 = *(int **)this;
  if (piVar2 != (int *)0x0) {
    pcVar3 = *(code **)(*piVar2 + 0x2c);
    uVar1 = FUN_00518514(piVar2);
    std::function<void(long_long,gpg::ConnectionResponse_const&)>::function(afStack_58,param_5);
    FUN_00517a0a(auStack_48,uVar1,afStack_58);
    local_60 = *param_6;
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
              (a_Stack_5c,(__shared_count *)(param_6 + 1));
    (*pcVar3)(piVar2,param_1,param_2,param_3,auStack_48,&local_60);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_5c);
    FUN_00517482(auStack_48);
    std::_Function_base::~_Function_base((_Function_base *)afStack_58);
  }
  return;
}

// ---- gpg::NearbyConnections::AcceptConnectionRequest  @ 0x517bb8
/* gpg::NearbyConnections::AcceptConnectionRequest(std::string const&, std::vector<unsigned char,
   std::allocator<unsigned char> > const&, gpg::IMessageListener*) */

void __thiscall
gpg::NearbyConnections::AcceptConnectionRequest
          (NearbyConnections *this,string *param_1,vector *param_2,IMessageListener *param_3)

{
  int *piVar1;
  code *pcVar2;
  IMessageListener *local_34;
  undefined1 auStack_30 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_2c [4];
  MessageListenerHelper aMStack_28 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_24 [8];
  
  piVar1 = *(int **)this;
  if (piVar1 != (int *)0x0) {
    pcVar2 = *(code **)(*piVar1 + 0x1c);
    local_34 = param_3;
    FUN_00517b04(auStack_30,0,aMStack_28,&local_34);
    MessageListenerHelper::MessageListenerHelper(aMStack_28,auStack_30);
    (*pcVar2)(piVar1,param_1,param_2,aMStack_28);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_24);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_2c);
  }
  return;
}

// ---- gpg::NearbyConnections::SendConnectionRequest  @ 0x517c16
/* gpg::NearbyConnections::SendConnectionRequest(std::string const&, std::string const&,
   std::vector<unsigned char, std::allocator<unsigned char> > const&, std::function<void (long long,
   gpg::ConnectionResponse const&)>, gpg::IMessageListener*) */

void gpg::NearbyConnections::SendConnectionRequest
               (undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
               function *param_5)

{
  undefined4 uVar1;
  code *pcVar2;
  int *piVar3;
  undefined1 *puVar4;
  undefined1 auStack_6c [4];
  undefined1 auStack_68 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_64 [4];
  MessageListenerHelper aMStack_60 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_5c [4];
  function<void(long_long,gpg::ConnectionResponse_const&)> afStack_58 [16];
  undefined1 auStack_48 [36];
  
  piVar3 = (int *)*param_1;
  if (piVar3 != (int *)0x0) {
    pcVar2 = *(code **)(*piVar3 + 0x2c);
    uVar1 = FUN_00518514(piVar3);
    std::function<void(long_long,gpg::ConnectionResponse_const&)>::function(afStack_58,param_5);
    FUN_00517a0a(auStack_48,uVar1,afStack_58);
    puVar4 = auStack_68;
    FUN_00517b04(puVar4,0,auStack_6c,&stack0x00000004);
    MessageListenerHelper::MessageListenerHelper(aMStack_60,auStack_68);
    (*pcVar2)(piVar3,param_2,param_3,param_4,auStack_48,aMStack_60,puVar4);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_5c);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_64);
    FUN_00517482(auStack_48);
    std::_Function_base::~_Function_base((_Function_base *)afStack_58);
  }
  return;
}

// ---- gpg::NearbyConnections::StartDiscovery  @ 0x517d74
/* gpg::NearbyConnections::StartDiscovery(std::string const&, std::chrono::duration<long long,
   std::ratio<1ll, 1000ll> >, gpg::IEndpointDiscoveryListener*) */

void __thiscall
gpg::NearbyConnections::StartDiscovery
          (NearbyConnections *this,undefined4 param_1,undefined4 param_3,undefined4 param_4)

{
  int *piVar1;
  code *pcVar2;
  undefined1 auStack_30 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_2c [4];
  EndpointDiscoveryListenerHelper aEStack_28 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_24 [4];
  
  piVar1 = *(int **)this;
  if (piVar1 != (int *)0x0) {
    pcVar2 = *(code **)(*piVar1 + 0x24);
    FUN_00517cc0(auStack_30,0,aEStack_28,&stack0x00000000);
    EndpointDiscoveryListenerHelper::EndpointDiscoveryListenerHelper(aEStack_28,auStack_30);
    (*pcVar2)(piVar1,param_1,param_3,param_4,aEStack_28);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_24);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_2c);
  }
  return;
}

// ---- gpg::NearbyConnections::Builder::Builder  @ 0x517dde
/* gpg::NearbyConnections::Builder::Builder() */

Builder * __thiscall gpg::NearbyConnections::Builder::Builder(Builder *this)

{
  void *pvVar1;
  
  pvVar1 = operator_new(0x60);
  FUN_00518308();
  *(void **)this = pvVar1;
  this[4] = (Builder)0x0;
  return this;
}

// ---- gpg::NearbyConnections::Builder::SetClientId  @ 0x517e02
/* gpg::NearbyConnections::Builder::SetClientId(long long) */

undefined4 * gpg::NearbyConnections::Builder::SetClientId(longlong param_1)

{
  FUN_00518124(*(undefined4 *)param_1,(int)((ulonglong)param_1 >> 0x20));
  return (undefined4 *)param_1;
}

// ---- gpg::NearbyConnections::Builder::SetServiceId  @ 0x517e10
/* gpg::NearbyConnections::Builder::SetServiceId(std::string const&) */

string * gpg::NearbyConnections::Builder::SetServiceId(string *param_1)

{
  FUN_0051812a(*(undefined4 *)param_1);
  return param_1;
}

// ---- gpg::NearbyConnections::Builder::~Builder  @ 0x517e32
/* gpg::NearbyConnections::Builder::~Builder() */

Builder * __thiscall gpg::NearbyConnections::Builder::~Builder(Builder *this)

{
  FUN_005175cc();
  return this;
}

// ---- gpg::NearbyConnections::Builder::Create  @ 0x517e40
/* gpg::NearbyConnections::Builder::Create(gpg::AndroidPlatformConfiguration const&) */

AndroidPlatformConfiguration *
gpg::NearbyConnections::Builder::Create(AndroidPlatformConfiguration *param_1)

{
  int iVar1;
  NearbyConnections *pNVar2;
  undefined4 *in_r1;
  undefined1 auStack_3c [4];
  undefined4 local_38 [8];
  
  if (*(char *)(in_r1 + 1) == '\0') {
    FUN_00518134(local_38,*in_r1);
    FUN_0051683e(auStack_3c,local_38);
    FUN_0050811a(local_38);
    iVar1 = AndroidPlatformConfiguration::Valid();
    if (iVar1 == 0) {
      *(undefined4 *)param_1 = 0;
    }
    else {
      *(undefined1 *)(in_r1 + 1) = 1;
      local_38[0] = *in_r1;
      *in_r1 = 0;
      pNVar2 = operator_new(8);
      NearbyConnections(pNVar2,local_38);
      *(NearbyConnections **)param_1 = pNVar2;
      FUN_005175cc(local_38);
    }
    FUN_00516580(auStack_3c);
  }
  else {
    FUN_005166ae(4,"Can\'t build multiple NearbyConnections instances with the same builder.");
    *(undefined4 *)param_1 = 0;
  }
  return param_1;
}

// ---- gpg::NearbyConnections::Builder::SetOnLog  @ 0x517efc
/* gpg::NearbyConnections::Builder::SetOnLog(std::function<void (gpg::LogLevel, std::string
   const&)>, gpg::LogLevel) */

Builder * __thiscall
gpg::NearbyConnections::Builder::SetOnLog(Builder *this,function *param_2,undefined4 param_3)

{
  undefined4 uVar1;
  undefined4 uVar2;
  function<void(gpg::LogLevel,std::string_const&)> afStack_50 [16];
  undefined1 auStack_40 [36];
  
  uVar2 = *(undefined4 *)this;
  uVar1 = FUN_00518130(uVar2);
  std::function<void(gpg::LogLevel,std::string_const&)>::function(afStack_50,param_2);
  FUN_00509c80(auStack_40,uVar1,afStack_50);
  FUN_00518278(uVar2,auStack_40,param_3);
  FUN_0050811a(auStack_40);
  std::_Function_base::~_Function_base((_Function_base *)afStack_50);
  return this;
}

// ---- gpg::NearbyConnections::Builder::SetOnLog  @ 0x517f56
/* gpg::NearbyConnections::Builder::SetOnLog(std::function<void (gpg::LogLevel, std::string
   const&)>) */

Builder * __thiscall gpg::NearbyConnections::Builder::SetOnLog(Builder *this,function *param_2)

{
  undefined4 uVar1;
  undefined4 uVar2;
  function<void(gpg::LogLevel,std::string_const&)> afStack_48 [16];
  undefined1 auStack_38 [32];
  
  uVar2 = *(undefined4 *)this;
  uVar1 = FUN_00518130(uVar2);
  std::function<void(gpg::LogLevel,std::string_const&)>::function(afStack_48,param_2);
  FUN_00509c80(auStack_38,uVar1,afStack_48);
  FUN_00518278(uVar2,auStack_38,2);
  FUN_0050811a(auStack_38);
  std::_Function_base::~_Function_base((_Function_base *)afStack_48);
  return this;
}

// ---- gpg::NearbyConnections::Builder::SetDefaultOnLog  @ 0x517fb0
/* gpg::NearbyConnections::Builder::SetDefaultOnLog(gpg::LogLevel) */

Builder * __thiscall
gpg::NearbyConnections::Builder::SetDefaultOnLog(Builder *this,undefined4 param_2)

{
  undefined4 uVar1;
  code *local_80 [2];
  code *local_78;
  code *local_74;
  _Function_base a_Stack_70 [8];
  undefined4 local_68;
  function afStack_60 [8];
  undefined4 local_58;
  function<void(gpg::LogLevel,std::string_const&)> afStack_50 [16];
  function<void(std::function<void()>)> afStack_40 [8];
  undefined4 local_38;
  function<void(gpg::LogLevel,std::string_const&)> afStack_30 [16];
  
  uVar1 = *(undefined4 *)this;
  local_80[0] = (code *)0x5539c9;
  local_74 = (code *)0x509a6d;
  local_68 = 0;
  local_38 = 0;
  local_78 = (code *)0x509a79;
  std::function<void(gpg::LogLevel,std::string_const&)>::function(afStack_30,(function *)local_80);
  local_58 = 0;
  std::function<void(std::function<void()>)>::swap(afStack_40,afStack_60);
  std::function<void(gpg::LogLevel,std::string_const&)>::function(afStack_50,(function *)afStack_30)
  ;
  FUN_0050811a(afStack_40);
  std::_Function_base::~_Function_base((_Function_base *)local_80);
  std::_Function_base::~_Function_base(a_Stack_70);
  FUN_00518278(uVar1,afStack_60,param_2);
  FUN_0050811a(afStack_60);
  return this;
}

// ---- gpg::NearbyConnections::Builder::SetOnInitializationFinished  @ 0x518040
/* gpg::NearbyConnections::Builder::SetOnInitializationFinished(std::function<void
   (gpg::InitializationStatus)>) */

Builder * __thiscall
gpg::NearbyConnections::Builder::SetOnInitializationFinished
          (Builder *this,function<void(gpg::InitializationStatus)> *param_2)

{
  function *pfVar1;
  undefined4 uVar2;
  function<void(gpg::InitializationStatus)> afStack_88 [8];
  int local_80;
  function<void(gpg::InitializationStatus)> afStack_78 [8];
  int local_70;
  function afStack_68 [8];
  undefined4 local_60;
  function afStack_58 [8];
  undefined4 local_50;
  function<void(std::function<void()>)> afStack_48 [8];
  int local_40;
  function<void(gpg::InitializationStatus)> afStack_38 [8];
  undefined4 local_30;
  
  uVar2 = *(undefined4 *)this;
  pfVar1 = (function *)FUN_00518130(uVar2);
  local_80 = 0;
  std::function<void(gpg::InitializationStatus)>::swap(param_2,(function *)afStack_88);
  if (local_80 == 0) {
    local_70 = local_80;
    local_40 = local_80;
  }
  else {
    local_70 = 0;
    std::function<void(gpg::InitializationStatus)>::swap(afStack_88,(function *)afStack_78);
    std::function<void(std::function<void()>)>::function(afStack_48,pfVar1);
  }
  local_30 = 0;
  std::function<void(gpg::InitializationStatus)>::swap(afStack_78,(function *)afStack_38);
  local_60 = 0;
  std::function<void(std::function<void()>)>::swap(afStack_48,afStack_68);
  local_50 = 0;
  std::function<void(gpg::InitializationStatus)>::swap(afStack_38,afStack_58);
  FUN_00517e1e(afStack_48);
  std::_Function_base::~_Function_base((_Function_base *)afStack_78);
  FUN_005182d8(uVar2,afStack_68);
  FUN_00517e1e(afStack_68);
  std::_Function_base::~_Function_base((_Function_base *)afStack_88);
  return this;
}

// ---- gpg::ParticipantResults::ParticipantResults  @ 0x5191f8
/* gpg::ParticipantResults::ParticipantResults() */

void __thiscall gpg::ParticipantResults::ParticipantResults(ParticipantResults *this)

{
  *(undefined4 *)this = 0;
  *(undefined4 *)(this + 4) = 0;
  return;
}

// ---- gpg::ParticipantResults::ParticipantResults  @ 0x519200
/* gpg::ParticipantResults::ParticipantResults(gpg::ParticipantResults&&) */

void __thiscall
gpg::ParticipantResults::ParticipantResults(ParticipantResults *this,ParticipantResults *param_1)

{
  undefined4 uVar1;
  
  *(undefined4 *)this = *(undefined4 *)param_1;
  *(undefined4 *)(this + 4) = 0;
  uVar1 = *(undefined4 *)(param_1 + 4);
  *(undefined4 *)(param_1 + 4) = 0;
  *(undefined4 *)(this + 4) = uVar1;
  *(undefined4 *)param_1 = 0;
  return;
}

// ---- gpg::ParticipantResults::Valid  @ 0x519214
/* gpg::ParticipantResults::Valid() const */

bool __thiscall gpg::ParticipantResults::Valid(ParticipantResults *this)

{
  return *(int *)this != 0;
}

// ---- gpg::ParticipantResults::operator=  @ 0x51921e
/* gpg::ParticipantResults::TEMPNAMEPLACEHOLDERVALUE(gpg::ParticipantResults&&) */

ParticipantResults * __thiscall
gpg::ParticipantResults::operator=(ParticipantResults *this,ParticipantResults *param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 local_c;
  
  uVar1 = *(undefined4 *)param_1;
  uVar2 = *(undefined4 *)(param_1 + 4);
  *(undefined4 *)(param_1 + 4) = 0;
  *(undefined4 *)param_1 = 0;
  *(undefined4 *)this = uVar1;
  local_c = *(undefined4 *)(this + 4);
  *(undefined4 *)(this + 4) = uVar2;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_c);
  return this;
}

// ---- gpg::ParticipantResults::operator=  @ 0x51925e
/* gpg::ParticipantResults::TEMPNAMEPLACEHOLDERVALUE(gpg::ParticipantResults const&) */

ParticipantResults * __thiscall
gpg::ParticipantResults::operator=(ParticipantResults *this,ParticipantResults *param_1)

{
  _Sp_counted_base<(__gnu_cxx::_Lock_policy)2> *this_00;
  
  *(undefined4 *)this = *(undefined4 *)param_1;
  this_00 = *(_Sp_counted_base<(__gnu_cxx::_Lock_policy)2> **)(param_1 + 4);
  if (this_00 != *(_Sp_counted_base<(__gnu_cxx::_Lock_policy)2> **)(this + 4)) {
    if (this_00 != (_Sp_counted_base<(__gnu_cxx::_Lock_policy)2> *)0x0) {
      std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_add_ref_copy(this_00);
    }
    if (*(int *)(this + 4) != 0) {
      FUN_0033ce90();
    }
    *(_Sp_counted_base<(__gnu_cxx::_Lock_policy)2> **)(this + 4) = this_00;
  }
  return this;
}

// ---- gpg::ParticipantResults::ParticipantResults  @ 0x519284
/* gpg::ParticipantResults::ParticipantResults(std::shared_ptr<gpg::ParticipantResultsImpl const>)
    */

ParticipantResults * __thiscall
gpg::ParticipantResults::ParticipantResults(ParticipantResults *this,undefined4 *param_2)

{
  _Sp_counted_base<(__gnu_cxx::_Lock_policy)2> *this_00;
  
  *(undefined4 *)this = *param_2;
  this_00 = (_Sp_counted_base<(__gnu_cxx::_Lock_policy)2> *)param_2[1];
  *(_Sp_counted_base<(__gnu_cxx::_Lock_policy)2> **)(this + 4) = this_00;
  if (this_00 != (_Sp_counted_base<(__gnu_cxx::_Lock_policy)2> *)0x0) {
    std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_add_ref_copy(this_00);
  }
  return this;
}

// ---- gpg::ParticipantResults::ParticipantResults  @ 0x51929a
/* gpg::ParticipantResults::ParticipantResults(gpg::ParticipantResults const&) */

ParticipantResults * __thiscall
gpg::ParticipantResults::ParticipantResults(ParticipantResults *this,ParticipantResults *param_1)

{
  _Sp_counted_base<(__gnu_cxx::_Lock_policy)2> *this_00;
  
  *(undefined4 *)this = *(undefined4 *)param_1;
  this_00 = *(_Sp_counted_base<(__gnu_cxx::_Lock_policy)2> **)(param_1 + 4);
  *(_Sp_counted_base<(__gnu_cxx::_Lock_policy)2> **)(this + 4) = this_00;
  if (this_00 != (_Sp_counted_base<(__gnu_cxx::_Lock_policy)2> *)0x0) {
    std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_add_ref_copy(this_00);
  }
  return this;
}

// ---- gpg::ParticipantResults::HasResultsForParticipant  @ 0x51932c
/* gpg::ParticipantResults::HasResultsForParticipant(std::string const&) const */

bool __thiscall
gpg::ParticipantResults::HasResultsForParticipant(ParticipantResults *this,string *param_1)

{
  int iVar1;
  bool bVar2;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to call HasResultsForParticipant on an invalid ParticipantResults.");
    bVar2 = false;
  }
  else {
    iVar1 = std::
            _Rb_tree<std::string,std::pair<std::string_const,std::pair<unsigned_int,gpg::MatchResult>>,std::_Select1st<std::pair<std::string_const,std::pair<unsigned_int,gpg::MatchResult>>>,std::less<std::string>,std::allocator<std::pair<std::string_const,std::pair<unsigned_int,gpg::MatchResult>>>>
            ::find(*(_Rb_tree<std::string,std::pair<std::string_const,std::pair<unsigned_int,gpg::MatchResult>>,std::_Select1st<std::pair<std::string_const,std::pair<unsigned_int,gpg::MatchResult>>>,std::less<std::string>,std::allocator<std::pair<std::string_const,std::pair<unsigned_int,gpg::MatchResult>>>>
                     **)this,param_1);
    bVar2 = *(int *)this + 4 != iVar1;
  }
  return bVar2;
}

// ---- gpg::ParticipantResults::PlaceForParticipant  @ 0x519360
/* gpg::ParticipantResults::PlaceForParticipant(std::string const&) const */

undefined4 __thiscall
gpg::ParticipantResults::PlaceForParticipant(ParticipantResults *this,string *param_1)

{
  int iVar1;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get place for participant_id from invalid ParticipantResults.");
    return 0;
  }
  iVar1 = std::
          _Rb_tree<std::string,std::pair<std::string_const,std::pair<unsigned_int,gpg::MatchResult>>,std::_Select1st<std::pair<std::string_const,std::pair<unsigned_int,gpg::MatchResult>>>,std::less<std::string>,std::allocator<std::pair<std::string_const,std::pair<unsigned_int,gpg::MatchResult>>>>
          ::find(*(_Rb_tree<std::string,std::pair<std::string_const,std::pair<unsigned_int,gpg::MatchResult>>,std::_Select1st<std::pair<std::string_const,std::pair<unsigned_int,gpg::MatchResult>>>,std::less<std::string>,std::allocator<std::pair<std::string_const,std::pair<unsigned_int,gpg::MatchResult>>>>
                   **)this,param_1);
  if (iVar1 != *(int *)this + 4) {
    return *(undefined4 *)(iVar1 + 0x14);
  }
  return 0;
}

// ---- gpg::ParticipantResults::MatchResultForParticipant  @ 0x519398
/* gpg::ParticipantResults::MatchResultForParticipant(std::string const&) const */

undefined4 __thiscall
gpg::ParticipantResults::MatchResultForParticipant(ParticipantResults *this,string *param_1)

{
  int iVar1;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get MatchResult for participant from invalid ParticipantResults.")
    ;
  }
  else {
    iVar1 = std::
            _Rb_tree<std::string,std::pair<std::string_const,std::pair<unsigned_int,gpg::MatchResult>>,std::_Select1st<std::pair<std::string_const,std::pair<unsigned_int,gpg::MatchResult>>>,std::less<std::string>,std::allocator<std::pair<std::string_const,std::pair<unsigned_int,gpg::MatchResult>>>>
            ::find(*(_Rb_tree<std::string,std::pair<std::string_const,std::pair<unsigned_int,gpg::MatchResult>>,std::_Select1st<std::pair<std::string_const,std::pair<unsigned_int,gpg::MatchResult>>>,std::less<std::string>,std::allocator<std::pair<std::string_const,std::pair<unsigned_int,gpg::MatchResult>>>>
                     **)this,param_1);
    if (iVar1 != *(int *)this + 4) {
      return *(undefined4 *)(iVar1 + 0x18);
    }
  }
  return 4;
}

// ---- gpg::ParticipantResults::WithResult  @ 0x519774
/* gpg::ParticipantResults::WithResult(std::string const&, unsigned int, gpg::MatchResult) const */

ParticipantResults *
gpg::ParticipantResults::WithResult
          (ParticipantResults *param_1,ParticipantResults *param_2,string *param_3,
          undefined4 param_4,undefined4 param_5)

{
  ParticipantResults *pPVar1;
  ParticipantResults *this;
  string *psVar2;
  string *psVar3;
  bool bVar4;
  int iVar5;
  undefined4 *puVar6;
  string *psVar7;
  string *psVar8;
  string *psVar9;
  string *local_40;
  _Sp_counted_base<(__gnu_cxx::_Lock_policy)2> *local_3c;
  string *local_38;
  _Sp_counted_base<(__gnu_cxx::_Lock_policy)2> *local_34;
  string *local_30;
  _Sp_counted_base<(__gnu_cxx::_Lock_policy)2> *local_2c [2];
  
  iVar5 = Valid(param_2);
  this = (ParticipantResults *)&local_30;
  if (iVar5 == 0) {
    FUN_005166ae(4,"Attempting to add participant result to an invalid ParticipantResults.");
    ParticipantResults(this);
    ParticipantResults(param_1,this);
  }
  else {
    FUN_005196ac((ParticipantResults *)&local_40,0,this,*(undefined4 *)param_2);
    psVar2 = local_40;
    psVar9 = local_40 + 4;
    psVar3 = *(string **)(local_40 + 8);
    psVar8 = psVar9;
    while (psVar7 = psVar3, psVar7 != (string *)0x0) {
      bVar4 = std::operator<(psVar7 + 0x10,param_3);
      if (bVar4) {
        psVar3 = *(string **)(psVar7 + 0xc);
      }
      else {
        psVar3 = *(string **)(psVar7 + 8);
        psVar8 = psVar7;
      }
    }
    pPVar1 = (ParticipantResults *)&local_38;
    if ((psVar8 == psVar9) || (bVar4 = std::operator<(param_3,psVar8 + 0x10), bVar4)) {
      puVar6 = (undefined4 *)
               std::
               map<std::string,std::pair<unsigned_int,gpg::MatchResult>,std::less<std::string>,std::allocator<std::pair<std::string_const,std::pair<unsigned_int,gpg::MatchResult>>>>
               ::operator[](psVar2);
      *puVar6 = param_4;
      puVar6[1] = param_5;
      local_34 = local_3c;
      local_38 = local_40;
      if (local_3c != (_Sp_counted_base<(__gnu_cxx::_Lock_policy)2> *)0x0) {
        std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_add_ref_copy(local_3c);
      }
      ParticipantResults(this,pPVar1);
      ParticipantResults(param_1,this);
      std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
                ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_2c);
    }
    else {
      FUN_005166ae(4,"Attempting to set results for participant who already has results");
      local_30 = local_40;
      local_2c[0] = local_3c;
      if (local_3c != (_Sp_counted_base<(__gnu_cxx::_Lock_policy)2> *)0x0) {
        std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_add_ref_copy(local_3c);
      }
      ParticipantResults(pPVar1,this);
      ParticipantResults(param_1,pPVar1);
      std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
                ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_34);
      pPVar1 = this;
    }
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(pPVar1 + 4));
    this = (ParticipantResults *)&local_40;
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(this + 4));
  return param_1;
}

// ---- gpg::Player::Player  @ 0x5198a8
/* gpg::Player::Player(std::shared_ptr<gpg::PlayerImpl const>) */

void __thiscall gpg::Player::Player(Player *this,undefined4 *param_2)

{
  bool bVar1;
  int iVar2;
  int *piVar3;
  
  *(undefined4 *)this = *param_2;
  iVar2 = param_2[1];
  *(int *)(this + 4) = iVar2;
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

// ---- gpg::Player::Player  @ 0x5198cc
/* gpg::Player::Player(gpg::Player const&) */

void __thiscall gpg::Player::Player(Player *this,Player *param_1)

{
  bool bVar1;
  int iVar2;
  int *piVar3;
  
  *(undefined4 *)this = *(undefined4 *)param_1;
  iVar2 = *(int *)(param_1 + 4);
  *(int *)(this + 4) = iVar2;
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

// ---- gpg::Player::Player  @ 0x5198f0
/* gpg::Player::Player(gpg::Player&&) */

void __thiscall gpg::Player::Player(Player *this,Player *param_1)

{
  undefined4 uVar1;
  
  *(undefined4 *)this = *(undefined4 *)param_1;
  *(undefined4 *)(this + 4) = 0;
  uVar1 = *(undefined4 *)(param_1 + 4);
  *(undefined4 *)(param_1 + 4) = 0;
  *(undefined4 *)(this + 4) = uVar1;
  *(undefined4 *)param_1 = 0;
  return;
}

// ---- gpg::Player::Valid  @ 0x519904
/* gpg::Player::Valid() const */

bool __thiscall gpg::Player::Valid(Player *this)

{
  return *(int *)this != 0;
}

// ---- gpg::Player::Id  @ 0x519910
/* gpg::Player::Id() const */

undefined4 * __thiscall gpg::Player::Id(Player *this)

{
  int iVar1;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get id of an invalid Player");
    return &DAT_00960b7c;
  }
  return *(undefined4 **)this;
}

// ---- gpg::Player::Name  @ 0x519938
/* gpg::Player::Name() const */

undefined4 * __thiscall gpg::Player::Name(Player *this)

{
  int iVar1;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get name of an invalid Player");
    return &DAT_00960b7c;
  }
  return (undefined4 *)(*(int *)this + 4);
}

// ---- gpg::Player::AvatarUrl  @ 0x519964
/* gpg::Player::AvatarUrl(gpg::ImageResolution) const */

undefined4 * __thiscall gpg::Player::AvatarUrl(Player *this,int param_2)

{
  int iVar1;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get avatar URL of an invalid Player");
    return &DAT_00960b7c;
  }
  if (param_2 != 1) {
    if (param_2 == 2) {
      return (undefined4 *)(*(int *)this + 0xc);
    }
    FUN_005166ae(4,"AvatarUrl: Invalid image resolution used.  Defaulting to ICON.");
  }
  return (undefined4 *)(*(int *)this + 8);
}

// ---- gpg::Player::HasLevelInfo  @ 0x5199ac
/* gpg::Player::HasLevelInfo() const */

undefined4 __thiscall gpg::Player::HasLevelInfo(Player *this)

{
  int iVar1;
  undefined4 uVar2;
  
  iVar1 = Valid(this);
  if (iVar1 != 0) {
    uVar2 = PlayerLevel::Valid((PlayerLevel *)(*(int *)this + 0x10));
    return uVar2;
  }
  FUN_005166ae(4,"Attempting to get whether an invalid Player has level info");
  return 0;
}

// ---- gpg::Player::CurrentLevel  @ 0x5199d8
/* gpg::Player::CurrentLevel() const */

undefined * __thiscall gpg::Player::CurrentLevel(Player *this)

{
  int iVar1;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get current level of an invalid Player");
    return &DAT_00960b8c;
  }
  return (undefined *)(*(int *)this + 0x10);
}

// ---- gpg::Player::NextLevel  @ 0x519a04
/* gpg::Player::NextLevel() const */

undefined * __thiscall gpg::Player::NextLevel(Player *this)

{
  int iVar1;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get next level of an invalid Player");
    return &DAT_00960b8c;
  }
  return (undefined *)(*(int *)this + 0x18);
}

// ---- gpg::Player::CurrentXP  @ 0x519a30
/* gpg::Player::CurrentXP() const */

undefined8 __thiscall gpg::Player::CurrentXP(Player *this)

{
  int iVar1;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get current xp of an invalid Player");
    return 0;
  }
  return *(undefined8 *)(*(int *)this + 0x20);
}

// ---- gpg::Player::LastLevelUpTime  @ 0x519a58
/* gpg::Player::LastLevelUpTime() const */

void gpg::Player::LastLevelUpTime(void)

{
  undefined4 *in_r0;
  int iVar1;
  Player *in_r1;
  undefined4 uVar2;
  undefined4 uVar3;
  
  iVar1 = Valid(in_r1);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get last level up timestamp of an invalid Player");
    uVar2 = 0;
    uVar3 = 0;
  }
  else {
    uVar2 = *(undefined4 *)(*(int *)in_r1 + 0x28);
    uVar3 = *(undefined4 *)(*(int *)in_r1 + 0x2c);
  }
  *in_r0 = uVar2;
  in_r0[1] = uVar3;
  return;
}

// ---- gpg::Player::Title  @ 0x519a94
/* gpg::Player::Title() const */

undefined4 * __thiscall gpg::Player::Title(Player *this)

{
  int iVar1;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get title of an invalid Player");
    return &DAT_00960b7c;
  }
  return (undefined4 *)(*(int *)this + 0x30);
}

// ---- gpg::Player::~Player  @ 0x519ac0
/* gpg::Player::~Player() */

Player * __thiscall gpg::Player::~Player(Player *this)

{
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(this + 4));
  return this;
}

// ---- gpg::Player::Player  @ 0x519ace
/* gpg::Player::Player() */

Player * __thiscall gpg::Player::Player(Player *this)

{
  undefined4 local_c;
  
  *(undefined4 *)this = 0;
  *(undefined4 *)(this + 4) = 0;
  local_c = 0;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_c);
  return this;
}

// ---- gpg::Player::operator=  @ 0x519ae8
/* gpg::Player::TEMPNAMEPLACEHOLDERVALUE(gpg::Player&&) */

Player * __thiscall gpg::Player::operator=(Player *this,Player *param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 local_c;
  
  uVar1 = *(undefined4 *)param_1;
  uVar2 = *(undefined4 *)(param_1 + 4);
  *(undefined4 *)(param_1 + 4) = 0;
  *(undefined4 *)param_1 = 0;
  *(undefined4 *)this = uVar1;
  local_c = *(undefined4 *)(this + 4);
  *(undefined4 *)(this + 4) = uVar2;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_c);
  return this;
}

// ---- gpg::Player::operator=  @ 0x519b0e
/* gpg::Player::TEMPNAMEPLACEHOLDERVALUE(gpg::Player const&) */

Player * __thiscall gpg::Player::operator=(Player *this,Player *param_1)

{
  bool bVar1;
  int *piVar2;
  int iVar3;
  
  *(undefined4 *)this = *(undefined4 *)param_1;
  iVar3 = *(int *)(param_1 + 4);
  if (iVar3 != *(int *)(this + 4)) {
    if (iVar3 != 0) {
      piVar2 = (int *)(iVar3 + 4);
      DataMemoryBarrier(0x1f);
      do {
        ExclusiveAccess(piVar2);
        bVar1 = (bool)hasExclusiveAccess(piVar2);
      } while (!bVar1);
      *piVar2 = *piVar2 + 1;
      DataMemoryBarrier(0x1f);
    }
    if (*(int *)(this + 4) != 0) {
      FUN_0033ce90();
    }
    *(int *)(this + 4) = iVar3;
  }
  return this;
}

// ---- gpg::PlayerLevel::PlayerLevel  @ 0x519b46
/* gpg::PlayerLevel::PlayerLevel(std::shared_ptr<gpg::PlayerLevelImpl const>) */

void __thiscall gpg::PlayerLevel::PlayerLevel(PlayerLevel *this,undefined4 *param_2)

{
  bool bVar1;
  int iVar2;
  int *piVar3;
  
  *(undefined4 *)this = *param_2;
  iVar2 = param_2[1];
  *(int *)(this + 4) = iVar2;
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

// ---- gpg::PlayerLevel::PlayerLevel  @ 0x519b6a
/* gpg::PlayerLevel::PlayerLevel(gpg::PlayerLevel const&) */

void __thiscall gpg::PlayerLevel::PlayerLevel(PlayerLevel *this,PlayerLevel *param_1)

{
  bool bVar1;
  int iVar2;
  int *piVar3;
  
  *(undefined4 *)this = *(undefined4 *)param_1;
  iVar2 = *(int *)(param_1 + 4);
  *(int *)(this + 4) = iVar2;
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

// ---- gpg::PlayerLevel::PlayerLevel  @ 0x519b8e
/* gpg::PlayerLevel::PlayerLevel(gpg::PlayerLevel&&) */

void __thiscall gpg::PlayerLevel::PlayerLevel(PlayerLevel *this,PlayerLevel *param_1)

{
  undefined4 uVar1;
  
  *(undefined4 *)this = *(undefined4 *)param_1;
  *(undefined4 *)(this + 4) = 0;
  uVar1 = *(undefined4 *)(param_1 + 4);
  *(undefined4 *)(param_1 + 4) = 0;
  *(undefined4 *)(this + 4) = uVar1;
  *(undefined4 *)param_1 = 0;
  return;
}

// ---- gpg::PlayerLevel::Valid  @ 0x519ba2
/* gpg::PlayerLevel::Valid() const */

bool __thiscall gpg::PlayerLevel::Valid(PlayerLevel *this)

{
  return *(int *)this != 0;
}

// ---- gpg::PlayerLevel::LevelNumber  @ 0x519bac
/* gpg::PlayerLevel::LevelNumber() const */

undefined4 __thiscall gpg::PlayerLevel::LevelNumber(PlayerLevel *this)

{
  int iVar1;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get level number of an invalid PlayerLevel");
    return 0;
  }
  return **(undefined4 **)this;
}

// ---- gpg::PlayerLevel::MinimumXP  @ 0x519bd0
/* gpg::PlayerLevel::MinimumXP() const */

undefined8 __thiscall gpg::PlayerLevel::MinimumXP(PlayerLevel *this)

{
  int iVar1;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get minimum xp of an invalid PlayerLevel");
    return 0;
  }
  return *(undefined8 *)(*(int *)this + 8);
}

// ---- gpg::PlayerLevel::MaximumXP  @ 0x519bf8
/* gpg::PlayerLevel::MaximumXP() const */

undefined8 __thiscall gpg::PlayerLevel::MaximumXP(PlayerLevel *this)

{
  int iVar1;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get maximum xp of an invalid PlayerLevel");
    return 0;
  }
  return *(undefined8 *)(*(int *)this + 0x10);
}

// ---- gpg::PlayerLevel::~PlayerLevel  @ 0x519c20
/* gpg::PlayerLevel::~PlayerLevel() */

PlayerLevel * __thiscall gpg::PlayerLevel::~PlayerLevel(PlayerLevel *this)

{
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(this + 4));
  return this;
}

// ---- gpg::PlayerLevel::PlayerLevel  @ 0x519c2e
/* gpg::PlayerLevel::PlayerLevel() */

PlayerLevel * __thiscall gpg::PlayerLevel::PlayerLevel(PlayerLevel *this)

{
  undefined4 local_c;
  
  *(undefined4 *)this = 0;
  *(undefined4 *)(this + 4) = 0;
  local_c = 0;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_c);
  return this;
}

// ---- gpg::PlayerLevel::operator=  @ 0x519c48
/* gpg::PlayerLevel::TEMPNAMEPLACEHOLDERVALUE(gpg::PlayerLevel&&) */

PlayerLevel * __thiscall gpg::PlayerLevel::operator=(PlayerLevel *this,PlayerLevel *param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 local_c;
  
  uVar1 = *(undefined4 *)param_1;
  uVar2 = *(undefined4 *)(param_1 + 4);
  *(undefined4 *)(param_1 + 4) = 0;
  *(undefined4 *)param_1 = 0;
  *(undefined4 *)this = uVar1;
  local_c = *(undefined4 *)(this + 4);
  *(undefined4 *)(this + 4) = uVar2;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_c);
  return this;
}

// ---- gpg::PlayerLevel::operator=  @ 0x519c6e
/* gpg::PlayerLevel::TEMPNAMEPLACEHOLDERVALUE(gpg::PlayerLevel const&) */

PlayerLevel * __thiscall gpg::PlayerLevel::operator=(PlayerLevel *this,PlayerLevel *param_1)

{
  bool bVar1;
  int *piVar2;
  int iVar3;
  
  *(undefined4 *)this = *(undefined4 *)param_1;
  iVar3 = *(int *)(param_1 + 4);
  if (iVar3 != *(int *)(this + 4)) {
    if (iVar3 != 0) {
      piVar2 = (int *)(iVar3 + 4);
      DataMemoryBarrier(0x1f);
      do {
        ExclusiveAccess(piVar2);
        bVar1 = (bool)hasExclusiveAccess(piVar2);
      } while (!bVar1);
      *piVar2 = *piVar2 + 1;
      DataMemoryBarrier(0x1f);
    }
    if (*(int *)(this + 4) != 0) {
      FUN_0033ce90();
    }
    *(int *)(this + 4) = iVar3;
  }
  return this;
}

// ---- gpg::PlayerManager::PlayerManager  @ 0x519dac
/* gpg::PlayerManager::PlayerManager(gpg::GameServicesImpl*) */

void __thiscall gpg::PlayerManager::PlayerManager(PlayerManager *this,GameServicesImpl *param_1)

{
  *(GameServicesImpl **)this = param_1;
  return;
}

// ---- gpg::PlayerManager::~PlayerManager  @ 0x519db0
/* gpg::PlayerManager::~PlayerManager() */

PlayerManager * __thiscall gpg::PlayerManager::~PlayerManager(PlayerManager *this)

{
  return this;
}

// ---- gpg::PlayerManager::FetchSelfResponse::FetchSelfResponse  @ 0x519dc6
/* gpg::PlayerManager::FetchSelfResponse::FetchSelfResponse(gpg::PlayerManager::FetchSelfResponse&&)
    */

FetchSelfResponse * __thiscall
gpg::PlayerManager::FetchSelfResponse::FetchSelfResponse
          (FetchSelfResponse *this,FetchSelfResponse *param_1)

{
  *(undefined4 *)this = *(undefined4 *)param_1;
  Player::Player((Player *)(this + 4),(Player *)(param_1 + 4));
  return this;
}

// ---- gpg::PlayerManager::FetchResponse::FetchResponse  @ 0x519e12
/* gpg::PlayerManager::FetchResponse::FetchResponse(gpg::PlayerManager::FetchResponse&&) */

FetchResponse * __thiscall
gpg::PlayerManager::FetchResponse::FetchResponse(FetchResponse *this,FetchResponse *param_1)

{
  *(undefined4 *)this = *(undefined4 *)param_1;
  Player::Player((Player *)(this + 4),(Player *)(param_1 + 4));
  return this;
}

// ---- gpg::PlayerManager::FetchListResponse::FetchListResponse  @ 0x519e3a
/* gpg::PlayerManager::FetchListResponse::FetchListResponse(gpg::PlayerManager::FetchListResponse&&)
    */

void __thiscall
gpg::PlayerManager::FetchListResponse::FetchListResponse
          (FetchListResponse *this,FetchListResponse *param_1)

{
  undefined4 uVar1;
  
  *(undefined4 *)this = *(undefined4 *)param_1;
  *(undefined4 *)(this + 8) = 0;
  *(undefined4 *)(this + 0xc) = 0;
  *(undefined4 *)(this + 4) = 0;
  *(undefined4 *)(this + 4) = *(undefined4 *)(param_1 + 4);
  *(undefined4 *)(param_1 + 4) = 0;
  uVar1 = *(undefined4 *)(this + 8);
  *(undefined4 *)(this + 8) = *(undefined4 *)(param_1 + 8);
  *(undefined4 *)(param_1 + 8) = uVar1;
  uVar1 = *(undefined4 *)(this + 0xc);
  *(undefined4 *)(this + 0xc) = *(undefined4 *)(param_1 + 0xc);
  *(undefined4 *)(param_1 + 0xc) = uVar1;
  return;
}

// ---- gpg::PlayerManager::FetchSelf  @ 0x51a4d0
/* gpg::PlayerManager::FetchSelf(gpg::DataSource, std::function<void
   (gpg::PlayerManager::FetchSelfResponse const&)>) */

void __thiscall
gpg::PlayerManager::FetchSelf(PlayerManager *this,undefined4 param_2,function *param_3)

{
  undefined4 uVar1;
  function *pfVar2;
  int iVar3;
  int *piVar4;
  code *pcVar5;
  undefined1 auStack_b8 [4];
  undefined4 local_b4;
  Player aPStack_b0 [8];
  function<void(gpg::PlayerManager::FetchSelfResponse_const&)> afStack_a8 [8];
  int local_a0;
  undefined4 local_9c;
  _Function_base a_Stack_98 [8];
  int local_90;
  undefined4 local_8c;
  function<void(std::function<void()>)> afStack_88 [16];
  function<void(gpg::PlayerManager::FetchSelfResponse_const&)> afStack_78 [16];
  function<void(std::function<void()>)> afStack_68 [16];
  function<void(gpg::PlayerManager::FetchSelfResponse_const&)> afStack_58 [16];
  function<void(std::function<void()>)> afStack_48 [8];
  int local_40;
  function<void(gpg::PlayerManager::FetchSelfResponse_const&)> afStack_38 [20];
  
  FUN_00510a86(afStack_48,*(undefined4 *)this);
  FUN_0051683e(auStack_b8,afStack_48);
  FUN_0050811a(afStack_48);
  pfVar2 = (function *)FUN_0051075c(*(undefined4 *)this);
  std::function<void(gpg::PlayerManager::FetchSelfResponse_const&)>::function(afStack_a8,param_3);
  if (local_a0 == 0) {
    local_90 = local_a0;
    local_40 = local_a0;
  }
  else {
    local_90 = 0;
    std::swap<std::_Any_data>((_Any_data *)afStack_a8,(_Any_data *)a_Stack_98);
    uVar1 = local_8c;
    iVar3 = local_90;
    local_90 = local_a0;
    local_a0 = iVar3;
    local_8c = local_9c;
    local_9c = uVar1;
    std::function<void(std::function<void()>)>::function(afStack_48,pfVar2);
  }
  std::function<void(gpg::PlayerManager::FetchSelfResponse_const&)>::function
            (afStack_38,(function *)a_Stack_98);
  std::function<void(std::function<void()>)>::function(afStack_88,(function *)afStack_48);
  std::function<void(gpg::PlayerManager::FetchSelfResponse_const&)>::function
            (afStack_78,(function *)afStack_38);
  FUN_00519db2(afStack_48);
  std::_Function_base::~_Function_base(a_Stack_98);
  std::_Function_base::~_Function_base((_Function_base *)afStack_a8);
  piVar4 = *(int **)this;
  pcVar5 = *(code **)(*piVar4 + 0x28);
  std::function<void(std::function<void()>)>::function(afStack_68,(function *)afStack_88);
  std::function<void(gpg::PlayerManager::FetchSelfResponse_const&)>::function
            (afStack_58,(function *)afStack_78);
  iVar3 = (*pcVar5)(piVar4,param_2,afStack_68);
  FUN_00519db2(afStack_68);
  if (iVar3 == 0) {
    local_b4 = 0xfffffffd;
    Player::Player(aPStack_b0);
    FUN_0051a40c(afStack_88,&local_b4);
    Player::~Player(aPStack_b0);
  }
  FUN_00519db2(afStack_88);
  FUN_00516580(auStack_b8);
  return;
}

// ---- gpg::PlayerManager::FetchSelf  @ 0x51a610
/* gpg::PlayerManager::FetchSelf(std::function<void (gpg::PlayerManager::FetchSelfResponse const&)>)
    */

void __thiscall gpg::PlayerManager::FetchSelf(PlayerManager *this,function *param_2)

{
  function<void(gpg::PlayerManager::FetchSelfResponse_const&)> afStack_20 [20];
  
  std::function<void(gpg::PlayerManager::FetchSelfResponse_const&)>::function(afStack_20,param_2);
  FetchSelf(this,1,afStack_20);
  std::_Function_base::~_Function_base((_Function_base *)afStack_20);
  return;
}

// ---- gpg::PlayerManager::Fetch  @ 0x51a718
/* gpg::PlayerManager::Fetch(gpg::DataSource, std::string const&, std::function<void
   (gpg::PlayerManager::FetchResponse const&)>) */

void __thiscall
gpg::PlayerManager::Fetch
          (PlayerManager *this,undefined4 param_2,undefined4 param_3,function *param_4)

{
  undefined4 uVar1;
  function *pfVar2;
  int iVar3;
  int *piVar4;
  code *pcVar5;
  undefined1 auStack_b8 [4];
  undefined4 local_b4;
  Player aPStack_b0 [8];
  function<void(gpg::PlayerManager::FetchResponse_const&)> afStack_a8 [8];
  int local_a0;
  undefined4 local_9c;
  _Function_base a_Stack_98 [8];
  int local_90;
  undefined4 local_8c;
  function<void(std::function<void()>)> afStack_88 [16];
  function<void(gpg::PlayerManager::FetchResponse_const&)> afStack_78 [16];
  function<void(std::function<void()>)> afStack_68 [16];
  function<void(gpg::PlayerManager::FetchResponse_const&)> afStack_58 [16];
  function<void(std::function<void()>)> afStack_48 [8];
  int local_40;
  function<void(gpg::PlayerManager::FetchResponse_const&)> afStack_38 [20];
  
  FUN_00510a86(afStack_48,*(undefined4 *)this);
  FUN_0051683e(auStack_b8,afStack_48);
  FUN_0050811a(afStack_48);
  pfVar2 = (function *)FUN_0051075c(*(undefined4 *)this);
  std::function<void(gpg::PlayerManager::FetchResponse_const&)>::function(afStack_a8,param_4);
  if (local_a0 == 0) {
    local_90 = local_a0;
    local_40 = local_a0;
  }
  else {
    local_90 = 0;
    std::swap<std::_Any_data>((_Any_data *)afStack_a8,(_Any_data *)a_Stack_98);
    uVar1 = local_8c;
    iVar3 = local_90;
    local_90 = local_a0;
    local_a0 = iVar3;
    local_8c = local_9c;
    local_9c = uVar1;
    std::function<void(std::function<void()>)>::function(afStack_48,pfVar2);
  }
  std::function<void(gpg::PlayerManager::FetchResponse_const&)>::function
            (afStack_38,(function *)a_Stack_98);
  std::function<void(std::function<void()>)>::function(afStack_88,(function *)afStack_48);
  std::function<void(gpg::PlayerManager::FetchResponse_const&)>::function
            (afStack_78,(function *)afStack_38);
  FUN_00519dfe(afStack_48);
  std::_Function_base::~_Function_base(a_Stack_98);
  std::_Function_base::~_Function_base((_Function_base *)afStack_a8);
  piVar4 = *(int **)this;
  pcVar5 = *(code **)(*piVar4 + 0x2c);
  std::function<void(std::function<void()>)>::function(afStack_68,(function *)afStack_88);
  std::function<void(gpg::PlayerManager::FetchResponse_const&)>::function
            (afStack_58,(function *)afStack_78);
  iVar3 = (*pcVar5)(piVar4,param_2,param_3,afStack_68);
  FUN_00519dfe(afStack_68);
  if (iVar3 == 0) {
    local_b4 = 0xfffffffd;
    Player::Player(aPStack_b0);
    FUN_0051a654(afStack_88,&local_b4);
    Player::~Player(aPStack_b0);
  }
  FUN_00519dfe(afStack_88);
  FUN_00516580(auStack_b8);
  return;
}

// ---- gpg::PlayerManager::Fetch  @ 0x51a864
/* gpg::PlayerManager::Fetch(std::string const&, std::function<void
   (gpg::PlayerManager::FetchResponse const&)>) */

void gpg::PlayerManager::Fetch
               (PlayerManager *param_1,undefined4 param_2,function *param_3,undefined4 param_4)

{
  PlayerManager *pPStack_20;
  undefined4 uStack_1c;
  function *pfStack_18;
  undefined4 uStack_14;
  
  pPStack_20 = param_1;
  uStack_1c = param_2;
  pfStack_18 = param_3;
  uStack_14 = param_4;
  std::function<void(gpg::PlayerManager::FetchResponse_const&)>::function
            ((function<void(gpg::PlayerManager::FetchResponse_const&)> *)&pPStack_20,param_3);
  Fetch(param_1,1,param_2,(function<void(gpg::PlayerManager::FetchResponse_const&)> *)&pPStack_20);
  std::_Function_base::~_Function_base((_Function_base *)&pPStack_20);
  return;
}

// ---- gpg::PlayerManager::FetchListResponse::FetchListResponse  @ 0x51a938
/* gpg::PlayerManager::FetchListResponse::FetchListResponse(gpg::PlayerManager::FetchListResponse
   const&) */

FetchListResponse * __thiscall
gpg::PlayerManager::FetchListResponse::FetchListResponse
          (FetchListResponse *this,FetchListResponse *param_1)

{
  void *pvVar1;
  undefined4 uVar2;
  int iVar3;
  uint uVar4;
  int iVar5;
  
  *(undefined4 *)this = *(undefined4 *)param_1;
  iVar5 = *(int *)(param_1 + 4);
  iVar3 = *(int *)(param_1 + 8);
  *(undefined4 *)(this + 4) = 0;
  uVar4 = iVar3 - iVar5 >> 3;
  *(undefined4 *)(this + 8) = 0;
  *(undefined4 *)(this + 0xc) = 0;
  pvVar1 = (void *)0x0;
  if (uVar4 != 0) {
    if (0x1fffffff < uVar4) {
      FUN_007c4844();
    }
    pvVar1 = operator_new(uVar4 * 8);
  }
  *(void **)(this + 4) = pvVar1;
  *(void **)(this + 8) = pvVar1;
  *(void **)(this + 0xc) = (void *)(uVar4 * 8 + (int)pvVar1);
  uVar2 = FUN_0051a8fe(*(undefined4 *)(param_1 + 4),*(undefined4 *)(param_1 + 8));
  *(undefined4 *)(this + 8) = uVar2;
  return this;
}

// ---- gpg::PlayerManager::FetchRecentlyPlayed  @ 0x51aaa8
/* gpg::PlayerManager::FetchRecentlyPlayed(gpg::DataSource, std::function<void
   (gpg::PlayerManager::FetchListResponse const&)>) */

void __thiscall
gpg::PlayerManager::FetchRecentlyPlayed(PlayerManager *this,undefined4 param_2,function *param_3)

{
  undefined4 uVar1;
  int iVar2;
  int *piVar3;
  code *pcVar4;
  undefined1 auStack_74 [4];
  function<void(gpg::PlayerManager::FetchListResponse_const&)> afStack_70 [16];
  undefined1 auStack_60 [32];
  undefined4 local_40;
  int local_3c;
  int local_38;
  int local_34;
  
  FUN_00510a86(&local_40,*(undefined4 *)this);
  FUN_0051683e(auStack_74,&local_40);
  FUN_0050811a(&local_40);
  uVar1 = FUN_0051075c(*(undefined4 *)this);
  std::function<void(gpg::PlayerManager::FetchListResponse_const&)>::function(afStack_70,param_3);
  FUN_0051a190(auStack_60,uVar1,afStack_70);
  std::_Function_base::~_Function_base((_Function_base *)afStack_70);
  piVar3 = *(int **)this;
  pcVar4 = *(code **)(*piVar3 + 0x30);
  FUN_0051a104(&local_40,auStack_60);
  iVar2 = (*pcVar4)(piVar3,param_2,&local_40);
  FUN_00519e26(&local_40);
  if (iVar2 == 0) {
    local_40 = 0xfffffffd;
    local_3c = iVar2;
    local_38 = iVar2;
    local_34 = iVar2;
    FUN_0051a9f0(auStack_60,&local_40);
    std::vector<gpg::Player,std::allocator<gpg::Player>>::~vector
              ((vector<gpg::Player,std::allocator<gpg::Player>> *)&local_3c);
  }
  FUN_00519e26(auStack_60);
  FUN_00516580(auStack_74);
  return;
}

// ---- gpg::PlayerManager::FetchRecentlyPlayed  @ 0x51ab78
/* gpg::PlayerManager::FetchRecentlyPlayed(std::function<void (gpg::PlayerManager::FetchListResponse
   const&)>) */

void __thiscall gpg::PlayerManager::FetchRecentlyPlayed(PlayerManager *this,function *param_2)

{
  function<void(gpg::PlayerManager::FetchListResponse_const&)> afStack_20 [20];
  
  std::function<void(gpg::PlayerManager::FetchListResponse_const&)>::function(afStack_20,param_2);
  FetchRecentlyPlayed(this,1,afStack_20);
  std::_Function_base::~_Function_base((_Function_base *)afStack_20);
  return;
}

// ---- gpg::PlayerManager::FetchConnected  @ 0x51aba2
/* gpg::PlayerManager::FetchConnected(gpg::DataSource, std::function<void
   (gpg::PlayerManager::FetchListResponse const&)>) */

void __thiscall
gpg::PlayerManager::FetchConnected(PlayerManager *this,undefined4 param_2,function *param_3)

{
  undefined4 uVar1;
  int iVar2;
  int *piVar3;
  code *pcVar4;
  undefined1 auStack_74 [4];
  function<void(gpg::PlayerManager::FetchListResponse_const&)> afStack_70 [16];
  undefined1 auStack_60 [32];
  undefined4 local_40;
  int local_3c;
  int local_38;
  int local_34;
  
  FUN_00510a86(&local_40,*(undefined4 *)this);
  FUN_0051683e(auStack_74,&local_40);
  FUN_0050811a(&local_40);
  uVar1 = FUN_0051075c(*(undefined4 *)this);
  std::function<void(gpg::PlayerManager::FetchListResponse_const&)>::function(afStack_70,param_3);
  FUN_0051a190(auStack_60,uVar1,afStack_70);
  std::_Function_base::~_Function_base((_Function_base *)afStack_70);
  piVar3 = *(int **)this;
  pcVar4 = *(code **)(*piVar3 + 0x34);
  FUN_0051a104(&local_40,auStack_60);
  iVar2 = (*pcVar4)(piVar3,param_2,&local_40);
  FUN_00519e26(&local_40);
  if (iVar2 == 0) {
    local_40 = 0xfffffffd;
    local_3c = iVar2;
    local_38 = iVar2;
    local_34 = iVar2;
    FUN_0051a9f0(auStack_60,&local_40);
    std::vector<gpg::Player,std::allocator<gpg::Player>>::~vector
              ((vector<gpg::Player,std::allocator<gpg::Player>> *)&local_3c);
  }
  FUN_00519e26(auStack_60);
  FUN_00516580(auStack_74);
  return;
}

// ---- gpg::PlayerManager::FetchConnected  @ 0x51ac72
/* gpg::PlayerManager::FetchConnected(std::function<void (gpg::PlayerManager::FetchListResponse
   const&)>) */

void __thiscall gpg::PlayerManager::FetchConnected(PlayerManager *this,function *param_2)

{
  function<void(gpg::PlayerManager::FetchListResponse_const&)> afStack_20 [20];
  
  std::function<void(gpg::PlayerManager::FetchListResponse_const&)>::function(afStack_20,param_2);
  FetchConnected(this,1,afStack_20);
  std::_Function_base::~_Function_base((_Function_base *)afStack_20);
  return;
}

// ---- gpg::PlayerManager::FetchInvitable  @ 0x51ac9c
/* gpg::PlayerManager::FetchInvitable(gpg::DataSource, std::function<void
   (gpg::PlayerManager::FetchListResponse const&)>) */

void __thiscall
gpg::PlayerManager::FetchInvitable(PlayerManager *this,undefined4 param_2,function *param_3)

{
  undefined4 uVar1;
  int iVar2;
  int *piVar3;
  code *pcVar4;
  undefined1 auStack_74 [4];
  function<void(gpg::PlayerManager::FetchListResponse_const&)> afStack_70 [16];
  undefined1 auStack_60 [32];
  undefined4 local_40;
  int local_3c;
  int local_38;
  int local_34;
  
  FUN_00510a86(&local_40,*(undefined4 *)this);
  FUN_0051683e(auStack_74,&local_40);
  FUN_0050811a(&local_40);
  uVar1 = FUN_0051075c(*(undefined4 *)this);
  std::function<void(gpg::PlayerManager::FetchListResponse_const&)>::function(afStack_70,param_3);
  FUN_0051a190(auStack_60,uVar1,afStack_70);
  std::_Function_base::~_Function_base((_Function_base *)afStack_70);
  piVar3 = *(int **)this;
  pcVar4 = *(code **)(*piVar3 + 0x38);
  FUN_0051a104(&local_40,auStack_60);
  iVar2 = (*pcVar4)(piVar3,param_2,&local_40);
  FUN_00519e26(&local_40);
  if (iVar2 == 0) {
    local_40 = 0xfffffffd;
    local_3c = iVar2;
    local_38 = iVar2;
    local_34 = iVar2;
    FUN_0051a9f0(auStack_60,&local_40);
    std::vector<gpg::Player,std::allocator<gpg::Player>>::~vector
              ((vector<gpg::Player,std::allocator<gpg::Player>> *)&local_3c);
  }
  FUN_00519e26(auStack_60);
  FUN_00516580(auStack_74);
  return;
}

// ---- gpg::PlayerManager::FetchInvitable  @ 0x51ad6c
/* gpg::PlayerManager::FetchInvitable(std::function<void (gpg::PlayerManager::FetchListResponse
   const&)>) */

void __thiscall gpg::PlayerManager::FetchInvitable(PlayerManager *this,function *param_2)

{
  function<void(gpg::PlayerManager::FetchListResponse_const&)> afStack_20 [20];
  
  std::function<void(gpg::PlayerManager::FetchListResponse_const&)>::function(afStack_20,param_2);
  FetchInvitable(this,1,afStack_20);
  std::_Function_base::~_Function_base((_Function_base *)afStack_20);
  return;
}

// ---- gpg::PlayerManager::FetchSelfBlocking  @ 0x51b11c
/* gpg::PlayerManager::FetchSelfBlocking(gpg::DataSource, std::chrono::duration<long long,
   std::ratio<1ll, 1000ll> >) */

FetchSelfResponse *
gpg::PlayerManager::FetchSelfBlocking
          (FetchSelfResponse *param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4,
          uint param_5,int param_6)

{
  longlong lVar1;
  int iVar2;
  FetchSelfResponse *pFVar3;
  unique_lock *puVar4;
  int *piVar5;
  code *pcVar6;
  undefined4 local_b0;
  int iStack_ac;
  undefined1 auStack_a8 [4];
  undefined1 auStack_a4 [4];
  undefined4 local_a0;
  int iStack_9c;
  mutex *local_94;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_90 [4];
  mutex *local_8c;
  undefined1 local_88;
  undefined4 local_84;
  Player aPStack_80 [8];
  FetchSelfResponse aFStack_78 [12];
  undefined4 local_6c;
  Player aPStack_68 [8];
  undefined4 local_60;
  Player aPStack_5c [8];
  FetchSelfResponse aFStack_54 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_50 [8];
  undefined1 auStack_48 [36];
  
  FUN_00510a86(auStack_48,*param_2);
  FUN_0051683e(auStack_a8,auStack_48);
  FUN_0050811a(auStack_48);
  FUN_0051af04(&local_94,0,auStack_a4);
  piVar5 = (int *)*param_2;
  pcVar6 = *(code **)(*piVar5 + 0x28);
  FUN_00519dda(aFStack_54,&local_94);
  FUN_0051a204(auStack_48,aFStack_54);
  iVar2 = (*pcVar6)(piVar5,param_3,auStack_48);
  FUN_00519db2(auStack_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_50);
  if (iVar2 == 0) {
    pFVar3 = (FetchSelfResponse *)&local_84;
    local_84 = 0xfffffffd;
    Player::Player(aPStack_80);
    FetchSelfResponse::FetchSelfResponse(param_1,pFVar3);
    goto LAB_0051b2b4;
  }
  Player::Player(aPStack_68);
  pFVar3 = (FetchSelfResponse *)&local_60;
  Player::Player(aPStack_5c);
  local_6c = 0xfffffffe;
  local_60 = 0xfffffffb;
  iVar2 = FUN_00553a80();
  if (iVar2 == 0) {
    local_88 = 0;
    local_8c = local_94;
    if (local_94 == (mutex *)0x0) {
                    /* WARNING: Subroutine does not return */
      FUN_007c4c60(1);
    }
    std::mutex::lock(local_94);
    local_88 = 1;
    if (local_94[8] == (mutex)0x0) {
      puVar4 = (unique_lock *)(local_94 + 4);
      FUN_007bfd24(&local_b0);
      lVar1 = (ulonglong)param_5 * 1000000 + CONCAT44(param_6 * 1000000,local_b0);
      local_a0 = (undefined4)lVar1;
      iStack_9c = iStack_ac + (int)((ulonglong)lVar1 >> 0x20);
      do {
        if (local_94[8] != (mutex)0x0) goto LAB_0051b256;
        iVar2 = std::condition_variable::
                __wait_until_impl<std::chrono::duration<long_long,std::ratio<1ll,1000000000ll>>>
                          (puVar4,(time_point *)&local_8c);
      } while (iVar2 != 1);
      if (local_94[8] != (mutex)0x0) goto LAB_0051b256;
    }
    else {
LAB_0051b256:
      pFVar3 = (FetchSelfResponse *)(local_94 + 0xc);
    }
    FetchSelfResponse::FetchSelfResponse(aFStack_54,pFVar3);
    std::unique_lock<std::mutex>::~unique_lock((unique_lock<std::mutex> *)&local_8c);
  }
  else {
    FUN_005166ae(4,"Blocking calls are not allowed from the UI thread.");
    FetchSelfResponse::FetchSelfResponse(aFStack_54,(FetchSelfResponse *)&local_6c);
  }
  pFVar3 = aFStack_78;
  FetchSelfResponse::FetchSelfResponse(pFVar3,aFStack_54);
  Player::~Player((Player *)a_Stack_50);
  Player::~Player(aPStack_5c);
  Player::~Player(aPStack_68);
  FetchSelfResponse::FetchSelfResponse(param_1,pFVar3);
LAB_0051b2b4:
  Player::~Player((Player *)(pFVar3 + 4));
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_90);
  FUN_00516580(auStack_a8);
  return param_1;
}

// ---- gpg::PlayerManager::FetchSelfBlocking  @ 0x51b314
/* gpg::PlayerManager::FetchSelfBlocking(gpg::DataSource) */

FetchSelfResponse * gpg::PlayerManager::FetchSelfBlocking(FetchSelfResponse *param_1)

{
  FetchSelfResponse aFStack_24 [4];
  Player aPStack_20 [12];
  
  FetchSelfBlocking(aFStack_24);
  FetchSelfResponse::FetchSelfResponse(param_1,aFStack_24);
  Player::~Player(aPStack_20);
  return param_1;
}

// ---- gpg::PlayerManager::FetchSelfBlocking  @ 0x51b350
/* gpg::PlayerManager::FetchSelfBlocking() */

void gpg::PlayerManager::FetchSelfBlocking(void)

{
  FetchSelfResponse *in_r0;
  undefined4 in_r1;
  FetchSelfResponse aFStack_1c [4];
  Player aPStack_18 [12];
  
  FetchSelfBlocking(aFStack_1c,in_r1,1);
  FetchSelfResponse::FetchSelfResponse(in_r0,aFStack_1c);
  Player::~Player(aPStack_18);
  return;
}

// ---- gpg::PlayerManager::FetchSelfBlocking  @ 0x51b37e
/* gpg::PlayerManager::FetchSelfBlocking(std::chrono::duration<long long, std::ratio<1ll, 1000ll> >)
    */

FetchSelfResponse *
gpg::PlayerManager::FetchSelfBlocking
          (FetchSelfResponse *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  FetchSelfResponse aFStack_1c [4];
  Player aPStack_18 [12];
  
  FetchSelfBlocking(aFStack_1c,param_2,1,param_4,param_3,param_4);
  FetchSelfResponse::FetchSelfResponse(param_1,aFStack_1c);
  Player::~Player(aPStack_18);
  return param_1;
}

// ---- gpg::PlayerManager::FetchBlocking  @ 0x51b3b0
/* gpg::PlayerManager::FetchBlocking(gpg::DataSource, std::chrono::duration<long long,
   std::ratio<1ll, 1000ll> >, std::string const&) */

FetchResponse *
gpg::PlayerManager::FetchBlocking
          (FetchResponse *param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4,
          uint param_5,int param_6,undefined4 param_7)

{
  longlong lVar1;
  int iVar2;
  FetchResponse *pFVar3;
  unique_lock *puVar4;
  int *piVar5;
  code *pcVar6;
  undefined4 local_b0;
  int iStack_ac;
  undefined1 auStack_a8 [4];
  undefined1 auStack_a4 [4];
  undefined4 local_a0;
  int iStack_9c;
  mutex *local_94;
  __shared_count a_Stack_90 [4];
  mutex *local_8c;
  undefined1 local_88;
  undefined4 local_84;
  Player aPStack_80 [8];
  FetchResponse aFStack_78 [12];
  undefined4 local_6c;
  Player aPStack_68 [8];
  undefined4 local_60;
  Player aPStack_5c [8];
  mutex *local_54;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_50 [8];
  undefined1 auStack_48 [36];
  
  FUN_00510a86(auStack_48,*param_2);
  FUN_0051683e(auStack_a8,auStack_48);
  FUN_0050811a(auStack_48);
  FUN_0051afc4(&local_94,0,auStack_a4);
  piVar5 = (int *)*param_2;
  pcVar6 = *(code **)(*piVar5 + 0x2c);
  local_54 = local_94;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count(a_Stack_50,a_Stack_90);
  FUN_0051a2a4(auStack_48,(FetchResponse *)&local_54);
  iVar2 = (*pcVar6)(piVar5,param_3,param_7,auStack_48);
  FUN_00519dfe(auStack_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_50);
  if (iVar2 == 0) {
    pFVar3 = (FetchResponse *)&local_84;
    local_84 = 0xfffffffd;
    Player::Player(aPStack_80);
    FetchResponse::FetchResponse(param_1,pFVar3);
    goto LAB_0051b550;
  }
  Player::Player(aPStack_68);
  pFVar3 = (FetchResponse *)&local_60;
  Player::Player(aPStack_5c);
  local_6c = 0xfffffffe;
  local_60 = 0xfffffffb;
  iVar2 = FUN_00553a80();
  if (iVar2 == 0) {
    local_88 = 0;
    local_8c = local_94;
    if (local_94 == (mutex *)0x0) {
                    /* WARNING: Subroutine does not return */
      FUN_007c4c60(1);
    }
    std::mutex::lock(local_94);
    local_88 = 1;
    if (local_94[8] == (mutex)0x0) {
      puVar4 = (unique_lock *)(local_94 + 4);
      FUN_007bfd24(&local_b0);
      lVar1 = (ulonglong)param_5 * 1000000 + CONCAT44(param_6 * 1000000,local_b0);
      local_a0 = (undefined4)lVar1;
      iStack_9c = iStack_ac + (int)((ulonglong)lVar1 >> 0x20);
      do {
        if (local_94[8] != (mutex)0x0) goto LAB_0051b4f2;
        iVar2 = std::condition_variable::
                __wait_until_impl<std::chrono::duration<long_long,std::ratio<1ll,1000000000ll>>>
                          (puVar4,(time_point *)&local_8c);
      } while (iVar2 != 1);
      if (local_94[8] != (mutex)0x0) goto LAB_0051b4f2;
    }
    else {
LAB_0051b4f2:
      pFVar3 = (FetchResponse *)(local_94 + 0xc);
    }
    FetchResponse::FetchResponse((FetchResponse *)&local_54,pFVar3);
    std::unique_lock<std::mutex>::~unique_lock((unique_lock<std::mutex> *)&local_8c);
  }
  else {
    FUN_005166ae(4,"Blocking calls are not allowed from the UI thread.");
    FetchResponse::FetchResponse((FetchResponse *)&local_54,(FetchResponse *)&local_6c);
  }
  pFVar3 = aFStack_78;
  FetchResponse::FetchResponse(pFVar3,(FetchResponse *)&local_54);
  Player::~Player((Player *)a_Stack_50);
  Player::~Player(aPStack_5c);
  Player::~Player(aPStack_68);
  FetchResponse::FetchResponse(param_1,pFVar3);
LAB_0051b550:
  Player::~Player((Player *)(pFVar3 + 4));
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)a_Stack_90);
  FUN_00516580(auStack_a8);
  return param_1;
}

// ---- gpg::PlayerManager::FetchBlocking  @ 0x51b5b0
/* gpg::PlayerManager::FetchBlocking(gpg::DataSource, std::string const&) */

FetchResponse * gpg::PlayerManager::FetchBlocking(FetchResponse *param_1)

{
  FetchResponse aFStack_24 [4];
  Player aPStack_20 [12];
  
  FetchBlocking(aFStack_24);
  FetchResponse::FetchResponse(param_1,aFStack_24);
  Player::~Player(aPStack_20);
  return param_1;
}

// ---- gpg::PlayerManager::FetchBlocking  @ 0x51b5f0
/* gpg::PlayerManager::FetchBlocking(std::string const&) */

string * gpg::PlayerManager::FetchBlocking(string *param_1)

{
  undefined4 in_r1;
  FetchResponse aFStack_1c [4];
  Player aPStack_18 [12];
  
  FetchBlocking(aFStack_1c,in_r1,1);
  FetchResponse::FetchResponse((FetchResponse *)param_1,aFStack_1c);
  Player::~Player(aPStack_18);
  return param_1;
}

// ---- gpg::PlayerManager::FetchBlocking  @ 0x51b620
/* gpg::PlayerManager::FetchBlocking(std::chrono::duration<long long, std::ratio<1ll, 1000ll> >,
   std::string const&) */

FetchResponse *
gpg::PlayerManager::FetchBlocking
          (FetchResponse *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
          undefined4 param_5)

{
  FetchResponse aFStack_1c [4];
  Player aPStack_18 [12];
  
  FetchBlocking(aFStack_1c,param_2,1,param_5,param_3,param_4,param_5);
  FetchResponse::FetchResponse(param_1,aFStack_1c);
  Player::~Player(aPStack_18);
  return param_1;
}

// ---- gpg::PlayerManager::FetchRecentlyPlayedBlocking  @ 0x51b758
/* gpg::PlayerManager::FetchRecentlyPlayedBlocking(gpg::DataSource, std::chrono::duration<long long,
   std::ratio<1ll, 1000ll> >) */

FetchListResponse *
gpg::PlayerManager::FetchRecentlyPlayedBlocking
          (FetchListResponse *param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4,
          undefined4 param_5,undefined4 param_6)

{
  FetchListResponse *pFVar1;
  int iVar2;
  int *piVar3;
  code *pcVar4;
  undefined1 auStack_68 [4];
  undefined1 auStack_64 [4];
  undefined4 local_60;
  __shared_count a_Stack_5c [4];
  undefined4 local_58;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_54 [12];
  undefined4 local_48;
  int local_44;
  int local_40;
  int local_3c;
  
  FUN_00510a86((FetchListResponse *)&local_48,*param_2);
  FUN_0051683e(auStack_68,(FetchListResponse *)&local_48);
  FUN_0050811a((FetchListResponse *)&local_48);
  FUN_0051b084(&local_60,0,auStack_64);
  piVar3 = (int *)*param_2;
  pcVar4 = *(code **)(*piVar3 + 0x30);
  pFVar1 = (FetchListResponse *)&local_58;
  local_58 = local_60;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count(a_Stack_54,a_Stack_5c);
  FUN_0051a34c((FetchListResponse *)&local_48,pFVar1);
  iVar2 = (*pcVar4)(piVar3,param_3,(FetchListResponse *)&local_48);
  FUN_00519e26((FetchListResponse *)&local_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_54);
  if (iVar2 == 0) {
    local_48 = 0xfffffffd;
    local_44 = iVar2;
    local_40 = iVar2;
    local_3c = iVar2;
    FetchListResponse::FetchListResponse(param_1,(FetchListResponse *)&local_48);
    pFVar1 = (FetchListResponse *)&local_48;
  }
  else {
    FUN_0051b658(pFVar1,&local_60,param_5,param_6);
    FetchListResponse::FetchListResponse(param_1,pFVar1);
  }
  std::vector<gpg::Player,std::allocator<gpg::Player>>::~vector
            ((vector<gpg::Player,std::allocator<gpg::Player>> *)(pFVar1 + 4));
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)a_Stack_5c);
  FUN_00516580(auStack_68);
  return param_1;
}

// ---- gpg::PlayerManager::FetchRecentlyPlayedBlocking  @ 0x51b834
/* gpg::PlayerManager::FetchRecentlyPlayedBlocking(gpg::DataSource) */

FetchListResponse * gpg::PlayerManager::FetchRecentlyPlayedBlocking(FetchListResponse *param_1)

{
  FetchListResponse aFStack_20 [4];
  vector<gpg::Player,std::allocator<gpg::Player>> avStack_1c [12];
  
  FetchRecentlyPlayedBlocking(aFStack_20);
  FetchListResponse::FetchListResponse(param_1,aFStack_20);
  std::vector<gpg::Player,std::allocator<gpg::Player>>::~vector(avStack_1c);
  return param_1;
}

// ---- gpg::PlayerManager::FetchRecentlyPlayedBlocking  @ 0x51b868
/* gpg::PlayerManager::FetchRecentlyPlayedBlocking() */

void gpg::PlayerManager::FetchRecentlyPlayedBlocking(void)

{
  FetchListResponse *in_r0;
  undefined4 in_r1;
  FetchListResponse aFStack_20 [4];
  vector<gpg::Player,std::allocator<gpg::Player>> avStack_1c [16];
  
  FetchRecentlyPlayedBlocking(aFStack_20,in_r1,1);
  FetchListResponse::FetchListResponse(in_r0,aFStack_20);
  std::vector<gpg::Player,std::allocator<gpg::Player>>::~vector(avStack_1c);
  return;
}

// ---- gpg::PlayerManager::FetchRecentlyPlayedBlocking  @ 0x51b88a
/* gpg::PlayerManager::FetchRecentlyPlayedBlocking(std::chrono::duration<long long, std::ratio<1ll,
   1000ll> >) */

FetchListResponse *
gpg::PlayerManager::FetchRecentlyPlayedBlocking
          (FetchListResponse *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  FetchListResponse aFStack_20 [4];
  vector<gpg::Player,std::allocator<gpg::Player>> avStack_1c [16];
  
  FetchRecentlyPlayedBlocking(aFStack_20,param_2,1,param_4,param_3,param_4);
  FetchListResponse::FetchListResponse(param_1,aFStack_20);
  std::vector<gpg::Player,std::allocator<gpg::Player>>::~vector(avStack_1c);
  return param_1;
}

// ---- gpg::PlayerManager::FetchConnectedBlocking  @ 0x51b8b2
/* gpg::PlayerManager::FetchConnectedBlocking(gpg::DataSource, std::chrono::duration<long long,
   std::ratio<1ll, 1000ll> >) */

FetchListResponse *
gpg::PlayerManager::FetchConnectedBlocking
          (FetchListResponse *param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4,
          undefined4 param_5,undefined4 param_6)

{
  FetchListResponse *pFVar1;
  int iVar2;
  int *piVar3;
  code *pcVar4;
  undefined1 auStack_68 [4];
  undefined1 auStack_64 [4];
  undefined4 local_60;
  __shared_count a_Stack_5c [4];
  undefined4 local_58;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_54 [12];
  undefined4 local_48;
  int local_44;
  int local_40;
  int local_3c;
  
  FUN_00510a86((FetchListResponse *)&local_48,*param_2);
  FUN_0051683e(auStack_68,(FetchListResponse *)&local_48);
  FUN_0050811a((FetchListResponse *)&local_48);
  FUN_0051b084(&local_60,0,auStack_64);
  piVar3 = (int *)*param_2;
  pcVar4 = *(code **)(*piVar3 + 0x34);
  pFVar1 = (FetchListResponse *)&local_58;
  local_58 = local_60;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count(a_Stack_54,a_Stack_5c);
  FUN_0051a34c((FetchListResponse *)&local_48,pFVar1);
  iVar2 = (*pcVar4)(piVar3,param_3,(FetchListResponse *)&local_48);
  FUN_00519e26((FetchListResponse *)&local_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_54);
  if (iVar2 == 0) {
    local_48 = 0xfffffffd;
    local_44 = iVar2;
    local_40 = iVar2;
    local_3c = iVar2;
    FetchListResponse::FetchListResponse(param_1,(FetchListResponse *)&local_48);
    pFVar1 = (FetchListResponse *)&local_48;
  }
  else {
    FUN_0051b658(pFVar1,&local_60,param_5,param_6);
    FetchListResponse::FetchListResponse(param_1,pFVar1);
  }
  std::vector<gpg::Player,std::allocator<gpg::Player>>::~vector
            ((vector<gpg::Player,std::allocator<gpg::Player>> *)(pFVar1 + 4));
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)a_Stack_5c);
  FUN_00516580(auStack_68);
  return param_1;
}

// ---- gpg::PlayerManager::FetchConnectedBlocking  @ 0x51b98c
/* gpg::PlayerManager::FetchConnectedBlocking(gpg::DataSource) */

FetchListResponse * gpg::PlayerManager::FetchConnectedBlocking(FetchListResponse *param_1)

{
  FetchListResponse aFStack_20 [4];
  vector<gpg::Player,std::allocator<gpg::Player>> avStack_1c [12];
  
  FetchConnectedBlocking(aFStack_20);
  FetchListResponse::FetchListResponse(param_1,aFStack_20);
  std::vector<gpg::Player,std::allocator<gpg::Player>>::~vector(avStack_1c);
  return param_1;
}

// ---- gpg::PlayerManager::FetchConnectedBlocking  @ 0x51b9c0
/* gpg::PlayerManager::FetchConnectedBlocking() */

void gpg::PlayerManager::FetchConnectedBlocking(void)

{
  FetchListResponse *in_r0;
  undefined4 in_r1;
  FetchListResponse aFStack_20 [4];
  vector<gpg::Player,std::allocator<gpg::Player>> avStack_1c [16];
  
  FetchConnectedBlocking(aFStack_20,in_r1,1);
  FetchListResponse::FetchListResponse(in_r0,aFStack_20);
  std::vector<gpg::Player,std::allocator<gpg::Player>>::~vector(avStack_1c);
  return;
}

// ---- gpg::PlayerManager::FetchConnectedBlocking  @ 0x51b9e2
/* gpg::PlayerManager::FetchConnectedBlocking(std::chrono::duration<long long, std::ratio<1ll,
   1000ll> >) */

FetchListResponse *
gpg::PlayerManager::FetchConnectedBlocking
          (FetchListResponse *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  FetchListResponse aFStack_20 [4];
  vector<gpg::Player,std::allocator<gpg::Player>> avStack_1c [16];
  
  FetchConnectedBlocking(aFStack_20,param_2,1,param_4,param_3,param_4);
  FetchListResponse::FetchListResponse(param_1,aFStack_20);
  std::vector<gpg::Player,std::allocator<gpg::Player>>::~vector(avStack_1c);
  return param_1;
}

// ---- gpg::PlayerManager::FetchInvitableBlocking  @ 0x51ba0a
/* gpg::PlayerManager::FetchInvitableBlocking(gpg::DataSource, std::chrono::duration<long long,
   std::ratio<1ll, 1000ll> >) */

FetchListResponse *
gpg::PlayerManager::FetchInvitableBlocking
          (FetchListResponse *param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4,
          undefined4 param_5,undefined4 param_6)

{
  FetchListResponse *pFVar1;
  int iVar2;
  int *piVar3;
  code *pcVar4;
  undefined1 auStack_68 [4];
  undefined1 auStack_64 [4];
  undefined4 local_60;
  __shared_count a_Stack_5c [4];
  undefined4 local_58;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_54 [12];
  undefined4 local_48;
  int local_44;
  int local_40;
  int local_3c;
  
  FUN_00510a86((FetchListResponse *)&local_48,*param_2);
  FUN_0051683e(auStack_68,(FetchListResponse *)&local_48);
  FUN_0050811a((FetchListResponse *)&local_48);
  FUN_0051b084(&local_60,0,auStack_64);
  piVar3 = (int *)*param_2;
  pcVar4 = *(code **)(*piVar3 + 0x38);
  pFVar1 = (FetchListResponse *)&local_58;
  local_58 = local_60;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count(a_Stack_54,a_Stack_5c);
  FUN_0051a34c((FetchListResponse *)&local_48,pFVar1);
  iVar2 = (*pcVar4)(piVar3,param_3,(FetchListResponse *)&local_48);
  FUN_00519e26((FetchListResponse *)&local_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_54);
  if (iVar2 == 0) {
    local_48 = 0xfffffffd;
    local_44 = iVar2;
    local_40 = iVar2;
    local_3c = iVar2;
    FetchListResponse::FetchListResponse(param_1,(FetchListResponse *)&local_48);
    pFVar1 = (FetchListResponse *)&local_48;
  }
  else {
    FUN_0051b658(pFVar1,&local_60,param_5,param_6);
    FetchListResponse::FetchListResponse(param_1,pFVar1);
  }
  std::vector<gpg::Player,std::allocator<gpg::Player>>::~vector
            ((vector<gpg::Player,std::allocator<gpg::Player>> *)(pFVar1 + 4));
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)a_Stack_5c);
  FUN_00516580(auStack_68);
  return param_1;
}

// ---- gpg::PlayerManager::FetchInvitableBlocking  @ 0x51bae4
/* gpg::PlayerManager::FetchInvitableBlocking(gpg::DataSource) */

FetchListResponse * gpg::PlayerManager::FetchInvitableBlocking(FetchListResponse *param_1)

{
  FetchListResponse aFStack_20 [4];
  vector<gpg::Player,std::allocator<gpg::Player>> avStack_1c [12];
  
  FetchInvitableBlocking(aFStack_20);
  FetchListResponse::FetchListResponse(param_1,aFStack_20);
  std::vector<gpg::Player,std::allocator<gpg::Player>>::~vector(avStack_1c);
  return param_1;
}

// ---- gpg::PlayerManager::FetchInvitableBlocking  @ 0x51bb18
/* gpg::PlayerManager::FetchInvitableBlocking() */

void gpg::PlayerManager::FetchInvitableBlocking(void)

{
  FetchListResponse *in_r0;
  undefined4 in_r1;
  FetchListResponse aFStack_20 [4];
  vector<gpg::Player,std::allocator<gpg::Player>> avStack_1c [16];
  
  FetchInvitableBlocking(aFStack_20,in_r1,1);
  FetchListResponse::FetchListResponse(in_r0,aFStack_20);
  std::vector<gpg::Player,std::allocator<gpg::Player>>::~vector(avStack_1c);
  return;
}

// ---- gpg::PlayerManager::FetchInvitableBlocking  @ 0x51bb3a
/* gpg::PlayerManager::FetchInvitableBlocking(std::chrono::duration<long long, std::ratio<1ll,
   1000ll> >) */

FetchListResponse *
gpg::PlayerManager::FetchInvitableBlocking
          (FetchListResponse *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  FetchListResponse aFStack_20 [4];
  vector<gpg::Player,std::allocator<gpg::Player>> avStack_1c [16];
  
  FetchInvitableBlocking(aFStack_20,param_2,1,param_4,param_3,param_4);
  FetchListResponse::FetchListResponse(param_1,aFStack_20);
  std::vector<gpg::Player,std::allocator<gpg::Player>>::~vector(avStack_1c);
  return param_1;
}

// ---- gpg::Quest::Quest  @ 0x51bb62
/* gpg::Quest::Quest() */

void __thiscall gpg::Quest::Quest(Quest *this)

{
  *(undefined4 *)this = 0;
  *(undefined4 *)(this + 4) = 0;
  return;
}

// ---- gpg::Quest::Quest  @ 0x51bb6a
/* gpg::Quest::Quest(std::shared_ptr<gpg::QuestImpl const>) */

void __thiscall gpg::Quest::Quest(Quest *this,undefined4 *param_2)

{
  bool bVar1;
  int iVar2;
  int *piVar3;
  
  *(undefined4 *)this = *param_2;
  iVar2 = param_2[1];
  *(int *)(this + 4) = iVar2;
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

// ---- gpg::Quest::Quest  @ 0x51bb8e
/* gpg::Quest::Quest(gpg::Quest const&) */

void __thiscall gpg::Quest::Quest(Quest *this,Quest *param_1)

{
  bool bVar1;
  int iVar2;
  int *piVar3;
  
  *(undefined4 *)this = *(undefined4 *)param_1;
  iVar2 = *(int *)(param_1 + 4);
  *(int *)(this + 4) = iVar2;
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

// ---- gpg::Quest::Quest  @ 0x51bbb2
/* gpg::Quest::Quest(gpg::Quest&&) */

void __thiscall gpg::Quest::Quest(Quest *this,Quest *param_1)

{
  undefined4 uVar1;
  
  *(undefined4 *)this = *(undefined4 *)param_1;
  *(undefined4 *)(this + 4) = 0;
  uVar1 = *(undefined4 *)(param_1 + 4);
  *(undefined4 *)(param_1 + 4) = 0;
  *(undefined4 *)(this + 4) = uVar1;
  *(undefined4 *)param_1 = 0;
  return;
}

// ---- gpg::Quest::Valid  @ 0x51bbc6
/* gpg::Quest::Valid() const */

bool __thiscall gpg::Quest::Valid(Quest *this)

{
  return *(int *)this != 0;
}

// ---- gpg::Quest::Id  @ 0x51bbd0
/* gpg::Quest::Id() const */

undefined4 * __thiscall gpg::Quest::Id(Quest *this)

{
  int iVar1;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get id of an invalid Quest");
    return &DAT_00960b7c;
  }
  return *(undefined4 **)(*(int *)this + 4);
}

// ---- gpg::Quest::Name  @ 0x51bbfc
/* gpg::Quest::Name() const */

undefined4 * __thiscall gpg::Quest::Name(Quest *this)

{
  int iVar1;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get name of an invalid Quest");
    return &DAT_00960b7c;
  }
  return *(undefined4 **)(*(int *)this + 8);
}

// ---- gpg::Quest::Description  @ 0x51bc28
/* gpg::Quest::Description() const */

undefined4 * __thiscall gpg::Quest::Description(Quest *this)

{
  int iVar1;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get description of an invalid Quest");
    return &DAT_00960b7c;
  }
  return *(undefined4 **)(*(int *)this + 0xc);
}

// ---- gpg::Quest::IconUrl  @ 0x51bc54
/* gpg::Quest::IconUrl() const */

undefined4 * __thiscall gpg::Quest::IconUrl(Quest *this)

{
  int iVar1;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get icon URL of an invalid Quest");
    return &DAT_00960b7c;
  }
  return *(undefined4 **)(*(int *)this + 0x10);
}

// ---- gpg::Quest::BannerUrl  @ 0x51bc80
/* gpg::Quest::BannerUrl() const */

undefined4 * __thiscall gpg::Quest::BannerUrl(Quest *this)

{
  int iVar1;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get banner URL of an invalid Quest");
    return &DAT_00960b7c;
  }
  return *(undefined4 **)(*(int *)this + 0x14);
}

// ---- gpg::Quest::State  @ 0x51bcac
/* gpg::Quest::State() const */

undefined4 __thiscall gpg::Quest::State(Quest *this)

{
  int iVar1;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get state of an invalid Quest");
    return 1;
  }
  return *(undefined4 *)(*(int *)this + 0x2c);
}

// ---- gpg::Quest::ExpirationNotificationTime  @ 0x51bcd0
/* gpg::Quest::ExpirationNotificationTime() const */

void gpg::Quest::ExpirationNotificationTime(void)

{
  undefined4 *in_r0;
  int iVar1;
  Quest *in_r1;
  undefined4 uVar2;
  undefined4 uVar3;
  
  iVar1 = Valid(in_r1);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get expiration notification timestamp for an invalid Quest");
    uVar2 = 0;
    uVar3 = 0;
  }
  else {
    uVar2 = *(undefined4 *)(*(int *)in_r1 + 0x30);
    uVar3 = *(undefined4 *)(*(int *)in_r1 + 0x34);
  }
  *in_r0 = uVar2;
  in_r0[1] = uVar3;
  return;
}

// ---- gpg::Quest::StartTime  @ 0x51bd0c
/* gpg::Quest::StartTime() const */

void gpg::Quest::StartTime(void)

{
  undefined4 *in_r0;
  int iVar1;
  Quest *in_r1;
  undefined4 uVar2;
  undefined4 uVar3;
  
  iVar1 = Valid(in_r1);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get start timestamp of an invalid Quest");
    uVar2 = 0;
    uVar3 = 0;
  }
  else {
    uVar2 = *(undefined4 *)(*(int *)in_r1 + 0x38);
    uVar3 = *(undefined4 *)(*(int *)in_r1 + 0x3c);
  }
  *in_r0 = uVar2;
  in_r0[1] = uVar3;
  return;
}

// ---- gpg::Quest::ExpirationTime  @ 0x51bd48
/* gpg::Quest::ExpirationTime() const */

void gpg::Quest::ExpirationTime(void)

{
  undefined4 *in_r0;
  int iVar1;
  Quest *in_r1;
  undefined4 uVar2;
  undefined4 uVar3;
  
  iVar1 = Valid(in_r1);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get expiration timestamp of an invalid Quest");
    uVar2 = 0;
    uVar3 = 0;
  }
  else {
    uVar2 = *(undefined4 *)(*(int *)in_r1 + 0x40);
    uVar3 = *(undefined4 *)(*(int *)in_r1 + 0x44);
  }
  *in_r0 = uVar2;
  in_r0[1] = uVar3;
  return;
}

// ---- gpg::Quest::AcceptedTime  @ 0x51bd84
/* gpg::Quest::AcceptedTime() const */

void gpg::Quest::AcceptedTime(void)

{
  undefined4 *in_r0;
  int iVar1;
  Quest *in_r1;
  undefined4 uVar2;
  undefined4 uVar3;
  
  iVar1 = Valid(in_r1);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get accepted timestamp of an invalid Quest");
    uVar2 = 0;
    uVar3 = 0;
  }
  else {
    uVar2 = *(undefined4 *)(*(int *)in_r1 + 0x48);
    uVar3 = *(undefined4 *)(*(int *)in_r1 + 0x4c);
  }
  *in_r0 = uVar2;
  in_r0[1] = uVar3;
  return;
}

// ---- gpg::Quest::~Quest  @ 0x51bdc0
/* gpg::Quest::~Quest() */

Quest * __thiscall gpg::Quest::~Quest(Quest *this)

{
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(this + 4));
  return this;
}

// ---- gpg::Quest::CurrentMilestone  @ 0x51be48
/* gpg::Quest::CurrentMilestone() const */

void gpg::Quest::CurrentMilestone(void)

{
  QuestMilestone *in_r0;
  int iVar1;
  Quest *in_r1;
  QuestMilestone aQStack_18 [8];
  
  iVar1 = Valid(in_r1);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get current milestone of an invalid Quest");
    QuestMilestone::QuestMilestone(in_r0,(QuestMilestone *)&DAT_00960ba0);
  }
  else {
    FUN_0051bdce(aQStack_18,*(undefined4 *)in_r1);
    QuestMilestone::QuestMilestone(in_r0,aQStack_18);
    QuestMilestone::~QuestMilestone(aQStack_18);
  }
  return;
}

// ---- gpg::Quest::operator=  @ 0x51bea0
/* gpg::Quest::TEMPNAMEPLACEHOLDERVALUE(gpg::Quest&&) */

Quest * __thiscall gpg::Quest::operator=(Quest *this,Quest *param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 local_c;
  
  uVar1 = *(undefined4 *)param_1;
  uVar2 = *(undefined4 *)(param_1 + 4);
  *(undefined4 *)(param_1 + 4) = 0;
  *(undefined4 *)param_1 = 0;
  *(undefined4 *)this = uVar1;
  local_c = *(undefined4 *)(this + 4);
  *(undefined4 *)(this + 4) = uVar2;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_c);
  return this;
}

// ---- gpg::Quest::operator=  @ 0x51bec6
/* gpg::Quest::TEMPNAMEPLACEHOLDERVALUE(gpg::Quest const&) */

Quest * __thiscall gpg::Quest::operator=(Quest *this,Quest *param_1)

{
  bool bVar1;
  int *piVar2;
  int iVar3;
  
  *(undefined4 *)this = *(undefined4 *)param_1;
  iVar3 = *(int *)(param_1 + 4);
  if (iVar3 != *(int *)(this + 4)) {
    if (iVar3 != 0) {
      piVar2 = (int *)(iVar3 + 4);
      DataMemoryBarrier(0x1f);
      do {
        ExclusiveAccess(piVar2);
        bVar1 = (bool)hasExclusiveAccess(piVar2);
      } while (!bVar1);
      *piVar2 = *piVar2 + 1;
      DataMemoryBarrier(0x1f);
    }
    if (*(int *)(this + 4) != 0) {
      FUN_0033ce90();
    }
    *(int *)(this + 4) = iVar3;
  }
  return this;
}

// ---- gpg::QuestManager::QuestManager  @ 0x51c08c
/* gpg::QuestManager::QuestManager(gpg::GameServicesImpl*) */

void __thiscall gpg::QuestManager::QuestManager(QuestManager *this,GameServicesImpl *param_1)

{
  *(GameServicesImpl **)this = param_1;
  return;
}

// ---- gpg::QuestManager::~QuestManager  @ 0x51c090
/* gpg::QuestManager::~QuestManager() */

QuestManager * __thiscall gpg::QuestManager::~QuestManager(QuestManager *this)

{
  return this;
}

// ---- gpg::QuestManager::FetchResponse::FetchResponse  @ 0x51c0a6
/* gpg::QuestManager::FetchResponse::FetchResponse(gpg::QuestManager::FetchResponse&&) */

FetchResponse * __thiscall
gpg::QuestManager::FetchResponse::FetchResponse(FetchResponse *this,FetchResponse *param_1)

{
  *(undefined4 *)this = *(undefined4 *)param_1;
  Quest::Quest((Quest *)(this + 4),(Quest *)(param_1 + 4));
  return this;
}

// ---- gpg::QuestManager::FetchListResponse::FetchListResponse  @ 0x51c0ce
/* gpg::QuestManager::FetchListResponse::FetchListResponse(gpg::QuestManager::FetchListResponse&&)
    */

void __thiscall
gpg::QuestManager::FetchListResponse::FetchListResponse
          (FetchListResponse *this,FetchListResponse *param_1)

{
  undefined4 uVar1;
  
  *(undefined4 *)this = *(undefined4 *)param_1;
  *(undefined4 *)(this + 8) = 0;
  *(undefined4 *)(this + 0xc) = 0;
  *(undefined4 *)(this + 4) = 0;
  *(undefined4 *)(this + 4) = *(undefined4 *)(param_1 + 4);
  *(undefined4 *)(param_1 + 4) = 0;
  uVar1 = *(undefined4 *)(this + 8);
  *(undefined4 *)(this + 8) = *(undefined4 *)(param_1 + 8);
  *(undefined4 *)(param_1 + 8) = uVar1;
  uVar1 = *(undefined4 *)(this + 0xc);
  *(undefined4 *)(this + 0xc) = *(undefined4 *)(param_1 + 0xc);
  *(undefined4 *)(param_1 + 0xc) = uVar1;
  return;
}

// ---- gpg::QuestManager::AcceptResponse::AcceptResponse  @ 0x51c108
/* gpg::QuestManager::AcceptResponse::AcceptResponse(gpg::QuestManager::AcceptResponse&&) */

AcceptResponse * __thiscall
gpg::QuestManager::AcceptResponse::AcceptResponse(AcceptResponse *this,AcceptResponse *param_1)

{
  *(undefined4 *)this = *(undefined4 *)param_1;
  Quest::Quest((Quest *)(this + 4),(Quest *)(param_1 + 4));
  return this;
}

// ---- gpg::QuestManager::ClaimMilestoneResponse::~ClaimMilestoneResponse  @ 0x51c130
/* gpg::QuestManager::ClaimMilestoneResponse::~ClaimMilestoneResponse() */

ClaimMilestoneResponse * __thiscall
gpg::QuestManager::ClaimMilestoneResponse::~ClaimMilestoneResponse(ClaimMilestoneResponse *this)

{
  Quest::~Quest((Quest *)(this + 0xc));
  QuestMilestone::~QuestMilestone((QuestMilestone *)(this + 4));
  return this;
}

// ---- gpg::QuestManager::ClaimMilestoneResponse::ClaimMilestoneResponse  @ 0x51c160
/* gpg::QuestManager::ClaimMilestoneResponse::ClaimMilestoneResponse(gpg::QuestManager::ClaimMilestoneResponse&&)
    */

ClaimMilestoneResponse * __thiscall
gpg::QuestManager::ClaimMilestoneResponse::ClaimMilestoneResponse
          (ClaimMilestoneResponse *this,ClaimMilestoneResponse *param_1)

{
  *(undefined4 *)this = *(undefined4 *)param_1;
  QuestMilestone::QuestMilestone((QuestMilestone *)(this + 4),(QuestMilestone *)(param_1 + 4));
  Quest::Quest((Quest *)(this + 0xc),(Quest *)(param_1 + 0xc));
  return this;
}

// ---- gpg::QuestManager::QuestUIResponse::~QuestUIResponse  @ 0x51c1a4
/* gpg::QuestManager::QuestUIResponse::~QuestUIResponse() */

QuestUIResponse * __thiscall
gpg::QuestManager::QuestUIResponse::~QuestUIResponse(QuestUIResponse *this)

{
  QuestMilestone::~QuestMilestone((QuestMilestone *)(this + 0xc));
  Quest::~Quest((Quest *)(this + 4));
  return this;
}

// ---- gpg::QuestManager::QuestUIResponse::QuestUIResponse  @ 0x51c1d4
/* gpg::QuestManager::QuestUIResponse::QuestUIResponse(gpg::QuestManager::QuestUIResponse&&) */

QuestUIResponse * __thiscall
gpg::QuestManager::QuestUIResponse::QuestUIResponse(QuestUIResponse *this,QuestUIResponse *param_1)

{
  *(undefined4 *)this = *(undefined4 *)param_1;
  Quest::Quest((Quest *)(this + 4),(Quest *)(param_1 + 4));
  QuestMilestone::QuestMilestone((QuestMilestone *)(this + 0xc),(QuestMilestone *)(param_1 + 0xc));
  return this;
}

// ---- gpg::QuestManager::ClaimMilestoneResponse::ClaimMilestoneResponse  @ 0x51c62e
/* gpg::QuestManager::ClaimMilestoneResponse::ClaimMilestoneResponse() */

ClaimMilestoneResponse * __thiscall
gpg::QuestManager::ClaimMilestoneResponse::ClaimMilestoneResponse(ClaimMilestoneResponse *this)

{
  QuestMilestone::QuestMilestone((QuestMilestone *)(this + 4));
  Quest::Quest((Quest *)(this + 0xc));
  return this;
}

// ---- gpg::QuestManager::QuestUIResponse::QuestUIResponse  @ 0x51c69e
/* gpg::QuestManager::QuestUIResponse::QuestUIResponse() */

QuestUIResponse * __thiscall
gpg::QuestManager::QuestUIResponse::QuestUIResponse(QuestUIResponse *this)

{
  Quest::Quest((Quest *)(this + 4));
  QuestMilestone::QuestMilestone((QuestMilestone *)(this + 0xc));
  return this;
}

// ---- gpg::QuestManager::Fetch  @ 0x51cc88
/* gpg::QuestManager::Fetch(gpg::DataSource, std::string const&, std::function<void
   (gpg::QuestManager::FetchResponse const&)>) */

void __thiscall
gpg::QuestManager::Fetch(QuestManager *this,undefined4 param_2,undefined4 param_3,function *param_4)

{
  undefined4 uVar1;
  function *pfVar2;
  int iVar3;
  int *piVar4;
  code *pcVar5;
  undefined1 auStack_b8 [4];
  undefined4 local_b4;
  Quest aQStack_b0 [8];
  function<void(gpg::QuestManager::FetchResponse_const&)> afStack_a8 [8];
  int local_a0;
  undefined4 local_9c;
  _Function_base a_Stack_98 [8];
  int local_90;
  undefined4 local_8c;
  function<void(std::function<void()>)> afStack_88 [16];
  function<void(gpg::QuestManager::FetchResponse_const&)> afStack_78 [16];
  function<void(std::function<void()>)> afStack_68 [16];
  function<void(gpg::QuestManager::FetchResponse_const&)> afStack_58 [16];
  function<void(std::function<void()>)> afStack_48 [8];
  int local_40;
  function<void(gpg::QuestManager::FetchResponse_const&)> afStack_38 [20];
  
  FUN_00510a86(afStack_48,*(undefined4 *)this);
  FUN_0051683e(auStack_b8,afStack_48);
  FUN_0050811a(afStack_48);
  pfVar2 = (function *)FUN_0051075c(*(undefined4 *)this);
  std::function<void(gpg::QuestManager::FetchResponse_const&)>::function(afStack_a8,param_4);
  if (local_a0 == 0) {
    local_90 = local_a0;
    local_40 = local_a0;
  }
  else {
    local_90 = 0;
    std::swap<std::_Any_data>((_Any_data *)afStack_a8,(_Any_data *)a_Stack_98);
    uVar1 = local_8c;
    iVar3 = local_90;
    local_90 = local_a0;
    local_a0 = iVar3;
    local_8c = local_9c;
    local_9c = uVar1;
    std::function<void(std::function<void()>)>::function(afStack_48,pfVar2);
  }
  std::function<void(gpg::QuestManager::FetchResponse_const&)>::function
            (afStack_38,(function *)a_Stack_98);
  std::function<void(std::function<void()>)>::function(afStack_88,(function *)afStack_48);
  std::function<void(gpg::QuestManager::FetchResponse_const&)>::function
            (afStack_78,(function *)afStack_38);
  FUN_0051c092(afStack_48);
  std::_Function_base::~_Function_base(a_Stack_98);
  std::_Function_base::~_Function_base((_Function_base *)afStack_a8);
  piVar4 = *(int **)this;
  pcVar5 = *(code **)(*piVar4 + 0x68);
  std::function<void(std::function<void()>)>::function(afStack_68,(function *)afStack_88);
  std::function<void(gpg::QuestManager::FetchResponse_const&)>::function
            (afStack_58,(function *)afStack_78);
  iVar3 = (*pcVar5)(piVar4,param_2,param_3,afStack_68);
  FUN_0051c092(afStack_68);
  if (iVar3 == 0) {
    local_b4 = 0xfffffffd;
    Quest::Quest(aQStack_b0);
    FUN_0051cbc4(afStack_88,&local_b4);
    Quest::~Quest(aQStack_b0);
  }
  FUN_0051c092(afStack_88);
  FUN_00516580(auStack_b8);
  return;
}

// ---- gpg::QuestManager::Fetch  @ 0x51cdd4
/* gpg::QuestManager::Fetch(std::string const&, std::function<void (gpg::QuestManager::FetchResponse
   const&)>) */

void gpg::QuestManager::Fetch
               (QuestManager *param_1,undefined4 param_2,function *param_3,undefined4 param_4)

{
  QuestManager *pQStack_20;
  undefined4 uStack_1c;
  function *pfStack_18;
  undefined4 uStack_14;
  
  pQStack_20 = param_1;
  uStack_1c = param_2;
  pfStack_18 = param_3;
  uStack_14 = param_4;
  std::function<void(gpg::QuestManager::FetchResponse_const&)>::function
            ((function<void(gpg::QuestManager::FetchResponse_const&)> *)&pQStack_20,param_3);
  Fetch(param_1,1,param_2,(function<void(gpg::QuestManager::FetchResponse_const&)> *)&pQStack_20);
  std::_Function_base::~_Function_base((_Function_base *)&pQStack_20);
  return;
}

// ---- gpg::QuestManager::Accept  @ 0x51cefc
/* gpg::QuestManager::Accept(gpg::Quest const&, std::function<void
   (gpg::QuestManager::AcceptResponse const&)>) */

void __thiscall gpg::QuestManager::Accept(QuestManager *this,Quest *param_1,function *param_3)

{
  undefined4 uVar1;
  function *pfVar2;
  int iVar3;
  undefined4 *puVar4;
  int *piVar5;
  code *pcVar6;
  undefined1 auStack_c4 [4];
  undefined4 local_c0;
  Quest aQStack_bc [8];
  undefined4 local_b4;
  Quest aQStack_b0 [8];
  function<void(gpg::QuestManager::AcceptResponse_const&)> afStack_a8 [8];
  int local_a0;
  undefined4 local_9c;
  _Function_base a_Stack_98 [8];
  int local_90;
  undefined4 local_8c;
  function<void(std::function<void()>)> afStack_88 [16];
  function<void(gpg::QuestManager::AcceptResponse_const&)> afStack_78 [16];
  function<void(std::function<void()>)> afStack_68 [16];
  function<void(gpg::QuestManager::AcceptResponse_const&)> afStack_58 [16];
  function<void(std::function<void()>)> afStack_48 [8];
  int local_40;
  function<void(gpg::QuestManager::AcceptResponse_const&)> afStack_38 [20];
  
  FUN_00510a86(afStack_48,*(undefined4 *)this);
  FUN_0051683e(auStack_c4,afStack_48);
  FUN_0050811a(afStack_48);
  pfVar2 = (function *)FUN_0051075c(*(undefined4 *)this);
  std::function<void(gpg::QuestManager::AcceptResponse_const&)>::function(afStack_a8,param_3);
  if (local_a0 == 0) {
    local_90 = local_a0;
    local_40 = local_a0;
  }
  else {
    local_90 = 0;
    std::swap<std::_Any_data>((_Any_data *)afStack_a8,(_Any_data *)a_Stack_98);
    uVar1 = local_8c;
    iVar3 = local_90;
    local_90 = local_a0;
    local_a0 = iVar3;
    local_8c = local_9c;
    local_9c = uVar1;
    std::function<void(std::function<void()>)>::function(afStack_48,pfVar2);
  }
  std::function<void(gpg::QuestManager::AcceptResponse_const&)>::function
            (afStack_38,(function *)a_Stack_98);
  std::function<void(std::function<void()>)>::function(afStack_88,(function *)afStack_48);
  std::function<void(gpg::QuestManager::AcceptResponse_const&)>::function
            (afStack_78,(function *)afStack_38);
  FUN_0051c0f4(afStack_48);
  std::_Function_base::~_Function_base(a_Stack_98);
  std::_Function_base::~_Function_base((_Function_base *)afStack_a8);
  iVar3 = Quest::Valid(param_1);
  if (iVar3 == 0) {
    FUN_005166ae(4,"Accepting an invalid quest: skipping.");
    puVar4 = &local_c0;
    local_c0 = 0xfffffffe;
    Quest::Quest(aQStack_bc);
    FUN_0051ce38(afStack_88,puVar4);
  }
  else {
    piVar5 = *(int **)this;
    pcVar6 = *(code **)(*piVar5 + 0x70);
    std::function<void(std::function<void()>)>::function(afStack_68,(function *)afStack_88);
    std::function<void(gpg::QuestManager::AcceptResponse_const&)>::function
              (afStack_58,(function *)afStack_78);
    iVar3 = (*pcVar6)(piVar5,param_1,afStack_68);
    FUN_0051c0f4(afStack_68);
    if (iVar3 != 0) goto LAB_0051d032;
    puVar4 = &local_b4;
    local_b4 = 0xfffffffd;
    Quest::Quest(aQStack_b0);
    FUN_0051ce38(afStack_88,puVar4);
  }
  Quest::~Quest((Quest *)(puVar4 + 1));
LAB_0051d032:
  FUN_0051c0f4(afStack_88);
  FUN_00516580(auStack_c4);
  return;
}

// ---- gpg::QuestManager::ClaimMilestoneResponse::ClaimMilestoneResponse  @ 0x51d07e
/* gpg::QuestManager::ClaimMilestoneResponse::ClaimMilestoneResponse(gpg::QuestManager::ClaimMilestoneResponse
   const&) */

ClaimMilestoneResponse * __thiscall
gpg::QuestManager::ClaimMilestoneResponse::ClaimMilestoneResponse
          (ClaimMilestoneResponse *this,ClaimMilestoneResponse *param_1)

{
  *(undefined4 *)this = *(undefined4 *)param_1;
  QuestMilestone::QuestMilestone((QuestMilestone *)(this + 4),(QuestMilestone *)(param_1 + 4));
  Quest::Quest((Quest *)(this + 0xc),(Quest *)(param_1 + 0xc));
  return this;
}

// ---- gpg::QuestManager::ClaimMilestone  @ 0x51d1e0
/* gpg::QuestManager::ClaimMilestone(gpg::QuestMilestone const&, std::function<void
   (gpg::QuestManager::ClaimMilestoneResponse const&)>) */

void __thiscall
gpg::QuestManager::ClaimMilestone(QuestManager *this,QuestMilestone *param_1,function *param_3)

{
  undefined4 uVar1;
  function *pfVar2;
  int iVar3;
  ClaimMilestoneResponse *this_00;
  int *piVar4;
  code *pcVar5;
  undefined1 auStack_d4 [4];
  function<void(gpg::QuestManager::ClaimMilestoneResponse_const&)> afStack_d0 [8];
  int local_c8;
  undefined4 local_c4;
  _Function_base a_Stack_c0 [8];
  int local_b8;
  undefined4 local_b4;
  undefined4 local_b0;
  QuestMilestone aQStack_ac [8];
  Quest aQStack_a4 [8];
  undefined4 local_9c;
  QuestMilestone aQStack_98 [8];
  Quest aQStack_90 [8];
  function<void(std::function<void()>)> afStack_88 [16];
  function<void(gpg::QuestManager::ClaimMilestoneResponse_const&)> afStack_78 [16];
  function<void(std::function<void()>)> afStack_68 [16];
  function<void(gpg::QuestManager::ClaimMilestoneResponse_const&)> afStack_58 [16];
  function<void(std::function<void()>)> afStack_48 [8];
  int local_40;
  function<void(gpg::QuestManager::ClaimMilestoneResponse_const&)> afStack_38 [20];
  
  FUN_00510a86(afStack_48,*(undefined4 *)this);
  FUN_0051683e(auStack_d4,afStack_48);
  FUN_0050811a(afStack_48);
  pfVar2 = (function *)FUN_0051075c(*(undefined4 *)this);
  std::function<void(gpg::QuestManager::ClaimMilestoneResponse_const&)>::function
            (afStack_d0,param_3);
  if (local_c8 == 0) {
    local_b8 = local_c8;
    local_40 = local_c8;
  }
  else {
    local_b8 = 0;
    std::swap<std::_Any_data>((_Any_data *)afStack_d0,(_Any_data *)a_Stack_c0);
    uVar1 = local_b4;
    iVar3 = local_b8;
    local_b8 = local_c8;
    local_c8 = iVar3;
    local_b4 = local_c4;
    local_c4 = uVar1;
    std::function<void(std::function<void()>)>::function(afStack_48,pfVar2);
  }
  std::function<void(gpg::QuestManager::ClaimMilestoneResponse_const&)>::function
            (afStack_38,(function *)a_Stack_c0);
  std::function<void(std::function<void()>)>::function(afStack_88,(function *)afStack_48);
  std::function<void(gpg::QuestManager::ClaimMilestoneResponse_const&)>::function
            (afStack_78,(function *)afStack_38);
  FUN_0051c11c(afStack_48);
  std::_Function_base::~_Function_base(a_Stack_c0);
  std::_Function_base::~_Function_base((_Function_base *)afStack_d0);
  iVar3 = QuestMilestone::Valid(param_1);
  if (iVar3 == 0) {
    FUN_005166ae(4,"Claiming an invalid milestone: skipping.");
    this_00 = (ClaimMilestoneResponse *)&local_b0;
    local_b0 = 0xfffffff0;
    QuestMilestone::QuestMilestone(aQStack_ac);
    Quest::Quest(aQStack_a4);
    FUN_0051d124(afStack_88,this_00);
  }
  else {
    piVar4 = *(int **)this;
    pcVar5 = *(code **)(*piVar4 + 0x74);
    std::function<void(std::function<void()>)>::function(afStack_68,(function *)afStack_88);
    std::function<void(gpg::QuestManager::ClaimMilestoneResponse_const&)>::function
              (afStack_58,(function *)afStack_78);
    iVar3 = (*pcVar5)(piVar4,param_1,afStack_68);
    FUN_0051c11c(afStack_68);
    if (iVar3 != 0) goto LAB_0051d326;
    this_00 = (ClaimMilestoneResponse *)&local_9c;
    local_9c = 0xfffffffd;
    QuestMilestone::QuestMilestone(aQStack_98);
    Quest::Quest(aQStack_90);
    FUN_0051d124(afStack_88,this_00);
  }
  ClaimMilestoneResponse::~ClaimMilestoneResponse(this_00);
LAB_0051d326:
  FUN_0051c11c(afStack_88);
  FUN_00516580(auStack_d4);
  return;
}

// ---- gpg::QuestManager::QuestUIResponse::QuestUIResponse  @ 0x51d372
/* gpg::QuestManager::QuestUIResponse::QuestUIResponse(gpg::QuestManager::QuestUIResponse const&) */

QuestUIResponse * __thiscall
gpg::QuestManager::QuestUIResponse::QuestUIResponse(QuestUIResponse *this,QuestUIResponse *param_1)

{
  *(undefined4 *)this = *(undefined4 *)param_1;
  Quest::Quest((Quest *)(this + 4),(Quest *)(param_1 + 4));
  QuestMilestone::QuestMilestone((QuestMilestone *)(this + 0xc),(QuestMilestone *)(param_1 + 0xc));
  return this;
}

// ---- gpg::QuestManager::ShowAllUI  @ 0x51d4d4
/* gpg::QuestManager::ShowAllUI(std::function<void (gpg::QuestManager::QuestUIResponse const&)>) */

void __thiscall gpg::QuestManager::ShowAllUI(QuestManager *this,function *param_2)

{
  undefined4 uVar1;
  int iVar2;
  int *piVar3;
  code *pcVar4;
  undefined1 auStack_88 [4];
  function<void(gpg::QuestManager::QuestUIResponse_const&)> afStack_84 [16];
  undefined4 local_74;
  Quest aQStack_70 [8];
  QuestMilestone aQStack_68 [8];
  undefined1 auStack_60 [32];
  undefined1 auStack_40 [36];
  
  FUN_00510a86(auStack_40,*(undefined4 *)this);
  FUN_0051683e(auStack_88,auStack_40);
  FUN_0050811a(auStack_40);
  uVar1 = FUN_0051075c(*(undefined4 *)this);
  std::function<void(gpg::QuestManager::QuestUIResponse_const&)>::function(afStack_84,param_2);
  FUN_0051cb38(auStack_60,uVar1,afStack_84);
  std::_Function_base::~_Function_base((_Function_base *)afStack_84);
  piVar3 = *(int **)this;
  pcVar4 = *(code **)(*piVar3 + 0x78);
  FUN_0051c67a(auStack_40,auStack_60);
  iVar2 = (*pcVar4)(piVar3,auStack_40);
  FUN_0051c190(auStack_40);
  if (iVar2 == 0) {
    local_74 = 0xfffffffd;
    Quest::Quest(aQStack_70);
    QuestMilestone::QuestMilestone(aQStack_68);
    FUN_0051d418(auStack_60,(QuestUIResponse *)&local_74);
    QuestUIResponse::~QuestUIResponse((QuestUIResponse *)&local_74);
  }
  FUN_0051c190(auStack_60);
  FUN_00516580(auStack_88);
  return;
}

// ---- gpg::QuestManager::ShowUI  @ 0x51d5ac
/* gpg::QuestManager::ShowUI(gpg::Quest const&, std::function<void
   (gpg::QuestManager::QuestUIResponse const&)>) */

void __thiscall gpg::QuestManager::ShowUI(QuestManager *this,Quest *param_1,function *param_3)

{
  undefined4 uVar1;
  int iVar2;
  QuestUIResponse *this_00;
  int *piVar3;
  code *pcVar4;
  undefined1 auStack_9c [4];
  function<void(gpg::QuestManager::QuestUIResponse_const&)> afStack_98 [16];
  undefined4 local_88;
  Quest aQStack_84 [8];
  QuestMilestone aQStack_7c [8];
  undefined4 local_74;
  Quest aQStack_70 [8];
  QuestMilestone aQStack_68 [8];
  undefined1 auStack_60 [32];
  undefined1 auStack_40 [32];
  
  FUN_00510a86(auStack_40,*(undefined4 *)this);
  FUN_0051683e(auStack_9c,auStack_40);
  FUN_0050811a(auStack_40);
  uVar1 = FUN_0051075c(*(undefined4 *)this);
  std::function<void(gpg::QuestManager::QuestUIResponse_const&)>::function(afStack_98,param_3);
  FUN_0051cb38(auStack_60,uVar1,afStack_98);
  std::_Function_base::~_Function_base((_Function_base *)afStack_98);
  iVar2 = Quest::Valid(param_1);
  if (iVar2 == 0) {
    FUN_005166ae(4,"Showing an invalid quest: skipping.");
    this_00 = (QuestUIResponse *)&local_88;
    local_88 = 0xfffffffe;
    Quest::Quest(aQStack_84);
    QuestMilestone::QuestMilestone(aQStack_7c);
    FUN_0051d418(auStack_60,this_00);
  }
  else {
    piVar3 = *(int **)this;
    pcVar4 = *(code **)(*piVar3 + 0x7c);
    FUN_0051c67a(auStack_40,auStack_60);
    iVar2 = (*pcVar4)(piVar3,param_1,auStack_40);
    FUN_0051c190(auStack_40);
    if (iVar2 != 0) goto LAB_0051d678;
    this_00 = (QuestUIResponse *)&local_74;
    local_74 = 0xfffffffd;
    Quest::Quest(aQStack_70);
    QuestMilestone::QuestMilestone(aQStack_68);
    FUN_0051d418(auStack_60,this_00);
  }
  QuestUIResponse::~QuestUIResponse(this_00);
LAB_0051d678:
  FUN_0051c190(auStack_60);
  FUN_00516580(auStack_9c);
  return;
}

// ---- gpg::QuestManager::FetchListResponse::FetchListResponse  @ 0x51d750
/* gpg::QuestManager::FetchListResponse::FetchListResponse(gpg::QuestManager::FetchListResponse
   const&) */

FetchListResponse * __thiscall
gpg::QuestManager::FetchListResponse::FetchListResponse
          (FetchListResponse *this,FetchListResponse *param_1)

{
  void *pvVar1;
  undefined4 uVar2;
  int iVar3;
  uint uVar4;
  int iVar5;
  
  *(undefined4 *)this = *(undefined4 *)param_1;
  iVar5 = *(int *)(param_1 + 4);
  iVar3 = *(int *)(param_1 + 8);
  *(undefined4 *)(this + 4) = 0;
  uVar4 = iVar3 - iVar5 >> 3;
  *(undefined4 *)(this + 8) = 0;
  *(undefined4 *)(this + 0xc) = 0;
  pvVar1 = (void *)0x0;
  if (uVar4 != 0) {
    if (0x1fffffff < uVar4) {
      FUN_007c4844();
    }
    pvVar1 = operator_new(uVar4 * 8);
  }
  *(void **)(this + 4) = pvVar1;
  *(void **)(this + 8) = pvVar1;
  *(void **)(this + 0xc) = (void *)(uVar4 * 8 + (int)pvVar1);
  uVar2 = FUN_0051d716(*(undefined4 *)(param_1 + 4),*(undefined4 *)(param_1 + 8));
  *(undefined4 *)(this + 8) = uVar2;
  return this;
}

// ---- gpg::QuestManager::FetchList  @ 0x51d8c0
/* gpg::QuestManager::FetchList(gpg::DataSource, int, std::function<void
   (gpg::QuestManager::FetchListResponse const&)>) */

void __thiscall
gpg::QuestManager::FetchList
          (QuestManager *this,undefined4 param_2,undefined4 param_3,function *param_4)

{
  undefined4 uVar1;
  int iVar2;
  int *piVar3;
  code *pcVar4;
  undefined1 auStack_7c [4];
  function<void(gpg::QuestManager::FetchListResponse_const&)> afStack_78 [16];
  undefined1 auStack_68 [32];
  undefined4 local_48;
  int local_44;
  int local_40;
  int local_3c;
  
  FUN_00510a86(&local_48,*(undefined4 *)this);
  FUN_0051683e(auStack_7c,&local_48);
  FUN_0050811a(&local_48);
  uVar1 = FUN_0051075c(*(undefined4 *)this);
  std::function<void(gpg::QuestManager::FetchListResponse_const&)>::function(afStack_78,param_4);
  FUN_0051c774(auStack_68,uVar1,afStack_78);
  std::_Function_base::~_Function_base((_Function_base *)afStack_78);
  piVar3 = *(int **)this;
  pcVar4 = *(code **)(*piVar3 + 0x6c);
  FUN_0051c54e(&local_48,auStack_68);
  iVar2 = (*pcVar4)(piVar3,param_2,param_3,&local_48);
  FUN_0051c0ba(&local_48);
  if (iVar2 == 0) {
    local_48 = 0xfffffffd;
    local_44 = iVar2;
    local_40 = iVar2;
    local_3c = iVar2;
    FUN_0051d808(auStack_68,&local_48);
    std::vector<gpg::Quest,std::allocator<gpg::Quest>>::~vector
              ((vector<gpg::Quest,std::allocator<gpg::Quest>> *)&local_44);
  }
  FUN_0051c0ba(auStack_68);
  FUN_00516580(auStack_7c);
  return;
}

// ---- gpg::QuestManager::FetchList  @ 0x51d994
/* gpg::QuestManager::FetchList(std::function<void (gpg::QuestManager::FetchListResponse const&)>,
   int) */

void __thiscall
gpg::QuestManager::FetchList(QuestManager *this,function *param_2,undefined4 param_3)

{
  function<void(gpg::QuestManager::FetchListResponse_const&)> afStack_28 [20];
  
  FUN_005166ae(3,
               "Calling deprecated function: FetchList(FetchListCallback callback, int32_t fetch_flags)"
              );
  std::function<void(gpg::QuestManager::FetchListResponse_const&)>::function(afStack_28,param_2);
  FetchList(this,1,param_3,afStack_28);
  std::_Function_base::~_Function_base((_Function_base *)afStack_28);
  return;
}

// ---- gpg::QuestManager::FetchList  @ 0x51d9d4
/* gpg::QuestManager::FetchList(int, std::function<void (gpg::QuestManager::FetchListResponse
   const&)>) */

void gpg::QuestManager::FetchList
               (QuestManager *param_1,undefined4 param_2,function *param_3,undefined4 param_4)

{
  QuestManager *pQStack_20;
  undefined4 uStack_1c;
  function *pfStack_18;
  undefined4 uStack_14;
  
  pQStack_20 = param_1;
  uStack_1c = param_2;
  pfStack_18 = param_3;
  uStack_14 = param_4;
  std::function<void(gpg::QuestManager::FetchListResponse_const&)>::function
            ((function<void(gpg::QuestManager::FetchListResponse_const&)> *)&pQStack_20,param_3);
  FetchList(param_1,1,param_2,
            (function<void(gpg::QuestManager::FetchListResponse_const&)> *)&pQStack_20);
  std::_Function_base::~_Function_base((_Function_base *)&pQStack_20);
  return;
}

// ---- gpg::QuestManager::FetchList  @ 0x51da02
/* gpg::QuestManager::FetchList(gpg::DataSource, std::function<void
   (gpg::QuestManager::FetchListResponse const&)>) */

void __thiscall
gpg::QuestManager::FetchList(QuestManager *this,undefined4 param_2,function *param_3)

{
  undefined4 uVar1;
  int iVar2;
  int *piVar3;
  code *pcVar4;
  undefined1 auStack_74 [4];
  function<void(gpg::QuestManager::FetchListResponse_const&)> afStack_70 [16];
  undefined1 auStack_60 [32];
  undefined4 local_40;
  int local_3c;
  int local_38;
  int local_34;
  
  FUN_00510a86(&local_40,*(undefined4 *)this);
  FUN_0051683e(auStack_74,&local_40);
  FUN_0050811a(&local_40);
  uVar1 = FUN_0051075c(*(undefined4 *)this);
  std::function<void(gpg::QuestManager::FetchListResponse_const&)>::function(afStack_70,param_3);
  FUN_0051c774(auStack_60,uVar1,afStack_70);
  std::_Function_base::~_Function_base((_Function_base *)afStack_70);
  piVar3 = *(int **)this;
  pcVar4 = *(code **)(*piVar3 + 0x6c);
  FUN_0051c54e(&local_40,auStack_60);
  iVar2 = (*pcVar4)(piVar3,param_2,0xffffffff,&local_40);
  FUN_0051c0ba(&local_40);
  if (iVar2 == 0) {
    local_40 = 0xfffffffd;
    local_3c = iVar2;
    local_38 = iVar2;
    local_34 = iVar2;
    FUN_0051d808(auStack_60,&local_40);
    std::vector<gpg::Quest,std::allocator<gpg::Quest>>::~vector
              ((vector<gpg::Quest,std::allocator<gpg::Quest>> *)&local_3c);
  }
  FUN_0051c0ba(auStack_60);
  FUN_00516580(auStack_74);
  return;
}

// ---- gpg::QuestManager::FetchList  @ 0x51dad6
/* gpg::QuestManager::FetchList(std::function<void (gpg::QuestManager::FetchListResponse const&)>)
    */

void __thiscall gpg::QuestManager::FetchList(QuestManager *this,function *param_2)

{
  function<void(gpg::QuestManager::FetchListResponse_const&)> afStack_20 [20];
  
  std::function<void(gpg::QuestManager::FetchListResponse_const&)>::function(afStack_20,param_2);
  FetchList(this,1,afStack_20);
  std::_Function_base::~_Function_base((_Function_base *)afStack_20);
  return;
}

// ---- gpg::QuestManager::FetchBlocking  @ 0x51e010
/* gpg::QuestManager::FetchBlocking(gpg::DataSource, std::chrono::duration<long long,
   std::ratio<1ll, 1000ll> >, std::string const&) */

FetchResponse *
gpg::QuestManager::FetchBlocking
          (FetchResponse *param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4,
          uint param_5,int param_6,undefined4 param_7)

{
  longlong lVar1;
  int iVar2;
  FetchResponse *pFVar3;
  unique_lock *puVar4;
  int *piVar5;
  code *pcVar6;
  undefined4 local_b0;
  int iStack_ac;
  undefined1 auStack_a8 [4];
  undefined1 auStack_a4 [4];
  undefined4 local_a0;
  int iStack_9c;
  mutex *local_94;
  __shared_count a_Stack_90 [4];
  mutex *local_8c;
  undefined1 local_88;
  undefined4 local_84;
  Quest aQStack_80 [8];
  FetchResponse aFStack_78 [12];
  undefined4 local_6c;
  Quest aQStack_68 [8];
  undefined4 local_60;
  Quest aQStack_5c [8];
  mutex *local_54;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_50 [8];
  undefined1 auStack_48 [36];
  
  FUN_00510a86(auStack_48,*param_2);
  FUN_0051683e(auStack_a8,auStack_48);
  FUN_0050811a(auStack_48);
  FUN_0051dc70(&local_94,0,auStack_a4);
  piVar5 = (int *)*param_2;
  pcVar6 = *(code **)(*piVar5 + 0x68);
  local_54 = local_94;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count(a_Stack_50,a_Stack_90);
  FUN_0051c9e8(auStack_48,(FetchResponse *)&local_54);
  iVar2 = (*pcVar6)(piVar5,param_3,param_7,auStack_48);
  FUN_0051c092(auStack_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_50);
  if (iVar2 == 0) {
    pFVar3 = (FetchResponse *)&local_84;
    local_84 = 0xfffffffd;
    Quest::Quest(aQStack_80);
    FetchResponse::FetchResponse(param_1,pFVar3);
    goto LAB_0051e1b0;
  }
  Quest::Quest(aQStack_68);
  pFVar3 = (FetchResponse *)&local_60;
  Quest::Quest(aQStack_5c);
  local_6c = 0xfffffffe;
  local_60 = 0xfffffffb;
  iVar2 = FUN_00553a80();
  if (iVar2 == 0) {
    local_88 = 0;
    local_8c = local_94;
    if (local_94 == (mutex *)0x0) {
                    /* WARNING: Subroutine does not return */
      FUN_007c4c60(1);
    }
    std::mutex::lock(local_94);
    local_88 = 1;
    if (local_94[8] == (mutex)0x0) {
      puVar4 = (unique_lock *)(local_94 + 4);
      FUN_007bfd24(&local_b0);
      lVar1 = (ulonglong)param_5 * 1000000 + CONCAT44(param_6 * 1000000,local_b0);
      local_a0 = (undefined4)lVar1;
      iStack_9c = iStack_ac + (int)((ulonglong)lVar1 >> 0x20);
      do {
        if (local_94[8] != (mutex)0x0) goto LAB_0051e152;
        iVar2 = std::condition_variable::
                __wait_until_impl<std::chrono::duration<long_long,std::ratio<1ll,1000000000ll>>>
                          (puVar4,(time_point *)&local_8c);
      } while (iVar2 != 1);
      if (local_94[8] != (mutex)0x0) goto LAB_0051e152;
    }
    else {
LAB_0051e152:
      pFVar3 = (FetchResponse *)(local_94 + 0xc);
    }
    FetchResponse::FetchResponse((FetchResponse *)&local_54,pFVar3);
    std::unique_lock<std::mutex>::~unique_lock((unique_lock<std::mutex> *)&local_8c);
  }
  else {
    FUN_005166ae(4,"Blocking calls are not allowed from the UI thread.");
    FetchResponse::FetchResponse((FetchResponse *)&local_54,(FetchResponse *)&local_6c);
  }
  pFVar3 = aFStack_78;
  FetchResponse::FetchResponse(pFVar3,(FetchResponse *)&local_54);
  Quest::~Quest((Quest *)a_Stack_50);
  Quest::~Quest(aQStack_5c);
  Quest::~Quest(aQStack_68);
  FetchResponse::FetchResponse(param_1,pFVar3);
LAB_0051e1b0:
  Quest::~Quest((Quest *)(pFVar3 + 4));
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)a_Stack_90);
  FUN_00516580(auStack_a8);
  return param_1;
}

// ---- gpg::QuestManager::FetchBlocking  @ 0x51e210
/* gpg::QuestManager::FetchBlocking(gpg::DataSource, std::string const&) */

FetchResponse * gpg::QuestManager::FetchBlocking(FetchResponse *param_1)

{
  FetchResponse aFStack_24 [4];
  Quest aQStack_20 [12];
  
  FetchBlocking(aFStack_24);
  FetchResponse::FetchResponse(param_1,aFStack_24);
  Quest::~Quest(aQStack_20);
  return param_1;
}

// ---- gpg::QuestManager::FetchBlocking  @ 0x51e250
/* gpg::QuestManager::FetchBlocking(std::string const&) */

string * gpg::QuestManager::FetchBlocking(string *param_1)

{
  undefined4 in_r1;
  FetchResponse aFStack_1c [4];
  Quest aQStack_18 [12];
  
  FetchBlocking(aFStack_1c,in_r1,1);
  FetchResponse::FetchResponse((FetchResponse *)param_1,aFStack_1c);
  Quest::~Quest(aQStack_18);
  return param_1;
}

// ---- gpg::QuestManager::FetchBlocking  @ 0x51e280
/* gpg::QuestManager::FetchBlocking(std::chrono::duration<long long, std::ratio<1ll, 1000ll> >,
   std::string const&) */

FetchResponse *
gpg::QuestManager::FetchBlocking
          (FetchResponse *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
          undefined4 param_5)

{
  FetchResponse aFStack_1c [4];
  Quest aQStack_18 [12];
  
  FetchBlocking(aFStack_1c,param_2,1,param_5,param_3,param_4,param_5);
  FetchResponse::FetchResponse(param_1,aFStack_1c);
  Quest::~Quest(aQStack_18);
  return param_1;
}

// ---- gpg::QuestManager::FetchListBlocking  @ 0x51e3b8
/* gpg::QuestManager::FetchListBlocking(gpg::DataSource, std::chrono::duration<long long,
   std::ratio<1ll, 1000ll> >, int) */

FetchListResponse *
gpg::QuestManager::FetchListBlocking
          (FetchListResponse *param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4,
          undefined4 param_5,undefined4 param_6,undefined4 param_7)

{
  FetchListResponse *pFVar1;
  int iVar2;
  int *piVar3;
  code *pcVar4;
  undefined1 auStack_68 [4];
  undefined1 auStack_64 [4];
  undefined4 local_60;
  __shared_count a_Stack_5c [4];
  undefined4 local_58;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_54 [12];
  undefined4 local_48;
  int local_44;
  int local_40;
  int local_3c;
  
  FUN_00510a86((FetchListResponse *)&local_48,*param_2);
  FUN_0051683e(auStack_68,(FetchListResponse *)&local_48);
  FUN_0050811a((FetchListResponse *)&local_48);
  FUN_0051dd30(&local_60,0,auStack_64);
  piVar3 = (int *)*param_2;
  pcVar4 = *(code **)(*piVar3 + 0x6c);
  pFVar1 = (FetchListResponse *)&local_58;
  local_58 = local_60;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count(a_Stack_54,a_Stack_5c);
  FUN_0051c938((FetchListResponse *)&local_48,pFVar1);
  iVar2 = (*pcVar4)(piVar3,param_3,param_7,(FetchListResponse *)&local_48);
  FUN_0051c0ba((FetchListResponse *)&local_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_54);
  if (iVar2 == 0) {
    local_48 = 0xfffffffd;
    local_44 = iVar2;
    local_40 = iVar2;
    local_3c = iVar2;
    FetchListResponse::FetchListResponse(param_1,(FetchListResponse *)&local_48);
    pFVar1 = (FetchListResponse *)&local_48;
  }
  else {
    FUN_0051e2b8(pFVar1,&local_60,param_5,param_6);
    FetchListResponse::FetchListResponse(param_1,pFVar1);
  }
  std::vector<gpg::Quest,std::allocator<gpg::Quest>>::~vector
            ((vector<gpg::Quest,std::allocator<gpg::Quest>> *)(pFVar1 + 4));
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)a_Stack_5c);
  FUN_00516580(auStack_68);
  return param_1;
}

// ---- gpg::QuestManager::FetchListBlocking  @ 0x51e494
/* gpg::QuestManager::FetchListBlocking(gpg::DataSource, int) */

FetchListResponse * gpg::QuestManager::FetchListBlocking(FetchListResponse *param_1)

{
  FetchListResponse aFStack_20 [4];
  vector<gpg::Quest,std::allocator<gpg::Quest>> avStack_1c [12];
  
  FetchListBlocking(aFStack_20);
  FetchListResponse::FetchListResponse(param_1,aFStack_20);
  std::vector<gpg::Quest,std::allocator<gpg::Quest>>::~vector(avStack_1c);
  return param_1;
}

// ---- gpg::QuestManager::FetchListBlocking  @ 0x51e4c8
/* gpg::QuestManager::FetchListBlocking(int) */

int gpg::QuestManager::FetchListBlocking(int param_1)

{
  undefined4 in_r1;
  FetchListResponse aFStack_20 [4];
  vector<gpg::Quest,std::allocator<gpg::Quest>> avStack_1c [16];
  
  FetchListBlocking(aFStack_20,in_r1,1);
  FetchListResponse::FetchListResponse((FetchListResponse *)param_1,aFStack_20);
  std::vector<gpg::Quest,std::allocator<gpg::Quest>>::~vector(avStack_1c);
  return param_1;
}

// ---- gpg::QuestManager::FetchListBlocking  @ 0x51e4ec
/* gpg::QuestManager::FetchListBlocking(std::chrono::duration<long long, std::ratio<1ll, 1000ll> >,
   int) */

FetchListResponse *
gpg::QuestManager::FetchListBlocking
          (FetchListResponse *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
          undefined4 param_5)

{
  FetchListResponse aFStack_20 [4];
  vector<gpg::Quest,std::allocator<gpg::Quest>> avStack_1c [16];
  
  FetchListBlocking(aFStack_20,param_2,1,param_5,param_3,param_4,param_5);
  FetchListResponse::FetchListResponse(param_1,aFStack_20);
  std::vector<gpg::Quest,std::allocator<gpg::Quest>>::~vector(avStack_1c);
  return param_1;
}

// ---- gpg::QuestManager::FetchListBlocking  @ 0x51e518
/* gpg::QuestManager::FetchListBlocking(gpg::DataSource, std::chrono::duration<long long,
   std::ratio<1ll, 1000ll> >) */

FetchListResponse *
gpg::QuestManager::FetchListBlocking
          (FetchListResponse *param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4,
          undefined4 param_5,undefined4 param_6)

{
  FetchListResponse *pFVar1;
  int iVar2;
  int *piVar3;
  code *pcVar4;
  undefined1 auStack_68 [4];
  undefined1 auStack_64 [4];
  undefined4 local_60;
  __shared_count a_Stack_5c [4];
  undefined4 local_58;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_54 [12];
  undefined4 local_48;
  int local_44;
  int local_40;
  int local_3c;
  
  FUN_00510a86((FetchListResponse *)&local_48,*param_2);
  FUN_0051683e(auStack_68,(FetchListResponse *)&local_48);
  FUN_0050811a((FetchListResponse *)&local_48);
  FUN_0051dd30(&local_60,0,auStack_64);
  piVar3 = (int *)*param_2;
  pcVar4 = *(code **)(*piVar3 + 0x6c);
  pFVar1 = (FetchListResponse *)&local_58;
  local_58 = local_60;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count(a_Stack_54,a_Stack_5c);
  FUN_0051c938((FetchListResponse *)&local_48,pFVar1);
  iVar2 = (*pcVar4)(piVar3,param_3,0xffffffff,(FetchListResponse *)&local_48);
  FUN_0051c0ba((FetchListResponse *)&local_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_54);
  if (iVar2 == 0) {
    local_48 = 0xfffffffd;
    local_44 = iVar2;
    local_40 = iVar2;
    local_3c = iVar2;
    FetchListResponse::FetchListResponse(param_1,(FetchListResponse *)&local_48);
    pFVar1 = (FetchListResponse *)&local_48;
  }
  else {
    FUN_0051e2b8(pFVar1,&local_60,param_5,param_6);
    FetchListResponse::FetchListResponse(param_1,pFVar1);
  }
  std::vector<gpg::Quest,std::allocator<gpg::Quest>>::~vector
            ((vector<gpg::Quest,std::allocator<gpg::Quest>> *)(pFVar1 + 4));
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)a_Stack_5c);
  FUN_00516580(auStack_68);
  return param_1;
}

// ---- gpg::QuestManager::FetchListBlocking  @ 0x51e5f8
/* gpg::QuestManager::FetchListBlocking(gpg::DataSource) */

FetchListResponse * gpg::QuestManager::FetchListBlocking(FetchListResponse *param_1)

{
  FetchListResponse aFStack_20 [4];
  vector<gpg::Quest,std::allocator<gpg::Quest>> avStack_1c [12];
  
  FetchListBlocking(aFStack_20);
  FetchListResponse::FetchListResponse(param_1,aFStack_20);
  std::vector<gpg::Quest,std::allocator<gpg::Quest>>::~vector(avStack_1c);
  return param_1;
}

// ---- gpg::QuestManager::FetchListBlocking  @ 0x51e62c
/* gpg::QuestManager::FetchListBlocking() */

void gpg::QuestManager::FetchListBlocking(void)

{
  FetchListResponse *in_r0;
  undefined4 in_r1;
  FetchListResponse aFStack_20 [4];
  vector<gpg::Quest,std::allocator<gpg::Quest>> avStack_1c [16];
  
  FetchListBlocking(aFStack_20,in_r1,1);
  FetchListResponse::FetchListResponse(in_r0,aFStack_20);
  std::vector<gpg::Quest,std::allocator<gpg::Quest>>::~vector(avStack_1c);
  return;
}

// ---- gpg::QuestManager::FetchListBlocking  @ 0x51e64e
/* gpg::QuestManager::FetchListBlocking(std::chrono::duration<long long, std::ratio<1ll, 1000ll> >)
    */

FetchListResponse *
gpg::QuestManager::FetchListBlocking
          (FetchListResponse *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  FetchListResponse aFStack_20 [4];
  vector<gpg::Quest,std::allocator<gpg::Quest>> avStack_1c [16];
  
  FetchListBlocking(aFStack_20,param_2,1,param_4,param_3,param_4);
  FetchListResponse::FetchListResponse(param_1,aFStack_20);
  std::vector<gpg::Quest,std::allocator<gpg::Quest>>::~vector(avStack_1c);
  return param_1;
}

// ---- gpg::QuestManager::AcceptBlocking  @ 0x51e678
/* gpg::QuestManager::AcceptBlocking(std::chrono::duration<long long, std::ratio<1ll, 1000ll> >,
   gpg::Quest const&) */

AcceptResponse *
gpg::QuestManager::AcceptBlocking
          (AcceptResponse *param_1,undefined4 *param_2,uint param_3,int param_4,Quest *param_5)

{
  longlong lVar1;
  int iVar2;
  AcceptResponse *pAVar3;
  unique_lock *puVar4;
  int *piVar5;
  code *pcVar6;
  undefined4 local_b8;
  int iStack_b4;
  undefined1 auStack_b0 [4];
  undefined1 auStack_ac [4];
  undefined4 local_a8;
  int iStack_a4;
  mutex *local_a0;
  __shared_count a_Stack_9c [4];
  mutex *local_98;
  undefined1 local_94;
  undefined4 local_90;
  Quest aQStack_8c [8];
  undefined4 local_84;
  Quest aQStack_80 [8];
  AcceptResponse aAStack_78 [12];
  undefined4 local_6c;
  Quest aQStack_68 [8];
  undefined4 local_60;
  Quest aQStack_5c [8];
  mutex *local_54;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_50 [8];
  undefined1 auStack_48 [36];
  
  FUN_00510a86(auStack_48,*param_2);
  FUN_0051683e(auStack_b0,auStack_48);
  FUN_0050811a(auStack_48);
  iVar2 = Quest::Valid(param_5);
  if (iVar2 == 0) {
    FUN_005166ae(4,"Accepting an invalid quest: skipping.");
    local_90 = 0xfffffffe;
    Quest::Quest(aQStack_8c);
    AcceptResponse::AcceptResponse(param_1,(AcceptResponse *)&local_90);
    Quest::~Quest(aQStack_8c);
    goto LAB_0051e890;
  }
  FUN_0051ddc8(&local_a0,0,auStack_ac);
  piVar5 = (int *)*param_2;
  pcVar6 = *(code **)(*piVar5 + 0x70);
  local_54 = local_a0;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count(a_Stack_50,a_Stack_9c);
  FUN_0051c7e8(auStack_48,(AcceptResponse *)&local_54);
  iVar2 = (*pcVar6)(piVar5,param_5,auStack_48);
  FUN_0051c0f4(auStack_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_50);
  if (iVar2 == 0) {
    pAVar3 = (AcceptResponse *)&local_84;
    local_84 = 0xfffffffd;
    Quest::Quest(aQStack_80);
    AcceptResponse::AcceptResponse(param_1,pAVar3);
  }
  else {
    Quest::Quest(aQStack_68);
    pAVar3 = (AcceptResponse *)&local_60;
    Quest::Quest(aQStack_5c);
    local_6c = 0xfffffffe;
    local_60 = 0xfffffffb;
    iVar2 = FUN_00553a80();
    if (iVar2 == 0) {
      local_94 = 0;
      local_98 = local_a0;
      if (local_a0 == (mutex *)0x0) {
                    /* WARNING: Subroutine does not return */
        FUN_007c4c60(1);
      }
      std::mutex::lock(local_a0);
      local_94 = 1;
      if (local_a0[8] == (mutex)0x0) {
        puVar4 = (unique_lock *)(local_a0 + 4);
        FUN_007bfd24(&local_b8);
        lVar1 = (ulonglong)param_3 * 1000000 + CONCAT44(param_4 * 1000000,local_b8);
        local_a8 = (undefined4)lVar1;
        iStack_a4 = iStack_b4 + (int)((ulonglong)lVar1 >> 0x20);
        do {
          if (local_a0[8] != (mutex)0x0) goto LAB_0051e7e6;
          iVar2 = std::condition_variable::
                  __wait_until_impl<std::chrono::duration<long_long,std::ratio<1ll,1000000000ll>>>
                            (puVar4,(time_point *)&local_98);
        } while (iVar2 != 1);
        if (local_a0[8] != (mutex)0x0) goto LAB_0051e7e6;
      }
      else {
LAB_0051e7e6:
        pAVar3 = (AcceptResponse *)(local_a0 + 0xc);
      }
      AcceptResponse::AcceptResponse((AcceptResponse *)&local_54,pAVar3);
      std::unique_lock<std::mutex>::~unique_lock((unique_lock<std::mutex> *)&local_98);
    }
    else {
      FUN_005166ae(4,"Blocking calls are not allowed from the UI thread.");
      AcceptResponse::AcceptResponse((AcceptResponse *)&local_54,(AcceptResponse *)&local_6c);
    }
    pAVar3 = aAStack_78;
    AcceptResponse::AcceptResponse(pAVar3,(AcceptResponse *)&local_54);
    Quest::~Quest((Quest *)a_Stack_50);
    Quest::~Quest(aQStack_5c);
    Quest::~Quest(aQStack_68);
    AcceptResponse::AcceptResponse(param_1,pAVar3);
  }
  Quest::~Quest((Quest *)(pAVar3 + 4));
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)a_Stack_9c);
LAB_0051e890:
  FUN_00516580(auStack_b0);
  return param_1;
}

// ---- gpg::QuestManager::AcceptBlocking  @ 0x51e8ac
/* gpg::QuestManager::AcceptBlocking(gpg::Quest const&) */

Quest * gpg::QuestManager::AcceptBlocking(Quest *param_1)

{
  undefined4 in_r1;
  AcceptResponse aAStack_1c [4];
  Quest aQStack_18 [12];
  
  AcceptBlocking(aAStack_1c,in_r1,0x6cebb800,0x49);
  AcceptResponse::AcceptResponse((AcceptResponse *)param_1,aAStack_1c);
  Quest::~Quest(aQStack_18);
  return param_1;
}

// ---- gpg::QuestManager::ClaimMilestoneBlocking  @ 0x51e8e8
/* gpg::QuestManager::ClaimMilestoneBlocking(std::chrono::duration<long long, std::ratio<1ll,
   1000ll> >, gpg::QuestMilestone const&) */

ClaimMilestoneResponse *
gpg::QuestManager::ClaimMilestoneBlocking
          (ClaimMilestoneResponse *param_1,undefined4 *param_2,uint param_3,int param_4,
          QuestMilestone *param_5)

{
  longlong lVar1;
  int iVar2;
  ClaimMilestoneResponse *pCVar3;
  unique_lock *puVar4;
  int *piVar5;
  code *pcVar6;
  undefined4 local_e8;
  int iStack_e4;
  undefined1 auStack_e0 [4];
  undefined1 auStack_dc [4];
  undefined4 local_d8;
  int iStack_d4;
  mutex *local_d0;
  __shared_count a_Stack_cc [4];
  mutex *local_c8;
  undefined1 local_c4;
  undefined4 local_c0;
  QuestMilestone aQStack_bc [8];
  Quest aQStack_b4 [8];
  undefined4 local_ac;
  QuestMilestone aQStack_a8 [8];
  Quest aQStack_a0 [8];
  ClaimMilestoneResponse aCStack_98 [20];
  undefined4 local_84 [5];
  undefined4 local_70 [5];
  mutex *local_5c;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_58 [16];
  undefined1 auStack_48 [36];
  
  FUN_00510a86(auStack_48,*param_2);
  FUN_0051683e(auStack_e0,auStack_48);
  FUN_0050811a(auStack_48);
  iVar2 = QuestMilestone::Valid(param_5);
  if (iVar2 == 0) {
    FUN_005166ae(4,"Claiming an invalid milestone: skipping.");
    local_c0 = 0xfffffff0;
    QuestMilestone::QuestMilestone(aQStack_bc);
    Quest::Quest(aQStack_b4);
    ClaimMilestoneResponse::ClaimMilestoneResponse(param_1,(ClaimMilestoneResponse *)&local_c0);
    ClaimMilestoneResponse::~ClaimMilestoneResponse((ClaimMilestoneResponse *)&local_c0);
    goto LAB_0051eb08;
  }
  FUN_0051de88(&local_d0,0,auStack_dc);
  piVar5 = (int *)*param_2;
  pcVar6 = *(code **)(*piVar5 + 0x74);
  local_5c = local_d0;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count(a_Stack_58,a_Stack_cc);
  FUN_0051ca90(auStack_48,(ClaimMilestoneResponse *)&local_5c);
  iVar2 = (*pcVar6)(piVar5,param_5,auStack_48);
  FUN_0051c11c(auStack_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_58);
  if (iVar2 == 0) {
    pCVar3 = (ClaimMilestoneResponse *)&local_ac;
    local_ac = 0xfffffffd;
    QuestMilestone::QuestMilestone(aQStack_a8);
    Quest::Quest(aQStack_a0);
    ClaimMilestoneResponse::ClaimMilestoneResponse(param_1,pCVar3);
  }
  else {
    ClaimMilestoneResponse::ClaimMilestoneResponse((ClaimMilestoneResponse *)local_84);
    ClaimMilestoneResponse::ClaimMilestoneResponse((ClaimMilestoneResponse *)local_70);
    local_84[0] = 0xfffffffe;
    local_70[0] = 0xfffffffb;
    iVar2 = FUN_00553a80();
    if (iVar2 == 0) {
      local_c4 = 0;
      local_c8 = local_d0;
      if (local_d0 == (mutex *)0x0) {
                    /* WARNING: Subroutine does not return */
        FUN_007c4c60(1);
      }
      std::mutex::lock(local_d0);
      local_c4 = 1;
      if (local_d0[8] == (mutex)0x0) {
        puVar4 = (unique_lock *)(local_d0 + 4);
        FUN_007bfd24(&local_e8);
        lVar1 = (ulonglong)param_3 * 1000000 + CONCAT44(param_4 * 1000000,local_e8);
        local_d8 = (undefined4)lVar1;
        iStack_d4 = iStack_e4 + (int)((ulonglong)lVar1 >> 0x20);
        do {
          if (local_d0[8] != (mutex)0x0) goto LAB_0051ea60;
          iVar2 = std::condition_variable::
                  __wait_until_impl<std::chrono::duration<long_long,std::ratio<1ll,1000000000ll>>>
                            (puVar4,(time_point *)&local_c8);
        } while (iVar2 != 1);
        pCVar3 = (ClaimMilestoneResponse *)local_70;
        if (local_d0[8] != (mutex)0x0) goto LAB_0051ea60;
      }
      else {
LAB_0051ea60:
        pCVar3 = (ClaimMilestoneResponse *)(local_d0 + 0xc);
      }
      ClaimMilestoneResponse::ClaimMilestoneResponse((ClaimMilestoneResponse *)&local_5c,pCVar3);
      std::unique_lock<std::mutex>::~unique_lock((unique_lock<std::mutex> *)&local_c8);
    }
    else {
      FUN_005166ae(4,"Blocking calls are not allowed from the UI thread.");
      ClaimMilestoneResponse::ClaimMilestoneResponse
                ((ClaimMilestoneResponse *)&local_5c,(ClaimMilestoneResponse *)local_84);
    }
    pCVar3 = aCStack_98;
    ClaimMilestoneResponse::ClaimMilestoneResponse(pCVar3,(ClaimMilestoneResponse *)&local_5c);
    ClaimMilestoneResponse::~ClaimMilestoneResponse((ClaimMilestoneResponse *)&local_5c);
    ClaimMilestoneResponse::~ClaimMilestoneResponse((ClaimMilestoneResponse *)local_70);
    ClaimMilestoneResponse::~ClaimMilestoneResponse((ClaimMilestoneResponse *)local_84);
    ClaimMilestoneResponse::ClaimMilestoneResponse(param_1,pCVar3);
  }
  ClaimMilestoneResponse::~ClaimMilestoneResponse(pCVar3);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)a_Stack_cc);
LAB_0051eb08:
  FUN_00516580(auStack_e0);
  return param_1;
}

// ---- gpg::QuestManager::ClaimMilestoneBlocking  @ 0x51eb24
/* gpg::QuestManager::ClaimMilestoneBlocking(gpg::QuestMilestone const&) */

QuestMilestone * gpg::QuestManager::ClaimMilestoneBlocking(QuestMilestone *param_1)

{
  undefined4 in_r1;
  ClaimMilestoneResponse aCStack_24 [24];
  
  ClaimMilestoneBlocking(aCStack_24,in_r1,0x6cebb800,0x49);
  ClaimMilestoneResponse::ClaimMilestoneResponse((ClaimMilestoneResponse *)param_1,aCStack_24);
  ClaimMilestoneResponse::~ClaimMilestoneResponse(aCStack_24);
  return param_1;
}

// ---- gpg::QuestManager::ShowAllUIBlocking  @ 0x51ec70
/* gpg::QuestManager::ShowAllUIBlocking(std::chrono::duration<long long, std::ratio<1ll, 1000ll> >)
    */

QuestUIResponse *
gpg::QuestManager::ShowAllUIBlocking
          (QuestUIResponse *param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  code *pcVar2;
  QuestUIResponse *this;
  int *piVar3;
  undefined1 auStack_80 [4];
  undefined1 auStack_7c [4];
  undefined4 local_78;
  __shared_count a_Stack_74 [4];
  undefined4 local_70;
  Quest aQStack_6c [8];
  QuestMilestone aQStack_64 [8];
  undefined4 local_5c;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_58 [16];
  undefined1 auStack_48 [36];
  
  FUN_00510a86(auStack_48,*param_2);
  FUN_0051683e(auStack_80,auStack_48);
  FUN_0050811a(auStack_48);
  FUN_0051df4c(&local_78,0,auStack_7c);
  piVar3 = (int *)*param_2;
  pcVar2 = *(code **)(*piVar3 + 0x78);
  this = (QuestUIResponse *)&local_5c;
  local_5c = local_78;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count(a_Stack_58,a_Stack_74);
  FUN_0051c890(auStack_48,this);
  iVar1 = (*pcVar2)(piVar3,auStack_48);
  FUN_0051c190(auStack_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_58);
  if (iVar1 == 0) {
    this = (QuestUIResponse *)&local_70;
    local_70 = 0xfffffffd;
    Quest::Quest(aQStack_6c);
    QuestMilestone::QuestMilestone(aQStack_64);
    QuestUIResponse::QuestUIResponse(param_1,this);
  }
  else {
    FUN_0051eb60(this,&local_78,param_3,param_4);
    QuestUIResponse::QuestUIResponse(param_1,this);
  }
  QuestUIResponse::~QuestUIResponse(this);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)a_Stack_74);
  FUN_00516580(auStack_80);
  return param_1;
}

// ---- gpg::QuestManager::ShowAllUIBlocking  @ 0x51ed6c
/* gpg::QuestManager::ShowAllUIBlocking() */

void gpg::QuestManager::ShowAllUIBlocking(void)

{
  QuestUIResponse *in_r0;
  undefined4 in_r1;
  QuestUIResponse aQStack_24 [24];
  
  ShowAllUIBlocking(aQStack_24,in_r1,0x6cebb800,0x49);
  QuestUIResponse::QuestUIResponse(in_r0,aQStack_24);
  QuestUIResponse::~QuestUIResponse(aQStack_24);
  return;
}

// ---- gpg::QuestManager::ShowUIBlocking  @ 0x51eda4
/* gpg::QuestManager::ShowUIBlocking(std::chrono::duration<long long, std::ratio<1ll, 1000ll> >,
   gpg::Quest const&) */

QuestUIResponse *
gpg::QuestManager::ShowUIBlocking
          (QuestUIResponse *param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4,
          Quest *param_5)

{
  int iVar1;
  QuestUIResponse *this;
  int *piVar2;
  code *pcVar3;
  undefined1 auStack_94 [4];
  undefined1 auStack_90 [4];
  undefined4 local_8c;
  __shared_count a_Stack_88 [4];
  undefined4 local_84;
  Quest aQStack_80 [8];
  QuestMilestone aQStack_78 [8];
  undefined4 local_70;
  Quest aQStack_6c [8];
  QuestMilestone aQStack_64 [8];
  undefined4 local_5c;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_58 [16];
  undefined1 auStack_48 [36];
  
  FUN_00510a86(auStack_48,*param_2);
  FUN_0051683e(auStack_94,auStack_48);
  FUN_0050811a(auStack_48);
  iVar1 = Quest::Valid(param_5);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Showing an invalid quest: skipping.");
    local_84 = 0xfffffffe;
    Quest::Quest(aQStack_80);
    QuestMilestone::QuestMilestone(aQStack_78);
    QuestUIResponse::QuestUIResponse(param_1,(QuestUIResponse *)&local_84);
    QuestUIResponse::~QuestUIResponse((QuestUIResponse *)&local_84);
  }
  else {
    FUN_0051df4c(&local_8c,0,auStack_90);
    piVar2 = (int *)*param_2;
    pcVar3 = *(code **)(*piVar2 + 0x7c);
    this = (QuestUIResponse *)&local_5c;
    local_5c = local_8c;
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count(a_Stack_58,a_Stack_88);
    FUN_0051c890(auStack_48,this);
    iVar1 = (*pcVar3)(piVar2,param_5,auStack_48);
    FUN_0051c190(auStack_48);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_58);
    if (iVar1 == 0) {
      this = (QuestUIResponse *)&local_70;
      local_70 = 0xfffffffd;
      Quest::Quest(aQStack_6c);
      QuestMilestone::QuestMilestone(aQStack_64);
      QuestUIResponse::QuestUIResponse(param_1,this);
    }
    else {
      FUN_0051eb60(this,&local_8c,param_3,param_4);
      QuestUIResponse::QuestUIResponse(param_1,this);
    }
    QuestUIResponse::~QuestUIResponse(this);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)a_Stack_88);
  }
  FUN_00516580(auStack_94);
  return param_1;
}

// ---- gpg::QuestManager::ShowUIBlocking  @ 0x51eeec
/* gpg::QuestManager::ShowUIBlocking(gpg::Quest const&) */

Quest * gpg::QuestManager::ShowUIBlocking(Quest *param_1)

{
  undefined4 in_r1;
  QuestUIResponse aQStack_24 [24];
  
  ShowUIBlocking(aQStack_24,in_r1,0x6cebb800,0x49);
  QuestUIResponse::QuestUIResponse((QuestUIResponse *)param_1,aQStack_24);
  QuestUIResponse::~QuestUIResponse(aQStack_24);
  return param_1;
}

// ---- gpg::QuestMilestone::QuestMilestone  @ 0x51ef32
/* gpg::QuestMilestone::QuestMilestone() */

void __thiscall gpg::QuestMilestone::QuestMilestone(QuestMilestone *this)

{
  *(undefined4 *)this = 0;
  *(undefined4 *)(this + 4) = 0;
  return;
}

// ---- gpg::QuestMilestone::QuestMilestone  @ 0x51ef3a
/* gpg::QuestMilestone::QuestMilestone(std::shared_ptr<gpg::QuestImpl const>) */

void __thiscall gpg::QuestMilestone::QuestMilestone(QuestMilestone *this,undefined4 *param_2)

{
  bool bVar1;
  int iVar2;
  int *piVar3;
  
  *(undefined4 *)this = *param_2;
  iVar2 = param_2[1];
  *(int *)(this + 4) = iVar2;
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

// ---- gpg::QuestMilestone::QuestMilestone  @ 0x51ef5e
/* gpg::QuestMilestone::QuestMilestone(gpg::QuestMilestone const&) */

void __thiscall gpg::QuestMilestone::QuestMilestone(QuestMilestone *this,QuestMilestone *param_1)

{
  bool bVar1;
  int iVar2;
  int *piVar3;
  
  *(undefined4 *)this = *(undefined4 *)param_1;
  iVar2 = *(int *)(param_1 + 4);
  *(int *)(this + 4) = iVar2;
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

// ---- gpg::QuestMilestone::QuestMilestone  @ 0x51ef82
/* gpg::QuestMilestone::QuestMilestone(gpg::QuestMilestone&&) */

void __thiscall gpg::QuestMilestone::QuestMilestone(QuestMilestone *this,QuestMilestone *param_1)

{
  undefined4 uVar1;
  
  *(undefined4 *)this = *(undefined4 *)param_1;
  *(undefined4 *)(this + 4) = 0;
  uVar1 = *(undefined4 *)(param_1 + 4);
  *(undefined4 *)(param_1 + 4) = 0;
  *(undefined4 *)(this + 4) = uVar1;
  *(undefined4 *)param_1 = 0;
  return;
}

// ---- gpg::QuestMilestone::Valid  @ 0x51ef96
/* gpg::QuestMilestone::Valid() const */

bool __thiscall gpg::QuestMilestone::Valid(QuestMilestone *this)

{
  return *(int *)this != 0;
}

// ---- gpg::QuestMilestone::Id  @ 0x51efa0
/* gpg::QuestMilestone::Id() const */

undefined4 * __thiscall gpg::QuestMilestone::Id(QuestMilestone *this)

{
  int iVar1;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get id of an invalid QuestMilestone");
    return &DAT_00960b7c;
  }
  iVar1 = FUN_0051ef28(*(undefined4 *)this);
  return *(undefined4 **)(iVar1 + 4);
}

// ---- gpg::QuestMilestone::QuestId  @ 0x51efd0
/* gpg::QuestMilestone::QuestId() const */

undefined4 * __thiscall gpg::QuestMilestone::QuestId(QuestMilestone *this)

{
  int iVar1;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get the quest id of an invalid QuestMilestone");
    return &DAT_00960b7c;
  }
  iVar1 = FUN_0051ef28(*(undefined4 *)this);
  return *(undefined4 **)(iVar1 + 8);
}

// ---- gpg::QuestMilestone::EventId  @ 0x51f000
/* gpg::QuestMilestone::EventId() const */

undefined4 * __thiscall gpg::QuestMilestone::EventId(QuestMilestone *this)

{
  int iVar1;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get the event id of an invalid QuestMilestone");
    return &DAT_00960b7c;
  }
  iVar1 = FUN_0051ef28(*(undefined4 *)this);
  return *(undefined4 **)(iVar1 + 0x24);
}

// ---- gpg::QuestMilestone::State  @ 0x51f030
/* gpg::QuestMilestone::State() const */

undefined4 __thiscall gpg::QuestMilestone::State(QuestMilestone *this)

{
  int iVar1;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get state of an invalid QuestMilestone");
    return 1;
  }
  iVar1 = FUN_0051ef28(*(undefined4 *)this);
  return *(undefined4 *)(iVar1 + 0x30);
}

// ---- gpg::QuestMilestone::CurrentCount  @ 0x51f058
/* gpg::QuestMilestone::CurrentCount() const */

undefined8 __thiscall gpg::QuestMilestone::CurrentCount(QuestMilestone *this)

{
  int iVar1;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get current count of an invalid QuestMilestone");
    return 0;
  }
  iVar1 = FUN_0051ef28(*(undefined4 *)this);
  return *(undefined8 *)(iVar1 + 0x10);
}

// ---- gpg::QuestMilestone::TargetCount  @ 0x51f084
/* gpg::QuestMilestone::TargetCount() const */

undefined8 __thiscall gpg::QuestMilestone::TargetCount(QuestMilestone *this)

{
  int iVar1;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get target count of an invalid QuestMilestone");
    return 0;
  }
  iVar1 = FUN_0051ef28(*(undefined4 *)this);
  return *(undefined8 *)(iVar1 + 0x18);
}

// ---- gpg::QuestMilestone::CompletionRewardData  @ 0x51f0b0
/* gpg::QuestMilestone::CompletionRewardData() const */

undefined4 * __thiscall gpg::QuestMilestone::CompletionRewardData(QuestMilestone *this)

{
  int iVar1;
  int iVar2;
  void *pvVar3;
  void *pvVar4;
  uint uVar5;
  void *pvVar6;
  int iVar7;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get completion reward data of an invalid QuestMilestone");
    return &DAT_00960bb0;
  }
  iVar1 = *(int *)this;
  if (*(int *)(iVar1 + 0x68) == *(int *)(iVar1 + 0x6c)) {
    iVar2 = FUN_0051ef28(iVar1);
    iVar7 = **(int **)(iVar2 + 0x20);
    iVar2 = FUN_007c51d8();
    uVar5 = iVar2 - iVar7;
    pvVar3 = (void *)0x0;
    if (uVar5 != 0) {
      pvVar3 = operator_new(uVar5);
    }
    for (iVar2 = 0; 0 < (int)(uVar5 - iVar2); iVar2 = iVar2 + 1) {
      *(undefined1 *)((int)pvVar3 + iVar2) = *(undefined1 *)(iVar7 + iVar2);
    }
    pvVar4 = *(void **)(iVar1 + 0x68);
    pvVar6 = pvVar3;
    if (-1 < (int)uVar5) {
      pvVar6 = (void *)((int)pvVar3 + uVar5);
    }
    *(void **)(iVar1 + 0x68) = pvVar3;
    *(void **)(iVar1 + 0x6c) = pvVar6;
    *(uint *)(iVar1 + 0x70) = (int)pvVar3 + uVar5;
    if (pvVar4 != (void *)0x0) {
      operator_delete(pvVar4);
    }
  }
  return (undefined4 *)(iVar1 + 0x68);
}

// ---- gpg::QuestMilestone::~QuestMilestone  @ 0x51f128
/* gpg::QuestMilestone::~QuestMilestone() */

QuestMilestone * __thiscall gpg::QuestMilestone::~QuestMilestone(QuestMilestone *this)

{
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(this + 4));
  return this;
}

// ---- gpg::QuestMilestone::operator=  @ 0x51f136
/* gpg::QuestMilestone::TEMPNAMEPLACEHOLDERVALUE(gpg::QuestMilestone&&) */

QuestMilestone * __thiscall
gpg::QuestMilestone::operator=(QuestMilestone *this,QuestMilestone *param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 local_c;
  
  uVar1 = *(undefined4 *)param_1;
  uVar2 = *(undefined4 *)(param_1 + 4);
  *(undefined4 *)(param_1 + 4) = 0;
  *(undefined4 *)param_1 = 0;
  *(undefined4 *)this = uVar1;
  local_c = *(undefined4 *)(this + 4);
  *(undefined4 *)(this + 4) = uVar2;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_c);
  return this;
}

// ---- gpg::QuestMilestone::operator=  @ 0x51f15c
/* gpg::QuestMilestone::TEMPNAMEPLACEHOLDERVALUE(gpg::QuestMilestone const&) */

QuestMilestone * __thiscall
gpg::QuestMilestone::operator=(QuestMilestone *this,QuestMilestone *param_1)

{
  bool bVar1;
  int *piVar2;
  int iVar3;
  
  *(undefined4 *)this = *(undefined4 *)param_1;
  iVar3 = *(int *)(param_1 + 4);
  if (iVar3 != *(int *)(this + 4)) {
    if (iVar3 != 0) {
      piVar2 = (int *)(iVar3 + 4);
      DataMemoryBarrier(0x1f);
      do {
        ExclusiveAccess(piVar2);
        bVar1 = (bool)hasExclusiveAccess(piVar2);
      } while (!bVar1);
      *piVar2 = *piVar2 + 1;
      DataMemoryBarrier(0x1f);
    }
    if (*(int *)(this + 4) != 0) {
      FUN_0033ce90();
    }
    *(int *)(this + 4) = iVar3;
  }
  return this;
}

// ---- gpg::RealTimeEventListenerHelper::RealTimeEventListenerHelper  @ 0x51f1d8
/* gpg::RealTimeEventListenerHelper::RealTimeEventListenerHelper(std::shared_ptr<gpg::RealTimeEventListenerHelperImpl>)
    */

void __thiscall
gpg::RealTimeEventListenerHelper::RealTimeEventListenerHelper
          (RealTimeEventListenerHelper *this,undefined4 *param_2)

{
  bool bVar1;
  int iVar2;
  int *piVar3;
  
  *(undefined4 *)this = *param_2;
  iVar2 = param_2[1];
  *(int *)(this + 4) = iVar2;
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

// ---- gpg::RealTimeEventListenerHelper::SetOnRoomStatusChangedCallback  @ 0x51f28e
/* gpg::RealTimeEventListenerHelper::SetOnRoomStatusChangedCallback(std::function<void
   (gpg::RealTimeRoom const&)>) */

RealTimeEventListenerHelper * __thiscall
gpg::RealTimeEventListenerHelper::SetOnRoomStatusChangedCallback
          (RealTimeEventListenerHelper *this,function *param_2)

{
  std::function<void(gpg::RealTimeRoom_const&)>::operator=
            (*(function<void(gpg::RealTimeRoom_const&)> **)this,param_2);
  return this;
}

// ---- gpg::RealTimeEventListenerHelper::SetOnRoomConnectedSetChangedCallback  @ 0x51f29c
/* gpg::RealTimeEventListenerHelper::SetOnRoomConnectedSetChangedCallback(std::function<void
   (gpg::RealTimeRoom const&)>) */

RealTimeEventListenerHelper * __thiscall
gpg::RealTimeEventListenerHelper::SetOnRoomConnectedSetChangedCallback
          (RealTimeEventListenerHelper *this,function *param_2)

{
  std::function<void(gpg::RealTimeRoom_const&)>::operator=
            ((function<void(gpg::RealTimeRoom_const&)> *)(*(int *)this + 0x10),param_2);
  return this;
}

// ---- gpg::RealTimeEventListenerHelper::SetOnP2PConnectedCallback  @ 0x51f2f6
/* gpg::RealTimeEventListenerHelper::SetOnP2PConnectedCallback(std::function<void (gpg::RealTimeRoom
   const&, gpg::MultiplayerParticipant const&)>) */

RealTimeEventListenerHelper * __thiscall
gpg::RealTimeEventListenerHelper::SetOnP2PConnectedCallback
          (RealTimeEventListenerHelper *this,function *param_2)

{
  std::function<void(gpg::RealTimeRoom_const&,gpg::MultiplayerParticipant_const&)>::operator=
            ((function<void(gpg::RealTimeRoom_const&,gpg::MultiplayerParticipant_const&)> *)
             (*(int *)this + 0x20),param_2);
  return this;
}

// ---- gpg::RealTimeEventListenerHelper::SetOnP2PDisconnectedCallback  @ 0x51f306
/* gpg::RealTimeEventListenerHelper::SetOnP2PDisconnectedCallback(std::function<void
   (gpg::RealTimeRoom const&, gpg::MultiplayerParticipant const&)>) */

RealTimeEventListenerHelper * __thiscall
gpg::RealTimeEventListenerHelper::SetOnP2PDisconnectedCallback
          (RealTimeEventListenerHelper *this,function *param_2)

{
  std::function<void(gpg::RealTimeRoom_const&,gpg::MultiplayerParticipant_const&)>::operator=
            ((function<void(gpg::RealTimeRoom_const&,gpg::MultiplayerParticipant_const&)> *)
             (*(int *)this + 0x30),param_2);
  return this;
}

// ---- gpg::RealTimeEventListenerHelper::SetOnParticipantStatusChangedCallback  @ 0x51f316
/* gpg::RealTimeEventListenerHelper::SetOnParticipantStatusChangedCallback(std::function<void
   (gpg::RealTimeRoom const&, gpg::MultiplayerParticipant const&)>) */

RealTimeEventListenerHelper * __thiscall
gpg::RealTimeEventListenerHelper::SetOnParticipantStatusChangedCallback
          (RealTimeEventListenerHelper *this,function *param_2)

{
  std::function<void(gpg::RealTimeRoom_const&,gpg::MultiplayerParticipant_const&)>::operator=
            ((function<void(gpg::RealTimeRoom_const&,gpg::MultiplayerParticipant_const&)> *)
             (*(int *)this + 0x40),param_2);
  return this;
}

// ---- gpg::RealTimeEventListenerHelper::SetOnDataReceivedCallback  @ 0x51f326
/* gpg::RealTimeEventListenerHelper::SetOnDataReceivedCallback(std::function<void (gpg::RealTimeRoom
   const&, gpg::MultiplayerParticipant const&, std::vector<unsigned char, std::allocator<unsigned
   char> >, bool)>) */

int * gpg::RealTimeEventListenerHelper::SetOnDataReceivedCallback
                (int *param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  code *pcVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  int iVar4;
  int *piStack_20;
  int iStack_1c;
  code *local_18;
  undefined4 local_14;
  
  local_18 = (code *)0x0;
  pcVar1 = *(code **)(param_2 + 8);
  iVar4 = *param_1;
  piStack_20 = param_1;
  iStack_1c = param_2;
  local_14 = param_4;
  if (pcVar1 != (code *)0x0) {
    local_14 = *(undefined4 *)(param_2 + 0xc);
    local_18 = pcVar1;
    (*pcVar1)((_Any_data *)&piStack_20,param_2,2);
  }
  std::swap<std::_Any_data>((_Any_data *)&piStack_20,(_Any_data *)(iVar4 + 0x50));
  uVar2 = *(undefined4 *)(iVar4 + 0x58);
  *(code **)(iVar4 + 0x58) = local_18;
  uVar3 = *(undefined4 *)(iVar4 + 0x5c);
  *(undefined4 *)(iVar4 + 0x5c) = local_14;
  local_18 = (code *)uVar2;
  local_14 = uVar3;
  std::_Function_base::~_Function_base((_Function_base *)&piStack_20);
  return param_1;
}

// ---- gpg::RealTimeEventListenerHelper::RealTimeEventListenerHelper  @ 0x51f3f4
/* gpg::RealTimeEventListenerHelper::RealTimeEventListenerHelper() */

RealTimeEventListenerHelper * __thiscall
gpg::RealTimeEventListenerHelper::RealTimeEventListenerHelper(RealTimeEventListenerHelper *this)

{
  undefined4 in_r3;
  undefined1 auStack_c [4];
  
  FUN_0051f374(this,0,auStack_c,in_r3,this);
  return this;
}

// ---- gpg::RealTimeMultiplayerManager::RealTimeMultiplayerManager  @ 0x51f89c
/* gpg::RealTimeMultiplayerManager::RealTimeMultiplayerManager(gpg::GameServicesImpl*) */

void __thiscall
gpg::RealTimeMultiplayerManager::RealTimeMultiplayerManager
          (RealTimeMultiplayerManager *this,GameServicesImpl *param_1)

{
  *(GameServicesImpl **)this = param_1;
  return;
}

// ---- gpg::RealTimeMultiplayerManager::~RealTimeMultiplayerManager  @ 0x51f8a0
/* gpg::RealTimeMultiplayerManager::~RealTimeMultiplayerManager() */

RealTimeMultiplayerManager * __thiscall
gpg::RealTimeMultiplayerManager::~RealTimeMultiplayerManager(RealTimeMultiplayerManager *this)

{
  return this;
}

// ---- gpg::RealTimeMultiplayerManager::RealTimeRoomResponse::RealTimeRoomResponse  @ 0x51f8a2
/* gpg::RealTimeMultiplayerManager::RealTimeRoomResponse::RealTimeRoomResponse(gpg::RealTimeMultiplayerManager::RealTimeRoomResponse&&)
    */

RealTimeRoomResponse * __thiscall
gpg::RealTimeMultiplayerManager::RealTimeRoomResponse::RealTimeRoomResponse
          (RealTimeRoomResponse *this,RealTimeRoomResponse *param_1)

{
  *(undefined4 *)this = *(undefined4 *)param_1;
  RealTimeRoom::RealTimeRoom((RealTimeRoom *)(this + 4),(RealTimeRoom *)(param_1 + 4));
  return this;
}

// ---- gpg::RealTimeMultiplayerManager::DeclineInvitation  @ 0x51f8cc
/* gpg::RealTimeMultiplayerManager::DeclineInvitation(gpg::MultiplayerInvitation const&) */

void __thiscall
gpg::RealTimeMultiplayerManager::DeclineInvitation
          (RealTimeMultiplayerManager *this,MultiplayerInvitation *param_1)

{
  int iVar1;
  undefined4 uVar2;
  int *piVar3;
  code *pcVar4;
  undefined1 auStack_3c [4];
  undefined1 auStack_38 [36];
  
  FUN_00510a86(auStack_38,*(undefined4 *)this);
  FUN_0051683e(auStack_3c,auStack_38);
  FUN_0050811a(auStack_38);
  iVar1 = MultiplayerInvitation::Valid(param_1);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Declining an invalid invitation: skipping.");
  }
  else {
    piVar3 = *(int **)this;
    pcVar4 = *(code **)(*piVar3 + 0xec);
    uVar2 = MultiplayerInvitation::Id(param_1);
    (*pcVar4)(piVar3,uVar2);
  }
  FUN_00516580(auStack_3c);
  return;
}

// ---- gpg::RealTimeMultiplayerManager::DismissInvitation  @ 0x51f938
/* gpg::RealTimeMultiplayerManager::DismissInvitation(gpg::MultiplayerInvitation const&) */

void __thiscall
gpg::RealTimeMultiplayerManager::DismissInvitation
          (RealTimeMultiplayerManager *this,MultiplayerInvitation *param_1)

{
  int iVar1;
  undefined4 uVar2;
  int *piVar3;
  code *pcVar4;
  undefined1 auStack_3c [4];
  undefined1 auStack_38 [36];
  
  FUN_00510a86(auStack_38,*(undefined4 *)this);
  FUN_0051683e(auStack_3c,auStack_38);
  FUN_0050811a(auStack_38);
  iVar1 = MultiplayerInvitation::Valid(param_1);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Dismissing an invalid invitation: skipping.");
  }
  else {
    piVar3 = *(int **)this;
    pcVar4 = *(code **)(*piVar3 + 0xf0);
    uVar2 = MultiplayerInvitation::Id(param_1);
    (*pcVar4)(piVar3,uVar2);
  }
  FUN_00516580(auStack_3c);
  return;
}

// ---- gpg::RealTimeMultiplayerManager::RoomInboxUIResponse::RoomInboxUIResponse  @ 0x51f9e0
/* gpg::RealTimeMultiplayerManager::RoomInboxUIResponse::RoomInboxUIResponse(gpg::RealTimeMultiplayerManager::RoomInboxUIResponse&&)
    */

RoomInboxUIResponse * __thiscall
gpg::RealTimeMultiplayerManager::RoomInboxUIResponse::RoomInboxUIResponse
          (RoomInboxUIResponse *this,RoomInboxUIResponse *param_1)

{
  *(undefined4 *)this = *(undefined4 *)param_1;
  MultiplayerInvitation::MultiplayerInvitation
            ((MultiplayerInvitation *)(this + 4),(MultiplayerInvitation *)(param_1 + 4));
  return this;
}

// ---- gpg::TurnBasedMultiplayerManager::PlayerSelectUIResponse::PlayerSelectUIResponse  @ 0x51fa08
/* gpg::TurnBasedMultiplayerManager::PlayerSelectUIResponse::PlayerSelectUIResponse(gpg::TurnBasedMultiplayerManager::PlayerSelectUIResponse&&)
    */

void __thiscall
gpg::TurnBasedMultiplayerManager::PlayerSelectUIResponse::PlayerSelectUIResponse
          (PlayerSelectUIResponse *this,PlayerSelectUIResponse *param_1)

{
  undefined4 uVar1;
  
  *(undefined4 *)this = *(undefined4 *)param_1;
  *(undefined4 *)(this + 8) = 0;
  *(undefined4 *)(this + 0xc) = 0;
  *(undefined4 *)(this + 4) = 0;
  *(undefined4 *)(this + 4) = *(undefined4 *)(param_1 + 4);
  *(undefined4 *)(param_1 + 4) = 0;
  uVar1 = *(undefined4 *)(this + 8);
  *(undefined4 *)(this + 8) = *(undefined4 *)(param_1 + 8);
  *(undefined4 *)(param_1 + 8) = uVar1;
  uVar1 = *(undefined4 *)(this + 0xc);
  *(undefined4 *)(this + 0xc) = *(undefined4 *)(param_1 + 0xc);
  *(undefined4 *)(param_1 + 0xc) = uVar1;
  *(undefined4 *)(this + 0x10) = *(undefined4 *)(param_1 + 0x10);
  *(undefined4 *)(this + 0x14) = *(undefined4 *)(param_1 + 0x14);
  return;
}

// ---- gpg::RealTimeMultiplayerManager::WaitingRoomUIResponse::WaitingRoomUIResponse  @ 0x51fa4a
/* gpg::RealTimeMultiplayerManager::WaitingRoomUIResponse::WaitingRoomUIResponse(gpg::RealTimeMultiplayerManager::WaitingRoomUIResponse&&)
    */

WaitingRoomUIResponse * __thiscall
gpg::RealTimeMultiplayerManager::WaitingRoomUIResponse::WaitingRoomUIResponse
          (WaitingRoomUIResponse *this,WaitingRoomUIResponse *param_1)

{
  *(undefined4 *)this = *(undefined4 *)param_1;
  RealTimeRoom::RealTimeRoom((RealTimeRoom *)(this + 4),(RealTimeRoom *)(param_1 + 4));
  return this;
}

// ---- gpg::RealTimeMultiplayerManager::FetchInvitationsResponse::FetchInvitationsResponse  @ 0x51fa72
/* gpg::RealTimeMultiplayerManager::FetchInvitationsResponse::FetchInvitationsResponse(gpg::RealTimeMultiplayerManager::FetchInvitationsResponse&&)
    */

void __thiscall
gpg::RealTimeMultiplayerManager::FetchInvitationsResponse::FetchInvitationsResponse
          (FetchInvitationsResponse *this,FetchInvitationsResponse *param_1)

{
  undefined4 uVar1;
  
  *(undefined4 *)this = *(undefined4 *)param_1;
  *(undefined4 *)(this + 8) = 0;
  *(undefined4 *)(this + 0xc) = 0;
  *(undefined4 *)(this + 4) = 0;
  *(undefined4 *)(this + 4) = *(undefined4 *)(param_1 + 4);
  *(undefined4 *)(param_1 + 4) = 0;
  uVar1 = *(undefined4 *)(this + 8);
  *(undefined4 *)(this + 8) = *(undefined4 *)(param_1 + 8);
  *(undefined4 *)(param_1 + 8) = uVar1;
  uVar1 = *(undefined4 *)(this + 0xc);
  *(undefined4 *)(this + 0xc) = *(undefined4 *)(param_1 + 0xc);
  *(undefined4 *)(param_1 + 0xc) = uVar1;
  return;
}

// ---- gpg::RealTimeMultiplayerManager::SendUnreliableMessageToOthers  @ 0x520122
/* gpg::RealTimeMultiplayerManager::SendUnreliableMessageToOthers(gpg::RealTimeRoom const&,
   std::vector<unsigned char, std::allocator<unsigned char> >) */

void __thiscall
gpg::RealTimeMultiplayerManager::SendUnreliableMessageToOthers
          (RealTimeMultiplayerManager *this,undefined4 param_1,_Vector_base *param_3)

{
  int *piVar1;
  code *pcVar2;
  undefined1 auStack_44 [4];
  _Vector_base<unsigned_char,std::allocator<unsigned_char>> a_Stack_40 [36];
  
  FUN_00510a86(a_Stack_40,*(undefined4 *)this);
  FUN_0051683e(auStack_44,a_Stack_40);
  FUN_0050811a(a_Stack_40);
  piVar1 = *(int **)this;
  pcVar2 = *(code **)(*piVar1 + 0x104);
  std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::_Vector_base(a_Stack_40,param_3);
  (*pcVar2)(piVar1,param_1,a_Stack_40);
  std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::~_Vector_base(a_Stack_40);
  FUN_00516580(auStack_44);
  return;
}

// ---- gpg::RealTimeMultiplayerManager::CreateRealTimeRoom  @ 0x5208f4
/* gpg::RealTimeMultiplayerManager::CreateRealTimeRoom(gpg::RealTimeRoomConfig const&,
   gpg::RealTimeEventListenerHelper, std::function<void
   (gpg::RealTimeMultiplayerManager::RealTimeRoomResponse const&)>) */

void __thiscall
gpg::RealTimeMultiplayerManager::CreateRealTimeRoom
          (RealTimeMultiplayerManager *this,RealTimeRoomConfig *param_1,undefined4 *param_3,
          function *param_4)

{
  undefined4 uVar1;
  int iVar2;
  undefined4 *puVar3;
  int *piVar4;
  code *pcVar5;
  undefined1 auStack_94 [4];
  undefined4 local_90;
  RealTimeRoom aRStack_8c [8];
  undefined4 local_84;
  RealTimeRoom aRStack_80 [8];
  undefined4 local_78;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_74 [12];
  undefined1 auStack_68 [32];
  undefined1 auStack_48 [36];
  
  FUN_00510a86(auStack_48,*(undefined4 *)this);
  FUN_0051683e(auStack_94,auStack_48);
  FUN_0050811a(auStack_48);
  uVar1 = FUN_0051075c(*(undefined4 *)this);
  std::function<void(gpg::RealTimeMultiplayerManager::RealTimeRoomResponse_const&)>::function
            ((function<void(gpg::RealTimeMultiplayerManager::RealTimeRoomResponse_const&)> *)
             &local_78,param_4);
  FUN_005207a4(auStack_68,uVar1,
               (function<void(gpg::RealTimeMultiplayerManager::RealTimeRoomResponse_const&)> *)
               &local_78);
  std::_Function_base::~_Function_base((_Function_base *)&local_78);
  iVar2 = RealTimeRoomConfig::Valid(param_1);
  if (iVar2 == 0) {
    FUN_005166ae(4,"Creating a room with an invalid configuration: skipping.");
    puVar3 = &local_90;
    local_90 = 0xfffffffe;
    RealTimeRoom::RealTimeRoom(aRStack_8c);
    FUN_00520830(auStack_68,puVar3);
  }
  else {
    piVar4 = *(int **)this;
    pcVar5 = *(code **)(*piVar4 + 0xe4);
    local_78 = *param_3;
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
              (a_Stack_74,(__shared_count *)(param_3 + 1));
    FUN_0051fe32(auStack_48,auStack_68);
    iVar2 = (*pcVar5)(piVar4,param_1,
                      (function<void(gpg::RealTimeMultiplayerManager::RealTimeRoomResponse_const&)>
                       *)&local_78,auStack_48);
    FUN_0051f8b6(auStack_48);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_74);
    if (iVar2 != 0) goto LAB_005209d0;
    puVar3 = &local_84;
    local_84 = 0xfffffffd;
    RealTimeRoom::RealTimeRoom(aRStack_80);
    FUN_00520830(auStack_68,puVar3);
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(puVar3 + 2));
LAB_005209d0:
  FUN_0051f8b6(auStack_68);
  FUN_00516580(auStack_94);
  return;
}

// ---- gpg::RealTimeMultiplayerManager::AcceptInvitation  @ 0x520a20
/* gpg::RealTimeMultiplayerManager::AcceptInvitation(gpg::MultiplayerInvitation const&,
   gpg::RealTimeEventListenerHelper, std::function<void
   (gpg::RealTimeMultiplayerManager::RealTimeRoomResponse const&)>) */

void __thiscall
gpg::RealTimeMultiplayerManager::AcceptInvitation
          (RealTimeMultiplayerManager *this,MultiplayerInvitation *param_1,undefined4 *param_3,
          function *param_4)

{
  undefined4 uVar1;
  int iVar2;
  undefined4 *puVar3;
  int *piVar4;
  code *pcVar5;
  undefined1 auStack_94 [4];
  undefined4 local_90;
  RealTimeRoom aRStack_8c [8];
  undefined4 local_84;
  RealTimeRoom aRStack_80 [8];
  undefined4 local_78;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_74 [12];
  undefined1 auStack_68 [32];
  undefined1 auStack_48 [36];
  
  FUN_00510a86(auStack_48,*(undefined4 *)this);
  FUN_0051683e(auStack_94,auStack_48);
  FUN_0050811a(auStack_48);
  uVar1 = FUN_0051075c(*(undefined4 *)this);
  std::function<void(gpg::RealTimeMultiplayerManager::RealTimeRoomResponse_const&)>::function
            ((function<void(gpg::RealTimeMultiplayerManager::RealTimeRoomResponse_const&)> *)
             &local_78,param_4);
  FUN_005207a4(auStack_68,uVar1,
               (function<void(gpg::RealTimeMultiplayerManager::RealTimeRoomResponse_const&)> *)
               &local_78);
  std::_Function_base::~_Function_base((_Function_base *)&local_78);
  iVar2 = MultiplayerInvitation::Valid(param_1);
  if (iVar2 == 0) {
    FUN_005166ae(4,"Accepting an invalid invitation: skipping.");
    puVar3 = &local_90;
    local_90 = 0xfffffffe;
    RealTimeRoom::RealTimeRoom(aRStack_8c);
    FUN_00520830(auStack_68,puVar3);
  }
  else {
    piVar4 = *(int **)this;
    pcVar5 = *(code **)(*piVar4 + 0xe8);
    uVar1 = MultiplayerInvitation::Id(param_1);
    local_78 = *param_3;
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
              (a_Stack_74,(__shared_count *)(param_3 + 1));
    FUN_0051fe32(auStack_48,auStack_68);
    iVar2 = (*pcVar5)(piVar4,uVar1,
                      (function<void(gpg::RealTimeMultiplayerManager::RealTimeRoomResponse_const&)>
                       *)&local_78,auStack_48);
    FUN_0051f8b6(auStack_48);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_74);
    if (iVar2 != 0) goto LAB_00520b04;
    puVar3 = &local_84;
    local_84 = 0xfffffffd;
    RealTimeRoom::RealTimeRoom(aRStack_80);
    FUN_00520830(auStack_68,puVar3);
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(puVar3 + 2));
LAB_00520b04:
  FUN_0051f8b6(auStack_68);
  FUN_00516580(auStack_94);
  return;
}

// ---- gpg::RealTimeMultiplayerManager::LeaveRoom  @ 0x520b78
/* gpg::RealTimeMultiplayerManager::LeaveRoom(gpg::RealTimeRoom const&, std::function<void
   (gpg::ResponseStatus const&)>) */

void __thiscall
gpg::RealTimeMultiplayerManager::LeaveRoom
          (RealTimeMultiplayerManager *this,RealTimeRoom *param_1,function *param_3)

{
  int iVar1;
  function *pfVar2;
  int *piVar3;
  code *pcVar4;
  undefined1 auStack_d0 [4];
  function<void(gpg::ResponseStatus_const&)> afStack_cc [8];
  int local_c4;
  function<void(gpg::ResponseStatus_const&)> afStack_bc [8];
  int local_b4;
  function *local_ac [2];
  code *local_a4;
  code *local_a0;
  function<void(gpg::ResponseStatus_const&)> afStack_9c [16];
  undefined4 local_8c;
  function<void(std::function<void()>)> afStack_88 [8];
  int local_80;
  function afStack_78 [8];
  int local_70;
  function<void(std::function<void()>)> afStack_68 [16];
  function<void(gpg::ResponseStatus_const&)> afStack_58 [16];
  undefined4 local_48 [2];
  int local_40;
  function<void(gpg::ResponseStatus_const&)> afStack_38 [8];
  undefined4 local_30;
  
  FUN_00510a86((function<void(std::function<void()>)> *)local_48,*(undefined4 *)this);
  FUN_0051683e(auStack_d0,(function<void(std::function<void()>)> *)local_48);
  FUN_0050811a((function<void(std::function<void()>)> *)local_48);
  iVar1 = RealTimeRoom::Valid(param_1);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Leaving an invalid room: skipping.");
  }
  else {
    pfVar2 = (function *)FUN_0051075c(*(undefined4 *)this);
    std::function<void(gpg::ResponseStatus_const&)>::function(afStack_cc,param_3);
    if (local_c4 == 0) {
      local_b4 = local_c4;
      local_40 = local_c4;
    }
    else {
      local_b4 = 0;
      std::function<void(gpg::ResponseStatus_const&)>::swap(afStack_cc,(function *)afStack_bc);
      std::function<void(std::function<void()>)>::function
                ((function<void(std::function<void()>)> *)local_48,pfVar2);
    }
    local_30 = 0;
    std::function<void(gpg::ResponseStatus_const&)>::swap(afStack_bc,(function *)afStack_38);
    std::function<void(std::function<void()>)>::function(afStack_88,(function *)local_48);
    local_70 = 0;
    std::function<void(gpg::ResponseStatus_const&)>::swap(afStack_38,afStack_78);
    FUN_0051f9a4((function<void(std::function<void()>)> *)local_48);
    std::_Function_base::~_Function_base((_Function_base *)afStack_bc);
    std::_Function_base::~_Function_base((_Function_base *)afStack_cc);
    piVar3 = *(int **)this;
    pcVar4 = *(code **)(*piVar3 + 0xf8);
    std::function<void(std::function<void()>)>::function(afStack_68,(function *)afStack_88);
    std::function<void(gpg::ResponseStatus_const&)>::function(afStack_58,afStack_78);
    iVar1 = (*pcVar4)(piVar3,param_1,afStack_68);
    FUN_0051f9a4(afStack_68);
    if ((iVar1 == 0) && (local_48[0] = 0xfffffffd, local_70 != 0)) {
      if (local_80 == 0) {
        std::function<void(gpg::ResponseStatus_const&)>::operator()
                  ((function<void(gpg::ResponseStatus_const&)> *)afStack_78,
                   (ResponseStatus *)local_48);
      }
      else {
        std::function<void(gpg::ResponseStatus_const&)>::function(afStack_9c,afStack_78);
        local_8c = local_48[0];
        local_a4 = (code *)0x0;
        pfVar2 = operator_new(0x14);
        *(undefined4 *)(pfVar2 + 8) = 0;
        std::function<void(gpg::ResponseStatus_const&)>::swap(afStack_9c,pfVar2);
        *(undefined4 *)(pfVar2 + 0x10) = local_8c;
        local_a0 = (code *)0x520b6f;
        local_a4 = (code *)0x51fee9;
        local_ac[0] = pfVar2;
        std::function<void(std::function<void()>)>::operator()
                  (afStack_88,(_Function_base *)local_ac);
        std::_Function_base::~_Function_base((_Function_base *)local_ac);
        std::_Function_base::~_Function_base((_Function_base *)afStack_9c);
      }
    }
    FUN_0051f9a4(afStack_88);
  }
  FUN_00516580(auStack_d0);
  return;
}

// ---- gpg::RealTimeMultiplayerManager::SendReliableMessage  @ 0x520d5c
/* gpg::RealTimeMultiplayerManager::SendReliableMessage(gpg::RealTimeRoom const&,
   gpg::MultiplayerParticipant const&, std::vector<unsigned char, std::allocator<unsigned char> >,
   std::function<void (gpg::MultiplayerStatus const&)>) */

void __thiscall
gpg::RealTimeMultiplayerManager::SendReliableMessage
          (RealTimeMultiplayerManager *this,RealTimeRoom *param_1,MultiplayerParticipant *param_2,
          _Vector_base *param_4,function *param_5)

{
  function *pfVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  int iVar4;
  int *piVar5;
  code *pcVar6;
  undefined1 auStack_d0 [4];
  function<void(gpg::MultiplayerStatus_const&)> afStack_cc [8];
  int local_c4;
  function<void(gpg::MultiplayerStatus_const&)> afStack_bc [8];
  int local_b4;
  function *local_ac [2];
  code *local_a4;
  code *local_a0;
  function<void(gpg::MultiplayerStatus_const&)> afStack_9c [16];
  undefined4 local_8c;
  function<void(std::function<void()>)> afStack_88 [8];
  int local_80;
  function afStack_78 [8];
  int local_70;
  function<void(std::function<void()>)> afStack_68 [16];
  function<void(gpg::MultiplayerStatus_const&)> afStack_58 [16];
  undefined4 local_48 [2];
  int local_40;
  function afStack_38 [8];
  undefined4 local_30;
  
  FUN_00510a86((function<void(std::function<void()>)> *)local_48,*(undefined4 *)this);
  FUN_0051683e(auStack_d0,(function<void(std::function<void()>)> *)local_48);
  FUN_0050811a((function<void(std::function<void()>)> *)local_48);
  pfVar1 = (function *)FUN_0051075c(*(undefined4 *)this);
  std::function<void(gpg::MultiplayerStatus_const&)>::function(afStack_cc,param_5);
  if (local_c4 == 0) {
    local_b4 = local_c4;
    local_40 = local_c4;
  }
  else {
    local_b4 = 0;
    std::function<void(gpg::MultiplayerStatus_const&)>::swap(afStack_cc,(function *)afStack_bc);
    std::function<void(std::function<void()>)>::function
              ((function<void(std::function<void()>)> *)local_48,pfVar1);
  }
  local_30 = 0;
  std::function<void(gpg::MultiplayerStatus_const&)>::swap(afStack_bc,afStack_38);
  std::function<void(std::function<void()>)>::function(afStack_88,(function *)local_48);
  local_70 = 0;
  std::function<void(gpg::MultiplayerStatus_const&)>::swap
            ((function<void(gpg::MultiplayerStatus_const&)> *)afStack_38,afStack_78);
  FUN_0051f9b8((function<void(std::function<void()>)> *)local_48);
  std::_Function_base::~_Function_base((_Function_base *)afStack_bc);
  std::_Function_base::~_Function_base((_Function_base *)afStack_cc);
  piVar5 = *(int **)this;
  pcVar6 = *(code **)(*piVar5 + 0xfc);
  uVar2 = RealTimeRoom::Id(param_1);
  uVar3 = MultiplayerParticipant::Id(param_2);
  std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::_Vector_base
            ((_Vector_base<unsigned_char,std::allocator<unsigned_char>> *)local_48,param_4);
  std::function<void(std::function<void()>)>::function(afStack_68,(function *)afStack_88);
  std::function<void(gpg::MultiplayerStatus_const&)>::function(afStack_58,afStack_78);
  iVar4 = (*pcVar6)(piVar5,uVar2,uVar3,(function<void(std::function<void()>)> *)local_48,afStack_68)
  ;
  FUN_0051f9b8(afStack_68);
  std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::~_Vector_base
            ((_Vector_base<unsigned_char,std::allocator<unsigned_char>> *)local_48);
  if ((iVar4 == 0) && (local_48[0] = 0xfffffffd, local_70 != 0)) {
    if (local_80 == 0) {
      std::function<void(gpg::MultiplayerStatus_const&)>::operator()
                ((function<void(gpg::MultiplayerStatus_const&)> *)afStack_78,
                 (MultiplayerStatus *)local_48);
    }
    else {
      std::function<void(gpg::MultiplayerStatus_const&)>::function(afStack_9c,afStack_78);
      local_8c = local_48[0];
      local_a4 = (code *)0x0;
      pfVar1 = operator_new(0x14);
      *(undefined4 *)(pfVar1 + 8) = 0;
      std::function<void(gpg::MultiplayerStatus_const&)>::swap(afStack_9c,pfVar1);
      *(undefined4 *)(pfVar1 + 0x10) = local_8c;
      local_a0 = (code *)0x520d51;
      local_a4 = (code *)0x51ff5f;
      local_ac[0] = pfVar1;
      std::function<void(std::function<void()>)>::operator()(afStack_88,(_Function_base *)local_ac);
      std::_Function_base::~_Function_base((_Function_base *)local_ac);
      std::_Function_base::~_Function_base((_Function_base *)afStack_9c);
    }
  }
  FUN_0051f9b8(afStack_88);
  FUN_00516580(auStack_d0);
  return;
}

// ---- gpg::RealTimeMultiplayerManager::ShowRoomInboxUI  @ 0x52100c
/* gpg::RealTimeMultiplayerManager::ShowRoomInboxUI(std::function<void
   (gpg::RealTimeMultiplayerManager::RoomInboxUIResponse const&)>) */

void __thiscall
gpg::RealTimeMultiplayerManager::ShowRoomInboxUI(RealTimeMultiplayerManager *this,function *param_2)

{
  undefined4 uVar1;
  function *pfVar2;
  int iVar3;
  int *piVar4;
  code *pcVar5;
  undefined1 auStack_b8 [4];
  function<void(gpg::RealTimeMultiplayerManager::RoomInboxUIResponse_const&)> afStack_b4 [8];
  int local_ac;
  undefined4 local_a8;
  _Function_base a_Stack_a4 [8];
  int local_9c;
  undefined4 local_98;
  undefined4 local_94;
  MultiplayerInvitation aMStack_90 [16];
  function<void(std::function<void()>)> afStack_80 [16];
  function<void(gpg::RealTimeMultiplayerManager::RoomInboxUIResponse_const&)> afStack_70 [16];
  function<void(std::function<void()>)> afStack_60 [16];
  function<void(gpg::RealTimeMultiplayerManager::RoomInboxUIResponse_const&)> afStack_50 [16];
  function<void(std::function<void()>)> afStack_40 [8];
  int local_38;
  function<void(gpg::RealTimeMultiplayerManager::RoomInboxUIResponse_const&)> afStack_30 [16];
  
  FUN_00510a86(afStack_40,*(undefined4 *)this);
  FUN_0051683e(auStack_b8,afStack_40);
  FUN_0050811a(afStack_40);
  pfVar2 = (function *)FUN_0051075c(*(undefined4 *)this);
  std::function<void(gpg::RealTimeMultiplayerManager::RoomInboxUIResponse_const&)>::function
            (afStack_b4,param_2);
  if (local_ac == 0) {
    local_9c = local_ac;
    local_38 = local_ac;
  }
  else {
    local_9c = 0;
    std::swap<std::_Any_data>((_Any_data *)afStack_b4,(_Any_data *)a_Stack_a4);
    uVar1 = local_98;
    iVar3 = local_9c;
    local_9c = local_ac;
    local_ac = iVar3;
    local_98 = local_a8;
    local_a8 = uVar1;
    std::function<void(std::function<void()>)>::function(afStack_40,pfVar2);
  }
  std::function<void(gpg::RealTimeMultiplayerManager::RoomInboxUIResponse_const&)>::function
            (afStack_30,(function *)a_Stack_a4);
  std::function<void(std::function<void()>)>::function(afStack_80,(function *)afStack_40);
  std::function<void(gpg::RealTimeMultiplayerManager::RoomInboxUIResponse_const&)>::function
            (afStack_70,(function *)afStack_30);
  FUN_0051f9cc(afStack_40);
  std::_Function_base::~_Function_base(a_Stack_a4);
  std::_Function_base::~_Function_base((_Function_base *)afStack_b4);
  piVar4 = *(int **)this;
  pcVar5 = *(code **)(*piVar4 + 0x108);
  std::function<void(std::function<void()>)>::function(afStack_60,(function *)afStack_80);
  std::function<void(gpg::RealTimeMultiplayerManager::RoomInboxUIResponse_const&)>::function
            (afStack_50,(function *)afStack_70);
  iVar3 = (*pcVar5)(piVar4,afStack_60);
  FUN_0051f9cc(afStack_60);
  if (iVar3 == 0) {
    local_94 = 0xfffffffd;
    MultiplayerInvitation::MultiplayerInvitation(aMStack_90);
    FUN_00520f48(afStack_80,&local_94);
    MultiplayerInvitation::~MultiplayerInvitation(aMStack_90);
  }
  FUN_0051f9cc(afStack_80);
  FUN_00516580(auStack_b8);
  return;
}

// ---- gpg::RealTimeMultiplayerManager::ShowWaitingRoomUI  @ 0x521244
/* gpg::RealTimeMultiplayerManager::ShowWaitingRoomUI(gpg::RealTimeRoom const&, unsigned int,
   std::function<void (gpg::RealTimeMultiplayerManager::WaitingRoomUIResponse const&)>) */

void __thiscall
gpg::RealTimeMultiplayerManager::ShowWaitingRoomUI
          (RealTimeMultiplayerManager *this,undefined4 param_1,undefined4 param_2,function *param_4)

{
  undefined4 uVar1;
  function *pfVar2;
  int iVar3;
  int *piVar4;
  code *pcVar5;
  undefined1 auStack_b8 [4];
  undefined4 local_b4;
  RealTimeRoom aRStack_b0 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_ac [4];
  function<void(gpg::RealTimeMultiplayerManager::WaitingRoomUIResponse_const&)> afStack_a8 [8];
  int local_a0;
  undefined4 local_9c;
  _Function_base a_Stack_98 [8];
  int local_90;
  undefined4 local_8c;
  function<void(std::function<void()>)> afStack_88 [16];
  function<void(gpg::RealTimeMultiplayerManager::WaitingRoomUIResponse_const&)> afStack_78 [16];
  function<void(std::function<void()>)> afStack_68 [16];
  function<void(gpg::RealTimeMultiplayerManager::WaitingRoomUIResponse_const&)> afStack_58 [16];
  function<void(std::function<void()>)> afStack_48 [8];
  int local_40;
  function<void(gpg::RealTimeMultiplayerManager::WaitingRoomUIResponse_const&)> afStack_38 [20];
  
  FUN_00510a86(afStack_48,*(undefined4 *)this);
  FUN_0051683e(auStack_b8,afStack_48);
  FUN_0050811a(afStack_48);
  pfVar2 = (function *)FUN_0051075c(*(undefined4 *)this);
  std::function<void(gpg::RealTimeMultiplayerManager::WaitingRoomUIResponse_const&)>::function
            (afStack_a8,param_4);
  if (local_a0 == 0) {
    local_90 = local_a0;
    local_40 = local_a0;
  }
  else {
    local_90 = 0;
    std::swap<std::_Any_data>((_Any_data *)afStack_a8,(_Any_data *)a_Stack_98);
    uVar1 = local_8c;
    iVar3 = local_90;
    local_90 = local_a0;
    local_a0 = iVar3;
    local_8c = local_9c;
    local_9c = uVar1;
    std::function<void(std::function<void()>)>::function(afStack_48,pfVar2);
  }
  std::function<void(gpg::RealTimeMultiplayerManager::WaitingRoomUIResponse_const&)>::function
            (afStack_38,(function *)a_Stack_98);
  std::function<void(std::function<void()>)>::function(afStack_88,(function *)afStack_48);
  std::function<void(gpg::RealTimeMultiplayerManager::WaitingRoomUIResponse_const&)>::function
            (afStack_78,(function *)afStack_38);
  FUN_0051fa36(afStack_48);
  std::_Function_base::~_Function_base(a_Stack_98);
  std::_Function_base::~_Function_base((_Function_base *)afStack_a8);
  piVar4 = *(int **)this;
  pcVar5 = *(code **)(*piVar4 + 0x110);
  std::function<void(std::function<void()>)>::function(afStack_68,(function *)afStack_88);
  std::function<void(gpg::RealTimeMultiplayerManager::WaitingRoomUIResponse_const&)>::function
            (afStack_58,(function *)afStack_78);
  iVar3 = (*pcVar5)(piVar4,param_1,param_2,afStack_68);
  FUN_0051fa36(afStack_68);
  if (iVar3 == 0) {
    local_b4 = 0xfffffffd;
    RealTimeRoom::RealTimeRoom(aRStack_b0);
    FUN_00521180(afStack_88,&local_b4);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_ac);
  }
  FUN_0051fa36(afStack_88);
  FUN_00516580(auStack_b8);
  return;
}

// ---- gpg::RealTimeMultiplayerManager::SendUnreliableMessage  @ 0x52145e
/* gpg::RealTimeMultiplayerManager::SendUnreliableMessage(gpg::RealTimeRoom const&,
   std::vector<gpg::MultiplayerParticipant, std::allocator<gpg::MultiplayerParticipant> > const&,
   std::vector<unsigned char, std::allocator<unsigned char> >) */

void __thiscall
gpg::RealTimeMultiplayerManager::SendUnreliableMessage
          (RealTimeMultiplayerManager *this,RealTimeRoom *param_1,undefined4 *param_2,
          _Vector_base *param_4)

{
  string *psVar1;
  undefined4 uVar2;
  MultiplayerParticipant *this_00;
  int *piVar3;
  MultiplayerParticipant *pMVar4;
  code *pcVar5;
  undefined1 auStack_58 [4];
  undefined4 local_54;
  int local_50;
  int local_4c;
  _Vector_base<unsigned_char,std::allocator<unsigned_char>> a_Stack_48 [36];
  
  FUN_00510a86(a_Stack_48,*(undefined4 *)this);
  FUN_0051683e(auStack_58,a_Stack_48);
  FUN_0050811a(a_Stack_48);
  this_00 = (MultiplayerParticipant *)*param_2;
  pMVar4 = (MultiplayerParticipant *)param_2[1];
  local_54 = 0;
  local_50 = 0;
  local_4c = 0;
  for (; this_00 != pMVar4; this_00 = this_00 + 8) {
    psVar1 = (string *)MultiplayerParticipant::Id(this_00);
    if (local_50 == local_4c) {
      std::vector<std::string,std::allocator<std::string>>::_M_emplace_back_aux<std::string_const&>
                ((vector<std::string,std::allocator<std::string>> *)&local_54,psVar1);
    }
    else {
      if (local_50 != 0) {
        FUN_007c64e8();
      }
      local_50 = local_50 + 4;
    }
  }
  piVar3 = *(int **)this;
  pcVar5 = *(code **)(*piVar3 + 0x100);
  uVar2 = RealTimeRoom::Id(param_1);
  std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::_Vector_base(a_Stack_48,param_4);
  (*pcVar5)(piVar3,uVar2,(vector<std::string,std::allocator<std::string>> *)&local_54,a_Stack_48);
  std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::~_Vector_base(a_Stack_48);
  std::vector<std::string,std::allocator<std::string>>::~vector
            ((vector<std::string,std::allocator<std::string>> *)&local_54);
  FUN_00516580(auStack_58);
  return;
}

// ---- gpg::RealTimeMultiplayerManager::CreateRealTimeRoom  @ 0x5215b0
/* gpg::RealTimeMultiplayerManager::CreateRealTimeRoom(gpg::RealTimeRoomConfig const&,
   gpg::IRealTimeEventListener*, std::function<void
   (gpg::RealTimeMultiplayerManager::RealTimeRoomResponse const&)>) */

void __thiscall
gpg::RealTimeMultiplayerManager::CreateRealTimeRoom
          (RealTimeMultiplayerManager *this,undefined4 param_1,undefined4 param_2,function *param_4)

{
  undefined4 local_44;
  undefined1 auStack_40 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_3c [4];
  RealTimeEventListenerHelper aRStack_38 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_34 [4];
  function<void(gpg::RealTimeMultiplayerManager::RealTimeRoomResponse_const&)> afStack_30 [20];
  
  local_44 = param_2;
  FUN_00521520(auStack_40,0,afStack_30,&local_44);
  RealTimeEventListenerHelper::RealTimeEventListenerHelper(aRStack_38,auStack_40);
  std::function<void(gpg::RealTimeMultiplayerManager::RealTimeRoomResponse_const&)>::function
            (afStack_30,param_4);
  CreateRealTimeRoom(this,param_1,aRStack_38,afStack_30);
  std::_Function_base::~_Function_base((_Function_base *)afStack_30);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_34);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_3c);
  return;
}

// ---- gpg::RealTimeMultiplayerManager::AcceptInvitation  @ 0x521620
/* gpg::RealTimeMultiplayerManager::AcceptInvitation(gpg::MultiplayerInvitation const&,
   gpg::IRealTimeEventListener*, std::function<void
   (gpg::RealTimeMultiplayerManager::RealTimeRoomResponse const&)>) */

void __thiscall
gpg::RealTimeMultiplayerManager::AcceptInvitation
          (RealTimeMultiplayerManager *this,undefined4 param_1,undefined4 param_2,function *param_4)

{
  undefined4 local_44;
  undefined1 auStack_40 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_3c [4];
  RealTimeEventListenerHelper aRStack_38 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_34 [4];
  function<void(gpg::RealTimeMultiplayerManager::RealTimeRoomResponse_const&)> afStack_30 [20];
  
  local_44 = param_2;
  FUN_00521520(auStack_40,0,afStack_30,&local_44);
  RealTimeEventListenerHelper::RealTimeEventListenerHelper(aRStack_38,auStack_40);
  std::function<void(gpg::RealTimeMultiplayerManager::RealTimeRoomResponse_const&)>::function
            (afStack_30,param_4);
  AcceptInvitation(this,param_1,aRStack_38,afStack_30);
  std::_Function_base::~_Function_base((_Function_base *)afStack_30);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_34);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_3c);
  return;
}

// ---- gpg::RealTimeMultiplayerManager::ShowPlayerSelectUI  @ 0x521754
/* gpg::RealTimeMultiplayerManager::ShowPlayerSelectUI(unsigned int, unsigned int, bool,
   std::function<void (gpg::TurnBasedMultiplayerManager::PlayerSelectUIResponse const&)>) */

void __thiscall
gpg::RealTimeMultiplayerManager::ShowPlayerSelectUI
          (RealTimeMultiplayerManager *this,undefined4 param_1,undefined4 param_2,undefined4 param_4
          ,function *param_5)

{
  function *pfVar1;
  int iVar2;
  int *piVar3;
  code *pcVar4;
  undefined1 auStack_ac [4];
  function<void(gpg::TurnBasedMultiplayerManager::PlayerSelectUIResponse_const&)> afStack_a8 [8];
  int local_a0;
  function<void(gpg::TurnBasedMultiplayerManager::PlayerSelectUIResponse_const&)> afStack_98 [8];
  int local_90;
  function<void(std::function<void()>)> afStack_88 [16];
  function afStack_78 [8];
  undefined4 local_70;
  function<void(std::function<void()>)> afStack_68 [16];
  function<void(gpg::TurnBasedMultiplayerManager::PlayerSelectUIResponse_const&)> afStack_58 [16];
  undefined4 local_48;
  vector<std::string,std::allocator<std::string>> avStack_44 [4];
  int local_40;
  function afStack_38 [8];
  undefined4 local_30;
  
  FUN_00510a86((function<void(std::function<void()>)> *)&local_48,*(undefined4 *)this);
  FUN_0051683e(auStack_ac,(function<void(std::function<void()>)> *)&local_48);
  FUN_0050811a((function<void(std::function<void()>)> *)&local_48);
  pfVar1 = (function *)FUN_0051075c(*(undefined4 *)this);
  std::function<void(gpg::TurnBasedMultiplayerManager::PlayerSelectUIResponse_const&)>::function
            (afStack_a8,param_5);
  if (local_a0 == 0) {
    local_90 = local_a0;
    local_40 = local_a0;
  }
  else {
    local_90 = 0;
    std::function<void(gpg::TurnBasedMultiplayerManager::PlayerSelectUIResponse_const&)>::swap
              (afStack_a8,(function *)afStack_98);
    std::function<void(std::function<void()>)>::function
              ((function<void(std::function<void()>)> *)&local_48,pfVar1);
  }
  local_30 = 0;
  std::function<void(gpg::TurnBasedMultiplayerManager::PlayerSelectUIResponse_const&)>::swap
            (afStack_98,afStack_38);
  std::function<void(std::function<void()>)>::function(afStack_88,(function *)&local_48);
  local_70 = 0;
  std::function<void(gpg::TurnBasedMultiplayerManager::PlayerSelectUIResponse_const&)>::swap
            ((function<void(gpg::TurnBasedMultiplayerManager::PlayerSelectUIResponse_const&)> *)
             afStack_38,afStack_78);
  FUN_0051f9f4((function<void(std::function<void()>)> *)&local_48);
  std::_Function_base::~_Function_base((_Function_base *)afStack_98);
  std::_Function_base::~_Function_base((_Function_base *)afStack_a8);
  piVar3 = *(int **)this;
  pcVar4 = *(code **)(*piVar3 + 0x10c);
  std::function<void(std::function<void()>)>::function(afStack_68,(function *)afStack_88);
  std::function<void(gpg::TurnBasedMultiplayerManager::PlayerSelectUIResponse_const&)>::function
            (afStack_58,afStack_78);
  iVar2 = (*pcVar4)(piVar3,param_1,param_2,param_4,afStack_68);
  FUN_0051f9f4(afStack_68);
  if (iVar2 == 0) {
    memset((function<void(std::function<void()>)> *)&local_48,0,0x18);
    local_48 = 0xfffffffd;
    FUN_00521690(afStack_88,(function<void(std::function<void()>)> *)&local_48);
    std::vector<std::string,std::allocator<std::string>>::~vector(avStack_44);
  }
  FUN_0051f9f4(afStack_88);
  FUN_00516580(auStack_ac);
  return;
}

// ---- gpg::RealTimeMultiplayerManager::FetchInvitationsResponse::FetchInvitationsResponse  @ 0x521990
/* gpg::RealTimeMultiplayerManager::FetchInvitationsResponse::FetchInvitationsResponse(gpg::RealTimeMultiplayerManager::FetchInvitationsResponse
   const&) */

FetchInvitationsResponse * __thiscall
gpg::RealTimeMultiplayerManager::FetchInvitationsResponse::FetchInvitationsResponse
          (FetchInvitationsResponse *this,FetchInvitationsResponse *param_1)

{
  void *pvVar1;
  undefined4 uVar2;
  int iVar3;
  uint uVar4;
  int iVar5;
  
  *(undefined4 *)this = *(undefined4 *)param_1;
  iVar5 = *(int *)(param_1 + 4);
  iVar3 = *(int *)(param_1 + 8);
  *(undefined4 *)(this + 4) = 0;
  uVar4 = iVar3 - iVar5 >> 4;
  *(undefined4 *)(this + 8) = 0;
  *(undefined4 *)(this + 0xc) = 0;
  pvVar1 = (void *)0x0;
  if (uVar4 != 0) {
    if (0xfffffff < uVar4) {
      FUN_007c4844();
    }
    pvVar1 = operator_new(uVar4 * 0x10);
  }
  *(void **)(this + 4) = pvVar1;
  *(void **)(this + 8) = pvVar1;
  *(void **)(this + 0xc) = (void *)(uVar4 * 0x10 + (int)pvVar1);
  uVar2 = FUN_00521956(*(undefined4 *)(param_1 + 4),*(undefined4 *)(param_1 + 8));
  *(undefined4 *)(this + 8) = uVar2;
  return this;
}

// ---- gpg::RealTimeMultiplayerManager::FetchInvitations  @ 0x521b00
/* gpg::RealTimeMultiplayerManager::FetchInvitations(std::function<void
   (gpg::RealTimeMultiplayerManager::FetchInvitationsResponse const&)>) */

void __thiscall
gpg::RealTimeMultiplayerManager::FetchInvitations
          (RealTimeMultiplayerManager *this,function *param_2)

{
  function *pfVar1;
  int iVar2;
  int *piVar3;
  code *pcVar4;
  undefined1 auStack_ac [4];
  function<void(gpg::RealTimeMultiplayerManager::FetchInvitationsResponse_const&)> afStack_a8 [8];
  int local_a0;
  function<void(gpg::RealTimeMultiplayerManager::FetchInvitationsResponse_const&)> afStack_98 [8];
  int local_90;
  function<void(std::function<void()>)> afStack_88 [16];
  function afStack_78 [8];
  undefined4 local_70;
  function<void(std::function<void()>)> afStack_68 [16];
  function<void(gpg::RealTimeMultiplayerManager::FetchInvitationsResponse_const&)> afStack_58 [16];
  undefined4 local_48;
  int local_44;
  int local_40;
  int local_3c;
  function<void(gpg::RealTimeMultiplayerManager::FetchInvitationsResponse_const&)> afStack_38 [8];
  undefined4 local_30;
  
  FUN_00510a86((function<void(std::function<void()>)> *)&local_48,*(undefined4 *)this);
  FUN_0051683e(auStack_ac,(function<void(std::function<void()>)> *)&local_48);
  FUN_0050811a((function<void(std::function<void()>)> *)&local_48);
  pfVar1 = (function *)FUN_0051075c(*(undefined4 *)this);
  std::function<void(gpg::RealTimeMultiplayerManager::FetchInvitationsResponse_const&)>::function
            (afStack_a8,param_2);
  if (local_a0 == 0) {
    local_90 = local_a0;
    local_40 = local_a0;
  }
  else {
    local_90 = 0;
    std::function<void(gpg::RealTimeMultiplayerManager::FetchInvitationsResponse_const&)>::swap
              (afStack_a8,(function *)afStack_98);
    std::function<void(std::function<void()>)>::function
              ((function<void(std::function<void()>)> *)&local_48,pfVar1);
  }
  local_30 = 0;
  std::function<void(gpg::RealTimeMultiplayerManager::FetchInvitationsResponse_const&)>::swap
            (afStack_98,(function *)afStack_38);
  std::function<void(std::function<void()>)>::function(afStack_88,(function *)&local_48);
  local_70 = 0;
  std::function<void(gpg::RealTimeMultiplayerManager::FetchInvitationsResponse_const&)>::swap
            (afStack_38,afStack_78);
  FUN_0051fa5e((function<void(std::function<void()>)> *)&local_48);
  std::_Function_base::~_Function_base((_Function_base *)afStack_98);
  std::_Function_base::~_Function_base((_Function_base *)afStack_a8);
  piVar3 = *(int **)this;
  pcVar4 = *(code **)(*piVar3 + 0xf4);
  std::function<void(std::function<void()>)>::function(afStack_68,(function *)afStack_88);
  std::function<void(gpg::RealTimeMultiplayerManager::FetchInvitationsResponse_const&)>::function
            (afStack_58,afStack_78);
  iVar2 = (*pcVar4)(piVar3,afStack_68);
  FUN_0051fa5e(afStack_68);
  if (iVar2 == 0) {
    local_48 = 0xfffffffd;
    local_44 = iVar2;
    local_40 = iVar2;
    local_3c = iVar2;
    FUN_00521a48(afStack_88,(function<void(std::function<void()>)> *)&local_48);
    std::vector<gpg::MultiplayerInvitation,std::allocator<gpg::MultiplayerInvitation>>::~vector
              ((vector<gpg::MultiplayerInvitation,std::allocator<gpg::MultiplayerInvitation>> *)
               &local_44);
  }
  FUN_0051fa5e(afStack_88);
  FUN_00516580(auStack_ac);
  return;
}

// ---- gpg::RealTimeMultiplayerManager::CreateRealTimeRoomBlocking  @ 0x522080
/* gpg::RealTimeMultiplayerManager::CreateRealTimeRoomBlocking(std::chrono::duration<long long,
   std::ratio<1ll, 1000ll> >, gpg::RealTimeRoomConfig const&, gpg::RealTimeEventListenerHelper) */

RealTimeRoomResponse *
gpg::RealTimeMultiplayerManager::CreateRealTimeRoomBlocking
          (RealTimeRoomResponse *param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4,
          RealTimeRoomConfig *param_5,undefined4 *param_6)

{
  RealTimeRoomResponse *pRVar1;
  int iVar2;
  __shared_count<(__gnu_cxx::_Lock_policy)2> *this;
  int *piVar3;
  code *pcVar4;
  undefined1 auStack_7c [4];
  undefined1 auStack_78 [4];
  undefined4 local_74;
  __shared_count a_Stack_70 [4];
  undefined4 local_6c;
  RealTimeRoom aRStack_68 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_64 [4];
  undefined4 local_60;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_5c [8];
  undefined4 local_54;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_50 [8];
  undefined1 auStack_48 [36];
  
  FUN_00510a86(auStack_48,*param_2);
  FUN_0051683e(auStack_7c,auStack_48);
  FUN_0050811a(auStack_48);
  iVar2 = RealTimeRoomConfig::Valid(param_5);
  if (iVar2 == 0) {
    FUN_005166ae(4,"Creating a room with an invalid configuration: skipping.");
    local_6c = 0xfffffffe;
    RealTimeRoom::RealTimeRoom(aRStack_68);
    RealTimeRoomResponse::RealTimeRoomResponse(param_1,(RealTimeRoomResponse *)&local_6c);
    this = a_Stack_64;
  }
  else {
    FUN_00521da8(&local_74,0,auStack_78);
    piVar3 = (int *)*param_2;
    pcVar4 = *(code **)(*piVar3 + 0xe4);
    local_54 = *param_6;
    pRVar1 = (RealTimeRoomResponse *)&local_54;
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
              (a_Stack_50,(__shared_count *)(param_6 + 1));
    local_60 = local_74;
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count(a_Stack_5c,a_Stack_70);
    FUN_0052022c(auStack_48,(RealTimeRoomResponse *)&local_60);
    iVar2 = (*pcVar4)(piVar3,param_5,pRVar1,auStack_48);
    FUN_0051f8b6(auStack_48);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_5c);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_50);
    if (iVar2 == 0) {
      local_60 = 0xfffffffd;
      RealTimeRoom::RealTimeRoom((RealTimeRoom *)a_Stack_5c);
      RealTimeRoomResponse::RealTimeRoomResponse(param_1,(RealTimeRoomResponse *)&local_60);
      pRVar1 = (RealTimeRoomResponse *)&local_60;
    }
    else {
      FUN_00521f78(pRVar1,&local_74,param_3,param_4);
      RealTimeRoomResponse::RealTimeRoomResponse(param_1,pRVar1);
    }
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(pRVar1 + 8));
    this = (__shared_count<(__gnu_cxx::_Lock_policy)2> *)a_Stack_70;
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(this);
  FUN_00516580(auStack_7c);
  return param_1;
}

// ---- gpg::RealTimeMultiplayerManager::CreateRealTimeRoomBlocking  @ 0x5221d4
/* gpg::RealTimeMultiplayerManager::CreateRealTimeRoomBlocking(std::chrono::duration<long long,
   std::ratio<1ll, 1000ll> >, gpg::RealTimeRoomConfig const&, gpg::IRealTimeEventListener*) */

RealTimeRoomResponse *
gpg::RealTimeMultiplayerManager::CreateRealTimeRoomBlocking
          (RealTimeRoomResponse *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
          undefined4 param_5)

{
  undefined1 auStack_3c [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_38 [4];
  RealTimeEventListenerHelper aRStack_34 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_30 [4];
  RealTimeRoomResponse aRStack_2c [8];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_24 [4];
  
  FUN_00521520(auStack_3c,0,aRStack_2c,&stack0x00000004);
  RealTimeEventListenerHelper::RealTimeEventListenerHelper(aRStack_34,auStack_3c);
  CreateRealTimeRoomBlocking(aRStack_2c,param_2,param_3,param_4,param_5,aRStack_34);
  RealTimeRoomResponse::RealTimeRoomResponse(param_1,aRStack_2c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_24);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_30);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_38);
  return param_1;
}

// ---- gpg::RealTimeMultiplayerManager::CreateRealTimeRoomBlocking  @ 0x52225c
/* gpg::RealTimeMultiplayerManager::CreateRealTimeRoomBlocking(gpg::RealTimeRoomConfig const&,
   gpg::IRealTimeEventListener*) */

RealTimeRoomConfig *
gpg::RealTimeMultiplayerManager::CreateRealTimeRoomBlocking
          (RealTimeRoomConfig *param_1,IRealTimeEventListener *param_2)

{
  RealTimeRoomResponse aRStack_1c [8];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_14 [8];
  
  CreateRealTimeRoomBlocking(aRStack_1c,param_2,0x6cebb800,0x49);
  RealTimeRoomResponse::RealTimeRoomResponse((RealTimeRoomResponse *)param_1,aRStack_1c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_14);
  return param_1;
}

// ---- gpg::RealTimeMultiplayerManager::CreateRealTimeRoomBlocking  @ 0x52229c
/* gpg::RealTimeMultiplayerManager::CreateRealTimeRoomBlocking(gpg::RealTimeRoomConfig const&,
   gpg::RealTimeEventListenerHelper) */

RealTimeRoomResponse *
gpg::RealTimeMultiplayerManager::CreateRealTimeRoomBlocking
          (RealTimeRoomResponse *param_1,undefined4 param_2,undefined4 param_3,undefined4 *param_4)

{
  undefined4 local_2c;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_28 [4];
  RealTimeRoomResponse aRStack_24 [8];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_1c [4];
  
  local_2c = *param_4;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_28,(__shared_count *)(param_4 + 1));
  CreateRealTimeRoomBlocking(aRStack_24,param_2,0x6cebb800,0x49,param_3,&local_2c);
  RealTimeRoomResponse::RealTimeRoomResponse(param_1,aRStack_24);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_1c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_28);
  return param_1;
}

// ---- gpg::RealTimeMultiplayerManager::AcceptInvitationBlocking  @ 0x522308
/* gpg::RealTimeMultiplayerManager::AcceptInvitationBlocking(std::chrono::duration<long long,
   std::ratio<1ll, 1000ll> >, gpg::MultiplayerInvitation const&, gpg::RealTimeEventListenerHelper)
    */

RealTimeRoomResponse *
gpg::RealTimeMultiplayerManager::AcceptInvitationBlocking
          (RealTimeRoomResponse *param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4,
          MultiplayerInvitation *param_5,undefined4 *param_6)

{
  RealTimeRoomResponse *pRVar1;
  int iVar2;
  undefined4 uVar3;
  __shared_count<(__gnu_cxx::_Lock_policy)2> *this;
  code *pcVar4;
  int *piVar5;
  undefined1 auStack_7c [4];
  undefined1 auStack_78 [4];
  undefined4 local_74;
  __shared_count a_Stack_70 [4];
  undefined4 local_6c;
  RealTimeRoom aRStack_68 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_64 [4];
  undefined4 local_60;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_5c [8];
  undefined4 local_54;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_50 [8];
  undefined1 auStack_48 [36];
  
  FUN_00510a86(auStack_48,*param_2);
  FUN_0051683e(auStack_7c,auStack_48);
  FUN_0050811a(auStack_48);
  iVar2 = MultiplayerInvitation::Valid(param_5);
  if (iVar2 == 0) {
    FUN_005166ae(4,"Accepting an invalid invitation: skipping.");
    local_6c = 0xfffffffe;
    RealTimeRoom::RealTimeRoom(aRStack_68);
    RealTimeRoomResponse::RealTimeRoomResponse(param_1,(RealTimeRoomResponse *)&local_6c);
    this = a_Stack_64;
  }
  else {
    FUN_00521da8(&local_74,0,auStack_78);
    piVar5 = (int *)*param_2;
    pcVar4 = *(code **)(*piVar5 + 0xe8);
    uVar3 = MultiplayerInvitation::Id(param_5);
    local_54 = *param_6;
    pRVar1 = (RealTimeRoomResponse *)&local_54;
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
              (a_Stack_50,(__shared_count *)(param_6 + 1));
    local_60 = local_74;
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count(a_Stack_5c,a_Stack_70);
    FUN_0052022c(auStack_48,(RealTimeRoomResponse *)&local_60);
    iVar2 = (*pcVar4)(piVar5,uVar3,pRVar1,auStack_48);
    FUN_0051f8b6(auStack_48);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_5c);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_50);
    if (iVar2 == 0) {
      local_60 = 0xfffffffd;
      RealTimeRoom::RealTimeRoom((RealTimeRoom *)a_Stack_5c);
      RealTimeRoomResponse::RealTimeRoomResponse(param_1,(RealTimeRoomResponse *)&local_60);
      pRVar1 = (RealTimeRoomResponse *)&local_60;
    }
    else {
      FUN_00521f78(pRVar1,&local_74,param_3,param_4);
      RealTimeRoomResponse::RealTimeRoomResponse(param_1,pRVar1);
    }
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(pRVar1 + 8));
    this = (__shared_count<(__gnu_cxx::_Lock_policy)2> *)a_Stack_70;
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(this);
  FUN_00516580(auStack_7c);
  return param_1;
}

// ---- gpg::RealTimeMultiplayerManager::AcceptInvitationBlocking  @ 0x52246c
/* gpg::RealTimeMultiplayerManager::AcceptInvitationBlocking(std::chrono::duration<long long,
   std::ratio<1ll, 1000ll> >, gpg::MultiplayerInvitation const&, gpg::IRealTimeEventListener*) */

RealTimeRoomResponse *
gpg::RealTimeMultiplayerManager::AcceptInvitationBlocking
          (RealTimeRoomResponse *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
          undefined4 param_5)

{
  undefined1 auStack_3c [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_38 [4];
  RealTimeEventListenerHelper aRStack_34 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_30 [4];
  RealTimeRoomResponse aRStack_2c [8];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_24 [4];
  
  FUN_00521520(auStack_3c,0,aRStack_2c,&stack0x00000004);
  RealTimeEventListenerHelper::RealTimeEventListenerHelper(aRStack_34,auStack_3c);
  AcceptInvitationBlocking(aRStack_2c,param_2,param_3,param_4,param_5,aRStack_34);
  RealTimeRoomResponse::RealTimeRoomResponse(param_1,aRStack_2c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_24);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_30);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_38);
  return param_1;
}

// ---- gpg::RealTimeMultiplayerManager::AcceptInvitationBlocking  @ 0x5224f4
/* gpg::RealTimeMultiplayerManager::AcceptInvitationBlocking(gpg::MultiplayerInvitation const&,
   gpg::IRealTimeEventListener*) */

MultiplayerInvitation *
gpg::RealTimeMultiplayerManager::AcceptInvitationBlocking
          (MultiplayerInvitation *param_1,IRealTimeEventListener *param_2)

{
  RealTimeRoomResponse aRStack_1c [8];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_14 [8];
  
  AcceptInvitationBlocking(aRStack_1c,param_2,0x6cebb800,0x49);
  RealTimeRoomResponse::RealTimeRoomResponse((RealTimeRoomResponse *)param_1,aRStack_1c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_14);
  return param_1;
}

// ---- gpg::RealTimeMultiplayerManager::AcceptInvitationBlocking  @ 0x522534
/* gpg::RealTimeMultiplayerManager::AcceptInvitationBlocking(gpg::MultiplayerInvitation const&,
   gpg::RealTimeEventListenerHelper) */

RealTimeRoomResponse *
gpg::RealTimeMultiplayerManager::AcceptInvitationBlocking
          (RealTimeRoomResponse *param_1,undefined4 param_2,undefined4 param_3,undefined4 *param_4)

{
  undefined4 local_2c;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_28 [4];
  RealTimeRoomResponse aRStack_24 [8];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_1c [4];
  
  local_2c = *param_4;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_28,(__shared_count *)(param_4 + 1));
  AcceptInvitationBlocking(aRStack_24,param_2,0x6cebb800,0x49,param_3,&local_2c);
  RealTimeRoomResponse::RealTimeRoomResponse(param_1,aRStack_24);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_1c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_28);
  return param_1;
}

// ---- gpg::RealTimeMultiplayerManager::LeaveRoomBlocking  @ 0x52264c
/* gpg::RealTimeMultiplayerManager::LeaveRoomBlocking(std::chrono::duration<long long,
   std::ratio<1ll, 1000ll> >, gpg::RealTimeRoom const&) */

undefined4
gpg::RealTimeMultiplayerManager::LeaveRoomBlocking
          (undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
          undefined4 param_5)

{
  int iVar1;
  undefined4 uVar2;
  undefined4 extraout_r1;
  int *piVar3;
  code *pcVar4;
  undefined1 auStack_5c [4];
  undefined4 local_58;
  __shared_count a_Stack_54 [4];
  undefined4 local_50;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_4c [4];
  undefined1 auStack_48 [36];
  
  FUN_00510a86(auStack_48,*param_1);
  FUN_0051683e(auStack_5c,auStack_48);
  FUN_0050811a(auStack_48);
  FUN_00521e68(&local_58,0,&local_50);
  piVar3 = (int *)*param_1;
  pcVar4 = *(code **)(*piVar3 + 0xf8);
  local_50 = local_58;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count(a_Stack_4c,a_Stack_54);
  FUN_005202f0(auStack_48,&local_50);
  iVar1 = (*pcVar4)(piVar3,param_5,auStack_48);
  FUN_0051f9a4(auStack_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_4c);
  if (iVar1 == 0) {
    uVar2 = 0xfffffffd;
  }
  else {
    uVar2 = FUN_005225a0(&local_58,extraout_r1,param_3,param_4);
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)a_Stack_54);
  FUN_00516580(auStack_5c);
  return uVar2;
}

// ---- gpg::RealTimeMultiplayerManager::LeaveRoomBlocking  @ 0x52271c
/* gpg::RealTimeMultiplayerManager::LeaveRoomBlocking(gpg::RealTimeRoom const&) */

void gpg::RealTimeMultiplayerManager::LeaveRoomBlocking(RealTimeRoom *param_1)

{
  undefined4 in_r1;
  
  LeaveRoomBlocking(param_1,in_r1,0x6cebb800,0x49);
  return;
}

// ---- gpg::RealTimeMultiplayerManager::SendReliableMessageBlocking  @ 0x522738
/* gpg::RealTimeMultiplayerManager::SendReliableMessageBlocking(std::chrono::duration<long long,
   std::ratio<1ll, 1000ll> >, gpg::RealTimeRoom const&, gpg::MultiplayerParticipant const&,
   std::vector<unsigned char, std::allocator<unsigned char> >) */

undefined4
gpg::RealTimeMultiplayerManager::SendReliableMessageBlocking
          (undefined4 *param_1,undefined4 param_2,uint param_3,int param_4,RealTimeRoom *param_5,
          MultiplayerParticipant *param_6,vector *param_7)

{
  mutex *pmVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  int iVar4;
  uint uVar5;
  code *pcVar6;
  int *piVar7;
  uint local_80;
  int iStack_7c;
  undefined1 auStack_78 [4];
  undefined1 auStack_74 [4];
  int local_70;
  int iStack_6c;
  mutex *local_64;
  __shared_count a_Stack_60 [4];
  mutex *local_5c;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_58 [4];
  vector<unsigned_char,std::allocator<unsigned_char>> avStack_54 [12];
  undefined1 auStack_48 [36];
  
  FUN_00510a86(auStack_48,*param_1);
  FUN_0051683e(auStack_78,auStack_48);
  FUN_0050811a(auStack_48);
  FUN_00521ef0(&local_64,0,auStack_74);
  piVar7 = (int *)*param_1;
  pcVar6 = *(code **)(*piVar7 + 0xfc);
  uVar2 = RealTimeRoom::Id(param_5);
  uVar3 = MultiplayerParticipant::Id(param_6);
  std::vector<unsigned_char,std::allocator<unsigned_char>>::vector(avStack_54,param_7);
  local_5c = local_64;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count(a_Stack_58,a_Stack_60);
  FUN_005203bc(auStack_48,(unique_lock<std::mutex> *)&local_5c);
  iVar4 = (*pcVar6)(piVar7,uVar2,uVar3,avStack_54,auStack_48);
  FUN_0051f9b8(auStack_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_58);
  std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::~_Vector_base
            ((_Vector_base<unsigned_char,std::allocator<unsigned_char>> *)avStack_54);
  if (iVar4 == 0) {
    uVar2 = 0xfffffffd;
    goto LAB_00522888;
  }
  iVar4 = FUN_00553a80();
  if (iVar4 != 0) {
    FUN_005166ae(4,"Blocking calls are not allowed from the UI thread.");
    uVar2 = 0xfffffffe;
    goto LAB_00522888;
  }
  std::unique_lock<std::mutex>::unique_lock((unique_lock<std::mutex> *)&local_5c,local_64);
  pmVar1 = local_64;
  if (local_64[8] == (mutex)0x0) {
    FUN_007bfd24(&local_80);
    uVar5 = (uint)((ulonglong)param_3 * 1000000);
    local_70 = uVar5 + local_80;
    iStack_6c = param_4 * 1000000 + (int)((ulonglong)param_3 * 1000000 >> 0x20) +
                iStack_7c + (uint)CARRY4(uVar5,local_80);
    do {
      if (local_64[8] != (mutex)0x0) goto LAB_0052283e;
      iVar4 = std::condition_variable::
              __wait_until_impl<std::chrono::duration<long_long,std::ratio<1ll,1000000000ll>>>
                        ((unique_lock *)(pmVar1 + 4),(time_point *)&local_5c);
    } while (iVar4 != 1);
    uVar2 = 0xfffffffb;
    if (local_64[8] != (mutex)0x0) goto LAB_0052283e;
  }
  else {
LAB_0052283e:
    uVar2 = *(undefined4 *)(local_64 + 0xc);
  }
  std::unique_lock<std::mutex>::~unique_lock((unique_lock<std::mutex> *)&local_5c);
LAB_00522888:
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)a_Stack_60);
  FUN_00516580(auStack_78);
  return uVar2;
}

// ---- gpg::RealTimeMultiplayerManager::SendReliableMessageBlocking  @ 0x5228a4
/* gpg::RealTimeMultiplayerManager::SendReliableMessageBlocking(gpg::RealTimeRoom const&,
   gpg::MultiplayerParticipant const&, std::vector<unsigned char, std::allocator<unsigned char> >)
    */

undefined4 __thiscall
gpg::RealTimeMultiplayerManager::SendReliableMessageBlocking
          (RealTimeMultiplayerManager *this,undefined4 param_1,undefined4 param_2,vector *param_4)

{
  undefined4 uVar1;
  undefined4 extraout_r1;
  vector<unsigned_char,std::allocator<unsigned_char>> avStack_24 [16];
  
  std::vector<unsigned_char,std::allocator<unsigned_char>>::vector(avStack_24,param_4);
  uVar1 = SendReliableMessageBlocking(this,extraout_r1,0x6cebb800,0x49,param_1,param_2,avStack_24);
  std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::~_Vector_base
            ((_Vector_base<unsigned_char,std::allocator<unsigned_char>> *)avStack_24);
  return uVar1;
}

// ---- gpg::RealTimeMultiplayerManager::ShowRoomInboxUIBlocking  @ 0x522d8c
/* gpg::RealTimeMultiplayerManager::ShowRoomInboxUIBlocking(std::chrono::duration<long long,
   std::ratio<1ll, 1000ll> >) */

RoomInboxUIResponse *
gpg::RealTimeMultiplayerManager::ShowRoomInboxUIBlocking
          (RoomInboxUIResponse *param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  code *pcVar2;
  RoomInboxUIResponse *pRVar3;
  int *piVar4;
  undefined1 auStack_80 [4];
  undefined1 auStack_7c [4];
  undefined4 local_78;
  __shared_count a_Stack_74 [4];
  undefined4 local_70;
  MultiplayerInvitation aMStack_6c [16];
  undefined4 local_5c;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_58 [16];
  undefined1 auStack_48 [36];
  
  FUN_00510a86(auStack_48,*param_2);
  FUN_0051683e(auStack_80,auStack_48);
  FUN_0050811a(auStack_48);
  FUN_00522cc8(&local_78,0,auStack_7c);
  piVar4 = (int *)*param_2;
  pcVar2 = *(code **)(*piVar4 + 0x108);
  pRVar3 = (RoomInboxUIResponse *)&local_5c;
  local_5c = local_78;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count(a_Stack_58,a_Stack_74);
  FUN_00520494(auStack_48,pRVar3);
  iVar1 = (*pcVar2)(piVar4,auStack_48);
  FUN_0051f9cc(auStack_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_58);
  if (iVar1 == 0) {
    pRVar3 = (RoomInboxUIResponse *)&local_70;
    local_70 = 0xfffffffd;
    MultiplayerInvitation::MultiplayerInvitation(aMStack_6c);
    RoomInboxUIResponse::RoomInboxUIResponse(param_1,pRVar3);
  }
  else {
    FUN_005228e8(pRVar3,&local_78,param_3,param_4);
    RoomInboxUIResponse::RoomInboxUIResponse(param_1,pRVar3);
  }
  MultiplayerInvitation::~MultiplayerInvitation((MultiplayerInvitation *)(pRVar3 + 4));
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)a_Stack_74);
  FUN_00516580(auStack_80);
  return param_1;
}

// ---- gpg::RealTimeMultiplayerManager::ShowRoomInboxUIBlocking  @ 0x522e84
/* gpg::RealTimeMultiplayerManager::ShowRoomInboxUIBlocking() */

void gpg::RealTimeMultiplayerManager::ShowRoomInboxUIBlocking(void)

{
  RoomInboxUIResponse *in_r0;
  undefined4 in_r1;
  RoomInboxUIResponse aRStack_24 [4];
  MultiplayerInvitation aMStack_20 [20];
  
  ShowRoomInboxUIBlocking(aRStack_24,in_r1,0x6cebb800,0x49);
  RoomInboxUIResponse::RoomInboxUIResponse(in_r0,aRStack_24);
  MultiplayerInvitation::~MultiplayerInvitation(aMStack_20);
  return;
}

// ---- gpg::RealTimeMultiplayerManager::ShowPlayerSelectUIBlocking  @ 0x522f54
/* gpg::RealTimeMultiplayerManager::ShowPlayerSelectUIBlocking(std::chrono::duration<long long,
   std::ratio<1ll, 1000ll> >, unsigned int, unsigned int, bool) */

PlayerSelectUIResponse *
gpg::RealTimeMultiplayerManager::ShowPlayerSelectUIBlocking
          (PlayerSelectUIResponse *param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4
          ,undefined4 param_5,undefined4 param_6,undefined1 param_7)

{
  PlayerSelectUIResponse *pPVar1;
  int iVar2;
  code *pcVar3;
  int *piVar4;
  undefined1 auStack_70 [4];
  undefined1 auStack_6c [4];
  undefined4 local_68;
  __shared_count a_Stack_64 [4];
  undefined4 local_60;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_5c [20];
  undefined4 local_48 [9];
  
  FUN_00510a86((PlayerSelectUIResponse *)local_48,*param_2);
  FUN_0051683e(auStack_70,(PlayerSelectUIResponse *)local_48);
  FUN_0050811a((PlayerSelectUIResponse *)local_48);
  FUN_00522ebc(&local_68,0,auStack_6c);
  piVar4 = (int *)*param_2;
  pcVar3 = *(code **)(*piVar4 + 0x10c);
  pPVar1 = (PlayerSelectUIResponse *)&local_60;
  local_60 = local_68;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count(a_Stack_5c,a_Stack_64);
  FUN_00520558((PlayerSelectUIResponse *)local_48,pPVar1);
  iVar2 = (*pcVar3)(piVar4,param_5,param_6,param_7,(PlayerSelectUIResponse *)local_48);
  FUN_0051f9f4((PlayerSelectUIResponse *)local_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_5c);
  if (iVar2 == 0) {
    memset((PlayerSelectUIResponse *)local_48,0,0x18);
    local_48[0] = 0xfffffffd;
    TurnBasedMultiplayerManager::PlayerSelectUIResponse::PlayerSelectUIResponse
              (param_1,(PlayerSelectUIResponse *)local_48);
    pPVar1 = (PlayerSelectUIResponse *)local_48;
  }
  else {
    FUN_005229e8(pPVar1,&local_68,param_3,param_4);
    TurnBasedMultiplayerManager::PlayerSelectUIResponse::PlayerSelectUIResponse(param_1,pPVar1);
  }
  std::vector<std::string,std::allocator<std::string>>::~vector
            ((vector<std::string,std::allocator<std::string>> *)(pPVar1 + 4));
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)a_Stack_64);
  FUN_00516580(auStack_70);
  return param_1;
}

// ---- gpg::RealTimeMultiplayerManager::ShowPlayerSelectUIBlocking  @ 0x52304c
/* gpg::RealTimeMultiplayerManager::ShowPlayerSelectUIBlocking(unsigned int, unsigned int, bool) */

uint gpg::RealTimeMultiplayerManager::ShowPlayerSelectUIBlocking
               (uint param_1,uint param_2,bool param_3)

{
  PlayerSelectUIResponse aPStack_28 [4];
  vector<std::string,std::allocator<std::string>> avStack_24 [24];
  
  ShowPlayerSelectUIBlocking(aPStack_28,param_2,0x6cebb800,0x49,param_3);
  TurnBasedMultiplayerManager::PlayerSelectUIResponse::PlayerSelectUIResponse
            ((PlayerSelectUIResponse *)param_1,aPStack_28);
  std::vector<std::string,std::allocator<std::string>>::~vector(avStack_24);
  return param_1;
}

// ---- gpg::RealTimeMultiplayerManager::ShowWaitingRoomUIBlocking  @ 0x523144
/* gpg::RealTimeMultiplayerManager::ShowWaitingRoomUIBlocking(std::chrono::duration<long long,
   std::ratio<1ll, 1000ll> >, gpg::RealTimeRoom const&, unsigned int) */

WaitingRoomUIResponse *
gpg::RealTimeMultiplayerManager::ShowWaitingRoomUIBlocking
          (WaitingRoomUIResponse *param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4,
          undefined4 param_5,undefined4 param_6)

{
  int iVar1;
  code *pcVar2;
  WaitingRoomUIResponse *pWVar3;
  int *piVar4;
  undefined1 auStack_70 [4];
  undefined1 auStack_6c [4];
  undefined4 local_68;
  __shared_count a_Stack_64 [4];
  undefined4 local_60;
  RealTimeRoom aRStack_5c [8];
  undefined4 local_54;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_50 [8];
  undefined1 auStack_48 [36];
  
  FUN_00510a86(auStack_48,*param_2);
  FUN_0051683e(auStack_70,auStack_48);
  FUN_0050811a(auStack_48);
  FUN_00523084(&local_68,0,auStack_6c);
  piVar4 = (int *)*param_2;
  pcVar2 = *(code **)(*piVar4 + 0x110);
  pWVar3 = (WaitingRoomUIResponse *)&local_54;
  local_54 = local_68;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count(a_Stack_50,a_Stack_64);
  FUN_00520630(auStack_48,pWVar3);
  iVar1 = (*pcVar2)(piVar4,param_5,param_6,auStack_48);
  FUN_0051fa36(auStack_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_50);
  if (iVar1 == 0) {
    pWVar3 = (WaitingRoomUIResponse *)&local_60;
    local_60 = 0xfffffffd;
    RealTimeRoom::RealTimeRoom(aRStack_5c);
    WaitingRoomUIResponse::WaitingRoomUIResponse(param_1,pWVar3);
  }
  else {
    FUN_00522ad4(pWVar3,&local_68,param_3,param_4);
    WaitingRoomUIResponse::WaitingRoomUIResponse(param_1,pWVar3);
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(pWVar3 + 8));
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)a_Stack_64);
  FUN_00516580(auStack_70);
  return param_1;
}

// ---- gpg::RealTimeMultiplayerManager::ShowWaitingRoomUIBlocking  @ 0x523240
/* gpg::RealTimeMultiplayerManager::ShowWaitingRoomUIBlocking(gpg::RealTimeRoom const&, unsigned
   int) */

RealTimeRoom *
gpg::RealTimeMultiplayerManager::ShowWaitingRoomUIBlocking(RealTimeRoom *param_1,uint param_2)

{
  WaitingRoomUIResponse aWStack_1c [8];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_14 [8];
  
  ShowWaitingRoomUIBlocking(aWStack_1c,param_2,0x6cebb800,0x49);
  WaitingRoomUIResponse::WaitingRoomUIResponse((WaitingRoomUIResponse *)param_1,aWStack_1c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_14);
  return param_1;
}

// ---- gpg::RealTimeMultiplayerManager::FetchInvitationsBlocking  @ 0x523318
/* gpg::RealTimeMultiplayerManager::FetchInvitationsBlocking(std::chrono::duration<long long,
   std::ratio<1ll, 1000ll> >) */

FetchInvitationsResponse *
gpg::RealTimeMultiplayerManager::FetchInvitationsBlocking
          (FetchInvitationsResponse *param_1,undefined4 *param_2,undefined4 param_3,
          undefined4 param_4)

{
  FetchInvitationsResponse *pFVar1;
  int iVar2;
  code *pcVar3;
  int *piVar4;
  undefined1 auStack_68 [4];
  undefined1 auStack_64 [4];
  undefined4 local_60;
  __shared_count a_Stack_5c [4];
  undefined4 local_58;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_54 [12];
  undefined4 local_48;
  int local_44;
  int local_40;
  int local_3c;
  
  FUN_00510a86((FetchInvitationsResponse *)&local_48,*param_2);
  FUN_0051683e(auStack_68,(FetchInvitationsResponse *)&local_48);
  FUN_0050811a((FetchInvitationsResponse *)&local_48);
  FUN_00523280(&local_60,0,auStack_64);
  piVar4 = (int *)*param_2;
  pcVar3 = *(code **)(*piVar4 + 0xf4);
  pFVar1 = (FetchInvitationsResponse *)&local_58;
  local_58 = local_60;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count(a_Stack_54,a_Stack_5c);
  FUN_005206f4((FetchInvitationsResponse *)&local_48,pFVar1);
  iVar2 = (*pcVar3)(piVar4,(FetchInvitationsResponse *)&local_48);
  FUN_0051fa5e((FetchInvitationsResponse *)&local_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_54);
  if (iVar2 == 0) {
    local_48 = 0xfffffffd;
    local_44 = iVar2;
    local_40 = iVar2;
    local_3c = iVar2;
    FetchInvitationsResponse::FetchInvitationsResponse
              (param_1,(FetchInvitationsResponse *)&local_48);
    pFVar1 = (FetchInvitationsResponse *)&local_48;
  }
  else {
    FUN_00522bdc(pFVar1,&local_60,param_3,param_4);
    FetchInvitationsResponse::FetchInvitationsResponse(param_1,pFVar1);
  }
  std::vector<gpg::MultiplayerInvitation,std::allocator<gpg::MultiplayerInvitation>>::~vector
            ((vector<gpg::MultiplayerInvitation,std::allocator<gpg::MultiplayerInvitation>> *)
             (pFVar1 + 4));
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)a_Stack_5c);
  FUN_00516580(auStack_68);
  return param_1;
}

// ---- gpg::RealTimeMultiplayerManager::FetchInvitationsBlocking  @ 0x523408
/* gpg::RealTimeMultiplayerManager::FetchInvitationsBlocking() */

void gpg::RealTimeMultiplayerManager::FetchInvitationsBlocking(void)

{
  FetchInvitationsResponse *in_r0;
  undefined4 in_r1;
  FetchInvitationsResponse aFStack_20 [4];
  vector<gpg::MultiplayerInvitation,std::allocator<gpg::MultiplayerInvitation>> avStack_1c [16];
  
  FetchInvitationsBlocking(aFStack_20,in_r1,0x6cebb800,0x49);
  FetchInvitationsResponse::FetchInvitationsResponse(in_r0,aFStack_20);
  std::vector<gpg::MultiplayerInvitation,std::allocator<gpg::MultiplayerInvitation>>::~vector
            (avStack_1c);
  return;
}

// ---- gpg::RealTimeRoom::RealTimeRoom  @ 0x523434
/* gpg::RealTimeRoom::RealTimeRoom() */

void __thiscall gpg::RealTimeRoom::RealTimeRoom(RealTimeRoom *this)

{
  *(undefined4 *)this = 0;
  *(undefined4 *)(this + 4) = 0;
  return;
}

// ---- gpg::RealTimeRoom::RealTimeRoom  @ 0x52343c
/* gpg::RealTimeRoom::RealTimeRoom(std::shared_ptr<gpg::RealTimeRoomImpl const>) */

void __thiscall gpg::RealTimeRoom::RealTimeRoom(RealTimeRoom *this,undefined4 *param_2)

{
  bool bVar1;
  int iVar2;
  int *piVar3;
  
  *(undefined4 *)this = *param_2;
  iVar2 = param_2[1];
  *(int *)(this + 4) = iVar2;
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

// ---- gpg::RealTimeRoom::RealTimeRoom  @ 0x523460
/* gpg::RealTimeRoom::RealTimeRoom(gpg::RealTimeRoom const&) */

void __thiscall gpg::RealTimeRoom::RealTimeRoom(RealTimeRoom *this,RealTimeRoom *param_1)

{
  bool bVar1;
  int iVar2;
  int *piVar3;
  
  *(undefined4 *)this = *(undefined4 *)param_1;
  iVar2 = *(int *)(param_1 + 4);
  *(int *)(this + 4) = iVar2;
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

// ---- gpg::RealTimeRoom::RealTimeRoom  @ 0x523484
/* gpg::RealTimeRoom::RealTimeRoom(gpg::RealTimeRoom&&) */

void __thiscall gpg::RealTimeRoom::RealTimeRoom(RealTimeRoom *this,RealTimeRoom *param_1)

{
  undefined4 uVar1;
  
  *(undefined4 *)this = *(undefined4 *)param_1;
  *(undefined4 *)(this + 4) = 0;
  uVar1 = *(undefined4 *)(param_1 + 4);
  *(undefined4 *)(param_1 + 4) = 0;
  *(undefined4 *)(this + 4) = uVar1;
  *(undefined4 *)param_1 = 0;
  return;
}

// ---- gpg::RealTimeRoom::Valid  @ 0x523498
/* gpg::RealTimeRoom::Valid() const */

bool __thiscall gpg::RealTimeRoom::Valid(RealTimeRoom *this)

{
  return *(int *)this != 0;
}

// ---- gpg::RealTimeRoom::Id  @ 0x5234a4
/* gpg::RealTimeRoom::Id() const */

undefined4 * __thiscall gpg::RealTimeRoom::Id(RealTimeRoom *this)

{
  int iVar1;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get Id from an invalid RealTimeRoom.");
    return &DAT_00960b7c;
  }
  return (undefined4 *)(*(int *)this + 4);
}

// ---- gpg::RealTimeRoom::CreationTime  @ 0x5234d0
/* gpg::RealTimeRoom::CreationTime() const */

void gpg::RealTimeRoom::CreationTime(void)

{
  undefined4 *in_r0;
  int iVar1;
  RealTimeRoom *in_r1;
  undefined4 uVar2;
  undefined4 uVar3;
  
  iVar1 = Valid(in_r1);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get creation time from an invalid RealTimeRoom.");
    uVar2 = 0;
    uVar3 = 0;
  }
  else {
    uVar2 = *(undefined4 *)(*(int *)in_r1 + 0x10);
    uVar3 = *(undefined4 *)(*(int *)in_r1 + 0x14);
  }
  *in_r0 = uVar2;
  in_r0[1] = uVar3;
  return;
}

// ---- gpg::RealTimeRoom::CreatingParticipant  @ 0x523500
/* gpg::RealTimeRoom::CreatingParticipant() const */

void gpg::RealTimeRoom::CreatingParticipant(void)

{
  MultiplayerParticipant *in_r0;
  int iVar1;
  RealTimeRoom *in_r1;
  MultiplayerParticipant aMStack_18 [12];
  
  iVar1 = Valid(in_r1);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get creating participant from an invalid RealTimeRoom.");
    MultiplayerParticipant::MultiplayerParticipant(aMStack_18);
    MultiplayerParticipant::MultiplayerParticipant(in_r0,aMStack_18);
    MultiplayerParticipant::~MultiplayerParticipant(aMStack_18);
  }
  else {
    MultiplayerParticipant::MultiplayerParticipant
              (in_r0,(MultiplayerParticipant *)(*(int *)in_r1 + 0x18));
  }
  return;
}

// ---- gpg::RealTimeRoom::Status  @ 0x523550
/* gpg::RealTimeRoom::Status() const */

undefined4 __thiscall gpg::RealTimeRoom::Status(RealTimeRoom *this)

{
  int iVar1;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get status from an invalid RealTimeRoom.");
    return 5;
  }
  return *(undefined4 *)(*(int *)this + 0x20);
}

// ---- gpg::RealTimeRoom::RemainingAutomatchingSlots  @ 0x523574
/* gpg::RealTimeRoom::RemainingAutomatchingSlots() const */

undefined4 __thiscall gpg::RealTimeRoom::RemainingAutomatchingSlots(RealTimeRoom *this)

{
  int iVar1;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get available automatching slots from an invalid RealTimeRoom.");
    return 0;
  }
  return *(undefined4 *)(*(int *)this + 0x38);
}

// ---- gpg::RealTimeRoom::Variant  @ 0x523598
/* gpg::RealTimeRoom::Variant() const */

undefined4 __thiscall gpg::RealTimeRoom::Variant(RealTimeRoom *this)

{
  int iVar1;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get variant from an invalid RealTimeRoom.");
    return 0;
  }
  return *(undefined4 *)(*(int *)this + 0x48);
}

// ---- gpg::RealTimeRoom::Description  @ 0x5235bc
/* gpg::RealTimeRoom::Description() const */

void gpg::RealTimeRoom::Description(void)

{
  int iVar1;
  RealTimeRoom *in_r1;
  
  iVar1 = Valid(in_r1);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get description from an invalid RealTimeRoom.");
  }
  FUN_007c64e8();
  return;
}

// ---- gpg::RealTimeRoom::AutomatchWaitEstimate  @ 0x5235f4
/* gpg::RealTimeRoom::AutomatchWaitEstimate() const */

void gpg::RealTimeRoom::AutomatchWaitEstimate(void)

{
  undefined4 *in_r0;
  int iVar1;
  RealTimeRoom *in_r1;
  undefined4 uVar2;
  undefined4 uVar3;
  
  iVar1 = Valid(in_r1);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get automatch wait estimage from an invalid RealTimeRoom.");
    uVar2 = 0;
    uVar3 = 0;
  }
  else {
    uVar2 = *(undefined4 *)(*(int *)in_r1 + 0x50);
    uVar3 = *(undefined4 *)(*(int *)in_r1 + 0x54);
  }
  *in_r0 = uVar2;
  in_r0[1] = uVar3;
  return;
}

// ---- gpg::RealTimeRoom::Participants  @ 0x5236b0
/* gpg::RealTimeRoom::Participants() const */

void gpg::RealTimeRoom::Participants(void)

{
  vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>> *in_r0;
  int iVar1;
  RealTimeRoom *in_r1;
  undefined4 *puVar2;
  
  iVar1 = Valid(in_r1);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get participants from an invalid RealTimeRoom.");
    puVar2 = &DAT_00960b94;
  }
  else {
    puVar2 = (undefined4 *)(*(int *)in_r1 + 0x28);
  }
  std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>::vector
            (in_r0,(vector *)puVar2);
  return;
}

// ---- gpg::RealTimeRoom::operator=  @ 0x5236e8
/* gpg::RealTimeRoom::TEMPNAMEPLACEHOLDERVALUE(gpg::RealTimeRoom&&) */

RealTimeRoom * __thiscall gpg::RealTimeRoom::operator=(RealTimeRoom *this,RealTimeRoom *param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 local_c;
  
  uVar1 = *(undefined4 *)param_1;
  uVar2 = *(undefined4 *)(param_1 + 4);
  *(undefined4 *)(param_1 + 4) = 0;
  *(undefined4 *)param_1 = 0;
  *(undefined4 *)this = uVar1;
  local_c = *(undefined4 *)(this + 4);
  *(undefined4 *)(this + 4) = uVar2;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_c);
  return this;
}

// ---- gpg::RealTimeRoom::operator=  @ 0x52370e
/* gpg::RealTimeRoom::TEMPNAMEPLACEHOLDERVALUE(gpg::RealTimeRoom const&) */

RealTimeRoom * __thiscall gpg::RealTimeRoom::operator=(RealTimeRoom *this,RealTimeRoom *param_1)

{
  bool bVar1;
  int *piVar2;
  int iVar3;
  
  *(undefined4 *)this = *(undefined4 *)param_1;
  iVar3 = *(int *)(param_1 + 4);
  if (iVar3 != *(int *)(this + 4)) {
    if (iVar3 != 0) {
      piVar2 = (int *)(iVar3 + 4);
      DataMemoryBarrier(0x1f);
      do {
        ExclusiveAccess(piVar2);
        bVar1 = (bool)hasExclusiveAccess(piVar2);
      } while (!bVar1);
      *piVar2 = *piVar2 + 1;
      DataMemoryBarrier(0x1f);
    }
    if (*(int *)(this + 4) != 0) {
      FUN_0033ce90();
    }
    *(int *)(this + 4) = iVar3;
  }
  return this;
}

// ---- gpg::RealTimeRoomConfig::RealTimeRoomConfig  @ 0x523746
/* gpg::RealTimeRoomConfig::RealTimeRoomConfig() */

void __thiscall gpg::RealTimeRoomConfig::RealTimeRoomConfig(RealTimeRoomConfig *this)

{
  *(undefined4 *)this = 0;
  *(undefined4 *)(this + 4) = 0;
  return;
}

// ---- gpg::RealTimeRoomConfig::RealTimeRoomConfig  @ 0x52374e
/* gpg::RealTimeRoomConfig::RealTimeRoomConfig(std::shared_ptr<gpg::RealTimeRoomConfigImpl const>)
    */

void __thiscall
gpg::RealTimeRoomConfig::RealTimeRoomConfig(RealTimeRoomConfig *this,undefined4 *param_2)

{
  bool bVar1;
  int iVar2;
  int *piVar3;
  
  *(undefined4 *)this = *param_2;
  iVar2 = param_2[1];
  *(int *)(this + 4) = iVar2;
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

// ---- gpg::RealTimeRoomConfig::RealTimeRoomConfig  @ 0x523772
/* gpg::RealTimeRoomConfig::RealTimeRoomConfig(gpg::RealTimeRoomConfig const&) */

void __thiscall
gpg::RealTimeRoomConfig::RealTimeRoomConfig(RealTimeRoomConfig *this,RealTimeRoomConfig *param_1)

{
  bool bVar1;
  int iVar2;
  int *piVar3;
  
  *(undefined4 *)this = *(undefined4 *)param_1;
  iVar2 = *(int *)(param_1 + 4);
  *(int *)(this + 4) = iVar2;
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

// ---- gpg::RealTimeRoomConfig::RealTimeRoomConfig  @ 0x523796
/* gpg::RealTimeRoomConfig::RealTimeRoomConfig(gpg::RealTimeRoomConfig&&) */

void __thiscall
gpg::RealTimeRoomConfig::RealTimeRoomConfig(RealTimeRoomConfig *this,RealTimeRoomConfig *param_1)

{
  undefined4 uVar1;
  
  *(undefined4 *)this = *(undefined4 *)param_1;
  *(undefined4 *)(this + 4) = 0;
  uVar1 = *(undefined4 *)(param_1 + 4);
  *(undefined4 *)(param_1 + 4) = 0;
  *(undefined4 *)(this + 4) = uVar1;
  *(undefined4 *)param_1 = 0;
  return;
}

// ---- gpg::RealTimeRoomConfig::Valid  @ 0x5237aa
/* gpg::RealTimeRoomConfig::Valid() const */

bool __thiscall gpg::RealTimeRoomConfig::Valid(RealTimeRoomConfig *this)

{
  return *(int *)this != 0;
}

// ---- gpg::RealTimeRoomConfig::PlayerIdsToInvite  @ 0x5237b4
/* gpg::RealTimeRoomConfig::PlayerIdsToInvite() const */

undefined4 * __thiscall gpg::RealTimeRoomConfig::PlayerIdsToInvite(RealTimeRoomConfig *this)

{
  int iVar1;
  
  iVar1 = Valid(this);
  if (iVar1 != 0) {
    return (undefined4 *)(*(int *)this + 0x14);
  }
  FUN_005166ae(4,"Attempting to get player ids from an invalid RealTimeRoomConfig.");
  return &DAT_00960bdc;
}

// ---- gpg::RealTimeRoomConfig::MinimumAutomatchingPlayers  @ 0x5237dc
/* gpg::RealTimeRoomConfig::MinimumAutomatchingPlayers() const */

undefined4 __thiscall gpg::RealTimeRoomConfig::MinimumAutomatchingPlayers(RealTimeRoomConfig *this)

{
  int iVar1;
  
  iVar1 = Valid(this);
  if (iVar1 != 0) {
    return *(undefined4 *)(*(int *)this + 8);
  }
  FUN_005166ae(4,"Attempting to get min automatching players from an invalid RealTimeRoomConfig.");
  return 0;
}

// ---- gpg::RealTimeRoomConfig::MaximumAutomatchingPlayers  @ 0x523800
/* gpg::RealTimeRoomConfig::MaximumAutomatchingPlayers() const */

undefined4 __thiscall gpg::RealTimeRoomConfig::MaximumAutomatchingPlayers(RealTimeRoomConfig *this)

{
  int iVar1;
  
  iVar1 = Valid(this);
  if (iVar1 != 0) {
    return *(undefined4 *)(*(int *)this + 0xc);
  }
  FUN_005166ae(4,"Attempting to get max automatching players from an invalid RealTimeRoomConfig.");
  return 0;
}

// ---- gpg::RealTimeRoomConfig::ExclusiveBitMask  @ 0x523824
/* gpg::RealTimeRoomConfig::ExclusiveBitMask() const */

undefined8 __thiscall gpg::RealTimeRoomConfig::ExclusiveBitMask(RealTimeRoomConfig *this)

{
  int iVar1;
  
  iVar1 = Valid(this);
  if (iVar1 != 0) {
    return **(undefined8 **)this;
  }
  FUN_005166ae(4,"Attempting to get exclusive bit mask from an invalid RealTimeRoomConfig.");
  return 0;
}

// ---- gpg::RealTimeRoomConfig::Variant  @ 0x52384c
/* gpg::RealTimeRoomConfig::Variant() const */

undefined4 __thiscall gpg::RealTimeRoomConfig::Variant(RealTimeRoomConfig *this)

{
  int iVar1;
  
  iVar1 = Valid(this);
  if (iVar1 != 0) {
    return *(undefined4 *)(*(int *)this + 0x10);
  }
  FUN_005166ae(4,"Attempting to get variant from an invalid RealTimeRoomConfig.");
  return 0;
}

// ---- gpg::RealTimeRoomConfig::operator=  @ 0x523870
/* gpg::RealTimeRoomConfig::TEMPNAMEPLACEHOLDERVALUE(gpg::RealTimeRoomConfig const&) */

RealTimeRoomConfig * __thiscall
gpg::RealTimeRoomConfig::operator=(RealTimeRoomConfig *this,RealTimeRoomConfig *param_1)

{
  bool bVar1;
  int *piVar2;
  int iVar3;
  
  *(undefined4 *)this = *(undefined4 *)param_1;
  iVar3 = *(int *)(param_1 + 4);
  if (iVar3 != *(int *)(this + 4)) {
    if (iVar3 != 0) {
      piVar2 = (int *)(iVar3 + 4);
      DataMemoryBarrier(0x1f);
      do {
        ExclusiveAccess(piVar2);
        bVar1 = (bool)hasExclusiveAccess(piVar2);
      } while (!bVar1);
      *piVar2 = *piVar2 + 1;
      DataMemoryBarrier(0x1f);
    }
    if (*(int *)(this + 4) != 0) {
      FUN_0033ce90();
    }
    *(int *)(this + 4) = iVar3;
  }
  return this;
}

// ---- gpg::RealTimeRoomConfig::operator=  @ 0x5238a8
/* gpg::RealTimeRoomConfig::TEMPNAMEPLACEHOLDERVALUE(gpg::RealTimeRoomConfig&&) */

RealTimeRoomConfig * __thiscall
gpg::RealTimeRoomConfig::operator=(RealTimeRoomConfig *this,RealTimeRoomConfig *param_1)

{
  undefined4 uVar1;
  int iVar2;
  undefined4 uVar3;
  
  uVar1 = *(undefined4 *)param_1;
  uVar3 = *(undefined4 *)(param_1 + 4);
  *(undefined4 *)(param_1 + 4) = 0;
  *(undefined4 *)param_1 = 0;
  *(undefined4 *)this = uVar1;
  iVar2 = *(int *)(this + 4);
  *(undefined4 *)(this + 4) = uVar3;
  if (iVar2 != 0) {
    FUN_0033ce90();
  }
  return this;
}

// ---- gpg::RealTimeRoomConfig::Builder::SetMinimumAutomatchingPlayers  @ 0x5239e0
/* gpg::RealTimeRoomConfig::Builder::SetMinimumAutomatchingPlayers(unsigned int) */

void __thiscall
gpg::RealTimeRoomConfig::Builder::SetMinimumAutomatchingPlayers(Builder *this,uint param_1)

{
  *(uint *)(*(int *)this + 8) = param_1;
  return;
}

// ---- gpg::RealTimeRoomConfig::Builder::SetMaximumAutomatchingPlayers  @ 0x5239e6
/* gpg::RealTimeRoomConfig::Builder::SetMaximumAutomatchingPlayers(unsigned int) */

void __thiscall
gpg::RealTimeRoomConfig::Builder::SetMaximumAutomatchingPlayers(Builder *this,uint param_1)

{
  *(uint *)(*(int *)this + 0xc) = param_1;
  return;
}

// ---- gpg::RealTimeRoomConfig::Builder::SetVariant  @ 0x5239ec
/* gpg::RealTimeRoomConfig::Builder::SetVariant(unsigned int) */

void __thiscall gpg::RealTimeRoomConfig::Builder::SetVariant(Builder *this,uint param_1)

{
  *(uint *)(*(int *)this + 0x10) = param_1;
  return;
}

// ---- gpg::RealTimeRoomConfig::Builder::SetExclusiveBitMask  @ 0x5239f2
/* gpg::RealTimeRoomConfig::Builder::SetExclusiveBitMask(unsigned long long) */

void gpg::RealTimeRoomConfig::Builder::SetExclusiveBitMask(ulonglong param_1)

{
  undefined4 *puVar1;
  undefined4 in_r2;
  undefined4 in_r3;
  
  puVar1 = (undefined4 *)*(int *)param_1;
  *puVar1 = in_r2;
  puVar1[1] = in_r3;
  return;
}

// ---- gpg::RealTimeRoomConfig::Builder::Builder  @ 0x523a60
/* gpg::RealTimeRoomConfig::Builder::Builder() */

Builder * __thiscall gpg::RealTimeRoomConfig::Builder::Builder(Builder *this)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  undefined4 local_1c;
  undefined4 local_18;
  undefined4 local_14;
  
  local_1c = 0;
  local_18 = 0;
  local_14 = 0;
  puVar2 = operator_new(0x20);
  uVar1 = local_14;
  *puVar2 = 0;
  puVar2[1] = 0;
  puVar2[2] = 0;
  puVar2[4] = 0xffffffff;
  puVar2[5] = local_1c;
  puVar2[3] = 0;
  local_1c = 0;
  puVar2[6] = local_18;
  local_18 = 0;
  local_14 = 0;
  puVar2[7] = uVar1;
  FUN_00523a14(this);
  std::vector<std::string,std::allocator<std::string>>::~vector
            ((vector<std::string,std::allocator<std::string>> *)&local_1c);
  return this;
}

// ---- gpg::RealTimeRoomConfig::Builder::PopulateFromPlayerSelectUIResponse  @ 0x523b50
/* gpg::RealTimeRoomConfig::Builder::PopulateFromPlayerSelectUIResponse(gpg::TurnBasedMultiplayerManager::PlayerSelectUIResponse
   const&) */

Builder * __thiscall
gpg::RealTimeRoomConfig::Builder::PopulateFromPlayerSelectUIResponse
          (Builder *this,PlayerSelectUIResponse *param_1)

{
  int iVar1;
  
  iVar1 = IsSuccess(*(undefined4 *)param_1);
  if (iVar1 == 0) {
    FUN_005166ae(1,
                 "Trying to populate a RealTimeRoomConfigBuilder from an unsuccessful PlayerSelectUIResponse."
                );
  }
  else {
    *(undefined4 *)(*(int *)this + 8) = *(undefined4 *)(param_1 + 0x10);
    *(undefined4 *)(*(int *)this + 0xc) = *(undefined4 *)(param_1 + 0x14);
    std::vector<std::string,std::allocator<std::string>>::operator=
              ((vector<std::string,std::allocator<std::string>> *)(*(int *)this + 0x14),param_1 + 4)
    ;
  }
  return this;
}

// ---- gpg::RealTimeRoomConfig::Builder::AddPlayerToInvite  @ 0x523b88
/* gpg::RealTimeRoomConfig::Builder::AddPlayerToInvite(std::string const&) */

Builder * __thiscall
gpg::RealTimeRoomConfig::Builder::AddPlayerToInvite(Builder *this,string *param_1)

{
  int iVar1;
  
  iVar1 = *(int *)this;
  if (*(int *)(iVar1 + 0x18) == *(int *)(iVar1 + 0x1c)) {
    std::vector<std::string,std::allocator<std::string>>::_M_emplace_back_aux<std::string_const&>
              ((vector<std::string,std::allocator<std::string>> *)(iVar1 + 0x14),param_1);
  }
  else {
    if (*(int *)(iVar1 + 0x18) != 0) {
      FUN_007c64e8();
    }
    *(int *)(iVar1 + 0x18) = *(int *)(iVar1 + 0x18) + 4;
  }
  return this;
}

// ---- gpg::RealTimeRoomConfig::Builder::AddAllPlayersToInvite  @ 0x523cf8
/* gpg::RealTimeRoomConfig::Builder::AddAllPlayersToInvite(std::vector<std::string,
   std::allocator<std::string > > const&) */

vector * gpg::RealTimeRoomConfig::Builder::AddAllPlayersToInvite(vector *param_1)

{
  undefined4 *in_r1;
  
  std::vector<std::string,std::allocator<std::string>>::
  _M_range_insert<__gnu_cxx::__normal_iterator<std::string_const*,std::vector<std::string,std::allocator<std::string>>>>
            (*(int *)param_1 + 0x14,*(undefined4 *)(*(int *)param_1 + 0x18),*in_r1,in_r1[1],
             (uint)param_1 & 0xffffff00);
  return param_1;
}

// ---- gpg::RealTimeRoomConfig::Builder::Create  @ 0x523df8
/* gpg::RealTimeRoomConfig::Builder::Create() const */

void gpg::RealTimeRoomConfig::Builder::Create(void)

{
  bool bVar1;
  RealTimeRoomConfig *in_r0;
  int *in_r1;
  int iVar2;
  int iVar3;
  int *piVar4;
  RealTimeRoomConfig *this;
  int local_38;
  int local_34;
  RealTimeRoomConfig aRStack_30 [8];
  int local_28;
  int local_24;
  RealTimeRoomConfig aRStack_20 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_1c [8];
  
  iVar3 = *in_r1;
  iVar2 = iVar3 + 8;
  if (*(int *)(iVar3 + 0xc) != 0) {
    iVar2 = iVar3 + 0xc;
  }
  FUN_00523d18(&local_38,0,aRStack_20,iVar3,iVar3 + 8,iVar2,iVar3 + 0x10,iVar3 + 0x14);
  if (*(uint *)(local_38 + 8) + (*(int *)(*in_r1 + 0x18) - *(int *)(*in_r1 + 0x14) >> 2) == 0) {
    FUN_005166ae(4,"Cannot create a RealTimeRoomConfig with no players.");
    this = aRStack_30;
    RealTimeRoomConfig(this);
    RealTimeRoomConfig(in_r0,this);
  }
  else {
    this = (RealTimeRoomConfig *)&local_28;
    if (*(uint *)(local_38 + 0xc) < *(uint *)(local_38 + 8)) {
      FUN_005166ae(4,
                   "Cannot create a RealTimeRoomConfig with MinimumAutomatchingPlayers greater than MaximumAutomatchingPlayers."
                  );
      RealTimeRoomConfig(this);
      RealTimeRoomConfig(in_r0,this);
    }
    else {
      local_28 = local_38;
      local_24 = local_34;
      if (local_34 != 0) {
        piVar4 = (int *)(local_34 + 4);
        DataMemoryBarrier(0x1f);
        do {
          ExclusiveAccess(piVar4);
          bVar1 = (bool)hasExclusiveAccess(piVar4);
        } while (!bVar1);
        *piVar4 = *piVar4 + 1;
        DataMemoryBarrier(0x1f);
      }
      RealTimeRoomConfig(aRStack_20,this);
      RealTimeRoomConfig(in_r0,aRStack_20);
      std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_1c);
    }
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(this + 4));
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_34);
  return;
}

// ---- gpg::Score::Score  @ 0x523ef0
/* gpg::Score::Score(std::shared_ptr<gpg::ScoreImpl const>) */

void __thiscall gpg::Score::Score(Score *this,undefined4 *param_2)

{
  bool bVar1;
  int iVar2;
  int *piVar3;
  
  *(undefined4 *)this = *param_2;
  iVar2 = param_2[1];
  *(int *)(this + 4) = iVar2;
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

// ---- gpg::Score::Score  @ 0x523f14
/* gpg::Score::Score(gpg::Score const&) */

void __thiscall gpg::Score::Score(Score *this,Score *param_1)

{
  bool bVar1;
  int iVar2;
  int *piVar3;
  
  *(undefined4 *)this = *(undefined4 *)param_1;
  iVar2 = *(int *)(param_1 + 4);
  *(int *)(this + 4) = iVar2;
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

// ---- gpg::Score::Score  @ 0x523f38
/* gpg::Score::Score(gpg::Score&&) */

void __thiscall gpg::Score::Score(Score *this,Score *param_1)

{
  undefined4 uVar1;
  
  *(undefined4 *)this = *(undefined4 *)param_1;
  *(undefined4 *)(this + 4) = 0;
  uVar1 = *(undefined4 *)(param_1 + 4);
  *(undefined4 *)(param_1 + 4) = 0;
  *(undefined4 *)(this + 4) = uVar1;
  *(undefined4 *)param_1 = 0;
  return;
}

// ---- gpg::Score::Valid  @ 0x523f4c
/* gpg::Score::Valid() const */

bool __thiscall gpg::Score::Valid(Score *this)

{
  return *(int *)this != 0;
}

// ---- gpg::Score::Rank  @ 0x523f58
/* gpg::Score::Rank() const */

undefined8 __thiscall gpg::Score::Rank(Score *this)

{
  int iVar1;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get rank of an invalid Score");
    return 0;
  }
  return **(undefined8 **)this;
}

// ---- gpg::Score::Value  @ 0x523f80
/* gpg::Score::Value() const */

undefined8 __thiscall gpg::Score::Value(Score *this)

{
  int iVar1;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get value of an invalid Score");
    return 0;
  }
  return *(undefined8 *)(*(int *)this + 8);
}

// ---- gpg::Score::FormattedScoreString  @ 0x523fa8
/* gpg::Score::FormattedScoreString() const */

undefined4 * __thiscall gpg::Score::FormattedScoreString(Score *this)

{
  int iVar1;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get formatted score string of an invalid Score");
    return &DAT_00960b7c;
  }
  return (undefined4 *)(*(int *)this + 0x14);
}

// ---- gpg::Score::FormattedRankString  @ 0x523fd4
/* gpg::Score::FormattedRankString() const */

undefined4 * __thiscall gpg::Score::FormattedRankString(Score *this)

{
  int iVar1;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get formatted rank string of an invalid Score");
    return &DAT_00960b7c;
  }
  return (undefined4 *)(*(int *)this + 0x18);
}

// ---- gpg::Score::Metadata  @ 0x524000
/* gpg::Score::Metadata() const */

undefined4 * __thiscall gpg::Score::Metadata(Score *this)

{
  int iVar1;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get metadata of an invalid Score");
    return &DAT_00960b7c;
  }
  return (undefined4 *)(*(int *)this + 0x10);
}

// ---- gpg::Score::~Score  @ 0x52402c
/* gpg::Score::~Score() */

Score * __thiscall gpg::Score::~Score(Score *this)

{
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(this + 4));
  return this;
}

// ---- gpg::Score::Score  @ 0x52403a
/* gpg::Score::Score() */

Score * __thiscall gpg::Score::Score(Score *this)

{
  undefined4 local_c;
  
  *(undefined4 *)this = 0;
  *(undefined4 *)(this + 4) = 0;
  local_c = 0;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_c);
  return this;
}

// ---- gpg::Score::operator=  @ 0x524054
/* gpg::Score::TEMPNAMEPLACEHOLDERVALUE(gpg::Score&&) */

Score * __thiscall gpg::Score::operator=(Score *this,Score *param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 local_c;
  
  uVar1 = *(undefined4 *)param_1;
  uVar2 = *(undefined4 *)(param_1 + 4);
  *(undefined4 *)(param_1 + 4) = 0;
  *(undefined4 *)param_1 = 0;
  *(undefined4 *)this = uVar1;
  local_c = *(undefined4 *)(this + 4);
  *(undefined4 *)(this + 4) = uVar2;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_c);
  return this;
}

// ---- gpg::Score::operator=  @ 0x52407a
/* gpg::Score::TEMPNAMEPLACEHOLDERVALUE(gpg::Score const&) */

Score * __thiscall gpg::Score::operator=(Score *this,Score *param_1)

{
  bool bVar1;
  int *piVar2;
  int iVar3;
  
  *(undefined4 *)this = *(undefined4 *)param_1;
  iVar3 = *(int *)(param_1 + 4);
  if (iVar3 != *(int *)(this + 4)) {
    if (iVar3 != 0) {
      piVar2 = (int *)(iVar3 + 4);
      DataMemoryBarrier(0x1f);
      do {
        ExclusiveAccess(piVar2);
        bVar1 = (bool)hasExclusiveAccess(piVar2);
      } while (!bVar1);
      *piVar2 = *piVar2 + 1;
      DataMemoryBarrier(0x1f);
    }
    if (*(int *)(this + 4) != 0) {
      FUN_0033ce90();
    }
    *(int *)(this + 4) = iVar3;
  }
  return this;
}

// ---- gpg::ScorePage::ScorePage  @ 0x5240b2
/* gpg::ScorePage::ScorePage(gpg::ScorePage const&) */

void __thiscall gpg::ScorePage::ScorePage(ScorePage *this,ScorePage *param_1)

{
  bool bVar1;
  int iVar2;
  int *piVar3;
  
  *(undefined4 *)this = *(undefined4 *)param_1;
  iVar2 = *(int *)(param_1 + 4);
  *(int *)(this + 4) = iVar2;
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

// ---- gpg::ScorePage::ScorePage  @ 0x5240d6
/* gpg::ScorePage::ScorePage(gpg::ScorePage&&) */

void __thiscall gpg::ScorePage::ScorePage(ScorePage *this,ScorePage *param_1)

{
  undefined4 uVar1;
  
  *(undefined4 *)this = *(undefined4 *)param_1;
  *(undefined4 *)(this + 4) = 0;
  uVar1 = *(undefined4 *)(param_1 + 4);
  *(undefined4 *)(param_1 + 4) = 0;
  *(undefined4 *)(this + 4) = uVar1;
  *(undefined4 *)param_1 = 0;
  return;
}

// ---- gpg::ScorePage::Valid  @ 0x5240ea
/* gpg::ScorePage::Valid() const */

bool __thiscall gpg::ScorePage::Valid(ScorePage *this)

{
  return *(int *)this != 0;
}

// ---- gpg::ScorePage::LeaderboardId  @ 0x5240f4
/* gpg::ScorePage::LeaderboardId() const */

undefined4 * __thiscall gpg::ScorePage::LeaderboardId(ScorePage *this)

{
  int iVar1;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get leaderboard id of an invalid ScorePage");
    return &DAT_00960b7c;
  }
  return *(undefined4 **)this;
}

// ---- gpg::ScorePage::Start  @ 0x52411c
/* gpg::ScorePage::Start() const */

undefined4 __thiscall gpg::ScorePage::Start(ScorePage *this)

{
  int iVar1;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get LeaderboardStart of an invalid ScorePage");
    return 1;
  }
  return *(undefined4 *)(*(int *)this + 4);
}

// ---- gpg::ScorePage::TimeSpan  @ 0x524140
/* gpg::ScorePage::TimeSpan() const */

undefined4 __thiscall gpg::ScorePage::TimeSpan(ScorePage *this)

{
  int iVar1;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get LeaderboardTimeSpan of an invalid ScorePage");
    return 1;
  }
  return *(undefined4 *)(*(int *)this + 8);
}

// ---- gpg::ScorePage::Collection  @ 0x524164
/* gpg::ScorePage::Collection() const */

undefined4 __thiscall gpg::ScorePage::Collection(ScorePage *this)

{
  int iVar1;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get LeaderboardCollection of an invalid ScorePage");
    return 1;
  }
  return *(undefined4 *)(*(int *)this + 0xc);
}

// ---- gpg::ScorePage::Entries  @ 0x524188
/* gpg::ScorePage::Entries() const */

undefined4 * __thiscall gpg::ScorePage::Entries(ScorePage *this)

{
  int iVar1;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get entries of an invalid ScorePage");
    return &DAT_00960b80;
  }
  return (undefined4 *)(*(int *)this + 0x20);
}

// ---- gpg::ScorePage::Entry::Entry  @ 0x5241b4
/* gpg::ScorePage::Entry::Entry(gpg::ScorePage::Entry&&) */

void __thiscall gpg::ScorePage::Entry::Entry(Entry *this,Entry *param_1)

{
  undefined4 uVar1;
  
  *(undefined4 *)this = *(undefined4 *)param_1;
  *(undefined4 *)(this + 4) = 0;
  uVar1 = *(undefined4 *)(param_1 + 4);
  *(undefined4 *)(param_1 + 4) = 0;
  *(undefined4 *)(this + 4) = uVar1;
  *(undefined4 *)param_1 = 0;
  return;
}

// ---- gpg::ScorePage::Entry::Valid  @ 0x5241c8
/* gpg::ScorePage::Entry::Valid() const */

bool __thiscall gpg::ScorePage::Entry::Valid(Entry *this)

{
  return *(int *)this != 0;
}

// ---- gpg::ScorePage::Entry::PlayerId  @ 0x5241d4
/* gpg::ScorePage::Entry::PlayerId() const */

undefined4 * __thiscall gpg::ScorePage::Entry::PlayerId(Entry *this)

{
  int iVar1;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get player id of an invalid ScorePage::Entry");
    return &DAT_00960b7c;
  }
  return *(undefined4 **)this;
}

// ---- gpg::ScorePage::Entry::Score  @ 0x5241fc
/* gpg::ScorePage::Entry::Score() const */

undefined * __thiscall gpg::ScorePage::Entry::Score(Entry *this)

{
  int iVar1;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get Score of an invalid ScorePage::Entry");
    return &DAT_00960bbc;
  }
  return (undefined *)(*(int *)this + 4);
}

// ---- gpg::ScorePage::Entry::LastModifiedTime  @ 0x524228
/* gpg::ScorePage::Entry::LastModifiedTime() const */

void gpg::ScorePage::Entry::LastModifiedTime(void)

{
  undefined4 *in_r0;
  int iVar1;
  Entry *in_r1;
  undefined4 uVar2;
  undefined4 uVar3;
  
  iVar1 = Valid(in_r1);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get last modified timestamp of an invalid ScorePage::Entry");
    uVar2 = 0;
    uVar3 = 0;
  }
  else {
    uVar2 = *(undefined4 *)(*(int *)in_r1 + 0x10);
    uVar3 = *(undefined4 *)(*(int *)in_r1 + 0x14);
  }
  *in_r0 = uVar2;
  in_r0[1] = uVar3;
  return;
}

// ---- gpg::ScorePage::ScorePageToken::ScorePageToken  @ 0x524264
/* gpg::ScorePage::ScorePageToken::ScorePageToken() */

void __thiscall gpg::ScorePage::ScorePageToken::ScorePageToken(ScorePageToken *this)

{
  *(undefined4 *)this = 0;
  *(undefined4 *)(this + 4) = 0;
  return;
}

// ---- gpg::ScorePage::ScorePageToken::ScorePageToken  @ 0x52426c
/* gpg::ScorePage::ScorePageToken::ScorePageToken(gpg::ScorePage::ScorePageToken&&) */

void __thiscall
gpg::ScorePage::ScorePageToken::ScorePageToken(ScorePageToken *this,ScorePageToken *param_1)

{
  undefined4 uVar1;
  
  *(undefined4 *)this = *(undefined4 *)param_1;
  *(undefined4 *)(this + 4) = 0;
  uVar1 = *(undefined4 *)(param_1 + 4);
  *(undefined4 *)(param_1 + 4) = 0;
  *(undefined4 *)(this + 4) = uVar1;
  *(undefined4 *)param_1 = 0;
  return;
}

// ---- gpg::ScorePage::ScorePageToken::Valid  @ 0x524280
/* gpg::ScorePage::ScorePageToken::Valid() const */

bool __thiscall gpg::ScorePage::ScorePageToken::Valid(ScorePageToken *this)

{
  return *(int *)this != 0;
}

// ---- gpg::ScorePage::HasPreviousScorePage  @ 0x52428c
/* gpg::ScorePage::HasPreviousScorePage() const */

undefined4 __thiscall gpg::ScorePage::HasPreviousScorePage(ScorePage *this)

{
  int iVar1;
  undefined4 uVar2;
  
  iVar1 = Valid(this);
  if (iVar1 != 0) {
    uVar2 = ScorePageToken::Valid((ScorePageToken *)(*(int *)this + 0x10));
    return uVar2;
  }
  FUN_005166ae(4,"Attempting to call HasPreviousScorePage on an invalid ScorePage");
  return 0;
}

// ---- gpg::ScorePage::HasNextScorePage  @ 0x5242b8
/* gpg::ScorePage::HasNextScorePage() const */

undefined4 __thiscall gpg::ScorePage::HasNextScorePage(ScorePage *this)

{
  int iVar1;
  undefined4 uVar2;
  
  iVar1 = Valid(this);
  if (iVar1 != 0) {
    uVar2 = ScorePageToken::Valid((ScorePageToken *)(*(int *)this + 0x18));
    return uVar2;
  }
  FUN_005166ae(4,"Attempting to call HasNextScorePage on an invalid ScorePage");
  return 0;
}

// ---- gpg::ScorePage::ScorePageToken::ScorePageToken  @ 0x5242e4
/* gpg::ScorePage::ScorePageToken::ScorePageToken(std::shared_ptr<gpg::ScorePageTokenImpl const>) */

ScorePageToken * __thiscall
gpg::ScorePage::ScorePageToken::ScorePageToken(ScorePageToken *this,undefined4 *param_2)

{
  *(undefined4 *)this = *param_2;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(this + 4),
             (__shared_count *)(param_2 + 1));
  return this;
}

// ---- gpg::ScorePage::ScorePageToken::ScorePageToken  @ 0x5242f8
/* gpg::ScorePage::ScorePageToken::ScorePageToken(gpg::ScorePage::ScorePageToken const&) */

ScorePageToken * __thiscall
gpg::ScorePage::ScorePageToken::ScorePageToken(ScorePageToken *this,ScorePageToken *param_1)

{
  *(undefined4 *)this = *(undefined4 *)param_1;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(this + 4),
             (__shared_count *)(param_1 + 4));
  return this;
}

// ---- gpg::ScorePage::Entry::Entry  @ 0x52430c
/* gpg::ScorePage::Entry::Entry(gpg::ScorePage::Entry const&) */

Entry * __thiscall gpg::ScorePage::Entry::Entry(Entry *this,Entry *param_1)

{
  *(undefined4 *)this = *(undefined4 *)param_1;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(this + 4),
             (__shared_count *)(param_1 + 4));
  return this;
}

// ---- gpg::ScorePage::Entry::Entry  @ 0x524320
/* gpg::ScorePage::Entry::Entry(std::shared_ptr<gpg::EntryImpl const>) */

Entry * __thiscall gpg::ScorePage::Entry::Entry(Entry *this,undefined4 *param_2)

{
  *(undefined4 *)this = *param_2;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(this + 4),
             (__shared_count *)(param_2 + 1));
  return this;
}

// ---- gpg::ScorePage::ScorePage  @ 0x524334
/* gpg::ScorePage::ScorePage(std::shared_ptr<gpg::ScorePageImpl const>) */

ScorePage * __thiscall gpg::ScorePage::ScorePage(ScorePage *this,undefined4 *param_2)

{
  *(undefined4 *)this = *param_2;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(this + 4),
             (__shared_count *)(param_2 + 1));
  return this;
}

// ---- gpg::ScorePage::~ScorePage  @ 0x524348
/* gpg::ScorePage::~ScorePage() */

ScorePage * __thiscall gpg::ScorePage::~ScorePage(ScorePage *this)

{
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(this + 4));
  return this;
}

// ---- gpg::ScorePage::Entry::~Entry  @ 0x524356
/* gpg::ScorePage::Entry::~Entry() */

Entry * __thiscall gpg::ScorePage::Entry::~Entry(Entry *this)

{
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(this + 4));
  return this;
}

// ---- gpg::ScorePage::ScorePageToken::~ScorePageToken  @ 0x524364
/* gpg::ScorePage::ScorePageToken::~ScorePageToken() */

ScorePageToken * __thiscall gpg::ScorePage::ScorePageToken::~ScorePageToken(ScorePageToken *this)

{
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(this + 4));
  return this;
}

// ---- gpg::ScorePage::PreviousScorePageToken  @ 0x524374
/* gpg::ScorePage::PreviousScorePageToken() const */

void gpg::ScorePage::PreviousScorePageToken(void)

{
  ScorePageToken *in_r0;
  int iVar1;
  ScorePage *in_r1;
  ScorePageToken aSStack_18 [12];
  
  iVar1 = Valid(in_r1);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get previous score page token of an invalid ScorePage");
    ScorePageToken::ScorePageToken(aSStack_18);
    ScorePageToken::ScorePageToken(in_r0,aSStack_18);
    ScorePageToken::~ScorePageToken(aSStack_18);
  }
  else {
    ScorePageToken::ScorePageToken(in_r0,(ScorePageToken *)(*(int *)in_r1 + 0x10));
  }
  return;
}

// ---- gpg::ScorePage::NextScorePageToken  @ 0x5243c4
/* gpg::ScorePage::NextScorePageToken() const */

void gpg::ScorePage::NextScorePageToken(void)

{
  ScorePageToken *in_r0;
  int iVar1;
  ScorePage *in_r1;
  ScorePageToken aSStack_18 [12];
  
  iVar1 = Valid(in_r1);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get next score page token of an invalid ScorePage");
    ScorePageToken::ScorePageToken(aSStack_18);
    ScorePageToken::ScorePageToken(in_r0,aSStack_18);
    ScorePageToken::~ScorePageToken(aSStack_18);
  }
  else {
    ScorePageToken::ScorePageToken(in_r0,(ScorePageToken *)(*(int *)in_r1 + 0x18));
  }
  return;
}

// ---- gpg::ScorePage::ScorePage  @ 0x524414
/* gpg::ScorePage::ScorePage() */

ScorePage * __thiscall gpg::ScorePage::ScorePage(ScorePage *this)

{
  undefined4 local_c;
  
  *(undefined4 *)this = 0;
  *(undefined4 *)(this + 4) = 0;
  local_c = 0;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_c);
  return this;
}

// ---- gpg::ScorePage::Entry::Entry  @ 0x52442e
/* gpg::ScorePage::Entry::Entry() */

Entry * __thiscall gpg::ScorePage::Entry::Entry(Entry *this)

{
  undefined4 local_c;
  
  *(undefined4 *)this = 0;
  *(undefined4 *)(this + 4) = 0;
  local_c = 0;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_c);
  return this;
}

// ---- gpg::ScorePage::operator=  @ 0x524448
/* gpg::ScorePage::TEMPNAMEPLACEHOLDERVALUE(gpg::ScorePage&&) */

ScorePage * __thiscall gpg::ScorePage::operator=(ScorePage *this,ScorePage *param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 local_c;
  
  uVar1 = *(undefined4 *)param_1;
  uVar2 = *(undefined4 *)(param_1 + 4);
  *(undefined4 *)(param_1 + 4) = 0;
  *(undefined4 *)param_1 = 0;
  *(undefined4 *)this = uVar1;
  local_c = *(undefined4 *)(this + 4);
  *(undefined4 *)(this + 4) = uVar2;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_c);
  return this;
}

// ---- gpg::ScorePage::Entry::operator=  @ 0x52446e
/* gpg::ScorePage::Entry::TEMPNAMEPLACEHOLDERVALUE(gpg::ScorePage::Entry&&) */

Entry * __thiscall gpg::ScorePage::Entry::operator=(Entry *this,Entry *param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 local_c;
  
  uVar1 = *(undefined4 *)param_1;
  uVar2 = *(undefined4 *)(param_1 + 4);
  *(undefined4 *)(param_1 + 4) = 0;
  *(undefined4 *)param_1 = 0;
  *(undefined4 *)this = uVar1;
  local_c = *(undefined4 *)(this + 4);
  *(undefined4 *)(this + 4) = uVar2;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_c);
  return this;
}

// ---- gpg::ScorePage::ScorePageToken::operator=  @ 0x524494
/* gpg::ScorePage::ScorePageToken::TEMPNAMEPLACEHOLDERVALUE(gpg::ScorePage::ScorePageToken&&) */

ScorePageToken * __thiscall
gpg::ScorePage::ScorePageToken::operator=(ScorePageToken *this,ScorePageToken *param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 local_c;
  
  uVar1 = *(undefined4 *)param_1;
  uVar2 = *(undefined4 *)(param_1 + 4);
  *(undefined4 *)(param_1 + 4) = 0;
  *(undefined4 *)param_1 = 0;
  *(undefined4 *)this = uVar1;
  local_c = *(undefined4 *)(this + 4);
  *(undefined4 *)(this + 4) = uVar2;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_c);
  return this;
}

// ---- gpg::ScorePage::operator=  @ 0x5244ba
/* gpg::ScorePage::TEMPNAMEPLACEHOLDERVALUE(gpg::ScorePage const&) */

ScorePage * __thiscall gpg::ScorePage::operator=(ScorePage *this,ScorePage *param_1)

{
  *(undefined4 *)this = *(undefined4 *)param_1;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::operator=
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(this + 4),
             (__shared_count *)(param_1 + 4));
  return this;
}

// ---- gpg::ScorePage::Entry::operator=  @ 0x5244ce
/* gpg::ScorePage::Entry::TEMPNAMEPLACEHOLDERVALUE(gpg::ScorePage::Entry const&) */

Entry * __thiscall gpg::ScorePage::Entry::operator=(Entry *this,Entry *param_1)

{
  *(undefined4 *)this = *(undefined4 *)param_1;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::operator=
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(this + 4),
             (__shared_count *)(param_1 + 4));
  return this;
}

// ---- gpg::ScorePage::ScorePageToken::operator=  @ 0x5244e2
/* gpg::ScorePage::ScorePageToken::TEMPNAMEPLACEHOLDERVALUE(gpg::ScorePage::ScorePageToken const&)
    */

ScorePageToken * __thiscall
gpg::ScorePage::ScorePageToken::operator=(ScorePageToken *this,ScorePageToken *param_1)

{
  *(undefined4 *)this = *(undefined4 *)param_1;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::operator=
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(this + 4),
             (__shared_count *)(param_1 + 4));
  return this;
}

// ---- gpg::ScoreSummary::ScoreSummary  @ 0x5244f6
/* gpg::ScoreSummary::ScoreSummary(std::shared_ptr<gpg::ScoreSummaryImpl const>) */

void __thiscall gpg::ScoreSummary::ScoreSummary(ScoreSummary *this,undefined4 *param_2)

{
  bool bVar1;
  int iVar2;
  int *piVar3;
  
  *(undefined4 *)this = *param_2;
  iVar2 = param_2[1];
  *(int *)(this + 4) = iVar2;
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

// ---- gpg::ScoreSummary::ScoreSummary  @ 0x52451a
/* gpg::ScoreSummary::ScoreSummary(gpg::ScoreSummary const&) */

void __thiscall gpg::ScoreSummary::ScoreSummary(ScoreSummary *this,ScoreSummary *param_1)

{
  bool bVar1;
  int iVar2;
  int *piVar3;
  
  *(undefined4 *)this = *(undefined4 *)param_1;
  iVar2 = *(int *)(param_1 + 4);
  *(int *)(this + 4) = iVar2;
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

// ---- gpg::ScoreSummary::ScoreSummary  @ 0x52453e
/* gpg::ScoreSummary::ScoreSummary(gpg::ScoreSummary&&) */

void __thiscall gpg::ScoreSummary::ScoreSummary(ScoreSummary *this,ScoreSummary *param_1)

{
  undefined4 uVar1;
  
  *(undefined4 *)this = *(undefined4 *)param_1;
  *(undefined4 *)(this + 4) = 0;
  uVar1 = *(undefined4 *)(param_1 + 4);
  *(undefined4 *)(param_1 + 4) = 0;
  *(undefined4 *)(this + 4) = uVar1;
  *(undefined4 *)param_1 = 0;
  return;
}

// ---- gpg::ScoreSummary::Valid  @ 0x524552
/* gpg::ScoreSummary::Valid() const */

bool __thiscall gpg::ScoreSummary::Valid(ScoreSummary *this)

{
  return *(int *)this != 0;
}

// ---- gpg::ScoreSummary::LeaderboardId  @ 0x52455c
/* gpg::ScoreSummary::LeaderboardId() const */

undefined4 * __thiscall gpg::ScoreSummary::LeaderboardId(ScoreSummary *this)

{
  int iVar1;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get leaderboard id of an invalid ScoreSummary");
    return &DAT_00960b7c;
  }
  return *(undefined4 **)this;
}

// ---- gpg::ScoreSummary::TimeSpan  @ 0x524584
/* gpg::ScoreSummary::TimeSpan() const */

undefined4 __thiscall gpg::ScoreSummary::TimeSpan(ScoreSummary *this)

{
  int iVar1;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get LeaderboardTimeSpan of an invalid ScoreSummary");
    return 1;
  }
  return *(undefined4 *)(*(int *)this + 4);
}

// ---- gpg::ScoreSummary::Collection  @ 0x5245a8
/* gpg::ScoreSummary::Collection() const */

undefined4 __thiscall gpg::ScoreSummary::Collection(ScoreSummary *this)

{
  int iVar1;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get LeaderboardCollection of an invalid ScoreSummary");
    return 1;
  }
  return *(undefined4 *)(*(int *)this + 8);
}

// ---- gpg::ScoreSummary::ApproximateNumberOfScores  @ 0x5245cc
/* gpg::ScoreSummary::ApproximateNumberOfScores() const */

undefined8 __thiscall gpg::ScoreSummary::ApproximateNumberOfScores(ScoreSummary *this)

{
  int iVar1;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get number of scores of an invalid ScoreSummary");
    return 0;
  }
  return *(undefined8 *)(*(int *)this + 0x10);
}

// ---- gpg::ScoreSummary::CurrentPlayerScore  @ 0x5245f4
/* gpg::ScoreSummary::CurrentPlayerScore() const */

undefined * __thiscall gpg::ScoreSummary::CurrentPlayerScore(ScoreSummary *this)

{
  int iVar1;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get current player score of an invalid ScoreSummary");
    return &DAT_00960bbc;
  }
  return (undefined *)(*(int *)this + 0x18);
}

// ---- gpg::ScoreSummary::HasRankForCurrentPlayer  @ 0x524620
/* gpg::ScoreSummary::HasRankForCurrentPlayer() const */

undefined1 __thiscall gpg::ScoreSummary::HasRankForCurrentPlayer(ScoreSummary *this)

{
  int iVar1;
  undefined1 uVar2;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,
                 "Attempting to determine if rank exists for current player on an invalid ScoreSummary"
                );
    uVar2 = 0;
  }
  else {
    uVar2 = *(undefined1 *)(*(int *)this + 0x20);
  }
  return uVar2;
}

// ---- gpg::ScoreSummary::~ScoreSummary  @ 0x524648
/* gpg::ScoreSummary::~ScoreSummary() */

ScoreSummary * __thiscall gpg::ScoreSummary::~ScoreSummary(ScoreSummary *this)

{
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(this + 4));
  return this;
}

// ---- gpg::ScoreSummary::ScoreSummary  @ 0x524656
/* gpg::ScoreSummary::ScoreSummary() */

ScoreSummary * __thiscall gpg::ScoreSummary::ScoreSummary(ScoreSummary *this)

{
  undefined4 local_c;
  
  *(undefined4 *)this = 0;
  *(undefined4 *)(this + 4) = 0;
  local_c = 0;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_c);
  return this;
}

// ---- gpg::ScoreSummary::operator=  @ 0x524670
/* gpg::ScoreSummary::TEMPNAMEPLACEHOLDERVALUE(gpg::ScoreSummary&&) */

ScoreSummary * __thiscall gpg::ScoreSummary::operator=(ScoreSummary *this,ScoreSummary *param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 local_c;
  
  uVar1 = *(undefined4 *)param_1;
  uVar2 = *(undefined4 *)(param_1 + 4);
  *(undefined4 *)(param_1 + 4) = 0;
  *(undefined4 *)param_1 = 0;
  *(undefined4 *)this = uVar1;
  local_c = *(undefined4 *)(this + 4);
  *(undefined4 *)(this + 4) = uVar2;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_c);
  return this;
}

// ---- gpg::ScoreSummary::operator=  @ 0x524696
/* gpg::ScoreSummary::TEMPNAMEPLACEHOLDERVALUE(gpg::ScoreSummary const&) */

ScoreSummary * __thiscall gpg::ScoreSummary::operator=(ScoreSummary *this,ScoreSummary *param_1)

{
  bool bVar1;
  int *piVar2;
  int iVar3;
  
  *(undefined4 *)this = *(undefined4 *)param_1;
  iVar3 = *(int *)(param_1 + 4);
  if (iVar3 != *(int *)(this + 4)) {
    if (iVar3 != 0) {
      piVar2 = (int *)(iVar3 + 4);
      DataMemoryBarrier(0x1f);
      do {
        ExclusiveAccess(piVar2);
        bVar1 = (bool)hasExclusiveAccess(piVar2);
      } while (!bVar1);
      *piVar2 = *piVar2 + 1;
      DataMemoryBarrier(0x1f);
    }
    if (*(int *)(this + 4) != 0) {
      FUN_0033ce90();
    }
    *(int *)(this + 4) = iVar3;
  }
  return this;
}

// ---- gpg::SnapshotManager::OpenResponse::~OpenResponse  @ 0x5253d6
/* gpg::SnapshotManager::OpenResponse::~OpenResponse() */

OpenResponse * __thiscall gpg::SnapshotManager::OpenResponse::~OpenResponse(OpenResponse *this)

{
  SnapshotMetadata::~SnapshotMetadata((SnapshotMetadata *)(this + 0x18));
  SnapshotMetadata::~SnapshotMetadata((SnapshotMetadata *)(this + 0x10));
  FUN_007c5914(this + 0xc);
  SnapshotMetadata::~SnapshotMetadata((SnapshotMetadata *)(this + 4));
  return this;
}

// ---- gpg::SnapshotManager::OpenResponse::OpenResponse  @ 0x525418
/* gpg::SnapshotManager::OpenResponse::OpenResponse(gpg::SnapshotManager::OpenResponse&&) */

OpenResponse * __thiscall
gpg::SnapshotManager::OpenResponse::OpenResponse(OpenResponse *this,OpenResponse *param_1)

{
  *(undefined4 *)this = *(undefined4 *)param_1;
  SnapshotMetadata::SnapshotMetadata
            ((SnapshotMetadata *)(this + 4),(SnapshotMetadata *)(param_1 + 4));
  *(undefined4 *)(this + 0xc) = *(undefined4 *)(param_1 + 0xc);
  *(undefined1 **)(param_1 + 0xc) = &DAT_00972528;
  SnapshotMetadata::SnapshotMetadata
            ((SnapshotMetadata *)(this + 0x10),(SnapshotMetadata *)(param_1 + 0x10));
  SnapshotMetadata::SnapshotMetadata
            ((SnapshotMetadata *)(this + 0x18),(SnapshotMetadata *)(param_1 + 0x18));
  return this;
}

// ---- gpg::SnapshotManager::ReadResponse::ReadResponse  @ 0x525478
/* gpg::SnapshotManager::ReadResponse::ReadResponse(gpg::SnapshotManager::ReadResponse&&) */

void __thiscall
gpg::SnapshotManager::ReadResponse::ReadResponse(ReadResponse *this,ReadResponse *param_1)

{
  undefined4 uVar1;
  
  *(undefined4 *)this = *(undefined4 *)param_1;
  *(undefined4 *)(this + 8) = 0;
  *(undefined4 *)(this + 0xc) = 0;
  *(undefined4 *)(this + 4) = 0;
  *(undefined4 *)(this + 4) = *(undefined4 *)(param_1 + 4);
  *(undefined4 *)(param_1 + 4) = 0;
  uVar1 = *(undefined4 *)(this + 8);
  *(undefined4 *)(this + 8) = *(undefined4 *)(param_1 + 8);
  *(undefined4 *)(param_1 + 8) = uVar1;
  uVar1 = *(undefined4 *)(this + 0xc);
  *(undefined4 *)(this + 0xc) = *(undefined4 *)(param_1 + 0xc);
  *(undefined4 *)(param_1 + 0xc) = uVar1;
  return;
}

// ---- gpg::SnapshotManager::OpenResponse::OpenResponse  @ 0x525618
/* gpg::SnapshotManager::OpenResponse::OpenResponse() */

OpenResponse * __thiscall gpg::SnapshotManager::OpenResponse::OpenResponse(OpenResponse *this)

{
  SnapshotMetadata::SnapshotMetadata((SnapshotMetadata *)(this + 4));
  *(undefined1 **)(this + 0xc) = &DAT_00972528;
  SnapshotMetadata::SnapshotMetadata((SnapshotMetadata *)(this + 0x10));
  SnapshotMetadata::SnapshotMetadata((SnapshotMetadata *)(this + 0x18));
  return this;
}

// ---- gpg::SnapshotManager::OpenResponse::OpenResponse  @ 0x5259c4
/* gpg::SnapshotManager::OpenResponse::OpenResponse(gpg::SnapshotManager::OpenResponse const&) */

OpenResponse * __thiscall
gpg::SnapshotManager::OpenResponse::OpenResponse(OpenResponse *this,OpenResponse *param_1)

{
  *(undefined4 *)this = *(undefined4 *)param_1;
  SnapshotMetadata::SnapshotMetadata
            ((SnapshotMetadata *)(this + 4),(SnapshotMetadata *)(param_1 + 4));
  FUN_007c64e8(this + 0xc,param_1 + 0xc);
  SnapshotMetadata::SnapshotMetadata
            ((SnapshotMetadata *)(this + 0x10),(SnapshotMetadata *)(param_1 + 0x10));
  SnapshotMetadata::SnapshotMetadata
            ((SnapshotMetadata *)(this + 0x18),(SnapshotMetadata *)(param_1 + 0x18));
  return this;
}

// ---- gpg::SnapshotManager::SnapshotManager  @ 0x5267aa
/* gpg::SnapshotManager::SnapshotManager(gpg::GameServicesImpl*) */

void __thiscall
gpg::SnapshotManager::SnapshotManager(SnapshotManager *this,GameServicesImpl *param_1)

{
  *(GameServicesImpl **)this = param_1;
  return;
}

// ---- gpg::SnapshotManager::~SnapshotManager  @ 0x5267ae
/* gpg::SnapshotManager::~SnapshotManager() */

SnapshotManager * __thiscall gpg::SnapshotManager::~SnapshotManager(SnapshotManager *this)

{
  return this;
}

// ---- gpg::SnapshotManager::FetchAllResponse::FetchAllResponse  @ 0x5267c4
/* gpg::SnapshotManager::FetchAllResponse::FetchAllResponse(gpg::SnapshotManager::FetchAllResponse&&)
    */

void __thiscall
gpg::SnapshotManager::FetchAllResponse::FetchAllResponse
          (FetchAllResponse *this,FetchAllResponse *param_1)

{
  undefined4 uVar1;
  
  *(undefined4 *)this = *(undefined4 *)param_1;
  *(undefined4 *)(this + 8) = 0;
  *(undefined4 *)(this + 0xc) = 0;
  *(undefined4 *)(this + 4) = 0;
  *(undefined4 *)(this + 4) = *(undefined4 *)(param_1 + 4);
  *(undefined4 *)(param_1 + 4) = 0;
  uVar1 = *(undefined4 *)(this + 8);
  *(undefined4 *)(this + 8) = *(undefined4 *)(param_1 + 8);
  *(undefined4 *)(param_1 + 8) = uVar1;
  uVar1 = *(undefined4 *)(this + 0xc);
  *(undefined4 *)(this + 0xc) = *(undefined4 *)(param_1 + 0xc);
  *(undefined4 *)(param_1 + 0xc) = uVar1;
  return;
}

// ---- gpg::SnapshotManager::CommitResponse::CommitResponse  @ 0x5267fe
/* gpg::SnapshotManager::CommitResponse::CommitResponse(gpg::SnapshotManager::CommitResponse&&) */

CommitResponse * __thiscall
gpg::SnapshotManager::CommitResponse::CommitResponse(CommitResponse *this,CommitResponse *param_1)

{
  *(undefined4 *)this = *(undefined4 *)param_1;
  SnapshotMetadata::SnapshotMetadata
            ((SnapshotMetadata *)(this + 4),(SnapshotMetadata *)(param_1 + 4));
  return this;
}

// ---- gpg::SnapshotManager::Delete  @ 0x526814
/* gpg::SnapshotManager::Delete(gpg::SnapshotMetadata const&) */

void __thiscall gpg::SnapshotManager::Delete(SnapshotManager *this,SnapshotMetadata *param_1)

{
  int iVar1;
  undefined1 auStack_3c [4];
  undefined1 auStack_38 [36];
  
  FUN_00510a86(auStack_38,*(undefined4 *)this);
  FUN_0051683e(auStack_3c,auStack_38);
  FUN_0050811a(auStack_38);
  iVar1 = SnapshotMetadata::Valid(param_1);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Trying to delete an invalid snapshot: skipping.");
  }
  else {
    (**(code **)(**(int **)this + 0x8c))(*(int **)this,param_1);
  }
  FUN_00516580(auStack_3c);
  return;
}

// ---- gpg::SnapshotManager::SnapshotSelectUIResponse::SnapshotSelectUIResponse  @ 0x5268a0
/* gpg::SnapshotManager::SnapshotSelectUIResponse::SnapshotSelectUIResponse(gpg::SnapshotManager::SnapshotSelectUIResponse&&)
    */

SnapshotSelectUIResponse * __thiscall
gpg::SnapshotManager::SnapshotSelectUIResponse::SnapshotSelectUIResponse
          (SnapshotSelectUIResponse *this,SnapshotSelectUIResponse *param_1)

{
  *(undefined4 *)this = *(undefined4 *)param_1;
  SnapshotMetadata::SnapshotMetadata
            ((SnapshotMetadata *)(this + 4),(SnapshotMetadata *)(param_1 + 4));
  return this;
}

// ---- gpg::SnapshotManager::ResolveConflict  @ 0x526ef8
/* gpg::SnapshotManager::ResolveConflict(gpg::SnapshotMetadata const&, gpg::SnapshotMetadataChange
   const&, std::string const&, std::function<void (gpg::SnapshotManager::CommitResponse const&)>) */

void __thiscall
gpg::SnapshotManager::ResolveConflict
          (SnapshotManager *this,undefined4 param_1,undefined4 param_2,undefined4 param_3,
          function *param_5)

{
  undefined4 uVar1;
  int iVar2;
  undefined4 *puVar3;
  int *piVar4;
  code *pcVar5;
  undefined1 auStack_94 [4];
  undefined4 local_90;
  SnapshotMetadata aSStack_8c [8];
  undefined4 local_84;
  SnapshotMetadata aSStack_80 [8];
  function<void(gpg::SnapshotManager::CommitResponse_const&)> afStack_78 [16];
  undefined1 auStack_68 [32];
  undefined1 auStack_48 [36];
  
  FUN_00510a86(auStack_48,*(undefined4 *)this);
  FUN_0051683e(auStack_94,auStack_48);
  FUN_0050811a(auStack_48);
  uVar1 = FUN_0051075c(*(undefined4 *)this);
  std::function<void(gpg::SnapshotManager::CommitResponse_const&)>::function(afStack_78,param_5);
  FUN_00526d90(auStack_68,uVar1,afStack_78);
  std::_Function_base::~_Function_base((_Function_base *)afStack_78);
  iVar2 = FUN_00526940(param_1);
  if (iVar2 == 0) {
    FUN_005166ae(4,"Trying to resolve a non-open snapshot.");
    puVar3 = &local_90;
    local_90 = 0xfffffffe;
    SnapshotMetadata::SnapshotMetadata(aSStack_8c);
    FUN_00526e34(auStack_68,puVar3);
  }
  else {
    piVar4 = *(int **)this;
    pcVar5 = *(code **)(*piVar4 + 0x84);
    FUN_00526a4e(auStack_48,auStack_68);
    iVar2 = (*pcVar5)(piVar4,param_1,param_2,param_3,auStack_48);
    FUN_005267ea(auStack_48);
    if (iVar2 != 0) goto LAB_00526fba;
    puVar3 = &local_84;
    local_84 = 0xfffffffd;
    SnapshotMetadata::SnapshotMetadata(aSStack_80);
    FUN_00526e34(auStack_68,puVar3);
  }
  SnapshotMetadata::~SnapshotMetadata((SnapshotMetadata *)(puVar3 + 1));
LAB_00526fba:
  FUN_005267ea(auStack_68);
  FUN_00516580(auStack_94);
  return;
}

// ---- gpg::SnapshotManager::Commit  @ 0x527004
/* gpg::SnapshotManager::Commit(gpg::SnapshotMetadata const&, gpg::SnapshotMetadataChange const&,
   std::vector<unsigned char, std::allocator<unsigned char> >, std::function<void
   (gpg::SnapshotManager::CommitResponse const&)>) */

void __thiscall
gpg::SnapshotManager::Commit
          (SnapshotManager *this,SnapshotMetadata *param_1,undefined4 param_2,_Vector_base *param_4,
          function *param_5)

{
  undefined4 uVar1;
  int iVar2;
  undefined4 *puVar3;
  int *piVar4;
  code *pcVar5;
  undefined1 auStack_a0 [4];
  undefined4 local_9c;
  SnapshotMetadata aSStack_98 [8];
  undefined4 local_90;
  SnapshotMetadata aSStack_8c [8];
  undefined4 local_84;
  SnapshotMetadata aSStack_80 [8];
  function<void(gpg::SnapshotManager::CommitResponse_const&)> afStack_78 [16];
  undefined1 auStack_68 [32];
  undefined1 auStack_48 [36];
  
  FUN_00510a86(auStack_48,*(undefined4 *)this);
  FUN_0051683e(auStack_a0,auStack_48);
  FUN_0050811a(auStack_48);
  uVar1 = FUN_0051075c(*(undefined4 *)this);
  std::function<void(gpg::SnapshotManager::CommitResponse_const&)>::function(afStack_78,param_5);
  FUN_00526d90(auStack_68,uVar1,afStack_78);
  std::_Function_base::~_Function_base((_Function_base *)afStack_78);
  iVar2 = SnapshotMetadata::Valid(param_1);
  if (iVar2 == 0) {
    FUN_005166ae(4,"Trying to commit an invalid snapshot: skipping.");
    puVar3 = &local_9c;
    local_9c = 0xfffffffe;
    SnapshotMetadata::SnapshotMetadata(aSStack_98);
    FUN_00526e34(auStack_68,puVar3);
  }
  else {
    iVar2 = FUN_00526940(param_1);
    if (iVar2 == 0) {
      FUN_005166ae(4,"Trying to commit a non-open snapshot: skipping.");
      puVar3 = &local_90;
      local_90 = 0xfffffffe;
      SnapshotMetadata::SnapshotMetadata(aSStack_8c);
      FUN_00526e34(auStack_68,puVar3);
    }
    else {
      piVar4 = *(int **)this;
      pcVar5 = *(code **)(*piVar4 + 0x80);
      std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::_Vector_base
                ((_Vector_base<unsigned_char,std::allocator<unsigned_char>> *)afStack_78,param_4);
      FUN_00526a4e(auStack_48,auStack_68);
      iVar2 = (*pcVar5)(piVar4,param_1,param_2,afStack_78,auStack_48);
      FUN_005267ea(auStack_48);
      std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::~_Vector_base
                ((_Vector_base<unsigned_char,std::allocator<unsigned_char>> *)afStack_78);
      if (iVar2 != 0) goto LAB_00527106;
      puVar3 = &local_84;
      local_84 = 0xfffffffd;
      SnapshotMetadata::SnapshotMetadata(aSStack_80);
      FUN_00526e34(auStack_68,puVar3);
    }
  }
  SnapshotMetadata::~SnapshotMetadata((SnapshotMetadata *)(puVar3 + 1));
LAB_00527106:
  FUN_005267ea(auStack_68);
  FUN_00516580(auStack_a0);
  return;
}

// ---- gpg::SnapshotManager::ResolveConflict  @ 0x527160
/* gpg::SnapshotManager::ResolveConflict(gpg::SnapshotMetadata const&, gpg::SnapshotMetadataChange
   const&, std::string const&, std::vector<unsigned char, std::allocator<unsigned char> >,
   std::function<void (gpg::SnapshotManager::CommitResponse const&)>) */

void __thiscall
gpg::SnapshotManager::ResolveConflict
          (SnapshotManager *this,SnapshotMetadata *param_1,undefined4 param_2,undefined4 param_3,
          _Vector_base *param_5,function *param_6)

{
  undefined4 uVar1;
  int iVar2;
  undefined4 *puVar3;
  int *piVar4;
  code *pcVar5;
  undefined1 auStack_a0 [4];
  undefined4 local_9c;
  SnapshotMetadata aSStack_98 [8];
  undefined4 local_90;
  SnapshotMetadata aSStack_8c [8];
  undefined4 local_84;
  SnapshotMetadata aSStack_80 [8];
  function<void(gpg::SnapshotManager::CommitResponse_const&)> afStack_78 [16];
  undefined1 auStack_68 [32];
  undefined1 auStack_48 [36];
  
  FUN_00510a86(auStack_48,*(undefined4 *)this);
  FUN_0051683e(auStack_a0,auStack_48);
  FUN_0050811a(auStack_48);
  uVar1 = FUN_0051075c(*(undefined4 *)this);
  std::function<void(gpg::SnapshotManager::CommitResponse_const&)>::function(afStack_78,param_6);
  FUN_00526d90(auStack_68,uVar1,afStack_78);
  std::_Function_base::~_Function_base((_Function_base *)afStack_78);
  iVar2 = SnapshotMetadata::Valid(param_1);
  if (iVar2 == 0) {
    FUN_005166ae(4,"Trying to resolve an invalid snapshot: skipping.");
    puVar3 = &local_9c;
    local_9c = 0xfffffffe;
    SnapshotMetadata::SnapshotMetadata(aSStack_98);
    FUN_00526e34(auStack_68,puVar3);
  }
  else {
    iVar2 = FUN_00526940(param_1);
    if (iVar2 == 0) {
      FUN_005166ae(4,"Trying to resolve a non-open snapshot: skipping.");
      puVar3 = &local_90;
      local_90 = 0xfffffffe;
      SnapshotMetadata::SnapshotMetadata(aSStack_8c);
      FUN_00526e34(auStack_68,puVar3);
    }
    else {
      piVar4 = *(int **)this;
      pcVar5 = *(code **)(*piVar4 + 0x88);
      std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::_Vector_base
                ((_Vector_base<unsigned_char,std::allocator<unsigned_char>> *)afStack_78,param_5);
      FUN_00526a4e(auStack_48,auStack_68);
      iVar2 = (*pcVar5)(piVar4,param_1,param_2,param_3,afStack_78,auStack_48);
      FUN_005267ea(auStack_48);
      std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::~_Vector_base
                ((_Vector_base<unsigned_char,std::allocator<unsigned_char>> *)afStack_78);
      if (iVar2 != 0) goto LAB_00527264;
      puVar3 = &local_84;
      local_84 = 0xfffffffd;
      SnapshotMetadata::SnapshotMetadata(aSStack_80);
      FUN_00526e34(auStack_68,puVar3);
    }
  }
  SnapshotMetadata::~SnapshotMetadata((SnapshotMetadata *)(puVar3 + 1));
LAB_00527264:
  FUN_005267ea(auStack_68);
  FUN_00516580(auStack_a0);
  return;
}

// ---- gpg::SnapshotManager::ShowSelectUIOperation  @ 0x5273b4
/* gpg::SnapshotManager::ShowSelectUIOperation(bool, bool, unsigned int, std::string const&,
   std::function<void (gpg::SnapshotManager::SnapshotSelectUIResponse const&)>) */

void __thiscall
gpg::SnapshotManager::ShowSelectUIOperation
          (SnapshotManager *this,undefined4 param_2,undefined4 param_3_00,undefined4 param_3,
          undefined4 param_4,function *param_6)

{
  undefined4 uVar1;
  function *pfVar2;
  int iVar3;
  int *piVar4;
  code *pcVar5;
  undefined1 auStack_b8 [4];
  undefined4 local_b4;
  SnapshotMetadata aSStack_b0 [8];
  function<void(gpg::SnapshotManager::SnapshotSelectUIResponse_const&)> afStack_a8 [8];
  int local_a0;
  undefined4 local_9c;
  _Function_base a_Stack_98 [8];
  int local_90;
  undefined4 local_8c;
  function<void(std::function<void()>)> afStack_88 [16];
  function<void(gpg::SnapshotManager::SnapshotSelectUIResponse_const&)> afStack_78 [16];
  function<void(std::function<void()>)> afStack_68 [16];
  function<void(gpg::SnapshotManager::SnapshotSelectUIResponse_const&)> afStack_58 [16];
  function<void(std::function<void()>)> afStack_48 [8];
  int local_40;
  function<void(gpg::SnapshotManager::SnapshotSelectUIResponse_const&)> afStack_38 [20];
  
  FUN_00510a86(afStack_48,*(undefined4 *)this);
  FUN_0051683e(auStack_b8,afStack_48);
  FUN_0050811a(afStack_48);
  pfVar2 = (function *)FUN_0051075c(*(undefined4 *)this);
  std::function<void(gpg::SnapshotManager::SnapshotSelectUIResponse_const&)>::function
            (afStack_a8,param_6);
  if (local_a0 == 0) {
    local_90 = local_a0;
    local_40 = local_a0;
  }
  else {
    local_90 = 0;
    std::swap<std::_Any_data>((_Any_data *)afStack_a8,(_Any_data *)a_Stack_98);
    uVar1 = local_8c;
    iVar3 = local_90;
    local_90 = local_a0;
    local_a0 = iVar3;
    local_8c = local_9c;
    local_9c = uVar1;
    std::function<void(std::function<void()>)>::function(afStack_48,pfVar2);
  }
  std::function<void(gpg::SnapshotManager::SnapshotSelectUIResponse_const&)>::function
            (afStack_38,(function *)a_Stack_98);
  std::function<void(std::function<void()>)>::function(afStack_88,(function *)afStack_48);
  std::function<void(gpg::SnapshotManager::SnapshotSelectUIResponse_const&)>::function
            (afStack_78,(function *)afStack_38);
  FUN_0052688c(afStack_48);
  std::_Function_base::~_Function_base(a_Stack_98);
  std::_Function_base::~_Function_base((_Function_base *)afStack_a8);
  piVar4 = *(int **)this;
  pcVar5 = *(code **)(*piVar4 + 0x9c);
  std::function<void(std::function<void()>)>::function(afStack_68,(function *)afStack_88);
  std::function<void(gpg::SnapshotManager::SnapshotSelectUIResponse_const&)>::function
            (afStack_58,(function *)afStack_78);
  iVar3 = (*pcVar5)(piVar4,param_2,param_3_00,param_3,param_4,afStack_68);
  FUN_0052688c(afStack_68);
  if (iVar3 == 0) {
    local_b4 = 0xfffffffd;
    SnapshotMetadata::SnapshotMetadata(aSStack_b0);
    FUN_005272f0(afStack_88,&local_b4);
    SnapshotMetadata::~SnapshotMetadata(aSStack_b0);
  }
  FUN_0052688c(afStack_88);
  FUN_00516580(auStack_b8);
  return;
}

// ---- gpg::SnapshotManager::FetchAllResponse::FetchAllResponse  @ 0x527594
/* gpg::SnapshotManager::FetchAllResponse::FetchAllResponse(gpg::SnapshotManager::FetchAllResponse
   const&) */

FetchAllResponse * __thiscall
gpg::SnapshotManager::FetchAllResponse::FetchAllResponse
          (FetchAllResponse *this,FetchAllResponse *param_1)

{
  void *pvVar1;
  undefined4 uVar2;
  int iVar3;
  uint uVar4;
  int iVar5;
  
  *(undefined4 *)this = *(undefined4 *)param_1;
  iVar5 = *(int *)(param_1 + 4);
  iVar3 = *(int *)(param_1 + 8);
  *(undefined4 *)(this + 4) = 0;
  uVar4 = iVar3 - iVar5 >> 3;
  *(undefined4 *)(this + 8) = 0;
  *(undefined4 *)(this + 0xc) = 0;
  pvVar1 = (void *)0x0;
  if (uVar4 != 0) {
    if (0x1fffffff < uVar4) {
      FUN_007c4844();
    }
    pvVar1 = operator_new(uVar4 * 8);
  }
  *(void **)(this + 4) = pvVar1;
  *(void **)(this + 8) = pvVar1;
  *(void **)(this + 0xc) = (void *)(uVar4 * 8 + (int)pvVar1);
  uVar2 = FUN_0052755a(*(undefined4 *)(param_1 + 4),*(undefined4 *)(param_1 + 8));
  *(undefined4 *)(this + 8) = uVar2;
  return this;
}

// ---- gpg::SnapshotManager::FetchAll  @ 0x527704
/* gpg::SnapshotManager::FetchAll(gpg::DataSource, std::function<void
   (gpg::SnapshotManager::FetchAllResponse const&)>) */

void __thiscall
gpg::SnapshotManager::FetchAll(SnapshotManager *this,undefined4 param_2,function *param_3)

{
  function *pfVar1;
  int iVar2;
  int *piVar3;
  code *pcVar4;
  undefined1 auStack_ac [4];
  function<void(gpg::SnapshotManager::FetchAllResponse_const&)> afStack_a8 [8];
  int local_a0;
  function<void(gpg::SnapshotManager::FetchAllResponse_const&)> afStack_98 [8];
  int local_90;
  function<void(std::function<void()>)> afStack_88 [16];
  function afStack_78 [8];
  undefined4 local_70;
  function<void(std::function<void()>)> afStack_68 [16];
  function<void(gpg::SnapshotManager::FetchAllResponse_const&)> afStack_58 [16];
  undefined4 local_48;
  int local_44;
  int local_40;
  int local_3c;
  function<void(gpg::SnapshotManager::FetchAllResponse_const&)> afStack_38 [8];
  undefined4 local_30;
  
  FUN_00510a86((function<void(std::function<void()>)> *)&local_48,*(undefined4 *)this);
  FUN_0051683e(auStack_ac,(function<void(std::function<void()>)> *)&local_48);
  FUN_0050811a((function<void(std::function<void()>)> *)&local_48);
  pfVar1 = (function *)FUN_0051075c(*(undefined4 *)this);
  std::function<void(gpg::SnapshotManager::FetchAllResponse_const&)>::function(afStack_a8,param_3);
  if (local_a0 == 0) {
    local_90 = local_a0;
    local_40 = local_a0;
  }
  else {
    local_90 = 0;
    std::function<void(gpg::SnapshotManager::FetchAllResponse_const&)>::swap
              (afStack_a8,(function *)afStack_98);
    std::function<void(std::function<void()>)>::function
              ((function<void(std::function<void()>)> *)&local_48,pfVar1);
  }
  local_30 = 0;
  std::function<void(gpg::SnapshotManager::FetchAllResponse_const&)>::swap
            (afStack_98,(function *)afStack_38);
  std::function<void(std::function<void()>)>::function(afStack_88,(function *)&local_48);
  local_70 = 0;
  std::function<void(gpg::SnapshotManager::FetchAllResponse_const&)>::swap(afStack_38,afStack_78);
  FUN_005267b0((function<void(std::function<void()>)> *)&local_48);
  std::_Function_base::~_Function_base((_Function_base *)afStack_98);
  std::_Function_base::~_Function_base((_Function_base *)afStack_a8);
  piVar3 = *(int **)this;
  pcVar4 = *(code **)(*piVar3 + 0x90);
  std::function<void(std::function<void()>)>::function(afStack_68,(function *)afStack_88);
  std::function<void(gpg::SnapshotManager::FetchAllResponse_const&)>::function
            (afStack_58,afStack_78);
  iVar2 = (*pcVar4)(piVar3,param_2,afStack_68);
  FUN_005267b0(afStack_68);
  if (iVar2 == 0) {
    local_48 = 0xfffffffd;
    local_44 = iVar2;
    local_40 = iVar2;
    local_3c = iVar2;
    FUN_0052764c(afStack_88,(function<void(std::function<void()>)> *)&local_48);
    std::vector<gpg::SnapshotMetadata,std::allocator<gpg::SnapshotMetadata>>::~vector
              ((vector<gpg::SnapshotMetadata,std::allocator<gpg::SnapshotMetadata>> *)&local_44);
  }
  FUN_005267b0(afStack_88);
  FUN_00516580(auStack_ac);
  return;
}

// ---- gpg::SnapshotManager::FetchAll  @ 0x527840
/* gpg::SnapshotManager::FetchAll(std::function<void (gpg::SnapshotManager::FetchAllResponse
   const&)>) */

void __thiscall gpg::SnapshotManager::FetchAll(SnapshotManager *this,function *param_2)

{
  function<void(gpg::SnapshotManager::FetchAllResponse_const&)> afStack_20 [20];
  
  std::function<void(gpg::SnapshotManager::FetchAllResponse_const&)>::function(afStack_20,param_2);
  FetchAll(this,1,afStack_20);
  std::_Function_base::~_Function_base((_Function_base *)afStack_20);
  return;
}

// ---- gpg::SnapshotManager::Open  @ 0x527b10
/* gpg::SnapshotManager::Open(gpg::DataSource, std::string const&, gpg::SnapshotConflictPolicy,
   std::function<void (gpg::SnapshotManager::OpenResponse const&)>) */

void __thiscall
gpg::SnapshotManager::Open
          (SnapshotManager *this,undefined4 param_2,undefined4 *param_3,undefined4 param_4,
          function *param_5)

{
  function *pfVar1;
  int iVar2;
  undefined4 uVar3;
  void *pvVar4;
  undefined4 uVar5;
  undefined1 auStack_d4 [4];
  void *local_d0;
  undefined4 local_cc;
  function<void(gpg::SnapshotManager::OpenResponse_const&)> afStack_c8 [8];
  int local_c0;
  function<void(gpg::SnapshotManager::OpenResponse_const&)> afStack_b8 [8];
  int local_b0;
  function afStack_a8 [16];
  function afStack_98 [16];
  undefined4 local_88;
  SnapshotMetadata aSStack_84 [8];
  undefined1 *local_7c;
  SnapshotMetadata aSStack_78 [8];
  SnapshotMetadata aSStack_70 [8];
  function<void(std::function<void()>)> afStack_68 [8];
  int local_60;
  function afStack_58 [8];
  undefined4 local_50;
  undefined4 local_48 [4];
  function<void(gpg::SnapshotManager::OpenResponse_const&)> afStack_38 [20];
  
  FUN_00510a86((function<void(std::function<void()>)> *)local_48,*(undefined4 *)this);
  FUN_0051683e(auStack_d4,(function<void(std::function<void()>)> *)local_48);
  FUN_0050811a((function<void(std::function<void()>)> *)local_48);
  pfVar1 = (function *)FUN_0051075c(*(undefined4 *)this);
  std::function<void(gpg::SnapshotManager::OpenResponse_const&)>::function(afStack_c8,param_5);
  if (local_c0 == 0) {
    local_b0 = local_c0;
    local_60 = local_c0;
  }
  else {
    local_b0 = 0;
    std::function<void(gpg::SnapshotManager::OpenResponse_const&)>::swap
              (afStack_c8,(function *)afStack_b8);
    std::function<void(std::function<void()>)>::function(afStack_68,pfVar1);
  }
  local_50 = 0;
  std::function<void(gpg::SnapshotManager::OpenResponse_const&)>::swap(afStack_b8,afStack_58);
  FUN_00526c1a(afStack_a8,afStack_68);
  FUN_00525364(afStack_68);
  std::_Function_base::~_Function_base((_Function_base *)afStack_b8);
  std::_Function_base::~_Function_base((_Function_base *)afStack_c8);
  iVar2 = FUN_005266a8(param_3);
  if (iVar2 == 0) {
    FUN_005166ae(4,"Invalid filename %s: not opening.",*param_3);
    local_88 = 0xfffffffe;
    SnapshotMetadata::SnapshotMetadata(aSStack_84);
    local_7c = &DAT_00972528;
    SnapshotMetadata::SnapshotMetadata(aSStack_78);
    SnapshotMetadata::SnapshotMetadata(aSStack_70);
    FUN_00525a8a(afStack_a8,(OpenResponse *)&local_88);
    OpenResponse::~OpenResponse((OpenResponse *)&local_88);
  }
  uVar3 = *(undefined4 *)this;
  local_d0 = (void *)0x0;
  local_cc = 0;
  pvVar4 = operator_new(0x48);
  uVar5 = *(undefined4 *)this;
  local_d0 = pvVar4;
  std::function<void(std::function<void()>)>::function
            ((function<void(std::function<void()>)> *)local_48,afStack_a8);
  std::function<void(gpg::SnapshotManager::OpenResponse_const&)>::function(afStack_38,afStack_98);
  if (pvVar4 != (void *)0x0) {
    FUN_00525710(pvVar4,uVar5,param_2,param_3,0x6cebb800,0x49,param_3,param_4,
                 (function<void(std::function<void()>)> *)local_48);
  }
  FUN_00525364((function<void(std::function<void()>)> *)local_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::
  __shared_count<gpg::SnapshotConflictHelperOperation*,std::__shared_ptr<gpg::SnapshotConflictHelperOperation,(__gnu_cxx::_Lock_policy)2>::_Deleter<std::allocator<gpg::SnapshotConflictHelperOperation>>,std::allocator<gpg::SnapshotConflictHelperOperation>>
            ((function<void(std::function<void()>)> *)local_48,local_d0,afStack_68,
             (OpenResponse *)&local_88);
  uVar5 = local_cc;
  local_cc = local_48[0];
  local_48[0] = uVar5;
  if (local_d0 == (void *)0x0) {
    iVar2 = 0;
  }
  else {
    iVar2 = (int)local_d0 + 4;
  }
  FUN_00527abc(&local_cc,iVar2);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_48);
  FUN_00510854(uVar3,&local_d0);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_cc);
  FUN_00525364(afStack_a8);
  FUN_00516580(auStack_d4);
  return;
}

// ---- gpg::SnapshotManager::Open  @ 0x527d10
/* gpg::SnapshotManager::Open(std::string const&, gpg::SnapshotConflictPolicy, std::function<void
   (gpg::SnapshotManager::OpenResponse const&)>) */

void __thiscall
gpg::SnapshotManager::Open
          (SnapshotManager *this,undefined4 param_1,undefined4 param_3,function *param_4)

{
  function<void(gpg::SnapshotManager::OpenResponse_const&)> afStack_28 [20];
  
  std::function<void(gpg::SnapshotManager::OpenResponse_const&)>::function(afStack_28,param_4);
  Open(this,1,param_1,param_3,afStack_28);
  std::_Function_base::~_Function_base((_Function_base *)afStack_28);
  return;
}

// ---- gpg::SnapshotManager::FetchAllBlocking  @ 0x527e08
/* gpg::SnapshotManager::FetchAllBlocking(gpg::DataSource, std::chrono::duration<long long,
   std::ratio<1ll, 1000ll> >) */

FetchAllResponse *
gpg::SnapshotManager::FetchAllBlocking
          (FetchAllResponse *param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4,
          uint param_5,int param_6)

{
  longlong lVar1;
  int iVar2;
  FetchAllResponse *pFVar3;
  int *piVar4;
  FetchAllResponse *this;
  code *pcVar5;
  unique_lock *puVar6;
  undefined4 local_98;
  int iStack_94;
  undefined1 auStack_90 [4];
  undefined1 auStack_8c [4];
  undefined4 local_88;
  int iStack_84;
  mutex *local_80;
  __shared_count a_Stack_7c [4];
  mutex *local_78;
  undefined1 local_74;
  undefined4 local_68;
  undefined4 local_64;
  undefined4 local_60;
  undefined4 local_5c;
  mutex *local_58;
  undefined4 local_54;
  undefined4 local_50;
  undefined4 local_4c;
  undefined4 local_48;
  int local_44;
  int local_40;
  int local_3c;
  
  FUN_00510a86((FetchAllResponse *)&local_48,*param_2,param_5,param_6,param_5,param_6);
  FUN_0051683e(auStack_90,(FetchAllResponse *)&local_48);
  FUN_0050811a((FetchAllResponse *)&local_48);
  FUN_005279d8(&local_80,0,auStack_8c);
  piVar4 = (int *)*param_2;
  pcVar5 = *(code **)(*piVar4 + 0x90);
  pFVar3 = (FetchAllResponse *)&local_58;
  local_58 = local_80;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_54,a_Stack_7c);
  FUN_00526c38((FetchAllResponse *)&local_48,pFVar3);
  iVar2 = (*pcVar5)(piVar4,param_3,(FetchAllResponse *)&local_48);
  FUN_005267b0((FetchAllResponse *)&local_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_54);
  if (iVar2 == 0) {
    local_48 = 0xfffffffd;
    local_44 = iVar2;
    local_40 = iVar2;
    local_3c = iVar2;
    FetchAllResponse::FetchAllResponse(param_1,(FetchAllResponse *)&local_48);
    this = (FetchAllResponse *)&local_48;
    goto LAB_00527f7a;
  }
  local_64 = 0;
  local_60 = 0;
  local_5c = 0;
  local_54 = 0;
  local_50 = 0;
  local_4c = 0;
  local_68 = 0xfffffffe;
  local_58 = (mutex *)0xfffffffb;
  iVar2 = FUN_00553a80();
  this = (FetchAllResponse *)&local_78;
  if (iVar2 == 0) {
    local_74 = 0;
    local_78 = local_80;
    if (local_80 == (mutex *)0x0) {
                    /* WARNING: Subroutine does not return */
      FUN_007c4c60(1);
    }
    std::mutex::lock(local_80);
    local_74 = 1;
    if (local_80[8] == (mutex)0x0) {
      puVar6 = (unique_lock *)(local_80 + 4);
      FUN_007bfd24(&local_98);
      lVar1 = (ulonglong)param_5 * 1000000 + CONCAT44(param_6 * 1000000,local_98);
      local_88 = (undefined4)lVar1;
      iStack_84 = iStack_94 + (int)((ulonglong)lVar1 >> 0x20);
      do {
        if (local_80[8] != (mutex)0x0) goto LAB_00527f44;
        iVar2 = std::condition_variable::
                __wait_until_impl<std::chrono::duration<long_long,std::ratio<1ll,1000000000ll>>>
                          (puVar6,(time_point *)this);
      } while (iVar2 != 1);
      if (local_80[8] != (mutex)0x0) goto LAB_00527f44;
    }
    else {
LAB_00527f44:
      pFVar3 = (FetchAllResponse *)(local_80 + 0xc);
    }
    FetchAllResponse::FetchAllResponse((FetchAllResponse *)&local_48,pFVar3);
    std::unique_lock<std::mutex>::~unique_lock((unique_lock<std::mutex> *)this);
  }
  else {
    FUN_005166ae(4,"Blocking calls are not allowed from the UI thread.");
    FetchAllResponse::FetchAllResponse((FetchAllResponse *)&local_48,(FetchAllResponse *)&local_68);
  }
  FetchAllResponse::FetchAllResponse(this,(FetchAllResponse *)&local_48);
  std::vector<gpg::SnapshotMetadata,std::allocator<gpg::SnapshotMetadata>>::~vector
            ((vector<gpg::SnapshotMetadata,std::allocator<gpg::SnapshotMetadata>> *)&local_44);
  std::vector<gpg::SnapshotMetadata,std::allocator<gpg::SnapshotMetadata>>::~vector
            ((vector<gpg::SnapshotMetadata,std::allocator<gpg::SnapshotMetadata>> *)&local_54);
  std::vector<gpg::SnapshotMetadata,std::allocator<gpg::SnapshotMetadata>>::~vector
            ((vector<gpg::SnapshotMetadata,std::allocator<gpg::SnapshotMetadata>> *)&local_64);
  FetchAllResponse::FetchAllResponse(param_1,this);
LAB_00527f7a:
  std::vector<gpg::SnapshotMetadata,std::allocator<gpg::SnapshotMetadata>>::~vector
            ((vector<gpg::SnapshotMetadata,std::allocator<gpg::SnapshotMetadata>> *)(this + 4));
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)a_Stack_7c);
  FUN_00516580(auStack_90);
  return param_1;
}

// ---- gpg::SnapshotManager::FetchAllBlocking  @ 0x527fe0
/* gpg::SnapshotManager::FetchAllBlocking(gpg::DataSource) */

FetchAllResponse * gpg::SnapshotManager::FetchAllBlocking(FetchAllResponse *param_1)

{
  FetchAllResponse aFStack_20 [4];
  vector<gpg::SnapshotMetadata,std::allocator<gpg::SnapshotMetadata>> avStack_1c [12];
  
  FetchAllBlocking(aFStack_20);
  FetchAllResponse::FetchAllResponse(param_1,aFStack_20);
  std::vector<gpg::SnapshotMetadata,std::allocator<gpg::SnapshotMetadata>>::~vector(avStack_1c);
  return param_1;
}

// ---- gpg::SnapshotManager::FetchAllBlocking  @ 0x528014
/* gpg::SnapshotManager::FetchAllBlocking() */

void gpg::SnapshotManager::FetchAllBlocking(void)

{
  FetchAllResponse *in_r0;
  undefined4 in_r1;
  FetchAllResponse aFStack_20 [4];
  vector<gpg::SnapshotMetadata,std::allocator<gpg::SnapshotMetadata>> avStack_1c [16];
  
  FetchAllBlocking(aFStack_20,in_r1,1);
  FetchAllResponse::FetchAllResponse(in_r0,aFStack_20);
  std::vector<gpg::SnapshotMetadata,std::allocator<gpg::SnapshotMetadata>>::~vector(avStack_1c);
  return;
}

// ---- gpg::SnapshotManager::FetchAllBlocking  @ 0x528036
/* gpg::SnapshotManager::FetchAllBlocking(std::chrono::duration<long long, std::ratio<1ll, 1000ll>
   >) */

FetchAllResponse *
gpg::SnapshotManager::FetchAllBlocking
          (FetchAllResponse *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  FetchAllResponse aFStack_20 [4];
  vector<gpg::SnapshotMetadata,std::allocator<gpg::SnapshotMetadata>> avStack_1c [16];
  
  FetchAllBlocking(aFStack_20,param_2,1,param_4,param_3,param_4);
  FetchAllResponse::FetchAllResponse(param_1,aFStack_20);
  std::vector<gpg::SnapshotMetadata,std::allocator<gpg::SnapshotMetadata>>::~vector(avStack_1c);
  return param_1;
}

// ---- gpg::SnapshotManager::OpenBlocking  @ 0x528060
/* gpg::SnapshotManager::OpenBlocking(gpg::DataSource, std::chrono::duration<long long,
   std::ratio<1ll, 1000ll> >, std::string const&, gpg::SnapshotConflictPolicy) */

OpenResponse *
gpg::SnapshotManager::OpenBlocking
          (OpenResponse *param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4,
          uint param_5,int param_6,undefined4 *param_7,undefined4 param_8)

{
  int iVar1;
  undefined4 uVar2;
  void *pvVar3;
  OpenResponse *pOVar4;
  uint uVar5;
  undefined4 uVar6;
  unique_lock *puVar7;
  uint local_138;
  int iStack_134;
  undefined1 auStack_130 [4];
  undefined1 auStack_12c [4];
  int local_128;
  int iStack_124;
  mutex *local_120;
  __shared_count a_Stack_11c [4];
  void *local_118;
  undefined4 local_114;
  mutex *local_110;
  undefined1 local_10c;
  undefined4 local_108;
  SnapshotMetadata aSStack_104 [8];
  undefined1 *local_fc;
  SnapshotMetadata aSStack_f8 [8];
  SnapshotMetadata aSStack_f0 [8];
  undefined1 auStack_e8 [32];
  OpenResponse aOStack_c8 [32];
  undefined1 auStack_a8 [32];
  undefined4 local_88 [8];
  undefined4 local_68 [8];
  mutex *local_48;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_44 [32];
  
  FUN_00510a86((OpenResponse *)&local_48,*param_2);
  FUN_0051683e(auStack_130,(OpenResponse *)&local_48);
  FUN_0050811a((OpenResponse *)&local_48);
  iVar1 = FUN_005266a8(param_7);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Invalid filename %s: not opening.",*param_7);
    local_108 = 0xfffffffe;
    SnapshotMetadata::SnapshotMetadata(aSStack_104);
    local_fc = &DAT_00972528;
    SnapshotMetadata::SnapshotMetadata(aSStack_f8);
    SnapshotMetadata::SnapshotMetadata(aSStack_f0);
    OpenResponse::OpenResponse(param_1,(OpenResponse *)&local_108);
    OpenResponse::~OpenResponse((OpenResponse *)&local_108);
    goto LAB_0052831a;
  }
  FUN_00525c58(&local_120,0,auStack_12c);
  uVar2 = *param_2;
  local_48 = local_120;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count(a_Stack_44,a_Stack_11c);
  FUN_00525844(auStack_e8,(OpenResponse *)&local_48);
  local_118 = (void *)0x0;
  local_114 = 0;
  pvVar3 = operator_new(0x48);
  uVar6 = *param_2;
  local_118 = pvVar3;
  FUN_00526c1a(auStack_a8,auStack_e8);
  if (pvVar3 != (void *)0x0) {
    FUN_00525710(pvVar3,uVar6,param_3,pvVar3,param_5,param_6,param_7,param_8,auStack_a8);
  }
  FUN_00525364(auStack_a8);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::
  __shared_count<gpg::SnapshotConflictHelperOperation*,std::__shared_ptr<gpg::SnapshotConflictHelperOperation,(__gnu_cxx::_Lock_policy)2>::_Deleter<std::allocator<gpg::SnapshotConflictHelperOperation>>,std::allocator<gpg::SnapshotConflictHelperOperation>>
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_68,local_118,
             (OpenResponse *)local_88,auStack_a8);
  uVar6 = local_114;
  local_114 = local_68[0];
  local_68[0] = uVar6;
  if (local_118 == (void *)0x0) {
    iVar1 = 0;
  }
  else {
    iVar1 = (int)local_118 + 4;
  }
  FUN_00527abc(&local_114,iVar1);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_68);
  FUN_00510854(uVar2,&local_118);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_114);
  FUN_00525364(auStack_e8);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_44);
  OpenResponse::OpenResponse((OpenResponse *)local_88);
  OpenResponse::OpenResponse((OpenResponse *)local_68);
  local_88[0] = 0xfffffffe;
  local_68[0] = 0xfffffffb;
  iVar1 = FUN_00553a80();
  if (iVar1 == 0) {
    local_10c = 0;
    local_110 = local_120;
    if (local_120 == (mutex *)0x0) {
                    /* WARNING: Subroutine does not return */
      FUN_007c4c60(1);
    }
    std::mutex::lock(local_120);
    local_10c = 1;
    if (local_120[8] == (mutex)0x0) {
      puVar7 = (unique_lock *)(local_120 + 4);
      FUN_007bfd24(&local_138);
      uVar5 = (uint)((ulonglong)param_5 * 1000000);
      local_128 = uVar5 + local_138;
      iStack_124 = param_6 * 1000000 + (int)((ulonglong)param_5 * 1000000 >> 0x20) +
                   iStack_134 + (uint)CARRY4(uVar5,local_138);
      do {
        if (local_120[8] != (mutex)0x0) goto LAB_00528270;
        iVar1 = std::condition_variable::
                __wait_until_impl<std::chrono::duration<long_long,std::ratio<1ll,1000000000ll>>>
                          (puVar7,(time_point *)&local_110);
      } while (iVar1 != 1);
      pOVar4 = (OpenResponse *)local_68;
      if (local_120[8] != (mutex)0x0) goto LAB_00528270;
    }
    else {
LAB_00528270:
      pOVar4 = (OpenResponse *)(local_120 + 0xc);
    }
    OpenResponse::OpenResponse((OpenResponse *)&local_48,pOVar4);
    std::unique_lock<std::mutex>::~unique_lock((unique_lock<std::mutex> *)&local_110);
  }
  else {
    FUN_005166ae(4,"Blocking calls are not allowed from the UI thread.");
    OpenResponse::OpenResponse((OpenResponse *)&local_48,(OpenResponse *)local_88);
  }
  OpenResponse::OpenResponse(aOStack_c8,(OpenResponse *)&local_48);
  OpenResponse::~OpenResponse((OpenResponse *)&local_48);
  OpenResponse::~OpenResponse((OpenResponse *)local_68);
  OpenResponse::~OpenResponse((OpenResponse *)local_88);
  OpenResponse::OpenResponse(param_1,aOStack_c8);
  OpenResponse::~OpenResponse(aOStack_c8);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)a_Stack_11c);
LAB_0052831a:
  FUN_00516580(auStack_130);
  return param_1;
}

// ---- gpg::SnapshotManager::OpenBlocking  @ 0x528338
/* gpg::SnapshotManager::OpenBlocking(gpg::DataSource, std::string const&,
   gpg::SnapshotConflictPolicy) */

OpenResponse * gpg::SnapshotManager::OpenBlocking(OpenResponse *param_1)

{
  OpenResponse aOStack_38 [36];
  
  OpenBlocking(aOStack_38);
  OpenResponse::OpenResponse(param_1,aOStack_38);
  OpenResponse::~OpenResponse(aOStack_38);
  return param_1;
}

// ---- gpg::SnapshotManager::OpenBlocking  @ 0x52837c
/* gpg::SnapshotManager::OpenBlocking(std::string const&, gpg::SnapshotConflictPolicy) */

OpenResponse *
gpg::SnapshotManager::OpenBlocking
          (OpenResponse *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  OpenResponse aOStack_30 [32];
  
  OpenBlocking(aOStack_30,param_2,1,param_3,param_4);
  OpenResponse::OpenResponse(param_1,aOStack_30);
  OpenResponse::~OpenResponse(aOStack_30);
  return param_1;
}

// ---- gpg::SnapshotManager::OpenBlocking  @ 0x5283b0
/* gpg::SnapshotManager::OpenBlocking(std::chrono::duration<long long, std::ratio<1ll, 1000ll> >,
   std::string const&, gpg::SnapshotConflictPolicy) */

OpenResponse *
gpg::SnapshotManager::OpenBlocking
          (OpenResponse *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
          undefined4 param_5,undefined4 param_6)

{
  OpenResponse aOStack_30 [36];
  
  OpenBlocking(aOStack_30,param_2,1,param_6,param_3,param_4,param_5,param_6);
  OpenResponse::OpenResponse(param_1,aOStack_30);
  OpenResponse::~OpenResponse(aOStack_30);
  return param_1;
}

// ---- gpg::SnapshotManager::CommitBlocking  @ 0x528500
/* gpg::SnapshotManager::CommitBlocking(std::chrono::duration<long long, std::ratio<1ll, 1000ll> >,
   gpg::SnapshotMetadata const&, gpg::SnapshotMetadataChange const&, std::vector<unsigned char,
   std::allocator<unsigned char> >) */

CommitResponse *
gpg::SnapshotManager::CommitBlocking
          (CommitResponse *param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4,
          SnapshotMetadata *param_5,undefined4 param_6,_Vector_base *param_7)

{
  int iVar1;
  SnapshotMetadata *this;
  code *pcVar2;
  CommitResponse *pCVar3;
  int *piVar4;
  undefined1 auStack_88 [4];
  undefined1 auStack_84 [4];
  undefined4 local_80;
  __shared_count a_Stack_7c [4];
  undefined4 local_78;
  SnapshotMetadata aSStack_74 [8];
  undefined4 local_6c;
  SnapshotMetadata aSStack_68 [8];
  undefined4 local_60;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_5c [8];
  _Vector_base<unsigned_char,std::allocator<unsigned_char>> a_Stack_54 [4];
  SnapshotMetadata aSStack_50 [8];
  undefined1 auStack_48 [36];
  
  FUN_00510a86(auStack_48,*param_2);
  FUN_0051683e(auStack_88,auStack_48);
  FUN_0050811a(auStack_48);
  iVar1 = SnapshotMetadata::Valid(param_5);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Trying to commit an invalid snapshot: skipping.");
    pCVar3 = (CommitResponse *)&local_78;
    local_78 = 0xfffffffe;
    SnapshotMetadata::SnapshotMetadata(aSStack_74);
    CommitResponse::CommitResponse(param_1,pCVar3);
  }
  else {
    iVar1 = FUN_00526940(param_5);
    if (iVar1 != 0) {
      FUN_00525db4(&local_80,0,auStack_84);
      piVar4 = (int *)*param_2;
      pcVar2 = *(code **)(*piVar4 + 0x80);
      std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::_Vector_base
                (a_Stack_54,param_7);
      local_60 = local_80;
      std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count(a_Stack_5c,a_Stack_7c);
      FUN_0052576c(auStack_48,(CommitResponse *)&local_60);
      iVar1 = (*pcVar2)(piVar4,param_5,param_6,a_Stack_54,auStack_48);
      this = (SnapshotMetadata *)a_Stack_5c;
      FUN_005267ea(auStack_48);
      std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
                ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)this);
      std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::~_Vector_base(a_Stack_54);
      if (iVar1 == 0) {
        local_60 = 0xfffffffd;
        SnapshotMetadata::SnapshotMetadata(this);
        CommitResponse::CommitResponse(param_1,(CommitResponse *)&local_60);
      }
      else {
        FUN_005283ec(a_Stack_54,&local_80,param_3,param_4);
        CommitResponse::CommitResponse(param_1,(CommitResponse *)a_Stack_54);
        this = aSStack_50;
      }
      SnapshotMetadata::~SnapshotMetadata(this);
      std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
                ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)a_Stack_7c);
      goto LAB_0052867c;
    }
    FUN_005166ae(4,"Trying to commit a non-open snapshot: skipping.");
    pCVar3 = (CommitResponse *)&local_6c;
    local_6c = 0xfffffffe;
    SnapshotMetadata::SnapshotMetadata(aSStack_68);
    CommitResponse::CommitResponse(param_1,pCVar3);
  }
  SnapshotMetadata::~SnapshotMetadata((SnapshotMetadata *)(pCVar3 + 4));
LAB_0052867c:
  FUN_00516580(auStack_88);
  return param_1;
}

// ---- gpg::SnapshotManager::CommitBlocking  @ 0x528694
/* gpg::SnapshotManager::CommitBlocking(gpg::SnapshotMetadata const&, gpg::SnapshotMetadataChange
   const&, std::vector<unsigned char, std::allocator<unsigned char> >) */

CommitResponse *
gpg::SnapshotManager::CommitBlocking
          (CommitResponse *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
          _Vector_base *param_5)

{
  _Vector_base<unsigned_char,std::allocator<unsigned_char>> a_Stack_38 [12];
  CommitResponse aCStack_2c [4];
  SnapshotMetadata aSStack_28 [12];
  
  std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::_Vector_base(a_Stack_38,param_5);
  CommitBlocking(aCStack_2c,param_2,0x6cebb800,0x49,param_3,param_4,a_Stack_38);
  CommitResponse::CommitResponse(param_1,aCStack_2c);
  SnapshotMetadata::~SnapshotMetadata(aSStack_28);
  std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::~_Vector_base(a_Stack_38);
  return param_1;
}

// ---- gpg::SnapshotManager::ResolveConflictBlocking  @ 0x5286f8
/* gpg::SnapshotManager::ResolveConflictBlocking(std::chrono::duration<long long, std::ratio<1ll,
   1000ll> >, gpg::SnapshotMetadata const&, gpg::SnapshotMetadataChange const&, std::string const&)
    */

CommitResponse *
gpg::SnapshotManager::ResolveConflictBlocking
          (CommitResponse *param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4,
          undefined4 param_5,undefined4 param_6,undefined4 param_7)

{
  int iVar1;
  CommitResponse *pCVar2;
  int *piVar3;
  code *pcVar4;
  undefined1 auStack_7c [4];
  undefined1 auStack_78 [4];
  undefined4 local_74;
  __shared_count a_Stack_70 [4];
  undefined4 local_6c;
  SnapshotMetadata aSStack_68 [8];
  undefined4 local_60;
  SnapshotMetadata aSStack_5c [8];
  undefined4 local_54;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_50 [8];
  undefined1 auStack_48 [36];
  
  FUN_00510a86(auStack_48,*param_2);
  FUN_0051683e(auStack_7c,auStack_48);
  FUN_0050811a(auStack_48);
  FUN_00525db4(&local_74,0,auStack_78);
  iVar1 = FUN_00526940(param_5);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Trying to resolve a non-open snapshot.");
    pCVar2 = (CommitResponse *)&local_6c;
    local_6c = 0xfffffffe;
    SnapshotMetadata::SnapshotMetadata(aSStack_68);
    CommitResponse::CommitResponse(param_1,pCVar2);
  }
  else {
    piVar3 = (int *)*param_2;
    pcVar4 = *(code **)(*piVar3 + 0x84);
    pCVar2 = (CommitResponse *)&local_54;
    local_54 = local_74;
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count(a_Stack_50,a_Stack_70);
    FUN_0052576c(auStack_48,pCVar2);
    iVar1 = (*pcVar4)(piVar3,param_5,param_6,param_7,auStack_48);
    FUN_005267ea(auStack_48);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_50);
    if (iVar1 == 0) {
      pCVar2 = (CommitResponse *)&local_60;
      local_60 = 0xfffffffd;
      SnapshotMetadata::SnapshotMetadata(aSStack_5c);
      CommitResponse::CommitResponse(param_1,pCVar2);
    }
    else {
      FUN_005283ec(pCVar2,&local_74,param_3,param_4);
      CommitResponse::CommitResponse(param_1,pCVar2);
    }
  }
  SnapshotMetadata::~SnapshotMetadata((SnapshotMetadata *)(pCVar2 + 4));
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)a_Stack_70);
  FUN_00516580(auStack_7c);
  return param_1;
}

// ---- gpg::SnapshotManager::ResolveConflictBlocking  @ 0x528828
/* gpg::SnapshotManager::ResolveConflictBlocking(gpg::SnapshotMetadata const&,
   gpg::SnapshotMetadataChange const&, std::string const&) */

SnapshotMetadata *
gpg::SnapshotManager::ResolveConflictBlocking
          (SnapshotMetadata *param_1,SnapshotMetadataChange *param_2,string *param_3)

{
  CommitResponse aCStack_1c [4];
  SnapshotMetadata aSStack_18 [12];
  
  ResolveConflictBlocking(aCStack_1c,param_2,0x6cebb800,0x49,param_3);
  CommitResponse::CommitResponse((CommitResponse *)param_1,aCStack_1c);
  SnapshotMetadata::~SnapshotMetadata(aSStack_18);
  return param_1;
}

// ---- gpg::SnapshotManager::ResolveConflictBlocking  @ 0x528868
/* gpg::SnapshotManager::ResolveConflictBlocking(std::chrono::duration<long long, std::ratio<1ll,
   1000ll> >, gpg::SnapshotMetadata const&, gpg::SnapshotMetadataChange const&, std::string const&,
   std::vector<unsigned char, std::allocator<unsigned char> >) */

CommitResponse *
gpg::SnapshotManager::ResolveConflictBlocking
          (CommitResponse *param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4,
          SnapshotMetadata *param_5,undefined4 param_6,undefined4 param_7,_Vector_base *param_8)

{
  int iVar1;
  SnapshotMetadata *this;
  code *pcVar2;
  CommitResponse *pCVar3;
  int *piVar4;
  undefined1 auStack_88 [4];
  undefined1 auStack_84 [4];
  undefined4 local_80;
  __shared_count a_Stack_7c [4];
  undefined4 local_78;
  SnapshotMetadata aSStack_74 [8];
  undefined4 local_6c;
  SnapshotMetadata aSStack_68 [8];
  undefined4 local_60;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_5c [8];
  _Vector_base<unsigned_char,std::allocator<unsigned_char>> a_Stack_54 [4];
  SnapshotMetadata aSStack_50 [8];
  undefined1 auStack_48 [36];
  
  FUN_00510a86(auStack_48,*param_2);
  FUN_0051683e(auStack_88,auStack_48);
  FUN_0050811a(auStack_48);
  iVar1 = SnapshotMetadata::Valid(param_5);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Trying to resolve an invalid snapshot: skipping.");
    pCVar3 = (CommitResponse *)&local_78;
    local_78 = 0xfffffffe;
    SnapshotMetadata::SnapshotMetadata(aSStack_74);
    CommitResponse::CommitResponse(param_1,pCVar3);
  }
  else {
    iVar1 = FUN_00526940(param_5);
    if (iVar1 != 0) {
      FUN_00525db4(&local_80,0,auStack_84);
      piVar4 = (int *)*param_2;
      pcVar2 = *(code **)(*piVar4 + 0x88);
      std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::_Vector_base
                (a_Stack_54,param_8);
      local_60 = local_80;
      std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count(a_Stack_5c,a_Stack_7c);
      FUN_0052576c(auStack_48,(CommitResponse *)&local_60);
      iVar1 = (*pcVar2)(piVar4,param_5,param_6,param_7,a_Stack_54,auStack_48);
      this = (SnapshotMetadata *)a_Stack_5c;
      FUN_005267ea(auStack_48);
      std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
                ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)this);
      std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::~_Vector_base(a_Stack_54);
      if (iVar1 == 0) {
        local_60 = 0xfffffffd;
        SnapshotMetadata::SnapshotMetadata(this);
        CommitResponse::CommitResponse(param_1,(CommitResponse *)&local_60);
      }
      else {
        FUN_005283ec(a_Stack_54,&local_80,param_3,param_4);
        CommitResponse::CommitResponse(param_1,(CommitResponse *)a_Stack_54);
        this = aSStack_50;
      }
      SnapshotMetadata::~SnapshotMetadata(this);
      std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
                ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)a_Stack_7c);
      goto LAB_005289e6;
    }
    FUN_005166ae(4,"Trying to resolve a non-open snapshot: skipping.");
    pCVar3 = (CommitResponse *)&local_6c;
    local_6c = 0xfffffffe;
    SnapshotMetadata::SnapshotMetadata(aSStack_68);
    CommitResponse::CommitResponse(param_1,pCVar3);
  }
  SnapshotMetadata::~SnapshotMetadata((SnapshotMetadata *)(pCVar3 + 4));
LAB_005289e6:
  FUN_00516580(auStack_88);
  return param_1;
}

// ---- gpg::SnapshotManager::ResolveConflictBlocking  @ 0x5289fc
/* gpg::SnapshotManager::ResolveConflictBlocking(gpg::SnapshotMetadata const&,
   gpg::SnapshotMetadataChange const&, std::string const&, std::vector<unsigned char,
   std::allocator<unsigned char> >) */

CommitResponse *
gpg::SnapshotManager::ResolveConflictBlocking
          (CommitResponse *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
          undefined4 param_5,_Vector_base *param_6)

{
  _Vector_base<unsigned_char,std::allocator<unsigned_char>> a_Stack_38 [12];
  CommitResponse aCStack_2c [4];
  SnapshotMetadata aSStack_28 [12];
  
  std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::_Vector_base(a_Stack_38,param_6);
  ResolveConflictBlocking(aCStack_2c,param_2,0x6cebb800,0x49,param_3,param_4,param_5,a_Stack_38);
  CommitResponse::CommitResponse(param_1,aCStack_2c);
  SnapshotMetadata::~SnapshotMetadata(aSStack_28);
  std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::~_Vector_base(a_Stack_38);
  return param_1;
}

// ---- gpg::SnapshotManager::ReadBlocking  @ 0x528a64
/* gpg::SnapshotManager::ReadBlocking(std::chrono::duration<long long, std::ratio<1ll, 1000ll> >,
   gpg::SnapshotMetadata const&) */

ReadResponse *
gpg::SnapshotManager::ReadBlocking
          (ReadResponse *param_1,undefined4 *param_2,uint param_3,int param_4,
          SnapshotMetadata *param_5)

{
  longlong lVar1;
  int iVar2;
  ReadResponse *pRVar3;
  int *piVar4;
  ReadResponse *this;
  code *pcVar5;
  unique_lock *puVar6;
  undefined4 local_98;
  int iStack_94;
  undefined1 auStack_90 [4];
  undefined1 auStack_8c [4];
  undefined4 local_88;
  int iStack_84;
  mutex *local_80;
  __shared_count a_Stack_7c [4];
  mutex *local_78;
  undefined1 local_74;
  undefined4 local_68;
  undefined4 local_64;
  undefined4 local_60;
  undefined4 local_5c;
  mutex *local_58;
  undefined4 local_54;
  undefined4 local_50;
  undefined4 local_4c;
  undefined4 local_48;
  int local_44;
  int local_40;
  int local_3c;
  
  FUN_00510a86((ReadResponse *)&local_48,*param_2);
  FUN_0051683e(auStack_90,(ReadResponse *)&local_48);
  FUN_0050811a((ReadResponse *)&local_48);
  iVar2 = SnapshotMetadata::Valid(param_5);
  if (iVar2 == 0) {
    FUN_005166ae(4,"Trying to read an invalid snapshot: skipping.");
    local_48 = 0xfffffffe;
    local_44 = 0;
    local_40 = 0;
    local_3c = 0;
    ReadResponse::ReadResponse(param_1,(ReadResponse *)&local_48);
    std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::~_Vector_base
              ((_Vector_base<unsigned_char,std::allocator<unsigned_char>> *)&local_44);
    goto LAB_00528c4e;
  }
  FUN_00525d1c(&local_80,0,auStack_8c);
  piVar4 = (int *)*param_2;
  pcVar5 = *(code **)(*piVar4 + 0x98);
  pRVar3 = (ReadResponse *)&local_58;
  local_58 = local_80;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_54,a_Stack_7c);
  FUN_005258ec((ReadResponse *)&local_48,pRVar3);
  iVar2 = (*pcVar5)(piVar4,param_5,(ReadResponse *)&local_48);
  FUN_00526878((ReadResponse *)&local_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_54);
  if (iVar2 == 0) {
    local_48 = 0xfffffffd;
    local_44 = iVar2;
    local_40 = iVar2;
    local_3c = iVar2;
    ReadResponse::ReadResponse(param_1,(ReadResponse *)&local_48);
    this = (ReadResponse *)&local_48;
  }
  else {
    local_64 = 0;
    local_60 = 0;
    local_5c = 0;
    local_54 = 0;
    local_50 = 0;
    local_4c = 0;
    local_68 = 0xfffffffe;
    local_58 = (mutex *)0xfffffffb;
    iVar2 = FUN_00553a80();
    this = (ReadResponse *)&local_78;
    if (iVar2 == 0) {
      local_74 = 0;
      local_78 = local_80;
      if (local_80 == (mutex *)0x0) {
                    /* WARNING: Subroutine does not return */
        FUN_007c4c60(1);
      }
      std::mutex::lock(local_80);
      local_74 = 1;
      if (local_80[8] == (mutex)0x0) {
        puVar6 = (unique_lock *)(local_80 + 4);
        FUN_007bfd24(&local_98);
        lVar1 = (ulonglong)param_3 * 1000000 + CONCAT44(param_4 * 1000000,local_98);
        local_88 = (undefined4)lVar1;
        iStack_84 = iStack_94 + (int)((ulonglong)lVar1 >> 0x20);
        do {
          if (local_80[8] != (mutex)0x0) goto LAB_00528bc8;
          iVar2 = std::condition_variable::
                  __wait_until_impl<std::chrono::duration<long_long,std::ratio<1ll,1000000000ll>>>
                            (puVar6,(time_point *)this);
        } while (iVar2 != 1);
        if (local_80[8] != (mutex)0x0) goto LAB_00528bc8;
      }
      else {
LAB_00528bc8:
        pRVar3 = (ReadResponse *)(local_80 + 0xc);
      }
      ReadResponse::ReadResponse((ReadResponse *)&local_48,pRVar3);
      std::unique_lock<std::mutex>::~unique_lock((unique_lock<std::mutex> *)this);
    }
    else {
      FUN_005166ae(4,"Blocking calls are not allowed from the UI thread.");
      ReadResponse::ReadResponse((ReadResponse *)&local_48,(ReadResponse *)&local_68);
    }
    ReadResponse::ReadResponse(this,(ReadResponse *)&local_48);
    std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::~_Vector_base
              ((_Vector_base<unsigned_char,std::allocator<unsigned_char>> *)&local_44);
    std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::~_Vector_base
              ((_Vector_base<unsigned_char,std::allocator<unsigned_char>> *)&local_54);
    std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::~_Vector_base
              ((_Vector_base<unsigned_char,std::allocator<unsigned_char>> *)&local_64);
    ReadResponse::ReadResponse(param_1,this);
  }
  std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::~_Vector_base
            ((_Vector_base<unsigned_char,std::allocator<unsigned_char>> *)(this + 4));
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)a_Stack_7c);
LAB_00528c4e:
  FUN_00516580(auStack_90);
  return param_1;
}

// ---- gpg::SnapshotManager::ReadBlocking  @ 0x528c68
/* gpg::SnapshotManager::ReadBlocking(gpg::SnapshotMetadata const&) */

SnapshotMetadata * gpg::SnapshotManager::ReadBlocking(SnapshotMetadata *param_1)

{
  undefined4 in_r1;
  ReadResponse aRStack_20 [4];
  _Vector_base<unsigned_char,std::allocator<unsigned_char>> a_Stack_1c [16];
  
  ReadBlocking(aRStack_20,in_r1,0x6cebb800,0x49);
  ReadResponse::ReadResponse((ReadResponse *)param_1,aRStack_20);
  std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::~_Vector_base(a_Stack_1c);
  return param_1;
}

// ---- gpg::SnapshotManager::ShowSelectUIOperationBlocking  @ 0x528c98
/* gpg::SnapshotManager::ShowSelectUIOperationBlocking(std::chrono::duration<long long,
   std::ratio<1ll, 1000ll> >, bool, bool, unsigned int, std::string const&) */

SnapshotSelectUIResponse *
gpg::SnapshotManager::ShowSelectUIOperationBlocking
          (SnapshotSelectUIResponse *param_1,undefined4 *param_2,uint param_3,int param_4,
          undefined1 param_5,undefined1 param_6,undefined4 param_7,undefined4 param_8)

{
  longlong lVar1;
  int iVar2;
  SnapshotSelectUIResponse *pSVar3;
  unique_lock *puVar4;
  int *piVar5;
  code *pcVar6;
  undefined4 local_b0;
  int iStack_ac;
  undefined1 auStack_a8 [4];
  undefined1 auStack_a4 [4];
  undefined4 local_a0;
  int iStack_9c;
  mutex *local_94;
  __shared_count a_Stack_90 [4];
  mutex *local_8c;
  undefined1 local_88;
  undefined4 local_84;
  SnapshotMetadata aSStack_80 [8];
  SnapshotSelectUIResponse aSStack_78 [12];
  undefined4 local_6c;
  SnapshotMetadata aSStack_68 [8];
  undefined4 local_60;
  SnapshotMetadata aSStack_5c [8];
  mutex *local_54;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_50 [8];
  undefined1 auStack_48 [36];
  
  FUN_00510a86(auStack_48,*param_2);
  FUN_0051683e(auStack_a8,auStack_48);
  FUN_0050811a(auStack_48);
  FUN_00527d48(&local_94,0,auStack_a4);
  piVar5 = (int *)*param_2;
  pcVar6 = *(code **)(*piVar5 + 0x9c);
  local_54 = local_94;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count(a_Stack_50,a_Stack_90);
  FUN_00526ce8(auStack_48,(SnapshotSelectUIResponse *)&local_54);
  iVar2 = (*pcVar6)(piVar5,param_5,param_6,param_7,param_8,auStack_48);
  FUN_0052688c(auStack_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_50);
  if (iVar2 == 0) {
    pSVar3 = (SnapshotSelectUIResponse *)&local_84;
    local_84 = 0xfffffffd;
    SnapshotMetadata::SnapshotMetadata(aSStack_80);
    SnapshotSelectUIResponse::SnapshotSelectUIResponse(param_1,pSVar3);
    goto LAB_00528e2a;
  }
  SnapshotMetadata::SnapshotMetadata(aSStack_68);
  pSVar3 = (SnapshotSelectUIResponse *)&local_60;
  SnapshotMetadata::SnapshotMetadata(aSStack_5c);
  local_6c = 0xfffffffe;
  local_60 = 0xfffffffb;
  iVar2 = FUN_00553a80();
  if (iVar2 == 0) {
    local_88 = 0;
    local_8c = local_94;
    if (local_94 == (mutex *)0x0) {
                    /* WARNING: Subroutine does not return */
      FUN_007c4c60(1);
    }
    std::mutex::lock(local_94);
    local_88 = 1;
    if (local_94[8] == (mutex)0x0) {
      puVar4 = (unique_lock *)(local_94 + 4);
      FUN_007bfd24(&local_b0);
      lVar1 = (ulonglong)param_3 * 1000000 + CONCAT44(param_4 * 1000000,local_b0);
      local_a0 = (undefined4)lVar1;
      iStack_9c = iStack_ac + (int)((ulonglong)lVar1 >> 0x20);
      do {
        if (local_94[8] != (mutex)0x0) goto LAB_00528dd0;
        iVar2 = std::condition_variable::
                __wait_until_impl<std::chrono::duration<long_long,std::ratio<1ll,1000000000ll>>>
                          (puVar4,(time_point *)&local_8c);
      } while (iVar2 != 1);
      if (local_94[8] != (mutex)0x0) goto LAB_00528dd0;
    }
    else {
LAB_00528dd0:
      pSVar3 = (SnapshotSelectUIResponse *)(local_94 + 0xc);
    }
    SnapshotSelectUIResponse::SnapshotSelectUIResponse((SnapshotSelectUIResponse *)&local_54,pSVar3)
    ;
    std::unique_lock<std::mutex>::~unique_lock((unique_lock<std::mutex> *)&local_8c);
  }
  else {
    FUN_005166ae(4,"Blocking calls are not allowed from the UI thread.");
    SnapshotSelectUIResponse::SnapshotSelectUIResponse
              ((SnapshotSelectUIResponse *)&local_54,(SnapshotSelectUIResponse *)&local_6c);
  }
  pSVar3 = aSStack_78;
  SnapshotSelectUIResponse::SnapshotSelectUIResponse(pSVar3,(SnapshotSelectUIResponse *)&local_54);
  SnapshotMetadata::~SnapshotMetadata((SnapshotMetadata *)a_Stack_50);
  SnapshotMetadata::~SnapshotMetadata(aSStack_5c);
  SnapshotMetadata::~SnapshotMetadata(aSStack_68);
  SnapshotSelectUIResponse::SnapshotSelectUIResponse(param_1,pSVar3);
LAB_00528e2a:
  SnapshotMetadata::~SnapshotMetadata((SnapshotMetadata *)(pSVar3 + 4));
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)a_Stack_90);
  FUN_00516580(auStack_a8);
  return param_1;
}

// ---- gpg::SnapshotManager::ReadResponse::ReadResponse  @ 0x528e88
/* gpg::SnapshotManager::ReadResponse::ReadResponse(gpg::SnapshotManager::ReadResponse const&) */

ReadResponse * __thiscall
gpg::SnapshotManager::ReadResponse::ReadResponse(ReadResponse *this,ReadResponse *param_1)

{
  uchar *puVar1;
  int iVar2;
  int iVar3;
  uint uVar4;
  
  *(undefined4 *)this = *(undefined4 *)param_1;
  iVar3 = *(int *)(param_1 + 8);
  iVar2 = *(int *)(param_1 + 4);
  *(undefined4 *)(this + 4) = 0;
  uVar4 = iVar3 - iVar2;
  *(undefined4 *)(this + 8) = 0;
  *(undefined4 *)(this + 0xc) = 0;
  if (uVar4 == 0) {
    puVar1 = (uchar *)0x0;
  }
  else {
    puVar1 = operator_new(uVar4);
  }
  *(uchar **)(this + 4) = puVar1;
  *(uchar **)(this + 8) = puVar1;
  *(uchar **)(this + 0xc) = puVar1 + uVar4;
  puVar1 = std::__copy_move<false,true,std::random_access_iterator_tag>::__copy_m<unsigned_char>
                     (*(uchar **)(param_1 + 4),*(uchar **)(param_1 + 8),puVar1);
  *(uchar **)(this + 8) = puVar1;
  return this;
}

// ---- gpg::SnapshotManager::Read  @ 0x528fe0
/* gpg::SnapshotManager::Read(gpg::SnapshotMetadata const&, std::function<void
   (gpg::SnapshotManager::ReadResponse const&)>) */

void __thiscall
gpg::SnapshotManager::Read(SnapshotManager *this,SnapshotMetadata *param_1,function *param_3)

{
  function *pfVar1;
  int iVar2;
  int *piVar3;
  code *pcVar4;
  undefined1 auStack_ac [4];
  function<void(gpg::SnapshotManager::ReadResponse_const&)> afStack_a8 [8];
  int local_a0;
  function<void(gpg::SnapshotManager::ReadResponse_const&)> afStack_98 [8];
  int local_90;
  function<void(std::function<void()>)> afStack_88 [16];
  function afStack_78 [8];
  undefined4 local_70;
  function<void(std::function<void()>)> afStack_68 [16];
  function<void(gpg::SnapshotManager::ReadResponse_const&)> afStack_58 [16];
  undefined4 local_48;
  int local_44;
  int local_40;
  int local_3c;
  function<void(gpg::SnapshotManager::ReadResponse_const&)> afStack_38 [8];
  undefined4 local_30;
  
  FUN_00510a86((function<void(std::function<void()>)> *)&local_48,*(undefined4 *)this);
  FUN_0051683e(auStack_ac,(function<void(std::function<void()>)> *)&local_48);
  FUN_0050811a((function<void(std::function<void()>)> *)&local_48);
  pfVar1 = (function *)FUN_0051075c(*(undefined4 *)this);
  std::function<void(gpg::SnapshotManager::ReadResponse_const&)>::function(afStack_a8,param_3);
  if (local_a0 == 0) {
    local_90 = local_a0;
    local_40 = local_a0;
  }
  else {
    local_90 = 0;
    std::function<void(gpg::SnapshotManager::ReadResponse_const&)>::swap
              (afStack_a8,(function *)afStack_98);
    std::function<void(std::function<void()>)>::function
              ((function<void(std::function<void()>)> *)&local_48,pfVar1);
  }
  local_30 = 0;
  std::function<void(gpg::SnapshotManager::ReadResponse_const&)>::swap
            (afStack_98,(function *)afStack_38);
  std::function<void(std::function<void()>)>::function(afStack_88,(function *)&local_48);
  local_70 = 0;
  std::function<void(gpg::SnapshotManager::ReadResponse_const&)>::swap(afStack_38,afStack_78);
  FUN_00526878((function<void(std::function<void()>)> *)&local_48);
  std::_Function_base::~_Function_base((_Function_base *)afStack_98);
  std::_Function_base::~_Function_base((_Function_base *)afStack_a8);
  iVar2 = SnapshotMetadata::Valid(param_1);
  if (iVar2 == 0) {
    FUN_005166ae(4,"Trying to read an invalid snapshot: skipping.");
    local_48 = 0xfffffffe;
    local_44 = 0;
    local_40 = 0;
    local_3c = 0;
    FUN_00528f28(afStack_88,(function<void(std::function<void()>)> *)&local_48);
  }
  else {
    piVar3 = *(int **)this;
    pcVar4 = *(code **)(*piVar3 + 0x98);
    std::function<void(std::function<void()>)>::function(afStack_68,(function *)afStack_88);
    std::function<void(gpg::SnapshotManager::ReadResponse_const&)>::function(afStack_58,afStack_78);
    iVar2 = (*pcVar4)(piVar3,param_1,afStack_68);
    FUN_00526878(afStack_68);
    if (iVar2 != 0) goto LAB_00529116;
    local_48 = 0xfffffffd;
    local_44 = iVar2;
    local_40 = iVar2;
    local_3c = iVar2;
    FUN_00528f28(afStack_88,(function<void(std::function<void()>)> *)&local_48);
  }
  std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::~_Vector_base
            ((_Vector_base<unsigned_char,std::allocator<unsigned_char>> *)&local_44);
LAB_00529116:
  FUN_00526878(afStack_88);
  FUN_00516580(auStack_ac);
  return;
}

// ---- gpg::SnapshotMetadata::SnapshotMetadata  @ 0x529158
/* gpg::SnapshotMetadata::SnapshotMetadata() */

void __thiscall gpg::SnapshotMetadata::SnapshotMetadata(SnapshotMetadata *this)

{
  *(undefined4 *)this = 0;
  *(undefined4 *)(this + 4) = 0;
  return;
}

// ---- gpg::SnapshotMetadata::SnapshotMetadata  @ 0x529160
/* gpg::SnapshotMetadata::SnapshotMetadata(std::shared_ptr<gpg::SnapshotMetadataImpl>) */

void __thiscall gpg::SnapshotMetadata::SnapshotMetadata(SnapshotMetadata *this,undefined4 *param_2)

{
  bool bVar1;
  int iVar2;
  int *piVar3;
  
  *(undefined4 *)this = *param_2;
  iVar2 = param_2[1];
  *(int *)(this + 4) = iVar2;
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

// ---- gpg::SnapshotMetadata::SnapshotMetadata  @ 0x529184
/* gpg::SnapshotMetadata::SnapshotMetadata(gpg::SnapshotMetadata const&) */

void __thiscall
gpg::SnapshotMetadata::SnapshotMetadata(SnapshotMetadata *this,SnapshotMetadata *param_1)

{
  bool bVar1;
  int iVar2;
  int *piVar3;
  
  *(undefined4 *)this = *(undefined4 *)param_1;
  iVar2 = *(int *)(param_1 + 4);
  *(int *)(this + 4) = iVar2;
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

// ---- gpg::SnapshotMetadata::SnapshotMetadata  @ 0x5291a8
/* gpg::SnapshotMetadata::SnapshotMetadata(gpg::SnapshotMetadata&&) */

void __thiscall
gpg::SnapshotMetadata::SnapshotMetadata(SnapshotMetadata *this,SnapshotMetadata *param_1)

{
  undefined4 uVar1;
  
  *(undefined4 *)this = *(undefined4 *)param_1;
  *(undefined4 *)(this + 4) = 0;
  uVar1 = *(undefined4 *)(param_1 + 4);
  *(undefined4 *)(param_1 + 4) = 0;
  *(undefined4 *)(this + 4) = uVar1;
  *(undefined4 *)param_1 = 0;
  return;
}

// ---- gpg::SnapshotMetadata::Valid  @ 0x5291bc
/* gpg::SnapshotMetadata::Valid() const */

bool __thiscall gpg::SnapshotMetadata::Valid(SnapshotMetadata *this)

{
  return *(int *)this != 0;
}

// ---- gpg::SnapshotMetadata::IsOpen  @ 0x5291c8
/* gpg::SnapshotMetadata::IsOpen() const */

undefined4 __thiscall gpg::SnapshotMetadata::IsOpen(SnapshotMetadata *this)

{
  int iVar1;
  int *piVar2;
  undefined4 uVar3;
  int iVar4;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting check if an invalid SnapshotMetadata is open");
    uVar3 = 0;
  }
  else {
    iVar4 = *(int *)this;
    iVar1 = pthread_mutex_lock((pthread_mutex_t *)(iVar4 + 0x40));
    if (iVar1 != 0) {
                    /* WARNING: Subroutine does not return */
      FUN_007c4c60();
    }
    iVar1 = *(int *)this;
    if (*(char *)(iVar1 + 0x44) == '\0') {
      if (*(int *)(iVar1 + 0x4c) == 0) {
        piVar2 = *(int **)(iVar1 + 0x48);
      }
      else {
        piVar2 = (int *)(*(int *)(iVar1 + 0x4c) + 0x20);
      }
      uVar3 = (**(code **)(*piVar2 + 0xc))();
    }
    else {
      uVar3 = 0;
    }
    pthread_mutex_unlock((pthread_mutex_t *)(iVar4 + 0x40));
  }
  return uVar3;
}

// ---- gpg::SnapshotMetadata::FileName  @ 0x52922c
/* gpg::SnapshotMetadata::FileName() const */

undefined4 * __thiscall gpg::SnapshotMetadata::FileName(SnapshotMetadata *this)

{
  int iVar1;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get file name of an invalid SnapshotMetadata");
    return &DAT_00960b7c;
  }
  return *(undefined4 **)(*(int *)this + 8);
}

// ---- gpg::SnapshotMetadata::Description  @ 0x529258
/* gpg::SnapshotMetadata::Description() const */

undefined4 * __thiscall gpg::SnapshotMetadata::Description(SnapshotMetadata *this)

{
  int iVar1;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get description of an invalid SnapshotMetadata");
    return &DAT_00960b7c;
  }
  return *(undefined4 **)(*(int *)this + 0xc);
}

// ---- gpg::SnapshotMetadata::PlayedTime  @ 0x529284
/* gpg::SnapshotMetadata::PlayedTime() const */

void gpg::SnapshotMetadata::PlayedTime(void)

{
  undefined4 *in_r0;
  int iVar1;
  SnapshotMetadata *in_r1;
  undefined4 uVar2;
  undefined4 uVar3;
  
  iVar1 = Valid(in_r1);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get played time of an invalid SnapshotMetadata");
    uVar2 = 0;
    uVar3 = 0;
  }
  else {
    uVar2 = *(undefined4 *)(*(int *)in_r1 + 0x10);
    uVar3 = *(undefined4 *)(*(int *)in_r1 + 0x14);
  }
  *in_r0 = uVar2;
  in_r0[1] = uVar3;
  return;
}

// ---- gpg::SnapshotMetadata::LastModifiedTime  @ 0x5292c0
/* gpg::SnapshotMetadata::LastModifiedTime() const */

void gpg::SnapshotMetadata::LastModifiedTime(void)

{
  undefined4 *in_r0;
  int iVar1;
  SnapshotMetadata *in_r1;
  undefined4 uVar2;
  undefined4 uVar3;
  
  iVar1 = Valid(in_r1);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get last modified of an invalid SnapshotMetadata");
    uVar2 = 0;
    uVar3 = 0;
  }
  else {
    uVar2 = *(undefined4 *)(*(int *)in_r1 + 0x18);
    uVar3 = *(undefined4 *)(*(int *)in_r1 + 0x1c);
  }
  *in_r0 = uVar2;
  in_r0[1] = uVar3;
  return;
}

// ---- gpg::SnapshotMetadata::ProgressValue  @ 0x5292fc
/* gpg::SnapshotMetadata::ProgressValue() const */

undefined8 __thiscall gpg::SnapshotMetadata::ProgressValue(SnapshotMetadata *this)

{
  int iVar1;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get progress values of an invalid SnapshotMetadata");
    return 0;
  }
  return *(undefined8 *)(*(int *)this + 0x28);
}

// ---- gpg::SnapshotMetadata::CoverImageURL  @ 0x52932c
/* gpg::SnapshotMetadata::CoverImageURL() const */

undefined4 * __thiscall gpg::SnapshotMetadata::CoverImageURL(SnapshotMetadata *this)

{
  int iVar1;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get CoverImageURL of an invalid SnapshotMetadata");
    return &DAT_00960b7c;
  }
  return *(undefined4 **)(*(int *)this + 0x20);
}

// ---- gpg::SnapshotMetadata::~SnapshotMetadata  @ 0x529358
/* gpg::SnapshotMetadata::~SnapshotMetadata() */

SnapshotMetadata * __thiscall gpg::SnapshotMetadata::~SnapshotMetadata(SnapshotMetadata *this)

{
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(this + 4));
  return this;
}

// ---- gpg::SnapshotMetadata::operator=  @ 0x529366
/* gpg::SnapshotMetadata::TEMPNAMEPLACEHOLDERVALUE(gpg::SnapshotMetadata&&) */

SnapshotMetadata * __thiscall
gpg::SnapshotMetadata::operator=(SnapshotMetadata *this,SnapshotMetadata *param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 local_c;
  
  uVar1 = *(undefined4 *)param_1;
  uVar2 = *(undefined4 *)(param_1 + 4);
  *(undefined4 *)(param_1 + 4) = 0;
  *(undefined4 *)param_1 = 0;
  *(undefined4 *)this = uVar1;
  local_c = *(undefined4 *)(this + 4);
  *(undefined4 *)(this + 4) = uVar2;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_c);
  return this;
}

// ---- gpg::SnapshotMetadata::operator=  @ 0x52938c
/* gpg::SnapshotMetadata::TEMPNAMEPLACEHOLDERVALUE(gpg::SnapshotMetadata const&) */

SnapshotMetadata * __thiscall
gpg::SnapshotMetadata::operator=(SnapshotMetadata *this,SnapshotMetadata *param_1)

{
  bool bVar1;
  int *piVar2;
  int iVar3;
  
  *(undefined4 *)this = *(undefined4 *)param_1;
  iVar3 = *(int *)(param_1 + 4);
  if (iVar3 != *(int *)(this + 4)) {
    if (iVar3 != 0) {
      piVar2 = (int *)(iVar3 + 4);
      DataMemoryBarrier(0x1f);
      do {
        ExclusiveAccess(piVar2);
        bVar1 = (bool)hasExclusiveAccess(piVar2);
      } while (!bVar1);
      *piVar2 = *piVar2 + 1;
      DataMemoryBarrier(0x1f);
    }
    if (*(int *)(this + 4) != 0) {
      FUN_0033ce90();
    }
    *(int *)(this + 4) = iVar3;
  }
  return this;
}

// ---- gpg::SnapshotMetadataChange::SnapshotMetadataChange  @ 0x5293c4
/* gpg::SnapshotMetadataChange::SnapshotMetadataChange(gpg::SnapshotMetadataChange const&) */

void __thiscall
gpg::SnapshotMetadataChange::SnapshotMetadataChange
          (SnapshotMetadataChange *this,SnapshotMetadataChange *param_1)

{
  bool bVar1;
  int iVar2;
  int *piVar3;
  
  *(undefined4 *)this = *(undefined4 *)param_1;
  iVar2 = *(int *)(param_1 + 4);
  *(int *)(this + 4) = iVar2;
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

// ---- gpg::SnapshotMetadataChange::SnapshotMetadataChange  @ 0x5293e8
/* gpg::SnapshotMetadataChange::SnapshotMetadataChange(gpg::SnapshotMetadataChange&&) */

void __thiscall
gpg::SnapshotMetadataChange::SnapshotMetadataChange
          (SnapshotMetadataChange *this,SnapshotMetadataChange *param_1)

{
  undefined4 uVar1;
  
  *(undefined4 *)this = *(undefined4 *)param_1;
  *(undefined4 *)(this + 4) = 0;
  uVar1 = *(undefined4 *)(param_1 + 4);
  *(undefined4 *)(param_1 + 4) = 0;
  *(undefined4 *)(this + 4) = uVar1;
  *(undefined4 *)param_1 = 0;
  return;
}

// ---- gpg::SnapshotMetadataChange::Valid  @ 0x5293fc
/* gpg::SnapshotMetadataChange::Valid() const */

bool __thiscall gpg::SnapshotMetadataChange::Valid(SnapshotMetadataChange *this)

{
  return *(int *)this != 0;
}

// ---- gpg::SnapshotMetadataChange::PlayedTimeIsChanged  @ 0x529408
/* gpg::SnapshotMetadataChange::PlayedTimeIsChanged() const */

undefined4 __thiscall gpg::SnapshotMetadataChange::PlayedTimeIsChanged(SnapshotMetadataChange *this)

{
  int iVar1;
  undefined4 uVar2;
  
  iVar1 = Valid(this);
  uVar2 = 0;
  if (iVar1 != 0) {
    if (*(int *)(*(int *)this + 0xc) == -1 && *(int *)(*(int *)this + 8) == -1) {
      uVar2 = 0;
    }
    else {
      uVar2 = 1;
    }
  }
  return uVar2;
}

// ---- gpg::SnapshotMetadataChange::PlayedTime  @ 0x529434
/* gpg::SnapshotMetadataChange::PlayedTime() const */

void gpg::SnapshotMetadataChange::PlayedTime(void)

{
  undefined4 *in_r0;
  int iVar1;
  SnapshotMetadataChange *in_r1;
  undefined4 uVar2;
  undefined4 uVar3;
  
  iVar1 = PlayedTimeIsChanged(in_r1);
  if (iVar1 == 0) {
    uVar2 = 0;
    uVar3 = 0;
  }
  else {
    uVar2 = *(undefined4 *)(*(int *)in_r1 + 8);
    uVar3 = *(undefined4 *)(*(int *)in_r1 + 0xc);
  }
  *in_r0 = uVar2;
  in_r0[1] = uVar3;
  return;
}

// ---- gpg::SnapshotMetadataChange::ProgressValue  @ 0x529460
/* gpg::SnapshotMetadataChange::ProgressValue() const */

undefined8 __thiscall gpg::SnapshotMetadataChange::ProgressValue(SnapshotMetadataChange *this)

{
  int iVar1;
  
  iVar1 = PlayedTimeIsChanged(this);
  if (iVar1 != 0) {
    return *(undefined8 *)(*(int *)this + 0x10);
  }
  return 0;
}

// ---- gpg::SnapshotMetadataChange::ProgressValueIsChanged  @ 0x529484
/* gpg::SnapshotMetadataChange::ProgressValueIsChanged() const */

undefined4 __thiscall
gpg::SnapshotMetadataChange::ProgressValueIsChanged(SnapshotMetadataChange *this)

{
  int iVar1;
  undefined4 uVar2;
  
  iVar1 = Valid(this);
  uVar2 = 0;
  if (iVar1 != 0) {
    if (*(int *)(*(int *)this + 0x14) == -1 && *(int *)(*(int *)this + 0x10) == -1) {
      uVar2 = 0;
    }
    else {
      uVar2 = 1;
    }
  }
  return uVar2;
}

// ---- gpg::SnapshotMetadataChange::SnapshotMetadataChange  @ 0x5294b0
/* gpg::SnapshotMetadataChange::SnapshotMetadataChange(std::shared_ptr<gpg::SnapshotMetadataChangeImpl
   const>) */

SnapshotMetadataChange * __thiscall
gpg::SnapshotMetadataChange::SnapshotMetadataChange
          (SnapshotMetadataChange *this,undefined4 *param_2)

{
  *(undefined4 *)this = *param_2;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(this + 4),
             (__shared_count *)(param_2 + 1));
  return this;
}

// ---- gpg::SnapshotMetadataChange::~SnapshotMetadataChange  @ 0x5294c4
/* gpg::SnapshotMetadataChange::~SnapshotMetadataChange() */

SnapshotMetadataChange * __thiscall
gpg::SnapshotMetadataChange::~SnapshotMetadataChange(SnapshotMetadataChange *this)

{
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(this + 4));
  return this;
}

// ---- gpg::SnapshotMetadataChange::Image  @ 0x5294d2
/* gpg::SnapshotMetadataChange::Image() const */

void gpg::SnapshotMetadataChange::Image(void)

{
  int *in_r1;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_14 [8];
  
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_14,(__shared_count *)(*in_r1 + 0x1c));
  CoverImage::CoverImage();
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_14);
  return;
}

// ---- gpg::SnapshotMetadataChange::SnapshotMetadataChange  @ 0x529508
/* gpg::SnapshotMetadataChange::SnapshotMetadataChange() */

SnapshotMetadataChange * __thiscall
gpg::SnapshotMetadataChange::SnapshotMetadataChange(SnapshotMetadataChange *this)

{
  undefined4 local_c;
  
  *(undefined4 *)this = 0;
  *(undefined4 *)(this + 4) = 0;
  local_c = 0;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_c);
  return this;
}

// ---- gpg::SnapshotMetadataChange::operator=  @ 0x529522
/* gpg::SnapshotMetadataChange::TEMPNAMEPLACEHOLDERVALUE(gpg::SnapshotMetadataChange&&) */

SnapshotMetadataChange * __thiscall
gpg::SnapshotMetadataChange::operator=(SnapshotMetadataChange *this,SnapshotMetadataChange *param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 local_c;
  
  uVar1 = *(undefined4 *)param_1;
  uVar2 = *(undefined4 *)(param_1 + 4);
  *(undefined4 *)(param_1 + 4) = 0;
  *(undefined4 *)param_1 = 0;
  *(undefined4 *)this = uVar1;
  local_c = *(undefined4 *)(this + 4);
  *(undefined4 *)(this + 4) = uVar2;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_c);
  return this;
}

// ---- gpg::SnapshotMetadataChange::operator=  @ 0x529548
/* gpg::SnapshotMetadataChange::TEMPNAMEPLACEHOLDERVALUE(gpg::SnapshotMetadataChange const&) */

SnapshotMetadataChange * __thiscall
gpg::SnapshotMetadataChange::operator=(SnapshotMetadataChange *this,SnapshotMetadataChange *param_1)

{
  bool bVar1;
  int *piVar2;
  int iVar3;
  
  *(undefined4 *)this = *(undefined4 *)param_1;
  iVar3 = *(int *)(param_1 + 4);
  if (iVar3 != *(int *)(this + 4)) {
    if (iVar3 != 0) {
      piVar2 = (int *)(iVar3 + 4);
      DataMemoryBarrier(0x1f);
      do {
        ExclusiveAccess(piVar2);
        bVar1 = (bool)hasExclusiveAccess(piVar2);
      } while (!bVar1);
      *piVar2 = *piVar2 + 1;
      DataMemoryBarrier(0x1f);
    }
    if (*(int *)(this + 4) != 0) {
      FUN_0033ce90();
    }
    *(int *)(this + 4) = iVar3;
  }
  return this;
}

// ---- gpg::SnapshotMetadataChange::ImageIsChanged  @ 0x529580
/* gpg::SnapshotMetadataChange::ImageIsChanged() const */

byte __thiscall gpg::SnapshotMetadataChange::ImageIsChanged(SnapshotMetadataChange *this)

{
  byte bVar1;
  int iVar2;
  
  iVar2 = Valid(this);
  bVar1 = 0;
  if (iVar2 != 0) {
    bVar1 = std::operator==((string *)(*(int *)(*(int *)this + 0x18) + 0xc),(string *)&DAT_00960bc4)
    ;
    bVar1 = bVar1 ^ 1;
  }
  return bVar1;
}

// ---- gpg::SnapshotMetadataChange::DescriptionIsChanged  @ 0x5295a8
/* gpg::SnapshotMetadataChange::DescriptionIsChanged() const */

byte __thiscall gpg::SnapshotMetadataChange::DescriptionIsChanged(SnapshotMetadataChange *this)

{
  byte bVar1;
  int iVar2;
  
  iVar2 = Valid(this);
  bVar1 = 0;
  if (iVar2 != 0) {
    bVar1 = std::operator==(*(string **)this,(string *)&DAT_00960bc4);
    bVar1 = bVar1 ^ 1;
  }
  return bVar1;
}

// ---- gpg::SnapshotMetadataChange::Description  @ 0x5295cc
/* gpg::SnapshotMetadataChange::Description() const */

undefined4 * __thiscall gpg::SnapshotMetadataChange::Description(SnapshotMetadataChange *this)

{
  int iVar1;
  
  iVar1 = DescriptionIsChanged(this);
  if (iVar1 != 0) {
    return *(undefined4 **)this;
  }
  return &DAT_00960b7c;
}

// ---- gpg::SnapshotMetadataChange::Builder::Builder  @ 0x5296a8
/* gpg::SnapshotMetadataChange::Builder::Builder(std::shared_ptr<gpg::SnapshotMetadataChangeImpl>)
    */

void __thiscall gpg::SnapshotMetadataChange::Builder::Builder(Builder *this,undefined4 *param_2)

{
  bool bVar1;
  int iVar2;
  int *piVar3;
  
  *(undefined4 *)this = *param_2;
  iVar2 = param_2[1];
  *(int *)(this + 4) = iVar2;
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

// ---- gpg::SnapshotMetadataChange::Builder::Builder  @ 0x5296cc
/* gpg::SnapshotMetadataChange::Builder::Builder(gpg::SnapshotMetadataChange::Builder&&) */

void __thiscall gpg::SnapshotMetadataChange::Builder::Builder(Builder *this,Builder *param_1)

{
  undefined4 uVar1;
  
  *(undefined4 *)this = *(undefined4 *)param_1;
  *(undefined4 *)(this + 4) = 0;
  uVar1 = *(undefined4 *)(param_1 + 4);
  *(undefined4 *)(param_1 + 4) = 0;
  *(undefined4 *)(this + 4) = uVar1;
  *(undefined4 *)param_1 = 0;
  return;
}

// ---- gpg::SnapshotMetadataChange::Builder::SetDescription  @ 0x5296e0
/* gpg::SnapshotMetadataChange::Builder::SetDescription(std::string const&) */

string * gpg::SnapshotMetadataChange::Builder::SetDescription(string *param_1)

{
  thunk_FUN_007c653c(*(undefined4 *)param_1);
  return param_1;
}

// ---- gpg::SnapshotMetadataChange::Builder::SetPlayedTime  @ 0x5296ee
/* gpg::SnapshotMetadataChange::Builder::SetPlayedTime(std::chrono::duration<long long,
   std::ratio<1ll, 1000ll> >) */

void gpg::SnapshotMetadataChange::Builder::SetPlayedTime
               (int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  
  iVar1 = *param_1;
  *(undefined4 *)(iVar1 + 8) = param_3;
  *(undefined4 *)(iVar1 + 0xc) = param_4;
  return;
}

// ---- gpg::SnapshotMetadataChange::Builder::SetProgressValue  @ 0x5296f6
/* gpg::SnapshotMetadataChange::Builder::SetProgressValue(long long) */

void gpg::SnapshotMetadataChange::Builder::SetProgressValue(longlong param_1)

{
  int iVar1;
  undefined4 in_r2;
  undefined4 in_r3;
  
  iVar1 = *(int *)param_1;
  *(undefined4 *)(iVar1 + 0x10) = in_r2;
  *(undefined4 *)(iVar1 + 0x14) = in_r3;
  return;
}

// ---- gpg::SnapshotMetadataChange::Builder::Builder  @ 0x5296fe
/* gpg::SnapshotMetadataChange::Builder::Builder(gpg::SnapshotMetadataChange::Builder const&) */

Builder * __thiscall gpg::SnapshotMetadataChange::Builder::Builder(Builder *this,Builder *param_1)

{
  *(undefined4 *)this = *(undefined4 *)param_1;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(this + 4),
             (__shared_count *)(param_1 + 4));
  return this;
}

// ---- gpg::SnapshotMetadataChange::Builder::operator=  @ 0x529712
/* gpg::SnapshotMetadataChange::Builder::TEMPNAMEPLACEHOLDERVALUE(gpg::SnapshotMetadataChange::Builder&&)
    */

Builder * __thiscall gpg::SnapshotMetadataChange::Builder::operator=(Builder *this,Builder *param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 local_c;
  
  uVar1 = *(undefined4 *)param_1;
  uVar2 = *(undefined4 *)(param_1 + 4);
  *(undefined4 *)(param_1 + 4) = 0;
  *(undefined4 *)param_1 = 0;
  *(undefined4 *)this = uVar1;
  local_c = *(undefined4 *)(this + 4);
  *(undefined4 *)(this + 4) = uVar2;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_c);
  return this;
}

// ---- gpg::SnapshotMetadataChange::Builder::operator=  @ 0x529738
/* gpg::SnapshotMetadataChange::Builder::TEMPNAMEPLACEHOLDERVALUE(gpg::SnapshotMetadataChange::Builder
   const&) */

Builder * __thiscall gpg::SnapshotMetadataChange::Builder::operator=(Builder *this,Builder *param_1)

{
  bool bVar1;
  int *piVar2;
  int iVar3;
  
  *(undefined4 *)this = *(undefined4 *)param_1;
  iVar3 = *(int *)(param_1 + 4);
  if (iVar3 != *(int *)(this + 4)) {
    if (iVar3 != 0) {
      piVar2 = (int *)(iVar3 + 4);
      DataMemoryBarrier(0x1f);
      do {
        ExclusiveAccess(piVar2);
        bVar1 = (bool)hasExclusiveAccess(piVar2);
      } while (!bVar1);
      *piVar2 = *piVar2 + 1;
      DataMemoryBarrier(0x1f);
    }
    if (*(int *)(this + 4) != 0) {
      FUN_0033ce90();
    }
    *(int *)(this + 4) = iVar3;
  }
  return this;
}

// ---- gpg::SnapshotMetadataChange::Builder::SetCoverImage  @ 0x529770
/* gpg::SnapshotMetadataChange::Builder::SetCoverImage(std::vector<unsigned char,
   std::allocator<unsigned char> >, std::string, int, int) */

Builder * __thiscall
gpg::SnapshotMetadataChange::Builder::SetCoverImage
          (Builder *this,int *param_2,undefined4 param_3,undefined4 param_4,undefined4 param_5)

{
  int iVar1;
  int *piVar2;
  int local_24;
  int local_20;
  int local_1c;
  
  if ((char *)(param_2[1] - *param_2) < "ssageDispatcher20getPlayerPowerUpDataE8ItemTypeb") {
    piVar2 = *(int **)(*(int *)this + 0x18);
    local_24 = *piVar2;
    *piVar2 = 0;
    local_20 = piVar2[1];
    piVar2[1] = 0;
    local_1c = piVar2[2];
    piVar2[2] = 0;
    iVar1 = *piVar2;
    *piVar2 = *param_2;
    *param_2 = iVar1;
    iVar1 = piVar2[1];
    piVar2[1] = param_2[1];
    param_2[1] = iVar1;
    iVar1 = piVar2[2];
    piVar2[2] = param_2[2];
    param_2[2] = iVar1;
    std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::~_Vector_base
              ((_Vector_base<unsigned_char,std::allocator<unsigned_char>> *)&local_24);
    thunk_FUN_007c653c(*(int *)(*(int *)this + 0x18) + 0xc,param_3);
    *(undefined4 *)(*(int *)(*(int *)this + 0x18) + 0x10) = param_4;
    *(undefined4 *)(*(int *)(*(int *)this + 0x18) + 0x14) = param_5;
  }
  else {
    FUN_005166ae(4,"Snapshot image data too large, ignoring.");
  }
  return this;
}

// ---- gpg::SnapshotMetadataChange::Builder::SetCoverImageFromPngData  @ 0x5297f8
/* gpg::SnapshotMetadataChange::Builder::SetCoverImageFromPngData(std::vector<unsigned char,
   std::allocator<unsigned char> >) */

undefined4 __thiscall
gpg::SnapshotMetadataChange::Builder::SetCoverImageFromPngData(Builder *this,undefined4 *param_2)

{
  undefined4 uVar1;
  undefined1 auStack_2c [4];
  undefined1 auStack_28 [4];
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  
  local_20 = param_2[1];
  local_24 = *param_2;
  local_1c = param_2[2];
  *param_2 = 0;
  param_2[1] = 0;
  param_2[2] = 0;
  FUN_007c6a60(auStack_28,"image/png",auStack_2c);
  uVar1 = SetCoverImage(this,(_Vector_base<unsigned_char,std::allocator<unsigned_char>> *)&local_24,
                        auStack_28,0,0);
  FUN_007c5914(auStack_28);
  std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::~_Vector_base
            ((_Vector_base<unsigned_char,std::allocator<unsigned_char>> *)&local_24);
  return uVar1;
}

// ---- gpg::SnapshotMetadataChange::Builder::Builder  @ 0x529a2c
/* gpg::SnapshotMetadataChange::Builder::Builder() */

Builder * __thiscall gpg::SnapshotMetadataChange::Builder::Builder(Builder *this)

{
  undefined4 *puVar1;
  undefined1 auStack_38 [4];
  undefined1 *local_34;
  undefined4 local_30;
  undefined4 local_2c;
  undefined4 local_28;
  __shared_count a_Stack_24 [4];
  
  FUN_007c64e8(&local_34,&DAT_00960bc4);
  local_30 = 0;
  local_2c = 0;
  FUN_00529904(&local_28,0,auStack_38,&DAT_00960bb0,&DAT_00960bc4,&local_30,&local_2c);
  puVar1 = operator_new(0x20);
  *puVar1 = local_34;
  puVar1[4] = 0xffffffff;
  puVar1[5] = 0xffffffff;
  local_34 = &DAT_00972528;
  puVar1[2] = 0xffffffff;
  puVar1[3] = 0xffffffff;
  puVar1[6] = local_28;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(puVar1 + 7),a_Stack_24);
  FUN_005298a4(this,puVar1);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)a_Stack_24);
  FUN_007c5914(&local_34);
  return this;
}

// ---- gpg::SnapshotMetadataChange::Builder::Create  @ 0x529ba4
/* gpg::SnapshotMetadataChange::Builder::Create() const */

void gpg::SnapshotMetadataChange::Builder::Create(void)

{
  SnapshotMetadataChange *in_r0;
  undefined4 *in_r1;
  undefined4 local_30;
  __shared_count a_Stack_2c [4];
  undefined4 local_28;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_24 [4];
  SnapshotMetadataChange aSStack_20 [12];
  
  FUN_00529aec(&local_30,0,aSStack_20,*in_r1);
  local_28 = local_30;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count(a_Stack_24,a_Stack_2c);
  SnapshotMetadataChange(aSStack_20,&local_28);
  SnapshotMetadataChange(in_r0,aSStack_20);
  ~SnapshotMetadataChange(aSStack_20);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_24);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)a_Stack_2c);
  return;
}

// ---- gpg::SnapshotMetadataChange::CoverImage::CoverImage  @ 0x529c0e
/* gpg::SnapshotMetadataChange::CoverImage::CoverImage(std::shared_ptr<gpg::SnapshotMetadataChangeCoverImageImpl
   const>) */

void __thiscall
gpg::SnapshotMetadataChange::CoverImage::CoverImage(CoverImage *this,undefined4 *param_2)

{
  bool bVar1;
  int iVar2;
  int *piVar3;
  
  *(undefined4 *)this = *param_2;
  iVar2 = param_2[1];
  *(int *)(this + 4) = iVar2;
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

// ---- gpg::SnapshotMetadataChange::CoverImage::CoverImage  @ 0x529c32
/* gpg::SnapshotMetadataChange::CoverImage::CoverImage(gpg::SnapshotMetadataChange::CoverImage
   const&) */

void __thiscall
gpg::SnapshotMetadataChange::CoverImage::CoverImage(CoverImage *this,CoverImage *param_1)

{
  bool bVar1;
  int iVar2;
  int *piVar3;
  
  *(undefined4 *)this = *(undefined4 *)param_1;
  iVar2 = *(int *)(param_1 + 4);
  *(int *)(this + 4) = iVar2;
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

// ---- gpg::SnapshotMetadataChange::CoverImage::CoverImage  @ 0x529c56
/* gpg::SnapshotMetadataChange::CoverImage::CoverImage(gpg::SnapshotMetadataChange::CoverImage&&) */

void __thiscall
gpg::SnapshotMetadataChange::CoverImage::CoverImage(CoverImage *this,CoverImage *param_1)

{
  undefined4 uVar1;
  
  *(undefined4 *)this = *(undefined4 *)param_1;
  *(undefined4 *)(this + 4) = 0;
  uVar1 = *(undefined4 *)(param_1 + 4);
  *(undefined4 *)(param_1 + 4) = 0;
  *(undefined4 *)(this + 4) = uVar1;
  *(undefined4 *)param_1 = 0;
  return;
}

// ---- gpg::SnapshotMetadataChange::CoverImage::Data  @ 0x529c6a
/* gpg::SnapshotMetadataChange::CoverImage::Data() const */

undefined4 __thiscall gpg::SnapshotMetadataChange::CoverImage::Data(CoverImage *this)

{
  return *(undefined4 *)this;
}

// ---- gpg::SnapshotMetadataChange::CoverImage::MimeType  @ 0x529c6e
/* gpg::SnapshotMetadataChange::CoverImage::MimeType() const */

int __thiscall gpg::SnapshotMetadataChange::CoverImage::MimeType(CoverImage *this)

{
  return *(int *)this + 0xc;
}

// ---- gpg::SnapshotMetadataChange::CoverImage::Width  @ 0x529c74
/* gpg::SnapshotMetadataChange::CoverImage::Width() const */

undefined4 __thiscall gpg::SnapshotMetadataChange::CoverImage::Width(CoverImage *this)

{
  return *(undefined4 *)(*(int *)this + 0x10);
}

// ---- gpg::SnapshotMetadataChange::CoverImage::Height  @ 0x529c7a
/* gpg::SnapshotMetadataChange::CoverImage::Height() const */

undefined4 __thiscall gpg::SnapshotMetadataChange::CoverImage::Height(CoverImage *this)

{
  return *(undefined4 *)(*(int *)this + 0x14);
}

// ---- gpg::SnapshotMetadataChange::CoverImage::~CoverImage  @ 0x529c80
/* gpg::SnapshotMetadataChange::CoverImage::~CoverImage() */

CoverImage * __thiscall gpg::SnapshotMetadataChange::CoverImage::~CoverImage(CoverImage *this)

{
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(this + 4));
  return this;
}

// ---- gpg::SnapshotMetadataChange::CoverImage::operator=  @ 0x529c8e
/* gpg::SnapshotMetadataChange::CoverImage::TEMPNAMEPLACEHOLDERVALUE(gpg::SnapshotMetadataChange::CoverImage&&)
    */

CoverImage * __thiscall
gpg::SnapshotMetadataChange::CoverImage::operator=(CoverImage *this,CoverImage *param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 local_c;
  
  uVar1 = *(undefined4 *)param_1;
  uVar2 = *(undefined4 *)(param_1 + 4);
  *(undefined4 *)(param_1 + 4) = 0;
  *(undefined4 *)param_1 = 0;
  *(undefined4 *)this = uVar1;
  local_c = *(undefined4 *)(this + 4);
  *(undefined4 *)(this + 4) = uVar2;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_c);
  return this;
}

// ---- gpg::SnapshotMetadataChange::CoverImage::operator=  @ 0x529cb4
/* gpg::SnapshotMetadataChange::CoverImage::TEMPNAMEPLACEHOLDERVALUE(gpg::SnapshotMetadataChange::CoverImage
   const&) */

CoverImage * __thiscall
gpg::SnapshotMetadataChange::CoverImage::operator=(CoverImage *this,CoverImage *param_1)

{
  bool bVar1;
  int *piVar2;
  int iVar3;
  
  *(undefined4 *)this = *(undefined4 *)param_1;
  iVar3 = *(int *)(param_1 + 4);
  if (iVar3 != *(int *)(this + 4)) {
    if (iVar3 != 0) {
      piVar2 = (int *)(iVar3 + 4);
      DataMemoryBarrier(0x1f);
      do {
        ExclusiveAccess(piVar2);
        bVar1 = (bool)hasExclusiveAccess(piVar2);
      } while (!bVar1);
      *piVar2 = *piVar2 + 1;
      DataMemoryBarrier(0x1f);
    }
    if (*(int *)(this + 4) != 0) {
      FUN_0033ce90();
    }
    *(int *)(this + 4) = iVar3;
  }
  return this;
}

// ---- gpg::IsSuccess  @ 0x529cec
/* gpg::IsSuccess(gpg::BaseStatus::StatusCode) */

bool gpg::IsSuccess(int param_1)

{
  return 0 < param_1;
}

// ---- gpg::IsSuccess  @ 0x529cf6
/* gpg::IsSuccess(gpg::AuthStatus) */

bool gpg::IsSuccess(int param_1)

{
  return 0 < param_1;
}

// ---- gpg::IsSuccess  @ 0x529d00
/* gpg::IsSuccess(gpg::ResponseStatus) */

bool gpg::IsSuccess(int param_1)

{
  return 0 < param_1;
}

// ---- gpg::IsSuccess  @ 0x529d0a
/* gpg::IsSuccess(gpg::FlushStatus) */

bool gpg::IsSuccess(int param_1)

{
  return 0 < param_1;
}

// ---- gpg::IsSuccess  @ 0x529d14
/* gpg::IsSuccess(gpg::UIStatus) */

bool gpg::IsSuccess(int param_1)

{
  return 0 < param_1;
}

// ---- gpg::IsSuccess  @ 0x529d1e
/* gpg::IsSuccess(gpg::MultiplayerStatus) */

bool gpg::IsSuccess(int param_1)

{
  return 0 < param_1;
}

// ---- gpg::IsSuccess  @ 0x529d28
/* gpg::IsSuccess(gpg::QuestAcceptStatus) */

bool gpg::IsSuccess(int param_1)

{
  return 0 < param_1;
}

// ---- gpg::IsSuccess  @ 0x529d32
/* gpg::IsSuccess(gpg::QuestClaimMilestoneStatus) */

bool gpg::IsSuccess(int param_1)

{
  return 0 < param_1;
}

// ---- gpg::IsSuccess  @ 0x529d3c
/* gpg::IsSuccess(gpg::SnapshotOpenStatus) */

bool gpg::IsSuccess(int param_1)

{
  return 0 < param_1;
}

// ---- gpg::IsError  @ 0x529d46
/* gpg::IsError(gpg::BaseStatus::StatusCode) */

byte gpg::IsError(void)

{
  byte bVar1;
  
  bVar1 = IsSuccess();
  return bVar1 ^ 1;
}

// ---- gpg::IsError  @ 0x529d54
/* gpg::IsError(gpg::AuthStatus) */

byte gpg::IsError(void)

{
  byte bVar1;
  
  bVar1 = IsSuccess();
  return bVar1 ^ 1;
}

// ---- gpg::IsError  @ 0x529d62
/* gpg::IsError(gpg::ResponseStatus) */

byte gpg::IsError(void)

{
  byte bVar1;
  
  bVar1 = IsSuccess();
  return bVar1 ^ 1;
}

// ---- gpg::IsError  @ 0x529d70
/* gpg::IsError(gpg::FlushStatus) */

byte gpg::IsError(void)

{
  byte bVar1;
  
  bVar1 = IsSuccess();
  return bVar1 ^ 1;
}

// ---- gpg::IsError  @ 0x529d7e
/* gpg::IsError(gpg::UIStatus) */

byte gpg::IsError(void)

{
  byte bVar1;
  
  bVar1 = IsSuccess();
  return bVar1 ^ 1;
}

// ---- gpg::IsError  @ 0x529d8c
/* gpg::IsError(gpg::MultiplayerStatus) */

byte gpg::IsError(void)

{
  byte bVar1;
  
  bVar1 = IsSuccess();
  return bVar1 ^ 1;
}

// ---- gpg::IsError  @ 0x529d9a
/* gpg::IsError(gpg::QuestAcceptStatus) */

byte gpg::IsError(void)

{
  byte bVar1;
  
  bVar1 = IsSuccess();
  return bVar1 ^ 1;
}

// ---- gpg::IsError  @ 0x529da8
/* gpg::IsError(gpg::QuestClaimMilestoneStatus) */

byte gpg::IsError(void)

{
  byte bVar1;
  
  bVar1 = IsSuccess();
  return bVar1 ^ 1;
}

// ---- gpg::IsError  @ 0x529db6
/* gpg::IsError(gpg::SnapshotOpenStatus) */

byte gpg::IsError(void)

{
  byte bVar1;
  
  bVar1 = IsSuccess();
  return bVar1 ^ 1;
}

// ---- gpg::TurnBasedMatch::TurnBasedMatch  @ 0x52a2ea
/* gpg::TurnBasedMatch::TurnBasedMatch() */

void __thiscall gpg::TurnBasedMatch::TurnBasedMatch(TurnBasedMatch *this)

{
  *(undefined4 *)this = 0;
  *(undefined4 *)(this + 4) = 0;
  return;
}

// ---- gpg::TurnBasedMatch::TurnBasedMatch  @ 0x52a2f2
/* gpg::TurnBasedMatch::TurnBasedMatch(std::shared_ptr<gpg::TurnBasedMatchImpl const>) */

void __thiscall gpg::TurnBasedMatch::TurnBasedMatch(TurnBasedMatch *this,undefined4 *param_2)

{
  bool bVar1;
  int iVar2;
  int *piVar3;
  
  *(undefined4 *)this = *param_2;
  iVar2 = param_2[1];
  *(int *)(this + 4) = iVar2;
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

// ---- gpg::TurnBasedMatch::TurnBasedMatch  @ 0x52a316
/* gpg::TurnBasedMatch::TurnBasedMatch(gpg::TurnBasedMatch const&) */

void __thiscall gpg::TurnBasedMatch::TurnBasedMatch(TurnBasedMatch *this,TurnBasedMatch *param_1)

{
  bool bVar1;
  int iVar2;
  int *piVar3;
  
  *(undefined4 *)this = *(undefined4 *)param_1;
  iVar2 = *(int *)(param_1 + 4);
  *(int *)(this + 4) = iVar2;
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

// ---- gpg::TurnBasedMatch::TurnBasedMatch  @ 0x52a33a
/* gpg::TurnBasedMatch::TurnBasedMatch(gpg::TurnBasedMatch&&) */

void __thiscall gpg::TurnBasedMatch::TurnBasedMatch(TurnBasedMatch *this,TurnBasedMatch *param_1)

{
  undefined4 uVar1;
  
  *(undefined4 *)this = *(undefined4 *)param_1;
  *(undefined4 *)(this + 4) = 0;
  uVar1 = *(undefined4 *)(param_1 + 4);
  *(undefined4 *)(param_1 + 4) = 0;
  *(undefined4 *)(this + 4) = uVar1;
  *(undefined4 *)param_1 = 0;
  return;
}

// ---- gpg::TurnBasedMatch::Valid  @ 0x52a34e
/* gpg::TurnBasedMatch::Valid() const */

bool __thiscall gpg::TurnBasedMatch::Valid(TurnBasedMatch *this)

{
  return *(int *)this != 0;
}

// ---- gpg::TurnBasedMatch::Id  @ 0x52a358
/* gpg::TurnBasedMatch::Id() const */

undefined4 * __thiscall gpg::TurnBasedMatch::Id(TurnBasedMatch *this)

{
  int iVar1;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get Id from an invalid TurnBasedMatch.");
    return &DAT_00960b7c;
  }
  return *(undefined4 **)this;
}

// ---- gpg::TurnBasedMatch::CreationTime  @ 0x52a380
/* gpg::TurnBasedMatch::CreationTime() const */

void gpg::TurnBasedMatch::CreationTime(void)

{
  undefined4 *in_r0;
  int iVar1;
  TurnBasedMatch *in_r1;
  undefined4 uVar2;
  undefined4 uVar3;
  
  iVar1 = Valid(in_r1);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get creation time from an invalid TurnBasedMatch.");
    uVar2 = 0;
    uVar3 = 0;
  }
  else {
    uVar2 = *(undefined4 *)(*(int *)in_r1 + 8);
    uVar3 = *(undefined4 *)(*(int *)in_r1 + 0xc);
  }
  *in_r0 = uVar2;
  in_r0[1] = uVar3;
  return;
}

// ---- gpg::TurnBasedMatch::LastUpdateTime  @ 0x52a3b0
/* gpg::TurnBasedMatch::LastUpdateTime() const */

void gpg::TurnBasedMatch::LastUpdateTime(void)

{
  undefined4 *in_r0;
  int iVar1;
  TurnBasedMatch *in_r1;
  undefined4 uVar2;
  undefined4 uVar3;
  
  iVar1 = Valid(in_r1);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get last update time from an invalid TurnBasedMatch.");
    uVar2 = 0;
    uVar3 = 0;
  }
  else {
    uVar2 = *(undefined4 *)(*(int *)in_r1 + 0x20);
    uVar3 = *(undefined4 *)(*(int *)in_r1 + 0x24);
  }
  *in_r0 = uVar2;
  in_r0[1] = uVar3;
  return;
}

// ---- gpg::TurnBasedMatch::CreatingParticipant  @ 0x52a3e0
/* gpg::TurnBasedMatch::CreatingParticipant() const */

void gpg::TurnBasedMatch::CreatingParticipant(void)

{
  MultiplayerParticipant *in_r0;
  int iVar1;
  TurnBasedMatch *in_r1;
  MultiplayerParticipant aMStack_18 [12];
  
  iVar1 = Valid(in_r1);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get creating participant from an invalid TurnBasedMatch.");
    MultiplayerParticipant::MultiplayerParticipant(aMStack_18);
    MultiplayerParticipant::MultiplayerParticipant(in_r0,aMStack_18);
    MultiplayerParticipant::~MultiplayerParticipant(aMStack_18);
  }
  else {
    MultiplayerParticipant::MultiplayerParticipant
              (in_r0,(MultiplayerParticipant *)(*(int *)in_r1 + 0x10));
  }
  return;
}

// ---- gpg::TurnBasedMatch::LastUpdatingParticipant  @ 0x52a430
/* gpg::TurnBasedMatch::LastUpdatingParticipant() const */

void gpg::TurnBasedMatch::LastUpdatingParticipant(void)

{
  MultiplayerParticipant *in_r0;
  int iVar1;
  TurnBasedMatch *in_r1;
  MultiplayerParticipant aMStack_18 [12];
  
  iVar1 = Valid(in_r1);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get last updating participant from an invalid TurnBasedMatch.");
    MultiplayerParticipant::MultiplayerParticipant(aMStack_18);
    MultiplayerParticipant::MultiplayerParticipant(in_r0,aMStack_18);
    MultiplayerParticipant::~MultiplayerParticipant(aMStack_18);
  }
  else {
    MultiplayerParticipant::MultiplayerParticipant
              (in_r0,(MultiplayerParticipant *)(*(int *)in_r1 + 0x28));
  }
  return;
}

// ---- gpg::TurnBasedMatch::PendingParticipant  @ 0x52a480
/* gpg::TurnBasedMatch::PendingParticipant() const */

void gpg::TurnBasedMatch::PendingParticipant(void)

{
  MultiplayerParticipant *in_r0;
  int iVar1;
  TurnBasedMatch *in_r1;
  MultiplayerParticipant aMStack_18 [12];
  
  iVar1 = Valid(in_r1);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get pending participant from an invalid TurnBasedMatch.");
    MultiplayerParticipant::MultiplayerParticipant(aMStack_18);
    MultiplayerParticipant::MultiplayerParticipant(in_r0,aMStack_18);
    MultiplayerParticipant::~MultiplayerParticipant(aMStack_18);
  }
  else {
    MultiplayerParticipant::MultiplayerParticipant
              (in_r0,(MultiplayerParticipant *)(*(int *)in_r1 + 0x30));
  }
  return;
}

// ---- gpg::TurnBasedMatch::Status  @ 0x52a4d0
/* gpg::TurnBasedMatch::Status() const */

undefined4 __thiscall gpg::TurnBasedMatch::Status(TurnBasedMatch *this)

{
  int iVar1;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get status from an invalid TurnBasedMatch.");
    return 6;
  }
  return *(undefined4 *)(*(int *)this + 0x38);
}

// ---- gpg::TurnBasedMatch::AutomatchingSlotsAvailable  @ 0x52a4f4
/* gpg::TurnBasedMatch::AutomatchingSlotsAvailable() const */

undefined4 __thiscall gpg::TurnBasedMatch::AutomatchingSlotsAvailable(TurnBasedMatch *this)

{
  int iVar1;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get available automatching slots from an invalid TurnBasedMatch.")
    ;
    return 0;
  }
  return *(undefined4 *)(*(int *)this + 0x70);
}

// ---- gpg::TurnBasedMatch::Variant  @ 0x52a518
/* gpg::TurnBasedMatch::Variant() const */

undefined4 __thiscall gpg::TurnBasedMatch::Variant(TurnBasedMatch *this)

{
  int iVar1;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get variant from an invalid TurnBasedMatch.");
    return 0;
  }
  return *(undefined4 *)(*(int *)this + 0x80);
}

// ---- gpg::TurnBasedMatch::Description  @ 0x52a540
/* gpg::TurnBasedMatch::Description() const */

undefined4 * __thiscall gpg::TurnBasedMatch::Description(TurnBasedMatch *this)

{
  int iVar1;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get description from an invalid TurnBasedMatch.");
    return &DAT_00960b7c;
  }
  return (undefined4 *)(*(int *)this + 0x3c);
}

// ---- gpg::TurnBasedMatch::Number  @ 0x52a56c
/* gpg::TurnBasedMatch::Number() const */

undefined4 __thiscall gpg::TurnBasedMatch::Number(TurnBasedMatch *this)

{
  int iVar1;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get Number from an invalid TurnBasedMatch.");
    return 0;
  }
  return *(undefined4 *)(*(int *)this + 0x88);
}

// ---- gpg::TurnBasedMatch::Version  @ 0x52a594
/* gpg::TurnBasedMatch::Version() const */

undefined4 __thiscall gpg::TurnBasedMatch::Version(TurnBasedMatch *this)

{
  int iVar1;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get Version from an invalid TurnBasedMatch.");
    return 0;
  }
  return *(undefined4 *)(*(int *)this + 0x84);
}

// ---- gpg::TurnBasedMatch::ParticipantResults  @ 0x52a5bc
/* gpg::TurnBasedMatch::ParticipantResults() const */

int __thiscall gpg::TurnBasedMatch::ParticipantResults(TurnBasedMatch *this)

{
  int iVar1;
  
  while (iVar1 = Valid(this), iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get participant results from an invalid TurnBasedMatch.");
  }
  return *(int *)this + 0x40;
}

// ---- gpg::TurnBasedMatch::Participants  @ 0x52a5e0
/* gpg::TurnBasedMatch::Participants() const */

undefined4 * __thiscall gpg::TurnBasedMatch::Participants(TurnBasedMatch *this)

{
  int iVar1;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get participants from an invalid TurnBasedMatch.");
    return &DAT_00960b94;
  }
  return (undefined4 *)(*(int *)this + 0x48);
}

// ---- gpg::TurnBasedMatch::HasPreviousMatchData  @ 0x52a60c
/* gpg::TurnBasedMatch::HasPreviousMatchData() const */

bool __thiscall gpg::TurnBasedMatch::HasPreviousMatchData(TurnBasedMatch *this)

{
  int iVar1;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to check previous data on an invalid TurnBasedMatch.");
    iVar1 = Valid(this);
    if (iVar1 != 0) {
      return *(int *)(*(int *)this + 100) != *(int *)(*(int *)this + 0x60);
    }
  }
  return false;
}

// ---- gpg::TurnBasedMatch::PreviousMatchData  @ 0x52a640
/* gpg::TurnBasedMatch::PreviousMatchData() const */

undefined4 * __thiscall gpg::TurnBasedMatch::PreviousMatchData(TurnBasedMatch *this)

{
  int iVar1;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get previous match data from an invalid TurnBasedMatch.");
    return &DAT_00960bb0;
  }
  return (undefined4 *)(*(int *)this + 0x60);
}

// ---- gpg::TurnBasedMatch::HasData  @ 0x52a66c
/* gpg::TurnBasedMatch::HasData() const */

undefined4 __thiscall gpg::TurnBasedMatch::HasData(TurnBasedMatch *this)

{
  int iVar1;
  undefined4 uVar2;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to check data on an invalid TurnBasedMatch.");
    uVar2 = 0;
  }
  else {
    iVar1 = Valid(this);
    uVar2 = 0;
    if ((iVar1 != 0) && (uVar2 = 0, *(int *)(*(int *)this + 0x58) != *(int *)(*(int *)this + 0x54)))
    {
      uVar2 = 1;
    }
  }
  return uVar2;
}

// ---- gpg::TurnBasedMatch::Data  @ 0x52a6a4
/* gpg::TurnBasedMatch::Data() const */

undefined4 * __thiscall gpg::TurnBasedMatch::Data(TurnBasedMatch *this)

{
  int iVar1;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get data from an invalid TurnBasedMatch.");
    return &DAT_00960bb0;
  }
  return (undefined4 *)(*(int *)this + 0x54);
}

// ---- gpg::TurnBasedMatch::HasRematchId  @ 0x52a6d0
/* gpg::TurnBasedMatch::HasRematchId() const */

undefined4 __thiscall gpg::TurnBasedMatch::HasRematchId(TurnBasedMatch *this)

{
  int iVar1;
  undefined4 uVar2;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting check whether an invalid TurnBasedMatch HasRematchId.");
    uVar2 = 0;
  }
  else {
    uVar2 = 0;
    if (*(int *)(*(int *)(*(int *)this + 0x8c) + -0xc) != 0) {
      uVar2 = 1;
    }
  }
  return uVar2;
}

// ---- gpg::TurnBasedMatch::RematchId  @ 0x52a700
/* gpg::TurnBasedMatch::RematchId() const */

undefined4 * __thiscall gpg::TurnBasedMatch::RematchId(TurnBasedMatch *this)

{
  int iVar1;
  
  iVar1 = Valid(this);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to get RematchId from an invalid TurnBasedMatch.");
    return &DAT_00960b7c;
  }
  return (undefined4 *)(*(int *)this + 0x8c);
}

// ---- gpg::TurnBasedMatch::SuggestedNextParticipant  @ 0x52a72c
/* gpg::TurnBasedMatch::SuggestedNextParticipant() const */

void gpg::TurnBasedMatch::SuggestedNextParticipant(void)

{
  MultiplayerParticipant *in_r0;
  int iVar1;
  undefined4 *puVar2;
  undefined4 *puVar3;
  TurnBasedMatch *in_r1;
  int extraout_r1;
  MultiplayerParticipant *pMVar4;
  size_t __n;
  uint uVar5;
  uint uVar6;
  MultiplayerParticipant aMStack_28 [12];
  
  iVar1 = Valid(in_r1);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Attempting to call SuggestedNextParticipant on an invalid TurnBasedMatch");
    MultiplayerParticipant::MultiplayerParticipant(aMStack_28);
    MultiplayerParticipant::MultiplayerParticipant(in_r0,aMStack_28);
  }
  else {
    uVar5 = 0;
    while( true ) {
      iVar1 = *(int *)(*(int *)in_r1 + 0x48);
      if ((uint)(*(int *)(*(int *)in_r1 + 0x4c) - iVar1 >> 3) <= uVar5) goto LAB_0052a814;
      puVar2 = (undefined4 *)
               MultiplayerParticipant::Id((MultiplayerParticipant *)(iVar1 + uVar5 * 8));
      puVar3 = (undefined4 *)
               MultiplayerParticipant::Id((MultiplayerParticipant *)(*(int *)in_r1 + 0x30));
      __n = *(size_t *)((int)*puVar2 + -0xc);
      if ((__n == *(size_t *)((int)*puVar3 + -0xc)) &&
         (iVar1 = memcmp((void *)*puVar2,(void *)*puVar3,__n), iVar1 == 0)) break;
      uVar5 = uVar5 + 1;
    }
    iVar1 = *(int *)in_r1;
    if ((uVar5 == (*(int *)(iVar1 + 0x4c) - *(int *)(iVar1 + 0x48) >> 3) - 1U) &&
       (*(int *)(iVar1 + 0x70) != 0)) {
      pMVar4 = (MultiplayerParticipant *)&TurnBasedMultiplayerManager::kAutomatchingParticipant;
      goto LAB_0052a836;
    }
    for (uVar6 = 1; iVar1 = *(int *)(*(int *)in_r1 + 0x48),
        uVar6 < (uint)(*(int *)(*(int *)in_r1 + 0x4c) - iVar1 >> 3); uVar6 = uVar6 + 1) {
      __aeabi_uidivmod(uVar6 + uVar5);
      iVar1 = MultiplayerParticipant::Status((MultiplayerParticipant *)(iVar1 + extraout_r1 * 8));
      if ((iVar1 == 2) || (iVar1 == 5)) {
        pMVar4 = (MultiplayerParticipant *)(*(int *)(*(int *)in_r1 + 0x48) + extraout_r1 * 8);
LAB_0052a836:
        MultiplayerParticipant::MultiplayerParticipant(in_r0,pMVar4);
        return;
      }
    }
    FUN_005166ae(4,"Trying to suggest a participant for a canceled or completed match.");
    MultiplayerParticipant::MultiplayerParticipant(aMStack_28);
    MultiplayerParticipant::MultiplayerParticipant(in_r0,aMStack_28);
  }
LAB_0052a7d8:
  MultiplayerParticipant::~MultiplayerParticipant(aMStack_28);
  return;
LAB_0052a814:
  FUN_005166ae(4,"Pending participant not found in participant list. Cannot recover.");
  MultiplayerParticipant::MultiplayerParticipant(aMStack_28);
  MultiplayerParticipant::MultiplayerParticipant(in_r0,aMStack_28);
  goto LAB_0052a7d8;
}

// ---- gpg::TurnBasedMatch::operator=  @ 0x52a854
/* gpg::TurnBasedMatch::TEMPNAMEPLACEHOLDERVALUE(gpg::TurnBasedMatch&&) */

TurnBasedMatch * __thiscall
gpg::TurnBasedMatch::operator=(TurnBasedMatch *this,TurnBasedMatch *param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 local_c;
  
  uVar1 = *(undefined4 *)param_1;
  uVar2 = *(undefined4 *)(param_1 + 4);
  *(undefined4 *)(param_1 + 4) = 0;
  *(undefined4 *)param_1 = 0;
  *(undefined4 *)this = uVar1;
  local_c = *(undefined4 *)(this + 4);
  *(undefined4 *)(this + 4) = uVar2;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_c);
  return this;
}

// ---- gpg::TurnBasedMatch::operator=  @ 0x52a87a
/* gpg::TurnBasedMatch::TEMPNAMEPLACEHOLDERVALUE(gpg::TurnBasedMatch const&) */

TurnBasedMatch * __thiscall
gpg::TurnBasedMatch::operator=(TurnBasedMatch *this,TurnBasedMatch *param_1)

{
  bool bVar1;
  int *piVar2;
  int iVar3;
  
  *(undefined4 *)this = *(undefined4 *)param_1;
  iVar3 = *(int *)(param_1 + 4);
  if (iVar3 != *(int *)(this + 4)) {
    if (iVar3 != 0) {
      piVar2 = (int *)(iVar3 + 4);
      DataMemoryBarrier(0x1f);
      do {
        ExclusiveAccess(piVar2);
        bVar1 = (bool)hasExclusiveAccess(piVar2);
      } while (!bVar1);
      *piVar2 = *piVar2 + 1;
      DataMemoryBarrier(0x1f);
    }
    if (*(int *)(this + 4) != 0) {
      FUN_0033ce90();
    }
    *(int *)(this + 4) = iVar3;
  }
  return this;
}

// ---- gpg::TurnBasedMatchConfig::TurnBasedMatchConfig  @ 0x52a8b2
/* gpg::TurnBasedMatchConfig::TurnBasedMatchConfig() */

void __thiscall gpg::TurnBasedMatchConfig::TurnBasedMatchConfig(TurnBasedMatchConfig *this)

{
  *(undefined4 *)this = 0;
  *(undefined4 *)(this + 4) = 0;
  return;
}

// ---- gpg::TurnBasedMatchConfig::TurnBasedMatchConfig  @ 0x52a8ba
/* gpg::TurnBasedMatchConfig::TurnBasedMatchConfig(std::shared_ptr<gpg::TurnBasedMatchConfigImpl
   const>) */

void __thiscall
gpg::TurnBasedMatchConfig::TurnBasedMatchConfig(TurnBasedMatchConfig *this,undefined4 *param_2)

{
  bool bVar1;
  int iVar2;
  int *piVar3;
  
  *(undefined4 *)this = *param_2;
  iVar2 = param_2[1];
  *(int *)(this + 4) = iVar2;
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

// ---- gpg::TurnBasedMatchConfig::TurnBasedMatchConfig  @ 0x52a8de
/* gpg::TurnBasedMatchConfig::TurnBasedMatchConfig(gpg::TurnBasedMatchConfig const&) */

void __thiscall
gpg::TurnBasedMatchConfig::TurnBasedMatchConfig
          (TurnBasedMatchConfig *this,TurnBasedMatchConfig *param_1)

{
  bool bVar1;
  int iVar2;
  int *piVar3;
  
  *(undefined4 *)this = *(undefined4 *)param_1;
  iVar2 = *(int *)(param_1 + 4);
  *(int *)(this + 4) = iVar2;
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

// ---- gpg::TurnBasedMatchConfig::TurnBasedMatchConfig  @ 0x52a902
/* gpg::TurnBasedMatchConfig::TurnBasedMatchConfig(gpg::TurnBasedMatchConfig&&) */

void __thiscall
gpg::TurnBasedMatchConfig::TurnBasedMatchConfig
          (TurnBasedMatchConfig *this,TurnBasedMatchConfig *param_1)

{
  undefined4 uVar1;
  
  *(undefined4 *)this = *(undefined4 *)param_1;
  *(undefined4 *)(this + 4) = 0;
  uVar1 = *(undefined4 *)(param_1 + 4);
  *(undefined4 *)(param_1 + 4) = 0;
  *(undefined4 *)(this + 4) = uVar1;
  *(undefined4 *)param_1 = 0;
  return;
}

// ---- gpg::TurnBasedMatchConfig::Valid  @ 0x52a916
/* gpg::TurnBasedMatchConfig::Valid() const */

bool __thiscall gpg::TurnBasedMatchConfig::Valid(TurnBasedMatchConfig *this)

{
  return *(int *)this != 0;
}

// ---- gpg::TurnBasedMatchConfig::PlayerIdsToInvite  @ 0x52a920
/* gpg::TurnBasedMatchConfig::PlayerIdsToInvite() const */

undefined4 * __thiscall gpg::TurnBasedMatchConfig::PlayerIdsToInvite(TurnBasedMatchConfig *this)

{
  int iVar1;
  
  iVar1 = Valid(this);
  if (iVar1 != 0) {
    return (undefined4 *)(*(int *)this + 0x14);
  }
  FUN_005166ae(4,"Attempting to get player ids from an invalid TurnBasedMatchConfig.");
  return &DAT_00960be8;
}

// ---- gpg::TurnBasedMatchConfig::MinimumAutomatchingPlayers  @ 0x52a948
/* gpg::TurnBasedMatchConfig::MinimumAutomatchingPlayers() const */

undefined4 __thiscall
gpg::TurnBasedMatchConfig::MinimumAutomatchingPlayers(TurnBasedMatchConfig *this)

{
  int iVar1;
  
  iVar1 = Valid(this);
  if (iVar1 != 0) {
    return *(undefined4 *)(*(int *)this + 8);
  }
  FUN_005166ae(4,"Attempting to get min automatching players from an invalid TurnBasedMatchConfig.")
  ;
  return 0;
}

// ---- gpg::TurnBasedMatchConfig::MaximumAutomatchingPlayers  @ 0x52a96c
/* gpg::TurnBasedMatchConfig::MaximumAutomatchingPlayers() const */

undefined4 __thiscall
gpg::TurnBasedMatchConfig::MaximumAutomatchingPlayers(TurnBasedMatchConfig *this)

{
  int iVar1;
  
  iVar1 = Valid(this);
  if (iVar1 != 0) {
    return *(undefined4 *)(*(int *)this + 0xc);
  }
  FUN_005166ae(4,"Attempting to get max automatching players from an invalid TurnBasedMatchConfig.")
  ;
  return 0;
}

// ---- gpg::TurnBasedMatchConfig::ExclusiveBitMask  @ 0x52a990
/* gpg::TurnBasedMatchConfig::ExclusiveBitMask() const */

undefined8 __thiscall gpg::TurnBasedMatchConfig::ExclusiveBitMask(TurnBasedMatchConfig *this)

{
  int iVar1;
  
  iVar1 = Valid(this);
  if (iVar1 != 0) {
    return **(undefined8 **)this;
  }
  FUN_005166ae(4,"Attempting to get exclusive bit mask from an invalid TurnBasedMatchConfig.");
  return 0;
}

// ---- gpg::TurnBasedMatchConfig::Variant  @ 0x52a9b8
/* gpg::TurnBasedMatchConfig::Variant() const */

undefined4 __thiscall gpg::TurnBasedMatchConfig::Variant(TurnBasedMatchConfig *this)

{
  int iVar1;
  
  iVar1 = Valid(this);
  if (iVar1 != 0) {
    return *(undefined4 *)(*(int *)this + 0x10);
  }
  FUN_005166ae(4,"Attempting to variant from an invalid TurnBasedMatchConfig.");
  return 0;
}

// ---- gpg::TurnBasedMatchConfig::operator=  @ 0x52a9dc
/* gpg::TurnBasedMatchConfig::TEMPNAMEPLACEHOLDERVALUE(gpg::TurnBasedMatchConfig const&) */

TurnBasedMatchConfig * __thiscall
gpg::TurnBasedMatchConfig::operator=(TurnBasedMatchConfig *this,TurnBasedMatchConfig *param_1)

{
  bool bVar1;
  int *piVar2;
  int iVar3;
  
  *(undefined4 *)this = *(undefined4 *)param_1;
  iVar3 = *(int *)(param_1 + 4);
  if (iVar3 != *(int *)(this + 4)) {
    if (iVar3 != 0) {
      piVar2 = (int *)(iVar3 + 4);
      DataMemoryBarrier(0x1f);
      do {
        ExclusiveAccess(piVar2);
        bVar1 = (bool)hasExclusiveAccess(piVar2);
      } while (!bVar1);
      *piVar2 = *piVar2 + 1;
      DataMemoryBarrier(0x1f);
    }
    if (*(int *)(this + 4) != 0) {
      FUN_0033ce90();
    }
    *(int *)(this + 4) = iVar3;
  }
  return this;
}

// ---- gpg::TurnBasedMatchConfig::operator=  @ 0x52aa14
/* gpg::TurnBasedMatchConfig::TEMPNAMEPLACEHOLDERVALUE(gpg::TurnBasedMatchConfig&&) */

TurnBasedMatchConfig * __thiscall
gpg::TurnBasedMatchConfig::operator=(TurnBasedMatchConfig *this,TurnBasedMatchConfig *param_1)

{
  undefined4 uVar1;
  int iVar2;
  undefined4 uVar3;
  
  uVar1 = *(undefined4 *)param_1;
  uVar3 = *(undefined4 *)(param_1 + 4);
  *(undefined4 *)(param_1 + 4) = 0;
  *(undefined4 *)param_1 = 0;
  *(undefined4 *)this = uVar1;
  iVar2 = *(int *)(this + 4);
  *(undefined4 *)(this + 4) = uVar3;
  if (iVar2 != 0) {
    FUN_0033ce90();
  }
  return this;
}

// ---- gpg::TurnBasedMatchConfig::Builder::SetMinimumAutomatchingPlayers  @ 0x52aab0
/* gpg::TurnBasedMatchConfig::Builder::SetMinimumAutomatchingPlayers(unsigned int) */

void __thiscall
gpg::TurnBasedMatchConfig::Builder::SetMinimumAutomatchingPlayers(Builder *this,uint param_1)

{
  *(uint *)(*(int *)this + 8) = param_1;
  return;
}

// ---- gpg::TurnBasedMatchConfig::Builder::SetMaximumAutomatchingPlayers  @ 0x52aab6
/* gpg::TurnBasedMatchConfig::Builder::SetMaximumAutomatchingPlayers(unsigned int) */

void __thiscall
gpg::TurnBasedMatchConfig::Builder::SetMaximumAutomatchingPlayers(Builder *this,uint param_1)

{
  *(uint *)(*(int *)this + 0xc) = param_1;
  return;
}

// ---- gpg::TurnBasedMatchConfig::Builder::SetVariant  @ 0x52aabc
/* gpg::TurnBasedMatchConfig::Builder::SetVariant(unsigned int) */

void __thiscall gpg::TurnBasedMatchConfig::Builder::SetVariant(Builder *this,uint param_1)

{
  *(uint *)(*(int *)this + 0x10) = param_1;
  return;
}

// ---- gpg::TurnBasedMatchConfig::Builder::SetExclusiveBitMask  @ 0x52aac2
/* gpg::TurnBasedMatchConfig::Builder::SetExclusiveBitMask(unsigned long long) */

void gpg::TurnBasedMatchConfig::Builder::SetExclusiveBitMask(ulonglong param_1)

{
  undefined4 *puVar1;
  undefined4 in_r2;
  undefined4 in_r3;
  
  puVar1 = (undefined4 *)*(int *)param_1;
  *puVar1 = in_r2;
  puVar1[1] = in_r3;
  return;
}

// ---- gpg::TurnBasedMatchConfig::Builder::Builder  @ 0x52ab30
/* gpg::TurnBasedMatchConfig::Builder::Builder() */

Builder * __thiscall gpg::TurnBasedMatchConfig::Builder::Builder(Builder *this)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  undefined4 local_1c;
  undefined4 local_18;
  undefined4 local_14;
  
  local_1c = 0;
  local_18 = 0;
  local_14 = 0;
  puVar2 = operator_new(0x20);
  uVar1 = local_14;
  *puVar2 = 0;
  puVar2[1] = 0;
  puVar2[2] = 0;
  puVar2[4] = 0xffffffff;
  puVar2[5] = local_1c;
  puVar2[3] = 0;
  local_1c = 0;
  puVar2[6] = local_18;
  local_18 = 0;
  local_14 = 0;
  puVar2[7] = uVar1;
  FUN_0052aae4(this);
  std::vector<std::string,std::allocator<std::string>>::~vector
            ((vector<std::string,std::allocator<std::string>> *)&local_1c);
  return this;
}

// ---- gpg::TurnBasedMatchConfig::Builder::PopulateFromPlayerSelectUIResponse  @ 0x52abac
/* gpg::TurnBasedMatchConfig::Builder::PopulateFromPlayerSelectUIResponse(gpg::TurnBasedMultiplayerManager::PlayerSelectUIResponse
   const&) */

Builder * __thiscall
gpg::TurnBasedMatchConfig::Builder::PopulateFromPlayerSelectUIResponse
          (Builder *this,PlayerSelectUIResponse *param_1)

{
  int iVar1;
  
  iVar1 = IsSuccess(*(undefined4 *)param_1);
  if (iVar1 == 0) {
    FUN_005166ae(1,
                 "Trying to populate a TurnBasedMatchConfigBuilder from an unsuccessful PlayerSelectUIResponse."
                );
  }
  else {
    *(undefined4 *)(*(int *)this + 8) = *(undefined4 *)(param_1 + 0x10);
    *(undefined4 *)(*(int *)this + 0xc) = *(undefined4 *)(param_1 + 0x14);
    std::vector<std::string,std::allocator<std::string>>::operator=
              ((vector<std::string,std::allocator<std::string>> *)(*(int *)this + 0x14),param_1 + 4)
    ;
  }
  return this;
}

// ---- gpg::TurnBasedMatchConfig::Builder::AddPlayerToInvite  @ 0x52abe4
/* gpg::TurnBasedMatchConfig::Builder::AddPlayerToInvite(std::string const&) */

Builder * __thiscall
gpg::TurnBasedMatchConfig::Builder::AddPlayerToInvite(Builder *this,string *param_1)

{
  int iVar1;
  
  iVar1 = *(int *)this;
  if (*(int *)(iVar1 + 0x18) == *(int *)(iVar1 + 0x1c)) {
    std::vector<std::string,std::allocator<std::string>>::_M_emplace_back_aux<std::string_const&>
              ((vector<std::string,std::allocator<std::string>> *)(iVar1 + 0x14),param_1);
  }
  else {
    if (*(int *)(iVar1 + 0x18) != 0) {
      FUN_007c64e8();
    }
    *(int *)(iVar1 + 0x18) = *(int *)(iVar1 + 0x18) + 4;
  }
  return this;
}

// ---- gpg::TurnBasedMatchConfig::Builder::AddAllPlayersToInvite  @ 0x52ac0c
/* gpg::TurnBasedMatchConfig::Builder::AddAllPlayersToInvite(std::vector<std::string,
   std::allocator<std::string > > const&) */

vector * gpg::TurnBasedMatchConfig::Builder::AddAllPlayersToInvite(vector *param_1)

{
  undefined4 *in_r1;
  
  std::vector<std::string,std::allocator<std::string>>::
  _M_range_insert<__gnu_cxx::__normal_iterator<std::string_const*,std::vector<std::string,std::allocator<std::string>>>>
            (*(int *)param_1 + 0x14,*(undefined4 *)(*(int *)param_1 + 0x18),*in_r1,in_r1[1],
             (uint)param_1 & 0xffffff00);
  return param_1;
}

// ---- gpg::TurnBasedMatchConfig::Builder::Create  @ 0x52ad0c
/* gpg::TurnBasedMatchConfig::Builder::Create() const */

void gpg::TurnBasedMatchConfig::Builder::Create(void)

{
  bool bVar1;
  TurnBasedMatchConfig *in_r0;
  int *in_r1;
  int iVar2;
  int iVar3;
  int *piVar4;
  TurnBasedMatchConfig *this;
  int local_38;
  int local_34;
  TurnBasedMatchConfig aTStack_30 [8];
  int local_28;
  int local_24;
  TurnBasedMatchConfig aTStack_20 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_1c [8];
  
  iVar3 = *in_r1;
  iVar2 = iVar3 + 8;
  if (*(int *)(iVar3 + 0xc) != 0) {
    iVar2 = iVar3 + 0xc;
  }
  FUN_0052ac2c(&local_38,0,aTStack_20,iVar3,iVar3 + 8,iVar2,iVar3 + 0x10,iVar3 + 0x14);
  if (*(uint *)(local_38 + 8) + (*(int *)(*in_r1 + 0x18) - *(int *)(*in_r1 + 0x14) >> 2) == 0) {
    FUN_005166ae(4,"Cannot create a TurnBasedMatchConfig with no players.");
    this = aTStack_30;
    TurnBasedMatchConfig(this);
    TurnBasedMatchConfig(in_r0,this);
  }
  else {
    this = (TurnBasedMatchConfig *)&local_28;
    if (*(uint *)(local_38 + 0xc) < *(uint *)(local_38 + 8)) {
      FUN_005166ae(4,
                   "Cannot create a TurnBasedMatchConfig with MinimumAutomatchingPlayers greater than MaximumAutomatchingPlayers."
                  );
      TurnBasedMatchConfig(this);
      TurnBasedMatchConfig(in_r0,this);
    }
    else {
      local_28 = local_38;
      local_24 = local_34;
      if (local_34 != 0) {
        piVar4 = (int *)(local_34 + 4);
        DataMemoryBarrier(0x1f);
        do {
          ExclusiveAccess(piVar4);
          bVar1 = (bool)hasExclusiveAccess(piVar4);
        } while (!bVar1);
        *piVar4 = *piVar4 + 1;
        DataMemoryBarrier(0x1f);
      }
      TurnBasedMatchConfig(aTStack_20,this);
      TurnBasedMatchConfig(in_r0,aTStack_20);
      std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_1c);
    }
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(this + 4));
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_34);
  return;
}

// ---- gpg::TurnBasedMultiplayerManager::TurnBasedMultiplayerManager  @ 0x52af52
/* gpg::TurnBasedMultiplayerManager::TurnBasedMultiplayerManager(gpg::GameServicesImpl*) */

void __thiscall
gpg::TurnBasedMultiplayerManager::TurnBasedMultiplayerManager
          (TurnBasedMultiplayerManager *this,GameServicesImpl *param_1)

{
  *(GameServicesImpl **)this = param_1;
  return;
}

// ---- gpg::TurnBasedMultiplayerManager::~TurnBasedMultiplayerManager  @ 0x52af56
/* gpg::TurnBasedMultiplayerManager::~TurnBasedMultiplayerManager() */

TurnBasedMultiplayerManager * __thiscall
gpg::TurnBasedMultiplayerManager::~TurnBasedMultiplayerManager(TurnBasedMultiplayerManager *this)

{
  return this;
}

// ---- gpg::TurnBasedMultiplayerManager::TurnBasedMatchResponse::TurnBasedMatchResponse  @ 0x52af6c
/* gpg::TurnBasedMultiplayerManager::TurnBasedMatchResponse::TurnBasedMatchResponse(gpg::TurnBasedMultiplayerManager::TurnBasedMatchResponse&&)
    */

TurnBasedMatchResponse * __thiscall
gpg::TurnBasedMultiplayerManager::TurnBasedMatchResponse::TurnBasedMatchResponse
          (TurnBasedMatchResponse *this,TurnBasedMatchResponse *param_1)

{
  *(undefined4 *)this = *(undefined4 *)param_1;
  TurnBasedMatch::TurnBasedMatch((TurnBasedMatch *)(this + 4),(TurnBasedMatch *)(param_1 + 4));
  return this;
}

// ---- gpg::TurnBasedMultiplayerManager::DeclineInvitation  @ 0x52af80
/* gpg::TurnBasedMultiplayerManager::DeclineInvitation(gpg::MultiplayerInvitation const&) */

void __thiscall
gpg::TurnBasedMultiplayerManager::DeclineInvitation
          (TurnBasedMultiplayerManager *this,MultiplayerInvitation *param_1)

{
  int iVar1;
  undefined4 uVar2;
  int *piVar3;
  code *pcVar4;
  undefined1 auStack_3c [4];
  undefined1 auStack_38 [36];
  
  FUN_00510a86(auStack_38,*(undefined4 *)this);
  FUN_0051683e(auStack_3c,auStack_38);
  FUN_0050811a(auStack_38);
  iVar1 = MultiplayerInvitation::Valid(param_1);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Declining an invalid invitation: skipping.");
  }
  else {
    piVar3 = *(int **)this;
    pcVar4 = *(code **)(*piVar3 + 0xac);
    uVar2 = MultiplayerInvitation::Id(param_1);
    (*pcVar4)(piVar3,uVar2);
  }
  FUN_00516580(auStack_3c);
  return;
}

// ---- gpg::TurnBasedMultiplayerManager::DismissInvitation  @ 0x52afec
/* gpg::TurnBasedMultiplayerManager::DismissInvitation(gpg::MultiplayerInvitation const&) */

void __thiscall
gpg::TurnBasedMultiplayerManager::DismissInvitation
          (TurnBasedMultiplayerManager *this,MultiplayerInvitation *param_1)

{
  int iVar1;
  undefined4 uVar2;
  int *piVar3;
  code *pcVar4;
  undefined1 auStack_3c [4];
  undefined1 auStack_38 [36];
  
  FUN_00510a86(auStack_38,*(undefined4 *)this);
  FUN_0051683e(auStack_3c,auStack_38);
  FUN_0050811a(auStack_38);
  iVar1 = MultiplayerInvitation::Valid(param_1);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Dismissing an invalid invitation: skipping.");
  }
  else {
    piVar3 = *(int **)this;
    pcVar4 = *(code **)(*piVar3 + 0xb0);
    uVar2 = MultiplayerInvitation::Id(param_1);
    (*pcVar4)(piVar3,uVar2);
  }
  FUN_00516580(auStack_3c);
  return;
}

// ---- gpg::TurnBasedMultiplayerManager::DismissMatch  @ 0x52b058
/* gpg::TurnBasedMultiplayerManager::DismissMatch(gpg::TurnBasedMatch const&) */

void __thiscall
gpg::TurnBasedMultiplayerManager::DismissMatch
          (TurnBasedMultiplayerManager *this,TurnBasedMatch *param_1)

{
  int iVar1;
  undefined4 uVar2;
  int *piVar3;
  code *pcVar4;
  undefined1 auStack_3c [4];
  undefined1 auStack_38 [36];
  
  FUN_00510a86(auStack_38,*(undefined4 *)this);
  FUN_0051683e(auStack_3c,auStack_38);
  FUN_0050811a(auStack_38);
  iVar1 = TurnBasedMatch::Valid(param_1);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Dismissing an invalid match: skipping.");
  }
  else {
    piVar3 = *(int **)this;
    pcVar4 = *(code **)(*piVar3 + 0xb4);
    uVar2 = TurnBasedMatch::Id(param_1);
    (*pcVar4)(piVar3,uVar2);
  }
  FUN_00516580(auStack_3c);
  return;
}

// ---- gpg::TurnBasedMultiplayerManager::MatchInboxUIResponse::MatchInboxUIResponse  @ 0x52b0ec
/* gpg::TurnBasedMultiplayerManager::MatchInboxUIResponse::MatchInboxUIResponse(gpg::TurnBasedMultiplayerManager::MatchInboxUIResponse&&)
    */

MatchInboxUIResponse * __thiscall
gpg::TurnBasedMultiplayerManager::MatchInboxUIResponse::MatchInboxUIResponse
          (MatchInboxUIResponse *this,MatchInboxUIResponse *param_1)

{
  *(undefined4 *)this = *(undefined4 *)param_1;
  TurnBasedMatch::TurnBasedMatch((TurnBasedMatch *)(this + 4),(TurnBasedMatch *)(param_1 + 4));
  return this;
}

// ---- gpg::TurnBasedMultiplayerManager::SynchronizeData  @ 0x52b100
/* gpg::TurnBasedMultiplayerManager::SynchronizeData() */

void __thiscall gpg::TurnBasedMultiplayerManager::SynchronizeData(TurnBasedMultiplayerManager *this)

{
  undefined1 auStack_34 [4];
  undefined1 auStack_30 [32];
  
  FUN_00510a86(auStack_30,*(undefined4 *)this);
  FUN_0051683e(auStack_34,auStack_30);
  FUN_0050811a(auStack_30);
  (**(code **)(**(int **)this + 0xa0))();
  FUN_00516580(auStack_34);
  return;
}

// ---- gpg::TurnBasedMultiplayerManager::TurnBasedMatchesResponse::TurnBasedMatchesResponse  @ 0x52b5a6
/* gpg::TurnBasedMultiplayerManager::TurnBasedMatchesResponse::TurnBasedMatchesResponse(gpg::TurnBasedMultiplayerManager::TurnBasedMatchesResponse&&)
    */

TurnBasedMatchesResponse * __thiscall
gpg::TurnBasedMultiplayerManager::TurnBasedMatchesResponse::TurnBasedMatchesResponse
          (TurnBasedMatchesResponse *this,TurnBasedMatchesResponse *param_1)

{
  undefined4 uVar1;
  
  *(undefined4 *)this = *(undefined4 *)param_1;
  *(undefined4 *)(this + 8) = 0;
  *(undefined4 *)(this + 0xc) = 0;
  *(undefined4 *)(this + 4) = 0;
  *(undefined4 *)(this + 4) = *(undefined4 *)(param_1 + 4);
  *(undefined4 *)(param_1 + 4) = 0;
  uVar1 = *(undefined4 *)(this + 8);
  *(undefined4 *)(this + 8) = *(undefined4 *)(param_1 + 8);
  *(undefined4 *)(param_1 + 8) = uVar1;
  uVar1 = *(undefined4 *)(this + 0xc);
  *(undefined4 *)(this + 0xc) = *(undefined4 *)(param_1 + 0xc);
  *(undefined4 *)(param_1 + 0xc) = uVar1;
  std::_Vector_base<gpg::TurnBasedMatch,std::allocator<gpg::TurnBasedMatch>>::_Vector_base
            ((_Vector_base<gpg::TurnBasedMatch,std::allocator<gpg::TurnBasedMatch>> *)(this + 0x10),
             (_Vector_base *)(param_1 + 0x10));
  std::_Vector_base<gpg::TurnBasedMatch,std::allocator<gpg::TurnBasedMatch>>::_Vector_base
            ((_Vector_base<gpg::TurnBasedMatch,std::allocator<gpg::TurnBasedMatch>> *)(this + 0x1c),
             (_Vector_base *)(param_1 + 0x1c));
  std::_Vector_base<gpg::TurnBasedMatch,std::allocator<gpg::TurnBasedMatch>>::_Vector_base
            ((_Vector_base<gpg::TurnBasedMatch,std::allocator<gpg::TurnBasedMatch>> *)(this + 0x28),
             (_Vector_base *)(param_1 + 0x28));
  return this;
}

// ---- gpg::TurnBasedMultiplayerManager::CreateTurnBasedMatch  @ 0x52b9dc
/* gpg::TurnBasedMultiplayerManager::CreateTurnBasedMatch(gpg::TurnBasedMatchConfig const&,
   std::function<void (gpg::TurnBasedMultiplayerManager::TurnBasedMatchResponse const&)>) */

void __thiscall
gpg::TurnBasedMultiplayerManager::CreateTurnBasedMatch
          (TurnBasedMultiplayerManager *this,TurnBasedMatchConfig *param_1,function *param_3)

{
  undefined4 uVar1;
  int iVar2;
  undefined4 *puVar3;
  int *piVar4;
  code *pcVar5;
  undefined1 auStack_8c [4];
  undefined4 local_88;
  TurnBasedMatch aTStack_84 [8];
  undefined4 local_7c;
  TurnBasedMatch aTStack_78 [8];
  function<void(gpg::TurnBasedMultiplayerManager::TurnBasedMatchResponse_const&)> afStack_70 [16];
  undefined1 auStack_60 [32];
  undefined1 auStack_40 [32];
  
  FUN_00510a86(auStack_40,*(undefined4 *)this);
  FUN_0051683e(auStack_8c,auStack_40);
  FUN_0050811a(auStack_40);
  uVar1 = FUN_0051075c(*(undefined4 *)this);
  std::function<void(gpg::TurnBasedMultiplayerManager::TurnBasedMatchResponse_const&)>::function
            (afStack_70,param_3);
  FUN_0052b88c(auStack_60,uVar1,afStack_70);
  std::_Function_base::~_Function_base((_Function_base *)afStack_70);
  iVar2 = TurnBasedMatchConfig::Valid(param_1);
  if (iVar2 == 0) {
    FUN_005166ae(4,"Creating a match with an invalid configuration: skipping.");
    puVar3 = &local_88;
    local_88 = 0xfffffffe;
    TurnBasedMatch::TurnBasedMatch(aTStack_84);
    FUN_0052b918(auStack_60,puVar3);
  }
  else {
    piVar4 = *(int **)this;
    pcVar5 = *(code **)(*piVar4 + 0xa4);
    FUN_0052b37a(auStack_40,auStack_60);
    iVar2 = (*pcVar5)(piVar4,param_1,auStack_40);
    FUN_0052af58(auStack_40);
    if (iVar2 != 0) goto LAB_0052ba9a;
    puVar3 = &local_7c;
    local_7c = 0xfffffffd;
    TurnBasedMatch::TurnBasedMatch(aTStack_78);
    FUN_0052b918(auStack_60,puVar3);
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(puVar3 + 2));
LAB_0052ba9a:
  FUN_0052af58(auStack_60);
  FUN_00516580(auStack_8c);
  return;
}

// ---- gpg::TurnBasedMultiplayerManager::AcceptInvitation  @ 0x52bae8
/* gpg::TurnBasedMultiplayerManager::AcceptInvitation(gpg::MultiplayerInvitation const&,
   std::function<void (gpg::TurnBasedMultiplayerManager::TurnBasedMatchResponse const&)>) */

void __thiscall
gpg::TurnBasedMultiplayerManager::AcceptInvitation
          (TurnBasedMultiplayerManager *this,MultiplayerInvitation *param_1,function *param_3)

{
  undefined4 uVar1;
  int iVar2;
  undefined4 *puVar3;
  int *piVar4;
  code *pcVar5;
  undefined1 auStack_8c [4];
  undefined4 local_88;
  TurnBasedMatch aTStack_84 [8];
  undefined4 local_7c;
  TurnBasedMatch aTStack_78 [8];
  function<void(gpg::TurnBasedMultiplayerManager::TurnBasedMatchResponse_const&)> afStack_70 [16];
  undefined1 auStack_60 [32];
  undefined1 auStack_40 [32];
  
  FUN_00510a86(auStack_40,*(undefined4 *)this);
  FUN_0051683e(auStack_8c,auStack_40);
  FUN_0050811a(auStack_40);
  uVar1 = FUN_0051075c(*(undefined4 *)this);
  std::function<void(gpg::TurnBasedMultiplayerManager::TurnBasedMatchResponse_const&)>::function
            (afStack_70,param_3);
  FUN_0052b88c(auStack_60,uVar1,afStack_70);
  std::_Function_base::~_Function_base((_Function_base *)afStack_70);
  iVar2 = MultiplayerInvitation::Valid(param_1);
  if (iVar2 == 0) {
    FUN_005166ae(4,"Accepting an invalid invitation: skipping.");
    puVar3 = &local_88;
    local_88 = 0xfffffffe;
    TurnBasedMatch::TurnBasedMatch(aTStack_84);
    FUN_0052b918(auStack_60,puVar3);
  }
  else {
    piVar4 = *(int **)this;
    pcVar5 = *(code **)(*piVar4 + 0xa8);
    uVar1 = MultiplayerInvitation::Id(param_1);
    FUN_0052b37a(auStack_40,auStack_60);
    iVar2 = (*pcVar5)(piVar4,uVar1,auStack_40);
    FUN_0052af58(auStack_40);
    if (iVar2 != 0) goto LAB_0052bbae;
    puVar3 = &local_7c;
    local_7c = 0xfffffffd;
    TurnBasedMatch::TurnBasedMatch(aTStack_78);
    FUN_0052b918(auStack_60,puVar3);
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(puVar3 + 2));
LAB_0052bbae:
  FUN_0052af58(auStack_60);
  FUN_00516580(auStack_8c);
  return;
}

// ---- gpg::TurnBasedMultiplayerManager::FetchMatch  @ 0x52bbfc
/* gpg::TurnBasedMultiplayerManager::FetchMatch(std::string const&, std::function<void
   (gpg::TurnBasedMultiplayerManager::TurnBasedMatchResponse const&)>) */

void __thiscall
gpg::TurnBasedMultiplayerManager::FetchMatch
          (TurnBasedMultiplayerManager *this,undefined4 param_1,function *param_3)

{
  undefined4 uVar1;
  int iVar2;
  int *piVar3;
  code *pcVar4;
  undefined1 auStack_80 [4];
  undefined4 local_7c;
  TurnBasedMatch aTStack_78 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_74 [4];
  function<void(gpg::TurnBasedMultiplayerManager::TurnBasedMatchResponse_const&)> afStack_70 [16];
  undefined1 auStack_60 [32];
  undefined1 auStack_40 [32];
  
  FUN_00510a86(auStack_40,*(undefined4 *)this);
  FUN_0051683e(auStack_80,auStack_40);
  FUN_0050811a(auStack_40);
  uVar1 = FUN_0051075c(*(undefined4 *)this);
  std::function<void(gpg::TurnBasedMultiplayerManager::TurnBasedMatchResponse_const&)>::function
            (afStack_70,param_3);
  FUN_0052b88c(auStack_60,uVar1,afStack_70);
  std::_Function_base::~_Function_base((_Function_base *)afStack_70);
  piVar3 = *(int **)this;
  pcVar4 = *(code **)(*piVar3 + 0xb8);
  FUN_0052b37a(auStack_40,auStack_60);
  iVar2 = (*pcVar4)(piVar3,1,param_1,auStack_40);
  FUN_0052af58(auStack_40);
  if (iVar2 == 0) {
    local_7c = 0xfffffffd;
    TurnBasedMatch::TurnBasedMatch(aTStack_78);
    FUN_0052b918(auStack_60,&local_7c);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_74);
  }
  FUN_0052af58(auStack_60);
  FUN_00516580(auStack_80);
  return;
}

// ---- gpg::TurnBasedMultiplayerManager::LeaveMatchDuringTheirTurn  @ 0x52bcd4
/* gpg::TurnBasedMultiplayerManager::LeaveMatchDuringTheirTurn(gpg::TurnBasedMatch const&,
   std::function<void (gpg::MultiplayerStatus)>) */

void __thiscall
gpg::TurnBasedMultiplayerManager::LeaveMatchDuringTheirTurn
          (TurnBasedMultiplayerManager *this,TurnBasedMatch *param_1,function *param_3)

{
  undefined4 uVar1;
  function *pfVar2;
  int iVar3;
  undefined4 uVar4;
  undefined4 *puVar5;
  int *piVar6;
  code *pcVar7;
  undefined1 auStack_a4 [4];
  undefined4 local_a0;
  TurnBasedMatch aTStack_9c [8];
  undefined4 local_94;
  TurnBasedMatch aTStack_90 [8];
  function<void(gpg::MultiplayerStatus)> afStack_88 [16];
  function *local_78 [2];
  undefined1 *local_70;
  undefined1 *local_6c;
  undefined1 auStack_68 [32];
  undefined1 auStack_48 [36];
  
  FUN_00510a86(auStack_48,*(undefined4 *)this);
  FUN_0051683e(auStack_a4,auStack_48);
  FUN_0050811a(auStack_48);
  uVar1 = FUN_0051075c(*(undefined4 *)this);
  std::function<void(gpg::MultiplayerStatus)>::function(afStack_88,param_3);
  local_70 = (undefined1 *)0x0;
  pfVar2 = operator_new(0x10);
  *(undefined4 *)(pfVar2 + 8) = 0;
  std::function<void(gpg::MultiplayerStatus)>::swap(afStack_88,pfVar2);
  local_6c = &LAB_0052b3ae_1;
  local_70 = &LAB_0052b3f0_1;
  local_78[0] = pfVar2;
  FUN_0052b88c(auStack_68,uVar1,(_Function_base *)local_78);
  std::_Function_base::~_Function_base((_Function_base *)local_78);
  std::_Function_base::~_Function_base((_Function_base *)afStack_88);
  iVar3 = TurnBasedMatch::Valid(param_1);
  if (iVar3 == 0) {
    FUN_005166ae(4,"Leaving an invalid match: skipping.");
    puVar5 = &local_a0;
    local_a0 = 0xfffffffe;
    TurnBasedMatch::TurnBasedMatch(aTStack_9c);
    FUN_0052b918(auStack_68,puVar5);
  }
  else {
    piVar6 = *(int **)this;
    pcVar7 = *(code **)(*piVar6 + 0xbc);
    uVar1 = TurnBasedMatch::Id(param_1);
    uVar4 = TurnBasedMatch::Version(param_1);
    FUN_0052b37a(auStack_48,auStack_68);
    iVar3 = (*pcVar7)(piVar6,uVar1,uVar4,auStack_48);
    FUN_0052af58(auStack_48);
    if (iVar3 != 0) goto LAB_0052bdda;
    puVar5 = &local_94;
    local_94 = 0xfffffffd;
    TurnBasedMatch::TurnBasedMatch(aTStack_90);
    FUN_0052b918(auStack_68,puVar5);
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(puVar5 + 2));
LAB_0052bdda:
  FUN_0052af58(auStack_68);
  FUN_00516580(auStack_a4);
  return;
}

// ---- gpg::TurnBasedMultiplayerManager::LeaveMatchDuringMyTurn  @ 0x52be34
/* gpg::TurnBasedMultiplayerManager::LeaveMatchDuringMyTurn(gpg::TurnBasedMatch const&,
   gpg::MultiplayerParticipant const&, std::function<void (gpg::MultiplayerStatus)>) */

void __thiscall
gpg::TurnBasedMultiplayerManager::LeaveMatchDuringMyTurn
          (TurnBasedMultiplayerManager *this,TurnBasedMatch *param_1,MultiplayerParticipant *param_2
          ,function *param_4)

{
  undefined4 uVar1;
  function *pfVar2;
  int iVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined4 *puVar6;
  int *piVar7;
  code *pcVar8;
  undefined1 auStack_a4 [4];
  undefined4 local_a0;
  TurnBasedMatch aTStack_9c [8];
  undefined4 local_94;
  TurnBasedMatch aTStack_90 [8];
  function<void(gpg::MultiplayerStatus)> afStack_88 [16];
  function *local_78 [2];
  undefined1 *local_70;
  undefined1 *local_6c;
  undefined1 auStack_68 [32];
  undefined1 auStack_48 [36];
  
  FUN_00510a86(auStack_48,*(undefined4 *)this);
  FUN_0051683e(auStack_a4,auStack_48);
  FUN_0050811a(auStack_48);
  uVar1 = FUN_0051075c(*(undefined4 *)this);
  std::function<void(gpg::MultiplayerStatus)>::function(afStack_88,param_4);
  local_70 = (undefined1 *)0x0;
  pfVar2 = operator_new(0x10);
  *(undefined4 *)(pfVar2 + 8) = 0;
  std::function<void(gpg::MultiplayerStatus)>::swap(afStack_88,pfVar2);
  local_6c = &LAB_0052b3b6_1;
  local_70 = &LAB_0052b438_1;
  local_78[0] = pfVar2;
  FUN_0052b88c(auStack_68,uVar1,(_Function_base *)local_78);
  std::_Function_base::~_Function_base((_Function_base *)local_78);
  std::_Function_base::~_Function_base((_Function_base *)afStack_88);
  iVar3 = TurnBasedMatch::Valid(param_1);
  if (iVar3 == 0) {
    FUN_005166ae(4,"Leaving an invalid match: skipping.");
    puVar6 = &local_a0;
    local_a0 = 0xfffffffe;
    TurnBasedMatch::TurnBasedMatch(aTStack_9c);
    FUN_0052b918(auStack_68,puVar6);
  }
  else {
    piVar7 = *(int **)this;
    pcVar8 = *(code **)(*piVar7 + 0xc0);
    uVar1 = TurnBasedMatch::Id(param_1);
    uVar4 = TurnBasedMatch::Version(param_1);
    uVar5 = MultiplayerParticipant::Id(param_2);
    FUN_0052b37a(auStack_48,auStack_68);
    iVar3 = (*pcVar8)(piVar7,uVar1,uVar4,uVar5,auStack_48);
    FUN_0052af58(auStack_48);
    if (iVar3 != 0) goto LAB_0052bf46;
    puVar6 = &local_94;
    local_94 = 0xfffffffd;
    TurnBasedMatch::TurnBasedMatch(aTStack_90);
    FUN_0052b918(auStack_68,puVar6);
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(puVar6 + 2));
LAB_0052bf46:
  FUN_0052af58(auStack_68);
  FUN_00516580(auStack_a4);
  return;
}

// ---- gpg::TurnBasedMultiplayerManager::CancelMatch  @ 0x52bfa0
/* gpg::TurnBasedMultiplayerManager::CancelMatch(gpg::TurnBasedMatch const&, std::function<void
   (gpg::MultiplayerStatus)>) */

void __thiscall
gpg::TurnBasedMultiplayerManager::CancelMatch
          (TurnBasedMultiplayerManager *this,TurnBasedMatch *param_1,function *param_3)

{
  undefined4 uVar1;
  function *pfVar2;
  int iVar3;
  undefined4 *puVar4;
  int *piVar5;
  code *pcVar6;
  undefined1 auStack_a4 [4];
  undefined4 local_a0;
  TurnBasedMatch aTStack_9c [8];
  undefined4 local_94;
  TurnBasedMatch aTStack_90 [8];
  function<void(gpg::MultiplayerStatus)> afStack_88 [16];
  function *local_78 [2];
  undefined1 *local_70;
  undefined1 *local_6c;
  undefined1 auStack_68 [32];
  undefined1 auStack_48 [36];
  
  FUN_00510a86(auStack_48,*(undefined4 *)this);
  FUN_0051683e(auStack_a4,auStack_48);
  FUN_0050811a(auStack_48);
  uVar1 = FUN_0051075c(*(undefined4 *)this);
  std::function<void(gpg::MultiplayerStatus)>::function(afStack_88,param_3);
  local_70 = (undefined1 *)0x0;
  pfVar2 = operator_new(0x10);
  *(undefined4 *)(pfVar2 + 8) = 0;
  std::function<void(gpg::MultiplayerStatus)>::swap(afStack_88,pfVar2);
  local_6c = &LAB_0052b3be_1;
  local_70 = &LAB_0052b480_1;
  local_78[0] = pfVar2;
  FUN_0052b88c(auStack_68,uVar1,(_Function_base *)local_78);
  std::_Function_base::~_Function_base((_Function_base *)local_78);
  std::_Function_base::~_Function_base((_Function_base *)afStack_88);
  iVar3 = TurnBasedMatch::Valid(param_1);
  if (iVar3 == 0) {
    FUN_005166ae(4,"Canceling an invalid match: skipping.");
    puVar4 = &local_a0;
    local_a0 = 0xfffffffe;
    TurnBasedMatch::TurnBasedMatch(aTStack_9c);
    FUN_0052b918(auStack_68,puVar4);
  }
  else {
    piVar5 = *(int **)this;
    pcVar6 = *(code **)(*piVar5 + 0xc4);
    uVar1 = TurnBasedMatch::Id(param_1);
    FUN_0052b37a(auStack_48,auStack_68);
    iVar3 = (*pcVar6)(piVar5,uVar1,auStack_48);
    FUN_0052af58(auStack_48);
    if (iVar3 != 0) goto LAB_0052c09c;
    puVar4 = &local_94;
    local_94 = 0xfffffffd;
    TurnBasedMatch::TurnBasedMatch(aTStack_90);
    FUN_0052b918(auStack_68,puVar4);
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(puVar4 + 2));
LAB_0052c09c:
  FUN_0052af58(auStack_68);
  FUN_00516580(auStack_a4);
  return;
}

// ---- gpg::TurnBasedMultiplayerManager::ConfirmPendingCompletion  @ 0x52c0f8
/* gpg::TurnBasedMultiplayerManager::ConfirmPendingCompletion(gpg::TurnBasedMatch const&,
   std::function<void (gpg::TurnBasedMultiplayerManager::TurnBasedMatchResponse const&)>) */

void __thiscall
gpg::TurnBasedMultiplayerManager::ConfirmPendingCompletion
          (TurnBasedMultiplayerManager *this,TurnBasedMatch *param_1,function *param_3)

{
  undefined4 uVar1;
  int iVar2;
  undefined4 uVar3;
  undefined4 *puVar4;
  int *piVar5;
  code *pcVar6;
  undefined1 auStack_8c [4];
  undefined4 local_88;
  TurnBasedMatch aTStack_84 [8];
  undefined4 local_7c;
  TurnBasedMatch aTStack_78 [8];
  function<void(gpg::TurnBasedMultiplayerManager::TurnBasedMatchResponse_const&)> afStack_70 [16];
  undefined1 auStack_60 [32];
  undefined1 auStack_40 [32];
  
  FUN_00510a86(auStack_40,*(undefined4 *)this);
  FUN_0051683e(auStack_8c,auStack_40);
  FUN_0050811a(auStack_40);
  uVar1 = FUN_0051075c(*(undefined4 *)this);
  std::function<void(gpg::TurnBasedMultiplayerManager::TurnBasedMatchResponse_const&)>::function
            (afStack_70,param_3);
  FUN_0052b88c(auStack_60,uVar1,afStack_70);
  std::_Function_base::~_Function_base((_Function_base *)afStack_70);
  iVar2 = TurnBasedMatch::Valid(param_1);
  if (iVar2 == 0) {
    FUN_005166ae(4,"Completing an invalid match: skipping.");
    puVar4 = &local_88;
    local_88 = 0xfffffffe;
    TurnBasedMatch::TurnBasedMatch(aTStack_84);
    FUN_0052b918(auStack_60,puVar4);
  }
  else {
    piVar5 = *(int **)this;
    pcVar6 = *(code **)(*piVar5 + 0xd0);
    uVar1 = TurnBasedMatch::Id(param_1);
    uVar3 = TurnBasedMatch::Version(param_1);
    FUN_0052b37a(auStack_40,auStack_60);
    iVar2 = (*pcVar6)(piVar5,uVar1,uVar3,auStack_40);
    FUN_0052af58(auStack_40);
    if (iVar2 != 0) goto LAB_0052c1c8;
    puVar4 = &local_7c;
    local_7c = 0xfffffffd;
    TurnBasedMatch::TurnBasedMatch(aTStack_78);
    FUN_0052b918(auStack_60,puVar4);
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(puVar4 + 2));
LAB_0052c1c8:
  FUN_0052af58(auStack_60);
  FUN_00516580(auStack_8c);
  return;
}

// ---- gpg::TurnBasedMultiplayerManager::Rematch  @ 0x52c214
/* gpg::TurnBasedMultiplayerManager::Rematch(gpg::TurnBasedMatch const&, std::function<void
   (gpg::TurnBasedMultiplayerManager::TurnBasedMatchResponse const&)>) */

void __thiscall
gpg::TurnBasedMultiplayerManager::Rematch
          (TurnBasedMultiplayerManager *this,TurnBasedMatch *param_1,function *param_3)

{
  undefined4 uVar1;
  int iVar2;
  undefined4 *puVar3;
  int *piVar4;
  code *pcVar5;
  undefined1 auStack_8c [4];
  undefined4 local_88;
  TurnBasedMatch aTStack_84 [8];
  undefined4 local_7c;
  TurnBasedMatch aTStack_78 [8];
  function<void(gpg::TurnBasedMultiplayerManager::TurnBasedMatchResponse_const&)> afStack_70 [16];
  undefined1 auStack_60 [32];
  undefined1 auStack_40 [32];
  
  FUN_00510a86(auStack_40,*(undefined4 *)this);
  FUN_0051683e(auStack_8c,auStack_40);
  FUN_0050811a(auStack_40);
  uVar1 = FUN_0051075c(*(undefined4 *)this);
  std::function<void(gpg::TurnBasedMultiplayerManager::TurnBasedMatchResponse_const&)>::function
            (afStack_70,param_3);
  FUN_0052b88c(auStack_60,uVar1,afStack_70);
  std::_Function_base::~_Function_base((_Function_base *)afStack_70);
  iVar2 = TurnBasedMatch::Valid(param_1);
  if (iVar2 == 0) {
    FUN_005166ae(4,"Rematching an invalid match: skipping.");
    puVar3 = &local_88;
    local_88 = 0xfffffffe;
    TurnBasedMatch::TurnBasedMatch(aTStack_84);
    FUN_0052b918(auStack_60,puVar3);
  }
  else {
    piVar4 = *(int **)this;
    pcVar5 = *(code **)(*piVar4 + 0xd4);
    uVar1 = TurnBasedMatch::Id(param_1);
    FUN_0052b37a(auStack_40,auStack_60);
    iVar2 = (*pcVar5)(piVar4,uVar1,auStack_40);
    FUN_0052af58(auStack_40);
    if (iVar2 != 0) goto LAB_0052c2da;
    puVar3 = &local_7c;
    local_7c = 0xfffffffd;
    TurnBasedMatch::TurnBasedMatch(aTStack_78);
    FUN_0052b918(auStack_60,puVar3);
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(puVar3 + 2));
LAB_0052c2da:
  FUN_0052af58(auStack_60);
  FUN_00516580(auStack_8c);
  return;
}

// ---- gpg::TurnBasedMultiplayerManager::TakeMyTurn  @ 0x52c328
/* gpg::TurnBasedMultiplayerManager::TakeMyTurn(gpg::TurnBasedMatch const&, std::vector<unsigned
   char, std::allocator<unsigned char> >, gpg::ParticipantResults const&,
   gpg::MultiplayerParticipant const&, std::function<void
   (gpg::TurnBasedMultiplayerManager::TurnBasedMatchResponse const&)>) */

void __thiscall
gpg::TurnBasedMultiplayerManager::TakeMyTurn
          (TurnBasedMultiplayerManager *this,TurnBasedMatch *param_1,_Vector_base *param_3,
          ParticipantResults *param_4,MultiplayerParticipant *param_5,function *param_6)

{
  undefined4 uVar1;
  int iVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  code *pcVar5;
  undefined4 *puVar6;
  int *piVar7;
  undefined1 auStack_ac [4];
  undefined4 local_a8;
  TurnBasedMatch aTStack_a4 [8];
  undefined4 local_9c;
  TurnBasedMatch aTStack_98 [8];
  undefined4 local_90;
  TurnBasedMatch aTStack_8c [8];
  undefined4 local_84;
  TurnBasedMatch aTStack_80 [8];
  function<void(gpg::TurnBasedMultiplayerManager::TurnBasedMatchResponse_const&)> afStack_78 [16];
  undefined1 auStack_68 [32];
  undefined1 auStack_48 [36];
  
  FUN_00510a86(auStack_48,*(undefined4 *)this);
  FUN_0051683e(auStack_ac,auStack_48);
  FUN_0050811a(auStack_48);
  uVar1 = FUN_0051075c(*(undefined4 *)this);
  std::function<void(gpg::TurnBasedMultiplayerManager::TurnBasedMatchResponse_const&)>::function
            (afStack_78,param_6);
  FUN_0052b88c(auStack_68,uVar1,afStack_78);
  std::_Function_base::~_Function_base((_Function_base *)afStack_78);
  iVar2 = TurnBasedMatch::Valid(param_1);
  if (iVar2 == 0) {
    FUN_005166ae(4,"Taking turn in an invalid match: skipping.");
    puVar6 = &local_a8;
    local_a8 = 0xfffffffe;
    TurnBasedMatch::TurnBasedMatch(aTStack_a4);
    FUN_0052b918(auStack_68,puVar6);
  }
  else {
    iVar2 = ParticipantResults::Valid(param_4);
    if (iVar2 == 0) {
      FUN_005166ae(4,"Taking turn with invalid results: skipping.");
      puVar6 = &local_9c;
      local_9c = 0xfffffffe;
      TurnBasedMatch::TurnBasedMatch(aTStack_98);
      FUN_0052b918(auStack_68,puVar6);
    }
    else {
      iVar2 = MultiplayerParticipant::Valid(param_5);
      if (iVar2 == 0) {
        FUN_005166ae(4,"Taking turn with invalid next participant: skipping.");
        puVar6 = &local_90;
        local_90 = 0xfffffffe;
        TurnBasedMatch::TurnBasedMatch(aTStack_8c);
        FUN_0052b918(auStack_68,puVar6);
      }
      else {
        piVar7 = *(int **)this;
        pcVar5 = *(code **)(*piVar7 + 200);
        uVar1 = TurnBasedMatch::Id(param_1);
        uVar3 = TurnBasedMatch::Version(param_1);
        std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::_Vector_base
                  ((_Vector_base<unsigned_char,std::allocator<unsigned_char>> *)afStack_78,param_3);
        uVar4 = MultiplayerParticipant::Id(param_5);
        FUN_0052b37a(auStack_48,auStack_68);
        iVar2 = (*pcVar5)(piVar7,uVar1,uVar3,afStack_78,param_4,uVar4,auStack_48);
        FUN_0052af58(auStack_48);
        std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::~_Vector_base
                  ((_Vector_base<unsigned_char,std::allocator<unsigned_char>> *)afStack_78);
        if (iVar2 != 0) goto LAB_0052c47c;
        puVar6 = &local_84;
        local_84 = 0xfffffffd;
        TurnBasedMatch::TurnBasedMatch(aTStack_80);
        FUN_0052b918(auStack_68,puVar6);
      }
    }
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(puVar6 + 2));
LAB_0052c47c:
  FUN_0052af58(auStack_68);
  FUN_00516580(auStack_ac);
  return;
}

// ---- gpg::TurnBasedMultiplayerManager::FinishMatchDuringMyTurn  @ 0x52c4dc
/* gpg::TurnBasedMultiplayerManager::FinishMatchDuringMyTurn(gpg::TurnBasedMatch const&,
   std::vector<unsigned char, std::allocator<unsigned char> >, gpg::ParticipantResults const&,
   std::function<void (gpg::TurnBasedMultiplayerManager::TurnBasedMatchResponse const&)>) */

void __thiscall
gpg::TurnBasedMultiplayerManager::FinishMatchDuringMyTurn
          (TurnBasedMultiplayerManager *this,TurnBasedMatch *param_1,_Vector_base *param_3,
          ParticipantResults *param_4,function *param_5)

{
  undefined4 uVar1;
  int iVar2;
  undefined4 uVar3;
  code *pcVar4;
  undefined4 *puVar5;
  int *piVar6;
  undefined1 auStack_a0 [4];
  undefined4 local_9c;
  TurnBasedMatch aTStack_98 [8];
  undefined4 local_90;
  TurnBasedMatch aTStack_8c [8];
  undefined4 local_84;
  TurnBasedMatch aTStack_80 [8];
  function<void(gpg::TurnBasedMultiplayerManager::TurnBasedMatchResponse_const&)> afStack_78 [16];
  undefined1 auStack_68 [32];
  undefined1 auStack_48 [36];
  
  FUN_00510a86(auStack_48,*(undefined4 *)this);
  FUN_0051683e(auStack_a0,auStack_48);
  FUN_0050811a(auStack_48);
  uVar1 = FUN_0051075c(*(undefined4 *)this);
  std::function<void(gpg::TurnBasedMultiplayerManager::TurnBasedMatchResponse_const&)>::function
            (afStack_78,param_5);
  FUN_0052b88c(auStack_68,uVar1,afStack_78);
  std::_Function_base::~_Function_base((_Function_base *)afStack_78);
  iVar2 = TurnBasedMatch::Valid(param_1);
  if (iVar2 == 0) {
    FUN_005166ae(4,"Finishing an invalid match: skipping.");
    puVar5 = &local_9c;
    local_9c = 0xfffffffe;
    TurnBasedMatch::TurnBasedMatch(aTStack_98);
    FUN_0052b918(auStack_68,puVar5);
  }
  else {
    iVar2 = ParticipantResults::Valid(param_4);
    if (iVar2 == 0) {
      FUN_005166ae(4,"Finishing a match with invalid results: skipping.");
      puVar5 = &local_90;
      local_90 = 0xfffffffe;
      TurnBasedMatch::TurnBasedMatch(aTStack_8c);
      FUN_0052b918(auStack_68,puVar5);
    }
    else {
      piVar6 = *(int **)this;
      pcVar4 = *(code **)(*piVar6 + 0xcc);
      uVar1 = TurnBasedMatch::Id(param_1);
      uVar3 = TurnBasedMatch::Version(param_1);
      std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::_Vector_base
                ((_Vector_base<unsigned_char,std::allocator<unsigned_char>> *)afStack_78,param_3);
      FUN_0052b37a(auStack_48,auStack_68);
      iVar2 = (*pcVar4)(piVar6,uVar1,uVar3,afStack_78,param_4,auStack_48);
      FUN_0052af58(auStack_48);
      std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::~_Vector_base
                ((_Vector_base<unsigned_char,std::allocator<unsigned_char>> *)afStack_78);
      if (iVar2 != 0) goto LAB_0052c5fa;
      puVar5 = &local_84;
      local_84 = 0xfffffffd;
      TurnBasedMatch::TurnBasedMatch(aTStack_80);
      FUN_0052b918(auStack_68,puVar5);
    }
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(puVar5 + 2));
LAB_0052c5fa:
  FUN_0052af58(auStack_68);
  FUN_00516580(auStack_a0);
  return;
}

// ---- gpg::TurnBasedMultiplayerManager::ShowMatchInboxUI  @ 0x52c74c
/* gpg::TurnBasedMultiplayerManager::ShowMatchInboxUI(std::function<void
   (gpg::TurnBasedMultiplayerManager::MatchInboxUIResponse const&)>) */

void __thiscall
gpg::TurnBasedMultiplayerManager::ShowMatchInboxUI
          (TurnBasedMultiplayerManager *this,function *param_2)

{
  undefined4 uVar1;
  function *pfVar2;
  int iVar3;
  int *piVar4;
  code *pcVar5;
  undefined1 auStack_b0 [4];
  undefined4 local_ac;
  TurnBasedMatch aTStack_a8 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_a4 [4];
  function<void(gpg::TurnBasedMultiplayerManager::MatchInboxUIResponse_const&)> afStack_a0 [8];
  int local_98;
  undefined4 local_94;
  _Function_base a_Stack_90 [8];
  int local_88;
  undefined4 local_84;
  function<void(std::function<void()>)> afStack_80 [16];
  function<void(gpg::TurnBasedMultiplayerManager::MatchInboxUIResponse_const&)> afStack_70 [16];
  function<void(std::function<void()>)> afStack_60 [16];
  function<void(gpg::TurnBasedMultiplayerManager::MatchInboxUIResponse_const&)> afStack_50 [16];
  function<void(std::function<void()>)> afStack_40 [8];
  int local_38;
  function<void(gpg::TurnBasedMultiplayerManager::MatchInboxUIResponse_const&)> afStack_30 [16];
  
  FUN_00510a86(afStack_40,*(undefined4 *)this);
  FUN_0051683e(auStack_b0,afStack_40);
  FUN_0050811a(afStack_40);
  pfVar2 = (function *)FUN_0051075c(*(undefined4 *)this);
  std::function<void(gpg::TurnBasedMultiplayerManager::MatchInboxUIResponse_const&)>::function
            (afStack_a0,param_2);
  if (local_98 == 0) {
    local_88 = local_98;
    local_38 = local_98;
  }
  else {
    local_88 = 0;
    std::swap<std::_Any_data>((_Any_data *)afStack_a0,(_Any_data *)a_Stack_90);
    uVar1 = local_84;
    iVar3 = local_88;
    local_88 = local_98;
    local_98 = iVar3;
    local_84 = local_94;
    local_94 = uVar1;
    std::function<void(std::function<void()>)>::function(afStack_40,pfVar2);
  }
  std::function<void(gpg::TurnBasedMultiplayerManager::MatchInboxUIResponse_const&)>::function
            (afStack_30,(function *)a_Stack_90);
  std::function<void(std::function<void()>)>::function(afStack_80,(function *)afStack_40);
  std::function<void(gpg::TurnBasedMultiplayerManager::MatchInboxUIResponse_const&)>::function
            (afStack_70,(function *)afStack_30);
  FUN_0052b0d8(afStack_40);
  std::_Function_base::~_Function_base(a_Stack_90);
  std::_Function_base::~_Function_base((_Function_base *)afStack_a0);
  piVar4 = *(int **)this;
  pcVar5 = *(code **)(*piVar4 + 0xdc);
  std::function<void(std::function<void()>)>::function(afStack_60,(function *)afStack_80);
  std::function<void(gpg::TurnBasedMultiplayerManager::MatchInboxUIResponse_const&)>::function
            (afStack_50,(function *)afStack_70);
  iVar3 = (*pcVar5)(piVar4,afStack_60);
  FUN_0052b0d8(afStack_60);
  if (iVar3 == 0) {
    local_ac = 0xfffffffd;
    TurnBasedMatch::TurnBasedMatch(aTStack_a8);
    FUN_0052c688(afStack_80,&local_ac);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_a4);
  }
  FUN_0052b0d8(afStack_80);
  FUN_00516580(auStack_b0);
  return;
}

// ---- gpg::TurnBasedMultiplayerManager::TurnBasedMatchesResponse::{unnamed_type#1}::~TurnBasedMatchesResponse  @ 0x52cb12
/* gpg::TurnBasedMultiplayerManager::TurnBasedMatchesResponse::{unnamed
   type#1}::~TurnBasedMatchesResponse() */

_unnamed_type_1_ * __thiscall
gpg::TurnBasedMultiplayerManager::TurnBasedMatchesResponse::{unnamed_type#1}::
~TurnBasedMatchesResponse(_unnamed_type_1_ *this)

{
  std::vector<gpg::TurnBasedMatch,std::allocator<gpg::TurnBasedMatch>>::~vector
            ((vector<gpg::TurnBasedMatch,std::allocator<gpg::TurnBasedMatch>> *)(this + 0x24));
  std::vector<gpg::TurnBasedMatch,std::allocator<gpg::TurnBasedMatch>>::~vector
            ((vector<gpg::TurnBasedMatch,std::allocator<gpg::TurnBasedMatch>> *)(this + 0x18));
  std::vector<gpg::TurnBasedMatch,std::allocator<gpg::TurnBasedMatch>>::~vector
            ((vector<gpg::TurnBasedMatch,std::allocator<gpg::TurnBasedMatch>> *)(this + 0xc));
  std::_Destroy_aux<false>::__destroy<gpg::MultiplayerInvitation*>
            (*(MultiplayerInvitation **)this,*(MultiplayerInvitation **)(this + 4));
  if (*(void **)this != (void *)0x0) {
    operator_delete(*(void **)this);
  }
  return this;
}

// ---- gpg::TurnBasedMultiplayerManager::TurnBasedMatchesResponse::{unnamed_type#1}::TurnBasedMatchesResponse  @ 0x52cd78
/* gpg::TurnBasedMultiplayerManager::TurnBasedMatchesResponse::{unnamed
   type#1}::TurnBasedMatchesResponse({unnamed type#1} const&) */

_unnamed *
gpg::TurnBasedMultiplayerManager::TurnBasedMatchesResponse::{unnamed_type#1}::
TurnBasedMatchesResponse(_unnamed *param_1)

{
  void *pvVar1;
  undefined4 uVar2;
  int *in_r1;
  int iVar3;
  uint uVar4;
  int iVar5;
  
  iVar5 = *in_r1;
  iVar3 = in_r1[1];
  *(undefined4 *)param_1 = 0;
  uVar4 = iVar3 - iVar5 >> 4;
  *(undefined4 *)(param_1 + 4) = 0;
  *(undefined4 *)(param_1 + 8) = 0;
  pvVar1 = (void *)0x0;
  if (uVar4 != 0) {
    if (0xfffffff < uVar4) {
      FUN_007c4844();
    }
    pvVar1 = operator_new(uVar4 * 0x10);
  }
  *(void **)param_1 = pvVar1;
  *(void **)(param_1 + 4) = pvVar1;
  *(void **)(param_1 + 8) = (void *)(uVar4 * 0x10 + (int)pvVar1);
  uVar2 = FUN_0052caac(*in_r1,in_r1[1]);
  *(undefined4 *)(param_1 + 4) = uVar2;
  std::vector<gpg::TurnBasedMatch,std::allocator<gpg::TurnBasedMatch>>::vector
            ((vector<gpg::TurnBasedMatch,std::allocator<gpg::TurnBasedMatch>> *)(param_1 + 0xc),
             (vector *)(in_r1 + 3));
  std::vector<gpg::TurnBasedMatch,std::allocator<gpg::TurnBasedMatch>>::vector
            ((vector<gpg::TurnBasedMatch,std::allocator<gpg::TurnBasedMatch>> *)(param_1 + 0x18),
             (vector *)(in_r1 + 6));
  std::vector<gpg::TurnBasedMatch,std::allocator<gpg::TurnBasedMatch>>::vector
            ((vector<gpg::TurnBasedMatch,std::allocator<gpg::TurnBasedMatch>> *)(param_1 + 0x24),
             (vector *)(in_r1 + 9));
  return param_1;
}

// ---- gpg::TurnBasedMultiplayerManager::FetchMatches  @ 0x52cf34
/* gpg::TurnBasedMultiplayerManager::FetchMatches(std::function<void
   (gpg::TurnBasedMultiplayerManager::TurnBasedMatchesResponse const&)>) */

void __thiscall
gpg::TurnBasedMultiplayerManager::FetchMatches(TurnBasedMultiplayerManager *this,function *param_2)

{
  function *pfVar1;
  int iVar2;
  int *piVar3;
  code *pcVar4;
  undefined1 auStack_c0 [4];
  function<void(gpg::TurnBasedMultiplayerManager::TurnBasedMatchesResponse_const&)> afStack_bc [8];
  int local_b4;
  function<void(gpg::TurnBasedMultiplayerManager::TurnBasedMatchesResponse_const&)> afStack_ac [8];
  int local_a4;
  function<void(std::function<void()>)> afStack_9c [16];
  function afStack_8c [8];
  undefined4 local_84;
  function<void(std::function<void()>)> afStack_7c [16];
  function<void(gpg::TurnBasedMultiplayerManager::TurnBasedMatchesResponse_const&)> afStack_6c [16];
  undefined4 local_5c;
  int local_58;
  int local_54;
  int local_50;
  int local_4c;
  int local_48;
  int local_44;
  int local_40;
  int local_3c;
  int local_38;
  int local_34;
  int local_30;
  int local_2c;
  
  FUN_00510a86((function<void(std::function<void()>)> *)&local_5c,*(undefined4 *)this);
  FUN_0051683e(auStack_c0,(function<void(std::function<void()>)> *)&local_5c);
  FUN_0050811a((function<void(std::function<void()>)> *)&local_5c);
  pfVar1 = (function *)FUN_0051075c(*(undefined4 *)this);
  std::function<void(gpg::TurnBasedMultiplayerManager::TurnBasedMatchesResponse_const&)>::function
            (afStack_bc,param_2);
  if (local_b4 == 0) {
    local_a4 = local_b4;
    local_54 = local_b4;
  }
  else {
    local_a4 = 0;
    std::function<void(gpg::TurnBasedMultiplayerManager::TurnBasedMatchesResponse_const&)>::swap
              (afStack_bc,(function *)afStack_ac);
    std::function<void(std::function<void()>)>::function
              ((function<void(std::function<void()>)> *)&local_5c,pfVar1);
  }
  local_44 = 0;
  std::function<void(gpg::TurnBasedMultiplayerManager::TurnBasedMatchesResponse_const&)>::swap
            (afStack_ac,(function *)&local_4c);
  std::function<void(std::function<void()>)>::function(afStack_9c,(function *)&local_5c);
  local_84 = 0;
  std::function<void(gpg::TurnBasedMultiplayerManager::TurnBasedMatchesResponse_const&)>::swap
            ((function<void(gpg::TurnBasedMultiplayerManager::TurnBasedMatchesResponse_const&)> *)
             &local_4c,afStack_8c);
  FUN_0052b0c4((function<void(std::function<void()>)> *)&local_5c);
  std::_Function_base::~_Function_base((_Function_base *)afStack_ac);
  std::_Function_base::~_Function_base((_Function_base *)afStack_bc);
  piVar3 = *(int **)this;
  pcVar4 = *(code **)(*piVar3 + 0xd8);
  std::function<void(std::function<void()>)>::function(afStack_7c,(function *)afStack_9c);
  std::function<void(gpg::TurnBasedMultiplayerManager::TurnBasedMatchesResponse_const&)>::function
            (afStack_6c,afStack_8c);
  iVar2 = (*pcVar4)(piVar3,1,afStack_7c);
  FUN_0052b0c4(afStack_7c);
  if (iVar2 == 0) {
    local_5c = 0xfffffffd;
    local_58 = iVar2;
    local_54 = iVar2;
    local_50 = iVar2;
    local_4c = iVar2;
    local_48 = iVar2;
    local_44 = iVar2;
    local_40 = iVar2;
    local_3c = iVar2;
    local_38 = iVar2;
    local_34 = iVar2;
    local_30 = iVar2;
    local_2c = iVar2;
    FUN_0052ce74(afStack_9c,(function<void(std::function<void()>)> *)&local_5c);
    TurnBasedMatchesResponse::{unnamed_type#1}::~TurnBasedMatchesResponse
              ((_unnamed_type_1_ *)&local_58);
  }
  FUN_0052b0c4(afStack_9c);
  FUN_00516580(auStack_c0);
  return;
}

// ---- gpg::TurnBasedMultiplayerManager::ShowPlayerSelectUI  @ 0x52d07e
/* gpg::TurnBasedMultiplayerManager::ShowPlayerSelectUI(unsigned int, unsigned int, bool,
   std::function<void (gpg::TurnBasedMultiplayerManager::PlayerSelectUIResponse const&)>) */

void __thiscall
gpg::TurnBasedMultiplayerManager::ShowPlayerSelectUI
          (TurnBasedMultiplayerManager *this,undefined4 param_1,undefined4 param_2,
          undefined4 param_4,function *param_5)

{
  function *pfVar1;
  int iVar2;
  int *piVar3;
  code *pcVar4;
  undefined1 auStack_ac [4];
  function<void(gpg::TurnBasedMultiplayerManager::PlayerSelectUIResponse_const&)> afStack_a8 [8];
  int local_a0;
  function<void(gpg::TurnBasedMultiplayerManager::PlayerSelectUIResponse_const&)> afStack_98 [8];
  int local_90;
  function<void(std::function<void()>)> afStack_88 [16];
  function afStack_78 [8];
  undefined4 local_70;
  function<void(std::function<void()>)> afStack_68 [16];
  function<void(gpg::TurnBasedMultiplayerManager::PlayerSelectUIResponse_const&)> afStack_58 [16];
  undefined4 local_48;
  vector<std::string,std::allocator<std::string>> avStack_44 [4];
  int local_40;
  function afStack_38 [8];
  undefined4 local_30;
  
  FUN_00510a86((function<void(std::function<void()>)> *)&local_48,*(undefined4 *)this);
  FUN_0051683e(auStack_ac,(function<void(std::function<void()>)> *)&local_48);
  FUN_0050811a((function<void(std::function<void()>)> *)&local_48);
  pfVar1 = (function *)FUN_0051075c(*(undefined4 *)this);
  std::function<void(gpg::TurnBasedMultiplayerManager::PlayerSelectUIResponse_const&)>::function
            (afStack_a8,param_5);
  if (local_a0 == 0) {
    local_90 = local_a0;
    local_40 = local_a0;
  }
  else {
    local_90 = 0;
    std::function<void(gpg::TurnBasedMultiplayerManager::PlayerSelectUIResponse_const&)>::swap
              (afStack_a8,(function *)afStack_98);
    std::function<void(std::function<void()>)>::function
              ((function<void(std::function<void()>)> *)&local_48,pfVar1);
  }
  local_30 = 0;
  std::function<void(gpg::TurnBasedMultiplayerManager::PlayerSelectUIResponse_const&)>::swap
            (afStack_98,afStack_38);
  std::function<void(std::function<void()>)>::function(afStack_88,(function *)&local_48);
  local_70 = 0;
  std::function<void(gpg::TurnBasedMultiplayerManager::PlayerSelectUIResponse_const&)>::swap
            ((function<void(gpg::TurnBasedMultiplayerManager::PlayerSelectUIResponse_const&)> *)
             afStack_38,afStack_78);
  FUN_0051f9f4((function<void(std::function<void()>)> *)&local_48);
  std::_Function_base::~_Function_base((_Function_base *)afStack_98);
  std::_Function_base::~_Function_base((_Function_base *)afStack_a8);
  piVar3 = *(int **)this;
  pcVar4 = *(code **)(*piVar3 + 0xe0);
  std::function<void(std::function<void()>)>::function(afStack_68,(function *)afStack_88);
  std::function<void(gpg::TurnBasedMultiplayerManager::PlayerSelectUIResponse_const&)>::function
            (afStack_58,afStack_78);
  iVar2 = (*pcVar4)(piVar3,param_1,param_2,param_4,afStack_68);
  FUN_0051f9f4(afStack_68);
  if (iVar2 == 0) {
    memset((function<void(std::function<void()>)> *)&local_48,0,0x18);
    local_48 = 0xfffffffd;
    FUN_00521690(afStack_88,(function<void(std::function<void()>)> *)&local_48);
    std::vector<std::string,std::allocator<std::string>>::~vector(avStack_44);
  }
  FUN_0051f9f4(afStack_88);
  FUN_00516580(auStack_ac);
  return;
}

// ---- gpg::TurnBasedMultiplayerManager::CreateTurnBasedMatchBlocking  @ 0x52d510
/* gpg::TurnBasedMultiplayerManager::CreateTurnBasedMatchBlocking(std::chrono::duration<long long,
   std::ratio<1ll, 1000ll> >, gpg::TurnBasedMatchConfig const&) */

TurnBasedMatchResponse *
gpg::TurnBasedMultiplayerManager::CreateTurnBasedMatchBlocking
          (TurnBasedMatchResponse *param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4
          ,TurnBasedMatchConfig *param_5)

{
  int iVar1;
  __shared_count<(__gnu_cxx::_Lock_policy)2> *this;
  TurnBasedMatchResponse *pTVar2;
  int *piVar3;
  code *pcVar4;
  undefined1 auStack_78 [4];
  undefined1 auStack_74 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_70 [4];
  undefined4 local_6c;
  TurnBasedMatch aTStack_68 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_64 [4];
  undefined4 local_60;
  TurnBasedMatch aTStack_5c [8];
  TurnBasedMatchResponse aTStack_54 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_50 [8];
  undefined1 auStack_48 [36];
  
  FUN_00510a86(auStack_48,*param_2);
  FUN_0051683e(auStack_78,auStack_48);
  FUN_0050811a(auStack_48);
  iVar1 = TurnBasedMatchConfig::Valid(param_5);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Creating a match with an invalid configuration: skipping.");
    local_6c = 0xfffffffe;
    TurnBasedMatch::TurnBasedMatch(aTStack_68);
    TurnBasedMatchResponse::TurnBasedMatchResponse(param_1,(TurnBasedMatchResponse *)&local_6c);
    this = a_Stack_64;
  }
  else {
    FUN_0052d288(auStack_74);
    piVar3 = (int *)*param_2;
    pTVar2 = aTStack_54;
    pcVar4 = *(code **)(*piVar3 + 0xa4);
    FUN_0052b146(pTVar2,auStack_74);
    FUN_0052b7ec(auStack_48,pTVar2);
    iVar1 = (*pcVar4)(piVar3,param_5,auStack_48);
    FUN_0052af58(auStack_48);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_50);
    if (iVar1 == 0) {
      pTVar2 = (TurnBasedMatchResponse *)&local_60;
      local_60 = 0xfffffffd;
      TurnBasedMatch::TurnBasedMatch(aTStack_5c);
      TurnBasedMatchResponse::TurnBasedMatchResponse(param_1,pTVar2);
    }
    else {
      FUN_0052d3f4(pTVar2,auStack_74,param_3,param_4);
      TurnBasedMatchResponse::TurnBasedMatchResponse(param_1,pTVar2);
    }
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(pTVar2 + 8));
    this = a_Stack_70;
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(this);
  FUN_00516580(auStack_78);
  return param_1;
}

// ---- gpg::TurnBasedMultiplayerManager::CreateTurnBasedMatchBlocking  @ 0x52d638
/* gpg::TurnBasedMultiplayerManager::CreateTurnBasedMatchBlocking(gpg::TurnBasedMatchConfig const&)
    */

TurnBasedMatchConfig *
gpg::TurnBasedMultiplayerManager::CreateTurnBasedMatchBlocking(TurnBasedMatchConfig *param_1)

{
  undefined4 in_r1;
  TurnBasedMatchResponse aTStack_1c [8];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_14 [8];
  
  CreateTurnBasedMatchBlocking(aTStack_1c,in_r1,0x6cebb800,0x49);
  TurnBasedMatchResponse::TurnBasedMatchResponse((TurnBasedMatchResponse *)param_1,aTStack_1c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_14);
  return param_1;
}

// ---- gpg::TurnBasedMultiplayerManager::AcceptInvitationBlocking  @ 0x52d678
/* gpg::TurnBasedMultiplayerManager::AcceptInvitationBlocking(std::chrono::duration<long long,
   std::ratio<1ll, 1000ll> >, gpg::MultiplayerInvitation const&) */

TurnBasedMatchResponse *
gpg::TurnBasedMultiplayerManager::AcceptInvitationBlocking
          (TurnBasedMatchResponse *param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4
          ,MultiplayerInvitation *param_5)

{
  TurnBasedMatchResponse *pTVar1;
  int iVar2;
  undefined4 uVar3;
  __shared_count<(__gnu_cxx::_Lock_policy)2> *this;
  code *pcVar4;
  int *piVar5;
  undefined1 auStack_78 [4];
  undefined1 auStack_74 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_70 [4];
  undefined4 local_6c;
  TurnBasedMatch aTStack_68 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_64 [4];
  undefined4 local_60;
  TurnBasedMatch aTStack_5c [8];
  TurnBasedMatchResponse aTStack_54 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_50 [8];
  undefined1 auStack_48 [36];
  
  FUN_00510a86(auStack_48,*param_2);
  FUN_0051683e(auStack_78,auStack_48);
  FUN_0050811a(auStack_48);
  iVar2 = MultiplayerInvitation::Valid(param_5);
  if (iVar2 == 0) {
    FUN_005166ae(4,"Accepting an invalid invitation: skipping.");
    local_6c = 0xfffffffe;
    TurnBasedMatch::TurnBasedMatch(aTStack_68);
    TurnBasedMatchResponse::TurnBasedMatchResponse(param_1,(TurnBasedMatchResponse *)&local_6c);
    this = a_Stack_64;
  }
  else {
    FUN_0052d288(auStack_74);
    piVar5 = (int *)*param_2;
    pcVar4 = *(code **)(*piVar5 + 0xa8);
    uVar3 = MultiplayerInvitation::Id(param_5);
    pTVar1 = aTStack_54;
    FUN_0052b146(pTVar1,auStack_74);
    FUN_0052b7ec(auStack_48,pTVar1);
    iVar2 = (*pcVar4)(piVar5,uVar3,auStack_48);
    FUN_0052af58(auStack_48);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_50);
    if (iVar2 == 0) {
      pTVar1 = (TurnBasedMatchResponse *)&local_60;
      local_60 = 0xfffffffd;
      TurnBasedMatch::TurnBasedMatch(aTStack_5c);
      TurnBasedMatchResponse::TurnBasedMatchResponse(param_1,pTVar1);
    }
    else {
      FUN_0052d3f4(pTVar1,auStack_74,param_3,param_4);
      TurnBasedMatchResponse::TurnBasedMatchResponse(param_1,pTVar1);
    }
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(pTVar1 + 8));
    this = a_Stack_70;
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(this);
  FUN_00516580(auStack_78);
  return param_1;
}

// ---- gpg::TurnBasedMultiplayerManager::AcceptInvitationBlocking  @ 0x52d7b8
/* gpg::TurnBasedMultiplayerManager::AcceptInvitationBlocking(gpg::MultiplayerInvitation const&) */

MultiplayerInvitation *
gpg::TurnBasedMultiplayerManager::AcceptInvitationBlocking(MultiplayerInvitation *param_1)

{
  undefined4 in_r1;
  TurnBasedMatchResponse aTStack_1c [8];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_14 [8];
  
  AcceptInvitationBlocking(aTStack_1c,in_r1,0x6cebb800,0x49);
  TurnBasedMatchResponse::TurnBasedMatchResponse((TurnBasedMatchResponse *)param_1,aTStack_1c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_14);
  return param_1;
}

// ---- gpg::TurnBasedMultiplayerManager::FetchMatchBlocking  @ 0x52d7f8
/* gpg::TurnBasedMultiplayerManager::FetchMatchBlocking(std::chrono::duration<long long,
   std::ratio<1ll, 1000ll> >, std::string const&) */

TurnBasedMatchResponse *
gpg::TurnBasedMultiplayerManager::FetchMatchBlocking
          (TurnBasedMatchResponse *param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4
          ,undefined4 param_5)

{
  int iVar1;
  code *pcVar2;
  TurnBasedMatchResponse *pTVar3;
  int *piVar4;
  undefined1 auStack_6c [4];
  undefined1 auStack_68 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_64 [4];
  undefined4 local_60;
  TurnBasedMatch aTStack_5c [8];
  TurnBasedMatchResponse aTStack_54 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_50 [8];
  undefined1 auStack_48 [36];
  
  FUN_00510a86(auStack_48,*param_2);
  FUN_0051683e(auStack_6c,auStack_48);
  FUN_0050811a(auStack_48);
  FUN_0052d288(auStack_68);
  piVar4 = (int *)*param_2;
  pTVar3 = aTStack_54;
  pcVar2 = *(code **)(*piVar4 + 0xb8);
  FUN_0052b146(pTVar3,auStack_68);
  FUN_0052b7ec(auStack_48,pTVar3);
  iVar1 = (*pcVar2)(piVar4,1,param_5,auStack_48);
  FUN_0052af58(auStack_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_50);
  if (iVar1 == 0) {
    pTVar3 = (TurnBasedMatchResponse *)&local_60;
    local_60 = 0xfffffffd;
    TurnBasedMatch::TurnBasedMatch(aTStack_5c);
    TurnBasedMatchResponse::TurnBasedMatchResponse(param_1,pTVar3);
  }
  else {
    FUN_0052d3f4(pTVar3,auStack_68,param_3,param_4);
    TurnBasedMatchResponse::TurnBasedMatchResponse(param_1,pTVar3);
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(pTVar3 + 8));
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_64);
  FUN_00516580(auStack_6c);
  return param_1;
}

// ---- gpg::TurnBasedMultiplayerManager::FetchMatchBlocking  @ 0x52d8e8
/* gpg::TurnBasedMultiplayerManager::FetchMatchBlocking(std::string const&) */

string * gpg::TurnBasedMultiplayerManager::FetchMatchBlocking(string *param_1)

{
  undefined4 in_r1;
  TurnBasedMatchResponse aTStack_1c [8];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_14 [8];
  
  FetchMatchBlocking(aTStack_1c,in_r1,0x6cebb800,0x49);
  TurnBasedMatchResponse::TurnBasedMatchResponse((TurnBasedMatchResponse *)param_1,aTStack_1c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_14);
  return param_1;
}

// ---- gpg::TurnBasedMultiplayerManager::LeaveMatchDuringTheirTurnBlocking  @ 0x52d928
/* gpg::TurnBasedMultiplayerManager::LeaveMatchDuringTheirTurnBlocking(std::chrono::duration<long
   long, std::ratio<1ll, 1000ll> >, gpg::TurnBasedMatch const&) */

undefined4
gpg::TurnBasedMultiplayerManager::LeaveMatchDuringTheirTurnBlocking
          (undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
          TurnBasedMatch *param_5)

{
  int iVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  code *pcVar4;
  int *piVar5;
  undefined1 auStack_60 [4];
  undefined1 auStack_5c [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_58 [4];
  undefined4 local_54;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_50 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_4c [4];
  undefined1 auStack_48 [36];
  
  FUN_00510a86(auStack_48,*param_1);
  FUN_0051683e(auStack_60,auStack_48);
  FUN_0050811a(auStack_48);
  iVar1 = TurnBasedMatch::Valid(param_5);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Leaving an invalid match: skipping.");
    local_54 = 0xfffffffe;
  }
  else {
    FUN_0052d288(auStack_5c);
    piVar5 = (int *)*param_1;
    pcVar4 = *(code **)(*piVar5 + 0xbc);
    uVar2 = TurnBasedMatch::Id(param_5);
    uVar3 = TurnBasedMatch::Version(param_5);
    FUN_0052b146(&local_54,auStack_5c);
    FUN_0052b7ec(auStack_48,&local_54);
    iVar1 = (*pcVar4)(piVar5,uVar2,uVar3,auStack_48);
    FUN_0052af58(auStack_48);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_50);
    if (iVar1 == 0) {
      local_54 = 0xfffffffd;
    }
    else {
      FUN_0052d3f4(&local_54,auStack_5c,param_3,param_4);
      std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_4c);
    }
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_58);
  }
  FUN_00516580(auStack_60);
  return local_54;
}

// ---- gpg::TurnBasedMultiplayerManager::LeaveMatchDuringTheirTurnBlocking  @ 0x52da28
/* gpg::TurnBasedMultiplayerManager::LeaveMatchDuringTheirTurnBlocking(gpg::TurnBasedMatch const&)
    */

void gpg::TurnBasedMultiplayerManager::LeaveMatchDuringTheirTurnBlocking(TurnBasedMatch *param_1)

{
  undefined4 in_r1;
  
  LeaveMatchDuringTheirTurnBlocking(param_1,in_r1,0x6cebb800,0x49);
  return;
}

// ---- gpg::TurnBasedMultiplayerManager::LeaveMatchDuringMyTurnBlocking  @ 0x52da44
/* gpg::TurnBasedMultiplayerManager::LeaveMatchDuringMyTurnBlocking(std::chrono::duration<long long,
   std::ratio<1ll, 1000ll> >, gpg::TurnBasedMatch const&, gpg::MultiplayerParticipant const&) */

undefined4
gpg::TurnBasedMultiplayerManager::LeaveMatchDuringMyTurnBlocking
          (undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
          TurnBasedMatch *param_5,MultiplayerParticipant *param_6)

{
  int iVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  code *pcVar5;
  int *piVar6;
  undefined1 auStack_60 [4];
  undefined1 auStack_5c [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_58 [4];
  undefined4 local_54;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_50 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_4c [4];
  undefined1 auStack_48 [36];
  
  FUN_00510a86(auStack_48,*param_1);
  FUN_0051683e(auStack_60,auStack_48);
  FUN_0050811a(auStack_48);
  iVar1 = TurnBasedMatch::Valid(param_5);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Leaving an invalid match: skipping.");
    local_54 = 0xfffffffe;
  }
  else {
    FUN_0052d288(auStack_5c);
    piVar6 = (int *)*param_1;
    pcVar5 = *(code **)(*piVar6 + 0xc0);
    uVar2 = TurnBasedMatch::Id(param_5);
    uVar3 = TurnBasedMatch::Version(param_5);
    uVar4 = MultiplayerParticipant::Id(param_6);
    FUN_0052b146(&local_54,auStack_5c);
    FUN_0052b7ec(auStack_48,&local_54);
    iVar1 = (*pcVar5)(piVar6,uVar2,uVar3,uVar4,auStack_48);
    FUN_0052af58(auStack_48);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_50);
    if (iVar1 == 0) {
      local_54 = 0xfffffffd;
    }
    else {
      FUN_0052d3f4(&local_54,auStack_5c,param_3,param_4);
      std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_4c);
    }
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_58);
  }
  FUN_00516580(auStack_60);
  return local_54;
}

// ---- gpg::TurnBasedMultiplayerManager::LeaveMatchDuringMyTurnBlocking  @ 0x52db4c
/* gpg::TurnBasedMultiplayerManager::LeaveMatchDuringMyTurnBlocking(gpg::TurnBasedMatch const&,
   gpg::MultiplayerParticipant const&) */

void __thiscall
gpg::TurnBasedMultiplayerManager::LeaveMatchDuringMyTurnBlocking
          (TurnBasedMultiplayerManager *this,TurnBasedMatch *param_1,MultiplayerParticipant *param_2
          )

{
  LeaveMatchDuringMyTurnBlocking(this,param_1,0x6cebb800,0x49,param_1,param_2,param_2);
  return;
}

// ---- gpg::TurnBasedMultiplayerManager::CancelMatchBlocking  @ 0x52db68
/* gpg::TurnBasedMultiplayerManager::CancelMatchBlocking(std::chrono::duration<long long,
   std::ratio<1ll, 1000ll> >, gpg::TurnBasedMatch const&) */

undefined4
gpg::TurnBasedMultiplayerManager::CancelMatchBlocking
          (undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
          TurnBasedMatch *param_5)

{
  int iVar1;
  undefined4 uVar2;
  code *pcVar3;
  int *piVar4;
  undefined1 auStack_60 [4];
  undefined1 auStack_5c [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_58 [4];
  undefined4 local_54;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_50 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_4c [4];
  undefined1 auStack_48 [36];
  
  FUN_00510a86(auStack_48,*param_1);
  FUN_0051683e(auStack_60,auStack_48);
  FUN_0050811a(auStack_48);
  iVar1 = TurnBasedMatch::Valid(param_5);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Canceling an invalid match: skipping.");
    local_54 = 0xfffffffe;
  }
  else {
    FUN_0052d288(auStack_5c);
    piVar4 = (int *)*param_1;
    pcVar3 = *(code **)(*piVar4 + 0xc4);
    uVar2 = TurnBasedMatch::Id(param_5);
    FUN_0052b146(&local_54,auStack_5c);
    FUN_0052b7ec(auStack_48,&local_54);
    iVar1 = (*pcVar3)(piVar4,uVar2,auStack_48);
    FUN_0052af58(auStack_48);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_50);
    if (iVar1 == 0) {
      local_54 = 0xfffffffd;
    }
    else {
      FUN_0052d3f4(&local_54,auStack_5c,param_3,param_4);
      std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_4c);
    }
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_58);
  }
  FUN_00516580(auStack_60);
  return local_54;
}

// ---- gpg::TurnBasedMultiplayerManager::CancelMatchBlocking  @ 0x52dc60
/* gpg::TurnBasedMultiplayerManager::CancelMatchBlocking(gpg::TurnBasedMatch const&) */

void gpg::TurnBasedMultiplayerManager::CancelMatchBlocking(TurnBasedMatch *param_1)

{
  undefined4 in_r1;
  
  CancelMatchBlocking(param_1,in_r1,0x6cebb800,0x49);
  return;
}

// ---- gpg::TurnBasedMultiplayerManager::TakeMyTurnBlocking  @ 0x52dc7c
/* gpg::TurnBasedMultiplayerManager::TakeMyTurnBlocking(std::chrono::duration<long long,
   std::ratio<1ll, 1000ll> >, gpg::TurnBasedMatch const&, std::vector<unsigned char,
   std::allocator<unsigned char> >, gpg::ParticipantResults const&, gpg::MultiplayerParticipant
   const&) */

TurnBasedMatchResponse *
gpg::TurnBasedMultiplayerManager::TakeMyTurnBlocking
          (TurnBasedMatchResponse *param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4
          ,TurnBasedMatch *param_5,_Vector_base *param_6,ParticipantResults *param_7,
          MultiplayerParticipant *param_8)

{
  int iVar1;
  __shared_count<(__gnu_cxx::_Lock_policy)2> *p_Var2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  code *pcVar6;
  TurnBasedMatchResponse *pTVar7;
  int *piVar8;
  undefined1 auStack_90 [4];
  undefined1 auStack_8c [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_88 [4];
  undefined4 local_84;
  TurnBasedMatch aTStack_80 [8];
  undefined4 local_78;
  TurnBasedMatch aTStack_74 [8];
  undefined4 local_6c;
  TurnBasedMatch aTStack_68 [8];
  undefined4 local_60;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_5c [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_58 [4];
  _Vector_base<unsigned_char,std::allocator<unsigned_char>> a_Stack_54 [8];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_4c [4];
  undefined1 auStack_48 [36];
  
  FUN_00510a86(auStack_48,*param_2);
  FUN_0051683e(auStack_90,auStack_48);
  FUN_0050811a(auStack_48);
  iVar1 = TurnBasedMatch::Valid(param_5);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Taking turn in an invalid match: skipping.");
    pTVar7 = (TurnBasedMatchResponse *)&local_84;
    local_84 = 0xfffffffe;
    TurnBasedMatch::TurnBasedMatch(aTStack_80);
    TurnBasedMatchResponse::TurnBasedMatchResponse(param_1,pTVar7);
  }
  else {
    iVar1 = ParticipantResults::Valid(param_7);
    if (iVar1 == 0) {
      FUN_005166ae(4,"Taking turn with invalid results: skipping.");
      pTVar7 = (TurnBasedMatchResponse *)&local_78;
      local_78 = 0xfffffffe;
      TurnBasedMatch::TurnBasedMatch(aTStack_74);
      TurnBasedMatchResponse::TurnBasedMatchResponse(param_1,pTVar7);
    }
    else {
      iVar1 = MultiplayerParticipant::Valid(param_8);
      if (iVar1 != 0) {
        FUN_0052d288(auStack_8c);
        piVar8 = (int *)*param_2;
        pcVar6 = *(code **)(*piVar8 + 200);
        uVar3 = TurnBasedMatch::Id(param_5);
        uVar4 = TurnBasedMatch::Version(param_5);
        std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::_Vector_base
                  (a_Stack_54,param_6);
        uVar5 = MultiplayerParticipant::Id(param_8);
        FUN_0052b146(&local_60,auStack_8c);
        FUN_0052b7ec(auStack_48,&local_60);
        iVar1 = (*pcVar6)(piVar8,uVar3,uVar4,a_Stack_54,param_7,uVar5,auStack_48);
        FUN_0052af58(auStack_48);
        std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_5c);
        std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::~_Vector_base(a_Stack_54);
        if (iVar1 == 0) {
          local_60 = 0xfffffffd;
          TurnBasedMatch::TurnBasedMatch((TurnBasedMatch *)a_Stack_5c);
          TurnBasedMatchResponse::TurnBasedMatchResponse
                    (param_1,(TurnBasedMatchResponse *)&local_60);
          p_Var2 = a_Stack_58;
        }
        else {
          FUN_0052d3f4(a_Stack_54,auStack_8c,param_3,param_4);
          TurnBasedMatchResponse::TurnBasedMatchResponse
                    (param_1,(TurnBasedMatchResponse *)a_Stack_54);
          p_Var2 = a_Stack_4c;
        }
        std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(p_Var2);
        p_Var2 = a_Stack_88;
        goto LAB_0052dde8;
      }
      FUN_005166ae(4,"Taking turn with invalid next participant: skipping.");
      pTVar7 = (TurnBasedMatchResponse *)&local_6c;
      local_6c = 0xfffffffe;
      TurnBasedMatch::TurnBasedMatch(aTStack_68);
      TurnBasedMatchResponse::TurnBasedMatchResponse(param_1,pTVar7);
    }
  }
  p_Var2 = (__shared_count<(__gnu_cxx::_Lock_policy)2> *)(pTVar7 + 8);
LAB_0052dde8:
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(p_Var2);
  FUN_00516580(auStack_90);
  return param_1;
}

// ---- gpg::TurnBasedMultiplayerManager::TakeMyTurnBlocking  @ 0x52de54
/* gpg::TurnBasedMultiplayerManager::TakeMyTurnBlocking(gpg::TurnBasedMatch const&,
   std::vector<unsigned char, std::allocator<unsigned char> >, gpg::ParticipantResults const&,
   gpg::MultiplayerParticipant const&) */

TurnBasedMatchResponse *
gpg::TurnBasedMultiplayerManager::TakeMyTurnBlocking
          (TurnBasedMatchResponse *param_1,undefined4 param_2,undefined4 param_3,
          _Vector_base *param_4,undefined4 param_5,undefined4 param_6)

{
  _Vector_base<unsigned_char,std::allocator<unsigned_char>> a_Stack_30 [12];
  TurnBasedMatchResponse aTStack_24 [8];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_1c [4];
  
  std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::_Vector_base(a_Stack_30,param_4);
  TakeMyTurnBlocking(aTStack_24,param_2,0x6cebb800,0x49,param_3,a_Stack_30,param_5,param_6);
  TurnBasedMatchResponse::TurnBasedMatchResponse(param_1,aTStack_24);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_1c);
  std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::~_Vector_base(a_Stack_30);
  return param_1;
}

// ---- gpg::TurnBasedMultiplayerManager::FinishMatchDuringMyTurnBlocking  @ 0x52dec0
/* gpg::TurnBasedMultiplayerManager::FinishMatchDuringMyTurnBlocking(std::chrono::duration<long
   long, std::ratio<1ll, 1000ll> >, gpg::TurnBasedMatch const&, std::vector<unsigned char,
   std::allocator<unsigned char> >, gpg::ParticipantResults const&) */

TurnBasedMatchResponse *
gpg::TurnBasedMultiplayerManager::FinishMatchDuringMyTurnBlocking
          (TurnBasedMatchResponse *param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4
          ,TurnBasedMatch *param_5,_Vector_base *param_6,ParticipantResults *param_7)

{
  _Vector_base<unsigned_char,std::allocator<unsigned_char>> *this;
  int iVar1;
  __shared_count<(__gnu_cxx::_Lock_policy)2> *this_00;
  undefined4 uVar2;
  undefined4 uVar3;
  code *pcVar4;
  TurnBasedMatchResponse *pTVar5;
  int *piVar6;
  undefined1 auStack_84 [4];
  undefined1 auStack_80 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_7c [4];
  undefined4 local_78;
  TurnBasedMatch aTStack_74 [8];
  undefined4 local_6c;
  TurnBasedMatch aTStack_68 [8];
  undefined4 local_60;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_5c [8];
  _Vector_base<unsigned_char,std::allocator<unsigned_char>> a_Stack_54 [12];
  undefined1 auStack_48 [36];
  
  FUN_00510a86(auStack_48,*param_2);
  FUN_0051683e(auStack_84,auStack_48);
  FUN_0050811a(auStack_48);
  iVar1 = TurnBasedMatch::Valid(param_5);
  if (iVar1 == 0) {
    FUN_005166ae(4,"Finishing an invalid match: skipping.");
    pTVar5 = (TurnBasedMatchResponse *)&local_78;
    local_78 = 0xfffffffe;
    TurnBasedMatch::TurnBasedMatch(aTStack_74);
    TurnBasedMatchResponse::TurnBasedMatchResponse(param_1,pTVar5);
  }
  else {
    iVar1 = ParticipantResults::Valid(param_7);
    if (iVar1 != 0) {
      FUN_0052d288(auStack_80);
      piVar6 = (int *)*param_2;
      pcVar4 = *(code **)(*piVar6 + 0xcc);
      uVar2 = TurnBasedMatch::Id(param_5);
      uVar3 = TurnBasedMatch::Version(param_5);
      this = a_Stack_54;
      std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::_Vector_base(this,param_6);
      FUN_0052b146((TurnBasedMatchResponse *)&local_60,auStack_80);
      FUN_0052b7ec(auStack_48,(TurnBasedMatchResponse *)&local_60);
      iVar1 = (*pcVar4)(piVar6,uVar2,uVar3,this,param_7,auStack_48);
      FUN_0052af58(auStack_48);
      std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_5c);
      std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::~_Vector_base(this);
      if (iVar1 == 0) {
        local_60 = 0xfffffffd;
        TurnBasedMatch::TurnBasedMatch((TurnBasedMatch *)a_Stack_5c);
        TurnBasedMatchResponse::TurnBasedMatchResponse(param_1,(TurnBasedMatchResponse *)&local_60);
        this = (_Vector_base<unsigned_char,std::allocator<unsigned_char>> *)&local_60;
      }
      else {
        FUN_0052d3f4(this,auStack_80,param_3,param_4);
        TurnBasedMatchResponse::TurnBasedMatchResponse(param_1,(TurnBasedMatchResponse *)this);
      }
      std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
                ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(this + 8));
      this_00 = a_Stack_7c;
      goto LAB_0052dff4;
    }
    FUN_005166ae(4,"Finishing a match with invalid results: skipping.");
    pTVar5 = (TurnBasedMatchResponse *)&local_6c;
    local_6c = 0xfffffffe;
    TurnBasedMatch::TurnBasedMatch(aTStack_68);
    TurnBasedMatchResponse::TurnBasedMatchResponse(param_1,pTVar5);
  }
  this_00 = (__shared_count<(__gnu_cxx::_Lock_policy)2> *)(pTVar5 + 8);
LAB_0052dff4:
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(this_00);
  FUN_00516580(auStack_84);
  return param_1;
}

// ---- gpg::TurnBasedMultiplayerManager::FinishMatchDuringMyTurnBlocking  @ 0x52e058
/* gpg::TurnBasedMultiplayerManager::FinishMatchDuringMyTurnBlocking(gpg::TurnBasedMatch const&,
   std::vector<unsigned char, std::allocator<unsigned char> >, gpg::ParticipantResults const&) */

TurnBasedMatchResponse *
gpg::TurnBasedMultiplayerManager::FinishMatchDuringMyTurnBlocking
          (TurnBasedMatchResponse *param_1,undefined4 param_2,undefined4 param_3,
          _Vector_base *param_4,undefined4 param_5)

{
  _Vector_base<unsigned_char,std::allocator<unsigned_char>> a_Stack_30 [12];
  TurnBasedMatchResponse aTStack_24 [8];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_1c [4];
  
  std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::_Vector_base(a_Stack_30,param_4);
  FinishMatchDuringMyTurnBlocking(aTStack_24,param_2,0x6cebb800,0x49,param_3,a_Stack_30,param_5);
  TurnBasedMatchResponse::TurnBasedMatchResponse(param_1,aTStack_24);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_1c);
  std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::~_Vector_base(a_Stack_30);
  return param_1;
}

// ---- gpg::TurnBasedMultiplayerManager::ConfirmPendingCompletionBlocking  @ 0x52e0c0
/* gpg::TurnBasedMultiplayerManager::ConfirmPendingCompletionBlocking(std::chrono::duration<long
   long, std::ratio<1ll, 1000ll> >, gpg::TurnBasedMatch const&) */

TurnBasedMatchResponse *
gpg::TurnBasedMultiplayerManager::ConfirmPendingCompletionBlocking
          (TurnBasedMatchResponse *param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4
          ,TurnBasedMatch *param_5)

{
  TurnBasedMatchResponse *pTVar1;
  int iVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  __shared_count<(__gnu_cxx::_Lock_policy)2> *this;
  code *pcVar5;
  int *piVar6;
  undefined1 auStack_78 [4];
  undefined1 auStack_74 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_70 [4];
  undefined4 local_6c;
  TurnBasedMatch aTStack_68 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_64 [4];
  undefined4 local_60;
  TurnBasedMatch aTStack_5c [8];
  TurnBasedMatchResponse aTStack_54 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_50 [8];
  undefined1 auStack_48 [36];
  
  FUN_00510a86(auStack_48,*param_2);
  FUN_0051683e(auStack_78,auStack_48);
  FUN_0050811a(auStack_48);
  iVar2 = TurnBasedMatch::Valid(param_5);
  if (iVar2 == 0) {
    FUN_005166ae(4,"Completing an invalid match: skipping.");
    local_6c = 0xfffffffe;
    TurnBasedMatch::TurnBasedMatch(aTStack_68);
    TurnBasedMatchResponse::TurnBasedMatchResponse(param_1,(TurnBasedMatchResponse *)&local_6c);
    this = a_Stack_64;
  }
  else {
    FUN_0052d288(auStack_74);
    piVar6 = (int *)*param_2;
    pcVar5 = *(code **)(*piVar6 + 0xd0);
    uVar3 = TurnBasedMatch::Id(param_5);
    uVar4 = TurnBasedMatch::Version(param_5);
    pTVar1 = aTStack_54;
    FUN_0052b146(pTVar1,auStack_74);
    FUN_0052b7ec(auStack_48,pTVar1);
    iVar2 = (*pcVar5)(piVar6,uVar3,uVar4,auStack_48);
    FUN_0052af58(auStack_48);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_50);
    if (iVar2 == 0) {
      pTVar1 = (TurnBasedMatchResponse *)&local_60;
      local_60 = 0xfffffffd;
      TurnBasedMatch::TurnBasedMatch(aTStack_5c);
      TurnBasedMatchResponse::TurnBasedMatchResponse(param_1,pTVar1);
    }
    else {
      FUN_0052d3f4(pTVar1,auStack_74,param_3,param_4);
      TurnBasedMatchResponse::TurnBasedMatchResponse(param_1,pTVar1);
    }
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(pTVar1 + 8));
    this = a_Stack_70;
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(this);
  FUN_00516580(auStack_78);
  return param_1;
}

// ---- gpg::TurnBasedMultiplayerManager::ConfirmPendingCompletionBlocking  @ 0x52e204
/* gpg::TurnBasedMultiplayerManager::ConfirmPendingCompletionBlocking(gpg::TurnBasedMatch const&) */

TurnBasedMatch *
gpg::TurnBasedMultiplayerManager::ConfirmPendingCompletionBlocking(TurnBasedMatch *param_1)

{
  undefined4 in_r1;
  TurnBasedMatchResponse aTStack_1c [8];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_14 [8];
  
  ConfirmPendingCompletionBlocking(aTStack_1c,in_r1,0x6cebb800,0x49);
  TurnBasedMatchResponse::TurnBasedMatchResponse((TurnBasedMatchResponse *)param_1,aTStack_1c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_14);
  return param_1;
}

// ---- gpg::TurnBasedMultiplayerManager::RematchBlocking  @ 0x52e244
/* gpg::TurnBasedMultiplayerManager::RematchBlocking(std::chrono::duration<long long,
   std::ratio<1ll, 1000ll> >, gpg::TurnBasedMatch const&) */

TurnBasedMatchResponse *
gpg::TurnBasedMultiplayerManager::RematchBlocking
          (TurnBasedMatchResponse *param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4
          ,TurnBasedMatch *param_5)

{
  TurnBasedMatchResponse *pTVar1;
  int iVar2;
  undefined4 uVar3;
  __shared_count<(__gnu_cxx::_Lock_policy)2> *this;
  code *pcVar4;
  int *piVar5;
  undefined1 auStack_78 [4];
  undefined1 auStack_74 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_70 [4];
  undefined4 local_6c;
  TurnBasedMatch aTStack_68 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_64 [4];
  undefined4 local_60;
  TurnBasedMatch aTStack_5c [8];
  TurnBasedMatchResponse aTStack_54 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_50 [8];
  undefined1 auStack_48 [36];
  
  FUN_00510a86(auStack_48,*param_2);
  FUN_0051683e(auStack_78,auStack_48);
  FUN_0050811a(auStack_48);
  iVar2 = TurnBasedMatch::Valid(param_5);
  if (iVar2 == 0) {
    FUN_005166ae(4,"Rematching an invalid match: skipping.");
    local_6c = 0xfffffffe;
    TurnBasedMatch::TurnBasedMatch(aTStack_68);
    TurnBasedMatchResponse::TurnBasedMatchResponse(param_1,(TurnBasedMatchResponse *)&local_6c);
    this = a_Stack_64;
  }
  else {
    FUN_0052d288(auStack_74);
    piVar5 = (int *)*param_2;
    pcVar4 = *(code **)(*piVar5 + 0xd4);
    uVar3 = TurnBasedMatch::Id(param_5);
    pTVar1 = aTStack_54;
    FUN_0052b146(pTVar1,auStack_74);
    FUN_0052b7ec(auStack_48,pTVar1);
    iVar2 = (*pcVar4)(piVar5,uVar3,auStack_48);
    FUN_0052af58(auStack_48);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_50);
    if (iVar2 == 0) {
      pTVar1 = (TurnBasedMatchResponse *)&local_60;
      local_60 = 0xfffffffd;
      TurnBasedMatch::TurnBasedMatch(aTStack_5c);
      TurnBasedMatchResponse::TurnBasedMatchResponse(param_1,pTVar1);
    }
    else {
      FUN_0052d3f4(pTVar1,auStack_74,param_3,param_4);
      TurnBasedMatchResponse::TurnBasedMatchResponse(param_1,pTVar1);
    }
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(pTVar1 + 8));
    this = a_Stack_70;
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(this);
  FUN_00516580(auStack_78);
  return param_1;
}

// ---- gpg::TurnBasedMultiplayerManager::RematchBlocking  @ 0x52e384
/* gpg::TurnBasedMultiplayerManager::RematchBlocking(gpg::TurnBasedMatch const&) */

TurnBasedMatch * gpg::TurnBasedMultiplayerManager::RematchBlocking(TurnBasedMatch *param_1)

{
  undefined4 in_r1;
  TurnBasedMatchResponse aTStack_1c [8];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_14 [8];
  
  RematchBlocking(aTStack_1c,in_r1,0x6cebb800,0x49);
  TurnBasedMatchResponse::TurnBasedMatchResponse((TurnBasedMatchResponse *)param_1,aTStack_1c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_14);
  return param_1;
}

// ---- gpg::TurnBasedMultiplayerManager::FetchMatchesBlocking  @ 0x52e4e8
/* gpg::TurnBasedMultiplayerManager::FetchMatchesBlocking(std::chrono::duration<long long,
   std::ratio<1ll, 1000ll> >) */

TurnBasedMatchesResponse *
gpg::TurnBasedMultiplayerManager::FetchMatchesBlocking
          (TurnBasedMatchesResponse *param_1,undefined4 *param_2,undefined4 param_3,
          undefined4 param_4)

{
  int iVar1;
  code *pcVar2;
  int *piVar3;
  undefined1 auStack_8c [4];
  undefined1 auStack_88 [4];
  undefined4 local_84;
  __shared_count a_Stack_80 [4];
  undefined1 auStack_7c [32];
  undefined4 local_5c;
  int local_58;
  int local_54;
  int local_50;
  int local_4c;
  int local_48;
  int local_44;
  int local_40;
  int local_3c;
  int local_38;
  int local_34;
  int local_30;
  int local_2c;
  
  FUN_00510a86((TurnBasedMatchesResponse *)&local_5c,*param_2);
  FUN_0051683e(auStack_8c,(TurnBasedMatchesResponse *)&local_5c);
  FUN_0050811a((TurnBasedMatchesResponse *)&local_5c);
  FUN_0052d29c(&local_84,0,auStack_88);
  piVar3 = (int *)*param_2;
  pcVar2 = *(code **)(*piVar3 + 0xd8);
  local_5c = local_84;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_58,a_Stack_80);
  FUN_0052b694(auStack_7c,(TurnBasedMatchesResponse *)&local_5c);
  iVar1 = (*pcVar2)(piVar3,1,auStack_7c);
  FUN_0052b0c4(auStack_7c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_58);
  if (iVar1 == 0) {
    local_5c = 0xfffffffd;
    local_58 = iVar1;
    local_54 = iVar1;
    local_50 = iVar1;
    local_4c = iVar1;
    local_48 = iVar1;
    local_44 = iVar1;
    local_40 = iVar1;
    local_3c = iVar1;
    local_38 = iVar1;
    local_34 = iVar1;
    local_30 = iVar1;
    local_2c = iVar1;
    TurnBasedMatchesResponse::TurnBasedMatchesResponse
              (param_1,(TurnBasedMatchesResponse *)&local_5c);
  }
  else {
    FUN_0052e3c4((TurnBasedMatchesResponse *)&local_5c,&local_84,param_3,param_4);
    TurnBasedMatchesResponse::TurnBasedMatchesResponse
              (param_1,(TurnBasedMatchesResponse *)&local_5c);
  }
  TurnBasedMatchesResponse::{unnamed_type#1}::~TurnBasedMatchesResponse
            ((_unnamed_type_1_ *)&local_58);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)a_Stack_80);
  FUN_00516580(auStack_8c);
  return param_1;
}

// ---- gpg::TurnBasedMultiplayerManager::FetchMatchesBlocking  @ 0x52e5ec
/* gpg::TurnBasedMultiplayerManager::FetchMatchesBlocking() */

void gpg::TurnBasedMultiplayerManager::FetchMatchesBlocking(void)

{
  TurnBasedMatchesResponse *in_r0;
  undefined4 in_r1;
  TurnBasedMatchesResponse aTStack_44 [4];
  _unnamed_type_1_ a_Stack_40 [52];
  
  FetchMatchesBlocking(aTStack_44,in_r1,0x6cebb800,0x49);
  TurnBasedMatchesResponse::TurnBasedMatchesResponse(in_r0,aTStack_44);
  TurnBasedMatchesResponse::{unnamed_type#1}::~TurnBasedMatchesResponse(a_Stack_40);
  return;
}

// ---- gpg::TurnBasedMultiplayerManager::ShowMatchInboxUIBlocking  @ 0x52e61c
/* gpg::TurnBasedMultiplayerManager::ShowMatchInboxUIBlocking(std::chrono::duration<long long,
   std::ratio<1ll, 1000ll> >) */

MatchInboxUIResponse *
gpg::TurnBasedMultiplayerManager::ShowMatchInboxUIBlocking
          (MatchInboxUIResponse *param_1,undefined4 *param_2,uint param_3,int param_4)

{
  longlong lVar1;
  int iVar2;
  __shared_count<(__gnu_cxx::_Lock_policy)2> *this;
  MatchInboxUIResponse *pMVar3;
  unique_lock *puVar4;
  int *piVar5;
  code *pcVar6;
  undefined4 local_b0;
  int iStack_ac;
  undefined1 auStack_a8 [4];
  undefined1 auStack_a4 [4];
  undefined4 local_a0;
  int iStack_9c;
  mutex *local_94;
  __shared_count a_Stack_90 [4];
  mutex *local_8c;
  undefined1 local_88;
  undefined4 local_84;
  TurnBasedMatch aTStack_80 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_7c [4];
  MatchInboxUIResponse aMStack_78 [8];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_70 [4];
  undefined4 local_6c;
  TurnBasedMatch aTStack_68 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_64 [4];
  undefined4 local_60;
  TurnBasedMatch aTStack_5c [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_58 [4];
  mutex *local_54;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_50 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_4c [4];
  undefined1 auStack_48 [36];
  
  FUN_00510a86(auStack_48,*param_2);
  FUN_0051683e(auStack_a8,auStack_48);
  FUN_0050811a(auStack_48);
  FUN_0052d334(&local_94,0,auStack_a4);
  piVar5 = (int *)*param_2;
  pcVar6 = *(code **)(*piVar5 + 0xdc);
  local_54 = local_94;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count(a_Stack_50,a_Stack_90);
  FUN_0052b744(auStack_48,(MatchInboxUIResponse *)&local_54);
  iVar2 = (*pcVar6)(piVar5,auStack_48);
  FUN_0052b0d8(auStack_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_50);
  if (iVar2 == 0) {
    local_84 = 0xfffffffd;
    TurnBasedMatch::TurnBasedMatch(aTStack_80);
    MatchInboxUIResponse::MatchInboxUIResponse(param_1,(MatchInboxUIResponse *)&local_84);
    this = a_Stack_7c;
    goto LAB_0052e7ae;
  }
  TurnBasedMatch::TurnBasedMatch(aTStack_68);
  pMVar3 = (MatchInboxUIResponse *)&local_60;
  TurnBasedMatch::TurnBasedMatch(aTStack_5c);
  local_6c = 0xfffffffe;
  local_60 = 0xfffffffb;
  iVar2 = FUN_00553a80();
  if (iVar2 == 0) {
    local_88 = 0;
    local_8c = local_94;
    if (local_94 == (mutex *)0x0) {
                    /* WARNING: Subroutine does not return */
      FUN_007c4c60(1);
    }
    std::mutex::lock(local_94);
    local_88 = 1;
    if (local_94[8] == (mutex)0x0) {
      puVar4 = (unique_lock *)(local_94 + 4);
      FUN_007bfd24(&local_b0);
      lVar1 = (ulonglong)param_3 * 1000000 + CONCAT44(param_4 * 1000000,local_b0);
      local_a0 = (undefined4)lVar1;
      iStack_9c = iStack_ac + (int)((ulonglong)lVar1 >> 0x20);
      do {
        if (local_94[8] != (mutex)0x0) goto LAB_0052e748;
        iVar2 = std::condition_variable::
                __wait_until_impl<std::chrono::duration<long_long,std::ratio<1ll,1000000000ll>>>
                          (puVar4,(time_point *)&local_8c);
      } while (iVar2 != 1);
      if (local_94[8] != (mutex)0x0) goto LAB_0052e748;
    }
    else {
LAB_0052e748:
      pMVar3 = (MatchInboxUIResponse *)(local_94 + 0xc);
    }
    MatchInboxUIResponse::MatchInboxUIResponse((MatchInboxUIResponse *)&local_54,pMVar3);
    std::unique_lock<std::mutex>::~unique_lock((unique_lock<std::mutex> *)&local_8c);
  }
  else {
    FUN_005166ae(4,"Blocking calls are not allowed from the UI thread.");
    MatchInboxUIResponse::MatchInboxUIResponse
              ((MatchInboxUIResponse *)&local_54,(MatchInboxUIResponse *)&local_6c);
  }
  MatchInboxUIResponse::MatchInboxUIResponse(aMStack_78,(MatchInboxUIResponse *)&local_54);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_4c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_58);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_64);
  MatchInboxUIResponse::MatchInboxUIResponse(param_1,aMStack_78);
  this = a_Stack_70;
LAB_0052e7ae:
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(this);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)a_Stack_90);
  FUN_00516580(auStack_a8);
  return param_1;
}

// ---- gpg::TurnBasedMultiplayerManager::ShowMatchInboxUIBlocking  @ 0x52e80c
/* gpg::TurnBasedMultiplayerManager::ShowMatchInboxUIBlocking() */

void gpg::TurnBasedMultiplayerManager::ShowMatchInboxUIBlocking(void)

{
  MatchInboxUIResponse *in_r0;
  undefined4 in_r1;
  MatchInboxUIResponse aMStack_1c [8];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_14 [8];
  
  ShowMatchInboxUIBlocking(aMStack_1c,in_r1,0x6cebb800,0x49);
  MatchInboxUIResponse::MatchInboxUIResponse(in_r0,aMStack_1c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_14);
  return;
}

// ---- gpg::TurnBasedMultiplayerManager::ShowPlayerSelectUIBlocking  @ 0x52e848
/* gpg::TurnBasedMultiplayerManager::ShowPlayerSelectUIBlocking(std::chrono::duration<long long,
   std::ratio<1ll, 1000ll> >, unsigned int, unsigned int, bool) */

PlayerSelectUIResponse *
gpg::TurnBasedMultiplayerManager::ShowPlayerSelectUIBlocking
          (PlayerSelectUIResponse *param_1,undefined4 *param_2,uint param_3,int param_4,
          undefined4 param_5,undefined4 param_6,undefined1 param_7)

{
  longlong lVar1;
  int iVar2;
  PlayerSelectUIResponse *pPVar3;
  int *piVar4;
  PlayerSelectUIResponse *this;
  code *pcVar5;
  unique_lock *puVar6;
  undefined4 local_b0;
  int iStack_ac;
  undefined1 auStack_a8 [4];
  undefined1 auStack_a4 [4];
  undefined4 local_a0;
  int iStack_9c;
  mutex *local_98;
  __shared_count a_Stack_94 [4];
  mutex *local_90;
  undefined1 local_8c;
  undefined4 local_78;
  undefined4 local_74;
  undefined4 local_70;
  undefined4 local_6c;
  mutex *local_60;
  undefined4 local_5c;
  undefined4 local_58;
  undefined4 local_54;
  undefined4 local_48;
  vector<std::string,std::allocator<std::string>> avStack_44 [32];
  
  FUN_00510a86((PlayerSelectUIResponse *)&local_48,*param_2);
  FUN_0051683e(auStack_a8,(PlayerSelectUIResponse *)&local_48);
  FUN_0050811a((PlayerSelectUIResponse *)&local_48);
  FUN_00522ebc(&local_98,0,auStack_a4);
  piVar4 = (int *)*param_2;
  pcVar5 = *(code **)(*piVar4 + 0xe0);
  pPVar3 = (PlayerSelectUIResponse *)&local_60;
  local_60 = local_98;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_5c,a_Stack_94);
  FUN_00520558((PlayerSelectUIResponse *)&local_48,pPVar3);
  iVar2 = (*pcVar5)(piVar4,param_5,param_6,param_7,(PlayerSelectUIResponse *)&local_48);
  FUN_0051f9f4((PlayerSelectUIResponse *)&local_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_5c);
  if (iVar2 == 0) {
    memset((PlayerSelectUIResponse *)&local_48,0,0x18);
    local_48 = 0xfffffffd;
    PlayerSelectUIResponse::PlayerSelectUIResponse(param_1,(PlayerSelectUIResponse *)&local_48);
    this = (PlayerSelectUIResponse *)&local_48;
    goto LAB_0052e9b6;
  }
  local_74 = 0;
  local_70 = 0;
  local_6c = 0;
  local_5c = 0;
  local_58 = 0;
  local_54 = 0;
  local_78 = 0xfffffffe;
  local_60 = (mutex *)0xfffffffb;
  iVar2 = FUN_00553a80();
  this = (PlayerSelectUIResponse *)&local_90;
  if (iVar2 == 0) {
    local_8c = 0;
    local_90 = local_98;
    if (local_98 == (mutex *)0x0) {
                    /* WARNING: Subroutine does not return */
      FUN_007c4c60(1);
    }
    std::mutex::lock(local_98);
    local_8c = 1;
    if (local_98[8] == (mutex)0x0) {
      puVar6 = (unique_lock *)(local_98 + 4);
      FUN_007bfd24(&local_b0);
      lVar1 = (ulonglong)param_3 * 1000000 + CONCAT44(param_4 * 1000000,local_b0);
      local_a0 = (undefined4)lVar1;
      iStack_9c = iStack_ac + (int)((ulonglong)lVar1 >> 0x20);
      do {
        if (local_98[8] != (mutex)0x0) goto LAB_0052e980;
        iVar2 = std::condition_variable::
                __wait_until_impl<std::chrono::duration<long_long,std::ratio<1ll,1000000000ll>>>
                          (puVar6,(time_point *)this);
      } while (iVar2 != 1);
      if (local_98[8] != (mutex)0x0) goto LAB_0052e980;
    }
    else {
LAB_0052e980:
      pPVar3 = (PlayerSelectUIResponse *)(local_98 + 0xc);
    }
    PlayerSelectUIResponse::PlayerSelectUIResponse((PlayerSelectUIResponse *)&local_48,pPVar3);
    std::unique_lock<std::mutex>::~unique_lock((unique_lock<std::mutex> *)this);
  }
  else {
    FUN_005166ae(4,"Blocking calls are not allowed from the UI thread.");
    PlayerSelectUIResponse::PlayerSelectUIResponse
              ((PlayerSelectUIResponse *)&local_48,(PlayerSelectUIResponse *)&local_78);
  }
  PlayerSelectUIResponse::PlayerSelectUIResponse(this,(PlayerSelectUIResponse *)&local_48);
  std::vector<std::string,std::allocator<std::string>>::~vector(avStack_44);
  std::vector<std::string,std::allocator<std::string>>::~vector
            ((vector<std::string,std::allocator<std::string>> *)&local_5c);
  std::vector<std::string,std::allocator<std::string>>::~vector
            ((vector<std::string,std::allocator<std::string>> *)&local_74);
  PlayerSelectUIResponse::PlayerSelectUIResponse(param_1,this);
LAB_0052e9b6:
  std::vector<std::string,std::allocator<std::string>>::~vector
            ((vector<std::string,std::allocator<std::string>> *)(this + 4));
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)a_Stack_94);
  FUN_00516580(auStack_a8);
  return param_1;
}

// ---- gpg::TurnBasedMultiplayerManager::ShowPlayerSelectUIBlocking  @ 0x52ea1c
/* gpg::TurnBasedMultiplayerManager::ShowPlayerSelectUIBlocking(unsigned int, unsigned int, bool) */

uint gpg::TurnBasedMultiplayerManager::ShowPlayerSelectUIBlocking
               (uint param_1,uint param_2,bool param_3)

{
  PlayerSelectUIResponse aPStack_28 [4];
  vector<std::string,std::allocator<std::string>> avStack_24 [24];
  
  ShowPlayerSelectUIBlocking(aPStack_28,param_2,0x6cebb800,0x49,param_3);
  PlayerSelectUIResponse::PlayerSelectUIResponse((PlayerSelectUIResponse *)param_1,aPStack_28);
  std::vector<std::string,std::allocator<std::string>>::~vector(avStack_24);
  return param_1;
}

// ---- gpg::AndroidInitialization::JNI_OnLoad  @ 0x540154
/* gpg::AndroidInitialization::JNI_OnLoad(_JavaVM*) */

void gpg::AndroidInitialization::JNI_OnLoad(_JavaVM *param_1)

{
  undefined *local_14 [2];
  
  local_14[0] = &DAT_00960c3c;
  std::mutex::lock((mutex *)&DAT_00960c3c);
  if (param_1 != (_JavaVM *)0x0) {
    DAT_00960c40 = 1;
  }
  FUN_00549a28(param_1);
  std::lock_guard<std::mutex>::~lock_guard((lock_guard<std::mutex> *)local_14);
  return;
}

// ---- gpg::AndroidInitialization::ANativeActivity_onCreate  @ 0x540194
/* gpg::AndroidInitialization::ANativeActivity_onCreate(ANativeActivity*, void*, unsigned int) */

void gpg::AndroidInitialization::ANativeActivity_onCreate
               (ANativeActivity *param_1,void *param_2,uint param_3)

{
  undefined *local_14;
  uint uStack_10;
  
  local_14 = &DAT_00960c3c;
  uStack_10 = param_3;
  std::mutex::lock((mutex *)&DAT_00960c3c);
  if (param_1 == (ANativeActivity *)0x0) {
    FUN_005166ae(4,"Calling ANativeActivity_onCreate with a null native_activity.");
  }
  else {
    if ((*(int *)(param_1 + 0xc) != 0) && (*(int *)(param_1 + 4) != 0)) {
      DAT_00960c40 = 1;
    }
    FUN_00549a6c(*(undefined4 *)(param_1 + 4));
  }
  std::lock_guard<std::mutex>::~lock_guard((lock_guard<std::mutex> *)&local_14);
  return;
}

// ---- gpg::AndroidInitialization::android_main  @ 0x5401ec
/* gpg::AndroidInitialization::android_main(android_app*) */

void gpg::AndroidInitialization::android_main(android_app *param_1)

{
  if ((param_1 != (android_app *)0x0) &&
     (*(ANativeActivity **)(param_1 + 0xc) != (ANativeActivity *)0x0)) {
    ANativeActivity_onCreate(*(ANativeActivity **)(param_1 + 0xc),(void *)0x0,0);
    return;
  }
  FUN_005166ae(4,"Calling android_main with a null app or null app->activity.");
  return;
}

// ---- gpg::IEndpointDiscoveryListener::~IEndpointDiscoveryListener  @ 0x540208
/* gpg::IEndpointDiscoveryListener::~IEndpointDiscoveryListener() */

void __thiscall
gpg::IEndpointDiscoveryListener::~IEndpointDiscoveryListener(IEndpointDiscoveryListener *this)

{
  *(undefined ***)this = &PTR__IEndpointDiscoveryListener_1_00925ec8;
  return;
}

// ---- gpg::IMessageListener::~IMessageListener  @ 0x540218
/* gpg::IMessageListener::~IMessageListener() */

void __thiscall gpg::IMessageListener::~IMessageListener(IMessageListener *this)

{
  *(undefined ***)this = &PTR__IMessageListener_1_00925ee0;
  return;
}

// ---- gpg::IEndpointDiscoveryListener::~IEndpointDiscoveryListener  @ 0x540330
/* gpg::IEndpointDiscoveryListener::~IEndpointDiscoveryListener() */

IEndpointDiscoveryListener * __thiscall
gpg::IEndpointDiscoveryListener::~IEndpointDiscoveryListener(IEndpointDiscoveryListener *this)

{
  *(undefined ***)this = &PTR__IEndpointDiscoveryListener_1_00925ec8;
  operator_delete(this);
  return this;
}

// ---- gpg::IMessageListener::~IMessageListener  @ 0x54034c
/* gpg::IMessageListener::~IMessageListener() */

IMessageListener * __thiscall gpg::IMessageListener::~IMessageListener(IMessageListener *this)

{
  *(undefined ***)this = &PTR__IMessageListener_1_00925ee0;
  operator_delete(this);
  return this;
}

// ---- gpg::EndpointDetails::EndpointDetails  @ 0x54089a
/* gpg::EndpointDetails::EndpointDetails(gpg::EndpointDetails const&) */

EndpointDetails * __thiscall
gpg::EndpointDetails::EndpointDetails(EndpointDetails *this,EndpointDetails *param_1)

{
  FUN_007c64e8();
  FUN_007c64e8(this + 4,param_1 + 4);
  FUN_007c64e8(this + 8,param_1 + 8);
  FUN_007c64e8(this + 0xc,param_1 + 0xc);
  return this;
}

// ---- gpg::AndroidPlatformConfiguration::DEFAULT_ON_LAUNCHED_WITH_SNAPSHOT  @ 0x542db4
/* gpg::AndroidPlatformConfiguration::DEFAULT_ON_LAUNCHED_WITH_SNAPSHOT(gpg::SnapshotMetadata) */

void gpg::AndroidPlatformConfiguration::DEFAULT_ON_LAUNCHED_WITH_SNAPSHOT
               (SnapshotMetadata *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 *puVar1;
  
  puVar1 = (undefined4 *)SnapshotMetadata::FileName(param_1);
  FUN_005166ae(2,"App was launched with snapshot with file name %s.",*puVar1,param_4);
  return;
}

// ---- gpg::AndroidPlatformConfiguration::DEFAULT_ON_LAUNCHED_WITH_QUEST  @ 0x542dd0
/* gpg::AndroidPlatformConfiguration::DEFAULT_ON_LAUNCHED_WITH_QUEST(gpg::Quest) */

void gpg::AndroidPlatformConfiguration::DEFAULT_ON_LAUNCHED_WITH_QUEST
               (Quest *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 *puVar1;
  
  puVar1 = (undefined4 *)Quest::Id(param_1);
  FUN_005166ae(2,"App was launched with quest with id %s.",*puVar1,param_4);
  return;
}

// ---- gpg::AndroidPlatformConfiguration::EnableAppState  @ 0x542e54
/* gpg::AndroidPlatformConfiguration::EnableAppState() */

AndroidPlatformConfiguration * __thiscall
gpg::AndroidPlatformConfiguration::EnableAppState(AndroidPlatformConfiguration *this)

{
  FUN_005166ae(4,
               "AppState functionality has been removed as of GPGS C++ SDK version 2.0. Please migrate your game to the SavedGames API."
              );
  return this;
}

// ---- gpg::AndroidPlatformConfiguration::Valid  @ 0x542e6c
/* gpg::AndroidPlatformConfiguration::Valid() const */

int gpg::AndroidPlatformConfiguration::Valid(void)

{
  undefined4 *in_r0;
  int iVar1;
  char *pcVar2;
  undefined1 auStack_14 [4];
  
  if (DAT_00960c40 == '\0') {
    FUN_005166ae(4,
                 "A method from AndroidInitialization must be called for an AndroidPlatformConfiguration to be Valid."
                );
    return 0;
  }
  iVar1 = FUN_00546d98();
  if (iVar1 != 0) {
    FUN_005166ae(4,"Could not register one or more required Java classes.");
    return 0;
  }
  FUN_00549ab4(auStack_14);
  iVar1 = FUN_00548c48(*in_r0);
  if (iVar1 == 0) {
    iVar1 = FUN_00547c04(*in_r0);
    if (iVar1 != 0) goto LAB_00542ec8;
    pcVar2 = "Could not load additional classes from embedded jar.";
  }
  else {
    pcVar2 = "Activity must be set on PlatformConfiguration.";
  }
  FUN_005166ae(4,pcVar2);
  iVar1 = 0;
LAB_00542ec8:
  FUN_00549ad2(auStack_14);
  return iVar1;
}

// ---- gpg::AndroidPlatformConfiguration::SetOnLaunchedWithSnapshot  @ 0x542f10
/* gpg::AndroidPlatformConfiguration::SetOnLaunchedWithSnapshot(std::function<void
   (gpg::SnapshotMetadata)>) */

AndroidPlatformConfiguration * __thiscall
gpg::AndroidPlatformConfiguration::SetOnLaunchedWithSnapshot
          (AndroidPlatformConfiguration *this,int param_2)

{
  code *pcVar1;
  int iVar2;
  void *local_98 [2];
  undefined1 *local_90;
  undefined4 local_8c;
  function<void(gpg::SnapshotMetadata)> afStack_88 [8];
  code *local_80;
  undefined4 local_7c;
  function<void(gpg::SnapshotMetadata)> afStack_78 [8];
  code *local_70;
  function afStack_68 [8];
  undefined4 local_60;
  function afStack_58 [8];
  undefined4 local_50;
  function<void(std::function<void()>)> afStack_48 [8];
  code *local_40;
  function afStack_38 [8];
  undefined4 local_30;
  
  iVar2 = *(int *)this;
  local_90 = (undefined1 *)0x0;
  local_98[0] = operator_new(1);
  local_8c = 0x5431c5;
  local_90 = &LAB_00542dec_1;
  local_80 = (code *)0x0;
  pcVar1 = *(code **)(param_2 + 8);
  if (pcVar1 != (code *)0x0) {
    local_7c = *(undefined4 *)(param_2 + 0xc);
    local_80 = pcVar1;
    (*pcVar1)(afStack_88,param_2,2);
  }
  if (local_80 == (code *)0x0) {
    local_70 = local_80;
    local_40 = local_80;
  }
  else {
    local_70 = (code *)0x0;
    std::function<void(gpg::SnapshotMetadata)>::swap(afStack_88,(function *)afStack_78);
    std::function<void(std::function<void()>)>::function(afStack_48,(function *)local_98);
  }
  local_30 = 0;
  std::function<void(gpg::SnapshotMetadata)>::swap(afStack_78,afStack_38);
  local_60 = 0;
  std::function<void(std::function<void()>)>::swap(afStack_48,afStack_68);
  local_50 = 0;
  std::function<void(gpg::SnapshotMetadata)>::swap
            ((function<void(gpg::SnapshotMetadata)> *)afStack_38,afStack_58);
  FUN_00542e40(afStack_48);
  std::_Function_base::~_Function_base((_Function_base *)afStack_78);
  std::function<void(std::function<void()>)>::operator=
            ((function<void(std::function<void()>)> *)(iVar2 + 0x30),afStack_68);
  local_40 = (code *)0x0;
  std::function<void(gpg::SnapshotMetadata)>::swap
            ((function<void(gpg::SnapshotMetadata)> *)afStack_58,(function *)afStack_48);
  std::function<void(gpg::SnapshotMetadata)>::swap
            ((function<void(gpg::SnapshotMetadata)> *)afStack_48,(function *)(iVar2 + 0x40));
  std::_Function_base::~_Function_base((_Function_base *)afStack_48);
  FUN_00542e40(afStack_68);
  std::_Function_base::~_Function_base((_Function_base *)afStack_88);
  std::_Function_base::~_Function_base((_Function_base *)local_98);
  return this;
}

// ---- gpg::AndroidPlatformConfiguration::SetOnLaunchedWithQuest  @ 0x543024
/* gpg::AndroidPlatformConfiguration::SetOnLaunchedWithQuest(std::function<void (gpg::Quest)>) */

AndroidPlatformConfiguration * __thiscall
gpg::AndroidPlatformConfiguration::SetOnLaunchedWithQuest
          (AndroidPlatformConfiguration *this,int param_2)

{
  code *pcVar1;
  int iVar2;
  void *local_98 [2];
  undefined1 *local_90;
  undefined4 local_8c;
  function<void(gpg::Quest)> afStack_88 [8];
  code *local_80;
  undefined4 local_7c;
  function<void(gpg::Quest)> afStack_78 [8];
  code *local_70;
  function afStack_68 [8];
  undefined4 local_60;
  function afStack_58 [8];
  undefined4 local_50;
  function<void(std::function<void()>)> afStack_48 [8];
  code *local_40;
  function afStack_38 [8];
  undefined4 local_30;
  
  iVar2 = *(int *)this;
  local_90 = (undefined1 *)0x0;
  local_98[0] = operator_new(1);
  local_8c = 0x543209;
  local_90 = &LAB_00542e16_1;
  local_80 = (code *)0x0;
  pcVar1 = *(code **)(param_2 + 8);
  if (pcVar1 != (code *)0x0) {
    local_7c = *(undefined4 *)(param_2 + 0xc);
    local_80 = pcVar1;
    (*pcVar1)(afStack_88,param_2,2);
  }
  if (local_80 == (code *)0x0) {
    local_70 = local_80;
    local_40 = local_80;
  }
  else {
    local_70 = (code *)0x0;
    std::function<void(gpg::Quest)>::swap(afStack_88,(function *)afStack_78);
    std::function<void(std::function<void()>)>::function(afStack_48,(function *)local_98);
  }
  local_30 = 0;
  std::function<void(gpg::Quest)>::swap(afStack_78,afStack_38);
  local_60 = 0;
  std::function<void(std::function<void()>)>::swap(afStack_48,afStack_68);
  local_50 = 0;
  std::function<void(gpg::Quest)>::swap((function<void(gpg::Quest)> *)afStack_38,afStack_58);
  FUN_00509b3e(afStack_48);
  std::_Function_base::~_Function_base((_Function_base *)afStack_78);
  std::function<void(std::function<void()>)>::operator=
            ((function<void(std::function<void()>)> *)(iVar2 + 0x50),afStack_68);
  local_40 = (code *)0x0;
  std::function<void(gpg::Quest)>::swap
            ((function<void(gpg::Quest)> *)afStack_58,(function *)afStack_48);
  std::function<void(gpg::Quest)>::swap
            ((function<void(gpg::Quest)> *)afStack_48,(function *)(iVar2 + 0x60));
  std::_Function_base::~_Function_base((_Function_base *)afStack_48);
  FUN_00509b3e(afStack_68);
  std::_Function_base::~_Function_base((_Function_base *)afStack_88);
  std::_Function_base::~_Function_base((_Function_base *)local_98);
  return this;
}

// ---- gpg::AndroidPlatformConfiguration::SetOptionalIntentHandlerForUI  @ 0x543138
/* gpg::AndroidPlatformConfiguration::SetOptionalIntentHandlerForUI(std::function<void (_jobject*)>)
    */

AndroidPlatformConfiguration * __thiscall
gpg::AndroidPlatformConfiguration::SetOptionalIntentHandlerForUI
          (AndroidPlatformConfiguration *this,int param_2)

{
  code *pcVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  int iVar4;
  undefined1 auStack_2c [4];
  _Any_data a_Stack_28 [8];
  code *local_20;
  undefined4 local_1c;
  
  if (DAT_00960c40 == '\0') {
    FUN_005166ae(4,
                 "Attempting to call SetOptionalIntentHandlerForUI prior to AndroidInitialization: ignoring."
                );
  }
  else {
    FUN_00549ab4(auStack_2c);
    local_20 = (code *)0x0;
    pcVar1 = *(code **)(param_2 + 8);
    iVar4 = *(int *)this;
    if (pcVar1 != (code *)0x0) {
      local_1c = *(undefined4 *)(param_2 + 0xc);
      local_20 = pcVar1;
      (*pcVar1)(a_Stack_28,param_2,2);
    }
    std::swap<std::_Any_data>(a_Stack_28,(_Any_data *)(iVar4 + 0x10));
    uVar2 = *(undefined4 *)(iVar4 + 0x18);
    *(code **)(iVar4 + 0x18) = local_20;
    uVar3 = *(undefined4 *)(iVar4 + 0x1c);
    *(undefined4 *)(iVar4 + 0x1c) = local_1c;
    local_20 = (code *)uVar2;
    local_1c = uVar3;
    std::_Function_base::~_Function_base((_Function_base *)a_Stack_28);
    FUN_00549ad2(auStack_2c);
  }
  return this;
}

// ---- gpg::AndroidPlatformConfiguration::AndroidPlatformConfiguration  @ 0x54333c
/* gpg::AndroidPlatformConfiguration::AndroidPlatformConfiguration() */

AndroidPlatformConfiguration * __thiscall
gpg::AndroidPlatformConfiguration::AndroidPlatformConfiguration(AndroidPlatformConfiguration *this)

{
  void *pvVar1;
  
  pvVar1 = operator_new(0x70);
  FUN_0054324c();
  *(void **)this = pvVar1;
  return this;
}

// ---- gpg::AndroidPlatformConfiguration::SetActivity  @ 0x54335c
/* gpg::AndroidPlatformConfiguration::SetActivity(_jobject*) */

AndroidPlatformConfiguration * __thiscall
gpg::AndroidPlatformConfiguration::SetActivity(AndroidPlatformConfiguration *this,_jobject *param_1)

{
  undefined4 uVar1;
  undefined1 auStack_2c [4];
  undefined1 auStack_28 [16];
  
  if (DAT_00960c40 == '\0') {
    FUN_005166ae(4,"Attempting to call SetActivity prior to AndroidInitialization: ignoring.");
  }
  else {
    FUN_00549ab4(auStack_2c);
    uVar1 = *(undefined4 *)this;
    FUN_005492c6(auStack_28,&DAT_00963aa4,param_1);
    FUN_00548b60(uVar1,auStack_28);
    FUN_00548ab0(auStack_28);
    FUN_00549ad2(auStack_2c);
  }
  return this;
}

// ---- gpg::AndroidPlatformConfiguration::SetOptionalViewForPopups  @ 0x5433d0
/* gpg::AndroidPlatformConfiguration::SetOptionalViewForPopups(_jobject*) */

AndroidPlatformConfiguration * __thiscall
gpg::AndroidPlatformConfiguration::SetOptionalViewForPopups
          (AndroidPlatformConfiguration *this,_jobject *param_1)

{
  int iVar1;
  undefined1 auStack_2c [4];
  undefined1 auStack_28 [16];
  
  if (DAT_00960c40 == '\0') {
    FUN_005166ae(4,
                 "Attempting to call SetOptionalViewForPopups prior to AndroidInitialization: ignoring."
                );
  }
  else {
    FUN_00549ab4(auStack_2c);
    iVar1 = *(int *)this;
    FUN_005492c6(auStack_28,&DAT_00963a24,param_1);
    FUN_00548b60(iVar1 + 0x20,auStack_28);
    FUN_00548ab0(auStack_28);
    FUN_00549ad2(auStack_2c);
  }
  return this;
}

// ---- gpg::AndroidPlatformConfiguration::~AndroidPlatformConfiguration  @ 0x543448
/* gpg::AndroidPlatformConfiguration::~AndroidPlatformConfiguration() */

AndroidPlatformConfiguration * __thiscall
gpg::AndroidPlatformConfiguration::~AndroidPlatformConfiguration(AndroidPlatformConfiguration *this)

{
  void *pvVar1;
  
  pvVar1 = *(void **)this;
  if (pvVar1 != (void *)0x0) {
    FUN_00509b3e((int)pvVar1 + 0x50);
    FUN_00542e40((int)pvVar1 + 0x30);
    FUN_00548ab0((int)pvVar1 + 0x20);
    std::_Function_base::~_Function_base((_Function_base *)((int)pvVar1 + 0x10));
    FUN_00548ab0(pvVar1);
    operator_delete(pvVar1);
  }
  *(undefined4 *)this = 0;
  return this;
}

// ---- gpg::AndroidSupport::OnActivityPaused  @ 0x548166
/* gpg::AndroidSupport::OnActivityPaused(_JNIEnv*, _jobject*) */

_JNIEnv * gpg::AndroidSupport::OnActivityPaused(_JNIEnv *param_1,_jobject *param_2)

{
  return param_1;
}

// ---- gpg::AndroidSupport::OnActivityStopped  @ 0x54848c
/* gpg::AndroidSupport::OnActivityStopped(_JNIEnv*, _jobject*) */

void gpg::AndroidSupport::OnActivityStopped(_JNIEnv *param_1,_jobject *param_2)

{
  int iVar1;
  _JNIEnv *p_Var2;
  _jobject *p_Stack_1c;
  undefined4 local_18;
  undefined4 local_14;
  
  p_Var2 = param_1;
  p_Stack_1c = param_2;
  iVar1 = FUN_00548168();
  if (iVar1 != 0) {
    FUN_00549ab4(&p_Stack_1c);
    local_18 = 0;
    local_14 = 1;
    FUN_00548340(param_1,param_2,0,1,p_Var2);
    FUN_00549ad2(&p_Stack_1c);
  }
  return;
}

// ---- gpg::AndroidSupport::OnActivityStarted  @ 0x5484cc
/* gpg::AndroidSupport::OnActivityStarted(_JNIEnv*, _jobject*) */

void gpg::AndroidSupport::OnActivityStarted(_JNIEnv *param_1,_jobject *param_2)

{
  int iVar1;
  _JNIEnv *p_Var2;
  _jobject *p_Stack_1c;
  undefined4 local_18;
  undefined4 uStack_14;
  
  p_Var2 = param_1;
  p_Stack_1c = param_2;
  iVar1 = FUN_00548168();
  if (iVar1 != 0) {
    FUN_00549ab4(&p_Stack_1c);
    local_18 = 4;
    uStack_14 = 1;
    FUN_00548340(param_1,param_2,4,1,p_Var2);
    FUN_00549ad2(&p_Stack_1c);
  }
  return;
}

// ---- gpg::AndroidSupport::OnActivityResumed  @ 0x548514
/* gpg::AndroidSupport::OnActivityResumed(_JNIEnv*, _jobject*) */

void gpg::AndroidSupport::OnActivityResumed(_JNIEnv *param_1,_jobject *param_2)

{
  int iVar1;
  _JNIEnv *p_Var2;
  _jobject *p_Stack_1c;
  undefined4 local_18;
  undefined4 uStack_14;
  
  p_Var2 = param_1;
  p_Stack_1c = param_2;
  iVar1 = FUN_00548168();
  if (iVar1 != 0) {
    FUN_00549ab4(&p_Stack_1c);
    local_18 = 8;
    uStack_14 = 1;
    FUN_00548340(param_1,param_2,8,1,p_Var2);
    FUN_00549ad2(&p_Stack_1c);
  }
  return;
}

// ---- gpg::AndroidSupport::OnActivityDestroyed  @ 0x54855c
/* gpg::AndroidSupport::OnActivityDestroyed(_JNIEnv*, _jobject*) */

void gpg::AndroidSupport::OnActivityDestroyed(_JNIEnv *param_1,_jobject *param_2)

{
  int iVar1;
  _JNIEnv *p_Var2;
  _jobject *p_Stack_1c;
  undefined4 local_18;
  undefined4 uStack_14;
  
  p_Var2 = param_1;
  p_Stack_1c = param_2;
  iVar1 = FUN_00548168();
  if (iVar1 != 0) {
    FUN_00549ab4(&p_Stack_1c);
    local_18 = 0x10;
    uStack_14 = 1;
    FUN_00548340(param_1,param_2,0x10,1,p_Var2);
    FUN_00549ad2(&p_Stack_1c);
  }
  return;
}

// ---- gpg::AndroidSupport::OnActivityCreated  @ 0x5486b4
/* gpg::AndroidSupport::OnActivityCreated(_JNIEnv*, _jobject*, _jobject*) */

void gpg::AndroidSupport::OnActivityCreated(_JNIEnv *param_1,_jobject *param_2,_jobject *param_3)

{
  int iVar1;
  _JNIEnv *p_Var2;
  _jobject *p_Stack_1c;
  _jobject *p_Stack_18;
  
  p_Var2 = param_1;
  p_Stack_1c = param_2;
  p_Stack_18 = param_3;
  iVar1 = FUN_00548168();
  if (iVar1 != 0) {
    FUN_00549ab4(&p_Stack_1c);
    FUN_005485a4(param_1,0,param_2,param_3,p_Var2);
    FUN_00549ad2(&p_Stack_1c);
  }
  return;
}

// ---- gpg::AndroidSupport::OnActivityResult  @ 0x548790
/* gpg::AndroidSupport::OnActivityResult(_JNIEnv*, _jobject*, int, int, _jobject*) */

void gpg::AndroidSupport::OnActivityResult
               (_JNIEnv *param_1,_jobject *param_2,int param_3,int param_4,_jobject *param_5)

{
  int iVar1;
  int iStack_1c;
  
  iVar1 = param_3;
  iStack_1c = param_4;
  FUN_00549ab4(&iStack_1c);
  FUN_005486ec(param_1,0,param_2,param_3,param_4,param_5,iVar1);
  FUN_00549ad2(&iStack_1c);
  return;
}

// ---- gpg::AndroidSupport::OnActivitySaveInstanceState  @ 0x548874
/* gpg::AndroidSupport::OnActivitySaveInstanceState(_JNIEnv*, _jobject*, _jobject*) */

void gpg::AndroidSupport::OnActivitySaveInstanceState
               (_JNIEnv *param_1,_jobject *param_2,_jobject *param_3)

{
  int iVar1;
  _JNIEnv *p_Var2;
  _jobject *p_Stack_1c;
  _jobject *p_Stack_18;
  
  p_Var2 = param_1;
  p_Stack_1c = param_2;
  p_Stack_18 = param_3;
  iVar1 = FUN_00548168();
  if (iVar1 != 0) {
    FUN_00549ab4(&p_Stack_1c);
    FUN_005487cc(param_1,0,param_2,param_3,p_Var2);
    FUN_00549ad2(&p_Stack_1c);
  }
  return;
}

// ---- gpg::ConnectionResponse::~ConnectionResponse  @ 0x5508e6
/* gpg::ConnectionResponse::~ConnectionResponse() */

ConnectionResponse * __thiscall
gpg::ConnectionResponse::~ConnectionResponse(ConnectionResponse *this)

{
  std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::~_Vector_base
            ((_Vector_base<unsigned_char,std::allocator<unsigned_char>> *)(this + 8));
  FUN_007c5914(this);
  return this;
}

// ---- gpg::ConnectionResponse::ConnectionResponse  @ 0x550aac
/* gpg::ConnectionResponse::ConnectionResponse(gpg::ConnectionResponse const&) */

ConnectionResponse * __thiscall
gpg::ConnectionResponse::ConnectionResponse(ConnectionResponse *this,ConnectionResponse *param_1)

{
  FUN_007c64e8();
  *(undefined4 *)(this + 4) = *(undefined4 *)(param_1 + 4);
  std::vector<unsigned_char,std::allocator<unsigned_char>>::vector
            ((vector<unsigned_char,std::allocator<unsigned_char>> *)(this + 8),param_1 + 8);
  return this;
}

// ---- gpg::StartAdvertisingResult::~StartAdvertisingResult  @ 0x5519f2
/* gpg::StartAdvertisingResult::~StartAdvertisingResult() */

StartAdvertisingResult * __thiscall
gpg::StartAdvertisingResult::~StartAdvertisingResult(StartAdvertisingResult *this)

{
  FUN_007c5914(this + 8);
  FUN_007c5914(this + 4);
  return this;
}

// ---- gpg::ConnectionRequest::~ConnectionRequest  @ 0x551c0a
/* gpg::ConnectionRequest::~ConnectionRequest() */

ConnectionRequest * __thiscall gpg::ConnectionRequest::~ConnectionRequest(ConnectionRequest *this)

{
  std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::~_Vector_base
            ((_Vector_base<unsigned_char,std::allocator<unsigned_char>> *)(this + 0xc));
  FUN_007c5914(this + 8);
  FUN_007c5914(this + 4);
  FUN_007c5914(this);
  return this;
}

// ---- gpg::StartAdvertisingResult::StartAdvertisingResult  @ 0x551dbc
/* gpg::StartAdvertisingResult::StartAdvertisingResult(gpg::StartAdvertisingResult const&) */

StartAdvertisingResult * __thiscall
gpg::StartAdvertisingResult::StartAdvertisingResult
          (StartAdvertisingResult *this,StartAdvertisingResult *param_1)

{
  *(undefined4 *)this = *(undefined4 *)param_1;
  FUN_007c64e8(this + 4,param_1 + 4);
  FUN_007c64e8(this + 8,param_1 + 8);
  return this;
}

// ---- gpg::ConnectionRequest::ConnectionRequest  @ 0x551e50
/* gpg::ConnectionRequest::ConnectionRequest(gpg::ConnectionRequest const&) */

ConnectionRequest * __thiscall
gpg::ConnectionRequest::ConnectionRequest(ConnectionRequest *this,ConnectionRequest *param_1)

{
  void *__dest;
  int iVar1;
  size_t __n;
  int iVar2;
  uint uVar3;
  
  FUN_007c64e8();
  FUN_007c64e8(this + 4,param_1 + 4);
  FUN_007c64e8(this + 8,param_1 + 8);
  iVar2 = *(int *)(param_1 + 0x10);
  iVar1 = *(int *)(param_1 + 0xc);
  *(undefined4 *)(this + 0xc) = 0;
  uVar3 = iVar2 - iVar1;
  *(undefined4 *)(this + 0x10) = 0;
  *(undefined4 *)(this + 0x14) = 0;
  if (uVar3 == 0) {
    __dest = (void *)0x0;
  }
  else {
    __dest = operator_new(uVar3);
  }
  *(void **)(this + 0xc) = __dest;
  *(void **)(this + 0x10) = __dest;
  *(uint *)(this + 0x14) = uVar3 + (int)__dest;
  __n = *(int *)(param_1 + 0x10) - (int)*(void **)(param_1 + 0xc);
  if (__n != 0) {
    __dest = memmove(__dest,*(void **)(param_1 + 0xc),__n);
  }
  *(size_t *)(this + 0x10) = (int)__dest + __n;
  return this;
}

// ---- gpg::EndpointDetails::~EndpointDetails  @ 0x552d76
/* gpg::EndpointDetails::~EndpointDetails() */

EndpointDetails * __thiscall gpg::EndpointDetails::~EndpointDetails(EndpointDetails *this)

{
  FUN_007c5914(this + 0xc);
  FUN_007c5914(this + 8);
  FUN_007c5914(this + 4);
  FUN_007c5914(this);
  return this;
}

// ---- gpg::DEFAULT_ON_LOG  @ 0x5539c8
/* gpg::DEFAULT_ON_LOG(gpg::LogLevel, std::string const&) */

void gpg::DEFAULT_ON_LOG(int param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4)

{
  undefined1 uVar1;
  int iVar2;
  undefined4 uVar3;
  
  if ((-1 < DAT_009643d0 << 0x1f) && (iVar2 = __cxa_guard_acquire(), iVar2 != 0)) {
    DAT_009643d4 = (code *)dlsym(0xffffffff,"__android_log_write");
    __cxa_guard_release(&DAT_009643d0);
  }
  if (DAT_009643d4 != (code *)0x0) {
    if (param_1 - 1U < 4) {
      uVar1 = (&DAT_00831437)[param_1];
    }
    else {
      uVar1 = 0;
    }
    (*DAT_009643d4)(uVar1,"GamesNativeSDK",*param_2,DAT_009643d4,param_4);
    return;
  }
  uVar3 = operator<<((gpg *)&DAT_00970e84,param_1);
  uVar3 = FUN_007bbcd0(uVar3,&DAT_0080ab20);
  FUN_007af9cc(uVar3,param_2);
  FUN_007bb8e4();
  return;
}

// ---- gpg::TurnBasedMultiplayerManager::TurnBasedMatchResponse::TurnBasedMatchResponse  @ 0x5785a0
/* gpg::TurnBasedMultiplayerManager::TurnBasedMatchResponse::TurnBasedMatchResponse(gpg::TurnBasedMultiplayerManager::TurnBasedMatchResponse
   const&) */

TurnBasedMatchResponse * __thiscall
gpg::TurnBasedMultiplayerManager::TurnBasedMatchResponse::TurnBasedMatchResponse
          (TurnBasedMatchResponse *this,TurnBasedMatchResponse *param_1)

{
  *(undefined4 *)this = *(undefined4 *)param_1;
  TurnBasedMatch::TurnBasedMatch((TurnBasedMatch *)(this + 4),(TurnBasedMatch *)(param_1 + 4));
  return this;
}

// ---- gpg::TurnBasedMultiplayerManager::PlayerSelectUIResponse::PlayerSelectUIResponse  @ 0x57b310
/* gpg::TurnBasedMultiplayerManager::PlayerSelectUIResponse::PlayerSelectUIResponse(gpg::TurnBasedMultiplayerManager::PlayerSelectUIResponse
   const&) */

PlayerSelectUIResponse * __thiscall
gpg::TurnBasedMultiplayerManager::PlayerSelectUIResponse::PlayerSelectUIResponse
          (PlayerSelectUIResponse *this,PlayerSelectUIResponse *param_1)

{
  *(undefined4 *)this = *(undefined4 *)param_1;
  std::vector<std::string,std::allocator<std::string>>::vector
            ((vector<std::string,std::allocator<std::string>> *)(this + 4),param_1 + 4);
  *(undefined4 *)(this + 0x10) = *(undefined4 *)(param_1 + 0x10);
  *(undefined4 *)(this + 0x14) = *(undefined4 *)(param_1 + 0x14);
  return this;
}
