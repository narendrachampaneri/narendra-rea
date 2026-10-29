// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 14 functions

// ---- LobbyRow::create  @ 0x3a7ed4
/* LobbyRow::create() */

LobbyRow * LobbyRow::create(void)

{
  bool bVar1;
  LobbyRow *this;
  int iVar2;
  
  this = operator_new(0x11c);
  LobbyRow(this);
  if ((this == (LobbyRow *)0x0) || (iVar2 = (**(code **)(*(int *)this + 0x18))(this), iVar2 == 0)) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (bVar1) {
    cocos2d::CCObject::autorelease((CCObject *)this);
  }
  else {
    if (this != (LobbyRow *)0x0) {
      (**(code **)(*(int *)this + 8))(this);
    }
    this = (LobbyRow *)0x0;
  }
  return this;
}

// ---- LobbyRow::LobbyRow  @ 0x3a9160
/* LobbyRow::LobbyRow() */

LobbyRow * __thiscall LobbyRow::LobbyRow(LobbyRow *this)

{
  cocos2d::CCNode::CCNode((CCNode *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_00917018;
  FUN_007c51b0(this + 0xf4);
  cocos2d::CCPoint::CCPoint((CCPoint *)(this + 0x104));
  return this;
}

// ---- LobbyRow::init  @ 0x3a91bc
/* LobbyRow::init() */

bool __thiscall LobbyRow::init(LobbyRow *this)

{
  char cVar1;
  undefined4 uVar2;
  code *pcVar3;
  float extraout_s0;
  float extraout_s0_00;
  float fVar4;
  float extraout_s0_01;
  float extraout_s0_02;
  float extraout_s1;
  undefined8 uVar5;
  float extraout_s1_00;
  float extraout_s1_01;
  float extraout_s1_02;
  float extraout_s2;
  float extraout_s2_00;
  float extraout_s2_01;
  float extraout_s3;
  float extraout_s3_00;
  float extraout_s3_01;
  undefined4 uVar6;
  CCPoint aCStack_28 [8];
  CCRect aCStack_20 [20];
  
  cVar1 = cocos2d::CCNode::init();
  if (cVar1 == '\x01') {
    FUN_007c5e70(this + 0xf4,&DAT_007e1ec0);
    *(undefined4 *)(this + 0x118) = 1;
    cocos2d::CCRect::CCRect(aCStack_20,extraout_s0,extraout_s1,extraout_s2,extraout_s3);
    uVar2 = cocos2d::CCSprite::create("menuTexture.png",aCStack_20);
    *(undefined4 *)(this + 0xe8) = uVar2;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0xe8));
    *(undefined4 *)(this + 0x110) = 0xffffffff;
    *(undefined4 *)(this + 0x114) = 0;
    uVar2 = cocos2d::CCSprite::createWithSpriteFrameName("team_bar.png");
    *(undefined4 *)(this + 0xf8) = uVar2;
    uVar5 = cocos2d::CCObject::retain(*(CCObject **)(this + 0xf8));
    pcVar3 = *(code **)(**(int **)(this + 0xf8) + 0x4c);
    uVar2 = *(undefined4 *)(this + 0xf8);
    cocos2d::CCPoint::CCPoint((CCPoint *)aCStack_20,(float)uVar5,(float)((ulonglong)uVar5 >> 0x20));
    (*pcVar3)(uVar2,aCStack_20);
    cocos2d::CCRect::CCRect(aCStack_20,extraout_s0_00,extraout_s1_00,extraout_s2_00,extraout_s3_00);
    uVar2 = cocos2d::CCSprite::create("menuTexture.png",aCStack_20);
    *(undefined4 *)(this + 0xfc) = uVar2;
    uVar5 = cocos2d::CCObject::retain(*(CCObject **)(this + 0xfc));
    pcVar3 = *(code **)(**(int **)(this + 0xfc) + 0x4c);
    uVar2 = *(undefined4 *)(this + 0xfc);
    cocos2d::CCPoint::CCPoint((CCPoint *)aCStack_20,(float)uVar5,(float)((ulonglong)uVar5 >> 0x20));
    (*pcVar3)(uVar2,aCStack_20);
    (**(code **)(**(int **)(this + 0xfc) + 0x40))(*(undefined4 *)(this + 0xfc),0x3f400000);
    uVar2 = cocos2d::CCLabelAtlas::create("","font02_new.png",0x20,0x20,0x20);
    *(undefined4 *)(this + 0xec) = uVar2;
    fVar4 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0xec));
    uVar2 = cocos2d::CCLabelTTF::create("","Arial-BoldMT",fVar4);
    *(undefined4 *)(this + 0xe4) = uVar2;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0xe4));
    uVar5 = (**(code **)(**(int **)(this + 0xe4) + 0x40))(*(undefined4 *)(this + 0xe4),0x3f19999a);
    pcVar3 = *(code **)(**(int **)(this + 0xe4) + 0x4c);
    uVar2 = *(undefined4 *)(this + 0xe4);
    cocos2d::CCPoint::CCPoint((CCPoint *)aCStack_20,(float)uVar5,(float)((ulonglong)uVar5 >> 0x20));
    uVar5 = (*pcVar3)(uVar2,aCStack_20);
    pcVar3 = *(code **)(**(int **)(this + 0xe4) + 0x7c);
    uVar2 = *(undefined4 *)(this + 0xe4);
    cocos2d::CCPoint::CCPoint((CCPoint *)aCStack_20,(float)uVar5,(float)((ulonglong)uVar5 >> 0x20));
    (*pcVar3)(uVar2,aCStack_20);
    uVar2 = (**(code **)(**(int **)(this + 0xe4) + 0x50))(*(undefined4 *)(this + 0xe4));
    cocos2d::CCPoint::CCPoint(aCStack_28,extraout_s0_01,extraout_s1_01);
    FUN_003a7058(aCStack_20,uVar2,aCStack_28);
    cocos2d::CCPoint::operator=((CCPoint *)(this + 0x104),(CCPoint *)aCStack_20);
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0xec),0x18);
    uVar5 = (**(code **)(**(int **)(this + 0xec) + 0x40))(*(undefined4 *)(this + 0xec),0x3ecccccd);
    pcVar3 = *(code **)(**(int **)(this + 0xec) + 0x4c);
    uVar2 = *(undefined4 *)(this + 0xec);
    cocos2d::CCPoint::CCPoint((CCPoint *)aCStack_20,(float)uVar5,(float)((ulonglong)uVar5 >> 0x20));
    uVar5 = (*pcVar3)(uVar2,aCStack_20);
    pcVar3 = *(code **)(**(int **)(this + 0xec) + 0x7c);
    uVar2 = *(undefined4 *)(this + 0xec);
    cocos2d::CCPoint::CCPoint((CCPoint *)aCStack_20,(float)uVar5,(float)((ulonglong)uVar5 >> 0x20));
    (*pcVar3)(uVar2,aCStack_20);
    uVar2 = cocos2d::CCLabelAtlas::create("0","font02_new.png",0x20,0x20,0x20);
    *(undefined4 *)(this + 0xf0) = uVar2;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0xf0));
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0xf0),0x18);
    (**(code **)(**(int **)(this + 0xf0) + 0x40))(*(undefined4 *)(this + 0xf0),0x3eb33333);
    uVar5 = (**(code **)(**(int **)(this + 0xf0) + 0x38))(*(undefined4 *)(this + 0xf0),0x3ee66666);
    pcVar3 = *(code **)(**(int **)(this + 0xf0) + 0x7c);
    uVar2 = *(undefined4 *)(this + 0xf0);
    cocos2d::CCPoint::CCPoint((CCPoint *)aCStack_20,(float)uVar5,(float)((ulonglong)uVar5 >> 0x20));
    uVar5 = (*pcVar3)(uVar2,aCStack_20);
    pcVar3 = *(code **)(**(int **)(this + 0xf0) + 0x4c);
    uVar2 = *(undefined4 *)(this + 0xf0);
    cocos2d::CCPoint::CCPoint((CCPoint *)aCStack_20,(float)uVar5,(float)((ulonglong)uVar5 >> 0x20));
    (*pcVar3)(uVar2,aCStack_20);
    uVar6 = 0;
    cocos2d::CCRect::CCRect(aCStack_20,extraout_s0_02,extraout_s1_02,extraout_s2_01,extraout_s3_01);
    uVar2 = cocos2d::CCSprite::create("menuTexture.png",aCStack_20);
    *(undefined4 *)(this + 0x100) = uVar2;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x100));
    uVar5 = (**(code **)(**(int **)(this + 0x100) + 0x40))
                      (*(undefined4 *)(this + 0x100),0x3f19999a,*(undefined4 *)(this + 0x100),
                       *(code **)(**(int **)(this + 0x100) + 0x40),uVar6);
    pcVar3 = *(code **)(**(int **)(this + 0x100) + 0x4c);
    uVar2 = *(undefined4 *)(this + 0x100);
    cocos2d::CCPoint::CCPoint((CCPoint *)aCStack_20,(float)uVar5,(float)((ulonglong)uVar5 >> 0x20));
    (*pcVar3)(uVar2,aCStack_20);
    (**(code **)(**(int **)(this + 0x100) + 0x90))(*(undefined4 *)(this + 0x100),0);
    (**(code **)(*(int *)this + 0xcc))(this,*(undefined4 *)(this + 0xf8),0);
    (**(code **)(*(int *)this + 0xcc))(this,*(undefined4 *)(this + 0xe4),1);
    (**(code **)(*(int *)this + 0xcc))(this,*(undefined4 *)(this + 0xec),1);
    (**(code **)(*(int *)this + 0xcc))(this,*(undefined4 *)(this + 0xfc),1);
    (**(code **)(*(int *)this + 0xcc))(this,*(undefined4 *)(this + 0xf0),2);
    (**(code **)(*(int *)this + 0xcc))(this,*(undefined4 *)(this + 0x100),2);
    setRank(this,0);
    setSkill(this,0);
    (**(code **)(*(int *)this + 0x40))(this,0x3f4ccccd);
  }
  return cVar1 == '\x01';
}

// ---- LobbyRow::~LobbyRow  @ 0x3a9738
/* WARNING: Removing unreachable block (ram,0x003a97e0) */
/* LobbyRow::~LobbyRow() */

LobbyRow * __thiscall LobbyRow::~LobbyRow(LobbyRow *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_00917018;
  cocos2d::CCNode::removeAllChildren((CCNode *)this);
  if (*(int *)(this + 0xe8) != 0) {
    cocos2d::CCObject::release(*(CCObject **)(this + 0xe8));
  }
  cocos2d::CCObject::release(*(CCObject **)(this + 0xec));
  cocos2d::CCObject::release(*(CCObject **)(this + 0xe4));
  cocos2d::CCObject::release(*(CCObject **)(this + 0xf0));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x100));
  cocos2d::CCObject::release(*(CCObject **)(this + 0xf8));
  cocos2d::CCObject::release(*(CCObject **)(this + 0xfc));
  if (*(int *)(this + 0x114) != 0) {
    cocos2d::CCObject::release(*(CCObject **)(this + 0x114));
  }
  FUN_007c5914(this + 0xf4);
  cocos2d::CCNode::~CCNode((CCNode *)this);
  return this;
}

// ---- LobbyRow::~LobbyRow  @ 0x3a97f8
/* LobbyRow::~LobbyRow() */

LobbyRow * __thiscall LobbyRow::~LobbyRow(LobbyRow *this)

{
  ~LobbyRow(this);
  operator_delete(this);
  return this;
}

// ---- LobbyRow::setPeerId  @ 0x3a9814
/* LobbyRow::setPeerId(std::string) */

void __thiscall LobbyRow::setPeerId(LobbyRow *this,undefined4 param_2)

{
  thunk_FUN_007c653c(this + 0xf4,param_2);
  return;
}

// ---- LobbyRow::getPeerId  @ 0x3a9830
/* LobbyRow::getPeerId() */

undefined4 LobbyRow::getPeerId(void)

{
  undefined4 in_r0;
  int in_r1;
  
  FUN_007c64e8(in_r0,in_r1 + 0xf4);
  return in_r0;
}

// ---- LobbyRow::setTeamId  @ 0x3a984c
/* LobbyRow::setTeamId(int) */

void __thiscall LobbyRow::setTeamId(LobbyRow *this,int param_1)

{
  (**(code **)(**(int **)(this + 0xf8) + 0x1bc))
            (*(undefined4 *)(this + 0xf8),teamColors + param_1 * 3);
  if (param_1 == 0) {
    (**(code **)(**(int **)(this + 0xf8) + 0x90))(*(undefined4 *)(this + 0xf8),0);
  }
  else {
    (**(code **)(**(int **)(this + 0xf8) + 0x90))(*(undefined4 *)(this + 0xf8),1);
  }
  return;
}

// ---- LobbyRow::setPlayerName  @ 0x3a98c4
/* LobbyRow::setPlayerName(std::string) */

void __thiscall LobbyRow::setPlayerName(LobbyRow *this,undefined4 param_2)

{
  undefined4 uVar1;
  int iVar2;
  code *pcVar3;
  undefined4 uVar4;
  
  uVar1 = (**(code **)(**(int **)(this + 0xe4) + 0x240))(*(undefined4 *)(this + 0xe4));
  iVar2 = FUN_007c5724(param_2,uVar1);
  if (iVar2 != 0) {
    pcVar3 = *(code **)(**(int **)(this + 0xe4) + 0x23c);
    uVar4 = *(undefined4 *)(this + 0xe4);
    uVar1 = FUN_007c5300(param_2);
    (*pcVar3)(uVar4,uVar1);
  }
  return;
}

// ---- LobbyRow::setHead  @ 0x3a9924
/* LobbyRow::setHead(cocos2d::CCArray*, int) */

void __thiscall LobbyRow::setHead(LobbyRow *this,CCArray *param_1,int param_2)

{
  bool bVar1;
  bool bVar2;
  int iVar3;
  int iVar4;
  CCInteger *this_00;
  CCInteger *this_01;
  uint uVar5;
  AvatarRenderer *this_02;
  CCTexture2D *pCVar6;
  undefined4 uVar7;
  code *pcVar8;
  undefined4 uVar9;
  float extraout_s0;
  float extraout_s1;
  undefined8 uVar10;
  uint local_30;
  CCPoint aCStack_20 [8];
  CCPoint aCStack_18 [8];
  
  if (param_2 < 0) {
    (**(code **)(**(int **)(this + 0xe8) + 0x90))(*(undefined4 *)(this + 0xe8),0);
    return;
  }
  bVar2 = false;
  if ((*(int *)(this + 0x114) != 0) && (param_1 != (CCArray *)0x0)) {
    iVar3 = cocos2d::CCArray::count(*(CCArray **)(this + 0x114));
    iVar4 = cocos2d::CCArray::count(param_1);
    if (iVar3 == iVar4) {
      bVar1 = true;
      goto LAB_003a9984;
    }
  }
  bVar1 = false;
LAB_003a9984:
  if (bVar1) {
    for (local_30 = 0; uVar5 = cocos2d::CCArray::count(param_1), local_30 < uVar5;
        local_30 = local_30 + 1) {
      this_00 = (CCInteger *)cocos2d::CCArray::objectAtIndex(param_1,local_30);
      this_01 = (CCInteger *)cocos2d::CCArray::objectAtIndex(*(CCArray **)(this + 0x114),local_30);
      if ((this_00 == (CCInteger *)0x0) || (this_01 == (CCInteger *)0x0)) {
LAB_003a99d0:
        bVar1 = true;
      }
      else {
        iVar3 = cocos2d::CCInteger::getValue(this_00);
        iVar4 = cocos2d::CCInteger::getValue(this_01);
        if (iVar3 != iVar4) goto LAB_003a99d0;
        bVar1 = false;
      }
      if (bVar1) {
        bVar2 = true;
        break;
      }
    }
  }
  else {
    bVar2 = true;
  }
  if ((*(int *)(this + 0x110) != param_2) || (bVar2)) {
    this_02 = (AvatarRenderer *)AvatarRenderer::sharedAvatarRenderer();
    pCVar6 = (CCTexture2D *)AvatarRenderer::getHeadTexture(this_02,param_1,param_2);
    if (*(int *)(this + 0xe8) != 0) {
      (**(code **)(*(int *)this + 0xf0))(this,*(undefined4 *)(this + 0xe8));
      cocos2d::CCObject::release(*(CCObject **)(this + 0xe8));
    }
    uVar7 = cocos2d::CCSprite::createWithTexture(pCVar6);
    *(undefined4 *)(this + 0xe8) = uVar7;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0xe8));
    (**(code **)(*(int *)this + 0xcc))(this,*(undefined4 *)(this + 0xe8),0);
    (**(code **)(**(int **)(this + 0xe8) + 0x90))(*(undefined4 *)(this + 0xe8),1);
    pcVar8 = *(code **)(**(int **)(this + 0xe8) + 0x4c);
    uVar9 = *(undefined4 *)(this + 0xe8);
    uVar7 = (**(code **)(**(int **)(this + 0xe4) + 0x50))(*(undefined4 *)(this + 0xe4));
    cocos2d::CCPoint::CCPoint(aCStack_20,extraout_s0,extraout_s1);
    FUN_003a7058(aCStack_18,uVar7,aCStack_20);
    (*pcVar8)(uVar9,aCStack_18);
    uVar10 = (**(code **)(**(int **)(this + 0xe8) + 0x40))(*(undefined4 *)(this + 0xe8),0x3f333333);
    pcVar8 = *(code **)(**(int **)(this + 0xe8) + 0x7c);
    uVar7 = *(undefined4 *)(this + 0xe8);
    cocos2d::CCPoint::CCPoint(aCStack_18,(float)uVar10,(float)((ulonglong)uVar10 >> 0x20));
    (*pcVar8)(uVar7,aCStack_18);
    *(int *)(this + 0x110) = param_2;
    if (*(int *)(this + 0x114) != 0) {
      cocos2d::CCObject::release(*(CCObject **)(this + 0x114));
      *(undefined4 *)(this + 0x114) = 0;
    }
    uVar7 = cocos2d::CCArray::createWithArray(param_1);
    *(undefined4 *)(this + 0x114) = uVar7;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x114));
  }
  return;
}

// ---- LobbyRow::setRank  @ 0x3a9b8c
/* LobbyRow::setRank(int) */

void __thiscall LobbyRow::setRank(LobbyRow *this,int param_1)

{
  (**(code **)(**(int **)(this + 0xfc) + 0x208))
            (*(undefined4 *)(this + 0xfc),daRank + param_1 * 0x10);
  return;
}

// ---- LobbyRow::setOS  @ 0x3a9bc8
/* LobbyRow::setOS(int) */

void __thiscall LobbyRow::setOS(LobbyRow *this,int param_1)

{
  (**(code **)(**(int **)(this + 0x100) + 0x208))
            (*(undefined4 *)(this + 0x100),daOS + param_1 * 0x10);
  (**(code **)(**(int **)(this + 0x100) + 0x90))(*(undefined4 *)(this + 0x100),1);
  return;
}

// ---- LobbyRow::setSkill  @ 0x3a9c1c
/* LobbyRow::setSkill(int) */

void __thiscall LobbyRow::setSkill(LobbyRow *this,int param_1)

{
  CCString *this_00;
  undefined4 uVar1;
  code *pcVar2;
  undefined4 uVar3;
  
  pcVar2 = *(code **)(**(int **)(this + 0xf0) + 0x1f8);
  uVar3 = *(undefined4 *)(this + 0xf0);
  this_00 = (CCString *)cocos2d::CCString::createWithFormat("%d",param_1);
  uVar1 = cocos2d::CCString::getCString(this_00);
  (*pcVar2)(uVar3,uVar1);
  return;
}

// ---- LobbyRow::updateState  @ 0x3a9c5c
/* LobbyRow::updateState() */

void __thiscall LobbyRow::updateState(LobbyRow *this)

{
  undefined4 uVar1;
  int iVar2;
  undefined4 uVar3;
  code *pcVar4;
  undefined1 local_14;
  undefined1 local_13;
  undefined1 local_12;
  
  iVar2 = *(int *)(this + 0x118);
  if (iVar2 == 2) {
    (**(code **)(**(int **)(this + 0xec) + 0x1f8))(*(undefined4 *)(this + 0xec),"SEARCHING...");
    pcVar4 = *(code **)(**(int **)(this + 0xec) + 0x1bc);
    uVar3 = *(undefined4 *)(this + 0xec);
    uVar1 = FUN_003a6ffc(0xff,0xff,0);
    local_14 = (undefined1)uVar1;
    local_13 = (undefined1)((uint)uVar1 >> 8);
    local_12 = (undefined1)((uint)uVar1 >> 0x10);
    (*pcVar4)(uVar3,&local_14);
  }
  else if (iVar2 == 3) {
    (**(code **)(**(int **)(this + 0xec) + 0x1f8))(*(undefined4 *)(this + 0xec),"READY TO PLAY");
    pcVar4 = *(code **)(**(int **)(this + 0xec) + 0x1bc);
    uVar3 = *(undefined4 *)(this + 0xec);
    uVar1 = FUN_003a6ffc(0,0xff,0);
    local_14 = (undefined1)uVar1;
    local_13 = (undefined1)((uint)uVar1 >> 8);
    local_12 = (undefined1)((uint)uVar1 >> 0x10);
    (*pcVar4)(uVar3,&local_14);
  }
  else if (iVar2 == 1) {
    (**(code **)(**(int **)(this + 0xec) + 0x1f8))(*(undefined4 *)(this + 0xec),"NOT READY");
    pcVar4 = *(code **)(**(int **)(this + 0xec) + 0x1bc);
    uVar3 = *(undefined4 *)(this + 0xec);
    uVar1 = FUN_003a6ffc(0xff,0,0);
    local_14 = (undefined1)uVar1;
    local_13 = (undefined1)((uint)uVar1 >> 8);
    local_12 = (undefined1)((uint)uVar1 >> 0x10);
    (*pcVar4)(uVar3,&local_14);
  }
  else {
    (**(code **)(**(int **)(this + 0xec) + 0x1f8))(*(undefined4 *)(this + 0xec),"UNKNOWN");
    pcVar4 = *(code **)(**(int **)(this + 0xec) + 0x1bc);
    uVar3 = *(undefined4 *)(this + 0xec);
    uVar1 = FUN_003a6ffc(0xb4,0xb4,0xb4);
    local_14 = (undefined1)uVar1;
    local_13 = (undefined1)((uint)uVar1 >> 8);
    local_12 = (undefined1)((uint)uVar1 >> 0x10);
    (*pcVar4)(uVar3,&local_14);
  }
  return;
}
