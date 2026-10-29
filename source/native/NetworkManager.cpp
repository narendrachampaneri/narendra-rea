// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 130 functions

// ---- NetworkManager::NetworkManager  @ 0x387538
/* NetworkManager::NetworkManager() */

NetworkManager * __thiscall NetworkManager::NetworkManager(NetworkManager *this)

{
  NetworkManagerBridge::NetworkManagerBridge((NetworkManagerBridge *)this);
  cocos2d::CCNode::CCNode((CCNode *)(this + 4));
  *(undefined ***)this = &PTR__NetworkManager_1_00915ae0;
  *(undefined ***)(this + 4) = &PTR_copyWithZone_1_00915af4;
  FUN_007c51b0(this + 0xf4);
  FUN_007c51b0(this + 0xf8);
  FUN_007c51b0(this + 0x128);
  return this;
}

// ---- NetworkManager::~NetworkManager  @ 0x3875cc
/* WARNING: Removing unreachable block (ram,0x00387622) */
/* NetworkManager::~NetworkManager() */

NetworkManager * __thiscall NetworkManager::~NetworkManager(NetworkManager *this)

{
  *(undefined ***)this = &PTR__NetworkManager_1_00915ae0;
  *(undefined ***)(this + 4) = &PTR_copyWithZone_1_00915af4;
  FUN_007c5914(this + 0x128);
  FUN_007c5914(this + 0xf8);
  FUN_007c5914(this + 0xf4);
  cocos2d::CCNode::~CCNode((CCNode *)(this + 4));
  NetworkManagerBridge::~NetworkManagerBridge((NetworkManagerBridge *)this);
  return this;
}

// ---- NetworkManager::~NetworkManager  @ 0x38763c
/* non-virtual thunk to NetworkManager::~NetworkManager() */

void __thiscall NetworkManager::~NetworkManager(NetworkManager *this)

{
  ~NetworkManager(this + -4);
  return;
}

// ---- NetworkManager::~NetworkManager  @ 0x387644
/* NetworkManager::~NetworkManager() */

NetworkManager * __thiscall NetworkManager::~NetworkManager(NetworkManager *this)

{
  ~NetworkManager(this);
  operator_delete(this);
  return this;
}

// ---- NetworkManager::~NetworkManager  @ 0x387660
/* non-virtual thunk to NetworkManager::~NetworkManager() */

void __thiscall NetworkManager::~NetworkManager(NetworkManager *this)

{
  ~NetworkManager(this + -4);
  return;
}

// ---- NetworkManager::createAppsomniacsUrl  @ 0x387944
/* NetworkManager::createAppsomniacsUrl(char const*) */

char * NetworkManager::createAppsomniacsUrl(char *param_1)

{
  undefined4 uVar1;
  undefined4 in_r2;
  undefined1 auStack_10 [4];
  undefined1 auStack_c [4];
  
  FUN_007c64e8(auStack_c,&m_baseUrl);
  FUN_007c62f0(auStack_c,in_r2);
  uVar1 = FUN_007c5300(auStack_c);
  FUN_0079a3f4(auStack_10);
  FUN_007c6a60(param_1,uVar1,auStack_10);
  FUN_0079a3fc(auStack_10);
  FUN_007c5914(auStack_c);
  return param_1;
}

// ---- NetworkManager::urlEncode  @ 0x3879c0
/* NetworkManager::urlEncode(std::string) */

undefined4 NetworkManager::urlEncode(undefined4 param_1,int param_2,undefined4 param_3)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined1 auStack_18 [4];
  undefined4 local_14;
  
  uVar3 = *(undefined4 *)(param_2 + 0x118);
  uVar1 = FUN_007c5300(param_3);
  uVar2 = FUN_007c505c(param_3);
  local_14 = curl_easy_escape(uVar3,uVar1,uVar2);
  FUN_0079a3f4(auStack_18);
  FUN_007c6a60(param_1,local_14,auStack_18);
  FUN_0079a3fc(auStack_18);
  curl_free(local_14);
  return param_1;
}

// ---- NetworkManager::urlDecode  @ 0x387a30
/* NetworkManager::urlDecode(std::string) */

undefined4 NetworkManager::urlDecode(undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined1 auStack_10 [4];
  undefined4 local_c;
  
  uVar1 = FUN_007c5300(param_3);
  uVar2 = FUN_007c505c(param_3);
  local_c = curl_unescape(uVar1,uVar2);
  FUN_0079a3f4(auStack_10);
  FUN_007c6a60(param_1,local_c,auStack_10);
  FUN_0079a3fc(auStack_10);
  curl_free(local_c);
  return param_1;
}

// ---- NetworkManager::createAppsomniacsRequest  @ 0x387a98
/* NetworkManager::createAppsomniacsRequest(char const*) */

CCHttpRequest * NetworkManager::createAppsomniacsRequest(char *param_1)

{
  CCHttpRequest *this;
  char *pcVar1;
  vector<std::string,std::allocator<std::string>> avStack_20 [12];
  vector<std::string,std::allocator<std::string>> avStack_14 [12];
  
  this = operator_new(0x48);
  cocos2d::extension::CCHttpRequest::CCHttpRequest(this);
  createAppsomniacsUrl((char *)avStack_14);
  pcVar1 = (char *)FUN_007c5300(avStack_14);
  cocos2d::extension::CCHttpRequest::setUrl(this,pcVar1);
  FUN_007c5914(avStack_14);
  getAppsomniacsHttpHeader();
  std::vector<std::string,std::allocator<std::string>>::vector(avStack_14,avStack_20);
  cocos2d::extension::CCHttpRequest::setHeaders(this,avStack_14);
  std::vector<std::string,std::allocator<std::string>>::~vector(avStack_14);
  std::vector<std::string,std::allocator<std::string>>::~vector(avStack_20);
  return this;
}

// ---- NetworkManager::sharedNetworkManager  @ 0x387b40
/* NetworkManager::sharedNetworkManager() */

NetworkManager * NetworkManager::sharedNetworkManager(void)

{
  NetworkManager *this;
  
  if (m_pInstance == (NetworkManager *)0x0) {
    this = operator_new(300);
    NetworkManager(this);
    m_pInstance = this;
    (**(code **)(*(int *)this + 8))(this);
  }
  return m_pInstance;
}

// ---- NetworkManager::init  @ 0x387b9c
/* NetworkManager::init() */

bool __thiscall NetworkManager::init(NetworkManager *this)

{
  char cVar1;
  undefined4 uVar2;
  NetworkMessageDispatcher *this_00;
  PeerNetworkBridgeGP *this_01;
  PeerNetworkBridgeLAN *this_02;
  
  cVar1 = cocos2d::CCNode::init();
  if (cVar1 == '\x01') {
    uVar2 = curl_easy_init();
    *(undefined4 *)(this + 0x118) = uVar2;
    invalidateAppsomniacsSession();
    this_00 = operator_new(0x20);
    NetworkMessageDispatcher::NetworkMessageDispatcher(this_00);
    *(NetworkMessageDispatcher **)(this + 0x114) = this_00;
    this_01 = operator_new(0x18);
    PeerNetworkBridgeGP::PeerNetworkBridgeGP(this_01);
    *(PeerNetworkBridgeGP **)(this + 0x104) = this_01;
    this_02 = operator_new(0x18);
    PeerNetworkBridgeLAN::PeerNetworkBridgeLAN(this_02);
    *(PeerNetworkBridgeLAN **)(this + 0x108) = this_02;
    *(undefined4 *)(this + 0x100) = 0;
    *(undefined4 *)(this + 0x10c) = *(undefined4 *)(this + 0x104);
    _currentConnectionType = 0;
    uVar2 = RakNetDelegate::create();
    *(undefined4 *)(this + 0x110) = uVar2;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x110));
    uVar2 = cocos2d::CCArray::create();
    *(undefined4 *)(this + 0xec) = uVar2;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0xec));
    uVar2 = cocos2d::CCArray::create();
    *(undefined4 *)(this + 0xf0) = uVar2;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0xf0));
    uVar2 = cocos2d::CCDictionary::create();
    *(undefined4 *)(this + 0xe8) = uVar2;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0xe8));
    FUN_007c5e70(this + 0xf4,&DAT_007de6f0);
    FUN_007c5e70(this + 0xf8,&DAT_007de6f0);
    *(undefined4 *)(this + 0xfc) = 0;
    m_currentNewsEpoch = 0;
    m_currentLastUpdate._0_4_ = 0;
    m_currentLastUpdate._4_4_ = 0;
    m_currentQuickplayPopulation = 0;
    m_currentShowXPromo = 0;
    m_currentVersionAlerted = 0;
    this[0x11e] = (NetworkManager)0x0;
    this[0x11c] = (NetworkManager)0x0;
    _currentConnectionType = 0;
    *(undefined4 *)(this + 0x120) = 4;
    this[0x11d] = (NetworkManager)0x0;
    this[0x124] = (NetworkManager)0x0;
    FUN_007c5e70(this + 0x128,&DAT_007de6f0);
    availableSessions = (CCObject *)cocos2d::CCDictionary::create();
    cocos2d::CCObject::retain(availableSessions);
    listenForGameEvents(this);
  }
  return cVar1 == '\x01';
}

// ---- NetworkManager::init  @ 0x387da0
/* non-virtual thunk to NetworkManager::init() */

void __thiscall NetworkManager::init(NetworkManager *this)

{
  init(this + -4);
  return;
}

// ---- NetworkManager::listenForGameEvents  @ 0x387da8
/* NetworkManager::listenForGameEvents() */

void __thiscall NetworkManager::listenForGameEvents(NetworkManager *this)

{
  CCNotificationCenter *pCVar1;
  
  pCVar1 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::removeAllObservers(pCVar1,(CCObject *)(this + 4));
  pCVar1 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::addObserver
            (pCVar1,(CCObject *)(this + 4),DAT_00943450,DAT_00943454,(CCObject *)"WeaponRemoved");
  pCVar1 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::addObserver
            (pCVar1,(CCObject *)(this + 4),DAT_00943458,DAT_0094345c,(CCObject *)"WeaponCreated");
  pCVar1 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::addObserver
            (pCVar1,(CCObject *)(this + 4),DAT_00943460,DAT_00943464,(CCObject *)"WeaponChange");
  pCVar1 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::addObserver
            (pCVar1,(CCObject *)(this + 4),DAT_00943468,DAT_0094346c,(CCObject *)"WeaponUpdate");
  pCVar1 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::addObserver
            (pCVar1,(CCObject *)(this + 4),DAT_00943470,DAT_00943474,
             (CCObject *)"ReliableWeaponUpdate");
  pCVar1 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::addObserver
            (pCVar1,(CCObject *)(this + 4),DAT_00943478,DAT_0094347c,(CCObject *)"PlayerDamaged");
  pCVar1 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::addObserver
            (pCVar1,(CCObject *)(this + 4),DAT_00943480,DAT_00943484,(CCObject *)"WeaponLockQuery");
  pCVar1 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::addObserver
            (pCVar1,(CCObject *)(this + 4),DAT_00943488,DAT_0094348c,(CCObject *)"WeaponLockAllow");
  pCVar1 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::addObserver
            (pCVar1,(CCObject *)(this + 4),DAT_00943490,DAT_00943494,(CCObject *)"WeaponLockDeny");
  pCVar1 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::addObserver
            (pCVar1,(CCObject *)(this + 4),DAT_00943498,DAT_0094349c,(CCObject *)"ExplosiveCreate");
  pCVar1 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::addObserver
            (pCVar1,(CCObject *)(this + 4),DAT_009434a0,DAT_009434a4,(CCObject *)"ExplosiveRemove");
  pCVar1 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::addObserver
            (pCVar1,(CCObject *)(this + 4),DAT_009434a8,DAT_009434ac,(CCObject *)"PlayerPunch");
  pCVar1 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::addObserver
            (pCVar1,(CCObject *)(this + 4),DAT_009434b0,DAT_009434b4,(CCObject *)"PlayerPowerUpOn");
  pCVar1 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::addObserver
            (pCVar1,(CCObject *)(this + 4),DAT_009434b8,DAT_009434bc,(CCObject *)"PlayerPowerUpOff")
  ;
  pCVar1 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::addObserver
            (pCVar1,(CCObject *)(this + 4),DAT_009434c0,DAT_009434c4,(CCObject *)"PlayerDead");
  pCVar1 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::addObserver
            (pCVar1,(CCObject *)(this + 4),DAT_009434c8,DAT_009434cc,(CCObject *)"PlayerSetup");
  pCVar1 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::addObserver
            (pCVar1,(CCObject *)(this + 4),DAT_009434d0,DAT_009434d4,(CCObject *)"ThrowDual");
  pCVar1 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::addObserver
            (pCVar1,(CCObject *)(this + 4),DAT_009434d8,DAT_009434dc,
             (CCObject *)"SendInstantMessage");
  pCVar1 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::addObserver
            (pCVar1,(CCObject *)(this + 4),DAT_009434e0,DAT_009434e4,(CCObject *)"SpawnEnemy");
  pCVar1 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::addObserver
            (pCVar1,(CCObject *)(this + 4),DAT_009434e8,DAT_009434ec,(CCObject *)"SendEnemyPosition"
            );
  pCVar1 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::addObserver
            (pCVar1,(CCObject *)(this + 4),DAT_009434f0,DAT_009434f4,(CCObject *)"SendEnemyDestroy")
  ;
  pCVar1 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::addObserver
            (pCVar1,(CCObject *)(this + 4),DAT_009434f8,DAT_009434fc,(CCObject *)"SendMapVote");
  pCVar1 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::addObserver
            (pCVar1,(CCObject *)(this + 4),(_func_void_CCObject_ptr *)0x38a2d9,(char *)0x0,
             (CCObject *)"REMOVE_ALL_LOCAL_SESSIONS");
  pCVar1 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::addObserver
            (pCVar1,(CCObject *)(this + 4),(_func_void_CCObject_ptr *)0x38a175,(char *)0x0,
             (CCObject *)"ADD_LOCAL_SESSION");
  pCVar1 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::addObserver
            (pCVar1,(CCObject *)(this + 4),(_func_void_CCObject_ptr *)0x38a269,(char *)0x0,
             (CCObject *)"REMOVE_LOCAL_SESSION");
  return;
}

// ---- NetworkManager::destroyNetwork  @ 0x3882e4
/* NetworkManager::destroyNetwork() */

void __thiscall NetworkManager::destroyNetwork(NetworkManager *this)

{
  CCNotificationCenter *this_00;
  
  _currentConnectionType = 0;
  this_00 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::removeAllObservers(this_00,(CCObject *)(this + 4));
  cocos2d::CCObject::release(availableSessions);
  if ((*(int *)(this + 0x100) != 0) && (*(int *)(this + 0x100) != 0)) {
    (**(code **)(**(int **)(this + 0x100) + 100))(*(undefined4 *)(this + 0x100));
  }
  if (*(int *)(this + 0x104) != 0) {
    (**(code **)(**(int **)(this + 0x104) + 100))(*(undefined4 *)(this + 0x104));
  }
  if (*(int *)(this + 0x108) != 0) {
    (**(code **)(**(int **)(this + 0x108) + 100))(*(undefined4 *)(this + 0x108));
  }
  *(undefined4 *)(this + 0x10c) = 0;
  cocos2d::CCObject::release(*(CCObject **)(this + 0x110));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x114));
  cocos2d::CCObject::release(*(CCObject **)(this + 0xec));
  cocos2d::CCObject::release(*(CCObject **)(this + 0xf0));
  cocos2d::CCObject::release(*(CCObject **)(this + 0xe8));
  return;
}

// ---- NetworkManager::useGameCenterBT  @ 0x3883d4
/* NetworkManager::useGameCenterBT() */

void __thiscall NetworkManager::useGameCenterBT(NetworkManager *this)

{
  setUseHostedServer(this,false);
  setConnectionType(this,5);
  *(undefined4 *)(this + 0x10c) = *(undefined4 *)(this + 0x100);
  return;
}

// ---- NetworkManager::useGameCenter  @ 0x3883fc
/* NetworkManager::useGameCenter() */

void __thiscall NetworkManager::useGameCenter(NetworkManager *this)

{
  setUseHostedServer(this,false);
  setConnectionType(this,3);
  *(undefined4 *)(this + 0x10c) = *(undefined4 *)(this + 0x100);
  return;
}

// ---- NetworkManager::useGooglePlay  @ 0x388424
/* NetworkManager::useGooglePlay() */

void __thiscall NetworkManager::useGooglePlay(NetworkManager *this)

{
  setUseHostedServer(this,false);
  setConnectionType(this,4);
  *(undefined4 *)(this + 0x10c) = *(undefined4 *)(this + 0x104);
  return;
}

// ---- NetworkManager::useRakNetLAN  @ 0x38844c
/* NetworkManager::useRakNetLAN() */

void __thiscall NetworkManager::useRakNetLAN(NetworkManager *this)

{
  setUseHostedServer(this,false);
  setConnectionType(this,2);
  *(undefined4 *)(this + 0x10c) = *(undefined4 *)(this + 0x108);
  return;
}

// ---- NetworkManager::getRakNetInstance  @ 0x388474
/* NetworkManager::getRakNetInstance() */

undefined4 __thiscall NetworkManager::getRakNetInstance(NetworkManager *this)

{
  return *(undefined4 *)(this + 0x110);
}

// ---- NetworkManager::isPlayerAuthenticated  @ 0x388484
/* NetworkManager::isPlayerAuthenticated() */

undefined4 __thiscall NetworkManager::isPlayerAuthenticated(NetworkManager *this)

{
  undefined4 uVar1;
  
  uVar1 = (**(code **)(**(int **)(this + 0x10c) + 0x58))(*(undefined4 *)(this + 0x10c));
  return uVar1;
}

// ---- NetworkManager::sendDataMessageToAll  @ 0x3884ac
/* NetworkManager::sendDataMessageToAll(void const*, int, bool) */

void __thiscall
NetworkManager::sendDataMessageToAll(NetworkManager *this,void *param_1,int param_2,bool param_3)

{
  if ((_currentConnectionType == 1) || (this[0x11c] != (NetworkManager)0x0)) {
    RakNetDelegate::sendData(*(RakNetDelegate **)(this + 0x110),param_1,param_2,param_3);
  }
  else if (_currentConnectionType != 0) {
    (**(code **)(**(int **)(this + 0x10c) + 0x1c))
              (*(undefined4 *)(this + 0x10c),param_1,param_2,param_3);
  }
  return;
}

// ---- NetworkManager::sendDataMessageToPeer  @ 0x38851c
/* NetworkManager::sendDataMessageToPeer(void const*, int, std::string, bool) */

void __thiscall
NetworkManager::sendDataMessageToPeer
          (NetworkManager *this,undefined4 param_1,undefined4 param_2,undefined4 param_4,
          undefined1 param_5)

{
  RakNetDelegate *pRVar1;
  code *pcVar2;
  undefined4 uVar3;
  undefined1 auStack_14 [8];
  
  if (this[0x11c] == (NetworkManager)0x0) {
    if (_currentConnectionType != 0) {
      pcVar2 = *(code **)(**(int **)(this + 0x10c) + 0x20);
      uVar3 = *(undefined4 *)(this + 0x10c);
      FUN_007c64e8(auStack_14,param_4);
      (*pcVar2)(uVar3,param_1,param_2,auStack_14,param_5);
      FUN_007c5914(auStack_14);
    }
  }
  else {
    pRVar1 = *(RakNetDelegate **)(this + 0x110);
    FUN_007c64e8(auStack_14,param_4);
    RakNetDelegate::sendDataToPeer(pRVar1,param_1,param_2,auStack_14,param_5);
    FUN_007c5914(auStack_14);
  }
  return;
}

// ---- NetworkManager::readMessage  @ 0x3885c8
/* NetworkManager::readMessage(cocos2d::extension::CCData*, std::string) */

void __thiscall NetworkManager::readMessage(NetworkManager *this,CCObject *param_1,string *param_3)

{
  CCObject *pCVar1;
  CCArray *this_00;
  
  cocos2d::CCArray::addObject(*(CCArray **)(this + 0xec),param_1);
  this_00 = *(CCArray **)(this + 0xf0);
  pCVar1 = (CCObject *)cocos2d::CCString::create(param_3);
  cocos2d::CCArray::addObject(this_00,pCVar1);
  return;
}

// ---- NetworkManager::getMessages  @ 0x3885fc
/* NetworkManager::getMessages() */

undefined4 __thiscall NetworkManager::getMessages(NetworkManager *this)

{
  return *(undefined4 *)(this + 0xec);
}

// ---- NetworkManager::getMessageIds  @ 0x38860c
/* NetworkManager::getMessageIds() */

undefined4 __thiscall NetworkManager::getMessageIds(NetworkManager *this)

{
  return *(undefined4 *)(this + 0xf0);
}

// ---- NetworkManager::clearMessages  @ 0x38861c
/* NetworkManager::clearMessages() */

void __thiscall NetworkManager::clearMessages(NetworkManager *this)

{
  int iVar1;
  
  iVar1 = cocos2d::CCArray::count(*(CCArray **)(this + 0xec));
  if (iVar1 != 0) {
    cocos2d::CCArray::removeAllObjects(*(CCArray **)(this + 0xec));
  }
  iVar1 = cocos2d::CCArray::count(*(CCArray **)(this + 0xf0));
  if (iVar1 != 0) {
    cocos2d::CCArray::removeAllObjects(*(CCArray **)(this + 0xf0));
  }
  return;
}

// ---- NetworkManager::getPeerPlayers  @ 0x388678
/* NetworkManager::getPeerPlayers() */

undefined4 __thiscall NetworkManager::getPeerPlayers(NetworkManager *this)

{
  return *(undefined4 *)(this + 0xe8);
}

// ---- NetworkManager::getPeerCount  @ 0x388688
/* NetworkManager::getPeerCount() */

undefined4 __thiscall NetworkManager::getPeerCount(NetworkManager *this)

{
  undefined4 uVar1;
  
  if (*(int *)(this + 0x10c) == 0) {
    uVar1 = cocos2d::CCDictionary::count(*(CCDictionary **)(this + 0xe8));
  }
  else {
    uVar1 = (**(code **)(**(int **)(this + 0x10c) + 0x50))(*(undefined4 *)(this + 0x10c));
  }
  return uVar1;
}

// ---- NetworkManager::addNewPeerID  @ 0x3886c8
/* NetworkManager::addNewPeerID(std::string) */

void __thiscall NetworkManager::addNewPeerID(NetworkManager *this,string *param_2)

{
  int iVar1;
  CCObject *pCVar2;
  CCNotificationCenter *this_00;
  undefined1 auStack_14 [4];
  string asStack_10 [4];
  CCArray *local_c;
  
  iVar1 = cocos2d::CCDictionary::objectForKey(*(CCDictionary **)(this + 0xe8),param_2);
  if (iVar1 == 0) {
    local_c = (CCArray *)cocos2d::CCArray::create();
    pCVar2 = (CCObject *)cocos2d::CCString::create(param_2);
    cocos2d::CCArray::addObject(local_c,pCVar2);
    FUN_0079a3f4(auStack_14);
    FUN_007c6a60(asStack_10,"CONNECTING...",auStack_14);
    pCVar2 = (CCObject *)cocos2d::CCString::create(asStack_10);
    cocos2d::CCArray::addObject(local_c,pCVar2);
    FUN_007c5914(asStack_10);
    FUN_0079a3fc(auStack_14);
    pCVar2 = (CCObject *)cocos2d::CCInteger::create(-1);
    cocos2d::CCArray::addObject(local_c,pCVar2);
    FUN_0079a3f4(auStack_14);
    FUN_007c6a60(asStack_10,&DAT_007de6f0,auStack_14);
    pCVar2 = (CCObject *)cocos2d::CCString::create(asStack_10);
    cocos2d::CCArray::addObject(local_c,pCVar2);
    FUN_007c5914(asStack_10);
    FUN_0079a3fc(auStack_14);
    pCVar2 = (CCObject *)cocos2d::CCInteger::create(0);
    cocos2d::CCArray::addObject(local_c,pCVar2);
    pCVar2 = (CCObject *)cocos2d::CCInteger::create(0);
    cocos2d::CCArray::addObject(local_c,pCVar2);
    pCVar2 = (CCObject *)cocos2d::CCInteger::create(0);
    cocos2d::CCArray::addObject(local_c,pCVar2);
    pCVar2 = (CCObject *)cocos2d::CCArray::create();
    cocos2d::CCArray::addObject(local_c,pCVar2);
    cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 0xe8),(CCObject *)local_c,param_2);
    this_00 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    pCVar2 = (CCObject *)cocos2d::CCString::create(param_2);
    cocos2d::CCNotificationCenter::postNotification(this_00,"PeerConnected",pCVar2);
    getSmallestPeerID();
    setLeaderPeerID(this,asStack_10);
    FUN_007c5914(asStack_10);
  }
  return;
}

// ---- NetworkManager::removePeerID  @ 0x388864
/* NetworkManager::removePeerID(std::string) */

void __thiscall NetworkManager::removePeerID(NetworkManager *this,string *param_2)

{
  bool bVar1;
  CCNotificationCenter *pCVar2;
  CCObject *pCVar3;
  CCString *this_00;
  undefined4 uVar4;
  int iVar5;
  CCObject *pCVar6;
  uint uVar7;
  undefined1 auStack_1c [4];
  string asStack_18 [4];
  CCObject *local_14;
  
  pCVar2 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  pCVar3 = (CCObject *)cocos2d::CCString::create(param_2);
  cocos2d::CCNotificationCenter::postNotification(pCVar2,"BeforePeerDisconnected",pCVar3);
  cocos2d::CCDictionary::removeObjectForKey(*(CCDictionary **)(this + 0xe8),param_2);
  for (local_14 = (CCObject *)0x0; pCVar3 = local_14,
      pCVar6 = (CCObject *)cocos2d::CCArray::count(*(CCArray **)(this + 0xf0)), pCVar3 < pCVar6;
      local_14 = local_14 + 1) {
    this_00 = (CCString *)cocos2d::CCArray::objectAtIndex(*(CCArray **)(this + 0xf0),(uint)local_14)
    ;
    uVar4 = cocos2d::CCString::getCString(this_00);
    iVar5 = FUN_007c5724(param_2,uVar4);
    pCVar3 = local_14;
    if (iVar5 == 0) {
      uVar7 = *(uint *)(this + 0xec);
      FUN_0079a3f4(auStack_1c);
      FUN_007c6a60(asStack_18,&DAT_007de6f0,auStack_1c);
      bVar1 = (bool)cocos2d::CCString::create(asStack_18);
      cocos2d::CCArray::replaceObjectAtIndex(uVar7,pCVar3,bVar1);
      FUN_007c5914(asStack_18);
      FUN_0079a3fc(auStack_1c);
    }
  }
  getSmallestPeerID();
  setLeaderPeerID(this,asStack_18);
  FUN_007c5914(asStack_18);
  pCVar2 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  pCVar3 = (CCObject *)cocos2d::CCString::create(param_2);
  cocos2d::CCNotificationCenter::postNotification(pCVar2,"AfterPeerDisconnected",pCVar3);
  return;
}

// ---- NetworkManager::getSmallestPeerID  @ 0x3889a8
/* NetworkManager::getSmallestPeerID() */

undefined4 NetworkManager::getSmallestPeerID(void)

{
  bool bVar1;
  undefined4 in_r0;
  int iVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  int in_r1;
  undefined1 auStack_24 [4];
  string asStack_20 [4];
  CCDictElement *local_1c;
  CCDictElement *local_18;
  vector<std::string,std::allocator<std::string>> avStack_14 [12];
  
  std::vector<std::string,std::allocator<std::string>>::vector(avStack_14);
  local_1c = (CCDictElement *)0x0;
  local_18 = (CCDictElement *)0x0;
  if ((*(int *)(in_r1 + 0xe8) == 0) ||
     (iVar2 = cocos2d::CCDictionary::count(*(CCDictionary **)(in_r1 + 0xe8)), iVar2 == 0)) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (bVar1) {
    local_1c = *(CCDictElement **)(*(int *)(in_r1 + 0xe8) + 0x14);
    if (*(int *)(*(int *)(in_r1 + 0xe8) + 0x14) == 0) {
      local_18 = (CCDictElement *)0x0;
    }
    else {
      local_18 = *(CCDictElement **)(*(int *)(*(int *)(in_r1 + 0xe8) + 0x14) + 0x110);
    }
    while (local_1c != (CCDictElement *)0x0) {
      uVar3 = cocos2d::CCDictElement::getStrKey(local_1c);
      FUN_0079a3f4(auStack_24);
      FUN_007c6a60(asStack_20,uVar3,auStack_24);
      FUN_0079a3fc(auStack_24);
      std::vector<std::string,std::allocator<std::string>>::push_back(avStack_14,asStack_20);
      FUN_007c5914(asStack_20);
      local_1c = local_18;
      if (local_18 == (CCDictElement *)0x0) {
        local_18 = (CCDictElement *)0x0;
      }
      else {
        local_18 = *(CCDictElement **)(local_18 + 0x110);
      }
    }
  }
  getHostPeerID();
  std::vector<std::string,std::allocator<std::string>>::push_back(avStack_14,asStack_20);
  FUN_007c5914(asStack_20);
  uVar3 = std::vector<std::string,std::allocator<std::string>>::begin(avStack_14);
  uVar4 = std::vector<std::string,std::allocator<std::string>>::end(avStack_14);
  std::
  sort<__gnu_cxx::__normal_iterator<std::string*,std::vector<std::string,std::allocator<std::string>>>>
            (uVar3,uVar4);
  uVar3 = std::vector<std::string,std::allocator<std::string>>::operator[](avStack_14,0);
  FUN_007c64e8(in_r0,uVar3);
  std::vector<std::string,std::allocator<std::string>>::~vector(avStack_14);
  return in_r0;
}

// ---- NetworkManager::setLeaderPeerID  @ 0x388af0
/* NetworkManager::setLeaderPeerID(std::string) */

void __thiscall NetworkManager::setLeaderPeerID(NetworkManager *this,undefined4 param_2)

{
  thunk_FUN_007c653c(this + 0xf8,param_2);
  return;
}

// ---- NetworkManager::sendPositionData  @ 0x388b0c
/* NetworkManager::sendPositionData(float, bool) */

void NetworkManager::sendPositionData(float param_1,bool param_2)

{
  CCData *this;
  void *pvVar1;
  int iVar2;
  
  this = (CCData *)
         NetworkMessageDispatcher::getLocationData
                   (SUB41(*(undefined4 *)((NetworkManager *)(uint)param_2 + 0x114),0));
  pvVar1 = (void *)cocos2d::extension::CCData::getBytes(this);
  iVar2 = cocos2d::extension::CCData::getSize(this);
  sendDataMessageToAll((NetworkManager *)(uint)param_2,pvVar1,iVar2,false);
  return;
}

// ---- NetworkManager::sendVelocityData  @ 0x388b50
/* NetworkManager::sendVelocityData(float) */

void NetworkManager::sendVelocityData(float param_1)

{
  NetworkManager *in_r0;
  CCData *this;
  void *pvVar1;
  int iVar2;
  
  this = (CCData *)NetworkMessageDispatcher::getMotionData();
  pvVar1 = (void *)cocos2d::extension::CCData::getBytes(this);
  iVar2 = cocos2d::extension::CCData::getSize(this);
  sendDataMessageToAll(in_r0,pvVar1,iVar2,false);
  return;
}

// ---- NetworkManager::sendWeaponCreate  @ 0x388b88
/* NetworkManager::sendWeaponCreate(cocos2d::CCObject*) */

void NetworkManager::sendWeaponCreate(CCObject *param_1)

{
  CCData *this;
  void *pvVar1;
  int iVar2;
  
  this = (CCData *)NetworkMessageDispatcher::getWeaponCreateData(*(Weapon **)(param_1 + 0x114));
  pvVar1 = (void *)cocos2d::extension::CCData::getBytes(this);
  iVar2 = cocos2d::extension::CCData::getSize(this);
  sendDataMessageToAll((NetworkManager *)param_1,pvVar1,iVar2,true);
  return;
}

// ---- NetworkManager::sendWeaponChange  @ 0x388bc8
/* NetworkManager::sendWeaponChange(cocos2d::CCObject*) */

void NetworkManager::sendWeaponChange(CCObject *param_1)

{
  CCData *this;
  void *pvVar1;
  int iVar2;
  
  this = (CCData *)NetworkMessageDispatcher::getWeaponChangeData();
  pvVar1 = (void *)cocos2d::extension::CCData::getBytes(this);
  iVar2 = cocos2d::extension::CCData::getSize(this);
  sendDataMessageToAll((NetworkManager *)param_1,pvVar1,iVar2,true);
  return;
}

// ---- NetworkManager::sendWeaponRemove  @ 0x388c00
/* NetworkManager::sendWeaponRemove(cocos2d::CCObject*) */

void __thiscall NetworkManager::sendWeaponRemove(NetworkManager *this,CCObject *param_1)

{
  undefined4 uVar1;
  void *pvVar2;
  int iVar3;
  NetworkMessageDispatcher *pNVar4;
  undefined1 auStack_20 [4];
  undefined1 auStack_1c [4];
  CCObject *local_18;
  CCData *local_14;
  
  pNVar4 = *(NetworkMessageDispatcher **)(this + 0x114);
  local_18 = param_1;
  uVar1 = cocos2d::CCString::getCString((CCString *)param_1);
  FUN_0079a3f4(auStack_20);
  FUN_007c6a60(auStack_1c,uVar1,auStack_20);
  local_14 = (CCData *)NetworkMessageDispatcher::getWeaponRemoveData(pNVar4,auStack_1c);
  FUN_007c5914(auStack_1c);
  FUN_0079a3fc(auStack_20);
  pvVar2 = (void *)cocos2d::extension::CCData::getBytes(local_14);
  iVar3 = cocos2d::extension::CCData::getSize(local_14);
  sendDataMessageToAll(this,pvVar2,iVar3,true);
  return;
}

// ---- NetworkManager::sendWeaponUpdate  @ 0x388c88
/* NetworkManager::sendWeaponUpdate(cocos2d::CCObject*) */

void __thiscall NetworkManager::sendWeaponUpdate(NetworkManager *this,CCObject *param_1)

{
  CCData *this_00;
  void *pvVar1;
  int iVar2;
  
  this_00 = (CCData *)
            NetworkMessageDispatcher::getWeaponUpdateData
                      (*(NetworkMessageDispatcher **)(this + 0x114),(Weapon *)param_1);
  pvVar1 = (void *)cocos2d::extension::CCData::getBytes(this_00);
  iVar2 = cocos2d::extension::CCData::getSize(this_00);
  sendDataMessageToAll(this,pvVar1,iVar2,false);
  return;
}

// ---- NetworkManager::sendReliableWeaponUpdate  @ 0x388cc8
/* NetworkManager::sendReliableWeaponUpdate(cocos2d::CCObject*) */

void __thiscall NetworkManager::sendReliableWeaponUpdate(NetworkManager *this,CCObject *param_1)

{
  CCData *this_00;
  void *pvVar1;
  int iVar2;
  
  this_00 = (CCData *)
            NetworkMessageDispatcher::getWeaponUpdateData
                      (*(NetworkMessageDispatcher **)(this + 0x114),(Weapon *)param_1);
  pvVar1 = (void *)cocos2d::extension::CCData::getBytes(this_00);
  iVar2 = cocos2d::extension::CCData::getSize(this_00);
  sendDataMessageToAll(this,pvVar1,iVar2,true);
  return;
}

// ---- NetworkManager::sendPlayerDamage  @ 0x388d08
/* NetworkManager::sendPlayerDamage(cocos2d::CCObject*) */

void NetworkManager::sendPlayerDamage(CCObject *param_1)

{
  CCData *this;
  void *pvVar1;
  int iVar2;
  
  this = (CCData *)NetworkMessageDispatcher::getPeerDamageData(*(CCArray **)(param_1 + 0x114));
  pvVar1 = (void *)cocos2d::extension::CCData::getBytes(this);
  iVar2 = cocos2d::extension::CCData::getSize(this);
  sendDataMessageToAll((NetworkManager *)param_1,pvVar1,iVar2,true);
  return;
}

// ---- NetworkManager::sendWeaponLockQuery  @ 0x388d48
/* NetworkManager::sendWeaponLockQuery(cocos2d::CCObject*) */

void __thiscall NetworkManager::sendWeaponLockQuery(NetworkManager *this,CCObject *param_1)

{
  CCData *this_00;
  void *pvVar1;
  int iVar2;
  
  this_00 = (CCData *)
            NetworkMessageDispatcher::getWeaponLockQueryData
                      (*(NetworkMessageDispatcher **)(this + 0x114),(Weapon *)param_1);
  pvVar1 = (void *)cocos2d::extension::CCData::getBytes(this_00);
  iVar2 = cocos2d::extension::CCData::getSize(this_00);
  sendDataMessageToAll(this,pvVar1,iVar2,true);
  return;
}

// ---- NetworkManager::sendWeaponLockAllow  @ 0x388d88
/* NetworkManager::sendWeaponLockAllow(cocos2d::CCObject*) */

void __thiscall NetworkManager::sendWeaponLockAllow(NetworkManager *this,CCObject *param_1)

{
  undefined4 uVar1;
  void *pvVar2;
  int iVar3;
  NetworkMessageDispatcher *pNVar4;
  undefined1 auStack_30 [4];
  undefined1 auStack_2c [4];
  undefined1 auStack_28 [4];
  undefined1 auStack_24 [4];
  CCArray *local_20;
  CCString *local_1c;
  CCString *local_18;
  CCData *local_14;
  
  local_20 = (CCArray *)param_1;
  local_1c = (CCString *)cocos2d::CCArray::objectAtIndex((CCArray *)param_1,0);
  local_18 = (CCString *)cocos2d::CCArray::objectAtIndex(local_20,1);
  pNVar4 = *(NetworkMessageDispatcher **)(this + 0x114);
  uVar1 = cocos2d::CCString::getCString(local_1c);
  FUN_0079a3f4(auStack_30);
  FUN_007c6a60(auStack_28,uVar1,auStack_30);
  uVar1 = cocos2d::CCString::getCString(local_18);
  FUN_0079a3f4(auStack_2c);
  FUN_007c6a60(auStack_24,uVar1,auStack_2c);
  local_14 = (CCData *)
             NetworkMessageDispatcher::getWeaponLockReplyData(pNVar4,1,auStack_28,auStack_24);
  FUN_007c5914(auStack_24);
  FUN_0079a3fc(auStack_2c);
  FUN_007c5914(auStack_28);
  FUN_0079a3fc(auStack_30);
  pvVar2 = (void *)cocos2d::extension::CCData::getBytes(local_14);
  iVar3 = cocos2d::extension::CCData::getSize(local_14);
  sendDataMessageToAll(this,pvVar2,iVar3,true);
  return;
}

// ---- NetworkManager::sendWeaponLockDeny  @ 0x388e6c
/* NetworkManager::sendWeaponLockDeny(cocos2d::CCObject*) */

void __thiscall NetworkManager::sendWeaponLockDeny(NetworkManager *this,CCObject *param_1)

{
  undefined4 uVar1;
  void *pvVar2;
  int iVar3;
  NetworkMessageDispatcher *pNVar4;
  undefined1 auStack_30 [4];
  undefined1 auStack_2c [4];
  undefined1 auStack_28 [4];
  undefined1 auStack_24 [4];
  CCArray *local_20;
  CCString *local_1c;
  CCString *local_18;
  CCData *local_14;
  
  local_20 = (CCArray *)param_1;
  local_1c = (CCString *)cocos2d::CCArray::objectAtIndex((CCArray *)param_1,0);
  local_18 = (CCString *)cocos2d::CCArray::objectAtIndex(local_20,1);
  pNVar4 = *(NetworkMessageDispatcher **)(this + 0x114);
  uVar1 = cocos2d::CCString::getCString(local_1c);
  FUN_0079a3f4(auStack_30);
  FUN_007c6a60(auStack_28,uVar1,auStack_30);
  uVar1 = cocos2d::CCString::getCString(local_18);
  FUN_0079a3f4(auStack_2c);
  FUN_007c6a60(auStack_24,uVar1,auStack_2c);
  local_14 = (CCData *)
             NetworkMessageDispatcher::getWeaponLockReplyData(pNVar4,0,auStack_28,auStack_24);
  FUN_007c5914(auStack_24);
  FUN_0079a3fc(auStack_2c);
  FUN_007c5914(auStack_28);
  FUN_0079a3fc(auStack_30);
  pvVar2 = (void *)cocos2d::extension::CCData::getBytes(local_14);
  iVar3 = cocos2d::extension::CCData::getSize(local_14);
  sendDataMessageToAll(this,pvVar2,iVar3,true);
  return;
}

// ---- NetworkManager::sendExplosionCreate  @ 0x388f50
/* NetworkManager::sendExplosionCreate(cocos2d::CCObject*) */

void NetworkManager::sendExplosionCreate(CCObject *param_1)

{
  CCData *this;
  void *pvVar1;
  int iVar2;
  
  this = (CCData *)NetworkMessageDispatcher::getExplosionData(*(CCArray **)(param_1 + 0x114));
  pvVar1 = (void *)cocos2d::extension::CCData::getBytes(this);
  iVar2 = cocos2d::extension::CCData::getSize(this);
  sendDataMessageToAll((NetworkManager *)param_1,pvVar1,iVar2,true);
  return;
}

// ---- NetworkManager::sendExplosionRemove  @ 0x388f90
/* NetworkManager::sendExplosionRemove(cocos2d::CCObject*) */

void __thiscall NetworkManager::sendExplosionRemove(NetworkManager *this,CCObject *param_1)

{
  CCData *this_00;
  void *pvVar1;
  int iVar2;
  
  this_00 = (CCData *)
            NetworkMessageDispatcher::getExplosionRemoveData
                      (*(NetworkMessageDispatcher **)(this + 0x114),(CCArray *)param_1);
  pvVar1 = (void *)cocos2d::extension::CCData::getBytes(this_00);
  iVar2 = cocos2d::extension::CCData::getSize(this_00);
  sendDataMessageToAll(this,pvVar1,iVar2,true);
  return;
}

// ---- NetworkManager::sendPlayerPunch  @ 0x388fd0
/* NetworkManager::sendPlayerPunch(cocos2d::CCObject*) */

void NetworkManager::sendPlayerPunch(CCObject *param_1)

{
  CCData *this;
  void *pvVar1;
  int iVar2;
  
  this = (CCData *)NetworkMessageDispatcher::getPlayerPunchData();
  pvVar1 = (void *)cocos2d::extension::CCData::getBytes(this);
  iVar2 = cocos2d::extension::CCData::getSize(this);
  sendDataMessageToAll((NetworkManager *)param_1,pvVar1,iVar2,true);
  return;
}

// ---- NetworkManager::sendThrowDual  @ 0x389008
/* NetworkManager::sendThrowDual(cocos2d::CCObject*) */

void NetworkManager::sendThrowDual(CCObject *param_1)

{
  CCData *this;
  void *pvVar1;
  int iVar2;
  
  this = (CCData *)NetworkMessageDispatcher::getPlayerThrowData();
  pvVar1 = (void *)cocos2d::extension::CCData::getBytes(this);
  iVar2 = cocos2d::extension::CCData::getSize(this);
  sendDataMessageToAll((NetworkManager *)param_1,pvVar1,iVar2,true);
  return;
}

// ---- NetworkManager::sendPlayerPowerUpOn  @ 0x389040
/* NetworkManager::sendPlayerPowerUpOn(cocos2d::CCObject*) */

void __thiscall NetworkManager::sendPlayerPowerUpOn(NetworkManager *this,CCObject *param_1)

{
  undefined4 uVar1;
  CCData *this_00;
  void *pvVar2;
  int iVar3;
  NetworkMessageDispatcher *pNVar4;
  
  pNVar4 = *(NetworkMessageDispatcher **)(this + 0x114);
  uVar1 = cocos2d::CCInteger::getValue((CCInteger *)param_1);
  this_00 = (CCData *)NetworkMessageDispatcher::getPlayerPowerUpData(pNVar4,uVar1,1);
  pvVar2 = (void *)cocos2d::extension::CCData::getBytes(this_00);
  iVar3 = cocos2d::extension::CCData::getSize(this_00);
  sendDataMessageToAll(this,pvVar2,iVar3,true);
  return;
}

// ---- NetworkManager::sendPlayerPowerUpOff  @ 0x389088
/* NetworkManager::sendPlayerPowerUpOff(cocos2d::CCObject*) */

void __thiscall NetworkManager::sendPlayerPowerUpOff(NetworkManager *this,CCObject *param_1)

{
  undefined4 uVar1;
  CCData *this_00;
  void *pvVar2;
  int iVar3;
  NetworkMessageDispatcher *pNVar4;
  
  pNVar4 = *(NetworkMessageDispatcher **)(this + 0x114);
  uVar1 = cocos2d::CCInteger::getValue((CCInteger *)param_1);
  this_00 = (CCData *)NetworkMessageDispatcher::getPlayerPowerUpData(pNVar4,uVar1,0);
  pvVar2 = (void *)cocos2d::extension::CCData::getBytes(this_00);
  iVar3 = cocos2d::extension::CCData::getSize(this_00);
  sendDataMessageToAll(this,pvVar2,iVar3,true);
  return;
}

// ---- NetworkManager::sendPlayerDead  @ 0x3890d0
/* NetworkManager::sendPlayerDead(cocos2d::CCObject*) */

void NetworkManager::sendPlayerDead(CCObject *param_1)

{
  CCData *this;
  void *pvVar1;
  int iVar2;
  
  this = (CCData *)NetworkMessageDispatcher::getPlayerDiedData();
  pvVar1 = (void *)cocos2d::extension::CCData::getBytes(this);
  iVar2 = cocos2d::extension::CCData::getSize(this);
  sendDataMessageToAll((NetworkManager *)param_1,pvVar1,iVar2,true);
  return;
}

// ---- NetworkManager::sendPlayerEnteredGame  @ 0x389108
/* NetworkManager::sendPlayerEnteredGame(cocos2d::CCObject*) */

void NetworkManager::sendPlayerEnteredGame(CCObject *param_1)

{
  CCData *this;
  void *pvVar1;
  int iVar2;
  
  this = (CCData *)
         NetworkMessageDispatcher::getPlayerEnteredGameData
                   (*(NetworkMessageDispatcher **)(param_1 + 0x114),false);
  pvVar1 = (void *)cocos2d::extension::CCData::getBytes(this);
  iVar2 = cocos2d::extension::CCData::getSize(this);
  sendDataMessageToAll((NetworkManager *)param_1,pvVar1,iVar2,true);
  return;
}

// ---- NetworkManager::sendPing  @ 0x389144
/* NetworkManager::sendPing(cocos2d::CCObject*) */

void NetworkManager::sendPing(CCObject *param_1)

{
  CCData *this;
  void *pvVar1;
  int iVar2;
  
  this = (CCData *)
         NetworkMessageDispatcher::getPingData(*(NetworkMessageDispatcher **)(param_1 + 0x114));
  pvVar1 = (void *)cocos2d::extension::CCData::getBytes(this);
  iVar2 = cocos2d::extension::CCData::getSize(this);
  sendDataMessageToAll((NetworkManager *)param_1,pvVar1,iVar2,true);
  return;
}

// ---- NetworkManager::sendLobbyStatus  @ 0x38917c
/* NetworkManager::sendLobbyStatus(std::string, int) */

void __thiscall
NetworkManager::sendLobbyStatus(NetworkManager *this,undefined4 param_2,undefined4 param_3)

{
  void *pvVar1;
  int iVar2;
  NetworkMessageDispatcher *pNVar3;
  undefined1 auStack_10 [4];
  CCData *local_c;
  
  pNVar3 = *(NetworkMessageDispatcher **)(this + 0x114);
  FUN_007c64e8(auStack_10,param_2);
  local_c = (CCData *)NetworkMessageDispatcher::getLobbyStatusData(pNVar3,auStack_10,param_3);
  FUN_007c5914(auStack_10);
  pvVar1 = (void *)cocos2d::extension::CCData::getBytes(local_c);
  iVar2 = cocos2d::extension::CCData::getSize(local_c);
  sendDataMessageToAll(this,pvVar1,iVar2,true);
  return;
}

// ---- NetworkManager::sendIM  @ 0x3891dc
/* NetworkManager::sendIM(cocos2d::CCObject*) */

void __thiscall NetworkManager::sendIM(NetworkManager *this,CCObject *param_1)

{
  undefined4 uVar1;
  void *pvVar2;
  int iVar3;
  NetworkMessageDispatcher *pNVar4;
  undefined1 auStack_20 [4];
  undefined1 auStack_1c [4];
  CCObject *local_18;
  CCData *local_14;
  
  pNVar4 = *(NetworkMessageDispatcher **)(this + 0x114);
  local_18 = param_1;
  uVar1 = cocos2d::CCString::getCString((CCString *)param_1);
  FUN_0079a3f4(auStack_20);
  FUN_007c6a60(auStack_1c,uVar1,auStack_20);
  local_14 = (CCData *)NetworkMessageDispatcher::getIMData(pNVar4,auStack_1c);
  FUN_007c5914(auStack_1c);
  FUN_0079a3fc(auStack_20);
  pvVar2 = (void *)cocos2d::extension::CCData::getBytes(local_14);
  iVar3 = cocos2d::extension::CCData::getSize(local_14);
  sendDataMessageToAll(this,pvVar2,iVar3,true);
  return;
}

// ---- NetworkManager::sendMapVote  @ 0x389264
/* NetworkManager::sendMapVote(cocos2d::CCObject*) */

void __thiscall NetworkManager::sendMapVote(NetworkManager *this,CCObject *param_1)

{
  int iVar1;
  CCData *this_00;
  void *pvVar2;
  NetworkMessageDispatcher *this_01;
  
  this_01 = *(NetworkMessageDispatcher **)(this + 0x114);
  iVar1 = cocos2d::CCInteger::getValue((CCInteger *)param_1);
  this_00 = (CCData *)NetworkMessageDispatcher::getMapVote(this_01,iVar1);
  pvVar2 = (void *)cocos2d::extension::CCData::getBytes(this_00);
  iVar1 = cocos2d::extension::CCData::getSize(this_00);
  sendDataMessageToAll(this,pvVar2,iVar1,true);
  return;
}

// ---- NetworkManager::sendPlayerSetup  @ 0x3892ac
/* NetworkManager::sendPlayerSetup(std::string, int, std::string, int) */

void __thiscall
NetworkManager::sendPlayerSetup
          (NetworkManager *this,undefined4 param_2,short param_3,undefined4 param_4,short param_5)

{
  undefined4 uVar1;
  int iVar2;
  void *pvVar3;
  undefined4 uVar4;
  NetworkMessageDispatcher *pNVar5;
  undefined1 auStack_20 [4];
  undefined4 local_1c;
  undefined4 local_18;
  CCData *local_14;
  
  LeaderBoardBridge::sharedLeaderBoardBridge();
  uVar1 = LeaderBoardBridge::calcPlayerExp();
  local_1c = FUN_0038714c(uVar1);
  LeaderBoardBridge::sharedLeaderBoardBridge();
  local_18 = LeaderBoardBridge::getCachedPlayerSkill();
  pNVar5 = *(NetworkMessageDispatcher **)(this + 0x114);
  FUN_007c64e8(auStack_20,param_2);
  local_14 = (CCData *)
             NetworkMessageDispatcher::getPlayerSetupData
                       (pNVar5,auStack_20,(int)param_3,(int)param_5,(int)(short)local_1c,
                        (int)(short)local_18);
  FUN_007c5914(auStack_20);
  iVar2 = FUN_007c505c(param_4);
  if (iVar2 == 0) {
    pvVar3 = (void *)cocos2d::extension::CCData::getBytes(local_14);
    iVar2 = cocos2d::extension::CCData::getSize(local_14);
    sendDataMessageToAll(this,pvVar3,iVar2,true);
  }
  else {
    uVar1 = cocos2d::extension::CCData::getBytes(local_14);
    uVar4 = cocos2d::extension::CCData::getSize(local_14);
    FUN_007c64e8(auStack_20,param_4);
    sendDataMessageToPeer(this,uVar1,uVar4,auStack_20,1);
    FUN_007c5914(auStack_20);
  }
  return;
}

// ---- NetworkManager::onPlayerSetup  @ 0x3893a4
/* NetworkManager::onPlayerSetup(cocos2d::CCObject*) */

void __thiscall NetworkManager::onPlayerSetup(NetworkManager *this,CCObject *param_1)

{
  undefined4 uVar1;
  undefined1 auStack_1c [4];
  string asStack_18 [4];
  CCObject *local_14;
  CCString *local_10;
  CCDictionary *local_c;
  
  local_14 = param_1;
  local_10 = (CCString *)cocos2d::CCArray::objectAtIndex((CCArray *)param_1,0);
  uVar1 = cocos2d::CCString::getCString(local_10);
  FUN_0079a3f4(auStack_1c);
  FUN_007c6a60(asStack_18,uVar1,auStack_1c);
  addNewPeerID(this,asStack_18);
  FUN_007c5914(asStack_18);
  FUN_0079a3fc(auStack_1c);
  local_c = (CCDictionary *)getPeerPlayers(this);
  uVar1 = cocos2d::CCString::getCString(local_10);
  FUN_0079a3f4(auStack_1c);
  FUN_007c6a60(asStack_18,uVar1,auStack_1c);
  cocos2d::CCDictionary::setObject(local_c,local_14,asStack_18);
  FUN_007c5914(asStack_18);
  FUN_0079a3fc(auStack_1c);
  return;
}

// ---- NetworkManager::requestPlayerSetup  @ 0x38946c
/* NetworkManager::requestPlayerSetup(std::string) */

void __thiscall NetworkManager::requestPlayerSetup(NetworkManager *this,undefined4 param_2)

{
  void *pvVar1;
  int iVar2;
  undefined4 uVar3;
  undefined1 auStack_10 [4];
  CCData *local_c;
  
  uVar3 = *(undefined4 *)(this + 0x114);
  FUN_007c64e8(auStack_10,param_2);
  local_c = (CCData *)NetworkMessageDispatcher::getPlayerSetupDataRequest(uVar3,auStack_10);
  FUN_007c5914(auStack_10);
  pvVar1 = (void *)cocos2d::extension::CCData::getBytes(local_c);
  iVar2 = cocos2d::extension::CCData::getSize(local_c);
  sendDataMessageToAll(this,pvVar1,iVar2,true);
  return;
}

// ---- NetworkManager::addSoldier  @ 0x3894c8
/* NetworkManager::addSoldier(cocos2d::CCArray*, std::string) */

void __thiscall NetworkManager::addSoldier(NetworkManager *this,CCArray *param_1,undefined4 param_3)

{
  uint uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  uint uVar4;
  NetworkMessageDispatcher *pNVar5;
  undefined1 auStack_40 [4];
  undefined1 auStack_3c [4];
  undefined1 auStack_38 [4];
  undefined1 auStack_34 [4];
  undefined1 auStack_30 [4];
  uint local_2c;
  CCData *local_28;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  undefined4 local_18;
  undefined4 local_14;
  
  local_28 = (CCData *)0x0;
  local_24 = 0;
  local_20 = (**(code **)(*hostSoldier + 0x1c4))(hostSoldier);
  (**(code **)(*hostSoldier + 0x1d8))(hostSoldier);
  SoldierView::getPlayerName();
  LeaderBoardBridge::sharedLeaderBoardBridge();
  uVar2 = LeaderBoardBridge::calcPlayerExp();
  local_1c = FUN_0038714c(uVar2);
  LeaderBoardBridge::sharedLeaderBoardBridge();
  local_18 = LeaderBoardBridge::getCachedPlayerSkill();
  pNVar5 = *(NetworkMessageDispatcher **)(this + 0x114);
  FUN_007c64e8(auStack_3c,auStack_40);
  local_28 = (CCData *)
             NetworkMessageDispatcher::getPlayerSetupData
                       (pNVar5,auStack_3c,(int)(short)local_24,(int)(short)local_20,
                        (int)(short)local_1c,(int)(short)local_18);
  FUN_007c5914(auStack_3c);
  uVar2 = cocos2d::extension::CCData::getBytes(local_28);
  uVar3 = cocos2d::extension::CCData::getSize(local_28);
  FUN_007c64e8(auStack_38,param_3);
  sendDataMessageToPeer(this,uVar2,uVar3,auStack_38,1);
  FUN_007c5914(auStack_38);
  for (local_2c = 0; uVar1 = local_2c, uVar4 = cocos2d::CCArray::count(param_1), uVar1 < uVar4;
      local_2c = local_2c + 1) {
    local_14 = cocos2d::CCArray::objectAtIndex(param_1,local_2c);
    local_28 = (CCData *)NetworkMessageDispatcher::getWeaponCreateData(*(Weapon **)(this + 0x114));
    uVar2 = cocos2d::extension::CCData::getBytes(local_28);
    uVar3 = cocos2d::extension::CCData::getSize(local_28);
    FUN_007c64e8(auStack_34,param_3);
    sendDataMessageToPeer(this,uVar2,uVar3,auStack_34,1);
    FUN_007c5914(auStack_34);
  }
  local_28 = (CCData *)NetworkMessageDispatcher::getWeaponChangeData();
  uVar2 = cocos2d::extension::CCData::getBytes(local_28);
  uVar3 = cocos2d::extension::CCData::getSize(local_28);
  FUN_007c64e8(auStack_30,param_3);
  sendDataMessageToPeer(this,uVar2,uVar3,auStack_30,1);
  FUN_007c5914(auStack_30);
  FUN_007c5914(auStack_40);
  return;
}

// ---- NetworkManager::sendSpawnEnemy  @ 0x3896c0
/* NetworkManager::sendSpawnEnemy(cocos2d::CCObject*) */

void __thiscall NetworkManager::sendSpawnEnemy(NetworkManager *this,CCObject *param_1)

{
  short sVar1;
  undefined4 uVar2;
  void *pvVar3;
  int iVar4;
  NetworkMessageDispatcher *pNVar5;
  undefined1 auStack_28 [4];
  undefined1 auStack_24 [4];
  CCArray *local_20;
  CCString *local_1c;
  CCInteger *local_18;
  CCData *local_14;
  
  local_20 = (CCArray *)param_1;
  local_1c = (CCString *)cocos2d::CCArray::objectAtIndex((CCArray *)param_1,0);
  local_18 = (CCInteger *)cocos2d::CCArray::objectAtIndex(local_20,1);
  pNVar5 = *(NetworkMessageDispatcher **)(this + 0x114);
  uVar2 = cocos2d::CCString::getCString(local_1c);
  FUN_0079a3f4(auStack_28);
  FUN_007c6a60(auStack_24,uVar2,auStack_28);
  sVar1 = cocos2d::CCInteger::getValue(local_18);
  local_14 = (CCData *)NetworkMessageDispatcher::getEnemySpawnData(pNVar5,auStack_24,(int)sVar1);
  FUN_007c5914(auStack_24);
  FUN_0079a3fc(auStack_28);
  pvVar3 = (void *)cocos2d::extension::CCData::getBytes(local_14);
  iVar4 = cocos2d::extension::CCData::getSize(local_14);
  sendDataMessageToAll(this,pvVar3,iVar4,true);
  return;
}

// ---- NetworkManager::sendEnemyPositon  @ 0x38976c
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x00389888 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* NetworkManager::sendEnemyPositon(cocos2d::CCObject*) */

void NetworkManager::sendEnemyPositon(CCObject *param_1)

{
  CCFloat *pCVar1;
  CCInteger *pCVar2;
  int iVar3;
  undefined4 uVar4;
  void *pvVar5;
  CCArray *in_r1;
  undefined4 uVar6;
  undefined4 in_s1;
  undefined1 auStack_78 [2];
  undefined1 local_76;
  undefined1 local_75;
  undefined1 auStack_74 [4];
  CCArray *local_70;
  CCString *local_6c;
  float local_68;
  float local_64;
  undefined4 local_60;
  undefined4 local_5c;
  float local_58;
  float local_54;
  float local_50;
  float local_4c;
  undefined4 local_48;
  CCData *local_44;
  undefined4 local_40;
  undefined4 uStack_3c;
  undefined1 local_30 [16];
  undefined1 local_20 [16];
  
  local_70 = in_r1;
  local_6c = (CCString *)cocos2d::CCArray::objectAtIndex(in_r1,0);
  pCVar1 = (CCFloat *)cocos2d::CCArray::objectAtIndex(local_70,1);
  local_68 = (float)cocos2d::CCFloat::getValue(pCVar1);
  pCVar1 = (CCFloat *)cocos2d::CCArray::objectAtIndex(local_70,2);
  local_64 = (float)cocos2d::CCFloat::getValue(pCVar1);
  pCVar1 = (CCFloat *)cocos2d::CCArray::objectAtIndex(local_70,3);
  local_60 = cocos2d::CCFloat::getValue(pCVar1);
  pCVar1 = (CCFloat *)cocos2d::CCArray::objectAtIndex(local_70,4);
  local_5c = cocos2d::CCFloat::getValue(pCVar1);
  pCVar2 = (CCInteger *)cocos2d::CCArray::objectAtIndex(local_70,5);
  iVar3 = cocos2d::CCInteger::getValue(pCVar2);
  local_76 = iVar3 != 0;
  pCVar1 = (CCFloat *)cocos2d::CCArray::objectAtIndex(local_70,6);
  local_58 = (float)cocos2d::CCFloat::getValue(pCVar1);
  pCVar1 = (CCFloat *)cocos2d::CCArray::objectAtIndex(local_70,7);
  local_54 = (float)cocos2d::CCFloat::getValue(pCVar1);
  pCVar1 = (CCFloat *)cocos2d::CCArray::objectAtIndex(local_70,8);
  local_50 = (float)cocos2d::CCFloat::getValue(pCVar1);
  pCVar1 = (CCFloat *)cocos2d::CCArray::objectAtIndex(local_70,9);
  local_4c = (float)cocos2d::CCFloat::getValue(pCVar1);
  pCVar1 = (CCFloat *)cocos2d::CCArray::objectAtIndex(local_70,10);
  local_48 = cocos2d::CCFloat::getValue(pCVar1);
  pCVar2 = (CCInteger *)cocos2d::CCArray::objectAtIndex(local_70,0xb);
  local_75 = cocos2d::CCInteger::getValue(pCVar2);
  FUN_00386494(SUB84((double)local_68,0),in_s1,SUB84((double)local_64,0),&local_40);
  FUN_00386494(SUB84((double)local_58,0),in_s1,SUB84((double)local_54,0),local_30);
  FUN_00386494(SUB84((double)local_50,0),in_s1,SUB84((double)local_4c,0),local_20);
  uVar6 = *(undefined4 *)(param_1 + 0x114);
  uVar4 = cocos2d::CCString::getCString(local_6c);
  FUN_0079a3f4(auStack_78);
  FUN_007c6a60(auStack_74,uVar4,auStack_78);
  local_44 = (CCData *)
             NetworkMessageDispatcher::getEnemyPositionData(uVar6,auStack_74,local_40,uStack_3c);
  FUN_007c5914(auStack_74);
  FUN_0079a3fc(auStack_78);
  pvVar5 = (void *)cocos2d::extension::CCData::getBytes(local_44);
  iVar3 = cocos2d::extension::CCData::getSize(local_44);
  sendDataMessageToAll((NetworkManager *)param_1,pvVar5,iVar3,false);
  return;
}

// ---- NetworkManager::sendEnemyDestroy  @ 0x389984
/* NetworkManager::sendEnemyDestroy(cocos2d::CCObject*) */

void __thiscall NetworkManager::sendEnemyDestroy(NetworkManager *this,CCObject *param_1)

{
  undefined4 uVar1;
  void *pvVar2;
  int iVar3;
  NetworkMessageDispatcher *pNVar4;
  undefined1 auStack_20 [4];
  undefined1 auStack_1c [4];
  CCObject *local_18;
  CCData *local_14;
  
  pNVar4 = *(NetworkMessageDispatcher **)(this + 0x114);
  local_18 = param_1;
  uVar1 = cocos2d::CCString::getCString((CCString *)param_1);
  FUN_0079a3f4(auStack_20);
  FUN_007c6a60(auStack_1c,uVar1,auStack_20);
  local_14 = (CCData *)NetworkMessageDispatcher::getEnemyDestroyData(pNVar4,auStack_1c);
  FUN_007c5914(auStack_1c);
  FUN_0079a3fc(auStack_20);
  pvVar2 = (void *)cocos2d::extension::CCData::getBytes(local_14);
  iVar3 = cocos2d::extension::CCData::getSize(local_14);
  sendDataMessageToAll(this,pvVar2,iVar3,true);
  return;
}

// ---- NetworkManager::updateNetworkObjects  @ 0x389a0c
/* NetworkManager::updateNetworkObjects(float) */

void NetworkManager::updateNetworkObjects(float param_1)

{
  NetworkManager *in_r0;
  CCArray *pCVar1;
  CCArray *pCVar2;
  undefined4 in_r1;
  NetworkMessageDispatcher *this;
  
  if (*(int *)(in_r0 + 0x10c) != 0) {
    param_1 = (float)(**(code **)(**(int **)(in_r0 + 0x10c) + 0x54))
                               (*(undefined4 *)(in_r0 + 0x10c),in_r1);
  }
  RakNetDelegate::updateLoop(param_1);
  this = *(NetworkMessageDispatcher **)(in_r0 + 0x114);
  pCVar1 = (CCArray *)getMessages(in_r0);
  pCVar2 = (CCArray *)getMessageIds(in_r0);
  NetworkMessageDispatcher::updateNetworkObjects(this,pCVar1,pCVar2);
  clearMessages(in_r0);
  return;
}

// ---- NetworkManager::checkCurrentSessionIsValid  @ 0x389a70
/* NetworkManager::checkCurrentSessionIsValid() */

bool NetworkManager::checkCurrentSessionIsValid(void)

{
  time_t tVar1;
  
  tVar1 = time((time_t *)0x0);
  return tVar1 + 0xf <= m_sessionEpoch;
}

// ---- NetworkManager::getPeerPlayerKeys  @ 0x389aa8
/* NetworkManager::getPeerPlayerKeys() */

undefined4 __thiscall NetworkManager::getPeerPlayerKeys(NetworkManager *this)

{
  CCDictionary *this_00;
  undefined4 uVar1;
  
  this_00 = (CCDictionary *)getPeerPlayers(this);
  uVar1 = cocos2d::CCDictionary::allKeys(this_00);
  return uVar1;
}

// ---- NetworkManager::onlineMatchExists  @ 0x389ac8
/* NetworkManager::onlineMatchExists() */

undefined4 __thiscall NetworkManager::onlineMatchExists(NetworkManager *this)

{
  int iVar1;
  undefined4 uVar2;
  
  if (((*(int *)(this + 0x10c) == 0) ||
      (iVar1 = (**(code **)(**(int **)(this + 0x10c) + 0x14))(*(undefined4 *)(this + 0x10c)),
      iVar1 == 0)) &&
     ((*(int *)(this + 0x110) == 0 || (iVar1 = RakNetDelegate::isOnline(), iVar1 == 0)))) {
    uVar2 = 0;
  }
  else {
    uVar2 = 1;
  }
  return uVar2;
}

// ---- NetworkManager::getMatchPeersCount  @ 0x389b20
/* NetworkManager::getMatchPeersCount() */

undefined4 __thiscall NetworkManager::getMatchPeersCount(NetworkManager *this)

{
  undefined4 uVar1;
  
  uVar1 = (**(code **)(**(int **)(this + 0x10c) + 0x18))(*(undefined4 *)(this + 0x10c));
  return uVar1;
}

// ---- NetworkManager::getHostPeerID  @ 0x389b48
/* NetworkManager::getHostPeerID() */

undefined4 NetworkManager::getHostPeerID(void)

{
  undefined4 in_r0;
  int in_r1;
  
  FUN_007c64e8(in_r0,in_r1 + 0xf4);
  return in_r0;
}

// ---- NetworkManager::getPingTimeFor  @ 0x389b64
/* NetworkManager::getPingTimeFor(std::string) */

undefined4 __thiscall NetworkManager::getPingTimeFor(NetworkManager *this,undefined4 param_2)

{
  undefined4 uVar1;
  NetworkMessageDispatcher *pNVar2;
  undefined1 auStack_14 [8];
  
  pNVar2 = *(NetworkMessageDispatcher **)(this + 0x114);
  FUN_007c64e8(auStack_14,param_2);
  uVar1 = NetworkMessageDispatcher::getPingTimeFor(pNVar2,auStack_14);
  FUN_007c5914(auStack_14);
  return uVar1;
}

// ---- NetworkManager::updateSession  @ 0x389bac
/* NetworkManager::updateSession() */

void __thiscall NetworkManager::updateSession(NetworkManager *this)

{
  bool bVar1;
  undefined1 auStack_10 [4];
  string asStack_c [4];
  
  getSessionToJoin();
  bVar1 = std::operator!=(asStack_c,"");
  FUN_007c5914(asStack_c);
  if (bVar1) {
    getSessionToJoin();
    joinSession(this,asStack_c);
    FUN_007c5914(asStack_c);
    FUN_0079a3f4(auStack_10);
    FUN_007c6a60(asStack_c,&DAT_007de6f0,auStack_10);
    setSessionToJoin(this,asStack_c);
    FUN_007c5914(asStack_c);
    FUN_0079a3fc(auStack_10);
  }
  return;
}

// ---- NetworkManager::getSessionToJoin  @ 0x389c68
/* NetworkManager::getSessionToJoin() */

undefined4 NetworkManager::getSessionToJoin(void)

{
  undefined4 in_r0;
  int in_r1;
  
  FUN_007c64e8(in_r0,in_r1 + 0x128);
  return in_r0;
}

// ---- NetworkManager::setSessionToJoin  @ 0x389c88
/* NetworkManager::setSessionToJoin(std::string) */

void __thiscall NetworkManager::setSessionToJoin(NetworkManager *this,undefined4 param_2)

{
  thunk_FUN_007c653c(this + 0x128,param_2);
  return;
}

// ---- NetworkManager::endMatch  @ 0x389ca4
/* NetworkManager::endMatch() */

void __thiscall NetworkManager::endMatch(NetworkManager *this)

{
  int iVar1;
  
  iVar1 = isUsingHostedServer(this);
  if (iVar1 != 0) {
    RakNetDelegate::shutdown();
  }
  if (*(int *)(this + 0x10c) != 0) {
    (**(code **)(**(int **)(this + 0x10c) + 0x4c))(*(undefined4 *)(this + 0x10c));
  }
  clearMessages(this);
  removeAllPlayers(this);
  return;
}

// ---- NetworkManager::setMaxPlayers  @ 0x389cf4
/* NetworkManager::setMaxPlayers(int) */

void __thiscall NetworkManager::setMaxPlayers(NetworkManager *this,int param_1)

{
  *(int *)(this + 0x120) = param_1;
  return;
}

// ---- NetworkManager::getMaxPlayers  @ 0x389d08
/* NetworkManager::getMaxPlayers() */

undefined4 __thiscall NetworkManager::getMaxPlayers(NetworkManager *this)

{
  return *(undefined4 *)(this + 0x120);
}

// ---- NetworkManager::getOnlinePlayers  @ 0x389d18
/* NetworkManager::getOnlinePlayers() */

undefined4 __thiscall NetworkManager::getOnlinePlayers(NetworkManager *this)

{
  undefined4 uVar1;
  
  if (this[0x11c] != (NetworkManager)0x1) {
    uVar1 = (**(code **)(**(int **)(this + 0x10c) + 0x24))(*(undefined4 *)(this + 0x10c));
    *(undefined4 *)(this + 0xfc) = uVar1;
  }
  return *(undefined4 *)(this + 0xfc);
}

// ---- NetworkManager::setOnlineActivity  @ 0x389d5c
/* NetworkManager::setOnlineActivity(int) */

void __thiscall NetworkManager::setOnlineActivity(NetworkManager *this,int param_1)

{
  *(int *)(this + 0xfc) = param_1;
  return;
}

// ---- NetworkManager::setInGame  @ 0x389d70
/* NetworkManager::setInGame(bool) */

void __thiscall NetworkManager::setInGame(NetworkManager *this,bool param_1)

{
  this[0x11e] = (NetworkManager)param_1;
  return;
}

// ---- NetworkManager::isInGame  @ 0x389d88
/* NetworkManager::isInGame() */

NetworkManager __thiscall NetworkManager::isInGame(NetworkManager *this)

{
  return this[0x11e];
}

// ---- NetworkManager::refreshPlayersList  @ 0x389d98
/* NetworkManager::refreshPlayersList() */

void __thiscall NetworkManager::refreshPlayersList(NetworkManager *this)

{
  if ((this[0x11c] != (NetworkManager)0x1) && (*(int *)(this + 0x10c) != 0)) {
    (**(code **)(**(int **)(this + 0x10c) + 0x28))(*(undefined4 *)(this + 0x10c));
  }
  return;
}

// ---- NetworkManager::getLeaderPeerID  @ 0x389dd4
/* NetworkManager::getLeaderPeerID() */

undefined4 NetworkManager::getLeaderPeerID(void)

{
  undefined4 in_r0;
  int in_r1;
  
  FUN_007c64e8(in_r0,in_r1 + 0xf8);
  return in_r0;
}

// ---- NetworkManager::setHostPeerID  @ 0x389df0
/* NetworkManager::setHostPeerID(std::string) */

void __thiscall NetworkManager::setHostPeerID(NetworkManager *this,undefined4 param_2)

{
  int iVar1;
  char *__nptr;
  RakNetDelegate *this_00;
  undefined1 auStack_c [4];
  
  thunk_FUN_007c653c(this + 0xf4,param_2);
  iVar1 = RakNetDelegate::isOnline();
  if (iVar1 != 0) {
    this_00 = *(RakNetDelegate **)(this + 0x110);
    __nptr = (char *)FUN_007c5300(this + 0xf4);
    iVar1 = atoi(__nptr);
    RakNetDelegate::setHostPeerID(this_00,iVar1);
    iVar1 = cocos2d::CCDictionary::count(*(CCDictionary **)(this + 0xe8));
    if (iVar1 == 0) {
      FUN_007c64e8(auStack_c,this + 0xf4);
      setLeaderPeerID(this,auStack_c);
      FUN_007c5914(auStack_c);
    }
  }
  return;
}

// ---- NetworkManager::isHostLeader  @ 0x389e88
/* NetworkManager::isHostLeader() */

undefined4 __thiscall NetworkManager::isHostLeader(NetworkManager *this)

{
  int iVar1;
  undefined4 uVar2;
  
  iVar1 = FUN_007c5724(this + 0xf8,&DAT_007de6f0);
  if ((iVar1 == 0) || (iVar1 = FUN_007c567c(this + 0xf8,this + 0xf4), iVar1 == 0)) {
    uVar2 = 1;
  }
  else {
    uVar2 = 0;
  }
  return uVar2;
}

// ---- NetworkManager::authenticateLocalPlayer  @ 0x389ed0
/* NetworkManager::authenticateLocalPlayer() */

void __thiscall NetworkManager::authenticateLocalPlayer(NetworkManager *this)

{
  if ((this[0x11c] != (NetworkManager)0x1) && (*(int *)(this + 0x10c) != 0)) {
    (**(code **)(**(int **)(this + 0x10c) + 4))(*(undefined4 *)(this + 0x10c));
  }
  return;
}

// ---- NetworkManager::unauthenticateLocalPlayer  @ 0x389f0c
/* NetworkManager::unauthenticateLocalPlayer() */

void __thiscall NetworkManager::unauthenticateLocalPlayer(NetworkManager *this)

{
  if ((this[0x11c] != (NetworkManager)0x1) && (*(int *)(this + 0x10c) != 0)) {
    (**(code **)(**(int **)(this + 0x10c) + 8))(*(undefined4 *)(this + 0x10c));
  }
  return;
}

// ---- NetworkManager::findSessions  @ 0x389f48
/* NetworkManager::findSessions() */

void __thiscall NetworkManager::findSessions(NetworkManager *this)

{
  if ((this[0x11c] != (NetworkManager)0x1) && (*(int *)(this + 0x10c) != 0)) {
    (**(code **)(**(int **)(this + 0x10c) + 0x30))(*(undefined4 *)(this + 0x10c));
  }
  return;
}

// ---- NetworkManager::hostSession  @ 0x389f84
/* NetworkManager::hostSession(std::string) */

void __thiscall NetworkManager::hostSession(NetworkManager *this,undefined4 param_2)

{
  code *pcVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined1 auStack_14 [4];
  
  if ((this[0x11c] != (NetworkManager)0x1) && (*(int *)(this + 0x10c) != 0)) {
    pcVar1 = *(code **)(**(int **)(this + 0x10c) + 0x34);
    uVar3 = *(undefined4 *)(this + 0x10c);
    uVar2 = *(undefined4 *)(this + 0x120);
    FUN_007c64e8(auStack_14,param_2);
    (*pcVar1)(uVar3,uVar2,auStack_14);
    FUN_007c5914(auStack_14);
  }
  return;
}

// ---- NetworkManager::cancelSearch  @ 0x389fec
/* NetworkManager::cancelSearch() */

void __thiscall NetworkManager::cancelSearch(NetworkManager *this)

{
  if ((this[0x11c] != (NetworkManager)0x1) && (*(int *)(this + 0x10c) != 0)) {
    (**(code **)(**(int **)(this + 0x10c) + 0x48))(*(undefined4 *)(this + 0x10c));
  }
  return;
}

// ---- NetworkManager::joinSession  @ 0x38a028
/* NetworkManager::joinSession(std::string) */

void __thiscall NetworkManager::joinSession(NetworkManager *this,undefined4 param_2)

{
  code *pcVar1;
  undefined4 uVar2;
  undefined1 auStack_14 [8];
  
  pcVar1 = *(code **)(**(int **)(this + 0x10c) + 0x38);
  uVar2 = *(undefined4 *)(this + 0x10c);
  FUN_007c64e8(auStack_14,param_2);
  (*pcVar1)(uVar2,auStack_14);
  FUN_007c5914(auStack_14);
  return;
}

// ---- NetworkManager::addPlayersToMatch  @ 0x38a070
/* NetworkManager::addPlayersToMatch(bool, int) */

void __thiscall NetworkManager::addPlayersToMatch(NetworkManager *this,bool param_1,int param_2)

{
  if ((this[0x11c] != (NetworkManager)0x1) && (*(int *)(this + 0x10c) != 0)) {
    (**(code **)(**(int **)(this + 0x10c) + 0x3c))
              (*(undefined4 *)(this + 0x10c),param_1,*(undefined4 *)(this + 0x120),param_2);
  }
  return;
}

// ---- NetworkManager::isSearching  @ 0x38a0c4
/* NetworkManager::isSearching() */

undefined4 __thiscall NetworkManager::isSearching(NetworkManager *this)

{
  bool bVar1;
  int iVar2;
  undefined4 uVar3;
  
  if (this[0x11c] == (NetworkManager)0x1) {
    uVar3 = 0;
  }
  else {
    if ((*(int *)(this + 0x10c) == 0) ||
       (iVar2 = (**(code **)(**(int **)(this + 0x10c) + 0x40))(*(undefined4 *)(this + 0x10c)),
       iVar2 == 0)) {
      bVar1 = false;
    }
    else {
      bVar1 = true;
    }
    if (bVar1) {
      uVar3 = 1;
    }
    else {
      uVar3 = 0;
    }
  }
  return uVar3;
}

// ---- NetworkManager::canSearch  @ 0x38a11c
/* NetworkManager::canSearch() */

undefined4 __thiscall NetworkManager::canSearch(NetworkManager *this)

{
  bool bVar1;
  int iVar2;
  undefined4 uVar3;
  
  if (this[0x11c] == (NetworkManager)0x1) {
    uVar3 = 0;
  }
  else {
    if ((*(int *)(this + 0x10c) == 0) ||
       (iVar2 = (**(code **)(**(int **)(this + 0x10c) + 0x44))(*(undefined4 *)(this + 0x10c)),
       iVar2 == 0)) {
      bVar1 = false;
    }
    else {
      bVar1 = true;
    }
    if (bVar1) {
      uVar3 = 1;
    }
    else {
      uVar3 = 0;
    }
  }
  return uVar3;
}

// ---- NetworkManager::addSession  @ 0x38a174
/* NetworkManager::addSession(cocos2d::CCArray*) */

void __thiscall NetworkManager::addSession(NetworkManager *this,CCArray *param_1)

{
  CCDictionary *this_00;
  CCString *pCVar1;
  undefined4 uVar2;
  int iVar3;
  CCObject *pCVar4;
  undefined1 auStack_1c [4];
  string asStack_18 [4];
  string asStack_14 [8];
  
  pCVar1 = (CCString *)cocos2d::CCArray::objectAtIndex(param_1,0);
  uVar2 = cocos2d::CCString::getCString(pCVar1);
  FUN_0079a3f4(asStack_14);
  FUN_007c6a60(asStack_18,uVar2,asStack_14,asStack_14,param_1,this);
  FUN_0079a3fc(asStack_14);
  pCVar1 = (CCString *)cocos2d::CCArray::objectAtIndex(param_1,1);
  uVar2 = cocos2d::CCString::getCString(pCVar1);
  FUN_0079a3f4(auStack_1c);
  FUN_007c6a60(asStack_14,uVar2,auStack_1c);
  FUN_0079a3fc(auStack_1c);
  iVar3 = cocos2d::CCDictionary::objectForKey(availableSessions,asStack_18);
  this_00 = availableSessions;
  if (iVar3 == 0) {
    pCVar4 = (CCObject *)cocos2d::CCString::create(asStack_14);
    cocos2d::CCDictionary::setObject(this_00,pCVar4,asStack_18);
  }
  FUN_007c5914(asStack_14);
  FUN_007c5914(asStack_18);
  return;
}

// ---- NetworkManager::removeSession  @ 0x38a268
/* NetworkManager::removeSession(cocos2d::CCString*) */

void __thiscall NetworkManager::removeSession(NetworkManager *this,CCString *param_1)

{
  CCDictionary *this_00;
  undefined4 uVar1;
  undefined1 auStack_18 [4];
  string asStack_14 [8];
  
  this_00 = availableSessions;
  uVar1 = cocos2d::CCString::getCString(param_1);
  FUN_0079a3f4(auStack_18);
  FUN_007c6a60(asStack_14,uVar1,auStack_18,auStack_18,param_1,this);
  cocos2d::CCDictionary::removeObjectForKey(this_00,asStack_14);
  FUN_007c5914(asStack_14);
  FUN_0079a3fc(auStack_18);
  return;
}

// ---- NetworkManager::removeAllSessions  @ 0x38a2d8
/* NetworkManager::removeAllSessions() */

void NetworkManager::removeAllSessions(void)

{
  int iVar1;
  
  iVar1 = cocos2d::CCDictionary::count(availableSessions);
  if (iVar1 != 0) {
    cocos2d::CCDictionary::removeAllObjects(availableSessions);
  }
  return;
}

// ---- NetworkManager::getAvailableSessions  @ 0x38a318
/* NetworkManager::getAvailableSessions() */

undefined4 NetworkManager::getAvailableSessions(void)

{
  return availableSessions;
}

// ---- NetworkManager::addPlayer  @ 0x38a334
/* NetworkManager::addPlayer(std::string, std::string) */

void NetworkManager::addPlayer(NetworkManager *param_1,undefined4 param_2)

{
  bool bVar1;
  int iVar2;
  undefined1 auStack_c [8];
  
  if (param_1[0x11c] != (NetworkManager)0x1) {
    if ((*(int *)(param_1 + 0x10c) == 0) ||
       (iVar2 = (**(code **)(**(int **)(param_1 + 0x10c) + 0xc))(*(undefined4 *)(param_1 + 0x10c)),
       iVar2 == 0)) {
      bVar1 = false;
    }
    else {
      bVar1 = true;
    }
    if (bVar1) {
      (**(code **)(**(int **)(param_1 + 0x10c) + 0x10))(auStack_c,*(undefined4 *)(param_1 + 0x10c));
      setHostPeerID(param_1,auStack_c);
      FUN_007c5914(auStack_c);
    }
  }
  FUN_007c64e8(auStack_c,param_2);
  addNewPeerID(param_1,auStack_c);
  FUN_007c5914(auStack_c);
  return;
}

// ---- NetworkManager::removePlayer  @ 0x38a3e8
/* NetworkManager::removePlayer(std::string) */

void __thiscall NetworkManager::removePlayer(NetworkManager *this,undefined4 param_2)

{
  char *__nptr;
  int iVar1;
  RakNetDelegate *this_00;
  undefined1 auStack_c [4];
  
  if (this[0x11c] != (NetworkManager)0x0) {
    this_00 = *(RakNetDelegate **)(this + 0x110);
    __nptr = (char *)FUN_007c5300(param_2);
    iVar1 = atoi(__nptr);
    RakNetDelegate::removePeer(this_00,iVar1);
  }
  FUN_007c64e8(auStack_c,param_2);
  removePeerID(this,auStack_c);
  FUN_007c5914(auStack_c);
  return;
}

// ---- NetworkManager::removeAllPlayers  @ 0x38a448
/* NetworkManager::removeAllPlayers() */

void __thiscall NetworkManager::removeAllPlayers(NetworkManager *this)

{
  int iVar1;
  
  iVar1 = cocos2d::CCDictionary::count(*(CCDictionary **)(this + 0xe8));
  if (iVar1 != 0) {
    cocos2d::CCDictionary::removeAllObjects(*(CCDictionary **)(this + 0xe8));
  }
  return;
}

// ---- NetworkManager::getPlayerTimeout  @ 0x38a47c
/* NetworkManager::getPlayerTimeout() */

int __thiscall NetworkManager::getPlayerTimeout(NetworkManager *this)

{
  float fVar1;
  
  fVar1 = (float)(**(code **)(**(int **)(this + 0x10c) + 0x2c))(*(undefined4 *)(this + 0x10c));
  return (int)fVar1;
}

// ---- NetworkManager::connectToServer  @ 0x38a4ac
/* NetworkManager::connectToServer(bool) */

void __thiscall NetworkManager::connectToServer(NetworkManager *this,bool param_1)

{
  RakNetDelegate::connectToServer(*(RakNetDelegate **)(this + 0x110),param_1);
  return;
}

// ---- NetworkManager::requestNumPlayers  @ 0x38a4d0
/* NetworkManager::requestNumPlayers() */

void __thiscall NetworkManager::requestNumPlayers(NetworkManager *this)

{
  if (this[0x11c] != (NetworkManager)0x0) {
    RakNetDelegate::sendRequestNumPlayers(*(RakNetDelegate **)(this + 0x110));
  }
  return;
}

// ---- NetworkManager::rak_detectNATType  @ 0x38a4f4
/* NetworkManager::rak_detectNATType() */

void __thiscall NetworkManager::rak_detectNATType(NetworkManager *this)

{
  RakNetDelegate::detectNATType(*(RakNetDelegate **)(this + 0x110));
  return;
}

// ---- NetworkManager::isConnected  @ 0x38a50c
/* NetworkManager::isConnected() */

undefined4 __thiscall NetworkManager::isConnected(NetworkManager *this)

{
  undefined4 uVar1;
  
  if (this[0x11c] == (NetworkManager)0x0) {
    uVar1 = (**(code **)(**(int **)(this + 0x10c) + 0x14))(*(undefined4 *)(this + 0x10c));
  }
  else {
    uVar1 = RakNetDelegate::isOnline();
  }
  return uVar1;
}

// ---- NetworkManager::connectToPeer  @ 0x38a54c
/* NetworkManager::connectToPeer(std::string, std::string, int, bool) */

void NetworkManager::connectToPeer(int param_1,undefined4 param_2,undefined4 param_3,bool param_4)

{
  char *pcVar1;
  int iVar2;
  char *pcVar3;
  
  pcVar3 = *(char **)(param_1 + 0x110);
  pcVar1 = (char *)FUN_007c5300(param_2);
  iVar2 = FUN_007c5300(param_3);
  RakNetDelegate::connectToPeer(pcVar3,pcVar1,iVar2,param_4);
  return;
}

// ---- NetworkManager::updateLeader  @ 0x38a584
/* NetworkManager::updateLeader() */

void __thiscall NetworkManager::updateLeader(NetworkManager *this)

{
  undefined1 auStack_c [8];
  
  getSmallestPeerID();
  setLeaderPeerID(this,auStack_c);
  FUN_007c5914(auStack_c);
  return;
}

// ---- NetworkManager::nextServerIndex  @ 0x38a5bc
/* NetworkManager::nextServerIndex() */

void __thiscall NetworkManager::nextServerIndex(NetworkManager *this)

{
  int iVar1;
  
  iVar1 = isUsingHostedServer(this);
  if (iVar1 != 0) {
    RakNetDelegate::nextServerIndex(*(RakNetDelegate **)(this + 0x110));
  }
  return;
}

// ---- NetworkManager::addServerIP  @ 0x38a604
/* NetworkManager::addServerIP(std::string, std::string) */

void __thiscall
NetworkManager::addServerIP(NetworkManager *this,undefined4 param_2,undefined4 param_3)

{
  int iVar1;
  undefined4 uVar2;
  RakNetDelegate *pRVar3;
  undefined1 auStack_20 [4];
  undefined1 auStack_1c [4];
  ServerListObject aSStack_18 [4];
  undefined1 auStack_14 [8];
  
  iVar1 = isUsingHostedServer(this);
  if (iVar1 != 0) {
    pRVar3 = *(RakNetDelegate **)(this + 0x110);
    uVar2 = FUN_007c5300(param_2);
    FUN_0079a3f4(auStack_20);
    FUN_007c6a60(aSStack_18,uVar2,auStack_20);
    uVar2 = FUN_007c5300(param_3);
    FUN_0079a3f4(auStack_1c);
    FUN_007c6a60(auStack_14,uVar2,auStack_1c);
    RakNetDelegate::addServerIP(pRVar3,aSStack_18);
    ServerListObject::~ServerListObject(aSStack_18);
    FUN_0079a3fc(auStack_1c);
    FUN_0079a3fc(auStack_20);
  }
  return;
}

// ---- NetworkManager::sendDataToServer  @ 0x38a6a8
/* NetworkManager::sendDataToServer(void const*, int, bool) */

void NetworkManager::sendDataToServer(void *param_1,int param_2,bool param_3)

{
  RakNetDelegate::sendDataToServer
            (*(RakNetDelegate **)((int)param_1 + 0x110),(void *)param_2,2,true);
  return;
}

// ---- NetworkManager::setUseHostedServer  @ 0x38a6d0
/* NetworkManager::setUseHostedServer(bool) */

void __thiscall NetworkManager::setUseHostedServer(NetworkManager *this,bool param_1)

{
  this[0x11c] = (NetworkManager)param_1;
  return;
}

// ---- NetworkManager::setConnectionType  @ 0x38a6e8
/* NetworkManager::setConnectionType(ConnectionType) */

void __thiscall NetworkManager::setConnectionType(undefined4 param_1,undefined4 param_2)

{
  _currentConnectionType = param_2;
  return;
}

// ---- NetworkManager::setConnectionType  @ 0x38a708
/* NetworkManager::setConnectionType() */

undefined4 NetworkManager::setConnectionType(void)

{
  return _currentConnectionType;
}

// ---- NetworkManager::isUsingHostedServer  @ 0x38a724
/* NetworkManager::isUsingHostedServer() */

NetworkManager __thiscall NetworkManager::isUsingHostedServer(NetworkManager *this)

{
  return this[0x11c];
}

// ---- NetworkManager::getWasInvited  @ 0x38a734
/* NetworkManager::getWasInvited() */

NetworkManager __thiscall NetworkManager::getWasInvited(NetworkManager *this)

{
  return this[0x11d];
}

// ---- NetworkManager::setWasInvited  @ 0x38a744
/* NetworkManager::setWasInvited(bool) */

void __thiscall NetworkManager::setWasInvited(NetworkManager *this,bool param_1)

{
  this[0x11d] = (NetworkManager)param_1;
  return;
}

// ---- NetworkManager::setInviteHandled  @ 0x38a75c
/* NetworkManager::setInviteHandled(bool) */

void __thiscall NetworkManager::setInviteHandled(NetworkManager *this,bool param_1)

{
  this[0x124] = (NetworkManager)param_1;
  return;
}

// ---- NetworkManager::wasInviteHandled  @ 0x38a774
/* NetworkManager::wasInviteHandled() */

NetworkManager __thiscall NetworkManager::wasInviteHandled(NetworkManager *this)

{
  return this[0x124];
}

// ---- NetworkManager::updateServerConfig  @ 0x38a784
/* NetworkManager::updateServerConfig() */

void __thiscall NetworkManager::updateServerConfig(NetworkManager *this)

{
  undefined4 uVar1;
  undefined4 uVar2;
  CCHttpRequest *this_00;
  char *pcVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  CCString *this_01;
  char *__s;
  size_t sVar6;
  CCHttpClient *pCVar7;
  vector<std::string,std::allocator<std::string>> avStack_30 [12];
  ApplicationInterface aAStack_24 [16];
  
  this_00 = operator_new(0x48);
  cocos2d::extension::CCHttpRequest::CCHttpRequest(this_00);
  createAppsomniacsUrl((char *)aAStack_24);
  pcVar3 = (char *)FUN_007c5300(aAStack_24);
  cocos2d::extension::CCHttpRequest::setUrl(this_00,pcVar3);
  FUN_007c5914(aAStack_24);
  cocos2d::extension::CCHttpRequest::setRequestType(this_00,1);
  cocos2d::extension::CCHttpRequest::setResponseCallback
            ((CCObject *)this_00,(_func_void_CCHttpClient_ptr_CCHttpResponse_ptr *)(this + 4));
  uVar4 = ApplicationInterface::getPlatformId();
  uVar2 = m_currentLastUpdate._4_4_;
  uVar1 = (undefined4)m_currentLastUpdate;
  ApplicationInterface::getAppVersion(aAStack_24);
  uVar5 = FUN_007c5300(aAStack_24);
  this_01 = (CCString *)
            cocos2d::CCString::createWithFormat
                      ("{\"platformId\":%d,\"lastUpdated\":%lld,\"appVersion\":\"%s\"}",uVar4,uVar1,
                       uVar2,uVar5);
  FUN_007c5914(aAStack_24);
  pcVar3 = (char *)cocos2d::CCString::getCString(this_01);
  __s = (char *)cocos2d::CCString::getCString(this_01);
  sVar6 = strlen(__s);
  cocos2d::extension::CCHttpRequest::setRequestData(this_00,pcVar3,sVar6);
  FUN_007c64e8(aAStack_24,&m_sessionToken);
  setSessionHttpHeader(aAStack_24);
  FUN_007c5914(aAStack_24);
  getAppsomniacsHttpHeader();
  std::vector<std::string,std::allocator<std::string>>::vector
            ((vector<std::string,std::allocator<std::string>> *)aAStack_24,avStack_30);
  cocos2d::extension::CCHttpRequest::setHeaders(this_00,aAStack_24);
  std::vector<std::string,std::allocator<std::string>>::~vector
            ((vector<std::string,std::allocator<std::string>> *)aAStack_24);
  pCVar7 = (CCHttpClient *)cocos2d::extension::CCHttpClient::getInstance();
  cocos2d::extension::CCHttpClient::setTimeoutForRead(pCVar7,10);
  pCVar7 = (CCHttpClient *)cocos2d::extension::CCHttpClient::getInstance();
  cocos2d::extension::CCHttpClient::send(pCVar7,this_00);
  cocos2d::CCObject::release((CCObject *)this_00);
  std::vector<std::string,std::allocator<std::string>>::~vector(avStack_30);
  return;
}

// ---- NetworkManager::onServerConfigRequestCompleted  @ 0x38a948
/* NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*,
   cocos2d::extension::CCHttpResponse*) */

void __thiscall
NetworkManager::onServerConfigRequestCompleted
          (NetworkManager *this,CCHttpClient *param_1,CCHttpResponse *param_2)

{
  bool bVar1;
  char cVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  char *pcVar5;
  int iVar6;
  GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
  *pGVar7;
  CCObject *pCVar8;
  uint uVar9;
  undefined1 auStack_7c [4];
  undefined1 auStack_78 [4];
  undefined1 auStack_74 [4];
  string asStack_70 [4];
  string asStack_6c [4];
  string asStack_68 [4];
  undefined1 auStack_64 [4];
  undefined1 auStack_60 [4];
  uint local_5c;
  int local_58;
  vector<char,std::allocator<char>> *local_54;
  GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
  *local_50;
  GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
  *local_4c;
  ServerListObject aSStack_48 [4];
  undefined1 auStack_44 [4];
  GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
  aGStack_40 [48];
  
  local_58 = cocos2d::extension::CCHttpResponse::getResponseCode(param_2);
  local_54 = (vector<char,std::allocator<char>> *)
             cocos2d::extension::CCHttpResponse::getResponseData(param_2);
  uVar3 = std::vector<char,std::allocator<char>>::begin(local_54);
  uVar4 = std::vector<char,std::allocator<char>>::end(local_54);
  FUN_0079a3f4(aGStack_40);
  std::string::string<__gnu_cxx::__normal_iterator<char*,std::vector<char,std::allocator<char>>>>
            (asStack_70,uVar3,uVar4,aGStack_40);
  FUN_0079a3fc(aGStack_40);
  if ((local_58 < 200) || (299 < local_58)) {
    ZRR_AD_SHOWN = 1;
    CC_AD_SHOWN = 1;
    DA_AD_SHOWN = 1;
    goto LAB_0038ae3c;
  }
  if (local_58 == 0xcc) goto LAB_0038ae3c;
  rapidjson::
  GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
  GenericDocument(aGStack_40,(MemoryPoolAllocator *)0x0,0x400);
  pcVar5 = (char *)FUN_007c5300(asStack_70);
  rapidjson::
  GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
  Parse<0u>(aGStack_40,pcVar5);
  iVar6 = rapidjson::
          GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
          ::IsObject((GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                      *)aGStack_40);
  if (iVar6 != 0) {
    iVar6 = rapidjson::
            GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
            ::HasMember((GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                         *)aGStack_40,"lu");
    if (iVar6 == 0) {
LAB_0038aa20:
      bVar1 = false;
    }
    else {
      pGVar7 = (GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                *)rapidjson::
                  GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                  ::operator[]((GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                                *)aGStack_40,"lu");
      iVar6 = rapidjson::
              GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
              ::IsNumber(pGVar7);
      if (iVar6 == 0) goto LAB_0038aa20;
      bVar1 = true;
    }
    if (bVar1) {
      pGVar7 = (GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                *)rapidjson::
                  GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                  ::operator[]((GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                                *)aGStack_40,"lu");
      m_currentLastUpdate =
           rapidjson::
           GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
           ::GetInt64(pGVar7);
    }
    iVar6 = rapidjson::
            GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
            ::HasMember((GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                         *)aGStack_40,"ne");
    if (iVar6 == 0) {
LAB_0038aa84:
      bVar1 = false;
    }
    else {
      pGVar7 = (GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                *)rapidjson::
                  GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                  ::operator[]((GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                                *)aGStack_40,"ne");
      iVar6 = rapidjson::
              GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
              ::IsNumber(pGVar7);
      if (iVar6 == 0) goto LAB_0038aa84;
      bVar1 = true;
    }
    if (bVar1) {
      pGVar7 = (GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                *)rapidjson::
                  GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                  ::operator[]((GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                                *)aGStack_40,"ne");
      m_currentNewsEpoch =
           rapidjson::
           GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
           ::GetInt(pGVar7);
    }
    iVar6 = rapidjson::
            GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
            ::HasMember((GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                         *)aGStack_40,"qp");
    if (iVar6 == 0) {
LAB_0038aae6:
      bVar1 = false;
    }
    else {
      pGVar7 = (GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                *)rapidjson::
                  GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                  ::operator[]((GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                                *)aGStack_40,"qp");
      iVar6 = rapidjson::
              GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
              ::IsNumber(pGVar7);
      if (iVar6 == 0) goto LAB_0038aae6;
      bVar1 = true;
    }
    if (bVar1) {
      pGVar7 = (GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                *)rapidjson::
                  GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                  ::operator[]((GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                                *)aGStack_40,"qp");
      m_currentQuickplayPopulation =
           rapidjson::
           GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
           ::GetInt(pGVar7);
    }
    iVar6 = rapidjson::
            GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
            ::HasMember((GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                         *)aGStack_40,"sx");
    if (iVar6 == 0) {
LAB_0038ab44:
      bVar1 = false;
    }
    else {
      pGVar7 = (GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                *)rapidjson::
                  GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                  ::operator[]((GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                                *)aGStack_40,"sx");
      iVar6 = rapidjson::
              GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
              ::IsNumber(pGVar7);
      if (iVar6 == 0) goto LAB_0038ab44;
      bVar1 = true;
    }
    if (bVar1) {
      pGVar7 = (GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                *)rapidjson::
                  GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                  ::operator[]((GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                                *)aGStack_40,"sx");
      iVar6 = rapidjson::
              GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
              ::GetInt(pGVar7);
      m_currentShowXPromo = iVar6 != 0;
    }
    iVar6 = rapidjson::
            GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
            ::HasMember((GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                         *)aGStack_40,"vw");
    if (iVar6 == 0) {
LAB_0038abb6:
      bVar1 = false;
    }
    else {
      pGVar7 = (GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                *)rapidjson::
                  GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                  ::operator[]((GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                                *)aGStack_40,"vw");
      iVar6 = rapidjson::
              GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
              ::IsNumber(pGVar7);
      if ((iVar6 == 0) || (m_currentVersionAlerted == '\x01')) goto LAB_0038abb6;
      bVar1 = true;
    }
    if (bVar1) {
      pGVar7 = (GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                *)rapidjson::
                  GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                  ::operator[]((GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                                *)aGStack_40,"vw");
      iVar6 = rapidjson::
              GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
              ::GetInt(pGVar7);
      if (iVar6 == 1) {
        m_currentVersionAlerted = '\x01';
        FUN_0079a3f4(auStack_74);
        FUN_007c6a60(auStack_64,"App Update Required",auStack_74);
        FUN_0079a3f4(aSStack_48);
        FUN_007c6a60(auStack_60,
                     "Please update to the latest version of the app to continue playing online.",
                     aSStack_48);
        FUN_0079a3f4(auStack_7c);
        FUN_007c6a60(asStack_6c,"LATER",auStack_7c);
        pCVar8 = (CCObject *)cocos2d::CCString::create(asStack_6c);
        FUN_0079a3f4(auStack_78);
        FUN_007c6a60(asStack_68,"UPDATE",auStack_78);
        uVar3 = cocos2d::CCString::create(asStack_68);
        uVar3 = cocos2d::CCArray::create(pCVar8,uVar3,0);
        AMessageBox::showAlert(0x38bb09,auStack_64,auStack_60,uVar3,0,0);
        FUN_007c5914(asStack_68);
        FUN_0079a3fc(auStack_78);
        FUN_007c5914(asStack_6c);
        FUN_0079a3fc(auStack_7c);
        FUN_007c5914(auStack_60);
        FUN_0079a3fc(aSStack_48);
        FUN_007c5914(auStack_64);
        FUN_0079a3fc(auStack_74);
      }
    }
    iVar6 = rapidjson::
            GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
            ::HasMember((GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                         *)aGStack_40,"sl");
    if (iVar6 == 0) {
LAB_0038ad1e:
      bVar1 = false;
    }
    else {
      pGVar7 = (GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                *)rapidjson::
                  GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                  ::operator[]((GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                                *)aGStack_40,"sl");
      cVar2 = rapidjson::
              GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
              ::IsNull(pGVar7);
      if (cVar2 == '\x01') goto LAB_0038ad1e;
      pGVar7 = (GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                *)rapidjson::
                  GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                  ::operator[]((GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                                *)aGStack_40,"sl");
      iVar6 = rapidjson::
              GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
              ::IsArray(pGVar7);
      if (iVar6 == 0) goto LAB_0038ad1e;
      bVar1 = true;
    }
    if (bVar1) {
      local_50 = (GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                  *)rapidjson::
                    GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                    ::operator[]((GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                                  *)aGStack_40,"sl");
      std::vector<ServerListObject,std::allocator<ServerListObject>>::clear
                ((vector<ServerListObject,std::allocator<ServerListObject>> *)m_currentServerList);
      local_5c = 0;
      while( true ) {
        uVar9 = rapidjson::
                GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                ::Size(local_50);
        if (uVar9 <= local_5c) break;
        local_4c = (GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                    *)rapidjson::
                      GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                      ::operator[](local_50,local_5c);
        pGVar7 = (GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                  *)rapidjson::
                    GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                    ::operator[](local_4c,"ip");
        uVar3 = rapidjson::
                GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                ::GetString(pGVar7);
        FUN_0079a3f4(auStack_64);
        FUN_007c6a60(aSStack_48,uVar3,auStack_64);
        pGVar7 = (GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                  *)rapidjson::
                    GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                    ::operator[](local_4c,"sn");
        uVar3 = rapidjson::
                GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                ::GetString(pGVar7);
        FUN_0079a3f4(auStack_60);
        FUN_007c6a60(auStack_44,uVar3,auStack_60);
        std::vector<ServerListObject,std::allocator<ServerListObject>>::push_back
                  ((vector<ServerListObject,std::allocator<ServerListObject>> *)m_currentServerList,
                   aSStack_48);
        ServerListObject::~ServerListObject(aSStack_48);
        FUN_0079a3fc(auStack_60);
        FUN_0079a3fc(auStack_64);
        local_5c = local_5c + 1;
      }
    }
  }
  if (m_currentShowXPromo != '\x01') {
    ZRR_AD_SHOWN = 1;
    CC_AD_SHOWN = 1;
    DA_AD_SHOWN = 1;
  }
  rapidjson::
  GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
  ~GenericDocument(aGStack_40);
LAB_0038ae3c:
  FUN_007c5914(asStack_70);
  return;
}

// ---- NetworkManager::getShowXPromo  @ 0x38af70
/* NetworkManager::getShowXPromo() */

undefined1 NetworkManager::getShowXPromo(void)

{
  return m_currentShowXPromo;
}

// ---- NetworkManager::getNewsEpoch  @ 0x38af8c
/* NetworkManager::getNewsEpoch() */

undefined4 NetworkManager::getNewsEpoch(void)

{
  return m_currentNewsEpoch;
}

// ---- NetworkManager::getQuickplayPopulation  @ 0x38afa8
/* NetworkManager::getQuickplayPopulation() */

undefined4 NetworkManager::getQuickplayPopulation(void)

{
  return m_currentQuickplayPopulation;
}

// ---- NetworkManager::getServerList  @ 0x38afc4
/* NetworkManager::getServerList() */

NetworkManager * __thiscall NetworkManager::getServerList(NetworkManager *this)

{
  std::vector<ServerListObject,std::allocator<ServerListObject>>::vector
            ((vector<ServerListObject,std::allocator<ServerListObject>> *)this,m_currentServerList);
  return this;
}

// ---- NetworkManager::hasCompletedSessionRequest  @ 0x38afec
/* NetworkManager::hasCompletedSessionRequest() */

undefined4 NetworkManager::hasCompletedSessionRequest(void)

{
  int iVar1;
  undefined4 uVar2;
  
  if ((m_sessionAcquired == '\0') || (iVar1 = FUN_007c505c(&m_privateClientToken), iVar1 == 0)) {
    uVar2 = 0;
  }
  else {
    uVar2 = 1;
  }
  return uVar2;
}

// ---- NetworkManager::getPrivateClientToken  @ 0x38b02c
/* NetworkManager::getPrivateClientToken() */

undefined4 NetworkManager::getPrivateClientToken(void)

{
  undefined4 in_r0;
  
  FUN_007c64e8(in_r0,&m_privateClientToken);
  return in_r0;
}

// ---- NetworkManager::requestWebSession  @ 0x38b054
/* NetworkManager::requestWebSession() */

undefined4 __thiscall NetworkManager::requestWebSession(NetworkManager *this)

{
  char cVar1;
  CCHttpRequest *this_00;
  char *pcVar2;
  int iVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  char *__s;
  size_t sVar8;
  CCHttpClient *this_01;
  undefined4 uVar9;
  ApplicationInterface aAStack_5c [4];
  undefined1 auStack_58 [4];
  undefined1 auStack_54 [4];
  undefined1 auStack_50 [4];
  undefined1 auStack_4c [4];
  CCHttpRequest *local_48;
  undefined4 local_44;
  char *local_40;
  CCString *local_3c;
  undefined4 local_38;
  undefined4 uStack_34;
  vector<std::string,std::allocator<std::string>> avStack_30 [12];
  vector<std::string,std::allocator<std::string>> avStack_24 [12];
  
  if (requestingSession == '\0') {
    requestingSession = '\x01';
    cVar1 = ApplicationInterface::hasClaimedIdentity();
    if (cVar1 == '\x01') {
      this_00 = operator_new(0x48);
      cocos2d::extension::CCHttpRequest::CCHttpRequest(this_00);
      local_48 = this_00;
      createAppsomniacsUrl((char *)avStack_24);
      pcVar2 = (char *)FUN_007c5300(avStack_24);
      cocos2d::extension::CCHttpRequest::setUrl(local_48,pcVar2);
      FUN_007c5914(avStack_24);
      ApplicationInterface::getClaimedIdentity(aAStack_5c);
      FUN_007c51b0(auStack_58);
      iVar3 = ApplicationInterface::isBigEndian();
      if (iVar3 == 0) {
        local_44 = 1;
      }
      else {
        local_44 = 2;
      }
      FUN_0079a3f4(avStack_24);
      FUN_007c6a60(auStack_54,&DAT_007deaa4,avStack_24);
      FUN_0079a3fc(avStack_24);
      FUN_0079a3f4(avStack_24);
      FUN_007c6a60(auStack_50,&DAT_007deaa4,avStack_24);
      FUN_0079a3fc(avStack_24);
      local_40 = 
      "{\"claimedId\":\"%s\",\"claimedPlatform\":%d,\"claimedAvatarName\":\"%s\",\"endianState\": %d,\"verificationPayload\":%s,\"misc\":%s}"
      ;
      uVar9 = FUN_007c5300(aAStack_5c);
      uVar4 = ApplicationInterface::getPlatformId();
      uVar5 = FUN_007c5300(auStack_58);
      uVar6 = FUN_007c5300(auStack_54);
      uVar7 = FUN_007c5300(auStack_50);
      local_3c = (CCString *)
                 cocos2d::CCString::createWithFormat
                           (local_40,uVar9,uVar4,uVar5,local_44,uVar6,uVar7);
      cocos2d::extension::CCHttpRequest::setRequestType(local_48,1);
      local_38 = DAT_00943508;
      uStack_34 = DAT_0094350c;
      cocos2d::extension::CCHttpRequest::setResponseCallback
                ((CCObject *)local_48,(_func_void_CCHttpClient_ptr_CCHttpResponse_ptr *)(this + 4));
      pcVar2 = (char *)cocos2d::CCString::getCString(local_3c);
      __s = (char *)cocos2d::CCString::getCString(local_3c);
      sVar8 = strlen(__s);
      cocos2d::extension::CCHttpRequest::setRequestData(local_48,pcVar2,sVar8);
      FUN_007c64e8(auStack_4c,&m_sessionToken);
      setSessionHttpHeader(auStack_4c);
      FUN_007c5914(auStack_4c);
      getAppsomniacsHttpHeader();
      std::vector<std::string,std::allocator<std::string>>::vector(avStack_24,avStack_30);
      cocos2d::extension::CCHttpRequest::setHeaders(local_48,avStack_24);
      std::vector<std::string,std::allocator<std::string>>::~vector(avStack_24);
      cocos2d::extension::CCHttpRequest::setTag(local_48,"POST Request -> Create Session");
      this_01 = (CCHttpClient *)cocos2d::extension::CCHttpClient::getInstance();
      cocos2d::extension::CCHttpClient::send(this_01,local_48);
      cocos2d::CCObject::release((CCObject *)local_48);
      uVar9 = 1;
      std::vector<std::string,std::allocator<std::string>>::~vector(avStack_30);
      FUN_007c5914(auStack_50);
      FUN_007c5914(auStack_54);
      FUN_007c5914(auStack_58);
      FUN_007c5914(aAStack_5c);
    }
    else {
      ApplicationInterface::pickClaimedIdentity();
      requestingSession = '\0';
      uVar9 = 0;
    }
  }
  else {
    uVar9 = 0;
  }
  return uVar9;
}

// ---- NetworkManager::rescheduleWebSessionRequest  @ 0x38b300
/* NetworkManager::rescheduleWebSessionRequest() */

void __thiscall NetworkManager::rescheduleWebSessionRequest(NetworkManager *this)

{
  int iVar1;
  float extraout_s0;
  
  iVar1 = ApplicationInterface::hasClaimedIdentity();
  if (iVar1 != 0) {
    cocos2d::CCNode::scheduleOnce((_func_void_float *)(this + 4),extraout_s0);
  }
  return;
}

// ---- NetworkManager::processClientMessageFromJsonDoc  @ 0x38b344
/* NetworkManager::processClientMessageFromJsonDoc(rapidjson::GenericDocument<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >*) */

undefined4 __thiscall
NetworkManager::processClientMessageFromJsonDoc(NetworkManager *this,GenericDocument *param_1)

{
  bool bVar1;
  char cVar2;
  int iVar3;
  GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
  *pGVar4;
  undefined4 uVar5;
  CCObject *pCVar6;
  undefined1 auStack_24 [4];
  undefined1 auStack_20 [4];
  undefined1 auStack_1c [4];
  undefined1 auStack_18 [4];
  string asStack_14 [4];
  undefined1 auStack_10 [4];
  undefined1 auStack_c [4];
  
  iVar3 = rapidjson::
          GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
          ::IsObject((GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                      *)param_1);
  if (iVar3 == 0) {
    return 0;
  }
  iVar3 = rapidjson::
          GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
          ::HasMember((GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                       *)param_1,"cm");
  if (iVar3 == 0) {
LAB_0038b3b2:
    bVar1 = false;
  }
  else {
    pGVar4 = (GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
              *)rapidjson::
                GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                ::operator[]((GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                              *)param_1,"cm");
    cVar2 = rapidjson::
            GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
            ::IsNull(pGVar4);
    if (cVar2 == '\x01') goto LAB_0038b3b2;
    pGVar4 = (GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
              *)rapidjson::
                GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                ::operator[]((GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                              *)param_1,"cm");
    iVar3 = rapidjson::
            GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
            ::GetStringLength(pGVar4);
    if (iVar3 == 0) goto LAB_0038b3b2;
    bVar1 = true;
  }
  if (!bVar1) {
    return 0;
  }
  pGVar4 = (GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
            *)rapidjson::
              GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
              ::operator[]((GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                            *)param_1,"cm");
  uVar5 = rapidjson::
          GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
          ::GetString(pGVar4);
  FUN_0079a3f4(auStack_c);
  FUN_007c6a60(auStack_18,uVar5,auStack_c);
  FUN_0079a3fc(auStack_c);
  FUN_0079a3f4(auStack_20);
  FUN_007c6a60(auStack_10,"Server Alert",auStack_20);
  uVar5 = FUN_007c5300(auStack_18);
  FUN_0079a3f4(auStack_1c);
  FUN_007c6a60(auStack_c,uVar5,auStack_1c);
  FUN_0079a3f4(auStack_24);
  FUN_007c6a60(asStack_14,&DAT_007deb58,auStack_24);
  pCVar6 = (CCObject *)cocos2d::CCString::create(asStack_14);
  uVar5 = cocos2d::CCArray::create(pCVar6,0);
  AMessageBox::showAlert(0,auStack_10,auStack_c,uVar5,0,0);
  FUN_007c5914(asStack_14);
  FUN_0079a3fc(auStack_24);
  FUN_007c5914(auStack_c);
  FUN_0079a3fc(auStack_1c);
  FUN_007c5914(auStack_10);
  FUN_0079a3fc(auStack_20);
  iVar3 = rapidjson::
          GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
          ::HasMember((GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                       *)param_1,"sk");
  if (iVar3 != 0) {
    pGVar4 = (GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
              *)rapidjson::
                GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                ::operator[]((GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                              *)param_1,"sk");
    iVar3 = rapidjson::
            GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
            ::GetBool(pGVar4);
    if (iVar3 != 0) {
      uVar5 = 1;
      goto LAB_0038b4d0;
    }
  }
  uVar5 = 0;
LAB_0038b4d0:
  FUN_007c5914(auStack_18);
  return uVar5;
}

// ---- NetworkManager::onRequestAppsomniacsWebSessionCompleted  @ 0x38b5b0
/* NetworkManager::onRequestAppsomniacsWebSessionCompleted(cocos2d::extension::CCHttpClient*,
   cocos2d::extension::CCHttpResponse*) */

void __thiscall
NetworkManager::onRequestAppsomniacsWebSessionCompleted
          (NetworkManager *this,CCHttpClient *param_1,CCHttpResponse *param_2)

{
  bool bVar1;
  char cVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  char *pcVar5;
  int iVar6;
  GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
  *pGVar7;
  time_t tVar8;
  string asStack_108 [4];
  undefined1 auStack_104 [4];
  undefined1 auStack_100 [4];
  int local_fc;
  vector<char,std::allocator<char>> *local_f8;
  GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
  aGStack_f4 [48];
  undefined1 auStack_c4 [180];
  
  requestingSession = 0;
  local_fc = cocos2d::extension::CCHttpResponse::getResponseCode(param_2);
  local_f8 = (vector<char,std::allocator<char>> *)
             cocos2d::extension::CCHttpResponse::getResponseData(param_2);
  uVar3 = std::vector<char,std::allocator<char>>::begin(local_f8);
  uVar4 = std::vector<char,std::allocator<char>>::end(local_f8);
  FUN_0079a3f4(auStack_c4);
  std::string::string<__gnu_cxx::__normal_iterator<char*,std::vector<char,std::allocator<char>>>>
            (asStack_108,uVar3,uVar4,auStack_c4);
  FUN_0079a3fc(auStack_c4);
  rapidjson::
  GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
  GenericDocument(aGStack_f4,(MemoryPoolAllocator *)0x0,0x400);
  pcVar5 = (char *)FUN_007c5300(asStack_108);
  rapidjson::
  GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
  Parse<0u>(aGStack_f4,pcVar5);
  iVar6 = processClientMessageFromJsonDoc(this,(GenericDocument *)aGStack_f4);
  if ((iVar6 != 0) ||
     (iVar6 = rapidjson::
              GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
              ::IsObject((GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                          *)aGStack_f4), iVar6 == 0)) goto LAB_0038ba2c;
  if (local_fc != 200) {
    if ((((m_sessionAcquired == '\x01') && (iVar6 = FUN_007c505c(&m_sessionToken), iVar6 != 0)) &&
        (0 < m_sessionTtl)) &&
       ((iVar6 = FUN_007c505c(&m_privateClientToken), iVar6 != 0 &&
        (iVar6 = FUN_007c505c(&m_sharedClientToken), iVar6 != 0)))) {
      bVar1 = false;
    }
    else {
      bVar1 = true;
    }
    if (bVar1) {
      invalidateAppsomniacsSession();
      FUN_007aa500(auStack_c4,0x10);
      thunk_FUN_007bbd6c(auStack_c4,local_fc);
      FUN_007aa88c(auStack_100,auStack_c4);
      FUN_007c6120(&m_privateClientToken,auStack_100);
      FUN_007c5914(auStack_100);
      NetworkManagerBridge::notifySessionRequestCompleted((NetworkManagerBridge *)this,false);
      FUN_007a90d4(auStack_c4);
    }
    rescheduleWebSessionRequest(this);
    goto LAB_0038ba2c;
  }
  iVar6 = rapidjson::
          GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
          ::HasMember((GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                       *)aGStack_f4,"st");
  if (iVar6 == 0) {
LAB_0038b6be:
    bVar1 = false;
  }
  else {
    pGVar7 = (GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
              *)rapidjson::
                GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                ::operator[]((GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                              *)aGStack_f4,"st");
    cVar2 = rapidjson::
            GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
            ::IsNull(pGVar7);
    if (cVar2 == '\x01') goto LAB_0038b6be;
    pGVar7 = (GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
              *)rapidjson::
                GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                ::operator[]((GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                              *)aGStack_f4,"st");
    iVar6 = rapidjson::
            GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
            ::GetStringLength(pGVar7);
    if (iVar6 == 0) goto LAB_0038b6be;
    bVar1 = true;
  }
  if (bVar1) {
    pGVar7 = (GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
              *)rapidjson::
                GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                ::operator[]((GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                              *)aGStack_f4,"st");
    uVar3 = rapidjson::
            GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
            ::GetString(pGVar7);
    FUN_007c5e70(&m_sessionToken,uVar3);
  }
  iVar6 = rapidjson::
          GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
          ::HasMember((GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                       *)aGStack_f4,"ttl");
  if (iVar6 == 0) {
LAB_0038b71c:
    bVar1 = false;
  }
  else {
    pGVar7 = (GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
              *)rapidjson::
                GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                ::operator[]((GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                              *)aGStack_f4,"ttl");
    iVar6 = rapidjson::
            GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
            ::IsNumber(pGVar7);
    if (iVar6 == 0) goto LAB_0038b71c;
    bVar1 = true;
  }
  if (bVar1) {
    pGVar7 = (GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
              *)rapidjson::
                GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                ::operator[]((GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                              *)aGStack_f4,"ttl");
    m_sessionTtl = rapidjson::
                   GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                   ::GetInt(pGVar7);
    tVar8 = time((time_t *)0x0);
    m_sessionEpoch = tVar8 + m_sessionTtl;
  }
  iVar6 = rapidjson::
          GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
          ::HasMember((GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                       *)aGStack_f4,"pct");
  if (iVar6 == 0) {
LAB_0038b7ae:
    bVar1 = false;
  }
  else {
    pGVar7 = (GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
              *)rapidjson::
                GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                ::operator[]((GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                              *)aGStack_f4,"pct");
    cVar2 = rapidjson::
            GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
            ::IsNull(pGVar7);
    if (cVar2 == '\x01') goto LAB_0038b7ae;
    pGVar7 = (GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
              *)rapidjson::
                GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                ::operator[]((GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                              *)aGStack_f4,"pct");
    iVar6 = rapidjson::
            GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
            ::GetStringLength(pGVar7);
    if (iVar6 == 0) goto LAB_0038b7ae;
    bVar1 = true;
  }
  if (bVar1) {
    pGVar7 = (GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
              *)rapidjson::
                GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                ::operator[]((GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                              *)aGStack_f4,"pct");
    uVar3 = rapidjson::
            GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
            ::GetString(pGVar7);
    FUN_007c5e70(&m_privateClientToken,uVar3);
  }
  iVar6 = rapidjson::
          GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
          ::HasMember((GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                       *)aGStack_f4,"sct");
  if (iVar6 == 0) {
LAB_0038b82e:
    bVar1 = false;
  }
  else {
    pGVar7 = (GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
              *)rapidjson::
                GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                ::operator[]((GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                              *)aGStack_f4,"sct");
    cVar2 = rapidjson::
            GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
            ::IsNull(pGVar7);
    if (cVar2 == '\x01') goto LAB_0038b82e;
    pGVar7 = (GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
              *)rapidjson::
                GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                ::operator[]((GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                              *)aGStack_f4,"sct");
    iVar6 = rapidjson::
            GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
            ::GetStringLength(pGVar7);
    if (iVar6 == 0) goto LAB_0038b82e;
    bVar1 = true;
  }
  if (bVar1) {
    pGVar7 = (GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
              *)rapidjson::
                GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                ::operator[]((GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                              *)aGStack_f4,"sct");
    uVar3 = rapidjson::
            GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
            ::GetString(pGVar7);
    FUN_007c5e70(&m_sharedClientToken,uVar3);
  }
  iVar6 = FUN_007c505c(&m_sessionToken);
  if (((iVar6 == 0) || (m_sessionTtl < 1)) ||
     ((iVar6 = FUN_007c505c(&m_privateClientToken), iVar6 == 0 ||
      (iVar6 = FUN_007c505c(&m_sharedClientToken), iVar6 == 0)))) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (bVar1) {
    m_sessionAcquired = '\x01';
    NetworkManagerBridge::notifySessionRequestCompleted((NetworkManagerBridge *)this,true);
  }
  else {
    FUN_007aa500(auStack_c4,0x10);
    uVar3 = FUN_007c505c(&m_sessionToken);
    uVar3 = thunk_FUN_007bbf08(auStack_c4,uVar3);
    uVar3 = FUN_007bbcd0(uVar3,&DAT_007deb70);
    uVar3 = thunk_FUN_007bbd6c(uVar3,m_sessionTtl);
    uVar3 = FUN_007bbcd0(uVar3,&DAT_007deb70);
    uVar4 = FUN_007c505c(&m_privateClientToken);
    uVar3 = thunk_FUN_007bbf08(uVar3,uVar4);
    uVar3 = FUN_007bbcd0(uVar3,&DAT_007deb70);
    uVar4 = FUN_007c505c(&m_sharedClientToken);
    uVar3 = thunk_FUN_007bbf08(uVar3,uVar4);
    thunk_FUN_007bbd6c(uVar3,0);
    invalidateAppsomniacsSession();
    FUN_007aa88c(auStack_104,auStack_c4);
    FUN_007c6120(&m_privateClientToken,auStack_104);
    FUN_007c5914(auStack_104);
    NetworkManagerBridge::notifySessionRequestCompleted((NetworkManagerBridge *)this,false);
    rescheduleWebSessionRequest(this);
    FUN_007a90d4(auStack_c4);
  }
LAB_0038ba2c:
  rapidjson::
  GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
  ~GenericDocument(aGStack_f4);
  FUN_007c5914(asStack_108);
  return;
}

// ---- NetworkManager::updateAlertHandler  @ 0x38bb08
/* NetworkManager::updateAlertHandler(int, cocos2d::CCObject*, cocos2d::CCObject*) */

void NetworkManager::updateAlertHandler(int param_1,CCObject *param_2,CCObject *param_3)

{
  if (param_1 == 1) {
    ApplicationInterface::openMiniMilitiaLink();
  }
  return;
}
