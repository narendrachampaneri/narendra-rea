// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 8 functions

// ---- TeamRow::create  @ 0x3e3a3c
/* TeamRow::create() */

TeamRow * TeamRow::create(void)

{
  bool bVar1;
  TeamRow *this;
  int iVar2;
  
  this = operator_new(0xf4);
  TeamRow(this);
  if ((this == (TeamRow *)0x0) || (iVar2 = (**(code **)(*(int *)this + 0x18))(this), iVar2 == 0)) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (bVar1) {
    cocos2d::CCObject::autorelease((CCObject *)this);
  }
  else {
    if (this != (TeamRow *)0x0) {
      (**(code **)(*(int *)this + 8))(this);
    }
    this = (TeamRow *)0x0;
  }
  return this;
}

// ---- TeamRow::TeamRow  @ 0x3e3aac
/* TeamRow::TeamRow() */

TeamRow * __thiscall TeamRow::TeamRow(TeamRow *this)

{
  cocos2d::CCNode::CCNode((CCNode *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_0091a980;
  return this;
}

// ---- TeamRow::init  @ 0x3e3ad8
/* TeamRow::init() */

bool __thiscall TeamRow::init(TeamRow *this)

{
  char cVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  code *pcVar4;
  undefined8 uVar5;
  CCPoint local_18;
  undefined1 local_17;
  undefined1 local_16;
  
  cVar1 = cocos2d::CCNode::init();
  if (cVar1 == '\x01') {
    *(undefined4 *)(this + 0xec) = 0;
    *(undefined4 *)(this + 0xf0) = 0;
    uVar2 = cocos2d::CCSprite::createWithSpriteFrameName("team_mask.png");
    *(undefined4 *)(this + 0xe8) = uVar2;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0xe8));
    (**(code **)(*(int *)this + 0xcc))(this,*(undefined4 *)(this + 0xe8),0);
    uVar5 = (**(code **)(**(int **)(this + 0xe8) + 0x40))(*(undefined4 *)(this + 0xe8),0x3f000000);
    pcVar4 = *(code **)(**(int **)(this + 0xe8) + 0x7c);
    uVar2 = *(undefined4 *)(this + 0xe8);
    cocos2d::CCPoint::CCPoint(&local_18,(float)uVar5,(float)((ulonglong)uVar5 >> 0x20));
    (*pcVar4)(uVar2,&local_18);
    uVar2 = cocos2d::CCLabelAtlas::create("","font02_new.png",0x20,0x20,0x20);
    *(undefined4 *)(this + 0xe4) = uVar2;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0xe4));
    pcVar4 = *(code **)(**(int **)(this + 0xe4) + 0x1bc);
    uVar3 = *(undefined4 *)(this + 0xe4);
    uVar2 = FUN_003e2bd0(0xff,0xff,0xff);
    local_18 = SUB41(uVar2,0);
    local_17 = (undefined1)((uint)uVar2 >> 8);
    local_16 = (undefined1)((uint)uVar2 >> 0x10);
    (*pcVar4)(uVar3,&local_18);
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0xe4),0x18);
    uVar5 = (**(code **)(**(int **)(this + 0xe4) + 0x40))(*(undefined4 *)(this + 0xe4),0x3f000000);
    pcVar4 = *(code **)(**(int **)(this + 0xe4) + 0x4c);
    uVar2 = *(undefined4 *)(this + 0xe4);
    cocos2d::CCPoint::CCPoint(&local_18,(float)uVar5,(float)((ulonglong)uVar5 >> 0x20));
    uVar5 = (*pcVar4)(uVar2,&local_18);
    pcVar4 = *(code **)(**(int **)(this + 0xe4) + 0x7c);
    uVar2 = *(undefined4 *)(this + 0xe4);
    cocos2d::CCPoint::CCPoint(&local_18,(float)uVar5,(float)((ulonglong)uVar5 >> 0x20));
    (*pcVar4)(uVar2,&local_18);
    (**(code **)(*(int *)this + 0xcc))(this,*(undefined4 *)(this + 0xe4),0);
    *(undefined4 *)(this + 0xf0) = 0;
  }
  return cVar1 == '\x01';
}

// ---- TeamRow::~TeamRow  @ 0x3e3cb0
/* WARNING: Removing unreachable block (ram,0x003e3cf4) */
/* TeamRow::~TeamRow() */

TeamRow * __thiscall TeamRow::~TeamRow(TeamRow *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_0091a980;
  cocos2d::CCNode::removeAllChildrenWithCleanup((CCNode *)this,false);
  cocos2d::CCObject::release(*(CCObject **)(this + 0xe4));
  cocos2d::CCObject::release(*(CCObject **)(this + 0xe8));
  cocos2d::CCNode::~CCNode((CCNode *)this);
  return this;
}

// ---- TeamRow::~TeamRow  @ 0x3e3d0c
/* TeamRow::~TeamRow() */

TeamRow * __thiscall TeamRow::~TeamRow(TeamRow *this)

{
  ~TeamRow(this);
  operator_delete(this);
  return this;
}

// ---- TeamRow::setKillScore  @ 0x3e3d28
/* TeamRow::setKillScore(std::string) */

void __thiscall TeamRow::setKillScore(TeamRow *this,undefined4 param_2)

{
  char *__nptr;
  int iVar1;
  undefined4 uVar2;
  code *pcVar3;
  undefined4 uVar4;
  
  __nptr = (char *)FUN_007c5300(param_2);
  iVar1 = atoi(__nptr);
  *(int *)(this + 0xec) = iVar1;
  pcVar3 = *(code **)(**(int **)(this + 0xe4) + 0x1f8);
  uVar4 = *(undefined4 *)(this + 0xe4);
  uVar2 = FUN_007c5300(param_2);
  (*pcVar3)(uVar4,uVar2);
  return;
}

// ---- TeamRow::setColor  @ 0x3e3d6c
/* TeamRow::setColor(cocos2d::_ccColor3B) */

void __thiscall TeamRow::setColor(TeamRow *this,undefined4 param_2)

{
  undefined4 local_10;
  TeamRow *local_c;
  
  local_10 = param_2;
  local_c = this;
  (**(code **)(**(int **)(this + 0xe8) + 0x1bc))(*(undefined4 *)(this + 0xe8),&local_10);
  return;
}

// ---- TeamRow::setOpacity  @ 0x3e3d98
/* TeamRow::setOpacity(int) */

void __thiscall TeamRow::setOpacity(TeamRow *this,int param_1)

{
  (**(code **)(**(int **)(this + 0xe4) + 0x1a4))(*(undefined4 *)(this + 0xe4),param_1 & 0xff);
  (**(code **)(**(int **)(this + 0xe8) + 0x1a4))(*(undefined4 *)(this + 0xe8),param_1 & 0xff);
  return;
}
