// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 5 functions

// ---- ItemInfo::ItemInfo  @ 0x359184
/* ItemInfo::ItemInfo() */

ItemInfo * __thiscall ItemInfo::ItemInfo(ItemInfo *this)

{
  float extraout_s0;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  CCRect aCStack_18 [16];
  
  FUN_007c51b0(this);
  FUN_007c51b0(this + 4);
  FUN_007c51b0(this + 8);
  FUN_007c51b0(this + 0x1c);
  cocos2d::CCRect::CCRect((CCRect *)(this + 0x20));
  FUN_007c5e70(this,&DAT_007daa70);
  FUN_007c5e70(this + 4,&DAT_007daa70);
  FUN_007c5e70(this + 8,&DAT_007daa70);
  FUN_007c5e70(this + 0x1c,&DAT_007daa70);
  *(undefined4 *)(this + 0xc) = 0;
  *(undefined4 *)(this + 0x10) = 0;
  *(undefined4 *)(this + 0x14) = 0;
  cocos2d::CCRect::CCRect(aCStack_18,extraout_s0,extraout_s1,extraout_s2,extraout_s3);
  cocos2d::CCRect::operator=((CCRect *)(this + 0x20),aCStack_18);
  this[0x18] = (ItemInfo)0x0;
  return this;
}

// ---- ItemInfo::~ItemInfo  @ 0x3592cc
/* ItemInfo::~ItemInfo() */

ItemInfo * __thiscall ItemInfo::~ItemInfo(ItemInfo *this)

{
  FUN_007c5914(this + 0x1c);
  FUN_007c5914(this + 8);
  FUN_007c5914(this + 4);
  FUN_007c5914(this);
  return this;
}

// ---- ItemInfo::operator=  @ 0x359dbc
/* ItemInfo::TEMPNAMEPLACEHOLDERVALUE(ItemInfo&&) */

ItemInfo * __thiscall ItemInfo::operator=(ItemInfo *this,ItemInfo *param_1)

{
  FUN_007c52e8(this,param_1);
  FUN_007c52e8(this + 4,param_1 + 4);
  FUN_007c52e8(this + 8,param_1 + 8);
  *(undefined4 *)(this + 0xc) = *(undefined4 *)(param_1 + 0xc);
  *(undefined4 *)(this + 0x10) = *(undefined4 *)(param_1 + 0x10);
  *(undefined4 *)(this + 0x14) = *(undefined4 *)(param_1 + 0x14);
  this[0x18] = param_1[0x18];
  FUN_007c52e8(this + 0x1c,param_1 + 0x1c);
  cocos2d::CCRect::operator=((CCRect *)(this + 0x20),(CCRect *)(param_1 + 0x20));
  return this;
}

// ---- ItemInfo::ItemInfo  @ 0x35a314
/* ItemInfo::ItemInfo(ItemInfo const&) */

ItemInfo * __thiscall ItemInfo::ItemInfo(ItemInfo *this,ItemInfo *param_1)

{
  FUN_007c64e8(this,param_1);
  FUN_007c64e8(this + 4,param_1 + 4);
  FUN_007c64e8(this + 8,param_1 + 8);
  *(undefined4 *)(this + 0xc) = *(undefined4 *)(param_1 + 0xc);
  *(undefined4 *)(this + 0x10) = *(undefined4 *)(param_1 + 0x10);
  *(undefined4 *)(this + 0x14) = *(undefined4 *)(param_1 + 0x14);
  this[0x18] = param_1[0x18];
  FUN_007c64e8(this + 0x1c,param_1 + 0x1c);
  cocos2d::CCRect::CCRect((CCRect *)(this + 0x20),(CCRect *)(param_1 + 0x20));
  return this;
}

// ---- ItemInfo::ItemInfo  @ 0x35a4b8
/* ItemInfo::ItemInfo(ItemInfo&&) */

ItemInfo * __thiscall ItemInfo::ItemInfo(ItemInfo *this,ItemInfo *param_1)

{
  FUN_007c51c0(this,param_1);
  FUN_007c51c0(this + 4,param_1 + 4);
  FUN_007c51c0(this + 8,param_1 + 8);
  *(undefined4 *)(this + 0xc) = *(undefined4 *)(param_1 + 0xc);
  *(undefined4 *)(this + 0x10) = *(undefined4 *)(param_1 + 0x10);
  *(undefined4 *)(this + 0x14) = *(undefined4 *)(param_1 + 0x14);
  this[0x18] = param_1[0x18];
  FUN_007c51c0(this + 0x1c,param_1 + 0x1c);
  cocos2d::CCRect::CCRect((CCRect *)(this + 0x20),(CCRect *)(param_1 + 0x20));
  return this;
}
