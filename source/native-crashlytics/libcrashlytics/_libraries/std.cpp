// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 39 functions

// ---- std::set_new_handler  @ 0x1df34
/* WARNING: Unknown calling convention -- yet parameter storage is locked */
/* std::set_new_handler(void (*)()) */

undefined4 std::set_new_handler(_func_void *param_1)

{
  undefined4 uVar1;
  
  uVar1 = DAT_000d0658;
  DAT_000d0658 = param_1;
  return uVar1;
}

// ---- std::bad_typeid::what  @ 0x204a4
/* std::bad_typeid::what() const */

char * std::bad_typeid::what(void)

{
  return "std::bad_typeid";
}

// ---- std::bad_typeid::~bad_typeid  @ 0x204b0
/* std::bad_typeid::~bad_typeid() */

bad_typeid * __thiscall std::bad_typeid::~bad_typeid(bad_typeid *this)

{
  *(undefined ***)this = &PTR__bad_typeid_1_0002e878;
  exception::~exception((exception *)this);
  return this;
}

// ---- std::bad_typeid::~bad_typeid  @ 0x204cc
/* std::bad_typeid::~bad_typeid() */

bad_typeid * __thiscall std::bad_typeid::~bad_typeid(bad_typeid *this)

{
  ~bad_typeid(this);
  operator_delete(this);
  return this;
}

// ---- std::uncaught_exception  @ 0x20bd0
/* WARNING: Unknown calling convention -- yet parameter storage is locked */
/* std::uncaught_exception() */

bool std::uncaught_exception(void)

{
  int iVar1;
  
  iVar1 = __cxa_get_globals();
  return *(int *)(iVar1 + 4) != 0;
}

// ---- std::exception::~exception  @ 0x20fc4
/* std::exception::~exception() */

void __thiscall std::exception::~exception(exception *this)

{
  *(undefined ***)this = &PTR__exception_1_0002e910;
  return;
}

// ---- std::bad_exception::~bad_exception  @ 0x20fd4
/* std::bad_exception::~bad_exception() */

bad_exception * __thiscall std::bad_exception::~bad_exception(bad_exception *this)

{
  *(undefined ***)this = &PTR__bad_exception_1_0002e8b0;
  exception::~exception((exception *)this);
  return this;
}

// ---- std::exception::what  @ 0x21010
/* std::exception::what() const */

char * std::exception::what(void)

{
  return "std::exception";
}

// ---- std::bad_exception::what  @ 0x2101c
/* std::bad_exception::what() const */

char * std::bad_exception::what(void)

{
  return "std::bad_exception";
}

// ---- std::exception::~exception  @ 0x21028
/* std::exception::~exception() */

exception * __thiscall std::exception::~exception(exception *this)

{
  ~exception(this);
  operator_delete(this);
  return this;
}

// ---- std::bad_exception::~bad_exception  @ 0x2103c
/* std::bad_exception::~bad_exception() */

bad_exception * __thiscall std::bad_exception::~bad_exception(bad_exception *this)

{
  ~bad_exception(this);
  operator_delete(this);
  return this;
}

// ---- std::terminate  @ 0x21238
/* WARNING: Unknown calling convention -- yet parameter storage is locked */
/* std::terminate() */

void std::terminate(void)

{
                    /* WARNING: Subroutine does not return */
  __cxxabiv1::__terminate(__cxxabiv1::__terminate_handler);
}

// ---- std::unexpected  @ 0x21254
/* WARNING: Unknown calling convention -- yet parameter storage is locked */
/* std::unexpected() */

void std::unexpected(void)

{
                    /* WARNING: Subroutine does not return */
  __cxxabiv1::__unexpected(__cxxabiv1::__unexpected_handler);
}

// ---- std::set_terminate  @ 0x21268
/* WARNING: Unknown calling convention -- yet parameter storage is locked */
/* std::set_terminate(void (*)()) */

undefined4 std::set_terminate(_func_void *param_1)

{
  undefined4 uVar1;
  
  uVar1 = __cxxabiv1::__terminate_handler;
  __cxxabiv1::__terminate_handler = param_1;
  return uVar1;
}

// ---- std::set_unexpected  @ 0x2127c
/* WARNING: Unknown calling convention -- yet parameter storage is locked */
/* std::set_unexpected(void (*)()) */

undefined4 std::set_unexpected(_func_void *param_1)

{
  undefined4 uVar1;
  
  uVar1 = __cxxabiv1::__unexpected_handler;
  __cxxabiv1::__unexpected_handler = param_1;
  return uVar1;
}

// ---- std::__exception_ptr::exception_ptr::_M_safe_bool_dummy  @ 0x21574
/* std::__exception_ptr::exception_ptr::_M_safe_bool_dummy() */

void std::__exception_ptr::exception_ptr::_M_safe_bool_dummy(void)

{
  return;
}

// ---- std::__exception_ptr::exception_ptr::exception_ptr  @ 0x215c8
/* std::__exception_ptr::exception_ptr::exception_ptr() */

void __thiscall std::__exception_ptr::exception_ptr::exception_ptr(exception_ptr *this)

{
  *(undefined4 *)this = 0;
  return;
}

// ---- std::__exception_ptr::exception_ptr::exception_ptr  @ 0x215d0
/* std::__exception_ptr::exception_ptr::exception_ptr(void
   (std::__exception_ptr::exception_ptr::*)()) */

void __thiscall
std::__exception_ptr::exception_ptr::exception_ptr(exception_ptr *this,_func_void *param_1)

{
  *(undefined4 *)this = 0;
  return;
}

// ---- std::__exception_ptr::exception_ptr::_M_addref  @ 0x215e8
/* std::__exception_ptr::exception_ptr::_M_addref() */

void __thiscall std::__exception_ptr::exception_ptr::_M_addref(exception_ptr *this)

{
  bool bVar1;
  int *piVar2;
  
  if (*(int *)this != 0) {
    piVar2 = (int *)(*(int *)this + -0x80);
    DataMemoryBarrier(0x1f);
    do {
      ExclusiveAccess(piVar2);
      bVar1 = (bool)hasExclusiveAccess(piVar2);
    } while (!bVar1);
    *piVar2 = *piVar2 + 1;
    DataMemoryBarrier(0x1f);
  }
  return;
}

// ---- std::__exception_ptr::exception_ptr::exception_ptr  @ 0x21608
/* std::__exception_ptr::exception_ptr::exception_ptr(void*) */

exception_ptr * __thiscall
std::__exception_ptr::exception_ptr::exception_ptr(exception_ptr *this,void *param_1)

{
  *(void **)this = param_1;
  _M_addref(this);
  return this;
}

// ---- std::__exception_ptr::exception_ptr::exception_ptr  @ 0x21618
/* std::__exception_ptr::exception_ptr::exception_ptr(std::__exception_ptr::exception_ptr const&) */

exception_ptr * __thiscall
std::__exception_ptr::exception_ptr::exception_ptr(exception_ptr *this,exception_ptr *param_1)

{
  *(undefined4 *)this = *(undefined4 *)param_1;
  _M_addref(this);
  return this;
}

// ---- std::__exception_ptr::exception_ptr::_M_release  @ 0x21628
/* std::__exception_ptr::exception_ptr::_M_release() */

void __thiscall std::__exception_ptr::exception_ptr::_M_release(exception_ptr *this)

{
  bool bVar1;
  int iVar2;
  int *piVar3;
  int iVar4;
  
  iVar4 = *(int *)this;
  if (iVar4 != 0) {
    piVar3 = (int *)(iVar4 + -0x80);
    DataMemoryBarrier(0x1f);
    do {
      ExclusiveAccess(piVar3);
      iVar2 = *piVar3;
      bVar1 = (bool)hasExclusiveAccess(piVar3);
    } while (!bVar1);
    *piVar3 = iVar2 + -1;
    DataMemoryBarrier(0x1f);
    if (iVar2 + -1 == 0) {
      if (*(code **)(iVar4 + -0x74) != (code *)0x0) {
        (**(code **)(iVar4 + -0x74))(*(undefined4 *)this);
      }
      __cxa_free_exception(*(undefined4 *)this);
      *(undefined4 *)this = 0;
    }
  }
  return;
}

// ---- std::__exception_ptr::exception_ptr::~exception_ptr  @ 0x21664
/* std::__exception_ptr::exception_ptr::~exception_ptr() */

exception_ptr * __thiscall std::__exception_ptr::exception_ptr::~exception_ptr(exception_ptr *this)

{
  _M_release(this);
  return this;
}

// ---- std::__exception_ptr::exception_ptr::_M_get  @ 0x21670
/* std::__exception_ptr::exception_ptr::_M_get() const */

undefined4 __thiscall std::__exception_ptr::exception_ptr::_M_get(exception_ptr *this)

{
  return *(undefined4 *)this;
}

// ---- std::__exception_ptr::exception_ptr::swap  @ 0x21674
/* std::__exception_ptr::exception_ptr::swap(std::__exception_ptr::exception_ptr&) */

void __thiscall
std::__exception_ptr::exception_ptr::swap(exception_ptr *this,exception_ptr *param_1)

{
  undefined4 uVar1;
  
  uVar1 = *(undefined4 *)this;
  *(undefined4 *)this = *(undefined4 *)param_1;
  *(undefined4 *)param_1 = uVar1;
  return;
}

// ---- std::__exception_ptr::exception_ptr::operator=  @ 0x21680
/* std::__exception_ptr::exception_ptr::TEMPNAMEPLACEHOLDERVALUE(std::__exception_ptr::exception_ptr
   const&) */

exception_ptr * __thiscall
std::__exception_ptr::exception_ptr::operator=(exception_ptr *this,exception_ptr *param_1)

{
  exception_ptr aeStack_14 [8];
  
  exception_ptr(aeStack_14,param_1);
  swap(aeStack_14,this);
  ~exception_ptr(aeStack_14);
  return this;
}

// ---- std::__exception_ptr::exception_ptr::operator!  @ 0x216a4
/* std::__exception_ptr::exception_ptr::TEMPNAMEPLACEHOLDERVALUE() const */

int __thiscall std::__exception_ptr::exception_ptr::operator!(exception_ptr *this)

{
  int iVar1;
  
  iVar1 = 1 - *(uint *)this;
  if (1 < *(uint *)this) {
    iVar1 = 0;
  }
  return iVar1;
}

// ---- std::__exception_ptr::exception_ptr::operator.cast.to.function.pointer  @ 0x216b0
/* std::__exception_ptr::exception_ptr::operator void (std::__exception_ptr::exception_ptr::*)()()
   const */

_func_void * __thiscall
std::__exception_ptr::exception_ptr::operator_cast_to_function_pointer(exception_ptr *this)

{
  int *in_r1;
  
  if (*in_r1 != 0) {
    *(undefined4 *)(this + 4) = 0;
    *(undefined4 *)this = 0x21575;
    return (_func_void *)this;
  }
  *(undefined4 *)this = 0;
  *(undefined4 *)(this + 4) = 0;
  return (_func_void *)this;
}

// ---- std::__exception_ptr::exception_ptr::__cxa_exception_type  @ 0x216cc
/* std::__exception_ptr::exception_ptr::__cxa_exception_type() const */

undefined4 __thiscall std::__exception_ptr::exception_ptr::__cxa_exception_type(exception_ptr *this)

{
  return *(undefined4 *)(*(int *)this + -0x78);
}

// ---- std::__exception_ptr::operator==  @ 0x216d4
/* std::__exception_ptr::TEMPNAMEPLACEHOLDERVALUE(std::__exception_ptr::exception_ptr const&,
   std::__exception_ptr::exception_ptr const&) */

bool std::__exception_ptr::operator==(exception_ptr *param_1,exception_ptr *param_2)

{
  return *(int *)param_1 == *(int *)param_2;
}

// ---- std::__exception_ptr::operator!=  @ 0x216e0
/* std::__exception_ptr::TEMPNAMEPLACEHOLDERVALUE(std::__exception_ptr::exception_ptr const&,
   std::__exception_ptr::exception_ptr const&) */

byte std::__exception_ptr::operator!=(exception_ptr *param_1,exception_ptr *param_2)

{
  byte bVar1;
  
  bVar1 = operator==(param_1,param_2);
  return bVar1 ^ 1;
}

// ---- std::current_exception  @ 0x216f0
/* WARNING: Unknown calling convention -- yet parameter storage is locked */
/* std::current_exception() */

void std::current_exception(void)

{
  exception_ptr *in_r0;
  int *piVar1;
  undefined4 *puVar2;
  
  piVar1 = (int *)__cxa_get_globals();
  puVar2 = (undefined4 *)*piVar1;
  if ((((((puVar2 != (undefined4 *)0x0) && (*(char *)(puVar2 + 8) == 'G')) &&
        (*(char *)((int)puVar2 + 0x21) == 'N')) &&
       ((*(char *)((int)puVar2 + 0x22) == 'U' && (*(char *)((int)puVar2 + 0x23) == 'C')))) &&
      ((*(char *)(puVar2 + 9) == 'C' &&
       ((*(char *)((int)puVar2 + 0x25) == '+' && (*(char *)((int)puVar2 + 0x26) == '+')))))) &&
     (*(byte *)((int)puVar2 + 0x27) < 2)) {
    if (*(byte *)((int)puVar2 + 0x27) == 1) {
      puVar2 = (undefined4 *)*puVar2;
    }
    else {
      puVar2 = puVar2 + 0x1e;
    }
    __exception_ptr::exception_ptr::exception_ptr(in_r0,puVar2);
    return;
  }
  __exception_ptr::exception_ptr::exception_ptr(in_r0);
  return;
}

// ---- std::rethrow_exception  @ 0x21758
/* std::rethrow_exception(std::__exception_ptr::exception_ptr) */

void std::rethrow_exception(exception_ptr *param_1)

{
  bool bVar1;
  int iVar2;
  int iVar3;
  int *piVar4;
  int *piVar5;
  
  iVar3 = __exception_ptr::exception_ptr::_M_get(param_1);
  piVar4 = (int *)__cxa_allocate_dependent_exception();
  piVar5 = (int *)(iVar3 + -0x80);
  *piVar4 = iVar3;
  DataMemoryBarrier(0x1f);
  do {
    ExclusiveAccess(piVar5);
    bVar1 = (bool)hasExclusiveAccess(piVar5);
  } while (!bVar1);
  *piVar5 = *piVar5 + 1;
  iVar2 = __cxxabiv1::__unexpected_handler;
  iVar3 = __cxxabiv1::__terminate_handler;
  DataMemoryBarrier(0x1f);
  *(undefined1 *)(piVar4 + 8) = 0x47;
  piVar4[1] = iVar2;
  piVar4[2] = iVar3;
  *(undefined1 *)((int)piVar4 + 0x21) = 0x4e;
  *(undefined1 *)((int)piVar4 + 0x22) = 0x55;
  *(undefined1 *)((int)piVar4 + 0x27) = 1;
  piVar4[10] = (int)&LAB_00021578_1;
  *(undefined1 *)((int)piVar4 + 0x23) = 0x43;
  *(undefined1 *)(piVar4 + 9) = 0x43;
  *(undefined1 *)((int)piVar4 + 0x25) = 0x2b;
  *(undefined1 *)((int)piVar4 + 0x26) = 0x2b;
  ___Unwind_RaiseException(piVar4 + 8);
  __cxa_begin_catch(piVar4 + 8);
                    /* WARNING: Subroutine does not return */
  terminate();
}

// ---- std::bad_cast::what  @ 0x217ec
/* std::bad_cast::what() const */

char * std::bad_cast::what(void)

{
  return "std::bad_cast";
}

// ---- std::bad_cast::~bad_cast  @ 0x217f8
/* std::bad_cast::~bad_cast() */

bad_cast * __thiscall std::bad_cast::~bad_cast(bad_cast *this)

{
  *(undefined ***)this = &PTR__bad_cast_1_0002e980;
  exception::~exception((exception *)this);
  return this;
}

// ---- std::bad_cast::~bad_cast  @ 0x21814
/* std::bad_cast::~bad_cast() */

bad_cast * __thiscall std::bad_cast::~bad_cast(bad_cast *this)

{
  ~bad_cast(this);
  operator_delete(this);
  return this;
}

// ---- std::bad_alloc::what  @ 0x21834
/* std::bad_alloc::what() const */

char * std::bad_alloc::what(void)

{
  return "std::bad_alloc";
}

// ---- std::bad_alloc::~bad_alloc  @ 0x21840
/* std::bad_alloc::~bad_alloc() */

bad_alloc * __thiscall std::bad_alloc::~bad_alloc(bad_alloc *this)

{
  *(undefined ***)this = &PTR__bad_alloc_1_0002e9a8;
  exception::~exception((exception *)this);
  return this;
}

// ---- std::bad_alloc::~bad_alloc  @ 0x2185c
/* std::bad_alloc::~bad_alloc() */

bad_alloc * __thiscall std::bad_alloc::~bad_alloc(bad_alloc *this)

{
  ~bad_alloc(this);
  operator_delete(this);
  return this;
}
