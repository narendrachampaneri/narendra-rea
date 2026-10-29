// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 9 functions

// ---- AboutLayer::create  @ 0x2f10ac
/* AboutLayer::create() */

AboutLayer * AboutLayer::create(void)

{
  bool bVar1;
  AboutLayer *this;
  int iVar2;
  
  this = operator_new(0x118);
  AboutLayer(this);
  if ((this == (AboutLayer *)0x0) || (iVar2 = (**(code **)(*(int *)this + 0x18))(this), iVar2 == 0))
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
    if (this != (AboutLayer *)0x0) {
      (**(code **)(*(int *)this + 8))(this);
    }
    this = (AboutLayer *)0x0;
  }
  return this;
}

// ---- AboutLayer::AboutLayer  @ 0x2f111c
/* AboutLayer::AboutLayer() */

AboutLayer * __thiscall AboutLayer::AboutLayer(AboutLayer *this)

{
  cocos2d::CCLayer::CCLayer((CCLayer *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_0090a578;
  *(undefined ***)(this + 0xe4) = &PTR__AboutLayer_1_0090a780;
  *(undefined **)(this + 0xe8) = &DAT_0090a7b0;
  *(undefined **)(this + 0xec) = &DAT_0090a7bc;
  return this;
}

// ---- AboutLayer::scene  @ 0x2f1174
/* AboutLayer::scene() */

int * AboutLayer::scene(void)

{
  int *piVar1;
  undefined4 uVar2;
  
  piVar1 = (int *)cocos2d::CCScene::create();
  uVar2 = create();
  (**(code **)(*piVar1 + 200))(piVar1,uVar2);
  return piVar1;
}

// ---- AboutLayer::init  @ 0x2f11a8
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x002f147c */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* AboutLayer::init() */

bool __thiscall AboutLayer::init(AboutLayer *this)

{
  undefined4 uVar1;
  char *pcVar2;
  undefined4 uVar3;
  code *pcVar4;
  bool bVar5;
  uint in_fpscr;
  float fVar6;
  float extraout_s1;
  float extraout_s1_00;
  float extraout_s1_01;
  float extraout_s1_02;
  float extraout_s1_03;
  float extraout_s1_04;
  float extraout_s2;
  float extraout_s2_00;
  float extraout_s3;
  float extraout_s3_00;
  undefined1 auStack_94 [3];
  char local_91;
  undefined1 auStack_90 [4];
  CCNode *local_8c;
  CCMenuItem *local_88;
  undefined4 local_84;
  float local_80;
  float local_7c;
  CCSize local_78 [8];
  CCPoint aCStack_70 [8];
  CCPoint aCStack_68 [8];
  CCPoint aCStack_60 [8];
  undefined1 auStack_58 [8];
  code *local_50;
  undefined4 local_4c;
  undefined1 local_48 [16];
  CCPoint aCStack_38 [16];
  CCRect local_28 [16];
  
  local_91 = cocos2d::CCLayer::init((CCLayer *)this);
  bVar5 = local_91 == '\x01';
  if (bVar5) {
    this[0x108] = (AboutLayer)0x0;
    fVar6 = (float)cocos2d::CCSize::CCSize(local_78,(CCSize *)&screenSize);
    cocos2d::CCPoint::CCPoint(aCStack_70,fVar6,extraout_s1);
    uVar1 = cocos2d::CCSprite::create("title_ret2_new.png");
    *(undefined4 *)(this + 0x10c) = uVar1;
    (**(code **)(**(int **)(this + 0x10c) + 0x4c))(*(undefined4 *)(this + 0x10c),aCStack_70);
    (**(code **)(**(int **)(this + 0x10c) + 0x1a4))(*(undefined4 *)(this + 0x10c),0x23);
    fVar6 = (float)(**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x10c));
    fVar6 = (float)cocos2d::CCRect::CCRect(local_28,fVar6,extraout_s1_00,extraout_s2,extraout_s3);
    ZYWebView::showWebView(webView,fVar6,extraout_s1_01,extraout_s2_00,extraout_s3_00);
    local_8c = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_sml.png");
    local_50 = (code *)0x2f1619;
    local_4c = 0;
    local_88 = (CCMenuItem *)
               cocos2d::CCMenuItemSprite::create
                         (local_8c,local_8c,(CCObject *)this,(_func_void_CCObject_ptr *)0x2f1619);
    uVar1 = cocos2d::CCMenu::create(local_88,0);
    *(undefined4 *)(this + 0x114) = uVar1;
    fVar6 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x114));
    pcVar4 = *(code **)(**(int **)(this + 0x114) + 0x4c);
    uVar1 = *(undefined4 *)(this + 0x114);
    cocos2d::CCPoint::CCPoint(aCStack_38,fVar6,extraout_s1_02);
    (*pcVar4)(uVar1,aCStack_38);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x114));
    local_84 = 0x3f0ccccd;
    local_80 = 24.0;
    local_7c = -8.0;
    pcVar2 = (char *)FUN_007c5300(&DAT_0094f6bc);
    uVar1 = cocos2d::CCLabelAtlas::create("BACK",pcVar2,0x20,0x20,0x20);
    *(undefined4 *)(this + 0x110) = uVar1;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x110));
    pcVar4 = *(code **)(**(int **)(this + 0x110) + 0x4c);
    uVar3 = *(undefined4 *)(this + 0x110);
    (**(code **)(**(int **)(this + 0x114) + 0x50))(*(undefined4 *)(this + 0x114));
    fVar6 = (float)(**(code **)(**(int **)(this + 0x114) + 0x50))(*(undefined4 *)(this + 0x114));
    cocos2d::CCPoint::CCPoint(aCStack_68,fVar6,extraout_s1_03);
    FUN_002f0330(0,extraout_s1_03,SUB84((double)local_7c,0),local_48);
    uVar1 = (**(code **)(**(int **)(this + 0x110) + 0x1fc))(*(undefined4 *)(this + 0x110));
    FUN_0079a3f4(auStack_94);
    FUN_007c6a60(auStack_90,uVar1,auStack_94);
    uVar1 = FUN_007c505c(auStack_90);
    VectorUnsignedToFloat(uVar1,(byte)(in_fpscr >> 0x16) & 3);
    fVar6 = (float)FUN_002f0330(0,extraout_s1_03,SUB84((double)local_7c,0),aCStack_38);
    cocos2d::CCPoint::CCPoint(aCStack_60,fVar6,extraout_s1_04);
    FUN_002f0310(auStack_58,aCStack_68,aCStack_60);
    (*pcVar4)(uVar3,auStack_58);
    FUN_007c5914(auStack_90);
    FUN_0079a3fc(auStack_94);
    (**(code **)(**(int **)(this + 0x110) + 0x40))(*(undefined4 *)(this + 0x110),local_84);
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x110),(int)local_80);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x110));
    ApplicationInterface::removeAdBanner();
  }
  return bVar5;
}

// ---- AboutLayer::~AboutLayer  @ 0x2f1560
/* WARNING: Removing unreachable block (ram,0x002f15d0) */
/* AboutLayer::~AboutLayer() */

AboutLayer * __thiscall AboutLayer::~AboutLayer(AboutLayer *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_0090a578;
  *(undefined ***)(this + 0xe4) = &PTR__AboutLayer_1_0090a780;
  *(undefined **)(this + 0xe8) = &DAT_0090a7b0;
  *(undefined **)(this + 0xec) = &DAT_0090a7bc;
  cocos2d::CCObject::release(*(CCObject **)(this + 0x110));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x114));
  ZYWebView::removeWebView();
  cocos2d::CCLayer::~CCLayer((CCLayer *)this);
  return this;
}

// ---- AboutLayer::~AboutLayer  @ 0x2f15ec
/* non-virtual thunk to AboutLayer::~AboutLayer() */

void __thiscall AboutLayer::~AboutLayer(AboutLayer *this)

{
  ~AboutLayer(this + -0xe4);
  return;
}

// ---- AboutLayer::~AboutLayer  @ 0x2f15f4
/* AboutLayer::~AboutLayer() */

AboutLayer * __thiscall AboutLayer::~AboutLayer(AboutLayer *this)

{
  ~AboutLayer(this);
  operator_delete(this);
  return this;
}

// ---- AboutLayer::~AboutLayer  @ 0x2f1610
/* non-virtual thunk to AboutLayer::~AboutLayer() */

void __thiscall AboutLayer::~AboutLayer(AboutLayer *this)

{
  ~AboutLayer(this + -0xe4);
  return;
}

// ---- AboutLayer::onBack  @ 0x2f1618
/* AboutLayer::onBack(cocos2d::CCObject*) */

void AboutLayer::onBack(CCObject *param_1)

{
  CCDirector *this;
  CCScene *pCVar1;
  float fVar2;
  
  if (param_1[0x108] == (CCObject)0x0) {
    param_1[0x108] = (CCObject)0x1;
    Sound::playSound(sndEng,0xd);
    this = (CCDirector *)cocos2d::CCDirector::sharedDirector();
    pCVar1 = DAT_0094302c;
    fVar2 = (float)MenuLayer::scene();
    pCVar1 = (CCScene *)cocos2d::CCTransitionSlideInL::create(fVar2,pCVar1);
    cocos2d::CCDirector::replaceScene(this,pCVar1);
  }
  return;
}
