// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 95 functions

// ---- FUN_00020054  @ 0x20054
undefined4 * FUN_00020054(undefined4 *param_1,int param_2,int param_3,undefined4 param_4)

{
  undefined4 uVar1;
  
  uVar1 = FUN_0001ffe0(param_2,param_2 + param_3,param_4,0);
  *param_1 = uVar1;
  return param_1;
}

// ---- FUN_0002006c  @ 0x2006c
uint * FUN_0002006c(uint *param_1,uint param_2,uint param_3,uint param_4,uint param_5)

{
  uint *puVar1;
  uint uVar2;
  uint uVar3;
  int iVar4;
  uint uVar5;
  undefined1 auStack_20 [4];
  int local_1c;
  
  uVar2 = *param_1;
  uVar3 = *(uint *)(uVar2 - 0xc);
  if (uVar3 < param_2) {
                    /* WARNING: Subroutine does not return */
    FUN_0001e1f4("basic_string::replace");
  }
  uVar5 = uVar3 - param_2;
  if (param_3 <= uVar3 - param_2) {
    uVar5 = param_3;
  }
  if ((0x3ffffffc - uVar3) + uVar5 < param_5) {
                    /* WARNING: Subroutine does not return */
    FUN_0001e198("basic_string::replace");
  }
  if (((param_4 < uVar2) || (uVar3 + uVar2 < param_4)) || (0 < *(int *)(uVar2 - 4))) {
    puVar1 = (uint *)FUN_0001f4dc(param_1,param_2,uVar5,param_4,param_5);
    return puVar1;
  }
  if (uVar2 + param_2 < param_4 + param_5) {
    if (param_4 < uVar5 + param_2 + uVar2) {
      FUN_00020054(&local_1c,param_4,param_5,auStack_20);
      puVar1 = (uint *)FUN_0001f4dc(param_1,param_2,uVar5,local_1c,param_5);
      if ((undefined *)(local_1c + -0xc) == &DAT_000d0664) {
        return puVar1;
      }
      FUN_0001a140((undefined *)(local_1c + -0xc),auStack_20);
      return puVar1;
    }
    iVar4 = ((param_4 - uVar2) + param_5) - uVar5;
  }
  else {
    iVar4 = param_4 - uVar2;
  }
  FUN_0001f0e8(param_1,param_2,uVar5,param_5);
  uVar2 = *param_1;
  if (param_5 != 1) {
    memcpy((void *)(uVar2 + param_2),(void *)(uVar2 + iVar4),param_5);
    return param_1;
  }
  *(undefined1 *)(uVar2 + param_2) = *(undefined1 *)(uVar2 + iVar4);
  return param_1;
}

// ---- FUN_00020194  @ 0x20194
void FUN_00020194(void)

{
  int *in_r3;
  uint in_stack_00000000;
  
  if (*(uint *)(*in_r3 + -0xc) < in_stack_00000000) {
                    /* WARNING: Subroutine does not return */
    FUN_0001e1f4("basic_string::replace");
  }
  FUN_0002006c();
  return;
}

// ---- FUN_000201c4  @ 0x201c4
void FUN_000201c4(undefined4 param_1,undefined4 param_2,undefined4 param_3,char *param_4)

{
  size_t sVar1;
  
  sVar1 = strlen(param_4);
  FUN_0002006c(param_1,param_2,param_3,param_4,sVar1);
  return;
}

// ---- FUN_00020214  @ 0x20214
void FUN_00020214(int *param_1,int param_2,int param_3,char *param_4)

{
  size_t sVar1;
  
  sVar1 = strlen(param_4);
  FUN_0002006c(param_1,param_2 - *param_1,param_3 - param_2,param_4,sVar1);
  return;
}

// ---- FUN_000202a4  @ 0x202a4
undefined4 * FUN_000202a4(undefined4 *param_1,char *param_2,undefined4 param_3)

{
  size_t sVar1;
  undefined4 uVar2;
  char *pcVar3;
  
  pcVar3 = (char *)0xffffffff;
  if (param_2 != (char *)0x0) {
    sVar1 = strlen(param_2);
    pcVar3 = param_2 + sVar1;
  }
  uVar2 = FUN_0001ffe0(param_2,pcVar3,param_3,0);
  *param_1 = uVar2;
  return param_1;
}

// ---- FUN_000202cc  @ 0x202cc
undefined4 * FUN_000202cc(undefined4 *param_1,int param_2,int param_3,undefined4 param_4)

{
  undefined4 uVar1;
  
  uVar1 = FUN_0001ffe0(param_2,param_3 + param_2,param_4,0);
  *param_1 = uVar1;
  return param_1;
}

// ---- FUN_000202f0  @ 0x202f0
undefined4 *
FUN_000202f0(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  
  uVar1 = FUN_0001ffe0(param_2,param_3,param_4,0);
  *param_1 = uVar1;
  return param_1;
}

// ---- FUN_0002043c  @ 0x2043c
void FUN_0002043c(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0002043c_1_0002e850;
  return;
}

// ---- FUN_0002044c  @ 0x2044c
undefined4 FUN_0002044c(void)

{
  return 0;
}

// ---- FUN_00020458  @ 0x20458
undefined4 * FUN_00020458(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0002043c_1_0002e850;
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_00020470  @ 0x20470
int FUN_00020470(int param_1,int param_2)

{
  uint uVar1;
  int iVar2;
  char *__s2;
  
  if (param_2 == param_1) {
    return 1;
  }
  if (**(char **)(param_1 + 4) != '*') {
    __s2 = *(char **)(param_2 + 4);
    if (*__s2 == '*') {
      __s2 = __s2 + 1;
    }
    uVar1 = strcmp(*(char **)(param_1 + 4),__s2);
    iVar2 = 1 - uVar1;
    if (1 < uVar1) {
      iVar2 = 0;
    }
    return iVar2;
  }
  return 0;
}

// ---- FUN_000204e0  @ 0x204e0
void FUN_000204e0(byte *param_1,uint *param_2)

{
  uint uVar1;
  uint uVar2;
  uint uVar3;
  uint uVar4;
  
  uVar4 = 0;
  uVar3 = 0;
  do {
    uVar2 = (uint)*param_1;
    uVar1 = uVar3 & 0xff;
    uVar3 = uVar3 + 7;
    uVar4 = uVar4 | (uVar2 & 0x7f) << uVar1;
    param_1 = param_1 + 1;
  } while ((int)(uVar2 << 0x18) < 0);
  if ((uVar3 < 0x20) && ((int)(uVar2 << 0x19) < 0)) {
    uVar4 = uVar4 | -1 << (uVar3 & 0xff);
  }
  *param_2 = uVar4;
  return;
}

// ---- FUN_00020510  @ 0x20510
ushort * FUN_00020510(uint param_1,ushort *param_2,ushort *param_3,int *param_4)

{
  uint uVar1;
  ushort uVar2;
  ushort *puVar3;
  ushort *puVar4;
  int *piVar5;
  uint uVar6;
  byte *local_1c;
  
  if (param_1 != 0x50) {
    switch(param_1 & 0xf) {
    case 0:
    case 3:
    case 0xb:
      puVar3 = param_3 + 2;
      local_1c = *(byte **)param_3;
      break;
    case 1:
      local_1c = (byte *)0x0;
      uVar6 = 0;
      puVar4 = param_3;
      do {
        puVar3 = (ushort *)((int)puVar4 + 1);
        uVar2 = *puVar4;
        uVar1 = uVar6 & 0xff;
        uVar6 = uVar6 + 7;
        local_1c = (byte *)((uint)local_1c | ((byte)uVar2 & 0x7f) << uVar1);
        puVar4 = puVar3;
      } while (((byte)uVar2 & 0x80) != 0);
      break;
    case 2:
      puVar3 = param_3 + 1;
      local_1c = (byte *)(uint)*param_3;
      break;
    case 4:
    case 0xc:
      puVar3 = param_3 + 4;
      local_1c = *(byte **)param_3;
      break;
    default:
                    /* WARNING: Subroutine does not return */
      abort();
    case 9:
      puVar3 = (ushort *)FUN_000204e0(param_3,&local_1c);
      break;
    case 10:
      puVar3 = param_3 + 1;
      local_1c = (byte *)(int)(short)*param_3;
    }
    if (local_1c != (byte *)0x0) {
      if ((param_1 & 0x70) != 0x10) {
        param_3 = param_2;
      }
      local_1c = local_1c + (int)param_3;
      if ((int)(param_1 << 0x18) < 0) {
        local_1c = *(byte **)local_1c;
      }
    }
    *param_4 = (int)local_1c;
    return puVar3;
  }
  piVar5 = (int *)((uint)((int)param_3 + 3) & 0xfffffffc);
  *param_4 = *piVar5;
  return (ushort *)(piVar5 + 1);
}

// ---- FUN_000205c0  @ 0x205c0
undefined4 FUN_000205c0(uint param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  
  if (param_1 == 0xff) {
    return 0;
  }
  param_1 = param_1 & 0x70;
  if (param_1 == 0x20) {
    uVar1 = _Unwind_GetTextRelBase(param_2,param_2,param_3,param_4);
    return uVar1;
  }
  if (param_1 < 0x21) {
    if (param_1 == 0) {
      return 0;
    }
    if (param_1 == 0x10) {
      return 0;
    }
  }
  else {
    if (param_1 == 0x40) {
      uVar1 = _Unwind_GetRegionStart(param_2,param_2,param_3,param_4);
      return uVar1;
    }
    if (param_1 == 0x50) {
      return 0;
    }
    if (param_1 == 0x30) {
      uVar1 = _Unwind_GetDataRelBase(param_2,param_2,param_3,param_4);
      return uVar1;
    }
  }
                    /* WARNING: Subroutine does not return */
  abort();
}

// ---- FUN_0002060c  @ 0x2060c
void FUN_0002060c(int param_1,char *param_2,undefined4 *param_3,undefined4 param_4)

{
  char cVar1;
  byte bVar2;
  uint uVar3;
  undefined4 uVar4;
  byte *pbVar5;
  byte *pbVar6;
  uint uVar7;
  uint uVar8;
  char *pcVar9;
  
  uVar4 = 0;
  if (param_1 != 0) {
    uVar4 = _Unwind_GetRegionStart();
  }
  *param_3 = uVar4;
  pcVar9 = param_2 + 1;
  cVar1 = *param_2;
  if (cVar1 == -1) {
    param_3[1] = uVar4;
  }
  else {
    uVar4 = FUN_000205c0(cVar1,param_1);
    pcVar9 = (char *)FUN_00020510(cVar1,uVar4,pcVar9,param_3 + 1,param_4);
  }
  cVar1 = *pcVar9;
  pbVar5 = (byte *)(pcVar9 + 1);
  *(char *)(param_3 + 5) = cVar1;
  if (cVar1 == -1) {
    param_3[3] = 0;
  }
  else {
    uVar7 = 0;
    uVar8 = 0;
    *(undefined1 *)(param_3 + 5) = 0x90;
    pbVar6 = pbVar5;
    do {
      pbVar5 = pbVar6 + 1;
      bVar2 = *pbVar6;
      uVar3 = uVar8 & 0xff;
      uVar8 = uVar8 + 7;
      uVar7 = uVar7 | (bVar2 & 0x7f) << uVar3;
      pbVar6 = pbVar5;
    } while ((int)((uint)bVar2 << 0x18) < 0);
    param_3[3] = pbVar5 + uVar7;
  }
  uVar8 = 0;
  uVar7 = 0;
  *(byte *)((int)param_3 + 0x15) = *pbVar5;
  pbVar5 = pbVar5 + 1;
  do {
    pbVar6 = pbVar5 + 1;
    bVar2 = *pbVar5;
    uVar3 = uVar7 & 0xff;
    uVar7 = uVar7 + 7;
    uVar8 = uVar8 | (bVar2 & 0x7f) << uVar3;
    pbVar5 = pbVar6;
  } while ((int)((uint)bVar2 << 0x18) < 0);
  param_3[4] = pbVar6 + uVar8;
  return;
}

// ---- FUN_00020c48  @ 0x20c48
bool FUN_00020c48(char *param_1)

{
  if ((((*param_1 == 'G') && (param_1[1] == 'N')) && (param_1[2] == 'U')) &&
     (((param_1[3] == 'C' && (param_1[4] == 'C')) && ((param_1[5] == '+' && (param_1[6] == '+'))))))
  {
    return (byte)param_1[7] < 2;
  }
  return false;
}

// ---- FUN_00020c84  @ 0x20c84
void FUN_00020c84(int param_1)

{
  int iVar1;
  
  if (param_1 != 0) {
    __cxa_begin_catch();
    iVar1 = FUN_00020c48(param_1);
    if (iVar1 != 0) {
                    /* WARNING: Subroutine does not return */
      __cxxabiv1::__terminate(*(_func_void **)(param_1 + -0x14));
    }
  }
                    /* WARNING: Subroutine does not return */
  std::terminate();
}

// ---- FUN_00020db0  @ 0x20db0
pthread_key_t * FUN_00020db0(pthread_key_t *param_1)

{
  if (param_1 != (pthread_key_t *)0x0) {
    if ((char)param_1[1] != '\0') {
      pthread_key_delete(*param_1);
    }
    *(undefined1 *)(param_1 + 1) = 0;
  }
  return param_1;
}

// ---- FUN_00020dcc  @ 0x20dcc
void FUN_00020dcc(int *param_1)

{
  int iVar1;
  int iVar2;
  
  if (param_1 != (int *)0x0) {
    iVar1 = *param_1;
    while (iVar1 != 0) {
      iVar2 = *(int *)(iVar1 + 0x10);
      _Unwind_DeleteException(iVar1 + 0x20);
      iVar1 = iVar2;
    }
    free(param_1);
    return;
  }
  return;
}

// ---- FUN_00021318  @ 0x21318
void FUN_00021318(void)

{
  undefined4 *puVar1;
  undefined4 in_r3;
  
  puVar1 = (undefined4 *)__cxa_allocate_exception(4);
  *puVar1 = &PTR_LAB_000212c0_1_0002e940;
                    /* WARNING: Subroutine does not return */
  __cxa_throw(puVar1,&PTR_PTR_0002e920,&LAB_000212c0_1,&PTR_LAB_000212c0_1_0002e940,in_r3);
}

// ---- FUN_00021340  @ 0x21340
void FUN_00021340(void)

{
  undefined4 *puVar1;
  undefined4 in_r3;
  
  puVar1 = (undefined4 *)__cxa_allocate_exception(4);
  *puVar1 = &PTR_LAB_000212a8_1_0002e958;
                    /* WARNING: Subroutine does not return */
  __cxa_throw(puVar1,&PTR_PTR_0002e92c,&LAB_000212a8_1,&PTR_LAB_000212a8_1_0002e958,in_r3);
}

// ---- FUN_00021828  @ 0x21828
void FUN_00021828(undefined4 param_1,undefined4 param_2)

{
  __cxa_atexit(param_2,param_1);
  return;
}

// ---- FUN_00021878  @ 0x21878
exception * FUN_00021878(exception *param_1)

{
  bool bVar1;
  undefined *puVar2;
  int *piVar3;
  int iVar4;
  
  puVar2 = (undefined *)(*(int *)(param_1 + 4) + -0xc);
  *(undefined ***)param_1 = &PTR_FUN_00021878_1_0002eaa0;
  if (puVar2 != &DAT_000d0664) {
    piVar3 = (int *)(*(int *)(param_1 + 4) + -4);
    DataMemoryBarrier(0x1f);
    do {
      ExclusiveAccess(piVar3);
      iVar4 = *piVar3;
      bVar1 = (bool)hasExclusiveAccess(piVar3);
    } while (!bVar1);
    *piVar3 = iVar4 + -1;
    DataMemoryBarrier(0x1f);
    if (iVar4 < 1) {
      operator_delete(puVar2);
    }
  }
  std::exception::~exception(param_1);
  return param_1;
}

// ---- FUN_000218d0  @ 0x218d0
void * FUN_000218d0(void *param_1)

{
  FUN_00021878();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_000218e4  @ 0x218e4
undefined4 * FUN_000218e4(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_000218e4_1_0002ea18;
  FUN_00021878();
  return param_1;
}

// ---- FUN_000219c4  @ 0x219c4
exception * FUN_000219c4(exception *param_1)

{
  bool bVar1;
  undefined *puVar2;
  int *piVar3;
  int iVar4;
  
  puVar2 = (undefined *)(*(int *)(param_1 + 4) + -0xc);
  *(undefined ***)param_1 = &PTR_FUN_000219c4_1_0002e9d0;
  if (puVar2 != &DAT_000d0664) {
    piVar3 = (int *)(*(int *)(param_1 + 4) + -4);
    DataMemoryBarrier(0x1f);
    do {
      ExclusiveAccess(piVar3);
      iVar4 = *piVar3;
      bVar1 = (bool)hasExclusiveAccess(piVar3);
    } while (!bVar1);
    *piVar3 = iVar4 + -1;
    DataMemoryBarrier(0x1f);
    if (iVar4 < 1) {
      operator_delete(puVar2);
    }
  }
  std::exception::~exception(param_1);
  return param_1;
}

// ---- FUN_00021a1c  @ 0x21a1c
void * FUN_00021a1c(void *param_1)

{
  FUN_000219c4();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_00021a30  @ 0x21a30
undefined4 * FUN_00021a30(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_00021a30_1_0002eae8;
  FUN_000219c4();
  return param_1;
}

// ---- FUN_00021ad8  @ 0x21ad8
undefined4 * FUN_00021ad8(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_00021878_1_0002eaa0;
  FUN_0001fc98(param_1 + 1);
  return param_1;
}

// ---- FUN_00021afc  @ 0x21afc
undefined4 * FUN_00021afc(undefined4 *param_1)

{
  FUN_00021ad8();
  *param_1 = &PTR_FUN_000218e4_1_0002ea18;
  return param_1;
}

// ---- FUN_00021b2c  @ 0x21b2c
undefined4 * FUN_00021b2c(undefined4 *param_1)

{
  FUN_00021ad8();
  *param_1 = &PTR_LAB_00021954_1_0002ead0;
  return param_1;
}

// ---- FUN_00021b44  @ 0x21b44
undefined4 * FUN_00021b44(undefined4 *param_1)

{
  FUN_00021ad8();
  *param_1 = &PTR_LAB_0002198c_1_0002eab8;
  return param_1;
}

// ---- FUN_00021b5c  @ 0x21b5c
undefined4 * FUN_00021b5c(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_000219c4_1_0002e9d0;
  FUN_0001fc98(param_1 + 1);
  return param_1;
}

// ---- FUN_00021b80  @ 0x21b80
undefined4 * FUN_00021b80(undefined4 *param_1)

{
  FUN_00021b5c();
  *param_1 = &PTR_FUN_00021a30_1_0002eae8;
  return param_1;
}

// ---- FUN_00021bcc  @ 0x21bcc
exception * FUN_00021bcc(exception *param_1)

{
  bool bVar1;
  undefined *puVar2;
  int *piVar3;
  int iVar4;
  
  puVar2 = (undefined *)(*(int *)(param_1 + 4) + -0xc);
  *(undefined ***)param_1 = &PTR_FUN_00021bcc_1_0002eb10;
  if (puVar2 != &DAT_000d0664) {
    piVar3 = (int *)(*(int *)(param_1 + 4) + -4);
    DataMemoryBarrier(0x1f);
    do {
      ExclusiveAccess(piVar3);
      iVar4 = *piVar3;
      bVar1 = (bool)hasExclusiveAccess(piVar3);
    } while (!bVar1);
    *piVar3 = iVar4 + -1;
    DataMemoryBarrier(0x1f);
    if (iVar4 < 1) {
      operator_delete(puVar2);
    }
  }
  std::exception::~exception(param_1);
  return param_1;
}

// ---- FUN_00021c24  @ 0x21c24
void * FUN_00021c24(void *param_1)

{
  FUN_00021bcc();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_00021c38  @ 0x21c38
undefined4 * FUN_00021c38(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_00021bcc_1_0002eb10;
  FUN_0001fc98(param_1 + 1);
  return param_1;
}

// ---- FUN_00021c74  @ 0x21c74
pthread_cond_t * FUN_00021c74(pthread_cond_t *param_1)

{
  pthread_cond_destroy(param_1);
  return param_1;
}

// ---- FUN_00021c80  @ 0x21c80
void FUN_00021c80(pthread_cond_t *param_1,undefined4 *param_2)

{
  int iVar1;
  pthread_cond_t *ppVar2;
  undefined4 *puVar3;
  
  iVar1 = pthread_cond_wait(param_1,(pthread_mutex_t *)*param_2);
  if (iVar1 == 0) {
    return;
  }
  ppVar2 = (pthread_cond_t *)FUN_0001e410();
  iVar1 = pthread_cond_signal(ppVar2);
  if (iVar1 == 0) {
                    /* WARNING: Could not recover jumptable at 0x00021c98. Too many branches */
                    /* WARNING: Treating indirect jump as call */
    (*(code *)0x21c91)();
    return;
  }
  ppVar2 = (pthread_cond_t *)FUN_0001e410();
  iVar1 = pthread_cond_broadcast(ppVar2);
  if (iVar1 == 0) {
                    /* WARNING: Could not recover jumptable at 0x00021ca8. Too many branches */
                    /* WARNING: Treating indirect jump as call */
    (*(code *)0x21c9f)();
    return;
  }
  puVar3 = (undefined4 *)FUN_0001e410();
  *puVar3 = 0;
  puVar3[1] = 0;
  return;
}

// ---- FUN_00021cb8  @ 0x21cb8
pthread_cond_t * FUN_00021cb8(pthread_cond_t *param_1)

{
  pthread_cond_destroy(param_1);
  return param_1;
}

// ---- FUN_00021cc4  @ 0x21cc4
undefined4 * FUN_00021cc4(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_00021cc4_1_0002eb40;
  FUN_000219c4();
  return param_1;
}

// ---- FUN_00021d90  @ 0x21d90
void FUN_00021d90(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_00021d90_1_0002eb80;
  return;
}

// ---- FUN_00021da8  @ 0x21da8
bool FUN_00021da8(int *param_1,undefined4 param_2,int *param_3)

{
  int local_18;
  int local_14;
  
  (**(code **)(*param_1 + 0x10))(&local_18,param_1,param_2);
  if (local_14 == param_3[1]) {
    return local_18 == *param_3;
  }
  return false;
}

// ---- FUN_00021e90  @ 0x21e90
undefined4 FUN_00021e90(undefined4 param_1,undefined4 param_2,int param_3)

{
  char *pcVar1;
  undefined1 auStack_c [4];
  
  pcVar1 = strerror(param_3);
  FUN_000202a4(param_1,pcVar1,auStack_c);
  return param_1;
}

// ---- FUN_00021eac  @ 0x21eac
undefined4 FUN_00021eac(undefined4 param_1,undefined4 param_2,int param_3)

{
  char *pcVar1;
  undefined1 auStack_c [4];
  
  pcVar1 = strerror(param_3);
  FUN_000202a4(param_1,pcVar1,auStack_c);
  return param_1;
}

// ---- FUN_00021ec8  @ 0x21ec8
void FUN_00021ec8(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_00021d90_1_0002eb80;
  return;
}

// ---- FUN_00021ee4  @ 0x21ee4
undefined4 * FUN_00021ee4(void)

{
  return &DAT_000d559c;
}

// ---- FUN_0002202c  @ 0x2202c
/* WARNING: Function: __gnu_thumb1_case_sqi replaced with injection: switchS8_r0 */
/* WARNING (jumptable): Removing unreachable block (ram,0x0002203a) */
/* WARNING: Removing unreachable block (ram,0x0002203a) */

undefined4 * FUN_0002202c(int param_1,undefined4 param_2,int param_3,int param_4)

{
  undefined4 *puVar1;
  int iVar2;
  
  switch(param_2) {
  case 1:
  case 2:
  case 3:
  case 4:
  case 0xb:
  case 0x21:
  case 0x2b:
  case 0x2d:
  case 0x35:
  case 0x36:
  case 0x37:
  case 0x38:
  case 0x39:
  case 0x3b:
  case 0x3c:
  case 0x3e:
  case 0x4a:
  case 0x4b:
    if (param_3 == 0) {
      return (undefined4 *)0x0;
    }
  case 0x2a:
  case 0x30:
    if (param_4 == 0) {
LAB_00022038:
      return (undefined4 *)0x0;
    }
    iVar2 = *(int *)(param_1 + 0x14);
    if (*(int *)(param_1 + 0x18) <= iVar2) {
      return (undefined4 *)0x0;
    }
    break;
  default:
    goto LAB_00022038;
  case 9:
  case 10:
  case 0xc:
  case 0xd:
  case 0xe:
  case 0xf:
  case 0x10:
  case 0x11:
  case 0x12:
  case 0x13:
  case 0x14:
  case 0x15:
  case 0x16:
  case 0x17:
  case 0x22:
  case 0x23:
  case 0x24:
  case 0x25:
  case 0x26:
  case 0x28:
  case 0x33:
  case 0x34:
  case 0x3a:
  case 0x3d:
  case 0x41:
  case 0x42:
  case 0x43:
  case 0x47:
  case 0x48:
  case 0x49:
    if (param_3 == 0) {
      return (undefined4 *)0x0;
    }
  case 0x19:
  case 0x1a:
  case 0x1b:
  case 0x1c:
  case 0x1d:
  case 0x1e:
  case 0x1f:
  case 0x20:
  case 0x29:
  case 0x2e:
  case 0x2f:
    iVar2 = *(int *)(param_1 + 0x14);
    if (*(int *)(param_1 + 0x18) <= iVar2) {
      return (undefined4 *)0x0;
    }
  }
  puVar1 = (undefined4 *)(*(int *)(param_1 + 0x10) + iVar2 * 0xc);
  *(int *)(param_1 + 0x14) = iVar2 + 1;
  if (puVar1 != (undefined4 *)0x0) {
    *puVar1 = param_2;
    puVar1[1] = param_3;
    puVar1[2] = param_4;
    return puVar1;
  }
  return (undefined4 *)0x0;
}

// ---- FUN_000220c8  @ 0x220c8
undefined4 * FUN_000220c8(int param_1,int param_2,int param_3)

{
  int iVar1;
  undefined4 *puVar2;
  
  iVar1 = *(int *)(param_1 + 0x14);
  if (iVar1 < *(int *)(param_1 + 0x18)) {
    puVar2 = (undefined4 *)(*(int *)(param_1 + 0x10) + iVar1 * 0xc);
    *(int *)(param_1 + 0x14) = iVar1 + 1;
    if (((puVar2 != (undefined4 *)0x0) && (param_2 != 0)) && (param_3 != 0)) {
      *puVar2 = 0;
      puVar2[1] = param_2;
      puVar2[2] = param_3;
      return puVar2;
    }
  }
  return (undefined4 *)0x0;
}

// ---- FUN_00022100  @ 0x22100
int * FUN_00022100(int param_1,int *param_2,int param_3)

{
  char cVar1;
  int iVar2;
  undefined4 uVar3;
  char *pcVar4;
  int *piVar5;
  
  pcVar4 = *(char **)(param_1 + 0xc);
  cVar1 = *pcVar4;
  piVar5 = param_2;
  do {
    if ((cVar1 == 'V') || (cVar1 == 'r')) {
      *(char **)(param_1 + 0xc) = pcVar4 + 1;
      if (cVar1 == 'r') {
        uVar3 = 0x19;
        if (param_3 != 0) {
          uVar3 = 0x1c;
        }
      }
      else {
        if (cVar1 != 'V') goto LAB_00022120;
        uVar3 = 0x1a;
        if (param_3 != 0) {
          uVar3 = 0x1d;
        }
      }
      *(int *)(param_1 + 0x30) = *(int *)(param_1 + 0x30) + 9;
      iVar2 = FUN_0002202c(param_1,uVar3,0,0);
      *piVar5 = iVar2;
    }
    else {
      if (cVar1 != 'K') {
        if (param_3 != 0) {
          return piVar5;
        }
        if (cVar1 != 'F') {
          return piVar5;
        }
        for (; piVar5 != param_2; param_2 = param_2 + 1) {
          param_2 = (int *)*param_2;
          iVar2 = *param_2;
          if (iVar2 == 0x1a) {
            *param_2 = 0x1d;
          }
          else if (iVar2 == 0x1b) {
            *param_2 = 0x1e;
          }
          else if (iVar2 == 0x19) {
            *param_2 = 0x1c;
          }
        }
        return piVar5;
      }
      *(char **)(param_1 + 0xc) = pcVar4 + 1;
LAB_00022120:
      uVar3 = 0x1b;
      if (param_3 != 0) {
        uVar3 = 0x1e;
      }
      *(int *)(param_1 + 0x30) = *(int *)(param_1 + 0x30) + 6;
      iVar2 = FUN_0002202c(param_1,uVar3,0,0);
      *piVar5 = iVar2;
    }
    if (iVar2 == 0) {
      return (int *)0x0;
    }
    pcVar4 = *(char **)(param_1 + 0xc);
    piVar5 = (int *)(iVar2 + 4);
    cVar1 = *pcVar4;
  } while( true );
}

// ---- FUN_000221d8  @ 0x221d8
undefined4 FUN_000221d8(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  char cVar1;
  undefined4 uVar2;
  
  cVar1 = **(char **)(param_1 + 0xc);
  if (cVar1 == 'O') {
    *(int *)(param_1 + 0x30) = *(int *)(param_1 + 0x30) + 3;
    uVar2 = 0x20;
  }
  else {
    if (cVar1 != 'R') {
      return param_2;
    }
    *(int *)(param_1 + 0x30) = *(int *)(param_1 + 0x30) + 2;
    uVar2 = 0x1f;
  }
  *(char **)(param_1 + 0xc) = *(char **)(param_1 + 0xc) + 1;
  uVar2 = FUN_0002202c(param_1,uVar2,param_2,0,param_4);
  return uVar2;
}

// ---- FUN_0002221c  @ 0x2221c
void FUN_0002221c(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  char *pcVar2;
  char *pcVar3;
  char cVar4;
  
  pcVar2 = *(char **)(param_1 + 0xc);
  cVar4 = *pcVar2;
  pcVar3 = pcVar2;
  if (cVar4 == '.') {
    if (((byte)(pcVar2[1] + 0x9fU) < 0x1a) || (pcVar2[1] == '_')) {
      pcVar3 = pcVar2 + 2;
      cVar4 = pcVar2[2];
      while (((byte)(cVar4 + 0x9fU) < 0x1a || (cVar4 == '_'))) {
        pcVar3 = pcVar3 + 1;
        cVar4 = *pcVar3;
      }
    }
    else {
      cVar4 = '.';
    }
  }
  while (cVar4 == '.') {
    while( true ) {
      if (9 < (byte)(pcVar3[1] - 0x30U)) goto LAB_00022262;
      cVar4 = pcVar3[2];
      pcVar3 = pcVar3 + 2;
      if (9 < (byte)(cVar4 - 0x30U)) break;
      do {
        pcVar3 = pcVar3 + 1;
      } while ((byte)(*pcVar3 - 0x30U) < 10);
      if (*pcVar3 != '.') goto LAB_00022262;
    }
  }
LAB_00022262:
  *(char **)(param_1 + 0xc) = pcVar3;
  uVar1 = FUN_000220c8(param_1,pcVar2,(int)pcVar3 - (int)pcVar2,pcVar3,param_4);
  FUN_0002202c(param_1,0x4b,param_2,uVar1);
  return;
}

// ---- FUN_000222c4  @ 0x222c4
undefined4 * FUN_000222c4(int param_1,int param_2)

{
  uint uVar1;
  undefined4 uVar2;
  int iVar3;
  undefined4 *puVar4;
  byte *pbVar5;
  uint uVar6;
  undefined4 *puVar7;
  char *pcVar8;
  uint uVar9;
  int iVar10;
  uint uVar11;
  int iVar12;
  int iVar13;
  
  pcVar8 = *(char **)(param_1 + 0xc);
  if (*pcVar8 != 'S') {
    return (undefined4 *)0x0;
  }
  *(char **)(param_1 + 0xc) = pcVar8 + 1;
  if (pcVar8[1] == '\0') {
    uVar9 = 0;
LAB_000222ea:
    uVar11 = *(uint *)(param_1 + 8) >> 3 & 1;
    if ((param_2 != 0) && (uVar11 != 1)) {
      uVar11 = (uint)((byte)(**(char **)(param_1 + 0xc) + 0xbdU) < 2);
    }
    pbVar5 = &DAT_0002df08;
    while (*pbVar5 != uVar9) {
      pbVar5 = pbVar5 + 0x1c;
      if (pbVar5 == &UNK_0002dfcc) {
        return (undefined4 *)0x0;
      }
    }
    iVar13 = *(int *)(pbVar5 + 0x14);
    if (iVar13 == 0) {
      iVar12 = *(int *)(param_1 + 0x18);
      iVar10 = *(int *)(param_1 + 0x14);
    }
    else {
      uVar2 = *(undefined4 *)(pbVar5 + 0x18);
      iVar10 = *(int *)(param_1 + 0x14);
      iVar12 = *(int *)(param_1 + 0x18);
      puVar7 = (undefined4 *)0x0;
      if (iVar10 < iVar12) {
        iVar3 = iVar10 * 0xc;
        iVar10 = iVar10 + 1;
        puVar4 = (undefined4 *)(*(int *)(param_1 + 0x10) + iVar3);
        *(int *)(param_1 + 0x14) = iVar10;
        if (puVar4 != (undefined4 *)0x0) {
          puVar4[1] = iVar13;
          *puVar4 = 0x18;
          puVar4[2] = uVar2;
          puVar7 = puVar4;
        }
      }
      *(undefined4 **)(param_1 + 0x2c) = puVar7;
    }
    if (uVar11 == 0) {
      uVar2 = *(undefined4 *)(pbVar5 + 4);
      iVar13 = *(int *)(pbVar5 + 8);
    }
    else {
      uVar2 = *(undefined4 *)(pbVar5 + 0xc);
      iVar13 = *(int *)(pbVar5 + 0x10);
    }
    *(int *)(param_1 + 0x30) = *(int *)(param_1 + 0x30) + iVar13;
    if (iVar12 <= iVar10) {
      return (undefined4 *)0x0;
    }
    puVar7 = (undefined4 *)(*(int *)(param_1 + 0x10) + iVar10 * 0xc);
    *(int *)(param_1 + 0x14) = iVar10 + 1;
    if (puVar7 != (undefined4 *)0x0) {
      *puVar7 = 0x18;
      puVar7[1] = uVar2;
      puVar7[2] = iVar13;
      return puVar7;
    }
    return (undefined4 *)0x0;
  }
  *(char **)(param_1 + 0xc) = pcVar8 + 2;
  uVar9 = (uint)(byte)pcVar8[1];
  uVar11 = uVar9 - 0x30;
  if (((uVar11 & 0xff) < 10) || (uVar9 == 0x5f)) {
    if (uVar9 == 0x5f) {
      uVar1 = 0;
      goto LAB_00022384;
    }
  }
  else if (0x19 < uVar9 - 0x41) goto LAB_000222ea;
  uVar6 = 0;
  do {
    if ((uVar11 & 0xff) < 10) {
      uVar1 = (uVar6 * 0x24 + uVar9) - 0x30;
    }
    else {
      if (0x19 < (uVar9 - 0x41 & 0xff)) {
        return (undefined4 *)0x0;
      }
      uVar1 = (uVar6 * 0x24 + uVar9) - 0x37;
    }
    if (uVar1 < uVar6) {
      return (undefined4 *)0x0;
    }
    pbVar5 = *(byte **)(param_1 + 0xc);
    if (*pbVar5 == 0) {
      uVar9 = 0;
    }
    else {
      *(byte **)(param_1 + 0xc) = pbVar5 + 1;
      uVar9 = (uint)*pbVar5;
      if (uVar9 == 0x5f) break;
    }
    uVar11 = uVar9 - 0x30;
    uVar6 = uVar1;
  } while( true );
  uVar1 = uVar1 + 1;
LAB_00022384:
  if (*(uint *)(param_1 + 0x20) <= uVar1) {
    return (undefined4 *)0x0;
  }
  *(int *)(param_1 + 0x28) = *(int *)(param_1 + 0x28) + 1;
  return *(undefined4 **)(uVar1 * 4 + *(int *)(param_1 + 0x1c));
}

// ---- FUN_00022490  @ 0x22490
int FUN_00022490(undefined4 *param_1)

{
  int iVar1;
  uint uVar2;
  byte *pbVar3;
  bool bVar4;
  
  pbVar3 = (byte *)*param_1;
  uVar2 = (uint)*pbVar3;
  bVar4 = uVar2 == 0x6e;
  if (bVar4) {
    *param_1 = pbVar3 + 1;
    uVar2 = (uint)pbVar3[1];
  }
  if ((uVar2 - 0x30 & 0xff) < 10) {
    pbVar3 = (byte *)*param_1;
    iVar1 = 0;
    do {
      pbVar3 = pbVar3 + 1;
      iVar1 = iVar1 * 10 + uVar2;
      *param_1 = pbVar3;
      uVar2 = (uint)*pbVar3;
      iVar1 = iVar1 + -0x30;
    } while ((uVar2 - 0x30 & 0xff) < 10);
  }
  else {
    iVar1 = 0;
  }
  if (bVar4) {
    iVar1 = -iVar1;
  }
  return iVar1;
}

// ---- FUN_000224e4  @ 0x224e4
undefined4 * FUN_000224e4(int param_1)

{
  undefined4 uVar1;
  int iVar2;
  undefined4 *puVar3;
  
  iVar2 = *(int *)(param_1 + 0x14);
  if (iVar2 < *(int *)(param_1 + 0x18)) {
    puVar3 = (undefined4 *)(*(int *)(param_1 + 0x10) + iVar2 * 0xc);
    *(int *)(param_1 + 0x14) = iVar2 + 1;
    if (puVar3 != (undefined4 *)0x0) {
      *puVar3 = 0x40;
      uVar1 = FUN_00022490(param_1 + 0xc);
      puVar3[1] = uVar1;
      return puVar3;
    }
  }
  return (undefined4 *)0x0;
}

// ---- FUN_00022514  @ 0x22514
int FUN_00022514(int param_1)

{
  int iVar1;
  char *pcVar2;
  
  pcVar2 = *(char **)(param_1 + 0xc);
  if (*pcVar2 == '_') {
    iVar1 = 0;
LAB_0002253c:
    *(char **)(param_1 + 0xc) = pcVar2 + 1;
  }
  else {
    if (*pcVar2 != 'n') {
      iVar1 = FUN_00022490(param_1 + 0xc);
      pcVar2 = *(char **)(param_1 + 0xc);
      iVar1 = iVar1 + 1;
      if (*pcVar2 == '_') goto LAB_0002253c;
    }
    iVar1 = -1;
  }
  return iVar1;
}

// ---- FUN_00022544  @ 0x22544
undefined4 * FUN_00022544(int param_1)

{
  int iVar1;
  int iVar2;
  undefined4 *puVar3;
  
  if (**(char **)(param_1 + 0xc) == 'T') {
    *(char **)(param_1 + 0xc) = *(char **)(param_1 + 0xc) + 1;
    iVar1 = FUN_00022514();
    if (-1 < iVar1) {
      iVar2 = *(int *)(param_1 + 0x14);
      *(int *)(param_1 + 0x28) = *(int *)(param_1 + 0x28) + 1;
      if (iVar2 < *(int *)(param_1 + 0x18)) {
        puVar3 = (undefined4 *)(*(int *)(param_1 + 0x10) + iVar2 * 0xc);
        *(int *)(param_1 + 0x14) = iVar2 + 1;
        if (puVar3 == (undefined4 *)0x0) {
          return (undefined4 *)0x0;
        }
        *puVar3 = 5;
        puVar3[1] = iVar1;
        return puVar3;
      }
    }
  }
  return (undefined4 *)0x0;
}

// ---- FUN_0002258c  @ 0x2258c
uint FUN_0002258c(int param_1)

{
  uint uVar1;
  
  uVar1 = 1;
  if (**(char **)(param_1 + 0xc) == '_') {
    *(char **)(param_1 + 0xc) = *(char **)(param_1 + 0xc) + 1;
    uVar1 = FUN_00022490(param_1 + 0xc);
    uVar1 = ~uVar1 >> 0x1f;
  }
  return uVar1;
}

// ---- FUN_000225ac  @ 0x225ac
undefined4 FUN_000225ac(int param_1)

{
  char cVar1;
  int iVar2;
  int iVar3;
  undefined4 uVar4;
  char *pcVar5;
  void *__s1;
  
  iVar2 = FUN_00022490(param_1 + 0xc);
  if (iVar2 < 1) {
    uVar4 = 0;
  }
  else {
    __s1 = *(void **)(param_1 + 0xc);
    if (*(int *)(param_1 + 4) - (int)__s1 < iVar2) {
      uVar4 = 0;
    }
    else {
      pcVar5 = (char *)((int)__s1 + iVar2);
      *(char **)(param_1 + 0xc) = pcVar5;
      if ((*(int *)(param_1 + 8) << 0x1d < 0) && (*pcVar5 == '$')) {
        *(char **)(param_1 + 0xc) = pcVar5 + 1;
      }
      if ((((iVar2 < 10) || (iVar3 = memcmp(__s1,"_GLOBAL_",8), iVar3 != 0)) ||
          ((cVar1 = *(char *)((int)__s1 + 8), cVar1 != '.' && ((cVar1 != '_' && (cVar1 != '$'))))))
         || (*(char *)((int)__s1 + 9) != 'N')) {
        uVar4 = FUN_000220c8(param_1,__s1,iVar2);
      }
      else {
        *(int *)(param_1 + 0x30) = (*(int *)(param_1 + 0x30) + 0x16) - iVar2;
        uVar4 = FUN_000220c8(param_1,"(anonymous namespace)",0x15);
      }
    }
    *(undefined4 *)(param_1 + 0x2c) = uVar4;
  }
  return uVar4;
}

// ---- FUN_00022638  @ 0x22638
undefined4 FUN_00022638(int param_1,uint param_2)

{
  byte *pbVar1;
  
  if (param_2 == 0) {
    pbVar1 = *(byte **)(param_1 + 0xc);
    if (*pbVar1 == 0) {
      return 0;
    }
    *(byte **)(param_1 + 0xc) = pbVar1 + 1;
    param_2 = (uint)*pbVar1;
  }
  if (param_2 == 0x68) {
    FUN_00022490(param_1 + 0xc);
LAB_00022680:
    if (**(char **)(param_1 + 0xc) == '_') {
      *(char **)(param_1 + 0xc) = *(char **)(param_1 + 0xc) + 1;
      return 1;
    }
    return 0;
  }
  if (param_2 == 0x76) {
    FUN_00022490(param_1 + 0xc);
    if (**(char **)(param_1 + 0xc) == '_') {
      *(char **)(param_1 + 0xc) = *(char **)(param_1 + 0xc) + 1;
      FUN_00022490(param_1 + 0xc);
      goto LAB_00022680;
    }
  }
  return 0;
}

// ---- FUN_00022694  @ 0x22694
int FUN_00022694(int param_1,int *param_2)

{
  int iVar1;
  int *piVar2;
  
  if (*(int *)(param_1 + 0x110) == 0) {
    *(undefined4 *)(param_1 + 0x118) = 1;
    iVar1 = 0;
  }
  else {
    iVar1 = *param_2;
    piVar2 = *(int **)(*(int *)(*(int *)(param_1 + 0x110) + 4) + 8);
    if ((piVar2 == (int *)0x0) || (*piVar2 != 0x2f)) {
LAB_000226c8:
      iVar1 = 0;
    }
    else {
      if (iVar1 < 1) {
        if (iVar1 != 0) {
          return 0;
        }
      }
      else {
        do {
          piVar2 = (int *)piVar2[2];
          iVar1 = iVar1 + -1;
          if ((piVar2 == (int *)0x0) || (*piVar2 != 0x2f)) goto LAB_000226c8;
        } while (iVar1 != 0);
      }
      iVar1 = piVar2[1];
    }
  }
  return iVar1;
}

// ---- FUN_000226e4  @ 0x226e4
/* WARNING: Function: __gnu_thumb1_case_sqi replaced with injection: switchS8_r0 */
/* WARNING (jumptable): Removing unreachable block (ram,0x00022708) */
/* WARNING: Removing unreachable block (ram,0x00022708) */

int * FUN_000226e4(undefined4 param_1,undefined4 *param_2)

{
  int *piVar1;
  
  while (param_2 != (undefined4 *)0x0) {
    switch(*param_2) {
    case 0:
    case 6:
    case 0x18:
    case 0x27:
    case 0x31:
    case 0x3f:
    case 0x44:
    case 0x46:
    case 0x49:
    case 0x4a:
      goto LAB_00022706;
    default:
      piVar1 = (int *)FUN_000226e4(param_1,param_2[1]);
      if (piVar1 != (int *)0x0) {
        return piVar1;
      }
    case 7:
    case 8:
    case 0x32:
      param_2 = (undefined4 *)param_2[2];
      break;
    case 5:
      piVar1 = (int *)FUN_00022694(param_1,param_2 + 1);
      if (piVar1 == (int *)0x0) {
        return (int *)0x0;
      }
      if (*piVar1 != 0x2f) {
        return (int *)0x0;
      }
      return piVar1;
    }
  }
LAB_00022706:
  return (int *)0x0;
}

// ---- FUN_0002276c  @ 0x2276c
void FUN_0002276c(void *param_1,size_t param_2,int *param_3)

{
  void *pvVar1;
  uint uVar2;
  size_t __size;
  
  __size = param_3[2];
  uVar2 = param_3[1] + 1 + param_2;
  if (__size < uVar2) {
    if (param_3[3] != 0) {
      return;
    }
    if ((__size != 0) || (__size = 2, 2 < uVar2)) {
      do {
        __size = __size * 2;
      } while (__size < uVar2);
    }
    pvVar1 = realloc((void *)*param_3,__size);
    if (pvVar1 == (void *)0x0) {
      free((void *)*param_3);
      *param_3 = 0;
      param_3[1] = 0;
      param_3[2] = 0;
      param_3[3] = 1;
      return;
    }
    *param_3 = (int)pvVar1;
    param_3[2] = __size;
  }
  if (param_3[3] == 0) {
    memcpy((void *)(*param_3 + param_3[1]),param_1,param_2);
    *(undefined1 *)(*param_3 + param_2 + param_3[1]) = 0;
    param_3[1] = param_3[1] + param_2;
  }
  return;
}

// ---- FUN_000227f0  @ 0x227f0
undefined4 FUN_000227f0(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  int *piVar2;
  undefined4 uVar3;
  char *pcVar4;
  char cVar5;
  int iVar6;
  char *pcVar7;
  
  pcVar7 = *(char **)(param_1 + 0xc);
  if (*pcVar7 != 'L') {
    return 0;
  }
  pcVar4 = pcVar7 + 1;
  *(char **)(param_1 + 0xc) = pcVar4;
  if (pcVar7[1] == 'Z') {
    cVar5 = 'Z';
  }
  else {
    if (pcVar7[1] != '_') {
      piVar2 = (int *)FUN_00022c7c(param_1);
      if (piVar2 == (int *)0x0) {
        return 0;
      }
      if ((*piVar2 == 0x27) && (*(int *)(piVar2[1] + 0x10) != 0)) {
        *(int *)(param_1 + 0x30) = *(int *)(param_1 + 0x30) - *(int *)(piVar2[1] + 4);
      }
      pcVar4 = *(char **)(param_1 + 0xc);
      uVar1 = 0x3b;
      cVar5 = *pcVar4;
      pcVar7 = pcVar4;
      if (cVar5 == 'n') {
        pcVar7 = pcVar4 + 1;
        *(char **)(param_1 + 0xc) = pcVar7;
        uVar1 = 0x3c;
        cVar5 = pcVar4[1];
      }
      pcVar4 = pcVar7;
      if (cVar5 == 'E') {
        iVar6 = 0;
      }
      else {
        do {
          if (cVar5 == '\0') {
            return 0;
          }
          pcVar4 = pcVar4 + 1;
          *(char **)(param_1 + 0xc) = pcVar4;
          cVar5 = *pcVar4;
        } while (cVar5 != 'E');
        iVar6 = (int)pcVar4 - (int)pcVar7;
      }
      uVar3 = FUN_000220c8(param_1,pcVar7,iVar6);
      uVar1 = FUN_0002202c(param_1,uVar1,piVar2,uVar3);
      pcVar4 = *(char **)(param_1 + 0xc);
      cVar5 = *pcVar4;
      goto LAB_0002281c;
    }
    pcVar4 = pcVar7 + 2;
    *(char **)(param_1 + 0xc) = pcVar4;
    cVar5 = pcVar7[2];
    uVar1 = 0;
    if (cVar5 != 'Z') goto LAB_0002281c;
  }
  *(char **)(param_1 + 0xc) = pcVar4 + 1;
  uVar1 = FUN_00023484(param_1,0,cVar5,pcVar7,param_4);
  pcVar4 = *(char **)(param_1 + 0xc);
  cVar5 = *pcVar4;
LAB_0002281c:
  if (cVar5 != 'E') {
    return 0;
  }
  *(char **)(param_1 + 0xc) = pcVar4 + 1;
  return uVar1;
}

// ---- FUN_000228b8  @ 0x228b8
/* WARNING: Function: __gnu_thumb1_case_sqi replaced with injection: switchS8_r0 */
/* WARNING (jumptable): Removing unreachable block (ram,0x0002290e) */
/* WARNING: Removing unreachable block (ram,0x0002290e) */

int FUN_000228b8(int param_1)

{
  char cVar1;
  int iVar2;
  char *pcVar3;
  char *pcVar4;
  int *piVar5;
  undefined4 uVar6;
  int local_14;
  
  pcVar3 = *(char **)(param_1 + 0xc);
  uVar6 = *(undefined4 *)(param_1 + 0x2c);
  if ((byte)(*pcVar3 + 0xb7U) < 2) {
    pcVar4 = pcVar3 + 1;
    *(char **)(param_1 + 0xc) = pcVar4;
    cVar1 = pcVar3[1];
    if (cVar1 == 'E') {
      *(char **)(param_1 + 0xc) = pcVar3 + 2;
      local_14 = FUN_0002202c(param_1,0x2f,0,0);
    }
    else {
      local_14 = 0;
      piVar5 = &local_14;
      do {
        switch(cVar1) {
        case 'I':
        case 'J':
          iVar2 = FUN_000228b8(param_1);
          break;
        default:
          iVar2 = FUN_00022c7c(param_1);
          break;
        case 'L':
          iVar2 = FUN_000227f0(param_1);
          break;
        case 'X':
          *(char **)(param_1 + 0xc) = pcVar4 + 1;
          iVar2 = FUN_00023cf8(param_1);
          if (**(char **)(param_1 + 0xc) != 'E') goto LAB_00022934;
          *(char **)(param_1 + 0xc) = *(char **)(param_1 + 0xc) + 1;
        }
        if (iVar2 == 0) goto LAB_00022934;
        iVar2 = FUN_0002202c(param_1,0x2f,iVar2,0);
        *piVar5 = iVar2;
        if (iVar2 == 0) goto LAB_00022934;
        pcVar4 = *(char **)(param_1 + 0xc);
        cVar1 = *pcVar4;
        piVar5 = (int *)(iVar2 + 8);
      } while (cVar1 != 'E');
      *(char **)(param_1 + 0xc) = pcVar4 + 1;
      *(undefined4 *)(param_1 + 0x2c) = uVar6;
    }
  }
  else {
LAB_00022934:
    local_14 = 0;
  }
  return local_14;
}

// ---- FUN_00022974  @ 0x22974
/* WARNING: Function: __gnu_thumb1_case_sqi replaced with injection: switchS8_r0 */
/* WARNING (jumptable): Removing unreachable block (ram,0x000229a8) */
/* WARNING: Removing unreachable block (ram,0x000229a8) */

int FUN_00022974(int param_1)

{
  int iVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  int iVar4;
  int *piVar5;
  undefined1 *puVar6;
  char *pcVar7;
  int iVar8;
  int iVar9;
  int *piVar10;
  char cVar11;
  int local_24 [2];
  
  puVar6 = *(undefined1 **)(param_1 + 0xc);
  switch(*puVar6) {
  case 0x4c:
  case 0x55:
    iVar1 = FUN_00023a80(param_1);
    return iVar1;
  default:
    iVar1 = FUN_00023a80(param_1);
    if (**(char **)(param_1 + 0xc) != 'I') {
      return iVar1;
    }
    if ((iVar1 != 0) && (iVar8 = *(int *)(param_1 + 0x20), iVar8 < *(int *)(param_1 + 0x24))) {
      *(int *)(iVar8 * 4 + *(int *)(param_1 + 0x1c)) = iVar1;
      *(int *)(param_1 + 0x20) = iVar8 + 1;
      uVar3 = FUN_000228b8(param_1);
      iVar1 = FUN_0002202c(param_1,4,iVar1,uVar3);
      return iVar1;
    }
    break;
  case 0x4e:
    *(undefined1 **)(param_1 + 0xc) = puVar6 + 1;
    piVar10 = (int *)FUN_00022100(param_1,local_24,1);
    if (piVar10 != (int *)0x0) {
      iVar8 = FUN_000221d8(param_1,0);
      pcVar7 = *(char **)(param_1 + 0xc);
      cVar11 = *pcVar7;
      iVar1 = 0;
joined_r0x00022a30:
      if (cVar11 != '\0') {
        if (cVar11 != 'D') goto LAB_00022a38;
        if ((pcVar7[1] & 0xdfU) != 0x54) goto LAB_00022b26;
        iVar4 = FUN_00022c7c(param_1);
joined_r0x00022b7a:
        if (iVar1 != 0) {
          uVar3 = 1;
          goto LAB_00022b34;
        }
        do {
          iVar1 = iVar4;
          if (cVar11 == 'S') {
LAB_00022b60:
            pcVar7 = *(char **)(param_1 + 0xc);
            cVar11 = *pcVar7;
            goto joined_r0x00022a30;
          }
          pcVar7 = *(char **)(param_1 + 0xc);
          if (*pcVar7 != 'E') {
            if ((iVar4 != 0) && (iVar9 = *(int *)(param_1 + 0x20), iVar9 < *(int *)(param_1 + 0x24))
               ) {
              *(int *)(iVar9 * 4 + *(int *)(param_1 + 0x1c)) = iVar4;
              *(int *)(param_1 + 0x20) = iVar9 + 1;
              goto LAB_00022b60;
            }
            break;
          }
          cVar11 = 'E';
LAB_00022a38:
          if ((((byte)(cVar11 - 0x30U) < 10) || ((byte)(cVar11 + 0x9fU) < 0x1a)) ||
             ((cVar11 == 'C' || ((cVar11 == 'U' || (cVar11 == 'L')))))) goto LAB_00022b26;
          if (cVar11 == 'S') {
            iVar4 = FUN_000222c4(param_1,1);
            goto joined_r0x00022b7a;
          }
          if (cVar11 != 'I') goto LAB_00022a6e;
          if (iVar1 == 0) break;
          iVar4 = FUN_000228b8(param_1);
          uVar3 = 4;
LAB_00022b34:
          iVar4 = FUN_0002202c(param_1,uVar3,iVar1,iVar4);
        } while( true );
      }
LAB_00022a8e:
      *piVar10 = 0;
      return 0;
    }
    break;
  case 0x53:
    if (puVar6[1] == 't') {
      *(undefined1 **)(param_1 + 0xc) = puVar6 + 2;
      uVar3 = FUN_000220c8(param_1,&DAT_0002c208,3);
      uVar2 = FUN_00023a80(param_1);
      iVar1 = FUN_0002202c(param_1,1,uVar3,uVar2);
      *(int *)(param_1 + 0x30) = *(int *)(param_1 + 0x30) + 3;
      if (**(char **)(param_1 + 0xc) != 'I') {
        return iVar1;
      }
      if (iVar1 == 0) {
        return 0;
      }
      iVar8 = *(int *)(param_1 + 0x20);
      if (*(int *)(param_1 + 0x24) <= iVar8) {
        return 0;
      }
      *(int *)(iVar8 * 4 + *(int *)(param_1 + 0x1c)) = iVar1;
      *(int *)(param_1 + 0x20) = iVar8 + 1;
    }
    else {
      iVar1 = FUN_000222c4(param_1,0);
      if (**(char **)(param_1 + 0xc) != 'I') {
        return iVar1;
      }
    }
    uVar3 = FUN_000228b8(param_1);
    iVar1 = FUN_0002202c(param_1,4,iVar1,uVar3);
    return iVar1;
  case 0x5a:
    *(undefined1 **)(param_1 + 0xc) = puVar6 + 1;
    uVar3 = FUN_00023484(param_1,0);
    pcVar7 = *(char **)(param_1 + 0xc);
    if (*pcVar7 == 'E') {
      *(char **)(param_1 + 0xc) = pcVar7 + 1;
      if (pcVar7[1] == 's') {
        *(char **)(param_1 + 0xc) = pcVar7 + 2;
        iVar1 = FUN_0002258c(param_1);
        if (iVar1 == 0) {
          return 0;
        }
        piVar10 = (int *)FUN_000220c8(param_1,"string literal",0xe);
      }
      else {
        if (pcVar7[1] == 'd') {
          *(char **)(param_1 + 0xc) = pcVar7 + 2;
          iVar1 = FUN_00022514(param_1);
          if (iVar1 < 0) {
            return 0;
          }
        }
        else {
          iVar1 = -1;
        }
        piVar5 = (int *)FUN_00022974(param_1);
        if ((((piVar5 != (int *)0x0) && (*piVar5 != 0x44)) && (*piVar5 != 0x46)) &&
           (iVar8 = FUN_0002258c(param_1), iVar8 == 0)) {
          return 0;
        }
        piVar10 = piVar5;
        if (iVar1 != -1) {
          iVar8 = *(int *)(param_1 + 0x14);
          piVar10 = (int *)0x0;
          if (iVar8 < *(int *)(param_1 + 0x18)) {
            piVar10 = (int *)(*(int *)(param_1 + 0x10) + iVar8 * 0xc);
            *(int *)(param_1 + 0x14) = iVar8 + 1;
            if (piVar10 != (int *)0x0) {
              *piVar10 = 0x45;
              piVar10[2] = iVar1;
              piVar10[1] = (int)piVar5;
            }
          }
        }
      }
      iVar1 = FUN_0002202c(param_1,2,uVar3,piVar10);
      return iVar1;
    }
  }
  return 0;
LAB_00022b26:
  iVar4 = FUN_00023a80(param_1);
  goto joined_r0x00022b7a;
LAB_00022a6e:
  if (cVar11 == 'T') {
    iVar4 = FUN_00022544(param_1);
    goto joined_r0x00022b7a;
  }
  if (cVar11 == 'E') {
    *piVar10 = iVar1;
    if (iVar1 == 0) {
      return 0;
    }
    if (iVar8 != 0) {
      *(int *)(iVar8 + 4) = local_24[0];
      local_24[0] = iVar8;
    }
    if (**(char **)(param_1 + 0xc) != 'E') {
      return 0;
    }
    *(char **)(param_1 + 0xc) = *(char **)(param_1 + 0xc) + 1;
    return local_24[0];
  }
  if ((cVar11 != 'M') || (iVar1 == 0)) goto LAB_00022a8e;
  *(char **)(param_1 + 0xc) = pcVar7 + 1;
  cVar11 = pcVar7[1];
  pcVar7 = pcVar7 + 1;
  goto joined_r0x00022a30;
}

// ---- FUN_00022c7c  @ 0x22c7c
/* WARNING: Function: __gnu_thumb1_case_shi replaced with injection: switch16_shi_r0 */
/* WARNING (jumptable): Removing unreachable block (ram,0x00022ca2) */
/* WARNING (jumptable): Removing unreachable block (ram,0x00022e8e) */
/* WARNING: Removing unreachable block (ram,0x00022ca2) */
/* WARNING: Removing unreachable block (ram,0x00022e8e) */

int * FUN_00022c7c(int param_1)

{
  byte bVar1;
  int *piVar2;
  int *piVar3;
  undefined4 uVar4;
  int **ppiVar5;
  byte *pbVar6;
  ushort uVar7;
  byte *pbVar8;
  byte *pbVar9;
  uint uVar10;
  int iVar11;
  char *pcVar12;
  undefined *puVar13;
  bool bVar14;
  int *local_1c [2];
  
  pbVar8 = *(byte **)(param_1 + 0xc);
  uVar10 = (uint)*pbVar8;
  if (((uVar10 == 0x72) || (uVar10 == 0x56)) || (uVar10 == 0x4b)) {
    piVar2 = (int *)FUN_00022100(param_1,local_1c,0);
    if (piVar2 == (int *)0x0) {
      return (int *)0x0;
    }
    piVar3 = (int *)FUN_00022c7c(param_1);
    *piVar2 = (int)piVar3;
    if (piVar3 == (int *)0x0) {
      return (int *)0x0;
    }
    if (*piVar3 - 0x1fU < 2) {
      iVar11 = piVar3[1];
      piVar3[1] = (int)local_1c[0];
      local_1c[0] = (int *)*piVar2;
      *piVar2 = iVar11;
    }
    if (local_1c[0] == (int *)0x0) {
      return (int *)0x0;
    }
    iVar11 = *(int *)(param_1 + 0x20);
    if (*(int *)(param_1 + 0x24) <= iVar11) {
      return (int *)0x0;
    }
    *(int **)(iVar11 * 4 + *(int *)(param_1 + 0x1c)) = local_1c[0];
    *(int *)(param_1 + 0x20) = iVar11 + 1;
    return local_1c[0];
  }
  switch(uVar10) {
  case 0x30:
  case 0x31:
  case 0x32:
  case 0x33:
  case 0x34:
  case 0x35:
  case 0x36:
  case 0x37:
  case 0x38:
  case 0x39:
  case 0x4e:
  case 0x5a:
    local_1c[0] = (int *)FUN_00022974(param_1);
    break;
  default:
    goto switchD_00022ca2_caseD_3a;
  case 0x41:
    pbVar6 = pbVar8 + 1;
    *(byte **)(param_1 + 0xc) = pbVar6;
    if (pbVar8[1] == 0x5f) {
      iVar11 = 0;
    }
    else {
      pbVar9 = pbVar6;
      if ((byte)(pbVar8[1] - 0x30) < 10) {
        do {
          pbVar9 = pbVar9 + 1;
          *(byte **)(param_1 + 0xc) = pbVar9;
        } while ((byte)(*pbVar9 - 0x30) < 10);
        iVar11 = FUN_000220c8(param_1,pbVar6,(int)pbVar9 - (int)pbVar6);
      }
      else {
        iVar11 = FUN_00023cf8(param_1);
      }
      if ((iVar11 == 0) || (pbVar6 = *(byte **)(param_1 + 0xc), *pbVar6 != 0x5f)) goto LAB_00022e0a;
    }
    *(byte **)(param_1 + 0xc) = pbVar6 + 1;
    uVar4 = FUN_00022c7c(param_1);
    local_1c[0] = (int *)FUN_0002202c(param_1,0x2a,iVar11,uVar4);
    break;
  case 0x43:
    *(byte **)(param_1 + 0xc) = pbVar8 + 1;
    uVar4 = FUN_00022c7c(param_1);
    local_1c[0] = (int *)FUN_0002202c(param_1,0x25,uVar4,0);
    break;
  case 0x44:
    *(byte **)(param_1 + 0xc) = pbVar8 + 1;
    if (pbVar8[1] == 0) {
      return (int *)0x0;
    }
    *(byte **)(param_1 + 0xc) = pbVar8 + 2;
    switch(pbVar8[1]) {
    case 0x46:
      iVar11 = *(int *)(param_1 + 0x14);
      local_1c[0] = (int *)0x0;
      if (iVar11 < *(int *)(param_1 + 0x18)) {
        local_1c[0] = (int *)(*(int *)(param_1 + 0x10) + iVar11 * 0xc);
        *(int *)(param_1 + 0x14) = iVar11 + 1;
      }
      *local_1c[0] = 0x2c;
      bVar14 = (byte)(pbVar8[2] - 0x30) < 10;
      *(ushort *)(local_1c[0] + 2) = (ushort)bVar14;
      if (bVar14) {
        FUN_00022490(param_1 + 0xc);
      }
      piVar2 = local_1c[0];
      iVar11 = FUN_00022c7c(param_1);
      piVar2[1] = iVar11;
      if (local_1c[0][1] == 0) {
        return (int *)0x0;
      }
      FUN_00022490(param_1 + 0xc);
      pcVar12 = *(char **)(param_1 + 0xc);
      uVar7 = 0;
      if (*pcVar12 != '\0') {
        *(char **)(param_1 + 0xc) = pcVar12 + 1;
        uVar7 = (ushort)(*pcVar12 == 's');
      }
      *(ushort *)((int)local_1c[0] + 10) = uVar7;
      return local_1c[0];
    default:
      goto switchD_00022ca2_caseD_3a;
    case 0x54:
    case 0x74:
      uVar4 = FUN_00023cf8(param_1);
      local_1c[0] = (int *)FUN_0002202c(param_1,0x41,uVar4,0);
      if (local_1c[0] == (int *)0x0) {
        return (int *)0x0;
      }
      pcVar12 = *(char **)(param_1 + 0xc);
      if (*pcVar12 == '\0') {
        return (int *)0x0;
      }
      *(char **)(param_1 + 0xc) = pcVar12 + 1;
      if (*pcVar12 != 'E') {
        return (int *)0x0;
      }
      goto LAB_00022da6;
    case 0x61:
      piVar2 = (int *)FUN_000220c8(param_1,&DAT_0002c20c,4);
      return piVar2;
    case 100:
      iVar11 = *(int *)(param_1 + 0x14);
      if (iVar11 < *(int *)(param_1 + 0x18)) {
        piVar2 = (int *)(*(int *)(param_1 + 0x10) + iVar11 * 0xc);
        *(int *)(param_1 + 0x14) = iVar11 + 1;
        if (piVar2 != (int *)0x0) {
          *piVar2 = 0x27;
          puVar13 = &DAT_0002e1e8;
          piVar2[1] = (int)&DAT_0002e1e8;
          goto LAB_00023152;
        }
LAB_0002338a:
        puVar13 = (undefined *)piVar2[1];
        goto LAB_00023152;
      }
      goto LAB_00023358;
    case 0x65:
      iVar11 = *(int *)(param_1 + 0x14);
      if (iVar11 < *(int *)(param_1 + 0x18)) {
        piVar2 = (int *)(*(int *)(param_1 + 0x10) + iVar11 * 0xc);
        *(int *)(param_1 + 0x14) = iVar11 + 1;
        if (piVar2 != (int *)0x0) {
          *piVar2 = 0x27;
          puVar13 = &DAT_0002e1fc;
          piVar2[1] = (int)&DAT_0002e1fc;
          goto LAB_000230a6;
        }
LAB_00023382:
        puVar13 = (undefined *)piVar2[1];
        goto LAB_000230a6;
      }
      break;
    case 0x66:
      iVar11 = *(int *)(param_1 + 0x14);
      if (iVar11 < *(int *)(param_1 + 0x18)) {
        piVar2 = (int *)(*(int *)(param_1 + 0x10) + iVar11 * 0xc);
        *(int *)(param_1 + 0x14) = iVar11 + 1;
        if (piVar2 != (int *)0x0) {
          *piVar2 = 0x27;
          puVar13 = &DAT_0002e1d4;
          piVar2[1] = (int)&DAT_0002e1d4;
          goto LAB_000230de;
        }
LAB_0002338e:
        puVar13 = (undefined *)piVar2[1];
        goto LAB_000230de;
      }
      goto LAB_00023360;
    case 0x68:
      iVar11 = *(int *)(param_1 + 0x14);
      if (iVar11 < *(int *)(param_1 + 0x18)) {
        piVar2 = (int *)(*(int *)(param_1 + 0x10) + iVar11 * 0xc);
        *(int *)(param_1 + 0x14) = iVar11 + 1;
        if (piVar2 != (int *)0x0) {
          *piVar2 = 0x27;
          puVar13 = &DAT_0002e210;
          piVar2[1] = (int)&DAT_0002e210;
          goto LAB_000230de;
        }
        goto LAB_0002338e;
      }
LAB_00023360:
      piVar2 = (int *)0x0;
      puVar13 = puRam00000004;
LAB_000230de:
      *(int *)(param_1 + 0x30) = *(int *)(param_1 + 0x30) + *(int *)(puVar13 + 4);
      return piVar2;
    case 0x69:
      iVar11 = *(int *)(param_1 + 0x14);
      if (iVar11 < *(int *)(param_1 + 0x18)) {
        piVar2 = (int *)(*(int *)(param_1 + 0x10) + iVar11 * 0xc);
        *(int *)(param_1 + 0x14) = iVar11 + 1;
        if (piVar2 != (int *)0x0) {
          *piVar2 = 0x27;
          puVar13 = &DAT_0002e238;
          piVar2[1] = (int)&DAT_0002e238;
          goto LAB_000230a6;
        }
        goto LAB_00023382;
      }
      break;
    case 0x6e:
      iVar11 = *(int *)(param_1 + 0x14);
      if (iVar11 < *(int *)(param_1 + 0x18)) {
        piVar2 = (int *)(*(int *)(param_1 + 0x10) + iVar11 * 0xc);
        *(int *)(param_1 + 0x14) = iVar11 + 1;
        if (piVar2 != (int *)0x0) {
          *piVar2 = 0x27;
          piVar2[1] = (int)&DAT_0002e24c;
          puVar13 = &DAT_0002e24c;
          goto LAB_000230a6;
        }
        goto LAB_00023382;
      }
      break;
    case 0x70:
      uVar4 = FUN_00022c7c(param_1);
      local_1c[0] = (int *)FUN_0002202c(param_1,0x49,uVar4,0);
      goto LAB_00022da0;
    case 0x73:
      iVar11 = *(int *)(param_1 + 0x14);
      if (iVar11 < *(int *)(param_1 + 0x18)) {
        piVar2 = (int *)(*(int *)(param_1 + 0x10) + iVar11 * 0xc);
        *(int *)(param_1 + 0x14) = iVar11 + 1;
        if (piVar2 != (int *)0x0) {
          *piVar2 = 0x27;
          puVar13 = &DAT_0002e224;
          piVar2[1] = (int)&DAT_0002e224;
          goto LAB_00023152;
        }
        goto LAB_0002338a;
      }
LAB_00023358:
      piVar2 = (int *)0x0;
      puVar13 = puRam00000004;
LAB_00023152:
      *(int *)(param_1 + 0x30) = *(int *)(param_1 + 0x30) + *(int *)(puVar13 + 4);
      return piVar2;
    case 0x76:
      if (pbVar8[2] == 0x5f) {
        *(byte **)(param_1 + 0xc) = pbVar8 + 3;
        iVar11 = FUN_00023cf8(param_1);
      }
      else {
        iVar11 = FUN_000224e4(param_1);
      }
      if ((iVar11 == 0) || (**(char **)(param_1 + 0xc) != '_')) goto LAB_00022e0a;
      *(char **)(param_1 + 0xc) = *(char **)(param_1 + 0xc) + 1;
      uVar4 = FUN_00022c7c(param_1);
      local_1c[0] = (int *)FUN_0002202c(param_1,0x2d,iVar11,uVar4);
      goto LAB_00022da0;
    }
    piVar2 = (int *)0x0;
    puVar13 = puRam00000004;
LAB_000230a6:
    *(int *)(param_1 + 0x30) = *(int *)(param_1 + 0x30) + *(int *)(puVar13 + 4);
    return piVar2;
  case 0x46:
    *(byte **)(param_1 + 0xc) = pbVar8 + 1;
    if (pbVar8[1] == 0x59) {
      *(byte **)(param_1 + 0xc) = pbVar8 + 2;
    }
    uVar4 = FUN_00023448(param_1,1);
    local_1c[0] = (int *)FUN_000221d8(param_1,uVar4);
    if (**(char **)(param_1 + 0xc) != 'E') goto LAB_00022e0a;
    *(char **)(param_1 + 0xc) = *(char **)(param_1 + 0xc) + 1;
    break;
  case 0x47:
    *(byte **)(param_1 + 0xc) = pbVar8 + 1;
    uVar4 = FUN_00022c7c(param_1);
    local_1c[0] = (int *)FUN_0002202c(param_1,0x26,uVar4,0);
    break;
  case 0x4d:
    *(byte **)(param_1 + 0xc) = pbVar8 + 1;
    uVar4 = FUN_00022c7c(param_1);
    ppiVar5 = (int **)FUN_00022100(param_1,local_1c,1);
    if (ppiVar5 != (int **)0x0) {
      piVar2 = (int *)FUN_00022c7c(param_1);
      *ppiVar5 = piVar2;
      if (piVar2 != (int *)0x0) {
        if (ppiVar5 != local_1c) {
          iVar11 = *piVar2;
          if (iVar11 - 0x1fU < 2) {
            piVar3 = (int *)piVar2[1];
            piVar2[1] = (int)local_1c[0];
            local_1c[0] = *ppiVar5;
            iVar11 = *piVar3;
            *ppiVar5 = piVar3;
          }
          if (iVar11 != 0x29) {
            if ((local_1c[0] == (int *)0x0) ||
               (iVar11 = *(int *)(param_1 + 0x20), *(int *)(param_1 + 0x24) <= iVar11))
            goto LAB_00022e0a;
            *(int **)(iVar11 * 4 + *(int *)(param_1 + 0x1c)) = local_1c[0];
            *(int *)(param_1 + 0x20) = iVar11 + 1;
          }
        }
        local_1c[0] = (int *)FUN_0002202c(param_1,0x2b,uVar4,local_1c[0]);
        break;
      }
    }
LAB_00022e0a:
    local_1c[0] = (int *)0x0;
    break;
  case 0x4f:
    *(byte **)(param_1 + 0xc) = pbVar8 + 1;
    uVar4 = FUN_00022c7c(param_1);
    local_1c[0] = (int *)FUN_0002202c(param_1,0x24,uVar4,0);
    break;
  case 0x50:
    *(byte **)(param_1 + 0xc) = pbVar8 + 1;
    uVar4 = FUN_00022c7c(param_1);
    local_1c[0] = (int *)FUN_0002202c(param_1,0x22,uVar4,0);
    break;
  case 0x52:
    *(byte **)(param_1 + 0xc) = pbVar8 + 1;
    uVar4 = FUN_00022c7c(param_1);
    local_1c[0] = (int *)FUN_0002202c(param_1,0x23,uVar4,0);
    break;
  case 0x53:
    bVar1 = pbVar8[1];
    if (((9 < (byte)(bVar1 - 0x30)) && (bVar1 != 0x5f)) && (0x19 < (byte)(bVar1 + 0xbf))) {
      local_1c[0] = (int *)FUN_00022974(param_1);
      if (local_1c[0] == (int *)0x0) {
        return (int *)0x0;
      }
      if (*local_1c[0] == 0x18) {
        return local_1c[0];
      }
      goto LAB_00022da6;
    }
    local_1c[0] = (int *)FUN_000222c4(param_1,0);
    if (**(char **)(param_1 + 0xc) != 'I') {
      return local_1c[0];
    }
LAB_00022fe2:
    piVar2 = local_1c[0];
    uVar4 = FUN_000228b8(param_1);
    local_1c[0] = (int *)FUN_0002202c(param_1,4,piVar2,uVar4);
    break;
  case 0x54:
    local_1c[0] = (int *)FUN_00022544(param_1);
    if (**(char **)(param_1 + 0xc) == 'I') {
      if (local_1c[0] == (int *)0x0) {
        return (int *)0x0;
      }
      iVar11 = *(int *)(param_1 + 0x20);
      if (*(int *)(param_1 + 0x24) <= iVar11) {
        return (int *)0x0;
      }
      *(int **)(iVar11 * 4 + *(int *)(param_1 + 0x1c)) = local_1c[0];
      *(int *)(param_1 + 0x20) = iVar11 + 1;
      goto LAB_00022fe2;
    }
    break;
  case 0x55:
    *(byte **)(param_1 + 0xc) = pbVar8 + 1;
    local_1c[0] = (int *)FUN_000225ac(param_1);
    uVar4 = FUN_00022c7c(param_1);
    local_1c[0] = (int *)FUN_0002202c(param_1,0x21,uVar4,local_1c[0]);
    break;
  case 0x61:
  case 0x62:
  case 99:
  case 100:
  case 0x65:
  case 0x66:
  case 0x67:
  case 0x68:
  case 0x69:
  case 0x6a:
  case 0x6c:
  case 0x6d:
  case 0x6e:
  case 0x6f:
  case 0x73:
  case 0x74:
  case 0x76:
  case 0x77:
  case 0x78:
  case 0x79:
  case 0x7a:
    iVar11 = *(int *)(param_1 + 0x14);
    if (iVar11 < *(int *)(param_1 + 0x18)) {
      piVar2 = (int *)(*(int *)(param_1 + 0x10) + iVar11 * 0xc);
      *(int *)(param_1 + 0x14) = iVar11 + 1;
      puVar13 = puRam00000004;
      if (piVar2 != (int *)0x0) {
        *piVar2 = 0x27;
        piVar2[1] = (int)(&UNK_0002dfcc + (uVar10 - 0x61) * 0x14);
        puVar13 = &UNK_0002dfcc + (uVar10 - 0x61) * 0x14;
      }
    }
    else {
      piVar2 = (int *)0x0;
      puVar13 = puRam00000004;
    }
    *(int *)(param_1 + 0x30) = *(int *)(param_1 + 0x30) + *(int *)(puVar13 + 4);
    *(byte **)(param_1 + 0xc) = pbVar8 + 1;
    return piVar2;
  case 0x75:
    *(byte **)(param_1 + 0xc) = pbVar8 + 1;
    uVar4 = FUN_000225ac(param_1);
    local_1c[0] = (int *)FUN_0002202c(param_1,0x28,uVar4,0);
  }
LAB_00022da0:
  if (local_1c[0] != (int *)0x0) {
LAB_00022da6:
    iVar11 = *(int *)(param_1 + 0x20);
    if (iVar11 < *(int *)(param_1 + 0x24)) {
      *(int **)(iVar11 * 4 + *(int *)(param_1 + 0x1c)) = local_1c[0];
      *(int *)(param_1 + 0x20) = iVar11 + 1;
      return local_1c[0];
    }
  }
switchD_00022ca2_caseD_3a:
  return (int *)0x0;
}

// ---- FUN_000233b8  @ 0x233b8
int FUN_000233b8(int param_1)

{
  char *pcVar1;
  int iVar2;
  char cVar3;
  int *piVar4;
  int local_14 [2];
  
  pcVar1 = *(char **)(param_1 + 0xc);
  local_14[0] = 0;
  cVar3 = *pcVar1;
  if (((cVar3 == '\0') || (cVar3 == 'E')) || (cVar3 == '.')) {
    return 0;
  }
  piVar4 = local_14;
  do {
    if (cVar3 == 'O') {
      cVar3 = pcVar1[1];
joined_r0x000233da:
      if (cVar3 == 'E') {
LAB_00023418:
        if (local_14[0] == 0) {
          return 0;
        }
        if (*(int *)(local_14[0] + 8) != 0) {
          return local_14[0];
        }
        if (**(int **)(local_14[0] + 4) != 0x27) {
          return local_14[0];
        }
        iVar2 = (*(int **)(local_14[0] + 4))[1];
        if (*(int *)(iVar2 + 0x10) == 9) {
          *(int *)(param_1 + 0x30) = *(int *)(param_1 + 0x30) - *(int *)(iVar2 + 4);
          *(undefined4 *)(local_14[0] + 4) = 0;
          return local_14[0];
        }
        return local_14[0];
      }
    }
    else if (cVar3 == 'R') {
      cVar3 = pcVar1[1];
      goto joined_r0x000233da;
    }
    iVar2 = FUN_00022c7c(param_1);
    if (iVar2 == 0) {
      return 0;
    }
    iVar2 = FUN_0002202c(param_1,0x2e,iVar2,0);
    *piVar4 = iVar2;
    if (iVar2 == 0) {
      return 0;
    }
    pcVar1 = *(char **)(param_1 + 0xc);
    cVar3 = *pcVar1;
    piVar4 = (int *)(iVar2 + 8);
    if (((cVar3 == '\0') || (cVar3 == 'E')) || (cVar3 == '.')) goto LAB_00023418;
  } while( true );
}

// ---- FUN_00023448  @ 0x23448
undefined4 FUN_00023448(int param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  undefined4 uVar2;
  int iVar3;
  
  if (**(char **)(param_1 + 0xc) == 'J') {
    *(char **)(param_1 + 0xc) = *(char **)(param_1 + 0xc) + 1;
  }
  else {
    iVar3 = 0;
    if (param_2 == 0) goto LAB_0002345a;
  }
  iVar3 = FUN_00022c7c(param_1);
  if (iVar3 == 0) {
    return 0;
  }
LAB_0002345a:
  iVar1 = FUN_000233b8(param_1);
  if (iVar1 == 0) {
    return 0;
  }
  uVar2 = FUN_0002202c(param_1,0x29,iVar3,iVar1,param_4);
  return uVar2;
}

// ---- FUN_00023484  @ 0x23484
/* WARNING: Function: __gnu_thumb1_case_shi replaced with injection: switch16_shi_r0 */
/* WARNING (jumptable): Removing unreachable block (ram,0x00023554) */
/* WARNING (jumptable): Removing unreachable block (ram,0x00023650) */
/* WARNING (jumptable): Removing unreachable block (ram,0x000235d2) */
/* WARNING: Removing unreachable block (ram,0x00023554) */
/* WARNING: Removing unreachable block (ram,0x00023650) */
/* WARNING: Removing unreachable block (ram,0x000235d2) */

uint * FUN_00023484(int param_1,int param_2)

{
  uint *puVar1;
  char cVar2;
  uint *puVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  uint *puVar6;
  int iVar7;
  int iVar8;
  char *pcVar9;
  uint uVar10;
  int *piVar11;
  undefined4 *puVar12;
  undefined4 *puVar13;
  int iVar14;
  char *pcVar15;
  
  pcVar9 = *(char **)(param_1 + 0xc);
  if ((*pcVar9 != 'T') && (*pcVar9 != 'G')) {
    puVar3 = (uint *)FUN_00022974();
    if ((puVar3 != (uint *)0x0) && ((param_2 != 0 && (-1 < *(int *)(param_1 + 8) << 0x1f)))) {
      uVar10 = *puVar3;
      while (uVar10 - 0x1c < 5) {
        puVar3 = (uint *)puVar3[1];
        uVar10 = *puVar3;
      }
      if (uVar10 != 2) {
        return puVar3;
      }
      piVar11 = (int *)puVar3[2];
      iVar7 = *piVar11;
      while (iVar7 - 0x1cU < 5) {
        piVar11 = (int *)piVar11[1];
        iVar7 = *piVar11;
      }
      puVar3[2] = (uint)piVar11;
      return puVar3;
    }
    if (puVar3 == (uint *)0x0) {
      return (uint *)0x0;
    }
    if (**(char **)(param_1 + 0xc) == '\0') {
      return puVar3;
    }
    puVar6 = puVar3;
    if (**(char **)(param_1 + 0xc) == 'E') {
      return puVar3;
    }
    do {
      uVar10 = *puVar6;
      if (uVar10 == 4) {
        puVar12 = (undefined4 *)puVar6[1];
        if (puVar12 == (undefined4 *)0x0) goto switchD_00023650_caseD_3;
        goto LAB_00023644;
      }
    } while (((3 < uVar10) && (uVar10 - 0x1c < 5)) &&
            (puVar1 = puVar6 + 1, puVar6 = (uint *)*puVar1, (uint *)*puVar1 != (uint *)0x0));
switchD_00023650_caseD_7:
    uVar5 = 0;
    goto LAB_000234ce;
  }
  iVar7 = *(int *)(param_1 + 0x30);
  *(int *)(param_1 + 0x30) = iVar7 + 0x14;
  if (*pcVar9 != 'T') {
    if ((*pcVar9 == 'G') && (*(char **)(param_1 + 0xc) = pcVar9 + 1, pcVar9[1] != '\0')) {
      *(char **)(param_1 + 0xc) = pcVar9 + 2;
      switch(pcVar9[1]) {
      case 'A':
        uVar5 = FUN_00023484(param_1,0);
        puVar3 = (uint *)FUN_0002202c(param_1,0x17,uVar5,0);
        return puVar3;
      case 'R':
        uVar5 = FUN_00022974(param_1);
        uVar4 = FUN_000224e4(param_1);
        puVar3 = (uint *)FUN_0002202c(param_1,0x16,uVar5,uVar4);
        return puVar3;
      case 'T':
        if ((pcVar9[2] != '\0') && (*(char **)(param_1 + 0xc) = pcVar9 + 3, pcVar9[2] == 'n')) {
          uVar5 = FUN_00023484(param_1,0);
          puVar3 = (uint *)FUN_0002202c(param_1,0x48,uVar5,0);
          return puVar3;
        }
        uVar5 = FUN_00023484(param_1,0);
        puVar3 = (uint *)FUN_0002202c(param_1,0x47,uVar5,0);
        return puVar3;
      case 'V':
        uVar5 = FUN_00022974(param_1);
        puVar3 = (uint *)FUN_0002202c(param_1,0x13,uVar5,0);
        return puVar3;
      case 'r':
        iVar7 = FUN_00022490(param_1 + 0xc);
        if ((1 < iVar7) && (pcVar9 = *(char **)(param_1 + 0xc), *pcVar9 != '\0')) {
          pcVar15 = pcVar9 + 1;
          *(char **)(param_1 + 0xc) = pcVar15;
          if (*pcVar9 == '_') {
            iVar7 = iVar7 + -1;
            puVar12 = (undefined4 *)0x0;
            while (*pcVar15 != '\0') {
              if (*pcVar15 == '$') {
                cVar2 = pcVar15[1];
                if (cVar2 == 'S') {
                  uVar5 = 0x2f;
                }
                else if (cVar2 == '_') {
                  uVar5 = 0x2e;
                }
                else {
                  if (cVar2 != '$') break;
                  uVar5 = 0x24;
                }
                iVar8 = *(int *)(param_1 + 0x14);
                if (iVar8 < *(int *)(param_1 + 0x18)) {
                  puVar13 = (undefined4 *)(*(int *)(param_1 + 0x10) + iVar8 * 0xc);
                  *(int *)(param_1 + 0x14) = iVar8 + 1;
                  if (puVar13 != (undefined4 *)0x0) {
                    puVar13[1] = uVar5;
                    pcVar15 = (char *)(*(int *)(param_1 + 0xc) + 2);
                    *puVar13 = 0x3f;
                    iVar8 = -2;
                    *(char **)(param_1 + 0xc) = pcVar15;
                    goto LAB_0002372c;
                  }
                }
                *(int *)(param_1 + 0xc) = *(int *)(param_1 + 0xc) + 2;
                break;
              }
              iVar14 = 0;
              do {
                if ((pcVar15[iVar14] == '\0') || (pcVar15[iVar14] == '$')) break;
                iVar14 = iVar14 + 1;
              } while (iVar14 < iVar7);
              puVar13 = (undefined4 *)FUN_000220c8(param_1,pcVar15,iVar14);
              iVar8 = -iVar14;
              pcVar15 = (char *)(*(int *)(param_1 + 0xc) + iVar14);
              *(char **)(param_1 + 0xc) = pcVar15;
              if (puVar13 == (undefined4 *)0x0) break;
LAB_0002372c:
              iVar7 = iVar7 + iVar8;
              if ((puVar12 != (undefined4 *)0x0) &&
                 (puVar13 = (undefined4 *)FUN_0002202c(param_1,0x3e), puVar13 == (undefined4 *)0x0))
              break;
              puVar12 = puVar13;
              if (iVar7 < 1) {
                puVar3 = (uint *)FUN_0002202c(param_1,0x3d,puVar13,0);
                return puVar3;
              }
            }
          }
        }
      }
    }
    goto switchD_00023554_caseD_42;
  }
  *(char **)(param_1 + 0xc) = pcVar9 + 1;
  if (pcVar9[1] == '\0') goto switchD_00023554_caseD_42;
  *(char **)(param_1 + 0xc) = pcVar9 + 2;
  switch(pcVar9[1]) {
  case 'C':
    uVar5 = FUN_00022c7c(param_1);
    iVar7 = FUN_00022490(param_1 + 0xc);
    if ((-1 < iVar7) && (**(char **)(param_1 + 0xc) == '_')) {
      *(char **)(param_1 + 0xc) = *(char **)(param_1 + 0xc) + 1;
      uVar4 = FUN_00022c7c(param_1);
      *(int *)(param_1 + 0x30) = *(int *)(param_1 + 0x30) + 5;
      puVar3 = (uint *)FUN_0002202c(param_1,0xb,uVar4,uVar5);
      return puVar3;
    }
  default:
    goto switchD_00023554_caseD_42;
  case 'F':
    uVar5 = FUN_00022c7c(param_1);
    puVar3 = (uint *)FUN_0002202c(param_1,0xe,uVar5,0);
    break;
  case 'H':
    uVar5 = FUN_00022974(param_1);
    puVar3 = (uint *)FUN_0002202c(param_1,0x14,uVar5,0);
    break;
  case 'I':
    uVar5 = FUN_00022c7c(param_1);
    puVar3 = (uint *)FUN_0002202c(param_1,0xc,uVar5,0);
    break;
  case 'J':
    uVar5 = FUN_00022c7c(param_1);
    puVar3 = (uint *)FUN_0002202c(param_1,0x12,uVar5,0);
    break;
  case 'S':
    uVar5 = FUN_00022c7c(param_1);
    puVar3 = (uint *)FUN_0002202c(param_1,0xd,uVar5,0);
    break;
  case 'T':
    *(int *)(param_1 + 0x30) = iVar7 + 10;
    uVar5 = FUN_00022c7c(param_1);
    puVar3 = (uint *)FUN_0002202c(param_1,10,uVar5,0);
    break;
  case 'V':
    *(int *)(param_1 + 0x30) = iVar7 + 0xf;
    uVar5 = FUN_00022c7c(param_1);
    puVar3 = (uint *)FUN_0002202c(param_1,9,uVar5,0);
    break;
  case 'W':
    uVar5 = FUN_00022974(param_1);
    puVar3 = (uint *)FUN_0002202c(param_1,0x15,uVar5,0);
    break;
  case 'c':
    iVar7 = FUN_00022638(param_1,0);
    if ((iVar7 != 0) && (iVar7 = FUN_00022638(param_1,0), iVar7 != 0)) {
      uVar5 = FUN_00023484(param_1,0);
      puVar3 = (uint *)FUN_0002202c(param_1,0x11,uVar5,0);
      return puVar3;
    }
    goto switchD_00023554_caseD_42;
  case 'h':
    iVar7 = FUN_00022638(param_1,0x68);
    if (iVar7 != 0) {
      uVar5 = FUN_00023484(param_1,0);
      puVar3 = (uint *)FUN_0002202c(param_1,0xf,uVar5,0);
      return puVar3;
    }
    goto switchD_00023554_caseD_42;
  case 'v':
    iVar7 = FUN_00022638(param_1,0x76);
    if (iVar7 != 0) {
      uVar5 = FUN_00023484(param_1,0);
      puVar3 = (uint *)FUN_0002202c(param_1,0x10,uVar5,0);
      return puVar3;
    }
switchD_00023554_caseD_42:
    puVar3 = (uint *)0x0;
  }
  return puVar3;
LAB_00023644:
  switch(*puVar12) {
  case 1:
  case 2:
    break;
  default:
    goto switchD_00023650_caseD_3;
  case 7:
  case 8:
  case 0x33:
    goto switchD_00023650_caseD_7;
  }
  puVar12 = (undefined4 *)puVar12[2];
  if (puVar12 == (undefined4 *)0x0) goto code_r0x000236c0;
  goto LAB_00023644;
code_r0x000236c0:
  uVar5 = 1;
  goto LAB_000234ce;
switchD_00023650_caseD_3:
  uVar5 = 1;
LAB_000234ce:
  uVar5 = FUN_00023448(param_1,uVar5);
  puVar3 = (uint *)FUN_0002202c(param_1,3,puVar3,uVar5);
  return puVar3;
}

// ---- FUN_00023988  @ 0x23988
undefined4 * FUN_00023988(int param_1)

{
  byte bVar1;
  byte bVar2;
  int iVar3;
  undefined4 uVar4;
  uint uVar5;
  undefined4 *puVar6;
  int iVar7;
  byte *pbVar8;
  int iVar9;
  uint uVar10;
  
  pbVar8 = *(byte **)(param_1 + 0xc);
  if (*pbVar8 == 0) {
    bVar2 = 0;
    uVar10 = 0;
  }
  else {
    *(byte **)(param_1 + 0xc) = pbVar8 + 1;
    bVar2 = *pbVar8;
    uVar10 = 0;
    if (pbVar8[1] != 0) {
      *(byte **)(param_1 + 0xc) = pbVar8 + 2;
      uVar10 = (uint)pbVar8[1];
    }
    if (bVar2 == 0x76) {
      if ((uVar10 - 0x30 & 0xff) < 10) {
        iVar3 = FUN_000225ac(param_1);
        iVar9 = *(int *)(param_1 + 0x14);
        if (*(int *)(param_1 + 0x18) <= iVar9) {
          return (undefined4 *)0x0;
        }
        puVar6 = (undefined4 *)(*(int *)(param_1 + 0x10) + iVar9 * 0xc);
        *(int *)(param_1 + 0x14) = iVar9 + 1;
        if (puVar6 == (undefined4 *)0x0) {
          return (undefined4 *)0x0;
        }
        if (iVar3 == 0) {
          return (undefined4 *)0x0;
        }
        puVar6[2] = iVar3;
        *puVar6 = 0x32;
        puVar6[1] = uVar10 - 0x30;
        return puVar6;
      }
    }
    else if ((uVar10 == 0x76) && (bVar2 == 99)) {
      uVar4 = FUN_00022c7c(param_1);
      puVar6 = (undefined4 *)FUN_0002202c(param_1,0x33,uVar4,0);
      return puVar6;
    }
  }
  iVar9 = 0;
  iVar3 = 0x3d;
  do {
    iVar7 = (iVar3 - iVar9) / 2 + iVar9;
    pbVar8 = *(byte **)(&UNK_0002e260 + iVar7 * 0x10);
    bVar1 = *pbVar8;
    if (bVar2 == bVar1) {
      uVar5 = (uint)pbVar8[1];
      if (uVar10 == uVar5) {
        iVar3 = *(int *)(param_1 + 0x14);
        if (*(int *)(param_1 + 0x18) <= iVar3) {
          return (undefined4 *)0x0;
        }
        puVar6 = (undefined4 *)(*(int *)(param_1 + 0x10) + iVar3 * 0xc);
        *(int *)(param_1 + 0x14) = iVar3 + 1;
        if (puVar6 != (undefined4 *)0x0) {
          *puVar6 = 0x31;
          puVar6[1] = &UNK_0002e260 + iVar7 * 0x10;
          return puVar6;
        }
        return (undefined4 *)0x0;
      }
      if (uVar5 <= uVar10) goto LAB_00023a32;
    }
    else if (bVar1 <= bVar2) {
LAB_00023a32:
      iVar9 = iVar7 + 1;
      iVar7 = iVar3;
    }
    iVar3 = iVar7;
    if (iVar9 == iVar7) {
      return (undefined4 *)0x0;
    }
  } while( true );
}

// ---- FUN_00023a80  @ 0x23a80
/* WARNING: Function: __gnu_thumb1_case_sqi replaced with injection: switchS8_r0 */
/* WARNING (jumptable): Removing unreachable block (ram,0x00023c42) */
/* WARNING (jumptable): Removing unreachable block (ram,0x00023c96) */
/* WARNING: Removing unreachable block (ram,0x00023c42) */
/* WARNING: Removing unreachable block (ram,0x00023c96) */
/* WARNING: Type propagation algorithm not settling */

int * FUN_00023a80(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  int iVar2;
  char cVar3;
  char *pcVar4;
  char *pcVar5;
  int iVar6;
  int iVar7;
  int *piVar8;
  int *piVar9;
  
  pcVar4 = *(char **)(param_1 + 0xc);
  cVar3 = *pcVar4;
  if ((byte)(cVar3 - 0x30U) < 10) {
    piVar8 = (int *)FUN_000225ac();
    pcVar5 = *(char **)(param_1 + 0xc);
    cVar3 = *pcVar5;
    goto joined_r0x00023ae8;
  }
  if ((byte)(cVar3 + 0x9fU) < 0x1a) {
    piVar8 = (int *)FUN_00023988();
    if ((piVar8 != (int *)0x0) && (*piVar8 == 0x31)) {
      pcVar4 = *(char **)piVar8[1];
      *(int *)(param_1 + 0x30) = *(int *)(param_1 + 0x30) + ((undefined4 *)piVar8[1])[2] + 7;
      iVar2 = strcmp(pcVar4,"li");
      if (iVar2 == 0) {
        uVar1 = FUN_000225ac(param_1);
        piVar8 = (int *)FUN_0002202c(param_1,0x35,piVar8,uVar1);
        pcVar5 = *(char **)(param_1 + 0xc);
        cVar3 = *pcVar5;
        goto joined_r0x00023ae8;
      }
    }
  }
  else {
    if ((byte)(cVar3 + 0xbdU) < 2) {
      piVar9 = *(int **)(param_1 + 0x2c);
      if (piVar9 != (int *)0x0) {
        if (*piVar9 == 0) {
          *(int *)(param_1 + 0x30) = *(int *)(param_1 + 0x30) + piVar9[2];
          cVar3 = *pcVar4;
        }
        else if (*piVar9 == 0x18) {
          *(int *)(param_1 + 0x30) = *(int *)(param_1 + 0x30) + piVar9[2];
          cVar3 = *pcVar4;
        }
      }
      if (cVar3 == 'C') {
        switch(pcVar4[1]) {
        case '1':
          iVar2 = 1;
          break;
        case '2':
          iVar2 = 2;
          break;
        case '3':
          iVar2 = 3;
          break;
        default:
LAB_00023ada:
          return (int *)0x0;
        case '5':
          iVar2 = 4;
        }
        iVar7 = *(int *)(param_1 + 0x14);
        pcVar5 = pcVar4 + 2;
        *(char **)(param_1 + 0xc) = pcVar5;
        if (iVar7 < *(int *)(param_1 + 0x18)) {
          piVar8 = (int *)(*(int *)(param_1 + 0x10) + iVar7 * 0xc);
          *(int *)(param_1 + 0x14) = iVar7 + 1;
          if ((piVar8 != (int *)0x0) && (piVar9 != (int *)0x0)) {
            *piVar8 = 7;
            piVar8[1] = iVar2;
            piVar8[2] = (int)piVar9;
            cVar3 = pcVar4[2];
            goto joined_r0x00023ae8;
          }
        }
      }
      else {
        if (cVar3 != 'D') {
          piVar8 = (int *)0x0;
          pcVar5 = pcVar4;
          goto joined_r0x00023ae8;
        }
        switch(pcVar4[1]) {
        case '0':
          iVar2 = 1;
          break;
        case '1':
          iVar2 = 2;
          break;
        case '2':
          iVar2 = 3;
          break;
        default:
          goto LAB_00023ada;
        case '5':
          iVar2 = 4;
        }
        iVar7 = *(int *)(param_1 + 0x14);
        pcVar5 = pcVar4 + 2;
        *(char **)(param_1 + 0xc) = pcVar5;
        if (iVar7 < *(int *)(param_1 + 0x18)) {
          piVar8 = (int *)(*(int *)(param_1 + 0x10) + iVar7 * 0xc);
          *(int *)(param_1 + 0x14) = iVar7 + 1;
          if ((piVar8 != (int *)0x0) && (piVar9 != (int *)0x0)) {
            *piVar8 = 8;
            piVar8[1] = iVar2;
            piVar8[2] = (int)piVar9;
            cVar3 = pcVar4[2];
            goto joined_r0x00023ae8;
          }
        }
      }
      piVar8 = (int *)0x0;
      pcVar5 = pcVar4 + 2;
      cVar3 = *pcVar5;
      goto joined_r0x00023ae8;
    }
    if (cVar3 != 'L') {
      if (cVar3 != 'U') {
        return (int *)0x0;
      }
      if (pcVar4[1] == 'l') {
        pcVar5 = pcVar4 + 1;
        *(char **)(param_1 + 0xc) = pcVar5;
        cVar3 = pcVar4[1];
        if (cVar3 == 'l') {
          *(char **)(param_1 + 0xc) = pcVar4 + 2;
          iVar2 = FUN_000233b8();
          pcVar5 = *(char **)(param_1 + 0xc);
          cVar3 = *pcVar5;
          if ((iVar2 != 0) && (cVar3 == 'E')) {
            *(char **)(param_1 + 0xc) = pcVar5 + 1;
            iVar7 = FUN_00022514(param_1);
            if ((-1 < iVar7) && (iVar6 = *(int *)(param_1 + 0x14), iVar6 < *(int *)(param_1 + 0x18))
               ) {
              piVar8 = (int *)(*(int *)(param_1 + 0x10) + iVar6 * 0xc);
              *(int *)(param_1 + 0x14) = iVar6 + 1;
              if (piVar8 != (int *)0x0) {
                piVar8[1] = iVar2;
                piVar8[2] = iVar7;
                *piVar8 = 0x44;
                iVar2 = *(int *)(param_1 + 0x20);
                if (iVar2 < *(int *)(param_1 + 0x24)) goto LAB_00023b76;
              }
            }
            goto LAB_00023c3a;
          }
        }
      }
      else {
        if (pcVar4[1] != 't') {
          return (int *)0x0;
        }
        pcVar5 = pcVar4 + 1;
        *(char **)(param_1 + 0xc) = pcVar5;
        cVar3 = pcVar4[1];
        if (cVar3 == 't') {
          *(char **)(param_1 + 0xc) = pcVar4 + 2;
          iVar2 = FUN_00022514();
          if ((-1 < iVar2) && (iVar7 = *(int *)(param_1 + 0x14), iVar7 < *(int *)(param_1 + 0x18)))
          {
            piVar8 = (int *)(*(int *)(param_1 + 0x10) + iVar7 * 0xc);
            *(int *)(param_1 + 0x14) = iVar7 + 1;
            if (piVar8 != (int *)0x0) {
              piVar8[1] = iVar2;
              *piVar8 = 0x46;
              iVar2 = *(int *)(param_1 + 0x20);
              if (iVar2 < *(int *)(param_1 + 0x24)) {
LAB_00023b76:
                *(int **)(iVar2 * 4 + *(int *)(param_1 + 0x1c)) = piVar8;
                *(int *)(param_1 + 0x20) = iVar2 + 1;
                goto LAB_00023b1a;
              }
            }
          }
LAB_00023c3a:
          pcVar5 = *(char **)(param_1 + 0xc);
          piVar8 = (int *)0x0;
          cVar3 = *pcVar5;
          goto joined_r0x00023ae8;
        }
      }
      piVar8 = (int *)0x0;
      goto joined_r0x00023ae8;
    }
    *(char **)(param_1 + 0xc) = pcVar4 + 1;
    piVar8 = (int *)FUN_000225ac();
    if (piVar8 == (int *)0x0) {
      return (int *)0x0;
    }
    iVar2 = FUN_0002258c(param_1);
    if (iVar2 == 0) {
      return (int *)0x0;
    }
  }
LAB_00023b1a:
  pcVar5 = *(char **)(param_1 + 0xc);
  cVar3 = *pcVar5;
joined_r0x00023ae8:
  while (cVar3 == 'B') {
    *(char **)(param_1 + 0xc) = pcVar5 + 1;
    uVar1 = FUN_000225ac(param_1);
    piVar8 = (int *)FUN_0002202c(param_1,0x4a,piVar8,uVar1,param_4);
    pcVar5 = *(char **)(param_1 + 0xc);
    cVar3 = **(char **)(param_1 + 0xc);
  }
  return piVar8;
}

// ---- FUN_00023cf8  @ 0x23cf8
/* WARNING: Function: __gnu_thumb1_case_uhi replaced with injection: switch16_uhi_r0 */
/* WARNING (jumptable): Removing unreachable block (ram,0x00023e3c) */
/* WARNING: Removing unreachable block (ram,0x00023e3c) */

undefined4 * FUN_00023cf8(int param_1)

{
  char cVar1;
  bool bVar2;
  int *piVar3;
  undefined4 uVar4;
  undefined4 *puVar5;
  int iVar6;
  undefined4 uVar7;
  undefined4 uVar8;
  char *pcVar9;
  int iVar10;
  
  pcVar9 = *(char **)(param_1 + 0xc);
  cVar1 = *pcVar9;
  if (cVar1 == 'L') {
    puVar5 = (undefined4 *)FUN_000227f0();
    return puVar5;
  }
  if (cVar1 == 'T') {
    puVar5 = (undefined4 *)FUN_00022544();
    return puVar5;
  }
  if (cVar1 == 's') {
    if (pcVar9[1] == 'r') {
      *(char **)(param_1 + 0xc) = pcVar9 + 2;
      uVar4 = FUN_00022c7c();
      uVar7 = FUN_00023a80(param_1);
      if (**(char **)(param_1 + 0xc) == 'I') {
        uVar8 = FUN_000228b8();
        uVar7 = FUN_0002202c(param_1,4,uVar7,uVar8);
        puVar5 = (undefined4 *)FUN_0002202c(param_1,1,uVar4,uVar7);
        return puVar5;
      }
      puVar5 = (undefined4 *)FUN_0002202c(param_1,1,uVar4,uVar7);
      return puVar5;
    }
    if (pcVar9[1] == 'p') {
      *(char **)(param_1 + 0xc) = pcVar9 + 2;
      uVar4 = FUN_00023cf8();
      puVar5 = (undefined4 *)FUN_0002202c(param_1,0x49,uVar4,0);
      return puVar5;
    }
  }
  else if (cVar1 == 'f') {
    if (pcVar9[1] == 'p') {
      *(char **)(param_1 + 0xc) = pcVar9 + 2;
      if (pcVar9[2] == 'T') {
        *(char **)(param_1 + 0xc) = pcVar9 + 3;
        iVar10 = 0;
      }
      else {
        iVar10 = FUN_00022514();
        iVar10 = iVar10 + 1;
        if (iVar10 == 0) {
          return (undefined4 *)0x0;
        }
      }
      iVar6 = *(int *)(param_1 + 0x14);
      if (iVar6 < *(int *)(param_1 + 0x18)) {
        puVar5 = (undefined4 *)(*(int *)(param_1 + 0x10) + iVar6 * 0xc);
        *(int *)(param_1 + 0x14) = iVar6 + 1;
        if (puVar5 == (undefined4 *)0x0) {
          return (undefined4 *)0x0;
        }
        *puVar5 = 6;
        puVar5[1] = iVar10;
        return puVar5;
      }
      return (undefined4 *)0x0;
    }
  }
  else {
    if ((byte)(cVar1 - 0x30U) < 10) {
LAB_00023d26:
      puVar5 = (undefined4 *)FUN_00023a80(param_1);
      if (puVar5 == (undefined4 *)0x0) {
        return (undefined4 *)0x0;
      }
      if (**(char **)(param_1 + 0xc) != 'I') {
        return puVar5;
      }
      uVar4 = FUN_000228b8(param_1);
      puVar5 = (undefined4 *)FUN_0002202c(param_1,4,puVar5,uVar4);
      return puVar5;
    }
    if (cVar1 == 'o') {
      if (pcVar9[1] == 'n') {
        *(char **)(param_1 + 0xc) = pcVar9 + 2;
        goto LAB_00023d26;
      }
    }
    else if (((cVar1 == 't') || (cVar1 == 'i')) && (pcVar9[1] == 'l')) {
      uVar4 = 0;
      if (cVar1 == 't') {
        uVar4 = FUN_00022c7c(param_1);
        pcVar9 = *(char **)(param_1 + 0xc);
      }
      *(char **)(param_1 + 0xc) = pcVar9 + 2;
      uVar7 = FUN_00024100(param_1,0x45);
      puVar5 = (undefined4 *)FUN_0002202c(param_1,0x30,uVar4,uVar7);
      return puVar5;
    }
  }
  piVar3 = (int *)FUN_00023988(param_1);
  if (piVar3 == (int *)0x0) {
    return (undefined4 *)0x0;
  }
  iVar10 = *piVar3;
  if (iVar10 == 0x31) {
    puVar5 = (undefined4 *)piVar3[1];
    pcVar9 = (char *)*puVar5;
    *(int *)(param_1 + 0x30) = *(int *)(param_1 + 0x30) + puVar5[2] + -2;
    iVar6 = strcmp(pcVar9,"st");
    if (iVar6 != 0) {
      iVar6 = puVar5[3];
      goto LAB_00023e34;
    }
    uVar4 = FUN_00022c7c(param_1);
    goto LAB_00023da2;
  }
  if (iVar10 == 0x32) {
    pcVar9 = (char *)0x0;
    iVar6 = piVar3[1];
LAB_00023e34:
    switch(iVar6) {
    case 0:
      puVar5 = (undefined4 *)FUN_0002202c(param_1,0x34,piVar3,0);
      return puVar5;
    case 1:
      goto switchD_00023e3c_caseD_1;
    case 2:
      if (((*(char **)piVar3[1])[1] == 'c') &&
         ((cVar1 = **(char **)piVar3[1], (byte)(cVar1 + 0x9dU) < 2 || ((byte)(cVar1 + 0x8eU) < 2))))
      {
        uVar4 = FUN_00022c7c(param_1);
      }
      else {
        uVar4 = FUN_00023cf8(param_1);
      }
      iVar10 = strcmp(pcVar9,"cl");
      if (iVar10 == 0) {
        uVar7 = FUN_00024100(param_1,0x45);
      }
      else {
        iVar10 = strcmp(pcVar9,"dt");
        if ((iVar10 == 0) || (iVar10 = strcmp(pcVar9,"pt"), iVar10 == 0)) {
          uVar7 = FUN_00023a80(param_1);
          if (**(char **)(param_1 + 0xc) == 'I') {
            uVar8 = FUN_000228b8(param_1);
            uVar7 = FUN_0002202c(param_1,4,uVar7,uVar8);
          }
        }
        else {
          uVar7 = FUN_00023cf8(param_1);
        }
      }
      uVar4 = FUN_0002202c(param_1,0x37,uVar4,uVar7);
      puVar5 = (undefined4 *)FUN_0002202c(param_1,0x36,piVar3,uVar4);
      return puVar5;
    case 3:
      iVar10 = strcmp(pcVar9,"qu");
      if (iVar10 == 0) {
        uVar4 = FUN_00023cf8(param_1);
        uVar7 = FUN_00023cf8(param_1);
        uVar8 = FUN_00023cf8(param_1);
      }
      else {
        if (*pcVar9 != 'n') {
          return (undefined4 *)0x0;
        }
        if ((pcVar9[1] != 'a') && (pcVar9[1] != 'w')) {
          return (undefined4 *)0x0;
        }
        uVar4 = FUN_00024100(param_1,0x5f);
        uVar7 = FUN_00022c7c(param_1);
        pcVar9 = *(char **)(param_1 + 0xc);
        cVar1 = *pcVar9;
        if (cVar1 == 'E') {
          *(char **)(param_1 + 0xc) = pcVar9 + 1;
          uVar8 = 0;
        }
        else if (cVar1 == 'p') {
          if (pcVar9[1] != 'i') {
            return (undefined4 *)0x0;
          }
          *(char **)(param_1 + 0xc) = pcVar9 + 2;
          uVar8 = FUN_00024100(param_1,0x45);
        }
        else {
          if ((cVar1 != 'i') || (pcVar9[1] != 'l')) {
            return (undefined4 *)0x0;
          }
          uVar8 = FUN_00023cf8(param_1);
        }
      }
      uVar7 = FUN_0002202c(param_1,0x3a,uVar7,uVar8);
      uVar4 = FUN_0002202c(param_1,0x39,uVar4,uVar7);
      puVar5 = (undefined4 *)FUN_0002202c(param_1,0x38,piVar3,uVar4);
      return puVar5;
    default:
      return (undefined4 *)0x0;
    }
  }
  if (iVar10 != 0x33) {
    return (undefined4 *)0x0;
  }
  bVar2 = false;
LAB_00023d7e:
  if (**(char **)(param_1 + 0xc) != '_') goto LAB_00023d88;
  *(char **)(param_1 + 0xc) = *(char **)(param_1 + 0xc) + 1;
  uVar4 = FUN_00024100(param_1,0x45);
LAB_00023d90:
  if (bVar2) {
    uVar4 = FUN_0002202c(param_1,0x37,uVar4);
  }
LAB_00023da2:
  puVar5 = (undefined4 *)FUN_0002202c(param_1,0x35,piVar3,uVar4);
  return puVar5;
switchD_00023e3c_caseD_1:
  bVar2 = false;
  if ((pcVar9 != (char *)0x0) &&
     (((cVar1 = *pcVar9, cVar1 == 'm' || (cVar1 == 'p')) && (bVar2 = false, pcVar9[1] == cVar1)))) {
    bVar2 = true;
    if (**(char **)(param_1 + 0xc) == '_') {
      *(char **)(param_1 + 0xc) = *(char **)(param_1 + 0xc) + 1;
      bVar2 = false;
    }
  }
  if (iVar10 == 0x33) goto LAB_00023d7e;
LAB_00023d88:
  uVar4 = FUN_00023cf8(param_1);
  goto LAB_00023d90;
}

// ---- FUN_00024100  @ 0x24100
int FUN_00024100(int param_1,uint param_2)

{
  int iVar1;
  int *piVar2;
  int local_14;
  
  local_14 = 0;
  piVar2 = &local_14;
  if (**(byte **)(param_1 + 0xc) == param_2) {
    *(byte **)(param_1 + 0xc) = *(byte **)(param_1 + 0xc) + 1;
    local_14 = FUN_0002202c(param_1,0x2e,0,0);
  }
  else {
    do {
      iVar1 = FUN_00023cf8(param_1);
      if (iVar1 == 0) {
        return 0;
      }
      iVar1 = FUN_0002202c(param_1,0x2e,iVar1,0);
      *piVar2 = iVar1;
      if (iVar1 == 0) {
        return 0;
      }
      piVar2 = (int *)(iVar1 + 8);
    } while (**(byte **)(param_1 + 0xc) != param_2);
    *(byte **)(param_1 + 0xc) = *(byte **)(param_1 + 0xc) + 1;
  }
  return local_14;
}

// ---- FUN_0002415c  @ 0x2415c
void FUN_0002415c(int param_1,char *param_2)

{
  char cVar1;
  size_t sVar2;
  code *pcVar3;
  int iVar4;
  int iVar5;
  char *pcVar6;
  
  sVar2 = strlen(param_2);
  if (sVar2 != 0) {
    pcVar6 = param_2 + sVar2;
    iVar5 = *(int *)(param_1 + 0x100);
    do {
      cVar1 = *param_2;
      if (iVar5 == 0xff) {
        *(undefined1 *)(param_1 + 0xff) = 0;
        pcVar3 = *(code **)(param_1 + 0x108);
        (*pcVar3)(param_1,0xff,*(undefined4 *)(param_1 + 0x10c),pcVar3,pcVar3,
                  *(undefined4 *)(param_1 + 0x10c));
        *(int *)(param_1 + 0x120) = *(int *)(param_1 + 0x120) + 1;
        iVar4 = 1;
        iVar5 = 0;
      }
      else {
        iVar4 = iVar5 + 1;
      }
      *(int *)(param_1 + 0x100) = iVar4;
      *(char *)(param_1 + iVar5) = cVar1;
      param_2 = param_2 + 1;
      *(char *)(param_1 + 0x104) = cVar1;
      iVar5 = iVar4;
    } while (param_2 != pcVar6);
  }
  return;
}

// ---- FUN_00028064  @ 0x28064
void FUN_00028064(int param_1,undefined4 param_2,int *param_3)

{
  undefined1 uVar1;
  int iVar2;
  code *pcVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  int iVar7;
  
  if (*param_3 == 0x31) {
    iVar2 = *(int *)(param_3[1] + 4);
    iVar7 = *(int *)(param_3[1] + 8);
    if (iVar7 != 0) {
      iVar6 = 0;
      iVar5 = *(int *)(param_1 + 0x100);
      do {
        uVar1 = *(undefined1 *)(iVar2 + iVar6);
        if (iVar5 == 0xff) {
          *(undefined1 *)(param_1 + 0xff) = 0;
          pcVar3 = *(code **)(param_1 + 0x108);
          (*pcVar3)(param_1,0xff,*(undefined4 *)(param_1 + 0x10c),pcVar3,pcVar3,
                    *(undefined4 *)(param_1 + 0x10c));
          *(int *)(param_1 + 0x120) = *(int *)(param_1 + 0x120) + 1;
          iVar4 = 1;
          iVar5 = 0;
        }
        else {
          iVar4 = iVar5 + 1;
        }
        *(int *)(param_1 + 0x100) = iVar4;
        *(undefined1 *)(param_1 + iVar5) = uVar1;
        iVar6 = iVar6 + 1;
        *(undefined1 *)(param_1 + 0x104) = uVar1;
        iVar5 = iVar4;
      } while (iVar7 != iVar6);
    }
  }
  else if (*(int *)(param_1 + 0x118) == 0) {
    FUN_000241e4();
  }
  return;
}

// ---- FUN_00028108  @ 0x28108
void FUN_00028108(int param_1,undefined4 param_2,uint *param_3,undefined4 param_4)

{
  bool bVar1;
  int iVar2;
  uint uVar3;
  int iVar4;
  
  uVar3 = *param_3;
  if (((uVar3 < 2) || (uVar3 == 0x30)) || (uVar3 == 6)) {
    iVar4 = *(int *)(param_1 + 0x118);
    bVar1 = true;
  }
  else {
    iVar4 = *(int *)(param_1 + 0x100);
    if (iVar4 == 0xff) {
      *(undefined1 *)(param_1 + 0xff) = 0;
      (**(code **)(param_1 + 0x108))
                (param_1,0xff,*(undefined4 *)(param_1 + 0x10c),*(code **)(param_1 + 0x108),param_4);
      *(int *)(param_1 + 0x120) = *(int *)(param_1 + 0x120) + 1;
      iVar2 = 1;
      iVar4 = 0;
    }
    else {
      iVar2 = iVar4 + 1;
    }
    *(int *)(param_1 + 0x100) = iVar2;
    *(undefined1 *)(param_1 + iVar4) = 0x28;
    *(undefined1 *)(param_1 + 0x104) = 0x28;
    iVar4 = *(int *)(param_1 + 0x118);
    bVar1 = false;
  }
  if (iVar4 == 0) {
    FUN_000241e4(param_1,param_2,param_3);
    if (bVar1) {
      return;
    }
  }
  else if (bVar1) {
    return;
  }
  iVar4 = *(int *)(param_1 + 0x100);
  if (iVar4 == 0xff) {
    *(undefined1 *)(param_1 + 0xff) = 0;
    (**(code **)(param_1 + 0x108))(param_1,0xff,*(undefined4 *)(param_1 + 0x10c));
    iVar2 = 1;
    *(int *)(param_1 + 0x120) = *(int *)(param_1 + 0x120) + 1;
    iVar4 = 0;
  }
  else {
    iVar2 = iVar4 + 1;
  }
  *(int *)(param_1 + 0x100) = iVar2;
  *(undefined1 *)(param_1 + iVar4) = 0x29;
  *(undefined1 *)(param_1 + 0x104) = 0x29;
  return;
}

// ---- FUN_000281d4  @ 0x281d4
bool FUN_000281d4(char *param_1,code *param_2,undefined4 param_3)

{
  char cVar1;
  int iVar2;
  size_t sVar3;
  undefined4 uVar4;
  char cVar5;
  char *pcVar6;
  uint uVar7;
  bool bVar8;
  undefined1 auStack_188 [4];
  undefined4 local_184;
  char *local_180;
  char *local_17c;
  uint local_178;
  char *local_174;
  undefined1 *local_170;
  undefined4 local_16c;
  int local_168;
  int local_164;
  undefined4 local_160;
  size_t local_15c;
  undefined4 local_158;
  undefined4 local_154;
  undefined4 local_150;
  undefined1 auStack_14c [256];
  int iStack_4c;
  undefined1 uStack_48;
  code *pcStack_44;
  undefined4 uStack_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  int iStack_34;
  undefined4 uStack_30;
  undefined4 uStack_2c;
  
  cVar5 = *param_1;
  local_184 = param_3;
  if ((cVar5 == '_') && (param_1[1] == 'Z')) {
    uVar7 = 1;
  }
  else {
    iVar2 = strncmp(param_1,"_GLOBAL_",8);
    uVar7 = 0;
    if ((iVar2 == 0) && (((cVar1 = param_1[8], cVar1 == '.' || (cVar1 == '_')) || (cVar1 == '$'))))
    {
      cVar1 = param_1[9];
      if (((cVar1 == 'I') || (uVar7 = 0, cVar1 == 'D')) && (uVar7 = 0, param_1[10] == '_')) {
        uVar7 = (cVar1 != 'I') + 2;
      }
    }
  }
  local_15c = strlen(param_1);
  local_17c = param_1 + local_15c;
  local_168 = local_15c * 2;
  local_178 = 0x11;
  local_16c = 0;
  local_160 = 0;
  local_158 = 0;
  local_154 = 0;
  local_150 = 0;
  local_170 = auStack_188 + -(local_15c * 0x18 + 8);
  local_164 = (int)local_170 - (local_15c * 4 + 10 & 0xfffffff8);
  local_180 = param_1;
  local_174 = param_1;
  if (uVar7 == 1) {
    if (cVar5 == '_') {
      local_174 = param_1 + 1;
      cVar5 = param_1[1];
      if (cVar5 == 'Z') {
        local_174 = param_1 + 2;
        iVar2 = FUN_00023484(&local_180,1);
        if ((local_178 & 1) == 0) {
LAB_000283b2:
          cVar5 = *local_174;
        }
        else {
          cVar5 = *local_174;
          while (cVar5 == '.') {
            cVar5 = local_174[1];
            if (((0x19 < (byte)(cVar5 + 0x9fU)) && (cVar5 != '_')) && (9 < (byte)(cVar5 - 0x30U)))
            goto LAB_000283b2;
            iVar2 = FUN_0002221c(&local_180,iVar2);
            cVar5 = *local_174;
          }
        }
      }
      else {
        iVar2 = 0;
      }
    }
    else {
      iVar2 = 0;
    }
  }
  else if ((uVar7 == 0) || (3 < uVar7)) {
    iVar2 = FUN_00022c7c(&local_180);
    cVar5 = *local_174;
  }
  else {
    pcVar6 = param_1 + 0xb;
    if ((param_1[0xb] == '_') && (param_1[0xc] == 'Z')) {
      local_174 = param_1 + 0xd;
      uVar4 = FUN_00023484(&local_180,0);
    }
    else {
      local_174 = pcVar6;
      sVar3 = strlen(pcVar6);
      uVar4 = FUN_000220c8(&local_180,pcVar6,sVar3);
    }
    iVar2 = FUN_0002202c(&local_180,(((uVar7 - 2) - (uVar7 - 3)) - (uint)(uVar7 - 2 == 0)) + 0x42,
                         uVar4,0);
    pcVar6 = local_174;
    sVar3 = strlen(local_174);
    local_174 = pcVar6 + sVar3;
    cVar5 = *local_174;
  }
  bVar8 = false;
  if (cVar5 == '\0') {
    if (iVar2 == 0) {
      bVar8 = false;
    }
    else {
      iStack_4c = 0;
      uStack_48 = 0;
      uStack_3c = 0;
      uStack_38 = 0;
      uStack_30 = 0;
      uStack_2c = 0;
      uStack_40 = local_184;
      iStack_34 = 0;
      pcStack_44 = param_2;
      FUN_000241e4(auStack_14c,0x11,iVar2);
      iVar2 = iStack_4c;
      auStack_14c[iStack_4c] = 0;
      (*pcStack_44)(auStack_14c,iVar2,uStack_40);
      bVar8 = iStack_34 == 0;
    }
  }
  return bVar8;
}

// ---- FUN_00028628  @ 0x28628
uint FUN_00028628(uint param_1,uint param_2)

{
  uint uVar1;
  uint uVar2;
  uint uVar3;
  uint uVar4;
  uint uVar5;
  char in_NG;
  bool bVar6;
  
  uVar5 = param_1 ^ param_2;
  uVar1 = param_2;
  if (in_NG != '\0') {
    uVar1 = -param_2;
  }
  if (uVar1 - 1 == 0) {
    if ((int)param_2 < 0) {
      param_1 = -param_1;
    }
    return param_1;
  }
  uVar4 = param_1;
  if ((int)param_1 < 0) {
    uVar4 = -param_1;
  }
  if (uVar4 <= uVar1) {
    if (uVar4 < uVar1) {
      param_1 = 0;
    }
    if (uVar4 == uVar1) {
      param_1 = (int)uVar5 >> 0x1f | 1;
    }
    return param_1;
  }
  if ((uVar1 & uVar1 - 1) == 0) {
    uVar4 = uVar4 >> (0x1fU - LZCOUNT(uVar1) & 0xff);
    if ((int)uVar5 < 0) {
      uVar4 = -uVar4;
    }
    return uVar4;
  }
  uVar2 = uVar1 << (LZCOUNT(uVar1) - LZCOUNT(uVar4) & 0xffU);
  uVar3 = 1 << (LZCOUNT(uVar1) - LZCOUNT(uVar4) & 0xffU);
  uVar1 = 0;
  while( true ) {
    if (uVar2 <= uVar4) {
      uVar4 = uVar4 - uVar2;
      uVar1 = uVar1 | uVar3;
    }
    if (uVar2 >> 1 <= uVar4) {
      uVar4 = uVar4 - (uVar2 >> 1);
      uVar1 = uVar1 | uVar3 >> 1;
    }
    if (uVar2 >> 2 <= uVar4) {
      uVar4 = uVar4 - (uVar2 >> 2);
      uVar1 = uVar1 | uVar3 >> 2;
    }
    if (uVar2 >> 3 <= uVar4) {
      uVar4 = uVar4 - (uVar2 >> 3);
      uVar1 = uVar1 | uVar3 >> 3;
    }
    bVar6 = uVar4 == 0;
    if (!bVar6) {
      uVar3 = uVar3 >> 4;
      bVar6 = uVar3 == 0;
    }
    if (bVar6) break;
    uVar2 = uVar2 >> 4;
  }
  if ((int)uVar5 < 0) {
    uVar1 = -uVar1;
  }
  return uVar1;
}

// ---- FUN_000287b4  @ 0x287b4
int FUN_000287b4(uint *param_1)

{
  uint uVar1;
  
  uVar1 = *param_1;
  if ((int)(uVar1 << 1) < 0) {
    uVar1 = uVar1 | 0x80000000;
  }
  else {
    uVar1 = uVar1 & 0x7fffffff;
  }
  return (int)param_1 + uVar1;
}

// ---- FUN_000287c6  @ 0x287c6
int FUN_000287c6(int param_1,int param_2,uint param_3)

{
  uint uVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  
  if (param_2 == 0) {
    return 0;
  }
  iVar5 = 0;
  iVar6 = param_2 + -1;
LAB_000287d8:
  do {
    iVar3 = (iVar5 + iVar6) / 2;
    iVar4 = param_1 + iVar3 * 8;
    uVar1 = FUN_000287b4(iVar4);
    if (iVar3 == param_2 + -1) {
      if (uVar1 <= param_3) {
        return iVar4;
      }
    }
    else {
      iVar2 = FUN_000287b4(iVar3 * 8 + 8 + param_1);
      if (uVar1 <= param_3) {
        if (param_3 <= iVar2 - 1U) {
          return iVar4;
        }
        iVar5 = iVar3 + 1;
        goto LAB_000287d8;
      }
    }
    if (iVar3 == iVar5) {
      return 0;
    }
    iVar6 = iVar3 + -1;
  } while( true );
}

// ---- FUN_0002882e  @ 0x2882e
undefined4 FUN_0002882e(int param_1)

{
  if (param_1 == 1) {
    return 0x28ecd;
  }
  if (param_1 != 2) {
    if (param_1 == 0) {
      return 0x28ec9;
    }
    return 0;
  }
  return 0x28ed1;
}

// ---- FUN_00028860  @ 0x28860
/* WARNING: Removing unreachable block (ram,0x0002887c) */

undefined4 FUN_00028860(int param_1,int param_2,undefined4 param_3)

{
  int iVar1;
  undefined4 uVar2;
  int iVar3;
  int local_14;
  
  local_14 = param_2;
  iVar1 = __gnu_Unwind_Find_exidx(param_2 + -2,&local_14,param_3,__gnu_Unwind_Find_exidx,param_1);
  if ((iVar1 == 0) || (iVar1 = FUN_000287c6(iVar1,local_14,param_2 + -2), iVar1 == 0)) {
    *(undefined4 *)(param_1 + 0x10) = 0;
    uVar2 = 9;
  }
  else {
    uVar2 = FUN_000287b4();
    iVar3 = *(int *)(iVar1 + 4);
    *(undefined4 *)(param_1 + 0x48) = uVar2;
    if (iVar3 == 1) {
      uVar2 = 5;
      *(undefined4 *)(param_1 + 0x10) = 0;
    }
    else {
      if (-1 < iVar3) {
        uVar2 = FUN_000287b4();
        *(undefined4 *)(param_1 + 0x4c) = uVar2;
      }
      else {
        *(int *)(param_1 + 0x4c) = iVar1 + 4;
      }
      *(uint *)(param_1 + 0x50) = (uint)(-1 >= iVar3);
      if ((int)**(uint **)(param_1 + 0x4c) < 0) {
        iVar1 = FUN_0002882e((**(uint **)(param_1 + 0x4c) & 0xfffffff) >> 0x18);
        *(int *)(param_1 + 0x10) = iVar1;
        if (iVar1 == 0) {
          uVar2 = 9;
        }
        else {
          uVar2 = 0;
        }
      }
      else {
        uVar2 = FUN_000287b4();
        *(undefined4 *)(param_1 + 0x10) = uVar2;
        uVar2 = 0;
      }
    }
  }
  return uVar2;
}

// ---- FUN_00028904  @ 0x28904
void FUN_00028904(uint *param_1)

{
  if (-1 < (int)(*param_1 << 0x1f)) {
    if ((*param_1 & 2) == 0) {
      __gnu_Unwind_Restore_VFP(param_1 + 0x12);
    }
    else {
      __gnu_Unwind_Restore_VFP_D();
    }
  }
  if (-1 < (int)(*param_1 << 0x1d)) {
    __gnu_Unwind_Restore_VFP_D_16_to_31(param_1 + 0x34);
  }
  if (-1 < (int)(*param_1 << 0x1c)) {
    __gnu_Unwind_Restore_WMMXD(param_1 + 0x54);
  }
  if (-1 < (int)(*param_1 << 0x1b)) {
    __gnu_Unwind_Restore_WMMXC(param_1 + 0x74);
    return;
  }
  return;
}

// ---- FUN_00028952  @ 0x28952
undefined4 FUN_00028952(int *param_1)

{
  if (*param_1 != 0) {
    return *(undefined4 *)(*param_1 + (int)param_1);
  }
  return 0;
}

// ---- FUN_0002895e  @ 0x2895e
undefined4 FUN_0002895e(void)

{
  return 9;
}

// ---- FUN_00028962  @ 0x28962
void FUN_00028962(void)

{
  return;
}

// ---- FUN_00028964  @ 0x28964
int FUN_00028964(int param_1,int param_2)

{
  int iVar1;
  int iVar2;
  int iVar3;
  int extraout_r2;
  code *pcVar4;
  undefined4 uVar5;
  uint uVar6;
  int iVar7;
  undefined8 uVar8;
  undefined4 uStack_3f8;
  undefined4 uStack_3f4;
  undefined4 uStack_3f0;
  undefined4 uStack_3ec;
  undefined4 uStack_3e8;
  undefined4 uStack_3e4;
  undefined4 uStack_3e0;
  undefined4 uStack_3dc;
  undefined4 uStack_3d8;
  undefined4 uStack_3d4;
  undefined4 uStack_3d0;
  undefined4 uStack_3cc;
  undefined4 uStack_3c8;
  undefined4 uStack_3c4;
  undefined4 uStack_3c0;
  undefined4 uStack_3bc;
  undefined4 uStack_3b8;
  undefined4 uStack_3b4;
  undefined1 auStack_218 [56];
  undefined4 uStack_1e0;
  int iStack_34;
  int iStack_30;
  undefined4 uStack_2c;
  
  do {
    iVar1 = FUN_00028860(param_1,*(undefined4 *)(param_2 + 0x40));
    if (iVar1 != 0) goto LAB_00028976;
    *(undefined4 *)(param_1 + 0x14) = *(undefined4 *)(param_2 + 0x40);
    iVar1 = (**(code **)(param_1 + 0x10))(1,param_1,param_2);
  } while (iVar1 == 8);
  if (iVar1 == 7) {
    FUN_00028962(0,*(undefined4 *)(param_2 + 0x40));
    uVar8 = restore_core_regs(param_2 + 4);
    iVar1 = (int)((ulonglong)uVar8 >> 0x20);
    iVar2 = (int)uVar8;
    pcVar4 = *(code **)(iVar2 + 0xc);
    uVar5 = *(undefined4 *)(iVar2 + 0x18);
    uStack_3f4 = *(undefined4 *)(iVar1 + 4);
    uStack_3f0 = *(undefined4 *)(iVar1 + 8);
    uStack_3ec = *(undefined4 *)(iVar1 + 0xc);
    uStack_3e8 = *(undefined4 *)(iVar1 + 0x10);
    uStack_3e4 = *(undefined4 *)(iVar1 + 0x14);
    uStack_3e0 = *(undefined4 *)(iVar1 + 0x18);
    uStack_3dc = *(undefined4 *)(iVar1 + 0x1c);
    uStack_3d8 = *(undefined4 *)(iVar1 + 0x20);
    uStack_3d4 = *(undefined4 *)(iVar1 + 0x24);
    uStack_3d0 = *(undefined4 *)(iVar1 + 0x28);
    uStack_3cc = *(undefined4 *)(iVar1 + 0x2c);
    uStack_3c8 = *(undefined4 *)(iVar1 + 0x30);
    uStack_3c4 = *(undefined4 *)(iVar1 + 0x34);
    uStack_3c0 = *(undefined4 *)(iVar1 + 0x38);
    uStack_3bc = *(undefined4 *)(iVar1 + 0x3c);
    uStack_3b8 = *(undefined4 *)(iVar1 + 0x40);
    iVar7 = 0;
    uStack_3f8 = 0;
    uStack_2c = 0;
    iVar1 = extraout_r2;
    iStack_34 = param_2;
    iStack_30 = param_1;
    while( true ) {
      iVar3 = FUN_00028860(iVar2,uStack_3b8);
      if (iVar1 == 0) {
        uVar6 = 9;
      }
      else {
        uVar6 = 10;
      }
      if (iVar3 == 0) {
        *(undefined4 *)(iVar2 + 0x14) = uStack_3b8;
        memcpy(auStack_218,&uStack_3f8,0x1e0);
        iVar7 = (**(code **)(iVar2 + 0x10))(uVar6,iVar2,auStack_218);
        uStack_3b4 = uStack_1e0;
      }
      else {
        uVar6 = uVar6 | 0x10;
        uStack_3b4 = uStack_3c0;
      }
      iVar1 = (*pcVar4)(1,uVar6,iVar2,iVar2,&uStack_3f8,uVar5);
      if (iVar1 != 0) {
        return 9;
      }
      if (iVar3 != 0) {
        return iVar3;
      }
      memcpy(&uStack_3f8,auStack_218,0x1e0);
      if (iVar7 != 8) break;
      iVar1 = 0;
    }
    if (iVar7 == 7) {
      FUN_00028962(0,uStack_3b8);
      restore_core_regs(&uStack_3f4);
    }
    return 9;
  }
LAB_00028976:
                    /* WARNING: Subroutine does not return */
  abort();
}

// ---- FUN_0002899e  @ 0x2899e
int FUN_0002899e(int param_1,int param_2,int param_3)

{
  int iVar1;
  int iVar2;
  code *pcVar3;
  undefined4 uVar4;
  uint uVar5;
  int iVar6;
  undefined4 local_3e8;
  undefined4 local_3e4;
  undefined4 uStack_3e0;
  undefined4 uStack_3dc;
  undefined4 uStack_3d8;
  undefined4 local_3d4;
  undefined4 uStack_3d0;
  undefined4 uStack_3cc;
  undefined4 uStack_3c8;
  undefined4 local_3c4;
  undefined4 uStack_3c0;
  undefined4 uStack_3bc;
  undefined4 uStack_3b8;
  undefined4 local_3b4;
  undefined4 local_3b0;
  undefined4 uStack_3ac;
  undefined4 local_3a8;
  undefined4 local_3a4;
  undefined1 auStack_208 [56];
  undefined4 local_1d0;
  
  pcVar3 = *(code **)(param_1 + 0xc);
  uVar4 = *(undefined4 *)(param_1 + 0x18);
  local_3e4 = *(undefined4 *)(param_2 + 4);
  uStack_3e0 = *(undefined4 *)(param_2 + 8);
  uStack_3dc = *(undefined4 *)(param_2 + 0xc);
  uStack_3d8 = *(undefined4 *)(param_2 + 0x10);
  local_3d4 = *(undefined4 *)(param_2 + 0x14);
  uStack_3d0 = *(undefined4 *)(param_2 + 0x18);
  uStack_3cc = *(undefined4 *)(param_2 + 0x1c);
  uStack_3c8 = *(undefined4 *)(param_2 + 0x20);
  local_3c4 = *(undefined4 *)(param_2 + 0x24);
  uStack_3c0 = *(undefined4 *)(param_2 + 0x28);
  uStack_3bc = *(undefined4 *)(param_2 + 0x2c);
  uStack_3b8 = *(undefined4 *)(param_2 + 0x30);
  local_3b4 = *(undefined4 *)(param_2 + 0x34);
  local_3b0 = *(undefined4 *)(param_2 + 0x38);
  uStack_3ac = *(undefined4 *)(param_2 + 0x3c);
  local_3a8 = *(undefined4 *)(param_2 + 0x40);
  iVar6 = 0;
  local_3e8 = 0;
  while( true ) {
    iVar1 = FUN_00028860(param_1,local_3a8);
    if (param_3 == 0) {
      uVar5 = 9;
    }
    else {
      uVar5 = 10;
    }
    if (iVar1 == 0) {
      *(undefined4 *)(param_1 + 0x14) = local_3a8;
      memcpy(auStack_208,&local_3e8,0x1e0);
      iVar6 = (**(code **)(param_1 + 0x10))(uVar5,param_1,auStack_208);
      local_3a4 = local_1d0;
    }
    else {
      uVar5 = uVar5 | 0x10;
      local_3a4 = local_3b0;
    }
    iVar2 = (*pcVar3)(1,uVar5,param_1,param_1,&local_3e8,uVar4);
    if (iVar2 != 0) {
      return 9;
    }
    if (iVar1 != 0) {
      return iVar1;
    }
    memcpy(&local_3e8,auStack_208,0x1e0);
    if (iVar6 != 8) break;
    param_3 = 0;
  }
  if (iVar6 == 7) {
    FUN_00028962(0,local_3a8);
    restore_core_regs(&local_3e4);
  }
  return 9;
}

// ---- FUN_00028b68  @ 0x28b68
undefined4 FUN_00028b68(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 local_c;
  
  local_c = param_4;
  _Unwind_VRS_Get(param_1,0,param_2,0,&local_c,param_2,param_3);
  return local_c;
}

// ---- FUN_00028bac  @ 0x28bac
void FUN_00028bac(undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 local_c;
  
  local_c = param_3;
  _Unwind_VRS_Set(param_1,0,param_2,0,&local_c,param_2,param_3);
  return;
}

// ---- FUN_000292a4  @ 0x292a4
uint FUN_000292a4(uint *param_1)

{
  char cVar1;
  uint *puVar2;
  uint uVar3;
  
  if ((char)param_1[2] == '\0') {
    if (*(char *)((int)param_1 + 9) == '\0') {
      return 0xb0;
    }
    *(char *)((int)param_1 + 9) = *(char *)((int)param_1 + 9) + -1;
    puVar2 = (uint *)param_1[1];
    param_1[1] = (uint)(puVar2 + 1);
    *param_1 = *puVar2;
    cVar1 = '\x03';
  }
  else {
    cVar1 = (char)param_1[2] + -1;
  }
  *(char *)(param_1 + 2) = cVar1;
  uVar3 = *param_1;
  *param_1 = uVar3 << 8;
  return uVar3 >> 0x18;
}

// ---- FUN_000292d0  @ 0x292d0
undefined4 FUN_000292d0(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 local_c;
  
  local_c = param_4;
  _Unwind_VRS_Get(param_1,0,0xc,0,&local_c,param_2,param_3);
  return local_c;
}

// ---- thunk_FUN_000292d0  @ 0x292e8
undefined4
thunk_FUN_000292d0(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uStack_c;
  
  uStack_c = param_4;
  _Unwind_VRS_Get(param_1,0,0xc,0,&uStack_c,param_2,param_3);
  return uStack_c;
}
