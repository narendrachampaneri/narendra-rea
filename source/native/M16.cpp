// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 20 functions

// ---- M16::M16  @ 0x365d4c
/* M16::M16() */

M16 * __thiscall M16::M16(M16 *this)

{
  Weapon::Weapon((Weapon *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_00913e58;
  return this;
}

// ---- M16::init  @ 0x365d78
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x00366080 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* M16::init() */

bool __thiscall M16::init(M16 *this)

{
  M16 *pMVar1;
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
  M16 *local_24;
  undefined1 auStack_1c [3];
  char local_19;
  CCPoint aCStack_18 [12];
  
  local_24 = this;
  local_19 = Weapon::init((Weapon *)this);
  bVar6 = local_19 == '\x01';
  if (bVar6) {
    uVar2 = cocos2d::CCSprite::createWithSpriteFrameName("m16.png");
    *(undefined4 *)(local_24 + 0x1ec) = uVar2;
    cocos2d::CCObject::retain(*(CCObject **)(local_24 + 0x1ec));
    uVar2 = cocos2d::CCSprite::createWithSpriteFrameName("flare.png");
    *(undefined4 *)(local_24 + 0x1f0) = uVar2;
    fVar7 = (float)cocos2d::CCObject::retain(*(CCObject **)(local_24 + 0x1f0));
    pcVar4 = *(code **)(**(int **)(local_24 + 0x1f0) + 0x7c);
    uVar2 = *(undefined4 *)(local_24 + 0x1f0);
    cocos2d::CCPoint::CCPoint(aCStack_18,fVar7,extraout_s1);
    (*pcVar4)(uVar2,aCStack_18);
    (**(code **)(**(int **)(local_24 + 0x1f0) + 0x40))(*(undefined4 *)(local_24 + 0x1f0),0x40000000)
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
    FUN_007c6a60(aCStack_18,&DAT_007dc14c,auStack_1c);
    pCVar3 = (CCObject *)cocos2d::CCString::create((string *)aCStack_18);
    cocos2d::CCArray::addObject(pCVar5,pCVar3);
    FUN_007c5914(aCStack_18);
    fVar7 = (float)FUN_0079a3fc(auStack_1c);
    pCVar5 = *(CCArray **)(local_24 + 0x150);
    pCVar3 = (CCObject *)cocos2d::CCFloat::create(fVar7);
    cocos2d::CCArray::addObject(pCVar5,pCVar3);
    pCVar5 = *(CCArray **)(local_24 + 0x14c);
    FUN_0079a3f4(auStack_1c);
    FUN_007c6a60(aCStack_18,&DAT_007dc150,auStack_1c);
    pCVar3 = (CCObject *)cocos2d::CCString::create((string *)aCStack_18);
    cocos2d::CCArray::addObject(pCVar5,pCVar3);
    FUN_007c5914(aCStack_18);
    fVar7 = (float)FUN_0079a3fc(auStack_1c);
    pCVar5 = *(CCArray **)(local_24 + 0x150);
    pCVar3 = (CCObject *)cocos2d::CCFloat::create(fVar7);
    cocos2d::CCArray::addObject(pCVar5,pCVar3);
    pCVar5 = *(CCArray **)(local_24 + 0x14c);
    FUN_0079a3f4(auStack_1c);
    FUN_007c6a60(aCStack_18,&DAT_007dc154,auStack_1c);
    pCVar3 = (CCObject *)cocos2d::CCString::create((string *)aCStack_18);
    cocos2d::CCArray::addObject(pCVar5,pCVar3);
    FUN_007c5914(aCStack_18);
    FUN_0079a3fc(auStack_1c);
    *(undefined4 *)(local_24 + 0x144) = 0;
    this_00 = (CCFloat *)cocos2d::CCArray::objectAtIndex(*(CCArray **)(local_24 + 0x150),0);
    uVar2 = cocos2d::CCFloat::getValue(this_00);
    *(undefined4 *)(local_24 + 0x148) = uVar2;
    *(undefined4 *)(local_24 + 0x1f8) = 0;
    *(undefined4 *)(local_24 + 0x15c) = 0x3f000000;
    *(undefined4 *)(local_24 + 500) = 0x3d75c28f;
    *(undefined4 *)(local_24 + 0x160) = 0x40000000;
    *(undefined4 *)(local_24 + 0x164) = 0x40000000;
    *(undefined4 *)(local_24 + 0x16c) = 0x41000000;
    (**(code **)(**(int **)(local_24 + 0x1f0) + 0x98))(*(undefined4 *)(local_24 + 0x1f0),0x40a00000)
    ;
    pMVar1 = local_24;
    *(undefined2 *)(local_24 + 0x1e8) = 0x96;
    *(undefined2 *)(local_24 + 0x1ea) = 0x18;
    *(undefined4 *)(local_24 + 0x18c) = 0x6e;
    *(undefined4 *)(local_24 + 0x1fc) = 0;
    *(undefined4 *)(local_24 + 0x188) = 8;
    *(undefined4 *)(local_24 + 0x19c) = 0x1e;
    *(undefined4 *)(local_24 + 0x1a0) = 0x28;
    *(undefined4 *)(local_24 + 0x1a4) = DAT_009433c8;
    *(undefined4 *)(local_24 + 0x1bc) = 0x640;
    *(undefined4 *)(local_24 + 0x170) = 0x18;
    *(undefined4 *)(local_24 + 0x174) = 300;
    FUN_00364fa4(0,extraout_s1,0,&local_38);
    *(undefined4 *)(pMVar1 + 0x1d8) = local_38;
    *(undefined4 *)(pMVar1 + 0x1dc) = uStack_34;
    *(undefined4 *)(pMVar1 + 0x1e0) = uStack_30;
    *(undefined4 *)(pMVar1 + 0x1e4) = uStack_2c;
    *(undefined4 *)(local_24 + 0x198) = DAT_009433c4;
    local_24[0x200] = (M16)0x0;
  }
  return bVar6;
}

// ---- M16::~M16  @ 0x366118
/* WARNING: Removing unreachable block (ram,0x0036615a) */
/* M16::~M16() */

M16 * __thiscall M16::~M16(M16 *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_00913e58;
  cocos2d::CCNode::removeAllChildren((CCNode *)this);
  cocos2d::CCObject::release(*(CCObject **)(this + 0x1ec));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x1f0));
  Weapon::~Weapon((Weapon *)this);
  return this;
}

// ---- M16::~M16  @ 0x366174
/* M16::~M16() */

M16 * __thiscall M16::~M16(M16 *this)

{
  ~M16(this);
  operator_delete(this);
  return this;
}

// ---- M16::triggerPull  @ 0x366190
/* M16::triggerPull(float) */

float M16::triggerPull(float param_1)

{
  bool bVar1;
  char cVar2;
  int *in_r0;
  float extraout_s0;
  
  if (((float)in_r0[0x44] <= (float)in_r0[0x57]) ||
     (cVar2 = (**(code **)(*in_r0 + 0x2cc))(in_r0), param_1 = extraout_s0, cVar2 == '\x01')) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (bVar1) {
    *(undefined1 *)(in_r0 + 0x80) = 1;
    in_r0[0x44] = 0;
  }
  return param_1;
}

// ---- M16::updateItemStep  @ 0x3661ec
/* M16::updateItemStep(float) */

void __thiscall M16::updateItemStep(M16 *this,float param_1)

{
  bool bVar1;
  undefined4 uVar2;
  char cVar3;
  short sVar4;
  float fVar5;
  float in_r1;
  float extraout_s0;
  float fVar6;
  undefined4 local_20;
  undefined4 uStack_1c;
  undefined4 local_18;
  undefined4 uStack_14;
  
  *(float *)(this + 0x1f8) = *(float *)(this + 0x1f8) + in_r1;
  if (*(short *)(this + 0x1ea) < 1) {
    if ((this[0x200] == (M16)0x0) ||
       (cVar3 = (**(code **)(*(int *)this + 0x2cc))(this), param_1 = extraout_s0, cVar3 == '\x01'))
    {
      bVar1 = false;
    }
    else {
      bVar1 = true;
    }
    uVar2 = sndEng;
    if (bVar1) {
      (**(code **)(*(int *)this + 800))(param_1,&local_20,this);
      Sound::playSoundPosition(uVar2,0,local_20,uStack_1c,local_18,uStack_14);
    }
    this[0x200] = (M16)0x0;
  }
  if (this[0x200] != (M16)0x0) {
    if (*(float *)(this + 500) < *(float *)(this + 0x1f8)) {
      *(int *)(this + 0x1fc) = *(int *)(this + 0x1fc) + 1;
      if (*(int *)(this + 0x1fc) == 1) {
        this[0x195] = (M16)((char)this[0x195] + '\x01');
      }
      this[0x180] = (M16)0x1;
      (**(code **)(*(int *)this + 0x294))(this);
      (**(code **)(*(int *)this + 0x308))(this);
      (**(code **)(*(int *)this + 0x30c))(this);
      *(undefined4 *)(this + 0x1f8) = 0;
      *(undefined2 *)(this + 0x1ea) = *(undefined2 *)(this + 0x1ea);
      if ((2 < *(int *)(this + 0x1fc)) || (*(short *)(this + 0x1ea) == 0)) {
        this[0x200] = (M16)0x0;
        *(undefined4 *)(this + 0x1fc) = 0;
      }
    }
  }
  cVar3 = (**(code **)(*(int *)this + 0x2cc))(this);
  if (((cVar3 == '\x01') || (*(short *)(this + 0x1ea) != 0)) || (*(short *)(this + 0x1e8) < 1)) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (bVar1) {
    this[0x181] = (M16)0x1;
    *(undefined4 *)(this + 0x158) = 0;
  }
  *(float *)(this + 0x158) = *(float *)(this + 0x158) + in_r1;
  (**(code **)(**(int **)(this + 0x1f0) + 0x90))(*(undefined4 *)(this + 0x1f0),this[0x180]);
  (**(code **)(*(int *)this + 0x254))(this,in_r1);
  if (this[0x181] != (M16)0x0) {
    fVar6 = *(float *)(this + 0x158);
    fVar5 = (float)(**(code **)(*(int *)this + 0x2b8))(this);
    if (fVar5 < fVar6) {
      bVar1 = true;
      goto LAB_0036640a;
    }
  }
  bVar1 = false;
LAB_0036640a:
  if (bVar1) {
    this[0x181] = (M16)0x0;
    *(undefined4 *)(this + 0x110) = 0;
    sVar4 = (**(code **)(*(int *)this + 0x2b4))(this);
    *(short *)(this + 0x1e8) = *(short *)(this + 0x1e8) - (sVar4 - *(short *)(this + 0x1ea));
    *(ushort *)(this + 0x1ea) =
         (*(ushort *)(this + 0x1e8) & (short)*(ushort *)(this + 0x1e8) >> 0x1f) +
         (sVar4 - *(short *)(this + 0x1ea)) + *(short *)(this + 0x1ea);
    *(ushort *)(this + 0x1e8) =
         *(ushort *)(this + 0x1e8) & ~((short)*(ushort *)(this + 0x1e8) >> 0x1f);
  }
  return;
}

// ---- M16::updateRemoteItemStep  @ 0x3664a8
/* M16::updateRemoteItemStep(float) */

void __thiscall M16::updateRemoteItemStep(M16 *this,float param_1)

{
  float in_r1;
  
  *(float *)(this + 0x1f8) = *(float *)(this + 0x1f8) + in_r1;
  if (this[0x200] != (M16)0x0) {
    if (*(float *)(this + 500) < *(float *)(this + 0x1f8)) {
      *(int *)(this + 0x1fc) = *(int *)(this + 0x1fc) + 1;
      this[0x180] = (M16)0x1;
      (**(code **)(*(int *)this + 0x294))(this);
      (**(code **)(*(int *)this + 0x308))(this);
      param_1 = (float)(**(code **)(*(int *)this + 0x30c))(this);
      *(undefined4 *)(this + 0x1f8) = 0;
      if (2 < *(int *)(this + 0x1fc)) {
        this[0x200] = (M16)0x0;
        *(undefined4 *)(this + 0x1fc) = 0;
        this[0x195] = (M16)((char)this[0x195] + '\x01');
      }
    }
  }
  (**(code **)(**(int **)(this + 0x1f0) + 0x90))(param_1,*(undefined4 *)(this + 0x1f0),this[0x180]);
  (**(code **)(*(int *)this + 0x254))(this,in_r1);
  if (this[0x194] != this[0x195]) {
    (**(code **)(*(int *)this + 0x260))(this,in_r1);
  }
  return;
}

// ---- M16::remoteTriggerPull  @ 0x3665b4
/* M16::remoteTriggerPull(float) */

void M16::remoteTriggerPull(float param_1)

{
  int in_r0;
  
  if (*(float *)(in_r0 + 0x15c) < *(float *)(in_r0 + 0x110)) {
    *(undefined1 *)(in_r0 + 0x200) = 1;
    *(undefined4 *)(in_r0 + 0x110) = 0;
  }
  return;
}

// ---- M16::getShellPoint  @ 0x3665e8
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003666a2 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* M16::getShellPoint() */

undefined4 M16::getShellPoint(void)

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
  FUN_00364f84(acStack_28,uVar1,aCStack_38);
  (**(code **)(*in_r1 + 0x184))(aCStack_20,in_r1);
  cocos2d::__CCPointApplyAffineTransform((cocos2d *)&local_30,acStack_28,aCStack_20);
  (**(code **)(*worldLayer + 0x188))(aCStack_20,worldLayer);
  cocos2d::__CCPointApplyAffineTransform(acStack_28,(CCPoint *)&local_30,aCStack_20);
  cocos2d::CCPoint::operator=((CCPoint *)&local_30,(CCPoint *)acStack_28);
  FUN_00364fa4(SUB84((double)local_30,0),fVar2,SUB84((double)local_2c,0),in_r0);
  return in_r0;
}

// ---- M16::playSound  @ 0x3666b4
/* M16::playSound() */

void __thiscall M16::playSound(M16 *this)

{
  undefined4 uVar1;
  undefined4 local_18;
  undefined4 uStack_14;
  undefined4 local_10;
  undefined4 uStack_c;
  
  uVar1 = sndEng;
  (**(code **)(*(int *)this + 800))(&local_18,this);
  Sound::playSoundPosition(uVar1,7,local_18,uStack_14,local_10,uStack_c);
  return;
}

// ---- M16::setPrimaryConfiguration  @ 0x3666fc
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x00366728 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* M16::setPrimaryConfiguration() */

void __thiscall M16::setPrimaryConfiguration(M16 *this)

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
    FUN_00364fcc(0,fVar4,0,*(undefined4 *)(this + 0xe8));
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
  this[0x195] = (M16)0x0;
  this[0x194] = (M16)0x0;
  *(undefined4 *)(this + 0x1c0) = 0;
  return;
}

// ---- M16::setSecondaryConfiguration  @ 0x366834
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x00366860 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* M16::setSecondaryConfiguration() */

void __thiscall M16::setSecondaryConfiguration(M16 *this)

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
    FUN_00364fcc(0,fVar4,0,*(undefined4 *)(this + 0xe8));
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
  (**(code **)(**(int **)(this + 0x1ec) + 0x98))(*(undefined4 *)(this + 0x1ec),0x42480000);
  (**(code **)(**(int **)(this + 0x1ec) + 0x40))(*(undefined4 *)(this + 0x1ec),0x3f800000);
  pcVar1 = *(code **)(*(int *)this + 0x4c);
  cocos2d::CCPoint::CCPoint(aCStack_18,fVar3,fVar4);
  (*pcVar1)(this,aCStack_18);
  (**(code **)(*(int *)this + 0x40))(this,0x3f800000);
  (**(code **)(*(int *)this + 0x98))(this,0);
  (**(code **)(**(int **)(this + 0x1f0) + 0x90))(*(undefined4 *)(this + 0x1f0),0);
  this[0x195] = (M16)0x0;
  this[0x194] = (M16)0x0;
  *(undefined4 *)(this + 0x1c0) = 0;
  return;
}

// ---- M16::setMapConfiguration  @ 0x36698c
/* M16::setMapConfiguration() */

void M16::setMapConfiguration(void)

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
  (**(code **)(*(int *)in_r0[0x7b] + 0x40))(in_r0[0x7b],0x3f800000);
  (**(code **)(*(int *)in_r0[0x7c] + 0x90))(in_r0[0x7c],0);
  *(undefined1 *)((int)in_r0 + 0x195) = 0;
  *(undefined1 *)(in_r0 + 0x65) = 0;
  in_r0[0x70] = 0;
  return;
}

// ---- M16::getWeaponTexture  @ 0x366aa0
/* M16::getWeaponTexture() */

undefined4 __thiscall M16::getWeaponTexture(M16 *this)

{
  undefined4 uVar1;
  
  uVar1 = (**(code **)(**(int **)(this + 0x1ec) + 500))(*(undefined4 *)(this + 0x1ec));
  return uVar1;
}

// ---- M16::getWeaponRect  @ 0x366ac8
/* M16::getWeaponRect() */

CCRect * M16::getWeaponRect(void)

{
  CCRect *in_r0;
  CCRect *pCVar1;
  int in_r1;
  
  pCVar1 = (CCRect *)cocos2d::CCSprite::getTextureRect(*(CCSprite **)(in_r1 + 0x1ec));
  cocos2d::CCRect::CCRect(in_r0,pCVar1);
  return in_r0;
}

// ---- M16::isRight  @ 0x366af0
/* M16::isRight() */

bool __thiscall M16::isRight(M16 *this)

{
  float fVar1;
  
  fVar1 = (float)(**(code **)(**(int **)(this + 0x1ec) + 0x34))(*(undefined4 *)(this + 0x1ec));
  return 1.0 < fVar1;
}

// ---- M16::setRight  @ 0x366b2c
/* M16::setRight(bool) */

void __thiscall M16::setRight(M16 *this,bool param_1)

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

// ---- M16::getRANGE  @ 0x366b6c
/* M16::getRANGE() */

undefined4 M16::getRANGE(void)

{
  return DAT_009433c8;
}

// ---- M16::getDAMAGE  @ 0x366b7c
/* M16::getDAMAGE() */

undefined4 M16::getDAMAGE(void)

{
  return DAT_009433c4;
}

// ---- M16::create  @ 0x426ecc
/* M16::create() */

M16 * M16::create(void)

{
  bool bVar1;
  M16 *this;
  int iVar2;
  
  this = operator_new(0x208);
  M16(this);
  if ((this == (M16 *)0x0) || (iVar2 = (**(code **)(*(int *)this + 0x18))(this), iVar2 == 0)) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (bVar1) {
    cocos2d::CCObject::autorelease((CCObject *)this);
  }
  else {
    if (this != (M16 *)0x0) {
      (**(code **)(*(int *)this + 8))(this);
    }
    this = (M16 *)0x0;
  }
  return this;
}
