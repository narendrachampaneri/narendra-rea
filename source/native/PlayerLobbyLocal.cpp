// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 19 functions

// ---- PlayerLobbyLocal::create  @ 0x360e34
/* PlayerLobbyLocal::create() */

PlayerLobbyLocal * PlayerLobbyLocal::create(void)

{
  bool bVar1;
  PlayerLobbyLocal *this;
  int iVar2;
  
  this = operator_new(0x17c);
  PlayerLobbyLocal(this);
  if ((this == (PlayerLobbyLocal *)0x0) ||
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
    if (this != (PlayerLobbyLocal *)0x0) {
      (**(code **)(*(int *)this + 8))(this);
    }
    this = (PlayerLobbyLocal *)0x0;
  }
  return this;
}

// ---- PlayerLobbyLocal::PlayerLobbyLocal  @ 0x3b09ac
/* PlayerLobbyLocal::PlayerLobbyLocal() */

PlayerLobbyLocal * __thiscall PlayerLobbyLocal::PlayerLobbyLocal(PlayerLobbyLocal *this)

{
  PlayerLobby::PlayerLobby((PlayerLobby *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_009173b0;
  *(undefined ***)(this + 0xe4) = &PTR__PlayerLobbyLocal_1_0091760c;
  *(undefined ***)(this + 0xe8) = &PTR__PlayerLobbyLocal_1_00917634;
  *(undefined ***)(this + 0xec) = &PTR__PlayerLobbyLocal_1_00917654;
  return this;
}

// ---- PlayerLobbyLocal::init  @ 0x3b0a04
/* PlayerLobbyLocal::init() */

undefined4 __thiscall PlayerLobbyLocal::init(PlayerLobbyLocal *this)

{
  char cVar1;
  undefined4 uVar2;
  
  cVar1 = PlayerLobby::init((PlayerLobby *)this);
  if (cVar1 == '\x01') {
    (**(code **)(**(int **)(this + 0x118) + 0x90))(*(undefined4 *)(this + 0x118),0);
    (**(code **)(**(int **)(this + 0x114) + 0x90))(*(undefined4 *)(this + 0x114),0);
    (**(code **)(**(int **)(this + 0x120) + 0x90))(*(undefined4 *)(this + 0x120),0);
    (**(code **)(**(int **)(this + 0x11c) + 0x90))(*(undefined4 *)(this + 0x11c),0);
    if (gameType == 5) {
      FUN_007c5e70(&hostMapName,"Survival");
      (**(code **)(*(int *)this + 0x1c4))(this);
      (**(code **)(**(int **)(this + 0x120) + 0x90))(*(undefined4 *)(this + 0x120),0);
      (**(code **)(**(int **)(this + 0x11c) + 0x90))(*(undefined4 *)(this + 0x11c),0);
    }
    uVar2 = 1;
  }
  else {
    uVar2 = 0;
  }
  return uVar2;
}

// ---- PlayerLobbyLocal::~PlayerLobbyLocal  @ 0x3b0b00
/* WARNING: Removing unreachable block (ram,0x003b0b4c) */
/* PlayerLobbyLocal::~PlayerLobbyLocal() */

PlayerLobbyLocal * __thiscall PlayerLobbyLocal::~PlayerLobbyLocal(PlayerLobbyLocal *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_009173b0;
  *(undefined ***)(this + 0xe4) = &PTR__PlayerLobbyLocal_1_0091760c;
  *(undefined ***)(this + 0xe8) = &PTR__PlayerLobbyLocal_1_00917634;
  *(undefined ***)(this + 0xec) = &PTR__PlayerLobbyLocal_1_00917654;
  PlayerLobby::~PlayerLobby((PlayerLobby *)this);
  return this;
}

// ---- PlayerLobbyLocal::~PlayerLobbyLocal  @ 0x3b0b64
/* non-virtual thunk to PlayerLobbyLocal::~PlayerLobbyLocal() */

void __thiscall PlayerLobbyLocal::~PlayerLobbyLocal(PlayerLobbyLocal *this)

{
  ~PlayerLobbyLocal(this + -0xe4);
  return;
}

// ---- PlayerLobbyLocal::~PlayerLobbyLocal  @ 0x3b0b6c
/* non-virtual thunk to PlayerLobbyLocal::~PlayerLobbyLocal() */

void __thiscall PlayerLobbyLocal::~PlayerLobbyLocal(PlayerLobbyLocal *this)

{
  ~PlayerLobbyLocal(this + -0xe8);
  return;
}

// ---- PlayerLobbyLocal::~PlayerLobbyLocal  @ 0x3b0b74
/* non-virtual thunk to PlayerLobbyLocal::~PlayerLobbyLocal() */

void __thiscall PlayerLobbyLocal::~PlayerLobbyLocal(PlayerLobbyLocal *this)

{
  ~PlayerLobbyLocal(this + -0xec);
  return;
}

// ---- PlayerLobbyLocal::~PlayerLobbyLocal  @ 0x3b0b7c
/* PlayerLobbyLocal::~PlayerLobbyLocal() */

PlayerLobbyLocal * __thiscall PlayerLobbyLocal::~PlayerLobbyLocal(PlayerLobbyLocal *this)

{
  ~PlayerLobbyLocal(this);
  operator_delete(this);
  return this;
}

// ---- PlayerLobbyLocal::~PlayerLobbyLocal  @ 0x3b0b98
/* non-virtual thunk to PlayerLobbyLocal::~PlayerLobbyLocal() */

void __thiscall PlayerLobbyLocal::~PlayerLobbyLocal(PlayerLobbyLocal *this)

{
  ~PlayerLobbyLocal(this + -0xe4);
  return;
}

// ---- PlayerLobbyLocal::~PlayerLobbyLocal  @ 0x3b0ba0
/* non-virtual thunk to PlayerLobbyLocal::~PlayerLobbyLocal() */

void __thiscall PlayerLobbyLocal::~PlayerLobbyLocal(PlayerLobbyLocal *this)

{
  ~PlayerLobbyLocal(this + -0xe8);
  return;
}

// ---- PlayerLobbyLocal::~PlayerLobbyLocal  @ 0x3b0ba8
/* non-virtual thunk to PlayerLobbyLocal::~PlayerLobbyLocal() */

void __thiscall PlayerLobbyLocal::~PlayerLobbyLocal(PlayerLobbyLocal *this)

{
  ~PlayerLobbyLocal(this + -0xec);
  return;
}

// ---- PlayerLobbyLocal::entered  @ 0x3b0bb0
/* PlayerLobbyLocal::entered() */

void __thiscall PlayerLobbyLocal::entered(PlayerLobbyLocal *this)

{
  NetworkManager *this_00;
  
  this_00 = (NetworkManager *)NetworkManager::sharedNetworkManager();
  NetworkManager::updateSession(this_00);
  PlayerLobby::entered((PlayerLobby *)this);
  return;
}

// ---- PlayerLobbyLocal::onReady  @ 0x3b0bd0
/* PlayerLobbyLocal::onReady(cocos2d::CCObject*) */

void PlayerLobbyLocal::onReady(CCObject *param_1)

{
  bool bVar1;
  char cVar2;
  int iVar3;
  CCObject *pCVar4;
  undefined4 uVar5;
  undefined1 auStack_30 [4];
  undefined1 auStack_2c [4];
  undefined1 auStack_28 [4];
  undefined1 auStack_24 [4];
  string asStack_20 [4];
  string asStack_1c [4];
  undefined1 auStack_18 [4];
  undefined1 auStack_14 [8];
  
  cVar2 = (**(code **)(**(int **)(param_1 + 0x104) + 0x94))(*(undefined4 *)(param_1 + 0x104));
  if ((cVar2 == '\x01') &&
     (cVar2 = (**(code **)(**(int **)(param_1 + 0x108) + 0x94))(*(undefined4 *)(param_1 + 0x108)),
     cVar2 == '\x01')) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (!bVar1) {
    Sound::playSound(sndEng,0xd);
    if (((s_bLocalHost == '\0') ||
        (iVar3 = cocos2d::CCDictionary::count(*(CCDictionary **)(param_1 + 0x124)), iVar3 != 1)) ||
       (iVar3 = (**(code **)(*(int *)param_1 + 0x1dc))(param_1), *(int *)(iVar3 + 0x118) != 1)) {
      bVar1 = false;
    }
    else {
      bVar1 = true;
    }
    if (bVar1) {
      FUN_0079a3f4(auStack_28);
      FUN_007c6a60(auStack_18,"Confirm Start",auStack_28);
      FUN_0079a3f4(auStack_24);
      FUN_007c6a60(auStack_14,"No other players have joined the match.",auStack_24);
      FUN_0079a3f4(auStack_30);
      FUN_007c6a60(asStack_20,&DAT_007e2544,auStack_30);
      pCVar4 = (CCObject *)cocos2d::CCString::create(asStack_20);
      FUN_0079a3f4(auStack_2c);
      FUN_007c6a60(asStack_1c,"CONTINUE",auStack_2c);
      uVar5 = cocos2d::CCString::create(asStack_1c);
      uVar5 = cocos2d::CCArray::create(pCVar4,uVar5,0);
      AMessageBox::showAlert(0x3b0ddd,auStack_18,auStack_14,uVar5,0,param_1);
      FUN_007c5914(asStack_1c);
      FUN_0079a3fc(auStack_2c);
      FUN_007c5914(asStack_20);
      FUN_0079a3fc(auStack_30);
      FUN_007c5914(auStack_14);
      FUN_0079a3fc(auStack_24);
      FUN_007c5914(auStack_18);
      FUN_0079a3fc(auStack_28);
    }
    else {
      (**(code **)(*(int *)param_1 + 0x1bc))(param_1);
    }
  }
  return;
}

// ---- PlayerLobbyLocal::messageBoxHandlerLocal  @ 0x3b0ddc
/* PlayerLobbyLocal::messageBoxHandlerLocal(int, cocos2d::CCObject*, cocos2d::CCObject*) */

void PlayerLobbyLocal::messageBoxHandlerLocal(int param_1,CCObject *param_2,CCObject *param_3)

{
  (**(code **)(*(int *)param_3 + 0x19c))(param_3,param_1);
  return;
}

// ---- PlayerLobbyLocal::onPlayerDisconnected  @ 0x3b0e00
/* PlayerLobbyLocal::onPlayerDisconnected(cocos2d::CCObject*) */

void PlayerLobbyLocal::onPlayerDisconnected(CCObject *param_1)

{
  return;
}

// ---- PlayerLobbyLocal::updateButtonVisibility  @ 0x3b0e0c
/* PlayerLobbyLocal::updateButtonVisibility() */

void __thiscall PlayerLobbyLocal::updateButtonVisibility(PlayerLobbyLocal *this)

{
  int iVar1;
  
  (**(code **)(**(int **)(this + 0x104) + 0x90))(*(undefined4 *)(this + 0x104),1);
  (**(code **)(**(int **)(this + 0x108) + 0x90))(*(undefined4 *)(this + 0x108),1);
  iVar1 = (**(code **)(*(int *)this + 0x1dc))(this);
  if (*(int *)(iVar1 + 0x118) != 3) {
    (**(code **)(**(int **)(this + 0x134) + 0x90))(*(undefined4 *)(this + 0x134),1);
    (**(code **)(**(int **)(this + 0x138) + 0x90))(*(undefined4 *)(this + 0x138),1);
  }
  return;
}

// ---- PlayerLobbyLocal::updateCountDown  @ 0x3b0e9c
/* PlayerLobbyLocal::updateCountDown(float) */

void __thiscall PlayerLobbyLocal::updateCountDown(PlayerLobbyLocal *this,float param_1)

{
  bool bVar1;
  uint uVar2;
  int iVar3;
  CCString *this_00;
  undefined4 uVar4;
  float in_r1;
  PlayerLobbyLocal PVar5;
  code *pcVar6;
  undefined4 uVar7;
  float fVar8;
  undefined1 local_20;
  undefined1 local_1f;
  undefined1 local_1e;
  CCDictElement *local_1c;
  CCDictElement *local_18;
  int local_14;
  
  uVar2 = cocos2d::CCDictionary::count(*(CCDictionary **)(this + 0x124));
  this[0x14c] = (PlayerLobbyLocal)(1 < uVar2);
  if (s_bLocalHost != '\0') {
    this[0x14c] = (PlayerLobbyLocal)0x1;
  }
  local_1c = (CCDictElement *)0x0;
  local_18 = (CCDictElement *)0x0;
  if ((*(int *)(this + 0x124) == 0) ||
     (iVar3 = cocos2d::CCDictionary::count(*(CCDictionary **)(this + 0x124)), iVar3 == 0)) {
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
      if ((this[0x14c] == (PlayerLobbyLocal)0x0) || (*(int *)(local_14 + 0x118) != 3)) {
        PVar5 = (PlayerLobbyLocal)0x0;
      }
      else {
        PVar5 = (PlayerLobbyLocal)0x1;
      }
      this[0x14c] = PVar5;
      local_1c = local_18;
      if (local_18 == (CCDictElement *)0x0) {
        local_18 = (CCDictElement *)0x0;
      }
      else {
        local_18 = *(CCDictElement **)(local_18 + 0x110);
      }
    }
  }
  (**(code **)(**(int **)(this + 0x128) + 0x23c))
            (*(undefined4 *)(this + 0x128),"WAITING FOR PLAYERS TO JOIN...");
  if (this[0x14c] == (PlayerLobbyLocal)0x0) {
    *(undefined4 *)(this + 0x148) = 0x41200000;
  }
  else {
    if (*(float *)(this + 0x148) - in_r1 <= 0.0) {
      fVar8 = 0.0;
    }
    else {
      fVar8 = *(float *)(this + 0x148) - in_r1;
    }
    *(float *)(this + 0x148) = fVar8;
    pcVar6 = *(code **)(**(int **)(this + 0x128) + 0x23c);
    uVar7 = *(undefined4 *)(this + 0x128);
    this_00 = (CCString *)
              cocos2d::CCString::createWithFormat
                        ("GAME STARTS IN: %d",(int)*(float *)(this + 0x148));
    uVar4 = cocos2d::CCString::getCString(this_00);
    (*pcVar6)(uVar7,uVar4);
    if ((int)((uint)(*(float *)(this + 0x148) < 5.0) << 0x1f) < 0) {
      pcVar6 = *(code **)(**(int **)(this + 0x128) + 0x1bc);
      uVar7 = *(undefined4 *)(this + 0x128);
      uVar4 = FUN_003afbd4(0xff,0,0);
      local_20 = (undefined1)uVar4;
      local_1f = (undefined1)((uint)uVar4 >> 8);
      local_1e = (undefined1)((uint)uVar4 >> 0x10);
      (*pcVar6)(uVar7,&local_20);
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

// ---- PlayerLobbyLocal::alertResponse  @ 0x3b110c
/* PlayerLobbyLocal::alertResponse(int) */

void __thiscall PlayerLobbyLocal::alertResponse(PlayerLobbyLocal *this,int param_1)

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

// ---- PlayerLobbyLocal::updateReadyLabel  @ 0x3b117c
/* PlayerLobbyLocal::updateReadyLabel() */

void __thiscall PlayerLobbyLocal::updateReadyLabel(PlayerLobbyLocal *this)

{
  if (s_bLocalHost == '\0') {
    (**(code **)(**(int **)(this + 0x108) + 0x1f8))(*(undefined4 *)(this + 0x108),"READY");
  }
  else {
    (**(code **)(**(int **)(this + 0x108) + 0x1f8))(*(undefined4 *)(this + 0x108),"START");
  }
  return;
}
