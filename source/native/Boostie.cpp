// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 9 functions

// ---- Boostie::Boostie  @ 0x30dc04
/* Boostie::Boostie() */

Boostie * __thiscall Boostie::Boostie(Boostie *this)

{
  cocos2d::CCNode::CCNode((CCNode *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_0090f098;
  return this;
}

// ---- Boostie::init  @ 0x30dc30
/* Boostie::init() */

bool __thiscall Boostie::init(Boostie *this)

{
  char cVar1;
  undefined4 uVar2;
  code *pcVar3;
  undefined8 uVar4;
  undefined4 local_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  
  cVar1 = cocos2d::CCNode::init();
  if (cVar1 == '\x01') {
    *(undefined4 *)(this + 0xf4) = 0;
    uVar2 = cocos2d::CCSprite::createWithSpriteFrameName("flame.png");
    *(undefined4 *)(this + 0xe4) = uVar2;
    uVar4 = cocos2d::CCObject::retain(*(CCObject **)(this + 0xe4));
    pcVar3 = *(code **)(**(int **)(this + 0xe4) + 0x7c);
    uVar2 = *(undefined4 *)(this + 0xe4);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_20,(float)uVar4,(float)((ulonglong)uVar4 >> 0x20));
    uVar4 = (*pcVar3)(uVar2,&local_20);
    pcVar3 = *(code **)(**(int **)(this + 0xe4) + 0x4c);
    uVar2 = *(undefined4 *)(this + 0xe4);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_20,(float)uVar4,(float)((ulonglong)uVar4 >> 0x20));
    (*pcVar3)(uVar2,&local_20);
    (**(code **)(*(int *)this + 0xcc))(this,*(undefined4 *)(this + 0xe4),0);
    *(undefined4 *)(this + 0xe8) = 0;
    *(undefined4 *)(this + 0xec) = 0;
    uVar2 = cocos2d::CCParticleSystemQuad::create("Smoke.plist");
    *(undefined4 *)(this + 0xf0) = uVar2;
    (**(code **)(**(int **)(this + 0xf0) + 0x2f0))(*(undefined4 *)(this + 0xf0),2);
    cocos2d::CCObject::retain(*(CCObject **)(this + 0xf0));
    (**(code **)(*worldLayer + 0xcc))(worldLayer,*(undefined4 *)(this + 0xf0),2);
    local_20 = 0x437f0000;
    uStack_1c = 0x437f0000;
    uStack_18 = 0x437f0000;
    uStack_14 = 0x437f0000;
    (**(code **)(**(int **)(this + 0xf0) + 0x288))(*(undefined4 *)(this + 0xf0),&local_20);
    local_20 = 0x437f0000;
    uStack_1c = 0x437f0000;
    uStack_18 = 0x437f0000;
    uStack_14 = 0;
    (**(code **)(**(int **)(this + 0xf0) + 0x298))(*(undefined4 *)(this + 0xf0),&local_20);
    this[0xfc] = (Boostie)0x0;
    *(undefined4 *)(this + 0xf8) = 0;
    *(undefined4 *)(this + 0x100) = 0;
    *(undefined4 *)(this + 0x104) = 0;
    this[0x108] = (Boostie)0x0;
    uVar2 = FUN_0030ce0c(0xff,0xff,0xff);
    this[0x109] = SUB41(uVar2,0);
    this[0x10a] = SUB41((uint)uVar2 >> 8,0);
    this[0x10b] = SUB41((uint)uVar2 >> 0x10,0);
  }
  return cVar1 == '\x01';
}

// ---- Boostie::~Boostie  @ 0x30de20
/* WARNING: Removing unreachable block (ram,0x0030dee8) */
/* Boostie::~Boostie() */

Boostie * __thiscall Boostie::~Boostie(Boostie *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_0090f098;
  cocos2d::CCNode::removeAllChildren((CCNode *)this);
  cocos2d::CCParticleSystem::stopSystem(*(CCParticleSystem **)(this + 0xf0));
  cocos2d::CCParticleSystem::resetSystem(*(CCParticleSystem **)(this + 0xf0));
  (**(code **)(**(int **)(this + 0xf0) + 0xe8))(*(undefined4 *)(this + 0xf0));
  cocos2d::CCObject::release(*(CCObject **)(this + 0xf0));
  if (*(int *)(this + 0xe8) != 0) {
    (**(code **)(**(int **)(this + 0xe8) + 0xe8))(*(undefined4 *)(this + 0xe8));
    cocos2d::CCObject::release(*(CCObject **)(this + 0xe8));
  }
  if (*(int *)(this + 0xec) != 0) {
    (**(code **)(**(int **)(this + 0xec) + 0xe8))(*(undefined4 *)(this + 0xec));
    cocos2d::CCObject::release(*(CCObject **)(this + 0xec));
  }
  cocos2d::CCObject::release(*(CCObject **)(this + 0xe4));
  cocos2d::CCNode::~CCNode((CCNode *)this);
  return this;
}

// ---- Boostie::~Boostie  @ 0x30df00
/* Boostie::~Boostie() */

Boostie * __thiscall Boostie::~Boostie(Boostie *this)

{
  ~Boostie(this);
  operator_delete(this);
  return this;
}

// ---- Boostie::reset  @ 0x30df1c
/* Boostie::reset() */

void __thiscall Boostie::reset(Boostie *this)

{
  if (*(int *)(this + 0xe8) != 0) {
    (**(code **)(**(int **)(this + 0xe8) + 0x14))(*(undefined4 *)(this + 0xe8),0x41200000);
  }
  return;
}

// ---- Boostie::setVisible  @ 0x30df50
/* Boostie::setVisible(bool) */

void __thiscall Boostie::setVisible(Boostie *this,bool param_1)

{
  cocos2d::CCNode::setVisible((CCNode *)this,param_1);
  if (*(int *)(this + 0xe8) != 0) {
    (**(code **)(**(int **)(this + 0xe8) + 0x90))(*(undefined4 *)(this + 0xe8),param_1);
  }
  if (*(int *)(this + 0xec) != 0) {
    (**(code **)(**(int **)(this + 0xec) + 0x90))(*(undefined4 *)(this + 0xec),param_1);
  }
  (**(code **)(**(int **)(this + 0xe4) + 0x90))(*(undefined4 *)(this + 0xe4),param_1);
  (**(code **)(**(int **)(this + 0xf0) + 0x90))(*(undefined4 *)(this + 0xf0),param_1);
  if (!param_1) {
    cocos2d::CCParticleSystem::resetSystem(*(CCParticleSystem **)(this + 0xf0));
  }
  return;
}

// ---- Boostie::setStreakColor  @ 0x30e014
/* Boostie::setStreakColor(cocos2d::_ccColor3B) */

void __thiscall Boostie::setStreakColor(Boostie *this,undefined4 param_2)

{
  undefined2 local_10;
  Boostie BStack_e;
  
  local_10 = (undefined2)param_2;
  BStack_e = SUB41((uint)param_2 >> 0x10,0);
  *(undefined2 *)(this + 0x109) = local_10;
  this[0x10b] = BStack_e;
  if (*(int *)(this + 0xe8) != 0) {
    (**(code **)(**(int **)(this + 0xe8) + 0x1bc))(*(undefined4 *)(this + 0xe8),this + 0x109);
  }
  return;
}

// ---- Boostie::updateStep  @ 0x30e060
/* Boostie::updateStep(float, float, cpVect) */

void Boostie::updateStep(int *param_1,float param_2,float param_3)

{
  undefined4 uVar1;
  int iVar2;
  undefined4 extraout_r0;
  undefined4 extraout_r1;
  code *pcVar3;
  float extraout_s0;
  float extraout_s1;
  double __x;
  undefined4 extraout_s1_01;
  undefined4 extraout_s1_02;
  undefined4 extraout_s1_03;
  float extraout_s2;
  float extraout_s2_00;
  float extraout_s2_01;
  float fVar4;
  char *pcVar5;
  float local_4c;
  cocos2d acStack_40 [8];
  CCPoint aCStack_38 [8];
  cocos2d acStack_30 [8];
  CCAffineTransform aCStack_28 [28];
  undefined4 extraout_s1_00;
  
  param_1[0x3e] = (int)((float)param_1[0x3e] + param_2);
  fVar4 = param_3;
  if ((char)param_1[0x3f] == '\0') {
    fVar4 = param_3 * 0.5;
  }
  (**(code **)(*(int *)param_1[0x39] + 0x38))(param_1[0x39],fVar4);
  *(byte *)(param_1 + 0x3f) = *(byte *)(param_1 + 0x3f) ^ 1;
  if (0.0 < param_3) {
    (**(code **)(*(int *)param_1[0x39] + 0x90))(param_1[0x39],1);
    local_4c = param_3;
  }
  else {
    local_4c = 0.0;
    (**(code **)(*(int *)param_1[0x39] + 0x90))(param_1[0x39],0);
  }
  fVar4 = local_4c;
  if (local_4c < (float)param_1[0x40] - param_2 * 0.15) {
    fVar4 = (float)param_1[0x40] - param_2 * 0.15;
  }
  param_1[0x40] = (int)fVar4;
  uVar1 = (**(code **)(*param_1 + 0x50))(param_1);
  cocos2d::CCPoint::CCPoint(aCStack_38,extraout_s0,extraout_s1);
  FUN_0030ce68(acStack_30,uVar1,aCStack_38);
  (**(code **)(*param_1 + 0x184))(aCStack_28,param_1);
  cocos2d::__CCPointApplyAffineTransform(acStack_40,acStack_30,aCStack_28);
  (**(code **)(*worldLayer + 0x188))(aCStack_28,worldLayer);
  cocos2d::__CCPointApplyAffineTransform(acStack_30,acStack_40,aCStack_28);
  uVar1 = cocos2d::CCPoint::operator=((CCPoint *)acStack_40,(CCPoint *)acStack_30);
  __x = (double)CONCAT44(extraout_s1_00,uVar1);
  fVar4 = extraout_s2;
  if (param_1[0x3a] != 0) {
    uVar1 = (**(code **)(*(int *)param_1[0x3a] + 0x1e8))(param_1[0x3a],param_1[0x40]);
    __x = (double)CONCAT44(extraout_s1_01,uVar1);
    fVar4 = extraout_s2_00;
  }
  param_1[0x41] = (int)((float)param_1[0x41] - param_2);
  if ((local_4c <= 0.0) || (0.0 < (float)param_1[0x41])) {
    if (local_4c <= 0.0) {
      param_1[0x41] = 0;
      *(undefined1 *)(param_1 + 0x42) = 1;
    }
  }
  else {
    if (((char)param_1[0x42] != '\0') && (param_1[0x3a] != 0)) {
      if (param_1[0x3b] != 0) {
        (**(code **)(*(int *)param_1[0x3b] + 0xe8))(param_1[0x3b]);
        uVar1 = cocos2d::CCObject::release((CCObject *)param_1[0x3b]);
        __x = (double)CONCAT44(extraout_s1_02,uVar1);
        param_1[0x3b] = 0;
        fVar4 = extraout_s2_01;
      }
      param_1[0x3b] = param_1[0x3a];
      param_1[0x3a] = 0;
      *(undefined1 *)(param_1 + 0x42) = 0;
    }
    if (param_1[0x3a] == 0) {
      pcVar5 = "streak_new.png";
      iVar2 = cocos2d::CCMotionStreak::create
                        (SUB84(__x,0),(float)((ulonglong)__x >> 0x20),fVar4,(_ccColor3B *)0x3f400000
                         ,(char *)0x3f800000);
      param_1[0x3a] = iVar2;
      cocos2d::CCObject::retain((CCObject *)param_1[0x3a]);
      uVar1 = (**(code **)(*worldLayer + 0xcc))
                        (worldLayer,param_1[0x3a],2,*(code **)(*worldLayer + 0xcc),pcVar5);
      __x = (double)CONCAT44(extraout_s1_03,uVar1);
    }
    pcVar3 = *(code **)(*(int *)param_1[0x3a] + 0x1e4);
    iVar2 = param_1[0x3a];
    cos(__x);
    (*pcVar3)(iVar2,(float)((double)CONCAT44(extraout_r1,extraout_r0) + 4.0));
    (**(code **)(*(int *)param_1[0x3a] + 0x4c))(param_1[0x3a],acStack_40);
    param_1[0x41] = 0x3d99999a;
  }
  if (param_1[0x3a] != 0) {
    (**(code **)(*(int *)param_1[0x3a] + 0x14))(param_1[0x3a],param_2);
  }
  if (param_1[0x3b] != 0) {
    (**(code **)(*(int *)param_1[0x3b] + 0x14))(param_1[0x3b],param_2);
  }
  if (-1 < (int)((uint)((float)param_1[0x3d] - param_2 * 0.5 < local_4c) << 0x1f)) {
    local_4c = (float)param_1[0x3d] - param_2 * 0.5;
  }
  param_1[0x3d] = (int)local_4c;
  (**(code **)(*(int *)param_1[0x3c] + 0x268))(param_1[0x3c],(float)param_1[0x3d] * 27.0);
  (**(code **)(*(int *)param_1[0x3c] + 0x278))(param_1[0x3c],(float)param_1[0x3d] * 5.0);
  (**(code **)(*(int *)param_1[0x3c] + 0x1bc))(param_1[0x3c],acStack_40);
  return;
}

// ---- Boostie::create  @ 0x401a74
/* Boostie::create() */

Boostie * Boostie::create(void)

{
  bool bVar1;
  Boostie *this;
  int iVar2;
  
  this = operator_new(0x10c);
  Boostie(this);
  if ((this == (Boostie *)0x0) || (iVar2 = (**(code **)(*(int *)this + 0x18))(this), iVar2 == 0)) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (bVar1) {
    cocos2d::CCObject::autorelease((CCObject *)this);
  }
  else {
    if (this != (Boostie *)0x0) {
      (**(code **)(*(int *)this + 8))(this);
    }
    this = (Boostie *)0x0;
  }
  return this;
}
