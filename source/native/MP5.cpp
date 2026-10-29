// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 20 functions

// ---- MP5::MP5  @ 0x36cc1c
/* MP5::MP5() */

MP5 * __thiscall MP5::MP5(MP5 *this)

{
  Weapon::Weapon((Weapon *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_00914b58;
  return this;
}

// ---- MP5::init  @ 0x36cc48
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x0036cf04 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* MP5::init() */

bool __thiscall MP5::init(MP5 *this)

{
  MP5 *pMVar1;
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
  MP5 *local_24;
  undefined1 auStack_1c [3];
  char local_19;
  CCPoint aCStack_18 [12];
  
  local_24 = this;
  local_19 = Weapon::init((Weapon *)this);
  bVar6 = local_19 == '\x01';
  if (bVar6) {
    uVar2 = cocos2d::CCSprite::createWithSpriteFrameName("mp5.png");
    *(undefined4 *)(local_24 + 0x1ec) = uVar2;
    cocos2d::CCObject::retain(*(CCObject **)(local_24 + 0x1ec));
    uVar2 = cocos2d::CCSprite::createWithSpriteFrameName("flare.png");
    *(undefined4 *)(local_24 + 0x1f0) = uVar2;
    fVar7 = (float)cocos2d::CCObject::retain(*(CCObject **)(local_24 + 0x1f0));
    pcVar4 = *(code **)(**(int **)(local_24 + 0x1f0) + 0x7c);
    uVar2 = *(undefined4 *)(local_24 + 0x1f0);
    cocos2d::CCPoint::CCPoint(aCStack_18,fVar7,extraout_s1);
    (*pcVar4)(uVar2,aCStack_18);
    (**(code **)(**(int **)(local_24 + 0x1f0) + 0x38))(*(undefined4 *)(local_24 + 0x1f0),0x3f800000)
    ;
    (**(code **)(**(int **)(local_24 + 0x1f0) + 0x30))(*(undefined4 *)(local_24 + 0x1f0),0x3fe00000)
    ;
    (**(code **)(**(int **)(local_24 + 0x1f0) + 0x90))(*(undefined4 *)(local_24 + 0x1f0),0);
    (**(code **)(*(int *)local_24 + 0x1e0))(local_24);
    (**(code **)(*(int *)local_24 + 0xcc))(local_24,*(undefined4 *)(local_24 + 0x1f0),0);
    fVar7 = (float)(**(code **)(*(int *)local_24 + 0xcc))
                             (local_24,*(undefined4 *)(local_24 + 0x1ec),0);
    pCVar5 = *(CCArray **)(local_24 + 0x150);
    pCVar3 = (CCObject *)cocos2d::CCFloat::create(fVar7);
    cocos2d::CCArray::addObject(pCVar5,pCVar3);
    pCVar5 = *(CCArray **)(local_24 + 0x14c);
    FUN_0079a3f4(auStack_1c);
    FUN_007c6a60(aCStack_18,&DAT_007dca6c,auStack_1c);
    pCVar3 = (CCObject *)cocos2d::CCString::create((string *)aCStack_18);
    cocos2d::CCArray::addObject(pCVar5,pCVar3);
    FUN_007c5914(aCStack_18);
    fVar7 = (float)FUN_0079a3fc(auStack_1c);
    pCVar5 = *(CCArray **)(local_24 + 0x150);
    pCVar3 = (CCObject *)cocos2d::CCFloat::create(fVar7);
    cocos2d::CCArray::addObject(pCVar5,pCVar3);
    pCVar5 = *(CCArray **)(local_24 + 0x14c);
    FUN_0079a3f4(auStack_1c);
    FUN_007c6a60(aCStack_18,&DAT_007dca70,auStack_1c);
    pCVar3 = (CCObject *)cocos2d::CCString::create((string *)aCStack_18);
    cocos2d::CCArray::addObject(pCVar5,pCVar3);
    FUN_007c5914(aCStack_18);
    FUN_0079a3fc(auStack_1c);
    *(undefined4 *)(local_24 + 0x144) = 0;
    this_00 = (CCFloat *)cocos2d::CCArray::objectAtIndex(*(CCArray **)(local_24 + 0x150),0);
    uVar2 = cocos2d::CCFloat::getValue(this_00);
    *(undefined4 *)(local_24 + 0x148) = uVar2;
    *(undefined4 *)(local_24 + 0x15c) = 0x3d75c28f;
    *(undefined4 *)(local_24 + 0x160) = 0x3fe00000;
    *(undefined4 *)(local_24 + 0x164) = 0x40a00000;
    *(undefined4 *)(local_24 + 0x16c) = 0x41000000;
    (**(code **)(**(int **)(local_24 + 0x1f0) + 0x98))(*(undefined4 *)(local_24 + 0x1f0),0x40800000)
    ;
    pMVar1 = local_24;
    *(undefined2 *)(local_24 + 0x1e8) = 0xfa;
    *(undefined2 *)(local_24 + 0x1ea) = 0x32;
    *(undefined4 *)(local_24 + 0x18c) = 0x50;
    local_24[0x181] = (MP5)0x0;
    *(undefined4 *)(local_24 + 0x188) = 6;
    *(undefined4 *)(local_24 + 0x19c) = 0x1e;
    *(undefined4 *)(local_24 + 0x1a0) = 0x23;
    *(undefined4 *)(local_24 + 0x1a4) = DAT_00943400;
    *(undefined4 *)(local_24 + 0x1bc) = 0x578;
    *(undefined4 *)(local_24 + 0x170) = 0x32;
    *(undefined4 *)(local_24 + 0x174) = 400;
    FUN_0036be74(0,extraout_s1,0,&local_38);
    *(undefined4 *)(pMVar1 + 0x1d8) = local_38;
    *(undefined4 *)(pMVar1 + 0x1dc) = uStack_34;
    *(undefined4 *)(pMVar1 + 0x1e0) = uStack_30;
    *(undefined4 *)(pMVar1 + 0x1e4) = uStack_2c;
    *(undefined4 *)(local_24 + 0x198) = DAT_009433fc;
  }
  return bVar6;
}

// ---- MP5::~MP5  @ 0x36cf78
/* WARNING: Removing unreachable block (ram,0x0036cfba) */
/* MP5::~MP5() */

MP5 * __thiscall MP5::~MP5(MP5 *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_00914b58;
  cocos2d::CCNode::removeAllChildren((CCNode *)this);
  cocos2d::CCObject::release(*(CCObject **)(this + 0x1ec));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x1f0));
  Weapon::~Weapon((Weapon *)this);
  return this;
}

// ---- MP5::~MP5  @ 0x36cfd4
/* MP5::~MP5() */

MP5 * __thiscall MP5::~MP5(MP5 *this)

{
  ~MP5(this);
  operator_delete(this);
  return this;
}

// ---- MP5::triggerPull  @ 0x36cff0
/* MP5::triggerPull(float) */

void MP5::triggerPull(float param_1)

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
      (**(code **)(*in_r0 + 0x30c))(in_r0);
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

// ---- MP5::updateItemStep  @ 0x36d150
/* MP5::updateItemStep(float) */

void __thiscall MP5::updateItemStep(MP5 *this,float param_1)

{
  bool bVar1;
  short sVar2;
  float fVar3;
  float in_r1;
  float fVar4;
  
  *(float *)(this + 0x158) = *(float *)(this + 0x158) + in_r1;
  (**(code **)(**(int **)(this + 0x1f0) + 0x90))(*(undefined4 *)(this + 0x1f0),this[0x180]);
  (**(code **)(*(int *)this + 0x254))(this,in_r1);
  if (this[0x181] != (MP5)0x0) {
    fVar4 = *(float *)(this + 0x158);
    fVar3 = (float)(**(code **)(*(int *)this + 0x2b8))(this);
    if (fVar3 < fVar4) {
      bVar1 = true;
      goto LAB_0036d1d4;
    }
  }
  bVar1 = false;
LAB_0036d1d4:
  if (bVar1) {
    this[0x181] = (MP5)0x0;
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

// ---- MP5::updateRemoteItemStep  @ 0x36d26c
/* MP5::updateRemoteItemStep(float) */

void __thiscall MP5::updateRemoteItemStep(MP5 *this,float param_1)

{
  undefined4 in_r1;
  
  (**(code **)(**(int **)(this + 0x1f0) + 0x90))(*(undefined4 *)(this + 0x1f0),this[0x180]);
  (**(code **)(*(int *)this + 0x254))(this,in_r1);
  if (this[0x194] != this[0x195]) {
    (**(code **)(*(int *)this + 0x260))(this,in_r1);
  }
  return;
}

// ---- MP5::remoteTriggerPull  @ 0x36d2cc
/* MP5::remoteTriggerPull(float) */

float MP5::remoteTriggerPull(float param_1)

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

// ---- MP5::getShellPoint  @ 0x36d340
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x0036d3fa */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* MP5::getShellPoint() */

undefined4 MP5::getShellPoint(void)

{
  undefined4 in_r0;
  undefined4 uVar1;
  int *in_r1;
  undefined8 in_d0;
  float fVar2;
  CCPoint aCStack_38 [8];
  float local_30;
  float local_2c;
  cocos2d acStack_28 [8];
  CCAffineTransform aCStack_20 [24];
  
  fVar2 = (float)((ulonglong)in_d0 >> 0x20);
  cocos2d::CCPoint::CCPoint(aCStack_38,(float)in_d0,fVar2);
  uVar1 = (**(code **)(*in_r1 + 0x50))(in_r1);
  FUN_0036be54(acStack_28,uVar1,aCStack_38);
  (**(code **)(*in_r1 + 0x184))(aCStack_20,in_r1);
  cocos2d::__CCPointApplyAffineTransform((cocos2d *)&local_30,acStack_28,aCStack_20);
  (**(code **)(*worldLayer + 0x188))(aCStack_20,worldLayer);
  cocos2d::__CCPointApplyAffineTransform(acStack_28,(CCPoint *)&local_30,aCStack_20);
  cocos2d::CCPoint::operator=((CCPoint *)&local_30,(CCPoint *)acStack_28);
  FUN_0036be74(SUB84((double)local_30,0),fVar2,SUB84((double)local_2c,0),in_r0);
  return in_r0;
}

// ---- MP5::playSound  @ 0x36d40c
/* MP5::playSound() */

void __thiscall MP5::playSound(MP5 *this)

{
  undefined4 uVar1;
  undefined4 local_18;
  undefined4 uStack_14;
  undefined4 local_10;
  undefined4 uStack_c;
  
  uVar1 = sndEng;
  (**(code **)(*(int *)this + 800))(&local_18,this);
  Sound::playSoundPosition(uVar1,5,local_18,uStack_14,local_10,uStack_c);
  return;
}

// ---- MP5::setPrimaryConfiguration  @ 0x36d454
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x0036d480 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* MP5::setPrimaryConfiguration() */

void __thiscall MP5::setPrimaryConfiguration(MP5 *this)

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
    FUN_0036be9c(0,fVar4,0,*(undefined4 *)(this + 0xe8));
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
  this[0x195] = (MP5)0x0;
  this[0x194] = (MP5)0x0;
  *(undefined4 *)(this + 0x1c0) = 0;
  return;
}

// ---- MP5::setSecondaryConfiguration  @ 0x36d58c
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x0036d5b8 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* MP5::setSecondaryConfiguration() */

void __thiscall MP5::setSecondaryConfiguration(MP5 *this)

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
    FUN_0036be9c(0,fVar4,0,*(undefined4 *)(this + 0xe8));
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
  (**(code **)(**(int **)(this + 0x1ec) + 0x98))(*(undefined4 *)(this + 0x1ec),0x42960000);
  (**(code **)(**(int **)(this + 0x1ec) + 0x40))(*(undefined4 *)(this + 0x1ec),0x3f800000);
  pcVar1 = *(code **)(*(int *)this + 0x4c);
  cocos2d::CCPoint::CCPoint(aCStack_18,fVar3,fVar4);
  (*pcVar1)(this,aCStack_18);
  (**(code **)(*(int *)this + 0x40))(this,0x3f800000);
  (**(code **)(*(int *)this + 0x98))(this,0);
  (**(code **)(**(int **)(this + 0x1f0) + 0x90))(*(undefined4 *)(this + 0x1f0),0);
  this[0x195] = (MP5)0x0;
  this[0x194] = (MP5)0x0;
  *(undefined4 *)(this + 0x1c0) = 0;
  return;
}

// ---- MP5::setMapConfiguration  @ 0x36d6e0
/* MP5::setMapConfiguration() */

void MP5::setMapConfiguration(void)

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

// ---- MP5::getWeaponTexture  @ 0x36d7d8
/* MP5::getWeaponTexture() */

undefined4 __thiscall MP5::getWeaponTexture(MP5 *this)

{
  undefined4 uVar1;
  
  uVar1 = (**(code **)(**(int **)(this + 0x1ec) + 500))(*(undefined4 *)(this + 0x1ec));
  return uVar1;
}

// ---- MP5::getWeaponRect  @ 0x36d800
/* MP5::getWeaponRect() */

CCRect * MP5::getWeaponRect(void)

{
  CCRect *in_r0;
  CCRect *pCVar1;
  int in_r1;
  
  pCVar1 = (CCRect *)cocos2d::CCSprite::getTextureRect(*(CCSprite **)(in_r1 + 0x1ec));
  cocos2d::CCRect::CCRect(in_r0,pCVar1);
  return in_r0;
}

// ---- MP5::isRight  @ 0x36d828
/* MP5::isRight() */

bool __thiscall MP5::isRight(MP5 *this)

{
  float fVar1;
  
  fVar1 = (float)(**(code **)(**(int **)(this + 0x1ec) + 0x34))(*(undefined4 *)(this + 0x1ec));
  return 1.0 < fVar1;
}

// ---- MP5::setRight  @ 0x36d864
/* MP5::setRight(bool) */

void __thiscall MP5::setRight(MP5 *this,bool param_1)

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

// ---- MP5::getRANGE  @ 0x36d8a4
/* MP5::getRANGE() */

undefined4 MP5::getRANGE(void)

{
  return DAT_00943400;
}

// ---- MP5::getDAMAGE  @ 0x36d8b4
/* MP5::getDAMAGE() */

undefined4 MP5::getDAMAGE(void)

{
  return DAT_009433fc;
}

// ---- MP5::create  @ 0x4270fc
/* MP5::create() */

MP5 * MP5::create(void)

{
  bool bVar1;
  MP5 *this;
  int iVar2;
  
  this = operator_new(0x1f8);
  MP5(this);
  if ((this == (MP5 *)0x0) || (iVar2 = (**(code **)(*(int *)this + 0x18))(this), iVar2 == 0)) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (bVar1) {
    cocos2d::CCObject::autorelease((CCObject *)this);
  }
  else {
    if (this != (MP5 *)0x0) {
      (**(code **)(*(int *)this + 8))(this);
    }
    this = (MP5 *)0x0;
  }
  return this;
}
