// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 200 functions

// ---- FUN_00760164  @ 0x760164
undefined4
FUN_00760164(int param_1,int param_2,int param_3,int *param_4,int param_5,undefined4 param_6)

{
  bool bVar1;
  int iVar2;
  uint uVar3;
  undefined4 uVar4;
  int iVar5;
  int local_34;
  int local_30;
  uint local_2c;
  int local_28;
  undefined1 auStack_18 [8];
  undefined1 auStack_10 [12];
  
  local_34 = 0;
  bVar1 = 0 < param_5;
  local_28 = 0;
  if ((bVar1) && (local_28 = VP8LColorCacheInit(auStack_18,param_5), local_28 == 0)) {
    uVar4 = 0;
  }
  else {
    for (local_30 = 0; local_30 < param_4[1]; local_30 = local_30 + 1) {
      iVar5 = *param_4 + local_30 * 8;
      iVar2 = FUN_0075e5d8(iVar5);
      if (iVar2 == 0) {
        VP8LHistogramAddSinglePixOrCopy(param_6,iVar5);
      }
      else if ((bVar1) &&
              (iVar2 = FUN_0075e6a0(auStack_18,*(undefined4 *)(param_1 + local_34 * 4)), iVar2 != 0)
              ) {
        uVar4 = FUN_0075e67c(auStack_18,*(undefined4 *)(param_1 + local_34 * 4));
        FUN_0075e524(auStack_10,uVar4);
        VP8LHistogramAddSinglePixOrCopy(param_6,auStack_10);
      }
      else {
        VP8LHistogramAddSinglePixOrCopy(param_6,iVar5);
      }
      if (bVar1) {
        for (local_2c = 0; uVar3 = FUN_0075e608(iVar5), local_2c < uVar3; local_2c = local_2c + 1) {
          FUN_0075e648(auStack_18,*(undefined4 *)(param_1 + (local_34 + local_2c) * 4));
        }
      }
      iVar2 = FUN_0075e608(iVar5);
      local_34 = iVar2 + local_34;
    }
    if (param_3 * param_2 - local_34 != 0) {
      __assert2("../libwebp/src/enc/backward_references.c",0x344,"ComputeCacheHistogram",
                "pixel_index == xsize * ysize");
    }
    if (local_28 != 0) {
      VP8LColorCacheClear(auStack_18);
    }
    uVar4 = 1;
  }
  return uVar4;
}

// ---- FUN_007607f8  @ 0x7607f8
undefined2 FUN_007607f8(int param_1,byte param_2)

{
  undefined2 uVar1;
  
  if (param_1 == 0) {
    uVar1 = *(undefined2 *)(VP8EntropyCost + (uint)param_2 * 2);
  }
  else {
    uVar1 = *(undefined2 *)(VP8EntropyCost + (0xff - (uint)param_2) * 2);
  }
  return uVar1;
}

// ---- FUN_00760838  @ 0x760838
int FUN_00760838(int param_1,int param_2)

{
  int iVar1;
  uint local_18;
  uint local_14;
  int local_10;
  int local_c;
  
  local_14 = (uint)*(ushort *)(VP8LevelCodes + (param_1 + -1) * 4 + 2);
  local_10 = 0;
  local_c = 2;
  for (local_18 = (uint)*(ushort *)(VP8LevelCodes + (param_1 + -1) * 4); local_18 != 0;
      local_18 = (int)local_18 >> 1) {
    if ((local_18 & 1) != 0) {
      iVar1 = FUN_007607f8(local_14 & 1,*(undefined1 *)(param_2 + local_c));
      local_10 = local_10 + iVar1;
    }
    local_14 = (int)local_14 >> 1;
    local_c = local_c + 1;
  }
  return local_10;
}

// ---- FUN_00760a18  @ 0x760a18
void FUN_00760a18(void)

{
  undefined1 uVar1;
  int iVar2;
  int local_4;
  
  if (DAT_0096b50c == 0) {
    for (local_4 = -0xff; local_4 < 0x100; local_4 = local_4 + 1) {
      iVar2 = local_4;
      if (local_4 < 0) {
        iVar2 = -local_4;
      }
      *(char *)(local_4 + 0x96a62b) = (char)iVar2;
      *(byte *)(local_4 + 0x96a82b) = *(byte *)(local_4 + 0x96a62b) >> 1;
    }
    for (local_4 = -0x3fc; local_4 < 0x3fd; local_4 = local_4 + 1) {
      if (local_4 < -0x80) {
        uVar1 = 0x80;
      }
      else {
        iVar2 = local_4;
        if (0x7e < local_4) {
          iVar2 = 0x7f;
        }
        uVar1 = (undefined1)iVar2;
      }
      *(undefined1 *)(local_4 + 0x96ad28) = uVar1;
    }
    for (local_4 = -0x70; local_4 < 0x71; local_4 = local_4 + 1) {
      if (local_4 < -0x10) {
        uVar1 = 0xf0;
      }
      else {
        iVar2 = local_4;
        if (0xe < local_4) {
          iVar2 = 0xf;
        }
        uVar1 = (undefined1)iVar2;
      }
      (&DAT_0096b198)[local_4] = uVar1;
    }
    for (local_4 = -0xff; local_4 < 0x1ff; local_4 = local_4 + 1) {
      if (local_4 < 0) {
        uVar1 = 0;
      }
      else {
        iVar2 = local_4;
        if (0xfe < local_4) {
          iVar2 = 0xff;
        }
        uVar1 = (undefined1)iVar2;
      }
      *(undefined1 *)(local_4 + 0x96b30b) = uVar1;
    }
    DAT_0096b50c = 1;
  }
  return;
}

// ---- FUN_00760b54  @ 0x760b54
void FUN_00760b54(byte *param_1,int param_2)

{
  byte bVar1;
  char cVar2;
  int iVar3;
  
  bVar1 = *param_1;
  iVar3 = ((uint)bVar1 - (uint)param_1[-param_2]) * 3 +
          (int)*(char *)(((uint)param_1[param_2 * -2] - (uint)param_1[param_2]) + 0x96ad28);
  cVar2 = (&DAT_0096b198)[iVar3 + 4 >> 3];
  param_1[-param_2] =
       *(byte *)((uint)param_1[-param_2] + (int)(char)(&DAT_0096b198)[iVar3 + 3 >> 3] + 0x96b30b);
  *param_1 = *(byte *)(((uint)bVar1 - (int)cVar2) + 0x96b30b);
  return;
}

// ---- FUN_00760c2c  @ 0x760c2c
void FUN_00760c2c(byte *param_1,int param_2)

{
  int iVar1;
  byte bVar2;
  byte bVar3;
  byte bVar4;
  char cVar5;
  char cVar6;
  
  bVar2 = param_1[-param_2];
  bVar3 = *param_1;
  bVar4 = param_1[param_2];
  iVar1 = ((uint)bVar3 - (uint)bVar2) * 3;
  cVar5 = (&DAT_0096b198)[iVar1 + 4 >> 3];
  cVar6 = (&DAT_0096b198)[iVar1 + 3 >> 3];
  iVar1 = cVar5 + 1 >> 1;
  param_1[param_2 * -2] = *(byte *)((uint)param_1[param_2 * -2] + iVar1 + 0x96b30b);
  param_1[-param_2] = *(byte *)((uint)bVar2 + (int)cVar6 + 0x96b30b);
  *param_1 = *(byte *)(((uint)bVar3 - (int)cVar5) + 0x96b30b);
  param_1[param_2] = *(byte *)(((uint)bVar4 - iVar1) + 0x96b30b);
  return;
}

// ---- FUN_00760d3c  @ 0x760d3c
undefined4 FUN_00760d3c(byte *param_1,int param_2,int param_3)

{
  undefined4 uVar1;
  
  if ((param_3 < (int)(uint)*(byte *)(((uint)param_1[param_2 * -2] - (uint)param_1[-param_2]) +
                                     0x96a62b)) ||
     (param_3 < (int)(uint)*(byte *)(((uint)param_1[param_2] - (uint)*param_1) + 0x96a62b))) {
    uVar1 = 1;
  }
  else {
    uVar1 = 0;
  }
  return uVar1;
}

// ---- FUN_00760dc0  @ 0x760dc0
bool FUN_00760dc0(byte *param_1,int param_2,int param_3)

{
  return (int)((uint)*(byte *)(((uint)param_1[-param_2] - (uint)*param_1) + 0x96a62b) * 2 +
              (uint)*(byte *)(((uint)param_1[param_2 * -2] - (uint)param_1[param_2]) + 0x96a82b)) <=
         param_3;
}

// ---- FUN_00760e3c  @ 0x760e3c
undefined4 FUN_00760e3c(byte *param_1,int param_2,int param_3,int param_4)

{
  uint uVar1;
  uint uVar2;
  undefined4 uVar3;
  
  uVar1 = (uint)param_1[param_2 * -2];
  uVar2 = (uint)param_1[param_2];
  if (param_3 < (int)((uint)*(byte *)(((uint)param_1[-param_2] - (uint)*param_1) + 0x96a62b) * 2 +
                     (uint)*(byte *)((uVar1 - uVar2) + 0x96a82b))) {
    uVar3 = 0;
  }
  else if ((((param_4 < (int)(uint)*(byte *)(((uint)param_1[param_2 * -4] -
                                             (uint)param_1[param_2 * -3]) + 0x96a62b)) ||
            (param_4 < (int)(uint)*(byte *)((param_1[param_2 * -3] - uVar1) + 0x96a62b))) ||
           (param_4 < (int)(uint)*(byte *)((uVar1 - param_1[-param_2]) + 0x96a62b))) ||
          (((param_4 < (int)(uint)*(byte *)(((uint)param_1[param_2 * 3] - (uint)param_1[param_2 * 2]
                                            ) + 0x96a62b) ||
            (param_4 < (int)(uint)*(byte *)((param_1[param_2 * 2] - uVar2) + 0x96a62b))) ||
           (param_4 < (int)(uint)*(byte *)((uVar2 - *param_1) + 0x96a62b))))) {
    uVar3 = 0;
  }
  else {
    uVar3 = 1;
  }
  return uVar3;
}

// ---- FUN_00760fb4  @ 0x760fb4
void FUN_00760fb4(int param_1,undefined4 param_2,undefined4 param_3)

{
  int iVar1;
  undefined4 local_c;
  
  for (local_c = 0; local_c < 0x10; local_c = local_c + 1) {
    iVar1 = FUN_00760dc0(param_1 + local_c,param_2,param_3);
    if (iVar1 != 0) {
      FUN_00760b54(param_1 + local_c,param_2);
    }
  }
  return;
}

// ---- FUN_00760ffc  @ 0x760ffc
void FUN_00760ffc(int param_1,int param_2,undefined4 param_3)

{
  int iVar1;
  undefined4 local_c;
  
  for (local_c = 0; local_c < 0x10; local_c = local_c + 1) {
    iVar1 = FUN_00760dc0(param_1 + param_2 * local_c,1,param_3);
    if (iVar1 != 0) {
      FUN_00760b54(param_1 + param_2 * local_c,1);
    }
  }
  return;
}

// ---- FUN_00761054  @ 0x761054
void FUN_00761054(int param_1,int param_2,undefined4 param_3)

{
  undefined4 local_14;
  undefined4 local_c;
  
  local_14 = param_1;
  for (local_c = 3; 0 < local_c; local_c = local_c + -1) {
    local_14 = local_14 + param_2 * 4;
    FUN_00760fb4(local_14,param_2,param_3);
  }
  return;
}

// ---- FUN_00761090  @ 0x761090
void FUN_00761090(int param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 local_14;
  undefined4 local_c;
  
  local_14 = param_1;
  for (local_c = 3; 0 < local_c; local_c = local_c + -1) {
    local_14 = local_14 + 4;
    FUN_00760ffc(local_14,param_2,param_3);
  }
  return;
}

// ---- FUN_007610c8  @ 0x7610c8
void FUN_007610c8(int param_1,undefined4 param_2,int param_3,int param_4,undefined4 param_5,
                 undefined4 param_6,undefined4 param_7)

{
  bool bVar1;
  int iVar2;
  undefined4 local_18;
  undefined4 local_c;
  
  local_18 = param_4;
  local_c = param_1;
  while (bVar1 = 0 < local_18, local_18 = local_18 + -1, bVar1) {
    iVar2 = FUN_00760e3c(local_c,param_2,param_5,param_6);
    if (iVar2 != 0) {
      iVar2 = FUN_00760d3c(local_c,param_2,param_7);
      if (iVar2 == 0) {
        FUN_00760c2c(local_c,param_2);
      }
      else {
        FUN_00760b54(local_c,param_2);
      }
    }
    local_c = local_c + param_3;
  }
  return;
}

// ---- FUN_00761130  @ 0x761130
void FUN_00761130(int param_1,int param_2,undefined4 param_3,undefined4 param_4,undefined4 param_5)

{
  undefined4 local_14;
  undefined4 local_c;
  
  local_14 = param_1;
  for (local_c = 3; 0 < local_c; local_c = local_c + -1) {
    local_14 = local_14 + param_2 * 4;
    FUN_007610c8(local_14,param_2,1,0x10,param_3,param_4,param_5);
  }
  return;
}

// ---- FUN_00761180  @ 0x761180
void FUN_00761180(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                 undefined4 param_5)

{
  undefined4 local_14;
  undefined4 local_c;
  
  local_14 = param_1;
  for (local_c = 3; 0 < local_c; local_c = local_c + -1) {
    local_14 = local_14 + 4;
    FUN_007610c8(local_14,1,param_2,0x10,param_3,param_4,param_5);
  }
  return;
}

// ---- FUN_007611cc  @ 0x7611cc
void FUN_007611cc(int param_1,int param_2,int param_3,undefined4 param_4,undefined4 param_5,
                 undefined4 param_6)

{
  FUN_007610c8(param_1 + param_3 * 4,param_3,1,8,param_4,param_5,param_6);
  FUN_007610c8(param_2 + param_3 * 4,param_3,1,8,param_4,param_5,param_6);
  return;
}

// ---- FUN_00761228  @ 0x761228
void FUN_00761228(int param_1,int param_2,undefined4 param_3,undefined4 param_4,undefined4 param_5,
                 undefined4 param_6)

{
  FUN_007610c8(param_1 + 4,1,param_3,8,param_4,param_5,param_6);
  FUN_007610c8(param_2 + 4,1,param_3,8,param_4,param_5,param_6);
  return;
}

// ---- FUN_0076127c  @ 0x76127c
int FUN_0076127c(int param_1,int param_2)

{
  undefined4 local_8;
  
  local_8 = param_2;
  if (0 < param_1) {
    if (param_1 < 5) {
      local_8 = param_2 >> 1;
    }
    else {
      local_8 = param_2 >> 2;
    }
    if (9 - param_1 < local_8) {
      local_8 = 9 - param_1;
    }
  }
  if (local_8 < 1) {
    local_8 = 1;
  }
  return local_8;
}

// ---- FUN_007612c8  @ 0x7612c8
void FUN_007612c8(int param_1,int param_2)

{
  int iVar1;
  undefined1 uVar2;
  int *piVar3;
  int iVar4;
  void *__dest;
  int iVar5;
  int iVar6;
  
  piVar3 = *(int **)(param_1 + 0x28);
  iVar1 = FUN_0076127c(*(undefined4 *)(*piVar3 + 0x24),param_2);
  iVar4 = param_2 * 2 + iVar1;
  __dest = *(void **)(param_1 + 0x20);
  iVar5 = *(int *)(param_1 + 0x20) + 0x100;
  iVar6 = *(int *)(param_1 + 0x20) + 0x108;
  memcpy(__dest,*(void **)(param_1 + 0x1c),0x180);
  if (piVar3[2] == 1) {
    (*VP8EncSimpleHFilter16i)(__dest,0x10,iVar4);
    (*VP8EncSimpleVFilter16i)(__dest,0x10,iVar4);
  }
  else {
    if (param_2 < 0x28) {
      uVar2 = 0xe < param_2;
    }
    else {
      uVar2 = 2;
    }
    (*VP8EncHFilter16i)(__dest,0x10,iVar4,iVar1,uVar2);
    (*VP8EncHFilter8i)(iVar5,iVar6,0x10,iVar4,iVar1,uVar2);
    (*VP8EncVFilter16i)(__dest,0x10,iVar4,iVar1,uVar2);
    (*VP8EncVFilter8i)(iVar5,iVar6,0x10,iVar4,iVar1,uVar2);
  }
  return;
}

// ---- FUN_00761480  @ 0x761480
void FUN_00761480(int param_1,int param_2,int param_3,int param_4,int param_5,int param_6,
                 int param_7,int param_8,double *param_9)

{
  int iVar1;
  int iVar2;
  uint uVar3;
  uint uVar4;
  uint in_fpscr;
  double dVar5;
  int local_2c;
  int local_24;
  uint local_20;
  uint local_1c;
  
  local_1c = param_6 - 3U & ~((int)(param_6 - 3U) >> 0x1f);
  iVar1 = param_8 + -1;
  if (param_6 + 3 < param_8 + -1) {
    iVar1 = param_6 + 3;
  }
  iVar2 = param_7 + -1;
  if (param_5 + 3 < param_7 + -1) {
    iVar2 = param_5 + 3;
  }
  local_24 = param_1 + param_2 * local_1c;
  local_2c = param_3 + param_4 * local_1c;
  for (; local_20 = param_5 - 3U & ~((int)(param_5 - 3U) >> 0x1f), (int)local_1c <= iVar1;
      local_1c = local_1c + 1) {
    for (; (int)local_20 <= iVar2; local_20 = local_20 + 1) {
      uVar3 = (uint)*(byte *)(local_24 + local_20);
      uVar4 = (uint)*(byte *)(local_2c + local_20);
      *param_9 = *param_9 + 1.0;
      dVar5 = (double)VectorSignedToFloat(uVar3,(byte)(in_fpscr >> 0x16) & 3);
      param_9[1] = param_9[1] + dVar5;
      dVar5 = (double)VectorSignedToFloat(uVar4,(byte)(in_fpscr >> 0x16) & 3);
      param_9[2] = param_9[2] + dVar5;
      dVar5 = (double)VectorSignedToFloat(uVar3 * uVar3,(byte)(in_fpscr >> 0x16) & 3);
      param_9[3] = param_9[3] + dVar5;
      dVar5 = (double)VectorSignedToFloat(uVar4 * uVar3,(byte)(in_fpscr >> 0x16) & 3);
      param_9[4] = param_9[4] + dVar5;
      dVar5 = (double)VectorSignedToFloat(uVar4 * uVar4,(byte)(in_fpscr >> 0x16) & 3);
      param_9[5] = param_9[5] + dVar5;
    }
    local_24 = local_24 + param_2;
    local_2c = local_2c + param_4;
  }
  return;
}

// ---- FUN_007618d8  @ 0x7618d8
undefined4 FUN_007618d8(int param_1,int param_2)

{
  undefined4 uVar1;
  int local_40;
  int local_3c;
  undefined4 local_38;
  undefined4 uStack_34;
  undefined4 local_30;
  undefined4 uStack_2c;
  undefined4 local_28;
  undefined4 uStack_24;
  undefined4 local_20;
  undefined4 uStack_1c;
  undefined4 local_18;
  undefined4 uStack_14;
  undefined4 local_10;
  undefined4 uStack_c;
  
  local_38 = 0;
  uStack_34 = 0;
  local_30 = 0;
  uStack_2c = 0;
  local_28 = 0;
  uStack_24 = 0;
  local_20 = 0;
  uStack_1c = 0;
  local_18 = 0;
  uStack_14 = 0;
  local_10 = 0;
  uStack_c = 0;
  for (local_40 = 3; local_40 < 0xd; local_40 = local_40 + 1) {
    for (local_3c = 3; local_3c < 0xd; local_3c = local_3c + 1) {
      FUN_00761480(param_1,0x10,param_2,0x10,local_40,local_3c,0x10,0x10,&local_38);
    }
  }
  for (local_40 = 1; local_40 < 7; local_40 = local_40 + 1) {
    for (local_3c = 1; local_3c < 7; local_3c = local_3c + 1) {
      FUN_00761480(param_1 + 0x100,0x10,param_2 + 0x100,0x10,local_40,local_3c,8,8,&local_38);
      FUN_00761480(param_1 + 0x108,0x10,param_2 + 0x108,0x10,local_40,local_3c,8,8,&local_38);
    }
  }
  uVar1 = VP8SSIMGet(&local_38);
  return uVar1;
}

// ---- FUN_00761cd0  @ 0x761cd0
int FUN_00761cd0(int param_1)

{
  if (param_1 < 0) {
    param_1 = -param_1;
  }
  return param_1;
}

// ---- FUN_00761ce4  @ 0x761ce4
undefined8 FUN_00761ce4(int param_1)

{
  uint uVar1;
  uint uVar2;
  uint uVar3;
  uint uVar4;
  
  uVar3 = *(int *)(param_1 + 0x14) + *(int *)(param_1 + 8);
  uVar1 = uVar3 + 1;
  uVar2 = uVar1 * 8;
  uVar4 = *(uint *)(param_1 + 0xc);
  return CONCAT44(((uint)(0xfffffffe < uVar3) << 3 | uVar1 >> 0x1d) +
                  ((int)uVar4 >> 0x1f) + (uint)CARRY4(uVar2,uVar4),uVar2 + uVar4);
}

// ---- FUN_00761d30  @ 0x761d30
undefined2 FUN_00761d30(int param_1,byte param_2)

{
  undefined2 uVar1;
  
  if (param_1 == 0) {
    uVar1 = *(undefined2 *)(VP8EntropyCost + (uint)param_2 * 2);
  }
  else {
    uVar1 = *(undefined2 *)(VP8EntropyCost + (0xff - (uint)param_2) * 2);
  }
  return uVar1;
}

// ---- FUN_00761d70  @ 0x761d70
int FUN_00761d70(int param_1,int param_2)

{
  int iVar1;
  
  iVar1 = param_2 * 2;
  if (0x42 < param_2) {
    param_2 = 0x43;
  }
  return (uint)*(ushort *)(VP8LevelFixedCosts + iVar1) + (uint)*(ushort *)(param_1 + param_2 * 2);
}

// ---- FUN_00761da8  @ 0x761da8
void FUN_00761da8(int param_1)

{
  VP8CalculateLevelCosts(param_1 + 0xa00);
  *(undefined4 *)(param_1 + 0x51ac) = 0;
  return;
}

// ---- FUN_00761dd0  @ 0x761dd0
undefined4 FUN_00761dd0(uint param_1,int param_2,uint param_3,int param_4)

{
  uint uVar1;
  undefined4 uVar2;
  int iVar3;
  
  if (param_3 == 0 && param_4 == 0) {
    uVar2 = 0xff;
  }
  else {
    uVar1 = param_3 - param_1;
    iVar3 = (param_4 - param_2) - (uint)(param_3 < param_1);
    uVar2 = __aeabi_uldivmod(uVar1 * 0xff,
                             ((iVar3 * 0x100 | uVar1 >> 0x18) - iVar3) -
                             (uint)(uVar1 * 0x100 < uVar1),param_3,param_4);
  }
  return uVar2;
}

// ---- FUN_00761e30  @ 0x761e30
int FUN_00761e30(int param_1)

{
  undefined1 uVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  int local_20;
  
  iVar4 = *(int *)(param_1 + 0x2c) * *(int *)(param_1 + 0x28);
  iVar5 = *(int *)(param_1 + 0x51ac);
  uVar1 = FUN_00761dd0(iVar5,iVar5 >> 0x1f,iVar4,iVar4 >> 0x1f);
  *(undefined1 *)(param_1 + 0xa03) = uVar1;
  *(uint *)(param_1 + 0x51a8) = (uint)(*(byte *)(param_1 + 0xa03) < 0xfa);
  local_20 = 0x100;
  if (*(int *)(param_1 + 0x51a8) != 0) {
    iVar2 = FUN_00761d30(1,*(undefined1 *)(param_1 + 0xa03));
    iVar3 = FUN_00761d30(0,*(undefined1 *)(param_1 + 0xa03));
    local_20 = iVar5 * iVar2 + iVar3 * (iVar4 - iVar5) + 0x900;
  }
  return local_20;
}

// ---- FUN_00761eec  @ 0x761eec
void FUN_00761eec(int param_1)

{
  memset((void *)(param_1 + 0xe24),0,0x1080);
  return;
}

// ---- FUN_00761f1c  @ 0x761f1c
int FUN_00761f1c(int param_1,uint *param_2)

{
  undefined4 local_4;
  
  local_4 = *param_2;
  if (0xfffeffff < local_4) {
    local_4 = local_4 + 1 >> 1 & 0x7fff7fff;
  }
  *param_2 = param_1 + local_4 + 0x10000;
  return param_1;
}

// ---- FUN_00761f5c  @ 0x761f5c
undefined4 FUN_00761f5c(int param_1,int *param_2)

{
  ushort uVar1;
  int iVar2;
  undefined4 uVar3;
  int iVar4;
  int local_24;
  int local_20;
  int local_1c;
  uint local_18;
  uint local_14;
  
  local_20 = param_2[5] + (uint)(byte)VP8EncBands[*param_2] * 0x84 + param_1 * 0x2c;
  local_24 = *param_2;
  if (param_2[1] < 0) {
    FUN_00761f1c(0,local_20);
    uVar3 = 0;
  }
  else {
    while (local_24 <= param_2[1]) {
      FUN_00761f1c(1,local_20);
      while( true ) {
        iVar4 = (int)*(short *)(param_2[2] + local_24 * 2);
        if (iVar4 != 0) break;
        FUN_00761f1c(0,local_20 + 4);
        local_20 = param_2[5] + (uint)(byte)VP8EncBands[local_24 + 1] * 0x84;
        local_24 = local_24 + 1;
      }
      FUN_00761f1c(1,local_20 + 4);
      iVar2 = FUN_00761f1c(2 < iVar4 + 1U,local_20 + 8);
      if (iVar2 == 0) {
        local_20 = param_2[5] + (uint)(byte)VP8EncBands[local_24 + 1] * 0x84 + 0x2c;
        local_24 = local_24 + 1;
      }
      else {
        local_1c = FUN_00761cd0(iVar4);
        if (0x43 < local_1c) {
          local_1c = 0x43;
        }
        uVar1 = *(ushort *)(VP8LevelCodes + (local_1c + -1) * 4 + 2);
        local_18 = (uint)*(ushort *)(VP8LevelCodes + (local_1c + -1) * 4);
        local_14 = 0;
        while (local_18 = (int)local_18 >> 1, local_18 != 0) {
          if ((local_18 & 1) != 0) {
            FUN_00761f1c((2 << (local_14 & 0xff) & (uint)uVar1) != 0,local_20 + (local_14 + 3) * 4);
          }
          local_14 = local_14 + 1;
        }
        local_20 = param_2[5] + (uint)(byte)VP8EncBands[local_24 + 1] * 0x84 + 0x58;
        local_24 = local_24 + 1;
      }
    }
    if (local_24 < 0x10) {
      FUN_00761f1c(0,local_20);
    }
    uVar3 = 1;
  }
  return uVar3;
}

// ---- FUN_0076216c  @ 0x76216c
int FUN_0076216c(int param_1,int param_2)

{
  int iVar1;
  
  if (param_2 < param_1) {
    __assert2("../libwebp/src/enc/frame.c",0xa8,"CalcTokenProba","nb <= total");
  }
  if (param_1 == 0) {
    iVar1 = 0xff;
  }
  else {
    iVar1 = __divsi3(param_1 * 0xff,param_2);
    iVar1 = 0xff - iVar1;
  }
  return iVar1;
}

// ---- FUN_007621cc  @ 0x7621cc
int FUN_007621cc(int param_1,int param_2,undefined1 param_3)

{
  int iVar1;
  int iVar2;
  
  iVar1 = FUN_00761d30(1,param_3);
  iVar2 = FUN_00761d30(0,param_3);
  return param_1 * iVar1 + iVar2 * (param_2 - param_1);
}

// ---- FUN_00762210  @ 0x762210
int FUN_00762210(int param_1)

{
  bool bVar1;
  undefined1 uVar2;
  byte bVar3;
  uint uVar4;
  int iVar5;
  int iVar6;
  int iVar7;
  int iVar8;
  int iVar9;
  uint uVar10;
  uint uVar11;
  uint local_50;
  int local_4c;
  int local_48;
  int local_44;
  int local_40;
  int local_3c;
  
  iVar9 = param_1 + 0xa00;
  local_50 = 0;
  local_4c = 0;
  for (local_48 = 0; local_48 < 4; local_48 = local_48 + 1) {
    for (local_44 = 0; local_44 < 8; local_44 = local_44 + 1) {
      for (local_40 = 0; local_40 < 3; local_40 = local_40 + 1) {
        for (local_3c = 0; local_3c < 0xb; local_3c = local_3c + 1) {
          uVar10 = *(uint *)(iVar9 + (local_40 * 0xb + local_44 * 0x21) * 4 + local_48 * 0x420 +
                                     local_3c * 4 + 0x424);
          uVar11 = uVar10 & 0xffff;
          uVar10 = uVar10 >> 0x10;
          uVar2 = VP8CoeffsUpdateProba
                  [local_3c + local_40 * 0xb + local_44 * 0x21 + local_48 * 0x108];
          bVar3 = VP8CoeffsProba0[local_3c + local_40 * 0xb + local_44 * 0x21 + local_48 * 0x108];
          uVar4 = FUN_0076216c(uVar11,uVar10);
          iVar5 = FUN_007621cc(uVar11,uVar10,(uint)bVar3);
          iVar6 = FUN_00761d30(0,uVar2);
          iVar7 = FUN_007621cc(uVar11,uVar10,uVar4);
          iVar8 = FUN_00761d30(1,uVar2);
          bVar1 = iVar7 + iVar8 + 0x800 < iVar5 + iVar6;
          iVar5 = FUN_00761d30(bVar1,uVar2);
          local_4c = local_4c + iVar5;
          if (bVar1) {
            *(char *)(iVar9 + local_40 * 0xb + local_44 * 0x21 + local_48 * 0x108 + local_3c + 4) =
                 (char)uVar4;
            local_50 = uVar4 != bVar3 | local_50;
            local_4c = local_4c + 0x800;
          }
          else {
            *(byte *)(iVar9 + local_40 * 0xb + local_44 * 0x21 + local_48 * 0x108 + local_3c + 4) =
                 bVar3;
          }
        }
      }
    }
  }
  *(uint *)(param_1 + 0x51a4) = local_50;
  return local_4c;
}

// ---- FUN_00762488  @ 0x762488
void FUN_00762488(undefined4 param_1,int param_2,int param_3,undefined4 *param_4)

{
  param_4[3] = param_2;
  param_4[4] = param_3 + 0xa04 + param_2 * 0x108;
  param_4[5] = param_3 + 0xe24 + param_2 * 0x420;
  param_4[6] = param_3 + 0x1ea4 + param_2 * 0xcc0;
  *param_4 = param_1;
  return;
}

// ---- FUN_007624f8  @ 0x7624f8
void FUN_007624f8(int param_1,int *param_2)

{
  int local_4;
  
  param_2[1] = -1;
  local_4 = 0xf;
  do {
    if (local_4 < *param_2) {
LAB_00762538:
      param_2[2] = param_1;
      return;
    }
    if (*(short *)(param_1 + local_4 * 2) != 0) {
      param_2[1] = local_4;
      goto LAB_00762538;
    }
    local_4 = local_4 + -1;
  } while( true );
}

// ---- FUN_00762544  @ 0x762544
int FUN_00762544(int param_1,int *param_2)

{
  undefined1 uVar1;
  int iVar2;
  undefined4 uVar3;
  int iVar4;
  uint uVar5;
  int local_20;
  ushort *local_18;
  int local_14;
  
  local_20 = *param_2;
  uVar1 = *(undefined1 *)(param_2[4] + (uint)(byte)VP8EncBands[local_20] * 0x21 + param_1 * 0xb);
  local_18 = (ushort *)(param_2[6] + (uint)(byte)VP8EncBands[local_20] * 0x198 + param_1 * 0x88);
  if (param_2[1] < 0) {
    local_14 = FUN_00761d30(0,uVar1);
  }
  else {
    local_14 = 0;
    while (local_20 <= param_2[1]) {
      iVar4 = (int)*(short *)(param_2[2] + local_20 * 2);
      uVar5 = (uint)(byte)VP8EncBands[local_20 + 1];
      local_20 = local_20 + 1;
      if (iVar4 == 0) {
        local_14 = local_14 + (uint)*local_18;
        local_18 = (ushort *)(param_2[6] + uVar5 * 0x198);
      }
      else {
        iVar2 = FUN_00761d30(1,uVar1);
        if (iVar4 + 1U < 3) {
          local_14 = local_14 + iVar2 + local_18[1] + 0x100;
          uVar1 = *(undefined1 *)(param_2[4] + uVar5 * 0x21 + 0xb);
          local_18 = (ushort *)(param_2[6] + uVar5 * 0x198 + 0x88);
        }
        else {
          uVar3 = FUN_00761cd0(iVar4);
          iVar4 = FUN_00761d70(local_18,uVar3);
          local_14 = local_14 + iVar2 + iVar4;
          uVar1 = *(undefined1 *)(param_2[4] + uVar5 * 0x21 + 0x16);
          local_18 = (ushort *)(param_2[6] + uVar5 * 0x198 + 0x110);
        }
      }
    }
    if (local_20 < 0x10) {
      iVar4 = FUN_00761d30(0,uVar1);
      local_14 = local_14 + iVar4;
    }
  }
  return local_14;
}

// ---- FUN_007629b4  @ 0x7629b4
undefined4 FUN_007629b4(undefined4 param_1,int param_2,int *param_3)

{
  undefined1 uVar1;
  int iVar2;
  int iVar3;
  undefined4 uVar4;
  int iVar5;
  int local_24;
  undefined1 *local_20;
  uint local_1c;
  uint local_18;
  undefined1 *local_14;
  
  local_24 = *param_3;
  local_20 = (undefined1 *)(param_3[4] + (uint)(byte)VP8EncBands[local_24] * 0x21 + param_2 * 0xb);
  iVar2 = VP8PutBit(param_1,(uint)~param_3[1] >> 0x1f,*local_20);
  if (iVar2 == 0) {
    uVar4 = 0;
  }
  else {
    do {
      while( true ) {
        if (0xf < local_24) {
          return 1;
        }
        local_1c = (uint)*(short *)(param_3[2] + local_24 * 2);
        iVar5 = local_24 + 1;
        iVar2 = (int)local_1c >> 0x1f;
        if (-iVar2 != 0) {
          local_1c = -local_1c;
        }
        iVar3 = VP8PutBit(param_1,local_1c != 0,local_20[1]);
        if (iVar3 != 0) break;
        local_20 = (undefined1 *)(param_3[4] + (uint)(byte)VP8EncBands[local_24 + 1] * 0x21);
        local_24 = iVar5;
      }
      iVar3 = VP8PutBit(param_1,1 < (int)local_1c,local_20[2]);
      if (iVar3 == 0) {
        local_20 = (undefined1 *)(param_3[4] + (uint)(byte)VP8EncBands[local_24 + 1] * 0x21 + 0xb);
      }
      else {
        iVar3 = VP8PutBit(param_1,4 < (int)local_1c,local_20[3]);
        if (iVar3 == 0) {
          iVar3 = VP8PutBit(param_1,local_1c != 2,local_20[4]);
          if (iVar3 != 0) {
            VP8PutBit(param_1,local_1c == 4,local_20[5]);
          }
        }
        else {
          iVar3 = VP8PutBit(param_1,10 < (int)local_1c,local_20[6]);
          if (iVar3 == 0) {
            iVar3 = VP8PutBit(param_1,6 < (int)local_1c,local_20[7]);
            if (iVar3 == 0) {
              VP8PutBit(param_1,local_1c == 6,0x9f);
            }
            else {
              VP8PutBit(param_1,8 < (int)local_1c,0xa5);
              VP8PutBit(param_1,(local_1c & 1) == 0,0x91);
            }
          }
          else {
            if ((int)local_1c < 0x13) {
              VP8PutBit(param_1,0,local_20[8]);
              VP8PutBit(param_1,0,local_20[9]);
              local_1c = local_1c - 0xb;
              local_18 = 4;
              local_14 = &DAT_008734ac;
            }
            else if ((int)local_1c < 0x23) {
              VP8PutBit(param_1,0,local_20[8]);
              VP8PutBit(param_1,1,local_20[9]);
              local_1c = local_1c - 0x13;
              local_18 = 8;
              local_14 = &DAT_008734b0;
            }
            else if ((int)local_1c < 0x43) {
              VP8PutBit(param_1,1,local_20[8]);
              VP8PutBit(param_1,0,local_20[10]);
              local_1c = local_1c - 0x23;
              local_18 = 0x10;
              local_14 = &DAT_008734b4;
            }
            else {
              VP8PutBit(param_1,1,local_20[8]);
              VP8PutBit(param_1,1,local_20[10]);
              local_1c = local_1c - 0x43;
              local_18 = 0x400;
              local_14 = &DAT_008734bc;
            }
            for (; local_18 != 0; local_18 = (int)local_18 >> 1) {
              uVar1 = *local_14;
              local_14 = local_14 + 1;
              VP8PutBit(param_1,(local_18 & local_1c) != 0,uVar1);
            }
          }
        }
        local_20 = (undefined1 *)(param_3[4] + (uint)(byte)VP8EncBands[local_24 + 1] * 0x21 + 0x16);
      }
      VP8PutBitUniform(param_1,-iVar2);
    } while ((iVar5 != 0x10) &&
            (iVar2 = VP8PutBit(param_1,iVar5 <= param_3[1],*local_20), local_24 = iVar5, iVar2 != 0)
            );
    uVar4 = 1;
  }
  return uVar4;
}

// ---- FUN_00762d90  @ 0x762d90
void FUN_00762d90(undefined4 param_1,int param_2,int param_3)

{
  undefined4 uVar1;
  uint uVar2;
  uint uVar3;
  uint uVar4;
  uint uVar5;
  uint uVar6;
  undefined4 uVar7;
  uint *puVar8;
  int iVar9;
  int *piVar10;
  int iVar11;
  int iVar12;
  longlong lVar13;
  longlong lVar14;
  longlong lVar15;
  int local_68;
  int local_64;
  int local_60;
  undefined1 auStack_2c [32];
  
  uVar3 = (uint)((**(byte **)(param_2 + 0x2c) & 3) == 1);
  uVar6 = (**(uint **)(param_2 + 0x2c) & 0x7f) >> 5;
  uVar7 = *(undefined4 *)(param_2 + 0x28);
  VP8IteratorNzToBytes(param_2);
  lVar13 = FUN_00761ce4(param_1);
  if (uVar3 == 0) {
    FUN_00762488(0,3,uVar7,auStack_2c);
  }
  else {
    FUN_00762488(0,1,uVar7,auStack_2c);
    FUN_007624f8(param_3 + 0x20,auStack_2c);
    uVar1 = FUN_007629b4(param_1,*(int *)(param_2 + 0x8c) + *(int *)(param_2 + 0xb0),auStack_2c);
    *(undefined4 *)(param_2 + 0xb0) = uVar1;
    *(undefined4 *)(param_2 + 0x8c) = *(undefined4 *)(param_2 + 0xb0);
    FUN_00762488(1,0,uVar7,auStack_2c);
  }
  for (local_64 = 0; local_64 < 4; local_64 = local_64 + 1) {
    for (local_68 = 0; local_68 < 4; local_68 = local_68 + 1) {
      iVar9 = *(int *)(param_2 + (local_68 + 0x1a) * 4 + 4);
      iVar11 = *(int *)(param_2 + (local_64 + 0x24) * 4);
      FUN_007624f8(param_3 + 0x40 + (local_64 * 4 + local_68) * 0x20,auStack_2c);
      uVar1 = FUN_007629b4(param_1,iVar9 + iVar11,auStack_2c);
      *(undefined4 *)(param_2 + (local_64 + 0x24) * 4) = uVar1;
      *(undefined4 *)(param_2 + (local_68 + 0x1a) * 4 + 4) =
           *(undefined4 *)(param_2 + (local_64 + 0x24) * 4);
    }
  }
  lVar14 = FUN_00761ce4(param_1);
  FUN_00762488(0,2,uVar7,auStack_2c);
  for (local_60 = 0; local_60 < 3; local_60 = local_60 + 2) {
    for (local_64 = 0; local_64 < 2; local_64 = local_64 + 1) {
      for (local_68 = 0; local_68 < 2; local_68 = local_68 + 1) {
        iVar9 = *(int *)(param_2 + (local_60 + local_68 + 0x1e) * 4 + 4);
        iVar11 = *(int *)(param_2 + (local_60 + local_64 + 0x28) * 4);
        FUN_007624f8(param_3 + 0x240 + ((local_60 + local_64) * 2 + local_68) * 0x20,auStack_2c);
        iVar12 = local_60 + 4 + local_64;
        uVar7 = FUN_007629b4(param_1,iVar9 + iVar11,auStack_2c);
        *(undefined4 *)(param_2 + (iVar12 + 0x24) * 4) = uVar7;
        *(undefined4 *)(param_2 + (local_60 + local_68 + 0x1e) * 4 + 4) =
             *(undefined4 *)(param_2 + (iVar12 + 0x24) * 4);
      }
    }
  }
  lVar15 = FUN_00761ce4(param_1);
  *(longlong *)(param_2 + 0x118) = lVar14 - lVar13;
  *(longlong *)(param_2 + 0x120) = lVar15 - lVar14;
  puVar8 = (uint *)(param_2 + (uVar6 * 3 + uVar3 + 0x17) * 8);
  uVar2 = *puVar8;
  uVar4 = puVar8[1];
  uVar5 = *(uint *)(param_2 + 0x118);
  iVar9 = *(int *)(param_2 + 0x11c);
  piVar10 = (int *)(param_2 + (uVar6 * 3 + uVar3 + 0x17) * 8);
  *piVar10 = uVar2 + uVar5;
  piVar10[1] = uVar4 + iVar9 + (uint)CARRY4(uVar2,uVar5);
  iVar9 = param_2 + uVar6 * 0x18;
  uVar3 = *(uint *)(iVar9 + 200);
  iVar9 = *(int *)(iVar9 + 0xcc);
  uVar2 = *(uint *)(param_2 + 0x120);
  iVar11 = *(int *)(param_2 + 0x124);
  iVar12 = param_2 + uVar6 * 0x18;
  *(uint *)(iVar12 + 200) = uVar3 + uVar2;
  *(uint *)(iVar12 + 0xcc) = iVar9 + iVar11 + (uint)CARRY4(uVar3,uVar2);
  VP8IteratorBytesToNz(param_2);
  return;
}

// ---- FUN_007630c0  @ 0x7630c0
void FUN_007630c0(int param_1,int param_2)

{
  undefined4 uVar1;
  int iVar2;
  undefined4 uVar3;
  int iVar4;
  int iVar5;
  int local_44;
  int local_40;
  int local_3c;
  undefined1 auStack_2c [32];
  
  uVar3 = *(undefined4 *)(param_1 + 0x28);
  VP8IteratorNzToBytes(param_1);
  if ((**(byte **)(param_1 + 0x2c) & 3) == 1) {
    FUN_00762488(0,1,uVar3,auStack_2c);
    FUN_007624f8(param_2 + 0x20,auStack_2c);
    uVar1 = FUN_00761f5c(*(int *)(param_1 + 0x8c) + *(int *)(param_1 + 0xb0),auStack_2c);
    *(undefined4 *)(param_1 + 0xb0) = uVar1;
    *(undefined4 *)(param_1 + 0x8c) = *(undefined4 *)(param_1 + 0xb0);
    FUN_00762488(1,0,uVar3,auStack_2c);
  }
  else {
    FUN_00762488(0,3,uVar3,auStack_2c);
  }
  for (local_40 = 0; local_40 < 4; local_40 = local_40 + 1) {
    for (local_44 = 0; local_44 < 4; local_44 = local_44 + 1) {
      iVar2 = *(int *)(param_1 + (local_44 + 0x1a) * 4 + 4);
      iVar4 = *(int *)(param_1 + (local_40 + 0x24) * 4);
      FUN_007624f8(param_2 + 0x40 + (local_40 * 4 + local_44) * 0x20,auStack_2c);
      uVar1 = FUN_00761f5c(iVar2 + iVar4,auStack_2c);
      *(undefined4 *)(param_1 + (local_40 + 0x24) * 4) = uVar1;
      *(undefined4 *)(param_1 + (local_44 + 0x1a) * 4 + 4) =
           *(undefined4 *)(param_1 + (local_40 + 0x24) * 4);
    }
  }
  FUN_00762488(0,2,uVar3,auStack_2c);
  for (local_3c = 0; local_3c < 3; local_3c = local_3c + 2) {
    for (local_40 = 0; local_40 < 2; local_40 = local_40 + 1) {
      for (local_44 = 0; local_44 < 2; local_44 = local_44 + 1) {
        iVar2 = *(int *)(param_1 + (local_3c + local_44 + 0x1e) * 4 + 4);
        iVar4 = *(int *)(param_1 + (local_3c + local_40 + 0x28) * 4);
        FUN_007624f8(param_2 + 0x240 + ((local_3c + local_40) * 2 + local_44) * 0x20,auStack_2c);
        iVar5 = local_3c + 4 + local_40;
        uVar3 = FUN_00761f5c(iVar2 + iVar4,auStack_2c);
        *(undefined4 *)(param_1 + (iVar5 + 0x24) * 4) = uVar3;
        *(undefined4 *)(param_1 + (local_3c + local_44 + 0x1e) * 4 + 4) =
             *(undefined4 *)(param_1 + (iVar5 + 0x24) * 4);
      }
    }
  }
  VP8IteratorBytesToNz(param_1);
  return;
}

// ---- FUN_007632e4  @ 0x7632e4
void FUN_007632e4(int param_1)

{
  memset((void *)(param_1 + 0x51b0),0,0x20);
  *(undefined4 *)(param_1 + 0x51d0) = 0;
  *(undefined4 *)(param_1 + 0x51d4) = 0;
  return;
}

// ---- FUN_00763320  @ 0x763320
void FUN_00763320(int param_1)

{
  uint uVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  uint uVar5;
  int iVar6;
  
  iVar2 = *(int *)(param_1 + 0x28);
  iVar3 = *(int *)(param_1 + 0x18);
  iVar4 = *(int *)(param_1 + 0x1c);
  uVar5 = *(uint *)(iVar2 + 0x51b0);
  iVar6 = *(int *)(iVar2 + 0x51b4);
  uVar1 = (*VP8SSE16x16)(iVar3,iVar4);
  *(uint *)(iVar2 + 0x51b0) = uVar5 + uVar1;
  *(uint *)(iVar2 + 0x51b4) = iVar6 + ((int)uVar1 >> 0x1f) + (uint)CARRY4(uVar5,uVar1);
  uVar5 = *(uint *)(iVar2 + 0x51b8);
  iVar6 = *(int *)(iVar2 + 0x51bc);
  uVar1 = (*VP8SSE8x8)(iVar3 + 0x100,iVar4 + 0x100);
  *(uint *)(iVar2 + 0x51b8) = uVar5 + uVar1;
  *(uint *)(iVar2 + 0x51bc) = iVar6 + ((int)uVar1 >> 0x1f) + (uint)CARRY4(uVar5,uVar1);
  uVar5 = *(uint *)(iVar2 + 0x51c0);
  iVar6 = *(int *)(iVar2 + 0x51c4);
  uVar1 = (*VP8SSE8x8)(iVar3 + 0x108,iVar4 + 0x108);
  *(uint *)(iVar2 + 0x51c0) = uVar5 + uVar1;
  *(uint *)(iVar2 + 0x51c4) = iVar6 + ((int)uVar1 >> 0x1f) + (uint)CARRY4(uVar5,uVar1);
  uVar1 = *(uint *)(iVar2 + 0x51d0);
  *(uint *)(iVar2 + 0x51d0) = uVar1 + 0x100;
  *(uint *)(iVar2 + 0x51d4) = *(int *)(iVar2 + 0x51d4) + (uint)(0xfffffeff < uVar1);
  return;
}

// ---- FUN_0076343c  @ 0x76343c
void FUN_0076343c(int *param_1)

{
  uint uVar1;
  byte bVar2;
  int iVar3;
  uint *puVar4;
  int iVar5;
  byte *pbVar6;
  
  iVar3 = param_1[10];
  puVar4 = (uint *)param_1[0xb];
  iVar5 = *(int *)(iVar3 + 4);
  if (*(int *)(iVar5 + 0x58) != 0) {
    FUN_00763320(param_1);
    *(uint *)(iVar3 + 0x520c) = *(int *)(iVar3 + 0x520c) + (uint)((*puVar4 & 3) == 0);
    *(uint *)(iVar3 + 0x5210) = *(int *)(iVar3 + 0x5210) + (uint)((*puVar4 & 3) == 1);
    *(uint *)(iVar3 + 0x5214) = *(int *)(iVar3 + 0x5214) + (uint)((*puVar4 & 0x10) != 0);
  }
  if (*(int *)(iVar5 + 0x54) != 0) {
    pbVar6 = (byte *)(*(int *)(iVar5 + 0x54) + *param_1 + *(int *)(iVar3 + 0x28) * param_1[1]);
    switch(*(undefined4 *)(iVar5 + 0x50)) {
    case 1:
      *pbVar6 = (byte)((*puVar4 << 0x1e) >> 0x1e);
      break;
    case 2:
      *pbVar6 = (byte)((*puVar4 << 0x19) >> 0x1e);
      break;
    case 3:
      *pbVar6 = (byte)*(undefined4 *)(iVar3 + ((*puVar4 & 0x7f) >> 5) * 0x214 + 0x37c);
      break;
    case 4:
      if ((*puVar4 & 3) == 1) {
        bVar2 = *(byte *)param_1[0xd];
      }
      else {
        bVar2 = 0xff;
      }
      *pbVar6 = bVar2;
      break;
    case 5:
      *pbVar6 = (byte)((*puVar4 << 0x1c) >> 0x1e);
      break;
    case 6:
      uVar1 = param_1[0x46] + param_1[0x48];
      uVar1 = uVar1 + 7 >> 3 |
              (param_1[0x47] + param_1[0x49] + (uint)CARRY4(param_1[0x46],param_1[0x48]) +
              (uint)(0xfffffff8 < uVar1)) * 0x20000000;
      if (0xfe < (int)uVar1) {
        uVar1 = 0xff;
      }
      *pbVar6 = (byte)uVar1;
      break;
    default:
      *pbVar6 = 0;
    }
  }
  return;
}

// ---- FUN_0076360c  @ 0x76360c
void FUN_0076360c(int param_1)

{
  if ((**(byte **)(param_1 + 0x2c) & 3) == 1) {
    **(undefined4 **)(param_1 + 0x38) = 0;
    *(undefined4 *)(param_1 + 0xb0) = 0;
  }
  else {
    **(uint **)(param_1 + 0x38) = **(uint **)(param_1 + 0x38) & 0x1000000;
  }
  return;
}

// ---- FUN_007639a0  @ 0x7639a0
void FUN_007639a0(int param_1,float param_2,undefined4 param_3,int param_4,float *param_5,
                 int param_6)

{
  int iVar1;
  uint uVar2;
  uint uVar3;
  undefined4 extraout_r0;
  uint uVar4;
  undefined4 extraout_r1;
  uint uVar5;
  uint uVar6;
  bool bVar7;
  undefined4 uVar8;
  undefined4 extraout_s1;
  int local_4e8;
  float local_4e0;
  uint local_4d8;
  int iStack_4d4;
  uint local_4d0;
  int iStack_4cc;
  undefined1 auStack_4c0 [28];
  undefined4 local_4a4;
  uint local_388;
  int iStack_384;
  uint local_378;
  int iStack_374;
  int local_24;
  
  local_24 = __stack_chk_guard;
  local_4d8 = 0;
  iStack_4d4 = 0;
  local_4d0 = 0;
  iStack_4cc = 0;
  if ((int)((uint)(param_2 < 0.0) << 0x1f) < 0) {
    local_4e0 = 0.0;
  }
  else {
    local_4e0 = param_2;
    if (100.0 < param_2) {
      local_4e0 = 100.0;
    }
  }
  VP8SetSegmentParams(param_1,local_4e0);
  FUN_00761da8(param_1);
  FUN_00761eec(param_1);
  VP8IteratorInit(param_1,auStack_4c0);
  local_4e8 = param_4;
  while( true ) {
    VP8IteratorImport(auStack_4c0);
    iVar1 = VP8Decimate(auStack_4c0,&local_388,param_3);
    if (iVar1 != 0) {
      *(int *)(param_1 + 0x51ac) = *(int *)(param_1 + 0x51ac) + 1;
    }
    FUN_007630c0(auStack_4c0,&local_388);
    bVar7 = CARRY4(local_4d8,local_378);
    local_4d8 = local_4d8 + local_378;
    iStack_4d4 = iStack_4d4 + iStack_374 + (uint)bVar7;
    bVar7 = CARRY4(local_4d0,local_388);
    local_4d0 = local_4d0 + local_388;
    iStack_4cc = iStack_4cc + iStack_384 + (uint)bVar7;
    if ((param_6 != 0) && (iVar1 = VP8IteratorProgress(auStack_4c0,param_6), iVar1 == 0)) break;
    iVar1 = VP8IteratorNext(auStack_4c0,local_4a4);
    if ((iVar1 == 0) || (local_4e8 = local_4e8 + -1, local_4e8 < 1)) {
      uVar2 = FUN_00761e30(param_1);
      uVar3 = FUN_00762210(param_1);
      uVar5 = uVar3 + uVar2 + local_4d8;
      uVar4 = *(uint *)(param_1 + 0x20);
      uVar6 = uVar4 + uVar5;
      iVar1 = (uVar6 + 0x400 >> 0xb |
              (((int)uVar4 >> 0x1f) +
               ((int)uVar3 >> 0x1f) +
               ((int)uVar2 >> 0x1f) + iStack_4d4 + (uint)CARRY4(uVar2,local_4d8) +
               (uint)CARRY4(uVar3,uVar2 + local_4d8) + (uint)CARRY4(uVar4,uVar5) +
              (uint)(0xfffffbff < uVar6)) * 0x200000) + 0x2d;
      if (param_5 != (float *)0x0) {
        __floatundidf(param_4 * 0x180,param_4 * 0x180 >> 0x1f);
        uVar8 = __floatundidf(local_4d0,iStack_4cc);
        log10((double)CONCAT44(extraout_s1,uVar8));
        *param_5 = (float)((double)CONCAT44(extraout_r1,extraout_r0) * 10.0);
      }
LAB_00763c58:
      if (local_24 == __stack_chk_guard) {
        return;
      }
                    /* WARNING: Subroutine does not return */
      __stack_chk_fail(iVar1);
    }
  }
  iVar1 = 0;
  goto LAB_00763c58;
}

// ---- FUN_00763ea0  @ 0x763ea0
uint FUN_00763ea0(int param_1)

{
  uint uVar1;
  
  if (param_1 == 0) {
    uVar1 = 0xffffffff;
  }
  else {
    uVar1 = LZCOUNT(param_1) ^ 0x1f;
  }
  return uVar1;
}

// ---- FUN_00763ec0  @ 0x763ec0
void FUN_00763ec0(int param_1,int *param_2,uint *param_3,uint *param_4)

{
  int iVar1;
  uint uVar2;
  uint uVar3;
  
  uVar2 = param_1 - 1;
  iVar1 = FUN_00763ea0(uVar2);
  if (iVar1 < 1) {
    uVar3 = 0;
  }
  else {
    uVar3 = iVar1 - 1;
  }
  *param_3 = uVar3;
  *param_4 = (1 << (*param_3 & 0xff)) - 1U & uVar2;
  if (iVar1 < 1) {
    if (iVar1 == 0) {
      iVar1 = 1;
    }
    else {
      iVar1 = 0;
    }
  }
  else {
    iVar1 = iVar1 * 2 + ((int)uVar2 >> (iVar1 - 1U & 0x3f) & 1U);
  }
  *param_2 = iVar1;
  return;
}

// ---- FUN_00763f48  @ 0x763f48
bool FUN_00763f48(char *param_1)

{
  return *param_1 == '\0';
}

// ---- FUN_00763f60  @ 0x763f60
bool FUN_00763f60(char *param_1)

{
  return *param_1 == '\x01';
}

// ---- FUN_00763f78  @ 0x763f78
uint FUN_00763f78(char *param_1,uint param_2)

{
  if (*param_1 != '\0') {
    __assert2("../libwebp/src/enc/./backward_references.h",0x97,"PixOrCopyLiteral",
              "p->mode == kLiteral");
  }
  return *(uint *)(param_1 + 4) >> ((param_2 & 0x1f) << 3) & 0xff;
}

// ---- FUN_00763fc4  @ 0x763fc4
undefined2 FUN_00763fc4(int param_1)

{
  return *(undefined2 *)(param_1 + 2);
}

// ---- FUN_00763fd4  @ 0x763fd4
undefined4 FUN_00763fd4(char *param_1)

{
  if (*param_1 != '\x01') {
    __assert2("../libwebp/src/enc/./backward_references.h",0xa5,"PixOrCopyCacheIdx",
              "p->mode == kCacheIdx");
  }
  if (0x1ff < *(uint *)(param_1 + 4)) {
    __assert2("../libwebp/src/enc/./backward_references.h",0xa6,"PixOrCopyCacheIdx",
              "p->argb_or_distance < (1U << MAX_COLOR_CACHE_BITS)");
  }
  return *(undefined4 *)(param_1 + 4);
}

// ---- FUN_00764040  @ 0x764040
undefined4 FUN_00764040(char *param_1)

{
  if (*param_1 != '\x02') {
    __assert2("../libwebp/src/enc/./backward_references.h",0xab,"PixOrCopyDistance",
              "p->mode == kCopy");
  }
  return *(undefined4 *)(param_1 + 4);
}

// ---- FUN_0076407c  @ 0x76407c
void FUN_0076407c(int param_1,int param_2)

{
  undefined4 local_4;
  
  for (local_4 = 0; local_4 < 0x318; local_4 = local_4 + 1) {
    *(int *)(param_1 + local_4 * 4) =
         *(int *)(param_1 + local_4 * 4) + *(int *)(param_2 + local_4 * 4);
  }
  for (local_4 = 0; local_4 < 0x28; local_4 = local_4 + 1) {
    *(int *)(param_1 + (local_4 + 0x618) * 4) =
         *(int *)(param_1 + (local_4 + 0x618) * 4) + *(int *)(param_2 + (local_4 + 0x618) * 4);
  }
  for (local_4 = 0; local_4 < 0x100; local_4 = local_4 + 1) {
    *(int *)(param_1 + (local_4 + 0x318) * 4) =
         *(int *)(param_1 + (local_4 + 0x318) * 4) + *(int *)(param_2 + (local_4 + 0x318) * 4);
    *(int *)(param_1 + (local_4 + 0x418) * 4) =
         *(int *)(param_1 + (local_4 + 0x418) * 4) + *(int *)(param_2 + (local_4 + 0x418) * 4);
    *(int *)(param_1 + (local_4 + 0x518) * 4) =
         *(int *)(param_1 + (local_4 + 0x518) * 4) + *(int *)(param_2 + (local_4 + 0x518) * 4);
  }
  return;
}

// ---- FUN_00764180  @ 0x764180
int FUN_00764180(int param_1)

{
  int iVar1;
  
  if (*(int *)(param_1 + 0x1900) < 1) {
    iVar1 = 0x118;
  }
  else {
    iVar1 = (1 << (*(uint *)(param_1 + 0x1900) & 0xff)) + 0x118;
  }
  return iVar1;
}

// ---- FUN_007641b0  @ 0x7641b0
uint FUN_007641b0(int param_1,uint param_2)

{
  return ((1 << (param_2 & 0xff)) + param_1) - 1U >> (param_2 & 0xff);
}

// ---- FUN_007641d8  @ 0x7641d8
float FUN_007641d8(undefined4 param_1)

{
  float fVar1;
  uint in_fpscr;
  float fVar2;
  
  fVar1 = (float)VP8LFastLog2(param_1);
  fVar2 = (float)VectorSignedToFloat(param_1,(byte)(in_fpscr >> 0x16) & 3);
  return fVar1 * fVar2;
}

// ---- FUN_00764200  @ 0x764200
void FUN_00764200(void *param_1)

{
  memset(param_1,0,0xc60);
  memset((void *)((int)param_1 + 0xc60),0,0x400);
  memset((void *)((int)param_1 + 0x1060),0,0x400);
  memset((void *)((int)param_1 + 0x1460),0,0x400);
  memset((void *)((int)param_1 + 0x1860),0,0xa0);
  *(undefined4 *)((int)param_1 + 0x1908) = 0;
  *(undefined4 *)((int)param_1 + 0x190c) = 0;
  return;
}

// ---- FUN_00764530  @ 0x764530
double FUN_00764530(int param_1,int param_2)

{
  uint in_fpscr;
  float fVar1;
  double dVar2;
  int local_30;
  int local_2c;
  int local_28;
  int local_24;
  double local_20;
  undefined4 local_18;
  undefined4 uStack_14;
  
  local_20 = 0.0;
  local_30 = 0;
  local_2c = 0;
  local_28 = 0;
  for (local_24 = 0; local_24 < param_2; local_24 = local_24 + 1) {
    if (*(int *)(param_1 + local_24 * 4) != 0) {
      local_30 = local_30 + *(int *)(param_1 + local_24 * 4);
      local_2c = local_2c + 1;
      fVar1 = (float)FUN_007641d8(*(undefined4 *)(param_1 + local_24 * 4));
      local_20 = local_20 - (double)fVar1;
      if (local_28 < *(int *)(param_1 + local_24 * 4)) {
        local_28 = *(int *)(param_1 + local_24 * 4);
      }
    }
  }
  fVar1 = (float)FUN_007641d8(local_30);
  local_20 = local_20 + (double)fVar1;
  if (local_2c < 5) {
    if (local_2c < 2) {
      return 0.0;
    }
    if (local_2c == 2) {
      dVar2 = (double)VectorSignedToFloat(local_30,(byte)(in_fpscr >> 0x16) & 3);
      return dVar2 * 0.99 + local_20 * 0.01;
    }
    if (local_2c == 3) {
      local_18 = 0x66666666;
      uStack_14 = 0x3fee6666;
    }
    else {
      local_18 = 0x66666666;
      uStack_14 = 0x3fe66666;
    }
  }
  else {
    local_18 = 0x4dd2f1aa;
    uStack_14 = 0x3fe41062;
  }
  dVar2 = (double)VectorSignedToFloat(local_30 * 2 - local_28,(byte)(in_fpscr >> 0x16) & 3);
  dVar2 = (double)CONCAT44(uStack_14,local_18) * dVar2 +
          (1.0 - (double)CONCAT44(uStack_14,local_18)) * local_20;
  if (dVar2 <= local_20) {
    dVar2 = local_20;
  }
  return dVar2;
}

// ---- FUN_00764810  @ 0x764810
double FUN_00764810(int param_1,int param_2)

{
  int iVar1;
  uint in_fpscr;
  double dVar2;
  undefined4 local_10;
  undefined4 local_c;
  undefined8 local_8;
  
  local_8 = (double)VectorSignedToFloat(0x39,(byte)(in_fpscr >> 0x16) & 3);
  local_8 = local_8 - (double)0x4022333333333333;
  local_10 = 0;
  local_c = 0;
  do {
    if (local_c < param_2 + -1) {
      iVar1 = local_10 + 1;
      if (*(int *)(param_1 + local_c * 4) != *(int *)(param_1 + (local_c + 1) * 4))
      goto LAB_0076486a;
    }
    else {
      if (param_2 + -1 != local_c) {
        return local_8;
      }
LAB_0076486a:
      local_10 = local_10 + 1;
      if (local_10 < 4) {
        if (*(int *)(param_1 + local_c * 4) == 0) {
          dVar2 = (double)VectorSignedToFloat(local_10,(byte)(in_fpscr >> 0x16) & 3);
          local_8 = local_8 + dVar2 * 1.796875;
        }
        else {
          dVar2 = (double)VectorSignedToFloat(local_10,(byte)(in_fpscr >> 0x16) & 3);
          local_8 = local_8 + dVar2 * 3.28125;
        }
      }
      else if (*(int *)(param_1 + local_c * 4) == 0) {
        dVar2 = (double)VectorSignedToFloat(local_10,(byte)(in_fpscr >> 0x16) & 3);
        local_8 = dVar2 * 0.234375 + local_8 + 1.5625;
      }
      else {
        dVar2 = (double)VectorSignedToFloat(local_10,(byte)(in_fpscr >> 0x16) & 3);
        local_8 = dVar2 * 0.703125 + local_8 + 2.578125;
      }
      local_10 = 0;
      iVar1 = local_10;
    }
    local_10 = iVar1;
    local_c = local_c + 1;
  } while( true );
}

// ---- FUN_00764998  @ 0x764998
double FUN_00764998(int param_1)

{
  undefined4 uVar1;
  double dVar2;
  double dVar3;
  double dVar4;
  double dVar5;
  double dVar6;
  
  dVar6 = (double)FUN_00764810(param_1 + 0x1460,0x100);
  dVar2 = (double)FUN_00764810(param_1 + 0xc60,0x100);
  uVar1 = FUN_00764180(param_1);
  dVar3 = (double)FUN_00764810(param_1,uVar1);
  dVar4 = (double)FUN_00764810(param_1 + 0x1060,0x100);
  dVar5 = (double)FUN_00764810(param_1 + 0x1860,0x28);
  return dVar6 + dVar2 + dVar3 + dVar4 + dVar5;
}

// ---- FUN_00764a5c  @ 0x764a5c
void FUN_00764a5c(int param_1,uint param_2,int *param_3,int param_4)

{
  int iVar1;
  int iVar2;
  int iVar3;
  int local_24;
  int local_20;
  int local_1c;
  
  local_20 = 0;
  local_1c = 0;
  iVar1 = FUN_007641b0(param_1,param_2);
  iVar2 = *(int *)(param_4 + 8);
  if ((int)param_2 < 1) {
    __assert2("../libwebp/src/enc/histogram.c",0xe6,"HistogramBuildImage","histo_bits > 0");
  }
  for (local_24 = 0; local_24 < param_3[1]; local_24 = local_24 + 1) {
    iVar3 = *param_3 + local_24 * 8;
    VP8LHistogramAddSinglePixOrCopy
              (*(undefined4 *)
                (iVar2 + (iVar1 * (local_1c >> (param_2 & 0xff)) + (local_20 >> (param_2 & 0xff))) *
                         4),iVar3);
    iVar3 = FUN_00763fc4(iVar3);
    for (local_20 = iVar3 + local_20; param_1 <= local_20; local_20 = local_20 - param_1) {
      local_1c = local_1c + 1;
    }
  }
  return;
}

// ---- FUN_00764b38  @ 0x764b38
int FUN_00764b38(int *param_1)

{
  *param_1 = *param_1 * 0x41a7;
  if (*param_1 == 0) {
    *param_1 = 1;
  }
  return *param_1;
}

// ---- FUN_00764b68  @ 0x764b68
undefined4 FUN_00764b68(int *param_1,int *param_2,int param_3)

{
  void *pvVar1;
  undefined4 uVar2;
  int extraout_r1;
  uint extraout_r1_00;
  uint extraout_r1_01;
  int extraout_r1_02;
  uint uVar3;
  int iVar4;
  undefined8 uVar5;
  int local_64;
  undefined4 local_60;
  int local_5c;
  int local_58;
  int local_54;
  int local_50;
  void *local_4c;
  void *local_48;
  int local_44;
  int local_40;
  uint local_3c;
  int local_38;
  int local_34;
  void *local_30;
  int local_2c;
  uint local_28;
  uint local_24;
  int local_20;
  void *local_1c;
  undefined8 local_18;
  double local_10;
  
  local_60 = 0;
  local_64 = 0;
  local_54 = 0;
  local_38 = 2;
  local_50 = *param_1;
  local_34 = *param_1 * 3;
  local_4c = malloc(0x3220);
  local_48 = (void *)((int)local_4c + 0x1910);
  local_30 = local_4c;
  if (local_4c != (void *)0x0) {
    if (*param_2 < *param_1) {
      __assert2("../libwebp/src/enc/histogram.c",0x10a,"HistogramCombine","in->size <= out->size");
    }
    for (local_5c = 0; local_5c < *param_1; local_5c = local_5c + 1) {
      iVar4 = *(int *)(param_1[2] + local_5c * 4);
      uVar5 = VP8LHistogramEstimateBits(*(undefined4 *)(param_1[2] + local_5c * 4));
      *(undefined8 *)(iVar4 + 0x1908) = uVar5;
      memcpy(*(void **)(param_2[2] + local_5c * 4),*(void **)(param_1[2] + local_5c * 4),0x1910);
    }
    local_58 = 0;
    while ((local_58 < local_34 && (local_38 <= local_50))) {
      local_18 = 0.0;
      local_44 = 0;
      local_40 = 1;
      local_64 = local_64 + local_58;
      for (local_3c = 0; (int)local_3c < param_3; local_3c = local_3c + 1) {
        uVar2 = FUN_00764b38(&local_64);
        __aeabi_uidivmod(uVar2,local_50);
        local_2c = extraout_r1;
        __aeabi_idivmod((local_3c & 7) + 1,local_50 + -1);
        uVar3 = extraout_r1_00;
        local_28 = extraout_r1_00;
        if (2 < extraout_r1_00) {
          uVar2 = FUN_00764b38(&local_64);
          __aeabi_uidivmod(uVar2,local_50 + -1);
          uVar3 = extraout_r1_01;
        }
        local_24 = uVar3;
        __aeabi_uidivmod(local_2c + uVar3 + 1,local_50);
        local_20 = extraout_r1_02;
        if (local_2c != extraout_r1_02) {
          memcpy(local_4c,*(void **)(param_2[2] + local_2c * 4),0x1910);
          FUN_0076407c(local_4c,*(undefined4 *)(param_2[2] + local_20 * 4));
          uVar5 = VP8LHistogramEstimateBits(local_4c);
          pvVar1 = local_4c;
          *(undefined8 *)((int)local_4c + 0x1908) = uVar5;
          local_10 = (*(double *)((int)local_4c + 0x1908) -
                     *(double *)(*(int *)(param_2[2] + local_2c * 4) + 0x1908)) -
                     *(double *)(*(int *)(param_2[2] + local_20 * 4) + 0x1908);
          if (local_10 < local_18) {
            local_1c = local_4c;
            local_4c = local_48;
            local_48 = pvVar1;
            local_44 = local_2c;
            local_40 = local_20;
            local_18 = local_10;
          }
        }
      }
      if ((int)((uint)(local_18 < 0.0) << 0x1f) < 0) {
        memcpy(*(void **)(param_2[2] + local_44 * 4),local_48,0x1910);
        local_50 = local_50 + -1;
        if (local_40 != local_50) {
          *(undefined4 *)(param_2[2] + local_40 * 4) = *(undefined4 *)(param_2[2] + local_50 * 4);
          *(undefined4 *)(param_2[2] + local_50 * 4) = 0;
        }
        local_54 = 0;
      }
      local_54 = local_54 + 1;
      if (0x31 < local_54) break;
      local_58 = local_58 + 1;
    }
    *param_2 = local_50;
    local_60 = 1;
  }
  free(local_30);
  return local_60;
}

// ---- FUN_00764eb8  @ 0x764eb8
double FUN_00764eb8(undefined4 param_1,void *param_2)

{
  double dVar1;
  double dVar2;
  undefined1 auStack_1918 [6416];
  
  dVar2 = *(double *)((int)param_2 + 0x1908);
  memcpy(auStack_1918,param_2,0x1910);
  FUN_0076407c(auStack_1918,param_1);
  dVar1 = (double)VP8LHistogramEstimateBits(auStack_1918);
  return dVar1 - dVar2;
}

// ---- FUN_00764f5c  @ 0x764f5c
void FUN_00764f5c(int *param_1,int *param_2,int param_3)

{
  double dVar1;
  double dVar2;
  int local_24;
  int local_20;
  int local_1c;
  
  for (local_24 = 0; local_24 < *param_1; local_24 = local_24 + 1) {
    local_20 = 0;
    dVar1 = (double)FUN_00764eb8(*(undefined4 *)(param_1[2] + local_24 * 4),
                                 *(undefined4 *)param_2[2]);
    for (local_1c = 1; local_1c < *param_2; local_1c = local_1c + 1) {
      dVar2 = (double)FUN_00764eb8(*(undefined4 *)(param_1[2] + local_24 * 4),
                                   *(undefined4 *)(param_2[2] + local_1c * 4));
      if ((int)((uint)(dVar2 < dVar1) << 0x1f) < 0) {
        local_20 = local_1c;
        dVar1 = dVar2;
      }
    }
    *(short *)(param_3 + local_24 * 2) = (short)local_20;
  }
  for (local_24 = 0; local_24 < *param_2; local_24 = local_24 + 1) {
    FUN_00764200(*(undefined4 *)(param_2[2] + local_24 * 4));
  }
  for (local_24 = 0; local_24 < *param_1; local_24 = local_24 + 1) {
    FUN_0076407c(*(undefined4 *)(param_2[2] + (uint)*(ushort *)(param_3 + local_24 * 2) * 4),
                 *(undefined4 *)(param_1[2] + local_24 * 4));
  }
  return;
}

// ---- FUN_00765154  @ 0x765154
void FUN_00765154(int param_1)

{
  undefined1 uVar1;
  undefined1 *puVar2;
  int iVar3;
  int iVar4;
  undefined1 *puVar5;
  
  iVar3 = *(int *)(param_1 + 0x28);
  iVar4 = *(int *)(iVar3 + 0x5248);
  puVar2 = (undefined1 *)(*(int *)(iVar3 + 0x524c) + -1);
  puVar5 = (undefined1 *)(*(int *)(iVar3 + 0x5250) + -1);
  if (*(int *)(param_1 + 4) < 1) {
    uVar1 = 0x7f;
  }
  else {
    uVar1 = 0x81;
  }
  *puVar5 = uVar1;
  *puVar2 = *puVar5;
  *(undefined1 *)(iVar4 + -1) = *puVar2;
  memset(*(void **)(iVar3 + 0x5248),0x81,0x10);
  memset(*(void **)(iVar3 + 0x524c),0x81,8);
  memset(*(void **)(iVar3 + 0x5250),0x81,8);
  *(undefined4 *)(param_1 + 0xb0) = 0;
  return;
}

// ---- FUN_00765208  @ 0x765208
void FUN_00765208(int param_1)

{
  int iVar1;
  
  iVar1 = *(int *)(param_1 + 0x28);
  memset(*(void **)(iVar1 + 0x5240),0x7f,*(int *)(iVar1 + 0x28) << 5);
  memset(*(void **)(iVar1 + 0x522c),0,*(int *)(iVar1 + 0x28) << 2);
  return;
}

// ---- FUN_0076540c  @ 0x76540c
void FUN_0076540c(void *param_1,int param_2,void *param_3,size_t param_4,int param_5,size_t param_6)

{
  undefined4 local_1c;
  undefined4 local_14;
  undefined4 local_c;
  
  local_1c = param_3;
  local_14 = param_1;
  for (local_c = 0; local_c < param_5; local_c = local_c + 1) {
    memcpy(local_1c,local_14,param_4);
    if ((int)param_4 < (int)param_6) {
      memset((void *)((int)local_1c + param_4),(uint)*(byte *)((int)local_1c + (param_4 - 1)),
             param_6 - param_4);
    }
    local_1c = (void *)((int)local_1c + 0x10);
    local_14 = (void *)((int)local_14 + param_2);
  }
  for (local_c = param_5; local_c < (int)param_6; local_c = local_c + 1) {
    memcpy(local_1c,(void *)((int)local_1c + -0x10),param_6);
    local_1c = (void *)((int)local_1c + 0x10);
  }
  return;
}

// ---- FUN_007655e8  @ 0x7655e8
void FUN_007655e8(void *param_1,void *param_2,int param_3,size_t param_4,int param_5)

{
  bool bVar1;
  undefined4 local_10;
  undefined4 local_c;
  
  local_10 = param_2;
  local_c = param_1;
  while (bVar1 = 0 < param_5, param_5 = param_5 + -1, bVar1) {
    memcpy(local_10,local_c,param_4);
    local_10 = (void *)((int)local_10 + param_3);
    local_c = (void *)((int)local_c + 0x10);
  }
  return;
}

// ---- FUN_00765fc0  @ 0x765fc0
undefined4 FUN_00765fc0(int param_1)

{
  return *(undefined4 *)(param_1 + 0x14);
}

// ---- FUN_00766094  @ 0x766094
undefined4 FUN_00766094(undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 uVar1;
  
  uVar1 = WebPConfigInitInternal(param_2,param_3,param_1,0x200);
  return uVar1;
}

// ---- FUN_007660b8  @ 0x7660b8
undefined4 FUN_007660b8(undefined4 param_1)

{
  undefined4 uVar1;
  
  uVar1 = WebPPictureInitInternal(param_1,0x200);
  return uVar1;
}

// ---- FUN_007660d0  @ 0x7660d0
uint FUN_007660d0(int param_1)

{
  uint uVar1;
  
  uVar1 = param_1 + 0x2020000 >> 0x12;
  if ((uVar1 & 0xffffff00) != 0) {
    if ((int)uVar1 < 0) {
      uVar1 = 0;
    }
    else {
      uVar1 = 0xff;
    }
  }
  return uVar1;
}

// ---- FUN_00766108  @ 0x766108
int FUN_00766108(int param_1,int param_2,int param_3)

{
  return (int)("_ZN7cocos2d15CCEaseBackInOut6createEPNS_16CCActionIntervalE" +
              param_1 * 0x41c7 + param_2 * 0x8123 + param_3 * 0x1914 + 0x2d) >> 0x10;
}

// ---- FUN_0076614c  @ 0x76614c
undefined4 FUN_0076614c(int param_1,int param_2,int param_3)

{
  undefined4 uVar1;
  
  uVar1 = FUN_007660d0(param_1 * -0x25f7 + param_2 * -0x4a89 + param_3 * 0x7080);
  return uVar1;
}

// ---- FUN_00766190  @ 0x766190
undefined4 FUN_00766190(int param_1,int param_2,int param_3)

{
  undefined4 uVar1;
  
  uVar1 = FUN_007660d0(param_1 * 0x7080 + param_2 * -0x5e34 + param_3 * -0x124c);
  return uVar1;
}

// ---- FUN_00766458  @ 0x766458
void FUN_00766458(int param_1)

{
  *(undefined4 *)(param_1 + 0xa0) = 0;
  *(undefined4 *)(param_1 + 0x34) = 0;
  *(undefined4 *)(param_1 + 0x38) = 0;
  return;
}

// ---- FUN_0076647c  @ 0x76647c
void FUN_0076647c(int param_1)

{
  *(undefined4 *)(param_1 + 0x9c) = 0;
  *(undefined4 *)(param_1 + 0x24) = 0;
  *(undefined4 *)(param_1 + 0x18) = *(undefined4 *)(param_1 + 0x24);
  *(undefined4 *)(param_1 + 0x14) = *(undefined4 *)(param_1 + 0x18);
  *(undefined4 *)(param_1 + 0x10) = *(undefined4 *)(param_1 + 0x14);
  *(undefined4 *)(param_1 + 0x78) = 0;
  *(undefined4 *)(param_1 + 0x74) = *(undefined4 *)(param_1 + 0x78);
  *(undefined4 *)(param_1 + 0x20) = 0;
  *(undefined4 *)(param_1 + 0x1c) = *(undefined4 *)(param_1 + 0x20);
  *(undefined4 *)(param_1 + 0x28) = 0;
  *(undefined4 *)(param_1 + 0x7c) = 0;
  return;
}

// ---- FUN_007664e0  @ 0x7664e0
void FUN_007664e0(void *param_1,void *param_2)

{
  if ((param_1 == (void *)0x0) || (param_2 == (void *)0x0)) {
    __assert2("../libwebp/src/enc/picture.c",0xa0,"WebPPictureGrabSpecs",
              "src != NULL && dst != NULL");
  }
  memcpy(param_2,param_1,0xac);
  FUN_0076647c(param_2);
  FUN_00766458(param_2);
  return;
}

// ---- FUN_00766540  @ 0x766540
undefined4 FUN_00766540(undefined4 *param_1)

{
  int iVar1;
  undefined4 uVar2;
  undefined1 auStack_b4 [52];
  undefined4 local_80;
  undefined4 local_7c;
  undefined4 local_14;
  
  free((void *)param_1[0x28]);
  FUN_00766458(param_1);
  *param_1 = 1;
  FUN_007664e0(param_1,auStack_b4);
  iVar1 = WebPPictureAlloc(auStack_b4);
  if (iVar1 == 0) {
    uVar2 = WebPEncodingSetError(param_1,1);
  }
  else {
    param_1[0x28] = local_14;
    param_1[0xd] = local_80;
    param_1[0xe] = local_7c;
    uVar2 = 1;
  }
  return uVar2;
}

// ---- FUN_007665d8  @ 0x7665d8
void FUN_007665d8(void *param_1,int param_2,void *param_3,int param_4,size_t param_5,int param_6)

{
  bool bVar1;
  undefined4 local_14;
  undefined4 local_c;
  
  local_14 = param_3;
  local_c = param_1;
  while (bVar1 = 0 < param_6, param_6 = param_6 + -1, bVar1) {
    memcpy(local_14,local_c,param_5);
    local_c = (void *)((int)local_c + param_2);
    local_14 = (void *)((int)local_14 + param_4);
  }
  return;
}

// ---- FUN_00766624  @ 0x766624
void FUN_00766624(int *param_1,uint *param_2,uint *param_3)

{
  bool bVar1;
  
  if ((*param_1 == 0) &&
     (((bVar1 = (param_1[1] & 3U) == 1, (param_1[1] & 3U) == 0 || (bVar1)) &&
      (*param_2 = *param_2 & 0xfffffffe, !bVar1)))) {
    *param_3 = *param_3 & 0xfffffffe;
  }
  return;
}

// ---- FUN_0076667c  @ 0x76667c
undefined4 FUN_0076667c(int param_1,int *param_2,int *param_3,int param_4,int param_5)

{
  undefined4 uVar1;
  
  FUN_00766624(param_1,param_2,param_3);
  if ((*param_2 < 0) || (*param_3 < 0)) {
    uVar1 = 0;
  }
  else if ((param_4 < 1) || (param_5 < 1)) {
    uVar1 = 0;
  }
  else if (*(int *)(param_1 + 8) < *param_2 + param_4) {
    uVar1 = 0;
  }
  else if (*(int *)(param_1 + 0xc) < *param_3 + param_5) {
    uVar1 = 0;
  }
  else {
    uVar1 = 1;
  }
  return uVar1;
}

// ---- FUN_00766b08  @ 0x766b08
void FUN_00766b08(int param_1,undefined4 param_2,int param_3,int param_4,undefined4 param_5,
                 int param_6,undefined4 param_7,undefined4 param_8,void *param_9,int param_10)

{
  int iVar1;
  int local_5c;
  undefined1 auStack_58 [84];
  
  local_5c = 0;
  WebPRescalerInit(auStack_58,param_2,param_3,param_5,param_6,param_7,param_8,param_10,param_2,
                   param_6,param_3,param_7,param_9);
  memset(param_9,0,param_10 * param_6 * 8);
  while (local_5c < param_3) {
    iVar1 = WebPRescalerImport(auStack_58,param_3 - local_5c,param_1 + param_4 * local_5c,param_4);
    local_5c = local_5c + iVar1;
    WebPRescalerExport(auStack_58);
  }
  return;
}

// ---- FUN_00766f60  @ 0x766f60
undefined4 FUN_00766f60(int param_1,int param_2,int param_3,int param_4,int param_5)

{
  bool bVar1;
  int local_14;
  int local_c;
  int local_4;
  
  local_14 = param_3;
  local_c = param_1;
  if (param_1 != 0) {
    while (bVar1 = 0 < local_14, local_14 = local_14 + -1, bVar1) {
      for (local_4 = 0; param_4 * param_2 - local_4 != 0 && local_4 <= param_4 * param_2;
          local_4 = local_4 + param_4) {
        if (*(char *)(local_c + local_4) != -1) {
          return 1;
        }
      }
      local_c = local_c + param_5;
    }
  }
  return 0;
}

// ---- FUN_0076708c  @ 0x76708c
void FUN_0076708c(int param_1)

{
  size_t __n;
  int iVar1;
  undefined4 local_14;
  
  __n = *(int *)(param_1 + 8) + 1 >> 1;
  iVar1 = *(int *)(param_1 + 0xc);
  for (local_14 = 0; local_14 < iVar1 + 1 >> 1; local_14 = local_14 + 1) {
    memset((void *)(*(int *)(param_1 + 0x14) + local_14 * *(int *)(param_1 + 0x20)),0x80,__n);
    memset((void *)(*(int *)(param_1 + 0x18) + local_14 * *(int *)(param_1 + 0x20)),0x80,__n);
  }
  return;
}

// ---- FUN_00767108  @ 0x767108
undefined4
FUN_00767108(int param_1,int param_2,int param_3,int param_4,int param_5,int param_6,
            undefined4 *param_7)

{
  undefined1 uVar1;
  int iVar2;
  int iVar3;
  uint uVar4;
  uint uVar5;
  uint uVar6;
  undefined4 uVar7;
  int iVar8;
  int iVar9;
  int iVar10;
  int iVar11;
  int local_74;
  int local_70;
  
  uVar4 = param_7[1];
  uVar5 = param_7[2];
  uVar6 = param_7[3];
  iVar2 = FUN_00766f60(param_4,uVar5,uVar6,param_5,param_6);
  param_7[1] = uVar4 & 3;
  *param_7 = 0;
  if (iVar2 != 0) {
    param_7[1] = param_7[1] | 4;
  }
  iVar3 = WebPPictureAlloc(param_7);
  if (iVar3 == 0) {
    uVar7 = 0;
  }
  else {
    for (local_70 = 0; local_70 < (int)uVar6; local_70 = local_70 + 1) {
      for (local_74 = 0; local_74 < (int)uVar5; local_74 = local_74 + 1) {
        iVar9 = local_74 * param_5 + param_6 * local_70;
        iVar3 = param_7[4];
        iVar10 = param_7[7];
        uVar1 = FUN_00766108(*(undefined1 *)(param_1 + iVar9),*(undefined1 *)(param_2 + iVar9),
                             *(undefined1 *)(param_3 + iVar9));
        *(undefined1 *)(iVar3 + local_70 * iVar10 + local_74) = uVar1;
      }
    }
    if ((uVar4 & 3) == 3) {
      FUN_0076708c(param_7);
    }
    else {
      for (local_70 = 0; local_70 < (int)uVar6 >> 1; local_70 = local_70 + 1) {
        for (local_74 = 0; local_74 < (int)uVar5 >> 1; local_74 = local_74 + 1) {
          iVar3 = (local_74 * param_5 + param_6 * local_70) * 2;
          iVar9 = local_70 * param_7[8] + local_74;
          iVar10 = (uint)*(byte *)(param_1 + iVar3) + (uint)*(byte *)(param_1 + iVar3 + param_5) +
                   (uint)*(byte *)(param_1 + iVar3 + param_6) +
                   (uint)*(byte *)(param_1 + param_6 + param_5 + iVar3);
          iVar11 = (uint)*(byte *)(param_2 + iVar3) + (uint)*(byte *)(param_2 + iVar3 + param_5) +
                   (uint)*(byte *)(param_2 + iVar3 + param_6) +
                   (uint)*(byte *)(param_2 + param_6 + param_5 + iVar3);
          iVar8 = (uint)*(byte *)(param_3 + iVar3) + (uint)*(byte *)(param_3 + iVar3 + param_5) +
                  (uint)*(byte *)(param_3 + iVar3 + param_6) +
                  (uint)*(byte *)(param_3 + param_6 + param_5 + iVar3);
          iVar3 = param_7[5];
          uVar1 = FUN_0076614c(iVar10,iVar11,iVar8);
          *(undefined1 *)(iVar3 + iVar9) = uVar1;
          iVar3 = param_7[6];
          uVar1 = FUN_00766190(iVar10,iVar11,iVar8);
          *(undefined1 *)(iVar3 + iVar9) = uVar1;
        }
        if ((uVar5 & 1) != 0) {
          iVar3 = (local_74 * param_5 + param_6 * local_70) * 2;
          local_74 = local_70 * param_7[8] + local_74;
          iVar9 = ((uint)*(byte *)(param_1 + iVar3) + (uint)*(byte *)(param_1 + iVar3 + param_6)) *
                  2;
          iVar10 = ((uint)*(byte *)(param_2 + iVar3) + (uint)*(byte *)(param_2 + iVar3 + param_6)) *
                   2;
          iVar11 = ((uint)*(byte *)(param_3 + iVar3) + (uint)*(byte *)(param_3 + iVar3 + param_6)) *
                   2;
          iVar3 = param_7[5];
          uVar1 = FUN_0076614c(iVar9,iVar10,iVar11);
          *(undefined1 *)(iVar3 + local_74) = uVar1;
          iVar3 = param_7[6];
          uVar1 = FUN_00766190(iVar9,iVar10,iVar11);
          *(undefined1 *)(iVar3 + local_74) = uVar1;
        }
      }
      if ((uVar6 & 1) != 0) {
        for (local_74 = 0; local_74 < (int)uVar5 >> 1; local_74 = local_74 + 1) {
          iVar3 = (local_74 * param_5 + param_6 * local_70) * 2;
          iVar9 = local_70 * param_7[8] + local_74;
          iVar10 = ((uint)*(byte *)(param_1 + iVar3) + (uint)*(byte *)(param_1 + iVar3 + param_5)) *
                   2;
          iVar11 = ((uint)*(byte *)(param_2 + iVar3) + (uint)*(byte *)(param_2 + iVar3 + param_5)) *
                   2;
          iVar8 = ((uint)*(byte *)(param_3 + iVar3) + (uint)*(byte *)(param_3 + iVar3 + param_5)) *
                  2;
          iVar3 = param_7[5];
          uVar1 = FUN_0076614c(iVar10,iVar11,iVar8);
          *(undefined1 *)(iVar3 + iVar9) = uVar1;
          iVar3 = param_7[6];
          uVar1 = FUN_00766190(iVar10,iVar11,iVar8);
          *(undefined1 *)(iVar3 + iVar9) = uVar1;
        }
        if ((uVar5 & 1) != 0) {
          iVar3 = (local_74 * param_5 + param_6 * local_70) * 2;
          local_74 = local_70 * param_7[8] + local_74;
          iVar9 = (uint)*(byte *)(param_1 + iVar3) << 2;
          iVar10 = (uint)*(byte *)(param_2 + iVar3) << 2;
          iVar11 = (uint)*(byte *)(param_3 + iVar3) << 2;
          iVar3 = param_7[5];
          uVar1 = FUN_0076614c(iVar9,iVar10,iVar11);
          *(undefined1 *)(iVar3 + local_74) = uVar1;
          iVar3 = param_7[6];
          uVar1 = FUN_00766190(iVar9,iVar10,iVar11);
          *(undefined1 *)(iVar3 + local_74) = uVar1;
        }
      }
    }
    if (iVar2 != 0) {
      if (param_5 < 4) {
        __assert2("../libwebp/src/enc/picture.c",0x291,"ImportYUVAFromRGBA","step >= 4");
      }
      for (local_70 = 0; local_70 < (int)uVar6; local_70 = local_70 + 1) {
        for (local_74 = 0; local_74 < (int)uVar5; local_74 = local_74 + 1) {
          *(undefined1 *)(param_7[9] + local_70 * param_7[10] + local_74) =
               *(undefined1 *)(param_4 + local_74 * param_5 + param_6 * local_70);
        }
      }
    }
    uVar7 = 1;
  }
  return uVar7;
}

// ---- FUN_0076760c  @ 0x76760c
undefined4 FUN_0076760c(int *param_1,int param_2,int param_3,int param_4,int param_5,int param_6)

{
  undefined4 uVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  int iVar7;
  int local_40;
  int local_3c;
  int local_38;
  int local_34;
  
  if (param_5 == 0) {
    iVar3 = 0;
  }
  else {
    iVar3 = 2;
  }
  iVar3 = param_2 + iVar3;
  iVar4 = param_2 + 1;
  if (param_5 == 0) {
    iVar5 = 2;
  }
  else {
    iVar5 = 0;
  }
  iVar5 = param_2 + iVar5;
  if (param_6 == 0) {
    param_2 = 0;
  }
  else {
    param_2 = param_2 + 3;
  }
  iVar6 = param_1[2];
  iVar7 = param_1[3];
  if (*param_1 == 0) {
    uVar1 = FUN_00767108(iVar3,iVar4,iVar5,param_2,param_4,param_3,param_1);
  }
  else {
    if (param_6 == 0) {
      param_1[1] = param_1[1] & 0xfffffffb;
    }
    else {
      param_1[1] = param_1[1] | 4;
    }
    iVar2 = WebPPictureAlloc(param_1);
    if (iVar2 == 0) {
      uVar1 = 0;
    }
    else {
      if (param_6 == 0) {
        for (local_3c = 0; local_3c < iVar7; local_3c = local_3c + 1) {
          for (local_40 = 0; local_40 < iVar6; local_40 = local_40 + 1) {
            iVar2 = local_40 * param_4 + param_3 * local_3c;
            *(uint *)(param_1[0xd] + (local_3c * param_1[0xe] + local_40) * 4) =
                 (uint)*(byte *)(iVar5 + iVar2) |
                 (uint)*(byte *)(iVar3 + iVar2) << 0x10 | (uint)*(byte *)(iVar4 + iVar2) << 8 |
                 0xff000000;
          }
        }
      }
      else {
        if (param_4 < 4) {
          __assert2("../libwebp/src/enc/picture.c",0x2c0,"Import","step >= 4");
        }
        for (local_34 = 0; local_34 < iVar7; local_34 = local_34 + 1) {
          for (local_38 = 0; local_38 < iVar6; local_38 = local_38 + 1) {
            iVar2 = local_38 * param_4 + param_3 * local_34;
            *(uint *)(param_1[0xd] + (local_34 * param_1[0xe] + local_38) * 4) =
                 (uint)*(byte *)(iVar5 + iVar2) |
                 (uint)*(byte *)(param_2 + iVar2) << 0x18 | (uint)*(byte *)(iVar3 + iVar2) << 0x10 |
                 (uint)*(byte *)(iVar4 + iVar2) << 8;
          }
        }
      }
      uVar1 = 1;
    }
  }
  return uVar1;
}

// ---- FUN_00767cb4  @ 0x767cb4
undefined4 FUN_00767cb4(int param_1,int param_2,int param_3)

{
  int local_c;
  int local_8;
  int local_4;
  
  local_8 = 0;
  local_c = param_1;
  do {
    if (param_3 <= local_8) {
      return 1;
    }
    for (local_4 = 0; local_4 < param_3; local_4 = local_4 + 1) {
      if (*(char *)(local_c + local_4) != '\0') {
        return 0;
      }
    }
    local_c = local_c + param_2;
    local_8 = local_8 + 1;
  } while( true );
}

// ---- FUN_00767d10  @ 0x767d10
void FUN_00767d10(void *param_1,int param_2,int param_3,size_t param_4)

{
  undefined4 local_14;
  undefined4 local_c;
  
  local_14 = param_1;
  for (local_c = 0; local_c < (int)param_4; local_c = local_c + 1) {
    memset(local_14,param_2,param_4);
    local_14 = (void *)((int)local_14 + param_3);
  }
  return;
}

// ---- FUN_00768258  @ 0x768258
undefined4
FUN_00768258(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
            code *param_5,undefined4 param_6,int param_7,undefined4 *param_8)

{
  bool bVar1;
  int iVar2;
  void *local_134;
  undefined4 local_130;
  uint local_124 [28];
  uint local_b4 [2];
  undefined4 local_ac;
  undefined4 local_a8;
  code *local_6c;
  void **local_68;
  
  iVar2 = FUN_00766094(param_6,local_124,0);
  if ((iVar2 == 0) || (iVar2 = FUN_007660b8(local_b4), iVar2 == 0)) {
    local_130 = 0;
  }
  else {
    local_124[0] = (uint)(param_7 != 0);
    local_b4[0] = (uint)(param_7 != 0);
    local_6c = (code *)0x766e39;
    local_68 = &local_134;
    local_ac = param_2;
    local_a8 = param_3;
    WebPMemoryWriterInit(&local_134);
    iVar2 = (*param_5)(local_b4,param_1,param_4);
    if ((iVar2 == 0) || (iVar2 = WebPEncode(local_124,local_b4), iVar2 == 0)) {
      bVar1 = false;
    }
    else {
      bVar1 = true;
    }
    WebPPictureFree(local_b4);
    if (bVar1) {
      *param_8 = local_134;
    }
    else {
      free(local_134);
      *param_8 = 0;
      local_130 = 0;
    }
  }
  return local_130;
}

// ---- FUN_00768558  @ 0x768558
int FUN_00768558(int param_1,int param_2,int param_3)

{
  return param_2 * param_1 + param_3 >> 0x11;
}

// ---- FUN_00768578  @ 0x768578
undefined2 FUN_00768578(int param_1,byte param_2)

{
  undefined2 uVar1;
  
  if (param_1 == 0) {
    uVar1 = *(undefined2 *)(VP8EntropyCost + (uint)param_2 * 2);
  }
  else {
    uVar1 = *(undefined2 *)(VP8EntropyCost + (0xff - (uint)param_2) * 2);
  }
  return uVar1;
}

// ---- FUN_007685b8  @ 0x7685b8
int FUN_007685b8(int param_1,int param_2)

{
  int iVar1;
  
  iVar1 = param_2 * 2;
  if (0x42 < param_2) {
    param_2 = 0x43;
  }
  return (uint)*(ushort *)(VP8LevelFixedCosts + iVar1) + (uint)*(ushort *)(param_1 + param_2 * 2);
}

// ---- FUN_007685f0  @ 0x7685f0
int FUN_007685f0(int param_1,int param_2,int param_3)

{
  if ((param_2 <= param_1) && (param_2 = param_3, param_1 < param_3)) {
    param_2 = param_1;
  }
  return param_2;
}

// ---- FUN_00768614  @ 0x768614
int FUN_00768614(int param_1,int param_2)

{
  byte bVar1;
  undefined2 uVar2;
  uint uVar3;
  int local_18;
  int local_14;
  
  local_14 = 0;
  for (local_18 = 2; local_18 < 0x10; local_18 = local_18 + 1) {
    *(undefined2 *)(param_1 + local_18 * 2) = *(undefined2 *)(param_1 + 2);
  }
  for (local_18 = 0; local_18 < 0x10; local_18 = local_18 + 1) {
    uVar3 = (uint)(byte)(&DAT_00873728)[local_18];
    bVar1 = (&DAT_008739d8)[param_2 * 0x10 + uVar3];
    uVar2 = __divsi3(0x20000,*(undefined2 *)(param_1 + uVar3 * 2));
    *(undefined2 *)(param_1 + (uVar3 + 0x10) * 2) = uVar2;
    *(ushort *)(param_1 + (uVar3 + 0x20) * 2) = (ushort)bVar1 << 9;
    *(short *)(param_1 + (uVar3 + 0x30) * 2) =
         (short)((uint)*(ushort *)(param_1 + uVar3 * 2) * (0x100 - (uint)bVar1) + 0x7f >> 8);
    *(short *)(param_1 + (uVar3 + 0x40) * 2) =
         (short)((int)((uint)*(ushort *)(param_1 + uVar3 * 2) * (uint)(byte)(&DAT_00873a08)[uVar3])
                >> 0xb);
    local_14 = local_14 + (uint)*(ushort *)(param_1 + uVar3 * 2);
  }
  return local_14 + 8 >> 4;
}

// ---- FUN_00768734  @ 0x768734
void FUN_00768734(int *param_1)

{
  int iVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  ushort *puVar5;
  int iVar6;
  int local_28;
  
  if (param_1[0x1486] < 4) {
    iVar3 = 0;
  }
  else {
    iVar3 = *(int *)(*param_1 + 0x1c);
  }
  iVar4 = param_1[6];
  for (local_28 = 0; local_28 < iVar4; local_28 = local_28 + 1) {
    puVar5 = (ushort *)(param_1 + local_28 * 0x85 + 0x65);
    iVar6 = *(int *)(puVar5 + 0xf4);
    iVar1 = FUN_007685f0(param_1[0x27b] + iVar6,0,0x7f);
    *puVar5 = (ushort)(byte)(&DAT_00873738)[iVar1];
    iVar1 = FUN_007685f0(iVar6,0,0x7f);
    puVar5[1] = *(ushort *)(&DAT_008737b8 + iVar1 * 2);
    iVar1 = FUN_007685f0(param_1[0x27c] + iVar6,0,0x7f);
    puVar5[0x50] = (ushort)(byte)(&DAT_00873738)[iVar1] << 1;
    iVar1 = FUN_007685f0(param_1[0x27d] + iVar6,0,0x7f);
    puVar5[0x51] = *(ushort *)(&DAT_008738b8 + iVar1 * 2);
    iVar1 = FUN_007685f0(param_1[0x27e] + iVar6,0,0x75);
    puVar5[0xa0] = (ushort)(byte)(&DAT_00873738)[iVar1];
    iVar1 = FUN_007685f0(param_1[0x27f] + iVar6,0,0x7f);
    puVar5[0xa1] = *(ushort *)(&DAT_008737b8 + iVar1 * 2);
    iVar1 = FUN_00768614(puVar5,0);
    iVar6 = FUN_00768614(puVar5 + 0x50,1);
    iVar2 = FUN_00768614(puVar5 + 0xa0,2);
    *(int *)(puVar5 + 0xfa) = iVar1 * iVar1 * 3 >> 7;
    *(int *)(puVar5 + 0xf8) = iVar6 * iVar6 * 3;
    *(int *)(puVar5 + 0xfc) = iVar2 * iVar2 * 3 >> 6;
    *(int *)(puVar5 + 0xfe) = iVar1 * iVar1 >> 7;
    *(int *)(puVar5 + 0x106) = iVar1 * iVar1 * 7 >> 3;
    *(int *)(puVar5 + 0x104) = iVar6 * iVar6 >> 2;
    *(int *)(puVar5 + 0x108) = iVar2 * iVar2 * 2;
    *(int *)(puVar5 + 0x102) = iVar1 * iVar3 >> 5;
  }
  return;
}

// ---- FUN_0076897c  @ 0x76897c
void FUN_0076897c(int *param_1)

{
  int iVar1;
  int iVar2;
  int local_18;
  
  iVar1 = *(int *)(*param_1 + 0x20);
  for (local_18 = 0; local_18 < 4; local_18 = local_18 + 1) {
    iVar2 = param_1[local_18 * 0x85 + 0xdf] * iVar1 * 0x100;
    if (iVar2 < 0) {
      iVar2 = iVar2 + 0x7f;
    }
    iVar2 = __divsi3(iVar2 >> 7,param_1[local_18 * 0x85 + 0xde] + 0x100);
    if (iVar2 < 3) {
      iVar2 = 0;
    }
    else if (0x3e < iVar2) {
      iVar2 = 0x3f;
    }
    param_1[local_18 * 0x85 + 0xe0] = iVar2;
  }
  param_1[3] = param_1[0xe0];
  param_1[2] = (uint)(*(int *)(*param_1 + 0x28) == 0);
  param_1[4] = *(int *)(*param_1 + 0x24);
  return;
}

// ---- FUN_00768a48  @ 0x768a48
double FUN_00768a48(undefined4 param_1,undefined4 param_2)

{
  double dVar1;
  
  dVar1 = (double)CONCAT44(param_2,param_1) * 0.01;
  if ((int)((uint)(dVar1 < 0.75) << 0x1f) < 0) {
    dVar1 = dVar1 * 0.6666666666666666;
  }
  else {
    dVar1 = (dVar1 + dVar1) - 1.0;
  }
  return dVar1;
}

// ---- FUN_00768e30  @ 0x768e30
void FUN_00768e30(undefined4 *param_1)

{
  *param_1 = 0;
  param_1[1] = 0;
  param_1[2] = 0;
  param_1[3] = 0;
  param_1[4] = 0;
  param_1[5] = 0;
  param_1[0xd6] = 0;
  param_1[6] = 0xffffffff;
  param_1[7] = 0x7fffff;
  return;
}

// ---- FUN_00768e80  @ 0x768e80
void FUN_00768e80(undefined4 *param_1,undefined4 *param_2)

{
  undefined4 uVar1;
  
  uVar1 = param_2[1];
  *param_1 = *param_2;
  param_1[1] = uVar1;
  uVar1 = param_2[3];
  param_1[2] = param_2[2];
  param_1[3] = uVar1;
  uVar1 = param_2[5];
  param_1[4] = param_2[4];
  param_1[5] = uVar1;
  param_1[0xd6] = param_2[0xd6];
  uVar1 = param_2[7];
  param_1[6] = param_2[6];
  param_1[7] = uVar1;
  return;
}

// ---- FUN_00768ec8  @ 0x768ec8
void FUN_00768ec8(uint *param_1,uint *param_2)

{
  uint uVar1;
  uint uVar2;
  uint uVar3;
  
  uVar1 = *param_1;
  uVar2 = *param_2;
  uVar3 = param_2[1];
  *param_1 = uVar2 + uVar1;
  param_1[1] = uVar3 + param_1[1] + (uint)CARRY4(uVar2,uVar1);
  uVar1 = param_1[2];
  uVar2 = param_2[2];
  uVar3 = param_2[3];
  param_1[2] = uVar2 + uVar1;
  param_1[3] = uVar3 + param_1[3] + (uint)CARRY4(uVar2,uVar1);
  uVar1 = param_1[4];
  uVar2 = param_2[4];
  uVar3 = param_2[5];
  param_1[4] = uVar2 + uVar1;
  param_1[5] = uVar3 + param_1[5] + (uint)CARRY4(uVar2,uVar1);
  param_1[0xd6] = param_1[0xd6] | param_2[0xd6];
  uVar1 = param_1[6];
  uVar2 = param_2[6];
  uVar3 = param_2[7];
  param_1[6] = uVar2 + uVar1;
  param_1[7] = uVar3 + param_1[7] + (uint)CARRY4(uVar2,uVar1);
  return;
}

// ---- FUN_00768f48  @ 0x768f48
void FUN_00768f48(uint param_1,uint *param_2)

{
  longlong lVar1;
  uint uVar2;
  uint uVar3;
  uint uVar4;
  
  lVar1 = (ulonglong)param_2[4] * (ulonglong)param_1;
  uVar3 = (uint)lVar1;
  uVar2 = param_2[2] + *param_2;
  uVar4 = uVar2 * 0x100;
  param_2[6] = uVar3 + uVar4;
  param_2[7] = param_1 * param_2[5] + param_2[4] * ((int)param_1 >> 0x1f) +
               (int)((ulonglong)lVar1 >> 0x20) +
               ((param_2[3] + param_2[1] + (uint)CARRY4(param_2[2],*param_2)) * 0x100 |
               uVar2 >> 0x18) + (uint)CARRY4(uVar3,uVar4);
  return;
}

// ---- FUN_00768fa4  @ 0x768fa4
undefined8
FUN_00768fa4(uint param_1,undefined4 param_2,uint param_3,int param_4,uint param_5,int param_6)

{
  uint uVar1;
  
  uVar1 = (uint)((ulonglong)param_3 * (ulonglong)param_1);
  return CONCAT44(((int)param_1 >> 0x1f) * param_3 + param_1 * param_4 +
                  (int)((ulonglong)param_3 * (ulonglong)param_1 >> 0x20) +
                  (param_6 << 8 | param_5 >> 0x18) + (uint)CARRY4(uVar1,param_5 * 0x100),
                  uVar1 + param_5 * 0x100);
}

// ---- FUN_00768ff8  @ 0x768ff8
byte FUN_00768ff8(int param_1,int param_2,int param_3,uint param_4,int param_5,int param_6,
                 undefined4 param_7)

{
  undefined1 uVar1;
  byte bVar2;
  ushort uVar3;
  short sVar4;
  undefined8 uVar5;
  byte bVar6;
  int iVar7;
  uint uVar8;
  uint uVar9;
  uint uVar10;
  int iVar11;
  uint uVar12;
  int iVar13;
  int iVar14;
  int iVar15;
  uint uVar16;
  uint uVar17;
  uint uVar18;
  uint uVar19;
  bool bVar20;
  undefined8 uVar21;
  undefined8 uVar22;
  uint local_630;
  uint local_62c;
  uint local_628;
  uint local_624;
  uint local_620;
  int local_618;
  uint local_5b8;
  int iStack_5b4;
  uint local_5b0;
  uint uStack_5ac;
  uint local_5a8;
  int iStack_5a4;
  uint local_5a0;
  uint uStack_59c;
  int local_598;
  int iStack_594;
  uint local_590;
  uint local_58c;
  uint local_588;
  uint uStack_584;
  undefined8 local_580;
  uint local_574;
  uint local_570;
  uint local_56c;
  uint auStack_568 [341];
  
  iVar7 = *(int *)(param_1 + 0x28) + 0xa04 + param_5 * 0x108;
  iVar14 = *(int *)(param_1 + 0x28);
  uVar8 = (uint)(param_5 == 0);
  local_574 = 0xffffffff;
  local_570 = 0xffffffff;
  local_56c = 0xffffffff;
  local_62c = uVar8 - 1;
  iVar15 = (uint)*(ushort *)(param_6 + 2) * (uint)*(ushort *)(param_6 + 2);
  if (iVar15 < 0) {
    iVar15 = iVar15 + 3;
  }
  local_5b0 = 0;
  uStack_5ac = 0;
  for (local_628 = uVar8; (int)local_628 < 0x10; local_628 = local_628 + 1) {
    uVar9 = (uint)(byte)(&DAT_00873728)[local_628];
    iVar11 = (int)*(short *)(param_2 + uVar9 * 2) * (int)*(short *)(param_2 + uVar9 * 2);
    uVar9 = iVar11 * (uint)*(ushort *)(&UNK_00873b08 + uVar9 * 2);
    bVar20 = CARRY4(uVar9,local_5b0);
    local_5b0 = uVar9 + local_5b0;
    uStack_5ac = ((int)uVar9 >> 0x1f) + uStack_5ac + bVar20;
    if (iVar15 >> 2 < iVar11) {
      local_62c = local_628;
    }
  }
  if ((int)local_62c < 0xf) {
    local_62c = local_62c + 1;
  }
  local_598 = FUN_00768578(0,*(undefined1 *)
                              (iVar7 + (uint)(byte)VP8EncBands[uVar8] * 0x21 + param_4 * 0xb));
  iStack_594 = local_598 >> 0x1f;
  uVar21 = FUN_00768fa4(param_7,&local_598,local_598,iStack_594,local_5b0,uStack_5ac);
  uVar22 = CONCAT44(local_580._4_4_,(undefined4)local_580);
  for (local_624 = 0; local_628 = uVar8, (int)local_624 < 2; local_624 = local_624 + 1) {
    auStack_568[uVar8 * 0x14 + local_624 * 10 + 4] = 0;
    auStack_568[uVar8 * 0x14 + local_624 * 10 + 5] = 0;
    auStack_568[uVar8 * 0x14 + local_624 * 10 + 6] = local_5b0;
    auStack_568[uVar8 * 0x14 + local_624 * 10 + 7] = uStack_5ac;
    auStack_568[uVar8 * 0x14 + local_624 * 10 + 8] = param_4;
  }
  for (; local_580 = uVar22, (int)local_628 <= (int)local_62c; local_628 = local_628 + 1) {
    uVar9 = (uint)(byte)(&DAT_00873728)[local_628];
    uVar3 = *(ushort *)(param_6 + uVar9 * 2);
    uVar10 = -((int)*(short *)(param_2 + uVar9 * 2) >> 0x1f);
    if (uVar10 == 0) {
      local_618 = (int)*(short *)(param_2 + uVar9 * 2);
    }
    else {
      local_618 = -(int)*(short *)(param_2 + uVar9 * 2);
    }
    local_618 = local_618 + (uint)*(ushort *)(param_6 + (uVar9 + 0x40) * 2);
    if (0x7ff < local_618) {
      local_618 = 0x7ff;
    }
    iVar15 = FUN_00768558(local_618,*(undefined2 *)(param_6 + (uVar9 + 0x10) * 2),0);
    uVar22 = local_580;
    for (local_624 = 0; (int)local_624 < 2; local_624 = local_624 + 1) {
      iVar11 = local_628 + 1;
      uVar5 = 0x7fffffffffffff;
      uVar12 = iVar15 + local_624;
      auStack_568[local_624 * 10 + iVar11 * 0x14 + 2] = uVar10;
      auStack_568[local_624 * 10 + iVar11 * 0x14 + 1] = uVar12;
      if (uVar12 == 0) {
        uVar16 = 0;
      }
      else if (uVar12 == 1) {
        uVar16 = 1;
      }
      else {
        uVar16 = 2;
      }
      auStack_568[local_624 * 10 + iVar11 * 0x14 + 8] = uVar16;
      if (((int)uVar12 < 0x800) && (-1 < (int)uVar12)) {
        uVar1 = *(undefined1 *)
                 (iVar7 + (uint)(byte)VP8EncBands[local_628 + 1] * 0x21 +
                 auStack_568[local_624 * 10 + iVar11 * 0x14 + 8] * 0xb);
        iVar13 = local_618 - uVar3 * uVar12;
        uVar16 = (local_618 * local_618 - iVar13 * iVar13) *
                 (uint)*(ushort *)(&UNK_00873b08 + uVar9 * 2);
        local_620 = 0;
        while( true ) {
          iStack_5a4 = (int)((ulonglong)uVar5 >> 0x20);
          local_5a8 = (uint)uVar5;
          iStack_5b4 = (int)((ulonglong)uVar21 >> 0x20);
          local_5b8 = (uint)uVar21;
          if (1 < (int)local_620) break;
          local_590 = auStack_568[local_620 * 10 + local_628 * 0x14 + 6] - uVar16;
          local_58c = (auStack_568[local_620 * 10 + local_628 * 0x14 + 7] - ((int)uVar16 >> 0x1f)) -
                      (uint)(auStack_568[local_620 * 10 + local_628 * 0x14 + 6] < uVar16);
          uVar17 = auStack_568[local_620 * 10 + local_628 * 0x14 + 5];
          if ((int)((0x7fffff - uVar17) -
                   (uint)(0xfffffffe < auStack_568[local_620 * 10 + local_628 * 0x14 + 4])) < 0 ==
              (SBORROW4(0x7fffff,uVar17) !=
              SBORROW4(0x7fffff - uVar17,
                       (uint)(0xfffffffe < auStack_568[local_620 * 10 + local_628 * 0x14 + 4])))) {
            uVar18 = auStack_568[local_620 * 10 + local_628 * 0x14 + 4];
            uVar19 = auStack_568[local_620 * 10 + local_628 * 0x14 + 5];
            local_580 = uVar22;
            uVar17 = FUN_007685b8(iVar14 + 0x1ea4 + param_5 * 0xcc0 +
                                  (uint)(byte)VP8EncBands[local_628] * 0x198 +
                                  auStack_568[local_620 * 10 + local_628 * 0x14 + 8] * 0x88,uVar12);
            local_5a0 = uVar17 + uVar18;
            uStack_59c = ((int)uVar17 >> 0x1f) + uVar19 + CARRY4(uVar17,uVar18);
            local_588 = local_5a0;
            uStack_584 = uStack_59c;
            if ((uVar12 != 0) && ((int)local_628 < 0xf)) {
              uVar17 = FUN_00768578(1,uVar1);
              bVar20 = CARRY4(uVar17,local_5a0);
              local_5a0 = uVar17 + local_5a0;
              uStack_59c = ((int)uVar17 >> 0x1f) + uStack_59c + bVar20;
            }
            uVar22 = FUN_00768fa4(param_7,&local_5a0,local_5a0,uStack_59c,local_590,local_58c);
            iVar13 = (int)((ulonglong)uVar22 >> 0x20);
            bVar20 = (uint)uVar22 < local_5a8;
            if ((int)((iVar13 - iStack_5a4) - (uint)bVar20) < 0 !=
                (SBORROW4(iVar13,iStack_5a4) != SBORROW4(iVar13 - iStack_5a4,(uint)bVar20))) {
              auStack_568[local_624 * 10 + iVar11 * 0x14 + 4] = local_5a0;
              auStack_568[local_624 * 10 + iVar11 * 0x14 + 5] = uStack_59c;
              auStack_568[local_624 * 10 + iVar11 * 0x14 + 6] = local_590;
              auStack_568[local_624 * 10 + iVar11 * 0x14 + 7] = local_58c;
              auStack_568[local_624 * 10 + iVar11 * 0x14] = local_620;
              uVar5 = uVar22;
            }
            if (uVar12 != 0) {
              local_5a0 = local_588;
              uStack_59c = uStack_584;
              local_580 = uVar22;
              if ((int)local_628 < 0xf) {
                uVar17 = FUN_00768578(0,uVar1);
                bVar20 = CARRY4(uVar17,local_5a0);
                local_5a0 = uVar17 + local_5a0;
                uStack_59c = ((int)uVar17 >> 0x1f) + uStack_59c + bVar20;
              }
              uVar22 = FUN_00768fa4(param_7,&local_5a0,local_5a0,uStack_59c,local_590,local_58c);
              iVar13 = (int)((ulonglong)uVar22 >> 0x20);
              bVar20 = (uint)uVar22 < local_5b8;
              if ((int)((iVar13 - iStack_5b4) - (uint)bVar20) < 0 !=
                  (SBORROW4(iVar13,iStack_5b4) != SBORROW4(iVar13 - iStack_5b4,(uint)bVar20))) {
                local_574 = local_628;
                local_570 = local_624;
                local_56c = local_620;
                uVar21 = uVar22;
              }
            }
          }
          local_620 = local_620 + 1;
        }
      }
      else {
        auStack_568[local_624 * 10 + iVar11 * 0x14 + 4] = 0xffffffff;
        auStack_568[local_624 * 10 + iVar11 * 0x14 + 5] = 0x7fffff;
      }
    }
  }
  memset((void *)(param_2 + uVar8 * 2),0,(0x10 - uVar8) * 2);
  memset((void *)(param_3 + uVar8 * 2),0,(0x10 - uVar8) * 2);
  if (local_574 == 0xffffffff) {
    bVar6 = 0;
  }
  else {
    local_628 = local_574;
    local_630 = local_570;
    auStack_568[(local_574 + 1) * 0x14 + local_570 * 10] = local_56c;
    bVar6 = 0;
    for (; (int)uVar8 <= (int)local_628; local_628 = local_628 - 1) {
      iVar15 = local_628 + 1;
      bVar2 = (&DAT_00873728)[local_628];
      if (auStack_568[local_630 * 10 + iVar15 * 0x14 + 2] == 0) {
        sVar4 = (short)auStack_568[local_630 * 10 + iVar15 * 0x14 + 1];
      }
      else {
        sVar4 = -(short)auStack_568[local_630 * 10 + iVar15 * 0x14 + 1];
      }
      *(short *)(param_3 + local_628 * 2) = sVar4;
      bVar6 = bVar6 | auStack_568[local_630 * 10 + iVar15 * 0x14 + 1] != 0;
      *(short *)(param_2 + (uint)bVar2 * 2) =
           *(short *)(param_6 + (uint)bVar2 * 2) * *(short *)(param_3 + local_628 * 2);
      local_630 = auStack_568[local_630 * 10 + iVar15 * 0x14];
    }
  }
  return bVar6;
}

// ---- FUN_00769a60  @ 0x769a60
uint FUN_00769a60(int param_1,int param_2,int param_3,int param_4)

{
  int iVar1;
  int iVar2;
  int iVar3;
  uint local_260;
  uint local_25c;
  int local_258;
  int local_254;
  undefined1 auStack_238 [32];
  undefined1 auStack_218 [516];
  
  iVar1 = *(int *)(param_1 + 0x24) + *(int *)(VP8I16ModeOffsets + param_4 * 4);
  iVar2 = *(int *)(param_1 + 0x18);
  iVar3 = *(int *)(param_1 + 0x28) + 0x194 + ((**(uint **)(param_1 + 0x2c) & 0x7f) >> 5) * 0x214;
  for (local_25c = 0; (int)local_25c < 0x10; local_25c = local_25c + 1) {
    (*VP8FTransform)(iVar2 + *(int *)(VP8Scan + local_25c * 4),
                     iVar1 + *(int *)(VP8Scan + local_25c * 4),auStack_218 + local_25c * 0x20);
  }
  (*VP8FTransformWHT)(auStack_218,auStack_238);
  iVar2 = (*VP8EncQuantizeBlock)(auStack_238,param_2 + 0x20,0,iVar3 + 0xa0);
  local_260 = iVar2 << 0x18;
  if (*(int *)(param_1 + 300) == 0) {
    for (local_25c = 0; (int)local_25c < 0x10; local_25c = local_25c + 1) {
      iVar2 = (*VP8EncQuantizeBlock)
                        (auStack_218 + local_25c * 0x20,param_2 + 0x40 + local_25c * 0x20,1,iVar3);
      local_260 = local_260 | iVar2 << (local_25c & 0xff);
    }
  }
  else {
    VP8IteratorNzToBytes(param_1);
    local_25c = 0;
    for (local_254 = 0; local_254 < 4; local_254 = local_254 + 1) {
      for (local_258 = 0; local_258 < 4; local_258 = local_258 + 1) {
        iVar2 = FUN_00768ff8(param_1,auStack_218 + local_25c * 0x20,
                             param_2 + 0x40 + local_25c * 0x20,
                             *(int *)(param_1 + (local_258 + 0x1a) * 4 + 4) +
                             *(int *)(param_1 + (local_254 + 0x24) * 4),0,iVar3,
                             *(undefined4 *)(iVar3 + 0x208));
        *(int *)(param_1 + (local_254 + 0x24) * 4) = iVar2;
        *(undefined4 *)(param_1 + (local_258 + 0x1a) * 4 + 4) =
             *(undefined4 *)(param_1 + (local_254 + 0x24) * 4);
        local_260 = local_260 | iVar2 << (local_25c & 0xff);
        local_25c = local_25c + 1;
      }
    }
  }
  (*VP8ITransformWHT)(auStack_238,auStack_218);
  for (local_25c = 0; (int)local_25c < 0x10; local_25c = local_25c + 2) {
    (*VP8ITransform)(iVar1 + *(int *)(VP8Scan + local_25c * 4),auStack_218 + local_25c * 0x20,
                     param_3 + *(int *)(VP8Scan + local_25c * 4),1);
  }
  return local_260;
}

// ---- FUN_00769d94  @ 0x769d94
undefined4
FUN_00769d94(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,int param_5)

{
  int iVar1;
  int iVar2;
  undefined4 local_4c;
  undefined1 auStack_30 [36];
  
  iVar1 = *(int *)(param_1 + 0x24) + *(int *)(VP8I4ModeOffsets + param_5 * 4);
  iVar2 = *(int *)(param_1 + 0x28) + 0x194 + ((**(uint **)(param_1 + 0x2c) & 0x7f) >> 5) * 0x214;
  (*VP8FTransform)(param_3,iVar1,auStack_30);
  if (*(int *)(param_1 + 300) == 0) {
    local_4c = (*VP8EncQuantizeBlock)(auStack_30,param_2,0,iVar2);
  }
  else {
    local_4c = FUN_00768ff8(param_1,auStack_30,param_2,
                            *(int *)(param_1 + ((*(uint *)(param_1 + 0x68) & 3) + 0x1a) * 4 + 4) +
                            *(int *)(param_1 + ((*(int *)(param_1 + 0x68) >> 2) + 0x24) * 4),3,iVar2
                            ,*(undefined4 *)(iVar2 + 0x20c));
  }
  (*VP8ITransform)(iVar1,auStack_30,param_4,0);
  return local_4c;
}

// ---- FUN_00769e9c  @ 0x769e9c
int FUN_00769e9c(int param_1,int param_2,int param_3,int param_4)

{
  int iVar1;
  int iVar2;
  int iVar3;
  uint uVar4;
  uint local_128;
  uint local_124;
  undefined1 auStack_110 [260];
  
  iVar1 = *(int *)(param_1 + 0x28);
  iVar2 = *(int *)(param_1 + 0x24) + *(int *)(VP8UVModeOffsets + param_4 * 4);
  iVar3 = *(int *)(param_1 + 0x18);
  uVar4 = **(uint **)(param_1 + 0x2c);
  local_128 = 0;
  for (local_124 = 0; (int)local_124 < 8; local_124 = local_124 + 1) {
    (*VP8FTransform)(iVar3 + 0x100 + *(int *)(VP8Scan + (local_124 + 0x10) * 4),
                     iVar2 + *(int *)(VP8Scan + (local_124 + 0x10) * 4),
                     auStack_110 + local_124 * 0x20);
  }
  for (local_124 = 0; (int)local_124 < 8; local_124 = local_124 + 1) {
    iVar3 = (*VP8EncQuantizeBlock)
                      (auStack_110 + local_124 * 0x20,param_2 + 0x240 + local_124 * 0x20,0,
                       iVar1 + ((uVar4 & 0x7f) >> 5) * 0x214 + 0x2d4);
    local_128 = local_128 | iVar3 << (local_124 & 0xff);
  }
  for (local_124 = 0; (int)local_124 < 8; local_124 = local_124 + 2) {
    (*VP8ITransform)(iVar2 + *(int *)(VP8Scan + (local_124 + 0x10) * 4),
                     auStack_110 + local_124 * 0x20,
                     param_3 + *(int *)(VP8Scan + (local_124 + 0x10) * 4),1);
  }
  return local_128 << 0x10;
}

// ---- FUN_0076a068  @ 0x76a068
void FUN_0076a068(undefined4 *param_1,undefined4 *param_2)

{
  undefined4 uVar1;
  
  uVar1 = *param_1;
  *param_1 = *param_2;
  *param_2 = uVar1;
  return;
}

// ---- FUN_0076a088  @ 0x76a088
void FUN_0076a088(int param_1)

{
  FUN_0076a068(param_1 + 0x1c,param_1 + 0x20);
  return;
}

// ---- FUN_0076a0a8  @ 0x76a0a8
void FUN_0076a0a8(int param_1,int param_2)

{
  undefined4 uVar1;
  int iVar2;
  uint uVar3;
  int iVar4;
  undefined4 uVar5;
  int iVar6;
  undefined4 uVar7;
  undefined4 uVar8;
  uint uVar9;
  bool bVar10;
  int local_398;
  int local_378;
  int iStack_374;
  int local_370;
  int iStack_36c;
  int local_368;
  int iStack_364;
  uint local_360;
  int iStack_35c;
  undefined1 auStack_358 [32];
  undefined1 auStack_338 [804];
  int local_14;
  
  local_14 = __stack_chk_guard;
  iVar4 = *(int *)(param_1 + 0x28) + 0x194 + ((**(uint **)(param_1 + 0x2c) & 0x7f) >> 5) * 0x214;
  uVar5 = *(undefined4 *)(iVar4 + 0x1f0);
  iVar6 = *(int *)(iVar4 + 0x204);
  uVar7 = *(undefined4 *)(param_1 + 0x18);
  *(undefined4 *)(param_2 + 0x340) = 0xffffffff;
  local_398 = 0;
  do {
    if (3 < local_398) {
      FUN_00768f48(*(undefined4 *)(iVar4 + 0x1fc),param_2);
      VP8SetIntra16Mode(param_1,*(undefined4 *)(param_2 + 0x340));
      if (local_14 != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
        __stack_chk_fail();
      }
      return;
    }
    uVar8 = *(undefined4 *)(param_1 + 0x20);
    uVar1 = FUN_00769a60(param_1,&local_378,uVar8,local_398);
    local_378 = (*VP8SSE16x16)(uVar7,uVar8);
    iStack_374 = local_378 >> 0x1f;
    if (iVar6 == 0) {
      local_370 = 0;
      iStack_36c = 0;
    }
    else {
      iVar2 = (*VP8TDisto16x16)(uVar7,uVar8,&DAT_00873ae8);
      iStack_36c = iVar6 * iVar2 + 0x80;
      local_370 = iStack_36c >> 8;
      iStack_36c = iStack_36c >> 0x1f;
    }
    uVar3 = VP8GetCostLuma16(param_1,&local_378);
    uVar9 = (uint)*(ushort *)((int)&VP8FixedCostsI16 + local_398 * 2);
    local_368 = uVar9 + uVar3;
    iStack_364 = ((int)uVar3 >> 0x1f) + (uint)CARRY4(uVar9,uVar3);
    FUN_00768f48(uVar5,&local_378);
    if (local_398 == 0) {
LAB_0076a216:
      FUN_00768e80(param_2,&local_378);
      *(int *)(param_2 + 0x340) = local_398;
      *(undefined4 *)(param_2 + 0x358) = uVar1;
      memcpy((void *)(param_2 + 0x40),auStack_338,0x200);
      memcpy((void *)(param_2 + 0x20),auStack_358,0x20);
      FUN_0076a088(param_1);
    }
    else {
      iVar2 = *(int *)(param_2 + 0x1c);
      bVar10 = local_360 < *(uint *)(param_2 + 0x18);
      if ((int)((iStack_35c - iVar2) - (uint)bVar10) < 0 !=
          (SBORROW4(iStack_35c,iVar2) != SBORROW4(iStack_35c - iVar2,(uint)bVar10)))
      goto LAB_0076a216;
    }
    local_398 = local_398 + 1;
  } while( true );
}

// ---- FUN_0076a2e8  @ 0x76a2e8
undefined1 * FUN_0076a2e8(int param_1,int param_2)

{
  int iVar1;
  byte bVar2;
  byte bVar3;
  int iVar4;
  uint uVar5;
  
  iVar4 = *(int *)(*(int *)(param_1 + 0x28) + 0x30);
  uVar5 = *(uint *)(param_1 + 0x68) & 3;
  iVar1 = *(int *)(param_1 + 0x68) >> 2;
  if (uVar5 == 0) {
    bVar2 = *(byte *)(*(int *)(param_1 + 0x34) + iVar4 * iVar1 + -1);
  }
  else {
    bVar2 = *(byte *)(param_2 + *(int *)(param_1 + 0x68) + -1);
  }
  if (iVar1 == 0) {
    bVar3 = *(byte *)(*(int *)(param_1 + 0x34) + (uVar5 - iVar4));
  }
  else {
    bVar3 = *(byte *)(param_2 + *(int *)(param_1 + 0x68) + -4);
  }
  return VP8FixedCostsI4 + (uint)bVar3 * 200 + (uint)bVar2 * 0x14;
}

// ---- FUN_0076a390  @ 0x76a390
void FUN_0076a390(int param_1,int param_2)

{
  uint uVar1;
  undefined4 uVar2;
  int iVar3;
  uint uVar4;
  bool bVar5;
  int local_a8c;
  int local_a88;
  int local_a84;
  int local_a80;
  int local_a7c;
  int local_a78;
  int local_a74;
  undefined4 local_a70;
  int local_a6c;
  int local_a68;
  int local_a64;
  int local_a60;
  int local_a5c;
  undefined1 auStack_a58 [32];
  undefined1 auStack_a38 [24];
  uint local_a20;
  int iStack_a1c;
  undefined1 auStack_9f8 [800];
  undefined1 auStack_6d8 [24];
  uint local_6c0;
  int iStack_6bc;
  int local_380;
  int local_378;
  int iStack_374;
  int local_370;
  int iStack_36c;
  int local_368;
  int iStack_364;
  uint local_360;
  int iStack_35c;
  int local_20;
  int local_14;
  
  local_14 = __stack_chk_guard;
  local_a78 = *(int *)(param_1 + 0x28);
  local_a74 = local_a78 + 0x194 + ((**(uint **)(param_1 + 0x2c) & 0x7f) >> 5) * 0x214;
  local_a70 = *(undefined4 *)(local_a74 + 500);
  local_a6c = *(int *)(local_a74 + 0x204);
  local_a68 = *(int *)(param_1 + 0x18);
  local_a64 = *(int *)(param_1 + 0x20);
  local_a84 = 0;
  if (*(int *)(local_a78 + 0x5220) == 0) {
    uVar2 = 0;
  }
  else {
    FUN_00768e30(auStack_a38);
    local_a20 = 0xd3;
    iStack_a1c = 0;
    VP8IteratorStartI4(param_1);
    do {
      local_a7c = -1;
      local_a60 = local_a68 + *(int *)(VP8Scan + *(int *)(param_1 + 0x68) * 4);
      local_a5c = FUN_0076a2e8(param_1,param_2 + 0x344);
      local_a8c = local_a64 + *(int *)(VP8Scan + *(int *)(param_1 + 0x68) * 4);
      local_a88 = *(int *)(param_1 + 0x24) + 0x688;
      FUN_00768e30(auStack_6d8);
      VP8MakeIntra4Preds(param_1);
      for (local_a80 = 0; local_a80 < 10; local_a80 = local_a80 + 1) {
        local_20 = FUN_00769d94(param_1,auStack_a58,local_a60,local_a88,local_a80);
        local_20 = local_20 << (*(uint *)(param_1 + 0x68) & 0xff);
        local_378 = (*VP8SSE4x4)(local_a60,local_a88);
        iStack_374 = local_378 >> 0x1f;
        if (local_a6c == 0) {
          local_370 = 0;
          iStack_36c = 0;
        }
        else {
          iVar3 = (*VP8TDisto4x4)(local_a60,local_a88,&DAT_00873ae8);
          iStack_36c = local_a6c * iVar3 + 0x80;
          local_370 = iStack_36c >> 8;
          iStack_36c = iStack_36c >> 0x1f;
        }
        uVar4 = VP8GetCostLuma4(param_1,auStack_a58);
        uVar1 = (uint)*(ushort *)(local_a5c + local_a80 * 2);
        local_368 = uVar1 + uVar4;
        iStack_364 = ((int)uVar4 >> 0x1f) + (uint)CARRY4(uVar1,uVar4);
        FUN_00768f48(local_a70,&local_378);
        if ((local_a7c < 0) ||
           ((int)((iStack_35c - iStack_6bc) - (uint)(local_360 < local_6c0)) < 0 !=
            (SBORROW4(iStack_35c,iStack_6bc) !=
            SBORROW4(iStack_35c - iStack_6bc,(uint)(local_360 < local_6c0))))) {
          FUN_00768e80(auStack_6d8,&local_378);
          local_a7c = local_a80;
          FUN_0076a068(&local_a88,&local_a8c);
          memcpy(auStack_9f8 + *(int *)(param_1 + 0x68) * 0x20,auStack_a58,0x20);
        }
      }
      FUN_00768f48(*(undefined4 *)(local_a74 + 0x1fc),auStack_6d8);
      FUN_00768ec8(auStack_a38,auStack_6d8);
      local_a84 = (uint)*(ushort *)(local_a5c + local_a7c * 2) + local_a84;
      iVar3 = *(int *)(param_2 + 0x1c);
      bVar5 = local_a20 < *(uint *)(param_2 + 0x18);
      if (((int)((iStack_a1c - iVar3) - (uint)bVar5) < 0 ==
           (SBORROW4(iStack_a1c,iVar3) != SBORROW4(iStack_a1c - iVar3,(uint)bVar5))) ||
         (*(int *)(local_a78 + 0x5220) < local_a84)) {
        uVar2 = 0;
        goto LAB_0076a8ec;
      }
      if (local_a64 + *(int *)(VP8Scan + *(int *)(param_1 + 0x68) * 4) != local_a8c) {
        (*VP8Copy4x4)(local_a8c,local_a64 + *(int *)(VP8Scan + *(int *)(param_1 + 0x68) * 4));
      }
      *(char *)(param_2 + *(int *)(param_1 + 0x68) + 0x344) = (char)local_a7c;
      uVar4 = *(uint *)(param_1 + 0x68);
      iVar3 = *(int *)(param_1 + 0x68) >> 2;
      *(uint *)(param_1 + (iVar3 + 0x24) * 4) = (uint)(local_380 != 0);
      *(undefined4 *)(param_1 + ((uVar4 & 3) + 0x1a) * 4 + 4) =
           *(undefined4 *)(param_1 + (iVar3 + 0x24) * 4);
      iVar3 = VP8IteratorRotateI4(param_1,local_a64);
    } while (iVar3 != 0);
    FUN_00768e80(param_2,auStack_a38);
    VP8SetIntra4Mode(param_1,param_2 + 0x344);
    FUN_0076a088(param_1);
    memcpy((void *)(param_2 + 0x40),auStack_9f8,0x200);
    uVar2 = 1;
  }
LAB_0076a8ec:
  if (local_14 == __stack_chk_guard) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar2);
}

// ---- FUN_0076a924  @ 0x76a924
void FUN_0076a924(int param_1,int param_2)

{
  uint uVar1;
  int iVar2;
  void *__src;
  int iVar3;
  uint uVar4;
  undefined4 uVar5;
  int local_6f4;
  undefined1 auStack_6d8 [24];
  uint local_6c0;
  int iStack_6bc;
  int local_378;
  int iStack_374;
  undefined4 local_370;
  undefined4 uStack_36c;
  int local_368;
  int iStack_364;
  uint local_360;
  int iStack_35c;
  undefined1 auStack_138 [280];
  undefined4 local_20;
  int local_14;
  
  local_14 = __stack_chk_guard;
  uVar5 = *(undefined4 *)
           (*(int *)(param_1 + 0x28) + ((**(uint **)(param_1 + 0x2c) & 0x7f) >> 5) * 0x214 + 0x38c);
  iVar2 = *(int *)(param_1 + 0x18);
  __src = (void *)(*(int *)(param_1 + 0x20) + 0x100);
  iVar3 = *(int *)(param_1 + 0x1c);
  *(undefined4 *)(param_2 + 0x354) = 0xffffffff;
  FUN_00768e30(auStack_6d8);
  local_6f4 = 0;
  do {
    if (3 < local_6f4) {
      VP8SetIntraUVMode(param_1,*(undefined4 *)(param_2 + 0x354));
      FUN_00768ec8(param_2,auStack_6d8);
      if (local_14 != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
        __stack_chk_fail();
      }
      return;
    }
    local_20 = FUN_00769e9c(param_1,&local_378,__src,local_6f4);
    local_378 = (*VP8SSE16x8)(iVar2 + 0x100,__src);
    iStack_374 = local_378 >> 0x1f;
    local_370 = 0;
    uStack_36c = 0;
    uVar1 = VP8GetCostUV(param_1,&local_378);
    uVar4 = (uint)*(ushort *)((int)&VP8FixedCostsUV + local_6f4 * 2);
    local_368 = uVar4 + uVar1;
    iStack_364 = ((int)uVar1 >> 0x1f) + (uint)CARRY4(uVar4,uVar1);
    FUN_00768f48(uVar5,&local_378);
    if (local_6f4 == 0) {
LAB_0076aab8:
      FUN_00768e80(auStack_6d8,&local_378);
      *(int *)(param_2 + 0x354) = local_6f4;
      memcpy((void *)(param_2 + 0x240),auStack_138,0x100);
      memcpy((void *)(iVar3 + 0x100),__src,0x80);
    }
    else if ((int)((iStack_35c - iStack_6bc) - (uint)(local_360 < local_6c0)) < 0 !=
             (SBORROW4(iStack_35c,iStack_6bc) !=
             SBORROW4(iStack_35c - iStack_6bc,(uint)(local_360 < local_6c0)))) goto LAB_0076aab8;
    local_6f4 = local_6f4 + 1;
  } while( true );
}

// ---- FUN_0076ab80  @ 0x76ab80
void FUN_0076ab80(int param_1,int param_2)

{
  undefined1 uVar1;
  uint uVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  int iVar7;
  uint local_20;
  
  iVar5 = *(int *)(param_1 + 0x28);
  local_20 = 0;
  if ((**(byte **)(param_1 + 0x2c) & 3) == 1) {
    local_20 = FUN_00769a60(param_1,param_2,*(undefined4 *)(param_1 + 0x1c),
                            **(undefined1 **)(param_1 + 0x34));
  }
  else {
    VP8IteratorStartI4(param_1);
    do {
      uVar1 = *(undefined1 *)
               (*(int *)(param_1 + 0x34) +
               (*(uint *)(param_1 + 0x68) & 3) +
               *(int *)(iVar5 + 0x30) * (*(int *)(param_1 + 0x68) >> 2));
      iVar3 = *(int *)(param_1 + 0x18);
      iVar6 = *(int *)(VP8Scan + *(int *)(param_1 + 0x68) * 4);
      iVar4 = *(int *)(param_1 + 0x1c);
      iVar7 = *(int *)(VP8Scan + *(int *)(param_1 + 0x68) * 4);
      VP8MakeIntra4Preds(param_1);
      iVar3 = FUN_00769d94(param_1,param_2 + 0x40 + *(int *)(param_1 + 0x68) * 0x20,iVar3 + iVar6,
                           iVar4 + iVar7,uVar1);
      local_20 = iVar3 << (*(uint *)(param_1 + 0x68) & 0xff) | local_20;
      iVar3 = VP8IteratorRotateI4(param_1,*(undefined4 *)(param_1 + 0x1c));
    } while (iVar3 != 0);
  }
  uVar2 = FUN_00769e9c(param_1,param_2,*(int *)(param_1 + 0x1c) + 0x100,
                       (**(uint **)(param_1 + 0x2c) & 0xf) >> 2);
  *(uint *)(param_2 + 0x358) = uVar2 | local_20;
  return;
}

// ---- FUN_0076ad5c  @ 0x76ad5c
undefined8 FUN_0076ad5c(int param_1)

{
  uint uVar1;
  uint uVar2;
  uint uVar3;
  uint uVar4;
  
  uVar3 = *(int *)(param_1 + 0x14) + *(int *)(param_1 + 8);
  uVar1 = uVar3 + 1;
  uVar2 = uVar1 * 8;
  uVar4 = *(uint *)(param_1 + 0xc);
  return CONCAT44(((uint)(0xfffffffe < uVar3) << 3 | uVar1 >> 0x1d) +
                  ((int)uVar4 >> 0x1f) + (uint)CARRY4(uVar2,uVar4),uVar2 + uVar4);
}

// ---- FUN_0076ada8  @ 0x76ada8
undefined4 FUN_0076ada8(int param_1)

{
  return *(undefined4 *)(param_1 + 0x10);
}

// ---- FUN_0076adb8  @ 0x76adb8
undefined4 FUN_0076adb8(int param_1)

{
  return *(undefined4 *)(param_1 + 0x14);
}

// ---- FUN_0076adc8  @ 0x76adc8
void FUN_0076adc8(undefined1 *param_1,undefined4 param_2)

{
  *param_1 = (char)param_2;
  param_1[1] = (char)((uint)param_2 >> 8);
  param_1[2] = (char)((uint)param_2 >> 0x10);
  return;
}

// ---- FUN_0076adfc  @ 0x76adfc
void FUN_0076adfc(int param_1,undefined4 param_2)

{
  FUN_0076adc8(param_1,param_2);
  *(char *)(param_1 + 3) = (char)((uint)param_2 >> 0x18);
  return;
}

// ---- FUN_0076ae20  @ 0x76ae20
bool FUN_0076ae20(int param_1)

{
  return *(int *)(param_1 + 0x15c) != 0;
}

// ---- FUN_0076ae38  @ 0x76ae38
bool FUN_0076ae38(int param_1)

{
  int iVar1;
  undefined1 local_c [8];
  
  local_c[0] = 0;
  iVar1 = (**(code **)(param_1 + 0x48))(local_c,1,param_1);
  return iVar1 != 0;
}

// ---- FUN_0076ae68  @ 0x76ae68
void FUN_0076ae68(int param_1,undefined4 param_2)

{
  int iVar1;
  undefined4 uVar2;
  undefined1 auStack_18 [4];
  undefined1 auStack_14 [8];
  int local_c;
  
  local_c = __stack_chk_guard;
  iVar1 = *(int *)(param_1 + 4);
  memcpy(auStack_18,&DAT_00873b48,0xc);
  FUN_0076adfc(auStack_14,param_2);
  iVar1 = (**(code **)(iVar1 + 0x48))(auStack_18,0xc,iVar1);
  if (iVar1 == 0) {
    uVar2 = 8;
  }
  else {
    uVar2 = 0;
  }
  if (local_c != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar2);
  }
  return;
}

// ---- FUN_0076aee8  @ 0x76aee8
void FUN_0076aee8(int param_1)

{
  int iVar1;
  int iVar2;
  undefined4 uVar3;
  undefined4 local_28;
  undefined4 local_20;
  undefined4 local_1c;
  undefined4 local_18;
  undefined4 local_14;
  undefined2 local_10;
  int local_c;
  
  local_c = __stack_chk_guard;
  iVar2 = *(int *)(param_1 + 4);
  local_1c = 0;
  local_18 = 0;
  local_14 = 0;
  local_10 = 0;
  local_20 = 0x58385056;
  local_28 = 0;
  iVar1 = FUN_0076ae20(param_1);
  if (iVar1 == 0) {
    __assert2("../libwebp/src/enc/syntax.c",0x47,"PutVP8XHeader","IsVP8XNeeded(enc)");
  }
  if ((*(int *)(iVar2 + 8) < 1) || (*(int *)(iVar2 + 0xc) < 1)) {
    __assert2("../libwebp/src/enc/syntax.c",0x48,"PutVP8XHeader",
              "pic->width >= 1 && pic->height >= 1");
  }
  if ((0x1000000 < *(int *)(iVar2 + 8)) || (0x1000000 < *(int *)(iVar2 + 0xc))) {
    __assert2("../libwebp/src/enc/syntax.c",0x49,"PutVP8XHeader",
              "pic->width <= MAX_CANVAS_SIZE && pic->height <= MAX_CANVAS_SIZE");
  }
  if (*(int *)(param_1 + 0x15c) != 0) {
    local_28 = 0x10;
  }
  FUN_0076adfc(&local_1c,10);
  FUN_0076adfc(&local_18,local_28);
  FUN_0076adc8(&local_14,*(int *)(iVar2 + 8) + -1);
  FUN_0076adc8((int)&local_14 + 3,*(int *)(iVar2 + 0xc) + -1);
  iVar1 = (**(code **)(iVar2 + 0x48))(&local_20,0x12,iVar2);
  if (iVar1 == 0) {
    uVar3 = 8;
  }
  else {
    uVar3 = 0;
  }
  if (local_c != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar3);
  }
  return;
}

// ---- FUN_0076b090  @ 0x76b090
void FUN_0076b090(int param_1)

{
  int iVar1;
  int iVar2;
  undefined4 uVar3;
  undefined4 local_14;
  undefined4 local_10;
  int local_c;
  
  local_c = __stack_chk_guard;
  iVar2 = *(int *)(param_1 + 4);
  local_10 = 0;
  local_14 = 0x48504c41;
  if (*(int *)(param_1 + 0x15c) == 0) {
    __assert2("../libwebp/src/enc/syntax.c",0x5f,"PutAlphaChunk","enc->has_alpha_");
  }
  FUN_0076adfc(&local_10,*(undefined4 *)(param_1 + 0x164));
  iVar1 = (**(code **)(iVar2 + 0x48))(&local_14,8,iVar2);
  if (iVar1 == 0) {
    uVar3 = 8;
  }
  else {
    iVar1 = (**(code **)(iVar2 + 0x48))
                      (*(undefined4 *)(param_1 + 0x160),*(undefined4 *)(param_1 + 0x164),iVar2);
    if (iVar1 == 0) {
      uVar3 = 8;
    }
    else if (((*(uint *)(param_1 + 0x164) & 1) == 0) || (iVar2 = FUN_0076ae38(iVar2), iVar2 != 0)) {
      uVar3 = 0;
    }
    else {
      uVar3 = 8;
    }
  }
  if (local_c != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar3);
  }
  return;
}

// ---- FUN_0076b19c  @ 0x76b19c
void FUN_0076b19c(int param_1,undefined4 param_2)

{
  int iVar1;
  undefined4 uVar2;
  undefined4 local_14;
  undefined4 local_10;
  int local_c;
  
  local_c = __stack_chk_guard;
  local_10 = 0;
  local_14 = 0x20385056;
  FUN_0076adfc(&local_10,param_2);
  iVar1 = (**(code **)(param_1 + 0x48))(&local_14,8,param_1);
  if (iVar1 == 0) {
    uVar2 = 8;
  }
  else {
    uVar2 = 0;
  }
  if (local_c != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar2);
  }
  return;
}

// ---- FUN_0076b228  @ 0x76b228
void FUN_0076b228(int param_1,int param_2,uint param_3)

{
  int iVar1;
  undefined4 uVar2;
  uint uVar3;
  byte local_18;
  undefined1 local_17;
  undefined1 local_16;
  undefined1 local_15;
  undefined1 local_14;
  undefined1 local_13;
  undefined1 local_12;
  undefined1 local_11;
  undefined1 local_10;
  undefined1 local_f;
  int local_c;
  
  local_c = __stack_chk_guard;
  if (param_3 < 0x80000) {
    uVar3 = param_3 << 5 | param_2 << 1;
    local_18 = (byte)uVar3 | 0x10;
    local_17 = (undefined1)(uVar3 >> 8);
    local_16 = (undefined1)(uVar3 >> 0x10);
    local_15 = 0x9d;
    local_14 = 1;
    local_13 = 0x2a;
    local_12 = (undefined1)*(undefined4 *)(param_1 + 8);
    local_11 = (undefined1)((uint)*(undefined4 *)(param_1 + 8) >> 8);
    local_10 = (undefined1)*(undefined4 *)(param_1 + 0xc);
    local_f = (undefined1)((uint)*(undefined4 *)(param_1 + 0xc) >> 8);
    iVar1 = (**(code **)(param_1 + 0x48))(&local_18,10,param_1);
    if (iVar1 == 0) {
      uVar2 = 8;
    }
    else {
      uVar2 = 0;
    }
  }
  else {
    uVar2 = 6;
  }
  if (local_c != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar2);
  }
  return;
}

// ---- FUN_0076b310  @ 0x76b310
undefined4 FUN_0076b310(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  undefined4 uVar2;
  int local_10;
  
  uVar2 = *(undefined4 *)(param_1 + 4);
  local_10 = FUN_0076ae68(param_1,param_4);
  if ((((local_10 == 0) &&
       ((iVar1 = FUN_0076ae20(param_1), iVar1 == 0 ||
        (local_10 = FUN_0076aee8(param_1), local_10 == 0)))) &&
      ((*(int *)(param_1 + 0x15c) == 0 || (local_10 = FUN_0076b090(param_1), local_10 == 0)))) &&
     ((local_10 = FUN_0076b19c(uVar2,param_3), local_10 == 0 &&
      (local_10 = FUN_0076b228(uVar2,*(undefined4 *)(param_1 + 0x24),param_2), local_10 == 0)))) {
    uVar2 = 1;
  }
  else {
    uVar2 = WebPEncodingSetError(uVar2,local_10);
  }
  return uVar2;
}

// ---- FUN_0076b3c4  @ 0x76b3c4
void FUN_0076b3c4(undefined4 param_1,int param_2)

{
  int iVar1;
  int local_18;
  
  iVar1 = VP8PutBitUniform(param_1,1 < *(int *)(param_2 + 0x18));
  if (iVar1 != 0) {
    VP8PutBitUniform(param_1,*(undefined4 *)(param_2 + 0x1c));
    iVar1 = VP8PutBitUniform(param_1,1);
    if (iVar1 != 0) {
      VP8PutBitUniform(param_1,1);
      for (local_18 = 0; local_18 < 4; local_18 = local_18 + 1) {
        VP8PutSignedValue(param_1,*(undefined4 *)(param_2 + local_18 * 0x214 + 0x37c),7);
      }
      for (local_18 = 0; local_18 < 4; local_18 = local_18 + 1) {
        VP8PutSignedValue(param_1,*(undefined4 *)(param_2 + local_18 * 0x214 + 0x380),6);
      }
    }
    if (*(int *)(param_2 + 0x1c) != 0) {
      for (local_18 = 0; local_18 < 3; local_18 = local_18 + 1) {
        iVar1 = VP8PutBitUniform(param_1,*(char *)(param_2 + 0xa00 + local_18) != -1);
        if (iVar1 != 0) {
          VP8PutValue(param_1,*(undefined1 *)(param_2 + 0xa00 + local_18),8);
        }
      }
    }
  }
  return;
}

// ---- FUN_0076b4e0  @ 0x76b4e0
void FUN_0076b4e0(undefined4 param_1,undefined4 *param_2)

{
  int iVar1;
  
  iVar1 = param_2[3];
  VP8PutBitUniform(param_1,*param_2);
  VP8PutValue(param_1,param_2[1],6);
  VP8PutValue(param_1,param_2[2],3);
  iVar1 = VP8PutBitUniform(param_1,iVar1 != 0);
  if ((iVar1 != 0) && (iVar1 = VP8PutBitUniform(param_1,param_2[3] != 0), iVar1 != 0)) {
    VP8PutValue(param_1,0,4);
    VP8PutSignedValue(param_1,param_2[3],6);
    VP8PutValue(param_1,0,3);
  }
  return;
}

// ---- FUN_0076b57c  @ 0x76b57c
void FUN_0076b57c(undefined4 param_1,int param_2)

{
  VP8PutValue(param_1,*(undefined4 *)(param_2 + 0x9e4),7);
  VP8PutSignedValue(param_1,*(undefined4 *)(param_2 + 0x9ec),4);
  VP8PutSignedValue(param_1,*(undefined4 *)(param_2 + 0x9f0),4);
  VP8PutSignedValue(param_1,*(undefined4 *)(param_2 + 0x9f4),4);
  VP8PutSignedValue(param_1,*(undefined4 *)(param_2 + 0x9f8),4);
  VP8PutSignedValue(param_1,*(undefined4 *)(param_2 + 0x9fc),4);
  return;
}

// ---- FUN_0076b5f4  @ 0x76b5f4
void FUN_0076b5f4(int param_1,int param_2)

{
  uint uVar1;
  undefined4 uVar2;
  int local_34;
  undefined1 auStack_2c [24];
  int local_14;
  
  local_14 = __stack_chk_guard;
  local_34 = 0;
  do {
    if (*(int *)(param_1 + 0x34) + -1 <= local_34) {
      if (local_34 == 0) {
        uVar2 = 1;
      }
      else {
        uVar2 = (**(code **)(param_2 + 0x48))(auStack_2c,local_34 * 3,param_2);
      }
LAB_0076b6ce:
      if (local_14 != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
        __stack_chk_fail(uVar2);
      }
      return;
    }
    uVar1 = FUN_0076adb8(param_1 + 0x58 + local_34 * 0x20);
    if (0xffffff < uVar1) {
      uVar2 = WebPEncodingSetError(param_2,7);
      goto LAB_0076b6ce;
    }
    auStack_2c[local_34 * 3] = (char)uVar1;
    auStack_2c[local_34 * 3 + 1] = (char)(uVar1 >> 8);
    auStack_2c[local_34 * 3 + 2] = (char)(uVar1 >> 0x10);
    local_34 = local_34 + 1;
  } while( true );
}

// ---- FUN_0076b6ec  @ 0x76b6ec
bool FUN_0076b6ec(int *param_1)

{
  int iVar1;
  int *piVar2;
  int iVar3;
  longlong lVar4;
  longlong lVar5;
  longlong lVar6;
  
  piVar2 = param_1 + 0xe;
  iVar3 = param_1[10];
  iVar1 = param_1[0xb];
  lVar4 = FUN_0076ad5c(piVar2);
  iVar1 = iVar1 * iVar3 * 7;
  if (iVar1 < 0) {
    iVar1 = iVar1 + 7;
  }
  VP8BitWriterInit(piVar2,iVar1 >> 3);
  VP8PutBitUniform(piVar2,0);
  VP8PutBitUniform(piVar2,0);
  FUN_0076b3c4(piVar2,param_1);
  FUN_0076b4e0(piVar2,param_1 + 2);
  VP8PutValue(piVar2,*(undefined4 *)(*param_1 + 0x48),2);
  FUN_0076b57c(piVar2,param_1);
  VP8PutBitUniform(piVar2,0);
  VP8WriteProbas(piVar2,param_1 + 0x280);
  lVar5 = FUN_0076ad5c(piVar2);
  VP8CodeIntraModes(param_1);
  VP8BitWriterFinish(piVar2);
  lVar6 = FUN_0076ad5c(piVar2);
  if (*(int *)(param_1[1] + 0x58) != 0) {
    lVar4 = (lVar5 - lVar4) + 7;
    *(uint *)(*(int *)(param_1[1] + 0x58) + 0x24) =
         (uint)lVar4 >> 3 | (int)((ulonglong)lVar4 >> 0x20) * 0x20000000;
    lVar4 = (lVar6 - lVar5) + 7;
    *(uint *)(*(int *)(param_1[1] + 0x58) + 0x28) =
         (uint)lVar4 >> 3 | (int)((ulonglong)lVar4 >> 0x20) * 0x20000000;
    *(int *)(*(int *)(param_1[1] + 0x58) + 0x8c) = param_1[0x59];
    *(int *)(*(int *)(param_1[1] + 0x58) + 0x90) = param_1[100];
  }
  return param_1[0x15] == 0;
}

// ---- FUN_0076bb98  @ 0x76bb98
int FUN_0076bb98(undefined4 param_1,int param_2,undefined1 *param_3)

{
  int iVar1;
  
  iVar1 = VP8PutBit(param_1,param_2 != 0,*param_3);
  if (((iVar1 != 0) && (iVar1 = VP8PutBit(param_1,param_2 != 1,param_3[1]), iVar1 != 0)) &&
     (iVar1 = VP8PutBit(param_1,param_2 != 2,param_3[2]), iVar1 != 0)) {
    iVar1 = VP8PutBit(param_1,5 < param_2,param_3[3]);
    if (iVar1 == 0) {
      iVar1 = VP8PutBit(param_1,param_2 != 3,param_3[4]);
      if (iVar1 != 0) {
        VP8PutBit(param_1,param_2 != 4,param_3[5]);
      }
    }
    else {
      iVar1 = VP8PutBit(param_1,param_2 != 6,param_3[6]);
      if ((iVar1 != 0) && (iVar1 = VP8PutBit(param_1,param_2 != 7,param_3[7]), iVar1 != 0)) {
        VP8PutBit(param_1,param_2 != 8,param_3[8]);
      }
    }
  }
  return param_2;
}

// ---- FUN_0076bcd0  @ 0x76bcd0
void FUN_0076bcd0(undefined4 param_1,int param_2)

{
  int iVar1;
  undefined4 uVar2;
  
  if ((param_2 == 1) || (param_2 == 3)) {
    uVar2 = 1;
  }
  else {
    uVar2 = 0;
  }
  iVar1 = VP8PutBit(param_1,uVar2,0x9c);
  if (iVar1 == 0) {
    VP8PutBit(param_1,param_2 == 2,0xa3);
  }
  else {
    VP8PutBit(param_1,param_2 == 1,0x80);
  }
  return;
}

// ---- FUN_0076bd34  @ 0x76bd34
void FUN_0076bd34(undefined4 param_1,int param_2)

{
  int iVar1;
  
  iVar1 = VP8PutBit(param_1,param_2 != 0,0x8e);
  if ((iVar1 != 0) && (iVar1 = VP8PutBit(param_1,param_2 != 2,0x72), iVar1 != 0)) {
    VP8PutBit(param_1,param_2 != 3,0xb7);
  }
  return;
}

// ---- FUN_0076bd90  @ 0x76bd90
void FUN_0076bd90(undefined4 param_1,uint param_2,undefined1 *param_3)

{
  int iVar1;
  undefined1 *local_14;
  
  iVar1 = VP8PutBit(param_1,1 < (int)param_2,*param_3);
  local_14 = param_3;
  if (iVar1 != 0) {
    local_14 = param_3 + 1;
  }
  VP8PutBit(param_1,param_2 & 1,local_14[1]);
  return;
}

// ---- FUN_0076c148  @ 0x76c148
uint FUN_0076c148(int param_1)

{
  uint uVar1;
  
  if (param_1 == 0) {
    uVar1 = 0xffffffff;
  }
  else {
    uVar1 = LZCOUNT(param_1) ^ 0x1f;
  }
  return uVar1;
}

// ---- FUN_0076c168  @ 0x76c168
int FUN_0076c168(uint param_1)

{
  int iVar1;
  
  iVar1 = FUN_0076c148(param_1);
  if ((-param_1 & param_1) != param_1) {
    iVar1 = iVar1 + 1;
  }
  return iVar1;
}

// ---- FUN_0076c198  @ 0x76c198
void FUN_0076c198(int param_1,int *param_2,uint *param_3,uint *param_4)

{
  int iVar1;
  uint uVar2;
  uint uVar3;
  
  uVar2 = param_1 - 1;
  iVar1 = FUN_0076c148(uVar2);
  if (iVar1 < 1) {
    uVar3 = 0;
  }
  else {
    uVar3 = iVar1 - 1;
  }
  *param_3 = uVar3;
  *param_4 = (1 << (*param_3 & 0xff)) - 1U & uVar2;
  if (iVar1 < 1) {
    if (iVar1 == 0) {
      iVar1 = 1;
    }
    else {
      iVar1 = 0;
    }
  }
  else {
    iVar1 = iVar1 * 2 + ((int)uVar2 >> (iVar1 - 1U & 0x3f) & 1U);
  }
  *param_2 = iVar1;
  return;
}

// ---- FUN_0076c220  @ 0x76c220
undefined4 * FUN_0076c220(undefined4 *param_1,undefined4 param_2)

{
  undefined4 local_8;
  
  local_8._0_2_ = (ushort)local_8 & 0xff00;
  local_8 = CONCAT22(1,(ushort)local_8);
  *param_1 = local_8;
  param_1[1] = param_2;
  return param_1;
}

// ---- FUN_0076c24c  @ 0x76c24c
bool FUN_0076c24c(char *param_1)

{
  return *param_1 == '\0';
}

// ---- FUN_0076c264  @ 0x76c264
bool FUN_0076c264(char *param_1)

{
  return *param_1 == '\x01';
}

// ---- FUN_0076c27c  @ 0x76c27c
uint FUN_0076c27c(char *param_1,uint param_2)

{
  if (*param_1 != '\0') {
    __assert2("../libwebp/src/enc/./backward_references.h",0x97,"PixOrCopyLiteral",
              "p->mode == kLiteral");
  }
  return *(uint *)(param_1 + 4) >> ((param_2 & 0x1f) << 3) & 0xff;
}

// ---- FUN_0076c2c8  @ 0x76c2c8
undefined2 FUN_0076c2c8(int param_1)

{
  return *(undefined2 *)(param_1 + 2);
}

// ---- FUN_0076c2d8  @ 0x76c2d8
undefined4 FUN_0076c2d8(char *param_1)

{
  if (*param_1 != '\x01') {
    __assert2("../libwebp/src/enc/./backward_references.h",0xa5,"PixOrCopyCacheIdx",
              "p->mode == kCacheIdx");
  }
  if (0x1ff < *(uint *)(param_1 + 4)) {
    __assert2("../libwebp/src/enc/./backward_references.h",0xa6,"PixOrCopyCacheIdx",
              "p->argb_or_distance < (1U << MAX_COLOR_CACHE_BITS)");
  }
  return *(undefined4 *)(param_1 + 4);
}

// ---- FUN_0076c344  @ 0x76c344
undefined4 FUN_0076c344(char *param_1)

{
  if (*param_1 != '\x02') {
    __assert2("../libwebp/src/enc/./backward_references.h",0xab,"PixOrCopyDistance",
              "p->mode == kCopy");
  }
  return *(undefined4 *)(param_1 + 4);
}

// ---- FUN_0076c380  @ 0x76c380
uint FUN_0076c380(int param_1)

{
  return *(int *)(param_1 + 4) + 7U >> 3;
}

// ---- FUN_0076c398  @ 0x76c398
undefined4 FUN_0076c398(undefined4 *param_1)

{
  return *param_1;
}

// ---- FUN_0076c3a8  @ 0x76c3a8
int FUN_0076c3a8(int param_1)

{
  int iVar1;
  
  if (*(int *)(param_1 + 0x1900) < 1) {
    iVar1 = 0x118;
  }
  else {
    iVar1 = (1 << (*(uint *)(param_1 + 0x1900) & 0xff)) + 0x118;
  }
  return iVar1;
}

// ---- FUN_0076c3d8  @ 0x76c3d8
uint FUN_0076c3d8(int param_1,uint param_2)

{
  return ((1 << (param_2 & 0xff)) + param_1) - 1U >> (param_2 & 0xff);
}

// ---- FUN_0076c400  @ 0x76c400
uint FUN_0076c400(uint param_1,uint param_2)

{
  return ((param_1 & 0xff00ff) - (param_2 & 0xff00ff)) - 0xff0100 & 0xff00ff |
         ((param_1 & 0xff00ff00) - (param_2 & 0xff00ff00)) + 0xff00ff & 0xff00ff00;
}

// ---- FUN_0076c478  @ 0x76c478
void FUN_0076c478(int param_1,void *param_2,size_t *param_3)

{
  int iVar1;
  int iVar2;
  undefined4 uVar3;
  int local_1430;
  int local_142c;
  int local_1428;
  uint local_1424;
  size_t local_1420;
  uint *local_141c;
  uint local_1418;
  uint auStack_140c [1024];
  char acStack_40c [1024];
  int local_c;
  
  local_c = __stack_chk_guard;
  local_1420 = 0;
  memset(acStack_40c,0,0x400);
  local_141c = *(uint **)(param_1 + 0x34);
  iVar1 = *(int *)(param_1 + 8);
  iVar2 = *(int *)(param_1 + 0xc);
  local_1418 = ~*local_141c;
  local_1428 = 0;
  do {
    if (iVar2 <= local_1428) {
      local_1420 = 0;
      for (local_1430 = 0; local_1430 < 0x400; local_1430 = local_1430 + 1) {
        if (acStack_40c[local_1430] != '\0') {
          *(uint *)((int)param_2 + local_1420 * 4) = auStack_140c[local_1430];
          local_1420 = local_1420 + 1;
        }
      }
      qsort(param_2,local_1420,4,(__compar_fn_t)&LAB_0076c444_1);
      *param_3 = local_1420;
      uVar3 = 1;
LAB_0076c7a2:
      if (local_c == __stack_chk_guard) {
        return;
      }
                    /* WARNING: Subroutine does not return */
      __stack_chk_fail(uVar3);
    }
    for (local_142c = 0; local_142c < iVar1; local_142c = local_142c + 1) {
      if (local_141c[local_142c] != local_1418) {
        local_1418 = local_141c[local_142c];
        for (local_1424 = local_1418 * 0x1e35a7bd >> 0x16; acStack_40c[local_1424] != '\0';
            local_1424 = local_1424 + 1 & 0x3ff) {
          if (auStack_140c[local_1424] == local_1418) goto LAB_0076c66e;
        }
        auStack_140c[local_1424] = local_1418;
        acStack_40c[local_1424] = '\x01';
        local_1420 = local_1420 + 1;
        if (0x100 < (int)local_1420) {
          uVar3 = 0;
          goto LAB_0076c7a2;
        }
      }
LAB_0076c66e:
    }
    local_141c = local_141c + *(int *)(param_1 + 0x38);
    local_1428 = local_1428 + 1;
  } while( true );
}

// ---- FUN_0076c7d4  @ 0x76c7d4
undefined4
FUN_0076c7d4(int *param_1,int param_2,int param_3,int param_4,undefined8 *param_5,
            undefined8 *param_6)

{
  void *__ptr;
  int iVar1;
  undefined4 uVar2;
  int iVar3;
  int iVar4;
  undefined8 uVar5;
  int *local_3c;
  int local_38;
  int local_34;
  int *local_30;
  int local_2c;
  undefined1 auStack_18 [8];
  undefined1 auStack_10 [12];
  
  local_30 = (int *)0x0;
  local_2c = *param_1;
  __ptr = malloc(0x3220);
  if (__ptr == (void *)0x0) {
    uVar2 = 0;
  }
  else {
    iVar3 = (int)__ptr + 0x1910;
    VP8LHistogramInit(__ptr,0);
    VP8LHistogramInit(iVar3,0);
    local_3c = param_1;
    for (local_34 = 0; local_34 < param_3; local_34 = local_34 + 1) {
      for (local_38 = 0; local_38 < param_2; local_38 = local_38 + 1) {
        iVar4 = local_3c[local_38];
        iVar1 = FUN_0076c400(iVar4,local_2c);
        if ((iVar1 != 0) && ((local_30 == (int *)0x0 || (local_30[local_38] != iVar4)))) {
          FUN_0076c220(auStack_18,iVar4);
          FUN_0076c220(auStack_10,iVar1);
          VP8LHistogramAddSinglePixOrCopy(iVar3,auStack_18);
          VP8LHistogramAddSinglePixOrCopy(__ptr,auStack_10);
          local_2c = iVar4;
        }
      }
      local_30 = local_3c;
      local_3c = local_3c + param_4;
    }
    uVar5 = VP8LHistogramEstimateBitsBulk(iVar3);
    *param_5 = uVar5;
    uVar5 = VP8LHistogramEstimateBitsBulk(__ptr);
    *param_6 = uVar5;
    free(__ptr);
    uVar2 = 1;
  }
  return uVar2;
}

// ---- FUN_0076c908  @ 0x76c908
undefined4 FUN_0076c908(int param_1,int param_2)

{
  undefined4 uVar1;
  int iVar2;
  double local_18;
  double local_10;
  
  iVar2 = *(int *)(param_1 + 4);
  if ((iVar2 == 0) || (*(int *)(iVar2 + 0x34) == 0)) {
    __assert2("../libwebp/src/enc/vp8l.c",0x91,"VP8LEncAnalyze","pic != NULL && pic->argb != NULL");
  }
  uVar1 = FUN_0076c478(iVar2,param_1 + 0x38,param_1 + 0x34);
  *(undefined4 *)(param_1 + 0x30) = uVar1;
  if (((param_2 == 3) && (*(int *)(param_1 + 0x30) != 0)) && (*(int *)(param_1 + 0x34) < 0x40)) {
    *(undefined4 *)(param_1 + 0x30) = 0;
  }
  if (*(int *)(param_1 + 0x30) == 0) {
    if (param_2 == 2) {
      *(undefined4 *)(param_1 + 0x2c) = 1;
      *(undefined4 *)(param_1 + 0x24) = 1;
    }
    else {
      iVar2 = FUN_0076c7d4(*(undefined4 *)(iVar2 + 0x34),*(undefined4 *)(iVar2 + 8),
                           *(undefined4 *)(iVar2 + 0xc),*(undefined4 *)(iVar2 + 0x38),&local_18,
                           &local_10);
      if (iVar2 == 0) {
        return 0;
      }
      if (local_10 < local_18 * 0.95) {
        *(undefined4 *)(param_1 + 0x2c) = 1;
        *(undefined4 *)(param_1 + 0x24) = 1;
      }
    }
  }
  return 1;
}

// ---- FUN_0076ca10  @ 0x76ca10
int FUN_0076ca10(int *param_1,int param_2)

{
  uint uVar1;
  void *__ptr;
  int iVar2;
  int iVar3;
  undefined4 uVar4;
  int iVar5;
  int iVar6;
  bool bVar7;
  int local_44;
  int local_40;
  int local_3c;
  void *local_38;
  void *local_34;
  uint local_10;
  int iStack_c;
  
  local_3c = 1;
  local_10 = 0;
  iStack_c = 0;
  iVar3 = *param_1;
  for (local_44 = 0; local_44 < iVar3; local_44 = local_44 + 1) {
    uVar4 = *(undefined4 *)(param_1[2] + local_44 * 4);
    for (local_40 = 0; local_40 < 5; local_40 = local_40 + 1) {
      if (local_40 == 0) {
        uVar1 = FUN_0076c3a8(uVar4);
      }
      else if (local_40 == 4) {
        uVar1 = 0x28;
      }
      else {
        uVar1 = 0x100;
      }
      *(uint *)(param_2 + local_44 * 0x3c + local_40 * 0xc) = uVar1;
      bVar7 = CARRY4(uVar1,local_10);
      local_10 = uVar1 + local_10;
      iStack_c = ((int)uVar1 >> 0x1f) + iStack_c + (uint)bVar7;
    }
  }
  __ptr = (void *)WebPSafeCalloc(local_10,iStack_c,3);
  if (__ptr == (void *)0x0) {
    local_3c = 0;
  }
  else {
    local_34 = (void *)((int)__ptr + local_10 * 2);
    local_38 = __ptr;
    for (local_44 = 0; local_44 < iVar3 * 5; local_44 = local_44 + 1) {
      iVar5 = *(int *)(param_2 + local_44 * 0xc);
      *(void **)(param_2 + local_44 * 0xc + 8) = local_38;
      *(void **)(param_2 + local_44 * 0xc + 4) = local_34;
      local_38 = (void *)((int)local_38 + iVar5 * 2);
      local_34 = (void *)((int)local_34 + iVar5);
    }
    for (local_44 = 0; local_44 < iVar3; local_44 = local_44 + 1) {
      iVar5 = param_2 + local_44 * 0x3c;
      iVar6 = *(int *)(param_1[2] + local_44 * 4);
      if ((local_3c == 0) || (iVar2 = VP8LCreateHuffmanTree(iVar6,0xf,iVar5), iVar2 == 0)) {
        bVar7 = false;
      }
      else {
        bVar7 = true;
      }
      if ((bVar7) && (iVar2 = VP8LCreateHuffmanTree(iVar6 + 0xc60,0xf,iVar5 + 0xc), iVar2 != 0)) {
        bVar7 = true;
      }
      else {
        bVar7 = false;
      }
      if ((bVar7) && (iVar2 = VP8LCreateHuffmanTree(iVar6 + 0x1060,0xf,iVar5 + 0x18), iVar2 != 0)) {
        bVar7 = true;
      }
      else {
        bVar7 = false;
      }
      if ((bVar7) && (iVar2 = VP8LCreateHuffmanTree(iVar6 + 0x1460,0xf,iVar5 + 0x24), iVar2 != 0)) {
        bVar7 = true;
      }
      else {
        bVar7 = false;
      }
      if ((bVar7) && (iVar5 = VP8LCreateHuffmanTree(iVar6 + 0x1860,0xf,iVar5 + 0x30), iVar5 != 0)) {
        local_3c = 1;
      }
      else {
        local_3c = 0;
      }
    }
  }
  if (local_3c == 0) {
    free(__ptr);
  }
  return local_3c;
}

// ---- FUN_0076ccb4  @ 0x76ccb4
void FUN_0076ccb4(undefined4 param_1,int param_2)

{
  int local_10;
  int local_c;
  
  local_c = 0x13;
  while ((4 < local_c && (*(char *)(param_2 + (uint)(byte)(&UNK_00874aa3)[local_c]) == '\0'))) {
    local_c = local_c + -1;
  }
  VP8LWriteBits(param_1,4,local_c + -4);
  for (local_10 = 0; local_10 < local_c; local_10 = local_10 + 1) {
    VP8LWriteBits(param_1,3,*(undefined1 *)(param_2 + (uint)(byte)(&DAT_00874aa4)[local_10]));
  }
  return;
}

// ---- FUN_0076cd40  @ 0x76cd40
void FUN_0076cd40(int *param_1)

{
  int local_8;
  int local_4;
  
  local_4 = 0;
  local_8 = 0;
  while( true ) {
    if (*param_1 <= local_8) {
      for (local_8 = 0; local_8 < *param_1; local_8 = local_8 + 1) {
        *(undefined1 *)(param_1[1] + local_8) = 0;
        *(undefined2 *)(param_1[2] + local_8 * 2) = 0;
      }
      return;
    }
    if ((*(char *)(param_1[1] + local_8) != '\0') && (local_4 = local_4 + 1, 1 < local_4)) break;
    local_8 = local_8 + 1;
  }
  return;
}

// ---- FUN_0076cdc4  @ 0x76cdc4
void FUN_0076cdc4(undefined4 param_1,int param_2,int param_3,int param_4)

{
  undefined1 uVar1;
  uint uVar2;
  undefined4 local_14;
  
  for (local_14 = 0; local_14 < param_3; local_14 = local_14 + 1) {
    uVar2 = (uint)*(byte *)(param_2 + local_14 * 2);
    uVar1 = *(undefined1 *)(param_2 + local_14 * 2 + 1);
    VP8LWriteBits(param_1,*(undefined1 *)(*(int *)(param_4 + 4) + uVar2),
                  *(undefined2 *)(*(int *)(param_4 + 8) + uVar2 * 2));
    if (uVar2 == 0x11) {
      VP8LWriteBits(param_1,3,uVar1);
    }
    else if (uVar2 == 0x12) {
      VP8LWriteBits(param_1,7,uVar1);
    }
    else if (uVar2 == 0x10) {
      VP8LWriteBits(param_1,2,uVar1);
    }
  }
  return;
}

// ---- FUN_0076ce6c  @ 0x76ce6c
void FUN_0076ce6c(undefined4 param_1,int *param_2)

{
  bool bVar1;
  byte bVar2;
  void *__ptr;
  int iVar3;
  int iVar4;
  uint uVar5;
  undefined4 local_d4;
  int local_d0;
  int local_cc;
  int local_c8;
  int local_c4;
  undefined4 local_a0;
  byte *local_9c;
  undefined4 *local_98;
  undefined4 local_94;
  undefined4 local_90;
  undefined4 local_8c;
  undefined4 local_88;
  undefined4 local_84;
  undefined4 local_80;
  undefined4 local_7c;
  undefined4 local_78;
  undefined4 local_74;
  undefined2 local_70;
  int aiStack_6c [19];
  byte local_20 [20];
  int local_c;
  
  local_c = __stack_chk_guard;
  local_d4 = 0;
  local_20[0] = 0;
  local_20[1] = 0;
  local_20[2] = 0;
  local_20[3] = 0;
  local_20[4] = 0;
  local_20[5] = 0;
  local_20[6] = 0;
  local_20[7] = 0;
  local_20[8] = 0;
  local_20[9] = 0;
  local_20[10] = 0;
  local_20[0xb] = 0;
  local_20[0xc] = 0;
  local_20[0xd] = 0;
  local_20[0xe] = 0;
  local_20[0xf] = 0;
  local_20[0x10] = 0;
  local_20[0x11] = 0;
  local_20[0x12] = 0;
  local_94 = 0;
  local_90 = 0;
  local_8c = 0;
  local_88 = 0;
  local_84 = 0;
  local_80 = 0;
  local_7c = 0;
  local_78 = 0;
  local_74 = 0;
  local_70 = 0;
  iVar4 = *param_2;
  __ptr = (void *)WebPSafeMalloc(iVar4,iVar4 >> 0x1f,2);
  if (__ptr == (void *)0x0) {
    local_d4 = 0;
  }
  else {
    local_a0 = 0x13;
    local_9c = local_20;
    local_98 = &local_94;
    VP8LWriteBits(param_1,1,0);
    iVar4 = VP8LCreateCompressedHuffmanTree(param_2,__ptr,iVar4);
    memset(aiStack_6c,0,0x4c);
    for (local_d0 = 0; local_d0 < iVar4; local_d0 = local_d0 + 1) {
      bVar2 = *(byte *)((int)__ptr + local_d0 * 2);
      aiStack_6c[bVar2] = aiStack_6c[bVar2] + 1;
    }
    iVar3 = VP8LCreateHuffmanTree(aiStack_6c,7,&local_a0);
    if (iVar3 != 0) {
      FUN_0076ccb4(param_1,local_20);
      FUN_0076cd40(&local_a0);
      local_cc = 0;
      local_c8 = iVar4;
      local_c4 = iVar4;
      while ((bVar1 = 0 < local_c4, local_c4 = local_c4 + -1, bVar1 &&
             (((uVar5 = (uint)*(byte *)((int)__ptr + local_c4 * 2), uVar5 == 0 || (uVar5 == 0x11))
              || (uVar5 == 0x12))))) {
        local_c8 = local_c8 + -1;
        local_cc = local_cc + (uint)local_20[uVar5];
        if (uVar5 == 0x11) {
          local_cc = local_cc + 3;
        }
        else if (uVar5 == 0x12) {
          local_cc = local_cc + 7;
        }
      }
      if ((local_c8 < 2) || (local_cc < 0xd)) {
        iVar3 = 0;
      }
      else {
        iVar3 = 1;
      }
      if (iVar3 != 0) {
        iVar4 = local_c8;
      }
      VP8LWriteBits(param_1,1,iVar3);
      if (iVar3 != 0) {
        iVar3 = FUN_0076c168(local_c8 + -1);
        if (iVar3 == 0) {
          iVar3 = 1;
        }
        else {
          iVar3 = (iVar3 + 1) / 2;
        }
        VP8LWriteBits(param_1,3,iVar3 + -1);
        if (local_c8 < 2) {
          __assert2("../libwebp/src/enc/vp8l.c",0x166,"StoreFullHuffmanCode","trimmed_length >= 2");
        }
        VP8LWriteBits(param_1,iVar3 << 1,local_c8 + -2);
      }
      FUN_0076cdc4(param_1,__ptr,iVar4,&local_a0);
      local_d4 = 1;
    }
    free(__ptr);
  }
  if (local_c == __stack_chk_guard) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(local_d4);
}

// ---- FUN_0076d170  @ 0x76d170
undefined4 FUN_0076d170(undefined4 param_1,int *param_2)

{
  undefined4 uVar1;
  int local_20;
  int local_1c;
  int local_10 [3];
  
  local_1c = 0;
  local_10[0] = 0;
  local_10[1] = 0;
  local_20 = 0;
  while ((local_20 < *param_2 && (local_1c < 3))) {
    if (*(char *)(param_2[1] + local_20) != '\0') {
      if (local_1c < 2) {
        local_10[local_1c] = local_20;
      }
      local_1c = local_1c + 1;
    }
    local_20 = local_20 + 1;
  }
  if (local_1c == 0) {
    VP8LWriteBits(param_1,4,1);
    uVar1 = 1;
  }
  else {
    if (((local_1c < 3) && (local_10[0] < 0x100)) && (local_10[1] < 0x100)) {
      VP8LWriteBits(param_1,1,1);
      VP8LWriteBits(param_1,1,local_1c + -1);
      if (local_10[0] < 2) {
        VP8LWriteBits(param_1,1,0);
        VP8LWriteBits(param_1,1,local_10[0]);
      }
      else {
        VP8LWriteBits(param_1,1,1);
        VP8LWriteBits(param_1,8,local_10[0]);
      }
      if (local_1c == 2) {
        VP8LWriteBits(param_1,8,local_10[1]);
      }
      return 1;
    }
    uVar1 = FUN_0076ce6c(param_1,param_2);
  }
  return uVar1;
}

// ---- FUN_0076d2a4  @ 0x76d2a4
void FUN_0076d2a4(undefined4 param_1,int param_2,int param_3)

{
  VP8LWriteBits(param_1,*(undefined1 *)(*(int *)(param_2 + 4) + param_3),
                *(undefined2 *)(*(int *)(param_2 + 8) + param_3 * 2));
  return;
}

// ---- FUN_0076d2dc  @ 0x76d2dc
void FUN_0076d2dc(undefined4 param_1,int param_2,uint param_3,int *param_4,int param_5,int param_6)

{
  int iVar1;
  undefined4 local_44;
  undefined4 local_40;
  int local_3c;
  int local_38;
  int local_34;
  int local_30;
  int local_2c;
  int local_28;
  int local_24;
  uint local_20;
  int local_1c;
  int local_18;
  int local_14;
  undefined4 local_10;
  undefined4 local_c;
  
  local_38 = 0;
  local_34 = 0;
  if (param_3 == 0) {
    local_28 = 1;
  }
  else {
    local_28 = FUN_0076c3d8(param_2,param_3);
  }
  for (local_30 = 0; local_30 < param_4[1]; local_30 = local_30 + 1) {
    local_24 = *param_4 + local_30 * 8;
    if (param_3 == 0) {
      iVar1 = 0;
    }
    else {
      iVar1 = (local_28 * (local_34 >> (param_3 & 0xff)) + (local_38 >> (param_3 & 0xff))) * 2;
    }
    local_20 = (uint)*(ushort *)(param_5 + iVar1);
    local_1c = param_6 + local_20 * 0x3c;
    iVar1 = FUN_0076c264(local_24);
    if (iVar1 == 0) {
      iVar1 = FUN_0076c24c(local_24);
      if (iVar1 == 0) {
        FUN_0076c198(*(undefined2 *)(local_24 + 2),&local_3c,&local_40,&local_44);
        FUN_0076d2a4(param_1,local_1c,local_3c + 0x100);
        VP8LWriteBits(param_1,local_40,local_44);
        local_c = FUN_0076c344(local_24);
        FUN_0076c198(local_c,&local_3c,&local_40,&local_44);
        FUN_0076d2a4(param_1,local_1c + 0x30,local_3c);
        VP8LWriteBits(param_1,local_40,local_44);
      }
      else {
        for (local_2c = 0; local_2c < 4; local_2c = local_2c + 1) {
          local_10 = FUN_0076c27c(local_24,*(undefined4 *)(&DAT_00874a40 + local_2c * 4));
          FUN_0076d2a4(param_1,local_1c + local_2c * 0xc,local_10);
        }
      }
    }
    else {
      local_18 = FUN_0076c2d8(local_24);
      local_14 = local_18 + 0x118;
      FUN_0076d2a4(param_1,local_1c,local_14);
    }
    iVar1 = FUN_0076c2c8(local_24);
    for (local_38 = iVar1 + local_38; param_2 <= local_38; local_38 = local_38 - param_2) {
      local_34 = local_34 + 1;
    }
  }
  return;
}

// ---- FUN_0076d494  @ 0x76d494
undefined4
FUN_0076d494(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5)

{
  int iVar1;
  undefined2 local_64 [2];
  int local_60;
  undefined4 local_5c;
  int *local_58;
  undefined1 *local_54;
  undefined1 auStack_50 [12];
  undefined1 auStack_44 [8];
  void *local_3c;
  
  local_5c = 0;
  memset(auStack_44,0,0x3c);
  local_64[0] = 0;
  local_58 = (int *)VP8LAllocateHistogramSet(1,0);
  if (local_58 == (int *)0x0) {
    local_5c = 0;
  }
  else {
    iVar1 = VP8LGetBackwardReferences(param_3,param_4,param_2,param_5,0,1,auStack_50);
    if (iVar1 != 0) {
      VP8LHistogramStoreRefs(auStack_50,*(undefined4 *)local_58[2]);
      if (*local_58 != 1) {
        __assert2("../libwebp/src/enc/vp8l.c",0x1e3,"EncodeImageNoHuffman",
                  "histogram_image->size == 1");
      }
      iVar1 = FUN_0076ca10(local_58,auStack_44);
      if (iVar1 != 0) {
        VP8LWriteBits(param_1,1,0);
        for (local_60 = 0; local_60 < 5; local_60 = local_60 + 1) {
          local_54 = auStack_44 + local_60 * 0xc;
          iVar1 = FUN_0076d170(param_1,local_54);
          if (iVar1 == 0) goto LAB_0076d5b2;
          FUN_0076cd40(local_54);
        }
        FUN_0076d2dc(param_1,param_3,0,auStack_50,local_64,auStack_44);
        local_5c = 1;
      }
    }
LAB_0076d5b2:
    free(local_58);
    VP8LClearBackwardRefs(auStack_50);
    free(local_3c);
  }
  return local_5c;
}

// ---- FUN_0076d5dc  @ 0x76d5dc
int FUN_0076d5dc(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                undefined4 param_5,int param_6,int param_7)

{
  int iVar1;
  int iVar2;
  void *__ptr;
  void *pvVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  uint uVar6;
  uint uVar7;
  int local_54;
  uint *local_50;
  uint local_4c;
  void *local_48;
  uint local_44;
  uint local_40;
  int local_3c;
  undefined1 auStack_14 [12];
  
  local_54 = 0;
  iVar1 = FUN_0076c3d8(param_3,param_7);
  iVar2 = FUN_0076c3d8(param_4,param_7);
  uVar6 = iVar2 * iVar1;
  local_50 = (uint *)VP8LAllocateHistogramSet(uVar6,0);
  local_48 = (void *)0x0;
  __ptr = (void *)WebPSafeMalloc(uVar6,0,2);
  if (param_7 < 2) {
    __assert2("../libwebp/src/enc/vp8l.c",0x212,"EncodeImageInternal",
              "histogram_bits >= MIN_HUFFMAN_BITS");
  }
  if (9 < param_7) {
    __assert2("../libwebp/src/enc/vp8l.c",0x213,"EncodeImageInternal",
              "histogram_bits <= MAX_HUFFMAN_BITS");
  }
  if ((local_50 == (uint *)0x0) || (__ptr == (void *)0x0)) {
    free(local_50);
    free(__ptr);
    return 0;
  }
  iVar1 = VP8LGetBackwardReferences(param_3,param_4,param_2,param_5,param_6,1,auStack_14);
  if ((iVar1 != 0) &&
     (iVar1 = VP8LGetHistoImageSymbols
                        (param_3,param_4,auStack_14,param_5,param_7,param_6,local_50,__ptr),
     iVar1 != 0)) {
    local_4c = *local_50;
    local_48 = (void *)WebPSafeCalloc(local_4c * 5,0,0xc);
    if ((local_48 != (void *)0x0) && (iVar1 = FUN_0076ca10(local_50,local_48), iVar1 != 0)) {
      VP8LWriteBits(param_1,1,0 < param_6);
      if (0 < param_6) {
        VP8LWriteBits(param_1,4,param_6);
      }
      VP8LWriteBits(param_1,1,1 < (int)local_4c);
      if (1 < (int)local_4c) {
        pvVar3 = (void *)WebPSafeMalloc(uVar6,0,4);
        local_44 = 0;
        if (pvVar3 == (void *)0x0) goto LAB_0076d8c6;
        for (local_40 = 0; local_40 < uVar6; local_40 = local_40 + 1) {
          uVar7 = (uint)*(ushort *)((int)__ptr + local_40 * 2);
          *(uint *)((int)pvVar3 + local_40 * 4) = uVar7 << 8 | 0xff000000;
          if (local_44 <= uVar7) {
            local_44 = uVar7 + 1;
          }
        }
        local_4c = local_44;
        VP8LWriteBits(param_1,3,param_7 + -2);
        uVar4 = FUN_0076c3d8(param_3,param_7);
        uVar5 = FUN_0076c3d8(param_4,param_7);
        local_54 = FUN_0076d494(param_1,pvVar3,uVar4,uVar5,param_5);
        free(pvVar3);
        if (local_54 == 0) goto LAB_0076d8c6;
      }
      for (local_3c = 0; local_3c < (int)(local_4c * 5); local_3c = local_3c + 1) {
        pvVar3 = (void *)((int)local_48 + local_3c * 0xc);
        iVar1 = FUN_0076d170(param_1,pvVar3);
        if (iVar1 == 0) goto LAB_0076d8c6;
        FUN_0076cd40(pvVar3);
      }
      free(local_50);
      local_50 = (uint *)0x0;
      FUN_0076d2dc(param_1,param_3,param_7,auStack_14,__ptr,local_48);
      local_54 = 1;
    }
  }
LAB_0076d8c6:
  if (local_54 == 0) {
    free(local_50);
  }
  VP8LClearBackwardRefs(auStack_14);
  if (local_48 != (void *)0x0) {
    free(*(void **)((int)local_48 + 8));
    free(local_48);
  }
  free(__ptr);
  return local_54;
}

// ---- FUN_0076d918  @ 0x76d918
undefined4 FUN_0076d918(int param_1,int param_2,int param_3,undefined4 param_4)

{
  double dVar1;
  double dVar2;
  void *__ptr;
  undefined4 extraout_r2;
  undefined4 uVar3;
  int iVar4;
  uint uVar5;
  uint uVar6;
  uint uVar7;
  int local_30;
  
  if (*(int *)(param_1 + 0x30) == 0) {
    iVar4 = *(int *)(param_1 + 8);
    __ptr = malloc(0x1910);
    if (__ptr == (void *)0x0) {
      return 0;
    }
    VP8LHistogramInit(__ptr,1);
    for (local_30 = 0; param_3 * param_2 - local_30 != 0 && local_30 <= param_3 * param_2;
        local_30 = local_30 + 1) {
      uVar6 = *(uint *)(iVar4 + local_30 * 4);
      uVar5 = uVar6 >> 0x10 & 0xff;
      *(int *)((int)__ptr + (uVar5 + 0x318) * 4) = *(int *)((int)__ptr + (uVar5 + 0x318) * 4) + 1;
      uVar6 = uVar6 & 0xff;
      *(int *)((int)__ptr + (uVar6 + 0x418) * 4) = *(int *)((int)__ptr + (uVar6 + 0x418) * 4) + 1;
    }
    dVar1 = (double)VP8LHistogramEstimateBits(__ptr);
    VP8LHistogramInit(__ptr,1);
    for (local_30 = 0; param_3 * param_2 - local_30 != 0 && local_30 <= param_3 * param_2;
        local_30 = local_30 + 1) {
      uVar5 = *(uint *)(iVar4 + local_30 * 4);
      uVar6 = uVar5 >> 8 & 0xff;
      uVar7 = (uVar5 >> 0x10) - uVar6 & 0xff;
      *(int *)((int)__ptr + (uVar7 + 0x318) * 4) = *(int *)((int)__ptr + (uVar7 + 0x318) * 4) + 1;
      uVar5 = uVar5 - uVar6 & 0xff;
      *(int *)((int)__ptr + (uVar5 + 0x418) * 4) = *(int *)((int)__ptr + (uVar5 + 0x418) * 4) + 1;
    }
    dVar2 = (double)VP8LHistogramEstimateBits(__ptr);
    free(__ptr);
    iVar4 = (uint)(dVar2 < dVar1) << 0x1f;
    uVar3 = extraout_r2;
    if (-1 < iVar4) {
      uVar3 = 0;
    }
    if (iVar4 < 0) {
      uVar3 = 1;
    }
    *(undefined4 *)(param_1 + 0x28) = uVar3;
    if (*(int *)(param_1 + 0x28) != 0) {
      VP8LWriteBits(param_4,1,1);
      VP8LWriteBits(param_4,2,2);
      VP8LSubtractGreenFromBlueAndRed(*(undefined4 *)(param_1 + 8),param_3 * param_2);
    }
  }
  return 1;
}

// ---- FUN_0076dac0  @ 0x76dac0
bool FUN_0076dac0(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                 undefined4 param_5)

{
  undefined4 uVar1;
  undefined4 uVar2;
  int iVar3;
  
  iVar3 = *(int *)(param_1 + 0x1c);
  uVar1 = FUN_0076c3d8(param_2,iVar3);
  uVar2 = FUN_0076c3d8(param_3,iVar3);
  VP8LResidualImage(param_2,param_3,iVar3,*(undefined4 *)(param_1 + 8),
                    *(undefined4 *)(param_1 + 0xc),*(undefined4 *)(param_1 + 0x10));
  VP8LWriteBits(param_5,1,1);
  VP8LWriteBits(param_5,2,0);
  if (iVar3 < 2) {
    __assert2("../libwebp/src/enc/vp8l.c",0x2aa,"ApplyPredictFilter","pred_bits >= 2");
  }
  VP8LWriteBits(param_5,3,iVar3 + -2);
  iVar3 = FUN_0076d494(param_5,*(undefined4 *)(param_1 + 0x10),uVar1,uVar2,param_4);
  return iVar3 != 0;
}

// ---- FUN_0076db90  @ 0x76db90
bool FUN_0076db90(int param_1,undefined4 param_2,undefined4 param_3,int param_4,undefined4 param_5)

{
  undefined4 uVar1;
  undefined4 uVar2;
  int iVar3;
  undefined4 uVar4;
  
  iVar3 = *(int *)(param_1 + 0x1c);
  uVar1 = FUN_0076c3d8(param_2,iVar3);
  uVar2 = FUN_0076c3d8(param_3,iVar3);
  if (param_4 == 0) {
    uVar4 = 0x20;
  }
  else {
    uVar4 = 8;
  }
  VP8LColorSpaceTransform
            (param_2,param_3,iVar3,uVar4,*(undefined4 *)(param_1 + 8),
             *(undefined4 *)(param_1 + 0x10));
  VP8LWriteBits(param_5,1,1);
  VP8LWriteBits(param_5,2,1);
  if (iVar3 < 2) {
    __assert2("../libwebp/src/enc/vp8l.c",0x2bf,"ApplyCrossColorFilter","ccolor_transform_bits >= 2"
             );
  }
  VP8LWriteBits(param_5,3,iVar3 + -2);
  iVar3 = FUN_0076d494(param_5,*(undefined4 *)(param_1 + 0x10),uVar1,uVar2,param_4);
  return iVar3 != 0;
}

// ---- FUN_0076dc70  @ 0x76dc70
void FUN_0076dc70(undefined1 *param_1,undefined4 param_2)

{
  *param_1 = (char)param_2;
  param_1[1] = (char)((uint)param_2 >> 8);
  param_1[2] = (char)((uint)param_2 >> 0x10);
  param_1[3] = (char)((uint)param_2 >> 0x18);
  return;
}

// ---- FUN_0076dcb4  @ 0x76dcb4
void FUN_0076dcb4(int param_1,undefined4 param_2,undefined4 param_3)

{
  int iVar1;
  undefined4 uVar2;
  undefined1 auStack_24 [4];
  undefined1 auStack_20 [12];
  undefined1 auStack_14 [8];
  int local_c;
  
  local_c = __stack_chk_guard;
  memcpy(auStack_24,&DAT_00874960,0x15);
  FUN_0076dc70(auStack_20,param_2);
  FUN_0076dc70(auStack_14,param_3);
  iVar1 = (**(code **)(param_1 + 0x48))(auStack_24,0x15,param_1);
  if (iVar1 == 0) {
    uVar2 = 8;
  }
  else {
    uVar2 = 0;
  }
  if (local_c != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar2);
  }
  return;
}

// ---- FUN_0076dd40  @ 0x76dd40
bool FUN_0076dd40(int param_1,int param_2)

{
  int iVar1;
  int iVar2;
  
  iVar1 = *(int *)(param_1 + 8) + -1;
  iVar2 = *(int *)(param_1 + 0xc) + -1;
  if ((0x3ffe < iVar1) || (0x3ffe < iVar2)) {
    __assert2("../libwebp/src/enc/vp8l.c",0x2e3,"WriteImageSize",
              "width < WEBP_MAX_DIMENSION && height < WEBP_MAX_DIMENSION");
  }
  VP8LWriteBits(param_2,0xe,iVar1);
  VP8LWriteBits(param_2,0xe,iVar2);
  return *(int *)(param_2 + 0xc) == 0;
}

// ---- FUN_0076ddc4  @ 0x76ddc4
bool FUN_0076ddc4(int param_1,undefined4 param_2)

{
  VP8LWriteBits(param_1,1,param_2);
  VP8LWriteBits(param_1,3,0);
  return *(int *)(param_1 + 0xc) == 0;
}

// ---- FUN_0076ddfc  @ 0x76ddfc
int FUN_0076ddfc(int param_1,undefined4 param_2,int *param_3)

{
  int iVar1;
  undefined1 local_24 [4];
  int local_20;
  undefined4 local_1c;
  int local_18;
  uint local_14;
  uint local_10;
  int local_c;
  
  local_20 = 0;
  local_1c = FUN_0076c398(param_2);
  local_18 = FUN_0076c380(param_2);
  local_14 = local_18 + 1;
  local_10 = local_14 & 1;
  local_c = local_14 + local_10 + 0xc;
  local_20 = FUN_0076dcb4(param_1,local_c,local_14);
  if (local_20 == 0) {
    iVar1 = (**(code **)(param_1 + 0x48))(local_1c,local_18,param_1);
    if (iVar1 == 0) {
      local_20 = 8;
    }
    else {
      if (local_10 != 0) {
        local_24[0] = 0;
        iVar1 = (**(code **)(param_1 + 0x48))(local_24,1,param_1);
        if (iVar1 == 0) {
          return 8;
        }
      }
      *param_3 = local_c + 8;
      local_20 = 0;
    }
  }
  return local_20;
}

// ---- FUN_0076deb0  @ 0x76deb0
bool FUN_0076deb0(int param_1,int param_2,int param_3)

{
  longlong lVar1;
  uint uVar2;
  uint uVar3;
  int iVar4;
  uint uVar5;
  uint uVar6;
  int iVar7;
  
  uVar5 = param_3 * param_2;
  uVar6 = param_2 * ((1 << (*(uint *)(param_1 + 0x1c) & 0xff)) + 1);
  uVar2 = FUN_0076c3d8(param_2,*(undefined4 *)(param_1 + 0x1c));
  uVar3 = FUN_0076c3d8(param_3,*(undefined4 *)(param_1 + 0x1c));
  lVar1 = (ulonglong)uVar2 * (ulonglong)uVar3 +
          CONCAT44(((int)uVar5 >> 0x1f) + ((int)uVar6 >> 0x1f) + (uint)CARRY4(uVar5,uVar6),
                   uVar5 + uVar6);
  iVar4 = WebPSafeMalloc((int)lVar1,(int)((ulonglong)lVar1 >> 0x20),4);
  if (iVar4 != 0) {
    *(int *)(param_1 + 8) = iVar4;
    iVar7 = iVar4 + uVar5 * 4;
    *(int *)(param_1 + 0xc) = iVar7;
    *(uint *)(param_1 + 0x10) = iVar7 + uVar6 * 4;
    *(int *)(param_1 + 0x14) = param_2;
  }
  return iVar4 == 0;
}

// ---- FUN_0076dfb0  @ 0x76dfb0
void FUN_0076dfb0(int param_1,uint param_2,int param_3,int param_4)

{
  int iVar1;
  int iVar2;
  uint uVar3;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  undefined4 local_18;
  
  local_20 = 0;
  local_1c = *(int *)(param_1 + 0x34);
  iVar1 = *(int *)(param_1 + 8);
  iVar2 = *(int *)(param_1 + 0xc);
  for (local_24 = 0; local_24 < iVar2; local_24 = local_24 + 1) {
    for (local_18 = 0; (int)local_18 < iVar1; local_18 = local_18 + 1) {
      uVar3 = (1 << (param_2 & 0xff)) - 1U & local_18;
      if (uVar3 == 0) {
        local_20 = 0;
      }
      local_20 = (*(uint *)(local_1c + local_18 * 4) & 0xff00) <<
                 (uVar3 * (1 << (3 - param_2 & 0xff)) & 0xff) | local_20;
      *(uint *)(param_3 + (param_4 * local_24 + ((int)local_18 >> (param_2 & 0xff))) * 4) =
           local_20 | 0xff000000;
    }
    local_1c = local_1c + *(int *)(param_1 + 0x38) * 4;
  }
  return;
}

// ---- FUN_0076e08c  @ 0x76e08c
int FUN_0076e08c(undefined4 param_1,int param_2,undefined4 param_3)

{
  int iVar1;
  undefined4 uVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  int iVar7;
  int local_38;
  int local_34;
  int local_30;
  int local_2c;
  int local_28;
  undefined4 local_24;
  
  local_38 = 0;
  iVar3 = *(int *)(param_2 + 4);
  local_28 = *(int *)(iVar3 + 0x34);
  iVar4 = *(int *)(iVar3 + 8);
  iVar5 = *(int *)(iVar3 + 0xc);
  iVar6 = param_2 + 0x38;
  iVar7 = *(int *)(param_2 + 0x34);
  local_2c = 0;
  do {
    if (iVar5 <= local_2c) {
      VP8LWriteBits(param_1,1,1);
      VP8LWriteBits(param_1,2,3);
      if (iVar7 < 1) {
        __assert2("../libwebp/src/enc/vp8l.c",0x369,"ApplyPalette","palette_size >= 1");
      }
      VP8LWriteBits(param_1,8,iVar7 + -1);
      iVar1 = iVar7;
      while (local_34 = iVar1 + -1, 0 < local_34) {
        uVar2 = FUN_0076c400(*(undefined4 *)(iVar6 + local_34 * 4),
                             *(undefined4 *)(iVar6 + (iVar1 + -2) * 4));
        *(undefined4 *)(iVar6 + local_34 * 4) = uVar2;
        iVar1 = local_34;
      }
      iVar6 = FUN_0076d494(param_1,iVar6,iVar7,1,param_3);
      if (iVar6 == 0) {
        local_38 = 4;
      }
      else if (iVar7 < 0x11) {
        local_24 = 1;
        if (iVar7 < 3) {
          local_24 = 3;
        }
        else if (iVar7 < 5) {
          local_24 = 2;
        }
        uVar2 = FUN_0076c3d8(iVar4,local_24);
        local_38 = FUN_0076deb0(param_2,uVar2,iVar5);
        if (local_38 == 0) {
          FUN_0076dfb0(iVar3,local_24,*(undefined4 *)(param_2 + 8),*(undefined4 *)(param_2 + 0x14));
        }
      }
      return local_38;
    }
    for (local_30 = 0; local_30 < iVar4; local_30 = local_30 + 1) {
      for (local_34 = 0; local_34 < iVar7; local_34 = local_34 + 1) {
        if (*(int *)(iVar6 + local_34 * 4) == *(int *)(local_28 + local_30 * 4)) {
          *(uint *)(local_28 + local_30 * 4) = local_34 << 8 | 0xff000000;
          break;
        }
      }
    }
    local_28 = local_28 + *(int *)(iVar3 + 0x38) * 4;
    local_2c = local_2c + 1;
  } while( true );
}

// ---- FUN_0076e278  @ 0x76e278
int FUN_0076e278(int param_1,int param_2)

{
  longlong lVar1;
  int iVar2;
  int iVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined4 local_24;
  
  uVar4 = *(undefined4 *)(param_2 + 8);
  uVar5 = *(undefined4 *)(param_2 + 0xc);
  local_24 = 7 - *(int *)(param_1 + 8);
  while( true ) {
    iVar2 = FUN_0076c3d8(uVar4,local_24);
    iVar3 = FUN_0076c3d8(uVar5,local_24);
    lVar1 = (ulonglong)(uint)(iVar3 * iVar2) * 0x1910;
    if ((uint)-(int)((ulonglong)lVar1 >> 0x20) < (uint)((uint)lVar1 < 0x1000001)) break;
    local_24 = local_24 + 1;
  }
  if (local_24 < 2) {
    local_24 = 2;
  }
  else if (8 < local_24) {
    local_24 = 9;
  }
  return local_24;
}

// ---- FUN_0076e328  @ 0x76e328
void FUN_0076e328(int *param_1)

{
  int iVar1;
  float fVar2;
  int iVar3;
  
  iVar1 = *param_1;
  fVar2 = *(float *)(iVar1 + 4);
  if (*(int *)(iVar1 + 8) < 4) {
    iVar3 = 5;
  }
  else if (*(int *)(iVar1 + 8) < 5) {
    iVar3 = 4;
  }
  else {
    iVar3 = 3;
  }
  param_1[7] = iVar3;
  iVar1 = FUN_0076e278(iVar1,param_1[1]);
  param_1[6] = iVar1;
  if (25.0 < fVar2) {
    iVar1 = 7;
  }
  else {
    iVar1 = 0;
  }
  param_1[8] = iVar1;
  return;
}

// ---- FUN_0076e39c  @ 0x76e39c
undefined4 * FUN_0076e39c(undefined4 param_1,undefined4 param_2)

{
  undefined4 *puVar1;
  
  puVar1 = calloc(1,0x438);
  if (puVar1 == (undefined4 *)0x0) {
    WebPEncodingSetError(param_2,1);
    puVar1 = (undefined4 *)0x0;
  }
  else {
    *puVar1 = param_1;
    puVar1[1] = param_2;
  }
  return puVar1;
}

// ---- FUN_0076e3e0  @ 0x76e3e0
void FUN_0076e3e0(void *param_1)

{
  free(*(void **)((int)param_1 + 8));
  free(param_1);
  return;
}

// ---- FUN_0076e938  @ 0x76e938
void FUN_0076e938(int *param_1)

{
  param_1[6] = *(int *)(*param_1 + 0x18);
  param_1[7] = (uint)(1 < param_1[6]);
  param_1[8] = 0;
  return;
}

// ---- FUN_0076e96c  @ 0x76e96c
void FUN_0076e96c(int param_1)

{
  *(undefined4 *)(param_1 + 8) = 1;
  *(undefined4 *)(param_1 + 0xc) = 0;
  *(undefined4 *)(param_1 + 0x10) = 0;
  *(undefined4 *)(param_1 + 0x14) = 0;
  return;
}

// ---- FUN_0076e99c  @ 0x76e99c
void FUN_0076e99c(int param_1)

{
  int iVar1;
  int iVar2;
  int iVar3;
  undefined4 local_c;
  
  iVar1 = *(int *)(param_1 + 0x5228);
  iVar2 = *(int *)(param_1 + 0x30);
  iVar3 = *(int *)(param_1 + 0x5228);
  for (local_c = -1; local_c < *(int *)(param_1 + 0x28) * 4; local_c = local_c + 1) {
    *(undefined1 *)((iVar1 - iVar2) + local_c) = 0;
  }
  for (local_c = 0; local_c < *(int *)(param_1 + 0x2c) * 4; local_c = local_c + 1) {
    *(undefined1 *)(iVar3 + -1 + local_c * *(int *)(param_1 + 0x30)) = 0;
  }
  *(undefined4 *)(*(int *)(param_1 + 0x522c) + -4) = 0;
  return;
}

// ---- FUN_0076ea40  @ 0x76ea40
void FUN_0076ea40(int *param_1)

{
  int iVar1;
  int iVar2;
  uint uVar3;
  
  iVar1 = *(int *)(*param_1 + 8);
  iVar2 = 100 - *(int *)(*param_1 + 0x4c);
  param_1[0x1486] = iVar1;
  if (iVar1 < 6) {
    if (iVar1 < 5) {
      uVar3 = (uint)(2 < iVar1);
    }
    else {
      uVar3 = 2;
    }
  }
  else {
    uVar3 = 3;
  }
  param_1[0x1487] = uVar3;
  param_1[0x1488] = (iVar2 * iVar2 * 0x10000) / 10000;
  return;
}

// ---- FUN_0076eac8  @ 0x76eac8
int * FUN_0076eac8(int param_1,int param_2)

{
  bool bVar1;
  uint uVar2;
  uint uVar3;
  uint uVar4;
  uint uVar5;
  int *__s;
  int iVar6;
  int iVar7;
  uint uVar8;
  uint uVar9;
  uint uVar10;
  uint uVar11;
  uint uVar12;
  int iVar13;
  int iVar14;
  
  if ((*(int *)(param_1 + 0x20) < 1) && (*(int *)(param_1 + 0x2c) < 1)) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  iVar14 = *(int *)(param_2 + 8) + 0xf >> 4;
  iVar13 = *(int *)(param_2 + 0xc) + 0xf >> 4;
  iVar6 = iVar14 * 4 + 1;
  iVar7 = iVar13 * 4 + 1;
  uVar8 = iVar7 * iVar6;
  uVar9 = (iVar14 + 1) * 4;
  uVar10 = iVar13 * iVar14 * 4;
  uVar11 = (iVar14 * 0x10 + 0x1c) * 2 + 0x1f;
  if (*(int *)(param_1 + 0x2c) == 0) {
    uVar12 = 0;
  }
  else {
    uVar12 = 0x80f;
  }
  uVar2 = uVar10 + 0xb40 + uVar8;
  uVar3 = uVar2 + uVar11;
  uVar4 = uVar3 + uVar9;
  uVar5 = uVar4 + uVar12;
  __s = (int *)WebPSafeMalloc(uVar5 + 0x5267,
                              (0xfffff4bf < uVar10) + CARRY4(uVar10 + 0xb40,uVar8) +
                              CARRY4(uVar2,uVar11) + CARRY4(uVar3,uVar9) + CARRY4(uVar4,uVar12) +
                              (0xffffad98 < uVar5),1);
  if (__s == (int *)0x0) {
    WebPEncodingSetError(param_2,1);
    __s = (int *)0x0;
  }
  else {
    uVar8 = (int)__s + 0x5267U & 0xfffffff0;
    memset(__s,0,0x5258);
    __s[0xd] = 1 << (*(uint *)(param_1 + 0x48) & 0xff);
    __s[10] = iVar14;
    __s[0xb] = iVar13;
    __s[0xc] = iVar6;
    __s[0x148c] = uVar8;
    __s[0x148d] = uVar8 + 0x180;
    __s[0x148e] = uVar8 + 0x300;
    __s[0x148f] = uVar8 + 0x480;
    __s[0x1489] = uVar8 + 0xb40;
    iVar13 = uVar8 + 0xb40 + uVar10;
    __s[0x148a] = iVar13 + __s[0xc] + 1;
    iVar13 = iVar13 + iVar7 * iVar6;
    __s[0x148b] = iVar13 + 4;
    iVar13 = iVar13 + uVar9;
    if (uVar12 == 0) {
      uVar8 = 0;
    }
    else {
      uVar8 = iVar13 + 0xfU & 0xfffffff0;
    }
    __s[0x1495] = uVar8;
    uVar8 = iVar13 + uVar12 + 0xf & 0xfffffff0;
    __s[0x1490] = uVar8;
    __s[0x1491] = __s[0x1490] + iVar14 * 0x10;
    iVar14 = uVar8 + iVar14 * 0x20;
    __s[0x1492] = iVar14 + 0x10;
    __s[0x1493] = iVar14 + 0x30;
    __s[0x1494] = iVar14 + 0x40;
    *__s = param_1;
    if (bVar1) {
      uVar8 = (uint)(*(int *)(param_1 + 0x28) != 1);
    }
    else {
      uVar8 = 2;
    }
    __s[9] = uVar8;
    __s[1] = param_2;
    __s[0x56] = 0;
    FUN_0076ea40(__s);
    VP8EncDspInit();
    VP8DefaultProbas(__s);
    FUN_0076e938(__s);
    FUN_0076e96c(__s);
    FUN_0076e99c(__s);
    VP8EncInitAlpha(__s);
  }
  return __s;
}

// ---- FUN_0076ee18  @ 0x76ee18
void FUN_0076ee18(void *param_1)

{
  if (param_1 != (void *)0x0) {
    VP8EncDeleteAlpha(param_1);
    free(param_1);
  }
  return;
}

// ---- FUN_0076ee38  @ 0x76ee38
double FUN_0076ee38(int param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 extraout_r0;
  undefined4 extraout_r1;
  undefined4 uVar1;
  undefined4 extraout_s1;
  double dVar2;
  
  if (param_1 == 0 && param_2 == 0) {
    dVar2 = 99.0;
  }
  else {
    __floatundidf(param_3,param_4);
    uVar1 = __floatundidf(param_1,param_2);
    log10((double)CONCAT44(extraout_s1,uVar1));
    dVar2 = (double)CONCAT44(extraout_r1,extraout_r0) * 10.0;
  }
  return dVar2;
}

// ---- FUN_0076eeb8  @ 0x76eeb8
void FUN_0076eeb8(int param_1)

{
  uint uVar1;
  uint uVar2;
  uint uVar3;
  int iVar4;
  uint uVar5;
  uint uVar6;
  double dVar7;
  
  iVar4 = *(int *)(*(int *)(param_1 + 4) + 0x58);
  uVar3 = *(uint *)(param_1 + 0x51d0);
  uVar5 = *(uint *)(param_1 + 0x51d4);
  dVar7 = (double)FUN_0076ee38(*(uint *)(param_1 + 0x51b0),*(undefined4 *)(param_1 + 0x51b4),uVar3,
                               uVar5);
  *(float *)(iVar4 + 4) = (float)dVar7;
  dVar7 = (double)FUN_0076ee38(*(undefined4 *)(param_1 + 0x51b8),*(undefined4 *)(param_1 + 0x51bc),
                               uVar5 << 0x1e | uVar3 >> 2,uVar5 >> 2);
  *(float *)(iVar4 + 8) = (float)dVar7;
  dVar7 = (double)FUN_0076ee38(*(undefined4 *)(param_1 + 0x51c0),*(undefined4 *)(param_1 + 0x51c4),
                               uVar3 >> 2 | uVar5 << 0x1e,uVar5 >> 2);
  *(float *)(iVar4 + 0xc) = (float)dVar7;
  uVar1 = *(uint *)(param_1 + 0x51b0);
  uVar2 = uVar1 + *(uint *)(param_1 + 0x51b8);
  uVar6 = uVar5 * 3 + (uint)CARRY4(uVar3,uVar3) + (uint)CARRY4(uVar3 * 2,uVar3);
  dVar7 = (double)FUN_0076ee38(uVar2 + *(uint *)(param_1 + 0x51c0),
                               *(int *)(param_1 + 0x51b4) +
                               *(int *)(param_1 + 0x51bc) +
                               (uint)CARRY4(uVar1,*(uint *)(param_1 + 0x51b8)) +
                               *(int *)(param_1 + 0x51c4) +
                               (uint)CARRY4(uVar2,*(uint *)(param_1 + 0x51c0)),
                               (uint)((uVar6 & 1) != 0) << 0x1f | uVar3 * 3 >> 1,uVar6 >> 1);
  *(float *)(iVar4 + 0x10) = (float)dVar7;
  dVar7 = (double)FUN_0076ee38(*(undefined4 *)(param_1 + 0x51c8),*(undefined4 *)(param_1 + 0x51cc),
                               uVar3,uVar5);
  *(float *)(iVar4 + 0x14) = (float)dVar7;
  return;
}

// ---- FUN_0076efec  @ 0x76efec
void FUN_0076efec(int param_1)

{
  undefined4 *puVar1;
  int local_14;
  int local_10;
  
  puVar1 = *(undefined4 **)(*(int *)(param_1 + 4) + 0x58);
  if (puVar1 != (undefined4 *)0x0) {
    for (local_14 = 0; local_14 < 4; local_14 = local_14 + 1) {
      puVar1[local_14 + 0x1f] = *(undefined4 *)(param_1 + local_14 * 0x214 + 0x380);
      puVar1[local_14 + 0x1b] = *(undefined4 *)(param_1 + local_14 * 0x214 + 0x37c);
      for (local_10 = 0; local_10 < 3; local_10 = local_10 + 1) {
        puVar1[local_10 * 4 + local_14 + 0xb] =
             *(undefined4 *)(param_1 + (local_10 * 4 + local_14 + 0x1476) * 4 + 4);
      }
    }
    FUN_0076eeb8(param_1);
    *puVar1 = *(undefined4 *)(param_1 + 0x51d8);
    for (local_14 = 0; local_14 < 3; local_14 = local_14 + 1) {
      puVar1[local_14 + 6] = *(undefined4 *)(param_1 + (local_14 + 0x1482) * 4 + 4);
    }
  }
  WebPReportProgress(*(undefined4 *)(param_1 + 4),100,param_1 + 0x158);
  return;
}

// ---- FUN_0076f374  @ 0x76f374
undefined4 FUN_0076f374(undefined4 param_1)

{
  undefined4 uVar1;
  
  uVar1 = VP8GetValue(param_1,1);
  return uVar1;
}

// ---- FUN_0076f38c  @ 0x76f38c
void FUN_0076f38c(int *param_1)

{
  uint uVar1;
  uint uVar2;
  uint uVar3;
  
  if ((param_1 == (int *)0x0) || (*param_1 == 0)) {
    __assert2("../libwebp/src/utils/./bit_reader.h",0x4b,"VP8LoadNewBytes","br && br->buf_");
  }
  if ((uint)param_1[1] < *param_1 + 4U) {
    VP8LoadFinalBytes(param_1);
  }
  else {
    uVar2 = *(uint *)*param_1;
    *param_1 = *param_1 + 4;
    uVar1 = uVar2 << 0x18 | uVar2 >> 8 & 0xff00 | uVar2 >> 0x18 | (uVar2 & 0xff00) << 8;
    uVar3 = param_1[8];
    uVar2 = 0 << (uVar3 & 0xff) | uVar1 >> (0x20 - uVar3 & 0xff);
    if (-1 < (int)(uVar3 - 0x20)) {
      uVar2 = uVar1 << (uVar3 - 0x20 & 0xff);
    }
    param_1[6] = param_1[6] | uVar1 << (uVar3 & 0xff);
    param_1[7] = param_1[7] | uVar2;
    param_1[8] = param_1[8] + -0x20;
  }
  return;
}

// ---- FUN_0076f4b0  @ 0x76f4b0
bool FUN_0076f4b0(int param_1,undefined4 param_2,undefined4 param_3,uint param_4)

{
  uint uVar1;
  
  if (0 < *(int *)(param_1 + 0x20)) {
    FUN_0076f38c(param_1);
  }
  uVar1 = *(uint *)(param_1 + 0x1c);
  if (param_4 < uVar1) {
    *(undefined4 *)(param_1 + 0x10) = *(undefined4 *)(param_1 + 0x10);
    *(uint *)(param_1 + 0x14) = ~param_4 + *(int *)(param_1 + 0x14);
    *(undefined4 *)(param_1 + 0x18) = *(undefined4 *)(param_1 + 0x18);
    *(uint *)(param_1 + 0x1c) = ~param_4 + *(int *)(param_1 + 0x1c);
  }
  else {
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    *(uint *)(param_1 + 0x14) = param_4;
  }
  return param_4 < uVar1;
}

// ---- FUN_0076f548  @ 0x76f548
void FUN_0076f548(int param_1)

{
  uint uVar1;
  uint uVar2;
  int iVar3;
  undefined4 uVar4;
  uint uVar5;
  
  uVar1 = (uint)(byte)kVP8Log2Range[*(int *)(param_1 + 0x14)];
  iVar3 = *(int *)(param_1 + 0x14) * 8;
  uVar4 = *(undefined4 *)(kVP8NewRange + iVar3 + 4);
  *(undefined4 *)(param_1 + 0x10) = *(undefined4 *)(kVP8NewRange + iVar3);
  *(undefined4 *)(param_1 + 0x14) = uVar4;
  uVar2 = *(uint *)(param_1 + 0x18);
  uVar5 = *(int *)(param_1 + 0x1c) << uVar1 | uVar2 >> (0x20 - uVar1 & 0xff);
  if (-1 < (int)(uVar1 - 0x20)) {
    uVar5 = uVar2 << (uVar1 - 0x20 & 0xff);
  }
  *(uint *)(param_1 + 0x18) = uVar2 << uVar1;
  *(uint *)(param_1 + 0x1c) = uVar5;
  *(uint *)(param_1 + 0x20) = *(int *)(param_1 + 0x20) + uVar1;
  return;
}

// ---- FUN_0076f5e0  @ 0x76f5e0
undefined4 FUN_0076f5e0(int param_1,int param_2)

{
  undefined4 uVar1;
  uint uVar2;
  uint uVar3;
  
  uVar2 = param_2 * *(int *)(param_1 + 0x14);
  uVar3 = uVar2 >> 8;
  uVar1 = FUN_0076f4b0(param_1,uVar3,uVar2 * 0x1000000,uVar3);
  if (*(uint *)(param_1 + 0x14) < 0x7f) {
    FUN_0076f548(param_1);
  }
  return uVar1;
}

// ---- FUN_0076fa44  @ 0x76fa44
void FUN_0076fa44(uint *param_1)

{
  byte bVar1;
  
  while ((7 < (int)param_1[5] && (param_1[4] < param_1[3]))) {
    *param_1 = *param_1 >> 8 | param_1[1] << 0x18;
    param_1[1] = param_1[1] >> 8;
    bVar1 = *(byte *)(param_1[2] + param_1[4]);
    *param_1 = *param_1;
    param_1[1] = param_1[1] | (uint)bVar1 << 0x18;
    param_1[4] = param_1[4] + 1;
    param_1[5] = param_1[5] - 8;
  }
  return;
}

// ---- FUN_0076fdb0  @ 0x76fdb0
uint FUN_0076fdb0(int param_1)

{
  return *(int *)(param_1 + 4) + 7U >> 3;
}

// ---- FUN_0076fdc8  @ 0x76fdc8
undefined4 FUN_0076fdc8(int param_1,uint param_2)

{
  void *__dest;
  uint uVar1;
  undefined4 uVar2;
  undefined4 local_1c;
  
  uVar1 = param_2 + *(uint *)(param_1 + 0x14);
  if (CARRY4(param_2,*(uint *)(param_1 + 0x14))) {
    *(undefined4 *)(param_1 + 0x1c) = 1;
    uVar2 = 0;
  }
  else if (*(uint *)(param_1 + 0x18) < uVar1) {
    local_1c = *(int *)(param_1 + 0x18) << 1;
    if (local_1c < uVar1) {
      local_1c = uVar1;
    }
    if (local_1c < 0x400) {
      local_1c = 0x400;
    }
    __dest = malloc(local_1c);
    if (__dest == (void *)0x0) {
      *(undefined4 *)(param_1 + 0x1c) = 1;
      uVar2 = 0;
    }
    else {
      memcpy(__dest,*(void **)(param_1 + 0x10),*(size_t *)(param_1 + 0x14));
      free(*(void **)(param_1 + 0x10));
      *(void **)(param_1 + 0x10) = __dest;
      *(uint *)(param_1 + 0x18) = local_1c;
      uVar2 = 1;
    }
  }
  else {
    uVar2 = 1;
  }
  return uVar2;
}

// ---- FUN_0076fea0  @ 0x76fea0
void FUN_0076fea0(int param_1)

{
  int iVar1;
  undefined1 uVar2;
  uint uVar3;
  uint uVar4;
  char *pcVar5;
  int local_18;
  
  uVar3 = *(int *)(param_1 + 0xc) + 8;
  uVar4 = *(int *)(param_1 + 4) >> (uVar3 & 0xff);
  if (*(int *)(param_1 + 0xc) < 0) {
    __assert2("../libwebp/src/utils/bit_writer.c",0x36,"kFlush","bw->nb_bits_ >= 0");
  }
  *(uint *)(param_1 + 4) = *(int *)(param_1 + 4) - (uVar4 << (uVar3 & 0xff));
  *(int *)(param_1 + 0xc) = *(int *)(param_1 + 0xc) + -8;
  if ((uVar4 & 0xff) == 0xff) {
    *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
  }
  else {
    local_18 = *(int *)(param_1 + 0x14);
    iVar1 = FUN_0076fdc8(param_1,*(int *)(param_1 + 8) + 1);
    if (iVar1 != 0) {
      if (((uVar4 & 0x100) != 0) && (local_18 != 0)) {
        pcVar5 = (char *)(*(int *)(param_1 + 0x10) + local_18 + -1);
        *pcVar5 = *pcVar5 + '\x01';
      }
      if (0 < *(int *)(param_1 + 8)) {
        if ((uVar4 & 0x100) == 0) {
          uVar2 = 0xff;
        }
        else {
          uVar2 = 0;
        }
        while (0 < *(int *)(param_1 + 8)) {
          *(undefined1 *)(*(int *)(param_1 + 0x10) + local_18) = uVar2;
          local_18 = local_18 + 1;
          *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + -1;
        }
      }
      *(char *)(*(int *)(param_1 + 0x10) + local_18) = (char)uVar4;
      *(int *)(param_1 + 0x14) = local_18 + 1;
    }
  }
  return;
}
