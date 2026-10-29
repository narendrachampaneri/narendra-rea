// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 36 functions

// ---- HawkDrone::create  @ 0x328c1c
/* HawkDrone::create() */

HawkDrone * HawkDrone::create(void)

{
  bool bVar1;
  HawkDrone *this;
  int iVar2;
  
  this = operator_new(0x220);
  HawkDrone(this);
  if ((this == (HawkDrone *)0x0) || (iVar2 = (**(code **)(*(int *)this + 0x18))(this), iVar2 == 0))
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
    if (this != (HawkDrone *)0x0) {
      (**(code **)(*(int *)this + 8))(this);
    }
    this = (HawkDrone *)0x0;
  }
  return this;
}

// ---- HawkDrone::HawkDrone  @ 0x34f6c8
/* HawkDrone::HawkDrone() */

HawkDrone * __thiscall HawkDrone::HawkDrone(HawkDrone *this)

{
  Enemy::Enemy((Enemy *)this);
  WeaponFireDelegate::WeaponFireDelegate((WeaponFireDelegate *)(this + 0x1a8));
  *(undefined ***)this = &PTR_copyWithZone_1_00912720;
  *(undefined **)(this + 0x1a8) = &DAT_00912970;
  cocos2d::CCPoint::CCPoint((CCPoint *)(this + 0x1e8));
  FUN_007c51b0(this + 0x200);
  return this;
}

// ---- HawkDrone::init  @ 0x34f734
/* HawkDrone::init() */

bool __thiscall HawkDrone::init(HawkDrone *this)

{
  HawkDrone *pHVar1;
  undefined4 uVar2;
  WeaponFactory *pWVar3;
  CCPoint *this_00;
  code *pcVar4;
  bool bVar5;
  undefined8 uVar6;
  int local_38;
  int iStack_34;
  int iStack_30;
  int iStack_2c;
  HawkDrone *local_24;
  char local_19;
  CCPoint aCStack_18 [8];
  
  local_24 = this;
  local_19 = Enemy::init((Enemy *)this);
  bVar5 = local_19 == '\x01';
  if (bVar5) {
    local_24[0x1d0] = (HawkDrone)0x0;
    *(undefined4 *)(local_24 + 0x1c0) = 0;
    *(undefined4 *)(local_24 + 0x218) = 0;
    uVar2 = cocos2d::CCSprite::createWithSpriteFrameName("flame.png");
    *(undefined4 *)(local_24 + 0x1b0) = uVar2;
    uVar6 = cocos2d::CCObject::retain(*(CCObject **)(local_24 + 0x1b0));
    pcVar4 = *(code **)(**(int **)(local_24 + 0x1b0) + 0x7c);
    uVar2 = *(undefined4 *)(local_24 + 0x1b0);
    cocos2d::CCPoint::CCPoint(aCStack_18,(float)uVar6,(float)((ulonglong)uVar6 >> 0x20));
    uVar6 = (*pcVar4)(uVar2,aCStack_18);
    pcVar4 = *(code **)(**(int **)(local_24 + 0x1b0) + 0x4c);
    uVar2 = *(undefined4 *)(local_24 + 0x1b0);
    cocos2d::CCPoint::CCPoint(aCStack_18,(float)uVar6,(float)((ulonglong)uVar6 >> 0x20));
    (*pcVar4)(uVar2,aCStack_18);
    (**(code **)(*(int *)local_24 + 0xcc))(local_24,*(undefined4 *)(local_24 + 0x1b0),0);
    pWVar3 = (WeaponFactory *)WeaponFactory::sharedWeaponFactory();
    uVar2 = WeaponFactory::createWeaponFromAmmoType(pWVar3,5);
    *(undefined4 *)(local_24 + 0x1f0) = uVar2;
    cocos2d::CCObject::retain(*(CCObject **)(local_24 + 0x1f0));
    (**(code **)(**(int **)(local_24 + 0x1f0) + 0x1d4))(*(undefined4 *)(local_24 + 0x1f0));
    uVar6 = (**(code **)(**(int **)(local_24 + 0x1f0) + 0x23c))
                      (*(undefined4 *)(local_24 + 0x1f0),local_24 + 0x1a8);
    pcVar4 = *(code **)(**(int **)(local_24 + 0x1f0) + 0x4c);
    uVar2 = *(undefined4 *)(local_24 + 0x1f0);
    cocos2d::CCPoint::CCPoint(aCStack_18,(float)uVar6,(float)((ulonglong)uVar6 >> 0x20));
    (*pcVar4)(uVar2,aCStack_18);
    *(undefined4 *)(*(int *)(local_24 + 0x1f0) + 0x15c) = 0x3e800000;
    (**(code **)(**(int **)(*(int *)(local_24 + 0x1f0) + 0x1f0) + 0x98))
              (*(undefined4 *)(*(int *)(local_24 + 0x1f0) + 0x1f0),0);
    uVar2 = cocos2d::CCNode::create();
    *(undefined4 *)(local_24 + 0x1b8) = uVar2;
    uVar6 = cocos2d::CCObject::retain(*(CCObject **)(local_24 + 0x1b8));
    pcVar4 = *(code **)(**(int **)(local_24 + 0x1b8) + 0x4c);
    uVar2 = *(undefined4 *)(local_24 + 0x1b8);
    cocos2d::CCPoint::CCPoint(aCStack_18,(float)uVar6,(float)((ulonglong)uVar6 >> 0x20));
    (*pcVar4)(uVar2,aCStack_18);
    (**(code **)(**(int **)(local_24 + 0x1b8) + 200))
              (*(undefined4 *)(local_24 + 0x1b8),*(undefined4 *)(local_24 + 0x1f0));
    (**(code **)(*(int *)local_24 + 200))(local_24,*(undefined4 *)(local_24 + 0x1b8));
    uVar2 = cocos2d::CCSprite::createWithSpriteFrameName("hawkDrone.png");
    *(undefined4 *)(local_24 + 0x1b4) = uVar2;
    uVar6 = cocos2d::CCObject::retain(*(CCObject **)(local_24 + 0x1b4));
    pcVar4 = *(code **)(**(int **)(local_24 + 0x1b4) + 0x7c);
    uVar2 = *(undefined4 *)(local_24 + 0x1b4);
    cocos2d::CCPoint::CCPoint(aCStack_18,(float)uVar6,(float)((ulonglong)uVar6 >> 0x20));
    uVar6 = (*pcVar4)(uVar2,aCStack_18);
    pcVar4 = *(code **)(**(int **)(local_24 + 0x1b4) + 0x4c);
    uVar2 = *(undefined4 *)(local_24 + 0x1b4);
    cocos2d::CCPoint::CCPoint(aCStack_18,(float)uVar6,(float)((ulonglong)uVar6 >> 0x20));
    (*pcVar4)(uVar2,aCStack_18);
    (**(code **)(*(int *)local_24 + 0xcc))(local_24,*(undefined4 *)(local_24 + 0x1b4),0);
    uVar2 = cocos2d::CCParticleSystemQuad::create("Smoke.plist");
    *(undefined4 *)(local_24 + 0x1bc) = uVar2;
    (**(code **)(**(int **)(local_24 + 0x1bc) + 0x2f0))(*(undefined4 *)(local_24 + 0x1bc),2);
    (**(code **)(*worldLayer + 0xcc))(worldLayer,*(undefined4 *)(local_24 + 0x1bc),2);
    cocos2d::CCObject::retain(*(CCObject **)(local_24 + 0x1bc));
    local_24[0x1c4] = (HawkDrone)0x0;
    local_24[0x19c] = (HawkDrone)0x0;
    *(undefined4 *)(local_24 + 0x1d4) = 0x3f000000;
    *(undefined4 *)(local_24 + 0x1d8) = 0;
    *(undefined4 *)(local_24 + 0x1e0) = 0;
    *(undefined4 *)(local_24 + 0x1ac) = 0x32;
    initBody(local_24);
    uVar6 = initShape(local_24);
    local_24[0x1dc] = (HawkDrone)0x0;
    *(int *)(local_24 + 0x138) = 0;
    *(int *)(local_24 + 0x13c) = 0;
    *(int *)(local_24 + 0x140) = 0;
    *(int *)(local_24 + 0x144) = 0;
    *(int *)(local_24 + 0x1e4) = 0;
    *(int *)(local_24 + 0x108) = 0x3f000000;
    this_00 = (CCPoint *)(local_24 + 0x1e8);
    cocos2d::CCPoint::CCPoint(aCStack_18,(float)uVar6,(float)((ulonglong)uVar6 >> 0x20));
    cocos2d::CCPoint::operator=(this_00,aCStack_18);
    *(int *)(local_24 + 0x1f8) = 0;
    FUN_007c5e70(local_24 + 0x200,&DAT_007d9d20);
    pHVar1 = local_24;
    *(int *)(local_24 + 500) = 0x40400000;
    *(int *)(local_24 + 0x1f8) = 0;
    *(int *)(local_24 + 0x1fc) = 0x40400000;
    *(int *)(local_24 + 0x208) = 0;
    *(int *)(local_24 + 0x20c) = 0;
    *(int *)(local_24 + 0x210) = 0;
    *(int *)(local_24 + 0x214) = 0;
    (**(code **)(*(int *)local_24 + 0x220))(&local_38,local_24);
    *(int *)(pHVar1 + 0x120) = local_38;
    *(int *)(pHVar1 + 0x124) = iStack_34;
    *(int *)(pHVar1 + 0x128) = iStack_30;
    *(int *)(pHVar1 + 300) = iStack_2c;
    local_24[0x16c] = (HawkDrone)0x1;
  }
  return bVar5;
}

// ---- HawkDrone::~HawkDrone  @ 0x34fb78
/* WARNING: Removing unreachable block (ram,0x0034fc44) */
/* HawkDrone::~HawkDrone() */

HawkDrone * __thiscall HawkDrone::~HawkDrone(HawkDrone *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_00912720;
  *(undefined **)(this + 0x1a8) = &DAT_00912970;
  cocos2d::CCNode::removeAllChildrenWithCleanup((CCNode *)this,true);
  (**(code **)(**(int **)(this + 0x1f0) + 0x23c))(*(undefined4 *)(this + 0x1f0),0);
  cocos2d::CCObject::release(*(CCObject **)(this + 0x1f0));
  (**(code **)(**(int **)(this + 0x1bc) + 0xe8))(*(undefined4 *)(this + 0x1bc));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x1bc));
  (**(code **)(**(int **)(this + 0x1b8) + 0x104))(*(undefined4 *)(this + 0x1b8),0);
  cocos2d::CCObject::release(*(CCObject **)(this + 0x1b0));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x1b4));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x1b8));
  FUN_007c5914(this + 0x200);
  Enemy::~Enemy((Enemy *)this);
  return this;
}

// ---- HawkDrone::~HawkDrone  @ 0x34fc5c
/* HawkDrone::~HawkDrone() */

HawkDrone * __thiscall HawkDrone::~HawkDrone(HawkDrone *this)

{
  ~HawkDrone(this);
  operator_delete(this);
  return this;
}

// ---- HawkDrone::hover  @ 0x34fc78
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x0034fcc4 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* HawkDrone::hover() */

void HawkDrone::hover(void)

{
  int *in_r0;
  float fVar1;
  code *pcVar2;
  float in_s0;
  undefined4 in_s1;
  undefined4 local_20;
  undefined4 uStack_1c;
  undefined4 uStack_14;
  
  pcVar2 = *(code **)(*in_r0 + 0x1fc);
  fVar1 = (float)std::cos(in_s0);
  FUN_0034e3ac(0,in_s1,SUB84((double)fVar1 * 0.1 + 0.0,0),&local_20);
  (*pcVar2)(in_r0,uStack_14,local_20,uStack_1c);
  return;
}

// ---- HawkDrone::getSearchPoint  @ 0x34fcf0
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x0034fd84 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* HawkDrone::getSearchPoint() */

undefined4 HawkDrone::getSearchPoint(void)

{
  undefined4 in_r0;
  undefined4 uVar1;
  float fVar2;
  float fVar3;
  uint in_fpscr;
  float extraout_s0;
  float extraout_s0_00;
  undefined4 in_s1;
  
  uVar1 = FUN_0034e2a0();
  VectorSignedToFloat(uVar1,(byte)(in_fpscr >> 0x16) & 3);
  fVar2 = (float)std::abs(extraout_s0);
  uVar1 = FUN_0034e2a0();
  VectorSignedToFloat(uVar1,(byte)(in_fpscr >> 0x16) & 3);
  fVar3 = (float)std::abs(extraout_s0_00);
  FUN_0034e3ac(SUB84((double)(fVar2 + 250.0),0),in_s1,SUB84((double)(fVar3 + 800.0),0),in_r0);
  return in_r0;
}

// ---- HawkDrone::updateMoveTo  @ 0x34fda8
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x0034fdec */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* HawkDrone::updateMoveTo(cpVect) */

void HawkDrone::updateMoveTo
               (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
               undefined4 param_5,undefined4 param_6,int *param_7,undefined4 param_8,
               undefined4 param_9,undefined4 param_10,undefined4 param_11)

{
  code *pcVar1;
  double dVar2;
  undefined4 local_58;
  undefined4 uStack_54;
  undefined4 local_50;
  undefined4 uStack_4c;
  undefined4 local_48 [2];
  undefined4 local_40;
  undefined4 local_38 [2];
  undefined4 local_30;
  undefined4 local_28;
  undefined4 uStack_24;
  undefined4 uStack_1c;
  
  (**(code **)(*param_7 + 0x1ac))(local_38,param_7);
  FUN_0034e42c(param_9,param_2,param_11,param_4,local_38[0],param_6,local_30,&local_58);
  dVar2 = (double)cpvlength(local_58,uStack_54,local_50,uStack_4c);
  if ((float)dVar2 <= 160.0) {
    hover();
  }
  else {
    FUN_0034e560(local_58,param_2,local_50,local_48);
    pcVar1 = *(code **)(*param_7 + 0x1fc);
    FUN_0034e484(local_48[0],param_2,local_40,param_4,0,&local_28);
    (*pcVar1)(param_7,uStack_1c,local_28,uStack_24);
  }
  return;
}

// ---- HawkDrone::rotateWeapon  @ 0x350058
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003500e2 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* HawkDrone::rotateWeapon() */

void __thiscall HawkDrone::rotateWeapon(HawkDrone *this)

{
  float fVar1;
  undefined4 extraout_r0;
  undefined4 extraout_r0_00;
  undefined4 extraout_r0_01;
  undefined4 extraout_r0_02;
  uint uVar2;
  undefined4 uVar3;
  code *pcVar4;
  undefined4 in_fpscr;
  byte bVar5;
  double in_d0;
  double dVar6;
  undefined4 in_s3;
  undefined4 in_s5;
  float fVar7;
  double local_58;
  undefined4 local_38 [2];
  undefined4 local_30;
  undefined4 local_28 [2];
  undefined4 local_20;
  
  bVar5 = (byte)((uint)in_fpscr >> 0x18);
  fVar7 = *(float *)(this + 0x198);
  fVar1 = (float)(**(code **)(*(int *)this + 0x9c))(this);
  local_58 = (double)(fVar7 - fVar1);
  (**(code **)(*(int *)this + 0x9c))(this);
  dVar6 = cos(in_d0);
  sin(dVar6);
  FUN_0034e3ac(extraout_r0,(int)((ulonglong)dVar6 >> 0x20),extraout_r0_00,local_38);
  dVar6 = cos(dVar6);
  sin(dVar6);
  uVar3 = (undefined4)((ulonglong)dVar6 >> 0x20);
  FUN_0034e3ac(extraout_r0_01,uVar3,extraout_r0_02,local_28);
  FUN_0034e4d0(local_38[0],uVar3,local_30,in_s3,local_28[0],in_s5,local_20);
  if ((char)(bVar5 & 0xf | (byte)(((uint)(local_58 < 330.0) << 0x1f) >> 0x18) |
             (byte)(((uint)(local_58 == 330.0) << 0x1e) >> 0x18) |
            (byte)(((uint)(330.0 <= local_58) << 0x1d) >> 0x18)) < '\0') {
    if (210.0 < local_58) {
      if (local_58 <= 270.0) {
        local_58 = 210.0;
      }
      else {
        local_58 = 330.0;
      }
    }
  }
  if (dVar6 <= 0.0) {
    if (0.05 < ABS(dVar6)) {
      pcVar4 = *(code **)(*(int *)this + 0x30);
      (**(code **)(*(int *)this + 0x34))(this);
      uVar2 = std::fabs(SUB84(dVar6,0));
      (*pcVar4)(this,uVar2 ^ 0x80000000);
      (**(code **)(**(int **)(this + 0x1b8) + 0x98))
                (*(undefined4 *)(this + 0x1b8),
                 (float)((-local_58 - 180.0) - (double)*(float *)(this + 0x158)));
      goto LAB_0035026e;
    }
  }
  pcVar4 = *(code **)(*(int *)this + 0x30);
  (**(code **)(*(int *)this + 0x34))(this);
  uVar3 = std::fabs(SUB84(dVar6,0));
  (*pcVar4)(this,uVar3);
  (**(code **)(**(int **)(this + 0x1b8) + 0x98))
            (*(undefined4 *)(this + 0x1b8),(float)(local_58 - (double)*(float *)(this + 0x158)));
LAB_0035026e:
  *(float *)(this + 0x1e0) = (float)local_58;
  return;
}

// ---- HawkDrone::updateAim  @ 0x3502b8
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x00350380 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* HawkDrone::updateAim(cpVect) */

void HawkDrone::updateAim
               (float param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
               undefined4 param_5,undefined4 param_6,HawkDrone *param_7,undefined4 param_8,
               undefined4 param_9,undefined4 param_10,undefined4 param_11)

{
  uint uVar1;
  byte bVar2;
  float fVar3;
  uint in_fpscr;
  uint uVar4;
  uint uVar5;
  float fVar6;
  float fVar7;
  float fVar8;
  int iVar9;
  float local_78;
  undefined4 local_58 [2];
  undefined4 local_50;
  undefined4 local_48 [2];
  undefined4 local_40;
  undefined4 local_38 [2];
  undefined4 local_30;
  undefined4 local_28 [2];
  undefined4 local_20;
  
  if (360.0 < *(float *)(param_7 + 0x198)) {
    *(float *)(param_7 + 0x198) = *(float *)(param_7 + 0x198) - 360.0;
  }
  fVar7 = *(float *)(param_7 + 0x198);
  uVar4 = in_fpscr & 0xfffffff | (uint)(fVar7 < 0.0) << 0x1f | (uint)(fVar7 == 0.0) << 0x1e |
          (uint)(0.0 <= fVar7) << 0x1d;
  if ((int)uVar4 < 0) {
    *(float *)(param_7 + 0x198) = *(float *)(param_7 + 0x198) + 360.0;
  }
  fVar7 = (float)std::cos(param_1);
  fVar3 = (float)std::sin(param_1);
  fVar6 = SUB84((double)fVar7,0);
  FUN_0034e3ac(fVar6,param_2,SUB84((double)-fVar3,0),local_58);
  FUN_0034e560(param_9,param_2,param_11,local_48);
  FUN_0034e4d0(local_58[0],param_2,local_50,param_4,local_48[0],param_6,local_40);
  fVar8 = (float)(double)CONCAT44(param_2,fVar6);
  fVar7 = (float)std::cos(fVar6);
  fVar3 = (float)std::sin(fVar6);
  FUN_0034e3ac(SUB84((double)fVar7,0),param_2,SUB84((double)-fVar3,0),local_38);
  FUN_0034e560(param_9,param_2,param_11,local_28);
  FUN_0034e4d0(local_38[0],param_2,local_30,param_4,local_28[0],param_6,local_20);
  fVar7 = (float)(double)CONCAT44(param_2,SUB84((double)fVar7,0));
  uVar1 = uVar4 & 0xfffffff | (uint)(fVar7 < fVar8) << 0x1f | (uint)(fVar7 == fVar8) << 0x1e;
  uVar5 = uVar1 | (uint)(NAN(fVar7) || NAN(fVar8)) << 0x1c;
  bVar2 = (byte)(uVar1 >> 0x18);
  if ((bool)(bVar2 >> 6 & 1) || bVar2 >> 7 != ((byte)(uVar5 >> 0x1c) & 1)) {
    fVar7 = -1.0;
  }
  else {
    fVar7 = 1.0;
  }
  iVar9 = (int)(360.0 - (fVar8 + 1.0) * 180.0);
  local_78 = (float)VectorSignedToFloat(iVar9 / 0x14 + 1,(byte)(uVar5 >> 0x16) & 3);
  fVar3 = (float)VectorSignedToFloat(iVar9,(byte)(uVar5 >> 0x16) & 3);
  if ((char)((byte)((uVar4 & 0xfffffff) >> 0x18) | (byte)(((uint)(fVar3 < 3.0) << 0x1f) >> 0x18) |
             (byte)(((uint)(fVar3 == 3.0) << 0x1e) >> 0x18) |
            (byte)(((uint)(3.0 <= fVar3) << 0x1d) >> 0x18)) < '\0') {
    local_78 = 0.0;
  }
  *(float *)(param_7 + 0x198) = *(float *)(param_7 + 0x198) + fVar7 * local_78;
  rotateWeapon(param_7);
  return;
}

// ---- HawkDrone::updateSprite  @ 0x350518
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x00350880 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* HawkDrone::updateSprite(float) */

void __thiscall HawkDrone::updateSprite(HawkDrone *this,float param_1)

{
  byte bVar1;
  HawkDrone *pHVar2;
  float *pfVar3;
  int iVar4;
  float in_r1;
  uint extraout_r3;
  code *pcVar5;
  undefined4 uVar6;
  uint in_fpscr;
  uint uVar7;
  uint uVar8;
  float extraout_s0;
  float extraout_s1;
  undefined4 in_s3;
  undefined4 in_s5;
  double dVar9;
  float fVar10;
  float fVar11;
  int local_88;
  int iStack_84;
  int iStack_80;
  int iStack_7c;
  float local_78;
  HawkDrone *local_74;
  undefined1 local_69;
  undefined1 auStack_68 [8];
  double local_60;
  undefined4 local_58;
  undefined4 uStack_54;
  undefined4 uStack_50;
  undefined4 uStack_4c;
  undefined4 local_48 [2];
  undefined4 local_40;
  undefined4 local_38;
  undefined4 uStack_34;
  undefined4 uStack_30;
  undefined4 uStack_2c;
  undefined1 local_28 [8];
  undefined4 local_20;
  undefined4 uStack_1c;
  
  local_78 = in_r1;
  local_74 = this;
  (**(code **)(*(int *)this + 0x1f8))(param_1,local_28,this);
  dVar9 = (double)CONCAT44(uStack_1c,local_20) * 0.5 + 0.5;
  uVar8 = in_fpscr & 0xfffffff | (uint)(dVar9 < 0.0) << 0x1f | (uint)(dVar9 == 0.0) << 0x1e;
  uVar7 = uVar8 | (uint)NAN(dVar9) << 0x1c;
  bVar1 = (byte)(uVar8 >> 0x18);
  if ((bool)(bVar1 >> 6 & 1) || bVar1 >> 7 != ((byte)(uVar7 >> 0x1c) & 1)) {
    fVar10 = 0.0;
  }
  else {
    (**(code **)(*(int *)local_74 + 0x1f8))(auStack_68,local_74);
    fVar10 = (float)(local_60 * 0.5 + 0.5);
  }
  *(float *)(local_74 + 0x1e4) = fVar10;
  *(float *)(local_74 + 0x160) = *(float *)(local_74 + 0x160) + local_78;
  *(float *)(local_74 + 0x1f8) = *(float *)(local_74 + 0x1f8) + local_78;
  if (local_74[0x1c4] == (HawkDrone)0x0) {
    fVar10 = *(float *)(local_74 + 0x1e4) * 0.5;
  }
  else {
    fVar10 = *(float *)(local_74 + 0x1e4);
  }
  (**(code **)(**(int **)(local_74 + 0x1b0) + 0x38))(*(undefined4 *)(local_74 + 0x1b0),fVar10);
  local_74[0x1c4] = (HawkDrone)((byte)local_74[0x1c4] ^ 1);
  uVar8 = uVar7 & 0xfffffff | (uint)(*(float *)(local_74 + 0x1e4) == 0.0) << 0x1e |
          (uint)(0.0 <= *(float *)(local_74 + 0x1e4)) << 0x1d;
  bVar1 = (byte)(uVar8 >> 0x18);
  if ((bool)(bVar1 >> 5 & 1) && !(bool)(bVar1 >> 6)) {
    (**(code **)(**(int **)(local_74 + 0x1b0) + 0x90))(*(undefined4 *)(local_74 + 0x1b0),1);
  }
  else {
    *(undefined4 *)(local_74 + 0x1e4) = 0;
    (**(code **)(**(int **)(local_74 + 0x1b0) + 0x90))(*(undefined4 *)(local_74 + 0x1b0),0);
  }
  if (*(float *)(local_74 + 0x158) <= 0.1) {
    fVar10 = 0.0;
  }
  else {
    fVar10 = *(float *)(local_74 + 0x158) * 0.5;
  }
  *(float *)(local_74 + 0x158) = fVar10;
  fVar11 = *(float *)(local_74 + 0x1e4);
  fVar10 = *(float *)(local_74 + 0x1d8) - local_78 * 0.15;
  if ((int)(uVar8 & 0xfffffff | (uint)(fVar11 < fVar10) << 0x1f | (uint)(fVar11 == fVar10) << 0x1e |
           (uint)(fVar10 <= fVar11) << 0x1d) < 0) {
    fVar10 = *(float *)(local_74 + 0x1d8) - local_78 * 0.15;
  }
  else {
    fVar10 = *(float *)(local_74 + 0x1e4);
  }
  *(float *)(local_74 + 0x1d8) = fVar10;
  fVar10 = *(float *)(local_74 + 0x1c0) - local_78 * 0.5;
  fVar11 = *(float *)(local_74 + 0x1d8);
  uVar8 = uVar8 & 0xfffffff | (uint)(fVar10 < fVar11) << 0x1f | (uint)(fVar10 == fVar11) << 0x1e |
          (uint)(fVar11 <= fVar10) << 0x1d;
  if ((int)uVar8 < 0) {
    fVar10 = *(float *)(local_74 + 0x1d8);
  }
  else {
    fVar10 = *(float *)(local_74 + 0x1c0) - local_78 * 0.5;
  }
  *(float *)(local_74 + 0x1c0) = fVar10;
  (**(code **)(**(int **)(local_74 + 0x1bc) + 0x268))
            (*(undefined4 *)(local_74 + 0x1bc),*(float *)(local_74 + 0x1c0) * 27.0);
  (**(code **)(**(int **)(local_74 + 0x1bc) + 0x278))
            (*(undefined4 *)(local_74 + 0x1bc),*(float *)(local_74 + 0x1c0) * 5.0);
  pcVar5 = *(code **)(**(int **)(local_74 + 0x1bc) + 0x1bc);
  uVar6 = *(undefined4 *)(local_74 + 0x1bc);
  getThrustPoint();
  fVar10 = (float)getThrustPoint();
  cocos2d::CCPoint::CCPoint((CCPoint *)local_48,fVar10,extraout_s1);
  (*pcVar5)(uVar6,local_48);
  fVar10 = (float)(**(code **)(*(int *)local_74 + 0x34))(local_74);
  uVar8 = uVar8 & 0xfffffff | (uint)(fVar10 < 0.0) << 0x1f | (uint)(fVar10 == 0.0) << 0x1e;
  uVar7 = uVar8 | (uint)NAN(fVar10) << 0x1c;
  bVar1 = (byte)(uVar8 >> 0x18);
  local_74[0x1dc] =
       (HawkDrone)(!(bool)(bVar1 >> 6 & 1) && bVar1 >> 7 == ((byte)(uVar7 >> 0x1c) & 1));
  updateThrust(local_74,extraout_s0);
  (**(code **)(*(int *)local_74 + 0x1ac))(local_48,local_74);
  FUN_0034e42c(local_48[0],extraout_s1,local_40,in_s3,(int)*(undefined8 *)(local_74 + 0x208),in_s5,
               (int)*(undefined8 *)(local_74 + 0x210),&local_38);
  dVar9 = (double)cpvlength(local_38,uStack_34,uStack_30,uStack_2c);
  pHVar2 = local_74;
  uVar8 = uVar7 & 0xfffffff | (uint)(dVar9 < 15.0) << 0x1f | (uint)(dVar9 == 15.0) << 0x1e |
          (uint)(15.0 <= dVar9) << 0x1d;
  uVar7 = extraout_r3;
  if (-1 < (int)uVar8) {
    uVar7 = 0;
  }
  if ((int)uVar8 < 0) {
    uVar7 = 1;
  }
  if ((uVar7 & 0xff) == 0) {
    *(int *)(local_74 + 0x218) = 0;
  }
  else {
    *(float *)(local_74 + 0x218) = *(float *)(local_74 + 0x218) + local_78;
  }
  (**(code **)(*(int *)local_74 + 0x1ac))(&local_88,local_74);
  *(int *)(pHVar2 + 0x208) = local_88;
  *(int *)(pHVar2 + 0x20c) = iStack_84;
  *(int *)(pHVar2 + 0x210) = iStack_80;
  *(int *)(pHVar2 + 0x214) = iStack_7c;
  if (local_74[0x16c] == (HawkDrone)0x0) {
    *(int *)(local_74 + 0x1a0) = 0;
  }
  else {
    *(float *)(local_74 + 0x1a0) = *(float *)(local_74 + 0x1a0) + local_78;
  }
  pfVar3 = (float *)(**(code **)(*(int *)local_74 + 0x50))(local_74);
  fVar10 = *pfVar3;
  iVar4 = (**(code **)(*(int *)local_74 + 0x50))(local_74);
  FUN_0034e3ac(SUB84((double)fVar10,0),extraout_s1,SUB84((double)*(float *)(iVar4 + 4),0),&local_58)
  ;
  if ((1.0 < *(float *)(local_74 + 0x1a0)) && (local_74[0x16c] != (HawkDrone)0x0)) {
    FUN_0034e3ac(0,extraout_s1,0,local_28);
    iVar4 = FUN_0034ea40(local_58,uStack_54,uStack_50,uStack_4c);
    if (iVar4 != 0) {
      local_69 = 1;
      goto LAB_0035099e;
    }
  }
  local_69 = 0;
LAB_0035099e:
  (**(code **)(*(int *)local_74 + 0x90))(local_74,local_69);
  (**(code **)(**(int **)(local_74 + 0x1b0) + 0x90))(*(int *)(local_74 + 0x1b0),local_69);
  (**(code **)(**(int **)(local_74 + 0x1bc) + 0x90))(*(int *)(local_74 + 0x1bc),local_69);
  return;
}

// ---- HawkDrone::updateStep  @ 0x350a08
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x00350c06 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* HawkDrone::updateStep(float) */

void HawkDrone::updateStep(float param_1)

{
  byte bVar1;
  HawkDrone *pHVar2;
  HawkDrone *in_r0;
  undefined4 uVar3;
  float in_r1;
  undefined4 extraout_r1;
  int iVar4;
  uint in_fpscr;
  uint uVar5;
  uint uVar6;
  uint uVar7;
  float extraout_s0;
  float extraout_s0_00;
  float extraout_s0_01;
  undefined4 in_s1;
  undefined4 in_s3;
  undefined4 in_s5;
  float fVar8;
  double dVar9;
  float fVar10;
  undefined4 local_48;
  undefined4 uStack_44;
  undefined4 uStack_40;
  undefined4 uStack_3c;
  float local_38;
  HawkDrone *local_34;
  int *local_2c;
  undefined4 local_28 [2];
  undefined4 local_20;
  undefined4 local_18;
  undefined4 uStack_14;
  undefined4 uStack_c;
  
  if (*(int *)(*(int *)(in_r0 + 0x1c8) + 0x90) == 0) {
    *(HawkDrone **)(*(int *)(in_r0 + 0x1c8) + 0x90) = in_r0;
    **(undefined4 **)(in_r0 + 0x1c8) = 0x34f501;
  }
  local_38 = in_r1;
  local_34 = in_r0;
  updateSprite(in_r0,param_1);
  dVar9 = *(double *)(*(int *)(local_34 + 0x1c8) + 0x58) * 0.95;
  cpBodySetAngle(*(undefined4 *)(local_34 + 0x1c8),extraout_r1,SUB84(dVar9,0),
                 (int)((ulonglong)dVar9 >> 0x20));
  dVar9 = *(double *)(*(int *)(local_34 + 0x1c8) + 0x30);
  uVar5 = in_fpscr & 0xfffffff | (uint)(dVar9 < -500.0) << 0x1f | (uint)(dVar9 == -500.0) << 0x1e |
          (uint)(-500.0 <= dVar9) << 0x1d;
  if ((int)uVar5 < 0) {
    *(undefined4 *)(local_34 + 0x1ac) = 0;
  }
  local_2c = (int *)(**(code **)(*(int *)local_34 + 0x20c))(local_34);
  if ((local_2c != (int *)0x0) &&
     ((**(code **)(*local_2c + 0x1b4))(local_2c,local_38), local_34[0x19c] != (HawkDrone)0x0)) {
    (**(code **)(*local_2c + 0x25c))(local_2c,local_38);
  }
  local_34[0x19c] = (HawkDrone)0x0;
  iVar4 = *(int *)(local_34 + 0x15c);
  if (iVar4 == 3) {
    *(float *)(local_34 + 0x1f8) = *(float *)(local_34 + 0x1f8) + local_38;
    if (*(float *)(local_34 + 500) < *(float *)(local_34 + 0x1f8)) {
      local_34[0x19c] = (HawkDrone)0x1;
      fVar8 = *(float *)(local_34 + 0x1f8);
      fVar10 = *(float *)(local_34 + 0x1fc) + *(float *)(local_34 + 500);
      uVar5 = uVar5 & 0xfffffff | (uint)(fVar8 < fVar10) << 0x1f | (uint)(fVar8 == fVar10) << 0x1e;
      uVar6 = uVar5 | (uint)(NAN(fVar8) || NAN(fVar10)) << 0x1c;
      bVar1 = (byte)(uVar5 >> 0x18);
      if (!(bool)(bVar1 >> 6 & 1) && bVar1 >> 7 == ((byte)(uVar6 >> 0x1c) & 1)) {
        local_34[0x19c] = (HawkDrone)0x0;
        *(undefined4 *)(local_34 + 0x1f8) = 0;
        uVar3 = FUN_0034e2a0();
        VectorSignedToFloat(uVar3,(byte)(uVar6 >> 0x16) & 3);
        uVar3 = std::fabs(extraout_s0);
        *(undefined4 *)(local_34 + 500) = uVar3;
        uVar3 = FUN_0034e2a0();
        VectorSignedToFloat(uVar3,(byte)(uVar6 >> 0x16) & 3);
        uVar3 = std::fabs(extraout_s0_00);
        *(undefined4 *)(local_34 + 0x1fc) = uVar3;
      }
    }
    updateMoveTo(local_34,*(undefined4 *)(local_34 + 0x11c),*(undefined4 *)(local_34 + 0x110),
                 *(undefined4 *)(local_34 + 0x114));
    (**(code **)(*(int *)local_34 + 0x1ac))(local_28,local_34);
    FUN_0034e42c((int)*(undefined8 *)(local_34 + 0x110),in_s1,(int)*(undefined8 *)(local_34 + 0x118)
                 ,in_s3,local_28[0],in_s5,local_20,&local_18);
    updateAim(local_34,uStack_c,local_18,uStack_14);
    goto LAB_00350d0a;
  }
  if (iVar4 == 4) {
    (**(code **)(**(int **)(local_34 + 0x1b8) + 0x90))(*(undefined4 *)(local_34 + 0x1b8),0);
    goto LAB_00350d0a;
  }
  if (iVar4 != 2) goto LAB_00350d0a;
  *(float *)(local_34 + 0x164) = *(float *)(local_34 + 0x164) + local_38;
  fVar8 = *(float *)(local_34 + 0x164);
  fVar10 = *(float *)(local_34 + 0x168);
  uVar6 = uVar5 & 0xfffffff | (uint)(fVar8 < fVar10) << 0x1f | (uint)(fVar8 == fVar10) << 0x1e;
  uVar7 = uVar6 | (uint)(NAN(fVar8) || NAN(fVar10)) << 0x1c;
  bVar1 = (byte)(uVar6 >> 0x18);
  if ((bool)(bVar1 >> 6 & 1) || bVar1 >> 7 != ((byte)(uVar7 >> 0x1c) & 1)) {
    fVar8 = *(float *)(local_34 + 0x218);
    uVar5 = uVar5 & 0xfffffff | (uint)(fVar8 < 3.0) << 0x1f | (uint)(fVar8 == 3.0) << 0x1e;
    uVar7 = uVar5 | (uint)NAN(fVar8) << 0x1c;
    bVar1 = (byte)(uVar5 >> 0x18);
    if (!(bool)(bVar1 >> 6 & 1) && bVar1 >> 7 == ((byte)(uVar7 >> 0x1c) & 1)) goto LAB_00350c60;
  }
  else {
LAB_00350c60:
    uVar3 = FUN_0034e2a0();
    VectorSignedToFloat(uVar3,(byte)(uVar7 >> 0x16) & 3);
    fVar8 = (float)std::abs(extraout_s0_01);
    pHVar2 = local_34;
    *(float *)(local_34 + 0x168) = fVar8 + 15.0;
    *(undefined4 *)(local_34 + 0x164) = 0;
    (**(code **)(*(int *)local_34 + 0x220))(&local_48,local_34);
    *(undefined4 *)(pHVar2 + 0x120) = local_48;
    *(undefined4 *)(pHVar2 + 0x124) = uStack_44;
    *(undefined4 *)(pHVar2 + 0x128) = uStack_40;
    *(undefined4 *)(pHVar2 + 300) = uStack_3c;
    *(undefined4 *)(local_34 + 0x218) = 0;
  }
  updateMoveTo(local_34,*(undefined4 *)(local_34 + 300),*(undefined4 *)(local_34 + 0x120),
               *(undefined4 *)(local_34 + 0x124));
LAB_00350d0a:
  local_34[0xe6] = (HawkDrone)0x0;
  return;
}

// ---- HawkDrone::updateBody  @ 0x350d30
/* HawkDrone::updateBody(cpVect, float) */

void __thiscall HawkDrone::updateBody(float param_1,float param_2,HawkDrone *this)

{
  code *pcVar1;
  float in_stack_00000008;
  CCPoint aCStack_20 [12];
  
  pcVar1 = *(code **)(*(int *)this + 0x4c);
  cocos2d::CCPoint::CCPoint(aCStack_20,param_1,param_2);
  (*pcVar1)(this,aCStack_20);
  (**(code **)(*(int *)this + 0x98))(this,-in_stack_00000008 * 57.29578);
  return;
}

// ---- HawkDrone::updateRemoteStep  @ 0x350da0
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x00350e0a */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* HawkDrone::updateRemoteStep(float) */

void HawkDrone::updateRemoteStep(float param_1)

{
  HawkDrone *in_r0;
  int *piVar1;
  float in_r1;
  undefined4 extraout_r1;
  undefined4 in_fpscr;
  byte bVar2;
  float fVar3;
  float fVar4;
  float extraout_s0;
  float extraout_s0_00;
  undefined4 in_s1;
  undefined4 in_s3;
  undefined4 in_s5;
  undefined4 uVar5;
  undefined4 local_b8;
  undefined4 uStack_b4;
  undefined4 local_b0 [2];
  undefined4 local_a8;
  undefined4 local_a0;
  undefined4 uStack_9c;
  undefined4 local_98;
  undefined4 uStack_94;
  undefined4 local_90 [2];
  undefined4 local_88;
  undefined4 local_80 [2];
  undefined4 local_78;
  undefined4 local_70;
  undefined4 uStack_6c;
  undefined4 uStack_68;
  undefined4 uStack_64;
  undefined4 local_60 [2];
  undefined4 local_58;
  undefined4 local_50 [2];
  undefined4 local_48;
  undefined4 local_40 [2];
  undefined4 local_38;
  undefined4 local_30 [2];
  undefined4 local_28;
  undefined4 local_20 [2];
  undefined4 local_18;
  
  bVar2 = (byte)((uint)in_fpscr >> 0x18);
  if (*(int *)(*(int *)(in_r0 + 0x1c8) + 0x90) != 0) {
    *(undefined4 *)(*(int *)(in_r0 + 0x1c8) + 0x90) = 0;
    **(undefined4 **)(in_r0 + 0x1c8) = &LAB_0034f690_1;
  }
  (**(code **)(*(int *)in_r0 + 0x1ac))(param_1,local_60,in_r0);
  FUN_0034e42c((int)*(undefined8 *)(in_r0 + 0x170),in_s1,(int)*(undefined8 *)(in_r0 + 0x178),in_s3,
               local_60[0],in_s5,local_58,local_50);
  fVar3 = 0.3745 - in_r1 * 15.0;
  if ((char)(bVar2 & 0xf | (byte)(((uint)(fVar3 < 0.05) << 0x1f) >> 0x18) |
             (byte)(((uint)(fVar3 == 0.05) << 0x1e) >> 0x18) |
            (byte)(((uint)(0.05 <= fVar3) << 0x1d) >> 0x18)) < '\0') {
    uVar5 = 0x9999999a;
  }
  else {
    uVar5 = SUB84(0.3745 - (double)(in_r1 * 15.0),0);
  }
  FUN_0034e484(local_50[0],in_s1,local_48,in_s3,uVar5,local_b0);
  (**(code **)(*(int *)in_r0 + 0x1ac))(local_40,in_r0);
  FUN_0034e3d4(local_40[0],in_s1,local_38,in_s3,local_b0[0],in_s5,local_a8,&local_a0);
  fVar3 = (float)(**(code **)(*(int *)in_r0 + 500))(in_r0);
  fVar3 = (float)std::cos(fVar3);
  fVar4 = (float)(**(code **)(*(int *)in_r0 + 500))(in_r0);
  fVar4 = (float)std::sin(fVar4);
  fVar3 = (float)FUN_0034e3ac(SUB84((double)fVar3,0),in_s1,SUB84((double)fVar4,0),local_90);
  fVar3 = (float)std::cos(fVar3);
  fVar4 = (float)std::sin(extraout_s0);
  FUN_0034e3ac(SUB84((double)fVar3,0),in_s1,SUB84((double)fVar4,0),local_80);
  FUN_0034e484(local_90[0],in_s1,local_88,in_s3,0x66666666,local_30);
  FUN_0034e484(local_80[0],in_s1,local_78,in_s3,0x33333333,local_20);
  FUN_0034e3d4(local_30[0],in_s1,local_28,in_s3,local_20[0],in_s5,local_18,&local_70);
  fVar3 = (float)FUN_0034e7b0(local_70,uStack_6c,uStack_68,uStack_64);
  FUN_0034e654(local_a0,in_s1,local_98,*(undefined4 *)(in_r0 + 0x1c8));
  local_b8 = SUB84((double)-(fVar3 * 0.017453292),0);
  uStack_b4 = (undefined4)((ulonglong)(double)-(fVar3 * 0.017453292) >> 0x20);
  cpBodySetAngle(*(undefined4 *)(in_r0 + 0x1c8),extraout_r1,local_b8,uStack_b4);
  updateBody(in_r0,uStack_94,local_a0,uStack_9c);
  piVar1 = (int *)(**(code **)(*(int *)in_r0 + 0x20c))(in_r0);
  fVar3 = extraout_s0_00;
  if (piVar1 != (int *)0x0) {
    fVar3 = (float)(**(code **)(*piVar1 + 0x1b0))(piVar1,in_r1);
  }
  updateSprite(in_r0,fVar3);
  rotateWeapon(in_r0);
  return;
}

// ---- HawkDrone::lookForTarget  @ 0x351068
/* HawkDrone::lookForTarget() */

void __thiscall HawkDrone::lookForTarget(HawkDrone *this)

{
  int iVar1;
  
  iVar1 = (**(code **)(*(int *)this + 0x1f0))(this);
  if (iVar1 == 0) {
    *(undefined4 *)(this + 0x15c) = 2;
  }
  else {
    *(undefined4 *)(this + 0x15c) = 3;
  }
  return;
}

// ---- HawkDrone::getThrustPoint  @ 0x35109c
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x00351138 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* HawkDrone::getThrustPoint() */

undefined4 HawkDrone::getThrustPoint(void)

{
  undefined4 in_r0;
  int in_r1;
  undefined4 in_s1;
  CCPoint aCStack_38 [8];
  float local_30;
  float local_2c;
  cocos2d acStack_28 [8];
  CCAffineTransform aCStack_20 [24];
  
  cocos2d::CCPoint::CCPoint(aCStack_38,(CCPoint *)(in_r1 + 0x1e8));
  (**(code **)(**(int **)(in_r1 + 0x1b4) + 0x184))(aCStack_20,*(undefined4 *)(in_r1 + 0x1b4));
  cocos2d::__CCPointApplyAffineTransform((cocos2d *)&local_30,aCStack_38,aCStack_20);
  (**(code **)(*worldLayer + 0x188))(aCStack_20,worldLayer);
  cocos2d::__CCPointApplyAffineTransform(acStack_28,(CCPoint *)&local_30,aCStack_20);
  cocos2d::CCPoint::operator=((CCPoint *)&local_30,(CCPoint *)acStack_28);
  FUN_0034e3ac(SUB84((double)local_30,0),in_s1,SUB84((double)local_2c,0),in_r0);
  return in_r0;
}

// ---- HawkDrone::initBody  @ 0x35114c
/* HawkDrone::initBody() */

void __thiscall HawkDrone::initBody(HawkDrone *this)

{
  undefined4 uVar1;
  int iVar2;
  
  uVar1 = cpBodyNew(SUB84((double)*(float *)(this + 0x1d4),0),
                    (int)((ulonglong)(double)*(float *)(this + 0x1d4) >> 0x20),
                    SUB84((double)(*(float *)(this + 0x1d4) * 200.0),0),
                    (int)((ulonglong)(double)(*(float *)(this + 0x1d4) * 200.0) >> 0x20));
  *(undefined4 *)(this + 0x1c8) = uVar1;
  **(undefined4 **)(this + 0x1c8) = 0x34f501;
  iVar2 = *(int *)(this + 0x1c8);
  *(undefined4 *)(iVar2 + 0x88) = 0;
  *(undefined4 *)(iVar2 + 0x8c) = 0x40240000;
  *(HawkDrone **)(*(int *)(this + 0x1c8) + 0x90) = this;
  return;
}

// ---- HawkDrone::initShape  @ 0x3511c0
/* HawkDrone::initShape() */

void __thiscall HawkDrone::initShape(HawkDrone *this)

{
  undefined4 uVar1;
  int iVar2;
  float fVar3;
  
  fVar3 = playerScale * 40.0;
  (**(code **)(*(int *)this + 0x40))(this,playerScale);
  uVar1 = cpCircleShapeNew(*(undefined4 *)(this + 0x1c8),0,SUB84((double)fVar3,0),
                           (int)((ulonglong)(double)fVar3 >> 0x20),0,0,0,0);
  *(undefined4 *)(this + 0x1cc) = uVar1;
  iVar2 = *(int *)(this + 0x1cc);
  *(undefined4 *)(iVar2 + 0x30) = 0xa0000000;
  *(undefined4 *)(iVar2 + 0x34) = 0x3fe99999;
  iVar2 = *(int *)(this + 0x1cc);
  *(undefined4 *)(iVar2 + 0x38) = 0xa0000000;
  *(undefined4 *)(iVar2 + 0x3c) = 0x3fb99999;
  *(HawkDrone **)(*(int *)(this + 0x1cc) + 0x50) = this;
  return;
}

// ---- HawkDrone::resetBody  @ 0x351270
/* HawkDrone::resetBody() */

void __thiscall HawkDrone::resetBody(HawkDrone *this)

{
  int iVar1;
  
  iVar1 = *(int *)(this + 0x1c8);
  *(undefined4 *)(iVar1 + 0x38) = 0;
  *(undefined4 *)(iVar1 + 0x3c) = 0;
  *(undefined4 *)(iVar1 + 0x40) = 0;
  *(undefined4 *)(iVar1 + 0x44) = 0;
  iVar1 = *(int *)(this + 0x1c8);
  *(undefined4 *)(iVar1 + 0x48) = 0;
  *(undefined4 *)(iVar1 + 0x4c) = 0;
  *(undefined4 *)(iVar1 + 0x50) = 0;
  *(undefined4 *)(iVar1 + 0x54) = 0;
  cocos2d::CCParticleSystem::resetSystem(*(CCParticleSystem **)(this + 0x1bc));
  *(undefined4 *)(this + 0x1a0) = 0;
  return;
}

// ---- HawkDrone::addBodyShape  @ 0x3512d0
/* HawkDrone::addBodyShape() */

void __thiscall HawkDrone::addBodyShape(HawkDrone *this)

{
  if (this[0x1d0] != (HawkDrone)0x1) {
    cpSpaceAddBody(space,*(undefined4 *)(this + 0x1c8));
    cpSpaceAddShape(space,*(undefined4 *)(this + 0x1cc));
    this[0x1d0] = (HawkDrone)0x1;
  }
  return;
}

// ---- HawkDrone::removeBodyShape  @ 0x351328
/* HawkDrone::removeBodyShape() */

void __thiscall HawkDrone::removeBodyShape(HawkDrone *this)

{
  if (this[0x1d0] != (HawkDrone)0x0) {
    cpSpaceRemoveBody(space,*(undefined4 *)(this + 0x1c8));
    cpSpaceRemoveShape(space,*(undefined4 *)(this + 0x1cc));
    this[0x1d0] = (HawkDrone)0x0;
  }
  return;
}

// ---- HawkDrone::addDamage  @ 0x351378
/* HawkDrone::addDamage(int, std::string, int) */

void __thiscall
HawkDrone::addDamage(HawkDrone *this,int param_1,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  undefined4 uVar2;
  int iVar3;
  uint in_fpscr;
  double dVar4;
  float fVar5;
  float fVar6;
  
  *(int *)(this + 0x1ac) =
       *(int *)(this + 0x1ac) - param_1 & ~(*(int *)(this + 0x1ac) - param_1 >> 0x1f);
  thunk_FUN_007c653c(this + 0xec,param_3);
  *(undefined4 *)(this + 0xf0) = param_4;
  uVar1 = sndEng;
  iVar3 = *(int *)(this + 0x1c8);
  dVar4 = (double)VectorSignedToFloat(param_1,(byte)(in_fpscr >> 0x16) & 3);
  in_fpscr = in_fpscr & 0xfffffff;
  if (0.5 <= (dVar4 * 0.25) / 30.0) {
    dVar4 = (double)VectorSignedToFloat(param_1,(byte)(in_fpscr >> 0x16) & 3);
    fVar6 = (float)((dVar4 * 0.25) / 30.0 + 0.75);
  }
  else {
    fVar6 = 1.25;
  }
  uVar2 = FUN_0034e2a0();
  fVar5 = (float)VectorSignedToFloat(uVar2,(byte)(in_fpscr >> 0x16) & 3);
  Sound::playSoundPositionVP
            (uVar1,0xf,*(undefined4 *)(iVar3 + 0x28),*(undefined4 *)(iVar3 + 0x2c),
             *(undefined4 *)(iVar3 + 0x30),*(undefined4 *)(iVar3 + 0x34),fVar6,
             (fVar5 / 1.0737418e+09 - 1.0) * 0.25 + 1.0);
  return;
}

// ---- HawkDrone::getHP  @ 0x351484
/* HawkDrone::getHP() */

undefined4 __thiscall HawkDrone::getHP(HawkDrone *this)

{
  return *(undefined4 *)(this + 0x1ac);
}

// ---- HawkDrone::getBodyPosition  @ 0x351494
/* HawkDrone::getBodyPosition() */

undefined4 * HawkDrone::getBodyPosition(void)

{
  undefined4 *in_r0;
  int in_r1;
  undefined4 uVar1;
  undefined4 uVar2;
  int iVar3;
  undefined4 uVar4;
  
  iVar3 = *(int *)(in_r1 + 0x1c8);
  uVar1 = *(undefined4 *)(iVar3 + 0x2c);
  uVar2 = *(undefined4 *)(iVar3 + 0x30);
  uVar4 = *(undefined4 *)(iVar3 + 0x34);
  *in_r0 = *(undefined4 *)(iVar3 + 0x28);
  in_r0[1] = uVar1;
  in_r0[2] = uVar2;
  in_r0[3] = uVar4;
  return in_r0;
}

// ---- HawkDrone::getBodyVelocity  @ 0x3514b8
/* HawkDrone::getBodyVelocity() */

undefined4 * HawkDrone::getBodyVelocity(void)

{
  undefined4 *in_r0;
  int in_r1;
  undefined4 uVar1;
  undefined4 uVar2;
  int iVar3;
  undefined4 uVar4;
  
  if (*(int *)(*(int *)(in_r1 + 0x1c8) + 0x90) == 0) {
    uVar1 = *(undefined4 *)(in_r1 + 0x18c);
    uVar2 = *(undefined4 *)(in_r1 + 400);
    uVar4 = *(undefined4 *)(in_r1 + 0x194);
    *in_r0 = *(undefined4 *)(in_r1 + 0x188);
    in_r0[1] = uVar1;
    in_r0[2] = uVar2;
    in_r0[3] = uVar4;
  }
  else {
    iVar3 = *(int *)(in_r1 + 0x1c8);
    uVar1 = *(undefined4 *)(iVar3 + 0x3c);
    uVar2 = *(undefined4 *)(iVar3 + 0x40);
    uVar4 = *(undefined4 *)(iVar3 + 0x44);
    *in_r0 = *(undefined4 *)(iVar3 + 0x38);
    in_r0[1] = uVar1;
    in_r0[2] = uVar2;
    in_r0[3] = uVar4;
  }
  return in_r0;
}

// ---- HawkDrone::getBodyRotation  @ 0x3514fc
/* HawkDrone::getBodyRotation() */

float __thiscall HawkDrone::getBodyRotation(HawkDrone *this)

{
  return (float)*(double *)(*(int *)(this + 0x1c8) + 0x58);
}

// ---- HawkDrone::getFireAngle  @ 0x351518
/* HawkDrone::getFireAngle() */

undefined4 __thiscall HawkDrone::getFireAngle(HawkDrone *this)

{
  return *(undefined4 *)(this + 0x1e0);
}

// ---- HawkDrone::getWeapon  @ 0x351528
/* HawkDrone::getWeapon() */

undefined4 __thiscall HawkDrone::getWeapon(HawkDrone *this)

{
  return *(undefined4 *)(this + 0x1f0);
}

// ---- HawkDrone::weaponDidFire  @ 0x351538
/* HawkDrone::weaponDidFire(Item*) */

void __thiscall HawkDrone::weaponDidFire(HawkDrone *this,Item *param_1)

{
  undefined4 uVar1;
  CCNotificationCenter *this_00;
  CCObject *pCVar2;
  int iVar3;
  code *pcVar4;
  int iVar5;
  string asStack_20 [4];
  Item *local_1c;
  
  if (param_1 != (Item *)0x0) {
    local_1c = param_1;
    (**(code **)(*(int *)this + 0x210))
              (this,*(code **)(*(int *)this + 0x210),SUB84((double)*(float *)(param_1 + 0x16c),0),
               (int)((ulonglong)(double)*(float *)(param_1 + 0x16c) >> 0x20));
    pcVar4 = *(code **)(*(int *)local_1c + 0x310);
    uVar1 = (**(code **)(*(int *)this + 0x208))(this);
    iVar3 = *(int *)(this + 0x1c8);
    iVar5 = *(int *)(this + 0x1c8);
    (**(code **)(*(int *)this + 0x1c0))(asStack_20,this);
    (*pcVar4)(local_1c,uVar1,*(undefined4 *)(iVar3 + 0x28),*(undefined4 *)(iVar3 + 0x2c),
              *(undefined4 *)(iVar3 + 0x30),*(undefined4 *)(iVar3 + 0x34),
              *(undefined4 *)(iVar5 + 0x38),*(undefined4 *)(iVar5 + 0x3c),
              *(undefined4 *)(iVar5 + 0x40),*(undefined4 *)(iVar5 + 0x44),0x104,asStack_20);
    FUN_007c5914(asStack_20);
    this_00 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    (**(code **)(*(int *)this + 0x1c0))(asStack_20,this);
    pCVar2 = (CCObject *)cocos2d::CCString::create(asStack_20);
    cocos2d::CCNotificationCenter::postNotification(this_00,"RadarAlert",pCVar2);
    FUN_007c5914(asStack_20);
  }
  return;
}

// ---- HawkDrone::weaponDidFire  @ 0x351638
/* non-virtual thunk to HawkDrone::weaponDidFire(Item*) */

void __thiscall HawkDrone::weaponDidFire(HawkDrone *this,Item *param_1)

{
  weaponDidFire(this + -0x1a8,param_1);
  return;
}

// ---- HawkDrone::setCollisionType  @ 0x351640
/* HawkDrone::setCollisionType(CollisionType) */

void __thiscall HawkDrone::setCollisionType(HawkDrone *this,undefined4 param_2)

{
  *(undefined4 *)(*(int *)(this + 0x1cc) + 0x54) = param_2;
  *(undefined4 *)(*(int *)(this + 0x1cc) + 0x5c) = param_2;
  *(undefined4 *)(*(int *)(this + 0x1cc) + 0x58) = param_2;
  return;
}

// ---- HawkDrone::getPeerID  @ 0x351668
/* HawkDrone::getPeerID() */

undefined4 HawkDrone::getPeerID(void)

{
  undefined4 in_r0;
  int in_r1;
  
  FUN_007c64e8(in_r0,in_r1 + 0x200);
  return in_r0;
}

// ---- HawkDrone::setPeerID  @ 0x351688
/* HawkDrone::setPeerID(std::string) */

void __thiscall HawkDrone::setPeerID(HawkDrone *this,undefined4 param_2)

{
  int *piVar1;
  code *pcVar2;
  undefined1 auStack_14 [8];
  
  thunk_FUN_007c653c(this + 0x200,param_2);
  piVar1 = (int *)(**(code **)(*(int *)this + 0x20c))(this);
  pcVar2 = *(code **)(*piVar1 + 0x1f0);
  FUN_007c64e8(auStack_14,param_2);
  (*pcVar2)(piVar1,auStack_14);
  FUN_007c5914(auStack_14);
  return;
}

// ---- HawkDrone::setHP  @ 0x3516e4
/* HawkDrone::setHP(int) */

void __thiscall HawkDrone::setHP(HawkDrone *this,int param_1)

{
  *(int *)(this + 0x1ac) = param_1;
  return;
}

// ---- HawkDrone::setRemoteFireAngle  @ 0x3516f8
/* HawkDrone::setRemoteFireAngle(float) */

void __thiscall HawkDrone::setRemoteFireAngle(HawkDrone *this,float param_1)

{
  undefined4 in_r1;
  
  *(undefined4 *)(this + 0x198) = in_r1;
  return;
}

// ---- HawkDrone::setRemoteFire  @ 0x35170c
/* HawkDrone::setRemoteFire(bool) */

void __thiscall HawkDrone::setRemoteFire(HawkDrone *this,bool param_1)

{
  this[0x19c] = (HawkDrone)param_1;
  return;
}
