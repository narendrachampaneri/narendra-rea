// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 4 functions

// ---- FUN_006f82f4  @ 0x6f82f4
void FUN_006f82f4(int param_1,undefined4 param_2,undefined4 param_3,int param_4,uint param_5)

{
  uint uVar1;
  size_t __n;
  char *pcVar2;
  uint uVar3;
  size_t sVar4;
  char acStack_60 [52];
  int local_2c;
  
  uVar3 = 0;
  local_2c = __stack_chk_guard;
  *(undefined4 *)(param_1 + 0x138) = param_2;
  *(undefined4 *)(param_1 + 0x13c) = param_3;
  do {
    *(undefined4 *)(param_1 + 0x144) = *(undefined4 *)(param_1 + 0x170);
    *(undefined4 *)(param_1 + 0x148) = *(undefined4 *)(param_1 + 0x174);
    uVar1 = inflate(param_1 + 0x138,0);
    sVar4 = *(int *)(param_1 + 0x174) - *(int *)(param_1 + 0x148);
    if (uVar1 < 2 && 0 < (int)sVar4) {
      if (uVar3 < param_5 && param_4 != 0) {
        __n = param_5 - uVar3;
        if ((int)sVar4 <= (int)(param_5 - uVar3)) {
          __n = sVar4;
        }
        memcpy((void *)(param_4 + uVar3),*(void **)(param_1 + 0x170),__n);
      }
      uVar3 = uVar3 + sVar4;
    }
  } while (uVar1 == 0);
  *(undefined4 *)(param_1 + 0x13c) = 0;
  inflateReset(param_1 + 0x138);
  if (uVar1 != 1) {
    pcVar2 = *(undefined1 **)(param_1 + 0x150);
    if (*(undefined1 **)(param_1 + 0x150) == (undefined1 *)0x0) {
      if (uVar1 == 0xfffffffb) {
        pcVar2 = "Buffer error in compressed datastream in %s chunk";
      }
      else if (uVar1 == 0xfffffffd) {
        pcVar2 = "Data error in compressed datastream in %s chunk";
      }
      else {
        pcVar2 = "Incomplete compressed datastream in %s chunk";
      }
      snprintf(acStack_60,0x34,pcVar2,param_1 + 0x1e0);
      pcVar2 = acStack_60;
    }
    uVar3 = 0;
    png_warning(param_1,pcVar2);
  }
  if (local_2c != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar3);
  }
  return;
}

// ---- FUN_006fd6c0  @ 0x6fd6c0
void FUN_006fd6c0(int param_1,undefined4 param_2,int param_3,int param_4,undefined4 *param_5)

{
  int iVar1;
  void *pvVar2;
  undefined4 uVar3;
  uint uVar4;
  int iVar5;
  void *pvVar6;
  int iVar7;
  char acStack_60 [52];
  int local_2c;
  
  local_2c = __stack_chk_guard;
  *param_5 = 0;
  param_5[1] = 0;
  iVar5 = param_1;
  if (param_4 == -1) {
    iVar5 = param_3;
  }
  param_5[2] = 0;
  param_5[3] = 0;
  param_5[4] = 0;
  if (param_4 == -1) {
    *param_5 = param_2;
    param_5[1] = iVar5;
  }
  else {
    if (2 < param_4) {
      snprintf(acStack_60,0x32,"Unknown compression type %d");
      png_warning(param_1,acStack_60);
    }
    *(int *)(param_1 + 0x13c) = param_3;
    iVar5 = param_1 + 0x138;
    *(undefined4 *)(param_1 + 0x148) = *(undefined4 *)(param_1 + 0x174);
    *(undefined4 *)(param_1 + 0x138) = param_2;
    *(undefined4 *)(param_1 + 0x144) = *(undefined4 *)(param_1 + 0x170);
    do {
      iVar1 = deflate(iVar5,0);
      if (iVar1 != 0) {
        if (*(int *)(param_1 + 0x150) == 0) {
          png_error(param_1,"zlib error");
        }
        else {
          png_error(param_1);
        }
      }
      if (*(int *)(param_1 + 0x148) == 0) {
        iVar7 = param_5[3];
        iVar1 = param_5[2];
        if (iVar1 < iVar7) {
          iVar7 = param_5[4];
        }
        else {
          iVar1 = iVar1 + 4;
          pvVar6 = (void *)param_5[4];
          param_5[3] = iVar1;
          if (pvVar6 == (void *)0x0) {
            iVar7 = png_malloc(param_1,iVar1 * 4);
            iVar1 = param_5[2];
            param_5[4] = iVar7;
          }
          else {
            pvVar2 = (void *)png_malloc(param_1,iVar1 * 4);
            param_5[4] = pvVar2;
            memcpy(pvVar2,pvVar6,iVar7 << 2);
            png_free(param_1,pvVar6);
            iVar7 = param_5[4];
            iVar1 = param_5[2];
          }
        }
        uVar3 = png_malloc(param_1,*(undefined4 *)(param_1 + 0x174));
        *(undefined4 *)(iVar7 + iVar1 * 4) = uVar3;
        memcpy(*(void **)(param_5[4] + param_5[2] * 4),*(void **)(param_1 + 0x170),
               *(size_t *)(param_1 + 0x174));
        param_5[2] = param_5[2] + 1;
        *(undefined4 *)(param_1 + 0x148) = *(undefined4 *)(param_1 + 0x174);
        *(undefined4 *)(param_1 + 0x144) = *(undefined4 *)(param_1 + 0x170);
      }
    } while (*(int *)(param_1 + 0x13c) != 0);
LAB_006fd7d4:
    iVar1 = deflate(iVar5,4);
    while (iVar1 == 0) {
      if (*(int *)(param_1 + 0x148) != 0) goto LAB_006fd7d4;
      iVar7 = param_5[3];
      iVar1 = param_5[2];
      if (iVar1 < iVar7) {
        iVar7 = param_5[4];
      }
      else {
        iVar1 = iVar1 + 4;
        pvVar6 = (void *)param_5[4];
        param_5[3] = iVar1;
        if (pvVar6 == (void *)0x0) {
          iVar7 = png_malloc(param_1,iVar1 * 4);
          iVar1 = param_5[2];
          param_5[4] = iVar7;
        }
        else {
          pvVar2 = (void *)png_malloc(param_1,iVar1 * 4);
          param_5[4] = pvVar2;
          memcpy(pvVar2,pvVar6,iVar7 << 2);
          png_free(param_1,pvVar6);
          iVar7 = param_5[4];
          iVar1 = param_5[2];
        }
      }
      uVar3 = png_malloc(param_1,*(undefined4 *)(param_1 + 0x174));
      *(undefined4 *)(iVar7 + iVar1 * 4) = uVar3;
      memcpy(*(void **)(param_5[4] + param_5[2] * 4),*(void **)(param_1 + 0x170),
             *(size_t *)(param_1 + 0x174));
      param_5[2] = param_5[2] + 1;
      *(undefined4 *)(param_1 + 0x148) = *(undefined4 *)(param_1 + 0x174);
      *(undefined4 *)(param_1 + 0x144) = *(undefined4 *)(param_1 + 0x170);
      iVar1 = deflate(iVar5,4);
    }
    if (iVar1 != 1) {
      if (*(int *)(param_1 + 0x150) == 0) {
        png_error(param_1,"zlib error");
      }
      else {
        png_error(param_1);
      }
      goto LAB_006fd7d4;
    }
    uVar4 = *(uint *)(param_1 + 0x174);
    iVar5 = param_5[2] * uVar4;
    if (*(uint *)(param_1 + 0x148) < uVar4) {
      iVar5 = iVar5 + (uVar4 - *(uint *)(param_1 + 0x148));
    }
  }
  if (local_2c != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(iVar5);
  }
  return;
}

// ---- FUN_006fdbc4  @ 0x6fdbc4
void FUN_006fdbc4(int param_1,int *param_2)

{
  uint uVar1;
  uint uVar2;
  int iVar3;
  
  if (*param_2 != 0) {
    png_write_chunk_data(param_1,*param_2,param_2[1]);
    return;
  }
  if (0 < param_2[2]) {
    iVar3 = 0;
    do {
      png_write_chunk_data
                (param_1,*(undefined4 *)(param_2[4] + iVar3 * 4),*(undefined4 *)(param_1 + 0x174));
      png_free(param_1,*(undefined4 *)(param_2[4] + iVar3 * 4));
      *(undefined4 *)(param_2[4] + iVar3 * 4) = 0;
      iVar3 = iVar3 + 1;
    } while (iVar3 < param_2[2]);
  }
  if (param_2[3] == 0) {
    param_2[4] = 0;
    uVar2 = *(uint *)(param_1 + 0x148);
    uVar1 = *(uint *)(param_1 + 0x174);
    if (uVar1 <= uVar2) goto LAB_006fdc24;
  }
  else {
    png_free(param_1,param_2[4]);
    param_2[4] = 0;
    uVar2 = *(uint *)(param_1 + 0x148);
    uVar1 = *(uint *)(param_1 + 0x174);
    if (uVar1 <= uVar2) goto LAB_006fdc24;
  }
  png_write_chunk_data(param_1,*(undefined4 *)(param_1 + 0x170),uVar1 - uVar2);
LAB_006fdc24:
  deflateReset(param_1 + 0x138);
  *(undefined4 *)(param_1 + 0x164) = 0;
  return;
}

// ---- FUN_006fff64  @ 0x6fff64
void FUN_006fff64(int param_1)

{
  undefined4 uVar1;
  int iVar2;
  
  iVar2 = *(int *)(param_1 + 400);
  if (*(int *)(param_1 + 0x120) < 2) {
    if (*(uint *)(iVar2 + 8) < *(int *)(param_1 + 0x11c) - 1U) {
      uVar1 = *(undefined4 *)(*(int *)(param_1 + 0x124) + 0xc);
    }
    else {
      uVar1 = *(undefined4 *)(*(int *)(param_1 + 0x124) + 0x4c);
    }
    *(undefined4 *)(iVar2 + 0x14) = uVar1;
  }
  else {
    *(undefined4 *)(iVar2 + 0x14) = 1;
  }
  *(undefined4 *)(iVar2 + 0xc) = 0;
  *(undefined4 *)(iVar2 + 0x10) = 0;
  return;
}
