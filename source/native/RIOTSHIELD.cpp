// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 24 functions

// ---- RIOTSHIELD::RIOTSHIELD  @ 0x3c9848
/* RIOTSHIELD::RIOTSHIELD() */

RIOTSHIELD * __thiscall RIOTSHIELD::RIOTSHIELD(RIOTSHIELD *this)

{
  Weapon::Weapon((Weapon *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_00918948;
  return this;
}

// ---- RIOTSHIELD::init  @ 0x3c9878
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003c9a1e */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* RIOTSHIELD::init() */

bool RIOTSHIELD::init(void)

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
    uVar2 = cocos2d::CCSprite::createWithSpriteFrameName("shield.png");
    *(undefined4 *)(local_14 + 0x1ec) = uVar2;
    cocos2d::CCObject::retain(*(CCObject **)(local_14 + 0x1ec));
    local_14[0x1f8] = (Weapon)0x0;
    (**(code **)(*(int *)local_14 + 0x1e0))(local_14);
    fVar6 = (float)(**(code **)(*(int *)local_14 + 0xcc))
                             (local_14,*(undefined4 *)(local_14 + 0x1ec),0);
    pCVar4 = *(CCArray **)(local_14 + 0x150);
    pCVar3 = (CCObject *)cocos2d::CCFloat::create(fVar6);
    cocos2d::CCArray::addObject(pCVar4,pCVar3);
    pCVar4 = *(CCArray **)(local_14 + 0x14c);
    FUN_0079a3f4(auStack_10);
    FUN_007c6a60(asStack_c,&DAT_007e482c,auStack_10);
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
    *(undefined4 *)(local_14 + 0x188) = 0xd;
    *(undefined4 *)(local_14 + 0x19c) = 100;
    *(undefined4 *)(local_14 + 0x1a0) = 0x28;
    *(undefined4 *)(local_14 + 0x1a4) = 0;
    local_14[0x1b0] = (Weapon)0x1;
    local_14[0x183] = (Weapon)0x1;
    local_14[0x182] = (Weapon)0x1;
    local_14[0x185] = (Weapon)0x1;
    *(undefined4 *)(local_14 + 0x1cc) = 0x3f59999a;
    *(undefined4 *)(local_14 + 0x170) = 0;
    *(undefined4 *)(local_14 + 0x174) = 0;
    FUN_003c8a64(0,in_s1,0,&local_28);
    *(undefined4 *)(pWVar1 + 0x1d8) = local_28;
    *(undefined4 *)(pWVar1 + 0x1dc) = uStack_24;
    *(undefined4 *)(pWVar1 + 0x1e0) = uStack_20;
    *(undefined4 *)(pWVar1 + 0x1e4) = uStack_1c;
    *(undefined4 *)(local_14 + 0x198) = 0;
  }
  return bVar5;
}

// ---- RIOTSHIELD::~RIOTSHIELD  @ 0x3c9a68
/* WARNING: Removing unreachable block (ram,0x003c9abc) */
/* RIOTSHIELD::~RIOTSHIELD() */

RIOTSHIELD * __thiscall RIOTSHIELD::~RIOTSHIELD(RIOTSHIELD *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_00918948;
  cocos2d::CCNode::removeAllChildren((CCNode *)this);
  removeBodyShape2(this);
  cocos2d::CCObject::release(*(CCObject **)(this + 0x1ec));
  cpShapeFree(*(undefined4 *)(this + 0x1f0));
  cpBodyFree(*(undefined4 *)(this + 500));
  Weapon::~Weapon((Weapon *)this);
  return this;
}

// ---- RIOTSHIELD::~RIOTSHIELD  @ 0x3c9ad4
/* RIOTSHIELD::~RIOTSHIELD() */

RIOTSHIELD * __thiscall RIOTSHIELD::~RIOTSHIELD(RIOTSHIELD *this)

{
  ~RIOTSHIELD(this);
  operator_delete(this);
  return this;
}

// ---- RIOTSHIELD::addBodyShape2  @ 0x3c9af0
/* RIOTSHIELD::addBodyShape2() */

void __thiscall RIOTSHIELD::addBodyShape2(RIOTSHIELD *this)

{
  *(RIOTSHIELD **)(*(int *)(this + 500) + 0x90) = this;
  if (this[0x1f8] != (RIOTSHIELD)0x1) {
    this[0x1f8] = (RIOTSHIELD)0x1;
    cpSpaceAddBody(space,*(undefined4 *)(this + 500));
    cpSpaceAddShape(space,*(undefined4 *)(this + 0x1f0));
  }
  return;
}

// ---- RIOTSHIELD::removeBodyShape2  @ 0x3c9b54
/* RIOTSHIELD::removeBodyShape2() */

void __thiscall RIOTSHIELD::removeBodyShape2(RIOTSHIELD *this)

{
  *(undefined4 *)(*(int *)(this + 500) + 0x90) = 0;
  if (this[0x1f8] != (RIOTSHIELD)0x0) {
    this[0x1f8] = (RIOTSHIELD)0x0;
    cpSpaceRemoveBody(space,*(undefined4 *)(this + 500));
    cpSpaceRemoveShape(space,*(undefined4 *)(this + 0x1f0));
  }
  return;
}

// ---- RIOTSHIELD::removeBodyShape  @ 0x3c9bb0
/* RIOTSHIELD::removeBodyShape() */

void __thiscall RIOTSHIELD::removeBodyShape(RIOTSHIELD *this)

{
  Item::removeBodyShape((Item *)this);
  removeBodyShape2(this);
  return;
}

// ---- RIOTSHIELD::initBody  @ 0x3c9bd0
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003c9c74 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* RIOTSHIELD::initBody() */

void RIOTSHIELD::initBody(void)

{
  int in_r0;
  undefined4 uVar1;
  int iVar2;
  undefined4 in_s1;
  float fVar3;
  float fVar4;
  undefined1 auStack_50 [16];
  undefined1 auStack_40 [16];
  undefined1 auStack_30 [16];
  undefined1 auStack_20 [16];
  
  Weapon::initBody();
  uVar1 = cpBodyNew(0xa0000000,0x3fb99999,0,0x40140000);
  *(undefined4 *)(in_r0 + 500) = uVar1;
  **(undefined4 **)(in_r0 + 500) = &LAB_003c980c_1;
  *(int *)(*(int *)(in_r0 + 500) + 0x90) = in_r0;
  fVar3 = playerScale * 40.0;
  fVar4 = playerScale * 7.0;
  FUN_003c8a64(SUB84((double)-fVar4,0),in_s1,SUB84((double)-fVar3,0),auStack_50);
  FUN_003c8a64(SUB84((double)-fVar4,0),in_s1,SUB84((double)fVar3,0),auStack_40);
  FUN_003c8a64(SUB84((double)fVar4,0),in_s1,SUB84((double)fVar3,0),auStack_30);
  FUN_003c8a64(SUB84((double)fVar4,0),in_s1,SUB84((double)-fVar3,0),auStack_20);
  uVar1 = cpPolyShapeNew(*(undefined4 *)(in_r0 + 500),4,auStack_50);
  *(undefined4 *)(in_r0 + 0x1f0) = uVar1;
  *(undefined4 *)(*(int *)(in_r0 + 0x1f0) + 0x54) = 0xd;
  *(undefined4 *)(*(int *)(in_r0 + 0x1f0) + 0x5c) = 0xd;
  *(undefined4 *)(*(int *)(in_r0 + 0x1f0) + 0x58) = 0xd;
  iVar2 = *(int *)(in_r0 + 0x1f0);
  *(undefined4 *)(iVar2 + 0x30) = 0xa0000000;
  *(undefined4 *)(iVar2 + 0x34) = 0x3fb99999;
  iVar2 = *(int *)(in_r0 + 0x1f0);
  *(undefined4 *)(iVar2 + 0x38) = 0xc0000000;
  *(undefined4 *)(iVar2 + 0x3c) = 0x3feccccc;
  *(undefined4 *)(*(int *)(in_r0 + 0x1f0) + 0x50) = 0;
  return;
}

// ---- RIOTSHIELD::updateItemStep  @ 0x3c9d80
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003c9e4a */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* RIOTSHIELD::updateItemStep(float) */

void __thiscall RIOTSHIELD::updateItemStep(RIOTSHIELD *this,float param_1)

{
  undefined4 uVar1;
  int iVar2;
  float in_s1;
  undefined4 local_50;
  undefined4 uStack_4c;
  undefined4 uStack_48;
  undefined4 uStack_44;
  RIOTSHIELD *local_3c;
  CCPoint aCStack_38 [8];
  float local_30;
  float local_2c;
  cocos2d acStack_28 [8];
  CCAffineTransform aCStack_20 [24];
  
  if (this[0x1f8] != (RIOTSHIELD)0x0) {
    local_3c = this;
    cocos2d::CCPoint::CCPoint(aCStack_38,param_1,in_s1);
    uVar1 = (**(code **)(*(int *)local_3c + 0x50))(local_3c);
    FUN_003c8a44(acStack_28,uVar1,aCStack_38);
    (**(code **)(*(int *)local_3c + 0x184))(aCStack_20,local_3c);
    cocos2d::__CCPointApplyAffineTransform((cocos2d *)&local_30,acStack_28,aCStack_20);
    (**(code **)(*worldLayer + 0x188))(aCStack_20,worldLayer);
    cocos2d::__CCPointApplyAffineTransform(acStack_28,(CCPoint *)&local_30,aCStack_20);
    cocos2d::CCPoint::operator=((CCPoint *)&local_30,(CCPoint *)acStack_28);
    iVar2 = *(int *)(local_3c + 500);
    FUN_003c8a64(SUB84((double)local_30,0),in_s1,SUB84((double)local_2c,0),&local_50);
    *(undefined4 *)(iVar2 + 0x28) = local_50;
    *(undefined4 *)(iVar2 + 0x2c) = uStack_4c;
    *(undefined4 *)(iVar2 + 0x30) = uStack_48;
    *(undefined4 *)(iVar2 + 0x34) = uStack_44;
    *(double *)(*(int *)(local_3c + 500) + 0x58) =
         (double)(-*(float *)(local_3c + 0x1c8) * 0.017453292);
  }
  return;
}

// ---- RIOTSHIELD::updateRemoteItemStep  @ 0x3c9e88
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003c9f52 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* RIOTSHIELD::updateRemoteItemStep(float) */

void __thiscall RIOTSHIELD::updateRemoteItemStep(RIOTSHIELD *this,float param_1)

{
  undefined4 uVar1;
  int iVar2;
  float in_s1;
  undefined4 local_50;
  undefined4 uStack_4c;
  undefined4 uStack_48;
  undefined4 uStack_44;
  RIOTSHIELD *local_3c;
  CCPoint aCStack_38 [8];
  float local_30;
  float local_2c;
  cocos2d acStack_28 [8];
  CCAffineTransform aCStack_20 [24];
  
  if (this[0x1f8] != (RIOTSHIELD)0x0) {
    local_3c = this;
    cocos2d::CCPoint::CCPoint(aCStack_38,param_1,in_s1);
    uVar1 = (**(code **)(*(int *)local_3c + 0x50))(local_3c);
    FUN_003c8a44(acStack_28,uVar1,aCStack_38);
    (**(code **)(*(int *)local_3c + 0x184))(aCStack_20,local_3c);
    cocos2d::__CCPointApplyAffineTransform((cocos2d *)&local_30,acStack_28,aCStack_20);
    (**(code **)(*worldLayer + 0x188))(aCStack_20,worldLayer);
    cocos2d::__CCPointApplyAffineTransform(acStack_28,(CCPoint *)&local_30,aCStack_20);
    cocos2d::CCPoint::operator=((CCPoint *)&local_30,(CCPoint *)acStack_28);
    iVar2 = *(int *)(local_3c + 500);
    FUN_003c8a64(SUB84((double)local_30,0),in_s1,SUB84((double)local_2c,0),&local_50);
    *(undefined4 *)(iVar2 + 0x28) = local_50;
    *(undefined4 *)(iVar2 + 0x2c) = uStack_4c;
    *(undefined4 *)(iVar2 + 0x30) = uStack_48;
    *(undefined4 *)(iVar2 + 0x34) = uStack_44;
    *(double *)(*(int *)(local_3c + 500) + 0x58) =
         (double)(-*(float *)(local_3c + 0x1c8) * 0.017453292);
  }
  return;
}

// ---- RIOTSHIELD::triggerPull  @ 0x3c9f90
/* RIOTSHIELD::triggerPull(float) */

void RIOTSHIELD::triggerPull(float param_1)

{
  return;
}

// ---- RIOTSHIELD::remoteTriggerPull  @ 0x3c9f9c
/* RIOTSHIELD::remoteTriggerPull(float) */

void RIOTSHIELD::remoteTriggerPull(float param_1)

{
  return;
}

// ---- RIOTSHIELD::getShellPoint  @ 0x3c9fa8
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003ca062 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* RIOTSHIELD::getShellPoint() */

undefined4 RIOTSHIELD::getShellPoint(void)

{
  undefined4 in_r0;
  undefined4 uVar1;
  int *in_r1;
  float extraout_s0;
  float extraout_s1;
  float local_40;
  float local_3c;
  CCPoint aCStack_38 [8];
  cocos2d acStack_30 [8];
  CCAffineTransform aCStack_28 [28];
  
  uVar1 = (**(code **)(*in_r1 + 0x50))(in_r1);
  cocos2d::CCPoint::CCPoint(aCStack_38,extraout_s0,extraout_s1);
  FUN_003c8a44(acStack_30,uVar1,aCStack_38);
  (**(code **)(*in_r1 + 0x184))(aCStack_28,in_r1);
  cocos2d::__CCPointApplyAffineTransform((cocos2d *)&local_40,acStack_30,aCStack_28);
  (**(code **)(*worldLayer + 0x188))(aCStack_28,worldLayer);
  cocos2d::__CCPointApplyAffineTransform(acStack_30,(CCPoint *)&local_40,aCStack_28);
  cocos2d::CCPoint::operator=((CCPoint *)&local_40,(CCPoint *)acStack_30);
  FUN_003c8a64(SUB84((double)local_40,0),extraout_s1,SUB84((double)local_3c,0),in_r0);
  return in_r0;
}

// ---- RIOTSHIELD::playSound  @ 0x3ca074
/* RIOTSHIELD::playSound() */

void RIOTSHIELD::playSound(void)

{
  return;
}

// ---- RIOTSHIELD::setPrimaryConfiguration  @ 0x3ca07c
/* RIOTSHIELD::setPrimaryConfiguration() */

void RIOTSHIELD::setPrimaryConfiguration(void)

{
  return;
}

// ---- RIOTSHIELD::setHostDualConfiguration  @ 0x3ca084
/* RIOTSHIELD::setHostDualConfiguration() */

void __thiscall RIOTSHIELD::setHostDualConfiguration(RIOTSHIELD *this)

{
  (**(code **)(*(int *)this + 0x1dc))(this);
  return;
}

// ---- RIOTSHIELD::setDualConfiguration  @ 0x3ca0a0
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003ca0cc */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* RIOTSHIELD::setDualConfiguration() */

void __thiscall RIOTSHIELD::setDualConfiguration(RIOTSHIELD *this)

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
    FUN_003c8a8c(0,fVar4,0,*(undefined4 *)(this + 0xe8));
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
  (**(code **)(**(int **)(this + 0x1ec) + 0x98))(*(undefined4 *)(this + 0x1ec),0);
  (**(code **)(**(int **)(this + 0x1ec) + 0x40))(*(undefined4 *)(this + 0x1ec),0x3f800000);
  pcVar1 = *(code **)(*(int *)this + 0x4c);
  cocos2d::CCPoint::CCPoint(aCStack_18,fVar3,fVar4);
  (*pcVar1)(this,aCStack_18);
  (**(code **)(*(int *)this + 0x40))(this,0x3f800000);
  (**(code **)(*(int *)this + 0x98))(this,0);
  addBodyShape2(this);
  return;
}

// ---- RIOTSHIELD::setSecondaryConfiguration  @ 0x3ca1cc
/* RIOTSHIELD::setSecondaryConfiguration() */

void RIOTSHIELD::setSecondaryConfiguration(void)

{
  return;
}

// ---- RIOTSHIELD::setMapConfiguration  @ 0x3ca1d4
/* RIOTSHIELD::setMapConfiguration() */

void RIOTSHIELD::setMapConfiguration(void)

{
  RIOTSHIELD *in_r0;
  code *pcVar1;
  undefined4 uVar2;
  float in_s0;
  float in_s1;
  undefined8 uVar3;
  CCPoint aCStack_18 [8];
  
  *(undefined4 *)(in_r0 + 400) = 0;
  pcVar1 = *(code **)(**(int **)(in_r0 + 0x1ec) + 0x4c);
  uVar2 = *(undefined4 *)(in_r0 + 0x1ec);
  cocos2d::CCPoint::CCPoint(aCStack_18,in_s0,in_s1);
  uVar3 = (*pcVar1)(uVar2,aCStack_18);
  pcVar1 = *(code **)(**(int **)(in_r0 + 0x1ec) + 0x7c);
  uVar2 = *(undefined4 *)(in_r0 + 0x1ec);
  cocos2d::CCPoint::CCPoint(aCStack_18,(float)uVar3,(float)((ulonglong)uVar3 >> 0x20));
  (*pcVar1)(uVar2,aCStack_18);
  uVar3 = (**(code **)(**(int **)(in_r0 + 0x1ec) + 0x98))(*(undefined4 *)(in_r0 + 0x1ec),0x42b40000)
  ;
  pcVar1 = *(code **)(*(int *)in_r0 + 0x4c);
  cocos2d::CCPoint::CCPoint(aCStack_18,(float)uVar3,(float)((ulonglong)uVar3 >> 0x20));
  (*pcVar1)(in_r0,aCStack_18);
  (**(code **)(*(int *)in_r0 + 0x40))(in_r0,playerScale);
  if (*(int *)(in_r0 + 0x1f0) != 0) {
    *(undefined4 *)(*(int *)(in_r0 + 0x1f0) + 0x54) = 0xd;
    *(undefined4 *)(*(int *)(in_r0 + 0x1f0) + 0x5c) = 0xd;
    *(undefined4 *)(*(int *)(in_r0 + 0x1f0) + 0x58) = 0xd;
  }
  removeBodyShape2(in_r0);
  return;
}

// ---- RIOTSHIELD::getWeaponTexture  @ 0x3ca2cc
/* RIOTSHIELD::getWeaponTexture() */

undefined4 __thiscall RIOTSHIELD::getWeaponTexture(RIOTSHIELD *this)

{
  undefined4 uVar1;
  
  uVar1 = (**(code **)(**(int **)(this + 0x1ec) + 500))(*(undefined4 *)(this + 0x1ec));
  return uVar1;
}

// ---- RIOTSHIELD::getWeaponRect  @ 0x3ca2f4
/* RIOTSHIELD::getWeaponRect() */

CCRect * RIOTSHIELD::getWeaponRect(void)

{
  CCRect *in_r0;
  CCRect *pCVar1;
  int in_r1;
  
  pCVar1 = (CCRect *)cocos2d::CCSprite::getTextureRect(*(CCSprite **)(in_r1 + 0x1ec));
  cocos2d::CCRect::CCRect(in_r0,pCVar1);
  return in_r0;
}

// ---- RIOTSHIELD::isRight  @ 0x3ca31c
/* RIOTSHIELD::isRight() */

bool __thiscall RIOTSHIELD::isRight(RIOTSHIELD *this)

{
  float fVar1;
  
  fVar1 = (float)(**(code **)(**(int **)(this + 0x1ec) + 0x34))(*(undefined4 *)(this + 0x1ec));
  return 1.0 < fVar1;
}

// ---- RIOTSHIELD::setRight  @ 0x3ca358
/* RIOTSHIELD::setRight(bool) */

void __thiscall RIOTSHIELD::setRight(RIOTSHIELD *this,bool param_1)

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

// ---- RIOTSHIELD::create  @ 0x4276ac
/* RIOTSHIELD::create() */

RIOTSHIELD * RIOTSHIELD::create(void)

{
  bool bVar1;
  RIOTSHIELD *this;
  int iVar2;
  
  this = operator_new(0x200);
  RIOTSHIELD(this);
  if ((this == (RIOTSHIELD *)0x0) || (iVar2 = (**(code **)(*(int *)this + 0x18))(this), iVar2 == 0))
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
    if (this != (RIOTSHIELD *)0x0) {
      (**(code **)(*(int *)this + 8))(this);
    }
    this = (RIOTSHIELD *)0x0;
  }
  return this;
}
