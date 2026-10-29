// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 297 functions

// ---- FUN_007b0058  @ 0x7b0058
undefined4 FUN_007b0058(void)

{
  pthread_once((pthread_once_t *)&DAT_009724a0,(__init_routine *)&LAB_007afcec_1);
  return DAT_0097248c;
}

// ---- FUN_007b007c  @ 0x7b007c
undefined * FUN_007b007c(void)

{
  return &DAT_00881684;
}

// ---- FUN_007b0088  @ 0x7b0088
int FUN_007b0088(int param_1)

{
  bool bVar1;
  int *piVar2;
  void *pvVar3;
  int iVar4;
  uint uVar5;
  int *piVar6;
  uint uVar7;
  
  pvVar3 = *(void **)(param_1 + 4);
  if (pvVar3 != (void *)0x0) {
    uVar5 = *(uint *)(param_1 + 8);
    if (uVar5 != 0) {
      uVar7 = 0;
      do {
        piVar2 = *(int **)((int)pvVar3 + uVar7 * 4);
        if (piVar2 != (int *)0x0) {
          piVar6 = piVar2 + 1;
          DataMemoryBarrier(0x1f);
          do {
            ExclusiveAccess(piVar6);
            iVar4 = *piVar6;
            bVar1 = (bool)hasExclusiveAccess(piVar6);
          } while (!bVar1);
          *piVar6 = iVar4 + -1;
          DataMemoryBarrier(0x1f);
          if (iVar4 == 1) {
            (**(code **)(*piVar2 + 4))();
          }
          pvVar3 = *(void **)(param_1 + 4);
          uVar5 = *(uint *)(param_1 + 8);
        }
        uVar7 = uVar7 + 1;
      } while (uVar7 < uVar5);
      if (pvVar3 == (void *)0x0) goto LAB_007b00d6;
    }
    operator_delete__(pvVar3);
  }
LAB_007b00d6:
  pvVar3 = *(void **)(param_1 + 0xc);
  if (pvVar3 != (void *)0x0) {
    uVar5 = *(uint *)(param_1 + 8);
    if (uVar5 != 0) {
      uVar7 = 0;
      do {
        piVar2 = *(int **)((int)pvVar3 + uVar7 * 4);
        if (piVar2 != (int *)0x0) {
          piVar6 = piVar2 + 1;
          DataMemoryBarrier(0x1f);
          do {
            ExclusiveAccess(piVar6);
            iVar4 = *piVar6;
            bVar1 = (bool)hasExclusiveAccess(piVar6);
          } while (!bVar1);
          *piVar6 = iVar4 + -1;
          DataMemoryBarrier(0x1f);
          if (iVar4 == 1) {
            (**(code **)(*piVar2 + 4))();
          }
          pvVar3 = *(void **)(param_1 + 0xc);
          uVar5 = *(uint *)(param_1 + 8);
        }
        uVar7 = uVar7 + 1;
      } while (uVar7 < uVar5);
      if (pvVar3 == (void *)0x0) goto LAB_007b0120;
    }
    operator_delete__(pvVar3);
  }
LAB_007b0120:
  pvVar3 = *(void **)(param_1 + 0x10);
  if (pvVar3 != (void *)0x0) {
    iVar4 = 0;
    do {
      if (*(void **)((int)pvVar3 + iVar4) != (void *)0x0) {
        operator_delete__(*(void **)((int)pvVar3 + iVar4));
        pvVar3 = *(void **)(param_1 + 0x10);
      }
      iVar4 = iVar4 + 4;
    } while (iVar4 != 0x18);
    if (pvVar3 != (void *)0x0) {
      operator_delete__(pvVar3);
    }
  }
  return param_1;
}

// ---- FUN_007b0164  @ 0x7b0164
undefined4 * FUN_007b0164(undefined4 *param_1,undefined4 *param_2)

{
  bool bVar1;
  int *piVar2;
  int iVar3;
  
  piVar2 = (int *)*param_2;
  DataMemoryBarrier(0x1f);
  do {
    ExclusiveAccess(piVar2);
    bVar1 = (bool)hasExclusiveAccess(piVar2);
  } while (!bVar1);
  *piVar2 = *piVar2 + 1;
  DataMemoryBarrier(0x1f);
  piVar2 = (int *)*param_1;
  DataMemoryBarrier(0x1f);
  do {
    ExclusiveAccess(piVar2);
    iVar3 = *piVar2;
    bVar1 = (bool)hasExclusiveAccess(piVar2);
  } while (!bVar1);
  *piVar2 = iVar3 + -1;
  DataMemoryBarrier(0x1f);
  if ((iVar3 == 1) && (piVar2 != (int *)0x0)) {
    FUN_007b0088(piVar2);
    operator_delete(piVar2);
    *param_1 = *param_2;
    return param_1;
  }
  *param_1 = *param_2;
  return param_1;
}

// ---- FUN_007b01c0  @ 0x7b01c0
undefined4 * FUN_007b01c0(undefined4 *param_1)

{
  bool bVar1;
  int iVar2;
  int *piVar3;
  
  piVar3 = (int *)*param_1;
  DataMemoryBarrier(0x1f);
  do {
    ExclusiveAccess(piVar3);
    iVar2 = *piVar3;
    bVar1 = (bool)hasExclusiveAccess(piVar3);
  } while (!bVar1);
  *piVar3 = iVar2 + -1;
  DataMemoryBarrier(0x1f);
  if ((iVar2 == 1) && (piVar3 != (int *)0x0)) {
    FUN_007b0088(piVar3);
    operator_delete(piVar3);
    return param_1;
  }
  return param_1;
}

// ---- FUN_007b01f8  @ 0x7b01f8
undefined4 * FUN_007b01f8(undefined4 *param_1,int param_2,undefined4 param_3)

{
  undefined4 *puVar1;
  undefined4 *puVar2;
  bool bVar3;
  uint uVar4;
  uint uVar5;
  void *pvVar6;
  char *__s;
  size_t sVar7;
  int iVar8;
  int *piVar9;
  int iVar10;
  
  uVar4 = *(uint *)(param_2 + 8);
  *param_1 = param_3;
  param_1[1] = 0;
  param_1[3] = 0;
  param_1[2] = uVar4;
  uVar5 = uVar4;
  if (uVar4 < 0x1fc00001) {
    uVar5 = uVar4 << 2;
  }
  param_1[4] = 0;
  if (0x1fc00000 < uVar4) {
    uVar5 = 0xffffffff;
  }
  pvVar6 = operator_new__(uVar5);
  uVar5 = param_1[2];
  param_1[1] = pvVar6;
  if (uVar5 != 0) {
    uVar4 = 0;
    while( true ) {
      *(undefined4 *)((int)pvVar6 + uVar4 * 4) = *(undefined4 *)(*(int *)(param_2 + 4) + uVar4 * 4);
      iVar8 = *(int *)(param_1[1] + uVar4 * 4);
      if (iVar8 != 0) {
        piVar9 = (int *)(iVar8 + 4);
        DataMemoryBarrier(0x1f);
        do {
          ExclusiveAccess(piVar9);
          bVar3 = (bool)hasExclusiveAccess(piVar9);
        } while (!bVar3);
        *piVar9 = *piVar9 + 1;
        DataMemoryBarrier(0x1f);
        uVar5 = param_1[2];
      }
      uVar4 = uVar4 + 1;
      if (uVar5 <= uVar4) break;
      pvVar6 = (void *)param_1[1];
    }
    if (0x1fc00000 < uVar5) {
      uVar5 = 0xffffffff;
      goto LAB_007b026c;
    }
  }
  uVar5 = uVar5 << 2;
LAB_007b026c:
  pvVar6 = operator_new__(uVar5);
  uVar5 = param_1[2];
  uVar4 = 0;
  param_1[3] = pvVar6;
  if (uVar5 != 0) {
    while( true ) {
      *(undefined4 *)((int)pvVar6 + uVar4 * 4) =
           *(undefined4 *)(*(int *)(param_2 + 0xc) + uVar4 * 4);
      iVar8 = *(int *)(param_1[3] + uVar4 * 4);
      if (iVar8 != 0) {
        piVar9 = (int *)(iVar8 + 4);
        DataMemoryBarrier(0x1f);
        do {
          ExclusiveAccess(piVar9);
          bVar3 = (bool)hasExclusiveAccess(piVar9);
        } while (!bVar3);
        *piVar9 = *piVar9 + 1;
        DataMemoryBarrier(0x1f);
        uVar5 = param_1[2];
      }
      uVar4 = uVar4 + 1;
      if (uVar5 <= uVar4) break;
      pvVar6 = (void *)param_1[3];
    }
  }
  pvVar6 = operator_new__(0x18);
  iVar8 = 0;
  param_1[4] = pvVar6;
  while( true ) {
    *(undefined4 *)((int)pvVar6 + iVar8) = 0;
    iVar8 = iVar8 + 4;
    if (iVar8 == 0x18) break;
    pvVar6 = (void *)param_1[4];
  }
  iVar8 = 0;
  do {
    __s = *(char **)(*(int *)(param_2 + 0x10) + iVar8);
    if (__s == (char *)0x0) {
      return param_1;
    }
    sVar7 = strlen(__s);
    iVar10 = param_1[4];
    pvVar6 = operator_new__(sVar7 + 1);
    *(void **)(iVar10 + iVar8) = pvVar6;
    puVar1 = (undefined4 *)(param_1[4] + iVar8);
    puVar2 = (undefined4 *)(*(int *)(param_2 + 0x10) + iVar8);
    iVar8 = iVar8 + 4;
    memcpy((void *)*puVar1,(void *)*puVar2,sVar7 + 1);
  } while (iVar8 != 0x18);
  return param_1;
}

// ---- FUN_007b0318  @ 0x7b0318
void FUN_007b0318(int param_1,int *param_2,int param_3)

{
  bool bVar1;
  int iVar2;
  undefined4 *puVar3;
  int extraout_r1;
  int *piVar4;
  uint uVar5;
  
  uVar5 = DAT_00972490 & 1;
  if ((uVar5 == 0) && (iVar2 = __cxa_guard_acquire(&DAT_00972490), iVar2 != 0)) {
    DAT_00972488 = uVar5;
    __cxa_guard_release(&DAT_00972490);
  }
  iVar2 = pthread_mutex_lock((pthread_mutex_t *)&DAT_00972488);
  if (iVar2 != 0) {
    puVar3 = (undefined4 *)__cxa_allocate_exception(4);
    *puVar3 = &DAT_0093d8b8;
                    /* WARNING: Subroutine does not return */
    __cxa_throw(puVar3,&DAT_0093d898,&LAB_00798308_1);
  }
  if (*(int *)(*(int *)(param_1 + 0xc) + param_3 * 4) == 0) {
    piVar4 = param_2 + 1;
    DataMemoryBarrier(0x1f);
    do {
      ExclusiveAccess(piVar4);
      bVar1 = (bool)hasExclusiveAccess(piVar4);
    } while (!bVar1);
    *piVar4 = *piVar4 + 1;
    DataMemoryBarrier(0x1f);
    *(int **)(*(int *)(param_1 + 0xc) + param_3 * 4) = param_2;
  }
  else if (param_2 != (int *)0x0) {
    (**(code **)(*param_2 + 4))(param_2);
  }
  iVar2 = pthread_mutex_unlock((pthread_mutex_t *)&DAT_00972488);
  if (iVar2 != 0) {
    FUN_00798388();
    if (extraout_r1 == -1) {
                    /* WARNING: Subroutine does not return */
      __cxa_call_unexpected();
    }
                    /* WARNING: Subroutine does not return */
    __cxa_end_cleanup();
  }
  return;
}

// ---- FUN_007b03f0  @ 0x7b03f0
int FUN_007b03f0(int *param_1)

{
  bool bVar1;
  int iVar2;
  int iVar3;
  
  iVar2 = DAT_00972484;
  if (*param_1 == 0) {
    DataMemoryBarrier(0x1f);
    do {
      ExclusiveAccess(0x972484);
      bVar1 = (bool)hasExclusiveAccess(0x972484);
    } while (!bVar1);
    iVar3 = DAT_00972484 + 1;
    DataMemoryBarrier(0x1f);
    DAT_00972484 = DAT_00972484 + 1;
    *param_1 = iVar3;
    return iVar2;
  }
  return *param_1 + -1;
}

// ---- FUN_007b042c  @ 0x7b042c
void FUN_007b042c(int param_1,undefined4 param_2,int param_3)

{
  bool bVar1;
  uint uVar2;
  uint uVar3;
  void *pvVar4;
  void *pvVar5;
  int iVar6;
  int iVar7;
  int *piVar8;
  int *piVar9;
  uint uVar10;
  void *pvVar11;
  void *pvVar12;
  
  if (param_3 != 0) {
    uVar2 = FUN_007b03f0(param_2);
    if (*(int *)(param_1 + 8) - 1U < uVar2) {
      uVar10 = uVar2 + 4;
      pvVar11 = *(void **)(param_1 + 4);
      if (uVar10 < 0x1fc00001) {
        uVar3 = uVar10 * 4;
      }
      else {
        uVar3 = 0xffffffff;
      }
      pvVar4 = operator_new__(uVar3);
      iVar7 = 0;
      uVar3 = *(uint *)(param_1 + 8);
      if (uVar3 != 0) {
        do {
          *(undefined4 *)((int)pvVar4 + iVar7) = *(undefined4 *)(*(int *)(param_1 + 4) + iVar7);
          iVar7 = iVar7 + 4;
        } while (iVar7 != uVar3 * 4);
      }
      if (uVar3 < uVar10) {
        iVar7 = 0;
        do {
          *(undefined4 *)((int)pvVar4 + iVar7 + uVar3 * 4) = 0;
          iVar7 = iVar7 + 4;
        } while (iVar7 != ((4 - uVar3) + uVar2) * 4);
      }
      pvVar12 = *(void **)(param_1 + 0xc);
      if (uVar10 < 0x1fc00001) {
        uVar3 = uVar10 * 4;
      }
      else {
        uVar3 = 0xffffffff;
      }
      pvVar5 = operator_new__(uVar3);
      uVar3 = *(uint *)(param_1 + 8);
      iVar7 = 0;
      if (uVar3 != 0) {
        do {
          *(undefined4 *)((int)pvVar5 + iVar7) = *(undefined4 *)(*(int *)(param_1 + 0xc) + iVar7);
          iVar7 = iVar7 + 4;
        } while (iVar7 != uVar3 * 4);
      }
      if (uVar3 < uVar10) {
        iVar7 = 0;
        do {
          *(undefined4 *)((int)pvVar5 + iVar7 + uVar3 * 4) = 0;
          iVar7 = iVar7 + 4;
        } while (iVar7 != ((4 - uVar3) + uVar2) * 4);
      }
      *(uint *)(param_1 + 8) = uVar10;
      *(void **)(param_1 + 4) = pvVar4;
      *(void **)(param_1 + 0xc) = pvVar5;
      if (pvVar11 != (void *)0x0) {
        operator_delete__(pvVar11);
      }
      if (pvVar12 != (void *)0x0) {
        operator_delete__(pvVar12);
      }
    }
    piVar8 = (int *)(param_3 + 4);
    DataMemoryBarrier(0x1f);
    do {
      ExclusiveAccess(piVar8);
      bVar1 = (bool)hasExclusiveAccess(piVar8);
    } while (!bVar1);
    *piVar8 = *piVar8 + 1;
    DataMemoryBarrier(0x1f);
    iVar7 = *(int *)(param_1 + 4);
    piVar8 = *(int **)(iVar7 + uVar2 * 4);
    if (piVar8 != (int *)0x0) {
      piVar9 = piVar8 + 1;
      DataMemoryBarrier(0x1f);
      do {
        ExclusiveAccess(piVar9);
        iVar6 = *piVar9;
        bVar1 = (bool)hasExclusiveAccess(piVar9);
      } while (!bVar1);
      *piVar9 = iVar6 + -1;
      DataMemoryBarrier(0x1f);
      if (iVar6 == 1) {
        (**(code **)(*piVar8 + 4))();
      }
    }
    uVar10 = *(uint *)(param_1 + 8);
    *(int *)(iVar7 + uVar2 * 4) = param_3;
    if (uVar10 != 0) {
      uVar2 = 0;
      do {
        piVar8 = *(int **)(*(int *)(param_1 + 0xc) + uVar2 * 4);
        if (piVar8 != (int *)0x0) {
          piVar9 = piVar8 + 1;
          DataMemoryBarrier(0x1f);
          do {
            ExclusiveAccess(piVar9);
            iVar7 = *piVar9;
            bVar1 = (bool)hasExclusiveAccess(piVar9);
          } while (!bVar1);
          *piVar9 = iVar7 + -1;
          DataMemoryBarrier(0x1f);
          if (iVar7 == 1) {
            (**(code **)(*piVar8 + 4))();
          }
          uVar10 = *(uint *)(param_1 + 8);
          *(undefined4 *)(*(int *)(param_1 + 0xc) + uVar2 * 4) = 0;
        }
        uVar2 = uVar2 + 1;
      } while (uVar2 < uVar10);
      return;
    }
  }
  return;
}

// ---- FUN_007b05d8  @ 0x7b05d8
void FUN_007b05d8(undefined4 param_1,int param_2,undefined4 param_3)

{
  uint uVar1;
  
  uVar1 = FUN_007b03f0(param_3);
  if ((uVar1 <= *(int *)(param_2 + 8) - 1U) && (*(int *)(*(int *)(param_2 + 4) + uVar1 * 4) != 0)) {
    FUN_007b042c(param_1,param_3);
    return;
  }
                    /* WARNING: Subroutine does not return */
  FUN_007c4aa0("locale::_Impl::_M_replace_facet");
}

// ---- FUN_007b0610  @ 0x7b0610
void FUN_007b0610(undefined4 param_1,undefined4 param_2,int *param_3)

{
  int iVar1;
  
  iVar1 = *param_3;
  while (iVar1 != 0) {
    FUN_007b05d8(param_1,param_2);
    param_3 = param_3 + 1;
    iVar1 = *param_3;
  }
  return;
}

// ---- FUN_007b0630  @ 0x7b0630
undefined4 * FUN_007b0630(undefined4 *param_1)

{
  param_1[1] = 0;
  *param_1 = &DAT_0093e7f4;
  param_1[2] = &DAT_0093e7cc;
  param_1[3] = &DAT_0093d910;
  FUN_0079a9bc(param_1 + 3);
  return param_1;
}

// ---- FUN_007b067c  @ 0x7b067c
undefined4 * FUN_007b067c(undefined4 *param_1)

{
  param_1[1] = 0;
  *param_1 = &DAT_0093e7f4;
  param_1[2] = &DAT_0093e7cc;
  param_1[3] = &DAT_0093d910;
  FUN_0079a9bc(param_1 + 3);
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_007b06d0  @ 0x7b06d0
undefined4 * FUN_007b06d0(undefined4 *param_1)

{
  param_1[1] = 0;
  *param_1 = &DAT_0093e8a4;
  param_1[2] = &DAT_0093e87c;
  param_1[3] = &PTR_LAB_00798dec_1_0093d920;
  FUN_0079a9bc(param_1 + 3);
  return param_1;
}

// ---- FUN_007b071c  @ 0x7b071c
undefined4 * FUN_007b071c(undefined4 *param_1)

{
  param_1[1] = 0;
  *param_1 = &DAT_0093e8a4;
  param_1[2] = &DAT_0093e87c;
  param_1[3] = &PTR_LAB_00798dec_1_0093d920;
  FUN_0079a9bc(param_1 + 3);
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_007b0774  @ 0x7b0774
int * FUN_007b0774(int *param_1,int *param_2,undefined4 param_3,undefined4 param_4)

{
  int *piVar1;
  int iVar2;
  int iVar3;
  
  iVar3 = param_2[1];
  *param_1 = iVar3;
  iVar2 = *(int *)(iVar3 + -0xc);
  *(int *)((int)param_1 + iVar2) = param_2[2];
  param_1[1] = 0;
  FUN_007990d4(*(int *)(iVar3 + -0xc) + (int)param_1,param_3,iVar2,iVar3,param_4);
  iVar2 = param_2[3];
  piVar1 = param_1 + 2;
  *piVar1 = iVar2;
  iVar2 = *(int *)(iVar2 + -0xc);
  *(int *)((int)piVar1 + iVar2) = param_2[4];
  FUN_007990d4((int)piVar1 + iVar2,param_3);
  iVar2 = *param_2;
  *param_1 = iVar2;
  *(int *)((int)param_1 + *(int *)(iVar2 + -0xc)) = param_2[5];
  param_1[2] = param_2[6];
  return param_1;
}

// ---- FUN_007b08b4  @ 0x7b08b4
int * FUN_007b08b4(int *param_1,int *param_2)

{
  int *piVar1;
  int iVar2;
  
  iVar2 = param_2[1];
  *param_1 = iVar2;
  *(int *)((int)param_1 + *(int *)(iVar2 + -0xc)) = param_2[2];
  param_1[1] = 0;
  FUN_007990d4(*(int *)(iVar2 + -0xc) + (int)param_1,0);
  iVar2 = param_2[3];
  piVar1 = param_1 + 2;
  *piVar1 = iVar2;
  iVar2 = *(int *)(iVar2 + -0xc);
  *(int *)((int)piVar1 + iVar2) = param_2[4];
  FUN_007990d4((int)piVar1 + iVar2,0);
  iVar2 = *param_2;
  *param_1 = iVar2;
  *(int *)((int)param_1 + *(int *)(iVar2 + -0xc)) = param_2[5];
  param_1[2] = param_2[6];
  return param_1;
}

// ---- FUN_007b09c4  @ 0x7b09c4
int * FUN_007b09c4(int *param_1,int *param_2,undefined4 param_3,undefined4 param_4)

{
  int *piVar1;
  int iVar2;
  int iVar3;
  
  iVar3 = param_2[1];
  *param_1 = iVar3;
  iVar2 = *(int *)(iVar3 + -0xc);
  *(int *)((int)param_1 + iVar2) = param_2[2];
  param_1[1] = 0;
  FUN_00799504(*(int *)(iVar3 + -0xc) + (int)param_1,param_3,iVar2,iVar3,param_4);
  iVar2 = param_2[3];
  piVar1 = param_1 + 2;
  *piVar1 = iVar2;
  iVar2 = *(int *)(iVar2 + -0xc);
  *(int *)((int)piVar1 + iVar2) = param_2[4];
  FUN_00799504((int)piVar1 + iVar2,param_3);
  iVar2 = *param_2;
  *param_1 = iVar2;
  *(int *)((int)param_1 + *(int *)(iVar2 + -0xc)) = param_2[5];
  param_1[2] = param_2[6];
  return param_1;
}

// ---- FUN_007b0b04  @ 0x7b0b04
int * FUN_007b0b04(int *param_1,int *param_2)

{
  int *piVar1;
  int iVar2;
  
  iVar2 = param_2[1];
  *param_1 = iVar2;
  *(int *)((int)param_1 + *(int *)(iVar2 + -0xc)) = param_2[2];
  param_1[1] = 0;
  FUN_00799504(*(int *)(iVar2 + -0xc) + (int)param_1,0);
  iVar2 = param_2[3];
  piVar1 = param_1 + 2;
  *piVar1 = iVar2;
  iVar2 = *(int *)(iVar2 + -0xc);
  *(int *)((int)piVar1 + iVar2) = param_2[4];
  FUN_00799504((int)piVar1 + iVar2,0);
  iVar2 = *param_2;
  *param_1 = iVar2;
  *(int *)((int)param_1 + *(int *)(iVar2 + -0xc)) = param_2[5];
  param_1[2] = param_2[6];
  return param_1;
}

// ---- FUN_007b0cf4  @ 0x7b0cf4
undefined4 * FUN_007b0cf4(undefined4 *param_1,int param_2,byte param_3,int param_4)

{
  if (param_2 == 0) {
    param_3 = 0;
  }
  else {
    param_3 = param_3 & 1;
  }
  param_1[1] = (uint)(param_4 != 0);
  *(byte *)(param_1 + 3) = param_3;
  *param_1 = &PTR_FUN_007af480_1_0093e628;
  param_1[4] = 0;
  param_1[5] = 0;
  if (param_2 == 0) {
    param_2 = _ctype_ + 1;
  }
  param_1[6] = param_2;
  memset((void *)((int)param_1 + 0x1d),0,0x100);
  *(undefined1 *)(param_1 + 7) = 0;
  memset((void *)((int)param_1 + 0x11d),0,0x100);
  *(undefined1 *)((int)param_1 + 0x21d) = 0;
  return param_1;
}

// ---- FUN_007b0e84  @ 0x7b0e84
undefined4 * FUN_007b0e84(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_007b0e84_1_0093ec28;
  FUN_007afcc4();
  return param_1;
}

// ---- FUN_007b0fa4  @ 0x7b0fa4
undefined4 FUN_007b0fa4(undefined4 param_1,int param_2)

{
  undefined1 auStack_c [4];
  
  FUN_007c6a60(param_1,*(undefined4 *)(*(int *)(param_2 + 8) + 8),auStack_c);
  return param_1;
}

// ---- FUN_007b0fbc  @ 0x7b0fbc
undefined4 FUN_007b0fbc(undefined4 param_1,int param_2)

{
  undefined1 auStack_c [4];
  
  FUN_007c6a60(param_1,*(undefined4 *)(*(int *)(param_2 + 8) + 8),auStack_c);
  return param_1;
}

// ---- FUN_007b0fd4  @ 0x7b0fd4
undefined4 FUN_007b0fd4(undefined4 param_1,int param_2)

{
  undefined1 auStack_c [4];
  
  FUN_007bfca0(param_1,*(undefined4 *)(*(int *)(param_2 + 8) + 0x1c),auStack_c);
  return param_1;
}

// ---- FUN_007b0fec  @ 0x7b0fec
undefined4 FUN_007b0fec(undefined4 param_1,int param_2)

{
  undefined1 auStack_c [4];
  
  FUN_007bfca0(param_1,*(undefined4 *)(*(int *)(param_2 + 8) + 0x24),auStack_c);
  return param_1;
}

// ---- FUN_007b1004  @ 0x7b1004
undefined4 FUN_007b1004(undefined4 param_1,int param_2)

{
  undefined1 auStack_c [4];
  
  FUN_007bfca0(param_1,*(undefined4 *)(*(int *)(param_2 + 8) + 0x2c),auStack_c);
  return param_1;
}

// ---- FUN_007b101c  @ 0x7b101c
undefined4 FUN_007b101c(undefined4 param_1,int param_2)

{
  undefined1 auStack_c [4];
  
  FUN_007bfca0(param_1,*(undefined4 *)(*(int *)(param_2 + 8) + 0x1c),auStack_c);
  return param_1;
}

// ---- FUN_007b1034  @ 0x7b1034
undefined4 FUN_007b1034(undefined4 param_1,int param_2)

{
  undefined1 auStack_c [4];
  
  FUN_007bfca0(param_1,*(undefined4 *)(*(int *)(param_2 + 8) + 0x24),auStack_c);
  return param_1;
}

// ---- FUN_007b104c  @ 0x7b104c
undefined4 FUN_007b104c(undefined4 param_1,int param_2)

{
  undefined1 auStack_c [4];
  
  FUN_007bfca0(param_1,*(undefined4 *)(*(int *)(param_2 + 8) + 0x2c),auStack_c);
  return param_1;
}

// ---- FUN_007b1064  @ 0x7b1064
undefined4 FUN_007b1064(undefined4 param_1,int param_2)

{
  undefined1 auStack_c [4];
  
  FUN_007bfca0(param_1,*(undefined4 *)(*(int *)(param_2 + 8) + 0x14),auStack_c);
  return param_1;
}

// ---- FUN_007b107c  @ 0x7b107c
undefined4 FUN_007b107c(undefined4 param_1,int param_2)

{
  undefined1 auStack_c [4];
  
  FUN_007bfca0(param_1,*(undefined4 *)(*(int *)(param_2 + 8) + 0x1c),auStack_c);
  return param_1;
}

// ---- FUN_007b10d4  @ 0x7b10d4
undefined4 * FUN_007b10d4(undefined4 *param_1)

{
  *param_1 = &DAT_0093ed08;
  if (*(char *)(param_1 + 0x1b) != '\0') {
    if ((void *)param_1[2] != (void *)0x0) {
      operator_delete__((void *)param_1[2]);
    }
    if ((void *)param_1[7] != (void *)0x0) {
      operator_delete__((void *)param_1[7]);
    }
    if ((void *)param_1[9] != (void *)0x0) {
      operator_delete__((void *)param_1[9]);
    }
    if ((void *)param_1[0xb] != (void *)0x0) {
      operator_delete__((void *)param_1[0xb]);
    }
  }
  FUN_007afcc4(param_1);
  return param_1;
}

// ---- FUN_007b1160  @ 0x7b1160
void * FUN_007b1160(void *param_1)

{
  FUN_007b10d4();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_007b1174  @ 0x7b1174
undefined4 * FUN_007b1174(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_007b0e84_1_0093ec28;
  FUN_007afcc4();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_007b11c8  @ 0x7b11c8
undefined4 * FUN_007b11c8(undefined4 *param_1)

{
  *param_1 = &PTR_LAB_007b0eb4_1_0093ea38;
  FUN_007afcc4();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_007b121c  @ 0x7b121c
undefined4 * FUN_007b121c(undefined4 *param_1)

{
  *param_1 = &DAT_0093ec58;
  FUN_007afcc4();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_007b12dc  @ 0x7b12dc
undefined4 * FUN_007b12dc(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_007b12dc_1_0093eb38;
  FUN_007acbd8(param_1 + 2);
  FUN_007afcc4(param_1);
  return param_1;
}

// ---- FUN_007b1308  @ 0x7b1308
void * FUN_007b1308(void *param_1)

{
  FUN_007b12dc();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_007b131c  @ 0x7b131c
undefined4 * FUN_007b131c(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_007b131c_1_0093ecd8;
  FUN_007b12dc();
  return param_1;
}

// ---- FUN_007b1484  @ 0x7b1484
undefined4 * FUN_007b1484(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_007b1484_1_0093eb88;
  FUN_007a4eec();
  return param_1;
}

// ---- FUN_007b1654  @ 0x7b1654
undefined4 * FUN_007b1654(undefined4 *param_1,undefined4 param_2,int param_3,int param_4)

{
  wchar_t *__s;
  uint uVar1;
  void *pvVar2;
  size_t sVar3;
  int iVar4;
  undefined *puVar5;
  uint uVar6;
  wchar_t *pwVar7;
  wchar_t *pwVar8;
  undefined1 *puVar9;
  undefined1 auStack_2c [8];
  
  puVar9 = auStack_2c;
  *param_1 = &DAT_00972510;
  __s = (wchar_t *)FUN_007bf988(param_3,param_4,auStack_2c,0);
  uVar6 = param_4 - param_3 >> 1;
  pwVar7 = __s + __s[-3];
  if (uVar6 < 0x1fc00001) {
    uVar1 = uVar6 << 2;
  }
  else {
    uVar1 = 0xffffffff;
  }
  pvVar2 = operator_new__(uVar1);
  pwVar8 = __s;
  while( true ) {
    uVar1 = FUN_007af6d0(param_2,pvVar2,__s,uVar6,pwVar8,puVar9);
    if (uVar6 <= uVar1) {
      uVar6 = uVar1 + 1;
      if (pvVar2 != (void *)0x0) {
        operator_delete__(pvVar2);
      }
      if (uVar6 < 0x1fc00001) {
        uVar1 = uVar6 * 4;
      }
      else {
        uVar1 = 0xffffffff;
      }
      pvVar2 = operator_new__(uVar1);
      uVar1 = FUN_007af6d0(param_2,pvVar2,__s,uVar6);
    }
    FUN_007bf384(param_1,pvVar2,uVar1);
    sVar3 = wcslen(__s);
    if (__s + sVar3 == pwVar7) break;
    puVar5 = (undefined *)*param_1;
    __s = __s + sVar3 + 1;
    iVar4 = *(int *)(puVar5 + -0xc);
    uVar1 = iVar4 + 1;
    if ((*(uint *)(puVar5 + -8) < uVar1) || (0 < *(int *)(puVar5 + -4))) {
      FUN_007bf1f4(param_1,uVar1);
      puVar5 = (undefined *)*param_1;
      iVar4 = *(int *)(puVar5 + -0xc);
    }
    *(undefined4 *)(puVar5 + iVar4 * 4) = 0;
    if (puVar5 != &DAT_00972510) {
      *(undefined4 *)(puVar5 + -4) = 0;
      *(uint *)(puVar5 + -0xc) = uVar1;
      *(undefined4 *)(puVar5 + uVar1 * 4) = 0;
    }
  }
  if (pvVar2 != (void *)0x0) {
    operator_delete__(pvVar2);
  }
  FUN_007bea1c(pwVar8 + -3,auStack_2c);
  return param_1;
}

// ---- FUN_007b1838  @ 0x7b1838
void FUN_007b1838(int *param_1)

{
  (**(code **)(*param_1 + 0xc))();
  return;
}

// ---- FUN_007b1844  @ 0x7b1844
undefined4 FUN_007b1844(undefined4 param_1,int *param_2)

{
  (**(code **)(*param_2 + 0x10))();
  return param_1;
}

// ---- FUN_007b1854  @ 0x7b1854
undefined4 FUN_007b1854(undefined4 param_1,int *param_2)

{
  (**(code **)(*param_2 + 0x14))();
  return param_1;
}

// ---- FUN_007b1864  @ 0x7b1864
undefined4 FUN_007b1864(undefined4 param_1,int *param_2)

{
  (**(code **)(*param_2 + 0x18))();
  return param_1;
}

// ---- FUN_007b1874  @ 0x7b1874
undefined4 FUN_007b1874(undefined4 param_1,int *param_2)

{
  (**(code **)(*param_2 + 0x1c))();
  return param_1;
}

// ---- FUN_007b1884  @ 0x7b1884
void FUN_007b1884(int *param_1)

{
  (**(code **)(*param_1 + 0x20))();
  return;
}

// ---- FUN_007b1890  @ 0x7b1890
undefined4 FUN_007b1890(int *param_1)

{
  undefined4 uVar1;
  
  uVar1 = (**(code **)(*param_1 + 0x24))();
  return uVar1;
}

// ---- FUN_007b18c0  @ 0x7b18c0
undefined4 FUN_007b18c0(int *param_1)

{
  undefined4 uVar1;
  
  uVar1 = (**(code **)(*param_1 + 0x28))();
  return uVar1;
}

// ---- FUN_007b1994  @ 0x7b1994
void FUN_007b1994(int *param_1)

{
  (**(code **)(*param_1 + 0xc))();
  return;
}

// ---- FUN_007b19a0  @ 0x7b19a0
undefined4 FUN_007b19a0(undefined4 param_1,int *param_2)

{
  (**(code **)(*param_2 + 0x10))();
  return param_1;
}

// ---- FUN_007b19b0  @ 0x7b19b0
undefined4 FUN_007b19b0(undefined4 param_1,int *param_2)

{
  (**(code **)(*param_2 + 0x14))();
  return param_1;
}

// ---- FUN_007b19c0  @ 0x7b19c0
undefined4 FUN_007b19c0(undefined4 param_1,int *param_2)

{
  (**(code **)(*param_2 + 0x18))();
  return param_1;
}

// ---- FUN_007b19d0  @ 0x7b19d0
undefined4 FUN_007b19d0(undefined4 param_1,int *param_2)

{
  (**(code **)(*param_2 + 0x1c))();
  return param_1;
}

// ---- FUN_007b19e0  @ 0x7b19e0
void FUN_007b19e0(int *param_1)

{
  (**(code **)(*param_1 + 0x20))();
  return;
}

// ---- FUN_007b19ec  @ 0x7b19ec
undefined4 FUN_007b19ec(int *param_1)

{
  undefined4 uVar1;
  
  uVar1 = (**(code **)(*param_1 + 0x24))();
  return uVar1;
}

// ---- FUN_007b1a1c  @ 0x7b1a1c
undefined4 FUN_007b1a1c(int *param_1)

{
  undefined4 uVar1;
  
  uVar1 = (**(code **)(*param_1 + 0x28))();
  return uVar1;
}

// ---- FUN_007b1c7c  @ 0x7b1c7c
undefined4
FUN_007b1c7c(undefined4 param_1,int *param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5,undefined4 param_6,undefined1 param_7,undefined4 param_8,
            undefined4 param_9,undefined4 param_10)

{
  (**(code **)(*param_2 + 0xc))
            (param_1,param_2,param_3,param_4,param_5,param_6,param_7,param_8,param_9,param_10);
  return param_1;
}

// ---- FUN_007b1d08  @ 0x7b1d08
undefined4
FUN_007b1d08(undefined4 param_1,int *param_2,undefined4 param_3,undefined4 param_4,
            undefined1 param_5,undefined4 param_6,undefined4 param_7,undefined4 param_8)

{
  (**(code **)(*param_2 + 0xc))(param_1,param_2,param_3,param_4,param_5,param_6,param_7,param_8);
  return param_1;
}

// ---- FUN_007b1dd8  @ 0x7b1dd8
void FUN_007b1dd8(int *param_1)

{
  (**(code **)(*param_1 + 0xc))();
  return;
}

// ---- FUN_007b1de4  @ 0x7b1de4
undefined4 FUN_007b1de4(undefined4 param_1,int *param_2)

{
  (**(code **)(*param_2 + 0x10))();
  return param_1;
}

// ---- FUN_007b1df4  @ 0x7b1df4
undefined4 FUN_007b1df4(undefined4 param_1,int *param_2)

{
  (**(code **)(*param_2 + 0x14))();
  return param_1;
}

// ---- FUN_007b1e04  @ 0x7b1e04
undefined4 FUN_007b1e04(undefined4 param_1,int *param_2)

{
  (**(code **)(*param_2 + 0x18))();
  return param_1;
}

// ---- FUN_007b1f2c  @ 0x7b1f2c
undefined4
FUN_007b1f2c(undefined4 param_1,int *param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5,undefined4 param_6,undefined4 param_7,undefined4 param_8,
            undefined4 param_9)

{
  (**(code **)(*param_2 + 0xc))
            (param_1,param_2,param_3,param_4,param_5,param_6,param_7,param_8,param_9);
  return param_1;
}

// ---- FUN_007b1f68  @ 0x7b1f68
undefined4
FUN_007b1f68(undefined4 param_1,int *param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5,undefined4 param_6,undefined4 param_7,undefined4 param_8,
            undefined4 param_9)

{
  (**(code **)(*param_2 + 0x10))
            (param_1,param_2,param_3,param_4,param_5,param_6,param_7,param_8,param_9);
  return param_1;
}

// ---- FUN_007b1fa4  @ 0x7b1fa4
undefined4
FUN_007b1fa4(undefined4 param_1,int *param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5,undefined4 param_6,undefined4 param_7,undefined4 param_8,
            undefined4 param_9)

{
  (**(code **)(*param_2 + 0x14))
            (param_1,param_2,param_3,param_4,param_5,param_6,param_7,param_8,param_9);
  return param_1;
}

// ---- FUN_007b1fe0  @ 0x7b1fe0
undefined4
FUN_007b1fe0(undefined4 param_1,int *param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5,undefined4 param_6,undefined4 param_7,undefined4 param_8,
            undefined4 param_9)

{
  (**(code **)(*param_2 + 0x18))
            (param_1,param_2,param_3,param_4,param_5,param_6,param_7,param_8,param_9);
  return param_1;
}

// ---- FUN_007b201c  @ 0x7b201c
undefined4
FUN_007b201c(undefined4 param_1,int *param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5,undefined4 param_6,undefined4 param_7,undefined4 param_8,
            undefined4 param_9)

{
  (**(code **)(*param_2 + 0x1c))
            (param_1,param_2,param_3,param_4,param_5,param_6,param_7,param_8,param_9);
  return param_1;
}

// ---- FUN_007b2058  @ 0x7b2058
undefined4
FUN_007b2058(undefined4 param_1,int *param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5,undefined4 param_6,undefined4 param_7,undefined4 param_8,
            undefined4 param_9)

{
  (**(code **)(*param_2 + 0x20))
            (param_1,param_2,param_3,param_4,param_5,param_6,param_7,param_8,param_9);
  return param_1;
}

// ---- FUN_007b2094  @ 0x7b2094
undefined4
FUN_007b2094(undefined4 param_1,int *param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5,undefined4 param_6,undefined4 param_7,undefined4 param_8,
            undefined4 param_9)

{
  (**(code **)(*param_2 + 0x24))
            (param_1,param_2,param_3,param_4,param_5,param_6,param_7,param_8,param_9);
  return param_1;
}

// ---- FUN_007b20d0  @ 0x7b20d0
undefined4
FUN_007b20d0(undefined4 param_1,int *param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5,undefined4 param_6,undefined4 param_7,undefined4 param_8,
            undefined4 param_9)

{
  (**(code **)(*param_2 + 0x28))
            (param_1,param_2,param_3,param_4,param_5,param_6,param_7,param_8,param_9);
  return param_1;
}

// ---- FUN_007b210c  @ 0x7b210c
undefined4
FUN_007b210c(undefined4 param_1,int *param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5,undefined4 param_6,undefined4 param_7,undefined4 param_8,
            undefined4 param_9)

{
  (**(code **)(*param_2 + 0x2c))
            (param_1,param_2,param_3,param_4,param_5,param_6,param_7,param_8,param_9);
  return param_1;
}

// ---- FUN_007b2148  @ 0x7b2148
undefined4
FUN_007b2148(undefined4 param_1,int *param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5,undefined4 param_6,undefined4 param_7,undefined4 param_8,
            undefined4 param_9)

{
  (**(code **)(*param_2 + 0x30))
            (param_1,param_2,param_3,param_4,param_5,param_6,param_7,param_8,param_9);
  return param_1;
}

// ---- FUN_007b21c8  @ 0x7b21c8
undefined4
FUN_007b21c8(undefined4 param_1,int *param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5,undefined4 param_6,undefined4 param_7)

{
  (**(code **)(*param_2 + 0xc))(param_1,param_2,param_3,param_4,param_5,param_6,param_7);
  return param_1;
}

// ---- FUN_007b21f4  @ 0x7b21f4
undefined4
FUN_007b21f4(undefined4 param_1,int *param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5,undefined4 param_6,undefined4 param_7)

{
  (**(code **)(*param_2 + 0x10))(param_1,param_2,param_3,param_4,param_5,param_6,param_7);
  return param_1;
}

// ---- FUN_007b2220  @ 0x7b2220
undefined4
FUN_007b2220(undefined4 param_1,int *param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5,undefined4 param_6,undefined4 param_7,undefined4 param_8)

{
  (**(code **)(*param_2 + 0x14))(param_1,param_2,param_3,param_4,param_5,param_6,param_7,param_8);
  return param_1;
}

// ---- FUN_007b2250  @ 0x7b2250
undefined4
FUN_007b2250(undefined4 param_1,int *param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5,undefined4 param_6,undefined4 param_7,undefined4 param_8)

{
  (**(code **)(*param_2 + 0x18))(param_1,param_2,param_3,param_4,param_5,param_6,param_7,param_8);
  return param_1;
}

// ---- FUN_007b2280  @ 0x7b2280
undefined4
FUN_007b2280(undefined4 param_1,int *param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5,undefined4 param_6,undefined4 param_7,undefined4 param_8)

{
  (**(code **)(*param_2 + 0x1c))(param_1,param_2,param_3,param_4,param_5,param_6,param_7,param_8);
  return param_1;
}

// ---- FUN_007b22ac  @ 0x7b22ac
undefined4
FUN_007b22ac(undefined4 param_1,int *param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5,undefined4 param_6,undefined4 param_7,undefined4 param_8)

{
  (**(code **)(*param_2 + 0x20))(param_1,param_2,param_3,param_4,param_5,param_6,param_7,param_8);
  return param_1;
}

// ---- FUN_007b22d8  @ 0x7b22d8
undefined4
FUN_007b22d8(undefined4 param_1,int *param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5,undefined4 param_6,undefined4 param_7)

{
  (**(code **)(*param_2 + 0x24))(param_1,param_2,param_3,param_4,param_5,param_6,param_7);
  return param_1;
}

// ---- FUN_007b2304  @ 0x7b2304
undefined4 * FUN_007b2304(undefined4 *param_1,int param_2)

{
  undefined4 uVar1;
  
  param_1[2] = 0;
  param_1[1] = (uint)(param_2 != 0);
  *param_1 = &DAT_0093eab8;
  uVar1 = FUN_007b007c();
  param_1[4] = uVar1;
  FUN_007acfac(param_1,0);
  return param_1;
}

// ---- FUN_007b2340  @ 0x7b2340
undefined4 * FUN_007b2340(undefined4 *param_1,undefined4 param_2,int param_3)

{
  undefined4 uVar1;
  
  param_1[2] = param_2;
  param_1[1] = (uint)(param_3 != 0);
  *param_1 = &DAT_0093eab8;
  uVar1 = FUN_007b007c();
  param_1[4] = uVar1;
  FUN_007acfac(param_1,0);
  return param_1;
}

// ---- FUN_007b2378  @ 0x7b2378
undefined4 * FUN_007b2378(undefined4 *param_1,undefined4 param_2,char *param_3,int param_4)

{
  char *__s2;
  int iVar1;
  size_t sVar2;
  void *pvVar3;
  
  param_1[1] = (uint)(param_4 != 0);
  param_1[2] = 0;
  *param_1 = &DAT_0093eab8;
  __s2 = (char *)FUN_007b007c();
  iVar1 = strcmp(param_3,__s2);
  if (iVar1 == 0) {
    param_1[4] = __s2;
  }
  else {
    sVar2 = strlen(param_3);
    pvVar3 = operator_new__(sVar2 + 1);
    pvVar3 = memcpy(pvVar3,param_3,sVar2 + 1);
    param_1[4] = pvVar3;
  }
  FUN_007acfac(param_1,param_2);
  return param_1;
}

// ---- FUN_007b2680  @ 0x7b2680
undefined4
FUN_007b2680(undefined4 param_1,int *param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5,undefined4 param_6,undefined4 param_7,undefined4 param_8,
            undefined4 param_9)

{
  (**(code **)(*param_2 + 0xc))
            (param_1,param_2,param_3,param_4,param_5,param_6,param_7,param_8,param_9);
  return param_1;
}

// ---- FUN_007b26bc  @ 0x7b26bc
undefined4
FUN_007b26bc(undefined4 param_1,int *param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5,undefined4 param_6,undefined4 param_7,undefined4 param_8,
            undefined4 param_9)

{
  (**(code **)(*param_2 + 0x10))
            (param_1,param_2,param_3,param_4,param_5,param_6,param_7,param_8,param_9);
  return param_1;
}

// ---- FUN_007b26f8  @ 0x7b26f8
undefined4
FUN_007b26f8(undefined4 param_1,int *param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5,undefined4 param_6,undefined4 param_7,undefined4 param_8,
            undefined4 param_9)

{
  (**(code **)(*param_2 + 0x14))
            (param_1,param_2,param_3,param_4,param_5,param_6,param_7,param_8,param_9);
  return param_1;
}

// ---- FUN_007b2734  @ 0x7b2734
undefined4
FUN_007b2734(undefined4 param_1,int *param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5,undefined4 param_6,undefined4 param_7,undefined4 param_8,
            undefined4 param_9)

{
  (**(code **)(*param_2 + 0x18))
            (param_1,param_2,param_3,param_4,param_5,param_6,param_7,param_8,param_9);
  return param_1;
}

// ---- FUN_007b2770  @ 0x7b2770
undefined4
FUN_007b2770(undefined4 param_1,int *param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5,undefined4 param_6,undefined4 param_7,undefined4 param_8,
            undefined4 param_9)

{
  (**(code **)(*param_2 + 0x1c))
            (param_1,param_2,param_3,param_4,param_5,param_6,param_7,param_8,param_9);
  return param_1;
}

// ---- FUN_007b27c4  @ 0x7b27c4
undefined4 * FUN_007b27c4(undefined4 *param_1,int param_2)

{
  undefined4 uVar1;
  
  param_1[1] = (uint)(param_2 != 0);
  *param_1 = &PTR_FUN_007b12dc_1_0093eb38;
  uVar1 = FUN_007b0058();
  param_1[2] = uVar1;
  return param_1;
}

// ---- FUN_007b2828  @ 0x7b2828
void FUN_007b2828(int *param_1)

{
  (**(code **)(*param_1 + 8))();
  return;
}

// ---- FUN_007b2834  @ 0x7b2834
undefined4 FUN_007b2834(undefined4 param_1,int *param_2)

{
  (**(code **)(*param_2 + 0xc))();
  return param_1;
}

// ---- FUN_007b2850  @ 0x7b2850
void FUN_007b2850(int *param_1)

{
  (**(code **)(*param_1 + 0x10))();
  return;
}

// ---- FUN_007b299c  @ 0x7b299c
undefined4 FUN_007b299c(undefined4 param_1,int *param_2)

{
  (**(code **)(*param_2 + 0xc))();
  return param_1;
}

// ---- FUN_007b29ac  @ 0x7b29ac
void FUN_007b29ac(int *param_1)

{
  (**(code **)(*param_1 + 0x10))();
  return;
}

// ---- FUN_007b2a34  @ 0x7b2a34
void FUN_007b2a34(int *param_1)

{
  uint uVar1;
  int iVar2;
  
  uVar1 = FUN_007b03f0(&DAT_00972480);
  if ((uVar1 < *(uint *)(*param_1 + 8)) &&
     (iVar2 = *(int *)(*(int *)(*param_1 + 4) + uVar1 * 4), iVar2 != 0)) {
    iVar2 = __dynamic_cast(iVar2,&DAT_0093e7a8,&DAT_0093e650,0);
    if (iVar2 != 0) {
      return;
    }
                    /* WARNING: Subroutine does not return */
    __cxa_bad_cast();
  }
                    /* WARNING: Subroutine does not return */
  FUN_007c4874();
}

// ---- FUN_007b2b9c  @ 0x7b2b9c
undefined4 *
FUN_007b2b9c(undefined4 *param_1,undefined4 param_2,int *param_3,int param_4,int *param_5,
            int param_6,int *param_7,int param_8,int param_9,int param_10,int param_11,
            uint *param_12)

{
  int iVar1;
  undefined4 uVar2;
  int extraout_r1;
  int iVar3;
  int iVar4;
  int iVar5;
  bool bVar6;
  bool bVar7;
  undefined8 uVar8;
  undefined8 uVar9;
  
  uVar8 = FUN_007b2a34(param_11 + 0x6c);
  iVar1 = (int)((ulonglong)uVar8 >> 0x20);
  if (param_10 == 2) {
    iVar3 = 10;
  }
  else if (param_10 == 4) {
    iVar3 = 1000;
  }
  else {
    iVar3 = 1;
  }
  iVar4 = 0;
  iVar5 = 0;
  while( true ) {
    bVar6 = true;
    uVar9 = CONCAT44(iVar1,param_4);
    if ((param_3 != (int *)0x0) && (bVar6 = false, uVar9 = CONCAT44(iVar1,param_4), param_4 == -1))
    {
      if ((undefined4 *)param_3[2] < (undefined4 *)param_3[3]) {
        uVar9 = CONCAT44(iVar1,*(undefined4 *)param_3[2]);
      }
      else {
        uVar9 = (**(code **)(*param_3 + 0x24))(param_3);
      }
      bVar6 = (int)uVar9 == -1;
      if (bVar6) {
        param_3 = (int *)0x0;
      }
    }
    uVar2 = (undefined4)((ulonglong)uVar9 >> 0x20);
    param_4 = (int)uVar9;
    bVar7 = true;
    uVar9 = CONCAT44(uVar2,param_6);
    if ((param_5 != (int *)0x0) && (bVar7 = false, uVar9 = CONCAT44(uVar2,param_6), param_6 == -1))
    {
      if ((undefined4 *)param_5[2] < (undefined4 *)param_5[3]) {
        uVar9 = CONCAT44((undefined4 *)param_5[3],*(undefined4 *)param_5[2]);
      }
      else {
        uVar9 = (**(code **)(*param_5 + 0x24))(param_5);
      }
      bVar7 = (int)uVar9 == -1;
      if (bVar7) {
        param_5 = (int *)0x0;
      }
    }
    param_6 = (int)uVar9;
    if (bVar6 == bVar7) break;
    if (iVar5 == param_10) goto LAB_007b2c46;
    if (param_3 == (int *)0x0) {
      iVar1 = -1;
    }
    else {
      iVar1 = param_4;
      if (param_4 == -1) {
        if ((int *)param_3[2] < (int *)param_3[3]) {
          iVar1 = *(int *)param_3[2];
        }
        else {
          iVar1 = (**(code **)(*param_3 + 0x24))(param_3,(int)((ulonglong)uVar9 >> 0x20));
        }
        param_4 = iVar1;
        if (iVar1 == -1) {
          param_3 = (int *)0x0;
          param_4 = -1;
        }
      }
    }
    iVar1 = (**(code **)(*(int *)uVar8 + 0x30))((int *)uVar8,iVar1,0x2a);
    if (9 < (iVar1 - 0x30U & 0xff)) goto LAB_007b2c14;
    iVar4 = (iVar1 - 0x30U) + iVar4 * 10;
    iVar1 = iVar3 * iVar4;
    if ((iVar1 - param_9 != 0 && param_9 <= iVar1) || (iVar1 + iVar3 <= param_8)) goto LAB_007b2c14;
    iVar3 = iVar3 / 10;
    iVar1 = param_8;
    if (param_3 != (int *)0x0) {
      if ((uint)param_3[2] < (uint)param_3[3]) {
        param_3[2] = param_3[2] + 4;
      }
      else {
        (**(code **)(*param_3 + 0x28))(param_3);
        iVar1 = extraout_r1;
      }
      param_4 = -1;
    }
    iVar5 = iVar5 + 1;
  }
  if (iVar5 == param_10) {
LAB_007b2c46:
    *param_7 = iVar4;
    goto LAB_007b2c32;
  }
LAB_007b2c14:
  if (iVar5 == 2 && param_10 == 4) {
    *param_7 = iVar4 + -100;
  }
  else {
    *param_12 = *param_12 | 4;
  }
LAB_007b2c32:
  *param_1 = param_3;
  param_1[1] = param_4;
  return param_1;
}

// ---- FUN_007b2d38  @ 0x7b2d38
undefined4 *
FUN_007b2d38(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
            int *param_5,int param_6,int param_7,uint *param_8,int param_9)

{
  int iVar1;
  uint uVar2;
  int *piVar3;
  uint uVar4;
  bool bVar5;
  int *local_38;
  int iStack_34;
  int *local_30;
  int local_2c;
  int local_28;
  int local_24 [2];
  
  local_30 = (int *)param_3;
  local_2c = param_4;
  FUN_007b2a34(param_7 + 0x6c);
  local_24[0] = 0;
  FUN_007b2b9c(&local_38,param_2,local_30,local_2c,param_5,param_6,&local_28,0,9999,4,param_7,
               local_24);
  local_30 = local_38;
  local_2c = iStack_34;
  if (local_24[0] == 0) {
    if (local_28 < 0) {
      local_28 = local_28 + 100;
    }
    else {
      local_28 = local_28 + -0x76c;
    }
    *(int *)(param_9 + 0x14) = local_28;
  }
  else {
    *param_8 = *param_8 | 4;
  }
  uVar4 = 1;
  piVar3 = local_38;
  if ((local_38 != (int *)0x0) && (uVar4 = (uint)(iStack_34 == -1), iStack_34 == -1)) {
    if ((int *)local_38[2] < (int *)local_38[3]) {
      iStack_34 = *(int *)local_38[2];
    }
    else {
      iStack_34 = (**(code **)(*local_38 + 0x24))(local_38);
    }
    if (iStack_34 == -1) {
      piVar3 = (int *)0x0;
    }
    uVar4 = (uint)(iStack_34 == -1);
  }
  uVar2 = 1;
  if (param_5 != (int *)0x0) {
    if (param_6 == -1) {
      if ((int *)param_5[2] < (int *)param_5[3]) {
        iVar1 = *(int *)param_5[2];
      }
      else {
        iVar1 = (**(code **)(*param_5 + 0x24))();
      }
      uVar2 = (uint)(iVar1 == -1);
    }
    else {
      uVar2 = 0;
    }
  }
  bVar5 = uVar2 == uVar4;
  *param_1 = piVar3;
  if (bVar5) {
    uVar2 = *param_8;
  }
  param_1[1] = iStack_34;
  if (bVar5) {
    *param_8 = uVar2 | 2;
  }
  return param_1;
}

// ---- FUN_007b2e44  @ 0x7b2e44
void FUN_007b2e44(int *param_1)

{
  uint uVar1;
  int iVar2;
  
  uVar1 = FUN_007b03f0(&DAT_009716ac);
  if ((uVar1 < *(uint *)(*param_1 + 8)) &&
     (iVar2 = *(int *)(*(int *)(*param_1 + 4) + uVar1 * 4), iVar2 != 0)) {
    iVar2 = __dynamic_cast(iVar2,&DAT_0093e7a8,&DAT_0093e088,0);
    if (iVar2 != 0) {
      return;
    }
                    /* WARNING: Subroutine does not return */
    __cxa_bad_cast();
  }
                    /* WARNING: Subroutine does not return */
  FUN_007c4874();
}

// ---- FUN_007b2e90  @ 0x7b2e90
void FUN_007b2e90(int *param_1)

{
  uint uVar1;
  int iVar2;
  
  uVar1 = FUN_007b03f0(&DAT_009724d4);
  if ((uVar1 < *(uint *)(*param_1 + 8)) &&
     (iVar2 = *(int *)(*(int *)(*param_1 + 4) + uVar1 * 4), iVar2 != 0)) {
    iVar2 = __dynamic_cast(iVar2,&DAT_0093e7a8,&PTR_PTR_0093ee8c,0);
    if (iVar2 != 0) {
      return;
    }
                    /* WARNING: Subroutine does not return */
    __cxa_bad_cast();
  }
                    /* WARNING: Subroutine does not return */
  FUN_007c4874();
}

// ---- FUN_007b2ed4  @ 0x7b2ed4
void FUN_007b2ed4(int *param_1)

{
  uint uVar1;
  int iVar2;
  
  uVar1 = FUN_007b03f0(&DAT_009724f0);
  if ((uVar1 < *(uint *)(*param_1 + 8)) &&
     (iVar2 = *(int *)(*(int *)(*param_1 + 4) + uVar1 * 4), iVar2 != 0)) {
    iVar2 = __dynamic_cast(iVar2,&DAT_0093e7a8,&PTR_PTR_0093ee3c,0);
    if (iVar2 != 0) {
      return;
    }
                    /* WARNING: Subroutine does not return */
    __cxa_bad_cast();
  }
                    /* WARNING: Subroutine does not return */
  FUN_007c4874();
}

// ---- FUN_007b2f18  @ 0x7b2f18
void FUN_007b2f18(int param_1,undefined4 param_2)

{
  uint *puVar1;
  bool bVar2;
  int *piVar3;
  uint uVar4;
  char *pcVar5;
  void *pvVar6;
  undefined4 uVar7;
  int iVar8;
  undefined1 uVar9;
  int *piVar10;
  int local_40;
  int local_3c;
  int local_38;
  int local_34;
  int local_30;
  int local_2c [2];
  
  *(undefined1 *)(param_1 + 0x124) = 1;
  piVar3 = (int *)FUN_007b2ed4(param_2);
  (**(code **)(*piVar3 + 0x10))(&local_40,piVar3);
  puVar1 = (uint *)(local_40 + -0xc);
  uVar4 = *puVar1;
  *(uint *)(param_1 + 0xc) = uVar4;
  if (puVar1 != &DAT_0097251c) {
    piVar10 = (int *)(local_40 + -4);
    DataMemoryBarrier(0x1f);
    do {
      ExclusiveAccess(piVar10);
      iVar8 = *piVar10;
      bVar2 = (bool)hasExclusiveAccess(piVar10);
    } while (!bVar2);
    *piVar10 = iVar8 + -1;
    DataMemoryBarrier(0x1f);
    if (iVar8 < 1) {
      operator_delete(puVar1);
    }
    uVar4 = *(uint *)(param_1 + 0xc);
  }
  pcVar5 = operator_new__(uVar4);
  (**(code **)(*piVar3 + 0x10))(&local_3c,piVar3);
  FUN_007c527c(&local_3c,pcVar5,*(undefined4 *)(param_1 + 0xc),0);
  if ((undefined4 *)(local_3c + -0xc) != &DAT_0097251c) {
    piVar10 = (int *)(local_3c + -4);
    DataMemoryBarrier(0x1f);
    do {
      ExclusiveAccess(piVar10);
      iVar8 = *piVar10;
      bVar2 = (bool)hasExclusiveAccess(piVar10);
    } while (!bVar2);
    *piVar10 = iVar8 + -1;
    DataMemoryBarrier(0x1f);
    if (iVar8 < 1) {
      operator_delete((undefined4 *)(local_3c + -0xc));
    }
  }
  *(char **)(param_1 + 8) = pcVar5;
  uVar9 = 0;
  if (*(int *)(param_1 + 0xc) != 0) {
    if (*pcVar5 < '\x01') {
      uVar9 = 0;
    }
    else {
      uVar9 = 1;
    }
  }
  iVar8 = *piVar3;
  *(undefined1 *)(param_1 + 0x10) = uVar9;
  (**(code **)(iVar8 + 0x14))(&local_38,piVar3);
  puVar1 = (uint *)(local_38 + -0xc);
  uVar4 = *puVar1;
  *(uint *)(param_1 + 0x18) = uVar4;
  if (puVar1 != &DAT_00972504) {
    piVar10 = (int *)(local_38 + -4);
    DataMemoryBarrier(0x1f);
    do {
      ExclusiveAccess(piVar10);
      iVar8 = *piVar10;
      bVar2 = (bool)hasExclusiveAccess(piVar10);
    } while (!bVar2);
    *piVar10 = iVar8 + -1;
    DataMemoryBarrier(0x1f);
    if (iVar8 < 1) {
      operator_delete(puVar1);
    }
    uVar4 = *(uint *)(param_1 + 0x18);
  }
  if (uVar4 < 0x1fc00001) {
    uVar4 = uVar4 << 2;
  }
  else {
    uVar4 = 0xffffffff;
  }
  pvVar6 = operator_new__(uVar4);
  (**(code **)(*piVar3 + 0x14))(&local_34,piVar3);
  FUN_007be338(&local_34,pvVar6,*(undefined4 *)(param_1 + 0x18),0);
  if ((undefined4 *)(local_34 + -0xc) != &DAT_00972504) {
    piVar10 = (int *)(local_34 + -4);
    DataMemoryBarrier(0x1f);
    do {
      ExclusiveAccess(piVar10);
      iVar8 = *piVar10;
      bVar2 = (bool)hasExclusiveAccess(piVar10);
    } while (!bVar2);
    *piVar10 = iVar8 + -1;
    DataMemoryBarrier(0x1f);
    if (iVar8 < 1) {
      operator_delete((undefined4 *)(local_34 + -0xc));
    }
  }
  iVar8 = *piVar3;
  *(void **)(param_1 + 0x14) = pvVar6;
  (**(code **)(iVar8 + 0x18))(&local_30,piVar3);
  puVar1 = (uint *)(local_30 + -0xc);
  uVar4 = *puVar1;
  *(uint *)(param_1 + 0x20) = uVar4;
  if (puVar1 != &DAT_00972504) {
    piVar10 = (int *)(local_30 + -4);
    DataMemoryBarrier(0x1f);
    do {
      ExclusiveAccess(piVar10);
      iVar8 = *piVar10;
      bVar2 = (bool)hasExclusiveAccess(piVar10);
    } while (!bVar2);
    *piVar10 = iVar8 + -1;
    DataMemoryBarrier(0x1f);
    if (iVar8 < 1) {
      operator_delete(puVar1);
    }
    uVar4 = *(uint *)(param_1 + 0x20);
  }
  if (uVar4 < 0x1fc00001) {
    uVar4 = uVar4 << 2;
  }
  else {
    uVar4 = 0xffffffff;
  }
  pvVar6 = operator_new__(uVar4);
  (**(code **)(*piVar3 + 0x18))(local_2c,piVar3);
  FUN_007be338(local_2c,pvVar6,*(undefined4 *)(param_1 + 0x20),0);
  if ((undefined4 *)(local_2c[0] + -0xc) != &DAT_00972504) {
    piVar10 = (int *)(local_2c[0] + -4);
    DataMemoryBarrier(0x1f);
    do {
      ExclusiveAccess(piVar10);
      iVar8 = *piVar10;
      bVar2 = (bool)hasExclusiveAccess(piVar10);
    } while (!bVar2);
    *piVar10 = iVar8 + -1;
    DataMemoryBarrier(0x1f);
    if (iVar8 < 1) {
      operator_delete((undefined4 *)(local_2c[0] + -0xc));
    }
  }
  iVar8 = *piVar3;
  *(void **)(param_1 + 0x1c) = pvVar6;
  uVar7 = (**(code **)(iVar8 + 8))(piVar3);
  iVar8 = *piVar3;
  *(undefined4 *)(param_1 + 0x24) = uVar7;
  uVar7 = (**(code **)(iVar8 + 0xc))(piVar3);
  *(undefined4 *)(param_1 + 0x28) = uVar7;
  piVar3 = (int *)FUN_007b2a34(param_2);
  (**(code **)(*piVar3 + 0x2c))(piVar3,DAT_0094f574,DAT_0094f574 + 0x24,param_1 + 0x2c);
  (**(code **)(*piVar3 + 0x2c))(piVar3,DAT_0094f570,DAT_0094f570 + 0x1a,param_1 + 0xbc);
  return;
}

// ---- FUN_007b3224  @ 0x7b3224
void FUN_007b3224(int *param_1)

{
  uint uVar1;
  int iVar2;
  
  uVar1 = FUN_007b03f0(&DAT_009724e8);
  if ((uVar1 < *(uint *)(*param_1 + 8)) &&
     (iVar2 = *(int *)(*(int *)(*param_1 + 4) + uVar1 * 4), iVar2 != 0)) {
    iVar2 = __dynamic_cast(iVar2,&DAT_0093e7a8,&DAT_0093eda0,0);
    if (iVar2 != 0) {
      return;
    }
                    /* WARNING: Subroutine does not return */
    __cxa_bad_cast();
  }
                    /* WARNING: Subroutine does not return */
  FUN_007c4874();
}

// ---- FUN_007b3268  @ 0x7b3268
void FUN_007b3268(int *param_1)

{
  uint uVar1;
  int iVar2;
  
  uVar1 = FUN_007b03f0(&DAT_009724ec);
  if ((uVar1 < *(uint *)(*param_1 + 8)) &&
     (iVar2 = *(int *)(*(int *)(*param_1 + 4) + uVar1 * 4), iVar2 != 0)) {
    iVar2 = __dynamic_cast(iVar2,&DAT_0093e7a8,&DAT_0093ee10,0);
    if (iVar2 != 0) {
      return;
    }
                    /* WARNING: Subroutine does not return */
    __cxa_bad_cast();
  }
                    /* WARNING: Subroutine does not return */
  FUN_007c4874();
}

// ---- FUN_007b32ac  @ 0x7b32ac
void FUN_007b32ac(int *param_1)

{
  uint uVar1;
  int iVar2;
  
  uVar1 = FUN_007b03f0(&DAT_009724fc);
  if ((uVar1 < *(uint *)(*param_1 + 8)) &&
     (iVar2 = *(int *)(*(int *)(*param_1 + 4) + uVar1 * 4), iVar2 != 0)) {
    iVar2 = __dynamic_cast(iVar2,&DAT_0093e7a8,&DAT_0093ee60,0);
    if (iVar2 != 0) {
      return;
    }
                    /* WARNING: Subroutine does not return */
    __cxa_bad_cast();
  }
                    /* WARNING: Subroutine does not return */
  FUN_007c4874();
}

// ---- FUN_007b32f0  @ 0x7b32f0
void FUN_007b32f0(int param_1,undefined4 param_2)

{
  uint *puVar1;
  bool bVar2;
  int *piVar3;
  undefined4 uVar4;
  uint uVar5;
  char *pcVar6;
  void *pvVar7;
  int iVar8;
  undefined1 uVar9;
  code *pcVar10;
  int *piVar11;
  int local_58;
  int local_54;
  int local_50;
  int local_4c;
  int local_48;
  int local_44;
  int local_40;
  int local_3c;
  undefined4 local_38;
  undefined4 local_34;
  undefined4 local_30;
  undefined4 local_2c;
  
  *(undefined1 *)(param_1 + 0x6c) = 1;
  piVar3 = (int *)FUN_007b32ac(param_2);
  uVar4 = (**(code **)(*piVar3 + 8))();
  pcVar10 = *(code **)(*piVar3 + 0xc);
  *(undefined4 *)(param_1 + 0x14) = uVar4;
  uVar4 = (*pcVar10)(piVar3);
  pcVar10 = *(code **)(*piVar3 + 0x20);
  *(undefined4 *)(param_1 + 0x18) = uVar4;
  uVar4 = (*pcVar10)(piVar3);
  pcVar10 = *(code **)(*piVar3 + 0x10);
  *(undefined4 *)(param_1 + 0x34) = uVar4;
  (*pcVar10)(&local_58,piVar3);
  puVar1 = (uint *)(local_58 + -0xc);
  uVar5 = *puVar1;
  *(uint *)(param_1 + 0xc) = uVar5;
  if (puVar1 != &DAT_0097251c) {
    piVar11 = (int *)(local_58 + -4);
    DataMemoryBarrier(0x1f);
    do {
      ExclusiveAccess(piVar11);
      iVar8 = *piVar11;
      bVar2 = (bool)hasExclusiveAccess(piVar11);
    } while (!bVar2);
    *piVar11 = iVar8 + -1;
    DataMemoryBarrier(0x1f);
    if (iVar8 < 1) {
      operator_delete(puVar1);
    }
    uVar5 = *(uint *)(param_1 + 0xc);
  }
  pcVar6 = operator_new__(uVar5);
  (**(code **)(*piVar3 + 0x10))(&local_54,piVar3);
  FUN_007c527c(&local_54,pcVar6,*(undefined4 *)(param_1 + 0xc),0);
  if ((undefined4 *)(local_54 + -0xc) != &DAT_0097251c) {
    piVar11 = (int *)(local_54 + -4);
    DataMemoryBarrier(0x1f);
    do {
      ExclusiveAccess(piVar11);
      iVar8 = *piVar11;
      bVar2 = (bool)hasExclusiveAccess(piVar11);
    } while (!bVar2);
    *piVar11 = iVar8 + -1;
    DataMemoryBarrier(0x1f);
    if (iVar8 < 1) {
      operator_delete((undefined4 *)(local_54 + -0xc));
    }
  }
  *(char **)(param_1 + 8) = pcVar6;
  uVar9 = 0;
  if (*(int *)(param_1 + 0xc) != 0) {
    if (*pcVar6 < '\x01') {
      uVar9 = 0;
    }
    else {
      uVar9 = 1;
    }
  }
  iVar8 = *piVar3;
  *(undefined1 *)(param_1 + 0x10) = uVar9;
  (**(code **)(iVar8 + 0x14))(&local_50,piVar3);
  puVar1 = (uint *)(local_50 + -0xc);
  uVar5 = *puVar1;
  *(uint *)(param_1 + 0x20) = uVar5;
  if (puVar1 != &DAT_00972504) {
    piVar11 = (int *)(local_50 + -4);
    DataMemoryBarrier(0x1f);
    do {
      ExclusiveAccess(piVar11);
      iVar8 = *piVar11;
      bVar2 = (bool)hasExclusiveAccess(piVar11);
    } while (!bVar2);
    *piVar11 = iVar8 + -1;
    DataMemoryBarrier(0x1f);
    if (iVar8 < 1) {
      operator_delete(puVar1);
    }
    uVar5 = *(uint *)(param_1 + 0x20);
  }
  if (uVar5 < 0x1fc00001) {
    uVar5 = uVar5 << 2;
  }
  else {
    uVar5 = 0xffffffff;
  }
  pvVar7 = operator_new__(uVar5);
  (**(code **)(*piVar3 + 0x14))(&local_4c,piVar3);
  FUN_007be338(&local_4c,pvVar7,*(undefined4 *)(param_1 + 0x20),0);
  if ((undefined4 *)(local_4c + -0xc) != &DAT_00972504) {
    piVar11 = (int *)(local_4c + -4);
    DataMemoryBarrier(0x1f);
    do {
      ExclusiveAccess(piVar11);
      iVar8 = *piVar11;
      bVar2 = (bool)hasExclusiveAccess(piVar11);
    } while (!bVar2);
    *piVar11 = iVar8 + -1;
    DataMemoryBarrier(0x1f);
    if (iVar8 < 1) {
      operator_delete((undefined4 *)(local_4c + -0xc));
    }
  }
  iVar8 = *piVar3;
  *(void **)(param_1 + 0x1c) = pvVar7;
  (**(code **)(iVar8 + 0x18))(&local_48,piVar3);
  puVar1 = (uint *)(local_48 + -0xc);
  uVar5 = *puVar1;
  *(uint *)(param_1 + 0x28) = uVar5;
  if (puVar1 != &DAT_00972504) {
    piVar11 = (int *)(local_48 + -4);
    DataMemoryBarrier(0x1f);
    do {
      ExclusiveAccess(piVar11);
      iVar8 = *piVar11;
      bVar2 = (bool)hasExclusiveAccess(piVar11);
    } while (!bVar2);
    *piVar11 = iVar8 + -1;
    DataMemoryBarrier(0x1f);
    if (iVar8 < 1) {
      operator_delete(puVar1);
    }
    uVar5 = *(uint *)(param_1 + 0x28);
  }
  if (uVar5 < 0x1fc00001) {
    uVar5 = uVar5 << 2;
  }
  else {
    uVar5 = 0xffffffff;
  }
  pvVar7 = operator_new__(uVar5);
  (**(code **)(*piVar3 + 0x18))(&local_44,piVar3);
  FUN_007be338(&local_44,pvVar7,*(undefined4 *)(param_1 + 0x28),0);
  if ((undefined4 *)(local_44 + -0xc) != &DAT_00972504) {
    piVar11 = (int *)(local_44 + -4);
    DataMemoryBarrier(0x1f);
    do {
      ExclusiveAccess(piVar11);
      iVar8 = *piVar11;
      bVar2 = (bool)hasExclusiveAccess(piVar11);
    } while (!bVar2);
    *piVar11 = iVar8 + -1;
    DataMemoryBarrier(0x1f);
    if (iVar8 < 1) {
      operator_delete((undefined4 *)(local_44 + -0xc));
    }
  }
  iVar8 = *piVar3;
  *(void **)(param_1 + 0x24) = pvVar7;
  (**(code **)(iVar8 + 0x1c))(&local_40,piVar3);
  puVar1 = (uint *)(local_40 + -0xc);
  uVar5 = *puVar1;
  *(uint *)(param_1 + 0x30) = uVar5;
  if (puVar1 != &DAT_00972504) {
    piVar11 = (int *)(local_40 + -4);
    DataMemoryBarrier(0x1f);
    do {
      ExclusiveAccess(piVar11);
      iVar8 = *piVar11;
      bVar2 = (bool)hasExclusiveAccess(piVar11);
    } while (!bVar2);
    *piVar11 = iVar8 + -1;
    DataMemoryBarrier(0x1f);
    if (iVar8 < 1) {
      operator_delete(puVar1);
    }
    uVar5 = *(uint *)(param_1 + 0x30);
  }
  if (uVar5 < 0x1fc00001) {
    uVar5 = uVar5 << 2;
  }
  else {
    uVar5 = 0xffffffff;
  }
  pvVar7 = operator_new__(uVar5);
  (**(code **)(*piVar3 + 0x1c))(&local_3c,piVar3);
  FUN_007be338(&local_3c,pvVar7,*(undefined4 *)(param_1 + 0x30),0);
  if ((undefined4 *)(local_3c + -0xc) != &DAT_00972504) {
    piVar11 = (int *)(local_3c + -4);
    DataMemoryBarrier(0x1f);
    do {
      ExclusiveAccess(piVar11);
      iVar8 = *piVar11;
      bVar2 = (bool)hasExclusiveAccess(piVar11);
    } while (!bVar2);
    *piVar11 = iVar8 + -1;
    DataMemoryBarrier(0x1f);
    if (iVar8 < 1) {
      operator_delete((undefined4 *)(local_3c + -0xc));
    }
  }
  iVar8 = *piVar3;
  *(void **)(param_1 + 0x2c) = pvVar7;
  local_38 = (**(code **)(iVar8 + 0x24))(piVar3);
  *(undefined4 *)(param_1 + 0x38) = local_38;
  local_34 = local_38;
  local_30 = (**(code **)(*piVar3 + 0x28))(piVar3);
  *(undefined4 *)(param_1 + 0x3c) = local_30;
  local_2c = local_30;
  piVar3 = (int *)FUN_007b2a34(param_2);
  (**(code **)(*piVar3 + 0x2c))(piVar3,DAT_0094f578,DAT_0094f578 + 0xb,param_1 + 0x40);
  return;
}

// ---- FUN_007b36e8  @ 0x7b36e8
void FUN_007b36e8(int *param_1)

{
  uint uVar1;
  int iVar2;
  
  uVar1 = FUN_007b03f0(&DAT_00972500);
  if ((uVar1 < *(uint *)(*param_1 + 8)) &&
     (iVar2 = *(int *)(*(int *)(*param_1 + 4) + uVar1 * 4), iVar2 != 0)) {
    iVar2 = __dynamic_cast(iVar2,&DAT_0093e7a8,&DAT_0093edb8,0);
    if (iVar2 != 0) {
      return;
    }
                    /* WARNING: Subroutine does not return */
    __cxa_bad_cast();
  }
                    /* WARNING: Subroutine does not return */
  FUN_007c4874();
}

// ---- FUN_007b372c  @ 0x7b372c
void FUN_007b372c(int param_1,undefined4 param_2)

{
  uint *puVar1;
  bool bVar2;
  int *piVar3;
  undefined4 uVar4;
  uint uVar5;
  char *pcVar6;
  void *pvVar7;
  int iVar8;
  undefined1 uVar9;
  code *pcVar10;
  int *piVar11;
  int local_58;
  int local_54;
  int local_50;
  int local_4c;
  int local_48;
  int local_44;
  int local_40;
  int local_3c;
  undefined4 local_38;
  undefined4 local_34;
  undefined4 local_30;
  undefined4 local_2c;
  
  *(undefined1 *)(param_1 + 0x6c) = 1;
  piVar3 = (int *)FUN_007b36e8(param_2);
  uVar4 = (**(code **)(*piVar3 + 8))();
  pcVar10 = *(code **)(*piVar3 + 0xc);
  *(undefined4 *)(param_1 + 0x14) = uVar4;
  uVar4 = (*pcVar10)(piVar3);
  pcVar10 = *(code **)(*piVar3 + 0x20);
  *(undefined4 *)(param_1 + 0x18) = uVar4;
  uVar4 = (*pcVar10)(piVar3);
  pcVar10 = *(code **)(*piVar3 + 0x10);
  *(undefined4 *)(param_1 + 0x34) = uVar4;
  (*pcVar10)(&local_58,piVar3);
  puVar1 = (uint *)(local_58 + -0xc);
  uVar5 = *puVar1;
  *(uint *)(param_1 + 0xc) = uVar5;
  if (puVar1 != &DAT_0097251c) {
    piVar11 = (int *)(local_58 + -4);
    DataMemoryBarrier(0x1f);
    do {
      ExclusiveAccess(piVar11);
      iVar8 = *piVar11;
      bVar2 = (bool)hasExclusiveAccess(piVar11);
    } while (!bVar2);
    *piVar11 = iVar8 + -1;
    DataMemoryBarrier(0x1f);
    if (iVar8 < 1) {
      operator_delete(puVar1);
    }
    uVar5 = *(uint *)(param_1 + 0xc);
  }
  pcVar6 = operator_new__(uVar5);
  (**(code **)(*piVar3 + 0x10))(&local_54,piVar3);
  FUN_007c527c(&local_54,pcVar6,*(undefined4 *)(param_1 + 0xc),0);
  if ((undefined4 *)(local_54 + -0xc) != &DAT_0097251c) {
    piVar11 = (int *)(local_54 + -4);
    DataMemoryBarrier(0x1f);
    do {
      ExclusiveAccess(piVar11);
      iVar8 = *piVar11;
      bVar2 = (bool)hasExclusiveAccess(piVar11);
    } while (!bVar2);
    *piVar11 = iVar8 + -1;
    DataMemoryBarrier(0x1f);
    if (iVar8 < 1) {
      operator_delete((undefined4 *)(local_54 + -0xc));
    }
  }
  *(char **)(param_1 + 8) = pcVar6;
  uVar9 = 0;
  if (*(int *)(param_1 + 0xc) != 0) {
    if (*pcVar6 < '\x01') {
      uVar9 = 0;
    }
    else {
      uVar9 = 1;
    }
  }
  iVar8 = *piVar3;
  *(undefined1 *)(param_1 + 0x10) = uVar9;
  (**(code **)(iVar8 + 0x14))(&local_50,piVar3);
  puVar1 = (uint *)(local_50 + -0xc);
  uVar5 = *puVar1;
  *(uint *)(param_1 + 0x20) = uVar5;
  if (puVar1 != &DAT_00972504) {
    piVar11 = (int *)(local_50 + -4);
    DataMemoryBarrier(0x1f);
    do {
      ExclusiveAccess(piVar11);
      iVar8 = *piVar11;
      bVar2 = (bool)hasExclusiveAccess(piVar11);
    } while (!bVar2);
    *piVar11 = iVar8 + -1;
    DataMemoryBarrier(0x1f);
    if (iVar8 < 1) {
      operator_delete(puVar1);
    }
    uVar5 = *(uint *)(param_1 + 0x20);
  }
  if (uVar5 < 0x1fc00001) {
    uVar5 = uVar5 << 2;
  }
  else {
    uVar5 = 0xffffffff;
  }
  pvVar7 = operator_new__(uVar5);
  (**(code **)(*piVar3 + 0x14))(&local_4c,piVar3);
  FUN_007be338(&local_4c,pvVar7,*(undefined4 *)(param_1 + 0x20),0);
  if ((undefined4 *)(local_4c + -0xc) != &DAT_00972504) {
    piVar11 = (int *)(local_4c + -4);
    DataMemoryBarrier(0x1f);
    do {
      ExclusiveAccess(piVar11);
      iVar8 = *piVar11;
      bVar2 = (bool)hasExclusiveAccess(piVar11);
    } while (!bVar2);
    *piVar11 = iVar8 + -1;
    DataMemoryBarrier(0x1f);
    if (iVar8 < 1) {
      operator_delete((undefined4 *)(local_4c + -0xc));
    }
  }
  iVar8 = *piVar3;
  *(void **)(param_1 + 0x1c) = pvVar7;
  (**(code **)(iVar8 + 0x18))(&local_48,piVar3);
  puVar1 = (uint *)(local_48 + -0xc);
  uVar5 = *puVar1;
  *(uint *)(param_1 + 0x28) = uVar5;
  if (puVar1 != &DAT_00972504) {
    piVar11 = (int *)(local_48 + -4);
    DataMemoryBarrier(0x1f);
    do {
      ExclusiveAccess(piVar11);
      iVar8 = *piVar11;
      bVar2 = (bool)hasExclusiveAccess(piVar11);
    } while (!bVar2);
    *piVar11 = iVar8 + -1;
    DataMemoryBarrier(0x1f);
    if (iVar8 < 1) {
      operator_delete(puVar1);
    }
    uVar5 = *(uint *)(param_1 + 0x28);
  }
  if (uVar5 < 0x1fc00001) {
    uVar5 = uVar5 << 2;
  }
  else {
    uVar5 = 0xffffffff;
  }
  pvVar7 = operator_new__(uVar5);
  (**(code **)(*piVar3 + 0x18))(&local_44,piVar3);
  FUN_007be338(&local_44,pvVar7,*(undefined4 *)(param_1 + 0x28),0);
  if ((undefined4 *)(local_44 + -0xc) != &DAT_00972504) {
    piVar11 = (int *)(local_44 + -4);
    DataMemoryBarrier(0x1f);
    do {
      ExclusiveAccess(piVar11);
      iVar8 = *piVar11;
      bVar2 = (bool)hasExclusiveAccess(piVar11);
    } while (!bVar2);
    *piVar11 = iVar8 + -1;
    DataMemoryBarrier(0x1f);
    if (iVar8 < 1) {
      operator_delete((undefined4 *)(local_44 + -0xc));
    }
  }
  iVar8 = *piVar3;
  *(void **)(param_1 + 0x24) = pvVar7;
  (**(code **)(iVar8 + 0x1c))(&local_40,piVar3);
  puVar1 = (uint *)(local_40 + -0xc);
  uVar5 = *puVar1;
  *(uint *)(param_1 + 0x30) = uVar5;
  if (puVar1 != &DAT_00972504) {
    piVar11 = (int *)(local_40 + -4);
    DataMemoryBarrier(0x1f);
    do {
      ExclusiveAccess(piVar11);
      iVar8 = *piVar11;
      bVar2 = (bool)hasExclusiveAccess(piVar11);
    } while (!bVar2);
    *piVar11 = iVar8 + -1;
    DataMemoryBarrier(0x1f);
    if (iVar8 < 1) {
      operator_delete(puVar1);
    }
    uVar5 = *(uint *)(param_1 + 0x30);
  }
  if (uVar5 < 0x1fc00001) {
    uVar5 = uVar5 << 2;
  }
  else {
    uVar5 = 0xffffffff;
  }
  pvVar7 = operator_new__(uVar5);
  (**(code **)(*piVar3 + 0x1c))(&local_3c,piVar3);
  FUN_007be338(&local_3c,pvVar7,*(undefined4 *)(param_1 + 0x30),0);
  if ((undefined4 *)(local_3c + -0xc) != &DAT_00972504) {
    piVar11 = (int *)(local_3c + -4);
    DataMemoryBarrier(0x1f);
    do {
      ExclusiveAccess(piVar11);
      iVar8 = *piVar11;
      bVar2 = (bool)hasExclusiveAccess(piVar11);
    } while (!bVar2);
    *piVar11 = iVar8 + -1;
    DataMemoryBarrier(0x1f);
    if (iVar8 < 1) {
      operator_delete((undefined4 *)(local_3c + -0xc));
    }
  }
  iVar8 = *piVar3;
  *(void **)(param_1 + 0x2c) = pvVar7;
  local_38 = (**(code **)(iVar8 + 0x24))(piVar3);
  *(undefined4 *)(param_1 + 0x38) = local_38;
  local_34 = local_38;
  local_30 = (**(code **)(*piVar3 + 0x28))(piVar3);
  *(undefined4 *)(param_1 + 0x3c) = local_30;
  local_2c = local_30;
  piVar3 = (int *)FUN_007b2a34(param_2);
  (**(code **)(*piVar3 + 0x2c))(piVar3,DAT_0094f578,DAT_0094f578 + 0xb,param_1 + 0x40);
  return;
}

// ---- FUN_007b3b24  @ 0x7b3b24
void FUN_007b3b24(int *param_1)

{
  uint uVar1;
  int iVar2;
  
  uVar1 = FUN_007b03f0(&DAT_009724f4);
  if ((uVar1 < *(uint *)(*param_1 + 8)) &&
     (iVar2 = *(int *)(*(int *)(*param_1 + 4) + uVar1 * 4), iVar2 != 0)) {
    iVar2 = __dynamic_cast(iVar2,&DAT_0093e7a8,&DAT_0093ed70,0);
    if (iVar2 != 0) {
      return;
    }
                    /* WARNING: Subroutine does not return */
    __cxa_bad_cast();
  }
                    /* WARNING: Subroutine does not return */
  FUN_007c4874();
}

// ---- FUN_007b3bac  @ 0x7b3bac
void FUN_007b3bac(int *param_1)

{
  uint uVar1;
  int iVar2;
  
  uVar1 = FUN_007b03f0(&DAT_009724e4);
  if ((uVar1 < *(uint *)(*param_1 + 8)) &&
     (iVar2 = *(int *)(*(int *)(*param_1 + 4) + uVar1 * 4), iVar2 != 0)) {
    iVar2 = __dynamic_cast(iVar2,&DAT_0093e7a8,&DAT_0093eeb8,0);
    if (iVar2 != 0) {
      return;
    }
                    /* WARNING: Subroutine does not return */
    __cxa_bad_cast();
  }
                    /* WARNING: Subroutine does not return */
  FUN_007c4874();
}

// ---- FUN_007b3bf0  @ 0x7b3bf0
undefined4 *
FUN_007b3bf0(undefined4 *param_1,undefined4 param_2,int *param_3,char param_4,int param_5,
            undefined4 param_6,undefined4 param_7,byte param_8,byte param_9)

{
  int *piVar1;
  undefined4 uVar2;
  size_t sVar3;
  size_t sVar4;
  undefined4 local_230;
  uint local_22c;
  uint local_228;
  undefined4 local_224;
  wchar_t awStack_220 [128];
  
  piVar1 = (int *)FUN_007b2a34(param_5 + 0x6c);
  uVar2 = FUN_007b3bac(param_5 + 0x6c);
  local_230 = (**(code **)(*piVar1 + 0x28))(piVar1,0x25);
  if (param_9 == 0) {
    local_228 = 0;
    local_22c = (uint)param_8;
  }
  else {
    local_224 = 0;
    local_22c = (uint)param_9;
    local_228 = (uint)param_8;
  }
  FUN_007acf24(uVar2,awStack_220,0x80,&local_230,param_7);
  sVar3 = wcslen(awStack_220);
  if ((param_4 == '\0') &&
     (sVar4 = (**(code **)(*param_3 + 0x30))(param_3,awStack_220,sVar3), sVar3 != sVar4)) {
    param_4 = '\x01';
  }
  *param_1 = param_3;
  *(char *)(param_1 + 1) = param_4;
  return param_1;
}

// ---- FUN_007b3c84  @ 0x7b3c84
void FUN_007b3c84(int *param_1)

{
  uint uVar1;
  int iVar2;
  
  uVar1 = FUN_007b03f0(&DAT_009724e0);
  if ((uVar1 < *(uint *)(*param_1 + 8)) &&
     (iVar2 = *(int *)(*(int *)(*param_1 + 4) + uVar1 * 4), iVar2 != 0)) {
    iVar2 = __dynamic_cast(iVar2,&DAT_0093e7a8,&PTR_PTR_0093ed88,0);
    if (iVar2 != 0) {
      return;
    }
                    /* WARNING: Subroutine does not return */
    __cxa_bad_cast();
  }
                    /* WARNING: Subroutine does not return */
  FUN_007c4874();
}

// ---- FUN_007b3cc8  @ 0x7b3cc8
void FUN_007b3cc8(int *param_1)

{
  uint uVar1;
  int iVar2;
  
  uVar1 = FUN_007b03f0(&DAT_009724dc);
  if ((uVar1 < *(uint *)(*param_1 + 8)) &&
     (iVar2 = *(int *)(*(int *)(*param_1 + 4) + uVar1 * 4), iVar2 != 0)) {
    iVar2 = __dynamic_cast(iVar2,&DAT_0093e7a8,&DAT_0093ed20,0);
    if (iVar2 != 0) {
      return;
    }
                    /* WARNING: Subroutine does not return */
    __cxa_bad_cast();
  }
                    /* WARNING: Subroutine does not return */
  FUN_007c4874();
}

// ---- FUN_007b3d50  @ 0x7b3d50
bool FUN_007b3d50(int *param_1)

{
  uint uVar1;
  int iVar2;
  
  uVar1 = FUN_007b03f0(&DAT_00972480);
  if ((uVar1 < *(uint *)(*param_1 + 8)) &&
     (iVar2 = *(int *)(*(int *)(*param_1 + 4) + uVar1 * 4), iVar2 != 0)) {
    iVar2 = __dynamic_cast(iVar2,&DAT_0093e7a8,&DAT_0093e650,0);
    return iVar2 != 0;
  }
  return false;
}

// ---- FUN_007b3d9c  @ 0x7b3d9c
bool FUN_007b3d9c(int *param_1)

{
  uint uVar1;
  int iVar2;
  
  uVar1 = FUN_007b03f0(&DAT_009716ac);
  if ((uVar1 < *(uint *)(*param_1 + 8)) &&
     (iVar2 = *(int *)(*(int *)(*param_1 + 4) + uVar1 * 4), iVar2 != 0)) {
    iVar2 = __dynamic_cast(iVar2,&DAT_0093e7a8,&DAT_0093e088,0);
    return iVar2 != 0;
  }
  return false;
}

// ---- FUN_007b3de8  @ 0x7b3de8
bool FUN_007b3de8(int *param_1)

{
  uint uVar1;
  int iVar2;
  
  uVar1 = FUN_007b03f0(&DAT_009724d4);
  if ((uVar1 < *(uint *)(*param_1 + 8)) &&
     (iVar2 = *(int *)(*(int *)(*param_1 + 4) + uVar1 * 4), iVar2 != 0)) {
    iVar2 = __dynamic_cast(iVar2,&DAT_0093e7a8,&PTR_PTR_0093ee8c,0);
    return iVar2 != 0;
  }
  return false;
}

// ---- FUN_007b3e70  @ 0x7b3e70
bool FUN_007b3e70(int *param_1)

{
  uint uVar1;
  int iVar2;
  
  uVar1 = FUN_007b03f0(&DAT_009724e8);
  if ((uVar1 < *(uint *)(*param_1 + 8)) &&
     (iVar2 = *(int *)(*(int *)(*param_1 + 4) + uVar1 * 4), iVar2 != 0)) {
    iVar2 = __dynamic_cast(iVar2,&DAT_0093e7a8,&DAT_0093eda0,0);
    return iVar2 != 0;
  }
  return false;
}

// ---- FUN_007b3eb4  @ 0x7b3eb4
bool FUN_007b3eb4(int *param_1)

{
  uint uVar1;
  int iVar2;
  
  uVar1 = FUN_007b03f0(&DAT_009724ec);
  if ((uVar1 < *(uint *)(*param_1 + 8)) &&
     (iVar2 = *(int *)(*(int *)(*param_1 + 4) + uVar1 * 4), iVar2 != 0)) {
    iVar2 = __dynamic_cast(iVar2,&DAT_0093e7a8,&DAT_0093ee10,0);
    return iVar2 != 0;
  }
  return false;
}

// ---- FUN_007b3ef8  @ 0x7b3ef8
bool FUN_007b3ef8(int *param_1)

{
  uint uVar1;
  int iVar2;
  
  uVar1 = FUN_007b03f0(&DAT_00972500);
  if ((uVar1 < *(uint *)(*param_1 + 8)) &&
     (iVar2 = *(int *)(*(int *)(*param_1 + 4) + uVar1 * 4), iVar2 != 0)) {
    iVar2 = __dynamic_cast(iVar2,&DAT_0093e7a8,&DAT_0093edb8,0);
    return iVar2 != 0;
  }
  return false;
}

// ---- FUN_007b40d4  @ 0x7b40d4
void FUN_007b40d4(undefined4 *param_1,undefined4 param_2,byte *param_3,int param_4,
                 undefined4 *param_5,undefined4 *param_6)

{
  byte bVar1;
  undefined4 *puVar2;
  undefined4 *puVar3;
  undefined4 *puVar4;
  byte bVar5;
  int iVar6;
  uint uVar7;
  uint uVar8;
  int iVar9;
  
  iVar9 = 0;
  uVar7 = (uint)*param_3;
  uVar8 = 0;
  while (((int)uVar7 < (int)param_6 - (int)param_5 >> 2 && ('\0' < (char)uVar7))) {
    param_6 = param_6 + -uVar7;
    if (uVar8 < param_4 - 1U) {
      uVar8 = uVar8 + 1;
      uVar7 = (uint)param_3[uVar8];
    }
    else {
      iVar9 = iVar9 + 1;
    }
  }
  puVar2 = param_5;
  puVar3 = param_1;
  if (param_6 != param_5) {
    do {
      puVar4 = puVar2 + 1;
      *puVar3 = *puVar2;
      puVar2 = puVar4;
      puVar3 = puVar3 + 1;
    } while (param_6 != puVar4);
    iVar6 = ((int)param_6 - (int)(param_5 + 1) & 0xfffffffcU) + 4;
    param_5 = (undefined4 *)((int)param_5 + iVar6);
    param_1 = (undefined4 *)((int)param_1 + iVar6);
  }
  while (puVar2 = param_1, iVar9 != 0) {
    while( true ) {
      iVar9 = iVar9 + -1;
      *puVar2 = param_2;
      param_1 = puVar2 + 1;
      bVar1 = param_3[uVar8];
      puVar3 = param_5;
      bVar5 = bVar1;
      if (bVar1 == 0) break;
      do {
        bVar5 = bVar5 - 1;
        puVar2 = puVar2 + 1;
        *puVar2 = *puVar3;
        puVar3 = puVar3 + 1;
      } while (bVar5 != 0);
      iVar6 = (byte)(bVar1 - 1) + 1;
      puVar2 = param_1 + iVar6;
      param_5 = param_5 + iVar6;
      if (iVar9 == 0) goto LAB_007b4174;
    }
  }
LAB_007b4174:
  param_3 = param_3 + uVar8;
  do {
    puVar3 = puVar2;
    if (uVar8 == 0) {
      return;
    }
    while( true ) {
      uVar8 = uVar8 - 1;
      *puVar3 = param_2;
      puVar2 = puVar3 + 1;
      param_3 = param_3 + -1;
      bVar1 = *param_3;
      puVar4 = param_5;
      bVar5 = bVar1;
      if (bVar1 == 0) break;
      do {
        bVar5 = bVar5 - 1;
        puVar3 = puVar3 + 1;
        *puVar3 = *puVar4;
        puVar4 = puVar4 + 1;
      } while (bVar5 != 0);
      iVar9 = (byte)(bVar1 - 1) + 1;
      puVar3 = puVar2 + iVar9;
      param_5 = param_5 + iVar9;
      if (uVar8 == 0) {
        return;
      }
    }
  } while( true );
}

// ---- FUN_007b41c4  @ 0x7b41c4
void FUN_007b41c4(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                 wchar_t *param_5,int param_6,int param_7,int *param_8)

{
  wchar_t *__s1;
  int iVar1;
  
  if (param_5 != (wchar_t *)0x0) {
    iVar1 = (int)param_5 - param_7 >> 2;
    __s1 = (wchar_t *)FUN_007b40d4(param_6,param_4,param_2,param_3,param_7,param_7 + iVar1 * 4);
    wmemcpy(__s1,param_5,*param_8 - iVar1);
    *param_8 = (*param_8 - iVar1) + ((int)__s1 - param_6 >> 2);
    return;
  }
  iVar1 = FUN_007b40d4(param_6,param_4,param_2,param_3,param_7,param_7 + *param_8 * 4);
  *param_8 = iVar1 - param_6 >> 2;
  return;
}

// ---- FUN_007b4238  @ 0x7b4238
void FUN_007b4238(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                 undefined4 param_5,int param_6,int param_7,int *param_8)

{
  int iVar1;
  
  iVar1 = FUN_007b40d4(param_6,param_4,param_2,param_3,param_7,param_7 + *param_8 * 4);
  *param_8 = iVar1 - param_6 >> 2;
  return;
}

// ---- FUN_007b4264  @ 0x7b4264
/* WARNING: Restarted to delay deadcode elimination for space: stack */

undefined4 *
FUN_007b4264(undefined4 *param_1,undefined4 param_2,int *param_3,uint param_4,int param_5,
            undefined4 param_6,undefined4 *param_7)

{
  bool bVar1;
  int *piVar2;
  int iVar3;
  uint uVar4;
  uint uVar5;
  undefined4 *puVar6;
  undefined4 uVar7;
  int iVar8;
  int iVar9;
  int *piVar10;
  uint uVar11;
  uint uVar12;
  undefined1 local_58;
  uint local_54;
  undefined4 *local_50;
  undefined4 local_3c;
  undefined1 uStack_35;
  undefined4 local_34;
  undefined *local_30;
  undefined *local_2c [2];
  
  local_58 = (undefined1)param_4;
  piVar2 = (int *)FUN_007b2a34(param_5 + 0x6c);
  iVar3 = FUN_007b03f0(&DAT_009724fc);
  iVar9 = *(int *)(*(int *)(param_5 + 0x6c) + 0xc);
  iVar8 = *(int *)(iVar9 + iVar3 * 4);
  if (iVar8 == 0) {
    puVar6 = operator_new(0x70);
    puVar6[1] = 0;
    puVar6[2] = 0;
    puVar6[3] = 0;
    *puVar6 = &DAT_0093ed08;
    *(undefined1 *)(puVar6 + 4) = 0;
    puVar6[5] = 0;
    puVar6[6] = 0;
    puVar6[7] = 0;
    puVar6[8] = 0;
    puVar6[9] = 0;
    puVar6[10] = 0;
    puVar6[0xb] = 0;
    puVar6[0xc] = 0;
    puVar6[0xd] = 0;
    *(undefined1 *)(puVar6 + 0xe) = 0;
    *(undefined1 *)((int)puVar6 + 0x39) = 0;
    *(undefined1 *)((int)puVar6 + 0x3a) = 0;
    *(undefined1 *)((int)puVar6 + 0x3b) = 0;
    *(undefined1 *)(puVar6 + 0xf) = 0;
    *(undefined1 *)((int)puVar6 + 0x3d) = 0;
    *(undefined1 *)((int)puVar6 + 0x3e) = 0;
    *(undefined1 *)((int)puVar6 + 0x3f) = 0;
    *(undefined1 *)(puVar6 + 0x1b) = 0;
    FUN_007b32f0(puVar6,param_5 + 0x6c);
    FUN_007b0318(*(undefined4 *)(param_5 + 0x6c),puVar6,iVar3);
    iVar8 = *(int *)(iVar9 + iVar3 * 4);
  }
  piVar10 = (int *)*param_7;
  if (*piVar10 == *(int *)(iVar8 + 0x40)) {
    local_34 = *(undefined4 *)(iVar8 + 0x3c);
    local_50 = *(undefined4 **)(iVar8 + 0x2c);
    local_54 = *(uint *)(iVar8 + 0x30);
    iVar3 = piVar10[-3];
    if (iVar3 != 0) {
      piVar10 = piVar10 + 1;
    }
  }
  else {
    local_34 = *(undefined4 *)(iVar8 + 0x38);
    local_50 = *(undefined4 **)(iVar8 + 0x24);
    local_54 = *(uint *)(iVar8 + 0x28);
    iVar3 = piVar10[-3];
  }
  iVar3 = (**(code **)(*piVar2 + 0x14))(piVar2,4,piVar10,piVar10 + iVar3);
  uVar4 = iVar3 - (int)piVar10 >> 2;
  if (uVar4 == 0) {
LAB_007b42de:
    *(undefined4 *)(param_5 + 8) = 0;
    local_3c = CONCAT31((int3)(param_4 >> 8),local_58);
    *param_1 = param_3;
    param_1[1] = local_3c;
    return param_1;
  }
  local_30 = &DAT_00972510;
  FUN_007bf1f4(&local_30,uVar4 << 1);
  iVar3 = *(int *)(iVar8 + 0x34);
  uVar11 = uVar4 - iVar3;
  if (0 < (int)uVar11) {
    uVar11 = uVar11 & ~(iVar3 >> 0x20);
    if (iVar3 < 0) {
      uVar11 = uVar4;
    }
    if (*(int *)(iVar8 + 0xc) == 0) {
      FUN_007bee98(&local_30,piVar10,uVar11);
      iVar3 = *(int *)(iVar8 + 0x34);
    }
    else {
      FUN_007bed24(&local_30,0,*(undefined4 *)(local_30 + -0xc),uVar11 << 1,0);
      if (-1 < *(int *)(local_30 + -4)) {
        FUN_007beb4c(&local_30);
      }
      iVar3 = FUN_007b40d4(local_30,*(undefined4 *)(iVar8 + 0x18),*(undefined4 *)(iVar8 + 8),
                           *(undefined4 *)(iVar8 + 0xc),piVar10,piVar10 + uVar11);
      if (-1 < *(int *)(local_30 + -4)) {
        FUN_007beb4c(&local_30);
      }
      uVar12 = iVar3 - (int)local_30 >> 2;
      if (*(uint *)(local_30 + -0xc) < uVar12) {
                    /* WARNING: Subroutine does not return */
        FUN_007c4a44("basic_string::erase");
      }
      FUN_007bea54(&local_30,uVar12,*(uint *)(local_30 + -0xc) - uVar12,0);
      iVar3 = *(int *)(iVar8 + 0x34);
    }
  }
  if (0 < iVar3) {
    uVar7 = *(undefined4 *)(iVar8 + 0x14);
    iVar3 = *(int *)(local_30 + -0xc);
    uVar12 = iVar3 + 1;
    if ((*(uint *)(local_30 + -8) < uVar12) || (0 < *(int *)(local_30 + -4))) {
      FUN_007bf1f4(&local_30,uVar12);
      iVar3 = *(int *)(local_30 + -0xc);
    }
    *(undefined4 *)(local_30 + iVar3 * 4) = uVar7;
    if (local_30 != &DAT_00972510) {
      *(uint *)(local_30 + -0xc) = uVar12;
      *(undefined4 *)(local_30 + -4) = 0;
      *(undefined4 *)(local_30 + uVar12 * 4) = 0;
    }
    if ((int)uVar11 < 0) {
      FUN_007bf490(&local_30,-uVar11,*(undefined4 *)(iVar8 + 0x44));
      FUN_007bf384(&local_30,piVar10,uVar4);
    }
    else {
      FUN_007bf384(&local_30,piVar10 + uVar11,*(undefined4 *)(iVar8 + 0x34));
    }
  }
  uVar4 = *(uint *)(param_5 + 0xc) & 0xb0;
  iVar3 = 0;
  if ((*(uint *)(param_5 + 0xc) & 0x200) != 0) {
    iVar3 = *(int *)(iVar8 + 0x20);
  }
  uVar11 = *(int *)(local_30 + -0xc) + local_54 + iVar3;
  local_2c[0] = &DAT_00972510;
  FUN_007bf1f4(local_2c,uVar11 * 2);
  uVar12 = *(uint *)(param_5 + 8);
  iVar3 = 1;
LAB_007b445a:
  switch((&uStack_35)[iVar3]) {
  case 0:
    if (uVar4 != 0x10 || uVar11 >= uVar12) break;
LAB_007b4494:
    FUN_007bf490(local_2c,uVar12 - uVar11,param_6);
    if (iVar3 != 4) goto LAB_007b447c;
LAB_007b44a2:
    if (1 < local_54) {
      FUN_007bf384(local_2c,local_50 + 1,local_54 - 1);
    }
LAB_007b44b6:
    uVar11 = *(uint *)(local_2c[0] + -0xc);
    if (uVar11 < uVar12) {
      if (uVar4 == 0x20) {
        FUN_007bf490(local_2c,uVar12 - uVar11,param_6);
        uVar11 = uVar12;
      }
      else {
        FUN_007bed24(local_2c,0,0,uVar12 - uVar11,param_6);
        uVar11 = uVar12;
      }
    }
    if (((param_4 & 0xff) == 0) &&
       (uVar4 = (**(code **)(*param_3 + 0x30))(param_3,local_2c[0],uVar11), uVar11 != uVar4)) {
      local_58 = 1;
    }
    if ((undefined4 *)(local_2c[0] + -0xc) != &DAT_00972504) {
      piVar2 = (int *)(local_2c[0] + -4);
      DataMemoryBarrier(0x1f);
      do {
        ExclusiveAccess(piVar2);
        iVar3 = *piVar2;
        bVar1 = (bool)hasExclusiveAccess(piVar2);
      } while (!bVar1);
      *piVar2 = iVar3 + -1;
      DataMemoryBarrier(0x1f);
      if (iVar3 < 1) {
        operator_delete(local_2c[0] + -0xc);
      }
    }
    if ((undefined4 *)(local_30 + -0xc) != &DAT_00972504) {
      piVar2 = (int *)(local_30 + -4);
      DataMemoryBarrier(0x1f);
      do {
        ExclusiveAccess(piVar2);
        iVar3 = *piVar2;
        bVar1 = (bool)hasExclusiveAccess(piVar2);
      } while (!bVar1);
      *piVar2 = iVar3 + -1;
      DataMemoryBarrier(0x1f);
      if (iVar3 < 1) {
        operator_delete(local_30 + -0xc);
      }
    }
    goto LAB_007b42de;
  case 1:
    if (uVar4 == 0x10 && uVar11 < uVar12) goto LAB_007b4494;
    iVar9 = *(int *)(local_2c[0] + -0xc);
    uVar5 = iVar9 + 1;
    if ((*(uint *)(local_2c[0] + -8) < uVar5) || (0 < *(int *)(local_2c[0] + -4))) {
      FUN_007bf1f4(local_2c,uVar5);
      iVar9 = *(int *)(local_2c[0] + -0xc);
    }
    *(undefined4 *)(local_2c[0] + iVar9 * 4) = param_6;
    if (local_2c[0] != &DAT_00972510) {
      *(undefined4 *)(local_2c[0] + -4) = 0;
      *(uint *)(local_2c[0] + -0xc) = uVar5;
      *(undefined4 *)(local_2c[0] + uVar5 * 4) = 0;
    }
    break;
  case 2:
    if (*(int *)(param_5 + 0xc) << 0x16 < 0) {
      FUN_007bf384(local_2c,*(undefined4 *)(iVar8 + 0x1c),*(undefined4 *)(iVar8 + 0x20));
    }
    break;
  case 3:
    if (local_54 == 0) {
      if (iVar3 != 4) goto LAB_007b447c;
      goto LAB_007b44b6;
    }
    FUN_007bf55c(local_2c,*local_50);
    break;
  case 4:
    FUN_007bf274(local_2c,&local_30);
  }
  if (iVar3 == 4) goto LAB_007b44a2;
LAB_007b447c:
  iVar3 = iVar3 + 1;
  goto LAB_007b445a;
}

// ---- FUN_007b46e4  @ 0x7b46e4
/* WARNING: Restarted to delay deadcode elimination for space: stack */

undefined4 *
FUN_007b46e4(undefined4 *param_1,undefined4 param_2,int *param_3,uint param_4,int param_5,
            undefined4 param_6,undefined4 *param_7)

{
  bool bVar1;
  int *piVar2;
  int iVar3;
  uint uVar4;
  uint uVar5;
  undefined4 *puVar6;
  undefined4 uVar7;
  int iVar8;
  int iVar9;
  int *piVar10;
  uint uVar11;
  uint uVar12;
  undefined1 local_58;
  uint local_54;
  undefined4 *local_50;
  undefined4 local_3c;
  undefined1 uStack_35;
  undefined4 local_34;
  undefined *local_30;
  undefined *local_2c [2];
  
  local_58 = (undefined1)param_4;
  piVar2 = (int *)FUN_007b2a34(param_5 + 0x6c);
  iVar3 = FUN_007b03f0(&DAT_00972500);
  iVar9 = *(int *)(*(int *)(param_5 + 0x6c) + 0xc);
  iVar8 = *(int *)(iVar9 + iVar3 * 4);
  if (iVar8 == 0) {
    puVar6 = operator_new(0x70);
    puVar6[1] = 0;
    puVar6[2] = 0;
    puVar6[3] = 0;
    *puVar6 = &DAT_0093ecf8;
    *(undefined1 *)(puVar6 + 4) = 0;
    puVar6[5] = 0;
    puVar6[6] = 0;
    puVar6[7] = 0;
    puVar6[8] = 0;
    puVar6[9] = 0;
    puVar6[10] = 0;
    puVar6[0xb] = 0;
    puVar6[0xc] = 0;
    puVar6[0xd] = 0;
    *(undefined1 *)(puVar6 + 0xe) = 0;
    *(undefined1 *)((int)puVar6 + 0x39) = 0;
    *(undefined1 *)((int)puVar6 + 0x3a) = 0;
    *(undefined1 *)((int)puVar6 + 0x3b) = 0;
    *(undefined1 *)(puVar6 + 0xf) = 0;
    *(undefined1 *)((int)puVar6 + 0x3d) = 0;
    *(undefined1 *)((int)puVar6 + 0x3e) = 0;
    *(undefined1 *)((int)puVar6 + 0x3f) = 0;
    *(undefined1 *)(puVar6 + 0x1b) = 0;
    FUN_007b372c(puVar6,param_5 + 0x6c);
    FUN_007b0318(*(undefined4 *)(param_5 + 0x6c),puVar6,iVar3);
    iVar8 = *(int *)(iVar9 + iVar3 * 4);
  }
  piVar10 = (int *)*param_7;
  if (*piVar10 == *(int *)(iVar8 + 0x40)) {
    local_34 = *(undefined4 *)(iVar8 + 0x3c);
    local_50 = *(undefined4 **)(iVar8 + 0x2c);
    local_54 = *(uint *)(iVar8 + 0x30);
    iVar3 = piVar10[-3];
    if (iVar3 != 0) {
      piVar10 = piVar10 + 1;
    }
  }
  else {
    local_34 = *(undefined4 *)(iVar8 + 0x38);
    local_50 = *(undefined4 **)(iVar8 + 0x24);
    local_54 = *(uint *)(iVar8 + 0x28);
    iVar3 = piVar10[-3];
  }
  iVar3 = (**(code **)(*piVar2 + 0x14))(piVar2,4,piVar10,piVar10 + iVar3);
  uVar4 = iVar3 - (int)piVar10 >> 2;
  if (uVar4 == 0) {
LAB_007b475e:
    *(undefined4 *)(param_5 + 8) = 0;
    local_3c = CONCAT31((int3)(param_4 >> 8),local_58);
    *param_1 = param_3;
    param_1[1] = local_3c;
    return param_1;
  }
  local_30 = &DAT_00972510;
  FUN_007bf1f4(&local_30,uVar4 << 1);
  iVar3 = *(int *)(iVar8 + 0x34);
  uVar11 = uVar4 - iVar3;
  if (0 < (int)uVar11) {
    uVar11 = uVar11 & ~(iVar3 >> 0x20);
    if (iVar3 < 0) {
      uVar11 = uVar4;
    }
    if (*(int *)(iVar8 + 0xc) == 0) {
      FUN_007bee98(&local_30,piVar10,uVar11);
      iVar3 = *(int *)(iVar8 + 0x34);
    }
    else {
      FUN_007bed24(&local_30,0,*(undefined4 *)(local_30 + -0xc),uVar11 << 1,0);
      if (-1 < *(int *)(local_30 + -4)) {
        FUN_007beb4c(&local_30);
      }
      iVar3 = FUN_007b40d4(local_30,*(undefined4 *)(iVar8 + 0x18),*(undefined4 *)(iVar8 + 8),
                           *(undefined4 *)(iVar8 + 0xc),piVar10,piVar10 + uVar11);
      if (-1 < *(int *)(local_30 + -4)) {
        FUN_007beb4c(&local_30);
      }
      uVar12 = iVar3 - (int)local_30 >> 2;
      if (*(uint *)(local_30 + -0xc) < uVar12) {
                    /* WARNING: Subroutine does not return */
        FUN_007c4a44("basic_string::erase");
      }
      FUN_007bea54(&local_30,uVar12,*(uint *)(local_30 + -0xc) - uVar12,0);
      iVar3 = *(int *)(iVar8 + 0x34);
    }
  }
  if (0 < iVar3) {
    uVar7 = *(undefined4 *)(iVar8 + 0x14);
    iVar3 = *(int *)(local_30 + -0xc);
    uVar12 = iVar3 + 1;
    if ((*(uint *)(local_30 + -8) < uVar12) || (0 < *(int *)(local_30 + -4))) {
      FUN_007bf1f4(&local_30,uVar12);
      iVar3 = *(int *)(local_30 + -0xc);
    }
    *(undefined4 *)(local_30 + iVar3 * 4) = uVar7;
    if (local_30 != &DAT_00972510) {
      *(uint *)(local_30 + -0xc) = uVar12;
      *(undefined4 *)(local_30 + -4) = 0;
      *(undefined4 *)(local_30 + uVar12 * 4) = 0;
    }
    if ((int)uVar11 < 0) {
      FUN_007bf490(&local_30,-uVar11,*(undefined4 *)(iVar8 + 0x44));
      FUN_007bf384(&local_30,piVar10,uVar4);
    }
    else {
      FUN_007bf384(&local_30,piVar10 + uVar11,*(undefined4 *)(iVar8 + 0x34));
    }
  }
  uVar4 = *(uint *)(param_5 + 0xc) & 0xb0;
  iVar3 = 0;
  if ((*(uint *)(param_5 + 0xc) & 0x200) != 0) {
    iVar3 = *(int *)(iVar8 + 0x20);
  }
  uVar11 = *(int *)(local_30 + -0xc) + local_54 + iVar3;
  local_2c[0] = &DAT_00972510;
  FUN_007bf1f4(local_2c,uVar11 * 2);
  uVar12 = *(uint *)(param_5 + 8);
  iVar3 = 1;
LAB_007b48da:
  switch((&uStack_35)[iVar3]) {
  case 0:
    if (uVar4 != 0x10 || uVar11 >= uVar12) break;
LAB_007b4914:
    FUN_007bf490(local_2c,uVar12 - uVar11,param_6);
    if (iVar3 != 4) goto LAB_007b48fc;
LAB_007b4922:
    if (1 < local_54) {
      FUN_007bf384(local_2c,local_50 + 1,local_54 - 1);
    }
LAB_007b4936:
    uVar11 = *(uint *)(local_2c[0] + -0xc);
    if (uVar11 < uVar12) {
      if (uVar4 == 0x20) {
        FUN_007bf490(local_2c,uVar12 - uVar11,param_6);
        uVar11 = uVar12;
      }
      else {
        FUN_007bed24(local_2c,0,0,uVar12 - uVar11,param_6);
        uVar11 = uVar12;
      }
    }
    if (((param_4 & 0xff) == 0) &&
       (uVar4 = (**(code **)(*param_3 + 0x30))(param_3,local_2c[0],uVar11), uVar11 != uVar4)) {
      local_58 = 1;
    }
    if ((undefined4 *)(local_2c[0] + -0xc) != &DAT_00972504) {
      piVar2 = (int *)(local_2c[0] + -4);
      DataMemoryBarrier(0x1f);
      do {
        ExclusiveAccess(piVar2);
        iVar3 = *piVar2;
        bVar1 = (bool)hasExclusiveAccess(piVar2);
      } while (!bVar1);
      *piVar2 = iVar3 + -1;
      DataMemoryBarrier(0x1f);
      if (iVar3 < 1) {
        operator_delete(local_2c[0] + -0xc);
      }
    }
    if ((undefined4 *)(local_30 + -0xc) != &DAT_00972504) {
      piVar2 = (int *)(local_30 + -4);
      DataMemoryBarrier(0x1f);
      do {
        ExclusiveAccess(piVar2);
        iVar3 = *piVar2;
        bVar1 = (bool)hasExclusiveAccess(piVar2);
      } while (!bVar1);
      *piVar2 = iVar3 + -1;
      DataMemoryBarrier(0x1f);
      if (iVar3 < 1) {
        operator_delete(local_30 + -0xc);
      }
    }
    goto LAB_007b475e;
  case 1:
    if (uVar4 == 0x10 && uVar11 < uVar12) goto LAB_007b4914;
    iVar9 = *(int *)(local_2c[0] + -0xc);
    uVar5 = iVar9 + 1;
    if ((*(uint *)(local_2c[0] + -8) < uVar5) || (0 < *(int *)(local_2c[0] + -4))) {
      FUN_007bf1f4(local_2c,uVar5);
      iVar9 = *(int *)(local_2c[0] + -0xc);
    }
    *(undefined4 *)(local_2c[0] + iVar9 * 4) = param_6;
    if (local_2c[0] != &DAT_00972510) {
      *(undefined4 *)(local_2c[0] + -4) = 0;
      *(uint *)(local_2c[0] + -0xc) = uVar5;
      *(undefined4 *)(local_2c[0] + uVar5 * 4) = 0;
    }
    break;
  case 2:
    if (*(int *)(param_5 + 0xc) << 0x16 < 0) {
      FUN_007bf384(local_2c,*(undefined4 *)(iVar8 + 0x1c),*(undefined4 *)(iVar8 + 0x20));
    }
    break;
  case 3:
    if (local_54 == 0) {
      if (iVar3 != 4) goto LAB_007b48fc;
      goto LAB_007b4936;
    }
    FUN_007bf55c(local_2c,*local_50);
    break;
  case 4:
    FUN_007bf274(local_2c,&local_30);
  }
  if (iVar3 == 4) goto LAB_007b4922;
LAB_007b48fc:
  iVar3 = iVar3 + 1;
  goto LAB_007b48da;
}

// ---- FUN_007b4b64  @ 0x7b4b64
undefined4
FUN_007b4b64(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
            byte param_5,int param_6,undefined4 param_7)

{
  bool bVar1;
  int *piVar2;
  int iVar3;
  undefined1 auStack_198 [324];
  uint local_54;
  undefined4 local_50;
  undefined1 *local_4c;
  undefined4 local_48;
  undefined4 uStack_44;
  undefined1 auStack_3c [4];
  undefined1 auStack_38 [4];
  int local_34 [2];
  
  local_54 = (uint)param_5;
  local_50 = param_2;
  local_48 = param_3;
  uStack_44 = param_4;
  FUN_007afd04(auStack_38,param_6 + 0x6c);
  piVar2 = (int *)FUN_007b2a34(auStack_38);
  local_34[0] = FUN_007b0058();
  iVar3 = FUN_0079b3f0(local_34,auStack_198,0,"%.*Lf",0);
  local_4c = auStack_3c;
  FUN_007bea00(local_34,iVar3,0,auStack_3c);
  if (-1 < *(int *)(local_34[0] + -4)) {
    FUN_007beb4c(local_34);
  }
  (**(code **)(*piVar2 + 0x2c))(piVar2,auStack_198,auStack_198 + iVar3,local_34[0]);
  if (local_54 == 0) {
    FUN_007b46e4(param_1,local_50,local_48,uStack_44,param_6,param_7,local_34);
  }
  else {
    FUN_007b4264(param_1,local_50,local_48,uStack_44,param_6,param_7,local_34);
  }
  if ((undefined4 *)(local_34[0] + -0xc) != &DAT_00972504) {
    piVar2 = (int *)(local_34[0] + -4);
    DataMemoryBarrier(0x1f);
    do {
      ExclusiveAccess(piVar2);
      iVar3 = *piVar2;
      bVar1 = (bool)hasExclusiveAccess(piVar2);
    } while (!bVar1);
    *piVar2 = iVar3 + -1;
    DataMemoryBarrier(0x1f);
    if (iVar3 < 1) {
      operator_delete((undefined4 *)(local_34[0] + -0xc));
    }
  }
  FUN_007b01c0(auStack_38);
  return param_1;
}

// ---- FUN_007b4c98  @ 0x7b4c98
undefined4
FUN_007b4c98(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
            char param_5,undefined4 param_6,undefined4 param_7,undefined4 param_8)

{
  if (param_5 == '\0') {
    FUN_007b46e4();
    return param_1;
  }
  FUN_007b4264(param_1,param_2,param_3,param_4,param_6,param_7,param_8);
  return param_1;
}

// ---- FUN_007b4cd0  @ 0x7b4cd0
void FUN_007b4cd0(int param_1,wchar_t param_2,wchar_t *param_3,wchar_t *param_4,int param_5,
                 size_t param_6)

{
  int *piVar1;
  wchar_t wVar2;
  wchar_t wVar3;
  wchar_t *__s;
  uint uVar4;
  int iVar5;
  size_t __n;
  int iVar6;
  
  uVar4 = *(uint *)(param_1 + 0xc) & 0xb0;
  __n = param_5 - param_6;
  if (uVar4 == 0x20) {
    wmemcpy(param_3,param_4,param_6);
    wmemset(param_3 + param_6,param_2,__n);
    return;
  }
  if (uVar4 == 0x10) {
    piVar1 = (int *)FUN_007b2a34(param_1 + 0x6c);
    wVar2 = (**(code **)(*piVar1 + 0x28))(piVar1,0x2d);
    wVar3 = *param_4;
    if (wVar3 != wVar2) {
      wVar2 = (**(code **)(*piVar1 + 0x28))(piVar1,0x2b);
      wVar3 = *param_4;
      if (wVar3 != wVar2) {
        wVar2 = (**(code **)(*piVar1 + 0x28))(piVar1,0x30);
        if (((*param_4 == wVar2) && (1 < (int)param_6)) &&
           ((wVar2 = (**(code **)(*piVar1 + 0x28))(piVar1,0x78), param_4[1] == wVar2 ||
            (wVar2 = (**(code **)(*piVar1 + 0x28))(piVar1,0x58), param_4[1] == wVar2)))) {
          iVar5 = 8;
          iVar6 = 2;
          *param_3 = *param_4;
          param_3[1] = param_4[1];
          __s = param_3 + 2;
          goto LAB_007b4cf4;
        }
        goto LAB_007b4cf0;
      }
    }
    __s = param_3 + 1;
    *param_3 = wVar3;
    iVar5 = 4;
    iVar6 = 1;
  }
  else {
LAB_007b4cf0:
    iVar5 = 0;
    iVar6 = 0;
    __s = param_3;
  }
LAB_007b4cf4:
  wmemset(__s,param_2,__n);
  wmemcpy(__s + __n,(wchar_t *)((int)param_4 + iVar5),param_6 - iVar6);
  return;
}

// ---- FUN_007b4db4  @ 0x7b4db4
void FUN_007b4db4(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                 undefined4 param_5,undefined4 param_6,undefined4 *param_7)

{
  FUN_007b4cd0(param_4,param_2,param_5,param_6,param_3,*param_7);
  *param_7 = param_3;
  return;
}

// ---- FUN_007b4dd4  @ 0x7b4dd4
int FUN_007b4dd4(undefined4 *param_1,uint param_2,int param_3,uint param_4,char param_5)

{
  undefined4 *puVar1;
  uint uVar2;
  int iVar3;
  undefined4 *puVar4;
  
  puVar4 = param_1;
  if (param_5 == '\0') {
    if ((param_4 & 0x4a) == 0x40) {
      do {
        puVar4 = puVar4 + -1;
        uVar2 = param_2 & 7;
        param_2 = param_2 >> 3;
        *puVar4 = *(undefined4 *)(param_3 + (uVar2 + 4) * 4);
      } while (param_2 != 0);
    }
    else {
      if ((param_4 & 0x4000) == 0) {
        iVar3 = 4;
        puVar1 = param_1 + -1;
      }
      else {
        iVar3 = 0x14;
        puVar1 = param_1 + -1;
      }
      do {
        puVar4 = puVar1;
        uVar2 = param_2 & 0xf;
        param_2 = param_2 >> 4;
        *puVar4 = *(undefined4 *)(param_3 + (uVar2 + iVar3) * 4);
        puVar1 = puVar4 + -1;
      } while (param_2 != 0);
    }
  }
  else {
    do {
      puVar4 = puVar4 + -1;
      uVar2 = param_2 / 10;
      *puVar4 = *(undefined4 *)(param_3 + (param_2 % 10 + 4) * 4);
      param_2 = uVar2;
    } while (uVar2 != 0);
  }
  return (int)param_1 - (int)puVar4 >> 2;
}

// ---- FUN_007b4e54  @ 0x7b4e54
undefined4 *
FUN_007b4e54(undefined4 *param_1,undefined4 param_2,int *param_3,undefined4 param_4,int param_5,
            undefined4 param_6,int param_7)

{
  int *piVar1;
  int iVar2;
  undefined4 *puVar3;
  uint uVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  char cVar8;
  int iVar9;
  uint uVar10;
  int iVar11;
  uint uVar12;
  uint uVar13;
  uint *puVar14;
  uint *puVar15;
  uint *puVar16;
  uint local_a8 [24];
  undefined1 auStack_48 [8];
  uint *local_40;
  undefined4 local_3c;
  int *local_38;
  undefined4 local_34;
  int local_2c [2];
  
  local_3c = param_2;
  local_38 = param_3;
  local_34 = param_4;
  iVar2 = FUN_007b03f0(&DAT_009724f0);
  iVar11 = *(int *)(*(int *)(param_5 + 0x6c) + 0xc);
  iVar9 = *(int *)(iVar11 + iVar2 * 4);
  if (iVar9 == 0) {
    puVar3 = operator_new(0x128);
    puVar3[1] = 0;
    puVar3[2] = 0;
    puVar3[3] = 0;
    *puVar3 = &DAT_0093ed18;
    *(undefined1 *)(puVar3 + 4) = 0;
    puVar3[5] = 0;
    puVar3[6] = 0;
    puVar3[7] = 0;
    puVar3[8] = 0;
    puVar3[9] = 0;
    puVar3[10] = 0;
    *(undefined1 *)(puVar3 + 0x49) = 0;
    FUN_007b2f18(puVar3,param_5 + 0x6c);
    FUN_007b0318(*(undefined4 *)(param_5 + 0x6c),puVar3,iVar2);
    iVar9 = *(int *)(iVar11 + iVar2 * 4);
  }
  uVar12 = *(uint *)(param_5 + 0xc);
  puVar16 = local_a8;
  uVar13 = uVar12 & 0x4a;
  uVar10 = (uint)(uVar13 != 8 && uVar13 != 0x40);
  uVar4 = uVar10;
  if (param_7 != 0) {
    uVar4 = 0;
  }
  local_40 = local_a8 + 4;
  iVar2 = param_7;
  if (uVar4 != 0) {
    iVar2 = 0;
  }
  local_a8[0] = uVar10;
  local_2c[0] = FUN_007b4dd4(auStack_48,iVar2,iVar9 + 0x2c,uVar12);
  puVar15 = local_40 + (0x14 - local_2c[0]);
  if (*(char *)(iVar9 + 0x10) != '\0') {
    uVar5 = *(undefined4 *)(iVar9 + 8);
    uVar6 = *(undefined4 *)(iVar9 + 0xc);
    iVar2 = -(local_2c[0] * 8 + 0x10);
    puVar16 = (uint *)((int)local_a8 + iVar2);
    uVar7 = *(undefined4 *)(iVar9 + 0x28);
    *(uint **)((int)local_a8 + iVar2 + 8) = local_40 + (0x14 - local_2c[0]);
    puVar15 = (uint *)((int)local_a8 + iVar2 + 0x18);
    *(int **)((int)local_a8 + iVar2 + 0xc) = local_2c;
    *(uint **)((int)local_a8 + iVar2 + 4) = puVar15;
    *(int *)((int)local_a8 + iVar2) = param_5;
    local_40 = puVar15;
    FUN_007b4238(local_3c,uVar5,uVar6,uVar7);
    puVar15 = local_40;
  }
  uVar5 = local_3c;
  puVar14 = puVar15;
  if (((uVar10 == 0) && ((uVar12 & 0x200) != 0)) && (param_7 != 0)) {
    if (uVar13 == 0x40) {
      puVar14 = puVar15 + -1;
      *puVar14 = *(uint *)(iVar9 + 0x3c);
      local_2c[0] = local_2c[0] + 1;
    }
    else {
      puVar14 = puVar15 + -2;
      puVar15[-1] = *(uint *)(iVar9 + 0x2c + (2 - ((int)(uVar12 << 0x11) >> 0x1f)) * 4);
      *puVar14 = *(uint *)(iVar9 + 0x3c);
      local_2c[0] = local_2c[0] + 2;
    }
  }
  iVar2 = *(int *)(param_5 + 8);
  puVar15 = puVar14;
  if (local_2c[0] < iVar2) {
    iVar9 = -(iVar2 * 4 + 0xeU & 0xfffffff8);
    puVar15 = (uint *)((int)puVar16 + iVar9 + 0x10);
    *(uint **)((int)puVar16 + iVar9 + 4) = puVar14;
    *(int **)((int)puVar16 + iVar9 + 8) = local_2c;
    *(uint **)((int)puVar16 + iVar9) = puVar15;
    FUN_007b4db4(uVar5,param_6,iVar2,param_5);
  }
  piVar1 = local_38;
  cVar8 = (char)local_34;
  *(undefined4 *)(param_5 + 8) = 0;
  if (((char)local_34 == '\0') &&
     (local_40 = (uint *)local_2c[0],
     iVar2 = (**(code **)(*local_38 + 0x30))(local_38,puVar15,local_2c[0]),
     (uint *)iVar2 != local_40)) {
    cVar8 = '\x01';
  }
  *param_1 = piVar1;
  *(char *)(param_1 + 1) = cVar8;
  return param_1;
}

// ---- FUN_007b5060  @ 0x7b5060
undefined4 *
FUN_007b5060(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
            int param_5,undefined4 param_6,undefined4 param_7)

{
  uint uVar1;
  undefined4 local_2c;
  undefined4 local_28;
  undefined1 uStack_24;
  
  uVar1 = *(uint *)(param_5 + 0xc);
  *(uint *)(param_5 + 0xc) = uVar1 & 0xffffbfb5 | 0x208;
  FUN_007b4e54(&local_28,param_2,param_3,param_4,param_5,param_6,param_7);
  *(uint *)(param_5 + 0xc) = uVar1;
  local_2c = CONCAT31((int3)((uint)param_4 >> 8),uStack_24);
  *param_1 = local_28;
  param_1[1] = local_2c;
  return param_1;
}

// ---- FUN_007b50b8  @ 0x7b50b8
int FUN_007b50b8(undefined4 *param_1,undefined4 param_2,uint param_3,uint param_4,int param_5,
                uint param_6,char param_7)

{
  undefined4 *puVar1;
  int iVar2;
  int extraout_r2;
  undefined4 uVar3;
  uint uVar4;
  undefined4 *puVar5;
  longlong lVar6;
  
  lVar6 = CONCAT44(param_4,param_3);
  puVar5 = param_1;
  if (param_7 == '\0') {
    if ((param_6 & 0x4a) == 0x40) {
      do {
        puVar5 = puVar5 + -1;
        uVar4 = param_3 & 7;
        param_3 = param_3 >> 3 | param_4 << 0x1d;
        param_4 = param_4 >> 3;
        *puVar5 = *(undefined4 *)(param_5 + (uVar4 + 4) * 4);
      } while (param_3 != 0 || param_4 != 0);
    }
    else {
      if ((param_6 & 0x4000) == 0) {
        iVar2 = 4;
        puVar1 = param_1 + -1;
      }
      else {
        iVar2 = 0x14;
        puVar1 = param_1 + -1;
      }
      do {
        puVar5 = puVar1;
        uVar4 = param_3 & 0xf;
        param_3 = param_3 >> 4 | param_4 << 0x1c;
        param_4 = param_4 >> 4;
        *puVar5 = *(undefined4 *)(param_5 + (uVar4 + iVar2) * 4);
        puVar1 = puVar5 + -1;
      } while (param_3 != 0 || param_4 != 0);
    }
  }
  else {
    do {
      uVar3 = (undefined4)((ulonglong)lVar6 >> 0x20);
      puVar5 = puVar5 + -1;
      __aeabi_uldivmod((int)lVar6,uVar3,10,0,param_4);
      *puVar5 = *(undefined4 *)(param_5 + (extraout_r2 + 4) * 4);
      lVar6 = __aeabi_uldivmod((int)lVar6,uVar3,10,0);
    } while (lVar6 != 0);
  }
  return (int)param_1 - (int)puVar5 >> 2;
}

// ---- FUN_007b516c  @ 0x7b516c
undefined4 *
FUN_007b516c(undefined4 *param_1,undefined4 param_2,int *param_3,undefined4 param_4,int param_5,
            undefined4 param_6,uint param_7,uint param_8)

{
  int iVar1;
  undefined4 *puVar2;
  undefined4 uVar3;
  uint uVar4;
  undefined4 uVar5;
  uint uVar6;
  uint uVar7;
  undefined4 uVar8;
  char cVar9;
  int iVar10;
  uint uVar11;
  int iVar12;
  uint uVar13;
  uint uVar14;
  int *piVar15;
  int *piVar16;
  int *piVar17;
  int local_100 [44];
  undefined1 auStack_50 [12];
  int *local_44;
  undefined4 local_40;
  int local_3c;
  int *local_38;
  undefined4 local_34;
  int local_2c [2];
  
  local_40 = param_2;
  local_38 = param_3;
  local_34 = param_4;
  iVar1 = FUN_007b03f0(&DAT_009724f0);
  iVar12 = *(int *)(*(int *)(param_5 + 0x6c) + 0xc);
  iVar10 = *(int *)(iVar12 + iVar1 * 4);
  if (iVar10 == 0) {
    puVar2 = operator_new(0x128);
    puVar2[1] = 0;
    puVar2[2] = 0;
    puVar2[3] = 0;
    *puVar2 = &DAT_0093ed18;
    *(undefined1 *)(puVar2 + 4) = 0;
    puVar2[5] = 0;
    puVar2[6] = 0;
    puVar2[7] = 0;
    puVar2[8] = 0;
    puVar2[9] = 0;
    puVar2[10] = 0;
    *(undefined1 *)(puVar2 + 0x49) = 0;
    FUN_007b2f18(puVar2,param_5 + 0x6c);
    FUN_007b0318(*(undefined4 *)(param_5 + 0x6c),puVar2,iVar1);
    iVar10 = *(int *)(iVar12 + iVar1 * 4);
  }
  uVar13 = *(uint *)(param_5 + 0xc);
  piVar17 = local_100;
  local_100[0] = iVar10 + 0x2c;
  uVar14 = uVar13 & 0x4a;
  uVar11 = (uint)(uVar14 != 8 && uVar14 != 0x40);
  uVar6 = uVar11;
  if ((param_7 | param_8) != 0) {
    uVar6 = 0;
  }
  uVar4 = param_7;
  uVar7 = param_8;
  if (uVar6 != 0) {
    uVar4 = 0;
    uVar7 = 0;
  }
  local_100[1] = uVar13;
  local_100[2] = uVar11;
  local_3c = local_100[0];
  local_2c[0] = FUN_007b50b8(auStack_50,param_7 | param_8,uVar4,uVar7);
  piVar16 = local_100 + (0x2c - local_2c[0]);
  if (*(char *)(iVar10 + 0x10) != '\0') {
    uVar3 = *(undefined4 *)(iVar10 + 8);
    uVar5 = *(undefined4 *)(iVar10 + 0xc);
    iVar1 = -(local_2c[0] * 8 + 0x10);
    piVar17 = (int *)((int)local_100 + iVar1);
    uVar8 = *(undefined4 *)(iVar10 + 0x28);
    *(int **)((int)local_100 + iVar1 + 8) = local_100 + (0x2c - local_2c[0]);
    piVar16 = (int *)((int)local_100 + iVar1 + 0x18);
    *(int **)((int)local_100 + iVar1 + 0xc) = local_2c;
    *(int **)((int)local_100 + iVar1 + 4) = piVar16;
    *(int *)((int)local_100 + iVar1) = param_5;
    local_44 = piVar16;
    FUN_007b4238(local_40,uVar3,uVar5,uVar8);
    piVar16 = local_44;
  }
  iVar1 = local_2c[0];
  piVar15 = piVar16;
  if (((uVar11 == 0) && ((uVar13 & 0x200) != 0)) && (param_8 != 0 || param_7 != 0)) {
    if (uVar14 == 0x40) {
      iVar1 = local_2c[0] + 1;
      piVar15 = piVar16 + -1;
      local_2c[0] = iVar1;
      *piVar15 = *(int *)(iVar10 + 0x3c);
    }
    else {
      iVar1 = local_2c[0] + 2;
      piVar15 = piVar16 + -2;
      local_2c[0] = iVar1;
      piVar16[-1] = *(int *)(local_3c + (2 - ((int)(uVar13 << 0x11) >> 0x1f)) * 4);
      *piVar15 = *(int *)(iVar10 + 0x3c);
    }
  }
  uVar3 = local_40;
  iVar10 = *(int *)(param_5 + 8);
  piVar16 = piVar15;
  if (iVar1 < iVar10) {
    iVar1 = -(iVar10 * 4 + 0xeU & 0xfffffff8);
    piVar16 = (int *)((int)piVar17 + iVar1 + 0x10);
    *(int **)((int)piVar17 + iVar1 + 4) = piVar15;
    *(int **)((int)piVar17 + iVar1 + 8) = local_2c;
    *(int **)((int)piVar17 + iVar1) = piVar16;
    FUN_007b4db4(uVar3,param_6,iVar10,param_5);
    iVar1 = local_2c[0];
  }
  piVar15 = local_38;
  cVar9 = (char)local_34;
  *(undefined4 *)(param_5 + 8) = 0;
  if (((char)local_34 == '\0') &&
     (local_44 = (int *)iVar1, iVar1 = (**(code **)(*local_38 + 0x30))(local_38,piVar16,iVar1),
     (int *)iVar1 != local_44)) {
    cVar9 = '\x01';
  }
  *param_1 = piVar15;
  *(char *)(param_1 + 1) = cVar9;
  return param_1;
}

// ---- FUN_007b5384  @ 0x7b5384
int FUN_007b5384(undefined4 param_1,int *param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  int iVar2;
  undefined4 *puVar3;
  int iVar4;
  
  iVar1 = FUN_007b03f0(&DAT_009724fc);
  iVar4 = *(int *)(*param_2 + 0xc);
  iVar2 = *(int *)(iVar4 + iVar1 * 4);
  if (iVar2 != 0) {
    return iVar2;
  }
  puVar3 = operator_new(0x70);
  puVar3[1] = 0;
  puVar3[2] = 0;
  puVar3[3] = 0;
  *puVar3 = &DAT_0093ed08;
  *(undefined1 *)(puVar3 + 4) = 0;
  puVar3[5] = 0;
  puVar3[6] = 0;
  puVar3[7] = 0;
  puVar3[8] = 0;
  puVar3[9] = 0;
  puVar3[10] = 0;
  puVar3[0xb] = 0;
  puVar3[0xc] = 0;
  puVar3[0xd] = 0;
  *(undefined1 *)(puVar3 + 0xe) = 0;
  *(undefined1 *)((int)puVar3 + 0x39) = 0;
  *(undefined1 *)((int)puVar3 + 0x3a) = 0;
  *(undefined1 *)((int)puVar3 + 0x3b) = 0;
  *(undefined1 *)(puVar3 + 0xf) = 0;
  *(undefined1 *)((int)puVar3 + 0x3d) = 0;
  *(undefined1 *)((int)puVar3 + 0x3e) = 0;
  *(undefined1 *)((int)puVar3 + 0x3f) = 0;
  *(undefined1 *)(puVar3 + 0x1b) = 0;
  FUN_007b32f0(puVar3,param_2,&DAT_0093ed08,0,param_4);
  FUN_007b0318(*param_2,puVar3,iVar1);
  return *(int *)(iVar4 + iVar1 * 4);
}

// ---- FUN_007b542c  @ 0x7b542c
int * FUN_007b542c(int *param_1)

{
  int *piVar1;
  
  piVar1 = (int *)*param_1;
  if (piVar1 != (int *)0x0) {
    if ((uint)piVar1[2] < (uint)piVar1[3]) {
      piVar1[2] = piVar1[2] + 4;
    }
    else {
      (**(code **)(*piVar1 + 0x28))();
    }
    param_1[1] = -1;
  }
  return param_1;
}

// ---- FUN_007b5454  @ 0x7b5454
int FUN_007b5454(undefined4 param_1,int *param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  int iVar2;
  undefined4 *puVar3;
  int iVar4;
  
  iVar1 = FUN_007b03f0(&DAT_00972500);
  iVar4 = *(int *)(*param_2 + 0xc);
  iVar2 = *(int *)(iVar4 + iVar1 * 4);
  if (iVar2 != 0) {
    return iVar2;
  }
  puVar3 = operator_new(0x70);
  puVar3[1] = 0;
  puVar3[2] = 0;
  puVar3[3] = 0;
  *puVar3 = &DAT_0093ecf8;
  *(undefined1 *)(puVar3 + 4) = 0;
  puVar3[5] = 0;
  puVar3[6] = 0;
  puVar3[7] = 0;
  puVar3[8] = 0;
  puVar3[9] = 0;
  puVar3[10] = 0;
  puVar3[0xb] = 0;
  puVar3[0xc] = 0;
  puVar3[0xd] = 0;
  *(undefined1 *)(puVar3 + 0xe) = 0;
  *(undefined1 *)((int)puVar3 + 0x39) = 0;
  *(undefined1 *)((int)puVar3 + 0x3a) = 0;
  *(undefined1 *)((int)puVar3 + 0x3b) = 0;
  *(undefined1 *)(puVar3 + 0xf) = 0;
  *(undefined1 *)((int)puVar3 + 0x3d) = 0;
  *(undefined1 *)((int)puVar3 + 0x3e) = 0;
  *(undefined1 *)((int)puVar3 + 0x3f) = 0;
  *(undefined1 *)(puVar3 + 0x1b) = 0;
  FUN_007b372c(puVar3,param_2,&DAT_0093ecf8,0,param_4);
  FUN_007b0318(*param_2,puVar3,iVar1);
  return *(int *)(iVar4 + iVar1 * 4);
}

// ---- FUN_007b54fc  @ 0x7b54fc
int FUN_007b54fc(undefined4 param_1,int *param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  int iVar2;
  undefined4 *puVar3;
  int iVar4;
  
  iVar1 = FUN_007b03f0(&DAT_009724f0);
  iVar4 = *(int *)(*param_2 + 0xc);
  iVar2 = *(int *)(iVar4 + iVar1 * 4);
  if (iVar2 != 0) {
    return iVar2;
  }
  puVar3 = operator_new(0x128);
  puVar3[1] = 0;
  puVar3[2] = 0;
  puVar3[3] = 0;
  *puVar3 = &DAT_0093ed18;
  *(undefined1 *)(puVar3 + 4) = 0;
  puVar3[5] = 0;
  puVar3[6] = 0;
  puVar3[7] = 0;
  puVar3[8] = 0;
  puVar3[9] = 0;
  puVar3[10] = 0;
  *(undefined1 *)(puVar3 + 0x49) = 0;
  FUN_007b2f18(puVar3,param_2,&DAT_0093ed18,0,param_4);
  FUN_007b0318(*param_2,puVar3,iVar1);
  return *(int *)(iVar4 + iVar1 * 4);
}

// ---- FUN_007b5580  @ 0x7b5580
undefined4 *
FUN_007b5580(undefined4 *param_1,undefined4 param_2,int *param_3,undefined4 param_4,int param_5,
            undefined4 param_6,int param_7)

{
  undefined4 uVar1;
  int *piVar2;
  int iVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  uint uVar6;
  int iVar7;
  undefined4 uVar8;
  uint *puVar9;
  char cVar10;
  uint *puVar11;
  uint uVar12;
  uint uVar13;
  uint uVar14;
  uint *puVar15;
  uint local_b0 [24];
  undefined1 auStack_50 [12];
  int local_44;
  undefined4 local_40;
  int local_3c;
  int *local_38;
  undefined4 local_34;
  undefined1 auStack_30 [4];
  int local_2c [2];
  
  local_40 = param_2;
  local_38 = param_3;
  local_34 = param_4;
  iVar3 = FUN_007b54fc(auStack_30,param_5 + 0x6c);
  uVar13 = *(uint *)(param_5 + 0xc);
  puVar15 = local_b0;
  uVar14 = uVar13 & 0x4a;
  uVar12 = (uint)(uVar14 != 8 && uVar14 != 0x40);
  uVar6 = uVar12 ^ 1;
  local_3c = iVar3 + 0x2c;
  if (0 < param_7) {
    uVar6 = 1;
  }
  iVar7 = param_7;
  if (uVar6 == 0) {
    iVar7 = -param_7;
  }
  local_b0[0] = uVar12;
  local_2c[0] = FUN_007b4dd4(auStack_50,iVar7,local_3c,uVar13);
  puVar11 = local_b0 + (0x18 - local_2c[0]);
  if (*(char *)(iVar3 + 0x10) != '\0') {
    uVar4 = *(undefined4 *)(iVar3 + 8);
    uVar5 = *(undefined4 *)(iVar3 + 0xc);
    iVar7 = -(local_2c[0] * 8 + 0x10);
    puVar15 = (uint *)((int)local_b0 + iVar7);
    uVar8 = *(undefined4 *)(iVar3 + 0x28);
    *(uint **)((int)local_b0 + iVar7 + 8) = puVar11;
    puVar11 = (uint *)((int)local_b0 + iVar7 + 0x18);
    *(int **)((int)local_b0 + iVar7 + 0xc) = local_2c;
    *(int *)((int)local_b0 + iVar7) = param_5;
    uVar1 = local_40;
    *(uint **)((int)local_b0 + iVar7 + 4) = puVar11;
    FUN_007b4238(uVar1,uVar4,uVar5,uVar8);
  }
  iVar7 = local_2c[0];
  puVar9 = puVar11;
  if (uVar12 == 0) {
    if (((uVar13 & 0x200) != 0) && (param_7 != 0)) {
      if (uVar14 == 0x40) {
        iVar7 = local_2c[0] + 1;
        puVar9 = puVar11 + -1;
        local_2c[0] = iVar7;
        *puVar9 = *(uint *)(iVar3 + 0x3c);
      }
      else {
        iVar7 = local_2c[0] + 2;
        puVar9 = puVar11 + -2;
        local_2c[0] = iVar7;
        puVar11[-1] = *(uint *)(local_3c + (2 - ((int)(uVar13 << 0x11) >> 0x1f)) * 4);
        *puVar9 = *(uint *)(iVar3 + 0x3c);
      }
    }
  }
  else if (param_7 < 0) {
    iVar7 = local_2c[0] + 1;
    local_2c[0] = iVar7;
    puVar11[-1] = *(uint *)(iVar3 + 0x2c);
    puVar9 = puVar11 + -1;
  }
  else if ((uVar13 & 0x800) != 0) {
    iVar7 = local_2c[0] + 1;
    local_2c[0] = iVar7;
    puVar11[-1] = *(uint *)(iVar3 + 0x30);
    puVar9 = puVar11 + -1;
  }
  uVar1 = local_40;
  iVar3 = *(int *)(param_5 + 8);
  local_44 = iVar7;
  puVar11 = puVar9;
  if (iVar7 < iVar3) {
    iVar7 = -(iVar3 * 4 + 0xeU & 0xfffffff8);
    puVar11 = (uint *)((int)puVar15 + iVar7 + 0x10);
    *(uint **)((int)puVar15 + iVar7 + 4) = puVar9;
    *(uint **)((int)puVar15 + iVar7) = puVar11;
    *(int **)((int)puVar15 + iVar7 + 8) = local_2c;
    FUN_007b4db4(uVar1,param_6,iVar3,param_5);
    local_44 = local_2c[0];
  }
  piVar2 = local_38;
  cVar10 = (char)local_34;
  *(undefined4 *)(param_5 + 8) = 0;
  if (((char)local_34 == '\0') &&
     (iVar3 = (**(code **)(*local_38 + 0x30))(local_38,puVar11,local_44), iVar3 != local_44)) {
    cVar10 = '\x01';
  }
  *param_1 = piVar2;
  *(char *)(param_1 + 1) = cVar10;
  return param_1;
}

// ---- FUN_007b570c  @ 0x7b570c
undefined4
FUN_007b570c(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5,undefined4 param_6,undefined4 param_7)

{
  FUN_007b5580(param_1,param_2,param_3,param_4,param_5,param_6,param_7);
  return param_1;
}

// ---- FUN_007b5738  @ 0x7b5738
undefined4 *
FUN_007b5738(undefined4 *param_1,undefined4 param_2,int *param_3,uint param_4,int param_5,
            wchar_t param_6,char param_7)

{
  int iVar1;
  size_t sVar2;
  int iVar3;
  int iVar4;
  uint uVar5;
  uint uVar6;
  undefined1 uVar7;
  wchar_t wStack_48;
  wchar_t *local_44;
  undefined4 local_40;
  size_t local_3c;
  int *local_38;
  uint local_34;
  int *local_30;
  undefined1 local_2c;
  
  uVar6 = *(uint *)(param_5 + 0xc);
  local_34._0_1_ = (undefined1)param_4;
  uVar7 = (undefined1)local_34;
  uVar5 = param_4 & 0xff;
  local_38 = param_3;
  local_34 = param_4;
  if ((uVar6 & 1) == 0) {
    FUN_007b5580(&local_30,param_2,param_3,param_4,param_5,param_6,param_7);
    uVar7 = local_2c;
    goto LAB_007b5780;
  }
  iVar1 = FUN_007b54fc(&local_30,param_5 + 0x6c);
  local_30 = param_3;
  if (param_7 == '\0') {
    iVar4 = *(int *)(iVar1 + 0x20);
    iVar3 = *(int *)(param_5 + 8);
    local_40 = *(undefined4 *)(iVar1 + 0x1c);
    if (iVar3 <= iVar4) {
LAB_007b5830:
      *(undefined4 *)(param_5 + 8) = 0;
      if ((uVar5 == 0) &&
         (iVar1 = (**(code **)(*param_3 + 0x30))(param_3,local_40,iVar4), iVar4 != iVar1)) {
        uVar7 = 1;
      }
      goto LAB_007b5780;
    }
  }
  else {
    iVar4 = *(int *)(iVar1 + 0x18);
    iVar3 = *(int *)(param_5 + 8);
    local_40 = *(undefined4 *)(iVar1 + 0x14);
    if (iVar3 <= iVar4) goto LAB_007b5830;
  }
  local_3c = iVar3 - iVar4;
  local_44 = (wchar_t *)((int)&wStack_48 - (local_3c * 4 + 0xe & 0xfffffff8));
  wmemset(local_44,param_6,local_3c);
  *(undefined4 *)(param_5 + 8) = 0;
  if ((uVar6 & 0xb0) == 0x20) {
    if (uVar5 != 0) goto LAB_007b5780;
    iVar1 = (**(code **)(*param_3 + 0x30))(param_3,local_40,iVar4);
    if (iVar4 == iVar1) {
      sVar2 = (**(code **)(*param_3 + 0x30))(param_3,local_44,local_3c);
      uVar7 = local_3c != sVar2;
      goto LAB_007b5780;
    }
  }
  else {
    if (uVar5 != 0) goto LAB_007b5780;
    sVar2 = (**(code **)(*param_3 + 0x30))(param_3,local_44,local_3c);
    if (local_3c == sVar2) {
      iVar1 = (**(code **)(*param_3 + 0x30))(param_3,local_40,iVar4);
      uVar7 = iVar4 != iVar1;
      goto LAB_007b5780;
    }
  }
  uVar7 = 1;
LAB_007b5780:
  local_34 = CONCAT31(local_34._1_3_,uVar7);
  *param_1 = local_30;
  param_1[1] = local_34;
  return param_1;
}

// ---- FUN_007b588c  @ 0x7b588c
undefined4 *
FUN_007b588c(undefined4 *param_1,undefined4 param_2,int *param_3,undefined4 param_4,int param_5,
            undefined4 param_6,int param_7,int param_8)

{
  undefined4 uVar1;
  int iVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  uint uVar5;
  int iVar6;
  int iVar7;
  undefined4 uVar8;
  int *piVar9;
  char cVar10;
  int *piVar11;
  uint uVar12;
  uint uVar13;
  uint uVar14;
  int *piVar15;
  int local_100 [44];
  undefined1 auStack_50 [12];
  int local_44;
  undefined4 local_40;
  int local_3c;
  int *local_38;
  undefined4 local_34;
  undefined1 auStack_30 [4];
  int local_2c [2];
  
  local_40 = param_2;
  local_38 = param_3;
  local_34 = param_4;
  iVar2 = FUN_007b54fc(auStack_30,param_5 + 0x6c);
  uVar13 = *(uint *)(param_5 + 0xc);
  piVar15 = local_100;
  uVar14 = uVar13 & 0x4a;
  uVar12 = (uint)(uVar14 != 8 && uVar14 != 0x40);
  uVar5 = uVar12 ^ 1;
  local_100[0] = iVar2 + 0x2c;
  if ((int)(uint)(param_7 == 0) <= param_8) {
    uVar5 = 1;
  }
  iVar7 = param_7;
  iVar6 = param_8;
  if (uVar5 == 0) {
    iVar7 = -param_7;
    iVar6 = -param_8 - (uint)(param_7 != 0);
  }
  local_100[1] = uVar13;
  local_100[2] = uVar12;
  local_3c = local_100[0];
  local_2c[0] = FUN_007b50b8(auStack_50,param_8 - (uint)(param_7 == 0),iVar7,iVar6);
  piVar11 = local_100 + (0x2c - local_2c[0]);
  if (*(char *)(iVar2 + 0x10) != '\0') {
    uVar3 = *(undefined4 *)(iVar2 + 8);
    uVar4 = *(undefined4 *)(iVar2 + 0xc);
    iVar7 = -(local_2c[0] * 8 + 0x10);
    piVar15 = (int *)((int)local_100 + iVar7);
    uVar8 = *(undefined4 *)(iVar2 + 0x28);
    *(int **)((int)local_100 + iVar7 + 8) = piVar11;
    piVar11 = (int *)((int)local_100 + iVar7 + 0x18);
    *(int **)((int)local_100 + iVar7 + 0xc) = local_2c;
    *(int *)((int)local_100 + iVar7) = param_5;
    uVar1 = local_40;
    *(int **)((int)local_100 + iVar7 + 4) = piVar11;
    FUN_007b4238(uVar1,uVar3,uVar4,uVar8);
  }
  iVar7 = local_2c[0];
  piVar9 = piVar11;
  if (uVar12 == 0) {
    if (((uVar13 & 0x200) != 0) && (param_8 != 0 || param_7 != 0)) {
      if (uVar14 == 0x40) {
        iVar7 = local_2c[0] + 1;
        piVar9 = piVar11 + -1;
        local_2c[0] = iVar7;
        *piVar9 = *(int *)(iVar2 + 0x3c);
      }
      else {
        iVar7 = local_2c[0] + 2;
        piVar9 = piVar11 + -2;
        local_2c[0] = iVar7;
        piVar11[-1] = *(int *)(local_3c + (2 - ((int)(uVar13 << 0x11) >> 0x1f)) * 4);
        *piVar9 = *(int *)(iVar2 + 0x3c);
      }
    }
  }
  else if (param_8 < 0) {
    iVar7 = local_2c[0] + 1;
    local_2c[0] = iVar7;
    piVar11[-1] = *(int *)(iVar2 + 0x2c);
    piVar9 = piVar11 + -1;
  }
  else if ((uVar13 & 0x800) != 0) {
    iVar7 = local_2c[0] + 1;
    local_2c[0] = iVar7;
    piVar11[-1] = *(int *)(iVar2 + 0x30);
    piVar9 = piVar11 + -1;
  }
  uVar1 = local_40;
  iVar2 = *(int *)(param_5 + 8);
  local_44 = iVar7;
  piVar11 = piVar9;
  if (iVar7 < iVar2) {
    iVar7 = -(iVar2 * 4 + 0xeU & 0xfffffff8);
    piVar11 = (int *)((int)piVar15 + iVar7 + 0x10);
    *(int **)((int)piVar15 + iVar7 + 4) = piVar9;
    *(int **)((int)piVar15 + iVar7) = piVar11;
    *(int **)((int)piVar15 + iVar7 + 8) = local_2c;
    FUN_007b4db4(uVar1,param_6,iVar2,param_5);
    local_44 = local_2c[0];
  }
  piVar9 = local_38;
  cVar10 = (char)local_34;
  *(undefined4 *)(param_5 + 8) = 0;
  if (((char)local_34 == '\0') &&
     (iVar2 = (**(code **)(*local_38 + 0x30))(local_38,piVar11,local_44), iVar2 != local_44)) {
    cVar10 = '\x01';
  }
  *param_1 = piVar9;
  *(char *)(param_1 + 1) = cVar10;
  return param_1;
}

// ---- FUN_007b5a34  @ 0x7b5a34
undefined4
FUN_007b5a34(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5,undefined4 param_6,undefined4 param_7,undefined4 param_8)

{
  FUN_007b588c(param_1,param_2,param_3,param_4,param_5,param_6,param_7,param_8);
  return param_1;
}

// ---- FUN_007b5a64  @ 0x7b5a64
undefined4 *
FUN_007b5a64(undefined4 *param_1,undefined4 param_2,int *param_3,undefined4 param_4,int param_5,
            undefined4 param_6,undefined1 param_7,undefined4 param_8,undefined8 param_9)

{
  char *__s;
  byte bVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  undefined4 uVar5;
  int *piVar6;
  void *pvVar7;
  size_t sVar8;
  int iVar9;
  undefined4 uVar10;
  uint uVar11;
  int iVar12;
  size_t sVar13;
  undefined4 uVar14;
  char cVar15;
  int *piVar16;
  int *piVar17;
  uint uVar18;
  undefined1 *puVar19;
  bool bVar20;
  bool bVar21;
  uint auStack_70 [2];
  undefined8 uStack_68;
  undefined4 uStack_60;
  undefined4 local_5c;
  int *local_58;
  undefined4 local_54;
  undefined1 auStack_4c [4];
  size_t local_48;
  undefined4 local_44;
  undefined1 auStack_40 [20];
  
  local_5c = param_2;
  local_58 = param_3;
  local_54 = param_4;
  iVar4 = FUN_007b54fc(auStack_4c,param_5 + 0x6c);
  uVar11 = *(uint *)(param_5 + 4);
  uVar18 = uVar11 & ~((int)uVar11 >> 0x20);
  if ((int)uVar11 < 0) {
    uVar18 = 6;
  }
  FUN_007c7b04(param_5,auStack_40,param_7);
  if (*(int *)(param_5 + 0xc) << 0x1d < 0) {
    iVar12 = uVar18 + 0x138;
  }
  else {
    iVar12 = uVar18 + 0x1e;
  }
  iVar12 = -(iVar12 + 0xeU & 0xfffffff8);
  uVar5 = FUN_007b0058();
  __s = (char *)((int)&uStack_60 + iVar12);
  *(uint *)((int)auStack_70 + iVar12) = uVar18;
  *(undefined8 *)((int)&uStack_68 + iVar12) = param_9;
  local_44 = uVar5;
  local_48 = FUN_0079b3f0(&local_44,__s,0,auStack_40);
  piVar6 = (int *)FUN_007b2a34(param_5 + 0x6c);
  iVar2 = -(local_48 * 4 + 0xe & 0xfffffff8);
  piVar16 = (int *)((int)&uStack_60 + iVar2 + iVar12);
  (**(code **)(*piVar6 + 0x2c))(piVar6,__s,__s + local_48,piVar16);
  sVar13 = local_48;
  pvVar7 = memchr(__s,0x2e,local_48);
  piVar6 = (int *)0x0;
  if (pvVar7 != (void *)0x0) {
    piVar6 = piVar16 + ((int)pvVar7 - (int)__s);
    piVar16[(int)pvVar7 - (int)__s] = *(int *)(iVar4 + 0x24);
  }
  piVar17 = piVar16;
  puVar19 = (undefined1 *)((int)auStack_70 + iVar2 + iVar12);
  if ((*(char *)(iVar4 + 0x10) != '\0') &&
     ((piVar6 != (int *)0x0 || (int)sVar13 < 3 ||
      (((bVar1 = *(byte *)((int)&uStack_60 + iVar12 + 1),
        puVar19 = (undefined1 *)((int)auStack_70 + iVar2 + iVar12), bVar1 < 0x3a &&
        (puVar19 = (undefined1 *)((int)auStack_70 + iVar2 + iVar12), 0x2f < bVar1)) &&
       (puVar19 = (undefined1 *)((int)auStack_70 + iVar2 + iVar12),
       *(byte *)((int)&uStack_60 + iVar12 + 2) - 0x30 < 10)))))) {
    iVar9 = sVar13 * 8 + 8;
    uVar5 = *(undefined4 *)(iVar4 + 8);
    bVar20 = *__s != '-';
    bVar21 = *__s != '+';
    iVar3 = -iVar9;
    puVar19 = (undefined1 *)((int)auStack_70 + iVar3 + iVar2 + iVar12);
    if (bVar20 && bVar21) {
      sVar13 = 0;
      sVar8 = sVar13;
    }
    else {
      iVar9 = *piVar16;
      sVar8 = 4;
    }
    piVar17 = (int *)((int)&uStack_60 + iVar3 + iVar2 + iVar12);
    if (!bVar20 || !bVar21) {
      sVar13 = sVar13 - 1;
      *piVar17 = iVar9;
    }
    uVar14 = *(undefined4 *)(iVar4 + 0x28);
    uVar10 = *(undefined4 *)(iVar4 + 0xc);
    *(size_t *)((int)&uStack_68 + iVar3 + iVar2 + iVar12) = (int)piVar16 + sVar8;
    *(int **)((int)auStack_70 + iVar3 + iVar2 + iVar12) = piVar6;
    *(size_t *)((int)auStack_70 + iVar3 + iVar2 + iVar12 + 4) = (int)piVar17 + sVar8;
    *(size_t **)((int)&uStack_68 + iVar3 + iVar2 + iVar12 + 4) = &local_48;
    sVar8 = sVar13;
    if (!bVar20 || !bVar21) {
      sVar8 = 1;
      local_48 = sVar13;
    }
    FUN_007b41c4(local_5c,uVar5,uVar10,uVar14);
    sVar13 = sVar8 + local_48;
    local_48 = sVar13;
  }
  uVar5 = local_5c;
  iVar4 = *(int *)(param_5 + 8);
  piVar6 = piVar17;
  if ((int)sVar13 < iVar4) {
    iVar12 = -(iVar4 * 4 + 0xeU & 0xfffffff8);
    piVar6 = (int *)(puVar19 + iVar12 + 0x10);
    *(int **)(puVar19 + iVar12 + 4) = piVar17;
    *(size_t **)(puVar19 + iVar12 + 8) = &local_48;
    *(int **)(puVar19 + iVar12) = piVar6;
    FUN_007b4db4(uVar5,param_6,iVar4,param_5);
    sVar13 = local_48;
  }
  piVar16 = local_58;
  cVar15 = (char)local_54;
  *(undefined4 *)(param_5 + 8) = 0;
  if (((char)local_54 == '\0') &&
     (sVar8 = (**(code **)(*local_58 + 0x30))(local_58,piVar6,sVar13), sVar13 != sVar8)) {
    cVar15 = '\x01';
  }
  *param_1 = piVar16;
  *(char *)(param_1 + 1) = cVar15;
  return param_1;
}

// ---- FUN_007b5c20  @ 0x7b5c20
undefined4
FUN_007b5c20(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5,undefined4 param_6)

{
  FUN_007b5a64(param_1,param_2,param_3,param_4,param_5,param_6,0);
  return param_1;
}

// ---- FUN_007b5c54  @ 0x7b5c54
undefined4 *
FUN_007b5c54(undefined4 *param_1,undefined4 param_2,int *param_3,undefined4 param_4,int param_5,
            undefined4 param_6,undefined1 param_7,undefined4 param_8,undefined8 param_9)

{
  char *__s;
  byte bVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  undefined4 uVar5;
  int *piVar6;
  void *pvVar7;
  size_t sVar8;
  int iVar9;
  undefined4 uVar10;
  uint uVar11;
  int iVar12;
  size_t sVar13;
  undefined4 uVar14;
  char cVar15;
  int *piVar16;
  int *piVar17;
  uint uVar18;
  undefined1 *puVar19;
  bool bVar20;
  bool bVar21;
  uint auStack_70 [2];
  undefined8 uStack_68;
  undefined4 uStack_60;
  undefined4 local_5c;
  int *local_58;
  undefined4 local_54;
  undefined1 auStack_4c [4];
  size_t local_48;
  undefined4 local_44;
  undefined1 auStack_40 [20];
  
  local_5c = param_2;
  local_58 = param_3;
  local_54 = param_4;
  iVar4 = FUN_007b54fc(auStack_4c,param_5 + 0x6c);
  uVar11 = *(uint *)(param_5 + 4);
  uVar18 = uVar11 & ~((int)uVar11 >> 0x20);
  if ((int)uVar11 < 0) {
    uVar18 = 6;
  }
  FUN_007c7b04(param_5,auStack_40,param_7);
  if (*(int *)(param_5 + 0xc) << 0x1d < 0) {
    iVar12 = uVar18 + 0x138;
  }
  else {
    iVar12 = uVar18 + 0x1e;
  }
  iVar12 = -(iVar12 + 0xeU & 0xfffffff8);
  uVar5 = FUN_007b0058();
  __s = (char *)((int)&uStack_60 + iVar12);
  *(uint *)((int)auStack_70 + iVar12) = uVar18;
  *(undefined8 *)((int)&uStack_68 + iVar12) = param_9;
  local_44 = uVar5;
  local_48 = FUN_0079b3f0(&local_44,__s,0,auStack_40);
  piVar6 = (int *)FUN_007b2a34(param_5 + 0x6c);
  iVar2 = -(local_48 * 4 + 0xe & 0xfffffff8);
  piVar16 = (int *)((int)&uStack_60 + iVar2 + iVar12);
  (**(code **)(*piVar6 + 0x2c))(piVar6,__s,__s + local_48,piVar16);
  sVar13 = local_48;
  pvVar7 = memchr(__s,0x2e,local_48);
  piVar6 = (int *)0x0;
  if (pvVar7 != (void *)0x0) {
    piVar6 = piVar16 + ((int)pvVar7 - (int)__s);
    piVar16[(int)pvVar7 - (int)__s] = *(int *)(iVar4 + 0x24);
  }
  piVar17 = piVar16;
  puVar19 = (undefined1 *)((int)auStack_70 + iVar2 + iVar12);
  if ((*(char *)(iVar4 + 0x10) != '\0') &&
     ((piVar6 != (int *)0x0 || (int)sVar13 < 3 ||
      (((bVar1 = *(byte *)((int)&uStack_60 + iVar12 + 1),
        puVar19 = (undefined1 *)((int)auStack_70 + iVar2 + iVar12), bVar1 < 0x3a &&
        (puVar19 = (undefined1 *)((int)auStack_70 + iVar2 + iVar12), 0x2f < bVar1)) &&
       (puVar19 = (undefined1 *)((int)auStack_70 + iVar2 + iVar12),
       *(byte *)((int)&uStack_60 + iVar12 + 2) - 0x30 < 10)))))) {
    iVar9 = sVar13 * 8 + 8;
    uVar5 = *(undefined4 *)(iVar4 + 8);
    bVar20 = *__s != '-';
    bVar21 = *__s != '+';
    iVar3 = -iVar9;
    puVar19 = (undefined1 *)((int)auStack_70 + iVar3 + iVar2 + iVar12);
    if (bVar20 && bVar21) {
      sVar13 = 0;
      sVar8 = sVar13;
    }
    else {
      iVar9 = *piVar16;
      sVar8 = 4;
    }
    piVar17 = (int *)((int)&uStack_60 + iVar3 + iVar2 + iVar12);
    if (!bVar20 || !bVar21) {
      sVar13 = sVar13 - 1;
      *piVar17 = iVar9;
    }
    uVar14 = *(undefined4 *)(iVar4 + 0x28);
    uVar10 = *(undefined4 *)(iVar4 + 0xc);
    *(size_t *)((int)&uStack_68 + iVar3 + iVar2 + iVar12) = (int)piVar16 + sVar8;
    *(int **)((int)auStack_70 + iVar3 + iVar2 + iVar12) = piVar6;
    *(size_t *)((int)auStack_70 + iVar3 + iVar2 + iVar12 + 4) = (int)piVar17 + sVar8;
    *(size_t **)((int)&uStack_68 + iVar3 + iVar2 + iVar12 + 4) = &local_48;
    sVar8 = sVar13;
    if (!bVar20 || !bVar21) {
      sVar8 = 1;
      local_48 = sVar13;
    }
    FUN_007b41c4(local_5c,uVar5,uVar10,uVar14);
    sVar13 = sVar8 + local_48;
    local_48 = sVar13;
  }
  uVar5 = local_5c;
  iVar4 = *(int *)(param_5 + 8);
  piVar6 = piVar17;
  if ((int)sVar13 < iVar4) {
    iVar12 = -(iVar4 * 4 + 0xeU & 0xfffffff8);
    piVar6 = (int *)(puVar19 + iVar12 + 0x10);
    *(int **)(puVar19 + iVar12 + 4) = piVar17;
    *(size_t **)(puVar19 + iVar12 + 8) = &local_48;
    *(int **)(puVar19 + iVar12) = piVar6;
    FUN_007b4db4(uVar5,param_6,iVar4,param_5);
    sVar13 = local_48;
  }
  piVar16 = local_58;
  cVar15 = (char)local_54;
  *(undefined4 *)(param_5 + 8) = 0;
  if (((char)local_54 == '\0') &&
     (sVar8 = (**(code **)(*local_58 + 0x30))(local_58,piVar6,sVar13), sVar13 != sVar8)) {
    cVar15 = '\x01';
  }
  *param_1 = piVar16;
  *(char *)(param_1 + 1) = cVar15;
  return param_1;
}

// ---- FUN_007b5e10  @ 0x7b5e10
undefined4
FUN_007b5e10(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5,undefined4 param_6)

{
  FUN_007b5c54(param_1,param_2,param_3,param_4,param_5,param_6,0x4c);
  return param_1;
}

// ---- FUN_007b5e44  @ 0x7b5e44
int FUN_007b5e44(int *param_1)

{
  int *piVar1;
  int iVar2;
  
  piVar1 = (int *)*param_1;
  iVar2 = -1;
  if ((piVar1 != (int *)0x0) && (iVar2 = param_1[1], iVar2 == -1)) {
    if ((int *)piVar1[2] < (int *)piVar1[3]) {
      iVar2 = *(int *)piVar1[2];
    }
    else {
      iVar2 = (**(code **)(*piVar1 + 0x24))();
    }
    if (iVar2 == -1) {
      *param_1 = 0;
    }
    else {
      param_1[1] = iVar2;
    }
    return iVar2;
  }
  return iVar2;
}

// ---- FUN_007b5e7c  @ 0x7b5e7c
bool FUN_007b5e7c(int *param_1,int *param_2)

{
  bool bVar1;
  int *piVar2;
  int iVar3;
  bool bVar4;
  
  piVar2 = (int *)*param_1;
  bVar4 = true;
  if (piVar2 != (int *)0x0) {
    if (param_1[1] == -1) {
      if ((int *)piVar2[2] < (int *)piVar2[3]) {
        iVar3 = *(int *)piVar2[2];
      }
      else {
        iVar3 = (**(code **)(*piVar2 + 0x24))();
      }
      if (iVar3 != -1) {
        param_1[1] = iVar3;
      }
      else {
        *param_1 = 0;
      }
      piVar2 = (int *)*param_2;
      bVar4 = iVar3 == -1;
      goto joined_r0x007b5e96;
    }
    bVar4 = false;
  }
  piVar2 = (int *)*param_2;
joined_r0x007b5e96:
  if (piVar2 == (int *)0x0) {
    bVar1 = true;
  }
  else if (param_2[1] == -1) {
    if ((int *)piVar2[2] < (int *)piVar2[3]) {
      iVar3 = *(int *)piVar2[2];
    }
    else {
      iVar3 = (**(code **)(*piVar2 + 0x24))();
    }
    if (iVar3 != -1) {
      param_2[1] = iVar3;
    }
    else {
      *param_2 = 0;
    }
    bVar1 = iVar3 == -1;
  }
  else {
    bVar1 = false;
  }
  return bVar1 == bVar4;
}

// ---- FUN_007b5f04  @ 0x7b5f04
undefined4 *
FUN_007b5f04(undefined4 *param_1,undefined4 param_2,int *param_3,int param_4,undefined4 param_5,
            undefined4 param_6,int *param_7,int param_8,int param_9,int param_10,uint *param_11)

{
  int *piVar1;
  int iVar2;
  int iVar3;
  uint uVar4;
  size_t sVar5;
  int iVar6;
  wchar_t wVar7;
  uint uVar8;
  size_t sVar9;
  int iVar10;
  uint uVar11;
  int iVar12;
  wchar_t *pwVar13;
  uint uVar14;
  undefined4 *puVar15;
  wchar_t wVar16;
  int local_40 [2];
  undefined4 *local_38;
  int **local_34;
  int *local_30;
  int local_2c;
  
  iVar6 = param_9;
  iVar10 = param_8;
  local_38 = param_1;
  local_34 = &local_30;
  local_30 = param_3;
  local_2c = param_4;
  piVar1 = (int *)FUN_007b2a34(param_10 + 0x6c);
  iVar12 = -(iVar6 * 4 + 0xeU & 0xfffffff8);
  iVar2 = FUN_007b5e7c(&local_30,&param_5);
  if ((iVar2 == 0) && (iVar2 = FUN_007b5e44(&local_30), iVar6 != 0)) {
    puVar15 = (undefined4 *)(iVar10 + -4);
    local_40[1] = iVar10;
    uVar8 = 0;
    iVar10 = 0;
    do {
      while ((puVar15 = puVar15 + 1, *(int *)*puVar15 == iVar2 ||
             (iVar3 = (**(code **)(*piVar1 + 0x18))(piVar1), iVar2 == iVar3))) {
        *(int *)((int)local_40 + uVar8 * 4 + iVar12) = iVar10;
        iVar10 = iVar10 + 1;
        uVar8 = uVar8 + 1;
        if (iVar10 == iVar6) goto LAB_007b5fb6;
      }
      iVar10 = iVar10 + 1;
    } while (iVar10 != iVar6);
LAB_007b5fb6:
    iVar10 = local_40[1];
    uVar14 = 0;
    while (1 < uVar8) {
      uVar11 = 1;
      uVar4 = wcslen(*(wchar_t **)(iVar10 + *(int *)((int)local_40 + iVar12) * 4));
      piVar1 = (int *)((int)local_40 + iVar12);
      do {
        piVar1 = piVar1 + 1;
        uVar11 = uVar11 + 1;
        sVar5 = wcslen(*(wchar_t **)(iVar10 + *piVar1 * 4));
        if (sVar5 <= uVar4) {
          uVar4 = sVar5;
        }
      } while (uVar11 < uVar8);
      if (local_30 != (int *)0x0) {
        if ((uint)local_30[2] < (uint)local_30[3]) {
          local_30[2] = local_30[2] + 4;
        }
        else {
          (**(code **)(*local_30 + 0x28))();
        }
        local_2c = -1;
      }
      uVar14 = uVar14 + 1;
      if ((uVar4 <= uVar14) || (iVar6 = FUN_007b5e7c(&local_30,&param_5), iVar6 != 0))
      goto LAB_007b5f4a;
      uVar4 = 0;
      do {
        iVar6 = *(int *)(*(int *)(iVar10 + *(int *)((int)local_40 + uVar4 * 4 + iVar12) * 4) +
                        uVar14 * 4);
        iVar2 = -1;
        if ((local_30 != (int *)0x0) && (iVar2 = local_2c, local_2c == -1)) {
          if ((int *)local_30[2] < (int *)local_30[3]) {
            iVar2 = *(int *)local_30[2];
          }
          else {
            local_40[0] = iVar6;
            iVar2 = (**(code **)(*local_30 + 0x24))();
            iVar6 = local_40[0];
          }
          if (iVar2 == -1) {
            local_30 = (int *)0x0;
          }
          else {
            local_2c = iVar2;
          }
        }
        if (iVar6 == iVar2) {
          uVar4 = uVar4 + 1;
        }
        else {
          uVar8 = uVar8 - 1;
          *(undefined4 *)((int)local_40 + uVar4 * 4 + iVar12) =
               *(undefined4 *)((int)local_40 + uVar8 * 4 + iVar12);
        }
      } while (uVar4 < uVar8);
    }
    if (uVar8 == 1) {
      sVar9 = uVar14 + 1;
      FUN_007b542c(&local_30);
      iVar12 = *(int *)((int)local_40 + iVar12);
      pwVar13 = *(wchar_t **)(iVar10 + iVar12 * 4);
      sVar5 = wcslen(pwVar13);
      if (sVar9 < sVar5) {
        pwVar13 = pwVar13 + uVar14;
        do {
          iVar10 = FUN_007b5e7c(&local_30,&param_5);
          if (iVar10 != 0) break;
          pwVar13 = pwVar13 + 1;
          wVar16 = *pwVar13;
          wVar7 = FUN_007b5e44(&local_30);
          if (wVar16 != wVar7) break;
          sVar9 = sVar9 + 1;
          FUN_007b542c(&local_30);
        } while (sVar9 < sVar5);
      }
      if (sVar9 == sVar5) {
        *param_7 = iVar12;
        goto LAB_007b5f54;
      }
    }
  }
LAB_007b5f4a:
  *param_11 = *param_11 | 4;
LAB_007b5f54:
  piVar1 = local_34[1];
  *local_38 = *local_34;
  local_38[1] = piVar1;
  return local_38;
}

// ---- FUN_007b60e8  @ 0x7b60e8
undefined4 *
FUN_007b60e8(undefined4 *param_1,undefined4 param_2,int *param_3,uint param_4,int *param_5,
            int param_6,uint *param_7,int param_8,uint param_9,int param_10,uint *param_11)

{
  uint *puVar1;
  int iVar2;
  int *piVar3;
  int iVar4;
  int iVar5;
  size_t sVar6;
  int iVar7;
  uint uVar8;
  uint uVar9;
  uint *puVar10;
  int iVar11;
  bool bVar12;
  uint uVar13;
  undefined4 *puVar14;
  uint uVar15;
  uint uVar16;
  uint *puVar17;
  bool bVar18;
  uint local_40;
  undefined4 *local_3c;
  int **local_38;
  int local_34;
  int *local_30;
  uint local_2c;
  
  iVar11 = param_8;
  local_3c = param_1;
  local_38 = &local_30;
  local_30 = param_3;
  local_2c = param_4;
  piVar3 = (int *)FUN_007b2a34(param_10 + 0x6c);
  iVar2 = -(param_9 * 8 + 8);
  iVar4 = FUN_007b5e7c(&local_30,&param_5);
  if (iVar4 == 0) {
    iVar4 = FUN_007b5e44(&local_30);
    iVar7 = param_9 * 2;
    if (iVar7 == 0) goto LAB_007b612a;
    puVar14 = (undefined4 *)(iVar11 + -4);
    local_34 = iVar11;
    uVar9 = 0;
    iVar11 = 0;
    do {
      while ((puVar14 = puVar14 + 1, *(int *)*puVar14 != iVar4 &&
             (iVar5 = (**(code **)(*piVar3 + 0x18))(piVar3), iVar4 != iVar5))) {
        iVar11 = iVar11 + 1;
        if (iVar11 == iVar7) goto LAB_007b62be;
      }
      *(int *)((int)&local_40 + uVar9 * 4 + iVar2) = iVar11;
      iVar11 = iVar11 + 1;
      uVar9 = uVar9 + 1;
    } while (iVar11 != iVar7);
LAB_007b62be:
    iVar11 = local_34;
    puVar10 = (uint *)0x0;
    uVar15 = 0;
    if (uVar9 != 0) {
      iVar7 = 0;
      FUN_007b542c(&local_30);
      uVar15 = 0;
      iVar4 = -(uVar9 * 4 + 0xe & 0xfffffff8);
      puVar10 = (uint *)((int)&local_40 + iVar4 + iVar2);
      do {
        uVar15 = uVar15 + 1;
        sVar6 = wcslen(*(wchar_t **)(iVar11 + *(int *)((int)&local_40 + iVar7 + iVar2) * 4));
        *(size_t *)((int)&local_40 + iVar7 + iVar4 + iVar2) = sVar6;
        iVar7 = iVar7 + 4;
      } while (uVar15 != uVar9);
      uVar15 = 1;
    }
  }
  else {
LAB_007b612a:
    uVar9 = 0;
    uVar15 = 0;
    puVar10 = (uint *)0x0;
  }
  local_34 = uVar15 << 2;
  while( true ) {
    bVar12 = true;
    if ((local_30 != (int *)0x0) && (bVar12 = false, local_2c == 0xffffffff)) {
      if ((uint *)local_30[2] < (uint *)local_30[3]) {
        uVar16 = *(uint *)local_30[2];
      }
      else {
        uVar16 = (**(code **)(*local_30 + 0x24))();
      }
      if (uVar16 != 0xffffffff) {
        local_2c = uVar16;
      }
      else {
        local_30 = (int *)0x0;
      }
      bVar12 = uVar16 == 0xffffffff;
    }
    bVar18 = true;
    iVar4 = param_6;
    if (param_5 != (int *)0x0) {
      if (param_6 == -1) {
        if ((int *)param_5[2] < (int *)param_5[3]) {
          iVar4 = *(int *)param_5[2];
        }
        else {
          iVar4 = (**(code **)(*param_5 + 0x24))();
        }
        bVar18 = iVar4 == -1;
        if (bVar18) {
          param_5 = (int *)0x0;
          iVar4 = param_6;
        }
      }
      else {
        bVar18 = false;
      }
    }
    param_6 = iVar4;
    if (bVar18 == bVar12) break;
    uVar16 = 0xffffffff;
    if ((local_30 != (int *)0x0) && (uVar16 = local_2c, local_2c == 0xffffffff)) {
      if ((uint *)local_30[2] < (uint *)local_30[3]) {
        uVar16 = *(uint *)local_30[2];
      }
      else {
        uVar16 = (**(code **)(*local_30 + 0x24))(local_30);
      }
      if (uVar16 == 0xffffffff) {
        local_30 = (int *)0x0;
      }
      else {
        local_2c = uVar16;
      }
    }
    if (uVar9 == 0) goto LAB_007b61f8;
    uVar8 = 0;
    local_40 = uVar16;
    uVar16 = 0;
    do {
      puVar1 = puVar10 + uVar8;
      iVar7 = uVar8 * 4;
      iVar4 = uVar8 * 4;
      puVar17 = puVar10 + uVar8;
      if (*puVar1 <= uVar15) {
        uVar16 = uVar16 + 1;
        uVar8 = uVar8 + 1;
      }
      if (*puVar1 > uVar15) {
        if (*(uint *)(*(int *)(iVar11 + *(int *)((int)&local_40 + iVar4 + iVar2) * 4) + local_34) ==
            local_40) {
          uVar8 = uVar8 + 1;
        }
        else {
          uVar9 = uVar9 - 1;
          uVar13 = puVar10[uVar9];
          *(undefined4 *)((int)&local_40 + iVar7 + iVar2) =
               *(undefined4 *)((int)&local_40 + uVar9 * 4 + iVar2);
          *puVar17 = uVar13;
        }
      }
    } while (uVar8 < uVar9);
    if (uVar9 == uVar16) break;
    if (local_30 != (int *)0x0) {
      if ((uint)local_30[2] < (uint)local_30[3]) {
        local_30[2] = local_30[2] + 4;
      }
      else {
        (**(code **)(*local_30 + 0x28))();
      }
      local_2c = 0xffffffff;
    }
    uVar15 = uVar15 + 1;
    local_34 = local_34 + 4;
  }
  if (uVar9 == 1) {
    uVar9 = *puVar10;
joined_r0x007b633a:
    if (uVar15 == uVar9) {
LAB_007b625e:
      uVar9 = *(uint *)((int)&local_40 + iVar2);
      if (param_9 <= uVar9) {
        uVar9 = uVar9 - param_9;
      }
      *param_7 = uVar9;
      goto LAB_007b6202;
    }
  }
  else if (uVar9 == 2) {
    if (uVar15 != *puVar10) {
      uVar9 = puVar10[1];
      goto joined_r0x007b633a;
    }
    goto LAB_007b625e;
  }
LAB_007b61f8:
  *param_11 = *param_11 | 4;
LAB_007b6202:
  piVar3 = local_38[1];
  *local_3c = *local_38;
  local_3c[1] = piVar3;
  return local_3c;
}

// ---- FUN_007b6340  @ 0x7b6340
undefined4 *
FUN_007b6340(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
            int *param_5,int param_6,int param_7,uint *param_8,int param_9)

{
  int iVar1;
  int iVar2;
  uint uVar3;
  int *piVar4;
  uint uVar5;
  bool bVar6;
  int *local_70;
  int iStack_6c;
  int *local_68;
  int local_64;
  undefined4 local_60;
  int local_5c;
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
  
  local_68 = (int *)param_3;
  local_64 = param_4;
  iVar1 = FUN_007b3bac(param_7 + 0x6c);
  FUN_007b2a34(param_7 + 0x6c);
  iVar2 = *(int *)(iVar1 + 8);
  local_50 = *(undefined4 *)(iVar2 + 0x50);
  local_58 = *(undefined4 *)(iVar2 + 0x48);
  local_54 = *(undefined4 *)(iVar2 + 0x4c);
  local_4c = *(undefined4 *)(*(int *)(iVar1 + 8) + 0x54);
  local_48 = *(undefined4 *)(*(int *)(iVar1 + 8) + 0x58);
  local_44 = *(undefined4 *)(*(int *)(iVar1 + 8) + 0x5c);
  local_40 = *(undefined4 *)(*(int *)(iVar1 + 8) + 0x60);
  local_3c = *(undefined4 *)(*(int *)(iVar1 + 8) + 0x2c);
  local_38 = *(undefined4 *)(*(int *)(iVar1 + 8) + 0x30);
  local_34 = *(undefined4 *)(*(int *)(iVar1 + 8) + 0x34);
  local_30 = *(undefined4 *)(*(int *)(iVar1 + 8) + 0x38);
  local_2c = *(undefined4 *)(*(int *)(iVar1 + 8) + 0x3c);
  local_5c = 0;
  local_28 = *(undefined4 *)(*(int *)(iVar1 + 8) + 0x40);
  local_24 = *(undefined4 *)(*(int *)(iVar1 + 8) + 0x44);
  FUN_007b60e8(&local_70,param_2,local_68,local_64,param_5,param_6,&local_60,&local_58,7,param_7,
               &local_5c);
  local_68 = local_70;
  local_64 = iStack_6c;
  if (local_5c == 0) {
    *(undefined4 *)(param_9 + 0x18) = local_60;
  }
  else {
    *param_8 = *param_8 | 4;
  }
  uVar5 = 1;
  piVar4 = local_70;
  if ((local_70 != (int *)0x0) && (uVar5 = (uint)(iStack_6c == -1), iStack_6c == -1)) {
    if ((int *)local_70[2] < (int *)local_70[3]) {
      iStack_6c = *(int *)local_70[2];
    }
    else {
      iStack_6c = (**(code **)(*local_70 + 0x24))(local_70);
    }
    if (iStack_6c == -1) {
      piVar4 = (int *)0x0;
    }
    uVar5 = (uint)(iStack_6c == -1);
  }
  uVar3 = 1;
  if (param_5 != (int *)0x0) {
    if (param_6 == -1) {
      if ((int *)param_5[2] < (int *)param_5[3]) {
        iVar1 = *(int *)param_5[2];
      }
      else {
        iVar1 = (**(code **)(*param_5 + 0x24))();
      }
      uVar3 = (uint)(iVar1 == -1);
    }
    else {
      uVar3 = 0;
    }
  }
  bVar6 = uVar3 == uVar5;
  *param_1 = piVar4;
  if (bVar6) {
    uVar3 = *param_8;
  }
  param_1[1] = iStack_6c;
  if (bVar6) {
    *param_8 = uVar3 | 2;
  }
  return param_1;
}

// ---- FUN_007b6490  @ 0x7b6490
undefined4 *
FUN_007b6490(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
            int *param_5,int param_6,int param_7,uint *param_8,int param_9)

{
  int iVar1;
  int iVar2;
  uint uVar3;
  int *piVar4;
  uint uVar5;
  bool bVar6;
  int *local_98;
  int iStack_94;
  int *local_90;
  int local_8c;
  undefined4 local_88;
  int local_84;
  undefined4 local_80;
  undefined4 local_7c;
  undefined4 local_78;
  undefined4 local_74;
  undefined4 local_70;
  undefined4 local_6c;
  undefined4 local_68;
  undefined4 local_64;
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
  
  local_90 = (int *)param_3;
  local_8c = param_4;
  iVar1 = FUN_007b3bac(param_7 + 0x6c);
  FUN_007b2a34(param_7 + 0x6c);
  iVar2 = *(int *)(iVar1 + 8);
  local_78 = *(undefined4 *)(iVar2 + 0x9c);
  local_80 = *(undefined4 *)(iVar2 + 0x94);
  local_7c = *(undefined4 *)(iVar2 + 0x98);
  local_74 = *(undefined4 *)(*(int *)(iVar1 + 8) + 0xa0);
  local_70 = *(undefined4 *)(*(int *)(iVar1 + 8) + 0xa4);
  local_6c = *(undefined4 *)(*(int *)(iVar1 + 8) + 0xa8);
  local_68 = *(undefined4 *)(*(int *)(iVar1 + 8) + 0xac);
  local_64 = *(undefined4 *)(*(int *)(iVar1 + 8) + 0xb0);
  local_60 = *(undefined4 *)(*(int *)(iVar1 + 8) + 0xb4);
  local_5c = *(undefined4 *)(*(int *)(iVar1 + 8) + 0xb8);
  local_58 = *(undefined4 *)(*(int *)(iVar1 + 8) + 0xbc);
  local_54 = *(undefined4 *)(*(int *)(iVar1 + 8) + 0xc0);
  local_50 = *(undefined4 *)(*(int *)(iVar1 + 8) + 100);
  local_4c = *(undefined4 *)(*(int *)(iVar1 + 8) + 0x68);
  local_48 = *(undefined4 *)(*(int *)(iVar1 + 8) + 0x6c);
  local_44 = *(undefined4 *)(*(int *)(iVar1 + 8) + 0x70);
  local_40 = *(undefined4 *)(*(int *)(iVar1 + 8) + 0x74);
  local_3c = *(undefined4 *)(*(int *)(iVar1 + 8) + 0x78);
  local_38 = *(undefined4 *)(*(int *)(iVar1 + 8) + 0x7c);
  local_34 = *(undefined4 *)(*(int *)(iVar1 + 8) + 0x80);
  local_30 = *(undefined4 *)(*(int *)(iVar1 + 8) + 0x84);
  local_2c = *(undefined4 *)(*(int *)(iVar1 + 8) + 0x88);
  local_28 = *(undefined4 *)(*(int *)(iVar1 + 8) + 0x8c);
  local_24 = *(undefined4 *)(*(int *)(iVar1 + 8) + 0x90);
  local_84 = 0;
  FUN_007b60e8(&local_98,param_2,local_90,local_8c,param_5,param_6,&local_88,&local_80,0xc,param_7,
               &local_84);
  local_90 = local_98;
  local_8c = iStack_94;
  if (local_84 == 0) {
    *(undefined4 *)(param_9 + 0x10) = local_88;
  }
  else {
    *param_8 = *param_8 | 4;
  }
  uVar5 = 1;
  piVar4 = local_98;
  if ((local_98 != (int *)0x0) && (uVar5 = (uint)(iStack_94 == -1), iStack_94 == -1)) {
    if ((int *)local_98[2] < (int *)local_98[3]) {
      iStack_94 = *(int *)local_98[2];
    }
    else {
      iStack_94 = (**(code **)(*local_98 + 0x24))(local_98);
    }
    if (iStack_94 == -1) {
      piVar4 = (int *)0x0;
    }
    uVar5 = (uint)(iStack_94 == -1);
  }
  uVar3 = 1;
  if (param_5 != (int *)0x0) {
    if (param_6 == -1) {
      if ((int *)param_5[2] < (int *)param_5[3]) {
        iVar1 = *(int *)param_5[2];
      }
      else {
        iVar1 = (**(code **)(*param_5 + 0x24))();
      }
      uVar3 = (uint)(iVar1 == -1);
    }
    else {
      uVar3 = 0;
    }
  }
  bVar6 = uVar5 == uVar3;
  *param_1 = piVar4;
  if (bVar6) {
    uVar3 = *param_8;
  }
  param_1[1] = iStack_94;
  if (bVar6) {
    *param_8 = uVar3 | 2;
  }
  return param_1;
}

// ---- FUN_007b6644  @ 0x7b6644
undefined4 *
FUN_007b6644(undefined4 *param_1,undefined4 param_2,int *param_3,wchar_t param_4,int *param_5,
            int param_6,int param_7,uint *param_8,int param_9,wchar_t *param_10)

{
  wchar_t *__s;
  int iVar1;
  int *piVar2;
  size_t sVar3;
  wchar_t wVar4;
  int iVar5;
  undefined4 *puVar6;
  undefined4 uVar7;
  char *pcVar8;
  undefined *puVar9;
  undefined4 uVar10;
  wchar_t wVar11;
  int iVar12;
  wchar_t wVar13;
  uint uVar14;
  uint uVar15;
  bool bVar16;
  bool bVar17;
  char *local_88;
  char *local_84;
  int *local_70;
  wchar_t wStack_6c;
  int *local_68;
  wchar_t local_64;
  uint local_60;
  int local_5c;
  int local_58;
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
  
  __s = param_10;
  iVar12 = param_7 + 0x6c;
  local_68 = param_3;
  local_64 = param_4;
  iVar1 = FUN_007b3bac(iVar12);
  piVar2 = (int *)FUN_007b2a34(iVar12);
  local_88 = "%H:%M:%S";
  sVar3 = wcslen(__s);
  local_84 = "%H:%M";
  uVar15 = 0;
  local_60 = 0;
LAB_007b66f4:
  bVar16 = true;
  wVar4 = local_64;
  if ((local_68 != (int *)0x0) && (bVar16 = false, local_64 == L'\xffffffff')) {
    if ((wchar_t *)local_68[2] < (wchar_t *)local_68[3]) {
      wVar4 = *(wchar_t *)local_68[2];
    }
    else {
      wVar4 = (**(code **)(*local_68 + 0x24))();
    }
    bVar16 = wVar4 == L'\xffffffff';
    if (bVar16) {
      local_68 = (int *)0x0;
      wVar4 = local_64;
    }
  }
  local_64 = wVar4;
  bVar17 = true;
  iVar12 = param_6;
  if (param_5 != (int *)0x0) {
    if (param_6 == -1) {
      if ((int *)param_5[2] < (int *)param_5[3]) {
        iVar12 = *(int *)param_5[2];
      }
      else {
        iVar12 = (**(code **)(*param_5 + 0x24))();
      }
      bVar17 = iVar12 == -1;
      if (bVar17) {
        param_5 = (int *)0x0;
        iVar12 = param_6;
      }
    }
    else {
      bVar17 = false;
    }
  }
  param_6 = iVar12;
  if ((bVar17 == bVar16) || (local_60 != 0 || sVar3 <= uVar15)) {
    if ((local_60 != 0) || (uVar15 != sVar3)) {
      *param_8 = *param_8 | 4;
    }
    *param_1 = local_68;
    param_1[1] = local_64;
    return param_1;
  }
  iVar12 = (**(code **)(*piVar2 + 0x30))(piVar2,__s[uVar15],0);
  if (iVar12 != 0x25) {
    wVar13 = __s[uVar15];
    wVar4 = local_64;
    wVar11 = L'\xffffffff';
    if ((local_68 != (int *)0x0) && (wVar11 = local_64, local_64 == L'\xffffffff')) {
      if ((wchar_t *)local_68[2] < (wchar_t *)local_68[3]) {
        wVar11 = *(wchar_t *)local_68[2];
      }
      else {
        wVar11 = (**(code **)(*local_68 + 0x24))();
      }
      wVar4 = wVar11;
      if (wVar11 == L'\xffffffff') {
        local_68 = (int *)0x0;
        wVar4 = local_64;
      }
    }
    local_64 = wVar4;
    uVar14 = uVar15;
    if (wVar13 == wVar11) {
      FUN_007b542c(&local_68);
    }
    else {
      local_60 = local_60 | 4;
    }
    goto LAB_007b66f0;
  }
  uVar14 = uVar15 + 1;
  iVar12 = (**(code **)(*piVar2 + 0x30))(piVar2,__s[uVar15 + 1],0);
  local_5c = 0;
  if (iVar12 == 0x45 || iVar12 == 0x4f) {
    uVar14 = uVar15 + 2;
    iVar12 = (**(code **)(*piVar2 + 0x30))(piVar2,__s[uVar15 + 2]);
  }
  switch(iVar12) {
  case 0x41:
    iVar12 = *(int *)(iVar1 + 8);
    local_58 = *(int *)(iVar12 + 0x2c);
    local_54 = *(undefined4 *)(iVar12 + 0x30);
    local_50 = *(undefined4 *)(iVar12 + 0x34);
    local_4c = *(undefined4 *)(*(int *)(iVar1 + 8) + 0x38);
    local_48 = *(undefined4 *)(*(int *)(iVar1 + 8) + 0x3c);
    local_44 = *(undefined4 *)(*(int *)(iVar1 + 8) + 0x40);
    local_40 = *(undefined4 *)(*(int *)(iVar1 + 8) + 0x44);
    goto LAB_007b68e0;
  case 0x42:
    iVar12 = *(int *)(iVar1 + 8);
    local_58 = *(int *)(iVar12 + 100);
    local_54 = *(undefined4 *)(iVar12 + 0x68);
    local_50 = *(undefined4 *)(iVar12 + 0x6c);
    local_4c = *(undefined4 *)(*(int *)(iVar1 + 8) + 0x70);
    local_48 = *(undefined4 *)(*(int *)(iVar1 + 8) + 0x74);
    local_44 = *(undefined4 *)(*(int *)(iVar1 + 8) + 0x78);
    local_40 = *(undefined4 *)(*(int *)(iVar1 + 8) + 0x7c);
    local_3c = *(undefined4 *)(*(int *)(iVar1 + 8) + 0x80);
    local_38 = *(undefined4 *)(*(int *)(iVar1 + 8) + 0x84);
    local_34 = *(undefined4 *)(*(int *)(iVar1 + 8) + 0x88);
    local_30 = *(undefined4 *)(*(int *)(iVar1 + 8) + 0x8c);
    local_2c = *(undefined4 *)(*(int *)(iVar1 + 8) + 0x90);
    goto LAB_007b697a;
  case 0x43:
  case 0x59:
  case 0x79:
    FUN_007b2b9c(&local_70,param_2,local_68,local_64,param_5,param_6,&local_5c,0,9999,4,param_7,
                 &local_60);
    local_68 = local_70;
    local_64 = wStack_6c;
    if (local_60 == 0) {
      if (local_5c < 0) {
        iVar12 = local_5c + 100;
      }
      else {
        iVar12 = local_5c + -0x76c;
      }
      *(int *)(param_9 + 0x14) = iVar12;
    }
    break;
  case 0x44:
    iVar12 = *piVar2;
    pcVar8 = "%m/%d/%y";
    puVar9 = &DAT_00853281;
    goto LAB_007b6a10;
  default:
    goto switchD_007b679a_caseD_45;
  case 0x48:
    uVar7 = 0;
    iVar12 = param_9 + 8;
    uVar10 = 0x17;
    goto LAB_007b6a60;
  case 0x49:
    uVar7 = 1;
    iVar12 = param_9 + 8;
    uVar10 = 0xc;
    goto LAB_007b6a60;
  case 0x4d:
    uVar7 = 0;
    iVar12 = param_9 + 4;
    uVar10 = 0x3b;
    goto LAB_007b6a60;
  case 0x52:
    iVar12 = *piVar2;
    pcVar8 = local_84;
    puVar9 = &DAT_0085328a;
    goto LAB_007b6a10;
  case 0x53:
    FUN_007b2b9c(&local_70,param_2,local_68,local_64,param_5,param_6,param_9,0,0x3d,2,param_7,
                 &local_60);
    local_68 = local_70;
    local_64 = wStack_6c;
    break;
  case 0x54:
    iVar12 = *piVar2;
    pcVar8 = local_88;
    puVar9 = &DAT_00853295;
LAB_007b6a10:
    (**(code **)(iVar12 + 0x2c))(piVar2,pcVar8,puVar9,&local_58);
    FUN_007b6644(&local_70,param_2,local_68,local_64,param_5,param_6,param_7,&local_60,param_9,
                 &local_58);
    local_68 = local_70;
    local_64 = wStack_6c;
    break;
  case 0x58:
    FUN_007b6644(&local_70,param_2,local_68,local_64,param_5,param_6,param_7,&local_60,param_9,
                 *(undefined4 *)(*(int *)(iVar1 + 8) + 0x10));
    local_68 = local_70;
    local_64 = wStack_6c;
    break;
  case 0x5a:
    uVar7 = FUN_007b5e44(&local_68);
    iVar12 = (**(code **)(*piVar2 + 8))(piVar2,1,uVar7);
    if (iVar12 == 0) goto switchD_007b679a_caseD_45;
    FUN_007b5f04(&local_70,param_2,local_68,local_64,param_5,param_6,&local_58,&PTR_DAT_0094f5b4,0xe
                 ,param_7,&local_60);
    local_68 = local_70;
    local_64 = wStack_6c;
    iVar12 = FUN_007b5e7c(&local_68,&param_5);
    if (((iVar12 == 0) && (local_60 == 0)) && (local_58 == 0)) {
      iVar12 = FUN_007b5e44(&local_68);
      iVar5 = (**(code **)(*piVar2 + 0x28))(piVar2,0x2d);
      if (iVar12 != iVar5) {
        iVar12 = FUN_007b5e44(&local_68);
        iVar5 = (**(code **)(*piVar2 + 0x28))(piVar2,0x2b);
        if (iVar12 != iVar5) break;
      }
      uVar7 = 0;
      FUN_007b2b9c(&local_70,param_2,local_68,local_64,param_5,param_6,&local_58,0,0x17,2,param_7,
                   &local_60,0);
      local_68 = local_70;
      local_64 = wStack_6c;
      FUN_007b2b9c(&local_70,param_2,local_70,wStack_6c,param_5,param_6,&local_58,uVar7,0x3b,2,
                   param_7,&local_60);
      local_68 = local_70;
      local_64 = wStack_6c;
    }
    break;
  case 0x61:
    iVar12 = *(int *)(iVar1 + 8);
    local_58 = *(int *)(iVar12 + 0x48);
    local_54 = *(undefined4 *)(iVar12 + 0x4c);
    local_50 = *(undefined4 *)(iVar12 + 0x50);
    local_4c = *(undefined4 *)(*(int *)(iVar1 + 8) + 0x54);
    local_48 = *(undefined4 *)(*(int *)(iVar1 + 8) + 0x58);
    local_44 = *(undefined4 *)(*(int *)(iVar1 + 8) + 0x5c);
    local_40 = *(undefined4 *)(*(int *)(iVar1 + 8) + 0x60);
LAB_007b68e0:
    FUN_007b5f04(&local_70,param_2,local_68,local_64,param_5,param_6,param_9 + 0x18,&local_58,7,
                 param_7,&local_60);
    local_68 = local_70;
    local_64 = wStack_6c;
    break;
  case 0x62:
  case 0x68:
    iVar12 = *(int *)(iVar1 + 8);
    local_58 = *(int *)(iVar12 + 0x94);
    local_54 = *(undefined4 *)(iVar12 + 0x98);
    local_50 = *(undefined4 *)(iVar12 + 0x9c);
    local_4c = *(undefined4 *)(*(int *)(iVar1 + 8) + 0xa0);
    local_48 = *(undefined4 *)(*(int *)(iVar1 + 8) + 0xa4);
    local_44 = *(undefined4 *)(*(int *)(iVar1 + 8) + 0xa8);
    local_40 = *(undefined4 *)(*(int *)(iVar1 + 8) + 0xac);
    local_3c = *(undefined4 *)(*(int *)(iVar1 + 8) + 0xb0);
    local_38 = *(undefined4 *)(*(int *)(iVar1 + 8) + 0xb4);
    local_34 = *(undefined4 *)(*(int *)(iVar1 + 8) + 0xb8);
    local_30 = *(undefined4 *)(*(int *)(iVar1 + 8) + 0xbc);
    local_2c = *(undefined4 *)(*(int *)(iVar1 + 8) + 0xc0);
LAB_007b697a:
    FUN_007b5f04(&local_70,param_2,local_68,local_64,param_5,param_6,param_9 + 0x10,&local_58,0xc,
                 param_7,&local_60);
    local_68 = local_70;
    local_64 = wStack_6c;
    break;
  case 99:
    FUN_007b6644(&local_70,param_2,local_68,local_64,param_5,param_6,param_7,&local_60,param_9,
                 *(undefined4 *)(*(int *)(iVar1 + 8) + 0x18));
    local_68 = local_70;
    local_64 = wStack_6c;
    break;
  case 100:
    uVar7 = 1;
LAB_007b6d76:
    iVar12 = param_9 + 0xc;
    uVar10 = 0x1f;
LAB_007b6a60:
    FUN_007b2b9c(&local_70,param_2,local_68,local_64,param_5,param_6,iVar12,uVar7,uVar10,2,param_7,
                 &local_60);
    local_68 = local_70;
    local_64 = wStack_6c;
    break;
  case 0x65:
    uVar7 = FUN_007b5e44(&local_68);
    iVar12 = (**(code **)(*piVar2 + 8))(piVar2,8,uVar7);
    if (iVar12 == 0) {
      uVar7 = 10;
      goto LAB_007b6d76;
    }
    puVar6 = (undefined4 *)FUN_007b542c(&local_68);
    FUN_007b2b9c(&local_70,param_2,*puVar6,puVar6[1],param_5,param_6,param_9 + 0xc,1,9,1,param_7,
                 &local_60);
    local_68 = local_70;
    local_64 = wStack_6c;
    break;
  case 0x6d:
    FUN_007b2b9c(&local_70,param_2,local_68,local_64,param_5,param_6,&local_5c,1,0xc,2,param_7,
                 &local_60);
    local_68 = local_70;
    local_64 = wStack_6c;
    if (local_60 == 0) {
      *(int *)(param_9 + 0x10) = local_5c + -1;
    }
    break;
  case 0x6e:
    uVar7 = FUN_007b5e44(&local_68);
    iVar12 = (**(code **)(*piVar2 + 0x30))(piVar2,uVar7,0);
    if (iVar12 != 10) goto switchD_007b679a_caseD_45;
LAB_007b6e3e:
    FUN_007b542c(&local_68);
    break;
  case 0x74:
    uVar7 = FUN_007b5e44(&local_68);
    iVar12 = (**(code **)(*piVar2 + 0x30))(piVar2,uVar7,0);
    if (iVar12 == 9) goto LAB_007b6e3e;
    goto switchD_007b679a_caseD_45;
  case 0x78:
    FUN_007b6644(&local_70,param_2,local_68,local_64,param_5,param_6,param_7,&local_60,param_9,
                 *(undefined4 *)(*(int *)(iVar1 + 8) + 8));
    local_68 = local_70;
    local_64 = wStack_6c;
  }
LAB_007b66f0:
  uVar15 = uVar14 + 1;
  goto LAB_007b66f4;
switchD_007b679a_caseD_45:
  local_60 = local_60 | 4;
  goto LAB_007b66f0;
}

// ---- FUN_007b6e84  @ 0x7b6e84
undefined4 *
FUN_007b6e84(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
            int *param_5,int param_6,int param_7,uint *param_8,undefined4 param_9)

{
  int iVar1;
  int iVar2;
  uint uVar3;
  int *piVar4;
  uint uVar5;
  bool bVar6;
  int *local_30;
  int iStack_2c;
  int *local_28;
  int local_24;
  
  local_28 = (int *)param_3;
  local_24 = param_4;
  iVar1 = FUN_007b3bac(param_7 + 0x6c);
  uVar5 = 1;
  FUN_007b6644(&local_30,param_2,local_28,local_24,param_5,param_6,param_7,param_8,param_9,
               *(undefined4 *)(*(int *)(iVar1 + 8) + 0x10));
  local_28 = local_30;
  local_24 = iStack_2c;
  piVar4 = local_30;
  iVar1 = iStack_2c;
  if ((local_30 != (int *)0x0) && (uVar5 = (uint)(iStack_2c == -1), iStack_2c == -1)) {
    if ((int *)local_30[2] < (int *)local_30[3]) {
      iVar1 = *(int *)local_30[2];
    }
    else {
      iVar1 = (**(code **)(*local_30 + 0x24))(local_30);
    }
    if (iVar1 == -1) {
      piVar4 = (int *)0x0;
    }
    uVar5 = (uint)(iVar1 == -1);
  }
  uVar3 = 1;
  if (param_5 != (int *)0x0) {
    if (param_6 == -1) {
      if ((int *)param_5[2] < (int *)param_5[3]) {
        iVar2 = *(int *)param_5[2];
      }
      else {
        iVar2 = (**(code **)(*param_5 + 0x24))();
      }
      uVar3 = (uint)(iVar2 == -1);
    }
    else {
      uVar3 = 0;
    }
  }
  bVar6 = uVar3 == uVar5;
  *param_1 = piVar4;
  if (bVar6) {
    uVar3 = *param_8;
  }
  param_1[1] = iVar1;
  if (bVar6) {
    *param_8 = uVar3 | 2;
  }
  return param_1;
}

// ---- FUN_007b6f54  @ 0x7b6f54
undefined4 *
FUN_007b6f54(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
            int *param_5,int param_6,int param_7,uint *param_8,undefined4 param_9)

{
  int iVar1;
  int iVar2;
  uint uVar3;
  int *piVar4;
  uint uVar5;
  bool bVar6;
  int *local_30;
  int iStack_2c;
  int *local_28;
  int local_24;
  
  local_28 = (int *)param_3;
  local_24 = param_4;
  iVar1 = FUN_007b3bac(param_7 + 0x6c);
  uVar5 = 1;
  FUN_007b6644(&local_30,param_2,local_28,local_24,param_5,param_6,param_7,param_8,param_9,
               *(undefined4 *)(*(int *)(iVar1 + 8) + 8));
  local_28 = local_30;
  local_24 = iStack_2c;
  piVar4 = local_30;
  iVar1 = iStack_2c;
  if ((local_30 != (int *)0x0) && (uVar5 = (uint)(iStack_2c == -1), iStack_2c == -1)) {
    if ((int *)local_30[2] < (int *)local_30[3]) {
      iVar1 = *(int *)local_30[2];
    }
    else {
      iVar1 = (**(code **)(*local_30 + 0x24))(local_30);
    }
    if (iVar1 == -1) {
      piVar4 = (int *)0x0;
    }
    uVar5 = (uint)(iVar1 == -1);
  }
  uVar3 = 1;
  if (param_5 != (int *)0x0) {
    if (param_6 == -1) {
      if ((int *)param_5[2] < (int *)param_5[3]) {
        iVar2 = *(int *)param_5[2];
      }
      else {
        iVar2 = (**(code **)(*param_5 + 0x24))();
      }
      uVar3 = (uint)(iVar2 == -1);
    }
    else {
      uVar3 = 0;
    }
  }
  bVar6 = uVar3 == uVar5;
  *param_1 = piVar4;
  if (bVar6) {
    uVar3 = *param_8;
  }
  param_1[1] = iVar1;
  if (bVar6) {
    *param_8 = uVar3 | 2;
  }
  return param_1;
}

// ---- FUN_007b7024  @ 0x7b7024
/* WARNING: Restarted to delay deadcode elimination for space: stack */

int * FUN_007b7024(int *param_1,undefined4 param_2,int *param_3,wchar_t param_4,int *param_5,
                  int param_6,int param_7,uint *param_8,undefined4 param_9)

{
  char cVar1;
  bool bVar2;
  bool bVar3;
  int *piVar4;
  wchar_t *pwVar5;
  int iVar6;
  wchar_t wVar7;
  int iVar8;
  undefined1 uVar9;
  char *pcVar10;
  undefined4 uVar11;
  int iVar12;
  uint uVar13;
  uint uVar14;
  wchar_t wVar15;
  int iVar16;
  uint uVar17;
  bool bVar18;
  bool bVar19;
  bool bVar20;
  uint local_78;
  uint local_60;
  uint local_5c;
  int *local_48;
  wchar_t local_44;
  undefined1 auStack_3c [4];
  undefined1 auStack_38 [4];
  undefined1 *local_34;
  char *local_30;
  char local_2c [8];
  
  iVar12 = param_7 + 0x6c;
  local_48 = param_3;
  local_44 = param_4;
  piVar4 = (int *)FUN_007b2a34(iVar12);
  iVar12 = FUN_007b5454(auStack_3c,iVar12);
  if (*(int *)(iVar12 + 0x28) == 0) {
    bVar18 = false;
  }
  else {
    bVar18 = *(int *)(iVar12 + 0x30) != 0;
  }
  local_34 = &DAT_00972528;
  if (*(char *)(iVar12 + 0x10) != '\0') {
    FUN_007c60a0(&local_34,0x20);
  }
  local_30 = &DAT_00972528;
  FUN_007c60a0(&local_30,0x20);
  uVar11 = *(undefined4 *)(iVar12 + 0x3c);
  uVar17 = 0;
  local_78 = 0;
  bVar3 = false;
  local_2c[3] = (char)((uint)uVar11 >> 0x18);
  local_2c[2] = (char)((uint)uVar11 >> 0x10);
  local_2c[0] = (char)uVar11;
  local_5c = 0;
  local_60 = 0;
  bVar2 = false;
LAB_007b70ce:
  do {
    switch(local_2c[local_78]) {
    case '\0':
switchD_007b70da_caseD_0:
      bVar19 = true;
      goto joined_r0x007b72be;
    case '\x01':
      iVar6 = FUN_007b5e7c(&local_48,&param_5);
      if (iVar6 == 0) {
        uVar11 = FUN_007b5e44(&local_48);
        iVar6 = (**(code **)(*piVar4 + 8))(piVar4,8,uVar11);
        if (iVar6 != 0) {
          FUN_007b542c(&local_48);
          goto switchD_007b70da_caseD_0;
        }
      }
      bVar19 = false;
joined_r0x007b72be:
      if (local_78 != 3) {
        if (local_48 == (int *)0x0) goto LAB_007b740c;
LAB_007b711a:
        if (local_44 == L'\xffffffff') {
          if ((wchar_t *)local_48[2] < (wchar_t *)local_48[3]) {
            wVar7 = *(wchar_t *)local_48[2];
          }
          else {
            wVar7 = (**(code **)(*local_48 + 0x24))();
          }
          wVar15 = wVar7;
          if (wVar7 == L'\xffffffff') {
            local_48 = (int *)0x0;
            wVar15 = local_44;
          }
          local_44 = wVar15;
          uVar13 = (uint)(wVar7 == L'\xffffffff');
        }
        else {
          uVar13 = 0;
        }
LAB_007b7126:
        if (param_5 == (int *)0x0) goto LAB_007b7416;
        do {
          if (param_6 == -1) {
            if ((int *)param_5[2] < (int *)param_5[3]) {
              iVar6 = *(int *)param_5[2];
            }
            else {
              iVar6 = (**(code **)(*param_5 + 0x24))();
            }
            iVar16 = iVar6;
            if (iVar6 == -1) {
              param_5 = (int *)0x0;
              iVar16 = param_6;
            }
            param_6 = iVar16;
            uVar14 = (uint)(iVar6 == -1);
          }
          else {
            uVar14 = 0;
          }
          while( true ) {
            if (uVar14 == uVar13) goto LAB_007b7140;
            wVar7 = local_44;
            if (local_48 == (int *)0x0) {
              wVar15 = L'\xffffffff';
            }
            else {
              wVar15 = local_44;
              if (local_44 == L'\xffffffff') {
                if ((wchar_t *)local_48[2] < (wchar_t *)local_48[3]) {
                  wVar15 = *(wchar_t *)local_48[2];
                }
                else {
                  wVar15 = (**(code **)(*local_48 + 0x24))();
                }
                wVar7 = wVar15;
                if (wVar15 == L'\xffffffff') {
                  local_48 = (int *)0x0;
                  wVar7 = local_44;
                }
              }
            }
            local_44 = wVar7;
            uVar13 = (**(code **)(*piVar4 + 8))(piVar4,8,wVar15);
            if (uVar13 == 0) goto LAB_007b7140;
            if (local_48 == (int *)0x0) goto LAB_007b7126;
            if ((uint)local_48[2] < (uint)local_48[3]) {
              local_48[2] = local_48[2] + 4;
            }
            else {
              (**(code **)(*local_48 + 0x28))();
            }
            local_44 = L'\xffffffff';
            if (local_48 != (int *)0x0) goto LAB_007b711a;
LAB_007b740c:
            uVar13 = 1;
            if (param_5 != (int *)0x0) break;
LAB_007b7416:
            uVar14 = 1;
          }
        } while( true );
      }
      bVar18 = bVar19;
      if (local_60 < 2) {
        bVar18 = false;
      }
      goto LAB_007b72ce;
    case '\x02':
      if (*(int *)(param_7 + 0xc) << 0x16 < 0) {
LAB_007b7564:
        iVar6 = *(int *)(iVar12 + 0x20);
      }
      else {
        uVar13 = 1 - local_78;
        if (1 < local_78) {
          uVar13 = 0;
        }
        if (1 < local_60) {
          uVar13 = uVar13 | 1;
        }
        if (uVar13 != 0) goto LAB_007b7564;
        if (local_78 != 1) {
          if (local_78 != 2) goto switchD_007b70da_default;
          if ((local_2c[3] == '\x04') || ((bVar18 && (local_2c[3] == '\x03')))) goto LAB_007b7564;
          local_78 = 3;
          goto LAB_007b70ce;
        }
        if ((bVar18) || (local_2c[0] == '\x03')) goto LAB_007b7564;
        if (local_2c[2] != '\x01') {
          local_78 = 2;
          goto LAB_007b70ce;
        }
        iVar6 = *(int *)(iVar12 + 0x20);
      }
      iVar16 = 0;
      if (local_48 == (int *)0x0) goto LAB_007b75d0;
LAB_007b7570:
      if (local_44 == L'\xffffffff') {
        if ((wchar_t *)local_48[2] < (wchar_t *)local_48[3]) {
          wVar7 = *(wchar_t *)local_48[2];
        }
        else {
          wVar7 = (**(code **)(*local_48 + 0x24))();
        }
        bVar19 = wVar7 == L'\xffffffff';
        if (bVar19) {
          local_48 = (int *)0x0;
          wVar7 = local_44;
        }
      }
      else {
        bVar19 = false;
        wVar7 = local_44;
      }
      local_44 = wVar7;
      if (param_5 == (int *)0x0) goto LAB_007b75d8;
      while( true ) {
        if (param_6 == -1) {
          if ((int *)param_5[2] < (int *)param_5[3]) {
            iVar8 = *(int *)param_5[2];
          }
          else {
            iVar8 = (**(code **)(*param_5 + 0x24))();
          }
          bVar20 = iVar8 == -1;
          if (bVar20) {
            param_5 = (int *)0x0;
            iVar8 = param_6;
          }
        }
        else {
          bVar20 = false;
          iVar8 = param_6;
        }
        param_6 = iVar8;
        if (bVar20 == bVar19) break;
        while( true ) {
          if (iVar16 == iVar6) goto switchD_007b70da_default;
          iVar8 = FUN_007b5e44(&local_48);
          if (*(int *)(*(int *)(iVar12 + 0x1c) + iVar16 * 4) != iVar8) goto LAB_007b75a4;
          if (local_48 != (int *)0x0) {
            if ((uint)local_48[2] < (uint)local_48[3]) {
              local_48[2] = local_48[2] + 4;
            }
            else {
              (**(code **)(*local_48 + 0x28))();
            }
            local_44 = L'\xffffffff';
          }
          iVar16 = iVar16 + 1;
          if (local_48 != (int *)0x0) goto LAB_007b7570;
LAB_007b75d0:
          bVar19 = true;
          if (param_5 != (int *)0x0) break;
LAB_007b75d8:
          if (bVar19 == true) goto LAB_007b75de;
        }
      }
LAB_007b75de:
      if (iVar16 != iVar6) {
LAB_007b75a4:
        if ((iVar16 == 0) && (-1 < *(int *)(param_7 + 0xc) << 0x16)) goto switchD_007b70da_default;
        goto LAB_007b722a;
      }
    default:
switchD_007b70da_default:
      bVar19 = true;
      break;
    case '\x03':
      if (((*(int *)(iVar12 + 0x28) != 0) && (iVar6 = FUN_007b5e7c(&local_48,&param_5), iVar6 == 0))
         && (iVar6 = FUN_007b5e44(&local_48), **(int **)(iVar12 + 0x24) == iVar6)) {
        local_60 = *(uint *)(iVar12 + 0x28);
        FUN_007b542c(&local_48);
        goto switchD_007b70da_default;
      }
      if (((*(int *)(iVar12 + 0x30) == 0) || (iVar6 = FUN_007b5e7c(&local_48,&param_5), iVar6 != 0))
         || (iVar6 = FUN_007b5e44(&local_48), **(int **)(iVar12 + 0x2c) != iVar6)) {
        bVar19 = (bool)(bVar18 ^ 1);
        if ((*(int *)(iVar12 + 0x28) != 0) && (*(int *)(iVar12 + 0x30) == 0)) {
          bVar2 = true;
          bVar19 = true;
        }
      }
      else {
        local_60 = *(uint *)(iVar12 + 0x30);
        FUN_007b542c(&local_48);
        bVar2 = true;
        bVar19 = true;
      }
      break;
    case '\x04':
      if (local_48 == (int *)0x0) goto LAB_007b7210;
LAB_007b7162:
      if (local_44 == L'\xffffffff') {
        if ((wchar_t *)local_48[2] < (wchar_t *)local_48[3]) {
          wVar7 = *(wchar_t *)local_48[2];
        }
        else {
          wVar7 = (**(code **)(*local_48 + 0x24))();
        }
        bVar19 = wVar7 == L'\xffffffff';
        if (bVar19) {
          local_48 = (int *)0x0;
          wVar7 = local_44;
        }
      }
      else {
        bVar19 = false;
        wVar7 = local_44;
      }
      local_44 = wVar7;
      if (param_5 == (int *)0x0) goto LAB_007b7218;
      while( true ) {
        if (param_6 == -1) {
          if ((int *)param_5[2] < (int *)param_5[3]) {
            iVar6 = *(int *)param_5[2];
          }
          else {
            iVar6 = (**(code **)(*param_5 + 0x24))();
          }
          bVar20 = iVar6 == -1;
          if (bVar20) {
            param_5 = (int *)0x0;
            iVar6 = param_6;
          }
        }
        else {
          bVar20 = false;
          iVar6 = param_6;
        }
        param_6 = iVar6;
        uVar13 = uVar17;
        if (bVar19 == bVar20) break;
        while( true ) {
          wVar7 = local_44;
          if (local_48 == (int *)0x0) {
            wVar15 = L'\xffffffff';
          }
          else {
            wVar15 = local_44;
            if (local_44 == L'\xffffffff') {
              if ((wchar_t *)local_48[2] < (wchar_t *)local_48[3]) {
                wVar15 = *(wchar_t *)local_48[2];
              }
              else {
                wVar15 = (**(code **)(*local_48 + 0x24))();
              }
              wVar7 = wVar15;
              if (wVar15 == L'\xffffffff') {
                local_48 = (int *)0x0;
                wVar7 = local_44;
              }
            }
          }
          local_44 = wVar7;
          pwVar5 = wmemchr((wchar_t *)(iVar12 + 0x44),wVar15,10);
          if (pwVar5 == (wchar_t *)0x0) {
            if ((*(wchar_t *)(iVar12 + 0x14) != wVar15) || (bVar3)) {
              if ((*(char *)(iVar12 + 0x10) == '\0') ||
                 ((*(wchar_t *)(iVar12 + 0x18) != wVar15 || (bVar3)))) goto LAB_007b721e;
              if (uVar13 == 0) {
                bVar19 = false;
                goto LAB_007b7220;
              }
              iVar6 = *(int *)(local_34 + -0xc);
              uVar14 = iVar6 + 1;
              if ((*(uint *)(local_34 + -8) < uVar14) || (0 < *(int *)(local_34 + -4))) {
                FUN_007c60a0(&local_34,uVar14);
                iVar6 = *(int *)(local_34 + -0xc);
              }
              local_34[iVar6] = (char)uVar13;
              if (local_34 != &DAT_00972528) {
                *(uint *)(local_34 + -0xc) = uVar14;
                uVar9 = 0;
                *(undefined4 *)(local_34 + -4) = 0;
              }
              else {
                uVar9 = 0x1c;
              }
              uVar17 = 0;
              if (local_34 != &DAT_00972528) {
                local_34[uVar14] = uVar9;
              }
            }
            else {
              if (*(int *)(iVar12 + 0x34) < 1) goto LAB_007b721e;
              bVar3 = true;
              uVar17 = 0;
              local_5c = uVar13;
            }
          }
          else {
            iVar6 = *(int *)(local_30 + -0xc);
            uVar14 = iVar6 + 1;
            cVar1 = *(char *)(DAT_0094f578 + ((int)pwVar5 - (iVar12 + 0x40) >> 2));
            if ((*(uint *)(local_30 + -8) < uVar14) || (0 < *(int *)(local_30 + -4))) {
              FUN_007c60a0(&local_30,uVar14);
              iVar6 = *(int *)(local_30 + -0xc);
            }
            local_30[iVar6] = cVar1;
            uVar17 = uVar13 + 1;
            pcVar10 = local_30 + -0xc;
            bVar19 = pcVar10 != (char *)&DAT_0097251c;
            if (bVar19) {
              *(uint *)(local_30 + -0xc) = uVar14;
              pcVar10 = (char *)0x0;
              local_30[-0xffffffff00000004] = '\0';
              local_30[-0xffffffff00000003] = '\0';
              local_30[-0xffffffff00000002] = '\0';
              local_30[-0xffffffff00000001] = '\0';
            }
            if (bVar19) {
              local_30[uVar14] = (char)pcVar10;
            }
          }
          if (local_48 != (int *)0x0) {
            if ((uint)local_48[2] < (uint)local_48[3]) {
              local_48[2] = local_48[2] + 4;
            }
            else {
              (**(code **)(*local_48 + 0x28))();
            }
            local_44 = L'\xffffffff';
            if (local_48 != (int *)0x0) goto LAB_007b7162;
          }
LAB_007b7210:
          bVar19 = true;
          if (param_5 != (int *)0x0) break;
LAB_007b7218:
          uVar13 = uVar17;
          if (bVar19 == true) goto LAB_007b721e;
        }
      }
LAB_007b721e:
      bVar19 = true;
LAB_007b7220:
      uVar17 = uVar13;
      if (*(int *)(local_30 + -0xc) == 0) goto LAB_007b722a;
    }
LAB_007b7140:
    local_78 = local_78 + 1;
    bVar20 = bVar19;
    if (3 < (int)local_78) {
      bVar20 = false;
    }
  } while (bVar20);
  bVar18 = bVar19;
  if (local_60 < 2) {
    bVar18 = false;
  }
LAB_007b72ce:
  if (bVar18) {
    if (bVar2) {
      piVar4 = *(int **)(iVar12 + 0x2c);
    }
    else {
      piVar4 = *(int **)(iVar12 + 0x24);
    }
    for (uVar13 = 1; (iVar6 = FUN_007b5e7c(&local_48,&param_5), iVar6 == 0 && (uVar13 < local_60));
        uVar13 = uVar13 + 1) {
      iVar6 = FUN_007b5e44(&local_48);
      piVar4 = piVar4 + 1;
      if (*piVar4 != iVar6) goto LAB_007b722a;
      FUN_007b542c(&local_48);
    }
    if (uVar13 == local_60) goto LAB_007b72d8;
  }
  else if (bVar19) {
LAB_007b72d8:
    if ((1 < *(uint *)(local_30 + -0xc)) && (iVar6 = FUN_007c55a4(&local_30,0x30,0), iVar6 != 0)) {
      FUN_007c5b80(&local_30,0);
    }
    if (bVar2) {
      if (-1 < *(int *)(local_30 + -4)) {
        FUN_007c5a30(&local_30);
      }
      if (*local_30 != '0') {
        if (-1 < *(int *)(local_30 + -4)) {
          FUN_007c5a30(&local_30);
        }
        FUN_007c5bf4(&local_30,0,0,1,0x2d);
        local_30[-0xffffffff00000004] = -1;
        local_30[-0xffffffff00000003] = -1;
        local_30[-0xffffffff00000002] = -1;
        local_30[-0xffffffff00000001] = -1;
      }
    }
    if (*(int *)(local_34 + -0xc) != 0) {
      uVar13 = uVar17;
      if (bVar3) {
        uVar13 = local_5c;
      }
      FUN_007c640c(&local_34,uVar13 & 0xff);
      iVar6 = FUN_007c7b7c(*(undefined4 *)(iVar12 + 8),*(undefined4 *)(iVar12 + 0xc),&local_34);
      if (iVar6 == 0) {
        *param_8 = *param_8 | 4;
      }
    }
    if ((!bVar3) || (*(uint *)(iVar12 + 0x34) == uVar17)) {
      FUN_007c52bc(param_9,&local_30);
      goto LAB_007b7234;
    }
  }
LAB_007b722a:
  *param_8 = *param_8 | 4;
LAB_007b7234:
  iVar12 = FUN_007b5e7c(&local_48,&param_5);
  if (iVar12 != 0) {
    *param_8 = *param_8 | 2;
  }
  *param_1 = (int)local_48;
  param_1[1] = local_44;
  FUN_007c5900(local_30 + -0xc,auStack_38);
  FUN_007c5900(local_34 + -0xc,auStack_38);
  return param_1;
}

// ---- FUN_007b77a8  @ 0x7b77a8
/* WARNING: Restarted to delay deadcode elimination for space: stack */

int * FUN_007b77a8(int *param_1,undefined4 param_2,int *param_3,wchar_t param_4,int *param_5,
                  int param_6,int param_7,uint *param_8,undefined4 param_9)

{
  char cVar1;
  bool bVar2;
  bool bVar3;
  int *piVar4;
  wchar_t *pwVar5;
  int iVar6;
  wchar_t wVar7;
  int iVar8;
  char cVar9;
  int iVar10;
  int extraout_r1;
  undefined1 uVar11;
  undefined4 uVar12;
  int iVar13;
  uint uVar14;
  uint uVar15;
  wchar_t wVar16;
  uint uVar17;
  bool bVar18;
  bool bVar19;
  bool bVar20;
  uint local_78;
  uint local_60;
  uint local_5c;
  int *local_48;
  wchar_t local_44;
  undefined1 auStack_3c [4];
  undefined1 auStack_38 [4];
  undefined1 *local_34;
  char *local_30;
  char local_2c [8];
  
  iVar13 = param_7 + 0x6c;
  local_48 = param_3;
  local_44 = param_4;
  piVar4 = (int *)FUN_007b2a34(iVar13);
  iVar13 = FUN_007b5384(auStack_3c,iVar13);
  if (*(int *)(iVar13 + 0x28) == 0) {
    bVar18 = false;
  }
  else {
    bVar18 = *(int *)(iVar13 + 0x30) != 0;
  }
  local_34 = &DAT_00972528;
  if (*(char *)(iVar13 + 0x10) != '\0') {
    FUN_007c60a0(&local_34,0x20);
  }
  local_30 = &DAT_00972528;
  FUN_007c60a0(&local_30,0x20);
  uVar12 = *(undefined4 *)(iVar13 + 0x3c);
  uVar17 = 0;
  local_78 = 0;
  bVar3 = false;
  local_5c = 0;
  local_2c[3] = (char)((uint)uVar12 >> 0x18);
  local_2c[2] = (char)((uint)uVar12 >> 0x10);
  local_2c[0] = (char)uVar12;
  local_60 = 0;
  bVar2 = false;
LAB_007b7852:
  do {
    switch(local_2c[local_78]) {
    case '\0':
switchD_007b785e_caseD_0:
      bVar20 = true;
      goto joined_r0x007b7a44;
    case '\x01':
      iVar6 = FUN_007b5e7c(&local_48,&param_5);
      if (iVar6 == 0) {
        uVar12 = FUN_007b5e44(&local_48);
        iVar6 = (**(code **)(*piVar4 + 8))(piVar4,8,uVar12);
        if (iVar6 != 0) {
          FUN_007b542c(&local_48);
          goto switchD_007b785e_caseD_0;
        }
      }
      bVar20 = false;
joined_r0x007b7a44:
      if (local_78 != 3) {
        if (local_48 == (int *)0x0) goto LAB_007b7b92;
LAB_007b789e:
        if (local_44 == L'\xffffffff') {
          if ((wchar_t *)local_48[2] < (wchar_t *)local_48[3]) {
            wVar7 = *(wchar_t *)local_48[2];
          }
          else {
            wVar7 = (**(code **)(*local_48 + 0x24))();
          }
          wVar16 = wVar7;
          if (wVar7 == L'\xffffffff') {
            local_48 = (int *)0x0;
            wVar16 = local_44;
          }
          local_44 = wVar16;
          uVar14 = (uint)(wVar7 == L'\xffffffff');
        }
        else {
          uVar14 = 0;
        }
LAB_007b78aa:
        if (param_5 == (int *)0x0) goto LAB_007b7b9c;
        do {
          if (param_6 == -1) {
            if ((int *)param_5[2] < (int *)param_5[3]) {
              iVar6 = *(int *)param_5[2];
            }
            else {
              iVar6 = (**(code **)(*param_5 + 0x24))();
            }
            iVar10 = iVar6;
            if (iVar6 == -1) {
              param_5 = (int *)0x0;
              iVar10 = param_6;
            }
            param_6 = iVar10;
            uVar15 = (uint)(iVar6 == -1);
          }
          else {
            uVar15 = 0;
          }
          while( true ) {
            if (uVar15 == uVar14) goto LAB_007b78c4;
            wVar7 = local_44;
            if (local_48 == (int *)0x0) {
              wVar16 = L'\xffffffff';
            }
            else {
              wVar16 = local_44;
              if (local_44 == L'\xffffffff') {
                if ((wchar_t *)local_48[2] < (wchar_t *)local_48[3]) {
                  wVar16 = *(wchar_t *)local_48[2];
                }
                else {
                  wVar16 = (**(code **)(*local_48 + 0x24))();
                }
                wVar7 = wVar16;
                if (wVar16 == L'\xffffffff') {
                  local_48 = (int *)0x0;
                  wVar7 = local_44;
                }
              }
            }
            local_44 = wVar7;
            uVar14 = (**(code **)(*piVar4 + 8))(piVar4,8,wVar16);
            if (uVar14 == 0) goto LAB_007b78c4;
            if (local_48 == (int *)0x0) goto LAB_007b78aa;
            if ((uint)local_48[2] < (uint)local_48[3]) {
              local_48[2] = local_48[2] + 4;
            }
            else {
              (**(code **)(*local_48 + 0x28))();
            }
            local_44 = L'\xffffffff';
            if (local_48 != (int *)0x0) goto LAB_007b789e;
LAB_007b7b92:
            uVar14 = 1;
            if (param_5 != (int *)0x0) break;
LAB_007b7b9c:
            uVar15 = 1;
          }
        } while( true );
      }
      goto LAB_007b7a48;
    case '\x02':
      if (*(int *)(param_7 + 0xc) << 0x16 < 0) {
LAB_007b7cea:
        iVar6 = *(int *)(iVar13 + 0x20);
      }
      else {
        uVar14 = 1 - local_78;
        if (1 < local_78) {
          uVar14 = 0;
        }
        if (1 < local_60) {
          uVar14 = uVar14 | 1;
        }
        if (uVar14 != 0) goto LAB_007b7cea;
        if (local_78 != 1) {
          if (local_78 != 2) goto switchD_007b785e_default;
          if ((local_2c[3] == '\x04') || ((bVar18 && (local_2c[3] == '\x03')))) goto LAB_007b7cea;
          local_78 = 3;
          goto LAB_007b7852;
        }
        if ((bVar18) || (local_2c[0] == '\x03')) goto LAB_007b7cea;
        if (local_2c[2] != '\x01') {
          local_78 = 2;
          goto LAB_007b7852;
        }
        iVar6 = *(int *)(iVar13 + 0x20);
      }
      iVar10 = 0;
      if (local_48 == (int *)0x0) goto LAB_007b7d56;
LAB_007b7cf6:
      if (local_44 == L'\xffffffff') {
        if ((wchar_t *)local_48[2] < (wchar_t *)local_48[3]) {
          wVar7 = *(wchar_t *)local_48[2];
        }
        else {
          wVar7 = (**(code **)(*local_48 + 0x24))();
        }
        bVar20 = wVar7 == L'\xffffffff';
        if (bVar20) {
          local_48 = (int *)0x0;
          wVar7 = local_44;
        }
      }
      else {
        bVar20 = false;
        wVar7 = local_44;
      }
      local_44 = wVar7;
      if (param_5 == (int *)0x0) goto LAB_007b7d5e;
      while( true ) {
        if (param_6 == -1) {
          if ((int *)param_5[2] < (int *)param_5[3]) {
            iVar8 = *(int *)param_5[2];
          }
          else {
            iVar8 = (**(code **)(*param_5 + 0x24))();
          }
          bVar19 = iVar8 == -1;
          if (bVar19) {
            param_5 = (int *)0x0;
            iVar8 = param_6;
          }
        }
        else {
          bVar19 = false;
          iVar8 = param_6;
        }
        param_6 = iVar8;
        if (bVar20 == bVar19) break;
        while( true ) {
          if (iVar10 == iVar6) goto switchD_007b785e_default;
          iVar8 = FUN_007b5e44(&local_48);
          if (*(int *)(*(int *)(iVar13 + 0x1c) + iVar10 * 4) != iVar8) goto LAB_007b7d2a;
          if (local_48 != (int *)0x0) {
            if ((uint)local_48[2] < (uint)local_48[3]) {
              local_48[2] = local_48[2] + 4;
            }
            else {
              (**(code **)(*local_48 + 0x28))();
            }
            local_44 = L'\xffffffff';
          }
          iVar10 = iVar10 + 1;
          if (local_48 != (int *)0x0) goto LAB_007b7cf6;
LAB_007b7d56:
          bVar20 = true;
          if (param_5 != (int *)0x0) break;
LAB_007b7d5e:
          if (bVar20 == true) goto LAB_007b7d64;
        }
      }
LAB_007b7d64:
      if (iVar10 != iVar6) {
LAB_007b7d2a:
        if ((iVar10 == 0) && (-1 < *(int *)(param_7 + 0xc) << 0x16)) goto switchD_007b785e_default;
        goto LAB_007b79ae;
      }
    default:
switchD_007b785e_default:
      bVar20 = true;
      break;
    case '\x03':
      if (((*(int *)(iVar13 + 0x28) != 0) && (iVar6 = FUN_007b5e7c(&local_48,&param_5), iVar6 == 0))
         && (iVar6 = FUN_007b5e44(&local_48), **(int **)(iVar13 + 0x24) == iVar6)) {
        local_60 = *(uint *)(iVar13 + 0x28);
        FUN_007b542c(&local_48);
        goto switchD_007b785e_default;
      }
      if (((*(int *)(iVar13 + 0x30) == 0) || (iVar6 = FUN_007b5e7c(&local_48,&param_5), iVar6 != 0))
         || (iVar6 = FUN_007b5e44(&local_48), **(int **)(iVar13 + 0x2c) != iVar6)) {
        bVar20 = (bool)(bVar18 ^ 1);
        if ((*(int *)(iVar13 + 0x28) != 0) && (*(int *)(iVar13 + 0x30) == 0)) {
          bVar2 = true;
          bVar20 = true;
        }
      }
      else {
        local_60 = *(uint *)(iVar13 + 0x30);
        FUN_007b542c(&local_48);
        bVar2 = true;
        bVar20 = true;
      }
      break;
    case '\x04':
      if (local_48 == (int *)0x0) goto LAB_007b7994;
LAB_007b78e6:
      if (local_44 == L'\xffffffff') {
        if ((wchar_t *)local_48[2] < (wchar_t *)local_48[3]) {
          wVar7 = *(wchar_t *)local_48[2];
        }
        else {
          wVar7 = (**(code **)(*local_48 + 0x24))();
        }
        bVar20 = wVar7 == L'\xffffffff';
        if (bVar20) {
          local_48 = (int *)0x0;
          wVar7 = local_44;
        }
      }
      else {
        bVar20 = false;
        wVar7 = local_44;
      }
      local_44 = wVar7;
      if (param_5 == (int *)0x0) goto LAB_007b799c;
      while( true ) {
        if (param_6 == -1) {
          if ((int *)param_5[2] < (int *)param_5[3]) {
            iVar6 = *(int *)param_5[2];
          }
          else {
            iVar6 = (**(code **)(*param_5 + 0x24))();
          }
          bVar19 = iVar6 == -1;
          if (bVar19) {
            param_5 = (int *)0x0;
            iVar6 = param_6;
          }
        }
        else {
          bVar19 = false;
          iVar6 = param_6;
        }
        param_6 = iVar6;
        uVar14 = uVar17;
        if (bVar19 == bVar20) break;
        while( true ) {
          wVar7 = local_44;
          if (local_48 == (int *)0x0) {
            wVar16 = L'\xffffffff';
          }
          else {
            wVar16 = local_44;
            if (local_44 == L'\xffffffff') {
              if ((wchar_t *)local_48[2] < (wchar_t *)local_48[3]) {
                wVar16 = *(wchar_t *)local_48[2];
              }
              else {
                wVar16 = (**(code **)(*local_48 + 0x24))();
              }
              wVar7 = wVar16;
              if (wVar16 == L'\xffffffff') {
                local_48 = (int *)0x0;
                wVar7 = local_44;
              }
            }
          }
          local_44 = wVar7;
          pwVar5 = wmemchr((wchar_t *)(iVar13 + 0x44),wVar16,10);
          if (pwVar5 == (wchar_t *)0x0) {
            if ((*(wchar_t *)(iVar13 + 0x14) != wVar16) || (bVar3)) {
              if ((*(char *)(iVar13 + 0x10) == '\0') ||
                 ((*(wchar_t *)(iVar13 + 0x18) != wVar16 || (bVar3)))) goto LAB_007b79a2;
              if (uVar14 == 0) {
                bVar20 = false;
                goto LAB_007b79a4;
              }
              iVar6 = *(int *)(local_34 + -0xc);
              uVar15 = iVar6 + 1;
              if ((*(uint *)(local_34 + -8) < uVar15) || (0 < *(int *)(local_34 + -4))) {
                FUN_007c60a0(&local_34,uVar15);
                iVar6 = *(int *)(local_34 + -0xc);
              }
              local_34[iVar6] = (char)uVar14;
              if (local_34 != &DAT_00972528) {
                *(uint *)(local_34 + -0xc) = uVar15;
                uVar11 = 0;
                *(undefined4 *)(local_34 + -4) = 0;
              }
              else {
                uVar11 = 0x1c;
              }
              uVar17 = 0;
              if (local_34 != &DAT_00972528) {
                local_34[uVar15] = uVar11;
              }
            }
            else {
              if (*(int *)(iVar13 + 0x34) < 1) goto LAB_007b79a2;
              bVar3 = true;
              uVar17 = 0;
              local_5c = uVar14;
            }
          }
          else {
            iVar6 = *(int *)(local_30 + -0xc);
            uVar15 = iVar6 + 1;
            cVar1 = *(char *)(DAT_0094f578 + ((int)pwVar5 - (iVar13 + 0x40) >> 2));
            if ((*(uint *)(local_30 + -8) < uVar15) ||
               (iVar10 = *(int *)(local_30 + -4), 0 < iVar10)) {
              FUN_007c60a0(&local_30,uVar15);
              iVar6 = *(int *)(local_30 + -0xc);
              iVar10 = extraout_r1;
            }
            cVar9 = (char)iVar10;
            local_30[iVar6] = cVar1;
            uVar17 = uVar14 + 1;
            if (local_30 != &DAT_00972528) {
              *(uint *)(local_30 + -0xc) = uVar15;
              cVar9 = '\0';
              local_30[-0xffffffff00000004] = '\0';
              local_30[-0xffffffff00000003] = '\0';
              local_30[-0xffffffff00000002] = '\0';
              local_30[-0xffffffff00000001] = '\0';
            }
            if (local_30 != &DAT_00972528) {
              local_30[uVar15] = cVar9;
            }
          }
          if (local_48 != (int *)0x0) {
            if ((uint)local_48[2] < (uint)local_48[3]) {
              local_48[2] = local_48[2] + 4;
            }
            else {
              (**(code **)(*local_48 + 0x28))();
            }
            local_44 = L'\xffffffff';
            if (local_48 != (int *)0x0) goto LAB_007b78e6;
          }
LAB_007b7994:
          bVar20 = true;
          if (param_5 != (int *)0x0) break;
LAB_007b799c:
          uVar14 = uVar17;
          if (bVar20 == true) goto LAB_007b79a2;
        }
      }
LAB_007b79a2:
      bVar20 = true;
LAB_007b79a4:
      uVar17 = uVar14;
      if (*(int *)(local_30 + -0xc) == 0) goto LAB_007b79ae;
    }
LAB_007b78c4:
    local_78 = local_78 + 1;
    bVar19 = bVar20;
    if (3 < (int)local_78) {
      bVar19 = false;
    }
  } while (bVar19);
LAB_007b7a48:
  bVar18 = bVar20;
  if (local_60 < 2) {
    bVar18 = false;
  }
  if (bVar18) {
    if (bVar2) {
      piVar4 = *(int **)(iVar13 + 0x2c);
    }
    else {
      piVar4 = *(int **)(iVar13 + 0x24);
    }
    for (uVar14 = 1; (iVar6 = FUN_007b5e7c(&local_48,&param_5), iVar6 == 0 && (uVar14 < local_60));
        uVar14 = uVar14 + 1) {
      iVar6 = FUN_007b5e44(&local_48);
      piVar4 = piVar4 + 1;
      if (*piVar4 != iVar6) goto LAB_007b79ae;
      FUN_007b542c(&local_48);
    }
    if (uVar14 == local_60) goto LAB_007b7a5e;
  }
  else if (bVar20) {
LAB_007b7a5e:
    if ((1 < *(uint *)(local_30 + -0xc)) && (iVar6 = FUN_007c55a4(&local_30,0x30,0), iVar6 != 0)) {
      FUN_007c5b80(&local_30,0);
    }
    if (bVar2) {
      if (-1 < *(int *)(local_30 + -4)) {
        FUN_007c5a30(&local_30);
      }
      if (*local_30 != '0') {
        if (-1 < *(int *)(local_30 + -4)) {
          FUN_007c5a30(&local_30);
        }
        FUN_007c5bf4(&local_30,0,0,1,0x2d);
        local_30[-0xffffffff00000004] = -1;
        local_30[-0xffffffff00000003] = -1;
        local_30[-0xffffffff00000002] = -1;
        local_30[-0xffffffff00000001] = -1;
      }
    }
    if (*(int *)(local_34 + -0xc) != 0) {
      uVar14 = uVar17;
      if (bVar3) {
        uVar14 = local_5c;
      }
      FUN_007c640c(&local_34,uVar14 & 0xff);
      iVar6 = FUN_007c7b7c(*(undefined4 *)(iVar13 + 8),*(undefined4 *)(iVar13 + 0xc),&local_34);
      if (iVar6 == 0) {
        *param_8 = *param_8 | 4;
      }
    }
    if ((!bVar3) || (*(uint *)(iVar13 + 0x34) == uVar17)) {
      FUN_007c52bc(param_9,&local_30);
      goto LAB_007b79b8;
    }
  }
LAB_007b79ae:
  *param_8 = *param_8 | 4;
LAB_007b79b8:
  iVar13 = FUN_007b5e7c(&local_48,&param_5);
  if (iVar13 != 0) {
    *param_8 = *param_8 | 2;
  }
  *param_1 = (int)local_48;
  param_1[1] = local_44;
  if (local_30 + -0xc != (char *)&DAT_0097251c) {
    piVar4 = (int *)(local_30 + -4);
    DataMemoryBarrier(0x1f);
    do {
      ExclusiveAccess(piVar4);
      iVar13 = *piVar4;
      bVar18 = (bool)hasExclusiveAccess(piVar4);
    } while (!bVar18);
    *piVar4 = iVar13 + -1;
    DataMemoryBarrier(0x1f);
    if (iVar13 < 1) {
      operator_delete(local_30 + -0xc);
    }
  }
  FUN_007c5900(local_34 + -0xc,auStack_38);
  return param_1;
}

// ---- FUN_007b7f48  @ 0x7b7f48
undefined4 *
FUN_007b7f48(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5,undefined4 param_6,char param_7,undefined4 param_8,
            _Ios_Iostate *param_9,longdouble *param_10)

{
  bool bVar1;
  char *pcVar2;
  int iVar3;
  int *piVar4;
  undefined4 local_38;
  undefined4 uStack_34;
  undefined4 local_30;
  undefined4 uStack_2c;
  char *local_28;
  int *local_24 [2];
  
  local_28 = &DAT_00972528;
  local_30 = param_3;
  uStack_2c = param_4;
  if (param_7 == '\0') {
    FUN_007b7024(&local_38,param_2,param_3,param_4,param_5,param_6,param_8,param_9,&local_28);
  }
  else {
    FUN_007b77a8();
  }
  pcVar2 = local_28;
  local_30 = local_38;
  uStack_2c = uStack_34;
  local_24[0] = (int *)FUN_007b0058();
  std::__convert_to_v<long_double>(pcVar2,param_10,param_9,local_24);
  *param_1 = local_30;
  param_1[1] = uStack_2c;
  if (local_28 + -0xc != (char *)&DAT_0097251c) {
    piVar4 = (int *)(local_28 + -4);
    DataMemoryBarrier(0x1f);
    do {
      ExclusiveAccess(piVar4);
      iVar3 = *piVar4;
      bVar1 = (bool)hasExclusiveAccess(piVar4);
    } while (!bVar1);
    *piVar4 = iVar3 + -1;
    DataMemoryBarrier(0x1f);
    if (iVar3 < 1) {
      operator_delete(local_28 + -0xc);
    }
  }
  return param_1;
}

// ---- FUN_007b8010  @ 0x7b8010
undefined4 *
FUN_007b8010(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5,undefined4 param_6,char param_7,int param_8,undefined4 param_9,
            int *param_10)

{
  bool bVar1;
  undefined1 *puVar2;
  int *piVar3;
  int iVar4;
  int iVar5;
  undefined1 *puVar6;
  undefined4 local_40;
  undefined4 uStack_3c;
  undefined4 local_38;
  undefined4 uStack_34;
  undefined1 *local_2c [2];
  
  local_38 = param_3;
  uStack_34 = param_4;
  piVar3 = (int *)FUN_007b2a34(param_8 + 0x6c);
  local_2c[0] = &DAT_00972528;
  if (param_7 == '\0') {
    FUN_007b7024(&local_40,param_2,local_38,uStack_34,param_5,param_6,param_8,param_9,local_2c);
  }
  else {
    FUN_007b77a8(&local_40,param_2,local_38,uStack_34,param_5,param_6,param_8,param_9,local_2c);
  }
  iVar5 = *(int *)(local_2c[0] + -0xc);
  local_38 = local_40;
  uStack_34 = uStack_3c;
  if (iVar5 != 0) {
    FUN_007bf514(param_10,iVar5,0);
    puVar2 = local_2c[0];
    iVar4 = *param_10;
    puVar6 = local_2c[0] + iVar5;
    if (-1 < *(int *)(iVar4 + -4)) {
      FUN_007beb4c(param_10);
      iVar4 = *param_10;
    }
    (**(code **)(*piVar3 + 0x2c))(piVar3,puVar2,puVar6,iVar4);
  }
  *param_1 = local_38;
  param_1[1] = uStack_34;
  if ((undefined4 *)(local_2c[0] + -0xc) != &DAT_0097251c) {
    piVar3 = (int *)(local_2c[0] + -4);
    DataMemoryBarrier(0x1f);
    do {
      ExclusiveAccess(piVar3);
      iVar5 = *piVar3;
      bVar1 = (bool)hasExclusiveAccess(piVar3);
    } while (!bVar1);
    *piVar3 = iVar5 + -1;
    DataMemoryBarrier(0x1f);
    if (iVar5 < 1) {
      operator_delete(local_2c[0] + -0xc);
    }
  }
  return param_1;
}

// ---- FUN_007b8128  @ 0x7b8128
undefined4 *
FUN_007b8128(undefined4 *param_1,undefined4 param_2,int *param_3,int param_4,int *param_5,
            int param_6,int param_7,undefined4 *param_8,int *param_9)

{
  int *piVar1;
  int iVar2;
  int iVar3;
  wchar_t *pwVar4;
  undefined4 uVar5;
  char cVar6;
  char cVar7;
  char cVar8;
  int iVar9;
  undefined1 *puVar10;
  wchar_t __c;
  uint uVar11;
  wchar_t wVar12;
  uint uVar13;
  uint uVar14;
  uint uVar15;
  uint uVar16;
  bool bVar17;
  bool bVar18;
  uint local_4c;
  int *local_40;
  int local_3c;
  undefined1 auStack_34 [4];
  undefined1 auStack_30 [4];
  undefined1 *local_2c [2];
  
  piVar1 = param_9;
  __c = L'\0';
  local_40 = param_3;
  local_3c = param_4;
  iVar2 = FUN_007b54fc(auStack_34,param_7 + 0x6c);
  iVar3 = FUN_007b5e7c(&local_40,&param_5);
  if (iVar3 == 0) {
    __c = FUN_007b5e44(&local_40);
    bVar17 = *(wchar_t *)(iVar2 + 0xc0) == __c;
    if ((!bVar17) && (*(wchar_t *)(iVar2 + 0xbc) != __c)) {
      cVar6 = *(char *)(iVar2 + 0x10);
LAB_007b85fa:
      uVar16 = 0;
      uVar13 = 0;
      do {
        uVar14 = 0;
        if ((cVar6 != '\0') && (*(wchar_t *)(iVar2 + 0x28) == __c)) goto LAB_007b8570;
        if ((*(wchar_t *)(iVar2 + 0x24) == __c) ||
           (wVar12 = *(wchar_t *)(iVar2 + 0xcc), wVar12 != __c)) goto LAB_007b8164;
        if (uVar13 == 0) {
          FUN_007c640c(piVar1,0x30);
        }
        uVar16 = uVar16 + 1;
        if (local_40 == (int *)0x0) {
LAB_007b869c:
          bVar17 = true;
        }
        else {
          if ((uint)local_40[2] < (uint)local_40[3]) {
            local_40[2] = local_40[2] + 4;
          }
          else {
            (**(code **)(*local_40 + 0x28))();
            local_3c = -1;
            if (local_40 == (int *)0x0) goto LAB_007b869c;
          }
          local_3c = -1;
          if ((int *)local_40[2] < (int *)local_40[3]) {
            iVar3 = *(int *)local_40[2];
          }
          else {
            iVar3 = (**(code **)(*local_40 + 0x24))();
          }
          if (iVar3 == -1) {
            bVar17 = true;
            local_40 = (int *)0x0;
          }
          else {
            bVar17 = false;
            local_3c = iVar3;
          }
        }
        bVar18 = true;
        iVar3 = param_6;
        if (param_5 != (int *)0x0) {
          if (param_6 == -1) {
            if ((int *)param_5[2] < (int *)param_5[3]) {
              iVar3 = *(int *)param_5[2];
            }
            else {
              iVar3 = (**(code **)(*param_5 + 0x24))();
            }
            bVar18 = iVar3 == -1;
            if (bVar18) {
              param_5 = (int *)0x0;
              iVar3 = param_6;
            }
          }
          else {
            bVar18 = false;
          }
        }
        param_6 = iVar3;
        if (bVar18 == bVar17) goto code_r0x007b8668;
        uVar13 = 1;
        __c = FUN_007b5e44(&local_40);
        cVar6 = *(char *)(iVar2 + 0x10);
      } while( true );
    }
    cVar6 = *(char *)(iVar2 + 0x10);
    if ((cVar6 != '\0') && (*(wchar_t *)(iVar2 + 0x28) == __c)) {
      cVar6 = '\x01';
      goto LAB_007b85fa;
    }
    if (*(wchar_t *)(iVar2 + 0x24) == __c) goto LAB_007b85fa;
    if (bVar17) {
      uVar5 = 0x2b;
    }
    else {
      uVar5 = 0x2d;
    }
    FUN_007c640c(piVar1,uVar5);
    uVar5 = FUN_007b542c(&local_40);
    iVar3 = FUN_007b5e7c(uVar5,&param_5);
    if (iVar3 == 0) {
      __c = FUN_007b5e44(&local_40);
      cVar6 = *(char *)(iVar2 + 0x10);
      goto LAB_007b85fa;
    }
  }
  cVar6 = *(char *)(iVar2 + 0x10);
  uVar16 = 0;
  uVar13 = 0;
  uVar14 = 1;
  goto LAB_007b8164;
LAB_007b86de:
  uVar14 = 1;
  goto LAB_007b835c;
code_r0x007b8668:
  uVar14 = 1;
  uVar13 = 1;
  cVar6 = *(char *)(iVar2 + 0x10);
  __c = wVar12;
LAB_007b8164:
  local_2c[0] = &DAT_00972528;
  if (cVar6 != '\0') {
LAB_007b8570:
    local_2c[0] = &DAT_00972528;
    FUN_007c60a0(local_2c,0x20);
  }
  cVar6 = *(char *)(iVar2 + 0x124);
  local_4c = uVar14;
  if (cVar6 == '\0') {
    if (uVar14 == 0) {
LAB_007b8190:
      uVar15 = __c + L'\xffffffd0';
      if (9 < uVar15) goto LAB_007b823e;
      do {
        iVar9 = *piVar1;
        iVar3 = *(int *)(iVar9 + -0xc);
        uVar11 = iVar3 + 1;
        if ((*(uint *)(iVar9 + -8) < uVar11) || (0 < *(int *)(iVar9 + -4))) {
          FUN_007c60a0(piVar1,uVar11);
          iVar9 = *piVar1;
          iVar3 = *(int *)(iVar9 + -0xc);
        }
        *(char *)(iVar9 + iVar3) = (char)uVar15 + '0';
        puVar10 = (undefined1 *)*piVar1;
        if (puVar10 == &DAT_00972528) {
          uVar13 = 1;
        }
        else {
          *(uint *)(puVar10 + -0xc) = uVar11;
          *(undefined4 *)(puVar10 + -4) = 0;
          uVar13 = 1;
          puVar10[uVar11] = 0;
        }
LAB_007b81da:
        if (local_40 == (int *)0x0) {
LAB_007b83ea:
          bVar17 = true;
          if (param_5 == (int *)0x0) goto LAB_007b83f4;
LAB_007b821a:
          if (param_6 == -1) {
            if ((int *)param_5[2] < (int *)param_5[3]) {
              iVar3 = *(int *)param_5[2];
            }
            else {
              iVar3 = (**(code **)(*param_5 + 0x24))();
            }
            bVar18 = iVar3 == -1;
            if (bVar18) {
              param_5 = (int *)0x0;
              iVar3 = param_6;
            }
          }
          else {
            bVar18 = false;
            iVar3 = param_6;
          }
        }
        else {
          if ((uint)local_40[2] < (uint)local_40[3]) {
            local_40[2] = local_40[2] + 4;
          }
          else {
            (**(code **)(*local_40 + 0x28))();
            local_3c = -1;
            if (local_40 == (int *)0x0) goto LAB_007b83ea;
          }
          local_3c = -1;
          if ((int *)local_40[2] < (int *)local_40[3]) {
            iVar3 = *(int *)local_40[2];
          }
          else {
            iVar3 = (**(code **)(*local_40 + 0x24))();
          }
          bVar17 = iVar3 == -1;
          if (bVar17) {
            local_40 = (int *)0x0;
            iVar3 = local_3c;
          }
          local_3c = iVar3;
          if (param_5 != (int *)0x0) goto LAB_007b821a;
LAB_007b83f4:
          bVar18 = true;
          iVar3 = param_6;
        }
        param_6 = iVar3;
        if (bVar18 == bVar17) goto LAB_007b835c;
        __c = FUN_007b5e44(&local_40);
        uVar15 = __c + L'\xffffffd0';
      } while (uVar15 < 10);
LAB_007b823e:
      if ((*(wchar_t *)(iVar2 + 0x24) == __c) && (((local_4c ^ 1) & (uVar14 ^ 1)) != 0)) {
        FUN_007c640c(piVar1,0x2e);
        uVar14 = 0;
        local_4c = 1;
      }
      else {
        if (((*(wchar_t *)(iVar2 + 0x104) != __c) && (*(wchar_t *)(iVar2 + 0x11c) != __c)) ||
           ((uVar13 & (uVar14 ^ 1)) == 0)) goto LAB_007b835c;
        FUN_007c640c(piVar1,0x65);
        if (local_40 != (int *)0x0) {
          if ((uint)local_40[2] < (uint)local_40[3]) {
            local_40[2] = local_40[2] + 4;
          }
          else {
            (**(code **)(*local_40 + 0x28))();
          }
          local_3c = -1;
        }
        iVar3 = FUN_007b5e7c(&local_40,&param_5);
        if (iVar3 != 0) goto LAB_007b86de;
        __c = FUN_007b5e44(&local_40);
        if (*(wchar_t *)(iVar2 + 0xc0) == __c) {
          uVar5 = 0x2b;
        }
        else {
          if (*(wchar_t *)(iVar2 + 0xbc) != __c) {
            uVar14 = 1;
            uVar13 = 1;
            goto LAB_007b8190;
          }
          uVar5 = 0x2d;
        }
        FUN_007c640c(piVar1,uVar5);
        uVar14 = 1;
        uVar13 = 1;
      }
      goto LAB_007b81da;
    }
  }
  else if (uVar14 == 0) {
    cVar7 = *(char *)(iVar2 + 0x10);
LAB_007b82ce:
    do {
      if (cVar7 == '\0') goto LAB_007b82d8;
      while (__c != *(wchar_t *)(iVar2 + 0x28)) {
LAB_007b82d8:
        if (__c == *(wchar_t *)(iVar2 + 0x24)) {
          if (((uVar14 ^ 1) & (local_4c ^ 1)) == 0) goto LAB_007b835c;
          if (*(int *)(local_2c[0] + -0xc) != 0) {
            FUN_007c640c(local_2c,uVar16 & 0xff);
          }
          FUN_007c640c(piVar1,0x2e);
          uVar14 = 0;
          local_4c = 1;
          goto LAB_007b8314;
        }
        pwVar4 = wmemchr((wchar_t *)(iVar2 + 0xcc),__c,10);
        if (pwVar4 != (wchar_t *)0x0) {
          FUN_007c640c(piVar1,((int)pwVar4 - (iVar2 + 0xcc) >> 2) + 0x30U & 0xff);
          uVar13 = 1;
          uVar16 = uVar16 + 1;
          goto LAB_007b8314;
        }
        if (((__c != *(wchar_t *)(iVar2 + 0x104)) && (__c != *(wchar_t *)(iVar2 + 0x11c))) ||
           ((uVar13 & (uVar14 ^ 1)) == 0)) goto LAB_007b835c;
        if ((*(int *)(local_2c[0] + -0xc) != 0) && (local_4c == 0)) {
          FUN_007c640c(local_2c,uVar16 & 0xff);
        }
        FUN_007c640c(piVar1,0x65);
        uVar5 = FUN_007b542c(&local_40);
        iVar3 = FUN_007b5e7c(uVar5,&param_5);
        if (iVar3 != 0) goto LAB_007b86de;
        __c = FUN_007b5e44(&local_40);
        bVar17 = *(wchar_t *)(iVar2 + 0xc0) == __c;
        if ((!bVar17) && (*(wchar_t *)(iVar2 + 0xbc) != __c)) {
          uVar14 = 1;
          uVar13 = 1;
          cVar7 = *(char *)(iVar2 + 0x10);
          goto LAB_007b82ce;
        }
        cVar7 = *(char *)(iVar2 + 0x10);
        if ((cVar7 == '\0') || (*(wchar_t *)(iVar2 + 0x28) != __c)) {
          if (*(wchar_t *)(iVar2 + 0x24) == __c) {
            uVar14 = 1;
            uVar13 = 1;
            goto LAB_007b82ce;
          }
          if (bVar17) {
            uVar5 = 0x2b;
          }
          else {
            uVar5 = 0x2d;
          }
          FUN_007c640c(piVar1,uVar5);
          uVar14 = 1;
          uVar13 = 1;
          goto LAB_007b8314;
        }
        uVar14 = 1;
        uVar13 = 1;
      }
      if (((uVar14 ^ 1) & (local_4c ^ 1)) == 0) goto LAB_007b835c;
      if (uVar16 == 0) {
        FUN_007c5938(piVar1,0,*(undefined4 *)(*piVar1 + -0xc),0);
        break;
      }
      FUN_007c640c(local_2c,uVar16 & 0xff);
      uVar14 = 0;
      local_4c = 0;
      uVar16 = uVar14;
LAB_007b8314:
      cVar7 = cVar6;
      if (local_40 == (int *)0x0) {
LAB_007b83bc:
        if (param_5 == (int *)0x0) goto LAB_007b83c4;
LAB_007b834e:
        if (param_6 == -1) {
          if ((int *)param_5[2] < (int *)param_5[3]) {
            iVar3 = *(int *)param_5[2];
          }
          else {
            iVar3 = (**(code **)(*param_5 + 0x24))();
          }
          if (iVar3 == -1) {
            param_5 = (int *)0x0;
            cVar8 = cVar6;
          }
          else {
            param_6 = iVar3;
            cVar8 = '\0';
          }
        }
        else {
          cVar8 = '\0';
        }
        if (cVar7 == cVar8) goto LAB_007b835c;
      }
      else {
        if ((uint)local_40[2] < (uint)local_40[3]) {
          local_40[2] = local_40[2] + 4;
        }
        else {
          (**(code **)(*local_40 + 0x28))();
          local_3c = -1;
          if (local_40 == (int *)0x0) goto LAB_007b83bc;
        }
        local_3c = -1;
        if ((int *)local_40[2] < (int *)local_40[3]) {
          iVar3 = *(int *)local_40[2];
        }
        else {
          iVar3 = (**(code **)(*local_40 + 0x24))();
        }
        if (iVar3 == -1) {
          local_40 = (int *)0x0;
        }
        else {
          local_3c = iVar3;
          cVar7 = '\0';
        }
        if (param_5 != (int *)0x0) goto LAB_007b834e;
LAB_007b83c4:
        if (cVar7 == cVar6) goto LAB_007b835c;
      }
      __c = FUN_007b5e44(&local_40);
      cVar7 = *(char *)(iVar2 + 0x10);
    } while( true );
  }
  uVar14 = 0;
  local_4c = 0;
LAB_007b835c:
  puVar10 = local_2c[0];
  if (*(int *)(local_2c[0] + -0xc) != 0) {
    if (((uVar14 ^ 1) & (local_4c ^ 1)) != 0) {
      FUN_007c640c(local_2c,uVar16 & 0xff);
    }
    puVar10 = local_2c[0];
    iVar2 = FUN_007c7b7c(*(undefined4 *)(iVar2 + 8),*(undefined4 *)(iVar2 + 0xc),local_2c);
    if (iVar2 == 0) {
      *param_8 = 4;
    }
  }
  *param_1 = local_40;
  param_1[1] = local_3c;
  FUN_007c5900(puVar10 + -0xc,auStack_30);
  return param_1;
}

// ---- FUN_007b8748  @ 0x7b8748
undefined4 *
FUN_007b8748(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
            int *param_5,int param_6,undefined4 param_7,_Ios_Iostate *param_8,float *param_9)

{
  char *pcVar1;
  int iVar2;
  int iVar3;
  int *piVar4;
  uint uVar5;
  uint uVar6;
  bool bVar7;
  int *local_40;
  int iStack_3c;
  int *local_38;
  int local_34;
  char *local_30;
  int *local_2c [2];
  
  local_30 = &DAT_00972528;
  local_38 = (int *)param_3;
  local_34 = param_4;
  FUN_007c60a0(&local_30,0x20);
  FUN_007b8128(&local_40,param_2,local_38,local_34,param_5,param_6,param_7,param_8,&local_30);
  pcVar1 = local_30;
  local_38 = local_40;
  local_34 = iStack_3c;
  local_2c[0] = (int *)FUN_007b0058();
  std::__convert_to_v<float>(pcVar1,param_9,param_8,local_2c);
  if (local_38 == (int *)0x0) {
    uVar6 = 1;
  }
  else if (local_34 == -1) {
    if ((int *)local_38[2] < (int *)local_38[3]) {
      iVar3 = *(int *)local_38[2];
    }
    else {
      iVar3 = (**(code **)(*local_38 + 0x24))();
    }
    iVar2 = iVar3;
    if (iVar3 == -1) {
      local_38 = (int *)0x0;
      iVar2 = local_34;
    }
    local_34 = iVar2;
    uVar6 = (uint)(iVar3 == -1);
  }
  else {
    uVar6 = 0;
  }
  if (param_5 == (int *)0x0) {
    uVar5 = 1;
  }
  else if (param_6 == -1) {
    if ((int *)param_5[2] < (int *)param_5[3]) {
      iVar3 = *(int *)param_5[2];
    }
    else {
      iVar3 = (**(code **)(*param_5 + 0x24))();
    }
    uVar5 = (uint)(iVar3 == -1);
  }
  else {
    uVar5 = 0;
  }
  bVar7 = uVar6 == uVar5;
  if (bVar7) {
    uVar5 = *(uint *)param_8 | 2;
  }
  *param_1 = local_38;
  param_1[1] = local_34;
  if (bVar7) {
    *(uint *)param_8 = uVar5;
  }
  if (local_30 + -0xc != (char *)&DAT_0097251c) {
    piVar4 = (int *)(local_30 + -4);
    DataMemoryBarrier(0x1f);
    do {
      ExclusiveAccess(piVar4);
      iVar3 = *piVar4;
      bVar7 = (bool)hasExclusiveAccess(piVar4);
    } while (!bVar7);
    *piVar4 = iVar3 + -1;
    DataMemoryBarrier(0x1f);
    if (iVar3 < 1) {
      operator_delete(local_30 + -0xc);
    }
  }
  return param_1;
}

// ---- FUN_007b889c  @ 0x7b889c
undefined4 *
FUN_007b889c(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
            int *param_5,int param_6,undefined4 param_7,_Ios_Iostate *param_8,double *param_9)

{
  char *pcVar1;
  int iVar2;
  int iVar3;
  int *piVar4;
  uint uVar5;
  uint uVar6;
  bool bVar7;
  int *local_40;
  int iStack_3c;
  int *local_38;
  int local_34;
  char *local_30;
  int *local_2c [2];
  
  local_30 = &DAT_00972528;
  local_38 = (int *)param_3;
  local_34 = param_4;
  FUN_007c60a0(&local_30,0x20);
  FUN_007b8128(&local_40,param_2,local_38,local_34,param_5,param_6,param_7,param_8,&local_30);
  pcVar1 = local_30;
  local_38 = local_40;
  local_34 = iStack_3c;
  local_2c[0] = (int *)FUN_007b0058();
  std::__convert_to_v<double>(pcVar1,param_9,param_8,local_2c);
  if (local_38 == (int *)0x0) {
    uVar6 = 1;
  }
  else if (local_34 == -1) {
    if ((int *)local_38[2] < (int *)local_38[3]) {
      iVar3 = *(int *)local_38[2];
    }
    else {
      iVar3 = (**(code **)(*local_38 + 0x24))();
    }
    iVar2 = iVar3;
    if (iVar3 == -1) {
      local_38 = (int *)0x0;
      iVar2 = local_34;
    }
    local_34 = iVar2;
    uVar6 = (uint)(iVar3 == -1);
  }
  else {
    uVar6 = 0;
  }
  if (param_5 == (int *)0x0) {
    uVar5 = 1;
  }
  else if (param_6 == -1) {
    if ((int *)param_5[2] < (int *)param_5[3]) {
      iVar3 = *(int *)param_5[2];
    }
    else {
      iVar3 = (**(code **)(*param_5 + 0x24))();
    }
    uVar5 = (uint)(iVar3 == -1);
  }
  else {
    uVar5 = 0;
  }
  bVar7 = uVar6 == uVar5;
  if (bVar7) {
    uVar5 = *(uint *)param_8 | 2;
  }
  *param_1 = local_38;
  param_1[1] = local_34;
  if (bVar7) {
    *(uint *)param_8 = uVar5;
  }
  if (local_30 + -0xc != (char *)&DAT_0097251c) {
    piVar4 = (int *)(local_30 + -4);
    DataMemoryBarrier(0x1f);
    do {
      ExclusiveAccess(piVar4);
      iVar3 = *piVar4;
      bVar7 = (bool)hasExclusiveAccess(piVar4);
    } while (!bVar7);
    *piVar4 = iVar3 + -1;
    DataMemoryBarrier(0x1f);
    if (iVar3 < 1) {
      operator_delete(local_30 + -0xc);
    }
  }
  return param_1;
}

// ---- FUN_007b89f0  @ 0x7b89f0
undefined4 *
FUN_007b89f0(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
            int *param_5,int param_6,undefined4 param_7,_Ios_Iostate *param_8,longdouble *param_9)

{
  char *pcVar1;
  int iVar2;
  int iVar3;
  int *piVar4;
  uint uVar5;
  uint uVar6;
  bool bVar7;
  int *local_40;
  int iStack_3c;
  int *local_38;
  int local_34;
  char *local_30;
  int *local_2c [2];
  
  local_30 = &DAT_00972528;
  local_38 = (int *)param_3;
  local_34 = param_4;
  FUN_007c60a0(&local_30,0x20);
  FUN_007b8128(&local_40,param_2,local_38,local_34,param_5,param_6,param_7,param_8,&local_30);
  pcVar1 = local_30;
  local_38 = local_40;
  local_34 = iStack_3c;
  local_2c[0] = (int *)FUN_007b0058();
  std::__convert_to_v<long_double>(pcVar1,param_9,param_8,local_2c);
  if (local_38 == (int *)0x0) {
    uVar6 = 1;
  }
  else if (local_34 == -1) {
    if ((int *)local_38[2] < (int *)local_38[3]) {
      iVar3 = *(int *)local_38[2];
    }
    else {
      iVar3 = (**(code **)(*local_38 + 0x24))();
    }
    iVar2 = iVar3;
    if (iVar3 == -1) {
      local_38 = (int *)0x0;
      iVar2 = local_34;
    }
    local_34 = iVar2;
    uVar6 = (uint)(iVar3 == -1);
  }
  else {
    uVar6 = 0;
  }
  if (param_5 == (int *)0x0) {
    uVar5 = 1;
  }
  else if (param_6 == -1) {
    if ((int *)param_5[2] < (int *)param_5[3]) {
      iVar3 = *(int *)param_5[2];
    }
    else {
      iVar3 = (**(code **)(*param_5 + 0x24))();
    }
    uVar5 = (uint)(iVar3 == -1);
  }
  else {
    uVar5 = 0;
  }
  bVar7 = uVar6 == uVar5;
  if (bVar7) {
    uVar5 = *(uint *)param_8 | 2;
  }
  *param_1 = local_38;
  param_1[1] = local_34;
  if (bVar7) {
    *(uint *)param_8 = uVar5;
  }
  if (local_30 + -0xc != (char *)&DAT_0097251c) {
    piVar4 = (int *)(local_30 + -4);
    DataMemoryBarrier(0x1f);
    do {
      ExclusiveAccess(piVar4);
      iVar3 = *piVar4;
      bVar7 = (bool)hasExclusiveAccess(piVar4);
    } while (!bVar7);
    *piVar4 = iVar3 + -1;
    DataMemoryBarrier(0x1f);
    if (iVar3 < 1) {
      operator_delete(local_30 + -0xc);
    }
  }
  return param_1;
}

// ---- FUN_007b8b44  @ 0x7b8b44
/* WARNING: Restarted to delay deadcode elimination for space: stack */

int * FUN_007b8b44(int *param_1,undefined4 param_2,int *param_3,int param_4,int *param_5,int param_6
                  ,int param_7,uint *param_8,uint *param_9)

{
  char cVar1;
  int iVar2;
  int iVar3;
  wchar_t __c;
  undefined4 uVar4;
  uint uVar5;
  int iVar6;
  wchar_t *pwVar7;
  bool bVar8;
  char cVar9;
  char cVar10;
  uint uVar11;
  uint uVar12;
  uint uVar13;
  uint uVar14;
  uint uVar15;
  uint uVar16;
  bool bVar17;
  bool bVar18;
  bool bVar19;
  uint local_58;
  int *local_40;
  int local_3c;
  undefined1 auStack_34 [4];
  undefined1 auStack_30 [4];
  undefined1 *local_2c [2];
  
  iVar3 = param_7;
  local_40 = param_3;
  local_3c = param_4;
  iVar2 = FUN_007b54fc(auStack_34,param_7 + 0x6c);
  uVar13 = *(uint *)(iVar3 + 0xc) & 0x4a;
  if (uVar13 == 0x40) {
    local_58 = 8;
  }
  else if (uVar13 == 8) {
    local_58 = 0x10;
  }
  else {
    local_58 = 10;
  }
  iVar3 = FUN_007b5e7c(&local_40,&param_5);
  if (iVar3 == 0) {
    __c = FUN_007b5e44(&local_40);
    bVar19 = *(wchar_t *)(iVar2 + 0xbc) == __c;
    if ((!bVar19) && (*(wchar_t *)(iVar2 + 0xc0) != __c)) {
      cVar10 = *(char *)(iVar2 + 0x10);
LAB_007b8ef4:
      uVar16 = 0;
      bVar8 = false;
      do {
        uVar12 = 0;
        if (((cVar10 != '\0') && (*(wchar_t *)(iVar2 + 0x28) == __c)) ||
           (*(wchar_t *)(iVar2 + 0x24) == __c)) goto joined_r0x007b8f7c;
        if (*(wchar_t *)(iVar2 + 0xcc) == __c) {
          bVar8 = (bool)(bVar8 ^ 1);
          if (local_58 == 10) {
            bVar8 = true;
          }
          if (!bVar8) goto LAB_007b8f2c;
          if (uVar13 == 0) {
            bVar8 = true;
            local_58 = 8;
            uVar16 = uVar13;
          }
          else if (local_58 == 8) {
            bVar8 = true;
            uVar16 = 0;
          }
          else {
            bVar8 = true;
            uVar16 = uVar16 + 1;
          }
        }
        else {
          if (!bVar8) goto joined_r0x007b8f7c;
LAB_007b8f2c:
          if ((*(wchar_t *)(iVar2 + 0xc4) != __c) && (*(wchar_t *)(iVar2 + 200) != __c)) {
            bVar8 = true;
            goto joined_r0x007b8f7c;
          }
          if (uVar13 == 0) {
            local_58 = 0x10;
            bVar8 = false;
            uVar16 = uVar13;
          }
          else {
            if (local_58 != 0x10) {
              bVar8 = true;
              uVar13 = local_58;
              goto LAB_007b8be2;
            }
            bVar8 = false;
            uVar16 = 0;
          }
        }
        if (local_40 != (int *)0x0) {
          if ((uint)local_40[2] < (uint)local_40[3]) {
            local_40[2] = local_40[2] + 4;
          }
          else {
            (**(code **)(*local_40 + 0x28))();
          }
          local_3c = -1;
        }
        iVar3 = FUN_007b5e7c(&local_40,&param_5);
        if (iVar3 != 0) {
          uVar12 = 1;
          cVar10 = *(char *)(iVar2 + 0x10);
          goto joined_r0x007b8f7c;
        }
        __c = FUN_007b5e44(&local_40);
        if (!bVar8) goto LAB_007b9054;
        cVar10 = *(char *)(iVar2 + 0x10);
      } while( true );
    }
    cVar10 = *(char *)(iVar2 + 0x10);
    if ((cVar10 != '\0') && (*(wchar_t *)(iVar2 + 0x28) == __c)) {
      cVar10 = '\x01';
      goto LAB_007b8ef4;
    }
    if (*(wchar_t *)(iVar2 + 0x24) == __c) goto LAB_007b8ef4;
    uVar4 = FUN_007b542c(&local_40);
    iVar3 = FUN_007b5e7c(uVar4,&param_5);
    if (iVar3 == 0) {
      __c = FUN_007b5e44(&local_40);
      cVar10 = *(char *)(iVar2 + 0x10);
      goto LAB_007b8ef4;
    }
  }
  else {
    __c = L'\0';
    bVar19 = false;
  }
  cVar10 = *(char *)(iVar2 + 0x10);
  uVar12 = 1;
  uVar16 = 0;
  bVar8 = false;
joined_r0x007b8f7c:
  uVar13 = local_58;
  if (local_58 == 0x10) {
    uVar13 = 0x16;
  }
LAB_007b8be2:
  local_2c[0] = &DAT_00972528;
  if (cVar10 != '\0') {
    FUN_007c60a0(local_2c,0x20);
  }
  if (bVar19) {
    iVar3 = -0x80000000;
  }
  else {
    iVar3 = 0x7fffffff;
  }
  uVar5 = __udivsi3(iVar3,local_58);
  cVar10 = *(char *)(iVar2 + 0x124);
  uVar14 = uVar12;
  uVar15 = uVar12;
  if (cVar10 == '\0') {
    if (uVar12 == 0) {
      do {
        if (uVar13 < 0xb) {
          if (((uint)__c < 0x30) || ((uint)(uVar13 + L'0') <= (uint)__c)) goto LAB_007b8da6;
          uVar11 = __c + L'\xffffffd0';
        }
        else {
          uVar11 = __c + L'\xffffffd0';
          if (9 < uVar11) {
            if ((uint)(__c + L'\xffffff9f') < 6) {
              uVar11 = __c + L'\xffffffa9';
            }
            else {
              if (5 < (uint)(__c + L'\xffffffbf')) goto LAB_007b8da6;
              uVar11 = __c + L'\xffffffc9';
            }
          }
        }
        if (uVar5 < uVar14) {
          uVar15 = 1;
        }
        else {
          uVar16 = uVar16 + 1;
          if (iVar3 - uVar11 < local_58 * uVar14) {
            uVar15 = 1;
          }
          uVar14 = local_58 * uVar14 + uVar11;
        }
        if (local_40 == (int *)0x0) {
LAB_007b8d42:
          bVar17 = true;
          if (param_5 == (int *)0x0) goto LAB_007b8d4a;
LAB_007b8ca4:
          if (param_6 == -1) {
            if ((int *)param_5[2] < (int *)param_5[3]) {
              iVar6 = *(int *)param_5[2];
            }
            else {
              iVar6 = (**(code **)(*param_5 + 0x24))();
            }
            bVar18 = iVar6 == -1;
            if (bVar18) {
              param_5 = (int *)0x0;
              iVar6 = param_6;
            }
          }
          else {
            bVar18 = false;
            iVar6 = param_6;
          }
          param_6 = iVar6;
          if (bVar18 == bVar17) goto LAB_007b8cb2;
        }
        else {
          if ((uint)local_40[2] < (uint)local_40[3]) {
            local_40[2] = local_40[2] + 4;
          }
          else {
            (**(code **)(*local_40 + 0x28))();
            local_3c = -1;
            if (local_40 == (int *)0x0) goto LAB_007b8d42;
          }
          local_3c = -1;
          if ((int *)local_40[2] < (int *)local_40[3]) {
            iVar6 = *(int *)local_40[2];
          }
          else {
            iVar6 = (**(code **)(*local_40 + 0x24))();
          }
          bVar17 = iVar6 == -1;
          if (bVar17) {
            local_40 = (int *)0x0;
            iVar6 = local_3c;
          }
          local_3c = iVar6;
          if (param_5 != (int *)0x0) goto LAB_007b8ca4;
LAB_007b8d4a:
          if (bVar17 == true) goto LAB_007b8cb2;
        }
        __c = FUN_007b5e44(&local_40);
      } while( true );
    }
    bVar17 = false;
    uVar14 = 0;
    uVar15 = 0;
  }
  else {
    if (uVar12 == 0) {
      do {
        if ((*(char *)(iVar2 + 0x10) == '\0') || (__c != *(wchar_t *)(iVar2 + 0x28))) {
          if ((__c == *(wchar_t *)(iVar2 + 0x24)) ||
             (pwVar7 = wmemchr((wchar_t *)(iVar2 + 0xcc),__c,uVar13), pwVar7 == (wchar_t *)0x0))
          goto LAB_007b8da6;
          iVar6 = (int)pwVar7 - (iVar2 + 0xcc) >> 2;
          if (0xf < iVar6) {
            iVar6 = iVar6 + -6;
          }
          if (uVar5 < uVar14) {
            uVar15 = 1;
          }
          else {
            uVar16 = uVar16 + 1;
            if ((uint)(iVar3 - iVar6) < local_58 * uVar14) {
              uVar15 = 1;
            }
            uVar14 = local_58 * uVar14 + iVar6;
          }
        }
        else {
          if (uVar16 == 0) {
            bVar17 = true;
            goto LAB_007b8cb6;
          }
          FUN_007c640c(local_2c,uVar16 & 0xff);
          uVar16 = 0;
        }
        cVar1 = cVar10;
        if (local_40 != (int *)0x0) {
          if ((uint)local_40[2] < (uint)local_40[3]) {
            local_40[2] = local_40[2] + 4;
          }
          else {
            (**(code **)(*local_40 + 0x28))();
            local_3c = -1;
            if (local_40 == (int *)0x0) goto joined_r0x007b8eaa;
          }
          local_3c = -1;
          if ((int *)local_40[2] < (int *)local_40[3]) {
            iVar6 = *(int *)local_40[2];
          }
          else {
            iVar6 = (**(code **)(*local_40 + 0x24))();
          }
          if (iVar6 == -1) {
            local_40 = (int *)0x0;
          }
          else {
            cVar1 = '\0';
            local_3c = iVar6;
          }
        }
joined_r0x007b8eaa:
        cVar9 = cVar10;
        if (param_5 != (int *)0x0) {
          if (param_6 == -1) {
            if ((int *)param_5[2] < (int *)param_5[3]) {
              iVar6 = *(int *)param_5[2];
            }
            else {
              iVar6 = (**(code **)(*param_5 + 0x24))();
            }
            if (iVar6 == -1) {
              param_5 = (int *)0x0;
            }
            else {
              param_6 = iVar6;
              cVar9 = '\0';
            }
          }
          else {
            cVar9 = '\0';
          }
        }
        if (cVar1 == cVar9) goto LAB_007b8cb2;
        __c = FUN_007b5e44(&local_40);
      } while( true );
    }
    uVar14 = 0;
    uVar15 = 0;
    bVar17 = false;
  }
LAB_007b8cb6:
  iVar3 = *(int *)(local_2c[0] + -0xc);
joined_r0x007b8cbe:
  if (iVar3 != 0) {
    FUN_007c640c(local_2c,uVar16 & 0xff);
    iVar3 = FUN_007c7b7c(*(undefined4 *)(iVar2 + 8),*(undefined4 *)(iVar2 + 0xc),local_2c);
    if (iVar3 == 0) {
      *param_8 = 4;
    }
  }
  bVar8 = (bool)(bVar8 ^ 1);
  if (uVar16 != 0) {
    bVar8 = false;
  }
  if (((bVar8) && (*(int *)(local_2c[0] + -0xc) == 0)) || (bVar17)) {
    *param_9 = 0;
    *param_8 = 4;
  }
  else if (uVar15 == 0) {
    if (bVar19) {
      uVar14 = -uVar14;
    }
    *param_9 = uVar14;
  }
  else {
    if (bVar19) {
      *param_9 = 0x80000000;
    }
    else {
      *param_9 = 0x7fffffff;
    }
    *param_8 = 4;
  }
  if (uVar12 != 0) {
    *param_8 = *param_8 | 2;
  }
  *param_1 = (int)local_40;
  param_1[1] = local_3c;
  FUN_007c5900(local_2c[0] + -0xc,auStack_30);
  return param_1;
LAB_007b9054:
  cVar10 = *(char *)(iVar2 + 0x10);
  goto joined_r0x007b8f7c;
LAB_007b8da6:
  bVar17 = false;
  iVar3 = *(int *)(local_2c[0] + -0xc);
  goto joined_r0x007b8cbe;
LAB_007b8cb2:
  bVar17 = false;
  uVar12 = 1;
  goto LAB_007b8cb6;
}

// ---- FUN_007b909c  @ 0x7b909c
undefined4
FUN_007b909c(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5,undefined4 param_6,undefined4 param_7,undefined4 param_8,
            undefined4 param_9)

{
  FUN_007b8b44(param_1,param_2,param_3,param_4,param_5,param_6,param_7,param_8,param_9);
  return param_1;
}

// ---- FUN_007b90d8  @ 0x7b90d8
int * FUN_007b90d8(int *param_1,undefined4 param_2,int *param_3,int param_4,int *param_5,int param_6
                  ,int param_7,uint *param_8,byte *param_9)

{
  int iVar1;
  int iVar2;
  int iVar3;
  uint uVar4;
  byte bVar5;
  byte bVar6;
  bool bVar7;
  bool bVar8;
  bool bVar9;
  bool bVar10;
  int *local_40;
  int iStack_3c;
  int *local_38;
  int local_34;
  uint local_2c [2];
  
  local_38 = param_3;
  local_34 = param_4;
  if (*(int *)(param_7 + 0xc) << 0x1f < 0) {
    iVar2 = FUN_007b54fc(local_2c,param_7 + 0x6c);
    uVar4 = 0;
    bVar10 = true;
    bVar7 = *(int *)(iVar2 + 0x20) == 0;
    bVar8 = *(int *)(iVar2 + 0x18) == 0;
    bVar9 = true;
LAB_007b9178:
    bVar5 = bVar8 ^ 1U | bVar7 ^ 1U;
    if (bVar5 != 0) {
      do {
        bVar6 = bVar5;
        if (local_38 != (int *)0x0) {
          if (local_34 == -1) {
            if ((int *)local_38[2] < (int *)local_38[3]) {
              iVar3 = *(int *)local_38[2];
            }
            else {
              iVar3 = (**(code **)(*local_38 + 0x24))();
            }
            if (iVar3 == -1) {
              local_38 = (int *)0x0;
            }
            else {
              local_34 = iVar3;
              bVar6 = 0;
            }
          }
          else {
            bVar6 = 0;
          }
        }
        if (param_5 != (int *)0x0) {
          if (param_6 == -1) {
            if ((int *)param_5[2] < (int *)param_5[3]) {
              iVar3 = *(int *)param_5[2];
            }
            else {
              iVar3 = (**(code **)(*param_5 + 0x24))();
            }
            if (iVar3 == -1) {
              param_5 = (int *)0x0;
            }
            else {
              bVar5 = 0;
              param_6 = iVar3;
            }
          }
          else {
            bVar5 = 0;
          }
        }
        if (bVar5 == bVar6) {
          bVar7 = true;
          goto LAB_007b9240;
        }
        iVar3 = -1;
        iVar1 = local_34;
        if ((local_38 != (int *)0x0) && (iVar3 = local_34, local_34 == -1)) {
          if ((int *)local_38[2] < (int *)local_38[3]) {
            iVar3 = *(int *)local_38[2];
          }
          else {
            iVar3 = (**(code **)(*local_38 + 0x24))();
          }
          iVar1 = iVar3;
          if (iVar3 == -1) {
            local_38 = (int *)0x0;
            iVar1 = local_34;
          }
        }
        local_34 = iVar1;
        if (bVar7 == false) {
          bVar9 = *(int *)(*(int *)(iVar2 + 0x1c) + uVar4 * 4) == iVar3;
        }
        if (((bVar9 ^ 1U) & bVar8) != 0) {
LAB_007b9302:
          bVar7 = false;
          goto LAB_007b924a;
        }
        if (bVar8 == false) {
          bVar10 = *(int *)(*(int *)(iVar2 + 0x14) + uVar4 * 4) == iVar3;
        }
        if ((bVar7 & (bVar10 ^ 1U)) != 0) {
          bVar10 = false;
          bVar7 = bVar10;
          goto LAB_007b9240;
        }
        if ((byte)((bVar10 ^ 1U) & (bVar9 ^ 1U)) != 0) {
          bVar10 = false;
          goto LAB_007b9302;
        }
        uVar4 = uVar4 + 1;
        if (local_38 != (int *)0x0) {
          if ((uint)local_38[2] < (uint)local_38[3]) {
            local_38[2] = local_38[2] + 4;
            local_34 = -1;
          }
          else {
            (**(code **)(*local_38 + 0x28))();
            local_34 = -1;
          }
        }
        bVar7 = true;
        if (bVar9 != false) {
          if (uVar4 < *(uint *)(iVar2 + 0x20)) {
            bVar7 = false;
          }
          else {
            bVar7 = true;
          }
        }
        bVar8 = true;
        if (bVar10 == false) goto LAB_007b9178;
        bVar8 = *(uint *)(iVar2 + 0x18) <= uVar4;
        bVar5 = !bVar8 | bVar7 ^ 1U;
        if (bVar5 == 0) break;
      } while( true );
    }
    bVar7 = false;
LAB_007b9240:
    if (((bVar9 == false) || (uVar4 != *(uint *)(iVar2 + 0x20))) || (uVar4 == 0)) {
LAB_007b924a:
      if (((bVar10 == false) || (*(uint *)(iVar2 + 0x18) != uVar4)) || (uVar4 == 0)) {
        *param_9 = 0;
        *param_8 = 4;
        if (bVar7 != false) {
          *param_8 = 6;
        }
      }
      else {
        if (bVar7 == false) {
          uVar4 = 0;
        }
        else {
          uVar4 = 2;
        }
        *param_9 = 1;
        *param_8 = uVar4;
      }
    }
    else {
      *param_9 = 0;
      if ((bVar10 == false) || (*(uint *)(iVar2 + 0x18) != uVar4)) {
        if (bVar7 == false) {
          uVar4 = 0;
        }
        else {
          uVar4 = 2;
        }
        *param_8 = uVar4;
      }
      else {
        *param_8 = 4;
      }
    }
  }
  else {
    local_2c[0] = 0xffffffff;
    FUN_007b8b44(&local_40,param_2,param_3,param_4,param_5,param_6,param_7,param_8,local_2c);
    local_38 = local_40;
    local_34 = iStack_3c;
    if (local_2c[0] < 2) {
      *param_9 = (byte)local_2c[0] & 1;
    }
    else {
      *param_9 = 1;
      *param_8 = 4;
      iVar2 = FUN_007b5e7c(&local_38,&param_5);
      if (iVar2 != 0) {
        *param_8 = *param_8 | 2;
      }
    }
  }
  *param_1 = (int)local_38;
  param_1[1] = local_34;
  return param_1;
}

// ---- FUN_007b9384  @ 0x7b9384
/* WARNING: Restarted to delay deadcode elimination for space: stack */

int * FUN_007b9384(int *param_1,undefined4 param_2,int *param_3,int param_4,int *param_5,int param_6
                  ,int param_7,uint *param_8,short *param_9)

{
  char cVar1;
  ushort uVar2;
  int iVar3;
  int iVar4;
  wchar_t __c;
  undefined4 uVar5;
  wchar_t *pwVar6;
  short sVar7;
  bool bVar8;
  char cVar9;
  char cVar10;
  uint uVar11;
  bool bVar12;
  uint uVar13;
  uint uVar14;
  bool bVar15;
  uint uVar16;
  bool bVar17;
  bool bVar18;
  bool bVar19;
  uint local_54;
  int *local_40;
  int local_3c;
  undefined1 auStack_34 [4];
  undefined1 auStack_30 [4];
  undefined1 *local_2c [2];
  
  iVar4 = param_7;
  local_40 = param_3;
  local_3c = param_4;
  iVar3 = FUN_007b54fc(auStack_34,param_7 + 0x6c);
  uVar13 = *(uint *)(iVar4 + 0xc) & 0x4a;
  if (uVar13 == 0x40) {
    local_54 = 8;
  }
  else if (uVar13 == 8) {
    local_54 = 0x10;
  }
  else {
    local_54 = 10;
  }
  iVar4 = FUN_007b5e7c(&local_40,&param_5);
  if (iVar4 == 0) {
    __c = FUN_007b5e44(&local_40);
    bVar19 = *(wchar_t *)(iVar3 + 0xbc) == __c;
    if ((!bVar19) && (*(wchar_t *)(iVar3 + 0xc0) != __c)) {
      cVar10 = *(char *)(iVar3 + 0x10);
LAB_007b9724:
      uVar16 = 0;
      bVar8 = false;
      do {
        bVar12 = false;
        if (((cVar10 != '\0') && (*(wchar_t *)(iVar3 + 0x28) == __c)) ||
           (*(wchar_t *)(iVar3 + 0x24) == __c)) goto joined_r0x007b97aa;
        if (*(wchar_t *)(iVar3 + 0xcc) == __c) {
          bVar8 = (bool)(bVar8 ^ 1);
          if (local_54 == 10) {
            bVar8 = true;
          }
          if (!bVar8) goto LAB_007b975a;
          if (uVar13 == 0) {
            bVar8 = true;
            local_54 = 8;
            uVar16 = uVar13;
          }
          else if (local_54 == 8) {
            bVar8 = true;
            uVar16 = 0;
          }
          else {
            bVar8 = true;
            uVar16 = uVar16 + 1;
          }
        }
        else {
          if (!bVar8) goto joined_r0x007b97aa;
LAB_007b975a:
          if ((*(wchar_t *)(iVar3 + 0xc4) != __c) && (*(wchar_t *)(iVar3 + 200) != __c)) {
            bVar8 = true;
            goto joined_r0x007b97aa;
          }
          if (uVar13 == 0) {
            local_54 = 0x10;
            bVar8 = false;
            uVar16 = uVar13;
          }
          else {
            if (local_54 != 0x10) {
              bVar8 = true;
              uVar13 = local_54;
              goto LAB_007b9422;
            }
            bVar8 = false;
            uVar16 = 0;
          }
        }
        if (local_40 != (int *)0x0) {
          if ((uint)local_40[2] < (uint)local_40[3]) {
            local_40[2] = local_40[2] + 4;
          }
          else {
            (**(code **)(*local_40 + 0x28))();
          }
          local_3c = -1;
        }
        iVar4 = FUN_007b5e7c(&local_40,&param_5);
        if (iVar4 != 0) {
          bVar12 = true;
          cVar10 = *(char *)(iVar3 + 0x10);
          goto joined_r0x007b97aa;
        }
        __c = FUN_007b5e44(&local_40);
        if (!bVar8) goto LAB_007b9878;
        cVar10 = *(char *)(iVar3 + 0x10);
      } while( true );
    }
    cVar10 = *(char *)(iVar3 + 0x10);
    if ((cVar10 != '\0') && (*(wchar_t *)(iVar3 + 0x28) == __c)) {
      cVar10 = '\x01';
      goto LAB_007b9724;
    }
    if (*(wchar_t *)(iVar3 + 0x24) == __c) goto LAB_007b9724;
    uVar5 = FUN_007b542c(&local_40);
    iVar4 = FUN_007b5e7c(uVar5,&param_5);
    if (iVar4 == 0) {
      __c = FUN_007b5e44(&local_40);
      cVar10 = *(char *)(iVar3 + 0x10);
      goto LAB_007b9724;
    }
  }
  else {
    __c = L'\0';
    bVar19 = false;
  }
  cVar10 = *(char *)(iVar3 + 0x10);
  bVar12 = true;
  uVar16 = 0;
  bVar8 = false;
joined_r0x007b97aa:
  uVar13 = local_54;
  if (local_54 == 0x10) {
    uVar13 = 0x16;
  }
LAB_007b9422:
  local_2c[0] = &DAT_00972528;
  if (cVar10 != '\0') {
    FUN_007c60a0(local_2c,0x20);
  }
  uVar2 = __divsi3(0xffff,local_54);
  cVar10 = *(char *)(iVar3 + 0x124);
  bVar15 = bVar12;
  if (cVar10 == '\0') {
    if (!bVar12) {
      uVar14 = 0;
      do {
        sVar7 = (short)uVar14;
        if (uVar13 < 0xb) {
          if (((uint)__c < 0x30) || ((uint)(uVar13 + L'0') <= (uint)__c)) goto LAB_007b95d0;
          uVar11 = __c + L'\xffffffd0';
        }
        else {
          uVar11 = __c + L'\xffffffd0';
          if (9 < uVar11) {
            if ((uint)(__c + L'\xffffff9f') < 6) {
              uVar11 = __c + L'\xffffffa9';
            }
            else {
              if (5 < (uint)(__c + L'\xffffffbf')) goto LAB_007b95d0;
              uVar11 = __c + L'\xffffffc9';
            }
          }
        }
        if (uVar2 < uVar14) {
          bVar15 = true;
        }
        else {
          uVar16 = uVar16 + 1;
          uVar14 = local_54 * uVar14 & 0xffff;
          if ((int)(0xffff - uVar11) < (int)uVar14) {
            bVar15 = true;
          }
          uVar14 = uVar14 + uVar11 & 0xffff;
        }
        sVar7 = (short)uVar14;
        if (local_40 == (int *)0x0) {
LAB_007b956c:
          bVar17 = true;
          if (param_5 == (int *)0x0) goto LAB_007b9574;
LAB_007b94e0:
          if (param_6 == -1) {
            if ((int *)param_5[2] < (int *)param_5[3]) {
              iVar4 = *(int *)param_5[2];
            }
            else {
              iVar4 = (**(code **)(*param_5 + 0x24))();
            }
            bVar18 = iVar4 == -1;
            if (bVar18) {
              param_5 = (int *)0x0;
              iVar4 = param_6;
            }
          }
          else {
            bVar18 = false;
            iVar4 = param_6;
          }
          param_6 = iVar4;
          if (bVar18 == bVar17) goto LAB_007b94ee;
        }
        else {
          if ((uint)local_40[2] < (uint)local_40[3]) {
            local_40[2] = local_40[2] + 4;
          }
          else {
            (**(code **)(*local_40 + 0x28))();
            local_3c = -1;
            if (local_40 == (int *)0x0) goto LAB_007b956c;
          }
          local_3c = -1;
          if ((int *)local_40[2] < (int *)local_40[3]) {
            iVar4 = *(int *)local_40[2];
          }
          else {
            iVar4 = (**(code **)(*local_40 + 0x24))();
          }
          bVar17 = iVar4 == -1;
          if (bVar17) {
            local_40 = (int *)0x0;
            iVar4 = local_3c;
          }
          local_3c = iVar4;
          if (param_5 != (int *)0x0) goto LAB_007b94e0;
LAB_007b9574:
          if (bVar17 == true) goto LAB_007b94ee;
        }
        __c = FUN_007b5e44(&local_40);
      } while( true );
    }
    bVar17 = false;
    sVar7 = 0;
    bVar15 = false;
  }
  else {
    if (!bVar12) {
      uVar14 = 0;
      do {
        sVar7 = (short)uVar14;
        if ((*(char *)(iVar3 + 0x10) == '\0') || (__c != *(wchar_t *)(iVar3 + 0x28))) {
          if ((__c == *(wchar_t *)(iVar3 + 0x24)) ||
             (pwVar6 = wmemchr((wchar_t *)(iVar3 + 0xcc),__c,uVar13), pwVar6 == (wchar_t *)0x0))
          goto LAB_007b95d0;
          iVar4 = (int)pwVar6 - (iVar3 + 0xcc) >> 2;
          if (0xf < iVar4) {
            iVar4 = iVar4 + -6;
          }
          if (uVar2 < uVar14) {
            bVar15 = true;
          }
          else {
            uVar16 = uVar16 + 1;
            uVar14 = local_54 * uVar14 & 0xffff;
            if (0xffff - iVar4 < (int)uVar14) {
              bVar15 = true;
            }
            uVar14 = uVar14 + iVar4 & 0xffff;
          }
        }
        else {
          if (uVar16 == 0) {
            bVar17 = true;
            goto LAB_007b94f2;
          }
          FUN_007c640c(local_2c,uVar16 & 0xff);
          uVar16 = 0;
        }
        sVar7 = (short)uVar14;
        cVar1 = cVar10;
        if (local_40 != (int *)0x0) {
          if ((uint)local_40[2] < (uint)local_40[3]) {
            local_40[2] = local_40[2] + 4;
          }
          else {
            (**(code **)(*local_40 + 0x28))();
            local_3c = -1;
            if (local_40 == (int *)0x0) goto joined_r0x007b96da;
          }
          local_3c = -1;
          if ((int *)local_40[2] < (int *)local_40[3]) {
            iVar4 = *(int *)local_40[2];
          }
          else {
            iVar4 = (**(code **)(*local_40 + 0x24))();
          }
          if (iVar4 == -1) {
            local_40 = (int *)0x0;
          }
          else {
            cVar1 = '\0';
            local_3c = iVar4;
          }
        }
joined_r0x007b96da:
        cVar9 = cVar10;
        if (param_5 != (int *)0x0) {
          if (param_6 == -1) {
            if ((int *)param_5[2] < (int *)param_5[3]) {
              iVar4 = *(int *)param_5[2];
            }
            else {
              iVar4 = (**(code **)(*param_5 + 0x24))();
            }
            if (iVar4 == -1) {
              param_5 = (int *)0x0;
            }
            else {
              param_6 = iVar4;
              cVar9 = '\0';
            }
          }
          else {
            cVar9 = '\0';
          }
        }
        if (cVar1 == cVar9) goto LAB_007b94ee;
        __c = FUN_007b5e44(&local_40);
      } while( true );
    }
    sVar7 = 0;
    bVar15 = false;
    bVar17 = false;
  }
LAB_007b94f2:
  iVar4 = *(int *)(local_2c[0] + -0xc);
joined_r0x007b94fa:
  if (iVar4 != 0) {
    FUN_007c640c(local_2c,uVar16 & 0xff);
    iVar4 = FUN_007c7b7c(*(undefined4 *)(iVar3 + 8),*(undefined4 *)(iVar3 + 0xc),local_2c);
    if (iVar4 == 0) {
      *param_8 = 4;
    }
  }
  bVar8 = (bool)(bVar8 ^ 1);
  if (uVar16 != 0) {
    bVar8 = false;
  }
  if (((bVar8) && (*(int *)(local_2c[0] + -0xc) == 0)) || (bVar17)) {
    sVar7 = 0;
  }
  else {
    if (!bVar15) {
      if (bVar19) {
        sVar7 = -sVar7;
      }
      *param_9 = sVar7;
      goto LAB_007b9522;
    }
    sVar7 = -1;
  }
  *param_9 = sVar7;
  *param_8 = 4;
LAB_007b9522:
  if (bVar12) {
    *param_8 = *param_8 | 2;
  }
  *param_1 = (int)local_40;
  param_1[1] = local_3c;
  FUN_007c5900(local_2c[0] + -0xc,auStack_30);
  return param_1;
LAB_007b9878:
  cVar10 = *(char *)(iVar3 + 0x10);
  goto joined_r0x007b97aa;
LAB_007b95d0:
  bVar17 = false;
  iVar4 = *(int *)(local_2c[0] + -0xc);
  goto joined_r0x007b94fa;
LAB_007b94ee:
  bVar17 = false;
  bVar12 = true;
  goto LAB_007b94f2;
}

// ---- FUN_007b98c0  @ 0x7b98c0
undefined4
FUN_007b98c0(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5,undefined4 param_6,undefined4 param_7,undefined4 param_8,
            undefined4 param_9)

{
  FUN_007b9384(param_1,param_2,param_3,param_4,param_5,param_6,param_7,param_8,param_9);
  return param_1;
}

// ---- FUN_007b98fc  @ 0x7b98fc
/* WARNING: Restarted to delay deadcode elimination for space: stack */

int * FUN_007b98fc(int *param_1,undefined4 param_2,int *param_3,int param_4,int *param_5,int param_6
                  ,int param_7,uint *param_8,uint *param_9)

{
  char cVar1;
  int iVar2;
  int iVar3;
  wchar_t __c;
  undefined4 uVar4;
  uint uVar5;
  wchar_t *pwVar6;
  bool bVar7;
  char cVar8;
  char cVar9;
  uint uVar10;
  uint uVar11;
  uint uVar12;
  uint uVar13;
  uint uVar14;
  uint uVar15;
  bool bVar16;
  bool bVar17;
  bool bVar18;
  uint local_54;
  int *local_40;
  int local_3c;
  undefined1 auStack_34 [4];
  undefined1 auStack_30 [4];
  undefined1 *local_2c [2];
  
  iVar3 = param_7;
  local_40 = param_3;
  local_3c = param_4;
  iVar2 = FUN_007b54fc(auStack_34,param_7 + 0x6c);
  uVar12 = *(uint *)(iVar3 + 0xc) & 0x4a;
  if (uVar12 == 0x40) {
    local_54 = 8;
  }
  else if (uVar12 == 8) {
    local_54 = 0x10;
  }
  else {
    local_54 = 10;
  }
  iVar3 = FUN_007b5e7c(&local_40,&param_5);
  if (iVar3 == 0) {
    __c = FUN_007b5e44(&local_40);
    bVar18 = *(wchar_t *)(iVar2 + 0xbc) == __c;
    if ((!bVar18) && (*(wchar_t *)(iVar2 + 0xc0) != __c)) {
      cVar9 = *(char *)(iVar2 + 0x10);
LAB_007b9c8a:
      uVar15 = 0;
      bVar7 = false;
      do {
        uVar11 = 0;
        if (((cVar9 != '\0') && (*(wchar_t *)(iVar2 + 0x28) == __c)) ||
           (*(wchar_t *)(iVar2 + 0x24) == __c)) goto joined_r0x007b9d0e;
        if (*(wchar_t *)(iVar2 + 0xcc) == __c) {
          bVar7 = (bool)(bVar7 ^ 1);
          if (local_54 == 10) {
            bVar7 = true;
          }
          if (!bVar7) goto LAB_007b9cbe;
          if (uVar12 == 0) {
            bVar7 = true;
            local_54 = 8;
            uVar15 = uVar12;
          }
          else if (local_54 == 8) {
            bVar7 = true;
            uVar15 = 0;
          }
          else {
            bVar7 = true;
            uVar15 = uVar15 + 1;
          }
        }
        else {
          if (!bVar7) goto joined_r0x007b9d0e;
LAB_007b9cbe:
          if ((*(wchar_t *)(iVar2 + 0xc4) != __c) && (*(wchar_t *)(iVar2 + 200) != __c)) {
            bVar7 = true;
            goto joined_r0x007b9d0e;
          }
          if (uVar12 == 0) {
            local_54 = 0x10;
            bVar7 = false;
            uVar15 = uVar12;
          }
          else {
            if (local_54 != 0x10) {
              bVar7 = true;
              uVar12 = local_54;
              goto LAB_007b999a;
            }
            bVar7 = false;
            uVar15 = 0;
          }
        }
        if (local_40 != (int *)0x0) {
          if ((uint)local_40[2] < (uint)local_40[3]) {
            local_40[2] = local_40[2] + 4;
          }
          else {
            (**(code **)(*local_40 + 0x28))();
          }
          local_3c = -1;
        }
        iVar3 = FUN_007b5e7c(&local_40,&param_5);
        if (iVar3 != 0) {
          uVar11 = 1;
          cVar9 = *(char *)(iVar2 + 0x10);
          goto joined_r0x007b9d0e;
        }
        __c = FUN_007b5e44(&local_40);
        if (!bVar7) goto LAB_007b9dda;
        cVar9 = *(char *)(iVar2 + 0x10);
      } while( true );
    }
    cVar9 = *(char *)(iVar2 + 0x10);
    if ((cVar9 != '\0') && (*(wchar_t *)(iVar2 + 0x28) == __c)) {
      cVar9 = '\x01';
      goto LAB_007b9c8a;
    }
    if (*(wchar_t *)(iVar2 + 0x24) == __c) goto LAB_007b9c8a;
    uVar4 = FUN_007b542c(&local_40);
    iVar3 = FUN_007b5e7c(uVar4,&param_5);
    if (iVar3 == 0) {
      __c = FUN_007b5e44(&local_40);
      cVar9 = *(char *)(iVar2 + 0x10);
      goto LAB_007b9c8a;
    }
  }
  else {
    __c = L'\0';
    bVar18 = false;
  }
  cVar9 = *(char *)(iVar2 + 0x10);
  uVar11 = 1;
  uVar15 = 0;
  bVar7 = false;
joined_r0x007b9d0e:
  uVar12 = local_54;
  if (local_54 == 0x10) {
    uVar12 = 0x16;
  }
LAB_007b999a:
  local_2c[0] = &DAT_00972528;
  if (cVar9 != '\0') {
    FUN_007c60a0(local_2c,0x20);
  }
  uVar5 = __udivsi3(0xffffffff,local_54);
  cVar9 = *(char *)(iVar2 + 0x124);
  uVar13 = uVar11;
  uVar14 = uVar11;
  if (cVar9 == '\0') {
    if (uVar11 == 0) {
      do {
        if (uVar12 < 0xb) {
          if (((uint)__c < 0x30) || ((uint)(uVar12 + L'0') <= (uint)__c)) goto LAB_007b9b3e;
          uVar10 = __c + L'\xffffffd0';
        }
        else {
          uVar10 = __c + L'\xffffffd0';
          if (9 < uVar10) {
            if ((uint)(__c + L'\xffffff9f') < 6) {
              uVar10 = __c + L'\xffffffa9';
            }
            else {
              if (5 < (uint)(__c + L'\xffffffbf')) goto LAB_007b9b3e;
              uVar10 = __c + L'\xffffffc9';
            }
          }
        }
        if (uVar5 < uVar13) {
          uVar14 = 1;
        }
        else {
          uVar15 = uVar15 + 1;
          if (~uVar10 < local_54 * uVar13) {
            uVar14 = 1;
          }
          uVar13 = local_54 * uVar13 + uVar10;
        }
        if (local_40 == (int *)0x0) {
LAB_007b9ada:
          bVar16 = true;
          if (param_5 == (int *)0x0) goto LAB_007b9ae2;
LAB_007b9a4e:
          if (param_6 == -1) {
            if ((int *)param_5[2] < (int *)param_5[3]) {
              iVar3 = *(int *)param_5[2];
            }
            else {
              iVar3 = (**(code **)(*param_5 + 0x24))();
            }
            bVar17 = iVar3 == -1;
            if (bVar17) {
              param_5 = (int *)0x0;
              iVar3 = param_6;
            }
          }
          else {
            bVar17 = false;
            iVar3 = param_6;
          }
          param_6 = iVar3;
          if (bVar17 == bVar16) goto LAB_007b9a5c;
        }
        else {
          if ((uint)local_40[2] < (uint)local_40[3]) {
            local_40[2] = local_40[2] + 4;
          }
          else {
            (**(code **)(*local_40 + 0x28))();
            local_3c = -1;
            if (local_40 == (int *)0x0) goto LAB_007b9ada;
          }
          local_3c = -1;
          if ((int *)local_40[2] < (int *)local_40[3]) {
            iVar3 = *(int *)local_40[2];
          }
          else {
            iVar3 = (**(code **)(*local_40 + 0x24))();
          }
          bVar16 = iVar3 == -1;
          if (bVar16) {
            local_40 = (int *)0x0;
            iVar3 = local_3c;
          }
          local_3c = iVar3;
          if (param_5 != (int *)0x0) goto LAB_007b9a4e;
LAB_007b9ae2:
          if (bVar16 == true) goto LAB_007b9a5c;
        }
        __c = FUN_007b5e44(&local_40);
      } while( true );
    }
    bVar16 = false;
    uVar13 = 0;
    uVar14 = 0;
  }
  else {
    if (uVar11 == 0) {
      do {
        if ((*(char *)(iVar2 + 0x10) == '\0') || (__c != *(wchar_t *)(iVar2 + 0x28))) {
          if ((__c == *(wchar_t *)(iVar2 + 0x24)) ||
             (pwVar6 = wmemchr((wchar_t *)(iVar2 + 0xcc),__c,uVar12), pwVar6 == (wchar_t *)0x0))
          goto LAB_007b9b3e;
          uVar10 = (int)pwVar6 - (iVar2 + 0xcc) >> 2;
          if (0xf < (int)uVar10) {
            uVar10 = uVar10 - 6;
          }
          if (uVar5 < uVar13) {
            uVar14 = 1;
          }
          else {
            uVar15 = uVar15 + 1;
            if (~uVar10 < local_54 * uVar13) {
              uVar14 = 1;
            }
            uVar13 = local_54 * uVar13 + uVar10;
          }
        }
        else {
          if (uVar15 == 0) {
            bVar16 = true;
            goto LAB_007b9a60;
          }
          FUN_007c640c(local_2c,uVar15 & 0xff);
          uVar15 = 0;
        }
        cVar1 = cVar9;
        if (local_40 != (int *)0x0) {
          if ((uint)local_40[2] < (uint)local_40[3]) {
            local_40[2] = local_40[2] + 4;
          }
          else {
            (**(code **)(*local_40 + 0x28))();
            local_3c = -1;
            if (local_40 == (int *)0x0) goto joined_r0x007b9c40;
          }
          local_3c = -1;
          if ((int *)local_40[2] < (int *)local_40[3]) {
            iVar3 = *(int *)local_40[2];
          }
          else {
            iVar3 = (**(code **)(*local_40 + 0x24))();
          }
          if (iVar3 == -1) {
            local_40 = (int *)0x0;
          }
          else {
            cVar1 = '\0';
            local_3c = iVar3;
          }
        }
joined_r0x007b9c40:
        cVar8 = cVar9;
        if (param_5 != (int *)0x0) {
          if (param_6 == -1) {
            if ((int *)param_5[2] < (int *)param_5[3]) {
              iVar3 = *(int *)param_5[2];
            }
            else {
              iVar3 = (**(code **)(*param_5 + 0x24))();
            }
            if (iVar3 == -1) {
              param_5 = (int *)0x0;
            }
            else {
              param_6 = iVar3;
              cVar8 = '\0';
            }
          }
          else {
            cVar8 = '\0';
          }
        }
        if (cVar1 == cVar8) goto LAB_007b9a5c;
        __c = FUN_007b5e44(&local_40);
      } while( true );
    }
    uVar13 = 0;
    uVar14 = 0;
    bVar16 = false;
  }
LAB_007b9a60:
  iVar3 = *(int *)(local_2c[0] + -0xc);
joined_r0x007b9a68:
  if (iVar3 != 0) {
    FUN_007c640c(local_2c,uVar15 & 0xff);
    iVar3 = FUN_007c7b7c(*(undefined4 *)(iVar2 + 8),*(undefined4 *)(iVar2 + 0xc),local_2c);
    if (iVar3 == 0) {
      *param_8 = 4;
    }
  }
  bVar7 = (bool)(bVar7 ^ 1);
  if (uVar15 != 0) {
    bVar7 = false;
  }
  if (((bVar7) && (*(int *)(local_2c[0] + -0xc) == 0)) || (bVar16)) {
    uVar12 = 0;
  }
  else {
    if (uVar14 == 0) {
      if (bVar18) {
        uVar13 = -uVar13;
      }
      *param_9 = uVar13;
      goto LAB_007b9a90;
    }
    uVar12 = 0xffffffff;
  }
  *param_9 = uVar12;
  *param_8 = 4;
LAB_007b9a90:
  if (uVar11 != 0) {
    *param_8 = *param_8 | 2;
  }
  *param_1 = (int)local_40;
  param_1[1] = local_3c;
  FUN_007c5900(local_2c[0] + -0xc,auStack_30);
  return param_1;
LAB_007b9dda:
  cVar9 = *(char *)(iVar2 + 0x10);
  goto joined_r0x007b9d0e;
LAB_007b9b3e:
  bVar16 = false;
  iVar3 = *(int *)(local_2c[0] + -0xc);
  goto joined_r0x007b9a68;
LAB_007b9a5c:
  bVar16 = false;
  uVar11 = 1;
  goto LAB_007b9a60;
}

// ---- FUN_007b9e24  @ 0x7b9e24
undefined4
FUN_007b9e24(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5,undefined4 param_6,undefined4 param_7,undefined4 param_8,
            undefined4 param_9)

{
  FUN_007b98fc(param_1,param_2,param_3,param_4,param_5,param_6,param_7,param_8,param_9);
  return param_1;
}

// ---- FUN_007b9e60  @ 0x7b9e60
/* WARNING: Restarted to delay deadcode elimination for space: stack */

int * FUN_007b9e60(int *param_1,undefined4 param_2,int *param_3,int param_4,int *param_5,int param_6
                  ,int param_7,uint *param_8,uint *param_9)

{
  char cVar1;
  int iVar2;
  int iVar3;
  wchar_t __c;
  undefined4 uVar4;
  uint uVar5;
  wchar_t *pwVar6;
  bool bVar7;
  char cVar8;
  char cVar9;
  int *piVar10;
  uint uVar11;
  uint uVar12;
  uint uVar13;
  uint uVar14;
  uint uVar15;
  uint uVar16;
  bool bVar17;
  bool bVar18;
  bool bVar19;
  uint local_58;
  int *local_40;
  int local_3c;
  undefined1 auStack_34 [8];
  undefined1 *local_2c [2];
  
  iVar3 = param_7;
  local_40 = param_3;
  local_3c = param_4;
  iVar2 = FUN_007b54fc(auStack_34,param_7 + 0x6c);
  uVar13 = *(uint *)(iVar3 + 0xc) & 0x4a;
  if (uVar13 == 0x40) {
    local_58 = 8;
  }
  else if (uVar13 == 8) {
    local_58 = 0x10;
  }
  else {
    local_58 = 10;
  }
  iVar3 = FUN_007b5e7c(&local_40,&param_5);
  if (iVar3 == 0) {
    __c = FUN_007b5e44(&local_40);
    bVar19 = *(wchar_t *)(iVar2 + 0xbc) == __c;
    if ((!bVar19) && (*(wchar_t *)(iVar2 + 0xc0) != __c)) {
      cVar9 = *(char *)(iVar2 + 0x10);
LAB_007ba1f4:
      uVar16 = 0;
      bVar7 = false;
      do {
        uVar12 = 0;
        if (((cVar9 != '\0') && (*(wchar_t *)(iVar2 + 0x28) == __c)) ||
           (*(wchar_t *)(iVar2 + 0x24) == __c)) goto joined_r0x007ba278;
        if (*(wchar_t *)(iVar2 + 0xcc) == __c) {
          bVar7 = (bool)(bVar7 ^ 1);
          if (local_58 == 10) {
            bVar7 = true;
          }
          if (!bVar7) goto LAB_007ba228;
          if (uVar13 == 0) {
            bVar7 = true;
            local_58 = 8;
            uVar16 = uVar13;
          }
          else if (local_58 == 8) {
            bVar7 = true;
            uVar16 = 0;
          }
          else {
            bVar7 = true;
            uVar16 = uVar16 + 1;
          }
        }
        else {
          if (!bVar7) goto joined_r0x007ba278;
LAB_007ba228:
          if ((*(wchar_t *)(iVar2 + 0xc4) != __c) && (*(wchar_t *)(iVar2 + 200) != __c)) {
            bVar7 = true;
            goto joined_r0x007ba278;
          }
          if (uVar13 == 0) {
            local_58 = 0x10;
            bVar7 = false;
            uVar16 = uVar13;
          }
          else {
            if (local_58 != 0x10) {
              bVar7 = true;
              uVar13 = local_58;
              goto LAB_007b9efe;
            }
            bVar7 = false;
            uVar16 = 0;
          }
        }
        if (local_40 != (int *)0x0) {
          if ((uint)local_40[2] < (uint)local_40[3]) {
            local_40[2] = local_40[2] + 4;
          }
          else {
            (**(code **)(*local_40 + 0x28))();
          }
          local_3c = -1;
        }
        iVar3 = FUN_007b5e7c(&local_40,&param_5);
        if (iVar3 != 0) {
          uVar12 = 1;
          cVar9 = *(char *)(iVar2 + 0x10);
          goto joined_r0x007ba278;
        }
        __c = FUN_007b5e44(&local_40);
        if (!bVar7) goto LAB_007ba344;
        cVar9 = *(char *)(iVar2 + 0x10);
      } while( true );
    }
    cVar9 = *(char *)(iVar2 + 0x10);
    if ((cVar9 != '\0') && (*(wchar_t *)(iVar2 + 0x28) == __c)) {
      cVar9 = '\x01';
      goto LAB_007ba1f4;
    }
    if (*(wchar_t *)(iVar2 + 0x24) == __c) goto LAB_007ba1f4;
    uVar4 = FUN_007b542c(&local_40);
    iVar3 = FUN_007b5e7c(uVar4,&param_5);
    if (iVar3 == 0) {
      __c = FUN_007b5e44(&local_40);
      cVar9 = *(char *)(iVar2 + 0x10);
      goto LAB_007ba1f4;
    }
  }
  else {
    __c = L'\0';
    bVar19 = false;
  }
  cVar9 = *(char *)(iVar2 + 0x10);
  uVar12 = 1;
  uVar16 = 0;
  bVar7 = false;
joined_r0x007ba278:
  uVar13 = local_58;
  if (local_58 == 0x10) {
    uVar13 = 0x16;
  }
LAB_007b9efe:
  local_2c[0] = &DAT_00972528;
  if (cVar9 != '\0') {
    FUN_007c60a0(local_2c,0x20);
  }
  uVar5 = __udivsi3(0xffffffff,local_58);
  cVar9 = *(char *)(iVar2 + 0x124);
  uVar14 = uVar12;
  uVar15 = uVar12;
  if (cVar9 == '\0') {
    if (uVar12 == 0) {
      do {
        if (uVar13 < 0xb) {
          if (((uint)__c < 0x30) || ((uint)(uVar13 + L'0') <= (uint)__c)) goto LAB_007ba0a8;
          uVar11 = __c + L'\xffffffd0';
        }
        else {
          uVar11 = __c + L'\xffffffd0';
          if (9 < uVar11) {
            if ((uint)(__c + L'\xffffff9f') < 6) {
              uVar11 = __c + L'\xffffffa9';
            }
            else {
              if (5 < (uint)(__c + L'\xffffffbf')) goto LAB_007ba0a8;
              uVar11 = __c + L'\xffffffc9';
            }
          }
        }
        if (uVar5 < uVar14) {
          uVar15 = 1;
        }
        else {
          uVar16 = uVar16 + 1;
          if (~uVar11 < local_58 * uVar14) {
            uVar15 = 1;
          }
          uVar14 = local_58 * uVar14 + uVar11;
        }
        if (local_40 == (int *)0x0) {
LAB_007ba044:
          bVar17 = true;
          if (param_5 == (int *)0x0) goto LAB_007ba04c;
LAB_007b9fb6:
          if (param_6 == -1) {
            if ((int *)param_5[2] < (int *)param_5[3]) {
              iVar3 = *(int *)param_5[2];
            }
            else {
              iVar3 = (**(code **)(*param_5 + 0x24))();
            }
            bVar18 = iVar3 == -1;
            if (bVar18) {
              param_5 = (int *)0x0;
              iVar3 = param_6;
            }
          }
          else {
            bVar18 = false;
            iVar3 = param_6;
          }
          param_6 = iVar3;
          if (bVar17 == bVar18) goto LAB_007b9fc4;
        }
        else {
          if ((uint)local_40[2] < (uint)local_40[3]) {
            local_40[2] = local_40[2] + 4;
          }
          else {
            (**(code **)(*local_40 + 0x28))();
            local_3c = -1;
            if (local_40 == (int *)0x0) goto LAB_007ba044;
          }
          local_3c = -1;
          if ((int *)local_40[2] < (int *)local_40[3]) {
            iVar3 = *(int *)local_40[2];
          }
          else {
            iVar3 = (**(code **)(*local_40 + 0x24))();
          }
          bVar17 = iVar3 == -1;
          if (bVar17) {
            local_40 = (int *)0x0;
            iVar3 = local_3c;
          }
          local_3c = iVar3;
          if (param_5 != (int *)0x0) goto LAB_007b9fb6;
LAB_007ba04c:
          if (bVar17 == true) goto LAB_007b9fc4;
        }
        __c = FUN_007b5e44(&local_40);
      } while( true );
    }
    bVar17 = false;
    uVar14 = 0;
    uVar15 = 0;
  }
  else {
    if (uVar12 == 0) {
      do {
        if ((*(char *)(iVar2 + 0x10) == '\0') || (__c != *(wchar_t *)(iVar2 + 0x28))) {
          if ((__c == *(wchar_t *)(iVar2 + 0x24)) ||
             (pwVar6 = wmemchr((wchar_t *)(iVar2 + 0xcc),__c,uVar13), pwVar6 == (wchar_t *)0x0))
          goto LAB_007ba0a8;
          uVar11 = (int)pwVar6 - (iVar2 + 0xcc) >> 2;
          if (0xf < (int)uVar11) {
            uVar11 = uVar11 - 6;
          }
          if (uVar5 < uVar14) {
            uVar15 = 1;
          }
          else {
            uVar16 = uVar16 + 1;
            if (~uVar11 < local_58 * uVar14) {
              uVar15 = 1;
            }
            uVar14 = local_58 * uVar14 + uVar11;
          }
        }
        else {
          if (uVar16 == 0) {
            bVar17 = true;
            goto LAB_007b9fc8;
          }
          FUN_007c640c(local_2c,uVar16 & 0xff);
          uVar16 = 0;
        }
        cVar1 = cVar9;
        if (local_40 != (int *)0x0) {
          if ((uint)local_40[2] < (uint)local_40[3]) {
            local_40[2] = local_40[2] + 4;
          }
          else {
            (**(code **)(*local_40 + 0x28))();
            local_3c = -1;
            if (local_40 == (int *)0x0) goto joined_r0x007ba1aa;
          }
          local_3c = -1;
          if ((int *)local_40[2] < (int *)local_40[3]) {
            iVar3 = *(int *)local_40[2];
          }
          else {
            iVar3 = (**(code **)(*local_40 + 0x24))();
          }
          if (iVar3 == -1) {
            local_40 = (int *)0x0;
          }
          else {
            cVar1 = '\0';
            local_3c = iVar3;
          }
        }
joined_r0x007ba1aa:
        cVar8 = cVar9;
        if (param_5 != (int *)0x0) {
          if (param_6 == -1) {
            if ((int *)param_5[2] < (int *)param_5[3]) {
              iVar3 = *(int *)param_5[2];
            }
            else {
              iVar3 = (**(code **)(*param_5 + 0x24))();
            }
            if (iVar3 == -1) {
              param_5 = (int *)0x0;
            }
            else {
              param_6 = iVar3;
              cVar8 = '\0';
            }
          }
          else {
            cVar8 = '\0';
          }
        }
        if (cVar1 == cVar8) goto LAB_007b9fc4;
        __c = FUN_007b5e44(&local_40);
      } while( true );
    }
    uVar14 = 0;
    uVar15 = 0;
    bVar17 = false;
  }
LAB_007b9fc8:
  iVar3 = *(int *)(local_2c[0] + -0xc);
joined_r0x007b9fd0:
  if (iVar3 != 0) {
    FUN_007c640c(local_2c,uVar16 & 0xff);
    iVar3 = FUN_007c7b7c(*(undefined4 *)(iVar2 + 8),*(undefined4 *)(iVar2 + 0xc),local_2c);
    if (iVar3 == 0) {
      *param_8 = 4;
    }
  }
  bVar7 = (bool)(bVar7 ^ 1);
  if (uVar16 != 0) {
    bVar7 = false;
  }
  if (((bVar7) && (*(int *)(local_2c[0] + -0xc) == 0)) || (bVar17)) {
    uVar13 = 0;
  }
  else {
    if (uVar15 == 0) {
      if (bVar19) {
        uVar14 = -uVar14;
      }
      *param_9 = uVar14;
      goto LAB_007b9ff8;
    }
    uVar13 = 0xffffffff;
  }
  *param_9 = uVar13;
  *param_8 = 4;
LAB_007b9ff8:
  if (uVar12 != 0) {
    *param_8 = *param_8 | 2;
  }
  *param_1 = (int)local_40;
  param_1[1] = local_3c;
  if ((undefined4 *)(local_2c[0] + -0xc) != &DAT_0097251c) {
    piVar10 = (int *)(local_2c[0] + -4);
    DataMemoryBarrier(0x1f);
    do {
      ExclusiveAccess(piVar10);
      iVar3 = *piVar10;
      bVar19 = (bool)hasExclusiveAccess(piVar10);
    } while (!bVar19);
    *piVar10 = iVar3 + -1;
    DataMemoryBarrier(0x1f);
    if (iVar3 < 1) {
      operator_delete(local_2c[0] + -0xc);
    }
  }
  return param_1;
LAB_007ba344:
  cVar9 = *(char *)(iVar2 + 0x10);
  goto joined_r0x007ba278;
LAB_007ba0a8:
  bVar17 = false;
  iVar3 = *(int *)(local_2c[0] + -0xc);
  goto joined_r0x007b9fd0;
LAB_007b9fc4:
  bVar17 = false;
  uVar12 = 1;
  goto LAB_007b9fc8;
}

// ---- FUN_007ba3b4  @ 0x7ba3b4
undefined4
FUN_007ba3b4(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5,undefined4 param_6,undefined4 param_7,undefined4 param_8,
            undefined4 param_9)

{
  FUN_007b9e60(param_1,param_2,param_3,param_4,param_5,param_6,param_7,param_8,param_9);
  return param_1;
}

// ---- FUN_007ba3f0  @ 0x7ba3f0
undefined4 *
FUN_007ba3f0(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5,undefined4 param_6,int param_7,undefined4 param_8,undefined4 *param_9
            )

{
  uint uVar1;
  undefined4 local_38;
  undefined4 uStack_34;
  undefined4 local_30;
  undefined4 uStack_2c;
  undefined4 local_24 [2];
  
  uVar1 = *(uint *)(param_7 + 0xc);
  *(uint *)(param_7 + 0xc) = uVar1 & 0xffffffb5 | 8;
  local_30 = param_3;
  uStack_2c = param_4;
  FUN_007b9e60(&local_38,param_2,param_3,param_4,param_5,param_6,param_7,param_8,local_24);
  *(uint *)(param_7 + 0xc) = uVar1;
  *param_1 = local_38;
  param_1[1] = uStack_34;
  *param_9 = local_24[0];
  return param_1;
}

// ---- FUN_007ba454  @ 0x7ba454
/* WARNING: Restarted to delay deadcode elimination for space: stack */

int * FUN_007ba454(int *param_1,undefined4 param_2,int *param_3,int param_4,int *param_5,int param_6
                  ,int param_7,uint *param_8,uint *param_9)

{
  bool bVar1;
  bool bVar2;
  int iVar3;
  int iVar4;
  wchar_t __c;
  undefined4 uVar5;
  wchar_t *pwVar6;
  uint uVar7;
  uint uVar8;
  char cVar9;
  bool bVar10;
  char cVar11;
  uint uVar12;
  uint uVar13;
  uint uVar14;
  uint uVar15;
  char cVar16;
  bool bVar17;
  uint uVar18;
  int *piVar19;
  bool bVar20;
  bool bVar21;
  bool bVar22;
  undefined8 uVar23;
  uint local_74;
  uint local_70;
  uint local_60;
  int iStack_5c;
  int *local_40;
  int local_3c;
  undefined1 auStack_34 [8];
  undefined1 *local_2c [2];
  
  iVar4 = param_7;
  local_40 = param_3;
  local_3c = param_4;
  iVar3 = FUN_007b54fc(auStack_34,param_7 + 0x6c);
  uVar12 = *(uint *)(iVar4 + 0xc) & 0x4a;
  if (uVar12 == 0x40) {
    uVar13 = 8;
  }
  else if (uVar12 == 8) {
    uVar13 = 0x10;
  }
  else {
    uVar13 = 10;
  }
  iVar4 = FUN_007b5e7c(&local_40,&param_5);
  if (iVar4 == 0) {
    __c = FUN_007b5e44(&local_40);
    bVar21 = *(wchar_t *)(iVar3 + 0xbc) == __c;
    if ((!bVar21) && (*(wchar_t *)(iVar3 + 0xc0) != __c)) {
      cVar11 = *(char *)(iVar3 + 0x10);
LAB_007ba89a:
      local_70 = 0;
      bVar10 = false;
      do {
        bVar1 = false;
        if (((cVar11 != '\0') && (*(wchar_t *)(iVar3 + 0x28) == __c)) ||
           (*(wchar_t *)(iVar3 + 0x24) == __c)) goto joined_r0x007ba918;
        if (*(wchar_t *)(iVar3 + 0xcc) == __c) {
          bVar10 = (bool)(bVar10 ^ 1);
          if (uVar13 == 10) {
            bVar10 = true;
          }
          if (!bVar10) goto LAB_007ba8c8;
          if (uVar12 == 0) {
            bVar10 = true;
            uVar13 = 8;
            local_70 = uVar12;
          }
          else if (uVar13 == 8) {
            bVar10 = true;
            local_70 = 0;
          }
          else {
            bVar10 = true;
            local_70 = local_70 + 1;
          }
        }
        else {
          if (!bVar10) goto joined_r0x007ba918;
LAB_007ba8c8:
          if ((*(wchar_t *)(iVar3 + 0xc4) != __c) && (*(wchar_t *)(iVar3 + 200) != __c)) {
            bVar10 = true;
            goto joined_r0x007ba918;
          }
          if (uVar12 == 0) {
            uVar13 = 0x10;
            bVar10 = false;
            local_70 = uVar12;
          }
          else {
            if (uVar13 != 0x10) {
              bVar10 = true;
              local_74 = uVar13;
              goto LAB_007ba4e6;
            }
            bVar10 = false;
            local_70 = 0;
          }
        }
        if (local_40 != (int *)0x0) {
          if ((uint)local_40[2] < (uint)local_40[3]) {
            local_40[2] = local_40[2] + 4;
          }
          else {
            (**(code **)(*local_40 + 0x28))();
          }
          local_3c = -1;
        }
        iVar4 = FUN_007b5e7c(&local_40,&param_5);
        if (iVar4 != 0) {
          bVar1 = true;
          cVar11 = *(char *)(iVar3 + 0x10);
          goto joined_r0x007ba918;
        }
        __c = FUN_007b5e44(&local_40);
        if (!bVar10) goto LAB_007ba9fc;
        cVar11 = *(char *)(iVar3 + 0x10);
      } while( true );
    }
    cVar11 = *(char *)(iVar3 + 0x10);
    if ((cVar11 != '\0') && (*(wchar_t *)(iVar3 + 0x28) == __c)) {
      cVar11 = '\x01';
      goto LAB_007ba89a;
    }
    if (*(wchar_t *)(iVar3 + 0x24) == __c) goto LAB_007ba89a;
    uVar5 = FUN_007b542c(&local_40);
    iVar4 = FUN_007b5e7c(uVar5,&param_5);
    if (iVar4 == 0) {
      __c = FUN_007b5e44(&local_40);
      cVar11 = *(char *)(iVar3 + 0x10);
      goto LAB_007ba89a;
    }
  }
  else {
    __c = L'\0';
    bVar21 = false;
  }
  cVar11 = *(char *)(iVar3 + 0x10);
  bVar1 = true;
  local_70 = 0;
  bVar10 = false;
joined_r0x007ba918:
  local_74 = uVar13;
  if (uVar13 == 0x10) {
    local_74 = 0x16;
  }
LAB_007ba4e6:
  local_2c[0] = &DAT_00972528;
  if (cVar11 != '\0') {
    FUN_007c60a0(local_2c,0x20);
  }
  if (bVar21) {
    local_60 = 0;
    iStack_5c = -0x80000000;
  }
  else {
    local_60 = 0xffffffff;
    iStack_5c = 0x7fffffff;
  }
  uVar23 = __aeabi_uldivmod(local_60,iStack_5c,uVar13,0);
  uVar12 = (uint)((ulonglong)uVar23 >> 0x20);
  cVar11 = *(char *)(iVar3 + 0x124);
  bVar2 = bVar1;
  if (cVar11 == '\0') {
    if (!bVar1) {
      uVar14 = 0;
      uVar15 = 0;
      do {
        if (local_74 < 0xb) {
          if (((uint)__c < 0x30) || ((uint)(local_74 + L'0') <= (uint)__c)) goto LAB_007ba708;
          uVar18 = __c + L'\xffffffd0';
        }
        else {
          uVar18 = __c + L'\xffffffd0';
          if (9 < uVar18) {
            if ((uint)(__c + L'\xffffff9f') < 6) {
              uVar18 = __c + L'\xffffffa9';
            }
            else {
              if (5 < (uint)(__c + L'\xffffffbf')) goto LAB_007ba708;
              uVar18 = __c + L'\xffffffc9';
            }
          }
        }
        bVar22 = uVar15 <= uVar12;
        if (uVar12 == uVar15) {
          bVar22 = uVar14 <= (uint)uVar23;
        }
        if (bVar22) {
          local_70 = local_70 + 1;
          uVar8 = (uint)((ulonglong)uVar14 * (ulonglong)uVar13);
          uVar7 = (iStack_5c - ((int)uVar18 >> 0x1f)) - (uint)(local_60 < uVar18);
          uVar15 = (int)((ulonglong)uVar14 * (ulonglong)uVar13 >> 0x20) + uVar13 * uVar15;
          bVar22 = uVar15 <= uVar7;
          if (uVar7 == uVar15) {
            bVar22 = uVar8 <= local_60 - uVar18;
          }
          if (!bVar22) {
            bVar2 = true;
          }
          uVar14 = uVar18 + uVar8;
          uVar15 = ((int)uVar18 >> 0x1f) + uVar15 + CARRY4(uVar18,uVar8);
        }
        else {
          bVar2 = true;
        }
        if (local_40 == (int *)0x0) {
LAB_007ba854:
          bVar22 = true;
          bVar17 = true;
          if (param_5 != (int *)0x0) goto LAB_007ba7fc;
LAB_007ba85e:
          bVar20 = true;
          iVar4 = param_6;
          bVar22 = bVar17;
        }
        else {
          if ((uint)local_40[2] < (uint)local_40[3]) {
            local_40[2] = local_40[2] + 4;
          }
          else {
            (**(code **)(*local_40 + 0x28))();
            local_3c = -1;
            if (local_40 == (int *)0x0) goto LAB_007ba854;
          }
          local_3c = -1;
          if ((int *)local_40[2] < (int *)local_40[3]) {
            iVar4 = *(int *)local_40[2];
          }
          else {
            iVar4 = (**(code **)(*local_40 + 0x24))();
          }
          bVar22 = iVar4 == -1;
          if (bVar22) {
            local_40 = (int *)0x0;
            iVar4 = local_3c;
          }
          local_3c = iVar4;
          bVar17 = bVar22;
          if (param_5 == (int *)0x0) goto LAB_007ba85e;
LAB_007ba7fc:
          if (param_6 == -1) {
            if ((int *)param_5[2] < (int *)param_5[3]) {
              iVar4 = *(int *)param_5[2];
            }
            else {
              iVar4 = (**(code **)(*param_5 + 0x24))();
            }
            bVar20 = iVar4 == -1;
            if (bVar20) {
              param_5 = (int *)0x0;
              iVar4 = param_6;
            }
          }
          else {
            bVar20 = false;
            iVar4 = param_6;
          }
        }
        param_6 = iVar4;
        if (bVar22 == bVar20) goto LAB_007ba61a;
        __c = FUN_007b5e44(&local_40);
      } while( true );
    }
    uVar14 = 0;
    uVar15 = 0;
    bVar2 = false;
    bVar22 = false;
  }
  else {
    if (!bVar1) {
      uVar14 = 0;
      uVar15 = 0;
      do {
        if ((*(char *)(iVar3 + 0x10) == '\0') || (__c != *(wchar_t *)(iVar3 + 0x28))) {
          if ((__c == *(wchar_t *)(iVar3 + 0x24)) ||
             (pwVar6 = wmemchr((wchar_t *)(iVar3 + 0xcc),__c,local_74), pwVar6 == (wchar_t *)0x0))
          goto LAB_007ba708;
          uVar18 = (int)pwVar6 - (iVar3 + 0xcc) >> 2;
          if (0xf < (int)uVar18) {
            uVar18 = uVar18 - 6;
          }
          bVar22 = uVar15 <= uVar12;
          if (uVar12 == uVar15) {
            bVar22 = uVar14 <= (uint)uVar23;
          }
          if (bVar22) {
            local_70 = local_70 + 1;
            uVar7 = (uint)((ulonglong)uVar14 * (ulonglong)uVar13);
            uVar15 = (int)((ulonglong)uVar14 * (ulonglong)uVar13 >> 0x20) + uVar13 * uVar15;
            uVar14 = (iStack_5c - ((int)uVar18 >> 0x1f)) - (uint)(local_60 < uVar18);
            bVar22 = uVar15 <= uVar14;
            if (uVar14 == uVar15) {
              bVar22 = uVar7 <= local_60 - uVar18;
            }
            if (!bVar22) {
              bVar2 = true;
            }
            uVar14 = uVar18 + uVar7;
            uVar15 = ((int)uVar18 >> 0x1f) + uVar15 + CARRY4(uVar18,uVar7);
          }
          else {
            bVar2 = true;
          }
        }
        else {
          if (local_70 == 0) {
            bVar22 = true;
            goto LAB_007ba61e;
          }
          FUN_007c640c(local_2c,local_70 & 0xff);
          local_70 = 0;
        }
        cVar16 = cVar11;
        if (local_40 == (int *)0x0) {
LAB_007ba6ba:
          if (param_5 != (int *)0x0) goto LAB_007ba60c;
LAB_007ba6c4:
          if (cVar16 == cVar11) goto LAB_007ba61a;
        }
        else {
          if ((uint)local_40[2] < (uint)local_40[3]) {
            local_40[2] = local_40[2] + 4;
          }
          else {
            (**(code **)(*local_40 + 0x28))();
            local_3c = -1;
            if (local_40 == (int *)0x0) goto LAB_007ba6ba;
          }
          local_3c = -1;
          if ((int *)local_40[2] < (int *)local_40[3]) {
            iVar4 = *(int *)local_40[2];
          }
          else {
            iVar4 = (**(code **)(*local_40 + 0x24))();
          }
          if (iVar4 == -1) {
            local_40 = (int *)0x0;
          }
          else {
            local_3c = iVar4;
            cVar16 = '\0';
          }
          if (param_5 == (int *)0x0) goto LAB_007ba6c4;
LAB_007ba60c:
          if (param_6 == -1) {
            if ((int *)param_5[2] < (int *)param_5[3]) {
              iVar4 = *(int *)param_5[2];
            }
            else {
              iVar4 = (**(code **)(*param_5 + 0x24))();
            }
            if (iVar4 == -1) {
              param_5 = (int *)0x0;
              cVar9 = cVar11;
            }
            else {
              param_6 = iVar4;
              cVar9 = '\0';
            }
          }
          else {
            cVar9 = '\0';
          }
          if (cVar16 == cVar9) goto LAB_007ba61a;
        }
        __c = FUN_007b5e44(&local_40);
      } while( true );
    }
    bVar2 = false;
    uVar14 = 0;
    uVar15 = 0;
    bVar22 = bVar2;
  }
LAB_007ba61e:
  iVar4 = *(int *)(local_2c[0] + -0xc);
joined_r0x007ba714:
  if (iVar4 != 0) {
    FUN_007c640c(local_2c,local_70 & 0xff);
    iVar4 = FUN_007c7b7c(*(undefined4 *)(iVar3 + 8),*(undefined4 *)(iVar3 + 0xc),local_2c);
    if (iVar4 == 0) {
      *param_8 = 4;
    }
  }
  bVar10 = (bool)(bVar10 ^ 1);
  if (local_70 != 0) {
    bVar10 = false;
  }
  if (((bVar10) && (*(int *)(local_2c[0] + -0xc) == 0)) || (bVar22)) {
    *param_9 = 0;
    param_9[1] = 0;
    *param_8 = 4;
  }
  else if (bVar2) {
    if (bVar21) {
      *param_9 = 0;
      param_9[1] = 0x80000000;
    }
    else {
      *param_9 = 0xffffffff;
      param_9[1] = 0x7fffffff;
    }
    *param_8 = 4;
  }
  else {
    uVar12 = -uVar14;
    uVar13 = -uVar15 - (uint)(uVar14 != 0);
    if (!bVar21) {
      uVar12 = uVar14;
      uVar13 = uVar15;
    }
    *param_9 = uVar12;
    param_9[1] = uVar13;
  }
  if (bVar1) {
    *param_8 = *param_8 | 2;
  }
  *param_1 = (int)local_40;
  param_1[1] = local_3c;
  if ((undefined4 *)(local_2c[0] + -0xc) != &DAT_0097251c) {
    piVar19 = (int *)(local_2c[0] + -4);
    DataMemoryBarrier(0x1f);
    do {
      ExclusiveAccess(piVar19);
      iVar4 = *piVar19;
      bVar21 = (bool)hasExclusiveAccess(piVar19);
    } while (!bVar21);
    *piVar19 = iVar4 + -1;
    DataMemoryBarrier(0x1f);
    if (iVar4 < 1) {
      operator_delete(local_2c[0] + -0xc);
    }
  }
  return param_1;
LAB_007ba9fc:
  cVar11 = *(char *)(iVar3 + 0x10);
  goto joined_r0x007ba918;
LAB_007ba708:
  bVar22 = false;
  iVar4 = *(int *)(local_2c[0] + -0xc);
  goto joined_r0x007ba714;
LAB_007ba61a:
  bVar1 = true;
  bVar22 = false;
  goto LAB_007ba61e;
}

// ---- FUN_007baa6c  @ 0x7baa6c
undefined4
FUN_007baa6c(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5,undefined4 param_6,undefined4 param_7,undefined4 param_8,
            undefined4 param_9)

{
  FUN_007ba454(param_1,param_2,param_3,param_4,param_5,param_6,param_7,param_8,param_9);
  return param_1;
}

// ---- FUN_007baaa8  @ 0x7baaa8
/* WARNING: Restarted to delay deadcode elimination for space: stack */

int * FUN_007baaa8(int *param_1,undefined4 param_2,int *param_3,int param_4,int *param_5,int param_6
                  ,int param_7,uint *param_8,uint *param_9)

{
  bool bVar1;
  bool bVar2;
  char cVar3;
  int iVar4;
  int iVar5;
  wchar_t __c;
  undefined4 uVar6;
  wchar_t *pwVar7;
  uint uVar8;
  uint uVar9;
  bool bVar10;
  char cVar11;
  char cVar12;
  uint uVar13;
  uint uVar14;
  uint uVar15;
  uint uVar16;
  uint uVar17;
  bool bVar18;
  bool bVar19;
  bool bVar20;
  undefined8 uVar21;
  uint local_68;
  uint local_64;
  int *local_40;
  int local_3c;
  undefined1 auStack_34 [4];
  undefined1 auStack_30 [4];
  undefined1 *local_2c [2];
  
  iVar5 = param_7;
  local_40 = param_3;
  local_3c = param_4;
  iVar4 = FUN_007b54fc(auStack_34,param_7 + 0x6c);
  uVar13 = *(uint *)(iVar5 + 0xc) & 0x4a;
  if (uVar13 == 0x40) {
    uVar15 = 8;
  }
  else if (uVar13 == 8) {
    uVar15 = 0x10;
  }
  else {
    uVar15 = 10;
  }
  iVar5 = FUN_007b5e7c(&local_40,&param_5);
  if (iVar5 == 0) {
    __c = FUN_007b5e44(&local_40);
    bVar19 = *(wchar_t *)(iVar4 + 0xbc) == __c;
    if ((!bVar19) && (*(wchar_t *)(iVar4 + 0xc0) != __c)) {
      cVar12 = *(char *)(iVar4 + 0x10);
LAB_007bae9c:
      local_64 = 0;
      bVar10 = false;
      do {
        bVar1 = false;
        if (((cVar12 != '\0') && (*(wchar_t *)(iVar4 + 0x28) == __c)) ||
           (*(wchar_t *)(iVar4 + 0x24) == __c)) goto joined_r0x007baf1c;
        if (*(wchar_t *)(iVar4 + 0xcc) == __c) {
          bVar10 = (bool)(bVar10 ^ 1);
          if (uVar15 == 10) {
            bVar10 = true;
          }
          if (!bVar10) goto LAB_007baecc;
          if (uVar13 == 0) {
            bVar10 = true;
            uVar15 = 8;
            local_64 = uVar13;
          }
          else if (uVar15 == 8) {
            bVar10 = true;
            local_64 = 0;
          }
          else {
            bVar10 = true;
            local_64 = local_64 + 1;
          }
        }
        else {
          if (!bVar10) goto joined_r0x007baf1c;
LAB_007baecc:
          if ((*(wchar_t *)(iVar4 + 0xc4) != __c) && (*(wchar_t *)(iVar4 + 200) != __c)) {
            bVar10 = true;
            goto joined_r0x007baf1c;
          }
          if (uVar13 == 0) {
            uVar15 = 0x10;
            bVar10 = false;
            local_64 = uVar13;
          }
          else {
            if (uVar15 != 0x10) {
              bVar10 = true;
              local_68 = uVar15;
              goto LAB_007bab46;
            }
            bVar10 = false;
            local_64 = 0;
          }
        }
        if (local_40 != (int *)0x0) {
          if ((uint)local_40[2] < (uint)local_40[3]) {
            local_40[2] = local_40[2] + 4;
          }
          else {
            (**(code **)(*local_40 + 0x28))();
          }
          local_3c = -1;
        }
        iVar5 = FUN_007b5e7c(&local_40,&param_5);
        if (iVar5 != 0) {
          bVar1 = true;
          cVar12 = *(char *)(iVar4 + 0x10);
          goto joined_r0x007baf1c;
        }
        __c = FUN_007b5e44(&local_40);
        if (!bVar10) goto LAB_007baff2;
        cVar12 = *(char *)(iVar4 + 0x10);
      } while( true );
    }
    cVar12 = *(char *)(iVar4 + 0x10);
    if ((cVar12 != '\0') && (*(wchar_t *)(iVar4 + 0x28) == __c)) {
      cVar12 = '\x01';
      goto LAB_007bae9c;
    }
    if (*(wchar_t *)(iVar4 + 0x24) == __c) goto LAB_007bae9c;
    uVar6 = FUN_007b542c(&local_40);
    iVar5 = FUN_007b5e7c(uVar6,&param_5);
    if (iVar5 == 0) {
      __c = FUN_007b5e44(&local_40);
      cVar12 = *(char *)(iVar4 + 0x10);
      goto LAB_007bae9c;
    }
  }
  else {
    __c = L'\0';
    bVar19 = false;
  }
  cVar12 = *(char *)(iVar4 + 0x10);
  bVar1 = true;
  local_64 = 0;
  bVar10 = false;
joined_r0x007baf1c:
  local_68 = uVar15;
  if (uVar15 == 0x10) {
    local_68 = 0x16;
  }
LAB_007bab46:
  local_2c[0] = &DAT_00972528;
  if (cVar12 != '\0') {
    FUN_007c60a0(local_2c,0x20);
  }
  uVar21 = __aeabi_uldivmod(0xffffffff,0xffffffff,uVar15,0);
  uVar13 = (uint)((ulonglong)uVar21 >> 0x20);
  cVar12 = *(char *)(iVar4 + 0x124);
  bVar2 = bVar1;
  if (cVar12 == '\0') {
    if (!bVar1) {
      uVar16 = 0;
      uVar17 = 0;
      do {
        if (local_68 < 0xb) {
          if (((uint)__c < 0x30) || ((uint)(local_68 + L'0') <= (uint)__c)) goto LAB_007bad2c;
          uVar14 = __c + L'\xffffffd0';
        }
        else {
          uVar14 = __c + L'\xffffffd0';
          if (9 < uVar14) {
            if ((uint)(__c + L'\xffffff9f') < 6) {
              uVar14 = __c + L'\xffffffa9';
            }
            else {
              if (5 < (uint)(__c + L'\xffffffbf')) goto LAB_007bad2c;
              uVar14 = __c + L'\xffffffc9';
            }
          }
        }
        bVar20 = uVar17 <= uVar13;
        if (uVar13 == uVar17) {
          bVar20 = uVar16 <= (uint)uVar21;
        }
        if (bVar20) {
          local_64 = local_64 + 1;
          uVar9 = (uint)((ulonglong)uVar16 * (ulonglong)uVar15);
          uVar8 = ~((int)uVar14 >> 0x1f);
          uVar17 = (int)((ulonglong)uVar16 * (ulonglong)uVar15 >> 0x20) + uVar15 * uVar17;
          bVar20 = uVar17 <= uVar8;
          if (uVar8 == uVar17) {
            bVar20 = uVar9 <= ~uVar14;
          }
          if (!bVar20) {
            bVar2 = true;
          }
          uVar16 = uVar14 + uVar9;
          uVar17 = ((int)uVar14 >> 0x1f) + uVar17 + CARRY4(uVar14,uVar9);
        }
        else {
          bVar2 = true;
        }
        if (local_40 == (int *)0x0) {
LAB_007bacc8:
          bVar20 = true;
          if (param_5 == (int *)0x0) goto LAB_007bacd0;
LAB_007bac34:
          if (param_6 == -1) {
            if ((int *)param_5[2] < (int *)param_5[3]) {
              iVar5 = *(int *)param_5[2];
            }
            else {
              iVar5 = (**(code **)(*param_5 + 0x24))();
            }
            bVar18 = iVar5 == -1;
            if (bVar18) {
              param_5 = (int *)0x0;
              iVar5 = param_6;
            }
          }
          else {
            bVar18 = false;
            iVar5 = param_6;
          }
          param_6 = iVar5;
          if (bVar18 == bVar20) goto LAB_007bac42;
        }
        else {
          if ((uint)local_40[2] < (uint)local_40[3]) {
            local_40[2] = local_40[2] + 4;
          }
          else {
            (**(code **)(*local_40 + 0x28))();
            local_3c = -1;
            if (local_40 == (int *)0x0) goto LAB_007bacc8;
          }
          local_3c = -1;
          if ((int *)local_40[2] < (int *)local_40[3]) {
            iVar5 = *(int *)local_40[2];
          }
          else {
            iVar5 = (**(code **)(*local_40 + 0x24))();
          }
          bVar20 = iVar5 == -1;
          if (bVar20) {
            local_40 = (int *)0x0;
            iVar5 = local_3c;
          }
          local_3c = iVar5;
          if (param_5 != (int *)0x0) goto LAB_007bac34;
LAB_007bacd0:
          if (bVar20 == true) goto LAB_007bac42;
        }
        __c = FUN_007b5e44(&local_40);
      } while( true );
    }
    uVar16 = 0;
    uVar17 = 0;
    bVar20 = false;
    bVar2 = false;
  }
  else {
    if (!bVar1) {
      uVar16 = 0;
      uVar17 = 0;
      do {
        if ((*(char *)(iVar4 + 0x10) == '\0') || (__c != *(wchar_t *)(iVar4 + 0x28))) {
          if ((__c == *(wchar_t *)(iVar4 + 0x24)) ||
             (pwVar7 = wmemchr((wchar_t *)(iVar4 + 0xcc),__c,local_68), pwVar7 == (wchar_t *)0x0))
          goto LAB_007bad2c;
          uVar14 = (int)pwVar7 - (iVar4 + 0xcc) >> 2;
          if (0xf < (int)uVar14) {
            uVar14 = uVar14 - 6;
          }
          bVar20 = uVar17 <= uVar13;
          if (uVar13 == uVar17) {
            bVar20 = uVar16 <= (uint)uVar21;
          }
          if (bVar20) {
            local_64 = local_64 + 1;
            uVar8 = (uint)((ulonglong)uVar16 * (ulonglong)uVar15);
            uVar9 = ~((int)uVar14 >> 0x1f);
            uVar17 = (int)((ulonglong)uVar16 * (ulonglong)uVar15 >> 0x20) + uVar15 * uVar17;
            bVar20 = uVar17 <= uVar9;
            if (uVar9 == uVar17) {
              bVar20 = uVar8 <= ~uVar14;
            }
            if (!bVar20) {
              bVar2 = true;
            }
            uVar16 = uVar14 + uVar8;
            uVar17 = ((int)uVar14 >> 0x1f) + uVar17 + CARRY4(uVar14,uVar8);
          }
          else {
            bVar2 = true;
          }
        }
        else {
          if (local_64 == 0) {
            bVar20 = true;
            goto LAB_007bac46;
          }
          FUN_007c640c(local_2c,local_64 & 0xff);
          local_64 = 0;
        }
        cVar3 = cVar12;
        if (local_40 != (int *)0x0) {
          if ((uint)local_40[2] < (uint)local_40[3]) {
            local_40[2] = local_40[2] + 4;
          }
          else {
            (**(code **)(*local_40 + 0x28))();
            local_3c = -1;
            if (local_40 == (int *)0x0) goto joined_r0x007bae54;
          }
          local_3c = -1;
          if ((int *)local_40[2] < (int *)local_40[3]) {
            iVar5 = *(int *)local_40[2];
          }
          else {
            iVar5 = (**(code **)(*local_40 + 0x24))();
          }
          if (iVar5 == -1) {
            local_40 = (int *)0x0;
          }
          else {
            cVar3 = '\0';
            local_3c = iVar5;
          }
        }
joined_r0x007bae54:
        cVar11 = cVar12;
        if (param_5 != (int *)0x0) {
          if (param_6 == -1) {
            if ((int *)param_5[2] < (int *)param_5[3]) {
              iVar5 = *(int *)param_5[2];
            }
            else {
              iVar5 = (**(code **)(*param_5 + 0x24))();
            }
            if (iVar5 == -1) {
              param_5 = (int *)0x0;
            }
            else {
              param_6 = iVar5;
              cVar11 = '\0';
            }
          }
          else {
            cVar11 = '\0';
          }
        }
        if (cVar3 == cVar11) goto LAB_007bac42;
        __c = FUN_007b5e44(&local_40);
      } while( true );
    }
    bVar2 = false;
    uVar16 = 0;
    uVar17 = 0;
    bVar20 = false;
  }
LAB_007bac46:
  iVar5 = *(int *)(local_2c[0] + -0xc);
joined_r0x007bac4e:
  if (iVar5 != 0) {
    FUN_007c640c(local_2c,local_64 & 0xff);
    iVar5 = FUN_007c7b7c(*(undefined4 *)(iVar4 + 8),*(undefined4 *)(iVar4 + 0xc),local_2c);
    if (iVar5 == 0) {
      *param_8 = 4;
    }
  }
  bVar10 = (bool)(bVar10 ^ 1);
  if (local_64 != 0) {
    bVar10 = false;
  }
  if (((bVar10) && (*(int *)(local_2c[0] + -0xc) == 0)) || (bVar20)) {
    uVar13 = 0;
    uVar15 = 0;
  }
  else {
    if (!bVar2) {
      uVar13 = -uVar16;
      uVar15 = -uVar17 - (uint)(uVar16 != 0);
      if (!bVar19) {
        uVar13 = uVar16;
        uVar15 = uVar17;
      }
      *param_9 = uVar13;
      param_9[1] = uVar15;
      goto LAB_007bac7a;
    }
    uVar13 = 0xffffffff;
    uVar15 = 0xffffffff;
  }
  *param_9 = uVar13;
  param_9[1] = uVar15;
  *param_8 = 4;
LAB_007bac7a:
  if (bVar1) {
    *param_8 = *param_8 | 2;
  }
  *param_1 = (int)local_40;
  param_1[1] = local_3c;
  FUN_007c5900(local_2c[0] + -0xc,auStack_30);
  return param_1;
LAB_007baff2:
  cVar12 = *(char *)(iVar4 + 0x10);
  goto joined_r0x007baf1c;
LAB_007bad2c:
  bVar20 = false;
  iVar5 = *(int *)(local_2c[0] + -0xc);
  goto joined_r0x007bac4e;
LAB_007bac42:
  bVar20 = false;
  bVar1 = true;
  goto LAB_007bac46;
}

// ---- FUN_007bb03c  @ 0x7bb03c
undefined4
FUN_007bb03c(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5,undefined4 param_6,undefined4 param_7,undefined4 param_8,
            undefined4 param_9)

{
  FUN_007baaa8(param_1,param_2,param_3,param_4,param_5,param_6,param_7,param_8,param_9);
  return param_1;
}

// ---- FUN_007bb158  @ 0x7bb158
int * FUN_007bb158(int *param_1,int *param_2,undefined4 param_3)

{
  int iVar1;
  
  iVar1 = *param_2;
  *param_1 = iVar1;
  iVar1 = *(int *)(iVar1 + -0xc);
  *(int *)((int)param_1 + iVar1) = param_2[1];
  FUN_007990d4((int)param_1 + iVar1,param_3);
  return param_1;
}

// ---- FUN_007bb1f4  @ 0x7bb1f4
int * FUN_007bb1f4(int *param_1,code *param_2)

{
  (*param_2)(*(int *)(*param_1 + -0xc) + (int)param_1);
  return param_1;
}

// ---- FUN_007bb208  @ 0x7bb208
int * FUN_007bb208(int *param_1,code *param_2)

{
  (*param_2)(*(int *)(*param_1 + -0xc) + (int)param_1);
  return param_1;
}

// ---- FUN_007bb21c  @ 0x7bb21c
void FUN_007bb21c(int *param_1,undefined4 param_2,int param_3)

{
  int iVar1;
  
  iVar1 = (**(code **)(**(int **)((int)param_1 + *(int *)(*param_1 + -0xc) + 0x78) + 0x30))();
  if (param_3 != iVar1) {
    iVar1 = *(int *)(*param_1 + -0xc) + (int)param_1;
    FUN_00798e64(iVar1,*(uint *)(iVar1 + 0x14) | 1);
    return;
  }
  return;
}

// ---- FUN_007bb250  @ 0x7bb250
int * FUN_007bb250(int *param_1)

{
  int *piVar1;
  int iVar2;
  
  piVar1 = *(int **)((int)param_1 + *(int *)(*param_1 + -0xc) + 0x78);
  if ((piVar1 != (int *)0x0) && (iVar2 = (**(code **)(*piVar1 + 0x18))(), iVar2 == -1)) {
    iVar2 = *(int *)(*param_1 + -0xc) + (int)param_1;
    FUN_00798e64(iVar2,*(uint *)(iVar2 + 0x14) | 1);
  }
  return param_1;
}

// ---- FUN_007bb2dc  @ 0x7bb2dc
undefined4 * FUN_007bb2dc(undefined4 *param_1,int *param_2)

{
  int iVar1;
  int *piVar2;
  undefined4 local_28;
  undefined4 uStack_24;
  undefined4 uStack_20;
  
  iVar1 = *param_2;
  *param_1 = 0xffffffff;
  param_1[1] = 0xffffffff;
  iVar1 = *(int *)(iVar1 + -0xc);
  param_1[2] = 0;
  if ((*(uint *)((int)param_2 + iVar1 + 0x14) & 5) != 0) {
    return param_1;
  }
  piVar2 = *(int **)((int)param_2 + iVar1 + 0x78);
  (**(code **)(*piVar2 + 0x10))(&local_28,piVar2,0,0,1,0x10);
  *param_1 = local_28;
  param_1[1] = uStack_24;
  param_1[2] = uStack_20;
  return param_1;
}

// ---- FUN_007bb390  @ 0x7bb390
int * FUN_007bb390(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                  undefined4 param_5,undefined4 param_6)

{
  int iVar1;
  int *piVar2;
  int local_40;
  int iStack_3c;
  undefined4 local_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  
  if ((*(uint *)((int)param_1 + *(int *)(*param_1 + -0xc) + 0x14) & 5) == 0) {
    piVar2 = *(int **)((int)param_1 + *(int *)(*param_1 + -0xc) + 0x78);
    uStack_28 = param_5;
    uStack_24 = param_6;
    local_30 = param_3;
    uStack_2c = param_4;
    (**(code **)(*piVar2 + 0x14))(&local_40,piVar2,param_3,param_4,param_5,param_6,0x10);
    if (iStack_3c == -1 && local_40 == -1) {
      iVar1 = *(int *)(*param_1 + -0xc) + (int)param_1;
      FUN_00798e64(iVar1,*(uint *)(iVar1 + 0x14) | 4);
    }
  }
  return param_1;
}

// ---- FUN_007bb58c  @ 0x7bb58c
undefined1 * FUN_007bb58c(undefined1 *param_1,int *param_2,undefined4 param_3,undefined4 param_4)

{
  uint uVar1;
  int iVar2;
  int iVar3;
  
  iVar2 = *param_2;
  *(int **)(param_1 + 4) = param_2;
  *param_1 = 0;
  iVar3 = *(int *)(iVar2 + -0xc) + (int)param_2;
  if (*(int *)(iVar3 + 0x70) != 0) {
    uVar1 = *(uint *)(iVar3 + 0x14);
    if (uVar1 != 0) goto LAB_007bb5c0;
    FUN_007bb250();
    iVar2 = *param_2;
  }
  iVar3 = *(int *)(iVar2 + -0xc) + (int)param_2;
  uVar1 = *(uint *)(iVar3 + 0x14);
  if (uVar1 == 0) {
    *param_1 = 1;
    return param_1;
  }
LAB_007bb5c0:
  FUN_00798e64(iVar3,uVar1 | 4,iVar2,iVar3,param_4);
  return param_1;
}

// ---- FUN_007bb5d0  @ 0x7bb5d0
int FUN_007bb5d0(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  int *piVar2;
  int iVar3;
  
  piVar2 = *(int **)(param_1 + 4);
  iVar3 = *(int *)(*piVar2 + -0xc);
  if ((((*(int *)((int)piVar2 + iVar3 + 0xc) << 0x12 < 0) &&
       (iVar1 = std::uncaught_exception(), iVar1 == 0)) &&
      (piVar2 = *(int **)((int)piVar2 + iVar3 + 0x78), piVar2 != (int *)0x0)) &&
     (iVar3 = (**(code **)(*piVar2 + 0x18))(), iVar3 == -1)) {
    piVar2 = *(int **)(param_1 + 4);
    iVar3 = *(int *)(*piVar2 + -0xc) + (int)piVar2;
    FUN_00798e64(iVar3,*(uint *)(iVar3 + 0x14) | 1,*piVar2,piVar2,param_4);
    return param_1;
  }
  return param_1;
}

// ---- FUN_007bb614  @ 0x7bb614
int * FUN_007bb614(int *param_1,int param_2)

{
  int iVar1;
  int iVar2;
  int *piVar3;
  uint uVar4;
  undefined1 uStack_19;
  char local_18 [4];
  int *local_14;
  
  FUN_007bb58c(local_18,param_1);
  if (local_18[0] == '\0') {
    if (param_2 != 0) goto LAB_007bb656;
LAB_007bb684:
    uVar4 = 1;
  }
  else {
    if (param_2 == 0) goto LAB_007bb684;
    iVar1 = FUN_007ad274(param_2,*(undefined4 *)((int)param_1 + *(int *)(*param_1 + -0xc) + 0x78),
                         &uStack_19);
    uVar4 = 4;
    if (iVar1 != 0) goto LAB_007bb656;
  }
  iVar1 = *(int *)(*param_1 + -0xc) + (int)param_1;
  FUN_00798e64(iVar1,uVar4 | *(uint *)(iVar1 + 0x14));
LAB_007bb656:
  piVar3 = local_14;
  iVar1 = *(int *)(*local_14 + -0xc);
  if ((((*(int *)((int)local_14 + iVar1 + 0xc) << 0x12 < 0) &&
       (iVar2 = std::uncaught_exception(), iVar2 == 0)) &&
      (piVar3 = *(int **)((int)piVar3 + iVar1 + 0x78), piVar3 != (int *)0x0)) &&
     (iVar1 = (**(code **)(*piVar3 + 0x18))(), iVar1 == -1)) {
    iVar1 = *(int *)(*local_14 + -0xc) + (int)local_14;
    FUN_00798e64(iVar1,*(uint *)(iVar1 + 0x14) | 1);
    return param_1;
  }
  return param_1;
}

// ---- FUN_007bb704  @ 0x7bb704
int * FUN_007bb704(int *param_1,undefined4 param_2)

{
  int iVar1;
  int iVar2;
  int *piVar3;
  char local_18 [4];
  int *local_14;
  
  FUN_007bb58c(local_18,param_1);
  if (local_18[0] != '\0') {
    iVar1 = *(int *)((int)param_1 + *(int *)(*param_1 + -0xc) + 0x78);
    if (*(undefined1 **)(iVar1 + 0x14) < *(undefined1 **)(iVar1 + 0x18)) {
      **(undefined1 **)(iVar1 + 0x14) = (char)param_2;
      *(int *)(iVar1 + 0x14) = *(int *)(iVar1 + 0x14) + 1;
    }
    else {
      iVar1 = FUN_002e7160(iVar1,param_2);
      if (iVar1 == -1) {
        iVar1 = *(int *)(*param_1 + -0xc) + (int)param_1;
        FUN_00798e64(iVar1,*(uint *)(iVar1 + 0x14) | 1);
      }
    }
  }
  piVar3 = local_14;
  iVar1 = *(int *)(*local_14 + -0xc);
  if ((((*(int *)((int)local_14 + iVar1 + 0xc) << 0x12 < 0) &&
       (iVar2 = std::uncaught_exception(), iVar2 == 0)) &&
      (piVar3 = *(int **)((int)piVar3 + iVar1 + 0x78), piVar3 != (int *)0x0)) &&
     (iVar1 = (**(code **)(*piVar3 + 0x18))(), iVar1 == -1)) {
    iVar1 = *(int *)(*local_14 + -0xc) + (int)local_14;
    FUN_00798e64(iVar1,*(uint *)(iVar1 + 0x14) | 1);
    return param_1;
  }
  return param_1;
}

// ---- FUN_007bb7f8  @ 0x7bb7f8
int * FUN_007bb7f8(int *param_1,undefined4 param_2,int param_3)

{
  int *piVar1;
  int iVar2;
  int iVar3;
  char local_20 [4];
  int *local_1c;
  
  FUN_007bb58c(local_20,param_1);
  if ((local_20[0] != '\0') &&
     (piVar1 = *(int **)((int)param_1 + *(int *)(*param_1 + -0xc) + 0x78),
     iVar2 = (**(code **)(*piVar1 + 0x30))(piVar1,param_2,param_3), param_3 != iVar2)) {
    iVar2 = *(int *)(*param_1 + -0xc) + (int)param_1;
    FUN_00798e64(iVar2,*(uint *)(iVar2 + 0x14) | 1);
  }
  piVar1 = local_1c;
  iVar2 = *(int *)(*local_1c + -0xc);
  if ((((*(int *)((int)local_1c + iVar2 + 0xc) << 0x12 < 0) &&
       (iVar3 = std::uncaught_exception(), iVar3 == 0)) &&
      (piVar1 = *(int **)((int)piVar1 + iVar2 + 0x78), piVar1 != (int *)0x0)) &&
     (iVar2 = (**(code **)(*piVar1 + 0x18))(), iVar2 == -1)) {
    iVar2 = *(int *)(*local_1c + -0xc) + (int)local_1c;
    FUN_00798e64(iVar2,*(uint *)(iVar2 + 0x14) | 1);
    return param_1;
  }
  return param_1;
}

// ---- FUN_007bb8e4  @ 0x7bb8e4
void FUN_007bb8e4(int *param_1)

{
  undefined4 uVar1;
  int *piVar2;
  
  piVar2 = *(int **)((int)param_1 + *(int *)(*param_1 + -0xc) + 0x7c);
  if (piVar2 == (int *)0x0) {
                    /* WARNING: Subroutine does not return */
    FUN_007c4874();
  }
  if ((char)piVar2[7] != '\0') {
    FUN_007bb704(param_1,*(undefined1 *)((int)piVar2 + 0x27));
    FUN_007bb250();
    return;
  }
  FUN_007af570(piVar2);
  uVar1 = (**(code **)(*piVar2 + 0x18))(piVar2,10);
  FUN_007bb704(param_1,uVar1);
  FUN_007bb250();
  return;
}

// ---- FUN_007bb93c  @ 0x7bb93c
int * FUN_007bb93c(int *param_1,undefined1 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined1 uVar1;
  undefined4 extraout_r2;
  int iVar2;
  int *piVar3;
  
  iVar2 = *(int *)(*param_1 + -0xc);
  if (*(char *)((int)param_1 + iVar2 + 0x75) == '\0') {
    piVar3 = *(int **)((int)param_1 + iVar2 + 0x7c);
    if (piVar3 == (int *)0x0) {
                    /* WARNING: Subroutine does not return */
      FUN_007c4874();
    }
    if ((char)piVar3[7] == '\0') {
      FUN_007af570(piVar3);
      uVar1 = (**(code **)(*piVar3 + 0x18))
                        (piVar3,0x20,extraout_r2,*(code **)(*piVar3 + 0x18),param_4);
    }
    else {
      uVar1 = *(undefined1 *)((int)piVar3 + 0x3d);
    }
    *(undefined1 *)((int)param_1 + iVar2 + 0x74) = uVar1;
    *(undefined1 *)((int)param_1 + iVar2 + 0x75) = 1;
  }
  *(undefined1 *)((int)param_1 + iVar2 + 0x74) = param_2;
  return param_1;
}

// ---- FUN_007bb9f8  @ 0x7bb9f8
int * FUN_007bb9f8(int *param_1,undefined4 param_2,int param_3)

{
  uint uVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  int *piVar5;
  int iVar6;
  bool bVar7;
  char local_30 [4];
  int *local_2c;
  
  FUN_007bb58c(local_30,param_1);
  if (local_30[0] == '\0') goto LAB_007bbada;
  iVar4 = *(int *)(*param_1 + -0xc) + (int)param_1;
  iVar6 = *(int *)(iVar4 + 8);
  if (param_3 < iVar6) {
    bVar7 = (*(uint *)(iVar4 + 0xc) & 0xb0) != 0x20;
    if (bVar7) {
      iVar2 = iVar6 - param_3;
      if (*(char *)(iVar4 + 0x75) == '\0') {
        piVar5 = *(int **)(iVar4 + 0x7c);
        if (piVar5 == (int *)0x0) {
                    /* WARNING: Subroutine does not return */
          FUN_007c4874();
        }
        if ((char)piVar5[7] == '\0') {
          FUN_007af570(piVar5);
          uVar1 = (**(code **)(*piVar5 + 0x18))(piVar5,0x20);
        }
        else {
          uVar1 = (uint)*(byte *)((int)piVar5 + 0x3d);
        }
        *(char *)(iVar4 + 0x74) = (char)uVar1;
        iVar3 = *param_1;
        *(undefined1 *)(iVar4 + 0x75) = 1;
        iVar4 = *(int *)(iVar3 + -0xc) + (int)param_1;
      }
      else {
        uVar1 = (uint)*(byte *)(iVar4 + 0x74);
      }
      if (0 < iVar2) {
        do {
          iVar4 = *(int *)(iVar4 + 0x78);
          if (*(undefined1 **)(iVar4 + 0x14) < *(undefined1 **)(iVar4 + 0x18)) {
            **(undefined1 **)(iVar4 + 0x14) = (char)uVar1;
            *(int *)(iVar4 + 0x14) = *(int *)(iVar4 + 0x14) + 1;
          }
          else {
            iVar4 = FUN_002e7160(iVar4,uVar1);
            if (iVar4 == -1) {
              iVar4 = *(int *)(*param_1 + -0xc) + (int)param_1;
              FUN_00798e64(iVar4,*(uint *)(iVar4 + 0x14) | 1);
              iVar4 = *(int *)(*param_1 + -0xc) + (int)param_1;
              break;
            }
          }
          iVar2 = iVar2 + -1;
          iVar4 = *(int *)(*param_1 + -0xc) + (int)param_1;
        } while (iVar2 != 0);
      }
    }
    if (*(int *)(iVar4 + 0x14) == 0) {
      iVar4 = (**(code **)(**(int **)(iVar4 + 0x78) + 0x30))
                        (*(int **)(iVar4 + 0x78),param_2,param_3);
      iVar2 = *param_1;
      if (param_3 != iVar4) {
        iVar4 = *(int *)(iVar2 + -0xc) + (int)param_1;
        FUN_00798e64(iVar4,*(uint *)(iVar4 + 0x14) | 1);
        iVar2 = *param_1;
      }
      iVar4 = *(int *)(iVar2 + -0xc) + (int)param_1;
    }
    if ((!bVar7) && (*(int *)(iVar4 + 0x14) == 0)) {
      iVar6 = iVar6 - param_3;
      if (*(char *)(iVar4 + 0x75) == '\0') {
        piVar5 = *(int **)(iVar4 + 0x7c);
        if (piVar5 == (int *)0x0) {
                    /* WARNING: Subroutine does not return */
          FUN_007c4874();
        }
        if ((char)piVar5[7] == '\0') {
          FUN_007af570(piVar5);
          uVar1 = (**(code **)(*piVar5 + 0x18))(piVar5,0x20);
        }
        else {
          uVar1 = (uint)*(byte *)((int)piVar5 + 0x3d);
        }
        *(char *)(iVar4 + 0x74) = (char)uVar1;
        iVar2 = *param_1;
        *(undefined1 *)(iVar4 + 0x75) = 1;
        iVar4 = *(int *)(iVar2 + -0xc) + (int)param_1;
      }
      else {
        uVar1 = (uint)*(byte *)(iVar4 + 0x74);
      }
      if (0 < iVar6) {
        while( true ) {
          iVar4 = *(int *)(iVar4 + 0x78);
          if (*(undefined1 **)(iVar4 + 0x14) < *(undefined1 **)(iVar4 + 0x18)) {
            **(undefined1 **)(iVar4 + 0x14) = (char)uVar1;
            *(int *)(iVar4 + 0x14) = *(int *)(iVar4 + 0x14) + 1;
          }
          else {
            iVar4 = FUN_002e7160(iVar4,uVar1);
            if (iVar4 == -1) {
              iVar2 = *param_1;
              goto LAB_007bbabe;
            }
          }
          iVar6 = iVar6 + -1;
          iVar2 = *param_1;
          if (iVar6 == 0) break;
          iVar4 = *(int *)(iVar2 + -0xc) + (int)param_1;
        }
        goto LAB_007bbad0;
      }
    }
  }
  else {
    iVar4 = (**(code **)(**(int **)(iVar4 + 0x78) + 0x30))(*(int **)(iVar4 + 0x78),param_2,param_3);
    iVar2 = *param_1;
    if (param_3 != iVar4) {
LAB_007bbabe:
      iVar4 = *(int *)(iVar2 + -0xc) + (int)param_1;
      FUN_00798e64(iVar4,*(uint *)(iVar4 + 0x14) | 1);
      iVar2 = *param_1;
    }
LAB_007bbad0:
    iVar4 = *(int *)(iVar2 + -0xc) + (int)param_1;
  }
  *(undefined4 *)(iVar4 + 8) = 0;
LAB_007bbada:
  piVar5 = local_2c;
  iVar4 = *(int *)(*local_2c + -0xc);
  if ((((*(int *)((int)local_2c + iVar4 + 0xc) << 0x12 < 0) &&
       (iVar6 = std::uncaught_exception(), iVar6 == 0)) &&
      (piVar5 = *(int **)((int)piVar5 + iVar4 + 0x78), piVar5 != (int *)0x0)) &&
     (iVar4 = (**(code **)(*piVar5 + 0x18))(), iVar4 == -1)) {
    iVar4 = *(int *)(*local_2c + -0xc) + (int)local_2c;
    FUN_00798e64(iVar4,*(uint *)(iVar4 + 0x14) | 1);
    return param_1;
  }
  return param_1;
}

// ---- FUN_007bbc88  @ 0x7bbc88
void FUN_007bbc88(undefined4 param_1,undefined1 param_2)

{
  undefined1 local_9 [5];
  
  local_9[0] = param_2;
  FUN_007bb9f8(param_1,local_9,1);
  return;
}

// ---- FUN_007bbca0  @ 0x7bbca0
void FUN_007bbca0(undefined4 param_1,undefined1 param_2)

{
  undefined1 local_9 [5];
  
  local_9[0] = param_2;
  FUN_007bb9f8(param_1,local_9,1);
  return;
}

// ---- FUN_007bbcb8  @ 0x7bbcb8
void FUN_007bbcb8(undefined4 param_1,undefined1 param_2)

{
  undefined1 local_9 [5];
  
  local_9[0] = param_2;
  FUN_007bb9f8(param_1,local_9,1);
  return;
}

// ---- FUN_007bbcd0  @ 0x7bbcd0
int * FUN_007bbcd0(int *param_1,char *param_2,undefined4 param_3,undefined4 param_4)

{
  size_t sVar1;
  int iVar2;
  
  if (param_2 != (char *)0x0) {
    sVar1 = strlen(param_2);
    FUN_007bb9f8(param_1,param_2,sVar1);
    return param_1;
  }
  iVar2 = *(int *)(*param_1 + -0xc) + (int)param_1;
  FUN_00798e64(iVar2,*(uint *)(iVar2 + 0x14) | 1,param_3,*param_1,param_4);
  return param_1;
}

// ---- FUN_007bbd04  @ 0x7bbd04
int * FUN_007bbd04(int *param_1,char *param_2,undefined4 param_3,undefined4 param_4)

{
  size_t sVar1;
  int iVar2;
  
  if (param_2 != (char *)0x0) {
    sVar1 = strlen(param_2);
    FUN_007bb9f8(param_1,param_2,sVar1);
    return param_1;
  }
  iVar2 = *(int *)(*param_1 + -0xc) + (int)param_1;
  FUN_00798e64(iVar2,*(uint *)(iVar2 + 0x14) | 1,param_3,*param_1,param_4);
  return param_1;
}

// ---- FUN_007bbd38  @ 0x7bbd38
int * FUN_007bbd38(int *param_1,char *param_2,undefined4 param_3,undefined4 param_4)

{
  size_t sVar1;
  int iVar2;
  
  if (param_2 != (char *)0x0) {
    sVar1 = strlen(param_2);
    FUN_007bb9f8(param_1,param_2,sVar1);
    return param_1;
  }
  iVar2 = *(int *)(*param_1 + -0xc) + (int)param_1;
  FUN_00798e64(iVar2,*(uint *)(iVar2 + 0x14) | 1,param_3,*param_1,param_4);
  return param_1;
}

// ---- FUN_007bbd6c  @ 0x7bbd6c
int * FUN_007bbd6c(int *param_1,undefined4 param_2)

{
  uint uVar1;
  int iVar2;
  int iVar3;
  int *piVar4;
  uint uVar5;
  int *piVar6;
  char cVar7;
  char local_40 [4];
  int *local_3c;
  undefined1 auStack_38 [4];
  char local_34;
  uint local_30;
  undefined4 local_2c;
  
  FUN_007bb58c(local_40,param_1);
  if (local_40[0] != '\0') {
    iVar3 = *(int *)(*param_1 + -0xc) + (int)param_1;
    piVar4 = *(int **)(iVar3 + 0x80);
    if (piVar4 == (int *)0x0) {
                    /* WARNING: Subroutine does not return */
      FUN_007c4874();
    }
    uVar5 = *(uint *)(iVar3 + 0x78);
    cVar7 = '\x01' - (char)uVar5;
    if (1 < uVar5) {
      cVar7 = '\0';
    }
    if (*(char *)(iVar3 + 0x75) == '\0') {
      piVar6 = *(int **)(iVar3 + 0x7c);
      if (piVar6 == (int *)0x0) {
                    /* WARNING: Subroutine does not return */
        FUN_007c4874();
      }
      if ((char)piVar6[7] == '\0') {
        FUN_007af570(piVar6);
        uVar1 = (**(code **)(*piVar6 + 0x18))(piVar6,0x20);
      }
      else {
        uVar1 = (uint)*(byte *)((int)piVar6 + 0x3d);
      }
      *(char *)(iVar3 + 0x74) = (char)uVar1;
      *(undefined1 *)(iVar3 + 0x75) = 1;
    }
    else {
      uVar1 = (uint)*(byte *)(iVar3 + 0x74);
    }
    local_2c = CONCAT31(local_2c._1_3_,cVar7);
    local_30 = uVar5;
    (**(code **)(*piVar4 + 0xc))(auStack_38,piVar4,uVar5,local_2c,iVar3,uVar1,param_2);
    if (local_34 != '\0') {
      iVar3 = *(int *)(*param_1 + -0xc) + (int)param_1;
      FUN_00798e64(iVar3,*(uint *)(iVar3 + 0x14) | 1);
    }
  }
  piVar4 = local_3c;
  iVar3 = *(int *)(*local_3c + -0xc);
  if ((((*(int *)((int)local_3c + iVar3 + 0xc) << 0x12 < 0) &&
       (iVar2 = std::uncaught_exception(), iVar2 == 0)) &&
      (piVar4 = *(int **)((int)piVar4 + iVar3 + 0x78), piVar4 != (int *)0x0)) &&
     (iVar3 = (**(code **)(*piVar4 + 0x18))(), iVar3 == -1)) {
    iVar3 = *(int *)(*local_3c + -0xc) + (int)local_3c;
    FUN_00798e64(iVar3,*(uint *)(iVar3 + 0x14) | 1);
    return param_1;
  }
  return param_1;
}

// ---- thunk_FUN_007bbd6c  @ 0x7bbf04
int * thunk_FUN_007bbd6c(int *param_1,undefined4 param_2)

{
  uint uVar1;
  int iVar2;
  int iVar3;
  int *piVar4;
  uint uVar5;
  int *piVar6;
  char cVar7;
  char acStack_40 [4];
  int *piStack_3c;
  undefined1 auStack_38 [4];
  char cStack_34;
  uint uStack_30;
  undefined4 uStack_2c;
  
  FUN_007bb58c(acStack_40,param_1);
  if (acStack_40[0] != '\0') {
    iVar3 = *(int *)(*param_1 + -0xc) + (int)param_1;
    piVar4 = *(int **)(iVar3 + 0x80);
    if (piVar4 == (int *)0x0) {
                    /* WARNING: Subroutine does not return */
      FUN_007c4874();
    }
    uVar5 = *(uint *)(iVar3 + 0x78);
    cVar7 = '\x01' - (char)uVar5;
    if (1 < uVar5) {
      cVar7 = '\0';
    }
    if (*(char *)(iVar3 + 0x75) == '\0') {
      piVar6 = *(int **)(iVar3 + 0x7c);
      if (piVar6 == (int *)0x0) {
                    /* WARNING: Subroutine does not return */
        FUN_007c4874();
      }
      if ((char)piVar6[7] == '\0') {
        FUN_007af570(piVar6);
        uVar1 = (**(code **)(*piVar6 + 0x18))(piVar6,0x20);
      }
      else {
        uVar1 = (uint)*(byte *)((int)piVar6 + 0x3d);
      }
      *(char *)(iVar3 + 0x74) = (char)uVar1;
      *(undefined1 *)(iVar3 + 0x75) = 1;
    }
    else {
      uVar1 = (uint)*(byte *)(iVar3 + 0x74);
    }
    uStack_2c = CONCAT31(uStack_2c._1_3_,cVar7);
    uStack_30 = uVar5;
    (**(code **)(*piVar4 + 0xc))(auStack_38,piVar4,uVar5,uStack_2c,iVar3,uVar1,param_2);
    if (cStack_34 != '\0') {
      iVar3 = *(int *)(*param_1 + -0xc) + (int)param_1;
      FUN_00798e64(iVar3,*(uint *)(iVar3 + 0x14) | 1);
    }
  }
  piVar4 = piStack_3c;
  iVar3 = *(int *)(*piStack_3c + -0xc);
  if ((((*(int *)((int)piStack_3c + iVar3 + 0xc) << 0x12 < 0) &&
       (iVar2 = std::uncaught_exception(), iVar2 == 0)) &&
      (piVar4 = *(int **)((int)piVar4 + iVar3 + 0x78), piVar4 != (int *)0x0)) &&
     (iVar3 = (**(code **)(*piVar4 + 0x18))(), iVar3 == -1)) {
    iVar3 = *(int *)(*piStack_3c + -0xc) + (int)piStack_3c;
    FUN_00798e64(iVar3,*(uint *)(iVar3 + 0x14) | 1);
    return param_1;
  }
  return param_1;
}

// ---- FUN_007bbf08  @ 0x7bbf08
int * FUN_007bbf08(int *param_1,undefined4 param_2)

{
  uint uVar1;
  int iVar2;
  int iVar3;
  int *piVar4;
  uint uVar5;
  int *piVar6;
  char cVar7;
  char local_40 [4];
  int *local_3c;
  undefined1 auStack_38 [4];
  char local_34;
  uint local_30;
  undefined4 local_2c;
  
  FUN_007bb58c(local_40,param_1);
  if (local_40[0] != '\0') {
    iVar3 = *(int *)(*param_1 + -0xc) + (int)param_1;
    piVar4 = *(int **)(iVar3 + 0x80);
    if (piVar4 == (int *)0x0) {
                    /* WARNING: Subroutine does not return */
      FUN_007c4874();
    }
    uVar5 = *(uint *)(iVar3 + 0x78);
    cVar7 = '\x01' - (char)uVar5;
    if (1 < uVar5) {
      cVar7 = '\0';
    }
    if (*(char *)(iVar3 + 0x75) == '\0') {
      piVar6 = *(int **)(iVar3 + 0x7c);
      if (piVar6 == (int *)0x0) {
                    /* WARNING: Subroutine does not return */
        FUN_007c4874();
      }
      if ((char)piVar6[7] == '\0') {
        FUN_007af570(piVar6);
        uVar1 = (**(code **)(*piVar6 + 0x18))(piVar6,0x20);
      }
      else {
        uVar1 = (uint)*(byte *)((int)piVar6 + 0x3d);
      }
      *(char *)(iVar3 + 0x74) = (char)uVar1;
      *(undefined1 *)(iVar3 + 0x75) = 1;
    }
    else {
      uVar1 = (uint)*(byte *)(iVar3 + 0x74);
    }
    local_2c = CONCAT31(local_2c._1_3_,cVar7);
    local_30 = uVar5;
    (**(code **)(*piVar4 + 0x10))(auStack_38,piVar4,uVar5,local_2c,iVar3,uVar1,param_2);
    if (local_34 != '\0') {
      iVar3 = *(int *)(*param_1 + -0xc) + (int)param_1;
      FUN_00798e64(iVar3,*(uint *)(iVar3 + 0x14) | 1);
    }
  }
  piVar4 = local_3c;
  iVar3 = *(int *)(*local_3c + -0xc);
  if ((((*(int *)((int)local_3c + iVar3 + 0xc) << 0x12 < 0) &&
       (iVar2 = std::uncaught_exception(), iVar2 == 0)) &&
      (piVar4 = *(int **)((int)piVar4 + iVar3 + 0x78), piVar4 != (int *)0x0)) &&
     (iVar3 = (**(code **)(*piVar4 + 0x18))(), iVar3 == -1)) {
    iVar3 = *(int *)(*local_3c + -0xc) + (int)local_3c;
    FUN_00798e64(iVar3,*(uint *)(iVar3 + 0x14) | 1);
    return param_1;
  }
  return param_1;
}

// ---- thunk_FUN_007bbf08  @ 0x7bc078
int * thunk_FUN_007bbf08(int *param_1,undefined4 param_2)

{
  uint uVar1;
  int iVar2;
  int iVar3;
  int *piVar4;
  uint uVar5;
  int *piVar6;
  char cVar7;
  char acStack_40 [4];
  int *piStack_3c;
  undefined1 auStack_38 [4];
  char cStack_34;
  uint uStack_30;
  undefined4 uStack_2c;
  
  FUN_007bb58c(acStack_40,param_1);
  if (acStack_40[0] != '\0') {
    iVar3 = *(int *)(*param_1 + -0xc) + (int)param_1;
    piVar4 = *(int **)(iVar3 + 0x80);
    if (piVar4 == (int *)0x0) {
                    /* WARNING: Subroutine does not return */
      FUN_007c4874();
    }
    uVar5 = *(uint *)(iVar3 + 0x78);
    cVar7 = '\x01' - (char)uVar5;
    if (1 < uVar5) {
      cVar7 = '\0';
    }
    if (*(char *)(iVar3 + 0x75) == '\0') {
      piVar6 = *(int **)(iVar3 + 0x7c);
      if (piVar6 == (int *)0x0) {
                    /* WARNING: Subroutine does not return */
        FUN_007c4874();
      }
      if ((char)piVar6[7] == '\0') {
        FUN_007af570(piVar6);
        uVar1 = (**(code **)(*piVar6 + 0x18))(piVar6,0x20);
      }
      else {
        uVar1 = (uint)*(byte *)((int)piVar6 + 0x3d);
      }
      *(char *)(iVar3 + 0x74) = (char)uVar1;
      *(undefined1 *)(iVar3 + 0x75) = 1;
    }
    else {
      uVar1 = (uint)*(byte *)(iVar3 + 0x74);
    }
    uStack_2c = CONCAT31(uStack_2c._1_3_,cVar7);
    uStack_30 = uVar5;
    (**(code **)(*piVar4 + 0x10))(auStack_38,piVar4,uVar5,uStack_2c,iVar3,uVar1,param_2);
    if (cStack_34 != '\0') {
      iVar3 = *(int *)(*param_1 + -0xc) + (int)param_1;
      FUN_00798e64(iVar3,*(uint *)(iVar3 + 0x14) | 1);
    }
  }
  piVar4 = piStack_3c;
  iVar3 = *(int *)(*piStack_3c + -0xc);
  if ((((*(int *)((int)piStack_3c + iVar3 + 0xc) << 0x12 < 0) &&
       (iVar2 = std::uncaught_exception(), iVar2 == 0)) &&
      (piVar4 = *(int **)((int)piVar4 + iVar3 + 0x78), piVar4 != (int *)0x0)) &&
     (iVar3 = (**(code **)(*piVar4 + 0x18))(), iVar3 == -1)) {
    iVar3 = *(int *)(*piStack_3c + -0xc) + (int)piStack_3c;
    FUN_00798e64(iVar3,*(uint *)(iVar3 + 0x14) | 1);
    return param_1;
  }
  return param_1;
}

// ---- FUN_007bc07c  @ 0x7bc07c
int * FUN_007bc07c(int *param_1,undefined4 param_2)

{
  uint uVar1;
  int iVar2;
  int iVar3;
  int *piVar4;
  uint uVar5;
  int *piVar6;
  char cVar7;
  char local_40 [4];
  int *local_3c;
  undefined1 auStack_38 [4];
  char local_34;
  uint local_30;
  undefined4 local_2c;
  
  FUN_007bb58c(local_40,param_1);
  if (local_40[0] != '\0') {
    iVar3 = *(int *)(*param_1 + -0xc) + (int)param_1;
    piVar4 = *(int **)(iVar3 + 0x80);
    if (piVar4 == (int *)0x0) {
                    /* WARNING: Subroutine does not return */
      FUN_007c4874();
    }
    uVar5 = *(uint *)(iVar3 + 0x78);
    cVar7 = '\x01' - (char)uVar5;
    if (1 < uVar5) {
      cVar7 = '\0';
    }
    if (*(char *)(iVar3 + 0x75) == '\0') {
      piVar6 = *(int **)(iVar3 + 0x7c);
      if (piVar6 == (int *)0x0) {
                    /* WARNING: Subroutine does not return */
        FUN_007c4874();
      }
      if ((char)piVar6[7] == '\0') {
        FUN_007af570(piVar6);
        uVar1 = (**(code **)(*piVar6 + 0x18))(piVar6,0x20);
      }
      else {
        uVar1 = (uint)*(byte *)((int)piVar6 + 0x3d);
      }
      *(char *)(iVar3 + 0x74) = (char)uVar1;
      *(undefined1 *)(iVar3 + 0x75) = 1;
    }
    else {
      uVar1 = (uint)*(byte *)(iVar3 + 0x74);
    }
    local_2c = CONCAT31(local_2c._1_3_,cVar7);
    local_30 = uVar5;
    (**(code **)(*piVar4 + 8))(auStack_38,piVar4,uVar5,local_2c,iVar3,uVar1,param_2);
    if (local_34 != '\0') {
      iVar3 = *(int *)(*param_1 + -0xc) + (int)param_1;
      FUN_00798e64(iVar3,*(uint *)(iVar3 + 0x14) | 1);
    }
  }
  piVar4 = local_3c;
  iVar3 = *(int *)(*local_3c + -0xc);
  if ((((*(int *)((int)local_3c + iVar3 + 0xc) << 0x12 < 0) &&
       (iVar2 = std::uncaught_exception(), iVar2 == 0)) &&
      (piVar4 = *(int **)((int)piVar4 + iVar3 + 0x78), piVar4 != (int *)0x0)) &&
     (iVar3 = (**(code **)(*piVar4 + 0x18))(), iVar3 == -1)) {
    iVar3 = *(int *)(*local_3c + -0xc) + (int)local_3c;
    FUN_00798e64(iVar3,*(uint *)(iVar3 + 0x14) | 1);
    return param_1;
  }
  return param_1;
}

// ---- thunk_FUN_007bc07c  @ 0x7bc1e4
int * thunk_FUN_007bc07c(int *param_1,undefined4 param_2)

{
  uint uVar1;
  int iVar2;
  int iVar3;
  int *piVar4;
  uint uVar5;
  int *piVar6;
  char cVar7;
  char acStack_40 [4];
  int *piStack_3c;
  undefined1 auStack_38 [4];
  char cStack_34;
  uint uStack_30;
  undefined4 uStack_2c;
  
  FUN_007bb58c(acStack_40,param_1);
  if (acStack_40[0] != '\0') {
    iVar3 = *(int *)(*param_1 + -0xc) + (int)param_1;
    piVar4 = *(int **)(iVar3 + 0x80);
    if (piVar4 == (int *)0x0) {
                    /* WARNING: Subroutine does not return */
      FUN_007c4874();
    }
    uVar5 = *(uint *)(iVar3 + 0x78);
    cVar7 = '\x01' - (char)uVar5;
    if (1 < uVar5) {
      cVar7 = '\0';
    }
    if (*(char *)(iVar3 + 0x75) == '\0') {
      piVar6 = *(int **)(iVar3 + 0x7c);
      if (piVar6 == (int *)0x0) {
                    /* WARNING: Subroutine does not return */
        FUN_007c4874();
      }
      if ((char)piVar6[7] == '\0') {
        FUN_007af570(piVar6);
        uVar1 = (**(code **)(*piVar6 + 0x18))(piVar6,0x20);
      }
      else {
        uVar1 = (uint)*(byte *)((int)piVar6 + 0x3d);
      }
      *(char *)(iVar3 + 0x74) = (char)uVar1;
      *(undefined1 *)(iVar3 + 0x75) = 1;
    }
    else {
      uVar1 = (uint)*(byte *)(iVar3 + 0x74);
    }
    uStack_2c = CONCAT31(uStack_2c._1_3_,cVar7);
    uStack_30 = uVar5;
    (**(code **)(*piVar4 + 8))(auStack_38,piVar4,uVar5,uStack_2c,iVar3,uVar1,param_2);
    if (cStack_34 != '\0') {
      iVar3 = *(int *)(*param_1 + -0xc) + (int)param_1;
      FUN_00798e64(iVar3,*(uint *)(iVar3 + 0x14) | 1);
    }
  }
  piVar4 = piStack_3c;
  iVar3 = *(int *)(*piStack_3c + -0xc);
  if ((((*(int *)((int)piStack_3c + iVar3 + 0xc) << 0x12 < 0) &&
       (iVar2 = std::uncaught_exception(), iVar2 == 0)) &&
      (piVar4 = *(int **)((int)piVar4 + iVar3 + 0x78), piVar4 != (int *)0x0)) &&
     (iVar3 = (**(code **)(*piVar4 + 0x18))(), iVar3 == -1)) {
    iVar3 = *(int *)(*piStack_3c + -0xc) + (int)piStack_3c;
    FUN_00798e64(iVar3,*(uint *)(iVar3 + 0x14) | 1);
    return param_1;
  }
  return param_1;
}

// ---- FUN_007bc1e8  @ 0x7bc1e8
int * FUN_007bc1e8(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  uint uVar1;
  int iVar2;
  char cVar3;
  int iVar4;
  int *piVar5;
  uint uVar6;
  int *piVar7;
  char local_40 [4];
  int *local_3c;
  undefined1 auStack_38 [4];
  char local_34;
  uint local_30;
  undefined4 local_2c;
  
  FUN_007bb58c(local_40,param_1);
  if (local_40[0] != '\0') {
    iVar4 = *(int *)(*param_1 + -0xc) + (int)param_1;
    piVar5 = *(int **)(iVar4 + 0x80);
    if (piVar5 == (int *)0x0) {
                    /* WARNING: Subroutine does not return */
      FUN_007c4874();
    }
    uVar6 = *(uint *)(iVar4 + 0x78);
    cVar3 = '\x01' - (char)uVar6;
    if (1 < uVar6) {
      cVar3 = '\0';
    }
    if (*(char *)(iVar4 + 0x75) == '\0') {
      piVar7 = *(int **)(iVar4 + 0x7c);
      if (piVar7 == (int *)0x0) {
                    /* WARNING: Subroutine does not return */
        FUN_007c4874();
      }
      if ((char)piVar7[7] == '\0') {
        FUN_007af570(piVar7);
        uVar1 = (**(code **)(*piVar7 + 0x18))(piVar7,0x20);
      }
      else {
        uVar1 = (uint)*(byte *)((int)piVar7 + 0x3d);
      }
      *(char *)(iVar4 + 0x74) = (char)uVar1;
      *(undefined1 *)(iVar4 + 0x75) = 1;
    }
    else {
      uVar1 = (uint)*(byte *)(iVar4 + 0x74);
    }
    local_2c = CONCAT31(local_2c._1_3_,cVar3);
    local_30 = uVar6;
    (**(code **)(*piVar5 + 0x14))(auStack_38,piVar5,uVar6,local_2c,iVar4,uVar1,param_3,param_4);
    if (local_34 != '\0') {
      iVar4 = *(int *)(*param_1 + -0xc) + (int)param_1;
      FUN_00798e64(iVar4,*(uint *)(iVar4 + 0x14) | 1);
    }
  }
  piVar5 = local_3c;
  iVar4 = *(int *)(*local_3c + -0xc);
  if ((((*(int *)((int)local_3c + iVar4 + 0xc) << 0x12 < 0) &&
       (iVar2 = std::uncaught_exception(), iVar2 == 0)) &&
      (piVar5 = *(int **)((int)piVar5 + iVar4 + 0x78), piVar5 != (int *)0x0)) &&
     (iVar4 = (**(code **)(*piVar5 + 0x18))(), iVar4 == -1)) {
    iVar4 = *(int *)(*local_3c + -0xc) + (int)local_3c;
    FUN_00798e64(iVar4,*(uint *)(iVar4 + 0x14) | 1);
    return param_1;
  }
  return param_1;
}

// ---- FUN_007bc360  @ 0x7bc360
int * FUN_007bc360(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  uint uVar1;
  int iVar2;
  char cVar3;
  int iVar4;
  int *piVar5;
  uint uVar6;
  int *piVar7;
  char local_40 [4];
  int *local_3c;
  undefined1 auStack_38 [4];
  char local_34;
  uint local_30;
  undefined4 local_2c;
  
  FUN_007bb58c(local_40,param_1);
  if (local_40[0] != '\0') {
    iVar4 = *(int *)(*param_1 + -0xc) + (int)param_1;
    piVar5 = *(int **)(iVar4 + 0x80);
    if (piVar5 == (int *)0x0) {
                    /* WARNING: Subroutine does not return */
      FUN_007c4874();
    }
    uVar6 = *(uint *)(iVar4 + 0x78);
    cVar3 = '\x01' - (char)uVar6;
    if (1 < uVar6) {
      cVar3 = '\0';
    }
    if (*(char *)(iVar4 + 0x75) == '\0') {
      piVar7 = *(int **)(iVar4 + 0x7c);
      if (piVar7 == (int *)0x0) {
                    /* WARNING: Subroutine does not return */
        FUN_007c4874();
      }
      if ((char)piVar7[7] == '\0') {
        FUN_007af570(piVar7);
        uVar1 = (**(code **)(*piVar7 + 0x18))(piVar7,0x20);
      }
      else {
        uVar1 = (uint)*(byte *)((int)piVar7 + 0x3d);
      }
      *(char *)(iVar4 + 0x74) = (char)uVar1;
      *(undefined1 *)(iVar4 + 0x75) = 1;
    }
    else {
      uVar1 = (uint)*(byte *)(iVar4 + 0x74);
    }
    local_2c = CONCAT31(local_2c._1_3_,cVar3);
    local_30 = uVar6;
    (**(code **)(*piVar5 + 0x18))(auStack_38,piVar5,uVar6,local_2c,iVar4,uVar1,param_3,param_4);
    if (local_34 != '\0') {
      iVar4 = *(int *)(*param_1 + -0xc) + (int)param_1;
      FUN_00798e64(iVar4,*(uint *)(iVar4 + 0x14) | 1);
    }
  }
  piVar5 = local_3c;
  iVar4 = *(int *)(*local_3c + -0xc);
  if ((((*(int *)((int)local_3c + iVar4 + 0xc) << 0x12 < 0) &&
       (iVar2 = std::uncaught_exception(), iVar2 == 0)) &&
      (piVar5 = *(int **)((int)piVar5 + iVar4 + 0x78), piVar5 != (int *)0x0)) &&
     (iVar4 = (**(code **)(*piVar5 + 0x18))(), iVar4 == -1)) {
    iVar4 = *(int *)(*local_3c + -0xc) + (int)local_3c;
    FUN_00798e64(iVar4,*(uint *)(iVar4 + 0x14) | 1);
    return param_1;
  }
  return param_1;
}

// ---- FUN_007bc9e0  @ 0x7bc9e0
int * FUN_007bc9e0(int *param_1,code *param_2)

{
  (*param_2)(*(int *)(*param_1 + -0xc) + (int)param_1);
  return param_1;
}

// ---- FUN_007bc9f4  @ 0x7bc9f4
int * FUN_007bc9f4(int *param_1,code *param_2)

{
  (*param_2)(*(int *)(*param_1 + -0xc) + (int)param_1);
  return param_1;
}

// ---- FUN_007bca08  @ 0x7bca08
void FUN_007bca08(int *param_1,undefined4 param_2,int param_3)

{
  int iVar1;
  
  iVar1 = (**(code **)(**(int **)((int)param_1 + *(int *)(*param_1 + -0xc) + 0x7c) + 0x30))();
  if (param_3 != iVar1) {
    iVar1 = *(int *)(*param_1 + -0xc) + (int)param_1;
    FUN_007992f0(iVar1,*(uint *)(iVar1 + 0x14) | 1);
    return;
  }
  return;
}

// ---- FUN_007bca3c  @ 0x7bca3c
int * FUN_007bca3c(int *param_1)

{
  int *piVar1;
  int iVar2;
  
  piVar1 = *(int **)((int)param_1 + *(int *)(*param_1 + -0xc) + 0x7c);
  if ((piVar1 != (int *)0x0) && (iVar2 = (**(code **)(*piVar1 + 0x18))(), iVar2 == -1)) {
    iVar2 = *(int *)(*param_1 + -0xc) + (int)param_1;
    FUN_007992f0(iVar2,*(uint *)(iVar2 + 0x14) | 1);
  }
  return param_1;
}

// ---- FUN_007bcac8  @ 0x7bcac8
undefined4 * FUN_007bcac8(undefined4 *param_1,int *param_2)

{
  int iVar1;
  int *piVar2;
  undefined4 local_28;
  undefined4 uStack_24;
  undefined4 uStack_20;
  
  iVar1 = *param_2;
  *param_1 = 0xffffffff;
  param_1[1] = 0xffffffff;
  iVar1 = *(int *)(iVar1 + -0xc);
  param_1[2] = 0;
  if ((*(uint *)((int)param_2 + iVar1 + 0x14) & 5) != 0) {
    return param_1;
  }
  piVar2 = *(int **)((int)param_2 + iVar1 + 0x7c);
  (**(code **)(*piVar2 + 0x10))(&local_28,piVar2,0,0,1,0x10);
  *param_1 = local_28;
  param_1[1] = uStack_24;
  param_1[2] = uStack_20;
  return param_1;
}

// ---- FUN_007bcb7c  @ 0x7bcb7c
int * FUN_007bcb7c(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                  undefined4 param_5,undefined4 param_6)

{
  int iVar1;
  int *piVar2;
  int local_40;
  int iStack_3c;
  undefined4 local_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  
  if ((*(uint *)((int)param_1 + *(int *)(*param_1 + -0xc) + 0x14) & 5) == 0) {
    piVar2 = *(int **)((int)param_1 + *(int *)(*param_1 + -0xc) + 0x7c);
    uStack_28 = param_5;
    uStack_24 = param_6;
    local_30 = param_3;
    uStack_2c = param_4;
    (**(code **)(*piVar2 + 0x14))(&local_40,piVar2,param_3,param_4,param_5,param_6,0x10);
    if (iStack_3c == -1 && local_40 == -1) {
      iVar1 = *(int *)(*param_1 + -0xc) + (int)param_1;
      FUN_007992f0(iVar1,*(uint *)(iVar1 + 0x14) | 4);
    }
  }
  return param_1;
}

// ---- FUN_007bcd78  @ 0x7bcd78
undefined1 * FUN_007bcd78(undefined1 *param_1,int *param_2)

{
  uint uVar1;
  int iVar2;
  
  iVar2 = *param_2;
  *(int **)(param_1 + 4) = param_2;
  *param_1 = 0;
  iVar2 = *(int *)(iVar2 + -0xc) + (int)param_2;
  if (*(int *)(iVar2 + 0x70) != 0) {
    uVar1 = *(uint *)(iVar2 + 0x14);
    if (uVar1 != 0) goto LAB_007bcdac;
    FUN_007bca3c();
    iVar2 = *(int *)(*param_2 + -0xc) + (int)param_2;
  }
  uVar1 = *(uint *)(iVar2 + 0x14);
  if (uVar1 == 0) {
    *param_1 = 1;
    return param_1;
  }
LAB_007bcdac:
  FUN_007992f0(iVar2,uVar1 | 4);
  return param_1;
}

// ---- FUN_007bcdbc  @ 0x7bcdbc
int FUN_007bcdbc(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  int *piVar2;
  int iVar3;
  
  piVar2 = *(int **)(param_1 + 4);
  iVar3 = *(int *)(*piVar2 + -0xc);
  if ((((*(int *)((int)piVar2 + iVar3 + 0xc) << 0x12 < 0) &&
       (iVar1 = std::uncaught_exception(), iVar1 == 0)) &&
      (piVar2 = *(int **)((int)piVar2 + iVar3 + 0x7c), piVar2 != (int *)0x0)) &&
     (iVar3 = (**(code **)(*piVar2 + 0x18))(), iVar3 == -1)) {
    piVar2 = *(int **)(param_1 + 4);
    iVar3 = *(int *)(*piVar2 + -0xc) + (int)piVar2;
    FUN_007992f0(iVar3,*(uint *)(iVar3 + 0x14) | 1,*piVar2,piVar2,param_4);
    return param_1;
  }
  return param_1;
}

// ---- FUN_007bce00  @ 0x7bce00
int * FUN_007bce00(int *param_1,int param_2)

{
  int iVar1;
  int iVar2;
  int *piVar3;
  uint uVar4;
  undefined1 uStack_19;
  char local_18 [4];
  int *local_14;
  
  FUN_007bcd78(local_18,param_1);
  if (local_18[0] == '\0') {
    if (param_2 != 0) goto LAB_007bce42;
LAB_007bce70:
    uVar4 = 1;
  }
  else {
    if (param_2 == 0) goto LAB_007bce70;
    iVar1 = FUN_007ad334(param_2,*(undefined4 *)((int)param_1 + *(int *)(*param_1 + -0xc) + 0x7c),
                         &uStack_19);
    uVar4 = 4;
    if (iVar1 != 0) goto LAB_007bce42;
  }
  iVar1 = *(int *)(*param_1 + -0xc) + (int)param_1;
  FUN_007992f0(iVar1,uVar4 | *(uint *)(iVar1 + 0x14));
LAB_007bce42:
  piVar3 = local_14;
  iVar1 = *(int *)(*local_14 + -0xc);
  if ((((*(int *)((int)local_14 + iVar1 + 0xc) << 0x12 < 0) &&
       (iVar2 = std::uncaught_exception(), iVar2 == 0)) &&
      (piVar3 = *(int **)((int)piVar3 + iVar1 + 0x7c), piVar3 != (int *)0x0)) &&
     (iVar1 = (**(code **)(*piVar3 + 0x18))(), iVar1 == -1)) {
    iVar1 = *(int *)(*local_14 + -0xc) + (int)local_14;
    FUN_007992f0(iVar1,*(uint *)(iVar1 + 0x14) | 1);
    return param_1;
  }
  return param_1;
}

// ---- FUN_007bcef0  @ 0x7bcef0
int * FUN_007bcef0(int *param_1,int param_2)

{
  int iVar1;
  int iVar2;
  int *piVar3;
  char local_18 [4];
  int *local_14;
  
  FUN_007bcd78(local_18,param_1);
  if (local_18[0] != '\0') {
    iVar1 = *(int *)((int)param_1 + *(int *)(*param_1 + -0xc) + 0x7c);
    piVar3 = *(int **)(iVar1 + 0x14);
    if (piVar3 < *(int **)(iVar1 + 0x18)) {
      *piVar3 = param_2;
      *(int **)(iVar1 + 0x14) = piVar3 + 1;
    }
    else {
      param_2 = FUN_002e716c(iVar1,param_2);
    }
    if (param_2 == -1) {
      iVar1 = *(int *)(*param_1 + -0xc) + (int)param_1;
      FUN_007992f0(iVar1,*(uint *)(iVar1 + 0x14) | 1);
    }
  }
  piVar3 = local_14;
  iVar1 = *(int *)(*local_14 + -0xc);
  if ((((*(int *)((int)local_14 + iVar1 + 0xc) << 0x12 < 0) &&
       (iVar2 = std::uncaught_exception(), iVar2 == 0)) &&
      (piVar3 = *(int **)((int)piVar3 + iVar1 + 0x7c), piVar3 != (int *)0x0)) &&
     (iVar1 = (**(code **)(*piVar3 + 0x18))(), iVar1 == -1)) {
    iVar1 = *(int *)(*local_14 + -0xc) + (int)local_14;
    FUN_007992f0(iVar1,*(uint *)(iVar1 + 0x14) | 1);
    return param_1;
  }
  return param_1;
}

// ---- FUN_007bd0d0  @ 0x7bd0d0
void FUN_007bd0d0(int *param_1)

{
  int *piVar1;
  undefined4 uVar2;
  
  piVar1 = *(int **)((int)param_1 + *(int *)(*param_1 + -0xc) + 0x80);
  if (piVar1 != (int *)0x0) {
    uVar2 = (**(code **)(*piVar1 + 0x28))(piVar1,10);
    FUN_007bcef0(param_1,uVar2);
    FUN_007bca3c();
    return;
  }
                    /* WARNING: Subroutine does not return */
  FUN_007c4874();
}

// ---- FUN_007bd1bc  @ 0x7bd1bc
int * FUN_007bd1bc(int *param_1,undefined4 param_2,int param_3)

{
  int *piVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  bool bVar7;
  char local_30 [4];
  int *local_2c;
  
  FUN_007bcd78(local_30,param_1);
  if (local_30[0] == '\0') goto LAB_007bd270;
  iVar4 = *(int *)(*param_1 + -0xc) + (int)param_1;
  iVar6 = *(int *)(iVar4 + 8);
  if (param_3 < iVar6) {
    bVar7 = (*(uint *)(iVar4 + 0xc) & 0xb0) != 0x20;
    if (bVar7) {
      iVar2 = iVar6 - param_3;
      if (*(char *)(iVar4 + 0x78) == '\0') {
        piVar1 = *(int **)(iVar4 + 0x80);
        if (piVar1 == (int *)0x0) {
                    /* WARNING: Subroutine does not return */
          FUN_007c4874();
        }
        iVar5 = (**(code **)(*piVar1 + 0x28))(piVar1,0x20);
        iVar3 = *param_1;
        *(int *)(iVar4 + 0x74) = iVar5;
        *(undefined1 *)(iVar4 + 0x78) = 1;
        iVar4 = *(int *)(iVar3 + -0xc) + (int)param_1;
      }
      else {
        iVar5 = *(int *)(iVar4 + 0x74);
      }
      if (0 < iVar2) {
        do {
          iVar4 = *(int *)(iVar4 + 0x7c);
          piVar1 = *(int **)(iVar4 + 0x14);
          if (piVar1 < *(int **)(iVar4 + 0x18)) {
            *piVar1 = iVar5;
            *(int **)(iVar4 + 0x14) = piVar1 + 1;
            iVar4 = iVar5;
          }
          else {
            iVar4 = FUN_002e716c(iVar4,iVar5);
          }
          if (iVar4 == -1) {
            iVar4 = *(int *)(*param_1 + -0xc) + (int)param_1;
            FUN_007992f0(iVar4,*(uint *)(iVar4 + 0x14) | 1);
            iVar4 = *(int *)(*param_1 + -0xc) + (int)param_1;
            break;
          }
          iVar2 = iVar2 + -1;
          iVar4 = *(int *)(*param_1 + -0xc) + (int)param_1;
        } while (iVar2 != 0);
      }
    }
    if (*(int *)(iVar4 + 0x14) == 0) {
      iVar4 = (**(code **)(**(int **)(iVar4 + 0x7c) + 0x30))
                        (*(int **)(iVar4 + 0x7c),param_2,param_3);
      iVar2 = *param_1;
      if (param_3 != iVar4) {
        iVar4 = *(int *)(iVar2 + -0xc) + (int)param_1;
        FUN_007992f0(iVar4,*(uint *)(iVar4 + 0x14) | 1);
        iVar2 = *param_1;
      }
      iVar4 = *(int *)(iVar2 + -0xc) + (int)param_1;
    }
    if ((!bVar7) && (*(int *)(iVar4 + 0x14) == 0)) {
      iVar6 = iVar6 - param_3;
      if (*(char *)(iVar4 + 0x78) == '\0') {
        piVar1 = *(int **)(iVar4 + 0x80);
        if (piVar1 == (int *)0x0) {
                    /* WARNING: Subroutine does not return */
          FUN_007c4874();
        }
        iVar5 = (**(code **)(*piVar1 + 0x28))(piVar1,0x20);
        iVar2 = *param_1;
        *(int *)(iVar4 + 0x74) = iVar5;
        *(undefined1 *)(iVar4 + 0x78) = 1;
        iVar4 = *(int *)(iVar2 + -0xc) + (int)param_1;
      }
      else {
        iVar5 = *(int *)(iVar4 + 0x74);
      }
      if (0 < iVar6) {
        while( true ) {
          iVar4 = *(int *)(iVar4 + 0x7c);
          piVar1 = *(int **)(iVar4 + 0x14);
          if (piVar1 < *(int **)(iVar4 + 0x18)) {
            *piVar1 = iVar5;
            *(int **)(iVar4 + 0x14) = piVar1 + 1;
            iVar4 = iVar5;
          }
          else {
            iVar4 = FUN_002e716c(iVar4,iVar5);
          }
          iVar2 = *param_1;
          if (iVar4 == -1) goto LAB_007bd254;
          iVar6 = iVar6 + -1;
          if (iVar6 == 0) break;
          iVar4 = *(int *)(iVar2 + -0xc) + (int)param_1;
        }
        goto LAB_007bd266;
      }
    }
  }
  else {
    iVar4 = (**(code **)(**(int **)(iVar4 + 0x7c) + 0x30))(*(int **)(iVar4 + 0x7c),param_2,param_3);
    iVar2 = *param_1;
    if (param_3 != iVar4) {
LAB_007bd254:
      iVar4 = *(int *)(iVar2 + -0xc) + (int)param_1;
      FUN_007992f0(iVar4,*(uint *)(iVar4 + 0x14) | 1);
      iVar2 = *param_1;
    }
LAB_007bd266:
    iVar4 = *(int *)(iVar2 + -0xc) + (int)param_1;
  }
  *(undefined4 *)(iVar4 + 8) = 0;
LAB_007bd270:
  piVar1 = local_2c;
  iVar4 = *(int *)(*local_2c + -0xc);
  if ((((*(int *)((int)local_2c + iVar4 + 0xc) << 0x12 < 0) &&
       (iVar6 = std::uncaught_exception(), iVar6 == 0)) &&
      (piVar1 = *(int **)((int)piVar1 + iVar4 + 0x7c), piVar1 != (int *)0x0)) &&
     (iVar4 = (**(code **)(*piVar1 + 0x18))(), iVar4 == -1)) {
    iVar4 = *(int *)(*local_2c + -0xc) + (int)local_2c;
    FUN_007992f0(iVar4,*(uint *)(iVar4 + 0x14) | 1);
    return param_1;
  }
  return param_1;
}

// ---- FUN_007bd414  @ 0x7bd414
void FUN_007bd414(undefined4 param_1,undefined4 param_2)

{
  undefined4 local_c [2];
  
  local_c[0] = param_2;
  FUN_007bd1bc(param_1,local_c,1);
  return;
}

// ---- FUN_007bd42c  @ 0x7bd42c
void FUN_007bd42c(int *param_1)

{
  int *piVar1;
  undefined4 local_c;
  
  piVar1 = *(int **)((int)param_1 + *(int *)(*param_1 + -0xc) + 0x80);
  if (piVar1 != (int *)0x0) {
    local_c = (**(code **)(*piVar1 + 0x28))();
    FUN_007bd1bc(param_1,&local_c,1);
    return;
  }
                    /* WARNING: Subroutine does not return */
  FUN_007c4874();
}

// ---- FUN_007bd490  @ 0x7bd490
int * FUN_007bd490(int *param_1,char *param_2)

{
  char cVar1;
  undefined4 *puVar2;
  size_t sVar3;
  uint uVar4;
  undefined4 *puVar5;
  int *piVar6;
  undefined4 uVar7;
  int iVar8;
  char *pcVar9;
  
  if (param_2 == (char *)0x0) {
    iVar8 = *(int *)(*param_1 + -0xc) + (int)param_1;
    FUN_007992f0(iVar8,*(uint *)(iVar8 + 0x14) | 1);
  }
  else {
    sVar3 = strlen(param_2);
    if (sVar3 < 0x1fc00001) {
      uVar4 = sVar3 << 2;
    }
    else {
      uVar4 = 0xffffffff;
    }
    puVar5 = operator_new__(uVar4);
    if (sVar3 != 0) {
      cVar1 = *param_2;
      pcVar9 = param_2 + (sVar3 - 1);
      piVar6 = *(int **)((int)param_1 + *(int *)(*param_1 + -0xc) + 0x80);
      puVar2 = puVar5;
      while( true ) {
        if (piVar6 == (int *)0x0) {
                    /* WARNING: Subroutine does not return */
          FUN_007c4874();
        }
        uVar7 = (**(code **)(*piVar6 + 0x28))(piVar6,cVar1);
        *puVar2 = uVar7;
        if (param_2 == pcVar9) break;
        param_2 = param_2 + 1;
        cVar1 = *param_2;
        piVar6 = *(int **)((int)param_1 + *(int *)(*param_1 + -0xc) + 0x80);
        puVar2 = puVar2 + 1;
      }
    }
    FUN_007bd1bc(param_1,puVar5,sVar3);
    if (puVar5 != (undefined4 *)0x0) {
      operator_delete__(puVar5);
    }
  }
  return param_1;
}

// ---- FUN_007be0ac  @ 0x7be0ac
void FUN_007be0ac(undefined4 *param_1)

{
  *param_1 = 0;
  return;
}

// ---- FUN_007be0b4  @ 0x7be0b4
pthread_cond_t * FUN_007be0b4(pthread_cond_t *param_1)

{
  pthread_cond_destroy(param_1);
  return param_1;
}

// ---- FUN_007be0c0  @ 0x7be0c0
void FUN_007be0c0(pthread_cond_t *param_1,undefined4 *param_2)

{
  int iVar1;
  
  iVar1 = pthread_cond_wait(param_1,(pthread_mutex_t *)*param_2);
  if (iVar1 == 0) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  FUN_007c4c60();
}

// ---- FUN_007be0d0  @ 0x7be0d0
void FUN_007be0d0(pthread_cond_t *param_1)

{
  int iVar1;
  
  iVar1 = pthread_cond_signal(param_1);
  if (iVar1 == 0) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  FUN_007c4c60();
}

// ---- FUN_007be0e0  @ 0x7be0e0
void FUN_007be0e0(pthread_cond_t *param_1)

{
  int iVar1;
  
  iVar1 = pthread_cond_broadcast(param_1);
  if (iVar1 == 0) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  FUN_007c4c60();
}

// ---- FUN_007be0f8  @ 0x7be0f8
pthread_cond_t * FUN_007be0f8(pthread_cond_t *param_1)

{
  pthread_cond_destroy(param_1);
  return param_1;
}

// ---- FUN_007be134  @ 0x7be134
uint FUN_007be134(int *param_1,uint param_2,undefined4 param_3)

{
  if (param_2 <= *(uint *)(*param_1 + -0xc)) {
    return param_2;
  }
                    /* WARNING: Subroutine does not return */
  FUN_007c4a44(param_3);
}

// ---- FUN_007be338  @ 0x7be338
size_t FUN_007be338(int *param_1,wchar_t *param_2,uint param_3,uint param_4)

{
  uint __n;
  int iVar1;
  
  iVar1 = *param_1;
  if (*(uint *)(iVar1 + -0xc) < param_4) {
                    /* WARNING: Subroutine does not return */
    FUN_007c4a44("basic_string::copy");
  }
  __n = *(uint *)(iVar1 + -0xc) - param_4;
  if (param_3 <= __n) {
    __n = param_3;
  }
  if (__n != 0) {
    if (__n == 1) {
      *param_2 = *(wchar_t *)(iVar1 + param_4 * 4);
      return 1;
    }
    wmemcpy(param_2,(wchar_t *)(iVar1 + param_4 * 4),__n);
  }
  return __n;
}

// ---- FUN_007be37c  @ 0x7be37c
void FUN_007be37c(int *param_1,int *param_2)

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

// ---- FUN_007be3a8  @ 0x7be3a8
undefined4 FUN_007be3a8(undefined4 param_1)

{
  FUN_007be37c();
  return param_1;
}

// ---- FUN_007be3b4  @ 0x7be3b4
undefined4 FUN_007be3b4(undefined4 param_1)

{
  FUN_007be37c();
  return param_1;
}

// ---- FUN_007be3c8  @ 0x7be3c8
uint FUN_007be3c8(int *param_1,int *param_2,uint param_3,uint param_4)

{
  uint uVar1;
  int iVar2;
  uint uVar3;
  int *piVar4;
  int iVar5;
  
  uVar1 = *(uint *)(*param_1 + -0xc);
  if (param_4 == 0) {
    if (uVar1 < param_3) {
      param_3 = 0xffffffff;
    }
    return param_3;
  }
  if ((param_4 <= uVar1) && (uVar1 = uVar1 - param_4, param_3 <= uVar1)) {
    iVar5 = param_4 - 1;
    piVar4 = (int *)(*param_1 + param_3 * 4);
    do {
      uVar3 = param_3 + 1;
      if ((*piVar4 == *param_2) &&
         (iVar2 = FUN_002e7024(piVar4 + 1,param_2 + 1,iVar5,*piVar4,param_4), iVar2 == 0)) {
        return param_3;
      }
      piVar4 = piVar4 + 1;
      param_3 = uVar3;
    } while (uVar3 <= uVar1);
  }
  return 0xffffffff;
}

// ---- FUN_007be440  @ 0x7be440
void FUN_007be440(undefined4 param_1,wchar_t *param_2,undefined4 param_3)

{
  size_t sVar1;
  
  sVar1 = wcslen(param_2);
  FUN_007be3c8(param_1,param_2,param_3,sVar1);
  return;
}

// ---- FUN_007be460  @ 0x7be460
int FUN_007be460(int *param_1,wchar_t param_2,uint param_3)

{
  wchar_t *pwVar1;
  int iVar2;
  
  iVar2 = *param_1;
  if ((param_3 < *(uint *)(iVar2 + -0xc)) &&
     (pwVar1 = wmemchr((wchar_t *)(iVar2 + param_3 * 4),param_2,*(uint *)(iVar2 + -0xc) - param_3),
     pwVar1 != (wchar_t *)0x0)) {
    return (int)pwVar1 - iVar2 >> 2;
  }
  return -1;
}

// ---- FUN_007be4dc  @ 0x7be4dc
uint FUN_007be4dc(int *param_1,wchar_t *param_2,uint param_3)

{
  int iVar1;
  size_t sVar2;
  uint uVar3;
  uint extraout_r3;
  uint uVar4;
  undefined4 unaff_r4;
  int iVar5;
  undefined4 unaff_r5;
  undefined4 unaff_r6;
  bool bVar6;
  
  sVar2 = wcslen(param_2);
  uVar3 = *(uint *)(*param_1 + -0xc);
  if (sVar2 <= uVar3) {
    uVar4 = uVar3 - sVar2;
    if (param_3 <= uVar3 - sVar2) {
      uVar4 = param_3;
    }
    iVar5 = *param_1 + uVar4 * 4;
    do {
      iVar1 = FUN_002e7024(iVar5,param_2,sVar2,uVar3,unaff_r4,unaff_r5,unaff_r6);
      if (iVar1 == 0) {
        return uVar4;
      }
      bVar6 = uVar4 != 0;
      uVar3 = extraout_r3;
      uVar4 = uVar4 - 1;
      iVar5 = iVar5 + -4;
    } while (bVar6);
  }
  return 0xffffffff;
}

// ---- FUN_007be538  @ 0x7be538
uint FUN_007be538(int *param_1,wchar_t *param_2,uint param_3,size_t param_4)

{
  wchar_t *pwVar1;
  int iVar2;
  int iVar3;
  
  if ((param_4 != 0) && (iVar2 = *param_1, param_3 < *(uint *)(iVar2 + -0xc))) {
    iVar3 = param_3 << 2;
    do {
      pwVar1 = (wchar_t *)(iVar2 + iVar3);
      iVar3 = iVar3 + 4;
      pwVar1 = wmemchr(param_2,*pwVar1,param_4);
      if (pwVar1 != (wchar_t *)0x0) {
        return param_3;
      }
      iVar2 = *param_1;
      param_3 = param_3 + 1;
    } while (param_3 < *(uint *)(iVar2 + -0xc));
  }
  return 0xffffffff;
}

// ---- FUN_007be58c  @ 0x7be58c
void FUN_007be58c(undefined4 param_1,wchar_t *param_2,undefined4 param_3)

{
  size_t sVar1;
  
  sVar1 = wcslen(param_2);
  FUN_007be538(param_1,param_2,param_3,sVar1);
  return;
}

// ---- FUN_007be608  @ 0x7be608
uint FUN_007be608(int *param_1,wchar_t *param_2,uint param_3)

{
  wchar_t *pwVar1;
  size_t __n;
  int iVar2;
  uint uVar3;
  int iVar4;
  
  __n = wcslen(param_2);
  iVar4 = *param_1;
  if (__n != 0 && *(int *)(iVar4 + -0xc) != 0) {
    uVar3 = *(int *)(iVar4 + -0xc) - 1;
    if (param_3 < uVar3) {
      uVar3 = param_3;
    }
    iVar2 = uVar3 << 2;
    while( true ) {
      pwVar1 = (wchar_t *)(iVar4 + iVar2);
      iVar2 = iVar2 + -4;
      pwVar1 = wmemchr(param_2,*pwVar1,__n);
      if (pwVar1 != (wchar_t *)0x0) {
        return uVar3;
      }
      if (uVar3 == 0) break;
      iVar4 = *param_1;
      uVar3 = uVar3 - 1;
    }
  }
  return 0xffffffff;
}

// ---- FUN_007be680  @ 0x7be680
uint FUN_007be680(int *param_1,wchar_t *param_2,uint param_3)

{
  wchar_t *pwVar1;
  size_t __n;
  int iVar2;
  int iVar3;
  
  __n = wcslen(param_2);
  iVar2 = *param_1;
  if (param_3 < *(uint *)(iVar2 + -0xc)) {
    iVar3 = param_3 << 2;
    do {
      pwVar1 = (wchar_t *)(iVar2 + iVar3);
      iVar3 = iVar3 + 4;
      pwVar1 = wmemchr(param_2,*pwVar1,__n);
      if (pwVar1 == (wchar_t *)0x0) {
        return param_3;
      }
      iVar2 = *param_1;
      param_3 = param_3 + 1;
    } while (param_3 < *(uint *)(iVar2 + -0xc));
  }
  return 0xffffffff;
}

// ---- FUN_007be6dc  @ 0x7be6dc
uint FUN_007be6dc(int *param_1,wchar_t *param_2,uint param_3,size_t param_4)

{
  wchar_t *pwVar1;
  int iVar2;
  uint uVar3;
  int iVar4;
  
  iVar4 = *param_1;
  if (*(int *)(iVar4 + -0xc) != 0) {
    uVar3 = *(int *)(iVar4 + -0xc) - 1;
    if (param_3 < uVar3) {
      uVar3 = param_3;
    }
    iVar2 = uVar3 << 2;
    while( true ) {
      pwVar1 = (wchar_t *)(iVar4 + iVar2);
      iVar2 = iVar2 + -4;
      pwVar1 = wmemchr(param_2,*pwVar1,param_4);
      if (pwVar1 == (wchar_t *)0x0) {
        return uVar3;
      }
      if (uVar3 == 0) break;
      iVar4 = *param_1;
      uVar3 = uVar3 - 1;
    }
  }
  return 0xffffffff;
}

// ---- FUN_007be72c  @ 0x7be72c
void FUN_007be72c(undefined4 param_1,wchar_t *param_2,undefined4 param_3)

{
  size_t sVar1;
  
  sVar1 = wcslen(param_2);
  FUN_007be6dc(param_1,param_2,param_3,sVar1);
  return;
}

// ---- FUN_007be864  @ 0x7be864
int FUN_007be864(int *param_1,uint param_2,uint param_3,wchar_t *param_4)

{
  size_t sVar1;
  int iVar2;
  uint uVar3;
  uint uVar4;
  
  if (param_2 <= *(uint *)(*param_1 + -0xc)) {
    uVar4 = *(uint *)(*param_1 + -0xc) - param_2;
    if (param_3 <= uVar4) {
      uVar4 = param_3;
    }
    sVar1 = wcslen(param_4);
    uVar3 = sVar1;
    if (uVar4 <= sVar1) {
      uVar3 = uVar4;
    }
    iVar2 = FUN_002e7024(*param_1 + param_2 * 4,param_4,uVar3);
    if (iVar2 == 0) {
      iVar2 = uVar4 - sVar1;
    }
    return iVar2;
  }
                    /* WARNING: Subroutine does not return */
  FUN_007c4a44("basic_string::compare");
}

// ---- FUN_007be93c  @ 0x7be93c
void FUN_007be93c(uint param_1,uint param_2)

{
  uint uVar1;
  void *pvVar2;
  
  if (0xffffffe < param_1) {
                    /* WARNING: Subroutine does not return */
    FUN_007c49e8("basic_string::_S_create");
  }
  if (param_2 < param_1) {
    if (param_1 < param_2 << 1) {
      param_1 = param_2 << 1;
    }
    uVar1 = (param_1 + 4) * 4;
    if (param_1 <= param_2 || uVar1 + 0x10 < 0x1001) goto LAB_007be988;
    param_1 = param_1 + (0x1000 - (uVar1 + 0x10 & 0xfff) >> 2);
    if (0xffffffd < param_1) {
      param_1 = 0xffffffe;
    }
  }
  uVar1 = (param_1 + 4) * 4;
LAB_007be988:
  pvVar2 = operator_new(uVar1);
  *(uint *)((int)pvVar2 + 4) = param_1;
  *(undefined4 *)((int)pvVar2 + 8) = 0;
  return;
}

// ---- FUN_007be9a0  @ 0x7be9a0
wchar_t * FUN_007be9a0(size_t param_1,wchar_t param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 *puVar1;
  wchar_t *__s;
  
  if (param_1 == 0) {
    __s = (wchar_t *)&DAT_00972510;
  }
  else {
    puVar1 = (undefined4 *)FUN_007be93c(param_1,0,param_3,param_4,param_4);
    __s = puVar1 + 3;
    if (param_1 == 1) {
      puVar1[3] = param_2;
    }
    else {
      wmemset(__s,param_2,param_1);
    }
    if (puVar1 != &DAT_00972504) {
      FUN_002e7178(puVar1,param_1);
    }
  }
  return __s;
}

// ---- FUN_007bea00  @ 0x7bea00
undefined4 *
FUN_007bea00(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  
  uVar1 = FUN_007be9a0(param_2,param_3,param_4);
  *param_1 = uVar1;
  return param_1;
}

// ---- FUN_007bea1c  @ 0x7bea1c
void FUN_007bea1c(undefined4 *param_1)

{
  if (param_1 == &DAT_00972504) {
    return;
  }
  FUN_002e7188();
  return;
}

// ---- FUN_007bea54  @ 0x7bea54
void FUN_007bea54(int *param_1,size_t param_2,int param_3,int param_4)

{
  int iVar1;
  wchar_t *__s2;
  wchar_t *__s1;
  wchar_t wVar2;
  size_t __n;
  undefined1 auStack_2c [8];
  
  __s1 = (wchar_t *)*param_1;
  wVar2 = (param_4 - param_3) + __s1[-3];
  __n = (__s1[-3] - param_2) - param_3;
  if (((uint)__s1[-2] < (uint)wVar2) || (L'\0' < __s1[-1])) {
    iVar1 = FUN_007be93c(wVar2,__s1[-2],auStack_2c);
    __s2 = (wchar_t *)*param_1;
    __s1 = (wchar_t *)(iVar1 + 0xc);
    if (param_2 != 0) {
      if (param_2 == 1) {
        *(wchar_t *)(iVar1 + 0xc) = *__s2;
      }
      else {
        wmemcpy(__s1,__s2,param_2);
        __s2 = (wchar_t *)*param_1;
      }
    }
    if (__n != 0) {
      if (__n == 1) {
        __s1[param_4 + param_2] = __s2[param_2 + param_3];
      }
      else {
        wmemcpy(__s1 + param_4 + param_2,__s2 + param_2 + param_3,__n);
        __s2 = (wchar_t *)*param_1;
      }
    }
    if (__s2 + -3 != &DAT_00972504) {
      FUN_002e7188(__s2 + -3,auStack_2c);
    }
    *param_1 = (int)__s1;
  }
  else if (param_3 != param_4 && __n != 0) {
    if (__n == 1) {
      __s1[param_4 + param_2] = __s1[param_2 + param_3];
    }
    else {
      wmemmove(__s1 + param_4 + param_2,__s1 + param_2 + param_3,__n);
      __s1 = (wchar_t *)*param_1;
    }
  }
  if (__s1 + -3 != &DAT_00972504) {
    FUN_002e7178(__s1 + -3,wVar2);
  }
  return;
}

// ---- FUN_007beb4c  @ 0x7beb4c
void FUN_007beb4c(undefined4 *param_1)

{
  undefined *puVar1;
  
  puVar1 = (undefined *)*param_1;
  if (puVar1 != &DAT_00972510) {
    if (0 < *(int *)(puVar1 + -4)) {
      FUN_007bea54(param_1,0,0,0);
      puVar1 = (undefined *)*param_1;
    }
    *(undefined4 *)(puVar1 + -4) = 0xffffffff;
  }
  return;
}

// ---- FUN_007beb90  @ 0x7beb90
int FUN_007beb90(int *param_1)

{
  int iVar1;
  
  iVar1 = *param_1;
  if (-1 < *(int *)(iVar1 + -4)) {
    FUN_007beb4c();
    iVar1 = *param_1;
  }
  return iVar1;
}

// ---- FUN_007beba8  @ 0x7beba8
int * FUN_007beba8(int *param_1,int *param_2)

{
  int iVar1;
  
  iVar1 = *param_2;
  if (-1 < *(int *)(iVar1 + -4)) {
    FUN_007beb4c(param_2);
    iVar1 = *param_2;
  }
  *param_1 = iVar1;
  return param_1;
}

// ---- FUN_007bebc8  @ 0x7bebc8
int FUN_007bebc8(int *param_1)

{
  int iVar1;
  
  iVar1 = *param_1;
  if (-1 < *(int *)(iVar1 + -4)) {
    FUN_007beb4c();
    iVar1 = *param_1;
  }
  return iVar1 + *(int *)(iVar1 + -0xc) * 4;
}

// ---- FUN_007bebe8  @ 0x7bebe8
int FUN_007bebe8(int *param_1,int param_2)

{
  int iVar1;
  
  iVar1 = *param_1;
  if (-1 < *(int *)(iVar1 + -4)) {
    FUN_007beb4c();
    iVar1 = *param_1;
  }
  return iVar1 + param_2 * 4;
}

// ---- FUN_007bec04  @ 0x7bec04
int FUN_007bec04(int *param_1)

{
  int iVar1;
  
  iVar1 = *param_1;
  if (-1 < *(int *)(iVar1 + -4)) {
    FUN_007beb4c();
    iVar1 = *param_1;
  }
  return iVar1;
}

// ---- FUN_007bec40  @ 0x7bec40
int FUN_007bec40(int *param_1,uint param_2)

{
  int iVar1;
  
  iVar1 = *param_1;
  if (param_2 < *(uint *)(iVar1 + -0xc)) {
    if (-1 < *(int *)(iVar1 + -4)) {
      FUN_007beb4c();
      iVar1 = *param_1;
    }
    return iVar1 + param_2 * 4;
  }
                    /* WARNING: Subroutine does not return */
  FUN_007c4a44("basic_string::at");
}

// ---- FUN_007beca8  @ 0x7beca8
int * FUN_007beca8(int *param_1,uint param_2,uint param_3,undefined4 param_4)

{
  uint uVar1;
  
  if (param_2 <= *(uint *)(*param_1 + -0xc)) {
    uVar1 = *(uint *)(*param_1 + -0xc) - param_2;
    if (uVar1 < param_3) {
      param_3 = uVar1;
    }
    FUN_007bea54(param_1,param_2,param_3,0,param_4);
    return param_1;
  }
                    /* WARNING: Subroutine does not return */
  FUN_007c4a44("basic_string::erase");
}

// ---- FUN_007bed24  @ 0x7bed24
int * FUN_007bed24(int *param_1,int param_2,int param_3,uint param_4,wchar_t param_5)

{
  if ((uint)((0xffffffe - *(int *)(*param_1 + -0xc)) + param_3) < param_4) {
                    /* WARNING: Subroutine does not return */
    FUN_007c49e8("basic_string::_M_replace_aux");
  }
  FUN_007bea54();
  if (param_4 != 0) {
    if (param_4 == 1) {
      *(wchar_t *)(*param_1 + param_2 * 4) = param_5;
      return param_1;
    }
    wmemset((wchar_t *)(*param_1 + param_2 * 4),param_5,param_4);
  }
  return param_1;
}

// ---- FUN_007bed7c  @ 0x7bed7c
void FUN_007bed7c(int *param_1,undefined4 param_2,undefined4 param_3)

{
  FUN_007bed24(param_1,0,*(undefined4 *)(*param_1 + -0xc),param_2,param_3);
  return;
}

// ---- FUN_007bedb4  @ 0x7bedb4
void FUN_007bedb4(int *param_1,uint param_2,undefined4 param_3,undefined4 param_4)

{
  if (param_2 <= *(uint *)(*param_1 + -0xc)) {
    FUN_007bed24(param_1,param_2,0,param_3,param_4);
    return;
  }
                    /* WARNING: Subroutine does not return */
  FUN_007c4a44("basic_string::insert");
}

// ---- FUN_007beddc  @ 0x7beddc
int FUN_007beddc(int *param_1,int param_2,undefined4 param_3)

{
  int iVar1;
  int iVar2;
  
  iVar2 = param_2 - *param_1 >> 2;
  FUN_007bed24(param_1,iVar2,0,1,param_3);
  iVar1 = *param_1;
  *(undefined4 *)(iVar1 + -4) = 0xffffffff;
  return iVar1 + iVar2 * 4;
}

// ---- FUN_007bee08  @ 0x7bee08
void FUN_007bee08(int *param_1,uint param_2,uint param_3)

{
  uint uVar1;
  
  if (param_2 <= *(uint *)(*param_1 + -0xc)) {
    uVar1 = *(uint *)(*param_1 + -0xc) - param_2;
    if (uVar1 < param_3) {
      param_3 = uVar1;
    }
    FUN_007bed24(param_1,param_2,param_3);
    return;
  }
                    /* WARNING: Subroutine does not return */
  FUN_007c4a44("basic_string::replace");
}

// ---- FUN_007bee64  @ 0x7bee64
int * FUN_007bee64(int *param_1,int param_2,undefined4 param_3,wchar_t *param_4,size_t param_5)

{
  FUN_007bea54();
  if (param_5 != 0) {
    if (param_5 == 1) {
      *(wchar_t *)(*param_1 + param_2 * 4) = *param_4;
      return param_1;
    }
    wmemcpy((wchar_t *)(*param_1 + param_2 * 4),param_4,param_5);
  }
  return param_1;
}

// ---- FUN_007bee98  @ 0x7bee98
undefined4 * FUN_007bee98(undefined4 *param_1,wchar_t *param_2,size_t param_3)

{
  undefined4 *puVar1;
  uint uVar2;
  wchar_t *__s1;
  
  __s1 = (wchar_t *)*param_1;
  if (0xffffffe < param_3) {
                    /* WARNING: Subroutine does not return */
    FUN_007c49e8("basic_string::assign");
  }
  if (((param_2 < __s1) || (__s1 + __s1[-3] < param_2)) || (L'\0' < __s1[-1])) {
    puVar1 = (undefined4 *)FUN_007bee64(param_1,0,__s1[-3],param_2,param_3);
    return puVar1;
  }
  uVar2 = (int)param_2 - (int)__s1 >> 2;
  if (uVar2 < param_3) {
    if (uVar2 == 0) goto LAB_007beeec;
    if (param_3 != 1) {
      wmemmove(__s1,param_2,param_3);
      __s1 = (wchar_t *)*param_1;
      goto LAB_007beeec;
    }
  }
  else if (param_3 != 1) {
    wmemcpy(__s1,param_2,param_3);
    __s1 = (wchar_t *)*param_1;
    goto LAB_007beeec;
  }
  *__s1 = *param_2;
LAB_007beeec:
  if (__s1 + -3 != &DAT_00972504) {
    FUN_002e7178(__s1 + -3,param_3);
  }
  return param_1;
}

// ---- FUN_007bef30  @ 0x7bef30
undefined4 FUN_007bef30(undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
  FUN_007bee98(param_1,param_2,param_3);
  return param_1;
}

// ---- FUN_007bef4c  @ 0x7bef4c
void FUN_007bef4c(undefined4 param_1,int *param_2,uint param_3,uint param_4)

{
  uint uVar1;
  
  uVar1 = *(uint *)(*param_2 + -0xc);
  if (param_3 <= uVar1) {
    uVar1 = uVar1 - param_3;
    if (param_4 <= uVar1) {
      uVar1 = param_4;
    }
    FUN_007bee98(param_1,*param_2 + param_3 * 4,uVar1);
    return;
  }
                    /* WARNING: Subroutine does not return */
  FUN_007c4a44("basic_string::assign");
}

// ---- FUN_007befac  @ 0x7befac
void FUN_007befac(undefined4 param_1,wchar_t *param_2,undefined4 param_3,undefined4 param_4)

{
  size_t sVar1;
  
  sVar1 = wcslen(param_2);
  FUN_007bee98(param_1,param_2,sVar1,param_4);
  return;
}

// ---- FUN_007befc8  @ 0x7befc8
uint * FUN_007befc8(uint *param_1,uint param_2,uint param_3,uint param_4)

{
  size_t __n;
  wchar_t *__s2;
  uint uVar1;
  wchar_t *__s1;
  uint uVar2;
  int iVar3;
  
  uVar2 = *param_1;
  uVar1 = *(uint *)(uVar2 - 0xc);
  if (uVar1 < param_2) {
                    /* WARNING: Subroutine does not return */
    FUN_007c4a44("basic_string::insert");
  }
  if (param_4 <= 0xffffffe - uVar1) {
    if (((param_3 < uVar2) || (uVar2 + uVar1 * 4 < param_3)) || (0 < *(int *)(uVar2 - 4))) {
      param_1 = (uint *)FUN_007bee64(param_1,param_2,0,param_3,param_4);
    }
    else {
      FUN_007bea54(param_1,param_2,0);
      iVar3 = (int)(param_3 - uVar2) >> 2;
      uVar1 = *param_1;
      __s2 = (wchar_t *)(uVar1 + iVar3 * 4);
      __s1 = (wchar_t *)(uVar1 + param_2 * 4);
      if (__s2 + param_4 <= __s1) {
        if (param_4 == 1) {
          *(undefined4 *)(uVar1 + param_2 * 4) = *(undefined4 *)(uVar1 + iVar3 * 4);
          return param_1;
        }
        wmemcpy(__s1,__s2,param_4);
        return param_1;
      }
      if (__s2 < __s1) {
        __n = (int)__s1 - (int)__s2 >> 2;
        if (__n == 1) {
          *(undefined4 *)(uVar1 + param_2 * 4) = *(undefined4 *)(uVar1 + iVar3 * 4);
        }
        else {
          wmemcpy(__s1,__s2,__n);
        }
        if (param_4 - __n == 1) {
          __s1[__n] = __s1[param_4];
        }
        else {
          wmemcpy(__s1 + __n,__s1 + param_4,param_4 - __n);
        }
      }
      else if (param_4 == 1) {
        *(wchar_t *)(uVar1 + param_2 * 4) = __s2[1];
      }
      else {
        wmemcpy(__s1,__s2 + param_4,param_4);
      }
    }
    return param_1;
  }
                    /* WARNING: Subroutine does not return */
  FUN_007c49e8("basic_string::insert");
}

// ---- FUN_007bf150  @ 0x7bf150
void FUN_007bf150(int *param_1)

{
  uint uVar1;
  
  uVar1 = *(uint *)(*param_1 + -0xc) - 1;
  if (uVar1 <= *(uint *)(*param_1 + -0xc)) {
    FUN_007bea54(param_1,uVar1,1,0);
    return;
  }
                    /* WARNING: Subroutine does not return */
  FUN_007c4a44("basic_string::erase");
}

// ---- FUN_007bf1a4  @ 0x7bf1a4
undefined4 * FUN_007bf1a4(size_t *param_1,undefined4 param_2,int param_3)

{
  undefined4 *puVar1;
  size_t sVar2;
  size_t __n;
  
  puVar1 = (undefined4 *)FUN_007be93c(*param_1 + param_3,param_1[1],param_2);
  __n = *param_1;
  sVar2 = 0;
  if (__n != 0) {
    if (__n == 1) {
      puVar1[3] = param_1[3];
      sVar2 = *param_1;
    }
    else {
      wmemcpy(puVar1 + 3,(wchar_t *)(param_1 + 3),__n);
      sVar2 = *param_1;
    }
  }
  if (puVar1 != &DAT_00972504) {
    FUN_002e7178(puVar1,sVar2);
  }
  return puVar1 + 3;
}

// ---- FUN_007bf1f4  @ 0x7bf1f4
void FUN_007bf1f4(int *param_1,uint param_2)

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
    iVar3 = FUN_007bf1a4((uint *)(iVar3 + -0xc),auStack_14,iVar2);
    if ((undefined4 *)(*param_1 + -0xc) != &DAT_00972504) {
      FUN_002e7188((undefined4 *)(*param_1 + -0xc),auStack_14);
    }
    *param_1 = iVar3;
  }
  return;
}

// ---- FUN_007bf274  @ 0x7bf274
int * FUN_007bf274(int *param_1,int *param_2)

{
  wchar_t *__s2;
  int iVar1;
  wchar_t __n;
  int iVar2;
  uint uVar3;
  
  __s2 = (wchar_t *)*param_2;
  __n = __s2[-3];
  if (__n != L'\0') {
    iVar1 = *param_1;
    iVar2 = *(int *)(iVar1 + -0xc);
    uVar3 = iVar2 + __n;
    if ((*(uint *)(iVar1 + -8) < uVar3) || (0 < *(int *)(iVar1 + -4))) {
      FUN_007bf1f4(param_1,uVar3);
      iVar1 = *param_1;
      __s2 = (wchar_t *)*param_2;
      iVar2 = *(int *)(iVar1 + -0xc);
    }
    if (__n == L'\x01') {
      *(wchar_t *)(iVar1 + iVar2 * 4) = *__s2;
    }
    else {
      wmemcpy((wchar_t *)(iVar1 + iVar2 * 4),__s2,__n);
      iVar1 = *param_1;
    }
    if ((undefined4 *)(iVar1 + -0xc) != &DAT_00972504) {
      FUN_002e7178((undefined4 *)(iVar1 + -0xc),uVar3);
    }
  }
  return param_1;
}

// ---- FUN_007bf384  @ 0x7bf384
uint * FUN_007bf384(uint *param_1,wchar_t *param_2,uint param_3,undefined4 param_4)

{
  wchar_t *pwVar1;
  wchar_t *pwVar2;
  int iVar3;
  wchar_t wVar4;
  
  if (param_3 != 0) {
    pwVar2 = (wchar_t *)*param_1;
    pwVar1 = (wchar_t *)pwVar2[-3];
    if (0xffffffeU - (int)pwVar1 < param_3) {
                    /* WARNING: Subroutine does not return */
      FUN_007c49e8("basic_string::append");
    }
    wVar4 = param_3 + (int)pwVar1;
    if (((uint)pwVar2[-2] < (uint)wVar4) || (L'\0' < pwVar2[-1])) {
      if ((param_2 < pwVar2) || (pwVar1 = pwVar2 + (int)pwVar1, pwVar1 < param_2)) {
        FUN_007bf1f4(param_1,wVar4,pwVar1,pwVar2,param_4);
        pwVar2 = (wchar_t *)*param_1;
        pwVar1 = (wchar_t *)pwVar2[-3];
      }
      else {
        iVar3 = (int)param_2 - (int)pwVar2;
        FUN_007bf1f4(param_1,wVar4,pwVar1,pwVar2,param_4);
        pwVar2 = (wchar_t *)*param_1;
        pwVar1 = (wchar_t *)pwVar2[-3];
        param_2 = pwVar2 + (iVar3 >> 2);
      }
    }
    if (param_3 == 1) {
      pwVar2[(int)pwVar1] = *param_2;
    }
    else {
      wmemcpy(pwVar2 + (int)pwVar1,param_2,param_3);
      pwVar2 = (wchar_t *)*param_1;
    }
    if (pwVar2 + -3 != &DAT_00972504) {
      FUN_002e7178(pwVar2 + -3,wVar4);
    }
  }
  return param_1;
}

// ---- FUN_007bf444  @ 0x7bf444
void FUN_007bf444(undefined4 param_1,wchar_t *param_2,undefined4 param_3,undefined4 param_4)

{
  size_t sVar1;
  
  sVar1 = wcslen(param_2);
  FUN_007bf384(param_1,param_2,sVar1,param_4);
  return;
}

// ---- FUN_007bf474  @ 0x7bf474
void FUN_007bf474(undefined4 param_1,wchar_t *param_2,undefined4 param_3,undefined4 param_4)

{
  size_t sVar1;
  
  sVar1 = wcslen(param_2);
  FUN_007bf384(param_1,param_2,sVar1,param_4);
  return;
}

// ---- FUN_007bf490  @ 0x7bf490
int * FUN_007bf490(int *param_1,uint param_2,wchar_t param_3)

{
  int iVar1;
  int iVar2;
  uint uVar3;
  
  if (param_2 != 0) {
    iVar1 = *param_1;
    iVar2 = *(int *)(iVar1 + -0xc);
    if (0xffffffeU - iVar2 < param_2) {
                    /* WARNING: Subroutine does not return */
      FUN_007c49e8("basic_string::append");
    }
    uVar3 = param_2 + iVar2;
    if ((*(uint *)(iVar1 + -8) < uVar3) || (0 < *(int *)(iVar1 + -4))) {
      FUN_007bf1f4(param_1,uVar3);
      iVar1 = *param_1;
      iVar2 = *(int *)(iVar1 + -0xc);
    }
    if (param_2 == 1) {
      *(wchar_t *)(iVar1 + iVar2 * 4) = param_3;
    }
    else {
      wmemset((wchar_t *)(iVar1 + iVar2 * 4),param_3,param_2);
      iVar1 = *param_1;
    }
    if ((undefined4 *)(iVar1 + -0xc) != &DAT_00972504) {
      FUN_002e7178((undefined4 *)(iVar1 + -0xc),uVar3);
    }
  }
  return param_1;
}

// ---- FUN_007bf514  @ 0x7bf514
void FUN_007bf514(int *param_1,uint param_2)

{
  uint uVar1;
  
  uVar1 = *(uint *)(*param_1 + -0xc);
  if (0xffffffe < param_2) {
                    /* WARNING: Subroutine does not return */
    FUN_007c49e8("basic_string::resize");
  }
  if (param_2 <= uVar1) {
    if (uVar1 <= param_2) {
      return;
    }
    FUN_007bea54(param_1,param_2,uVar1 - param_2,0);
    return;
  }
  FUN_007bf490(param_1,param_2 - uVar1);
  return;
}

// ---- FUN_007bf55c  @ 0x7bf55c
void FUN_007bf55c(int *param_1,undefined4 param_2)

{
  int iVar1;
  int iVar2;
  uint uVar3;
  
  iVar2 = *param_1;
  iVar1 = *(int *)(iVar2 + -0xc);
  uVar3 = iVar1 + 1;
  if ((*(uint *)(iVar2 + -8) < uVar3) || (0 < *(int *)(iVar2 + -4))) {
    FUN_007bf1f4(param_1,uVar3);
    iVar2 = *param_1;
    iVar1 = *(int *)(iVar2 + -0xc);
  }
  *(undefined4 *)(iVar2 + iVar1 * 4) = param_2;
  if ((undefined4 *)(iVar2 + -0xc) == &DAT_00972504) {
    return;
  }
  FUN_002e7178((undefined4 *)(iVar2 + -0xc),uVar3);
  return;
}

// ---- FUN_007bf630  @ 0x7bf630
int * FUN_007bf630(int *param_1,int *param_2)

{
  bool bVar1;
  int *piVar2;
  int iVar3;
  undefined1 auStack_c [4];
  
  iVar3 = *param_2;
  if (*(int *)(iVar3 + -4) < 0) {
    iVar3 = FUN_007bf1a4((undefined4 *)(iVar3 + -0xc),auStack_c,0);
    *param_1 = iVar3;
    return param_1;
  }
  if ((undefined4 *)(iVar3 + -0xc) != &DAT_00972504) {
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

// ---- FUN_007bf684  @ 0x7bf684
int * FUN_007bf684(int *param_1,int *param_2)

{
  bool bVar1;
  undefined4 *puVar2;
  undefined4 *puVar3;
  int *piVar4;
  int iVar5;
  undefined1 auStack_14 [8];
  
  iVar5 = *param_2;
  puVar3 = (undefined4 *)(*param_1 + -0xc);
  puVar2 = (undefined4 *)(iVar5 + -0xc);
  if (puVar3 != puVar2) {
    if (*(int *)(iVar5 + -4) < 0) {
      iVar5 = FUN_007bf1a4(puVar2,auStack_14,0);
      puVar3 = (undefined4 *)(*param_1 + -0xc);
    }
    else if (puVar2 != &DAT_00972504) {
      piVar4 = (int *)(iVar5 + -4);
      DataMemoryBarrier(0x1f);
      do {
        ExclusiveAccess(piVar4);
        bVar1 = (bool)hasExclusiveAccess(piVar4);
      } while (!bVar1);
      *piVar4 = *piVar4 + 1;
      DataMemoryBarrier(0x1f);
      puVar3 = (undefined4 *)(*param_1 + -0xc);
    }
    if (puVar3 != &DAT_00972504) {
      FUN_002e7188(puVar3,auStack_14);
    }
    *param_1 = iVar5;
  }
  return param_1;
}

// ---- FUN_007bf858  @ 0x7bf858
wchar_t * FUN_007bf858(wchar_t *param_1,wchar_t *param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 *puVar1;
  wchar_t *__s1;
  size_t __n;
  
  if (param_1 == param_2) {
    return (wchar_t *)&DAT_00972510;
  }
  if (param_1 == (wchar_t *)0x0) {
    if (param_2 != (wchar_t *)0x0) {
                    /* WARNING: Subroutine does not return */
      FUN_007c48d4("basic_string::_S_construct null not valid");
    }
    puVar1 = (undefined4 *)FUN_007be93c();
    __s1 = puVar1 + 3;
    __n = 0;
  }
  else {
    __n = (int)param_2 - (int)param_1 >> 2;
    puVar1 = (undefined4 *)FUN_007be93c(__n,0,param_3,(int)param_2 - (int)param_1,param_4);
    __s1 = puVar1 + 3;
    if (__n == 1) {
      puVar1[3] = *param_1;
      goto LAB_007bf87e;
    }
  }
  wmemcpy(__s1,param_1,__n);
LAB_007bf87e:
  if (puVar1 != &DAT_00972504) {
    FUN_002e7178(puVar1,__n);
  }
  return __s1;
}

// ---- FUN_007bf8d0  @ 0x7bf8d0
undefined4 * FUN_007bf8d0(undefined4 *param_1,int *param_2,uint param_3,uint param_4)

{
  undefined4 uVar1;
  int iVar2;
  uint uVar3;
  undefined1 auStack_14 [4];
  
  iVar2 = *param_2;
  if (param_3 <= *(uint *)(iVar2 + -0xc)) {
    uVar3 = *(uint *)(iVar2 + -0xc) - param_3;
    if (param_4 < uVar3) {
      uVar3 = param_4;
    }
    uVar1 = FUN_007bf858(iVar2 + param_3 * 4,iVar2 + (param_3 + uVar3) * 4,auStack_14,0);
    *param_1 = uVar1;
    return param_1;
  }
                    /* WARNING: Subroutine does not return */
  FUN_007c4a44("basic_string::basic_string");
}

// ---- FUN_007bf988  @ 0x7bf988
wchar_t * FUN_007bf988(wchar_t *param_1,wchar_t *param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 *puVar1;
  wchar_t *__s1;
  size_t __n;
  
  if (param_1 == param_2) {
    return (wchar_t *)&DAT_00972510;
  }
  if (param_1 == (wchar_t *)0x0) {
    if (param_2 != (wchar_t *)0x0) {
                    /* WARNING: Subroutine does not return */
      FUN_007c48d4("basic_string::_S_construct null not valid");
    }
    puVar1 = (undefined4 *)FUN_007be93c();
    __s1 = puVar1 + 3;
    __n = 0;
  }
  else {
    __n = (int)param_2 - (int)param_1 >> 2;
    puVar1 = (undefined4 *)FUN_007be93c(__n,0,param_3,(int)param_2 - (int)param_1,param_4);
    __s1 = puVar1 + 3;
    if (__n == 1) {
      puVar1[3] = *param_1;
      goto LAB_007bf9ae;
    }
  }
  wmemcpy(__s1,param_1,__n);
LAB_007bf9ae:
  if (puVar1 != &DAT_00972504) {
    FUN_002e7178(puVar1,__n);
  }
  return __s1;
}

// ---- FUN_007bfa00  @ 0x7bfa00
undefined4 * FUN_007bfa00(undefined4 *param_1,int param_2,int param_3,undefined4 param_4)

{
  undefined4 uVar1;
  
  uVar1 = FUN_007bf988(param_2,param_2 + param_3 * 4,param_4,0);
  *param_1 = uVar1;
  return param_1;
}

// ---- FUN_007bfa1c  @ 0x7bfa1c
uint * FUN_007bfa1c(uint *param_1,uint param_2,uint param_3,uint param_4,uint param_5)

{
  uint *puVar1;
  uint uVar2;
  uint uVar3;
  uint uVar4;
  int iVar5;
  undefined1 auStack_28 [4];
  int local_24 [2];
  
  uVar2 = *param_1;
  uVar3 = *(uint *)(uVar2 - 0xc);
  if (uVar3 < param_2) {
                    /* WARNING: Subroutine does not return */
    FUN_007c4a44("basic_string::replace");
  }
  uVar4 = uVar3 - param_2;
  if (param_3 <= uVar3 - param_2) {
    uVar4 = param_3;
  }
  if ((0xffffffe - uVar3) + uVar4 < param_5) {
                    /* WARNING: Subroutine does not return */
    FUN_007c49e8("basic_string::replace");
  }
  if (((param_4 < uVar2) || (uVar2 + uVar3 * 4 < param_4)) || (0 < *(int *)(uVar2 - 4))) {
    puVar1 = (uint *)FUN_007bee64(param_1,param_2,uVar4,param_4,param_5);
    return puVar1;
  }
  if (uVar2 + param_2 * 4 < param_4 + param_5 * 4) {
    if (param_4 < uVar2 + (uVar4 + param_2) * 4) {
      FUN_007bfa00(local_24,param_4,param_5,auStack_28);
      puVar1 = (uint *)FUN_007bee64(param_1,param_2,uVar4,local_24[0],param_5);
      if ((undefined4 *)(local_24[0] + -0xc) == &DAT_00972504) {
        return puVar1;
      }
      FUN_002e7188((undefined4 *)(local_24[0] + -0xc),auStack_28);
      return puVar1;
    }
    iVar5 = (param_5 + ((int)(param_4 - uVar2) >> 2)) - uVar4;
  }
  else {
    iVar5 = (int)(param_4 - uVar2) >> 2;
  }
  FUN_007bea54(param_1,param_2,uVar4,param_5);
  uVar2 = *param_1;
  if (param_5 != 1) {
    wmemcpy((wchar_t *)(uVar2 + param_2 * 4),(wchar_t *)(uVar2 + iVar5 * 4),param_5);
    return param_1;
  }
  *(undefined4 *)(uVar2 + param_2 * 4) = *(undefined4 *)(uVar2 + iVar5 * 4);
  return param_1;
}

// ---- FUN_007bfb58  @ 0x7bfb58
void FUN_007bfb58(void)

{
  int *in_r3;
  uint in_stack_00000000;
  
  if (*(uint *)(*in_r3 + -0xc) < in_stack_00000000) {
                    /* WARNING: Subroutine does not return */
    FUN_007c4a44("basic_string::replace");
  }
  FUN_007bfa1c();
  return;
}

// ---- FUN_007bfb8c  @ 0x7bfb8c
void FUN_007bfb8c(undefined4 param_1,undefined4 param_2,undefined4 param_3,wchar_t *param_4)

{
  size_t sVar1;
  
  sVar1 = wcslen(param_4);
  FUN_007bfa1c(param_1,param_2,param_3,param_4,sVar1);
  return;
}

// ---- FUN_007bfbe4  @ 0x7bfbe4
void FUN_007bfbe4(int *param_1,int param_2,int param_3,wchar_t *param_4)

{
  size_t sVar1;
  
  sVar1 = wcslen(param_4);
  FUN_007bfa1c(param_1,param_2 - *param_1 >> 2,param_3 - param_2 >> 2,param_4,sVar1);
  return;
}

// ---- FUN_007bfca0  @ 0x7bfca0
undefined4 * FUN_007bfca0(undefined4 *param_1,wchar_t *param_2,undefined4 param_3)

{
  size_t sVar1;
  undefined4 uVar2;
  wchar_t *pwVar3;
  
  pwVar3 = (wchar_t *)0xfffffffc;
  if (param_2 != (wchar_t *)0x0) {
    sVar1 = wcslen(param_2);
    pwVar3 = param_2 + sVar1;
  }
  uVar2 = FUN_007bf988(param_2,pwVar3,param_3,0);
  *param_1 = uVar2;
  return param_1;
}

// ---- FUN_007bfccc  @ 0x7bfccc
undefined4 * FUN_007bfccc(undefined4 *param_1,int param_2,int param_3,undefined4 param_4)

{
  undefined4 uVar1;
  
  uVar1 = FUN_007bf988(param_2,param_2 + param_3 * 4,param_4,0);
  *param_1 = uVar1;
  return param_1;
}

// ---- FUN_007bfcf4  @ 0x7bfcf4
undefined4 *
FUN_007bfcf4(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  
  uVar1 = FUN_007bf988(param_2,param_3,param_4,0);
  *param_1 = uVar1;
  return param_1;
}

// ---- FUN_007bfd24  @ 0x7bfd24
longlong * FUN_007bfd24(longlong *param_1)

{
  timespec local_18;
  
  clock_gettime(0,&local_18);
  *param_1 = (longlong)local_18.tv_sec * 1000000000 + (longlong)local_18.tv_nsec;
  return param_1;
}

// ---- FUN_007bfd50  @ 0x7bfd50
longlong * FUN_007bfd50(longlong *param_1)

{
  timespec local_18;
  
  clock_gettime(1,&local_18);
  *param_1 = (longlong)local_18.tv_sec * 1000000000 + (longlong)local_18.tv_nsec;
  return param_1;
}

// ---- FUN_007bfda0  @ 0x7bfda0
void FUN_007bfda0(pthread_t *param_1)

{
  int iVar1;
  
  iVar1 = pthread_equal(*param_1,0);
  if (iVar1 == 0) {
    iVar1 = pthread_detach(*param_1);
    if (iVar1 == 0) {
      *param_1 = 0;
      return;
    }
  }
  else {
    iVar1 = 0x16;
  }
                    /* WARNING: Subroutine does not return */
  FUN_007c4c60(iVar1);
}

// ---- FUN_007bfdd4  @ 0x7bfdd4
void FUN_007bfdd4(__time_t param_1,undefined4 param_2,long param_3)

{
  timespec local_10;
  
  local_10.tv_sec = param_1;
  local_10.tv_nsec = param_3;
  nanosleep(&local_10,(timespec *)0x0);
  return;
}

// ---- FUN_007bfe74  @ 0x7bfe74
void FUN_007bfe74(pthread_t *param_1,int *param_2)

{
  bool bVar1;
  int iVar2;
  int *piVar3;
  int iVar4;
  int iVar5;
  int *piVar6;
  int *piVar7;
  
  iVar5 = *param_2;
  piVar7 = (int *)param_2[1];
  piVar6 = *(int **)(iVar5 + 8);
  *(int *)(iVar5 + 4) = iVar5;
  if (piVar7 != piVar6) {
    if (piVar7 != (int *)0x0) {
      piVar6 = piVar7 + 1;
      DataMemoryBarrier(0x1f);
      do {
        ExclusiveAccess(piVar6);
        bVar1 = (bool)hasExclusiveAccess(piVar6);
      } while (!bVar1);
      *piVar6 = *piVar6 + 1;
      DataMemoryBarrier(0x1f);
      piVar6 = *(int **)(iVar5 + 8);
    }
    if (piVar6 != (int *)0x0) {
      piVar3 = piVar6 + 1;
      DataMemoryBarrier(0x1f);
      do {
        ExclusiveAccess(piVar3);
        iVar2 = *piVar3;
        bVar1 = (bool)hasExclusiveAccess(piVar3);
      } while (!bVar1);
      *piVar3 = iVar2 + -1;
      DataMemoryBarrier(0x1f);
      if (iVar2 == 1) {
        (**(code **)(*piVar6 + 8))(piVar6);
        piVar3 = piVar6 + 2;
        DataMemoryBarrier(0x1f);
        do {
          ExclusiveAccess(piVar3);
          iVar2 = *piVar3;
          bVar1 = (bool)hasExclusiveAccess(piVar3);
        } while (!bVar1);
        *piVar3 = iVar2 + -1;
        DataMemoryBarrier(0x1f);
        if (iVar2 == 1) {
          (**(code **)(*piVar6 + 0xc))(piVar6);
        }
      }
    }
    *(int **)(iVar5 + 8) = piVar7;
  }
  iVar5 = pthread_create(param_1,(pthread_attr_t *)0x0,(__start_routine *)&LAB_007bfdec_1,
                         (void *)*param_2);
  if (iVar5 == 0) {
    return;
  }
  iVar4 = *param_2;
  iVar2 = *(int *)(iVar4 + 8);
  *(undefined4 *)(iVar4 + 4) = 0;
  *(undefined4 *)(iVar4 + 8) = 0;
  if (iVar2 != 0) {
    FUN_0033ce90();
  }
                    /* WARNING: Subroutine does not return */
  FUN_007c4c60(iVar5);
}

// ---- FUN_007bff24  @ 0x7bff24
int FUN_007bff24(int param_1,int param_2,int param_3)

{
  int iVar1;
  
  iVar1 = FUN_007ae2b4(param_1 + 0x24);
  if (iVar1 == 0) {
    if (param_2 == 0 && param_3 == 0) {
      *(undefined4 *)(param_1 + 0x40) = 1;
    }
    else {
      iVar1 = 0;
      if (param_2 != 0) {
        iVar1 = param_3;
      }
      if ((param_2 != 0 && param_3 != 0) && -1 < iVar1) {
        *(int *)(param_1 + 0x3c) = param_2;
        *(int *)(param_1 + 0x40) = param_3;
      }
    }
  }
  return param_1;
}

// ---- FUN_007bff54  @ 0x7bff54
int FUN_007bff54(int param_1,int param_2,int param_3)

{
  int iVar1;
  
  iVar1 = FUN_007ae2b4(param_1 + 0x24);
  if (iVar1 == 0) {
    if (param_2 == 0 && param_3 == 0) {
      *(undefined4 *)(param_1 + 0x40) = 1;
    }
    else {
      iVar1 = 0;
      if (param_2 != 0) {
        iVar1 = param_3;
      }
      if ((param_2 != 0 && param_3 != 0) && -1 < iVar1) {
        *(int *)(param_1 + 0x3c) = param_2;
        *(int *)(param_1 + 0x40) = param_3;
      }
    }
  }
  return param_1;
}

// ---- FUN_007bff84  @ 0x7bff84
int FUN_007bff84(int param_1)

{
  int iVar1;
  int iVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  
  if (*(int *)(param_1 + 0x2c) << 0x1c < 0) {
    iVar1 = FUN_007ae2b4(param_1 + 0x24);
    if (iVar1 != 0) {
      iVar1 = *(int *)(param_1 + 0xc) - *(int *)(param_1 + 8);
      if (*(int **)(param_1 + 0x54) == (int *)0x0) {
                    /* WARNING: Subroutine does not return */
        FUN_007c4874();
      }
      iVar2 = (**(code **)(**(int **)(param_1 + 0x54) + 0x14))();
      if (iVar2 < 0) {
        return iVar1;
      }
      uVar3 = FUN_007ae408(param_1 + 0x24);
      uVar4 = (**(code **)(**(int **)(param_1 + 0x54) + 0x20))();
      iVar2 = __divsi3(uVar3,uVar4);
      return iVar1 + iVar2;
    }
  }
  return -1;
}
