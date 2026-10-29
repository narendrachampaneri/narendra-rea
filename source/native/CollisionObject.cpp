// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 17 functions

// ---- CollisionObject::CollisionObject  @ 0x310be0
/* CollisionObject::CollisionObject() */

CollisionObject * __thiscall CollisionObject::CollisionObject(CollisionObject *this)

{
  cocos2d::CCNode::CCNode((CCNode *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_0090f508;
  FUN_007c51b0(this + 0xec);
  return this;
}

// ---- CollisionObject::init  @ 0x310c24
/* CollisionObject::init() */

undefined4 __thiscall CollisionObject::init(CollisionObject *this)

{
  cocos2d::CCNode::init();
  this[0xe8] = (CollisionObject)0x0;
  this[0xe9] = (CollisionObject)0x0;
  this[0xe6] = (CollisionObject)0x0;
  this[0xe7] = (CollisionObject)0x0;
  FUN_007c5e70(this + 0xec,&DAT_007d4fdc);
  *(undefined4 *)(this + 0xf0) = 0;
  *(undefined4 *)(this + 0xf4) = 0;
  return 1;
}

// ---- CollisionObject::~CollisionObject  @ 0x310c88
/* WARNING: Removing unreachable block (ram,0x00310cb4) */
/* CollisionObject::~CollisionObject() */

CollisionObject * __thiscall CollisionObject::~CollisionObject(CollisionObject *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_0090f508;
  FUN_007c5914(this + 0xec);
  cocos2d::CCNode::~CCNode((CCNode *)this);
  return this;
}

// ---- CollisionObject::~CollisionObject  @ 0x310ccc
/* CollisionObject::~CollisionObject() */

CollisionObject * __thiscall CollisionObject::~CollisionObject(CollisionObject *this)

{
  ~CollisionObject(this);
  operator_delete(this);
  return this;
}

// ---- CollisionObject::getBodyPosition  @ 0x310ce8
/* CollisionObject::getBodyPosition() */

CollisionObject * __thiscall CollisionObject::getBodyPosition(CollisionObject *this)

{
  *(undefined4 *)this = 0;
  *(undefined4 *)(this + 4) = 0;
  *(undefined4 *)(this + 8) = 0;
  *(undefined4 *)(this + 0xc) = 0;
  return this;
}

// ---- CollisionObject::getBodyVelocity  @ 0x310d10
/* CollisionObject::getBodyVelocity() */

CollisionObject * __thiscall CollisionObject::getBodyVelocity(CollisionObject *this)

{
  *(undefined4 *)this = 0;
  *(undefined4 *)(this + 4) = 0;
  *(undefined4 *)(this + 8) = 0;
  *(undefined4 *)(this + 0xc) = 0;
  return this;
}

// ---- CollisionObject::setContact  @ 0x310d38
/* CollisionObject::setContact(bool) */

void __thiscall CollisionObject::setContact(CollisionObject *this,bool param_1)

{
  this[0xe6] = (CollisionObject)param_1;
  return;
}

// ---- CollisionObject::getContact  @ 0x310d50
/* CollisionObject::getContact() */

CollisionObject __thiscall CollisionObject::getContact(CollisionObject *this)

{
  return this[0xe8];
}

// ---- CollisionObject::setFootContact  @ 0x310d60
/* CollisionObject::setFootContact(bool) */

void __thiscall CollisionObject::setFootContact(CollisionObject *this,bool param_1)

{
  this[0xe7] = (CollisionObject)param_1;
  return;
}

// ---- CollisionObject::getFootContact  @ 0x310d78
/* CollisionObject::getFootContact() */

CollisionObject __thiscall CollisionObject::getFootContact(CollisionObject *this)

{
  return this[0xe9];
}

// ---- CollisionObject::getDamageAmmoType  @ 0x310d88
/* CollisionObject::getDamageAmmoType() */

undefined4 __thiscall CollisionObject::getDamageAmmoType(CollisionObject *this)

{
  return *(undefined4 *)(this + 0xf0);
}

// ---- CollisionObject::getDamagePeerId  @ 0x310d98
/* CollisionObject::getDamagePeerId() */

undefined4 CollisionObject::getDamagePeerId(void)

{
  undefined4 in_r0;
  int in_r1;
  
  FUN_007c64e8(in_r0,in_r1 + 0xec);
  return in_r0;
}

// ---- CollisionObject::setDamagePeerId  @ 0x310db4
/* CollisionObject::setDamagePeerId(std::string) */

void __thiscall CollisionObject::setDamagePeerId(CollisionObject *this,undefined4 param_2)

{
  thunk_FUN_007c653c(this + 0xec,param_2);
  return;
}

// ---- CollisionObject::getPeerID  @ 0x310dd0
/* CollisionObject::getPeerID() */

undefined4 CollisionObject::getPeerID(void)

{
  undefined4 in_r0;
  undefined1 auStack_c [8];
  
  FUN_0079a3f4(auStack_c);
  FUN_007c6a60(in_r0,&DAT_007d4fe0,auStack_c);
  FUN_0079a3fc(auStack_c);
  return in_r0;
}

// ---- CollisionObject::getTeamId  @ 0x310e14
/* CollisionObject::getTeamId() */

undefined4 __thiscall CollisionObject::getTeamId(CollisionObject *this)

{
  return *(undefined4 *)(this + 0xf4);
}

// ---- CollisionObject::setTeamId  @ 0x310e24
/* CollisionObject::setTeamId(int) */

void __thiscall CollisionObject::setTeamId(CollisionObject *this,int param_1)

{
  *(int *)(this + 0xf4) = param_1;
  return;
}

// ---- CollisionObject::getIsCONTACT  @ 0x355b14
/* CollisionObject::getIsCONTACT() */

CollisionObject __thiscall CollisionObject::getIsCONTACT(CollisionObject *this)

{
  return this[0xe4];
}
