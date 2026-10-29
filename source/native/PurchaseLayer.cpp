// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 15 functions

// ---- PurchaseLayer::create  @ 0x3c7354
/* PurchaseLayer::create() */

PurchaseLayer * PurchaseLayer::create(void)

{
  bool bVar1;
  PurchaseLayer *this;
  int iVar2;
  
  this = operator_new(0x144);
  PurchaseLayer(this);
  if ((this == (PurchaseLayer *)0x0) ||
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
    if (this != (PurchaseLayer *)0x0) {
      (**(code **)(*(int *)this + 8))(this);
    }
    this = (PurchaseLayer *)0x0;
  }
  return this;
}

// ---- PurchaseLayer::PurchaseLayer  @ 0x3c73c4
/* PurchaseLayer::PurchaseLayer() */

PurchaseLayer * __thiscall PurchaseLayer::PurchaseLayer(PurchaseLayer *this)

{
  cocos2d::CCLayer::CCLayer((CCLayer *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_009186e8;
  *(undefined ***)(this + 0xe4) = &PTR__PurchaseLayer_1_009188f0;
  *(undefined **)(this + 0xe8) = &DAT_00918920;
  *(undefined **)(this + 0xec) = &DAT_0091892c;
  return this;
}

// ---- PurchaseLayer::scene  @ 0x3c741c
/* PurchaseLayer::scene() */

int * PurchaseLayer::scene(void)

{
  int *piVar1;
  undefined4 uVar2;
  
  piVar1 = (int *)cocos2d::CCScene::create();
  uVar2 = create();
  (**(code **)(*piVar1 + 200))(piVar1,uVar2);
  return piVar1;
}

// ---- PurchaseLayer::init  @ 0x3c7450
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003c78c4 */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* PurchaseLayer::init() */

bool __thiscall PurchaseLayer::init(PurchaseLayer *this)

{
  int iVar1;
  undefined4 uVar2;
  char *pcVar3;
  undefined4 uVar4;
  code *pcVar5;
  bool bVar6;
  uint in_fpscr;
  float fVar7;
  float extraout_s0;
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
  undefined1 auStack_ac [3];
  char local_a9;
  undefined1 auStack_a8 [4];
  CCNode *pCStack_a4;
  CCNode *pCStack_a0;
  CCNode *pCStack_9c;
  CCNode *pCStack_98;
  CCNode *pCStack_94;
  CCNode *pCStack_90;
  CCMenuItem *pCStack_8c;
  CCMenuItem *pCStack_88;
  CCMenuItem *pCStack_84;
  CCSize aCStack_80 [8];
  CCPoint aCStack_78 [8];
  CCPoint aCStack_70 [8];
  CCPoint aCStack_68 [8];
  undefined1 auStack_60 [8];
  _func_void_CCObject_ptr *p_Stack_58;
  undefined4 uStack_54;
  _func_void_CCObject_ptr *p_Stack_50;
  undefined4 uStack_4c;
  _func_void_CCObject_ptr *p_Stack_48;
  undefined4 uStack_44;
  CCPoint aCStack_40 [16];
  undefined4 uStack_30;
  undefined4 uStack_2c;
  
  iVar1 = _FUN_003c7480;
  local_a9 = cocos2d::CCLayer::init((CCLayer *)this);
  bVar6 = local_a9 == '\x01';
  if (bVar6) {
    this[0x108] = (PurchaseLayer)0x0;
    this[0x13c] = (PurchaseLayer)0x0;
    fVar7 = (float)cocos2d::CCSize::CCSize(aCStack_80,*(CCSize **)(iVar1 + 0x3c4b84));
    cocos2d::CCPoint::CCPoint(aCStack_78,fVar7,extraout_s1);
    pCStack_a4 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_mid.png");
    pCStack_a0 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_mid.png");
    pCStack_9c = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_top.png");
    pCStack_98 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_top.png");
    pCStack_94 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_sml.png");
    pCStack_90 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_sml.png");
    p_Stack_58 = *(_func_void_CCObject_ptr **)(&UNK_003c5274 + iVar1);
    uStack_54 = 0;
    pCStack_8c = (CCMenuItem *)
                 cocos2d::CCMenuItemSprite::create
                           (pCStack_a4,pCStack_a0,(CCObject *)this,p_Stack_58);
    uVar2 = cocos2d::CCMenu::create(pCStack_8c,0);
    *(undefined4 *)(this + 0x11c) = uVar2;
    fVar7 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x11c));
    pcVar5 = *(code **)(**(int **)(this + 0x11c) + 0x4c);
    uVar2 = *(undefined4 *)(this + 0x11c);
    cocos2d::CCPoint::CCPoint((CCPoint *)&uStack_30,fVar7,extraout_s1_00);
    (*pcVar5)(uVar2,&uStack_30);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x11c));
    p_Stack_50 = *(_func_void_CCObject_ptr **)(&UNK_003c5278 + iVar1);
    uStack_4c = 0;
    pCStack_88 = (CCMenuItem *)
                 cocos2d::CCMenuItemSprite::create
                           (pCStack_9c,pCStack_98,(CCObject *)this,p_Stack_50);
    uVar2 = cocos2d::CCMenu::create(pCStack_88,0);
    *(undefined4 *)(this + 0x124) = uVar2;
    fVar7 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x124));
    pcVar5 = *(code **)(**(int **)(this + 0x124) + 0x4c);
    uVar2 = *(undefined4 *)(this + 0x124);
    cocos2d::CCPoint::CCPoint((CCPoint *)&uStack_30,fVar7,extraout_s1_01);
    (*pcVar5)(uVar2,&uStack_30);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x124));
    p_Stack_48 = *(_func_void_CCObject_ptr **)(&UNK_003c527c + iVar1);
    uStack_44 = 0;
    pCStack_84 = (CCMenuItem *)
                 cocos2d::CCMenuItemSprite::create
                           (pCStack_94,pCStack_90,(CCObject *)this,p_Stack_48);
    uVar2 = cocos2d::CCMenu::create(pCStack_84,0);
    *(undefined4 *)(this + 300) = uVar2;
    fVar7 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 300));
    pcVar5 = *(code **)(**(int **)(this + 300) + 0x4c);
    uVar2 = *(undefined4 *)(this + 300);
    cocos2d::CCPoint::CCPoint((CCPoint *)&uStack_30,fVar7,extraout_s1_02);
    (*pcVar5)(uVar2,&uStack_30);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 300));
    *(undefined4 *)(this + 0x10c) = 0x3f0ccccd;
    *(undefined4 *)(this + 0x110) = 0x41c00000;
    *(undefined4 *)(this + 0x114) = 0xc1000000;
    uVar2 = cocos2d::CCSprite::create("title_ret2_new.png");
    *(undefined4 *)(this + 0x134) = uVar2;
    (**(code **)(**(int **)(this + 0x134) + 0x4c))(*(undefined4 *)(this + 0x134),aCStack_78);
    (**(code **)(**(int **)(this + 0x134) + 0x1a4))(*(undefined4 *)(this + 0x134),0x23);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x134));
    uVar2 = cocos2d::CCSprite::create("propack_new.png");
    *(undefined4 *)(this + 0x138) = uVar2;
    pcVar5 = *(code **)(**(int **)(this + 0x138) + 0x4c);
    uVar2 = *(undefined4 *)(this + 0x138);
    cocos2d::CCPoint::CCPoint(aCStack_40,extraout_s0,extraout_s1_03);
    FUN_003c65b8(&uStack_30,aCStack_78,aCStack_40);
    (*pcVar5)(uVar2,&uStack_30);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x138));
    pcVar3 = (char *)FUN_007c5300(&DAT_009512fc);
    uVar2 = cocos2d::CCLabelAtlas::create("PURCHASE",pcVar3,0x20,0x20,0x20);
    *(undefined4 *)(this + 0x118) = uVar2;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x118));
    cocos2d::CCLabelAtlas::setDrawWidth
              (*(CCLabelAtlas **)(this + 0x118),(int)*(float *)(this + 0x110));
    (**(code **)(**(int **)(this + 0x118) + 0x40))
              (*(undefined4 *)(this + 0x118),*(undefined4 *)(this + 0x10c));
    pcVar5 = *(code **)(**(int **)(this + 0x118) + 0x4c);
    uVar4 = *(undefined4 *)(this + 0x118);
    (**(code **)(**(int **)(this + 0x11c) + 0x50))(*(undefined4 *)(this + 0x11c));
    fVar7 = (float)(**(code **)(**(int **)(this + 0x11c) + 0x50))(*(undefined4 *)(this + 0x11c));
    cocos2d::CCPoint::CCPoint(aCStack_70,fVar7,extraout_s1_04);
    FUN_003c65d8(0,extraout_s1_04,SUB84((double)*(float *)(this + 0x114),0),aCStack_40);
    uVar2 = (**(code **)(**(int **)(this + 0x118) + 0x1fc))(*(undefined4 *)(this + 0x118));
    FUN_0079a3f4(auStack_ac);
    FUN_007c6a60(auStack_a8,uVar2,auStack_ac);
    uVar2 = FUN_007c505c(auStack_a8);
    VectorUnsignedToFloat(uVar2,(byte)(in_fpscr >> 0x16) & 3);
    fVar7 = (float)FUN_003c65d8(0,extraout_s1_04,SUB84((double)*(float *)(this + 0x114),0),
                                &uStack_30);
    cocos2d::CCPoint::CCPoint(aCStack_68,fVar7,extraout_s1_05);
    FUN_003c65b8(auStack_60,aCStack_70,aCStack_68);
    (*pcVar5)(uVar4,auStack_60);
    FUN_007c5914(auStack_a8);
    FUN_0079a3fc(auStack_ac);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x118));
    pcVar3 = (char *)FUN_007c5300(&DAT_009512fc);
    uVar2 = cocos2d::CCLabelAtlas::create("RESTORE",pcVar3,0x20,0x20,0x20);
    *(undefined4 *)(this + 0x120) = uVar2;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x120));
    cocos2d::CCLabelAtlas::setDrawWidth
              (*(CCLabelAtlas **)(this + 0x120),(int)*(float *)(this + 0x110));
    (**(code **)(**(int **)(this + 0x120) + 0x40))
              (*(undefined4 *)(this + 0x120),*(undefined4 *)(this + 0x10c));
    pcVar5 = *(code **)(**(int **)(this + 0x120) + 0x4c);
    uVar4 = *(undefined4 *)(this + 0x120);
    (**(code **)(**(int **)(this + 0x124) + 0x50))(*(undefined4 *)(this + 0x124));
    fVar7 = (float)(**(code **)(**(int **)(this + 0x124) + 0x50))(*(undefined4 *)(this + 0x124));
    cocos2d::CCPoint::CCPoint(aCStack_70,fVar7,extraout_s1_06);
    FUN_003c65d8(0,extraout_s1_06,SUB84((double)*(float *)(this + 0x114),0),aCStack_40);
    uVar2 = (**(code **)(**(int **)(this + 0x120) + 0x1fc))(*(undefined4 *)(this + 0x120));
    FUN_0079a3f4(auStack_ac);
    FUN_007c6a60(auStack_a8,uVar2,auStack_ac);
    uVar2 = FUN_007c505c(auStack_a8);
    VectorUnsignedToFloat(uVar2,(byte)(in_fpscr >> 0x16) & 3);
    fVar7 = (float)FUN_003c65d8(0,extraout_s1_06,SUB84((double)*(float *)(this + 0x114),0),
                                &uStack_30);
    cocos2d::CCPoint::CCPoint(aCStack_68,fVar7,extraout_s1_07);
    FUN_003c65b8(auStack_60,aCStack_70,aCStack_68);
    (*pcVar5)(uVar4,auStack_60);
    FUN_007c5914(auStack_a8);
    FUN_0079a3fc(auStack_ac);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x120));
    pcVar3 = (char *)FUN_007c5300(&DAT_009512fc);
    uVar2 = cocos2d::CCLabelAtlas::create("BACK",pcVar3,0x20,0x20,0x20);
    *(undefined4 *)(this + 0x128) = uVar2;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x128));
    pcVar5 = *(code **)(**(int **)(this + 0x128) + 0x4c);
    uVar4 = *(undefined4 *)(this + 0x128);
    (**(code **)(**(int **)(this + 300) + 0x50))(*(undefined4 *)(this + 300));
    fVar7 = (float)(**(code **)(**(int **)(this + 300) + 0x50))(*(undefined4 *)(this + 300));
    cocos2d::CCPoint::CCPoint(aCStack_70,fVar7,extraout_s1_08);
    FUN_003c65d8(0,extraout_s1_08,SUB84((double)*(float *)(this + 0x114),0),aCStack_40);
    uVar2 = (**(code **)(**(int **)(this + 0x128) + 0x1fc))(*(undefined4 *)(this + 0x128));
    FUN_0079a3f4(auStack_ac);
    FUN_007c6a60(auStack_a8,uVar2,auStack_ac);
    uVar2 = FUN_007c505c(auStack_a8);
    VectorUnsignedToFloat(uVar2,(byte)(in_fpscr >> 0x16) & 3);
    fVar7 = (float)FUN_003c65d8(0,extraout_s1_08,SUB84((double)*(float *)(this + 0x114),0),
                                &uStack_30);
    cocos2d::CCPoint::CCPoint(aCStack_68,fVar7,extraout_s1_09);
    FUN_003c65b8(auStack_60,aCStack_70,aCStack_68);
    (*pcVar5)(uVar4,auStack_60);
    FUN_007c5914(auStack_a8);
    FUN_0079a3fc(auStack_ac);
    (**(code **)(**(int **)(this + 0x128) + 0x40))
              (*(undefined4 *)(this + 0x128),*(undefined4 *)(this + 0x10c));
    cocos2d::CCLabelAtlas::setDrawWidth
              (*(CCLabelAtlas **)(this + 0x128),(int)*(float *)(this + 0x110));
    fVar7 = (float)(**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x128));
    this[0x109] = (PurchaseLayer)0x0;
    uVar2 = cocos2d::CCLabelTTF::create("","Arial-BoldMT",fVar7);
    *(undefined4 *)(this + 0x130) = uVar2;
    fVar7 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x130));
    pcVar5 = *(code **)(**(int **)(this + 0x130) + 0x7c);
    uVar2 = *(undefined4 *)(this + 0x130);
    cocos2d::CCPoint::CCPoint((CCPoint *)&uStack_30,fVar7,extraout_s1_10);
    fVar7 = (float)(*pcVar5)(uVar2,&uStack_30);
    pcVar5 = *(code **)(**(int **)(this + 0x130) + 0x4c);
    uVar2 = *(undefined4 *)(this + 0x130);
    cocos2d::CCPoint::CCPoint(aCStack_40,fVar7,extraout_s1_11);
    FUN_003c65b8(&uStack_30,aCStack_78,aCStack_40);
    (*pcVar5)(uVar2,&uStack_30);
    (**(code **)(**(int **)(this + 0x130) + 0x98))(*(undefined4 *)(this + 0x130),0x42200000);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x130));
    ApplicationInterface::removeAdBanner();
    NetworkManager::sharedNetworkManager();
    fVar7 = (float)NetworkManagerBridge::startReachability();
    this[0x13d] = (PurchaseLayer)0x0;
    *(undefined4 *)(this + 0x140) = 0;
    uStack_30 = *(undefined4 *)(&UNK_003c5280 + iVar1);
    uStack_2c = 0;
    cocos2d::CCNode::schedule((_func_void_float *)this,fVar7);
  }
  return bVar6;
}

// ---- PurchaseLayer::~PurchaseLayer  @ 0x3c7ec0
/* WARNING: Removing unreachable block (ram,0x003c7f74) */
/* PurchaseLayer::~PurchaseLayer() */

PurchaseLayer * __thiscall PurchaseLayer::~PurchaseLayer(PurchaseLayer *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_009186e8;
  *(undefined ***)(this + 0xe4) = &PTR__PurchaseLayer_1_009188f0;
  *(undefined **)(this + 0xe8) = &DAT_00918920;
  *(undefined **)(this + 0xec) = &DAT_0091892c;
  cocos2d::CCNode::removeAllChildren((CCNode *)this);
  NetworkManager::sharedNetworkManager();
  NetworkManagerBridge::stopReachability();
  cocos2d::CCObject::release(*(CCObject **)(this + 0x118));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x11c));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x120));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x124));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x128));
  cocos2d::CCObject::release(*(CCObject **)(this + 300));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x130));
  cocos2d::CCLayer::~CCLayer((CCLayer *)this);
  return this;
}

// ---- PurchaseLayer::~PurchaseLayer  @ 0x3c7f8c
/* non-virtual thunk to PurchaseLayer::~PurchaseLayer() */

void __thiscall PurchaseLayer::~PurchaseLayer(PurchaseLayer *this)

{
  ~PurchaseLayer(this + -0xe4);
  return;
}

// ---- PurchaseLayer::~PurchaseLayer  @ 0x3c7f94
/* PurchaseLayer::~PurchaseLayer() */

PurchaseLayer * __thiscall PurchaseLayer::~PurchaseLayer(PurchaseLayer *this)

{
  ~PurchaseLayer(this);
  operator_delete(this);
  return this;
}

// ---- PurchaseLayer::~PurchaseLayer  @ 0x3c7fb0
/* non-virtual thunk to PurchaseLayer::~PurchaseLayer() */

void __thiscall PurchaseLayer::~PurchaseLayer(PurchaseLayer *this)

{
  ~PurchaseLayer(this + -0xe4);
  return;
}

// ---- PurchaseLayer::onEnter  @ 0x3c7fb8
/* PurchaseLayer::onEnter() */

void __thiscall PurchaseLayer::onEnter(PurchaseLayer *this)

{
  char cVar1;
  int iVar2;
  
  cocos2d::CCLayer::onEnter((CCLayer *)this);
  iVar2 = ApplicationInterface::requiresClaimedIdentity();
  if ((iVar2 != 0) && (cVar1 = ApplicationInterface::hasClaimedIdentity(), cVar1 != '\x01')) {
    ApplicationInterface::pickClaimedIdentity();
  }
  return;
}

// ---- PurchaseLayer::onExit  @ 0x3c7fec
/* PurchaseLayer::onExit() */

void __thiscall PurchaseLayer::onExit(PurchaseLayer *this)

{
  cocos2d::CCNode::unschedule((_func_void_float *)this);
  cocos2d::CCLayer::onExit((CCLayer *)this);
  return;
}

// ---- PurchaseLayer::updateStep  @ 0x3c8028
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003c838e */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* PurchaseLayer::updateStep(float) */

void __thiscall PurchaseLayer::updateStep(PurchaseLayer *this,float param_1)

{
  char cVar1;
  int iVar2;
  undefined4 uVar3;
  float in_r1;
  code *pcVar4;
  undefined4 uVar5;
  uint in_fpscr;
  float fVar6;
  float extraout_s1;
  float extraout_s1_00;
  undefined1 auStack_58 [4];
  undefined1 auStack_54 [4];
  CCPoint aCStack_50 [8];
  CCPoint aCStack_48 [8];
  undefined1 auStack_40 [8];
  InAppPurchaseBridge local_38 [16];
  undefined1 auStack_28 [16];
  
  (**(code **)(**(int **)(this + 0x120) + 0x90))(param_1,*(undefined4 *)(this + 0x120),1);
  (**(code **)(**(int **)(this + 0x124) + 0x90))(*(undefined4 *)(this + 0x124),1);
  if (this[0x109] != (PurchaseLayer)0x1) {
    FUN_0079a3f4(auStack_40);
    FUN_007c6a60(auStack_28,"com.chadtowns.da2.propack",auStack_40);
    InAppPurchaseBridge::getProductPrice(local_38,auStack_28);
    FUN_007c5914(auStack_28);
    FUN_0079a3fc(auStack_40);
    iVar2 = FUN_007c505c(local_38);
    if (iVar2 != 0) {
      this[0x109] = (PurchaseLayer)0x1;
      pcVar4 = *(code **)(**(int **)(this + 0x130) + 0x23c);
      uVar5 = *(undefined4 *)(this + 0x130);
      uVar3 = FUN_007c5300(local_38);
      (*pcVar4)(uVar5,uVar3);
    }
    FUN_007c5914(local_38);
  }
  FUN_0079a3f4(local_38);
  FUN_007c6a60(auStack_28,"com.chadtowns.da2.propack",local_38);
  iVar2 = InAppPurchaseBridge::isProductPurchased(auStack_28);
  FUN_007c5914(auStack_28);
  FUN_0079a3fc(local_38);
  if (iVar2 == 0) {
    iVar2 = InAppPurchaseBridge::readyToSignIn();
    if (iVar2 == 0) {
      cVar1 = InAppPurchaseBridge::readyToPurchase();
      if (cVar1 == '\x01') {
        iVar2 = InAppPurchaseBridge::hasPendingTransactions();
        if (iVar2 == 0) {
          (**(code **)(**(int **)(this + 0x118) + 0x1f8))(*(undefined4 *)(this + 0x118),"PURCHASE");
          (**(code **)(**(int **)(this + 0x118) + 0x1a4))(*(undefined4 *)(this + 0x118),0xff);
        }
        else {
          (**(code **)(**(int **)(this + 0x118) + 0x1f8))
                    (*(undefined4 *)(this + 0x118),"PURCHASING");
          (**(code **)(**(int **)(this + 0x118) + 0x1a4))(*(undefined4 *)(this + 0x118),100);
        }
      }
      else {
        (**(code **)(**(int **)(this + 0x118) + 0x1f8))(*(undefined4 *)(this + 0x118),"STAND BY");
        (**(code **)(**(int **)(this + 0x118) + 0x1a4))(*(undefined4 *)(this + 0x118),100);
      }
    }
    else {
      if (this[0x13d] != (PurchaseLayer)0x0) {
        fVar6 = *(float *)(this + 0x140);
        in_fpscr = in_fpscr & 0xfffffff | (uint)(fVar6 < 10.0) << 0x1f |
                   (uint)(fVar6 == 10.0) << 0x1e | (uint)(10.0 <= fVar6) << 0x1d;
        if ((int)in_fpscr < 0) {
          *(float *)(this + 0x140) = *(float *)(this + 0x140) + in_r1;
          (**(code **)(**(int **)(this + 0x118) + 0x1f8))
                    (*(undefined4 *)(this + 0x118),"PROCESSING");
          (**(code **)(**(int **)(this + 0x118) + 0x1a4))(*(undefined4 *)(this + 0x118),100);
          goto LAB_003c8324;
        }
      }
      this[0x13d] = (PurchaseLayer)0x0;
      *(undefined4 *)(this + 0x140) = 0;
      (**(code **)(**(int **)(this + 0x118) + 0x1f8))(*(undefined4 *)(this + 0x118),"PURCHASE");
      (**(code **)(**(int **)(this + 0x118) + 0x1a4))(*(undefined4 *)(this + 0x118),0xff);
    }
  }
  else {
    (**(code **)(**(int **)(this + 0x120) + 0x90))(*(undefined4 *)(this + 0x120),0);
    (**(code **)(**(int **)(this + 0x124) + 0x90))(*(undefined4 *)(this + 0x124),0);
    (**(code **)(**(int **)(this + 0x118) + 0x1f8))(*(undefined4 *)(this + 0x118),"PURCHASED");
    (**(code **)(**(int **)(this + 0x118) + 0x1a4))(*(undefined4 *)(this + 0x118),100);
  }
LAB_003c8324:
  pcVar4 = *(code **)(**(int **)(this + 0x118) + 0x4c);
  uVar5 = *(undefined4 *)(this + 0x118);
  (**(code **)(**(int **)(this + 0x11c) + 0x50))(*(undefined4 *)(this + 0x11c));
  fVar6 = (float)(**(code **)(**(int **)(this + 0x11c) + 0x50))(*(undefined4 *)(this + 0x11c));
  cocos2d::CCPoint::CCPoint(aCStack_50,fVar6,extraout_s1);
  FUN_003c65d8(0,extraout_s1,SUB84((double)*(float *)(this + 0x114),0),local_38);
  uVar3 = (**(code **)(**(int **)(this + 0x118) + 0x1fc))(*(undefined4 *)(this + 0x118));
  FUN_0079a3f4(auStack_58);
  FUN_007c6a60(auStack_54,uVar3,auStack_58);
  uVar3 = FUN_007c505c(auStack_54);
  VectorUnsignedToFloat(uVar3,(byte)(in_fpscr >> 0x16) & 3);
  fVar6 = (float)FUN_003c65d8(0,extraout_s1,SUB84((double)*(float *)(this + 0x114),0),auStack_28);
  cocos2d::CCPoint::CCPoint(aCStack_48,fVar6,extraout_s1_00);
  FUN_003c65b8(auStack_40,aCStack_50,aCStack_48);
  (*pcVar4)(uVar5,auStack_40);
  FUN_007c5914(auStack_54);
  FUN_0079a3fc(auStack_58);
  return;
}

// ---- PurchaseLayer::checkCanConnectToStore  @ 0x3c84e0
/* PurchaseLayer::checkCanConnectToStore() */

void __thiscall PurchaseLayer::checkCanConnectToStore(PurchaseLayer *this)

{
  bool bVar1;
  char cVar2;
  CCObject *pCVar3;
  undefined4 uVar4;
  int iVar5;
  NetworkManager *this_00;
  undefined1 auStack_20 [4];
  undefined1 auStack_1c [4];
  undefined1 auStack_18 [4];
  string asStack_14 [4];
  undefined1 auStack_10 [4];
  undefined1 auStack_c [4];
  
  NetworkManager::sharedNetworkManager();
  cVar2 = NetworkManagerBridge::isInternetReachable();
  if (cVar2 != '\x01') {
    Sound::playSound(sndEng,0xe);
    FUN_0079a3f4(auStack_1c);
    FUN_007c6a60(auStack_10,"Internet Connection Failed",auStack_1c);
    FUN_0079a3f4(auStack_18);
    FUN_007c6a60(auStack_c,"Please make sure your internet connection is working.",auStack_18);
    FUN_0079a3f4(auStack_20);
    FUN_007c6a60(asStack_14,"THANK YOU",auStack_20);
    pCVar3 = (CCObject *)cocos2d::CCString::create(asStack_14);
    uVar4 = cocos2d::CCArray::create(pCVar3,0);
    AMessageBox::showAlert(0,auStack_10,auStack_c,uVar4,0,0);
    FUN_007c5914(asStack_14);
    FUN_0079a3fc(auStack_20);
    FUN_007c5914(auStack_c);
    FUN_0079a3fc(auStack_18);
    FUN_007c5914(auStack_10);
    FUN_0079a3fc(auStack_1c);
    return;
  }
  iVar5 = ApplicationInterface::requiresClaimedIdentity();
  if (iVar5 != 0) {
    NetworkManager::sharedNetworkManager();
    cVar2 = NetworkManager::checkCurrentSessionIsValid();
    if (cVar2 != '\x01') {
      bVar1 = true;
      goto LAB_003c85de;
    }
  }
  bVar1 = false;
LAB_003c85de:
  if (bVar1) {
    Sound::playSound(sndEng,0xd);
    FUN_0079a3f4(auStack_1c);
    FUN_007c6a60(auStack_10,"Please Wait",auStack_1c);
    FUN_0079a3f4(auStack_18);
    FUN_007c6a60(auStack_c,
                 "We are refreshing your connection.  Give us a few seconds and try your purchase again."
                 ,auStack_18);
    FUN_0079a3f4(auStack_20);
    FUN_007c6a60(asStack_14,&DAT_007e45a8,auStack_20);
    pCVar3 = (CCObject *)cocos2d::CCString::create(asStack_14);
    uVar4 = cocos2d::CCArray::create(pCVar3,0);
    AMessageBox::showAlert(0,auStack_10,auStack_c,uVar4,0,0);
    FUN_007c5914(asStack_14);
    FUN_0079a3fc(auStack_20);
    FUN_007c5914(auStack_c);
    FUN_0079a3fc(auStack_18);
    FUN_007c5914(auStack_10);
    FUN_0079a3fc(auStack_1c);
    this_00 = (NetworkManager *)NetworkManager::sharedNetworkManager();
    NetworkManager::requestWebSession(this_00);
  }
  else {
    cVar2 = InAppPurchaseBridge::canMakePurchases();
    if (cVar2 != '\x01') {
      if (this[0x13c] != (PurchaseLayer)0x1) {
        InAppPurchaseBridge::showPurchaseStatusAlert();
      }
      this[0x13c] = (PurchaseLayer)0x1;
    }
  }
  return;
}

// ---- PurchaseLayer::onRestore  @ 0x3c8768
/* PurchaseLayer::onRestore(cocos2d::CCObject*) */

void PurchaseLayer::onRestore(CCObject *param_1)

{
  checkCanConnectToStore((PurchaseLayer *)param_1);
  if (param_1[0x108] == (CCObject)0x0) {
    param_1[0x108] = (CCObject)0x1;
    Sound::playSound(sndEng,0xd);
    InAppPurchaseBridge::restore();
    param_1[0x108] = (CCObject)0x0;
  }
  return;
}

// ---- PurchaseLayer::onPurchase  @ 0x3c87b4
/* PurchaseLayer::onPurchase(cocos2d::CCObject*) */

void __thiscall PurchaseLayer::onPurchase(PurchaseLayer *this,CCObject *param_1)

{
  undefined1 auStack_10 [4];
  undefined1 auStack_c [4];
  
  checkCanConnectToStore(this);
  if (this[0x108] == (PurchaseLayer)0x0) {
    this[0x108] = (PurchaseLayer)0x1;
    Sound::playSound(sndEng,0xd);
    this[0x13d] = (PurchaseLayer)0x1;
    FUN_0079a3f4(auStack_10);
    FUN_007c6a60(auStack_c,"com.chadtowns.da2.propack",auStack_10,auStack_10,param_1);
    InAppPurchaseBridge::purchaseProduct(auStack_c);
    FUN_007c5914(auStack_c);
    FUN_0079a3fc(auStack_10);
    this[0x108] = (PurchaseLayer)0x0;
  }
  return;
}

// ---- PurchaseLayer::onBack  @ 0x3c8854
/* PurchaseLayer::onBack(cocos2d::CCObject*) */

void PurchaseLayer::onBack(CCObject *param_1)

{
  CCDirector *this;
  CCScene *pCVar1;
  float fVar2;
  
  if (param_1[0x108] == (CCObject)0x0) {
    param_1[0x108] = (CCObject)0x1;
    Sound::playSound(sndEng,0xd);
    this = (CCDirector *)cocos2d::CCDirector::sharedDirector();
    pCVar1 = DAT_009435d4;
    fVar2 = (float)MenuLayer::scene();
    pCVar1 = (CCScene *)cocos2d::CCTransitionSlideInL::create(fVar2,pCVar1);
    cocos2d::CCDirector::replaceScene(this,pCVar1);
  }
  return;
}
