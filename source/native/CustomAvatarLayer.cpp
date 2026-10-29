// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 13 functions

// ---- CustomAvatarLayer::create  @ 0x31e3dc
/* CustomAvatarLayer::create() */

CustomAvatarLayer * CustomAvatarLayer::create(void)

{
  bool bVar1;
  CustomAvatarLayer *this;
  int iVar2;
  
  this = operator_new(0x120);
  CustomAvatarLayer(this);
  if ((this == (CustomAvatarLayer *)0x0) ||
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
    if (this != (CustomAvatarLayer *)0x0) {
      (**(code **)(*(int *)this + 8))(this);
    }
    this = (CustomAvatarLayer *)0x0;
  }
  return this;
}

// ---- CustomAvatarLayer::CustomAvatarLayer  @ 0x31e44c
/* CustomAvatarLayer::CustomAvatarLayer() */

CustomAvatarLayer * __thiscall CustomAvatarLayer::CustomAvatarLayer(CustomAvatarLayer *this)

{
  cocos2d::CCLayer::CCLayer((CCLayer *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_00910068;
  *(undefined ***)(this + 0xe4) = &PTR__CustomAvatarLayer_1_00910270;
  *(undefined **)(this + 0xe8) = &DAT_009102a0;
  *(undefined **)(this + 0xec) = &DAT_009102ac;
  return this;
}

// ---- CustomAvatarLayer::scene  @ 0x31e4a4
/* CustomAvatarLayer::scene() */

int * CustomAvatarLayer::scene(void)

{
  int *piVar1;
  undefined4 uVar2;
  
  piVar1 = (int *)cocos2d::CCScene::create();
  uVar2 = create();
  (**(code **)(*piVar1 + 200))(piVar1,uVar2);
  return piVar1;
}

// ---- CustomAvatarLayer::init  @ 0x31e4d8
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x0031e71c */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* CustomAvatarLayer::init() */

undefined4 __thiscall CustomAvatarLayer::init(CustomAvatarLayer *this)

{
  int iVar1;
  CCArray *pCVar2;
  char *pcVar3;
  CCNotificationCenter *this_00;
  undefined4 uVar4;
  undefined4 uVar5;
  AvatarCreator *this_01;
  code *pcVar6;
  uint in_fpscr;
  float fVar7;
  float extraout_s1;
  float extraout_s1_00;
  float extraout_s1_01;
  float extraout_s1_02;
  float extraout_s1_03;
  float extraout_s1_04;
  undefined1 auStack_a0 [3];
  char local_9d;
  undefined1 auStack_9c [4];
  undefined4 local_98;
  float local_94;
  float local_90;
  CCArray *local_8c;
  CCNode *local_88;
  CCNode *local_84;
  CCNode *local_80;
  CCNode *local_7c;
  CCMenuItem *local_78;
  CCMenuItem *local_74;
  CCSize local_70 [8];
  CCPoint aCStack_68 [8];
  CCPoint aCStack_60 [8];
  CCPoint aCStack_58 [8];
  code *local_50;
  undefined4 local_4c;
  code *local_48;
  undefined4 local_44;
  undefined1 local_40 [16];
  code *local_30;
  undefined4 local_2c;
  
  local_9d = cocos2d::CCLayer::init((CCLayer *)this);
  if (local_9d == '\x01') {
    this[0x114] = (CustomAvatarLayer)0x0;
    cocos2d::CCSize::CCSize(local_70,(CCSize *)&screenSize);
    local_98 = 0x3f0ccccd;
    local_94 = 24.0;
    local_90 = -8.0;
    uVar4 = AvatarCreator::create();
    *(undefined4 *)(this + 0x108) = uVar4;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x108));
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x108));
    AvatarRenderer::sharedAvatarRenderer();
    local_8c = (CCArray *)AvatarRenderer::getCustomAvatarProperties();
    iVar1 = cocos2d::CCArray::count(local_8c);
    if (iVar1 == 0) {
      this_01 = *(AvatarCreator **)(this + 0x108);
      pCVar2 = (CCArray *)AvatarCreator::getSelections(*(AvatarCreator **)(this + 0x108));
      AvatarCreator::setSelections(this_01,pCVar2);
    }
    else {
      AvatarCreator::setSelections(*(AvatarCreator **)(this + 0x108),local_8c);
    }
    local_88 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_sml.png");
    local_84 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_sml.png");
    local_80 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_sml.png");
    local_7c = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_sml.png");
    local_50 = (code *)0x31ec49;
    local_4c = 0;
    local_78 = (CCMenuItem *)
               cocos2d::CCMenuItemSprite::create
                         (local_88,local_84,(CCObject *)this,(_func_void_CCObject_ptr *)0x31ec49);
    uVar4 = cocos2d::CCMenu::create(local_78,0);
    *(undefined4 *)(this + 0x110) = uVar4;
    fVar7 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x110));
    pcVar6 = *(code **)(**(int **)(this + 0x110) + 0x4c);
    uVar4 = *(undefined4 *)(this + 0x110);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_30,fVar7,extraout_s1);
    (*pcVar6)(uVar4,&local_30);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x110));
    pcVar3 = (char *)FUN_007c5300(&DAT_00950134);
    uVar4 = cocos2d::CCLabelAtlas::create("SAVE",pcVar3,0x20,0x20,0x20);
    *(undefined4 *)(this + 0x10c) = uVar4;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x10c));
    pcVar6 = *(code **)(**(int **)(this + 0x10c) + 0x4c);
    uVar5 = *(undefined4 *)(this + 0x10c);
    (**(code **)(**(int **)(this + 0x110) + 0x50))(*(undefined4 *)(this + 0x110));
    fVar7 = (float)(**(code **)(**(int **)(this + 0x110) + 0x50))(*(undefined4 *)(this + 0x110));
    cocos2d::CCPoint::CCPoint(aCStack_60,fVar7,extraout_s1_00);
    FUN_0031d5ec(0,extraout_s1_00,SUB84((double)local_90,0),local_40);
    uVar4 = (**(code **)(**(int **)(this + 0x10c) + 0x1fc))(*(undefined4 *)(this + 0x10c));
    FUN_0079a3f4(auStack_9c);
    FUN_007c6a60(aCStack_68,uVar4,auStack_9c);
    uVar4 = FUN_007c505c(aCStack_68);
    VectorUnsignedToFloat(uVar4,(byte)(in_fpscr >> 0x16) & 3);
    fVar7 = (float)FUN_0031d5ec(0,extraout_s1_00,SUB84((double)local_90,0),&local_30);
    cocos2d::CCPoint::CCPoint(aCStack_58,fVar7,extraout_s1_01);
    FUN_0031d5cc(&local_48,aCStack_60,aCStack_58);
    (*pcVar6)(uVar5,&local_48);
    FUN_007c5914(aCStack_68);
    FUN_0079a3fc(auStack_9c);
    (**(code **)(**(int **)(this + 0x10c) + 0x40))(*(undefined4 *)(this + 0x10c),local_98);
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x10c),(int)local_94);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x10c));
    local_48 = (code *)0x31ecb1;
    local_44 = 0;
    local_74 = (CCMenuItem *)
               cocos2d::CCMenuItemSprite::create
                         (local_80,local_7c,(CCObject *)this,(_func_void_CCObject_ptr *)0x31ecb1);
    uVar4 = cocos2d::CCMenu::create(local_74,0);
    *(undefined4 *)(this + 0x11c) = uVar4;
    fVar7 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x11c));
    pcVar6 = *(code **)(**(int **)(this + 0x11c) + 0x4c);
    uVar4 = *(undefined4 *)(this + 0x11c);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_30,fVar7,extraout_s1_02);
    (*pcVar6)(uVar4,&local_30);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x11c));
    pcVar3 = (char *)FUN_007c5300(&DAT_00950134);
    uVar4 = cocos2d::CCLabelAtlas::create("BACK",pcVar3,0x20,0x20,0x20);
    *(undefined4 *)(this + 0x118) = uVar4;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x118));
    pcVar6 = *(code **)(**(int **)(this + 0x118) + 0x4c);
    uVar5 = *(undefined4 *)(this + 0x118);
    (**(code **)(**(int **)(this + 0x11c) + 0x50))(*(undefined4 *)(this + 0x11c));
    fVar7 = (float)(**(code **)(**(int **)(this + 0x11c) + 0x50))(*(undefined4 *)(this + 0x11c));
    cocos2d::CCPoint::CCPoint(aCStack_68,fVar7,extraout_s1_03);
    FUN_0031d5ec(0,extraout_s1_03,SUB84((double)local_90,0),local_40);
    uVar4 = (**(code **)(**(int **)(this + 0x118) + 0x1fc))(*(undefined4 *)(this + 0x118));
    FUN_0079a3f4(auStack_a0);
    FUN_007c6a60(auStack_9c,uVar4,auStack_a0);
    uVar4 = FUN_007c505c(auStack_9c);
    VectorUnsignedToFloat(uVar4,(byte)(in_fpscr >> 0x16) & 3);
    fVar7 = (float)FUN_0031d5ec(0,extraout_s1_03,SUB84((double)local_90,0),&local_30);
    cocos2d::CCPoint::CCPoint(aCStack_60,fVar7,extraout_s1_04);
    FUN_0031d5cc(aCStack_58,aCStack_68,aCStack_60);
    (*pcVar6)(uVar5,aCStack_58);
    FUN_007c5914(auStack_9c);
    FUN_0079a3fc(auStack_a0);
    (**(code **)(**(int **)(this + 0x118) + 0x40))(*(undefined4 *)(this + 0x118),local_98);
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x118),(int)local_94);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x118));
    this_00 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    local_30 = (code *)0x31ed15;
    local_2c = 0;
    cocos2d::CCNotificationCenter::addObserver
              (this_00,(CCObject *)this,(_func_void_CCObject_ptr *)0x31ed15,(char *)0x0,
               (CCObject *)"AvatarRequireProPack");
    ApplicationInterface::removeAdBanner();
    uVar4 = 1;
  }
  else {
    uVar4 = 0;
  }
  return uVar4;
}

// ---- CustomAvatarLayer::~CustomAvatarLayer  @ 0x31eb10
/* WARNING: Removing unreachable block (ram,0x0031ebb0) */
/* CustomAvatarLayer::~CustomAvatarLayer() */

CustomAvatarLayer * __thiscall CustomAvatarLayer::~CustomAvatarLayer(CustomAvatarLayer *this)

{
  CCNotificationCenter *this_00;
  
  *(undefined ***)this = &PTR_copyWithZone_1_00910068;
  *(undefined ***)(this + 0xe4) = &PTR__CustomAvatarLayer_1_00910270;
  *(undefined **)(this + 0xe8) = &DAT_009102a0;
  *(undefined **)(this + 0xec) = &DAT_009102ac;
  this_00 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::removeAllObservers(this_00,(CCObject *)this);
  cocos2d::CCNode::removeAllChildren((CCNode *)this);
  cocos2d::CCObject::release(*(CCObject **)(this + 0x108));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x110));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x10c));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x11c));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x118));
  cocos2d::CCLayer::~CCLayer((CCLayer *)this);
  return this;
}

// ---- CustomAvatarLayer::~CustomAvatarLayer  @ 0x31ebc8
/* non-virtual thunk to CustomAvatarLayer::~CustomAvatarLayer() */

void __thiscall CustomAvatarLayer::~CustomAvatarLayer(CustomAvatarLayer *this)

{
  ~CustomAvatarLayer(this + -0xe4);
  return;
}

// ---- CustomAvatarLayer::~CustomAvatarLayer  @ 0x31ebd0
/* CustomAvatarLayer::~CustomAvatarLayer() */

CustomAvatarLayer * __thiscall CustomAvatarLayer::~CustomAvatarLayer(CustomAvatarLayer *this)

{
  ~CustomAvatarLayer(this);
  operator_delete(this);
  return this;
}

// ---- CustomAvatarLayer::~CustomAvatarLayer  @ 0x31ebec
/* non-virtual thunk to CustomAvatarLayer::~CustomAvatarLayer() */

void __thiscall CustomAvatarLayer::~CustomAvatarLayer(CustomAvatarLayer *this)

{
  ~CustomAvatarLayer(this + -0xe4);
  return;
}

// ---- CustomAvatarLayer::saveProperties  @ 0x31ebf4
/* CustomAvatarLayer::saveProperties() */

void __thiscall CustomAvatarLayer::saveProperties(CustomAvatarLayer *this)

{
  CCUserDefault *this_00;
  AvatarRenderer *this_01;
  CCArray *pCVar1;
  
  playerSkin = 0;
  this_00 = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
  cocos2d::CCUserDefault::setIntegerForKey(this_00,"PlayerSkin",0);
  this_01 = (AvatarRenderer *)AvatarRenderer::sharedAvatarRenderer();
  pCVar1 = (CCArray *)AvatarCreator::getSelections(*(AvatarCreator **)(this + 0x108));
  AvatarRenderer::saveCustomAvatarProperties(this_01,pCVar1);
  return;
}

// ---- CustomAvatarLayer::onSave  @ 0x31ec48
/* CustomAvatarLayer::onSave(cocos2d::CCObject*) */

void CustomAvatarLayer::onSave(CCObject *param_1)

{
  CCDirector *this;
  CCScene *pCVar1;
  float fVar2;
  
  if (param_1[0x114] == (CCObject)0x0) {
    param_1[0x114] = (CCObject)0x1;
    saveProperties((CustomAvatarLayer *)param_1);
    Sound::playSound(sndEng,0xd);
    this = (CCDirector *)cocos2d::CCDirector::sharedDirector();
    pCVar1 = DAT_009432b0;
    fVar2 = (float)AvatarLayer::scene();
    pCVar1 = (CCScene *)cocos2d::CCTransitionSlideInL::create(fVar2,pCVar1);
    cocos2d::CCDirector::replaceScene(this,pCVar1);
  }
  return;
}

// ---- CustomAvatarLayer::onCancel  @ 0x31ecb0
/* CustomAvatarLayer::onCancel(cocos2d::CCObject*) */

void CustomAvatarLayer::onCancel(CCObject *param_1)

{
  CCDirector *this;
  CCScene *pCVar1;
  float fVar2;
  
  if (param_1[0x114] == (CCObject)0x0) {
    param_1[0x114] = (CCObject)0x1;
    Sound::playSound(sndEng,0xd);
    this = (CCDirector *)cocos2d::CCDirector::sharedDirector();
    pCVar1 = DAT_009432b0;
    fVar2 = (float)AvatarLayer::scene();
    pCVar1 = (CCScene *)cocos2d::CCTransitionSlideInL::create(fVar2,pCVar1);
    cocos2d::CCDirector::replaceScene(this,pCVar1);
  }
  return;
}

// ---- CustomAvatarLayer::presentProPackAlert  @ 0x31ed14
/* CustomAvatarLayer::presentProPackAlert(cocos2d::CCObject*) */

void CustomAvatarLayer::presentProPackAlert(CCObject *param_1)

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
  
  FUN_0079a3f4(auStack_28);
  FUN_007c6a60(auStack_18,"Pro Pack Required",auStack_28);
  FUN_0079a3f4(auStack_24);
  FUN_007c6a60(auStack_14,"Upgrade now for more body types!",auStack_24);
  FUN_0079a3f4(auStack_30);
  FUN_007c6a60(asStack_20,"NOT NOW",auStack_30);
  pCVar1 = (CCObject *)cocos2d::CCString::create(asStack_20);
  FUN_0079a3f4(auStack_2c);
  FUN_007c6a60(asStack_1c,"VIEW UPGRADE",auStack_2c);
  uVar2 = cocos2d::CCString::create(asStack_1c);
  uVar2 = cocos2d::CCArray::create(pCVar1,uVar2,0);
  AMessageBox::showAlert(0x31ee69,auStack_18,auStack_14,uVar2,0,param_1);
  FUN_007c5914(asStack_1c);
  FUN_0079a3fc(auStack_2c);
  FUN_007c5914(asStack_20);
  FUN_0079a3fc(auStack_30);
  FUN_007c5914(auStack_14);
  FUN_0079a3fc(auStack_24);
  FUN_007c5914(auStack_18);
  FUN_0079a3fc(auStack_28);
  return;
}

// ---- CustomAvatarLayer::messageBoxHandler  @ 0x31ee68
/* CustomAvatarLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*) */

void CustomAvatarLayer::messageBoxHandler(int param_1,CCObject *param_2,CCObject *param_3)

{
  CCDirector *this;
  CCScene *pCVar1;
  float fVar2;
  
  if (param_1 == 1) {
    saveProperties((CustomAvatarLayer *)param_3);
    Sound::playSound(sndEng,0xe);
    this = (CCDirector *)cocos2d::CCDirector::sharedDirector();
    pCVar1 = DAT_009432b0;
    fVar2 = (float)PurchaseLayer::scene();
    pCVar1 = (CCScene *)cocos2d::CCTransitionSlideInL::create(fVar2,pCVar1);
    cocos2d::CCDirector::replaceScene(this,pCVar1);
  }
  return;
}
