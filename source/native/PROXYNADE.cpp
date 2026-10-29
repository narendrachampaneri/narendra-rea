// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 19 functions

// ---- PROXYNADE::PROXYNADE  @ 0x39f140
/* PROXYNADE::PROXYNADE() */

PROXYNADE * __thiscall PROXYNADE::PROXYNADE(PROXYNADE *this)

{
  Weapon::Weapon((Weapon *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_00916628;
  return this;
}

// ---- PROXYNADE::init  @ 0x39f16c
/* PROXYNADE::init() */

bool __thiscall PROXYNADE::init(PROXYNADE *this)

{
  char cVar1;
  undefined4 uVar2;
  
  cVar1 = Weapon::init((Weapon *)this);
  if (cVar1 == '\x01') {
    uVar2 = cocos2d::CCSprite::createWithSpriteFrameName("mine1.png");
    *(undefined4 *)(this + 0x1ec) = uVar2;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x1ec));
    (**(code **)(*(int *)this + 0x1e0))(this);
    *(undefined4 *)(this + 0x1f0) = 0;
    *(undefined2 *)(this + 0x1e8) = 2;
    *(undefined2 *)(this + 0x1ea) = 5;
    (**(code **)(*(int *)this + 0xcc))(this,*(undefined4 *)(this + 0x1ec),0);
    *(undefined4 *)(this + 0x188) = 0x17;
    *(undefined4 *)(this + 0x110) = 0;
    this[500] = (PROXYNADE)0x0;
  }
  return cVar1 == '\x01';
}

// ---- PROXYNADE::~PROXYNADE  @ 0x39f218
/* WARNING: Removing unreachable block (ram,0x0039f27a) */
/* PROXYNADE::~PROXYNADE() */

PROXYNADE * __thiscall PROXYNADE::~PROXYNADE(PROXYNADE *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_00916628;
  cocos2d::CCNode::removeAllChildren((CCNode *)this);
  cocos2d::CCObject::release(*(CCObject **)(this + 0x1ec));
  if (*(int *)(this + 0x1f0) != 0) {
    (**(code **)(**(int **)(this + 0x1f0) + 0xe8))(*(undefined4 *)(this + 0x1f0));
    cocos2d::CCObject::release(*(CCObject **)(this + 0x1f0));
  }
  Weapon::~Weapon((Weapon *)this);
  return this;
}

// ---- PROXYNADE::~PROXYNADE  @ 0x39f294
/* PROXYNADE::~PROXYNADE() */

PROXYNADE * __thiscall PROXYNADE::~PROXYNADE(PROXYNADE *this)

{
  ~PROXYNADE(this);
  operator_delete(this);
  return this;
}

// ---- PROXYNADE::initBody  @ 0x39f2b0
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x0039f316 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* PROXYNADE::initBody() */

void PROXYNADE::initBody(void)

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
  **(undefined4 **)(local_3c + 0xe8) = 0x39efb5;
  *(int *)(*(int *)(local_3c + 0xe8) + 0x90) = local_3c;
  *(undefined4 *)(local_3c + 0xf0) = 0x33333333;
  *(undefined4 *)(local_3c + 0xf4) = 0x3fe33333;
  FUN_0039e02c(0,in_s1,0,&local_50);
  *(undefined4 *)(iVar2 + 0xf8) = local_50;
  *(undefined4 *)(iVar2 + 0xfc) = uStack_4c;
  *(undefined4 *)(iVar2 + 0x100) = uStack_48;
  *(undefined4 *)(iVar2 + 0x104) = uStack_44;
  uVar1 = *(undefined4 *)(local_3c + 0xe8);
  FUN_0039e02c(0,in_s1,0,&local_30);
  FUN_0039e02c(0,in_s1,0,local_20);
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

// ---- PROXYNADE::updateRemoteWeaponStep  @ 0x39f400
/* PROXYNADE::updateRemoteWeaponStep(float) */

void PROXYNADE::updateRemoteWeaponStep(float param_1)

{
  Weapon *in_r0;
  undefined4 in_r1;
  
  Weapon::updateRemoteWeaponStep(in_r0,param_1);
  (**(code **)(*(int *)in_r0 + 0x1b4))(in_r0,in_r1);
  return;
}

// ---- PROXYNADE::updateItemStep  @ 0x39f428
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x0039f55e */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* PROXYNADE::updateItemStep(float) */

float PROXYNADE::updateItemStep(float param_1)

{
  int *piVar1;
  char cVar2;
  undefined3 uVar3;
  int *in_r0;
  int iVar4;
  undefined4 uVar5;
  CCObject *pCVar6;
  undefined4 uVar7;
  undefined4 uVar8;
  undefined4 uVar9;
  float *pfVar10;
  CCNotificationCenter *pCVar11;
  float in_r1;
  code *pcVar12;
  float extraout_s0;
  float extraout_s0_00;
  float fVar13;
  float extraout_s0_01;
  float extraout_s0_02;
  float in_s1;
  float extraout_s1;
  float extraout_s2;
  int local_68;
  int iStack_64;
  int iStack_60;
  int iStack_5c;
  float local_58;
  int *local_54;
  undefined1 auStack_4c [4];
  undefined1 auStack_48 [4];
  CCObject *local_44;
  undefined4 local_40;
  undefined4 uStack_3c;
  
  in_r0[0x46] = 0;
  in_r0[0x47] = 0;
  if (*(char *)((int)in_r0 + 0xe5) == '\0') {
    local_58 = in_r1;
    local_54 = in_r0;
    cVar2 = (**(code **)(*in_r0 + 0x19c))(in_r0);
    param_1 = extraout_s0;
    if (cVar2 != '\x01') {
      if (local_54[0x7c] == 0) {
        uVar3 = FUN_0039df2c(0xff,0xff,0xff);
        local_40 = CONCAT13(local_40._3_1_,uVar3);
        iVar4 = cocos2d::CCMotionStreak::create
                          (extraout_s0_00,extraout_s1,extraout_s2,(_ccColor3B *)0x3f000000,
                           (char *)0x3f800000);
        local_54[0x7c] = iVar4;
        cocos2d::CCObject::retain((CCObject *)local_54[0x7c]);
        (**(code **)(*worldLayer + 0xcc))(worldLayer,local_54[0x7c],3);
        in_s1 = extraout_s1;
      }
      (**(code **)(*(int *)local_54[0x7c] + 0x1e4))(local_54[0x7c],0x40400000);
      pcVar12 = *(code **)(*(int *)local_54[0x7c] + 0x4c);
      iVar4 = local_54[0x7c];
      uVar5 = (**(code **)(*local_54 + 0x50))(local_54);
      (*pcVar12)(iVar4,uVar5);
      piVar1 = local_54;
      local_54[0x44] = (int)((float)local_54[0x44] + local_58);
      param_1 = (float)FUN_0039e02c(0,in_s1,0,&local_68);
      piVar1[0x3e] = local_68;
      piVar1[0x3f] = iStack_64;
      piVar1[0x40] = iStack_60;
      piVar1[0x41] = iStack_5c;
    }
    if (1.2 < (float)local_54[0x44]) {
      param_1 = (float)(**(code **)(*local_54 + 0x280))(local_54,2);
      *(undefined1 *)((int)local_54 + 0xe5) = 1;
    }
    if ((char)local_54[0x39] != '\0') {
      *(undefined1 *)((int)local_54 + 0xe5) = 1;
      *(undefined1 *)(local_54 + 0x7d) = 1;
      fVar13 = (float)(**(code **)(*local_54 + 0x50))(local_54);
      pCVar6 = (CCObject *)cocos2d::CCFloat::create(fVar13);
      fVar13 = (float)(**(code **)(*local_54 + 0x50))(local_54);
      uVar5 = cocos2d::CCFloat::create(fVar13);
      uVar7 = cocos2d::CCFloat::create(extraout_s0_01);
      uVar8 = cocos2d::CCFloat::create(extraout_s0_02);
      fVar13 = (float)cocos2d::CCInteger::create(0x17);
      cocos2d::CCFloat::create(fVar13);
      iVar4 = globalSeed;
      globalSeed = globalSeed + 1;
      cocos2d::CCInteger::create(iVar4);
      (**(code **)(*hostSoldier + 0x1c0))(auStack_48,hostSoldier);
      uVar9 = FUN_007c5300(auStack_48);
      FUN_0079a3f4(auStack_4c);
      FUN_007c6a60(&local_40,uVar9,auStack_4c);
      cocos2d::CCString::create((string *)&local_40);
      local_44 = (CCObject *)cocos2d::CCArray::create(pCVar6,uVar5,uVar7,uVar8);
      FUN_007c5914(&local_40);
      FUN_0079a3fc(auStack_4c);
      FUN_007c5914(auStack_48);
      uVar5 = sndEng;
      pfVar10 = (float *)(**(code **)(*local_54 + 0x50))(local_54);
      fVar13 = *pfVar10;
      iVar4 = (**(code **)(*local_54 + 0x50))(local_54);
      FUN_0039e02c(SUB84((double)fVar13,0),in_s1,SUB84((double)*(float *)(iVar4 + 4),0),&local_40);
      Sound::playSoundPosition(uVar5,0x31,local_40,uStack_3c);
      pCVar11 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
      cocos2d::CCNotificationCenter::postNotification(pCVar11,"ExplosiveCreate",local_44);
      pCVar11 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
      param_1 = (float)cocos2d::CCNotificationCenter::postNotification(pCVar11,"Explosive",local_44)
      ;
    }
  }
  return param_1;
}

// ---- PROXYNADE::setContact  @ 0x39f790
/* PROXYNADE::setContact(bool, std::string, int) */

PROXYNADE __thiscall
PROXYNADE::setContact(PROXYNADE *this,PROXYNADE param_1,string *param_3,int param_4)

{
  char cVar1;
  bool bVar2;
  int iVar3;
  PROXYNADE PVar4;
  
  iVar3 = FUN_007c567c(this + 0x154,param_3);
  if (iVar3 == 0) {
    this[0xe4] = (PROXYNADE)0x0;
    PVar4 = (PROXYNADE)0x0;
  }
  else if (param_4 == 0xd) {
    PVar4 = (PROXYNADE)0x1;
  }
  else {
    cVar1 = (**(code **)(*(int *)this + 0x19c))(this);
    if ((cVar1 == '\x01') || (bVar2 = std::operator!=(param_3,""), !bVar2)) {
      bVar2 = false;
    }
    else {
      bVar2 = true;
    }
    if (bVar2) {
      (**(code **)(*(int *)this + 0x280))(this,2);
      this[0xe5] = (PROXYNADE)0x1;
    }
    if (this[0xe4] != (PROXYNADE)0x1) {
      this[0xe4] = param_1;
    }
    PVar4 = this[0xe4];
  }
  return PVar4;
}

// ---- PROXYNADE::setPrimaryConfiguration  @ 0x39f854
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x0039f880 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* PROXYNADE::setPrimaryConfiguration() */

void __thiscall PROXYNADE::setPrimaryConfiguration(PROXYNADE *this)

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
    FUN_0039e234(0,fVar4,0,*(undefined4 *)(this + 0xe8));
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
  (**(code **)(*(int *)this + 0x40))(this,0x3f99999a);
  (**(code **)(*(int *)this + 0x98))(this,0);
  return;
}

// ---- PROXYNADE::setSecondaryConfiguration  @ 0x39f97c
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x0039f9a8 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* PROXYNADE::setSecondaryConfiguration() */

void __thiscall PROXYNADE::setSecondaryConfiguration(PROXYNADE *this)

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
    FUN_0039e234(0,fVar4,0,*(undefined4 *)(this + 0xe8));
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
  (**(code **)(*(int *)this + 0x40))(this,0x3f99999a);
  (**(code **)(*(int *)this + 0x98))(this,0);
  return;
}

// ---- PROXYNADE::setMapConfiguration  @ 0x39faa8
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x0039fad4 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* PROXYNADE::setMapConfiguration() */

void PROXYNADE::setMapConfiguration(void)

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
  fVar4 = (float)FUN_0039e02c(0,in_s1,SUB84((double)(gravityFactor * -250.0),0),&local_30);
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
  (**(code **)(*(int *)local_1c[0x7b] + 0x40))(local_1c[0x7b],0x3f800000);
  (**(code **)(*local_1c + 0x40))(local_1c,playerScale + 0.2);
  return;
}

// ---- PROXYNADE::isRight  @ 0x39fbe0
/* PROXYNADE::isRight() */

bool __thiscall PROXYNADE::isRight(PROXYNADE *this)

{
  float fVar1;
  
  fVar1 = (float)(**(code **)(**(int **)(this + 0x1ec) + 0x34))(*(undefined4 *)(this + 0x1ec));
  return 1.0 < fVar1;
}

// ---- PROXYNADE::setRight  @ 0x39fc1c
/* PROXYNADE::setRight(bool) */

void __thiscall PROXYNADE::setRight(PROXYNADE *this,bool param_1)

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

// ---- PROXYNADE::removeWeapon  @ 0x39fc5c
/* PROXYNADE::removeWeapon() */

void PROXYNADE::removeWeapon(void)

{
  CCObject *in_r0;
  CCNotificationCenter *this;
  float in_s0;
  
  cocos2d::CCNode::scheduleOnce((_func_void_float *)in_r0,in_s0);
  this = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::postNotification(this,"WeaponUpdate",in_r0);
  return;
}

// ---- PROXYNADE::delayedRemoveWeapon  @ 0x39fcb0
/* PROXYNADE::delayedRemoveWeapon() */

void __thiscall PROXYNADE::delayedRemoveWeapon(PROXYNADE *this)

{
  CCNotificationCenter *this_00;
  
  this_00 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::postNotification(this_00,"WeaponRemove",(CCObject *)this);
  return;
}

// ---- PROXYNADE::detonate  @ 0x39fcd8
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x0039fd3a */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* PROXYNADE::detonate(cocos2d::CCObject*) */

void PROXYNADE::detonate(CCObject *param_1)

{
  undefined4 uVar1;
  float *pfVar2;
  int iVar3;
  CCNotificationCenter *pCVar4;
  CCObject *in_r1;
  undefined4 in_s1;
  float fVar5;
  undefined4 local_20;
  undefined4 uStack_1c;
  
  uVar1 = sndEng;
  if (param_1[500] != (CCObject)0x1) {
    pfVar2 = (float *)(**(code **)(*(int *)param_1 + 0x50))(param_1);
    fVar5 = *pfVar2;
    iVar3 = (**(code **)(*(int *)param_1 + 0x50))(param_1);
    FUN_0039e02c(SUB84((double)fVar5,0),in_s1,SUB84((double)*(float *)(iVar3 + 4),0),&local_20);
    Sound::playSoundPosition(uVar1,0x31,local_20,uStack_1c);
    pCVar4 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    cocos2d::CCNotificationCenter::postNotification(pCVar4,"ExplosiveCreate",in_r1);
    pCVar4 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    cocos2d::CCNotificationCenter::postNotification(pCVar4,"Explosive",in_r1);
  }
  return;
}

// ---- PROXYNADE::getWeaponTexture  @ 0x39fd98
/* PROXYNADE::getWeaponTexture() */

undefined4 __thiscall PROXYNADE::getWeaponTexture(PROXYNADE *this)

{
  undefined4 uVar1;
  
  uVar1 = (**(code **)(**(int **)(this + 0x1ec) + 500))(*(undefined4 *)(this + 0x1ec));
  return uVar1;
}

// ---- PROXYNADE::getWeaponRect  @ 0x39fdc0
/* PROXYNADE::getWeaponRect() */

CCRect * PROXYNADE::getWeaponRect(void)

{
  CCRect *in_r0;
  CCRect *pCVar1;
  int in_r1;
  
  pCVar1 = (CCRect *)cocos2d::CCSprite::getTextureRect(*(CCSprite **)(in_r1 + 0x1ec));
  cocos2d::CCRect::CCRect(in_r0,pCVar1);
  return in_r0;
}

// ---- PROXYNADE::create  @ 0x4277fc
/* PROXYNADE::create() */

PROXYNADE * PROXYNADE::create(void)

{
  bool bVar1;
  PROXYNADE *this;
  int iVar2;
  
  this = operator_new(0x1f8);
  PROXYNADE(this);
  if ((this == (PROXYNADE *)0x0) || (iVar2 = (**(code **)(*(int *)this + 0x18))(this), iVar2 == 0))
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
    if (this != (PROXYNADE *)0x0) {
      (**(code **)(*(int *)this + 8))(this);
    }
    this = (PROXYNADE *)0x0;
  }
  return this;
}
