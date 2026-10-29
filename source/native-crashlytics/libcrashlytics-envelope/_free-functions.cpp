// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 72 functions

// ---- _FINI_0  @ 0x132a8
void _FINI_0(void)

{
  __cxa_finalize(0x1f000);
  return;
}

// ---- _INIT_0  @ 0x132b8
void _INIT_0(void)

{
  uint uVar1;
  
  DAT_0001f014 = 0;
  uVar1 = pthread_key_create(&DAT_0001f010,(__destr_function *)0x13771);
  DAT_0001f014 = '\x01' - (char)uVar1;
  if (1 < uVar1) {
    DAT_0001f014 = '\0';
  }
  __cxa_atexit(0x13755,&DAT_0001f010,0x1f000);
  return;
}

// ---- _INIT_1  @ 0x132f8
void _INIT_1(void)

{
  DAT_0001ff28 = 0;
  return;
}

// ---- context  @ 0x13348
unwind_context *
context(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  unw_addr_space *puVar1;
  unwind_context *this;
  
  puVar1 = (unw_addr_space *)_Uarm_create_addr_space(&_UPT_accessors,0,param_3,param_4,param_4);
  if (puVar1 != (unw_addr_space *)0x0) {
    _Uarm_set_caching_policy(puVar1,1);
  }
  this = operator_new(4);
  crashlytics::envelope::unwind_context::unwind_context(this,puVar1);
  return this;
}

// ---- function_name_from_ptrace_context  @ 0x13378
uint function_name_from_ptrace_context
               (unwind_context *param_1,undefined4 param_2,undefined4 *param_3,undefined4 param_4,
               undefined4 param_5,undefined4 param_6)

{
  undefined4 uVar1;
  undefined4 uVar2;
  uint uVar3;
  undefined4 local_1c [2];
  
  uVar1 = _UPT_create(param_4);
  uVar2 = crashlytics::envelope::unwind_context::address_space(param_1);
  uVar3 = _Uarm_get_proc_name_by_ip(uVar2,param_2,param_5,param_6,local_1c,uVar1);
  *param_3 = local_1c[0];
  return ~uVar3 >> 0x1f;
}

// ---- function_name_from_ucontext  @ 0x133ac
uint function_name_from_ucontext
               (int param_1,undefined4 param_2,undefined4 *param_3,undefined4 param_4,
               undefined4 param_5)

{
  uint uVar1;
  undefined4 local_54;
  undefined4 local_50;
  undefined4 local_4c;
  undefined4 local_48;
  undefined4 local_44;
  undefined4 local_40;
  undefined4 local_3c;
  undefined4 local_38;
  undefined4 local_34;
  undefined4 local_30;
  undefined4 local_2c;
  undefined4 local_28;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  undefined4 local_18;
  undefined4 local_14;
  
  local_50 = *(undefined4 *)(param_1 + 0x20);
  local_24 = *(undefined4 *)(param_1 + 0x4c);
  local_4c = *(undefined4 *)(param_1 + 0x24);
  local_20 = *(undefined4 *)(param_1 + 0x50);
  local_48 = *(undefined4 *)(param_1 + 0x28);
  local_1c = *(undefined4 *)(param_1 + 0x54);
  local_44 = *(undefined4 *)(param_1 + 0x2c);
  local_18 = *(undefined4 *)(param_1 + 0x58);
  local_40 = *(undefined4 *)(param_1 + 0x30);
  local_3c = *(undefined4 *)(param_1 + 0x34);
  local_38 = *(undefined4 *)(param_1 + 0x38);
  local_34 = *(undefined4 *)(param_1 + 0x3c);
  local_30 = *(undefined4 *)(param_1 + 0x40);
  local_2c = *(undefined4 *)(param_1 + 0x44);
  local_28 = *(undefined4 *)(param_1 + 0x48);
  local_14 = *(undefined4 *)(param_1 + 0x5c);
  uVar1 = _Uarm_get_proc_name_by_ip
                    (_Uarm_local_addr_space,param_2,param_4,param_5,&local_54,&local_50);
  *param_3 = local_54;
  return ~uVar1 >> 0x1f;
}

// ---- unwind  @ 0x1343c
uint unwind(int param_1,int param_2,uint param_3)

{
  int iVar1;
  int iVar2;
  uint uVar3;
  undefined4 local_6c;
  int local_68;
  undefined1 auStack_64 [4];
  undefined4 local_60;
  undefined4 local_5c;
  undefined4 local_58;
  undefined4 local_54;
  undefined4 local_50;
  undefined4 local_4c;
  undefined4 local_48;
  undefined4 local_44;
  undefined4 local_40;
  undefined4 local_3c;
  undefined4 local_38;
  undefined4 local_34;
  undefined4 local_30;
  undefined4 local_2c;
  undefined4 local_28;
  undefined4 local_24;
  
  local_60 = *(undefined4 *)(param_1 + 0x20);
  local_5c = *(undefined4 *)(param_1 + 0x24);
  local_58 = *(undefined4 *)(param_1 + 0x28);
  local_54 = *(undefined4 *)(param_1 + 0x2c);
  local_50 = *(undefined4 *)(param_1 + 0x30);
  local_4c = *(undefined4 *)(param_1 + 0x34);
  local_48 = *(undefined4 *)(param_1 + 0x38);
  local_44 = *(undefined4 *)(param_1 + 0x3c);
  local_40 = *(undefined4 *)(param_1 + 0x40);
  local_3c = *(undefined4 *)(param_1 + 0x44);
  local_38 = *(undefined4 *)(param_1 + 0x48);
  local_34 = *(undefined4 *)(param_1 + 0x4c);
  local_30 = *(undefined4 *)(param_1 + 0x50);
  local_2c = *(undefined4 *)(param_1 + 0x54);
  local_28 = *(undefined4 *)(param_1 + 0x58);
  local_24 = *(undefined4 *)(param_1 + 0x5c);
  crashlytics::envelope::detail::managed_cursor::managed_cursor((managed_cursor *)&local_6c);
  iVar1 = _Uarm_init_local(local_6c,&local_60);
  if (iVar1 < 0) {
    uVar3 = 0xffffffff;
  }
  else {
    uVar3 = 0;
    do {
      iVar1 = _Uarm_get_reg(local_6c,0xe,&local_68);
      if ((iVar1 < 0) ||
         (iVar2 = _Uarm_get_reg(local_6c,0xd,auStack_64), iVar1 = local_68, iVar2 < 0)) {
        iVar1 = 0;
      }
      *(int *)(param_2 + uVar3 * 4) = iVar1;
    } while (((iVar1 != 0) && (uVar3 = uVar3 + 1, uVar3 < param_3)) &&
            (iVar1 = _Uarm_step(local_6c), 0 < iVar1));
  }
  crashlytics::envelope::detail::managed_cursor::~managed_cursor((managed_cursor *)&local_6c);
  return uVar3;
}

// ---- unwind_ptrace  @ 0x134f2
uint unwind_ptrace(unwind_context *param_1,undefined4 param_2,int param_3,uint param_4)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  int iVar4;
  int iVar5;
  uint uVar6;
  undefined4 local_34;
  int local_30;
  undefined1 auStack_2c [8];
  
  uVar2 = _UPT_create(param_2);
  crashlytics::envelope::detail::managed_cursor::managed_cursor((managed_cursor *)&local_34);
  uVar1 = local_34;
  if (param_1 != (unwind_context *)0x0) {
    uVar3 = crashlytics::envelope::unwind_context::address_space(param_1);
    iVar4 = _Uarm_init_remote(uVar1,uVar3,uVar2);
    if (-1 < iVar4) {
      uVar6 = 0;
      do {
        iVar4 = _Uarm_get_reg(local_34,0xe,&local_30);
        if ((iVar4 < 0) ||
           (iVar5 = _Uarm_get_reg(local_34,0xd,auStack_2c), iVar4 = local_30, iVar5 < 0)) {
          iVar4 = 0;
        }
        *(int *)(param_3 + uVar6 * 4) = iVar4;
      } while (((iVar4 != 0) && (uVar6 = uVar6 + 1, uVar6 < param_4)) &&
              (iVar4 = _Uarm_step(local_34), 0 < iVar4));
      _UPT_destroy(uVar2);
      goto LAB_00013576;
    }
  }
  uVar6 = 0xffffffff;
LAB_00013576:
  crashlytics::envelope::detail::managed_cursor::~managed_cursor((managed_cursor *)&local_34);
  return uVar6;
}

// ---- operator.new  @ 0x13584
/* operator new(unsigned int) */

void * operator_new(uint param_1)

{
  void *pvVar1;
  undefined4 *puVar2;
  
  if (param_1 == 0) {
    param_1 = 1;
  }
  pvVar1 = malloc(param_1);
  if (pvVar1 == (void *)0x0) {
    do {
      if (DAT_00023f30 == (code *)0x0) {
        puVar2 = (undefined4 *)__cxa_allocate_exception(4);
        *puVar2 = &PTR__bad_alloc_1_0001ed38;
                    /* WARNING: Subroutine does not return */
        __cxa_throw(puVar2,&std::bad_alloc::typeinfo,0x13f79);
      }
      (*DAT_00023f30)();
      pvVar1 = malloc(param_1);
    } while (pvVar1 == (void *)0x0);
    return pvVar1;
  }
  return pvVar1;
}

// ---- __cxa_call_unexpected  @ 0x13648
void __cxa_call_unexpected(int param_1)

{
  int iVar1;
  _func_void *p_Var2;
  
  iVar1 = FUN_000135ec();
  if (iVar1 != 0) {
    p_Var2 = *(_func_void **)(param_1 + -0x18);
    __cxa_begin_catch(param_1);
                    /* WARNING: Subroutine does not return */
    __cxxabiv1::__unexpected(p_Var2);
  }
  __cxa_begin_catch(param_1);
  std::unexpected();
  __cxa_begin_catch();
                    /* WARNING: Subroutine does not return */
  std::terminate();
}

// ---- __cxa_get_globals_fast  @ 0x13798
undefined * __cxa_get_globals_fast(void)

{
  undefined *puVar1;
  
  if (DAT_0001f014 == '\0') {
    return &DAT_0001f018;
  }
  puVar1 = pthread_getspecific(DAT_0001f010);
  return puVar1;
}

// ---- __cxa_get_globals  @ 0x137c4
undefined4 * __cxa_get_globals(void)

{
  int iVar1;
  undefined4 *__pointer;
  
  __pointer = (undefined4 *)&DAT_0001f018;
  if ((DAT_0001f014 != '\0') &&
     (__pointer = pthread_getspecific(DAT_0001f010), __pointer == (undefined4 *)0x0)) {
    __pointer = malloc(0xc);
    if ((__pointer == (undefined4 *)0x0) ||
       (iVar1 = pthread_setspecific(DAT_0001f010,__pointer), iVar1 != 0)) {
                    /* WARNING: Subroutine does not return */
      std::terminate();
    }
    *__pointer = 0;
    __pointer[1] = 0;
    __pointer[2] = 0;
  }
  return __pointer;
}

// ---- __cxa_throw  @ 0x13864
void __cxa_throw(int param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 uVar1;
  undefined4 uVar2;
  int iVar3;
  
  iVar3 = __cxa_get_globals();
  uVar2 = __cxxabiv1::__unexpected_handler;
  uVar1 = __cxxabiv1::__terminate_handler;
  *(int *)(iVar3 + 4) = *(int *)(iVar3 + 4) + 1;
  *(undefined4 *)(param_1 + -0x78) = param_2;
  *(undefined4 *)(param_1 + -0x80) = 1;
  *(undefined4 *)(param_1 + -0x70) = uVar2;
  *(undefined4 *)(param_1 + -0x6c) = uVar1;
  *(undefined1 *)(param_1 + -0x58) = 0x47;
  *(undefined1 **)(param_1 + -0x50) = &LAB_00013820_1;
  *(undefined1 *)(param_1 + -0x55) = 0x43;
  *(undefined1 *)(param_1 + -0x54) = 0x43;
  *(undefined1 *)(param_1 + -0x53) = 0x2b;
  *(undefined1 *)(param_1 + -0x52) = 0x2b;
  *(undefined4 *)(param_1 + -0x74) = param_3;
  *(undefined1 *)(param_1 + -0x57) = 0x4e;
  *(undefined1 *)(param_1 + -0x56) = 0x55;
  *(undefined1 *)(param_1 + -0x51) = 0;
  ___Unwind_RaiseException(param_1 + -0x58);
  __cxa_begin_catch(param_1 + -0x58);
                    /* WARNING: Subroutine does not return */
  std::terminate();
}

// ---- __cxa_rethrow  @ 0x138f8
void __cxa_rethrow(void)

{
  int *piVar1;
  int iVar2;
  
  piVar1 = (int *)__cxa_get_globals();
  iVar2 = *piVar1;
  piVar1[1] = piVar1[1] + 1;
  if (iVar2 != 0) {
    if (((((*(char *)(iVar2 + 0x20) == 'G') && (*(char *)(iVar2 + 0x21) == 'N')) &&
         (*(char *)(iVar2 + 0x22) == 'U')) &&
        ((*(char *)(iVar2 + 0x23) == 'C' && (*(char *)(iVar2 + 0x24) == 'C')))) &&
       ((*(char *)(iVar2 + 0x25) == '+' &&
        ((*(char *)(iVar2 + 0x26) == '+' && (*(byte *)(iVar2 + 0x27) < 2)))))) {
      *(int *)(iVar2 + 0x14) = -*(int *)(iVar2 + 0x14);
    }
    else {
      *piVar1 = 0;
    }
    ___Unwind_Resume_or_Rethrow(iVar2 + 0x20);
    __cxa_begin_catch(iVar2 + 0x20);
  }
                    /* WARNING: Subroutine does not return */
  std::terminate();
}

// ---- operator.delete  @ 0x13a1c
/* operator delete(void*) */

void operator_delete(void *param_1)

{
  if (param_1 == (void *)0x0) {
    return;
  }
  free(param_1);
  return;
}

// ---- __cxa_end_cleanup  @ 0x13a24
void __cxa_end_cleanup(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  
  uVar1 = __gnu_end_cleanup();
  ___Unwind_Resume(uVar1,param_2,param_3,param_4);
  return;
}

// ---- __cxa_type_match  @ 0x13a30
undefined4 __cxa_type_match(char *param_1,int *param_2,undefined4 param_3,undefined4 *param_4)

{
  int iVar1;
  undefined4 uVar2;
  undefined **ppuVar3;
  undefined4 uVar4;
  char *local_1c;
  
  if ((((*param_1 == 'G') && (param_1[1] == 'N')) && (param_1[2] == 'U')) && (param_1[3] == 'C')) {
    if (((param_1[4] == 'F') && (param_1[5] == 'O')) &&
       ((param_1[6] == 'R' && (param_1[7] == '\0')))) {
      ppuVar3 = &__cxxabiv1::__forced_unwind::typeinfo;
      local_1c = (char *)0x0;
      goto LAB_00013a4a;
    }
    if (((param_1[4] == 'C') && (param_1[5] == '+')) &&
       ((param_1[6] == '+' && ((byte)param_1[7] < 2)))) {
      if (param_1[7] == 1) {
        local_1c = *(char **)(param_1 + -0x20);
        ppuVar3 = *(undefined ***)(local_1c + -0x78);
      }
      else {
        ppuVar3 = *(undefined ***)(param_1 + -0x20);
        local_1c = param_1 + 0x58;
      }
      goto LAB_00013a4a;
    }
  }
  local_1c = (char *)0x0;
  ppuVar3 = &__cxxabiv1::__foreign_exception::typeinfo;
LAB_00013a4a:
  uVar4 = 1;
  iVar1 = (**(code **)(*ppuVar3 + 8))(ppuVar3);
  if (iVar1 != 0) {
    uVar4 = 2;
    local_1c = *(char **)local_1c;
  }
  iVar1 = (**(code **)(*param_2 + 0x10))(param_2,ppuVar3,&local_1c,1);
  uVar2 = 0;
  if (iVar1 != 0) {
    *param_4 = local_1c;
    uVar2 = uVar4;
  }
  return uVar2;
}

// ---- __cxa_begin_cleanup  @ 0x13ae8
undefined4 __cxa_begin_cleanup(char *param_1)

{
  int iVar1;
  int iVar2;
  
  iVar1 = __cxa_get_globals();
  if (((((*param_1 == 'G') && (param_1[1] == 'N')) && (param_1[2] == 'U')) &&
      ((param_1[3] == 'C' && (param_1[4] == 'C')))) &&
     ((param_1[5] == '+' && ((param_1[6] == '+' && ((byte)param_1[7] < 2)))))) {
    iVar2 = *(int *)(param_1 + -4);
    *(int *)(param_1 + -4) = iVar2 + 1;
    if (iVar2 + 1 == 1) {
      *(undefined4 *)(param_1 + -8) = *(undefined4 *)(iVar1 + 8);
      *(char **)(iVar1 + 8) = param_1 + -0x20;
      return 1;
    }
  }
  else {
    if (*(int *)(iVar1 + 8) != 0) {
                    /* WARNING: Subroutine does not return */
      std::terminate();
    }
    *(char **)(iVar1 + 8) = param_1 + -0x20;
  }
  return 1;
}

// ---- __gnu_end_cleanup  @ 0x13b4c
int __gnu_end_cleanup(void)

{
  int iVar1;
  int iVar2;
  int iVar3;
  
  iVar1 = __cxa_get_globals();
  iVar3 = *(int *)(iVar1 + 8);
  if (iVar3 == 0) {
                    /* WARNING: Subroutine does not return */
    std::terminate();
  }
  if (((((*(char *)(iVar3 + 0x20) == 'G') && (*(char *)(iVar3 + 0x21) == 'N')) &&
       (*(char *)(iVar3 + 0x22) == 'U')) &&
      ((*(char *)(iVar3 + 0x23) == 'C' && (*(char *)(iVar3 + 0x24) == 'C')))) &&
     ((*(char *)(iVar3 + 0x25) == '+' &&
      ((*(char *)(iVar3 + 0x26) == '+' && (*(byte *)(iVar3 + 0x27) < 2)))))) {
    iVar2 = *(int *)(iVar3 + 0x1c) + -1;
    *(int *)(iVar3 + 0x1c) = iVar2;
    if (iVar2 == 0) {
      *(undefined4 *)(iVar1 + 8) = *(undefined4 *)(iVar3 + 0x18);
      *(undefined4 *)(iVar3 + 0x18) = 0;
      return iVar3 + 0x20;
    }
  }
  else {
    *(undefined4 *)(iVar1 + 8) = 0;
  }
  return iVar3 + 0x20;
}

// ---- __cxa_allocate_exception  @ 0x13d14
int __cxa_allocate_exception(int param_1)

{
  void *__s;
  int iVar1;
  int extraout_r1;
  uint uVar2;
  uint uVar3;
  
  __s = malloc(param_1 + 0x80U);
  if (__s != (void *)0x0) {
LAB_00013d24:
    memset(__s,0,0x80);
    return (int)__s + 0x80;
  }
  iVar1 = pthread_mutex_lock((pthread_mutex_t *)&DAT_0001ff28);
  if (iVar1 != 0) {
LAB_00013d8c:
                    /* WARNING: Subroutine does not return */
    FUN_00013cc4();
  }
  if (param_1 + 0x80U < 0x201) {
    uVar3 = 0;
    uVar2 = DAT_0001ff2c;
    do {
      if (-1 < (int)(uVar2 << 0x1f)) {
        DAT_0001ff2c = DAT_0001ff2c | 1 << (uVar3 & 0xff);
        __s = (void *)(uVar3 * 0x200 + 0x1ff30);
        iVar1 = pthread_mutex_unlock((pthread_mutex_t *)&DAT_0001ff28);
        if (iVar1 == 0) goto LAB_00013d24;
        FUN_00013cec();
        if (extraout_r1 == -1) {
                    /* WARNING: Subroutine does not return */
          __cxa_call_unexpected();
        }
        __cxa_end_cleanup();
        goto LAB_00013d8c;
      }
      uVar3 = uVar3 + 1;
      uVar2 = uVar2 >> 1;
    } while (uVar3 != 0x20);
  }
                    /* WARNING: Subroutine does not return */
  std::terminate();
}

// ---- __cxa_free_exception  @ 0x13dac
void __cxa_free_exception(uint param_1)

{
  int iVar1;
  int extraout_r1;
  
  if ((param_1 < 0x1ff30) || (0x23f2f < param_1)) {
    free((void *)(param_1 - 0x80));
    return;
  }
  iVar1 = pthread_mutex_lock((pthread_mutex_t *)&DAT_0001ff28);
  if (iVar1 != 0) {
                    /* WARNING: Subroutine does not return */
    FUN_00013cc4();
  }
  DAT_0001ff2c = DAT_0001ff2c & ~(1 << (param_1 - 0x1ff30 >> 9 & 0xff));
  iVar1 = pthread_mutex_unlock((pthread_mutex_t *)&DAT_0001ff28);
  if (iVar1 != 0) {
    while (FUN_00013cec(), extraout_r1 != -1) {
      __cxa_end_cleanup();
    }
                    /* WARNING: Subroutine does not return */
    __cxa_call_unexpected();
  }
  return;
}

// ---- __cxa_allocate_dependent_exception  @ 0x13e1c
void * __cxa_allocate_dependent_exception(void)

{
  void *__s;
  int iVar1;
  uint uVar2;
  uint uVar3;
  
  __s = malloc(0x78);
  if (__s != (void *)0x0) {
LAB_00013e28:
    memset(__s,0,0x78);
    return __s;
  }
  iVar1 = pthread_mutex_lock((pthread_mutex_t *)&DAT_0001ff28);
  if (iVar1 != 0) {
                    /* WARNING: Subroutine does not return */
    FUN_00013cc4();
  }
  uVar2 = 0;
  uVar3 = DAT_0001f024;
  do {
    if (-1 < (int)(uVar3 << 0x1f)) {
      DAT_0001f024 = DAT_0001f024 | 1 << (uVar2 & 0xff);
      __s = (void *)(uVar2 * 0x78 + 0x1f028);
      iVar1 = pthread_mutex_unlock((pthread_mutex_t *)&DAT_0001ff28);
      if (iVar1 == 0) goto LAB_00013e28;
      FUN_00013cec();
      break;
    }
    uVar2 = uVar2 + 1;
    uVar3 = uVar3 >> 1;
  } while (uVar2 != 0x20);
                    /* WARNING: Subroutine does not return */
  std::terminate();
}

// ---- __cxa_free_dependent_exception  @ 0x13ea8
void __cxa_free_dependent_exception(void *param_1)

{
  int iVar1;
  int extraout_r1;
  
  if ((param_1 < (void *)0x1f028) || ((void *)0x1ff27 < param_1)) {
    free(param_1);
    return;
  }
  iVar1 = pthread_mutex_lock((pthread_mutex_t *)&DAT_0001ff28);
  if (iVar1 != 0) {
                    /* WARNING: Subroutine does not return */
    FUN_00013cc4();
  }
  DAT_0001f024 = DAT_0001f024 & ~(1 << (((int)param_1 - 0x1f028U) / 0x78 & 0xff));
  iVar1 = pthread_mutex_unlock((pthread_mutex_t *)&DAT_0001ff28);
  if (iVar1 != 0) {
    while (FUN_00013cec(), extraout_r1 != -1) {
      __cxa_end_cleanup();
    }
                    /* WARNING: Subroutine does not return */
    __cxa_call_unexpected();
  }
  return;
}

// ---- __cxa_pure_virtual  @ 0x13f3c
void __cxa_pure_virtual(void)

{
  write(2,"pure virtual method called\n",0x1b);
                    /* WARNING: Subroutine does not return */
  std::terminate();
}

// ---- __cxa_deleted_virtual  @ 0x13f54
void __cxa_deleted_virtual(void)

{
  write(2,"deleted virtual method called\n",0x1e);
                    /* WARNING: Subroutine does not return */
  std::terminate();
}

// ---- __cxa_get_exception_ptr  @ 0x1457c
undefined4 __cxa_get_exception_ptr(int param_1)

{
  return *(undefined4 *)(param_1 + 0x24);
}

// ---- __cxa_begin_catch  @ 0x14580
undefined4 __cxa_begin_catch(char *param_1)

{
  undefined4 *puVar1;
  int iVar2;
  char *pcVar3;
  char *pcVar4;
  undefined4 uVar5;
  int iVar6;
  
  puVar1 = (undefined4 *)__cxa_get_globals();
  pcVar3 = param_1 + -0x20;
  pcVar4 = (char *)*puVar1;
  if (((((*param_1 == 'G') && (param_1[1] == 'N')) && (param_1[2] == 'U')) &&
      ((param_1[3] == 'C' && (param_1[4] == 'C')))) &&
     ((param_1[5] == '+' && ((param_1[6] == '+' && ((byte)param_1[7] < 2)))))) {
    iVar6 = *(int *)(param_1 + -0xc);
    if (iVar6 < 0) {
      iVar6 = -iVar6;
    }
    iVar2 = puVar1[1];
    *(int *)(param_1 + -0xc) = iVar6 + 1;
    puVar1[1] = iVar2 + -1;
    if (pcVar3 != pcVar4) {
      *(char **)(param_1 + -0x10) = pcVar4;
      *puVar1 = pcVar3;
    }
    uVar5 = *(undefined4 *)(param_1 + 0x24);
    _Unwind_Complete(param_1);
    return uVar5;
  }
  if (pcVar4 == (char *)0x0) {
    *puVar1 = pcVar3;
    return 0;
  }
                    /* WARNING: Subroutine does not return */
  std::terminate();
}

// ---- __cxa_end_catch  @ 0x1460c
void __cxa_end_catch(void)

{
  int *piVar1;
  int iVar2;
  byte bVar3;
  int iVar4;
  undefined4 in_r3;
  
  piVar1 = (int *)__cxa_get_globals_fast();
  iVar2 = *piVar1;
  if (iVar2 == 0) {
    return;
  }
  bVar3 = *(byte *)(iVar2 + 0x20);
  if (((((bVar3 != 0x47) || (bVar3 = *(byte *)(iVar2 + 0x21), bVar3 != 0x4e)) ||
       (bVar3 = *(byte *)(iVar2 + 0x22), bVar3 != 0x55)) ||
      ((bVar3 = *(byte *)(iVar2 + 0x23), bVar3 != 0x43 ||
       (bVar3 = *(byte *)(iVar2 + 0x24), bVar3 != 0x43)))) ||
     ((bVar3 = *(byte *)(iVar2 + 0x25), bVar3 != 0x2b ||
      ((bVar3 = *(byte *)(iVar2 + 0x26), bVar3 != 0x2b ||
       (bVar3 = *(byte *)(iVar2 + 0x27), 1 < bVar3)))))) {
    *piVar1 = 0;
    _Unwind_DeleteException(iVar2 + 0x20,bVar3,piVar1,in_r3);
    return;
  }
  iVar4 = *(int *)(iVar2 + 0x14);
  if (iVar4 < 0) {
    iVar4 = iVar4 + 1;
    if (iVar4 == 0) {
      *piVar1 = *(int *)(iVar2 + 0x10);
    }
  }
  else {
    iVar4 = iVar4 + -1;
    if (iVar4 == 0) {
      iVar4 = *(int *)(iVar2 + 0x10);
      *piVar1 = iVar4;
      _Unwind_DeleteException(iVar2 + 0x20,iVar4,piVar1,in_r3);
      return;
    }
    if (iVar4 == -1) {
                    /* WARNING: Subroutine does not return */
      std::terminate();
    }
  }
  *(int *)(iVar2 + 0x14) = iVar4;
  return;
}

// ---- __cxa_demangle  @ 0x1ae18
char * __cxa_demangle(int param_1,char *param_2,uint *param_3,int *param_4)

{
  int iVar1;
  size_t sVar2;
  char *__src;
  uint uVar3;
  char *local_28;
  undefined4 local_24;
  uint local_20;
  int local_1c;
  
  if ((param_1 == 0) || ((param_2 != (char *)0x0 && (param_3 == (uint *)0x0)))) {
    if (param_4 == (int *)0x0) {
      return (char *)0x0;
    }
    *param_4 = -3;
    return (char *)0x0;
  }
  local_28 = (char *)0x0;
  local_24 = 0;
  local_20 = 0;
  local_1c = 0;
  iVar1 = FUN_0001abe0(param_1,0x15179,&local_28);
  __src = local_28;
  if (iVar1 == 0) {
    free(local_28);
    if (param_4 == (int *)0x0) {
      return (char *)0x0;
    }
  }
  else {
    uVar3 = 1;
    if (local_1c == 0) {
      uVar3 = local_20;
    }
    if (local_28 != (char *)0x0) {
      if (param_2 == (char *)0x0) {
        if (param_3 == (uint *)0x0) goto LAB_0001ae90;
      }
      else {
        sVar2 = strlen(local_28);
        if (sVar2 < *param_3) {
          memcpy(param_2,__src,sVar2 + 1);
          free(__src);
          __src = param_2;
          goto LAB_0001ae90;
        }
        free(param_2);
      }
      *param_3 = uVar3;
LAB_0001ae90:
      if (param_4 != (int *)0x0) {
        *param_4 = 0;
        return __src;
      }
      return __src;
    }
    if (param_4 == (int *)0x0) {
      return (char *)0x0;
    }
    if (uVar3 == 1) {
      iVar1 = 1;
      goto LAB_0001aeae;
    }
  }
  iVar1 = 2;
LAB_0001aeae:
  *param_4 = -iVar1;
  return (char *)0x0;
}

// ---- __gcclibcxx_demangle_callback  @ 0x1aedc
undefined4 __gcclibcxx_demangle_callback(int param_1,int param_2)

{
  int iVar1;
  undefined4 uVar2;
  
  if ((param_1 == 0) || (param_2 == 0)) {
    uVar2 = 0xfffffffd;
  }
  else {
    iVar1 = FUN_0001abe0();
    uVar2 = 0;
    if (iVar1 == 0) {
      uVar2 = 0xfffffffe;
    }
  }
  return uVar2;
}

// ---- __cxa_current_exception_type  @ 0x1af00
int __cxa_current_exception_type(void)

{
  int *piVar1;
  int iVar2;
  
  piVar1 = (int *)__cxa_get_globals();
  piVar1 = (int *)*piVar1;
  iVar2 = 0;
  if (piVar1 != (int *)0x0) {
    if (*(char *)((int)piVar1 + 0x27) == '\x01') {
      piVar1 = (int *)(*piVar1 + -0x78);
    }
    iVar2 = *piVar1;
  }
  return iVar2;
}

// ---- __gnu_thumb1_case_sqi  @ 0x1af1c
/* WARNING: This is an inlined function */

void __gnu_thumb1_case_sqi(void)

{
  return;
}

// ---- __gnu_thumb1_case_uqi  @ 0x1af30
/* WARNING: This is an inlined function */

void __gnu_thumb1_case_uqi(void)

{
  return;
}

// ---- __gnu_thumb1_case_shi  @ 0x1af44
/* WARNING: This is an inlined function */

undefined8 __gnu_thumb1_case_shi(undefined4 param_1,undefined4 param_2)

{
  return CONCAT44(param_2,param_1);
}

// ---- __gnu_thumb1_case_uhi  @ 0x1af58
/* WARNING: This is an inlined function */

undefined8 __gnu_thumb1_case_uhi(undefined4 param_1,undefined4 param_2)

{
  return CONCAT44(param_2,param_1);
}

// ---- __gnu_thumb1_case_si  @ 0x1af6c
/* WARNING: This is an inlined function */

undefined8 __gnu_thumb1_case_si(undefined4 param_1,undefined4 param_2)

{
  return CONCAT44(param_2,param_1);
}

// ---- _Unwind_GetCFA  @ 0x1b230
undefined4 _Unwind_GetCFA(int param_1)

{
  return *(undefined4 *)(param_1 + 0x44);
}

// ---- __gnu_Unwind_RaiseException  @ 0x1b234
undefined4 __gnu_Unwind_RaiseException(int param_1,int param_2)

{
  int iVar1;
  undefined4 local_1f8;
  undefined4 local_1f4;
  undefined4 uStack_1f0;
  undefined4 uStack_1ec;
  undefined4 uStack_1e8;
  undefined4 local_1e4;
  undefined4 uStack_1e0;
  undefined4 uStack_1dc;
  undefined4 uStack_1d8;
  undefined4 local_1d4;
  undefined4 uStack_1d0;
  undefined4 uStack_1cc;
  undefined4 uStack_1c8;
  undefined4 local_1c4;
  undefined4 uStack_1c0;
  undefined4 uStack_1bc;
  undefined4 local_1b8;
  
  *(undefined4 *)(param_2 + 0x40) = *(undefined4 *)(param_2 + 0x3c);
  local_1f4 = *(undefined4 *)(param_2 + 4);
  uStack_1f0 = *(undefined4 *)(param_2 + 8);
  uStack_1ec = *(undefined4 *)(param_2 + 0xc);
  uStack_1e8 = *(undefined4 *)(param_2 + 0x10);
  local_1e4 = *(undefined4 *)(param_2 + 0x14);
  uStack_1e0 = *(undefined4 *)(param_2 + 0x18);
  uStack_1dc = *(undefined4 *)(param_2 + 0x1c);
  uStack_1d8 = *(undefined4 *)(param_2 + 0x20);
  local_1d4 = *(undefined4 *)(param_2 + 0x24);
  uStack_1d0 = *(undefined4 *)(param_2 + 0x28);
  uStack_1cc = *(undefined4 *)(param_2 + 0x2c);
  uStack_1c8 = *(undefined4 *)(param_2 + 0x30);
  local_1c4 = *(undefined4 *)(param_2 + 0x34);
  uStack_1c0 = *(undefined4 *)(param_2 + 0x38);
  uStack_1bc = *(undefined4 *)(param_2 + 0x3c);
  local_1b8 = *(undefined4 *)(param_2 + 0x40);
  local_1f8 = 0xffffffff;
  do {
    iVar1 = FUN_0001b030(param_1,local_1b8);
    if (iVar1 != 0) {
      return 9;
    }
    iVar1 = (**(code **)(param_1 + 0x10))(0,param_1,&local_1f8);
  } while (iVar1 == 8);
  FUN_0001b0d4(&local_1f8);
  if (iVar1 == 6) {
    FUN_0001b134(param_1,param_2);
  }
  return 9;
}

// ---- __gnu_Unwind_ForcedUnwind  @ 0x1b296
void __gnu_Unwind_ForcedUnwind(int param_1,undefined4 param_2,undefined4 param_3,int param_4)

{
  undefined4 uVar1;
  
  *(undefined4 *)(param_1 + 0x18) = param_3;
  uVar1 = *(undefined4 *)(param_4 + 0x3c);
  *(undefined4 *)(param_1 + 0xc) = param_2;
  *(undefined4 *)(param_4 + 0x40) = uVar1;
  FUN_0001b16e(param_1,param_4,0);
  return;
}

// ---- __gnu_Unwind_Resume  @ 0x1b2aa
void __gnu_Unwind_Resume(int param_1,int param_2)

{
  int iVar1;
  
  iVar1 = *(int *)(param_1 + 0xc);
  *(undefined4 *)(param_2 + 0x40) = *(undefined4 *)(param_1 + 0x14);
  if (iVar1 == 0) {
    iVar1 = (**(code **)(param_1 + 0x10))(2,param_1,param_2);
    if (iVar1 != 7) {
      if (iVar1 != 8) goto LAB_0001b2e8;
      FUN_0001b134(param_1,param_2);
    }
    FUN_0001b132(0,*(undefined4 *)(param_2 + 0x40));
    restore_core_regs(param_2 + 4);
  }
  else {
    FUN_0001b16e(param_1,param_2,1);
  }
LAB_0001b2e8:
                    /* WARNING: Subroutine does not return */
  abort();
}

// ---- __gnu_Unwind_Resume_or_Rethrow  @ 0x1b2ec
void __gnu_Unwind_Resume_or_Rethrow(int param_1,int param_2)

{
  if (*(int *)(param_1 + 0xc) == 0) {
    __gnu_Unwind_RaiseException();
    return;
  }
  *(undefined4 *)(param_2 + 0x40) = *(undefined4 *)(param_2 + 0x3c);
  FUN_0001b16e(param_1,param_2,0);
  return;
}

// ---- _Unwind_Complete  @ 0x1b2fc
void _Unwind_Complete(void)

{
  return;
}

// ---- _Unwind_DeleteException  @ 0x1b2fe
void _Unwind_DeleteException(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  code *pcVar1;
  
  pcVar1 = *(code **)(param_1 + 8);
  if (pcVar1 != (code *)0x0) {
    (*pcVar1)(1,param_1,param_3,pcVar1,param_4);
  }
  return;
}

// ---- _Unwind_VRS_Get  @ 0x1b30c
undefined4
_Unwind_VRS_Get(int param_1,undefined4 param_2,uint param_3,int param_4,undefined4 *param_5)

{
  switch(param_2) {
  case 0:
    if ((param_4 == 0) && (param_3 < 0x10)) {
      *param_5 = *(undefined4 *)(param_1 + param_3 * 4 + 4);
      return 0;
    }
    break;
  case 1:
  case 3:
  case 4:
    return 1;
  }
  return 2;
}

// ---- _Unwind_VRS_Set  @ 0x1b350
undefined4
_Unwind_VRS_Set(int param_1,undefined4 param_2,uint param_3,int param_4,undefined4 *param_5)

{
  switch(param_2) {
  case 0:
    if ((param_4 == 0) && (param_3 < 0x10)) {
      *(undefined4 *)(param_1 + param_3 * 4 + 4) = *param_5;
      return 0;
    }
    break;
  case 1:
  case 3:
  case 4:
    return 1;
  }
  return 2;
}

// ---- __gnu_Unwind_Backtrace  @ 0x1b396
int __gnu_Unwind_Backtrace(code *param_1,undefined4 param_2,int param_3)

{
  int iVar1;
  undefined1 auStack_250 [16];
  code *local_240;
  undefined4 local_1f8;
  undefined4 local_1f4;
  undefined4 uStack_1f0;
  undefined4 uStack_1ec;
  undefined4 uStack_1e8;
  undefined4 local_1e4;
  undefined4 uStack_1e0;
  undefined4 uStack_1dc;
  undefined4 uStack_1d8;
  undefined4 local_1d4;
  undefined4 uStack_1d0;
  undefined4 uStack_1cc;
  undefined4 uStack_1c8;
  undefined4 local_1c4;
  undefined4 uStack_1c0;
  undefined4 uStack_1bc;
  undefined4 local_1b8;
  
  *(undefined4 *)(param_3 + 0x40) = *(undefined4 *)(param_3 + 0x3c);
  local_1f4 = *(undefined4 *)(param_3 + 4);
  uStack_1f0 = *(undefined4 *)(param_3 + 8);
  uStack_1ec = *(undefined4 *)(param_3 + 0xc);
  uStack_1e8 = *(undefined4 *)(param_3 + 0x10);
  local_1e4 = *(undefined4 *)(param_3 + 0x14);
  uStack_1e0 = *(undefined4 *)(param_3 + 0x18);
  uStack_1dc = *(undefined4 *)(param_3 + 0x1c);
  uStack_1d8 = *(undefined4 *)(param_3 + 0x20);
  local_1d4 = *(undefined4 *)(param_3 + 0x24);
  uStack_1d0 = *(undefined4 *)(param_3 + 0x28);
  uStack_1cc = *(undefined4 *)(param_3 + 0x2c);
  uStack_1c8 = *(undefined4 *)(param_3 + 0x30);
  local_1c4 = *(undefined4 *)(param_3 + 0x34);
  uStack_1c0 = *(undefined4 *)(param_3 + 0x38);
  uStack_1bc = *(undefined4 *)(param_3 + 0x3c);
  local_1b8 = *(undefined4 *)(param_3 + 0x40);
  local_1f8 = 0xffffffff;
  do {
    iVar1 = FUN_0001b030(auStack_250,local_1b8);
    if (iVar1 != 0) break;
    FUN_0001b37c(&local_1f8,0xc,auStack_250);
    iVar1 = (*param_1)(&local_1f8,param_2);
    if (iVar1 != 0) break;
    iVar1 = (*local_240)(8,auStack_250,&local_1f8);
    if (iVar1 == 5) goto LAB_0001b400;
  } while (iVar1 != 9);
  iVar1 = 9;
LAB_0001b400:
  FUN_0001b0d4(&local_1f8);
  return iVar1;
}

// ---- __aeabi_unwind_cpp_pr0  @ 0x1b698
/* WARNING: Removing unreachable block (ram,0x0001b484) */
/* WARNING: Removing unreachable block (ram,0x0001b43e) */
/* WARNING: Removing unreachable block (ram,0x0001b442) */
/* WARNING: Removing unreachable block (ram,0x0001b654) */

undefined4 __aeabi_unwind_cpp_pr0(uint param_1,code *param_2,undefined4 param_3)

{
  ushort uVar1;
  bool bVar2;
  uint uVar3;
  uint *puVar4;
  undefined4 uVar5;
  int iVar6;
  code *pcVar7;
  uint uVar8;
  int iVar9;
  uint *puVar10;
  uint uVar11;
  bool bVar12;
  uint uVar13;
  bool bVar14;
  code *pcStack_38;
  int iStack_34;
  uint *puStack_30;
  undefined1 uStack_2c;
  undefined1 uStack_2b;
  
  puStack_30 = (uint *)(*(int **)(param_2 + 0x4c) + 1);
  uVar13 = param_1 & 3;
  iStack_34 = **(int **)(param_2 + 0x4c) << 8;
  uStack_2b = 0;
  uStack_2c = 3;
  puVar10 = puStack_30;
  if (uVar13 == 2) {
    puVar10 = *(uint **)(param_2 + 0x38);
  }
  if ((*(uint *)(param_2 + 0x50) & 1) == 0) {
    pcVar7 = param_2 + 0x58;
    bVar12 = false;
LAB_0001b474:
    do {
      while( true ) {
        if (*puVar10 == 0) goto LAB_0001b650;
        uVar11 = *puVar10;
        puVar4 = puVar10 + 1;
        uVar1 = *(ushort *)((int)puVar10 + 2);
        uVar8 = (uVar1 & 0xfffffffe) + *(int *)(param_2 + 0x48);
        uVar3 = FUN_0001b338(param_3,0xf);
        bVar14 = uVar3 < uVar8 + ((ushort)uVar11 & 0xfffffffe);
        bVar2 = uVar8 <= uVar3 && bVar14;
        uVar11 = (ushort)uVar11 & 1 | (uVar1 & 1) << 1;
        if (uVar11 != 1) break;
        if (uVar13 == 0) {
          if (bVar2) {
            uVar11 = *puVar4;
            if (puVar10[2] == 0xfffffffe) {
              return 9;
            }
            iVar6 = 1;
            pcStack_38 = pcVar7;
            if (puVar10[2] == 0xffffffff) {
LAB_0001b546:
              uVar5 = FUN_0001b338(param_3,0xd);
              *(undefined4 *)(param_2 + 0x20) = uVar5;
              if (iVar6 == 2) {
                pcVar7 = param_2 + 0x2c;
                *(code **)pcVar7 = pcStack_38;
LAB_0001b5f6:
                *(code **)(param_2 + 0x24) = pcVar7;
              }
              else {
                *(code **)(param_2 + 0x24) = pcStack_38;
              }
              *(uint **)(param_2 + 0x28) = puVar4;
              return 6;
            }
            uVar5 = FUN_0001b122(puVar10 + 2);
            iVar6 = __cxa_type_match(param_2,uVar5,uVar11 >> 0x1f,&pcStack_38);
            if (iVar6 != 0) goto LAB_0001b546;
          }
        }
        else {
          iVar9 = *(int *)(param_2 + 0x20);
          iVar6 = FUN_0001b338(param_3,0xd);
          if ((iVar9 == iVar6) && (puVar4 == *(uint **)(param_2 + 0x28))) {
LAB_0001b57c:
            uVar5 = FUN_0001af84(puVar4);
            FUN_0001b37c(param_3,0xf,uVar5);
            uVar5 = 0;
            pcVar7 = param_2;
            goto LAB_0001b590;
          }
        }
        puVar10 = puVar10 + 3;
      }
      if (uVar11 != 0) {
        if (uVar11 != 2) {
          return 9;
        }
        uVar11 = *puVar4 & 0x7fffffff;
        if (uVar13 == 0) {
          if ((bVar2) && (((param_1 & 8) == 0 || (uVar11 == 0)))) {
            uVar3 = 0;
            do {
              if (uVar3 == uVar11) {
                uVar5 = FUN_0001b338(param_3,0xd);
                *(undefined4 *)(param_2 + 0x20) = uVar5;
                pcVar7 = pcStack_38;
                goto LAB_0001b5f6;
              }
              uVar3 = uVar3 + 1;
              pcStack_38 = pcVar7;
              uVar5 = FUN_0001b122(puVar4 + uVar3);
              iVar6 = __cxa_type_match(param_2,uVar5,0,&pcStack_38);
            } while (iVar6 == 0);
          }
        }
        else {
          iVar9 = *(int *)(param_2 + 0x20);
          iVar6 = FUN_0001b338(param_3,0xd);
          if ((iVar9 == iVar6) && (puVar4 == *(uint **)(param_2 + 0x28))) {
            *(undefined4 *)(param_2 + 0x30) = 4;
            *(uint *)(param_2 + 0x28) = uVar11;
            *(undefined4 *)(param_2 + 0x2c) = 0;
            *(uint **)(param_2 + 0x34) = puVar10 + 2;
            if ((int)*puVar4 < 0) {
              puVar4 = puVar4 + uVar11 + 1;
              goto LAB_0001b57c;
            }
            bVar12 = true;
          }
        }
        if ((int)*puVar4 < 0) {
          puVar4 = puVar10 + 2;
        }
        puVar10 = puVar4 + uVar11 + 1;
        goto LAB_0001b474;
      }
      puVar10 = puVar10 + 2;
    } while ((uVar13 == 0) || (uVar8 > uVar3 || !bVar14));
    pcVar7 = (code *)FUN_0001af84(puVar4);
    *(uint **)(param_2 + 0x38) = puVar10;
    iVar6 = __cxa_begin_cleanup(param_2);
    if (iVar6 == 0) {
      return 9;
    }
    uVar5 = 0xf;
  }
  else {
    bVar12 = false;
LAB_0001b650:
    iVar6 = __gnu_unwind_execute(param_3,&iStack_34);
    if (iVar6 != 0) {
      return 9;
    }
    if (!bVar12) {
      return 8;
    }
    uVar5 = FUN_0001b338(param_3,0xf);
    FUN_0001b37c(param_3,0xe,uVar5);
    uVar5 = 0xf;
    pcVar7 = (code *)0x13649;
  }
LAB_0001b590:
  FUN_0001b37c(param_3,uVar5,pcVar7);
  return 7;
}

// ---- __aeabi_unwind_cpp_pr1  @ 0x1b69c
/* WARNING: Removing unreachable block (ram,0x0001b484) */
/* WARNING: Removing unreachable block (ram,0x0001b42e) */
/* WARNING: Removing unreachable block (ram,0x0001b654) */

undefined4 __aeabi_unwind_cpp_pr1(uint param_1,code *param_2,undefined4 param_3)

{
  ushort uVar1;
  bool bVar2;
  uint uVar3;
  uint *puVar4;
  undefined4 uVar5;
  int iVar6;
  code *pcVar7;
  uint uVar8;
  int iVar9;
  uint *puVar10;
  uint uVar11;
  bool bVar12;
  uint uVar13;
  bool bVar14;
  code *local_38;
  int local_34;
  int *local_30;
  undefined1 local_2c;
  byte local_2b;
  
  local_30 = *(int **)(param_2 + 0x4c) + 1;
  uVar13 = param_1 & 3;
  local_34 = **(int **)(param_2 + 0x4c);
  local_2b = (byte)((uint)local_34 >> 0x10);
  local_34 = local_34 << 0x10;
  local_2c = 2;
  puVar10 = (uint *)(local_30 + local_2b);
  if (uVar13 == 2) {
    puVar10 = *(uint **)(param_2 + 0x38);
  }
  if ((*(uint *)(param_2 + 0x50) & 1) == 0) {
    pcVar7 = param_2 + 0x58;
    bVar12 = false;
LAB_0001b474:
    do {
      while( true ) {
        if (*puVar10 == 0) goto LAB_0001b650;
        uVar11 = *puVar10;
        puVar4 = puVar10 + 1;
        uVar1 = *(ushort *)((int)puVar10 + 2);
        uVar8 = (uVar1 & 0xfffffffe) + *(int *)(param_2 + 0x48);
        uVar3 = FUN_0001b338(param_3,0xf);
        bVar14 = uVar3 < uVar8 + ((ushort)uVar11 & 0xfffffffe);
        bVar2 = uVar8 <= uVar3 && bVar14;
        uVar11 = (ushort)uVar11 & 1 | (uVar1 & 1) << 1;
        if (uVar11 != 1) break;
        if (uVar13 == 0) {
          if (bVar2) {
            uVar11 = *puVar4;
            if (puVar10[2] == 0xfffffffe) {
              return 9;
            }
            iVar6 = 1;
            local_38 = pcVar7;
            if (puVar10[2] == 0xffffffff) {
LAB_0001b546:
              uVar5 = FUN_0001b338(param_3,0xd);
              *(undefined4 *)(param_2 + 0x20) = uVar5;
              if (iVar6 == 2) {
                pcVar7 = param_2 + 0x2c;
                *(code **)pcVar7 = local_38;
LAB_0001b5f6:
                *(code **)(param_2 + 0x24) = pcVar7;
              }
              else {
                *(code **)(param_2 + 0x24) = local_38;
              }
              *(uint **)(param_2 + 0x28) = puVar4;
              return 6;
            }
            uVar5 = FUN_0001b122(puVar10 + 2);
            iVar6 = __cxa_type_match(param_2,uVar5,uVar11 >> 0x1f,&local_38);
            if (iVar6 != 0) goto LAB_0001b546;
          }
        }
        else {
          iVar9 = *(int *)(param_2 + 0x20);
          iVar6 = FUN_0001b338(param_3,0xd);
          if ((iVar9 == iVar6) && (puVar4 == *(uint **)(param_2 + 0x28))) {
LAB_0001b57c:
            uVar5 = FUN_0001af84(puVar4);
            FUN_0001b37c(param_3,0xf,uVar5);
            uVar5 = 0;
            pcVar7 = param_2;
            goto LAB_0001b590;
          }
        }
        puVar10 = puVar10 + 3;
      }
      if (uVar11 != 0) {
        if (uVar11 != 2) {
          return 9;
        }
        uVar11 = *puVar4 & 0x7fffffff;
        if (uVar13 == 0) {
          if ((bVar2) && (((param_1 & 8) == 0 || (uVar11 == 0)))) {
            uVar3 = 0;
            do {
              if (uVar3 == uVar11) {
                uVar5 = FUN_0001b338(param_3,0xd);
                *(undefined4 *)(param_2 + 0x20) = uVar5;
                pcVar7 = local_38;
                goto LAB_0001b5f6;
              }
              uVar3 = uVar3 + 1;
              local_38 = pcVar7;
              uVar5 = FUN_0001b122(puVar4 + uVar3);
              iVar6 = __cxa_type_match(param_2,uVar5,0,&local_38);
            } while (iVar6 == 0);
          }
        }
        else {
          iVar9 = *(int *)(param_2 + 0x20);
          iVar6 = FUN_0001b338(param_3,0xd);
          if ((iVar9 == iVar6) && (puVar4 == *(uint **)(param_2 + 0x28))) {
            *(undefined4 *)(param_2 + 0x30) = 4;
            *(uint *)(param_2 + 0x28) = uVar11;
            *(undefined4 *)(param_2 + 0x2c) = 0;
            *(uint **)(param_2 + 0x34) = puVar10 + 2;
            if ((int)*puVar4 < 0) {
              puVar4 = puVar4 + uVar11 + 1;
              goto LAB_0001b57c;
            }
            bVar12 = true;
          }
        }
        if ((int)*puVar4 < 0) {
          puVar4 = puVar10 + 2;
        }
        puVar10 = puVar4 + uVar11 + 1;
        goto LAB_0001b474;
      }
      puVar10 = puVar10 + 2;
    } while ((uVar13 == 0) || (uVar8 > uVar3 || !bVar14));
    pcVar7 = (code *)FUN_0001af84(puVar4);
    *(uint **)(param_2 + 0x38) = puVar10;
    iVar6 = __cxa_begin_cleanup(param_2);
    if (iVar6 == 0) {
      return 9;
    }
    uVar5 = 0xf;
  }
  else {
    bVar12 = false;
LAB_0001b650:
    iVar6 = __gnu_unwind_execute(param_3,&local_34);
    if (iVar6 != 0) {
      return 9;
    }
    if (!bVar12) {
      return 8;
    }
    uVar5 = FUN_0001b338(param_3,0xf);
    FUN_0001b37c(param_3,0xe,uVar5);
    uVar5 = 0xf;
    pcVar7 = (code *)0x13649;
  }
LAB_0001b590:
  FUN_0001b37c(param_3,uVar5,pcVar7);
  return 7;
}

// ---- __aeabi_unwind_cpp_pr2  @ 0x1b6a0
/* WARNING: Removing unreachable block (ram,0x0001b48a) */
/* WARNING: Removing unreachable block (ram,0x0001b42e) */
/* WARNING: Removing unreachable block (ram,0x0001b654) */

undefined4 __aeabi_unwind_cpp_pr2(uint param_1,code *param_2,undefined4 param_3)

{
  bool bVar1;
  uint uVar2;
  uint *puVar3;
  undefined4 uVar4;
  int iVar5;
  code *pcVar6;
  uint uVar7;
  uint uVar8;
  int iVar9;
  uint *puVar10;
  uint uVar11;
  bool bVar12;
  uint uVar13;
  bool bVar14;
  code *pcStack_38;
  int iStack_34;
  int *piStack_30;
  undefined1 uStack_2c;
  byte bStack_2b;
  
  piStack_30 = *(int **)(param_2 + 0x4c) + 1;
  uVar13 = param_1 & 3;
  iStack_34 = **(int **)(param_2 + 0x4c);
  bStack_2b = (byte)((uint)iStack_34 >> 0x10);
  iStack_34 = iStack_34 << 0x10;
  uStack_2c = 2;
  puVar10 = (uint *)(piStack_30 + bStack_2b);
  if (uVar13 == 2) {
    puVar10 = *(uint **)(param_2 + 0x38);
  }
  if ((*(uint *)(param_2 + 0x50) & 1) == 0) {
    pcVar6 = param_2 + 0x58;
    bVar12 = false;
LAB_0001b474:
    do {
      while( true ) {
        uVar11 = *puVar10;
        if (uVar11 == 0) goto LAB_0001b650;
        uVar8 = puVar10[1];
        puVar3 = puVar10 + 2;
        uVar7 = (uVar8 & 0xfffffffe) + *(int *)(param_2 + 0x48);
        uVar2 = FUN_0001b338(param_3,0xf);
        bVar14 = uVar2 < uVar7 + (uVar11 & 0xfffffffe);
        bVar1 = uVar7 <= uVar2 && bVar14;
        uVar11 = uVar11 & 1 | (uVar8 & 1) << 1;
        if (uVar11 != 1) break;
        if (uVar13 == 0) {
          if (bVar1) {
            uVar11 = *puVar3;
            if (puVar10[3] == 0xfffffffe) {
              return 9;
            }
            iVar5 = 1;
            pcStack_38 = pcVar6;
            if (puVar10[3] == 0xffffffff) {
LAB_0001b546:
              uVar4 = FUN_0001b338(param_3,0xd);
              *(undefined4 *)(param_2 + 0x20) = uVar4;
              if (iVar5 == 2) {
                pcVar6 = param_2 + 0x2c;
                *(code **)pcVar6 = pcStack_38;
LAB_0001b5f6:
                *(code **)(param_2 + 0x24) = pcVar6;
              }
              else {
                *(code **)(param_2 + 0x24) = pcStack_38;
              }
              *(uint **)(param_2 + 0x28) = puVar3;
              return 6;
            }
            uVar4 = FUN_0001b122(puVar10 + 3);
            iVar5 = __cxa_type_match(param_2,uVar4,uVar11 >> 0x1f,&pcStack_38);
            if (iVar5 != 0) goto LAB_0001b546;
          }
        }
        else {
          iVar9 = *(int *)(param_2 + 0x20);
          iVar5 = FUN_0001b338(param_3,0xd);
          if ((iVar9 == iVar5) && (puVar3 == *(uint **)(param_2 + 0x28))) {
LAB_0001b57c:
            uVar4 = FUN_0001af84(puVar3);
            FUN_0001b37c(param_3,0xf,uVar4);
            uVar4 = 0;
            pcVar6 = param_2;
            goto LAB_0001b590;
          }
        }
        puVar10 = puVar10 + 4;
      }
      if (uVar11 != 0) {
        if (uVar11 != 2) {
          return 9;
        }
        uVar11 = *puVar3 & 0x7fffffff;
        if (uVar13 == 0) {
          if ((bVar1) && (((param_1 & 8) == 0 || (uVar11 == 0)))) {
            uVar2 = 0;
            do {
              if (uVar2 == uVar11) {
                uVar4 = FUN_0001b338(param_3,0xd);
                *(undefined4 *)(param_2 + 0x20) = uVar4;
                pcVar6 = pcStack_38;
                goto LAB_0001b5f6;
              }
              uVar2 = uVar2 + 1;
              pcStack_38 = pcVar6;
              uVar4 = FUN_0001b122(puVar3 + uVar2);
              iVar5 = __cxa_type_match(param_2,uVar4,0,&pcStack_38);
            } while (iVar5 == 0);
          }
        }
        else {
          iVar9 = *(int *)(param_2 + 0x20);
          iVar5 = FUN_0001b338(param_3,0xd);
          if ((iVar9 == iVar5) && (puVar3 == *(uint **)(param_2 + 0x28))) {
            *(undefined4 *)(param_2 + 0x30) = 4;
            *(uint *)(param_2 + 0x28) = uVar11;
            *(undefined4 *)(param_2 + 0x2c) = 0;
            *(uint **)(param_2 + 0x34) = puVar10 + 3;
            if ((int)*puVar3 < 0) {
              puVar3 = puVar3 + uVar11 + 1;
              goto LAB_0001b57c;
            }
            bVar12 = true;
          }
        }
        if ((int)*puVar3 < 0) {
          puVar3 = puVar10 + 3;
        }
        puVar10 = puVar3 + uVar11 + 1;
        goto LAB_0001b474;
      }
      puVar10 = puVar10 + 3;
    } while ((uVar13 == 0) || (uVar7 > uVar2 || !bVar14));
    pcVar6 = (code *)FUN_0001af84(puVar3);
    *(uint **)(param_2 + 0x38) = puVar10;
    iVar5 = __cxa_begin_cleanup(param_2);
    if (iVar5 == 0) {
      return 9;
    }
    uVar4 = 0xf;
  }
  else {
    bVar12 = false;
LAB_0001b650:
    iVar5 = __gnu_unwind_execute(param_3,&iStack_34);
    if (iVar5 != 0) {
      return 9;
    }
    if (!bVar12) {
      return 8;
    }
    uVar4 = FUN_0001b338(param_3,0xf);
    FUN_0001b37c(param_3,0xe,uVar4);
    uVar4 = 0xf;
    pcVar6 = (code *)0x13649;
  }
LAB_0001b590:
  FUN_0001b37c(param_3,uVar4,pcVar6);
  return 7;
}

// ---- _Unwind_VRS_Pop  @ 0x1b6a4
undefined4 _Unwind_VRS_Pop(uint *param_1,undefined4 param_2,uint param_3,uint param_4)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  uint *puVar3;
  uint uVar4;
  uint uVar5;
  uint uVar6;
  int iVar7;
  uint uVar8;
  bool bVar9;
  undefined4 auStack_1a0 [32];
  undefined1 local_120 [128];
  undefined4 local_a0 [34];
  
  switch(param_2) {
  case 0:
    if (param_4 != 0) {
      return 2;
    }
    puVar3 = (uint *)param_1[0xe];
    uVar5 = 0;
    do {
      if ((1 << (uVar5 & 0xff) & param_3 & 0xffff) != 0) {
        uVar4 = *puVar3;
        puVar3 = puVar3 + 1;
        param_1[uVar5 + 1] = uVar4;
      }
      uVar5 = uVar5 + 1;
    } while (uVar5 != 0x10);
    if ((param_3 & 0x2000) != 0) {
      return 0;
    }
    param_1[0xe] = (uint)puVar3;
    return 0;
  case 1:
    if ((param_4 & 0xfffffffb) != 1) {
      return 2;
    }
    uVar4 = param_3 >> 0x10;
    param_3 = param_3 & 0xffff;
    uVar5 = param_3 + uVar4;
    if (param_4 == 1) {
      if (0x10 < uVar5) {
        return 2;
      }
      if (0xf < uVar4) {
        return 2;
      }
LAB_0001b7f6:
      uVar5 = 0;
LAB_0001b7f8:
      uVar6 = *param_1;
      if ((int)(uVar6 << 0x1f) < 0) {
        *param_1 = uVar6 & 0xfffffffe;
        if (param_4 == 5) {
          *param_1 = uVar6 & 0xfffffffe | 2;
          __gnu_Unwind_Save_VFP_D();
        }
        else {
          *param_1 = uVar6 & 0xfffffffc;
          __gnu_Unwind_Save_VFP(param_1 + 0x12);
        }
      }
    }
    else {
      if (0x20 < uVar5) {
        return 2;
      }
      if (uVar4 < 0x10) {
        if (uVar5 < 0x11) goto LAB_0001b7f6;
        uVar5 = uVar5 - 0x10;
      }
      else {
        uVar5 = param_3;
        if (param_3 == 0) goto LAB_0001b85c;
      }
      if (param_4 != 5) {
        return 2;
      }
      if (uVar4 < 0x10) goto LAB_0001b7f8;
    }
    if ((uVar5 != 0) && ((int)(*param_1 << 0x1d) < 0)) {
      *param_1 = *param_1 & 0xfffffffb;
      __gnu_Unwind_Save_VFP_D_16_to_31(param_1 + 0x34);
    }
    if (param_4 == 1) {
      __gnu_Unwind_Save_VFP(local_a0);
      if (uVar5 == 0) goto LAB_0001b85c;
    }
    else {
      if (uVar4 < 0x10) {
        __gnu_Unwind_Save_VFP_D(local_a0);
      }
      if (uVar5 == 0) goto LAB_0001b85c;
      __gnu_Unwind_Save_VFP_D_16_to_31(local_120);
    }
    param_3 = 0x10 - uVar4;
LAB_0001b85c:
    uVar6 = param_1[0xe];
    if (0 < (int)param_3) {
      iVar7 = param_3 << 1;
      puVar2 = (undefined4 *)(uVar6 - 4);
      while (bVar9 = iVar7 != 0, iVar7 = iVar7 + -1, bVar9) {
        puVar2 = puVar2 + 1;
        *(undefined4 *)((int)local_a0 + (uVar4 * 8 - uVar6) + (int)puVar2) = *puVar2;
      }
      uVar6 = uVar6 + param_3 * 8;
    }
    if (uVar5 != 0) {
      uVar8 = uVar4;
      if (uVar4 < 0x10) {
        uVar8 = 0x10;
      }
      iVar7 = 0;
      do {
        auStack_1a0[uVar8 * 2 + iVar7] = *(undefined4 *)(uVar6 + iVar7 * 4);
        iVar7 = iVar7 + 1;
      } while (iVar7 != uVar5 * 2);
      uVar6 = uVar6 + iVar7 * 4;
    }
    if (param_4 == 1) {
      uVar6 = uVar6 + 4;
    }
    param_1[0xe] = uVar6;
    if (param_4 == 1) {
      __gnu_Unwind_Restore_VFP(local_a0);
    }
    else {
      if (uVar4 < 0x10) {
        __gnu_Unwind_Restore_VFP_D(local_a0);
      }
      if (uVar5 != 0) {
        __gnu_Unwind_Restore_VFP_D_16_to_31(local_120);
      }
    }
    return 0;
  case 3:
    if (param_4 == 3) {
      uVar5 = param_3 & 0xffff;
      if (uVar5 + (param_3 >> 0x10) < 0x11) {
        if ((int)(*param_1 << 0x1c) < 0) {
          *param_1 = *param_1 & 0xfffffff7;
          __gnu_Unwind_Save_WMMXD(param_1 + 0x54);
        }
        iVar7 = uVar5 << 1;
        __gnu_Unwind_Save_WMMXD(local_a0);
        uVar4 = param_1[0xe];
        puVar2 = (undefined4 *)(uVar4 - 4);
        while (bVar9 = iVar7 != 0, iVar7 = iVar7 + -1, bVar9) {
          puVar2 = puVar2 + 1;
          *(undefined4 *)((int)local_a0 + ((param_3 >> 0x10) * 8 - uVar4) + (int)puVar2) = *puVar2;
        }
        param_1[0xe] = uVar4 + uVar5 * 8;
        __gnu_Unwind_Restore_WMMXD(local_a0);
        return 0;
      }
    }
    break;
  case 4:
    if ((param_4 == 0) && (param_3 < 0x11)) {
      if ((int)(*param_1 << 0x1b) < 0) {
        *param_1 = *param_1 & 0xffffffef;
        __gnu_Unwind_Save_WMMXC(param_1 + 0x74);
      }
      __gnu_Unwind_Save_WMMXC(local_a0);
      puVar2 = (undefined4 *)param_1[0xe];
      uVar5 = 0;
      do {
        if ((1 << (uVar5 & 0xff) & param_3) != 0) {
          uVar1 = *puVar2;
          puVar2 = puVar2 + 1;
          local_a0[uVar5] = uVar1;
        }
        uVar5 = uVar5 + 1;
      } while (uVar5 != 4);
      param_1[0xe] = (uint)puVar2;
      __gnu_Unwind_Restore_WMMXC(local_a0);
      return 0;
    }
  }
  return 2;
}

// ---- restore_core_regs  @ 0x1b8c8
undefined8 restore_core_regs(undefined8 *param_1)

{
  *(undefined4 *)(*(int *)((int)param_1 + 0x34) + -4) = *(undefined4 *)((int)param_1 + 0x3c);
  return *param_1;
}

// ---- __gnu_Unwind_Restore_VFP  @ 0x1b8e0
undefined4 __gnu_Unwind_Restore_VFP(undefined8 *param_1)

{
  return (int)*param_1;
}

// ---- __gnu_Unwind_Save_VFP  @ 0x1b8e8
void __gnu_Unwind_Save_VFP(undefined8 *param_1)

{
  undefined8 in_d0;
  undefined8 in_d1;
  undefined8 in_d2;
  undefined8 in_d3;
  undefined8 in_d4;
  undefined8 in_d5;
  undefined8 in_d6;
  undefined8 in_d7;
  undefined8 unaff_d8;
  undefined8 unaff_d9;
  undefined8 unaff_d10;
  undefined8 unaff_d11;
  undefined8 unaff_d12;
  undefined8 unaff_d13;
  undefined8 unaff_d14;
  undefined8 unaff_d15;
  
  *param_1 = in_d0;
  param_1[1] = in_d1;
  param_1[2] = in_d2;
  param_1[3] = in_d3;
  param_1[4] = in_d4;
  param_1[5] = in_d5;
  param_1[6] = in_d6;
  param_1[7] = in_d7;
  param_1[8] = unaff_d8;
  param_1[9] = unaff_d9;
  param_1[10] = unaff_d10;
  param_1[0xb] = unaff_d11;
  param_1[0xc] = unaff_d12;
  param_1[0xd] = unaff_d13;
  param_1[0xe] = unaff_d14;
  param_1[0xf] = unaff_d15;
  return;
}

// ---- __gnu_Unwind_Restore_VFP_D  @ 0x1b8f0
undefined4 __gnu_Unwind_Restore_VFP_D(undefined8 *param_1)

{
  return (int)*param_1;
}

// ---- __gnu_Unwind_Save_VFP_D  @ 0x1b8f8
void __gnu_Unwind_Save_VFP_D(undefined8 *param_1)

{
  undefined8 in_d0;
  undefined8 in_d1;
  undefined8 in_d2;
  undefined8 in_d3;
  undefined8 in_d4;
  undefined8 in_d5;
  undefined8 in_d6;
  undefined8 in_d7;
  undefined8 unaff_d8;
  undefined8 unaff_d9;
  undefined8 unaff_d10;
  undefined8 unaff_d11;
  undefined8 unaff_d12;
  undefined8 unaff_d13;
  undefined8 unaff_d14;
  undefined8 unaff_d15;
  
  *param_1 = in_d0;
  param_1[1] = in_d1;
  param_1[2] = in_d2;
  param_1[3] = in_d3;
  param_1[4] = in_d4;
  param_1[5] = in_d5;
  param_1[6] = in_d6;
  param_1[7] = in_d7;
  param_1[8] = unaff_d8;
  param_1[9] = unaff_d9;
  param_1[10] = unaff_d10;
  param_1[0xb] = unaff_d11;
  param_1[0xc] = unaff_d12;
  param_1[0xd] = unaff_d13;
  param_1[0xe] = unaff_d14;
  param_1[0xf] = unaff_d15;
  return;
}

// ---- __gnu_Unwind_Restore_VFP_D_16_to_31  @ 0x1b900
void __gnu_Unwind_Restore_VFP_D_16_to_31(void)

{
  return;
}

// ---- __gnu_Unwind_Save_VFP_D_16_to_31  @ 0x1b908
void __gnu_Unwind_Save_VFP_D_16_to_31(undefined8 *param_1)

{
  undefined8 in_d16;
  undefined8 in_d17;
  undefined8 in_d18;
  undefined8 in_d19;
  undefined8 in_d20;
  undefined8 in_d21;
  undefined8 in_d22;
  undefined8 in_d23;
  undefined8 in_d24;
  undefined8 in_d25;
  undefined8 in_d26;
  undefined8 in_d27;
  undefined8 in_d28;
  undefined8 in_d29;
  undefined8 in_d30;
  undefined8 in_d31;
  
  *param_1 = in_d16;
  param_1[1] = in_d17;
  param_1[2] = in_d18;
  param_1[3] = in_d19;
  param_1[4] = in_d20;
  param_1[5] = in_d21;
  param_1[6] = in_d22;
  param_1[7] = in_d23;
  param_1[8] = in_d24;
  param_1[9] = in_d25;
  param_1[10] = in_d26;
  param_1[0xb] = in_d27;
  param_1[0xc] = in_d28;
  param_1[0xd] = in_d29;
  param_1[0xe] = in_d30;
  param_1[0xf] = in_d31;
  return;
}

// ---- __gnu_Unwind_Restore_WMMXD  @ 0x1b910
int __gnu_Unwind_Restore_WMMXD(int param_1)

{
  undefined4 in_cr0;
  undefined4 in_cr1;
  undefined4 in_cr2;
  undefined4 in_cr3;
  undefined4 in_cr4;
  undefined4 in_cr5;
  undefined4 in_cr6;
  undefined4 in_cr7;
  undefined4 in_cr8;
  undefined4 in_cr9;
  undefined4 in_cr10;
  undefined4 in_cr11;
  undefined4 in_cr12;
  undefined4 in_cr13;
  undefined4 in_cr14;
  undefined4 in_cr15;
  
  coprocessor_loadlong(1,in_cr0,param_1);
  coprocessor_loadlong(1,in_cr1,param_1 + 8);
  coprocessor_loadlong(1,in_cr2,param_1 + 0x10);
  coprocessor_loadlong(1,in_cr3,param_1 + 0x18);
  coprocessor_loadlong(1,in_cr4,param_1 + 0x20);
  coprocessor_loadlong(1,in_cr5,param_1 + 0x28);
  coprocessor_loadlong(1,in_cr6,param_1 + 0x30);
  coprocessor_loadlong(1,in_cr7,param_1 + 0x38);
  coprocessor_loadlong(1,in_cr8,param_1 + 0x40);
  coprocessor_loadlong(1,in_cr9,param_1 + 0x48);
  coprocessor_loadlong(1,in_cr10,param_1 + 0x50);
  coprocessor_loadlong(1,in_cr11,param_1 + 0x58);
  coprocessor_loadlong(1,in_cr12,param_1 + 0x60);
  coprocessor_loadlong(1,in_cr13,param_1 + 0x68);
  coprocessor_loadlong(1,in_cr14,param_1 + 0x70);
  coprocessor_loadlong(1,in_cr15,param_1 + 0x78);
  return param_1 + 0x80;
}

// ---- __gnu_Unwind_Save_WMMXD  @ 0x1b954
int __gnu_Unwind_Save_WMMXD(int param_1)

{
  undefined4 in_cr0;
  undefined4 in_cr1;
  undefined4 in_cr2;
  undefined4 in_cr3;
  undefined4 in_cr4;
  undefined4 in_cr5;
  undefined4 in_cr6;
  undefined4 in_cr7;
  undefined4 in_cr8;
  undefined4 in_cr9;
  undefined4 in_cr10;
  undefined4 in_cr11;
  undefined4 in_cr12;
  undefined4 in_cr13;
  undefined4 in_cr14;
  undefined4 in_cr15;
  
  coprocessor_storelong(1,in_cr0,param_1);
  coprocessor_storelong(1,in_cr1,param_1 + 8);
  coprocessor_storelong(1,in_cr2,param_1 + 0x10);
  coprocessor_storelong(1,in_cr3,param_1 + 0x18);
  coprocessor_storelong(1,in_cr4,param_1 + 0x20);
  coprocessor_storelong(1,in_cr5,param_1 + 0x28);
  coprocessor_storelong(1,in_cr6,param_1 + 0x30);
  coprocessor_storelong(1,in_cr7,param_1 + 0x38);
  coprocessor_storelong(1,in_cr8,param_1 + 0x40);
  coprocessor_storelong(1,in_cr9,param_1 + 0x48);
  coprocessor_storelong(1,in_cr10,param_1 + 0x50);
  coprocessor_storelong(1,in_cr11,param_1 + 0x58);
  coprocessor_storelong(1,in_cr12,param_1 + 0x60);
  coprocessor_storelong(1,in_cr13,param_1 + 0x68);
  coprocessor_storelong(1,in_cr14,param_1 + 0x70);
  coprocessor_storelong(1,in_cr15,param_1 + 0x78);
  return param_1 + 0x80;
}

// ---- __gnu_Unwind_Restore_WMMXC  @ 0x1b998
int __gnu_Unwind_Restore_WMMXC(int param_1)

{
  undefined4 in_cr8;
  undefined4 in_cr9;
  undefined4 in_cr10;
  undefined4 in_cr11;
  
  coprocessor_load(1,in_cr8,param_1);
  coprocessor_load(1,in_cr9,param_1 + 4);
  coprocessor_load(1,in_cr10,param_1 + 8);
  coprocessor_load(1,in_cr11,param_1 + 0xc);
  return param_1 + 0x10;
}

// ---- __gnu_Unwind_Save_WMMXC  @ 0x1b9ac
int __gnu_Unwind_Save_WMMXC(int param_1)

{
  undefined4 in_cr8;
  undefined4 in_cr9;
  undefined4 in_cr10;
  undefined4 in_cr11;
  
  coprocessor_store(1,in_cr8,param_1);
  coprocessor_store(1,in_cr9,param_1 + 4);
  coprocessor_store(1,in_cr10,param_1 + 8);
  coprocessor_store(1,in_cr11,param_1 + 0xc);
  return param_1 + 0x10;
}

// ---- ___Unwind_RaiseException  @ 0x1b9c0
void ___Unwind_RaiseException
               (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uStack_44;
  undefined4 uStack_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  
  uStack_44 = 0;
  uStack_40 = param_1;
  uStack_3c = param_2;
  uStack_38 = param_3;
  uStack_34 = param_4;
  __gnu_Unwind_RaiseException(param_1,&uStack_44,param_3,0,param_3);
  return;
}

// ---- ___Unwind_Resume  @ 0x1b9e4
void ___Unwind_Resume(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uStack_44;
  undefined4 uStack_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  
  uStack_44 = 0;
  uStack_40 = param_1;
  uStack_3c = param_2;
  uStack_38 = param_3;
  uStack_34 = param_4;
  __gnu_Unwind_Resume(param_1,&uStack_44,param_3,0,param_3);
  return;
}

// ---- ___Unwind_Resume_or_Rethrow  @ 0x1ba08
void ___Unwind_Resume_or_Rethrow
               (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uStack_44;
  undefined4 uStack_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  
  uStack_44 = 0;
  uStack_40 = param_1;
  uStack_3c = param_2;
  uStack_38 = param_3;
  uStack_34 = param_4;
  __gnu_Unwind_Resume_or_Rethrow(param_1,&uStack_44,param_3,0,param_3);
  return;
}

// ---- _Unwind_ForcedUnwind  @ 0x1ba2c
void _Unwind_ForcedUnwind(void)

{
  __gnu_Unwind_ForcedUnwind();
  return;
}

// ---- _Unwind_Backtrace  @ 0x1ba50
void _Unwind_Backtrace(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uStack_44;
  undefined4 uStack_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  
  uStack_44 = 0;
  uStack_40 = param_1;
  uStack_3c = param_2;
  uStack_38 = param_3;
  uStack_34 = param_4;
  __gnu_Unwind_Backtrace(param_1,param_2,&uStack_44,0,param_3);
  return;
}

// ---- __gnu_unwind_execute  @ 0x1baba
undefined4 __gnu_unwind_execute(int *param_1,undefined4 param_2,undefined4 param_3,int param_4)

{
  uint uVar1;
  uint uVar2;
  undefined4 uVar3;
  uint uVar4;
  undefined4 uVar5;
  bool bVar6;
  int iVar7;
  int *piVar8;
  undefined4 uVar9;
  int local_24;
  
  bVar6 = false;
  piVar8 = param_1;
  uVar9 = param_2;
  local_24 = param_4;
LAB_0001bacc:
  do {
    while( true ) {
      uVar2 = FUN_0001ba74(param_2);
      if (uVar2 == 0xb0) {
        if (!bVar6) {
          _Unwind_VRS_Get(param_1,0,0xe,0,&local_24,uVar9,param_3);
          _Unwind_VRS_Set(param_1,0,0xf,0,&local_24);
        }
        return 0;
      }
      if ((uVar2 & 0x80) != 0) break;
      _Unwind_VRS_Get(param_1,0,0xd,0,&local_24,uVar9,param_3);
      iVar7 = (uVar2 & 0x3f) * 4 + 4;
      if ((uVar2 & 0x40) != 0) {
        iVar7 = -iVar7;
      }
      local_24 = local_24 + iVar7;
LAB_0001bb92:
      piVar8 = &local_24;
      _Unwind_VRS_Set(param_1,0,0xd,0);
    }
    uVar4 = uVar2 & 0xf0;
    if (uVar4 == 0x80) {
      uVar4 = FUN_0001ba74(param_2);
      uVar4 = uVar4 | uVar2 << 8;
      if (uVar4 == 0x8000) {
        return 9;
      }
      uVar4 = uVar4 << 4;
      iVar7 = _Unwind_VRS_Pop(param_1,0,uVar4 & 0xffff,0,piVar8);
      if (iVar7 != 0) {
        return 9;
      }
      if ((uVar4 & 0x8000) != 0) {
        bVar6 = true;
      }
      goto LAB_0001bacc;
    }
    if (uVar4 == 0x90) {
      if ((uVar2 & 0xd) == 0xd) {
        return 9;
      }
      _Unwind_VRS_Get(param_1,0,uVar2 & 0xf,0,&local_24,uVar9,param_3);
      goto LAB_0001bb92;
    }
    if (uVar4 == 0xa0) {
      uVar4 = 0xff0 >> (~uVar2 & 7) & 0xff0;
      if ((int)(uVar2 << 0x1c) < 0) {
        uVar4 = uVar4 | 0x4000;
      }
      uVar3 = 0;
      uVar5 = uVar3;
    }
    else if (uVar4 == 0xb0) {
      if (uVar2 == 0xb1) {
        uVar4 = FUN_0001ba74(param_2);
        if (uVar4 == 0) {
          return 9;
        }
        if ((uVar4 & 0xf0) != 0) {
          return 9;
        }
        uVar3 = 0;
        uVar5 = uVar3;
      }
      else {
        if (uVar2 == 0xb2) {
          uVar4 = 2;
          _Unwind_VRS_Get(param_1,0,0xd,0,&local_24,uVar9,param_3);
          uVar2 = FUN_0001ba74(param_2);
          while ((uVar2 & 0x80) != 0) {
            uVar1 = uVar4 & 0xff;
            uVar4 = uVar4 + 7;
            local_24 = local_24 + ((uVar2 & 0x7f) << uVar1);
            uVar2 = FUN_0001ba74(param_2);
          }
          local_24 = ((uVar2 & 0x7f) << (uVar4 & 0xff)) + local_24 + 0x204;
          goto LAB_0001bb92;
        }
        if (uVar2 == 0xb3) {
          uVar2 = FUN_0001ba74(param_2);
          uVar3 = 1;
          goto LAB_0001bc74;
        }
        if ((uVar2 & 0xfc) == 0xb4) {
          return 9;
        }
        uVar3 = 1;
        uVar4 = (uVar2 & 7) + 1 | 0x80000;
        uVar5 = uVar3;
      }
    }
    else if (uVar4 == 0xc0) {
      if (uVar2 == 0xc6) {
        uVar2 = FUN_0001ba74(param_2);
        uVar3 = 3;
LAB_0001bc74:
        uVar4 = (uVar2 & 0xf) + 1 | (uVar2 & 0xf0) << 0xc;
        uVar5 = uVar3;
      }
      else if (uVar2 == 199) {
        uVar4 = FUN_0001ba74(param_2);
        if (uVar4 == 0) {
          return 9;
        }
        if ((uVar4 & 0xf0) != 0) {
          return 9;
        }
        uVar3 = 4;
        uVar5 = 0;
      }
      else {
        if ((uVar2 & 0xf8) != 0xc0) {
          if (uVar2 == 200) {
            uVar2 = FUN_0001ba74(param_2);
            uVar4 = (uVar2 & 0xf0) + 0x10;
          }
          else {
            if (uVar2 != 0xc9) {
              return 9;
            }
            uVar2 = FUN_0001ba74(param_2);
            uVar4 = uVar2 & 0xf0;
          }
          uVar4 = (uVar2 & 0xf) + 1 | uVar4 << 0xc;
          goto LAB_0001bd02;
        }
        uVar3 = 3;
        uVar4 = (uVar2 & 0xf) + 1 | 0xa0000;
        uVar5 = uVar3;
      }
    }
    else {
      if ((uVar2 & 0xf8) != 0xd0) {
        return 9;
      }
      uVar4 = (uVar2 & 7) + 1 | 0x80000;
LAB_0001bd02:
      uVar3 = 1;
      uVar5 = 5;
    }
    iVar7 = _Unwind_VRS_Pop(param_1,uVar3,uVar4,uVar5,piVar8);
    if (iVar7 != 0) {
      return 9;
    }
  } while( true );
}

// ---- __gnu_unwind_frame  @ 0x1bd18
void __gnu_unwind_frame(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  int local_14;
  int local_10;
  undefined1 local_c;
  undefined1 local_b;
  undefined2 uStack_a;
  
  iVar1 = *(int *)(param_1 + 0x4c);
  local_14 = *(int *)(iVar1 + 4) << 8;
  local_10 = iVar1 + 8;
  uStack_a = (undefined2)((uint)param_4 >> 0x10);
  _local_c = CONCAT11(*(undefined1 *)(iVar1 + 7),3);
  __gnu_unwind_execute(param_2,&local_14,3,*(undefined1 *)(iVar1 + 7),param_1);
  return;
}

// ---- _Unwind_GetRegionStart  @ 0x1bd42
undefined4 _Unwind_GetRegionStart(void)

{
  int iVar1;
  
  iVar1 = thunk_FUN_0001baa0();
  return *(undefined4 *)(iVar1 + 0x48);
}

// ---- _Unwind_GetLanguageSpecificData  @ 0x1bd4c
int _Unwind_GetLanguageSpecificData(void)

{
  int iVar1;
  
  iVar1 = thunk_FUN_0001baa0();
  return *(int *)(iVar1 + 0x4c) + (uint)*(byte *)(*(int *)(iVar1 + 0x4c) + 7) * 4 + 8;
}

// ---- _Unwind_GetDataRelBase  @ 0x1bd5e
void _Unwind_GetDataRelBase(void)

{
                    /* WARNING: Subroutine does not return */
  abort();
}

// ---- _Unwind_GetTextRelBase  @ 0x1bd64
void _Unwind_GetTextRelBase(void)

{
                    /* WARNING: Subroutine does not return */
  abort();
}
