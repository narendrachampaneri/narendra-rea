// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 12 functions

// ---- HelpLayer::create  @ 0x35394c
/* HelpLayer::create() */

HelpLayer * HelpLayer::create(void)

{
  bool bVar1;
  HelpLayer *this;
  int iVar2;
  
  this = operator_new(0x120);
  HelpLayer(this);
  if ((this == (HelpLayer *)0x0) || (iVar2 = (**(code **)(*(int *)this + 0x18))(this), iVar2 == 0))
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
    if (this != (HelpLayer *)0x0) {
      (**(code **)(*(int *)this + 8))(this);
    }
    this = (HelpLayer *)0x0;
  }
  return this;
}

// ---- HelpLayer::HelpLayer  @ 0x3539bc
/* HelpLayer::HelpLayer() */

HelpLayer * __thiscall HelpLayer::HelpLayer(HelpLayer *this)

{
  cocos2d::CCLayer::CCLayer((CCLayer *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_00912b68;
  *(undefined ***)(this + 0xe4) = &PTR__HelpLayer_1_00912d70;
  *(undefined **)(this + 0xe8) = &DAT_00912da0;
  *(undefined **)(this + 0xec) = &DAT_00912dac;
  return this;
}

// ---- HelpLayer::scene  @ 0x353a14
/* HelpLayer::scene() */

int * HelpLayer::scene(void)

{
  int *piVar1;
  undefined4 uVar2;
  
  piVar1 = (int *)cocos2d::CCScene::create();
  uVar2 = create();
  (**(code **)(*piVar1 + 200))(piVar1,uVar2);
  return piVar1;
}

// ---- HelpLayer::init  @ 0x353a48
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x00353ea4 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* HelpLayer::init() */

bool __thiscall HelpLayer::init(HelpLayer *this)

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
  float extraout_s1_05;
  undefined1 auStack_94 [3];
  char local_91;
  undefined1 auStack_90 [4];
  CCNode *local_8c;
  CCNode *local_88;
  CCMenuItem *local_84;
  CCMenuItem *local_80;
  undefined4 local_7c;
  float local_78;
  float local_74;
  CCSize local_70 [8];
  CCPoint aCStack_68 [8];
  CCPoint aCStack_60 [8];
  CCPoint aCStack_58 [8];
  undefined1 auStack_50 [8];
  code *local_48;
  undefined4 local_44;
  code *local_40;
  undefined4 local_3c;
  undefined1 local_38 [16];
  CCPoint aCStack_28 [16];
  
  local_91 = cocos2d::CCLayer::init((CCLayer *)this);
  bVar5 = local_91 == '\x01';
  if (bVar5) {
    this[0x108] = (HelpLayer)0x0;
    fVar6 = (float)cocos2d::CCSize::CCSize(local_70,(CCSize *)&screenSize);
    cocos2d::CCPoint::CCPoint(aCStack_68,fVar6,extraout_s1);
    uVar1 = cocos2d::CCSprite::create("title_ret2_new.png");
    *(undefined4 *)(this + 0x10c) = uVar1;
    (**(code **)(**(int **)(this + 0x10c) + 0x4c))(*(undefined4 *)(this + 0x10c),aCStack_68);
    (**(code **)(**(int **)(this + 0x10c) + 0x1a4))(*(undefined4 *)(this + 0x10c),0x23);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x10c));
    showWebView();
    local_8c = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_sml.png");
    local_88 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_sml.png");
    local_48 = (code *)0x354169;
    local_44 = 0;
    local_84 = (CCMenuItem *)
               cocos2d::CCMenuItemSprite::create
                         (local_8c,local_8c,(CCObject *)this,(_func_void_CCObject_ptr *)0x354169);
    uVar1 = cocos2d::CCMenu::create(local_84,0);
    *(undefined4 *)(this + 0x114) = uVar1;
    fVar6 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x114));
    pcVar4 = *(code **)(**(int **)(this + 0x114) + 0x4c);
    uVar1 = *(undefined4 *)(this + 0x114);
    cocos2d::CCPoint::CCPoint(aCStack_28,fVar6,extraout_s1_00);
    (*pcVar4)(uVar1,aCStack_28);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x114));
    local_40 = (code *)0x3541dd;
    local_3c = 0;
    local_80 = (CCMenuItem *)
               cocos2d::CCMenuItemSprite::create
                         (local_88,local_88,(CCObject *)this,(_func_void_CCObject_ptr *)0x3541dd);
    uVar1 = cocos2d::CCMenu::create(local_80,0);
    *(undefined4 *)(this + 0x11c) = uVar1;
    fVar6 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x11c));
    pcVar4 = *(code **)(**(int **)(this + 0x11c) + 0x4c);
    uVar1 = *(undefined4 *)(this + 0x11c);
    cocos2d::CCPoint::CCPoint(aCStack_28,fVar6,extraout_s1_01);
    (*pcVar4)(uVar1,aCStack_28);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x11c));
    local_7c = 0x3f0ccccd;
    local_78 = 24.0;
    local_74 = -8.0;
    pcVar2 = (char *)FUN_007c5300(&DAT_009504dc);
    uVar1 = cocos2d::CCLabelAtlas::create("BACK",pcVar2,0x20,0x20,0x20);
    *(undefined4 *)(this + 0x110) = uVar1;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x110));
    pcVar4 = *(code **)(**(int **)(this + 0x110) + 0x4c);
    uVar3 = *(undefined4 *)(this + 0x110);
    (**(code **)(**(int **)(this + 0x114) + 0x50))(*(undefined4 *)(this + 0x114));
    fVar6 = (float)(**(code **)(**(int **)(this + 0x114) + 0x50))(*(undefined4 *)(this + 0x114));
    cocos2d::CCPoint::CCPoint(aCStack_60,fVar6,extraout_s1_02);
    FUN_00352bd0(0,extraout_s1_02,SUB84((double)local_74,0),local_38);
    uVar1 = (**(code **)(**(int **)(this + 0x110) + 0x1fc))(*(undefined4 *)(this + 0x110));
    FUN_0079a3f4(auStack_94);
    FUN_007c6a60(auStack_90,uVar1,auStack_94);
    uVar1 = FUN_007c505c(auStack_90);
    VectorUnsignedToFloat(uVar1,(byte)(in_fpscr >> 0x16) & 3);
    fVar6 = (float)FUN_00352bd0(0,extraout_s1_02,SUB84((double)local_74,0),aCStack_28);
    cocos2d::CCPoint::CCPoint(aCStack_58,fVar6,extraout_s1_03);
    FUN_00352bb0(auStack_50,aCStack_60,aCStack_58);
    (*pcVar4)(uVar3,auStack_50);
    FUN_007c5914(auStack_90);
    FUN_0079a3fc(auStack_94);
    (**(code **)(**(int **)(this + 0x110) + 0x40))(*(undefined4 *)(this + 0x110),local_7c);
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x110),(int)local_78);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x110));
    pcVar2 = (char *)FUN_007c5300(&DAT_009504dc);
    uVar1 = cocos2d::CCLabelAtlas::create("ASK",pcVar2,0x20,0x20,0x20);
    *(undefined4 *)(this + 0x118) = uVar1;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x118));
    pcVar4 = *(code **)(**(int **)(this + 0x118) + 0x4c);
    uVar3 = *(undefined4 *)(this + 0x118);
    (**(code **)(**(int **)(this + 0x11c) + 0x50))(*(undefined4 *)(this + 0x11c));
    fVar6 = (float)(**(code **)(**(int **)(this + 0x11c) + 0x50))(*(undefined4 *)(this + 0x11c));
    cocos2d::CCPoint::CCPoint(aCStack_60,fVar6,extraout_s1_04);
    FUN_00352bd0(0,extraout_s1_04,SUB84((double)local_74,0),local_38);
    uVar1 = (**(code **)(**(int **)(this + 0x118) + 0x1fc))(*(undefined4 *)(this + 0x118));
    FUN_0079a3f4(auStack_94);
    FUN_007c6a60(auStack_90,uVar1,auStack_94);
    uVar1 = FUN_007c505c(auStack_90);
    VectorUnsignedToFloat(uVar1,(byte)(in_fpscr >> 0x16) & 3);
    fVar6 = (float)FUN_00352bd0(0,extraout_s1_04,SUB84((double)local_74,0),aCStack_28);
    cocos2d::CCPoint::CCPoint(aCStack_58,fVar6,extraout_s1_05);
    FUN_00352bb0(auStack_50,aCStack_60,aCStack_58);
    (*pcVar4)(uVar3,auStack_50);
    FUN_007c5914(auStack_90);
    FUN_0079a3fc(auStack_94);
    (**(code **)(**(int **)(this + 0x118) + 0x40))(*(undefined4 *)(this + 0x118),local_7c);
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x118),(int)local_78);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x118));
    ApplicationInterface::removeAdBanner();
  }
  return bVar5;
}

// ---- HelpLayer::~HelpLayer  @ 0x354030
/* WARNING: Removing unreachable block (ram,0x003540b8) */
/* HelpLayer::~HelpLayer() */

HelpLayer * __thiscall HelpLayer::~HelpLayer(HelpLayer *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_00912b68;
  *(undefined ***)(this + 0xe4) = &PTR__HelpLayer_1_00912d70;
  *(undefined **)(this + 0xe8) = &DAT_00912da0;
  *(undefined **)(this + 0xec) = &DAT_00912dac;
  cocos2d::CCObject::release(*(CCObject **)(this + 0x110));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x114));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x118));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x11c));
  ZYWebView::removeWebView();
  cocos2d::CCLayer::~CCLayer((CCLayer *)this);
  return this;
}

// ---- HelpLayer::~HelpLayer  @ 0x3540d4
/* non-virtual thunk to HelpLayer::~HelpLayer() */

void __thiscall HelpLayer::~HelpLayer(HelpLayer *this)

{
  ~HelpLayer(this + -0xe4);
  return;
}

// ---- HelpLayer::~HelpLayer  @ 0x3540dc
/* HelpLayer::~HelpLayer() */

HelpLayer * __thiscall HelpLayer::~HelpLayer(HelpLayer *this)

{
  ~HelpLayer(this);
  operator_delete(this);
  return this;
}

// ---- HelpLayer::~HelpLayer  @ 0x3540f8
/* non-virtual thunk to HelpLayer::~HelpLayer() */

void __thiscall HelpLayer::~HelpLayer(HelpLayer *this)

{
  ~HelpLayer(this + -0xe4);
  return;
}

// ---- HelpLayer::showWebView  @ 0x354100
/* HelpLayer::showWebView() */

void HelpLayer::showWebView(void)

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

// ---- HelpLayer::onBack  @ 0x354168
/* HelpLayer::onBack(cocos2d::CCObject*) */

void HelpLayer::onBack(CCObject *param_1)

{
  CCDirector *this;
  CCScene *pCVar1;
  float fVar2;
  
  if (param_1[0x108] == (CCObject)0x0) {
    param_1[0x108] = (CCObject)0x1;
    Sound::playSound(sndEng,0xd);
    this = (CCDirector *)cocos2d::CCDirector::sharedDirector();
    pCVar1 = DAT_00943368;
    fVar2 = (float)MenuLayer::scene();
    pCVar1 = (CCScene *)cocos2d::CCTransitionSlideInL::create(fVar2,pCVar1);
    cocos2d::CCDirector::replaceScene(this,pCVar1);
    ZYWebView::removeWebView();
  }
  return;
}

// ---- HelpLayer::onContact  @ 0x3541dc
/* HelpLayer::onContact(cocos2d::CCObject*) */

void HelpLayer::onContact(CCObject *param_1)

{
  CCObject *pCVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined1 auStack_38 [4];
  undefined1 auStack_34 [4];
  undefined1 auStack_30 [4];
  undefined1 auStack_2c [4];
  undefined1 auStack_28 [4];
  string asStack_24 [4];
  string asStack_20 [4];
  string asStack_1c [4];
  undefined1 auStack_18 [4];
  undefined1 auStack_14 [4];
  
  Sound::playSound(sndEng,0xd);
  FUN_0079a3f4(auStack_2c);
  FUN_007c6a60(auStack_18,"Email Support",auStack_2c);
  FUN_0079a3f4(auStack_28);
  FUN_007c6a60(auStack_14,"Choose an issue type.",auStack_28);
  FUN_0079a3f4(auStack_38);
  FUN_007c6a60(asStack_24,"QUESTION",auStack_38);
  pCVar1 = (CCObject *)cocos2d::CCString::create(asStack_24);
  FUN_0079a3f4(auStack_34);
  FUN_007c6a60(asStack_20,"PROBLEM",auStack_34);
  uVar2 = cocos2d::CCString::create(asStack_20);
  FUN_0079a3f4(auStack_30);
  FUN_007c6a60(asStack_1c,"CANCEL",auStack_30);
  uVar3 = cocos2d::CCString::create(asStack_1c);
  uVar2 = cocos2d::CCArray::create(pCVar1,uVar2,uVar3,0);
  AMessageBox::showAlert(0x3543a1,auStack_18,auStack_14,uVar2,0,param_1);
  FUN_007c5914(asStack_1c);
  FUN_0079a3fc(auStack_30);
  FUN_007c5914(asStack_20);
  FUN_0079a3fc(auStack_34);
  FUN_007c5914(asStack_24);
  FUN_0079a3fc(auStack_38);
  FUN_007c5914(auStack_14);
  FUN_0079a3fc(auStack_28);
  FUN_007c5914(auStack_18);
  FUN_0079a3fc(auStack_2c);
  ZYWebView::removeWebView();
  return;
}

// ---- HelpLayer::messageBoxHandler  @ 0x3543a0
/* HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*) */

void HelpLayer::messageBoxHandler(int param_1,CCObject *param_2,CCObject *param_3)

{
  bool bVar1;
  bool bVar2;
  bool bVar3;
  undefined4 uVar4;
  int iVar5;
  undefined4 uVar6;
  CCString *pCVar7;
  undefined4 uVar8;
  undefined4 uVar9;
  undefined1 auStack_80 [4];
  undefined1 auStack_7c [4];
  undefined1 auStack_78 [4];
  undefined1 auStack_74 [4];
  undefined1 auStack_70 [4];
  undefined1 auStack_6c [4];
  undefined1 auStack_68 [4];
  undefined1 auStack_64 [4];
  undefined1 auStack_60 [4];
  undefined1 auStack_5c [4];
  undefined1 auStack_58 [4];
  undefined1 auStack_54 [4];
  undefined1 auStack_50 [4];
  ApplicationInterface aAStack_4c [4];
  undefined1 auStack_48 [4];
  undefined1 auStack_44 [4];
  undefined1 auStack_40 [4];
  undefined1 auStack_3c [4];
  undefined1 auStack_38 [4];
  ApplicationInterface aAStack_34 [4];
  ApplicationInterface aAStack_30 [4];
  undefined1 auStack_2c [4];
  undefined1 auStack_28 [4];
  ApplicationInterface aAStack_24 [4];
  undefined1 auStack_20 [4];
  CCObject *local_1c;
  
  if (param_1 == 2) {
    local_1c = param_3;
    showWebView();
  }
  else {
    FUN_007c51b0(auStack_78);
    FUN_007c51b0(auStack_74);
    FUN_007c51b0(auStack_70);
    if (param_1 == 0) {
      uVar4 = NetworkManager::sharedNetworkManager();
      FUN_0079a3f4(auStack_20);
      FUN_007c6a60(auStack_6c,"DA2 Support Question",auStack_20);
      NetworkManager::urlEncode(auStack_68,uVar4,auStack_6c);
      FUN_007c52e8(auStack_78,auStack_68);
      FUN_007c5914(auStack_68);
      FUN_007c5914(auStack_6c);
      FUN_0079a3fc(auStack_20);
    }
    if (param_1 == 1) {
      uVar4 = NetworkManager::sharedNetworkManager();
      FUN_0079a3f4(auStack_20);
      FUN_007c6a60(auStack_64,"DA2 Support Issue",auStack_20);
      NetworkManager::urlEncode(auStack_60,uVar4,auStack_64);
      FUN_007c52e8(auStack_78,auStack_60);
      FUN_007c5914(auStack_60);
      FUN_007c5914(auStack_64);
      FUN_0079a3fc(auStack_20);
      FUN_007c62f0(auStack_70,"%0D%0A");
      uVar4 = NetworkManager::sharedNetworkManager();
      FUN_0079a3f4(auStack_20);
      FUN_007c6a60(auStack_5c,"--PLEASE WRITE ABOVE THIS LINE--",auStack_20);
      NetworkManager::urlEncode(auStack_58,uVar4,auStack_5c);
      FUN_007c6120(auStack_70,auStack_58);
      FUN_007c5914(auStack_58);
      FUN_007c5914(auStack_5c);
      FUN_0079a3fc(auStack_20);
      FUN_007c62f0(auStack_70,"%0D%0A");
      uVar4 = NetworkManager::sharedNetworkManager();
      FUN_0079a3f4(auStack_20);
      FUN_007c6a60(auStack_54,"------DA2-Diagnostics--START----",auStack_20);
      NetworkManager::urlEncode(auStack_50,uVar4,auStack_54);
      FUN_007c6120(auStack_70,auStack_50);
      FUN_007c5914(auStack_50);
      FUN_007c5914(auStack_54);
      FUN_0079a3fc(auStack_20);
      FUN_007c62f0(auStack_70,"%0D%0A");
      uVar4 = NetworkManager::sharedNetworkManager();
      ApplicationInterface::getDiagnosticProperties(aAStack_4c);
      NetworkManager::urlEncode(auStack_48,uVar4,aAStack_4c);
      FUN_007c6120(auStack_70,auStack_48);
      FUN_007c5914(auStack_48);
      FUN_007c5914(aAStack_4c);
      FUN_007c62f0(auStack_70,"%0D%0A");
      uVar4 = NetworkManager::sharedNetworkManager();
      FUN_0079a3f4(auStack_20);
      FUN_007c6a60(auStack_44,"------DA2-Diagnostics--END------",auStack_20);
      NetworkManager::urlEncode(auStack_40,uVar4,auStack_44);
      FUN_007c6120(auStack_70,auStack_40);
      FUN_007c5914(auStack_40);
      FUN_007c5914(auStack_44);
      FUN_0079a3fc(auStack_20);
      FUN_007c62f0(auStack_70,"%0D%0A");
      uVar4 = NetworkManager::sharedNetworkManager();
      FUN_0079a3f4(auStack_20);
      FUN_007c6a60(auStack_3c,"--PLEASE WRITE BELOW THIS LINE--",auStack_20);
      NetworkManager::urlEncode(auStack_38,uVar4,auStack_3c);
      FUN_007c6120(auStack_70,auStack_38);
      FUN_007c5914(auStack_38);
      FUN_007c5914(auStack_3c);
      FUN_0079a3fc(auStack_20);
      FUN_007c62f0(auStack_70,"%0D%0A");
      FUN_007c62f0(auStack_70,"%0D%0A");
    }
    iVar5 = ApplicationInterface::hasClaimedIdentity();
    bVar3 = false;
    bVar2 = false;
    bVar1 = false;
    if (iVar5 == 0) {
      iVar5 = ApplicationInterface::hasDeviceIdentity();
      if (iVar5 == 0) {
        NetworkManager::sharedNetworkManager();
        iVar5 = NetworkManager::hasCompletedSessionRequest();
        if (iVar5 == 0) {
          FUN_0079a3f4(auStack_80);
          bVar1 = true;
          FUN_007c6a60(aAStack_30,&DAT_007da338,auStack_80);
        }
        else {
          NetworkManager::sharedNetworkManager();
          NetworkManager::getPrivateClientToken();
        }
      }
      else {
        ApplicationInterface::getDeviceIdentity(aAStack_30);
      }
    }
    else {
      ApplicationInterface::getClaimedIdentity(aAStack_34);
      bVar3 = true;
      uVar4 = FUN_007c5300(aAStack_34);
      FUN_0079a3f4(auStack_7c);
      bVar2 = true;
      FUN_007c6a60(aAStack_30,uVar4,auStack_7c);
    }
    thunk_FUN_007c653c(auStack_74,aAStack_30);
    FUN_007c5914(aAStack_30);
    if (bVar1) {
      FUN_0079a3fc(auStack_80);
    }
    if (bVar2) {
      FUN_0079a3fc(auStack_7c);
    }
    if (bVar3) {
      FUN_007c5914(aAStack_34);
    }
    FUN_007c51b0(auStack_2c);
    iVar5 = ApplicationInterface::getPlatformId();
    if (iVar5 == 0x14) {
      FUN_007c5e70(auStack_2c,&DAT_007da344);
    }
    else if (iVar5 == 0x1e) {
      FUN_007c5e70(auStack_2c,&DAT_007da348);
    }
    else if (iVar5 == 10) {
      FUN_007c5e70(auStack_2c,&DAT_007da340);
    }
    else {
      FUN_007c5e70(auStack_2c,&DAT_007da34c);
    }
    uVar4 = FUN_007c5300(auStack_2c);
    ApplicationInterface::getAppVersion(aAStack_24);
    uVar6 = FUN_007c5300(aAStack_24);
    pCVar7 = (CCString *)cocos2d::CCString::createWithFormat("[%s:v%s]",uVar4,uVar6);
    uVar4 = cocos2d::CCString::getCString(pCVar7);
    FUN_0079a3f4(auStack_20);
    FUN_007c6a60(auStack_28,uVar4,auStack_20);
    FUN_0079a3fc(auStack_20);
    FUN_007c5914(aAStack_24);
    uVar4 = FUN_007c5300(auStack_78);
    uVar6 = FUN_007c5300(auStack_28);
    uVar8 = FUN_007c5300(auStack_74);
    uVar9 = FUN_007c5300(auStack_70);
    pCVar7 = (CCString *)
             cocos2d::CCString::createWithFormat
                       ("mailto:lawnwars@gmail.com?subject=%s%%20%s%%20(%s)&body=%s",uVar4,uVar6,
                        uVar8,uVar9);
    uVar4 = cocos2d::CCString::getCString(pCVar7);
    FUN_0079a3f4(auStack_20);
    FUN_007c6a60(aAStack_24,uVar4,auStack_20);
    FUN_0079a3fc(auStack_20);
    FUN_007c64e8(auStack_20,aAStack_24);
    ApplicationInterface::openURL(auStack_20);
    FUN_007c5914(auStack_20);
    FUN_007c5914(aAStack_24);
    FUN_007c5914(auStack_28);
    FUN_007c5914(auStack_2c);
    FUN_007c5914(auStack_70);
    FUN_007c5914(auStack_74);
    FUN_007c5914(auStack_78);
  }
  return;
}
