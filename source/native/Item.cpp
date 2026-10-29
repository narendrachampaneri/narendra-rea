// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 44 functions

// ---- Item::getIsGrabable  @ 0x2edab4
/* Item::getIsGrabable() */

Item __thiscall Item::getIsGrabable(Item *this)

{
  return this[0x13c];
}

// ---- Item::getIsManaged  @ 0x2edac4
/* Item::getIsManaged() */

Item __thiscall Item::getIsManaged(Item *this)

{
  return this[0x13d];
}

// ---- Item::setIsGrabable  @ 0x2edad4
/* Item::setIsGrabable(bool) */

void __thiscall Item::setIsGrabable(Item *this,bool param_1)

{
  this[0x13c] = (Item)param_1;
  return;
}

// ---- Item::setIsManaged  @ 0x2edaec
/* Item::setIsManaged(bool) */

void __thiscall Item::setIsManaged(Item *this,bool param_1)

{
  this[0x13d] = (Item)param_1;
  return;
}

// ---- Item::Item  @ 0x357cdc
/* Item::Item() */

Item * __thiscall Item::Item(Item *this)

{
  cocos2d::CCNode::CCNode((CCNode *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_00913020;
  FUN_007c51b0(this + 0x108);
  FUN_007c51b0(this + 0x10c);
  FUN_007c51b0(this + 0x140);
  return this;
}

// ---- Item::init  @ 0x357d58
/* Item::init() */

bool __thiscall Item::init(Item *this)

{
  char cVar1;
  
  cVar1 = cocos2d::CCNode::init();
  if (cVar1 == '\x01') {
    *(undefined4 *)(this + 0xe8) = 0;
    *(undefined4 *)(this + 0xec) = 0;
    *(undefined4 *)(this + 0xf0) = 0;
    *(undefined4 *)(this + 0xf4) = 0;
    *(undefined4 *)(this + 0xf8) = 0;
    *(undefined4 *)(this + 0xfc) = 0;
    *(undefined4 *)(this + 0x100) = 0;
    *(undefined4 *)(this + 0x104) = 0;
    *(undefined4 *)(this + 0x114) = 0;
    *(undefined4 *)(this + 0x130) = 0;
    this[0x135] = (Item)0x0;
    *(undefined4 *)(this + 0x138) = 0;
    this[0xe5] = (Item)0x0;
    this[0xe4] = (Item)0x0;
    this[0xe6] = (Item)0x0;
    *(undefined4 *)(this + 0x110) = 0;
    FUN_007c5e70(this + 0x140,&DAT_007da840);
    FUN_007c5e70(this + 0x10c,&DAT_007da844);
    FUN_007c5e70(this + 0x108,&DAT_007da840);
    this[0x13c] = (Item)0x1;
    this[0x13d] = (Item)0x0;
    *(undefined4 *)(this + 0x118) = 0;
    *(undefined4 *)(this + 0x11c) = 0;
    *(undefined4 *)(this + 0x120) = 0;
    *(undefined4 *)(this + 0x124) = 0;
    *(undefined4 *)(this + 0x128) = 0;
    *(undefined4 *)(this + 300) = 0;
    this[0x134] = (Item)0x1;
  }
  return cVar1 == '\x01';
}

// ---- Item::~Item  @ 0x357e94
/* WARNING: Removing unreachable block (ram,0x00357f08) */
/* Item::~Item() */

Item * __thiscall Item::~Item(Item *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_00913020;
  cocos2d::CCNode::removeAllChildrenWithCleanup((CCNode *)this,false);
  unSyncBody(this);
  removeBodyShape(this);
  cpShapeFree(*(undefined4 *)(this + 0xec));
  cpBodyFree(*(undefined4 *)(this + 0xe8));
  FUN_007c5914(this + 0x140);
  FUN_007c5914(this + 0x10c);
  FUN_007c5914(this + 0x108);
  cocos2d::CCNode::~CCNode((CCNode *)this);
  return this;
}

// ---- Item::~Item  @ 0x357f20
/* Item::~Item() */

Item * __thiscall Item::~Item(Item *this)

{
  ~Item(this);
  operator_delete(this);
  return this;
}

// ---- Item::initBody  @ 0x357f3c
/* Item::initBody() */

void Item::initBody(void)

{
  return;
}

// ---- Item::updateRemoteItemStep  @ 0x357f44
/* Item::updateRemoteItemStep(float) */

void Item::updateRemoteItemStep(float param_1)

{
  return;
}

// ---- Item::updateItemStep  @ 0x357f50
/* Item::updateItemStep(float) */

void Item::updateItemStep(float param_1)

{
  return;
}

// ---- Item::syncBody  @ 0x357f5c
/* Item::syncBody() */

void __thiscall Item::syncBody(Item *this)

{
  if (*(int *)(this + 0xec) != 0) {
    *(Item **)(*(int *)(this + 0xec) + 0x50) = this;
    *(Item **)(*(int *)(this + 0xe8) + 0x90) = this;
  }
  return;
}

// ---- Item::unSyncBody  @ 0x357f84
/* Item::unSyncBody() */

void __thiscall Item::unSyncBody(Item *this)

{
  if (*(int *)(this + 0xec) != 0) {
    *(undefined4 *)(*(int *)(this + 0xec) + 0x50) = 0;
    *(undefined4 *)(*(int *)(this + 0xe8) + 0x90) = 0;
  }
  return;
}

// ---- Item::addBodyShape  @ 0x357fac
/* Item::addBodyShape() */

void __thiscall Item::addBodyShape(Item *this)

{
  if (this[0xe6] != (Item)0x1) {
    this[0xe6] = (Item)0x1;
    cpSpaceAddBody(space,*(undefined4 *)(this + 0xe8));
    cpSpaceAddShape(space,*(undefined4 *)(this + 0xec));
  }
  return;
}

// ---- Item::removeBodyShape  @ 0x358004
/* Item::removeBodyShape() */

void __thiscall Item::removeBodyShape(Item *this)

{
  if (this[0xe6] != (Item)0x0) {
    cpSpaceRemoveBody(space,*(undefined4 *)(this + 0xe8));
    cpSpaceRemoveShape(space,*(undefined4 *)(this + 0xec));
  }
  this[0xe6] = (Item)0x0;
  return;
}

// ---- Item::setPrimaryConfiguration  @ 0x358054
/* Item::setPrimaryConfiguration() */

void Item::setPrimaryConfiguration(void)

{
  return;
}

// ---- Item::setSecondaryConfiguration  @ 0x35805c
/* Item::setSecondaryConfiguration() */

void Item::setSecondaryConfiguration(void)

{
  return;
}

// ---- Item::setDualConfiguration  @ 0x358064
/* Item::setDualConfiguration() */

void Item::setDualConfiguration(void)

{
  return;
}

// ---- Item::setMapConfiguration  @ 0x35806c
/* Item::setMapConfiguration() */

void Item::setMapConfiguration(void)

{
  return;
}

// ---- Item::setHostDualConfiguration  @ 0x358074
/* Item::setHostDualConfiguration() */

void __thiscall Item::setHostDualConfiguration(Item *this)

{
  (**(code **)(*(int *)this + 0x1dc))(this);
  return;
}

// ---- Item::setUUID  @ 0x358090
/* Item::setUUID(std::string) */

void __thiscall Item::setUUID(Item *this,undefined4 param_2)

{
  thunk_FUN_007c653c(this + 0x140,param_2);
  return;
}

// ---- Item::getUUID  @ 0x3580ac
/* Item::getUUID() */

undefined4 Item::getUUID(void)

{
  undefined4 in_r0;
  int in_r1;
  
  FUN_007c64e8(in_r0,in_r1 + 0x140);
  return in_r0;
}

// ---- Item::getHostID  @ 0x3580cc
/* Item::getHostID() */

undefined4 Item::getHostID(void)

{
  undefined4 in_r0;
  int in_r1;
  
  FUN_007c64e8(in_r0,in_r1 + 0x10c);
  return in_r0;
}

// ---- Item::setHostID  @ 0x3580ec
/* Item::setHostID(std::string) */

void __thiscall Item::setHostID(Item *this,undefined4 param_2)

{
  thunk_FUN_007c653c(this + 0x10c,param_2);
  return;
}

// ---- Item::isFiring  @ 0x358108
/* Item::isFiring() */

Item __thiscall Item::isFiring(Item *this)

{
  return this[0xe5];
}

// ---- Item::setFiring  @ 0x358118
/* Item::setFiring(bool) */

void __thiscall Item::setFiring(Item *this,bool param_1)

{
  this[0xe5] = (Item)param_1;
  return;
}

// ---- Item::setContact  @ 0x358130
/* Item::setContact(bool, std::string, int) */

undefined1 Item::setContact(int param_1,undefined1 param_2)

{
  *(undefined1 *)(param_1 + 0xe4) = param_2;
  return *(undefined1 *)(param_1 + 0xe4);
}

// ---- Item::getContact  @ 0x358154
/* Item::getContact() */

Item __thiscall Item::getContact(Item *this)

{
  return this[0xe4];
}

// ---- Item::isInSpace  @ 0x358164
/* Item::isInSpace() */

Item __thiscall Item::isInSpace(Item *this)

{
  return this[0xe6];
}

// ---- Item::setPlayerID  @ 0x358174
/* Item::setPlayerID(std::string) */

void __thiscall Item::setPlayerID(Item *this,undefined4 param_2)

{
  thunk_FUN_007c653c(this + 0x108,param_2);
  return;
}

// ---- Item::getPlayerID  @ 0x358190
/* Item::getPlayerID() */

undefined4 Item::getPlayerID(void)

{
  undefined4 in_r0;
  int in_r1;
  
  FUN_007c64e8(in_r0,in_r1 + 0x108);
  return in_r0;
}

// ---- Item::isRight  @ 0x3581b0
/* Item::isRight() */

undefined4 Item::isRight(void)

{
  return 1;
}

// ---- Item::setRight  @ 0x3581bc
/* Item::setRight(bool) */

void Item::setRight(bool param_1)

{
  return;
}

// ---- Item::getUpdateElapsed  @ 0x3581cc
/* Item::getUpdateElapsed() */

undefined4 __thiscall Item::getUpdateElapsed(Item *this)

{
  return *(undefined4 *)(this + 0x114);
}

// ---- Item::setUpdateElapsed  @ 0x3581dc
/* Item::setUpdateElapsed(float) */

void __thiscall Item::setUpdateElapsed(Item *this,float param_1)

{
  undefined4 in_r1;
  
  *(undefined4 *)(this + 0x114) = in_r1;
  return;
}

// ---- Item::setNormal  @ 0x3581f0
/* Item::setNormal(cpVect) */

void Item::setNormal(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                    undefined4 param_5,undefined4 param_6)

{
  *(undefined4 *)(param_1 + 0x120) = param_3;
  *(undefined4 *)(param_1 + 0x124) = param_4;
  *(undefined4 *)(param_1 + 0x128) = param_5;
  *(undefined4 *)(param_1 + 300) = param_6;
  return;
}

// ---- Item::getNormal  @ 0x358218
/* Item::getNormal() */

undefined4 * Item::getNormal(void)

{
  undefined4 *in_r0;
  int in_r1;
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  
  uVar1 = *(undefined4 *)(in_r1 + 0x124);
  uVar2 = *(undefined4 *)(in_r1 + 0x128);
  uVar3 = *(undefined4 *)(in_r1 + 300);
  *in_r0 = *(undefined4 *)(in_r1 + 0x120);
  in_r0[1] = uVar1;
  in_r0[2] = uVar2;
  in_r0[3] = uVar3;
  return in_r0;
}

// ---- Item::isNew  @ 0x35823c
/* Item::isNew() */

Item __thiscall Item::isNew(Item *this)

{
  return this[0x134];
}

// ---- Item::setIsNew  @ 0x35824c
/* Item::setIsNew(bool) */

void __thiscall Item::setIsNew(Item *this,bool param_1)

{
  this[0x134] = (Item)param_1;
  return;
}

// ---- Item::canPlayerBeModed  @ 0x358264
/* Item::canPlayerBeModed() */

undefined4 Item::canPlayerBeModed(void)

{
  return 0;
}

// ---- Item::startPlayerMod  @ 0x358270
/* Item::startPlayerMod() */

void Item::startPlayerMod(void)

{
  return;
}

// ---- Item::stopPlayerMod  @ 0x358278
/* Item::stopPlayerMod() */

void Item::stopPlayerMod(void)

{
  return;
}

// ---- Item::doPlayerMod  @ 0x358280
/* Item::doPlayerMod(float) */

undefined4 Item::doPlayerMod(float param_1)

{
  return 0;
}

// ---- Item::isModItem  @ 0x358290
/* Item::isModItem() */

undefined4 Item::isModItem(void)

{
  return 0;
}
