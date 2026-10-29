// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 33 functions

// ---- GPGSRealtimeMultiplayerManager::GPGSRealtimeMultiplayerManager  @ 0x3397a4
/* GPGSRealtimeMultiplayerManager::GPGSRealtimeMultiplayerManager() */

GPGSRealtimeMultiplayerManager * __thiscall
GPGSRealtimeMultiplayerManager::GPGSRealtimeMultiplayerManager(GPGSRealtimeMultiplayerManager *this)

{
  gpg::IRealTimeEventListener::IRealTimeEventListener((IRealTimeEventListener *)this);
  *(undefined ***)this = &PTR__GPGSRealtimeMultiplayerManager_1_00912040;
  FUN_007c51b0(this + 0x10);
  gpg::RealTimeRoom::RealTimeRoom((RealTimeRoom *)(this + 0x14));
  *(undefined4 *)(this + 0x1c) = 0;
  std::
  map<std::string,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>,std::less<std::string>,std::allocator<std::pair<std::string_const,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>>>>
  ::map((map<std::string,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>,std::less<std::string>,std::allocator<std::pair<std::string_const,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>>>>
         *)(this + 0x20));
  std::map<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string_const,int>>>
  ::map((map<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string_const,int>>>
         *)(this + 0x38));
  *(undefined4 *)(this + 0x50) = 0;
  *(undefined4 *)(this + 0x54) = 0;
  std::vector<GPGSEventObject,std::allocator<GPGSEventObject>>::vector
            ((vector<GPGSEventObject,std::allocator<GPGSEventObject>> *)(this + 0x58));
  return this;
}

// ---- GPGSRealtimeMultiplayerManager::~GPGSRealtimeMultiplayerManager  @ 0x339854
/* WARNING: Removing unreachable block (ram,0x003398a8) */
/* GPGSRealtimeMultiplayerManager::~GPGSRealtimeMultiplayerManager() */

GPGSRealtimeMultiplayerManager * __thiscall
GPGSRealtimeMultiplayerManager::~GPGSRealtimeMultiplayerManager
          (GPGSRealtimeMultiplayerManager *this)

{
  *(undefined ***)this = &PTR__GPGSRealtimeMultiplayerManager_1_00912040;
  std::vector<GPGSEventObject,std::allocator<GPGSEventObject>>::~vector
            ((vector<GPGSEventObject,std::allocator<GPGSEventObject>> *)(this + 0x58));
  std::map<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string_const,int>>>
  ::~map((map<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string_const,int>>>
          *)(this + 0x38));
  std::
  map<std::string,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>,std::less<std::string>,std::allocator<std::pair<std::string_const,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>>>>
  ::~map((map<std::string,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>,std::less<std::string>,std::allocator<std::pair<std::string_const,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>>>>
          *)(this + 0x20));
  gpg::RealTimeRoom::~RealTimeRoom((RealTimeRoom *)(this + 0x14));
  FUN_007c5914(this + 0x10);
  gpg::IRealTimeEventListener::~IRealTimeEventListener((IRealTimeEventListener *)this);
  return this;
}

// ---- GPGSRealtimeMultiplayerManager::~GPGSRealtimeMultiplayerManager  @ 0x3398c0
/* GPGSRealtimeMultiplayerManager::~GPGSRealtimeMultiplayerManager() */

GPGSRealtimeMultiplayerManager * __thiscall
GPGSRealtimeMultiplayerManager::~GPGSRealtimeMultiplayerManager
          (GPGSRealtimeMultiplayerManager *this)

{
  ~GPGSRealtimeMultiplayerManager(this);
  operator_delete(this);
  return this;
}

// ---- GPGSRealtimeMultiplayerManager::sharedInstance  @ 0x33a618
/* GPGSRealtimeMultiplayerManager::sharedInstance() */

GPGSRealtimeMultiplayerManager * GPGSRealtimeMultiplayerManager::sharedInstance(void)

{
  GPGSRealtimeMultiplayerManager *this;
  
  if (m_pInstance == (GPGSRealtimeMultiplayerManager *)0x0) {
    this = operator_new(100);
    GPGSRealtimeMultiplayerManager(this);
    m_pInstance = this;
    init(this);
  }
  return m_pInstance;
}

// ---- GPGSRealtimeMultiplayerManager::init  @ 0x33a668
/* GPGSRealtimeMultiplayerManager::init() */

undefined4 __thiscall GPGSRealtimeMultiplayerManager::init(GPGSRealtimeMultiplayerManager *this)

{
  this[0xc] = (GPGSRealtimeMultiplayerManager)0x0;
  this[0xf] = (GPGSRealtimeMultiplayerManager)0x0;
  this[0xd] = (GPGSRealtimeMultiplayerManager)0x0;
  this[0xe] = (GPGSRealtimeMultiplayerManager)0x1;
  *(undefined4 *)(this + 4) = 0;
  *(undefined4 *)(this + 8) = 0;
  FUN_007c5e70(this + 0x10,&DAT_007d84a4);
  return 1;
}

// ---- GPGSRealtimeMultiplayerManager::isRoomValid  @ 0x33a6b4
/* GPGSRealtimeMultiplayerManager::isRoomValid() */

GPGSRealtimeMultiplayerManager __thiscall
GPGSRealtimeMultiplayerManager::isRoomValid(GPGSRealtimeMultiplayerManager *this)

{
  return this[0xc];
}

// ---- GPGSRealtimeMultiplayerManager::canSearch  @ 0x33a6c4
/* GPGSRealtimeMultiplayerManager::canSearch() */

GPGSRealtimeMultiplayerManager __thiscall
GPGSRealtimeMultiplayerManager::canSearch(GPGSRealtimeMultiplayerManager *this)

{
  return this[0xe];
}

// ---- GPGSRealtimeMultiplayerManager::isPlayerSearchInProgress  @ 0x33a6d4
/* GPGSRealtimeMultiplayerManager::isPlayerSearchInProgress() */

GPGSRealtimeMultiplayerManager __thiscall
GPGSRealtimeMultiplayerManager::isPlayerSearchInProgress(GPGSRealtimeMultiplayerManager *this)

{
  return this[0xd];
}

// ---- GPGSRealtimeMultiplayerManager::isConnecting  @ 0x33a6e4
/* GPGSRealtimeMultiplayerManager::isConnecting() */

bool __thiscall GPGSRealtimeMultiplayerManager::isConnecting(GPGSRealtimeMultiplayerManager *this)

{
  char cVar1;
  int iVar2;
  bool bVar3;
  
  cVar1 = gpg::RealTimeRoom::Valid((RealTimeRoom *)(this + 0x14));
  if (cVar1 == '\x01') {
    iVar2 = gpg::RealTimeRoom::Status((RealTimeRoom *)(this + 0x14));
    bVar3 = iVar2 == 2;
  }
  else {
    bVar3 = false;
  }
  return bVar3;
}

// ---- GPGSRealtimeMultiplayerManager::inviteMatch  @ 0x33a8f0
/* GPGSRealtimeMultiplayerManager::inviteMatch(int, int, int) */

void __thiscall
GPGSRealtimeMultiplayerManager::inviteMatch
          (GPGSRealtimeMultiplayerManager *this,int param_1,int param_2,int param_3)

{
  char cVar1;
  int iVar2;
  GameServices *this_00;
  RealTimeMultiplayerManager *pRVar3;
  undefined4 uVar4;
  function<void(gpg::TurnBasedMultiplayerManager::PlayerSelectUIResponse_const&)> afStack_2c [16];
  int local_1c;
  
  local_1c = __stack_chk_guard;
  cVar1 = GPGSStateManager::IsAuthorized();
  if (cVar1 == '\x01') {
    iVar2 = isRoomValid(this);
    if (iVar2 == 0) {
      this[0xd] = (GPGSRealtimeMultiplayerManager)0x1;
      this[0xe] = (GPGSRealtimeMultiplayerManager)0x0;
      *(undefined4 *)(this + 4) = 0;
      *(undefined4 *)(this + 8) = 0;
      this_00 = (GameServices *)GPGSStateManager::GetGameServices();
      if (this_00 == (GameServices *)0x0) {
        uVar4 = 0;
      }
      else {
        pRVar3 = (RealTimeMultiplayerManager *)gpg::GameServices::RealTimeMultiplayer(this_00);
        FUN_0033c044(afStack_2c,this,param_1,param_3);
        gpg::RealTimeMultiplayerManager::ShowPlayerSelectUI(pRVar3,param_1,param_2,1,afStack_2c);
        std::function<void(gpg::TurnBasedMultiplayerManager::PlayerSelectUIResponse_const&)>::
        ~function(afStack_2c);
        uVar4 = 1;
      }
    }
    else {
      uVar4 = 0;
    }
  }
  else {
    uVar4 = 0;
  }
  if (local_1c != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar4);
  }
  return;
}

// ---- GPGSRealtimeMultiplayerManager::quickMatch  @ 0x33aa2c
/* GPGSRealtimeMultiplayerManager::quickMatch(int, int, int) */

void __thiscall
GPGSRealtimeMultiplayerManager::quickMatch
          (GPGSRealtimeMultiplayerManager *this,int param_1,int param_2,int param_3)

{
  char cVar1;
  int iVar2;
  Builder *pBVar3;
  GameServices *this_00;
  RealTimeMultiplayerManager *pRVar4;
  bool bVar5;
  RealTimeRoomConfig aRStack_34 [8];
  GPGSRealtimeMultiplayerManager *local_2c;
  int local_28;
  function<void(gpg::RealTimeMultiplayerManager::RealTimeRoomResponse_const&)> afStack_24 [16];
  int local_14;
  
  local_14 = __stack_chk_guard;
  cVar1 = GPGSStateManager::IsAuthorized();
  if (cVar1 == '\x01') {
    iVar2 = isRoomValid(this);
    if (iVar2 == 0) {
      this[0xd] = (GPGSRealtimeMultiplayerManager)0x1;
      this[0xe] = (GPGSRealtimeMultiplayerManager)0x0;
      *(undefined4 *)(this + 4) = 0;
      *(undefined4 *)(this + 8) = 0;
      gpg::RealTimeRoomConfig::Builder::Builder((Builder *)&local_2c);
      pBVar3 = (Builder *)
               gpg::RealTimeRoomConfig::Builder::SetMinimumAutomatchingPlayers
                         ((Builder *)&local_2c,param_1);
      pBVar3 = (Builder *)
               gpg::RealTimeRoomConfig::Builder::SetMaximumAutomatchingPlayers(pBVar3,param_2);
      gpg::RealTimeRoomConfig::Builder::SetVariant(pBVar3,param_3);
      gpg::RealTimeRoomConfig::Builder::Create();
      gpg::RealTimeRoomConfig::Builder::~Builder((Builder *)&local_2c);
      this_00 = (GameServices *)GPGSStateManager::GetGameServices();
      bVar5 = this_00 != (GameServices *)0x0;
      if (bVar5) {
        pRVar4 = (RealTimeMultiplayerManager *)gpg::GameServices::RealTimeMultiplayer(this_00);
        local_2c = this;
        local_28 = param_1;
        FUN_0033c0e0(afStack_24,this,param_1);
        gpg::RealTimeMultiplayerManager::CreateRealTimeRoom(pRVar4,aRStack_34,this,afStack_24);
        std::function<void(gpg::RealTimeMultiplayerManager::RealTimeRoomResponse_const&)>::~function
                  (afStack_24);
      }
      gpg::RealTimeRoomConfig::~RealTimeRoomConfig(aRStack_34);
    }
    else {
      bVar5 = false;
    }
  }
  else {
    bVar5 = false;
  }
  if (local_14 == __stack_chk_guard) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(bVar5);
}

// ---- GPGSRealtimeMultiplayerManager::showWaitingRoomAndPlayGame  @ 0x33ac58
/* GPGSRealtimeMultiplayerManager::showWaitingRoomAndPlayGame(int, bool) */

void __thiscall
GPGSRealtimeMultiplayerManager::showWaitingRoomAndPlayGame
          (GPGSRealtimeMultiplayerManager *this,int param_1,bool param_2)

{
  undefined4 uVar1;
  string *psVar2;
  undefined4 *puVar3;
  GameServices *this_00;
  RealTimeMultiplayerManager *pRVar4;
  MultiplayerParticipant aMStack_40 [8];
  undefined4 local_38;
  undefined1 auStack_34 [4];
  undefined1 auStack_30 [4];
  function<void(gpg::RealTimeMultiplayerManager::WaitingRoomUIResponse_const&)> afStack_2c [16];
  int local_1c;
  
  local_1c = __stack_chk_guard;
  gpg::RealTimeRoom::CreatingParticipant();
  uVar1 = gpg::MultiplayerParticipant::Id(aMStack_40);
  thunk_FUN_007c653c(this + 0x10,uVar1);
  GPGSEventObject::GPGSEventObject((GPGSEventObject *)&local_38);
  local_38 = 1;
  uVar1 = gpg::MultiplayerParticipant::Id(aMStack_40);
  thunk_FUN_007c653c(auStack_34,uVar1);
  uVar1 = gpg::MultiplayerParticipant::DisplayName(aMStack_40);
  thunk_FUN_007c653c(auStack_30,uVar1);
  std::mutex::lock((mutex *)(this + 0x54));
  std::vector<GPGSEventObject,std::allocator<GPGSEventObject>>::push_back
            ((vector<GPGSEventObject,std::allocator<GPGSEventObject>> *)(this + 0x58),
             (GPGSEventObject *)&local_38);
  std::mutex::unlock((mutex *)(this + 0x54));
  psVar2 = (string *)gpg::MultiplayerParticipant::Id(aMStack_40);
  puVar3 = (undefined4 *)
           std::
           map<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string_const,int>>>
           ::operator[]((map<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string_const,int>>>
                         *)(this + 0x38),psVar2);
  uVar1 = gpg::MultiplayerParticipant::Status(aMStack_40);
  *puVar3 = uVar1;
  if ((param_2) &&
     (this_00 = (GameServices *)GPGSStateManager::GetGameServices(), this_00 != (GameServices *)0x0)
     ) {
    pRVar4 = (RealTimeMultiplayerManager *)gpg::GameServices::RealTimeMultiplayer(this_00);
    FUN_0033c35c(afStack_2c,this);
    gpg::RealTimeMultiplayerManager::ShowWaitingRoomUI(pRVar4,this + 0x14,param_1,afStack_2c);
    std::function<void(gpg::RealTimeMultiplayerManager::WaitingRoomUIResponse_const&)>::~function
              (afStack_2c);
  }
  GPGSEventObject::~GPGSEventObject((GPGSEventObject *)&local_38);
  gpg::MultiplayerParticipant::~MultiplayerParticipant(aMStack_40);
  if (local_1c == __stack_chk_guard) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

// ---- GPGSRealtimeMultiplayerManager::playGame  @ 0x33adc8
/* GPGSRealtimeMultiplayerManager::playGame() */

void GPGSRealtimeMultiplayerManager::playGame(void)

{
  return;
}

// ---- GPGSRealtimeMultiplayerManager::getRoomCount  @ 0x33add0
/* GPGSRealtimeMultiplayerManager::getRoomCount() */

int __thiscall GPGSRealtimeMultiplayerManager::getRoomCount(GPGSRealtimeMultiplayerManager *this)

{
  char cVar1;
  bool bVar2;
  int iVar3;
  MultiplayerParticipant *pMVar4;
  undefined4 local_2c;
  undefined4 local_28;
  int local_24;
  vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>> *local_20;
  MultiplayerParticipant aMStack_1c [8];
  vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>> avStack_14 [12];
  
  iVar3 = isRoomValid(this);
  if (iVar3 == 0) {
    iVar3 = 0;
  }
  else {
    gpg::RealTimeRoom::Participants();
    local_24 = 0;
    local_20 = avStack_14;
    local_2c = std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>
               ::begin(local_20);
    local_28 = std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>
               ::end(local_20);
    while (bVar2 = __gnu_cxx::operator!=
                             ((__normal_iterator *)&local_2c,(__normal_iterator *)&local_28), bVar2)
    {
      pMVar4 = (MultiplayerParticipant *)
               __gnu_cxx::
               __normal_iterator<gpg::MultiplayerParticipant*,std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>>
               ::operator*((__normal_iterator<gpg::MultiplayerParticipant*,std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>>
                            *)&local_2c);
      gpg::MultiplayerParticipant::MultiplayerParticipant(aMStack_1c,pMVar4);
      cVar1 = gpg::MultiplayerParticipant::IsConnectedToRoom(aMStack_1c);
      if (cVar1 != '\x01') {
        local_24 = local_24 + 1;
      }
      gpg::MultiplayerParticipant::~MultiplayerParticipant(aMStack_1c);
      __gnu_cxx::
      __normal_iterator<gpg::MultiplayerParticipant*,std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>>
      ::operator++((__normal_iterator<gpg::MultiplayerParticipant*,std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>>
                    *)&local_2c);
    }
    iVar3 = local_24 + -1;
    std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>::~vector
              (avStack_14);
  }
  return iVar3;
}

// ---- GPGSRealtimeMultiplayerManager::getRoomParticipants  @ 0x33ae98
/* GPGSRealtimeMultiplayerManager::getRoomParticipants() */

vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>> *
GPGSRealtimeMultiplayerManager::getRoomParticipants(void)

{
  vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>> *in_r0;
  int iVar1;
  GPGSRealtimeMultiplayerManager *in_r1;
  vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>> avStack_14 [16];
  
  std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>::vector
            (in_r0);
  iVar1 = isRoomValid(in_r1);
  if (iVar1 != 0) {
    gpg::RealTimeRoom::Participants();
    std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>::operator=
              (in_r0,avStack_14);
    std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>::~vector
              (avStack_14);
  }
  return in_r0;
}

// ---- GPGSRealtimeMultiplayerManager::disconnect  @ 0x33aee8
/* GPGSRealtimeMultiplayerManager::disconnect() */

void __thiscall GPGSRealtimeMultiplayerManager::disconnect(GPGSRealtimeMultiplayerManager *this)

{
  int iVar1;
  
  iVar1 = gpg::RealTimeRoom::Valid((RealTimeRoom *)(this + 0x14));
  if (iVar1 != 0) {
    leaveRoom(this);
  }
  this[0xd] = (GPGSRealtimeMultiplayerManager)0x0;
  this[0xe] = (GPGSRealtimeMultiplayerManager)0x1;
  this[0xc] = (GPGSRealtimeMultiplayerManager)0x0;
  this[0xf] = (GPGSRealtimeMultiplayerManager)0x0;
  *(undefined4 *)(this + 4) = 0;
  *(undefined4 *)(this + 8) = 0;
  std::map<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string_const,int>>>
  ::clear((map<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string_const,int>>>
           *)(this + 0x38));
  return;
}

// ---- GPGSRealtimeMultiplayerManager::leaveRoom  @ 0x33af6c
/* GPGSRealtimeMultiplayerManager::leaveRoom() */

void __thiscall GPGSRealtimeMultiplayerManager::leaveRoom(GPGSRealtimeMultiplayerManager *this)

{
  GameServices *this_00;
  RealTimeMultiplayerManager *pRVar1;
  function<void(gpg::ResponseStatus_const&)> afStack_2c [16];
  int local_1c;
  
  local_1c = __stack_chk_guard;
  this_00 = (GameServices *)GPGSStateManager::GetGameServices();
  pRVar1 = (RealTimeMultiplayerManager *)gpg::GameServices::RealTimeMultiplayer(this_00);
  FUN_0033c518(afStack_2c);
  gpg::RealTimeMultiplayerManager::LeaveRoom(pRVar1,this + 0x14,afStack_2c);
  std::function<void(gpg::ResponseStatus_const&)>::~function(afStack_2c);
  if (local_1c != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}

// ---- GPGSRealtimeMultiplayerManager::OnRoomStatusChanged  @ 0x33afdc
/* GPGSRealtimeMultiplayerManager::OnRoomStatusChanged(gpg::RealTimeRoom const&) */

void __thiscall
GPGSRealtimeMultiplayerManager::OnRoomStatusChanged
          (GPGSRealtimeMultiplayerManager *this,RealTimeRoom *param_1)

{
  int iVar1;
  
  iVar1 = gpg::RealTimeRoom::Valid((RealTimeRoom *)(this + 0x14));
  if (iVar1 != 0) {
    gpg::RealTimeRoom::operator=((RealTimeRoom *)(this + 0x14),param_1);
    *(undefined4 *)(this + 4) = 0;
    *(undefined4 *)(this + 8) = 0;
    iVar1 = gpg::RealTimeRoom::Status((RealTimeRoom *)(this + 0x14));
    if (iVar1 == 4) {
      this[0xd] = (GPGSRealtimeMultiplayerManager)0x0;
      this[0xc] = (GPGSRealtimeMultiplayerManager)0x1;
    }
    else {
      iVar1 = gpg::RealTimeRoom::Status((RealTimeRoom *)(this + 0x14));
      if (iVar1 != 5) {
        gpg::RealTimeRoom::Status((RealTimeRoom *)(this + 0x14));
      }
    }
  }
  checkShouldCloseRoom(this);
  return;
}

// ---- GPGSRealtimeMultiplayerManager::OnParticipantStatusChanged  @ 0x33b06c
/* GPGSRealtimeMultiplayerManager::OnParticipantStatusChanged(gpg::RealTimeRoom const&,
   gpg::MultiplayerParticipant const&) */

void __thiscall
GPGSRealtimeMultiplayerManager::OnParticipantStatusChanged
          (GPGSRealtimeMultiplayerManager *this,RealTimeRoom *param_1,
          MultiplayerParticipant *param_2)

{
  char cVar1;
  int iVar2;
  
  (**(code **)(*(int *)this + 8))(this,param_1);
  cVar1 = isRoomValid(this);
  if (cVar1 == '\x01') {
    iVar2 = gpg::MultiplayerParticipant::Status(param_2);
    if ((iVar2 != 2) && (iVar2 = gpg::MultiplayerParticipant::Status(param_2), iVar2 != 4)) {
      gpg::MultiplayerParticipant::Status(param_2);
    }
    checkShouldCloseRoom(this);
  }
  return;
}

// ---- GPGSRealtimeMultiplayerManager::OnConnectedSetChanged  @ 0x33b0dc
/* GPGSRealtimeMultiplayerManager::OnConnectedSetChanged(gpg::RealTimeRoom const&) */

void __thiscall
GPGSRealtimeMultiplayerManager::OnConnectedSetChanged
          (GPGSRealtimeMultiplayerManager *this,RealTimeRoom *param_1)

{
  char cVar1;
  bool bVar2;
  MultiplayerParticipant *pMVar3;
  undefined4 local_28;
  undefined4 local_24;
  vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>> *local_20;
  MultiplayerParticipant aMStack_1c [8];
  vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>> avStack_14 [16];
  
  (**(code **)(*(int *)this + 8))(this,param_1);
  cVar1 = isRoomValid(this);
  if (cVar1 == '\x01') {
    gpg::RealTimeRoom::Participants();
    local_20 = avStack_14;
    local_28 = std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>
               ::begin(local_20);
    local_24 = std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>
               ::end(local_20);
    while (bVar2 = __gnu_cxx::operator!=
                             ((__normal_iterator *)&local_28,(__normal_iterator *)&local_24), bVar2)
    {
      pMVar3 = (MultiplayerParticipant *)
               __gnu_cxx::
               __normal_iterator<gpg::MultiplayerParticipant*,std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>>
               ::operator*((__normal_iterator<gpg::MultiplayerParticipant*,std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>>
                            *)&local_28);
      gpg::MultiplayerParticipant::MultiplayerParticipant(aMStack_1c,pMVar3);
      gpg::MultiplayerParticipant::~MultiplayerParticipant(aMStack_1c);
      __gnu_cxx::
      __normal_iterator<gpg::MultiplayerParticipant*,std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>>
      ::operator++((__normal_iterator<gpg::MultiplayerParticipant*,std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>>
                    *)&local_28);
    }
    checkShouldCloseRoom(this);
    std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>::~vector
              (avStack_14);
  }
  return;
}

// ---- GPGSRealtimeMultiplayerManager::OnP2PConnected  @ 0x33b188
/* GPGSRealtimeMultiplayerManager::OnP2PConnected(gpg::RealTimeRoom const&,
   gpg::MultiplayerParticipant const&) */

void __thiscall
GPGSRealtimeMultiplayerManager::OnP2PConnected
          (GPGSRealtimeMultiplayerManager *this,RealTimeRoom *param_1,
          MultiplayerParticipant *param_2)

{
  char cVar1;
  undefined4 uVar2;
  undefined1 auStack_18 [4];
  undefined1 auStack_14 [4];
  undefined1 auStack_10 [4];
  undefined1 auStack_c [8];
  
  (**(code **)(*(int *)this + 8))(this,param_1);
  cVar1 = isRoomValid(this);
  if (cVar1 == '\x01') {
    uVar2 = gpg::MultiplayerParticipant::Id(param_2);
    FUN_007c64e8(auStack_18,uVar2);
    uVar2 = gpg::MultiplayerParticipant::DisplayName(param_2);
    FUN_007c64e8(auStack_14,uVar2);
    FUN_007c64e8(auStack_10,auStack_18);
    FUN_007c64e8(auStack_c,auStack_14);
    addPlayer(this,auStack_10,auStack_c);
    FUN_007c5914(auStack_c);
    FUN_007c5914(auStack_10);
    FUN_007c5914(auStack_14);
    FUN_007c5914(auStack_18);
  }
  return;
}

// ---- GPGSRealtimeMultiplayerManager::OnP2PDisconnected  @ 0x33b250
/* GPGSRealtimeMultiplayerManager::OnP2PDisconnected(gpg::RealTimeRoom const&,
   gpg::MultiplayerParticipant const&) */

void __thiscall
GPGSRealtimeMultiplayerManager::OnP2PDisconnected
          (GPGSRealtimeMultiplayerManager *this,RealTimeRoom *param_1,
          MultiplayerParticipant *param_2)

{
  char cVar1;
  undefined4 uVar2;
  undefined1 auStack_18 [4];
  undefined1 auStack_14 [4];
  undefined1 auStack_10 [4];
  undefined1 auStack_c [8];
  
  (**(code **)(*(int *)this + 8))(this,param_1);
  cVar1 = isRoomValid(this);
  if (cVar1 == '\x01') {
    uVar2 = gpg::MultiplayerParticipant::Id(param_2);
    FUN_007c64e8(auStack_18,uVar2);
    uVar2 = gpg::MultiplayerParticipant::DisplayName(param_2);
    FUN_007c64e8(auStack_14,uVar2);
    FUN_007c64e8(auStack_10,auStack_18);
    FUN_007c64e8(auStack_c,auStack_14);
    removePlayer(this,auStack_10,auStack_c);
    FUN_007c5914(auStack_c);
    FUN_007c5914(auStack_10);
    FUN_007c5914(auStack_14);
    FUN_007c5914(auStack_18);
  }
  return;
}

// ---- GPGSRealtimeMultiplayerManager::addPlayer  @ 0x33b318
/* GPGSRealtimeMultiplayerManager::addPlayer(std::string, std::string) */

void __thiscall
GPGSRealtimeMultiplayerManager::addPlayer
          (GPGSRealtimeMultiplayerManager *this,undefined4 param_2,undefined4 param_3)

{
  undefined4 local_14;
  undefined1 auStack_10 [4];
  undefined1 auStack_c [8];
  
  GPGSEventObject::GPGSEventObject((GPGSEventObject *)&local_14);
  local_14 = 2;
  thunk_FUN_007c653c(auStack_10,param_2);
  thunk_FUN_007c653c(auStack_c,param_3);
  std::mutex::lock((mutex *)(this + 0x54));
  std::vector<GPGSEventObject,std::allocator<GPGSEventObject>>::push_back
            ((vector<GPGSEventObject,std::allocator<GPGSEventObject>> *)(this + 0x58),
             (GPGSEventObject *)&local_14);
  std::mutex::unlock((mutex *)(this + 0x54));
  GPGSEventObject::~GPGSEventObject((GPGSEventObject *)&local_14);
  return;
}

// ---- GPGSRealtimeMultiplayerManager::removePlayer  @ 0x33b388
/* GPGSRealtimeMultiplayerManager::removePlayer(std::string, std::string) */

void __thiscall
GPGSRealtimeMultiplayerManager::removePlayer
          (GPGSRealtimeMultiplayerManager *this,undefined4 param_2,undefined4 param_3)

{
  undefined4 local_14;
  undefined1 auStack_10 [4];
  undefined1 auStack_c [8];
  
  GPGSEventObject::GPGSEventObject((GPGSEventObject *)&local_14);
  local_14 = 3;
  thunk_FUN_007c653c(auStack_10,param_2);
  thunk_FUN_007c653c(auStack_c,param_3);
  std::mutex::lock((mutex *)(this + 0x54));
  std::vector<GPGSEventObject,std::allocator<GPGSEventObject>>::push_back
            ((vector<GPGSEventObject,std::allocator<GPGSEventObject>> *)(this + 0x58),
             (GPGSEventObject *)&local_14);
  std::mutex::unlock((mutex *)(this + 0x54));
  GPGSEventObject::~GPGSEventObject((GPGSEventObject *)&local_14);
  return;
}

// ---- GPGSRealtimeMultiplayerManager::sendMessage  @ 0x33b41c
/* GPGSRealtimeMultiplayerManager::sendMessage(void const*, int, bool) */

void __thiscall
GPGSRealtimeMultiplayerManager::sendMessage
          (GPGSRealtimeMultiplayerManager *this,void *param_1,int param_2,bool param_3)

{
  char cVar1;
  bool bVar2;
  MultiplayerParticipant *pMVar3;
  undefined4 uVar4;
  int iVar5;
  RealTimeMultiplayerManager *pRVar6;
  undefined4 local_74;
  undefined4 local_70;
  GameServices *local_6c;
  uchar *local_68;
  uchar *local_64;
  vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>> *local_60;
  vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>> avStack_5c [12];
  vector<unsigned_char,std::allocator<unsigned_char>> avStack_50 [12];
  vector<unsigned_char,std::allocator<unsigned_char>> avStack_44 [12];
  allocator<unsigned_char> aaStack_38 [12];
  function<void(gpg::MultiplayerStatus_const&)> afStack_2c [16];
  int local_1c;
  
  local_1c = __stack_chk_guard;
  cVar1 = isRoomValid(this);
  if (cVar1 == '\x01') {
    local_6c = (GameServices *)GPGSStateManager::GetGameServices();
    gpg::RealTimeRoom::Participants();
    local_64 = (uchar *)(param_2 + (int)param_1);
    local_68 = param_1;
    std::allocator<unsigned_char>::allocator(aaStack_38);
    std::vector<unsigned_char,std::allocator<unsigned_char>>::vector<unsigned_char*,void>
              (avStack_50,local_68,local_64,(allocator *)aaStack_38);
    std::allocator<unsigned_char>::~allocator(aaStack_38);
    if (param_3) {
      local_60 = avStack_5c;
      local_74 = std::
                 vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>::
                 begin(local_60);
      local_70 = std::
                 vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>::
                 end(local_60);
      while (bVar2 = __gnu_cxx::operator!=
                               ((__normal_iterator *)&local_74,(__normal_iterator *)&local_70),
            bVar2) {
        pMVar3 = (MultiplayerParticipant *)
                 __gnu_cxx::
                 __normal_iterator<gpg::MultiplayerParticipant_const*,std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>>
                 ::operator*((__normal_iterator<gpg::MultiplayerParticipant_const*,std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>>
                              *)&local_74);
        gpg::MultiplayerParticipant::MultiplayerParticipant
                  ((MultiplayerParticipant *)aaStack_38,pMVar3);
        uVar4 = gpg::MultiplayerParticipant::Id((MultiplayerParticipant *)aaStack_38);
        iVar5 = FUN_007c567c(this + 0x10,uVar4);
        if (iVar5 != 0) {
          pRVar6 = (RealTimeMultiplayerManager *)gpg::GameServices::RealTimeMultiplayer(local_6c);
          std::vector<unsigned_char,std::allocator<unsigned_char>>::vector(avStack_44,avStack_50);
          FUN_0033c774(afStack_2c);
          gpg::RealTimeMultiplayerManager::SendReliableMessage
                    (pRVar6,this + 0x14,aaStack_38,avStack_44,afStack_2c);
          std::function<void(gpg::MultiplayerStatus_const&)>::~function(afStack_2c);
          std::vector<unsigned_char,std::allocator<unsigned_char>>::~vector(avStack_44);
        }
        gpg::MultiplayerParticipant::~MultiplayerParticipant((MultiplayerParticipant *)aaStack_38);
        __gnu_cxx::
        __normal_iterator<gpg::MultiplayerParticipant_const*,std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>>
        ::operator++((__normal_iterator<gpg::MultiplayerParticipant_const*,std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>>
                      *)&local_74);
      }
    }
    else {
      pRVar6 = (RealTimeMultiplayerManager *)gpg::GameServices::RealTimeMultiplayer(local_6c);
      std::vector<unsigned_char,std::allocator<unsigned_char>>::vector
                ((vector<unsigned_char,std::allocator<unsigned_char>> *)aaStack_38,avStack_50);
      gpg::RealTimeMultiplayerManager::SendUnreliableMessageToOthers(pRVar6,this + 0x14,aaStack_38);
      std::vector<unsigned_char,std::allocator<unsigned_char>>::~vector
                ((vector<unsigned_char,std::allocator<unsigned_char>> *)aaStack_38);
    }
    std::vector<unsigned_char,std::allocator<unsigned_char>>::~vector(avStack_50);
    std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>::~vector
              (avStack_5c);
  }
  if (local_1c == __stack_chk_guard) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

// ---- GPGSRealtimeMultiplayerManager::sendMessageToPlayer  @ 0x33b600
/* GPGSRealtimeMultiplayerManager::sendMessageToPlayer(void const*, int, std::string, bool) */

void __thiscall
GPGSRealtimeMultiplayerManager::sendMessageToPlayer
          (GPGSRealtimeMultiplayerManager *this,undefined4 param_1,int param_2,string *param_4,
          char param_5)

{
  char cVar1;
  bool bVar2;
  MultiplayerParticipant *pMVar3;
  string *psVar4;
  int iVar5;
  RealTimeMultiplayerManager *pRVar6;
  uchar *puVar7;
  GPGSRealtimeMultiplayerManager *pGVar8;
  undefined4 local_80;
  GPGSRealtimeMultiplayerManager *local_7c;
  undefined4 local_74;
  GameServices *local_70;
  uchar *local_6c;
  vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>> *local_68;
  MultiplayerParticipant aMStack_64 [8];
  vector<unsigned_char,std::allocator<unsigned_char>> avStack_5c [12];
  vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>> avStack_50 [12];
  undefined4 local_44 [3];
  allocator<unsigned_char> aaStack_38 [12];
  function<void(gpg::MultiplayerStatus_const&)> afStack_2c [16];
  int local_1c;
  
  local_1c = __stack_chk_guard;
  local_80 = param_1;
  local_7c = this;
  cVar1 = isRoomValid(this);
  if (cVar1 == '\x01') {
    local_70 = (GameServices *)GPGSStateManager::GetGameServices();
    local_6c = (uchar *)&local_80;
    puVar7 = local_6c + param_2;
    std::allocator<unsigned_char>::allocator(aaStack_38);
    std::vector<unsigned_char,std::allocator<unsigned_char>>::vector<unsigned_char_const*,void>
              (avStack_5c,local_6c,puVar7,(allocator *)aaStack_38);
    std::allocator<unsigned_char>::~allocator(aaStack_38);
    gpg::MultiplayerParticipant::MultiplayerParticipant(aMStack_64);
    gpg::RealTimeRoom::Participants();
    local_68 = avStack_50;
    local_74 = std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>
               ::begin(local_68);
    local_44[0] = std::
                  vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>::
                  end(local_68);
    while (bVar2 = __gnu_cxx::operator!=
                             ((__normal_iterator *)&local_74,(__normal_iterator *)local_44), bVar2)
    {
      pMVar3 = (MultiplayerParticipant *)
               __gnu_cxx::
               __normal_iterator<gpg::MultiplayerParticipant_const*,std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>>
               ::operator*((__normal_iterator<gpg::MultiplayerParticipant_const*,std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>>
                            *)&local_74);
      gpg::MultiplayerParticipant::MultiplayerParticipant
                ((MultiplayerParticipant *)aaStack_38,pMVar3);
      psVar4 = (string *)gpg::MultiplayerParticipant::Id((MultiplayerParticipant *)aaStack_38);
      iVar5 = std::operator==(psVar4,param_4);
      if (iVar5 != 0) {
        gpg::MultiplayerParticipant::operator=(aMStack_64,(MultiplayerParticipant *)aaStack_38);
      }
      gpg::MultiplayerParticipant::~MultiplayerParticipant((MultiplayerParticipant *)aaStack_38);
      if (iVar5 != 0) break;
      __gnu_cxx::
      __normal_iterator<gpg::MultiplayerParticipant_const*,std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>>
      ::operator++((__normal_iterator<gpg::MultiplayerParticipant_const*,std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>>
                    *)&local_74);
    }
    cVar1 = gpg::MultiplayerParticipant::Valid(aMStack_64);
    if (cVar1 == '\x01') {
      if (param_5 == '\0') {
        std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>::vector
                  ((vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>
                    *)local_44);
        std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>::
        push_back((vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>> *
                  )local_44,aMStack_64);
        pRVar6 = (RealTimeMultiplayerManager *)gpg::GameServices::RealTimeMultiplayer(local_70);
        pGVar8 = local_7c + 0x14;
        std::vector<unsigned_char,std::allocator<unsigned_char>>::vector
                  ((vector<unsigned_char,std::allocator<unsigned_char>> *)aaStack_38,avStack_5c);
        gpg::RealTimeMultiplayerManager::SendUnreliableMessage(pRVar6,pGVar8,local_44,aaStack_38);
        std::vector<unsigned_char,std::allocator<unsigned_char>>::~vector
                  ((vector<unsigned_char,std::allocator<unsigned_char>> *)aaStack_38);
        std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>::
        ~vector((vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>> *)
                local_44);
      }
      else {
        pRVar6 = (RealTimeMultiplayerManager *)gpg::GameServices::RealTimeMultiplayer(local_70);
        pGVar8 = local_7c + 0x14;
        std::vector<unsigned_char,std::allocator<unsigned_char>>::vector
                  ((vector<unsigned_char,std::allocator<unsigned_char>> *)local_44,avStack_5c);
        FUN_0033c870(afStack_2c);
        gpg::RealTimeMultiplayerManager::SendReliableMessage
                  (pRVar6,pGVar8,aMStack_64,local_44,afStack_2c);
        std::function<void(gpg::MultiplayerStatus_const&)>::~function(afStack_2c);
        std::vector<unsigned_char,std::allocator<unsigned_char>>::~vector
                  ((vector<unsigned_char,std::allocator<unsigned_char>> *)local_44);
      }
    }
    std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>::~vector
              (avStack_50);
    gpg::MultiplayerParticipant::~MultiplayerParticipant(aMStack_64);
    std::vector<unsigned_char,std::allocator<unsigned_char>>::~vector(avStack_5c);
  }
  if (local_1c == __stack_chk_guard) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

// ---- GPGSRealtimeMultiplayerManager::OnDataReceived  @ 0x33b858
/* GPGSRealtimeMultiplayerManager::OnDataReceived(gpg::RealTimeRoom const&,
   gpg::MultiplayerParticipant const&, std::vector<unsigned char, std::allocator<unsigned char> >,
   bool) */

void GPGSRealtimeMultiplayerManager::OnDataReceived
               (GPGSRealtimeMultiplayerManager *param_1,RealTimeRoom *param_2,
               MultiplayerParticipant *param_3,
               vector<unsigned_char,std::allocator<unsigned_char>> *param_4)

{
  char cVar1;
  int iVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>
  *this;
  string asStack_18 [4];
  string asStack_14 [8];
  
  if (*(float *)(param_1 + 8) <= 10.0) {
    iVar2 = gpg::RealTimeRoom::Valid((RealTimeRoom *)(param_1 + 0x14));
    if (iVar2 != 0) {
      gpg::RealTimeRoom::operator=((RealTimeRoom *)(param_1 + 0x14),param_2);
    }
  }
  else {
    (**(code **)(*(int *)param_1 + 8))(param_1,param_2);
    *(undefined4 *)(param_1 + 8) = 0;
  }
  cVar1 = isRoomValid(param_1);
  if (cVar1 == '\x01') {
    uVar3 = std::vector<unsigned_char,std::allocator<unsigned_char>>::begin(param_4);
    uVar4 = std::vector<unsigned_char,std::allocator<unsigned_char>>::end(param_4);
    FUN_0079a3f4(asStack_14);
    std::string::
    string<__gnu_cxx::__normal_iterator<unsigned_char*,std::vector<unsigned_char,std::allocator<unsigned_char>>>>
              (asStack_18,uVar3,uVar4,asStack_14);
    FUN_0079a3fc(asStack_14);
    uVar3 = gpg::MultiplayerParticipant::Id(param_3);
    FUN_007c64e8(asStack_14,uVar3);
    std::mutex::lock((mutex *)(param_1 + 0x50));
    this = (vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>
            *)std::
              map<std::string,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>,std::less<std::string>,std::allocator<std::pair<std::string_const,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>>>>
              ::operator[]((map<std::string,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>,std::less<std::string>,std::allocator<std::pair<std::string_const,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>>>>
                            *)(param_1 + 0x20),asStack_14);
    std::
    vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>
    ::push_back(this,param_4);
    std::mutex::unlock((mutex *)(param_1 + 0x50));
    FUN_007c5914(asStack_14);
    FUN_007c5914(asStack_18);
  }
  return;
}

// ---- GPGSRealtimeMultiplayerManager::OnMultiplayerInvitation  @ 0x33b990
/* GPGSRealtimeMultiplayerManager::OnMultiplayerInvitation(gpg::MultiplayerEvent, std::string,
   gpg::MultiplayerInvitation) */

void GPGSRealtimeMultiplayerManager::OnMultiplayerInvitation
               (GPGSRealtimeMultiplayerManager *param_1)

{
  int iVar1;
  
  iVar1 = __stack_chk_guard;
  showRoomInbox(param_1);
  if (iVar1 != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}

// ---- GPGSRealtimeMultiplayerManager::showRoomInbox  @ 0x33ba68
/* GPGSRealtimeMultiplayerManager::showRoomInbox() */

void __thiscall GPGSRealtimeMultiplayerManager::showRoomInbox(GPGSRealtimeMultiplayerManager *this)

{
  GameServices *this_00;
  RealTimeMultiplayerManager *pRVar1;
  function<void(gpg::RealTimeMultiplayerManager::RoomInboxUIResponse_const&)> afStack_24 [16];
  int local_14;
  
  local_14 = __stack_chk_guard;
  this_00 = (GameServices *)GPGSStateManager::GetGameServices();
  pRVar1 = (RealTimeMultiplayerManager *)gpg::GameServices::RealTimeMultiplayer(this_00);
  FUN_0033cb34(afStack_24,this,this_00);
  gpg::RealTimeMultiplayerManager::ShowRoomInboxUI(pRVar1,afStack_24);
  std::function<void(gpg::RealTimeMultiplayerManager::RoomInboxUIResponse_const&)>::~function
            (afStack_24);
  if (local_14 != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}

// ---- GPGSRealtimeMultiplayerManager::readMessages  @ 0x33badc
/* GPGSRealtimeMultiplayerManager::readMessages() */

map<std::string,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>,std::less<std::string>,std::allocator<std::pair<std::string_const,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>>>>
* GPGSRealtimeMultiplayerManager::readMessages(void)

{
  map<std::string,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>,std::less<std::string>,std::allocator<std::pair<std::string_const,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>>>>
  *in_r0;
  int in_r1;
  
  std::
  map<std::string,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>,std::less<std::string>,std::allocator<std::pair<std::string_const,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>>>>
  ::map(in_r0);
  std::mutex::lock((mutex *)(in_r1 + 0x50));
  std::
  map<std::string,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>,std::less<std::string>,std::allocator<std::pair<std::string_const,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>>>>
  ::operator=(in_r0,(map *)(in_r1 + 0x20));
  std::
  map<std::string,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>,std::less<std::string>,std::allocator<std::pair<std::string_const,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>>>>
  ::clear((map<std::string,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>,std::less<std::string>,std::allocator<std::pair<std::string_const,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>>>>
           *)(in_r1 + 0x20));
  std::mutex::unlock((mutex *)(in_r1 + 0x50));
  return in_r0;
}

// ---- GPGSRealtimeMultiplayerManager::readEvents  @ 0x33bb28
/* GPGSRealtimeMultiplayerManager::readEvents() */

vector<GPGSEventObject,std::allocator<GPGSEventObject>> *
GPGSRealtimeMultiplayerManager::readEvents(void)

{
  vector<GPGSEventObject,std::allocator<GPGSEventObject>> *in_r0;
  int in_r1;
  
  std::vector<GPGSEventObject,std::allocator<GPGSEventObject>>::vector(in_r0);
  std::mutex::lock((mutex *)(in_r1 + 0x54));
  std::vector<GPGSEventObject,std::allocator<GPGSEventObject>>::operator=
            (in_r0,(vector *)(in_r1 + 0x58));
  std::vector<GPGSEventObject,std::allocator<GPGSEventObject>>::clear
            ((vector<GPGSEventObject,std::allocator<GPGSEventObject>> *)(in_r1 + 0x58));
  std::mutex::unlock((mutex *)(in_r1 + 0x54));
  return in_r0;
}

// ---- GPGSRealtimeMultiplayerManager::checkShouldCloseRoom  @ 0x33bb74
/* GPGSRealtimeMultiplayerManager::checkShouldCloseRoom() */

void __thiscall
GPGSRealtimeMultiplayerManager::checkShouldCloseRoom(GPGSRealtimeMultiplayerManager *this)

{
  char cVar1;
  bool bVar2;
  MultiplayerParticipant *pMVar3;
  string *psVar4;
  int iVar5;
  undefined4 *puVar6;
  undefined4 uVar7;
  undefined4 local_50;
  undefined4 local_4c;
  undefined4 local_48;
  undefined4 local_44;
  undefined1 auStack_40 [4];
  undefined1 auStack_3c [4];
  undefined1 auStack_38 [4];
  undefined1 auStack_34 [4];
  int local_30;
  int local_2c;
  vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>> *local_28;
  MultiplayerParticipant aMStack_24 [8];
  vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>> avStack_1c [12];
  
  local_30 = 0;
  local_2c = 0;
  sharedInstance();
  getRoomParticipants();
  local_28 = avStack_1c;
  local_50 = std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>::
             begin(local_28);
  local_4c = std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>::
             end(local_28);
  while (bVar2 = __gnu_cxx::operator!=
                           ((__normal_iterator *)&local_50,(__normal_iterator *)&local_4c), bVar2) {
    pMVar3 = (MultiplayerParticipant *)
             __gnu_cxx::
             __normal_iterator<gpg::MultiplayerParticipant*,std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>>
             ::operator*((__normal_iterator<gpg::MultiplayerParticipant*,std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>>
                          *)&local_50);
    gpg::MultiplayerParticipant::MultiplayerParticipant(aMStack_24,pMVar3);
    local_30 = local_30 + 1;
    psVar4 = (string *)gpg::MultiplayerParticipant::Id(aMStack_24);
    local_48 = std::
               map<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string_const,int>>>
               ::find((map<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string_const,int>>>
                       *)(this + 0x38),psVar4);
    local_44 = std::
               map<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string_const,int>>>
               ::end((map<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string_const,int>>>
                      *)(this + 0x38));
    iVar5 = std::_Rb_tree_iterator<std::pair<std::string_const,int>>::operator==
                      ((_Rb_tree_iterator<std::pair<std::string_const,int>> *)&local_48,
                       (_Rb_tree_iterator *)&local_44);
    if ((iVar5 == 0) ||
       (iVar5 = gpg::MultiplayerParticipant::IsConnectedToRoom(aMStack_24), iVar5 == 0)) {
      bVar2 = false;
    }
    else {
      bVar2 = true;
    }
    if (bVar2) {
      psVar4 = (string *)gpg::MultiplayerParticipant::Id(aMStack_24);
      puVar6 = (undefined4 *)
               std::
               map<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string_const,int>>>
               ::operator[]((map<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string_const,int>>>
                             *)(this + 0x38),psVar4);
      uVar7 = gpg::MultiplayerParticipant::Status(aMStack_24);
      *puVar6 = uVar7;
      uVar7 = gpg::MultiplayerParticipant::Id(aMStack_24);
      FUN_007c64e8(auStack_40,uVar7);
      uVar7 = gpg::MultiplayerParticipant::DisplayName(aMStack_24);
      FUN_007c64e8(auStack_3c,uVar7);
      addPlayer(this,auStack_40,auStack_3c);
      FUN_007c5914(auStack_3c);
      FUN_007c5914(auStack_40);
    }
    cVar1 = gpg::MultiplayerParticipant::IsConnectedToRoom(aMStack_24);
    if (cVar1 != '\x01') {
      psVar4 = (string *)gpg::MultiplayerParticipant::Id(aMStack_24);
      puVar6 = (undefined4 *)
               std::
               map<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string_const,int>>>
               ::operator[]((map<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string_const,int>>>
                             *)(this + 0x38),psVar4);
      uVar7 = gpg::MultiplayerParticipant::Status(aMStack_24);
      *puVar6 = uVar7;
      uVar7 = gpg::MultiplayerParticipant::Id(aMStack_24);
      FUN_007c64e8(auStack_38,uVar7);
      uVar7 = gpg::MultiplayerParticipant::DisplayName(aMStack_24);
      FUN_007c64e8(auStack_34,uVar7);
      removePlayer(this,auStack_38,auStack_34);
      FUN_007c5914(auStack_34);
      FUN_007c5914(auStack_38);
    }
    iVar5 = gpg::MultiplayerParticipant::IsConnectedToRoom(aMStack_24);
    if (iVar5 != 0) {
      local_2c = local_2c + 1;
    }
    gpg::MultiplayerParticipant::~MultiplayerParticipant(aMStack_24);
    __gnu_cxx::
    __normal_iterator<gpg::MultiplayerParticipant*,std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>>
    ::operator++((__normal_iterator<gpg::MultiplayerParticipant*,std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>>
                  *)&local_50);
  }
  if ((1 < local_30) && (local_2c < 2)) {
    disconnect(this);
  }
  std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>::~vector
            (avStack_1c);
  return;
}

// ---- GPGSRealtimeMultiplayerManager::getStatus  @ 0x33bdb0
/* GPGSRealtimeMultiplayerManager::getStatus() */

undefined4 GPGSRealtimeMultiplayerManager::getStatus(void)

{
  bool bVar1;
  undefined4 in_r0;
  int iVar2;
  MultiplayerParticipant *pMVar3;
  undefined4 uVar4;
  int in_r1;
  undefined4 local_30;
  undefined4 local_2c;
  int local_28;
  vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>> *local_24;
  CCString *local_20;
  MultiplayerParticipant aMStack_1c [8];
  vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>> avStack_14 [12];
  
  sharedInstance();
  getRoomParticipants();
  if ((*(char *)(in_r1 + 0xf) == '\0') ||
     (iVar2 = std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>::
              size(avStack_14), iVar2 == 0)) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (bVar1) {
    local_28 = 0;
    local_24 = avStack_14;
    local_30 = std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>
               ::begin(local_24);
    local_2c = std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>
               ::end(local_24);
    while (bVar1 = __gnu_cxx::operator!=
                             ((__normal_iterator *)&local_30,(__normal_iterator *)&local_2c), bVar1)
    {
      pMVar3 = (MultiplayerParticipant *)
               __gnu_cxx::
               __normal_iterator<gpg::MultiplayerParticipant*,std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>>
               ::operator*((__normal_iterator<gpg::MultiplayerParticipant*,std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>>
                            *)&local_30);
      gpg::MultiplayerParticipant::MultiplayerParticipant(aMStack_1c,pMVar3);
      iVar2 = gpg::MultiplayerParticipant::IsConnectedToRoom(aMStack_1c);
      if (iVar2 != 0) {
        local_28 = local_28 + 1;
      }
      gpg::MultiplayerParticipant::~MultiplayerParticipant(aMStack_1c);
      __gnu_cxx::
      __normal_iterator<gpg::MultiplayerParticipant*,std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>>
      ::operator++((__normal_iterator<gpg::MultiplayerParticipant*,std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>>
                    *)&local_30);
    }
    uVar4 = std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>::
            size(avStack_14);
    local_20 = (CCString *)cocos2d::CCString::createWithFormat("Connecting %d/%d",local_28,uVar4);
    uVar4 = cocos2d::CCString::getCString(local_20);
    FUN_0079a3f4(aMStack_1c);
    FUN_007c6a60(in_r0,uVar4,aMStack_1c);
    FUN_0079a3fc(aMStack_1c);
  }
  else {
    FUN_0079a3f4(aMStack_1c);
    FUN_007c6a60(in_r0,&DAT_007d84a4,aMStack_1c);
    FUN_0079a3fc(aMStack_1c);
  }
  std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>::~vector
            (avStack_14);
  return in_r0;
}
