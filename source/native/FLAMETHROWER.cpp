// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 20 functions

// ---- FLAMETHROWER::FLAMETHROWER  @ 0x33061c
/* FLAMETHROWER::FLAMETHROWER() */

FLAMETHROWER * __thiscall FLAMETHROWER::FLAMETHROWER(FLAMETHROWER *this)

{
  Weapon::Weapon((Weapon *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_009110e0;
  return this;
}

// ---- FLAMETHROWER::init  @ 0x330648
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x00330854 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* FLAMETHROWER::init() */

bool FLAMETHROWER::init(void)

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
    uVar2 = cocos2d::CCSprite::createWithSpriteFrameName("flamethrower.png");
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
    FUN_007c6a60(asStack_c,&DAT_007d7784,auStack_10);
    pCVar3 = (CCObject *)cocos2d::CCString::create(asStack_c);
    cocos2d::CCArray::addObject(pCVar4,pCVar3);
    FUN_007c5914(asStack_c);
    fVar6 = (float)FUN_0079a3fc(auStack_10);
    pCVar4 = *(CCArray **)(local_14 + 0x150);
    pCVar3 = (CCObject *)cocos2d::CCFloat::create(fVar6);
    cocos2d::CCArray::addObject(pCVar4,pCVar3);
    pCVar4 = *(CCArray **)(local_14 + 0x14c);
    FUN_0079a3f4(auStack_10);
    FUN_007c6a60(asStack_c,&DAT_007d7788,auStack_10);
    pCVar3 = (CCObject *)cocos2d::CCString::create(asStack_c);
    cocos2d::CCArray::addObject(pCVar4,pCVar3);
    FUN_007c5914(asStack_c);
    FUN_0079a3fc(auStack_10);
    *(undefined4 *)(local_14 + 0x144) = 0;
    this = (CCFloat *)cocos2d::CCArray::objectAtIndex(*(CCArray **)(local_14 + 0x150),0);
    uVar2 = cocos2d::CCFloat::getValue(this);
    pWVar1 = local_14;
    *(undefined4 *)(local_14 + 0x148) = uVar2;
    *(undefined4 *)(local_14 + 0x15c) = 0x3e19999a;
    *(undefined4 *)(local_14 + 0x160) = 0;
    *(undefined4 *)(local_14 + 0x164) = 0x40a00000;
    *(undefined4 *)(local_14 + 0x16c) = 0x40400000;
    *(undefined2 *)(local_14 + 0x1e8) = 100;
    *(undefined2 *)(local_14 + 0x1ea) = 0x19;
    *(undefined4 *)(local_14 + 0x18c) = 0x5a;
    local_14[0x181] = (Weapon)0x0;
    *(undefined4 *)(local_14 + 0x188) = 0x13;
    *(undefined4 *)(local_14 + 0x19c) = 0x28;
    *(undefined4 *)(local_14 + 0x1a0) = 0x32;
    *(undefined4 *)(local_14 + 0x1a4) = DAT_00943308;
    *(undefined4 *)(local_14 + 0x1b4) = 1;
    *(undefined4 *)(local_14 + 0x1b8) = 0xc1c80000;
    *(undefined4 *)(local_14 + 0x1cc) = 0x3f59999a;
    *(undefined4 *)(local_14 + 0x1bc) = 500;
    *(undefined4 *)(local_14 + 0x170) = 0x19;
    *(undefined4 *)(local_14 + 0x174) = 100;
    FUN_0032f870(0,in_s1,0,&local_28);
    *(undefined4 *)(pWVar1 + 0x1d8) = local_28;
    *(undefined4 *)(pWVar1 + 0x1dc) = uStack_24;
    *(undefined4 *)(pWVar1 + 0x1e0) = uStack_20;
    *(undefined4 *)(pWVar1 + 0x1e4) = uStack_1c;
    *(undefined4 *)(local_14 + 0x198) = DAT_00943304;
  }
  return bVar5;
}

// ---- FLAMETHROWER::~FLAMETHROWER  @ 0x3308d0
/* WARNING: Removing unreachable block (ram,0x00330906) */
/* FLAMETHROWER::~FLAMETHROWER() */

FLAMETHROWER * __thiscall FLAMETHROWER::~FLAMETHROWER(FLAMETHROWER *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_009110e0;
  cocos2d::CCNode::removeAllChildren((CCNode *)this);
  cocos2d::CCObject::release(*(CCObject **)(this + 0x1ec));
  Weapon::~Weapon((Weapon *)this);
  return this;
}

// ---- FLAMETHROWER::~FLAMETHROWER  @ 0x330920
/* FLAMETHROWER::~FLAMETHROWER() */

FLAMETHROWER * __thiscall FLAMETHROWER::~FLAMETHROWER(FLAMETHROWER *this)

{
  ~FLAMETHROWER(this);
  operator_delete(this);
  return this;
}

// ---- FLAMETHROWER::triggerPull  @ 0x33093c
/* FLAMETHROWER::triggerPull(float) */

void FLAMETHROWER::triggerPull(float param_1)

{
  bool bVar1;
  undefined4 uVar2;
  char cVar3;
  int *in_r0;
  float extraout_s0;
  undefined4 local_18;
  undefined4 uStack_14;
  undefined4 local_10;
  undefined4 uStack_c;
  
  if ((float)in_r0[0x57] < (float)in_r0[0x44]) {
    if ((*(short *)((int)in_r0 + 0x1ea) < 1) ||
       (cVar3 = (**(code **)(*in_r0 + 0x2cc))(in_r0), param_1 = extraout_s0, cVar3 == '\x01')) {
      bVar1 = false;
    }
    else {
      bVar1 = true;
    }
    if (bVar1) {
      *(undefined1 *)(in_r0 + 0x60) = 1;
      (**(code **)(*in_r0 + 0x294))(in_r0);
      (**(code **)(*in_r0 + 0x308))(in_r0);
      *(char *)((int)in_r0 + 0x195) = *(char *)((int)in_r0 + 0x195) + '\x01';
      *(undefined2 *)((int)in_r0 + 0x1ea) = *(undefined2 *)((int)in_r0 + 0x1ea);
    }
    else {
      cVar3 = (**(code **)(*in_r0 + 0x2cc))(param_1,in_r0);
      uVar2 = sndEng;
      if (cVar3 != '\x01') {
        (**(code **)(*in_r0 + 800))(&local_18,in_r0);
        Sound::playSoundPosition(uVar2,0,local_18,uStack_14,local_10,uStack_c);
      }
    }
    in_r0[0x44] = 0;
  }
  cVar3 = (**(code **)(*in_r0 + 0x2cc))(in_r0);
  if (((cVar3 == '\x01') || (*(short *)((int)in_r0 + 0x1ea) != 0)) || ((short)in_r0[0x7a] < 1)) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (bVar1) {
    *(undefined1 *)((int)in_r0 + 0x181) = 1;
    in_r0[0x56] = 0;
  }
  return;
}

// ---- FLAMETHROWER::doFire  @ 0x330a8c
/* FLAMETHROWER::doFire(float, cpVect, cpVect, int, std::string) */

void FLAMETHROWER::doFire(float param_1,CCObject *param_2)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  CCNotificationCenter *this;
  float extraout_s0;
  float extraout_s0_00;
  float extraout_s0_01;
  float extraout_s0_02;
  int in_stack_00000018;
  undefined4 in_stack_0000001c;
  undefined1 auStack_3c [4];
  string asStack_38 [4];
  CCObject *local_34;
  
  uVar1 = cocos2d::CCFloat::create(param_1);
  uVar2 = cocos2d::CCFloat::create(extraout_s0);
  uVar3 = cocos2d::CCFloat::create(extraout_s0_00);
  uVar4 = cocos2d::CCFloat::create(extraout_s0_01);
  uVar5 = cocos2d::CCFloat::create(extraout_s0_02);
  uVar6 = cocos2d::CCInteger::create(in_stack_00000018);
  uVar7 = FUN_007c5300(in_stack_0000001c);
  FUN_0079a3f4(auStack_3c);
  FUN_007c6a60(asStack_38,uVar7,auStack_3c);
  uVar7 = cocos2d::CCString::create(asStack_38);
  local_34 = (CCObject *)
             cocos2d::CCArray::create(param_2,uVar1,uVar2,uVar3,uVar4,uVar5,uVar6,uVar7,0);
  FUN_007c5914(asStack_38);
  FUN_0079a3fc(auStack_3c);
  this = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::postNotification(this,"FlameThrown",local_34);
  return;
}

// ---- FLAMETHROWER::updateFlames  @ 0x330b8c
/* FLAMETHROWER::updateFlames(float) */

void FLAMETHROWER::updateFlames(float param_1)

{
  return;
}

// ---- FLAMETHROWER::updateItemStep  @ 0x330b98
/* FLAMETHROWER::updateItemStep(float) */

void __thiscall FLAMETHROWER::updateItemStep(FLAMETHROWER *this,float param_1)

{
  bool bVar1;
  short sVar2;
  float fVar3;
  float in_r1;
  float fVar4;
  float extraout_s0;
  float extraout_s0_00;
  float fVar5;
  
  *(float *)(this + 0x158) = *(float *)(this + 0x158) + in_r1;
  fVar4 = (float)(**(code **)(*(int *)this + 0x254))(this,in_r1);
  if (this[0x181] != (FLAMETHROWER)0x0) {
    fVar5 = *(float *)(this + 0x158);
    fVar3 = (float)(**(code **)(*(int *)this + 0x2b8))(this);
    fVar4 = extraout_s0;
    if (fVar3 < fVar5) {
      bVar1 = true;
      goto LAB_00330bfe;
    }
  }
  bVar1 = false;
LAB_00330bfe:
  if (bVar1) {
    this[0x181] = (FLAMETHROWER)0x0;
    *(undefined4 *)(this + 0x110) = 0;
    sVar2 = (**(code **)(*(int *)this + 0x2b4))(this);
    *(short *)(this + 0x1e8) = *(short *)(this + 0x1e8) - (sVar2 - *(short *)(this + 0x1ea));
    *(ushort *)(this + 0x1ea) =
         (*(ushort *)(this + 0x1e8) & (short)*(ushort *)(this + 0x1e8) >> 0x1f) +
         (sVar2 - *(short *)(this + 0x1ea)) + *(short *)(this + 0x1ea);
    *(ushort *)(this + 0x1e8) =
         *(ushort *)(this + 0x1e8) & ~((short)*(ushort *)(this + 0x1e8) >> 0x1f);
    fVar4 = extraout_s0_00;
  }
  updateFlames(fVar4);
  return;
}

// ---- FLAMETHROWER::updateRemoteItemStep  @ 0x330c9c
/* FLAMETHROWER::updateRemoteItemStep(float) */

void __thiscall FLAMETHROWER::updateRemoteItemStep(FLAMETHROWER *this,float param_1)

{
  undefined4 in_r1;
  
  (**(code **)(*(int *)this + 0x254))(this,in_r1);
  if (this[0x194] != this[0x195]) {
    (**(code **)(*(int *)this + 0x260))(this,in_r1);
  }
  return;
}

// ---- FLAMETHROWER::remoteTriggerPull  @ 0x330cdc
/* FLAMETHROWER::remoteTriggerPull(float) */

float FLAMETHROWER::remoteTriggerPull(float param_1)

{
  int *in_r0;
  
  if ((float)in_r0[0x57] < (float)in_r0[0x44]) {
    in_r0[0x44] = 0;
    *(undefined1 *)(in_r0 + 0x60) = 1;
    (**(code **)(*in_r0 + 0x294))(in_r0);
    (**(code **)(*in_r0 + 0x308))(in_r0);
    param_1 = (float)(**(code **)(*in_r0 + 0x30c))(in_r0);
    *(char *)((int)in_r0 + 0x195) = *(char *)((int)in_r0 + 0x195) + '\x01';
  }
  return param_1;
}

// ---- FLAMETHROWER::getShellPoint  @ 0x330d50
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x00330dfe */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* FLAMETHROWER::getShellPoint() */

undefined4 FLAMETHROWER::getShellPoint(void)

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
  FUN_0032f850(&local_30,uVar1,aCStack_38);
  (**(code **)(*in_r1 + 0x184))(aCStack_28,in_r1);
  cocos2d::__CCPointApplyAffineTransform(acStack_40,(CCPoint *)&local_30,aCStack_28);
  (**(code **)(*worldLayer + 0x188))(aCStack_28,worldLayer);
  cocos2d::__CCPointApplyAffineTransform((cocos2d *)&local_30,acStack_40,aCStack_28);
  FUN_0032f870(SUB84((double)local_30,0),extraout_s1,SUB84((double)local_2c,0),in_r0);
  return in_r0;
}

// ---- FLAMETHROWER::playSound  @ 0x330e10
/* FLAMETHROWER::playSound() */

void __thiscall FLAMETHROWER::playSound(FLAMETHROWER *this)

{
  undefined4 uVar1;
  undefined4 local_18;
  undefined4 uStack_14;
  undefined4 local_10;
  undefined4 uStack_c;
  
  uVar1 = sndEng;
  (**(code **)(*(int *)this + 800))(&local_18,this);
  Sound::playSoundPosition(uVar1,0x2e,local_18,uStack_14,local_10,uStack_c);
  return;
}

// ---- FLAMETHROWER::setPrimaryConfiguration  @ 0x330e58
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x00330e84 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* FLAMETHROWER::setPrimaryConfiguration() */

void __thiscall FLAMETHROWER::setPrimaryConfiguration(FLAMETHROWER *this)

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
    FUN_0032f898(0,fVar4,0,*(undefined4 *)(this + 0xe8));
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
  (**(code **)(**(int **)(this + 0x1ec) + 0x98))(*(undefined4 *)(this + 0x1ec),0xc1c80000);
  (**(code **)(**(int **)(this + 0x1ec) + 0x40))(*(undefined4 *)(this + 0x1ec),0x3f800000);
  pcVar1 = *(code **)(*(int *)this + 0x4c);
  cocos2d::CCPoint::CCPoint(aCStack_18,fVar3,fVar4);
  (*pcVar1)(this,aCStack_18);
  (**(code **)(*(int *)this + 0x40))(this,0x3f800000);
  (**(code **)(*(int *)this + 0x98))(this,0);
  this[0x195] = (FLAMETHROWER)0x0;
  this[0x194] = (FLAMETHROWER)0x0;
  *(undefined4 *)(this + 0x1c0) = 0;
  return;
}

// ---- FLAMETHROWER::setSecondaryConfiguration  @ 0x330f9c
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x00330fc8 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* FLAMETHROWER::setSecondaryConfiguration() */

void __thiscall FLAMETHROWER::setSecondaryConfiguration(FLAMETHROWER *this)

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
    FUN_0032f898(0,fVar4,0,*(undefined4 *)(this + 0xe8));
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
  (**(code **)(**(int **)(this + 0x1ec) + 0x98))(*(undefined4 *)(this + 0x1ec),0x42340000);
  (**(code **)(**(int **)(this + 0x1ec) + 0x40))(*(undefined4 *)(this + 0x1ec),0x3f800000);
  pcVar1 = *(code **)(*(int *)this + 0x4c);
  cocos2d::CCPoint::CCPoint(aCStack_18,fVar3,fVar4);
  (*pcVar1)(this,aCStack_18);
  (**(code **)(*(int *)this + 0x40))(this,0x3f800000);
  (**(code **)(*(int *)this + 0x98))(this,0);
  this[0x195] = (FLAMETHROWER)0x0;
  this[0x194] = (FLAMETHROWER)0x0;
  *(undefined4 *)(this + 0x1c0) = 0;
  return;
}

// ---- FLAMETHROWER::setMapConfiguration  @ 0x3310d8
/* FLAMETHROWER::setMapConfiguration() */

void FLAMETHROWER::setMapConfiguration(void)

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
  *(undefined1 *)((int)in_r0 + 0x195) = 0;
  *(undefined1 *)(in_r0 + 0x65) = 0;
  in_r0[0x70] = 0;
  return;
}

// ---- FLAMETHROWER::getWeaponTexture  @ 0x3311b8
/* FLAMETHROWER::getWeaponTexture() */

undefined4 __thiscall FLAMETHROWER::getWeaponTexture(FLAMETHROWER *this)

{
  undefined4 uVar1;
  
  uVar1 = (**(code **)(**(int **)(this + 0x1ec) + 500))(*(undefined4 *)(this + 0x1ec));
  return uVar1;
}

// ---- FLAMETHROWER::getWeaponRect  @ 0x3311e0
/* FLAMETHROWER::getWeaponRect() */

CCRect * FLAMETHROWER::getWeaponRect(void)

{
  CCRect *in_r0;
  CCRect *pCVar1;
  int in_r1;
  
  pCVar1 = (CCRect *)cocos2d::CCSprite::getTextureRect(*(CCSprite **)(in_r1 + 0x1ec));
  cocos2d::CCRect::CCRect(in_r0,pCVar1);
  return in_r0;
}

// ---- FLAMETHROWER::isRight  @ 0x331208
/* FLAMETHROWER::isRight() */

bool __thiscall FLAMETHROWER::isRight(FLAMETHROWER *this)

{
  float fVar1;
  
  fVar1 = (float)(**(code **)(**(int **)(this + 0x1ec) + 0x34))(*(undefined4 *)(this + 0x1ec));
  return 1.0 < fVar1;
}

// ---- FLAMETHROWER::setRight  @ 0x331244
/* FLAMETHROWER::setRight(bool) */

void __thiscall FLAMETHROWER::setRight(FLAMETHROWER *this,bool param_1)

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

// ---- FLAMETHROWER::create  @ 0x4274ec
/* FLAMETHROWER::create() */

FLAMETHROWER * FLAMETHROWER::create(void)

{
  bool bVar1;
  FLAMETHROWER *this;
  int iVar2;
  
  this = operator_new(0x1f0);
  FLAMETHROWER(this);
  if ((this == (FLAMETHROWER *)0x0) ||
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
    if (this != (FLAMETHROWER *)0x0) {
      (**(code **)(*(int *)this + 8))(this);
    }
    this = (FLAMETHROWER *)0x0;
  }
  return this;
}
