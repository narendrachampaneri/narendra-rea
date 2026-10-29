// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 5 functions

// ---- ServerListObject::~ServerListObject  @ 0x38a5e0
/* ServerListObject::~ServerListObject() */

ServerListObject * __thiscall ServerListObject::~ServerListObject(ServerListObject *this)

{
  FUN_007c5914(this + 4);
  FUN_007c5914(this);
  return this;
}

// ---- ServerListObject::ServerListObject  @ 0x38ef38
/* ServerListObject::ServerListObject(ServerListObject&&) */

ServerListObject * __thiscall
ServerListObject::ServerListObject(ServerListObject *this,ServerListObject *param_1)

{
  FUN_007c51c0(this,param_1);
  FUN_007c51c0(this + 4,param_1 + 4);
  return this;
}

// ---- ServerListObject::ServerListObject  @ 0x38f0b4
/* ServerListObject::ServerListObject(ServerListObject const&) */

ServerListObject * __thiscall
ServerListObject::ServerListObject(ServerListObject *this,ServerListObject *param_1)

{
  FUN_007c64e8(this,param_1);
  FUN_007c64e8(this + 4,param_1 + 4);
  return this;
}

// ---- ServerListObject::operator=  @ 0x3d49ec
/* ServerListObject::TEMPNAMEPLACEHOLDERVALUE(ServerListObject&&) */

ServerListObject * __thiscall
ServerListObject::operator=(ServerListObject *this,ServerListObject *param_1)

{
  FUN_007c52e8(this,param_1);
  FUN_007c52e8(this + 4,param_1 + 4);
  return this;
}

// ---- ServerListObject::operator=  @ 0x3d4fb4
/* ServerListObject::TEMPNAMEPLACEHOLDERVALUE(ServerListObject const&) */

ServerListObject * __thiscall
ServerListObject::operator=(ServerListObject *this,ServerListObject *param_1)

{
  thunk_FUN_007c653c(this,param_1);
  thunk_FUN_007c653c(this + 4,param_1 + 4);
  return this;
}
