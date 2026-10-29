// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 64 functions

// ---- PlayerLobby::scrollViewDidScroll  @ 0x3a7f44
/* PlayerLobby::scrollViewDidScroll(cocos2d::extension::CCScrollView*) */

void PlayerLobby::scrollViewDidScroll(CCScrollView *param_1)

{
  return;
}

// ---- PlayerLobby::scrollViewDidScroll  @ 0x3a7f50
/* non-virtual thunk to PlayerLobby::scrollViewDidScroll(cocos2d::extension::CCScrollView*) */

void __thiscall PlayerLobby::scrollViewDidScroll(PlayerLobby *this,CCScrollView *param_1)

{
  scrollViewDidScroll((CCScrollView *)(this + -0xe4));
  return;
}

// ---- PlayerLobby::scrollViewDidZoom  @ 0x3a7f58
/* PlayerLobby::scrollViewDidZoom(cocos2d::extension::CCScrollView*) */

void PlayerLobby::scrollViewDidZoom(CCScrollView *param_1)

{
  return;
}

// ---- PlayerLobby::scrollViewDidZoom  @ 0x3a7f64
/* non-virtual thunk to PlayerLobby::scrollViewDidZoom(cocos2d::extension::CCScrollView*) */

void __thiscall PlayerLobby::scrollViewDidZoom(PlayerLobby *this,CCScrollView *param_1)

{
  scrollViewDidZoom((CCScrollView *)(this + -0xe4));
  return;
}

// ---- PlayerLobby::PlayerLobby  @ 0x3a9e0c
/* PlayerLobby::PlayerLobby() */

PlayerLobby * __thiscall PlayerLobby::PlayerLobby(PlayerLobby *this)

{
  cocos2d::CCNode::CCNode((CCNode *)this);
  cocos2d::extension::CCTableViewDelegate::CCTableViewDelegate((CCTableViewDelegate *)(this + 0xe4))
  ;
  cocos2d::extension::CCTableViewDataSource::CCTableViewDataSource
            ((CCTableViewDataSource *)(this + 0xe8));
  cocos2d::extension::CCEditBoxDelegate::CCEditBoxDelegate((CCEditBoxDelegate *)(this + 0xec));
  *(undefined ***)this = &PTR_copyWithZone_1_00916d50;
  *(undefined ***)(this + 0xe4) = &PTR__PlayerLobby_1_00916fac;
  *(undefined ***)(this + 0xe8) = &PTR__PlayerLobby_1_00916fd4;
  *(undefined ***)(this + 0xec) = &PTR__PlayerLobby_1_00916ff4;
  FUN_007c51b0(this + 300);
  cocos2d::CCPoint::CCPoint((CCPoint *)(this + 0x154));
  cocos2d::CCPoint::CCPoint((CCPoint *)(this + 0x15c));
  cocos2d::CCPoint::CCPoint((CCPoint *)(this + 0x170));
  return this;
}

// ---- PlayerLobby::init  @ 0x3a9eec
/* PlayerLobby::init() */

undefined4 __thiscall PlayerLobby::init(PlayerLobby *this)

{
  CCScale9Sprite *pCVar1;
  char *pcVar2;
  NetworkManager *this_00;
  string *psVar3;
  CCNotificationCenter *pCVar4;
  int iVar5;
  undefined4 uVar6;
  code *pcVar7;
  CCEditBox *this_01;
  undefined4 uVar8;
  undefined8 uVar9;
  undefined1 auStack_58 [3];
  char local_55;
  undefined1 auStack_54 [4];
  undefined4 local_50;
  undefined4 uStack_4c;
  undefined4 local_48;
  undefined4 uStack_44;
  undefined4 local_40;
  undefined4 uStack_3c;
  undefined4 local_38;
  undefined4 uStack_34;
  undefined4 local_30;
  undefined4 uStack_2c;
  undefined4 local_28;
  undefined4 uStack_24;
  undefined4 local_20;
  undefined4 uStack_1c;
  undefined4 local_18;
  undefined4 uStack_14;
  
  local_55 = cocos2d::CCNode::init();
  if (local_55 == '\x01') {
    *(undefined4 *)(this + 0x168) = 0;
    this[0xf1] = (PlayerLobby)0x0;
    *(undefined4 *)(this + 0x178) = 0;
    uVar6 = cocos2d::CCNode::create();
    *(undefined4 *)(this + 0x144) = uVar6;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x144));
    uVar6 = LobbyOptionsLayer::create();
    *(undefined4 *)(this + 0x16c) = uVar6;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x16c));
    uVar6 = cocos2d::CCArray::create();
    *(undefined4 *)(this + 0xfc) = uVar6;
    uVar9 = cocos2d::CCObject::retain(*(CCObject **)(this + 0xfc));
    cocos2d::CCSize::CCSize((CCSize *)&local_18,(float)uVar9,(float)((ulonglong)uVar9 >> 0x20));
    uVar6 = cocos2d::extension::CCTableView::create(this + 0xe8,&local_18);
    *(undefined4 *)(this + 0xf8) = uVar6;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0xf8));
    uVar9 = (**(code **)(**(int **)(this + 0xf8) + 0x200))(*(undefined4 *)(this + 0xf8),1);
    pcVar7 = *(code **)(**(int **)(this + 0xf8) + 0x4c);
    uVar6 = *(undefined4 *)(this + 0xf8);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_18,(float)uVar9,(float)((ulonglong)uVar9 >> 0x20));
    (*pcVar7)(uVar6,&local_18);
    cocos2d::extension::CCTableView::setDelegate
              (*(CCTableView **)(this + 0xf8),(CCTableViewDelegate *)(this + 0xe4));
    cocos2d::extension::CCTableView::setVerticalFillOrder(*(CCTableView **)(this + 0xf8),0);
    (**(code **)(*(int *)this + 0xcc))(this,*(undefined4 *)(this + 0xf8),1);
    uVar9 = cocos2d::extension::CCTableView::reloadData(*(CCTableView **)(this + 0xf8));
    cocos2d::CCSize::CCSize((CCSize *)&local_18,(float)uVar9,(float)((ulonglong)uVar9 >> 0x20));
    pCVar1 = (CCScale9Sprite *)cocos2d::extension::CCScale9Sprite::create("streak_new.png");
    uVar6 = cocos2d::extension::CCEditBox::create
                      ((CCSize *)&local_18,pCVar1,(CCScale9Sprite *)0x0,(CCScale9Sprite *)0x0);
    *(undefined4 *)(this + 0x100) = uVar6;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x100));
    this_01 = *(CCEditBox **)(this + 0x100);
    pcVar2 = (char *)FUN_007c5300(this + 300);
    cocos2d::extension::CCEditBox::setText(this_01,pcVar2);
    cocos2d::extension::CCEditBox::setDelegate
              (*(CCEditBox **)(this + 0x100),(CCEditBoxDelegate *)(this + 0xec));
    pcVar7 = *(code **)(**(int **)(this + 0x100) + 0x4c);
    uVar8 = *(undefined4 *)(this + 0x100);
    uVar6 = (**(code **)(**(int **)(this + 0xf8) + 0x50))(*(undefined4 *)(this + 0xf8));
    uVar9 = (*pcVar7)(uVar8,uVar6);
    pcVar7 = *(code **)(**(int **)(this + 0x100) + 0x7c);
    uVar6 = *(undefined4 *)(this + 0x100);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_18,(float)uVar9,(float)((ulonglong)uVar9 >> 0x20));
    (*pcVar7)(uVar6,&local_18);
    cocos2d::extension::CCEditBox::setFontColor(*(CCEditBox **)(this + 0x100),&DAT_007e2348);
    cocos2d::extension::CCEditBox::setMaxLength(*(CCEditBox **)(this + 0x100),0x32);
    cocos2d::extension::CCEditBox::setFont(*(CCEditBox **)(this + 0x100),"Avenir",0xe);
    cocos2d::extension::CCEditBox::setInputMode(*(CCEditBox **)(this + 0x100),6);
    cocos2d::extension::CCEditBox::setInputFlag(*(CCEditBox **)(this + 0x100),3);
    cocos2d::extension::CCEditBox::setReturnType(*(CCEditBox **)(this + 0x100),1);
    (**(code **)(*(int *)this + 0xcc))(this,*(undefined4 *)(this + 0x100),1);
    (**(code **)(**(int **)(this + 0x100) + 0x90))(*(undefined4 *)(this + 0x100),0);
    this[0xf0] = (PlayerLobby)0x0;
    *(undefined4 *)(this + 0x148) = 0x41200000;
    this[0x14c] = (PlayerLobby)0x0;
    this_00 = (NetworkManager *)NetworkManager::sharedNetworkManager();
    uVar6 = NetworkManager::getOnlinePlayers(this_00);
    *(undefined4 *)(this + 0x150) = uVar6;
    (**(code **)(*(int *)this + 0x1ec))(this);
    psVar3 = (string *)cocos2d::CCUserDefault::sharedUserDefault();
    FUN_0079a3f4(&local_28);
    FUN_007c6a60(&local_20,"NOOBIE",&local_28);
    cocos2d::CCUserDefault::getStringForKey((char *)&local_18,psVar3);
    FUN_007c52e8(this + 300,&local_18);
    FUN_007c5914(&local_18);
    FUN_007c5914(&local_20);
    FUN_0079a3fc(&local_28);
    this[0x14d] = (PlayerLobby)0x1;
    *(undefined4 *)(this + 0x164) = 0;
    this[0xf2] = (PlayerLobby)0x0;
    (**(code **)(**(int **)(this + 0x104) + 0x90))(*(undefined4 *)(this + 0x104),0);
    (**(code **)(**(int **)(this + 0x108) + 0x90))(*(undefined4 *)(this + 0x108),0);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x144));
    pCVar4 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    local_50 = 0x1f8;
    uStack_4c = 1;
    cocos2d::CCNotificationCenter::addObserver
              (pCVar4,(CCObject *)this,(_func_void_CCObject_ptr *)0x1f8,(char *)0x1,
               (CCObject *)"PeerConnected");
    pCVar4 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    local_48 = 0x200;
    uStack_44 = 1;
    cocos2d::CCNotificationCenter::addObserver
              (pCVar4,(CCObject *)this,(_func_void_CCObject_ptr *)0x200,(char *)0x1,
               (CCObject *)"ReceivedInstantMessage");
    pCVar4 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    local_40 = 0x1fc;
    uStack_3c = 1;
    cocos2d::CCNotificationCenter::addObserver
              (pCVar4,(CCObject *)this,(_func_void_CCObject_ptr *)0x1fc,(char *)0x1,
               (CCObject *)"ReceivedLobbyStatus");
    pCVar4 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    local_38 = 0x1e4;
    uStack_34 = 1;
    cocos2d::CCNotificationCenter::addObserver
              (pCVar4,(CCObject *)this,(_func_void_CCObject_ptr *)0x1e4,(char *)0x1,
               (CCObject *)"AfterPeerDisconnected");
    pCVar4 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    local_30 = 0x1e8;
    uStack_2c = 1;
    cocos2d::CCNotificationCenter::addObserver
              (pCVar4,(CCObject *)this,(_func_void_CCObject_ptr *)0x1e8,(char *)0x1,
               (CCObject *)"LobbyOptionDone");
    pCVar4 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    local_28 = 0x1c0;
    uStack_24 = 1;
    cocos2d::CCNotificationCenter::addObserver
              (pCVar4,(CCObject *)this,(_func_void_CCObject_ptr *)0x1c0,(char *)0x1,
               (CCObject *)"ShowGameStats");
    pCVar4 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    local_20 = 500;
    uStack_1c = 1;
    cocos2d::CCNotificationCenter::addObserver
              (pCVar4,(CCObject *)this,(_func_void_CCObject_ptr *)0x1f4,(char *)0x1,
               (CCObject *)"PostGameClose");
    pCVar4 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    local_18 = 0x1f8;
    uStack_14 = 1;
    pcVar2 = "PeerRequestedSetupData";
    uVar8 = 0;
    cocos2d::CCNotificationCenter::addObserver
              (pCVar4,(CCObject *)this,(_func_void_CCObject_ptr *)0x1f8,(char *)0x1,
               (CCObject *)"PeerRequestedSetupData");
    uVar6 = cocos2d::CCDictionary::create();
    *(undefined4 *)(this + 0x124) = uVar6;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x124));
    pcVar7 = *(code **)(*(int *)this + 0x1b4);
    FUN_0079a3f4(auStack_58);
    FUN_007c6a60(auStack_54,&DAT_007e1f04,auStack_58,auStack_58,pcVar2,uVar8);
    (*pcVar7)(this,auStack_54);
    FUN_007c5914(auStack_54);
    FUN_0079a3fc(auStack_58);
    NetworkManager::sharedNetworkManager();
    NetworkManagerBridge::startReachability();
    ApplicationInterface::createAdBanner();
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x16c));
    (**(code **)(**(int **)(this + 0x16c) + 0x90))(*(undefined4 *)(this + 0x16c),0);
    (**(code **)(**(int **)(this + 0x16c) + 0x4c))(*(undefined4 *)(this + 0x16c),&offScreenPos);
    uVar6 = PostGameScreen::create();
    *(undefined4 *)(this + 0xf4) = uVar6;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0xf4));
    (**(code **)(**(int **)(this + 0xf4) + 0x4c))(*(undefined4 *)(this + 0xf4),&offScreenPos);
    (**(code **)(*(int *)this + 0xcc))(this,*(undefined4 *)(this + 0xf4),1);
    iVar5 = ScoreKeeper::sharedScoreKeeper();
    if (*(char *)(iVar5 + 0x28) != '\x01') {
      (**(code **)(*(int *)this + 0x1c0))(this,0);
    }
    if (postGameStatus == 2) {
      PostGameScreen::playerEndedGame(*(PostGameScreen **)(this + 0xf4));
    }
    else if (postGameStatus == 3) {
      PostGameScreen::playerCompletedGame(*(PostGameScreen **)(this + 0xf4));
    }
    else if (postGameStatus == 1) {
      PostGameScreen::playerQuitGame(*(PostGameScreen **)(this + 0xf4));
    }
    LeaderBoardBridge::sharedLeaderBoardBridge();
    LeaderBoardBridge::calcPlayerSkill();
    uVar6 = 1;
  }
  else {
    uVar6 = 0;
  }
  return uVar6;
}

// ---- PlayerLobby::~PlayerLobby  @ 0x3aa61c
/* WARNING: Removing unreachable block (ram,0x003aa7ca) */
/* PlayerLobby::~PlayerLobby() */

PlayerLobby * __thiscall PlayerLobby::~PlayerLobby(PlayerLobby *this)

{
  CCNotificationCenter *this_00;
  
  *(undefined ***)this = &PTR_copyWithZone_1_00916d50;
  *(undefined ***)(this + 0xe4) = &PTR__PlayerLobby_1_00916fac;
  *(undefined ***)(this + 0xe8) = &PTR__PlayerLobby_1_00916fd4;
  *(undefined ***)(this + 0xec) = &PTR__PlayerLobby_1_00916ff4;
  this_00 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::removeAllObservers(this_00,(CCObject *)this);
  cocos2d::CCNode::removeAllChildren((CCNode *)this);
  (**(code **)(**(int **)(this + 0x144) + 0x100))(*(undefined4 *)(this + 0x144));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x144));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x108));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x104));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x110));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x140));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x10c));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x13c));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x118));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x114));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x120));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x11c));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x134));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x138));
  cocos2d::CCObject::release(*(CCObject **)(this + 0xf8));
  cocos2d::CCObject::release(*(CCObject **)(this + 0xfc));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x100));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x128));
  NetworkManager::sharedNetworkManager();
  NetworkManagerBridge::stopReachability();
  cocos2d::CCObject::release(*(CCObject **)(this + 0x124));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x16c));
  cocos2d::CCObject::release(*(CCObject **)(this + 0xf4));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x130));
  FUN_007c5914(this + 300);
  cocos2d::extension::CCEditBoxDelegate::~CCEditBoxDelegate((CCEditBoxDelegate *)(this + 0xec));
  cocos2d::extension::CCTableViewDataSource::~CCTableViewDataSource
            ((CCTableViewDataSource *)(this + 0xe8));
  cocos2d::extension::CCTableViewDelegate::~CCTableViewDelegate
            ((CCTableViewDelegate *)(this + 0xe4));
  cocos2d::CCNode::~CCNode((CCNode *)this);
  return this;
}

// ---- PlayerLobby::~PlayerLobby  @ 0x3aa7e4
/* non-virtual thunk to PlayerLobby::~PlayerLobby() */

void __thiscall PlayerLobby::~PlayerLobby(PlayerLobby *this)

{
  ~PlayerLobby(this + -0xe4);
  return;
}

// ---- PlayerLobby::~PlayerLobby  @ 0x3aa7ec
/* non-virtual thunk to PlayerLobby::~PlayerLobby() */

void __thiscall PlayerLobby::~PlayerLobby(PlayerLobby *this)

{
  ~PlayerLobby(this + -0xe8);
  return;
}

// ---- PlayerLobby::~PlayerLobby  @ 0x3aa7f4
/* non-virtual thunk to PlayerLobby::~PlayerLobby() */

void __thiscall PlayerLobby::~PlayerLobby(PlayerLobby *this)

{
  ~PlayerLobby(this + -0xec);
  return;
}

// ---- PlayerLobby::~PlayerLobby  @ 0x3aa7fc
/* PlayerLobby::~PlayerLobby() */

PlayerLobby * __thiscall PlayerLobby::~PlayerLobby(PlayerLobby *this)

{
  ~PlayerLobby(this);
  operator_delete(this);
  return this;
}

// ---- PlayerLobby::~PlayerLobby  @ 0x3aa818
/* non-virtual thunk to PlayerLobby::~PlayerLobby() */

void __thiscall PlayerLobby::~PlayerLobby(PlayerLobby *this)

{
  ~PlayerLobby(this + -0xe4);
  return;
}

// ---- PlayerLobby::~PlayerLobby  @ 0x3aa820
/* non-virtual thunk to PlayerLobby::~PlayerLobby() */

void __thiscall PlayerLobby::~PlayerLobby(PlayerLobby *this)

{
  ~PlayerLobby(this + -0xe8);
  return;
}

// ---- PlayerLobby::~PlayerLobby  @ 0x3aa828
/* non-virtual thunk to PlayerLobby::~PlayerLobby() */

void __thiscall PlayerLobby::~PlayerLobby(PlayerLobby *this)

{
  ~PlayerLobby(this + -0xec);
  return;
}

// ---- PlayerLobby::initMenu  @ 0x3aa830
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003aae2c */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* PlayerLobby::initMenu() */

void __thiscall PlayerLobby::initMenu(PlayerLobby *this)

{
  undefined4 uVar1;
  char *pcVar2;
  CCString *this_00;
  undefined4 uVar3;
  code *pcVar4;
  uint in_fpscr;
  float fVar5;
  float extraout_s0;
  float extraout_s0_00;
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
  undefined1 auStack_f4 [4];
  undefined1 auStack_f0 [4];
  undefined4 local_ec;
  CCNode *local_e8;
  CCNode *local_e4;
  CCNode *local_e0;
  CCNode *local_dc;
  CCNode *local_d8;
  CCNode *local_d4;
  CCNode *local_d0;
  CCNode *local_cc;
  CCNode *local_c8;
  CCNode *local_c4;
  CCNode *local_c0;
  CCNode *local_bc;
  CCMenuItem *local_b8;
  CCMenuItem *local_b4;
  CCMenuItem *local_b0;
  CCMenuItem *local_ac;
  CCMenuItem *local_a8;
  CCMenuItem *local_a4;
  undefined4 local_a0;
  float local_9c;
  float local_98;
  int *local_94;
  CCPoint local_90 [8];
  CCPoint aCStack_88 [8];
  CCPoint aCStack_80 [8];
  CCPoint aCStack_78 [8];
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
  undefined4 local_48;
  undefined4 local_44;
  undefined1 local_40 [16];
  CCPoint local_30;
  undefined1 local_2f;
  undefined1 local_2e;
  
  fVar5 = (float)cocos2d::CCPoint::CCPoint(local_90,(float)in_d0,(float)((ulonglong)in_d0 >> 0x20));
  cocos2d::CCPoint::CCPoint(&local_30,fVar5,extraout_s1);
  cocos2d::CCPoint::operator=((CCPoint *)(this + 0x170),&local_30);
  local_ec = 0xc2b40000;
  local_e8 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_sml.png");
  local_e4 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_sml.png");
  local_e0 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_sml.png");
  local_dc = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_sml.png");
  local_d8 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_mid.png");
  local_d4 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_mid.png");
  local_d0 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_mid.png");
  local_cc = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_mid.png");
  local_c8 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_mid.png");
  local_c4 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_mid.png");
  local_c0 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_mid.png");
  local_bc = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_mid.png");
  local_70 = 0x204;
  local_6c = 1;
  local_b8 = (CCMenuItem *)
             cocos2d::CCMenuItemSprite::create
                       (local_d8,local_d4,(CCObject *)this,(_func_void_CCObject_ptr *)0x204);
  local_68 = 0x208;
  local_64 = 1;
  local_b4 = (CCMenuItem *)
             cocos2d::CCMenuItemSprite::create
                       (local_e8,local_e4,(CCObject *)this,(_func_void_CCObject_ptr *)0x208);
  local_60 = 0x20c;
  local_5c = 1;
  local_b0 = (CCMenuItem *)
             cocos2d::CCMenuItemSprite::create
                       (local_e0,local_dc,(CCObject *)this,(_func_void_CCObject_ptr *)0x20c);
  local_58 = 0x210;
  local_54 = 1;
  local_ac = (CCMenuItem *)
             cocos2d::CCMenuItemSprite::create
                       (local_d0,local_cc,(CCObject *)this,(_func_void_CCObject_ptr *)0x210);
  local_50 = 0x214;
  local_4c = 1;
  local_a8 = (CCMenuItem *)
             cocos2d::CCMenuItemSprite::create
                       (local_c8,local_c4,(CCObject *)this,(_func_void_CCObject_ptr *)0x214);
  local_48 = 0x1f0;
  local_44 = 1;
  local_a4 = (CCMenuItem *)
             cocos2d::CCMenuItemSprite::create
                       (local_c0,local_bc,(CCObject *)this,(_func_void_CCObject_ptr *)0x1f0);
  uVar1 = cocos2d::CCMenu::create(local_a8,0);
  *(undefined4 *)(this + 0x11c) = uVar1;
  fVar5 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x11c));
  pcVar4 = *(code **)(**(int **)(this + 0x11c) + 0x4c);
  uVar1 = *(undefined4 *)(this + 0x11c);
  cocos2d::CCPoint::CCPoint(&local_30,fVar5,extraout_s1_00);
  (*pcVar4)(uVar1,&local_30);
  (**(code **)(**(int **)(this + 0x144) + 200))
            (*(undefined4 *)(this + 0x144),*(undefined4 *)(this + 0x11c));
  uVar1 = cocos2d::CCMenu::create(local_b8,0);
  *(undefined4 *)(this + 0x104) = uVar1;
  fVar5 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x104));
  pcVar4 = *(code **)(**(int **)(this + 0x104) + 0x4c);
  uVar1 = *(undefined4 *)(this + 0x104);
  cocos2d::CCPoint::CCPoint(&local_30,fVar5,extraout_s1_01);
  (*pcVar4)(uVar1,&local_30);
  (**(code **)(**(int **)(this + 0x144) + 200))
            (*(undefined4 *)(this + 0x144),*(undefined4 *)(this + 0x104));
  uVar1 = cocos2d::CCMenu::create(local_ac,0);
  *(undefined4 *)(this + 0x114) = uVar1;
  fVar5 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x114));
  pcVar4 = *(code **)(**(int **)(this + 0x114) + 0x4c);
  uVar1 = *(undefined4 *)(this + 0x114);
  cocos2d::CCPoint::CCPoint(&local_30,fVar5,extraout_s1_02);
  (*pcVar4)(uVar1,&local_30);
  (**(code **)(**(int **)(this + 0x144) + 200))
            (*(undefined4 *)(this + 0x144),*(undefined4 *)(this + 0x114));
  uVar1 = cocos2d::CCMenu::create(local_a4,0);
  *(undefined4 *)(this + 0x134) = uVar1;
  fVar5 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x134));
  pcVar4 = *(code **)(**(int **)(this + 0x134) + 0x4c);
  uVar1 = *(undefined4 *)(this + 0x134);
  cocos2d::CCPoint::CCPoint(&local_30,fVar5,extraout_s1_03);
  (*pcVar4)(uVar1,&local_30);
  (**(code **)(**(int **)(this + 0x144) + 200))
            (*(undefined4 *)(this + 0x144),*(undefined4 *)(this + 0x134));
  uVar1 = cocos2d::CCMenu::create(local_b4,0);
  *(undefined4 *)(this + 0x10c) = uVar1;
  fVar5 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x10c));
  pcVar4 = *(code **)(**(int **)(this + 0x10c) + 0x4c);
  uVar1 = *(undefined4 *)(this + 0x10c);
  cocos2d::CCPoint::CCPoint(&local_30,fVar5,extraout_s1_04);
  (*pcVar4)(uVar1,&local_30);
  (**(code **)(**(int **)(this + 0x144) + 200))
            (*(undefined4 *)(this + 0x144),*(undefined4 *)(this + 0x10c));
  uVar1 = cocos2d::CCMenu::create(local_b0,0);
  *(undefined4 *)(this + 0x13c) = uVar1;
  fVar5 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x13c));
  pcVar4 = *(code **)(**(int **)(this + 0x13c) + 0x4c);
  uVar1 = *(undefined4 *)(this + 0x13c);
  cocos2d::CCPoint::CCPoint(&local_30,fVar5,extraout_s1_05);
  (*pcVar4)(uVar1,&local_30);
  (**(code **)(**(int **)(this + 0x144) + 200))
            (*(undefined4 *)(this + 0x144),*(undefined4 *)(this + 0x13c));
  local_a0 = 0x3f0ccccd;
  local_9c = 24.0;
  local_98 = -8.0;
  pcVar2 = (char *)FUN_007c5300(&DAT_00951054);
  uVar1 = cocos2d::CCLabelAtlas::create("READY",pcVar2,0x20,0x20,0x20);
  *(undefined4 *)(this + 0x108) = uVar1;
  cocos2d::CCObject::retain(*(CCObject **)(this + 0x108));
  cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x108),(int)local_9c);
  (**(code **)(**(int **)(this + 0x108) + 0x40))(*(undefined4 *)(this + 0x108),local_a0);
  (**(code **)(**(int **)(this + 0x104) + 0x50))(*(undefined4 *)(this + 0x104));
  fVar5 = (float)(**(code **)(**(int **)(this + 0x104) + 0x50))(*(undefined4 *)(this + 0x104));
  cocos2d::CCPoint::CCPoint(aCStack_88,fVar5,extraout_s1_06);
  FUN_003a7078(0,extraout_s1_06,SUB84((double)local_98,0),local_40);
  uVar1 = (**(code **)(**(int **)(this + 0x108) + 0x1fc))(*(undefined4 *)(this + 0x108));
  FUN_0079a3f4(auStack_f4);
  FUN_007c6a60(auStack_f0,uVar1,auStack_f4);
  uVar1 = FUN_007c505c(auStack_f0);
  VectorUnsignedToFloat(uVar1,(byte)(in_fpscr >> 0x16) & 3);
  fVar5 = (float)FUN_003a7078(0,extraout_s1_06,SUB84((double)local_98,0),&local_30);
  cocos2d::CCPoint::CCPoint(aCStack_80,fVar5,extraout_s1_07);
  FUN_003a7058(aCStack_78,aCStack_88,aCStack_80);
  cocos2d::CCPoint::operator=((CCPoint *)(this + 0x15c),aCStack_78);
  FUN_007c5914(auStack_f0);
  FUN_0079a3fc(auStack_f4);
  (**(code **)(**(int **)(this + 0x108) + 0x4c))(*(undefined4 *)(this + 0x108),this + 0x15c);
  (**(code **)(**(int **)(this + 0x144) + 200))
            (*(undefined4 *)(this + 0x144),*(undefined4 *)(this + 0x108));
  pcVar2 = (char *)FUN_007c5300(&DAT_00951054);
  uVar1 = cocos2d::CCLabelAtlas::create("___ CHAT FILTER ON ___",pcVar2,0x20,0x20,0x20);
  *(undefined4 *)(this + 0x130) = uVar1;
  cocos2d::CCObject::retain(*(CCObject **)(this + 0x130));
  cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x130),(int)local_9c);
  fVar5 = (float)(**(code **)(**(int **)(this + 0x130) + 0x40))
                           (*(undefined4 *)(this + 0x130),0x3eb33333);
  pcVar4 = *(code **)(**(int **)(this + 0x130) + 0x4c);
  uVar1 = *(undefined4 *)(this + 0x130);
  cocos2d::CCPoint::CCPoint(&local_30,fVar5,extraout_s1_08);
  (*pcVar4)(uVar1,&local_30);
  (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x130));
  pcVar4 = *(code **)(**(int **)(this + 0x130) + 0x1bc);
  uVar3 = *(undefined4 *)(this + 0x130);
  uVar1 = FUN_003a6ffc(0xff,0,0);
  local_30 = SUB41(uVar1,0);
  local_2f = (undefined1)((uint)uVar1 >> 8);
  local_2e = (undefined1)((uint)uVar1 >> 0x10);
  (*pcVar4)(uVar3,&local_30);
  (**(code **)(**(int **)(this + 0x130) + 0x90))(*(undefined4 *)(this + 0x130),0);
  pcVar2 = (char *)FUN_007c5300(&DAT_00951054);
  uVar1 = cocos2d::CCLabelAtlas::create("SEARCH",pcVar2,0x20,0x20,0x20);
  *(undefined4 *)(this + 0x120) = uVar1;
  cocos2d::CCObject::retain(*(CCObject **)(this + 0x120));
  cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x120),(int)local_9c);
  (**(code **)(**(int **)(this + 0x120) + 0x40))(*(undefined4 *)(this + 0x120),local_a0);
  (**(code **)(**(int **)(this + 0x11c) + 0x50))(*(undefined4 *)(this + 0x11c));
  fVar5 = (float)(**(code **)(**(int **)(this + 0x11c) + 0x50))(*(undefined4 *)(this + 0x11c));
  cocos2d::CCPoint::CCPoint(aCStack_88,fVar5,extraout_s1_09);
  FUN_003a7078(0,extraout_s1_09,SUB84((double)local_98,0),local_40);
  uVar1 = (**(code **)(**(int **)(this + 0x120) + 0x1fc))(*(undefined4 *)(this + 0x120));
  FUN_0079a3f4(auStack_f4);
  FUN_007c6a60(auStack_f0,uVar1,auStack_f4);
  uVar1 = FUN_007c505c(auStack_f0);
  VectorUnsignedToFloat(uVar1,(byte)(in_fpscr >> 0x16) & 3);
  fVar5 = (float)FUN_003a7078(0,extraout_s1_09,SUB84((double)local_98,0),&local_30);
  cocos2d::CCPoint::CCPoint(aCStack_80,fVar5,extraout_s1_10);
  FUN_003a7058(aCStack_78,aCStack_88,aCStack_80);
  cocos2d::CCPoint::operator=((CCPoint *)(this + 0x154),aCStack_78);
  FUN_007c5914(auStack_f0);
  FUN_0079a3fc(auStack_f4);
  (**(code **)(**(int **)(this + 0x120) + 0x4c))(*(undefined4 *)(this + 0x120),this + 0x154);
  (**(code **)(**(int **)(this + 0x144) + 200))
            (*(undefined4 *)(this + 0x144),*(undefined4 *)(this + 0x120));
  pcVar2 = (char *)FUN_007c5300(&DAT_00951054);
  uVar1 = cocos2d::CCLabelAtlas::create("INVITE",pcVar2,0x20,0x20,0x20);
  *(undefined4 *)(this + 0x118) = uVar1;
  cocos2d::CCObject::retain(*(CCObject **)(this + 0x118));
  cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x118),(int)local_9c);
  (**(code **)(**(int **)(this + 0x118) + 0x40))(*(undefined4 *)(this + 0x118),local_a0);
  pcVar4 = *(code **)(**(int **)(this + 0x118) + 0x4c);
  uVar3 = *(undefined4 *)(this + 0x118);
  (**(code **)(**(int **)(this + 0x114) + 0x50))(*(undefined4 *)(this + 0x114));
  fVar5 = (float)(**(code **)(**(int **)(this + 0x114) + 0x50))(*(undefined4 *)(this + 0x114));
  cocos2d::CCPoint::CCPoint(aCStack_88,fVar5,extraout_s1_11);
  FUN_003a7078(0,extraout_s1_11,SUB84((double)local_98,0),local_40);
  uVar1 = (**(code **)(**(int **)(this + 0x118) + 0x1fc))(*(undefined4 *)(this + 0x118));
  FUN_0079a3f4(auStack_f4);
  FUN_007c6a60(auStack_f0,uVar1,auStack_f4);
  uVar1 = FUN_007c505c(auStack_f0);
  VectorUnsignedToFloat(uVar1,(byte)(in_fpscr >> 0x16) & 3);
  fVar5 = (float)FUN_003a7078(0,extraout_s1_11,SUB84((double)local_98,0),&local_30);
  cocos2d::CCPoint::CCPoint(aCStack_80,fVar5,extraout_s1_12);
  FUN_003a7058(aCStack_78,aCStack_88,aCStack_80);
  (*pcVar4)(uVar3,aCStack_78);
  FUN_007c5914(auStack_f0);
  FUN_0079a3fc(auStack_f4);
  (**(code **)(**(int **)(this + 0x144) + 200))
            (*(undefined4 *)(this + 0x144),*(undefined4 *)(this + 0x118));
  uVar1 = cocos2d::CCSprite::createWithSpriteFrameName("cog.png");
  *(undefined4 *)(this + 0x138) = uVar1;
  cocos2d::CCObject::retain(*(CCObject **)(this + 0x138));
  pcVar4 = *(code **)(**(int **)(this + 0x138) + 0x4c);
  uVar3 = *(undefined4 *)(this + 0x138);
  uVar1 = (**(code **)(**(int **)(this + 0x134) + 0x50))(*(undefined4 *)(this + 0x134));
  (*pcVar4)(uVar3,uVar1);
  (**(code **)(**(int **)(this + 0x144) + 200))
            (*(undefined4 *)(this + 0x144),*(undefined4 *)(this + 0x138));
  pcVar2 = (char *)FUN_007c5300(&DAT_00951054);
  uVar1 = cocos2d::CCLabelAtlas::create("EXIT",pcVar2,0x20,0x20,0x20);
  *(undefined4 *)(this + 0x110) = uVar1;
  cocos2d::CCObject::retain(*(CCObject **)(this + 0x110));
  cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x110),(int)local_9c);
  (**(code **)(**(int **)(this + 0x110) + 0x40))(*(undefined4 *)(this + 0x110),local_a0);
  pcVar4 = *(code **)(**(int **)(this + 0x110) + 0x4c);
  uVar3 = *(undefined4 *)(this + 0x110);
  (**(code **)(**(int **)(this + 0x10c) + 0x50))(*(undefined4 *)(this + 0x10c));
  fVar5 = (float)(**(code **)(**(int **)(this + 0x10c) + 0x50))(*(undefined4 *)(this + 0x10c));
  cocos2d::CCPoint::CCPoint(aCStack_88,fVar5,extraout_s1_13);
  FUN_003a7078(0,extraout_s1_13,SUB84((double)local_98,0),local_40);
  uVar1 = (**(code **)(**(int **)(this + 0x110) + 0x1fc))(*(undefined4 *)(this + 0x110));
  FUN_0079a3f4(auStack_f4);
  FUN_007c6a60(auStack_f0,uVar1,auStack_f4);
  uVar1 = FUN_007c505c(auStack_f0);
  VectorUnsignedToFloat(uVar1,(byte)(in_fpscr >> 0x16) & 3);
  fVar5 = (float)FUN_003a7078(0,extraout_s1_13,SUB84((double)local_98,0),&local_30);
  cocos2d::CCPoint::CCPoint(aCStack_80,fVar5,extraout_s1_14);
  FUN_003a7058(aCStack_78,aCStack_88,aCStack_80);
  (*pcVar4)(uVar3,aCStack_78);
  FUN_007c5914(auStack_f0);
  FUN_0079a3fc(auStack_f4);
  (**(code **)(**(int **)(this + 0x144) + 200))
            (*(undefined4 *)(this + 0x144),*(undefined4 *)(this + 0x110));
  uVar1 = cocos2d::CCSprite::createWithSpriteFrameName("msg.png");
  *(undefined4 *)(this + 0x140) = uVar1;
  cocos2d::CCObject::retain(*(CCObject **)(this + 0x140));
  pcVar4 = *(code **)(**(int **)(this + 0x140) + 0x4c);
  uVar3 = *(undefined4 *)(this + 0x140);
  uVar1 = (**(code **)(**(int **)(this + 0x13c) + 0x50))(*(undefined4 *)(this + 0x13c));
  (*pcVar4)(uVar3,uVar1);
  (**(code **)(**(int **)(this + 0x144) + 200))
            (*(undefined4 *)(this + 0x144),*(undefined4 *)(this + 0x140));
  this_00 = (CCString *)
            cocos2d::CCString::createWithFormat
                      ("AVAILABLE PLAYERS: %d",*(undefined4 *)(this + 0x150));
  pcVar2 = (char *)cocos2d::CCString::getCString(this_00);
  uVar1 = cocos2d::CCLabelTTF::create(pcVar2,"Arial-BoldMT",extraout_s0);
  *(undefined4 *)(this + 0x128) = uVar1;
  fVar5 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x128));
  pcVar4 = *(code **)(**(int **)(this + 0x128) + 0x7c);
  uVar1 = *(undefined4 *)(this + 0x128);
  cocos2d::CCPoint::CCPoint(&local_30,fVar5,extraout_s1_15);
  fVar5 = (float)(*pcVar4)(uVar1,&local_30);
  pcVar4 = *(code **)(**(int **)(this + 0x128) + 0x4c);
  uVar1 = *(undefined4 *)(this + 0x128);
  cocos2d::CCPoint::CCPoint(&local_30,fVar5,extraout_s1_16);
  (*pcVar4)(uVar1,&local_30);
  (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x128));
  local_94 = (int *)cocos2d::CCSprite::create("title_ret2_new.png");
  pcVar4 = *(code **)(*local_94 + 0x4c);
  cocos2d::CCPoint::CCPoint(&local_30,extraout_s0_00,extraout_s1_17);
  (*pcVar4)(local_94,&local_30);
  (**(code **)(*local_94 + 0x1a4))(local_94,0x23);
  (**(code **)(*(int *)this + 200))(this,local_94);
  return;
}

// ---- PlayerLobby::entered  @ 0x3ab8c0
/* PlayerLobby::entered() */

void __thiscall PlayerLobby::entered(PlayerLobby *this)

{
  float fVar1;
  
  fVar1 = (float)cocos2d::CCNode::schedule((_func_void_float *)this);
  fVar1 = (float)cocos2d::CCNode::schedule((_func_void_float *)this,fVar1);
  fVar1 = (float)cocos2d::CCNode::schedule((_func_void_float *)this,fVar1);
  cocos2d::CCNode::schedule((_func_void_float *)this,fVar1);
  return;
}

// ---- PlayerLobby::exited  @ 0x3ab960
/* PlayerLobby::exited() */

void __thiscall PlayerLobby::exited(PlayerLobby *this)

{
  CCNotificationCenter *this_00;
  NetworkManager *this_01;
  
  this_00 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::removeAllObservers(this_00,(CCObject *)this);
  cocos2d::CCNode::unscheduleAllSelectors((CCNode *)this);
  this_01 = (NetworkManager *)NetworkManager::sharedNetworkManager();
  NetworkManager::setWasInvited(this_01,false);
  return;
}

// ---- PlayerLobby::setReadyLabel  @ 0x3ab994
/* PlayerLobby::setReadyLabel(std::string) */

void __thiscall PlayerLobby::setReadyLabel(PlayerLobby *this,undefined4 param_2)

{
  undefined4 uVar1;
  code *pcVar2;
  undefined4 uVar3;
  
  pcVar2 = *(code **)(**(int **)(this + 0x108) + 0x1f8);
  uVar3 = *(undefined4 *)(this + 0x108);
  uVar1 = FUN_007c5300(param_2);
  (*pcVar2)(uVar3,uVar1);
  return;
}

// ---- PlayerLobby::addIMRow  @ 0x3ab9c4
/* PlayerLobby::addIMRow(std::string, bool) */

void __thiscall PlayerLobby::addIMRow(PlayerLobby *this,undefined4 param_2,char param_3)

{
  char *pcVar1;
  CCObject *pCVar2;
  undefined4 uVar3;
  CCScrollView *pCVar4;
  code *pcVar5;
  float extraout_s0;
  undefined8 uVar6;
  CCPoint local_18;
  undefined1 local_17;
  undefined1 local_16;
  
  pcVar1 = (char *)FUN_007c5300(param_2);
  pCVar2 = (CCObject *)cocos2d::CCLabelTTF::create(pcVar1,"Arial",extraout_s0);
  pcVar5 = *(code **)(*(int *)pCVar2 + 0x1bc);
  uVar3 = FUN_003a6ffc(0xff,0xff,0xff);
  local_18 = SUB41(uVar3,0);
  local_17 = (undefined1)((uint)uVar3 >> 8);
  local_16 = (undefined1)((uint)uVar3 >> 0x10);
  uVar6 = (*pcVar5)(pCVar2,&local_18);
  pcVar5 = *(code **)(*(int *)pCVar2 + 0x7c);
  cocos2d::CCPoint::CCPoint(&local_18,(float)uVar6,(float)((ulonglong)uVar6 >> 0x20));
  (*pcVar5)(pCVar2,&local_18);
  cocos2d::CCArray::addObject(*(CCArray **)(this + 0xfc),pCVar2);
  uVar6 = cocos2d::extension::CCTableView::reloadData(*(CCTableView **)(this + 0xf8));
  pCVar4 = *(CCScrollView **)(this + 0xf8);
  cocos2d::CCPoint::CCPoint(&local_18,(float)uVar6,(float)((ulonglong)uVar6 >> 0x20));
  cocos2d::extension::CCScrollView::setContentOffset(pCVar4,&local_18,0);
  if (param_3 != '\0') {
    Sound::playSound(sndEng,0x10);
  }
  return;
}

// ---- PlayerLobby::onReceiveIM  @ 0x3abab4
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003abc0e */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* PlayerLobby::onReceiveIM(cocos2d::CCObject*) */

void PlayerLobby::onReceiveIM(CCObject *param_1)

{
  byte bVar1;
  CCString *pCVar2;
  undefined4 uVar3;
  int iVar4;
  NetworkManager *this;
  CCDictionary *this_00;
  undefined4 uVar5;
  CCArray *in_r1;
  bool bVar6;
  code *pcVar7;
  undefined4 in_s1;
  string asStack_40 [4];
  undefined1 auStack_3c [4];
  undefined1 auStack_38 [4];
  undefined1 auStack_34 [4];
  undefined1 auStack_30 [4];
  CCArray *local_2c;
  CCArray *local_28;
  CCString *local_24;
  undefined4 local_20;
  undefined4 uStack_1c;
  
  if (in_r1 == (CCArray *)0x0) {
    return;
  }
  local_2c = in_r1;
  pCVar2 = (CCString *)cocos2d::CCArray::objectAtIndex(in_r1,0);
  uVar3 = cocos2d::CCString::getCString(pCVar2);
  FUN_0079a3f4(&local_20);
  FUN_007c6a60(asStack_40,uVar3,&local_20);
  FUN_0079a3fc(&local_20);
  pCVar2 = (CCString *)cocos2d::CCArray::objectAtIndex(local_2c,1);
  uVar3 = cocos2d::CCString::getCString(pCVar2);
  FUN_0079a3f4(&local_20);
  FUN_007c6a60(auStack_3c,uVar3,&local_20);
  FUN_0079a3fc(&local_20);
  iVar4 = FUN_007c505c(auStack_3c);
  if (iVar4 == 0) goto LAB_003abcc2;
  FUN_0079a3f4(&local_20);
  FUN_007c6a60(auStack_38,"Server",&local_20);
  FUN_0079a3fc(&local_20);
  iVar4 = FUN_007c505c(asStack_40);
  if ((iVar4 == 0) || (iVar4 = FUN_007c5724(asStack_40,"Server"), iVar4 == 0)) {
    bVar6 = false;
  }
  else {
    bVar6 = true;
  }
  if (bVar6) {
    this = (NetworkManager *)NetworkManager::sharedNetworkManager();
    this_00 = (CCDictionary *)NetworkManager::getPeerPlayers(this);
    local_28 = (CCArray *)cocos2d::CCDictionary::objectForKey(this_00,asStack_40);
    if (local_28 != (CCArray *)0x0) {
      pCVar2 = (CCString *)cocos2d::CCArray::objectAtIndex(local_28,1);
      uVar3 = cocos2d::CCString::getCString(pCVar2);
      FUN_007c5e70(auStack_38,uVar3);
      goto LAB_003abbd8;
    }
  }
  else {
LAB_003abbd8:
    uVar3 = sndEng;
    FUN_007c64e8(auStack_34,auStack_3c);
    FUN_003a7078(SUB84((double)(float)centerPoint,0),in_s1,SUB84((double)centerPoint._4_4_,0),
                 &local_20);
    bVar1 = Sound::playTaunt(uVar3,auStack_34,local_20,uStack_1c);
    FUN_007c5914(auStack_34);
    uVar3 = FUN_007c5300(auStack_38);
    uVar5 = FUN_007c5300(auStack_3c);
    local_24 = (CCString *)cocos2d::CCString::createWithFormat("%s: %s",uVar3,uVar5);
    pcVar7 = *(code **)(*(int *)param_1 + 0x220);
    uVar3 = cocos2d::CCString::getCString(local_24);
    FUN_0079a3f4(auStack_34);
    FUN_007c6a60(auStack_30,uVar3,auStack_34);
    (*pcVar7)(param_1,auStack_30,bVar1 ^ 1);
    FUN_007c5914(auStack_30);
    FUN_0079a3fc(auStack_34);
  }
  FUN_007c5914(auStack_38);
LAB_003abcc2:
  FUN_007c5914(auStack_3c);
  FUN_007c5914(asStack_40);
  return;
}

// ---- PlayerLobby::getHostLobbyRow  @ 0x3abd60
/* PlayerLobby::getHostLobbyRow() */

LobbyRow * __thiscall PlayerLobby::getHostLobbyRow(PlayerLobby *this)

{
  LobbyRow *pLVar1;
  CCDictionary *this_00;
  undefined1 auStack_18 [4];
  string asStack_14 [4];
  undefined1 auStack_10 [4];
  LobbyRow *local_c;
  
  NetworkManager::sharedNetworkManager();
  NetworkManager::getHostPeerID();
  this_00 = *(CCDictionary **)(this + 0x124);
  FUN_0079a3f4(auStack_10);
  FUN_007c6a60(asStack_14,&DAT_007e1f04,auStack_10);
  local_c = (LobbyRow *)cocos2d::CCDictionary::objectForKey(this_00,asStack_14);
  FUN_007c5914(asStack_14);
  FUN_0079a3fc(auStack_10);
  FUN_007c64e8(auStack_10,auStack_18);
  LobbyRow::setPeerId(local_c,auStack_10);
  FUN_007c5914(auStack_10);
  pLVar1 = local_c;
  FUN_007c5914(auStack_18);
  return pLVar1;
}

// ---- PlayerLobby::endSearch  @ 0x3abe14
/* PlayerLobby::endSearch() */

void __thiscall PlayerLobby::endSearch(PlayerLobby *this)

{
  int iVar1;
  
  iVar1 = (**(code **)(*(int *)this + 0x1dc))(this);
  *(undefined4 *)(iVar1 + 0x118) = 1;
  this[0x14d] = (PlayerLobby)0x0;
  return;
}

// ---- PlayerLobby::searchBegan  @ 0x3abe44
/* PlayerLobby::searchBegan() */

void __thiscall PlayerLobby::searchBegan(PlayerLobby *this)

{
  int iVar1;
  
  iVar1 = (**(code **)(*(int *)this + 0x1dc))(this);
  *(undefined4 *)(iVar1 + 0x118) = 2;
  return;
}

// ---- PlayerLobby::beginSearch  @ 0x3abe6c
/* PlayerLobby::beginSearch() */

void __thiscall PlayerLobby::beginSearch(PlayerLobby *this)

{
  NetworkManager *this_00;
  int iVar1;
  
  this_00 = (NetworkManager *)NetworkManager::sharedNetworkManager();
  NetworkManager::addPlayersToMatch(this_00,false,gameType);
  (**(code **)(**(int **)(this + 0x104) + 0x90))(*(undefined4 *)(this + 0x104),0);
  (**(code **)(**(int **)(this + 0x108) + 0x90))(*(undefined4 *)(this + 0x108),0);
  (**(code **)(**(int **)(this + 0x138) + 0x90))(*(undefined4 *)(this + 0x138),0);
  (**(code **)(**(int **)(this + 0x134) + 0x90))(*(undefined4 *)(this + 0x134),0);
  iVar1 = (**(code **)(*(int *)this + 0x1dc))(this);
  if (*(int *)(iVar1 + 0x118) == 3) {
    Sound::playSound(sndEng,0xd);
    (**(code **)(*(int *)this + 0x1bc))(this);
  }
  (**(code **)(**(int **)(this + 0x120) + 0x90))(*(undefined4 *)(this + 0x120),1);
  (**(code **)(**(int **)(this + 0x11c) + 0x90))(*(undefined4 *)(this + 0x11c),1);
  return;
}

// ---- PlayerLobby::updateCountDown  @ 0x3abf64
/* PlayerLobby::updateCountDown(float) */

void __thiscall PlayerLobby::updateCountDown(PlayerLobby *this,float param_1)

{
  bool bVar1;
  uint uVar2;
  int iVar3;
  CCString *this_00;
  undefined4 uVar4;
  float in_r1;
  PlayerLobby PVar5;
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
  this[0x14c] = (PlayerLobby)(1 < uVar2);
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
      if ((this[0x14c] == (PlayerLobby)0x0) || (*(int *)(local_14 + 0x118) != 3)) {
        PVar5 = (PlayerLobby)0x0;
      }
      else {
        PVar5 = (PlayerLobby)0x1;
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
  if (this[0x14c] == (PlayerLobby)0x0) {
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
      uVar4 = FUN_003a6ffc(0xff,0,0);
      local_20 = (undefined1)uVar4;
      local_1f = (undefined1)((uint)uVar4 >> 8);
      local_1e = (undefined1)((uint)uVar4 >> 0x10);
      (*pcVar6)(uVar7,&local_20);
      (**(code **)(**(int **)(this + 0x104) + 0x90))(*(undefined4 *)(this + 0x104),0);
      (**(code **)(**(int **)(this + 0x108) + 0x90))(*(undefined4 *)(this + 0x108),0);
      (**(code **)(**(int **)(this + 0x134) + 0x90))(*(undefined4 *)(this + 0x134),0);
      (**(code **)(**(int **)(this + 0x138) + 0x90))(*(undefined4 *)(this + 0x138),0);
      iVar3 = (**(code **)(**(int **)(this + 0x16c) + 0x94))(*(undefined4 *)(this + 0x16c));
      if (iVar3 != 0) {
        (**(code **)(*(int *)this + 0x1e8))(this,0);
      }
    }
    if (*(float *)(this + 0x148) == 0.0) {
      (**(code **)(*(int *)this + 0x1b8))(this);
    }
  }
  return;
}

// ---- PlayerLobby::updateButtonVisibility  @ 0x3ac1c0
/* PlayerLobby::updateButtonVisibility() */

void __thiscall PlayerLobby::updateButtonVisibility(PlayerLobby *this)

{
  bool bVar1;
  char cVar2;
  NetworkManager *this_00;
  uint uVar3;
  int iVar4;
  
  this_00 = (NetworkManager *)NetworkManager::sharedNetworkManager();
  cVar2 = NetworkManager::isSearching(this_00);
  if ((cVar2 == '\x01') ||
     (uVar3 = cocos2d::CCDictionary::count(*(CCDictionary **)(this + 0x124)), uVar3 < 2)) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (bVar1) {
    (**(code **)(**(int **)(this + 0x104) + 0x90))(*(undefined4 *)(this + 0x104),1);
    (**(code **)(**(int **)(this + 0x108) + 0x90))(*(undefined4 *)(this + 0x108),1);
    iVar4 = (**(code **)(*(int *)this + 0x1dc))(this);
    if (*(int *)(iVar4 + 0x118) != 3) {
      (**(code **)(**(int **)(this + 0x134) + 0x90))(*(undefined4 *)(this + 0x134),1);
      (**(code **)(**(int **)(this + 0x138) + 0x90))(*(undefined4 *)(this + 0x138),1);
    }
  }
  else {
    (**(code **)(**(int **)(this + 0x104) + 0x90))(*(undefined4 *)(this + 0x104),0);
    (**(code **)(**(int **)(this + 0x108) + 0x90))(*(undefined4 *)(this + 0x108),0);
    (**(code **)(**(int **)(this + 0x134) + 0x90))(*(undefined4 *)(this + 0x134),0);
    (**(code **)(**(int **)(this + 0x138) + 0x90))(*(undefined4 *)(this + 0x138),0);
    (**(code **)(**(int **)(this + 0x10c) + 0x90))(*(undefined4 *)(this + 0x10c),1);
    (**(code **)(**(int **)(this + 0x110) + 0x90))(*(undefined4 *)(this + 0x110),1);
  }
  return;
}

// ---- PlayerLobby::updateNetworkStep  @ 0x3ac314
/* PlayerLobby::updateNetworkStep(float) */

void PlayerLobby::updateNetworkStep(float param_1)

{
  float fVar1;
  
  fVar1 = (float)NetworkManager::sharedNetworkManager();
  NetworkManager::updateNetworkObjects(fVar1);
  return;
}

// ---- PlayerLobby::viewUpdateStep  @ 0x3ac330
/* PlayerLobby::viewUpdateStep(float) */

void __thiscall PlayerLobby::viewUpdateStep(PlayerLobby *this,float param_1)

{
  bool bVar1;
  char cVar2;
  undefined4 uVar3;
  NetworkManager *pNVar4;
  int iVar5;
  int iVar6;
  float in_r1;
  undefined4 uVar7;
  code *pcVar8;
  undefined8 uVar9;
  CCPoint aCStack_28 [8];
  undefined1 local_20;
  undefined1 local_1f;
  undefined1 local_1e;
  
  (**(code **)(*(int *)this + 0x1cc))(this);
  pcVar8 = *(code **)(**(int **)(this + 0x128) + 0x1bc);
  uVar7 = *(undefined4 *)(this + 0x128);
  uVar3 = FUN_003a6ffc(0xff,0xff,0xff);
  local_20 = (undefined1)uVar3;
  local_1f = (undefined1)((uint)uVar3 >> 8);
  local_1e = (undefined1)((uint)uVar3 >> 0x10);
  (*pcVar8)(uVar7,&local_20);
  (**(code **)(*(int *)this + 0x1d0))(this,in_r1);
  *(float *)(this + 0x164) = *(float *)(this + 0x164) + in_r1;
  pNVar4 = (NetworkManager *)NetworkManager::sharedNetworkManager();
  iVar5 = NetworkManager::isSearching(pNVar4);
  if (iVar5 == 0) {
    (**(code **)(**(int **)(this + 0x120) + 0x1f8))(*(undefined4 *)(this + 0x120),"SEARCH");
    (**(code **)(**(int **)(this + 0x120) + 0x4c))(*(undefined4 *)(this + 0x120),this + 0x154);
  }
  else {
    (**(code **)(**(int **)(this + 0x128) + 0x23c))(*(undefined4 *)(this + 0x128),"SEARCHING");
    if ((int)((uint)(*(float *)(this + 0x164) < 0.25) << 0x1f) < 0) {
      (**(code **)(**(int **)(this + 0x128) + 0x23c))(*(undefined4 *)(this + 0x128),"SEARCHING");
    }
    else if ((-1 < (int)((uint)(*(float *)(this + 0x164) < 0.5) << 0x1f)) ||
            (*(float *)(this + 0x164) <= 0.25)) {
      if ((int)((uint)(*(float *)(this + 0x164) < 0.75) << 0x1f) < 0) {
        (**(code **)(**(int **)(this + 0x128) + 0x23c))(*(undefined4 *)(this + 0x128),"SEARCHING..")
        ;
      }
      else if ((int)((uint)(*(float *)(this + 0x164) < 1.0) << 0x1f) < 0) {
        (**(code **)(**(int **)(this + 0x128) + 0x23c))
                  (*(undefined4 *)(this + 0x128),"SEARCHING...");
      }
      else if (1.25 < *(float *)(this + 0x164)) {
        *(undefined4 *)(this + 0x164) = 0;
      }
    }
    else {
      (**(code **)(**(int **)(this + 0x128) + 0x23c))(*(undefined4 *)(this + 0x128),"SEARCHING.");
    }
    uVar9 = (**(code **)(**(int **)(this + 0x120) + 0x1f8))
                      (*(undefined4 *)(this + 0x120),&DAT_007e2140);
    pcVar8 = *(code **)(**(int **)(this + 0x120) + 0x4c);
    uVar3 = *(undefined4 *)(this + 0x120);
    cocos2d::CCPoint::CCPoint(aCStack_28,(float)uVar9,(float)((ulonglong)uVar9 >> 0x20));
    FUN_003a7058(&local_20,this + 0x154,aCStack_28);
    (*pcVar8)(uVar3,&local_20);
  }
  if (chatMask == 0) {
    (**(code **)(**(int **)(this + 0x130) + 0x90))(*(undefined4 *)(this + 0x130),0);
  }
  else {
    (**(code **)(**(int **)(this + 0x130) + 0x90))(*(undefined4 *)(this + 0x130),1);
  }
  if ((gameType != 4) && (gameType != 2)) {
    return;
  }
  pNVar4 = (NetworkManager *)NetworkManager::sharedNetworkManager();
  iVar5 = NetworkManager::isSearching(pNVar4);
  if ((iVar5 == 0) || (this[0x14d] == (PlayerLobby)0x1)) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (bVar1) {
    pNVar4 = (NetworkManager *)NetworkManager::sharedNetworkManager();
    NetworkManager::cancelSearch(pNVar4);
  }
  iVar5 = (**(code **)(*(int *)this + 0x1dc))(this);
  if (iVar5 == 0) goto LAB_003ac694;
  if (*(int *)(iVar5 + 0x118) == 1) {
    pNVar4 = (NetworkManager *)NetworkManager::sharedNetworkManager();
    iVar6 = NetworkManager::isSearching(pNVar4);
    if (iVar6 == 0) goto LAB_003ac644;
    bVar1 = true;
  }
  else {
LAB_003ac644:
    bVar1 = false;
  }
  if (bVar1) {
    (**(code **)(*(int *)this + 0x228))(this);
    goto LAB_003ac694;
  }
  if (*(int *)(iVar5 + 0x118) == 2) {
    pNVar4 = (NetworkManager *)NetworkManager::sharedNetworkManager();
    cVar2 = NetworkManager::isSearching(pNVar4);
    if (cVar2 == '\x01') goto LAB_003ac680;
    bVar1 = true;
  }
  else {
LAB_003ac680:
    bVar1 = false;
  }
  if (bVar1) {
    (**(code **)(*(int *)this + 0x224))(this);
  }
LAB_003ac694:
  (**(code **)(*(int *)this + 0x1e0))(this);
  return;
}

// ---- PlayerLobby::pingUpdateStep  @ 0x3ac6d0
/* PlayerLobby::pingUpdateStep(float) */

void PlayerLobby::pingUpdateStep(float param_1)

{
  CCObject *pCVar1;
  
  pCVar1 = (CCObject *)NetworkManager::sharedNetworkManager();
  NetworkManager::sendPing(pCVar1);
  return;
}

// ---- PlayerLobby::updateStep  @ 0x3ac6ec
/* PlayerLobby::updateStep(float) */

void PlayerLobby::updateStep(float param_1)

{
  int *in_r0;
  NetworkManager *this;
  
  (**(code **)(*in_r0 + 0x1a8))(in_r0);
  this = (NetworkManager *)NetworkManager::sharedNetworkManager();
  NetworkManager::refreshPlayersList(this);
  return;
}

// ---- PlayerLobby::onPeerRequestedSetupData  @ 0x3ac714
/* PlayerLobby::onPeerRequestedSetupData(cocos2d::CCObject*) */

void PlayerLobby::onPeerRequestedSetupData(CCObject *param_1)

{
  undefined4 uVar1;
  NetworkManager *pNVar2;
  undefined1 auStack_1c [4];
  undefined1 auStack_18 [4];
  undefined1 auStack_14 [4];
  
  pNVar2 = (NetworkManager *)NetworkManager::sharedNetworkManager();
  FUN_007c64e8(auStack_18,param_1 + 300);
  uVar1 = playerSkin;
  FUN_0079a3f4(auStack_1c);
  FUN_007c6a60(auStack_14,&DAT_007e1ec0,auStack_1c);
  NetworkManager::sendPlayerSetup(pNVar2,auStack_18,uVar1,auStack_14,playerTeam);
  FUN_007c5914(auStack_14);
  FUN_0079a3fc(auStack_1c);
  FUN_007c5914(auStack_18);
  return;
}

// ---- PlayerLobby::onLobbyStatus  @ 0x3ac7b8
/* PlayerLobby::onLobbyStatus(cocos2d::CCObject*) */

void __thiscall PlayerLobby::onLobbyStatus(PlayerLobby *this,CCObject *param_1)

{
  char cVar1;
  bool bVar2;
  undefined4 uVar3;
  char *pcVar4;
  int iVar5;
  NetworkManager *this_00;
  CCDictionary *pCVar6;
  undefined1 auStack_3c [4];
  string asStack_38 [4];
  string asStack_34 [4];
  string asStack_30 [4];
  CCArray *local_2c;
  CCString *local_28;
  CCString *local_24;
  CCInteger *local_20;
  CCString *local_1c;
  LobbyRow *local_18;
  uint local_14;
  
  local_2c = (CCArray *)param_1;
  local_28 = (CCString *)cocos2d::CCArray::objectAtIndex((CCArray *)param_1,0);
  local_24 = (CCString *)cocos2d::CCArray::objectAtIndex(local_2c,1);
  local_20 = (CCInteger *)cocos2d::CCArray::objectAtIndex(local_2c,2);
  local_1c = (CCString *)cocos2d::CCArray::objectAtIndex(local_2c,3);
  uVar3 = cocos2d::CCString::getCString(local_28);
  FUN_0079a3f4(asStack_30);
  FUN_007c6a60(auStack_3c,uVar3,asStack_30);
  FUN_0079a3fc(asStack_30);
  pcVar4 = (char *)FUN_007c5b1c(auStack_3c,0);
  cVar1 = *pcVar4;
  pCVar6 = *(CCDictionary **)(this + 0x124);
  uVar3 = cocos2d::CCString::getCString(local_24);
  FUN_0079a3f4(asStack_30);
  FUN_007c6a60(asStack_38,uVar3,asStack_30);
  local_18 = (LobbyRow *)cocos2d::CCDictionary::objectForKey(pCVar6,asStack_38);
  FUN_007c5914(asStack_38);
  FUN_0079a3fc(asStack_30);
  if (local_18 != (LobbyRow *)0x0) {
    if (cVar1 == 'R') {
      *(undefined4 *)(local_18 + 0x118) = 3;
    }
    else if (cVar1 == 'S') {
      *(undefined4 *)(local_18 + 0x118) = 2;
    }
    else if (cVar1 == 'N') {
      *(undefined4 *)(local_18 + 0x118) = 1;
    }
    else {
      *(undefined4 *)(local_18 + 0x118) = 4;
    }
    iVar5 = cocos2d::CCInteger::getValue(local_20);
    LobbyRow::setTeamId(local_18,iVar5);
    this_00 = (NetworkManager *)NetworkManager::sharedNetworkManager();
    pCVar6 = (CCDictionary *)NetworkManager::getPeerPlayers(this_00);
    uVar3 = cocos2d::CCString::getCString(local_24);
    FUN_0079a3f4(asStack_30);
    FUN_007c6a60(asStack_34,uVar3,asStack_30);
    local_14 = cocos2d::CCDictionary::objectForKey(pCVar6,asStack_34);
    FUN_007c5914(asStack_34);
    FUN_0079a3fc(asStack_30);
    iVar5 = cocos2d::CCInteger::getValue(local_20);
    bVar2 = (bool)cocos2d::CCInteger::create(iVar5);
    cocos2d::CCArray::replaceObjectAtIndex(local_14,(CCObject *)0x4,bVar2);
    uVar3 = cocos2d::CCString::getCString(local_1c);
    FUN_0079a3f4(asStack_34);
    FUN_007c6a60(asStack_30,uVar3,asStack_34);
    bVar2 = (bool)cocos2d::CCString::create(asStack_30);
    cocos2d::CCArray::replaceObjectAtIndex(local_14,(CCObject *)0x3,bVar2);
    FUN_007c5914(asStack_30);
    FUN_0079a3fc(asStack_34);
  }
  FUN_007c5914(auStack_3c);
  return;
}

// ---- PlayerLobby::startGame  @ 0x3ac9cc
/* PlayerLobby::startGame() */

void __thiscall PlayerLobby::startGame(PlayerLobby *this)

{
  if (this[0xf0] == (PlayerLobby)0x0) {
    this[0xf0] = (PlayerLobby)0x1;
    Sound::playSound(sndEng,0xd);
    if (*(int *)(this + 0x178) != 0) {
      (**(code **)**(undefined4 **)(this + 0x178))(*(undefined4 *)(this + 0x178));
    }
  }
  return;
}

// ---- PlayerLobby::afterReady  @ 0x3aca24
/* PlayerLobby::afterReady() */

void __thiscall PlayerLobby::afterReady(PlayerLobby *this)

{
  int iVar1;
  undefined4 uVar2;
  code *pcVar3;
  undefined8 uVar4;
  CCPoint aCStack_20 [8];
  undefined1 auStack_18 [8];
  
  if (-1 < (int)((uint)(*(float *)(this + 0x148) < 5.0) << 0x1f)) {
    iVar1 = (**(code **)(*(int *)this + 0x1dc))(this);
    if (*(int *)(iVar1 + 0x118) == 3) {
      (**(code **)(*(int *)this + 0x1d8))(this);
      (**(code **)(**(int **)(this + 0x108) + 0x4c))(*(undefined4 *)(this + 0x108),this + 0x15c);
      *(undefined4 *)(iVar1 + 0x118) = 1;
      (**(code **)(**(int **)(this + 0x110) + 0x90))(*(undefined4 *)(this + 0x110),1);
      (**(code **)(**(int **)(this + 0x10c) + 0x90))(*(undefined4 *)(this + 0x10c),1);
      (**(code **)(**(int **)(this + 0x134) + 0x90))(*(undefined4 *)(this + 0x134),1);
      (**(code **)(**(int **)(this + 0x138) + 0x90))(*(undefined4 *)(this + 0x138),1);
    }
    else {
      uVar4 = (**(code **)(**(int **)(this + 0x108) + 0x1f8))
                        (*(undefined4 *)(this + 0x108),"NOT READY");
      pcVar3 = *(code **)(**(int **)(this + 0x108) + 0x4c);
      uVar2 = *(undefined4 *)(this + 0x108);
      cocos2d::CCPoint::CCPoint(aCStack_20,(float)uVar4,(float)((ulonglong)uVar4 >> 0x20));
      FUN_003a7058(auStack_18,this + 0x15c,aCStack_20);
      (*pcVar3)(uVar2,auStack_18);
      *(undefined4 *)(iVar1 + 0x118) = 3;
      (**(code **)(**(int **)(this + 0x110) + 0x90))(*(undefined4 *)(this + 0x110),0);
      (**(code **)(**(int **)(this + 0x10c) + 0x90))(*(undefined4 *)(this + 0x10c),0);
      (**(code **)(**(int **)(this + 0x120) + 0x90))(*(undefined4 *)(this + 0x120),0);
      (**(code **)(**(int **)(this + 0x11c) + 0x90))(*(undefined4 *)(this + 0x11c),0);
      (**(code **)(**(int **)(this + 0x134) + 0x90))(*(undefined4 *)(this + 0x134),0);
      (**(code **)(**(int **)(this + 0x138) + 0x90))(*(undefined4 *)(this + 0x138),0);
    }
  }
  return;
}

// ---- PlayerLobby::onReady  @ 0x3acbf8
/* PlayerLobby::onReady(cocos2d::CCObject*) */

void PlayerLobby::onReady(CCObject *param_1)

{
  bool bVar1;
  char cVar2;
  int iVar3;
  
  cVar2 = (**(code **)(**(int **)(param_1 + 0x104) + 0x94))(*(undefined4 *)(param_1 + 0x104));
  if (((cVar2 == '\x01') &&
      (cVar2 = (**(code **)(**(int **)(param_1 + 0x108) + 0x94))(*(undefined4 *)(param_1 + 0x108)),
      cVar2 == '\x01')) &&
     (iVar3 = (**(code **)(**(int **)(param_1 + 0x16c) + 0x94))(*(undefined4 *)(param_1 + 0x16c)),
     iVar3 == 0)) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (!bVar1) {
    Sound::playSound(sndEng,0xd);
    (**(code **)(*(int *)param_1 + 0x1bc))(param_1);
  }
  return;
}

// ---- PlayerLobby::setCoopMode  @ 0x3acc98
/* PlayerLobby::setCoopMode() */

void __thiscall PlayerLobby::setCoopMode(PlayerLobby *this)

{
  mapType = 2;
  playerTeam = 1;
  (**(code **)(**(int **)(this + 0x134) + 0x4c))(*(undefined4 *)(this + 0x134),&offScreenPos);
  (**(code **)(**(int **)(this + 0x138) + 0x4c))(*(undefined4 *)(this + 0x138),&offScreenPos);
  return;
}

// ---- PlayerLobby::onConfirmedExitGame  @ 0x3acd00
/* PlayerLobby::onConfirmedExitGame() */

void __thiscall PlayerLobby::onConfirmedExitGame(PlayerLobby *this)

{
  CCNotificationCenter *this_00;
  CCObject *pCVar1;
  NetworkManager *this_01;
  undefined1 auStack_10 [4];
  string asStack_c [4];
  
  this[0xf0] = (PlayerLobby)0x1;
  this_00 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  FUN_0079a3f4(auStack_10);
  FUN_007c6a60(asStack_c,"Left the lobby",auStack_10);
  pCVar1 = (CCObject *)cocos2d::CCString::create(asStack_c);
  cocos2d::CCNotificationCenter::postNotification(this_00,"SendInstantMessage",pCVar1);
  FUN_007c5914(asStack_c);
  FUN_0079a3fc(auStack_10);
  this_01 = (NetworkManager *)NetworkManager::sharedNetworkManager();
  NetworkManager::endMatch(this_01);
  if (*(int *)(this + 0x178) != 0) {
    (**(code **)(**(int **)(this + 0x178) + 4))(*(undefined4 *)(this + 0x178));
  }
  return;
}

// ---- PlayerLobby::onExitGame  @ 0x3acda8
/* PlayerLobby::onExitGame(cocos2d::CCObject*) */

void PlayerLobby::onExitGame(CCObject *param_1)

{
  NetworkManager *this;
  int iVar1;
  CCObject *pCVar2;
  undefined4 uVar3;
  undefined1 auStack_30 [4];
  undefined1 auStack_2c [4];
  undefined1 auStack_28 [4];
  undefined1 auStack_24 [4];
  string asStack_20 [4];
  string asStack_1c [4];
  undefined1 auStack_18 [4];
  undefined1 auStack_14 [8];
  
  if (param_1[0xf0] == (CCObject)0x0) {
    Sound::playSound(sndEng,0xd);
    this = (NetworkManager *)NetworkManager::sharedNetworkManager();
    iVar1 = NetworkManager::getPeerCount(this);
    if (iVar1 == 0) {
      (**(code **)(*(int *)param_1 + 0x230))(param_1);
    }
    else {
      param_1[0xf1] = (CCObject)0x1;
      FUN_0079a3f4(auStack_28);
      FUN_007c6a60(auStack_18,"Confirm Exit",auStack_28);
      FUN_0079a3f4(auStack_24);
      FUN_007c6a60(auStack_14,"Are you sure you want to exit the lobby?",auStack_24);
      FUN_0079a3f4(auStack_30);
      FUN_007c6a60(asStack_20,"CANCEL",auStack_30);
      pCVar2 = (CCObject *)cocos2d::CCString::create(asStack_20);
      FUN_0079a3f4(auStack_2c);
      FUN_007c6a60(asStack_1c,&DAT_007e2064,auStack_2c);
      uVar3 = cocos2d::CCString::create(asStack_1c);
      uVar3 = cocos2d::CCArray::create(pCVar2,uVar3,0);
      AMessageBox::showAlert(0x3acf51,auStack_18,auStack_14,uVar3,0,param_1);
      FUN_007c5914(asStack_1c);
      FUN_0079a3fc(auStack_2c);
      FUN_007c5914(asStack_20);
      FUN_0079a3fc(auStack_30);
      FUN_007c5914(auStack_14);
      FUN_0079a3fc(auStack_24);
      FUN_007c5914(auStack_18);
      FUN_0079a3fc(auStack_28);
    }
  }
  return;
}

// ---- PlayerLobby::messageBoxHandler  @ 0x3acf50
/* PlayerLobby::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*) */

void PlayerLobby::messageBoxHandler(int param_1,CCObject *param_2,CCObject *param_3)

{
  (**(code **)(*(int *)param_3 + 0x19c))(param_3,param_1);
  return;
}

// ---- PlayerLobby::alertResponse  @ 0x3acf74
/* PlayerLobby::alertResponse(int) */

void __thiscall PlayerLobby::alertResponse(PlayerLobby *this,int param_1)

{
  NetworkManager *this_00;
  
  if (this[0xf2] != (PlayerLobby)0x0) {
    this[0xf2] = (PlayerLobby)0x0;
    this_00 = (NetworkManager *)NetworkManager::sharedNetworkManager();
    NetworkManager::authenticateLocalPlayer(this_00);
  }
  if (this[0xf1] != (PlayerLobby)0x0) {
    if (param_1 == 1) {
      (**(code **)(*(int *)this + 0x230))(this);
    }
    this[0xf1] = (PlayerLobby)0x0;
  }
  return;
}

// ---- PlayerLobby::onChat  @ 0x3acfc8
/* PlayerLobby::onChat(cocos2d::CCObject*) */

void __thiscall PlayerLobby::onChat(PlayerLobby *this,CCObject *param_1)

{
  Sound::playSound(sndEng,0xe);
  (**(code **)(**(int **)(this + 0x100) + 0x90))
            (*(undefined4 *)(this + 0x100),1,*(undefined4 *)(this + 0x100),
             *(code **)(**(int **)(this + 0x100) + 0x90),param_1);
  cocos2d::extension::CCEditBox::touchDownAction(*(CCObject **)(this + 0x100),0);
  return;
}

// ---- PlayerLobby::onInvite  @ 0x3ad018
/* PlayerLobby::onInvite(cocos2d::CCObject*) */

void PlayerLobby::onInvite(CCObject *param_1)

{
  char cVar1;
  CCObject *pCVar2;
  undefined4 uVar3;
  NetworkManager *pNVar4;
  int iVar5;
  undefined1 auStack_2c [4];
  undefined1 auStack_28 [4];
  undefined1 auStack_24 [4];
  string asStack_20 [4];
  undefined1 auStack_1c [4];
  undefined1 auStack_18 [12];
  
  NetworkManager::sharedNetworkManager();
  cVar1 = NetworkManagerBridge::isInternetReachable();
  if (cVar1 == '\x01') {
    Sound::playSound(sndEng,0xd);
    pNVar4 = (NetworkManager *)NetworkManager::sharedNetworkManager();
    iVar5 = NetworkManager::isPlayerAuthenticated(pNVar4);
    if (iVar5 == 0) {
      pNVar4 = (NetworkManager *)NetworkManager::sharedNetworkManager();
      NetworkManager::authenticateLocalPlayer(pNVar4);
    }
    else {
      pNVar4 = (NetworkManager *)NetworkManager::sharedNetworkManager();
      NetworkManager::addPlayersToMatch(pNVar4,true,gameType);
      iVar5 = (**(code **)(*(int *)param_1 + 0x1dc))(param_1);
      *(undefined4 *)(iVar5 + 0x118) = 1;
    }
  }
  else {
    Sound::playSound(sndEng,0xe);
    FUN_0079a3f4(auStack_28);
    FUN_007c6a60(auStack_1c,"Internet Connection Failed",auStack_28);
    FUN_0079a3f4(auStack_24);
    FUN_007c6a60(auStack_18,"Please ensure your internet connection is working.",auStack_24);
    FUN_0079a3f4(auStack_2c);
    FUN_007c6a60(asStack_20,"THANK YOU",auStack_2c);
    pCVar2 = (CCObject *)cocos2d::CCString::create(asStack_20);
    uVar3 = cocos2d::CCArray::create(pCVar2,0);
    AMessageBox::showAlert(0x3acf51,auStack_1c,auStack_18,uVar3,0,param_1);
    FUN_007c5914(asStack_20);
    FUN_0079a3fc(auStack_2c);
    FUN_007c5914(auStack_18);
    FUN_0079a3fc(auStack_24);
    FUN_007c5914(auStack_1c);
    FUN_0079a3fc(auStack_28);
  }
  return;
}

// ---- PlayerLobby::onSearch  @ 0x3ad1ac
/* PlayerLobby::onSearch(cocos2d::CCObject*) */

void PlayerLobby::onSearch(CCObject *param_1)

{
  char cVar1;
  CCObject *pCVar2;
  undefined4 uVar3;
  NetworkManager *pNVar4;
  int iVar5;
  undefined1 auStack_28 [4];
  undefined1 auStack_24 [4];
  undefined1 auStack_20 [4];
  string asStack_1c [4];
  undefined1 auStack_18 [4];
  undefined1 auStack_14 [8];
  
  NetworkManager::sharedNetworkManager();
  cVar1 = NetworkManagerBridge::isInternetReachable();
  if (cVar1 == '\x01') {
    pNVar4 = (NetworkManager *)NetworkManager::sharedNetworkManager();
    cVar1 = NetworkManager::isPlayerAuthenticated(pNVar4);
    if (cVar1 == '\x01') {
      pNVar4 = (NetworkManager *)NetworkManager::sharedNetworkManager();
      iVar5 = NetworkManager::isSearching(pNVar4);
      if (iVar5 == 0) {
        pNVar4 = (NetworkManager *)NetworkManager::sharedNetworkManager();
        iVar5 = NetworkManager::canSearch(pNVar4);
        if (iVar5 != 0) {
          Sound::playSound(sndEng,0xd);
          pNVar4 = (NetworkManager *)NetworkManager::sharedNetworkManager();
          iVar5 = NetworkManager::isPlayerAuthenticated(pNVar4);
          if (iVar5 != 0) {
            (**(code **)(*(int *)param_1 + 0x22c))(param_1);
          }
        }
      }
      else {
        pNVar4 = (NetworkManager *)NetworkManager::sharedNetworkManager();
        NetworkManager::cancelSearch(pNVar4);
        (**(code **)(*(int *)param_1 + 0x224))(param_1);
        Sound::playSound(sndEng,0xe);
      }
    }
    else {
      FUN_0079a3f4(auStack_24);
      FUN_007c6a60(auStack_18,"Game Center Required",auStack_24);
      FUN_0079a3f4(auStack_20);
      FUN_007c6a60(auStack_14,"Please sign into a Game Center account before playing online.",
                   auStack_20);
      FUN_0079a3f4(auStack_28);
      FUN_007c6a60(asStack_1c,&DAT_007e2264,auStack_28);
      pCVar2 = (CCObject *)cocos2d::CCString::create(asStack_1c);
      uVar3 = cocos2d::CCArray::create(pCVar2,0);
      AMessageBox::showAlert(0x3acf51,auStack_18,auStack_14,uVar3,0,param_1);
      FUN_007c5914(asStack_1c);
      FUN_0079a3fc(auStack_28);
      FUN_007c5914(auStack_14);
      FUN_0079a3fc(auStack_20);
      FUN_007c5914(auStack_18);
      FUN_0079a3fc(auStack_24);
      param_1[0xf2] = (CCObject)0x1;
    }
  }
  else {
    Sound::playSound(sndEng,0xe);
    FUN_0079a3f4(auStack_24);
    FUN_007c6a60(auStack_18,"Internet Connection Failed",auStack_24);
    FUN_0079a3f4(auStack_20);
    FUN_007c6a60(auStack_14,"Please ensure your internet connection is working.",auStack_20);
    FUN_0079a3f4(auStack_28);
    FUN_007c6a60(asStack_1c,"THANK YOU",auStack_28);
    pCVar2 = (CCObject *)cocos2d::CCString::create(asStack_1c);
    uVar3 = cocos2d::CCArray::create(pCVar2,0);
    AMessageBox::showAlert(0x3acf51,auStack_18,auStack_14,uVar3,0,param_1);
    FUN_007c5914(asStack_1c);
    FUN_0079a3fc(auStack_28);
    FUN_007c5914(auStack_14);
    FUN_0079a3fc(auStack_20);
    FUN_007c5914(auStack_18);
    FUN_0079a3fc(auStack_24);
  }
  return;
}

// ---- PlayerLobby::onOptions  @ 0x3ad468
/* PlayerLobby::onOptions(cocos2d::CCObject*) */

void __thiscall PlayerLobby::onOptions(PlayerLobby *this,CCObject *param_1)

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
    uVar4 = (**(code **)(**(int **)(this + 0x16c) + 0x90))(*(undefined4 *)(this + 0x16c),1);
    pcVar3 = *(code **)(**(int **)(this + 0x16c) + 0x4c);
    uVar2 = *(undefined4 *)(this + 0x16c);
    cocos2d::CCPoint::CCPoint(aCStack_18,(float)uVar4,(float)((ulonglong)uVar4 >> 0x20));
    (*pcVar3)(uVar2,aCStack_18);
  }
  return;
}

// ---- PlayerLobby::onAfterOption  @ 0x3ad528
/* PlayerLobby::onAfterOption(cocos2d::CCObject*) */

void __thiscall PlayerLobby::onAfterOption(PlayerLobby *this,CCObject *param_1)

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
  (**(code **)(**(int **)(this + 0x16c) + 0x90))(*(undefined4 *)(this + 0x16c),0);
  (**(code **)(**(int **)(this + 0x16c) + 0x4c))(*(undefined4 *)(this + 0x16c),&offScreenPos);
  return;
}

// ---- PlayerLobby::onShowGameStats  @ 0x3ad5b8
/* PlayerLobby::onShowGameStats(cocos2d::CCObject*) */

void __thiscall PlayerLobby::onShowGameStats(PlayerLobby *this,CCObject *param_1)

{
  (**(code **)(**(int **)(this + 0x144) + 0x90))
            (*(undefined4 *)(this + 0x144),0,*(undefined4 *)(this + 0x144),
             *(code **)(**(int **)(this + 0x144) + 0x90),param_1);
  (**(code **)(**(int **)(this + 0x144) + 0x4c))(*(undefined4 *)(this + 0x144),&offScreenPos);
  (**(code **)(**(int **)(this + 0x16c) + 0x90))(*(undefined4 *)(this + 0x16c),0);
  (**(code **)(**(int **)(this + 0x16c) + 0x4c))(*(undefined4 *)(this + 0x16c),&offScreenPos);
  (**(code **)(**(int **)(this + 0xf4) + 0x90))(*(undefined4 *)(this + 0xf4),1);
  (**(code **)(**(int **)(this + 0xf4) + 0x4c))(*(undefined4 *)(this + 0xf4),this + 0x170);
  return;
}

// ---- PlayerLobby::onPostGameClose  @ 0x3ad670
/* PlayerLobby::onPostGameClose(cocos2d::CCObject*) */

void __thiscall PlayerLobby::onPostGameClose(PlayerLobby *this,CCObject *param_1)

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
  (**(code **)(**(int **)(this + 0xf4) + 0x90))(*(undefined4 *)(this + 0xf4),0);
  (**(code **)(**(int **)(this + 0xf4) + 0x4c))(*(undefined4 *)(this + 0xf4),&offScreenPos);
  return;
}

// ---- PlayerLobby::addLobbyRow  @ 0x3ad700
/* PlayerLobby::addLobbyRow(std::string) */

void __thiscall PlayerLobby::addLobbyRow(PlayerLobby *this,string *param_2)

{
  undefined1 auStack_10 [4];
  LobbyRow *local_c;
  
  local_c = (LobbyRow *)LobbyRow::create();
  FUN_007c64e8(auStack_10,param_2);
  LobbyRow::setPeerId(local_c,auStack_10);
  FUN_007c5914(auStack_10);
  (**(code **)(*(int *)this + 200))(this,local_c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 0x124),(CCObject *)local_c,param_2);
  return;
}

// ---- PlayerLobby::updateLabels  @ 0x3ad784
/* PlayerLobby::updateLabels() */

void __thiscall PlayerLobby::updateLabels(PlayerLobby *this)

{
  bool bVar1;
  bool bVar2;
  LobbyRow *pLVar3;
  char cVar4;
  NetworkManager *pNVar5;
  CCDictionary *pCVar6;
  int iVar7;
  uint uVar8;
  undefined4 uVar9;
  undefined4 uVar10;
  int *piVar11;
  uint uVar12;
  CCInteger *pCVar13;
  CCString *pCVar14;
  code *pcVar15;
  uint in_fpscr;
  undefined8 uVar16;
  float fVar17;
  double dVar18;
  undefined1 auStack_98 [4];
  string asStack_94 [4];
  undefined1 auStack_90 [4];
  undefined1 auStack_8c [4];
  string asStack_88 [4];
  undefined1 auStack_84 [4];
  undefined1 auStack_80 [4];
  undefined1 auStack_7c [4];
  undefined1 auStack_78 [4];
  undefined1 auStack_74 [4];
  LobbyRow *local_70;
  uint local_6c;
  CCDictElement *local_68;
  CCDictElement *local_64;
  uint local_60;
  CCArray *local_5c;
  int local_58;
  int local_54;
  int local_50;
  int local_4c;
  int local_48;
  float local_44;
  CCArray *local_40;
  CCString *local_3c;
  undefined4 local_38;
  LobbyRow *local_34;
  CCArray *local_30;
  CCPoint aCStack_2c [8];
  string asStack_24 [16];
  
  this[0x14d] = (PlayerLobby)0x0;
  pNVar5 = (NetworkManager *)NetworkManager::sharedNetworkManager();
  pCVar6 = (CCDictionary *)NetworkManager::getPeerPlayers(pNVar5);
  iVar7 = cocos2d::CCDictionary::count(pCVar6);
  if (iVar7 != 0) {
    pNVar5 = (NetworkManager *)NetworkManager::sharedNetworkManager();
    pCVar6 = (CCDictionary *)NetworkManager::getPeerPlayers(pNVar5);
    local_40 = (CCArray *)cocos2d::CCDictionary::allKeys(pCVar6);
    for (local_6c = 0; uVar12 = local_6c, uVar8 = cocos2d::CCArray::count(local_40), uVar12 < uVar8;
        local_6c = local_6c + 1) {
      local_3c = (CCString *)cocos2d::CCArray::objectAtIndex(local_40,local_6c);
      pCVar6 = *(CCDictionary **)(this + 0x124);
      uVar9 = cocos2d::CCString::getCString(local_3c);
      FUN_0079a3f4(aCStack_2c);
      FUN_007c6a60(asStack_24,uVar9,aCStack_2c);
      iVar7 = cocos2d::CCDictionary::objectForKey(pCVar6,asStack_24);
      FUN_007c5914(asStack_24);
      FUN_0079a3fc(aCStack_2c);
      if (iVar7 == 0) {
        pcVar15 = *(code **)(*(int *)this + 0x1b4);
        uVar9 = cocos2d::CCString::getCString(local_3c);
        FUN_0079a3f4(aCStack_2c);
        FUN_007c6a60(asStack_24,uVar9,aCStack_2c);
        (*pcVar15)(this,asStack_24);
        FUN_007c5914(asStack_24);
        FUN_0079a3fc(aCStack_2c);
      }
    }
  }
  std::vector<LobbyRow*,std::allocator<LobbyRow*>>::vector
            ((vector<LobbyRow*,std::allocator<LobbyRow*>> *)asStack_24);
  local_68 = (CCDictElement *)0x0;
  local_64 = (CCDictElement *)0x0;
  if ((*(int *)(this + 0x124) == 0) ||
     (iVar7 = cocos2d::CCDictionary::count(*(CCDictionary **)(this + 0x124)), iVar7 == 0)) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (bVar1) {
    local_68 = *(CCDictElement **)(*(int *)(this + 0x124) + 0x14);
    if (*(int *)(*(int *)(this + 0x124) + 0x14) == 0) {
      local_64 = (CCDictElement *)0x0;
    }
    else {
      local_64 = *(CCDictElement **)(*(int *)(*(int *)(this + 0x124) + 0x14) + 0x110);
    }
    while (local_68 != (CCDictElement *)0x0) {
      local_70 = (LobbyRow *)cocos2d::CCDictElement::getObject(local_68);
      (**(code **)(*(int *)this + 0x1dc))(this);
      LobbyRow::getPeerId();
      *(undefined4 *)(this + 0x168) = 0;
      if (*(int *)(local_70 + 0x118) == 4) {
        *(undefined4 *)(this + 0x168) = 0x3f800000;
      }
      bVar1 = false;
      LobbyRow::getPeerId();
      iVar7 = FUN_007c567c(aCStack_2c,auStack_98);
      if (iVar7 == 0) {
LAB_003ad98c:
        bVar2 = false;
      }
      else {
        pNVar5 = (NetworkManager *)NetworkManager::sharedNetworkManager();
        pCVar6 = (CCDictionary *)NetworkManager::getPeerPlayers(pNVar5);
        LobbyRow::getPeerId();
        bVar1 = true;
        iVar7 = cocos2d::CCDictionary::objectForKey(pCVar6,asStack_94);
        if (iVar7 != 0) goto LAB_003ad98c;
        bVar2 = true;
      }
      if (bVar1) {
        FUN_007c5914(asStack_94);
      }
      FUN_007c5914(auStack_98);
      if (!bVar2) {
        std::vector<LobbyRow*,std::allocator<LobbyRow*>>::push_back
                  ((vector<LobbyRow*,std::allocator<LobbyRow*>> *)asStack_24,&local_70);
      }
      else {
        (**(code **)(*(int *)this + 0xf4))(this,local_70,0);
        pCVar6 = *(CCDictionary **)(this + 0x124);
        LobbyRow::getPeerId();
        cocos2d::CCDictionary::removeObjectForKey(pCVar6,asStack_88);
        FUN_007c5914(asStack_88);
      }
      FUN_007c5914(aCStack_2c);
      if (bVar2) break;
      local_68 = local_64;
      if (local_64 == (CCDictElement *)0x0) {
        local_64 = (CCDictElement *)0x0;
      }
      else {
        local_64 = *(CCDictElement **)(local_64 + 0x110);
      }
    }
  }
  uVar9 = std::vector<LobbyRow*,std::allocator<LobbyRow*>>::begin
                    ((vector<LobbyRow*,std::allocator<LobbyRow*>> *)asStack_24);
  uVar10 = std::vector<LobbyRow*,std::allocator<LobbyRow*>>::end
                     ((vector<LobbyRow*,std::allocator<LobbyRow*>> *)asStack_24);
  std::
  sort<__gnu_cxx::__normal_iterator<LobbyRow**,std::vector<LobbyRow*,std::allocator<LobbyRow*>>>,bool(*)(LobbyRow*,LobbyRow*)>
            (uVar9,uVar10,0x3ad761);
  local_38 = 0x420c0000;
  for (local_60 = 0; uVar12 = local_60,
      uVar8 = std::vector<LobbyRow*,std::allocator<LobbyRow*>>::size
                        ((vector<LobbyRow*,std::allocator<LobbyRow*>> *)asStack_24), uVar12 < uVar8;
      local_60 = local_60 + 1) {
    piVar11 = (int *)std::vector<LobbyRow*,std::allocator<LobbyRow*>>::operator[]
                               ((vector<LobbyRow*,std::allocator<LobbyRow*>> *)asStack_24,local_60);
    local_34 = (LobbyRow *)*piVar11;
    FUN_0079a3f4(aCStack_2c);
    FUN_007c6a60(auStack_90,&DAT_007e1ec0,aCStack_2c);
    FUN_0079a3fc(aCStack_2c);
    FUN_0079a3f4(aCStack_2c);
    FUN_007c6a60(auStack_8c,&DAT_007e1ec0,aCStack_2c);
    FUN_0079a3fc(aCStack_2c);
    LobbyRow::getPeerId();
    (**(code **)(*(int *)this + 0x1dc))(this);
    LobbyRow::getPeerId();
    local_5c = (CCArray *)0x0;
    local_58 = 0;
    local_54 = 0;
    local_50 = 0;
    local_4c = 0;
    local_48 = -1;
    local_44 = 1.0;
    iVar7 = FUN_007c567c(asStack_88,&local_70);
    if (iVar7 == 0) {
      thunk_FUN_007c653c(auStack_90,this + 300);
      local_58 = playerSkin;
      pNVar5 = (NetworkManager *)NetworkManager::sharedNetworkManager();
      FUN_0079a3f4(aCStack_2c);
      FUN_007c6a60(auStack_84,&DAT_007e1f04,aCStack_2c);
      dVar18 = (double)NetworkManager::getPingTimeFor(pNVar5,auStack_84);
      local_44 = (float)dVar18;
      FUN_007c5914(auStack_84);
      FUN_0079a3fc(aCStack_2c);
      local_54 = playerTeam;
      LeaderBoardBridge::sharedLeaderBoardBridge();
      uVar9 = LeaderBoardBridge::calcPlayerExp();
      local_50 = FUN_003a7d2c(uVar9);
      LeaderBoardBridge::sharedLeaderBoardBridge();
      local_4c = LeaderBoardBridge::getCachedPlayerSkill();
      AvatarRenderer::sharedAvatarRenderer();
      local_5c = (CCArray *)AvatarRenderer::getCustomAvatarProperties();
      if (local_60 == 0) {
        this[0x14d] = (PlayerLobby)0x1;
      }
      lobbyPosition = local_60;
      local_48 = ApplicationInterface::getOSType();
    }
    else {
      pNVar5 = (NetworkManager *)NetworkManager::sharedNetworkManager();
      pCVar6 = (CCDictionary *)NetworkManager::getPeerPlayers(pNVar5);
      local_30 = (CCArray *)cocos2d::CCDictionary::objectForKey(pCVar6,asStack_88);
      if (local_30 != (CCArray *)0x0) {
        uVar12 = cocos2d::CCArray::count(local_30);
        if (uVar12 < 9) {
          local_48 = -1;
        }
        else {
          pCVar13 = (CCInteger *)cocos2d::CCArray::objectAtIndex(local_30,8);
          local_48 = cocos2d::CCInteger::getValue(pCVar13);
        }
        pCVar14 = (CCString *)cocos2d::CCArray::objectAtIndex(local_30,0);
        uVar9 = cocos2d::CCString::getCString(pCVar14);
        FUN_007c5e70(asStack_88,uVar9);
        pCVar14 = (CCString *)cocos2d::CCArray::objectAtIndex(local_30,1);
        uVar9 = cocos2d::CCString::getCString(pCVar14);
        FUN_007c5e70(auStack_90,uVar9);
        pCVar13 = (CCInteger *)cocos2d::CCArray::objectAtIndex(local_30,2);
        local_58 = cocos2d::CCInteger::getValue(pCVar13);
        pCVar13 = (CCInteger *)cocos2d::CCArray::objectAtIndex(local_30,4);
        local_54 = cocos2d::CCInteger::getValue(pCVar13);
        pCVar13 = (CCInteger *)cocos2d::CCArray::objectAtIndex(local_30,5);
        local_50 = cocos2d::CCInteger::getValue(pCVar13);
        pCVar13 = (CCInteger *)cocos2d::CCArray::objectAtIndex(local_30,6);
        local_4c = cocos2d::CCInteger::getValue(pCVar13);
        local_5c = (CCArray *)cocos2d::CCArray::objectAtIndex(local_30,7);
        pCVar14 = (CCString *)cocos2d::CCArray::objectAtIndex(local_30,3);
        uVar9 = cocos2d::CCString::getCString(pCVar14);
        FUN_007c5e70(auStack_8c,uVar9);
        pNVar5 = (NetworkManager *)NetworkManager::sharedNetworkManager();
        FUN_007c64e8(auStack_80,asStack_88);
        dVar18 = (double)NetworkManager::getPingTimeFor(pNVar5,auStack_80);
        local_44 = (float)dVar18;
        FUN_007c5914(auStack_80);
        pcVar15 = *(code **)(*(int *)this + 0x1d4);
        FUN_007c64e8(auStack_7c,auStack_8c);
        (*pcVar15)(this,auStack_7c,local_60);
        FUN_007c5914(auStack_7c);
        if (local_58 == -1) {
          pNVar5 = (NetworkManager *)NetworkManager::sharedNetworkManager();
          FUN_007c64e8(auStack_78,asStack_88);
          NetworkManager::requestPlayerSetup(pNVar5,auStack_78);
          FUN_007c5914(auStack_78);
        }
      }
      pNVar5 = (NetworkManager *)NetworkManager::sharedNetworkManager();
      uVar9 = NetworkManager::getPlayerTimeout(pNVar5);
      fVar17 = (float)VectorSignedToFloat(uVar9,(byte)(in_fpscr >> 0x16) & 3);
      in_fpscr = in_fpscr & 0xfffffff;
      if ((local_44 <= fVar17) || (*(int *)(local_34 + 0x118) == 4)) {
        bVar1 = false;
      }
      else {
        bVar1 = true;
      }
      if (bVar1) {
        *(undefined4 *)(local_34 + 0x118) = 4;
      }
    }
    LobbyRow::setHead(local_34,local_5c,local_58);
    LobbyRow::setTeamId(local_34,local_54);
    FUN_007c64e8(auStack_74,auStack_90);
    LobbyRow::setPlayerName(local_34,auStack_74);
    uVar16 = FUN_007c5914(auStack_74);
    pLVar3 = local_34;
    pcVar15 = *(code **)(*(int *)local_34 + 0x4c);
    VectorSignedToFloat(local_60,(byte)(in_fpscr >> 0x16) & 3);
    cocos2d::CCPoint::CCPoint(aCStack_2c,(float)uVar16,(float)((ulonglong)uVar16 >> 0x20));
    (*pcVar15)(pLVar3,aCStack_2c);
    LobbyRow::updateState(local_34);
    LobbyRow::setRank(local_34,local_50);
    LobbyRow::setSkill(local_34,local_4c);
    if ((-1 < local_48) && (local_48 < 3)) {
      LobbyRow::setOS(local_34,local_48);
    }
    FUN_007c5914(&local_70);
    FUN_007c5914(asStack_88);
    FUN_007c5914(auStack_8c);
    FUN_007c5914(auStack_90);
  }
  pNVar5 = (NetworkManager *)NetworkManager::sharedNetworkManager();
  cVar4 = NetworkManager::isSearching(pNVar5);
  if (cVar4 != '\x01') {
    pNVar5 = (NetworkManager *)NetworkManager::sharedNetworkManager();
    cVar4 = NetworkManager::canSearch(pNVar5);
    if (cVar4 != '\x01') {
      bVar1 = true;
      goto LAB_003adeba;
    }
  }
  bVar1 = false;
LAB_003adeba:
  if (bVar1) {
    this[0x14d] = (PlayerLobby)0x0;
  }
  FUN_0079a3f4(aCStack_2c);
  FUN_007c6a60(&local_70,&DAT_007e2268,aCStack_2c);
  FUN_0079a3fc(aCStack_2c);
  iVar7 = (**(code **)(*(int *)this + 0x1dc))(this);
  iVar7 = *(int *)(iVar7 + 0x118);
  if (iVar7 == 2) {
    FUN_007c5e70(&local_70,&DAT_007e2270);
  }
  else if (iVar7 == 3) {
    FUN_007c5e70(&local_70,&DAT_007e226c);
  }
  else if (iVar7 == 1) {
    FUN_007c5e70(&local_70,&DAT_007e2268);
  }
  pNVar5 = (NetworkManager *)NetworkManager::sharedNetworkManager();
  FUN_007c64e8(aCStack_2c,&local_70);
  NetworkManager::sendLobbyStatus(pNVar5,aCStack_2c,playerTeam);
  FUN_007c5914(aCStack_2c);
  FUN_007c5914(&local_70);
  std::vector<LobbyRow*,std::allocator<LobbyRow*>>::~vector
            ((vector<LobbyRow*,std::allocator<LobbyRow*>> *)asStack_24);
  return;
}

// ---- PlayerLobby::onPlayerDisconnected  @ 0x3ae0b4
/* PlayerLobby::onPlayerDisconnected(cocos2d::CCObject*) */

void PlayerLobby::onPlayerDisconnected(CCObject *param_1)

{
  return;
}

// ---- PlayerLobby::setMapName  @ 0x3ae0c0
/* PlayerLobby::setMapName(std::string, int) */

void __thiscall PlayerLobby::setMapName(PlayerLobby *this,undefined4 param_2,int param_3)

{
  bool bVar1;
  int iVar2;
  
  iVar2 = FUN_007c505c(param_2);
  if ((iVar2 == 0) || (iVar2 = FUN_007c5724(param_2,"Survival"), iVar2 != 0)) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (bVar1) {
    thunk_FUN_007c653c(&hostMapName,param_2);
    (**(code **)(*(int *)this + 0x1c4))(this);
    if (gameType == 2) {
      gameType = 2;
    }
    else {
      gameType = 5;
    }
  }
  else {
    if ((gameType == 3) && (iVar2 = FUN_007c505c(param_2), iVar2 != 0)) {
      bVar1 = true;
    }
    else {
      bVar1 = false;
    }
    if (bVar1) {
      thunk_FUN_007c653c(&hostMapName,param_2);
    }
    else {
      if (((gameType == 4) && (param_3 == 0)) && (iVar2 = FUN_007c505c(param_2), iVar2 != 0)) {
        bVar1 = true;
      }
      else {
        bVar1 = false;
      }
      if (bVar1) {
        thunk_FUN_007c653c(&hostMapName,param_2);
      }
    }
  }
  return;
}

// ---- PlayerLobby::updateReadyLabel  @ 0x3ae19c
/* PlayerLobby::updateReadyLabel() */

void __thiscall PlayerLobby::updateReadyLabel(PlayerLobby *this)

{
  (**(code **)(**(int **)(this + 0x108) + 0x1f8))(*(undefined4 *)(this + 0x108),"READY");
  return;
}

// ---- PlayerLobby::updateMenuVisibility  @ 0x3ae1cc
/* PlayerLobby::updateMenuVisibility() */

void __thiscall PlayerLobby::updateMenuVisibility(PlayerLobby *this)

{
  bool bVar1;
  char cVar2;
  int iVar3;
  NetworkManager *pNVar4;
  int iVar5;
  
  if ((this[0x14d] == (PlayerLobby)0x0) ||
     (iVar3 = (**(code **)(*(int *)this + 0x1dc))(this), *(int *)(iVar3 + 0x118) == 3)) {
LAB_003ae24e:
    bVar1 = false;
  }
  else {
    pNVar4 = (NetworkManager *)NetworkManager::sharedNetworkManager();
    iVar3 = NetworkManager::getPeerCount(pNVar4);
    pNVar4 = (NetworkManager *)NetworkManager::sharedNetworkManager();
    iVar5 = NetworkManager::getMaxPlayers(pNVar4);
    if (iVar5 + -1 <= iVar3) goto LAB_003ae24e;
    pNVar4 = (NetworkManager *)NetworkManager::sharedNetworkManager();
    iVar3 = NetworkManager::canSearch(pNVar4);
    if (iVar3 == 0) {
      pNVar4 = (NetworkManager *)NetworkManager::sharedNetworkManager();
      iVar3 = NetworkManager::isSearching(pNVar4);
      if (iVar3 == 0) goto LAB_003ae24e;
    }
    if (*(float *)(this + 0x168) != 0.0) goto LAB_003ae24e;
    bVar1 = true;
  }
  if (bVar1) {
    (**(code **)(**(int **)(this + 0x120) + 0x90))(*(undefined4 *)(this + 0x120),1);
    (**(code **)(**(int **)(this + 0x11c) + 0x90))(*(undefined4 *)(this + 0x11c),1);
  }
  else {
    (**(code **)(**(int **)(this + 0x120) + 0x90))(*(undefined4 *)(this + 0x120),0);
    (**(code **)(**(int **)(this + 0x11c) + 0x90))(*(undefined4 *)(this + 0x11c),0);
  }
  pNVar4 = (NetworkManager *)NetworkManager::sharedNetworkManager();
  iVar3 = NetworkManager::getPeerCount(pNVar4);
  if (iVar3 == 0) {
    pNVar4 = (NetworkManager *)NetworkManager::sharedNetworkManager();
    cVar2 = NetworkManager::isSearching(pNVar4);
    if (cVar2 != '\x01') {
      pNVar4 = (NetworkManager *)NetworkManager::sharedNetworkManager();
      iVar3 = NetworkManager::canSearch(pNVar4);
      if (iVar3 != 0) {
        bVar1 = true;
        goto LAB_003ae2f8;
      }
    }
  }
  bVar1 = false;
LAB_003ae2f8:
  if (bVar1) {
    (**(code **)(**(int **)(this + 0x114) + 0x90))(*(undefined4 *)(this + 0x114),1);
    (**(code **)(**(int **)(this + 0x118) + 0x90))(*(undefined4 *)(this + 0x118),1);
    (**(code **)(**(int **)(this + 0x134) + 0x90))(*(undefined4 *)(this + 0x134),1);
    (**(code **)(**(int **)(this + 0x138) + 0x90))(*(undefined4 *)(this + 0x138),1);
  }
  else {
    (**(code **)(**(int **)(this + 0x114) + 0x90))(*(undefined4 *)(this + 0x114),0);
    (**(code **)(**(int **)(this + 0x118) + 0x90))(*(undefined4 *)(this + 0x118),0);
  }
  return;
}

// ---- PlayerLobby::setLobbyDelegate  @ 0x3ae394
/* PlayerLobby::setLobbyDelegate(LobbyDelegate*) */

void __thiscall PlayerLobby::setLobbyDelegate(PlayerLobby *this,LobbyDelegate *param_1)

{
  *(LobbyDelegate **)(this + 0x178) = param_1;
  return;
}

// ---- PlayerLobby::tableCellSizeForIndex  @ 0x3ae3a8
/* PlayerLobby::tableCellSizeForIndex(cocos2d::extension::CCTableView*, unsigned int) */

CCTableView * PlayerLobby::tableCellSizeForIndex(CCTableView *param_1,uint param_2)

{
  int *piVar1;
  CCSize *pCVar2;
  uint in_r3;
  
  piVar1 = (int *)cocos2d::CCArray::objectAtIndex(*(CCArray **)(param_2 + 0xfc),in_r3);
  pCVar2 = (CCSize *)(**(code **)(*piVar1 + 0x8c))(piVar1);
  cocos2d::CCSize::CCSize((CCSize *)param_1,pCVar2);
  return param_1;
}

// ---- PlayerLobby::tableCellSizeForIndex  @ 0x3ae3e8
/* non-virtual thunk to PlayerLobby::tableCellSizeForIndex(cocos2d::extension::CCTableView*,
   unsigned int) */

void __thiscall
PlayerLobby::tableCellSizeForIndex(PlayerLobby *this,CCTableView *param_1,uint param_2)

{
  tableCellSizeForIndex((CCTableView *)this,(uint)(param_1 + -0xe8));
  return;
}

// ---- PlayerLobby::tableCellAtIndex  @ 0x3ae3f0
/* PlayerLobby::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int) */

CCTableViewCell * __thiscall
PlayerLobby::tableCellAtIndex(PlayerLobby *this,CCTableView *param_1,uint param_2)

{
  bool bVar1;
  uint uVar2;
  int *piVar3;
  CCTableViewCell *local_10;
  
  local_10 = (CCTableViewCell *)cocos2d::extension::CCTableView::dequeueCell(param_1);
  if ((local_10 == (CCTableViewCell *)0x0) ||
     (uVar2 = cocos2d::extension::CCTableViewCell::getIdx(local_10), uVar2 != param_2)) {
    bVar1 = true;
  }
  else {
    bVar1 = false;
  }
  if (bVar1) {
    local_10 = operator_new(0xec);
    cocos2d::extension::CCTableViewCell::CCTableViewCell(local_10);
    cocos2d::CCObject::autorelease((CCObject *)local_10);
    piVar3 = (int *)cocos2d::CCArray::objectAtIndex(*(CCArray **)(this + 0xfc),param_2);
    (**(code **)(*piVar3 + 0xe8))(piVar3);
    (**(code **)(*(int *)local_10 + 200))(local_10,piVar3);
  }
  return local_10;
}

// ---- PlayerLobby::tableCellAtIndex  @ 0x3ae480
/* non-virtual thunk to PlayerLobby::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned
   int) */

void __thiscall PlayerLobby::tableCellAtIndex(PlayerLobby *this,CCTableView *param_1,uint param_2)

{
  tableCellAtIndex(this + -0xe8,param_1,param_2);
  return;
}

// ---- PlayerLobby::numberOfCellsInTableView  @ 0x3ae488
/* PlayerLobby::numberOfCellsInTableView(cocos2d::extension::CCTableView*) */

undefined4 PlayerLobby::numberOfCellsInTableView(CCTableView *param_1)

{
  undefined4 uVar1;
  
  uVar1 = cocos2d::CCArray::count(*(CCArray **)(param_1 + 0xfc));
  return uVar1;
}

// ---- PlayerLobby::numberOfCellsInTableView  @ 0x3ae4a8
/* non-virtual thunk to PlayerLobby::numberOfCellsInTableView(cocos2d::extension::CCTableView*) */

void __thiscall PlayerLobby::numberOfCellsInTableView(PlayerLobby *this,CCTableView *param_1)

{
  numberOfCellsInTableView((CCTableView *)(this + -0xe8));
  return;
}

// ---- PlayerLobby::tableCellTouched  @ 0x3ae4b0
/* PlayerLobby::tableCellTouched(cocos2d::extension::CCTableView*,
   cocos2d::extension::CCTableViewCell*) */

void PlayerLobby::tableCellTouched(CCTableView *param_1,CCTableViewCell *param_2)

{
  return;
}

// ---- PlayerLobby::tableCellTouched  @ 0x3ae4bc
/* non-virtual thunk to PlayerLobby::tableCellTouched(cocos2d::extension::CCTableView*,
   cocos2d::extension::CCTableViewCell*) */

void __thiscall
PlayerLobby::tableCellTouched(PlayerLobby *this,CCTableView *param_1,CCTableViewCell *param_2)

{
  tableCellTouched((CCTableView *)(this + -0xe4),(CCTableViewCell *)param_1);
  return;
}

// ---- PlayerLobby::editBoxReturn  @ 0x3ae4c4
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003ae5be */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* PlayerLobby::editBoxReturn(cocos2d::extension::CCEditBox*) */

void PlayerLobby::editBoxReturn(CCEditBox *param_1)

{
  byte bVar1;
  undefined4 uVar2;
  int iVar3;
  undefined4 uVar4;
  CCNotificationCenter *this;
  CCObject *pCVar5;
  CCString *this_00;
  CCEditBox *in_r1;
  code *pcVar6;
  undefined4 in_s1;
  undefined1 auStack_30 [4];
  string asStack_2c [4];
  undefined1 auStack_28 [4];
  undefined1 local_24 [4];
  undefined4 local_20;
  undefined4 uStack_1c;
  
  uVar2 = cocos2d::extension::CCEditBox::getText(in_r1);
  FUN_0079a3f4(&local_20);
  FUN_007c6a60(auStack_30,uVar2,&local_20);
  FUN_0079a3fc(&local_20);
  iVar3 = FUN_007c505c(auStack_30);
  if (iVar3 != 0) {
    uVar2 = FUN_007c5a74(auStack_30);
    uVar4 = FUN_007c5aac(auStack_30);
    local_24[0] = 0x3a;
    local_20 = CONCAT31(local_20._1_3_,0x20);
    std::replace<__gnu_cxx::__normal_iterator<char*,std::string>,char>
              (uVar2,uVar4,local_24,&local_20);
    this = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    uVar2 = FUN_007c5300(auStack_30);
    FUN_0079a3f4(&local_20);
    FUN_007c6a60(asStack_2c,uVar2,&local_20);
    pCVar5 = (CCObject *)cocos2d::CCString::create(asStack_2c);
    cocos2d::CCNotificationCenter::postNotification(this,"SendInstantMessage",pCVar5);
    FUN_007c5914(asStack_2c);
    FUN_0079a3fc(&local_20);
    uVar2 = sndEng;
    FUN_007c64e8(auStack_28,auStack_30);
    FUN_003a7078(SUB84((double)(float)centerPoint,0),in_s1,SUB84((double)centerPoint._4_4_,0),
                 &local_20);
    bVar1 = Sound::playTaunt(uVar2,auStack_28,local_20,uStack_1c);
    FUN_007c5914(auStack_28);
    pcVar6 = *(code **)(*(int *)param_1 + 0x220);
    uVar2 = FUN_007c5300(param_1 + 300);
    uVar4 = FUN_007c5300(auStack_30);
    this_00 = (CCString *)cocos2d::CCString::createWithFormat("%s: %s",uVar2,uVar4);
    uVar2 = cocos2d::CCString::getCString(this_00);
    FUN_0079a3f4(auStack_28);
    FUN_007c6a60(local_24,uVar2,auStack_28);
    (*pcVar6)(param_1,local_24,bVar1 ^ 1);
    FUN_007c5914(local_24);
    FUN_0079a3fc(auStack_28);
    cocos2d::extension::CCEditBox::setText(in_r1,"");
  }
  (**(code **)(**(int **)(param_1 + 0x100) + 0x90))(*(undefined4 *)(param_1 + 0x100),0);
  FUN_007c5914(auStack_30);
  return;
}

// ---- PlayerLobby::editBoxReturn  @ 0x3ae6f4
/* non-virtual thunk to PlayerLobby::editBoxReturn(cocos2d::extension::CCEditBox*) */

void __thiscall PlayerLobby::editBoxReturn(PlayerLobby *this,CCEditBox *param_1)

{
  editBoxReturn((CCEditBox *)(this + -0xec));
  return;
}
