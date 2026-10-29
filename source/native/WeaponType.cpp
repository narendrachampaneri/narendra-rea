// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 4 functions

// ---- WeaponType::WeaponType  @ 0x427898
/* WeaponType::WeaponType() */

WeaponType * __thiscall WeaponType::WeaponType(WeaponType *this)

{
  cocos2d::CCObject::CCObject((CCObject *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_0091d708;
  FUN_007c51b0(this + 0x14);
  return this;
}

// ---- WeaponType::~WeaponType  @ 0x4278dc
/* WARNING: Removing unreachable block (ram,0x00427908) */
/* WeaponType::~WeaponType() */

WeaponType * __thiscall WeaponType::~WeaponType(WeaponType *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_0091d708;
  FUN_007c5914(this + 0x14);
  cocos2d::CCObject::~CCObject((CCObject *)this);
  return this;
}

// ---- WeaponType::~WeaponType  @ 0x427920
/* WeaponType::~WeaponType() */

WeaponType * __thiscall WeaponType::~WeaponType(WeaponType *this)

{
  ~WeaponType(this);
  operator_delete(this);
  return this;
}

// ---- WeaponType::initWithName  @ 0x42793c
/* WeaponType::initWithName(std::string, ItemType) */

WeaponType * WeaponType::initWithName(undefined4 param_1,undefined4 param_2)

{
  WeaponType *this;
  
  this = operator_new(0x1c);
  WeaponType(this);
  thunk_FUN_007c653c(this + 0x14,param_1);
  *(undefined4 *)(this + 0x18) = param_2;
  cocos2d::CCObject::autorelease((CCObject *)this);
  return this;
}
