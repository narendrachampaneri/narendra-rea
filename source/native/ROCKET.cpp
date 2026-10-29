// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 16 functions

// ---- ROCKET::ROCKET  @ 0x3cb770
/* ROCKET::ROCKET() */

ROCKET * __thiscall ROCKET::ROCKET(ROCKET *this)

{
  Weapon::Weapon((Weapon *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_00918c88;
  return this;
}

// ---- ROCKET::init  @ 0x3cb79c
/* ROCKET::init() */

bool __thiscall ROCKET::init(ROCKET *this)

{
  char cVar1;
  undefined4 uVar2;
  
  cVar1 = Weapon::init((Weapon *)this);
  if (cVar1 == '\x01') {
    uVar2 = cocos2d::CCSprite::createWithSpriteFrameName("rocket.png");
    *(undefined4 *)(this + 0x1ec) = uVar2;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x1ec));
    (**(code **)(*(int *)this + 0x1e0))(this);
    *(undefined4 *)(this + 0x1f0) = 0;
    uVar2 = cocos2d::CCParticleSystemQuad::create("Smoke.plist");
    *(undefined4 *)(this + 0x200) = uVar2;
    (**(code **)(**(int **)(this + 0x200) + 0x2f0))(*(undefined4 *)(this + 0x200),2);
    (**(code **)(**(int **)(this + 0x200) + 0x2f8))(*(undefined4 *)(this + 0x200),1);
    (**(code **)(*worldLayer + 0xcc))(worldLayer,*(undefined4 *)(this + 0x200),2);
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x200));
    (**(code **)(*(int *)this + 0xcc))(this,*(undefined4 *)(this + 0x1ec),0);
    *(undefined4 *)(this + 0x188) = 0xc;
    *(undefined4 *)(this + 0x110) = 0;
    *(undefined4 *)(this + 500) = 0;
    *(undefined4 *)(this + 0x1fc) = 0;
    this[0x1f8] = (ROCKET)0x0;
    this[0x1f9] = (ROCKET)0x0;
  }
  return cVar1 == '\x01';
}

// ---- ROCKET::~ROCKET  @ 0x3cb8d4
/* WARNING: Removing unreachable block (ram,0x003cb94e) */
/* ROCKET::~ROCKET() */

ROCKET * __thiscall ROCKET::~ROCKET(ROCKET *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_00918c88;
  cocos2d::CCParticleSystem::stopSystem(*(CCParticleSystem **)(this + 0x200));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x200));
  if (*(int *)(this + 0x1f0) != 0) {
    (**(code **)(**(int **)(this + 0x1f0) + 0xe8))(*(undefined4 *)(this + 0x1f0));
    cocos2d::CCObject::release(*(CCObject **)(this + 0x1f0));
  }
  cocos2d::CCNode::removeAllChildren((CCNode *)this);
  cocos2d::CCObject::release(*(CCObject **)(this + 0x1ec));
  Weapon::~Weapon((Weapon *)this);
  return this;
}

// ---- ROCKET::~ROCKET  @ 0x3cb968
/* ROCKET::~ROCKET() */

ROCKET * __thiscall ROCKET::~ROCKET(ROCKET *this)

{
  ~ROCKET(this);
  operator_delete(this);
  return this;
}

// ---- ROCKET::initBody  @ 0x3cb988
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003cb9f4 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* ROCKET::initBody() */

void ROCKET::initBody(void)

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
  uVar1 = cpBodyNew(0xa0000000,0x3fb99999,0,0x40340000);
  iVar2 = local_3c;
  *(undefined4 *)(local_3c + 0xe8) = uVar1;
  **(undefined4 **)(local_3c + 0xe8) = 0x3cb5e5;
  *(int *)(*(int *)(local_3c + 0xe8) + 0x90) = local_3c;
  *(undefined4 *)(local_3c + 0xf0) = 0;
  *(undefined4 *)(local_3c + 0xf4) = 0x3ff00000;
  FUN_003ca604(0,in_s1,0,&local_50);
  *(undefined4 *)(iVar2 + 0xf8) = local_50;
  *(undefined4 *)(iVar2 + 0xfc) = uStack_4c;
  *(undefined4 *)(iVar2 + 0x100) = uStack_48;
  *(undefined4 *)(iVar2 + 0x104) = uStack_44;
  iVar2 = *(int *)(local_3c + 0xe8);
  *(undefined4 *)(iVar2 + 0x80) = 0;
  *(undefined4 *)(iVar2 + 0x84) = 0x407f4000;
  uVar1 = *(undefined4 *)(local_3c + 0xe8);
  FUN_003ca604(0,in_s1,0,&local_30);
  FUN_003ca604(0,in_s1,0,local_20);
  uVar1 = cpSegmentShapeNew(uVar1,uStack_24,local_30,uStack_2c);
  *(undefined4 *)(local_3c + 0xec) = uVar1;
  *(undefined4 *)(*(int *)(local_3c + 0xec) + 0x54) = 2;
  *(undefined4 *)(*(int *)(local_3c + 0xec) + 0x5c) = 2;
  *(undefined4 *)(*(int *)(local_3c + 0xec) + 0x58) = 2;
  iVar2 = *(int *)(local_3c + 0xec);
  *(undefined4 *)(iVar2 + 0x30) = 0xa0000000;
  *(undefined4 *)(iVar2 + 0x34) = 0x3fb99999;
  iVar2 = *(int *)(local_3c + 0xec);
  *(undefined4 *)(iVar2 + 0x38) = 0x80000000;
  *(undefined4 *)(iVar2 + 0x3c) = 0x3fefae14;
  *(int *)(*(int *)(local_3c + 0xec) + 0x50) = local_3c;
  return;
}

// ---- ROCKET::updateEffects  @ 0x3cbae8
/* ROCKET::updateEffects(float) */

void __thiscall ROCKET::updateEffects(ROCKET *this,float param_1)

{
  undefined4 uVar1;
  float in_r1;
  int iVar2;
  code *pcVar3;
  undefined4 uVar4;
  float extraout_s0;
  float extraout_s1;
  float extraout_s2;
  char *pcVar5;
  
  if (*(int *)(this + 0x1f0) == 0) {
    FUN_003ca4a4(0xff,0xff,0xff);
    pcVar5 = "streak_new.png";
    uVar1 = cocos2d::CCMotionStreak::create
                      (extraout_s0,extraout_s1,extraout_s2,(_ccColor3B *)0x3f000000,
                       (char *)0x3f800000);
    *(undefined4 *)(this + 0x1f0) = uVar1;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x1f0));
    param_1 = (float)(**(code **)(*worldLayer + 0xcc))
                               (worldLayer,*(undefined4 *)(this + 0x1f0),3,
                                *(code **)(*worldLayer + 0xcc),pcVar5);
  }
  (**(code **)(**(int **)(this + 0x1f0) + 0x1e4))(param_1,*(undefined4 *)(this + 0x1f0),0x40400000);
  pcVar3 = *(code **)(**(int **)(this + 0x1f0) + 0x4c);
  uVar4 = *(undefined4 *)(this + 0x1f0);
  uVar1 = (**(code **)(*(int *)this + 0x50))(this);
  (*pcVar3)(uVar4,uVar1);
  (**(code **)(**(int **)(this + 0x200) + 0x268))(*(undefined4 *)(this + 0x200),0x41d80000);
  (**(code **)(**(int **)(this + 0x200) + 0x278))(*(undefined4 *)(this + 0x200),0x40a00000);
  pcVar3 = *(code **)(**(int **)(this + 0x200) + 0x1bc);
  uVar4 = *(undefined4 *)(this + 0x200);
  uVar1 = (**(code **)(*(int *)this + 0x50))(this);
  (*pcVar3)(uVar4,uVar1);
  *(float *)(this + 500) = *(float *)(this + 500) + in_r1;
  if (0.2 < *(float *)(this + 500)) {
    *(undefined4 *)(this + 500) = 0;
    iVar2 = *(int *)(this + 0xe8);
    Sound::playSoundPositionVP
              (sndEng,8,*(undefined4 *)(iVar2 + 0x28),*(undefined4 *)(iVar2 + 0x2c),
               *(undefined4 *)(iVar2 + 0x30),*(undefined4 *)(iVar2 + 0x34),0x3f000000,0x40000000);
  }
  return;
}

// ---- ROCKET::setContact  @ 0x3cc128
/* ROCKET::setContact(bool, std::string, int) */

undefined1 ROCKET::setContact(int param_1,char param_2,string *param_3)

{
  bool bVar1;
  int iVar2;
  CCObject *pCVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  undefined4 uVar8;
  undefined4 uVar9;
  undefined4 uVar10;
  undefined4 uVar11;
  undefined4 uVar12;
  CCNotificationCenter *this;
  undefined1 uVar13;
  float extraout_s0;
  float extraout_s0_00;
  float fVar14;
  float extraout_s0_01;
  float extraout_s0_02;
  float extraout_s0_03;
  float extraout_s0_04;
  
  iVar2 = FUN_007c567c(param_1 + 0x154,param_3);
  if (iVar2 == 0) {
    *(undefined1 *)(param_1 + 0xe4) = 0;
    uVar13 = 0;
  }
  else {
    if ((int)((uint)(*(float *)(param_1 + 0x110) < 0.5) << 0x1f) < 0) {
      iVar2 = FUN_007c5724(param_3,&DAT_007e4a88);
      fVar14 = extraout_s0_00;
      if (iVar2 == 0) {
        if ((*(char *)(param_1 + 0xe4) != '\x01') && (param_2 != '\0')) {
          iVar2 = *(int *)(param_1 + 0xe8);
          fVar14 = (float)Sound::playSoundPositionVP
                                    (sndEng,0xf,*(undefined4 *)(iVar2 + 0x28),
                                     *(undefined4 *)(iVar2 + 0x2c),*(undefined4 *)(iVar2 + 0x30),
                                     *(undefined4 *)(iVar2 + 0x34),0x3f000000,0x3f800000);
        }
      }
      else {
        *(undefined1 *)(param_1 + 0x1f8) = 1;
      }
    }
    else {
      fVar14 = extraout_s0;
      if (param_2 != '\0') {
        *(undefined1 *)(param_1 + 0x1f8) = 1;
      }
    }
    if (((*(char *)(param_1 + 0x1f8) == '\0') ||
        (iVar2 = FUN_007c5724(param_3,&DAT_007e4a88), fVar14 = extraout_s0_01, iVar2 == 0)) ||
       (*(char *)(param_1 + 0x1f9) == '\x01')) {
      bVar1 = false;
    }
    else {
      bVar1 = true;
    }
    if (bVar1) {
      pCVar3 = (CCObject *)cocos2d::CCFloat::create(fVar14);
      uVar4 = cocos2d::CCFloat::create(extraout_s0_02);
      uVar5 = cocos2d::CCFloat::create(extraout_s0_03);
      uVar6 = cocos2d::CCFloat::create(extraout_s0_04);
      uVar7 = cocos2d::CCInteger::create(0xc);
      uVar8 = cocos2d::CCInteger::create(100);
      uVar9 = cocos2d::CCInteger::create(0);
      uVar10 = cocos2d::CCInteger::create(0);
      uVar11 = cocos2d::CCString::create(param_3);
      uVar12 = cocos2d::CCString::create((string *)(param_1 + 0x154));
      pCVar3 = (CCObject *)
               cocos2d::CCArray::create
                         (pCVar3,uVar4,uVar5,uVar6,uVar7,uVar8,uVar9,uVar10,uVar11,uVar12,0);
      this = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
      cocos2d::CCNotificationCenter::postNotification(this,"PlayerDamaged",pCVar3);
      *(undefined1 *)(param_1 + 0x1f9) = 1;
    }
    *(char *)(param_1 + 0xe4) = param_2;
    uVar13 = *(undefined1 *)(param_1 + 0xe4);
  }
  return uVar13;
}

// ---- ROCKET::setPrimaryConfiguration  @ 0x3cc33c
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003cc368 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* ROCKET::setPrimaryConfiguration() */

void __thiscall ROCKET::setPrimaryConfiguration(ROCKET *this)

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
    FUN_003ca80c(0,fVar4,0,*(undefined4 *)(this + 0xe8));
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
  return;
}

// ---- ROCKET::setSecondaryConfiguration  @ 0x3cc460
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003cc48c */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* ROCKET::setSecondaryConfiguration() */

void __thiscall ROCKET::setSecondaryConfiguration(ROCKET *this)

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
    FUN_003ca80c(0,fVar4,0,*(undefined4 *)(this + 0xe8));
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
  return;
}

// ---- ROCKET::setMapConfiguration  @ 0x3cc584
/* ROCKET::setMapConfiguration() */

void ROCKET::setMapConfiguration(void)

{
  int *in_r0;
  code *pcVar1;
  int iVar2;
  float in_s0;
  float in_s1;
  undefined8 uVar3;
  CCPoint aCStack_18 [8];
  
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
  return;
}

// ---- ROCKET::isRight  @ 0x3cc640
/* ROCKET::isRight() */

bool __thiscall ROCKET::isRight(ROCKET *this)

{
  float fVar1;
  
  fVar1 = (float)(**(code **)(**(int **)(this + 0x1ec) + 0x34))(*(undefined4 *)(this + 0x1ec));
  return 1.0 < fVar1;
}

// ---- ROCKET::setRight  @ 0x3cc67c
/* ROCKET::setRight(bool) */

void ROCKET::setRight(bool param_1)

{
  return;
}

// ---- ROCKET::removeWeapon  @ 0x3cc68c
/* ROCKET::removeWeapon() */

void ROCKET::removeWeapon(void)

{
  CCObject *in_r0;
  CCNotificationCenter *this;
  float in_s0;
  
  cocos2d::CCNode::scheduleOnce((_func_void_float *)in_r0,in_s0);
  this = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::postNotification(this,"WeaponUpdate",in_r0);
  return;
}

// ---- ROCKET::delayedRemoveWeapon  @ 0x3cc6e0
/* ROCKET::delayedRemoveWeapon() */

void __thiscall ROCKET::delayedRemoveWeapon(ROCKET *this)

{
  CCNotificationCenter *this_00;
  
  this_00 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::postNotification(this_00,"WeaponRemove",(CCObject *)this);
  return;
}

// ---- ROCKET::detonate  @ 0x3cc708
/* ROCKET::detonate(cocos2d::CCObject*) */

void __thiscall ROCKET::detonate(ROCKET *this,CCObject *param_1)

{
  CCNotificationCenter *pCVar1;
  
  pCVar1 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::postNotification(pCVar1,"ExplosiveCreate",param_1);
  pCVar1 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::postNotification(pCVar1,"Explosive",param_1);
  return;
}

// ---- ROCKET::create  @ 0x42763c
/* ROCKET::create() */

ROCKET * ROCKET::create(void)

{
  bool bVar1;
  ROCKET *this;
  int iVar2;
  
  this = operator_new(0x208);
  ROCKET(this);
  if ((this == (ROCKET *)0x0) || (iVar2 = (**(code **)(*(int *)this + 0x18))(this), iVar2 == 0)) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (bVar1) {
    cocos2d::CCObject::autorelease((CCObject *)this);
  }
  else {
    if (this != (ROCKET *)0x0) {
      (**(code **)(*(int *)this + 8))(this);
    }
    this = (ROCKET *)0x0;
  }
  return this;
}
