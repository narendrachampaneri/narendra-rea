// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 17 functions

// ---- ProjectileManager::ProjectileManager  @ 0x3c350c
/* ProjectileManager::ProjectileManager() */

ProjectileManager * __thiscall ProjectileManager::ProjectileManager(ProjectileManager *this)

{
  cocos2d::CCObject::CCObject((CCObject *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_00918508;
  init(this);
  return this;
}

// ---- ProjectileManager::init  @ 0x3c354c
/* ProjectileManager::init() */

undefined4 __thiscall ProjectileManager::init(ProjectileManager *this)

{
  undefined4 uVar1;
  CCNotificationCenter *pCVar2;
  
  *(undefined4 *)(this + 0x24) = 0;
  *(undefined4 *)(this + 0x28) = 0;
  *(undefined4 *)(this + 0x2c) = 0;
  uVar1 = cocos2d::CCSpriteBatchNode::create("bullet_new.png");
  *(undefined4 *)(this + 0x20) = uVar1;
  uVar1 = cocos2d::CCArray::create();
  *(undefined4 *)(this + 0x14) = uVar1;
  uVar1 = cocos2d::CCArray::create();
  *(undefined4 *)(this + 0x18) = uVar1;
  uVar1 = cocos2d::CCArray::create();
  *(undefined4 *)(this + 0x1c) = uVar1;
  cocos2d::CCObject::retain(*(CCObject **)(this + 0x20));
  cocos2d::CCObject::retain(*(CCObject **)(this + 0x14));
  cocos2d::CCObject::retain(*(CCObject **)(this + 0x18));
  cocos2d::CCObject::retain(*(CCObject **)(this + 0x1c));
  initFlames(this);
  pCVar2 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::addObserver
            (pCVar2,(CCObject *)this,(_func_void_CCObject_ptr *)0x3c3e79,(char *)0x0,
             (CCObject *)"WeaponFired");
  pCVar2 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::addObserver
            (pCVar2,(CCObject *)this,(_func_void_CCObject_ptr *)0x3c402d,(char *)0x0,
             (CCObject *)"GrenadeLaunched");
  pCVar2 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::addObserver
            (pCVar2,(CCObject *)this,(_func_void_CCObject_ptr *)0x3c43e1,(char *)0x0,
             (CCObject *)"RocketLaunched");
  pCVar2 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::addObserver
            (pCVar2,(CCObject *)this,(_func_void_CCObject_ptr *)0x3c47ad,(char *)0x0,
             (CCObject *)"FlameThrown");
  pCVar2 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::addObserver
            (pCVar2,(CCObject *)this,(_func_void_CCObject_ptr *)0x3c4a29,(char *)0x0,
             (CCObject *)"SawLaunched");
  return 1;
}

// ---- ProjectileManager::~ProjectileManager  @ 0x3c36c4
/* WARNING: Removing unreachable block (ram,0x003c371e) */
/* ProjectileManager::~ProjectileManager() */

ProjectileManager * __thiscall ProjectileManager::~ProjectileManager(ProjectileManager *this)

{
  CCNotificationCenter *this_00;
  
  *(undefined ***)this = &PTR_copyWithZone_1_00918508;
  this_00 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::removeAllObservers(this_00,(CCObject *)this);
  cocos2d::CCObject::release(*(CCObject **)(this + 0x14));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x18));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x1c));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x20));
  cocos2d::CCObject::~CCObject((CCObject *)this);
  return this;
}

// ---- ProjectileManager::~ProjectileManager  @ 0x3c3738
/* ProjectileManager::~ProjectileManager() */

ProjectileManager * __thiscall ProjectileManager::~ProjectileManager(ProjectileManager *this)

{
  ~ProjectileManager(this);
  operator_delete(this);
  return this;
}

// ---- ProjectileManager::initFlames  @ 0x3c3754
/* ProjectileManager::initFlames() */

void __thiscall ProjectileManager::initFlames(ProjectileManager *this)

{
  FLAME *this_00;
  uint local_18;
  
  *(undefined4 *)(this + 0x2c) = 10;
  for (local_18 = 0; local_18 < *(uint *)(this + 0x2c); local_18 = local_18 + 1) {
    this_00 = operator_new(0x188);
    FLAME::FLAME(this_00);
    cocos2d::CCObject::autorelease((CCObject *)this_00);
    cocos2d::CCArray::addObject(*(CCArray **)(this + 0x1c),(CCObject *)this_00);
    (**(code **)(*worldLayer + 0xcc))(worldLayer,this_00,4);
  }
  return;
}

// ---- ProjectileManager::addBodyShapeSprite  @ 0x3c37d8
/* ProjectileManager::addBodyShapeSprite() */

void __thiscall ProjectileManager::addBodyShapeSprite(ProjectileManager *this)

{
  Tracer *this_00;
  uint local_18;
  
  *(undefined4 *)(this + 0x24) = 0x1e;
  for (local_18 = 0; local_18 < *(uint *)(this + 0x24); local_18 = local_18 + 1) {
    this_00 = operator_new(0xc0);
    Tracer::Tracer(this_00,*(CCSpriteBatchNode **)(this + 0x20));
    cocos2d::CCObject::autorelease((CCObject *)this_00);
    cocos2d::CCArray::addObject(*(CCArray **)(this + 0x14),(CCObject *)this_00);
    (**(code **)(*(int *)this_00 + 0x38))(this_00,space);
  }
  (**(code **)(*worldLayer + 0xcc))(worldLayer,*(undefined4 *)(this + 0x20),4);
  return;
}

// ---- ProjectileManager::updateStep  @ 0x3c3880
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003c3a5a */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* ProjectileManager::updateStep(float) */

void ProjectileManager::updateStep(float param_1)

{
  byte bVar1;
  Sound *this;
  int in_r0;
  undefined4 uVar2;
  undefined4 uVar3;
  uint uVar4;
  uint uVar5;
  int iVar6;
  CCObject *pCVar7;
  undefined4 uVar8;
  undefined4 uVar9;
  undefined4 uVar10;
  undefined4 uVar11;
  undefined4 uVar12;
  undefined4 uVar13;
  undefined4 uVar14;
  CCNotificationCenter *pCVar15;
  undefined4 in_r1;
  uint in_fpscr;
  float extraout_s0;
  float extraout_s0_00;
  float extraout_s0_01;
  float extraout_s0_02;
  float extraout_s0_03;
  float fVar16;
  float extraout_s0_04;
  float extraout_s0_05;
  float extraout_s0_06;
  float in_s1;
  float extraout_s1;
  undefined4 in_s3;
  undefined4 in_s5;
  double dVar17;
  string asStack_98 [4];
  string asStack_94 [4];
  uint local_90;
  uint local_8c;
  uint local_88;
  Projectile *local_84;
  CCObject *local_80;
  float local_7c;
  undefined4 local_78;
  int *local_74;
  CCObject *local_70;
  undefined4 local_6c;
  undefined1 local_48 [16];
  undefined4 local_38;
  undefined4 uStack_34;
  undefined4 uStack_30;
  undefined4 uStack_2c;
  
  local_90 = 0;
  while (uVar4 = cocos2d::CCArray::count(*(CCArray **)(in_r0 + 0x14)), local_90 < uVar4) {
    local_84 = (Projectile *)cocos2d::CCArray::objectAtIndex(*(CCArray **)(in_r0 + 0x14),local_90);
    (**(code **)(*(int *)local_84 + 0x18))(local_84,in_r1);
    iVar6 = Projectile::getCollided(local_84);
    if (iVar6 != 0) {
      Projectile::setCollided(local_84,false);
      Projectile::getDamagePosition();
      fVar16 = (float)Projectile::getDamageVelocity();
      pCVar7 = (CCObject *)cocos2d::CCFloat::create(fVar16);
      uVar8 = cocos2d::CCFloat::create(extraout_s0);
      uVar9 = cocos2d::CCFloat::create(extraout_s0_00);
      uVar10 = cocos2d::CCFloat::create(extraout_s0_01);
      iVar6 = Projectile::getAmmoType(local_84);
      uVar11 = cocos2d::CCInteger::create(iVar6);
      fVar16 = (float)Projectile::getDamageAmount(local_84);
      uVar12 = cocos2d::CCInteger::create((int)fVar16);
      uVar13 = cocos2d::CCInteger::create((int)*(float *)(local_84 + 0x94));
      uVar14 = cocos2d::CCInteger::create((uint)(local_84[0x98] != (Projectile)0x0));
      Projectile::getDamagedPlayerID();
      uVar2 = cocos2d::CCString::create(asStack_98);
      Projectile::getShooterPlayerID();
      uVar3 = cocos2d::CCString::create(asStack_94);
      local_80 = (CCObject *)
                 cocos2d::CCArray::create
                           (pCVar7,uVar8,uVar9,uVar10,uVar11,uVar12,uVar13,uVar14,uVar2,uVar3,0);
      FUN_007c5914(asStack_94);
      FUN_007c5914(asStack_98);
      pCVar15 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
      cocos2d::CCNotificationCenter::postNotification(pCVar15,"PlayerDamaged",local_80);
    }
    iVar6 = Projectile::getActive(local_84);
    if ((iVar6 != 0) && (iVar6 = (**(code **)(*(int *)local_84 + 0x2c))(local_84), iVar6 == 0x20)) {
      iVar6 = *(int *)(hostSoldier + 0x138);
      (**(code **)(*(int *)local_84 + 0x20))(local_48,local_84);
      FUN_003c2530((int)*(undefined8 *)(iVar6 + 0x28),in_s1,(int)*(undefined8 *)(iVar6 + 0x30),in_s3
                   ,(int)local_48._0_8_,in_s5,(int)local_48._8_8_,&local_38);
      dVar17 = (double)cpvlength(local_38,uStack_34,uStack_30,uStack_2c);
      this = sndEng;
      local_7c = (float)dVar17;
      uVar4 = in_fpscr & 0xfffffff;
      in_fpscr = uVar4 | (uint)(local_7c < 60.0) << 0x1f | (uint)(local_7c == 60.0) << 0x1e |
                 (uint)(60.0 <= local_7c) << 0x1d;
      if (((int)in_fpscr < 0) &&
         (uVar4 = uVar4 | (uint)(local_7c < 40.0) << 0x1f | (uint)(local_7c == 40.0) << 0x1e,
         in_fpscr = uVar4 | (uint)NAN(local_7c) << 0x1c, bVar1 = (byte)(uVar4 >> 0x18),
         !(bool)(bVar1 >> 6 & 1) && bVar1 >> 7 == ((byte)(in_fpscr >> 0x1c) & 1))) {
        uVar8 = FUN_003c2430();
        VectorSignedToFloat(uVar8,(byte)(in_fpscr >> 0x16) & 3);
        Sound::playSoundVP(this,0x10,extraout_s0_02,extraout_s1);
        in_s1 = extraout_s1;
      }
    }
    local_90 = local_90 + 1;
  }
  local_8c = 0;
  while (uVar4 = cocos2d::CCArray::count(*(CCArray **)(in_r0 + 0x1c)), local_8c < uVar4) {
    local_78 = cocos2d::CCArray::objectAtIndex(*(CCArray **)(in_r0 + 0x1c),local_8c);
    FLAME::updateStep(extraout_s0_03);
    local_8c = local_8c + 1;
  }
  for (local_88 = 0; uVar4 = local_88, uVar5 = cocos2d::CCArray::count(*(CCArray **)(in_r0 + 0x18)),
      uVar4 < uVar5; local_88 = local_88 + 1) {
    local_74 = (int *)cocos2d::CCArray::objectAtIndex(*(CCArray **)(in_r0 + 0x18),local_88);
    (**(code **)(*local_74 + 0x1b4))(local_74,in_r1);
  }
  iVar6 = cocos2d::CCArray::count(*(CCArray **)(in_r0 + 0x18));
  if (iVar6 != 0) {
    *(int *)(in_r0 + 0x28) = *(int *)(in_r0 + 0x28) + 1;
    uVar5 = *(uint *)(in_r0 + 0x28);
    uVar4 = cocos2d::CCArray::count(*(CCArray **)(in_r0 + 0x18));
    if (uVar4 <= uVar5) {
      *(undefined4 *)(in_r0 + 0x28) = 0;
    }
    local_70 = (CCObject *)
               cocos2d::CCArray::objectAtIndex(*(CCArray **)(in_r0 + 0x18),*(uint *)(in_r0 + 0x28));
    iVar6 = (**(code **)(*(int *)local_70 + 0x1e8))(local_70);
    if (iVar6 != 0) {
      *(int *)(local_70 + 0x118) = 0x41200000;
      fVar16 = (float)(**(code **)(*(int *)local_70 + 0x50))(local_70);
      pCVar7 = (CCObject *)cocos2d::CCFloat::create(fVar16);
      fVar16 = (float)(**(code **)(*(int *)local_70 + 0x50))(local_70);
      uVar8 = cocos2d::CCFloat::create(fVar16);
      uVar9 = cocos2d::CCFloat::create(extraout_s0_04);
      uVar10 = cocos2d::CCFloat::create(extraout_s0_05);
      iVar6 = (**(code **)(*(int *)local_70 + 0x27c))(local_70);
      uVar11 = cocos2d::CCInteger::create(iVar6);
      uVar12 = cocos2d::CCFloat::create(extraout_s0_06);
      iVar6 = globalSeed;
      globalSeed = globalSeed + 1;
      uVar13 = cocos2d::CCInteger::create(iVar6);
      uVar14 = cocos2d::CCString::create((string *)(local_70 + 0x154));
      local_6c = cocos2d::CCArray::create(pCVar7,uVar8,uVar9,uVar10,uVar11,uVar12,uVar13,uVar14,0);
      (**(code **)(*(int *)local_70 + 0x324))(local_70,local_6c);
      pCVar15 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
      cocos2d::CCNotificationCenter::postNotification(pCVar15,"WeaponRemove",local_70);
      cocos2d::CCArray::removeObjectAtIndex
                (*(CCArray **)(in_r0 + 0x18),*(uint *)(in_r0 + 0x28),true);
    }
  }
  return;
}

// ---- ProjectileManager::addBullet  @ 0x3c3d40
/* ProjectileManager::addBullet(cpVect, float, cpVect, Weapon*, int, cpVect, std::string) */

void ProjectileManager::addBullet
               (int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
               undefined4 param_5,undefined4 param_6,float param_7,undefined4 param_8,
               undefined4 param_9,undefined4 param_10,undefined4 param_11,undefined4 param_12,
               int *param_13,undefined4 param_14,undefined4 param_15,undefined4 param_16,
               undefined4 param_17,undefined4 param_18,undefined4 param_19)

{
  uint uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  uint uVar6;
  code *pcVar7;
  float fVar8;
  undefined1 auStack_40 [4];
  int *local_3c;
  double local_38;
  
  uVar6 = *(uint *)(param_1 + 0x24);
  uVar1 = cocos2d::CCArray::count(*(CCArray **)(param_1 + 0x14));
  if (uVar1 <= uVar6) {
    *(undefined4 *)(param_1 + 0x24) = 0;
  }
  local_3c = (int *)cocos2d::CCArray::objectAtIndex
                              (*(CCArray **)(param_1 + 0x14),*(uint *)(param_1 + 0x24));
  local_38 = (double)-(param_7 * 0.017453292);
  pcVar7 = *(code **)(*local_3c + 0x1c);
  uVar2 = (**(code **)(*param_13 + 0x27c))(param_13);
  uVar3 = (**(code **)(*param_13 + 0x2a4))(param_13);
  uVar4 = (**(code **)(*param_13 + 0x298))(param_13);
  fVar8 = (float)local_38;
  uVar5 = (**(code **)(*param_13 + 0x2e8))(param_13);
  FUN_007c64e8(auStack_40,param_19);
  (*pcVar7)(local_3c,uVar2,uVar3,uVar4,param_3,param_4,param_5,param_6,param_9,param_10,param_11,
            param_12,fVar8,uVar5,param_15,param_16,param_17,param_18,auStack_40);
  FUN_007c5914(auStack_40);
  (**(code **)(*local_3c + 0x30))(local_3c,param_14);
  *(int *)(param_1 + 0x24) = *(int *)(param_1 + 0x24) + 1;
  return;
}

// ---- ProjectileManager::weaponFired  @ 0x3c3e78
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003c3f10 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* ProjectileManager::weaponFired(cocos2d::CCObject*) */

void ProjectileManager::weaponFired(CCObject *param_1)

{
  float fVar1;
  float fVar2;
  undefined4 uVar3;
  int iVar4;
  CCArray *in_r1;
  undefined4 in_s1;
  undefined1 auStack_78 [4];
  undefined1 auStack_74 [4];
  int local_70;
  CCArray *local_6c;
  int *local_68;
  CCFloat *local_64;
  CCFloat *local_60;
  CCFloat *local_5c;
  CCFloat *local_58;
  CCFloat *local_54;
  CCInteger *local_50;
  CCString *local_4c;
  undefined1 local_48 [16];
  undefined1 local_38 [16];
  undefined4 local_28;
  undefined4 uStack_24;
  undefined4 uStack_1c;
  
  local_6c = in_r1;
  local_68 = (int *)cocos2d::CCArray::objectAtIndex(in_r1,0);
  local_64 = (CCFloat *)cocos2d::CCArray::objectAtIndex(local_6c,1);
  local_60 = (CCFloat *)cocos2d::CCArray::objectAtIndex(local_6c,2);
  local_5c = (CCFloat *)cocos2d::CCArray::objectAtIndex(local_6c,3);
  local_58 = (CCFloat *)cocos2d::CCArray::objectAtIndex(local_6c,4);
  local_54 = (CCFloat *)cocos2d::CCArray::objectAtIndex(local_6c,5);
  local_50 = (CCInteger *)cocos2d::CCArray::objectAtIndex(local_6c,6);
  local_4c = (CCString *)cocos2d::CCArray::objectAtIndex(local_6c,7);
  fVar1 = (float)cocos2d::CCFloat::getValue(local_60);
  fVar2 = (float)cocos2d::CCFloat::getValue(local_5c);
  FUN_003c24b0(SUB84((double)fVar1,0),in_s1,SUB84((double)fVar2,0),local_48);
  fVar1 = (float)cocos2d::CCFloat::getValue(local_58);
  fVar2 = (float)cocos2d::CCFloat::getValue(local_54);
  FUN_003c24b0(SUB84((double)fVar1,0),in_s1,SUB84((double)fVar2,0),local_38);
  local_70 = 0;
  while (iVar4 = (**(code **)(*local_68 + 0x2e0))(local_68), local_70 < iVar4) {
    (**(code **)(*local_68 + 800))(&local_28,local_68);
    cocos2d::CCFloat::getValue(local_64);
    (**(code **)(*local_68 + 0x2f8))(local_68);
    cocos2d::CCInteger::getValue(local_50);
    uVar3 = cocos2d::CCString::getCString(local_4c);
    FUN_0079a3f4(auStack_78);
    FUN_007c6a60(auStack_74,uVar3,auStack_78);
    addBullet(param_1,uStack_1c,local_28,uStack_24);
    FUN_007c5914(auStack_74);
    FUN_0079a3fc(auStack_78);
    local_70 = local_70 + 1;
  }
  return;
}

// ---- ProjectileManager::grenadeLaunched  @ 0x3c402c
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003c40c0 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* ProjectileManager::grenadeLaunched(cocos2d::CCObject*) */

void ProjectileManager::grenadeLaunched(CCObject *param_1)

{
  CCInteger *this;
  float fVar1;
  float fVar2;
  undefined4 uVar3;
  CCArray *in_r1;
  undefined4 in_s1;
  undefined1 auStack_60 [4];
  undefined1 auStack_5c [4];
  CCArray *local_58;
  CCFloat *local_54;
  CCFloat *local_50;
  CCFloat *local_4c;
  CCFloat *local_48;
  CCFloat *local_44;
  CCString *local_40;
  undefined4 local_3c;
  undefined4 local_38;
  undefined4 uStack_34;
  undefined4 uStack_2c;
  undefined1 local_28 [20];
  
  local_58 = in_r1;
  local_54 = (CCFloat *)cocos2d::CCArray::objectAtIndex(in_r1,0);
  local_50 = (CCFloat *)cocos2d::CCArray::objectAtIndex(local_58,1);
  local_4c = (CCFloat *)cocos2d::CCArray::objectAtIndex(local_58,2);
  local_48 = (CCFloat *)cocos2d::CCArray::objectAtIndex(local_58,3);
  local_44 = (CCFloat *)cocos2d::CCArray::objectAtIndex(local_58,4);
  local_40 = (CCString *)cocos2d::CCArray::objectAtIndex(local_58,5);
  this = (CCInteger *)cocos2d::CCArray::objectAtIndex(local_58,6);
  local_3c = cocos2d::CCInteger::getValue(this);
  fVar1 = (float)cocos2d::CCFloat::getValue(local_54);
  fVar2 = (float)cocos2d::CCFloat::getValue(local_50);
  FUN_003c24b0(SUB84((double)fVar1,0),in_s1,SUB84((double)fVar2,0),&local_38);
  cocos2d::CCFloat::getValue(local_4c);
  fVar1 = (float)cocos2d::CCFloat::getValue(local_48);
  fVar2 = (float)cocos2d::CCFloat::getValue(local_44);
  FUN_003c24b0(SUB84((double)fVar1,0),in_s1,SUB84((double)fVar2,0),local_28);
  uVar3 = cocos2d::CCString::getCString(local_40);
  FUN_0079a3f4(auStack_60);
  FUN_007c6a60(auStack_5c,uVar3,auStack_60);
  addGrenade(param_1,uStack_2c,local_38,uStack_34);
  FUN_007c5914(auStack_5c);
  FUN_0079a3fc(auStack_60);
  return;
}

// ---- ProjectileManager::addGrenade  @ 0x3c4178
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003c4240 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* ProjectileManager::addGrenade(cpVect, float, cpVect, bool, std::string, int) */

void ProjectileManager::addGrenade
               (int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
               undefined4 param_5)

{
  WeaponFactory *pWVar1;
  CCObject *pCVar2;
  undefined4 uVar3;
  undefined4 extraout_r0;
  undefined4 extraout_r0_00;
  CCNotificationCenter *this;
  int iVar4;
  code *pcVar5;
  uint in_fpscr;
  undefined8 in_d0;
  undefined4 uVar6;
  double __x;
  undefined4 in_s3;
  undefined4 in_s5;
  float fVar7;
  undefined4 in_stack_00000010;
  undefined4 in_stack_00000018;
  char in_stack_00000020;
  undefined4 in_stack_00000024;
  undefined4 in_stack_00000028;
  CCPoint aCStack_40 [8];
  undefined4 local_38 [2];
  undefined4 local_30;
  undefined4 local_28 [2];
  undefined4 local_20;
  
  pWVar1 = (WeaponFactory *)WeaponFactory::sharedWeaponFactory();
  pCVar2 = (CCObject *)WeaponFactory::createWeaponFromAmmoType(pWVar1,in_stack_00000028);
  cocos2d::CCArray::addObject(*(CCArray **)(param_1 + 0x18),pCVar2);
  (**(code **)(*(int *)pCVar2 + 0x1a8))(pCVar2,1);
  (**(code **)(*(int *)pCVar2 + 0x1a4))(pCVar2,0);
  pcVar5 = *(code **)(*(int *)pCVar2 + 0x200);
  (**(code **)(*hostSoldier + 0x1c0))(local_28,hostSoldier);
  (*pcVar5)(pCVar2,local_28);
  FUN_007c5914(local_28);
  thunk_FUN_007c653c(pCVar2 + 0x154,in_stack_00000024);
  uVar6 = (undefined4)((ulonglong)in_d0 >> 0x20);
  FUN_003c2664(param_3,uVar6,param_5,*(undefined4 *)(pCVar2 + 0xe8));
  FUN_003c26bc(0,uVar6,0,*(undefined4 *)(pCVar2 + 0xe8));
  FUN_003c2690(in_stack_00000010,uVar6,in_stack_00000018,*(undefined4 *)(pCVar2 + 0xe8));
  iVar4 = *(int *)(pCVar2 + 0xe8);
  uVar3 = FUN_003c2430();
  fVar7 = (float)VectorSignedToFloat(uVar3,(byte)(in_fpscr >> 0x16) & 3);
  *(double *)(iVar4 + 0x60) = (double)((fVar7 / 1.0737418e+09 - 1.0) * 5.0);
  if (in_stack_00000020 != '\0') {
    *(undefined4 *)(*(int *)(pCVar2 + 0xec) + 0x54) = 0x44;
    *(undefined4 *)(*(int *)(pCVar2 + 0xec) + 0x5c) = 0x44;
    *(undefined4 *)(*(int *)(pCVar2 + 0xec) + 0x58) = 0x44;
  }
  uVar3 = *(undefined4 *)(pCVar2 + 0xe8);
  __x = cos((double)CONCAT44(uVar6,in_stack_00000010));
  sin(__x);
  fVar7 = (float)((ulonglong)__x >> 0x20);
  FUN_003c24b0(extraout_r0,fVar7,extraout_r0_00,local_38);
  FUN_003c2588(local_38[0],fVar7,local_30,in_s3,0,local_28);
  FUN_003c26e8(local_28[0],fVar7,local_20,in_s3,0,in_s5,0,uVar3);
  pcVar5 = *(code **)(*(int *)pCVar2 + 0x4c);
  cocos2d::CCPoint::CCPoint(aCStack_40,SUB84(__x,0),fVar7);
  (*pcVar5)(pCVar2,aCStack_40);
  this = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::postNotification(this,"WeaponCreate",pCVar2);
  return;
}

// ---- ProjectileManager::rocketLaunched  @ 0x3c43e0
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003c4454 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* ProjectileManager::rocketLaunched(cocos2d::CCObject*) */

void ProjectileManager::rocketLaunched(CCObject *param_1)

{
  float fVar1;
  float fVar2;
  undefined4 uVar3;
  CCArray *in_r1;
  undefined4 in_s1;
  undefined1 auStack_58 [4];
  undefined1 auStack_54 [4];
  CCArray *local_50;
  int *local_4c;
  CCFloat *local_48;
  CCFloat *local_44;
  CCFloat *local_40;
  CCString *local_3c;
  undefined1 local_38 [16];
  undefined4 local_28;
  undefined4 uStack_24;
  undefined4 uStack_1c;
  
  local_50 = in_r1;
  local_4c = (int *)cocos2d::CCArray::objectAtIndex(in_r1,0);
  local_48 = (CCFloat *)cocos2d::CCArray::objectAtIndex(local_50,1);
  local_44 = (CCFloat *)cocos2d::CCArray::objectAtIndex(local_50,2);
  local_40 = (CCFloat *)cocos2d::CCArray::objectAtIndex(local_50,3);
  local_3c = (CCString *)cocos2d::CCArray::objectAtIndex(local_50,7);
  fVar1 = (float)cocos2d::CCFloat::getValue(local_44);
  fVar2 = (float)cocos2d::CCFloat::getValue(local_40);
  FUN_003c24b0(SUB84((double)fVar1,0),in_s1,SUB84((double)fVar2,0),local_38);
  (**(code **)(*local_4c + 800))(&local_28,local_4c);
  cocos2d::CCFloat::getValue(local_48);
  uVar3 = cocos2d::CCString::getCString(local_3c);
  FUN_0079a3f4(auStack_58);
  FUN_007c6a60(auStack_54,uVar3,auStack_58);
  addRocket(param_1,uStack_1c,local_28,uStack_24);
  FUN_007c5914(auStack_54);
  FUN_0079a3fc(auStack_58);
  return;
}

// ---- ProjectileManager::addRocket  @ 0x3c44f0
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003c45c8 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* ProjectileManager::addRocket(cpVect, float, cpVect, Weapon*, bool, std::string) */

void ProjectileManager::addRocket
               (int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
               undefined4 param_5,undefined4 param_6,float param_7,undefined4 param_8,
               undefined4 param_9,undefined4 param_10,undefined4 param_11,undefined4 param_12,
               undefined4 param_13,char param_14,undefined4 param_15)

{
  WeaponFactory *pWVar1;
  CCObject *pCVar2;
  undefined4 extraout_r0;
  undefined4 extraout_r0_00;
  undefined4 extraout_r0_01;
  undefined4 extraout_r0_02;
  CCNotificationCenter *this;
  undefined4 extraout_r1;
  undefined4 uVar3;
  code *pcVar4;
  undefined4 in_fpscr;
  byte bVar5;
  double in_d0;
  undefined4 uVar7;
  double dVar6;
  float fVar8;
  undefined4 in_s3;
  undefined4 in_s5;
  double local_70;
  undefined4 local_68;
  undefined4 uStack_64;
  CCPoint aCStack_60 [8];
  undefined4 local_58 [2];
  undefined4 local_50;
  undefined4 local_48 [2];
  undefined4 local_40;
  undefined4 local_38 [2];
  undefined4 local_30;
  undefined4 local_28 [2];
  undefined4 local_20;
  
  bVar5 = (byte)((uint)in_fpscr >> 0x18);
  pWVar1 = (WeaponFactory *)WeaponFactory::sharedWeaponFactory();
  pCVar2 = (CCObject *)WeaponFactory::createWeaponFromAmmoType(pWVar1,0xc);
  cocos2d::CCArray::addObject(*(CCArray **)(param_1 + 0x18),pCVar2);
  (**(code **)(*(int *)pCVar2 + 0x1a4))(pCVar2,0);
  (**(code **)(*(int *)pCVar2 + 0x1a8))(pCVar2,1);
  pcVar4 = *(code **)(*(int *)pCVar2 + 0x200);
  (**(code **)(*hostSoldier + 0x1c0))(local_28,hostSoldier);
  (*pcVar4)(pCVar2,local_28);
  FUN_007c5914(local_28);
  thunk_FUN_007c653c(pCVar2 + 0x154,param_15);
  local_68 = SUB84((double)-(param_7 * 0.017453292),0);
  uStack_64 = (undefined4)((ulonglong)(double)-(param_7 * 0.017453292) >> 0x20);
  cpBodySetAngle(*(undefined4 *)(pCVar2 + 0xe8),extraout_r1,local_68,uStack_64);
  uVar7 = (undefined4)((ulonglong)in_d0 >> 0x20);
  FUN_003c2664(param_3,uVar7,param_5,*(undefined4 *)(pCVar2 + 0xe8));
  FUN_003c26bc(0,uVar7,0,*(undefined4 *)(pCVar2 + 0xe8));
  dVar6 = cos(in_d0);
  sin(dVar6);
  uVar7 = (undefined4)((ulonglong)dVar6 >> 0x20);
  FUN_003c24b0(extraout_r0,uVar7,extraout_r0_00,local_58);
  FUN_003c25d4(param_9,uVar7,param_11,in_s3,local_58[0],in_s5,local_50);
  local_70 = (double)CONCAT44(uVar7,param_9);
  if ((char)(bVar5 & 0xf | (byte)(((uint)(local_70 < 0.0) << 0x1f) >> 0x18) |
             (byte)(((uint)(local_70 == 0.0) << 0x1e) >> 0x18) |
            (byte)(((uint)(0.0 <= local_70) << 0x1d) >> 0x18)) < '\0') {
    local_70 = 0.0;
  }
  uVar3 = *(undefined4 *)(pCVar2 + 0xe8);
  FUN_003c2588(local_58[0],uVar7,local_50,in_s3,SUB84(local_70,0),local_48);
  FUN_003c2690(local_48[0],uVar7,local_40,uVar3);
  if (param_14 != '\0') {
    *(undefined4 *)(*(int *)(pCVar2 + 0xec) + 0x54) = 0x44;
    *(undefined4 *)(*(int *)(pCVar2 + 0xec) + 0x5c) = 0x44;
    *(undefined4 *)(*(int *)(pCVar2 + 0xec) + 0x58) = 0x44;
  }
  uVar3 = *(undefined4 *)(pCVar2 + 0xe8);
  dVar6 = cos((double)CONCAT44(uVar7,param_9));
  sin(dVar6);
  fVar8 = (float)((ulonglong)dVar6 >> 0x20);
  FUN_003c24b0(extraout_r0_01,fVar8,extraout_r0_02,local_38);
  FUN_003c2588(local_38[0],fVar8,local_30,in_s3,0,local_28);
  FUN_003c26e8(local_28[0],fVar8,local_20,in_s3,0,in_s5,0,uVar3);
  pcVar4 = *(code **)(*(int *)pCVar2 + 0x4c);
  cocos2d::CCPoint::CCPoint(aCStack_60,SUB84(dVar6,0),fVar8);
  (*pcVar4)(pCVar2,aCStack_60);
  this = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::postNotification(this,"WeaponCreate",pCVar2);
  return;
}

// ---- ProjectileManager::throwFlame  @ 0x3c47ac
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003c4844 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* ProjectileManager::throwFlame(cocos2d::CCObject*) */

void ProjectileManager::throwFlame(CCObject *param_1)

{
  float fVar1;
  float fVar2;
  undefined4 uVar3;
  CCArray *in_r1;
  undefined4 in_s1;
  undefined1 auStack_74 [4];
  undefined1 auStack_70 [4];
  CCArray *local_6c;
  int *local_68;
  CCFloat *local_64;
  CCFloat *local_60;
  CCFloat *local_5c;
  CCFloat *local_58;
  CCFloat *local_54;
  CCInteger *local_50;
  CCString *local_4c;
  undefined1 local_48 [16];
  undefined1 local_38 [16];
  undefined4 local_28;
  undefined4 uStack_24;
  undefined4 uStack_1c;
  
  local_6c = in_r1;
  local_68 = (int *)cocos2d::CCArray::objectAtIndex(in_r1,0);
  local_64 = (CCFloat *)cocos2d::CCArray::objectAtIndex(local_6c,1);
  local_60 = (CCFloat *)cocos2d::CCArray::objectAtIndex(local_6c,2);
  local_5c = (CCFloat *)cocos2d::CCArray::objectAtIndex(local_6c,3);
  local_58 = (CCFloat *)cocos2d::CCArray::objectAtIndex(local_6c,4);
  local_54 = (CCFloat *)cocos2d::CCArray::objectAtIndex(local_6c,5);
  local_50 = (CCInteger *)cocos2d::CCArray::objectAtIndex(local_6c,6);
  local_4c = (CCString *)cocos2d::CCArray::objectAtIndex(local_6c,7);
  fVar1 = (float)cocos2d::CCFloat::getValue(local_60);
  fVar2 = (float)cocos2d::CCFloat::getValue(local_5c);
  FUN_003c24b0(SUB84((double)fVar1,0),in_s1,SUB84((double)fVar2,0),local_48);
  fVar1 = (float)cocos2d::CCFloat::getValue(local_58);
  fVar2 = (float)cocos2d::CCFloat::getValue(local_54);
  FUN_003c24b0(SUB84((double)fVar1,0),in_s1,SUB84((double)fVar2,0),local_38);
  (**(code **)(*local_68 + 800))(&local_28,local_68);
  cocos2d::CCFloat::getValue(local_64);
  (**(code **)(*local_68 + 0x2f8))(local_68);
  cocos2d::CCInteger::getValue(local_50);
  uVar3 = cocos2d::CCString::getCString(local_4c);
  FUN_0079a3f4(auStack_74);
  FUN_007c6a60(auStack_70,uVar3,auStack_74);
  addFlame(param_1,uStack_1c,local_28,uStack_24);
  FUN_007c5914(auStack_70);
  FUN_0079a3fc(auStack_74);
  return;
}

// ---- ProjectileManager::addFlame  @ 0x3c4934
/* ProjectileManager::addFlame(cpVect, float, cpVect, Weapon*, int, cpVect, std::string) */

void ProjectileManager::addFlame
               (int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
               undefined4 param_5,undefined4 param_6,undefined4 param_7,undefined4 param_8,
               undefined4 param_9,undefined4 param_10,undefined4 param_11,undefined4 param_12,
               int *param_13,undefined4 param_14,undefined4 param_15,undefined4 param_16,
               undefined4 param_17,undefined4 param_18,undefined4 param_19)

{
  uint uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  uint uVar6;
  undefined1 auStack_28 [4];
  undefined4 local_24;
  
  uVar6 = *(uint *)(param_1 + 0x2c);
  uVar1 = cocos2d::CCArray::count(*(CCArray **)(param_1 + 0x1c));
  if (uVar1 <= uVar6) {
    *(undefined4 *)(param_1 + 0x2c) = 0;
  }
  local_24 = cocos2d::CCArray::objectAtIndex
                       (*(CCArray **)(param_1 + 0x1c),*(uint *)(param_1 + 0x2c));
  uVar2 = (**(code **)(*param_13 + 0x27c))(param_13);
  uVar3 = (**(code **)(*param_13 + 0x2a4))(param_13);
  uVar4 = (**(code **)(*param_13 + 0x298))(param_13);
  uVar5 = (**(code **)(*param_13 + 0x2e8))(param_13);
  FUN_007c64e8(auStack_28,param_19);
  FLAME::reset(local_24,uVar2,uVar3,uVar4,param_3,param_4,param_5,param_6,param_9,param_10,param_11,
               param_12,param_7,uVar5,param_15,param_16,param_17,param_18,auStack_28);
  FUN_007c5914(auStack_28);
  *(int *)(param_1 + 0x2c) = *(int *)(param_1 + 0x2c) + 1;
  return;
}

// ---- ProjectileManager::sawLaunched  @ 0x3c4a28
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003c4a9c */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* ProjectileManager::sawLaunched(cocos2d::CCObject*) */

void ProjectileManager::sawLaunched(CCObject *param_1)

{
  float fVar1;
  float fVar2;
  undefined4 uVar3;
  CCArray *in_r1;
  undefined4 in_s1;
  undefined1 auStack_58 [4];
  undefined1 auStack_54 [4];
  CCArray *local_50;
  int *local_4c;
  CCFloat *local_48;
  CCFloat *local_44;
  CCFloat *local_40;
  CCString *local_3c;
  undefined1 local_38 [16];
  undefined4 local_28;
  undefined4 uStack_24;
  undefined4 uStack_1c;
  
  local_50 = in_r1;
  local_4c = (int *)cocos2d::CCArray::objectAtIndex(in_r1,0);
  local_48 = (CCFloat *)cocos2d::CCArray::objectAtIndex(local_50,1);
  local_44 = (CCFloat *)cocos2d::CCArray::objectAtIndex(local_50,2);
  local_40 = (CCFloat *)cocos2d::CCArray::objectAtIndex(local_50,3);
  local_3c = (CCString *)cocos2d::CCArray::objectAtIndex(local_50,7);
  fVar1 = (float)cocos2d::CCFloat::getValue(local_44);
  fVar2 = (float)cocos2d::CCFloat::getValue(local_40);
  FUN_003c24b0(SUB84((double)fVar1,0),in_s1,SUB84((double)fVar2,0),local_38);
  (**(code **)(*local_4c + 800))(&local_28,local_4c);
  cocos2d::CCFloat::getValue(local_48);
  uVar3 = cocos2d::CCString::getCString(local_3c);
  FUN_0079a3f4(auStack_58);
  FUN_007c6a60(auStack_54,uVar3,auStack_58);
  addSaw(param_1,uStack_1c,local_28,uStack_24);
  FUN_007c5914(auStack_54);
  FUN_0079a3fc(auStack_58);
  return;
}

// ---- ProjectileManager::addSaw  @ 0x3c4b38
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003c4c10 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* ProjectileManager::addSaw(cpVect, float, cpVect, Weapon*, bool, std::string) */

void ProjectileManager::addSaw
               (int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
               undefined4 param_5,undefined4 param_6,float param_7,undefined4 param_8,
               undefined4 param_9,undefined4 param_10,undefined4 param_11,undefined4 param_12,
               undefined4 param_13,char param_14,undefined4 param_15)

{
  WeaponFactory *pWVar1;
  CCObject *pCVar2;
  undefined4 extraout_r0;
  undefined4 extraout_r0_00;
  undefined4 extraout_r0_01;
  undefined4 extraout_r0_02;
  CCNotificationCenter *this;
  undefined4 extraout_r1;
  undefined4 uVar3;
  code *pcVar4;
  undefined4 in_fpscr;
  byte bVar5;
  double in_d0;
  undefined4 uVar7;
  double dVar6;
  float fVar8;
  undefined4 in_s3;
  undefined4 in_s5;
  double local_70;
  undefined4 local_68;
  undefined4 uStack_64;
  CCPoint aCStack_60 [8];
  undefined4 local_58 [2];
  undefined4 local_50;
  undefined4 local_48 [2];
  undefined4 local_40;
  undefined4 local_38 [2];
  undefined4 local_30;
  undefined4 local_28 [2];
  undefined4 local_20;
  
  bVar5 = (byte)((uint)in_fpscr >> 0x18);
  pWVar1 = (WeaponFactory *)WeaponFactory::sharedWeaponFactory();
  pCVar2 = (CCObject *)WeaponFactory::createWeaponFromAmmoType(pWVar1,0x18);
  cocos2d::CCArray::addObject(*(CCArray **)(param_1 + 0x18),pCVar2);
  (**(code **)(*(int *)pCVar2 + 0x1a4))(pCVar2,0);
  (**(code **)(*(int *)pCVar2 + 0x1a8))(pCVar2,1);
  pcVar4 = *(code **)(*(int *)pCVar2 + 0x200);
  (**(code **)(*hostSoldier + 0x1c0))(local_28,hostSoldier);
  (*pcVar4)(pCVar2,local_28);
  FUN_007c5914(local_28);
  thunk_FUN_007c653c(pCVar2 + 0x154,param_15);
  local_68 = SUB84((double)-(param_7 * 0.017453292),0);
  uStack_64 = (undefined4)((ulonglong)(double)-(param_7 * 0.017453292) >> 0x20);
  cpBodySetAngle(*(undefined4 *)(pCVar2 + 0xe8),extraout_r1,local_68,uStack_64);
  uVar7 = (undefined4)((ulonglong)in_d0 >> 0x20);
  FUN_003c2664(param_3,uVar7,param_5,*(undefined4 *)(pCVar2 + 0xe8));
  FUN_003c26bc(0,uVar7,0,*(undefined4 *)(pCVar2 + 0xe8));
  dVar6 = cos(in_d0);
  sin(dVar6);
  uVar7 = (undefined4)((ulonglong)dVar6 >> 0x20);
  FUN_003c24b0(extraout_r0,uVar7,extraout_r0_00,local_58);
  FUN_003c25d4(param_9,uVar7,param_11,in_s3,local_58[0],in_s5,local_50);
  local_70 = (double)CONCAT44(uVar7,param_9);
  if ((char)(bVar5 & 0xf | (byte)(((uint)(local_70 < 0.0) << 0x1f) >> 0x18) |
             (byte)(((uint)(local_70 == 0.0) << 0x1e) >> 0x18) |
            (byte)(((uint)(0.0 <= local_70) << 0x1d) >> 0x18)) < '\0') {
    local_70 = 0.0;
  }
  uVar3 = *(undefined4 *)(pCVar2 + 0xe8);
  FUN_003c2588(local_58[0],uVar7,local_50,in_s3,SUB84(local_70,0),local_48);
  FUN_003c2690(local_48[0],uVar7,local_40,uVar3);
  if (param_14 != '\0') {
    *(undefined4 *)(*(int *)(pCVar2 + 0xec) + 0x54) = 0x44;
    *(undefined4 *)(*(int *)(pCVar2 + 0xec) + 0x5c) = 0x44;
    *(undefined4 *)(*(int *)(pCVar2 + 0xec) + 0x58) = 0x44;
  }
  uVar3 = *(undefined4 *)(pCVar2 + 0xe8);
  dVar6 = cos((double)CONCAT44(uVar7,param_9));
  sin(dVar6);
  fVar8 = (float)((ulonglong)dVar6 >> 0x20);
  FUN_003c24b0(extraout_r0_01,fVar8,extraout_r0_02,local_38);
  FUN_003c2588(local_38[0],fVar8,local_30,in_s3,0,local_28);
  FUN_003c26e8(local_28[0],fVar8,local_20,in_s3,0,in_s5,0,uVar3);
  pcVar4 = *(code **)(*(int *)pCVar2 + 0x4c);
  cocos2d::CCPoint::CCPoint(aCStack_60,SUB84(dVar6,0),fVar8);
  (*pcVar4)(pCVar2,aCStack_60);
  this = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::postNotification(this,"WeaponCreate",pCVar2);
  return;
}
