// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 12 functions

// ---- LobbyOptionsLayer::create  @ 0x3a7e64
/* LobbyOptionsLayer::create() */

LobbyOptionsLayer * LobbyOptionsLayer::create(void)

{
  bool bVar1;
  LobbyOptionsLayer *this;
  int iVar2;
  
  this = operator_new(0x114);
  LobbyOptionsLayer(this);
  if ((this == (LobbyOptionsLayer *)0x0) ||
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
    if (this != (LobbyOptionsLayer *)0x0) {
      (**(code **)(*(int *)this + 8))(this);
    }
    this = (LobbyOptionsLayer *)0x0;
  }
  return this;
}

// ---- LobbyOptionsLayer::LobbyOptionsLayer  @ 0x3a7f6c
/* LobbyOptionsLayer::LobbyOptionsLayer() */

LobbyOptionsLayer * __thiscall LobbyOptionsLayer::LobbyOptionsLayer(LobbyOptionsLayer *this)

{
  cocos2d::CCNode::CCNode((CCNode *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_009171c0;
  return this;
}

// ---- LobbyOptionsLayer::init  @ 0x3a7f98
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003a823a */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* LobbyOptionsLayer::init() */

bool __thiscall LobbyOptionsLayer::init(LobbyOptionsLayer *this)

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
  float extraout_s1_06;
  float extraout_s1_07;
  float extraout_s1_08;
  float extraout_s1_09;
  float extraout_s1_10;
  float extraout_s1_11;
  float extraout_s1_12;
  float extraout_s1_13;
  float extraout_s1_14;
  undefined1 auStack_f0 [3];
  char local_ed;
  undefined1 auStack_ec [4];
  undefined4 local_e8;
  float local_e4;
  float local_e0;
  CCNode *local_dc;
  CCNode *local_d8;
  CCNode *local_d4;
  CCNode *local_d0;
  CCNode *local_cc;
  CCNode *local_c8;
  CCNode *local_c4;
  CCNode *local_c0;
  CCNode *local_bc;
  CCNode *local_b8;
  CCMenuItem *local_b4;
  CCMenuItem *local_b0;
  CCMenuItem *local_ac;
  uint local_a8;
  undefined4 local_a4;
  CCMenuItem *local_a0;
  CCMenuItem *local_9c;
  CCSize aCStack_98 [8];
  float local_90;
  float local_8c;
  undefined1 auStack_88 [8];
  undefined1 auStack_80 [8];
  undefined1 auStack_78 [8];
  CCPoint aCStack_70 [8];
  code *local_68;
  undefined4 local_64;
  code *local_60;
  undefined4 local_5c;
  code *local_58;
  undefined4 local_54;
  code *local_50;
  undefined4 local_4c;
  code *local_48;
  undefined4 local_44;
  undefined1 local_40 [16];
  CCPoint aCStack_30 [20];
  
  local_ed = cocos2d::CCNode::init();
  bVar5 = local_ed == '\x01';
  if (bVar5) {
    fVar6 = (float)cocos2d::CCSize::CCSize(aCStack_98,(CCSize *)&screenSize);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_90,fVar6,extraout_s1);
    this[0xe4] = (LobbyOptionsLayer)0x0;
    local_e8 = 0x3f0ccccd;
    local_e4 = 24.0;
    local_e0 = -8.0;
    local_dc = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_mid.png");
    local_d8 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_mid.png");
    local_d4 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_mid.png");
    local_d0 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_mid.png");
    local_cc = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_mid.png");
    local_c8 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_mid.png");
    local_c4 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_right.png");
    local_c0 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_right.png");
    local_bc = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_left.png");
    local_b8 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_left.png");
    local_68 = (code *)0x3a8eb5;
    local_64 = 0;
    local_b4 = (CCMenuItem *)
               cocos2d::CCMenuItemSprite::create
                         (local_dc,local_d8,(CCObject *)this,(_func_void_CCObject_ptr *)0x3a8eb5);
    local_60 = (code *)0x3a8f81;
    local_5c = 0;
    local_b0 = (CCMenuItem *)
               cocos2d::CCMenuItemSprite::create
                         (local_d4,local_d0,(CCObject *)this,(_func_void_CCObject_ptr *)0x3a8f81);
    local_58 = (code *)0x3a8ff9;
    local_54 = 0;
    local_ac = (CCMenuItem *)
               cocos2d::CCMenuItemSprite::create
                         (local_cc,local_c8,(CCObject *)this,(_func_void_CCObject_ptr *)0x3a8ff9);
    uVar1 = cocos2d::CCMenu::create(local_b4,0);
    *(undefined4 *)(this + 0xf8) = uVar1;
    fVar6 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0xf8));
    pcVar4 = *(code **)(**(int **)(this + 0xf8) + 0x4c);
    uVar1 = *(undefined4 *)(this + 0xf8);
    cocos2d::CCPoint::CCPoint(aCStack_30,fVar6,extraout_s1_00);
    (*pcVar4)(uVar1,aCStack_30);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0xf8));
    local_a8 = 0x20;
    pcVar2 = (char *)FUN_007c5300(&DAT_00951054);
    uVar1 = cocos2d::CCLabelAtlas::create("DONE",pcVar2,0x20,0x20,local_a8);
    *(undefined4 *)(this + 0xf4) = uVar1;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0xf4));
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0xf4),(int)local_e4);
    (**(code **)(**(int **)(this + 0xf4) + 0x40))(*(undefined4 *)(this + 0xf4),local_e8);
    (**(code **)(**(int **)(this + 0xf8) + 0x50))(*(undefined4 *)(this + 0xf8));
    fVar6 = (float)(**(code **)(**(int **)(this + 0xf8) + 0x50))(*(undefined4 *)(this + 0xf8));
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_50,fVar6,extraout_s1_01);
    FUN_003a7078(0,extraout_s1_01,SUB84((double)local_e0,0),local_40);
    uVar1 = (**(code **)(**(int **)(this + 0xf4) + 0x1fc))(*(undefined4 *)(this + 0xf4));
    FUN_0079a3f4(auStack_78);
    FUN_007c6a60(aCStack_70,uVar1,auStack_78);
    uVar1 = FUN_007c505c(aCStack_70);
    VectorUnsignedToFloat(uVar1,(byte)(in_fpscr >> 0x16) & 3);
    fVar6 = (float)FUN_003a7078(0,extraout_s1_01,SUB84((double)local_e0,0),aCStack_30);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_48,fVar6,extraout_s1_02);
    FUN_003a7058(auStack_88,&local_50,&local_48);
    FUN_007c5914(aCStack_70);
    FUN_0079a3fc(auStack_78);
    (**(code **)(**(int **)(this + 0xf4) + 0x4c))(*(undefined4 *)(this + 0xf4),auStack_88);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0xf4));
    uVar1 = cocos2d::CCMenu::create(local_ac,0);
    *(undefined4 *)(this + 0x100) = uVar1;
    fVar6 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x100));
    pcVar4 = *(code **)(**(int **)(this + 0x100) + 0x4c);
    uVar1 = *(undefined4 *)(this + 0x100);
    cocos2d::CCPoint::CCPoint(aCStack_30,fVar6,extraout_s1_03);
    (*pcVar4)(uVar1,aCStack_30);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x100));
    pcVar2 = (char *)FUN_007c5300(&DAT_00951054);
    uVar1 = cocos2d::CCLabelAtlas::create("GAME STATS",pcVar2,0x20,0x20,local_a8);
    *(undefined4 *)(this + 0xfc) = uVar1;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0xfc));
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0xfc),(int)local_e4);
    (**(code **)(**(int **)(this + 0xfc) + 0x40))(*(undefined4 *)(this + 0xfc),local_e8);
    (**(code **)(**(int **)(this + 0x100) + 0x50))(*(undefined4 *)(this + 0x100));
    fVar6 = (float)(**(code **)(**(int **)(this + 0x100) + 0x50))(*(undefined4 *)(this + 0x100));
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_50,fVar6,extraout_s1_04);
    FUN_003a7078(0,extraout_s1_04,SUB84((double)local_e0,0),local_40);
    uVar1 = (**(code **)(**(int **)(this + 0xfc) + 0x1fc))(*(undefined4 *)(this + 0xfc));
    FUN_0079a3f4(auStack_78);
    FUN_007c6a60(aCStack_70,uVar1,auStack_78);
    uVar1 = FUN_007c505c(aCStack_70);
    VectorUnsignedToFloat(uVar1,(byte)(in_fpscr >> 0x16) & 3);
    fVar6 = (float)FUN_003a7078(0,extraout_s1_04,SUB84((double)local_e0,0),aCStack_30);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_48,fVar6,extraout_s1_05);
    FUN_003a7058(auStack_80,&local_50,&local_48);
    FUN_007c5914(aCStack_70);
    FUN_0079a3fc(auStack_78);
    (**(code **)(**(int **)(this + 0xfc) + 0x4c))(*(undefined4 *)(this + 0xfc),auStack_80);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0xfc));
    uVar1 = cocos2d::CCMenu::create(local_b0,0);
    *(undefined4 *)(this + 0xf0) = uVar1;
    fVar6 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0xf0));
    pcVar4 = *(code **)(**(int **)(this + 0xf0) + 0x4c);
    uVar1 = *(undefined4 *)(this + 0xf0);
    cocos2d::CCPoint::CCPoint(aCStack_30,fVar6,extraout_s1_06);
    (*pcVar4)(uVar1,aCStack_30);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0xf0));
    pcVar2 = (char *)FUN_007c5300(&DAT_00951054);
    uVar1 = cocos2d::CCLabelAtlas::create("CHAT",pcVar2,0x20,0x20,local_a8);
    *(undefined4 *)(this + 0xec) = uVar1;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0xec));
    pcVar4 = *(code **)(**(int **)(this + 0xec) + 0x4c);
    uVar3 = *(undefined4 *)(this + 0xec);
    (**(code **)(**(int **)(this + 0xf0) + 0x50))(*(undefined4 *)(this + 0xf0));
    fVar6 = (float)(**(code **)(**(int **)(this + 0xf0) + 0x50))(*(undefined4 *)(this + 0xf0));
    cocos2d::CCPoint::CCPoint(aCStack_70,fVar6,extraout_s1_07);
    FUN_003a7078(0,extraout_s1_07,SUB84((double)(local_e0 + 13.0),0),local_40);
    uVar1 = (**(code **)(**(int **)(this + 0xec) + 0x1fc))(*(undefined4 *)(this + 0xec));
    FUN_0079a3f4(auStack_ec);
    FUN_007c6a60(auStack_78,uVar1,auStack_ec);
    uVar1 = FUN_007c505c(auStack_78);
    VectorUnsignedToFloat(uVar1,(byte)(in_fpscr >> 0x16) & 3);
    fVar6 = (float)FUN_003a7078(0,extraout_s1_07,SUB84((double)(local_e0 + 13.0),0),aCStack_30);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_50,fVar6,extraout_s1_08);
    FUN_003a7058(&local_48,aCStack_70,&local_50);
    (*pcVar4)(uVar3,&local_48);
    FUN_007c5914(auStack_78);
    FUN_0079a3fc(auStack_ec);
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0xec),(int)local_e4);
    (**(code **)(**(int **)(this + 0xec) + 0x40))(*(undefined4 *)(this + 0xec),0x3e99999a);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0xec));
    pcVar2 = (char *)FUN_007c5300(&DAT_00951054);
    uVar1 = cocos2d::CCLabelAtlas::create("FILTER:NONE",pcVar2,0x20,0x20,local_a8);
    *(undefined4 *)(this + 0xe8) = uVar1;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0xe8));
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0xe8),(int)local_e4);
    (**(code **)(**(int **)(this + 0xe8) + 0x40))(*(undefined4 *)(this + 0xe8),local_e8);
    (**(code **)(**(int **)(this + 0xf0) + 0x50))(*(undefined4 *)(this + 0xf0));
    fVar6 = (float)(**(code **)(**(int **)(this + 0xf0) + 0x50))(*(undefined4 *)(this + 0xf0));
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_50,fVar6,extraout_s1_09);
    FUN_003a7078(0,extraout_s1_09,SUB84((double)(local_e0 - 5.0),0),local_40);
    uVar1 = (**(code **)(**(int **)(this + 0xe8) + 0x1fc))(*(undefined4 *)(this + 0xe8));
    FUN_0079a3f4(auStack_ec);
    FUN_007c6a60(aCStack_70,uVar1,auStack_ec);
    uVar1 = FUN_007c505c(aCStack_70);
    VectorUnsignedToFloat(uVar1,(byte)(in_fpscr >> 0x16) & 3);
    fVar6 = (float)FUN_003a7078(0,extraout_s1_09,SUB84((double)(local_e0 - 5.0),0),aCStack_30);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_48,fVar6,extraout_s1_10);
    FUN_003a7058(auStack_78,&local_50,&local_48);
    FUN_007c5914(aCStack_70);
    FUN_0079a3fc(auStack_ec);
    (**(code **)(**(int **)(this + 0xe8) + 0x4c))(*(undefined4 *)(this + 0xe8),auStack_78);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0xe8));
    local_a4 = 0x42820000;
    local_50 = (code *)0x3a9105;
    local_4c = 0;
    local_a0 = (CCMenuItem *)
               cocos2d::CCMenuItemSprite::create
                         (local_c4,local_c0,(CCObject *)this,(_func_void_CCObject_ptr *)0x3a9105);
    uVar1 = cocos2d::CCMenu::create(local_a0,0);
    *(undefined4 *)(this + 0x108) = uVar1;
    fVar6 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x108));
    pcVar4 = *(code **)(**(int **)(this + 0x108) + 0x4c);
    uVar1 = *(undefined4 *)(this + 0x108);
    cocos2d::CCPoint::CCPoint(aCStack_30,fVar6,extraout_s1_11);
    (*pcVar4)(uVar1,aCStack_30);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x108));
    local_48 = (code *)0x3a90a9;
    local_44 = 0;
    local_9c = (CCMenuItem *)
               cocos2d::CCMenuItemSprite::create
                         (local_bc,local_b8,(CCObject *)this,(_func_void_CCObject_ptr *)0x3a90a9);
    uVar1 = cocos2d::CCMenu::create(local_9c,0);
    *(undefined4 *)(this + 0x10c) = uVar1;
    fVar6 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x10c));
    pcVar4 = *(code **)(**(int **)(this + 0x10c) + 0x4c);
    uVar1 = *(undefined4 *)(this + 0x10c);
    cocos2d::CCPoint::CCPoint(aCStack_30,fVar6,extraout_s1_12);
    (*pcVar4)(uVar1,aCStack_30);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x10c));
    uVar1 = cocos2d::CCSprite::createWithSpriteFrameName("team_mask.png");
    *(undefined4 *)(this + 0x110) = uVar1;
    fVar6 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x110));
    pcVar4 = *(code **)(**(int **)(this + 0x110) + 0x4c);
    uVar1 = *(undefined4 *)(this + 0x110);
    cocos2d::CCPoint::CCPoint(aCStack_30,fVar6,extraout_s1_13);
    (*pcVar4)(uVar1,aCStack_30);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x110));
    (**(code **)(**(int **)(this + 0x110) + 0x1bc))
              (*(undefined4 *)(this + 0x110),teamColors + playerTeam * 3);
    pcVar2 = (char *)FUN_007c5300(&DAT_00951054);
    uVar1 = cocos2d::CCLabelAtlas::create("TEAM",pcVar2,0x20,0x20,local_a8);
    *(undefined4 *)(this + 0x104) = uVar1;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x104));
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x104),(int)local_e4);
    (**(code **)(**(int **)(this + 0x104) + 0x40))(*(undefined4 *)(this + 0x104),local_e8);
    FUN_003a7078(SUB84((double)(local_90 - 2.0),0),extraout_s1_13,
                 SUB84((double)(local_8c + local_e0 + 25.0),0),local_40);
    uVar1 = (**(code **)(**(int **)(this + 0x104) + 0x1fc))(*(undefined4 *)(this + 0x104));
    FUN_0079a3f4(auStack_f0);
    FUN_007c6a60(auStack_ec,uVar1,auStack_f0);
    uVar1 = FUN_007c505c(auStack_ec);
    VectorUnsignedToFloat(uVar1,(byte)(in_fpscr >> 0x16) & 3);
    fVar6 = (float)FUN_003a7078(SUB84((double)(local_90 - 2.0),0),extraout_s1_13,
                                SUB84((double)(local_8c + local_e0 + 25.0),0),aCStack_30);
    cocos2d::CCPoint::CCPoint(aCStack_70,fVar6,extraout_s1_14);
    FUN_007c5914(auStack_ec);
    FUN_0079a3fc(auStack_f0);
    (**(code **)(**(int **)(this + 0x104) + 0x4c))(*(undefined4 *)(this + 0x104),aCStack_70);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x104));
    updateChatLabel(this,chatMask);
    updateTeamColor(this);
  }
  return bVar5;
}

// ---- LobbyOptionsLayer::~LobbyOptionsLayer  @ 0x3a8dc8
/* WARNING: Removing unreachable block (ram,0x003a8e7e) */
/* LobbyOptionsLayer::~LobbyOptionsLayer() */

LobbyOptionsLayer * __thiscall LobbyOptionsLayer::~LobbyOptionsLayer(LobbyOptionsLayer *this)

{
  CCNotificationCenter *this_00;
  
  *(undefined ***)this = &PTR_copyWithZone_1_009171c0;
  this_00 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::removeAllObservers(this_00,(CCObject *)this);
  cocos2d::CCObject::release(*(CCObject **)(this + 0x110));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x100));
  cocos2d::CCObject::release(*(CCObject **)(this + 0xfc));
  cocos2d::CCObject::release(*(CCObject **)(this + 0xf8));
  cocos2d::CCObject::release(*(CCObject **)(this + 0xf4));
  cocos2d::CCObject::release(*(CCObject **)(this + 0xf0));
  cocos2d::CCObject::release(*(CCObject **)(this + 0xec));
  cocos2d::CCObject::release(*(CCObject **)(this + 0xe8));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x10c));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x108));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x104));
  cocos2d::CCNode::~CCNode((CCNode *)this);
  return this;
}

// ---- LobbyOptionsLayer::~LobbyOptionsLayer  @ 0x3a8e98
/* LobbyOptionsLayer::~LobbyOptionsLayer() */

LobbyOptionsLayer * __thiscall LobbyOptionsLayer::~LobbyOptionsLayer(LobbyOptionsLayer *this)

{
  ~LobbyOptionsLayer(this);
  operator_delete(this);
  return this;
}

// ---- LobbyOptionsLayer::onDone  @ 0x3a8eb4
/* LobbyOptionsLayer::onDone(cocos2d::CCObject*) */

void LobbyOptionsLayer::onDone(CCObject *param_1)

{
  CCNotificationCenter *this;
  
  Sound::playSound(sndEng,0xd);
  this = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::postNotification(this,"LobbyOptionDone",(CCObject *)0x0);
  return;
}

// ---- LobbyOptionsLayer::updateChatLabel  @ 0x3a8ef4
/* LobbyOptionsLayer::updateChatLabel(int) */

void __thiscall LobbyOptionsLayer::updateChatLabel(LobbyOptionsLayer *this,int param_1)

{
  if (param_1 == 1) {
    (**(code **)(**(int **)(this + 0xe8) + 0x1f8))(*(undefined4 *)(this + 0xe8),"FILTER:SEMI");
  }
  else if (param_1 == 2) {
    (**(code **)(**(int **)(this + 0xe8) + 0x1f8))(*(undefined4 *)(this + 0xe8),"FILTER:FULL");
  }
  else if (param_1 == 0) {
    (**(code **)(**(int **)(this + 0xe8) + 0x1f8))(*(undefined4 *)(this + 0xe8),"FILTER:NONE");
  }
  return;
}

// ---- LobbyOptionsLayer::onChat  @ 0x3a8f80
/* LobbyOptionsLayer::onChat(cocos2d::CCObject*) */

void LobbyOptionsLayer::onChat(CCObject *param_1)

{
  CCUserDefault *this;
  
  Sound::playSound(sndEng,0xd);
  chatMask = chatMask + 1;
  if (2 < chatMask) {
    chatMask = 0;
  }
  this = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
  cocos2d::CCUserDefault::setIntegerForKey(this,"ChatMask",chatMask);
  updateChatLabel((LobbyOptionsLayer *)param_1,chatMask);
  return;
}

// ---- LobbyOptionsLayer::onStats  @ 0x3a8ff8
/* LobbyOptionsLayer::onStats(cocos2d::CCObject*) */

void LobbyOptionsLayer::onStats(CCObject *param_1)

{
  CCNotificationCenter *this;
  
  Sound::playSound(sndEng,0xd);
  this = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::postNotification(this,"ShowGameStats",(CCObject *)0x0);
  return;
}

// ---- LobbyOptionsLayer::updateTeamColor  @ 0x3a9038
/* LobbyOptionsLayer::updateTeamColor() */

void __thiscall LobbyOptionsLayer::updateTeamColor(LobbyOptionsLayer *this)

{
  (**(code **)(**(int **)(this + 0x110) + 0x90))(*(undefined4 *)(this + 0x110),playerTeam != 0);
  (**(code **)(**(int **)(this + 0x110) + 0x1bc))
            (*(undefined4 *)(this + 0x110),teamColors + playerTeam * 3);
  return;
}

// ---- LobbyOptionsLayer::onPrevTeam  @ 0x3a90a8
/* LobbyOptionsLayer::onPrevTeam(cocos2d::CCObject*) */

void LobbyOptionsLayer::onPrevTeam(CCObject *param_1)

{
  playerTeam = playerTeam + -1;
  if (playerTeam < 0) {
    playerTeam = teamColorCount + -1;
  }
  Sound::playSound(sndEng,0xd);
  updateTeamColor((LobbyOptionsLayer *)param_1);
  return;
}

// ---- LobbyOptionsLayer::onNextTeam  @ 0x3a9104
/* LobbyOptionsLayer::onNextTeam(cocos2d::CCObject*) */

void LobbyOptionsLayer::onNextTeam(CCObject *param_1)

{
  playerTeam = playerTeam + 1;
  if (teamColorCount <= playerTeam) {
    playerTeam = 0;
  }
  Sound::playSound(sndEng,0xe);
  updateTeamColor((LobbyOptionsLayer *)param_1);
  return;
}
