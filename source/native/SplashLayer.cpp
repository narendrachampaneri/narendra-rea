// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 14 functions

// ---- SplashLayer::create  @ 0x4094bc
/* SplashLayer::create() */

SplashLayer * SplashLayer::create(void)

{
  bool bVar1;
  SplashLayer *this;
  int iVar2;
  
  this = operator_new(0x120);
  SplashLayer(this);
  if ((this == (SplashLayer *)0x0) || (iVar2 = (**(code **)(*(int *)this + 0x18))(this), iVar2 == 0)
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
    if (this != (SplashLayer *)0x0) {
      (**(code **)(*(int *)this + 8))(this);
    }
    this = (SplashLayer *)0x0;
  }
  return this;
}

// ---- SplashLayer::SplashLayer  @ 0x40952c
/* SplashLayer::SplashLayer() */

SplashLayer * __thiscall SplashLayer::SplashLayer(SplashLayer *this)

{
  cocos2d::CCLayer::CCLayer((CCLayer *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_0091bdd8;
  *(undefined ***)(this + 0xe4) = &PTR__SplashLayer_1_0091bfe0;
  *(undefined **)(this + 0xe8) = &DAT_0091c010;
  *(undefined **)(this + 0xec) = &DAT_0091c01c;
  return this;
}

// ---- SplashLayer::scene  @ 0x409584
/* SplashLayer::scene() */

int * SplashLayer::scene(void)

{
  int *piVar1;
  undefined4 uVar2;
  
  piVar1 = (int *)cocos2d::CCScene::create();
  uVar2 = create();
  (**(code **)(*piVar1 + 200))(piVar1,uVar2);
  return piVar1;
}

// ---- SplashLayer::init  @ 0x4095b8
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x00409618 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* SplashLayer::init() */

bool SplashLayer::init(void)

{
  char cVar1;
  CCLayer *in_r0;
  undefined4 uVar2;
  char *pcVar3;
  char *pcVar4;
  NetworkManager *pNVar5;
  code *pcVar6;
  float fVar7;
  undefined4 in_s1;
  float extraout_s1;
  float extraout_s1_00;
  float extraout_s1_01;
  float extraout_s1_02;
  float extraout_s1_03;
  float extraout_s1_04;
  ApplicationInterface aAStack_48 [4];
  CCMenuItem *local_44;
  float local_40;
  float local_3c;
  code *local_38;
  undefined4 local_34;
  code *local_30;
  undefined4 local_2c;
  code *local_28;
  undefined4 local_24;
  undefined1 local_20 [16];
  
  cVar1 = cocos2d::CCLayer::init(in_r0);
  if (cVar1 == '\x01') {
    cocos2d::CCSize::CCSize((CCSize *)&local_40,(CCSize *)&screenSize);
    FUN_00408740(SUB84((double)(local_40 / 2.0),0),in_s1,SUB84((double)(local_3c / 2.0),0),local_20)
    ;
    in_r0[0x109] = (CCLayer)0x0;
    in_r0[0x108] = (CCLayer)0x0;
    local_38 = (code *)0x409ce1;
    local_34 = 0;
    local_44 = (CCMenuItem *)
               cocos2d::CCMenuItemImage::create
                         ("title_ret_new.png","title_ret_new.png",(CCObject *)in_r0,
                          (_func_void_CCObject_ptr *)0x409ce1);
    uVar2 = cocos2d::CCMenu::create(local_44,0);
    *(undefined4 *)(in_r0 + 0x118) = uVar2;
    fVar7 = (float)cocos2d::CCObject::retain(*(CCObject **)(in_r0 + 0x118));
    pcVar6 = *(code **)(**(int **)(in_r0 + 0x118) + 0x4c);
    uVar2 = *(undefined4 *)(in_r0 + 0x118);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_28,fVar7,extraout_s1);
    (*pcVar6)(uVar2,&local_28);
    (**(code **)(*(int *)in_r0 + 200))(in_r0,*(undefined4 *)(in_r0 + 0x118));
    ApplicationInterface::getAppVersion(aAStack_48);
    pcVar3 = (char *)FUN_007c5300(aAStack_48);
    pcVar4 = (char *)FUN_007c5300(&DAT_00952c7c);
    uVar2 = cocos2d::CCLabelAtlas::create(pcVar3,pcVar4,0x20,0x20,0x20);
    *(undefined4 *)(in_r0 + 0x10c) = uVar2;
    cocos2d::CCObject::retain(*(CCObject **)(in_r0 + 0x10c));
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(in_r0 + 0x10c),0x18);
    fVar7 = (float)(**(code **)(**(int **)(in_r0 + 0x10c) + 0x40))
                             (*(undefined4 *)(in_r0 + 0x10c),0x3e99999a);
    pcVar6 = *(code **)(**(int **)(in_r0 + 0x10c) + 0x4c);
    uVar2 = *(undefined4 *)(in_r0 + 0x10c);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_28,fVar7,extraout_s1_00);
    fVar7 = (float)(*pcVar6)(uVar2,&local_28);
    pcVar6 = *(code **)(**(int **)(in_r0 + 0x10c) + 0x7c);
    uVar2 = *(undefined4 *)(in_r0 + 0x10c);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_28,fVar7,extraout_s1_01);
    (*pcVar6)(uVar2,&local_28);
    (**(code **)(*(int *)in_r0 + 200))(in_r0,*(undefined4 *)(in_r0 + 0x10c));
    (**(code **)(**(int **)(in_r0 + 0x10c) + 0x1a4))(*(undefined4 *)(in_r0 + 0x10c),0x96);
    pcVar3 = (char *)FUN_007c5300(&DAT_00952c7c);
    uVar2 = cocos2d::CCLabelAtlas::create("TOUCH    START",pcVar3,0x20,0x20,0x20);
    *(undefined4 *)(in_r0 + 0x110) = uVar2;
    cocos2d::CCObject::retain(*(CCObject **)(in_r0 + 0x110));
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(in_r0 + 0x110),0x18);
    fVar7 = (float)(**(code **)(**(int **)(in_r0 + 0x110) + 0x40))
                             (*(undefined4 *)(in_r0 + 0x110),0x3ecccccd);
    pcVar6 = *(code **)(**(int **)(in_r0 + 0x110) + 0x4c);
    uVar2 = *(undefined4 *)(in_r0 + 0x110);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_28,fVar7,extraout_s1_02);
    (*pcVar6)(uVar2,&local_28);
    (**(code **)(**(int **)(in_r0 + 0x110) + 0x1a4))(*(undefined4 *)(in_r0 + 0x110),0);
    (**(code **)(*(int *)in_r0 + 200))(in_r0,*(undefined4 *)(in_r0 + 0x110));
    pcVar3 = (char *)FUN_007c5300(&DAT_00952c7c);
    uVar2 = cocos2d::CCLabelAtlas::create("LOADING",pcVar3,0x20,0x20,0x20);
    *(undefined4 *)(in_r0 + 0x114) = uVar2;
    cocos2d::CCObject::retain(*(CCObject **)(in_r0 + 0x114));
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(in_r0 + 0x114),0x1e);
    fVar7 = (float)(**(code **)(**(int **)(in_r0 + 0x114) + 0x40))
                             (*(undefined4 *)(in_r0 + 0x114),0x3f4ccccd);
    pcVar6 = *(code **)(**(int **)(in_r0 + 0x114) + 0x4c);
    uVar2 = *(undefined4 *)(in_r0 + 0x114);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_28,fVar7,extraout_s1_03);
    fVar7 = (float)(*pcVar6)(uVar2,&local_28);
    pcVar6 = *(code **)(**(int **)(in_r0 + 0x114) + 0x7c);
    uVar2 = *(undefined4 *)(in_r0 + 0x114);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_28,fVar7,extraout_s1_04);
    (*pcVar6)(uVar2,&local_28);
    fVar7 = (float)(**(code **)(*(int *)in_r0 + 200))(in_r0,*(undefined4 *)(in_r0 + 0x114));
    *(undefined4 *)(in_r0 + 0x11c) = 0;
    local_30 = (code *)0x409ddd;
    local_2c = 0;
    cocos2d::CCNode::schedule((_func_void_float *)in_r0,fVar7);
    local_28 = (code *)0x409b31;
    local_24 = 0;
    cocos2d::CCNode::schedule((_func_void_float *)in_r0);
    pNVar5 = (NetworkManager *)NetworkManager::sharedNetworkManager();
    NetworkManager::authenticateLocalPlayer(pNVar5);
    pNVar5 = (NetworkManager *)NetworkManager::sharedNetworkManager();
    NetworkManager::rak_detectNATType(pNVar5);
    FUN_007c5914(aAStack_48);
  }
  return cVar1 == '\x01';
}

// ---- SplashLayer::~SplashLayer  @ 0x409a30
/* WARNING: Removing unreachable block (ram,0x00409abc) */
/* SplashLayer::~SplashLayer() */

SplashLayer * __thiscall SplashLayer::~SplashLayer(SplashLayer *this)

{
  CCNotificationCenter *this_00;
  
  *(undefined ***)this = &PTR_copyWithZone_1_0091bdd8;
  *(undefined ***)(this + 0xe4) = &PTR__SplashLayer_1_0091bfe0;
  *(undefined **)(this + 0xe8) = &DAT_0091c010;
  *(undefined **)(this + 0xec) = &DAT_0091c01c;
  this_00 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::removeAllObservers(this_00,(CCObject *)this);
  cocos2d::CCObject::release(*(CCObject **)(this + 0x118));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x10c));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x110));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x114));
  cocos2d::CCLayer::~CCLayer((CCLayer *)this);
  return this;
}

// ---- SplashLayer::~SplashLayer  @ 0x409ad4
/* non-virtual thunk to SplashLayer::~SplashLayer() */

void __thiscall SplashLayer::~SplashLayer(SplashLayer *this)

{
  ~SplashLayer(this + -0xe4);
  return;
}

// ---- SplashLayer::~SplashLayer  @ 0x409adc
/* SplashLayer::~SplashLayer() */

SplashLayer * __thiscall SplashLayer::~SplashLayer(SplashLayer *this)

{
  ~SplashLayer(this);
  operator_delete(this);
  return this;
}

// ---- SplashLayer::~SplashLayer  @ 0x409af8
/* non-virtual thunk to SplashLayer::~SplashLayer() */

void __thiscall SplashLayer::~SplashLayer(SplashLayer *this)

{
  ~SplashLayer(this + -0xe4);
  return;
}

// ---- SplashLayer::onEnter  @ 0x409b00
/* SplashLayer::onEnter() */

void __thiscall SplashLayer::onEnter(SplashLayer *this)

{
  cocos2d::CCLayer::onEnter((CCLayer *)this);
  return;
}

// ---- SplashLayer::onExit  @ 0x409b14
/* SplashLayer::onExit() */

void __thiscall SplashLayer::onExit(SplashLayer *this)

{
  cocos2d::CCNode::unscheduleAllSelectors((CCNode *)this);
  cocos2d::CCLayer::onExit((CCLayer *)this);
  return;
}

// ---- SplashLayer::updateStep  @ 0x409b30
/* SplashLayer::updateStep(float) */

void __thiscall SplashLayer::updateStep(SplashLayer *this,float param_1)

{
  Sound SVar1;
  Sound *pSVar2;
  CCUserDefault *pCVar3;
  undefined4 extraout_r0;
  float in_r1;
  undefined4 extraout_r1;
  undefined4 uVar4;
  code *pcVar5;
  float fVar6;
  undefined4 in_s1;
  double dVar7;
  undefined1 auStack_18 [4];
  undefined1 auStack_14 [8];
  
  if (this[0x109] == (SplashLayer)0x1) {
    *(float *)(this + 0x11c) = *(float *)(this + 0x11c) + in_r1;
    if (4.3 < *(float *)(this + 0x11c)) {
      pcVar5 = *(code **)(**(int **)(this + 0x110) + 0x1a4);
      uVar4 = *(undefined4 *)(this + 0x110);
      cos((double)CONCAT44(in_s1,param_1));
      dVar7 = (double)CONCAT44(extraout_r1,extraout_r0) * 125.0 + 125.0;
      (*pcVar5)(uVar4,(uint)(0.0 < dVar7) * (int)(longlong)dVar7 & 0xff);
    }
    fVar6 = (float)NetworkManager::sharedNetworkManager();
    NetworkManager::updateNetworkObjects(fVar6);
  }
  else {
    pSVar2 = operator_new(0x38);
    Sound::Sound(pSVar2);
    sndEng = pSVar2;
    pCVar3 = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
    SVar1 = (Sound)cocos2d::CCUserDefault::getBoolForKey(pCVar3,"Sound",true);
    pSVar2[0x28] = SVar1;
    pSVar2 = sndEng;
    pCVar3 = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
    SVar1 = (Sound)cocos2d::CCUserDefault::getBoolForKey(pCVar3,"Music",true);
    pSVar2[0x29] = SVar1;
    this[0x109] = (SplashLayer)0x1;
    pSVar2 = sndEng;
    FUN_0079a3f4(auStack_18);
    FUN_007c6a60(auStack_14,"presMix.mp3",auStack_18);
    Sound::playMusicFile(pSVar2,auStack_14,0x3f000000,1);
    FUN_007c5914(auStack_14);
    FUN_0079a3fc(auStack_18);
    (**(code **)(**(int **)(this + 0x114) + 0x90))(*(undefined4 *)(this + 0x114),0);
  }
  return;
}

// ---- SplashLayer::onProceed  @ 0x409ce0
/* SplashLayer::onProceed(cocos2d::CCObject*) */

void SplashLayer::onProceed(CCObject *param_1)

{
  CCTransitionFade *this;
  LeaderBoardBridge *this_00;
  AchievementBridge *this_01;
  CCDirector *this_02;
  CCScene *pCVar1;
  float extraout_s0;
  
  if ((param_1[0x109] == (CCObject)0x1) && (param_1[0x108] == (CCObject)0x0)) {
    param_1[0x108] = (CCObject)0x1;
    Sound::playSound(sndEng,0xd);
    this_00 = (LeaderBoardBridge *)LeaderBoardBridge::sharedLeaderBoardBridge();
    LeaderBoardBridge::getServerScores(this_00);
    this_01 = (AchievementBridge *)AchievementBridge::sharedAchievementBridge();
    AchievementBridge::getServerProgress(this_01);
    this_02 = (CCDirector *)cocos2d::CCDirector::sharedDirector();
    this = DAT_0094368c;
    pCVar1 = (CCScene *)MenuLayer::scene();
    pCVar1 = (CCScene *)cocos2d::CCTransitionFade::create(this,extraout_s0,pCVar1);
    cocos2d::CCDirector::replaceScene(this_02,pCVar1);
  }
  return;
}

// ---- SplashLayer::onStartedMatchFromMMVC  @ 0x409d6c
/* SplashLayer::onStartedMatchFromMMVC() */

void SplashLayer::onStartedMatchFromMMVC(void)

{
  CCTransitionFade *this;
  CCDirector *this_00;
  CCScene *pCVar1;
  float extraout_s0;
  
  s_bSinglePlayer = 0;
  gameType = 4;
  mapType = 3;
  Sound::playSound(sndEng,0xd);
  this_00 = (CCDirector *)cocos2d::CCDirector::sharedDirector();
  this = DAT_0094368c;
  pCVar1 = (CCScene *)LobbyLayer::scene();
  pCVar1 = (CCScene *)cocos2d::CCTransitionFade::create(this,extraout_s0,pCVar1);
  cocos2d::CCDirector::replaceScene(this_00,pCVar1);
  return;
}

// ---- SplashLayer::inviteCheck  @ 0x409ddc
/* SplashLayer::inviteCheck(float) */

void SplashLayer::inviteCheck(float param_1)

{
  NetworkManager *pNVar1;
  int iVar2;
  
  pNVar1 = (NetworkManager *)NetworkManager::sharedNetworkManager();
  iVar2 = NetworkManager::getWasInvited(pNVar1);
  if (iVar2 != 0) {
    pNVar1 = (NetworkManager *)NetworkManager::sharedNetworkManager();
    NetworkManager::setWasInvited(pNVar1,false);
    onStartedMatchFromMMVC();
  }
  return;
}
