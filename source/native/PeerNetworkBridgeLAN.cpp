// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 29 functions

// ---- PeerNetworkBridgeLAN::PeerNetworkBridgeLAN  @ 0x4385cc
/* PeerNetworkBridgeLAN::PeerNetworkBridgeLAN() */

PeerNetworkBridgeLAN * __thiscall
PeerNetworkBridgeLAN::PeerNetworkBridgeLAN(PeerNetworkBridgeLAN *this)

{
  NetworkManager *this_00;
  
  PeerNetworkInterface::PeerNetworkInterface((PeerNetworkInterface *)this);
  cocos2d::CCObject::CCObject((CCObject *)(this + 4));
  *(undefined ***)this = &PTR_isPlayerPlatformAuthenticated_1_0091e028;
  *(undefined ***)(this + 4) = &PTR_copyWithZone_1_0091e098;
  this_00 = (NetworkManager *)NetworkManager::sharedNetworkManager();
  rak = NetworkManager::getRakNetInstance(this_00);
  return this;
}

// ---- PeerNetworkBridgeLAN::~PeerNetworkBridgeLAN  @ 0x438638
/* WARNING: Removing unreachable block (ram,0x00438666) */
/* PeerNetworkBridgeLAN::~PeerNetworkBridgeLAN() */

PeerNetworkBridgeLAN * __thiscall
PeerNetworkBridgeLAN::~PeerNetworkBridgeLAN(PeerNetworkBridgeLAN *this)

{
  *(undefined ***)this = &PTR_isPlayerPlatformAuthenticated_1_0091e028;
  *(undefined ***)(this + 4) = &PTR_copyWithZone_1_0091e098;
  cocos2d::CCObject::~CCObject((CCObject *)(this + 4));
  return this;
}

// ---- PeerNetworkBridgeLAN::~PeerNetworkBridgeLAN  @ 0x438680
/* non-virtual thunk to PeerNetworkBridgeLAN::~PeerNetworkBridgeLAN() */

void __thiscall PeerNetworkBridgeLAN::~PeerNetworkBridgeLAN(PeerNetworkBridgeLAN *this)

{
  ~PeerNetworkBridgeLAN(this + -4);
  return;
}

// ---- PeerNetworkBridgeLAN::~PeerNetworkBridgeLAN  @ 0x438688
/* PeerNetworkBridgeLAN::~PeerNetworkBridgeLAN() */

PeerNetworkBridgeLAN * __thiscall
PeerNetworkBridgeLAN::~PeerNetworkBridgeLAN(PeerNetworkBridgeLAN *this)

{
  ~PeerNetworkBridgeLAN(this);
  operator_delete(this);
  return this;
}

// ---- PeerNetworkBridgeLAN::~PeerNetworkBridgeLAN  @ 0x4386a4
/* non-virtual thunk to PeerNetworkBridgeLAN::~PeerNetworkBridgeLAN() */

void __thiscall PeerNetworkBridgeLAN::~PeerNetworkBridgeLAN(PeerNetworkBridgeLAN *this)

{
  ~PeerNetworkBridgeLAN(this + -4);
  return;
}

// ---- PeerNetworkBridgeLAN::isPlayerAuthenticated  @ 0x4386ac
/* PeerNetworkBridgeLAN::isPlayerAuthenticated() */

undefined4 PeerNetworkBridgeLAN::isPlayerAuthenticated(void)

{
  return 1;
}

// ---- PeerNetworkBridgeLAN::isPlayerPlatformAuthenticated  @ 0x4386b8
/* PeerNetworkBridgeLAN::isPlayerPlatformAuthenticated() */

undefined4 PeerNetworkBridgeLAN::isPlayerPlatformAuthenticated(void)

{
  return 1;
}

// ---- PeerNetworkBridgeLAN::authenticateLocalPlayer  @ 0x4386c4
/* PeerNetworkBridgeLAN::authenticateLocalPlayer() */

void PeerNetworkBridgeLAN::authenticateLocalPlayer(void)

{
  return;
}

// ---- PeerNetworkBridgeLAN::unauthenticateLocalPlayer  @ 0x4386cc
/* PeerNetworkBridgeLAN::unauthenticateLocalPlayer() */

void PeerNetworkBridgeLAN::unauthenticateLocalPlayer(void)

{
  return;
}

// ---- PeerNetworkBridgeLAN::refreshPlayersList  @ 0x4386d4
/* PeerNetworkBridgeLAN::refreshPlayersList() */

void PeerNetworkBridgeLAN::refreshPlayersList(void)

{
  return;
}

// ---- PeerNetworkBridgeLAN::getPlayerTimeout  @ 0x4386dc
/* PeerNetworkBridgeLAN::getPlayerTimeout() */

undefined4 PeerNetworkBridgeLAN::getPlayerTimeout(void)

{
  return 0x41f00000;
}

// ---- PeerNetworkBridgeLAN::isMatchActive  @ 0x4386f0
/* PeerNetworkBridgeLAN::isMatchActive() */

undefined4 PeerNetworkBridgeLAN::isMatchActive(void)

{
  return 0;
}

// ---- PeerNetworkBridgeLAN::getHostID  @ 0x4386fc
/* PeerNetworkBridgeLAN::getHostID() */

undefined4 PeerNetworkBridgeLAN::getHostID(void)

{
  undefined4 in_r0;
  undefined1 auStack_c [8];
  
  FUN_0079a3f4(auStack_c);
  FUN_007c6a60(in_r0,&DAT_007ecee8,auStack_c);
  FUN_0079a3fc(auStack_c);
  return in_r0;
}

// ---- PeerNetworkBridgeLAN::isOnline  @ 0x438740
/* PeerNetworkBridgeLAN::isOnline() */

undefined4 PeerNetworkBridgeLAN::isOnline(void)

{
  undefined4 uVar1;
  
  uVar1 = RakNetDelegate::isOnline();
  return uVar1;
}

// ---- PeerNetworkBridgeLAN::getPeerCount  @ 0x438768
/* PeerNetworkBridgeLAN::getPeerCount() */

undefined4 PeerNetworkBridgeLAN::getPeerCount(void)

{
  return 0;
}

// ---- PeerNetworkBridgeLAN::sendData  @ 0x438774
/* PeerNetworkBridgeLAN::sendData(void const*, int, bool) */

void __thiscall
PeerNetworkBridgeLAN::sendData(PeerNetworkBridgeLAN *this,void *param_1,int param_2,bool param_3)

{
  RakNetDelegate::sendData(rak,param_1,param_2,param_3);
  return;
}

// ---- PeerNetworkBridgeLAN::sendDataToPeer  @ 0x4387a8
/* PeerNetworkBridgeLAN::sendDataToPeer(void const*, int, std::string, bool) */

void __thiscall
PeerNetworkBridgeLAN::sendDataToPeer
          (undefined4 param_1_00,undefined4 param_1,undefined4 param_2,undefined4 param_4,
          undefined1 param_5)

{
  RakNetDelegate *pRVar1;
  undefined1 auStack_c [4];
  
  pRVar1 = rak;
  FUN_007c64e8(auStack_c,param_4);
  RakNetDelegate::sendDataToPeer(pRVar1,param_1,param_2,auStack_c,param_5);
  FUN_007c5914(auStack_c);
  return;
}

// ---- PeerNetworkBridgeLAN::getPlayersOnline  @ 0x4387fc
/* PeerNetworkBridgeLAN::getPlayersOnline() */

undefined4 PeerNetworkBridgeLAN::getPlayersOnline(void)

{
  return 0;
}

// ---- PeerNetworkBridgeLAN::findSessions  @ 0x438808
/* PeerNetworkBridgeLAN::findSessions() */

void PeerNetworkBridgeLAN::findSessions(void)

{
  if (DAT_0095315c == (RakNetLAN *)0x0) {
    DAT_0095315c = (RakNetLAN *)RakNetLAN::create();
    cocos2d::CCObject::retain((CCObject *)DAT_0095315c);
  }
  RakNetLAN::findSessions(DAT_0095315c);
  return;
}

// ---- PeerNetworkBridgeLAN::hostSession  @ 0x438854
/* PeerNetworkBridgeLAN::hostSession(int, std::string) */

void __thiscall
PeerNetworkBridgeLAN::hostSession(undefined4 param_1_00,undefined4 param_1,undefined4 param_3)

{
  RakNetDelegate *pRVar1;
  RakNetLAN *pRVar2;
  undefined1 auStack_18 [4];
  undefined1 auStack_14 [8];
  
  if (DAT_0095315c == (RakNetLAN *)0x0) {
    DAT_0095315c = (RakNetLAN *)RakNetLAN::create();
    cocos2d::CCObject::retain((CCObject *)DAT_0095315c);
  }
  pRVar2 = DAT_0095315c;
  FUN_007c64e8(auStack_14,param_3);
  RakNetLAN::hostSession(pRVar2,param_1,auStack_14);
  FUN_007c5914(auStack_14);
  pRVar1 = rak;
  FUN_0079a3f4(auStack_18);
  FUN_007c6a60(auStack_14,"127.0.0.1",auStack_18);
  RakNetDelegate::connectToLANServer(pRVar1,auStack_14,*(undefined4 *)(DAT_0095315c + 0xec));
  FUN_007c5914(auStack_14);
  FUN_0079a3fc(auStack_18);
  return;
}

// ---- PeerNetworkBridgeLAN::joinSession  @ 0x438938
/* PeerNetworkBridgeLAN::joinSession(std::string) */

void __thiscall PeerNetworkBridgeLAN::joinSession(PeerNetworkBridgeLAN *this,undefined4 param_2)

{
  RakNetDelegate *pRVar1;
  undefined4 uVar2;
  char *__nptr;
  int iVar3;
  undefined1 auStack_18 [4];
  vector<std::string,std::allocator<std::string>> avStack_14 [12];
  
  RakNetLAN::shutdown(DAT_0095315c);
  FUN_007c64e8(auStack_18,param_2);
  FUN_00437f24(avStack_14,auStack_18,&DAT_007ecef8,&DAT_007ecef8,param_2,this);
  FUN_007c5914(auStack_18);
  pRVar1 = rak;
  uVar2 = std::vector<std::string,std::allocator<std::string>>::operator[](avStack_14,0);
  FUN_007c64e8(auStack_18,uVar2);
  uVar2 = std::vector<std::string,std::allocator<std::string>>::operator[](avStack_14,1);
  __nptr = (char *)FUN_007c5300(uVar2);
  iVar3 = atoi(__nptr);
  RakNetDelegate::connectToLANServer(pRVar1,auStack_18,iVar3);
  FUN_007c5914(auStack_18);
  std::vector<std::string,std::allocator<std::string>>::~vector(avStack_14);
  return;
}

// ---- PeerNetworkBridgeLAN::addPlayersToMatch  @ 0x438a00
/* PeerNetworkBridgeLAN::addPlayersToMatch(bool, int, int) */

void PeerNetworkBridgeLAN::addPlayersToMatch(bool param_1,int param_2,int param_3)

{
  return;
}

// ---- PeerNetworkBridgeLAN::isSearching  @ 0x438a14
/* PeerNetworkBridgeLAN::isSearching() */

undefined4 PeerNetworkBridgeLAN::isSearching(void)

{
  undefined4 uVar1;
  
  uVar1 = RakNetLAN::isSearching();
  return uVar1;
}

// ---- PeerNetworkBridgeLAN::canSearch  @ 0x438a34
/* PeerNetworkBridgeLAN::canSearch() */

undefined4 PeerNetworkBridgeLAN::canSearch(void)

{
  undefined4 uVar1;
  
  uVar1 = RakNetLAN::canSearch();
  return uVar1;
}

// ---- PeerNetworkBridgeLAN::cancelSearch  @ 0x438a54
/* PeerNetworkBridgeLAN::cancelSearch() */

void PeerNetworkBridgeLAN::cancelSearch(void)

{
  RakNetLAN::cancelSearch();
  return;
}

// ---- PeerNetworkBridgeLAN::shutdown  @ 0x438a70
/* PeerNetworkBridgeLAN::shutdown() */

void PeerNetworkBridgeLAN::shutdown(void)

{
  if (DAT_0095315c != (RakNetLAN *)0x0) {
    RakNetLAN::shutdown(DAT_0095315c);
    cocos2d::CCObject::release((CCObject *)DAT_0095315c);
    DAT_0095315c = (RakNetLAN *)0x0;
  }
  RakNetDelegate::shutdown();
  return;
}

// ---- PeerNetworkBridgeLAN::getPlayerCount  @ 0x438acc
/* PeerNetworkBridgeLAN::getPlayerCount() */

undefined4 PeerNetworkBridgeLAN::getPlayerCount(void)

{
  return 0;
}

// ---- PeerNetworkBridgeLAN::updateNetwork  @ 0x438ad8
/* PeerNetworkBridgeLAN::updateNetwork(float) */

void PeerNetworkBridgeLAN::updateNetwork(float param_1)

{
  if (DAT_0095315c != 0) {
    param_1 = (float)RakNetLAN::updateNetwork(param_1);
  }
  RakNetDelegate::updateLoop(param_1);
  return;
}

// ---- PeerNetworkBridgeLAN::getStatusText  @ 0x438b20
/* PeerNetworkBridgeLAN::getStatusText() */

undefined4 PeerNetworkBridgeLAN::getStatusText(void)

{
  undefined4 in_r0;
  undefined1 auStack_c [8];
  
  FUN_0079a3f4(auStack_c);
  FUN_007c6a60(in_r0,&DAT_007ecee8,auStack_c);
  FUN_0079a3fc(auStack_c);
  return in_r0;
}
