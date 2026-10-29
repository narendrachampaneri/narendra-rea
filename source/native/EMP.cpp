// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 20 functions

// ---- EMP::EMP  @ 0x321bf4
/* EMP::EMP() */

EMP * __thiscall EMP::EMP(EMP *this)

{
  Weapon::Weapon((Weapon *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_00910608;
  return this;
}

// ---- EMP::init  @ 0x321c20
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x00321f32 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* EMP::init() */

bool __thiscall EMP::init(EMP *this)

{
  EMP *pEVar1;
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
  EMP *local_24;
  undefined1 auStack_1c [3];
  char local_19;
  CCPoint aCStack_18 [12];
  
  local_24 = this;
  local_19 = Weapon::init((Weapon *)this);
  bVar6 = local_19 == '\x01';
  if (bVar6) {
    uVar2 = cocos2d::CCSprite::createWithSpriteFrameName("emp.png");
    *(undefined4 *)(local_24 + 0x1ec) = uVar2;
    cocos2d::CCObject::retain(*(CCObject **)(local_24 + 0x1ec));
    uVar2 = cocos2d::CCSprite::createWithSpriteFrameName("empBubble.png");
    *(undefined4 *)(local_24 + 0x1f0) = uVar2;
    cocos2d::CCObject::retain(*(CCObject **)(local_24 + 0x1f0));
    (**(code **)(**(int **)(local_24 + 0x1f0) + 0x40))(*(undefined4 *)(local_24 + 0x1f0),0x3e99999a)
    ;
    fVar7 = (float)(**(code **)(**(int **)(local_24 + 0x1f0) + 0x90))
                             (*(undefined4 *)(local_24 + 0x1f0),0);
    pcVar4 = *(code **)(**(int **)(local_24 + 0x1f0) + 0x4c);
    uVar2 = *(undefined4 *)(local_24 + 0x1f0);
    cocos2d::CCPoint::CCPoint(aCStack_18,fVar7,extraout_s1);
    (*pcVar4)(uVar2,aCStack_18);
    (**(code **)(*(int *)local_24 + 0x1e0))(local_24);
    (**(code **)(**(int **)(local_24 + 0x1ec) + 0xcc))
              (*(undefined4 *)(local_24 + 0x1ec),*(undefined4 *)(local_24 + 0x1f0),0);
    fVar7 = (float)(**(code **)(*(int *)local_24 + 0xcc))
                             (local_24,*(undefined4 *)(local_24 + 0x1ec),0);
    pCVar5 = *(CCArray **)(local_24 + 0x150);
    pCVar3 = (CCObject *)cocos2d::CCFloat::create(fVar7);
    cocos2d::CCArray::addObject(pCVar5,pCVar3);
    pCVar5 = *(CCArray **)(local_24 + 0x14c);
    FUN_0079a3f4(auStack_1c);
    FUN_007c6a60(aCStack_18,&DAT_007d6820,auStack_1c);
    pCVar3 = (CCObject *)cocos2d::CCString::create((string *)aCStack_18);
    cocos2d::CCArray::addObject(pCVar5,pCVar3);
    FUN_007c5914(aCStack_18);
    fVar7 = (float)FUN_0079a3fc(auStack_1c);
    pCVar5 = *(CCArray **)(local_24 + 0x150);
    pCVar3 = (CCObject *)cocos2d::CCFloat::create(fVar7);
    cocos2d::CCArray::addObject(pCVar5,pCVar3);
    pCVar5 = *(CCArray **)(local_24 + 0x14c);
    FUN_0079a3f4(auStack_1c);
    FUN_007c6a60(aCStack_18,&DAT_007d6824,auStack_1c);
    pCVar3 = (CCObject *)cocos2d::CCString::create((string *)aCStack_18);
    cocos2d::CCArray::addObject(pCVar5,pCVar3);
    FUN_007c5914(aCStack_18);
    fVar7 = (float)FUN_0079a3fc(auStack_1c);
    pCVar5 = *(CCArray **)(local_24 + 0x150);
    pCVar3 = (CCObject *)cocos2d::CCFloat::create(fVar7);
    cocos2d::CCArray::addObject(pCVar5,pCVar3);
    pCVar5 = *(CCArray **)(local_24 + 0x14c);
    FUN_0079a3f4(auStack_1c);
    FUN_007c6a60(aCStack_18,&DAT_007d6828,auStack_1c);
    pCVar3 = (CCObject *)cocos2d::CCString::create((string *)aCStack_18);
    cocos2d::CCArray::addObject(pCVar5,pCVar3);
    FUN_007c5914(aCStack_18);
    FUN_0079a3fc(auStack_1c);
    local_24[500] = (EMP)0x0;
    *(undefined4 *)(local_24 + 0x1fc) = 0;
    *(undefined4 *)(local_24 + 0x1f8) = 0;
    *(undefined4 *)(local_24 + 0x144) = 0;
    this_00 = (CCFloat *)cocos2d::CCArray::objectAtIndex(*(CCArray **)(local_24 + 0x150),0);
    uVar2 = cocos2d::CCFloat::getValue(this_00);
    pEVar1 = local_24;
    *(undefined4 *)(local_24 + 0x148) = uVar2;
    *(undefined4 *)(local_24 + 0x15c) = 0x3fc00000;
    *(undefined4 *)(local_24 + 0x160) = 0x40400000;
    *(undefined4 *)(local_24 + 0x164) = 0;
    *(undefined4 *)(local_24 + 0x16c) = 0;
    *(undefined2 *)(local_24 + 0x1e8) = 8;
    *(undefined2 *)(local_24 + 0x1ea) = 1;
    *(undefined4 *)(local_24 + 0x18c) = 0x7d;
    *(undefined4 *)(local_24 + 0x188) = 0x15;
    *(undefined4 *)(local_24 + 0x19c) = 0x32;
    *(undefined4 *)(local_24 + 0x1a0) = 0x23;
    *(undefined4 *)(local_24 + 0x1a4) = DAT_009432d0;
    *(undefined4 *)(local_24 + 0x1bc) = 1;
    *(undefined4 *)(local_24 + 0x1b8) = 0xc1c80000;
    *(undefined4 *)(local_24 + 0x1cc) = 0x3f666666;
    *(undefined4 *)(local_24 + 0x170) = 1;
    *(undefined4 *)(local_24 + 0x174) = 0x10;
    FUN_00320d5c(0,extraout_s1,0,&local_38);
    *(undefined4 *)(pEVar1 + 0x1d8) = local_38;
    *(undefined4 *)(pEVar1 + 0x1dc) = uStack_34;
    *(undefined4 *)(pEVar1 + 0x1e0) = uStack_30;
    *(undefined4 *)(pEVar1 + 0x1e4) = uStack_2c;
    *(undefined4 *)(local_24 + 0x198) = DAT_009432cc;
  }
  return bVar6;
}

// ---- EMP::~EMP  @ 0x321fd0
/* WARNING: Removing unreachable block (ram,0x0032202a) */
/* EMP::~EMP() */

EMP * __thiscall EMP::~EMP(EMP *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_00910608;
  (**(code **)(**(int **)(this + 0x1ec) + 0x100))(*(undefined4 *)(this + 0x1ec));
  cocos2d::CCNode::removeAllChildren((CCNode *)this);
  cocos2d::CCObject::release(*(CCObject **)(this + 0x1ec));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x1f0));
  Weapon::~Weapon((Weapon *)this);
  return this;
}

// ---- EMP::~EMP  @ 0x322044
/* EMP::~EMP() */

EMP * __thiscall EMP::~EMP(EMP *this)

{
  ~EMP(this);
  operator_delete(this);
  return this;
}

// ---- EMP::triggerPull  @ 0x322060
/* EMP::triggerPull(float) */

void __thiscall EMP::triggerPull(EMP *this,float param_1)

{
  bool bVar1;
  undefined4 uVar2;
  char cVar3;
  float in_r1;
  float extraout_s0;
  float fVar4;
  undefined4 local_18;
  undefined4 uStack_14;
  undefined4 local_10;
  undefined4 uStack_c;
  
  this[500] = (EMP)0x1;
  if ((*(short *)(this + 0x1ea) < 1) ||
     (cVar3 = (**(code **)(*(int *)this + 0x2cc))(this), param_1 = extraout_s0, cVar3 == '\x01')) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (bVar1) {
    this[0x195] = (EMP)((char)this[0x195] + '\x01');
    *(float *)(this + 0x1f8) = *(float *)(this + 0x1f8) + in_r1;
    if ((int)((uint)(*(float *)(this + 0x110) * 0.3 < 0.35) << 0x1f) < 0) {
      fVar4 = *(float *)(this + 0x110) * 0.3;
    }
    else {
      fVar4 = 0.35;
    }
    (**(code **)(**(int **)(this + 0x1f0) + 0x40))(*(undefined4 *)(this + 0x1f0),fVar4);
    if (0.15 < *(float *)(this + 0x1f8)) {
      (**(code **)(*(int *)this + 0x294))(this);
      *(undefined4 *)(this + 0x1f8) = 0;
    }
  }
  else {
    *(undefined4 *)(this + 0x110) = 0;
    (**(code **)(**(int **)(this + 0x1f0) + 0x40))(param_1,*(undefined4 *)(this + 0x1f0),0);
  }
  if (*(float *)(this + 0x15c) < *(float *)(this + 0x110)) {
    if ((*(short *)(this + 0x1ea) < 1) ||
       (cVar3 = (**(code **)(*(int *)this + 0x2cc))(this), cVar3 == '\x01')) {
      bVar1 = false;
    }
    else {
      bVar1 = true;
    }
    if (bVar1) {
      (**(code **)(*(int *)this + 0x308))(this);
      this[0x195] = (EMP)((char)this[0x195] + '\x01');
      *(undefined2 *)(this + 0x1ea) = *(undefined2 *)(this + 0x1ea);
    }
    else {
      cVar3 = (**(code **)(*(int *)this + 0x2cc))(this);
      uVar2 = sndEng;
      if (cVar3 != '\x01') {
        (**(code **)(*(int *)this + 800))(&local_18,this);
        Sound::playSoundPosition(uVar2,0,local_18,uStack_14,local_10,uStack_c);
      }
    }
    *(undefined4 *)(this + 0x110) = 0;
  }
  cVar3 = (**(code **)(*(int *)this + 0x2cc))(this);
  if (((cVar3 == '\x01') || (*(short *)(this + 0x1ea) != 0)) || (*(short *)(this + 0x1e8) < 1)) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (bVar1) {
    this[0x181] = (EMP)0x1;
    *(undefined4 *)(this + 0x158) = 0;
  }
  return;
}

// ---- EMP::updateItemStep  @ 0x3222c8
/* EMP::updateItemStep(float) */

void __thiscall EMP::updateItemStep(EMP *this,float param_1)

{
  bool bVar1;
  short sVar2;
  float fVar3;
  float in_r1;
  float fVar4;
  
  *(float *)(this + 0x158) = *(float *)(this + 0x158) + in_r1;
  if (this[500] == (EMP)0x0) {
    *(undefined4 *)(this + 0x110) = 0;
    (**(code **)(**(int **)(this + 0x1f0) + 0x40))(*(undefined4 *)(this + 0x1f0),0);
    *(undefined4 *)(this + 0x1f8) = 0;
  }
  else {
    (**(code **)(*(int *)this + 0x254))(this,in_r1);
  }
  (**(code **)(**(int **)(this + 0x1f0) + 0x90))(*(undefined4 *)(this + 0x1f0),this[500]);
  this[500] = (EMP)0x0;
  if (this[0x181] != (EMP)0x0) {
    fVar4 = *(float *)(this + 0x158);
    fVar3 = (float)(**(code **)(*(int *)this + 0x2b8))(this);
    if (fVar3 < fVar4) {
      bVar1 = true;
      goto LAB_0032238e;
    }
  }
  bVar1 = false;
LAB_0032238e:
  if (bVar1) {
    this[0x181] = (EMP)0x0;
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

// ---- EMP::updateRemoteItemStep  @ 0x322424
/* EMP::updateRemoteItemStep(float) */

void __thiscall EMP::updateRemoteItemStep(EMP *this,float param_1)

{
  float in_r1;
  
  *(float *)(this + 0x1fc) = *(float *)(this + 0x1fc) + in_r1;
  if (this[0x194] == this[0x195]) {
    if (0.25 < *(float *)(this + 0x1fc)) {
      this[500] = (EMP)0x0;
      *(undefined4 *)(this + 0x110) = 0;
      param_1 = (float)(**(code **)(**(int **)(this + 0x1f0) + 0x40))
                                 (*(undefined4 *)(this + 0x1f0),0);
      *(undefined4 *)(this + 0x1f8) = 0;
      *(undefined4 *)(this + 0x1fc) = 0;
    }
  }
  else {
    this[500] = (EMP)0x1;
    (**(code **)(*(int *)this + 0x254))(this,in_r1);
    param_1 = (float)(**(code **)(*(int *)this + 0x260))(this,in_r1);
    *(undefined4 *)(this + 0x1fc) = 0;
  }
  (**(code **)(**(int **)(this + 0x1f0) + 0x90))(param_1,*(undefined4 *)(this + 0x1f0),this[500]);
  return;
}

// ---- EMP::remoteTriggerPull  @ 0x322500
/* EMP::remoteTriggerPull(float) */

void __thiscall EMP::remoteTriggerPull(EMP *this,float param_1)

{
  float in_r1;
  float fVar1;
  
  this[0x195] = (EMP)((char)this[0x195] + '\x01');
  *(float *)(this + 0x1f8) = *(float *)(this + 0x1f8) + in_r1;
  if ((int)((uint)(*(float *)(this + 0x110) * 0.3 < 0.35) << 0x1f) < 0) {
    fVar1 = *(float *)(this + 0x110) * 0.3;
  }
  else {
    fVar1 = 0.35;
  }
  (**(code **)(**(int **)(this + 0x1f0) + 0x40))(*(undefined4 *)(this + 0x1f0),fVar1);
  if (0.15 < *(float *)(this + 0x1f8)) {
    (**(code **)(*(int *)this + 0x294))(this);
    *(undefined4 *)(this + 0x1f8) = 0;
  }
  return;
}

// ---- EMP::getShellPoint  @ 0x3225d8
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x0032267e */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* EMP::getShellPoint() */

undefined4 EMP::getShellPoint(void)

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
  FUN_00320d3c(&local_30,uVar1,aCStack_38);
  (**(code **)(*in_r1 + 0x184))(aCStack_28,in_r1);
  cocos2d::__CCPointApplyAffineTransform(acStack_40,(CCPoint *)&local_30,aCStack_28);
  (**(code **)(*worldLayer + 0x188))(aCStack_28,worldLayer);
  cocos2d::__CCPointApplyAffineTransform((cocos2d *)&local_30,acStack_40,aCStack_28);
  FUN_00320d5c(SUB84((double)local_30,0),extraout_s1,SUB84((double)local_2c,0),in_r0);
  return in_r0;
}

// ---- EMP::playSound  @ 0x322690
/* EMP::playSound() */

void __thiscall EMP::playSound(EMP *this)

{
  undefined4 uVar1;
  undefined4 local_18;
  undefined4 uStack_14;
  undefined4 local_10;
  undefined4 uStack_c;
  
  uVar1 = sndEng;
  (**(code **)(*(int *)this + 800))(&local_18,this);
  Sound::playSoundPositionVP(uVar1,0x24,local_18,uStack_14,local_10,uStack_c,0x3f800000,0x3f333333);
  return;
}

// ---- EMP::setPrimaryConfiguration  @ 0x3226e8
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x00322714 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* EMP::setPrimaryConfiguration() */

void __thiscall EMP::setPrimaryConfiguration(EMP *this)

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
    FUN_00320e70(0,fVar4,0,*(undefined4 *)(this + 0xe8));
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
  this[0x195] = (EMP)0x0;
  this[0x194] = (EMP)0x0;
  *(undefined4 *)(this + 0x1c0) = 0;
  this[500] = (EMP)0x0;
  return;
}

// ---- EMP::setSecondaryConfiguration  @ 0x322830
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x0032285c */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* EMP::setSecondaryConfiguration() */

void __thiscall EMP::setSecondaryConfiguration(EMP *this)

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
    FUN_00320e70(0,fVar4,0,*(undefined4 *)(this + 0xe8));
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
  (**(code **)(**(int **)(this + 0x1ec) + 0x98))(*(undefined4 *)(this + 0x1ec),0x42700000);
  (**(code **)(**(int **)(this + 0x1ec) + 0x40))(*(undefined4 *)(this + 0x1ec),0x3f800000);
  pcVar1 = *(code **)(*(int *)this + 0x4c);
  cocos2d::CCPoint::CCPoint(aCStack_18,fVar3,fVar4);
  (*pcVar1)(this,aCStack_18);
  (**(code **)(*(int *)this + 0x40))(this,0x3f800000);
  (**(code **)(*(int *)this + 0x98))(this,0);
  (**(code **)(**(int **)(this + 0x1f0) + 0x90))(*(undefined4 *)(this + 0x1f0),0);
  this[0xe5] = (EMP)0x0;
  this[0x195] = (EMP)0x0;
  this[0x194] = (EMP)0x0;
  *(undefined4 *)(this + 0x1c0) = 0;
  this[500] = (EMP)0x0;
  return;
}

// ---- EMP::setMapConfiguration  @ 0x322998
/* EMP::setMapConfiguration() */

void EMP::setMapConfiguration(void)

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
  *(undefined1 *)((int)in_r0 + 0xe5) = 0;
  *(undefined1 *)((int)in_r0 + 0x195) = 0;
  *(undefined1 *)(in_r0 + 0x65) = 0;
  in_r0[0x70] = 0;
  *(undefined1 *)(in_r0 + 0x7d) = 0;
  return;
}

// ---- EMP::getWeaponTexture  @ 0x322aa0
/* EMP::getWeaponTexture() */

undefined4 __thiscall EMP::getWeaponTexture(EMP *this)

{
  undefined4 uVar1;
  
  uVar1 = (**(code **)(**(int **)(this + 0x1ec) + 500))(*(undefined4 *)(this + 0x1ec));
  return uVar1;
}

// ---- EMP::getWeaponRect  @ 0x322ac8
/* EMP::getWeaponRect() */

CCRect * EMP::getWeaponRect(void)

{
  CCRect *in_r0;
  CCRect *pCVar1;
  int in_r1;
  
  pCVar1 = (CCRect *)cocos2d::CCSprite::getTextureRect(*(CCSprite **)(in_r1 + 0x1ec));
  cocos2d::CCRect::CCRect(in_r0,pCVar1);
  return in_r0;
}

// ---- EMP::isRight  @ 0x322af0
/* EMP::isRight() */

bool __thiscall EMP::isRight(EMP *this)

{
  float fVar1;
  
  fVar1 = (float)(**(code **)(**(int **)(this + 0x1ec) + 0x34))(*(undefined4 *)(this + 0x1ec));
  return 1.0 < fVar1;
}

// ---- EMP::setRight  @ 0x322b2c
/* EMP::setRight(bool) */

void __thiscall EMP::setRight(EMP *this,bool param_1)

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

// ---- EMP::doFire  @ 0x322b70
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x00322bce */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* EMP::doFire(float, cpVect, cpVect, int, std::string) */

void EMP::doFire(int *param_1,float param_2)

{
  int iVar1;
  undefined4 extraout_r0;
  undefined4 extraout_r0_00;
  CCObject *pCVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  undefined4 uVar8;
  undefined4 uVar9;
  CCNotificationCenter *pCVar10;
  undefined4 in_fpscr;
  byte bVar11;
  float extraout_s0;
  double in_d0;
  double __x;
  undefined4 in_s3;
  undefined4 in_s5;
  undefined4 in_stack_00000008;
  undefined4 in_stack_00000010;
  undefined4 in_stack_0000001c;
  undefined4 local_b0 [2];
  undefined4 uStack_a8;
  float local_a0;
  int *local_9c;
  undefined1 auStack_98 [4];
  string asStack_94 [4];
  float local_90;
  CCObject *local_8c;
  double local_88;
  undefined4 local_80 [2];
  undefined4 local_78;
  undefined4 local_70 [2];
  undefined4 local_68;
  undefined1 local_60 [16];
  undefined1 local_50 [16];
  undefined1 auStack_40 [20];
  
  bVar11 = (byte)((uint)in_fpscr >> 0x18);
  local_90 = -param_2 * 0.017453292;
  local_a0 = param_2;
  local_9c = param_1;
  __x = cos(in_d0);
  sin(__x);
  uVar3 = (undefined4)((ulonglong)__x >> 0x20);
  FUN_00320d5c(extraout_r0,uVar3,extraout_r0_00,local_80);
  FUN_00320e28(in_stack_00000008,uVar3,in_stack_00000010,in_s3,local_80[0],in_s5,local_78);
  extraout_s0 = SUB84(__x,0);
  local_88 = __x;
  if ((char)(bVar11 & 0xf | (byte)(((uint)(__x < 0.0) << 0x1f) >> 0x18) |
             (byte)(((uint)(__x == 0.0) << 0x1e) >> 0x18) |
            (byte)(((uint)(0.0 <= __x) << 0x1d) >> 0x18)) < '\0') {
    local_88 = 0.0;
  }
  FUN_00320ddc(local_80[0],uVar3,local_78,in_s3,SUB84(local_88,0),local_b0);
  FUN_00320ddc(local_80[0],uVar3,local_78,in_s3,0,local_70);
  FUN_00320d84(local_70[0],uVar3,local_68,in_s3,local_b0[0],in_s5,uStack_a8,local_60);
  (**(code **)(*local_9c + 800))(local_50,local_9c);
  pCVar2 = (CCObject *)cocos2d::CCFloat::create(extraout_s0);
  (**(code **)(*local_9c + 800))(auStack_40,local_9c);
  uVar3 = cocos2d::CCFloat::create(extraout_s0);
  uVar4 = cocos2d::CCFloat::create(extraout_s0);
  uVar5 = cocos2d::CCFloat::create(extraout_s0);
  uVar6 = cocos2d::CCInteger::create(0x15);
  uVar7 = cocos2d::CCFloat::create(extraout_s0);
  iVar1 = globalSeed;
  globalSeed = globalSeed + 1;
  uVar8 = cocos2d::CCInteger::create(iVar1);
  uVar9 = FUN_007c5300(in_stack_0000001c);
  FUN_0079a3f4(auStack_98);
  FUN_007c6a60(asStack_94,uVar9,auStack_98);
  uVar9 = cocos2d::CCString::create(asStack_94);
  local_8c = (CCObject *)
             cocos2d::CCArray::create(pCVar2,uVar3,uVar4,uVar5,uVar6,uVar7,uVar8,uVar9,0);
  FUN_007c5914(asStack_94);
  FUN_0079a3fc(auStack_98);
  pCVar10 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::postNotification(pCVar10,"ExplosiveCreate",local_8c);
  pCVar10 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::postNotification(pCVar10,"Explosive",local_8c);
  return;
}

// ---- EMP::doRemoteFire  @ 0x322dd8
/* EMP::doRemoteFire(float, cpVect, cpVect, int, std::string) */

void EMP::doRemoteFire(void)

{
  return;
}

// ---- EMP::create  @ 0x42778c
/* EMP::create() */

EMP * EMP::create(void)

{
  bool bVar1;
  EMP *this;
  int iVar2;
  
  this = operator_new(0x200);
  EMP(this);
  if ((this == (EMP *)0x0) || (iVar2 = (**(code **)(*(int *)this + 0x18))(this), iVar2 == 0)) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (bVar1) {
    cocos2d::CCObject::autorelease((CCObject *)this);
  }
  else {
    if (this != (EMP *)0x0) {
      (**(code **)(*(int *)this + 8))(this);
    }
    this = (EMP *)0x0;
  }
  return this;
}
