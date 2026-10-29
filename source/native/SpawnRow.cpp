// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 4 functions

// ---- SpawnRow::SpawnRow  @ 0x3fb934
/* SpawnRow::SpawnRow() */

SpawnRow * __thiscall SpawnRow::SpawnRow(SpawnRow *this)

{
  cocos2d::CCObject::CCObject((CCObject *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_0091b8f8;
  init();
  return this;
}

// ---- SpawnRow::init  @ 0x3fb978
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003fb992 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* SpawnRow::init() */

undefined4 SpawnRow::init(void)

{
  int in_r0;
  undefined4 in_s1;
  undefined4 local_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  
  *(undefined4 *)(in_r0 + 0x14) = 0;
  FUN_003faa80(0,in_s1,0,&local_20);
  *(undefined4 *)(in_r0 + 0x18) = local_20;
  *(undefined4 *)(in_r0 + 0x1c) = uStack_1c;
  *(undefined4 *)(in_r0 + 0x20) = uStack_18;
  *(undefined4 *)(in_r0 + 0x24) = uStack_14;
  return 1;
}

// ---- SpawnRow::~SpawnRow  @ 0x3fb9b0
/* WARNING: Removing unreachable block (ram,0x003fb9d2) */
/* SpawnRow::~SpawnRow() */

SpawnRow * __thiscall SpawnRow::~SpawnRow(SpawnRow *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_0091b8f8;
  cocos2d::CCObject::~CCObject((CCObject *)this);
  return this;
}

// ---- SpawnRow::~SpawnRow  @ 0x3fb9ec
/* SpawnRow::~SpawnRow() */

SpawnRow * __thiscall SpawnRow::~SpawnRow(SpawnRow *this)

{
  ~SpawnRow(this);
  operator_delete(this);
  return this;
}
