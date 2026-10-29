// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 39 functions

// ---- SoldierRemoteController::create  @ 0x3fb854
/* SoldierRemoteController::create() */

SoldierRemoteController * SoldierRemoteController::create(void)

{
  bool bVar1;
  SoldierRemoteController *this;
  int iVar2;
  
  this = operator_new(0x1c0);
  SoldierRemoteController(this);
  if ((this == (SoldierRemoteController *)0x0) ||
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
    if (this != (SoldierRemoteController *)0x0) {
      (**(code **)(*(int *)this + 8))(this);
    }
    this = (SoldierRemoteController *)0x0;
  }
  return this;
}

// ---- SoldierRemoteController::SoldierRemoteController  @ 0x3ff120
/* SoldierRemoteController::SoldierRemoteController() */

SoldierRemoteController * __thiscall
SoldierRemoteController::SoldierRemoteController(SoldierRemoteController *this)

{
  SoldierController::SoldierController((SoldierController *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_0091b930;
  *(undefined **)(this + 0xf8) = &DAT_0091bbf8;
  return this;
}

// ---- SoldierRemoteController::init  @ 0x3ff160
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003ff19e */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* SoldierRemoteController::init() */

bool SoldierRemoteController::init(void)

{
  SoldierController *pSVar1;
  SoldierController *in_r0;
  CCPoint *this;
  bool bVar2;
  float fVar3;
  undefined4 in_s1;
  float extraout_s1;
  undefined4 local_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  SoldierController *local_1c;
  char local_11;
  CCPoint aCStack_10 [8];
  
  local_1c = in_r0;
  local_11 = SoldierController::init(in_r0);
  pSVar1 = local_1c;
  bVar2 = local_11 == '\x01';
  if (bVar2) {
    *(undefined4 *)(local_1c + 0x120) = 0x3f000000;
    fVar3 = (float)FUN_003fe264(0,in_s1,0,&local_30);
    *(undefined4 *)(pSVar1 + 0x128) = local_30;
    *(undefined4 *)(pSVar1 + 300) = uStack_2c;
    *(undefined4 *)(pSVar1 + 0x130) = uStack_28;
    *(undefined4 *)(pSVar1 + 0x134) = uStack_24;
    *(undefined4 *)(local_1c + 0x110) = 0;
    *(undefined4 *)(local_1c + 0x1b0) = 0;
    this = (CCPoint *)(local_1c + 0x114);
    cocos2d::CCPoint::CCPoint(aCStack_10,fVar3,extraout_s1);
    cocos2d::CCPoint::operator=(this,aCStack_10);
    *(undefined4 *)(local_1c + 0x10c) = 0;
    *(undefined4 *)(local_1c + 0x108) = 0;
    *(undefined4 *)(local_1c + 0x148) = 0;
    *(undefined4 *)(local_1c + 0x14c) = 0;
    *(undefined4 *)(local_1c + 0x150) = 0;
    *(undefined4 *)(local_1c + 0x184) = 0;
    *(undefined4 *)(local_1c + 0x188) = 0;
    *(undefined4 *)(local_1c + 0x18c) = 0;
    *(undefined4 *)(local_1c + 400) = 0;
    *(undefined4 *)(local_1c + 0x194) = 0;
    *(undefined4 *)(local_1c + 0x198) = 0;
    *(undefined4 *)(local_1c + 0x19c) = 0;
    *(undefined4 *)(local_1c + 0x1a0) = 0;
    *(undefined4 *)(local_1c + 0x1a4) = 0;
    *(undefined4 *)(local_1c + 0x1a8) = 0;
    *(SoldierRemoteController *)(local_1c + 0x1b4) = (SoldierRemoteController)0x1;
    *(undefined4 *)(local_1c + 0x1ac) = 0;
    initBody((SoldierRemoteController *)local_1c);
    initShape();
    SoldierController::reset(local_1c);
  }
  return bVar2;
}

// ---- SoldierRemoteController::~SoldierRemoteController  @ 0x3ff290
/* WARNING: Removing unreachable block (ram,0x003ff2c0) */
/* SoldierRemoteController::~SoldierRemoteController() */

SoldierRemoteController * __thiscall
SoldierRemoteController::~SoldierRemoteController(SoldierRemoteController *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_0091b930;
  *(undefined **)(this + 0xf8) = &DAT_0091bbf8;
  SoldierController::~SoldierController((SoldierController *)this);
  return this;
}

// ---- SoldierRemoteController::~SoldierRemoteController  @ 0x3ff2d8
/* SoldierRemoteController::~SoldierRemoteController() */

SoldierRemoteController * __thiscall
SoldierRemoteController::~SoldierRemoteController(SoldierRemoteController *this)

{
  ~SoldierRemoteController(this);
  operator_delete(this);
  return this;
}

// ---- SoldierRemoteController::initBody  @ 0x3ff2f8
/* SoldierRemoteController::initBody() */

void __thiscall SoldierRemoteController::initBody(SoldierRemoteController *this)

{
  undefined4 uVar1;
  
  uVar1 = cpBodyNew(0,0x3ff00000,0,0x40f86a00);
  *(undefined4 *)(this + 0x138) = uVar1;
  **(undefined4 **)(this + 0x138) = &LAB_003ff10c_1;
  return;
}

// ---- SoldierRemoteController::initShape  @ 0x3ff340
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003ff3b2 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* SoldierRemoteController::initShape() */

void SoldierRemoteController::initShape(void)

{
  float fVar1;
  int in_r0;
  undefined4 uVar2;
  int iVar3;
  undefined4 in_s1;
  float fVar4;
  float fVar5;
  float fVar6;
  double dVar7;
  undefined1 local_78 [4];
  undefined4 uStack_74;
  undefined1 auStack_68 [16];
  undefined1 auStack_58 [16];
  undefined1 auStack_48 [16];
  undefined1 auStack_38 [16];
  undefined1 auStack_28 [16];
  
  fVar1 = playerScale;
  fVar4 = playerScale * 35.0;
  fVar5 = playerScale * 25.0;
  fVar6 = playerScale * 30.0;
  FUN_003fe264(SUB84((double)-fVar6,0),in_s1,SUB84((double)(-fVar5 - 5.0),0),auStack_68);
  FUN_003fe264(SUB84((double)-fVar6,0),in_s1,SUB84((double)(fVar5 - 5.0),0),auStack_58);
  FUN_003fe264(0,in_s1,SUB84((double)(fVar1 * 20.0 + fVar5),0),auStack_48);
  FUN_003fe264(SUB84((double)fVar6,0),in_s1,SUB84((double)(fVar5 - 5.0),0),auStack_38);
  FUN_003fe264(SUB84((double)fVar6,0),in_s1,SUB84((double)(-fVar5 - 5.0),0),auStack_28);
  uVar2 = cpPolyShapeNew(*(undefined4 *)(in_r0 + 0x138),5,auStack_68);
  *(undefined4 *)(in_r0 + 0x13c) = uVar2;
  *(undefined4 *)(*(int *)(in_r0 + 0x13c) + 0x54) = 0x84;
  *(undefined4 *)(*(int *)(in_r0 + 0x13c) + 0x5c) = 0x84;
  *(undefined4 *)(*(int *)(in_r0 + 0x13c) + 0x58) = 0x84;
  iVar3 = *(int *)(in_r0 + 0x13c);
  *(undefined4 *)(iVar3 + 0x30) = 0xa0000000;
  *(undefined4 *)(iVar3 + 0x34) = 0x3fe99999;
  iVar3 = *(int *)(in_r0 + 0x13c);
  *(undefined4 *)(iVar3 + 0x38) = 0xa0000000;
  *(undefined4 *)(iVar3 + 0x3c) = 0x3fb99999;
  *(int *)(*(int *)(in_r0 + 0x13c) + 0x50) = in_r0;
  uVar2 = *(undefined4 *)(in_r0 + 0x138);
  dVar7 = (double)fVar4 * 0.75;
  FUN_003fe264(0,in_s1,SUB84((double)(fVar1 * 35.0),0),local_78);
  uVar2 = cpCircleShapeNew(uVar2,uStack_74,SUB84(dVar7,0),(int)((ulonglong)dVar7 >> 0x20));
  *(undefined4 *)(in_r0 + 0x140) = uVar2;
  *(undefined4 *)(*(int *)(in_r0 + 0x140) + 0x54) = 0x84;
  *(undefined4 *)(*(int *)(in_r0 + 0x140) + 0x5c) = 0x84;
  *(undefined4 *)(*(int *)(in_r0 + 0x140) + 0x58) = 0x84;
  iVar3 = *(int *)(in_r0 + 0x140);
  *(undefined4 *)(iVar3 + 0x30) = 0;
  *(undefined4 *)(iVar3 + 0x34) = 0x3fe00000;
  iVar3 = *(int *)(in_r0 + 0x140);
  *(undefined4 *)(iVar3 + 0x38) = 0xa0000000;
  *(undefined4 *)(iVar3 + 0x3c) = 0x3fb99999;
  *(int *)(*(int *)(in_r0 + 0x140) + 0x50) = in_r0;
  return;
}

// ---- SoldierRemoteController::getDualFireAngle  @ 0x3ffc88
/* SoldierRemoteController::getDualFireAngle() */

undefined4 __thiscall SoldierRemoteController::getDualFireAngle(SoldierRemoteController *this)

{
  undefined4 uVar1;
  
  uVar1 = SoldierView::getDualFiringAngle(*(SoldierView **)(this + 0xfc));
  return uVar1;
}

// ---- SoldierRemoteController::getFireAngle  @ 0x3ffca4
/* SoldierRemoteController::getFireAngle() */

undefined4 __thiscall SoldierRemoteController::getFireAngle(SoldierRemoteController *this)

{
  undefined4 uVar1;
  
  uVar1 = SoldierView::getFiringAngle(*(SoldierView **)(this + 0xfc));
  return uVar1;
}

// ---- SoldierRemoteController::setFireAngle  @ 0x3ffcc0
/* SoldierRemoteController::setFireAngle(float) */

void __thiscall SoldierRemoteController::setFireAngle(SoldierRemoteController *this,float param_1)

{
  undefined4 in_r1;
  
  *(undefined4 *)(this + 0x110) = in_r1;
  return;
}

// ---- SoldierRemoteController::setThrustFactor  @ 0x3ffcd4
/* SoldierRemoteController::setThrustFactor(double) */

undefined4 SoldierRemoteController::setThrustFactor(double param_1)

{
  int in_r0;
  undefined4 in_r2;
  undefined4 in_r3;
  
  *(float *)(in_r0 + 0x10c) = (float)(double)CONCAT44(in_r3,in_r2);
  return SUB84(param_1,0);
}

// ---- SoldierRemoteController::setSoldierView  @ 0x3ffcf0
/* SoldierRemoteController::setSoldierView(SoldierView*) */

void __thiscall
SoldierRemoteController::setSoldierView(SoldierRemoteController *this,SoldierView *param_1)

{
  *(SoldierView **)(this + 0xfc) = param_1;
  return;
}

// ---- SoldierRemoteController::getSoldierView  @ 0x3ffd04
/* SoldierRemoteController::getSoldierView() */

undefined4 __thiscall SoldierRemoteController::getSoldierView(SoldierRemoteController *this)

{
  return *(undefined4 *)(this + 0xfc);
}

// ---- SoldierRemoteController::setJoyOffset  @ 0x3ffd14
/* SoldierRemoteController::setJoyOffset(cpVect) */

void SoldierRemoteController::setJoyOffset(float param_1,float param_2,int param_3)

{
  CCPoint aCStack_18 [8];
  
  cocos2d::CCPoint::CCPoint(aCStack_18,param_1,param_2);
  cocos2d::CCPoint::operator=((CCPoint *)(param_3 + 0x114),aCStack_18);
  return;
}

// ---- SoldierRemoteController::addPrimaryWeapon  @ 0x3ffd5c
/* SoldierRemoteController::addPrimaryWeapon(Weapon*) */

void __thiscall
SoldierRemoteController::addPrimaryWeapon(SoldierRemoteController *this,Weapon *param_1)

{
  double dVar1;
  undefined4 uVar2;
  int iVar3;
  SoldierView *this_00;
  code *pcVar4;
  float fVar5;
  undefined1 auStack_14 [4];
  
  if (param_1 != (Weapon *)0x0) {
    *(Weapon **)(this + 0x148) = param_1;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x148));
    pcVar4 = *(code **)(**(int **)(this + 0x148) + 0x1f0);
    uVar2 = *(undefined4 *)(this + 0x148);
    (**(code **)(*(int *)this + 0x1c0))(auStack_14,this);
    (*pcVar4)(uVar2,auStack_14);
    FUN_007c5914(auStack_14);
    (**(code **)(**(int **)(this + 0x148) + 0x23c))(*(undefined4 *)(this + 0x148),this + 0xf8);
    (**(code **)(**(int **)(this + 0x148) + 0x1d4))(*(undefined4 *)(this + 0x148));
    (**(code **)(**(int **)(*(int *)(this + 0xfc) + 0x110) + 0xcc))
              (*(undefined4 *)(*(int *)(this + 0xfc) + 0x110),*(undefined4 *)(this + 0x148),0);
    iVar3 = *(int *)(this + 0x138);
    dVar1 = (double)Sound::playSoundPosition
                              (sndEng,4,*(undefined4 *)(iVar3 + 0x28),*(undefined4 *)(iVar3 + 0x2c),
                               *(undefined4 *)(iVar3 + 0x30),*(undefined4 *)(iVar3 + 0x34));
    SoldierView::setPrimaryRecoilRotation(dVar1);
    this_00 = *(SoldierView **)(this + 0xfc);
    fVar5 = (float)(**(code **)(*(int *)param_1 + 0x2e4))(param_1);
    SoldierView::setWeaponAngleOffset(this_00,fVar5);
  }
  return;
}

// ---- SoldierRemoteController::addSecondaryWeapon  @ 0x3ffe90
/* SoldierRemoteController::addSecondaryWeapon(Weapon*) */

void __thiscall
SoldierRemoteController::addSecondaryWeapon(SoldierRemoteController *this,Weapon *param_1)

{
  undefined4 uVar1;
  code *pcVar2;
  undefined1 auStack_14 [8];
  
  if (param_1 != (Weapon *)0x0) {
    *(Weapon **)(this + 0x14c) = param_1;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x14c));
    pcVar2 = *(code **)(**(int **)(this + 0x14c) + 0x1f0);
    uVar1 = *(undefined4 *)(this + 0x14c);
    (**(code **)(*(int *)this + 0x1c0))(auStack_14,this);
    (*pcVar2)(uVar1,auStack_14);
    FUN_007c5914(auStack_14);
    (**(code **)(**(int **)(this + 0x14c) + 0x23c))(*(undefined4 *)(this + 0x14c),this + 0xf8);
    (**(code **)(**(int **)(this + 0x14c) + 0x1d8))(*(undefined4 *)(this + 0x14c));
    (**(code **)(**(int **)(*(int *)(this + 0xfc) + 0x11c) + 0xcc))
              (*(undefined4 *)(*(int *)(this + 0xfc) + 0x11c),*(undefined4 *)(this + 0x14c),0);
  }
  return;
}

// ---- SoldierRemoteController::addDualWeapon  @ 0x3fff5c
/* SoldierRemoteController::addDualWeapon(Weapon*) */

void __thiscall
SoldierRemoteController::addDualWeapon(SoldierRemoteController *this,Weapon *param_1)

{
  undefined4 uVar1;
  int iVar2;
  code *pcVar3;
  undefined4 extraout_s1;
  undefined1 auStack_14 [4];
  
  if (param_1 != (Weapon *)0x0) {
    *(Weapon **)(this + 0x150) = param_1;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x150));
    pcVar3 = *(code **)(**(int **)(this + 0x150) + 0x1f0);
    uVar1 = *(undefined4 *)(this + 0x150);
    (**(code **)(*(int *)this + 0x1c0))(auStack_14,this);
    (*pcVar3)(uVar1,auStack_14);
    FUN_007c5914(auStack_14);
    (**(code **)(**(int **)(this + 0x150) + 0x23c))(*(undefined4 *)(this + 0x150),this + 0xf8);
    (**(code **)(**(int **)(this + 0x150) + 0x1dc))(*(undefined4 *)(this + 0x150));
    if (*(char *)(*(int *)(this + 0x150) + 0x185) == '\0') {
      (**(code **)(**(int **)(*(int *)(this + 0xfc) + 0x114) + 0xcc))
                (*(undefined4 *)(*(int *)(this + 0xfc) + 0x114),*(undefined4 *)(this + 0x150),1);
    }
    else {
      (**(code **)(**(int **)(*(int *)(this + 0xfc) + 0x118) + 0xcc))
                (*(undefined4 *)(*(int *)(this + 0xfc) + 0x118),*(undefined4 *)(this + 0x150),1);
    }
    iVar2 = *(int *)(this + 0x138);
    uVar1 = Sound::playSoundPosition
                      (sndEng,4,*(undefined4 *)(iVar2 + 0x28),*(undefined4 *)(iVar2 + 0x2c),
                       *(undefined4 *)(iVar2 + 0x30),*(undefined4 *)(iVar2 + 0x34));
    SoldierView::setDualRecoilRotation((double)CONCAT44(extraout_s1,uVar1));
  }
  return;
}

// ---- SoldierRemoteController::addSideWeapon  @ 0x4000ac
/* SoldierRemoteController::addSideWeapon(Weapon*) */

void __thiscall
SoldierRemoteController::addSideWeapon(SoldierRemoteController *this,Weapon *param_1)

{
  if (param_1 != (Weapon *)0x0) {
    *(Weapon **)(this + 0x154) = param_1;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x154));
    (**(code **)(**(int **)(this + 0x154) + 0x1d4))(*(undefined4 *)(this + 0x154));
    (**(code **)(**(int **)(*(int *)(this + 0xfc) + 0x11c) + 0xcc))
              (*(undefined4 *)(*(int *)(this + 0xfc) + 0x11c),*(undefined4 *)(this + 0x154),3);
  }
  return;
}

// ---- SoldierRemoteController::removePrimaryWeapon  @ 0x400114
/* SoldierRemoteController::removePrimaryWeapon() */

void __thiscall SoldierRemoteController::removePrimaryWeapon(SoldierRemoteController *this)

{
  undefined4 uVar1;
  code *pcVar2;
  undefined1 auStack_18 [4];
  undefined1 auStack_14 [8];
  
  if (*(int *)(this + 0x148) != 0) {
    (**(code **)(**(int **)(this + 0x148) + 0x250))(*(undefined4 *)(this + 0x148));
    pcVar2 = *(code **)(**(int **)(this + 0x148) + 0x1f0);
    uVar1 = *(undefined4 *)(this + 0x148);
    FUN_0079a3f4(auStack_18);
    FUN_007c6a60(auStack_14,&DAT_007e89d0,auStack_18);
    (*pcVar2)(uVar1,auStack_14);
    FUN_007c5914(auStack_14);
    FUN_0079a3fc(auStack_18);
    (**(code **)(**(int **)(this + 0x148) + 0x23c))(*(undefined4 *)(this + 0x148),0);
    (**(code **)(**(int **)(*(int *)(this + 0xfc) + 0x110) + 0xf4))
              (*(undefined4 *)(*(int *)(this + 0xfc) + 0x110),*(undefined4 *)(this + 0x148),0);
    cocos2d::CCObject::release(*(CCObject **)(this + 0x148));
    *(undefined4 *)(this + 0x148) = 0;
  }
  return;
}

// ---- SoldierRemoteController::removeSecondaryWeapon  @ 0x4001fc
/* SoldierRemoteController::removeSecondaryWeapon() */

void __thiscall SoldierRemoteController::removeSecondaryWeapon(SoldierRemoteController *this)

{
  undefined4 uVar1;
  code *pcVar2;
  undefined1 auStack_18 [4];
  undefined1 auStack_14 [8];
  
  if (*(int *)(this + 0x14c) != 0) {
    pcVar2 = *(code **)(**(int **)(this + 0x14c) + 0x1f0);
    uVar1 = *(undefined4 *)(this + 0x14c);
    FUN_0079a3f4(auStack_18);
    FUN_007c6a60(auStack_14,&DAT_007e89d0,auStack_18);
    (*pcVar2)(uVar1,auStack_14);
    FUN_007c5914(auStack_14);
    FUN_0079a3fc(auStack_18);
    (**(code **)(**(int **)(this + 0x14c) + 0x23c))(*(undefined4 *)(this + 0x14c),0);
    (**(code **)(**(int **)(*(int *)(this + 0xfc) + 0x11c) + 0xf4))
              (*(undefined4 *)(*(int *)(this + 0xfc) + 0x11c),*(undefined4 *)(this + 0x14c),0);
    cocos2d::CCObject::release(*(CCObject **)(this + 0x14c));
    *(undefined4 *)(this + 0x14c) = 0;
  }
  return;
}

// ---- SoldierRemoteController::removeDualWeapon  @ 0x4002cc
/* SoldierRemoteController::removeDualWeapon() */

void __thiscall SoldierRemoteController::removeDualWeapon(SoldierRemoteController *this)

{
  undefined4 uVar1;
  code *pcVar2;
  undefined1 auStack_18 [4];
  undefined1 auStack_14 [8];
  
  if (*(int *)(this + 0x150) != 0) {
    (**(code **)(**(int **)(this + 0x150) + 0x250))(*(undefined4 *)(this + 0x150));
    pcVar2 = *(code **)(**(int **)(this + 0x150) + 0x1f0);
    uVar1 = *(undefined4 *)(this + 0x150);
    FUN_0079a3f4(auStack_18);
    FUN_007c6a60(auStack_14,&DAT_007e89d0,auStack_18);
    (*pcVar2)(uVar1,auStack_14);
    FUN_007c5914(auStack_14);
    FUN_0079a3fc(auStack_18);
    (**(code **)(**(int **)(this + 0x150) + 0x23c))(*(undefined4 *)(this + 0x150),0);
    if (*(char *)(*(int *)(this + 0x150) + 0x185) == '\0') {
      (**(code **)(**(int **)(*(int *)(this + 0xfc) + 0x114) + 0xf4))
                (*(undefined4 *)(*(int *)(this + 0xfc) + 0x114),*(undefined4 *)(this + 0x150),0);
    }
    else {
      (**(code **)(**(int **)(*(int *)(this + 0xfc) + 0x118) + 0xf4))
                (*(undefined4 *)(*(int *)(this + 0xfc) + 0x118),*(undefined4 *)(this + 0x150),0);
    }
    cocos2d::CCObject::release(*(CCObject **)(this + 0x150));
    *(undefined4 *)(this + 0x150) = 0;
  }
  return;
}

// ---- SoldierRemoteController::removeSideWeapon  @ 0x4003ec
/* SoldierRemoteController::removeSideWeapon() */

void __thiscall SoldierRemoteController::removeSideWeapon(SoldierRemoteController *this)

{
  undefined4 uVar1;
  code *pcVar2;
  undefined1 auStack_18 [4];
  undefined1 auStack_14 [8];
  
  if (*(int *)(this + 0x154) != 0) {
    pcVar2 = *(code **)(**(int **)(this + 0x154) + 0x1f0);
    uVar1 = *(undefined4 *)(this + 0x154);
    FUN_0079a3f4(auStack_18);
    FUN_007c6a60(auStack_14,&DAT_007e89d0,auStack_18);
    (*pcVar2)(uVar1,auStack_14);
    FUN_007c5914(auStack_14);
    FUN_0079a3fc(auStack_18);
    (**(code **)(**(int **)(*(int *)(this + 0xfc) + 0x11c) + 0xf4))
              (*(undefined4 *)(*(int *)(this + 0xfc) + 0x11c),*(undefined4 *)(this + 0x154),0);
    cocos2d::CCObject::release(*(CCObject **)(this + 0x154));
    *(undefined4 *)(this + 0x154) = 0;
  }
  return;
}

// ---- SoldierRemoteController::getPrimaryWeapon  @ 0x4004a0
/* SoldierRemoteController::getPrimaryWeapon() */

undefined4 __thiscall SoldierRemoteController::getPrimaryWeapon(SoldierRemoteController *this)

{
  return *(undefined4 *)(this + 0x148);
}

// ---- SoldierRemoteController::getSecondaryWeapon  @ 0x4004b0
/* SoldierRemoteController::getSecondaryWeapon() */

undefined4 __thiscall SoldierRemoteController::getSecondaryWeapon(SoldierRemoteController *this)

{
  return *(undefined4 *)(this + 0x14c);
}

// ---- SoldierRemoteController::getDualWeapon  @ 0x4004c0
/* SoldierRemoteController::getDualWeapon() */

undefined4 __thiscall SoldierRemoteController::getDualWeapon(SoldierRemoteController *this)

{
  return *(undefined4 *)(this + 0x150);
}

// ---- SoldierRemoteController::setRemoteFiringAngle  @ 0x4004d0
/* SoldierRemoteController::setRemoteFiringAngle(float) */

void __thiscall
SoldierRemoteController::setRemoteFiringAngle(SoldierRemoteController *this,float param_1)

{
  undefined4 in_r1;
  
  *(undefined4 *)(this + 0x1a8) = in_r1;
  return;
}

// ---- SoldierRemoteController::setRemoteRotation  @ 0x4004e4
/* SoldierRemoteController::setRemoteRotation(float) */

void __thiscall
SoldierRemoteController::setRemoteRotation(SoldierRemoteController *this,float param_1)

{
  undefined4 in_r1;
  
  *(undefined4 *)(this + 0x184) = in_r1;
  return;
}

// ---- SoldierRemoteController::setRemoteVelocity  @ 0x4004f8
/* SoldierRemoteController::setRemoteVelocity(cpVect) */

void SoldierRemoteController::setRemoteVelocity
               (int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
               undefined4 param_5,undefined4 param_6)

{
  *(undefined4 *)(param_1 + 0x188) = param_3;
  *(undefined4 *)(param_1 + 0x18c) = param_4;
  *(undefined4 *)(param_1 + 400) = param_5;
  *(undefined4 *)(param_1 + 0x194) = param_6;
  return;
}

// ---- SoldierRemoteController::setRemotePosition  @ 0x400520
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x00400572 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* SoldierRemoteController::setRemotePosition(cpVect) */

void SoldierRemoteController::setRemotePosition
               (undefined4 param_1,undefined4 param_2,int param_3,undefined4 param_4,
               undefined4 param_5,undefined4 param_6,undefined4 param_7,undefined4 param_8)

{
  undefined4 uVar1;
  code *pcVar2;
  float fVar3;
  float extraout_s1;
  CCPoint aCStack_20 [12];
  
  *(undefined4 *)(param_3 + 0x1b8) = 0;
  *(undefined4 *)(param_3 + 0x198) = param_5;
  *(undefined4 *)(param_3 + 0x19c) = param_6;
  *(undefined4 *)(param_3 + 0x1a0) = param_7;
  *(undefined4 *)(param_3 + 0x1a4) = param_8;
  if (*(char *)(param_3 + 0x1b4) != '\0') {
    *(undefined1 *)(param_3 + 0x1b4) = 0;
    fVar3 = (float)FUN_003fe388((int)*(undefined8 *)(param_3 + 0x198),param_2,
                                (int)*(undefined8 *)(param_3 + 0x1a0),
                                *(undefined4 *)(param_3 + 0x138));
    pcVar2 = *(code **)(**(int **)(param_3 + 0xfc) + 0x4c);
    uVar1 = *(undefined4 *)(param_3 + 0xfc);
    cocos2d::CCPoint::CCPoint(aCStack_20,fVar3,extraout_s1);
    (*pcVar2)(uVar1,aCStack_20);
  }
  return;
}

// ---- SoldierRemoteController::getBodyVelocity  @ 0x4005c0
/* SoldierRemoteController::getBodyVelocity() */

undefined4 * SoldierRemoteController::getBodyVelocity(void)

{
  undefined4 *in_r0;
  int in_r1;
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  
  uVar1 = *(undefined4 *)(in_r1 + 0x18c);
  uVar2 = *(undefined4 *)(in_r1 + 400);
  uVar3 = *(undefined4 *)(in_r1 + 0x194);
  *in_r0 = *(undefined4 *)(in_r1 + 0x188);
  in_r0[1] = uVar1;
  in_r0[2] = uVar2;
  in_r0[3] = uVar3;
  return in_r0;
}

// ---- SoldierRemoteController::getBodyPosition  @ 0x4005e4
/* SoldierRemoteController::getBodyPosition() */

undefined4 * SoldierRemoteController::getBodyPosition(void)

{
  undefined4 *in_r0;
  int in_r1;
  undefined4 uVar1;
  undefined4 uVar2;
  int iVar3;
  undefined4 uVar4;
  
  iVar3 = *(int *)(in_r1 + 0x138);
  uVar1 = *(undefined4 *)(iVar3 + 0x2c);
  uVar2 = *(undefined4 *)(iVar3 + 0x30);
  uVar4 = *(undefined4 *)(iVar3 + 0x34);
  *in_r0 = *(undefined4 *)(iVar3 + 0x28);
  in_r0[1] = uVar1;
  in_r0[2] = uVar2;
  in_r0[3] = uVar4;
  return in_r0;
}

// ---- SoldierRemoteController::killPlayer  @ 0x400608
/* SoldierRemoteController::killPlayer() */

void __thiscall SoldierRemoteController::killPlayer(SoldierRemoteController *this)

{
  (**(code **)(*(int *)this + 0x290))(this);
  return;
}

// ---- SoldierRemoteController::meleeAttack  @ 0x400624
/* SoldierRemoteController::meleeAttack() */

void __thiscall SoldierRemoteController::meleeAttack(SoldierRemoteController *this)

{
  double dVar1;
  int iVar2;
  float fVar3;
  
  iVar2 = *(int *)(this + 0x138);
  dVar1 = (double)Sound::playSoundPosition
                            (sndEng,2,*(undefined4 *)(iVar2 + 0x28),*(undefined4 *)(iVar2 + 0x2c),
                             *(undefined4 *)(iVar2 + 0x30),*(undefined4 *)(iVar2 + 0x34));
  fVar3 = (float)SoldierView::setPrimaryMoveRotation(dVar1);
  SoldierView::setFiringAngleOffset(*(SoldierView **)(this + 0xfc),fVar3);
  this[0x166] = (SoldierRemoteController)0x1;
  *(undefined4 *)(this + 0x1b0) = *(undefined4 *)(this + 0x110);
  return;
}

// ---- SoldierRemoteController::endMeleeAttack  @ 0x4006a0
/* SoldierRemoteController::endMeleeAttack(std::string) */

void SoldierRemoteController::endMeleeAttack(int param_1)

{
  *(undefined4 *)(param_1 + 0x178) = 0;
  *(undefined1 *)(param_1 + 0x166) = 0;
  return;
}

// ---- SoldierRemoteController::throwDual  @ 0x4006bc
/* SoldierRemoteController::throwDual() */

void __thiscall SoldierRemoteController::throwDual(SoldierRemoteController *this)

{
  CCNotificationCenter *this_00;
  undefined4 uVar1;
  CCObject *pCVar2;
  int iVar3;
  undefined4 extraout_s1;
  undefined1 auStack_1c [4];
  undefined1 auStack_18 [4];
  string asStack_14 [4];
  
  this_00 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  (**(code **)(*(int *)this + 0x1c0))(auStack_18,this);
  uVar1 = FUN_007c5300(auStack_18);
  FUN_0079a3f4(auStack_1c);
  FUN_007c6a60(asStack_14,uVar1,auStack_1c);
  pCVar2 = (CCObject *)cocos2d::CCString::create(asStack_14);
  cocos2d::CCNotificationCenter::postNotification(this_00,"RadarAlert",pCVar2);
  FUN_007c5914(asStack_14);
  FUN_0079a3fc(auStack_1c);
  FUN_007c5914(auStack_18);
  iVar3 = *(int *)(this + 0x138);
  uVar1 = Sound::playSoundPosition
                    (sndEng,3,*(undefined4 *)(iVar3 + 0x28),*(undefined4 *)(iVar3 + 0x2c),
                     *(undefined4 *)(iVar3 + 0x30),*(undefined4 *)(iVar3 + 0x34));
  SoldierView::setDualMoveRotation((double)CONCAT44(extraout_s1,uVar1));
  return;
}

// ---- SoldierRemoteController::setIsDead  @ 0x40079c
/* SoldierRemoteController::setIsDead(bool) */

void __thiscall SoldierRemoteController::setIsDead(SoldierRemoteController *this,bool param_1)

{
  CCNotificationCenter *this_00;
  
  if ((param_1) && (this[0x159] != (SoldierRemoteController)0x1)) {
    (**(code **)(*(int *)this + 0x2b4))(this);
    this_00 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    cocos2d::CCNotificationCenter::postNotification(this_00,"PeerPlayerDead",(CCObject *)this);
  }
  else if ((!param_1) && (this[0x159] != (SoldierRemoteController)0x0)) {
    this[0x1b4] = (SoldierRemoteController)0x1;
  }
  this[0x159] = (SoldierRemoteController)param_1;
  return;
}

// ---- SoldierRemoteController::weaponDidFire  @ 0x40081c
/* SoldierRemoteController::weaponDidFire(Item*) */

void __thiscall SoldierRemoteController::weaponDidFire(SoldierRemoteController *this,Item *param_1)

{
  bool bVar1;
  int iVar2;
  Item *pIVar3;
  CCNotificationCenter *this_00;
  CCObject *pCVar4;
  SoldierView *this_01;
  code *pcVar5;
  int iVar6;
  undefined4 uVar7;
  undefined4 extraout_s1;
  undefined4 extraout_s1_00;
  undefined1 auStack_2c [4];
  undefined1 auStack_28 [4];
  string asStack_24 [4];
  undefined4 local_20;
  Item *local_1c;
  
  if (param_1 != (Item *)0x0) {
    local_20 = 0;
    local_1c = param_1;
    iVar2 = (**(code **)(*(int *)this + 0x1fc))(this);
    if ((iVar2 == 0) ||
       (pIVar3 = (Item *)(**(code **)(*(int *)this + 0x1fc))(this), pIVar3 != local_1c)) {
      bVar1 = false;
    }
    else {
      bVar1 = true;
    }
    if (bVar1) {
      uVar7 = (**(code **)(*(int *)this + 0x1d8))(this);
      SoldierView::setDualRecoilRotation((double)CONCAT44(extraout_s1,uVar7));
      local_20 = (**(code **)(*(int *)this + 0x284))(this);
    }
    else {
      uVar7 = (**(code **)(*(int *)this + 0x1d8))(this);
      SoldierView::setPrimaryRecoilRotation((double)CONCAT44(extraout_s1_00,uVar7));
      local_20 = (**(code **)(*(int *)this + 0x23c))(this);
    }
    pcVar5 = *(code **)(*(int *)local_1c + 0x314);
    iVar2 = *(int *)(this + 0x138);
    iVar6 = *(int *)(this + 0x138);
    (**(code **)(*(int *)this + 0x1c0))(asStack_24,this);
    (*pcVar5)(local_1c,local_20,*(undefined4 *)(iVar2 + 0x28),*(undefined4 *)(iVar2 + 0x2c),
              *(undefined4 *)(iVar2 + 0x30),*(undefined4 *)(iVar2 + 0x34),
              *(undefined4 *)(iVar6 + 0x38),*(undefined4 *)(iVar6 + 0x3c),
              *(undefined4 *)(iVar6 + 0x40),*(undefined4 *)(iVar6 + 0x44),0x20,asStack_24);
    FUN_007c5914(asStack_24);
    this_00 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    (**(code **)(*(int *)this + 0x1c0))(auStack_28,this);
    uVar7 = FUN_007c5300(auStack_28);
    FUN_0079a3f4(auStack_2c);
    FUN_007c6a60(asStack_24,uVar7,auStack_2c);
    pCVar4 = (CCObject *)cocos2d::CCString::create(asStack_24);
    cocos2d::CCNotificationCenter::postNotification(this_00,"RadarAlert",pCVar4);
    FUN_007c5914(asStack_24);
    FUN_0079a3fc(auStack_2c);
    FUN_007c5914(auStack_28);
    this_01 = (SoldierView *)(**(code **)(*(int *)this + 0x1d8))(this);
    SoldierView::showLabel(this_01);
  }
  return;
}

// ---- SoldierRemoteController::weaponDidFire  @ 0x4009ec
/* non-virtual thunk to SoldierRemoteController::weaponDidFire(Item*) */

void __thiscall SoldierRemoteController::weaponDidFire(SoldierRemoteController *this,Item *param_1)

{
  weaponDidFire(this + -0xf8,param_1);
  return;
}

// ---- SoldierRemoteController::setTeamId  @ 0x4009f4
/* SoldierRemoteController::setTeamId(int) */

void __thiscall SoldierRemoteController::setTeamId(SoldierRemoteController *this,int param_1)

{
  undefined3 uVar1;
  SoldierView *pSVar2;
  
  CollisionObject::setTeamId((CollisionObject *)this,param_1);
  if ((playerTeam == 0) && (param_1 == 0)) {
    pSVar2 = *(SoldierView **)(this + 0xfc);
    uVar1 = FUN_003fe208(0xff,0xff,0xff);
    SoldierView::setPlayerLabelColor(pSVar2,uVar1);
  }
  else if (playerTeam == param_1) {
    pSVar2 = *(SoldierView **)(this + 0xfc);
    uVar1 = FUN_003fe208(0,0xff,0);
    SoldierView::setPlayerLabelColor(pSVar2,uVar1);
  }
  else {
    pSVar2 = *(SoldierView **)(this + 0xfc);
    uVar1 = FUN_003fe208(0xff,0,0);
    SoldierView::setPlayerLabelColor(pSVar2,uVar1);
  }
  return;
}
