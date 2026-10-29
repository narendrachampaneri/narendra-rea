// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 263 functions

// ---- FUN_007c0080  @ 0x7c0080
uint FUN_007c0080(int *param_1,uint param_2)

{
  int iVar1;
  uint uVar2;
  undefined1 *puVar3;
  char cVar4;
  int local_28;
  int iStack_24;
  
  if (-1 < param_1[0xb] << 0x1c) {
    return 0xffffffff;
  }
  if (*(char *)((int)param_1 + 0x46) == '\0') {
    uVar2 = param_1[2];
    cVar4 = (char)param_1[0x14];
    if ((uint)param_1[1] < uVar2) {
      param_1[2] = uVar2 - 1;
      uVar2 = (uint)*(byte *)(uVar2 - 1);
      goto LAB_007c00a8;
    }
  }
  else {
    iVar1 = (**(code **)(*param_1 + 0x34))(param_1,0xffffffff);
    if (iVar1 == -1) {
      return 0xffffffff;
    }
    iVar1 = param_1[0xf];
    cVar4 = (char)param_1[0x14];
    param_1[5] = 0;
    param_1[1] = iVar1;
    param_1[2] = iVar1;
    param_1[3] = iVar1;
    param_1[4] = 0;
    param_1[6] = 0;
    *(undefined1 *)((int)param_1 + 0x46) = 0;
  }
  (**(code **)(*param_1 + 0x10))(&local_28,param_1,0xffffffff,0xffffffff,1,0x18);
  if (iStack_24 == -1 && local_28 == -1) {
    return 0xffffffff;
  }
  uVar2 = (**(code **)(*param_1 + 0x24))(param_1);
  if (uVar2 == 0xffffffff) {
    return 0xffffffff;
  }
LAB_007c00a8:
  if (param_2 == 0xffffffff) {
    return 0;
  }
  if (param_2 != uVar2) {
    if (cVar4 != '\0') {
      return 0xffffffff;
    }
    if ((char)param_1[0x14] == '\0') {
      puVar3 = (undefined1 *)((int)param_1 + 0x47);
      param_1[1] = (int)puVar3;
      param_1[0x12] = param_1[2];
      param_1[0x13] = param_1[3];
      param_1[2] = (int)puVar3;
      param_1[3] = (int)(param_1 + 0x12);
      *(undefined1 *)(param_1 + 0x14) = 1;
    }
    else {
      puVar3 = (undefined1 *)param_1[2];
    }
    *(undefined1 *)((int)param_1 + 0x45) = 1;
    *puVar3 = (char)param_2;
    return param_2;
  }
  return param_2;
}

// ---- FUN_007c0154  @ 0x7c0154
int FUN_007c0154(int *param_1,int param_2)

{
  int iVar1;
  uint uVar2;
  int *piVar3;
  char cVar4;
  int local_28;
  int iStack_24;
  
  if (-1 < param_1[0xb] << 0x1c) {
    return -1;
  }
  if (*(char *)((int)param_1 + 0x46) == '\0') {
    uVar2 = param_1[2];
    cVar4 = (char)param_1[0x15];
    if ((uint)param_1[1] < uVar2) {
      iVar1 = *(int *)(uVar2 - 4);
      param_1[2] = uVar2 - 4;
      goto LAB_007c017c;
    }
  }
  else {
    iVar1 = (**(code **)(*param_1 + 0x34))(param_1,0xffffffff);
    if (iVar1 == -1) {
      return -1;
    }
    iVar1 = param_1[0xf];
    cVar4 = (char)param_1[0x15];
    param_1[5] = 0;
    param_1[1] = iVar1;
    param_1[2] = iVar1;
    param_1[3] = iVar1;
    param_1[4] = 0;
    param_1[6] = 0;
    *(undefined1 *)((int)param_1 + 0x46) = 0;
  }
  (**(code **)(*param_1 + 0x10))(&local_28,param_1,0xffffffff,0xffffffff,1,0x18);
  if (iStack_24 == -1 && local_28 == -1) {
    return -1;
  }
  iVar1 = (**(code **)(*param_1 + 0x24))(param_1);
  if (iVar1 == -1) {
    return -1;
  }
LAB_007c017c:
  if (param_2 == -1) {
    return 0;
  }
  if (param_2 != iVar1) {
    if (cVar4 != '\0') {
      return -1;
    }
    if ((char)param_1[0x15] == '\0') {
      piVar3 = param_1 + 0x12;
      param_1[1] = (int)piVar3;
      param_1[0x13] = param_1[2];
      param_1[0x14] = param_1[3];
      param_1[2] = (int)piVar3;
      param_1[3] = (int)(param_1 + 0x13);
      *(undefined1 *)(param_1 + 0x15) = 1;
    }
    else {
      piVar3 = (int *)param_1[2];
    }
    *(undefined1 *)((int)param_1 + 0x45) = 1;
    *piVar3 = param_2;
    return param_2;
  }
  return param_2;
}

// ---- FUN_007c0228  @ 0x7c0228
int FUN_007c0228(int param_1,undefined4 param_2,int param_3)

{
  int iVar1;
  int iVar2;
  int iVar3;
  
  iVar3 = *(int *)(param_1 + 0x2c);
  if (*(int **)(param_1 + 0x54) == (int *)0x0) {
                    /* WARNING: Subroutine does not return */
    FUN_007c4874();
  }
  iVar1 = (**(code **)(**(int **)(param_1 + 0x54) + 0x18))();
  if (((iVar1 != 0) && (iVar3 << 0x1b < 0)) && (*(char *)(param_1 + 0x45) == '\0')) {
    iVar3 = *(int *)(param_1 + 0x18) - *(int *)(param_1 + 0x14);
    if ((*(char *)(param_1 + 0x46) == '\0') && (1 < *(uint *)(param_1 + 0x40))) {
      iVar3 = *(uint *)(param_1 + 0x40) - 1;
    }
    if (0x3ff < iVar3) {
      iVar3 = 0x400;
    }
    if (iVar3 <= param_3) {
      iVar1 = *(int *)(param_1 + 0x14) - *(int *)(param_1 + 0x10);
      iVar3 = FUN_007ae350(param_1 + 0x24,*(int *)(param_1 + 0x10),iVar1,param_2,param_3);
      if (iVar3 == param_3 + iVar1) {
        iVar2 = *(int *)(param_1 + 0x3c);
        *(int *)(param_1 + 4) = iVar2;
        *(int *)(param_1 + 8) = iVar2;
        *(int *)(param_1 + 0xc) = iVar2;
        if ((*(int *)(param_1 + 0x2c) << 0x1b < 0) && (1 < *(uint *)(param_1 + 0x40))) {
          *(int *)(param_1 + 0x14) = iVar2;
          *(int *)(param_1 + 0x10) = iVar2;
          *(uint *)(param_1 + 0x18) = (*(uint *)(param_1 + 0x40) - 1) + iVar2;
        }
        else {
          *(undefined4 *)(param_1 + 0x14) = 0;
          *(undefined4 *)(param_1 + 0x10) = 0;
          *(undefined4 *)(param_1 + 0x18) = 0;
        }
        *(undefined1 *)(param_1 + 0x46) = 1;
      }
      if (iVar1 < iVar3) {
        iVar3 = iVar3 - iVar1;
      }
      else {
        iVar3 = 0;
      }
      return iVar3;
    }
  }
  iVar3 = FUN_00799cfc(param_1,param_2,param_3);
  return iVar3;
}

// ---- FUN_007c02dc  @ 0x7c02dc
int FUN_007c02dc(int param_1,undefined4 param_2,int param_3)

{
  int iVar1;
  int iVar2;
  int iVar3;
  
  iVar3 = *(int *)(param_1 + 0x2c);
  if (*(int **)(param_1 + 0x58) == (int *)0x0) {
                    /* WARNING: Subroutine does not return */
    FUN_007c4874();
  }
  iVar1 = (**(code **)(**(int **)(param_1 + 0x58) + 0x18))();
  if (((iVar1 != 0) && (iVar3 << 0x1b < 0)) && (*(char *)(param_1 + 0x45) == '\0')) {
    iVar3 = *(int *)(param_1 + 0x18) - *(int *)(param_1 + 0x14) >> 2;
    if ((*(char *)(param_1 + 0x46) == '\0') && (1 < *(uint *)(param_1 + 0x40))) {
      iVar3 = *(uint *)(param_1 + 0x40) - 1;
    }
    if (0x3ff < iVar3) {
      iVar3 = 0x400;
    }
    if (iVar3 <= param_3) {
      iVar1 = *(int *)(param_1 + 0x14) - *(int *)(param_1 + 0x10) >> 2;
      iVar3 = FUN_007ae350(param_1 + 0x24,*(int *)(param_1 + 0x10),iVar1,param_2,param_3);
      if (iVar3 == param_3 + iVar1) {
        iVar2 = *(int *)(param_1 + 0x3c);
        *(int *)(param_1 + 4) = iVar2;
        *(int *)(param_1 + 8) = iVar2;
        *(int *)(param_1 + 0xc) = iVar2;
        if ((*(int *)(param_1 + 0x2c) << 0x1b < 0) && (1 < *(uint *)(param_1 + 0x40))) {
          *(int *)(param_1 + 0x14) = iVar2;
          *(int *)(param_1 + 0x10) = iVar2;
          *(uint *)(param_1 + 0x18) = iVar2 + (*(uint *)(param_1 + 0x40) + 0x3fffffff) * 4;
        }
        else {
          *(undefined4 *)(param_1 + 0x14) = 0;
          *(undefined4 *)(param_1 + 0x10) = 0;
          *(undefined4 *)(param_1 + 0x18) = 0;
        }
        *(undefined1 *)(param_1 + 0x46) = 1;
      }
      if (iVar1 < iVar3) {
        iVar3 = iVar3 - iVar1;
      }
      else {
        iVar3 = 0;
      }
      return iVar3;
    }
  }
  iVar3 = FUN_00799e3c(param_1,param_2,param_3);
  return iVar3;
}

// ---- FUN_007c068c  @ 0x7c068c
int FUN_007c068c(int *param_1,undefined1 *param_2,int param_3)

{
  int iVar1;
  undefined1 *puVar2;
  undefined1 *puVar3;
  int iVar4;
  uint uVar5;
  size_t __n;
  
  if ((char)param_1[0x14] == '\0') {
    iVar4 = 0;
    if (*(char *)((int)param_1 + 0x46) != '\0') {
      iVar1 = (**(code **)(*param_1 + 0x34))(param_1,0xffffffff);
      iVar4 = 0;
      if (iVar1 == -1) {
        return 0;
      }
      iVar1 = param_1[0xf];
      param_1[5] = 0;
      param_1[4] = 0;
      param_1[6] = 0;
      *(undefined1 *)((int)param_1 + 0x46) = 0;
      param_1[1] = iVar1;
      param_1[2] = iVar1;
      param_1[3] = iVar1;
    }
  }
  else {
    puVar3 = (undefined1 *)param_1[2];
    if (param_3 < 1) {
      iVar4 = 0;
      puVar2 = (undefined1 *)param_1[1];
    }
    else {
      puVar2 = (undefined1 *)param_1[1];
      if (puVar3 == puVar2) {
        puVar2 = param_2 + 1;
        param_3 = param_3 + -1;
        iVar4 = 1;
        *param_2 = *puVar3;
        puVar3 = (undefined1 *)(param_1[2] + 1);
        param_1[2] = (int)puVar3;
        param_2 = puVar2;
        if ((char)param_1[0x14] == '\0') goto LAB_007c06ce;
        puVar2 = (undefined1 *)param_1[1];
        iVar4 = 1;
      }
      else {
        iVar4 = 0;
      }
    }
    iVar1 = param_1[0x12];
    if (puVar3 != puVar2) {
      iVar1 = iVar1 + 1;
    }
    param_1[0x12] = iVar1;
    param_1[3] = param_1[0x13];
    param_1[1] = param_1[0xf];
    param_1[2] = iVar1;
    *(undefined1 *)(param_1 + 0x14) = 0;
  }
LAB_007c06ce:
  uVar5 = param_1[0xb];
  if ((uint)param_1[0x10] < 2) {
    iVar1 = 1;
  }
  else {
    iVar1 = param_1[0x10] - 1;
  }
  if (iVar1 < param_3) {
    if ((int *)param_1[0x15] == (int *)0x0) {
                    /* WARNING: Subroutine does not return */
      FUN_007c4874();
    }
    iVar1 = (**(code **)(*(int *)param_1[0x15] + 0x18))();
    if ((iVar1 != 0) && ((uVar5 & 8) != 0)) {
      __n = param_1[3] - param_1[2];
      if (__n != 0) {
        memcpy(param_2,(void *)param_1[2],__n);
        iVar4 = iVar4 + __n;
        param_3 = param_3 - __n;
        param_2 = param_2 + __n;
        param_1[2] = param_1[2] + __n;
      }
      while( true ) {
        iVar1 = FUN_007ae314(param_1 + 9,param_2,param_3);
        if (iVar1 == -1) {
                    /* WARNING: Subroutine does not return */
          FUN_007c4c10("basic_filebuf::xsgetn error reading the file");
        }
        if (iVar1 == 0) break;
        param_3 = param_3 - iVar1;
        iVar4 = iVar4 + iVar1;
        if (param_3 == 0) goto LAB_007c079c;
        param_2 = param_2 + iVar1;
      }
      if (param_3 != 0) {
        iVar1 = param_1[0xf];
        param_1[5] = 0;
        param_1[4] = 0;
        param_1[6] = 0;
        *(undefined1 *)((int)param_1 + 0x45) = 0;
        param_1[1] = iVar1;
        param_1[2] = iVar1;
        param_1[3] = iVar1;
        return iVar4;
      }
LAB_007c079c:
      iVar1 = param_1[0xf];
      param_1[1] = iVar1;
      param_1[2] = iVar1;
      param_1[3] = iVar1;
      if ((param_1[0xb] << 0x1b < 0) && (1 < (uint)param_1[0x10])) {
        param_1[5] = iVar1;
        param_1[4] = iVar1;
        param_1[6] = (param_1[0x10] - 1U) + iVar1;
      }
      else {
        param_1[5] = 0;
        param_1[4] = 0;
        param_1[6] = 0;
      }
      *(undefined1 *)((int)param_1 + 0x45) = 1;
      return iVar4;
    }
  }
  iVar1 = FUN_00799c98(param_1,param_2,param_3);
  return iVar4 + iVar1;
}

// ---- FUN_007c0b10  @ 0x7c0b10
int FUN_007c0b10(int *param_1,wchar_t *param_2,int param_3)

{
  size_t __n;
  wchar_t *pwVar1;
  wchar_t *pwVar2;
  int iVar3;
  int iVar4;
  uint uVar5;
  
  if ((char)param_1[0x15] == '\0') {
    iVar4 = 0;
    if (*(char *)((int)param_1 + 0x46) != '\0') {
      iVar3 = (**(code **)(*param_1 + 0x34))(param_1,0xffffffff);
      iVar4 = 0;
      if (iVar3 == -1) {
        return 0;
      }
      iVar3 = param_1[0xf];
      param_1[5] = 0;
      param_1[4] = 0;
      param_1[6] = 0;
      *(undefined1 *)((int)param_1 + 0x46) = 0;
      param_1[1] = iVar3;
      param_1[2] = iVar3;
      param_1[3] = iVar3;
    }
  }
  else {
    pwVar1 = (wchar_t *)param_1[2];
    pwVar2 = pwVar1;
    if (param_3 < 1) {
      iVar4 = 0;
      pwVar1 = (wchar_t *)param_1[1];
    }
    else if (pwVar1 == (wchar_t *)param_1[1]) {
      param_3 = param_3 + -1;
      iVar4 = 1;
      *param_2 = *pwVar1;
      param_1[2] = (int)(pwVar1 + 1);
      pwVar2 = pwVar1 + 1;
      param_2 = param_2 + 1;
    }
    else {
      iVar4 = 0;
      pwVar1 = (wchar_t *)param_1[1];
    }
    param_1[1] = param_1[0xf];
    iVar3 = param_1[0x13] + (uint)(pwVar1 != pwVar2) * 4;
    param_1[3] = param_1[0x14];
    param_1[0x13] = iVar3;
    param_1[2] = iVar3;
    *(undefined1 *)(param_1 + 0x15) = 0;
  }
  uVar5 = param_1[0xb];
  if ((uint)param_1[0x10] < 2) {
    iVar3 = 1;
  }
  else {
    iVar3 = param_1[0x10] - 1;
  }
  if (iVar3 < param_3) {
    if ((int *)param_1[0x16] == (int *)0x0) {
                    /* WARNING: Subroutine does not return */
      FUN_007c4874();
    }
    iVar3 = (**(code **)(*(int *)param_1[0x16] + 0x18))();
    if ((iVar3 != 0) && ((uVar5 & 8) != 0)) {
      __n = param_1[3] - param_1[2] >> 2;
      if (__n != 0) {
        wmemcpy(param_2,(wchar_t *)param_1[2],__n);
        iVar4 = iVar4 + __n;
        param_3 = param_3 - __n;
        param_2 = param_2 + __n;
        param_1[2] = __n * 4 + param_1[2];
      }
      while( true ) {
        iVar3 = FUN_007ae314(param_1 + 9,param_2,param_3);
        if (iVar3 == -1) {
                    /* WARNING: Subroutine does not return */
          FUN_007c4c10("basic_filebuf::xsgetn error reading the file");
        }
        if (iVar3 == 0) break;
        param_3 = param_3 - iVar3;
        iVar4 = iVar4 + iVar3;
        if (param_3 == 0) goto LAB_007c0c2c;
        param_2 = param_2 + iVar3;
      }
      if (param_3 != 0) {
        iVar3 = param_1[0xf];
        param_1[5] = 0;
        param_1[4] = 0;
        param_1[6] = 0;
        *(undefined1 *)((int)param_1 + 0x45) = 0;
        param_1[1] = iVar3;
        param_1[2] = iVar3;
        param_1[3] = iVar3;
        return iVar4;
      }
LAB_007c0c2c:
      iVar3 = param_1[0xf];
      param_1[1] = iVar3;
      param_1[2] = iVar3;
      param_1[3] = iVar3;
      if ((param_1[0xb] << 0x1b < 0) && (1 < (uint)param_1[0x10])) {
        param_1[5] = iVar3;
        param_1[4] = iVar3;
        param_1[6] = iVar3 + (param_1[0x10] + 0x3fffffffU) * 4;
      }
      else {
        param_1[5] = 0;
        param_1[4] = 0;
        param_1[6] = 0;
      }
      *(undefined1 *)((int)param_1 + 0x45) = 1;
      return iVar4;
    }
  }
  iVar3 = FUN_00799dd4(param_1,param_2,param_3);
  return iVar4 + iVar3;
}

// ---- FUN_007c0ce8  @ 0x7c0ce8
undefined4 * FUN_007c0ce8(undefined4 *param_1)

{
  int iVar1;
  undefined4 uVar2;
  undefined4 *puVar3;
  
  puVar3 = param_1 + 7;
  param_1[1] = 0;
  param_1[2] = 0;
  *param_1 = &PTR_FUN_00799d5c_1_0093d948;
  param_1[3] = 0;
  param_1[4] = 0;
  param_1[5] = 0;
  param_1[6] = 0;
  FUN_007adf48(puVar3);
  param_1[8] = 0;
  *param_1 = &PTR_FUN_007c10b0_1_0093ef90;
  FUN_007ae204(param_1 + 9,param_1 + 8);
  param_1[0xb] = 0;
  param_1[0xc] = 0;
  param_1[0xd] = 0;
  param_1[0xe] = 0;
  param_1[0xf] = 0;
  *(undefined1 *)(param_1 + 0x11) = 0;
  *(undefined1 *)((int)param_1 + 0x45) = 0;
  *(undefined1 *)((int)param_1 + 0x46) = 0;
  *(undefined1 *)((int)param_1 + 0x47) = 0;
  param_1[0x12] = 0;
  param_1[0x13] = 0;
  *(undefined1 *)(param_1 + 0x14) = 0;
  param_1[0x15] = 0;
  param_1[0x16] = 0;
  param_1[0x17] = 0;
  param_1[0x18] = 0;
  param_1[0x19] = 0;
  param_1[0x10] = 0x400;
  iVar1 = FUN_0079db6c(puVar3);
  if (iVar1 == 0) {
    return param_1;
  }
  uVar2 = FUN_0079cbe8(puVar3);
  param_1[0x15] = uVar2;
  return param_1;
}

// ---- FUN_007c0d9c  @ 0x7c0d9c
void FUN_007c0d9c(int param_1)

{
  void *pvVar1;
  
  if ((*(char *)(param_1 + 0x44) == '\0') && (*(int *)(param_1 + 0x3c) == 0)) {
    pvVar1 = operator_new__(*(uint *)(param_1 + 0x40));
    *(undefined1 *)(param_1 + 0x44) = 1;
    *(void **)(param_1 + 0x3c) = pvVar1;
  }
  return;
}

// ---- FUN_007c0dbc  @ 0x7c0dbc
void FUN_007c0dbc(int param_1)

{
  if (*(char *)(param_1 + 0x44) != '\0') {
    if (*(void **)(param_1 + 0x3c) != (void *)0x0) {
      operator_delete__(*(void **)(param_1 + 0x3c));
    }
    *(undefined4 *)(param_1 + 0x3c) = 0;
    *(undefined1 *)(param_1 + 0x44) = 0;
  }
  if (*(void **)(param_1 + 0x58) != (void *)0x0) {
    operator_delete__(*(void **)(param_1 + 0x58));
  }
  *(undefined4 *)(param_1 + 0x58) = 0;
  *(undefined4 *)(param_1 + 0x5c) = 0;
  *(undefined4 *)(param_1 + 0x60) = 0;
  *(undefined4 *)(param_1 + 100) = 0;
  return;
}

// ---- FUN_007c0e24  @ 0x7c0e24
bool FUN_007c0e24(int param_1,int param_2,int param_3)

{
  int iVar1;
  int iVar2;
  uint uVar3;
  undefined4 uVar4;
  int *piVar5;
  undefined1 *puVar6;
  int iVar7;
  int aiStack_48 [4];
  undefined1 auStack_38 [4];
  uint local_34;
  int local_30;
  undefined4 local_2c [2];
  
  if (*(int **)(param_1 + 0x54) == (int *)0x0) {
                    /* WARNING: Subroutine does not return */
    FUN_007c4874();
  }
  iVar1 = (**(code **)(**(int **)(param_1 + 0x54) + 0x18))();
  if (iVar1 == 0) {
    iVar2 = (**(code **)(**(int **)(param_1 + 0x54) + 0x20))();
    piVar5 = *(int **)(param_1 + 0x54);
    iVar7 = *piVar5;
    iVar1 = -(iVar2 * param_3 + 0xeU & 0xfffffff8);
    puVar6 = auStack_38 + iVar1;
    *(undefined1 **)((int)aiStack_48 + iVar1 + 4) = puVar6;
    *(undefined1 **)((int)aiStack_48 + iVar1 + 8) = puVar6 + iVar2 * param_3;
    *(undefined4 **)((int)aiStack_48 + iVar1) = local_2c;
    *(int **)((int)aiStack_48 + iVar1 + 0xc) = &local_30;
    uVar3 = (**(code **)(iVar7 + 8))(piVar5,param_1 + 0x34,param_2,param_2 + param_3);
    if (uVar3 < 2) {
      param_3 = local_30 - (int)puVar6;
      local_34 = uVar3;
      iVar2 = FUN_007ae344(param_1 + 0x24,puVar6,param_3);
      if (param_3 == iVar2) {
        uVar3 = local_34 & 1;
      }
      else {
        uVar3 = 0;
      }
      if (uVar3 != 0) {
        piVar5 = *(int **)(param_1 + 0x54);
        uVar4 = *(undefined4 *)(param_1 + 0x14);
        iVar2 = *piVar5;
        *(undefined1 **)((int)aiStack_48 + iVar1 + 8) = puVar6 + param_3;
        *(undefined4 **)((int)aiStack_48 + iVar1) = local_2c;
        *(undefined1 **)((int)aiStack_48 + iVar1 + 4) = puVar6;
        *(int **)((int)aiStack_48 + iVar1 + 0xc) = &local_30;
        iVar1 = (**(code **)(iVar2 + 8))(piVar5,param_1 + 0x34,local_2c[0],uVar4);
        if (iVar1 == 2) goto LAB_007c0f0e;
        param_3 = local_30 - (int)puVar6;
        iVar2 = FUN_007ae344(param_1 + 0x24,puVar6,param_3);
      }
      goto LAB_007c0ea6;
    }
    if (uVar3 != 3) {
LAB_007c0f0e:
                    /* WARNING: Subroutine does not return */
      FUN_007c4c10("basic_filebuf::_M_convert_to_external conversion error");
    }
  }
  iVar2 = FUN_007ae344(param_1 + 0x24,param_2,param_3);
LAB_007c0ea6:
  return iVar2 == param_3;
}

// ---- FUN_007c0f20  @ 0x7c0f20
int FUN_007c0f20(int param_1,undefined4 param_2)

{
  int iVar1;
  
  iVar1 = (**(code **)(**(int **)(param_1 + 0x54) + 0x18))();
  if (iVar1 != 0) {
    return *(int *)(param_1 + 8) - *(int *)(param_1 + 0xc);
  }
  iVar1 = (**(code **)(**(int **)(param_1 + 0x54) + 0x1c))
                    (*(int **)(param_1 + 0x54),param_2,*(undefined4 *)(param_1 + 0x58),
                     *(undefined4 *)(param_1 + 0x60),*(int *)(param_1 + 8) - *(int *)(param_1 + 4));
  return (iVar1 + *(int *)(param_1 + 0x58)) - *(int *)(param_1 + 100);
}

// ---- FUN_007c0f60  @ 0x7c0f60
bool FUN_007c0f60(int *param_1)

{
  int iVar1;
  uint uVar2;
  int iVar3;
  bool bVar4;
  int local_a4;
  undefined1 auStack_a0 [128];
  
  if ((uint)param_1[4] < (uint)param_1[5]) {
    iVar1 = (**(code **)(*param_1 + 0x34))(param_1,0xffffffff);
    bVar4 = iVar1 != -1;
  }
  else {
    bVar4 = true;
  }
  if (*(char *)((int)param_1 + 0x46) != '\0') {
    if ((int *)param_1[0x15] == (int *)0x0) {
                    /* WARNING: Subroutine does not return */
      FUN_007c4874();
    }
    iVar1 = (**(code **)(*(int *)param_1[0x15] + 0x18))();
    if ((iVar1 == 0) && (bVar4 != false)) {
      iVar1 = 0;
      do {
        uVar2 = (**(code **)(*(int *)param_1[0x15] + 0xc))
                          ((int *)param_1[0x15],param_1 + 0xd,auStack_a0,&stack0xffffffe0,&local_a4)
        ;
        if (uVar2 == 2) {
          return false;
        }
        if (uVar2 < 2) {
          iVar1 = local_a4 - (int)auStack_a0;
          if (iVar1 < 1) {
LAB_007c0fd0:
            iVar1 = (**(code **)(*param_1 + 0x34))(param_1,0xffffffff);
            if (iVar1 == -1) {
              return false;
            }
            return true;
          }
          iVar3 = FUN_007ae344(param_1 + 9,auStack_a0,iVar1);
          if (iVar1 != iVar3) {
            return false;
          }
        }
        if ((iVar1 < 1) || (uVar2 != 1)) goto LAB_007c0fd0;
      } while( true );
    }
  }
  return bVar4;
}

// ---- FUN_007c101c  @ 0x7c101c
int FUN_007c101c(int param_1)

{
  char cVar1;
  int iVar2;
  undefined4 uVar3;
  
  iVar2 = FUN_007ae2b4(param_1 + 0x24);
  if (iVar2 != 0) {
    cVar1 = FUN_007c0f60(param_1);
    *(undefined4 *)(param_1 + 0x2c) = 0;
    *(undefined1 *)(param_1 + 0x50) = 0;
    FUN_007c0dbc(param_1);
    uVar3 = *(undefined4 *)(param_1 + 0x3c);
    *(undefined1 *)(param_1 + 0x45) = 0;
    *(undefined1 *)(param_1 + 0x46) = 0;
    *(undefined4 *)(param_1 + 0x14) = 0;
    *(undefined4 *)(param_1 + 0x10) = 0;
    *(undefined4 *)(param_1 + 0x18) = 0;
    *(undefined4 *)(param_1 + 4) = uVar3;
    *(undefined4 *)(param_1 + 8) = uVar3;
    *(undefined4 *)(param_1 + 0xc) = uVar3;
    *(undefined4 *)(param_1 + 0x34) = *(undefined4 *)(param_1 + 0x30);
    *(undefined4 *)(param_1 + 0x38) = *(undefined4 *)(param_1 + 0x30);
    iVar2 = FUN_007ae2cc(param_1 + 0x24);
    if ((iVar2 != 0) && (cVar1 == '\x01')) {
      return param_1;
    }
  }
  return 0;
}

// ---- FUN_007c10b0  @ 0x7c10b0
undefined4 * FUN_007c10b0(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_007c10b0_1_0093ef90;
  FUN_007c101c();
  FUN_007ae308(param_1 + 9);
  *param_1 = &PTR_FUN_00799d5c_1_0093d948;
  FUN_007b01c0(param_1 + 7);
  return param_1;
}

// ---- FUN_007c10e8  @ 0x7c10e8
int * FUN_007c10e8(int *param_1,undefined4 param_2,int param_3)

{
  int iVar1;
  int *piVar2;
  int local_28;
  int iStack_24;
  
  piVar2 = param_1 + 9;
  iVar1 = FUN_007ae2b4(piVar2);
  if (iVar1 == 0) {
    FUN_007ae288(piVar2,param_2,param_3,0x1b4);
    iVar1 = FUN_007ae2b4(piVar2);
    if (iVar1 != 0) {
      FUN_007c0d9c(param_1);
      iVar1 = param_1[0xf];
      param_1[0xb] = param_3;
      param_1[1] = iVar1;
      param_1[2] = iVar1;
      param_1[3] = iVar1;
      *(undefined1 *)((int)param_1 + 0x45) = 0;
      *(undefined1 *)((int)param_1 + 0x46) = 0;
      param_1[5] = 0;
      param_1[4] = 0;
      param_1[6] = 0;
      param_1[0xd] = param_1[0xc];
      param_1[0xe] = param_1[0xc];
      if ((param_3 << 0x1e < 0) &&
         ((**(code **)(*param_1 + 0x10))(&local_28,param_1,0,0,2,param_3),
         iStack_24 == -1 && local_28 == -1)) {
        FUN_007c101c(param_1);
        param_1 = (int *)0x0;
      }
      return param_1;
    }
  }
  return (int *)0x0;
}

// ---- FUN_007c1188  @ 0x7c1188
undefined4 * FUN_007c1188(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_007c10b0_1_0093ef90;
  FUN_007c101c();
  FUN_007ae308(param_1 + 9);
  *param_1 = &PTR_FUN_00799d5c_1_0093d948;
  FUN_007b01c0(param_1 + 7);
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_007c13c0  @ 0x7c13c0
undefined4 * FUN_007c13c0(undefined4 *param_1)

{
  param_1[0x1d] = &DAT_0093f174;
  *param_1 = &DAT_0093f14c;
  param_1[2] = &DAT_0093f160;
  param_1[3] = &PTR_FUN_007c10b0_1_0093ef90;
  FUN_007c101c(param_1 + 3);
  FUN_007ae308(param_1 + 0xc);
  param_1[3] = &PTR_FUN_00799d5c_1_0093d948;
  FUN_007b01c0(param_1 + 10);
  param_1[1] = 0;
  *param_1 = &DAT_0093f0bc;
  param_1[2] = &DAT_0093f094;
  param_1[0x1d] = &DAT_0093d910;
  FUN_0079a9bc(param_1 + 0x1d);
  return param_1;
}

// ---- FUN_007c1458  @ 0x7c1458
undefined4 * FUN_007c1458(undefined4 *param_1)

{
  param_1[0x1d] = &DAT_0093f174;
  *param_1 = &DAT_0093f14c;
  param_1[2] = &DAT_0093f160;
  param_1[3] = &PTR_FUN_007c10b0_1_0093ef90;
  FUN_007c101c(param_1 + 3);
  FUN_007ae308(param_1 + 0xc);
  param_1[3] = &PTR_FUN_00799d5c_1_0093d948;
  FUN_007b01c0(param_1 + 10);
  param_1[1] = 0;
  *param_1 = &DAT_0093f0bc;
  param_1[2] = &DAT_0093f094;
  param_1[0x1d] = &DAT_0093d910;
  FUN_0079a9bc(param_1 + 0x1d);
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_007c14f4  @ 0x7c14f4
longlong *
FUN_007c14f4(longlong *param_1,int param_2,undefined4 param_3,undefined4 param_4,undefined4 param_5,
            undefined4 param_6)

{
  undefined4 uVar1;
  undefined8 uVar2;
  longlong lVar3;
  
  *(undefined4 *)param_1 = 0xffffffff;
  *(undefined4 *)((int)param_1 + 4) = 0xffffffff;
  *(undefined4 *)(param_1 + 1) = 0;
  uVar2 = FUN_007c0f60(param_2);
  if (((int)uVar2 != 0) &&
     (lVar3 = FUN_007ae3c4(param_2 + 0x24,(int)((ulonglong)uVar2 >> 0x20),param_3,param_4,param_5),
     lVar3 != -1)) {
    uVar1 = *(undefined4 *)(param_2 + 0x3c);
    *(undefined4 *)(param_2 + 100) = *(undefined4 *)(param_2 + 0x58);
    *(undefined4 *)(param_2 + 0x60) = *(undefined4 *)(param_2 + 0x58);
    *(undefined1 *)(param_2 + 0x45) = 0;
    *(undefined1 *)(param_2 + 0x46) = 0;
    *(undefined4 *)(param_2 + 0x14) = 0;
    *(undefined4 *)(param_2 + 0x10) = 0;
    *(undefined4 *)(param_2 + 0x18) = 0;
    *(undefined4 *)(param_2 + 0x34) = param_6;
    *param_1 = lVar3;
    *(undefined4 *)(param_1 + 1) = param_6;
    *(undefined4 *)(param_2 + 4) = uVar1;
    *(undefined4 *)(param_2 + 8) = uVar1;
    *(undefined4 *)(param_2 + 0xc) = uVar1;
    return param_1;
  }
  return param_1;
}

// ---- FUN_007c157c  @ 0x7c157c
int FUN_007c157c(int param_1,int param_2)

{
  undefined1 uVar1;
  int iVar2;
  undefined1 *puVar3;
  uint uVar4;
  undefined1 *puVar5;
  bool bVar6;
  bool bVar7;
  int local_28;
  int iStack_24;
  
  if (*(int *)(param_1 + 0x2c) << 0x1b < 0) {
    if (*(char *)(param_1 + 0x45) != '\0') {
      if (*(char *)(param_1 + 0x50) != '\0') {
        iVar2 = *(int *)(param_1 + 0x48);
        *(undefined4 *)(param_1 + 0xc) = *(undefined4 *)(param_1 + 0x4c);
        if (*(int *)(param_1 + 8) != *(int *)(param_1 + 4)) {
          iVar2 = iVar2 + 1;
        }
        *(undefined4 *)(param_1 + 4) = *(undefined4 *)(param_1 + 0x3c);
        *(int *)(param_1 + 0x48) = iVar2;
        *(int *)(param_1 + 8) = iVar2;
        *(undefined1 *)(param_1 + 0x50) = 0;
      }
      iVar2 = FUN_007c0f20(param_1,param_1 + 0x38);
      FUN_007c14f4(&local_28,param_1,iVar2,iVar2 >> 0x1f,1,*(undefined4 *)(param_1 + 0x38));
      if (iStack_24 == -1 && local_28 == -1) {
        return -1;
      }
    }
    puVar3 = *(undefined1 **)(param_1 + 0x10);
    puVar5 = *(undefined1 **)(param_1 + 0x14);
    bVar7 = param_2 == -1;
    uVar1 = (undefined1)param_2;
    if (puVar3 < puVar5) {
      if (!bVar7) {
        *puVar5 = uVar1;
        puVar3 = *(undefined1 **)(param_1 + 0x10);
        puVar5 = (undefined1 *)(*(int *)(param_1 + 0x14) + 1);
        *(undefined1 **)(param_1 + 0x14) = puVar5;
      }
      iVar2 = FUN_007c0e24(param_1,puVar3,(int)puVar5 - (int)puVar3);
      if (iVar2 != 0) {
        iVar2 = *(int *)(param_1 + 0x3c);
        *(int *)(param_1 + 4) = iVar2;
        *(int *)(param_1 + 8) = iVar2;
        *(int *)(param_1 + 0xc) = iVar2;
        if ((*(int *)(param_1 + 0x2c) << 0x1b < 0) && (1 < *(uint *)(param_1 + 0x40))) {
          *(int *)(param_1 + 0x14) = iVar2;
          *(int *)(param_1 + 0x10) = iVar2;
          *(uint *)(param_1 + 0x18) = (*(uint *)(param_1 + 0x40) - 1) + iVar2;
        }
        else {
          *(undefined4 *)(param_1 + 0x14) = 0;
          *(undefined4 *)(param_1 + 0x10) = 0;
          *(undefined4 *)(param_1 + 0x18) = 0;
        }
LAB_007c163a:
        if (param_2 == -1) {
          param_2 = 0;
        }
        return param_2;
      }
    }
    else {
      uVar4 = *(uint *)(param_1 + 0x40);
      if (1 < uVar4) {
        iVar2 = *(int *)(param_1 + 0x3c);
        bVar6 = (*(uint *)(param_1 + 0x2c) & 0x10) == 0;
        if (bVar6) {
          *(undefined4 *)(param_1 + 0x14) = 0;
          *(undefined4 *)(param_1 + 0x10) = 0;
        }
        else {
          uVar4 = (uVar4 - 1) + iVar2;
        }
        *(int *)(param_1 + 4) = iVar2;
        *(int *)(param_1 + 8) = iVar2;
        *(int *)(param_1 + 0xc) = iVar2;
        if (bVar6) {
          *(undefined4 *)(param_1 + 0x18) = 0;
        }
        else {
          *(int *)(param_1 + 0x14) = iVar2;
          *(int *)(param_1 + 0x10) = iVar2;
          *(uint *)(param_1 + 0x18) = uVar4;
        }
        *(undefined1 *)(param_1 + 0x46) = 1;
        if (!bVar7) {
          **(undefined1 **)(param_1 + 0x14) = uVar1;
          *(int *)(param_1 + 0x14) = *(int *)(param_1 + 0x14) + 1;
        }
        goto LAB_007c163a;
      }
      local_28 = CONCAT31(local_28._1_3_,uVar1);
      if ((bVar7) || (iVar2 = FUN_007c0e24(param_1,&local_28,1), iVar2 != 0)) {
        if (param_2 == -1) {
          param_2 = 0;
        }
        *(undefined1 *)(param_1 + 0x46) = 1;
        return param_2;
      }
    }
  }
  return -1;
}

// ---- FUN_007c16c0  @ 0x7c16c0
longlong * FUN_007c16c0(longlong *param_1,int param_2,uint param_3,int param_4,int param_5)

{
  uint uVar1;
  int iVar2;
  int iVar3;
  uint uVar4;
  bool bVar5;
  bool bVar6;
  longlong lVar7;
  int local_3c;
  int local_38;
  undefined4 uStack_34;
  undefined4 uStack_30;
  
  if (*(int **)(param_2 + 0x54) == (int *)0x0) {
    bVar5 = true;
    uVar1 = 0;
  }
  else {
    uVar1 = (**(code **)(**(int **)(param_2 + 0x54) + 0x14))();
    if ((int)uVar1 < 0) {
      bVar5 = true;
      uVar1 = 0;
    }
    else if ((int)uVar1 < 1) {
      bVar5 = true;
    }
    else {
      bVar5 = false;
    }
  }
  *(undefined4 *)param_1 = 0xffffffff;
  *(undefined4 *)((int)param_1 + 4) = 0xffffffff;
  *(undefined4 *)(param_1 + 1) = 0;
  iVar2 = FUN_007ae2b4(param_2 + 0x24);
  if (iVar2 != 0) {
    if (param_3 == 0 && param_4 == 0) {
      bVar5 = false;
    }
    if (!bVar5) {
      if (((param_3 == 0 && param_4 == 0) && param_5 == 1) &&
         ((*(char *)(param_2 + 0x46) == '\0' ||
          (iVar2 = (**(code **)(**(int **)(param_2 + 0x54) + 0x18))(), iVar2 != 0)))) {
        bVar5 = true;
      }
      else {
        bVar5 = false;
        if (*(char *)(param_2 + 0x50) != '\0') {
          bVar5 = false;
          iVar2 = *(int *)(param_2 + 4);
          *(undefined4 *)(param_2 + 0xc) = *(undefined4 *)(param_2 + 0x4c);
          iVar3 = *(int *)(param_2 + 0x48);
          *(undefined4 *)(param_2 + 4) = *(undefined4 *)(param_2 + 0x3c);
          if (*(int *)(param_2 + 8) != iVar2) {
            iVar3 = iVar3 + 1;
          }
          *(undefined1 *)(param_2 + 0x50) = 0;
          *(int *)(param_2 + 0x48) = iVar3;
          *(int *)(param_2 + 8) = iVar3;
        }
      }
      local_3c = *(int *)(param_2 + 0x30);
      uVar4 = (uint)((ulonglong)uVar1 * (ulonglong)param_3);
      iVar2 = (int)((ulonglong)uVar1 * (ulonglong)param_3 >> 0x20) +
              param_3 * ((int)uVar1 >> 0x1f) + uVar1 * param_4;
      if ((*(char *)(param_2 + 0x45) != '\0') && (param_5 == 1)) {
        local_3c = *(int *)(param_2 + 0x38);
        uVar1 = FUN_007c0f20(param_2,&local_3c);
        bVar6 = CARRY4(uVar4,uVar1);
        uVar4 = uVar4 + uVar1;
        iVar2 = iVar2 + ((int)uVar1 >> 0x1f) + (uint)bVar6;
      }
      if (!bVar5) {
        FUN_007c14f4(&local_38,param_2,uVar4,iVar2,param_5,local_3c);
        *(int *)param_1 = local_38;
        *(undefined4 *)((int)param_1 + 4) = uStack_34;
        *(undefined4 *)(param_1 + 1) = uStack_30;
        return param_1;
      }
      if (*(char *)(param_2 + 0x46) != '\0') {
        uVar4 = *(int *)(param_2 + 0x14) - *(int *)(param_2 + 0x10);
        iVar2 = (int)uVar4 >> 0x1f;
      }
      lVar7 = FUN_007ae3c4(param_2 + 0x24,1,0,0,1);
      if (lVar7 != -1) {
        *param_1 = lVar7 + CONCAT44(iVar2,uVar4);
        *(int *)(param_1 + 1) = local_3c;
      }
    }
  }
  return param_1;
}

// ---- FUN_007c18a0  @ 0x7c18a0
void FUN_007c18a0(int *param_1,undefined4 param_2)

{
  int iVar1;
  int *piVar2;
  void *__src;
  size_t __n;
  int iVar3;
  uint local_28;
  uint local_24;
  
  iVar1 = FUN_0079db6c(param_2);
  if (iVar1 == 0) {
    piVar2 = (int *)0x0;
  }
  else {
    piVar2 = (int *)FUN_0079cbe8(param_2);
  }
  iVar1 = FUN_007ae2b4(param_1 + 9);
  if ((iVar1 == 0) ||
     ((*(char *)((int)param_1 + 0x45) == '\0' && (*(char *)((int)param_1 + 0x46) == '\0'))))
  goto LAB_007c18c8;
  if ((int *)param_1[0x15] == (int *)0x0) {
LAB_007c19c4:
                    /* WARNING: Subroutine does not return */
    FUN_007c4874();
  }
  iVar1 = (**(code **)(*(int *)param_1[0x15] + 0x14))();
  if (iVar1 == -1) {
LAB_007c1930:
    param_1[0x15] = 0;
    return;
  }
  if (*(char *)((int)param_1 + 0x45) == '\0') {
    if (*(char *)((int)param_1 + 0x46) != '\0') {
      iVar1 = FUN_007c0f60(param_1);
      if (iVar1 == 0) goto LAB_007c1930;
      iVar1 = param_1[0xf];
      param_1[5] = 0;
      param_1[4] = 0;
      param_1[6] = 0;
      param_1[1] = iVar1;
      param_1[2] = iVar1;
      param_1[3] = iVar1;
    }
  }
  else {
    if ((int *)param_1[0x15] == (int *)0x0) goto LAB_007c19c4;
    iVar1 = (**(code **)(*(int *)param_1[0x15] + 0x18))();
    if (iVar1 == 0) {
      iVar3 = param_1[0x16];
      iVar1 = (**(code **)(*(int *)param_1[0x15] + 0x1c))
                        ((int *)param_1[0x15],param_1 + 0xe,iVar3,param_1[0x18],
                         param_1[2] - param_1[1]);
      __src = (void *)(iVar3 + iVar1);
      param_1[0x18] = (int)__src;
      __n = param_1[0x19] - (int)__src;
      if (__n != 0) {
        memmove((void *)param_1[0x16],__src,__n);
      }
      iVar1 = param_1[0xf];
      param_1[1] = iVar1;
      param_1[0x18] = param_1[0x16];
      param_1[0x19] = __n + param_1[0x16];
      param_1[2] = iVar1;
      param_1[3] = iVar1;
      param_1[0xd] = param_1[0xc];
      param_1[0xe] = param_1[0xc];
      param_1[5] = 0;
      param_1[4] = 0;
      param_1[6] = 0;
    }
    else if (((piVar2 != (int *)0x0) && (iVar1 = (**(code **)(*piVar2 + 0x18))(piVar2), iVar1 == 0))
            && ((**(code **)(*param_1 + 0x10))(&local_28,param_1,0,0,1,param_1[0xb]),
               (local_24 & local_28) == 0xffffffff)) goto LAB_007c1930;
  }
LAB_007c18c8:
  param_1[0x15] = (int)piVar2;
  return;
}

// ---- FUN_007c1a20  @ 0x7c1a20
int * FUN_007c1a20(int *param_1,int *param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  
  iVar1 = param_2[1];
  *param_1 = iVar1;
  *(int *)((int)param_1 + *(int *)(iVar1 + -0xc)) = param_2[2];
  param_1[1] = 0;
  FUN_007990d4(*(int *)(iVar1 + -0xc) + (int)param_1,0,0,iVar1,param_4);
  iVar1 = *param_2;
  *param_1 = iVar1;
  *(int *)((int)param_1 + *(int *)(iVar1 + -0xc)) = param_2[3];
  FUN_007c0ce8(param_1 + 2);
  FUN_007990d4(*(int *)(*param_1 + -0xc) + (int)param_1,param_1 + 2);
  return param_1;
}

// ---- FUN_007c1d4c  @ 0x7c1d4c
int * FUN_007c1d4c(int *param_1,undefined4 *param_2,uint param_3)

{
  int iVar1;
  int *piVar2;
  int *piVar3;
  
  piVar2 = param_1 + 0x1c;
  FUN_0079a7a0(piVar2);
  *param_1 = (int)&DAT_0093efd4;
  param_1[0x1c] = (int)&PTR_LAB_007a5044_1_0093efe8;
  param_1[0x38] = 0;
  *(undefined1 *)(param_1 + 0x39) = 0;
  *(undefined1 *)((int)param_1 + 0xe5) = 0;
  param_1[0x3a] = 0;
  param_1[0x3b] = 0;
  param_1[0x3c] = 0;
  param_1[0x3d] = 0;
  param_1[1] = 0;
  FUN_007990d4(piVar2,0);
  piVar3 = param_1 + 2;
  *param_1 = (int)&DAT_0093f00c;
  param_1[0x1c] = (int)&DAT_0093f020;
  FUN_007c0ce8(piVar3);
  FUN_007990d4(piVar2,piVar3);
  iVar1 = FUN_007c10e8(piVar3,*param_2,param_3 | 8);
  if (iVar1 != 0) {
    FUN_00798e64(*(int *)(*param_1 + -0xc) + (int)param_1,0);
    return param_1;
  }
  iVar1 = *(int *)(*param_1 + -0xc) + (int)param_1;
  FUN_00798e64(iVar1,*(uint *)(iVar1 + 0x14) | 4);
  return param_1;
}

// ---- FUN_007c20b4  @ 0x7c20b4
int * FUN_007c20b4(int *param_1,undefined4 param_2,uint param_3)

{
  int iVar1;
  int *piVar2;
  int *piVar3;
  
  piVar2 = param_1 + 0x1b;
  FUN_0079a7a0(piVar2);
  *param_1 = (int)&DAT_0093f034;
  param_1[0x1b] = (int)&PTR_LAB_007bb0a0_1_0093f048;
  param_1[0x37] = 0;
  *(undefined1 *)(param_1 + 0x38) = 0;
  *(undefined1 *)((int)param_1 + 0xe1) = 0;
  param_1[0x39] = 0;
  param_1[0x3a] = 0;
  param_1[0x3b] = 0;
  param_1[0x3c] = 0;
  FUN_007990d4(piVar2,0);
  piVar3 = param_1 + 1;
  *param_1 = (int)&DAT_0093f06c;
  param_1[0x1b] = (int)&DAT_0093f080;
  FUN_007c0ce8(piVar3);
  FUN_007990d4(piVar2,piVar3);
  iVar1 = FUN_007c10e8(piVar3,param_2,param_3 | 0x10);
  if (iVar1 != 0) {
    FUN_00798e64(*(int *)(*param_1 + -0xc) + (int)param_1,0);
    return param_1;
  }
  iVar1 = *(int *)(*param_1 + -0xc) + (int)param_1;
  FUN_00798e64(iVar1,*(uint *)(iVar1 + 0x14) | 4);
  return param_1;
}

// ---- FUN_007c263c  @ 0x7c263c
int * FUN_007c263c(int *param_1,undefined4 param_2,undefined4 param_3)

{
  int iVar1;
  int *piVar2;
  int *piVar3;
  
  piVar2 = param_1 + 0x1d;
  FUN_0079a7a0(piVar2);
  param_1[0x39] = 0;
  *(undefined1 *)(param_1 + 0x3a) = 0;
  *param_1 = (int)&DAT_0093f0bc;
  param_1[0x1d] = (int)&DAT_0093f0d0;
  *(undefined1 *)((int)param_1 + 0xe9) = 0;
  param_1[0x3b] = 0;
  param_1[0x3c] = 0;
  param_1[0x3d] = 0;
  param_1[0x3e] = 0;
  param_1[1] = 0;
  FUN_007990d4(piVar2,0);
  param_1[2] = (int)&DAT_0093f094;
  param_1[0x1d] = (int)&DAT_0093f0a8;
  FUN_007990d4(piVar2,0);
  piVar3 = param_1 + 3;
  *param_1 = (int)&DAT_0093f14c;
  param_1[0x1d] = (int)&DAT_0093f174;
  param_1[2] = (int)&DAT_0093f160;
  FUN_007c0ce8(piVar3);
  FUN_007990d4(piVar2,piVar3);
  iVar1 = FUN_007c10e8(piVar3,param_2,param_3);
  if (iVar1 != 0) {
    FUN_00798e64(*(int *)(*param_1 + -0xc) + (int)param_1,0);
    return param_1;
  }
  iVar1 = *(int *)(*param_1 + -0xc) + (int)param_1;
  FUN_00798e64(iVar1,*(uint *)(iVar1 + 0x14) | 4);
  return param_1;
}

// ---- FUN_007c29bc  @ 0x7c29bc
void FUN_007c29bc(int *param_1)

{
  int iVar1;
  
  iVar1 = FUN_007c10e8(param_1 + 3);
  if (iVar1 != 0) {
    FUN_00798e64(*(int *)(*param_1 + -0xc) + (int)param_1,0);
    return;
  }
  iVar1 = *(int *)(*param_1 + -0xc) + (int)param_1;
  FUN_00798e64(iVar1,*(uint *)(iVar1 + 0x14) | 4);
  return;
}

// ---- FUN_007c29f0  @ 0x7c29f0
void FUN_007c29f0(int *param_1,undefined4 *param_2)

{
  int iVar1;
  
  iVar1 = FUN_007c10e8(param_1 + 3,*param_2);
  if (iVar1 != 0) {
    FUN_00798e64(*(int *)(*param_1 + -0xc) + (int)param_1,0);
    return;
  }
  iVar1 = *(int *)(*param_1 + -0xc) + (int)param_1;
  FUN_00798e64(iVar1,*(uint *)(iVar1 + 0x14) | 4);
  return;
}

// ---- FUN_007c2a24  @ 0x7c2a24
void FUN_007c2a24(int *param_1)

{
  int iVar1;
  
  iVar1 = FUN_007c101c(param_1 + 3);
  if (iVar1 != 0) {
    return;
  }
  iVar1 = *(int *)(*param_1 + -0xc) + (int)param_1;
  FUN_00798e64(iVar1,*(uint *)(iVar1 + 0x14) | 4);
  return;
}

// ---- FUN_007c2aa0  @ 0x7c2aa0
undefined4 * FUN_007c2aa0(undefined4 *param_1)

{
  int iVar1;
  undefined4 uVar2;
  undefined4 *puVar3;
  
  puVar3 = param_1 + 7;
  param_1[1] = 0;
  param_1[2] = 0;
  *param_1 = &PTR_LAB_00799d78_1_0093d988;
  param_1[3] = 0;
  param_1[4] = 0;
  param_1[5] = 0;
  param_1[6] = 0;
  FUN_007adf48(puVar3);
  param_1[8] = 0;
  *param_1 = &PTR_FUN_007c2e80_1_0093f188;
  FUN_007ae204(param_1 + 9,param_1 + 8);
  param_1[0xb] = 0;
  param_1[0xc] = 0;
  param_1[0xd] = 0;
  param_1[0xe] = 0;
  param_1[0xf] = 0;
  *(undefined1 *)(param_1 + 0x11) = 0;
  *(undefined1 *)((int)param_1 + 0x45) = 0;
  *(undefined1 *)((int)param_1 + 0x46) = 0;
  param_1[0x12] = 0;
  param_1[0x13] = 0;
  param_1[0x14] = 0;
  *(undefined1 *)(param_1 + 0x15) = 0;
  param_1[0x16] = 0;
  param_1[0x17] = 0;
  param_1[0x18] = 0;
  param_1[0x19] = 0;
  param_1[0x1a] = 0;
  param_1[0x10] = 0x400;
  iVar1 = FUN_007b3d9c(puVar3);
  if (iVar1 == 0) {
    return param_1;
  }
  uVar2 = FUN_007b2e44(puVar3);
  param_1[0x16] = uVar2;
  return param_1;
}

// ---- FUN_007c2b54  @ 0x7c2b54
void FUN_007c2b54(int param_1)

{
  uint uVar1;
  void *pvVar2;
  
  if ((*(char *)(param_1 + 0x44) == '\0') && (*(int *)(param_1 + 0x3c) == 0)) {
    if (*(uint *)(param_1 + 0x40) < 0x1fc00001) {
      uVar1 = *(uint *)(param_1 + 0x40) << 2;
    }
    else {
      uVar1 = 0xffffffff;
    }
    pvVar2 = operator_new__(uVar1);
    *(undefined1 *)(param_1 + 0x44) = 1;
    *(void **)(param_1 + 0x3c) = pvVar2;
    return;
  }
  return;
}

// ---- FUN_007c2b80  @ 0x7c2b80
void FUN_007c2b80(int param_1)

{
  if (*(char *)(param_1 + 0x44) != '\0') {
    if (*(void **)(param_1 + 0x3c) != (void *)0x0) {
      operator_delete__(*(void **)(param_1 + 0x3c));
    }
    *(undefined4 *)(param_1 + 0x3c) = 0;
    *(undefined1 *)(param_1 + 0x44) = 0;
  }
  if (*(void **)(param_1 + 0x5c) != (void *)0x0) {
    operator_delete__(*(void **)(param_1 + 0x5c));
  }
  *(undefined4 *)(param_1 + 0x5c) = 0;
  *(undefined4 *)(param_1 + 0x60) = 0;
  *(undefined4 *)(param_1 + 100) = 0;
  *(undefined4 *)(param_1 + 0x68) = 0;
  return;
}

// ---- FUN_007c2be8  @ 0x7c2be8
bool FUN_007c2be8(int param_1,int param_2,int param_3)

{
  int iVar1;
  int iVar2;
  uint uVar3;
  int *piVar4;
  undefined1 *puVar5;
  int iVar6;
  int aiStack_48 [4];
  undefined1 auStack_38 [4];
  uint local_34;
  int local_30;
  int local_2c [2];
  
  if (*(int **)(param_1 + 0x58) == (int *)0x0) {
                    /* WARNING: Subroutine does not return */
    FUN_007c4874();
  }
  iVar1 = (**(code **)(**(int **)(param_1 + 0x58) + 0x18))();
  if (iVar1 == 0) {
    iVar2 = (**(code **)(**(int **)(param_1 + 0x58) + 0x20))();
    piVar4 = *(int **)(param_1 + 0x58);
    iVar6 = *piVar4;
    iVar1 = -(iVar2 * param_3 + 0xeU & 0xfffffff8);
    puVar5 = auStack_38 + iVar1;
    *(undefined1 **)((int)aiStack_48 + iVar1 + 4) = puVar5;
    *(undefined1 **)((int)aiStack_48 + iVar1 + 8) = puVar5 + iVar2 * param_3;
    *(int **)((int)aiStack_48 + iVar1) = local_2c;
    *(int **)((int)aiStack_48 + iVar1 + 0xc) = &local_30;
    uVar3 = (**(code **)(iVar6 + 8))(piVar4,param_1 + 0x34,param_2,param_2 + param_3 * 4);
    if (uVar3 < 2) {
      param_3 = local_30 - (int)puVar5;
      local_34 = uVar3;
      iVar2 = FUN_007ae344(param_1 + 0x24,puVar5,param_3);
      if (param_3 == iVar2) {
        uVar3 = local_34 & 1;
      }
      else {
        uVar3 = 0;
      }
      if (uVar3 != 0) {
        piVar4 = *(int **)(param_1 + 0x58);
        iVar2 = *(int *)(param_1 + 0x14);
        iVar6 = *piVar4;
        *(undefined1 **)((int)aiStack_48 + iVar1 + 8) = puVar5 + param_3;
        *(int **)((int)aiStack_48 + iVar1) = local_2c;
        *(undefined1 **)((int)aiStack_48 + iVar1 + 4) = puVar5;
        *(int **)((int)aiStack_48 + iVar1 + 0xc) = &local_30;
        iVar1 = (**(code **)(iVar6 + 8))
                          (piVar4,param_1 + 0x34,local_2c[0],
                           (iVar2 - local_2c[0] & 0xfffffffcU) + local_2c[0]);
        if (iVar1 == 2) goto LAB_007c2cdc;
        param_3 = local_30 - (int)puVar5;
        iVar2 = FUN_007ae344(param_1 + 0x24,puVar5,param_3);
      }
      goto LAB_007c2c6c;
    }
    if (uVar3 != 3) {
LAB_007c2cdc:
                    /* WARNING: Subroutine does not return */
      FUN_007c4c10("basic_filebuf::_M_convert_to_external conversion error");
    }
  }
  iVar2 = FUN_007ae344(param_1 + 0x24,param_2,param_3);
LAB_007c2c6c:
  return iVar2 == param_3;
}

// ---- FUN_007c2cec  @ 0x7c2cec
int FUN_007c2cec(int param_1,undefined4 param_2)

{
  int iVar1;
  
  iVar1 = (**(code **)(**(int **)(param_1 + 0x58) + 0x18))();
  if (iVar1 != 0) {
    return *(int *)(param_1 + 8) - *(int *)(param_1 + 0xc) >> 2;
  }
  iVar1 = (**(code **)(**(int **)(param_1 + 0x58) + 0x1c))
                    (*(int **)(param_1 + 0x58),param_2,*(undefined4 *)(param_1 + 0x5c),
                     *(undefined4 *)(param_1 + 100),
                     *(int *)(param_1 + 8) - *(int *)(param_1 + 4) >> 2);
  return (iVar1 + *(int *)(param_1 + 0x5c)) - *(int *)(param_1 + 0x68);
}

// ---- FUN_007c2d30  @ 0x7c2d30
bool FUN_007c2d30(int *param_1)

{
  int iVar1;
  uint uVar2;
  int iVar3;
  bool bVar4;
  int local_a4;
  undefined1 auStack_a0 [128];
  
  if ((uint)param_1[4] < (uint)param_1[5]) {
    iVar1 = (**(code **)(*param_1 + 0x34))(param_1,0xffffffff);
    bVar4 = iVar1 != -1;
  }
  else {
    bVar4 = true;
  }
  if (*(char *)((int)param_1 + 0x46) != '\0') {
    if ((int *)param_1[0x16] == (int *)0x0) {
                    /* WARNING: Subroutine does not return */
      FUN_007c4874();
    }
    iVar1 = (**(code **)(*(int *)param_1[0x16] + 0x18))();
    if ((iVar1 == 0) && (bVar4 != false)) {
      iVar1 = 0;
      do {
        uVar2 = (**(code **)(*(int *)param_1[0x16] + 0xc))
                          ((int *)param_1[0x16],param_1 + 0xd,auStack_a0,&stack0xffffffe0,&local_a4)
        ;
        if (uVar2 == 2) {
          return false;
        }
        if (uVar2 < 2) {
          iVar1 = local_a4 - (int)auStack_a0;
          if (iVar1 < 1) {
LAB_007c2da0:
            iVar1 = (**(code **)(*param_1 + 0x34))(param_1,0xffffffff);
            if (iVar1 == -1) {
              return false;
            }
            return true;
          }
          iVar3 = FUN_007ae344(param_1 + 9,auStack_a0,iVar1);
          if (iVar1 != iVar3) {
            return false;
          }
        }
        if ((iVar1 < 1) || (uVar2 != 1)) goto LAB_007c2da0;
      } while( true );
    }
  }
  return bVar4;
}

// ---- FUN_007c2dec  @ 0x7c2dec
int FUN_007c2dec(int param_1)

{
  char cVar1;
  int iVar2;
  undefined4 uVar3;
  
  iVar2 = FUN_007ae2b4(param_1 + 0x24);
  if (iVar2 != 0) {
    cVar1 = FUN_007c2d30(param_1);
    *(undefined4 *)(param_1 + 0x2c) = 0;
    *(undefined1 *)(param_1 + 0x54) = 0;
    FUN_007c2b80(param_1);
    uVar3 = *(undefined4 *)(param_1 + 0x3c);
    *(undefined1 *)(param_1 + 0x45) = 0;
    *(undefined1 *)(param_1 + 0x46) = 0;
    *(undefined4 *)(param_1 + 0x14) = 0;
    *(undefined4 *)(param_1 + 0x10) = 0;
    *(undefined4 *)(param_1 + 0x18) = 0;
    *(undefined4 *)(param_1 + 4) = uVar3;
    *(undefined4 *)(param_1 + 8) = uVar3;
    *(undefined4 *)(param_1 + 0xc) = uVar3;
    *(undefined4 *)(param_1 + 0x34) = *(undefined4 *)(param_1 + 0x30);
    *(undefined4 *)(param_1 + 0x38) = *(undefined4 *)(param_1 + 0x30);
    iVar2 = FUN_007ae2cc(param_1 + 0x24);
    if ((iVar2 != 0) && (cVar1 == '\x01')) {
      return param_1;
    }
  }
  return 0;
}

// ---- FUN_007c2e80  @ 0x7c2e80
undefined4 * FUN_007c2e80(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_007c2e80_1_0093f188;
  FUN_007c2dec();
  FUN_007ae308(param_1 + 9);
  *param_1 = &PTR_LAB_00799d78_1_0093d988;
  FUN_007b01c0(param_1 + 7);
  return param_1;
}

// ---- FUN_007c2eb8  @ 0x7c2eb8
int * FUN_007c2eb8(int *param_1,undefined4 param_2,int param_3)

{
  int iVar1;
  int *piVar2;
  int local_28;
  int iStack_24;
  
  piVar2 = param_1 + 9;
  iVar1 = FUN_007ae2b4(piVar2);
  if (iVar1 == 0) {
    FUN_007ae288(piVar2,param_2,param_3,0x1b4);
    iVar1 = FUN_007ae2b4(piVar2);
    if (iVar1 != 0) {
      FUN_007c2b54(param_1);
      iVar1 = param_1[0xf];
      param_1[0xb] = param_3;
      param_1[1] = iVar1;
      param_1[2] = iVar1;
      param_1[3] = iVar1;
      *(undefined1 *)((int)param_1 + 0x45) = 0;
      *(undefined1 *)((int)param_1 + 0x46) = 0;
      param_1[5] = 0;
      param_1[4] = 0;
      param_1[6] = 0;
      param_1[0xd] = param_1[0xc];
      param_1[0xe] = param_1[0xc];
      if ((param_3 << 0x1e < 0) &&
         ((**(code **)(*param_1 + 0x10))(&local_28,param_1,0,0,2,param_3),
         iStack_24 == -1 && local_28 == -1)) {
        FUN_007c2dec(param_1);
        param_1 = (int *)0x0;
      }
      return param_1;
    }
  }
  return (int *)0x0;
}

// ---- FUN_007c2f58  @ 0x7c2f58
undefined4 * FUN_007c2f58(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_007c2e80_1_0093f188;
  FUN_007c2dec();
  FUN_007ae308(param_1 + 9);
  *param_1 = &PTR_LAB_00799d78_1_0093d988;
  FUN_007b01c0(param_1 + 7);
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_007c3190  @ 0x7c3190
undefined4 * FUN_007c3190(undefined4 *param_1)

{
  param_1[0x1e] = &DAT_0093f36c;
  *param_1 = &DAT_0093f344;
  param_1[2] = &DAT_0093f358;
  param_1[3] = &PTR_FUN_007c2e80_1_0093f188;
  FUN_007c2dec(param_1 + 3);
  FUN_007ae308(param_1 + 0xc);
  param_1[3] = &PTR_LAB_00799d78_1_0093d988;
  FUN_007b01c0(param_1 + 10);
  param_1[1] = 0;
  *param_1 = &DAT_0093f2b4;
  param_1[2] = &DAT_0093f28c;
  param_1[0x1e] = &PTR_LAB_00798dec_1_0093d920;
  FUN_0079a9bc(param_1 + 0x1e);
  return param_1;
}

// ---- FUN_007c3228  @ 0x7c3228
undefined4 * FUN_007c3228(undefined4 *param_1)

{
  param_1[0x1e] = &DAT_0093f36c;
  *param_1 = &DAT_0093f344;
  param_1[2] = &DAT_0093f358;
  param_1[3] = &PTR_FUN_007c2e80_1_0093f188;
  FUN_007c2dec(param_1 + 3);
  FUN_007ae308(param_1 + 0xc);
  param_1[3] = &PTR_LAB_00799d78_1_0093d988;
  FUN_007b01c0(param_1 + 10);
  param_1[1] = 0;
  *param_1 = &DAT_0093f2b4;
  param_1[2] = &DAT_0093f28c;
  param_1[0x1e] = &PTR_LAB_00798dec_1_0093d920;
  FUN_0079a9bc(param_1 + 0x1e);
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_007c32c4  @ 0x7c32c4
longlong *
FUN_007c32c4(longlong *param_1,int param_2,undefined4 param_3,undefined4 param_4,undefined4 param_5,
            undefined4 param_6)

{
  undefined4 uVar1;
  undefined8 uVar2;
  longlong lVar3;
  
  *(undefined4 *)param_1 = 0xffffffff;
  *(undefined4 *)((int)param_1 + 4) = 0xffffffff;
  *(undefined4 *)(param_1 + 1) = 0;
  uVar2 = FUN_007c2d30(param_2);
  if (((int)uVar2 != 0) &&
     (lVar3 = FUN_007ae3c4(param_2 + 0x24,(int)((ulonglong)uVar2 >> 0x20),param_3,param_4,param_5),
     lVar3 != -1)) {
    uVar1 = *(undefined4 *)(param_2 + 0x3c);
    *(undefined4 *)(param_2 + 0x68) = *(undefined4 *)(param_2 + 0x5c);
    *(undefined4 *)(param_2 + 100) = *(undefined4 *)(param_2 + 0x5c);
    *(undefined1 *)(param_2 + 0x45) = 0;
    *(undefined1 *)(param_2 + 0x46) = 0;
    *(undefined4 *)(param_2 + 0x14) = 0;
    *(undefined4 *)(param_2 + 0x10) = 0;
    *(undefined4 *)(param_2 + 0x18) = 0;
    *(undefined4 *)(param_2 + 0x34) = param_6;
    *param_1 = lVar3;
    *(undefined4 *)(param_1 + 1) = param_6;
    *(undefined4 *)(param_2 + 4) = uVar1;
    *(undefined4 *)(param_2 + 8) = uVar1;
    *(undefined4 *)(param_2 + 0xc) = uVar1;
    return param_1;
  }
  return param_1;
}

// ---- FUN_007c334c  @ 0x7c334c
int FUN_007c334c(int param_1,int param_2)

{
  int iVar1;
  int *piVar2;
  uint uVar3;
  int *piVar4;
  int *piVar5;
  bool bVar6;
  bool bVar7;
  int local_20;
  int iStack_1c;
  
  if (*(int *)(param_1 + 0x2c) << 0x1b < 0) {
    if (*(char *)(param_1 + 0x45) != '\0') {
      if (*(char *)(param_1 + 0x54) != '\0') {
        iVar1 = *(int *)(param_1 + 4);
        *(undefined4 *)(param_1 + 4) = *(undefined4 *)(param_1 + 0x3c);
        iVar1 = *(int *)(param_1 + 0x4c) + (uint)(*(int *)(param_1 + 8) != iVar1) * 4;
        *(undefined4 *)(param_1 + 0xc) = *(undefined4 *)(param_1 + 0x50);
        *(int *)(param_1 + 0x4c) = iVar1;
        *(int *)(param_1 + 8) = iVar1;
        *(undefined1 *)(param_1 + 0x54) = 0;
      }
      iVar1 = FUN_007c2cec(param_1,param_1 + 0x38);
      FUN_007c32c4(&local_20,param_1,iVar1,iVar1 >> 0x1f,1,*(undefined4 *)(param_1 + 0x38));
      if (iStack_1c == -1 && local_20 == -1) {
        return -1;
      }
    }
    piVar2 = *(int **)(param_1 + 0x10);
    piVar4 = *(int **)(param_1 + 0x14);
    bVar7 = param_2 != -1;
    if (piVar4 <= piVar2) {
      uVar3 = *(uint *)(param_1 + 0x40);
      if (uVar3 < 2) {
        if (bVar7) {
          local_20 = param_2;
          iVar1 = FUN_007c2be8(param_1,&local_20,1);
          if (iVar1 == 0) {
            return -1;
          }
        }
        else {
          param_2 = 0;
        }
        *(undefined1 *)(param_1 + 0x46) = 1;
        return param_2;
      }
      iVar1 = *(int *)(param_1 + 0x3c);
      bVar6 = (*(uint *)(param_1 + 0x2c) & 0x10) == 0;
      if (bVar6) {
        *(undefined4 *)(param_1 + 0x14) = 0;
        *(undefined4 *)(param_1 + 0x10) = 0;
      }
      else {
        uVar3 = uVar3 + 0x3fffffff;
      }
      *(int *)(param_1 + 4) = iVar1;
      *(int *)(param_1 + 8) = iVar1;
      if (!bVar6) {
        uVar3 = iVar1 + uVar3 * 4;
      }
      *(int *)(param_1 + 0xc) = iVar1;
      if (bVar6) {
        *(undefined4 *)(param_1 + 0x18) = 0;
      }
      else {
        *(int *)(param_1 + 0x14) = iVar1;
        *(int *)(param_1 + 0x10) = iVar1;
        *(uint *)(param_1 + 0x18) = uVar3;
      }
      *(undefined1 *)(param_1 + 0x46) = 1;
      if (!bVar7) {
        return 0;
      }
      piVar2 = *(int **)(param_1 + 0x14);
      *piVar2 = param_2;
      *(int **)(param_1 + 0x14) = piVar2 + 1;
      return param_2;
    }
    piVar5 = piVar4;
    if (bVar7) {
      piVar5 = piVar4 + 1;
      *piVar4 = param_2;
      *(int **)(param_1 + 0x14) = piVar5;
    }
    iVar1 = FUN_007c2be8(param_1,piVar2,(int)piVar5 - (int)piVar2 >> 2);
    if (iVar1 != 0) {
      iVar1 = *(int *)(param_1 + 0x3c);
      *(int *)(param_1 + 4) = iVar1;
      *(int *)(param_1 + 8) = iVar1;
      *(int *)(param_1 + 0xc) = iVar1;
      if ((*(int *)(param_1 + 0x2c) << 0x1b < 0) && (1 < *(uint *)(param_1 + 0x40))) {
        *(int *)(param_1 + 0x14) = iVar1;
        *(int *)(param_1 + 0x10) = iVar1;
        *(uint *)(param_1 + 0x18) = iVar1 + (*(uint *)(param_1 + 0x40) + 0x3fffffff) * 4;
      }
      else {
        *(undefined4 *)(param_1 + 0x14) = 0;
        *(undefined4 *)(param_1 + 0x10) = 0;
        *(undefined4 *)(param_1 + 0x18) = 0;
      }
      if (!bVar7) {
        return 0;
      }
      return param_2;
    }
  }
  return -1;
}

// ---- FUN_007c348c  @ 0x7c348c
longlong * FUN_007c348c(longlong *param_1,int param_2,uint param_3,int param_4,int param_5)

{
  uint uVar1;
  int iVar2;
  uint uVar3;
  bool bVar4;
  bool bVar5;
  longlong lVar6;
  int local_34;
  int local_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  
  if (*(int **)(param_2 + 0x58) == (int *)0x0) {
    bVar4 = true;
    uVar1 = 0;
  }
  else {
    uVar1 = (**(code **)(**(int **)(param_2 + 0x58) + 0x14))();
    if ((int)uVar1 < 0) {
      bVar4 = true;
      uVar1 = 0;
    }
    else if ((int)uVar1 < 1) {
      bVar4 = true;
    }
    else {
      bVar4 = false;
    }
  }
  *(undefined4 *)param_1 = 0xffffffff;
  *(undefined4 *)((int)param_1 + 4) = 0xffffffff;
  *(undefined4 *)(param_1 + 1) = 0;
  iVar2 = FUN_007ae2b4(param_2 + 0x24);
  if (iVar2 != 0) {
    if (param_3 == 0 && param_4 == 0) {
      bVar4 = false;
    }
    if (!bVar4) {
      if (((param_3 == 0 && param_4 == 0) && param_5 == 1) &&
         ((*(char *)(param_2 + 0x46) == '\0' ||
          (iVar2 = (**(code **)(**(int **)(param_2 + 0x58) + 0x18))(), iVar2 != 0)))) {
        bVar4 = true;
      }
      else {
        bVar4 = false;
        if (*(char *)(param_2 + 0x54) != '\0') {
          bVar4 = false;
          iVar2 = *(int *)(param_2 + 4);
          *(undefined1 *)(param_2 + 0x54) = 0;
          *(undefined4 *)(param_2 + 4) = *(undefined4 *)(param_2 + 0x3c);
          *(undefined4 *)(param_2 + 0xc) = *(undefined4 *)(param_2 + 0x50);
          iVar2 = *(int *)(param_2 + 0x4c) + (uint)(*(int *)(param_2 + 8) != iVar2) * 4;
          *(int *)(param_2 + 0x4c) = iVar2;
          *(int *)(param_2 + 8) = iVar2;
        }
      }
      local_34 = *(int *)(param_2 + 0x30);
      uVar3 = (uint)((ulonglong)uVar1 * (ulonglong)param_3);
      iVar2 = (int)((ulonglong)uVar1 * (ulonglong)param_3 >> 0x20) +
              param_3 * ((int)uVar1 >> 0x1f) + uVar1 * param_4;
      if ((*(char *)(param_2 + 0x45) != '\0') && (param_5 == 1)) {
        local_34 = *(int *)(param_2 + 0x38);
        uVar1 = FUN_007c2cec(param_2,&local_34);
        bVar5 = CARRY4(uVar3,uVar1);
        uVar3 = uVar3 + uVar1;
        iVar2 = iVar2 + ((int)uVar1 >> 0x1f) + (uint)bVar5;
      }
      if (!bVar4) {
        FUN_007c32c4(&local_30,param_2,uVar3,iVar2,param_5,local_34);
        *(int *)param_1 = local_30;
        *(undefined4 *)((int)param_1 + 4) = uStack_2c;
        *(undefined4 *)(param_1 + 1) = uStack_28;
        return param_1;
      }
      if (*(char *)(param_2 + 0x46) != '\0') {
        iVar2 = *(int *)(param_2 + 0x14) - *(int *)(param_2 + 0x10);
        uVar3 = iVar2 >> 2;
        iVar2 = iVar2 >> 0x1f;
      }
      lVar6 = FUN_007ae3c4(param_2 + 0x24,1,0,0,1);
      if (lVar6 != -1) {
        *param_1 = lVar6 + CONCAT44(iVar2,uVar3);
        *(int *)(param_1 + 1) = local_34;
      }
    }
  }
  return param_1;
}

// ---- FUN_007c3674  @ 0x7c3674
void FUN_007c3674(int *param_1,undefined4 param_2)

{
  int iVar1;
  int *piVar2;
  void *__src;
  int iVar3;
  size_t __n;
  uint local_28;
  uint local_24;
  
  iVar1 = FUN_007b3d9c(param_2);
  if (iVar1 == 0) {
    piVar2 = (int *)0x0;
  }
  else {
    piVar2 = (int *)FUN_007b2e44(param_2);
  }
  iVar1 = FUN_007ae2b4(param_1 + 9);
  if ((iVar1 == 0) ||
     ((*(char *)((int)param_1 + 0x45) == '\0' && (*(char *)((int)param_1 + 0x46) == '\0'))))
  goto LAB_007c3698;
  if ((int *)param_1[0x16] == (int *)0x0) {
LAB_007c3786:
                    /* WARNING: Subroutine does not return */
    FUN_007c4874();
  }
  iVar1 = (**(code **)(*(int *)param_1[0x16] + 0x14))();
  if (iVar1 == -1) {
LAB_007c36fe:
    param_1[0x16] = 0;
    return;
  }
  if (*(char *)((int)param_1 + 0x45) == '\0') {
    if (*(char *)((int)param_1 + 0x46) != '\0') {
      iVar1 = FUN_007c2d30(param_1);
      if (iVar1 == 0) goto LAB_007c36fe;
      iVar1 = param_1[0xf];
      param_1[5] = 0;
      param_1[4] = 0;
      param_1[6] = 0;
      param_1[1] = iVar1;
      param_1[2] = iVar1;
      param_1[3] = iVar1;
    }
  }
  else {
    if ((int *)param_1[0x16] == (int *)0x0) goto LAB_007c3786;
    iVar1 = (**(code **)(*(int *)param_1[0x16] + 0x18))();
    if (iVar1 == 0) {
      iVar3 = param_1[0x17];
      iVar1 = (**(code **)(*(int *)param_1[0x16] + 0x1c))
                        ((int *)param_1[0x16],param_1 + 0xe,iVar3,param_1[0x19],
                         param_1[2] - param_1[1] >> 2);
      __src = (void *)(iVar3 + iVar1);
      param_1[0x19] = (int)__src;
      __n = param_1[0x1a] - (int)__src;
      if (__n != 0) {
        memmove((void *)param_1[0x17],__src,__n);
      }
      iVar1 = param_1[0xf];
      param_1[1] = iVar1;
      param_1[0x19] = param_1[0x17];
      param_1[0x1a] = __n + param_1[0x17];
      param_1[2] = iVar1;
      param_1[3] = iVar1;
      param_1[0xd] = param_1[0xc];
      param_1[0xe] = param_1[0xc];
      param_1[5] = 0;
      param_1[4] = 0;
      param_1[6] = 0;
    }
    else if (((piVar2 != (int *)0x0) && (iVar1 = (**(code **)(*piVar2 + 0x18))(piVar2), iVar1 == 0))
            && ((**(code **)(*param_1 + 0x10))(&local_28,param_1,0,0,1,param_1[0xb]),
               (local_24 & local_28) == 0xffffffff)) goto LAB_007c36fe;
  }
LAB_007c3698:
  param_1[0x16] = (int)piVar2;
  return;
}

// ---- FUN_007c37ec  @ 0x7c37ec
int * FUN_007c37ec(int *param_1,int *param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  
  iVar1 = param_2[1];
  *param_1 = iVar1;
  *(int *)((int)param_1 + *(int *)(iVar1 + -0xc)) = param_2[2];
  param_1[1] = 0;
  FUN_00799504(*(int *)(iVar1 + -0xc) + (int)param_1,0,0,iVar1,param_4);
  iVar1 = *param_2;
  *param_1 = iVar1;
  *(int *)((int)param_1 + *(int *)(iVar1 + -0xc)) = param_2[3];
  FUN_007c2aa0(param_1 + 2);
  FUN_00799504(*(int *)(*param_1 + -0xc) + (int)param_1,param_1 + 2);
  return param_1;
}

// ---- FUN_007c3b18  @ 0x7c3b18
int * FUN_007c3b18(int *param_1,undefined4 *param_2,uint param_3)

{
  int iVar1;
  int *piVar2;
  int *piVar3;
  
  piVar2 = param_1 + 0x1d;
  FUN_0079a7a0(piVar2);
  *param_1 = (int)&DAT_0093f1cc;
  param_1[0x1d] = (int)&PTR_LAB_007a507c_1_0093f1e0;
  param_1[0x39] = 0;
  param_1[0x3a] = 0;
  *(undefined1 *)(param_1 + 0x3b) = 0;
  param_1[0x3c] = 0;
  param_1[0x3d] = 0;
  param_1[0x3e] = 0;
  param_1[0x3f] = 0;
  param_1[1] = 0;
  FUN_00799504(piVar2,0);
  piVar3 = param_1 + 2;
  *param_1 = (int)&DAT_0093f204;
  param_1[0x1d] = (int)&DAT_0093f218;
  FUN_007c2aa0(piVar3);
  FUN_00799504(piVar2,piVar3);
  iVar1 = FUN_007c2eb8(piVar3,*param_2,param_3 | 8);
  if (iVar1 != 0) {
    FUN_007992f0(*(int *)(*param_1 + -0xc) + (int)param_1,0);
    return param_1;
  }
  iVar1 = *(int *)(*param_1 + -0xc) + (int)param_1;
  FUN_007992f0(iVar1,*(uint *)(iVar1 + 0x14) | 4);
  return param_1;
}

// ---- FUN_007c3e80  @ 0x7c3e80
int * FUN_007c3e80(int *param_1,undefined4 param_2,uint param_3)

{
  int iVar1;
  int *piVar2;
  int *piVar3;
  
  piVar2 = param_1 + 0x1c;
  FUN_0079a7a0(piVar2);
  *param_1 = (int)&DAT_0093f22c;
  param_1[0x1c] = (int)&PTR_LAB_007bb0d4_1_0093f240;
  param_1[0x38] = 0;
  param_1[0x39] = 0;
  *(undefined1 *)(param_1 + 0x3a) = 0;
  param_1[0x3b] = 0;
  param_1[0x3c] = 0;
  param_1[0x3d] = 0;
  param_1[0x3e] = 0;
  FUN_00799504(piVar2,0);
  piVar3 = param_1 + 1;
  *param_1 = (int)&DAT_0093f264;
  param_1[0x1c] = (int)&DAT_0093f278;
  FUN_007c2aa0(piVar3);
  FUN_00799504(piVar2,piVar3);
  iVar1 = FUN_007c2eb8(piVar3,param_2,param_3 | 0x10);
  if (iVar1 != 0) {
    FUN_007992f0(*(int *)(*param_1 + -0xc) + (int)param_1,0);
    return param_1;
  }
  iVar1 = *(int *)(*param_1 + -0xc) + (int)param_1;
  FUN_007992f0(iVar1,*(uint *)(iVar1 + 0x14) | 4);
  return param_1;
}

// ---- FUN_007c4408  @ 0x7c4408
int * FUN_007c4408(int *param_1,undefined4 param_2,undefined4 param_3)

{
  int iVar1;
  int *piVar2;
  int *piVar3;
  
  piVar2 = param_1 + 0x1e;
  FUN_0079a7a0(piVar2);
  param_1[0x3a] = 0;
  param_1[0x3b] = 0;
  *param_1 = (int)&DAT_0093f2b4;
  param_1[0x1e] = (int)&DAT_0093f2c8;
  *(undefined1 *)(param_1 + 0x3c) = 0;
  param_1[0x3d] = 0;
  param_1[0x3e] = 0;
  param_1[0x3f] = 0;
  param_1[0x40] = 0;
  param_1[1] = 0;
  FUN_00799504(piVar2,0);
  param_1[2] = (int)&DAT_0093f28c;
  param_1[0x1e] = (int)&DAT_0093f2a0;
  FUN_00799504(piVar2,0);
  piVar3 = param_1 + 3;
  *param_1 = (int)&DAT_0093f344;
  param_1[0x1e] = (int)&DAT_0093f36c;
  param_1[2] = (int)&DAT_0093f358;
  FUN_007c2aa0(piVar3);
  FUN_00799504(piVar2,piVar3);
  iVar1 = FUN_007c2eb8(piVar3,param_2,param_3);
  if (iVar1 != 0) {
    FUN_007992f0(*(int *)(*param_1 + -0xc) + (int)param_1,0);
    return param_1;
  }
  iVar1 = *(int *)(*param_1 + -0xc) + (int)param_1;
  FUN_007992f0(iVar1,*(uint *)(iVar1 + 0x14) | 4);
  return param_1;
}

// ---- FUN_007c4788  @ 0x7c4788
void FUN_007c4788(int *param_1)

{
  int iVar1;
  
  iVar1 = FUN_007c2eb8(param_1 + 3);
  if (iVar1 != 0) {
    FUN_007992f0(*(int *)(*param_1 + -0xc) + (int)param_1,0);
    return;
  }
  iVar1 = *(int *)(*param_1 + -0xc) + (int)param_1;
  FUN_007992f0(iVar1,*(uint *)(iVar1 + 0x14) | 4);
  return;
}

// ---- FUN_007c47bc  @ 0x7c47bc
void FUN_007c47bc(int *param_1,undefined4 *param_2)

{
  int iVar1;
  
  iVar1 = FUN_007c2eb8(param_1 + 3,*param_2);
  if (iVar1 != 0) {
    FUN_007992f0(*(int *)(*param_1 + -0xc) + (int)param_1,0);
    return;
  }
  iVar1 = *(int *)(*param_1 + -0xc) + (int)param_1;
  FUN_007992f0(iVar1,*(uint *)(iVar1 + 0x14) | 4);
  return;
}

// ---- FUN_007c47f0  @ 0x7c47f0
void FUN_007c47f0(int *param_1)

{
  int iVar1;
  
  iVar1 = FUN_007c2dec(param_1 + 3);
  if (iVar1 != 0) {
    return;
  }
  iVar1 = *(int *)(*param_1 + -0xc) + (int)param_1;
  FUN_007992f0(iVar1,*(uint *)(iVar1 + 0x14) | 4);
  return;
}

// ---- FUN_007c4844  @ 0x7c4844
void FUN_007c4844(void)

{
  undefined4 *puVar1;
  undefined4 in_r3;
  
  puVar1 = (undefined4 *)__cxa_allocate_exception(4);
  *puVar1 = &PTR__bad_alloc_1_0093d8f8;
                    /* WARNING: Subroutine does not return */
  __cxa_throw(puVar1,&std::bad_alloc::typeinfo,0x798615,&PTR__bad_alloc_1_0093d8f8,in_r3);
}

// ---- FUN_007c4874  @ 0x7c4874
void FUN_007c4874(void)

{
  undefined4 *puVar1;
  undefined4 in_r3;
  
  puVar1 = (undefined4 *)__cxa_allocate_exception(4);
  *puVar1 = &PTR__bad_cast_1_0093f4f8;
                    /* WARNING: Subroutine does not return */
  __cxa_throw(puVar1,&std::bad_cast::typeinfo,0x7c7111,&PTR__bad_cast_1_0093f4f8,in_r3);
}

// ---- FUN_007c48d4  @ 0x7c48d4
void FUN_007c48d4(undefined4 param_1)

{
  undefined4 uVar1;
  undefined1 auStack_1c [4];
  undefined1 auStack_18 [4];
  int local_14;
  
  uVar1 = __cxa_allocate_exception(8);
  FUN_007c6a60(&local_14,param_1,auStack_1c);
  FUN_007c73a8(uVar1,&local_14);
  FUN_007c5900(local_14 + -0xc,auStack_18);
                    /* WARNING: Subroutine does not return */
  __cxa_throw(uVar1,&DAT_0093f584,0x7c7149);
}

// ---- FUN_007c4930  @ 0x7c4930
void FUN_007c4930(undefined4 param_1)

{
  undefined4 uVar1;
  undefined1 auStack_1c [4];
  undefined1 auStack_18 [4];
  int local_14;
  
  uVar1 = __cxa_allocate_exception(8);
  FUN_007c6a60(&local_14,param_1,auStack_1c);
  FUN_007c73cc(uVar1,&local_14);
  FUN_007c5900(local_14 + -0xc,auStack_18);
                    /* WARNING: Subroutine does not return */
  __cxa_throw(uVar1,&DAT_0093f5a8,0x7c71b5);
}

// ---- FUN_007c49e8  @ 0x7c49e8
void FUN_007c49e8(undefined4 param_1)

{
  undefined4 uVar1;
  undefined1 auStack_1c [4];
  undefined1 auStack_18 [4];
  int local_14;
  
  uVar1 = __cxa_allocate_exception(8);
  FUN_007c6a60(&local_14,param_1,auStack_1c);
  FUN_007c73fc(uVar1,&local_14);
  FUN_007c5900(local_14 + -0xc,auStack_18);
                    /* WARNING: Subroutine does not return */
  __cxa_throw(uVar1,&DAT_0093f5d8,&LAB_007c7224_1);
}

// ---- FUN_007c4a44  @ 0x7c4a44
void FUN_007c4a44(undefined4 param_1)

{
  undefined4 uVar1;
  undefined1 auStack_1c [4];
  undefined1 auStack_18 [4];
  int local_14;
  
  uVar1 = __cxa_allocate_exception(8);
  FUN_007c6a60(&local_14,param_1,auStack_1c);
  FUN_007c7414(uVar1,&local_14);
  FUN_007c5900(local_14 + -0xc,auStack_18);
                    /* WARNING: Subroutine does not return */
  __cxa_throw(uVar1,&DAT_0093f5b4,&LAB_007c725c_1);
}

// ---- FUN_007c4aa0  @ 0x7c4aa0
void FUN_007c4aa0(undefined4 param_1)

{
  undefined4 uVar1;
  undefined1 auStack_1c [4];
  undefined1 auStack_18 [4];
  int local_14;
  
  uVar1 = __cxa_allocate_exception(8);
  FUN_007c6a60(&local_14,param_1,auStack_1c);
  FUN_007c742c(uVar1,&local_14);
  FUN_007c5900(local_14 + -0xc,auStack_18);
                    /* WARNING: Subroutine does not return */
  __cxa_throw(uVar1,&PTR_PTR_0093f648,0x7c7295);
}

// ---- FUN_007c4afc  @ 0x7c4afc
void FUN_007c4afc(undefined4 param_1)

{
  undefined4 uVar1;
  undefined1 auStack_1c [4];
  undefined1 auStack_18 [4];
  int local_14;
  
  uVar1 = __cxa_allocate_exception(8);
  FUN_007c6a60(&local_14,param_1,auStack_1c);
  FUN_007c7450(uVar1,&local_14);
  FUN_007c5900(local_14 + -0xc,auStack_18);
                    /* WARNING: Subroutine does not return */
  __cxa_throw(uVar1,&DAT_0093f5c0,0x7c7301);
}

// ---- FUN_007c4c10  @ 0x7c4c10
void FUN_007c4c10(undefined4 param_1)

{
  undefined4 uVar1;
  undefined1 auStack_1c [4];
  undefined1 auStack_18 [4];
  int local_14;
  
  uVar1 = __cxa_allocate_exception(8);
  FUN_007c6a60(&local_14,param_1,auStack_1c);
  FUN_007c8064(uVar1,&local_14);
  FUN_007c5900(local_14 + -0xc,auStack_18);
                    /* WARNING: Subroutine does not return */
  __cxa_throw(uVar1,&DAT_0093f6a8,0x7c7ff9);
}

// ---- FUN_007c4c60  @ 0x7c4c60
void FUN_007c4c60(undefined4 param_1)

{
  undefined4 *puVar1;
  int *piVar2;
  undefined1 auStack_20 [4];
  int local_1c [2];
  
  puVar1 = (undefined4 *)__cxa_allocate_exception(0x10);
  piVar2 = (int *)FUN_007c82b8();
  (**(code **)(*piVar2 + 0xc))(local_1c,piVar2,param_1);
  FUN_007c742c(puVar1,local_1c);
  FUN_007c5900(local_1c[0] + -0xc,auStack_20);
  puVar1[2] = param_1;
  puVar1[3] = piVar2;
  *puVar1 = &DAT_0093f6f0;
                    /* WARNING: Subroutine does not return */
  __cxa_throw(puVar1,&DAT_0093f728,&LAB_007c822c_1);
}

// ---- FUN_007c4cd8  @ 0x7c4cd8
void FUN_007c4cd8(undefined4 param_1)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  undefined1 auStack_24 [4];
  undefined1 auStack_20 [4];
  int local_1c [2];
  
  puVar1 = (undefined4 *)__cxa_allocate_exception(0x10);
  uVar2 = FUN_007c4fdc();
  FUN_007c6a60(local_1c,"std::future_error",auStack_20);
  FUN_007c73a8(puVar1,local_1c);
  FUN_007c5900(local_1c[0] + -0xc,auStack_24);
  puVar1[2] = param_1;
  puVar1[3] = uVar2;
  *puVar1 = &DAT_0093f410;
                    /* WARNING: Subroutine does not return */
  __cxa_throw(puVar1,&DAT_0093f48c,&LAB_007c4e48_1);
}

// ---- FUN_007c4d54  @ 0x7c4d54
void FUN_007c4d54(void)

{
  undefined4 *puVar1;
  undefined4 in_r3;
  
  puVar1 = (undefined4 *)__cxa_allocate_exception(4);
  *puVar1 = &DAT_0093f3f0;
                    /* WARNING: Subroutine does not return */
  __cxa_throw(puVar1,&DAT_0093f3d8,&LAB_007c4dc8_1,&DAT_0093f3f0,in_r3);
}

// ---- FUN_007c4ebc  @ 0x7c4ebc
undefined4 * FUN_007c4ebc(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_007c4ebc_1_0093f448;
  FUN_007be0b4(param_1 + 3);
  if ((undefined4 *)param_1[1] != (undefined4 *)0x0) {
    (*(code *)**(undefined4 **)param_1[1])();
  }
  param_1[1] = 0;
  return param_1;
}

// ---- FUN_007c4ee4  @ 0x7c4ee4
void * FUN_007c4ee4(void *param_1)

{
  FUN_007c4ebc();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_007c4fdc  @ 0x7c4fdc
undefined4 * FUN_007c4fdc(void)

{
  int iVar1;
  uint uVar2;
  
  uVar2 = DAT_00972518 & 1;
  if ((uVar2 == 0) && (iVar1 = __cxa_guard_acquire(&DAT_00972518), iVar1 != 0)) {
    DAT_00972514 = (undefined **)uVar2;
    FUN_007c829c(&DAT_00972514);
    DAT_00972514 = &PTR_LAB_007c4e10_1_0093f460;
    __cxa_guard_release(&DAT_00972518);
    FUN_007985bc(&DAT_00972514,&LAB_007c4e10_1,&DAT_00943000);
  }
  return &DAT_00972514;
}

// ---- FUN_007c5058  @ 0x7c5058
undefined4 FUN_007c5058(undefined4 *param_1)

{
  return *param_1;
}

// ---- FUN_007c505c  @ 0x7c505c
undefined4 FUN_007c505c(int *param_1)

{
  return *(undefined4 *)(*param_1 + -0xc);
}

// ---- FUN_007c5088  @ 0x7c5088
uint FUN_007c5088(int *param_1,uint param_2,undefined4 param_3)

{
  if (param_2 <= *(uint *)(*param_1 + -0xc)) {
    return param_2;
  }
                    /* WARNING: Subroutine does not return */
  FUN_007c4a44(param_3);
}

// ---- FUN_007c51a4  @ 0x7c51a4
undefined4 * FUN_007c51a4(void)

{
  return &DAT_0097251c;
}

// ---- FUN_007c51b0  @ 0x7c51b0
void FUN_007c51b0(undefined4 *param_1)

{
  *param_1 = &DAT_00972528;
  return;
}

// ---- FUN_007c51c0  @ 0x7c51c0
void FUN_007c51c0(undefined4 *param_1,undefined4 *param_2)

{
  *param_1 = *param_2;
  *param_2 = &DAT_00972528;
  return;
}

// ---- FUN_007c51d8  @ 0x7c51d8
int FUN_007c51d8(int *param_1)

{
  return *(int *)(*param_1 + -0xc) + *param_1;
}

// ---- FUN_007c521c  @ 0x7c521c
undefined4 FUN_007c521c(int *param_1)

{
  return *(undefined4 *)(*param_1 + -0xc);
}

// ---- FUN_007c5230  @ 0x7c5230
undefined4 FUN_007c5230(int *param_1)

{
  return *(undefined4 *)(*param_1 + -8);
}

// ---- FUN_007c5238  @ 0x7c5238
int FUN_007c5238(int *param_1)

{
  int iVar1;
  
  iVar1 = 1 - *(uint *)(*param_1 + -0xc);
  if (1 < *(uint *)(*param_1 + -0xc)) {
    iVar1 = 0;
  }
  return iVar1;
}

// ---- FUN_007c5248  @ 0x7c5248
int FUN_007c5248(int *param_1,int param_2)

{
  return *param_1 + param_2;
}

// ---- FUN_007c527c  @ 0x7c527c
size_t FUN_007c527c(int *param_1,undefined1 *param_2,uint param_3,uint param_4)

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
      *param_2 = *(undefined1 *)(iVar1 + param_4);
      return 1;
    }
    memcpy(param_2,(void *)(iVar1 + param_4),__n);
  }
  return __n;
}

// ---- FUN_007c52bc  @ 0x7c52bc
void FUN_007c52bc(int *param_1,int *param_2)

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

// ---- FUN_007c52e8  @ 0x7c52e8
undefined4 FUN_007c52e8(undefined4 param_1)

{
  FUN_007c52bc();
  return param_1;
}

// ---- FUN_007c52f4  @ 0x7c52f4
undefined4 FUN_007c52f4(undefined4 param_1)

{
  FUN_007c52bc();
  return param_1;
}

// ---- FUN_007c5300  @ 0x7c5300
undefined4 FUN_007c5300(undefined4 *param_1)

{
  return *param_1;
}

// ---- FUN_007c5374  @ 0x7c5374
uint FUN_007c5374(int *param_1,undefined4 *param_2,uint param_3)

{
  char cVar1;
  uint uVar2;
  int iVar3;
  char *pcVar4;
  uint uVar5;
  char *pcVar6;
  int iVar7;
  
  pcVar4 = (char *)*param_2;
  uVar5 = *(uint *)(pcVar4 + -0xc);
  iVar7 = *param_1;
  uVar2 = *(uint *)(iVar7 + -0xc);
  if (uVar5 == 0) {
    if (uVar2 < param_3) {
      param_3 = 0xffffffff;
    }
    return param_3;
  }
  if ((uVar5 <= uVar2) && (param_3 <= uVar2 - uVar5)) {
    cVar1 = *pcVar4;
    pcVar6 = (char *)(iVar7 + param_3);
    do {
      param_3 = param_3 + 1;
      if ((*pcVar6 == cVar1) && (iVar3 = memcmp(pcVar6 + 1,pcVar4 + 1,uVar5 - 1), iVar3 == 0)) {
        return (int)pcVar6 - iVar7;
      }
      pcVar6 = pcVar6 + 1;
    } while (param_3 <= uVar2 - uVar5);
  }
  return 0xffffffff;
}

// ---- FUN_007c5380  @ 0x7c5380
uint FUN_007c5380(int *param_1,char *param_2,uint param_3)

{
  char cVar1;
  uint uVar2;
  int iVar3;
  size_t sVar4;
  char *pcVar5;
  int iVar6;
  
  sVar4 = strlen(param_2);
  iVar6 = *param_1;
  uVar2 = *(uint *)(iVar6 + -0xc);
  if (sVar4 == 0) {
    if (uVar2 < param_3) {
      param_3 = 0xffffffff;
    }
    return param_3;
  }
  if ((sVar4 <= uVar2) && (param_3 <= uVar2 - sVar4)) {
    cVar1 = *param_2;
    pcVar5 = (char *)(iVar6 + param_3);
    do {
      param_3 = param_3 + 1;
      if ((*pcVar5 == cVar1) && (iVar3 = memcmp(pcVar5 + 1,param_2 + 1,sVar4 - 1), iVar3 == 0)) {
        return (int)pcVar5 - iVar6;
      }
      pcVar5 = pcVar5 + 1;
    } while (param_3 <= uVar2 - sVar4);
  }
  return 0xffffffff;
}

// ---- FUN_007c53a0  @ 0x7c53a0
int FUN_007c53a0(int *param_1,int param_2,uint param_3)

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

// ---- FUN_007c5410  @ 0x7c5410
uint FUN_007c5410(int *param_1,char *param_2,uint param_3)

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

// ---- FUN_007c5430  @ 0x7c5430
uint FUN_007c5430(int *param_1,uint param_2,uint param_3)

{
  uint uVar1;
  uint uVar2;
  int iVar3;
  
  iVar3 = *(int *)(*param_1 + -0xc);
  uVar1 = iVar3 - 1;
  if (param_3 < uVar1) {
    uVar1 = param_3;
  }
  if (iVar3 == 0) {
    uVar2 = 0xffffffff;
  }
  else {
    do {
      uVar2 = uVar1;
      if (uVar2 == 0xffffffff) {
        return 0xffffffff;
      }
      uVar1 = uVar2 - 1;
    } while (*(byte *)(*param_1 + uVar2) != param_2);
  }
  return uVar2;
}

// ---- FUN_007c5464  @ 0x7c5464
uint FUN_007c5464(int *param_1,void *param_2,uint param_3,size_t param_4)

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

// ---- FUN_007c54a8  @ 0x7c54a8
void FUN_007c54a8(undefined4 param_1,char *param_2,undefined4 param_3)

{
  size_t sVar1;
  
  sVar1 = strlen(param_2);
  FUN_007c5464(param_1,param_2,param_3,sVar1);
  return;
}

// ---- FUN_007c551c  @ 0x7c551c
uint FUN_007c551c(int *param_1,char *param_2,uint param_3)

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

// ---- FUN_007c5584  @ 0x7c5584
uint FUN_007c5584(int *param_1,char *param_2,uint param_3)

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

// ---- FUN_007c55a4  @ 0x7c55a4
uint FUN_007c55a4(int *param_1,uint param_2,uint param_3)

{
  byte *pbVar1;
  int iVar2;
  byte *pbVar3;
  
  iVar2 = *param_1;
  if (param_3 < *(uint *)(iVar2 + -0xc)) {
    pbVar1 = (byte *)(iVar2 + param_3);
    pbVar3 = (byte *)(iVar2 + param_3);
    while( true ) {
      if (*pbVar1 != param_2) {
        return param_3;
      }
      param_3 = param_3 + 1;
      if (*(uint *)(iVar2 + -0xc) <= param_3) break;
      pbVar3 = pbVar3 + 1;
      param_2 = (uint)*pbVar3;
    }
  }
  return 0xffffffff;
}

// ---- FUN_007c55dc  @ 0x7c55dc
uint FUN_007c55dc(int *param_1,void *param_2,uint param_3,size_t param_4)

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

// ---- FUN_007c5628  @ 0x7c5628
void FUN_007c5628(undefined4 param_1,char *param_2,undefined4 param_3)

{
  size_t sVar1;
  
  sVar1 = strlen(param_2);
  FUN_007c55dc(param_1,param_2,param_3,sVar1);
  return;
}

// ---- FUN_007c567c  @ 0x7c567c
int FUN_007c567c(undefined4 *param_1,undefined4 *param_2)

{
  int iVar1;
  uint __n;
  uint uVar2;
  uint uVar3;
  
  uVar3 = *(uint *)((int)*param_1 + -0xc);
  uVar2 = *(uint *)((int)*param_2 + -0xc);
  __n = uVar2;
  if (uVar3 <= uVar2) {
    __n = uVar3;
  }
  iVar1 = memcmp((void *)*param_1,(void *)*param_2,__n);
  if (iVar1 == 0) {
    iVar1 = uVar3 - uVar2;
  }
  return iVar1;
}

// ---- FUN_007c569c  @ 0x7c569c
int FUN_007c569c(int *param_1,uint param_2,uint param_3,undefined4 *param_4)

{
  int iVar1;
  uint uVar2;
  size_t __n;
  
  uVar2 = *(uint *)(*param_1 + -0xc);
  if (param_2 <= uVar2) {
    uVar2 = uVar2 - param_2;
    if (param_3 <= uVar2) {
      uVar2 = param_3;
    }
    __n = *(size_t *)((int)*param_4 + -0xc);
    iVar1 = memcmp((void *)(*param_1 + param_2),(void *)*param_4,__n);
    if (iVar1 == 0) {
      iVar1 = uVar2 - __n;
    }
    return iVar1;
  }
                    /* WARNING: Subroutine does not return */
  FUN_007c4a44("basic_string::compare");
}

// ---- FUN_007c5724  @ 0x7c5724
int FUN_007c5724(undefined4 *param_1,char *param_2)

{
  size_t sVar1;
  int iVar2;
  uint __n;
  void *__s1;
  uint uVar3;
  
  __s1 = (void *)*param_1;
  sVar1 = strlen(param_2);
  uVar3 = *(uint *)((int)__s1 + -0xc);
  __n = sVar1;
  if (uVar3 <= sVar1) {
    __n = uVar3;
  }
  iVar2 = memcmp(__s1,param_2,__n);
  if (iVar2 == 0) {
    iVar2 = uVar3 - sVar1;
  }
  return iVar2;
}

// ---- FUN_007c574c  @ 0x7c574c
int FUN_007c574c(int *param_1,uint param_2,uint param_3,char *param_4)

{
  size_t sVar1;
  uint __n;
  int iVar2;
  uint uVar3;
  
  iVar2 = *param_1;
  uVar3 = *(uint *)(iVar2 + -0xc);
  if (param_2 <= uVar3) {
    uVar3 = uVar3 - param_2;
    if (param_3 <= uVar3) {
      uVar3 = param_3;
    }
    sVar1 = strlen(param_4);
    __n = sVar1;
    if (uVar3 <= sVar1) {
      __n = uVar3;
    }
    iVar2 = memcmp((void *)(iVar2 + param_2),param_4,__n);
    if (iVar2 == 0) {
      iVar2 = uVar3 - sVar1;
    }
    return iVar2;
  }
                    /* WARNING: Subroutine does not return */
  FUN_007c4a44("basic_string::compare");
}

// ---- FUN_007c57cc  @ 0x7c57cc
void FUN_007c57cc(undefined4 *param_1,undefined4 param_2)

{
  *param_1 = param_2;
  return;
}

// ---- FUN_007c5800  @ 0x7c5800
void FUN_007c5800(int *param_1,int param_2,int param_3)

{
  undefined1 uVar1;
  
  uVar1 = 0x1c;
  if (param_1 != &DAT_0097251c) {
    *param_1 = param_2;
    param_3 = (int)param_1 + param_2;
    uVar1 = 0;
    param_1[2] = 0;
  }
  if (param_1 != &DAT_0097251c) {
    *(undefined1 *)(param_3 + 0xc) = uVar1;
  }
  return;
}

// ---- FUN_007c581c  @ 0x7c581c
int FUN_007c581c(int param_1)

{
  return param_1 + 0xc;
}

// ---- FUN_007c5820  @ 0x7c5820
void FUN_007c5820(uint param_1,uint param_2)

{
  void *pvVar1;
  
  if (0x3ffffffc < param_1) {
                    /* WARNING: Subroutine does not return */
    FUN_007c49e8("basic_string::_S_create");
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

// ---- FUN_007c5880  @ 0x7c5880
size_t * FUN_007c5880(size_t param_1,int param_2)

{
  size_t *psVar1;
  size_t *__s;
  undefined1 uVar2;
  
  if (param_1 != 0) {
    psVar1 = (size_t *)FUN_007c5820(param_1,0);
    __s = psVar1 + 3;
    if (param_1 == 1) {
      *(char *)(psVar1 + 3) = (char)param_2;
    }
    else {
      __s = memset(__s,param_2,param_1);
    }
    uVar2 = 0x1c;
    if (psVar1 != &DAT_0097251c) {
      *psVar1 = param_1;
      uVar2 = 0;
      psVar1[2] = 0;
    }
    if (psVar1 != &DAT_0097251c) {
      *(undefined1 *)((int)__s + param_1) = uVar2;
    }
    return __s;
  }
  return (size_t *)&DAT_00972528;
}

// ---- FUN_007c58e4  @ 0x7c58e4
undefined4 *
FUN_007c58e4(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  
  uVar1 = FUN_007c5880(param_2,param_3,param_4);
  *param_1 = uVar1;
  return param_1;
}

// ---- FUN_007c5900  @ 0x7c5900
void FUN_007c5900(undefined4 *param_1)

{
  if (param_1 == &DAT_0097251c) {
    return;
  }
  FUN_002e71b4();
  return;
}

// ---- FUN_007c5914  @ 0x7c5914
int * FUN_007c5914(int *param_1)

{
  undefined1 auStack_c [4];
  
  if ((undefined4 *)(*param_1 + -0xc) != &DAT_0097251c) {
    FUN_002e71b4((undefined4 *)(*param_1 + -0xc),auStack_c);
  }
  return param_1;
}

// ---- FUN_007c5938  @ 0x7c5938
void FUN_007c5938(int *param_1,size_t param_2,int param_3,int param_4)

{
  int iVar1;
  undefined1 *__dest;
  uint uVar2;
  size_t __n;
  undefined1 auStack_2c [8];
  
  __dest = (undefined1 *)*param_1;
  uVar2 = (param_4 - param_3) + *(int *)(__dest + -0xc);
  __n = (*(int *)(__dest + -0xc) - param_2) - param_3;
  if ((*(uint *)(__dest + -8) < uVar2) || (0 < *(int *)(__dest + -4))) {
    iVar1 = FUN_007c5820(uVar2,*(uint *)(__dest + -8),auStack_2c);
    __dest = (undefined1 *)(iVar1 + 0xc);
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
    if ((undefined4 *)(*param_1 + -0xc) != &DAT_0097251c) {
      FUN_002e71b4((undefined4 *)(*param_1 + -0xc),auStack_2c);
    }
    *param_1 = (int)__dest;
  }
  else if (param_3 != param_4 && __n != 0) {
    if (__n == 1) {
      __dest[param_4 + param_2] = __dest[param_2 + param_3];
      __dest = (undefined1 *)*param_1;
    }
    else {
      memmove(__dest + param_4 + param_2,__dest + param_2 + param_3,__n);
      __dest = (undefined1 *)*param_1;
    }
  }
  if (__dest != &DAT_00972528) {
    *(uint *)(__dest + -0xc) = uVar2;
    *(undefined4 *)(__dest + -4) = 0;
    __dest[uVar2] = 0;
  }
  return;
}

// ---- FUN_007c5a30  @ 0x7c5a30
void FUN_007c5a30(undefined4 *param_1)

{
  undefined1 *puVar1;
  
  puVar1 = (undefined1 *)*param_1;
  if (puVar1 != &DAT_00972528) {
    if (0 < *(int *)(puVar1 + -4)) {
      FUN_007c5938(param_1,0,0,0);
      puVar1 = (undefined1 *)*param_1;
    }
    *(undefined4 *)(puVar1 + -4) = 0xffffffff;
  }
  return;
}

// ---- FUN_007c5a74  @ 0x7c5a74
int FUN_007c5a74(int *param_1)

{
  int iVar1;
  
  iVar1 = *param_1;
  if (-1 < *(int *)(iVar1 + -4)) {
    FUN_007c5a30();
    iVar1 = *param_1;
  }
  return iVar1;
}

// ---- FUN_007c5a8c  @ 0x7c5a8c
int * FUN_007c5a8c(int *param_1,int *param_2)

{
  int iVar1;
  
  iVar1 = *param_2;
  if (-1 < *(int *)(iVar1 + -4)) {
    FUN_007c5a30(param_2);
    iVar1 = *param_2;
  }
  *param_1 = iVar1;
  return param_1;
}

// ---- FUN_007c5aac  @ 0x7c5aac
int FUN_007c5aac(int *param_1)

{
  int iVar1;
  
  iVar1 = *param_1;
  if (-1 < *(int *)(iVar1 + -4)) {
    FUN_007c5a30();
    iVar1 = *param_1;
  }
  return *(int *)(iVar1 + -0xc) + iVar1;
}

// ---- FUN_007c5ac8  @ 0x7c5ac8
int FUN_007c5ac8(int *param_1,int param_2)

{
  int iVar1;
  
  iVar1 = *param_1;
  if (-1 < *(int *)(iVar1 + -4)) {
    FUN_007c5a30();
    iVar1 = *param_1;
  }
  return iVar1 + param_2;
}

// ---- FUN_007c5ae4  @ 0x7c5ae4
int FUN_007c5ae4(int *param_1)

{
  int iVar1;
  
  iVar1 = *param_1;
  if (-1 < *(int *)(iVar1 + -4)) {
    FUN_007c5a30();
    iVar1 = *param_1;
  }
  return iVar1;
}

// ---- FUN_007c5afc  @ 0x7c5afc
int FUN_007c5afc(int *param_1)

{
  int iVar1;
  int iVar2;
  
  iVar2 = *param_1;
  iVar1 = *(int *)(iVar2 + -0xc);
  if (-1 < *(int *)(iVar2 + -4)) {
    FUN_007c5a30();
    iVar2 = *param_1;
  }
  return iVar2 + iVar1 + -1;
}

// ---- FUN_007c5b1c  @ 0x7c5b1c
int FUN_007c5b1c(int *param_1,uint param_2)

{
  int iVar1;
  
  iVar1 = *param_1;
  if (param_2 < *(uint *)(iVar1 + -0xc)) {
    if (-1 < *(int *)(iVar1 + -4)) {
      FUN_007c5a30();
      iVar1 = *param_1;
    }
    return iVar1 + param_2;
  }
                    /* WARNING: Subroutine does not return */
  FUN_007c4a44("basic_string::at");
}

// ---- FUN_007c5b70  @ 0x7c5b70
void FUN_007c5b70(int *param_1)

{
  FUN_007c5938(param_1,0,*(undefined4 *)(*param_1 + -0xc),0);
  return;
}

// ---- FUN_007c5b80  @ 0x7c5b80
int * FUN_007c5b80(int *param_1,uint param_2,uint param_3,undefined4 param_4)

{
  uint uVar1;
  
  if (param_2 <= *(uint *)(*param_1 + -0xc)) {
    uVar1 = *(uint *)(*param_1 + -0xc) - param_2;
    if (uVar1 < param_3) {
      param_3 = uVar1;
    }
    FUN_007c5938(param_1,param_2,param_3,0,param_4);
    return param_1;
  }
                    /* WARNING: Subroutine does not return */
  FUN_007c4a44("basic_string::erase");
}

// ---- FUN_007c5bf4  @ 0x7c5bf4
int * FUN_007c5bf4(int *param_1,int param_2,int param_3,uint param_4,byte param_5)

{
  if ((uint)((0x3ffffffc - *(int *)(*param_1 + -0xc)) + param_3) < param_4) {
                    /* WARNING: Subroutine does not return */
    FUN_007c49e8("basic_string::_M_replace_aux");
  }
  FUN_007c5938();
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

// ---- FUN_007c5c48  @ 0x7c5c48
void FUN_007c5c48(int *param_1,undefined4 param_2,undefined4 param_3)

{
  FUN_007c5bf4(param_1,0,*(undefined4 *)(*param_1 + -0xc),param_2,param_3);
  return;
}

// ---- FUN_007c5c80  @ 0x7c5c80
void FUN_007c5c80(int *param_1,uint param_2,undefined4 param_3,undefined4 param_4)

{
  if (param_2 <= *(uint *)(*param_1 + -0xc)) {
    FUN_007c5bf4(param_1,param_2,0,param_3,param_4);
    return;
  }
                    /* WARNING: Subroutine does not return */
  FUN_007c4a44("basic_string::insert");
}

// ---- FUN_007c5ca8  @ 0x7c5ca8
int FUN_007c5ca8(int *param_1,int param_2,undefined4 param_3)

{
  int iVar1;
  int iVar2;
  
  iVar2 = *param_1;
  FUN_007c5bf4(param_1,param_2 - iVar2,0,1,param_3);
  iVar1 = *param_1;
  *(undefined4 *)(iVar1 + -4) = 0xffffffff;
  return iVar1 + (param_2 - iVar2);
}

// ---- FUN_007c5cd0  @ 0x7c5cd0
void FUN_007c5cd0(int *param_1,uint param_2,uint param_3)

{
  uint uVar1;
  
  if (param_2 <= *(uint *)(*param_1 + -0xc)) {
    uVar1 = *(uint *)(*param_1 + -0xc) - param_2;
    if (uVar1 < param_3) {
      param_3 = uVar1;
    }
    FUN_007c5bf4(param_1,param_2,param_3);
    return;
  }
                    /* WARNING: Subroutine does not return */
  FUN_007c4a44("basic_string::replace");
}

// ---- FUN_007c5d2c  @ 0x7c5d2c
int * FUN_007c5d2c(int *param_1,int param_2,undefined4 param_3,undefined1 *param_4,size_t param_5)

{
  FUN_007c5938();
  if (param_5 != 0) {
    if (param_5 == 1) {
      *(undefined1 *)(*param_1 + param_2) = *param_4;
      return param_1;
    }
    memcpy((void *)(*param_1 + param_2),param_4,param_5);
  }
  return param_1;
}

// ---- FUN_007c5d5c  @ 0x7c5d5c
undefined4 * FUN_007c5d5c(undefined4 *param_1,undefined1 *param_2,size_t param_3)

{
  undefined4 *puVar1;
  undefined1 uVar2;
  undefined1 *__dest;
  
  __dest = (undefined1 *)*param_1;
  if (0x3ffffffc < param_3) {
                    /* WARNING: Subroutine does not return */
    FUN_007c49e8("basic_string::assign");
  }
  if (((param_2 < __dest) || (__dest + *(int *)(__dest + -0xc) < param_2)) ||
     (0 < *(int *)(__dest + -4))) {
    puVar1 = (undefined4 *)FUN_007c5d2c(param_1,0,*(int *)(__dest + -0xc),param_2,param_3);
    return puVar1;
  }
  if ((uint)((int)param_2 - (int)__dest) < param_3) {
    if (param_2 == __dest) goto LAB_007c5dac;
    if (param_3 != 1) {
      memmove(__dest,param_2,param_3);
      __dest = (undefined1 *)*param_1;
      goto LAB_007c5dac;
    }
  }
  else if (param_3 != 1) {
    memcpy(__dest,param_2,param_3);
    __dest = (undefined1 *)*param_1;
    goto LAB_007c5dac;
  }
  *__dest = *param_2;
  __dest = (undefined1 *)*param_1;
LAB_007c5dac:
  uVar2 = 0x1c;
  if (__dest != &DAT_00972528) {
    *(size_t *)(__dest + -0xc) = param_3;
    uVar2 = 0;
    *(undefined4 *)(__dest + -4) = 0;
  }
  if (__dest != &DAT_00972528) {
    __dest[param_3] = uVar2;
  }
  return param_1;
}

// ---- FUN_007c5df8  @ 0x7c5df8
undefined4 FUN_007c5df8(undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
  FUN_007c5d5c(param_1,param_2,param_3);
  return param_1;
}

// ---- FUN_007c5e14  @ 0x7c5e14
void FUN_007c5e14(undefined4 param_1,int *param_2,uint param_3,uint param_4)

{
  uint uVar1;
  
  uVar1 = *(uint *)(*param_2 + -0xc);
  if (param_3 <= uVar1) {
    uVar1 = uVar1 - param_3;
    if (param_4 <= uVar1) {
      uVar1 = param_4;
    }
    FUN_007c5d5c(param_1,*param_2 + param_3,uVar1);
    return;
  }
                    /* WARNING: Subroutine does not return */
  FUN_007c4a44("basic_string::assign");
}

// ---- FUN_007c5e40  @ 0x7c5e40
void FUN_007c5e40(undefined4 param_1,char *param_2,undefined4 param_3,undefined4 param_4)

{
  size_t sVar1;
  
  sVar1 = strlen(param_2);
  FUN_007c5d5c(param_1,param_2,sVar1,param_4);
  return;
}

// ---- FUN_007c5e70  @ 0x7c5e70
void FUN_007c5e70(undefined4 param_1,char *param_2,undefined4 param_3,undefined4 param_4)

{
  size_t sVar1;
  
  sVar1 = strlen(param_2);
  FUN_007c5d5c(param_1,param_2,sVar1,param_4);
  return;
}

// ---- FUN_007c5fa4  @ 0x7c5fa4
uint * FUN_007c5fa4(uint *param_1,uint param_2,int *param_3,uint param_4,uint param_5)

{
  void *__src;
  uint uVar1;
  void *__dest;
  uint uVar2;
  uint uVar3;
  int iVar4;
  size_t __n;
  
  uVar2 = *(uint *)(*param_3 + -0xc);
  if (uVar2 < param_4) {
                    /* WARNING: Subroutine does not return */
    FUN_007c4a44("basic_string::insert");
  }
  uVar2 = uVar2 - param_4;
  param_4 = *param_3 + param_4;
  if (param_5 <= uVar2) {
    uVar2 = param_5;
  }
  uVar3 = *param_1;
  uVar1 = *(uint *)(uVar3 - 0xc);
  if (param_2 <= uVar1) {
    if (0x3ffffffc - uVar1 < uVar2) {
                    /* WARNING: Subroutine does not return */
      FUN_007c49e8("basic_string::insert");
    }
    if (((param_4 < uVar3) || (uVar1 + uVar3 < param_4)) || (0 < *(int *)(uVar3 - 4))) {
      param_1 = (uint *)FUN_007c5d2c(param_1,param_2,0,param_4,uVar2);
    }
    else {
      iVar4 = param_4 - uVar3;
      FUN_007c5938(param_1,param_2,0);
      uVar1 = *param_1;
      __src = (void *)(uVar1 + iVar4);
      __dest = (void *)(uVar1 + param_2);
      if ((void *)((int)__src + uVar2) <= __dest) {
        if (uVar2 == 1) {
          *(undefined1 *)(uVar1 + param_2) = *(undefined1 *)(uVar1 + iVar4);
          return param_1;
        }
        memcpy(__dest,__src,uVar2);
        return param_1;
      }
      if (__src < __dest) {
        __n = (int)__dest - (int)__src;
        if (__n == 1) {
          *(undefined1 *)(uVar1 + param_2) = *(undefined1 *)(uVar1 + iVar4);
        }
        else {
          __dest = memcpy(__dest,__src,__n);
        }
        if (uVar2 - __n == 1) {
          *(undefined1 *)((int)__dest + __n) = *(undefined1 *)((int)__dest + uVar2);
        }
        else {
          memcpy((void *)((int)__dest + __n),(void *)((int)__dest + uVar2),uVar2 - __n);
        }
      }
      else if (uVar2 == 1) {
        *(undefined1 *)(uVar1 + param_2) = *(undefined1 *)((int)__src + 1);
      }
      else {
        memcpy(__dest,(void *)((int)__src + uVar2),uVar2);
      }
    }
    return param_1;
  }
                    /* WARNING: Subroutine does not return */
  FUN_007c4a44("basic_string::insert");
}

// ---- FUN_007c5fd4  @ 0x7c5fd4
int * FUN_007c5fd4(int *param_1,uint param_2,char *param_3)

{
  size_t __n;
  char *__src;
  uint uVar1;
  char *__dest;
  int iVar2;
  char *pcVar3;
  size_t __n_00;
  
  __n = strlen(param_3);
  pcVar3 = (char *)*param_1;
  uVar1 = *(uint *)(pcVar3 + -0xc);
  if (uVar1 < param_2) {
                    /* WARNING: Subroutine does not return */
    FUN_007c4a44("basic_string::insert");
  }
  if (__n <= 0x3ffffffc - uVar1) {
    if (((param_3 < pcVar3) || (pcVar3 + uVar1 < param_3)) || (0 < *(int *)(pcVar3 + -4))) {
      param_1 = (int *)FUN_007c5d2c(param_1,param_2,0,param_3,__n);
    }
    else {
      FUN_007c5938(param_1,param_2,0);
      iVar2 = *param_1;
      __src = param_3 + (iVar2 - (int)pcVar3);
      __dest = (char *)(iVar2 + param_2);
      if (__src + __n <= __dest) {
        if (__n == 1) {
          *(char *)(iVar2 + param_2) = param_3[iVar2 - (int)pcVar3];
          return param_1;
        }
        memcpy(__dest,__src,__n);
        return param_1;
      }
      if (__src < __dest) {
        __n_00 = (int)__dest - (int)__src;
        if (__n_00 == 1) {
          *(char *)(iVar2 + param_2) = param_3[iVar2 - (int)pcVar3];
        }
        else {
          __dest = memcpy(__dest,__src,__n_00);
        }
        if (__n - __n_00 == 1) {
          __dest[__n_00] = __dest[__n];
        }
        else {
          memcpy(__dest + __n_00,__dest + __n,__n - __n_00);
        }
      }
      else if (__n == 1) {
        *(char *)(iVar2 + param_2) = __src[1];
      }
      else {
        memcpy(__dest,__src + __n,__n);
      }
    }
    return param_1;
  }
                    /* WARNING: Subroutine does not return */
  FUN_007c49e8("basic_string::insert");
}

// ---- FUN_007c5ff4  @ 0x7c5ff4
uint * FUN_007c5ff4(uint *param_1,uint param_2,uint *param_3)

{
  void *__src;
  uint uVar1;
  uint uVar2;
  void *__dest;
  uint __n;
  uint uVar3;
  int iVar4;
  size_t __n_00;
  
  uVar2 = *param_3;
  __n = *(uint *)(uVar2 - 0xc);
  uVar3 = *param_1;
  uVar1 = *(uint *)(uVar3 - 0xc);
  if (uVar1 < param_2) {
                    /* WARNING: Subroutine does not return */
    FUN_007c4a44("basic_string::insert");
  }
  if (__n <= 0x3ffffffc - uVar1) {
    if (((uVar2 < uVar3) || (uVar1 + uVar3 < uVar2)) || (0 < *(int *)(uVar3 - 4))) {
      param_1 = (uint *)FUN_007c5d2c(param_1,param_2,0,uVar2,__n);
    }
    else {
      iVar4 = uVar2 - uVar3;
      FUN_007c5938(param_1,param_2,0);
      uVar1 = *param_1;
      __src = (void *)(uVar1 + iVar4);
      __dest = (void *)(uVar1 + param_2);
      if ((void *)((int)__src + __n) <= __dest) {
        if (__n == 1) {
          *(undefined1 *)(uVar1 + param_2) = *(undefined1 *)(uVar1 + iVar4);
          return param_1;
        }
        memcpy(__dest,__src,__n);
        return param_1;
      }
      if (__src < __dest) {
        __n_00 = (int)__dest - (int)__src;
        if (__n_00 == 1) {
          *(undefined1 *)(uVar1 + param_2) = *(undefined1 *)(uVar1 + iVar4);
        }
        else {
          __dest = memcpy(__dest,__src,__n_00);
        }
        if (__n - __n_00 == 1) {
          *(undefined1 *)((int)__dest + __n_00) = *(undefined1 *)((int)__dest + __n);
        }
        else {
          memcpy((void *)((int)__dest + __n_00),(void *)((int)__dest + __n),__n - __n_00);
        }
      }
      else if (__n == 1) {
        *(undefined1 *)(uVar1 + param_2) = *(undefined1 *)((int)__src + 1);
      }
      else {
        memcpy(__dest,(void *)((int)__src + __n),__n);
      }
    }
    return param_1;
  }
                    /* WARNING: Subroutine does not return */
  FUN_007c49e8("basic_string::insert");
}

// ---- FUN_007c6000  @ 0x7c6000
void FUN_007c6000(int *param_1)

{
  uint uVar1;
  
  uVar1 = *(uint *)(*param_1 + -0xc) - 1;
  if (uVar1 <= *(uint *)(*param_1 + -0xc)) {
    FUN_007c5938(param_1,uVar1,1,0);
    return;
  }
                    /* WARNING: Subroutine does not return */
  FUN_007c4a44("basic_string::erase");
}

// ---- FUN_007c6054  @ 0x7c6054
void FUN_007c6054(size_t *param_1,undefined4 param_2,int param_3,undefined4 param_4)

{
  size_t *psVar1;
  size_t *__dest;
  size_t __n;
  size_t sVar2;
  undefined1 uVar3;
  
  psVar1 = (size_t *)FUN_007c5820(*param_1 + param_3,param_1[1],param_2,param_2,param_4);
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
  uVar3 = 0x1c;
  if (psVar1 != &DAT_0097251c) {
    *psVar1 = sVar2;
    uVar3 = 0;
    psVar1[2] = 0;
  }
  if (psVar1 != &DAT_0097251c) {
    *(undefined1 *)((int)__dest + sVar2) = uVar3;
  }
  return;
}

// ---- FUN_007c60a0  @ 0x7c60a0
void FUN_007c60a0(int *param_1,uint param_2)

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
    iVar3 = FUN_007c6054((uint *)(iVar3 + -0xc),auStack_14,iVar2);
    if ((undefined4 *)(*param_1 + -0xc) != &DAT_0097251c) {
      FUN_002e71b4((undefined4 *)(*param_1 + -0xc),auStack_14);
    }
    *param_1 = iVar3;
  }
  return;
}

// ---- FUN_007c6120  @ 0x7c6120
int * FUN_007c6120(int *param_1,undefined4 *param_2)

{
  undefined1 *puVar1;
  int iVar2;
  size_t __n;
  int iVar3;
  uint uVar4;
  
  puVar1 = (undefined1 *)*param_2;
  __n = *(size_t *)(puVar1 + -0xc);
  if (__n != 0) {
    iVar2 = *param_1;
    iVar3 = *(int *)(iVar2 + -0xc);
    uVar4 = iVar3 + __n;
    if ((*(uint *)(iVar2 + -8) < uVar4) || (0 < *(int *)(iVar2 + -4))) {
      FUN_007c60a0(param_1,uVar4);
      iVar2 = *param_1;
      puVar1 = (undefined1 *)*param_2;
      iVar3 = *(int *)(iVar2 + -0xc);
    }
    if (__n == 1) {
      *(undefined1 *)(iVar2 + iVar3) = *puVar1;
    }
    else {
      memcpy((void *)(iVar2 + iVar3),puVar1,__n);
    }
    puVar1 = (undefined1 *)*param_1;
    if (puVar1 != &DAT_00972528) {
      *(uint *)(puVar1 + -0xc) = uVar4;
      *(undefined4 *)(puVar1 + -4) = 0;
      puVar1[uVar4] = 0;
    }
  }
  return param_1;
}

// ---- thunk_FUN_007c6120  @ 0x7c6198
int * thunk_FUN_007c6120(int *param_1,undefined4 *param_2)

{
  undefined1 *puVar1;
  int iVar2;
  size_t __n;
  int iVar3;
  uint uVar4;
  
  puVar1 = (undefined1 *)*param_2;
  __n = *(size_t *)(puVar1 + -0xc);
  if (__n != 0) {
    iVar2 = *param_1;
    iVar3 = *(int *)(iVar2 + -0xc);
    uVar4 = iVar3 + __n;
    if ((*(uint *)(iVar2 + -8) < uVar4) || (0 < *(int *)(iVar2 + -4))) {
      FUN_007c60a0(param_1,uVar4);
      iVar2 = *param_1;
      puVar1 = (undefined1 *)*param_2;
      iVar3 = *(int *)(iVar2 + -0xc);
    }
    if (__n == 1) {
      *(undefined1 *)(iVar2 + iVar3) = *puVar1;
    }
    else {
      memcpy((void *)(iVar2 + iVar3),puVar1,__n);
    }
    puVar1 = (undefined1 *)*param_1;
    if (puVar1 != &DAT_00972528) {
      *(uint *)(puVar1 + -0xc) = uVar4;
      *(undefined4 *)(puVar1 + -4) = 0;
      puVar1[uVar4] = 0;
    }
  }
  return param_1;
}

// ---- FUN_007c619c  @ 0x7c619c
int * FUN_007c619c(int *param_1,int *param_2,uint param_3,uint param_4)

{
  int iVar1;
  uint uVar2;
  int iVar3;
  undefined1 *puVar4;
  int iVar5;
  uint __n;
  uint uVar6;
  
  iVar1 = *param_2;
  if (param_3 <= *(uint *)(iVar1 + -0xc)) {
    __n = *(uint *)(iVar1 + -0xc) - param_3;
    if (param_4 <= __n) {
      __n = param_4;
    }
    if (__n != 0) {
      iVar5 = *param_1;
      iVar3 = *(int *)(iVar5 + -0xc);
      uVar2 = *(uint *)(iVar5 + -8);
      uVar6 = __n + iVar3;
      if ((uVar2 < uVar6) || (uVar2 = *(uint *)(iVar5 + -4), 0 < (int)uVar2)) {
        FUN_007c60a0(param_1,uVar6,uVar2,iVar3,param_4);
        iVar5 = *param_1;
        iVar1 = *param_2;
        iVar3 = *(int *)(iVar5 + -0xc);
      }
      if (__n == 1) {
        *(undefined1 *)(iVar5 + iVar3) = *(undefined1 *)(iVar1 + param_3);
      }
      else {
        memcpy((void *)(iVar5 + iVar3),(void *)(iVar1 + param_3),__n);
      }
      puVar4 = (undefined1 *)*param_1;
      if (puVar4 != &DAT_00972528) {
        *(uint *)(puVar4 + -0xc) = uVar6;
        *(undefined4 *)(puVar4 + -4) = 0;
        puVar4[uVar6] = 0;
      }
    }
    return param_1;
  }
                    /* WARNING: Subroutine does not return */
  FUN_007c4a44("basic_string::append");
}

// ---- FUN_007c6234  @ 0x7c6234
undefined4 * FUN_007c6234(undefined4 *param_1,undefined1 *param_2,uint param_3,undefined4 param_4)

{
  undefined1 uVar1;
  undefined1 *puVar2;
  undefined1 *puVar3;
  int iVar4;
  undefined1 *puVar5;
  
  if (param_3 != 0) {
    puVar3 = (undefined1 *)*param_1;
    puVar2 = *(undefined1 **)(puVar3 + -0xc);
    if (0x3ffffffcU - (int)puVar2 < param_3) {
                    /* WARNING: Subroutine does not return */
      FUN_007c49e8("basic_string::append");
    }
    puVar5 = puVar2 + param_3;
    if ((*(undefined1 **)(puVar3 + -8) < puVar5) || (0 < *(int *)(puVar3 + -4))) {
      if ((param_2 < puVar3) || (puVar2 = puVar2 + (int)puVar3, puVar2 < param_2)) {
        FUN_007c60a0(param_1,puVar5,puVar2,puVar3,param_4);
        puVar3 = (undefined1 *)*param_1;
        puVar2 = *(undefined1 **)(puVar3 + -0xc);
      }
      else {
        iVar4 = (int)param_2 - (int)puVar3;
        FUN_007c60a0(param_1,puVar5,puVar2,puVar3,param_4);
        puVar3 = (undefined1 *)*param_1;
        param_2 = puVar3 + iVar4;
        puVar2 = *(undefined1 **)(puVar3 + -0xc);
      }
    }
    if (param_3 == 1) {
      puVar3[(int)puVar2] = *param_2;
    }
    else {
      memcpy(puVar3 + (int)puVar2,param_2,param_3);
    }
    puVar2 = (undefined1 *)*param_1;
    uVar1 = 0x1c;
    if (puVar2 != &DAT_00972528) {
      *(undefined1 **)(puVar2 + -0xc) = puVar5;
      uVar1 = 0;
      *(undefined4 *)(puVar2 + -4) = 0;
    }
    if (puVar2 != &DAT_00972528) {
      puVar5[(int)puVar2] = uVar1;
    }
  }
  return param_1;
}

// ---- FUN_007c62f0  @ 0x7c62f0
void FUN_007c62f0(undefined4 param_1,char *param_2,undefined4 param_3,undefined4 param_4)

{
  size_t sVar1;
  
  sVar1 = strlen(param_2);
  FUN_007c6234(param_1,param_2,sVar1,param_4);
  return;
}

// ---- FUN_007c6320  @ 0x7c6320
void FUN_007c6320(undefined4 param_1,char *param_2,undefined4 param_3,undefined4 param_4)

{
  size_t sVar1;
  
  sVar1 = strlen(param_2);
  FUN_007c6234(param_1,param_2,sVar1,param_4);
  return;
}

// ---- FUN_007c633c  @ 0x7c633c
int * FUN_007c633c(int *param_1,uint param_2,int param_3)

{
  undefined1 uVar1;
  int iVar2;
  undefined1 *puVar3;
  int iVar4;
  uint uVar5;
  
  if (param_2 != 0) {
    iVar2 = *param_1;
    iVar4 = *(int *)(iVar2 + -0xc);
    if (0x3ffffffcU - iVar4 < param_2) {
                    /* WARNING: Subroutine does not return */
      FUN_007c49e8("basic_string::append");
    }
    uVar5 = param_2 + iVar4;
    if ((*(uint *)(iVar2 + -8) < uVar5) || (0 < *(int *)(iVar2 + -4))) {
      FUN_007c60a0(param_1,uVar5);
      iVar2 = *param_1;
      iVar4 = *(int *)(iVar2 + -0xc);
    }
    if (param_2 == 1) {
      *(char *)(iVar2 + iVar4) = (char)param_3;
    }
    else {
      memset((void *)(iVar2 + iVar4),param_3,param_2);
    }
    puVar3 = (undefined1 *)*param_1;
    uVar1 = 0x1c;
    if (puVar3 != &DAT_00972528) {
      *(uint *)(puVar3 + -0xc) = uVar5;
      uVar1 = 0;
      *(undefined4 *)(puVar3 + -4) = 0;
    }
    if (puVar3 != &DAT_00972528) {
      puVar3[uVar5] = uVar1;
    }
  }
  return param_1;
}

// ---- FUN_007c63c4  @ 0x7c63c4
void FUN_007c63c4(int *param_1,uint param_2)

{
  uint uVar1;
  
  uVar1 = *(uint *)(*param_1 + -0xc);
  if (0x3ffffffc < param_2) {
                    /* WARNING: Subroutine does not return */
    FUN_007c49e8("basic_string::resize");
  }
  if (param_2 <= uVar1) {
    if (uVar1 <= param_2) {
      return;
    }
    FUN_007c5938(param_1,param_2,uVar1 - param_2,0);
    return;
  }
  FUN_007c633c(param_1,param_2 - uVar1);
  return;
}

// ---- FUN_007c6404  @ 0x7c6404
void FUN_007c6404(undefined4 param_1,undefined4 param_2)

{
  FUN_007c63c4(param_1,param_2,0);
  return;
}

// ---- FUN_007c640c  @ 0x7c640c
void FUN_007c640c(int *param_1,undefined1 param_2)

{
  int iVar1;
  int iVar2;
  undefined1 *puVar3;
  uint uVar4;
  
  iVar2 = *param_1;
  iVar1 = *(int *)(iVar2 + -0xc);
  uVar4 = iVar1 + 1;
  if ((*(uint *)(iVar2 + -8) < uVar4) || (0 < *(int *)(iVar2 + -4))) {
    FUN_007c60a0(param_1,uVar4);
    iVar2 = *param_1;
    iVar1 = *(int *)(iVar2 + -0xc);
  }
  *(undefined1 *)(iVar2 + iVar1) = param_2;
  puVar3 = (undefined1 *)*param_1;
  if (puVar3 == &DAT_00972528) {
    return;
  }
  *(uint *)(puVar3 + -0xc) = uVar4;
  *(undefined4 *)(puVar3 + -4) = 0;
  puVar3[uVar4] = 0;
  return;
}

// ---- FUN_007c645c  @ 0x7c645c
int * FUN_007c645c(int *param_1,undefined1 param_2)

{
  undefined1 uVar1;
  int iVar2;
  int iVar3;
  undefined1 *puVar4;
  uint uVar5;
  
  iVar3 = *param_1;
  iVar2 = *(int *)(iVar3 + -0xc);
  uVar5 = iVar2 + 1;
  if ((*(uint *)(iVar3 + -8) < uVar5) || (0 < *(int *)(iVar3 + -4))) {
    FUN_007c60a0(param_1,uVar5);
    iVar3 = *param_1;
    iVar2 = *(int *)(iVar3 + -0xc);
  }
  *(undefined1 *)(iVar3 + iVar2) = param_2;
  puVar4 = (undefined1 *)*param_1;
  uVar1 = 0x1c;
  if (puVar4 != &DAT_00972528) {
    *(uint *)(puVar4 + -0xc) = uVar5;
    uVar1 = 0;
    *(undefined4 *)(puVar4 + -4) = 0;
  }
  if (puVar4 != &DAT_00972528) {
    puVar4[uVar5] = uVar1;
  }
  return param_1;
}

// ---- FUN_007c64e8  @ 0x7c64e8
int * FUN_007c64e8(int *param_1,int *param_2)

{
  bool bVar1;
  int *piVar2;
  int iVar3;
  undefined1 auStack_c [4];
  
  iVar3 = *param_2;
  if (*(int *)(iVar3 + -4) < 0) {
    iVar3 = FUN_007c6054((undefined4 *)(iVar3 + -0xc),auStack_c,0);
    *param_1 = iVar3;
    return param_1;
  }
  if ((undefined4 *)(iVar3 + -0xc) != &DAT_0097251c) {
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

// ---- FUN_007c653c  @ 0x7c653c
int * FUN_007c653c(int *param_1,int *param_2)

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
      iVar5 = FUN_007c6054(puVar2,auStack_14,0);
      puVar3 = (undefined4 *)(*param_1 + -0xc);
    }
    else if (puVar2 != &DAT_0097251c) {
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
    if (puVar3 != &DAT_0097251c) {
      FUN_002e71b4(puVar3,auStack_14);
    }
    *param_1 = iVar5;
  }
  return param_1;
}

// ---- thunk_FUN_007c653c  @ 0x7c65b4
int * thunk_FUN_007c653c(int *param_1,int *param_2)

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
      iVar5 = FUN_007c6054(puVar2,auStack_14,0);
      puVar3 = (undefined4 *)(*param_1 + -0xc);
    }
    else if (puVar2 != &DAT_0097251c) {
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
    if (puVar3 != &DAT_0097251c) {
      FUN_002e71b4(puVar3,auStack_14);
    }
    *param_1 = iVar5;
  }
  return param_1;
}

// ---- FUN_007c65b8  @ 0x7c65b8
undefined4 * FUN_007c65b8(undefined4 *param_1,undefined4 param_2,int *param_3)

{
  *param_1 = &DAT_00972528;
  FUN_007c60a0(param_1,*(int *)(*param_3 + -0xc) + 1);
  FUN_007c633c(param_1,1,param_2);
  FUN_007c6120(param_1,param_3);
  return param_1;
}

// ---- FUN_007c6678  @ 0x7c6678
size_t * FUN_007c6678(undefined1 *param_1,undefined1 *param_2)

{
  size_t *psVar1;
  size_t *__dest;
  undefined1 uVar2;
  size_t __n;
  
  if (param_1 == param_2) {
    return (size_t *)&DAT_00972528;
  }
  if (param_1 == (undefined1 *)0x0) {
    if (param_2 != (undefined1 *)0x0) {
                    /* WARNING: Subroutine does not return */
      FUN_007c48d4("basic_string::_S_construct null not valid");
    }
    psVar1 = (size_t *)FUN_007c5820();
    __dest = psVar1 + 3;
    __n = 0;
  }
  else {
    __n = (int)param_2 - (int)param_1;
    psVar1 = (size_t *)FUN_007c5820(__n,0);
    __dest = psVar1 + 3;
    if (__n == 1) {
      *(undefined1 *)(psVar1 + 3) = *param_1;
      goto LAB_007c669c;
    }
  }
  __dest = memcpy(__dest,param_1,__n);
LAB_007c669c:
  uVar2 = 0x1c;
  if (psVar1 != &DAT_0097251c) {
    *psVar1 = __n;
    uVar2 = 0;
    psVar1[2] = 0;
  }
  if (psVar1 != &DAT_0097251c) {
    *(undefined1 *)((int)__dest + __n) = uVar2;
  }
  return __dest;
}

// ---- FUN_007c66ec  @ 0x7c66ec
undefined4 * FUN_007c66ec(undefined4 *param_1,int *param_2,uint param_3,uint param_4)

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
    uVar1 = FUN_007c6678(iVar2 + param_3,param_3 + uVar3 + iVar2,auStack_14,0);
    *param_1 = uVar1;
    return param_1;
  }
                    /* WARNING: Subroutine does not return */
  FUN_007c4a44("basic_string::basic_string");
}

// ---- FUN_007c6728  @ 0x7c6728
undefined4 FUN_007c6728(undefined4 param_1,int *param_2,uint param_3)

{
  if (param_3 <= *(uint *)(*param_2 + -0xc)) {
    FUN_007c66ec();
    return param_1;
  }
                    /* WARNING: Subroutine does not return */
  FUN_007c4a44("basic_string::substr");
}

// ---- FUN_007c674c  @ 0x7c674c
undefined4 *
FUN_007c674c(undefined4 *param_1,int *param_2,uint param_3,uint param_4,undefined4 param_5)

{
  undefined4 uVar1;
  int iVar2;
  uint uVar3;
  
  iVar2 = *param_2;
  if (param_3 <= *(uint *)(iVar2 + -0xc)) {
    uVar3 = *(uint *)(iVar2 + -0xc) - param_3;
    if (param_4 < uVar3) {
      uVar3 = param_4;
    }
    uVar1 = FUN_007c6678(iVar2 + param_3,param_3 + uVar3 + iVar2,param_5,0);
    *param_1 = uVar1;
    return param_1;
  }
                    /* WARNING: Subroutine does not return */
  FUN_007c4a44("basic_string::basic_string");
}

// ---- FUN_007c6784  @ 0x7c6784
undefined4 *
FUN_007c6784(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  
  uVar1 = FUN_007c6678(param_2,param_3,param_4,0);
  *param_1 = uVar1;
  return param_1;
}

// ---- FUN_007c679c  @ 0x7c679c
size_t * FUN_007c679c(undefined1 *param_1,undefined1 *param_2)

{
  size_t *psVar1;
  size_t *__dest;
  undefined1 uVar2;
  size_t __n;
  
  if (param_1 == param_2) {
    return (size_t *)&DAT_00972528;
  }
  if (param_1 == (undefined1 *)0x0) {
    if (param_2 != (undefined1 *)0x0) {
                    /* WARNING: Subroutine does not return */
      FUN_007c48d4("basic_string::_S_construct null not valid");
    }
    psVar1 = (size_t *)FUN_007c5820();
    __dest = psVar1 + 3;
    __n = 0;
  }
  else {
    __n = (int)param_2 - (int)param_1;
    psVar1 = (size_t *)FUN_007c5820(__n,0);
    __dest = psVar1 + 3;
    if (__n == 1) {
      *(undefined1 *)(psVar1 + 3) = *param_1;
      goto LAB_007c67c0;
    }
  }
  __dest = memcpy(__dest,param_1,__n);
LAB_007c67c0:
  uVar2 = 0x1c;
  if (psVar1 != &DAT_0097251c) {
    *psVar1 = __n;
    uVar2 = 0;
    psVar1[2] = 0;
  }
  if (psVar1 != &DAT_0097251c) {
    *(undefined1 *)((int)__dest + __n) = uVar2;
  }
  return __dest;
}

// ---- FUN_007c6810  @ 0x7c6810
undefined4 * FUN_007c6810(undefined4 *param_1,int param_2,int param_3,undefined4 param_4)

{
  undefined4 uVar1;
  
  uVar1 = FUN_007c679c(param_2,param_2 + param_3,param_4,0);
  *param_1 = uVar1;
  return param_1;
}

// ---- FUN_007c6828  @ 0x7c6828
uint * FUN_007c6828(uint *param_1,uint param_2,uint param_3,uint param_4,uint param_5)

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
    FUN_007c4a44("basic_string::replace");
  }
  uVar5 = uVar3 - param_2;
  if (param_3 <= uVar3 - param_2) {
    uVar5 = param_3;
  }
  if ((0x3ffffffc - uVar3) + uVar5 < param_5) {
                    /* WARNING: Subroutine does not return */
    FUN_007c49e8("basic_string::replace");
  }
  if (((param_4 < uVar2) || (uVar3 + uVar2 < param_4)) || (0 < *(int *)(uVar2 - 4))) {
    puVar1 = (uint *)FUN_007c5d2c(param_1,param_2,uVar5,param_4,param_5);
    return puVar1;
  }
  if (uVar2 + param_2 < param_4 + param_5) {
    if (param_4 < uVar5 + param_2 + uVar2) {
      FUN_007c6810(&local_1c,param_4,param_5,auStack_20);
      puVar1 = (uint *)FUN_007c5d2c(param_1,param_2,uVar5,local_1c,param_5);
      if ((undefined4 *)(local_1c + -0xc) == &DAT_0097251c) {
        return puVar1;
      }
      FUN_002e71b4((undefined4 *)(local_1c + -0xc),auStack_20);
      return puVar1;
    }
    iVar4 = ((param_4 - uVar2) + param_5) - uVar5;
  }
  else {
    iVar4 = param_4 - uVar2;
  }
  FUN_007c5938(param_1,param_2,uVar5,param_5);
  uVar2 = *param_1;
  if (param_5 != 1) {
    memcpy((void *)(uVar2 + param_2),(void *)(uVar2 + iVar4),param_5);
    return param_1;
  }
  *(undefined1 *)(uVar2 + param_2) = *(undefined1 *)(uVar2 + iVar4);
  return param_1;
}

// ---- FUN_007c6950  @ 0x7c6950
void FUN_007c6950(void)

{
  int *in_r3;
  uint in_stack_00000000;
  
  if (*(uint *)(*in_r3 + -0xc) < in_stack_00000000) {
                    /* WARNING: Subroutine does not return */
    FUN_007c4a44("basic_string::replace");
  }
  FUN_007c6828();
  return;
}

// ---- FUN_007c6980  @ 0x7c6980
void FUN_007c6980(undefined4 param_1,undefined4 param_2,undefined4 param_3,char *param_4)

{
  size_t sVar1;
  
  sVar1 = strlen(param_4);
  FUN_007c6828(param_1,param_2,param_3,param_4,sVar1);
  return;
}

// ---- FUN_007c69d0  @ 0x7c69d0
void FUN_007c69d0(int *param_1,int param_2,int param_3,char *param_4)

{
  size_t sVar1;
  
  sVar1 = strlen(param_4);
  FUN_007c6828(param_1,param_2 - *param_1,param_3 - param_2,param_4,sVar1);
  return;
}

// ---- FUN_007c6a60  @ 0x7c6a60
undefined4 * FUN_007c6a60(undefined4 *param_1,char *param_2,undefined4 param_3)

{
  size_t sVar1;
  undefined4 uVar2;
  char *pcVar3;
  
  pcVar3 = (char *)0xffffffff;
  if (param_2 != (char *)0x0) {
    sVar1 = strlen(param_2);
    pcVar3 = param_2 + sVar1;
  }
  uVar2 = FUN_007c679c(param_2,pcVar3,param_3,0);
  *param_1 = uVar2;
  return param_1;
}

// ---- FUN_007c6a88  @ 0x7c6a88
undefined4 * FUN_007c6a88(undefined4 *param_1,int param_2,int param_3,undefined4 param_4)

{
  undefined4 uVar1;
  
  uVar1 = FUN_007c679c(param_2,param_3 + param_2,param_4,0);
  *param_1 = uVar1;
  return param_1;
}

// ---- FUN_007c6aac  @ 0x7c6aac
undefined4 *
FUN_007c6aac(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  
  uVar1 = FUN_007c679c(param_2,param_3,param_4,0);
  *param_1 = uVar1;
  return param_1;
}

// ---- FUN_007c6d88  @ 0x7c6d88
void FUN_007c6d88(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_007c6d88_1_0093f4a0;
  return;
}

// ---- FUN_007c6d98  @ 0x7c6d98
undefined4 FUN_007c6d98(void)

{
  return 0;
}

// ---- FUN_007c6da4  @ 0x7c6da4
undefined4 * FUN_007c6da4(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_007c6d88_1_0093f4a0;
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_007c6dbc  @ 0x7c6dbc
int FUN_007c6dbc(int param_1,int param_2)

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

// ---- FUN_007c7148  @ 0x7c7148
exception * FUN_007c7148(exception *param_1)

{
  bool bVar1;
  undefined4 *puVar2;
  int *piVar3;
  int iVar4;
  
  puVar2 = (undefined4 *)(*(int *)(param_1 + 4) + -0xc);
  *(undefined **)param_1 = &DAT_0093f5f0;
  if (puVar2 != &DAT_0097251c) {
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

// ---- FUN_007c71a0  @ 0x7c71a0
void * FUN_007c71a0(void *param_1)

{
  FUN_007c7148();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_007c71b4  @ 0x7c71b4
undefined4 * FUN_007c71b4(undefined4 *param_1)

{
  *param_1 = &DAT_0093f568;
  FUN_007c7148();
  return param_1;
}

// ---- FUN_007c7294  @ 0x7c7294
exception * FUN_007c7294(exception *param_1)

{
  bool bVar1;
  undefined4 *puVar2;
  int *piVar3;
  int iVar4;
  
  puVar2 = (undefined4 *)(*(int *)(param_1 + 4) + -0xc);
  *(undefined **)param_1 = &DAT_0093f520;
  if (puVar2 != &DAT_0097251c) {
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

// ---- FUN_007c72ec  @ 0x7c72ec
void * FUN_007c72ec(void *param_1)

{
  FUN_007c7294();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_007c7300  @ 0x7c7300
undefined4 * FUN_007c7300(undefined4 *param_1)

{
  *param_1 = &DAT_0093f638;
  FUN_007c7294();
  return param_1;
}

// ---- FUN_007c73a8  @ 0x7c73a8
undefined4 * FUN_007c73a8(undefined4 *param_1)

{
  *param_1 = &DAT_0093f5f0;
  FUN_007c64e8(param_1 + 1);
  return param_1;
}

// ---- FUN_007c73cc  @ 0x7c73cc
undefined4 * FUN_007c73cc(undefined4 *param_1)

{
  FUN_007c73a8();
  *param_1 = &DAT_0093f568;
  return param_1;
}

// ---- FUN_007c73fc  @ 0x7c73fc
undefined4 * FUN_007c73fc(undefined4 *param_1)

{
  FUN_007c73a8();
  *param_1 = &DAT_0093f620;
  return param_1;
}

// ---- FUN_007c7414  @ 0x7c7414
undefined4 * FUN_007c7414(undefined4 *param_1)

{
  FUN_007c73a8();
  *param_1 = &DAT_0093f608;
  return param_1;
}

// ---- FUN_007c742c  @ 0x7c742c
undefined4 * FUN_007c742c(undefined4 *param_1)

{
  *param_1 = &DAT_0093f520;
  FUN_007c64e8(param_1 + 1);
  return param_1;
}

// ---- FUN_007c7450  @ 0x7c7450
undefined4 * FUN_007c7450(undefined4 *param_1)

{
  FUN_007c742c();
  *param_1 = &DAT_0093f638;
  return param_1;
}

// ---- FUN_007c7498  @ 0x7c7498
undefined4 * FUN_007c7498(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_007c7498_1_0093daf0;
  if ((int *)param_1[2] != (int *)0x0) {
    (**(code **)(*(int *)param_1[2] + 4))();
  }
  FUN_007afcc4(param_1);
  return param_1;
}

// ---- FUN_007c74c8  @ 0x7c74c8
void * FUN_007c74c8(void *param_1)

{
  FUN_007c7498();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_007c74dc  @ 0x7c74dc
undefined4 * FUN_007c74dc(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_007c74dc_1_0093e9e8;
  if ((int *)param_1[2] != (int *)0x0) {
    (**(code **)(*(int *)param_1[2] + 4))();
  }
  FUN_007afcc4(param_1);
  return param_1;
}

// ---- FUN_007c750c  @ 0x7c750c
void * FUN_007c750c(void *param_1)

{
  FUN_007c74dc();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_007c7520  @ 0x7c7520
void FUN_007c7520(int param_1)

{
  undefined1 *puVar1;
  int iVar2;
  int iVar3;
  undefined4 *puVar4;
  int iVar5;
  
  puVar4 = *(undefined4 **)(param_1 + 8);
  if (puVar4 == (undefined4 *)0x0) {
    puVar4 = operator_new(0x68);
    puVar4[1] = 0;
    puVar4[2] = 0;
    puVar4[3] = 0;
    *(undefined1 *)(puVar4 + 4) = 0;
    puVar4[5] = 0;
    puVar4[6] = 0;
    puVar4[7] = 0;
    puVar4[8] = 0;
    *(undefined1 *)(puVar4 + 9) = 0;
    *(undefined1 *)((int)puVar4 + 0x25) = 0;
    *(undefined1 *)(puVar4 + 0x19) = 0;
    *puVar4 = &DAT_0093de20;
    *(undefined4 **)(param_1 + 8) = puVar4;
  }
  *(undefined1 *)(puVar4 + 9) = 0x2e;
  iVar3 = DAT_0094f574;
  iVar5 = *(int *)(param_1 + 8);
  iVar2 = 0;
  puVar4[3] = 0;
  puVar4[2] = &DAT_0084895d;
  *(undefined1 *)(puVar4 + 4) = 0;
  *(undefined1 *)(iVar5 + 0x25) = 0x2c;
  do {
    puVar1 = (undefined1 *)(iVar3 + iVar2);
    iVar5 = *(int *)(param_1 + 8) + iVar2;
    iVar2 = iVar2 + 1;
    *(undefined1 *)(iVar5 + 0x26) = *puVar1;
    iVar5 = DAT_0094f570;
  } while (iVar2 != 0x24);
  iVar3 = 0;
  do {
    puVar1 = (undefined1 *)(iVar5 + iVar3);
    iVar2 = *(int *)(param_1 + 8) + iVar3;
    iVar3 = iVar3 + 1;
    *(undefined1 *)(iVar2 + 0x4a) = *puVar1;
  } while (iVar3 != 0x1a);
  iVar3 = *(int *)(param_1 + 8);
  *(undefined4 *)(iVar3 + 0x18) = 4;
  *(undefined **)(iVar3 + 0x14) = &DAT_008537f4;
  *(char **)(iVar3 + 0x1c) = "false";
  *(undefined4 *)(iVar3 + 0x20) = 5;
  return;
}

// ---- FUN_007c75dc  @ 0x7c75dc
void FUN_007c75dc(int param_1)

{
  byte *pbVar1;
  int iVar2;
  uint *puVar3;
  int iVar4;
  int iVar5;
  undefined4 *puVar6;
  
  puVar6 = *(undefined4 **)(param_1 + 8);
  if (puVar6 == (undefined4 *)0x0) {
    puVar6 = operator_new(0x128);
    puVar6[1] = 0;
    puVar6[2] = 0;
    puVar6[3] = 0;
    *(undefined1 *)(puVar6 + 4) = 0;
    puVar6[5] = 0;
    puVar6[6] = 0;
    puVar6[7] = 0;
    puVar6[8] = 0;
    puVar6[9] = 0;
    puVar6[10] = 0;
    *(undefined1 *)(puVar6 + 0x49) = 0;
    *puVar6 = &DAT_0093ed18;
    *(undefined4 **)(param_1 + 8) = puVar6;
  }
  iVar4 = 0;
  puVar6[3] = 0;
  iVar5 = DAT_0094f574;
  puVar6[2] = &DAT_0084895d;
  *(undefined1 *)(puVar6 + 4) = 0;
  puVar6[9] = 0x2e;
  puVar3 = puVar6 + 10;
  *puVar3 = 0x2c;
  do {
    pbVar1 = (byte *)(iVar5 + iVar4);
    iVar4 = iVar4 + 1;
    puVar3 = puVar3 + 1;
    *puVar3 = (uint)*pbVar1;
    iVar2 = DAT_0094f570;
  } while (iVar4 != 0x24);
  puVar3 = puVar6 + 0x2e;
  iVar5 = 0;
  do {
    pbVar1 = (byte *)(iVar2 + iVar5);
    iVar5 = iVar5 + 1;
    puVar3 = puVar3 + 1;
    *puVar3 = (uint)*pbVar1;
  } while (iVar5 != 0x1a);
  puVar6[6] = 4;
  puVar6[5] = &DAT_008814a0;
  puVar6[7] = L"false";
  puVar6[8] = 5;
  return;
}

// ---- FUN_007c768c  @ 0x7c768c
undefined4 FUN_007c768c(undefined4 param_1)

{
  undefined4 in_stack_00000004;
  
  FUN_007c64e8(param_1,in_stack_00000004);
  return param_1;
}

// ---- FUN_007c769c  @ 0x7c769c
undefined4 FUN_007c769c(undefined4 param_1)

{
  undefined4 in_stack_00000004;
  
  FUN_007bf630(param_1,in_stack_00000004);
  return param_1;
}

// ---- FUN_007c76ac  @ 0x7c76ac
undefined4 * FUN_007c76ac(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_007c76ac_1_0093dbd0;
  if ((int *)param_1[2] != (int *)0x0) {
    (**(code **)(*(int *)param_1[2] + 4))();
  }
  FUN_007afcc4(param_1);
  return param_1;
}

// ---- FUN_007c76dc  @ 0x7c76dc
void * FUN_007c76dc(void *param_1)

{
  FUN_007c76ac();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_007c76f0  @ 0x7c76f0
undefined4 * FUN_007c76f0(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_007c76f0_1_0093dc08;
  if ((int *)param_1[2] != (int *)0x0) {
    (**(code **)(*(int *)param_1[2] + 4))();
  }
  FUN_007afcc4(param_1);
  return param_1;
}

// ---- FUN_007c7720  @ 0x7c7720
void * FUN_007c7720(void *param_1)

{
  FUN_007c76f0();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_007c7734  @ 0x7c7734
undefined4 * FUN_007c7734(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_007c7734_1_0093eac8;
  if ((int *)param_1[2] != (int *)0x0) {
    (**(code **)(*(int *)param_1[2] + 4))();
  }
  FUN_007afcc4(param_1);
  return param_1;
}

// ---- FUN_007c7764  @ 0x7c7764
void * FUN_007c7764(void *param_1)

{
  FUN_007c7734();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_007c7778  @ 0x7c7778
undefined4 * FUN_007c7778(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_007c7778_1_0093eb00;
  if ((int *)param_1[2] != (int *)0x0) {
    (**(code **)(*(int *)param_1[2] + 4))();
  }
  FUN_007afcc4(param_1);
  return param_1;
}

// ---- FUN_007c77a8  @ 0x7c77a8
void * FUN_007c77a8(void *param_1)

{
  FUN_007c7778();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_007c77f4  @ 0x7c77f4
void FUN_007c77f4(int param_1)

{
  undefined1 *puVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  undefined4 *puVar5;
  int iVar6;
  
  puVar5 = *(undefined4 **)(param_1 + 8);
  if (puVar5 == (undefined4 *)0x0) {
    puVar5 = operator_new(0x44);
    puVar5[1] = 0;
    puVar5[2] = 0;
    puVar5[3] = 0;
    *(undefined1 *)(puVar5 + 4) = 0;
    *(undefined1 *)((int)puVar5 + 0x11) = 0;
    *(undefined1 *)((int)puVar5 + 0x12) = 0;
    puVar5[5] = 0;
    puVar5[6] = 0;
    puVar5[7] = 0;
    puVar5[8] = 0;
    puVar5[9] = 0;
    puVar5[10] = 0;
    puVar5[0xb] = 0;
    *(undefined1 *)(puVar5 + 0xc) = 0;
    *(undefined1 *)((int)puVar5 + 0x31) = 0;
    *(undefined1 *)((int)puVar5 + 0x32) = 0;
    *(undefined1 *)((int)puVar5 + 0x33) = 0;
    *(undefined1 *)(puVar5 + 0xd) = 0;
    *(undefined1 *)((int)puVar5 + 0x35) = 0;
    *(undefined1 *)((int)puVar5 + 0x36) = 0;
    *(undefined1 *)((int)puVar5 + 0x37) = 0;
    *(undefined1 *)((int)puVar5 + 0x43) = 0;
    *puVar5 = &DAT_0093de10;
    *(undefined4 **)(param_1 + 8) = puVar5;
  }
  *(undefined1 *)((int)puVar5 + 0x11) = 0x2e;
  iVar4 = 0;
  *(undefined1 *)(*(int *)(param_1 + 8) + 0x12) = 0x2c;
  iVar2 = DAT_0094f578;
  iVar3 = *(int *)(param_1 + 8);
  *(undefined4 *)(iVar3 + 0x30) = 0x4000302;
  iVar6 = *(int *)(param_1 + 8);
  *(undefined4 *)(iVar3 + 0xc) = 0;
  *(undefined **)(iVar3 + 8) = &DAT_0084895d;
  *(undefined **)(iVar3 + 0x14) = &DAT_0084895d;
  *(undefined **)(iVar3 + 0x1c) = &DAT_0084895d;
  *(undefined **)(iVar3 + 0x24) = &DAT_0084895d;
  *(undefined4 *)(iVar3 + 0x18) = 0;
  *(undefined4 *)(iVar3 + 0x20) = 0;
  *(undefined4 *)(iVar3 + 0x28) = 0;
  *(undefined4 *)(iVar3 + 0x2c) = 0;
  *(undefined4 *)(iVar6 + 0x34) = 0x4000302;
  do {
    puVar1 = (undefined1 *)(iVar2 + iVar4);
    iVar3 = *(int *)(param_1 + 8) + iVar4;
    iVar4 = iVar4 + 1;
    *(undefined1 *)(iVar3 + 0x38) = *puVar1;
  } while (iVar4 != 0xb);
  return;
}

// ---- FUN_007c78b0  @ 0x7c78b0
void FUN_007c78b0(int param_1)

{
  undefined1 *puVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  undefined4 *puVar5;
  int iVar6;
  
  puVar5 = *(undefined4 **)(param_1 + 8);
  if (puVar5 == (undefined4 *)0x0) {
    puVar5 = operator_new(0x44);
    puVar5[1] = 0;
    puVar5[2] = 0;
    puVar5[3] = 0;
    *(undefined1 *)(puVar5 + 4) = 0;
    *(undefined1 *)((int)puVar5 + 0x11) = 0;
    *(undefined1 *)((int)puVar5 + 0x12) = 0;
    puVar5[5] = 0;
    puVar5[6] = 0;
    puVar5[7] = 0;
    puVar5[8] = 0;
    puVar5[9] = 0;
    puVar5[10] = 0;
    puVar5[0xb] = 0;
    *(undefined1 *)(puVar5 + 0xc) = 0;
    *(undefined1 *)((int)puVar5 + 0x31) = 0;
    *(undefined1 *)((int)puVar5 + 0x32) = 0;
    *(undefined1 *)((int)puVar5 + 0x33) = 0;
    *(undefined1 *)(puVar5 + 0xd) = 0;
    *(undefined1 *)((int)puVar5 + 0x35) = 0;
    *(undefined1 *)((int)puVar5 + 0x36) = 0;
    *(undefined1 *)((int)puVar5 + 0x37) = 0;
    *(undefined1 *)((int)puVar5 + 0x43) = 0;
    *puVar5 = &DAT_0093de00;
    *(undefined4 **)(param_1 + 8) = puVar5;
  }
  *(undefined1 *)((int)puVar5 + 0x11) = 0x2e;
  iVar4 = 0;
  *(undefined1 *)(*(int *)(param_1 + 8) + 0x12) = 0x2c;
  iVar2 = DAT_0094f578;
  iVar3 = *(int *)(param_1 + 8);
  *(undefined4 *)(iVar3 + 0x30) = 0x4000302;
  iVar6 = *(int *)(param_1 + 8);
  *(undefined4 *)(iVar3 + 0xc) = 0;
  *(undefined **)(iVar3 + 8) = &DAT_0084895d;
  *(undefined **)(iVar3 + 0x14) = &DAT_0084895d;
  *(undefined **)(iVar3 + 0x1c) = &DAT_0084895d;
  *(undefined **)(iVar3 + 0x24) = &DAT_0084895d;
  *(undefined4 *)(iVar3 + 0x18) = 0;
  *(undefined4 *)(iVar3 + 0x20) = 0;
  *(undefined4 *)(iVar3 + 0x28) = 0;
  *(undefined4 *)(iVar3 + 0x2c) = 0;
  *(undefined4 *)(iVar6 + 0x34) = 0x4000302;
  do {
    puVar1 = (undefined1 *)(iVar2 + iVar4);
    iVar3 = *(int *)(param_1 + 8) + iVar4;
    iVar4 = iVar4 + 1;
    *(undefined1 *)(iVar3 + 0x38) = *puVar1;
  } while (iVar4 != 0xb);
  return;
}

// ---- FUN_007c796c  @ 0x7c796c
void FUN_007c796c(int param_1)

{
  byte *pbVar1;
  int iVar2;
  int iVar3;
  undefined4 *puVar4;
  int iVar5;
  
  puVar4 = *(undefined4 **)(param_1 + 8);
  if (puVar4 == (undefined4 *)0x0) {
    puVar4 = operator_new(0x70);
    puVar4[1] = 0;
    puVar4[2] = 0;
    puVar4[3] = 0;
    *(undefined1 *)(puVar4 + 4) = 0;
    puVar4[5] = 0;
    puVar4[6] = 0;
    puVar4[7] = 0;
    puVar4[8] = 0;
    puVar4[9] = 0;
    puVar4[10] = 0;
    puVar4[0xb] = 0;
    puVar4[0xc] = 0;
    puVar4[0xd] = 0;
    *(undefined1 *)(puVar4 + 0xe) = 0;
    *(undefined1 *)((int)puVar4 + 0x39) = 0;
    *(undefined1 *)((int)puVar4 + 0x3a) = 0;
    *(undefined1 *)((int)puVar4 + 0x3b) = 0;
    *(undefined1 *)(puVar4 + 0xf) = 0;
    *(undefined1 *)((int)puVar4 + 0x3d) = 0;
    *(undefined1 *)((int)puVar4 + 0x3e) = 0;
    *(undefined1 *)((int)puVar4 + 0x3f) = 0;
    *(undefined1 *)(puVar4 + 0x1b) = 0;
    *puVar4 = &DAT_0093ed08;
    *(undefined4 **)(param_1 + 8) = puVar4;
  }
  puVar4[2] = &DAT_0084895d;
  iVar3 = 0;
  puVar4[0xe] = 0x4000302;
  iVar5 = *(int *)(param_1 + 8);
  puVar4[7] = &DAT_00881128;
  puVar4[3] = 0;
  puVar4[8] = 0;
  puVar4[10] = 0;
  puVar4[0xc] = 0;
  puVar4[0xd] = 0;
  puVar4[9] = &DAT_00881128;
  puVar4[0xb] = &DAT_00881128;
  puVar4[5] = 0x2e;
  puVar4[6] = 0x2c;
  *(undefined4 *)(iVar5 + 0x3c) = 0x4000302;
  iVar5 = DAT_0094f578;
  iVar2 = *(int *)(param_1 + 8);
  do {
    pbVar1 = (byte *)(iVar5 + iVar3);
    iVar3 = iVar3 + 1;
    *(uint *)(iVar2 + 0x40) = (uint)*pbVar1;
    iVar2 = iVar2 + 4;
  } while (iVar3 != 0xb);
  return;
}

// ---- FUN_007c7a38  @ 0x7c7a38
void FUN_007c7a38(int param_1)

{
  byte *pbVar1;
  int iVar2;
  int iVar3;
  undefined4 *puVar4;
  int iVar5;
  
  puVar4 = *(undefined4 **)(param_1 + 8);
  if (puVar4 == (undefined4 *)0x0) {
    puVar4 = operator_new(0x70);
    puVar4[1] = 0;
    puVar4[2] = 0;
    puVar4[3] = 0;
    *(undefined1 *)(puVar4 + 4) = 0;
    puVar4[5] = 0;
    puVar4[6] = 0;
    puVar4[7] = 0;
    puVar4[8] = 0;
    puVar4[9] = 0;
    puVar4[10] = 0;
    puVar4[0xb] = 0;
    puVar4[0xc] = 0;
    puVar4[0xd] = 0;
    *(undefined1 *)(puVar4 + 0xe) = 0;
    *(undefined1 *)((int)puVar4 + 0x39) = 0;
    *(undefined1 *)((int)puVar4 + 0x3a) = 0;
    *(undefined1 *)((int)puVar4 + 0x3b) = 0;
    *(undefined1 *)(puVar4 + 0xf) = 0;
    *(undefined1 *)((int)puVar4 + 0x3d) = 0;
    *(undefined1 *)((int)puVar4 + 0x3e) = 0;
    *(undefined1 *)((int)puVar4 + 0x3f) = 0;
    *(undefined1 *)(puVar4 + 0x1b) = 0;
    *puVar4 = &DAT_0093ecf8;
    *(undefined4 **)(param_1 + 8) = puVar4;
  }
  puVar4[2] = &DAT_0084895d;
  iVar3 = 0;
  puVar4[0xe] = 0x4000302;
  iVar5 = *(int *)(param_1 + 8);
  puVar4[7] = &DAT_00881128;
  puVar4[3] = 0;
  puVar4[8] = 0;
  puVar4[10] = 0;
  puVar4[0xc] = 0;
  puVar4[0xd] = 0;
  puVar4[9] = &DAT_00881128;
  puVar4[0xb] = &DAT_00881128;
  puVar4[5] = 0x2e;
  puVar4[6] = 0x2c;
  *(undefined4 *)(iVar5 + 0x3c) = 0x4000302;
  iVar5 = DAT_0094f578;
  iVar2 = *(int *)(param_1 + 8);
  do {
    pbVar1 = (byte *)(iVar5 + iVar3);
    iVar3 = iVar3 + 1;
    *(uint *)(iVar2 + 0x40) = (uint)*pbVar1;
    iVar2 = iVar2 + 4;
  } while (iVar3 != 0xb);
  return;
}

// ---- FUN_007c7b04  @ 0x7c7b04
void FUN_007c7b04(int param_1,undefined1 *param_2,int param_3)

{
  uint uVar1;
  undefined1 *puVar2;
  undefined1 uVar3;
  undefined1 *puVar4;
  
  uVar1 = *(uint *)(param_1 + 0xc);
  *param_2 = 0x25;
  if ((int)(uVar1 << 0x14) < 0) {
    puVar4 = param_2 + 2;
    param_2[1] = 0x2b;
  }
  else {
    puVar4 = param_2 + 1;
  }
  if ((int)(uVar1 << 0x15) < 0) {
    *puVar4 = 0x23;
    puVar4 = puVar4 + 1;
  }
  *puVar4 = 0x2e;
  puVar4[1] = 0x2a;
  puVar2 = puVar4 + 2;
  if (param_3 != 0) {
    puVar2 = puVar4 + 3;
    puVar4[2] = (char)param_3;
  }
  if ((uVar1 & 0x104) == 4) {
    *puVar2 = 0x66;
  }
  else {
    if ((uVar1 & 0x104) == 0x100) {
      if ((uVar1 & 0x4000) == 0) {
        uVar3 = 0x65;
      }
      else {
        uVar3 = 0x45;
      }
      *puVar2 = uVar3;
      puVar2[1] = 0;
      return;
    }
    if ((uVar1 & 0x4000) == 0) {
      uVar3 = 0x67;
    }
    else {
      uVar3 = 0x47;
    }
    *puVar2 = uVar3;
  }
  puVar2[1] = 0;
  return;
}

// ---- FUN_007c7b7c  @ 0x7c7b7c
bool FUN_007c7b7c(int param_1,int param_2,undefined4 *param_3)

{
  byte *pbVar1;
  byte bVar2;
  bool bVar3;
  uint uVar4;
  uint uVar5;
  uint uVar6;
  byte *pbVar7;
  byte *pbVar8;
  bool bVar9;
  
  uVar4 = param_2 - 1;
  pbVar8 = (byte *)*param_3;
  uVar6 = *(int *)(pbVar8 + -0xc) - 1;
  if (uVar6 <= uVar4) {
    uVar4 = uVar6;
  }
  if (uVar4 == 0) {
    bVar9 = true;
  }
  else {
    pbVar7 = pbVar8 + *(int *)(pbVar8 + -0xc);
    uVar5 = 0;
    do {
      pbVar7 = pbVar7 + -1;
      uVar6 = uVar6 - 1;
      pbVar1 = (byte *)(param_1 + uVar5);
      uVar5 = uVar5 + 1;
      bVar9 = *pbVar1 == *pbVar7;
    } while (uVar5 < uVar4 && bVar9);
  }
  bVar3 = bVar9;
  if (uVar6 == 0) {
    bVar3 = false;
  }
  bVar2 = *(byte *)(param_1 + uVar4);
  while (bVar3 != false) {
    bVar9 = pbVar8[uVar6] == bVar2;
    uVar6 = uVar6 - 1;
    bVar3 = uVar6 != 0 && bVar9;
  }
  if (('\0' < (char)bVar2) && (bVar2 < *pbVar8)) {
    bVar9 = false;
  }
  return bVar9;
}

// ---- FUN_007c7bf8  @ 0x7c7bf8
undefined4 * FUN_007c7bf8(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_007c7bf8_1_0093f668;
  FUN_007af480();
  return param_1;
}

// ---- FUN_007c7c94  @ 0x7c7c94
undefined4 FUN_007c7c94(undefined4 param_1,uint param_2)

{
  char *pcVar1;
  undefined4 uVar2;
  
  if (param_2 == 8) {
    pcVar1 = "space";
  }
  else if (param_2 < 9) {
    if (param_2 == 3) {
      pcVar1 = "alpha";
    }
    else if (param_2 < 4) {
      if (param_2 == 1) {
        pcVar1 = "upper";
      }
      else {
        if (param_2 != 2) {
          return 0;
        }
        pcVar1 = "lower";
      }
    }
    else if (param_2 == 4) {
      pcVar1 = "digit";
    }
    else {
      if (param_2 != 7) {
        return 0;
      }
      pcVar1 = "alnum";
    }
  }
  else if (param_2 == 0x20) {
    pcVar1 = "cntrl";
  }
  else if (param_2 < 0x21) {
    if (param_2 == 0x10) {
      pcVar1 = "punct";
    }
    else {
      if (param_2 != 0x17) {
        return 0;
      }
      pcVar1 = "graph";
    }
  }
  else if (param_2 == 0x44) {
    pcVar1 = "xdigit";
  }
  else {
    if (param_2 != 0x97) {
      return 0;
    }
    pcVar1 = "print";
  }
  uVar2 = (*(code *)&LAB_002e703c)(pcVar1);
  return uVar2;
}

// ---- FUN_007c7e48  @ 0x7c7e48
undefined4 * FUN_007c7e48(int *param_1,undefined4 param_2,undefined4 *param_3,undefined4 *param_4)

{
  int iVar1;
  undefined4 *puVar2;
  
  if (param_3 < param_4) {
    while( true ) {
      puVar2 = param_3 + 1;
      iVar1 = (**(code **)(*param_1 + 8))(param_1,param_2,*param_3);
      if (iVar1 != 0) break;
      param_3 = puVar2;
      if (param_4 <= puVar2) {
        return puVar2;
      }
    }
  }
  return param_3;
}

// ---- FUN_007c7e80  @ 0x7c7e80
undefined4 * FUN_007c7e80(int *param_1,undefined4 param_2,undefined4 *param_3,undefined4 *param_4)

{
  int iVar1;
  undefined4 *puVar2;
  
  if (param_3 < param_4) {
    while( true ) {
      puVar2 = param_3 + 1;
      iVar1 = (**(code **)(*param_1 + 8))(param_1,param_2,*param_3);
      if (iVar1 == 0) break;
      param_3 = puVar2;
      if (param_4 <= puVar2) {
        return puVar2;
      }
    }
  }
  return param_3;
}

// ---- FUN_007c7f08  @ 0x7c7f08
uint FUN_007c7f08(int param_1,uint param_2,uint param_3,undefined1 param_4,undefined1 *param_5)

{
  int iVar1;
  uint __c;
  undefined1 *puVar2;
  undefined1 *puVar3;
  undefined1 uVar4;
  wint_t *pwVar5;
  uint *puVar6;
  
  if (*(char *)(param_1 + 0xc) == '\0') {
    if (param_2 < param_3) {
      pwVar5 = (wint_t *)(param_2 - 4);
      puVar3 = param_5;
      do {
        pwVar5 = pwVar5 + 1;
        iVar1 = wctob(*pwVar5);
        uVar4 = (char)iVar1;
        if (iVar1 == -1) {
          uVar4 = param_4;
        }
        puVar2 = puVar3 + 1;
        *puVar3 = uVar4;
        puVar3 = puVar2;
      } while (puVar2 != param_5 + (~param_2 + param_3 >> 2) + 1);
    }
  }
  else if (param_2 < param_3) {
    puVar6 = (uint *)(param_2 - 4);
    puVar3 = param_5 + 1;
    do {
      puVar6 = puVar6 + 1;
      __c = *puVar6;
      if (__c < 0x80) {
        puVar3[-1] = *(undefined1 *)(param_1 + __c + 0xd);
      }
      else {
        iVar1 = wctob(__c);
        uVar4 = (char)iVar1;
        if (iVar1 == -1) {
          uVar4 = param_4;
        }
        puVar3[-1] = uVar4;
      }
      puVar3 = puVar3 + 1;
    } while (puVar3 != param_5 + (~param_2 + param_3 >> 2) + 2);
  }
  return param_3;
}

// ---- FUN_007c7f8c  @ 0x7c7f8c
void FUN_007c7f8c(int param_1)

{
  uint uVar1;
  int iVar2;
  undefined4 uVar3;
  int iVar4;
  wint_t wVar5;
  uint uVar6;
  wint_t *pwVar7;
  
  wVar5 = 0;
  do {
    iVar2 = wctob(wVar5);
    iVar4 = param_1 + wVar5;
    wVar5 = wVar5 + 1;
    if (iVar2 == -1) {
      *(undefined1 *)(param_1 + 0xc) = 0;
      goto LAB_007c7fac;
    }
    *(char *)(iVar4 + 0xd) = (char)iVar2;
  } while (wVar5 != 0x80);
  *(undefined1 *)(param_1 + 0xc) = 1;
LAB_007c7fac:
  pwVar7 = (wint_t *)(param_1 + 0x8c);
  iVar2 = 0;
  do {
    iVar4 = iVar2 + 1;
    wVar5 = btowc(iVar2);
    pwVar7 = pwVar7 + 1;
    *pwVar7 = wVar5;
    iVar2 = iVar4;
  } while (iVar4 != 0x100);
  uVar6 = 0;
  iVar2 = param_1;
  do {
    iVar4 = param_1 + uVar6;
    uVar1 = uVar6 & 0xff;
    uVar6 = uVar6 + 1;
    *(char *)(iVar4 + 0x490) = (char)(1 << uVar1);
    uVar3 = FUN_007c7c94(param_1);
    *(undefined4 *)(iVar2 + 0x4a0) = uVar3;
    iVar2 = iVar2 + 4;
  } while (uVar6 != 0x10);
  return;
}

// ---- FUN_007c7ff8  @ 0x7c7ff8
exception * FUN_007c7ff8(exception *param_1)

{
  bool bVar1;
  undefined4 *puVar2;
  int *piVar3;
  int iVar4;
  
  puVar2 = (undefined4 *)(*(int *)(param_1 + 4) + -0xc);
  *(undefined **)param_1 = &DAT_0093f698;
  if (puVar2 != &DAT_0097251c) {
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

// ---- FUN_007c8050  @ 0x7c8050
void * FUN_007c8050(void *param_1)

{
  FUN_007c7ff8();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_007c8064  @ 0x7c8064
undefined4 * FUN_007c8064(undefined4 *param_1)

{
  *param_1 = &DAT_0093f698;
  FUN_007c64e8(param_1 + 1);
  return param_1;
}

// ---- FUN_007c8164  @ 0x7c8164
void FUN_007c8164(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_007c8164_1_0093f708;
  return;
}

// ---- FUN_007c817c  @ 0x7c817c
bool FUN_007c817c(int *param_1,undefined4 param_2,int *param_3)

{
  int local_18;
  int local_14;
  
  (**(code **)(*param_1 + 0x10))(&local_18,param_1,param_2);
  if (local_14 == param_3[1]) {
    return local_18 == *param_3;
  }
  return false;
}

// ---- FUN_007c8280  @ 0x7c8280
undefined4 FUN_007c8280(undefined4 param_1,undefined4 param_2,int param_3)

{
  char *pcVar1;
  undefined1 auStack_c [4];
  
  pcVar1 = strerror(param_3);
  FUN_007c6a60(param_1,pcVar1,auStack_c);
  return param_1;
}

// ---- FUN_007c829c  @ 0x7c829c
void FUN_007c829c(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_007c8164_1_0093f708;
  return;
}

// ---- FUN_007c82b8  @ 0x7c82b8
undefined4 * FUN_007c82b8(void)

{
  return &DAT_00972530;
}

// ---- FUN_007c8400  @ 0x7c8400
/* WARNING: Function: __gnu_thumb1_case_sqi replaced with injection: switchS8_r0 */
/* WARNING (jumptable): Removing unreachable block (ram,0x007c840e) */
/* WARNING: Removing unreachable block (ram,0x007c840e) */

undefined4 * FUN_007c8400(int param_1,undefined4 param_2,int param_3,int param_4)

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
LAB_007c840c:
      return (undefined4 *)0x0;
    }
    iVar2 = *(int *)(param_1 + 0x14);
    if (*(int *)(param_1 + 0x18) <= iVar2) {
      return (undefined4 *)0x0;
    }
    break;
  default:
    goto LAB_007c840c;
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

// ---- FUN_007c849c  @ 0x7c849c
undefined4 * FUN_007c849c(int param_1,int param_2,int param_3)

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

// ---- FUN_007c84d4  @ 0x7c84d4
int * FUN_007c84d4(int param_1,int *param_2,int param_3)

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
        if (cVar1 != 'V') goto LAB_007c84f4;
        uVar3 = 0x1a;
        if (param_3 != 0) {
          uVar3 = 0x1d;
        }
      }
      *(int *)(param_1 + 0x30) = *(int *)(param_1 + 0x30) + 9;
      iVar2 = FUN_007c8400(param_1,uVar3,0,0);
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
LAB_007c84f4:
      uVar3 = 0x1b;
      if (param_3 != 0) {
        uVar3 = 0x1e;
      }
      *(int *)(param_1 + 0x30) = *(int *)(param_1 + 0x30) + 6;
      iVar2 = FUN_007c8400(param_1,uVar3,0,0);
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

// ---- FUN_007c85ac  @ 0x7c85ac
undefined4 FUN_007c85ac(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

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
  uVar2 = FUN_007c8400(param_1,uVar2,param_2,0,param_4);
  return uVar2;
}

// ---- FUN_007c85f0  @ 0x7c85f0
void FUN_007c85f0(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

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
      if (9 < (byte)(pcVar3[1] - 0x30U)) goto LAB_007c8636;
      cVar4 = pcVar3[2];
      pcVar3 = pcVar3 + 2;
      if (9 < (byte)(cVar4 - 0x30U)) break;
      do {
        pcVar3 = pcVar3 + 1;
      } while ((byte)(*pcVar3 - 0x30U) < 10);
      if (*pcVar3 != '.') goto LAB_007c8636;
    }
  }
LAB_007c8636:
  *(char **)(param_1 + 0xc) = pcVar3;
  uVar1 = FUN_007c849c(param_1,pcVar2,(int)pcVar3 - (int)pcVar2,pcVar3,param_4);
  FUN_007c8400(param_1,0x4b,param_2,uVar1);
  return;
}

// ---- FUN_007c8698  @ 0x7c8698
undefined4 * FUN_007c8698(int param_1,int param_2)

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
LAB_007c86be:
    uVar11 = *(uint *)(param_1 + 8) >> 3 & 1;
    if ((param_2 != 0) && (uVar11 != 1)) {
      uVar11 = (uint)((byte)(**(char **)(param_1 + 0xc) + 0xbdU) < 2);
    }
    pbVar5 = &DAT_00909844;
    while (*pbVar5 != uVar9) {
      pbVar5 = pbVar5 + 0x1c;
      if (pbVar5 == &UNK_00909908) {
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
      goto LAB_007c8758;
    }
  }
  else if (0x19 < uVar9 - 0x41) goto LAB_007c86be;
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
LAB_007c8758:
  if (*(uint *)(param_1 + 0x20) <= uVar1) {
    return (undefined4 *)0x0;
  }
  *(int *)(param_1 + 0x28) = *(int *)(param_1 + 0x28) + 1;
  return *(undefined4 **)(uVar1 * 4 + *(int *)(param_1 + 0x1c));
}

// ---- FUN_007c8864  @ 0x7c8864
int FUN_007c8864(undefined4 *param_1)

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

// ---- FUN_007c88b8  @ 0x7c88b8
undefined4 * FUN_007c88b8(int param_1)

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
      uVar1 = FUN_007c8864(param_1 + 0xc);
      puVar3[1] = uVar1;
      return puVar3;
    }
  }
  return (undefined4 *)0x0;
}

// ---- FUN_007c88e8  @ 0x7c88e8
int FUN_007c88e8(int param_1)

{
  int iVar1;
  char *pcVar2;
  
  pcVar2 = *(char **)(param_1 + 0xc);
  if (*pcVar2 == '_') {
    iVar1 = 0;
LAB_007c8910:
    *(char **)(param_1 + 0xc) = pcVar2 + 1;
  }
  else {
    if (*pcVar2 != 'n') {
      iVar1 = FUN_007c8864(param_1 + 0xc);
      pcVar2 = *(char **)(param_1 + 0xc);
      iVar1 = iVar1 + 1;
      if (*pcVar2 == '_') goto LAB_007c8910;
    }
    iVar1 = -1;
  }
  return iVar1;
}

// ---- FUN_007c8918  @ 0x7c8918
undefined4 * FUN_007c8918(int param_1)

{
  int iVar1;
  int iVar2;
  undefined4 *puVar3;
  
  if (**(char **)(param_1 + 0xc) == 'T') {
    *(char **)(param_1 + 0xc) = *(char **)(param_1 + 0xc) + 1;
    iVar1 = FUN_007c88e8();
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

// ---- FUN_007c8960  @ 0x7c8960
uint FUN_007c8960(int param_1)

{
  uint uVar1;
  
  uVar1 = 1;
  if (**(char **)(param_1 + 0xc) == '_') {
    *(char **)(param_1 + 0xc) = *(char **)(param_1 + 0xc) + 1;
    uVar1 = FUN_007c8864(param_1 + 0xc);
    uVar1 = ~uVar1 >> 0x1f;
  }
  return uVar1;
}

// ---- FUN_007c8980  @ 0x7c8980
undefined4 FUN_007c8980(int param_1)

{
  char cVar1;
  int iVar2;
  int iVar3;
  undefined4 uVar4;
  char *pcVar5;
  void *__s1;
  
  iVar2 = FUN_007c8864(param_1 + 0xc);
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
        uVar4 = FUN_007c849c(param_1,__s1,iVar2);
      }
      else {
        *(int *)(param_1 + 0x30) = (*(int *)(param_1 + 0x30) + 0x16) - iVar2;
        uVar4 = FUN_007c849c(param_1,"(anonymous namespace)",0x15);
      }
    }
    *(undefined4 *)(param_1 + 0x2c) = uVar4;
  }
  return uVar4;
}

// ---- FUN_007c8a0c  @ 0x7c8a0c
undefined4 FUN_007c8a0c(int param_1,uint param_2)

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
    FUN_007c8864(param_1 + 0xc);
LAB_007c8a54:
    if (**(char **)(param_1 + 0xc) == '_') {
      *(char **)(param_1 + 0xc) = *(char **)(param_1 + 0xc) + 1;
      return 1;
    }
    return 0;
  }
  if (param_2 == 0x76) {
    FUN_007c8864(param_1 + 0xc);
    if (**(char **)(param_1 + 0xc) == '_') {
      *(char **)(param_1 + 0xc) = *(char **)(param_1 + 0xc) + 1;
      FUN_007c8864(param_1 + 0xc);
      goto LAB_007c8a54;
    }
  }
  return 0;
}

// ---- FUN_007c8a68  @ 0x7c8a68
int FUN_007c8a68(int param_1,int *param_2)

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
LAB_007c8a9c:
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
          if ((piVar2 == (int *)0x0) || (*piVar2 != 0x2f)) goto LAB_007c8a9c;
        } while (iVar1 != 0);
      }
      iVar1 = piVar2[1];
    }
  }
  return iVar1;
}

// ---- FUN_007c8ab8  @ 0x7c8ab8
/* WARNING: Function: __gnu_thumb1_case_sqi replaced with injection: switchS8_r0 */
/* WARNING (jumptable): Removing unreachable block (ram,0x007c8adc) */
/* WARNING: Removing unreachable block (ram,0x007c8adc) */

int * FUN_007c8ab8(undefined4 param_1,undefined4 *param_2)

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
      goto LAB_007c8ada;
    default:
      piVar1 = (int *)FUN_007c8ab8(param_1,param_2[1]);
      if (piVar1 != (int *)0x0) {
        return piVar1;
      }
    case 7:
    case 8:
    case 0x32:
      param_2 = (undefined4 *)param_2[2];
      break;
    case 5:
      piVar1 = (int *)FUN_007c8a68(param_1,param_2 + 1);
      if (piVar1 == (int *)0x0) {
        return (int *)0x0;
      }
      if (*piVar1 != 0x2f) {
        return (int *)0x0;
      }
      return piVar1;
    }
  }
LAB_007c8ada:
  return (int *)0x0;
}

// ---- FUN_007c8b40  @ 0x7c8b40
void FUN_007c8b40(void *param_1,size_t param_2,int *param_3)

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

// ---- FUN_007c8bc4  @ 0x7c8bc4
undefined4 FUN_007c8bc4(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

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
      piVar2 = (int *)FUN_007c9050(param_1);
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
      uVar3 = FUN_007c849c(param_1,pcVar7,iVar6);
      uVar1 = FUN_007c8400(param_1,uVar1,piVar2,uVar3);
      pcVar4 = *(char **)(param_1 + 0xc);
      cVar5 = *pcVar4;
      goto LAB_007c8bf0;
    }
    pcVar4 = pcVar7 + 2;
    *(char **)(param_1 + 0xc) = pcVar4;
    cVar5 = pcVar7[2];
    uVar1 = 0;
    if (cVar5 != 'Z') goto LAB_007c8bf0;
  }
  *(char **)(param_1 + 0xc) = pcVar4 + 1;
  uVar1 = FUN_007c9858(param_1,0,cVar5,pcVar7,param_4);
  pcVar4 = *(char **)(param_1 + 0xc);
  cVar5 = *pcVar4;
LAB_007c8bf0:
  if (cVar5 != 'E') {
    return 0;
  }
  *(char **)(param_1 + 0xc) = pcVar4 + 1;
  return uVar1;
}

// ---- FUN_007c8c8c  @ 0x7c8c8c
/* WARNING: Function: __gnu_thumb1_case_sqi replaced with injection: switchS8_r0 */
/* WARNING (jumptable): Removing unreachable block (ram,0x007c8ce2) */
/* WARNING: Removing unreachable block (ram,0x007c8ce2) */

int FUN_007c8c8c(int param_1)

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
      local_14 = FUN_007c8400(param_1,0x2f,0,0);
    }
    else {
      local_14 = 0;
      piVar5 = &local_14;
      do {
        switch(cVar1) {
        case 'I':
        case 'J':
          iVar2 = FUN_007c8c8c(param_1);
          break;
        default:
          iVar2 = FUN_007c9050(param_1);
          break;
        case 'L':
          iVar2 = FUN_007c8bc4(param_1);
          break;
        case 'X':
          *(char **)(param_1 + 0xc) = pcVar4 + 1;
          iVar2 = FUN_007ca0cc(param_1);
          if (**(char **)(param_1 + 0xc) != 'E') goto LAB_007c8d08;
          *(char **)(param_1 + 0xc) = *(char **)(param_1 + 0xc) + 1;
        }
        if (iVar2 == 0) goto LAB_007c8d08;
        iVar2 = FUN_007c8400(param_1,0x2f,iVar2,0);
        *piVar5 = iVar2;
        if (iVar2 == 0) goto LAB_007c8d08;
        pcVar4 = *(char **)(param_1 + 0xc);
        cVar1 = *pcVar4;
        piVar5 = (int *)(iVar2 + 8);
      } while (cVar1 != 'E');
      *(char **)(param_1 + 0xc) = pcVar4 + 1;
      *(undefined4 *)(param_1 + 0x2c) = uVar6;
    }
  }
  else {
LAB_007c8d08:
    local_14 = 0;
  }
  return local_14;
}

// ---- FUN_007c8d48  @ 0x7c8d48
/* WARNING: Function: __gnu_thumb1_case_sqi replaced with injection: switchS8_r0 */
/* WARNING (jumptable): Removing unreachable block (ram,0x007c8d7c) */
/* WARNING: Removing unreachable block (ram,0x007c8d7c) */

int FUN_007c8d48(int param_1)

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
    iVar1 = FUN_007c9e54(param_1);
    return iVar1;
  default:
    iVar1 = FUN_007c9e54(param_1);
    if (**(char **)(param_1 + 0xc) != 'I') {
      return iVar1;
    }
    if ((iVar1 != 0) && (iVar8 = *(int *)(param_1 + 0x20), iVar8 < *(int *)(param_1 + 0x24))) {
      *(int *)(iVar8 * 4 + *(int *)(param_1 + 0x1c)) = iVar1;
      *(int *)(param_1 + 0x20) = iVar8 + 1;
      uVar3 = FUN_007c8c8c(param_1);
      iVar1 = FUN_007c8400(param_1,4,iVar1,uVar3);
      return iVar1;
    }
    break;
  case 0x4e:
    *(undefined1 **)(param_1 + 0xc) = puVar6 + 1;
    piVar10 = (int *)FUN_007c84d4(param_1,local_24,1);
    if (piVar10 != (int *)0x0) {
      iVar8 = FUN_007c85ac(param_1,0);
      pcVar7 = *(char **)(param_1 + 0xc);
      cVar11 = *pcVar7;
      iVar1 = 0;
joined_r0x007c8e04:
      if (cVar11 != '\0') {
        if (cVar11 != 'D') goto LAB_007c8e0c;
        if ((pcVar7[1] & 0xdfU) != 0x54) goto LAB_007c8efa;
        iVar4 = FUN_007c9050(param_1);
joined_r0x007c8f4e:
        if (iVar1 != 0) {
          uVar3 = 1;
          goto LAB_007c8f08;
        }
        do {
          iVar1 = iVar4;
          if (cVar11 == 'S') {
LAB_007c8f34:
            pcVar7 = *(char **)(param_1 + 0xc);
            cVar11 = *pcVar7;
            goto joined_r0x007c8e04;
          }
          pcVar7 = *(char **)(param_1 + 0xc);
          if (*pcVar7 != 'E') {
            if ((iVar4 != 0) && (iVar9 = *(int *)(param_1 + 0x20), iVar9 < *(int *)(param_1 + 0x24))
               ) {
              *(int *)(iVar9 * 4 + *(int *)(param_1 + 0x1c)) = iVar4;
              *(int *)(param_1 + 0x20) = iVar9 + 1;
              goto LAB_007c8f34;
            }
            break;
          }
          cVar11 = 'E';
LAB_007c8e0c:
          if ((((byte)(cVar11 - 0x30U) < 10) || ((byte)(cVar11 + 0x9fU) < 0x1a)) ||
             ((cVar11 == 'C' || ((cVar11 == 'U' || (cVar11 == 'L')))))) goto LAB_007c8efa;
          if (cVar11 == 'S') {
            iVar4 = FUN_007c8698(param_1,1);
            goto joined_r0x007c8f4e;
          }
          if (cVar11 != 'I') goto LAB_007c8e42;
          if (iVar1 == 0) break;
          iVar4 = FUN_007c8c8c(param_1);
          uVar3 = 4;
LAB_007c8f08:
          iVar4 = FUN_007c8400(param_1,uVar3,iVar1,iVar4);
        } while( true );
      }
LAB_007c8e62:
      *piVar10 = 0;
      return 0;
    }
    break;
  case 0x53:
    if (puVar6[1] == 't') {
      *(undefined1 **)(param_1 + 0xc) = puVar6 + 2;
      uVar3 = FUN_007c849c(param_1,&DAT_008539c8,3);
      uVar2 = FUN_007c9e54(param_1);
      iVar1 = FUN_007c8400(param_1,1,uVar3,uVar2);
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
      iVar1 = FUN_007c8698(param_1,0);
      if (**(char **)(param_1 + 0xc) != 'I') {
        return iVar1;
      }
    }
    uVar3 = FUN_007c8c8c(param_1);
    iVar1 = FUN_007c8400(param_1,4,iVar1,uVar3);
    return iVar1;
  case 0x5a:
    *(undefined1 **)(param_1 + 0xc) = puVar6 + 1;
    uVar3 = FUN_007c9858(param_1,0);
    pcVar7 = *(char **)(param_1 + 0xc);
    if (*pcVar7 == 'E') {
      *(char **)(param_1 + 0xc) = pcVar7 + 1;
      if (pcVar7[1] == 's') {
        *(char **)(param_1 + 0xc) = pcVar7 + 2;
        iVar1 = FUN_007c8960(param_1);
        if (iVar1 == 0) {
          return 0;
        }
        piVar10 = (int *)FUN_007c849c(param_1,"string literal",0xe);
      }
      else {
        if (pcVar7[1] == 'd') {
          *(char **)(param_1 + 0xc) = pcVar7 + 2;
          iVar1 = FUN_007c88e8(param_1);
          if (iVar1 < 0) {
            return 0;
          }
        }
        else {
          iVar1 = -1;
        }
        piVar5 = (int *)FUN_007c8d48(param_1);
        if ((((piVar5 != (int *)0x0) && (*piVar5 != 0x44)) && (*piVar5 != 0x46)) &&
           (iVar8 = FUN_007c8960(param_1), iVar8 == 0)) {
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
      iVar1 = FUN_007c8400(param_1,2,uVar3,piVar10);
      return iVar1;
    }
  }
  return 0;
LAB_007c8efa:
  iVar4 = FUN_007c9e54(param_1);
  goto joined_r0x007c8f4e;
LAB_007c8e42:
  if (cVar11 == 'T') {
    iVar4 = FUN_007c8918(param_1);
    goto joined_r0x007c8f4e;
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
  if ((cVar11 != 'M') || (iVar1 == 0)) goto LAB_007c8e62;
  *(char **)(param_1 + 0xc) = pcVar7 + 1;
  cVar11 = pcVar7[1];
  pcVar7 = pcVar7 + 1;
  goto joined_r0x007c8e04;
}

// ---- FUN_007c9050  @ 0x7c9050
/* WARNING: Function: __gnu_thumb1_case_shi replaced with injection: switch16_shi_r0 */
/* WARNING (jumptable): Removing unreachable block (ram,0x007c9076) */
/* WARNING (jumptable): Removing unreachable block (ram,0x007c9262) */
/* WARNING: Removing unreachable block (ram,0x007c9076) */
/* WARNING: Removing unreachable block (ram,0x007c9262) */

int * FUN_007c9050(int param_1)

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
    piVar2 = (int *)FUN_007c84d4(param_1,local_1c,0);
    if (piVar2 == (int *)0x0) {
      return (int *)0x0;
    }
    piVar3 = (int *)FUN_007c9050(param_1);
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
    local_1c[0] = (int *)FUN_007c8d48(param_1);
    break;
  default:
    goto switchD_007c9076_caseD_3a;
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
        iVar11 = FUN_007c849c(param_1,pbVar6,(int)pbVar9 - (int)pbVar6);
      }
      else {
        iVar11 = FUN_007ca0cc(param_1);
      }
      if ((iVar11 == 0) || (pbVar6 = *(byte **)(param_1 + 0xc), *pbVar6 != 0x5f)) goto LAB_007c91de;
    }
    *(byte **)(param_1 + 0xc) = pbVar6 + 1;
    uVar4 = FUN_007c9050(param_1);
    local_1c[0] = (int *)FUN_007c8400(param_1,0x2a,iVar11,uVar4);
    break;
  case 0x43:
    *(byte **)(param_1 + 0xc) = pbVar8 + 1;
    uVar4 = FUN_007c9050(param_1);
    local_1c[0] = (int *)FUN_007c8400(param_1,0x25,uVar4,0);
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
        FUN_007c8864(param_1 + 0xc);
      }
      piVar2 = local_1c[0];
      iVar11 = FUN_007c9050(param_1);
      piVar2[1] = iVar11;
      if (local_1c[0][1] == 0) {
        return (int *)0x0;
      }
      FUN_007c8864(param_1 + 0xc);
      pcVar12 = *(char **)(param_1 + 0xc);
      uVar7 = 0;
      if (*pcVar12 != '\0') {
        *(char **)(param_1 + 0xc) = pcVar12 + 1;
        uVar7 = (ushort)(*pcVar12 == 's');
      }
      *(ushort *)((int)local_1c[0] + 10) = uVar7;
      return local_1c[0];
    default:
      goto switchD_007c9076_caseD_3a;
    case 0x54:
    case 0x74:
      uVar4 = FUN_007ca0cc(param_1);
      local_1c[0] = (int *)FUN_007c8400(param_1,0x41,uVar4,0);
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
      goto LAB_007c917a;
    case 0x61:
      piVar2 = (int *)FUN_007c849c(param_1,&DAT_008539cc,4);
      return piVar2;
    case 100:
      iVar11 = *(int *)(param_1 + 0x14);
      if (iVar11 < *(int *)(param_1 + 0x18)) {
        piVar2 = (int *)(*(int *)(param_1 + 0x10) + iVar11 * 0xc);
        *(int *)(param_1 + 0x14) = iVar11 + 1;
        if (piVar2 != (int *)0x0) {
          *piVar2 = 0x27;
          puVar13 = &DAT_00909b24;
          piVar2[1] = (int)&DAT_00909b24;
          goto LAB_007c9526;
        }
LAB_007c975e:
        puVar13 = (undefined *)piVar2[1];
        goto LAB_007c9526;
      }
      goto LAB_007c972c;
    case 0x65:
      iVar11 = *(int *)(param_1 + 0x14);
      if (iVar11 < *(int *)(param_1 + 0x18)) {
        piVar2 = (int *)(*(int *)(param_1 + 0x10) + iVar11 * 0xc);
        *(int *)(param_1 + 0x14) = iVar11 + 1;
        if (piVar2 != (int *)0x0) {
          *piVar2 = 0x27;
          puVar13 = &DAT_00909b38;
          piVar2[1] = (int)&DAT_00909b38;
          goto LAB_007c947a;
        }
LAB_007c9756:
        puVar13 = (undefined *)piVar2[1];
        goto LAB_007c947a;
      }
      break;
    case 0x66:
      iVar11 = *(int *)(param_1 + 0x14);
      if (iVar11 < *(int *)(param_1 + 0x18)) {
        piVar2 = (int *)(*(int *)(param_1 + 0x10) + iVar11 * 0xc);
        *(int *)(param_1 + 0x14) = iVar11 + 1;
        if (piVar2 != (int *)0x0) {
          *piVar2 = 0x27;
          puVar13 = &DAT_00909b10;
          piVar2[1] = (int)&DAT_00909b10;
          goto LAB_007c94b2;
        }
LAB_007c9762:
        puVar13 = (undefined *)piVar2[1];
        goto LAB_007c94b2;
      }
      goto LAB_007c9734;
    case 0x68:
      iVar11 = *(int *)(param_1 + 0x14);
      if (iVar11 < *(int *)(param_1 + 0x18)) {
        piVar2 = (int *)(*(int *)(param_1 + 0x10) + iVar11 * 0xc);
        *(int *)(param_1 + 0x14) = iVar11 + 1;
        if (piVar2 != (int *)0x0) {
          *piVar2 = 0x27;
          puVar13 = &DAT_00909b4c;
          piVar2[1] = (int)&DAT_00909b4c;
          goto LAB_007c94b2;
        }
        goto LAB_007c9762;
      }
LAB_007c9734:
      piVar2 = (int *)0x0;
      puVar13 = puRam00000004;
LAB_007c94b2:
      *(int *)(param_1 + 0x30) = *(int *)(param_1 + 0x30) + *(int *)(puVar13 + 4);
      return piVar2;
    case 0x69:
      iVar11 = *(int *)(param_1 + 0x14);
      if (iVar11 < *(int *)(param_1 + 0x18)) {
        piVar2 = (int *)(*(int *)(param_1 + 0x10) + iVar11 * 0xc);
        *(int *)(param_1 + 0x14) = iVar11 + 1;
        if (piVar2 != (int *)0x0) {
          *piVar2 = 0x27;
          puVar13 = &DAT_00909b74;
          piVar2[1] = (int)&DAT_00909b74;
          goto LAB_007c947a;
        }
        goto LAB_007c9756;
      }
      break;
    case 0x6e:
      iVar11 = *(int *)(param_1 + 0x14);
      if (iVar11 < *(int *)(param_1 + 0x18)) {
        piVar2 = (int *)(*(int *)(param_1 + 0x10) + iVar11 * 0xc);
        *(int *)(param_1 + 0x14) = iVar11 + 1;
        if (piVar2 != (int *)0x0) {
          *piVar2 = 0x27;
          piVar2[1] = (int)&DAT_00909b88;
          puVar13 = &DAT_00909b88;
          goto LAB_007c947a;
        }
        goto LAB_007c9756;
      }
      break;
    case 0x70:
      uVar4 = FUN_007c9050(param_1);
      local_1c[0] = (int *)FUN_007c8400(param_1,0x49,uVar4,0);
      goto LAB_007c9174;
    case 0x73:
      iVar11 = *(int *)(param_1 + 0x14);
      if (iVar11 < *(int *)(param_1 + 0x18)) {
        piVar2 = (int *)(*(int *)(param_1 + 0x10) + iVar11 * 0xc);
        *(int *)(param_1 + 0x14) = iVar11 + 1;
        if (piVar2 != (int *)0x0) {
          *piVar2 = 0x27;
          puVar13 = &DAT_00909b60;
          piVar2[1] = (int)&DAT_00909b60;
          goto LAB_007c9526;
        }
        goto LAB_007c975e;
      }
LAB_007c972c:
      piVar2 = (int *)0x0;
      puVar13 = puRam00000004;
LAB_007c9526:
      *(int *)(param_1 + 0x30) = *(int *)(param_1 + 0x30) + *(int *)(puVar13 + 4);
      return piVar2;
    case 0x76:
      if (pbVar8[2] == 0x5f) {
        *(byte **)(param_1 + 0xc) = pbVar8 + 3;
        iVar11 = FUN_007ca0cc(param_1);
      }
      else {
        iVar11 = FUN_007c88b8(param_1);
      }
      if ((iVar11 == 0) || (**(char **)(param_1 + 0xc) != '_')) goto LAB_007c91de;
      *(char **)(param_1 + 0xc) = *(char **)(param_1 + 0xc) + 1;
      uVar4 = FUN_007c9050(param_1);
      local_1c[0] = (int *)FUN_007c8400(param_1,0x2d,iVar11,uVar4);
      goto LAB_007c9174;
    }
    piVar2 = (int *)0x0;
    puVar13 = puRam00000004;
LAB_007c947a:
    *(int *)(param_1 + 0x30) = *(int *)(param_1 + 0x30) + *(int *)(puVar13 + 4);
    return piVar2;
  case 0x46:
    *(byte **)(param_1 + 0xc) = pbVar8 + 1;
    if (pbVar8[1] == 0x59) {
      *(byte **)(param_1 + 0xc) = pbVar8 + 2;
    }
    uVar4 = FUN_007c981c(param_1,1);
    local_1c[0] = (int *)FUN_007c85ac(param_1,uVar4);
    if (**(char **)(param_1 + 0xc) != 'E') goto LAB_007c91de;
    *(char **)(param_1 + 0xc) = *(char **)(param_1 + 0xc) + 1;
    break;
  case 0x47:
    *(byte **)(param_1 + 0xc) = pbVar8 + 1;
    uVar4 = FUN_007c9050(param_1);
    local_1c[0] = (int *)FUN_007c8400(param_1,0x26,uVar4,0);
    break;
  case 0x4d:
    *(byte **)(param_1 + 0xc) = pbVar8 + 1;
    uVar4 = FUN_007c9050(param_1);
    ppiVar5 = (int **)FUN_007c84d4(param_1,local_1c,1);
    if (ppiVar5 != (int **)0x0) {
      piVar2 = (int *)FUN_007c9050(param_1);
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
            goto LAB_007c91de;
            *(int **)(iVar11 * 4 + *(int *)(param_1 + 0x1c)) = local_1c[0];
            *(int *)(param_1 + 0x20) = iVar11 + 1;
          }
        }
        local_1c[0] = (int *)FUN_007c8400(param_1,0x2b,uVar4,local_1c[0]);
        break;
      }
    }
LAB_007c91de:
    local_1c[0] = (int *)0x0;
    break;
  case 0x4f:
    *(byte **)(param_1 + 0xc) = pbVar8 + 1;
    uVar4 = FUN_007c9050(param_1);
    local_1c[0] = (int *)FUN_007c8400(param_1,0x24,uVar4,0);
    break;
  case 0x50:
    *(byte **)(param_1 + 0xc) = pbVar8 + 1;
    uVar4 = FUN_007c9050(param_1);
    local_1c[0] = (int *)FUN_007c8400(param_1,0x22,uVar4,0);
    break;
  case 0x52:
    *(byte **)(param_1 + 0xc) = pbVar8 + 1;
    uVar4 = FUN_007c9050(param_1);
    local_1c[0] = (int *)FUN_007c8400(param_1,0x23,uVar4,0);
    break;
  case 0x53:
    bVar1 = pbVar8[1];
    if (((9 < (byte)(bVar1 - 0x30)) && (bVar1 != 0x5f)) && (0x19 < (byte)(bVar1 + 0xbf))) {
      local_1c[0] = (int *)FUN_007c8d48(param_1);
      if (local_1c[0] == (int *)0x0) {
        return (int *)0x0;
      }
      if (*local_1c[0] == 0x18) {
        return local_1c[0];
      }
      goto LAB_007c917a;
    }
    local_1c[0] = (int *)FUN_007c8698(param_1,0);
    if (**(char **)(param_1 + 0xc) != 'I') {
      return local_1c[0];
    }
LAB_007c93b6:
    piVar2 = local_1c[0];
    uVar4 = FUN_007c8c8c(param_1);
    local_1c[0] = (int *)FUN_007c8400(param_1,4,piVar2,uVar4);
    break;
  case 0x54:
    local_1c[0] = (int *)FUN_007c8918(param_1);
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
      goto LAB_007c93b6;
    }
    break;
  case 0x55:
    *(byte **)(param_1 + 0xc) = pbVar8 + 1;
    local_1c[0] = (int *)FUN_007c8980(param_1);
    uVar4 = FUN_007c9050(param_1);
    local_1c[0] = (int *)FUN_007c8400(param_1,0x21,uVar4,local_1c[0]);
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
        piVar2[1] = (int)(&UNK_00909908 + (uVar10 - 0x61) * 0x14);
        puVar13 = &UNK_00909908 + (uVar10 - 0x61) * 0x14;
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
    uVar4 = FUN_007c8980(param_1);
    local_1c[0] = (int *)FUN_007c8400(param_1,0x28,uVar4,0);
  }
LAB_007c9174:
  if (local_1c[0] != (int *)0x0) {
LAB_007c917a:
    iVar11 = *(int *)(param_1 + 0x20);
    if (iVar11 < *(int *)(param_1 + 0x24)) {
      *(int **)(iVar11 * 4 + *(int *)(param_1 + 0x1c)) = local_1c[0];
      *(int *)(param_1 + 0x20) = iVar11 + 1;
      return local_1c[0];
    }
  }
switchD_007c9076_caseD_3a:
  return (int *)0x0;
}

// ---- FUN_007c978c  @ 0x7c978c
int FUN_007c978c(int param_1)

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
joined_r0x007c97ae:
      if (cVar3 == 'E') {
LAB_007c97ec:
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
      goto joined_r0x007c97ae;
    }
    iVar2 = FUN_007c9050(param_1);
    if (iVar2 == 0) {
      return 0;
    }
    iVar2 = FUN_007c8400(param_1,0x2e,iVar2,0);
    *piVar4 = iVar2;
    if (iVar2 == 0) {
      return 0;
    }
    pcVar1 = *(char **)(param_1 + 0xc);
    cVar3 = *pcVar1;
    piVar4 = (int *)(iVar2 + 8);
    if (((cVar3 == '\0') || (cVar3 == 'E')) || (cVar3 == '.')) goto LAB_007c97ec;
  } while( true );
}

// ---- FUN_007c981c  @ 0x7c981c
undefined4 FUN_007c981c(int param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  undefined4 uVar2;
  int iVar3;
  
  if (**(char **)(param_1 + 0xc) == 'J') {
    *(char **)(param_1 + 0xc) = *(char **)(param_1 + 0xc) + 1;
  }
  else {
    iVar3 = 0;
    if (param_2 == 0) goto LAB_007c982e;
  }
  iVar3 = FUN_007c9050(param_1);
  if (iVar3 == 0) {
    return 0;
  }
LAB_007c982e:
  iVar1 = FUN_007c978c(param_1);
  if (iVar1 == 0) {
    return 0;
  }
  uVar2 = FUN_007c8400(param_1,0x29,iVar3,iVar1,param_4);
  return uVar2;
}

// ---- FUN_007c9858  @ 0x7c9858
/* WARNING: Function: __gnu_thumb1_case_shi replaced with injection: switch16_shi_r0 */
/* WARNING (jumptable): Removing unreachable block (ram,0x007c9928) */
/* WARNING (jumptable): Removing unreachable block (ram,0x007c9a24) */
/* WARNING (jumptable): Removing unreachable block (ram,0x007c99a6) */
/* WARNING: Removing unreachable block (ram,0x007c9928) */
/* WARNING: Removing unreachable block (ram,0x007c9a24) */
/* WARNING: Removing unreachable block (ram,0x007c99a6) */

uint * FUN_007c9858(int param_1,int param_2)

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
    puVar3 = (uint *)FUN_007c8d48();
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
        if (puVar12 == (undefined4 *)0x0) goto switchD_007c9a24_caseD_3;
        goto LAB_007c9a18;
      }
    } while (((3 < uVar10) && (uVar10 - 0x1c < 5)) &&
            (puVar1 = puVar6 + 1, puVar6 = (uint *)*puVar1, (uint *)*puVar1 != (uint *)0x0));
switchD_007c9a24_caseD_7:
    uVar5 = 0;
    goto LAB_007c98a2;
  }
  iVar7 = *(int *)(param_1 + 0x30);
  *(int *)(param_1 + 0x30) = iVar7 + 0x14;
  if (*pcVar9 != 'T') {
    if ((*pcVar9 == 'G') && (*(char **)(param_1 + 0xc) = pcVar9 + 1, pcVar9[1] != '\0')) {
      *(char **)(param_1 + 0xc) = pcVar9 + 2;
      switch(pcVar9[1]) {
      case 'A':
        uVar5 = FUN_007c9858(param_1,0);
        puVar3 = (uint *)FUN_007c8400(param_1,0x17,uVar5,0);
        return puVar3;
      case 'R':
        uVar5 = FUN_007c8d48(param_1);
        uVar4 = FUN_007c88b8(param_1);
        puVar3 = (uint *)FUN_007c8400(param_1,0x16,uVar5,uVar4);
        return puVar3;
      case 'T':
        if ((pcVar9[2] != '\0') && (*(char **)(param_1 + 0xc) = pcVar9 + 3, pcVar9[2] == 'n')) {
          uVar5 = FUN_007c9858(param_1,0);
          puVar3 = (uint *)FUN_007c8400(param_1,0x48,uVar5,0);
          return puVar3;
        }
        uVar5 = FUN_007c9858(param_1,0);
        puVar3 = (uint *)FUN_007c8400(param_1,0x47,uVar5,0);
        return puVar3;
      case 'V':
        uVar5 = FUN_007c8d48(param_1);
        puVar3 = (uint *)FUN_007c8400(param_1,0x13,uVar5,0);
        return puVar3;
      case 'r':
        iVar7 = FUN_007c8864(param_1 + 0xc);
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
                    goto LAB_007c9b00;
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
              puVar13 = (undefined4 *)FUN_007c849c(param_1,pcVar15,iVar14);
              iVar8 = -iVar14;
              pcVar15 = (char *)(*(int *)(param_1 + 0xc) + iVar14);
              *(char **)(param_1 + 0xc) = pcVar15;
              if (puVar13 == (undefined4 *)0x0) break;
LAB_007c9b00:
              iVar7 = iVar7 + iVar8;
              if ((puVar12 != (undefined4 *)0x0) &&
                 (puVar13 = (undefined4 *)FUN_007c8400(param_1,0x3e), puVar13 == (undefined4 *)0x0))
              break;
              puVar12 = puVar13;
              if (iVar7 < 1) {
                puVar3 = (uint *)FUN_007c8400(param_1,0x3d,puVar13,0);
                return puVar3;
              }
            }
          }
        }
      }
    }
    goto switchD_007c9928_caseD_42;
  }
  *(char **)(param_1 + 0xc) = pcVar9 + 1;
  if (pcVar9[1] == '\0') goto switchD_007c9928_caseD_42;
  *(char **)(param_1 + 0xc) = pcVar9 + 2;
  switch(pcVar9[1]) {
  case 'C':
    uVar5 = FUN_007c9050(param_1);
    iVar7 = FUN_007c8864(param_1 + 0xc);
    if ((-1 < iVar7) && (**(char **)(param_1 + 0xc) == '_')) {
      *(char **)(param_1 + 0xc) = *(char **)(param_1 + 0xc) + 1;
      uVar4 = FUN_007c9050(param_1);
      *(int *)(param_1 + 0x30) = *(int *)(param_1 + 0x30) + 5;
      puVar3 = (uint *)FUN_007c8400(param_1,0xb,uVar4,uVar5);
      return puVar3;
    }
  default:
    goto switchD_007c9928_caseD_42;
  case 'F':
    uVar5 = FUN_007c9050(param_1);
    puVar3 = (uint *)FUN_007c8400(param_1,0xe,uVar5,0);
    break;
  case 'H':
    uVar5 = FUN_007c8d48(param_1);
    puVar3 = (uint *)FUN_007c8400(param_1,0x14,uVar5,0);
    break;
  case 'I':
    uVar5 = FUN_007c9050(param_1);
    puVar3 = (uint *)FUN_007c8400(param_1,0xc,uVar5,0);
    break;
  case 'J':
    uVar5 = FUN_007c9050(param_1);
    puVar3 = (uint *)FUN_007c8400(param_1,0x12,uVar5,0);
    break;
  case 'S':
    uVar5 = FUN_007c9050(param_1);
    puVar3 = (uint *)FUN_007c8400(param_1,0xd,uVar5,0);
    break;
  case 'T':
    *(int *)(param_1 + 0x30) = iVar7 + 10;
    uVar5 = FUN_007c9050(param_1);
    puVar3 = (uint *)FUN_007c8400(param_1,10,uVar5,0);
    break;
  case 'V':
    *(int *)(param_1 + 0x30) = iVar7 + 0xf;
    uVar5 = FUN_007c9050(param_1);
    puVar3 = (uint *)FUN_007c8400(param_1,9,uVar5,0);
    break;
  case 'W':
    uVar5 = FUN_007c8d48(param_1);
    puVar3 = (uint *)FUN_007c8400(param_1,0x15,uVar5,0);
    break;
  case 'c':
    iVar7 = FUN_007c8a0c(param_1,0);
    if ((iVar7 != 0) && (iVar7 = FUN_007c8a0c(param_1,0), iVar7 != 0)) {
      uVar5 = FUN_007c9858(param_1,0);
      puVar3 = (uint *)FUN_007c8400(param_1,0x11,uVar5,0);
      return puVar3;
    }
    goto switchD_007c9928_caseD_42;
  case 'h':
    iVar7 = FUN_007c8a0c(param_1,0x68);
    if (iVar7 != 0) {
      uVar5 = FUN_007c9858(param_1,0);
      puVar3 = (uint *)FUN_007c8400(param_1,0xf,uVar5,0);
      return puVar3;
    }
    goto switchD_007c9928_caseD_42;
  case 'v':
    iVar7 = FUN_007c8a0c(param_1,0x76);
    if (iVar7 != 0) {
      uVar5 = FUN_007c9858(param_1,0);
      puVar3 = (uint *)FUN_007c8400(param_1,0x10,uVar5,0);
      return puVar3;
    }
switchD_007c9928_caseD_42:
    puVar3 = (uint *)0x0;
  }
  return puVar3;
LAB_007c9a18:
  switch(*puVar12) {
  case 1:
  case 2:
    break;
  default:
    goto switchD_007c9a24_caseD_3;
  case 7:
  case 8:
  case 0x33:
    goto switchD_007c9a24_caseD_7;
  }
  puVar12 = (undefined4 *)puVar12[2];
  if (puVar12 == (undefined4 *)0x0) goto code_r0x007c9a94;
  goto LAB_007c9a18;
code_r0x007c9a94:
  uVar5 = 1;
  goto LAB_007c98a2;
switchD_007c9a24_caseD_3:
  uVar5 = 1;
LAB_007c98a2:
  uVar5 = FUN_007c981c(param_1,uVar5);
  puVar3 = (uint *)FUN_007c8400(param_1,3,puVar3,uVar5);
  return puVar3;
}

// ---- FUN_007c9d5c  @ 0x7c9d5c
undefined4 * FUN_007c9d5c(int param_1)

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
        iVar3 = FUN_007c8980(param_1);
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
      uVar4 = FUN_007c9050(param_1);
      puVar6 = (undefined4 *)FUN_007c8400(param_1,0x33,uVar4,0);
      return puVar6;
    }
  }
  iVar9 = 0;
  iVar3 = 0x3d;
  do {
    iVar7 = (iVar3 - iVar9) / 2 + iVar9;
    pbVar8 = *(byte **)(&UNK_00909b9c + iVar7 * 0x10);
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
          puVar6[1] = &UNK_00909b9c + iVar7 * 0x10;
          return puVar6;
        }
        return (undefined4 *)0x0;
      }
      if (uVar5 <= uVar10) goto LAB_007c9e06;
    }
    else if (bVar1 <= bVar2) {
LAB_007c9e06:
      iVar9 = iVar7 + 1;
      iVar7 = iVar3;
    }
    iVar3 = iVar7;
    if (iVar9 == iVar7) {
      return (undefined4 *)0x0;
    }
  } while( true );
}

// ---- FUN_007c9e54  @ 0x7c9e54
/* WARNING: Function: __gnu_thumb1_case_sqi replaced with injection: switchS8_r0 */
/* WARNING (jumptable): Removing unreachable block (ram,0x007ca016) */
/* WARNING (jumptable): Removing unreachable block (ram,0x007ca06a) */
/* WARNING: Removing unreachable block (ram,0x007ca016) */
/* WARNING: Removing unreachable block (ram,0x007ca06a) */
/* WARNING: Type propagation algorithm not settling */

int * FUN_007c9e54(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

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
    piVar8 = (int *)FUN_007c8980();
    pcVar5 = *(char **)(param_1 + 0xc);
    cVar3 = *pcVar5;
    goto joined_r0x007c9ebc;
  }
  if ((byte)(cVar3 + 0x9fU) < 0x1a) {
    piVar8 = (int *)FUN_007c9d5c();
    if ((piVar8 != (int *)0x0) && (*piVar8 == 0x31)) {
      pcVar4 = *(char **)piVar8[1];
      *(int *)(param_1 + 0x30) = *(int *)(param_1 + 0x30) + ((undefined4 *)piVar8[1])[2] + 7;
      iVar2 = strcmp(pcVar4,"li");
      if (iVar2 == 0) {
        uVar1 = FUN_007c8980(param_1);
        piVar8 = (int *)FUN_007c8400(param_1,0x35,piVar8,uVar1);
        pcVar5 = *(char **)(param_1 + 0xc);
        cVar3 = *pcVar5;
        goto joined_r0x007c9ebc;
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
LAB_007c9eae:
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
            goto joined_r0x007c9ebc;
          }
        }
      }
      else {
        if (cVar3 != 'D') {
          piVar8 = (int *)0x0;
          pcVar5 = pcVar4;
          goto joined_r0x007c9ebc;
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
          goto LAB_007c9eae;
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
            goto joined_r0x007c9ebc;
          }
        }
      }
      piVar8 = (int *)0x0;
      pcVar5 = pcVar4 + 2;
      cVar3 = *pcVar5;
      goto joined_r0x007c9ebc;
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
          iVar2 = FUN_007c978c();
          pcVar5 = *(char **)(param_1 + 0xc);
          cVar3 = *pcVar5;
          if ((iVar2 != 0) && (cVar3 == 'E')) {
            *(char **)(param_1 + 0xc) = pcVar5 + 1;
            iVar7 = FUN_007c88e8(param_1);
            if ((-1 < iVar7) && (iVar6 = *(int *)(param_1 + 0x14), iVar6 < *(int *)(param_1 + 0x18))
               ) {
              piVar8 = (int *)(*(int *)(param_1 + 0x10) + iVar6 * 0xc);
              *(int *)(param_1 + 0x14) = iVar6 + 1;
              if (piVar8 != (int *)0x0) {
                piVar8[1] = iVar2;
                piVar8[2] = iVar7;
                *piVar8 = 0x44;
                iVar2 = *(int *)(param_1 + 0x20);
                if (iVar2 < *(int *)(param_1 + 0x24)) goto LAB_007c9f4a;
              }
            }
            goto LAB_007ca00e;
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
          iVar2 = FUN_007c88e8();
          if ((-1 < iVar2) && (iVar7 = *(int *)(param_1 + 0x14), iVar7 < *(int *)(param_1 + 0x18)))
          {
            piVar8 = (int *)(*(int *)(param_1 + 0x10) + iVar7 * 0xc);
            *(int *)(param_1 + 0x14) = iVar7 + 1;
            if (piVar8 != (int *)0x0) {
              piVar8[1] = iVar2;
              *piVar8 = 0x46;
              iVar2 = *(int *)(param_1 + 0x20);
              if (iVar2 < *(int *)(param_1 + 0x24)) {
LAB_007c9f4a:
                *(int **)(iVar2 * 4 + *(int *)(param_1 + 0x1c)) = piVar8;
                *(int *)(param_1 + 0x20) = iVar2 + 1;
                goto LAB_007c9eee;
              }
            }
          }
LAB_007ca00e:
          pcVar5 = *(char **)(param_1 + 0xc);
          piVar8 = (int *)0x0;
          cVar3 = *pcVar5;
          goto joined_r0x007c9ebc;
        }
      }
      piVar8 = (int *)0x0;
      goto joined_r0x007c9ebc;
    }
    *(char **)(param_1 + 0xc) = pcVar4 + 1;
    piVar8 = (int *)FUN_007c8980();
    if (piVar8 == (int *)0x0) {
      return (int *)0x0;
    }
    iVar2 = FUN_007c8960(param_1);
    if (iVar2 == 0) {
      return (int *)0x0;
    }
  }
LAB_007c9eee:
  pcVar5 = *(char **)(param_1 + 0xc);
  cVar3 = *pcVar5;
joined_r0x007c9ebc:
  while (cVar3 == 'B') {
    *(char **)(param_1 + 0xc) = pcVar5 + 1;
    uVar1 = FUN_007c8980(param_1);
    piVar8 = (int *)FUN_007c8400(param_1,0x4a,piVar8,uVar1,param_4);
    pcVar5 = *(char **)(param_1 + 0xc);
    cVar3 = **(char **)(param_1 + 0xc);
  }
  return piVar8;
}

// ---- FUN_007ca0cc  @ 0x7ca0cc
/* WARNING: Function: __gnu_thumb1_case_uhi replaced with injection: switch16_uhi_r0 */
/* WARNING (jumptable): Removing unreachable block (ram,0x007ca210) */
/* WARNING: Removing unreachable block (ram,0x007ca210) */

undefined4 * FUN_007ca0cc(int param_1)

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
    puVar5 = (undefined4 *)FUN_007c8bc4();
    return puVar5;
  }
  if (cVar1 == 'T') {
    puVar5 = (undefined4 *)FUN_007c8918();
    return puVar5;
  }
  if (cVar1 == 's') {
    if (pcVar9[1] == 'r') {
      *(char **)(param_1 + 0xc) = pcVar9 + 2;
      uVar4 = FUN_007c9050();
      uVar7 = FUN_007c9e54(param_1);
      if (**(char **)(param_1 + 0xc) == 'I') {
        uVar8 = FUN_007c8c8c();
        uVar7 = FUN_007c8400(param_1,4,uVar7,uVar8);
        puVar5 = (undefined4 *)FUN_007c8400(param_1,1,uVar4,uVar7);
        return puVar5;
      }
      puVar5 = (undefined4 *)FUN_007c8400(param_1,1,uVar4,uVar7);
      return puVar5;
    }
    if (pcVar9[1] == 'p') {
      *(char **)(param_1 + 0xc) = pcVar9 + 2;
      uVar4 = FUN_007ca0cc();
      puVar5 = (undefined4 *)FUN_007c8400(param_1,0x49,uVar4,0);
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
        iVar10 = FUN_007c88e8();
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
LAB_007ca0fa:
      puVar5 = (undefined4 *)FUN_007c9e54(param_1);
      if (puVar5 == (undefined4 *)0x0) {
        return (undefined4 *)0x0;
      }
      if (**(char **)(param_1 + 0xc) != 'I') {
        return puVar5;
      }
      uVar4 = FUN_007c8c8c(param_1);
      puVar5 = (undefined4 *)FUN_007c8400(param_1,4,puVar5,uVar4);
      return puVar5;
    }
    if (cVar1 == 'o') {
      if (pcVar9[1] == 'n') {
        *(char **)(param_1 + 0xc) = pcVar9 + 2;
        goto LAB_007ca0fa;
      }
    }
    else if (((cVar1 == 't') || (cVar1 == 'i')) && (pcVar9[1] == 'l')) {
      uVar4 = 0;
      if (cVar1 == 't') {
        uVar4 = FUN_007c9050(param_1);
        pcVar9 = *(char **)(param_1 + 0xc);
      }
      *(char **)(param_1 + 0xc) = pcVar9 + 2;
      uVar7 = FUN_007ca4d4(param_1,0x45);
      puVar5 = (undefined4 *)FUN_007c8400(param_1,0x30,uVar4,uVar7);
      return puVar5;
    }
  }
  piVar3 = (int *)FUN_007c9d5c(param_1);
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
      goto LAB_007ca208;
    }
    uVar4 = FUN_007c9050(param_1);
    goto LAB_007ca176;
  }
  if (iVar10 == 0x32) {
    pcVar9 = (char *)0x0;
    iVar6 = piVar3[1];
LAB_007ca208:
    switch(iVar6) {
    case 0:
      puVar5 = (undefined4 *)FUN_007c8400(param_1,0x34,piVar3,0);
      return puVar5;
    case 1:
      goto switchD_007ca210_caseD_1;
    case 2:
      if (((*(char **)piVar3[1])[1] == 'c') &&
         ((cVar1 = **(char **)piVar3[1], (byte)(cVar1 + 0x9dU) < 2 || ((byte)(cVar1 + 0x8eU) < 2))))
      {
        uVar4 = FUN_007c9050(param_1);
      }
      else {
        uVar4 = FUN_007ca0cc(param_1);
      }
      iVar10 = strcmp(pcVar9,"cl");
      if (iVar10 == 0) {
        uVar7 = FUN_007ca4d4(param_1,0x45);
      }
      else {
        iVar10 = strcmp(pcVar9,"dt");
        if ((iVar10 == 0) || (iVar10 = strcmp(pcVar9,"pt"), iVar10 == 0)) {
          uVar7 = FUN_007c9e54(param_1);
          if (**(char **)(param_1 + 0xc) == 'I') {
            uVar8 = FUN_007c8c8c(param_1);
            uVar7 = FUN_007c8400(param_1,4,uVar7,uVar8);
          }
        }
        else {
          uVar7 = FUN_007ca0cc(param_1);
        }
      }
      uVar4 = FUN_007c8400(param_1,0x37,uVar4,uVar7);
      puVar5 = (undefined4 *)FUN_007c8400(param_1,0x36,piVar3,uVar4);
      return puVar5;
    case 3:
      iVar10 = strcmp(pcVar9,"qu");
      if (iVar10 == 0) {
        uVar4 = FUN_007ca0cc(param_1);
        uVar7 = FUN_007ca0cc(param_1);
        uVar8 = FUN_007ca0cc(param_1);
      }
      else {
        if (*pcVar9 != 'n') {
          return (undefined4 *)0x0;
        }
        if ((pcVar9[1] != 'a') && (pcVar9[1] != 'w')) {
          return (undefined4 *)0x0;
        }
        uVar4 = FUN_007ca4d4(param_1,0x5f);
        uVar7 = FUN_007c9050(param_1);
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
          uVar8 = FUN_007ca4d4(param_1,0x45);
        }
        else {
          if ((cVar1 != 'i') || (pcVar9[1] != 'l')) {
            return (undefined4 *)0x0;
          }
          uVar8 = FUN_007ca0cc(param_1);
        }
      }
      uVar7 = FUN_007c8400(param_1,0x3a,uVar7,uVar8);
      uVar4 = FUN_007c8400(param_1,0x39,uVar4,uVar7);
      puVar5 = (undefined4 *)FUN_007c8400(param_1,0x38,piVar3,uVar4);
      return puVar5;
    default:
      return (undefined4 *)0x0;
    }
  }
  if (iVar10 != 0x33) {
    return (undefined4 *)0x0;
  }
  bVar2 = false;
LAB_007ca152:
  if (**(char **)(param_1 + 0xc) != '_') goto LAB_007ca15c;
  *(char **)(param_1 + 0xc) = *(char **)(param_1 + 0xc) + 1;
  uVar4 = FUN_007ca4d4(param_1,0x45);
LAB_007ca164:
  if (bVar2) {
    uVar4 = FUN_007c8400(param_1,0x37,uVar4);
  }
LAB_007ca176:
  puVar5 = (undefined4 *)FUN_007c8400(param_1,0x35,piVar3,uVar4);
  return puVar5;
switchD_007ca210_caseD_1:
  bVar2 = false;
  if ((pcVar9 != (char *)0x0) &&
     (((cVar1 = *pcVar9, cVar1 == 'm' || (cVar1 == 'p')) && (bVar2 = false, pcVar9[1] == cVar1)))) {
    bVar2 = true;
    if (**(char **)(param_1 + 0xc) == '_') {
      *(char **)(param_1 + 0xc) = *(char **)(param_1 + 0xc) + 1;
      bVar2 = false;
    }
  }
  if (iVar10 == 0x33) goto LAB_007ca152;
LAB_007ca15c:
  uVar4 = FUN_007ca0cc(param_1);
  goto LAB_007ca164;
}

// ---- FUN_007ca4d4  @ 0x7ca4d4
int FUN_007ca4d4(int param_1,uint param_2)

{
  int iVar1;
  int *piVar2;
  int local_14;
  
  local_14 = 0;
  piVar2 = &local_14;
  if (**(byte **)(param_1 + 0xc) == param_2) {
    *(byte **)(param_1 + 0xc) = *(byte **)(param_1 + 0xc) + 1;
    local_14 = FUN_007c8400(param_1,0x2e,0,0);
  }
  else {
    do {
      iVar1 = FUN_007ca0cc(param_1);
      if (iVar1 == 0) {
        return 0;
      }
      iVar1 = FUN_007c8400(param_1,0x2e,iVar1,0);
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

// ---- FUN_007ca530  @ 0x7ca530
void FUN_007ca530(int param_1,char *param_2)

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

// ---- FUN_007ce438  @ 0x7ce438
void FUN_007ce438(int param_1,undefined4 param_2,int *param_3)

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
    FUN_007ca5b8();
  }
  return;
}

// ---- FUN_007ce4dc  @ 0x7ce4dc
void FUN_007ce4dc(int param_1,undefined4 param_2,uint *param_3,undefined4 param_4)

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
    FUN_007ca5b8(param_1,param_2,param_3);
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

// ---- FUN_007ce5a8  @ 0x7ce5a8
bool FUN_007ce5a8(char *param_1,code *param_2,undefined4 param_3)

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
        iVar2 = FUN_007c9858(&local_180,1);
        if ((local_178 & 1) == 0) {
LAB_007ce786:
          cVar5 = *local_174;
        }
        else {
          cVar5 = *local_174;
          while (cVar5 == '.') {
            cVar5 = local_174[1];
            if (((0x19 < (byte)(cVar5 + 0x9fU)) && (cVar5 != '_')) && (9 < (byte)(cVar5 - 0x30U)))
            goto LAB_007ce786;
            iVar2 = FUN_007c85f0(&local_180,iVar2);
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
    iVar2 = FUN_007c9050(&local_180);
    cVar5 = *local_174;
  }
  else {
    pcVar6 = param_1 + 0xb;
    if ((param_1[0xb] == '_') && (param_1[0xc] == 'Z')) {
      local_174 = param_1 + 0xd;
      uVar4 = FUN_007c9858(&local_180,0);
    }
    else {
      local_174 = pcVar6;
      sVar3 = strlen(pcVar6);
      uVar4 = FUN_007c849c(&local_180,pcVar6,sVar3);
    }
    iVar2 = FUN_007c8400(&local_180,(((uVar7 - 2) - (uVar7 - 3)) - (uint)(uVar7 - 2 == 0)) + 0x42,
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
      FUN_007ca5b8(auStack_14c,0x11,iVar2);
      iVar2 = iStack_4c;
      auStack_14c[iStack_4c] = 0;
      (*pcStack_44)(auStack_14c,iVar2,uStack_40);
      bVar8 = iStack_34 == 0;
    }
  }
  return bVar8;
}

// ---- FUN_007ce9fc  @ 0x7ce9fc
uint FUN_007ce9fc(uint param_1,uint param_2)

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

// ---- FUN_007cf37c  @ 0x7cf37c
int FUN_007cf37c(uint *param_1)

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

// ---- FUN_007cf38e  @ 0x7cf38e
int FUN_007cf38e(int param_1,int param_2,uint param_3)

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
LAB_007cf3a0:
  do {
    iVar3 = (iVar5 + iVar6) / 2;
    iVar4 = param_1 + iVar3 * 8;
    uVar1 = FUN_007cf37c(iVar4);
    if (iVar3 == param_2 + -1) {
      if (uVar1 <= param_3) {
        return iVar4;
      }
    }
    else {
      iVar2 = FUN_007cf37c(iVar3 * 8 + 8 + param_1);
      if (uVar1 <= param_3) {
        if (param_3 <= iVar2 - 1U) {
          return iVar4;
        }
        iVar5 = iVar3 + 1;
        goto LAB_007cf3a0;
      }
    }
    if (iVar3 == iVar5) {
      return 0;
    }
    iVar6 = iVar3 + -1;
  } while( true );
}

// ---- FUN_007cf3f6  @ 0x7cf3f6
undefined4 FUN_007cf3f6(int param_1)

{
  if (param_1 == 1) {
    return 0x7cfa95;
  }
  if (param_1 != 2) {
    if (param_1 == 0) {
      return 0x7cfa91;
    }
    return 0;
  }
  return 0x7cfa99;
}

// ---- FUN_007cf428  @ 0x7cf428
/* WARNING: Removing unreachable block (ram,0x007cf444) */

undefined4 FUN_007cf428(int param_1,int param_2,undefined4 param_3)

{
  int iVar1;
  undefined4 uVar2;
  int iVar3;
  int local_14;
  
  local_14 = param_2;
  iVar1 = __gnu_Unwind_Find_exidx(param_2 + -2,&local_14,param_3,__gnu_Unwind_Find_exidx,param_1);
  if ((iVar1 == 0) || (iVar1 = FUN_007cf38e(iVar1,local_14,param_2 + -2), iVar1 == 0)) {
    *(undefined4 *)(param_1 + 0x10) = 0;
    uVar2 = 9;
  }
  else {
    uVar2 = FUN_007cf37c();
    iVar3 = *(int *)(iVar1 + 4);
    *(undefined4 *)(param_1 + 0x48) = uVar2;
    if (iVar3 == 1) {
      uVar2 = 5;
      *(undefined4 *)(param_1 + 0x10) = 0;
    }
    else {
      if (-1 < iVar3) {
        uVar2 = FUN_007cf37c();
        *(undefined4 *)(param_1 + 0x4c) = uVar2;
      }
      else {
        *(int *)(param_1 + 0x4c) = iVar1 + 4;
      }
      *(uint *)(param_1 + 0x50) = (uint)(-1 >= iVar3);
      if ((int)**(uint **)(param_1 + 0x4c) < 0) {
        iVar1 = FUN_007cf3f6((**(uint **)(param_1 + 0x4c) & 0xfffffff) >> 0x18);
        *(int *)(param_1 + 0x10) = iVar1;
        if (iVar1 == 0) {
          uVar2 = 9;
        }
        else {
          uVar2 = 0;
        }
      }
      else {
        uVar2 = FUN_007cf37c();
        *(undefined4 *)(param_1 + 0x10) = uVar2;
        uVar2 = 0;
      }
    }
  }
  return uVar2;
}

// ---- FUN_007cf4cc  @ 0x7cf4cc
void FUN_007cf4cc(uint *param_1)

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

// ---- FUN_007cf51a  @ 0x7cf51a
undefined4 FUN_007cf51a(int *param_1)

{
  if (*param_1 != 0) {
    return *(undefined4 *)(*param_1 + (int)param_1);
  }
  return 0;
}

// ---- FUN_007cf526  @ 0x7cf526
undefined4 FUN_007cf526(void)

{
  return 9;
}

// ---- FUN_007cf52a  @ 0x7cf52a
void FUN_007cf52a(void)

{
  return;
}

// ---- FUN_007cf52c  @ 0x7cf52c
int FUN_007cf52c(int param_1,int param_2)

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
    iVar1 = FUN_007cf428(param_1,*(undefined4 *)(param_2 + 0x40));
    if (iVar1 != 0) goto LAB_007cf53e;
    *(undefined4 *)(param_1 + 0x14) = *(undefined4 *)(param_2 + 0x40);
    iVar1 = (**(code **)(param_1 + 0x10))(1,param_1,param_2);
  } while (iVar1 == 8);
  if (iVar1 == 7) {
    FUN_007cf52a(0,*(undefined4 *)(param_2 + 0x40));
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
      iVar3 = FUN_007cf428(iVar2,uStack_3b8);
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
      FUN_007cf52a(0,uStack_3b8);
      restore_core_regs(&uStack_3f4);
    }
    return 9;
  }
LAB_007cf53e:
                    /* WARNING: Subroutine does not return */
  abort();
}

// ---- FUN_007cf566  @ 0x7cf566
int FUN_007cf566(int param_1,int param_2,int param_3)

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
    iVar1 = FUN_007cf428(param_1,local_3a8);
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
    FUN_007cf52a(0,local_3a8);
    restore_core_regs(&local_3e4);
  }
  return 9;
}

// ---- FUN_007cf730  @ 0x7cf730
undefined4 FUN_007cf730(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 local_c;
  
  local_c = param_4;
  _Unwind_VRS_Get(param_1,0,param_2,0,&local_c,param_2,param_3);
  return local_c;
}

// ---- FUN_007cf774  @ 0x7cf774
void FUN_007cf774(undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 local_c;
  
  local_c = param_3;
  _Unwind_VRS_Set(param_1,0,param_2,0,&local_c,param_2,param_3);
  return;
}

// ---- FUN_007cfe6c  @ 0x7cfe6c
uint FUN_007cfe6c(uint *param_1)

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

// ---- FUN_007cfe98  @ 0x7cfe98
undefined4 FUN_007cfe98(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 local_c;
  
  local_c = param_4;
  _Unwind_VRS_Get(param_1,0,0xc,0,&local_c,param_2,param_3);
  return local_c;
}

// ---- thunk_FUN_007cfe98  @ 0x7cfeb0
undefined4
thunk_FUN_007cfe98(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uStack_c;
  
  uStack_c = param_4;
  _Unwind_VRS_Get(param_1,0,0xc,0,&uStack_c,param_2,param_3);
  return uStack_c;
}
