// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 5 functions

// ---- GPGSEventObject::GPGSEventObject  @ 0x33ab5c
/* GPGSEventObject::GPGSEventObject() */

GPGSEventObject * __thiscall GPGSEventObject::GPGSEventObject(GPGSEventObject *this)

{
  undefined1 auStack_c [4];
  
  *(undefined4 *)this = 0;
  FUN_0079a3f4(auStack_c);
  FUN_007c6a60(this + 4,&DAT_007d84a4,auStack_c);
  FUN_0079a3fc(auStack_c);
  FUN_0079a3f4(auStack_c);
  FUN_007c6a60(this + 8,&DAT_007d84a4,auStack_c);
  FUN_0079a3fc(auStack_c);
  return this;
}

// ---- GPGSEventObject::~GPGSEventObject  @ 0x33abe8
/* GPGSEventObject::~GPGSEventObject() */

GPGSEventObject * __thiscall GPGSEventObject::~GPGSEventObject(GPGSEventObject *this)

{
  FUN_007c5914(this + 8);
  FUN_007c5914(this + 4);
  return this;
}

// ---- GPGSEventObject::GPGSEventObject  @ 0x33ffe4
/* GPGSEventObject::GPGSEventObject(GPGSEventObject const&) */

GPGSEventObject * __thiscall
GPGSEventObject::GPGSEventObject(GPGSEventObject *this,GPGSEventObject *param_1)

{
  *(undefined4 *)this = *(undefined4 *)param_1;
  FUN_007c64e8(this + 4,param_1 + 4);
  FUN_007c64e8(this + 8,param_1 + 8);
  return this;
}

// ---- GPGSEventObject::operator=  @ 0x341424
/* GPGSEventObject::TEMPNAMEPLACEHOLDERVALUE(GPGSEventObject const&) */

GPGSEventObject * __thiscall
GPGSEventObject::operator=(GPGSEventObject *this,GPGSEventObject *param_1)

{
  *(undefined4 *)this = *(undefined4 *)param_1;
  thunk_FUN_007c653c(this + 4,param_1 + 4);
  thunk_FUN_007c653c(this + 8,param_1 + 8);
  return this;
}

// ---- GPGSEventObject::GPGSEventObject  @ 0x341ab4
/* GPGSEventObject::GPGSEventObject(GPGSEventObject&&) */

GPGSEventObject * __thiscall
GPGSEventObject::GPGSEventObject(GPGSEventObject *this,GPGSEventObject *param_1)

{
  *(undefined4 *)this = *(undefined4 *)param_1;
  FUN_007c51c0(this + 4,param_1 + 4);
  FUN_007c51c0(this + 8,param_1 + 8);
  return this;
}
