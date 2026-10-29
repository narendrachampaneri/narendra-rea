// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 36 functions

// ---- PlayerLobbyOnlineHosted::create  @ 0x360ea4
/* PlayerLobbyOnlineHosted::create() */

PlayerLobbyOnlineHosted * PlayerLobbyOnlineHosted::create(void)

{
  bool bVar1;
  PlayerLobbyOnlineHosted *this;
  int iVar2;
  
  this = operator_new(0x19c);
  PlayerLobbyOnlineHosted(this);
  if ((this == (PlayerLobbyOnlineHosted *)0x0) ||
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
    if (this != (PlayerLobbyOnlineHosted *)0x0) {
      (**(code **)(*(int *)this + 8))(this);
    }
    this = (PlayerLobbyOnlineHosted *)0x0;
  }
  return this;
}

// ---- PlayerLobbyOnlineHosted::PlayerLobbyOnlineHosted  @ 0x3b6b84
/* PlayerLobbyOnlineHosted::PlayerLobbyOnlineHosted() */

PlayerLobbyOnlineHosted * __thiscall
PlayerLobbyOnlineHosted::PlayerLobbyOnlineHosted(PlayerLobbyOnlineHosted *this)

{
  PlayerLobby::PlayerLobby((PlayerLobby *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_00917c20;
  *(undefined ***)(this + 0xe4) = &PTR__PlayerLobbyOnlineHosted_1_00917e7c;
  *(undefined ***)(this + 0xe8) = &PTR__PlayerLobbyOnlineHosted_1_00917ea4;
  *(undefined ***)(this + 0xec) = &PTR__PlayerLobbyOnlineHosted_1_00917ec4;
  return this;
}

// ---- PlayerLobbyOnlineHosted::init  @ 0x3b6bdc
/* PlayerLobbyOnlineHosted::init() */

undefined4 __thiscall PlayerLobbyOnlineHosted::init(PlayerLobbyOnlineHosted *this)

{
  char cVar1;
  CCArray *this_00;
  time_t tVar2;
  uint uVar3;
  CCString *this_01;
  CCNotificationCenter *pCVar4;
  uint extraout_r1;
  undefined4 uVar5;
  uint local_74;
  
  cVar1 = PlayerLobby::init((PlayerLobby *)this);
  if (cVar1 == '\x01') {
    uVar5 = MapVoteLayer::create();
    *(undefined4 *)(this + 0x198) = uVar5;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x198));
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x198));
    (**(code **)(**(int **)(this + 0x198) + 0x90))(*(undefined4 *)(this + 0x198),0);
    (**(code **)(**(int **)(this + 0x198) + 0x4c))(*(undefined4 *)(this + 0x198),&offScreenPos);
    *(undefined4 *)(this + 0x17c) = 0;
    this[0x188] = (PlayerLobbyOnlineHosted)0x0;
    this[0x189] = (PlayerLobbyOnlineHosted)0x0;
    *(undefined4 *)(this + 0x180) = 0x41c80000;
    *(undefined4 *)(this + 0x184) = 0;
    this[0x18a] = (PlayerLobbyOnlineHosted)0x0;
    gameType = 4;
    mapType = 3;
    this_00 = (CCArray *)cocos2d::CCDictionary::allKeys(multiplayerMaps);
    tVar2 = time((time_t *)0x0);
    uVar5 = cocos2d::CCArray::count(this_00);
    __aeabi_uidivmod(tVar2,uVar5);
    uVar3 = cocos2d::CCArray::count(this_00);
    local_74 = extraout_r1;
    if (uVar3 <= extraout_r1) {
      local_74 = 0;
    }
    this_01 = (CCString *)cocos2d::CCArray::objectAtIndex(this_00,local_74);
    uVar5 = cocos2d::CCString::getCString(this_01);
    FUN_007c5e70(&hostMapName,uVar5);
    pCVar4 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    cocos2d::CCNotificationCenter::addObserver
              (pCVar4,(CCObject *)this,(_func_void_CCObject_ptr *)0x3b8a71,(char *)0x0,
               (CCObject *)"CancelCountDown");
    pCVar4 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    cocos2d::CCNotificationCenter::addObserver
              (pCVar4,(CCObject *)this,(_func_void_CCObject_ptr *)0x3b8a5d,(char *)0x0,
               (CCObject *)"StartCountDown");
    pCVar4 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    cocos2d::CCNotificationCenter::addObserver
              (pCVar4,(CCObject *)this,(_func_void_CCObject_ptr *)0x3b8e09,(char *)0x0,
               (CCObject *)"StartHostedGame");
    pCVar4 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    cocos2d::CCNotificationCenter::addObserver
              (pCVar4,(CCObject *)this,(_func_void_CCObject_ptr *)0x3b8e29,(char *)0x0,
               (CCObject *)"AllServerConnectionsFailed");
    pCVar4 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    cocos2d::CCNotificationCenter::addObserver
              (pCVar4,(CCObject *)this,(_func_void_CCObject_ptr *)0x3b8fa5,(char *)0x0,
               (CCObject *)"ServerFull");
    pCVar4 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    cocos2d::CCNotificationCenter::addObserver
              (pCVar4,(CCObject *)this,(_func_void_CCObject_ptr *)0x3b9241,(char *)0x0,
               (CCObject *)"ServerPlayerCount");
    pCVar4 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    cocos2d::CCNotificationCenter::addObserver
              (pCVar4,(CCObject *)this,(_func_void_CCObject_ptr *)0x3b9121,(char *)0x0,
               (CCObject *)"ConnectionLost");
    pCVar4 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    cocos2d::CCNotificationCenter::addObserver
              (pCVar4,(CCObject *)this,(_func_void_CCObject_ptr *)0x3b925d,(char *)0x0,
               (CCObject *)"HostedGameClosed");
    pCVar4 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    cocos2d::CCNotificationCenter::addObserver
              (pCVar4,(CCObject *)this,(_func_void_CCObject_ptr *)0x3b9279,(char *)0x0,
               (CCObject *)"SetServerMap");
    pCVar4 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    cocos2d::CCNotificationCenter::addObserver
              (pCVar4,(CCObject *)this,(_func_void_CCObject_ptr *)0x3b947d,(char *)0x0,
               (CCObject *)"MapVoteDone");
    pCVar4 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    cocos2d::CCNotificationCenter::addObserver
              (pCVar4,(CCObject *)this,(_func_void_CCObject_ptr *)0x3b95ed,(char *)0x0,
               (CCObject *)"ServerStatusUpdate");
    uVar5 = 1;
  }
  else {
    uVar5 = 0;
  }
  return uVar5;
}

// ---- PlayerLobbyOnlineHosted::~PlayerLobbyOnlineHosted  @ 0x3b6f4c
/* WARNING: Removing unreachable block (ram,0x003b700a) */
/* PlayerLobbyOnlineHosted::~PlayerLobbyOnlineHosted() */

PlayerLobbyOnlineHosted * __thiscall
PlayerLobbyOnlineHosted::~PlayerLobbyOnlineHosted(PlayerLobbyOnlineHosted *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_00917c20;
  *(undefined ***)(this + 0xe4) = &PTR__PlayerLobbyOnlineHosted_1_00917e7c;
  *(undefined ***)(this + 0xe8) = &PTR__PlayerLobbyOnlineHosted_1_00917ea4;
  *(undefined ***)(this + 0xec) = &PTR__PlayerLobbyOnlineHosted_1_00917ec4;
  cocos2d::CCObject::release(*(CCObject **)(this + 400));
  (**(code **)(**(int **)(this + 0x18c) + 0xe8))(*(undefined4 *)(this + 0x18c));
  (**(code **)(**(int **)(this + 0x198) + 0xe8))(*(undefined4 *)(this + 0x198));
  (**(code **)(**(int **)(this + 0x194) + 0xe8))(*(undefined4 *)(this + 0x194));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x198));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x194));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x18c));
  PlayerLobby::~PlayerLobby((PlayerLobby *)this);
  return this;
}

// ---- PlayerLobbyOnlineHosted::~PlayerLobbyOnlineHosted  @ 0x3b7024
/* non-virtual thunk to PlayerLobbyOnlineHosted::~PlayerLobbyOnlineHosted() */

void __thiscall PlayerLobbyOnlineHosted::~PlayerLobbyOnlineHosted(PlayerLobbyOnlineHosted *this)

{
  ~PlayerLobbyOnlineHosted(this + -0xe4);
  return;
}

// ---- PlayerLobbyOnlineHosted::~PlayerLobbyOnlineHosted  @ 0x3b702c
/* non-virtual thunk to PlayerLobbyOnlineHosted::~PlayerLobbyOnlineHosted() */

void __thiscall PlayerLobbyOnlineHosted::~PlayerLobbyOnlineHosted(PlayerLobbyOnlineHosted *this)

{
  ~PlayerLobbyOnlineHosted(this + -0xe8);
  return;
}

// ---- PlayerLobbyOnlineHosted::~PlayerLobbyOnlineHosted  @ 0x3b7034
/* non-virtual thunk to PlayerLobbyOnlineHosted::~PlayerLobbyOnlineHosted() */

void __thiscall PlayerLobbyOnlineHosted::~PlayerLobbyOnlineHosted(PlayerLobbyOnlineHosted *this)

{
  ~PlayerLobbyOnlineHosted(this + -0xec);
  return;
}

// ---- PlayerLobbyOnlineHosted::~PlayerLobbyOnlineHosted  @ 0x3b703c
/* PlayerLobbyOnlineHosted::~PlayerLobbyOnlineHosted() */

PlayerLobbyOnlineHosted * __thiscall
PlayerLobbyOnlineHosted::~PlayerLobbyOnlineHosted(PlayerLobbyOnlineHosted *this)

{
  ~PlayerLobbyOnlineHosted(this);
  operator_delete(this);
  return this;
}

// ---- PlayerLobbyOnlineHosted::~PlayerLobbyOnlineHosted  @ 0x3b7058
/* non-virtual thunk to PlayerLobbyOnlineHosted::~PlayerLobbyOnlineHosted() */

void __thiscall PlayerLobbyOnlineHosted::~PlayerLobbyOnlineHosted(PlayerLobbyOnlineHosted *this)

{
  ~PlayerLobbyOnlineHosted(this + -0xe4);
  return;
}

// ---- PlayerLobbyOnlineHosted::~PlayerLobbyOnlineHosted  @ 0x3b7060
/* non-virtual thunk to PlayerLobbyOnlineHosted::~PlayerLobbyOnlineHosted() */

void __thiscall PlayerLobbyOnlineHosted::~PlayerLobbyOnlineHosted(PlayerLobbyOnlineHosted *this)

{
  ~PlayerLobbyOnlineHosted(this + -0xe8);
  return;
}

// ---- PlayerLobbyOnlineHosted::~PlayerLobbyOnlineHosted  @ 0x3b7068
/* non-virtual thunk to PlayerLobbyOnlineHosted::~PlayerLobbyOnlineHosted() */

void __thiscall PlayerLobbyOnlineHosted::~PlayerLobbyOnlineHosted(PlayerLobbyOnlineHosted *this)

{
  ~PlayerLobbyOnlineHosted(this + -0xec);
  return;
}

// ---- PlayerLobbyOnlineHosted::initMenu  @ 0x3b7070
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003b7744 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* PlayerLobbyOnlineHosted::initMenu() */

void __thiscall PlayerLobbyOnlineHosted::initMenu(PlayerLobbyOnlineHosted *this)

{
  undefined4 uVar1;
  char *pcVar2;
  int iVar3;
  CCString *this_00;
  undefined4 uVar4;
  code *pcVar5;
  uint in_fpscr;
  float fVar6;
  float extraout_s0;
  float extraout_s0_00;
  float extraout_s0_01;
  undefined8 in_d0;
  float extraout_s1;
  float extraout_s1_00;
  float extraout_s1_01;
  float extraout_s1_02;
  float extraout_s1_03;
  float extraout_s1_04;
  float extraout_s1_05;
  float extraout_s1_06;
  float extraout_s1_07;
  float extraout_s1_08;
  float extraout_s1_09;
  float extraout_s1_10;
  float extraout_s1_11;
  float extraout_s1_12;
  float extraout_s1_13;
  float extraout_s1_14;
  float extraout_s1_15;
  float extraout_s1_16;
  float extraout_s1_17;
  float extraout_s1_18;
  float extraout_s1_19;
  float extraout_s1_20;
  float extraout_s1_21;
  float extraout_s1_22;
  undefined1 auStack_108 [4];
  undefined1 auStack_104 [4];
  undefined4 local_100;
  CCNode *local_fc;
  CCNode *local_f8;
  CCNode *local_f4;
  CCNode *local_f0;
  CCNode *local_ec;
  CCNode *local_e8;
  CCNode *local_e4;
  CCNode *local_e0;
  CCNode *local_dc;
  CCNode *local_d8;
  CCNode *local_d4;
  CCNode *local_d0;
  CCNode *local_cc;
  CCNode *local_c8;
  CCMenuItem *local_c4;
  CCMenuItem *local_c0;
  CCMenuItem *local_bc;
  CCMenuItem *local_b8;
  CCMenuItem *local_b4;
  CCMenuItem *local_b0;
  CCMenuItem *local_ac;
  undefined4 local_a8;
  float local_a4;
  float local_a0;
  int *local_9c;
  CCPoint local_98 [8];
  CCPoint aCStack_90 [8];
  CCPoint aCStack_88 [8];
  CCPoint aCStack_80 [8];
  code *local_78;
  undefined4 local_74;
  undefined4 local_70;
  undefined4 local_6c;
  undefined4 local_68;
  undefined4 local_64;
  undefined4 local_60;
  undefined4 local_5c;
  undefined4 local_58;
  undefined4 local_54;
  undefined4 local_50;
  undefined4 local_4c;
  code *local_48;
  undefined4 local_44;
  undefined1 local_40 [16];
  CCPoint local_30;
  undefined1 local_2f;
  undefined1 local_2e;
  
  cocos2d::CCPoint::CCPoint(&local_30,(float)in_d0,(float)((ulonglong)in_d0 >> 0x20));
  fVar6 = (float)cocos2d::CCPoint::operator=((CCPoint *)(this + 0x170),&local_30);
  cocos2d::CCPoint::CCPoint(local_98,fVar6,extraout_s1);
  local_100 = 0xc2b40000;
  *(undefined4 *)(this + 0x148) = 0x41200000;
  local_fc = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_mid.png");
  local_f8 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_mid.png");
  local_f4 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_mid.png");
  local_f0 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_mid.png");
  local_ec = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_mid.png");
  local_e8 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_mid.png");
  local_e4 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_sml.png");
  local_e0 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_sml.png");
  local_dc = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_sml.png");
  local_d8 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_sml.png");
  local_d4 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_sml.png");
  local_d0 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_sml.png");
  local_cc = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_sml.png");
  local_c8 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_sml.png");
  local_78 = (code *)0x3b950d;
  local_74 = 0;
  local_c4 = (CCMenuItem *)
             cocos2d::CCMenuItemSprite::create
                       (local_fc,local_f8,(CCObject *)this,(_func_void_CCObject_ptr *)0x3b950d);
  local_70 = 0x208;
  local_6c = 1;
  local_c0 = (CCMenuItem *)
             cocos2d::CCMenuItemSprite::create
                       (local_e4,local_e0,(CCObject *)this,(_func_void_CCObject_ptr *)0x208);
  local_68 = 0x20c;
  local_64 = 1;
  local_bc = (CCMenuItem *)
             cocos2d::CCMenuItemSprite::create
                       (local_dc,local_d8,(CCObject *)this,(_func_void_CCObject_ptr *)0x20c);
  local_60 = 0x210;
  local_5c = 1;
  local_b8 = (CCMenuItem *)
             cocos2d::CCMenuItemSprite::create
                       (local_f4,local_f0,(CCObject *)this,(_func_void_CCObject_ptr *)0x210);
  local_58 = 0x214;
  local_54 = 1;
  local_b4 = (CCMenuItem *)
             cocos2d::CCMenuItemSprite::create
                       (local_ec,local_e8,(CCObject *)this,(_func_void_CCObject_ptr *)0x214);
  local_50 = 0x1f0;
  local_4c = 1;
  local_b0 = (CCMenuItem *)
             cocos2d::CCMenuItemSprite::create
                       (local_d4,local_d0,(CCObject *)this,(_func_void_CCObject_ptr *)0x1f0);
  local_48 = (code *)0x3b93bd;
  local_44 = 0;
  local_ac = (CCMenuItem *)
             cocos2d::CCMenuItemSprite::create
                       (local_cc,local_c8,(CCObject *)this,(_func_void_CCObject_ptr *)0x3b93bd);
  uVar1 = cocos2d::CCMenu::create(local_b4,0);
  *(undefined4 *)(this + 0x11c) = uVar1;
  fVar6 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x11c));
  pcVar5 = *(code **)(**(int **)(this + 0x11c) + 0x4c);
  uVar1 = *(undefined4 *)(this + 0x11c);
  cocos2d::CCPoint::CCPoint(&local_30,fVar6,extraout_s1_00);
  (*pcVar5)(uVar1,&local_30);
  (**(code **)(**(int **)(this + 0x144) + 200))
            (*(undefined4 *)(this + 0x144),*(undefined4 *)(this + 0x11c));
  uVar1 = cocos2d::CCMenu::create(local_c4,0);
  *(undefined4 *)(this + 0x104) = uVar1;
  fVar6 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x104));
  pcVar5 = *(code **)(**(int **)(this + 0x104) + 0x4c);
  uVar1 = *(undefined4 *)(this + 0x104);
  cocos2d::CCPoint::CCPoint(&local_30,fVar6,extraout_s1_01);
  (*pcVar5)(uVar1,&local_30);
  (**(code **)(**(int **)(this + 0x144) + 200))
            (*(undefined4 *)(this + 0x144),*(undefined4 *)(this + 0x104));
  uVar1 = cocos2d::CCMenu::create(local_b8,0);
  *(undefined4 *)(this + 0x114) = uVar1;
  fVar6 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x114));
  pcVar5 = *(code **)(**(int **)(this + 0x114) + 0x4c);
  uVar1 = *(undefined4 *)(this + 0x114);
  cocos2d::CCPoint::CCPoint(&local_30,fVar6,extraout_s1_02);
  (*pcVar5)(uVar1,&local_30);
  (**(code **)(**(int **)(this + 0x144) + 200))
            (*(undefined4 *)(this + 0x144),*(undefined4 *)(this + 0x114));
  uVar1 = cocos2d::CCMenu::create(local_b0,0);
  *(undefined4 *)(this + 0x134) = uVar1;
  fVar6 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x134));
  pcVar5 = *(code **)(**(int **)(this + 0x134) + 0x4c);
  uVar1 = *(undefined4 *)(this + 0x134);
  cocos2d::CCPoint::CCPoint(&local_30,fVar6,extraout_s1_03);
  (*pcVar5)(uVar1,&local_30);
  (**(code **)(**(int **)(this + 0x144) + 200))
            (*(undefined4 *)(this + 0x144),*(undefined4 *)(this + 0x134));
  uVar1 = cocos2d::CCMenu::create(local_ac,0);
  *(undefined4 *)(this + 0x194) = uVar1;
  fVar6 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x194));
  pcVar5 = *(code **)(**(int **)(this + 0x194) + 0x4c);
  uVar1 = *(undefined4 *)(this + 0x194);
  cocos2d::CCPoint::CCPoint(&local_30,fVar6,extraout_s1_04);
  (*pcVar5)(uVar1,&local_30);
  (**(code **)(**(int **)(this + 0x144) + 200))
            (*(undefined4 *)(this + 0x144),*(undefined4 *)(this + 0x194));
  uVar1 = cocos2d::CCMenu::create(local_c0,0);
  *(undefined4 *)(this + 0x10c) = uVar1;
  fVar6 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x10c));
  pcVar5 = *(code **)(**(int **)(this + 0x10c) + 0x4c);
  uVar1 = *(undefined4 *)(this + 0x10c);
  cocos2d::CCPoint::CCPoint(&local_30,fVar6,extraout_s1_05);
  (*pcVar5)(uVar1,&local_30);
  (**(code **)(**(int **)(this + 0x144) + 200))
            (*(undefined4 *)(this + 0x144),*(undefined4 *)(this + 0x10c));
  uVar1 = cocos2d::CCMenu::create(local_bc,0);
  *(undefined4 *)(this + 0x13c) = uVar1;
  fVar6 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x13c));
  pcVar5 = *(code **)(**(int **)(this + 0x13c) + 0x4c);
  uVar1 = *(undefined4 *)(this + 0x13c);
  cocos2d::CCPoint::CCPoint(&local_30,fVar6,extraout_s1_06);
  (*pcVar5)(uVar1,&local_30);
  (**(code **)(**(int **)(this + 0x144) + 200))
            (*(undefined4 *)(this + 0x144),*(undefined4 *)(this + 0x13c));
  local_a8 = 0x3f0ccccd;
  local_a4 = 24.0;
  local_a0 = -8.0;
  pcVar2 = (char *)FUN_007c5300(&DAT_00951194);
  uVar1 = cocos2d::CCLabelAtlas::create("READY",pcVar2,0x20,0x20,0x20);
  *(undefined4 *)(this + 0x108) = uVar1;
  cocos2d::CCObject::retain(*(CCObject **)(this + 0x108));
  cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x108),(int)local_a4);
  (**(code **)(**(int **)(this + 0x108) + 0x40))(*(undefined4 *)(this + 0x108),local_a8);
  (**(code **)(**(int **)(this + 0x104) + 0x50))(*(undefined4 *)(this + 0x104));
  fVar6 = (float)(**(code **)(**(int **)(this + 0x104) + 0x50))(*(undefined4 *)(this + 0x104));
  cocos2d::CCPoint::CCPoint(aCStack_90,fVar6,extraout_s1_07);
  FUN_003b3f8c(0,extraout_s1_07,SUB84((double)local_a0,0),local_40);
  uVar1 = (**(code **)(**(int **)(this + 0x108) + 0x1fc))(*(undefined4 *)(this + 0x108));
  FUN_0079a3f4(auStack_108);
  FUN_007c6a60(auStack_104,uVar1,auStack_108);
  uVar1 = FUN_007c505c(auStack_104);
  VectorUnsignedToFloat(uVar1,(byte)(in_fpscr >> 0x16) & 3);
  fVar6 = (float)FUN_003b3f8c(0,extraout_s1_07,SUB84((double)local_a0,0),&local_30);
  cocos2d::CCPoint::CCPoint(aCStack_88,fVar6,extraout_s1_08);
  FUN_003b3f6c(aCStack_80,aCStack_90,aCStack_88);
  cocos2d::CCPoint::operator=((CCPoint *)(this + 0x15c),aCStack_80);
  FUN_007c5914(auStack_104);
  FUN_0079a3fc(auStack_108);
  (**(code **)(**(int **)(this + 0x108) + 0x4c))(*(undefined4 *)(this + 0x108),this + 0x15c);
  (**(code **)(**(int **)(this + 0x144) + 200))
            (*(undefined4 *)(this + 0x144),*(undefined4 *)(this + 0x108));
  pcVar2 = (char *)FUN_007c5300(&DAT_00951194);
  uVar1 = cocos2d::CCLabelAtlas::create("### CHAT FILTER ON ###",pcVar2,0x20,0x20,0x20);
  *(undefined4 *)(this + 0x130) = uVar1;
  cocos2d::CCObject::retain(*(CCObject **)(this + 0x130));
  cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x130),(int)local_a4);
  fVar6 = (float)(**(code **)(**(int **)(this + 0x130) + 0x40))
                           (*(undefined4 *)(this + 0x130),0x3eb33333);
  pcVar5 = *(code **)(**(int **)(this + 0x130) + 0x4c);
  uVar1 = *(undefined4 *)(this + 0x130);
  cocos2d::CCPoint::CCPoint(&local_30,fVar6,extraout_s1_09);
  (*pcVar5)(uVar1,&local_30);
  (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x130));
  pcVar5 = *(code **)(**(int **)(this + 0x130) + 0x1bc);
  uVar4 = *(undefined4 *)(this + 0x130);
  uVar1 = FUN_003b3f10(0xff,0,0);
  local_30 = SUB41(uVar1,0);
  local_2f = (undefined1)((uint)uVar1 >> 8);
  local_2e = (undefined1)((uint)uVar1 >> 0x10);
  (*pcVar5)(uVar4,&local_30);
  (**(code **)(**(int **)(this + 0x130) + 0x90))(*(undefined4 *)(this + 0x130),0);
  pcVar2 = (char *)FUN_007c5300(&DAT_00951194);
  uVar1 = cocos2d::CCLabelAtlas::create("SEARCH",pcVar2,0x20,0x20,0x20);
  *(undefined4 *)(this + 0x120) = uVar1;
  cocos2d::CCObject::retain(*(CCObject **)(this + 0x120));
  cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x120),(int)local_a4);
  (**(code **)(**(int **)(this + 0x120) + 0x40))(*(undefined4 *)(this + 0x120),local_a8);
  (**(code **)(**(int **)(this + 0x11c) + 0x50))(*(undefined4 *)(this + 0x11c));
  fVar6 = (float)(**(code **)(**(int **)(this + 0x11c) + 0x50))(*(undefined4 *)(this + 0x11c));
  cocos2d::CCPoint::CCPoint(aCStack_90,fVar6,extraout_s1_10);
  FUN_003b3f8c(0,extraout_s1_10,SUB84((double)local_a0,0),local_40);
  uVar1 = (**(code **)(**(int **)(this + 0x120) + 0x1fc))(*(undefined4 *)(this + 0x120));
  FUN_0079a3f4(auStack_108);
  FUN_007c6a60(auStack_104,uVar1,auStack_108);
  uVar1 = FUN_007c505c(auStack_104);
  VectorUnsignedToFloat(uVar1,(byte)(in_fpscr >> 0x16) & 3);
  fVar6 = (float)FUN_003b3f8c(0,extraout_s1_10,SUB84((double)local_a0,0),&local_30);
  cocos2d::CCPoint::CCPoint(aCStack_88,fVar6,extraout_s1_11);
  FUN_003b3f6c(aCStack_80,aCStack_90,aCStack_88);
  cocos2d::CCPoint::operator=((CCPoint *)(this + 0x154),aCStack_80);
  FUN_007c5914(auStack_104);
  FUN_0079a3fc(auStack_108);
  (**(code **)(**(int **)(this + 0x120) + 0x4c))(*(undefined4 *)(this + 0x120),this + 0x154);
  (**(code **)(**(int **)(this + 0x144) + 200))
            (*(undefined4 *)(this + 0x144),*(undefined4 *)(this + 0x120));
  pcVar2 = (char *)FUN_007c5300(&DAT_00951194);
  uVar1 = cocos2d::CCLabelAtlas::create("INVITE",pcVar2,0x20,0x20,0x20);
  *(undefined4 *)(this + 0x118) = uVar1;
  cocos2d::CCObject::retain(*(CCObject **)(this + 0x118));
  cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x118),(int)local_a4);
  (**(code **)(**(int **)(this + 0x118) + 0x40))(*(undefined4 *)(this + 0x118),local_a8);
  pcVar5 = *(code **)(**(int **)(this + 0x118) + 0x4c);
  uVar4 = *(undefined4 *)(this + 0x118);
  (**(code **)(**(int **)(this + 0x114) + 0x50))(*(undefined4 *)(this + 0x114));
  fVar6 = (float)(**(code **)(**(int **)(this + 0x114) + 0x50))(*(undefined4 *)(this + 0x114));
  cocos2d::CCPoint::CCPoint(aCStack_90,fVar6,extraout_s1_12);
  FUN_003b3f8c(0,extraout_s1_12,SUB84((double)local_a0,0),local_40);
  uVar1 = (**(code **)(**(int **)(this + 0x118) + 0x1fc))(*(undefined4 *)(this + 0x118));
  FUN_0079a3f4(auStack_108);
  FUN_007c6a60(auStack_104,uVar1,auStack_108);
  uVar1 = FUN_007c505c(auStack_104);
  VectorUnsignedToFloat(uVar1,(byte)(in_fpscr >> 0x16) & 3);
  fVar6 = (float)FUN_003b3f8c(0,extraout_s1_12,SUB84((double)local_a0,0),&local_30);
  cocos2d::CCPoint::CCPoint(aCStack_88,fVar6,extraout_s1_13);
  FUN_003b3f6c(aCStack_80,aCStack_90,aCStack_88);
  (*pcVar5)(uVar4,aCStack_80);
  FUN_007c5914(auStack_104);
  FUN_0079a3fc(auStack_108);
  (**(code **)(**(int **)(this + 0x144) + 200))
            (*(undefined4 *)(this + 0x144),*(undefined4 *)(this + 0x118));
  uVar1 = cocos2d::CCSprite::createWithSpriteFrameName("cog.png");
  *(undefined4 *)(this + 0x138) = uVar1;
  cocos2d::CCObject::retain(*(CCObject **)(this + 0x138));
  pcVar5 = *(code **)(**(int **)(this + 0x138) + 0x4c);
  uVar4 = *(undefined4 *)(this + 0x138);
  uVar1 = (**(code **)(**(int **)(this + 0x134) + 0x50))(*(undefined4 *)(this + 0x134));
  (*pcVar5)(uVar4,uVar1);
  (**(code **)(**(int **)(this + 0x144) + 200))
            (*(undefined4 *)(this + 0x144),*(undefined4 *)(this + 0x138));
  uVar1 = cocos2d::CCSprite::createWithSpriteFrameName("msg.png");
  *(undefined4 *)(this + 0x140) = uVar1;
  cocos2d::CCObject::retain(*(CCObject **)(this + 0x140));
  pcVar5 = *(code **)(**(int **)(this + 0x140) + 0x4c);
  uVar4 = *(undefined4 *)(this + 0x140);
  uVar1 = (**(code **)(**(int **)(this + 0x13c) + 0x50))(*(undefined4 *)(this + 0x13c));
  (*pcVar5)(uVar4,uVar1);
  (**(code **)(**(int **)(this + 0x144) + 200))
            (*(undefined4 *)(this + 0x144),*(undefined4 *)(this + 0x140));
  pcVar2 = (char *)FUN_007c5300(&DAT_00951194);
  uVar1 = cocos2d::CCLabelAtlas::create("MAP",pcVar2,0x20,0x20,0x20);
  *(undefined4 *)(this + 0x18c) = uVar1;
  cocos2d::CCObject::retain(*(CCObject **)(this + 0x18c));
  cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x18c),(int)local_a4);
  (**(code **)(**(int **)(this + 0x18c) + 0x40))(*(undefined4 *)(this + 0x18c),local_a8);
  pcVar5 = *(code **)(**(int **)(this + 0x18c) + 0x4c);
  uVar4 = *(undefined4 *)(this + 0x18c);
  (**(code **)(**(int **)(this + 0x194) + 0x50))(*(undefined4 *)(this + 0x194));
  fVar6 = (float)(**(code **)(**(int **)(this + 0x194) + 0x50))(*(undefined4 *)(this + 0x194));
  cocos2d::CCPoint::CCPoint(aCStack_90,fVar6,extraout_s1_14);
  FUN_003b3f8c(0,extraout_s1_14,SUB84((double)local_a0,0),local_40);
  uVar1 = (**(code **)(**(int **)(this + 0x18c) + 0x1fc))(*(undefined4 *)(this + 0x18c));
  FUN_0079a3f4(auStack_108);
  FUN_007c6a60(auStack_104,uVar1,auStack_108);
  uVar1 = FUN_007c505c(auStack_104);
  VectorUnsignedToFloat(uVar1,(byte)(in_fpscr >> 0x16) & 3);
  fVar6 = (float)FUN_003b3f8c(0,extraout_s1_14,SUB84((double)local_a0,0),&local_30);
  cocos2d::CCPoint::CCPoint(aCStack_88,fVar6,extraout_s1_15);
  FUN_003b3f6c(aCStack_80,aCStack_90,aCStack_88);
  (*pcVar5)(uVar4,aCStack_80);
  FUN_007c5914(auStack_104);
  FUN_0079a3fc(auStack_108);
  (**(code **)(**(int **)(this + 0x144) + 200))
            (*(undefined4 *)(this + 0x144),*(undefined4 *)(this + 0x18c));
  pcVar2 = (char *)FUN_007c5300(&DAT_00951194);
  uVar1 = cocos2d::CCLabelAtlas::create("EXIT",pcVar2,0x20,0x20,0x20);
  *(undefined4 *)(this + 0x110) = uVar1;
  cocos2d::CCObject::retain(*(CCObject **)(this + 0x110));
  cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x110),(int)local_a4);
  (**(code **)(**(int **)(this + 0x110) + 0x40))(*(undefined4 *)(this + 0x110),local_a8);
  pcVar5 = *(code **)(**(int **)(this + 0x110) + 0x4c);
  uVar4 = *(undefined4 *)(this + 0x110);
  (**(code **)(**(int **)(this + 0x10c) + 0x50))(*(undefined4 *)(this + 0x10c));
  fVar6 = (float)(**(code **)(**(int **)(this + 0x10c) + 0x50))(*(undefined4 *)(this + 0x10c));
  cocos2d::CCPoint::CCPoint(aCStack_90,fVar6,extraout_s1_16);
  FUN_003b3f8c(0,extraout_s1_16,SUB84((double)local_a0,0),local_40);
  uVar1 = (**(code **)(**(int **)(this + 0x110) + 0x1fc))(*(undefined4 *)(this + 0x110));
  FUN_0079a3f4(auStack_108);
  FUN_007c6a60(auStack_104,uVar1,auStack_108);
  uVar1 = FUN_007c505c(auStack_104);
  VectorUnsignedToFloat(uVar1,(byte)(in_fpscr >> 0x16) & 3);
  fVar6 = (float)FUN_003b3f8c(0,extraout_s1_16,SUB84((double)local_a0,0),&local_30);
  cocos2d::CCPoint::CCPoint(aCStack_88,fVar6,extraout_s1_17);
  FUN_003b3f6c(aCStack_80,aCStack_90,aCStack_88);
  (*pcVar5)(uVar4,aCStack_80);
  FUN_007c5914(auStack_104);
  FUN_0079a3fc(auStack_108);
  (**(code **)(**(int **)(this + 0x144) + 200))
            (*(undefined4 *)(this + 0x144),*(undefined4 *)(this + 0x110));
  FUN_0079a3f4(&local_30);
  FUN_007c6a60(local_40,"CONNECTED: ",&local_30);
  FUN_0079a3fc(&local_30);
  iVar3 = NetworkManager::sharedNetworkManager();
  if (*(int *)(iVar3 + 0x110) != 0) {
    NetworkManager::sharedNetworkManager();
    RakNetDelegate::getCurrentServerName();
    FUN_007c6120(local_40,&local_30);
    FUN_007c5914(&local_30);
  }
  pcVar2 = (char *)FUN_007c5300(local_40);
  uVar1 = cocos2d::CCLabelTTF::create(pcVar2,"Arial-BoldMT",extraout_s0);
  *(undefined4 *)(this + 400) = uVar1;
  fVar6 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 400));
  pcVar5 = *(code **)(**(int **)(this + 400) + 0x7c);
  uVar1 = *(undefined4 *)(this + 400);
  cocos2d::CCPoint::CCPoint(&local_30,fVar6,extraout_s1_18);
  fVar6 = (float)(*pcVar5)(uVar1,&local_30);
  pcVar5 = *(code **)(**(int **)(this + 400) + 0x4c);
  uVar1 = *(undefined4 *)(this + 400);
  cocos2d::CCPoint::CCPoint(&local_30,fVar6,extraout_s1_19);
  (*pcVar5)(uVar1,&local_30);
  (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 400));
  NetworkManager::sharedNetworkManager();
  uVar1 = NetworkManager::getQuickplayPopulation();
  *(undefined4 *)(this + 0x184) = uVar1;
  this_00 = (CCString *)
            cocos2d::CCString::createWithFormat("PLAYERS ONLINE: %d",*(undefined4 *)(this + 0x184));
  pcVar2 = (char *)cocos2d::CCString::getCString(this_00);
  uVar1 = cocos2d::CCLabelTTF::create(pcVar2,"Arial-BoldMT",extraout_s0_00);
  *(undefined4 *)(this + 0x128) = uVar1;
  fVar6 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x128));
  pcVar5 = *(code **)(**(int **)(this + 0x128) + 0x7c);
  uVar1 = *(undefined4 *)(this + 0x128);
  cocos2d::CCPoint::CCPoint(&local_30,fVar6,extraout_s1_20);
  fVar6 = (float)(*pcVar5)(uVar1,&local_30);
  pcVar5 = *(code **)(**(int **)(this + 0x128) + 0x4c);
  uVar1 = *(undefined4 *)(this + 0x128);
  cocos2d::CCPoint::CCPoint(&local_30,fVar6,extraout_s1_21);
  (*pcVar5)(uVar1,&local_30);
  (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x128));
  local_9c = (int *)cocos2d::CCSprite::create("title_ret2_new.png");
  pcVar5 = *(code **)(*local_9c + 0x4c);
  cocos2d::CCPoint::CCPoint(&local_30,extraout_s0_01,extraout_s1_22);
  (*pcVar5)(local_9c,&local_30);
  (**(code **)(*local_9c + 0x1a4))(local_9c,0x23);
  (**(code **)(*(int *)this + 200))(this,local_9c);
  FUN_007c5914(local_40);
  return;
}

// ---- PlayerLobbyOnlineHosted::entered  @ 0x3b8520
/* PlayerLobbyOnlineHosted::entered() */

void __thiscall PlayerLobbyOnlineHosted::entered(PlayerLobbyOnlineHosted *this)

{
  char cVar1;
  NetworkManager *pNVar2;
  
  pNVar2 = (NetworkManager *)NetworkManager::sharedNetworkManager();
  cVar1 = NetworkManager::isConnected(pNVar2);
  if (cVar1 != '\x01') {
    pNVar2 = (NetworkManager *)NetworkManager::sharedNetworkManager();
    NetworkManager::connectToServer(pNVar2,true);
  }
  PlayerLobby::entered((PlayerLobby *)this);
  return;
}

// ---- PlayerLobbyOnlineHosted::onPlayerDisconnected  @ 0x3b855c
/* PlayerLobbyOnlineHosted::onPlayerDisconnected(cocos2d::CCObject*) */

void PlayerLobbyOnlineHosted::onPlayerDisconnected(CCObject *param_1)

{
  return;
}

// ---- PlayerLobbyOnlineHosted::onExitGame  @ 0x3b8568
/* PlayerLobbyOnlineHosted::onExitGame(cocos2d::CCObject*) */

void PlayerLobbyOnlineHosted::onExitGame(CCObject *param_1)

{
  CCObject *pCVar1;
  undefined4 uVar2;
  undefined1 auStack_30 [4];
  undefined1 auStack_2c [4];
  undefined1 auStack_28 [4];
  undefined1 auStack_24 [4];
  string asStack_20 [4];
  string asStack_1c [4];
  undefined1 auStack_18 [4];
  undefined1 auStack_14 [8];
  
  if (param_1[0xf0] == (CCObject)0x0) {
    Sound::playSound(sndEng,0xe);
    param_1[0xf1] = (CCObject)0x1;
    FUN_0079a3f4(auStack_28);
    FUN_007c6a60(auStack_18,"Confirm Exit",auStack_28);
    FUN_0079a3f4(auStack_24);
    FUN_007c6a60(auStack_14,"Are you sure you want to exit the lobby?",auStack_24);
    FUN_0079a3f4(auStack_30);
    FUN_007c6a60(asStack_20,"CANCEL",auStack_30);
    pCVar1 = (CCObject *)cocos2d::CCString::create(asStack_20);
    FUN_0079a3f4(auStack_2c);
    FUN_007c6a60(asStack_1c,&DAT_007e2f20,auStack_2c);
    uVar2 = cocos2d::CCString::create(asStack_1c);
    uVar2 = cocos2d::CCArray::create(pCVar1,uVar2,0);
    AMessageBox::showAlert(0x3b95c9,auStack_18,auStack_14,uVar2,0,param_1);
    FUN_007c5914(asStack_1c);
    FUN_0079a3fc(auStack_2c);
    FUN_007c5914(asStack_20);
    FUN_0079a3fc(auStack_30);
    FUN_007c5914(auStack_14);
    FUN_0079a3fc(auStack_24);
    FUN_007c5914(auStack_18);
    FUN_0079a3fc(auStack_28);
  }
  return;
}

// ---- PlayerLobbyOnlineHosted::updateCountDown  @ 0x3b86e4
/* PlayerLobbyOnlineHosted::updateCountDown(float) */

void __thiscall
PlayerLobbyOnlineHosted::updateCountDown(PlayerLobbyOnlineHosted *this,float param_1)

{
  NetworkManager *pNVar1;
  int iVar2;
  uint uVar3;
  CCString *pCVar4;
  undefined4 uVar5;
  float in_r1;
  code *pcVar6;
  undefined4 uVar7;
  float fVar8;
  undefined1 local_14;
  undefined1 local_13;
  undefined1 local_12;
  
  *(float *)(this + 0x180) = *(float *)(this + 0x180) + in_r1;
  if (30.0 < *(float *)(this + 0x180)) {
    pNVar1 = (NetworkManager *)NetworkManager::sharedNetworkManager();
    iVar2 = NetworkManager::isConnected(pNVar1);
    if (iVar2 == 0) {
      if ((this[0x189] != (PlayerLobbyOnlineHosted)0x1) &&
         (this[0x188] != (PlayerLobbyOnlineHosted)0x1)) {
        pNVar1 = (NetworkManager *)NetworkManager::sharedNetworkManager();
        NetworkManager::connectToServer(pNVar1,(bool)this[0x18a]);
        this[0x18a] = (PlayerLobbyOnlineHosted)0x0;
      }
    }
    else {
      pNVar1 = (NetworkManager *)NetworkManager::sharedNetworkManager();
      NetworkManager::requestNumPlayers(pNVar1);
    }
    *(undefined4 *)(this + 0x180) = 0;
  }
  uVar3 = cocos2d::CCDictionary::count(*(CCDictionary **)(this + 0x124));
  if (uVar3 < 2) {
    iVar2 = (**(code **)(*(int *)this + 0x1dc))(this);
    if (*(int *)(iVar2 + 0x118) == 3) {
      iVar2 = (**(code **)(*(int *)this + 0x1dc))(this);
      *(undefined4 *)(iVar2 + 0x118) = 1;
    }
    (**(code **)(**(int **)(this + 0x108) + 0x1f8))(*(undefined4 *)(this + 0x108),"READY");
    (**(code **)(**(int **)(this + 0x108) + 0x4c))(*(undefined4 *)(this + 0x108),this + 0x15c);
  }
  *(float *)(this + 0x17c) = *(float *)(this + 0x17c) + in_r1;
  if (*(float *)(this + 0x17c) <= 10.0) {
    if (*(float *)(this + 0x17c) <= 5.0) {
      (**(code **)(**(int **)(this + 0x128) + 0x23c))(*(undefined4 *)(this + 0x128),"SEARCHING...");
    }
    else {
      pcVar6 = *(code **)(**(int **)(this + 0x128) + 0x23c);
      uVar7 = *(undefined4 *)(this + 0x128);
      pCVar4 = (CCString *)
               cocos2d::CCString::createWithFormat
                         ("PLAYERS ONLINE: %d",*(undefined4 *)(this + 0x184));
      uVar5 = cocos2d::CCString::getCString(pCVar4);
      (*pcVar6)(uVar7,uVar5);
    }
  }
  else {
    *(undefined4 *)(this + 0x17c) = 0;
  }
  if (this[0x14c] == (PlayerLobbyOnlineHosted)0x0) {
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
    pCVar4 = (CCString *)
             cocos2d::CCString::createWithFormat("GAME STARTS IN: %d",(int)*(float *)(this + 0x148))
    ;
    uVar5 = cocos2d::CCString::getCString(pCVar4);
    (*pcVar6)(uVar7,uVar5);
    if ((int)((uint)(*(float *)(this + 0x148) < 5.0) << 0x1f) < 0) {
      pcVar6 = *(code **)(**(int **)(this + 0x128) + 0x1bc);
      uVar7 = *(undefined4 *)(this + 0x128);
      uVar5 = FUN_003b3f10(0xff,0,0);
      local_14 = (undefined1)uVar5;
      local_13 = (undefined1)((uint)uVar5 >> 8);
      local_12 = (undefined1)((uint)uVar5 >> 0x10);
      (*pcVar6)(uVar7,&local_14);
      (**(code **)(**(int **)(this + 0x104) + 0x90))(*(undefined4 *)(this + 0x104),0);
      (**(code **)(**(int **)(this + 0x108) + 0x90))(*(undefined4 *)(this + 0x108),0);
      (**(code **)(**(int **)(this + 0x134) + 0x90))(*(undefined4 *)(this + 0x134),0);
      (**(code **)(**(int **)(this + 0x138) + 0x90))(*(undefined4 *)(this + 0x138),0);
      iVar2 = (**(code **)(**(int **)(this + 0x16c) + 0x94))(*(undefined4 *)(this + 0x16c));
      if (iVar2 != 0) {
        (**(code **)(*(int *)this + 0x1e8))(this,0);
      }
      iVar2 = (**(code **)(**(int **)(this + 0x198) + 0x94))(*(undefined4 *)(this + 0x198));
      if (iVar2 != 0) {
        onAfterMapVote(this,(CCObject *)0x0);
      }
    }
  }
  return;
}

// ---- PlayerLobbyOnlineHosted::onStartCountDown  @ 0x3b8a5c
/* PlayerLobbyOnlineHosted::onStartCountDown(cocos2d::CCObject*) */

void PlayerLobbyOnlineHosted::onStartCountDown(CCObject *param_1)

{
  param_1[0x14c] = (CCObject)0x1;
  return;
}

// ---- PlayerLobbyOnlineHosted::onCancelCountDown  @ 0x3b8a70
/* PlayerLobbyOnlineHosted::onCancelCountDown(cocos2d::CCObject*) */

void PlayerLobbyOnlineHosted::onCancelCountDown(CCObject *param_1)

{
  param_1[0x14c] = (CCObject)0x0;
  return;
}

// ---- PlayerLobbyOnlineHosted::switchToPeer2Peer  @ 0x3b8a84
/* PlayerLobbyOnlineHosted::switchToPeer2Peer() */

void __thiscall PlayerLobbyOnlineHosted::switchToPeer2Peer(PlayerLobbyOnlineHosted *this)

{
  if (*(int *)(this + 0x178) != 0) {
    (**(code **)(**(int **)(this + 0x178) + 8))(*(undefined4 *)(this + 0x178));
  }
  return;
}

// ---- PlayerLobbyOnlineHosted::alertResponse  @ 0x3b8ab0
/* PlayerLobbyOnlineHosted::alertResponse(int) */

void __thiscall PlayerLobbyOnlineHosted::alertResponse(PlayerLobbyOnlineHosted *this,int param_1)

{
  bool bVar1;
  int iVar2;
  
  PlayerLobby::alertResponse((PlayerLobby *)this,param_1);
  if (this[0x189] == (PlayerLobbyOnlineHosted)0x0) {
    if (this[0x188] == (PlayerLobbyOnlineHosted)0x0) {
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
    }
    else {
      switchToPeer2Peer(this);
    }
  }
  else {
    this[0x189] = (PlayerLobbyOnlineHosted)0x0;
    if (param_1 == 0) {
      this[0x18a] = (PlayerLobbyOnlineHosted)0x1;
      *(undefined4 *)(this + 0x180) = 0x41c80000;
    }
    else {
      switchToPeer2Peer(this);
    }
  }
  return;
}

// ---- PlayerLobbyOnlineHosted::updateReadyLabel  @ 0x3b8b6c
/* PlayerLobbyOnlineHosted::updateReadyLabel() */

void __thiscall PlayerLobbyOnlineHosted::updateReadyLabel(PlayerLobbyOnlineHosted *this)

{
  if (s_bLocalHost == '\0') {
    (**(code **)(**(int **)(this + 0x108) + 0x1f8))(*(undefined4 *)(this + 0x108),"READY");
  }
  else {
    (**(code **)(**(int **)(this + 0x108) + 0x1f8))(*(undefined4 *)(this + 0x108),"START");
  }
  return;
}

// ---- PlayerLobbyOnlineHosted::updateMenuVisibility  @ 0x3b8bd4
/* PlayerLobbyOnlineHosted::updateMenuVisibility() */

void __thiscall PlayerLobbyOnlineHosted::updateMenuVisibility(PlayerLobbyOnlineHosted *this)

{
  (**(code **)(**(int **)(this + 0x120) + 0x90))(*(undefined4 *)(this + 0x120),0);
  (**(code **)(**(int **)(this + 0x11c) + 0x90))(*(undefined4 *)(this + 0x11c),0);
  (**(code **)(**(int **)(this + 0x114) + 0x90))(*(undefined4 *)(this + 0x114),0);
  (**(code **)(**(int **)(this + 0x118) + 0x90))(*(undefined4 *)(this + 0x118),0);
  return;
}

// ---- PlayerLobbyOnlineHosted::updateButtonVisibility  @ 0x3b8c40
/* PlayerLobbyOnlineHosted::updateButtonVisibility() */

void __thiscall PlayerLobbyOnlineHosted::updateButtonVisibility(PlayerLobbyOnlineHosted *this)

{
  uint uVar1;
  int iVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  code *pcVar5;
  
  uVar1 = cocos2d::CCDictionary::count(*(CCDictionary **)(this + 0x124));
  if (uVar1 < 2) {
    (**(code **)(**(int **)(this + 0x104) + 0x90))(*(undefined4 *)(this + 0x104),0);
    (**(code **)(**(int **)(this + 0x108) + 0x90))(*(undefined4 *)(this + 0x108),0);
    (**(code **)(**(int **)(this + 0x134) + 0x90))(*(undefined4 *)(this + 0x134),0);
    (**(code **)(**(int **)(this + 0x138) + 0x90))(*(undefined4 *)(this + 0x138),0);
    (**(code **)(**(int **)(this + 0x10c) + 0x90))(*(undefined4 *)(this + 0x10c),1);
    (**(code **)(**(int **)(this + 0x110) + 0x90))(*(undefined4 *)(this + 0x110),1);
  }
  else {
    (**(code **)(**(int **)(this + 0x104) + 0x90))(*(undefined4 *)(this + 0x104),1);
    (**(code **)(**(int **)(this + 0x108) + 0x90))(*(undefined4 *)(this + 0x108),1);
    iVar2 = (**(code **)(*(int *)this + 0x1dc))(this);
    if (*(int *)(iVar2 + 0x118) != 3) {
      (**(code **)(**(int **)(this + 0x134) + 0x90))(*(undefined4 *)(this + 0x134),1);
      (**(code **)(**(int **)(this + 0x138) + 0x90))(*(undefined4 *)(this + 0x138),1);
    }
  }
  pcVar5 = *(code **)(**(int **)(this + 0x194) + 0x90);
  uVar4 = *(undefined4 *)(this + 0x194);
  uVar3 = (**(code **)(**(int **)(this + 0x134) + 0x94))(*(undefined4 *)(this + 0x134));
  (*pcVar5)(uVar4,uVar3);
  pcVar5 = *(code **)(**(int **)(this + 0x18c) + 0x90);
  uVar4 = *(undefined4 *)(this + 0x18c);
  uVar3 = (**(code **)(**(int **)(this + 0x194) + 0x94))(*(undefined4 *)(this + 0x194));
  (*pcVar5)(uVar4,uVar3);
  iVar2 = (**(code **)(**(int **)(this + 0x198) + 0x94))(*(undefined4 *)(this + 0x198));
  if (iVar2 != 0) {
    MapVoteLayer::updateMapVote(*(MapVoteLayer **)(this + 0x198));
  }
  return;
}

// ---- PlayerLobbyOnlineHosted::onStartGame  @ 0x3b8e08
/* PlayerLobbyOnlineHosted::onStartGame(cocos2d::CCObject*) */

void PlayerLobbyOnlineHosted::onStartGame(CCObject *param_1)

{
  (**(code **)(*(int *)param_1 + 0x1b8))(param_1);
  return;
}

// ---- PlayerLobbyOnlineHosted::onConnectionFalied  @ 0x3b8e28
/* PlayerLobbyOnlineHosted::onConnectionFalied(cocos2d::CCObject*) */

void PlayerLobbyOnlineHosted::onConnectionFalied(CCObject *param_1)

{
  CCObject *pCVar1;
  undefined4 uVar2;
  NetworkManager *this;
  undefined1 auStack_30 [4];
  undefined1 auStack_2c [4];
  undefined1 auStack_28 [4];
  undefined1 auStack_24 [4];
  string asStack_20 [4];
  string asStack_1c [4];
  undefined1 auStack_18 [4];
  undefined1 auStack_14 [8];
  
  if (param_1[0x189] != (CCObject)0x1) {
    FUN_0079a3f4(auStack_28);
    FUN_007c6a60(auStack_18,"Server Connection Failed",auStack_28);
    FUN_0079a3f4(auStack_24);
    FUN_007c6a60(auStack_14,
                 "The Quick Play Server could not be reached. Retry or be switched to Google Play multiplayer?"
                 ,auStack_24);
    FUN_0079a3f4(auStack_30);
    FUN_007c6a60(asStack_20,"RETRY",auStack_30);
    pCVar1 = (CCObject *)cocos2d::CCString::create(asStack_20);
    FUN_0079a3f4(auStack_2c);
    FUN_007c6a60(asStack_1c,"SWITCH",auStack_2c);
    uVar2 = cocos2d::CCString::create(asStack_1c);
    uVar2 = cocos2d::CCArray::create(pCVar1,uVar2,0);
    AMessageBox::showAlert(0x3b95c9,auStack_18,auStack_14,uVar2,0,param_1);
    FUN_007c5914(asStack_1c);
    FUN_0079a3fc(auStack_2c);
    FUN_007c5914(asStack_20);
    FUN_0079a3fc(auStack_30);
    FUN_007c5914(auStack_14);
    FUN_0079a3fc(auStack_24);
    FUN_007c5914(auStack_18);
    FUN_0079a3fc(auStack_28);
    this = (NetworkManager *)NetworkManager::sharedNetworkManager();
    NetworkManager::updateServerConfig(this);
    param_1[0x189] = (CCObject)0x1;
  }
  return;
}

// ---- PlayerLobbyOnlineHosted::onServerFull  @ 0x3b8fa4
/* PlayerLobbyOnlineHosted::onServerFull(cocos2d::CCObject*) */

void PlayerLobbyOnlineHosted::onServerFull(CCObject *param_1)

{
  CCObject *pCVar1;
  undefined4 uVar2;
  NetworkManager *this;
  undefined1 auStack_30 [4];
  undefined1 auStack_2c [4];
  undefined1 auStack_28 [4];
  undefined1 auStack_24 [4];
  string asStack_20 [4];
  string asStack_1c [4];
  undefined1 auStack_18 [4];
  undefined1 auStack_14 [8];
  
  if (param_1[0x189] != (CCObject)0x1) {
    FUN_0079a3f4(auStack_28);
    FUN_007c6a60(auStack_18,"Server Full",auStack_28);
    FUN_0079a3f4(auStack_24);
    FUN_007c6a60(auStack_14,
                 "The Quick Play Server is currently full. Retry or be switched to Google Play multiplayer?"
                 ,auStack_24);
    FUN_0079a3f4(auStack_30);
    FUN_007c6a60(asStack_20,"RETRY",auStack_30);
    pCVar1 = (CCObject *)cocos2d::CCString::create(asStack_20);
    FUN_0079a3f4(auStack_2c);
    FUN_007c6a60(asStack_1c,"SWITCH",auStack_2c);
    uVar2 = cocos2d::CCString::create(asStack_1c);
    uVar2 = cocos2d::CCArray::create(pCVar1,uVar2,0);
    AMessageBox::showAlert(0x3b95c9,auStack_18,auStack_14,uVar2,0,param_1);
    FUN_007c5914(asStack_1c);
    FUN_0079a3fc(auStack_2c);
    FUN_007c5914(asStack_20);
    FUN_0079a3fc(auStack_30);
    FUN_007c5914(auStack_14);
    FUN_0079a3fc(auStack_24);
    FUN_007c5914(auStack_18);
    FUN_0079a3fc(auStack_28);
    this = (NetworkManager *)NetworkManager::sharedNetworkManager();
    NetworkManager::updateServerConfig(this);
    param_1[0x189] = (CCObject)0x1;
  }
  return;
}

// ---- PlayerLobbyOnlineHosted::onConnectionLost  @ 0x3b9120
/* PlayerLobbyOnlineHosted::onConnectionLost(cocos2d::CCObject*) */

void PlayerLobbyOnlineHosted::onConnectionLost(CCObject *param_1)

{
  CCObject *pCVar1;
  undefined4 uVar2;
  undefined1 auStack_28 [4];
  undefined1 auStack_24 [4];
  undefined1 auStack_20 [4];
  string asStack_1c [4];
  undefined1 auStack_18 [4];
  undefined1 auStack_14 [8];
  
  if (param_1[0x188] != (CCObject)0x1) {
    FUN_0079a3f4(auStack_24);
    FUN_007c6a60(auStack_18,"Server Connection Lost",auStack_24);
    FUN_0079a3f4(auStack_20);
    FUN_007c6a60(auStack_14,
                 "The Quick Play Server connection was lost. Switching to Google Play multiplayer.",
                 auStack_20);
    FUN_0079a3f4(auStack_28);
    FUN_007c6a60(asStack_1c,&DAT_007e3164,auStack_28);
    pCVar1 = (CCObject *)cocos2d::CCString::create(asStack_1c);
    uVar2 = cocos2d::CCArray::create(pCVar1,0);
    AMessageBox::showAlert(0x3b95c9,auStack_18,auStack_14,uVar2,0,param_1);
    FUN_007c5914(asStack_1c);
    FUN_0079a3fc(auStack_28);
    FUN_007c5914(auStack_14);
    FUN_0079a3fc(auStack_20);
    FUN_007c5914(auStack_18);
    FUN_0079a3fc(auStack_24);
    param_1[0x188] = (CCObject)0x1;
  }
  return;
}

// ---- PlayerLobbyOnlineHosted::onServerPlayerCountUpdate  @ 0x3b9240
/* PlayerLobbyOnlineHosted::onServerPlayerCountUpdate(cocos2d::CCObject*) */

void __thiscall
PlayerLobbyOnlineHosted::onServerPlayerCountUpdate(PlayerLobbyOnlineHosted *this,CCObject *param_1)

{
  undefined4 uVar1;
  
  uVar1 = cocos2d::CCInteger::getValue((CCInteger *)param_1);
  *(undefined4 *)(this + 0x184) = uVar1;
  return;
}

// ---- PlayerLobbyOnlineHosted::onLobbyClosed  @ 0x3b925c
/* PlayerLobbyOnlineHosted::onLobbyClosed(cocos2d::CCObject*) */

void PlayerLobbyOnlineHosted::onLobbyClosed(CCObject *param_1)

{
  NetworkManager *this;
  
  this = (NetworkManager *)NetworkManager::sharedNetworkManager();
  NetworkManager::removeAllPlayers(this);
  return;
}

// ---- PlayerLobbyOnlineHosted::onSetServerMap  @ 0x3b9278
/* PlayerLobbyOnlineHosted::onSetServerMap(cocos2d::CCObject*) */

void __thiscall
PlayerLobbyOnlineHosted::onSetServerMap(PlayerLobbyOnlineHosted *this,CCObject *param_1)

{
  CCArray *this_00;
  CCInteger *this_01;
  CCInteger *this_02;
  CCInteger *this_03;
  CCInteger *this_04;
  CCInteger *this_05;
  CCInteger *this_06;
  CCInteger *this_07;
  uint uVar1;
  CCString *this_08;
  undefined4 uVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  MapVoteLayer *pMVar7;
  
  this_01 = (CCInteger *)cocos2d::CCArray::objectAtIndex((CCArray *)param_1,0);
  this_02 = (CCInteger *)cocos2d::CCArray::objectAtIndex((CCArray *)param_1,1);
  this_03 = (CCInteger *)cocos2d::CCArray::objectAtIndex((CCArray *)param_1,2);
  this_04 = (CCInteger *)cocos2d::CCArray::objectAtIndex((CCArray *)param_1,3);
  this_05 = (CCInteger *)cocos2d::CCArray::objectAtIndex((CCArray *)param_1,4);
  this_06 = (CCInteger *)cocos2d::CCArray::objectAtIndex((CCArray *)param_1,5);
  this_07 = (CCInteger *)cocos2d::CCArray::objectAtIndex((CCArray *)param_1,6);
  this_00 = mapNames;
  uVar1 = cocos2d::CCInteger::getValue(this_01);
  this_08 = (CCString *)cocos2d::CCArray::objectAtIndex(this_00,uVar1);
  uVar2 = cocos2d::CCString::getCString(this_08);
  FUN_007c5e70(&hostMapName,uVar2);
  pMVar7 = *(MapVoteLayer **)(this + 0x198);
  iVar3 = cocos2d::CCInteger::getValue(this_01);
  iVar4 = cocos2d::CCInteger::getValue(this_02);
  iVar5 = cocos2d::CCInteger::getValue(this_04);
  iVar6 = cocos2d::CCInteger::getValue(this_06);
  MapVoteLayer::updateMaps(pMVar7,iVar3,iVar4,iVar5,iVar6);
  pMVar7 = *(MapVoteLayer **)(this + 0x198);
  iVar3 = cocos2d::CCInteger::getValue(this_03);
  iVar4 = cocos2d::CCInteger::getValue(this_05);
  iVar5 = cocos2d::CCInteger::getValue(this_07);
  MapVoteLayer::updateVotes(pMVar7,iVar3,iVar4,iVar5);
  return;
}

// ---- PlayerLobbyOnlineHosted::setMapName  @ 0x3b9378
/* PlayerLobbyOnlineHosted::setMapName(std::string, int) */

void __thiscall
PlayerLobbyOnlineHosted::setMapName(undefined4 param_1,undefined4 param_2,int param_3)

{
  bool bVar1;
  int iVar2;
  
  if ((param_3 == 0) && (iVar2 = FUN_007c505c(param_2), iVar2 != 0)) {
    bVar1 = true;
  }
  else {
    bVar1 = false;
  }
  if (bVar1) {
    thunk_FUN_007c653c(&hostMapName,param_2);
  }
  return;
}

// ---- PlayerLobbyOnlineHosted::onVote  @ 0x3b93bc
/* PlayerLobbyOnlineHosted::onVote(cocos2d::CCObject*) */

void __thiscall PlayerLobbyOnlineHosted::onVote(PlayerLobbyOnlineHosted *this,CCObject *param_1)

{
  int iVar1;
  undefined4 uVar2;
  code *pcVar3;
  undefined8 uVar4;
  CCPoint aCStack_18 [12];
  
  iVar1 = (**(code **)(*(int *)this + 0x1dc))(this);
  if (*(int *)(iVar1 + 0x118) != 3) {
    Sound::playSound(sndEng,0xe);
    (**(code **)(**(int **)(this + 0x144) + 0x90))
              (*(undefined4 *)(this + 0x144),0,*(undefined4 *)(this + 0x144),
               *(code **)(**(int **)(this + 0x144) + 0x90),param_1);
    (**(code **)(**(int **)(this + 0x144) + 0x4c))(*(undefined4 *)(this + 0x144),&offScreenPos);
    uVar4 = (**(code **)(**(int **)(this + 0x198) + 0x90))(*(undefined4 *)(this + 0x198),1);
    pcVar3 = *(code **)(**(int **)(this + 0x198) + 0x4c);
    uVar2 = *(undefined4 *)(this + 0x198);
    cocos2d::CCPoint::CCPoint(aCStack_18,(float)uVar4,(float)((ulonglong)uVar4 >> 0x20));
    (*pcVar3)(uVar2,aCStack_18);
  }
  return;
}

// ---- PlayerLobbyOnlineHosted::onAfterMapVote  @ 0x3b947c
/* PlayerLobbyOnlineHosted::onAfterMapVote(cocos2d::CCObject*) */

void __thiscall
PlayerLobbyOnlineHosted::onAfterMapVote(PlayerLobbyOnlineHosted *this,CCObject *param_1)

{
  code *pcVar1;
  undefined4 uVar2;
  undefined8 uVar3;
  CCPoint aCStack_18 [8];
  
  uVar3 = (**(code **)(**(int **)(this + 0x144) + 0x90))
                    (*(undefined4 *)(this + 0x144),1,*(undefined4 *)(this + 0x144),
                     *(code **)(**(int **)(this + 0x144) + 0x90),param_1);
  pcVar1 = *(code **)(**(int **)(this + 0x144) + 0x4c);
  uVar2 = *(undefined4 *)(this + 0x144);
  cocos2d::CCPoint::CCPoint(aCStack_18,(float)uVar3,(float)((ulonglong)uVar3 >> 0x20));
  (*pcVar1)(uVar2,aCStack_18);
  (**(code **)(**(int **)(this + 0x198) + 0x90))(*(undefined4 *)(this + 0x198),0);
  (**(code **)(**(int **)(this + 0x198) + 0x4c))(*(undefined4 *)(this + 0x198),&offScreenPos);
  return;
}

// ---- PlayerLobbyOnlineHosted::onReady  @ 0x3b950c
/* PlayerLobbyOnlineHosted::onReady() */

void __thiscall PlayerLobbyOnlineHosted::onReady(PlayerLobbyOnlineHosted *this)

{
  bool bVar1;
  char cVar2;
  int iVar3;
  
  cVar2 = (**(code **)(**(int **)(this + 0x104) + 0x94))(*(undefined4 *)(this + 0x104));
  if ((((cVar2 == '\x01') &&
       (cVar2 = (**(code **)(**(int **)(this + 0x108) + 0x94))(*(undefined4 *)(this + 0x108)),
       cVar2 == '\x01')) &&
      (iVar3 = (**(code **)(**(int **)(this + 0x16c) + 0x94))(*(undefined4 *)(this + 0x16c)),
      iVar3 == 0)) &&
     (iVar3 = (**(code **)(**(int **)(this + 0x198) + 0x94))(*(undefined4 *)(this + 0x198)),
     iVar3 == 0)) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (!bVar1) {
    Sound::playSound(sndEng,0xd);
    (**(code **)(*(int *)this + 0x1bc))(this);
  }
  return;
}

// ---- PlayerLobbyOnlineHosted::messageBoxHandlerHosted  @ 0x3b95c8
/* PlayerLobbyOnlineHosted::messageBoxHandlerHosted(int, cocos2d::CCObject*, cocos2d::CCObject*) */

void PlayerLobbyOnlineHosted::messageBoxHandlerHosted
               (int param_1,CCObject *param_2,CCObject *param_3)

{
  (**(code **)(*(int *)param_3 + 0x19c))(param_3,param_1);
  return;
}

// ---- PlayerLobbyOnlineHosted::onServerStatus  @ 0x3b95ec
/* PlayerLobbyOnlineHosted::onServerStatus(cocos2d::CCObject*) */

void __thiscall
PlayerLobbyOnlineHosted::onServerStatus(PlayerLobbyOnlineHosted *this,CCObject *param_1)

{
  undefined4 uVar1;
  code *pcVar2;
  undefined4 uVar3;
  
  pcVar2 = *(code **)(**(int **)(this + 400) + 0x23c);
  uVar3 = *(undefined4 *)(this + 400);
  uVar1 = cocos2d::CCString::getCString((CCString *)param_1);
  (*pcVar2)(uVar3,uVar1);
  return;
}
