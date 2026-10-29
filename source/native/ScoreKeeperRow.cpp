// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 4 functions

// ---- ScoreKeeperRow::ScoreKeeperRow  @ 0x3e21b0
/* ScoreKeeperRow::ScoreKeeperRow() */

ScoreKeeperRow * __thiscall ScoreKeeperRow::ScoreKeeperRow(ScoreKeeperRow *this)

{
  cocos2d::CCObject::CCObject((CCObject *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_0091a5f8;
  FUN_007c51b0(this + 0x14);
  FUN_007c51b0(this + 0x18);
  init(this);
  return this;
}

// ---- ScoreKeeperRow::init  @ 0x3e221c
/* ScoreKeeperRow::init() */

undefined4 __thiscall ScoreKeeperRow::init(ScoreKeeperRow *this)

{
  FUN_007c5e70(this + 0x14,&DAT_007e7220);
  FUN_007c5e70(this + 0x18,&DAT_007e7220);
  *(undefined4 *)(this + 0x1c) = 0;
  return 1;
}

// ---- ScoreKeeperRow::~ScoreKeeperRow  @ 0x3e225c
/* WARNING: Removing unreachable block (ram,0x003e2292) */
/* ScoreKeeperRow::~ScoreKeeperRow() */

ScoreKeeperRow * __thiscall ScoreKeeperRow::~ScoreKeeperRow(ScoreKeeperRow *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_0091a5f8;
  FUN_007c5914(this + 0x18);
  FUN_007c5914(this + 0x14);
  cocos2d::CCObject::~CCObject((CCObject *)this);
  return this;
}

// ---- ScoreKeeperRow::~ScoreKeeperRow  @ 0x3e22ac
/* ScoreKeeperRow::~ScoreKeeperRow() */

ScoreKeeperRow * __thiscall ScoreKeeperRow::~ScoreKeeperRow(ScoreKeeperRow *this)

{
  ~ScoreKeeperRow(this);
  operator_delete(this);
  return this;
}
