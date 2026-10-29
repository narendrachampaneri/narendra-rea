// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 18 functions

// ---- __cxxabiv1::__forced_unwind::~__forced_unwind  @ 0x13994
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* __cxxabiv1::__forced_unwind::~__forced_unwind() */

void __thiscall __cxxabiv1::__forced_unwind::~__forced_unwind(__forced_unwind *this)

{
  *(int *)this = *(int *)(_FUN_000139a0 + 0x1399a) + 8;
  return;
}

// ---- __cxxabiv1::__foreign_exception::~__foreign_exception  @ 0x139a4
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* __cxxabiv1::__foreign_exception::~__foreign_exception() */

void __thiscall __cxxabiv1::__foreign_exception::~__foreign_exception(__foreign_exception *this)

{
  *(int *)this = *(int *)(_FUN_000139b0 + 0x139aa) + 8;
  return;
}

// ---- __cxxabiv1::__forced_unwind::~__forced_unwind  @ 0x139f4
/* __cxxabiv1::__forced_unwind::~__forced_unwind() */

__forced_unwind * __thiscall __cxxabiv1::__forced_unwind::~__forced_unwind(__forced_unwind *this)

{
  ~__forced_unwind(this);
  operator_delete(this);
  return this;
}

// ---- __cxxabiv1::__foreign_exception::~__foreign_exception  @ 0x13a08
/* __cxxabiv1::__foreign_exception::~__foreign_exception() */

__foreign_exception * __thiscall
__cxxabiv1::__foreign_exception::~__foreign_exception(__foreign_exception *this)

{
  ~__foreign_exception(this);
  operator_delete(this);
  return this;
}

// ---- __cxxabiv1::__terminate  @ 0x13bbc
/* __cxxabiv1::__terminate(void (*)()) */

void __cxxabiv1::__terminate(_func_void *param_1)

{
  (*param_1)();
                    /* WARNING: Subroutine does not return */
  abort();
}

// ---- __cxxabiv1::__unexpected  @ 0x13bf8
/* __cxxabiv1::__unexpected(void (*)()) */

void __cxxabiv1::__unexpected(_func_void *param_1)

{
  (*param_1)();
                    /* WARNING: Subroutine does not return */
  std::terminate();
}

// ---- __cxxabiv1::__si_class_type_info::~__si_class_type_info  @ 0x146a8
/* __cxxabiv1::__si_class_type_info::~__si_class_type_info() */

__si_class_type_info * __thiscall
__cxxabiv1::__si_class_type_info::~__si_class_type_info(__si_class_type_info *this)

{
  *(undefined ***)this = &PTR____si_class_type_info_1_0001ed50;
  __class_type_info::~__class_type_info((__class_type_info *)this);
  return this;
}

// ---- __cxxabiv1::__si_class_type_info::~__si_class_type_info  @ 0x146c4
/* __cxxabiv1::__si_class_type_info::~__si_class_type_info() */

__si_class_type_info * __thiscall
__cxxabiv1::__si_class_type_info::~__si_class_type_info(__si_class_type_info *this)

{
  ~__si_class_type_info(this);
  operator_delete(this);
  return this;
}

// ---- __cxxabiv1::__si_class_type_info::__do_find_public_src  @ 0x146d8
/* __cxxabiv1::__si_class_type_info::__do_find_public_src(int, void const*,
   __cxxabiv1::__class_type_info const*, void const*) const */

undefined4 __thiscall
__cxxabiv1::__si_class_type_info::__do_find_public_src
          (__si_class_type_info *this,int param_1,void *param_2,__class_type_info *param_3,
          void *param_4)

{
  undefined4 uVar1;
  int iVar2;
  
  if ((param_4 == param_2) && (iVar2 = FUN_000148dc(this,param_3), iVar2 != 0)) {
    return 6;
  }
  uVar1 = (**(code **)(**(int **)(this + 8) + 0x20))
                    (*(int **)(this + 8),param_1,param_2,param_3,param_4);
  return uVar1;
}

// ---- __cxxabiv1::__si_class_type_info::__do_dyncast  @ 0x1470c
/* __cxxabiv1::__si_class_type_info::__do_dyncast(int, __cxxabiv1::__class_type_info::__sub_kind,
   __cxxabiv1::__class_type_info const*, void const*, __cxxabiv1::__class_type_info const*, void
   const*, __cxxabiv1::__class_type_info::__dyncast_result&) const */

undefined4 __thiscall
__cxxabiv1::__si_class_type_info::__do_dyncast
          (__si_class_type_info *this,int param_1,int param_3,undefined4 param_4,int param_5,
          undefined4 param_6,int param_7,int *param_8)

{
  int iVar1;
  undefined4 uVar2;
  
  iVar1 = FUN_000148dc(this,param_4);
  if (iVar1 == 0) {
    if ((param_5 == param_7) && (iVar1 = FUN_000148dc(this,param_6), iVar1 != 0)) {
      param_8[2] = param_3;
      uVar2 = 0;
    }
    else {
      uVar2 = (**(code **)(**(int **)(this + 8) + 0x1c))
                        (*(int **)(this + 8),param_1,param_3,param_4,param_5,param_6,param_7,param_8
                        );
    }
  }
  else {
    *param_8 = param_5;
    param_8[1] = param_3;
    if (-1 < param_1) {
      if (param_7 == param_5 + param_1) {
        iVar1 = 6;
      }
      else {
        iVar1 = 1;
      }
      param_8[3] = iVar1;
      return 0;
    }
    if (param_1 == -2) {
      uVar2 = 0;
      param_8[3] = 1;
    }
    else {
      uVar2 = 0;
    }
  }
  return uVar2;
}

// ---- __cxxabiv1::__si_class_type_info::__do_upcast  @ 0x1479c
/* __cxxabiv1::__si_class_type_info::__do_upcast(__cxxabiv1::__class_type_info const*, void const*,
   __cxxabiv1::__class_type_info::__upcast_result&) const */

void __thiscall
__cxxabiv1::__si_class_type_info::__do_upcast
          (__si_class_type_info *this,__class_type_info *param_1,void *param_2,
          __upcast_result *param_3)

{
  int iVar1;
  __upcast_result *p_Var2;
  
  p_Var2 = param_3;
  iVar1 = __class_type_info::__do_upcast((__class_type_info *)this,param_1,param_2,param_3);
  if (iVar1 == 0) {
    (**(code **)(**(int **)(this + 8) + 0x18))(*(int **)(this + 8),param_1,param_2,param_3,p_Var2);
  }
  return;
}

// ---- __cxxabiv1::__class_type_info::__do_upcast  @ 0x147bc
/* __cxxabiv1::__class_type_info::__do_upcast(__cxxabiv1::__class_type_info const*, void**) const */

bool __thiscall
__cxxabiv1::__class_type_info::__do_upcast
          (__class_type_info *this,__class_type_info *param_1,void **param_2)

{
  bool bVar1;
  void *local_28;
  uint local_24;
  undefined4 local_20;
  undefined4 local_1c;
  
  local_28 = (void *)0x0;
  local_24 = 0;
  local_1c = 0;
  local_20 = 0x10;
  (**(code **)(*(int *)this + 0x18))(this,param_1,*param_2,&local_28);
  bVar1 = (local_24 & 6) == 6;
  if (bVar1) {
    *param_2 = local_28;
  }
  return bVar1;
}

// ---- __cxxabiv1::__class_type_info::__do_find_public_src  @ 0x147f0
/* __cxxabiv1::__class_type_info::__do_find_public_src(int, void const*,
   __cxxabiv1::__class_type_info const*, void const*) const */

undefined4 __thiscall
__cxxabiv1::__class_type_info::__do_find_public_src
          (__class_type_info *this,int param_1,void *param_2,__class_type_info *param_3,
          void *param_4)

{
  undefined4 uVar1;
  
  if (param_4 == param_2) {
    uVar1 = 6;
  }
  else {
    uVar1 = 1;
  }
  return uVar1;
}

// ---- __cxxabiv1::__class_type_info::~__class_type_info  @ 0x147fc
/* __cxxabiv1::__class_type_info::~__class_type_info() */

__class_type_info * __thiscall
__cxxabiv1::__class_type_info::~__class_type_info(__class_type_info *this)

{
  *(undefined ***)this = &PTR____class_type_info_1_0001ed90;
  FUN_000148a8();
  return this;
}

// ---- __cxxabiv1::__class_type_info::~__class_type_info  @ 0x14818
/* __cxxabiv1::__class_type_info::~__class_type_info() */

__class_type_info * __thiscall
__cxxabiv1::__class_type_info::~__class_type_info(__class_type_info *this)

{
  ~__class_type_info(this);
  operator_delete(this);
  return this;
}

// ---- __cxxabiv1::__class_type_info::__do_upcast  @ 0x1482c
/* __cxxabiv1::__class_type_info::__do_upcast(__cxxabiv1::__class_type_info const*, void const*,
   __cxxabiv1::__class_type_info::__upcast_result&) const */

void __thiscall
__cxxabiv1::__class_type_info::__do_upcast
          (__class_type_info *this,__class_type_info *param_1,void *param_2,__upcast_result *param_3
          )

{
  int iVar1;
  
  iVar1 = FUN_000148dc(this);
  if (iVar1 != 0) {
    *(void **)param_3 = param_2;
    *(undefined4 *)(param_3 + 0xc) = 8;
    *(undefined4 *)(param_3 + 4) = 6;
  }
  return;
}

// ---- __cxxabiv1::__class_type_info::__do_catch  @ 0x14844
/* __cxxabiv1::__class_type_info::__do_catch(std::type_info const*, void**, unsigned int) const */

void __thiscall
__cxxabiv1::__class_type_info::__do_catch
          (__class_type_info *this,type_info *param_1,void **param_2,uint param_3)

{
  int iVar1;
  uint uVar2;
  
  uVar2 = param_3;
  iVar1 = FUN_000148dc();
  if ((iVar1 == 0) && (param_3 < 4)) {
    (**(code **)(*(int *)param_1 + 0x14))
              (param_1,this,param_2,*(code **)(*(int *)param_1 + 0x14),uVar2);
    return;
  }
  return;
}

// ---- __cxxabiv1::__class_type_info::__do_dyncast  @ 0x14868
/* __cxxabiv1::__class_type_info::__do_dyncast(int, __cxxabiv1::__class_type_info::__sub_kind,
   __cxxabiv1::__class_type_info const*, void const*, __cxxabiv1::__class_type_info const*, void
   const*, __cxxabiv1::__class_type_info::__dyncast_result&) const */

undefined4 __thiscall
__cxxabiv1::__class_type_info::__do_dyncast
          (__class_type_info *this,undefined4 param_2,int param_3,undefined4 param_4,int param_5,
          undefined4 param_6,int param_7,int *param_8)

{
  int iVar1;
  
  if ((param_5 == param_7) && (iVar1 = FUN_000148dc(this,param_6), iVar1 != 0)) {
    param_8[2] = param_3;
    return 0;
  }
  iVar1 = FUN_000148dc(this,param_4);
  if (iVar1 != 0) {
    *param_8 = param_5;
    param_8[1] = param_3;
    param_8[3] = 1;
  }
  return 0;
}
