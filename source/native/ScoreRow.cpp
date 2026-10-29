// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 13 functions

// ---- ScoreRow::create  @ 0x3e39cc
/* ScoreRow::create() */

ScoreRow * ScoreRow::create(void)

{
  bool bVar1;
  ScoreRow *this;
  int iVar2;
  
  this = operator_new(0x114);
  ScoreRow(this);
  if ((this == (ScoreRow *)0x0) || (iVar2 = (**(code **)(*(int *)this + 0x18))(this), iVar2 == 0)) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (bVar1) {
    cocos2d::CCObject::autorelease((CCObject *)this);
  }
  else {
    if (this != (ScoreRow *)0x0) {
      (**(code **)(*(int *)this + 8))(this);
    }
    this = (ScoreRow *)0x0;
  }
  return this;
}

// ---- ScoreRow::ScoreRow  @ 0x3e3de4
/* ScoreRow::ScoreRow() */

ScoreRow * __thiscall ScoreRow::ScoreRow(ScoreRow *this)

{
  cocos2d::CCNode::CCNode((CCNode *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_0091ab28;
  FUN_007c51b0(this + 0x100);
  FUN_007c51b0(this + 0x104);
  return this;
}

// ---- ScoreRow::init  @ 0x3e3e44
/* ScoreRow::init() */

bool __thiscall ScoreRow::init(ScoreRow *this)

{
  char cVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  code *pcVar4;
  float fVar5;
  undefined8 uVar6;
  CCPoint local_18;
  undefined1 local_17;
  undefined1 local_16;
  
  cVar1 = cocos2d::CCNode::init();
  if (cVar1 == '\x01') {
    *(undefined4 *)(this + 0x108) = 0;
    this[0x10c] = (ScoreRow)0x0;
    *(undefined4 *)(this + 0x110) = 0;
    this[0x10c] = (ScoreRow)0x1;
    uVar2 = cocos2d::CCSprite::createWithSpriteFrameName("team_bar.png");
    *(undefined4 *)(this + 0xf8) = uVar2;
    uVar6 = cocos2d::CCObject::retain(*(CCObject **)(this + 0xf8));
    pcVar4 = *(code **)(**(int **)(this + 0xf8) + 0x4c);
    uVar2 = *(undefined4 *)(this + 0xf8);
    cocos2d::CCPoint::CCPoint(&local_18,(float)uVar6,(float)((ulonglong)uVar6 >> 0x20));
    (*pcVar4)(uVar2,&local_18);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0xf8));
    (**(code **)(**(int **)(this + 0xf8) + 0x40))(*(undefined4 *)(this + 0xf8),0x3f000000);
    fVar5 = (float)(**(code **)(**(int **)(this + 0xf8) + 0x90))(*(undefined4 *)(this + 0xf8),0);
    uVar2 = cocos2d::CCLabelTTF::create("","Arial-BoldMT",fVar5);
    *(undefined4 *)(this + 0xe8) = uVar2;
    uVar6 = cocos2d::CCObject::retain(*(CCObject **)(this + 0xe8));
    pcVar4 = *(code **)(**(int **)(this + 0xe8) + 0x7c);
    uVar2 = *(undefined4 *)(this + 0xe8);
    cocos2d::CCPoint::CCPoint(&local_18,(float)uVar6,(float)((ulonglong)uVar6 >> 0x20));
    (*pcVar4)(uVar2,&local_18);
    uVar6 = (**(code **)(**(int **)(this + 0xe8) + 0x40))(*(undefined4 *)(this + 0xe8),0x3f000000);
    pcVar4 = *(code **)(**(int **)(this + 0xe8) + 0x4c);
    uVar2 = *(undefined4 *)(this + 0xe8);
    cocos2d::CCPoint::CCPoint(&local_18,(float)uVar6,(float)((ulonglong)uVar6 >> 0x20));
    (*pcVar4)(uVar2,&local_18);
    fVar5 = (float)(**(code **)(*(int *)this + 0xcc))(this,*(undefined4 *)(this + 0xe8),0);
    uVar2 = cocos2d::CCLabelTTF::create("","Arial-BoldMT",fVar5);
    *(undefined4 *)(this + 0xe4) = uVar2;
    uVar6 = cocos2d::CCObject::retain(*(CCObject **)(this + 0xe4));
    pcVar4 = *(code **)(**(int **)(this + 0xe4) + 0x7c);
    uVar2 = *(undefined4 *)(this + 0xe4);
    cocos2d::CCPoint::CCPoint(&local_18,(float)uVar6,(float)((ulonglong)uVar6 >> 0x20));
    (*pcVar4)(uVar2,&local_18);
    uVar6 = (**(code **)(**(int **)(this + 0xe4) + 0x40))(*(undefined4 *)(this + 0xe4),0x3f000000);
    pcVar4 = *(code **)(**(int **)(this + 0xe4) + 0x4c);
    uVar2 = *(undefined4 *)(this + 0xe4);
    cocos2d::CCPoint::CCPoint(&local_18,(float)uVar6,(float)((ulonglong)uVar6 >> 0x20));
    (*pcVar4)(uVar2,&local_18);
    (**(code **)(*(int *)this + 0xcc))(this,*(undefined4 *)(this + 0xe4),0);
    uVar2 = cocos2d::CCLabelAtlas::create("","font02_new.png",0x20,0x20,0x20);
    *(undefined4 *)(this + 0xec) = uVar2;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0xec));
    pcVar4 = *(code **)(**(int **)(this + 0xec) + 0x1bc);
    uVar3 = *(undefined4 *)(this + 0xec);
    uVar2 = FUN_003e2bd0(0,0xff,0);
    local_18 = SUB41(uVar2,0);
    local_17 = (undefined1)((uint)uVar2 >> 8);
    local_16 = (undefined1)((uint)uVar2 >> 0x10);
    (*pcVar4)(uVar3,&local_18);
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0xec),0x18);
    uVar6 = (**(code **)(**(int **)(this + 0xec) + 0x40))(*(undefined4 *)(this + 0xec),0x3f000000);
    pcVar4 = *(code **)(**(int **)(this + 0xec) + 0x7c);
    uVar2 = *(undefined4 *)(this + 0xec);
    cocos2d::CCPoint::CCPoint(&local_18,(float)uVar6,(float)((ulonglong)uVar6 >> 0x20));
    uVar6 = (*pcVar4)(uVar2,&local_18);
    pcVar4 = *(code **)(**(int **)(this + 0xec) + 0x4c);
    uVar2 = *(undefined4 *)(this + 0xec);
    cocos2d::CCPoint::CCPoint(&local_18,(float)uVar6,(float)((ulonglong)uVar6 >> 0x20));
    (*pcVar4)(uVar2,&local_18);
    (**(code **)(*(int *)this + 0xcc))(this,*(undefined4 *)(this + 0xec),0);
    uVar2 = cocos2d::CCLabelAtlas::create("","font02_new.png",0x20,0x20,0x20);
    *(undefined4 *)(this + 0xf0) = uVar2;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0xf0));
    pcVar4 = *(code **)(**(int **)(this + 0xf0) + 0x1bc);
    uVar3 = *(undefined4 *)(this + 0xf0);
    uVar2 = FUN_003e2bd0(0xff,0,0);
    local_18 = SUB41(uVar2,0);
    local_17 = (undefined1)((uint)uVar2 >> 8);
    local_16 = (undefined1)((uint)uVar2 >> 0x10);
    (*pcVar4)(uVar3,&local_18);
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0xf0),0x18);
    uVar6 = (**(code **)(**(int **)(this + 0xf0) + 0x40))(*(undefined4 *)(this + 0xf0),0x3f000000);
    pcVar4 = *(code **)(**(int **)(this + 0xf0) + 0x7c);
    uVar2 = *(undefined4 *)(this + 0xf0);
    cocos2d::CCPoint::CCPoint(&local_18,(float)uVar6,(float)((ulonglong)uVar6 >> 0x20));
    uVar6 = (*pcVar4)(uVar2,&local_18);
    pcVar4 = *(code **)(**(int **)(this + 0xf0) + 0x4c);
    uVar2 = *(undefined4 *)(this + 0xf0);
    cocos2d::CCPoint::CCPoint(&local_18,(float)uVar6,(float)((ulonglong)uVar6 >> 0x20));
    (*pcVar4)(uVar2,&local_18);
    (**(code **)(*(int *)this + 0xcc))(this,*(undefined4 *)(this + 0xf0),0);
    uVar2 = cocos2d::CCLabelAtlas::create("","font02_new.png",0x20,0x20,0x20);
    *(undefined4 *)(this + 0xf4) = uVar2;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0xf4));
    pcVar4 = *(code **)(**(int **)(this + 0xf4) + 0x1bc);
    uVar3 = *(undefined4 *)(this + 0xf4);
    uVar2 = FUN_003e2bd0(0xf5,0xf5,0);
    local_18 = SUB41(uVar2,0);
    local_17 = (undefined1)((uint)uVar2 >> 8);
    local_16 = (undefined1)((uint)uVar2 >> 0x10);
    (*pcVar4)(uVar3,&local_18);
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0xf4),0x18);
    uVar6 = (**(code **)(**(int **)(this + 0xf4) + 0x40))(*(undefined4 *)(this + 0xf4),0x3f000000);
    pcVar4 = *(code **)(**(int **)(this + 0xf4) + 0x7c);
    uVar2 = *(undefined4 *)(this + 0xf4);
    cocos2d::CCPoint::CCPoint(&local_18,(float)uVar6,(float)((ulonglong)uVar6 >> 0x20));
    uVar6 = (*pcVar4)(uVar2,&local_18);
    pcVar4 = *(code **)(**(int **)(this + 0xf4) + 0x4c);
    uVar2 = *(undefined4 *)(this + 0xf4);
    cocos2d::CCPoint::CCPoint(&local_18,(float)uVar6,(float)((ulonglong)uVar6 >> 0x20));
    (*pcVar4)(uVar2,&local_18);
    (**(code **)(*(int *)this + 0xcc))(this,*(undefined4 *)(this + 0xf4),0);
    uVar2 = cocos2d::CCSprite::createWithSpriteFrameName("mvp.png");
    *(undefined4 *)(this + 0xfc) = uVar2;
    uVar6 = cocos2d::CCObject::retain(*(CCObject **)(this + 0xfc));
    pcVar4 = *(code **)(**(int **)(this + 0xfc) + 0x4c);
    uVar2 = *(undefined4 *)(this + 0xfc);
    cocos2d::CCPoint::CCPoint(&local_18,(float)uVar6,(float)((ulonglong)uVar6 >> 0x20));
    (*pcVar4)(uVar2,&local_18);
    uVar6 = (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0xfc));
    pcVar4 = *(code **)(**(int **)(this + 0xfc) + 0x7c);
    uVar2 = *(undefined4 *)(this + 0xfc);
    cocos2d::CCPoint::CCPoint(&local_18,(float)uVar6,(float)((ulonglong)uVar6 >> 0x20));
    (*pcVar4)(uVar2,&local_18);
    (**(code **)(**(int **)(this + 0xfc) + 0x40))(*(undefined4 *)(this + 0xfc),0x3e800000);
    (**(code **)(**(int **)(this + 0xfc) + 0x90))(*(undefined4 *)(this + 0xfc),0);
    FUN_007c5e70(this + 0x104,&DAT_007e7500);
    FUN_007c5e70(this + 0x100,&DAT_007e7500);
    *(undefined4 *)(this + 0x110) = 0;
  }
  return cVar1 == '\x01';
}

// ---- ScoreRow::~ScoreRow  @ 0x3e44e4
/* WARNING: Removing unreachable block (ram,0x003e457c) */
/* ScoreRow::~ScoreRow() */

ScoreRow * __thiscall ScoreRow::~ScoreRow(ScoreRow *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_0091ab28;
  cocos2d::CCNode::removeAllChildrenWithCleanup((CCNode *)this,false);
  cocos2d::CCObject::release(*(CCObject **)(this + 0xe4));
  cocos2d::CCObject::release(*(CCObject **)(this + 0xe8));
  cocos2d::CCObject::release(*(CCObject **)(this + 0xec));
  cocos2d::CCObject::release(*(CCObject **)(this + 0xf0));
  cocos2d::CCObject::release(*(CCObject **)(this + 0xf8));
  cocos2d::CCObject::release(*(CCObject **)(this + 0xf4));
  cocos2d::CCObject::release(*(CCObject **)(this + 0xfc));
  FUN_007c5914(this + 0x104);
  FUN_007c5914(this + 0x100);
  cocos2d::CCNode::~CCNode((CCNode *)this);
  return this;
}

// ---- ScoreRow::~ScoreRow  @ 0x3e4594
/* ScoreRow::~ScoreRow() */

ScoreRow * __thiscall ScoreRow::~ScoreRow(ScoreRow *this)

{
  ~ScoreRow(this);
  operator_delete(this);
  return this;
}

// ---- ScoreRow::setPlayerTeamId  @ 0x3e45b0
/* ScoreRow::setPlayerTeamId(int) */

void __thiscall ScoreRow::setPlayerTeamId(ScoreRow *this,int param_1)

{
  *(int *)(this + 0x110) = param_1;
  (**(code **)(**(int **)(this + 0xf8) + 0x1bc))
            (*(undefined4 *)(this + 0xf8),teamColors + param_1 * 3);
  (**(code **)(**(int **)(this + 0xf8) + 0x90))(*(undefined4 *)(this + 0xf8),param_1 != 0);
  return;
}

// ---- ScoreRow::setPlayerName  @ 0x3e461c
/* ScoreRow::setPlayerName(std::string) */

void __thiscall ScoreRow::setPlayerName(ScoreRow *this,undefined4 param_2)

{
  int iVar1;
  undefined4 uVar2;
  code *pcVar3;
  undefined4 uVar4;
  undefined1 auStack_14 [8];
  
  iVar1 = FUN_007c567c(this + 0x100,param_2);
  if (iVar1 != 0) {
    thunk_FUN_007c653c(this + 0x100,param_2);
    pcVar3 = *(code **)(**(int **)(this + 0xe4) + 0x23c);
    uVar4 = *(undefined4 *)(this + 0xe4);
    FUN_007c6728(auStack_14,param_2,0,0xc);
    uVar2 = FUN_007c5300(auStack_14);
    (*pcVar3)(uVar4,uVar2);
    FUN_007c5914(auStack_14);
  }
  return;
}

// ---- ScoreRow::getPlayerName  @ 0x3e469c
/* ScoreRow::getPlayerName() */

undefined4 ScoreRow::getPlayerName(void)

{
  undefined4 in_r0;
  int in_r1;
  
  FUN_007c64e8(in_r0,in_r1 + 0x100);
  return in_r0;
}

// ---- ScoreRow::setKillScore  @ 0x3e46bc
/* ScoreRow::setKillScore(std::string) */

void __thiscall ScoreRow::setKillScore(ScoreRow *this,undefined4 param_2)

{
  char *__nptr;
  int iVar1;
  undefined4 uVar2;
  code *pcVar3;
  undefined4 uVar4;
  
  __nptr = (char *)FUN_007c5300(param_2);
  iVar1 = atoi(__nptr);
  *(int *)(this + 0x108) = iVar1;
  pcVar3 = *(code **)(**(int **)(this + 0xec) + 0x1f8);
  uVar4 = *(undefined4 *)(this + 0xec);
  uVar2 = FUN_007c5300(param_2);
  (*pcVar3)(uVar4,uVar2);
  return;
}

// ---- ScoreRow::setDeaths  @ 0x3e4700
/* ScoreRow::setDeaths(std::string) */

void __thiscall ScoreRow::setDeaths(ScoreRow *this,undefined4 param_2)

{
  undefined4 uVar1;
  code *pcVar2;
  undefined4 uVar3;
  
  pcVar2 = *(code **)(**(int **)(this + 0xf0) + 0x1f8);
  uVar3 = *(undefined4 *)(this + 0xf0);
  uVar1 = FUN_007c5300(param_2);
  (*pcVar2)(uVar3,uVar1);
  return;
}

// ---- ScoreRow::setSpread  @ 0x3e4730
/* ScoreRow::setSpread(std::string) */

void __thiscall ScoreRow::setSpread(ScoreRow *this,undefined4 param_2)

{
  undefined4 uVar1;
  code *pcVar2;
  undefined4 uVar3;
  
  pcVar2 = *(code **)(**(int **)(this + 0xf4) + 0x1f8);
  uVar3 = *(undefined4 *)(this + 0xf4);
  uVar1 = FUN_007c5300(param_2);
  (*pcVar2)(uVar3,uVar1);
  return;
}

// ---- ScoreRow::setOpacity  @ 0x3e4760
/* ScoreRow::setOpacity(int) */

void __thiscall ScoreRow::setOpacity(ScoreRow *this,int param_1)

{
  int iVar1;
  uint local_10;
  
  local_10 = param_1;
  if ((this[0x10c] != (ScoreRow)0x1) && (99 < param_1)) {
    local_10 = 100;
  }
  (**(code **)(**(int **)(this + 0xe4) + 0x1a4))(*(undefined4 *)(this + 0xe4),local_10 & 0xff);
  (**(code **)(**(int **)(this + 0xec) + 0x1a4))(*(undefined4 *)(this + 0xec),local_10 & 0xff);
  (**(code **)(**(int **)(this + 0xf0) + 0x1a4))(*(undefined4 *)(this + 0xf0),local_10 & 0xff);
  (**(code **)(**(int **)(this + 0xf4) + 0x1a4))(*(undefined4 *)(this + 0xf4),local_10 & 0xff);
  iVar1 = (**(code **)(**(int **)(this + 0xf8) + 0x94))(*(undefined4 *)(this + 0xf8));
  if (iVar1 != 0) {
    (**(code **)(**(int **)(this + 0xf8) + 0x1a4))(*(undefined4 *)(this + 0xf8),local_10 & 0xff);
  }
  (**(code **)(**(int **)(this + 0xfc) + 0x1a4))(*(undefined4 *)(this + 0xfc),local_10 & 0xff);
  return;
}

// ---- ScoreRow::setMVP  @ 0x3e4860
/* ScoreRow::setMVP() */

void __thiscall ScoreRow::setMVP(ScoreRow *this)

{
  (**(code **)(**(int **)(this + 0xfc) + 0x90))(*(undefined4 *)(this + 0xfc),1);
  return;
}
