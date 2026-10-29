// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 16 functions

// ---- PlayerLobbyOnline::create  @ 0x360f14
/* PlayerLobbyOnline::create() */

PlayerLobbyOnline * PlayerLobbyOnline::create(void)

{
  bool bVar1;
  PlayerLobbyOnline *this;
  int iVar2;
  
  this = operator_new(0x17c);
  PlayerLobbyOnline(this);
  if ((this == (PlayerLobbyOnline *)0x0) ||
     (iVar2 = (**(code **)(*(int *)this + 0x18))(this), iVar2 == 0)) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (bVar1) {
    cocos2d::CCObject::autorelease((CCObject *)this);
  }
  else {
    if (this != (PlayerLobbyOnline *)0x0) {
      (**(code **)(*(int *)this + 8))(this);
    }
    this = (PlayerLobbyOnline *)0x0;
  }
  return this;
}

// ---- PlayerLobbyOnline::PlayerLobbyOnline  @ 0x3b20ec
/* PlayerLobbyOnline::PlayerLobbyOnline() */

PlayerLobbyOnline * __thiscall PlayerLobbyOnline::PlayerLobbyOnline(PlayerLobbyOnline *this)

{
  PlayerLobby::PlayerLobby((PlayerLobby *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_00917680;
  *(undefined ***)(this + 0xe4) = &PTR__PlayerLobbyOnline_1_009178dc;
  *(undefined ***)(this + 0xe8) = &PTR__PlayerLobbyOnline_1_00917904;
  *(undefined ***)(this + 0xec) = &PTR__PlayerLobbyOnline_1_00917924;
  return this;
}

// ---- PlayerLobbyOnline::init  @ 0x3b2144
/* PlayerLobbyOnline::init() */

undefined4 __thiscall PlayerLobbyOnline::init(PlayerLobbyOnline *this)

{
  char cVar1;
  CCArray *this_00;
  time_t tVar2;
  uint uVar3;
  CCString *this_01;
  CCNotificationCenter *this_02;
  uint extraout_r1;
  undefined4 uVar4;
  uint local_24;
  
  cVar1 = PlayerLobby::init((PlayerLobby *)this);
  if (cVar1 == '\x01') {
    this[0x14c] = (PlayerLobbyOnline)0x0;
    if (gameType == 4) {
      this_00 = (CCArray *)cocos2d::CCDictionary::allKeys(multiplayerMaps);
      tVar2 = time((time_t *)0x0);
      uVar4 = cocos2d::CCArray::count(this_00);
      __aeabi_uidivmod(tVar2,uVar4);
      uVar3 = cocos2d::CCArray::count(this_00);
      local_24 = extraout_r1;
      if (uVar3 <= extraout_r1) {
        local_24 = 0;
      }
      this_01 = (CCString *)cocos2d::CCArray::objectAtIndex(this_00,local_24);
      uVar4 = cocos2d::CCString::getCString(this_01);
      FUN_007c5e70(&hostMapName,uVar4);
    }
    if (gameType == 2) {
      FUN_007c5e70(&hostMapName,"Survival");
      (**(code **)(*(int *)this + 0x1c4))(this);
    }
    this_02 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    cocos2d::CCNotificationCenter::addObserver
              (this_02,(CCObject *)this,(_func_void_CCObject_ptr *)0x3b27e9,(char *)0x0,
               (CCObject *)"ServerPlayerCount");
    uVar4 = 1;
  }
  else {
    uVar4 = 0;
  }
  return uVar4;
}

// ---- PlayerLobbyOnline::~PlayerLobbyOnline  @ 0x3b2258
/* WARNING: Removing unreachable block (ram,0x003b22a4) */
/* PlayerLobbyOnline::~PlayerLobbyOnline() */

PlayerLobbyOnline * __thiscall PlayerLobbyOnline::~PlayerLobbyOnline(PlayerLobbyOnline *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_00917680;
  *(undefined ***)(this + 0xe4) = &PTR__PlayerLobbyOnline_1_009178dc;
  *(undefined ***)(this + 0xe8) = &PTR__PlayerLobbyOnline_1_00917904;
  *(undefined ***)(this + 0xec) = &PTR__PlayerLobbyOnline_1_00917924;
  PlayerLobby::~PlayerLobby((PlayerLobby *)this);
  return this;
}

// ---- PlayerLobbyOnline::~PlayerLobbyOnline  @ 0x3b22bc
/* non-virtual thunk to PlayerLobbyOnline::~PlayerLobbyOnline() */

void __thiscall PlayerLobbyOnline::~PlayerLobbyOnline(PlayerLobbyOnline *this)

{
  ~PlayerLobbyOnline(this + -0xe4);
  return;
}

// ---- PlayerLobbyOnline::~PlayerLobbyOnline  @ 0x3b22c4
/* non-virtual thunk to PlayerLobbyOnline::~PlayerLobbyOnline() */

void __thiscall PlayerLobbyOnline::~PlayerLobbyOnline(PlayerLobbyOnline *this)

{
  ~PlayerLobbyOnline(this + -0xe8);
  return;
}

// ---- PlayerLobbyOnline::~PlayerLobbyOnline  @ 0x3b22cc
/* non-virtual thunk to PlayerLobbyOnline::~PlayerLobbyOnline() */

void __thiscall PlayerLobbyOnline::~PlayerLobbyOnline(PlayerLobbyOnline *this)

{
  ~PlayerLobbyOnline(this + -0xec);
  return;
}

// ---- PlayerLobbyOnline::~PlayerLobbyOnline  @ 0x3b22d4
/* PlayerLobbyOnline::~PlayerLobbyOnline() */

PlayerLobbyOnline * __thiscall PlayerLobbyOnline::~PlayerLobbyOnline(PlayerLobbyOnline *this)

{
  ~PlayerLobbyOnline(this);
  operator_delete(this);
  return this;
}

// ---- PlayerLobbyOnline::~PlayerLobbyOnline  @ 0x3b22f0
/* non-virtual thunk to PlayerLobbyOnline::~PlayerLobbyOnline() */

void __thiscall PlayerLobbyOnline::~PlayerLobbyOnline(PlayerLobbyOnline *this)

{
  ~PlayerLobbyOnline(this + -0xe4);
  return;
}

// ---- PlayerLobbyOnline::~PlayerLobbyOnline  @ 0x3b22f8
/* non-virtual thunk to PlayerLobbyOnline::~PlayerLobbyOnline() */

void __thiscall PlayerLobbyOnline::~PlayerLobbyOnline(PlayerLobbyOnline *this)

{
  ~PlayerLobbyOnline(this + -0xe8);
  return;
}

// ---- PlayerLobbyOnline::~PlayerLobbyOnline  @ 0x3b2300
/* non-virtual thunk to PlayerLobbyOnline::~PlayerLobbyOnline() */

void __thiscall PlayerLobbyOnline::~PlayerLobbyOnline(PlayerLobbyOnline *this)

{
  ~PlayerLobbyOnline(this + -0xec);
  return;
}

// ---- PlayerLobbyOnline::onPlayerDisconnected  @ 0x3b2308
/* PlayerLobbyOnline::onPlayerDisconnected(cocos2d::CCObject*) */

void PlayerLobbyOnline::onPlayerDisconnected(CCObject *param_1)

{
  bool bVar1;
  NetworkManager *pNVar2;
  int iVar3;
  
  if ((gameType == 4) || (gameType == 2)) {
    pNVar2 = (NetworkManager *)NetworkManager::sharedNetworkManager();
    iVar3 = NetworkManager::getPeerCount(pNVar2);
    if (iVar3 == 0) {
      bVar1 = true;
      goto LAB_003b2340;
    }
  }
  bVar1 = false;
LAB_003b2340:
  if (bVar1) {
    pNVar2 = (NetworkManager *)NetworkManager::sharedNetworkManager();
    NetworkManager::endMatch(pNVar2);
  }
  return;
}

// ---- PlayerLobbyOnline::updateCountDown  @ 0x3b2360
/* PlayerLobbyOnline::updateCountDown(float) */

void __thiscall PlayerLobbyOnline::updateCountDown(PlayerLobbyOnline *this,float param_1)

{
  bool bVar1;
  char cVar2;
  uint uVar3;
  int iVar4;
  NetworkManager *pNVar5;
  CCString *pCVar6;
  undefined4 uVar7;
  float in_r1;
  PlayerLobbyOnline PVar8;
  code *pcVar9;
  undefined4 uVar10;
  float fVar11;
  undefined1 local_20;
  undefined1 local_1f;
  undefined1 local_1e;
  CCDictElement *local_1c;
  CCDictElement *local_18;
  int local_14;
  
  uVar3 = cocos2d::CCDictionary::count(*(CCDictionary **)(this + 0x124));
  if (uVar3 < 2) {
    iVar4 = (**(code **)(*(int *)this + 0x1dc))(this);
    if (*(int *)(iVar4 + 0x118) == 3) {
      iVar4 = (**(code **)(*(int *)this + 0x1dc))(this);
      *(undefined4 *)(iVar4 + 0x118) = 1;
    }
    (**(code **)(**(int **)(this + 0x108) + 0x1f8))(*(undefined4 *)(this + 0x108),"READY");
    (**(code **)(**(int **)(this + 0x108) + 0x4c))(*(undefined4 *)(this + 0x108),this + 0x15c);
  }
  pNVar5 = (NetworkManager *)NetworkManager::sharedNetworkManager();
  cVar2 = NetworkManager::isUsingHostedServer(pNVar5);
  if (cVar2 == '\x01') {
LAB_003b2448:
    bVar1 = false;
  }
  else {
    pNVar5 = (NetworkManager *)NetworkManager::sharedNetworkManager();
    iVar4 = NetworkManager::isConnected(pNVar5);
    if (iVar4 == 0) goto LAB_003b2448;
    pNVar5 = (NetworkManager *)NetworkManager::sharedNetworkManager();
    cVar2 = NetworkManager::canSearch(pNVar5);
    if (cVar2 == '\x01') goto LAB_003b2448;
    bVar1 = true;
  }
  if (bVar1) {
    (**(code **)(**(int **)(this + 0x128) + 0x23c))(*(undefined4 *)(this + 0x128),"PLAYERS FOUND");
  }
  else {
    pcVar9 = *(code **)(**(int **)(this + 0x128) + 0x23c);
    uVar10 = *(undefined4 *)(this + 0x128);
    pCVar6 = (CCString *)
             cocos2d::CCString::createWithFormat
                       ("AVAILABLE PLAYERS: %d",*(undefined4 *)(this + 0x150));
    uVar7 = cocos2d::CCString::getCString(pCVar6);
    (*pcVar9)(uVar10,uVar7);
  }
  uVar3 = cocos2d::CCDictionary::count(*(CCDictionary **)(this + 0x124));
  this[0x14c] = (PlayerLobbyOnline)(1 < uVar3);
  if (gameType == 4) {
    pNVar5 = (NetworkManager *)NetworkManager::sharedNetworkManager();
    iVar4 = NetworkManager::isSearching(pNVar5);
    if (iVar4 != 0) {
      bVar1 = true;
      goto LAB_003b24e4;
    }
  }
  bVar1 = false;
LAB_003b24e4:
  if (bVar1) {
    this[0x14c] = (PlayerLobbyOnline)0x0;
  }
  else {
    local_1c = (CCDictElement *)0x0;
    local_18 = (CCDictElement *)0x0;
    if ((*(int *)(this + 0x124) == 0) ||
       (iVar4 = cocos2d::CCDictionary::count(*(CCDictionary **)(this + 0x124)), iVar4 == 0)) {
      bVar1 = false;
    }
    else {
      bVar1 = true;
    }
    if (bVar1) {
      local_1c = *(CCDictElement **)(*(int *)(this + 0x124) + 0x14);
      if (*(int *)(*(int *)(this + 0x124) + 0x14) == 0) {
        local_18 = (CCDictElement *)0x0;
      }
      else {
        local_18 = *(CCDictElement **)(*(int *)(*(int *)(this + 0x124) + 0x14) + 0x110);
      }
      while (local_1c != (CCDictElement *)0x0) {
        local_14 = cocos2d::CCDictElement::getObject(local_1c);
        if ((this[0x14c] == (PlayerLobbyOnline)0x0) || (*(int *)(local_14 + 0x118) != 3)) {
          PVar8 = (PlayerLobbyOnline)0x0;
        }
        else {
          PVar8 = (PlayerLobbyOnline)0x1;
        }
        this[0x14c] = PVar8;
        local_1c = local_18;
        if (local_18 == (CCDictElement *)0x0) {
          local_18 = (CCDictElement *)0x0;
        }
        else {
          local_18 = *(CCDictElement **)(local_18 + 0x110);
        }
      }
    }
  }
  if (this[0x14c] == (PlayerLobbyOnline)0x0) {
    *(undefined4 *)(this + 0x148) = 0x41200000;
  }
  else {
    if (*(float *)(this + 0x148) - in_r1 <= 0.0) {
      fVar11 = 0.0;
    }
    else {
      fVar11 = *(float *)(this + 0x148) - in_r1;
    }
    *(float *)(this + 0x148) = fVar11;
    pcVar9 = *(code **)(**(int **)(this + 0x128) + 0x23c);
    uVar10 = *(undefined4 *)(this + 0x128);
    pCVar6 = (CCString *)
             cocos2d::CCString::createWithFormat("GAME STARTS IN: %d",(int)*(float *)(this + 0x148))
    ;
    uVar7 = cocos2d::CCString::getCString(pCVar6);
    (*pcVar9)(uVar10,uVar7);
    if ((int)((uint)(*(float *)(this + 0x148) < 5.0) << 0x1f) < 0) {
      pcVar9 = *(code **)(**(int **)(this + 0x128) + 0x1bc);
      uVar10 = *(undefined4 *)(this + 0x128);
      uVar7 = FUN_003b1314(0xff,0,0);
      local_20 = (undefined1)uVar7;
      local_1f = (undefined1)((uint)uVar7 >> 8);
      local_1e = (undefined1)((uint)uVar7 >> 0x10);
      (*pcVar9)(uVar10,&local_20);
      (**(code **)(**(int **)(this + 0x104) + 0x90))(*(undefined4 *)(this + 0x104),0);
      (**(code **)(**(int **)(this + 0x108) + 0x90))(*(undefined4 *)(this + 0x108),0);
      (**(code **)(**(int **)(this + 0x134) + 0x90))(*(undefined4 *)(this + 0x134),0);
      (**(code **)(**(int **)(this + 0x138) + 0x90))(*(undefined4 *)(this + 0x138),0);
    }
    if (*(float *)(this + 0x148) == 0.0) {
      (**(code **)(*(int *)this + 0x1b8))(this);
    }
  }
  return;
}

// ---- PlayerLobbyOnline::alertResponse  @ 0x3b2710
/* PlayerLobbyOnline::alertResponse(int) */

void __thiscall PlayerLobbyOnline::alertResponse(PlayerLobbyOnline *this,int param_1)

{
  bool bVar1;
  int iVar2;
  
  PlayerLobby::alertResponse((PlayerLobby *)this,param_1);
  if ((s_bLocalHost == '\0') ||
     (iVar2 = cocos2d::CCDictionary::count(*(CCDictionary **)(this + 0x124)), iVar2 != 1)) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if ((bVar1) && (param_1 == 1)) {
    Sound::playSound(sndEng,0xd);
    (**(code **)(*(int *)this + 0x1bc))(this);
  }
  return;
}

// ---- PlayerLobbyOnline::updateReadyLabel  @ 0x3b2780
/* PlayerLobbyOnline::updateReadyLabel() */

void __thiscall PlayerLobbyOnline::updateReadyLabel(PlayerLobbyOnline *this)

{
  if (s_bLocalHost == '\0') {
    (**(code **)(**(int **)(this + 0x108) + 0x1f8))(*(undefined4 *)(this + 0x108),"READY");
  }
  else {
    (**(code **)(**(int **)(this + 0x108) + 0x1f8))(*(undefined4 *)(this + 0x108),"START");
  }
  return;
}

// ---- PlayerLobbyOnline::onServerPlayerCountUpdate  @ 0x3b27e8
/* PlayerLobbyOnline::onServerPlayerCountUpdate(cocos2d::CCObject*) */

void __thiscall
PlayerLobbyOnline::onServerPlayerCountUpdate(PlayerLobbyOnline *this,CCObject *param_1)

{
  undefined4 uVar1;
  
  uVar1 = cocos2d::CCInteger::getValue((CCInteger *)param_1);
  *(undefined4 *)(this + 0x150) = uVar1;
  return;
}
