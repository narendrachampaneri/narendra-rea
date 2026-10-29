// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 42 functions

// ---- FUN_007702f4  @ 0x7702f4
undefined4 FUN_007702f4(undefined4 *param_1,uint param_2)

{
  uint __n;
  void *__dest;
  uint uVar1;
  undefined4 uVar2;
  size_t __size;
  uint local_20;
  
  __n = FUN_0076fdb0(param_1);
  uVar1 = param_2 + __n;
  if (CARRY4(param_2,__n)) {
    param_1[3] = 1;
    uVar2 = 0;
  }
  else if ((param_1[2] == 0) || ((uint)param_1[2] < uVar1)) {
    local_20 = (uint)(param_1[2] * 3) >> 1;
    if (local_20 < uVar1) {
      local_20 = uVar1;
    }
    __size = ((local_20 >> 10) + 1) * 0x400;
    __dest = malloc(__size);
    if (__dest == (void *)0x0) {
      param_1[3] = 1;
      uVar2 = 0;
    }
    else {
      memcpy(__dest,(void *)*param_1,__n);
      free((void *)*param_1);
      *param_1 = __dest;
      param_1[2] = __size;
      memset((void *)((int)__dest + __n),0,__size - __n);
      uVar2 = 1;
    }
  }
  else {
    uVar2 = 1;
  }
  return uVar2;
}

// ---- FUN_007705e4  @ 0x7705e4
int FUN_007705e4(int param_1)

{
  if (param_1 < 0) {
    param_1 = -param_1;
  }
  return param_1;
}

// ---- FUN_007705f8  @ 0x7705f8
void FUN_007705f8(int param_1,int param_2,int param_3,int param_4,int param_5)

{
  undefined4 local_4;
  
  if (param_5 == 0) {
    for (local_4 = 0; local_4 < param_4; local_4 = local_4 + 1) {
      *(char *)(param_3 + local_4) = *(char *)(param_1 + local_4) - *(char *)(param_2 + local_4);
    }
  }
  else {
    for (local_4 = 0; local_4 < param_4; local_4 = local_4 + 1) {
      *(char *)(param_3 + local_4) = *(char *)(param_1 + local_4) + *(char *)(param_2 + local_4);
    }
  }
  return;
}

// ---- FUN_00770678  @ 0x770678
void FUN_00770678(void *param_1,int param_2,int param_3,size_t param_4,int param_5,int param_6,
                 void *param_7)

{
  void *local_14;
  int local_10;
  void *local_c;
  
  local_c = param_1;
  if (param_6 != 0) {
    local_c = param_7;
  }
  if (param_1 == (void *)0x0) {
    __assert2("../libwebp/src/utils/filters.c",0x31,"DoHorizontalFilter","in != NULL");
  }
  if (param_7 == (void *)0x0) {
    __assert2("../libwebp/src/utils/filters.c",0x31,"DoHorizontalFilter","out != NULL");
  }
  if (param_2 < 1) {
    __assert2("../libwebp/src/utils/filters.c",0x31,"DoHorizontalFilter","width > 0");
  }
  if (param_3 < 1) {
    __assert2("../libwebp/src/utils/filters.c",0x31,"DoHorizontalFilter","height > 0");
  }
  if ((int)param_4 < 1) {
    __assert2("../libwebp/src/utils/filters.c",0x31,"DoHorizontalFilter","bpp > 0");
  }
  if (param_4 * param_2 - param_5 != 0 && param_5 <= (int)(param_4 * param_2)) {
    __assert2("../libwebp/src/utils/filters.c",0x31,"DoHorizontalFilter","stride >= width * bpp");
  }
  local_14 = param_1;
  for (local_10 = 0; local_10 < param_3; local_10 = local_10 + 1) {
    if (local_10 == 0) {
      memcpy(param_7,local_14,param_4);
    }
    else {
      FUN_007705f8(local_14,(int)local_c - param_5,param_7,param_4,param_6);
    }
    FUN_007705f8((int)local_14 + param_4,local_c,(int)param_7 + param_4,param_4 * (param_2 + -1),
                 param_6);
    local_c = (void *)((int)local_c + param_5);
    local_14 = (void *)((int)local_14 + param_5);
    param_7 = (void *)((int)param_7 + param_5);
  }
  return;
}

// ---- FUN_00770820  @ 0x770820
void FUN_00770820(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                 undefined4 param_5,undefined4 param_6)

{
  FUN_00770678(param_1,param_2,param_3,param_4,param_5,0,param_6);
  return;
}

// ---- FUN_0077084c  @ 0x77084c
void FUN_0077084c(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                 undefined4 param_5,undefined4 param_6)

{
  FUN_00770678(param_1,param_2,param_3,param_4,param_5,1,param_6);
  return;
}

// ---- FUN_00770878  @ 0x770878
void FUN_00770878(void *param_1,int param_2,int param_3,size_t param_4,int param_5,int param_6,
                 void *param_7)

{
  void *local_14;
  int local_10;
  void *local_c;
  
  local_c = param_1;
  if (param_6 != 0) {
    local_c = param_7;
  }
  if (param_1 == (void *)0x0) {
    __assert2("../libwebp/src/utils/filters.c",0x53,"DoVerticalFilter","in != NULL");
  }
  if (param_7 == (void *)0x0) {
    __assert2("../libwebp/src/utils/filters.c",0x53,"DoVerticalFilter","out != NULL");
  }
  if (param_2 < 1) {
    __assert2("../libwebp/src/utils/filters.c",0x53,"DoVerticalFilter","width > 0");
  }
  if (param_3 < 1) {
    __assert2("../libwebp/src/utils/filters.c",0x53,"DoVerticalFilter","height > 0");
  }
  if ((int)param_4 < 1) {
    __assert2("../libwebp/src/utils/filters.c",0x53,"DoVerticalFilter","bpp > 0");
  }
  if (param_4 * param_2 - param_5 != 0 && param_5 <= (int)(param_4 * param_2)) {
    __assert2("../libwebp/src/utils/filters.c",0x53,"DoVerticalFilter","stride >= width * bpp");
  }
  memcpy(param_7,param_1,param_4);
  FUN_007705f8((int)param_1 + param_4,local_c,(int)param_7 + param_4,param_4 * (param_2 + -1),
               param_6);
  local_14 = param_1;
  for (local_10 = 1; local_10 < param_3; local_10 = local_10 + 1) {
    local_14 = (void *)((int)local_14 + param_5);
    param_7 = (void *)((int)param_7 + param_5);
    FUN_007705f8(local_14,local_c,param_7,param_2 * param_4,param_6);
    local_c = (void *)((int)local_c + param_5);
  }
  return;
}

// ---- FUN_00770a14  @ 0x770a14
void FUN_00770a14(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                 undefined4 param_5,undefined4 param_6)

{
  FUN_00770878(param_1,param_2,param_3,param_4,param_5,0,param_6);
  return;
}

// ---- FUN_00770a40  @ 0x770a40
void FUN_00770a40(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                 undefined4 param_5,undefined4 param_6)

{
  FUN_00770878(param_1,param_2,param_3,param_4,param_5,1,param_6);
  return;
}

// ---- FUN_00770a6c  @ 0x770a6c
int FUN_00770a6c(byte param_1,byte param_2,byte param_3)

{
  int iVar1;
  
  iVar1 = ((uint)param_1 + (uint)param_2) - (uint)param_3;
  if (iVar1 < 0) {
    iVar1 = 0;
  }
  else if (0xfe < iVar1) {
    iVar1 = 0xff;
  }
  return iVar1;
}

// ---- FUN_00770aac  @ 0x770aac
void FUN_00770aac(void *param_1,int param_2,int param_3,size_t param_4,int param_5,int param_6,
                 void *param_7)

{
  char cVar1;
  void *local_1c;
  void *local_18;
  int local_14;
  size_t local_10;
  
  local_18 = param_1;
  if (param_6 != 0) {
    local_18 = param_7;
  }
  if (param_1 == (void *)0x0) {
    __assert2("../libwebp/src/utils/filters.c",0x7a,"DoGradientFilter","in != NULL");
  }
  if (param_7 == (void *)0x0) {
    __assert2("../libwebp/src/utils/filters.c",0x7a,"DoGradientFilter","out != NULL");
  }
  if (param_2 < 1) {
    __assert2("../libwebp/src/utils/filters.c",0x7a,"DoGradientFilter","width > 0");
  }
  if (param_3 < 1) {
    __assert2("../libwebp/src/utils/filters.c",0x7a,"DoGradientFilter","height > 0");
  }
  if ((int)param_4 < 1) {
    __assert2("../libwebp/src/utils/filters.c",0x7a,"DoGradientFilter","bpp > 0");
  }
  if (param_4 * param_2 - param_5 != 0 && param_5 <= (int)(param_4 * param_2)) {
    __assert2("../libwebp/src/utils/filters.c",0x7a,"DoGradientFilter","stride >= width * bpp");
  }
  memcpy(param_7,param_1,param_4);
  FUN_007705f8((int)param_1 + param_4,local_18,(int)param_7 + param_4,param_4 * (param_2 + -1),
               param_6);
  local_1c = param_1;
  for (local_14 = 1; local_14 < param_3; local_14 = local_14 + 1) {
    local_18 = (void *)((int)local_18 + param_5);
    local_1c = (void *)((int)local_1c + param_5);
    param_7 = (void *)((int)param_7 + param_5);
    FUN_007705f8(local_1c,(int)local_18 - param_5,param_7,param_4,param_6);
    for (local_10 = param_4;
        param_4 * param_2 - local_10 != 0 && (int)local_10 <= (int)(param_4 * param_2);
        local_10 = local_10 + 1) {
      cVar1 = FUN_00770a6c(*(undefined1 *)((int)local_18 + (local_10 - param_4)),
                           *(undefined1 *)((int)local_18 + (local_10 - param_5)),
                           *(undefined1 *)((int)local_18 + ((local_10 - param_5) - param_4)));
      if (param_6 == 0) {
        cVar1 = -cVar1;
      }
      *(char *)((int)param_7 + local_10) = *(char *)((int)local_1c + local_10) + cVar1;
    }
  }
  return;
}

// ---- FUN_00770cc8  @ 0x770cc8
void FUN_00770cc8(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                 undefined4 param_5,undefined4 param_6)

{
  FUN_00770aac(param_1,param_2,param_3,param_4,param_5,0,param_6);
  return;
}

// ---- FUN_00770cf4  @ 0x770cf4
void FUN_00770cf4(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                 undefined4 param_5,undefined4 param_6)

{
  FUN_00770aac(param_1,param_2,param_3,param_4,param_5,1,param_6);
  return;
}

// ---- FUN_00770fb8  @ 0x770fb8
bool FUN_00770fb8(int param_1)

{
  return *(int *)(param_1 + 4) == 0;
}

// ---- FUN_00770fd0  @ 0x770fd0
void FUN_00770fd0(int param_1)

{
  *(undefined4 *)(param_1 + 4) = 0xffffffff;
  return;
}

// ---- FUN_00770fe0  @ 0x770fe0
uint FUN_00770fe0(int param_1)

{
  return *(uint *)(param_1 + 4) >> 0x1f;
}

// ---- FUN_00770ff4  @ 0x770ff4
bool FUN_00770ff4(int param_1)

{
  return *(int *)(param_1 + 8) == *(int *)(param_1 + 4);
}

// ---- FUN_00771010  @ 0x771010
void FUN_00771010(int *param_1,int param_2)

{
  int iVar1;
  
  iVar1 = *param_1 + param_1[2] * 8;
  *(int *)(param_2 + 4) = iVar1 - param_2 >> 3;
  param_1[2] = param_1[2] + 2;
  FUN_00770fd0(iVar1);
  FUN_00770fd0(iVar1 + 8);
  return;
}

// ---- FUN_0077105c  @ 0x77105c
undefined4 FUN_0077105c(int *param_1,int param_2)

{
  int iVar1;
  undefined4 uVar2;
  
  if (param_1 == (int *)0x0) {
    __assert2("../libwebp/src/utils/huffman.c",0x2f,"TreeInit","tree != NULL");
  }
  if (param_2 == 0) {
    uVar2 = 0;
  }
  else {
    param_1[1] = param_2 * 2 + -1;
    iVar1 = WebPSafeMalloc(param_1[1],param_1[1] >> 0x1f,8);
    *param_1 = iVar1;
    if (*param_1 == 0) {
      uVar2 = 0;
    }
    else {
      FUN_00770fd0(*param_1);
      param_1[2] = 1;
      uVar2 = 1;
    }
  }
  return uVar2;
}

// ---- FUN_00771328  @ 0x771328
undefined4 FUN_00771328(int *param_1,undefined4 param_2,int param_3,uint param_4)

{
  bool bVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  uint local_20;
  undefined4 *local_10;
  
  local_10 = (undefined4 *)*param_1;
  iVar3 = *param_1;
  iVar4 = param_1[1];
  local_20 = param_4;
  while (bVar1 = 0 < (int)local_20, local_20 = local_20 - 1, bVar1) {
    if ((undefined4 *)(iVar3 + iVar4 * 8) <= local_10) {
      return 0;
    }
    iVar2 = FUN_00770fe0(local_10);
    if (iVar2 == 0) {
      iVar2 = FUN_00770fb8(local_10);
      if (iVar2 != 0) {
        return 0;
      }
    }
    else {
      iVar2 = FUN_00770ff4(param_1);
      if (iVar2 != 0) {
        return 0;
      }
      FUN_00771010(param_1,local_10);
    }
    local_10 = local_10 + (local_10[1] + (param_3 >> (local_20 & 0xff) & 1U)) * 2;
  }
  iVar3 = FUN_00770fe0(local_10);
  if (iVar3 == 0) {
    iVar3 = FUN_00770fb8(local_10);
    if (iVar3 == 0) {
      return 0;
    }
  }
  else {
    local_10[1] = 0;
  }
  *local_10 = param_2;
  return 1;
}

// ---- FUN_00771740  @ 0x771740
int FUN_00771740(int param_1)

{
  if (param_1 < 0) {
    param_1 = -param_1;
  }
  return param_1;
}

// ---- FUN_00771754  @ 0x771754
bool FUN_00771754(int param_1,int param_2)

{
  int iVar1;
  
  iVar1 = FUN_00771740(param_1 - param_2);
  return iVar1 < 4;
}

// ---- FUN_00771778  @ 0x771778
undefined4 FUN_00771778(size_t param_1,int *param_2)

{
  void *__ptr;
  int iVar1;
  undefined4 uVar2;
  size_t local_34;
  size_t local_30;
  int local_2c;
  int local_28;
  int local_24;
  int local_20;
  int local_1c;
  int local_18;
  int local_14;
  int local_10;
  
  for (local_34 = param_1; -1 < (int)local_34; local_34 = local_34 - 1) {
    if (local_34 == 0) {
      return 1;
    }
    if (param_2[local_34 - 1] != 0) break;
  }
  __ptr = calloc(local_34,1);
  if (__ptr == (void *)0x0) {
    uVar2 = 0;
  }
  else {
    local_2c = *param_2;
    local_28 = 0;
    for (local_30 = 0; (int)local_30 < (int)(local_34 + 1); local_30 = local_30 + 1) {
      if ((local_30 == local_34) || (param_2[local_30] != local_2c)) {
        if (((local_2c == 0) && (4 < local_28)) || ((local_2c != 0 && (6 < local_28)))) {
          for (local_24 = 0; local_24 < local_28; local_24 = local_24 + 1) {
            *(undefined1 *)((int)__ptr + (local_30 - local_24) + -1) = 1;
          }
        }
        local_28 = 1;
        if (local_30 != local_34) {
          local_2c = param_2[local_30];
        }
      }
      else {
        local_28 = local_28 + 1;
      }
    }
    local_20 = 0;
    local_1c = *param_2;
    local_18 = 0;
    for (local_30 = 0; (int)local_30 < (int)(local_34 + 1); local_30 = local_30 + 1) {
      if ((((local_30 == local_34) || (*(char *)((int)__ptr + local_30) != '\0')) ||
          ((local_30 != 0 && (*(char *)((int)__ptr + (local_30 - 1)) != '\0')))) ||
         (iVar1 = FUN_00771754(param_2[local_30],local_1c), iVar1 == 0)) {
        if ((3 < local_20) || ((2 < local_20 && (local_18 == 0)))) {
          local_10 = __divsi3(local_20 / 2 + local_18,local_20);
          if (local_10 < 1) {
            local_10 = 1;
          }
          if (local_18 == 0) {
            local_10 = 0;
          }
          for (local_14 = 0; local_14 < local_20; local_14 = local_14 + 1) {
            param_2[(local_30 - local_14) + -1] = local_10;
          }
        }
        local_20 = 0;
        local_18 = 0;
        if ((int)local_30 < (int)(local_34 - 3)) {
          iVar1 = param_2[local_30] + param_2[local_30 + 1] + param_2[local_30 + 2] +
                  param_2[local_30 + 3];
          local_1c = iVar1 + 2;
          if (local_1c < 0) {
            local_1c = iVar1 + 5;
          }
          local_1c = local_1c >> 2;
        }
        else if ((int)local_30 < (int)local_34) {
          local_1c = param_2[local_30];
        }
        else {
          local_1c = 0;
        }
      }
      local_20 = local_20 + 1;
      if ((local_30 != local_34) && (local_18 = local_18 + param_2[local_30], 3 < local_20)) {
        local_1c = __divsi3(local_20 / 2 + local_18,local_20);
      }
    }
    free(__ptr);
    uVar2 = 1;
  }
  return uVar2;
}

// ---- FUN_00771ab0  @ 0x771ab0
void FUN_00771ab0(int param_1,int param_2,int param_3,int param_4)

{
  if (*(int *)(param_1 + 8) < 0) {
    *(char *)(param_3 + *(int *)(param_1 + 4)) = (char)param_4;
  }
  else {
    FUN_00771ab0(param_2 + *(int *)(param_1 + 8) * 0x10,param_2,param_3,param_4 + 1);
    FUN_00771ab0(param_2 + *(int *)(param_1 + 0xc) * 0x10,param_2,param_3,param_4 + 1);
  }
  return;
}

// ---- FUN_00771b10  @ 0x771b10
undefined4 FUN_00771b10(int param_1,int param_2,int param_3,byte *param_4)

{
  void *__base;
  int iVar1;
  undefined4 *puVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  void *pvVar5;
  undefined4 *puVar6;
  undefined4 uVar7;
  int iVar8;
  int local_3c;
  uint local_38;
  int local_34;
  uint local_30;
  int local_2c;
  int local_28;
  int local_24;
  int local_20;
  uint local_1c;
  
  local_38 = 0;
  for (local_34 = 0; local_34 < param_2; local_34 = local_34 + 1) {
    if (*(int *)(param_1 + local_34 * 4) != 0) {
      local_38 = local_38 + 1;
    }
  }
  __base = (void *)WebPSafeMalloc(local_38 * 3,
                                  ((int)local_38 >> 0x1f) * 3 + (uint)CARRY4(local_38,local_38) +
                                  (uint)CARRY4(local_38,local_38 * 2),0x10);
  if (__base == (void *)0x0) {
    uVar4 = 0;
  }
  else {
    pvVar5 = (void *)((int)__base + local_38 * 0x10);
    if (1 << (param_3 - 1U & 0xff) < (int)local_38) {
      __assert2("../libwebp/src/utils/huffman_encode.c",0xd0,"GenerateOptimalTree",
                "tree_size_orig <= (1 << (tree_depth_limit - 1))");
    }
    local_3c = 1;
    while( true ) {
      local_30 = local_38;
      local_2c = 0;
      for (local_28 = 0; local_28 < param_2; local_28 = local_28 + 1) {
        if (*(int *)(param_1 + local_28 * 4) != 0) {
          iVar1 = *(int *)(param_1 + local_28 * 4);
          iVar8 = local_3c;
          if (local_3c <= iVar1) {
            iVar8 = iVar1;
          }
          *(int *)((int)__base + local_2c * 0x10) = iVar8;
          *(int *)((int)__base + local_2c * 0x10 + 4) = local_28;
          *(undefined4 *)((int)__base + local_2c * 0x10 + 8) = 0xffffffff;
          *(undefined4 *)((int)__base + local_2c * 0x10 + 0xc) = 0xffffffff;
          local_2c = local_2c + 1;
        }
      }
      qsort(__base,local_38,0x10,(__compar_fn_t)&LAB_00771a50_1);
      if ((int)local_38 < 2) {
        if (local_38 == 1) {
          param_4[*(int *)((int)__base + 4)] = 1;
        }
      }
      else {
        local_24 = 0;
        for (; 1 < (int)local_30; local_30 = local_30 - 1) {
          puVar2 = (undefined4 *)((int)pvVar5 + local_24 * 0x10);
          puVar6 = (undefined4 *)((int)__base + (local_30 - 1) * 0x10);
          uVar4 = puVar6[1];
          uVar3 = puVar6[2];
          uVar7 = puVar6[3];
          *puVar2 = *puVar6;
          puVar2[1] = uVar4;
          puVar2[2] = uVar3;
          puVar2[3] = uVar7;
          puVar2 = (undefined4 *)((int)pvVar5 + (local_24 + 1) * 0x10);
          puVar6 = (undefined4 *)((int)__base + (local_30 - 2) * 0x10);
          uVar4 = puVar6[1];
          uVar3 = puVar6[2];
          uVar7 = puVar6[3];
          *puVar2 = *puVar6;
          puVar2[1] = uVar4;
          puVar2[2] = uVar3;
          puVar2[3] = uVar7;
          iVar8 = *(int *)((int)pvVar5 + (local_24 + 1) * 0x10) +
                  *(int *)((int)pvVar5 + local_24 * 0x10);
          for (local_20 = 0;
              (local_20 < (int)(local_30 - 2) && (iVar8 < *(int *)((int)__base + local_20 * 0x10)));
              local_20 = local_20 + 1) {
          }
          memmove((void *)((int)__base + (local_20 + 1) * 0x10),
                  (void *)((int)__base + local_20 * 0x10),((local_30 - 2) - local_20) * 0x10);
          *(int *)((int)__base + local_20 * 0x10) = iVar8;
          *(undefined4 *)((int)__base + local_20 * 0x10 + 4) = 0xffffffff;
          *(int *)((int)__base + local_20 * 0x10 + 8) = local_24 + 1;
          *(int *)((int)__base + local_20 * 0x10 + 0xc) = local_24;
          local_24 = local_24 + 2;
        }
        FUN_00771ab0(__base,pvVar5,param_4,0);
      }
      local_1c = (uint)*param_4;
      for (local_28 = 1; local_28 < param_2; local_28 = local_28 + 1) {
        if (local_1c < param_4[local_28]) {
          local_1c = (uint)param_4[local_28];
        }
      }
      if ((int)local_1c <= param_3) break;
      local_3c = local_3c << 1;
    }
    free(__base);
    uVar4 = 1;
  }
  return uVar4;
}

// ---- FUN_00771e2c  @ 0x771e2c
undefined1 * FUN_00771e2c(int param_1,undefined1 *param_2,int param_3,int param_4)

{
  undefined1 *local_18;
  int local_14;
  int local_c;
  
  if (0xf < param_3) {
    __assert2("../libwebp/src/utils/huffman_encode.c",0x11c,"CodeRepeatedValues",
              "value <= MAX_ALLOWED_CODE_LENGTH");
  }
  local_18 = param_2;
  local_14 = param_1;
  if (param_3 != param_4) {
    *param_2 = (char)param_3;
    param_2[1] = 0;
    local_18 = param_2 + 2;
    local_14 = param_1 + -1;
  }
  while( true ) {
    if (local_14 < 1) {
      return local_18;
    }
    if (local_14 < 3) break;
    if (local_14 < 7) {
      *local_18 = 0x10;
      local_18[1] = (char)local_14 + -3;
      return local_18 + 2;
    }
    *local_18 = 0x10;
    local_18[1] = 3;
    local_18 = local_18 + 2;
    local_14 = local_14 + -6;
  }
  for (local_c = 0; local_c < local_14; local_c = local_c + 1) {
    *local_18 = (char)param_3;
    local_18[1] = 0;
    local_18 = local_18 + 2;
  }
  return local_18;
}

// ---- FUN_00771f1c  @ 0x771f1c
undefined1 * FUN_00771f1c(int param_1,undefined1 *param_2)

{
  undefined1 *local_10;
  int local_c;
  int local_4;
  
  local_10 = param_2;
  local_c = param_1;
  while( true ) {
    if (local_c < 1) {
      return local_10;
    }
    if (local_c < 3) {
      for (local_4 = 0; local_4 < local_c; local_4 = local_4 + 1) {
        *local_10 = 0;
        local_10[1] = 0;
        local_10 = local_10 + 2;
      }
      return local_10;
    }
    if (local_c < 0xb) {
      *local_10 = 0x11;
      local_10[1] = (char)local_c + -3;
      return local_10 + 2;
    }
    if (local_c < 0x8b) break;
    *local_10 = 0x12;
    local_10[1] = 0x7f;
    local_10 = local_10 + 2;
    local_c = local_c + -0x8a;
  }
  *local_10 = 0x12;
  local_10[1] = (char)local_c + -0xb;
  return local_10 + 2;
}

// ---- FUN_007720e8  @ 0x7720e8
uint FUN_007720e8(int param_1,uint param_2)

{
  uint local_10;
  uint local_8;
  int local_4;
  
  local_8 = 0;
  local_4 = 0;
  local_10 = param_2;
  while (local_4 < param_1) {
    local_4 = local_4 + 4;
    local_8 = (uint)(byte)(&DAT_00875580)[local_10 & 0xf] << (0x10U - local_4 & 0xff) | local_8;
    local_10 = local_10 >> 4;
  }
  return local_8 >> (0x10U - param_1 & 0xff);
}

// ---- FUN_0077214c  @ 0x77214c
void FUN_0077214c(int *param_1)

{
  undefined2 uVar1;
  int iVar2;
  int iVar3;
  uint uVar4;
  int iVar5;
  int local_9c;
  int local_98;
  int local_88 [16];
  int local_48 [16];
  
  memset(local_48,0,0x40);
  if (param_1 == (int *)0x0) {
    __assert2("../libwebp/src/utils/huffman_encode.c",0x191,"ConvertBitDepthsToSymbols",
              "tree != NULL");
  }
  iVar3 = *param_1;
  for (local_9c = 0; local_9c < iVar3; local_9c = local_9c + 1) {
    uVar4 = (uint)*(byte *)(param_1[1] + local_9c);
    if (0xf < uVar4) {
      __assert2("../libwebp/src/utils/huffman_encode.c",0x195,"ConvertBitDepthsToSymbols",
                "code_length <= MAX_ALLOWED_CODE_LENGTH");
    }
    local_48[uVar4] = local_48[uVar4] + 1;
  }
  local_48[0] = 0;
  local_88[0] = 0;
  local_98 = 0;
  for (local_9c = 1; local_9c < 0x10; local_9c = local_9c + 1) {
    local_98 = (local_48[local_9c + -1] + local_98) * 2;
    local_88[local_9c] = local_98;
  }
  for (local_9c = 0; local_9c < iVar3; local_9c = local_9c + 1) {
    uVar4 = (uint)*(byte *)(param_1[1] + local_9c);
    iVar2 = param_1[2];
    iVar5 = local_88[uVar4];
    local_88[uVar4] = iVar5 + 1;
    uVar1 = FUN_007720e8(uVar4,iVar5);
    *(undefined2 *)(iVar2 + local_9c * 2) = uVar1;
  }
  return;
}

// ---- FUN_00772d24  @ 0x772d24
bool FUN_00772d24(int param_1)

{
  return *(int *)(param_1 + 0x18) < 1;
}

// ---- FUN_00773244  @ 0x773244
undefined4 FUN_00773244(pthread_mutex_t *param_1)

{
  bool bVar1;
  int iVar2;
  uint uVar3;
  
  bVar1 = false;
  while (!bVar1) {
    pthread_mutex_lock(param_1);
    while ((param_1->__data).__kind == 1) {
      pthread_cond_wait((pthread_cond_t *)&(param_1->__data).__count,param_1);
    }
    if ((param_1->__data).__kind == 2) {
      if ((param_1->__data).__nusers != 0) {
        uVar3 = *(uint *)((int)param_1 + 0x1c);
        iVar2 = (*(code *)(param_1->__data).__nusers)
                          ((param_1->__data).field5_0x14.__spins,param_1[1].__data.__lock);
        *(uint *)((int)param_1 + 0x1c) = uVar3 | iVar2 == 0;
      }
      (param_1->__data).__kind = 1;
    }
    else if ((param_1->__data).__kind == 0) {
      bVar1 = true;
    }
    pthread_cond_signal((pthread_cond_t *)&(param_1->__data).__count);
    pthread_mutex_unlock(param_1);
  }
  return 0;
}

// ---- FUN_007732ec  @ 0x7732ec
void FUN_007732ec(pthread_mutex_t *param_1,int param_2)

{
  if ((param_1->__data).__kind != 0) {
    pthread_mutex_lock(param_1);
    while ((param_1->__data).__kind != 1) {
      pthread_cond_wait((pthread_cond_t *)&(param_1->__data).__count,param_1);
    }
    if (param_2 != 1) {
      (param_1->__data).__kind = param_2;
      pthread_cond_signal((pthread_cond_t *)&(param_1->__data).__count);
    }
    pthread_mutex_unlock(param_1);
  }
  return;
}

// ---- FUN_00773520  @ 0x773520
undefined8 FUN_00773520(uint param_1,int param_2,uint param_3)

{
  int iVar1;
  uint uVar2;
  undefined4 uVar3;
  bool bVar4;
  undefined8 uVar5;
  
  iVar1 = param_3 * param_2 + (int)((ulonglong)param_1 * (ulonglong)param_3 >> 0x20);
  if (param_1 == 0 && param_2 == 0) {
    uVar3 = 1;
    iVar1 = 0;
  }
  else {
    uVar5 = __aeabi_uldivmod(0,0x100,param_1,param_2);
    uVar2 = (uint)((ulonglong)uVar5 >> 0x20);
    bVar4 = param_3 <= (uint)uVar5;
    if (uVar2 == 0 && bVar4 <= uVar2) {
      uVar3 = 0;
      iVar1 = uVar2 - !bVar4;
    }
    else if (iVar1 == 0) {
      uVar3 = 1;
    }
    else {
      uVar3 = 0;
    }
  }
  return CONCAT44(iVar1,uVar3);
}

// ---- FUN_0077362c  @ 0x77362c
void FUN_0077362c(int param_1,int param_2,undefined1 param_3)

{
  undefined8 uVar1;
  undefined4 uVar2;
  undefined1 (*pauVar3) [16];
  undefined8 *puVar4;
  undefined1 auVar5 [16];
  undefined1 auVar6 [16];
  undefined1 auVar7 [16];
  undefined1 auVar8 [16];
  undefined1 auVar9 [16];
  undefined1 auVar10 [16];
  undefined1 auVar11 [16];
  
  pauVar3 = (undefined1 (*) [16])(param_1 + param_2 * -2);
  auVar7 = *pauVar3;
  pauVar3 = (undefined1 (*) [16])(*pauVar3 + param_2);
  auVar5 = *pauVar3;
  pauVar3 = (undefined1 (*) [16])(*pauVar3 + param_2);
  auVar6 = *pauVar3;
  pauVar3 = (undefined1 (*) [16])(*pauVar3 + param_2);
  auVar8 = *pauVar3;
  auVar10 = VectorAbsoluteDifference(auVar5,auVar6,1,1);
  auVar9 = VectorAbsoluteDifference(auVar7,auVar8,1,1);
  auVar10 = VectorAdd(auVar10,auVar10,1,1);
  auVar10 = SatQ(auVar10,1,1);
  auVar9 = VectorShiftRight(auVar9,1);
  auVar9 = VectorAdd(auVar10,auVar9,1,1);
  auVar9 = SatQ(auVar9,1,1);
  uVar2 = CONCAT22(CONCAT11(param_3,param_3),CONCAT11(param_3,param_3));
  uVar1 = CONCAT44(uVar2,uVar2);
  auVar10._8_8_ = uVar1;
  auVar10._0_8_ = uVar1;
  auVar10 = VectorCompareGreaterThanOrEqual(auVar10,auVar9,1,1);
  auVar9._8_8_ = SUB158(SUB1615((undefined1  [16])0x0,1),7);
  auVar9._0_8_ = 0x8080808080808080;
  auVar9 = *(undefined1 (*) [16])(auVar9 << 0x40 | auVar9);
  auVar5 = auVar5 ^ auVar9;
  auVar6 = auVar6 ^ auVar9;
  auVar11 = VectorSub(auVar6,auVar5,1,0);
  auVar11 = SatQ(auVar11,1,0);
  auVar7 = VectorSub(auVar7 ^ auVar9,auVar8 ^ auVar9,1,0);
  auVar7 = SatQ(auVar7,1,0);
  auVar7 = VectorAdd(auVar7,auVar11,1,0);
  auVar7 = SatQ(auVar7,1,0);
  auVar7 = VectorAdd(auVar7,auVar11,1,0);
  auVar7 = SatQ(auVar7,1,0);
  auVar7 = VectorAdd(auVar7,auVar11,1,0);
  auVar8 = SatQ(auVar7,1,0);
  auVar7._8_8_ = SUB158(SUB1615((undefined1  [16])0x0,1),7);
  auVar7._0_8_ = 0x303030303030303;
  auVar7 = VectorAdd(*(undefined1 (*) [16])(auVar7 << 0x40 | auVar7),auVar10 & auVar8,1,0);
  auVar7 = SatQ(auVar7,1,0);
  auVar7 = VectorShiftRight(auVar7,3);
  auVar7 = VectorAdd(auVar5,auVar7,1,0);
  auVar7 = SatQ(auVar7,1,0);
  auVar5._8_8_ = SUB158(SUB1615((undefined1  [16])0x0,1),7);
  auVar5._0_8_ = 0x404040404040404;
  auVar5 = VectorAdd(*(undefined1 (*) [16])(auVar5 << 0x40 | auVar5),auVar10 & auVar8,1,0);
  auVar5 = SatQ(auVar5,1,0);
  auVar5 = VectorShiftRight(auVar5,3);
  auVar5 = VectorSub(auVar6,auVar5,1,0);
  auVar5 = SatQ(auVar5,1,0);
  puVar4 = (undefined8 *)((int)pauVar3 + param_2 * -2);
  *puVar4 = SUB168(auVar7 ^ auVar9,0);
  puVar4[1] = SUB168(auVar7 ^ auVar9,8);
  *(undefined8 *)((int)puVar4 + param_2) = SUB168(auVar5 ^ auVar9,0);
  ((undefined8 *)((int)puVar4 + param_2))[1] = SUB168(auVar5 ^ auVar9,8);
  return;
}

// ---- FUN_007736d8  @ 0x7736d8
/* WARNING: Restarted to delay deadcode elimination for space: register */

void FUN_007736d8(undefined1 *param_1,int param_2,undefined1 param_3)

{
  undefined8 uVar1;
  undefined4 uVar2;
  undefined1 *puVar3;
  undefined1 *puVar4;
  int iVar5;
  undefined1 uVar6;
  undefined1 in_q1 [16];
  undefined1 in_q2 [16];
  undefined1 auVar7 [16];
  undefined1 in_q3 [16];
  undefined1 auVar8 [16];
  undefined1 in_q4 [16];
  undefined1 auVar9 [16];
  undefined1 auVar10 [16];
  undefined1 auVar11 [16];
  undefined1 auVar12 [16];
  undefined1 auVar13 [16];
  undefined1 auVar14 [16];
  
  puVar3 = param_1 + -2;
  iVar5 = param_2 * 2;
  puVar4 = puVar3 + param_2;
                    /* WARNING: Ignoring partial resolution of indirect */
  uVar6 = *puVar3;
  uVar6 = param_1[-1];
  uVar6 = *param_1;
  uVar6 = param_1[1];
  puVar3 = puVar3 + iVar5;
                    /* WARNING: Ignoring partial resolution of indirect */
  uVar6 = *puVar4;
  uVar6 = puVar4[1];
  uVar6 = puVar4[2];
  uVar6 = puVar4[3];
  puVar4 = puVar4 + iVar5;
                    /* WARNING: Ignoring partial resolution of indirect */
  uVar6 = *puVar3;
  uVar6 = puVar3[1];
  uVar6 = puVar3[2];
  uVar6 = puVar3[3];
  puVar3 = puVar3 + iVar5;
                    /* WARNING: Ignoring partial resolution of indirect */
  uVar6 = *puVar4;
  uVar6 = puVar4[1];
  uVar6 = puVar4[2];
  uVar6 = puVar4[3];
  puVar4 = puVar4 + iVar5;
                    /* WARNING: Ignoring partial resolution of indirect */
  uVar6 = *puVar3;
  uVar6 = puVar3[1];
  uVar6 = puVar3[2];
  uVar6 = puVar3[3];
  puVar3 = puVar3 + iVar5;
                    /* WARNING: Ignoring partial resolution of indirect */
  uVar6 = *puVar4;
  uVar6 = puVar4[1];
  uVar6 = puVar4[2];
  uVar6 = puVar4[3];
  puVar4 = puVar4 + iVar5;
                    /* WARNING: Ignoring partial resolution of indirect */
  uVar6 = *puVar3;
  uVar6 = puVar3[1];
  uVar6 = puVar3[2];
  uVar6 = puVar3[3];
  puVar3 = puVar3 + iVar5;
                    /* WARNING: Ignoring partial resolution of indirect */
  uVar6 = *puVar4;
  uVar6 = puVar4[1];
  uVar6 = puVar4[2];
  uVar6 = puVar4[3];
  puVar4 = puVar4 + iVar5;
                    /* WARNING: Ignoring partial resolution of indirect */
  uVar6 = *puVar3;
  uVar6 = puVar3[1];
  uVar6 = puVar3[2];
  uVar6 = puVar3[3];
  puVar3 = puVar3 + iVar5;
                    /* WARNING: Ignoring partial resolution of indirect */
  uVar6 = *puVar4;
  uVar6 = puVar4[1];
  uVar6 = puVar4[2];
  uVar6 = puVar4[3];
  puVar4 = puVar4 + iVar5;
                    /* WARNING: Ignoring partial resolution of indirect */
  uVar6 = *puVar3;
  uVar6 = puVar3[1];
  uVar6 = puVar3[2];
  uVar6 = puVar3[3];
  puVar3 = puVar3 + iVar5;
                    /* WARNING: Ignoring partial resolution of indirect */
  uVar6 = *puVar4;
  uVar6 = puVar4[1];
  uVar6 = puVar4[2];
  uVar6 = puVar4[3];
  puVar4 = puVar4 + iVar5;
                    /* WARNING: Ignoring partial resolution of indirect */
  uVar6 = *puVar3;
  uVar6 = puVar3[1];
  uVar6 = puVar3[2];
  uVar6 = puVar3[3];
  puVar3 = puVar3 + iVar5;
                    /* WARNING: Ignoring partial resolution of indirect */
  uVar6 = *puVar4;
  uVar6 = puVar4[1];
  uVar6 = puVar4[2];
  uVar6 = puVar4[3];
  puVar4 = puVar4 + iVar5;
                    /* WARNING: Ignoring partial resolution of indirect */
  uVar6 = *puVar3;
  uVar6 = puVar3[1];
  uVar6 = puVar3[2];
  uVar6 = puVar3[3];
                    /* WARNING: Ignoring partial resolution of indirect */
  uVar6 = *puVar4;
  uVar6 = puVar4[1];
  uVar6 = puVar4[2];
  uVar6 = puVar4[3];
  auVar8._8_8_ = in_q3._8_8_;
  auVar8._0_8_ = in_q1._8_8_;
  auVar11._0_8_ = in_q1._0_8_;
  auVar11._8_8_ = in_q3._0_8_;
  auVar9._8_8_ = in_q4._8_8_;
  auVar9._0_8_ = in_q2._8_8_;
  auVar7._0_8_ = in_q2._0_8_;
  auVar7._8_8_ = in_q4._0_8_;
  auVar13 = VectorAbsoluteDifference(auVar8,auVar7,1,1);
  auVar12 = VectorAbsoluteDifference(auVar11,auVar9,1,1);
  auVar13 = VectorAdd(auVar13,auVar13,1,1);
  auVar13 = SatQ(auVar13,1,1);
  auVar12 = VectorShiftRight(auVar12,1);
  auVar12 = VectorAdd(auVar13,auVar12,1,1);
  auVar12 = SatQ(auVar12,1,1);
  uVar2 = CONCAT22(CONCAT11(param_3,param_3),CONCAT11(param_3,param_3));
  uVar1 = CONCAT44(uVar2,uVar2);
  auVar10._8_8_ = uVar1;
  auVar10._0_8_ = uVar1;
  auVar10 = VectorCompareGreaterThanOrEqual(auVar10,auVar12,1,1);
  auVar12._8_8_ = SUB158(SUB1615((undefined1  [16])0x0,1),7);
  auVar12._0_8_ = 0x8080808080808080;
  auVar12 = *(undefined1 (*) [16])(auVar12 << 0x40 | auVar12);
  auVar13 = VectorSub(auVar7 ^ auVar12,auVar8 ^ auVar12,1,0);
  auVar14 = SatQ(auVar13,1,0);
  auVar13 = VectorSub(auVar11 ^ auVar12,auVar9 ^ auVar12,1,0);
  auVar13 = SatQ(auVar13,1,0);
  auVar13 = VectorAdd(auVar13,auVar14,1,0);
  auVar13 = SatQ(auVar13,1,0);
  auVar13 = VectorAdd(auVar13,auVar14,1,0);
  auVar13 = SatQ(auVar13,1,0);
  auVar13 = VectorAdd(auVar13,auVar14,1,0);
  auVar11 = SatQ(auVar13,1,0);
  auVar13._8_8_ = SUB158(SUB1615((undefined1  [16])0x0,1),7);
  auVar13._0_8_ = 0x303030303030303;
  auVar13 = VectorAdd(*(undefined1 (*) [16])(auVar13 << 0x40 | auVar13),auVar10 & auVar11,1,0);
  auVar13 = SatQ(auVar13,1,0);
  auVar13 = VectorShiftRight(auVar13,3);
  auVar13 = VectorAdd(auVar8 ^ auVar12,auVar13,1,0);
  auVar13 = SatQ(auVar13,1,0);
  auVar14._8_8_ = SUB158(SUB1615((undefined1  [16])0x0,1),7);
  auVar14._0_8_ = 0x404040404040404;
  auVar14 = VectorAdd(*(undefined1 (*) [16])(auVar14 << 0x40 | auVar14),auVar10 & auVar11,1,0);
  auVar14 = SatQ(auVar14,1,0);
  auVar14 = VectorShiftRight(auVar14,3);
  auVar14 = VectorSub(auVar7 ^ auVar12,auVar14,1,0);
  auVar14 = SatQ(auVar14,1,0);
  auVar13 = auVar13 ^ auVar12;
  auVar14 = auVar14 ^ auVar12;
  param_1[-1] = auVar13[0];
  *param_1 = auVar14[0];
  puVar3 = param_1 + -1 + param_2;
  *puVar3 = auVar13[1];
  puVar3[1] = auVar14[1];
  puVar3 = puVar3 + param_2;
  *puVar3 = auVar13[2];
  puVar3[1] = auVar14[2];
  puVar3 = puVar3 + param_2;
  *puVar3 = auVar13[3];
  puVar3[1] = auVar14[3];
  puVar3 = puVar3 + param_2;
  *puVar3 = auVar13[4];
  puVar3[1] = auVar14[4];
  puVar3 = puVar3 + param_2;
  *puVar3 = auVar13[5];
  puVar3[1] = auVar14[5];
  puVar3 = puVar3 + param_2;
  *puVar3 = auVar13[6];
  puVar3[1] = auVar14[6];
  puVar3 = puVar3 + param_2;
  *puVar3 = auVar13[7];
  puVar3[1] = auVar14[7];
  puVar3 = puVar3 + param_2;
  *puVar3 = auVar13[8];
  puVar3[1] = auVar14[8];
  puVar3 = puVar3 + param_2;
  *puVar3 = auVar13[9];
  puVar3[1] = auVar14[9];
  puVar3 = puVar3 + param_2;
  *puVar3 = auVar13[10];
  puVar3[1] = auVar14[10];
  puVar3 = puVar3 + param_2;
  *puVar3 = auVar13[0xb];
  puVar3[1] = auVar14[0xb];
  puVar3 = puVar3 + param_2;
  *puVar3 = auVar13[0xc];
  puVar3[1] = auVar14[0xc];
  puVar3 = puVar3 + param_2;
  *puVar3 = auVar13[0xd];
  puVar3[1] = auVar14[0xd];
  puVar3 = puVar3 + param_2;
  *puVar3 = auVar13[0xe];
  puVar3[1] = auVar14[0xe];
  puVar3[param_2] = auVar13[0xf];
  (puVar3 + param_2)[1] = auVar14[0xf];
  return;
}

// ---- FUN_00773808  @ 0x773808
void FUN_00773808(int param_1,int param_2,undefined4 param_3)

{
  undefined4 local_14;
  undefined4 local_c;
  
  local_14 = param_1;
  for (local_c = 3; 0 < local_c; local_c = local_c + -1) {
    local_14 = local_14 + param_2 * 4;
    FUN_0077362c(local_14,param_2,param_3);
  }
  return;
}

// ---- FUN_00773844  @ 0x773844
void FUN_00773844(int param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 local_14;
  undefined4 local_c;
  
  local_14 = param_1;
  for (local_c = 3; 0 < local_c; local_c = local_c + -1) {
    local_14 = local_14 + 4;
    FUN_007736d8(local_14,param_2,param_3);
  }
  return;
}

// ---- FUN_0077387c  @ 0x77387c
/* WARNING: Restarted to delay deadcode elimination for space: register */

undefined4 FUN_0077387c(undefined1 (*param_1) [16],undefined4 *param_2)

{
  undefined4 uVar1;
  undefined8 extraout_d6;
  undefined8 extraout_d7;
  undefined1 auVar2 [16];
  undefined1 auVar3 [16];
  undefined1 auVar4 [16];
  undefined1 auVar5 [16];
  undefined1 auVar6 [16];
  undefined8 uVar7;
  undefined8 uVar8;
  undefined8 uVar9;
  undefined8 uVar11;
  undefined8 uVar12;
  undefined1 local_10 [12];
  undefined8 uVar10;
  undefined8 uVar13;
  
  memcpy(local_10,&DAT_00875748,8);
  uVar7 = SUB168(param_1[1],0);
  uVar9 = SUB168(*param_1,8);
  auVar3._8_8_ = SUB168(param_1[1],8);
  auVar3._0_8_ = uVar9;
  uVar12 = SUB168(*param_1,0);
  uVar1 = VectorGetElement(uVar9,0,2,0);
  auVar2 = VectorDoubleMultiplyLong(auVar3,uVar1,2,0);
  auVar2 = SatQ(auVar2,2,0);
  uVar1 = VectorGetElement(uVar9,0,2,0);
  auVar5 = VectorDoubleMultiplyLong(auVar3,uVar1,2,0);
  auVar5 = SatQ(auVar5,2,0);
  uVar9 = VectorAdd(uVar12,uVar7,2,0);
  uVar10 = SatQ(uVar9,2,0);
  uVar12 = VectorSub(uVar12,uVar7,2,0);
  uVar13 = SatQ(uVar12,2,0);
  auVar2 = VectorShiftRight(auVar2,1);
  auVar3 = VectorAdd(auVar3,auVar2,2,0);
  auVar3 = SatQ(auVar3,2,0);
  uVar12 = VectorSub(auVar5._0_8_,auVar3._8_8_,2,0);
  uVar9 = SatQ(uVar12,2,0);
  uVar12 = VectorAdd(auVar5._8_8_,auVar3._0_8_,2,0);
  uVar7 = SatQ(uVar12,2,0);
  uVar12 = VectorAdd(uVar10,uVar7,2,0);
  SatQ(uVar12,2,0);
  uVar12 = VectorAdd(uVar13,uVar9,2,0);
  SatQ(uVar12,2,0);
  uVar12 = VectorSub(uVar13,uVar9,2,0);
  auVar2._0_8_ = SatQ(uVar12,2,0);
  uVar12 = VectorSub(uVar10,uVar7,2,0);
  auVar2._8_8_ = SatQ(uVar12,2,0);
  VectorZip(auVar2,2);
  auVar3 = VectorZip(auVar2,2);
  uVar12 = auVar3._8_8_;
  auVar5._8_8_ = auVar2._8_8_;
  auVar5._0_8_ = uVar12;
  uVar1 = VectorGetElement(uVar12,0,2,0);
  auVar4 = VectorDoubleMultiplyLong(auVar5,uVar1,2,0);
  auVar4 = SatQ(auVar4,2,0);
  uVar1 = VectorGetElement(uVar12,0,2,0);
  auVar6 = VectorDoubleMultiplyLong(auVar5,uVar1,2,0);
  auVar6 = SatQ(auVar6,2,0);
  uVar12 = VectorAdd(auVar3._0_8_,auVar2._0_8_,2,0);
  uVar11 = SatQ(uVar12,2,0);
  uVar12 = VectorSub(auVar3._0_8_,auVar2._0_8_,2,0);
  uVar13 = SatQ(uVar12,2,0);
  auVar3 = VectorShiftRight(auVar4,1);
  auVar3 = VectorAdd(auVar5,auVar3,2,0);
  auVar3 = SatQ(auVar3,2,0);
  uVar12 = VectorSub(auVar6._0_8_,auVar3._8_8_,2,0);
  uVar9 = SatQ(uVar12,2,0);
  uVar12 = VectorAdd(auVar6._8_8_,auVar3._0_8_,2,0);
  uVar8 = SatQ(uVar12,2,0);
  uVar12 = VectorAdd(uVar11,uVar8,2,0);
  uVar7 = SatQ(uVar12,2,0);
  uVar12 = VectorAdd(uVar13,uVar9,2,0);
  uVar10 = SatQ(uVar12,2,0);
  uVar12 = VectorSub(uVar13,uVar9,2,0);
  uVar13 = SatQ(uVar12,2,0);
  uVar12 = VectorSub(uVar11,uVar8,2,0);
  uVar8 = SatQ(uVar12,2,0);
                    /* WARNING: Ignoring partial resolution of indirect */
  uVar12 = extraout_d6;
  uVar1 = *param_2;
                    /* WARNING: Ignoring partial resolution of indirect */
  uVar1 = param_2[8];
                    /* WARNING: Ignoring partial resolution of indirect */
  uVar9 = extraout_d7;
  uVar1 = param_2[0x10];
                    /* WARNING: Ignoring partial resolution of indirect */
  uVar1 = param_2[0x18];
  VectorRoundShiftRight(uVar7,3);
  VectorRoundShiftRight(uVar10,3);
  auVar4._0_8_ = VectorRoundShiftRight(uVar13,3);
  auVar4._8_8_ = VectorRoundShiftRight(uVar8,3);
  VectorZip(auVar4,2);
  auVar3 = VectorZip(auVar4,2);
  auVar2 = VectorCopyLong(uVar12,1,1);
  auVar5 = VectorCopyLong(uVar9,1,1);
  auVar3 = VectorAdd(auVar3,auVar2,2,0);
  auVar3 = SatQ(auVar3,2,0);
  auVar2 = VectorAdd(auVar4,auVar5,2,0);
  auVar2 = SatQ(auVar2,2,0);
  uVar12 = VectorCopyNarrow(auVar3,2,0);
  uVar12 = SatQ(uVar12,2,0);
  uVar9 = VectorCopyNarrow(auVar2,2,0);
  uVar9 = SatQ(uVar9,2,0);
  *param_2 = (int)uVar12;
  param_2[8] = (int)((ulonglong)uVar12 >> 0x20);
  param_2[0x10] = (int)uVar9;
  param_2[0x18] = (int)((ulonglong)uVar9 >> 0x20);
  return (int)uVar12;
}

// ---- FUN_00773980  @ 0x773980
void FUN_00773980(int param_1,int param_2,int param_3)

{
  FUN_0077387c(param_1,param_2);
  if (param_3 != 0) {
    FUN_0077387c(param_1 + 0x20,param_2 + 4);
  }
  return;
}

// ---- FUN_00773a20  @ 0x773a20
byte * FUN_00773a20(byte *param_1,byte *param_2,int param_3,int *param_4)

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

// ---- FUN_00773b18  @ 0x773b18
undefined4 FUN_00773b18(undefined4 param_1)

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

// ---- FUN_00773b58  @ 0x773b58
void * FUN_00773b58(void *param_1,int param_2,char *param_3)

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
