// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 18 functions

// ---- WeaponFactory::WeaponFactory  @ 0x42786c
/* WeaponFactory::WeaponFactory() */

WeaponFactory * __thiscall WeaponFactory::WeaponFactory(WeaponFactory *this)

{
  cocos2d::CCObject::CCObject((CCObject *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_0091d6e8;
  return this;
}

// ---- WeaponFactory::sharedWeaponFactory  @ 0x427984
/* WeaponFactory::sharedWeaponFactory() */

WeaponFactory * WeaponFactory::sharedWeaponFactory(void)

{
  WeaponFactory *this;
  
  if (m_pInstance == (WeaponFactory *)0x0) {
    this = operator_new(0x28);
    WeaponFactory(this);
    m_pInstance = this;
    init(this);
  }
  return m_pInstance;
}

// ---- WeaponFactory::init  @ 0x4279d4
/* WeaponFactory::init() */

void __thiscall WeaponFactory::init(WeaponFactory *this)

{
  CCObject *pCVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  undefined4 uVar8;
  undefined4 uVar9;
  undefined4 uVar10;
  undefined4 uVar11;
  undefined4 uVar12;
  undefined4 uVar13;
  undefined4 uVar14;
  undefined4 uVar15;
  undefined4 uVar16;
  undefined4 uVar17;
  undefined4 uVar18;
  undefined4 uVar19;
  undefined4 uVar20;
  undefined4 uVar21;
  undefined4 uVar22;
  undefined4 uVar23;
  undefined4 uVar24;
  undefined1 auStack_e8 [4];
  undefined1 auStack_e4 [4];
  undefined1 auStack_e0 [4];
  undefined1 auStack_dc [4];
  undefined1 auStack_d8 [4];
  undefined1 auStack_d4 [4];
  undefined1 auStack_d0 [4];
  undefined1 auStack_cc [4];
  undefined1 auStack_c8 [4];
  undefined1 auStack_c4 [4];
  undefined1 auStack_c0 [4];
  undefined1 auStack_bc [4];
  undefined1 auStack_b8 [4];
  undefined1 auStack_b4 [4];
  undefined1 auStack_b0 [4];
  undefined1 auStack_ac [4];
  undefined1 auStack_a8 [4];
  undefined1 auStack_a4 [4];
  undefined1 auStack_a0 [4];
  undefined1 auStack_9c [4];
  undefined1 auStack_98 [4];
  undefined1 auStack_94 [4];
  undefined1 auStack_90 [4];
  undefined1 auStack_8c [4];
  undefined1 auStack_88 [4];
  undefined1 auStack_84 [4];
  undefined1 auStack_80 [4];
  undefined1 auStack_7c [4];
  undefined1 auStack_78 [4];
  undefined1 auStack_74 [4];
  undefined1 auStack_70 [4];
  undefined1 auStack_6c [4];
  undefined1 auStack_68 [4];
  undefined1 auStack_64 [4];
  undefined1 auStack_60 [4];
  undefined1 auStack_5c [4];
  undefined1 auStack_58 [4];
  undefined1 auStack_54 [4];
  undefined1 auStack_50 [4];
  undefined1 auStack_4c [4];
  undefined1 auStack_48 [4];
  undefined1 auStack_44 [4];
  undefined1 auStack_40 [4];
  undefined1 auStack_3c [4];
  undefined1 auStack_38 [4];
  undefined1 auStack_34 [4];
  undefined1 auStack_30 [4];
  undefined1 auStack_2c [8];
  
  pCVar1 = (CCObject *)cocos2d::CCInteger::create(1);
  uVar2 = cocos2d::CCInteger::create(2);
  uVar3 = cocos2d::CCInteger::create(3);
  uVar4 = cocos2d::CCInteger::create(4);
  uVar5 = cocos2d::CCInteger::create(6);
  uVar6 = cocos2d::CCInteger::create(5);
  uVar7 = cocos2d::CCInteger::create(7);
  uVar8 = cocos2d::CCInteger::create(8);
  uVar9 = cocos2d::CCInteger::create(9);
  uVar10 = cocos2d::CCInteger::create(10);
  uVar11 = cocos2d::CCInteger::create(0xb);
  uVar12 = cocos2d::CCInteger::create(0x10);
  uVar13 = cocos2d::CCInteger::create(0x11);
  uVar14 = cocos2d::CCInteger::create(0x12);
  uVar15 = cocos2d::CCInteger::create(0x13);
  uVar16 = cocos2d::CCInteger::create(0x19);
  uVar17 = cocos2d::CCInteger::create(0x14);
  uVar18 = cocos2d::CCInteger::create(0x15);
  uVar19 = cocos2d::CCInteger::create(0x17);
  uVar20 = cocos2d::CCInteger::create(0x18);
  uVar2 = cocos2d::CCArray::create
                    (pCVar1,uVar2,uVar3,uVar4,uVar5,uVar6,uVar7,uVar8,uVar9,uVar10,uVar11,uVar12,
                     uVar13,uVar14,uVar15,uVar16,uVar17,uVar18,uVar19,uVar20,0);
  *(undefined4 *)(this + 0x14) = uVar2;
  cocos2d::CCObject::retain(*(CCObject **)(this + 0x14));
  pCVar1 = (CCObject *)cocos2d::CCInteger::create(3);
  uVar2 = cocos2d::CCInteger::create(4);
  uVar3 = cocos2d::CCInteger::create(5);
  uVar4 = cocos2d::CCInteger::create(6);
  uVar5 = cocos2d::CCInteger::create(7);
  uVar6 = cocos2d::CCInteger::create(8);
  uVar7 = cocos2d::CCInteger::create(9);
  uVar8 = cocos2d::CCInteger::create(10);
  uVar9 = cocos2d::CCInteger::create(0xb);
  uVar2 = cocos2d::CCArray::create(pCVar1,uVar2,uVar3,uVar4,uVar5,uVar6,uVar7,uVar8,uVar9,0);
  *(undefined4 *)(this + 0x18) = uVar2;
  cocos2d::CCObject::retain(*(CCObject **)(this + 0x18));
  pCVar1 = (CCObject *)cocos2d::CCInteger::create(4);
  uVar2 = cocos2d::CCInteger::create(5);
  uVar2 = cocos2d::CCArray::create(pCVar1,uVar2,0);
  *(undefined4 *)(this + 0x1c) = uVar2;
  cocos2d::CCObject::retain(*(CCObject **)(this + 0x1c));
  pCVar1 = (CCObject *)cocos2d::CCInteger::create(3);
  uVar2 = cocos2d::CCArray::create(pCVar1,0);
  *(undefined4 *)(this + 0x20) = uVar2;
  cocos2d::CCObject::retain(*(CCObject **)(this + 0x20));
  FUN_0079a3f4(auStack_e8);
  FUN_007c6a60(auStack_88,"fragnade",auStack_e8);
  pCVar1 = (CCObject *)WeaponType::initWithName(auStack_88,2);
  FUN_0079a3f4(auStack_e4);
  FUN_007c6a60(auStack_84,"machete",auStack_e4);
  uVar2 = WeaponType::initWithName(auStack_84,1);
  FUN_0079a3f4(auStack_e0);
  FUN_007c6a60(auStack_80,&DAT_007eb634,auStack_e0);
  uVar3 = WeaponType::initWithName(auStack_80,0xd);
  FUN_0079a3f4(auStack_dc);
  FUN_007c6a60(auStack_7c,&DAT_007eb63c,auStack_dc);
  uVar4 = WeaponType::initWithName(auStack_7c,5);
  FUN_0079a3f4(auStack_d8);
  FUN_007c6a60(auStack_78,&DAT_007eb640,auStack_d8);
  uVar5 = WeaponType::initWithName(auStack_78,6);
  FUN_0079a3f4(auStack_d4);
  FUN_007c6a60(auStack_74,&DAT_007eb644,auStack_d4);
  uVar6 = WeaponType::initWithName(auStack_74,7);
  FUN_0079a3f4(auStack_d0);
  FUN_007c6a60(auStack_70,&DAT_007eb64c,auStack_d0);
  uVar7 = WeaponType::initWithName(auStack_70,8);
  FUN_0079a3f4(auStack_cc);
  FUN_007c6a60(auStack_6c,"magnum",auStack_cc);
  uVar8 = WeaponType::initWithName(auStack_6c,4);
  FUN_0079a3f4(auStack_c8);
  FUN_007c6a60(auStack_68,"shotgun",auStack_c8);
  uVar9 = WeaponType::initWithName(auStack_68,9);
  FUN_0079a3f4(auStack_c4);
  FUN_007c6a60(auStack_64,"m93ba",auStack_c4);
  uVar10 = WeaponType::initWithName(auStack_64,10);
  FUN_0079a3f4(auStack_c0);
  FUN_007c6a60(auStack_60,"deagle",auStack_c0);
  uVar11 = WeaponType::initWithName(auStack_60,3);
  FUN_0079a3f4(auStack_bc);
  FUN_007c6a60(auStack_5c,&DAT_007eb670,auStack_bc);
  uVar12 = WeaponType::initWithName(auStack_5c,0xb);
  FUN_0079a3f4(auStack_b8);
  FUN_007c6a60(auStack_58,&DAT_007eb678,auStack_b8);
  uVar13 = WeaponType::initWithName(auStack_58,0x10);
  FUN_0079a3f4(auStack_b4);
  FUN_007c6a60(auStack_54,"phasr",auStack_b4);
  uVar14 = WeaponType::initWithName(auStack_54,0x11);
  FUN_0079a3f4(auStack_b0);
  FUN_007c6a60(auStack_50,"gdeagle",auStack_b0);
  uVar15 = WeaponType::initWithName(auStack_50,0x12);
  FUN_0079a3f4(auStack_ac);
  FUN_007c6a60(auStack_4c,"flame",auStack_ac);
  uVar16 = WeaponType::initWithName(auStack_4c,0x13);
  FUN_0079a3f4(auStack_a8);
  FUN_007c6a60(auStack_48,"sawgun",auStack_a8);
  uVar17 = WeaponType::initWithName(auStack_48,0x19);
  FUN_0079a3f4(auStack_a4);
  FUN_007c6a60(auStack_44,&DAT_007eb69c,auStack_a4);
  uVar18 = WeaponType::initWithName(auStack_44,0x18);
  FUN_0079a3f4(auStack_a0);
  FUN_007c6a60(auStack_40,"rocket",auStack_a0);
  uVar19 = WeaponType::initWithName(auStack_40,0xc);
  FUN_0079a3f4(auStack_9c);
  FUN_007c6a60(auStack_3c,"healthpack",auStack_9c);
  uVar20 = WeaponType::initWithName(auStack_3c,0xe);
  FUN_0079a3f4(auStack_98);
  FUN_007c6a60(auStack_38,"boosttank",auStack_98);
  uVar21 = WeaponType::initWithName(auStack_38,0xf);
  FUN_0079a3f4(auStack_94);
  FUN_007c6a60(auStack_34,"gasnade",auStack_94);
  uVar22 = WeaponType::initWithName(auStack_34,0x14);
  FUN_0079a3f4(auStack_90);
  FUN_007c6a60(auStack_30,&DAT_007eb6c8,auStack_90);
  uVar23 = WeaponType::initWithName(auStack_30,0x15);
  FUN_0079a3f4(auStack_8c);
  FUN_007c6a60(auStack_2c,"proxynade",auStack_8c);
  uVar24 = WeaponType::initWithName(auStack_2c,0x17);
  uVar2 = cocos2d::CCArray::create
                    (pCVar1,uVar2,uVar3,uVar4,uVar5,uVar6,uVar7,uVar8,uVar9,uVar10,uVar11,uVar12,
                     uVar13,uVar14,uVar15,uVar16,uVar17,uVar18,uVar19,uVar20,uVar21,uVar22,uVar23,
                     uVar24,0);
  *(undefined4 *)(this + 0x24) = uVar2;
  FUN_007c5914(auStack_2c);
  FUN_0079a3fc(auStack_8c);
  FUN_007c5914(auStack_30);
  FUN_0079a3fc(auStack_90);
  FUN_007c5914(auStack_34);
  FUN_0079a3fc(auStack_94);
  FUN_007c5914(auStack_38);
  FUN_0079a3fc(auStack_98);
  FUN_007c5914(auStack_3c);
  FUN_0079a3fc(auStack_9c);
  FUN_007c5914(auStack_40);
  FUN_0079a3fc(auStack_a0);
  FUN_007c5914(auStack_44);
  FUN_0079a3fc(auStack_a4);
  FUN_007c5914(auStack_48);
  FUN_0079a3fc(auStack_a8);
  FUN_007c5914(auStack_4c);
  FUN_0079a3fc(auStack_ac);
  FUN_007c5914(auStack_50);
  FUN_0079a3fc(auStack_b0);
  FUN_007c5914(auStack_54);
  FUN_0079a3fc(auStack_b4);
  FUN_007c5914(auStack_58);
  FUN_0079a3fc(auStack_b8);
  FUN_007c5914(auStack_5c);
  FUN_0079a3fc(auStack_bc);
  FUN_007c5914(auStack_60);
  FUN_0079a3fc(auStack_c0);
  FUN_007c5914(auStack_64);
  FUN_0079a3fc(auStack_c4);
  FUN_007c5914(auStack_68);
  FUN_0079a3fc(auStack_c8);
  FUN_007c5914(auStack_6c);
  FUN_0079a3fc(auStack_cc);
  FUN_007c5914(auStack_70);
  FUN_0079a3fc(auStack_d0);
  FUN_007c5914(auStack_74);
  FUN_0079a3fc(auStack_d4);
  FUN_007c5914(auStack_78);
  FUN_0079a3fc(auStack_d8);
  FUN_007c5914(auStack_7c);
  FUN_0079a3fc(auStack_dc);
  FUN_007c5914(auStack_80);
  FUN_0079a3fc(auStack_e0);
  FUN_007c5914(auStack_84);
  FUN_0079a3fc(auStack_e4);
  FUN_007c5914(auStack_88);
  FUN_0079a3fc(auStack_e8);
  cocos2d::CCObject::retain(*(CCObject **)(this + 0x24));
  return;
}

// ---- WeaponFactory::~WeaponFactory  @ 0x428370
/* WARNING: Removing unreachable block (ram,0x004283ba) */
/* WeaponFactory::~WeaponFactory() */

WeaponFactory * __thiscall WeaponFactory::~WeaponFactory(WeaponFactory *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_0091d6e8;
  cocos2d::CCObject::release(*(CCObject **)(this + 0x14));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x18));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x20));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x1c));
  cocos2d::CCObject::~CCObject((CCObject *)this);
  return this;
}

// ---- WeaponFactory::~WeaponFactory  @ 0x4283d4
/* WeaponFactory::~WeaponFactory() */

WeaponFactory * __thiscall WeaponFactory::~WeaponFactory(WeaponFactory *this)

{
  ~WeaponFactory(this);
  operator_delete(this);
  return this;
}

// ---- WeaponFactory::createRandomWeapon  @ 0x4283f0
/* WeaponFactory::createRandomWeapon() */

undefined4 __thiscall WeaponFactory::createRandomWeapon(WeaponFactory *this)

{
  undefined4 uVar1;
  float fVar2;
  uint uVar3;
  CCInteger *this_00;
  uint in_fpscr;
  float extraout_s0;
  uint local_18;
  
  uVar1 = FUN_004260e8();
  VectorSignedToFloat(uVar1,(byte)(in_fpscr >> 0x16) & 3);
  uVar1 = cocos2d::CCArray::count(*(CCArray **)(this + 0x14));
  VectorUnsignedToFloat(uVar1,(byte)(in_fpscr >> 0x16) & 3);
  fVar2 = (float)std::abs(extraout_s0);
  local_18 = (uint)fVar2;
  uVar3 = cocos2d::CCArray::count(*(CCArray **)(this + 0x14));
  if (uVar3 <= local_18) {
    local_18 = 0;
  }
  this_00 = (CCInteger *)cocos2d::CCArray::objectAtIndex(*(CCArray **)(this + 0x14),local_18);
  uVar1 = cocos2d::CCInteger::getValue(this_00);
  uVar1 = createWeaponFromAmmoType(this,uVar1);
  return uVar1;
}

// ---- WeaponFactory::createRandomPrimaryWeapon  @ 0x428498
/* WeaponFactory::createRandomPrimaryWeapon() */

undefined4 __thiscall WeaponFactory::createRandomPrimaryWeapon(WeaponFactory *this)

{
  undefined4 uVar1;
  float fVar2;
  uint uVar3;
  CCInteger *this_00;
  uint in_fpscr;
  float extraout_s0;
  uint local_18;
  
  uVar1 = FUN_004260e8();
  VectorSignedToFloat(uVar1,(byte)(in_fpscr >> 0x16) & 3);
  uVar1 = cocos2d::CCArray::count(*(CCArray **)(this + 0x18));
  VectorUnsignedToFloat(uVar1,(byte)(in_fpscr >> 0x16) & 3);
  fVar2 = (float)std::abs(extraout_s0);
  local_18 = (uint)fVar2;
  uVar3 = cocos2d::CCArray::count(*(CCArray **)(this + 0x18));
  if (uVar3 <= local_18) {
    local_18 = 0;
  }
  this_00 = (CCInteger *)cocos2d::CCArray::objectAtIndex(*(CCArray **)(this + 0x18),local_18);
  uVar1 = cocos2d::CCInteger::getValue(this_00);
  uVar1 = createWeaponFromAmmoType(this,uVar1);
  return uVar1;
}

// ---- WeaponFactory::createRandomStartWeapon  @ 0x428540
/* WeaponFactory::createRandomStartWeapon() */

undefined4 __thiscall WeaponFactory::createRandomStartWeapon(WeaponFactory *this)

{
  undefined4 uVar1;
  float fVar2;
  uint uVar3;
  CCInteger *this_00;
  uint in_fpscr;
  float extraout_s0;
  uint local_18;
  
  uVar1 = FUN_004260e8();
  VectorSignedToFloat(uVar1,(byte)(in_fpscr >> 0x16) & 3);
  uVar1 = cocos2d::CCArray::count(*(CCArray **)(this + 0x1c));
  VectorUnsignedToFloat(uVar1,(byte)(in_fpscr >> 0x16) & 3);
  fVar2 = (float)std::abs(extraout_s0);
  local_18 = (uint)fVar2;
  uVar3 = cocos2d::CCArray::count(*(CCArray **)(this + 0x1c));
  if (uVar3 <= local_18) {
    local_18 = 0;
  }
  this_00 = (CCInteger *)cocos2d::CCArray::objectAtIndex(*(CCArray **)(this + 0x1c),local_18);
  uVar1 = cocos2d::CCInteger::getValue(this_00);
  uVar1 = createWeaponFromAmmoType(this,uVar1);
  return uVar1;
}

// ---- WeaponFactory::createRandomSecondaryWeapon  @ 0x4285e8
/* WeaponFactory::createRandomSecondaryWeapon() */

undefined4 __thiscall WeaponFactory::createRandomSecondaryWeapon(WeaponFactory *this)

{
  undefined4 uVar1;
  float fVar2;
  uint uVar3;
  CCInteger *this_00;
  uint in_fpscr;
  float extraout_s0;
  uint local_18;
  
  uVar1 = FUN_004260e8();
  VectorSignedToFloat(uVar1,(byte)(in_fpscr >> 0x16) & 3);
  uVar1 = cocos2d::CCArray::count(*(CCArray **)(this + 0x20));
  VectorUnsignedToFloat(uVar1,(byte)(in_fpscr >> 0x16) & 3);
  fVar2 = (float)std::abs(extraout_s0);
  local_18 = (uint)fVar2;
  uVar3 = cocos2d::CCArray::count(*(CCArray **)(this + 0x20));
  if (uVar3 <= local_18) {
    local_18 = 0;
  }
  this_00 = (CCInteger *)cocos2d::CCArray::objectAtIndex(*(CCArray **)(this + 0x20),local_18);
  uVar1 = cocos2d::CCInteger::getValue(this_00);
  uVar1 = createWeaponFromAmmoType(this,uVar1);
  return uVar1;
}

// ---- WeaponFactory::getAmmoTypeFromString  @ 0x428690
/* WeaponFactory::getAmmoTypeFromString(std::string) */

undefined4 __thiscall WeaponFactory::getAmmoTypeFromString(WeaponFactory *this,undefined4 param_2)

{
  int iVar1;
  int iVar2;
  uint uVar3;
  uint local_10;
  
  local_10 = 0;
  while( true ) {
    uVar3 = cocos2d::CCArray::count(*(CCArray **)(this + 0x24));
    if (uVar3 <= local_10) {
      return 0;
    }
    iVar1 = cocos2d::CCArray::objectAtIndex(*(CCArray **)(this + 0x24),local_10);
    iVar2 = FUN_007c567c(iVar1 + 0x14,param_2);
    if (iVar2 == 0) break;
    local_10 = local_10 + 1;
  }
  return *(undefined4 *)(iVar1 + 0x18);
}

// ---- WeaponFactory::createWeaponFromAmmoType  @ 0x4286fc
/* WeaponFactory::createWeaponFromAmmoType(ItemType) */

int * __thiscall WeaponFactory::createWeaponFromAmmoType(undefined4 param_1,undefined4 param_2)

{
  int *local_c;
  
  switch(param_2) {
  case 1:
    local_c = (int *)MACHETE::create();
    break;
  case 2:
    local_c = (int *)FRAGNADE::create();
    break;
  case 3:
    local_c = (int *)DEAGLE::create();
    break;
  case 4:
    local_c = (int *)MAGNUM::create();
    break;
  case 5:
    local_c = (int *)UZI::create();
    break;
  case 6:
    local_c = (int *)MP5::create();
    break;
  case 7:
    local_c = (int *)AK47::create();
    break;
  case 8:
    local_c = (int *)M16::create();
    break;
  case 9:
    local_c = (int *)SHOTGUN::create();
    break;
  case 10:
    local_c = (int *)M93BA::create();
    break;
  case 0xb:
    local_c = (int *)SMAW::create();
    break;
  case 0xc:
    local_c = (int *)ROCKET::create();
    break;
  case 0xd:
    local_c = (int *)RIOTSHIELD::create();
    break;
  case 0xe:
    local_c = (int *)POWERUP::create();
    break;
  case 0xf:
    local_c = (int *)POWERUP::create();
    break;
  case 0x10:
    local_c = (int *)M14::create();
    break;
  case 0x11:
    local_c = (int *)PHASR::create();
    break;
  case 0x12:
    local_c = (int *)GDEAGLE::create();
    break;
  case 0x13:
    local_c = (int *)FLAMETHROWER::create();
    break;
  case 0x14:
    local_c = (int *)GASNADE::create();
    break;
  case 0x15:
    local_c = (int *)EMP::create();
    break;
  default:
    return (int *)0x0;
  case 0x17:
    local_c = (int *)PROXYNADE::create();
    break;
  case 0x18:
    local_c = (int *)SAW::create();
    break;
  case 0x19:
    local_c = (int *)SAWGUN::create();
  }
  (**(code **)(*local_c + 0x280))(local_c,param_2);
  return local_c;
}

// ---- WeaponFactory::isClipHandgun  @ 0x428890
/* WeaponFactory::isClipHandgun(ItemType) */

undefined1 __thiscall WeaponFactory::isClipHandgun(undefined4 param_1,int param_2)

{
  undefined1 local_1;
  
  local_1 = 0;
  if (((param_2 == 5) || (param_2 == 0x12)) || (param_2 == 3)) {
    local_1 = 1;
  }
  return local_1;
}

// ---- WeaponFactory::isReloadHandgun  @ 0x4288c0
/* WeaponFactory::isReloadHandgun(ItemType) */

undefined1 __thiscall WeaponFactory::isReloadHandgun(undefined4 param_1,int param_2)

{
  undefined1 local_1;
  
  local_1 = 0;
  if ((2 < param_2) && ((param_2 < 6 || (param_2 == 0x12)))) {
    local_1 = 1;
  }
  return local_1;
}

// ---- WeaponFactory::isClipRifle  @ 0x4288f0
/* WeaponFactory::isClipRifle(ItemType) */

undefined1 __thiscall WeaponFactory::isClipRifle(undefined4 param_1,int param_2)

{
  undefined1 local_1;
  
  local_1 = 0;
  if ((6 < param_2) && ((param_2 < 9 || (param_2 == 0x10)))) {
    local_1 = 1;
  }
  return local_1;
}

// ---- WeaponFactory::isLaserSight  @ 0x428920
/* WeaponFactory::isLaserSight(ItemType) */

undefined1 __thiscall WeaponFactory::isLaserSight(undefined4 param_1,int param_2)

{
  undefined1 local_1;
  
  local_1 = 0;
  if ((2 < param_2) && ((param_2 < 10 || (param_2 == 0x12)))) {
    local_1 = 1;
  }
  return local_1;
}

// ---- WeaponFactory::isProPackWeapon  @ 0x428950
/* WeaponFactory::isProPackWeapon(ItemType) */

undefined1 __thiscall WeaponFactory::isProPackWeapon(undefined4 param_1,undefined4 param_2)

{
  undefined1 local_1;
  
  local_1 = 0;
  switch(param_2) {
  case 1:
  case 10:
  case 0xb:
  case 0x11:
  case 0x12:
  case 0x13:
  case 0x15:
  case 0x19:
    local_1 = 1;
  }
  return local_1;
}

// ---- WeaponFactory::isDualWeapon  @ 0x4289e8
/* WeaponFactory::isDualWeapon(ItemType) */

undefined1 __thiscall WeaponFactory::isDualWeapon(undefined4 param_1,undefined4 param_2)

{
  undefined1 local_1;
  
  local_1 = 0;
  switch(param_2) {
  case 0xffffffff:
  case 0:
  case 1:
  case 2:
  case 3:
  case 4:
  case 5:
  case 0xd:
  case 0x12:
  case 0x14:
  case 0x17:
    local_1 = 1;
  }
  return local_1;
}

// ---- WeaponFactory::getWeaponInfoFromAmmoType  @ 0x428a80
/* WeaponFactory::getWeaponInfoFromAmmoType(ItemType) */

undefined4 *
WeaponFactory::getWeaponInfoFromAmmoType(undefined4 *param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 uVar1;
  
  *param_1 = 0;
  param_1[1] = 1;
  switch(param_3) {
  case 3:
    uVar1 = DEAGLE::getDAMAGE();
    *param_1 = uVar1;
    uVar1 = DEAGLE::getRANGE();
    param_1[1] = uVar1;
    break;
  case 4:
    uVar1 = MAGNUM::getDAMAGE();
    *param_1 = uVar1;
    uVar1 = MAGNUM::getRANGE();
    param_1[1] = uVar1;
    break;
  case 5:
    uVar1 = UZI::getDAMAGE();
    *param_1 = uVar1;
    uVar1 = UZI::getRANGE();
    param_1[1] = uVar1;
    break;
  case 6:
    uVar1 = MP5::getDAMAGE();
    *param_1 = uVar1;
    uVar1 = MP5::getRANGE();
    param_1[1] = uVar1;
    break;
  case 7:
    uVar1 = AK47::getDAMAGE();
    *param_1 = uVar1;
    uVar1 = AK47::getRANGE();
    param_1[1] = uVar1;
    break;
  case 8:
    uVar1 = M16::getDAMAGE();
    *param_1 = uVar1;
    uVar1 = M16::getRANGE();
    param_1[1] = uVar1;
    break;
  case 9:
    uVar1 = SHOTGUN::getDAMAGE();
    *param_1 = uVar1;
    uVar1 = SHOTGUN::getRANGE();
    param_1[1] = uVar1;
    break;
  case 10:
    uVar1 = M93BA::getDAMAGE();
    *param_1 = uVar1;
    uVar1 = M93BA::getRANGE();
    param_1[1] = uVar1;
    break;
  default:
    *param_1 = 0;
    param_1[1] = 1;
    break;
  case 0x10:
    uVar1 = M14::getDAMAGE();
    *param_1 = uVar1;
    uVar1 = M14::getRANGE();
    param_1[1] = uVar1;
    break;
  case 0x11:
    uVar1 = PHASR::getDAMAGE();
    *param_1 = uVar1;
    uVar1 = PHASR::getRANGE();
    param_1[1] = uVar1;
    break;
  case 0x12:
    uVar1 = GDEAGLE::getDAMAGE();
    *param_1 = uVar1;
    uVar1 = GDEAGLE::getRANGE();
    param_1[1] = uVar1;
  }
  return param_1;
}
