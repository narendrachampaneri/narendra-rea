// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 20 functions

// ---- M93BA::M93BA  @ 0x367abc
/* M93BA::M93BA() */

M93BA * __thiscall M93BA::M93BA(M93BA *this)

{
  Weapon::Weapon((Weapon *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_00914198;
  return this;
}

// ---- M93BA::init  @ 0x367ae8
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x00367e6c */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* M93BA::init() */

bool __thiscall M93BA::init(M93BA *this)

{
  M93BA *pMVar1;
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
  M93BA *local_24;
  undefined1 auStack_1c [3];
  char local_19;
  CCPoint aCStack_18 [12];
  
  local_24 = this;
  local_19 = Weapon::init((Weapon *)this);
  bVar6 = local_19 == '\x01';
  if (bVar6) {
    uVar2 = cocos2d::CCSprite::createWithSpriteFrameName("sniper.png");
    *(undefined4 *)(local_24 + 0x1ec) = uVar2;
    cocos2d::CCObject::retain(*(CCObject **)(local_24 + 0x1ec));
    uVar2 = cocos2d::CCSprite::createWithSpriteFrameName("flare.png");
    *(undefined4 *)(local_24 + 0x1f0) = uVar2;
    fVar7 = (float)cocos2d::CCObject::retain(*(CCObject **)(local_24 + 0x1f0));
    pcVar4 = *(code **)(**(int **)(local_24 + 0x1f0) + 0x7c);
    uVar2 = *(undefined4 *)(local_24 + 0x1f0);
    cocos2d::CCPoint::CCPoint(aCStack_18,fVar7,extraout_s1);
    (*pcVar4)(uVar2,aCStack_18);
    (**(code **)(**(int **)(local_24 + 0x1f0) + 0x30))(*(undefined4 *)(local_24 + 0x1f0),0x40200000)
    ;
    (**(code **)(**(int **)(local_24 + 0x1f0) + 0x38))(*(undefined4 *)(local_24 + 0x1f0),0x40200000)
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
    FUN_007c6a60(aCStack_18,&DAT_007dc398,auStack_1c);
    pCVar3 = (CCObject *)cocos2d::CCString::create((string *)aCStack_18);
    cocos2d::CCArray::addObject(pCVar5,pCVar3);
    FUN_007c5914(aCStack_18);
    fVar7 = (float)FUN_0079a3fc(auStack_1c);
    pCVar5 = *(CCArray **)(local_24 + 0x150);
    pCVar3 = (CCObject *)cocos2d::CCFloat::create(fVar7);
    cocos2d::CCArray::addObject(pCVar5,pCVar3);
    pCVar5 = *(CCArray **)(local_24 + 0x14c);
    FUN_0079a3f4(auStack_1c);
    FUN_007c6a60(aCStack_18,&DAT_007dc39c,auStack_1c);
    pCVar3 = (CCObject *)cocos2d::CCString::create((string *)aCStack_18);
    cocos2d::CCArray::addObject(pCVar5,pCVar3);
    FUN_007c5914(aCStack_18);
    fVar7 = (float)FUN_0079a3fc(auStack_1c);
    pCVar5 = *(CCArray **)(local_24 + 0x150);
    pCVar3 = (CCObject *)cocos2d::CCFloat::create(fVar7);
    cocos2d::CCArray::addObject(pCVar5,pCVar3);
    pCVar5 = *(CCArray **)(local_24 + 0x14c);
    FUN_0079a3f4(auStack_1c);
    FUN_007c6a60(aCStack_18,&DAT_007dc3a0,auStack_1c);
    pCVar3 = (CCObject *)cocos2d::CCString::create((string *)aCStack_18);
    cocos2d::CCArray::addObject(pCVar5,pCVar3);
    FUN_007c5914(aCStack_18);
    fVar7 = (float)FUN_0079a3fc(auStack_1c);
    pCVar5 = *(CCArray **)(local_24 + 0x150);
    pCVar3 = (CCObject *)cocos2d::CCFloat::create(fVar7);
    cocos2d::CCArray::addObject(pCVar5,pCVar3);
    pCVar5 = *(CCArray **)(local_24 + 0x14c);
    FUN_0079a3f4(auStack_1c);
    FUN_007c6a60(aCStack_18,&DAT_007dc3a4,auStack_1c);
    pCVar3 = (CCObject *)cocos2d::CCString::create((string *)aCStack_18);
    cocos2d::CCArray::addObject(pCVar5,pCVar3);
    FUN_007c5914(aCStack_18);
    FUN_0079a3fc(auStack_1c);
    *(undefined4 *)(local_24 + 0x144) = 0;
    this_00 = (CCFloat *)cocos2d::CCArray::objectAtIndex(*(CCArray **)(local_24 + 0x150),0);
    uVar2 = cocos2d::CCFloat::getValue(this_00);
    *(undefined4 *)(local_24 + 0x148) = uVar2;
    *(undefined4 *)(local_24 + 0x15c) = 0x3f4ccccd;
    *(undefined4 *)(local_24 + 0x160) = 0x40200000;
    *(undefined4 *)(local_24 + 0x164) = 0;
    *(undefined4 *)(local_24 + 0x16c) = 0x41f00000;
    (**(code **)(**(int **)(local_24 + 0x1f0) + 0x98))(*(undefined4 *)(local_24 + 0x1f0),0x41a00000)
    ;
    pMVar1 = local_24;
    *(undefined2 *)(local_24 + 0x1e8) = 0x14;
    *(undefined2 *)(local_24 + 0x1ea) = 4;
    *(undefined4 *)(local_24 + 0x18c) = 0x96;
    *(undefined4 *)(local_24 + 0x188) = 10;
    *(undefined4 *)(local_24 + 0x19c) = 0x23;
    *(undefined4 *)(local_24 + 0x1a0) = 0x32;
    *(undefined4 *)(local_24 + 0x1a4) = DAT_009433d8;
    *(undefined4 *)(local_24 + 0x1bc) = 10000;
    *(undefined4 *)(local_24 + 0x1cc) = 0x3f733333;
    *(undefined4 *)(local_24 + 0x170) = 4;
    *(undefined4 *)(local_24 + 0x174) = 0x14;
    FUN_00366d14(0,extraout_s1,0,&local_38);
    *(undefined4 *)(pMVar1 + 0x1d8) = local_38;
    *(undefined4 *)(pMVar1 + 0x1dc) = uStack_34;
    *(undefined4 *)(pMVar1 + 0x1e0) = uStack_30;
    *(undefined4 *)(pMVar1 + 0x1e4) = uStack_2c;
    *(undefined4 *)(local_24 + 0x198) = DAT_009433d4;
  }
  return bVar6;
}

// ---- M93BA::~M93BA  @ 0x367f18
/* WARNING: Removing unreachable block (ram,0x00367f5a) */
/* M93BA::~M93BA() */

M93BA * __thiscall M93BA::~M93BA(M93BA *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_00914198;
  cocos2d::CCNode::removeAllChildren((CCNode *)this);
  cocos2d::CCObject::release(*(CCObject **)(this + 0x1ec));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x1f0));
  Weapon::~Weapon((Weapon *)this);
  return this;
}

// ---- M93BA::~M93BA  @ 0x367f74
/* M93BA::~M93BA() */

M93BA * __thiscall M93BA::~M93BA(M93BA *this)

{
  ~M93BA(this);
  operator_delete(this);
  return this;
}

// ---- M93BA::triggerPull  @ 0x367f90
/* M93BA::triggerPull(float) */

void M93BA::triggerPull(float param_1)

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

// ---- M93BA::updateItemStep  @ 0x3680f0
/* M93BA::updateItemStep(float) */

void __thiscall M93BA::updateItemStep(M93BA *this,float param_1)

{
  bool bVar1;
  short sVar2;
  float fVar3;
  float in_r1;
  float fVar4;
  
  *(float *)(this + 0x158) = *(float *)(this + 0x158) + in_r1;
  (**(code **)(**(int **)(this + 0x1f0) + 0x90))(*(undefined4 *)(this + 0x1f0),this[0x180]);
  (**(code **)(*(int *)this + 0x254))(this,in_r1);
  if (this[0x181] != (M93BA)0x0) {
    fVar4 = *(float *)(this + 0x158);
    fVar3 = (float)(**(code **)(*(int *)this + 0x2b8))(this);
    if (fVar3 < fVar4) {
      bVar1 = true;
      goto LAB_00368174;
    }
  }
  bVar1 = false;
LAB_00368174:
  if (bVar1) {
    this[0x181] = (M93BA)0x0;
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

// ---- M93BA::updateRemoteItemStep  @ 0x36820c
/* M93BA::updateRemoteItemStep(float) */

void __thiscall M93BA::updateRemoteItemStep(M93BA *this,float param_1)

{
  undefined4 in_r1;
  
  (**(code **)(**(int **)(this + 0x1f0) + 0x90))(*(undefined4 *)(this + 0x1f0),this[0x180]);
  (**(code **)(*(int *)this + 0x254))(this,in_r1);
  if (this[0x194] != this[0x195]) {
    (**(code **)(*(int *)this + 0x260))(this,in_r1);
  }
  return;
}

// ---- M93BA::remoteTriggerPull  @ 0x36826c
/* M93BA::remoteTriggerPull(float) */

float M93BA::remoteTriggerPull(float param_1)

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

// ---- M93BA::getShellPoint  @ 0x3682e0
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x0036839a */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* M93BA::getShellPoint() */

undefined4 M93BA::getShellPoint(void)

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
  FUN_00366cf4(acStack_28,uVar1,aCStack_38);
  (**(code **)(*in_r1 + 0x184))(aCStack_20,in_r1);
  cocos2d::__CCPointApplyAffineTransform((cocos2d *)&local_30,acStack_28,aCStack_20);
  (**(code **)(*worldLayer + 0x188))(aCStack_20,worldLayer);
  cocos2d::__CCPointApplyAffineTransform(acStack_28,(CCPoint *)&local_30,aCStack_20);
  cocos2d::CCPoint::operator=((CCPoint *)&local_30,(CCPoint *)acStack_28);
  FUN_00366d14(SUB84((double)local_30,0),fVar2,SUB84((double)local_2c,0),in_r0);
  return in_r0;
}

// ---- M93BA::playSound  @ 0x3683ac
/* M93BA::playSound() */

void __thiscall M93BA::playSound(M93BA *this)

{
  undefined4 uVar1;
  undefined4 local_18;
  undefined4 uStack_14;
  undefined4 local_10;
  undefined4 uStack_c;
  
  uVar1 = sndEng;
  (**(code **)(*(int *)this + 800))(&local_18,this);
  Sound::playSoundPosition(uVar1,0x16,local_18,uStack_14,local_10,uStack_c);
  return;
}

// ---- M93BA::setPrimaryConfiguration  @ 0x3683f4
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x00368420 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* M93BA::setPrimaryConfiguration() */

void __thiscall M93BA::setPrimaryConfiguration(M93BA *this)

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
    FUN_00366d3c(0,fVar4,0,*(undefined4 *)(this + 0xe8));
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
  this[0x195] = (M93BA)0x0;
  this[0x194] = (M93BA)0x0;
  *(undefined4 *)(this + 0x1c0) = 0;
  return;
}

// ---- M93BA::setSecondaryConfiguration  @ 0x36852c
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x00368558 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* M93BA::setSecondaryConfiguration() */

void __thiscall M93BA::setSecondaryConfiguration(M93BA *this)

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
    FUN_00366d3c(0,fVar4,0,*(undefined4 *)(this + 0xe8));
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
  (**(code **)(**(int **)(this + 0x1ec) + 0x98))(*(undefined4 *)(this + 0x1ec),0x425c0000);
  (**(code **)(**(int **)(this + 0x1ec) + 0x40))(*(undefined4 *)(this + 0x1ec),0x3f800000);
  pcVar1 = *(code **)(*(int *)this + 0x4c);
  cocos2d::CCPoint::CCPoint(aCStack_18,fVar3,fVar4);
  (*pcVar1)(this,aCStack_18);
  (**(code **)(*(int *)this + 0x40))(this,0x3f800000);
  (**(code **)(*(int *)this + 0x98))(this,0);
  (**(code **)(**(int **)(this + 0x1f0) + 0x90))(*(undefined4 *)(this + 0x1f0),0);
  this[0x195] = (M93BA)0x0;
  this[0x194] = (M93BA)0x0;
  *(undefined4 *)(this + 0x1c0) = 0;
  return;
}

// ---- M93BA::setMapConfiguration  @ 0x368684
/* M93BA::setMapConfiguration() */

void M93BA::setMapConfiguration(void)

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

// ---- M93BA::getWeaponTexture  @ 0x36877c
/* M93BA::getWeaponTexture() */

undefined4 __thiscall M93BA::getWeaponTexture(M93BA *this)

{
  undefined4 uVar1;
  
  uVar1 = (**(code **)(**(int **)(this + 0x1ec) + 500))(*(undefined4 *)(this + 0x1ec));
  return uVar1;
}

// ---- M93BA::getWeaponRect  @ 0x3687a4
/* M93BA::getWeaponRect() */

CCRect * M93BA::getWeaponRect(void)

{
  CCRect *in_r0;
  CCRect *pCVar1;
  int in_r1;
  
  pCVar1 = (CCRect *)cocos2d::CCSprite::getTextureRect(*(CCSprite **)(in_r1 + 0x1ec));
  cocos2d::CCRect::CCRect(in_r0,pCVar1);
  return in_r0;
}

// ---- M93BA::isRight  @ 0x3687cc
/* M93BA::isRight() */

bool __thiscall M93BA::isRight(M93BA *this)

{
  float fVar1;
  
  fVar1 = (float)(**(code **)(**(int **)(this + 0x1ec) + 0x34))(*(undefined4 *)(this + 0x1ec));
  return 1.0 < fVar1;
}

// ---- M93BA::setRight  @ 0x368808
/* M93BA::setRight(bool) */

void __thiscall M93BA::setRight(M93BA *this,bool param_1)

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

// ---- M93BA::getRANGE  @ 0x368848
/* M93BA::getRANGE() */

undefined4 M93BA::getRANGE(void)

{
  return DAT_009433d8;
}

// ---- M93BA::getDAMAGE  @ 0x368858
/* M93BA::getDAMAGE() */

undefined4 M93BA::getDAMAGE(void)

{
  return DAT_009433d4;
}

// ---- M93BA::create  @ 0x4272bc
/* M93BA::create() */

M93BA * M93BA::create(void)

{
  bool bVar1;
  M93BA *this;
  int iVar2;
  
  this = operator_new(0x1f8);
  M93BA(this);
  if ((this == (M93BA *)0x0) || (iVar2 = (**(code **)(*(int *)this + 0x18))(this), iVar2 == 0)) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (bVar1) {
    cocos2d::CCObject::autorelease((CCObject *)this);
  }
  else {
    if (this != (M93BA *)0x0) {
      (**(code **)(*(int *)this + 8))(this);
    }
    this = (M93BA *)0x0;
  }
  return this;
}
