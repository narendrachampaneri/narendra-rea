// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 16 functions

// ---- ScoreScreen::create  @ 0x34a09c
/* ScoreScreen::create() */

ScoreScreen * ScoreScreen::create(void)

{
  bool bVar1;
  ScoreScreen *this;
  int iVar2;
  
  this = operator_new(0x128);
  ScoreScreen(this);
  if ((this == (ScoreScreen *)0x0) || (iVar2 = (**(code **)(*(int *)this + 0x18))(this), iVar2 == 0)
     ) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (bVar1) {
    cocos2d::CCObject::autorelease((CCObject *)this);
  }
  else {
    if (this != (ScoreScreen *)0x0) {
      (**(code **)(*(int *)this + 8))(this);
    }
    this = (ScoreScreen *)0x0;
  }
  return this;
}

// ---- ScoreScreen::ScoreScreen  @ 0x3e57a4
/* ScoreScreen::ScoreScreen() */

ScoreScreen * __thiscall ScoreScreen::ScoreScreen(ScoreScreen *this)

{
  cocos2d::CCNode::CCNode((CCNode *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_0091a630;
  cocos2d::CCPoint::CCPoint((CCPoint *)(this + 0x120));
  return this;
}

// ---- ScoreScreen::init  @ 0x3e57ec
/* ScoreScreen::init() */

undefined4 __thiscall ScoreScreen::init(ScoreScreen *this)

{
  char cVar1;
  undefined3 uVar2;
  CCNotificationCenter *this_00;
  CCNode *pCVar3;
  CCNode *pCVar4;
  CCNode *pCVar5;
  CCNode *pCVar6;
  CCNode *pCVar7;
  CCNode *pCVar8;
  int iVar9;
  undefined4 uVar10;
  code *pcVar11;
  float extraout_s0;
  float extraout_s0_00;
  float extraout_s0_01;
  float fVar12;
  undefined8 uVar13;
  float extraout_s1;
  float extraout_s1_00;
  float extraout_s1_01;
  undefined4 uVar14;
  CCPoint aCStack_50 [8];
  CCPoint aCStack_48 [8];
  CCPoint local_40;
  undefined1 local_3f;
  undefined1 local_3e;
  code *local_38;
  undefined4 local_34;
  code *local_30;
  undefined4 local_2c;
  code *local_28;
  undefined4 local_24;
  code *local_20;
  undefined4 local_1c;
  
  cVar1 = cocos2d::CCNode::init();
  if (cVar1 == '\x01') {
    this_00 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    local_38 = (code *)0x3e6429;
    local_34 = 0;
    cocos2d::CCNotificationCenter::addObserver
              (this_00,(CCObject *)this,(_func_void_CCObject_ptr *)0x3e6429,(char *)0x0,
               (CCObject *)"PlayerIdentified");
    *(undefined4 *)(this + 0x11c) = 0;
    *(undefined4 *)(this + 0xe4) = 0;
    uVar13 = (**(code **)(*(int *)this + 0x90))(this,0);
    this[0x114] = (ScoreScreen)0x0;
    *(undefined4 *)(this + 0x118) = 0;
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_20,(float)uVar13,(float)((ulonglong)uVar13 >> 0x20))
    ;
    cocos2d::CCPoint::operator=((CCPoint *)(this + 0x120),(CCPoint *)&local_20);
    (**(code **)(*(int *)this + 0x4c))(this,this + 0x120);
    cocos2d::CCDirector::sharedDirector();
    uVar13 = cocos2d::CCDirector::getWinSize();
    cocos2d::CCPoint::CCPoint(aCStack_50,(float)uVar13,(float)((ulonglong)uVar13 >> 0x20));
    uVar10 = cocos2d::CCSprite::create("title_ret2_new.png");
    *(undefined4 *)(this + 0xe8) = uVar10;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0xe8));
    (**(code **)(**(int **)(this + 0xe8) + 0x4c))(*(undefined4 *)(this + 0xe8),aCStack_50);
    (**(code **)(**(int **)(this + 0xe8) + 0x1a4))(*(undefined4 *)(this + 0xe8),0xb4);
    (**(code **)(**(int **)(this + 0xe8) + 0x40))(*(undefined4 *)(this + 0xe8),0x3f333333);
    pcVar11 = *(code **)(**(int **)(this + 0xe8) + 0x1bc);
    uVar10 = *(undefined4 *)(this + 0xe8);
    uVar2 = FUN_003e2bd0(100,100,100);
    local_20 = (code *)CONCAT13(local_20._3_1_,uVar2);
    (*pcVar11)(uVar10,&local_20);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0xe8));
    uVar10 = ScoreList::create();
    *(undefined4 *)(this + 0xfc) = uVar10;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0xfc));
    (**(code **)(**(int **)(this + 0xfc) + 0x4c))(*(undefined4 *)(this + 0xfc),aCStack_50);
    (**(code **)(*(int *)this + 0xcc))(this,*(undefined4 *)(this + 0xfc),0);
    pCVar3 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_sml.png");
    pCVar4 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_sml.png");
    pCVar5 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_sml.png");
    pCVar6 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_sml.png");
    pCVar7 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_sml.png");
    pCVar8 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_sml.png");
    local_30 = (code *)0x3e6551;
    local_2c = 0;
    uVar10 = cocos2d::CCMenuItemSprite::create
                       (pCVar3,pCVar4,(CCObject *)this,(_func_void_CCObject_ptr *)0x3e6551);
    *(undefined4 *)(this + 0x104) = uVar10;
    pcVar11 = *(code **)(**(int **)(this + 0x104) + 0x4c);
    uVar10 = *(undefined4 *)(this + 0x104);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_20,extraout_s0,extraout_s1);
    (*pcVar11)(uVar10,&local_20);
    local_28 = (code *)0x3e6801;
    local_24 = 0;
    uVar10 = cocos2d::CCMenuItemSprite::create
                       (pCVar5,pCVar6,(CCObject *)this,(_func_void_CCObject_ptr *)0x3e6801);
    *(undefined4 *)(this + 0x108) = uVar10;
    pcVar11 = *(code **)(**(int **)(this + 0x108) + 0x4c);
    uVar10 = *(undefined4 *)(this + 0x108);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_20,extraout_s0_00,extraout_s1_00);
    (*pcVar11)(uVar10,&local_20);
    local_20 = (code *)0x3e6841;
    local_1c = 0;
    uVar14 = 0;
    uVar10 = cocos2d::CCMenuItemSprite::create
                       (pCVar7,pCVar8,(CCObject *)this,(_func_void_CCObject_ptr *)0x3e6841);
    *(undefined4 *)(this + 0x10c) = uVar10;
    pcVar11 = *(code **)(**(int **)(this + 0x10c) + 0x4c);
    uVar10 = *(undefined4 *)(this + 0x10c);
    cocos2d::CCPoint::CCPoint(&local_40,extraout_s0_01,extraout_s1_01);
    (*pcVar11)(uVar10,&local_40);
    uVar10 = cocos2d::CCMenu::create
                       (*(CCMenuItem **)(this + 0x108),*(undefined4 *)(this + 0x10c),
                        *(undefined4 *)(this + 0x104),0,uVar14);
    *(undefined4 *)(this + 0xec) = uVar10;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0xec));
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0xec));
    uVar10 = cocos2d::CCLabelAtlas::create("QUIT","font02_new.png",0x20,0x20,0x20);
    *(undefined4 *)(this + 0xf0) = uVar10;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0xf0));
    uVar13 = cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0xf0),0x18);
    pcVar11 = *(code **)(**(int **)(this + 0xf0) + 0x7c);
    uVar10 = *(undefined4 *)(this + 0xf0);
    cocos2d::CCPoint::CCPoint(&local_40,(float)uVar13,(float)((ulonglong)uVar13 >> 0x20));
    (*pcVar11)(uVar10,&local_40);
    (**(code **)(**(int **)(this + 0xf0) + 0x40))(*(undefined4 *)(this + 0xf0),0x3f000000);
    pcVar11 = *(code **)(**(int **)(this + 0xf0) + 0x4c);
    uVar10 = *(undefined4 *)(this + 0xf0);
    (**(code **)(**(int **)(this + 0x104) + 0x50))(*(undefined4 *)(this + 0x104));
    uVar13 = (**(code **)(**(int **)(this + 0x104) + 0x50))(*(undefined4 *)(this + 0x104));
    cocos2d::CCPoint::CCPoint(aCStack_48,(float)uVar13,(float)((ulonglong)uVar13 >> 0x20));
    FUN_003e2c2c(&local_40,aCStack_50,aCStack_48);
    (*pcVar11)(uVar10,&local_40);
    fVar12 = (float)(**(code **)(*(int *)this + 0xcc))(this,*(undefined4 *)(this + 0xf0),0);
    uVar10 = cocos2d::CCLabelTTF::create("","Arial-BoldMT",fVar12);
    *(undefined4 *)(this + 0x110) = uVar10;
    uVar13 = cocos2d::CCObject::retain(*(CCObject **)(this + 0x110));
    pcVar11 = *(code **)(**(int **)(this + 0x110) + 0x4c);
    uVar10 = *(undefined4 *)(this + 0x110);
    cocos2d::CCPoint::CCPoint(aCStack_48,(float)uVar13,(float)((ulonglong)uVar13 >> 0x20));
    FUN_003e2c2c(&local_40,aCStack_50,aCStack_48);
    (*pcVar11)(uVar10,&local_40);
    (**(code **)(**(int **)(this + 0x110) + 0x90))(*(undefined4 *)(this + 0x110),0);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x110));
    iVar9 = ApplicationInterface::isVideoRecording();
    if (iVar9 == 0) {
      uVar10 = cocos2d::CCSprite::createWithSpriteFrameName("vid.png");
      *(undefined4 *)(this + 0xf8) = uVar10;
      (**(code **)(**(int **)(this + 0xf8) + 0x40))(*(undefined4 *)(this + 0xf8),0x3f4ccccd);
    }
    else {
      uVar10 = cocos2d::CCSprite::createWithSpriteFrameName("stop.png");
      *(undefined4 *)(this + 0xf8) = uVar10;
    }
    cocos2d::CCObject::retain(*(CCObject **)(this + 0xf8));
    pcVar11 = *(code **)(**(int **)(this + 0xf8) + 0x4c);
    uVar14 = *(undefined4 *)(this + 0xf8);
    uVar10 = (**(code **)(**(int **)(this + 0x10c) + 0x50))(*(undefined4 *)(this + 0x10c));
    FUN_003e2c2c(&local_40,aCStack_50,uVar10);
    (*pcVar11)(uVar14,&local_40);
    (**(code **)(*(int *)this + 0xcc))(this,*(undefined4 *)(this + 0xf8),0);
    uVar10 = cocos2d::CCLabelAtlas::create("CHAT","font02_new.png",0x20,0x20,0x20);
    *(undefined4 *)(this + 0xf4) = uVar10;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0xf4));
    uVar13 = cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0xf4),0x18);
    pcVar11 = *(code **)(**(int **)(this + 0xf4) + 0x7c);
    uVar10 = *(undefined4 *)(this + 0xf4);
    cocos2d::CCPoint::CCPoint(&local_40,(float)uVar13,(float)((ulonglong)uVar13 >> 0x20));
    (*pcVar11)(uVar10,&local_40);
    (**(code **)(**(int **)(this + 0xf4) + 0x40))(*(undefined4 *)(this + 0xf4),0x3f000000);
    pcVar11 = *(code **)(**(int **)(this + 0xf4) + 0x4c);
    uVar10 = *(undefined4 *)(this + 0xf4);
    (**(code **)(**(int **)(this + 0x108) + 0x50))(*(undefined4 *)(this + 0x108));
    uVar13 = (**(code **)(**(int **)(this + 0x108) + 0x50))(*(undefined4 *)(this + 0x108));
    cocos2d::CCPoint::CCPoint(aCStack_48,(float)uVar13,(float)((ulonglong)uVar13 >> 0x20));
    FUN_003e2c2c(&local_40,aCStack_50,aCStack_48);
    (*pcVar11)(uVar10,&local_40);
    (**(code **)(*(int *)this + 0xcc))(this,*(undefined4 *)(this + 0xf4),0);
    uVar10 = cocos2d::CCLabelAtlas::create("GAME OVER","font02_new.png",0x20,0x20,0x20);
    *(undefined4 *)(this + 0x100) = uVar10;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x100));
    uVar13 = cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x100),0x18);
    pcVar11 = *(code **)(**(int **)(this + 0x100) + 0x7c);
    uVar10 = *(undefined4 *)(this + 0x100);
    cocos2d::CCPoint::CCPoint(&local_40,(float)uVar13,(float)((ulonglong)uVar13 >> 0x20));
    (*pcVar11)(uVar10,&local_40);
    uVar13 = (**(code **)(**(int **)(this + 0x100) + 0x40))
                       (*(undefined4 *)(this + 0x100),0x3f000000);
    pcVar11 = *(code **)(**(int **)(this + 0x100) + 0x4c);
    uVar10 = *(undefined4 *)(this + 0x100);
    cocos2d::CCPoint::CCPoint(aCStack_48,(float)uVar13,(float)((ulonglong)uVar13 >> 0x20));
    FUN_003e2c2c(&local_40,aCStack_50,aCStack_48);
    (*pcVar11)(uVar10,&local_40);
    (**(code **)(**(int **)(this + 0x100) + 0x90))(*(undefined4 *)(this + 0x100),0);
    pcVar11 = *(code **)(**(int **)(this + 0x100) + 0x1bc);
    uVar14 = *(undefined4 *)(this + 0x100);
    uVar10 = FUN_003e2bd0(0xff,0xff,0);
    local_40 = SUB41(uVar10,0);
    local_3f = (undefined1)((uint)uVar10 >> 8);
    local_3e = (undefined1)((uint)uVar10 >> 0x10);
    (*pcVar11)(uVar14,&local_40);
    (**(code **)(*(int *)this + 0xcc))(this,*(undefined4 *)(this + 0x100),0);
    uVar10 = 1;
  }
  else {
    uVar10 = 0;
  }
  return uVar10;
}

// ---- ScoreScreen::~ScoreScreen  @ 0x3e60c0
/* WARNING: Removing unreachable block (ram,0x003e6150) */
/* ScoreScreen::~ScoreScreen() */

ScoreScreen * __thiscall ScoreScreen::~ScoreScreen(ScoreScreen *this)

{
  CCNotificationCenter *this_00;
  
  *(undefined ***)this = &PTR_copyWithZone_1_0091a630;
  this_00 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::removeAllObservers(this_00,(CCObject *)this);
  cocos2d::CCNode::removeAllChildrenWithCleanup((CCNode *)this,true);
  cocos2d::CCObject::release(*(CCObject **)(this + 0xe8));
  cocos2d::CCObject::release(*(CCObject **)(this + 0xfc));
  cocos2d::CCObject::release(*(CCObject **)(this + 0xec));
  cocos2d::CCObject::release(*(CCObject **)(this + 0xf4));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x100));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x110));
  cocos2d::CCObject::release(*(CCObject **)(this + 0xf8));
  cocos2d::CCNode::~CCNode((CCNode *)this);
  return this;
}

// ---- ScoreScreen::~ScoreScreen  @ 0x3e6168
/* ScoreScreen::~ScoreScreen() */

ScoreScreen * __thiscall ScoreScreen::~ScoreScreen(ScoreScreen *this)

{
  ~ScoreScreen(this);
  operator_delete(this);
  return this;
}

// ---- ScoreScreen::updateStep  @ 0x3e6184
/* ScoreScreen::updateStep(float) */

void __thiscall ScoreScreen::updateStep(ScoreScreen *this,float param_1)

{
  float in_r1;
  undefined4 uVar1;
  code *pcVar2;
  float extraout_s0;
  float extraout_s0_00;
  float extraout_s1;
  float extraout_s1_00;
  float fVar4;
  undefined8 uVar3;
  float extraout_s2;
  float extraout_s2_00;
  float fVar5;
  float fVar6;
  CCPoint aCStack_28 [8];
  CCPoint aCStack_20 [8];
  CCPoint aCStack_18 [12];
  
  *(float *)(this + 0xe4) = *(float *)(this + 0xe4) + in_r1;
  if (this[0x114] == (ScoreScreen)0x0) {
    if (*(float *)(this + 0x11c) - in_r1 * 1000.0 <= 0.0) {
      fVar6 = 0.0;
    }
    else {
      fVar6 = *(float *)(this + 0x11c) - in_r1 * 1000.0;
    }
    *(float *)(this + 0x11c) = fVar6;
  }
  else {
    if ((int)((uint)(*(float *)(this + 0x11c) + in_r1 * 1000.0 < 255.0) << 0x1f) < 0) {
      fVar6 = *(float *)(this + 0x11c) + in_r1 * 1000.0;
    }
    else {
      fVar6 = 255.0;
    }
    *(float *)(this + 0x11c) = fVar6;
  }
  setOpacity(this,(int)*(float *)(this + 0x11c));
  if ((this[0x114] == (ScoreScreen)0x1) || (0.0 < *(float *)(this + 0x11c))) {
    uVar3 = (**(code **)(*(int *)this + 0x90))(this,1);
    pcVar2 = *(code **)(*(int *)this + 0x4c);
    cocos2d::CCPoint::CCPoint(aCStack_18,(float)uVar3,(float)((ulonglong)uVar3 >> 0x20));
    (*pcVar2)(this,aCStack_18);
    fVar6 = extraout_s0_00;
    fVar4 = extraout_s1_00;
    fVar5 = extraout_s2_00;
  }
  else {
    (**(code **)(*(int *)this + 0x90))(this,0);
    (**(code **)(*(int *)this + 0x4c))(this,this + 0x120);
    fVar6 = extraout_s0;
    fVar4 = extraout_s1;
    fVar5 = extraout_s2;
  }
  if (this[0x114] != (ScoreScreen)0x0) {
    if (0.0 < *(float *)(this + 0x118)) {
      *(float *)(this + 0x118) = *(float *)(this + 0x118) - in_r1;
      if ((int)((uint)(*(float *)(this + 0x118) < 0.0) << 0x1f) < 0) {
        *(undefined4 *)(this + 0x118) = 0;
      }
      fVar6 = (float)cocos2d::clampf(fVar6,fVar4,fVar5);
      cocos2d::CCDirector::sharedDirector();
      uVar3 = cocos2d::CCDirector::getWinSize();
      cocos2d::CCPoint::CCPoint(aCStack_28,(float)uVar3,(float)((ulonglong)uVar3 >> 0x20));
      uVar3 = (**(code **)(**(int **)(this + 0x100) + 0x40))
                        (*(undefined4 *)(this + 0x100),(1.0 - fVar6) * 0.5 + fVar6 + fVar6);
      pcVar2 = *(code **)(**(int **)(this + 0x100) + 0x4c);
      uVar1 = *(undefined4 *)(this + 0x100);
      cocos2d::CCPoint::CCPoint(aCStack_20,(float)uVar3,(float)((ulonglong)uVar3 >> 0x20));
      FUN_003e2c2c(aCStack_18,aCStack_28,aCStack_20);
      (*pcVar2)(uVar1,aCStack_18);
    }
  }
  return;
}

// ---- ScoreScreen::identifyPlayer  @ 0x3e6428
/* ScoreScreen::identifyPlayer(cocos2d::CCObject*) */

void __thiscall ScoreScreen::identifyPlayer(ScoreScreen *this,CCObject *param_1)

{
  undefined4 uVar1;
  int iVar2;
  ScoreList *pSVar3;
  code *pcVar4;
  undefined4 uVar5;
  undefined1 auStack_28 [4];
  undefined1 auStack_24 [4];
  CCArray *local_20;
  CCString *local_1c;
  CCString *local_18;
  int local_14;
  
  local_20 = (CCArray *)param_1;
  local_1c = (CCString *)cocos2d::CCArray::objectAtIndex((CCArray *)param_1,0);
  local_18 = (CCString *)cocos2d::CCArray::objectAtIndex(local_20,1);
  pSVar3 = *(ScoreList **)(this + 0xfc);
  uVar1 = cocos2d::CCString::getCString(local_1c);
  FUN_0079a3f4(auStack_28);
  FUN_007c6a60(auStack_24,uVar1,auStack_28);
  local_14 = ScoreList::getScoreRow(pSVar3,auStack_24);
  FUN_007c5914(auStack_24);
  FUN_0079a3fc(auStack_28);
  if (local_14 != 0) {
    pcVar4 = *(code **)(**(int **)(local_14 + 0xe8) + 0x23c);
    uVar5 = *(undefined4 *)(local_14 + 0xe8);
    uVar1 = cocos2d::CCString::getCString(local_18);
    (*pcVar4)(uVar5,uVar1);
  }
  iVar2 = NetworkManager::sharedNetworkManager();
  if (*(int *)(iVar2 + 0x110) != 0) {
    pcVar4 = *(code **)(**(int **)(this + 0x110) + 0x23c);
    uVar5 = *(undefined4 *)(this + 0x110);
    NetworkManager::sharedNetworkManager();
    RakNetDelegate::getCurrentServerName();
    uVar1 = FUN_007c5300(auStack_24);
    (*pcVar4)(uVar5,uVar1);
    FUN_007c5914(auStack_24);
    (**(code **)(**(int **)(this + 0x110) + 0x90))(*(undefined4 *)(this + 0x110),1);
  }
  return;
}

// ---- ScoreScreen::onQuit  @ 0x3e6550
/* ScoreScreen::onQuit(cocos2d::CCObject*) */

void ScoreScreen::onQuit(CCObject *param_1)

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
  
  Sound::playSound(sndEng,4);
  if (gameType == 4) {
    FUN_0079a3f4(auStack_28);
    FUN_007c6a60(auStack_18,"Confirm Quit",auStack_28);
    FUN_0079a3f4(auStack_24);
    FUN_007c6a60(auStack_14,"Watch an Ad to quit the match early?",auStack_24);
    FUN_0079a3f4(auStack_30);
    FUN_007c6a60(asStack_20,"CANCEL",auStack_30);
    pCVar1 = (CCObject *)cocos2d::CCString::create(asStack_20);
    FUN_0079a3f4(auStack_2c);
    FUN_007c6a60(asStack_1c,&DAT_007e7584,auStack_2c);
    uVar2 = cocos2d::CCString::create(asStack_1c);
    uVar2 = cocos2d::CCArray::create(pCVar1,uVar2,0);
    AMessageBox::showAlert(0x3e71a9,auStack_18,auStack_14,uVar2,0,0);
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
    FUN_0079a3f4(auStack_28);
    FUN_007c6a60(auStack_18,"Confirm Quit",auStack_28);
    FUN_0079a3f4(auStack_24);
    FUN_007c6a60(auStack_14,"Are you sure you want to quit the match?",auStack_24);
    FUN_0079a3f4(auStack_30);
    FUN_007c6a60(asStack_20,"CANCEL",auStack_30);
    pCVar1 = (CCObject *)cocos2d::CCString::create(asStack_20);
    FUN_0079a3f4(auStack_2c);
    FUN_007c6a60(asStack_1c,&DAT_007e7584,auStack_2c);
    uVar2 = cocos2d::CCString::create(asStack_1c);
    uVar2 = cocos2d::CCArray::create(pCVar1,uVar2,0);
    AMessageBox::showAlert(0x3e71a9,auStack_18,auStack_14,uVar2,0,0);
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

// ---- ScoreScreen::onKeyboard  @ 0x3e6800
/* ScoreScreen::onKeyboard(cocos2d::CCObject*) */

void ScoreScreen::onKeyboard(CCObject *param_1)

{
  CCNotificationCenter *this;
  
  Sound::playSound(sndEng,4);
  this = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::postNotification(this,"InstantMessageKeyboard",(CCObject *)0x0);
  return;
}

// ---- ScoreScreen::onRecord  @ 0x3e6840
/* ScoreScreen::onRecord(cocos2d::CCObject*) */

void ScoreScreen::onRecord(CCObject *param_1)

{
  char cVar1;
  int iVar2;
  CCSpriteFrameCache *pCVar3;
  undefined4 uVar4;
  CCObject *pCVar5;
  NetworkManager *this;
  CCNotificationCenter *this_00;
  code *pcVar6;
  undefined4 uVar7;
  undefined1 auStack_30 [4];
  undefined1 auStack_2c [4];
  undefined1 auStack_28 [4];
  undefined1 auStack_24 [4];
  string asStack_20 [4];
  string asStack_1c [4];
  undefined1 auStack_18 [4];
  string asStack_14 [8];
  
  if (-1 < (int)((uint)(*(float *)(param_1 + 0xe4) < 0.5) << 0x1f)) {
    Sound::playSound(sndEng,4);
    cVar1 = ApplicationInterface::isVideoRecordingAvaliable();
    if (cVar1 == '\x01') {
      *(undefined4 *)(param_1 + 0xe4) = 0;
      iVar2 = ApplicationInterface::isVideoRecording();
      if (iVar2 == 0) {
        iVar2 = ApplicationInterface::hasUnViewedVideo();
        if (iVar2 == 0) {
          FUN_0079a3f4(auStack_24);
          FUN_007c6a60(auStack_18,"Recording Started!",auStack_24);
          FUN_0079a3f4(asStack_20);
          FUN_007c6a60(asStack_14,"Video recording has started!",asStack_20);
          FUN_0079a3f4(auStack_28);
          FUN_007c6a60(asStack_1c,&DAT_007e766c,auStack_28);
          pCVar5 = (CCObject *)cocos2d::CCString::create(asStack_1c);
          uVar4 = cocos2d::CCArray::create(pCVar5,0);
          AMessageBox::showAlert(0,auStack_18,asStack_14,uVar4,0,0);
          FUN_007c5914(asStack_1c);
          FUN_0079a3fc(auStack_28);
          FUN_007c5914(asStack_14);
          FUN_0079a3fc(asStack_20);
          FUN_007c5914(auStack_18);
          FUN_0079a3fc(auStack_24);
          ApplicationInterface::startVideoRecording();
          pcVar6 = *(code **)(**(int **)(param_1 + 0xf8) + 0x214);
          uVar7 = *(undefined4 *)(param_1 + 0xf8);
          pCVar3 = (CCSpriteFrameCache *)cocos2d::CCSpriteFrameCache::sharedSpriteFrameCache();
          uVar4 = cocos2d::CCSpriteFrameCache::spriteFrameByName(pCVar3,"stop.png");
          (*pcVar6)(uVar7,uVar4);
          (**(code **)(**(int **)(param_1 + 0xf8) + 0x40))
                    (*(undefined4 *)(param_1 + 0xf8),0x3f800000);
          this = (NetworkManager *)NetworkManager::sharedNetworkManager();
          iVar2 = NetworkManager::isUsingHostedServer(this);
          if (iVar2 != 0) {
            this_00 = (CCNotificationCenter *)
                      cocos2d::CCNotificationCenter::sharedNotificationCenter();
            FUN_0079a3f4(auStack_18);
            FUN_007c6a60(asStack_14,"DA2ID",auStack_18);
            pCVar5 = (CCObject *)cocos2d::CCString::create(asStack_14);
            cocos2d::CCNotificationCenter::postNotification(this_00,"SendInstantMessage",pCVar5);
            FUN_007c5914(asStack_14);
            FUN_0079a3fc(auStack_18);
          }
        }
        else {
          FUN_0079a3f4(auStack_28);
          FUN_007c6a60(auStack_18,"Unsaved Video!",auStack_28);
          FUN_0079a3f4(auStack_24);
          FUN_007c6a60(asStack_14,
                       "You have an unsaved video.  Do you want to start a new recording and overwite the exisitng video?"
                       ,auStack_24);
          FUN_0079a3f4(auStack_30);
          FUN_007c6a60(asStack_20,"Cancel",auStack_30);
          pCVar5 = (CCObject *)cocos2d::CCString::create(asStack_20);
          FUN_0079a3f4(auStack_2c);
          FUN_007c6a60(asStack_1c,"Overwrite",auStack_2c);
          uVar4 = cocos2d::CCString::create(asStack_1c);
          uVar4 = cocos2d::CCArray::create(pCVar5,uVar4,0);
          AMessageBox::showAlert(0x3e6cf9,auStack_18,asStack_14,uVar4,0,param_1);
          FUN_007c5914(asStack_1c);
          FUN_0079a3fc(auStack_2c);
          FUN_007c5914(asStack_20);
          FUN_0079a3fc(auStack_30);
          FUN_007c5914(asStack_14);
          FUN_0079a3fc(auStack_24);
          FUN_007c5914(auStack_18);
          FUN_0079a3fc(auStack_28);
        }
      }
      else {
        ApplicationInterface::stopVideoRecording();
        pcVar6 = *(code **)(**(int **)(param_1 + 0xf8) + 0x214);
        uVar7 = *(undefined4 *)(param_1 + 0xf8);
        pCVar3 = (CCSpriteFrameCache *)cocos2d::CCSpriteFrameCache::sharedSpriteFrameCache();
        uVar4 = cocos2d::CCSpriteFrameCache::spriteFrameByName(pCVar3,"vid.png");
        (*pcVar6)(uVar7,uVar4);
        (**(code **)(**(int **)(param_1 + 0xf8) + 0x40))(*(undefined4 *)(param_1 + 0xf8),0x3f4ccccd)
        ;
        FUN_0079a3f4(auStack_24);
        FUN_007c6a60(auStack_18,"Recording Stopped!",auStack_24);
        FUN_0079a3f4(asStack_20);
        FUN_007c6a60(asStack_14,"Video recording has stopped!",asStack_20);
        FUN_0079a3f4(auStack_28);
        FUN_007c6a60(asStack_1c,&DAT_007e766c,auStack_28);
        pCVar5 = (CCObject *)cocos2d::CCString::create(asStack_1c);
        uVar4 = cocos2d::CCArray::create(pCVar5,0);
        AMessageBox::showAlert(0,auStack_18,asStack_14,uVar4,0,0);
        FUN_007c5914(asStack_1c);
        FUN_0079a3fc(auStack_28);
        FUN_007c5914(asStack_14);
        FUN_0079a3fc(asStack_20);
        FUN_007c5914(auStack_18);
        FUN_0079a3fc(auStack_24);
      }
      showScreen((ScoreScreen *)param_1,false,false);
    }
    else {
      showScreen((ScoreScreen *)param_1,false,false);
    }
  }
  return;
}

// ---- ScoreScreen::videoMessageBoxHandler  @ 0x3e6cf8
/* ScoreScreen::videoMessageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*) */

void ScoreScreen::videoMessageBoxHandler(int param_1,CCObject *param_2,CCObject *param_3)

{
  CCObject *pCVar1;
  undefined4 uVar2;
  CCSpriteFrameCache *this;
  NetworkManager *this_00;
  int iVar3;
  CCNotificationCenter *this_01;
  code *pcVar4;
  undefined4 uVar5;
  undefined1 auStack_2c [4];
  undefined1 auStack_28 [4];
  undefined1 auStack_24 [4];
  string asStack_20 [4];
  undefined1 auStack_1c [4];
  string asStack_18 [4];
  CCObject *local_14;
  
  if (param_1 == 1) {
    FUN_0079a3f4(auStack_28);
    FUN_007c6a60(auStack_1c,"Recording Started",auStack_28);
    FUN_0079a3f4(auStack_24);
    FUN_007c6a60(asStack_18,"Video recording has started!",auStack_24);
    FUN_0079a3f4(auStack_2c);
    FUN_007c6a60(asStack_20,&DAT_007e766c,auStack_2c);
    pCVar1 = (CCObject *)cocos2d::CCString::create(asStack_20);
    uVar2 = cocos2d::CCArray::create(pCVar1,0);
    AMessageBox::showAlert(0,auStack_1c,asStack_18,uVar2,0,0);
    FUN_007c5914(asStack_20);
    FUN_0079a3fc(auStack_2c);
    FUN_007c5914(asStack_18);
    FUN_0079a3fc(auStack_24);
    FUN_007c5914(auStack_1c);
    FUN_0079a3fc(auStack_28);
    local_14 = param_3;
    ApplicationInterface::startVideoRecording();
    pcVar4 = *(code **)(**(int **)(local_14 + 0xf8) + 0x214);
    uVar5 = *(undefined4 *)(local_14 + 0xf8);
    this = (CCSpriteFrameCache *)cocos2d::CCSpriteFrameCache::sharedSpriteFrameCache();
    uVar2 = cocos2d::CCSpriteFrameCache::spriteFrameByName(this,"stop.png");
    (*pcVar4)(uVar5,uVar2);
    (**(code **)(*(int *)local_14 + 0x40))(local_14,0x3f800000);
    this_00 = (NetworkManager *)NetworkManager::sharedNetworkManager();
    iVar3 = NetworkManager::isUsingHostedServer(this_00);
    if (iVar3 != 0) {
      this_01 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
      FUN_0079a3f4(auStack_1c);
      FUN_007c6a60(asStack_18,"DA2ID",auStack_1c);
      pCVar1 = (CCObject *)cocos2d::CCString::create(asStack_18);
      cocos2d::CCNotificationCenter::postNotification(this_01,"SendInstantMessage",pCVar1);
      FUN_007c5914(asStack_18);
      FUN_0079a3fc(auStack_1c);
    }
  }
  return;
}

// ---- ScoreScreen::setOpacity  @ 0x3e6ec0
/* ScoreScreen::setOpacity(int) */

void __thiscall ScoreScreen::setOpacity(ScoreScreen *this,int param_1)

{
  ScoreList::setOpacity(*(ScoreList **)(this + 0xfc),param_1);
  (**(code **)(**(int **)(this + 0xec) + 0x208))(*(undefined4 *)(this + 0xec),param_1 & 0xff);
  if (0x95 < param_1) {
    param_1 = 0x96;
  }
  (**(code **)(**(int **)(this + 0xe8) + 0x1a4))(*(undefined4 *)(this + 0xe8),param_1 & 0xff);
  return;
}

// ---- ScoreScreen::showScreen  @ 0x3e6f20
/* ScoreScreen::showScreen(bool, bool) */

void __thiscall ScoreScreen::showScreen(ScoreScreen *this,bool param_1,bool param_2)

{
  if (param_2) {
    (**(code **)(**(int **)(this + 0x104) + 0x1ec))(*(undefined4 *)(this + 0x104),1);
    (**(code **)(**(int **)(this + 0x104) + 0x90))(*(undefined4 *)(this + 0x104),1);
    (**(code **)(**(int **)(this + 0xf0) + 0x90))(*(undefined4 *)(this + 0xf0),1);
    (**(code **)(**(int **)(this + 0x10c) + 0x90))(*(undefined4 *)(this + 0x10c),1);
    (**(code **)(**(int **)(this + 0x10c) + 0x1ec))(*(undefined4 *)(this + 0x10c),1);
    (**(code **)(**(int **)(this + 0xf8) + 0x90))(*(undefined4 *)(this + 0xf8),1);
  }
  else if (param_1) {
    (**(code **)(**(int **)(this + 0x104) + 0x1ec))(*(undefined4 *)(this + 0x104),0);
    (**(code **)(**(int **)(this + 0x104) + 0x90))(*(undefined4 *)(this + 0x104),0);
    (**(code **)(**(int **)(this + 0xf0) + 0x90))(*(undefined4 *)(this + 0xf0),0);
    (**(code **)(**(int **)(this + 0x10c) + 0x90))(*(undefined4 *)(this + 0x10c),0);
    (**(code **)(**(int **)(this + 0x10c) + 0x1ec))(*(undefined4 *)(this + 0x10c),0);
    (**(code **)(**(int **)(this + 0xf8) + 0x90))(*(undefined4 *)(this + 0xf8),0);
  }
  this[0x114] = (ScoreScreen)param_1;
  return;
}

// ---- ScoreScreen::endGame  @ 0x3e707c
/* ScoreScreen::endGame() */

void __thiscall ScoreScreen::endGame(ScoreScreen *this)

{
  *(undefined4 *)(this + 0x118) = 0x40400000;
  (**(code **)(**(int **)(this + 0x100) + 0x90))(*(undefined4 *)(this + 0x100),1);
  showScreen(this,true,false);
  (**(code **)(**(int **)(this + 0x104) + 0x1ec))(*(undefined4 *)(this + 0x104),0);
  (**(code **)(**(int **)(this + 0x104) + 0x90))(*(undefined4 *)(this + 0x104),0);
  (**(code **)(**(int **)(this + 0xf0) + 0x90))(*(undefined4 *)(this + 0xf0),0);
  (**(code **)(**(int **)(this + 0x108) + 0x1ec))(*(undefined4 *)(this + 0x108),0);
  (**(code **)(**(int **)(this + 0x108) + 0x90))(*(undefined4 *)(this + 0x108),0);
  (**(code **)(**(int **)(this + 0xf4) + 0x90))(*(undefined4 *)(this + 0xf4),0);
  (**(code **)(**(int **)(this + 0x10c) + 0x90))(*(undefined4 *)(this + 0x10c),0);
  (**(code **)(**(int **)(this + 0x10c) + 0x1ec))(*(undefined4 *)(this + 0x10c),0);
  (**(code **)(**(int **)(this + 0xf8) + 0x90))(*(undefined4 *)(this + 0xf8),0);
  return;
}

// ---- ScoreScreen::getScoreList  @ 0x3e7198
/* ScoreScreen::getScoreList() */

undefined4 __thiscall ScoreScreen::getScoreList(ScoreScreen *this)

{
  return *(undefined4 *)(this + 0xfc);
}

// ---- ScoreScreen::messageBoxHandler  @ 0x3e71a8
/* ScoreScreen::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*) */

void ScoreScreen::messageBoxHandler(int param_1,CCObject *param_2,CCObject *param_3)

{
  CCNotificationCenter *this;
  
  if (param_1 == 1) {
    if (gameType == 4) {
      ApplicationInterface::prepareInterstitial();
    }
    this = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    cocos2d::CCNotificationCenter::postNotification(this,"QuitGame",(CCObject *)0x0);
  }
  return;
}
