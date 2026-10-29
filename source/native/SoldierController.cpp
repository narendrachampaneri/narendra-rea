// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 61 functions

// ---- SoldierController::SoldierController  @ 0x3f3e1c
/* SoldierController::SoldierController() */

SoldierController * __thiscall SoldierController::SoldierController(SoldierController *this)

{
  CollisionObject::CollisionObject((CollisionObject *)this);
  WeaponFireDelegate::WeaponFireDelegate((WeaponFireDelegate *)(this + 0xf8));
  *(undefined ***)this = &PTR_copyWithZone_1_0091b2b0;
  *(undefined **)(this + 0xf8) = &DAT_0091b558;
  FUN_007c51b0(this + 0x100);
  cocos2d::CCPoint::CCPoint((CCPoint *)(this + 0x114));
  *(undefined4 *)(this + 0x148) = 0;
  *(undefined4 *)(this + 0x14c) = 0;
  *(undefined4 *)(this + 0x150) = 0;
  *(undefined4 *)(this + 0x154) = 0;
  return this;
}

// ---- SoldierController::init  @ 0x3f3eb4
/* SoldierController::init() */

bool __thiscall SoldierController::init(SoldierController *this)

{
  char cVar1;
  
  cVar1 = CollisionObject::init((CollisionObject *)this);
  if (cVar1 == '\x01') {
    *(undefined4 *)(this + 0x144) = 0x42c80000;
    FUN_007c5e70(this + 0x100,&DAT_007e8198);
    this[0x158] = (SoldierController)0x0;
    this[0x159] = (SoldierController)0x0;
    this[0x15a] = (SoldierController)0x0;
    this[0xe6] = (SoldierController)0x0;
    *(undefined4 *)(this + 0x15c) = 0;
    *(undefined4 *)(this + 0x160) = 0;
    this[0x15b] = (SoldierController)0x0;
    *(undefined2 *)(this + 0x164) = 6;
    this[0x166] = (SoldierController)0x0;
    *(undefined4 *)(this + 0x168) = 0;
    *(undefined4 *)(this + 0x16c) = 0;
    *(undefined4 *)(this + 0x170) = 0;
    *(undefined4 *)(this + 0x174) = 0;
    *(undefined4 *)(this + 0x178) = 0;
    this[0x17c] = (SoldierController)0x1;
  }
  return cVar1 == '\x01';
}

// ---- SoldierController::~SoldierController  @ 0x3f3f80
/* WARNING: Removing unreachable block (ram,0x003f402a) */
/* SoldierController::~SoldierController() */

SoldierController * __thiscall SoldierController::~SoldierController(SoldierController *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_0091b2b0;
  *(undefined **)(this + 0xf8) = &DAT_0091b558;
  unSyncBody(this);
  removeBodyShape(this);
  *(undefined4 *)(this + 0x148) = 0;
  *(undefined4 *)(this + 0x154) = 0;
  *(undefined4 *)(this + 0x150) = 0;
  *(undefined4 *)(this + 0xfc) = 0;
  if (*(int *)(this + 0x140) != 0) {
    cpShapeFree(*(undefined4 *)(this + 0x140));
  }
  if (*(int *)(this + 0x13c) != 0) {
    cpShapeFree(*(undefined4 *)(this + 0x13c));
  }
  if (*(int *)(this + 0x138) != 0) {
    cpBodyFree(*(undefined4 *)(this + 0x138));
  }
  FUN_007c5914(this + 0x100);
  CollisionObject::~CollisionObject((CollisionObject *)this);
  return this;
}

// ---- SoldierController::~SoldierController  @ 0x3f4044
/* SoldierController::~SoldierController() */

SoldierController * __thiscall SoldierController::~SoldierController(SoldierController *this)

{
  ~SoldierController(this);
  operator_delete(this);
  return this;
}

// ---- SoldierController::reset  @ 0x3f4060
/* SoldierController::reset() */

void __thiscall SoldierController::reset(SoldierController *this)

{
  int iVar1;
  
  iVar1 = *(int *)(this + 0x138);
  *(undefined4 *)(iVar1 + 0x38) = 0;
  *(undefined4 *)(iVar1 + 0x3c) = 0;
  *(undefined4 *)(iVar1 + 0x40) = 0;
  *(undefined4 *)(iVar1 + 0x44) = 0;
  iVar1 = *(int *)(this + 0x138);
  *(undefined4 *)(iVar1 + 0x48) = 0;
  *(undefined4 *)(iVar1 + 0x4c) = 0;
  *(undefined4 *)(iVar1 + 0x50) = 0;
  *(undefined4 *)(iVar1 + 0x54) = 0;
  return;
}

// ---- SoldierController::unSyncBody  @ 0x3f40a4
/* SoldierController::unSyncBody() */

void __thiscall SoldierController::unSyncBody(SoldierController *this)

{
  if (*(int *)(this + 0x138) != 0) {
    *(undefined4 *)(*(int *)(this + 0x138) + 0x90) = 0;
    *(undefined4 *)(*(int *)(this + 0x140) + 0x50) = 0;
    *(undefined4 *)(*(int *)(this + 0x13c) + 0x50) = 0;
  }
  return;
}

// ---- SoldierController::addBodyShape  @ 0x3f40d8
/* SoldierController::addBodyShape() */

void __thiscall SoldierController::addBodyShape(SoldierController *this)

{
  if (this[0x158] != (SoldierController)0x1) {
    cpSpaceAddBody(space,*(undefined4 *)(this + 0x138));
    cpSpaceAddShape(space,*(undefined4 *)(this + 0x140));
    cpSpaceAddShape(space,*(undefined4 *)(this + 0x13c));
    this[0x158] = (SoldierController)0x1;
  }
  return;
}

// ---- SoldierController::removeBodyShape  @ 0x3f4144
/* SoldierController::removeBodyShape() */

void __thiscall SoldierController::removeBodyShape(SoldierController *this)

{
  if (this[0x158] != (SoldierController)0x0) {
    cpSpaceRemoveBody(space,*(undefined4 *)(this + 0x138));
    cpSpaceRemoveShape(space,*(undefined4 *)(this + 0x140));
    cpSpaceRemoveShape(space,*(undefined4 *)(this + 0x13c));
    this[0x158] = (SoldierController)0x0;
  }
  return;
}

// ---- SoldierController::initBody  @ 0x3f41a8
/* SoldierController::initBody() */

void SoldierController::initBody(void)

{
  return;
}

// ---- SoldierController::initShape  @ 0x3f41b0
/* SoldierController::initShape() */

void SoldierController::initShape(void)

{
  return;
}

// ---- SoldierController::updateStep  @ 0x3f41b8
/* SoldierController::updateStep(float) */

void SoldierController::updateStep(float param_1)

{
  return;
}

// ---- SoldierController::setMaxPower  @ 0x3f41c4
/* SoldierController::setMaxPower(int) */

void __thiscall SoldierController::setMaxPower(SoldierController *this,int param_1)

{
  *(int *)(this + 0x180) = param_1;
  return;
}

// ---- SoldierController::getMaxPower  @ 0x3f41d8
/* SoldierController::getMaxPower() */

undefined4 __thiscall SoldierController::getMaxPower(SoldierController *this)

{
  return *(undefined4 *)(this + 0x180);
}

// ---- SoldierController::setFireAngle  @ 0x3f41e8
/* SoldierController::setFireAngle(float) */

void __thiscall SoldierController::setFireAngle(SoldierController *this,float param_1)

{
  undefined4 in_r1;
  
  *(undefined4 *)(this + 0x110) = in_r1;
  return;
}

// ---- SoldierController::getDualFireAngle  @ 0x3f41fc
/* SoldierController::getDualFireAngle() */

undefined4 __thiscall SoldierController::getDualFireAngle(SoldierController *this)

{
  return *(undefined4 *)(this + 0x110);
}

// ---- SoldierController::getFireAngle  @ 0x3f420c
/* SoldierController::getFireAngle() */

undefined4 __thiscall SoldierController::getFireAngle(SoldierController *this)

{
  return *(undefined4 *)(this + 0x110);
}

// ---- SoldierController::setThrust  @ 0x3f421c
/* SoldierController::setThrust(bool) */

void __thiscall SoldierController::setThrust(SoldierController *this,bool param_1)

{
  this[0x104] = (SoldierController)param_1;
  return;
}

// ---- SoldierController::getThrust  @ 0x3f4234
/* SoldierController::getThrust() */

SoldierController __thiscall SoldierController::getThrust(SoldierController *this)

{
  return this[0x104];
}

// ---- SoldierController::getMove  @ 0x3f4244
/* SoldierController::getMove() */

SoldierController __thiscall SoldierController::getMove(SoldierController *this)

{
  return this[0x11c];
}

// ---- SoldierController::getThrustFactor  @ 0x3f4254
/* SoldierController::getThrustFactor() */

double __thiscall SoldierController::getThrustFactor(SoldierController *this)

{
  return (double)*(float *)(this + 0x10c);
}

// ---- SoldierController::setSoldierView  @ 0x3f4270
/* SoldierController::setSoldierView(SoldierView*) */

void __thiscall SoldierController::setSoldierView(SoldierController *this,SoldierView *param_1)

{
  *(SoldierView **)(this + 0xfc) = param_1;
  return;
}

// ---- SoldierController::getSoldierView  @ 0x3f4284
/* SoldierController::getSoldierView() */

undefined4 __thiscall SoldierController::getSoldierView(SoldierController *this)

{
  return *(undefined4 *)(this + 0xfc);
}

// ---- SoldierController::setJoyOffset  @ 0x3f4294
/* SoldierController::setJoyOffset(cpVect) */

void SoldierController::setJoyOffset(float param_1,float param_2,int param_3)

{
  CCPoint aCStack_18 [8];
  
  cocos2d::CCPoint::CCPoint(aCStack_18,param_1,param_2);
  cocos2d::CCPoint::operator=((CCPoint *)(param_3 + 0x114),aCStack_18);
  return;
}

// ---- SoldierController::getJoyPadOffset  @ 0x3f42dc
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003f4304 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* SoldierController::getJoyPadOffset() */

undefined4 SoldierController::getJoyPadOffset(void)

{
  undefined4 in_r0;
  int in_r1;
  undefined4 in_s1;
  
  FUN_003f2d2c(SUB84((double)*(float *)(in_r1 + 0x114),0),in_s1,
               SUB84((double)*(float *)(in_r1 + 0x118),0),in_r0);
  return in_r0;
}

// ---- SoldierController::getShellPoint  @ 0x3f4310
/* SoldierController::getShellPoint() */

undefined4 * SoldierController::getShellPoint(void)

{
  undefined4 *in_r0;
  int in_r1;
  
  if (*(int *)(in_r1 + 0x148) == 0) {
    *in_r0 = 0;
    in_r0[1] = 0;
    in_r0[2] = 0;
    in_r0[3] = 0;
  }
  else {
    (**(code **)(**(int **)(in_r1 + 0x148) + 0x264))(in_r0,*(undefined4 *)(in_r1 + 0x148));
  }
  return in_r0;
}

// ---- SoldierController::getFiringPoint  @ 0x3f4364
/* SoldierController::getFiringPoint() */

undefined4 * SoldierController::getFiringPoint(void)

{
  undefined4 *in_r0;
  int in_r1;
  
  if (*(int *)(in_r1 + 0x148) == 0) {
    *in_r0 = 0;
    in_r0[1] = 0;
    in_r0[2] = 0;
    in_r0[3] = 0;
  }
  else {
    (**(code **)(**(int **)(in_r1 + 0x148) + 800))(in_r0,*(undefined4 *)(in_r1 + 0x148));
  }
  return in_r0;
}

// ---- SoldierController::addPrimaryWeapon  @ 0x3f43b8
/* SoldierController::addPrimaryWeapon(Weapon*) */

void SoldierController::addPrimaryWeapon(Weapon *param_1)

{
  return;
}

// ---- SoldierController::addSecondaryWeapon  @ 0x3f43c4
/* SoldierController::addSecondaryWeapon(Weapon*) */

void SoldierController::addSecondaryWeapon(Weapon *param_1)

{
  return;
}

// ---- SoldierController::addDualWeapon  @ 0x3f43d0
/* SoldierController::addDualWeapon(Weapon*) */

void SoldierController::addDualWeapon(Weapon *param_1)

{
  return;
}

// ---- SoldierController::addSideWeapon  @ 0x3f43dc
/* SoldierController::addSideWeapon(Weapon*) */

void SoldierController::addSideWeapon(Weapon *param_1)

{
  return;
}

// ---- SoldierController::removeAllWeapons  @ 0x3f43e8
/* SoldierController::removeAllWeapons() */

void __thiscall SoldierController::removeAllWeapons(SoldierController *this)

{
  (**(code **)(*(int *)this + 0x208))(this);
  (**(code **)(*(int *)this + 0x204))(this);
  (**(code **)(*(int *)this + 0x210))(this);
  (**(code **)(*(int *)this + 0x20c))(this);
  return;
}

// ---- SoldierController::removeAllDependencies  @ 0x3f442c
/* SoldierController::removeAllDependencies() */

void __thiscall SoldierController::removeAllDependencies(SoldierController *this)

{
  (**(code **)(*(int *)this + 0x290))(this);
  (**(code **)(*(int *)this + 0x1d4))(this,0);
  return;
}

// ---- SoldierController::removeSideWeapon  @ 0x3f4458
/* SoldierController::removeSideWeapon() */

void SoldierController::removeSideWeapon(void)

{
  return;
}

// ---- SoldierController::removePrimaryWeapon  @ 0x3f4460
/* SoldierController::removePrimaryWeapon() */

void SoldierController::removePrimaryWeapon(void)

{
  return;
}

// ---- SoldierController::removeSecondaryWeapon  @ 0x3f4468
/* SoldierController::removeSecondaryWeapon() */

void SoldierController::removeSecondaryWeapon(void)

{
  return;
}

// ---- SoldierController::removeDualWeapon  @ 0x3f4470
/* SoldierController::removeDualWeapon() */

void SoldierController::removeDualWeapon(void)

{
  return;
}

// ---- SoldierController::getPrimaryWeapon  @ 0x3f4478
/* SoldierController::getPrimaryWeapon() */

undefined4 __thiscall SoldierController::getPrimaryWeapon(SoldierController *this)

{
  return *(undefined4 *)(this + 0x148);
}

// ---- SoldierController::getSecondaryWeapon  @ 0x3f4488
/* SoldierController::getSecondaryWeapon() */

undefined4 __thiscall SoldierController::getSecondaryWeapon(SoldierController *this)

{
  return *(undefined4 *)(this + 0x14c);
}

// ---- SoldierController::getDualWeapon  @ 0x3f4498
/* SoldierController::getDualWeapon() */

undefined4 __thiscall SoldierController::getDualWeapon(SoldierController *this)

{
  return *(undefined4 *)(this + 0x150);
}

// ---- SoldierController::getSideWeapon  @ 0x3f44a8
/* SoldierController::getSideWeapon() */

undefined4 __thiscall SoldierController::getSideWeapon(SoldierController *this)

{
  return *(undefined4 *)(this + 0x154);
}

// ---- SoldierController::fire  @ 0x3f44b8
/* SoldierController::fire(float) */

float __thiscall SoldierController::fire(SoldierController *this,float param_1)

{
  undefined4 in_r1;
  
  if (*(int *)(this + 0x148) != 0) {
    param_1 = (float)(**(code **)(**(int **)(this + 0x148) + 0x25c))
                               (*(undefined4 *)(this + 0x148),in_r1);
  }
  return param_1;
}

// ---- SoldierController::setPeerName  @ 0x3f44ec
/* SoldierController::setPeerName(std::string) */

void __thiscall SoldierController::setPeerName(SoldierController *this,undefined4 param_2)

{
  SoldierView *pSVar1;
  undefined1 auStack_c [4];
  
  pSVar1 = *(SoldierView **)(this + 0xfc);
  FUN_007c64e8(auStack_c,param_2);
  SoldierView::setPlayerName(pSVar1,auStack_c);
  FUN_007c5914(auStack_c);
  return;
}

// ---- SoldierController::setPeerID  @ 0x3f4528
/* SoldierController::setPeerID(std::string) */

void __thiscall SoldierController::setPeerID(SoldierController *this,undefined4 param_2)

{
  undefined4 uVar1;
  code *pcVar2;
  undefined1 auStack_14 [8];
  
  thunk_FUN_007c653c(this + 0x100,param_2);
  uVar1 = *(undefined4 *)(this + 0xfc);
  FUN_007c64e8(auStack_14,param_2);
  SoldierView::setUUID(uVar1,auStack_14);
  FUN_007c5914(auStack_14);
  if (*(int *)(this + 0x148) != 0) {
    pcVar2 = *(code **)(**(int **)(this + 0x148) + 0x1f0);
    uVar1 = *(undefined4 *)(this + 0x148);
    FUN_007c64e8(auStack_14,param_2);
    (*pcVar2)(uVar1,auStack_14);
    FUN_007c5914(auStack_14);
  }
  if (*(int *)(this + 0x14c) != 0) {
    pcVar2 = *(code **)(**(int **)(this + 0x14c) + 0x1f0);
    uVar1 = *(undefined4 *)(this + 0x14c);
    FUN_007c64e8(auStack_14,param_2);
    (*pcVar2)(uVar1,auStack_14);
    FUN_007c5914(auStack_14);
  }
  if (*(int *)(this + 0x150) != 0) {
    pcVar2 = *(code **)(**(int **)(this + 0x150) + 0x1f0);
    uVar1 = *(undefined4 *)(this + 0x150);
    FUN_007c64e8(auStack_14,param_2);
    (*pcVar2)(uVar1,auStack_14);
    FUN_007c5914(auStack_14);
  }
  return;
}

// ---- SoldierController::getPeerID  @ 0x3f4644
/* SoldierController::getPeerID() */

undefined4 SoldierController::getPeerID(void)

{
  undefined4 in_r0;
  int in_r1;
  
  FUN_007c64e8(in_r0,in_r1 + 0x100);
  return in_r0;
}

// ---- SoldierController::isRight  @ 0x3f4664
/* SoldierController::isRight() */

undefined4 __thiscall SoldierController::isRight(SoldierController *this)

{
  undefined4 uVar1;
  
  uVar1 = SoldierView::isRight(*(SoldierView **)(this + 0xfc));
  return uVar1;
}

// ---- SoldierController::addDamage  @ 0x3f4680
/* SoldierController::addDamage(float, std::string, int, bool) */

void __thiscall
SoldierController::addDamage
          (SoldierController *this,float param_2,undefined4 param_3,undefined4 param_4,char param_5)

{
  uint uVar1;
  short sVar2;
  byte bVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  bool bVar6;
  int iVar7;
  code *pcVar8;
  uint in_fpscr;
  uint uVar9;
  float fVar10;
  float fVar11;
  undefined1 auStack_1c [8];
  
  if (this[0x15b] == (SoldierController)0x0) {
    fVar11 = *(float *)(this + 0x144);
    uVar1 = in_fpscr & 0xfffffff | (uint)(fVar11 < 0.0) << 0x1f | (uint)(fVar11 == 0.0) << 0x1e;
    uVar9 = uVar1 | (uint)NAN(fVar11) << 0x1c;
    bVar3 = (byte)(uVar1 >> 0x18);
    if (!(bool)(bVar3 >> 6 & 1) && bVar3 >> 7 == ((byte)(uVar9 >> 0x1c) & 1)) {
      pcVar8 = *(code **)(*(int *)this + 0x1bc);
      FUN_007c64e8(auStack_1c,param_3);
      (*pcVar8)(this,auStack_1c);
      FUN_007c5914(auStack_1c);
      *(undefined4 *)(this + 0xf0) = param_4;
      uVar4 = sndEng;
      if (param_5 != '\0') {
        sVar2 = *(short *)(this + 0x164);
        iVar7 = *(int *)(this + 0x138);
        uVar9 = uVar9 & 0xfffffff;
        if (0.5 <= (param_2 * 0.25) / 30.0) {
          fVar11 = (param_2 * 0.25) / 30.0 + 0.75;
          uVar1 = uVar9 | (uint)(fVar11 < 2.0) << 0x1f | (uint)(fVar11 == 2.0) << 0x1e;
          uVar9 = uVar1 | (uint)NAN(fVar11) << 0x1c;
          bVar3 = (byte)(uVar1 >> 0x18);
          bVar6 = !(bool)(bVar3 >> 6 & 1) && bVar3 >> 7 == ((byte)(uVar9 >> 0x1c) & 1);
        }
        else {
          bVar6 = false;
        }
        if (bVar6) {
          fVar11 = 2.0;
        }
        else {
          uVar9 = uVar9 & 0xfffffff;
          if (0.5 <= (param_2 * 0.25) / 30.0) {
            fVar11 = (param_2 * 0.25) / 30.0 + 0.75;
          }
          else {
            fVar11 = 1.25;
          }
        }
        uVar5 = FUN_003f2c20();
        fVar10 = (float)VectorSignedToFloat(uVar5,(byte)(uVar9 >> 0x16) & 3);
        Sound::playSoundPositionVP
                  (uVar4,(int)sVar2,*(undefined4 *)(iVar7 + 0x28),*(undefined4 *)(iVar7 + 0x2c),
                   *(undefined4 *)(iVar7 + 0x30),*(undefined4 *)(iVar7 + 0x34),fVar11,
                   (fVar10 / 1.0737418e+09 - 1.0) * 0.25 + 1.0);
      }
    }
    if (*(float *)(this + 0x144) - param_2 <= 0.0) {
      param_2 = 0.0;
    }
    else {
      param_2 = *(float *)(this + 0x144) - param_2;
    }
    *(float *)(this + 0x144) = param_2;
  }
  return;
}

// ---- SoldierController::getHP  @ 0x3f4864
/* SoldierController::getHP() */

int __thiscall SoldierController::getHP(SoldierController *this)

{
  return (int)*(float *)(this + 0x144);
}

// ---- SoldierController::setHP  @ 0x3f487c
/* SoldierController::setHP(int) */

void __thiscall SoldierController::setHP(SoldierController *this,int param_1)

{
  uint in_fpscr;
  undefined4 uVar1;
  
  uVar1 = VectorSignedToFloat(param_1,(byte)(in_fpscr >> 0x16) & 3);
  *(undefined4 *)(this + 0x144) = uVar1;
  return;
}

// ---- SoldierController::isDead  @ 0x3f4898
/* SoldierController::isDead() */

SoldierController __thiscall SoldierController::isDead(SoldierController *this)

{
  return this[0x159];
}

// ---- SoldierController::setIsDead  @ 0x3f48a8
/* SoldierController::setIsDead(bool) */

void __thiscall SoldierController::setIsDead(SoldierController *this,bool param_1)

{
  this[0x159] = (SoldierController)param_1;
  return;
}

// ---- SoldierController::isDucked  @ 0x3f48c0
/* SoldierController::isDucked() */

SoldierController __thiscall SoldierController::isDucked(SoldierController *this)

{
  return this[0x15a];
}

// ---- SoldierController::setDucked  @ 0x3f48d0
/* SoldierController::setDucked(bool) */

void __thiscall SoldierController::setDucked(SoldierController *this,bool param_1)

{
  this[0x15a] = (SoldierController)param_1;
  return;
}

// ---- SoldierController::throwDual  @ 0x3f48e8
/* SoldierController::throwDual() */

void SoldierController::throwDual(void)

{
  return;
}

// ---- SoldierController::weaponDidFire  @ 0x3f48f0
/* SoldierController::weaponDidFire(Item*) */

void SoldierController::weaponDidFire(Item *param_1)

{
  return;
}

// ---- SoldierController::weaponDidFire  @ 0x3f48fc
/* non-virtual thunk to SoldierController::weaponDidFire(Item*) */

void __thiscall SoldierController::weaponDidFire(SoldierController *this,Item *param_1)

{
  weaponDidFire((Item *)(this + -0xf8));
  return;
}

// ---- SoldierController::setHitSound  @ 0x3f4904
/* SoldierController::setHitSound(short) */

void __thiscall SoldierController::setHitSound(SoldierController *this,short param_1)

{
  *(short *)(this + 0x164) = param_1;
  return;
}

// ---- SoldierController::getBodyPosition  @ 0x3f491c
/* SoldierController::getBodyPosition() */

undefined4 * SoldierController::getBodyPosition(void)

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

// ---- SoldierController::getBodyVelocity  @ 0x3f4940
/* SoldierController::getBodyVelocity() */

undefined4 * SoldierController::getBodyVelocity(void)

{
  undefined4 *in_r0;
  int in_r1;
  undefined4 uVar1;
  undefined4 uVar2;
  int iVar3;
  undefined4 uVar4;
  
  iVar3 = *(int *)(in_r1 + 0x138);
  uVar1 = *(undefined4 *)(iVar3 + 0x3c);
  uVar2 = *(undefined4 *)(iVar3 + 0x40);
  uVar4 = *(undefined4 *)(iVar3 + 0x44);
  *in_r0 = *(undefined4 *)(iVar3 + 0x38);
  in_r0[1] = uVar1;
  in_r0[2] = uVar2;
  in_r0[3] = uVar4;
  return in_r0;
}

// ---- SoldierController::setThrustFactor  @ 0x3f4964
/* SoldierController::setThrustFactor(float) */

void __thiscall SoldierController::setThrustFactor(SoldierController *this,float param_1)

{
  undefined4 in_r1;
  
  *(undefined4 *)(this + 0x10c) = in_r1;
  return;
}

// ---- SoldierController::getAlive  @ 0x3f4978
/* SoldierController::getAlive() */

SoldierController __thiscall SoldierController::getAlive(SoldierController *this)

{
  return this[0x17c];
}

// ---- SoldierController::setAlive  @ 0x3f4988
/* SoldierController::setAlive(bool) */

void __thiscall SoldierController::setAlive(SoldierController *this,bool param_1)

{
  this[0x17c] = (SoldierController)param_1;
  return;
}
