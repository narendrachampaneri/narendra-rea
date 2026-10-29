// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 65 functions

// ---- Weapon::setFireDelegate  @ 0x2edb04
/* Weapon::setFireDelegate(WeaponFireDelegate*) */

void __thiscall Weapon::setFireDelegate(Weapon *this,WeaponFireDelegate *param_1)

{
  *(WeaponFireDelegate **)(this + 0x1d0) = param_1;
  return;
}

// ---- Weapon::Weapon  @ 0x424fa8
/* Weapon::Weapon() */

Weapon * __thiscall Weapon::Weapon(Weapon *this)

{
  Item::Item((Item *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_0091d3a8;
  FUN_007c51b0(this + 0x154);
  return this;
}

// ---- Weapon::init  @ 0x424ff0
/* Weapon::init() */

bool __thiscall Weapon::init(Weapon *this)

{
  char cVar1;
  undefined4 uVar2;
  
  cVar1 = Item::init((Item *)this);
  if (cVar1 == '\x01') {
    *(undefined4 *)(this + 0x158) = 0;
    *(undefined2 *)(this + 0x1e8) = 0;
    *(undefined2 *)(this + 0x1ea) = 0;
    *(undefined4 *)(this + 0x170) = 0;
    *(undefined4 *)(this + 0x174) = 0;
    *(undefined4 *)(this + 0x178) = 0;
    *(undefined4 *)(this + 0x17c) = 0;
    *(undefined4 *)(this + 0x18c) = 0;
    *(undefined4 *)(this + 0x168) = 0x3f800000;
    this[0x194] = (Weapon)0x0;
    this[0x195] = (Weapon)0x0;
    *(undefined4 *)(this + 0x114) = 0x41200000;
    *(undefined4 *)(this + 400) = 0;
    this[0x135] = (Weapon)0x0;
    *(undefined4 *)(this + 0x138) = 0;
    *(undefined4 *)(this + 0x198) = 0;
    *(undefined4 *)(this + 0x19c) = 0;
    *(undefined4 *)(this + 0x1a0) = 0;
    *(undefined4 *)(this + 0x144) = 0;
    *(undefined4 *)(this + 0x148) = 0x3f800000;
    uVar2 = cocos2d::CCArray::create();
    *(undefined4 *)(this + 0x14c) = uVar2;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x14c));
    uVar2 = cocos2d::CCArray::create();
    *(undefined4 *)(this + 0x150) = uVar2;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x150));
    (**(code **)(*(int *)this + 0x1a4))(this,1);
    (**(code **)(*(int *)this + 0x1a8))(this,0);
    this[0x1b0] = (Weapon)0x0;
    *(undefined4 *)(this + 0x1b4) = 1;
    *(undefined4 *)(this + 0x1b8) = 0;
    *(undefined4 *)(this + 0x1bc) = 0x514;
    this[0x182] = (Weapon)0x0;
    this[0x183] = (Weapon)0x0;
    this[0x184] = (Weapon)0x0;
    this[0x181] = (Weapon)0x0;
    *(undefined4 *)(this + 0x1c0) = 0;
    this[0x1c4] = (Weapon)0x0;
    this[0x185] = (Weapon)0x0;
    *(undefined4 *)(this + 0x1c8) = 0;
    *(undefined4 *)(this + 0x1cc) = 0x3f800000;
    FUN_007c5e70(this + 0x154,&DAT_007eb3d8);
    *(undefined4 *)(this + 0x1d8) = 0;
    *(undefined4 *)(this + 0x1dc) = 0;
    *(undefined4 *)(this + 0x1e0) = 0;
    *(undefined4 *)(this + 0x1e4) = 0;
    (**(code **)(*(int *)this + 0x1ac))(this);
    this[0x180] = (Weapon)0x0;
    this[0xe5] = (Weapon)0x0;
    *(undefined4 *)(this + 0x1d0) = 0;
  }
  return cVar1 == '\x01';
}

// ---- Weapon::~Weapon  @ 0x4251f0
/* WARNING: Removing unreachable block (ram,0x0042523e) */
/* Weapon::~Weapon() */

Weapon * __thiscall Weapon::~Weapon(Weapon *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_0091d3a8;
  cocos2d::CCNode::removeAllChildren((CCNode *)this);
  cocos2d::CCObject::release(*(CCObject **)(this + 0x14c));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x150));
  FUN_007c5914(this + 0x154);
  Item::~Item((Item *)this);
  return this;
}

// ---- Weapon::~Weapon  @ 0x425258
/* Weapon::~Weapon() */

Weapon * __thiscall Weapon::~Weapon(Weapon *this)

{
  ~Weapon(this);
  operator_delete(this);
  return this;
}

// ---- Weapon::initBody  @ 0x425278
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x004252f6 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* Weapon::initBody() */

void Weapon::initBody(void)

{
  int in_r0;
  undefined4 uVar1;
  int iVar2;
  undefined4 in_s1;
  undefined4 local_50;
  undefined4 uStack_4c;
  undefined4 uStack_48;
  undefined4 uStack_44;
  int local_3c;
  undefined4 local_34;
  undefined4 local_30;
  undefined4 uStack_2c;
  undefined4 uStack_24;
  undefined1 local_20 [20];
  
  local_34 = 0x3dcccccd;
  local_3c = in_r0;
  uVar1 = cpBodyNew(0xa0000000,0x3fb99999,0,0x40140000);
  iVar2 = local_3c;
  *(undefined4 *)(local_3c + 0xe8) = uVar1;
  **(undefined4 **)(local_3c + 0xe8) = 0x424e1d;
  *(int *)(*(int *)(local_3c + 0xe8) + 0x90) = local_3c;
  *(undefined4 *)(local_3c + 0xf0) = 0xcccccccd;
  *(undefined4 *)(local_3c + 0xf4) = 0x3feccccc;
  FUN_00423ec0(0,in_s1,SUB84((double)(gravityFactor * -400.0),0),&local_50);
  *(undefined4 *)(iVar2 + 0xf8) = local_50;
  *(undefined4 *)(iVar2 + 0xfc) = uStack_4c;
  *(undefined4 *)(iVar2 + 0x100) = uStack_48;
  *(undefined4 *)(iVar2 + 0x104) = uStack_44;
  uVar1 = *(undefined4 *)(local_3c + 0xe8);
  FUN_00423ec0(0,in_s1,0,&local_30);
  FUN_00423ec0(0,in_s1,0,local_20);
  uVar1 = cpSegmentShapeNew(uVar1,uStack_24,local_30,uStack_2c);
  *(undefined4 *)(local_3c + 0xec) = uVar1;
  *(undefined4 *)(*(int *)(local_3c + 0xec) + 0x54) = 2;
  *(undefined4 *)(*(int *)(local_3c + 0xec) + 0x5c) = 2;
  *(undefined4 *)(*(int *)(local_3c + 0xec) + 0x58) = 2;
  iVar2 = *(int *)(local_3c + 0xec);
  *(undefined4 *)(iVar2 + 0x30) = 0xa0000000;
  *(undefined4 *)(iVar2 + 0x34) = 0x3fb99999;
  iVar2 = *(int *)(local_3c + 0xec);
  *(undefined4 *)(iVar2 + 0x38) = 0xc0000000;
  *(undefined4 *)(iVar2 + 0x3c) = 0x3feccccc;
  *(int *)(*(int *)(local_3c + 0xec) + 0x50) = local_3c;
  return;
}

// ---- Weapon::triggerPull  @ 0x4255c8
/* Weapon::triggerPull(float) */

void Weapon::triggerPull(float param_1)

{
  return;
}

// ---- Weapon::remoteTriggerPull  @ 0x4255d4
/* Weapon::remoteTriggerPull(float) */

void Weapon::remoteTriggerPull(float param_1)

{
  return;
}

// ---- Weapon::detonate  @ 0x4255e0
/* Weapon::detonate(cocos2d::CCObject*) */

void Weapon::detonate(CCObject *param_1)

{
  return;
}

// ---- Weapon::getShellPoint  @ 0x4255ec
/* Weapon::getShellPoint() */

Weapon * __thiscall Weapon::getShellPoint(Weapon *this)

{
  *(undefined4 *)this = 0;
  *(undefined4 *)(this + 4) = 0;
  *(undefined4 *)(this + 8) = 0;
  *(undefined4 *)(this + 0xc) = 0;
  return this;
}

// ---- Weapon::getType  @ 0x425614
/* Weapon::getType() */

undefined4 __thiscall Weapon::getType(Weapon *this)

{
  return *(undefined4 *)(this + 0x188);
}

// ---- Weapon::reloadWeapon  @ 0x425624
/* Weapon::reloadWeapon() */

void __thiscall Weapon::reloadWeapon(Weapon *this)

{
  this[0x181] = (Weapon)0x1;
  *(undefined4 *)(this + 0x158) = 0;
  return;
}

// ---- Weapon::getAmmo  @ 0x425640
/* Weapon::getAmmo() */

int __thiscall Weapon::getAmmo(Weapon *this)

{
  int *piVar1;
  int local_10;
  int local_c [2];
  
  local_10 = 0;
  local_c[0] = (int)*(short *)(this + 0x1e8);
  piVar1 = std::max<int>(&local_10,local_c);
  return (int)(short)*piVar1;
}

// ---- Weapon::getAmmoType  @ 0x425670
/* Weapon::getAmmoType() */

undefined4 __thiscall Weapon::getAmmoType(Weapon *this)

{
  return *(undefined4 *)(this + 0x188);
}

// ---- Weapon::setAmmoType  @ 0x425680
/* Weapon::setAmmoType(ItemType) */

void __thiscall Weapon::setAmmoType(Weapon *this,undefined4 param_2)

{
  *(undefined4 *)(this + 0x188) = param_2;
  return;
}

// ---- Weapon::getClip  @ 0x425694
/* Weapon::getClip() */

int __thiscall Weapon::getClip(Weapon *this)

{
  int *piVar1;
  int local_10;
  int local_c [2];
  
  local_10 = 0;
  local_c[0] = (int)*(short *)(this + 0x1ea);
  piVar1 = std::max<int>(&local_10,local_c);
  return (int)(short)*piVar1;
}

// ---- Weapon::getWeaponTexture  @ 0x4256c4
/* Weapon::getWeaponTexture() */

undefined4 Weapon::getWeaponTexture(void)

{
  return 0;
}

// ---- Weapon::getWeaponRect  @ 0x4256d0
/* Weapon::getWeaponRect() */

CCRect * Weapon::getWeaponRect(void)

{
  CCRect *in_r0;
  float in_s0;
  float in_s1;
  float in_s2;
  float in_s3;
  
  cocos2d::CCRect::CCRect(in_r0,in_s0,in_s1,in_s2,in_s3);
  return in_r0;
}

// ---- Weapon::setAmmo  @ 0x4256f8
/* Weapon::setAmmo(int) */

void __thiscall Weapon::setAmmo(Weapon *this,int param_1)

{
  int *piVar1;
  int local_18;
  Weapon *local_14;
  int local_c [2];
  
  local_c[0] = 0;
  local_18 = param_1;
  local_14 = this;
  piVar1 = std::max<int>(local_c,&local_18);
  *(short *)(local_14 + 0x1e8) = (short)*piVar1;
  return;
}

// ---- Weapon::setClip  @ 0x425724
/* Weapon::setClip(int) */

void __thiscall Weapon::setClip(Weapon *this,int param_1)

{
  int *piVar1;
  int local_18;
  Weapon *local_14;
  int local_c [2];
  
  local_c[0] = 0;
  local_18 = param_1;
  local_14 = this;
  piVar1 = std::max<int>(local_c,&local_18);
  *(short *)(local_14 + 0x1ea) = (short)*piVar1;
  return;
}

// ---- Weapon::getViewOffset  @ 0x425750
/* Weapon::getViewOffset() */

undefined4 __thiscall Weapon::getViewOffset(Weapon *this)

{
  return *(undefined4 *)(this + 0x18c);
}

// ---- Weapon::playSound  @ 0x425760
/* Weapon::playSound() */

void Weapon::playSound(void)

{
  return;
}

// ---- Weapon::resetBullets  @ 0x425768
/* Weapon::resetBullets() */

void __thiscall Weapon::resetBullets(Weapon *this)

{
  this[0x194] = (Weapon)0x0;
  this[0x195] = (Weapon)0x0;
  return;
}

// ---- Weapon::setBulletsToFire  @ 0x425780
/* Weapon::setBulletsToFire(unsigned char) */

void __thiscall Weapon::setBulletsToFire(Weapon *this,uchar param_1)

{
  this[0x194] = (Weapon)param_1;
  return;
}

// ---- Weapon::setBulletsFired  @ 0x425798
/* Weapon::setBulletsFired(unsigned char) */

void __thiscall Weapon::setBulletsFired(Weapon *this,uchar param_1)

{
  this[0x195] = (Weapon)param_1;
  return;
}

// ---- Weapon::getBulletsToFire  @ 0x4257b0
/* Weapon::getBulletsToFire() */

Weapon __thiscall Weapon::getBulletsToFire(Weapon *this)

{
  return this[0x194];
}

// ---- Weapon::getBulletsFired  @ 0x4257c0
/* Weapon::getBulletsFired() */

Weapon __thiscall Weapon::getBulletsFired(Weapon *this)

{
  return this[0x195];
}

// ---- Weapon::getDamage  @ 0x4257d0
/* Weapon::getDamage() */

undefined4 __thiscall Weapon::getDamage(Weapon *this)

{
  return *(undefined4 *)(this + 0x198);
}

// ---- Weapon::getMeleeDamage  @ 0x4257e0
/* Weapon::getMeleeDamage() */

undefined4 __thiscall Weapon::getMeleeDamage(Weapon *this)

{
  return *(undefined4 *)(this + 0x19c);
}

// ---- Weapon::getMeleeLength  @ 0x4257f0
/* Weapon::getMeleeLength() */

undefined4 __thiscall Weapon::getMeleeLength(Weapon *this)

{
  return *(undefined4 *)(this + 0x1a0);
}

// ---- Weapon::getRange  @ 0x425800
/* Weapon::getRange() */

undefined4 __thiscall Weapon::getRange(Weapon *this)

{
  return *(undefined4 *)(this + 0x1a4);
}

// ---- Weapon::isLocked  @ 0x425810
/* Weapon::isLocked() */

Weapon __thiscall Weapon::isLocked(Weapon *this)

{
  return this[0x135];
}

// ---- Weapon::setLock  @ 0x425820
/* Weapon::setLock(bool) */

void __thiscall Weapon::setLock(Weapon *this,bool param_1)

{
  this[0x135] = (Weapon)param_1;
  return;
}

// ---- Weapon::getAmmoCapacity  @ 0x425838
/* Weapon::getAmmoCapacity() */

undefined4 __thiscall Weapon::getAmmoCapacity(Weapon *this)

{
  return *(undefined4 *)(this + 0x174);
}

// ---- Weapon::getClipCapacity  @ 0x425848
/* Weapon::getClipCapacity() */

int __thiscall Weapon::getClipCapacity(Weapon *this)

{
  return *(int *)(this + 0x178) + *(int *)(this + 0x170);
}

// ---- Weapon::getReloadTime  @ 0x425860
/* Weapon::getReloadTime() */

undefined4 Weapon::getReloadTime(void)

{
  return 0;
}

// ---- Weapon::setClipCapacityMod  @ 0x425880
/* Weapon::setClipCapacityMod(int) */

void __thiscall Weapon::setClipCapacityMod(Weapon *this,int param_1)

{
  *(int *)(this + 0x178) = param_1;
  return;
}

// ---- Weapon::setClipReloadMod  @ 0x425894
/* Weapon::setClipReloadMod(float) */

void __thiscall Weapon::setClipReloadMod(Weapon *this,float param_1)

{
  undefined4 in_r1;
  
  *(undefined4 *)(this + 0x17c) = in_r1;
  return;
}

// ---- Weapon::addAmmo  @ 0x4258a8
/* Weapon::addAmmo(int) */

void __thiscall Weapon::addAmmo(Weapon *this,int param_1)

{
  int iVar1;
  
  if (0 < param_1) {
    Sound::playSound(sndEng,0x11);
  }
  iVar1 = param_1 + *(short *)(this + 0x1e8);
  if (*(int *)(this + 0x174) < param_1 + *(short *)(this + 0x1e8)) {
    iVar1 = *(int *)(this + 0x174);
  }
  *(short *)(this + 0x1e8) = (short)iVar1;
  return;
}

// ---- Weapon::subAmmo  @ 0x4258f8
/* Weapon::subAmmo(int) */

int __thiscall Weapon::subAmmo(Weapon *this,int param_1)

{
  short sVar1;
  code *pcVar2;
  undefined4 local_c;
  
  sVar1 = (**(code **)(*(int *)this + 0x274))(this);
  local_c = param_1;
  if (sVar1 < param_1) {
    sVar1 = (**(code **)(*(int *)this + 0x274))(this);
    local_c = (int)sVar1;
  }
  pcVar2 = *(code **)(*(int *)this + 0x278);
  sVar1 = (**(code **)(*(int *)this + 0x274))(this);
  (*pcVar2)(this,sVar1 - local_c);
  return local_c;
}

// ---- Weapon::isReloading  @ 0x425974
/* Weapon::isReloading() */

Weapon __thiscall Weapon::isReloading(Weapon *this)

{
  return this[0x181];
}

// ---- Weapon::getZoomScale  @ 0x425984
/* Weapon::getZoomScale() */

undefined4 __thiscall Weapon::getZoomScale(Weapon *this)

{
  return *(undefined4 *)(this + 0x148);
}

// ---- Weapon::getZoomLabel  @ 0x425994
/* Weapon::getZoomLabel() */

undefined4 Weapon::getZoomLabel(void)

{
  undefined4 in_r0;
  int iVar1;
  undefined4 uVar2;
  int in_r1;
  undefined1 auStack_10 [4];
  CCString *local_c;
  
  iVar1 = cocos2d::CCArray::count(*(CCArray **)(in_r1 + 0x14c));
  if (iVar1 == 0) {
    FUN_0079a3f4(auStack_10);
    FUN_007c6a60(in_r0,&DAT_007eb3d8,auStack_10);
    FUN_0079a3fc(auStack_10);
  }
  else {
    local_c = (CCString *)
              cocos2d::CCArray::objectAtIndex(*(CCArray **)(in_r1 + 0x14c),*(uint *)(in_r1 + 0x144))
    ;
    if (local_c == (CCString *)0x0) {
      FUN_0079a3f4(auStack_10);
      FUN_007c6a60(in_r0,&DAT_007eb3d8,auStack_10);
      FUN_0079a3fc(auStack_10);
    }
    else {
      uVar2 = cocos2d::CCString::getCString(local_c);
      FUN_0079a3f4(auStack_10);
      FUN_007c6a60(in_r0,uVar2,auStack_10);
      FUN_0079a3fc(auStack_10);
    }
  }
  return in_r0;
}

// ---- Weapon::changeZoomLevel  @ 0x425a74
/* Weapon::changeZoomLevel() */

void __thiscall Weapon::changeZoomLevel(Weapon *this)

{
  int iVar1;
  uint uVar2;
  CCFloat *this_00;
  undefined4 uVar3;
  uint uVar4;
  
  *(int *)(this + 0x144) = *(int *)(this + 0x144) + 1;
  *(undefined4 *)(this + 0x148) = 0x3f800000;
  iVar1 = cocos2d::CCArray::count(*(CCArray **)(this + 0x150));
  if (iVar1 != 0) {
    uVar4 = *(uint *)(this + 0x144);
    uVar2 = cocos2d::CCArray::count(*(CCArray **)(this + 0x150));
    if (uVar2 <= uVar4) {
      *(undefined4 *)(this + 0x144) = 0;
    }
    this_00 = (CCFloat *)
              cocos2d::CCArray::objectAtIndex(*(CCArray **)(this + 0x150),*(uint *)(this + 0x144));
    if (this_00 != (CCFloat *)0x0) {
      uVar3 = cocos2d::CCFloat::getValue(this_00);
      *(undefined4 *)(this + 0x148) = uVar3;
    }
  }
  return;
}

// ---- Weapon::isMeleeWeapon  @ 0x425b0c
/* Weapon::isMeleeWeapon() */

Weapon __thiscall Weapon::isMeleeWeapon(Weapon *this)

{
  return this[0x1b0];
}

// ---- Weapon::getRoundsPerFire  @ 0x425b1c
/* Weapon::getRoundsPerFire() */

undefined4 Weapon::getRoundsPerFire(void)

{
  return 2;
}

// ---- Weapon::getArmAngle  @ 0x425b2c
/* Weapon::getArmAngle() */

undefined4 __thiscall Weapon::getArmAngle(Weapon *this)

{
  return *(undefined4 *)(this + 0x1b8);
}

// ---- Weapon::getBulletSpeed  @ 0x425b3c
/* Weapon::getBulletSpeed() */

undefined4 __thiscall Weapon::getBulletSpeed(Weapon *this)

{
  return *(undefined4 *)(this + 0x1bc);
}

// ---- Weapon::isDualWield  @ 0x425b4c
/* Weapon::isDualWield() */

undefined4 Weapon::isDualWield(void)

{
  return 1;
}

// ---- Weapon::isDualWieldOnly  @ 0x425b5c
/* Weapon::isDualWieldOnly() */

Weapon __thiscall Weapon::isDualWieldOnly(Weapon *this)

{
  return this[0x182];
}

// ---- Weapon::isDualWieldPrimaryOnly  @ 0x425b6c
/* Weapon::isDualWieldPrimaryOnly() */

undefined4 Weapon::isDualWieldPrimaryOnly(void)

{
  return 1;
}

// ---- Weapon::getRandomFiringAngle  @ 0x425b7c
/* Weapon::getRandomFiringAngle() */

float __thiscall Weapon::getRandomFiringAngle(Weapon *this)

{
  float fVar1;
  uint in_fpscr;
  undefined4 uVar2;
  
  uVar2 = VectorSignedToFloat((int)(*(float *)(this + 0x1c0) * 41.0 + 37.0) % 100,
                              (byte)(in_fpscr >> 0x16) & 3);
  *(undefined4 *)(this + 0x1c0) = uVar2;
  fVar1 = *(float *)(this + 0x1c0) / 100.0 - 0.5;
  return *(float *)(this + 0x164) * (fVar1 + fVar1) * *(float *)(this + 0x168);
}

// ---- Weapon::pickupAsDual  @ 0x425c1c
/* Weapon::pickupAsDual() */

Weapon __thiscall Weapon::pickupAsDual(Weapon *this)

{
  return this[0x1c4];
}

// ---- Weapon::setPickupAsDual  @ 0x425c2c
/* Weapon::setPickupAsDual(bool) */

void __thiscall Weapon::setPickupAsDual(Weapon *this,bool param_1)

{
  this[0x1c4] = (Weapon)param_1;
  return;
}

// ---- Weapon::setFireAngle  @ 0x425c44
/* Weapon::setFireAngle(float) */

void __thiscall Weapon::setFireAngle(Weapon *this,float param_1)

{
  undefined4 in_r1;
  
  *(undefined4 *)(this + 0x1c8) = in_r1;
  return;
}

// ---- Weapon::setHostID  @ 0x425c58
/* Weapon::setHostID(std::string) */

void __thiscall Weapon::setHostID(Weapon *this,undefined4 param_2)

{
  undefined1 auStack_c [4];
  
  FUN_007c64e8(auStack_c,param_2);
  Item::setHostID((Item *)this,auStack_c);
  FUN_007c5914(auStack_c);
  thunk_FUN_007c653c(this + 0x154,param_2);
  return;
}

// ---- Weapon::updateStep  @ 0x425ca0
/* Weapon::updateStep(float) */

void __thiscall Weapon::updateStep(Weapon *this,float param_1)

{
  float in_r1;
  
  *(float *)(this + 0x110) = *(float *)(this + 0x110) + in_r1;
  this[0x180] = (Weapon)0x0;
  return;
}

// ---- Weapon::weaponDidFire  @ 0x425cc8
/* Weapon::weaponDidFire() */

void __thiscall Weapon::weaponDidFire(Weapon *this)

{
  if (*(int *)(this + 0x1d0) != 0) {
    (**(code **)**(undefined4 **)(this + 0x1d0))(*(undefined4 *)(this + 0x1d0),this);
  }
  return;
}

// ---- Weapon::produceShell  @ 0x425cf8
/* Weapon::produceShell() */

void __thiscall Weapon::produceShell(Weapon *this)

{
  CCNotificationCenter *this_00;
  
  this_00 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::postNotification(this_00,"ProduceShell",(CCObject *)this);
  return;
}

// ---- Weapon::doFire  @ 0x425d20
/* Weapon::doFire(float, cpVect, cpVect, int, std::string) */

void Weapon::doFire(float param_1,CCObject *param_2)

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
  cocos2d::CCNotificationCenter::postNotification(this,"WeaponFired",local_34);
  return;
}

// ---- Weapon::doRemoteFire  @ 0x425e20
/* Weapon::doRemoteFire(float, cpVect, cpVect, int, std::string) */

void Weapon::doRemoteFire
               (int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
               undefined4 param_5,undefined4 param_6,undefined4 param_7,undefined4 param_8,
               undefined4 param_9,undefined4 param_10,undefined4 param_11,undefined4 param_12)

{
  code *pcVar1;
  undefined1 auStack_1c [8];
  
  pcVar1 = *(code **)(*param_1 + 0x310);
  FUN_007c64e8(auStack_1c,param_12);
  (*pcVar1)(param_1,param_2,param_3,param_4,param_5,param_6,param_7,param_8,param_9,param_10,
            param_11,auStack_1c);
  FUN_007c5914(auStack_1c);
  return;
}

// ---- Weapon::getWeightFactor  @ 0x425e90
/* Weapon::getWeightFactor() */

undefined4 __thiscall Weapon::getWeightFactor(Weapon *this)

{
  return *(undefined4 *)(this + 0x1cc);
}

// ---- Weapon::setAccuracyMod  @ 0x425ea0
/* Weapon::setAccuracyMod(float) */

void __thiscall Weapon::setAccuracyMod(Weapon *this,float param_1)

{
  undefined4 in_r1;
  
  *(undefined4 *)(this + 0x168) = in_r1;
  return;
}

// ---- Weapon::getDesignFiringPoint  @ 0x425eb4
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x00425f78 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* Weapon::getDesignFiringPoint() */

undefined4 Weapon::getDesignFiringPoint(void)

{
  undefined4 in_r0;
  undefined4 uVar1;
  int *in_r1;
  float extraout_s0;
  float extraout_s1;
  cocos2d acStack_50 [8];
  CCPoint aCStack_48 [8];
  float local_40;
  float local_3c;
  int local_38;
  int iStack_34;
  int local_30;
  int iStack_2c;
  CCAffineTransform aCStack_28 [28];
  
  local_38 = in_r1[0x76];
  iStack_34 = in_r1[0x77];
  local_30 = in_r1[0x78];
  iStack_2c = in_r1[0x79];
  uVar1 = (**(code **)(*in_r1 + 0x50))(in_r1);
  cocos2d::CCPoint::CCPoint(aCStack_48,extraout_s0,extraout_s1);
  FUN_00423dbc(&local_40,uVar1,aCStack_48);
  (**(code **)(*in_r1 + 0x184))(aCStack_28,in_r1);
  cocos2d::__CCPointApplyAffineTransform(acStack_50,(CCPoint *)&local_40,aCStack_28);
  (**(code **)(*worldLayer + 0x188))(aCStack_28,worldLayer);
  cocos2d::__CCPointApplyAffineTransform((cocos2d *)&local_40,acStack_50,aCStack_28);
  FUN_00423ec0(SUB84((double)local_40,0),extraout_s1,SUB84((double)local_3c,0),in_r0);
  return in_r0;
}

// ---- Weapon::setContact  @ 0x425f8c
/* Weapon::setContact(bool, std::string, int) */

undefined4 __thiscall
Weapon::setContact(Weapon *this,undefined1 param_1,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  undefined1 auStack_c [4];
  
  FUN_007c64e8(auStack_c,param_3);
  uVar1 = Item::setContact(this,param_1,auStack_c,param_4);
  FUN_007c5914(auStack_c);
  return uVar1;
}
