// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 71 functions

// ---- FUN_0001a140  @ 0x1a140
void FUN_0001a140(void *param_1)

{
  bool bVar1;
  int iVar2;
  int *piVar3;
  
  piVar3 = (int *)((int)param_1 + 8);
  DataMemoryBarrier(0x1f);
  do {
    ExclusiveAccess(piVar3);
    iVar2 = *piVar3;
    bVar1 = (bool)hasExclusiveAccess(piVar3);
  } while (!bVar1);
  *piVar3 = iVar2 + -1;
  DataMemoryBarrier(0x1f);
  if (0 < iVar2) {
    return;
  }
  operator_delete(param_1);
  return;
}

// ---- FUN_0001ae04  @ 0x1ae04
void FUN_0001ae04(undefined4 *param_1,scoped_writer *param_2)

{
  undefined4 uVar1;
  int iVar2;
  wrapped awStack_38 [16];
  undefined1 auStack_28 [8];
  undefined *local_20;
  
  crashlytics::detail::scoped_writer::wrapped::wrapped(awStack_38,0,0x7b,0x7d,1,param_2);
  crashlytics::detail::scoped_writer::write<unsigned_long_long>
            (param_2,&DAT_0002b70d,*param_1,param_1[1],0);
  uVar1 = *param_1;
  memset(auStack_28,0,0x10);
  iVar2 = dladdr(uVar1,auStack_28);
  if (iVar2 == 0) {
    local_20 = &DAT_0002b70c;
  }
  else if (local_20 == (undefined *)0x0) {
    local_20 = &DAT_0002b70c;
  }
  crashlytics::detail::scoped_writer::write<char_const*>(param_2,"symbol",local_20,1);
  crashlytics::detail::scoped_writer::wrapped::~wrapped(awStack_38);
  return;
}

// ---- FUN_0001aeae  @ 0x1aeae
void FUN_0001aeae(undefined4 *param_1,scoped_writer *param_2)

{
  wrapped awStack_20 [16];
  
  crashlytics::detail::scoped_writer::wrapped::wrapped(awStack_20,0x7b,0x7d,1,param_2);
  crashlytics::detail::scoped_writer::write<bool>(param_2,*param_1,*(undefined1 *)(param_1 + 1),1);
  crashlytics::detail::scoped_writer::wrapped::~wrapped(awStack_20);
  return;
}

// ---- FUN_0001af3c  @ 0x1af3c
void FUN_0001af3c(undefined4 *param_1,scoped_writer *param_2)

{
  wrapped awStack_20 [16];
  
  crashlytics::detail::scoped_writer::wrapped::wrapped(awStack_20,0x7b,0x7d,1,param_2);
  crashlytics::detail::scoped_writer::write<bool>(param_2,*param_1,*(undefined1 *)(param_1 + 1),1);
  crashlytics::detail::scoped_writer::wrapped::~wrapped(awStack_20);
  return;
}

// ---- FUN_0001b110  @ 0x1b110
void FUN_0001b110(undefined4 *param_1,scoped_writer *param_2)

{
  wrapped awStack_20 [16];
  
  crashlytics::detail::scoped_writer::wrapped::wrapped(awStack_20,0x7b,0x7d,1,param_2);
  crashlytics::detail::scoped_writer::write<bool>(param_2,*param_1,*(undefined1 *)(param_1 + 1),1);
  crashlytics::detail::scoped_writer::wrapped::~wrapped(awStack_20);
  return;
}

// ---- FUN_0001b230  @ 0x1b230
void FUN_0001b230(undefined4 *param_1,scoped_writer *param_2)

{
  wrapped awStack_20 [16];
  
  crashlytics::detail::scoped_writer::wrapped::wrapped(awStack_20,0x7b,0x7d,1,param_2);
  crashlytics::detail::scoped_writer::write<bool>(param_2,*param_1,*(undefined1 *)(param_1 + 1),1);
  crashlytics::detail::scoped_writer::wrapped::~wrapped(awStack_20);
  return;
}

// ---- FUN_0001bd38  @ 0x1bd38
void FUN_0001bd38(undefined4 *param_1,int param_2,scoped_writer *param_3)

{
  bool bVar1;
  int *piVar2;
  uint uVar3;
  char extraout_r2;
  char extraout_r2_00;
  undefined4 extraout_r2_01;
  undefined4 uVar4;
  undefined4 extraout_r2_02;
  char *pcVar5;
  int iVar6;
  int iVar7;
  wrapped awStack_48 [16];
  int local_38 [5];
  
  crashlytics::detail::scoped_writer::wrapped::wrapped(awStack_48,0x7b,0x7d,1,param_3);
  piVar2 = *(int **)param_1[1];
  if (*(int *)*param_1 == param_2) {
    uVar3 = (**(code **)(*piVar2 + 8))
                      (piVar2,param_2,param_2,*(undefined4 *)param_1[2],*(undefined4 *)param_1[3],
                       *(undefined4 *)param_1[4]);
  }
  else {
    uVar3 = (**(code **)(*piVar2 + 0x10))
                      (piVar2,*(int *)*param_1,param_2,*(undefined4 *)param_1[2],
                       *(undefined4 *)param_1[5]);
  }
  iVar7 = *(int *)*param_1;
  pcVar5 = *(char **)param_1[6];
  crashlytics::handler::signal::detail::filesystem::managed_node_file::managed_node_file<7u,6u>
            ((managed_node_file *)local_38,"/proc/",param_2,"/comm");
  if ((local_38[0] == -1) ||
     (iVar6 = crashlytics::handler::signal::detail::fgets_safe(local_38[0],pcVar5,0x11,false),
     iVar6 == 0)) {
    bVar1 = false;
  }
  else {
    pcVar5[0x10] = '\0';
    bVar1 = true;
  }
  crashlytics::handler::signal::detail::filesystem::managed_node_file::~managed_node_file
            ((managed_node_file *)local_38);
  if ((bVar1) ||
     (bVar1 = crashlytics::handler::signal::detail::thread_name_from_stat<17u>(iVar7,param_2,pcVar5)
     , bVar1)) {
    pcVar5 = *(char **)param_1[6];
    crashlytics::detail::impl::write(*(int *)param_3,"name");
    crashlytics::detail::impl::write(*(impl **)param_3,0x3a,extraout_r2);
    crashlytics::detail::impl::write(*(int *)param_3,pcVar5);
    crashlytics::detail::impl::write(*(impl **)param_3,0x2c,extraout_r2_00);
  }
  crashlytics::detail::scoped_writer::write<bool>(param_3,"crashed",*(int *)*param_1 == param_2,0);
  iVar7 = *(int *)param_1[2];
  iVar6 = iVar7 + (uVar3 & ~((int)uVar3 >> 0x1f)) * 8;
  crashlytics::detail::scoped_writer::wrapped::wrapped
            ((wrapped *)local_38,"frames",0x5b,0x5d,1,param_3);
  if (iVar7 != iVar6) {
    FUN_0001ae04(iVar7,param_3);
    uVar4 = extraout_r2_01;
    while (iVar7 = iVar7 + 8, iVar7 != iVar6) {
      crashlytics::detail::impl::write(*(impl **)param_3,0x2c,(char)uVar4);
      FUN_0001ae04(iVar7,param_3);
      uVar4 = extraout_r2_02;
    }
  }
  crashlytics::detail::scoped_writer::wrapped::~wrapped((wrapped *)local_38);
  crashlytics::detail::scoped_writer::wrapped::~wrapped(awStack_48);
  return;
}

// ---- FUN_0001d350  @ 0x1d350
byte * FUN_0001d350(byte *param_1,byte *param_2,int param_3,int *param_4)

{
  byte *pbVar1;
  uint uVar2;
  int iVar3;
  uint uVar4;
  
  iVar3 = 0;
  pbVar1 = param_1;
  while (pbVar1 < param_2) {
    uVar4 = (uint)*pbVar1;
    uVar2 = uVar4 - 0x30;
    if (9 < uVar2) {
      uVar2 = uVar4 - 0x61;
      if ((5 < uVar2) && (uVar2 = uVar4 - 0x41, 5 < uVar2)) break;
      uVar2 = uVar2 + 10;
    }
    if (param_3 <= (int)uVar2) break;
    iVar3 = param_3 * iVar3 + uVar2;
    pbVar1 = pbVar1 + 1;
  }
  if (pbVar1 != param_1) {
    *param_4 = iVar3;
    return pbVar1;
  }
  return (byte *)0x0;
}

// ---- FUN_0001d448  @ 0x1d448
undefined4 FUN_0001d448(undefined4 param_1)

{
  int iVar1;
  code *pcVar2;
  undefined4 uVar3;
  
  dlerror();
  iVar1 = dlopen("libc.so",0);
  if (iVar1 != 0) {
    pcVar2 = (code *)dlsym(iVar1,"getauxval");
    if (pcVar2 == (code *)0x0) {
      uVar3 = 0;
    }
    else {
      uVar3 = (*pcVar2)(param_1);
    }
    dlclose(iVar1);
    return uVar3;
  }
  return 0;
}

// ---- FUN_0001d488  @ 0x1d488
void * FUN_0001d488(void *param_1,int param_2,char *param_3)

{
  size_t sVar1;
  void *pvVar2;
  void *pvVar3;
  void *pvVar4;
  
  sVar1 = strlen(param_3);
  pvVar4 = (void *)(param_2 + (int)param_1);
  pvVar3 = param_1;
  do {
    pvVar2 = memmem(pvVar3,(int)pvVar4 - (int)pvVar3,param_3,sVar1);
    if (pvVar2 == (void *)0x0) {
      return (void *)0x0;
    }
    pvVar3 = (void *)((int)pvVar2 + sVar1);
  } while ((pvVar2 != param_1) && (*(char *)((int)pvVar2 + -1) != '\n'));
  pvVar3 = memchr(pvVar3,0x3a,(int)pvVar4 - (int)pvVar3);
  if (pvVar3 == (void *)0x0) {
    pvVar4 = (void *)0x0;
  }
  else if (*(char *)((int)pvVar3 + 1) == ' ') {
    pvVar3 = (void *)((int)pvVar3 + 2);
    pvVar2 = memchr(pvVar3,10,(int)pvVar4 - (int)pvVar3);
    if (pvVar2 != (void *)0x0) {
      pvVar4 = pvVar2;
    }
    sVar1 = (int)pvVar4 - (int)pvVar3;
    pvVar4 = malloc(sVar1 + 1);
    if (pvVar4 != (void *)0x0) {
      memcpy(pvVar4,pvVar3,sVar1);
      *(undefined1 *)((int)pvVar4 + sVar1) = 0;
    }
  }
  else {
    pvVar4 = (void *)0x0;
  }
  return pvVar4;
}

// ---- FUN_0001e084  @ 0x1e084
void FUN_0001e084(undefined4 param_1)

{
  undefined4 uVar1;
  undefined1 auStack_1c [4];
  undefined1 auStack_18 [4];
  int local_14;
  
  uVar1 = __cxa_allocate_exception(8);
  FUN_000202a4(&local_14,param_1,auStack_1c);
  FUN_00021ad8(uVar1,&local_14);
  FUN_0001f0b0(local_14 + -0xc,auStack_18);
                    /* WARNING: Subroutine does not return */
  __cxa_throw(uVar1,&PTR_PTR_0002ea34,0x21879);
}

// ---- FUN_0001e0e0  @ 0x1e0e0
void FUN_0001e0e0(undefined4 param_1)

{
  undefined4 uVar1;
  undefined1 auStack_1c [4];
  undefined1 auStack_18 [4];
  int local_14;
  
  uVar1 = __cxa_allocate_exception(8);
  FUN_000202a4(&local_14,param_1,auStack_1c);
  FUN_00021afc(uVar1,&local_14);
  FUN_0001f0b0(local_14 + -0xc,auStack_18);
                    /* WARNING: Subroutine does not return */
  __cxa_throw(uVar1,&PTR_PTR_0002ea58,0x218e5);
}

// ---- FUN_0001e198  @ 0x1e198
void FUN_0001e198(undefined4 param_1)

{
  undefined4 uVar1;
  undefined1 auStack_1c [4];
  undefined1 auStack_18 [4];
  int local_14;
  
  uVar1 = __cxa_allocate_exception(8);
  FUN_000202a4(&local_14,param_1,auStack_1c);
  FUN_00021b2c(uVar1,&local_14);
  FUN_0001f0b0(local_14 + -0xc,auStack_18);
                    /* WARNING: Subroutine does not return */
  __cxa_throw(uVar1,&PTR_PTR_0002ea88,&LAB_00021954_1);
}

// ---- FUN_0001e1f4  @ 0x1e1f4
void FUN_0001e1f4(undefined4 param_1)

{
  undefined4 uVar1;
  undefined1 auStack_1c [4];
  undefined1 auStack_18 [4];
  int local_14;
  
  uVar1 = __cxa_allocate_exception(8);
  FUN_000202a4(&local_14,param_1,auStack_1c);
  FUN_00021b44(uVar1,&local_14);
  FUN_0001f0b0(local_14 + -0xc,auStack_18);
                    /* WARNING: Subroutine does not return */
  __cxa_throw(uVar1,&PTR_PTR_0002ea64,&LAB_0002198c_1);
}

// ---- FUN_0001e250  @ 0x1e250
void FUN_0001e250(undefined4 param_1)

{
  undefined4 uVar1;
  undefined1 auStack_1c [4];
  undefined1 auStack_18 [4];
  int local_14;
  
  uVar1 = __cxa_allocate_exception(8);
  FUN_000202a4(&local_14,param_1,auStack_1c);
  FUN_00021b5c(uVar1,&local_14);
  FUN_0001f0b0(local_14 + -0xc,auStack_18);
                    /* WARNING: Subroutine does not return */
  __cxa_throw(uVar1,&PTR_PTR_0002eaf8,0x219c5);
}

// ---- FUN_0001e410  @ 0x1e410
void FUN_0001e410(undefined4 param_1)

{
  undefined4 *puVar1;
  int *piVar2;
  undefined1 auStack_20 [4];
  int local_1c [2];
  
  puVar1 = (undefined4 *)__cxa_allocate_exception(0x10);
  piVar2 = (int *)FUN_00021ee4();
  (**(code **)(*piVar2 + 0xc))(local_1c,piVar2,param_1);
  FUN_00021b5c(puVar1,local_1c);
  FUN_0001f0b0(local_1c[0] + -0xc,auStack_20);
  puVar1[2] = param_1;
  puVar1[3] = piVar2;
  *puVar1 = &PTR_LAB_00021e58_1_0002eb68;
                    /* WARNING: Subroutine does not return */
  __cxa_throw(puVar1,&PTR_PTR_0002eba0,&LAB_00021e58_1);
}

// ---- FUN_0001e488  @ 0x1e488
void FUN_0001e488(undefined4 param_1)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  undefined1 auStack_24 [4];
  undefined1 auStack_20 [4];
  int local_1c [2];
  
  puVar1 = (undefined4 *)__cxa_allocate_exception(0x10);
  uVar2 = FUN_0001e78c();
  FUN_000202a4(local_1c,"std::future_error",auStack_20);
  FUN_00021ad8(puVar1,local_1c);
  FUN_0001f0b0(local_1c[0] + -0xc,auStack_24);
  puVar1[2] = param_1;
  puVar1[3] = uVar2;
  *puVar1 = &PTR_LAB_0001e5f8_1_0002e7c0;
                    /* WARNING: Subroutine does not return */
  __cxa_throw(puVar1,&PTR_PTR_0002e83c,&LAB_0001e5f8_1);
}

// ---- FUN_0001e66c  @ 0x1e66c
undefined4 * FUN_0001e66c(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0001e66c_1_0002e7f8;
  FUN_00021c74(param_1 + 3);
  if ((undefined4 *)param_1[1] != (undefined4 *)0x0) {
    (*(code *)**(undefined4 **)param_1[1])();
  }
  param_1[1] = 0;
  return param_1;
}

// ---- FUN_0001e694  @ 0x1e694
void * FUN_0001e694(void *param_1)

{
  FUN_0001e66c();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0001e78c  @ 0x1e78c
undefined4 * FUN_0001e78c(void)

{
  int iVar1;
  uint uVar2;
  
  uVar2 = DAT_000d0660 & 1;
  if ((uVar2 == 0) && (iVar1 = __cxa_guard_acquire(&DAT_000d0660), iVar1 != 0)) {
    DAT_000d065c = (undefined **)uVar2;
    FUN_00021ec8(&DAT_000d065c);
    DAT_000d065c = &PTR_LAB_0001e5c0_1_0002e810;
    __cxa_guard_release(&DAT_000d0660);
    FUN_00021828(&DAT_000d065c,&LAB_0001e5c0_1,&DAT_0002f000);
  }
  return &DAT_000d065c;
}

// ---- FUN_0001e838  @ 0x1e838
uint FUN_0001e838(int *param_1,uint param_2,undefined4 param_3)

{
  if (param_2 <= *(uint *)(*param_1 + -0xc)) {
    return param_2;
  }
                    /* WARNING: Subroutine does not return */
  FUN_0001e1f4(param_3);
}

// ---- FUN_0001ea2c  @ 0x1ea2c
size_t FUN_0001ea2c(int *param_1,undefined1 *param_2,uint param_3,uint param_4)

{
  uint __n;
  int iVar1;
  
  iVar1 = *param_1;
  if (*(uint *)(iVar1 + -0xc) < param_4) {
                    /* WARNING: Subroutine does not return */
    FUN_0001e1f4("basic_string::copy");
  }
  __n = *(uint *)(iVar1 + -0xc) - param_4;
  if (param_3 <= __n) {
    __n = param_3;
  }
  if (__n != 0) {
    if (__n == 1) {
      *param_2 = *(undefined1 *)(iVar1 + param_4);
      return 1;
    }
    memcpy(param_2,(void *)(iVar1 + param_4),__n);
  }
  return __n;
}

// ---- FUN_0001ea6c  @ 0x1ea6c
void FUN_0001ea6c(int *param_1,int *param_2)

{
  int iVar1;
  int iVar2;
  
  iVar1 = *param_1;
  if (*(int *)(iVar1 + -4) < 0) {
    *(undefined4 *)(iVar1 + -4) = 0;
  }
  iVar2 = *param_2;
  if (*(int *)(iVar2 + -4) < 0) {
    *(undefined4 *)(iVar2 + -4) = 0;
  }
  *param_1 = iVar2;
  *param_2 = iVar1;
  return;
}

// ---- FUN_0001ea98  @ 0x1ea98
undefined4 FUN_0001ea98(undefined4 param_1)

{
  FUN_0001ea6c();
  return param_1;
}

// ---- FUN_0001eaa4  @ 0x1eaa4
undefined4 FUN_0001eaa4(undefined4 param_1)

{
  FUN_0001ea6c();
  return param_1;
}

// ---- FUN_0001eab8  @ 0x1eab8
uint FUN_0001eab8(int *param_1,char *param_2,uint param_3,uint param_4)

{
  char cVar1;
  uint uVar2;
  int iVar3;
  char *pcVar4;
  int iVar5;
  
  iVar5 = *param_1;
  uVar2 = *(uint *)(iVar5 + -0xc);
  if (param_4 == 0) {
    if (uVar2 < param_3) {
      param_3 = 0xffffffff;
    }
    return param_3;
  }
  if ((param_4 <= uVar2) && (param_3 <= uVar2 - param_4)) {
    cVar1 = *param_2;
    pcVar4 = (char *)(iVar5 + param_3);
    do {
      param_3 = param_3 + 1;
      if ((*pcVar4 == cVar1) && (iVar3 = memcmp(pcVar4 + 1,param_2 + 1,param_4 - 1), iVar3 == 0)) {
        return (int)pcVar4 - iVar5;
      }
      pcVar4 = pcVar4 + 1;
    } while (param_3 <= uVar2 - param_4);
  }
  return 0xffffffff;
}

// ---- FUN_0001eb30  @ 0x1eb30
void FUN_0001eb30(undefined4 param_1,char *param_2,undefined4 param_3)

{
  size_t sVar1;
  
  sVar1 = strlen(param_2);
  FUN_0001eab8(param_1,param_2,param_3,sVar1);
  return;
}

// ---- FUN_0001eb50  @ 0x1eb50
int FUN_0001eb50(int *param_1,int param_2,uint param_3)

{
  void *pvVar1;
  int iVar2;
  
  iVar2 = *param_1;
  if ((param_3 < *(uint *)(iVar2 + -0xc)) &&
     (pvVar1 = memchr((void *)(param_3 + iVar2),param_2,*(uint *)(iVar2 + -0xc) - param_3),
     pvVar1 != (void *)0x0)) {
    return (int)pvVar1 - iVar2;
  }
  return -1;
}

// ---- FUN_0001ebc0  @ 0x1ebc0
uint FUN_0001ebc0(int *param_1,char *param_2,uint param_3)

{
  int iVar1;
  size_t __n;
  uint uVar2;
  int iVar3;
  bool bVar4;
  
  __n = strlen(param_2);
  iVar3 = *param_1;
  uVar2 = *(uint *)(iVar3 + -0xc);
  if (__n <= uVar2) {
    uVar2 = uVar2 - __n;
    if (param_3 <= uVar2) {
      uVar2 = param_3;
    }
    do {
      iVar1 = memcmp((void *)(iVar3 + uVar2),param_2,__n);
      if (iVar1 == 0) {
        return uVar2;
      }
      bVar4 = uVar2 != 0;
      uVar2 = uVar2 - 1;
    } while (bVar4);
  }
  return 0xffffffff;
}

// ---- FUN_0001ec14  @ 0x1ec14
uint FUN_0001ec14(int *param_1,void *param_2,uint param_3,size_t param_4)

{
  void *pvVar1;
  uint uVar2;
  int iVar3;
  
  if (param_4 != 0) {
    iVar3 = *param_1;
    uVar2 = *(uint *)(iVar3 + -0xc);
    for (; param_3 < uVar2; param_3 = param_3 + 1) {
      pvVar1 = memchr(param_2,(uint)*(byte *)(iVar3 + param_3),param_4);
      if (pvVar1 != (void *)0x0) {
        return param_3;
      }
    }
  }
  return 0xffffffff;
}

// ---- FUN_0001ec58  @ 0x1ec58
void FUN_0001ec58(undefined4 param_1,char *param_2,undefined4 param_3)

{
  size_t sVar1;
  
  sVar1 = strlen(param_2);
  FUN_0001ec14(param_1,param_2,param_3,sVar1);
  return;
}

// ---- FUN_0001eccc  @ 0x1eccc
uint FUN_0001eccc(int *param_1,char *param_2,uint param_3)

{
  void *pvVar1;
  size_t __n;
  int iVar2;
  uint uVar3;
  int iVar4;
  bool bVar5;
  
  __n = strlen(param_2);
  iVar4 = *param_1;
  iVar2 = *(int *)(iVar4 + -0xc);
  if (__n != 0 && iVar2 != 0) {
    uVar3 = iVar2 - 1;
    if (param_3 < uVar3) {
      uVar3 = param_3;
    }
    do {
      pvVar1 = memchr(param_2,(uint)*(byte *)(iVar4 + uVar3),__n);
      if (pvVar1 != (void *)0x0) {
        return uVar3;
      }
      bVar5 = uVar3 != 0;
      uVar3 = uVar3 - 1;
    } while (bVar5);
  }
  return 0xffffffff;
}

// ---- FUN_0001ed34  @ 0x1ed34
uint FUN_0001ed34(int *param_1,char *param_2,uint param_3)

{
  void *pvVar1;
  size_t __n;
  int iVar2;
  uint uVar3;
  
  __n = strlen(param_2);
  iVar2 = *param_1;
  uVar3 = *(uint *)(iVar2 + -0xc);
  while( true ) {
    if (uVar3 <= param_3) {
      return 0xffffffff;
    }
    pvVar1 = memchr(param_2,(uint)*(byte *)(iVar2 + param_3),__n);
    if (pvVar1 == (void *)0x0) break;
    param_3 = param_3 + 1;
  }
  return param_3;
}

// ---- FUN_0001ed8c  @ 0x1ed8c
uint FUN_0001ed8c(int *param_1,void *param_2,uint param_3,size_t param_4)

{
  void *pvVar1;
  int iVar2;
  uint uVar3;
  int iVar4;
  bool bVar5;
  
  iVar4 = *param_1;
  iVar2 = *(int *)(iVar4 + -0xc);
  if (iVar2 != 0) {
    uVar3 = iVar2 - 1;
    if (param_3 < uVar3) {
      uVar3 = param_3;
    }
    do {
      pvVar1 = memchr(param_2,(uint)*(byte *)(iVar4 + uVar3),param_4);
      if (pvVar1 == (void *)0x0) {
        return uVar3;
      }
      bVar5 = uVar3 != 0;
      uVar3 = uVar3 - 1;
    } while (bVar5);
  }
  return 0xffffffff;
}

// ---- FUN_0001edd8  @ 0x1edd8
void FUN_0001edd8(undefined4 param_1,char *param_2,undefined4 param_3)

{
  size_t sVar1;
  
  sVar1 = strlen(param_2);
  FUN_0001ed8c(param_1,param_2,param_3,sVar1);
  return;
}

// ---- FUN_0001efd0  @ 0x1efd0
void FUN_0001efd0(uint param_1,uint param_2)

{
  void *pvVar1;
  
  if (0x3ffffffc < param_1) {
                    /* WARNING: Subroutine does not return */
    FUN_0001e198("basic_string::_S_create");
  }
  if (param_2 < param_1) {
    if (param_1 < param_2 << 1) {
      param_1 = param_2 << 1;
    }
    if ((param_2 < param_1 && 0x1000 < param_1 + 0x1d) &&
       (param_1 = (param_1 + 0x1000) - (param_1 + 0x1d & 0xfff), 0x3ffffffb < param_1)) {
      param_1 = 0x3ffffffc;
    }
  }
  pvVar1 = operator_new(param_1 + 0xd);
  *(uint *)((int)pvVar1 + 4) = param_1;
  *(undefined4 *)((int)pvVar1 + 8) = 0;
  return;
}

// ---- FUN_0001f030  @ 0x1f030
size_t * FUN_0001f030(size_t param_1,int param_2)

{
  size_t *psVar1;
  size_t *__s;
  undefined1 uVar2;
  
  if (param_1 != 0) {
    psVar1 = (size_t *)FUN_0001efd0(param_1,0);
    __s = psVar1 + 3;
    if (param_1 == 1) {
      *(char *)(psVar1 + 3) = (char)param_2;
    }
    else {
      __s = memset(__s,param_2,param_1);
    }
    uVar2 = 100;
    if (psVar1 != (size_t *)&DAT_000d0664) {
      *psVar1 = param_1;
      uVar2 = 0;
      psVar1[2] = 0;
    }
    if (psVar1 != (size_t *)&DAT_000d0664) {
      *(undefined1 *)((int)__s + param_1) = uVar2;
    }
    return __s;
  }
  return (size_t *)&DAT_000d0670;
}

// ---- FUN_0001f0b0  @ 0x1f0b0
void FUN_0001f0b0(undefined *param_1)

{
  if (param_1 == &DAT_000d0664) {
    return;
  }
  FUN_0001a140();
  return;
}

// ---- FUN_0001f0c4  @ 0x1f0c4
int * FUN_0001f0c4(int *param_1)

{
  undefined1 auStack_c [4];
  
  if ((undefined *)(*param_1 + -0xc) != &DAT_000d0664) {
    FUN_0001a140((undefined *)(*param_1 + -0xc),auStack_c);
  }
  return param_1;
}

// ---- FUN_0001f0e8  @ 0x1f0e8
void FUN_0001f0e8(int *param_1,size_t param_2,int param_3,int param_4)

{
  int iVar1;
  undefined *__dest;
  uint uVar2;
  size_t __n;
  undefined1 auStack_2c [8];
  
  __dest = (undefined *)*param_1;
  uVar2 = (param_4 - param_3) + *(int *)(__dest + -0xc);
  __n = (*(int *)(__dest + -0xc) - param_2) - param_3;
  if ((*(uint *)(__dest + -8) < uVar2) || (0 < *(int *)(__dest + -4))) {
    iVar1 = FUN_0001efd0(uVar2,*(uint *)(__dest + -8),auStack_2c);
    __dest = (undefined *)(iVar1 + 0xc);
    if (param_2 != 0) {
      if (param_2 == 1) {
        *(undefined1 *)(iVar1 + 0xc) = *(undefined1 *)*param_1;
      }
      else {
        memcpy(__dest,(undefined1 *)*param_1,param_2);
      }
    }
    if (__n != 0) {
      if (__n == 1) {
        __dest[param_4 + param_2] = *(undefined1 *)(*param_1 + param_2 + param_3);
      }
      else {
        memcpy(__dest + param_4 + param_2,(void *)(*param_1 + param_2 + param_3),__n);
      }
    }
    if ((undefined *)(*param_1 + -0xc) != &DAT_000d0664) {
      FUN_0001a140((undefined *)(*param_1 + -0xc),auStack_2c);
    }
    *param_1 = (int)__dest;
  }
  else if (param_3 != param_4 && __n != 0) {
    if (__n == 1) {
      __dest[param_4 + param_2] = __dest[param_2 + param_3];
      __dest = (undefined *)*param_1;
    }
    else {
      memmove(__dest + param_4 + param_2,__dest + param_2 + param_3,__n);
      __dest = (undefined *)*param_1;
    }
  }
  if (__dest != &DAT_000d0670) {
    *(uint *)(__dest + -0xc) = uVar2;
    *(undefined4 *)(__dest + -4) = 0;
    __dest[uVar2] = 0;
  }
  return;
}

// ---- FUN_0001f1e0  @ 0x1f1e0
void FUN_0001f1e0(undefined4 *param_1)

{
  undefined *puVar1;
  
  puVar1 = (undefined *)*param_1;
  if (puVar1 != &DAT_000d0670) {
    if (0 < *(int *)(puVar1 + -4)) {
      FUN_0001f0e8(param_1,0,0,0);
      puVar1 = (undefined *)*param_1;
    }
    *(undefined4 *)(puVar1 + -4) = 0xffffffff;
  }
  return;
}

// ---- FUN_0001f224  @ 0x1f224
int FUN_0001f224(int *param_1)

{
  int iVar1;
  
  iVar1 = *param_1;
  if (-1 < *(int *)(iVar1 + -4)) {
    FUN_0001f1e0();
    iVar1 = *param_1;
  }
  return iVar1;
}

// ---- FUN_0001f23c  @ 0x1f23c
int * FUN_0001f23c(int *param_1,int *param_2)

{
  int iVar1;
  
  iVar1 = *param_2;
  if (-1 < *(int *)(iVar1 + -4)) {
    FUN_0001f1e0(param_2);
    iVar1 = *param_2;
  }
  *param_1 = iVar1;
  return param_1;
}

// ---- FUN_0001f25c  @ 0x1f25c
int FUN_0001f25c(int *param_1)

{
  int iVar1;
  
  iVar1 = *param_1;
  if (-1 < *(int *)(iVar1 + -4)) {
    FUN_0001f1e0();
    iVar1 = *param_1;
  }
  return *(int *)(iVar1 + -0xc) + iVar1;
}

// ---- FUN_0001f278  @ 0x1f278
int FUN_0001f278(int *param_1,int param_2)

{
  int iVar1;
  
  iVar1 = *param_1;
  if (-1 < *(int *)(iVar1 + -4)) {
    FUN_0001f1e0();
    iVar1 = *param_1;
  }
  return iVar1 + param_2;
}

// ---- FUN_0001f294  @ 0x1f294
int FUN_0001f294(int *param_1)

{
  int iVar1;
  
  iVar1 = *param_1;
  if (-1 < *(int *)(iVar1 + -4)) {
    FUN_0001f1e0();
    iVar1 = *param_1;
  }
  return iVar1;
}

// ---- FUN_0001f2ac  @ 0x1f2ac
int FUN_0001f2ac(int *param_1)

{
  int iVar1;
  int iVar2;
  
  iVar2 = *param_1;
  iVar1 = *(int *)(iVar2 + -0xc);
  if (-1 < *(int *)(iVar2 + -4)) {
    FUN_0001f1e0();
    iVar2 = *param_1;
  }
  return iVar2 + iVar1 + -1;
}

// ---- FUN_0001f330  @ 0x1f330
int * FUN_0001f330(int *param_1,uint param_2,uint param_3,undefined4 param_4)

{
  uint uVar1;
  
  if (param_2 <= *(uint *)(*param_1 + -0xc)) {
    uVar1 = *(uint *)(*param_1 + -0xc) - param_2;
    if (uVar1 < param_3) {
      param_3 = uVar1;
    }
    FUN_0001f0e8(param_1,param_2,param_3,0,param_4);
    return param_1;
  }
                    /* WARNING: Subroutine does not return */
  FUN_0001e1f4("basic_string::erase");
}

// ---- FUN_0001f3a4  @ 0x1f3a4
int * FUN_0001f3a4(int *param_1,int param_2,int param_3,uint param_4,byte param_5)

{
  if ((uint)((0x3ffffffc - *(int *)(*param_1 + -0xc)) + param_3) < param_4) {
                    /* WARNING: Subroutine does not return */
    FUN_0001e198("basic_string::_M_replace_aux");
  }
  FUN_0001f0e8();
  if (param_4 != 0) {
    if (param_4 == 1) {
      *(byte *)(*param_1 + param_2) = param_5;
    }
    else {
      memset((void *)(*param_1 + param_2),(uint)param_5,param_4);
    }
  }
  return param_1;
}

// ---- FUN_0001f3f8  @ 0x1f3f8
void FUN_0001f3f8(int *param_1,undefined4 param_2,undefined4 param_3)

{
  FUN_0001f3a4(param_1,0,*(undefined4 *)(*param_1 + -0xc),param_2,param_3);
  return;
}

// ---- FUN_0001f430  @ 0x1f430
void FUN_0001f430(int *param_1,uint param_2,undefined4 param_3,undefined4 param_4)

{
  if (param_2 <= *(uint *)(*param_1 + -0xc)) {
    FUN_0001f3a4(param_1,param_2,0,param_3,param_4);
    return;
  }
                    /* WARNING: Subroutine does not return */
  FUN_0001e1f4("basic_string::insert");
}

// ---- FUN_0001f458  @ 0x1f458
int FUN_0001f458(int *param_1,int param_2,undefined4 param_3)

{
  int iVar1;
  int iVar2;
  
  iVar2 = *param_1;
  FUN_0001f3a4(param_1,param_2 - iVar2,0,1,param_3);
  iVar1 = *param_1;
  *(undefined4 *)(iVar1 + -4) = 0xffffffff;
  return iVar1 + (param_2 - iVar2);
}

// ---- FUN_0001f480  @ 0x1f480
void FUN_0001f480(int *param_1,uint param_2,uint param_3)

{
  uint uVar1;
  
  if (param_2 <= *(uint *)(*param_1 + -0xc)) {
    uVar1 = *(uint *)(*param_1 + -0xc) - param_2;
    if (uVar1 < param_3) {
      param_3 = uVar1;
    }
    FUN_0001f3a4(param_1,param_2,param_3);
    return;
  }
                    /* WARNING: Subroutine does not return */
  FUN_0001e1f4("basic_string::replace");
}

// ---- FUN_0001f4dc  @ 0x1f4dc
int * FUN_0001f4dc(int *param_1,int param_2,undefined4 param_3,undefined1 *param_4,size_t param_5)

{
  FUN_0001f0e8();
  if (param_5 != 0) {
    if (param_5 == 1) {
      *(undefined1 *)(*param_1 + param_2) = *param_4;
      return param_1;
    }
    memcpy((void *)(*param_1 + param_2),param_4,param_5);
  }
  return param_1;
}

// ---- FUN_0001f50c  @ 0x1f50c
undefined4 * FUN_0001f50c(undefined4 *param_1,undefined *param_2,size_t param_3)

{
  undefined4 *puVar1;
  undefined1 uVar2;
  undefined *__dest;
  
  __dest = (undefined *)*param_1;
  if (0x3ffffffc < param_3) {
                    /* WARNING: Subroutine does not return */
    FUN_0001e198("basic_string::assign");
  }
  if (((param_2 < __dest) || (__dest + *(int *)(__dest + -0xc) < param_2)) ||
     (0 < *(int *)(__dest + -4))) {
    puVar1 = (undefined4 *)FUN_0001f4dc(param_1,0,*(int *)(__dest + -0xc),param_2,param_3);
    return puVar1;
  }
  if ((uint)((int)param_2 - (int)__dest) < param_3) {
    if (param_2 == __dest) goto LAB_0001f55c;
    if (param_3 != 1) {
      memmove(__dest,param_2,param_3);
      __dest = (undefined *)*param_1;
      goto LAB_0001f55c;
    }
  }
  else if (param_3 != 1) {
    memcpy(__dest,param_2,param_3);
    __dest = (undefined *)*param_1;
    goto LAB_0001f55c;
  }
  *__dest = *param_2;
  __dest = (undefined *)*param_1;
LAB_0001f55c:
  uVar2 = 100;
  if (__dest != &DAT_000d0670) {
    *(size_t *)(__dest + -0xc) = param_3;
    uVar2 = 0;
    *(undefined4 *)(__dest + -4) = 0;
  }
  if (__dest != &DAT_000d0670) {
    __dest[param_3] = uVar2;
  }
  return param_1;
}

// ---- FUN_0001f5a8  @ 0x1f5a8
undefined4 FUN_0001f5a8(undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
  FUN_0001f50c(param_1,param_2,param_3);
  return param_1;
}

// ---- FUN_0001f5c4  @ 0x1f5c4
void FUN_0001f5c4(undefined4 param_1,int *param_2,uint param_3,uint param_4)

{
  uint uVar1;
  
  uVar1 = *(uint *)(*param_2 + -0xc);
  if (param_3 <= uVar1) {
    uVar1 = uVar1 - param_3;
    if (param_4 <= uVar1) {
      uVar1 = param_4;
    }
    FUN_0001f50c(param_1,*param_2 + param_3,uVar1);
    return;
  }
                    /* WARNING: Subroutine does not return */
  FUN_0001e1f4("basic_string::assign");
}

// ---- FUN_0001f620  @ 0x1f620
void FUN_0001f620(undefined4 param_1,char *param_2,undefined4 param_3,undefined4 param_4)

{
  size_t sVar1;
  
  sVar1 = strlen(param_2);
  FUN_0001f50c(param_1,param_2,sVar1,param_4);
  return;
}

// ---- FUN_0001f63c  @ 0x1f63c
uint * FUN_0001f63c(uint *param_1,uint param_2,uint param_3,uint param_4)

{
  void *__src;
  uint uVar1;
  void *__dest;
  uint uVar2;
  int iVar3;
  size_t __n;
  
  uVar2 = *param_1;
  uVar1 = *(uint *)(uVar2 - 0xc);
  if (uVar1 < param_2) {
                    /* WARNING: Subroutine does not return */
    FUN_0001e1f4("basic_string::insert");
  }
  if (param_4 <= 0x3ffffffc - uVar1) {
    if (((param_3 < uVar2) || (uVar1 + uVar2 < param_3)) || (0 < *(int *)(uVar2 - 4))) {
      param_1 = (uint *)FUN_0001f4dc(param_1,param_2,0,param_3,param_4);
    }
    else {
      iVar3 = param_3 - uVar2;
      FUN_0001f0e8(param_1,param_2,0);
      uVar1 = *param_1;
      __src = (void *)(uVar1 + iVar3);
      __dest = (void *)(uVar1 + param_2);
      if ((void *)((int)__src + param_4) <= __dest) {
        if (param_4 == 1) {
          *(undefined1 *)(uVar1 + param_2) = *(undefined1 *)(uVar1 + iVar3);
          return param_1;
        }
        memcpy(__dest,__src,param_4);
        return param_1;
      }
      if (__src < __dest) {
        __n = (int)__dest - (int)__src;
        if (__n == 1) {
          *(undefined1 *)(uVar1 + param_2) = *(undefined1 *)(uVar1 + iVar3);
        }
        else {
          __dest = memcpy(__dest,__src,__n);
        }
        if (param_4 - __n == 1) {
          *(undefined1 *)((int)__dest + __n) = *(undefined1 *)((int)__dest + param_4);
        }
        else {
          memcpy((void *)((int)__dest + __n),(void *)((int)__dest + param_4),param_4 - __n);
        }
      }
      else if (param_4 == 1) {
        *(undefined1 *)(uVar1 + param_2) = *(undefined1 *)((int)__src + 1);
      }
      else {
        memcpy(__dest,(void *)((int)__src + param_4),param_4);
      }
    }
    return param_1;
  }
                    /* WARNING: Subroutine does not return */
  FUN_0001e198("basic_string::insert");
}

// ---- FUN_0001f754  @ 0x1f754
void FUN_0001f754(undefined4 param_1,undefined4 param_2,int *param_3,uint param_4,uint param_5)

{
  uint uVar1;
  
  uVar1 = *(uint *)(*param_3 + -0xc);
  if (param_4 <= uVar1) {
    uVar1 = uVar1 - param_4;
    if (param_5 <= uVar1) {
      uVar1 = param_5;
    }
    FUN_0001f63c(param_1,param_2,*param_3 + param_4,uVar1);
    return;
  }
                    /* WARNING: Subroutine does not return */
  FUN_0001e1f4("basic_string::insert");
}

// ---- FUN_0001f784  @ 0x1f784
void FUN_0001f784(undefined4 param_1,undefined4 param_2,char *param_3)

{
  size_t sVar1;
  
  sVar1 = strlen(param_3);
  FUN_0001f63c(param_1,param_2,param_3,sVar1);
  return;
}

// ---- FUN_0001f7b0  @ 0x1f7b0
void FUN_0001f7b0(int *param_1)

{
  uint uVar1;
  
  uVar1 = *(uint *)(*param_1 + -0xc) - 1;
  if (uVar1 <= *(uint *)(*param_1 + -0xc)) {
    FUN_0001f0e8(param_1,uVar1,1,0);
    return;
  }
                    /* WARNING: Subroutine does not return */
  FUN_0001e1f4("basic_string::erase");
}

// ---- FUN_0001f804  @ 0x1f804
void FUN_0001f804(size_t *param_1,undefined4 param_2,int param_3,undefined4 param_4)

{
  size_t *psVar1;
  size_t *__dest;
  size_t __n;
  size_t sVar2;
  undefined1 uVar3;
  
  psVar1 = (size_t *)FUN_0001efd0(*param_1 + param_3,param_1[1],param_2,param_2,param_4);
  __n = *param_1;
  __dest = psVar1 + 3;
  sVar2 = 0;
  if (__n != 0) {
    __dest = psVar1 + 3;
    if (__n == 1) {
      *(char *)(psVar1 + 3) = (char)param_1[3];
      sVar2 = *param_1;
    }
    else {
      __dest = memcpy(__dest,param_1 + 3,__n);
      sVar2 = *param_1;
    }
  }
  uVar3 = 100;
  if (psVar1 != (size_t *)&DAT_000d0664) {
    *psVar1 = sVar2;
    uVar3 = 0;
    psVar1[2] = 0;
  }
  if (psVar1 != (size_t *)&DAT_000d0664) {
    *(undefined1 *)((int)__dest + sVar2) = uVar3;
  }
  return;
}

// ---- FUN_0001f850  @ 0x1f850
void FUN_0001f850(int *param_1,uint param_2)

{
  uint uVar1;
  int iVar2;
  int iVar3;
  undefined1 auStack_14 [4];
  
  iVar3 = *param_1;
  if ((param_2 != *(uint *)(iVar3 + -8)) || (0 < *(int *)(iVar3 + -4))) {
    uVar1 = *(uint *)(iVar3 + -0xc);
    if (param_2 < uVar1) {
      iVar2 = 0;
    }
    else {
      iVar2 = param_2 - uVar1;
    }
    iVar3 = FUN_0001f804((uint *)(iVar3 + -0xc),auStack_14,iVar2);
    if ((undefined *)(*param_1 + -0xc) != &DAT_000d0664) {
      FUN_0001a140((undefined *)(*param_1 + -0xc),auStack_14);
    }
    *param_1 = iVar3;
  }
  return;
}

// ---- FUN_0001f8d0  @ 0x1f8d0
int * FUN_0001f8d0(int *param_1,undefined4 *param_2)

{
  undefined1 *__src;
  int iVar1;
  undefined *puVar2;
  size_t __n;
  int iVar3;
  uint uVar4;
  
  __src = (undefined1 *)*param_2;
  __n = *(size_t *)(__src + -0xc);
  if (__n != 0) {
    iVar1 = *param_1;
    iVar3 = *(int *)(iVar1 + -0xc);
    uVar4 = iVar3 + __n;
    if ((*(uint *)(iVar1 + -8) < uVar4) || (0 < *(int *)(iVar1 + -4))) {
      FUN_0001f850(param_1,uVar4);
      iVar1 = *param_1;
      __src = (undefined1 *)*param_2;
      iVar3 = *(int *)(iVar1 + -0xc);
    }
    if (__n == 1) {
      *(undefined1 *)(iVar1 + iVar3) = *__src;
    }
    else {
      memcpy((void *)(iVar1 + iVar3),__src,__n);
    }
    puVar2 = (undefined *)*param_1;
    if (puVar2 != &DAT_000d0670) {
      *(uint *)(puVar2 + -0xc) = uVar4;
      *(undefined4 *)(puVar2 + -4) = 0;
      puVar2[uVar4] = 0;
    }
  }
  return param_1;
}

// ---- FUN_0001faa0  @ 0x1faa0
undefined4 * FUN_0001faa0(undefined4 *param_1,char *param_2,undefined4 param_3,undefined4 param_4)

{
  size_t __n;
  char cVar1;
  char *pcVar2;
  char *pcVar3;
  undefined *puVar4;
  undefined4 unaff_r4;
  undefined4 unaff_r5;
  int iVar5;
  char *pcVar6;
  
  __n = strlen(param_2);
  if (__n != 0) {
    pcVar3 = (char *)*param_1;
    pcVar2 = *(char **)(pcVar3 + -0xc);
    if (0x3ffffffcU - (int)pcVar2 < __n) {
                    /* WARNING: Subroutine does not return */
      FUN_0001e198("basic_string::append");
    }
    pcVar6 = pcVar2 + __n;
    if ((*(char **)(pcVar3 + -8) < pcVar6) || (0 < *(int *)(pcVar3 + -4))) {
      if ((param_2 < pcVar3) || (pcVar2 = pcVar2 + (int)pcVar3, pcVar2 < param_2)) {
        FUN_0001f850(param_1,pcVar6,pcVar2,pcVar3,param_4,unaff_r4,unaff_r5);
        pcVar3 = (char *)*param_1;
        pcVar2 = *(char **)(pcVar3 + -0xc);
      }
      else {
        iVar5 = (int)param_2 - (int)pcVar3;
        FUN_0001f850(param_1,pcVar6,pcVar2,pcVar3,param_4,unaff_r4,unaff_r5);
        pcVar3 = (char *)*param_1;
        param_2 = pcVar3 + iVar5;
        pcVar2 = *(char **)(pcVar3 + -0xc);
      }
    }
    if (__n == 1) {
      pcVar3[(int)pcVar2] = *param_2;
    }
    else {
      memcpy(pcVar3 + (int)pcVar2,param_2,__n);
    }
    puVar4 = (undefined *)*param_1;
    cVar1 = 'd';
    if (puVar4 != &DAT_000d0670) {
      *(char **)(puVar4 + -0xc) = pcVar6;
      cVar1 = '\0';
      *(undefined4 *)(puVar4 + -4) = 0;
    }
    if (puVar4 != &DAT_000d0670) {
      pcVar6[(int)puVar4] = cVar1;
    }
  }
  return param_1;
}

// ---- FUN_0001fad0  @ 0x1fad0
undefined4 * FUN_0001fad0(undefined4 *param_1,char *param_2,undefined4 param_3,undefined4 param_4)

{
  size_t __n;
  char cVar1;
  char *pcVar2;
  char *pcVar3;
  undefined *puVar4;
  undefined4 unaff_r4;
  undefined4 unaff_r5;
  int iVar5;
  char *pcVar6;
  
  __n = strlen(param_2);
  if (__n != 0) {
    pcVar3 = (char *)*param_1;
    pcVar2 = *(char **)(pcVar3 + -0xc);
    if (0x3ffffffcU - (int)pcVar2 < __n) {
                    /* WARNING: Subroutine does not return */
      FUN_0001e198("basic_string::append");
    }
    pcVar6 = pcVar2 + __n;
    if ((*(char **)(pcVar3 + -8) < pcVar6) || (0 < *(int *)(pcVar3 + -4))) {
      if ((param_2 < pcVar3) || (pcVar2 = pcVar2 + (int)pcVar3, pcVar2 < param_2)) {
        FUN_0001f850(param_1,pcVar6,pcVar2,pcVar3,param_4,unaff_r4,unaff_r5);
        pcVar3 = (char *)*param_1;
        pcVar2 = *(char **)(pcVar3 + -0xc);
      }
      else {
        iVar5 = (int)param_2 - (int)pcVar3;
        FUN_0001f850(param_1,pcVar6,pcVar2,pcVar3,param_4,unaff_r4,unaff_r5);
        pcVar3 = (char *)*param_1;
        param_2 = pcVar3 + iVar5;
        pcVar2 = *(char **)(pcVar3 + -0xc);
      }
    }
    if (__n == 1) {
      pcVar3[(int)pcVar2] = *param_2;
    }
    else {
      memcpy(pcVar3 + (int)pcVar2,param_2,__n);
    }
    puVar4 = (undefined *)*param_1;
    cVar1 = 'd';
    if (puVar4 != &DAT_000d0670) {
      *(char **)(puVar4 + -0xc) = pcVar6;
      cVar1 = '\0';
      *(undefined4 *)(puVar4 + -4) = 0;
    }
    if (puVar4 != &DAT_000d0670) {
      pcVar6[(int)puVar4] = cVar1;
    }
  }
  return param_1;
}

// ---- FUN_0001faec  @ 0x1faec
int * FUN_0001faec(int *param_1,uint param_2,int param_3)

{
  undefined1 uVar1;
  int iVar2;
  undefined *puVar3;
  int iVar4;
  uint uVar5;
  
  if (param_2 != 0) {
    iVar2 = *param_1;
    iVar4 = *(int *)(iVar2 + -0xc);
    if (0x3ffffffcU - iVar4 < param_2) {
                    /* WARNING: Subroutine does not return */
      FUN_0001e198("basic_string::append");
    }
    uVar5 = param_2 + iVar4;
    if ((*(uint *)(iVar2 + -8) < uVar5) || (0 < *(int *)(iVar2 + -4))) {
      FUN_0001f850(param_1,uVar5);
      iVar2 = *param_1;
      iVar4 = *(int *)(iVar2 + -0xc);
    }
    if (param_2 == 1) {
      *(char *)(iVar2 + iVar4) = (char)param_3;
    }
    else {
      memset((void *)(iVar2 + iVar4),param_3,param_2);
    }
    puVar3 = (undefined *)*param_1;
    uVar1 = 100;
    if (puVar3 != &DAT_000d0670) {
      *(uint *)(puVar3 + -0xc) = uVar5;
      uVar1 = 0;
      *(undefined4 *)(puVar3 + -4) = 0;
    }
    if (puVar3 != &DAT_000d0670) {
      puVar3[uVar5] = uVar1;
    }
  }
  return param_1;
}

// ---- FUN_0001fbbc  @ 0x1fbbc
void FUN_0001fbbc(int *param_1,undefined1 param_2)

{
  int iVar1;
  int iVar2;
  undefined *puVar3;
  uint uVar4;
  
  iVar2 = *param_1;
  iVar1 = *(int *)(iVar2 + -0xc);
  uVar4 = iVar1 + 1;
  if ((*(uint *)(iVar2 + -8) < uVar4) || (0 < *(int *)(iVar2 + -4))) {
    FUN_0001f850(param_1,uVar4);
    iVar2 = *param_1;
    iVar1 = *(int *)(iVar2 + -0xc);
  }
  *(undefined1 *)(iVar2 + iVar1) = param_2;
  puVar3 = (undefined *)*param_1;
  if (puVar3 == &DAT_000d0670) {
    return;
  }
  *(uint *)(puVar3 + -0xc) = uVar4;
  *(undefined4 *)(puVar3 + -4) = 0;
  puVar3[uVar4] = 0;
  return;
}

// ---- FUN_0001fc98  @ 0x1fc98
int * FUN_0001fc98(int *param_1,int *param_2)

{
  bool bVar1;
  int *piVar2;
  int iVar3;
  undefined1 auStack_c [4];
  
  iVar3 = *param_2;
  if (*(int *)(iVar3 + -4) < 0) {
    iVar3 = FUN_0001f804((undefined *)(iVar3 + -0xc),auStack_c,0);
    *param_1 = iVar3;
    return param_1;
  }
  if ((undefined *)(iVar3 + -0xc) != &DAT_000d0664) {
    piVar2 = (int *)(iVar3 + -4);
    DataMemoryBarrier(0x1f);
    do {
      ExclusiveAccess(piVar2);
      bVar1 = (bool)hasExclusiveAccess(piVar2);
    } while (!bVar1);
    *piVar2 = *piVar2 + 1;
    DataMemoryBarrier(0x1f);
  }
  *param_1 = iVar3;
  return param_1;
}

// ---- FUN_0001ffe0  @ 0x1ffe0
size_t * FUN_0001ffe0(undefined1 *param_1,undefined1 *param_2)

{
  size_t *psVar1;
  size_t *__dest;
  undefined1 uVar2;
  size_t __n;
  
  if (param_1 == param_2) {
    return (size_t *)&DAT_000d0670;
  }
  if (param_1 == (undefined1 *)0x0) {
    if (param_2 != (undefined1 *)0x0) {
                    /* WARNING: Subroutine does not return */
      FUN_0001e084("basic_string::_S_construct null not valid");
    }
    psVar1 = (size_t *)FUN_0001efd0();
    __dest = psVar1 + 3;
    __n = 0;
  }
  else {
    __n = (int)param_2 - (int)param_1;
    psVar1 = (size_t *)FUN_0001efd0(__n,0);
    __dest = psVar1 + 3;
    if (__n == 1) {
      *(undefined1 *)(psVar1 + 3) = *param_1;
      goto LAB_00020004;
    }
  }
  __dest = memcpy(__dest,param_1,__n);
LAB_00020004:
  uVar2 = 100;
  if (psVar1 != (size_t *)&DAT_000d0664) {
    *psVar1 = __n;
    uVar2 = 0;
    psVar1[2] = 0;
  }
  if (psVar1 != (size_t *)&DAT_000d0664) {
    *(undefined1 *)((int)__dest + __n) = uVar2;
  }
  return __dest;
}
