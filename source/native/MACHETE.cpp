// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 19 functions

// ---- MACHETE::MACHETE  @ 0x36979c
/* MACHETE::MACHETE() */

MACHETE * __thiscall MACHETE::MACHETE(MACHETE *this)

{
  Weapon::Weapon((Weapon *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_009144d8;
  return this;
}

// ---- MACHETE::init  @ 0x3697c8
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x0036995e */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* MACHETE::init() */

bool MACHETE::init(void)

{
  Weapon *pWVar1;
  Weapon *in_r0;
  undefined4 uVar2;
  CCObject *pCVar3;
  CCFloat *this;
  CCArray *pCVar4;
  bool bVar5;
  float fVar6;
  undefined4 in_s1;
  undefined4 local_28;
  undefined4 uStack_24;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  Weapon *local_14;
  undefined1 auStack_10 [3];
  char local_d;
  string asStack_c [4];
  
  local_14 = in_r0;
  local_d = Weapon::init(in_r0);
  bVar5 = local_d == '\x01';
  if (bVar5) {
    uVar2 = cocos2d::CCSprite::createWithSpriteFrameName("machete.png");
    *(undefined4 *)(local_14 + 0x1ec) = uVar2;
    cocos2d::CCObject::retain(*(CCObject **)(local_14 + 0x1ec));
    (**(code **)(*(int *)local_14 + 0x1e0))(local_14);
    fVar6 = (float)(**(code **)(*(int *)local_14 + 0xcc))
                             (local_14,*(undefined4 *)(local_14 + 0x1ec),0);
    pCVar4 = *(CCArray **)(local_14 + 0x150);
    pCVar3 = (CCObject *)cocos2d::CCFloat::create(fVar6);
    cocos2d::CCArray::addObject(pCVar4,pCVar3);
    pCVar4 = *(CCArray **)(local_14 + 0x14c);
    FUN_0079a3f4(auStack_10);
    FUN_007c6a60(asStack_c,&DAT_007dc5dc,auStack_10);
    pCVar3 = (CCObject *)cocos2d::CCString::create(asStack_c);
    cocos2d::CCArray::addObject(pCVar4,pCVar3);
    FUN_007c5914(asStack_c);
    FUN_0079a3fc(auStack_10);
    *(undefined4 *)(local_14 + 0x144) = 0;
    this = (CCFloat *)cocos2d::CCArray::objectAtIndex(*(CCArray **)(local_14 + 0x150),0);
    uVar2 = cocos2d::CCFloat::getValue(this);
    pWVar1 = local_14;
    *(undefined4 *)(local_14 + 0x148) = uVar2;
    *(undefined4 *)(local_14 + 0x15c) = 0x3f19999a;
    *(undefined4 *)(local_14 + 0x160) = 0x40000000;
    *(undefined4 *)(local_14 + 0x164) = 0x3f800000;
    *(undefined4 *)(local_14 + 0x16c) = 0x41c80000;
    *(undefined2 *)(local_14 + 0x1e8) = 1;
    *(undefined2 *)(local_14 + 0x1ea) = 1;
    *(undefined4 *)(local_14 + 0x18c) = 0x28;
    *(undefined4 *)(local_14 + 0x188) = 1;
    *(undefined4 *)(local_14 + 0x19c) = 100;
    *(undefined4 *)(local_14 + 0x1a0) = 0x28;
    *(undefined4 *)(local_14 + 0x1a4) = 0;
    local_14[0x1b0] = (Weapon)0x1;
    local_14[0x183] = (Weapon)0x1;
    local_14[0x184] = (Weapon)0x1;
    *(undefined4 *)(local_14 + 0x1cc) = 0x3f666666;
    *(undefined4 *)(local_14 + 0x170) = 0;
    *(undefined4 *)(local_14 + 0x174) = 0;
    FUN_003689f0(0,in_s1,0,&local_28);
    *(undefined4 *)(pWVar1 + 0x1d8) = local_28;
    *(undefined4 *)(pWVar1 + 0x1dc) = uStack_24;
    *(undefined4 *)(pWVar1 + 0x1e0) = uStack_20;
    *(undefined4 *)(pWVar1 + 0x1e4) = uStack_1c;
    *(undefined4 *)(local_14 + 0x198) = 0;
  }
  return bVar5;
}

// ---- MACHETE::~MACHETE  @ 0x3699a8
/* WARNING: Removing unreachable block (ram,0x003699de) */
/* MACHETE::~MACHETE() */

MACHETE * __thiscall MACHETE::~MACHETE(MACHETE *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_009144d8;
  cocos2d::CCNode::removeAllChildren((CCNode *)this);
  cocos2d::CCObject::release(*(CCObject **)(this + 0x1ec));
  Weapon::~Weapon((Weapon *)this);
  return this;
}

// ---- MACHETE::~MACHETE  @ 0x3699f8
/* MACHETE::~MACHETE() */

MACHETE * __thiscall MACHETE::~MACHETE(MACHETE *this)

{
  ~MACHETE(this);
  operator_delete(this);
  return this;
}

// ---- MACHETE::updateItemStep  @ 0x369a14
/* MACHETE::updateItemStep(float) */

void MACHETE::updateItemStep(float param_1)

{
  return;
}

// ---- MACHETE::triggerPull  @ 0x369a20
/* MACHETE::triggerPull(float) */

void MACHETE::triggerPull(float param_1)

{
  return;
}

// ---- MACHETE::updateRemoteItemStep  @ 0x369a2c
/* MACHETE::updateRemoteItemStep(float) */

void MACHETE::updateRemoteItemStep(float param_1)

{
  return;
}

// ---- MACHETE::remoteTriggerPull  @ 0x369a38
/* MACHETE::remoteTriggerPull(float) */

void MACHETE::remoteTriggerPull(float param_1)

{
  return;
}

// ---- MACHETE::getShellPoint  @ 0x369a44
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x00369af2 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* MACHETE::getShellPoint() */

undefined4 MACHETE::getShellPoint(void)

{
  undefined4 in_r0;
  undefined4 uVar1;
  int *in_r1;
  float extraout_s0;
  float extraout_s1;
  cocos2d acStack_40 [8];
  CCPoint aCStack_38 [8];
  float local_30;
  float local_2c;
  CCAffineTransform aCStack_28 [28];
  
  uVar1 = (**(code **)(*in_r1 + 0x50))(in_r1);
  cocos2d::CCPoint::CCPoint(aCStack_38,extraout_s0,extraout_s1);
  FUN_003689d0(&local_30,uVar1,aCStack_38);
  (**(code **)(*in_r1 + 0x184))(aCStack_28,in_r1);
  cocos2d::__CCPointApplyAffineTransform(acStack_40,(CCPoint *)&local_30,aCStack_28);
  (**(code **)(*worldLayer + 0x188))(aCStack_28,worldLayer);
  cocos2d::__CCPointApplyAffineTransform((cocos2d *)&local_30,acStack_40,aCStack_28);
  FUN_003689f0(SUB84((double)local_30,0),extraout_s1,SUB84((double)local_2c,0),in_r0);
  return in_r0;
}

// ---- MACHETE::playSound  @ 0x369b04
/* MACHETE::playSound() */

void MACHETE::playSound(void)

{
  return;
}

// ---- MACHETE::setPrimaryConfiguration  @ 0x369b0c
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x00369b38 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* MACHETE::setPrimaryConfiguration() */

void __thiscall MACHETE::setPrimaryConfiguration(MACHETE *this)

{
  undefined4 extraout_r1;
  code *pcVar1;
  undefined4 uVar2;
  float fVar3;
  undefined8 in_d0;
  float fVar4;
  CCPoint aCStack_18 [12];
  
  fVar4 = (float)((ulonglong)in_d0 >> 0x20);
  if (*(int *)(this + 0xe8) != 0) {
    FUN_00368a18(0,fVar4,0,*(undefined4 *)(this + 0xe8));
    cpBodySetAngle(*(undefined4 *)(this + 0xe8),extraout_r1,0,0);
  }
  pcVar1 = *(code **)(**(int **)(this + 0x1ec) + 0x4c);
  uVar2 = *(undefined4 *)(this + 0x1ec);
  fVar3 = (float)in_d0;
  cocos2d::CCPoint::CCPoint(aCStack_18,fVar3,fVar4);
  (*pcVar1)(uVar2,aCStack_18);
  pcVar1 = *(code **)(**(int **)(this + 0x1ec) + 0x7c);
  uVar2 = *(undefined4 *)(this + 0x1ec);
  cocos2d::CCPoint::CCPoint(aCStack_18,fVar3,fVar4);
  (*pcVar1)(uVar2,aCStack_18);
  (**(code **)(**(int **)(this + 0x1ec) + 0x98))(*(undefined4 *)(this + 0x1ec),0xc2200000);
  (**(code **)(**(int **)(this + 0x1ec) + 0x40))(*(undefined4 *)(this + 0x1ec),0x3f800000);
  pcVar1 = *(code **)(*(int *)this + 0x4c);
  cocos2d::CCPoint::CCPoint(aCStack_18,fVar3,fVar4);
  (*pcVar1)(this,aCStack_18);
  (**(code **)(*(int *)this + 0x40))(this,0x3f800000);
  (**(code **)(*(int *)this + 0x98))(this,0);
  return;
}

// ---- MACHETE::setSecondaryConfiguration  @ 0x369c38
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x00369c64 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* MACHETE::setSecondaryConfiguration() */

void __thiscall MACHETE::setSecondaryConfiguration(MACHETE *this)

{
  undefined4 extraout_r1;
  code *pcVar1;
  undefined4 uVar2;
  float fVar3;
  undefined8 in_d0;
  float fVar4;
  CCPoint aCStack_18 [12];
  
  fVar4 = (float)((ulonglong)in_d0 >> 0x20);
  if (*(int *)(this + 0xe8) != 0) {
    FUN_00368a18(0,fVar4,0,*(undefined4 *)(this + 0xe8));
    cpBodySetAngle(*(undefined4 *)(this + 0xe8),extraout_r1,0,0);
  }
  pcVar1 = *(code **)(**(int **)(this + 0x1ec) + 0x4c);
  uVar2 = *(undefined4 *)(this + 0x1ec);
  fVar3 = (float)in_d0;
  cocos2d::CCPoint::CCPoint(aCStack_18,fVar3,fVar4);
  (*pcVar1)(uVar2,aCStack_18);
  pcVar1 = *(code **)(**(int **)(this + 0x1ec) + 0x7c);
  uVar2 = *(undefined4 *)(this + 0x1ec);
  cocos2d::CCPoint::CCPoint(aCStack_18,fVar3,fVar4);
  (*pcVar1)(uVar2,aCStack_18);
  (**(code **)(**(int **)(this + 0x1ec) + 0x98))(*(undefined4 *)(this + 0x1ec),0x42820000);
  (**(code **)(**(int **)(this + 0x1ec) + 0x40))(*(undefined4 *)(this + 0x1ec),0x3f800000);
  pcVar1 = *(code **)(*(int *)this + 0x4c);
  cocos2d::CCPoint::CCPoint(aCStack_18,fVar3,fVar4);
  (*pcVar1)(this,aCStack_18);
  (**(code **)(*(int *)this + 0x40))(this,0x3f800000);
  (**(code **)(*(int *)this + 0x98))(this,0);
  return;
}

// ---- MACHETE::setDualConfiguration  @ 0x369d60
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x00369d8c */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* MACHETE::setDualConfiguration() */

void __thiscall MACHETE::setDualConfiguration(MACHETE *this)

{
  undefined4 extraout_r1;
  code *pcVar1;
  undefined4 uVar2;
  float fVar3;
  undefined8 in_d0;
  float fVar4;
  CCPoint aCStack_18 [12];
  
  fVar4 = (float)((ulonglong)in_d0 >> 0x20);
  if (*(int *)(this + 0xe8) != 0) {
    FUN_00368a18(0,fVar4,0,*(undefined4 *)(this + 0xe8));
    cpBodySetAngle(*(undefined4 *)(this + 0xe8),extraout_r1,0,0);
  }
  pcVar1 = *(code **)(**(int **)(this + 0x1ec) + 0x4c);
  uVar2 = *(undefined4 *)(this + 0x1ec);
  fVar3 = (float)in_d0;
  cocos2d::CCPoint::CCPoint(aCStack_18,fVar3,fVar4);
  (*pcVar1)(uVar2,aCStack_18);
  pcVar1 = *(code **)(**(int **)(this + 0x1ec) + 0x7c);
  uVar2 = *(undefined4 *)(this + 0x1ec);
  cocos2d::CCPoint::CCPoint(aCStack_18,fVar3,fVar4);
  (*pcVar1)(uVar2,aCStack_18);
  (**(code **)(**(int **)(this + 0x1ec) + 0x98))(*(undefined4 *)(this + 0x1ec),0xc2200000);
  (**(code **)(**(int **)(this + 0x1ec) + 0x40))(*(undefined4 *)(this + 0x1ec),0x3f800000);
  pcVar1 = *(code **)(*(int *)this + 0x4c);
  cocos2d::CCPoint::CCPoint(aCStack_18,fVar3,fVar4);
  (*pcVar1)(this,aCStack_18);
  (**(code **)(*(int *)this + 0x40))(this,0x3f800000);
  (**(code **)(*(int *)this + 0x98))(this,0);
  return;
}

// ---- MACHETE::setMapConfiguration  @ 0x369e8c
/* MACHETE::setMapConfiguration() */

void MACHETE::setMapConfiguration(void)

{
  int *in_r0;
  code *pcVar1;
  int iVar2;
  float in_s0;
  float in_s1;
  undefined8 uVar3;
  CCPoint aCStack_18 [8];
  
  in_r0[100] = 0;
  pcVar1 = *(code **)(*(int *)in_r0[0x7b] + 0x4c);
  iVar2 = in_r0[0x7b];
  cocos2d::CCPoint::CCPoint(aCStack_18,in_s0,in_s1);
  uVar3 = (*pcVar1)(iVar2,aCStack_18);
  pcVar1 = *(code **)(*(int *)in_r0[0x7b] + 0x7c);
  iVar2 = in_r0[0x7b];
  cocos2d::CCPoint::CCPoint(aCStack_18,(float)uVar3,(float)((ulonglong)uVar3 >> 0x20));
  (*pcVar1)(iVar2,aCStack_18);
  uVar3 = (**(code **)(*(int *)in_r0[0x7b] + 0x98))(in_r0[0x7b],0);
  pcVar1 = *(code **)(*in_r0 + 0x4c);
  cocos2d::CCPoint::CCPoint(aCStack_18,(float)uVar3,(float)((ulonglong)uVar3 >> 0x20));
  (*pcVar1)(in_r0,aCStack_18);
  (**(code **)(*in_r0 + 0x40))(in_r0,playerScale);
  return;
}

// ---- MACHETE::getWeaponTexture  @ 0x369f54
/* MACHETE::getWeaponTexture() */

undefined4 __thiscall MACHETE::getWeaponTexture(MACHETE *this)

{
  undefined4 uVar1;
  
  uVar1 = (**(code **)(**(int **)(this + 0x1ec) + 500))(*(undefined4 *)(this + 0x1ec));
  return uVar1;
}

// ---- MACHETE::getWeaponRect  @ 0x369f7c
/* MACHETE::getWeaponRect() */

CCRect * MACHETE::getWeaponRect(void)

{
  CCRect *in_r0;
  CCRect *pCVar1;
  int in_r1;
  
  pCVar1 = (CCRect *)cocos2d::CCSprite::getTextureRect(*(CCSprite **)(in_r1 + 0x1ec));
  cocos2d::CCRect::CCRect(in_r0,pCVar1);
  return in_r0;
}

// ---- MACHETE::isRight  @ 0x369fa4
/* MACHETE::isRight() */

bool __thiscall MACHETE::isRight(MACHETE *this)

{
  float fVar1;
  
  fVar1 = (float)(**(code **)(**(int **)(this + 0x1ec) + 0x34))(*(undefined4 *)(this + 0x1ec));
  return 1.0 < fVar1;
}

// ---- MACHETE::setRight  @ 0x369fe0
/* MACHETE::setRight(bool) */

void __thiscall MACHETE::setRight(MACHETE *this,bool param_1)

{
  undefined4 uVar1;
  
  if (param_1) {
    uVar1 = 0x3f800000;
  }
  else {
    uVar1 = 0xbf800000;
  }
  (**(code **)(**(int **)(this + 0x1ec) + 0x30))(*(undefined4 *)(this + 0x1ec),uVar1);
  return;
}

// ---- MACHETE::create  @ 0x42724c
/* MACHETE::create() */

MACHETE * MACHETE::create(void)

{
  bool bVar1;
  MACHETE *this;
  int iVar2;
  
  this = operator_new(0x1f0);
  MACHETE(this);
  if ((this == (MACHETE *)0x0) || (iVar2 = (**(code **)(*(int *)this + 0x18))(this), iVar2 == 0)) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (bVar1) {
    cocos2d::CCObject::autorelease((CCObject *)this);
  }
  else {
    if (this != (MACHETE *)0x0) {
      (**(code **)(*(int *)this + 8))(this);
    }
    this = (MACHETE *)0x0;
  }
  return this;
}
