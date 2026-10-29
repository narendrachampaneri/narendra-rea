// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 8 functions

// ---- PlasmaBall::PlasmaBall  @ 0x3a2b7c
/* PlasmaBall::PlasmaBall() */

PlasmaBall * __thiscall PlasmaBall::PlasmaBall(PlasmaBall *this)

{
  undefined4 uVar1;
  CCSprite *pCVar2;
  CCRect *pCVar3;
  PlasmaBall *this_00;
  int iVar4;
  
  cocos2d::CCNode::CCNode((CCNode *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_00916998;
  FUN_007c51b0(this + 0x100);
  this_00 = this + 0x124;
  for (iVar4 = 1; iVar4 != -1; iVar4 = iVar4 + -1) {
    cocos2d::CCRect::CCRect((CCRect *)this_00);
    this_00 = this_00 + 0x10;
  }
  uVar1 = cocos2d::CCSprite::createWithSpriteFrameName("empBubble.png");
  *(undefined4 *)(this + 0xe8) = uVar1;
  cocos2d::CCObject::retain(*(CCObject **)(this + 0xe8));
  cocos2d::CCNode::addChild((CCNode *)this,*(CCNode **)(this + 0xe8));
  cocos2d::CCNode::setVisible((CCNode *)this,false);
  pCVar2 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("emp1.png");
  pCVar3 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar2);
  cocos2d::CCRect::operator=((CCRect *)(this + 0x124),pCVar3);
  pCVar2 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("emp2.png");
  pCVar3 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar2);
  cocos2d::CCRect::operator=((CCRect *)(this + 0x134),pCVar3);
  uVar1 = cocos2d::CCSprite::createWithSpriteFrameName("emp1.png");
  *(undefined4 *)(this + 0xe4) = uVar1;
  cocos2d::CCObject::retain(*(CCObject **)(this + 0xe4));
  cocos2d::CCNode::addChild((CCNode *)this,*(CCNode **)(this + 0xe4));
  (**(code **)(**(int **)(this + 0xe4) + 0x90))(*(undefined4 *)(this + 0xe4),0);
  FUN_007c5e70(this + 0x100,&DAT_007e1748);
  *(undefined4 *)(this + 0x11c) = 0;
  *(undefined4 *)(this + 0x120) = 0;
  *(undefined4 *)(this + 0x10c) = 0;
  *(undefined4 *)(this + 0x110) = 0;
  *(undefined4 *)(this + 0x104) = 0x41200000;
  *(undefined4 *)(this + 0x114) = 0;
  *(undefined4 *)(this + 0xf0) = 0;
  *(undefined4 *)(this + 0xf4) = 0;
  *(undefined4 *)(this + 0xf8) = 0;
  *(undefined4 *)(this + 0xfc) = 0;
  *(undefined4 *)(this + 0x144) = 0;
  return this;
}

// ---- PlasmaBall::~PlasmaBall  @ 0x3a2d38
/* WARNING: Removing unreachable block (ram,0x003a2d86) */
/* PlasmaBall::~PlasmaBall() */

PlasmaBall * __thiscall PlasmaBall::~PlasmaBall(PlasmaBall *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_00916998;
  cocos2d::CCNode::removeAllChildren((CCNode *)this);
  cocos2d::CCObject::release(*(CCObject **)(this + 0xe4));
  cocos2d::CCObject::release(*(CCObject **)(this + 0xe8));
  FUN_007c5914(this + 0x100);
  cocos2d::CCNode::~CCNode((CCNode *)this);
  return this;
}

// ---- PlasmaBall::~PlasmaBall  @ 0x3a2da0
/* PlasmaBall::~PlasmaBall() */

PlasmaBall * __thiscall PlasmaBall::~PlasmaBall(PlasmaBall *this)

{
  ~PlasmaBall(this);
  operator_delete(this);
  return this;
}

// ---- PlasmaBall::init  @ 0x3a2dbc
/* PlasmaBall::init() */

bool PlasmaBall::init(void)

{
  char cVar1;
  
  cVar1 = cocos2d::CCNode::init();
  return cVar1 == '\x01';
}

// ---- PlasmaBall::reset  @ 0x3a2de4
/* PlasmaBall::reset(cpVect, cpVect, std::string, int) */

void PlasmaBall::reset(int *param_1)

{
  undefined4 uVar1;
  code *pcVar2;
  int iVar3;
  uint in_fpscr;
  undefined8 uVar4;
  float fVar5;
  int in_stack_00000008;
  int in_stack_0000000c;
  int in_stack_00000010;
  int in_stack_00000014;
  undefined4 in_stack_00000018;
  int in_stack_0000001c;
  CCPoint aCStack_20 [12];
  
  param_1[0x41] = 0;
  param_1[0x42] = 0;
  param_1[0x48] = 0;
  param_1[0x45] = 0x3e19999a;
  (**(code **)(*(int *)param_1[0x3a] + 0x40))(param_1[0x3a],0);
  pcVar2 = *(code **)(*(int *)param_1[0x39] + 0x40);
  iVar3 = param_1[0x39];
  uVar1 = (**(code **)(*(int *)param_1[0x3a] + 0x44))(param_1[0x3a]);
  (*pcVar2)(iVar3,uVar1);
  (**(code **)(*(int *)param_1[0x3a] + 0x1a4))(param_1[0x3a],0xff);
  pcVar2 = *(code **)(*(int *)param_1[0x39] + 0x1a4);
  iVar3 = param_1[0x39];
  uVar1 = (**(code **)(*(int *)param_1[0x3a] + 0x19c))(param_1[0x3a]);
  uVar4 = (*pcVar2)(iVar3,uVar1);
  pcVar2 = *(code **)(*param_1 + 0x4c);
  cocos2d::CCPoint::CCPoint(aCStack_20,(float)uVar4,(float)((ulonglong)uVar4 >> 0x20));
  (*pcVar2)(param_1,aCStack_20);
  (**(code **)(*(int *)param_1[0x39] + 0x90))(param_1[0x39],1);
  pcVar2 = *(code **)(*(int *)param_1[0x39] + 0x98);
  iVar3 = param_1[0x39];
  uVar1 = FUN_003a1cc4();
  fVar5 = (float)VectorSignedToFloat(uVar1,(byte)(in_fpscr >> 0x16) & 3);
  (*pcVar2)(iVar3,(fVar5 / 1.0737418e+09 - 1.0) * 180.0);
  thunk_FUN_007c653c(param_1 + 0x40,in_stack_00000018);
  param_1[0x47] = in_stack_0000001c;
  param_1[0x3c] = in_stack_00000008;
  param_1[0x3d] = in_stack_0000000c;
  param_1[0x3e] = in_stack_00000010;
  param_1[0x3f] = in_stack_00000014;
  *(undefined1 *)(param_1 + 0x52) = 1;
  *(undefined1 *)((int)param_1 + 0x149) = 1;
  return;
}

// ---- PlasmaBall::getRadius  @ 0x3a2f88
/* PlasmaBall::getRadius() */

float __thiscall PlasmaBall::getRadius(PlasmaBall *this)

{
  float fVar1;
  
  fVar1 = (float)(**(code **)(**(int **)(this + 0xe8) + 0x44))(*(undefined4 *)(this + 0xe8));
  return fVar1 * 95.0;
}

// ---- PlasmaBall::applyDamage  @ 0x3a2fc0
/* PlasmaBall::applyDamage(float) */

void PlasmaBall::applyDamage(float param_1)

{
  bool bVar1;
  int *piVar2;
  char cVar3;
  PlasmaBall *in_r0;
  undefined4 uVar4;
  int iVar5;
  code *pcVar6;
  undefined1 auStack_18 [4];
  int *local_14;
  
  cVar3 = (**(code **)(*hostSoldier + 0x264))(hostSoldier);
  if (cVar3 != '\x01') {
    iVar5 = hostSoldier[0x4e];
    uVar4 = getRadius(in_r0);
    iVar5 = checkCollision(in_r0,*(undefined4 *)(iVar5 + 0x34),*(undefined4 *)(iVar5 + 0x28),
                           *(undefined4 *)(iVar5 + 0x2c),*(undefined4 *)(iVar5 + 0x30),
                           *(undefined4 *)(iVar5 + 0x34),uVar4);
    if (iVar5 != 0) {
      bVar1 = true;
      goto LAB_003a302a;
    }
  }
  bVar1 = false;
LAB_003a302a:
  if (bVar1) {
    (**(code **)(*hostSoldier + 0x2f4))(hostSoldier);
    in_r0[0x149] = (PlasmaBall)0x0;
    local_14 = (int *)POWERUP::create();
    (**(code **)(*local_14 + 0x280))(local_14,0x16);
    (**(code **)(*hostSoldier + 0x2e8))(hostSoldier,local_14);
    piVar2 = hostSoldier;
    pcVar6 = *(code **)(*hostSoldier + 0x1bc);
    FUN_007c64e8(auStack_18,in_r0 + 0x100);
    (*pcVar6)(piVar2,auStack_18);
    FUN_007c5914(auStack_18);
  }
  return;
}

// ---- PlasmaBall::checkCollision  @ 0x3a30d0
/* PlasmaBall::checkCollision(cpVect, float) */

undefined4 PlasmaBall::checkCollision(int *param_1)

{
  undefined4 uVar1;
  float fVar2;
  float extraout_s0;
  float extraout_s1;
  float in_stack_00000008;
  CCPoint aCStack_20 [8];
  CCPoint aCStack_18 [8];
  
  uVar1 = (**(code **)(*param_1 + 0x50))(param_1);
  cocos2d::CCPoint::CCPoint(aCStack_20,extraout_s0,extraout_s1);
  FUN_003a1d4c(aCStack_18,uVar1,aCStack_20);
  fVar2 = (float)cocos2d::ccpLength(aCStack_18);
  if ((in_stack_00000008 <= fVar2) || (*(char *)((int)param_1 + 0x149) == '\0')) {
    uVar1 = 0;
  }
  else {
    uVar1 = 1;
  }
  return uVar1;
}
