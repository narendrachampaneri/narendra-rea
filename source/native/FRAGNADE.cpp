// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 19 functions

// ---- FRAGNADE::FRAGNADE  @ 0x3325b0
/* FRAGNADE::FRAGNADE() */

FRAGNADE * __thiscall FRAGNADE::FRAGNADE(FRAGNADE *this)

{
  Weapon::Weapon((Weapon *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_00911420;
  return this;
}

// ---- FRAGNADE::init  @ 0x3325dc
/* FRAGNADE::init() */

bool __thiscall FRAGNADE::init(FRAGNADE *this)

{
  char cVar1;
  undefined4 uVar2;
  
  cVar1 = Weapon::init((Weapon *)this);
  if (cVar1 == '\x01') {
    uVar2 = cocos2d::CCSprite::createWithSpriteFrameName("grenade.png");
    *(undefined4 *)(this + 0x1ec) = uVar2;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x1ec));
    (**(code **)(*(int *)this + 0x1e0))(this);
    *(undefined4 *)(this + 0x1f0) = 0;
    *(undefined2 *)(this + 0x1e8) = 2;
    *(undefined2 *)(this + 0x1ea) = 5;
    (**(code **)(*(int *)this + 0xcc))(this,*(undefined4 *)(this + 0x1ec),0);
    *(undefined4 *)(this + 0x188) = 2;
    *(undefined4 *)(this + 0x110) = 0;
  }
  return cVar1 == '\x01';
}

// ---- FRAGNADE::~FRAGNADE  @ 0x332680
/* WARNING: Removing unreachable block (ram,0x003326ea) */
/* FRAGNADE::~FRAGNADE() */

FRAGNADE * __thiscall FRAGNADE::~FRAGNADE(FRAGNADE *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_00911420;
  cocos2d::CCNode::unscheduleAllSelectors((CCNode *)this);
  cocos2d::CCNode::removeAllChildren((CCNode *)this);
  cocos2d::CCObject::release(*(CCObject **)(this + 0x1ec));
  if (*(int *)(this + 0x1f0) != 0) {
    (**(code **)(**(int **)(this + 0x1f0) + 0xe8))(*(undefined4 *)(this + 0x1f0));
    cocos2d::CCObject::release(*(CCObject **)(this + 0x1f0));
  }
  Weapon::~Weapon((Weapon *)this);
  return this;
}

// ---- FRAGNADE::~FRAGNADE  @ 0x332704
/* FRAGNADE::~FRAGNADE() */

FRAGNADE * __thiscall FRAGNADE::~FRAGNADE(FRAGNADE *this)

{
  ~FRAGNADE(this);
  operator_delete(this);
  return this;
}

// ---- FRAGNADE::initBody  @ 0x332720
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x00332786 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* FRAGNADE::initBody() */

void FRAGNADE::initBody(void)

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
  uVar1 = cpBodyNew(0xa0000000,0x3fb99999,0,0x40200000);
  iVar2 = local_3c;
  *(undefined4 *)(local_3c + 0xe8) = uVar1;
  **(undefined4 **)(local_3c + 0xe8) = 0x332425;
  *(int *)(*(int *)(local_3c + 0xe8) + 0x90) = local_3c;
  *(undefined4 *)(local_3c + 0xf0) = 0x7ae147ae;
  *(undefined4 *)(local_3c + 0xf4) = 0x3fefae14;
  FUN_0033149c(0,in_s1,0,&local_50);
  *(undefined4 *)(iVar2 + 0xf8) = local_50;
  *(undefined4 *)(iVar2 + 0xfc) = uStack_4c;
  *(undefined4 *)(iVar2 + 0x100) = uStack_48;
  *(undefined4 *)(iVar2 + 0x104) = uStack_44;
  uVar1 = *(undefined4 *)(local_3c + 0xe8);
  FUN_0033149c(0,in_s1,0,&local_30);
  FUN_0033149c(0,in_s1,0,local_20);
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

// ---- FRAGNADE::updateRemoteWeaponStep  @ 0x332870
/* FRAGNADE::updateRemoteWeaponStep(float) */

void FRAGNADE::updateRemoteWeaponStep(float param_1)

{
  Weapon *in_r0;
  undefined4 in_r1;
  
  Weapon::updateRemoteWeaponStep(in_r0,param_1);
  (**(code **)(*(int *)in_r0 + 0x1b4))(in_r0,in_r1);
  return;
}

// ---- FRAGNADE::updateItemStep  @ 0x332898
/* FRAGNADE::updateItemStep(float) */

float __thiscall FRAGNADE::updateItemStep(FRAGNADE *this,float param_1)

{
  char cVar1;
  undefined4 uVar2;
  float in_r1;
  code *pcVar3;
  undefined4 uVar4;
  float extraout_s0;
  float extraout_s0_00;
  float extraout_s1;
  float extraout_s2;
  char *pcVar5;
  
  *(undefined4 *)(this + 0x118) = 0;
  *(undefined4 *)(this + 0x11c) = 0;
  if (this[0xe5] == (FRAGNADE)0x0) {
    cVar1 = (**(code **)(*(int *)this + 0x19c))(this);
    param_1 = extraout_s0;
    if (cVar1 != '\x01') {
      if (*(int *)(this + 0x1f0) == 0) {
        FUN_0033139c(0xff,0xff,0xff);
        pcVar5 = "streak_new.png";
        uVar2 = cocos2d::CCMotionStreak::create
                          (extraout_s0_00,extraout_s1,extraout_s2,(_ccColor3B *)0x3f000000,
                           (char *)0x3f800000);
        *(undefined4 *)(this + 0x1f0) = uVar2;
        cocos2d::CCObject::retain(*(CCObject **)(this + 0x1f0));
        (**(code **)(*worldLayer + 0xcc))
                  (worldLayer,*(undefined4 *)(this + 0x1f0),3,*(code **)(*worldLayer + 0xcc),pcVar5)
        ;
      }
      (**(code **)(**(int **)(this + 0x1f0) + 0x1e4))(*(undefined4 *)(this + 0x1f0),0x40400000);
      pcVar3 = *(code **)(**(int **)(this + 0x1f0) + 0x4c);
      uVar4 = *(undefined4 *)(this + 0x1f0);
      uVar2 = (**(code **)(*(int *)this + 0x50))(this);
      param_1 = (float)(*pcVar3)(uVar4,uVar2);
      *(float *)(this + 0x110) = *(float *)(this + 0x110) + in_r1;
    }
    if (1.75 < *(float *)(this + 0x110)) {
      this[0xe5] = (FRAGNADE)0x1;
    }
  }
  return param_1;
}

// ---- FRAGNADE::setContact  @ 0x3329e8
/* FRAGNADE::setContact(bool, std::string, int) */

FRAGNADE __thiscall
FRAGNADE::setContact(FRAGNADE *this,FRAGNADE param_1,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  int iVar2;
  undefined4 uVar3;
  FRAGNADE FVar4;
  uint in_fpscr;
  float fVar5;
  
  iVar2 = FUN_007c567c(this + 0x154,param_3);
  uVar1 = sndEng;
  if (iVar2 == 0) {
    this[0xe4] = (FRAGNADE)0x0;
    FVar4 = (FRAGNADE)0x0;
  }
  else {
    if ((this[0xe4] != (FRAGNADE)0x1) && (param_1 != (FRAGNADE)0x0)) {
      uVar3 = FUN_00331390();
      fVar5 = (float)VectorSignedToFloat(uVar3,(byte)(in_fpscr >> 0x16) & 3);
      if (fVar5 / 1.0737418e+09 - 1.0 <= 0.0) {
        uVar3 = 0xe;
      }
      else {
        uVar3 = 0xd;
      }
      iVar2 = *(int *)(this + 0xe8);
      Sound::playSoundPosition
                (uVar1,uVar3,*(undefined4 *)(iVar2 + 0x28),*(undefined4 *)(iVar2 + 0x2c),
                 *(undefined4 *)(iVar2 + 0x30),*(undefined4 *)(iVar2 + 0x34),param_4);
    }
    this[0xe4] = param_1;
    FVar4 = this[0xe4];
  }
  return FVar4;
}

// ---- FRAGNADE::setPrimaryConfiguration  @ 0x332ab4
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x00332ae0 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* FRAGNADE::setPrimaryConfiguration() */

void __thiscall FRAGNADE::setPrimaryConfiguration(FRAGNADE *this)

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
    FUN_003316a4(0,fVar4,0,*(undefined4 *)(this + 0xe8));
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

// ---- FRAGNADE::setSecondaryConfiguration  @ 0x332bd8
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x00332c04 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* FRAGNADE::setSecondaryConfiguration() */

void __thiscall FRAGNADE::setSecondaryConfiguration(FRAGNADE *this)

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
    FUN_003316a4(0,fVar4,0,*(undefined4 *)(this + 0xe8));
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

// ---- FRAGNADE::setMapConfiguration  @ 0x332d00
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x00332d2c */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* FRAGNADE::setMapConfiguration() */

void FRAGNADE::setMapConfiguration(void)

{
  int *piVar1;
  int *in_r0;
  code *pcVar2;
  int iVar3;
  float fVar4;
  undefined4 in_s1;
  float extraout_s1;
  float extraout_s1_00;
  float extraout_s1_01;
  int local_30;
  int iStack_2c;
  int iStack_28;
  int iStack_24;
  int *local_1c;
  CCPoint aCStack_18 [8];
  
  local_1c = in_r0;
  fVar4 = (float)FUN_0033149c(0,in_s1,SUB84((double)(gravityFactor * -250.0),0),&local_30);
  in_r0[0x3e] = local_30;
  in_r0[0x3f] = iStack_2c;
  in_r0[0x40] = iStack_28;
  in_r0[0x41] = iStack_24;
  pcVar2 = *(code **)(*(int *)local_1c[0x7b] + 0x4c);
  iVar3 = local_1c[0x7b];
  cocos2d::CCPoint::CCPoint(aCStack_18,fVar4,extraout_s1);
  fVar4 = (float)(*pcVar2)(iVar3,aCStack_18);
  pcVar2 = *(code **)(*(int *)local_1c[0x7b] + 0x7c);
  iVar3 = local_1c[0x7b];
  cocos2d::CCPoint::CCPoint(aCStack_18,fVar4,extraout_s1_00);
  (*pcVar2)(iVar3,aCStack_18);
  fVar4 = (float)(**(code **)(*(int *)local_1c[0x7b] + 0x98))(local_1c[0x7b],0);
  piVar1 = local_1c;
  pcVar2 = *(code **)(*local_1c + 0x4c);
  cocos2d::CCPoint::CCPoint(aCStack_18,fVar4,extraout_s1_01);
  (*pcVar2)(piVar1,aCStack_18);
  (**(code **)(*local_1c + 0x40))(local_1c,playerScale);
  return;
}

// ---- FRAGNADE::isRight  @ 0x332e00
/* FRAGNADE::isRight() */

bool __thiscall FRAGNADE::isRight(FRAGNADE *this)

{
  float fVar1;
  
  fVar1 = (float)(**(code **)(**(int **)(this + 0x1ec) + 0x34))(*(undefined4 *)(this + 0x1ec));
  return 1.0 < fVar1;
}

// ---- FRAGNADE::setRight  @ 0x332e3c
/* FRAGNADE::setRight(bool) */

void __thiscall FRAGNADE::setRight(FRAGNADE *this,bool param_1)

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

// ---- FRAGNADE::removeWeapon  @ 0x332e7c
/* FRAGNADE::removeWeapon() */

void FRAGNADE::removeWeapon(void)

{
  CCObject *in_r0;
  CCNotificationCenter *this;
  float in_s0;
  
  cocos2d::CCNode::scheduleOnce((_func_void_float *)in_r0,in_s0);
  this = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::postNotification(this,"WeaponUpdate",in_r0);
  return;
}

// ---- FRAGNADE::delayedRemoveWeapon  @ 0x332ed0
/* FRAGNADE::delayedRemoveWeapon() */

void __thiscall FRAGNADE::delayedRemoveWeapon(FRAGNADE *this)

{
  CCNotificationCenter *this_00;
  
  this_00 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::postNotification(this_00,"WeaponRemove",(CCObject *)this);
  return;
}

// ---- FRAGNADE::detonate  @ 0x332ef8
/* FRAGNADE::detonate(cocos2d::CCObject*) */

void __thiscall FRAGNADE::detonate(FRAGNADE *this,CCObject *param_1)

{
  CCNotificationCenter *pCVar1;
  
  pCVar1 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::postNotification(pCVar1,"ExplosiveCreate",param_1);
  pCVar1 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::postNotification(pCVar1,"Explosive",param_1);
  return;
}

// ---- FRAGNADE::getWeaponTexture  @ 0x332f38
/* FRAGNADE::getWeaponTexture() */

undefined4 __thiscall FRAGNADE::getWeaponTexture(FRAGNADE *this)

{
  undefined4 uVar1;
  
  uVar1 = (**(code **)(**(int **)(this + 0x1ec) + 500))(*(undefined4 *)(this + 0x1ec));
  return uVar1;
}

// ---- FRAGNADE::getWeaponRect  @ 0x332f60
/* FRAGNADE::getWeaponRect() */

CCRect * FRAGNADE::getWeaponRect(void)

{
  CCRect *in_r0;
  CCRect *pCVar1;
  int in_r1;
  
  pCVar1 = (CCRect *)cocos2d::CCSprite::getTextureRect(*(CCSprite **)(in_r1 + 0x1ec));
  cocos2d::CCRect::CCRect(in_r0,pCVar1);
  return in_r0;
}

// ---- FRAGNADE::create  @ 0x4271dc
/* FRAGNADE::create() */

FRAGNADE * FRAGNADE::create(void)

{
  bool bVar1;
  FRAGNADE *this;
  int iVar2;
  
  this = operator_new(0x1f8);
  FRAGNADE(this);
  if ((this == (FRAGNADE *)0x0) || (iVar2 = (**(code **)(*(int *)this + 0x18))(this), iVar2 == 0)) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (bVar1) {
    cocos2d::CCObject::autorelease((CCObject *)this);
  }
  else {
    if (this != (FRAGNADE *)0x0) {
      (**(code **)(*(int *)this + 8))(this);
    }
    this = (FRAGNADE *)0x0;
  }
  return this;
}
