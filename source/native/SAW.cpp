// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 18 functions

// ---- SAW::SAW  @ 0x3daad0
/* SAW::SAW() */

SAW * __thiscall SAW::SAW(SAW *this)

{
  Weapon::Weapon((Weapon *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_009198c8;
  return this;
}

// ---- SAW::init  @ 0x3daafc
/* SAW::init() */

bool __thiscall SAW::init(SAW *this)

{
  char cVar1;
  undefined4 uVar2;
  
  cVar1 = Weapon::init((Weapon *)this);
  if (cVar1 == '\x01') {
    uVar2 = cocos2d::CCSprite::createWithSpriteFrameName("wormDroneSaw.png");
    *(undefined4 *)(this + 0x1ec) = uVar2;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x1ec));
    (**(code **)(*(int *)this + 0x1e0))(this);
    *(undefined4 *)(this + 0x1f0) = 0;
    (**(code **)(*(int *)this + 0xcc))(this,*(undefined4 *)(this + 0x1ec),0);
    *(undefined4 *)(this + 0x188) = 0x18;
    *(undefined4 *)(this + 0x110) = 0;
    *(undefined4 *)(this + 0x1fc) = 0;
    *(undefined4 *)(this + 500) = 0;
  }
  return cVar1 == '\x01';
}

// ---- SAW::~SAW  @ 0x3daba4
/* WARNING: Removing unreachable block (ram,0x003dac06) */
/* SAW::~SAW() */

SAW * __thiscall SAW::~SAW(SAW *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_009198c8;
  cocos2d::CCNode::removeAllChildren((CCNode *)this);
  cocos2d::CCObject::release(*(CCObject **)(this + 0x1ec));
  if (*(int *)(this + 0x1f0) != 0) {
    (**(code **)(**(int **)(this + 0x1f0) + 0xe8))(*(undefined4 *)(this + 0x1f0));
    cocos2d::CCObject::release(*(CCObject **)(this + 0x1f0));
  }
  Weapon::~Weapon((Weapon *)this);
  return this;
}

// ---- SAW::~SAW  @ 0x3dac20
/* SAW::~SAW() */

SAW * __thiscall SAW::~SAW(SAW *this)

{
  ~SAW(this);
  operator_delete(this);
  return this;
}

// ---- SAW::initBody  @ 0x3dac40
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003dacac */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* SAW::initBody() */

void SAW::initBody(void)

{
  int in_r0;
  undefined4 uVar1;
  int iVar2;
  undefined4 in_s1;
  undefined4 local_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  int local_1c;
  undefined4 local_14;
  
  local_14 = 0x3dcccccd;
  local_1c = in_r0;
  uVar1 = cpBodyNew(0xa0000000,0x3fb99999,0,0x40340000);
  iVar2 = local_1c;
  *(undefined4 *)(local_1c + 0xe8) = uVar1;
  **(undefined4 **)(local_1c + 0xe8) = 0x3da945;
  *(int *)(*(int *)(local_1c + 0xe8) + 0x90) = local_1c;
  *(undefined4 *)(local_1c + 0xf0) = 0;
  *(undefined4 *)(local_1c + 0xf4) = 0x3ff00000;
  FUN_003d9934(0,in_s1,0,&local_30);
  *(undefined4 *)(iVar2 + 0xf8) = local_30;
  *(undefined4 *)(iVar2 + 0xfc) = uStack_2c;
  *(undefined4 *)(iVar2 + 0x100) = uStack_28;
  *(undefined4 *)(iVar2 + 0x104) = uStack_24;
  iVar2 = *(int *)(local_1c + 0xe8);
  *(undefined4 *)(iVar2 + 0x80) = 0;
  *(undefined4 *)(iVar2 + 0x84) = 0x4072c000;
  uVar1 = cpCircleShapeNew(*(undefined4 *)(local_1c + 0xe8),0,0,0x40240000);
  *(undefined4 *)(local_1c + 0xec) = uVar1;
  *(undefined4 *)(*(int *)(local_1c + 0xec) + 0x54) = 2;
  *(undefined4 *)(*(int *)(local_1c + 0xec) + 0x5c) = 2;
  *(undefined4 *)(*(int *)(local_1c + 0xec) + 0x58) = 2;
  iVar2 = *(int *)(local_1c + 0xec);
  *(undefined4 *)(iVar2 + 0x30) = 0;
  *(undefined4 *)(iVar2 + 0x34) = 0x3ff00000;
  iVar2 = *(int *)(local_1c + 0xec);
  *(undefined4 *)(iVar2 + 0x38) = 0xa0000000;
  *(undefined4 *)(iVar2 + 0x3c) = 0x3fa99999;
  *(int *)(*(int *)(local_1c + 0xec) + 0x50) = local_1c;
  return;
}

// ---- SAW::updateEffects  @ 0x3dad68
/* SAW::updateEffects(float) */

void __thiscall SAW::updateEffects(SAW *this,float param_1)

{
  undefined4 uVar1;
  float fVar2;
  float in_r1;
  int iVar3;
  code *pcVar4;
  undefined4 uVar5;
  float extraout_s0;
  float extraout_s1;
  float extraout_s2;
  char *pcVar6;
  
  if (*(int *)(this + 0x1f0) == 0) {
    FUN_003d9834(0xff,0xff,0xff);
    pcVar6 = "streak_new.png";
    uVar1 = cocos2d::CCMotionStreak::create
                      (extraout_s0,extraout_s1,extraout_s2,(_ccColor3B *)0x3f000000,
                       (char *)0x3f800000);
    *(undefined4 *)(this + 0x1f0) = uVar1;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x1f0));
    param_1 = (float)(**(code **)(*worldLayer + 0xcc))
                               (worldLayer,*(undefined4 *)(this + 0x1f0),3,
                                *(code **)(*worldLayer + 0xcc),pcVar6);
  }
  (**(code **)(**(int **)(this + 0x1f0) + 0x1e4))(param_1,*(undefined4 *)(this + 0x1f0),0x40400000);
  pcVar4 = *(code **)(**(int **)(this + 0x1f0) + 0x4c);
  uVar5 = *(undefined4 *)(this + 0x1f0);
  uVar1 = (**(code **)(*(int *)this + 0x50))(this);
  (*pcVar4)(uVar5,uVar1);
  pcVar4 = *(code **)(**(int **)(this + 0x1ec) + 0x98);
  uVar1 = *(undefined4 *)(this + 0x1ec);
  fVar2 = (float)(**(code **)(**(int **)(this + 0x1ec) + 0x9c))(*(undefined4 *)(this + 0x1ec));
  (*pcVar4)(uVar1,fVar2 - in_r1 * 800.0);
  *(float *)(this + 500) = *(float *)(this + 500) + in_r1;
  if (0.3 < *(float *)(this + 500)) {
    *(undefined4 *)(this + 500) = 0;
    iVar3 = *(int *)(this + 0xe8);
    Sound::playSoundPositionVP
              (sndEng,0x21,*(undefined4 *)(iVar3 + 0x28),*(undefined4 *)(iVar3 + 0x2c),
               *(undefined4 *)(iVar3 + 0x30),*(undefined4 *)(iVar3 + 0x34),0x3f000000,0x40000000);
  }
  return;
}

// ---- SAW::updateItemStep  @ 0x3db160
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003db1f0 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* SAW::updateItemStep(float) */

float SAW::updateItemStep(float param_1)

{
  int *in_r0;
  float in_r1;
  int iVar1;
  undefined4 in_fpscr;
  byte bVar2;
  undefined4 in_s1;
  undefined4 in_s3;
  double dVar3;
  float fVar4;
  undefined4 local_28 [2];
  undefined4 local_20;
  undefined4 local_18 [2];
  undefined4 local_10;
  
  if (*(char *)((int)in_r0 + 0xe5) == '\0') {
    in_r0[0x46] = 0;
    in_r0[0x47] = 0;
    in_r0[0x44] = (int)((float)in_r0[0x44] + in_r1);
    if ((char)in_r0[0x39] != '\0') {
      in_r0[0x7f] = (int)((float)in_r0[0x7f] + in_r1);
    }
    bVar2 = (byte)((uint)in_fpscr >> 0x18) & 0xf;
    if (5.0 < (float)in_r0[0x44]) {
      *(undefined1 *)((int)in_r0 + 0xe5) = 1;
    }
    FUN_003d9aa0((int)*(undefined8 *)(in_r0[0x3a] + 0x38),in_s1,
                 (int)*(undefined8 *)(in_r0[0x3a] + 0x40),local_28);
    iVar1 = in_r0[0x3a];
    dVar3 = (double)cpvlength(*(undefined4 *)(iVar1 + 0x38),*(undefined4 *)(iVar1 + 0x3c),
                              *(undefined4 *)(iVar1 + 0x40),*(undefined4 *)(iVar1 + 0x44));
    if ((char)(bVar2 & 0xf | (byte)(((uint)(dVar3 < 300.0) << 0x1f) >> 0x18) |
               (byte)(((uint)(dVar3 == 300.0) << 0x1e) >> 0x18) |
              (byte)(((uint)(300.0 <= dVar3) << 0x1d) >> 0x18)) < '\0') {
      fVar4 = 300.0;
    }
    else {
      iVar1 = in_r0[0x3a];
      dVar3 = (double)cpvlength(*(undefined4 *)(iVar1 + 0x38),*(undefined4 *)(iVar1 + 0x3c),
                                *(undefined4 *)(iVar1 + 0x40),*(undefined4 *)(iVar1 + 0x44));
      fVar4 = (float)dVar3;
    }
    if ((char)in_r0[0x39] != '\x01') {
      iVar1 = in_r0[0x3a];
      FUN_003d9a0c(local_28[0],in_s1,local_20,in_s3,SUB84((double)fVar4,0),local_18);
      FUN_003d9bc0(local_18[0],in_s1,local_10,iVar1);
    }
    if (0.2 < (float)in_r0[0x7f]) {
      *(undefined1 *)(in_r0 + 0x39) = 0;
      in_r0[0x7f] = 0;
    }
    param_1 = (float)(**(code **)(*in_r0 + 0x328))(in_r0,in_r1);
  }
  return param_1;
}

// ---- SAW::checkMapCollision  @ 0x3db2e0
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003db338 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* SAW::checkMapCollision(SoldierController*) */

bool SAW::checkMapCollision(SoldierController *param_1)

{
  undefined4 uVar1;
  float *pfVar2;
  int iVar3;
  int *in_r1;
  int iVar4;
  undefined4 in_s1;
  float fVar5;
  undefined1 local_48 [48];
  
  uVar1 = space;
  iVar4 = *(int *)(param_1 + 0xe8);
  pfVar2 = (float *)(**(code **)(*in_r1 + 0x50))(in_r1);
  fVar5 = *pfVar2;
  iVar3 = (**(code **)(*in_r1 + 0x50))(in_r1);
  FUN_003d9934(SUB84((double)fVar5,0),in_s1,SUB84((double)*(float *)(iVar3 + 4),0),local_48);
  iVar3 = cpSpaceSegmentQueryFirst
                    (uVar1,*(undefined4 *)(iVar4 + 0x34),*(undefined4 *)(iVar4 + 0x28),
                     *(undefined4 *)(iVar4 + 0x2c));
  return iVar3 != 0;
}

// ---- SAW::setContact  @ 0x3db390
/* SAW::setContact(bool, std::string, int) */

undefined1 SAW::setContact(int *param_1,char param_2,string *param_3)

{
  int *piVar1;
  char cVar2;
  int iVar3;
  CCObject *pCVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  undefined4 uVar8;
  undefined4 uVar9;
  undefined4 uVar10;
  undefined4 uVar11;
  undefined4 uVar12;
  undefined4 uVar13;
  CCNotificationCenter *this;
  bool bVar14;
  code *pcVar15;
  float extraout_s0;
  float extraout_s0_00;
  float extraout_s0_01;
  float extraout_s0_02;
  undefined1 auStack_38 [4];
  float local_34;
  int local_30;
  CCObject *local_2c;
  
  iVar3 = FUN_007c567c(param_1 + 0x55,param_3);
  if ((iVar3 == 0) && ((int)((uint)((float)param_1[0x44] < 0.3) << 0x1f) < 0)) {
    bVar14 = true;
  }
  else {
    bVar14 = false;
  }
  if (bVar14) {
    *(undefined1 *)(param_1 + 0x39) = 0;
    return 0;
  }
  iVar3 = FUN_007c505c(param_3);
  if (((iVar3 == 0) && ((char)param_1[0x39] != '\x01')) && (param_2 != '\0')) {
    iVar3 = param_1[0x3a];
    Sound::playSoundPositionVP
              (sndEng,0xf,*(undefined4 *)(iVar3 + 0x28),*(undefined4 *)(iVar3 + 0x2c),
               *(undefined4 *)(iVar3 + 0x30),*(undefined4 *)(iVar3 + 0x34),0x3f000000,0x3f800000);
  }
  iVar3 = FUN_007c505c(param_3);
  if (iVar3 != 0) {
    local_34 = 100.0;
    iVar3 = FUN_007c567c(param_1 + 0x55,param_3);
    if (iVar3 == 0) {
      cVar2 = (**(code **)(*param_1 + 0x32c))(param_1,hostSoldier);
      piVar1 = hostSoldier;
      if (cVar2 != '\x01') {
        pcVar15 = *(code **)(*hostSoldier + 600);
        (**(code **)(*hostSoldier + 0x1c0))(auStack_38,hostSoldier);
        (*pcVar15)(piVar1,local_34,auStack_38,0x18,1);
        FUN_007c5914(auStack_38);
      }
      return 0;
    }
    local_30 = cocos2d::CCDictionary::objectForKey(peerSoldiers,param_3);
    if (local_30 != 0) {
      cVar2 = (**(code **)(*param_1 + 0x32c))(param_1,local_30);
      if (cVar2 != '\x01') {
        pCVar4 = (CCObject *)cocos2d::CCFloat::create(extraout_s0);
        uVar5 = cocos2d::CCFloat::create(extraout_s0_00);
        uVar6 = cocos2d::CCFloat::create(extraout_s0_01);
        uVar7 = cocos2d::CCFloat::create(extraout_s0_02);
        uVar8 = cocos2d::CCInteger::create(0x18);
        uVar9 = cocos2d::CCInteger::create((int)local_34);
        uVar10 = cocos2d::CCInteger::create(0);
        uVar11 = cocos2d::CCInteger::create(0);
        uVar12 = cocos2d::CCString::create(param_3);
        uVar13 = cocos2d::CCString::create((string *)(param_1 + 0x55));
        local_2c = (CCObject *)
                   cocos2d::CCArray::create
                             (pCVar4,uVar5,uVar6,uVar7,uVar8,uVar9,uVar10,uVar11,uVar12,uVar13,0);
        this = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
        cocos2d::CCNotificationCenter::postNotification(this,"PlayerDamaged",local_2c);
      }
      return 0;
    }
  }
  *(char *)(param_1 + 0x39) = param_2;
  return (char)param_1[0x39];
}

// ---- SAW::setPrimaryConfiguration  @ 0x3db668
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003db694 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* SAW::setPrimaryConfiguration() */

void __thiscall SAW::setPrimaryConfiguration(SAW *this)

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
    FUN_003d9b94(0,fVar4,0,*(undefined4 *)(this + 0xe8));
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

// ---- SAW::setSecondaryConfiguration  @ 0x3db78c
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003db7b8 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* SAW::setSecondaryConfiguration() */

void __thiscall SAW::setSecondaryConfiguration(SAW *this)

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
    FUN_003d9b94(0,fVar4,0,*(undefined4 *)(this + 0xe8));
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

// ---- SAW::setMapConfiguration  @ 0x3db8b0
/* SAW::setMapConfiguration() */

void SAW::setMapConfiguration(void)

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

// ---- SAW::isRight  @ 0x3db96c
/* SAW::isRight() */

bool __thiscall SAW::isRight(SAW *this)

{
  float fVar1;
  
  fVar1 = (float)(**(code **)(**(int **)(this + 0x1ec) + 0x34))(*(undefined4 *)(this + 0x1ec));
  return 1.0 < fVar1;
}

// ---- SAW::setRight  @ 0x3db9a8
/* SAW::setRight(bool) */

void SAW::setRight(bool param_1)

{
  return;
}

// ---- SAW::removeWeapon  @ 0x3db9b8
/* SAW::removeWeapon() */

void SAW::removeWeapon(void)

{
  CCObject *in_r0;
  CCNotificationCenter *this;
  float in_s0;
  
  cocos2d::CCNode::scheduleOnce((_func_void_float *)in_r0,in_s0);
  this = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::postNotification(this,"WeaponUpdate",in_r0);
  return;
}

// ---- SAW::delayedRemoveWeapon  @ 0x3dba08
/* SAW::delayedRemoveWeapon() */

void __thiscall SAW::delayedRemoveWeapon(SAW *this)

{
  CCNotificationCenter *this_00;
  
  this_00 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::postNotification(this_00,"WeaponRemove",(CCObject *)this);
  return;
}

// ---- SAW::detonate  @ 0x3dba30
/* SAW::detonate(cocos2d::CCObject*) */

void __thiscall SAW::detonate(SAW *this,CCObject *param_1)

{
  CCNotificationCenter *pCVar1;
  
  pCVar1 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::postNotification(pCVar1,"ExplosiveCreate",param_1);
  pCVar1 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::postNotification(pCVar1,"Explosive",param_1);
  return;
}

// ---- SAW::create  @ 0x4275cc
/* SAW::create() */

SAW * SAW::create(void)

{
  bool bVar1;
  SAW *this;
  int iVar2;
  
  this = operator_new(0x200);
  SAW(this);
  if ((this == (SAW *)0x0) || (iVar2 = (**(code **)(*(int *)this + 0x18))(this), iVar2 == 0)) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (bVar1) {
    cocos2d::CCObject::autorelease((CCObject *)this);
  }
  else {
    if (this != (SAW *)0x0) {
      (**(code **)(*(int *)this + 8))(this);
    }
    this = (SAW *)0x0;
  }
  return this;
}
