// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 19 functions

// ---- AMessageBox::create  @ 0x2eea04
/* AMessageBox::create() */

AMessageBox * AMessageBox::create(void)

{
  bool bVar1;
  AMessageBox *this;
  int iVar2;
  
  this = operator_new(0x124);
  AMessageBox(this);
  if ((this == (AMessageBox *)0x0) || (iVar2 = (**(code **)(*(int *)this + 0x18))(this), iVar2 == 0)
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
    if (this != (AMessageBox *)0x0) {
      (**(code **)(*(int *)this + 8))(this);
    }
    this = (AMessageBox *)0x0;
  }
  return this;
}

// ---- AMessageBox::showAlert  @ 0x2ef7f4
/* AMessageBox::showAlert(void (*)(int, cocos2d::CCObject*, cocos2d::CCObject*), std::string,
   std::string, cocos2d::CCArray*, cocos2d::CCObject*, cocos2d::CCObject*) */

void AMessageBox::showAlert
               (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
               undefined4 param_5,undefined4 param_6)

{
  undefined1 auStack_14 [4];
  undefined1 auStack_10 [4];
  AMessageBox *local_c;
  
  DAT_0094f690 = DAT_0094f690 + 1;
  DAT_0094f694 = DAT_0094f694 + -10;
  local_c = (AMessageBox *)create();
  FUN_007c64e8(auStack_14,param_2);
  FUN_007c64e8(auStack_10,param_3);
  setupMessageBox(local_c,param_1,auStack_14,auStack_10,param_4,param_5,param_6);
  FUN_007c5914(auStack_10);
  FUN_007c5914(auStack_14);
  cocos2d::CCObject::retain((CCObject *)local_c);
  return;
}

// ---- AMessageBox::AMessageBox  @ 0x2ef898
/* AMessageBox::AMessageBox() */

AMessageBox * __thiscall AMessageBox::AMessageBox(AMessageBox *this)

{
  cocos2d::CCLayer::CCLayer((CCLayer *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_0090a318;
  *(undefined ***)(this + 0xe4) = &PTR__AMessageBox_1_0090a520;
  *(undefined **)(this + 0xe8) = &DAT_0090a550;
  *(undefined **)(this + 0xec) = &DAT_0090a55c;
  return this;
}

// ---- AMessageBox::~AMessageBox  @ 0x2ef8f0
/* WARNING: Removing unreachable block (ram,0x002ef978) */
/* AMessageBox::~AMessageBox() */

AMessageBox * __thiscall AMessageBox::~AMessageBox(AMessageBox *this)

{
  CCNotificationCenter *this_00;
  
  *(undefined ***)this = &PTR_copyWithZone_1_0090a318;
  *(undefined ***)(this + 0xe4) = &PTR__AMessageBox_1_0090a520;
  *(undefined **)(this + 0xe8) = &DAT_0090a550;
  *(undefined **)(this + 0xec) = &DAT_0090a55c;
  cocos2d::CCNode::removeAllChildren((CCNode *)this);
  this_00 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::removeAllObservers(this_00,(CCObject *)this);
  cocos2d::CCObject::release(*(CCObject **)(this + 0x110));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x10c));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x108));
  cocos2d::CCLayer::~CCLayer((CCLayer *)this);
  return this;
}

// ---- AMessageBox::~AMessageBox  @ 0x2ef990
/* non-virtual thunk to AMessageBox::~AMessageBox() */

void __thiscall AMessageBox::~AMessageBox(AMessageBox *this)

{
  ~AMessageBox(this + -0xe4);
  return;
}

// ---- AMessageBox::~AMessageBox  @ 0x2ef998
/* AMessageBox::~AMessageBox() */

AMessageBox * __thiscall AMessageBox::~AMessageBox(AMessageBox *this)

{
  ~AMessageBox(this);
  operator_delete(this);
  return this;
}

// ---- AMessageBox::~AMessageBox  @ 0x2ef9b4
/* non-virtual thunk to AMessageBox::~AMessageBox() */

void __thiscall AMessageBox::~AMessageBox(AMessageBox *this)

{
  ~AMessageBox(this + -0xe4);
  return;
}

// ---- AMessageBox::init  @ 0x2ef9bc
/* AMessageBox::init() */

bool __thiscall AMessageBox::init(AMessageBox *this)

{
  char cVar1;
  
  cVar1 = cocos2d::CCLayer::init((CCLayer *)this);
  if (cVar1 == '\x01') {
    *(undefined4 *)(this + 0x110) = 0;
    *(undefined4 *)(this + 0x108) = 0;
    *(undefined4 *)(this + 0x10c) = 0;
    *(undefined4 *)(this + 0x11c) = 0;
    *(undefined4 *)(this + 0x114) = 0;
    *(undefined4 *)(this + 0x118) = 0;
    *(undefined4 *)(this + 0x120) = 0;
  }
  return cVar1 == '\x01';
}

// ---- AMessageBox::setupMessageBox  @ 0x2efa1c
/* AMessageBox::setupMessageBox(void (*)(int, cocos2d::CCObject*, cocos2d::CCObject*), std::string,
   std::string, cocos2d::CCArray*, cocos2d::CCObject*, cocos2d::CCObject*) */

void __thiscall
AMessageBox::setupMessageBox
          (AMessageBox *this,undefined4 param_1,undefined4 param_3,undefined4 param_4,
          CCArray *param_5,int param_6,int param_7)

{
  int *piVar1;
  char *pcVar2;
  undefined4 uVar3;
  CCString *this_00;
  CCSize *pCVar4;
  CCNode *pCVar5;
  uint uVar6;
  _func_void_float *p_Var7;
  code *pcVar8;
  float extraout_s0;
  float extraout_s0_00;
  float extraout_s0_01;
  float extraout_s0_02;
  float extraout_s0_03;
  float extraout_s0_04;
  float extraout_s0_05;
  float extraout_s0_06;
  float extraout_s0_07;
  undefined8 uVar9;
  float extraout_s1;
  float extraout_s1_00;
  float extraout_s1_01;
  float extraout_s1_02;
  float extraout_s1_03;
  uint local_5c;
  undefined4 local_40;
  undefined4 local_3c;
  CCPoint aCStack_38 [8];
  CCSize local_30 [8];
  CCSize local_28 [8];
  code *local_20;
  undefined4 local_1c;
  code *local_18;
  undefined4 local_14;
  
  *(undefined4 *)(this + 0x120) = DAT_0094f694;
  (**(code **)(*(int *)this + 0x1d0))(this,1);
  *(undefined4 *)(this + 0x11c) = param_1;
  *(int *)(this + 0x114) = param_6;
  *(int *)(this + 0x118) = param_7;
  if (param_6 != 0) {
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x114));
  }
  if (param_7 != 0) {
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x118));
  }
  cocos2d::CCDirector::sharedDirector();
  uVar9 = cocos2d::CCDirector::getWinSize();
  cocos2d::CCPoint::CCPoint(aCStack_38,(float)uVar9,(float)((ulonglong)uVar9 >> 0x20));
  piVar1 = (int *)cocos2d::CCSprite::create("dot.png");
  (**(code **)(*piVar1 + 0x30))(piVar1,local_40);
  (**(code **)(*piVar1 + 0x38))(piVar1,local_3c);
  (**(code **)(*piVar1 + 0x1a4))(piVar1,200);
  (**(code **)(*piVar1 + 0x4c))(piVar1,aCStack_38);
  (**(code **)(*(int *)this + 200))(this,piVar1);
  piVar1 = (int *)cocos2d::extension::CCScale9Sprite::create("dialog.png");
  pcVar8 = *(code **)(*piVar1 + 0x88);
  cocos2d::CCSize::CCSize((CCSize *)&local_18,extraout_s0,extraout_s1);
  (*pcVar8)(piVar1,&local_18);
  (**(code **)(*piVar1 + 0x4c))(piVar1,aCStack_38);
  (**(code **)(*(int *)this + 200))(this,piVar1);
  pcVar2 = (char *)FUN_007c5300(param_3);
  uVar3 = cocos2d::CCLabelTTF::create(pcVar2,"Arial-BoldMT",extraout_s0_00);
  *(undefined4 *)(this + 0x108) = uVar3;
  pcVar8 = *(code **)(**(int **)(this + 0x108) + 0x4c);
  uVar3 = *(undefined4 *)(this + 0x108);
  cocos2d::CCPoint::CCPoint((CCPoint *)&local_20,extraout_s0_01,extraout_s1_00);
  FUN_002ee9e4(&local_18,aCStack_38,&local_20);
  (*pcVar8)(uVar3,&local_18);
  cocos2d::CCObject::retain(*(CCObject **)(this + 0x108));
  (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x108));
  uVar3 = FUN_007c5300(param_4);
  cocos2d::CCSize::CCSize((CCSize *)&local_18,extraout_s0_02,extraout_s1_01);
  uVar3 = cocos2d::CCLabelTTF::create(uVar3,"Arial-BoldMT",0x41900000,&local_18,1);
  *(undefined4 *)(this + 0x10c) = uVar3;
  pcVar8 = *(code **)(**(int **)(this + 0x10c) + 0x4c);
  uVar3 = *(undefined4 *)(this + 0x10c);
  cocos2d::CCPoint::CCPoint((CCPoint *)&local_20,extraout_s0_03,extraout_s1_02);
  FUN_002ee9e4(&local_18,aCStack_38,&local_20);
  (*pcVar8)(uVar3,&local_18);
  cocos2d::CCObject::retain(*(CCObject **)(this + 0x10c));
  (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x10c));
  uVar3 = cocos2d::CCMenu::create();
  *(undefined4 *)(this + 0x110) = uVar3;
  cocos2d::CCObject::retain(*(CCObject **)(this + 0x110));
  for (local_5c = 0; uVar6 = cocos2d::CCArray::count(param_5), local_5c < uVar6;
      local_5c = local_5c + 1) {
    this_00 = (CCString *)cocos2d::CCArray::objectAtIndex(param_5,local_5c);
    pcVar2 = (char *)cocos2d::CCString::getCString(this_00);
    piVar1 = (int *)cocos2d::CCLabelTTF::create(pcVar2,"Arial-BoldMT",extraout_s0_04);
    pCVar4 = (CCSize *)(**(code **)(*piVar1 + 0x8c))(piVar1);
    cocos2d::CCSize::CCSize(local_30,pCVar4);
    pCVar5 = (CCNode *)
             cocos2d::extension::CCScale9Sprite::createWithSpriteFrameName("b03_square.png");
    pcVar8 = *(code **)(*(int *)pCVar5 + 0x88);
    cocos2d::CCSize::CCSize((CCSize *)&local_18,extraout_s0_05,extraout_s1_03);
    (*pcVar8)(pCVar5,&local_18);
    pCVar4 = (CCSize *)(**(code **)(*(int *)pCVar5 + 0x8c))(pCVar5);
    uVar9 = cocos2d::CCSize::CCSize(local_28,pCVar4);
    pcVar8 = *(code **)(*piVar1 + 0x4c);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_18,(float)uVar9,(float)((ulonglong)uVar9 >> 0x20));
    (*pcVar8)(piVar1,&local_18);
    (**(code **)(*(int *)pCVar5 + 200))(pCVar5,piVar1);
    local_20 = (code *)0x2f0079;
    local_1c = 0;
    piVar1 = (int *)cocos2d::CCMenuItemLabel::create
                              (pCVar5,(CCObject *)this,(_func_void_CCObject_ptr *)0x2f0079);
    (**(code **)(*piVar1 + 0x11c))(piVar1,local_5c);
    (**(code **)(**(int **)(this + 0x110) + 200))(*(undefined4 *)(this + 0x110),piVar1);
  }
  uVar9 = cocos2d::CCMenu::alignItemsHorizontallyWithPadding(extraout_s0_06);
  pcVar8 = *(code **)(**(int **)(this + 0x110) + 0x4c);
  uVar3 = *(undefined4 *)(this + 0x110);
  cocos2d::CCPoint::CCPoint((CCPoint *)local_28,(float)uVar9,(float)((ulonglong)uVar9 >> 0x20));
  FUN_002ee9e4(&local_18,aCStack_38,local_28);
  (*pcVar8)(uVar3,&local_18);
  (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x110));
  piVar1 = (int *)cocos2d::CCDirector::sharedDirector();
  p_Var7 = (_func_void_float *)(**(code **)(*piVar1 + 0x30))(piVar1);
  local_18 = (code *)0x2efffd;
  local_14 = 0;
  cocos2d::CCScheduler::scheduleSelector(p_Var7,(CCObject *)0x2efffd,extraout_s0_07,false);
  return;
}

// ---- AMessageBox::ccTouchBegan  @ 0x2efedc
/* AMessageBox::ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) */

undefined4 AMessageBox::ccTouchBegan(CCTouch *param_1,CCEvent *param_2)

{
  return 1;
}

// ---- AMessageBox::ccTouchBegan  @ 0x2efeec
/* non-virtual thunk to AMessageBox::ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) */

void __thiscall AMessageBox::ccTouchBegan(AMessageBox *this,CCTouch *param_1,CCEvent *param_2)

{
  ccTouchBegan((CCTouch *)(this + -0xe4),(CCEvent *)param_1);
  return;
}

// ---- AMessageBox::onEnter  @ 0x2efef4
/* AMessageBox::onEnter() */

void __thiscall AMessageBox::onEnter(AMessageBox *this)

{
  int *piVar1;
  CCTouchDispatcher *this_00;
  CCTouchDelegate *pCVar2;
  
  cocos2d::CCLayer::onEnter((CCLayer *)this);
  piVar1 = (int *)cocos2d::CCDirector::sharedDirector();
  this_00 = (CCTouchDispatcher *)(**(code **)(*piVar1 + 0x40))(piVar1);
  if (*(int *)(this + 0x110) == 0) {
    pCVar2 = (CCTouchDelegate *)0x0;
  }
  else {
    pCVar2 = (CCTouchDelegate *)(*(int *)(this + 0x110) + 0xe4);
  }
  cocos2d::CCTouchDispatcher::setPriority(this_00,*(int *)(this + 0x120),pCVar2);
  return;
}

// ---- AMessageBox::onExit  @ 0x2eff40
/* AMessageBox::onExit() */

void __thiscall AMessageBox::onExit(AMessageBox *this)

{
  int *piVar1;
  CCTouchDispatcher *this_00;
  CCAccelerometer *this_01;
  CCKeypadDispatcher *this_02;
  
  piVar1 = (int *)cocos2d::CCDirector::sharedDirector();
  if (this[0xf0] != (AMessageBox)0x0) {
    this_00 = (CCTouchDispatcher *)(**(code **)(*piVar1 + 0x40))(piVar1);
    cocos2d::CCTouchDispatcher::removeDelegate(this_00,(CCTouchDelegate *)(this + 0xe4));
  }
  if (this[0xf1] != (AMessageBox)0x0) {
    this_01 = (CCAccelerometer *)(**(code **)(*piVar1 + 0x50))(piVar1);
    cocos2d::CCAccelerometer::setDelegate(this_01,(CCAccelerometerDelegate *)0x0);
  }
  if (this[0xf2] != (AMessageBox)0x0) {
    this_02 = (CCKeypadDispatcher *)(**(code **)(*piVar1 + 0x48))(piVar1);
    cocos2d::CCKeypadDispatcher::removeDelegate(this_02,(CCKeypadDelegate *)(this + 0xec));
  }
  return;
}

// ---- AMessageBox::cleanup  @ 0x2effbc
/* AMessageBox::cleanup() */

void AMessageBox::cleanup(void)

{
  return;
}

// ---- AMessageBox::registerWithTouchDispatcher  @ 0x2effc4
/* AMessageBox::registerWithTouchDispatcher() */

void __thiscall AMessageBox::registerWithTouchDispatcher(AMessageBox *this)

{
  int *piVar1;
  CCTouchDispatcher *this_00;
  
  piVar1 = (int *)cocos2d::CCDirector::sharedDirector();
  this_00 = (CCTouchDispatcher *)(**(code **)(*piVar1 + 0x40))(piVar1);
  cocos2d::CCTouchDispatcher::addTargetedDelegate
            (this_00,(CCTouchDelegate *)(this + 0xe4),*(int *)(this + 0x120) + 1,true);
  return;
}

// ---- AMessageBox::updateStep  @ 0x2efffc
/* AMessageBox::updateStep(float) */

void AMessageBox::updateStep(float param_1)

{
  AMessageBox *in_r0;
  
  attachToScene(in_r0);
  return;
}

// ---- AMessageBox::attachToScene  @ 0x2f0010
/* AMessageBox::attachToScene() */

void __thiscall AMessageBox::attachToScene(AMessageBox *this)

{
  bool bVar1;
  CCDirector *this_00;
  int *piVar2;
  int *piVar3;
  
  this_00 = (CCDirector *)cocos2d::CCDirector::sharedDirector();
  piVar2 = (int *)cocos2d::CCDirector::getRunningScene(this_00);
  if ((piVar2 == (int *)0x0) ||
     (piVar3 = (int *)(**(code **)(*(int *)this + 0xe4))(this), piVar3 == piVar2)) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (bVar1) {
    (**(code **)(*(int *)this + 0xe8))(this);
    (**(code **)(*piVar2 + 0xcc))(piVar2,this,0x7fffffff);
  }
  return;
}

// ---- AMessageBox::onButtonClicked  @ 0x2f0078
/* AMessageBox::onButtonClicked(cocos2d::CCMenuItem*) */

void __thiscall AMessageBox::onButtonClicked(AMessageBox *this,CCMenuItem *param_1)

{
  undefined4 uVar1;
  int *piVar2;
  CCScheduler *this_00;
  code *pcVar3;
  
  if (*(int *)(this + 0x11c) != 0) {
    pcVar3 = *(code **)(this + 0x11c);
    uVar1 = (**(code **)(*(int *)param_1 + 0x118))(param_1);
    (*pcVar3)(uVar1,*(undefined4 *)(this + 0x114),*(undefined4 *)(this + 0x118));
  }
  if (*(int *)(this + 0x114) != 0) {
    cocos2d::CCObject::release(*(CCObject **)(this + 0x114));
  }
  if (*(int *)(this + 0x118) != 0) {
    cocos2d::CCObject::release(*(CCObject **)(this + 0x118));
  }
  piVar2 = (int *)cocos2d::CCDirector::sharedDirector();
  this_00 = (CCScheduler *)(**(code **)(*piVar2 + 0x30))(piVar2);
  cocos2d::CCScheduler::unscheduleAllForTarget(this_00,(CCObject *)this);
  playSound();
  (**(code **)(*(int *)this + 0xe8))(this);
  cocos2d::CCLayer::onExit((CCLayer *)this);
  cocos2d::CCObject::release((CCObject *)this);
  DAT_0094f690 = DAT_0094f690 - 1 & ~((int)(DAT_0094f690 - 1) >> 0x1f);
  return;
}

// ---- AMessageBox::playSound  @ 0x2f0164
/* AMessageBox::playSound() */

void AMessageBox::playSound(void)

{
  if (sndEng != (Sound *)0x0) {
    Sound::playSound(sndEng,0xd);
  }
  return;
}
