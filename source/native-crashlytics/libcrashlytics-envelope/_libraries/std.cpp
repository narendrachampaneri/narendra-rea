// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 15 functions

// ---- std::exception::~exception  @ 0x13968
/* std::exception::~exception() */

void __thiscall std::exception::~exception(exception *this)

{
  *(undefined ***)this = &PTR__exception_1_0001ecc8;
  return;
}

// ---- std::bad_exception::~bad_exception  @ 0x13978
/* std::bad_exception::~bad_exception() */

bad_exception * __thiscall std::bad_exception::~bad_exception(bad_exception *this)

{
  *(undefined ***)this = &PTR__bad_exception_1_0001ec68;
  exception::~exception((exception *)this);
  return this;
}

// ---- std::exception::what  @ 0x139b4
/* std::exception::what() const */

char * std::exception::what(void)

{
  return "std::exception";
}

// ---- std::bad_exception::what  @ 0x139c0
/* std::bad_exception::what() const */

char * std::bad_exception::what(void)

{
  return "std::bad_exception";
}

// ---- std::exception::~exception  @ 0x139cc
/* std::exception::~exception() */

exception * __thiscall std::exception::~exception(exception *this)

{
  ~exception(this);
  operator_delete(this);
  return this;
}

// ---- std::bad_exception::~bad_exception  @ 0x139e0
/* std::bad_exception::~bad_exception() */

bad_exception * __thiscall std::bad_exception::~bad_exception(bad_exception *this)

{
  ~bad_exception(this);
  operator_delete(this);
  return this;
}

// ---- std::terminate  @ 0x13be4
/* WARNING: Unknown calling convention -- yet parameter storage is locked */
/* std::terminate() */

void std::terminate(void)

{
                    /* WARNING: Subroutine does not return */
  __cxxabiv1::__terminate(__cxxabiv1::__terminate_handler);
}

// ---- std::unexpected  @ 0x13c00
/* WARNING: Unknown calling convention -- yet parameter storage is locked */
/* std::unexpected() */

void std::unexpected(void)

{
                    /* WARNING: Subroutine does not return */
  __cxxabiv1::__unexpected(__cxxabiv1::__unexpected_handler);
}

// ---- std::set_terminate  @ 0x13c14
/* WARNING: Unknown calling convention -- yet parameter storage is locked */
/* std::set_terminate(void (*)()) */

undefined4 std::set_terminate(_func_void *param_1)

{
  undefined4 uVar1;
  
  uVar1 = __cxxabiv1::__terminate_handler;
  __cxxabiv1::__terminate_handler = param_1;
  return uVar1;
}

// ---- std::set_unexpected  @ 0x13c28
/* WARNING: Unknown calling convention -- yet parameter storage is locked */
/* std::set_unexpected(void (*)()) */

undefined4 std::set_unexpected(_func_void *param_1)

{
  undefined4 uVar1;
  
  uVar1 = __cxxabiv1::__unexpected_handler;
  __cxxabiv1::__unexpected_handler = param_1;
  return uVar1;
}

// ---- std::set_new_handler  @ 0x13f2c
/* WARNING: Unknown calling convention -- yet parameter storage is locked */
/* std::set_new_handler(void (*)()) */

undefined4 std::set_new_handler(_func_void *param_1)

{
  undefined4 uVar1;
  
  uVar1 = DAT_00023f30;
  DAT_00023f30 = param_1;
  return uVar1;
}

// ---- std::bad_alloc::what  @ 0x13f6c
/* std::bad_alloc::what() const */

char * std::bad_alloc::what(void)

{
  return "std::bad_alloc";
}

// ---- std::bad_alloc::~bad_alloc  @ 0x13f78
/* std::bad_alloc::~bad_alloc() */

bad_alloc * __thiscall std::bad_alloc::~bad_alloc(bad_alloc *this)

{
  *(undefined ***)this = &PTR__bad_alloc_1_0001ed38;
  exception::~exception((exception *)this);
  return this;
}

// ---- std::bad_alloc::~bad_alloc  @ 0x13f94
/* std::bad_alloc::~bad_alloc() */

bad_alloc * __thiscall std::bad_alloc::~bad_alloc(bad_alloc *this)

{
  ~bad_alloc(this);
  operator_delete(this);
  return this;
}

// ---- std::uncaught_exception  @ 0x14698
/* WARNING: Unknown calling convention -- yet parameter storage is locked */
/* std::uncaught_exception() */

bool std::uncaught_exception(void)

{
  int iVar1;
  
  iVar1 = __cxa_get_globals();
  return *(int *)(iVar1 + 4) != 0;
}
