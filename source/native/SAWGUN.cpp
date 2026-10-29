// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 20 functions

// ---- SAWGUN::SAWGUN  @ 0x3dc9a4
/* SAWGUN::SAWGUN() */

SAWGUN * __thiscall SAWGUN::SAWGUN(SAWGUN *this)

{
  Weapon::Weapon((Weapon *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_00919c18;
  return this;
}

// ---- SAWGUN::init  @ 0x3dc9d0
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003dccce */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* SAWGUN::init() */

bool __thiscall SAWGUN::init(SAWGUN *this)

{
  SAWGUN *pSVar1;
  undefined4 uVar2;
  CCObject *pCVar3;
  CCFloat *this_00;
  code *pcVar4;
  CCArray *pCVar5;
  bool bVar6;
  float fVar7;
  float extraout_s1;
  undefined4 local_38;
  undefined4 uStack_34;
  undefined4 uStack_30;
  undefined4 uStack_2c;
  SAWGUN *local_24;
  undefined1 auStack_1c [3];
  char local_19;
  CCPoint aCStack_18 [12];
  
  local_24 = this;
  local_19 = Weapon::init((Weapon *)this);
  bVar6 = local_19 == '\x01';
  if (bVar6) {
    uVar2 = cocos2d::CCSprite::createWithSpriteFrameName("sawgun.png");
    *(undefined4 *)(local_24 + 0x1ec) = uVar2;
    cocos2d::CCObject::retain(*(CCObject **)(local_24 + 0x1ec));
    uVar2 = cocos2d::CCSprite::createWithSpriteFrameName("wormDroneSaw.png");
    *(undefined4 *)(local_24 + 0x1f0) = uVar2;
    cocos2d::CCObject::retain(*(CCObject **)(local_24 + 0x1f0));
    fVar7 = (float)(**(code **)(**(int **)(local_24 + 0x1f0) + 0x90))
                             (*(undefined4 *)(local_24 + 0x1f0),0);
    pcVar4 = *(code **)(**(int **)(local_24 + 0x1f0) + 0x4c);
    uVar2 = *(undefined4 *)(local_24 + 0x1f0);
    cocos2d::CCPoint::CCPoint(aCStack_18,fVar7,extraout_s1);
    (*pcVar4)(uVar2,aCStack_18);
    (**(code **)(*(int *)local_24 + 0x1e0))(local_24);
    (**(code **)(*(int *)local_24 + 0xcc))(local_24,*(undefined4 *)(local_24 + 0x1ec),0);
    fVar7 = (float)(**(code **)(**(int **)(local_24 + 0x1ec) + 0xcc))
                             (*(undefined4 *)(local_24 + 0x1ec),*(undefined4 *)(local_24 + 0x1f0),
                              0xffffffff);
    pCVar5 = *(CCArray **)(local_24 + 0x150);
    pCVar3 = (CCObject *)cocos2d::CCFloat::create(fVar7);
    cocos2d::CCArray::addObject(pCVar5,pCVar3);
    pCVar5 = *(CCArray **)(local_24 + 0x14c);
    FUN_0079a3f4(auStack_1c);
    FUN_007c6a60(aCStack_18,&DAT_007e6b30,auStack_1c);
    pCVar3 = (CCObject *)cocos2d::CCString::create((string *)aCStack_18);
    cocos2d::CCArray::addObject(pCVar5,pCVar3);
    FUN_007c5914(aCStack_18);
    fVar7 = (float)FUN_0079a3fc(auStack_1c);
    pCVar5 = *(CCArray **)(local_24 + 0x150);
    pCVar3 = (CCObject *)cocos2d::CCFloat::create(fVar7);
    cocos2d::CCArray::addObject(pCVar5,pCVar3);
    pCVar5 = *(CCArray **)(local_24 + 0x14c);
    FUN_0079a3f4(auStack_1c);
    FUN_007c6a60(aCStack_18,&DAT_007e6b34,auStack_1c);
    pCVar3 = (CCObject *)cocos2d::CCString::create((string *)aCStack_18);
    cocos2d::CCArray::addObject(pCVar5,pCVar3);
    FUN_007c5914(aCStack_18);
    fVar7 = (float)FUN_0079a3fc(auStack_1c);
    pCVar5 = *(CCArray **)(local_24 + 0x150);
    pCVar3 = (CCObject *)cocos2d::CCFloat::create(fVar7);
    cocos2d::CCArray::addObject(pCVar5,pCVar3);
    pCVar5 = *(CCArray **)(local_24 + 0x14c);
    FUN_0079a3f4(auStack_1c);
    FUN_007c6a60(aCStack_18,&DAT_007e6b38,auStack_1c);
    pCVar3 = (CCObject *)cocos2d::CCString::create((string *)aCStack_18);
    cocos2d::CCArray::addObject(pCVar5,pCVar3);
    FUN_007c5914(aCStack_18);
    FUN_0079a3fc(auStack_1c);
    *(undefined4 *)(local_24 + 0x144) = 0;
    this_00 = (CCFloat *)cocos2d::CCArray::objectAtIndex(*(CCArray **)(local_24 + 0x150),0);
    uVar2 = cocos2d::CCFloat::getValue(this_00);
    pSVar1 = local_24;
    *(undefined4 *)(local_24 + 0x148) = uVar2;
    local_24[500] = (SAWGUN)0x0;
    *(undefined4 *)(local_24 + 0x1f8) = 0;
    *(undefined4 *)(local_24 + 0x1fc) = 0;
    *(undefined4 *)(local_24 + 0x15c) = 0x3f800000;
    *(undefined4 *)(local_24 + 0x160) = 0x40200000;
    *(undefined4 *)(local_24 + 0x164) = 0;
    *(undefined4 *)(local_24 + 0x16c) = 0x40400000;
    *(undefined2 *)(local_24 + 0x1e8) = 6;
    *(undefined2 *)(local_24 + 0x1ea) = 1;
    *(undefined4 *)(local_24 + 0x18c) = 0x5a;
    local_24[0x181] = (SAWGUN)0x0;
    *(undefined4 *)(local_24 + 0x188) = 0x19;
    *(undefined4 *)(local_24 + 0x19c) = 0x28;
    *(undefined4 *)(local_24 + 0x1a0) = 0x32;
    *(undefined4 *)(local_24 + 0x1a4) = DAT_00943614;
    *(undefined4 *)(local_24 + 0x1b4) = 1;
    *(undefined4 *)(local_24 + 0x1cc) = 0x3f59999a;
    *(undefined4 *)(local_24 + 0x1bc) = 500;
    *(undefined4 *)(local_24 + 0x170) = 1;
    *(undefined4 *)(local_24 + 0x174) = 0xc;
    FUN_003dbbf8(0,extraout_s1,0,&local_38);
    *(undefined4 *)(pSVar1 + 0x1d8) = local_38;
    *(undefined4 *)(pSVar1 + 0x1dc) = uStack_34;
    *(undefined4 *)(pSVar1 + 0x1e0) = uStack_30;
    *(undefined4 *)(pSVar1 + 0x1e4) = uStack_2c;
    *(undefined4 *)(local_24 + 0x198) = DAT_00943610;
  }
  return bVar6;
}

// ---- SAWGUN::~SAWGUN  @ 0x3dcd60
/* WARNING: Removing unreachable block (ram,0x003dcdba) */
/* SAWGUN::~SAWGUN() */

SAWGUN * __thiscall SAWGUN::~SAWGUN(SAWGUN *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_00919c18;
  (**(code **)(**(int **)(this + 0x1ec) + 0x100))(*(undefined4 *)(this + 0x1ec));
  cocos2d::CCNode::removeAllChildren((CCNode *)this);
  cocos2d::CCObject::release(*(CCObject **)(this + 0x1ec));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x1f0));
  Weapon::~Weapon((Weapon *)this);
  return this;
}

// ---- SAWGUN::~SAWGUN  @ 0x3dcdd4
/* SAWGUN::~SAWGUN() */

SAWGUN * __thiscall SAWGUN::~SAWGUN(SAWGUN *this)

{
  ~SAWGUN(this);
  operator_delete(this);
  return this;
}

// ---- SAWGUN::triggerPull  @ 0x3dcdf0
/* SAWGUN::triggerPull(float) */

void __thiscall SAWGUN::triggerPull(SAWGUN *this,float param_1)

{
  bool bVar1;
  char cVar2;
  float fVar3;
  float in_r1;
  code *pcVar4;
  undefined4 uVar5;
  float extraout_s0;
  undefined4 local_20;
  undefined4 uStack_1c;
  undefined4 local_18;
  undefined4 uStack_14;
  
  this[500] = (SAWGUN)0x1;
  if ((*(short *)(this + 0x1ea) < 1) ||
     (cVar2 = (**(code **)(*(int *)this + 0x2cc))(this), param_1 = extraout_s0, cVar2 == '\x01')) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (bVar1) {
    this[0x195] = (SAWGUN)((char)this[0x195] + '\x01');
    *(float *)(this + 0x1fc) = *(float *)(this + 0x1fc) + in_r1;
    pcVar4 = *(code **)(**(int **)(this + 0x1f0) + 0x98);
    uVar5 = *(undefined4 *)(this + 0x1f0);
    fVar3 = (float)(**(code **)(**(int **)(this + 0x1f0) + 0x9c))(*(undefined4 *)(this + 0x1f0));
    (*pcVar4)(uVar5,fVar3 - in_r1 * 500.0);
    if (0.4 < *(float *)(this + 0x1fc)) {
      (**(code **)(*(int *)this + 0x294))(this);
      *(undefined4 *)(this + 0x1fc) = 0;
    }
  }
  else {
    *(undefined4 *)(this + 0x110) = 0;
    (**(code **)(**(int **)(this + 0x1f0) + 0x90))(param_1,*(undefined4 *)(this + 0x1f0),0);
  }
  if (*(float *)(this + 0x15c) < *(float *)(this + 0x110)) {
    if ((*(short *)(this + 0x1ea) < 1) ||
       (cVar2 = (**(code **)(*(int *)this + 0x2cc))(this), cVar2 == '\x01')) {
      bVar1 = false;
    }
    else {
      bVar1 = true;
    }
    if (bVar1) {
      (**(code **)(*(int *)this + 0x308))(this);
      this[0x195] = (SAWGUN)((char)this[0x195] + '\x01');
      *(undefined2 *)(this + 0x1ea) = *(undefined2 *)(this + 0x1ea);
    }
    else {
      cVar2 = (**(code **)(*(int *)this + 0x2cc))(this);
      uVar5 = sndEng;
      if (cVar2 != '\x01') {
        (**(code **)(*(int *)this + 800))(&local_20,this);
        Sound::playSoundPosition(uVar5,0,local_20,uStack_1c,local_18,uStack_14);
      }
    }
    *(undefined4 *)(this + 0x110) = 0;
  }
  cVar2 = (**(code **)(*(int *)this + 0x2cc))(this);
  if (((cVar2 == '\x01') || (*(short *)(this + 0x1ea) != 0)) || (*(short *)(this + 0x1e8) < 1)) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (bVar1) {
    this[0x181] = (SAWGUN)0x1;
    *(undefined4 *)(this + 0x158) = 0;
  }
  return;
}

// ---- SAWGUN::doFire  @ 0x3dd030
/* SAWGUN::doFire(float, cpVect, cpVect, int, std::string) */

void SAWGUN::doFire(float param_1,CCObject *param_2)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  CCObject *pCVar8;
  CCNotificationCenter *this;
  float extraout_s0;
  float extraout_s0_00;
  float extraout_s0_01;
  float extraout_s0_02;
  int in_stack_00000018;
  string *in_stack_0000001c;
  
  uVar1 = cocos2d::CCFloat::create(param_1);
  uVar2 = cocos2d::CCFloat::create(extraout_s0);
  uVar3 = cocos2d::CCFloat::create(extraout_s0_00);
  uVar4 = cocos2d::CCFloat::create(extraout_s0_01);
  uVar5 = cocos2d::CCFloat::create(extraout_s0_02);
  uVar6 = cocos2d::CCInteger::create(in_stack_00000018);
  uVar7 = cocos2d::CCString::create(in_stack_0000001c);
  pCVar8 = (CCObject *)cocos2d::CCArray::create(param_2,uVar1,uVar2,uVar3,uVar4,uVar5,uVar6,uVar7,0)
  ;
  this = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::postNotification(this,"SawLaunched",pCVar8);
  return;
}

// ---- SAWGUN::updateFlames  @ 0x3dd0e8
/* SAWGUN::updateFlames(float) */

void SAWGUN::updateFlames(float param_1)

{
  return;
}

// ---- SAWGUN::updateItemStep  @ 0x3dd0f4
/* SAWGUN::updateItemStep(float) */

void __thiscall SAWGUN::updateItemStep(SAWGUN *this,float param_1)

{
  bool bVar1;
  short sVar2;
  float fVar3;
  float in_r1;
  float fVar4;
  
  *(float *)(this + 0x158) = *(float *)(this + 0x158) + in_r1;
  if (this[500] == (SAWGUN)0x0) {
    *(undefined4 *)(this + 0x110) = 0;
    *(undefined4 *)(this + 0x1fc) = 0;
  }
  else {
    param_1 = (float)(**(code **)(*(int *)this + 0x254))(this,in_r1);
  }
  (**(code **)(**(int **)(this + 0x1f0) + 0x90))
            (param_1,*(undefined4 *)(this + 0x1f0),0 < *(short *)(this + 0x1ea));
  this[500] = (SAWGUN)0x0;
  if ((this[0x181] == (SAWGUN)0x0) ||
     (fVar4 = *(float *)(this + 0x158), fVar3 = (float)(**(code **)(*(int *)this + 0x2b8))(this),
     fVar4 <= fVar3)) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (bVar1) {
    this[0x181] = (SAWGUN)0x0;
    *(undefined4 *)(this + 0x110) = 0;
    sVar2 = (**(code **)(*(int *)this + 0x2b4))(this);
    *(short *)(this + 0x1e8) = *(short *)(this + 0x1e8) - (sVar2 - *(short *)(this + 0x1ea));
    *(ushort *)(this + 0x1ea) =
         (*(ushort *)(this + 0x1e8) & (short)*(ushort *)(this + 0x1e8) >> 0x1f) +
         (sVar2 - *(short *)(this + 0x1ea)) + *(short *)(this + 0x1ea);
    *(ushort *)(this + 0x1e8) =
         *(ushort *)(this + 0x1e8) & ~((short)*(ushort *)(this + 0x1e8) >> 0x1f);
  }
  return;
}

// ---- SAWGUN::updateRemoteItemStep  @ 0x3dd248
/* SAWGUN::updateRemoteItemStep(float) */

void __thiscall SAWGUN::updateRemoteItemStep(SAWGUN *this,float param_1)

{
  float in_r1;
  undefined4 uVar1;
  
  *(float *)(this + 0x1f8) = *(float *)(this + 0x1f8) + in_r1;
  if (this[0x194] == this[0x195]) {
    if (0.2 < *(float *)(this + 0x1f8)) {
      this[500] = (SAWGUN)0x0;
      *(undefined4 *)(this + 0x110) = 0;
      *(undefined4 *)(this + 0x1fc) = 0;
      *(undefined4 *)(this + 0x1f8) = 0;
    }
  }
  else {
    this[500] = (SAWGUN)0x1;
    (**(code **)(*(int *)this + 0x254))(this,in_r1);
    param_1 = (float)(**(code **)(*(int *)this + 0x260))(this,in_r1);
    *(undefined4 *)(this + 0x1f8) = 0;
  }
  if ((this[0x181] == (SAWGUN)0x1) || (*(short *)(this + 0x1ea) < 1)) {
    uVar1 = 0;
  }
  else {
    uVar1 = 1;
  }
  (**(code **)(**(int **)(this + 0x1f0) + 0x90))(param_1,*(undefined4 *)(this + 0x1f0),uVar1);
  return;
}

// ---- SAWGUN::remoteTriggerPull  @ 0x3dd330
/* SAWGUN::remoteTriggerPull(float) */

void __thiscall SAWGUN::remoteTriggerPull(SAWGUN *this,float param_1)

{
  float fVar1;
  float in_r1;
  code *pcVar2;
  undefined4 uVar3;
  
  this[0x195] = (SAWGUN)((char)this[0x195] + '\x01');
  *(float *)(this + 0x1fc) = *(float *)(this + 0x1fc) + in_r1;
  pcVar2 = *(code **)(**(int **)(this + 0x1f0) + 0x98);
  uVar3 = *(undefined4 *)(this + 0x1f0);
  fVar1 = (float)(**(code **)(**(int **)(this + 0x1f0) + 0x9c))(*(undefined4 *)(this + 0x1f0));
  (*pcVar2)(uVar3,fVar1 - in_r1 * 500.0);
  if (0.4 < *(float *)(this + 0x1fc)) {
    (**(code **)(*(int *)this + 0x294))(this);
    *(undefined4 *)(this + 0x1fc) = 0;
  }
  return;
}

// ---- SAWGUN::getShellPoint  @ 0x3dd3e8
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003dd4a2 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* SAWGUN::getShellPoint() */

undefined4 SAWGUN::getShellPoint(void)

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
  FUN_003dbbd8(acStack_30,uVar1,aCStack_38);
  (**(code **)(*in_r1 + 0x184))(aCStack_28,in_r1);
  cocos2d::__CCPointApplyAffineTransform((cocos2d *)&local_40,acStack_30,aCStack_28);
  (**(code **)(*worldLayer + 0x188))(aCStack_28,worldLayer);
  cocos2d::__CCPointApplyAffineTransform(acStack_30,(CCPoint *)&local_40,aCStack_28);
  cocos2d::CCPoint::operator=((CCPoint *)&local_40,(CCPoint *)acStack_30);
  FUN_003dbbf8(SUB84((double)local_40,0),extraout_s1,SUB84((double)local_3c,0),in_r0);
  return in_r0;
}

// ---- SAWGUN::playSound  @ 0x3dd4b4
/* SAWGUN::playSound() */

void __thiscall SAWGUN::playSound(SAWGUN *this)

{
  undefined4 uVar1;
  undefined4 local_18;
  undefined4 uStack_14;
  undefined4 local_10;
  undefined4 uStack_c;
  
  uVar1 = sndEng;
  (**(code **)(*(int *)this + 800))(&local_18,this);
  Sound::playSoundPosition(uVar1,0x21,local_18,uStack_14,local_10,uStack_c);
  return;
}

// ---- SAWGUN::setPrimaryConfiguration  @ 0x3dd4fc
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003dd528 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* SAWGUN::setPrimaryConfiguration() */

void __thiscall SAWGUN::setPrimaryConfiguration(SAWGUN *this)

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
    FUN_003dbc20(0,fVar4,0,*(undefined4 *)(this + 0xe8));
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
  this[0x195] = (SAWGUN)0x0;
  this[0x194] = (SAWGUN)0x0;
  *(undefined4 *)(this + 0x1c0) = 0;
  return;
}

// ---- SAWGUN::setSecondaryConfiguration  @ 0x3dd638
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003dd664 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* SAWGUN::setSecondaryConfiguration() */

void __thiscall SAWGUN::setSecondaryConfiguration(SAWGUN *this)

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
    FUN_003dbc20(0,fVar4,0,*(undefined4 *)(this + 0xe8));
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
  (**(code **)(**(int **)(this + 0x1f0) + 0x90))(*(undefined4 *)(this + 0x1f0),0);
  this[0x195] = (SAWGUN)0x0;
  this[0x194] = (SAWGUN)0x0;
  *(undefined4 *)(this + 0x1c0) = 0;
  return;
}

// ---- SAWGUN::setMapConfiguration  @ 0x3dd790
/* SAWGUN::setMapConfiguration() */

void SAWGUN::setMapConfiguration(void)

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
  (**(code **)(*(int *)in_r0[0x7c] + 0x90))(in_r0[0x7c],0);
  *(undefined1 *)((int)in_r0 + 0x195) = 0;
  *(undefined1 *)(in_r0 + 0x65) = 0;
  in_r0[0x70] = 0;
  return;
}

// ---- SAWGUN::getWeaponTexture  @ 0x3dd888
/* SAWGUN::getWeaponTexture() */

undefined4 __thiscall SAWGUN::getWeaponTexture(SAWGUN *this)

{
  undefined4 uVar1;
  
  uVar1 = (**(code **)(**(int **)(this + 0x1ec) + 500))(*(undefined4 *)(this + 0x1ec));
  return uVar1;
}

// ---- SAWGUN::getWeaponRect  @ 0x3dd8b0
/* SAWGUN::getWeaponRect() */

CCRect * SAWGUN::getWeaponRect(void)

{
  CCRect *in_r0;
  CCRect *pCVar1;
  int in_r1;
  
  pCVar1 = (CCRect *)cocos2d::CCSprite::getTextureRect(*(CCSprite **)(in_r1 + 0x1ec));
  cocos2d::CCRect::CCRect(in_r0,pCVar1);
  return in_r0;
}

// ---- SAWGUN::isRight  @ 0x3dd8d8
/* SAWGUN::isRight() */

bool __thiscall SAWGUN::isRight(SAWGUN *this)

{
  float fVar1;
  
  fVar1 = (float)(**(code **)(**(int **)(this + 0x1ec) + 0x34))(*(undefined4 *)(this + 0x1ec));
  return 1.0 < fVar1;
}

// ---- SAWGUN::setRight  @ 0x3dd914
/* SAWGUN::setRight(bool) */

void __thiscall SAWGUN::setRight(SAWGUN *this,bool param_1)

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

// ---- SAWGUN::create  @ 0x42755c
/* SAWGUN::create() */

SAWGUN * SAWGUN::create(void)

{
  bool bVar1;
  SAWGUN *this;
  int iVar2;
  
  this = operator_new(0x200);
  SAWGUN(this);
  if ((this == (SAWGUN *)0x0) || (iVar2 = (**(code **)(*(int *)this + 0x18))(this), iVar2 == 0)) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (bVar1) {
    cocos2d::CCObject::autorelease((CCObject *)this);
  }
  else {
    if (this != (SAWGUN *)0x0) {
      (**(code **)(*(int *)this + 8))(this);
    }
    this = (SAWGUN *)0x0;
  }
  return this;
}
