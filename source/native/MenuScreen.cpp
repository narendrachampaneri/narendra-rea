// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 22 functions

// ---- MenuScreen::create  @ 0x34a17c
/* MenuScreen::create() */

MenuScreen * MenuScreen::create(void)

{
  bool bVar1;
  MenuScreen *this;
  int iVar2;
  
  this = operator_new(0x134);
  MenuScreen(this);
  if ((this == (MenuScreen *)0x0) || (iVar2 = (**(code **)(*(int *)this + 0x18))(this), iVar2 == 0))
  {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (bVar1) {
    cocos2d::CCObject::autorelease((CCObject *)this);
  }
  else {
    if (this != (MenuScreen *)0x0) {
      (**(code **)(*(int *)this + 8))(this);
    }
    this = (MenuScreen *)0x0;
  }
  return this;
}

// ---- MenuScreen::MenuScreen  @ 0x37d1fc
/* MenuScreen::MenuScreen() */

MenuScreen * __thiscall MenuScreen::MenuScreen(MenuScreen *this)

{
  cocos2d::CCNode::CCNode((CCNode *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_00915410;
  cocos2d::CCSize::CCSize((CCSize *)(this + 0x110));
  cocos2d::CCPoint::CCPoint((CCPoint *)(this + 0x118));
  cocos2d::CCPoint::CCPoint((CCPoint *)(this + 0x128));
  return this;
}

// ---- MenuScreen::init  @ 0x37d25c
/* MenuScreen::init() */

bool __thiscall MenuScreen::init(MenuScreen *this)

{
  char cVar1;
  undefined3 uVar2;
  undefined4 uVar3;
  CCNode *pCVar4;
  CCNode *pCVar5;
  CCNode *pCVar6;
  CCNode *pCVar7;
  CCNode *pCVar8;
  CCNode *pCVar9;
  CCMenuItem *pCVar10;
  code *pcVar11;
  undefined8 uVar12;
  code *local_28;
  undefined4 local_24;
  code *local_20;
  undefined4 local_1c;
  
  cVar1 = cocos2d::CCNode::init();
  if (cVar1 == '\x01') {
    uVar12 = (**(code **)(*(int *)this + 0x90))(this,0);
    this[0x124] = (MenuScreen)0x0;
    *(undefined4 *)(this + 0x120) = 0;
    *(undefined4 *)(this + 0x130) = 0;
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_20,(float)uVar12,(float)((ulonglong)uVar12 >> 0x20))
    ;
    cocos2d::CCPoint::operator=((CCPoint *)(this + 0x128),(CCPoint *)&local_20);
    (**(code **)(*(int *)this + 0x4c))(this,this + 0x128);
    uVar12 = cocos2d::CCSize::operator=((CCSize *)(this + 0x110),(CCSize *)&screenSize);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_20,(float)uVar12,(float)((ulonglong)uVar12 >> 0x20))
    ;
    cocos2d::CCPoint::operator=((CCPoint *)(this + 0x118),(CCPoint *)&local_20);
    uVar3 = cocos2d::CCSprite::create("title_ret2_new.png");
    *(undefined4 *)(this + 0xe4) = uVar3;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0xe4));
    (**(code **)(**(int **)(this + 0xe4) + 0x4c))(*(undefined4 *)(this + 0xe4),this + 0x118);
    (**(code **)(**(int **)(this + 0xe4) + 0x1a4))(*(undefined4 *)(this + 0xe4),0xb4);
    (**(code **)(**(int **)(this + 0xe4) + 0x40))(*(undefined4 *)(this + 0xe4),0x3f333333);
    pcVar11 = *(code **)(**(int **)(this + 0xe4) + 0x1bc);
    uVar3 = *(undefined4 *)(this + 0xe4);
    uVar2 = FUN_0037c400(100,100,100);
    local_20 = (code *)CONCAT13(local_20._3_1_,uVar2);
    (*pcVar11)(uVar3,&local_20);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0xe4));
    uVar3 = cocos2d::CCLabelAtlas::create("","font02_new.png",0x20,0x20,0x20);
    *(undefined4 *)(this + 0xfc) = uVar3;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0xfc));
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0xfc),0x18);
    uVar12 = (**(code **)(**(int **)(this + 0xfc) + 0x40))(*(undefined4 *)(this + 0xfc),0x3f333333);
    pcVar11 = *(code **)(**(int **)(this + 0xfc) + 0x4c);
    uVar3 = *(undefined4 *)(this + 0xfc);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_28,(float)uVar12,(float)((ulonglong)uVar12 >> 0x20))
    ;
    FUN_0037c45c(&local_20,this + 0x118,&local_28);
    uVar12 = (*pcVar11)(uVar3,&local_20);
    pcVar11 = *(code **)(**(int **)(this + 0xfc) + 0x7c);
    uVar3 = *(undefined4 *)(this + 0xfc);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_20,(float)uVar12,(float)((ulonglong)uVar12 >> 0x20))
    ;
    (*pcVar11)(uVar3,&local_20);
    (**(code **)(*(int *)this + 0xcc))(this,*(undefined4 *)(this + 0xfc),0);
    uVar3 = cocos2d::CCLabelAtlas::create("SCORE: 0","font02_new.png",0x20,0x20,0x20);
    *(undefined4 *)(this + 0x100) = uVar3;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x100));
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x100),0x18);
    uVar12 = (**(code **)(**(int **)(this + 0x100) + 0x40))
                       (*(undefined4 *)(this + 0x100),0x3f000000);
    pcVar11 = *(code **)(**(int **)(this + 0x100) + 0x4c);
    uVar3 = *(undefined4 *)(this + 0x100);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_28,(float)uVar12,(float)((ulonglong)uVar12 >> 0x20))
    ;
    FUN_0037c45c(&local_20,this + 0x118,&local_28);
    uVar12 = (*pcVar11)(uVar3,&local_20);
    pcVar11 = *(code **)(**(int **)(this + 0x100) + 0x7c);
    uVar3 = *(undefined4 *)(this + 0x100);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_20,(float)uVar12,(float)((ulonglong)uVar12 >> 0x20))
    ;
    (*pcVar11)(uVar3,&local_20);
    (**(code **)(*(int *)this + 0xcc))(this,*(undefined4 *)(this + 0x100),0);
    uVar3 = cocos2d::CCLabelAtlas::create("KILLS: 0","font02_new.png",0x20,0x20,0x20);
    *(undefined4 *)(this + 0x104) = uVar3;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x104));
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x104),0x18);
    uVar12 = (**(code **)(**(int **)(this + 0x104) + 0x40))
                       (*(undefined4 *)(this + 0x104),0x3f000000);
    pcVar11 = *(code **)(**(int **)(this + 0x104) + 0x4c);
    uVar3 = *(undefined4 *)(this + 0x104);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_28,(float)uVar12,(float)((ulonglong)uVar12 >> 0x20))
    ;
    FUN_0037c45c(&local_20,this + 0x118,&local_28);
    uVar12 = (*pcVar11)(uVar3,&local_20);
    pcVar11 = *(code **)(**(int **)(this + 0x104) + 0x7c);
    uVar3 = *(undefined4 *)(this + 0x104);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_20,(float)uVar12,(float)((ulonglong)uVar12 >> 0x20))
    ;
    (*pcVar11)(uVar3,&local_20);
    (**(code **)(*(int *)this + 0xcc))(this,*(undefined4 *)(this + 0x104),0);
    uVar3 = cocos2d::CCLabelAtlas::create("BEST: 0","font02_new.png",0x20,0x20,0x20);
    *(undefined4 *)(this + 0x108) = uVar3;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x108));
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x108),0x18);
    uVar12 = (**(code **)(**(int **)(this + 0x108) + 0x40))
                       (*(undefined4 *)(this + 0x108),0x3f000000);
    pcVar11 = *(code **)(**(int **)(this + 0x108) + 0x4c);
    uVar3 = *(undefined4 *)(this + 0x108);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_28,(float)uVar12,(float)((ulonglong)uVar12 >> 0x20))
    ;
    FUN_0037c45c(&local_20,this + 0x118,&local_28);
    uVar12 = (*pcVar11)(uVar3,&local_20);
    pcVar11 = *(code **)(**(int **)(this + 0x108) + 0x7c);
    uVar3 = *(undefined4 *)(this + 0x108);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_20,(float)uVar12,(float)((ulonglong)uVar12 >> 0x20))
    ;
    (*pcVar11)(uVar3,&local_20);
    (**(code **)(*(int *)this + 0xcc))(this,*(undefined4 *)(this + 0x108),0);
    pCVar4 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_sml.png");
    pCVar5 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_sml.png");
    pCVar6 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_sml.png");
    pCVar7 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_sml.png");
    pCVar8 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_sml.png");
    pCVar9 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_sml.png");
    pCVar10 = (CCMenuItem *)
              cocos2d::CCMenuItemSprite::create
                        (pCVar4,pCVar5,(CCObject *)this,(_func_void_CCObject_ptr *)0x37dd99);
    uVar3 = cocos2d::CCMenu::create(pCVar10,0);
    *(undefined4 *)(this + 0xf0) = uVar3;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0xf0));
    local_28 = (code *)0x37dccd;
    local_24 = 0;
    pCVar10 = (CCMenuItem *)
              cocos2d::CCMenuItemSprite::create
                        (pCVar6,pCVar7,(CCObject *)this,(_func_void_CCObject_ptr *)0x37dccd);
    uVar3 = cocos2d::CCMenu::create(pCVar10,0);
    *(undefined4 *)(this + 0xe8) = uVar3;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0xe8));
    local_20 = (code *)0x37dd0d;
    local_1c = 0;
    pCVar10 = (CCMenuItem *)
              cocos2d::CCMenuItemSprite::create
                        (pCVar8,pCVar9,(CCObject *)this,(_func_void_CCObject_ptr *)0x37dd0d);
    uVar3 = cocos2d::CCMenu::create(pCVar10,0);
    *(undefined4 *)(this + 0xec) = uVar3;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0xec));
    uVar3 = cocos2d::CCLabelAtlas::create("CHAT","font02_new.png",0x20,0x20,0x20);
    *(undefined4 *)(this + 0x10c) = uVar3;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x10c));
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x10c),0x18);
    (**(code **)(**(int **)(this + 0x10c) + 0x40))(*(undefined4 *)(this + 0x10c),0x3f000000);
    uVar3 = cocos2d::CCLabelAtlas::create("DONE","font02_new.png",0x20,0x20,0x20);
    *(undefined4 *)(this + 0xf4) = uVar3;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0xf4));
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0xf4),0x18);
    (**(code **)(**(int **)(this + 0xf4) + 0x40))(*(undefined4 *)(this + 0xf4),0x3f000000);
    uVar3 = cocos2d::CCLabelAtlas::create("RETRY","font02_new.png",0x20,0x20,0x20);
    *(undefined4 *)(this + 0xf8) = uVar3;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0xf8));
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0xf8),0x18);
    (**(code **)(**(int **)(this + 0xf8) + 0x40))(*(undefined4 *)(this + 0xf8),0x3f000000);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0xf0));
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0xec));
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0xe8));
    (**(code **)(*(int *)this + 0xcc))(this,*(undefined4 *)(this + 0xf4),0);
    (**(code **)(*(int *)this + 0xcc))(this,*(undefined4 *)(this + 0xf8),0);
    (**(code **)(*(int *)this + 0xcc))(this,*(undefined4 *)(this + 0x10c),0);
    setMenuOpacity(this,0);
  }
  return cVar1 == '\x01';
}

// ---- MenuScreen::~MenuScreen  @ 0x37da98
/* WARNING: Removing unreachable block (ram,0x0037db48) */
/* MenuScreen::~MenuScreen() */

MenuScreen * __thiscall MenuScreen::~MenuScreen(MenuScreen *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_00915410;
  cocos2d::CCNode::removeAllChildrenWithCleanup((CCNode *)this,true);
  cocos2d::CCObject::release(*(CCObject **)(this + 0xe4));
  cocos2d::CCObject::release(*(CCObject **)(this + 0xfc));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x100));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x104));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x10c));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x108));
  cocos2d::CCObject::release(*(CCObject **)(this + 0xf4));
  cocos2d::CCObject::release(*(CCObject **)(this + 0xf8));
  cocos2d::CCObject::release(*(CCObject **)(this + 0xe8));
  cocos2d::CCObject::release(*(CCObject **)(this + 0xec));
  cocos2d::CCObject::release(*(CCObject **)(this + 0xf0));
  cocos2d::CCNode::~CCNode((CCNode *)this);
  return this;
}

// ---- MenuScreen::~MenuScreen  @ 0x37db60
/* MenuScreen::~MenuScreen() */

MenuScreen * __thiscall MenuScreen::~MenuScreen(MenuScreen *this)

{
  ~MenuScreen(this);
  operator_delete(this);
  return this;
}

// ---- MenuScreen::updateStep  @ 0x37db7c
/* MenuScreen::updateStep(float) */

void __thiscall MenuScreen::updateStep(MenuScreen *this,float param_1)

{
  float in_r1;
  code *pcVar1;
  undefined8 uVar2;
  float fVar3;
  CCPoint aCStack_18 [12];
  
  if (this[0x124] == (MenuScreen)0x0) {
    if (*(float *)(this + 0x120) - in_r1 * 1000.0 <= 0.0) {
      fVar3 = 0.0;
    }
    else {
      fVar3 = *(float *)(this + 0x120) - in_r1 * 1000.0;
    }
    *(float *)(this + 0x120) = fVar3;
  }
  else {
    if ((int)((uint)(*(float *)(this + 0x120) + in_r1 * 1000.0 < 255.0) << 0x1f) < 0) {
      fVar3 = *(float *)(this + 0x120) + in_r1 * 1000.0;
    }
    else {
      fVar3 = 255.0;
    }
    *(float *)(this + 0x120) = fVar3;
  }
  setMenuOpacity(this,(int)*(float *)(this + 0x120));
  *(float *)(this + 0x130) = *(float *)(this + 0x130) + in_r1;
  if ((this[0x124] == (MenuScreen)0x1) || (0.0 < *(float *)(this + 0x120))) {
    uVar2 = (**(code **)(*(int *)this + 0x90))(this,1);
    pcVar1 = *(code **)(*(int *)this + 0x4c);
    cocos2d::CCPoint::CCPoint(aCStack_18,(float)uVar2,(float)((ulonglong)uVar2 >> 0x20));
    (*pcVar1)(this,aCStack_18);
  }
  else {
    (**(code **)(*(int *)this + 0x90))(this,0);
    (**(code **)(*(int *)this + 0x4c))(this,this + 0x128);
  }
  return;
}

// ---- MenuScreen::onQuit  @ 0x37dccc
/* MenuScreen::onQuit(cocos2d::CCObject*) */

void MenuScreen::onQuit(CCObject *param_1)

{
  CCNotificationCenter *this;
  
  Sound::playSound(sndEng,4);
  this = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::postNotification(this,"CompleteGame",(CCObject *)0x0);
  return;
}

// ---- MenuScreen::onRetry  @ 0x37dd0c
/* MenuScreen::onRetry(cocos2d::CCObject*) */

void __thiscall MenuScreen::onRetry(MenuScreen *this,CCObject *param_1)

{
  char cVar1;
  CCNotificationCenter *this_00;
  undefined1 auStack_10 [4];
  undefined1 auStack_c [4];
  
  showScreen(this,false);
  FUN_0079a3f4(auStack_10);
  FUN_007c6a60(auStack_c,"com.chadtowns.da2.propack",auStack_10,auStack_10,param_1);
  cVar1 = InAppPurchaseBridge::isProductPurchased(auStack_c);
  FUN_007c5914(auStack_c);
  FUN_0079a3fc(auStack_10);
  if (cVar1 != '\x01') {
    ApplicationInterface::showInterstitial();
  }
  this_00 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::postNotification(this_00,"RetryGame",(CCObject *)0x0);
  return;
}

// ---- MenuScreen::onKeyboard  @ 0x37dd98
/* MenuScreen::onKeyboard(cocos2d::CCObject*) */

void MenuScreen::onKeyboard(CCObject *param_1)

{
  CCNotificationCenter *this;
  
  this = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::postNotification(this,"InstantMessageKeyboard",(CCObject *)0x0);
  return;
}

// ---- MenuScreen::pauseTraining  @ 0x37ddc0
/* MenuScreen::pauseTraining() */

void __thiscall MenuScreen::pauseTraining(MenuScreen *this)

{
  CCNotificationCenter *this_00;
  undefined4 uVar1;
  undefined4 uVar2;
  code *pcVar3;
  undefined8 uVar4;
  CCPoint aCStack_28 [8];
  CCPoint aCStack_20 [12];
  
  (**(code **)(**(int **)(this + 0xe8) + 0x90))(*(undefined4 *)(this + 0xe8),1);
  (**(code **)(**(int **)(this + 0xec) + 0x90))(*(undefined4 *)(this + 0xec),0);
  (**(code **)(**(int **)(this + 0xf4) + 0x90))(*(undefined4 *)(this + 0xf4),1);
  (**(code **)(**(int **)(this + 0xf0) + 0x90))(*(undefined4 *)(this + 0xf0),0);
  (**(code **)(**(int **)(this + 0x10c) + 0x90))(*(undefined4 *)(this + 0x10c),0);
  (**(code **)(**(int **)(this + 0xf8) + 0x90))(*(undefined4 *)(this + 0xf8),0);
  (**(code **)(**(int **)(this + 0x100) + 0x90))(*(undefined4 *)(this + 0x100),0);
  (**(code **)(**(int **)(this + 0x104) + 0x90))(*(undefined4 *)(this + 0x104),0);
  (**(code **)(**(int **)(this + 0x108) + 0x90))(*(undefined4 *)(this + 0x108),0);
  uVar4 = (**(code **)(**(int **)(this + 0xf4) + 0x1f8))(*(undefined4 *)(this + 0xf4),&DAT_007dda04)
  ;
  pcVar3 = *(code **)(**(int **)(this + 0xe8) + 0x4c);
  uVar1 = *(undefined4 *)(this + 0xe8);
  cocos2d::CCPoint::CCPoint(aCStack_28,(float)uVar4,(float)((ulonglong)uVar4 >> 0x20));
  FUN_0037c45c(aCStack_20,this + 0x118,aCStack_28);
  (*pcVar3)(uVar1,aCStack_20);
  pcVar3 = *(code **)(**(int **)(this + 0xf4) + 0x4c);
  uVar2 = *(undefined4 *)(this + 0xf4);
  uVar1 = (**(code **)(**(int **)(this + 0xe8) + 0x50))(*(undefined4 *)(this + 0xe8));
  uVar4 = (*pcVar3)(uVar2,uVar1);
  pcVar3 = *(code **)(**(int **)(this + 0xf4) + 0x7c);
  uVar1 = *(undefined4 *)(this + 0xf4);
  cocos2d::CCPoint::CCPoint(aCStack_20,(float)uVar4,(float)((ulonglong)uVar4 >> 0x20));
  (*pcVar3)(uVar1,aCStack_20);
  (**(code **)(**(int **)(this + 0xf8) + 0x1f8))(*(undefined4 *)(this + 0xf8),"RETRY");
  pcVar3 = *(code **)(**(int **)(this + 0xf8) + 0x4c);
  uVar2 = *(undefined4 *)(this + 0xf8);
  uVar1 = (**(code **)(**(int **)(this + 0xec) + 0x50))(*(undefined4 *)(this + 0xec));
  uVar4 = (*pcVar3)(uVar2,uVar1);
  pcVar3 = *(code **)(**(int **)(this + 0xf8) + 0x7c);
  uVar1 = *(undefined4 *)(this + 0xf8);
  cocos2d::CCPoint::CCPoint(aCStack_20,(float)uVar4,(float)((ulonglong)uVar4 >> 0x20));
  (*pcVar3)(uVar1,aCStack_20);
  uVar4 = (**(code **)(**(int **)(this + 0xfc) + 0x1f8))(*(undefined4 *)(this + 0xfc),"PAUSED");
  pcVar3 = *(code **)(**(int **)(this + 0xfc) + 0x4c);
  uVar1 = *(undefined4 *)(this + 0xfc);
  cocos2d::CCPoint::CCPoint(aCStack_28,(float)uVar4,(float)((ulonglong)uVar4 >> 0x20));
  FUN_0037c45c(aCStack_20,this + 0x118,aCStack_28);
  uVar4 = (*pcVar3)(uVar1,aCStack_20);
  pcVar3 = *(code **)(**(int **)(this + 0xfc) + 0x7c);
  uVar1 = *(undefined4 *)(this + 0xfc);
  cocos2d::CCPoint::CCPoint(aCStack_20,(float)uVar4,(float)((ulonglong)uVar4 >> 0x20));
  (*pcVar3)(uVar1,aCStack_20);
  Sound::playSound(sndEng,4);
  showScreen(this,true);
  this_00 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::postNotification(this_00,"PauseGame",(CCObject *)0x0);
  return;
}

// ---- MenuScreen::resumeTraining  @ 0x37e0b4
/* MenuScreen::resumeTraining() */

void __thiscall MenuScreen::resumeTraining(MenuScreen *this)

{
  CCNotificationCenter *this_00;
  
  Sound::playSound(sndEng,4);
  showScreen(this,false);
  this_00 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::postNotification(this_00,"ResumeGame",(CCObject *)0x0);
  return;
}

// ---- MenuScreen::endTraining  @ 0x37e0fc
/* MenuScreen::endTraining() */

void __thiscall MenuScreen::endTraining(MenuScreen *this)

{
  undefined4 uVar1;
  undefined4 uVar2;
  code *pcVar3;
  undefined8 uVar4;
  CCPoint aCStack_20 [8];
  CCPoint aCStack_18 [8];
  
  (**(code **)(**(int **)(this + 0xe8) + 0x90))(*(undefined4 *)(this + 0xe8),1);
  (**(code **)(**(int **)(this + 0xf4) + 0x90))(*(undefined4 *)(this + 0xf4),1);
  (**(code **)(**(int **)(this + 0xf0) + 0x90))(*(undefined4 *)(this + 0xf0),0);
  (**(code **)(**(int **)(this + 0x10c) + 0x90))(*(undefined4 *)(this + 0x10c),0);
  (**(code **)(**(int **)(this + 0xec) + 0x90))(*(undefined4 *)(this + 0xec),0);
  (**(code **)(**(int **)(this + 0xf8) + 0x90))(*(undefined4 *)(this + 0xf8),0);
  (**(code **)(**(int **)(this + 0x100) + 0x90))(*(undefined4 *)(this + 0x100),0);
  (**(code **)(**(int **)(this + 0x104) + 0x90))(*(undefined4 *)(this + 0x104),0);
  (**(code **)(**(int **)(this + 0x108) + 0x90))(*(undefined4 *)(this + 0x108),0);
  uVar4 = (**(code **)(**(int **)(this + 0xfc) + 0x1f8))
                    (*(undefined4 *)(this + 0xfc),"TRAINING COMPLETE");
  pcVar3 = *(code **)(**(int **)(this + 0xfc) + 0x4c);
  uVar1 = *(undefined4 *)(this + 0xfc);
  cocos2d::CCPoint::CCPoint(aCStack_20,(float)uVar4,(float)((ulonglong)uVar4 >> 0x20));
  FUN_0037c45c(aCStack_18,this + 0x118,aCStack_20);
  uVar4 = (*pcVar3)(uVar1,aCStack_18);
  pcVar3 = *(code **)(**(int **)(this + 0xfc) + 0x7c);
  uVar1 = *(undefined4 *)(this + 0xfc);
  cocos2d::CCPoint::CCPoint(aCStack_18,(float)uVar4,(float)((ulonglong)uVar4 >> 0x20));
  (*pcVar3)(uVar1,aCStack_18);
  uVar4 = (**(code **)(**(int **)(this + 0xf4) + 0x1f8))(*(undefined4 *)(this + 0xf4),&DAT_007dd9a4)
  ;
  pcVar3 = *(code **)(**(int **)(this + 0xf4) + 0x7c);
  uVar1 = *(undefined4 *)(this + 0xf4);
  cocos2d::CCPoint::CCPoint(aCStack_18,(float)uVar4,(float)((ulonglong)uVar4 >> 0x20));
  uVar4 = (*pcVar3)(uVar1,aCStack_18);
  pcVar3 = *(code **)(**(int **)(this + 0xe8) + 0x4c);
  uVar1 = *(undefined4 *)(this + 0xe8);
  cocos2d::CCPoint::CCPoint(aCStack_20,(float)uVar4,(float)((ulonglong)uVar4 >> 0x20));
  FUN_0037c45c(aCStack_18,this + 0x118,aCStack_20);
  (*pcVar3)(uVar1,aCStack_18);
  pcVar3 = *(code **)(**(int **)(this + 0xf4) + 0x4c);
  uVar2 = *(undefined4 *)(this + 0xf4);
  uVar1 = (**(code **)(**(int **)(this + 0xe8) + 0x50))(*(undefined4 *)(this + 0xe8));
  (*pcVar3)(uVar2,uVar1);
  showScreen(this,true);
  return;
}

// ---- MenuScreen::pauseCoop  @ 0x37e33c
/* MenuScreen::pauseCoop() */

void __thiscall MenuScreen::pauseCoop(MenuScreen *this)

{
  ScoreKeeper *pSVar1;
  CCUserDefault *this_00;
  undefined4 uVar2;
  CCString *pCVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  code *pcVar6;
  undefined4 uVar7;
  undefined8 uVar8;
  CCPoint aCStack_28 [8];
  CCPoint local_20;
  undefined1 local_1f;
  undefined1 local_1e;
  
  (**(code **)(**(int **)(this + 0xe8) + 0x90))(*(undefined4 *)(this + 0xe8),1);
  (**(code **)(**(int **)(this + 0xf4) + 0x90))(*(undefined4 *)(this + 0xf4),1);
  uVar8 = (**(code **)(**(int **)(this + 0xf4) + 0x1f8))(*(undefined4 *)(this + 0xf4),&DAT_007dda04)
  ;
  pcVar6 = *(code **)(**(int **)(this + 0xe8) + 0x4c);
  uVar4 = *(undefined4 *)(this + 0xe8);
  cocos2d::CCPoint::CCPoint(aCStack_28,(float)uVar8,(float)((ulonglong)uVar8 >> 0x20));
  FUN_0037c45c(&local_20,this + 0x118,aCStack_28);
  (*pcVar6)(uVar4,&local_20);
  pcVar6 = *(code **)(**(int **)(this + 0xf4) + 0x4c);
  uVar5 = *(undefined4 *)(this + 0xf4);
  uVar4 = (**(code **)(**(int **)(this + 0xe8) + 0x50))(*(undefined4 *)(this + 0xe8));
  uVar8 = (*pcVar6)(uVar5,uVar4);
  pcVar6 = *(code **)(**(int **)(this + 0xf4) + 0x7c);
  uVar4 = *(undefined4 *)(this + 0xf4);
  cocos2d::CCPoint::CCPoint(&local_20,(float)uVar8,(float)((ulonglong)uVar8 >> 0x20));
  (*pcVar6)(uVar4,&local_20);
  (**(code **)(**(int **)(this + 0xf0) + 0x90))(*(undefined4 *)(this + 0xf0),1);
  (**(code **)(**(int **)(this + 0x10c) + 0x90))(*(undefined4 *)(this + 0x10c),1);
  uVar8 = (**(code **)(**(int **)(this + 0x10c) + 0x1f8))
                    (*(undefined4 *)(this + 0x10c),&DAT_007dd99c);
  pcVar6 = *(code **)(**(int **)(this + 0xf0) + 0x4c);
  uVar4 = *(undefined4 *)(this + 0xf0);
  cocos2d::CCPoint::CCPoint(aCStack_28,(float)uVar8,(float)((ulonglong)uVar8 >> 0x20));
  FUN_0037c45c(&local_20,this + 0x118,aCStack_28);
  (*pcVar6)(uVar4,&local_20);
  pcVar6 = *(code **)(**(int **)(this + 0x10c) + 0x4c);
  uVar5 = *(undefined4 *)(this + 0x10c);
  uVar4 = (**(code **)(**(int **)(this + 0xf0) + 0x50))(*(undefined4 *)(this + 0xf0));
  uVar8 = (*pcVar6)(uVar5,uVar4);
  pcVar6 = *(code **)(**(int **)(this + 0x10c) + 0x7c);
  uVar4 = *(undefined4 *)(this + 0x10c);
  cocos2d::CCPoint::CCPoint(&local_20,(float)uVar8,(float)((ulonglong)uVar8 >> 0x20));
  (*pcVar6)(uVar4,&local_20);
  (**(code **)(**(int **)(this + 0xec) + 0x90))(*(undefined4 *)(this + 0xec),0);
  (**(code **)(**(int **)(this + 0xf8) + 0x90))(*(undefined4 *)(this + 0xf8),0);
  (**(code **)(**(int **)(this + 0x100) + 0x90))(*(undefined4 *)(this + 0x100),1);
  (**(code **)(**(int **)(this + 0x104) + 0x90))(*(undefined4 *)(this + 0x104),1);
  pcVar6 = *(code **)(**(int **)(this + 0x108) + 0x1bc);
  uVar5 = *(undefined4 *)(this + 0x108);
  uVar4 = FUN_0037c400(0xff,0xff,0xff);
  local_20 = SUB41(uVar4,0);
  local_1f = (undefined1)((uint)uVar4 >> 8);
  local_1e = (undefined1)((uint)uVar4 >> 0x10);
  (*pcVar6)(uVar5,&local_20);
  pSVar1 = (ScoreKeeper *)ScoreKeeper::sharedScoreKeeper();
  uVar4 = ScoreKeeper::getScore(pSVar1);
  pSVar1 = (ScoreKeeper *)ScoreKeeper::sharedScoreKeeper();
  (**(code **)(*hostSoldier + 0x1c0))(&local_20,hostSoldier);
  uVar5 = ScoreKeeper::getKills(pSVar1,&local_20);
  FUN_007c5914(&local_20);
  this_00 = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
  uVar2 = cocos2d::CCUserDefault::getIntegerForKey(this_00,"BESTCOOP",0);
  pcVar6 = *(code **)(**(int **)(this + 0x100) + 0x1f8);
  uVar7 = *(undefined4 *)(this + 0x100);
  pCVar3 = (CCString *)cocos2d::CCString::createWithFormat("SCORE: %d",uVar4);
  uVar4 = cocos2d::CCString::getCString(pCVar3);
  (*pcVar6)(uVar7,uVar4);
  pcVar6 = *(code **)(**(int **)(this + 0x104) + 0x1f8);
  uVar7 = *(undefined4 *)(this + 0x104);
  pCVar3 = (CCString *)cocos2d::CCString::createWithFormat("KILLS: %d",uVar5);
  uVar4 = cocos2d::CCString::getCString(pCVar3);
  (*pcVar6)(uVar7,uVar4);
  pcVar6 = *(code **)(**(int **)(this + 0x108) + 0x1f8);
  uVar5 = *(undefined4 *)(this + 0x108);
  pCVar3 = (CCString *)cocos2d::CCString::createWithFormat("BEST: %d",uVar2);
  uVar4 = cocos2d::CCString::getCString(pCVar3);
  (*pcVar6)(uVar5,uVar4);
  uVar8 = (**(code **)(**(int **)(this + 0xfc) + 0x1f8))
                    (*(undefined4 *)(this + 0xfc),"COOP SURVIVAL");
  pcVar6 = *(code **)(**(int **)(this + 0xfc) + 0x7c);
  uVar4 = *(undefined4 *)(this + 0xfc);
  cocos2d::CCPoint::CCPoint(&local_20,(float)uVar8,(float)((ulonglong)uVar8 >> 0x20));
  uVar8 = (*pcVar6)(uVar4,&local_20);
  pcVar6 = *(code **)(**(int **)(this + 0xfc) + 0x4c);
  uVar4 = *(undefined4 *)(this + 0xfc);
  cocos2d::CCPoint::CCPoint(aCStack_28,(float)uVar8,(float)((ulonglong)uVar8 >> 0x20));
  FUN_0037c45c(&local_20,this + 0x118,aCStack_28);
  (*pcVar6)(uVar4,&local_20);
  Sound::playSound(sndEng,4);
  showScreen(this,true);
  return;
}

// ---- MenuScreen::resumeCoop  @ 0x37e7a0
/* MenuScreen::resumeCoop() */

void __thiscall MenuScreen::resumeCoop(MenuScreen *this)

{
  Sound::playSound(sndEng,4);
  showScreen(this,false);
  return;
}

// ---- MenuScreen::pauseSurvival  @ 0x37e7d0
/* MenuScreen::pauseSurvival() */

void __thiscall MenuScreen::pauseSurvival(MenuScreen *this)

{
  undefined4 uVar1;
  ScoreKeeper *pSVar2;
  CCUserDefault *this_00;
  undefined4 uVar3;
  CCString *pCVar4;
  CCNotificationCenter *this_01;
  undefined4 uVar5;
  code *pcVar6;
  undefined4 uVar7;
  undefined8 uVar8;
  CCPoint aCStack_28 [8];
  CCPoint local_20;
  undefined1 local_1f;
  undefined1 local_1e;
  
  (**(code **)(**(int **)(this + 0xf0) + 0x90))(*(undefined4 *)(this + 0xf0),0);
  (**(code **)(**(int **)(this + 0x10c) + 0x90))(*(undefined4 *)(this + 0x10c),0);
  (**(code **)(**(int **)(this + 0xe8) + 0x90))(*(undefined4 *)(this + 0xe8),1);
  (**(code **)(**(int **)(this + 0xec) + 0x90))(*(undefined4 *)(this + 0xec),0);
  (**(code **)(**(int **)(this + 0xf4) + 0x90))(*(undefined4 *)(this + 0xf4),1);
  (**(code **)(**(int **)(this + 0xf8) + 0x90))(*(undefined4 *)(this + 0xf8),0);
  (**(code **)(**(int **)(this + 0x100) + 0x90))(*(undefined4 *)(this + 0x100),1);
  (**(code **)(**(int **)(this + 0x104) + 0x90))(*(undefined4 *)(this + 0x104),1);
  pcVar6 = *(code **)(**(int **)(this + 0x108) + 0x1bc);
  uVar5 = *(undefined4 *)(this + 0x108);
  uVar1 = FUN_0037c400(0xff,0xff,0xff);
  local_20 = SUB41(uVar1,0);
  local_1f = (undefined1)((uint)uVar1 >> 8);
  local_1e = (undefined1)((uint)uVar1 >> 0x10);
  (*pcVar6)(uVar5,&local_20);
  uVar8 = (**(code **)(**(int **)(this + 0xf4) + 0x1f8))(*(undefined4 *)(this + 0xf4),&DAT_007dda04)
  ;
  pcVar6 = *(code **)(**(int **)(this + 0xe8) + 0x4c);
  uVar1 = *(undefined4 *)(this + 0xe8);
  cocos2d::CCPoint::CCPoint(aCStack_28,(float)uVar8,(float)((ulonglong)uVar8 >> 0x20));
  FUN_0037c45c(&local_20,this + 0x118,aCStack_28);
  (*pcVar6)(uVar1,&local_20);
  pcVar6 = *(code **)(**(int **)(this + 0xf4) + 0x4c);
  uVar5 = *(undefined4 *)(this + 0xf4);
  uVar1 = (**(code **)(**(int **)(this + 0xe8) + 0x50))(*(undefined4 *)(this + 0xe8));
  uVar8 = (*pcVar6)(uVar5,uVar1);
  pcVar6 = *(code **)(**(int **)(this + 0xf4) + 0x7c);
  uVar1 = *(undefined4 *)(this + 0xf4);
  cocos2d::CCPoint::CCPoint(&local_20,(float)uVar8,(float)((ulonglong)uVar8 >> 0x20));
  (*pcVar6)(uVar1,&local_20);
  pSVar2 = (ScoreKeeper *)ScoreKeeper::sharedScoreKeeper();
  uVar1 = ScoreKeeper::getScore(pSVar2);
  pSVar2 = (ScoreKeeper *)ScoreKeeper::sharedScoreKeeper();
  (**(code **)(*hostSoldier + 0x1c0))(&local_20,hostSoldier);
  uVar5 = ScoreKeeper::getKills(pSVar2,&local_20);
  FUN_007c5914(&local_20);
  this_00 = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
  uVar3 = cocos2d::CCUserDefault::getIntegerForKey(this_00,"BEST",0);
  pcVar6 = *(code **)(**(int **)(this + 0x100) + 0x1f8);
  uVar7 = *(undefined4 *)(this + 0x100);
  pCVar4 = (CCString *)cocos2d::CCString::createWithFormat("SCORE: %d",uVar1);
  uVar1 = cocos2d::CCString::getCString(pCVar4);
  (*pcVar6)(uVar7,uVar1);
  pcVar6 = *(code **)(**(int **)(this + 0x104) + 0x1f8);
  uVar7 = *(undefined4 *)(this + 0x104);
  pCVar4 = (CCString *)cocos2d::CCString::createWithFormat("KILLS: %d",uVar5);
  uVar1 = cocos2d::CCString::getCString(pCVar4);
  (*pcVar6)(uVar7,uVar1);
  pcVar6 = *(code **)(**(int **)(this + 0x108) + 0x1f8);
  uVar5 = *(undefined4 *)(this + 0x108);
  pCVar4 = (CCString *)cocos2d::CCString::createWithFormat("BEST: %d",uVar3);
  uVar1 = cocos2d::CCString::getCString(pCVar4);
  (*pcVar6)(uVar5,uVar1);
  uVar8 = (**(code **)(**(int **)(this + 0xfc) + 0x1f8))(*(undefined4 *)(this + 0xfc),"PAUSED");
  pcVar6 = *(code **)(**(int **)(this + 0xfc) + 0x7c);
  uVar1 = *(undefined4 *)(this + 0xfc);
  cocos2d::CCPoint::CCPoint(&local_20,(float)uVar8,(float)((ulonglong)uVar8 >> 0x20));
  uVar8 = (*pcVar6)(uVar1,&local_20);
  pcVar6 = *(code **)(**(int **)(this + 0xfc) + 0x4c);
  uVar1 = *(undefined4 *)(this + 0xfc);
  cocos2d::CCPoint::CCPoint(aCStack_28,(float)uVar8,(float)((ulonglong)uVar8 >> 0x20));
  FUN_0037c45c(&local_20,this + 0x118,aCStack_28);
  (*pcVar6)(uVar1,&local_20);
  Sound::playSound(sndEng,4);
  showScreen(this,true);
  this_01 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::postNotification(this_01,"PauseGame",(CCObject *)0x0);
  return;
}

// ---- MenuScreen::resumeSurvival  @ 0x37eb7c
/* MenuScreen::resumeSurvival() */

void __thiscall MenuScreen::resumeSurvival(MenuScreen *this)

{
  CCNotificationCenter *this_00;
  
  Sound::playSound(sndEng,4);
  showScreen(this,false);
  this_00 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::postNotification(this_00,"ResumeGame",(CCObject *)0x0);
  return;
}

// ---- MenuScreen::endRound  @ 0x37ebc4
/* MenuScreen::endRound() */

void __thiscall MenuScreen::endRound(MenuScreen *this)

{
  undefined4 uVar1;
  ScoreKeeper *pSVar2;
  CCUserDefault *this_00;
  undefined4 uVar3;
  CCString *pCVar4;
  undefined4 uVar5;
  code *pcVar6;
  undefined4 uVar7;
  undefined8 uVar8;
  CCPoint aCStack_20 [8];
  CCPoint local_18;
  undefined1 local_17;
  undefined1 local_16;
  
  (**(code **)(**(int **)(this + 0xf0) + 0x90))(*(undefined4 *)(this + 0xf0),0);
  (**(code **)(**(int **)(this + 0x10c) + 0x90))(*(undefined4 *)(this + 0x10c),0);
  (**(code **)(**(int **)(this + 0xe8) + 0x90))(*(undefined4 *)(this + 0xe8),0);
  (**(code **)(**(int **)(this + 0xec) + 0x90))(*(undefined4 *)(this + 0xec),0);
  (**(code **)(**(int **)(this + 0xf4) + 0x90))(*(undefined4 *)(this + 0xf4),0);
  (**(code **)(**(int **)(this + 0xf8) + 0x90))(*(undefined4 *)(this + 0xf8),0);
  (**(code **)(**(int **)(this + 0x100) + 0x90))(*(undefined4 *)(this + 0x100),1);
  (**(code **)(**(int **)(this + 0x104) + 0x90))(*(undefined4 *)(this + 0x104),1);
  (**(code **)(**(int **)(this + 0x108) + 0x90))(*(undefined4 *)(this + 0x108),1);
  pcVar6 = *(code **)(**(int **)(this + 0x108) + 0x1bc);
  uVar5 = *(undefined4 *)(this + 0x108);
  uVar1 = FUN_0037c400(0xff,0xff,0xff);
  local_18 = SUB41(uVar1,0);
  local_17 = (undefined1)((uint)uVar1 >> 8);
  local_16 = (undefined1)((uint)uVar1 >> 0x10);
  (*pcVar6)(uVar5,&local_18);
  pSVar2 = (ScoreKeeper *)ScoreKeeper::sharedScoreKeeper();
  uVar1 = ScoreKeeper::getScore(pSVar2);
  pSVar2 = (ScoreKeeper *)ScoreKeeper::sharedScoreKeeper();
  (**(code **)(*hostSoldier + 0x1c0))(&local_18,hostSoldier);
  uVar5 = ScoreKeeper::getKills(pSVar2,&local_18);
  FUN_007c5914(&local_18);
  this_00 = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
  uVar3 = cocos2d::CCUserDefault::getIntegerForKey(this_00,"BEST",0);
  pcVar6 = *(code **)(**(int **)(this + 0x100) + 0x1f8);
  uVar7 = *(undefined4 *)(this + 0x100);
  pCVar4 = (CCString *)cocos2d::CCString::createWithFormat("SCORE: %d",uVar1);
  uVar1 = cocos2d::CCString::getCString(pCVar4);
  (*pcVar6)(uVar7,uVar1);
  pcVar6 = *(code **)(**(int **)(this + 0x104) + 0x1f8);
  uVar7 = *(undefined4 *)(this + 0x104);
  pCVar4 = (CCString *)cocos2d::CCString::createWithFormat("KILLS: %d",uVar5);
  uVar1 = cocos2d::CCString::getCString(pCVar4);
  (*pcVar6)(uVar7,uVar1);
  pcVar6 = *(code **)(**(int **)(this + 0x108) + 0x1f8);
  uVar5 = *(undefined4 *)(this + 0x108);
  pCVar4 = (CCString *)cocos2d::CCString::createWithFormat("BEST: %d",uVar3);
  uVar1 = cocos2d::CCString::getCString(pCVar4);
  (*pcVar6)(uVar5,uVar1);
  uVar8 = (**(code **)(**(int **)(this + 0xfc) + 0x1f8))(*(undefined4 *)(this + 0xfc),"SURVIVAL");
  pcVar6 = *(code **)(**(int **)(this + 0xfc) + 0x4c);
  uVar1 = *(undefined4 *)(this + 0xfc);
  cocos2d::CCPoint::CCPoint(aCStack_20,(float)uVar8,(float)((ulonglong)uVar8 >> 0x20));
  FUN_0037c45c(&local_18,this + 0x118,aCStack_20);
  uVar8 = (*pcVar6)(uVar1,&local_18);
  pcVar6 = *(code **)(**(int **)(this + 0xfc) + 0x7c);
  uVar1 = *(undefined4 *)(this + 0xfc);
  cocos2d::CCPoint::CCPoint(&local_18,(float)uVar8,(float)((ulonglong)uVar8 >> 0x20));
  (*pcVar6)(uVar1,&local_18);
  return;
}

// ---- MenuScreen::endCoopRound  @ 0x37ee94
/* MenuScreen::endCoopRound() */

void __thiscall MenuScreen::endCoopRound(MenuScreen *this)

{
  undefined4 uVar1;
  ScoreKeeper *pSVar2;
  CCUserDefault *this_00;
  undefined4 uVar3;
  CCString *pCVar4;
  undefined4 uVar5;
  code *pcVar6;
  undefined4 uVar7;
  undefined8 uVar8;
  CCPoint aCStack_20 [8];
  CCPoint local_18;
  undefined1 local_17;
  undefined1 local_16;
  
  (**(code **)(**(int **)(this + 0xf0) + 0x90))(*(undefined4 *)(this + 0xf0),0);
  (**(code **)(**(int **)(this + 0x10c) + 0x90))(*(undefined4 *)(this + 0x10c),0);
  (**(code **)(**(int **)(this + 0xe8) + 0x90))(*(undefined4 *)(this + 0xe8),0);
  (**(code **)(**(int **)(this + 0xec) + 0x90))(*(undefined4 *)(this + 0xec),0);
  (**(code **)(**(int **)(this + 0xf4) + 0x90))(*(undefined4 *)(this + 0xf4),0);
  (**(code **)(**(int **)(this + 0xf8) + 0x90))(*(undefined4 *)(this + 0xf8),0);
  (**(code **)(**(int **)(this + 0x100) + 0x90))(*(undefined4 *)(this + 0x100),1);
  (**(code **)(**(int **)(this + 0x104) + 0x90))(*(undefined4 *)(this + 0x104),1);
  (**(code **)(**(int **)(this + 0x108) + 0x90))(*(undefined4 *)(this + 0x108),1);
  pcVar6 = *(code **)(**(int **)(this + 0x108) + 0x1bc);
  uVar5 = *(undefined4 *)(this + 0x108);
  uVar1 = FUN_0037c400(0xff,0xff,0xff);
  local_18 = SUB41(uVar1,0);
  local_17 = (undefined1)((uint)uVar1 >> 8);
  local_16 = (undefined1)((uint)uVar1 >> 0x10);
  (*pcVar6)(uVar5,&local_18);
  pSVar2 = (ScoreKeeper *)ScoreKeeper::sharedScoreKeeper();
  uVar1 = ScoreKeeper::getScore(pSVar2);
  pSVar2 = (ScoreKeeper *)ScoreKeeper::sharedScoreKeeper();
  (**(code **)(*hostSoldier + 0x1c0))(&local_18,hostSoldier);
  uVar5 = ScoreKeeper::getKills(pSVar2,&local_18);
  FUN_007c5914(&local_18);
  this_00 = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
  uVar3 = cocos2d::CCUserDefault::getIntegerForKey(this_00,"BEST",0);
  pcVar6 = *(code **)(**(int **)(this + 0x100) + 0x1f8);
  uVar7 = *(undefined4 *)(this + 0x100);
  pCVar4 = (CCString *)cocos2d::CCString::createWithFormat("SCORE: %d",uVar1);
  uVar1 = cocos2d::CCString::getCString(pCVar4);
  (*pcVar6)(uVar7,uVar1);
  pcVar6 = *(code **)(**(int **)(this + 0x104) + 0x1f8);
  uVar7 = *(undefined4 *)(this + 0x104);
  pCVar4 = (CCString *)cocos2d::CCString::createWithFormat("KILLS: %d",uVar5);
  uVar1 = cocos2d::CCString::getCString(pCVar4);
  (*pcVar6)(uVar7,uVar1);
  pcVar6 = *(code **)(**(int **)(this + 0x108) + 0x1f8);
  uVar5 = *(undefined4 *)(this + 0x108);
  pCVar4 = (CCString *)cocos2d::CCString::createWithFormat("BEST: %d",uVar3);
  uVar1 = cocos2d::CCString::getCString(pCVar4);
  (*pcVar6)(uVar5,uVar1);
  uVar8 = (**(code **)(**(int **)(this + 0xfc) + 0x1f8))
                    (*(undefined4 *)(this + 0xfc),"COOP SURVIVAL");
  pcVar6 = *(code **)(**(int **)(this + 0xfc) + 0x4c);
  uVar1 = *(undefined4 *)(this + 0xfc);
  cocos2d::CCPoint::CCPoint(aCStack_20,(float)uVar8,(float)((ulonglong)uVar8 >> 0x20));
  FUN_0037c45c(&local_18,this + 0x118,aCStack_20);
  uVar8 = (*pcVar6)(uVar1,&local_18);
  pcVar6 = *(code **)(**(int **)(this + 0xfc) + 0x7c);
  uVar1 = *(undefined4 *)(this + 0xfc);
  cocos2d::CCPoint::CCPoint(&local_18,(float)uVar8,(float)((ulonglong)uVar8 >> 0x20));
  (*pcVar6)(uVar1,&local_18);
  return;
}

// ---- MenuScreen::endCoopSurvival  @ 0x37f164
/* MenuScreen::endCoopSurvival() */

void __thiscall MenuScreen::endCoopSurvival(MenuScreen *this)

{
  ScoreKeeper *pSVar1;
  int iVar2;
  CCUserDefault *pCVar3;
  int iVar4;
  undefined4 uVar5;
  CCString *pCVar6;
  LeaderBoardBridge *pLVar7;
  int iVar8;
  undefined4 uVar9;
  undefined4 uVar10;
  code *pcVar11;
  undefined8 uVar12;
  CCPoint aCStack_28 [8];
  CCPoint local_20;
  undefined1 local_1f;
  undefined1 local_1e;
  
  (**(code **)(**(int **)(this + 0xf0) + 0x90))(*(undefined4 *)(this + 0xf0),0);
  (**(code **)(**(int **)(this + 0x10c) + 0x90))(*(undefined4 *)(this + 0x10c),0);
  (**(code **)(**(int **)(this + 0xe8) + 0x90))(*(undefined4 *)(this + 0xe8),1);
  (**(code **)(**(int **)(this + 0xec) + 0x90))(*(undefined4 *)(this + 0xec),0);
  (**(code **)(**(int **)(this + 0xf4) + 0x90))(*(undefined4 *)(this + 0xf4),1);
  (**(code **)(**(int **)(this + 0xf8) + 0x90))(*(undefined4 *)(this + 0xf8),0);
  (**(code **)(**(int **)(this + 0x100) + 0x90))(*(undefined4 *)(this + 0x100),1);
  (**(code **)(**(int **)(this + 0x104) + 0x90))(*(undefined4 *)(this + 0x104),1);
  (**(code **)(**(int **)(this + 0x108) + 0x90))(*(undefined4 *)(this + 0x108),1);
  (**(code **)(**(int **)(this + 0xf8) + 0x1f8))(*(undefined4 *)(this + 0xf8),"RETRY");
  (**(code **)(**(int **)(this + 0xf4) + 0x1f8))(*(undefined4 *)(this + 0xf4),&DAT_007dd9a4);
  uVar12 = (**(code **)(**(int **)(this + 0xfc) + 0x1f8))(*(undefined4 *)(this + 0xfc),"GAME OVER");
  pcVar11 = *(code **)(**(int **)(this + 0xfc) + 0x4c);
  uVar9 = *(undefined4 *)(this + 0xfc);
  cocos2d::CCPoint::CCPoint(aCStack_28,(float)uVar12,(float)((ulonglong)uVar12 >> 0x20));
  FUN_0037c45c(&local_20,this + 0x118,aCStack_28);
  uVar12 = (*pcVar11)(uVar9,&local_20);
  pcVar11 = *(code **)(**(int **)(this + 0xfc) + 0x7c);
  uVar9 = *(undefined4 *)(this + 0xfc);
  cocos2d::CCPoint::CCPoint(&local_20,(float)uVar12,(float)((ulonglong)uVar12 >> 0x20));
  uVar12 = (*pcVar11)(uVar9,&local_20);
  pcVar11 = *(code **)(**(int **)(this + 0xe8) + 0x4c);
  uVar9 = *(undefined4 *)(this + 0xe8);
  cocos2d::CCPoint::CCPoint(aCStack_28,(float)uVar12,(float)((ulonglong)uVar12 >> 0x20));
  FUN_0037c45c(&local_20,this + 0x118,aCStack_28);
  (*pcVar11)(uVar9,&local_20);
  pSVar1 = (ScoreKeeper *)ScoreKeeper::sharedScoreKeeper();
  iVar2 = ScoreKeeper::getScore(pSVar1);
  pSVar1 = (ScoreKeeper *)ScoreKeeper::sharedScoreKeeper();
  (**(code **)(*hostSoldier + 0x1c0))(&local_20,hostSoldier);
  uVar9 = ScoreKeeper::getKills(pSVar1,&local_20);
  FUN_007c5914(&local_20);
  pCVar3 = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
  iVar4 = cocos2d::CCUserDefault::getIntegerForKey(pCVar3,"BESTCOOP",0);
  if (iVar4 < iVar2) {
    pCVar3 = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
    cocos2d::CCUserDefault::setIntegerForKey(pCVar3,"BESTCOOP",iVar2);
    pcVar11 = *(code **)(**(int **)(this + 0x108) + 0x1bc);
    uVar10 = *(undefined4 *)(this + 0x108);
    uVar5 = FUN_0037c400(0xff,0,0);
    local_20 = SUB41(uVar5,0);
    local_1f = (undefined1)((uint)uVar5 >> 8);
    local_1e = (undefined1)((uint)uVar5 >> 0x10);
    (*pcVar11)(uVar10,&local_20);
    pcVar11 = *(code **)(**(int **)(this + 0x108) + 0x1f8);
    uVar10 = *(undefined4 *)(this + 0x108);
    pCVar6 = (CCString *)cocos2d::CCString::createWithFormat("NEW BEST: %d",iVar2);
    uVar5 = cocos2d::CCString::getCString(pCVar6);
    (*pcVar11)(uVar10,uVar5);
    Sound::playSound(sndEng,1);
    pLVar7 = (LeaderBoardBridge *)LeaderBoardBridge::sharedLeaderBoardBridge();
    iVar4 = LeaderBoardBridge::getScoreData(pLVar7,5);
    pSVar1 = (ScoreKeeper *)ScoreKeeper::sharedScoreKeeper();
    iVar8 = ScoreKeeper::getScore(pSVar1);
    if (iVar4 < iVar8) {
      uVar5 = LeaderBoardBridge::sharedLeaderBoardBridge();
      pSVar1 = (ScoreKeeper *)ScoreKeeper::sharedScoreKeeper();
      iVar4 = ScoreKeeper::getScore(pSVar1);
      LeaderBoardBridge::setLocalScore(uVar5,5,iVar4,iVar4 >> 0x1f);
      pLVar7 = (LeaderBoardBridge *)LeaderBoardBridge::sharedLeaderBoardBridge();
      LeaderBoardBridge::sendServerScores(pLVar7);
    }
  }
  else {
    pcVar11 = *(code **)(**(int **)(this + 0x108) + 0x1bc);
    uVar10 = *(undefined4 *)(this + 0x108);
    uVar5 = FUN_0037c400(0xff,0xff,0xff);
    local_20 = SUB41(uVar5,0);
    local_1f = (undefined1)((uint)uVar5 >> 8);
    local_1e = (undefined1)((uint)uVar5 >> 0x10);
    (*pcVar11)(uVar10,&local_20);
    pcVar11 = *(code **)(**(int **)(this + 0x108) + 0x1f8);
    uVar10 = *(undefined4 *)(this + 0x108);
    pCVar6 = (CCString *)cocos2d::CCString::createWithFormat("BEST: %d",iVar4);
    uVar5 = cocos2d::CCString::getCString(pCVar6);
    (*pcVar11)(uVar10,uVar5);
  }
  pcVar11 = *(code **)(**(int **)(this + 0x100) + 0x1f8);
  uVar10 = *(undefined4 *)(this + 0x100);
  pCVar6 = (CCString *)cocos2d::CCString::createWithFormat("SCORE: %d",iVar2);
  uVar5 = cocos2d::CCString::getCString(pCVar6);
  (*pcVar11)(uVar10,uVar5);
  pcVar11 = *(code **)(**(int **)(this + 0x104) + 0x1f8);
  uVar5 = *(undefined4 *)(this + 0x104);
  pCVar6 = (CCString *)cocos2d::CCString::createWithFormat("KILLS: %d",uVar9);
  uVar9 = cocos2d::CCString::getCString(pCVar6);
  (*pcVar11)(uVar5,uVar9);
  pcVar11 = *(code **)(**(int **)(this + 0xf8) + 0x4c);
  uVar5 = *(undefined4 *)(this + 0xf8);
  uVar9 = (**(code **)(**(int **)(this + 0xec) + 0x50))(*(undefined4 *)(this + 0xec));
  uVar12 = (*pcVar11)(uVar5,uVar9);
  pcVar11 = *(code **)(**(int **)(this + 0xf8) + 0x7c);
  uVar9 = *(undefined4 *)(this + 0xf8);
  cocos2d::CCPoint::CCPoint(&local_20,(float)uVar12,(float)((ulonglong)uVar12 >> 0x20));
  (*pcVar11)(uVar9,&local_20);
  pcVar11 = *(code **)(**(int **)(this + 0xf4) + 0x4c);
  uVar5 = *(undefined4 *)(this + 0xf4);
  uVar9 = (**(code **)(**(int **)(this + 0xe8) + 0x50))(*(undefined4 *)(this + 0xe8));
  uVar12 = (*pcVar11)(uVar5,uVar9);
  pcVar11 = *(code **)(**(int **)(this + 0xf4) + 0x7c);
  uVar9 = *(undefined4 *)(this + 0xf4);
  cocos2d::CCPoint::CCPoint(&local_20,(float)uVar12,(float)((ulonglong)uVar12 >> 0x20));
  (*pcVar11)(uVar9,&local_20);
  showScreen(this,true);
  return;
}

// ---- MenuScreen::endSurvival  @ 0x37f684
/* MenuScreen::endSurvival() */

void __thiscall MenuScreen::endSurvival(MenuScreen *this)

{
  ScoreKeeper *pSVar1;
  int iVar2;
  CCUserDefault *pCVar3;
  int iVar4;
  undefined4 uVar5;
  CCString *pCVar6;
  LeaderBoardBridge *pLVar7;
  int iVar8;
  undefined4 uVar9;
  undefined4 uVar10;
  code *pcVar11;
  undefined8 uVar12;
  CCPoint aCStack_28 [8];
  CCPoint local_20;
  undefined1 local_1f;
  undefined1 local_1e;
  
  (**(code **)(**(int **)(this + 0xf0) + 0x90))(*(undefined4 *)(this + 0xf0),0);
  (**(code **)(**(int **)(this + 0x10c) + 0x90))(*(undefined4 *)(this + 0x10c),0);
  (**(code **)(**(int **)(this + 0xe8) + 0x90))(*(undefined4 *)(this + 0xe8),1);
  (**(code **)(**(int **)(this + 0xec) + 0x90))(*(undefined4 *)(this + 0xec),1);
  (**(code **)(**(int **)(this + 0xf4) + 0x90))(*(undefined4 *)(this + 0xf4),1);
  (**(code **)(**(int **)(this + 0xf8) + 0x90))(*(undefined4 *)(this + 0xf8),1);
  (**(code **)(**(int **)(this + 0x100) + 0x90))(*(undefined4 *)(this + 0x100),1);
  (**(code **)(**(int **)(this + 0x104) + 0x90))(*(undefined4 *)(this + 0x104),1);
  (**(code **)(**(int **)(this + 0x108) + 0x90))(*(undefined4 *)(this + 0x108),1);
  (**(code **)(**(int **)(this + 0xf8) + 0x1f8))(*(undefined4 *)(this + 0xf8),"RETRY");
  (**(code **)(**(int **)(this + 0xf4) + 0x1f8))(*(undefined4 *)(this + 0xf4),&DAT_007dd9a4);
  uVar12 = (**(code **)(**(int **)(this + 0xfc) + 0x1f8))(*(undefined4 *)(this + 0xfc),"GAME OVER");
  pcVar11 = *(code **)(**(int **)(this + 0xfc) + 0x4c);
  uVar9 = *(undefined4 *)(this + 0xfc);
  cocos2d::CCPoint::CCPoint(aCStack_28,(float)uVar12,(float)((ulonglong)uVar12 >> 0x20));
  FUN_0037c45c(&local_20,this + 0x118,aCStack_28);
  uVar12 = (*pcVar11)(uVar9,&local_20);
  pcVar11 = *(code **)(**(int **)(this + 0xfc) + 0x7c);
  uVar9 = *(undefined4 *)(this + 0xfc);
  cocos2d::CCPoint::CCPoint(&local_20,(float)uVar12,(float)((ulonglong)uVar12 >> 0x20));
  uVar12 = (*pcVar11)(uVar9,&local_20);
  pcVar11 = *(code **)(**(int **)(this + 0xec) + 0x4c);
  uVar9 = *(undefined4 *)(this + 0xec);
  cocos2d::CCPoint::CCPoint(aCStack_28,(float)uVar12,(float)((ulonglong)uVar12 >> 0x20));
  FUN_0037c45c(&local_20,this + 0x118,aCStack_28);
  uVar12 = (*pcVar11)(uVar9,&local_20);
  pcVar11 = *(code **)(**(int **)(this + 0xe8) + 0x4c);
  uVar9 = *(undefined4 *)(this + 0xe8);
  cocos2d::CCPoint::CCPoint(aCStack_28,(float)uVar12,(float)((ulonglong)uVar12 >> 0x20));
  FUN_0037c45c(&local_20,this + 0x118,aCStack_28);
  (*pcVar11)(uVar9,&local_20);
  pSVar1 = (ScoreKeeper *)ScoreKeeper::sharedScoreKeeper();
  iVar2 = ScoreKeeper::getScore(pSVar1);
  pSVar1 = (ScoreKeeper *)ScoreKeeper::sharedScoreKeeper();
  (**(code **)(*hostSoldier + 0x1c0))(&local_20,hostSoldier);
  uVar9 = ScoreKeeper::getKills(pSVar1,&local_20);
  FUN_007c5914(&local_20);
  pCVar3 = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
  iVar4 = cocos2d::CCUserDefault::getIntegerForKey(pCVar3,"BEST",0);
  if (iVar4 < iVar2) {
    pCVar3 = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
    cocos2d::CCUserDefault::setIntegerForKey(pCVar3,"BEST",iVar2);
    pcVar11 = *(code **)(**(int **)(this + 0x108) + 0x1bc);
    uVar10 = *(undefined4 *)(this + 0x108);
    uVar5 = FUN_0037c400(0xff,0,0);
    local_20 = SUB41(uVar5,0);
    local_1f = (undefined1)((uint)uVar5 >> 8);
    local_1e = (undefined1)((uint)uVar5 >> 0x10);
    (*pcVar11)(uVar10,&local_20);
    pcVar11 = *(code **)(**(int **)(this + 0x108) + 0x1f8);
    uVar10 = *(undefined4 *)(this + 0x108);
    pCVar6 = (CCString *)cocos2d::CCString::createWithFormat("NEW BEST: %d",iVar2);
    uVar5 = cocos2d::CCString::getCString(pCVar6);
    (*pcVar11)(uVar10,uVar5);
    Sound::playSound(sndEng,1);
    pLVar7 = (LeaderBoardBridge *)LeaderBoardBridge::sharedLeaderBoardBridge();
    iVar4 = LeaderBoardBridge::getScoreData(pLVar7,4);
    pSVar1 = (ScoreKeeper *)ScoreKeeper::sharedScoreKeeper();
    iVar8 = ScoreKeeper::getScore(pSVar1);
    if (iVar4 < iVar8) {
      uVar5 = LeaderBoardBridge::sharedLeaderBoardBridge();
      pSVar1 = (ScoreKeeper *)ScoreKeeper::sharedScoreKeeper();
      iVar4 = ScoreKeeper::getScore(pSVar1);
      LeaderBoardBridge::setLocalScore(uVar5,4,iVar4,iVar4 >> 0x1f);
      pLVar7 = (LeaderBoardBridge *)LeaderBoardBridge::sharedLeaderBoardBridge();
      LeaderBoardBridge::sendServerScores(pLVar7);
    }
  }
  else {
    pcVar11 = *(code **)(**(int **)(this + 0x108) + 0x1bc);
    uVar10 = *(undefined4 *)(this + 0x108);
    uVar5 = FUN_0037c400(0xff,0xff,0xff);
    local_20 = SUB41(uVar5,0);
    local_1f = (undefined1)((uint)uVar5 >> 8);
    local_1e = (undefined1)((uint)uVar5 >> 0x10);
    (*pcVar11)(uVar10,&local_20);
    pcVar11 = *(code **)(**(int **)(this + 0x108) + 0x1f8);
    uVar10 = *(undefined4 *)(this + 0x108);
    pCVar6 = (CCString *)cocos2d::CCString::createWithFormat("BEST: %d",iVar4);
    uVar5 = cocos2d::CCString::getCString(pCVar6);
    (*pcVar11)(uVar10,uVar5);
  }
  pcVar11 = *(code **)(**(int **)(this + 0x100) + 0x1f8);
  uVar10 = *(undefined4 *)(this + 0x100);
  pCVar6 = (CCString *)cocos2d::CCString::createWithFormat("SCORE: %d",iVar2);
  uVar5 = cocos2d::CCString::getCString(pCVar6);
  (*pcVar11)(uVar10,uVar5);
  pcVar11 = *(code **)(**(int **)(this + 0x104) + 0x1f8);
  uVar5 = *(undefined4 *)(this + 0x104);
  pCVar6 = (CCString *)cocos2d::CCString::createWithFormat("KILLS: %d",uVar9);
  uVar9 = cocos2d::CCString::getCString(pCVar6);
  (*pcVar11)(uVar5,uVar9);
  pcVar11 = *(code **)(**(int **)(this + 0xf8) + 0x4c);
  uVar5 = *(undefined4 *)(this + 0xf8);
  uVar9 = (**(code **)(**(int **)(this + 0xec) + 0x50))(*(undefined4 *)(this + 0xec));
  uVar12 = (*pcVar11)(uVar5,uVar9);
  pcVar11 = *(code **)(**(int **)(this + 0xf8) + 0x7c);
  uVar9 = *(undefined4 *)(this + 0xf8);
  cocos2d::CCPoint::CCPoint(&local_20,(float)uVar12,(float)((ulonglong)uVar12 >> 0x20));
  (*pcVar11)(uVar9,&local_20);
  pcVar11 = *(code **)(**(int **)(this + 0xf4) + 0x4c);
  uVar5 = *(undefined4 *)(this + 0xf4);
  uVar9 = (**(code **)(**(int **)(this + 0xe8) + 0x50))(*(undefined4 *)(this + 0xe8));
  uVar12 = (*pcVar11)(uVar5,uVar9);
  pcVar11 = *(code **)(**(int **)(this + 0xf4) + 0x7c);
  uVar9 = *(undefined4 *)(this + 0xf4);
  cocos2d::CCPoint::CCPoint(&local_20,(float)uVar12,(float)((ulonglong)uVar12 >> 0x20));
  (*pcVar11)(uVar9,&local_20);
  showScreen(this,true);
  return;
}

// ---- MenuScreen::setMenuOpacity  @ 0x37fbf4
/* MenuScreen::setMenuOpacity(int) */

void __thiscall MenuScreen::setMenuOpacity(MenuScreen *this,int param_1)

{
  uint uVar1;
  
  (**(code **)(**(int **)(this + 0xf0) + 0x208))(*(undefined4 *)(this + 0xf0),param_1 & 0xff);
  (**(code **)(**(int **)(this + 0x10c) + 0x1a4))(*(undefined4 *)(this + 0x10c),param_1 & 0xff);
  (**(code **)(**(int **)(this + 0xe8) + 0x208))(*(undefined4 *)(this + 0xe8),param_1 & 0xff);
  (**(code **)(**(int **)(this + 0xec) + 0x208))(*(undefined4 *)(this + 0xec),param_1 & 0xff);
  (**(code **)(**(int **)(this + 0xf4) + 0x1a4))(*(undefined4 *)(this + 0xf4),param_1 & 0xff);
  (**(code **)(**(int **)(this + 0xf8) + 0x1a4))(*(undefined4 *)(this + 0xf8),param_1 & 0xff);
  (**(code **)(**(int **)(this + 0x104) + 0x1a4))(*(undefined4 *)(this + 0x104),param_1 & 0xff);
  (**(code **)(**(int **)(this + 0x108) + 0x1a4))(*(undefined4 *)(this + 0x108),param_1 & 0xff);
  (**(code **)(**(int **)(this + 0x100) + 0x1a4))(*(undefined4 *)(this + 0x100),param_1 & 0xff);
  uVar1 = param_1;
  if (0x95 < param_1) {
    uVar1 = 0x96;
  }
  (**(code **)(**(int **)(this + 0xe4) + 0x1a4))(*(undefined4 *)(this + 0xe4),uVar1 & 0xff);
  (**(code **)(**(int **)(this + 0xfc) + 0x1a4))(*(undefined4 *)(this + 0xfc),param_1 & 0xff);
  return;
}

// ---- MenuScreen::showScreen  @ 0x37fd68
/* MenuScreen::showScreen(bool) */

void __thiscall MenuScreen::showScreen(MenuScreen *this,bool param_1)

{
  this[0x124] = (MenuScreen)param_1;
  return;
}
