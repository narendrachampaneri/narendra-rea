// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 11 functions

// ---- TOSLayer::create  @ 0x41558c
/* TOSLayer::create() */

TOSLayer * TOSLayer::create(void)

{
  bool bVar1;
  TOSLayer *this;
  int iVar2;
  
  this = operator_new(0x120);
  TOSLayer(this);
  if ((this == (TOSLayer *)0x0) || (iVar2 = (**(code **)(*(int *)this + 0x18))(this), iVar2 == 0)) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (bVar1) {
    cocos2d::CCObject::autorelease((CCObject *)this);
  }
  else {
    if (this != (TOSLayer *)0x0) {
      (**(code **)(*(int *)this + 8))(this);
    }
    this = (TOSLayer *)0x0;
  }
  return this;
}

// ---- TOSLayer::TOSLayer  @ 0x4155fc
/* TOSLayer::TOSLayer() */

TOSLayer * __thiscall TOSLayer::TOSLayer(TOSLayer *this)

{
  cocos2d::CCLayer::CCLayer((CCLayer *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_0091caf8;
  *(undefined ***)(this + 0xe4) = &PTR__TOSLayer_1_0091cd00;
  *(undefined **)(this + 0xe8) = &DAT_0091cd30;
  *(undefined **)(this + 0xec) = &DAT_0091cd3c;
  return this;
}

// ---- TOSLayer::scene  @ 0x415654
/* TOSLayer::scene() */

int * TOSLayer::scene(void)

{
  int *piVar1;
  undefined4 uVar2;
  
  piVar1 = (int *)cocos2d::CCScene::create();
  uVar2 = create();
  (**(code **)(*piVar1 + 200))(piVar1,uVar2);
  return piVar1;
}

// ---- TOSLayer::init  @ 0x415688
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x00415ade */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* TOSLayer::init() */

bool __thiscall TOSLayer::init(TOSLayer *this)

{
  undefined4 uVar1;
  char *pcVar2;
  CCObject *pCVar3;
  undefined4 uVar4;
  code *pcVar5;
  bool bVar6;
  uint in_fpscr;
  float fVar7;
  float extraout_s1;
  float extraout_s1_00;
  float extraout_s1_01;
  float extraout_s1_02;
  float extraout_s1_03;
  float extraout_s1_04;
  float extraout_s1_05;
  undefined1 auStack_9c [3];
  char local_99;
  undefined1 auStack_98 [4];
  CCNode *local_94;
  CCNode *local_90;
  CCMenuItem *local_8c;
  CCMenuItem *local_88;
  undefined4 local_84;
  float local_80;
  float local_7c;
  CCSize local_78 [8];
  CCPoint aCStack_70 [8];
  CCPoint aCStack_68 [8];
  CCPoint aCStack_60 [8];
  string asStack_58 [8];
  code *local_50;
  undefined4 local_4c;
  code *local_48;
  undefined4 local_44;
  undefined1 local_40 [16];
  CCPoint aCStack_30 [20];
  
  local_99 = cocos2d::CCLayer::init((CCLayer *)this);
  bVar6 = local_99 == '\x01';
  if (bVar6) {
    this[0x108] = (TOSLayer)0x0;
    fVar7 = (float)cocos2d::CCSize::CCSize(local_78,(CCSize *)&screenSize);
    cocos2d::CCPoint::CCPoint(aCStack_70,fVar7,extraout_s1);
    uVar1 = cocos2d::CCSprite::create("title_ret2_new.png");
    *(undefined4 *)(this + 0x10c) = uVar1;
    (**(code **)(**(int **)(this + 0x10c) + 0x4c))(*(undefined4 *)(this + 0x10c),aCStack_70);
    (**(code **)(**(int **)(this + 0x10c) + 0x1a4))(*(undefined4 *)(this + 0x10c),0x23);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x10c));
    local_94 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_sml.png");
    local_90 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_sml.png");
    local_50 = (code *)0x415eb9;
    local_4c = 0;
    local_8c = (CCMenuItem *)
               cocos2d::CCMenuItemSprite::create
                         (local_94,local_94,(CCObject *)this,(_func_void_CCObject_ptr *)0x415eb9);
    uVar1 = cocos2d::CCMenu::create(local_8c,0);
    *(undefined4 *)(this + 0x118) = uVar1;
    fVar7 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x118));
    pcVar5 = *(code **)(**(int **)(this + 0x118) + 0x4c);
    uVar1 = *(undefined4 *)(this + 0x118);
    cocos2d::CCPoint::CCPoint(aCStack_30,fVar7,extraout_s1_00);
    (*pcVar5)(uVar1,aCStack_30);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x118));
    local_48 = (code *)0x415e31;
    local_44 = 0;
    local_88 = (CCMenuItem *)
               cocos2d::CCMenuItemSprite::create
                         (local_90,local_90,(CCObject *)this,(_func_void_CCObject_ptr *)0x415e31);
    uVar1 = cocos2d::CCMenu::create(local_88,0);
    *(undefined4 *)(this + 0x11c) = uVar1;
    fVar7 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x11c));
    pcVar5 = *(code **)(**(int **)(this + 0x11c) + 0x4c);
    uVar1 = *(undefined4 *)(this + 0x11c);
    cocos2d::CCPoint::CCPoint(aCStack_30,fVar7,extraout_s1_01);
    (*pcVar5)(uVar1,aCStack_30);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x11c));
    local_84 = 0x3f0ccccd;
    local_80 = 24.0;
    local_7c = -8.0;
    pcVar2 = (char *)FUN_007c5300(&DAT_00952e0c);
    uVar1 = cocos2d::CCLabelAtlas::create("BACK",pcVar2,0x20,0x20,0x20);
    *(undefined4 *)(this + 0x110) = uVar1;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x110));
    pcVar5 = *(code **)(**(int **)(this + 0x110) + 0x4c);
    uVar4 = *(undefined4 *)(this + 0x110);
    (**(code **)(**(int **)(this + 0x118) + 0x50))(*(undefined4 *)(this + 0x118));
    fVar7 = (float)(**(code **)(**(int **)(this + 0x118) + 0x50))(*(undefined4 *)(this + 0x118));
    cocos2d::CCPoint::CCPoint(aCStack_68,fVar7,extraout_s1_02);
    FUN_00414810(0,extraout_s1_02,SUB84((double)local_7c,0),local_40);
    uVar1 = (**(code **)(**(int **)(this + 0x110) + 0x1fc))(*(undefined4 *)(this + 0x110));
    FUN_0079a3f4(auStack_9c);
    FUN_007c6a60(auStack_98,uVar1,auStack_9c);
    uVar1 = FUN_007c505c(auStack_98);
    VectorUnsignedToFloat(uVar1,(byte)(in_fpscr >> 0x16) & 3);
    fVar7 = (float)FUN_00414810(0,extraout_s1_02,SUB84((double)local_7c,0),aCStack_30);
    cocos2d::CCPoint::CCPoint(aCStack_60,fVar7,extraout_s1_03);
    FUN_004147f0(asStack_58,aCStack_68,aCStack_60);
    (*pcVar5)(uVar4,asStack_58);
    FUN_007c5914(auStack_98);
    FUN_0079a3fc(auStack_9c);
    (**(code **)(**(int **)(this + 0x110) + 0x40))(*(undefined4 *)(this + 0x110),local_84);
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x110),(int)local_80);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x110));
    pcVar2 = (char *)FUN_007c5300(&DAT_00952e0c);
    uVar1 = cocos2d::CCLabelAtlas::create("AGREE",pcVar2,0x20,0x20,0x20);
    *(undefined4 *)(this + 0x114) = uVar1;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x114));
    pcVar5 = *(code **)(**(int **)(this + 0x114) + 0x4c);
    uVar4 = *(undefined4 *)(this + 0x114);
    (**(code **)(**(int **)(this + 0x11c) + 0x50))(*(undefined4 *)(this + 0x11c));
    fVar7 = (float)(**(code **)(**(int **)(this + 0x11c) + 0x50))(*(undefined4 *)(this + 0x11c));
    cocos2d::CCPoint::CCPoint(aCStack_68,fVar7,extraout_s1_04);
    FUN_00414810(0,extraout_s1_04,SUB84((double)local_7c,0),local_40);
    uVar1 = (**(code **)(**(int **)(this + 0x114) + 0x1fc))(*(undefined4 *)(this + 0x114));
    FUN_0079a3f4(auStack_9c);
    FUN_007c6a60(auStack_98,uVar1,auStack_9c);
    uVar1 = FUN_007c505c(auStack_98);
    VectorUnsignedToFloat(uVar1,(byte)(in_fpscr >> 0x16) & 3);
    fVar7 = (float)FUN_00414810(0,extraout_s1_04,SUB84((double)local_7c,0),aCStack_30);
    cocos2d::CCPoint::CCPoint(aCStack_60,fVar7,extraout_s1_05);
    FUN_004147f0(asStack_58,aCStack_68,aCStack_60);
    (*pcVar5)(uVar4,asStack_58);
    FUN_007c5914(auStack_98);
    FUN_0079a3fc(auStack_9c);
    (**(code **)(**(int **)(this + 0x114) + 0x40))(*(undefined4 *)(this + 0x114),local_84);
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x114),(int)local_80);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x114));
    ApplicationInterface::removeAdBanner();
    FUN_0079a3f4(aCStack_68);
    FUN_007c6a60(local_40,"Terms of Service Update",aCStack_68);
    FUN_0079a3f4(aCStack_60);
    FUN_007c6a60(aCStack_30,"Please agree to the Terms of Service before playing online.",aCStack_60
                );
    FUN_0079a3f4(auStack_98);
    FUN_007c6a60(asStack_58,&DAT_007ea344,auStack_98);
    pCVar3 = (CCObject *)cocos2d::CCString::create(asStack_58);
    uVar1 = cocos2d::CCArray::create(pCVar3,0);
    AMessageBox::showAlert(0x415f1d,local_40,aCStack_30,uVar1,0,0);
    FUN_007c5914(asStack_58);
    FUN_0079a3fc(auStack_98);
    FUN_007c5914(aCStack_30);
    FUN_0079a3fc(aCStack_60);
    FUN_007c5914(local_40);
    FUN_0079a3fc(aCStack_68);
  }
  return bVar6;
}

// ---- TOSLayer::~TOSLayer  @ 0x415d60
/* WARNING: Removing unreachable block (ram,0x00415de8) */
/* TOSLayer::~TOSLayer() */

TOSLayer * __thiscall TOSLayer::~TOSLayer(TOSLayer *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_0091caf8;
  *(undefined ***)(this + 0xe4) = &PTR__TOSLayer_1_0091cd00;
  *(undefined **)(this + 0xe8) = &DAT_0091cd30;
  *(undefined **)(this + 0xec) = &DAT_0091cd3c;
  cocos2d::CCObject::release(*(CCObject **)(this + 0x110));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x118));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x11c));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x114));
  ZYWebView::removeWebView();
  cocos2d::CCLayer::~CCLayer((CCLayer *)this);
  return this;
}

// ---- TOSLayer::~TOSLayer  @ 0x415e04
/* non-virtual thunk to TOSLayer::~TOSLayer() */

void __thiscall TOSLayer::~TOSLayer(TOSLayer *this)

{
  ~TOSLayer(this + -0xe4);
  return;
}

// ---- TOSLayer::~TOSLayer  @ 0x415e0c
/* TOSLayer::~TOSLayer() */

TOSLayer * __thiscall TOSLayer::~TOSLayer(TOSLayer *this)

{
  ~TOSLayer(this);
  operator_delete(this);
  return this;
}

// ---- TOSLayer::~TOSLayer  @ 0x415e28
/* non-virtual thunk to TOSLayer::~TOSLayer() */

void __thiscall TOSLayer::~TOSLayer(TOSLayer *this)

{
  ~TOSLayer(this + -0xe4);
  return;
}

// ---- TOSLayer::onNext  @ 0x415e30
/* TOSLayer::onNext(cocos2d::CCObject*) */

void TOSLayer::onNext(CCObject *param_1)

{
  CCTransitionFade *this;
  CCUserDefault *this_00;
  CCDirector *this_01;
  CCScene *pCVar1;
  float extraout_s0;
  
  if (param_1[0x108] == (CCObject)0x0) {
    param_1[0x108] = (CCObject)0x1;
    Sound::playSound(sndEng,0xd);
    this_00 = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
    cocos2d::CCUserDefault::setBoolForKey(this_00,"TOSAccepted",true);
    TOS_ACCEPTED = 1;
    this_01 = (CCDirector *)cocos2d::CCDirector::sharedDirector();
    this = DAT_009436b4;
    pCVar1 = (CCScene *)LobbyLayer::scene();
    pCVar1 = (CCScene *)cocos2d::CCTransitionFade::create(this,extraout_s0,pCVar1);
    cocos2d::CCDirector::replaceScene(this_01,pCVar1);
  }
  return;
}

// ---- TOSLayer::onBack  @ 0x415eb8
/* TOSLayer::onBack(cocos2d::CCObject*) */

void TOSLayer::onBack(CCObject *param_1)

{
  CCDirector *this;
  CCScene *pCVar1;
  float fVar2;
  
  if (param_1[0x108] == (CCObject)0x0) {
    param_1[0x108] = (CCObject)0x1;
    Sound::playSound(sndEng,0xd);
    this = (CCDirector *)cocos2d::CCDirector::sharedDirector();
    pCVar1 = DAT_009436b4;
    fVar2 = (float)MenuLayer::scene();
    pCVar1 = (CCScene *)cocos2d::CCTransitionSlideInL::create(fVar2,pCVar1);
    cocos2d::CCDirector::replaceScene(this,pCVar1);
  }
  return;
}

// ---- TOSLayer::messageBoxHandler  @ 0x415f1c
/* TOSLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*) */

void __thiscall
TOSLayer::messageBoxHandler(TOSLayer *this,int param_1,CCObject *param_2,CCObject *param_3)

{
  float in_s0;
  float extraout_s0;
  float in_s1;
  float extraout_s1;
  float in_s2;
  float extraout_s2;
  float in_s3;
  float extraout_s3;
  CCRect local_18 [16];
  
  cocos2d::CCRect::CCRect(local_18,in_s0,in_s1,in_s2,in_s3);
  ZYWebView::showWebView(webView,extraout_s0,extraout_s1,extraout_s2,extraout_s3);
  return;
}
