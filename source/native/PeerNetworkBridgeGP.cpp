// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 31 functions

// ---- PeerNetworkBridgeGP::PeerNetworkBridgeGP  @ 0x4369b8
/* PeerNetworkBridgeGP::PeerNetworkBridgeGP() */

PeerNetworkBridgeGP * __thiscall PeerNetworkBridgeGP::PeerNetworkBridgeGP(PeerNetworkBridgeGP *this)

{
  CCNotificationCenter *this_00;
  
  PeerNetworkInterface::PeerNetworkInterface((PeerNetworkInterface *)this);
  cocos2d::CCObject::CCObject((CCObject *)(this + 4));
  *(undefined ***)this = &PTR_isPlayerPlatformAuthenticated_1_0091df08;
  *(undefined ***)(this + 4) = &PTR_copyWithZone_1_0091df78;
  this_00 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::addObserver
            (this_00,(CCObject *)(this + 4),(_func_void_CCObject_ptr *)0x38a269,(char *)0x0,
             (CCObject *)"REMOVE_LOCAL_SESSION");
  return this;
}

// ---- PeerNetworkBridgeGP::~PeerNetworkBridgeGP  @ 0x436a3c
/* WARNING: Removing unreachable block (ram,0x00436a82) */
/* PeerNetworkBridgeGP::~PeerNetworkBridgeGP() */

PeerNetworkBridgeGP * __thiscall
PeerNetworkBridgeGP::~PeerNetworkBridgeGP(PeerNetworkBridgeGP *this)

{
  CCNotificationCenter *this_00;
  
  *(undefined ***)this = &PTR_isPlayerPlatformAuthenticated_1_0091df08;
  *(undefined ***)(this + 4) = &PTR_copyWithZone_1_0091df78;
  this_00 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::removeObserver
            (this_00,(CCObject *)(this + 4),"REMOVE_LOCAL_SESSION");
  cocos2d::CCObject::~CCObject((CCObject *)(this + 4));
  return this;
}

// ---- PeerNetworkBridgeGP::~PeerNetworkBridgeGP  @ 0x436aa0
/* non-virtual thunk to PeerNetworkBridgeGP::~PeerNetworkBridgeGP() */

void __thiscall PeerNetworkBridgeGP::~PeerNetworkBridgeGP(PeerNetworkBridgeGP *this)

{
  ~PeerNetworkBridgeGP(this + -4);
  return;
}

// ---- PeerNetworkBridgeGP::~PeerNetworkBridgeGP  @ 0x436aa8
/* PeerNetworkBridgeGP::~PeerNetworkBridgeGP() */

PeerNetworkBridgeGP * __thiscall
PeerNetworkBridgeGP::~PeerNetworkBridgeGP(PeerNetworkBridgeGP *this)

{
  ~PeerNetworkBridgeGP(this);
  operator_delete(this);
  return this;
}

// ---- PeerNetworkBridgeGP::~PeerNetworkBridgeGP  @ 0x436ac4
/* non-virtual thunk to PeerNetworkBridgeGP::~PeerNetworkBridgeGP() */

void __thiscall PeerNetworkBridgeGP::~PeerNetworkBridgeGP(PeerNetworkBridgeGP *this)

{
  ~PeerNetworkBridgeGP(this + -4);
  return;
}

// ---- PeerNetworkBridgeGP::isPlayerPlatformAuthenticated  @ 0x436acc
/* PeerNetworkBridgeGP::isPlayerPlatformAuthenticated() */

undefined4 PeerNetworkBridgeGP::isPlayerPlatformAuthenticated(void)

{
  undefined4 uVar1;
  
  uVar1 = GPGSStateManager::IsAuthorized();
  return uVar1;
}

// ---- PeerNetworkBridgeGP::authenticateLocalPlayer  @ 0x436ae0
/* PeerNetworkBridgeGP::authenticateLocalPlayer() */

void PeerNetworkBridgeGP::authenticateLocalPlayer(void)

{
  GPGSStateManager::BeginUserInitiatedSignIn();
  return;
}

// ---- PeerNetworkBridgeGP::unauthenticateLocalPlayer  @ 0x436af0
/* PeerNetworkBridgeGP::unauthenticateLocalPlayer() */

void PeerNetworkBridgeGP::unauthenticateLocalPlayer(void)

{
  GPGSStateManager::SignOut();
  return;
}

// ---- PeerNetworkBridgeGP::isMatchActive  @ 0x436b00
/* PeerNetworkBridgeGP::isMatchActive() */

undefined4 PeerNetworkBridgeGP::isMatchActive(void)

{
  GPGSRealtimeMultiplayerManager *this;
  undefined4 uVar1;
  
  this = (GPGSRealtimeMultiplayerManager *)GPGSRealtimeMultiplayerManager::sharedInstance();
  uVar1 = GPGSRealtimeMultiplayerManager::isRoomValid(this);
  return uVar1;
}

// ---- PeerNetworkBridgeGP::getHostID  @ 0x436b1c
/* PeerNetworkBridgeGP::getHostID() */

undefined4 PeerNetworkBridgeGP::getHostID(void)

{
  undefined4 in_r0;
  GPGSRealtimeMultiplayerManager *this;
  int iVar1;
  undefined1 auStack_c [8];
  
  this = (GPGSRealtimeMultiplayerManager *)GPGSRealtimeMultiplayerManager::sharedInstance();
  iVar1 = GPGSRealtimeMultiplayerManager::isRoomValid(this);
  if (iVar1 == 0) {
    FUN_0079a3f4(auStack_c);
    FUN_007c6a60(in_r0,&DAT_007ecafc,auStack_c);
    FUN_0079a3fc(auStack_c);
  }
  else {
    FUN_007c64e8(in_r0,&DAT_00953100);
  }
  return in_r0;
}

// ---- PeerNetworkBridgeGP::isOnline  @ 0x436b84
/* PeerNetworkBridgeGP::isOnline() */

undefined1 PeerNetworkBridgeGP::isOnline(void)

{
  undefined1 uVar1;
  GPGSRealtimeMultiplayerManager *this;
  
  this = (GPGSRealtimeMultiplayerManager *)GPGSRealtimeMultiplayerManager::sharedInstance();
  uVar1 = GPGSRealtimeMultiplayerManager::isRoomValid(this);
  return uVar1;
}

// ---- PeerNetworkBridgeGP::getPeerCount  @ 0x436ba8
/* PeerNetworkBridgeGP::getPeerCount() */

undefined4 PeerNetworkBridgeGP::getPeerCount(void)

{
  GPGSRealtimeMultiplayerManager *this;
  undefined4 uVar1;
  
  this = (GPGSRealtimeMultiplayerManager *)GPGSRealtimeMultiplayerManager::sharedInstance();
  uVar1 = GPGSRealtimeMultiplayerManager::getRoomCount(this);
  return uVar1;
}

// ---- PeerNetworkBridgeGP::sendData  @ 0x436bc4
/* PeerNetworkBridgeGP::sendData(void const*, int, bool) */

void __thiscall
PeerNetworkBridgeGP::sendData(PeerNetworkBridgeGP *this,void *param_1,int param_2,bool param_3)

{
  GPGSRealtimeMultiplayerManager *this_00;
  
  this_00 = (GPGSRealtimeMultiplayerManager *)GPGSRealtimeMultiplayerManager::sharedInstance();
  GPGSRealtimeMultiplayerManager::sendMessage(this_00,param_1,param_2,param_3);
  return;
}

// ---- PeerNetworkBridgeGP::sendDataToPeer  @ 0x436bec
/* PeerNetworkBridgeGP::sendDataToPeer(void const*, int, std::string, bool) */

void __thiscall
PeerNetworkBridgeGP::sendDataToPeer
          (undefined4 param_1_00,undefined4 param_1,undefined4 param_2,undefined4 param_4,
          undefined1 param_5)

{
  GPGSRealtimeMultiplayerManager *pGVar1;
  undefined1 auStack_c [4];
  
  pGVar1 = (GPGSRealtimeMultiplayerManager *)GPGSRealtimeMultiplayerManager::sharedInstance();
  FUN_007c64e8(auStack_c,param_4);
  GPGSRealtimeMultiplayerManager::sendMessageToPlayer(pGVar1,param_1,param_2,auStack_c,param_5);
  FUN_007c5914(auStack_c);
  return;
}

// ---- PeerNetworkBridgeGP::onCountRequestCompleted  @ 0x436c34
/* PeerNetworkBridgeGP::onCountRequestCompleted(cocos2d::extension::CCHttpClient*,
   cocos2d::extension::CCHttpResponse*) */

void __thiscall
PeerNetworkBridgeGP::onCountRequestCompleted
          (PeerNetworkBridgeGP *this,CCHttpClient *param_1,CCHttpResponse *param_2)

{
  undefined4 uVar1;
  undefined4 uVar2;
  int iVar3;
  char *__nptr;
  CCNotificationCenter *this_00;
  CCObject *pCVar4;
  undefined1 auStack_20 [4];
  string asStack_1c [4];
  int local_18;
  vector<char,std::allocator<char>> *local_14;
  
  local_18 = cocos2d::extension::CCHttpResponse::getResponseCode(param_2);
  if ((199 < local_18) && (local_18 < 300)) {
    local_14 = (vector<char,std::allocator<char>> *)
               cocos2d::extension::CCHttpResponse::getResponseData(param_2);
    uVar1 = std::vector<char,std::allocator<char>>::begin(local_14);
    uVar2 = std::vector<char,std::allocator<char>>::end(local_14);
    FUN_0079a3f4(auStack_20);
    std::string::string<__gnu_cxx::__normal_iterator<char*,std::vector<char,std::allocator<char>>>>
              (asStack_1c,uVar1,uVar2,auStack_20);
    FUN_0079a3fc(auStack_20);
    iVar3 = FUN_007c505c(asStack_1c);
    if (iVar3 == 0) {
      DAT_00953104 = 0;
    }
    else {
      __nptr = (char *)FUN_007c5300(asStack_1c);
      DAT_00953104 = atoi(__nptr);
    }
    this_00 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    pCVar4 = (CCObject *)cocos2d::CCInteger::create(DAT_00953104);
    cocos2d::CCNotificationCenter::postNotification(this_00,"ServerPlayerCount",pCVar4);
    FUN_007c5914(asStack_1c);
  }
  DAT_00953104 = 0;
  return;
}

// ---- PeerNetworkBridgeGP::updateRoomCount  @ 0x436d18
/* PeerNetworkBridgeGP::updateRoomCount() */

void __thiscall PeerNetworkBridgeGP::updateRoomCount(PeerNetworkBridgeGP *this)

{
  undefined4 uVar1;
  char *pcVar2;
  CCHttpClient *pCVar3;
  undefined1 auStack_1c [4];
  CCString *local_18;
  CCObject *local_14;
  undefined4 local_10;
  undefined4 uStack_c;
  
  NetworkManager::sharedNetworkManager();
  NetworkManager::getPrivateClientToken();
  uVar1 = FUN_007c5300(auStack_1c);
  local_18 = (CCString *)
             cocos2d::CCString::createWithFormat
                       ("/games/doodlearmy2/api/%s/gpg/multiplayer/searchcount",uVar1);
  pcVar2 = (char *)NetworkManager::sharedNetworkManager();
  cocos2d::CCString::getCString(local_18);
  local_14 = (CCObject *)NetworkManager::createAppsomniacsRequest(pcVar2);
  cocos2d::extension::CCHttpRequest::setRequestType((CCHttpRequest *)local_14,0);
  local_10 = DAT_00943718;
  uStack_c = DAT_0094371c;
  cocos2d::extension::CCHttpRequest::setResponseCallback
            (local_14,(_func_void_CCHttpClient_ptr_CCHttpResponse_ptr *)(this + 4));
  pCVar3 = (CCHttpClient *)cocos2d::extension::CCHttpClient::getInstance();
  cocos2d::extension::CCHttpClient::setTimeoutForRead(pCVar3,10);
  pCVar3 = (CCHttpClient *)cocos2d::extension::CCHttpClient::getInstance();
  cocos2d::extension::CCHttpClient::send(pCVar3,(CCHttpRequest *)local_14);
  cocos2d::CCObject::release(local_14);
  FUN_007c5914(auStack_1c);
  return;
}

// ---- PeerNetworkBridgeGP::getPlayersOnline  @ 0x436dd0
/* PeerNetworkBridgeGP::getPlayersOnline() */

undefined4 __thiscall PeerNetworkBridgeGP::getPlayersOnline(PeerNetworkBridgeGP *this)

{
  updateRoomCount(this);
  return DAT_00953104;
}

// ---- PeerNetworkBridgeGP::refreshPlayersList  @ 0x436df0
/* PeerNetworkBridgeGP::refreshPlayersList() */

void PeerNetworkBridgeGP::refreshPlayersList(void)

{
  bool bVar1;
  GPGSRealtimeMultiplayerManager *this;
  int iVar2;
  MultiplayerParticipant *pMVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined1 auStack_34 [4];
  undefined4 local_30;
  undefined4 local_2c;
  undefined1 auStack_28 [4];
  undefined1 auStack_24 [4];
  vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>> *local_20;
  MultiplayerParticipant aMStack_1c [8];
  vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>> avStack_14 [12];
  
  this = (GPGSRealtimeMultiplayerManager *)GPGSRealtimeMultiplayerManager::sharedInstance();
  iVar2 = GPGSRealtimeMultiplayerManager::getRoomCount(this);
  if (1 < iVar2) {
    GPGSRealtimeMultiplayerManager::sharedInstance();
    GPGSRealtimeMultiplayerManager::getRoomParticipants();
    local_20 = avStack_14;
    local_30 = std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>
               ::begin(local_20);
    local_2c = std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>
               ::end(local_20);
    while (bVar1 = __gnu_cxx::operator!=
                             ((__normal_iterator *)&local_30,(__normal_iterator *)&local_2c), bVar1)
    {
      pMVar3 = (MultiplayerParticipant *)
               __gnu_cxx::
               __normal_iterator<gpg::MultiplayerParticipant*,std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>>
               ::operator*((__normal_iterator<gpg::MultiplayerParticipant*,std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>>
                            *)&local_30);
      gpg::MultiplayerParticipant::MultiplayerParticipant(aMStack_1c,pMVar3);
      uVar4 = gpg::MultiplayerParticipant::Id(aMStack_1c);
      iVar2 = FUN_007c567c(uVar4,&DAT_00953100);
      if ((iVar2 == 0) ||
         (iVar2 = gpg::MultiplayerParticipant::IsConnectedToRoom(aMStack_1c), iVar2 == 0)) {
        bVar1 = false;
      }
      else {
        bVar1 = true;
      }
      if (bVar1) {
        uVar4 = NetworkManager::sharedNetworkManager();
        uVar5 = gpg::MultiplayerParticipant::Id(aMStack_1c);
        FUN_007c64e8(auStack_28,uVar5);
        FUN_0079a3f4(auStack_34);
        FUN_007c6a60(auStack_24,&DAT_007ecafc,auStack_34);
        NetworkManager::addPlayer(uVar4,auStack_28,auStack_24);
        FUN_007c5914(auStack_24);
        FUN_0079a3fc(auStack_34);
        FUN_007c5914(auStack_28);
      }
      gpg::MultiplayerParticipant::~MultiplayerParticipant(aMStack_1c);
      __gnu_cxx::
      __normal_iterator<gpg::MultiplayerParticipant*,std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>>
      ::operator++((__normal_iterator<gpg::MultiplayerParticipant*,std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>>
                    *)&local_30);
    }
    std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>::~vector
              (avStack_14);
  }
  return;
}

// ---- PeerNetworkBridgeGP::getPlayerTimeout  @ 0x436f4c
/* PeerNetworkBridgeGP::getPlayerTimeout() */

undefined4 PeerNetworkBridgeGP::getPlayerTimeout(void)

{
  return 0x41f00000;
}

// ---- PeerNetworkBridgeGP::findSessions  @ 0x436f60
/* PeerNetworkBridgeGP::findSessions() */

void PeerNetworkBridgeGP::findSessions(void)

{
  return;
}

// ---- PeerNetworkBridgeGP::hostSession  @ 0x436f68
/* PeerNetworkBridgeGP::hostSession(int, std::string) */

void PeerNetworkBridgeGP::hostSession(void)

{
  return;
}

// ---- PeerNetworkBridgeGP::joinSession  @ 0x436f74
/* PeerNetworkBridgeGP::joinSession(std::string) */

void PeerNetworkBridgeGP::joinSession(void)

{
  return;
}

// ---- PeerNetworkBridgeGP::addPlayersToMatch  @ 0x436f80
/* PeerNetworkBridgeGP::addPlayersToMatch(bool, int, int) */

void __thiscall
PeerNetworkBridgeGP::addPlayersToMatch
          (PeerNetworkBridgeGP *this,bool param_1,int param_2,int param_3)

{
  CCObject *pCVar1;
  undefined4 uVar2;
  GPGSRealtimeMultiplayerManager *this_00;
  undefined1 auStack_20 [4];
  undefined1 auStack_1c [4];
  undefined1 auStack_18 [4];
  string asStack_14 [4];
  undefined1 auStack_10 [4];
  undefined1 auStack_c [8];
  
  if (param_1) {
    FUN_0079a3f4(auStack_1c);
    FUN_007c6a60(auStack_10,"Coming Soon!",auStack_1c);
    FUN_0079a3f4(auStack_18);
    FUN_007c6a60(auStack_c,"The Google+ invitation feature will be released in a future update.",
                 auStack_18);
    FUN_0079a3f4(auStack_20);
    FUN_007c6a60(asStack_14,&DAT_007ecba0,auStack_20);
    pCVar1 = (CCObject *)cocos2d::CCString::create(asStack_14);
    uVar2 = cocos2d::CCArray::create(pCVar1,0);
    AMessageBox::showAlert(0,auStack_10,auStack_c,uVar2,0,0);
    FUN_007c5914(asStack_14);
    FUN_0079a3fc(auStack_20);
    FUN_007c5914(auStack_c);
    FUN_0079a3fc(auStack_18);
    FUN_007c5914(auStack_10);
    FUN_0079a3fc(auStack_1c);
  }
  else {
    this_00 = (GPGSRealtimeMultiplayerManager *)GPGSRealtimeMultiplayerManager::sharedInstance();
    GPGSRealtimeMultiplayerManager::quickMatch(this_00,1,5,param_3);
  }
  return;
}

// ---- PeerNetworkBridgeGP::isSearching  @ 0x4370a0
/* PeerNetworkBridgeGP::isSearching() */

undefined4 PeerNetworkBridgeGP::isSearching(void)

{
  GPGSRealtimeMultiplayerManager *this;
  undefined4 uVar1;
  
  this = (GPGSRealtimeMultiplayerManager *)GPGSRealtimeMultiplayerManager::sharedInstance();
  uVar1 = GPGSRealtimeMultiplayerManager::isPlayerSearchInProgress(this);
  return uVar1;
}

// ---- PeerNetworkBridgeGP::canSearch  @ 0x4370bc
/* PeerNetworkBridgeGP::canSearch() */

undefined4 PeerNetworkBridgeGP::canSearch(void)

{
  GPGSRealtimeMultiplayerManager *this;
  undefined4 uVar1;
  
  this = (GPGSRealtimeMultiplayerManager *)GPGSRealtimeMultiplayerManager::sharedInstance();
  uVar1 = GPGSRealtimeMultiplayerManager::canSearch(this);
  return uVar1;
}

// ---- PeerNetworkBridgeGP::cancelSearch  @ 0x4370d8
/* PeerNetworkBridgeGP::cancelSearch() */

void PeerNetworkBridgeGP::cancelSearch(void)

{
  GPGSRealtimeMultiplayerManager *this;
  
  this = (GPGSRealtimeMultiplayerManager *)GPGSRealtimeMultiplayerManager::sharedInstance();
  GPGSRealtimeMultiplayerManager::disconnect(this);
  return;
}

// ---- PeerNetworkBridgeGP::shutdown  @ 0x4370f0
/* PeerNetworkBridgeGP::shutdown() */

void PeerNetworkBridgeGP::shutdown(void)

{
  GPGSRealtimeMultiplayerManager *this;
  
  this = (GPGSRealtimeMultiplayerManager *)GPGSRealtimeMultiplayerManager::sharedInstance();
  GPGSRealtimeMultiplayerManager::disconnect(this);
  return;
}

// ---- PeerNetworkBridgeGP::getPlayerCount  @ 0x437108
/* PeerNetworkBridgeGP::getPlayerCount() */

undefined4 PeerNetworkBridgeGP::getPlayerCount(void)

{
  GPGSRealtimeMultiplayerManager *this;
  undefined4 uVar1;
  
  this = (GPGSRealtimeMultiplayerManager *)GPGSRealtimeMultiplayerManager::sharedInstance();
  uVar1 = GPGSRealtimeMultiplayerManager::getRoomCount(this);
  return uVar1;
}

// ---- PeerNetworkBridgeGP::updateNetwork  @ 0x437124
/* PeerNetworkBridgeGP::updateNetwork(float) */

void __thiscall PeerNetworkBridgeGP::updateNetwork(PeerNetworkBridgeGP *this,float param_1)

{
  uint uVar1;
  bool bVar2;
  int iVar3;
  GPGSRealtimeMultiplayerManager *pGVar4;
  CCObject *pCVar5;
  undefined4 uVar6;
  vector *pvVar7;
  uchar *puVar8;
  ulong uVar9;
  CCData *this_00;
  uint uVar10;
  GPGSEventObject *pGVar11;
  NetworkManager *pNVar12;
  float in_r1;
  undefined4 local_60;
  undefined4 local_5c;
  undefined1 auStack_58 [4];
  undefined4 local_54;
  undefined1 auStack_50 [4];
  uint local_4c;
  CCData *local_48;
  vector<GPGSEventObject,std::allocator<GPGSEventObject>> *local_44;
  string asStack_40 [12];
  int local_34;
  undefined1 auStack_30 [4];
  undefined1 auStack_2c [4];
  map<std::string,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>,std::less<std::string>,std::allocator<std::pair<std::string_const,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>>>>
  amStack_28 [24];
  
  iVar3 = GPGSRealtimeMultiplayerManager::sharedInstance();
  *(float *)(iVar3 + 8) = *(float *)(iVar3 + 8) + in_r1;
  pGVar4 = (GPGSRealtimeMultiplayerManager *)GPGSRealtimeMultiplayerManager::sharedInstance();
  iVar3 = GPGSRealtimeMultiplayerManager::isPlayerSearchInProgress(pGVar4);
  if (iVar3 != 0) {
    pGVar4 = (GPGSRealtimeMultiplayerManager *)GPGSRealtimeMultiplayerManager::sharedInstance();
    iVar3 = GPGSRealtimeMultiplayerManager::isConnecting(pGVar4);
    if (iVar3 != 0) {
      bVar2 = true;
      goto LAB_0043716c;
    }
  }
  bVar2 = false;
LAB_0043716c:
  if (bVar2) {
    iVar3 = GPGSRealtimeMultiplayerManager::sharedInstance();
    *(float *)(iVar3 + 4) = *(float *)(iVar3 + 4) + in_r1;
    iVar3 = GPGSRealtimeMultiplayerManager::sharedInstance();
    if (10.0 < *(float *)(iVar3 + 4)) {
      pGVar4 = (GPGSRealtimeMultiplayerManager *)GPGSRealtimeMultiplayerManager::sharedInstance();
      GPGSRealtimeMultiplayerManager::disconnect(pGVar4);
      FUN_0079a3f4(&local_54);
      FUN_007c6a60(&local_34,"Lobby Creation Failed",&local_54);
      FUN_0079a3f4(auStack_50);
      FUN_007c6a60(amStack_28,
                   "The connection between you and another player was lost. Please try your search again for another opponent."
                   ,auStack_50);
      FUN_0079a3f4(auStack_58);
      FUN_007c6a60(asStack_40,&DAT_007ecba0,auStack_58);
      pCVar5 = (CCObject *)cocos2d::CCString::create(asStack_40);
      uVar6 = cocos2d::CCArray::create(pCVar5,0);
      AMessageBox::showAlert(0,&local_34,amStack_28,uVar6,0,0);
      FUN_007c5914(asStack_40);
      FUN_0079a3fc(auStack_58);
      FUN_007c5914(amStack_28);
      FUN_0079a3fc(auStack_50);
      FUN_007c5914(&local_34);
      FUN_0079a3fc(&local_54);
    }
  }
  GPGSRealtimeMultiplayerManager::sharedInstance();
  GPGSRealtimeMultiplayerManager::readMessages();
  local_54 = std::
             map<std::string,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>,std::less<std::string>,std::allocator<std::pair<std::string_const,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>>>>
             ::begin(amStack_28);
  while( true ) {
    local_34 = std::
               map<std::string,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>,std::less<std::string>,std::allocator<std::pair<std::string_const,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>>>>
               ::end(amStack_28);
    iVar3 = std::
            _Rb_tree_iterator<std::pair<std::string_const,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>>>
            ::operator!=((_Rb_tree_iterator<std::pair<std::string_const,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>>>
                          *)&local_54,(_Rb_tree_iterator *)&local_34);
    if (iVar3 == 0) break;
    uVar6 = std::
            _Rb_tree_iterator<std::pair<std::string_const,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>>>
            ::operator->((_Rb_tree_iterator<std::pair<std::string_const,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>>>
                          *)&local_54);
    FUN_007c64e8(auStack_50,uVar6);
    iVar3 = std::
            _Rb_tree_iterator<std::pair<std::string_const,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>>>
            ::operator->((_Rb_tree_iterator<std::pair<std::string_const,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>>>
                          *)&local_54);
    std::
    vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>
    ::vector((vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>
              *)asStack_40,(vector *)(iVar3 + 4));
    for (local_4c = 0; uVar1 = local_4c,
        uVar10 = std::
                 vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>
                 ::size((vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>
                         *)asStack_40), uVar1 < uVar10; local_4c = local_4c + 1) {
      pvVar7 = (vector *)
               std::
               vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>
               ::operator[]((vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>
                             *)asStack_40,local_4c);
      std::vector<unsigned_char,std::allocator<unsigned_char>>::vector
                ((vector<unsigned_char,std::allocator<unsigned_char>> *)&local_34,pvVar7);
      puVar8 = (uchar *)std::vector<unsigned_char,std::allocator<unsigned_char>>::operator[]
                                  ((vector<unsigned_char,std::allocator<unsigned_char>> *)&local_34,
                                   0);
      uVar9 = std::vector<unsigned_char,std::allocator<unsigned_char>>::size
                        ((vector<unsigned_char,std::allocator<unsigned_char>> *)&local_34);
      this_00 = operator_new(0x1c);
      cocos2d::extension::CCData::CCData(this_00,puVar8,uVar9);
      local_48 = this_00;
      cocos2d::CCObject::autorelease((CCObject *)this_00);
      pNVar12 = (NetworkManager *)NetworkManager::sharedNetworkManager();
      FUN_007c64e8(&local_5c,auStack_50);
      NetworkManager::readMessage(pNVar12,local_48,&local_5c);
      FUN_007c5914(&local_5c);
      std::vector<unsigned_char,std::allocator<unsigned_char>>::~vector
                ((vector<unsigned_char,std::allocator<unsigned_char>> *)&local_34);
    }
    std::
    vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>
    ::~vector((vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>
               *)asStack_40);
    FUN_007c5914(auStack_50);
    std::
    _Rb_tree_iterator<std::pair<std::string_const,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>>>
    ::operator++((_Rb_tree_iterator<std::pair<std::string_const,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>>>
                  *)&local_54);
  }
  GPGSRealtimeMultiplayerManager::sharedInstance();
  GPGSRealtimeMultiplayerManager::readEvents();
  local_44 = (vector<GPGSEventObject,std::allocator<GPGSEventObject>> *)asStack_40;
  local_60 = std::vector<GPGSEventObject,std::allocator<GPGSEventObject>>::begin(local_44);
  local_5c = std::vector<GPGSEventObject,std::allocator<GPGSEventObject>>::end(local_44);
  while (bVar2 = __gnu_cxx::operator!=
                           ((__normal_iterator *)&local_60,(__normal_iterator *)&local_5c), bVar2) {
    pGVar11 = (GPGSEventObject *)
              __gnu_cxx::
              __normal_iterator<GPGSEventObject*,std::vector<GPGSEventObject,std::allocator<GPGSEventObject>>>
              ::operator*((__normal_iterator<GPGSEventObject*,std::vector<GPGSEventObject,std::allocator<GPGSEventObject>>>
                           *)&local_60);
    GPGSEventObject::GPGSEventObject((GPGSEventObject *)&local_34,pGVar11);
    if (local_34 == 2) {
      uVar6 = NetworkManager::sharedNetworkManager();
      FUN_007c64e8(auStack_58,auStack_30);
      FUN_007c64e8(&local_54,auStack_2c);
      NetworkManager::addPlayer(uVar6,auStack_58,&local_54);
      FUN_007c5914(&local_54);
      FUN_007c5914(auStack_58);
    }
    else if (local_34 == 3) {
      pNVar12 = (NetworkManager *)NetworkManager::sharedNetworkManager();
      FUN_007c64e8(auStack_50,auStack_30);
      NetworkManager::removePlayer(pNVar12,auStack_50);
      FUN_007c5914(auStack_50);
    }
    else if (local_34 == 1) {
      thunk_FUN_007c653c(&DAT_00953100,auStack_30);
    }
    GPGSEventObject::~GPGSEventObject((GPGSEventObject *)&local_34);
    __gnu_cxx::
    __normal_iterator<GPGSEventObject*,std::vector<GPGSEventObject,std::allocator<GPGSEventObject>>>
    ::operator++((__normal_iterator<GPGSEventObject*,std::vector<GPGSEventObject,std::allocator<GPGSEventObject>>>
                  *)&local_60);
  }
  std::vector<GPGSEventObject,std::allocator<GPGSEventObject>>::~vector
            ((vector<GPGSEventObject,std::allocator<GPGSEventObject>> *)asStack_40);
  std::
  map<std::string,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>,std::less<std::string>,std::allocator<std::pair<std::string_const,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>>>>
  ::~map(amStack_28);
  return;
}

// ---- PeerNetworkBridgeGP::isPlayerAuthenticated  @ 0x437534
/* PeerNetworkBridgeGP::isPlayerAuthenticated() */

undefined4 PeerNetworkBridgeGP::isPlayerAuthenticated(void)

{
  undefined4 uVar1;
  
  uVar1 = GPGSStateManager::IsAuthorized();
  return uVar1;
}

// ---- PeerNetworkBridgeGP::getStatusText  @ 0x437548
/* PeerNetworkBridgeGP::getStatusText() */

PeerNetworkBridgeGP * __thiscall PeerNetworkBridgeGP::getStatusText(PeerNetworkBridgeGP *this)

{
  GPGSRealtimeMultiplayerManager::sharedInstance();
  GPGSRealtimeMultiplayerManager::getStatus();
  return this;
}
