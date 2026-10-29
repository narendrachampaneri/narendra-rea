// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 261 functions

// ---- FUN_007500a4  @ 0x7500a4
int FUN_007500a4(int param_1,int param_2)

{
  int iVar1;
  int iVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 local_20;
  undefined4 local_18;
  
  iVar2 = *(int *)(param_1 + 0xd0);
  uVar3 = *(undefined4 *)(iVar2 + 0x3c);
  uVar4 = *(undefined4 *)(iVar2 + 0x34);
  local_18 = 0;
  local_20 = param_2;
  while (iVar1 = FUN_0074efbc(iVar2), iVar1 != 0) {
    WebPRescalerExportRow(iVar2);
    FUN_0074fdc0(uVar3,uVar4,local_20,*(undefined4 *)(param_1 + 0x10));
    local_20 = local_20 + 1;
    local_18 = local_18 + 1;
  }
  return local_18;
}

// ---- FUN_00750100  @ 0x750100
int FUN_00750100(int param_1,int param_2,int param_3,int param_4)

{
  int iVar1;
  undefined4 local_18;
  undefined4 local_14;
  
  local_18 = 0;
  local_14 = *(int *)(param_1 + 0x4c);
  while (local_18 < param_4) {
    iVar1 = WebPRescalerImport(*(undefined4 *)(param_1 + 0xd0),param_4 - local_18,
                               param_2 + param_3 * local_18,param_3);
    local_18 = local_18 + iVar1;
    iVar1 = FUN_007500a4(param_1,local_14);
    local_14 = local_14 + iVar1;
  }
  return local_14;
}

// ---- FUN_0075016c  @ 0x75016c
int FUN_0075016c(int param_1,int param_2,int param_3,undefined4 param_4,int param_5)

{
  bool bVar1;
  undefined4 local_10;
  undefined4 local_c;
  
  local_10 = *(int *)(param_1 + 0x4c);
  local_c = param_2;
  while (bVar1 = 0 < param_5, param_5 = param_5 + -1, bVar1) {
    FUN_0074fdc0(local_c,param_4,local_10,*(undefined4 *)(param_1 + 0x10));
    local_c = local_c + param_3;
    local_10 = local_10 + 1;
  }
  return local_10;
}

// ---- FUN_007501c4  @ 0x7501c4
bool FUN_007501c4(int param_1,int param_2,int param_3,int *param_4,int param_5)

{
  int local_1c;
  int local_18;
  
  if (param_3 <= param_2) {
    __assert2("../libwebp/src/dec/vp8l.c",0x241,"SetCropWindow","y_start < y_end");
  }
  if (*(int *)(param_1 + 0x50) <= *(int *)(param_1 + 0x4c)) {
    __assert2("../libwebp/src/dec/vp8l.c",0x242,"SetCropWindow","io->crop_left < io->crop_right");
  }
  local_1c = param_3;
  if (*(int *)(param_1 + 0x58) < param_3) {
    local_1c = *(int *)(param_1 + 0x58);
  }
  local_18 = param_2;
  if (param_2 < *(int *)(param_1 + 0x54)) {
    local_18 = *(int *)(param_1 + 0x54);
    *param_4 = *param_4 + (*(int *)(param_1 + 0x54) - param_2) * param_5 * 4;
  }
  if (local_18 < local_1c) {
    *param_4 = *param_4 + *(int *)(param_1 + 0x4c) * 4;
    *(int *)(param_1 + 8) = local_18 - *(int *)(param_1 + 0x54);
    *(int *)(param_1 + 0xc) = *(int *)(param_1 + 0x50) - *(int *)(param_1 + 0x4c);
    *(int *)(param_1 + 0x10) = local_1c - local_18;
  }
  return local_18 < local_1c;
}

// ---- FUN_007502bc  @ 0x7502bc
undefined4 FUN_007502bc(int param_1,int param_2,uint param_3,int param_4,int param_5)

{
  undefined4 uVar1;
  
  if (param_3 == 0) {
    uVar1 = 0;
  }
  else {
    uVar1 = *(undefined4 *)
             (param_1 +
             (param_2 * (param_5 >> (param_3 & 0xff)) + (param_4 >> (param_3 & 0xff))) * 4);
  }
  return uVar1;
}

// ---- FUN_007502fc  @ 0x7502fc
int FUN_007502fc(int param_1,undefined4 param_2,undefined4 param_3)

{
  int iVar1;
  
  iVar1 = FUN_007502bc(*(undefined4 *)(param_1 + 0x18),*(undefined4 *)(param_1 + 0x14),
                       *(undefined4 *)(param_1 + 0x10),param_2,param_3);
  if (*(int *)(param_1 + 0x1c) <= iVar1) {
    __assert2("../libwebp/src/dec/vp8l.c",0x261,"GetHtreeGroupForPos",
              "meta_index < hdr->num_htree_groups_");
  }
  return *(int *)(param_1 + 0x20) + iVar1 * 0x3c;
}

// ---- FUN_00750370  @ 0x750370
void FUN_00750370(int param_1,int param_2,void *param_3)

{
  bool bVar1;
  int iVar2;
  void *__dest;
  undefined4 local_24;
  undefined4 local_20;
  
  local_24 = *(int *)(param_1 + 0x74);
  iVar2 = *(int *)(param_1 + 0x48);
  __dest = *(void **)(param_1 + 0x18);
  memcpy(__dest,param_3,param_2 * *(int *)(param_1 + 0x40) * 4);
  local_20 = param_3;
  while (bVar1 = 0 < local_24, local_24 = local_24 + -1, bVar1) {
    VP8LInverseTransform(param_1 + 0x78 + local_24 * 0x14,iVar2,iVar2 + param_2,local_20,__dest);
    local_20 = __dest;
  }
  return;
}

// ---- FUN_00750404  @ 0x750404
void FUN_00750404(int param_1,int param_2)

{
  int iVar1;
  undefined4 uVar2;
  undefined4 local_2c;
  int local_28;
  int local_24;
  int *local_20;
  uint *local_1c;
  int local_18;
  uint *local_14;
  int local_10;
  int local_c;
  
  local_28 = *(int *)(param_1 + 0x14) + *(int *)(param_1 + 0x48) * *(int *)(param_1 + 0x40) * 4;
  local_24 = param_2 - *(int *)(param_1 + 0x48);
  if (0 < local_24) {
    FUN_00750370(param_1,local_24,local_28);
    local_20 = *(int **)(param_1 + 0xc);
    local_2c = *(undefined4 *)(param_1 + 0x18);
    iVar1 = FUN_007501c4(local_20,*(undefined4 *)(param_1 + 0x48),param_2,&local_2c,*local_20);
    if (iVar1 != 0) {
      local_1c = *(uint **)(param_1 + 0x10);
      local_18 = *local_20 << 2;
      if (*local_1c < 0xb) {
        local_14 = local_1c + 4;
        local_10 = *local_14 + local_1c[5] * *(int *)(param_1 + 0x4c);
        if (local_20[0x17] == 0) {
          local_c = FUN_0074fd68(*local_1c,local_2c,local_18,local_20[3],local_20[4],local_10,
                                 local_1c[5]);
        }
        else {
          local_c = FUN_0074fcdc(param_1,local_2c,local_18,local_20[4],local_10,local_1c[5]);
        }
        *(int *)(param_1 + 0x4c) = *(int *)(param_1 + 0x4c) + local_c;
      }
      else {
        if (local_20[0x17] == 0) {
          uVar2 = FUN_0075016c(param_1,local_2c,local_18,local_20[3],local_20[4]);
        }
        else {
          uVar2 = FUN_00750100(param_1,local_2c,local_18,local_20[4]);
        }
        *(undefined4 *)(param_1 + 0x4c) = uVar2;
      }
      if ((int)local_1c[2] < *(int *)(param_1 + 0x4c)) {
        __assert2("../libwebp/src/dec/vp8l.c",0x29e,"ProcessRows",
                  "dec->last_out_row_ <= output->height");
      }
    }
    *(int *)(param_1 + 0x48) = param_2;
    if (*(int *)(param_1 + 0x44) < *(int *)(param_1 + 0x48)) {
      __assert2("../libwebp/src/dec/vp8l.c",0x2a4,"ProcessRows","dec->last_row_ <= dec->height_");
    }
  }
  return;
}

// ---- FUN_007505a0  @ 0x7505a0
bool FUN_007505a0(undefined4 *param_1,int *param_2,int param_3,int param_4,code *param_5)

{
  int iVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  undefined4 *puVar6;
  int *piVar7;
  int *piVar8;
  undefined4 *puVar9;
  uint uVar10;
  undefined4 uVar11;
  bool bVar12;
  uint local_68;
  uint local_64;
  int local_60;
  int *local_5c;
  int *local_58;
  int local_54;
  
  bVar12 = true;
  local_68 = 0;
  local_64 = 0;
  puVar6 = param_1 + 8;
  piVar7 = param_1 + 0x14;
  local_60 = param_1[0x1c];
  piVar8 = param_2 + param_4 * param_3;
  iVar5 = *piVar7;
  if (*piVar7 < 1) {
    puVar9 = (undefined4 *)0x0;
  }
  else {
    puVar9 = param_1 + 0x15;
  }
  uVar10 = param_1[0x17];
  local_5c = param_2;
  local_58 = param_2;
  if (local_60 == 0) {
    __assert2("../libwebp/src/dec/vp8l.c",0x2b8,"DecodeImageData","htree_group != NULL");
  }
  do {
    if ((param_1[0xe] != 0) || (piVar8 <= local_5c)) {
      if (param_5 != (code *)0x0) {
        (*param_5)(param_1,local_64);
      }
      goto LAB_0075090c;
    }
    if ((uVar10 & local_68) == 0) {
      local_60 = FUN_007502fc(piVar7,local_68,local_64);
    }
    VP8LFillBitWindow(puVar6);
    iVar1 = FUN_0074f46c(local_60,puVar6);
    if (iVar1 < 0x100) {
      iVar2 = FUN_0074f46c(local_60 + 0xc,puVar6);
      VP8LFillBitWindow(puVar6);
      iVar3 = FUN_0074f46c(local_60 + 0x18,puVar6);
      iVar4 = FUN_0074f46c(local_60 + 0x24,puVar6);
      *local_5c = iVar4 * 0x1000000 + iVar2 * 0x10000 + iVar1 * 0x100 + iVar3;
LAB_007506ce:
      local_5c = local_5c + 1;
      local_68 = local_68 + 1;
      if (param_3 <= (int)local_68) {
        local_68 = 0;
        local_64 = local_64 + 1;
        if ((param_5 != (code *)0x0) && ((local_64 & 0xf) == 0)) {
          (*param_5)(param_1,local_64);
        }
        if (puVar9 != (undefined4 *)0x0) {
          while (local_58 < local_5c) {
            iVar1 = *local_58;
            local_58 = local_58 + 1;
            FUN_0074f090(puVar9,iVar1);
          }
        }
      }
    }
    else {
      if (0x117 < iVar1) {
        if (iVar1 < iVar5 + 0x118) {
          if (puVar9 == (undefined4 *)0x0) {
            __assert2("../libwebp/src/dec/vp8l.c",0x2fe,"DecodeImageData","color_cache != NULL");
          }
          while (local_58 < local_5c) {
            iVar2 = *local_58;
            local_58 = local_58 + 1;
            FUN_0074f090(puVar9,iVar2);
          }
          iVar1 = FUN_0074f03c(puVar9,iVar1 + -0x118);
          *local_5c = iVar1;
          goto LAB_007506ce;
        }
        bVar12 = false;
        goto LAB_0075090c;
      }
      iVar1 = FUN_0074f394(iVar1 + -0x100,puVar6);
      uVar11 = FUN_0074f46c(local_60 + 0x30,puVar6);
      VP8LFillBitWindow(puVar6);
      uVar11 = FUN_0074f348(uVar11,puVar6);
      iVar2 = FUN_0074f3ac(param_3,uVar11);
      if (((int)local_5c - (int)param_2 >> 2 < iVar2) || ((int)piVar8 - (int)local_5c >> 2 < iVar1))
      {
        bVar12 = false;
        goto LAB_0075090c;
      }
      for (local_54 = 0; local_54 < iVar1; local_54 = local_54 + 1) {
        local_5c[local_54] = local_5c[local_54 - iVar2];
      }
      local_5c = local_5c + iVar1;
      local_68 = local_68 + iVar1;
      while (param_3 <= (int)local_68) {
        local_68 = local_68 - param_3;
        local_64 = local_64 + 1;
        if ((param_5 != (code *)0x0) && ((local_64 & 0xf) == 0)) {
          (*param_5)(param_1,local_64);
        }
      }
      if ((local_5c < piVar8) &&
         (local_60 = FUN_007502fc(piVar7,local_68,local_64), puVar9 != (undefined4 *)0x0)) {
        while (local_58 < local_5c) {
          iVar1 = *local_58;
          local_58 = local_58 + 1;
          FUN_0074f090(puVar9,iVar1);
        }
      }
    }
    bVar12 = param_1[0xf] == 0;
    if (!bVar12) {
LAB_0075090c:
      if (((param_1[0xf] == 0) && (bVar12 != false)) &&
         ((param_1[0xe] == 0 || (piVar8 <= local_5c)))) {
        if (local_5c == piVar8) {
          param_1[2] = 0;
        }
      }
      else {
        bVar12 = false;
        if (param_1[0xe] == 0) {
          uVar11 = 3;
        }
        else {
          uVar11 = 5;
        }
        *param_1 = uVar11;
      }
      return bVar12;
    }
  } while( true );
}

// ---- FUN_00750978  @ 0x750978
void FUN_00750978(int param_1)

{
  free(*(void **)(param_1 + 0x10));
  *(undefined4 *)(param_1 + 0x10) = 0;
  return;
}

// ---- FUN_00750994  @ 0x750994
undefined4 FUN_00750994(int param_1,int param_2)

{
  undefined4 *puVar1;
  int iVar2;
  undefined4 uVar3;
  int iVar4;
  undefined4 local_1c;
  
  iVar2 = 1 << (8 >> (*(uint *)(param_2 + 4) & 0xff) & 0xffU);
  puVar1 = (undefined4 *)WebPSafeMalloc(iVar2,iVar2 >> 0x1f,4);
  if (puVar1 == (undefined4 *)0x0) {
    uVar3 = 0;
  }
  else {
    iVar4 = *(int *)(param_2 + 0x10);
    *puVar1 = **(undefined4 **)(param_2 + 0x10);
    for (local_1c = 4; local_1c < param_1 * 4; local_1c = local_1c + 1) {
      *(char *)((int)puVar1 + local_1c) =
           *(char *)(iVar4 + local_1c) + *(char *)((int)puVar1 + local_1c + -4);
    }
    for (; local_1c < iVar2 * 4; local_1c = local_1c + 1) {
      *(undefined1 *)((int)puVar1 + local_1c) = 0;
    }
    free(*(void **)(param_2 + 0x10));
    *(undefined4 **)(param_2 + 0x10) = puVar1;
    uVar3 = 1;
  }
  return uVar3;
}

// ---- FUN_00750a64  @ 0x750a64
undefined4 FUN_00750a64(uint *param_1,uint *param_2,int param_3)

{
  uint uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  uint uVar4;
  int iVar5;
  int iVar6;
  uint *puVar7;
  undefined4 local_20;
  
  local_20 = 1;
  iVar6 = param_3 + 0x20;
  puVar7 = (uint *)(param_3 + 0x78 + *(int *)(param_3 + 0x74) * 0x14);
  uVar1 = VP8LReadBits(iVar6,2);
  if ((1 << (uVar1 & 0xff) & *(uint *)(param_3 + 200)) == 0) {
    *(uint *)(param_3 + 200) = *(uint *)(param_3 + 200) | 1 << (uVar1 & 0xff);
    *puVar7 = uVar1;
    puVar7[2] = *param_1;
    puVar7[3] = *param_2;
    puVar7[4] = 0;
    *(int *)(param_3 + 0x74) = *(int *)(param_3 + 0x74) + 1;
    if (4 < *(int *)(param_3 + 0x74)) {
      __assert2("../libwebp/src/dec/vp8l.c",0x34f,"ReadTransform",
                "dec->next_transform_ <= NUM_TRANSFORMS");
    }
    switch(uVar1) {
    case 0:
    case 1:
      iVar6 = VP8LReadBits(iVar6,3);
      puVar7[1] = iVar6 + 2;
      uVar2 = FUN_0074f0fc(puVar7[2],puVar7[1]);
      uVar3 = FUN_0074f0fc(puVar7[3],puVar7[1]);
      local_20 = FUN_00750e70(uVar2,uVar3,0,param_3,puVar7 + 4);
      break;
    case 2:
      break;
    case 3:
      iVar6 = VP8LReadBits(iVar6,8);
      iVar6 = iVar6 + 1;
      if (iVar6 < 0x11) {
        if (iVar6 < 5) {
          if (iVar6 < 3) {
            uVar1 = 3;
          }
          else {
            uVar1 = 2;
          }
        }
        else {
          uVar1 = 1;
        }
      }
      else {
        uVar1 = 0;
      }
      uVar4 = FUN_0074f0fc(puVar7[2],uVar1);
      *param_1 = uVar4;
      puVar7[1] = uVar1;
      iVar5 = FUN_00750e70(iVar6,1,0,param_3,puVar7 + 4);
      if ((iVar5 == 0) || (iVar6 = FUN_00750994(iVar6,puVar7), iVar6 == 0)) {
        local_20 = 0;
      }
      else {
        local_20 = 1;
      }
      break;
    default:
      __assert2("../libwebp/src/dec/vp8l.c",0x36a,"ReadTransform",&DAT_00870c4c);
    }
  }
  else {
    local_20 = 0;
  }
  return local_20;
}

// ---- FUN_00750c78  @ 0x750c78
void FUN_00750c78(void *param_1)

{
  if (param_1 == (void *)0x0) {
    __assert2("../libwebp/src/dec/vp8l.c",0x375,"InitMetadata",&DAT_00870c50);
  }
  memset(param_1,0,0x24);
  return;
}

// ---- FUN_00750cc0  @ 0x750cc0
void FUN_00750cc0(int param_1)

{
  if (param_1 == 0) {
    __assert2("../libwebp/src/dec/vp8l.c",0x37a,"ClearMetadata",&DAT_00870c50);
  }
  free(*(void **)(param_1 + 0x18));
  FUN_0074f884(*(undefined4 *)(param_1 + 0x20),*(undefined4 *)(param_1 + 0x1c));
  VP8LColorCacheClear(param_1 + 4);
  FUN_00750c78(param_1);
  return;
}

// ---- FUN_00750e14  @ 0x750e14
void FUN_00750e14(int param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 uVar1;
  uint uVar2;
  int iVar3;
  
  uVar2 = *(uint *)(param_1 + 0x60);
  *(undefined4 *)(param_1 + 0x40) = param_2;
  *(undefined4 *)(param_1 + 0x44) = param_3;
  uVar1 = FUN_0074f0fc(param_2,uVar2);
  *(undefined4 *)(param_1 + 100) = uVar1;
  if (uVar2 == 0) {
    iVar3 = -1;
  }
  else {
    iVar3 = (1 << (uVar2 & 0xff)) + -1;
  }
  *(int *)(param_1 + 0x5c) = iVar3;
  return;
}

// ---- FUN_00750e70  @ 0x750e70
int FUN_00750e70(uint param_1,uint param_2,int param_3,int *param_4,undefined4 *param_5)

{
  int iVar1;
  uint local_34;
  uint local_30;
  int local_2c;
  void *local_28;
  uint local_24;
  int *local_20;
  int *local_1c;
  undefined4 local_18;
  int iStack_14;
  
  local_2c = 1;
  local_20 = param_4 + 8;
  local_1c = param_4 + 0x14;
  local_28 = (void *)0x0;
  local_24 = 0;
  local_34 = param_1;
  local_30 = param_2;
  if (param_3 != 0) {
    while ((local_2c != 0 && (iVar1 = VP8LReadBits(local_20,1), iVar1 != 0))) {
      local_2c = FUN_00750a64(&local_34,&local_30,param_4);
    }
  }
  if ((local_2c != 0) && (iVar1 = VP8LReadBits(local_20,1), iVar1 != 0)) {
    local_24 = VP8LReadBits(local_20,4);
    if (((int)local_24 < 1) || (0xb < (int)local_24)) {
      local_2c = 0;
    }
    else {
      local_2c = 1;
    }
    if (local_2c == 0) {
      *param_4 = 3;
      local_2c = 0;
      goto LAB_0075103c;
    }
  }
  if ((local_2c == 0) ||
     (iVar1 = FUN_0074f8f8(param_4,local_34,local_30,local_24,param_3), iVar1 == 0)) {
    local_2c = 0;
  }
  else {
    local_2c = 1;
  }
  if (local_2c == 0) {
    *param_4 = 3;
  }
  else {
    if ((int)local_24 < 1) {
      *local_1c = 0;
    }
    else {
      *local_1c = 1 << (local_24 & 0xff);
      iVar1 = VP8LColorCacheInit(local_1c + 1,local_24);
      if (iVar1 == 0) {
        *param_4 = 1;
        local_2c = 0;
        goto LAB_0075103c;
      }
    }
    FUN_00750e14(param_4,local_34,local_30);
    if (param_3 == 0) {
      local_18 = (undefined4)((ulonglong)local_34 * (ulonglong)local_30);
      iStack_14 = local_30 * ((int)local_34 >> 0x1f) + local_34 * ((int)local_30 >> 0x1f) +
                  (int)((ulonglong)local_34 * (ulonglong)local_30 >> 0x20);
      local_28 = (void *)WebPSafeMalloc(local_18,iStack_14,4);
      if (local_28 == (void *)0x0) {
        *param_4 = 1;
        local_2c = 0;
      }
      else {
        iVar1 = FUN_007505a0(param_4,local_28,local_34,local_30,0);
        if ((iVar1 == 0) || (local_20[7] != 0)) {
          local_2c = 0;
        }
        else {
          local_2c = 1;
        }
      }
    }
    else {
      param_4[2] = 1;
    }
  }
LAB_0075103c:
  if (local_2c == 0) {
    free(local_28);
    FUN_00750cc0(local_1c);
    if ((*param_4 == 3) && (param_4[0xe] != 0)) {
      *param_4 = 5;
    }
  }
  else {
    if (param_5 == (undefined4 *)0x0) {
      if (local_28 != (void *)0x0) {
        __assert2("../libwebp/src/dec/vp8l.c",0x407,"DecodeImageStream","data == NULL");
      }
      if (param_3 == 0) {
        __assert2("../libwebp/src/dec/vp8l.c",0x408,"DecodeImageStream","is_level0");
      }
    }
    else {
      *param_5 = local_28;
    }
    if (param_3 == 0) {
      FUN_00750cc0(local_1c);
    }
  }
  return local_2c;
}

// ---- FUN_007510e0  @ 0x7510e0
bool FUN_007510e0(undefined4 *param_1,uint param_2)

{
  undefined4 uVar1;
  uint uVar2;
  uint uVar3;
  uint uVar4;
  
  uVar3 = param_1[0x10];
  uVar4 = param_1[0x11];
  uVar2 = (uint)((ulonglong)uVar3 * (ulonglong)uVar4);
  if ((int)param_2 < (int)param_1[0x10]) {
    __assert2("../libwebp/src/dec/vp8l.c",0x41c,"AllocateARGBBuffers","dec->width_ <= final_width");
  }
  uVar1 = WebPSafeMalloc(param_2 * 0x10 + uVar2 + param_2,
                         (param_2 >> 0x1c | ((int)param_2 >> 0x1f) << 4) +
                         uVar4 * ((int)uVar3 >> 0x1f) + uVar3 * ((int)uVar4 >> 0x1f) +
                         (int)((ulonglong)uVar3 * (ulonglong)uVar4 >> 0x20) +
                         ((int)param_2 >> 0x1f) + (uint)CARRY4(uVar2,param_2) +
                         (uint)CARRY4(param_2 * 0x10,uVar2 + param_2),4);
  param_1[5] = uVar1;
  if (param_1[5] != 0) {
    param_1[6] = param_1[5] + (uVar2 + param_2) * 4;
  }
  else {
    param_1[6] = 0;
    *param_1 = 1;
  }
  return param_1[5] != 0;
}

// ---- FUN_007511d4  @ 0x7511d4
void FUN_007511d4(int param_1,int param_2)

{
  int iVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  undefined4 local_24;
  
  iVar2 = param_2 - *(int *)(param_1 + 0x48);
  if (0 < iVar2) {
    FUN_00750370(param_1,iVar2,
                 *(int *)(param_1 + 0x14) + *(int *)(param_1 + 0x48) * *(int *)(param_1 + 0x40) * 4)
    ;
    iVar3 = **(int **)(param_1 + 0xc);
    iVar1 = *(int *)(*(int *)(param_1 + 0xc) + 0x28);
    iVar4 = *(int *)(param_1 + 0x48);
    iVar5 = *(int *)(param_1 + 0x18);
    for (local_24 = 0; local_24 < iVar2 * iVar3; local_24 = local_24 + 1) {
      *(char *)(iVar1 + iVar3 * iVar4 + local_24) =
           (char)((uint)*(undefined4 *)(iVar5 + local_24 * 4) >> 8);
    }
    *(int *)(param_1 + 0x4c) = param_2;
    *(undefined4 *)(param_1 + 0x48) = *(undefined4 *)(param_1 + 0x4c);
  }
  return;
}

// ---- FUN_007515d0  @ 0x7515d0
bool FUN_007515d0(uint param_1)

{
  return param_1 < 0xb;
}

// ---- FUN_007515e4  @ 0x7515e4
undefined4 FUN_007515e4(undefined4 param_1)

{
  undefined4 uVar1;
  
  uVar1 = WebPInitDecBufferInternal(param_1,0x200);
  return uVar1;
}

// ---- FUN_007515fc  @ 0x7515fc
undefined4 FUN_007515fc(undefined4 param_1)

{
  undefined4 uVar1;
  
  uVar1 = VP8InitIoInternal(param_1,0x200);
  return uVar1;
}

// ---- FUN_00751614  @ 0x751614
uint FUN_00751614(uint3 *param_1)

{
  return (uint)*param_1;
}

// ---- FUN_00751640  @ 0x751640
uint FUN_00751640(int param_1)

{
  uint uVar1;
  
  uVar1 = FUN_00751614(param_1);
  return (uint)*(byte *)(param_1 + 3) << 0x18 | uVar1;
}

// ---- FUN_00751664  @ 0x751664
undefined4 FUN_00751664(int *param_1,uint *param_2,uint *param_3)

{
  int iVar1;
  uint uVar2;
  
  if (param_1 == (int *)0x0) {
    __assert2("../libwebp/src/dec/webp.c",0x41,"ParseRIFF","data != NULL");
  }
  if (param_2 == (uint *)0x0) {
    __assert2("../libwebp/src/dec/webp.c",0x42,"ParseRIFF","data_size != NULL");
  }
  if (param_3 == (uint *)0x0) {
    __assert2("../libwebp/src/dec/webp.c",0x43,"ParseRIFF","riff_size != NULL");
  }
  *param_3 = 0;
  if ((0xb < *param_2) && (iVar1 = memcmp((void *)*param_1,&DAT_00870e58,4), iVar1 == 0)) {
    iVar1 = memcmp((void *)(*param_1 + 8),&DAT_00870e60,4);
    if (iVar1 != 0) {
      return 3;
    }
    uVar2 = FUN_00751640(*param_1 + 4);
    if (uVar2 < 0xc) {
      return 3;
    }
    if (0xfffffff6 < uVar2) {
      return 3;
    }
    *param_3 = uVar2;
    *param_1 = *param_1 + 0xc;
    *param_2 = *param_2 - 0xc;
  }
  return 0;
}

// ---- FUN_00751798  @ 0x751798
undefined4
FUN_00751798(int *param_1,uint *param_2,undefined4 *param_3,uint *param_4,uint *param_5,
            undefined4 *param_6)

{
  int iVar1;
  undefined4 uVar2;
  uint uVar3;
  uint uVar4;
  
  if (param_1 == (int *)0x0) {
    __assert2("../libwebp/src/dec/webp.c",0x68,"ParseVP8X","data != NULL");
  }
  if (param_2 == (uint *)0x0) {
    __assert2("../libwebp/src/dec/webp.c",0x69,"ParseVP8X","data_size != NULL");
  }
  if (param_3 == (undefined4 *)0x0) {
    __assert2("../libwebp/src/dec/webp.c",0x6a,"ParseVP8X","found_vp8x != NULL");
  }
  *param_3 = 0;
  if (*param_2 < 8) {
    return 7;
  }
  iVar1 = memcmp((void *)*param_1,&DAT_00870e7c,4);
  if (iVar1 == 0) {
    iVar1 = FUN_00751640(*param_1 + 4);
    if (iVar1 != 10) {
      return 3;
    }
    if (*param_2 < 0x12) {
      return 7;
    }
    uVar2 = FUN_00751640(*param_1 + 8);
    iVar1 = FUN_00751614(*param_1 + 0xc);
    uVar3 = iVar1 + 1;
    iVar1 = FUN_00751614(*param_1 + 0xf);
    uVar4 = iVar1 + 1;
    if (uVar4 * ((int)uVar3 >> 0x1f) + uVar3 * ((int)uVar4 >> 0x1f) +
        (int)((ulonglong)uVar3 * (ulonglong)uVar4 >> 0x20) != 0) {
      return 3;
    }
    if (param_6 != (undefined4 *)0x0) {
      *param_6 = uVar2;
    }
    if (param_4 != (uint *)0x0) {
      *param_4 = uVar3;
    }
    if (param_5 != (uint *)0x0) {
      *param_5 = uVar4;
    }
    *param_1 = *param_1 + 0x12;
    *param_2 = *param_2 - 0x12;
    *param_3 = 1;
  }
  return 0;
}

// ---- FUN_00751950  @ 0x751950
undefined4 FUN_00751950(undefined4 *param_1,uint *param_2,uint param_3,int *param_4,uint *param_5)

{
  uint uVar1;
  int iVar2;
  uint uVar3;
  void *local_1c;
  uint local_18;
  uint local_14;
  
  local_14 = 0x16;
  if (param_1 == (undefined4 *)0x0) {
    __assert2("../libwebp/src/dec/webp.c",0xa1,"ParseOptionalChunks","data != NULL");
  }
  if (param_2 == (uint *)0x0) {
    __assert2("../libwebp/src/dec/webp.c",0xa2,"ParseOptionalChunks","data_size != NULL");
  }
  local_1c = (void *)*param_1;
  local_18 = *param_2;
  if (param_4 == (int *)0x0) {
    __assert2("../libwebp/src/dec/webp.c",0xa6,"ParseOptionalChunks","alpha_data != NULL");
  }
  if (param_5 == (uint *)0x0) {
    __assert2("../libwebp/src/dec/webp.c",0xa7,"ParseOptionalChunks","alpha_size != NULL");
  }
  *param_4 = 0;
  *param_5 = 0;
  while( true ) {
    *param_1 = local_1c;
    *param_2 = local_18;
    if (local_18 < 8) {
      return 7;
    }
    uVar1 = FUN_00751640((int)local_1c + 4);
    if (0xfffffff6 < uVar1) break;
    uVar3 = uVar1 + 9 & 0xfffffffe;
    local_14 = local_14 + uVar3;
    if ((param_3 != 0) && (param_3 < local_14)) {
      return 3;
    }
    if (local_18 < uVar3) {
      return 7;
    }
    iVar2 = memcmp(local_1c,&DAT_00870eac,4);
    if (iVar2 == 0) {
      *param_4 = (int)local_1c + 8;
      *param_5 = uVar1;
    }
    else {
      iVar2 = memcmp(local_1c,&DAT_00870eb4,4);
      if ((iVar2 == 0) || (iVar2 = memcmp(local_1c,&DAT_00870ebc,4), iVar2 == 0)) {
        return 0;
      }
    }
    local_1c = (void *)((int)local_1c + uVar3);
    local_18 = local_18 - uVar3;
  }
  return 3;
}

// ---- FUN_00751b10  @ 0x751b10
undefined4 FUN_00751b10(int *param_1,uint *param_2,uint param_3,uint *param_4,uint *param_5)

{
  int iVar1;
  int iVar2;
  uint uVar3;
  void *__s1;
  undefined4 uVar4;
  
  __s1 = (void *)*param_1;
  iVar1 = memcmp(__s1,&DAT_00870eb4,4);
  iVar2 = memcmp(__s1,&DAT_00870ebc,4);
  if (__s1 == (void *)0x0) {
    __assert2("../libwebp/src/dec/webp.c",0xe8,"ParseVP8Header","data != NULL");
  }
  if (param_2 == (uint *)0x0) {
    __assert2("../libwebp/src/dec/webp.c",0xe9,"ParseVP8Header","data_size != NULL");
  }
  if (param_4 == (uint *)0x0) {
    __assert2("../libwebp/src/dec/webp.c",0xea,"ParseVP8Header","chunk_size != NULL");
  }
  if (param_5 == (uint *)0x0) {
    __assert2("../libwebp/src/dec/webp.c",0xeb,"ParseVP8Header","is_lossless != NULL");
  }
  if (*param_2 < 8) {
    uVar4 = 7;
  }
  else {
    if ((iVar1 == 0) || ((iVar2 == 0) != 0)) {
      uVar3 = FUN_00751640((int)__s1 + 4);
      if ((0xb < param_3) && (param_3 - 0xc < uVar3)) {
        return 3;
      }
      *param_4 = uVar3;
      *param_1 = *param_1 + 8;
      *param_2 = *param_2 - 8;
      *param_5 = (uint)(iVar2 == 0);
    }
    else {
      uVar3 = VP8LCheckSignature(__s1,*param_2);
      *param_5 = uVar3;
      *param_4 = *param_2;
    }
    uVar4 = 0;
  }
  return uVar4;
}

// ---- FUN_00751ca0  @ 0x751ca0
int FUN_00751ca0(void *param_1,uint param_2,undefined4 param_3,undefined4 param_4,uint *param_5,
                int *param_6)

{
  int iVar1;
  uint local_48;
  void *local_44;
  int local_40;
  uint local_3c;
  uint local_38;
  int local_34;
  void *local_30;
  uint local_2c;
  int local_28;
  int local_24;
  int local_20;
  uint local_1c;
  int local_18;
  int local_14 [2];
  
  local_38 = 0;
  local_40 = 0;
  if ((param_1 == (void *)0x0) || (param_2 < 0xc)) {
    local_34 = 7;
  }
  else {
    local_28 = 0;
    local_24 = 0;
    local_20 = 0;
    local_1c = 0;
    local_18 = 0;
    local_14[0] = 0;
    local_48 = param_2;
    local_44 = param_1;
    local_30 = param_1;
    local_2c = param_2;
    local_34 = FUN_00751664(&local_44,&local_48,&local_18);
    if (local_34 == 0) {
      local_38 = (uint)(local_18 != 0);
      local_3c = 0;
      local_34 = FUN_00751798(&local_44,&local_48,&local_40,param_3,param_4,&local_3c);
      if (local_34 == 0) {
        if ((local_38 == 0) && (local_40 != 0)) {
          local_34 = 3;
        }
        else {
          if (param_5 != (uint *)0x0) {
            *param_5 = (uint)((local_3c & 0x10) != 0);
          }
          if ((local_40 == 0) || (param_6 != (int *)0x0)) {
            if (local_48 < 4) {
              local_34 = 7;
            }
            else if (((((local_38 == 0) || (local_40 == 0)) &&
                      ((local_38 != 0 ||
                       ((local_40 != 0 || (iVar1 = memcmp(local_44,&DAT_00870eac,4), iVar1 != 0)))))
                      ) || (local_34 = FUN_00751950(&local_44,&local_48,local_18,&local_24,&local_20
                                                   ), local_34 == 0)) &&
                    (local_34 = FUN_00751b10(&local_44,&local_48,local_18,&local_1c,local_14),
                    local_34 == 0)) {
              if (local_1c < 0xfffffff7) {
                if (local_14[0] == 0) {
                  if (local_48 < 10) {
                    return 7;
                  }
                  iVar1 = VP8GetInfo(local_44,local_48,local_1c,param_3,param_4);
                  if (iVar1 == 0) {
                    return 3;
                  }
                }
                else {
                  if (local_48 < 5) {
                    return 7;
                  }
                  iVar1 = VP8LGetInfo(local_44,local_48,param_3,param_4,param_5);
                  if (iVar1 == 0) {
                    return 3;
                  }
                }
                if (param_5 != (uint *)0x0) {
                  *param_5 = *param_5 | (uint)(local_24 != 0);
                }
                if (param_6 != (int *)0x0) {
                  *param_6 = (int)local_30;
                  param_6[1] = local_2c;
                  param_6[2] = local_28;
                  param_6[3] = local_24;
                  param_6[4] = local_20;
                  param_6[5] = local_1c;
                  param_6[6] = local_18;
                  param_6[7] = local_14[0];
                  param_6[2] = (int)local_44 - *param_6;
                  if ((int)local_44 - *param_6 < 0) {
                    __assert2("../libwebp/src/dec/webp.c",0x16e,"ParseHeadersInternal",
                              "(uint64_t)(data - headers->data) < MAX_CHUNK_PAYLOAD");
                  }
                  if (param_6[2] != param_6[1] - local_48) {
                    __assert2("../libwebp/src/dec/webp.c",0x16f,"ParseHeadersInternal",
                              "headers->offset == headers->data_size - data_size");
                  }
                }
                local_34 = 0;
              }
              else {
                local_34 = 3;
              }
            }
          }
          else {
            local_34 = 0;
          }
        }
      }
    }
  }
  return local_34;
}

// ---- FUN_00751fe8  @ 0x751fe8
int FUN_00751fe8(int param_1,int param_2,undefined4 *param_3)

{
  int *piVar1;
  int iVar2;
  int local_a0;
  int local_94;
  int local_90;
  int local_8c;
  int local_88;
  int local_84;
  int local_78;
  undefined4 local_74;
  undefined4 local_70;
  int local_38;
  int local_34;
  
  local_94 = param_1;
  local_90 = param_2;
  local_a0 = WebPParseHeaders(&local_94);
  if (local_a0 == 0) {
    if (param_3 == (undefined4 *)0x0) {
      __assert2("../libwebp/src/dec/webp.c",0x195,"DecodeInto","params != NULL");
    }
    FUN_007515fc(&local_74);
    local_34 = local_94 + local_8c;
    local_38 = local_90 - local_8c;
    WebPInitCustomIo(param_3,&local_74);
    if (local_78 == 0) {
      piVar1 = (int *)VP8New();
      if (piVar1 == (int *)0x0) {
        return 1;
      }
      if ((param_3[5] == 0) || (*(int *)(param_3[5] + 0x28) < 1)) {
        iVar2 = 0;
      }
      else {
        iVar2 = 1;
      }
      piVar1[0x2b] = iVar2;
      piVar1[0x1e4] = local_88;
      piVar1[0x1e5] = local_84;
      iVar2 = VP8GetHeaders(piVar1,&local_74);
      if (iVar2 == 0) {
        local_a0 = *piVar1;
      }
      else {
        local_a0 = WebPAllocateDecBuffer(local_74,local_70,param_3[5],*param_3);
        if ((local_a0 == 0) && (iVar2 = VP8Decode(piVar1,&local_74), iVar2 == 0)) {
          local_a0 = *piVar1;
        }
      }
      VP8Delete(piVar1);
    }
    else {
      piVar1 = (int *)VP8LNew();
      if (piVar1 == (int *)0x0) {
        return 1;
      }
      iVar2 = VP8LDecodeHeader(piVar1,&local_74);
      if (iVar2 == 0) {
        local_a0 = *piVar1;
      }
      else {
        local_a0 = WebPAllocateDecBuffer(local_74,local_70,param_3[5],*param_3);
        if ((local_a0 == 0) && (iVar2 = VP8LDecodeImage(piVar1), iVar2 == 0)) {
          local_a0 = *piVar1;
        }
      }
      VP8LDelete(piVar1);
    }
    if (local_a0 != 0) {
      WebPFreeDecBuffer(*param_3);
    }
  }
  return local_a0;
}

// ---- FUN_00752170  @ 0x752170
int FUN_00752170(undefined4 param_1,undefined4 param_2,undefined4 param_3,int param_4,
                undefined4 param_5,undefined4 param_6)

{
  int iVar1;
  undefined4 local_1c4 [3];
  undefined4 local_1b8;
  int local_1b4;
  undefined4 local_1b0;
  undefined4 local_1ac;
  undefined4 *local_170 [90];
  
  if (param_4 == 0) {
    param_4 = 0;
  }
  else {
    FUN_007515e4(local_1c4);
    WebPResetDecParams(local_170);
    local_170[0] = local_1c4;
    local_1b0 = param_5;
    local_1ac = param_6;
    local_1b8 = 1;
    local_1c4[0] = param_1;
    local_1b4 = param_4;
    iVar1 = FUN_00751fe8(param_2,param_3,local_170);
    if (iVar1 != 0) {
      param_4 = 0;
    }
  }
  return param_4;
}

// ---- FUN_00752378  @ 0x752378
undefined4
FUN_00752378(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 *param_4,
            undefined4 *param_5,int param_6)

{
  int iVar1;
  undefined4 local_1c4;
  undefined4 local_1c0;
  undefined4 local_1bc [2];
  undefined4 local_1b4;
  undefined4 *local_170 [90];
  
  FUN_007515e4(&local_1c4);
  WebPResetDecParams(local_170);
  local_170[0] = &local_1c4;
  local_1c4 = param_1;
  iVar1 = WebPGetInfo(param_2,param_3,&local_1c0,local_1bc);
  if (iVar1 == 0) {
    local_1b4 = 0;
  }
  else {
    if (param_4 != (undefined4 *)0x0) {
      *param_4 = local_1c0;
    }
    if (param_5 != (undefined4 *)0x0) {
      *param_5 = local_1bc[0];
    }
    iVar1 = FUN_00751fe8(param_2,param_3,local_170);
    if (iVar1 == 0) {
      if (param_6 != 0) {
        WebPCopyDecBuffer(&local_1c4,param_6);
      }
      FUN_007515d0(param_1);
    }
    else {
      local_1b4 = 0;
    }
  }
  return local_1b4;
}

// ---- FUN_007525a0  @ 0x7525a0
void FUN_007525a0(void *param_1)

{
  if (param_1 == (void *)0x0) {
    __assert2("../libwebp/src/dec/webp.c",0x268,"DefaultFeatures","features != NULL");
  }
  memset(param_1,0,0x28);
  *(undefined4 *)((int)param_1 + 0xc) = 0;
  return;
}

// ---- FUN_007525f0  @ 0x7525f0
undefined4 FUN_007525f0(int param_1,undefined4 param_2,int param_3)

{
  undefined4 uVar1;
  
  if ((param_3 == 0) || (param_1 == 0)) {
    uVar1 = 2;
  }
  else {
    FUN_007525a0(param_3);
    uVar1 = FUN_00751ca0(param_1,param_2,param_3,param_3 + 4,param_3 + 8,0);
  }
  return uVar1;
}

// ---- FUN_00752988  @ 0x752988
undefined4 FUN_00752988(int param_1)

{
  int iVar1;
  uint uVar2;
  undefined4 uVar3;
  
  iVar1 = android_getCpuFamily();
  uVar2 = android_getCpuFeatures();
  if (param_1 == 2) {
    if ((iVar1 == 1) && ((uVar2 & 4) != 0)) {
      uVar3 = 1;
    }
    else {
      uVar3 = 0;
    }
  }
  else {
    uVar3 = 0;
  }
  return uVar3;
}

// ---- FUN_007529e0  @ 0x7529e0
void FUN_007529e0(void)

{
  undefined1 uVar1;
  int iVar2;
  int local_4;
  
  if (DAT_0096a220 == 0) {
    for (local_4 = -0xff; local_4 < 0x100; local_4 = local_4 + 1) {
      iVar2 = local_4;
      if (local_4 < 0) {
        iVar2 = -local_4;
      }
      *(char *)(local_4 + 0x96933f) = (char)iVar2;
      *(byte *)(local_4 + 0x96953f) = *(byte *)(local_4 + 0x96933f) >> 1;
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
      *(undefined1 *)(local_4 + 0x969a3c) = uVar1;
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
      (&DAT_00969eac)[local_4] = uVar1;
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
      *(undefined1 *)(local_4 + 0x96a01f) = uVar1;
    }
    DAT_0096a220 = 1;
  }
  return;
}

// ---- FUN_00752b1c  @ 0x752b1c
uint FUN_00752b1c(uint param_1)

{
  if ((param_1 & 0xffffff00) == 0) {
    param_1 = param_1 & 0xff;
  }
  else if ((int)param_1 < 0) {
    param_1 = 0;
  }
  else {
    param_1 = 0xff;
  }
  return param_1;
}

// ---- FUN_00752b48  @ 0x752b48
void FUN_00752b48(short *param_1,byte *param_2)

{
  short sVar1;
  short sVar2;
  short sVar3;
  short sVar4;
  byte bVar5;
  int iVar6;
  int iVar7;
  int iVar8;
  int iVar9;
  byte *local_80;
  short *local_7c;
  int *local_74;
  int local_70;
  int local_48 [16];
  
  local_74 = local_48;
  local_7c = param_1;
  for (local_70 = 0; local_70 < 4; local_70 = local_70 + 1) {
    sVar1 = *local_7c;
    sVar2 = local_7c[8];
    sVar3 = *local_7c;
    sVar4 = local_7c[8];
    iVar6 = (local_7c[4] * 0x8a8c >> 0x10) - (local_7c[0xc] * 0x14e7b >> 0x10);
    iVar7 = (local_7c[4] * 0x14e7b >> 0x10) + (local_7c[0xc] * 0x8a8c >> 0x10);
    *local_74 = (int)sVar1 + (int)sVar2 + iVar7;
    local_74[1] = ((int)sVar3 - (int)sVar4) + iVar6;
    local_74[2] = ((int)sVar3 - (int)sVar4) - iVar6;
    local_74[3] = ((int)sVar1 + (int)sVar2) - iVar7;
    local_74 = local_74 + 4;
    local_7c = local_7c + 1;
  }
  local_74 = local_48;
  local_80 = param_2;
  for (local_70 = 0; local_70 < 4; local_70 = local_70 + 1) {
    iVar6 = local_74[8] + *local_74 + 4;
    iVar7 = (*local_74 + 4) - local_74[8];
    iVar8 = (local_74[4] * 0x8a8c >> 0x10) - (local_74[0xc] * 0x14e7b >> 0x10);
    iVar9 = (local_74[4] * 0x14e7b >> 0x10) + (local_74[0xc] * 0x8a8c >> 0x10);
    bVar5 = FUN_00752b1c((uint)*local_80 + (iVar6 + iVar9 >> 3));
    *local_80 = bVar5;
    bVar5 = FUN_00752b1c((uint)local_80[1] + (iVar7 + iVar8 >> 3));
    local_80[1] = bVar5;
    bVar5 = FUN_00752b1c((uint)local_80[2] + (iVar7 - iVar8 >> 3));
    local_80[2] = bVar5;
    bVar5 = FUN_00752b1c((uint)local_80[3] + (iVar6 - iVar9 >> 3));
    local_80[3] = bVar5;
    local_74 = local_74 + 1;
    local_80 = local_80 + 0x20;
  }
  return;
}

// ---- FUN_00752da8  @ 0x752da8
void FUN_00752da8(int param_1,int param_2,int param_3)

{
  FUN_00752b48(param_1,param_2);
  if (param_3 != 0) {
    FUN_00752b48(param_1 + 0x20,param_2 + 4);
  }
  return;
}

// ---- FUN_00752dd8  @ 0x752dd8
void FUN_00752dd8(int param_1,int param_2)

{
  (*VP8Transform)(param_1,param_2,1);
  (*VP8Transform)(param_1 + 0x40,param_2 + 0x80,1);
  return;
}

// ---- FUN_00752e1c  @ 0x752e1c
void FUN_00752e1c(short *param_1,int param_2)

{
  short sVar1;
  undefined1 uVar2;
  undefined4 local_14;
  undefined4 local_10;
  
  sVar1 = *param_1;
  for (local_10 = 0; local_10 < 4; local_10 = local_10 + 1) {
    for (local_14 = 0; local_14 < 4; local_14 = local_14 + 1) {
      uVar2 = FUN_00752b1c((uint)*(byte *)(param_2 + local_10 * 0x20 + local_14) + (sVar1 + 4 >> 3))
      ;
      *(undefined1 *)(param_2 + local_10 * 0x20 + local_14) = uVar2;
    }
  }
  return;
}

// ---- FUN_00752e94  @ 0x752e94
void FUN_00752e94(short *param_1,int param_2)

{
  if (*param_1 != 0) {
    FUN_00752e1c(param_1,param_2);
  }
  if (param_1[0x10] != 0) {
    FUN_00752e1c(param_1 + 0x10,param_2 + 4);
  }
  if (param_1[0x20] != 0) {
    FUN_00752e1c(param_1 + 0x20,param_2 + 0x80);
  }
  if (param_1[0x30] != 0) {
    FUN_00752e1c(param_1 + 0x30,param_2 + 0x84);
  }
  return;
}

// ---- FUN_00752f10  @ 0x752f10
void FUN_00752f10(int param_1,undefined2 *param_2)

{
  int iVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  undefined2 *local_70;
  int local_68;
  int aiStack_40 [8];
  int aiStack_20 [4];
  int aiStack_10 [4];
  
  for (local_68 = 0; local_68 < 4; local_68 = local_68 + 1) {
    iVar1 = (int)*(short *)(param_1 + local_68 * 2) +
            (int)*(short *)(param_1 + (local_68 + 0xc) * 2);
    iVar2 = (int)*(short *)(param_1 + (local_68 + 4) * 2) +
            (int)*(short *)(param_1 + (local_68 + 8) * 2);
    iVar3 = (int)*(short *)(param_1 + (local_68 + 4) * 2) -
            (int)*(short *)(param_1 + (local_68 + 8) * 2);
    iVar4 = (int)*(short *)(param_1 + local_68 * 2) -
            (int)*(short *)(param_1 + (local_68 + 0xc) * 2);
    aiStack_40[local_68] = iVar1 + iVar2;
    aiStack_40[local_68 + 8] = iVar1 - iVar2;
    aiStack_40[local_68 + 4] = iVar4 + iVar3;
    aiStack_40[local_68 + 0xc] = iVar4 - iVar3;
  }
  local_70 = param_2;
  for (local_68 = 0; local_68 < 4; local_68 = local_68 + 1) {
    iVar3 = aiStack_40[local_68 * 4 + 3] + aiStack_40[local_68 * 4] + 3;
    iVar1 = aiStack_40[local_68 * 4 + 1];
    iVar4 = aiStack_40[local_68 * 4 + 2];
    iVar2 = aiStack_40[local_68 * 4 + 1];
    iVar5 = aiStack_40[local_68 * 4 + 2];
    iVar6 = (aiStack_40[local_68 * 4] + 3) - aiStack_40[local_68 * 4 + 3];
    *local_70 = (short)(iVar3 + iVar1 + iVar4 >> 3);
    local_70[0x10] = (short)(iVar6 + (iVar2 - iVar5) >> 3);
    local_70[0x20] = (short)(iVar3 - (iVar1 + iVar4) >> 3);
    local_70[0x30] = (short)(iVar6 - (iVar2 - iVar5) >> 3);
    local_70 = local_70 + 0x40;
  }
  return;
}

// ---- FUN_00753144  @ 0x753144
void FUN_00753144(int param_1,int param_2)

{
  byte bVar1;
  byte bVar2;
  undefined4 local_1c;
  undefined4 local_14;
  undefined4 local_10;
  
  bVar1 = *(byte *)(param_1 + -0x21);
  local_1c = param_1;
  for (local_14 = 0; local_14 < param_2; local_14 = local_14 + 1) {
    bVar2 = *(byte *)(local_1c + -1);
    for (local_10 = 0; local_10 < param_2; local_10 = local_10 + 1) {
      *(undefined1 *)(local_1c + local_10) =
           *(undefined1 *)
            ((0x96a01f - (uint)bVar1) + (uint)bVar2 + (uint)*(byte *)(param_1 + -0x20 + local_10));
    }
    local_1c = local_1c + 0x20;
  }
  return;
}

// ---- FUN_007531cc  @ 0x7531cc
void FUN_007531cc(undefined4 param_1)

{
  FUN_00753144(param_1,4);
  return;
}

// ---- FUN_007531e0  @ 0x7531e0
void FUN_007531e0(undefined4 param_1)

{
  FUN_00753144(param_1,8);
  return;
}

// ---- FUN_007531f4  @ 0x7531f4
void FUN_007531f4(undefined4 param_1)

{
  FUN_00753144(param_1,0x10);
  return;
}

// ---- FUN_00753208  @ 0x753208
void FUN_00753208(int param_1)

{
  undefined4 local_c;
  
  for (local_c = 0; local_c < 0x10; local_c = local_c + 1) {
    memcpy((void *)(param_1 + local_c * 0x20),(void *)(param_1 + -0x20),0x10);
  }
  return;
}

// ---- FUN_0075324c  @ 0x75324c
void FUN_0075324c(void *param_1)

{
  undefined4 local_14;
  undefined4 local_c;
  
  local_14 = param_1;
  for (local_c = 0x10; 0 < local_c; local_c = local_c + -1) {
    memset(local_14,(uint)*(byte *)((int)local_14 + -1),0x10);
    local_14 = (void *)((int)local_14 + 0x20);
  }
  return;
}

// ---- FUN_00753288  @ 0x753288
void FUN_00753288(int param_1,int param_2)

{
  undefined4 local_c;
  
  for (local_c = 0; local_c < 0x10; local_c = local_c + 1) {
    memset((void *)(param_2 + local_c * 0x20),param_1,0x10);
  }
  return;
}

// ---- FUN_007532c0  @ 0x7532c0
void FUN_007532c0(int param_1)

{
  undefined4 local_10;
  undefined4 local_c;
  
  local_10 = 0x10;
  for (local_c = 0; local_c < 0x10; local_c = local_c + 1) {
    local_10 = local_10 +
               (uint)*(byte *)(param_1 + local_c * 0x20 + -1) +
               (uint)*(byte *)(param_1 + local_c + -0x20);
  }
  FUN_00753288(local_10 >> 5,param_1);
  return;
}

// ---- FUN_0075331c  @ 0x75331c
void FUN_0075331c(int param_1)

{
  undefined4 local_10;
  undefined4 local_c;
  
  local_10 = 8;
  for (local_c = 0; local_c < 0x10; local_c = local_c + 1) {
    local_10 = local_10 + (uint)*(byte *)(param_1 + local_c * 0x20 + -1);
  }
  FUN_00753288(local_10 >> 4,param_1);
  return;
}

// ---- FUN_00753368  @ 0x753368
void FUN_00753368(int param_1)

{
  undefined4 local_10;
  undefined4 local_c;
  
  local_10 = 8;
  for (local_c = 0; local_c < 0x10; local_c = local_c + 1) {
    local_10 = local_10 + (uint)*(byte *)(param_1 + local_c + -0x20);
  }
  FUN_00753288(local_10 >> 4,param_1);
  return;
}

// ---- FUN_007533b0  @ 0x7533b0
void FUN_007533b0(undefined4 param_1)

{
  FUN_00753288(0x80,param_1);
  return;
}

// ---- FUN_007533c4  @ 0x7533c4
void FUN_007533c4(int param_1)

{
  undefined1 local_14;
  undefined1 local_13;
  undefined1 local_12;
  undefined1 local_11;
  int local_10;
  byte *local_c;
  
  local_c = (byte *)(param_1 + -0x20);
  local_14 = (undefined1)
             ((int)((uint)*(byte *)(param_1 + -0x21) + (uint)*local_c * 2 +
                    (uint)*(byte *)(param_1 + -0x1f) + 2) >> 2);
  local_13 = (undefined1)
             ((int)((uint)*local_c + (uint)*(byte *)(param_1 + -0x1f) * 2 +
                    (uint)*(byte *)(param_1 + -0x1e) + 2) >> 2);
  local_12 = (undefined1)
             ((int)((uint)*(byte *)(param_1 + -0x1f) + (uint)*(byte *)(param_1 + -0x1e) * 2 +
                    (uint)*(byte *)(param_1 + -0x1d) + 2) >> 2);
  local_11 = (undefined1)
             ((int)((uint)*(byte *)(param_1 + -0x1e) + (uint)*(byte *)(param_1 + -0x1d) * 2 +
                    (uint)*(byte *)(param_1 + -0x1c) + 2) >> 2);
  for (local_10 = 0; local_10 < 4; local_10 = local_10 + 1) {
    memcpy((void *)(param_1 + local_10 * 0x20),&local_14,4);
  }
  return;
}

// ---- FUN_007535b4  @ 0x7535b4
void FUN_007535b4(int param_1)

{
  undefined4 local_10;
  undefined4 local_c;
  
  local_10 = 4;
  for (local_c = 0; local_c < 4; local_c = local_c + 1) {
    local_10 = local_10 +
               (uint)*(byte *)(param_1 + local_c + -0x20) +
               (uint)*(byte *)(param_1 + local_c * 0x20 + -1);
  }
  for (local_c = 0; local_c < 4; local_c = local_c + 1) {
    memset((void *)(param_1 + local_c * 0x20),local_10 >> 3,4);
  }
  return;
}

// ---- FUN_00753fb8  @ 0x753fb8
void FUN_00753fb8(int param_1)

{
  undefined4 local_c;
  
  for (local_c = 0; local_c < 8; local_c = local_c + 1) {
    memcpy((void *)(param_1 + local_c * 0x20),(void *)(param_1 + -0x20),8);
  }
  return;
}

// ---- FUN_00753ffc  @ 0x753ffc
void FUN_00753ffc(void *param_1)

{
  undefined4 local_14;
  undefined4 local_c;
  
  local_14 = param_1;
  for (local_c = 0; local_c < 8; local_c = local_c + 1) {
    memset(local_14,(uint)*(byte *)((int)local_14 + -1),8);
    local_14 = (void *)((int)local_14 + 0x20);
  }
  return;
}

// ---- FUN_00754038  @ 0x754038
void FUN_00754038(undefined4 param_1,undefined4 param_2,int param_3)

{
  undefined4 *puVar1;
  int local_4;
  
  for (local_4 = 0; local_4 < 8; local_4 = local_4 + 1) {
    puVar1 = (undefined4 *)(param_3 + local_4 * 0x20);
    *puVar1 = param_1;
    puVar1[1] = param_2;
  }
  return;
}

// ---- FUN_0075406c  @ 0x75406c
void FUN_0075406c(int param_1)

{
  longlong lVar1;
  undefined4 local_10;
  undefined4 local_c;
  
  local_10 = 8;
  for (local_c = 0; local_c < 8; local_c = local_c + 1) {
    local_10 = local_10 +
               (uint)*(byte *)(param_1 + local_c + -0x20) +
               (uint)*(byte *)(param_1 + local_c * 0x20 + -1);
  }
  lVar1 = (ulonglong)(uint)(local_10 >> 4) * 0x1010101;
  FUN_00754038((int)lVar1,
               (local_10 >> 0x1f) * 0x1010101 + (local_10 >> 4) * 0x1010101 +
               (int)((ulonglong)lVar1 >> 0x20),param_1);
  return;
}

// ---- FUN_007540ec  @ 0x7540ec
void FUN_007540ec(int param_1)

{
  longlong lVar1;
  undefined4 local_10;
  undefined4 local_c;
  
  local_10 = 4;
  for (local_c = 0; local_c < 8; local_c = local_c + 1) {
    local_10 = local_10 + (uint)*(byte *)(param_1 + local_c + -0x20);
  }
  lVar1 = (ulonglong)(uint)(local_10 >> 3) * 0x1010101;
  FUN_00754038((int)lVar1,
               (local_10 >> 0x1f) * 0x1010101 + (local_10 >> 3) * 0x1010101 +
               (int)((ulonglong)lVar1 >> 0x20),param_1);
  return;
}

// ---- FUN_00754158  @ 0x754158
void FUN_00754158(int param_1)

{
  longlong lVar1;
  undefined4 local_10;
  undefined4 local_c;
  
  local_10 = 4;
  for (local_c = 0; local_c < 8; local_c = local_c + 1) {
    local_10 = local_10 + (uint)*(byte *)(param_1 + local_c * 0x20 + -1);
  }
  lVar1 = (ulonglong)(uint)(local_10 >> 3) * 0x1010101;
  FUN_00754038((int)lVar1,
               (local_10 >> 0x1f) * 0x1010101 + (local_10 >> 3) * 0x1010101 +
               (int)((ulonglong)lVar1 >> 0x20),param_1);
  return;
}

// ---- FUN_007541c8  @ 0x7541c8
void FUN_007541c8(undefined4 param_1)

{
  FUN_00754038(0x80808080,0x80808080,param_1);
  return;
}

// ---- FUN_007541e8  @ 0x7541e8
void FUN_007541e8(byte *param_1,int param_2)

{
  byte bVar1;
  char cVar2;
  int iVar3;
  
  bVar1 = *param_1;
  iVar3 = ((uint)bVar1 - (uint)param_1[-param_2]) * 3 +
          (int)*(char *)(((uint)param_1[param_2 * -2] - (uint)param_1[param_2]) + 0x969a3c);
  cVar2 = (&DAT_00969eac)[iVar3 + 4 >> 3];
  param_1[-param_2] =
       *(byte *)((uint)param_1[-param_2] + (int)(char)(&DAT_00969eac)[iVar3 + 3 >> 3] + 0x96a01f);
  *param_1 = *(byte *)(((uint)bVar1 - (int)cVar2) + 0x96a01f);
  return;
}

// ---- FUN_007542c0  @ 0x7542c0
void FUN_007542c0(byte *param_1,int param_2)

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
  cVar5 = (&DAT_00969eac)[iVar1 + 4 >> 3];
  cVar6 = (&DAT_00969eac)[iVar1 + 3 >> 3];
  iVar1 = cVar5 + 1 >> 1;
  param_1[param_2 * -2] = *(byte *)((uint)param_1[param_2 * -2] + iVar1 + 0x96a01f);
  param_1[-param_2] = *(byte *)((uint)bVar2 + (int)cVar6 + 0x96a01f);
  *param_1 = *(byte *)(((uint)bVar3 - (int)cVar5) + 0x96a01f);
  param_1[param_2] = *(byte *)(((uint)bVar4 - iVar1) + 0x96a01f);
  return;
}

// ---- FUN_007543d0  @ 0x7543d0
void FUN_007543d0(byte *param_1,int param_2)

{
  int iVar1;
  int iVar2;
  byte bVar3;
  byte bVar4;
  byte bVar5;
  byte bVar6;
  byte bVar7;
  int iVar8;
  
  bVar3 = param_1[param_2 * -2];
  bVar4 = param_1[-param_2];
  bVar5 = *param_1;
  bVar6 = param_1[param_2];
  bVar7 = param_1[param_2 * 2];
  iVar8 = (int)*(char *)(((uint)bVar5 - (uint)bVar4) * 3 +
                         (int)*(char *)(((uint)bVar3 - (uint)bVar6) + 0x969a3c) + 0x969a3c);
  iVar1 = iVar8 * 0x1b + 0x3f >> 7;
  iVar2 = iVar8 * 0x12 + 0x3f >> 7;
  iVar8 = iVar8 * 9 + 0x3f >> 7;
  param_1[param_2 * -3] = *(byte *)((uint)param_1[param_2 * -3] + iVar8 + 0x96a01f);
  param_1[param_2 * -2] = *(byte *)((uint)bVar3 + iVar2 + 0x96a01f);
  param_1[-param_2] = *(byte *)((uint)bVar4 + iVar1 + 0x96a01f);
  *param_1 = *(byte *)(((uint)bVar5 - iVar1) + 0x96a01f);
  param_1[param_2] = *(byte *)(((uint)bVar6 - iVar2) + 0x96a01f);
  param_1[param_2 * 2] = *(byte *)(((uint)bVar7 - iVar8) + 0x96a01f);
  return;
}

// ---- FUN_0075456c  @ 0x75456c
undefined4 FUN_0075456c(byte *param_1,int param_2,int param_3)

{
  undefined4 uVar1;
  
  if ((param_3 < (int)(uint)*(byte *)(((uint)param_1[param_2 * -2] - (uint)param_1[-param_2]) +
                                     0x96933f)) ||
     (param_3 < (int)(uint)*(byte *)(((uint)param_1[param_2] - (uint)*param_1) + 0x96933f))) {
    uVar1 = 1;
  }
  else {
    uVar1 = 0;
  }
  return uVar1;
}

// ---- FUN_007545f0  @ 0x7545f0
bool FUN_007545f0(byte *param_1,int param_2,int param_3)

{
  return (int)((uint)*(byte *)(((uint)param_1[-param_2] - (uint)*param_1) + 0x96933f) * 2 +
              (uint)*(byte *)(((uint)param_1[param_2 * -2] - (uint)param_1[param_2]) + 0x96953f)) <=
         param_3;
}

// ---- FUN_0075466c  @ 0x75466c
undefined4 FUN_0075466c(byte *param_1,int param_2,int param_3,int param_4)

{
  uint uVar1;
  uint uVar2;
  undefined4 uVar3;
  
  uVar1 = (uint)param_1[param_2 * -2];
  uVar2 = (uint)param_1[param_2];
  if (param_3 < (int)((uint)*(byte *)(((uint)param_1[-param_2] - (uint)*param_1) + 0x96933f) * 2 +
                     (uint)*(byte *)((uVar1 - uVar2) + 0x96953f))) {
    uVar3 = 0;
  }
  else if ((((param_4 < (int)(uint)*(byte *)(((uint)param_1[param_2 * -4] -
                                             (uint)param_1[param_2 * -3]) + 0x96933f)) ||
            (param_4 < (int)(uint)*(byte *)((param_1[param_2 * -3] - uVar1) + 0x96933f))) ||
           (param_4 < (int)(uint)*(byte *)((uVar1 - param_1[-param_2]) + 0x96933f))) ||
          (((param_4 < (int)(uint)*(byte *)(((uint)param_1[param_2 * 3] - (uint)param_1[param_2 * 2]
                                            ) + 0x96933f) ||
            (param_4 < (int)(uint)*(byte *)((param_1[param_2 * 2] - uVar2) + 0x96933f))) ||
           (param_4 < (int)(uint)*(byte *)((uVar2 - *param_1) + 0x96933f))))) {
    uVar3 = 0;
  }
  else {
    uVar3 = 1;
  }
  return uVar3;
}

// ---- FUN_007547e4  @ 0x7547e4
void FUN_007547e4(int param_1,undefined4 param_2,undefined4 param_3)

{
  int iVar1;
  undefined4 local_c;
  
  for (local_c = 0; local_c < 0x10; local_c = local_c + 1) {
    iVar1 = FUN_007545f0(param_1 + local_c,param_2,param_3);
    if (iVar1 != 0) {
      FUN_007541e8(param_1 + local_c,param_2);
    }
  }
  return;
}

// ---- FUN_0075482c  @ 0x75482c
void FUN_0075482c(int param_1,int param_2,undefined4 param_3)

{
  int iVar1;
  undefined4 local_c;
  
  for (local_c = 0; local_c < 0x10; local_c = local_c + 1) {
    iVar1 = FUN_007545f0(param_1 + param_2 * local_c,1,param_3);
    if (iVar1 != 0) {
      FUN_007541e8(param_1 + param_2 * local_c,1);
    }
  }
  return;
}

// ---- FUN_00754884  @ 0x754884
void FUN_00754884(int param_1,int param_2,undefined4 param_3)

{
  undefined4 local_14;
  undefined4 local_c;
  
  local_14 = param_1;
  for (local_c = 3; 0 < local_c; local_c = local_c + -1) {
    local_14 = local_14 + param_2 * 4;
    FUN_007547e4(local_14,param_2,param_3);
  }
  return;
}

// ---- FUN_007548c0  @ 0x7548c0
void FUN_007548c0(int param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 local_14;
  undefined4 local_c;
  
  local_14 = param_1;
  for (local_c = 3; 0 < local_c; local_c = local_c + -1) {
    local_14 = local_14 + 4;
    FUN_0075482c(local_14,param_2,param_3);
  }
  return;
}

// ---- FUN_007548f8  @ 0x7548f8
void FUN_007548f8(int param_1,undefined4 param_2,int param_3,int param_4,undefined4 param_5,
                 undefined4 param_6,undefined4 param_7)

{
  bool bVar1;
  int iVar2;
  undefined4 local_18;
  undefined4 local_c;
  
  local_18 = param_4;
  local_c = param_1;
  while (bVar1 = 0 < local_18, local_18 = local_18 + -1, bVar1) {
    iVar2 = FUN_0075466c(local_c,param_2,param_5,param_6);
    if (iVar2 != 0) {
      iVar2 = FUN_0075456c(local_c,param_2,param_7);
      if (iVar2 == 0) {
        FUN_007543d0(local_c,param_2);
      }
      else {
        FUN_007541e8(local_c,param_2);
      }
    }
    local_c = local_c + param_3;
  }
  return;
}

// ---- FUN_00754960  @ 0x754960
void FUN_00754960(int param_1,undefined4 param_2,int param_3,int param_4,undefined4 param_5,
                 undefined4 param_6,undefined4 param_7)

{
  bool bVar1;
  int iVar2;
  undefined4 local_18;
  undefined4 local_c;
  
  local_18 = param_4;
  local_c = param_1;
  while (bVar1 = 0 < local_18, local_18 = local_18 + -1, bVar1) {
    iVar2 = FUN_0075466c(local_c,param_2,param_5,param_6);
    if (iVar2 != 0) {
      iVar2 = FUN_0075456c(local_c,param_2,param_7);
      if (iVar2 == 0) {
        FUN_007542c0(local_c,param_2);
      }
      else {
        FUN_007541e8(local_c,param_2);
      }
    }
    local_c = local_c + param_3;
  }
  return;
}

// ---- FUN_007549c8  @ 0x7549c8
void FUN_007549c8(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                 undefined4 param_5)

{
  FUN_007548f8(param_1,param_2,1,0x10,param_3,param_4,param_5);
  return;
}

// ---- FUN_007549f4  @ 0x7549f4
void FUN_007549f4(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                 undefined4 param_5)

{
  FUN_007548f8(param_1,1,param_2,0x10,param_3,param_4,param_5);
  return;
}

// ---- FUN_00754a20  @ 0x754a20
void FUN_00754a20(int param_1,int param_2,undefined4 param_3,undefined4 param_4,undefined4 param_5)

{
  undefined4 local_14;
  undefined4 local_c;
  
  local_14 = param_1;
  for (local_c = 3; 0 < local_c; local_c = local_c + -1) {
    local_14 = local_14 + param_2 * 4;
    FUN_00754960(local_14,param_2,1,0x10,param_3,param_4,param_5);
  }
  return;
}

// ---- FUN_00754a70  @ 0x754a70
void FUN_00754a70(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                 undefined4 param_5)

{
  undefined4 local_14;
  undefined4 local_c;
  
  local_14 = param_1;
  for (local_c = 3; 0 < local_c; local_c = local_c + -1) {
    local_14 = local_14 + 4;
    FUN_00754960(local_14,1,param_2,0x10,param_3,param_4,param_5);
  }
  return;
}

// ---- FUN_00754abc  @ 0x754abc
void FUN_00754abc(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                 undefined4 param_5,undefined4 param_6)

{
  FUN_007548f8(param_1,param_3,1,8,param_4,param_5,param_6);
  FUN_007548f8(param_2,param_3,1,8,param_4,param_5,param_6);
  return;
}

// ---- FUN_00754b04  @ 0x754b04
void FUN_00754b04(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                 undefined4 param_5,undefined4 param_6)

{
  FUN_007548f8(param_1,1,param_3,8,param_4,param_5,param_6);
  FUN_007548f8(param_2,1,param_3,8,param_4,param_5,param_6);
  return;
}

// ---- FUN_00754b4c  @ 0x754b4c
void FUN_00754b4c(int param_1,int param_2,int param_3,undefined4 param_4,undefined4 param_5,
                 undefined4 param_6)

{
  FUN_00754960(param_1 + param_3 * 4,param_3,1,8,param_4,param_5,param_6);
  FUN_00754960(param_2 + param_3 * 4,param_3,1,8,param_4,param_5,param_6);
  return;
}

// ---- FUN_00754ba8  @ 0x754ba8
void FUN_00754ba8(int param_1,int param_2,undefined4 param_3,undefined4 param_4,undefined4 param_5,
                 undefined4 param_6)

{
  FUN_00754960(param_1 + 4,1,param_3,8,param_4,param_5,param_6);
  FUN_00754960(param_2 + 4,1,param_3,8,param_4,param_5,param_6);
  return;
}

// ---- FUN_00754d74  @ 0x754d74
int FUN_00754d74(int param_1)

{
  if (param_1 < 0) {
    param_1 = -param_1;
  }
  return param_1;
}

// ---- FUN_00754d88  @ 0x754d88
int FUN_00754d88(int param_1,int param_2,int param_3)

{
  return param_2 * param_1 + param_3 >> 0x11;
}

// ---- FUN_00754da8  @ 0x754da8
int FUN_00754da8(int param_1)

{
  if (param_1 < 0) {
    param_1 = 0;
  }
  else if (0xfe < param_1) {
    param_1 = 0xff;
  }
  return param_1;
}

// ---- FUN_00754e80  @ 0x754e80
undefined4 FUN_00754e80(int param_1,int param_2,int param_3,int param_4)

{
  int iVar1;
  undefined4 uVar2;
  int local_138;
  int local_134;
  short asStack_12c [16];
  int aiStack_10c [65];
  
  memset(aiStack_10c,0,0x104);
  for (local_138 = param_3; local_138 < param_4; local_138 = local_138 + 1) {
    (*VP8FTransform)(param_1 + *(int *)(VP8DspScan + local_138 * 4),
                     param_2 + *(int *)(VP8DspScan + local_138 * 4),asStack_12c);
    for (local_134 = 0; local_134 < 0x10; local_134 = local_134 + 1) {
      iVar1 = FUN_00754d74((int)asStack_12c[local_134]);
      iVar1 = iVar1 >> 2;
      if (0x3f < iVar1) {
        iVar1 = 0x40;
      }
      asStack_12c[local_134] = (short)iVar1;
    }
    for (local_134 = 0; local_134 < 0x10; local_134 = local_134 + 1) {
      aiStack_10c[asStack_12c[local_134]] = aiStack_10c[asStack_12c[local_134]] + 1;
    }
  }
  uVar2 = VP8GetAlpha(aiStack_10c);
  return uVar2;
}

// ---- FUN_00754fa4  @ 0x754fa4
void FUN_00754fa4(void)

{
  undefined1 uVar1;
  int iVar2;
  undefined4 local_4;
  
  if (DAT_0096a524 == 0) {
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
      *(undefined1 *)(local_4 + 0x96a323) = uVar1;
    }
    DAT_0096a524 = 1;
  }
  return;
}

// ---- FUN_00755004  @ 0x755004
uint FUN_00755004(uint param_1)

{
  if ((param_1 & 0xffffff00) == 0) {
    param_1 = param_1 & 0xff;
  }
  else if ((int)param_1 < 0) {
    param_1 = 0;
  }
  else {
    param_1 = 0xff;
  }
  return param_1;
}

// ---- FUN_00755030  @ 0x755030
void FUN_00755030(int param_1,short *param_2,int param_3)

{
  short sVar1;
  short sVar2;
  short sVar3;
  short sVar4;
  undefined1 uVar5;
  int iVar6;
  int iVar7;
  int iVar8;
  int iVar9;
  short *local_80;
  int *local_74;
  int local_70;
  int local_48 [16];
  
  local_74 = local_48;
  local_80 = param_2;
  for (local_70 = 0; local_70 < 4; local_70 = local_70 + 1) {
    sVar1 = *local_80;
    sVar2 = local_80[8];
    sVar3 = *local_80;
    sVar4 = local_80[8];
    iVar6 = (local_80[4] * 0x8a8c >> 0x10) - (local_80[0xc] * 0x14e7b >> 0x10);
    iVar7 = (local_80[4] * 0x14e7b >> 0x10) + (local_80[0xc] * 0x8a8c >> 0x10);
    *local_74 = (int)sVar1 + (int)sVar2 + iVar7;
    local_74[1] = ((int)sVar3 - (int)sVar4) + iVar6;
    local_74[2] = ((int)sVar3 - (int)sVar4) - iVar6;
    local_74[3] = ((int)sVar1 + (int)sVar2) - iVar7;
    local_74 = local_74 + 4;
    local_80 = local_80 + 1;
  }
  local_74 = local_48;
  for (local_70 = 0; local_70 < 4; local_70 = local_70 + 1) {
    iVar6 = local_74[8] + *local_74 + 4;
    iVar7 = (*local_74 + 4) - local_74[8];
    iVar8 = (local_74[4] * 0x8a8c >> 0x10) - (local_74[0xc] * 0x14e7b >> 0x10);
    iVar9 = (local_74[4] * 0x14e7b >> 0x10) + (local_74[0xc] * 0x8a8c >> 0x10);
    uVar5 = FUN_00755004((uint)*(byte *)(param_1 + local_70 * 0x10) + (iVar6 + iVar9 >> 3));
    *(undefined1 *)(param_3 + local_70 * 0x10) = uVar5;
    uVar5 = FUN_00755004((uint)*(byte *)(param_1 + local_70 * 0x10 + 1) + (iVar7 + iVar8 >> 3));
    *(undefined1 *)(param_3 + local_70 * 0x10 + 1) = uVar5;
    uVar5 = FUN_00755004((uint)*(byte *)(param_1 + local_70 * 0x10 + 2) + (iVar7 - iVar8 >> 3));
    *(undefined1 *)(param_3 + local_70 * 0x10 + 2) = uVar5;
    uVar5 = FUN_00755004((uint)*(byte *)(param_1 + local_70 * 0x10 + 3) + (iVar6 - iVar9 >> 3));
    *(undefined1 *)(param_3 + local_70 * 0x10 + 3) = uVar5;
    local_74 = local_74 + 1;
  }
  return;
}

// ---- FUN_007552c8  @ 0x7552c8
void FUN_007552c8(int param_1,int param_2,int param_3,int param_4)

{
  FUN_00755030(param_1,param_2,param_3);
  if (param_4 != 0) {
    FUN_00755030(param_1 + 4,param_2 + 0x20,param_3 + 4);
  }
  return;
}

// ---- FUN_00755a74  @ 0x755a74
void FUN_00755a74(int param_1,int param_2,size_t param_3)

{
  undefined4 local_c;
  
  for (local_c = 0; local_c < (int)param_3; local_c = local_c + 1) {
    memset((void *)(param_1 + local_c * 0x10),param_2,param_3);
  }
  return;
}

// ---- FUN_00755ab0  @ 0x755ab0
void FUN_00755ab0(int param_1,void *param_2,size_t param_3)

{
  undefined4 local_c;
  
  if (param_2 == (void *)0x0) {
    FUN_00755a74(param_1,0x7f,param_3);
  }
  else {
    for (local_c = 0; local_c < (int)param_3; local_c = local_c + 1) {
      memcpy((void *)(param_1 + local_c * 0x10),param_2,param_3);
    }
  }
  return;
}

// ---- FUN_00755b04  @ 0x755b04
void FUN_00755b04(int param_1,int param_2,size_t param_3)

{
  undefined4 local_c;
  
  if (param_2 == 0) {
    FUN_00755a74(param_1,0x81,param_3);
  }
  else {
    for (local_c = 0; local_c < (int)param_3; local_c = local_c + 1) {
      memset((void *)(param_1 + local_c * 0x10),(uint)*(byte *)(param_2 + local_c),param_3);
    }
  }
  return;
}

// ---- FUN_00755b60  @ 0x755b60
void FUN_00755b60(int param_1,int param_2,int param_3,int param_4)

{
  byte bVar1;
  byte bVar2;
  undefined4 local_1c;
  undefined4 local_18;
  undefined4 local_14;
  
  if (param_2 == 0) {
    if (param_3 == 0) {
      FUN_00755a74(param_1,0x81,param_4);
    }
    else {
      FUN_00755ab0(param_1,param_3,param_4);
    }
  }
  else if (param_3 == 0) {
    FUN_00755b04(param_1,param_2,param_4);
  }
  else {
    bVar1 = *(byte *)(param_2 + -1);
    local_1c = param_1;
    for (local_18 = 0; local_18 < param_4; local_18 = local_18 + 1) {
      bVar2 = *(byte *)(param_2 + local_18);
      for (local_14 = 0; local_14 < param_4; local_14 = local_14 + 1) {
        *(undefined1 *)(local_1c + local_14) =
             *(undefined1 *)
              ((0x96a323 - (uint)bVar1) + (uint)bVar2 + (uint)*(byte *)(param_3 + local_14));
      }
      local_1c = local_1c + 0x10;
    }
  }
  return;
}

// ---- FUN_00755c1c  @ 0x755c1c
void FUN_00755c1c(undefined4 param_1,int param_2,int param_3,int param_4,int param_5,uint param_6)

{
  undefined4 local_10;
  undefined4 local_c;
  
  local_10 = 0;
  if (param_3 == 0) {
    if (param_2 == 0) {
      local_10 = 0x80;
    }
    else {
      for (local_c = 0; local_c < param_4; local_c = local_c + 1) {
        local_10 = local_10 + (uint)*(byte *)(param_2 + local_c);
      }
      local_10 = local_10 * 2 + param_5 >> (param_6 & 0xff);
    }
  }
  else {
    for (local_c = 0; local_c < param_4; local_c = local_c + 1) {
      local_10 = local_10 + (uint)*(byte *)(param_3 + local_c);
    }
    if (param_2 == 0) {
      local_10 = local_10 * 2;
    }
    else {
      for (local_c = 0; local_c < param_4; local_c = local_c + 1) {
        local_10 = local_10 + (uint)*(byte *)(param_2 + local_c);
      }
    }
    local_10 = local_10 + param_5 >> (param_6 & 0xff);
  }
  FUN_00755a74(param_1,local_10,param_4);
  return;
}

// ---- FUN_00755cf8  @ 0x755cf8
void FUN_00755cf8(int param_1,int param_2,int param_3)

{
  undefined4 local_14;
  undefined4 local_10;
  
  FUN_00755c1c(param_1 + 0x400,param_2,param_3,8,8,4);
  FUN_00755ab0(param_1 + 0x500,param_3,8);
  FUN_00755b04(param_1 + 0x580,param_2,8);
  FUN_00755b60(param_1 + 0x480,param_2,param_3,8);
  local_14 = param_3;
  if (param_3 != 0) {
    local_14 = param_3 + 8;
  }
  local_10 = param_2;
  if (param_2 != 0) {
    local_10 = param_2 + 0x10;
  }
  FUN_00755c1c(param_1 + 0x408,local_10,local_14,8,8,4);
  FUN_00755ab0(param_1 + 0x508,local_14,8);
  FUN_00755b04(param_1 + 0x588,local_10,8);
  FUN_00755b60(param_1 + 0x488,local_10,local_14,8);
  return;
}

// ---- FUN_00755ddc  @ 0x755ddc
void FUN_00755ddc(int param_1,undefined4 param_2,undefined4 param_3)

{
  FUN_00755c1c(param_1,param_2,param_3,0x10,0x10,5);
  FUN_00755ab0(param_1 + 0x200,param_3,0x10);
  FUN_00755b04(param_1 + 0x300,param_2,0x10);
  FUN_00755b60(param_1 + 0x100,param_2,param_3,0x10);
  return;
}

// ---- FUN_00755e3c  @ 0x755e3c
void FUN_00755e3c(int param_1,byte *param_2)

{
  undefined1 local_10;
  undefined1 local_f;
  undefined1 local_e;
  undefined1 local_d;
  int local_c;
  
  local_10 = (undefined1)((int)((uint)param_2[-1] + (uint)*param_2 * 2 + (uint)param_2[1] + 2) >> 2)
  ;
  local_f = (undefined1)((int)((uint)*param_2 + (uint)param_2[1] * 2 + (uint)param_2[2] + 2) >> 2);
  local_e = (undefined1)((int)((uint)param_2[1] + (uint)param_2[2] * 2 + (uint)param_2[3] + 2) >> 2)
  ;
  local_d = (undefined1)((int)((uint)param_2[2] + (uint)param_2[3] * 2 + (uint)param_2[4] + 2) >> 2)
  ;
  for (local_c = 0; local_c < 4; local_c = local_c + 1) {
    memcpy((void *)(param_1 + local_c * 0x10),&local_10,4);
  }
  return;
}

// ---- FUN_00755f34  @ 0x755f34
void FUN_00755f34(int *param_1,int param_2)

{
  byte bVar1;
  byte bVar2;
  uint uVar3;
  uint uVar4;
  
  bVar1 = *(byte *)(param_2 + -2);
  uVar3 = (uint)*(byte *)(param_2 + -3);
  uVar4 = (uint)*(byte *)(param_2 + -4);
  bVar2 = *(byte *)(param_2 + -5);
  *param_1 = ((int)((uint)bVar1 * 2 + (uint)*(byte *)(param_2 + -1) + uVar3 + 2) >> 2) * 0x1010101;
  param_1[4] = ((int)(uVar3 * 2 + (uint)bVar1 + uVar4 + 2) >> 2) * 0x1010101;
  param_1[8] = ((int)(uVar4 * 2 + uVar3 + (uint)bVar2 + 2) >> 2) * 0x1010101;
  param_1[0xc] = ((int)((uint)bVar2 * 3 + uVar4 + 2) >> 2) * 0x1010101;
  return;
}

// ---- FUN_00756024  @ 0x756024
void FUN_00756024(undefined4 param_1,int param_2)

{
  undefined4 local_10;
  undefined4 local_c;
  
  local_10 = 4;
  for (local_c = 0; local_c < 4; local_c = local_c + 1) {
    local_10 = local_10 +
               (uint)*(byte *)(param_2 + local_c) + (uint)*(byte *)(param_2 + local_c + -5);
  }
  FUN_00755a74(param_1,local_10 >> 3,4);
  return;
}

// ---- FUN_0075607c  @ 0x75607c
void FUN_0075607c(undefined1 *param_1,byte *param_2)

{
  byte bVar1;
  byte bVar2;
  byte bVar3;
  uint uVar4;
  uint uVar5;
  uint uVar6;
  uint uVar7;
  uint uVar8;
  
  uVar4 = (uint)param_2[-1];
  uVar5 = (uint)param_2[-2];
  uVar6 = (uint)param_2[-3];
  bVar1 = param_2[-4];
  uVar7 = (uint)*param_2;
  uVar8 = (uint)param_2[1];
  bVar2 = param_2[2];
  bVar3 = param_2[3];
  param_1[0x30] = (char)((int)((uint)bVar1 * 2 + uVar6 + (uint)param_2[-5] + 2) >> 2);
  param_1[0x31] = (char)((int)(uVar6 * 2 + uVar5 + (uint)bVar1 + 2) >> 2);
  param_1[0x20] = param_1[0x31];
  param_1[0x32] = (char)((int)(uVar5 * 2 + uVar4 + uVar6 + 2) >> 2);
  param_1[0x21] = param_1[0x32];
  param_1[0x10] = param_1[0x21];
  param_1[0x33] = (char)((int)(uVar4 * 2 + uVar7 + uVar5 + 2) >> 2);
  param_1[0x22] = param_1[0x33];
  param_1[0x11] = param_1[0x22];
  *param_1 = param_1[0x11];
  param_1[0x23] = (char)((int)(uVar7 * 2 + uVar8 + uVar4 + 2) >> 2);
  param_1[0x12] = param_1[0x23];
  param_1[1] = param_1[0x12];
  param_1[0x13] = (char)((int)(uVar8 * 2 + (uint)bVar2 + uVar7 + 2) >> 2);
  param_1[2] = param_1[0x13];
  param_1[3] = (char)((int)((uint)bVar2 * 2 + (uint)bVar3 + uVar8 + 2) >> 2);
  return;
}

// ---- FUN_00756218  @ 0x756218
void FUN_00756218(undefined1 *param_1,byte *param_2)

{
  byte bVar1;
  byte bVar2;
  uint uVar3;
  uint uVar4;
  uint uVar5;
  uint uVar6;
  uint uVar7;
  
  bVar1 = param_2[1];
  uVar3 = (uint)param_2[2];
  uVar4 = (uint)param_2[3];
  uVar5 = (uint)param_2[4];
  uVar6 = (uint)param_2[5];
  uVar7 = (uint)param_2[6];
  bVar2 = param_2[7];
  *param_1 = (char)((int)((uint)bVar1 * 2 + (uint)*param_2 + uVar3 + 2) >> 2);
  param_1[0x10] = (char)((int)(uVar3 * 2 + (uint)bVar1 + uVar4 + 2) >> 2);
  param_1[1] = param_1[0x10];
  param_1[0x20] = (char)((int)(uVar4 * 2 + uVar3 + uVar5 + 2) >> 2);
  param_1[0x11] = param_1[0x20];
  param_1[2] = param_1[0x11];
  param_1[0x30] = (char)((int)(uVar5 * 2 + uVar4 + uVar6 + 2) >> 2);
  param_1[0x21] = param_1[0x30];
  param_1[0x12] = param_1[0x21];
  param_1[3] = param_1[0x12];
  param_1[0x31] = (char)((int)(uVar6 * 2 + uVar5 + uVar7 + 2) >> 2);
  param_1[0x22] = param_1[0x31];
  param_1[0x13] = param_1[0x22];
  param_1[0x32] = (char)((int)(uVar7 * 2 + uVar6 + (uint)bVar2 + 2) >> 2);
  param_1[0x23] = param_1[0x32];
  param_1[0x33] = (char)((int)((uint)bVar2 * 3 + uVar7 + 2) >> 2);
  return;
}

// ---- FUN_007563a8  @ 0x7563a8
void FUN_007563a8(undefined1 *param_1,byte *param_2)

{
  byte bVar1;
  byte bVar2;
  byte bVar3;
  uint uVar4;
  uint uVar5;
  uint uVar6;
  uint uVar7;
  uint uVar8;
  
  uVar4 = (uint)param_2[-1];
  uVar5 = (uint)param_2[-2];
  bVar1 = param_2[-3];
  bVar2 = param_2[-4];
  uVar6 = (uint)*param_2;
  uVar7 = (uint)param_2[1];
  uVar8 = (uint)param_2[2];
  bVar3 = param_2[3];
  param_1[0x21] = (char)((int)(uVar4 + uVar6 + 1) >> 1);
  *param_1 = param_1[0x21];
  param_1[0x22] = (char)((int)(uVar6 + uVar7 + 1) >> 1);
  param_1[1] = param_1[0x22];
  param_1[0x23] = (char)((int)(uVar7 + uVar8 + 1) >> 1);
  param_1[2] = param_1[0x23];
  param_1[3] = (char)((int)(uVar8 + bVar3 + 1) >> 1);
  param_1[0x30] = (char)((int)((uint)bVar1 * 2 + (uint)bVar2 + uVar5 + 2) >> 2);
  param_1[0x20] = (char)((int)(uVar5 * 2 + (uint)bVar1 + uVar4 + 2) >> 2);
  param_1[0x31] = (char)((int)(uVar4 * 2 + uVar5 + uVar6 + 2) >> 2);
  param_1[0x10] = param_1[0x31];
  param_1[0x32] = (char)((int)(uVar6 * 2 + uVar4 + uVar7 + 2) >> 2);
  param_1[0x11] = param_1[0x32];
  param_1[0x33] = (char)((int)(uVar7 * 2 + uVar6 + uVar8 + 2) >> 2);
  param_1[0x12] = param_1[0x33];
  param_1[0x13] = (char)((int)(uVar8 * 2 + uVar7 + (uint)bVar3 + 2) >> 2);
  return;
}

// ---- FUN_00756558  @ 0x756558
void FUN_00756558(undefined1 *param_1,byte *param_2)

{
  byte bVar1;
  byte bVar2;
  byte bVar3;
  uint uVar4;
  uint uVar5;
  uint uVar6;
  uint uVar7;
  uint uVar8;
  
  bVar1 = *param_2;
  uVar4 = (uint)param_2[1];
  uVar5 = (uint)param_2[2];
  uVar6 = (uint)param_2[3];
  uVar7 = (uint)param_2[4];
  uVar8 = (uint)param_2[5];
  bVar2 = param_2[6];
  bVar3 = param_2[7];
  *param_1 = (char)((int)(bVar1 + uVar4 + 1) >> 1);
  param_1[0x20] = (char)((int)(uVar4 + uVar5 + 1) >> 1);
  param_1[1] = param_1[0x20];
  param_1[0x21] = (char)((int)(uVar5 + uVar6 + 1) >> 1);
  param_1[2] = param_1[0x21];
  param_1[0x22] = (char)((int)(uVar6 + uVar7 + 1) >> 1);
  param_1[3] = param_1[0x22];
  param_1[0x10] = (char)((int)(uVar4 * 2 + (uint)bVar1 + uVar5 + 2) >> 2);
  param_1[0x30] = (char)((int)(uVar5 * 2 + uVar4 + uVar6 + 2) >> 2);
  param_1[0x11] = param_1[0x30];
  param_1[0x31] = (char)((int)(uVar6 * 2 + uVar5 + uVar7 + 2) >> 2);
  param_1[0x12] = param_1[0x31];
  param_1[0x32] = (char)((int)(uVar7 * 2 + uVar6 + uVar8 + 2) >> 2);
  param_1[0x13] = param_1[0x32];
  param_1[0x23] = (char)((int)(uVar8 * 2 + uVar7 + (uint)bVar2 + 2) >> 2);
  param_1[0x33] = (char)((int)((uint)bVar2 * 2 + uVar8 + (uint)bVar3 + 2) >> 2);
  return;
}

// ---- FUN_00756708  @ 0x756708
void FUN_00756708(undefined1 *param_1,int param_2)

{
  byte bVar1;
  byte bVar2;
  uint uVar3;
  uint uVar4;
  uint uVar5;
  
  bVar1 = *(byte *)(param_2 + -2);
  uVar3 = (uint)*(byte *)(param_2 + -3);
  uVar4 = (uint)*(byte *)(param_2 + -4);
  bVar2 = *(byte *)(param_2 + -5);
  uVar5 = (uint)bVar2;
  *param_1 = (char)((int)(bVar1 + uVar3 + 1) >> 1);
  param_1[0x10] = (char)((int)(uVar3 + uVar4 + 1) >> 1);
  param_1[2] = param_1[0x10];
  param_1[0x20] = (char)((int)(uVar4 + uVar5 + 1) >> 1);
  param_1[0x12] = param_1[0x20];
  param_1[1] = (char)((int)(uVar3 * 2 + (uint)bVar1 + uVar4 + 2) >> 2);
  param_1[0x11] = (char)((int)(uVar4 * 2 + uVar3 + uVar5 + 2) >> 2);
  param_1[3] = param_1[0x11];
  param_1[0x21] = (char)((int)(uVar5 * 3 + uVar4 + 2) >> 2);
  param_1[0x13] = param_1[0x21];
  param_1[0x33] = bVar2;
  param_1[0x32] = param_1[0x33];
  param_1[0x31] = param_1[0x32];
  param_1[0x30] = param_1[0x31];
  param_1[0x22] = param_1[0x30];
  param_1[0x23] = param_1[0x22];
  return;
}

// ---- FUN_00756848  @ 0x756848
void FUN_00756848(undefined1 *param_1,byte *param_2)

{
  byte bVar1;
  byte bVar2;
  byte bVar3;
  uint uVar4;
  uint uVar5;
  uint uVar6;
  uint uVar7;
  uint uVar8;
  
  uVar4 = (uint)param_2[-1];
  uVar5 = (uint)param_2[-2];
  uVar6 = (uint)param_2[-3];
  uVar7 = (uint)param_2[-4];
  bVar1 = param_2[-5];
  uVar8 = (uint)*param_2;
  bVar2 = param_2[1];
  bVar3 = param_2[2];
  param_1[0x12] = (char)((int)(uVar5 + uVar4 + 1) >> 1);
  *param_1 = param_1[0x12];
  param_1[0x22] = (char)((int)(uVar6 + uVar5 + 1) >> 1);
  param_1[0x10] = param_1[0x22];
  param_1[0x32] = (char)((int)(uVar7 + uVar6 + 1) >> 1);
  param_1[0x20] = param_1[0x32];
  param_1[0x30] = (char)((int)(bVar1 + uVar7 + 1) >> 1);
  param_1[3] = (char)((int)((uint)bVar2 * 2 + uVar8 + (uint)bVar3 + 2) >> 2);
  param_1[2] = (char)((int)(uVar8 * 2 + uVar4 + (uint)bVar2 + 2) >> 2);
  param_1[0x13] = (char)((int)(uVar4 * 2 + uVar5 + uVar8 + 2) >> 2);
  param_1[1] = param_1[0x13];
  param_1[0x23] = (char)((int)(uVar5 * 2 + uVar6 + uVar4 + 2) >> 2);
  param_1[0x11] = param_1[0x23];
  param_1[0x33] = (char)((int)(uVar6 * 2 + uVar7 + uVar5 + 2) >> 2);
  param_1[0x21] = param_1[0x33];
  param_1[0x31] = (char)((int)(uVar7 * 2 + (uint)bVar1 + uVar6 + 2) >> 2);
  return;
}

// ---- FUN_007569f8  @ 0x7569f8
void FUN_007569f8(int param_1,int param_2)

{
  byte bVar1;
  byte bVar2;
  undefined4 local_14;
  undefined4 local_10;
  undefined4 local_c;
  
  bVar1 = *(byte *)(param_2 + -1);
  local_14 = param_1;
  for (local_c = 0; local_c < 4; local_c = local_c + 1) {
    bVar2 = *(byte *)(param_2 + (-2 - local_c));
    for (local_10 = 0; local_10 < 4; local_10 = local_10 + 1) {
      *(undefined1 *)(local_14 + local_10) =
           *(undefined1 *)
            ((0x96a323 - (uint)bVar1) + (uint)bVar2 + (uint)*(byte *)(param_2 + local_10));
    }
    local_14 = local_14 + 0x10;
  }
  return;
}

// ---- FUN_00756a7c  @ 0x756a7c
void FUN_00756a7c(int param_1,undefined4 param_2)

{
  FUN_00756024(param_1 + 0x600,param_2);
  FUN_007569f8(param_1 + 0x604,param_2);
  FUN_00755e3c(param_1 + 0x608,param_2);
  FUN_00755f34(param_1 + 0x60c,param_2);
  FUN_0075607c(param_1 + 0x640,param_2);
  FUN_007563a8(param_1 + 0x644,param_2);
  FUN_00756218(param_1 + 0x648,param_2);
  FUN_00756558(param_1 + 0x64c,param_2);
  FUN_00756848(param_1 + 0x680,param_2);
  FUN_00756708(param_1 + 0x684,param_2);
  return;
}

// ---- FUN_00756b28  @ 0x756b28
int FUN_00756b28(int param_1,int param_2,int param_3,int param_4)

{
  int iVar1;
  undefined4 local_18;
  undefined4 local_14;
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  
  local_10 = 0;
  local_18 = param_2;
  local_14 = param_1;
  for (local_c = 0; local_c < param_4; local_c = local_c + 1) {
    for (local_8 = 0; local_8 < param_3; local_8 = local_8 + 1) {
      iVar1 = (uint)*(byte *)(local_14 + local_8) - (uint)*(byte *)(local_18 + local_8);
      local_10 = local_10 + iVar1 * iVar1;
    }
    local_14 = local_14 + 0x10;
    local_18 = local_18 + 0x10;
  }
  return local_10;
}

// ---- FUN_00756ba4  @ 0x756ba4
undefined4 FUN_00756ba4(undefined4 param_1,undefined4 param_2)

{
  undefined4 uVar1;
  
  uVar1 = FUN_00756b28(param_1,param_2,0x10,0x10);
  return uVar1;
}

// ---- FUN_00756bc4  @ 0x756bc4
undefined4 FUN_00756bc4(undefined4 param_1,undefined4 param_2)

{
  undefined4 uVar1;
  
  uVar1 = FUN_00756b28(param_1,param_2,0x10,8);
  return uVar1;
}

// ---- FUN_00756be4  @ 0x756be4
undefined4 FUN_00756be4(undefined4 param_1,undefined4 param_2)

{
  undefined4 uVar1;
  
  uVar1 = FUN_00756b28(param_1,param_2,8,8);
  return uVar1;
}

// ---- FUN_00756c04  @ 0x756c04
undefined4 FUN_00756c04(undefined4 param_1,undefined4 param_2)

{
  undefined4 uVar1;
  
  uVar1 = FUN_00756b28(param_1,param_2,4,4);
  return uVar1;
}

// ---- FUN_00756c24  @ 0x756c24
int FUN_00756c24(byte *param_1,ushort *param_2)

{
  byte bVar1;
  byte bVar2;
  byte bVar3;
  byte bVar4;
  ushort uVar5;
  ushort uVar6;
  ushort uVar7;
  ushort uVar8;
  int iVar9;
  int iVar10;
  int iVar11;
  int iVar12;
  int iVar13;
  int iVar14;
  int iVar15;
  int iVar16;
  int iVar17;
  int iVar18;
  ushort *local_88;
  byte *local_84;
  int local_80;
  int local_7c;
  int aiStack_48 [16];
  
  local_80 = 0;
  local_84 = param_1;
  for (local_7c = 0; local_7c < 4; local_7c = local_7c + 1) {
    iVar9 = ((uint)*local_84 + (uint)local_84[2]) * 4;
    bVar1 = local_84[1];
    bVar2 = local_84[3];
    bVar3 = local_84[1];
    bVar4 = local_84[3];
    iVar10 = ((uint)*local_84 - (uint)local_84[2]) * 4;
    aiStack_48[local_7c * 4] =
         iVar9 + ((uint)bVar1 + (uint)bVar2) * 4 + (uint)((uint)*local_84 + (uint)local_84[2] != 0);
    aiStack_48[local_7c * 4 + 1] = iVar10 + ((uint)bVar3 - (uint)bVar4) * 4;
    aiStack_48[local_7c * 4 + 2] = iVar10 + ((uint)bVar3 - (uint)bVar4) * -4;
    aiStack_48[local_7c * 4 + 3] = iVar9 + ((uint)bVar1 + (uint)bVar2) * -4;
    local_84 = local_84 + 0x10;
  }
  local_88 = param_2;
  for (local_7c = 0; local_7c < 4; local_7c = local_7c + 1) {
    iVar11 = aiStack_48[local_7c];
    iVar15 = aiStack_48[local_7c + 8];
    iVar12 = aiStack_48[local_7c + 4];
    iVar16 = aiStack_48[local_7c + 0xc];
    iVar13 = aiStack_48[local_7c + 4];
    iVar17 = aiStack_48[local_7c + 0xc];
    iVar14 = aiStack_48[local_7c];
    iVar18 = aiStack_48[local_7c + 8];
    uVar5 = *local_88;
    iVar9 = FUN_00754d74(iVar11 + iVar15 + iVar12 + iVar16);
    uVar6 = local_88[4];
    iVar10 = FUN_00754d74((iVar14 - iVar18) + (iVar13 - iVar17));
    uVar7 = local_88[8];
    iVar13 = FUN_00754d74((iVar14 - iVar18) - (iVar13 - iVar17));
    uVar8 = local_88[0xc];
    iVar11 = FUN_00754d74((iVar11 + iVar15) - (iVar12 + iVar16));
    local_80 = local_80 + (iVar9 + 3 >> 3) * (uint)uVar5 + (iVar10 + 3 >> 3) * (uint)uVar6 +
               (iVar13 + 3 >> 3) * (uint)uVar7 + (iVar11 + 3 >> 3) * (uint)uVar8;
    local_88 = local_88 + 1;
  }
  return local_80;
}

// ---- FUN_00756e94  @ 0x756e94
int FUN_00756e94(undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
  int iVar1;
  int iVar2;
  
  iVar1 = FUN_00756c24(param_1,param_3);
  iVar2 = FUN_00756c24(param_2,param_3);
  iVar1 = FUN_00754d74(iVar2 - iVar1);
  return iVar1 + 8 >> 4;
}

// ---- FUN_00756ed4  @ 0x756ed4
int FUN_00756ed4(int param_1,int param_2,undefined4 param_3)

{
  int iVar1;
  undefined4 local_14;
  undefined4 local_10;
  undefined4 local_c;
  
  local_14 = 0;
  for (local_c = 0; local_c < 0x100; local_c = local_c + 0x40) {
    for (local_10 = 0; local_10 < 0x10; local_10 = local_10 + 4) {
      iVar1 = FUN_00756e94(param_1 + local_10 + local_c,param_2 + local_10 + local_c,param_3);
      local_14 = local_14 + iVar1;
    }
  }
  return local_14;
}

// ---- FUN_00756f40  @ 0x756f40
uint FUN_00756f40(int param_1,int param_2,uint param_3,int param_4)

{
  short sVar1;
  short sVar2;
  undefined2 uVar3;
  uint uVar4;
  uint local_34;
  uint local_24;
  int local_20;
  
  local_24 = 0xffffffff;
  for (local_34 = param_3; (int)local_34 < 0x10; local_34 = local_34 + 1) {
    uVar4 = (uint)(byte)(&DAT_008710b4)[local_34];
    sVar1 = *(short *)(param_1 + uVar4 * 2);
    if (sVar1 < 0) {
      local_20 = -(int)*(short *)(param_1 + uVar4 * 2);
    }
    else {
      local_20 = (int)*(short *)(param_1 + uVar4 * 2);
    }
    local_20 = local_20 + (uint)*(ushort *)(param_4 + (uVar4 + 0x40) * 2);
    if (0x7ff < local_20) {
      local_20 = 0x7ff;
    }
    if ((int)(uint)*(ushort *)(param_4 + (uVar4 + 0x30) * 2) < local_20) {
      sVar2 = *(short *)(param_4 + uVar4 * 2);
      uVar3 = FUN_00754d88(local_20,*(undefined2 *)(param_4 + (uVar4 + 0x10) * 2),
                           *(undefined2 *)(param_4 + (uVar4 + 0x20) * 2));
      *(undefined2 *)(param_2 + local_34 * 2) = uVar3;
      if (sVar1 < 0) {
        *(short *)(param_2 + local_34 * 2) = -*(short *)(param_2 + local_34 * 2);
      }
      *(short *)(param_1 + uVar4 * 2) = sVar2 * *(short *)(param_2 + local_34 * 2);
      if (*(short *)(param_2 + local_34 * 2) != 0) {
        local_24 = local_34;
      }
    }
    else {
      *(undefined2 *)(param_2 + local_34 * 2) = 0;
      *(undefined2 *)(param_1 + uVar4 * 2) = 0;
    }
  }
  return ~local_24 >> 0x1f;
}

// ---- FUN_007570bc  @ 0x7570bc
void FUN_007570bc(void *param_1,void *param_2,size_t param_3)

{
  undefined4 local_18;
  undefined4 local_14;
  undefined4 local_c;
  
  local_18 = param_2;
  local_14 = param_1;
  for (local_c = 0; local_c < (int)param_3; local_c = local_c + 1) {
    memcpy(local_18,local_14,param_3);
    local_14 = (void *)((int)local_14 + 0x10);
    local_18 = (void *)((int)local_18 + 0x10);
  }
  return;
}

// ---- FUN_00757104  @ 0x757104
void FUN_00757104(undefined4 param_1,undefined4 param_2)

{
  FUN_007570bc(param_1,param_2,4);
  return;
}

// ---- FUN_00757270  @ 0x757270
int FUN_00757270(int param_1)

{
  if (param_1 < 0) {
    param_1 = -param_1;
  }
  return param_1;
}

// ---- FUN_00757284  @ 0x757284
uint FUN_00757284(int param_1,uint param_2)

{
  return ((1 << (param_2 & 0xff)) + param_1) - 1U >> (param_2 & 0xff);
}

// ---- FUN_007572ac  @ 0x7572ac
float FUN_007572ac(undefined4 param_1)

{
  float fVar1;
  uint in_fpscr;
  float fVar2;
  
  fVar1 = (float)VP8LFastLog2(param_1);
  fVar2 = (float)VectorSignedToFloat(param_1,(byte)(in_fpscr >> 0x16) & 3);
  return fVar1 * fVar2;
}

// ---- FUN_007572d4  @ 0x7572d4
uint FUN_007572d4(uint param_1,uint param_2)

{
  return ((param_1 & 0xff00ff) - (param_2 & 0xff00ff)) - 0xff0100 & 0xff00ff |
         ((param_1 & 0xff00ff00) - (param_2 & 0xff00ff00)) + 0xff00ff & 0xff00ff00;
}

// ---- FUN_007573c0  @ 0x7573c0
void FUN_007573c0(uint *param_1,uint param_2)

{
  *param_1 = (*param_1 & 0xff00ff00) + (param_2 & 0xff00ff00) & 0xff00ff00 |
             (*param_1 & 0xff00ff) + (param_2 & 0xff00ff) & 0xff00ff;
  return;
}

// ---- FUN_00757400  @ 0x757400
int FUN_00757400(uint param_1,uint param_2)

{
  return (((param_2 ^ param_1) & 0xfefefefe) >> 1) + (param_2 & param_1);
}

// ---- FUN_00757424  @ 0x757424
undefined4 FUN_00757424(undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 uVar1;
  
  uVar1 = FUN_00757400(param_1,param_3);
  uVar1 = FUN_00757400(uVar1,param_2);
  return uVar1;
}

// ---- FUN_00757448  @ 0x757448
undefined4 FUN_00757448(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  undefined4 uVar2;
  
  uVar1 = FUN_00757400(param_1,param_2);
  uVar2 = FUN_00757400(param_3,param_4);
  uVar1 = FUN_00757400(uVar1,uVar2);
  return uVar1;
}

// ---- FUN_00757478  @ 0x757478
uint FUN_00757478(uint param_1)

{
  if (0xff < param_1) {
    param_1 = ~param_1 >> 0x18;
  }
  return param_1;
}

// ---- FUN_00757498  @ 0x757498
undefined4 FUN_00757498(int param_1,int param_2,int param_3)

{
  undefined4 uVar1;
  
  uVar1 = FUN_00757478((param_1 + param_2) - param_3);
  return uVar1;
}

// ---- FUN_007574bc  @ 0x7574bc
uint FUN_007574bc(uint param_1,uint param_2,uint param_3)

{
  int iVar1;
  int iVar2;
  int iVar3;
  uint uVar4;
  
  iVar1 = FUN_00757498(param_1 >> 0x18,param_2 >> 0x18,param_3 >> 0x18);
  iVar2 = FUN_00757498(param_1 >> 0x10 & 0xff,param_2 >> 0x10 & 0xff,param_3 >> 0x10 & 0xff);
  iVar3 = FUN_00757498(param_1 >> 8 & 0xff,param_2 >> 8 & 0xff,param_3 >> 8 & 0xff);
  uVar4 = FUN_00757498(param_1 & 0xff,param_2 & 0xff,param_3 & 0xff);
  return uVar4 | iVar1 << 0x18 | iVar2 << 0x10 | iVar3 << 8;
}

// ---- FUN_00757570  @ 0x757570
undefined4 FUN_00757570(int param_1,int param_2)

{
  undefined4 uVar1;
  
  uVar1 = FUN_00757478((param_1 - param_2) / 2 + param_1);
  return uVar1;
}

// ---- FUN_0075759c  @ 0x75759c
uint FUN_0075759c(undefined4 param_1,undefined4 param_2,uint param_3)

{
  uint uVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  
  uVar1 = FUN_00757400(param_1,param_2);
  iVar2 = FUN_00757570(uVar1 >> 0x18,param_3 >> 0x18);
  iVar3 = FUN_00757570(uVar1 >> 0x10 & 0xff,param_3 >> 0x10 & 0xff);
  iVar4 = FUN_00757570(uVar1 >> 8 & 0xff,param_3 >> 8 & 0xff);
  uVar1 = FUN_00757570(uVar1 & 0xff,param_3 & 0xff);
  return uVar1 | iVar2 << 0x18 | iVar3 << 0x10 | iVar4 << 8;
}

// ---- FUN_00757638  @ 0x757638
int FUN_00757638(int param_1,int param_2,int param_3)

{
  int iVar1;
  int iVar2;
  
  iVar1 = FUN_00757270(param_2 - param_3);
  iVar2 = FUN_00757270(param_1 - param_3);
  return iVar1 - iVar2;
}

// ---- FUN_0075766c  @ 0x75766c
uint FUN_0075766c(uint param_1,uint param_2,uint param_3)

{
  int iVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  
  iVar1 = FUN_00757638(param_1 >> 0x18,param_2 >> 0x18,param_3 >> 0x18);
  iVar2 = FUN_00757638(param_1 >> 0x10 & 0xff,param_2 >> 0x10 & 0xff,param_3 >> 0x10 & 0xff);
  iVar3 = FUN_00757638(param_1 >> 8 & 0xff,param_2 >> 8 & 0xff,param_3 >> 8 & 0xff);
  iVar4 = FUN_00757638(param_1 & 0xff,param_2 & 0xff,param_3 & 0xff);
  if (iVar1 + iVar2 + iVar3 + iVar4 < 1) {
    param_2 = param_1;
  }
  return param_2;
}

// ---- FUN_00757714  @ 0x757714
undefined4 FUN_00757714(void)

{
  return 0xff000000;
}

// ---- FUN_00757724  @ 0x757724
undefined4 FUN_00757724(undefined4 param_1)

{
  return param_1;
}

// ---- FUN_00757734  @ 0x757734
undefined4 FUN_00757734(undefined4 param_1,undefined4 *param_2)

{
  return *param_2;
}

// ---- FUN_0075776c  @ 0x75776c
undefined4 FUN_0075776c(undefined4 param_1,undefined4 *param_2)

{
  undefined4 uVar1;
  
  uVar1 = FUN_00757424(param_1,*param_2,param_2[1]);
  return uVar1;
}

// ---- FUN_00757798  @ 0x757798
undefined4 FUN_00757798(undefined4 param_1,int param_2)

{
  undefined4 uVar1;
  
  uVar1 = FUN_00757400(param_1,*(undefined4 *)(param_2 + -4));
  return uVar1;
}

// ---- FUN_007577bc  @ 0x7577bc
undefined4 FUN_007577bc(undefined4 param_1,undefined4 *param_2)

{
  undefined4 uVar1;
  
  uVar1 = FUN_00757400(param_1,*param_2);
  return uVar1;
}

// ---- FUN_007577dc  @ 0x7577dc
undefined4 FUN_007577dc(undefined4 param_1,undefined4 *param_2)

{
  undefined4 uVar1;
  
  uVar1 = FUN_00757400(param_2[-1],*param_2);
  return uVar1;
}

// ---- FUN_00757804  @ 0x757804
undefined4 FUN_00757804(undefined4 param_1,undefined4 *param_2)

{
  undefined4 uVar1;
  
  uVar1 = FUN_00757400(*param_2,param_2[1]);
  return uVar1;
}

// ---- FUN_0075782c  @ 0x75782c
undefined4 FUN_0075782c(undefined4 param_1,undefined4 *param_2)

{
  undefined4 uVar1;
  
  uVar1 = FUN_00757448(param_1,param_2[-1],*param_2,param_2[1]);
  return uVar1;
}

// ---- FUN_0075785c  @ 0x75785c
undefined4 FUN_0075785c(undefined4 param_1,undefined4 *param_2)

{
  undefined4 uVar1;
  
  uVar1 = FUN_0075766c(*param_2,param_1,param_2[-1]);
  return uVar1;
}

// ---- FUN_00757888  @ 0x757888
undefined4 FUN_00757888(undefined4 param_1,undefined4 *param_2)

{
  undefined4 uVar1;
  
  uVar1 = FUN_007574bc(param_1,*param_2,param_2[-1]);
  return uVar1;
}

// ---- FUN_007578b4  @ 0x7578b4
undefined4 FUN_007578b4(undefined4 param_1,undefined4 *param_2)

{
  undefined4 uVar1;
  
  uVar1 = FUN_0075759c(param_1,*param_2,param_2[-1]);
  return uVar1;
}

// ---- FUN_007578e0  @ 0x7578e0
float FUN_007578e0(int *param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  uint in_fpscr;
  double dVar1;
  undefined8 local_28;
  int local_18;
  double local_10;
  
  local_28 = (double)CONCAT44(param_4,param_3);
  local_10 = (double)VectorSignedToFloat(param_2 * *param_1,(byte)(in_fpscr >> 0x16) & 3);
  for (local_18 = 1; local_18 < 0x10; local_18 = local_18 + 1) {
    dVar1 = (double)VectorSignedToFloat(param_1[local_18] + param_1[0x100 - local_18],
                                        (byte)(in_fpscr >> 0x16) & 3);
    local_10 = local_10 + dVar1 * local_28;
    local_28 = local_28 * 0.6;
  }
  return (float)(local_10 * -0.1);
}

// ---- FUN_007579a0  @ 0x7579a0
float FUN_007579a0(int param_1,int param_2)

{
  float fVar1;
  undefined4 local_14;
  undefined4 local_10;
  undefined4 local_c;
  
  local_10 = 0.0;
  local_c = 0;
  local_14 = 0;
  while( true ) {
    if (param_2 <= local_14) break;
    if (*(int *)(param_1 + local_14 * 4) != 0) {
      local_c = local_c + *(int *)(param_1 + local_14 * 4);
      fVar1 = (float)FUN_007572ac(*(undefined4 *)(param_1 + local_14 * 4));
      local_10 = local_10 - fVar1;
    }
    local_14 = local_14 + 1;
  }
  fVar1 = (float)FUN_007572ac(local_c);
  return local_10 + fVar1;
}

// ---- FUN_00757a30  @ 0x757a30
float FUN_00757a30(int param_1,int param_2)

{
  float fVar1;
  float fVar2;
  float fVar3;
  float fVar4;
  int local_420;
  int local_41c;
  int aiStack_408 [257];
  
  fVar1 = 0.0;
  for (local_420 = 0; local_420 < 4; local_420 = local_420 + 1) {
    fVar2 = (float)FUN_007578e0(param_2 + local_420 * 0x400,1,0xe147ae14,0x3fee147a);
    fVar3 = (float)FUN_007579a0(param_2 + local_420 * 0x400,0x100);
    for (local_41c = 0; local_41c < 0x100; local_41c = local_41c + 1) {
      aiStack_408[local_41c] =
           *(int *)(param_1 + local_420 * 0x400 + local_41c * 4) +
           *(int *)(param_2 + local_420 * 0x400 + local_41c * 4);
    }
    fVar4 = (float)FUN_007579a0(aiStack_408,0x100);
    fVar1 = fVar4 + fVar3 + fVar2 + fVar1;
  }
  return fVar1;
}

// ---- FUN_00757ba8  @ 0x757ba8
int FUN_00757ba8(int param_1,int param_2,int param_3,int param_4,uint param_5,undefined4 param_6,
                undefined4 *param_7)

{
  uint uVar1;
  float fVar2;
  int iVar3;
  int iVar4;
  code *pcVar5;
  int iVar6;
  undefined4 *puVar7;
  uint uVar8;
  float local_1054;
  int local_1050;
  int local_104c;
  undefined4 *local_1048;
  int local_1044;
  int local_1040;
  undefined4 local_103c;
  int aiStack_1008 [1024];
  
  param_3 = param_3 << (param_5 & 0xff);
  param_4 = param_4 << (param_5 & 0xff);
  iVar4 = 1 << (param_5 & 0xff);
  param_2 = param_2 - param_4;
  iVar6 = iVar4;
  if (param_2 < iVar4) {
    iVar6 = param_2;
  }
  iVar3 = param_1 - param_3;
  if (iVar3 < iVar4) {
    iVar4 = iVar3;
  }
  local_1054 = 1e+30;
  local_1050 = 0;
  for (local_104c = 0; local_104c < 0xe; local_104c = local_104c + 1) {
    local_1048 = param_7;
    pcVar5 = (code *)(&PTR_FUN_00757714_1_009096a0)[local_104c];
    memset(aiStack_1008,0,0x1000);
    for (local_1044 = 0; local_1044 < iVar6; local_1044 = local_1044 + 1) {
      puVar7 = local_1048 + param_1;
      for (local_1040 = 0; local_1040 < iVar4; local_1040 = local_1040 + 1) {
        iVar3 = param_3 + local_1040;
        if (param_4 + local_1044 == 0) {
          if (iVar3 == 0) {
            local_103c = 0xff000000;
          }
          else {
            local_103c = puVar7[iVar3 + -1];
          }
        }
        else if (iVar3 == 0) {
          local_103c = *local_1048;
        }
        else {
          local_103c = (*pcVar5)(puVar7[iVar3 + -1],local_1048 + iVar3);
        }
        uVar1 = FUN_007572d4(puVar7[iVar3],local_103c);
        aiStack_1008[uVar1 >> 0x18] = aiStack_1008[uVar1 >> 0x18] + 1;
        uVar8 = uVar1 >> 0x10 & 0xff;
        aiStack_1008[uVar8 + 0x100] = aiStack_1008[uVar8 + 0x100] + 1;
        uVar8 = uVar1 >> 8 & 0xff;
        aiStack_1008[uVar8 + 0x200] = aiStack_1008[uVar8 + 0x200] + 1;
        aiStack_1008[(uVar1 & 0xff) + 0x300] = aiStack_1008[(uVar1 & 0xff) + 0x300] + 1;
      }
      local_1048 = puVar7;
    }
    fVar2 = (float)FUN_00757a30(param_6,aiStack_1008);
    if ((int)((uint)(fVar2 < local_1054) << 0x1f) < 0) {
      local_1050 = local_104c;
      local_1054 = fVar2;
    }
  }
  return local_1050;
}

// ---- FUN_00757fa4  @ 0x757fa4
void FUN_00757fa4(int param_1,int param_2,int param_3,int param_4,uint param_5,int param_6,
                 undefined4 *param_7,int param_8)

{
  undefined4 uVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  code *pcVar5;
  undefined4 *puVar6;
  int iVar7;
  undefined4 *local_40;
  int local_3c;
  int local_38;
  undefined4 local_34;
  
  param_3 = param_3 << (param_5 & 0xff);
  param_4 = param_4 << (param_5 & 0xff);
  iVar3 = 1 << (param_5 & 0xff);
  param_2 = param_2 - param_4;
  iVar4 = iVar3;
  if (param_2 < iVar3) {
    iVar4 = param_2;
  }
  iVar2 = param_1 - param_3;
  if (iVar2 < iVar3) {
    iVar3 = iVar2;
  }
  pcVar5 = (code *)(&PTR_FUN_00757714_1_009096a0)[param_6];
  local_40 = param_7;
  for (local_3c = 0; local_3c < iVar4; local_3c = local_3c + 1) {
    iVar2 = param_4 + local_3c;
    puVar6 = local_40 + param_1;
    for (local_38 = 0; local_38 < iVar3; local_38 = local_38 + 1) {
      iVar7 = param_3 + local_38;
      if (iVar2 == 0) {
        if (iVar7 == 0) {
          local_34 = 0xff000000;
        }
        else {
          local_34 = puVar6[iVar7 + -1];
        }
      }
      else if (iVar7 == 0) {
        local_34 = *local_40;
      }
      else {
        local_34 = (*pcVar5)(puVar6[iVar7 + -1],local_40 + iVar7);
      }
      uVar1 = FUN_007572d4(puVar6[iVar7],local_34);
      *(undefined4 *)(param_8 + (param_1 * iVar2 + iVar7) * 4) = uVar1;
    }
    local_40 = puVar6;
  }
  return;
}

// ---- FUN_007585c4  @ 0x7585c4
void FUN_007585c4(int param_1,uint param_2,int param_3,int param_4)

{
  undefined4 uVar1;
  int iVar2;
  int iVar3;
  uint uVar4;
  int local_50;
  uint local_48;
  int local_3c;
  uint local_38;
  uint *local_34;
  uint local_30;
  uint *local_2c;
  code *local_28;
  
  iVar3 = *(int *)(param_1 + 8);
  local_50 = param_4;
  local_48 = param_2;
  if (param_2 == 0) {
    uVar1 = FUN_00757714(*(undefined4 *)(param_4 + -4),0);
    FUN_007573c0(param_4,uVar1);
    for (local_3c = 1; local_3c < iVar3; local_3c = local_3c + 1) {
      uVar1 = FUN_00757724(*(undefined4 *)(param_4 + (local_3c + -1) * 4),0);
      FUN_007573c0(param_4 + local_3c * 4,uVar1);
    }
    local_50 = param_4 + iVar3 * 4;
    local_48 = 1;
  }
  local_38 = local_48;
  uVar4 = (1 << (*(uint *)(param_1 + 4) & 0xff)) - 1;
  iVar2 = FUN_00757284(iVar3,*(undefined4 *)(param_1 + 4));
  local_34 = (uint *)(*(int *)(param_1 + 0x10) +
                     iVar2 * ((int)local_48 >> (*(uint *)(param_1 + 4) & 0xff)) * 4);
  while ((int)local_38 < param_3) {
    uVar1 = FUN_00757734(*(undefined4 *)(local_50 + -4),local_50 + iVar3 * -4);
    FUN_007573c0(local_50,uVar1);
    local_28 = (code *)(&PTR_FUN_00757714_1_009096a0)[*local_34 >> 8 & 0xf];
    local_2c = local_34 + 1;
    for (local_30 = 1; (int)local_30 < iVar3; local_30 = local_30 + 1) {
      if ((uVar4 & local_30) == 0) {
        local_28 = (code *)(&PTR_FUN_00757714_1_009096a0)[*local_2c >> 8 & 0xf];
        local_2c = local_2c + 1;
      }
      uVar1 = (*local_28)(*(undefined4 *)(local_50 + (local_30 - 1) * 4),
                          local_50 + (local_30 - iVar3) * 4);
      FUN_007573c0(local_50 + local_30 * 4,uVar1);
    }
    local_50 = local_50 + iVar3 * 4;
    local_38 = local_38 + 1;
    if ((uVar4 & local_38) == 0) {
      local_34 = local_34 + iVar2;
    }
  }
  return;
}

// ---- FUN_00758814  @ 0x758814
void FUN_00758814(int param_1,int param_2,int param_3,uint *param_4)

{
  int iVar1;
  uint uVar2;
  uint uVar3;
  uint *local_28;
  
  iVar1 = *(int *)(param_1 + 8);
  for (local_28 = param_4; local_28 < param_4 + iVar1 * (param_3 - param_2); local_28 = local_28 + 1
      ) {
    uVar2 = *local_28;
    uVar3 = uVar2 >> 8 & 0xff;
    *local_28 = uVar2 & 0xff00ff00 | (uVar2 & 0xff00ff) + (uVar3 | uVar3 << 0x10) & 0xff00ff;
  }
  return;
}

// ---- FUN_00758890  @ 0x758890
void FUN_00758890(undefined1 *param_1)

{
  *param_1 = 0;
  param_1[1] = 0;
  param_1[2] = 0;
  return;
}

// ---- FUN_007588b0  @ 0x7588b0
uint FUN_007588b0(char param_1,char param_2)

{
  return (uint)((int)param_2 * (int)param_1) >> 5;
}

// ---- FUN_007588d4  @ 0x7588d4
void FUN_007588d4(undefined4 param_1,undefined1 *param_2)

{
  *param_2 = (char)param_1;
  param_2[1] = (char)((uint)param_1 >> 8);
  param_2[2] = (char)((uint)param_1 >> 0x10);
  return;
}

// ---- FUN_00758900  @ 0x758900
uint FUN_00758900(byte *param_1)

{
  return (uint)*param_1 | (uint)param_1[2] << 0x10 | (uint)param_1[1] << 8 | 0xff000000;
}

// ---- FUN_00758928  @ 0x758928
uint FUN_00758928(char *param_1,uint param_2,int param_3)

{
  char cVar1;
  int iVar2;
  int iVar3;
  uint local_18;
  uint local_14;
  
  cVar1 = (char)(param_2 >> 8);
  if (param_3 == 0) {
    iVar2 = FUN_007588b0((int)*param_1,(int)cVar1);
    local_18 = (param_2 >> 0x10) - iVar2;
    iVar2 = FUN_007588b0((int)param_1[1],(int)cVar1);
    iVar3 = FUN_007588b0((int)param_1[2],(int)(char)(param_2 >> 0x10));
    local_14 = (param_2 - iVar2) - iVar3;
  }
  else {
    iVar2 = FUN_007588b0((int)*param_1,(int)cVar1);
    local_18 = (param_2 >> 0x10) + iVar2;
    iVar2 = FUN_007588b0((int)param_1[1],(int)cVar1);
    iVar3 = FUN_007588b0((int)param_1[2],(int)(char)local_18);
    local_14 = param_2 + iVar2 + iVar3;
  }
  local_14 = local_14 & 0xff;
  local_18 = local_18 & 0xff;
  return local_14 | param_2 & 0xff00ff00 | local_18 << 0x10;
}

// ---- FUN_00758a38  @ 0x758a38
undefined4 FUN_00758a38(int param_1,int param_2,int param_3)

{
  int iVar1;
  undefined4 uVar2;
  
  iVar1 = *(int *)(param_1 + param_2 * 4);
  if (param_2 < param_3 + 3) {
    if (param_2 < 3) {
      uVar2 = 0;
    }
    else if (((*(int *)(param_1 + (param_2 + -3) * 4) == iVar1) &&
             (*(int *)(param_1 + (param_2 + -2) * 4) == iVar1)) &&
            (*(int *)(param_1 + (param_2 + -1) * 4) == iVar1)) {
      uVar2 = 1;
    }
    else {
      uVar2 = 0;
    }
  }
  else if (((*(int *)(param_1 + (param_2 - param_3) * 4) == iVar1) &&
           (*(int *)(param_1 + (param_2 + -1) * 4) ==
            *(int *)(param_1 + ((param_2 - param_3) + -1) * 4))) &&
          ((*(int *)(param_1 + (param_2 + -2) * 4) ==
            *(int *)(param_1 + ((param_2 - param_3) + -2) * 4) &&
           (*(int *)(param_1 + (param_2 + -3) * 4) ==
            *(int *)(param_1 + ((param_2 - param_3) + -3) * 4))))) {
    uVar2 = 1;
  }
  else if (((*(int *)(param_1 + (param_2 + -3) * 4) == iVar1) &&
           (*(int *)(param_1 + (param_2 + -2) * 4) == iVar1)) &&
          (*(int *)(param_1 + (param_2 + -1) * 4) == iVar1)) {
    uVar2 = 1;
  }
  else {
    uVar2 = 0;
  }
  return uVar2;
}

// ---- FUN_00758ba0  @ 0x758ba0
float FUN_00758ba0(int param_1,int param_2)

{
  float fVar1;
  float fVar2;
  float fVar3;
  int local_414;
  int aiStack_410 [257];
  
  for (local_414 = 0; local_414 < 0x100; local_414 = local_414 + 1) {
    aiStack_410[local_414] = *(int *)(param_1 + local_414 * 4) + *(int *)(param_2 + local_414 * 4);
  }
  fVar1 = (float)FUN_007579a0(aiStack_410,0x100);
  fVar2 = (float)FUN_007579a0(param_2,0x100);
  fVar3 = (float)FUN_007578e0(param_2,3,0x33333333,0x40033333);
  return fVar1 + fVar2 + fVar3;
}

// ---- FUN_00758c80  @ 0x758c80
uint FUN_00758c80(int param_1,int param_2,uint param_3,uint param_4,uint param_5,int param_6,
                 int param_7,int param_8,undefined4 param_9,undefined4 param_10,int param_11)

{
  int iVar1;
  uint uVar2;
  char cStack_46f;
  char cStack_46e;
  uint local_460;
  undefined4 local_45c;
  float local_454;
  float local_450;
  uint local_44c;
  int local_448;
  int local_444;
  int local_440;
  int local_43c;
  int local_438;
  int local_434;
  int local_430;
  int local_42c;
  int local_428;
  int local_424;
  int local_420;
  int local_41c;
  int local_418;
  int local_414;
  uint local_410;
  uint local_40c;
  int aiStack_408 [256];
  
  local_454 = 1e+30;
  local_420 = param_6 / 2;
  local_41c = 1 << (param_3 & 0xff);
  local_418 = local_41c * param_2;
  local_414 = local_41c * param_1;
  local_440 = local_414 + local_41c;
  local_43c = local_418 + local_41c;
  FUN_00758890(&local_460);
  if (param_7 < local_440) {
    local_440 = param_7;
  }
  if (param_8 < local_43c) {
    local_43c = param_8;
  }
  for (local_44c = -0x40; (int)local_44c < 0x41; local_44c = local_44c + local_420) {
    memset(aiStack_408,0,0x400);
    FUN_00758890(&local_45c);
    local_45c = CONCAT31(local_45c._1_3_,(char)local_44c);
    for (local_438 = local_418; local_438 < local_43c; local_438 = local_438 + 1) {
      local_434 = param_7 * local_438 + local_414;
      for (local_430 = local_414; local_430 < local_440; local_430 = local_430 + 1) {
        iVar1 = FUN_00758a38(param_11,local_434,param_7);
        if (iVar1 == 0) {
          local_410 = FUN_00758928(&local_45c,*(undefined4 *)(param_11 + local_434 * 4),0);
          uVar2 = local_410 >> 0x10 & 0xff;
          aiStack_408[uVar2] = aiStack_408[uVar2] + 1;
        }
        local_434 = local_434 + 1;
      }
    }
    local_450 = (float)FUN_00758ba0(param_9,aiStack_408);
    if ((local_45c & 0xff) == (param_4 & 0xff)) {
      local_450 = local_450 - 3.0;
    }
    if ((local_45c & 0xff) == (param_5 & 0xff)) {
      local_450 = local_450 - 3.0;
    }
    if ((char)local_45c == '\0') {
      local_450 = local_450 - 3.0;
    }
    if ((int)((uint)(local_450 < local_454) << 0x1f) < 0) {
      local_454 = local_450;
      local_460._0_3_ = (undefined3)local_45c;
    }
  }
  local_454 = 1e+30;
  local_44c = local_460 & 0xff;
  for (local_448 = -0x20; local_448 < 0x21; local_448 = local_448 + param_6) {
    for (local_444 = -0x20; local_444 < 0x21; local_444 = local_444 + param_6) {
      memset(aiStack_408,0,0x400);
      uVar2 = local_45c;
      local_45c._3_1_ = SUB41(uVar2,3);
      local_45c._0_3_ = CONCAT12((char)local_444,CONCAT11((char)local_448,(char)local_44c));
      for (local_42c = local_418; local_42c < local_43c; local_42c = local_42c + 1) {
        local_424 = param_7 * local_42c + local_414;
        for (local_428 = local_414; local_428 < local_440; local_428 = local_428 + 1) {
          iVar1 = FUN_00758a38(param_11,local_424,param_7);
          if (iVar1 == 0) {
            local_40c = FUN_00758928(&local_45c,*(undefined4 *)(param_11 + local_424 * 4),0);
            aiStack_408[local_40c & 0xff] = aiStack_408[local_40c & 0xff] + 1;
          }
          local_424 = local_424 + 1;
        }
      }
      local_450 = (float)FUN_00758ba0(param_10,aiStack_408);
      cStack_46f = (char)(param_4 >> 8);
      if (local_45c._1_1_ == cStack_46f) {
        local_450 = local_450 - 3.0;
      }
      if (local_45c._1_1_ == param_5._1_1_) {
        local_450 = local_450 - 3.0;
      }
      cStack_46e = (char)(param_4 >> 0x10);
      if (local_45c._2_1_ == cStack_46e) {
        local_450 = local_450 - 3.0;
      }
      if (local_45c._2_1_ == param_5._2_1_) {
        local_450 = local_450 - 3.0;
      }
      if (local_45c._1_1_ == '\0') {
        local_450 = local_450 - 3.0;
      }
      if (local_45c._2_1_ == '\0') {
        local_450 = local_450 - 3.0;
      }
      if ((int)((uint)(local_450 < local_454) << 0x1f) < 0) {
        local_454 = local_450;
        local_460._0_3_ = (undefined3)local_45c;
      }
    }
  }
  return local_460 & 0xffffff;
}

// ---- FUN_0075926c  @ 0x75926c
void FUN_0075926c(int param_1,int param_2,int param_3,int param_4,uint param_5,undefined4 param_6,
                 int param_7)

{
  undefined4 uVar1;
  int iVar2;
  undefined4 *puVar3;
  int local_1c;
  int local_18;
  int local_14;
  int local_10;
  
  local_18 = 1 << (param_5 & 0xff);
  local_14 = 1 << (param_5 & 0xff);
  param_3 = param_3 << (param_5 & 0xff);
  local_1c = param_4 << (param_5 & 0xff);
  if (param_1 - param_3 < local_18) {
    local_18 = param_1 - param_3;
  }
  if (param_2 - local_1c < local_14) {
    local_14 = param_2 - local_1c;
  }
  local_14 = local_14 + local_1c;
  for (; local_1c < local_14; local_1c = local_1c + 1) {
    local_10 = param_1 * local_1c + param_3;
    iVar2 = local_10 + local_18;
    for (; local_10 < iVar2; local_10 = local_10 + 1) {
      puVar3 = (undefined4 *)(param_7 + local_10 * 4);
      uVar1 = FUN_00758928(&param_6,*(undefined4 *)(param_7 + local_10 * 4),0);
      *puVar3 = uVar1;
    }
  }
  return;
}

// ---- FUN_007598d4  @ 0x7598d4
void FUN_007598d4(int param_1,uint param_2,int param_3,int param_4)

{
  undefined4 uVar1;
  int iVar2;
  int local_38;
  undefined1 local_28;
  undefined1 local_27;
  undefined1 local_26;
  uint local_24;
  undefined4 *local_20;
  undefined4 *local_1c;
  uint local_18;
  int local_14;
  uint local_10;
  int local_c;
  
  local_14 = *(int *)(param_1 + 8);
  local_10 = (1 << (*(uint *)(param_1 + 4) & 0xff)) - 1;
  local_c = FUN_00757284(local_14,*(undefined4 *)(param_1 + 4));
  local_20 = (undefined4 *)
             (*(int *)(param_1 + 0x10) +
             local_c * ((int)param_2 >> (*(uint *)(param_1 + 4) & 0xff)) * 4);
  local_38 = param_4;
  local_24 = param_2;
  while ((int)local_24 < param_3) {
    local_1c = local_20;
    local_28 = 0;
    local_27 = 0;
    local_26 = 0;
    for (local_18 = 0; (int)local_18 < local_14; local_18 = local_18 + 1) {
      if ((local_10 & local_18) == 0) {
        uVar1 = *local_1c;
        local_1c = local_1c + 1;
        FUN_007588d4(uVar1,&local_28);
      }
      iVar2 = local_18 * 4;
      uVar1 = FUN_00758928(&local_28,*(undefined4 *)(local_38 + local_18 * 4),1);
      *(undefined4 *)(local_38 + iVar2) = uVar1;
    }
    local_38 = local_38 + local_14 * 4;
    local_24 = local_24 + 1;
    if ((local_10 & local_24) == 0) {
      local_20 = local_20 + local_c;
    }
  }
  return;
}

// ---- FUN_007599e0  @ 0x7599e0
void FUN_007599e0(int param_1,int param_2,int param_3,uint *param_4,undefined4 *param_5)

{
  uint uVar1;
  int iVar2;
  int iVar3;
  uint uVar4;
  uint *local_38;
  int local_28;
  uint local_24;
  uint local_20;
  int local_1c;
  
  uVar1 = 8 >> (*(uint *)(param_1 + 4) & 0xff);
  iVar2 = *(int *)(param_1 + 8);
  iVar3 = *(int *)(param_1 + 0x10);
  local_38 = param_4;
  local_28 = param_2;
  if ((int)uVar1 < 8) {
    uVar4 = *(uint *)(param_1 + 4);
    for (; local_28 < param_3; local_28 = local_28 + 1) {
      local_24 = 0;
      for (local_20 = 0; (int)local_20 < iVar2; local_20 = local_20 + 1) {
        if (((1 << (uVar4 & 0xff)) - 1U & local_20) == 0) {
          local_24 = *local_38 >> 8 & 0xff;
          local_38 = local_38 + 1;
        }
        *param_5 = *(undefined4 *)(iVar3 + ((1 << (uVar1 & 0xff)) - 1U & local_24) * 4);
        param_5 = param_5 + 1;
        local_24 = local_24 >> (uVar1 & 0xff);
      }
    }
  }
  else {
    for (; local_28 < param_3; local_28 = local_28 + 1) {
      for (local_1c = 0; local_1c < iVar2; local_1c = local_1c + 1) {
        *param_5 = *(undefined4 *)(iVar3 + (*local_38 >> 8 & 0xff) * 4);
        param_5 = param_5 + 1;
        local_38 = local_38 + 1;
      }
    }
  }
  return;
}

// ---- FUN_00759c90  @ 0x759c90
/* WARNING: Removing unreachable block (ram,0x00759c9c) */

undefined1 FUN_00759c90(void)

{
  return 0;
}

// ---- FUN_00759ca8  @ 0x759ca8
void FUN_00759ca8(undefined4 *param_1,int param_2,undefined1 *param_3)

{
  undefined4 uVar1;
  undefined1 *local_14;
  undefined4 *local_c;
  
  local_14 = param_3;
  local_c = param_1;
  while (local_c < param_1 + param_2) {
    uVar1 = *local_c;
    local_c = local_c + 1;
    *local_14 = (char)((uint)uVar1 >> 0x10);
    local_14[1] = (char)((uint)uVar1 >> 8);
    local_14[2] = (char)uVar1;
    local_14 = local_14 + 3;
  }
  return;
}

// ---- FUN_00759d10  @ 0x759d10
void FUN_00759d10(undefined4 *param_1,int param_2,undefined1 *param_3)

{
  undefined4 uVar1;
  undefined1 *local_14;
  undefined4 *local_c;
  
  local_14 = param_3;
  local_c = param_1;
  while (local_c < param_1 + param_2) {
    uVar1 = *local_c;
    local_c = local_c + 1;
    *local_14 = (char)((uint)uVar1 >> 0x10);
    local_14[1] = (char)((uint)uVar1 >> 8);
    local_14[2] = (char)uVar1;
    local_14[3] = (char)((uint)uVar1 >> 0x18);
    local_14 = local_14 + 4;
  }
  return;
}

// ---- FUN_00759d8c  @ 0x759d8c
void FUN_00759d8c(uint *param_1,int param_2,byte *param_3)

{
  uint uVar1;
  byte *local_14;
  uint *local_c;
  
  local_14 = param_3;
  local_c = param_1;
  while (local_c < param_1 + param_2) {
    uVar1 = *local_c;
    local_c = local_c + 1;
    *local_14 = (byte)(uVar1 >> 0xc) & 0xf | (byte)(uVar1 >> 0x10) & 0xf0;
    local_14[1] = (byte)(uVar1 >> 0x1c) | (byte)uVar1 & 0xf0;
    local_14 = local_14 + 2;
  }
  return;
}

// ---- FUN_00759e0c  @ 0x759e0c
void FUN_00759e0c(uint *param_1,int param_2,byte *param_3)

{
  uint uVar1;
  byte *local_14;
  uint *local_c;
  
  local_14 = param_3;
  local_c = param_1;
  while (local_c < param_1 + param_2) {
    uVar1 = *local_c;
    local_c = local_c + 1;
    *local_14 = (byte)(uVar1 >> 0xd) & 7 | (byte)(uVar1 >> 0x10) & 0xf8;
    local_14[1] = (byte)(uVar1 >> 3) & 0x1f | (byte)(uVar1 >> 5) & 0xe0;
    local_14 = local_14 + 2;
  }
  return;
}

// ---- FUN_00759e94  @ 0x759e94
void FUN_00759e94(undefined4 *param_1,int param_2,undefined1 *param_3)

{
  undefined4 uVar1;
  undefined1 *local_14;
  undefined4 *local_c;
  
  local_14 = param_3;
  local_c = param_1;
  while (local_c < param_1 + param_2) {
    uVar1 = *local_c;
    local_c = local_c + 1;
    *local_14 = (char)uVar1;
    local_14[1] = (char)((uint)uVar1 >> 8);
    local_14[2] = (char)((uint)uVar1 >> 0x10);
    local_14 = local_14 + 3;
  }
  return;
}

// ---- FUN_00759efc  @ 0x759efc
void FUN_00759efc(undefined4 *param_1,int param_2,undefined1 *param_3,int param_4)

{
  int iVar1;
  undefined4 uVar2;
  undefined1 *local_1c;
  undefined4 *local_14;
  
  iVar1 = FUN_00759c90();
  if (iVar1 == param_4) {
    local_1c = param_3;
    local_14 = param_1;
    while (local_14 < param_1 + param_2) {
      uVar2 = *local_14;
      local_14 = local_14 + 1;
      *local_1c = (char)((uint)uVar2 >> 0x18);
      local_1c[1] = (char)((uint)uVar2 >> 0x10);
      local_1c[2] = (char)((uint)uVar2 >> 8);
      local_1c[3] = (char)uVar2;
      local_1c = local_1c + 4;
    }
  }
  else {
    memcpy(param_3,param_1,param_2 << 2);
  }
  return;
}

// ---- FUN_0075a11c  @ 0x75a11c
void FUN_0075a11c(byte param_1,byte param_2,byte param_3,undefined1 *param_4)

{
  short sVar1;
  int iVar2;
  int iVar3;
  
  iVar2 = *(int *)(VP8kVToG + (uint)param_3 * 4);
  iVar3 = *(int *)(VP8kUToG + (uint)param_2 * 4);
  sVar1 = *(short *)(VP8kUToB + (uint)param_2 * 2);
  *param_4 = VP8kClip[(uint)param_1 + (int)*(short *)(VP8kVToR + (uint)param_3 * 2) + 0xe3];
  param_4[1] = VP8kClip[(uint)param_1 + (iVar2 + iVar3 >> 0x10) + 0xe3];
  param_4[2] = VP8kClip[(uint)param_1 + (int)sVar1 + 0xe3];
  return;
}

// ---- FUN_0075a1dc  @ 0x75a1dc
void FUN_0075a1dc(byte param_1,byte param_2,byte param_3,byte *param_4)

{
  int iVar1;
  short sVar2;
  
  iVar1 = *(int *)(VP8kVToG + (uint)param_3 * 4) + *(int *)(VP8kUToG + (uint)param_2 * 4) >> 0x10;
  sVar2 = *(short *)(VP8kUToB + (uint)param_2 * 2);
  *param_4 = (byte)VP8kClip[(uint)param_1 + iVar1 + 0xe3] >> 5 |
             VP8kClip[(uint)param_1 + (int)*(short *)(VP8kVToR + (uint)param_3 * 2) + 0xe3] & 0xf8;
  param_4[1] = (byte)VP8kClip[(uint)param_1 + (int)sVar2 + 0xe3] >> 3 |
               (VP8kClip[(uint)param_1 + iVar1 + 0xe3] & 0x1c) << 3;
  return;
}

// ---- FUN_0075a2dc  @ 0x75a2dc
void FUN_0075a2dc(undefined1 param_1,undefined1 param_2,undefined1 param_3,undefined1 *param_4)

{
  *param_4 = 0xff;
  FUN_0075a11c(param_1,param_2,param_3,param_4 + 1);
  return;
}

// ---- FUN_0075a318  @ 0x75a318
void FUN_0075a318(byte param_1,byte param_2,byte param_3,byte *param_4)

{
  short sVar1;
  
  sVar1 = *(short *)(VP8kUToB + (uint)param_2 * 2);
  *param_4 = VP8kClip4Bits
             [(uint)param_1 +
              (*(int *)(VP8kVToG + (uint)param_3 * 4) + *(int *)(VP8kUToG + (uint)param_2 * 4) >>
              0x10) + 0xe3] |
             VP8kClip4Bits[(uint)param_1 + (int)*(short *)(VP8kVToR + (uint)param_3 * 2) + 0xe3] <<
             4;
  param_4[1] = VP8kClip4Bits[(uint)param_1 + (int)sVar1 + 0xe3] << 4 | 0xf;
  return;
}

// ---- FUN_0075a3ec  @ 0x75a3ec
void FUN_0075a3ec(byte param_1,byte param_2,byte param_3,undefined1 *param_4)

{
  short sVar1;
  int iVar2;
  int iVar3;
  
  sVar1 = *(short *)(VP8kVToR + (uint)param_3 * 2);
  iVar2 = *(int *)(VP8kVToG + (uint)param_3 * 4);
  iVar3 = *(int *)(VP8kUToG + (uint)param_2 * 4);
  *param_4 = VP8kClip[(uint)param_1 + (int)*(short *)(VP8kUToB + (uint)param_2 * 2) + 0xe3];
  param_4[1] = VP8kClip[(uint)param_1 + (iVar2 + iVar3 >> 0x10) + 0xe3];
  param_4[2] = VP8kClip[(uint)param_1 + (int)sVar1 + 0xe3];
  return;
}

// ---- FUN_0075a4ac  @ 0x75a4ac
void FUN_0075a4ac(undefined1 param_1,undefined1 param_2,undefined1 param_3,int param_4)

{
  FUN_0075a3ec(param_1,param_2,param_3,param_4);
  *(undefined1 *)(param_4 + 3) = 0xff;
  return;
}

// ---- FUN_0075a4ec  @ 0x75a4ec
void FUN_0075a4ec(undefined1 param_1,undefined1 param_2,undefined1 param_3,int param_4)

{
  FUN_0075a11c(param_1,param_2,param_3,param_4);
  *(undefined1 *)(param_4 + 3) = 0xff;
  return;
}

// ---- FUN_0075a52c  @ 0x75a52c
void FUN_0075a52c(undefined1 *param_1,undefined1 *param_2,byte *param_3,byte *param_4,byte *param_5,
                 byte *param_6,int param_7,int param_8,uint param_9)

{
  uint uVar1;
  uint uVar2;
  int iVar3;
  uint uVar4;
  uint uVar5;
  uint uVar6;
  int local_4c;
  uint local_48;
  uint local_44;
  
  local_48 = (uint)*param_4 << 0x10 | (uint)*param_3;
  local_44 = (uint)*param_6 << 0x10 | (uint)*param_5;
  if (param_1 != (undefined1 *)0x0) {
    uVar1 = local_48 * 3 + local_44 + 0x20002;
    FUN_0075a11c(*param_1,uVar1 >> 2 & 0xff,uVar1 >> 0x12 & 0xff,param_7);
  }
  if (param_2 != (undefined1 *)0x0) {
    uVar1 = local_44 * 3 + local_48 + 0x20002;
    FUN_0075a11c(*param_2,uVar1 >> 2 & 0xff,uVar1 >> 0x12 & 0xff,param_8);
  }
  for (local_4c = 1; local_4c <= (int)(param_9 - 1) >> 1; local_4c = local_4c + 1) {
    uVar1 = (uint)param_4[local_4c] << 0x10 | (uint)param_3[local_4c];
    uVar2 = (uint)param_6[local_4c] << 0x10 | (uint)param_5[local_4c];
    iVar3 = local_48 + uVar1 + local_44 + uVar2 + 0x80008;
    uVar4 = (uVar1 + local_44) * 2 + iVar3 >> 3;
    uVar5 = (local_48 + uVar2) * 2 + iVar3 >> 3;
    if (param_1 != (undefined1 *)0x0) {
      local_48 = uVar4 + local_48;
      uVar6 = uVar5 + uVar1;
      FUN_0075a11c(param_1[local_4c * 2 + -1],local_48 >> 1 & 0xff,local_48 >> 0x11 & 0xff,
                   param_7 + local_4c * 6 + -3);
      FUN_0075a11c(param_1[local_4c * 2],uVar6 >> 1 & 0xff,uVar6 >> 0x11 & 0xff,
                   param_7 + local_4c * 6);
    }
    if (param_2 != (undefined1 *)0x0) {
      uVar5 = uVar5 + local_44;
      uVar4 = uVar4 + uVar2;
      FUN_0075a11c(param_2[local_4c * 2 + -1],uVar5 >> 1 & 0xff,uVar5 >> 0x11 & 0xff,
                   param_8 + local_4c * 6 + -3);
      FUN_0075a11c(param_2[local_4c * 2],uVar4 >> 1 & 0xff,uVar4 >> 0x11 & 0xff,
                   param_8 + local_4c * 6);
    }
    local_48 = uVar1;
    local_44 = uVar2;
  }
  if ((param_9 & 1) == 0) {
    if (param_1 != (undefined1 *)0x0) {
      uVar1 = local_48 * 3 + local_44 + 0x20002;
      FUN_0075a11c(param_1[param_9 - 1],uVar1 >> 2 & 0xff,uVar1 >> 0x12 & 0xff,
                   param_7 + (param_9 - 1) * 3);
    }
    if (param_2 != (undefined1 *)0x0) {
      uVar1 = local_44 * 3 + local_48 + 0x20002;
      FUN_0075a11c(param_2[param_9 - 1],uVar1 >> 2 & 0xff,uVar1 >> 0x12 & 0xff,
                   param_8 + (param_9 - 1) * 3);
    }
  }
  return;
}

// ---- FUN_0075a824  @ 0x75a824
void FUN_0075a824(undefined1 *param_1,undefined1 *param_2,byte *param_3,byte *param_4,byte *param_5,
                 byte *param_6,int param_7,int param_8,uint param_9)

{
  uint uVar1;
  uint uVar2;
  int iVar3;
  uint uVar4;
  uint uVar5;
  uint uVar6;
  int local_4c;
  uint local_48;
  uint local_44;
  
  local_48 = (uint)*param_4 << 0x10 | (uint)*param_3;
  local_44 = (uint)*param_6 << 0x10 | (uint)*param_5;
  if (param_1 != (undefined1 *)0x0) {
    uVar1 = local_48 * 3 + local_44 + 0x20002;
    FUN_0075a3ec(*param_1,uVar1 >> 2 & 0xff,uVar1 >> 0x12 & 0xff,param_7);
  }
  if (param_2 != (undefined1 *)0x0) {
    uVar1 = local_44 * 3 + local_48 + 0x20002;
    FUN_0075a3ec(*param_2,uVar1 >> 2 & 0xff,uVar1 >> 0x12 & 0xff,param_8);
  }
  for (local_4c = 1; local_4c <= (int)(param_9 - 1) >> 1; local_4c = local_4c + 1) {
    uVar1 = (uint)param_4[local_4c] << 0x10 | (uint)param_3[local_4c];
    uVar2 = (uint)param_6[local_4c] << 0x10 | (uint)param_5[local_4c];
    iVar3 = local_48 + uVar1 + local_44 + uVar2 + 0x80008;
    uVar4 = (uVar1 + local_44) * 2 + iVar3 >> 3;
    uVar5 = (local_48 + uVar2) * 2 + iVar3 >> 3;
    if (param_1 != (undefined1 *)0x0) {
      local_48 = uVar4 + local_48;
      uVar6 = uVar5 + uVar1;
      FUN_0075a3ec(param_1[local_4c * 2 + -1],local_48 >> 1 & 0xff,local_48 >> 0x11 & 0xff,
                   param_7 + local_4c * 6 + -3);
      FUN_0075a3ec(param_1[local_4c * 2],uVar6 >> 1 & 0xff,uVar6 >> 0x11 & 0xff,
                   param_7 + local_4c * 6);
    }
    if (param_2 != (undefined1 *)0x0) {
      uVar5 = uVar5 + local_44;
      uVar4 = uVar4 + uVar2;
      FUN_0075a3ec(param_2[local_4c * 2 + -1],uVar5 >> 1 & 0xff,uVar5 >> 0x11 & 0xff,
                   param_8 + local_4c * 6 + -3);
      FUN_0075a3ec(param_2[local_4c * 2],uVar4 >> 1 & 0xff,uVar4 >> 0x11 & 0xff,
                   param_8 + local_4c * 6);
    }
    local_48 = uVar1;
    local_44 = uVar2;
  }
  if ((param_9 & 1) == 0) {
    if (param_1 != (undefined1 *)0x0) {
      uVar1 = local_48 * 3 + local_44 + 0x20002;
      FUN_0075a3ec(param_1[param_9 - 1],uVar1 >> 2 & 0xff,uVar1 >> 0x12 & 0xff,
                   param_7 + (param_9 - 1) * 3);
    }
    if (param_2 != (undefined1 *)0x0) {
      uVar1 = local_44 * 3 + local_48 + 0x20002;
      FUN_0075a3ec(param_2[param_9 - 1],uVar1 >> 2 & 0xff,uVar1 >> 0x12 & 0xff,
                   param_8 + (param_9 - 1) * 3);
    }
  }
  return;
}

// ---- FUN_0075ab1c  @ 0x75ab1c
void FUN_0075ab1c(undefined1 *param_1,undefined1 *param_2,byte *param_3,byte *param_4,byte *param_5,
                 byte *param_6,int param_7,int param_8,uint param_9)

{
  uint uVar1;
  uint uVar2;
  int iVar3;
  uint uVar4;
  uint uVar5;
  uint uVar6;
  int local_4c;
  uint local_48;
  uint local_44;
  
  local_48 = (uint)*param_4 << 0x10 | (uint)*param_3;
  local_44 = (uint)*param_6 << 0x10 | (uint)*param_5;
  if (param_1 != (undefined1 *)0x0) {
    uVar1 = local_48 * 3 + local_44 + 0x20002;
    FUN_0075a4ec(*param_1,uVar1 >> 2 & 0xff,uVar1 >> 0x12 & 0xff,param_7);
  }
  if (param_2 != (undefined1 *)0x0) {
    uVar1 = local_44 * 3 + local_48 + 0x20002;
    FUN_0075a4ec(*param_2,uVar1 >> 2 & 0xff,uVar1 >> 0x12 & 0xff,param_8);
  }
  for (local_4c = 1; local_4c <= (int)(param_9 - 1) >> 1; local_4c = local_4c + 1) {
    uVar1 = (uint)param_4[local_4c] << 0x10 | (uint)param_3[local_4c];
    uVar2 = (uint)param_6[local_4c] << 0x10 | (uint)param_5[local_4c];
    iVar3 = local_48 + uVar1 + local_44 + uVar2 + 0x80008;
    uVar4 = (uVar1 + local_44) * 2 + iVar3 >> 3;
    uVar5 = (local_48 + uVar2) * 2 + iVar3 >> 3;
    if (param_1 != (undefined1 *)0x0) {
      local_48 = uVar4 + local_48;
      uVar6 = uVar5 + uVar1;
      FUN_0075a4ec(param_1[local_4c * 2 + -1],local_48 >> 1 & 0xff,local_48 >> 0x11 & 0xff,
                   param_7 + local_4c * 8 + -4);
      FUN_0075a4ec(param_1[local_4c * 2],uVar6 >> 1 & 0xff,uVar6 >> 0x11 & 0xff,
                   param_7 + local_4c * 8);
    }
    if (param_2 != (undefined1 *)0x0) {
      uVar5 = uVar5 + local_44;
      uVar4 = uVar4 + uVar2;
      FUN_0075a4ec(param_2[local_4c * 2 + -1],uVar5 >> 1 & 0xff,uVar5 >> 0x11 & 0xff,
                   param_8 + local_4c * 8 + -4);
      FUN_0075a4ec(param_2[local_4c * 2],uVar4 >> 1 & 0xff,uVar4 >> 0x11 & 0xff,
                   param_8 + local_4c * 8);
    }
    local_48 = uVar1;
    local_44 = uVar2;
  }
  if ((param_9 & 1) == 0) {
    if (param_1 != (undefined1 *)0x0) {
      uVar1 = local_48 * 3 + local_44 + 0x20002;
      FUN_0075a4ec(param_1[param_9 - 1],uVar1 >> 2 & 0xff,uVar1 >> 0x12 & 0xff,
                   param_7 + (param_9 - 1) * 4);
    }
    if (param_2 != (undefined1 *)0x0) {
      uVar1 = local_44 * 3 + local_48 + 0x20002;
      FUN_0075a4ec(param_2[param_9 - 1],uVar1 >> 2 & 0xff,uVar1 >> 0x12 & 0xff,
                   param_8 + (param_9 - 1) * 4);
    }
  }
  return;
}

// ---- FUN_0075ade0  @ 0x75ade0
void FUN_0075ade0(undefined1 *param_1,undefined1 *param_2,byte *param_3,byte *param_4,byte *param_5,
                 byte *param_6,int param_7,int param_8,uint param_9)

{
  uint uVar1;
  uint uVar2;
  int iVar3;
  uint uVar4;
  uint uVar5;
  uint uVar6;
  int local_4c;
  uint local_48;
  uint local_44;
  
  local_48 = (uint)*param_4 << 0x10 | (uint)*param_3;
  local_44 = (uint)*param_6 << 0x10 | (uint)*param_5;
  if (param_1 != (undefined1 *)0x0) {
    uVar1 = local_48 * 3 + local_44 + 0x20002;
    FUN_0075a4ac(*param_1,uVar1 >> 2 & 0xff,uVar1 >> 0x12 & 0xff,param_7);
  }
  if (param_2 != (undefined1 *)0x0) {
    uVar1 = local_44 * 3 + local_48 + 0x20002;
    FUN_0075a4ac(*param_2,uVar1 >> 2 & 0xff,uVar1 >> 0x12 & 0xff,param_8);
  }
  for (local_4c = 1; local_4c <= (int)(param_9 - 1) >> 1; local_4c = local_4c + 1) {
    uVar1 = (uint)param_4[local_4c] << 0x10 | (uint)param_3[local_4c];
    uVar2 = (uint)param_6[local_4c] << 0x10 | (uint)param_5[local_4c];
    iVar3 = local_48 + uVar1 + local_44 + uVar2 + 0x80008;
    uVar4 = (uVar1 + local_44) * 2 + iVar3 >> 3;
    uVar5 = (local_48 + uVar2) * 2 + iVar3 >> 3;
    if (param_1 != (undefined1 *)0x0) {
      local_48 = uVar4 + local_48;
      uVar6 = uVar5 + uVar1;
      FUN_0075a4ac(param_1[local_4c * 2 + -1],local_48 >> 1 & 0xff,local_48 >> 0x11 & 0xff,
                   param_7 + local_4c * 8 + -4);
      FUN_0075a4ac(param_1[local_4c * 2],uVar6 >> 1 & 0xff,uVar6 >> 0x11 & 0xff,
                   param_7 + local_4c * 8);
    }
    if (param_2 != (undefined1 *)0x0) {
      uVar5 = uVar5 + local_44;
      uVar4 = uVar4 + uVar2;
      FUN_0075a4ac(param_2[local_4c * 2 + -1],uVar5 >> 1 & 0xff,uVar5 >> 0x11 & 0xff,
                   param_8 + local_4c * 8 + -4);
      FUN_0075a4ac(param_2[local_4c * 2],uVar4 >> 1 & 0xff,uVar4 >> 0x11 & 0xff,
                   param_8 + local_4c * 8);
    }
    local_48 = uVar1;
    local_44 = uVar2;
  }
  if ((param_9 & 1) == 0) {
    if (param_1 != (undefined1 *)0x0) {
      uVar1 = local_48 * 3 + local_44 + 0x20002;
      FUN_0075a4ac(param_1[param_9 - 1],uVar1 >> 2 & 0xff,uVar1 >> 0x12 & 0xff,
                   param_7 + (param_9 - 1) * 4);
    }
    if (param_2 != (undefined1 *)0x0) {
      uVar1 = local_44 * 3 + local_48 + 0x20002;
      FUN_0075a4ac(param_2[param_9 - 1],uVar1 >> 2 & 0xff,uVar1 >> 0x12 & 0xff,
                   param_8 + (param_9 - 1) * 4);
    }
  }
  return;
}

// ---- FUN_0075b0a4  @ 0x75b0a4
void FUN_0075b0a4(undefined1 *param_1,undefined1 *param_2,byte *param_3,byte *param_4,byte *param_5,
                 byte *param_6,int param_7,int param_8,uint param_9)

{
  uint uVar1;
  uint uVar2;
  int iVar3;
  uint uVar4;
  uint uVar5;
  uint uVar6;
  int local_4c;
  uint local_48;
  uint local_44;
  
  local_48 = (uint)*param_4 << 0x10 | (uint)*param_3;
  local_44 = (uint)*param_6 << 0x10 | (uint)*param_5;
  if (param_1 != (undefined1 *)0x0) {
    uVar1 = local_48 * 3 + local_44 + 0x20002;
    FUN_0075a2dc(*param_1,uVar1 >> 2 & 0xff,uVar1 >> 0x12 & 0xff,param_7);
  }
  if (param_2 != (undefined1 *)0x0) {
    uVar1 = local_44 * 3 + local_48 + 0x20002;
    FUN_0075a2dc(*param_2,uVar1 >> 2 & 0xff,uVar1 >> 0x12 & 0xff,param_8);
  }
  for (local_4c = 1; local_4c <= (int)(param_9 - 1) >> 1; local_4c = local_4c + 1) {
    uVar1 = (uint)param_4[local_4c] << 0x10 | (uint)param_3[local_4c];
    uVar2 = (uint)param_6[local_4c] << 0x10 | (uint)param_5[local_4c];
    iVar3 = local_48 + uVar1 + local_44 + uVar2 + 0x80008;
    uVar4 = (uVar1 + local_44) * 2 + iVar3 >> 3;
    uVar5 = (local_48 + uVar2) * 2 + iVar3 >> 3;
    if (param_1 != (undefined1 *)0x0) {
      local_48 = uVar4 + local_48;
      uVar6 = uVar5 + uVar1;
      FUN_0075a2dc(param_1[local_4c * 2 + -1],local_48 >> 1 & 0xff,local_48 >> 0x11 & 0xff,
                   param_7 + local_4c * 8 + -4);
      FUN_0075a2dc(param_1[local_4c * 2],uVar6 >> 1 & 0xff,uVar6 >> 0x11 & 0xff,
                   param_7 + local_4c * 8);
    }
    if (param_2 != (undefined1 *)0x0) {
      uVar5 = uVar5 + local_44;
      uVar4 = uVar4 + uVar2;
      FUN_0075a2dc(param_2[local_4c * 2 + -1],uVar5 >> 1 & 0xff,uVar5 >> 0x11 & 0xff,
                   param_8 + local_4c * 8 + -4);
      FUN_0075a2dc(param_2[local_4c * 2],uVar4 >> 1 & 0xff,uVar4 >> 0x11 & 0xff,
                   param_8 + local_4c * 8);
    }
    local_48 = uVar1;
    local_44 = uVar2;
  }
  if ((param_9 & 1) == 0) {
    if (param_1 != (undefined1 *)0x0) {
      uVar1 = local_48 * 3 + local_44 + 0x20002;
      FUN_0075a2dc(param_1[param_9 - 1],uVar1 >> 2 & 0xff,uVar1 >> 0x12 & 0xff,
                   param_7 + (param_9 - 1) * 4);
    }
    if (param_2 != (undefined1 *)0x0) {
      uVar1 = local_44 * 3 + local_48 + 0x20002;
      FUN_0075a2dc(param_2[param_9 - 1],uVar1 >> 2 & 0xff,uVar1 >> 0x12 & 0xff,
                   param_8 + (param_9 - 1) * 4);
    }
  }
  return;
}

// ---- FUN_0075b368  @ 0x75b368
void FUN_0075b368(undefined1 *param_1,undefined1 *param_2,byte *param_3,byte *param_4,byte *param_5,
                 byte *param_6,int param_7,int param_8,uint param_9)

{
  uint uVar1;
  uint uVar2;
  int iVar3;
  uint uVar4;
  uint uVar5;
  uint uVar6;
  int local_4c;
  uint local_48;
  uint local_44;
  
  local_48 = (uint)*param_4 << 0x10 | (uint)*param_3;
  local_44 = (uint)*param_6 << 0x10 | (uint)*param_5;
  if (param_1 != (undefined1 *)0x0) {
    uVar1 = local_48 * 3 + local_44 + 0x20002;
    FUN_0075a318(*param_1,uVar1 >> 2 & 0xff,uVar1 >> 0x12 & 0xff,param_7);
  }
  if (param_2 != (undefined1 *)0x0) {
    uVar1 = local_44 * 3 + local_48 + 0x20002;
    FUN_0075a318(*param_2,uVar1 >> 2 & 0xff,uVar1 >> 0x12 & 0xff,param_8);
  }
  for (local_4c = 1; local_4c <= (int)(param_9 - 1) >> 1; local_4c = local_4c + 1) {
    uVar1 = (uint)param_4[local_4c] << 0x10 | (uint)param_3[local_4c];
    uVar2 = (uint)param_6[local_4c] << 0x10 | (uint)param_5[local_4c];
    iVar3 = local_48 + uVar1 + local_44 + uVar2 + 0x80008;
    uVar4 = (uVar1 + local_44) * 2 + iVar3 >> 3;
    uVar5 = (local_48 + uVar2) * 2 + iVar3 >> 3;
    if (param_1 != (undefined1 *)0x0) {
      local_48 = uVar4 + local_48;
      uVar6 = uVar5 + uVar1;
      FUN_0075a318(param_1[local_4c * 2 + -1],local_48 >> 1 & 0xff,local_48 >> 0x11 & 0xff,
                   param_7 + local_4c * 4 + -2);
      FUN_0075a318(param_1[local_4c * 2],uVar6 >> 1 & 0xff,uVar6 >> 0x11 & 0xff,
                   param_7 + local_4c * 4);
    }
    if (param_2 != (undefined1 *)0x0) {
      uVar5 = uVar5 + local_44;
      uVar4 = uVar4 + uVar2;
      FUN_0075a318(param_2[local_4c * 2 + -1],uVar5 >> 1 & 0xff,uVar5 >> 0x11 & 0xff,
                   param_8 + local_4c * 4 + -2);
      FUN_0075a318(param_2[local_4c * 2],uVar4 >> 1 & 0xff,uVar4 >> 0x11 & 0xff,
                   param_8 + local_4c * 4);
    }
    local_48 = uVar1;
    local_44 = uVar2;
  }
  if ((param_9 & 1) == 0) {
    if (param_1 != (undefined1 *)0x0) {
      uVar1 = local_48 * 3 + local_44 + 0x20002;
      FUN_0075a318(param_1[param_9 - 1],uVar1 >> 2 & 0xff,uVar1 >> 0x12 & 0xff,
                   param_7 + (param_9 - 1) * 2);
    }
    if (param_2 != (undefined1 *)0x0) {
      uVar1 = local_44 * 3 + local_48 + 0x20002;
      FUN_0075a318(param_2[param_9 - 1],uVar1 >> 2 & 0xff,uVar1 >> 0x12 & 0xff,
                   param_8 + (param_9 - 1) * 2);
    }
  }
  return;
}

// ---- FUN_0075b62c  @ 0x75b62c
void FUN_0075b62c(undefined1 *param_1,undefined1 *param_2,byte *param_3,byte *param_4,byte *param_5,
                 byte *param_6,int param_7,int param_8,uint param_9)

{
  uint uVar1;
  uint uVar2;
  int iVar3;
  uint uVar4;
  uint uVar5;
  uint uVar6;
  int local_4c;
  uint local_48;
  uint local_44;
  
  local_48 = (uint)*param_4 << 0x10 | (uint)*param_3;
  local_44 = (uint)*param_6 << 0x10 | (uint)*param_5;
  if (param_1 != (undefined1 *)0x0) {
    uVar1 = local_48 * 3 + local_44 + 0x20002;
    FUN_0075a1dc(*param_1,uVar1 >> 2 & 0xff,uVar1 >> 0x12 & 0xff,param_7);
  }
  if (param_2 != (undefined1 *)0x0) {
    uVar1 = local_44 * 3 + local_48 + 0x20002;
    FUN_0075a1dc(*param_2,uVar1 >> 2 & 0xff,uVar1 >> 0x12 & 0xff,param_8);
  }
  for (local_4c = 1; local_4c <= (int)(param_9 - 1) >> 1; local_4c = local_4c + 1) {
    uVar1 = (uint)param_4[local_4c] << 0x10 | (uint)param_3[local_4c];
    uVar2 = (uint)param_6[local_4c] << 0x10 | (uint)param_5[local_4c];
    iVar3 = local_48 + uVar1 + local_44 + uVar2 + 0x80008;
    uVar4 = (uVar1 + local_44) * 2 + iVar3 >> 3;
    uVar5 = (local_48 + uVar2) * 2 + iVar3 >> 3;
    if (param_1 != (undefined1 *)0x0) {
      local_48 = uVar4 + local_48;
      uVar6 = uVar5 + uVar1;
      FUN_0075a1dc(param_1[local_4c * 2 + -1],local_48 >> 1 & 0xff,local_48 >> 0x11 & 0xff,
                   param_7 + local_4c * 4 + -2);
      FUN_0075a1dc(param_1[local_4c * 2],uVar6 >> 1 & 0xff,uVar6 >> 0x11 & 0xff,
                   param_7 + local_4c * 4);
    }
    if (param_2 != (undefined1 *)0x0) {
      uVar5 = uVar5 + local_44;
      uVar4 = uVar4 + uVar2;
      FUN_0075a1dc(param_2[local_4c * 2 + -1],uVar5 >> 1 & 0xff,uVar5 >> 0x11 & 0xff,
                   param_8 + local_4c * 4 + -2);
      FUN_0075a1dc(param_2[local_4c * 2],uVar4 >> 1 & 0xff,uVar4 >> 0x11 & 0xff,
                   param_8 + local_4c * 4);
    }
    local_48 = uVar1;
    local_44 = uVar2;
  }
  if ((param_9 & 1) == 0) {
    if (param_1 != (undefined1 *)0x0) {
      uVar1 = local_48 * 3 + local_44 + 0x20002;
      FUN_0075a1dc(param_1[param_9 - 1],uVar1 >> 2 & 0xff,uVar1 >> 0x12 & 0xff,
                   param_7 + (param_9 - 1) * 2);
    }
    if (param_2 != (undefined1 *)0x0) {
      uVar1 = local_44 * 3 + local_48 + 0x20002;
      FUN_0075a1dc(param_2[param_9 - 1],uVar1 >> 2 & 0xff,uVar1 >> 0x12 & 0xff,
                   param_8 + (param_9 - 1) * 2);
    }
  }
  return;
}

// ---- FUN_0075b8f0  @ 0x75b8f0
void FUN_0075b8f0(undefined1 *param_1,undefined1 *param_2,undefined1 *param_3,undefined1 *param_4,
                 int param_5,int param_6,int param_7)

{
  undefined1 *local_20;
  undefined1 *local_1c;
  undefined1 *local_18;
  undefined1 *local_14;
  int local_c;
  
  local_20 = param_4;
  local_1c = param_3;
  local_18 = param_2;
  local_14 = param_1;
  for (local_c = 0; local_c < param_7 + -1; local_c = local_c + 2) {
    FUN_0075a11c(*local_14,*local_1c,*local_20,param_5);
    FUN_0075a11c(local_14[1],*local_1c,*local_20,param_5 + 3);
    FUN_0075a11c(*local_18,*local_1c,*local_20,param_6);
    FUN_0075a11c(local_18[1],*local_1c,*local_20,param_6 + 3);
    local_14 = local_14 + 2;
    local_18 = local_18 + 2;
    local_1c = local_1c + 1;
    local_20 = local_20 + 1;
    param_5 = param_5 + 6;
    param_6 = param_6 + 6;
  }
  if (param_7 + -1 == local_c) {
    FUN_0075a11c(*local_14,*local_1c,*local_20,param_5);
    FUN_0075a11c(*local_18,*local_1c,*local_20,param_6);
  }
  return;
}

// ---- FUN_0075b9ec  @ 0x75b9ec
void FUN_0075b9ec(undefined1 *param_1,undefined1 *param_2,undefined1 *param_3,undefined1 *param_4,
                 int param_5,int param_6,int param_7)

{
  undefined1 *local_20;
  undefined1 *local_1c;
  undefined1 *local_18;
  undefined1 *local_14;
  int local_c;
  
  local_20 = param_4;
  local_1c = param_3;
  local_18 = param_2;
  local_14 = param_1;
  for (local_c = 0; local_c < param_7 + -1; local_c = local_c + 2) {
    FUN_0075a3ec(*local_14,*local_1c,*local_20,param_5);
    FUN_0075a3ec(local_14[1],*local_1c,*local_20,param_5 + 3);
    FUN_0075a3ec(*local_18,*local_1c,*local_20,param_6);
    FUN_0075a3ec(local_18[1],*local_1c,*local_20,param_6 + 3);
    local_14 = local_14 + 2;
    local_18 = local_18 + 2;
    local_1c = local_1c + 1;
    local_20 = local_20 + 1;
    param_5 = param_5 + 6;
    param_6 = param_6 + 6;
  }
  if (param_7 + -1 == local_c) {
    FUN_0075a3ec(*local_14,*local_1c,*local_20,param_5);
    FUN_0075a3ec(*local_18,*local_1c,*local_20,param_6);
  }
  return;
}

// ---- FUN_0075bae8  @ 0x75bae8
void FUN_0075bae8(undefined1 *param_1,undefined1 *param_2,undefined1 *param_3,undefined1 *param_4,
                 int param_5,int param_6,int param_7)

{
  undefined1 *local_20;
  undefined1 *local_1c;
  undefined1 *local_18;
  undefined1 *local_14;
  int local_c;
  
  local_20 = param_4;
  local_1c = param_3;
  local_18 = param_2;
  local_14 = param_1;
  for (local_c = 0; local_c < param_7 + -1; local_c = local_c + 2) {
    FUN_0075a4ec(*local_14,*local_1c,*local_20,param_5);
    FUN_0075a4ec(local_14[1],*local_1c,*local_20,param_5 + 4);
    FUN_0075a4ec(*local_18,*local_1c,*local_20,param_6);
    FUN_0075a4ec(local_18[1],*local_1c,*local_20,param_6 + 4);
    local_14 = local_14 + 2;
    local_18 = local_18 + 2;
    local_1c = local_1c + 1;
    local_20 = local_20 + 1;
    param_5 = param_5 + 8;
    param_6 = param_6 + 8;
  }
  if (param_7 + -1 == local_c) {
    FUN_0075a4ec(*local_14,*local_1c,*local_20,param_5);
    FUN_0075a4ec(*local_18,*local_1c,*local_20,param_6);
  }
  return;
}

// ---- FUN_0075bbe4  @ 0x75bbe4
void FUN_0075bbe4(undefined1 *param_1,undefined1 *param_2,undefined1 *param_3,undefined1 *param_4,
                 int param_5,int param_6,int param_7)

{
  undefined1 *local_20;
  undefined1 *local_1c;
  undefined1 *local_18;
  undefined1 *local_14;
  int local_c;
  
  local_20 = param_4;
  local_1c = param_3;
  local_18 = param_2;
  local_14 = param_1;
  for (local_c = 0; local_c < param_7 + -1; local_c = local_c + 2) {
    FUN_0075a4ac(*local_14,*local_1c,*local_20,param_5);
    FUN_0075a4ac(local_14[1],*local_1c,*local_20,param_5 + 4);
    FUN_0075a4ac(*local_18,*local_1c,*local_20,param_6);
    FUN_0075a4ac(local_18[1],*local_1c,*local_20,param_6 + 4);
    local_14 = local_14 + 2;
    local_18 = local_18 + 2;
    local_1c = local_1c + 1;
    local_20 = local_20 + 1;
    param_5 = param_5 + 8;
    param_6 = param_6 + 8;
  }
  if (param_7 + -1 == local_c) {
    FUN_0075a4ac(*local_14,*local_1c,*local_20,param_5);
    FUN_0075a4ac(*local_18,*local_1c,*local_20,param_6);
  }
  return;
}

// ---- FUN_0075bce0  @ 0x75bce0
void FUN_0075bce0(undefined1 *param_1,undefined1 *param_2,undefined1 *param_3,undefined1 *param_4,
                 int param_5,int param_6,int param_7)

{
  undefined1 *local_20;
  undefined1 *local_1c;
  undefined1 *local_18;
  undefined1 *local_14;
  int local_c;
  
  local_20 = param_4;
  local_1c = param_3;
  local_18 = param_2;
  local_14 = param_1;
  for (local_c = 0; local_c < param_7 + -1; local_c = local_c + 2) {
    FUN_0075a2dc(*local_14,*local_1c,*local_20,param_5);
    FUN_0075a2dc(local_14[1],*local_1c,*local_20,param_5 + 4);
    FUN_0075a2dc(*local_18,*local_1c,*local_20,param_6);
    FUN_0075a2dc(local_18[1],*local_1c,*local_20,param_6 + 4);
    local_14 = local_14 + 2;
    local_18 = local_18 + 2;
    local_1c = local_1c + 1;
    local_20 = local_20 + 1;
    param_5 = param_5 + 8;
    param_6 = param_6 + 8;
  }
  if (param_7 + -1 == local_c) {
    FUN_0075a2dc(*local_14,*local_1c,*local_20,param_5);
    FUN_0075a2dc(*local_18,*local_1c,*local_20,param_6);
  }
  return;
}

// ---- FUN_0075bddc  @ 0x75bddc
void FUN_0075bddc(undefined1 *param_1,undefined1 *param_2,undefined1 *param_3,undefined1 *param_4,
                 int param_5,int param_6,int param_7)

{
  undefined1 *local_20;
  undefined1 *local_1c;
  undefined1 *local_18;
  undefined1 *local_14;
  int local_c;
  
  local_20 = param_4;
  local_1c = param_3;
  local_18 = param_2;
  local_14 = param_1;
  for (local_c = 0; local_c < param_7 + -1; local_c = local_c + 2) {
    FUN_0075a318(*local_14,*local_1c,*local_20,param_5);
    FUN_0075a318(local_14[1],*local_1c,*local_20,param_5 + 2);
    FUN_0075a318(*local_18,*local_1c,*local_20,param_6);
    FUN_0075a318(local_18[1],*local_1c,*local_20,param_6 + 2);
    local_14 = local_14 + 2;
    local_18 = local_18 + 2;
    local_1c = local_1c + 1;
    local_20 = local_20 + 1;
    param_5 = param_5 + 4;
    param_6 = param_6 + 4;
  }
  if (param_7 + -1 == local_c) {
    FUN_0075a318(*local_14,*local_1c,*local_20,param_5);
    FUN_0075a318(*local_18,*local_1c,*local_20,param_6);
  }
  return;
}

// ---- FUN_0075bed8  @ 0x75bed8
void FUN_0075bed8(undefined1 *param_1,undefined1 *param_2,undefined1 *param_3,undefined1 *param_4,
                 int param_5,int param_6,int param_7)

{
  undefined1 *local_20;
  undefined1 *local_1c;
  undefined1 *local_18;
  undefined1 *local_14;
  int local_c;
  
  local_20 = param_4;
  local_1c = param_3;
  local_18 = param_2;
  local_14 = param_1;
  for (local_c = 0; local_c < param_7 + -1; local_c = local_c + 2) {
    FUN_0075a1dc(*local_14,*local_1c,*local_20,param_5);
    FUN_0075a1dc(local_14[1],*local_1c,*local_20,param_5 + 2);
    FUN_0075a1dc(*local_18,*local_1c,*local_20,param_6);
    FUN_0075a1dc(local_18[1],*local_1c,*local_20,param_6 + 2);
    local_14 = local_14 + 2;
    local_18 = local_18 + 2;
    local_1c = local_1c + 1;
    local_20 = local_20 + 1;
    param_5 = param_5 + 4;
    param_6 = param_6 + 4;
  }
  if (param_7 + -1 == local_c) {
    FUN_0075a1dc(*local_14,*local_1c,*local_20,param_5);
    FUN_0075a1dc(*local_18,*local_1c,*local_20,param_6);
  }
  return;
}

// ---- FUN_0075c00c  @ 0x75c00c
void FUN_0075c00c(int param_1,int param_2,int param_3,int param_4,int param_5)

{
  undefined4 local_c;
  
  for (local_c = 0; local_c < param_5; local_c = local_c + 1) {
    FUN_0075a11c(*(undefined1 *)(param_1 + local_c),*(undefined1 *)(param_2 + local_c),
                 *(undefined1 *)(param_3 + local_c),param_4 + local_c * 3);
  }
  return;
}

// ---- FUN_0075c060  @ 0x75c060
void FUN_0075c060(int param_1,int param_2,int param_3,int param_4,int param_5)

{
  undefined4 local_c;
  
  for (local_c = 0; local_c < param_5; local_c = local_c + 1) {
    FUN_0075a3ec(*(undefined1 *)(param_1 + local_c),*(undefined1 *)(param_2 + local_c),
                 *(undefined1 *)(param_3 + local_c),param_4 + local_c * 3);
  }
  return;
}

// ---- FUN_0075c0b4  @ 0x75c0b4
void FUN_0075c0b4(int param_1,int param_2,int param_3,int param_4,int param_5)

{
  undefined4 local_c;
  
  for (local_c = 0; local_c < param_5; local_c = local_c + 1) {
    FUN_0075a4ec(*(undefined1 *)(param_1 + local_c),*(undefined1 *)(param_2 + local_c),
                 *(undefined1 *)(param_3 + local_c),param_4 + local_c * 4);
  }
  return;
}

// ---- FUN_0075c104  @ 0x75c104
void FUN_0075c104(int param_1,int param_2,int param_3,int param_4,int param_5)

{
  undefined4 local_c;
  
  for (local_c = 0; local_c < param_5; local_c = local_c + 1) {
    FUN_0075a4ac(*(undefined1 *)(param_1 + local_c),*(undefined1 *)(param_2 + local_c),
                 *(undefined1 *)(param_3 + local_c),param_4 + local_c * 4);
  }
  return;
}

// ---- FUN_0075c154  @ 0x75c154
void FUN_0075c154(int param_1,int param_2,int param_3,int param_4,int param_5)

{
  undefined4 local_c;
  
  for (local_c = 0; local_c < param_5; local_c = local_c + 1) {
    FUN_0075a2dc(*(undefined1 *)(param_1 + local_c),*(undefined1 *)(param_2 + local_c),
                 *(undefined1 *)(param_3 + local_c),param_4 + local_c * 4);
  }
  return;
}

// ---- FUN_0075c1a4  @ 0x75c1a4
void FUN_0075c1a4(int param_1,int param_2,int param_3,int param_4,int param_5)

{
  undefined4 local_c;
  
  for (local_c = 0; local_c < param_5; local_c = local_c + 1) {
    FUN_0075a318(*(undefined1 *)(param_1 + local_c),*(undefined1 *)(param_2 + local_c),
                 *(undefined1 *)(param_3 + local_c),param_4 + local_c * 2);
  }
  return;
}

// ---- FUN_0075c1f4  @ 0x75c1f4
void FUN_0075c1f4(int param_1,int param_2,int param_3,int param_4,int param_5)

{
  undefined4 local_c;
  
  for (local_c = 0; local_c < param_5; local_c = local_c + 1) {
    FUN_0075a1dc(*(undefined1 *)(param_1 + local_c),*(undefined1 *)(param_2 + local_c),
                 *(undefined1 *)(param_3 + local_c),param_4 + local_c * 2);
  }
  return;
}

// ---- FUN_0075c244  @ 0x75c244
void FUN_0075c244(int param_1,int param_2,int param_3,int param_4,int param_5)

{
  bool bVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  uint uVar5;
  int local_28;
  int local_1c;
  int local_14;
  
  local_28 = param_4;
  local_1c = param_1;
  while (bVar1 = 0 < local_28, local_28 = local_28 + -1, bVar1) {
    iVar3 = local_1c + (uint)(param_2 != 0);
    if (param_2 == 0) {
      iVar4 = 3;
    }
    else {
      iVar4 = 0;
    }
    for (local_14 = 0; local_14 < param_3; local_14 = local_14 + 1) {
      uVar5 = (uint)*(byte *)(local_1c + iVar4 + local_14 * 4);
      if (uVar5 != 0xff) {
        iVar2 = uVar5 * 0x8081;
        *(char *)(iVar3 + local_14 * 4) =
             (char)(iVar2 * (uint)*(byte *)(iVar3 + local_14 * 4) >> 0x17);
        *(char *)(iVar3 + local_14 * 4 + 1) =
             (char)(iVar2 * (uint)*(byte *)(iVar3 + local_14 * 4 + 1) >> 0x17);
        *(char *)(iVar3 + local_14 * 4 + 2) =
             (char)(iVar2 * (uint)*(byte *)(iVar3 + local_14 * 4 + 2) >> 0x17);
      }
    }
    local_1c = local_1c + param_5;
  }
  return;
}

// ---- FUN_0075c35c  @ 0x75c35c
byte FUN_0075c35c(byte param_1)

{
  return param_1 >> 4 | param_1 & 0xf0;
}

// ---- FUN_0075c388  @ 0x75c388
byte FUN_0075c388(byte param_1)

{
  return param_1 << 4 | param_1 & 0xf;
}

// ---- FUN_0075c3b0  @ 0x75c3b0
uint FUN_0075c3b0(byte param_1,int param_2)

{
  return param_2 * (uint)param_1 >> 0x10 & 0xff;
}

// ---- FUN_0075c3d0  @ 0x75c3d0
void FUN_0075c3d0(int param_1,int param_2,int param_3,int param_4)

{
  bool bVar1;
  int iVar2;
  byte bVar3;
  byte bVar4;
  byte bVar5;
  undefined4 uVar6;
  byte bVar7;
  undefined4 local_24;
  undefined4 local_1c;
  undefined4 local_10;
  
  local_24 = param_3;
  local_1c = param_1;
  while (bVar1 = 0 < local_24, local_24 = local_24 + -1, bVar1) {
    for (local_10 = 0; local_10 < param_2; local_10 = local_10 + 1) {
      bVar7 = *(byte *)(local_1c + local_10 * 2 + 1) & 0xf;
      iVar2 = (uint)bVar7 * 0x1111;
      uVar6 = FUN_0075c35c(*(undefined1 *)(local_1c + local_10 * 2));
      bVar3 = FUN_0075c3b0(uVar6,iVar2);
      uVar6 = FUN_0075c388(*(undefined1 *)(local_1c + local_10 * 2));
      bVar4 = FUN_0075c3b0(uVar6,iVar2);
      uVar6 = FUN_0075c35c(*(undefined1 *)(local_1c + local_10 * 2 + 1));
      bVar5 = FUN_0075c3b0(uVar6,iVar2);
      *(byte *)(local_1c + local_10 * 2) = bVar4 >> 4 | bVar3 & 0xf0;
      *(byte *)(local_1c + local_10 * 2 + 1) = bVar7 | bVar5 & 0xf0;
    }
    local_1c = local_1c + param_4;
  }
  return;
}

// ---- FUN_0075c600  @ 0x75c600
uint FUN_0075c600(uint param_1,uint param_2)

{
  if ((int)param_1 < 0) {
    param_2 = 0;
  }
  else {
    if ((int)param_1 < (int)param_2) {
      param_2 = param_1;
    }
    param_2 = param_2 & 0xff;
  }
  return param_2;
}

// ---- FUN_0075c78c  @ 0x75c78c
undefined4 FUN_0075c78c(undefined4 param_1)

{
  undefined4 uVar1;
  
  uVar1 = WebPConfigInitInternal(param_1,0,0x42960000,0x200);
  return uVar1;
}

// ---- FUN_0075c7b0  @ 0x75c7b0
undefined4 FUN_0075c7b0(undefined4 param_1)

{
  undefined4 uVar1;
  
  uVar1 = WebPPictureInitInternal(param_1,0x200);
  return uVar1;
}

// ---- FUN_0075c7c8  @ 0x75c7c8
undefined4 FUN_0075c7c8(int param_1)

{
  return *(undefined4 *)(param_1 + 0x10);
}

// ---- FUN_0075c7d8  @ 0x75c7d8
undefined4 FUN_0075c7d8(int param_1)

{
  return *(undefined4 *)(param_1 + 0x14);
}

// ---- FUN_0075c7e8  @ 0x75c7e8
uint FUN_0075c7e8(int param_1)

{
  return *(int *)(param_1 + 4) + 7U >> 3;
}

// ---- FUN_0075c800  @ 0x75c800
undefined4 FUN_0075c800(undefined4 *param_1)

{
  return *param_1;
}

// ---- FUN_0075c810  @ 0x75c810
undefined4
FUN_0075c810(int param_1,int param_2,int param_3,undefined4 param_4,int param_5,undefined4 param_6)

{
  bool bVar1;
  int iVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  uint in_fpscr;
  float fVar5;
  int local_150;
  int local_14c;
  int local_148;
  int local_144;
  undefined1 auStack_134 [16];
  undefined4 local_124;
  float local_120;
  undefined4 local_11c;
  undefined4 local_b4 [2];
  int local_ac;
  int local_a8;
  int local_80;
  int local_7c;
  undefined4 local_5c;
  
  FUN_0075c7b0(local_b4);
  local_b4[0] = 1;
  local_5c = param_6;
  local_ac = param_2;
  local_a8 = param_3;
  iVar2 = WebPPictureAlloc(local_b4);
  if (iVar2 == 0) {
    uVar4 = 0;
  }
  else {
    local_148 = local_80;
    local_144 = param_1;
    for (local_14c = 0; local_14c < local_a8; local_14c = local_14c + 1) {
      for (local_150 = 0; local_150 < local_ac; local_150 = local_150 + 1) {
        *(uint *)(local_148 + local_150 * 4) =
             (uint)*(byte *)(local_144 + local_150) << 8 | 0xff000000;
      }
      local_144 = local_144 + param_2;
      local_148 = local_148 + local_7c * 4;
    }
    FUN_0075c78c(&local_124);
    local_124 = 1;
    fVar5 = (float)VectorSignedToFloat(param_4,(byte)(in_fpscr >> 0x16) & 3);
    local_120 = fVar5 * 15.0 + 10.0;
    if (100.0 < local_120) {
      local_120 = 100.0;
    }
    local_11c = param_4;
    iVar2 = VP8LBitWriterInit(auStack_134,param_3 * param_2 >> 3);
    if ((iVar2 == 0) || (iVar2 = VP8LEncodeStream(&local_124,local_b4,auStack_134), iVar2 != 0)) {
      bVar1 = false;
    }
    else {
      bVar1 = true;
    }
    WebPPictureFree(local_b4);
    if (bVar1) {
      uVar4 = FUN_0075c800(auStack_134);
      uVar3 = FUN_0075c7e8(auStack_134);
      VP8BitWriterAppend(param_5,uVar4,uVar3);
    }
    VP8LBitWriterDestroy(auStack_134);
    if ((bVar1) && (*(int *)(param_5 + 0x1c) == 0)) {
      uVar4 = 1;
    }
    else {
      uVar4 = 0;
    }
  }
  return uVar4;
}

// ---- FUN_0075c9fc  @ 0x75c9fc
undefined4
FUN_0075c9fc(undefined4 param_1,uint param_2,uint param_3,int param_4,uint param_5,int param_6,
            undefined4 param_7,undefined4 param_8,int param_9,undefined4 param_10)

{
  int iVar1;
  byte local_2d;
  undefined4 local_2c;
  undefined4 local_28;
  uint local_24;
  uint local_20;
  code *local_1c;
  
  local_2c = 0;
  local_24 = param_3 * param_2;
  if ((uint)((ulonglong)param_2 * (ulonglong)param_3) != local_24 ||
      param_2 * ((int)param_3 >> 0x1f) + param_3 * ((int)param_2 >> 0x1f) +
      (int)((ulonglong)param_2 * (ulonglong)param_3 >> 0x20) != 0) {
    __assert2("../libwebp/src/enc/alpha.c",0x72,"EncodeAlphaInternal",
              "(uint64_t)data_size == (uint64_t)width * height");
  }
  if (((int)param_5 < 0) || (3 < (int)param_5)) {
    __assert2("../libwebp/src/enc/alpha.c",0x73,"EncodeAlphaInternal",
              "filter >= 0 && filter < WEBP_FILTER_LAST");
  }
  if (param_4 < 0) {
    __assert2("../libwebp/src/enc/alpha.c",0x74,"EncodeAlphaInternal",
              "method >= ALPHA_NO_COMPRESSION");
  }
  if (1 < param_4) {
    __assert2("../libwebp/src/enc/alpha.c",0x75,"EncodeAlphaInternal",
              "method <= ALPHA_LOSSLESS_COMPRESSION");
  }
  if (param_4 == 0) {
    local_20 = local_24 + 1;
  }
  else {
    local_20 = local_24 >> 5;
  }
  local_2d = (byte)param_4 | (byte)((param_5 & 0x3f) << 2);
  if (param_6 != 0) {
    local_2d = local_2d | 0x10;
  }
  VP8BitWriterInit(param_9,local_20);
  VP8BitWriterAppend(param_9,&local_2d,1);
  local_1c = *(code **)(WebPFilters + param_5 * 4);
  local_28 = param_1;
  if (local_1c != (code *)0x0) {
    (*local_1c)(param_1,param_2,param_3,1,param_2,param_8);
    local_28 = param_8;
  }
  if (param_4 == 0) {
    iVar1 = VP8BitWriterAppend(param_9,local_28,param_3 * param_2);
    if ((iVar1 == 0) || (*(int *)(param_9 + 0x1c) != 0)) {
      local_2c = 0;
    }
    else {
      local_2c = 1;
    }
  }
  else {
    local_2c = FUN_0075c810(local_28,param_2,param_3,param_7,param_9,param_10);
    VP8BitWriterFinish(param_9);
  }
  return local_2c;
}

// ---- FUN_0075cbec  @ 0x75cbec
void FUN_0075cbec(void *param_1,int param_2,void *param_3,int param_4,size_t param_5,int param_6)

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

// ---- FUN_0075cc38  @ 0x75cc38
uint FUN_0075cc38(int param_1,int param_2,int param_3,int param_4,undefined4 param_5,
                 undefined4 *param_6,int *param_7)

{
  bool bVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  undefined4 uVar8;
  void *__ptr;
  uint uVar9;
  undefined4 uVar10;
  int iVar11;
  uint uVar12;
  uint uVar13;
  size_t __size;
  int iVar14;
  int local_180;
  uint local_170;
  int local_16c;
  void *local_168;
  uint local_164;
  undefined4 local_140;
  undefined4 uStack_13c;
  undefined4 local_134;
  undefined4 uStack_130;
  undefined4 uStack_12c;
  undefined4 uStack_128;
  undefined4 local_124;
  undefined4 uStack_120;
  undefined4 uStack_11c;
  undefined4 uStack_118;
  undefined4 local_114;
  undefined4 uStack_110;
  undefined4 uStack_10c;
  undefined4 uStack_108;
  undefined4 local_104;
  undefined4 uStack_100;
  undefined4 uStack_fc;
  undefined4 uStack_f8;
  undefined4 local_f4;
  undefined4 uStack_f0;
  undefined4 uStack_ec;
  undefined4 uStack_e8;
  undefined4 local_e4;
  undefined4 uStack_e0;
  undefined4 uStack_dc;
  undefined4 uStack_d8;
  undefined1 auStack_d4 [192];
  
  iVar11 = *(int *)(param_1 + 4);
  uVar12 = *(uint *)(iVar11 + 8);
  uVar13 = *(uint *)(iVar11 + 0xc);
  __size = uVar13 * uVar12;
  local_140 = 0;
  uStack_13c = 0;
  local_170 = 1;
  bVar1 = param_2 < 100;
  if ((size_t)((ulonglong)uVar12 * (ulonglong)uVar13) != __size ||
      uVar13 * ((int)uVar12 >> 0x1f) + uVar12 * ((int)uVar13 >> 0x1f) +
      (int)((ulonglong)uVar12 * (ulonglong)uVar13 >> 0x20) != 0) {
    __assert2("../libwebp/src/enc/alpha.c",0xaf,"EncodeAlpha",
              "(uint64_t)data_size == (uint64_t)width * height");
  }
  if (((param_1 == 0) || (iVar11 == 0)) || (*(int *)(iVar11 + 0x24) == 0)) {
    __assert2("../libwebp/src/enc/alpha.c",0xb0,"EncodeAlpha",
              "enc != NULL && pic != NULL && pic->a != NULL");
  }
  if ((param_6 == (undefined4 *)0x0) || (param_7 == (int *)0x0)) {
    __assert2("../libwebp/src/enc/alpha.c",0xb1,"EncodeAlpha",
              "output != NULL && output_size != NULL");
  }
  if (((int)uVar12 < 1) || ((int)uVar13 < 1)) {
    __assert2("../libwebp/src/enc/alpha.c",0xb2,"EncodeAlpha","width > 0 && height > 0");
  }
  if (*(int *)(iVar11 + 0x28) < (int)uVar12) {
    __assert2("../libwebp/src/enc/alpha.c",0xb3,"EncodeAlpha","pic->a_stride >= width");
  }
  if ((param_4 < 0) || (6 < param_4)) {
    __assert2("../libwebp/src/enc/alpha.c",0xb4,"EncodeAlpha",
              "filter >= WEBP_FILTER_NONE && filter <= WEBP_FILTER_FAST");
  }
  if ((param_2 < 0) || (100 < param_2)) {
    return 0;
  }
  if ((param_3 < 0) || (1 < param_3)) {
    return 0;
  }
  __ptr = malloc(__size);
  if (__ptr == (void *)0x0) {
    return 0;
  }
  FUN_0075cbec(*(undefined4 *)(iVar11 + 0x24),*(undefined4 *)(iVar11 + 0x28),__ptr,uVar12,uVar12,
               uVar13);
  if (bVar1) {
    if (param_2 < 0x47) {
      iVar14 = param_2 / 5 + 2;
    }
    else {
      iVar14 = (param_2 + -0x44) * 8;
    }
    local_170 = QuantizeLevels(__ptr,uVar12,uVar13,iVar14,&local_140);
  }
  if (local_170 != 0) {
    local_168 = (void *)0x0;
    local_170 = FUN_0075c9fc(__ptr,uVar12,uVar13,param_3,0,bVar1,param_5,0,&local_134,
                             *(undefined4 *)(iVar11 + 0x58));
    if (local_170 == 0) {
      VP8BitWriterWipeOut(&local_134);
    }
    else {
      local_180 = param_4;
      if (param_4 == 6) {
        local_180 = EstimateBestFilter(__ptr,uVar12,uVar13,uVar12);
      }
      if (local_180 != 0) {
        local_168 = malloc(__size);
        local_170 = (uint)(local_168 != (void *)0x0);
        if (local_170 == 0) goto LAB_0075d138;
        local_164 = FUN_0075c7d8(&local_134);
        memset(auStack_d4,0,0xbc);
        if (*(int *)(iVar11 + 0x58) != 0) {
          memcpy(auStack_d4,*(void **)(iVar11 + 0x58),0xbc);
        }
        for (local_16c = 1; (local_170 != 0 && (local_16c < 4)); local_16c = local_16c + 1) {
          if ((local_180 == 5) || (local_16c == local_180)) {
            local_170 = FUN_0075c9fc(__ptr,uVar12,uVar13,param_3,local_16c,bVar1,param_5,local_168,
                                     &local_114,*(undefined4 *)(iVar11 + 0x58));
            if (local_170 == 0) {
              VP8BitWriterWipeOut(&local_134);
            }
            else {
              uVar9 = FUN_0075c7d8(&local_114);
              uVar8 = uStack_f8;
              uVar7 = uStack_fc;
              uVar6 = uStack_100;
              uVar5 = local_104;
              uVar4 = uStack_108;
              uVar3 = uStack_10c;
              uVar2 = uStack_110;
              uVar10 = local_114;
              if (uVar9 < local_164) {
                local_f4 = local_114;
                uStack_f0 = uStack_110;
                uStack_ec = uStack_10c;
                uStack_e8 = uStack_108;
                local_e4 = local_104;
                uStack_e0 = uStack_100;
                uStack_dc = uStack_fc;
                uStack_d8 = uStack_f8;
                local_114 = local_134;
                uStack_110 = uStack_130;
                uStack_10c = uStack_12c;
                uStack_108 = uStack_128;
                local_104 = local_124;
                uStack_100 = uStack_120;
                uStack_fc = uStack_11c;
                uStack_f8 = uStack_118;
                local_134 = uVar10;
                uStack_130 = uVar2;
                uStack_12c = uVar3;
                uStack_128 = uVar4;
                local_124 = uVar5;
                uStack_120 = uVar6;
                uStack_11c = uVar7;
                uStack_118 = uVar8;
                local_164 = uVar9;
                if (*(int *)(iVar11 + 0x58) != 0) {
                  memcpy(auStack_d4,*(void **)(iVar11 + 0x58),0xbc);
                }
              }
            }
            VP8BitWriterWipeOut(&local_114);
          }
        }
        if (*(int *)(iVar11 + 0x58) != 0) {
          memcpy(*(void **)(iVar11 + 0x58),auStack_d4,0xbc);
        }
      }
      if (local_170 != 0) {
        iVar14 = FUN_0075c7d8(&local_134);
        *param_7 = iVar14;
        uVar10 = FUN_0075c7c8(&local_134);
        *param_6 = uVar10;
        if (*(int *)(iVar11 + 0x58) != 0) {
          **(int **)(iVar11 + 0x58) = **(int **)(iVar11 + 0x58) + *param_7;
          *(undefined4 *)(param_1 + 0x51c8) = local_140;
          *(undefined4 *)(param_1 + 0x51cc) = uStack_13c;
        }
      }
      free(local_168);
    }
  }
LAB_0075d138:
  free(__ptr);
  return local_170;
}

// ---- FUN_0075d2a0  @ 0x75d2a0
int FUN_0075d2a0(int param_1)

{
  if (param_1 < 0) {
    param_1 = -param_1;
  }
  return param_1;
}

// ---- FUN_0075d2b4  @ 0x75d2b4
undefined2 FUN_0075d2b4(int param_1,byte param_2)

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

// ---- FUN_0075d2f4  @ 0x75d2f4
int FUN_0075d2f4(int param_1)

{
  if (param_1 < 0) {
    param_1 = 0;
  }
  else if (0xfe < param_1) {
    param_1 = 0xff;
  }
  return param_1;
}

// ---- FUN_0075d314  @ 0x75d314
void FUN_0075d314(int param_1)

{
  void *__ptr;
  uint uVar1;
  uint uVar2;
  uint uVar3;
  uint *puVar4;
  uint local_50;
  int local_4c;
  int local_48;
  uint local_44;
  int local_28 [5];
  
  uVar1 = *(uint *)(param_1 + 0x28);
  uVar2 = *(uint *)(param_1 + 0x2c);
  __ptr = (void *)WebPSafeMalloc((int)((ulonglong)uVar1 * (ulonglong)uVar2),
                                 uVar2 * ((int)uVar1 >> 0x1f) + uVar1 * ((int)uVar2 >> 0x1f) +
                                 (int)((ulonglong)uVar1 * (ulonglong)uVar2 >> 0x20),1);
  if ((int)((ulonglong)uVar1 * (ulonglong)uVar2) != uVar2 * uVar1 ||
      uVar2 * ((int)uVar1 >> 0x1f) + uVar1 * ((int)uVar2 >> 0x1f) +
      (int)((ulonglong)uVar1 * (ulonglong)uVar2 >> 0x20) != (int)(uVar2 * uVar1) >> 0x1f) {
    __assert2("../libwebp/src/enc/analysis.c",0x28,"SmoothSegmentMap",
              "(uint64_t)(w * h) == (uint64_t)w * h");
  }
  if (__ptr != (void *)0x0) {
    for (local_48 = 1; local_48 < (int)(uVar2 - 1); local_48 = local_48 + 1) {
      for (local_4c = 1; local_4c < (int)(uVar1 - 1); local_4c = local_4c + 1) {
        local_28[0] = 0;
        local_28[1] = 0;
        local_28[2] = 0;
        local_28[3] = 0;
        puVar4 = (uint *)(*(int *)(param_1 + 0x5224) + (local_48 * uVar1 + local_4c) * 4);
        local_44 = (*puVar4 & 0x7f) >> 5;
        uVar3 = (puVar4[~uVar1] & 0x7f) >> 5;
        local_28[uVar3] = local_28[uVar3] + 1;
        uVar3 = (puVar4[-uVar1] & 0x7f) >> 5;
        local_28[uVar3] = local_28[uVar3] + 1;
        uVar3 = (puVar4[1 - uVar1] & 0x7f) >> 5;
        local_28[uVar3] = local_28[uVar3] + 1;
        uVar3 = (puVar4[-1] & 0x7f) >> 5;
        local_28[uVar3] = local_28[uVar3] + 1;
        uVar3 = (puVar4[1] & 0x7f) >> 5;
        local_28[uVar3] = local_28[uVar3] + 1;
        uVar3 = (puVar4[uVar1 - 1] & 0x7f) >> 5;
        local_28[uVar3] = local_28[uVar3] + 1;
        uVar3 = (puVar4[uVar1] & 0x7f) >> 5;
        local_28[uVar3] = local_28[uVar3] + 1;
        uVar3 = (puVar4[uVar1 + 1] & 0x7f) >> 5;
        local_28[uVar3] = local_28[uVar3] + 1;
        for (local_50 = 0; (int)local_50 < 4; local_50 = local_50 + 1) {
          if (4 < local_28[local_50]) {
            local_44 = local_50;
          }
        }
        *(char *)((int)__ptr + uVar1 * local_48 + local_4c) = (char)local_44;
      }
    }
    for (local_48 = 1; local_48 < (int)(uVar2 - 1); local_48 = local_48 + 1) {
      for (local_4c = 1; local_4c < (int)(uVar1 - 1); local_4c = local_4c + 1) {
        puVar4 = (uint *)(*(int *)(param_1 + 0x5224) + (local_48 * uVar1 + local_4c) * 4);
        *puVar4 = *puVar4 & 0xffffff9f |
                  (uint)(*(byte *)((int)__ptr + uVar1 * local_48 + local_4c) & 3) << 5;
      }
    }
    free(__ptr);
  }
  return;
}

// ---- FUN_0075d6c0  @ 0x75d6c0
undefined4 FUN_0075d6c0(int param_1,int param_2)

{
  undefined4 uVar1;
  
  param_2 = param_1 + param_2;
  if (param_2 == 0) {
    uVar1 = 0xff;
  }
  else {
    uVar1 = __divsi3(param_1 * 0xff + param_2 / 2,param_2);
  }
  return uVar1;
}

// ---- FUN_0075d708  @ 0x75d708
void FUN_0075d708(int param_1)

{
  int iVar1;
  int iVar2;
  int iVar3;
  char cVar4;
  undefined1 uVar5;
  int iVar6;
  int iVar7;
  int iVar8;
  int iVar9;
  int iVar10;
  int iVar11;
  int iVar12;
  int iVar13;
  int iVar14;
  uint uVar15;
  char *pcVar16;
  undefined4 uVar17;
  int local_34;
  int local_28 [5];
  
  local_28[0] = 0;
  local_28[1] = 0;
  local_28[2] = 0;
  local_28[3] = 0;
  for (local_34 = 0; iVar14 = *(int *)(param_1 + 0x2c) * *(int *)(param_1 + 0x28),
      iVar14 - local_34 != 0 && local_34 <= iVar14; local_34 = local_34 + 1) {
    uVar15 = (*(uint *)(*(int *)(param_1 + 0x5224) + local_34 * 4) & 0x7f) >> 5;
    local_28[uVar15] = local_28[uVar15] + 1;
  }
  if (*(int *)(*(int *)(param_1 + 4) + 0x58) != 0) {
    for (local_34 = 0; local_34 < 4; local_34 = local_34 + 1) {
      *(int *)(*(int *)(*(int *)(param_1 + 4) + 0x58) + (local_34 + 0x16) * 4 + 4) =
           local_28[local_34];
    }
  }
  if (*(int *)(param_1 + 0x18) < 2) {
    *(undefined4 *)(param_1 + 0x1c) = 0;
    *(undefined4 *)(param_1 + 0x20) = 0;
  }
  else {
    pcVar16 = (char *)(param_1 + 0xa00);
    cVar4 = FUN_0075d6c0(local_28[0] + local_28[1],local_28[2] + local_28[3]);
    *pcVar16 = cVar4;
    uVar5 = FUN_0075d6c0(local_28[0],local_28[1]);
    *(undefined1 *)(param_1 + 0xa01) = uVar5;
    uVar5 = FUN_0075d6c0(local_28[2],local_28[3]);
    iVar14 = local_28[0];
    *(undefined1 *)(param_1 + 0xa02) = uVar5;
    if (((*pcVar16 == -1) && (*(char *)(param_1 + 0xa01) == -1)) &&
       (*(char *)(param_1 + 0xa02) == -1)) {
      uVar17 = 0;
    }
    else {
      uVar17 = 1;
    }
    *(undefined4 *)(param_1 + 0x1c) = uVar17;
    iVar6 = FUN_0075d2b4(0,*pcVar16);
    iVar7 = FUN_0075d2b4(0,*(undefined1 *)(param_1 + 0xa01));
    iVar1 = local_28[1];
    iVar8 = FUN_0075d2b4(0,*pcVar16);
    iVar9 = FUN_0075d2b4(1,*(undefined1 *)(param_1 + 0xa01));
    iVar3 = local_28[3];
    iVar10 = FUN_0075d2b4(1,*pcVar16);
    iVar11 = FUN_0075d2b4(1,*(undefined1 *)(param_1 + 0xa02));
    iVar2 = local_28[2];
    iVar12 = FUN_0075d2b4(1,*pcVar16);
    iVar13 = FUN_0075d2b4(0,*(undefined1 *)(param_1 + 0xa02));
    *(int *)(param_1 + 0x20) =
         (iVar6 + iVar7) * iVar14 + (iVar8 + iVar9) * iVar1 +
         (iVar10 + iVar11) * iVar3 + (iVar12 + iVar13) * iVar2;
  }
  return;
}

// ---- FUN_0075d938  @ 0x75d938
int FUN_0075d938(int param_1,int param_2,int param_3)

{
  if ((param_2 <= param_1) && (param_2 = param_3, param_1 < param_3)) {
    param_2 = param_1;
  }
  return param_2;
}

// ---- FUN_0075d95c  @ 0x75d95c
void FUN_0075d95c(int param_1,int *param_2,int param_3)

{
  undefined4 uVar1;
  undefined4 uVar2;
  int iVar3;
  int local_20;
  int local_1c;
  int local_18;
  
  iVar3 = *(int *)(param_1 + 0x18);
  local_20 = *param_2;
  local_1c = *param_2;
  if (1 < iVar3) {
    for (local_18 = 0; local_18 < iVar3; local_18 = local_18 + 1) {
      if (param_2[local_18] < local_20) {
        local_20 = param_2[local_18];
      }
      if (local_1c < param_2[local_18]) {
        local_1c = param_2[local_18];
      }
    }
  }
  if (local_1c == local_20) {
    local_1c = local_20 + 1;
  }
  if ((local_1c < param_3) || (param_3 < local_20)) {
    __assert2("../libwebp/src/enc/analysis.c",0x87,"SetSegmentAlphas","mid <= max && mid >= min");
  }
  for (local_18 = 0; local_18 < iVar3; local_18 = local_18 + 1) {
    uVar1 = __divsi3((param_2[local_18] - param_3) * 0xff,local_1c - local_20);
    uVar2 = __divsi3((param_2[local_18] - local_20) * 0xff,local_1c - local_20);
    uVar1 = FUN_0075d938(uVar1,0xffffff81,0x7f);
    *(undefined4 *)(param_1 + local_18 * 0x214 + 0x374) = uVar1;
    uVar1 = FUN_0075d938(uVar2,0,0xff);
    *(undefined4 *)(param_1 + local_18 * 0x214 + 0x378) = uVar1;
  }
  return;
}

// ---- FUN_0075dad4  @ 0x75dad4
void FUN_0075dad4(int *param_1,int param_2)

{
  uint uVar1;
  uint uVar2;
  int iVar3;
  int iVar4;
  uint *puVar5;
  int iVar6;
  int local_470;
  int local_46c;
  uint local_468;
  int local_464;
  int local_460;
  int local_45c;
  int aiStack_438 [4];
  int aiStack_428 [4];
  int aiStack_418 [4];
  uint auStack_408 [256];
  
  iVar6 = param_1[6];
  local_470 = 0;
  for (local_468 = 0;
      (uVar1 = local_468, (int)local_468 < 0x100 && (*(int *)(param_2 + local_468 * 4) == 0));
      local_468 = local_468 + 1) {
  }
  for (local_468 = 0xff;
      (uVar2 = local_468, (int)uVar1 < (int)local_468 && (*(int *)(param_2 + local_468 * 4) == 0));
      local_468 = local_468 + -1) {
  }
  iVar4 = local_468 - uVar1;
  local_464 = 0;
  for (local_468 = 1; (int)local_468 < iVar6 * 2; local_468 = local_468 + 2) {
    iVar3 = __divsi3(iVar4 * local_468,iVar6 << 1);
    aiStack_438[local_464] = iVar3 + uVar1;
    local_464 = local_464 + 1;
  }
  for (local_464 = 0; local_464 < 6; local_464 = local_464 + 1) {
    for (local_468 = 0; (int)local_468 < iVar6; local_468 = local_468 + 1) {
      aiStack_428[local_468] = 0;
      aiStack_418[local_468] = 0;
    }
    local_468 = 0;
    for (local_46c = uVar1; local_46c <= (int)uVar2; local_46c = local_46c + 1) {
      if (*(int *)(param_2 + local_46c * 4) != 0) {
        for (; (int)local_468 < iVar6 + -1; local_468 = local_468 + 1) {
          iVar4 = FUN_0075d2a0(local_46c - aiStack_438[local_468 + 1]);
          iVar3 = FUN_0075d2a0(local_46c - aiStack_438[local_468]);
          if (iVar3 <= iVar4) break;
        }
        auStack_408[local_46c] = local_468;
        aiStack_418[local_468] =
             aiStack_418[local_468] + local_46c * *(int *)(param_2 + local_46c * 4);
        aiStack_428[local_468] = aiStack_428[local_468] + *(int *)(param_2 + local_46c * 4);
      }
    }
    local_45c = 0;
    local_470 = 0;
    local_460 = 0;
    for (local_468 = 0; (int)local_468 < iVar6; local_468 = local_468 + 1) {
      if (aiStack_428[local_468] != 0) {
        iVar4 = __divsi3(aiStack_418[local_468] + aiStack_428[local_468] / 2,aiStack_428[local_468])
        ;
        iVar3 = FUN_0075d2a0(aiStack_438[local_468] - iVar4);
        local_45c = iVar3 + local_45c;
        aiStack_438[local_468] = iVar4;
        local_470 = iVar4 * aiStack_428[local_468] + local_470;
        local_460 = aiStack_428[local_468] + local_460;
      }
    }
    local_470 = __divsi3(local_460 / 2 + local_470,local_460);
    if (local_45c < 5) break;
  }
  for (local_468 = 0;
      param_1[0xb] * param_1[10] - local_468 != 0 && (int)local_468 <= param_1[0xb] * param_1[10];
      local_468 = local_468 + 1) {
    puVar5 = (uint *)(param_1[0x1489] + local_468 * 4);
    *puVar5 = *puVar5 & 0xffffff9f | (auStack_408[*(byte *)((int)puVar5 + 1)] & 3) << 5;
    *(char *)((int)puVar5 + 1) = (char)aiStack_438[auStack_408[*(byte *)((int)puVar5 + 1)]];
  }
  if ((1 < iVar6) && ((*(uint *)(*param_1 + 0x44) & 1) != 0)) {
    FUN_0075d314(param_1);
  }
  FUN_0075d708(param_1);
  FUN_0075d95c(param_1,aiStack_438,local_470);
  return;
}

// ---- FUN_0075dfe4  @ 0x75dfe4
int FUN_0075dfe4(int param_1)

{
  int iVar1;
  int iVar2;
  int local_24;
  int local_20;
  int local_1c;
  
  if (*(int *)(*(int *)(param_1 + 0x28) + 0x5218) < 3) {
    iVar2 = 4;
  }
  else {
    iVar2 = 2;
  }
  local_20 = -1;
  local_1c = 0;
  VP8MakeLuma16Preds(param_1);
  local_24 = 0;
  while( true ) {
    if (iVar2 <= local_24) break;
    iVar1 = (*VP8CollectHistogram)
                      (*(undefined4 *)(param_1 + 0x18),
                       *(int *)(param_1 + 0x24) + *(int *)(VP8I16ModeOffsets + local_24 * 4),0,0x10)
    ;
    if (local_20 < iVar1) {
      local_1c = local_24;
      local_20 = iVar1;
    }
    local_24 = local_24 + 1;
  }
  VP8SetIntra16Mode(param_1,local_1c);
  return local_20;
}

// ---- FUN_0075e090  @ 0x75e090
void FUN_0075e090(int param_1,int param_2)

{
  int iVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  int local_48;
  int local_3c;
  int local_38;
  int local_34;
  undefined1 auStack_24 [16];
  int local_14;
  
  local_14 = __stack_chk_guard;
  if (*(int *)(*(int *)(param_1 + 0x28) + 0x5218) < 3) {
    iVar3 = 10;
  }
  else {
    iVar3 = 2;
  }
  local_3c = 0;
  VP8IteratorStartI4(param_1);
  do {
    local_34 = -1;
    iVar2 = *(int *)(param_1 + 0x18);
    iVar4 = *(int *)(VP8Scan + *(int *)(param_1 + 0x68) * 4);
    VP8MakeIntra4Preds(param_1);
    for (local_38 = 0; local_38 < iVar3; local_38 = local_38 + 1) {
      iVar1 = (*VP8CollectHistogram)
                        (iVar2 + iVar4,
                         *(int *)(param_1 + 0x24) + *(int *)(VP8I4ModeOffsets + local_38 * 4),0,1);
      if (local_34 < iVar1) {
        auStack_24[*(int *)(param_1 + 0x68)] = (char)local_38;
        local_34 = iVar1;
      }
    }
    local_3c = local_3c + local_34;
    iVar2 = VP8IteratorRotateI4(param_1,*(undefined4 *)(param_1 + 0x18));
  } while (iVar2 != 0);
  local_48 = param_2;
  if (param_2 < local_3c) {
    VP8SetIntra4Mode(param_1,auStack_24);
    local_48 = FUN_0075d2f4(local_3c);
  }
  if (local_14 != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(local_48);
  }
  return;
}

// ---- FUN_0075e1ac  @ 0x75e1ac
int FUN_0075e1ac(int param_1)

{
  int iVar1;
  int iVar2;
  int local_24;
  int local_20;
  int local_1c;
  
  local_24 = -1;
  local_20 = 0;
  if (*(int *)(*(int *)(param_1 + 0x28) + 0x5218) < 3) {
    iVar2 = 4;
  }
  else {
    iVar2 = 2;
  }
  VP8MakeChroma8Preds(param_1);
  local_1c = 0;
  while( true ) {
    if (iVar2 <= local_1c) break;
    iVar1 = (*VP8CollectHistogram)
                      (*(int *)(param_1 + 0x18) + 0x100,
                       *(int *)(param_1 + 0x24) + *(int *)(VP8UVModeOffsets + local_1c * 4),0x10,
                       0x18);
    if (local_24 < iVar1) {
      local_20 = local_1c;
      local_24 = iVar1;
    }
    local_1c = local_1c + 1;
  }
  VP8SetIntraUVMode(param_1,local_20);
  return local_24;
}

// ---- FUN_0075e25c  @ 0x75e25c
void FUN_0075e25c(int param_1,int param_2,int *param_3)

{
  int iVar1;
  int iVar2;
  int *piVar3;
  undefined4 local_14;
  
  iVar2 = *(int *)(param_1 + 0x28);
  VP8SetIntra16Mode(param_1,0);
  VP8SetSkip(param_1,0);
  VP8SetSegment(param_1,0);
  local_14 = FUN_0075dfe4(param_1);
  if (*(int *)(iVar2 + 0x5218) != 3) {
    local_14 = FUN_0075e090(param_1,local_14);
  }
  iVar1 = FUN_0075e1ac(param_1);
  iVar2 = (local_14 + iVar1 + 1) / 2;
  piVar3 = (int *)(param_2 + iVar2 * 4);
  *piVar3 = *piVar3 + 1;
  *param_3 = *param_3 + iVar1;
  *(char *)(*(int *)(param_1 + 0x2c) + 1) = (char)iVar2;
  return;
}

// ---- FUN_0075e448  @ 0x75e448
uint FUN_0075e448(int param_1)

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

// ---- FUN_0075e468  @ 0x75e468
void FUN_0075e468(int param_1,int *param_2,uint *param_3,uint *param_4)

{
  int iVar1;
  uint uVar2;
  uint uVar3;
  
  uVar2 = param_1 - 1;
  iVar1 = FUN_0075e448(uVar2);
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

// ---- FUN_0075e4f0  @ 0x75e4f0
undefined4 * FUN_0075e4f0(undefined4 *param_1,undefined4 param_2,undefined2 param_3)

{
  undefined4 local_8;
  
  local_8 = CONCAT31(local_8._1_3_,2);
  local_8 = CONCAT22(param_3,(undefined2)local_8);
  *param_1 = local_8;
  param_1[1] = param_2;
  return param_1;
}

// ---- FUN_0075e524  @ 0x75e524
undefined4 * FUN_0075e524(undefined4 *param_1,int param_2)

{
  undefined4 local_10;
  
  if (param_2 < 0) {
    __assert2("../libwebp/src/enc/./backward_references.h",0x79,"PixOrCopyCreateCacheIdx","idx >= 0"
             );
  }
  if (0x1ff < param_2) {
    __assert2("../libwebp/src/enc/./backward_references.h",0x7a,"PixOrCopyCreateCacheIdx",
              "idx < (1 << MAX_COLOR_CACHE_BITS)");
  }
  local_10 = CONCAT31(local_10._1_3_,1);
  local_10 = CONCAT22(1,(undefined2)local_10);
  *param_1 = local_10;
  param_1[1] = param_2;
  return param_1;
}

// ---- FUN_0075e5ac  @ 0x75e5ac
undefined4 * FUN_0075e5ac(undefined4 *param_1,undefined4 param_2)

{
  undefined4 local_8;
  
  local_8._0_2_ = (ushort)local_8 & 0xff00;
  local_8 = CONCAT22(1,(ushort)local_8);
  *param_1 = local_8;
  param_1[1] = param_2;
  return param_1;
}

// ---- FUN_0075e5d8  @ 0x75e5d8
bool FUN_0075e5d8(char *param_1)

{
  return *param_1 == '\0';
}

// ---- FUN_0075e5f0  @ 0x75e5f0
bool FUN_0075e5f0(char *param_1)

{
  return *param_1 == '\x02';
}

// ---- FUN_0075e608  @ 0x75e608
undefined2 FUN_0075e608(int param_1)

{
  return *(undefined2 *)(param_1 + 2);
}

// ---- FUN_0075e618  @ 0x75e618
int FUN_0075e618(int param_1)

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

// ---- FUN_0075e648  @ 0x75e648
void FUN_0075e648(int *param_1,int param_2)

{
  *(int *)(*param_1 + ((uint)(param_2 * 0x1e35a7bd) >> (param_1[1] & 0xffU)) * 4) = param_2;
  return;
}

// ---- FUN_0075e67c  @ 0x75e67c
uint FUN_0075e67c(int param_1,int param_2)

{
  return (uint)(param_2 * 0x1e35a7bd) >> (*(uint *)(param_1 + 4) & 0xff);
}

// ---- FUN_0075e6a0  @ 0x75e6a0
bool FUN_0075e6a0(int *param_1,int param_2)

{
  return *(int *)(*param_1 + ((uint)(param_2 * 0x1e35a7bd) >> (param_1[1] & 0xffU)) * 4) == param_2;
}

// ---- FUN_0075e6e0  @ 0x75e6e0
int FUN_0075e6e0(int param_1,int param_2)

{
  int iVar1;
  int iVar2;
  
  iVar1 = __divsi3(param_2,param_1);
  iVar2 = param_2 - param_1 * iVar1;
  if ((iVar2 < 9) && (iVar1 < 8)) {
    param_2 = (byte)(&UNK_008717e8)[iVar1 * 0x10 - iVar2] + 1;
  }
  else if ((param_1 + -8 < iVar2) && (iVar1 < 7)) {
    param_2 = (byte)(&UNK_008717e8)[(iVar1 + 1) * 0x10 + (param_1 - iVar2)] + 1;
  }
  else {
    param_2 = param_2 + 0x78;
  }
  return param_2;
}

// ---- FUN_0075e770  @ 0x75e770
int FUN_0075e770(int param_1,int param_2,int param_3)

{
  undefined4 local_4;
  
  for (local_4 = 0;
      (local_4 < param_3 && (*(int *)(param_1 + local_4 * 4) == *(int *)(param_2 + local_4 * 4)));
      local_4 = local_4 + 1) {
  }
  return local_4;
}

// ---- FUN_0075e878  @ 0x75e878
uint FUN_0075e878(uint *param_1)

{
  return param_1[1] * 0x5bd1e995 + *param_1 * -0x395b586d +
         (int)((ulonglong)*param_1 * 0x5bd1e995 >> 0x20) >> 0xe;
}

// ---- FUN_0075e8f4  @ 0x75e8f4
undefined4 FUN_0075e8f4(int param_1,int param_2)

{
  undefined4 uVar1;
  undefined4 local_c;
  
  uVar1 = WebPSafeMalloc(param_2,param_2 >> 0x1f,4);
  *(undefined4 *)(param_1 + 0x100000) = uVar1;
  if (*(int *)(param_1 + 0x100000) == 0) {
    uVar1 = 0;
  }
  else {
    for (local_c = 0; local_c < param_2; local_c = local_c + 1) {
      *(undefined4 *)(*(int *)(param_1 + 0x100000) + local_c * 4) = 0xffffffff;
    }
    for (local_c = 0; local_c < 0x40000; local_c = local_c + 1) {
      *(undefined4 *)(param_1 + local_c * 4) = 0xffffffff;
    }
    uVar1 = 1;
  }
  return uVar1;
}

// ---- FUN_0075e990  @ 0x75e990
void FUN_0075e990(void *param_1)

{
  if (param_1 != (void *)0x0) {
    free(*(void **)((int)param_1 + 0x100000));
    free(param_1);
  }
  return;
}

// ---- FUN_0075e9b4  @ 0x75e9b4
void FUN_0075e9b4(int param_1,undefined4 param_2,int param_3)

{
  int iVar1;
  
  iVar1 = FUN_0075e878(param_2);
  *(undefined4 *)(*(int *)(param_1 + 0x100000) + param_3 * 4) = *(undefined4 *)(param_1 + iVar1 * 4)
  ;
  *(int *)(param_1 + iVar1 * 4) = param_3;
  return;
}

// ---- FUN_0075e9f8  @ 0x75e9f8
bool FUN_0075e9f8(int param_1,int param_2,int param_3,int param_4,int param_5,undefined4 param_6,
                 int *param_7,int *param_8)

{
  int iVar1;
  int iVar2;
  int iVar3;
  uint uVar4;
  int extraout_r1;
  uint uVar5;
  int iVar6;
  int iVar7;
  int iVar8;
  int local_50;
  int local_4c;
  int local_48;
  int local_44;
  int local_40;
  int local_3c;
  uint local_20;
  int iStack_1c;
  uint local_18;
  int iStack_14;
  
  iVar2 = FUN_0075e878(param_5 + param_3 * 4);
  local_50 = 0;
  local_20 = 0;
  iStack_1c = 0;
  local_4c = 0;
  local_48 = 0;
  iVar6 = param_5 + param_3 * 4;
  if (param_2 < 0x32) {
    iVar7 = 2;
  }
  else if (param_2 < 0x4b) {
    iVar7 = 4;
  }
  else {
    iVar7 = 8;
  }
  local_44 = (param_2 >> 1) + 10;
  if (param_3 < 0xfff89) {
    iVar8 = 0;
  }
  else {
    iVar8 = param_3 + -0xfff88;
  }
  if (param_4 < 1) {
    __assert2("../libwebp/src/enc/backward_references.c",0xa1,"HashChainFindCopy","xsize > 0");
  }
  local_40 = *(int *)(param_1 + iVar2 * 4);
  while ((iVar8 <= local_40 &&
         ((-1 < local_44 ||
          ((iVar7 * -param_2 <= local_44 &&
           ((int)(-(uint)(0xfeffff < local_20) - iStack_1c) < 0 ==
            (SBORROW4(0,iStack_1c) != SBORROW4(-iStack_1c,(uint)(0xfeffff < local_20)))))))))) {
    local_44 = local_44 + -1;
    if (((local_4c == 0) ||
        (*(int *)(param_5 + (local_40 + local_4c + -1) * 4) == *(int *)(iVar6 + (local_4c + -1) * 4)
        )) && (iVar2 = FUN_0075e770(param_5 + local_40 * 4,iVar6,param_6), local_50 <= iVar2)) {
      uVar4 = iVar2 * 0x10000;
      iVar1 = (int)uVar4 >> 0x1f;
      if (param_3 - local_40 < param_4 * 9) {
        iVar3 = __divsi3(param_3 - local_40,param_4);
        __aeabi_idivmod(param_3 - local_40,param_4);
        local_3c = extraout_r1;
        if (param_4 / 2 < extraout_r1) {
          local_3c = param_4 - extraout_r1;
        }
        if ((local_3c < 8) && (-9 < local_3c)) {
          uVar5 = iVar3 * iVar3 + local_3c * local_3c;
          local_18 = uVar4 - uVar5;
          iStack_14 = (iVar1 - ((int)uVar5 >> 0x1f)) - (uint)(uVar4 < uVar5);
        }
        else {
          local_18 = uVar4 - 0xa2;
          iStack_14 = iVar1 + (uint)(0xa1 < uVar4) + -1;
        }
      }
      else {
        local_18 = uVar4 - 0xa2;
        iStack_14 = iVar1 + (uint)(0xa1 < uVar4) + -1;
      }
      if ((int)((iStack_1c - iStack_14) - (uint)(local_20 < local_18)) < 0 !=
          (SBORROW4(iStack_1c,iStack_14) !=
          SBORROW4(iStack_1c - iStack_14,(uint)(local_20 < local_18)))) {
        local_20 = local_18;
        iStack_1c = iStack_14;
        local_48 = param_3 - local_40;
        local_4c = iVar2;
        if ((0xfff < iVar2) ||
           (((local_50 = iVar2, local_48 == 1 || (local_48 == param_4)) && (0x7f < iVar2)))) break;
      }
    }
    local_40 = *(int *)(*(int *)(param_1 + 0x100000) + local_40 * 4);
  }
  *param_7 = local_48;
  *param_8 = local_4c;
  return 1 < local_4c;
}

// ---- FUN_0075ecb8  @ 0x75ecb8
void FUN_0075ecb8(int *param_1,uint param_2)

{
  undefined4 *puVar1;
  undefined4 local_20;
  undefined4 uStack_1c;
  uint local_18;
  int *local_14;
  int local_c;
  
  local_c = param_1[1];
  local_14 = param_1;
  for (local_18 = param_2; 0xfff < (int)local_18; local_18 = local_18 - 0x1000) {
    puVar1 = (undefined4 *)(*local_14 + local_c * 8);
    FUN_0075e4f0(&local_20,1,0x1000);
    *puVar1 = local_20;
    puVar1[1] = uStack_1c;
    local_c = local_c + 1;
  }
  if (0 < (int)local_18) {
    puVar1 = (undefined4 *)(*local_14 + local_c * 8);
    FUN_0075e4f0(&local_20,1,local_18 & 0xffff);
    *puVar1 = local_20;
    puVar1[1] = uStack_1c;
    local_c = local_c + 1;
  }
  local_14[1] = local_c;
  return;
}

// ---- FUN_0075ed4c  @ 0x75ed4c
void FUN_0075ed4c(int param_1,int param_2,undefined4 *param_3,int *param_4)

{
  int iVar1;
  undefined4 *puVar2;
  undefined4 local_38;
  undefined4 uStack_34;
  int *local_30;
  undefined4 *local_2c;
  int local_28;
  int local_24;
  int local_1c;
  int local_18;
  int local_14;
  
  local_14 = param_2 * param_1;
  local_1c = 0;
  param_4[1] = 0;
  local_30 = param_4;
  local_2c = param_3;
  local_28 = param_2;
  local_24 = param_1;
  FUN_0075ecb8(param_4,0);
  iVar1 = local_30[1];
  puVar2 = (undefined4 *)(*local_30 + iVar1 * 8);
  FUN_0075e5ac(&local_38,*local_2c);
  *puVar2 = local_38;
  puVar2[1] = uStack_34;
  local_30[1] = iVar1 + 1;
  local_18 = 1;
  while( true ) {
    if (local_14 <= local_18) break;
    if (local_2c[local_18] == local_2c[local_18 + -1]) {
      local_1c = local_1c + 1;
    }
    else {
      FUN_0075ecb8(local_30,local_1c);
      local_1c = 0;
      iVar1 = local_30[1];
      puVar2 = (undefined4 *)(*local_30 + iVar1 * 8);
      FUN_0075e5ac(&local_38,local_2c[local_18]);
      *puVar2 = local_38;
      puVar2[1] = uStack_34;
      local_30[1] = iVar1 + 1;
    }
    local_18 = local_18 + 1;
  }
  FUN_0075ecb8(local_30,local_1c);
  return;
}

// ---- FUN_0075ee40  @ 0x75ee40
undefined4
FUN_0075ee40(int param_1,int param_2,int param_3,int param_4,undefined4 param_5,int *param_6)

{
  int iVar1;
  uint uVar2;
  undefined4 *puVar3;
  undefined4 local_78;
  undefined4 uStack_74;
  int local_70;
  int local_6c;
  int local_68;
  int local_64;
  undefined4 local_60;
  uint local_5c;
  undefined4 local_58;
  uint local_54;
  uint local_50;
  undefined4 local_4c;
  int local_48;
  int local_44;
  int local_40;
  int local_3c;
  uint local_38;
  int local_34;
  void *local_30;
  undefined4 local_2c;
  undefined4 local_28;
  uint local_24;
  undefined4 local_20;
  undefined4 local_1c;
  undefined1 auStack_18 [12];
  
  local_4c = 0;
  local_48 = 0;
  local_38 = (uint)(0 < param_4);
  local_34 = param_2 * param_1;
  local_70 = param_4;
  local_6c = param_3;
  local_68 = param_2;
  local_64 = param_1;
  local_30 = malloc(0x100004);
  if (local_30 == (void *)0x0) {
    local_4c = 0;
  }
  else {
    if (((local_38 == 0) || (local_48 = VP8LColorCacheInit(auStack_18,local_70), local_48 != 0)) &&
       (iVar1 = FUN_0075e8f4(local_30,local_34), iVar1 != 0)) {
      param_6[1] = 0;
      local_50 = 0;
      while ((int)local_50 < local_34) {
        local_60 = 0;
        local_5c = 0;
        if ((int)local_50 < local_34 + -1) {
          local_44 = local_34 - local_50;
          if (0x1000 < local_44) {
            local_44 = 0x1000;
          }
          FUN_0075e9f8(local_30,param_5,local_50,local_64,local_6c,local_44,&local_60,&local_5c);
        }
        if ((int)local_5c < 2) {
          local_20 = *(undefined4 *)(local_6c + local_50 * 4);
          if ((local_38 == 0) || (iVar1 = FUN_0075e6a0(auStack_18,local_20), iVar1 == 0)) {
            puVar3 = (undefined4 *)(*param_6 + param_6[1] * 8);
            FUN_0075e5ac(&local_78,local_20);
            *puVar3 = local_78;
            puVar3[1] = uStack_74;
          }
          else {
            local_1c = FUN_0075e67c(auStack_18,local_20);
            puVar3 = (undefined4 *)(*param_6 + param_6[1] * 8);
            FUN_0075e524(&local_78,local_1c);
            *puVar3 = local_78;
            puVar3[1] = uStack_74;
          }
          param_6[1] = param_6[1] + 1;
          if (local_38 != 0) {
            FUN_0075e648(auStack_18,local_20);
          }
          if ((int)(local_50 + 1) < local_34) {
            FUN_0075e9b4(local_30,local_6c + local_50 * 4,local_50);
          }
          local_50 = local_50 + 1;
        }
        else {
          local_58 = 0;
          local_54 = 0;
          FUN_0075e9b4(local_30,local_6c + local_50 * 4,local_50);
          if ((int)local_50 < local_34 + -2) {
            local_3c = ~local_50 + local_34;
            if (0x1000 < local_3c) {
              local_3c = 0x1000;
            }
            FUN_0075e9f8(local_30,param_5,local_50 + 1,local_64,local_6c,local_3c,&local_58,
                         &local_54);
            if ((int)(local_5c + 1) < (int)local_54) {
              local_2c = *(undefined4 *)(local_6c + local_50 * 4);
              if ((local_38 == 0) || (iVar1 = FUN_0075e6a0(auStack_18,local_2c), iVar1 == 0)) {
                puVar3 = (undefined4 *)(*param_6 + param_6[1] * 8);
                FUN_0075e5ac(&local_78,local_2c);
                *puVar3 = local_78;
                puVar3[1] = uStack_74;
              }
              else {
                local_28 = FUN_0075e67c(auStack_18,local_2c);
                puVar3 = (undefined4 *)(*param_6 + param_6[1] * 8);
                FUN_0075e524(&local_78,local_28);
                *puVar3 = local_78;
                puVar3[1] = uStack_74;
              }
              param_6[1] = param_6[1] + 1;
              if (local_38 != 0) {
                FUN_0075e648(auStack_18,local_2c);
              }
              local_50 = local_50 + 1;
              local_5c = local_54;
              local_60 = local_58;
            }
          }
          if (0xfff < (int)local_5c) {
            local_5c = 0xfff;
          }
          iVar1 = param_6[1];
          puVar3 = (undefined4 *)(*param_6 + iVar1 * 8);
          FUN_0075e4f0(&local_78,local_60,local_5c & 0xffff);
          *puVar3 = local_78;
          puVar3[1] = uStack_74;
          param_6[1] = iVar1 + 1;
          if (local_38 != 0) {
            for (local_40 = 0; local_40 < (int)local_5c; local_40 = local_40 + 1) {
              FUN_0075e648(auStack_18,*(undefined4 *)(local_6c + (local_50 + local_40) * 4));
            }
          }
          uVar2 = (local_34 + -1) - local_50;
          local_24 = local_5c;
          if ((int)uVar2 < (int)local_5c) {
            local_24 = uVar2;
          }
          for (local_40 = 1; local_40 < (int)local_24; local_40 = local_40 + 1) {
            FUN_0075e9b4(local_30,local_6c + (local_50 + local_40) * 4,local_50 + local_40);
          }
          local_50 = local_50 + local_5c;
        }
      }
      local_4c = 1;
    }
    if (local_48 != 0) {
      VP8LColorCacheClear(auStack_18);
    }
    FUN_0075e990(local_30);
  }
  return local_4c;
}

// ---- FUN_0075f1fc  @ 0x75f1fc
void FUN_0075f1fc(int param_1,int param_2,void *param_3)

{
  float fVar1;
  float fVar2;
  undefined4 local_1c;
  undefined4 local_18;
  undefined4 local_14;
  
  local_1c = 0;
  local_18 = 0;
  for (local_14 = 0; local_14 < param_1; local_14 = local_14 + 1) {
    local_1c = local_1c + *(int *)(param_2 + local_14 * 4);
    if (0 < *(int *)(param_2 + local_14 * 4)) {
      local_18 = local_18 + 1;
    }
  }
  if (local_18 < 2) {
    memset(param_3,0,param_1 << 3);
  }
  else {
    fVar1 = (float)VP8LFastLog2(local_1c);
    for (local_14 = 0; local_14 < param_1; local_14 = local_14 + 1) {
      fVar2 = (float)VP8LFastLog2(*(undefined4 *)(param_2 + local_14 * 4));
      *(double *)((int)param_3 + local_14 * 8) = (double)fVar1 - (double)fVar2;
    }
  }
  return;
}

// ---- FUN_0075f2d0  @ 0x75f2d0
undefined4
FUN_0075f2d0(int param_1,int param_2,int param_3,int param_4,undefined4 param_5,undefined4 param_6)

{
  int iVar1;
  undefined4 uVar2;
  undefined4 local_192c;
  undefined1 auStack_1924 [12];
  undefined1 auStack_1918 [3168];
  undefined1 auStack_cb8 [1024];
  undefined1 auStack_8b8 [1024];
  undefined1 auStack_4b8 [1024];
  undefined1 auStack_b8 [176];
  
  local_192c = 0;
  iVar1 = VP8LBackwardRefsAlloc(auStack_1924,param_3 * param_2);
  if (iVar1 != 0) {
    if (param_4 < 1) {
      iVar1 = FUN_0075ee40(param_2,param_3,param_5,param_6,100,auStack_1924);
    }
    else {
      iVar1 = FUN_0075fe90(param_2,param_3,param_4 + -1,param_5,param_6,auStack_1924);
    }
    if (iVar1 != 0) {
      VP8LHistogramCreate(auStack_1918,auStack_1924,param_6);
      uVar2 = FUN_0075e618(auStack_1918);
      FUN_0075f1fc(uVar2,auStack_1918,param_1 + 0x1000);
      FUN_0075f1fc(0x100,auStack_cb8,param_1 + 0x800);
      FUN_0075f1fc(0x100,auStack_8b8,param_1 + 0x28c0);
      FUN_0075f1fc(0x100,auStack_4b8,param_1);
      FUN_0075f1fc(0x28,auStack_b8,param_1 + 0x30c0);
      local_192c = 1;
    }
  }
  VP8LClearBackwardRefs(auStack_1924);
  return local_192c;
}

// ---- FUN_0075f4bc  @ 0x75f4bc
undefined4 FUN_0075f4bc(int param_1,uint param_2)

{
  return SUB84(*(double *)(param_1 + (param_2 >> 0x18) * 8) +
               *(double *)(param_1 + ((param_2 >> 0x10 & 0xff) + 0x100) * 8) +
               *(double *)(param_1 + ((param_2 >> 8 & 0xff) + 0x200) * 8) +
               *(double *)(param_1 + ((param_2 & 0xff) + 0x518) * 8),0);
}

// ---- FUN_0075f52c  @ 0x75f52c
undefined4 FUN_0075f52c(int param_1,int param_2)

{
  return *(undefined4 *)(param_1 + (param_2 + 0x318) * 8);
}

// ---- FUN_0075f558  @ 0x75f558
undefined4 FUN_0075f558(int param_1,undefined4 param_2)

{
  uint in_fpscr;
  double dVar1;
  int local_14;
  undefined4 local_10;
  undefined1 auStack_c [8];
  
  FUN_0075e468(param_2,&local_14,&local_10,auStack_c);
  dVar1 = (double)VectorSignedToFloat(local_10,(byte)(in_fpscr >> 0x16) & 3);
  return SUB84(*(double *)(param_1 + (local_14 + 0x300) * 8) + dVar1,0);
}

// ---- FUN_0075f598  @ 0x75f598
undefined4 FUN_0075f598(int param_1,undefined4 param_2)

{
  uint in_fpscr;
  double dVar1;
  int local_14;
  undefined4 local_10;
  undefined1 auStack_c [8];
  
  FUN_0075e468(param_2,&local_14,&local_10,auStack_c);
  dVar1 = (double)VectorSignedToFloat(local_10,(byte)(in_fpscr >> 0x16) & 3);
  return SUB84(*(double *)(param_1 + (local_14 + 0x618) * 8) + dVar1,0);
}

// ---- FUN_0075f5d8  @ 0x75f5d8
undefined4
FUN_0075f5d8(int param_1,int param_2,int param_3,int param_4,int param_5,undefined4 *param_6)

{
  int iVar1;
  undefined4 uVar2;
  undefined4 extraout_s1;
  undefined4 extraout_s1_00;
  undefined4 extraout_s1_01;
  undefined4 extraout_s1_02;
  undefined4 local_84;
  int local_80;
  int local_7c;
  undefined4 local_78;
  int local_74;
  int local_70;
  int local_6c;
  int local_68;
  undefined4 local_64;
  int local_60;
  uint local_5c;
  void *local_58;
  void *local_54;
  void *local_50;
  int local_4c;
  int local_48;
  undefined4 local_44;
  double local_40;
  double local_38;
  undefined4 local_30;
  undefined4 uStack_2c;
  undefined4 local_28;
  undefined4 uStack_24;
  double local_20;
  double local_18;
  undefined1 auStack_10 [12];
  
  local_78 = 0;
  local_74 = 0;
  local_64 = 100;
  local_60 = param_2 * param_1;
  local_5c = (uint)(0 < param_5);
  local_58 = (void *)WebPSafeMalloc(local_60,local_60 >> 0x1f,4);
  local_54 = malloc(0x3200);
  local_50 = malloc(0x100004);
  if (param_3 == 0) {
    local_30 = 0x5c28f5c3;
    uStack_2c = 0x3fe5c28f;
    local_28 = 0xa3d70a3d;
    uStack_24 = 0x3fea3d70;
  }
  else {
    local_30 = 0;
    uStack_2c = 0x3ff00000;
    local_28 = 0;
    uStack_24 = 0x3ff00000;
  }
  if (((((local_58 != (void *)0x0) && (local_54 != (void *)0x0)) && (local_50 != (void *)0x0)) &&
      (iVar1 = FUN_0075e8f4(local_50,local_60), iVar1 != 0)) &&
     (((local_5c == 0 || (local_74 = VP8LColorCacheInit(auStack_10,param_5), local_74 != 0)) &&
      (iVar1 = FUN_0075f2d0(local_54,param_1,param_2,param_3,param_4,param_5), iVar1 != 0)))) {
    for (local_7c = 0; local_7c < local_60; local_7c = local_7c + 1) {
      *(undefined4 *)((int)local_58 + local_7c * 4) = 0x7e967699;
    }
    *param_6 = 0;
    for (local_7c = 0; local_7c < local_60; local_7c = local_7c + 1) {
      local_40 = 0.0;
      if (0 < local_7c) {
        local_40 = (double)*(float *)((int)local_58 + (local_7c + -1) * 4);
      }
      local_70 = 0;
LAB_0075f8f2:
      if (local_70 < 2) {
        local_84 = 0;
        local_80 = 0;
        if (local_7c < local_60 + -1) {
          if (local_70 == 0) {
            local_6c = 0x1000;
          }
          else {
            local_6c = 2;
          }
          if (local_60 - local_7c < local_6c) {
            local_6c = local_60 - local_7c;
          }
          FUN_0075e9f8(local_50,local_64,local_7c,param_1,param_4,local_6c,&local_84,&local_80);
        }
        if (local_80 < 2) goto LAB_0075f8ea;
        local_4c = FUN_0075e6e0(param_1,local_84);
        uVar2 = FUN_0075f598(local_54,local_4c);
        local_20 = (double)CONCAT44(extraout_s1,uVar2) + local_40;
        for (local_68 = 1; local_68 < local_80; local_68 = local_68 + 1) {
          uVar2 = FUN_0075f558(local_54,local_68);
          local_18 = (double)CONCAT44(extraout_s1_00,uVar2) + local_20;
          if (local_18 < (double)*(float *)((int)local_58 + (local_7c + local_68) * 4)) {
            *(float *)((int)local_58 + (local_7c + local_68) * 4) = (float)local_18;
            param_6[local_7c + local_68] = local_68 + 1;
          }
        }
        if ((local_80 < 0x80) || (1 < local_4c)) goto LAB_0075f8ea;
        if (local_5c != 0) {
          for (local_68 = 0; local_68 < local_80; local_68 = local_68 + 1) {
            FUN_0075e648(auStack_10,*(undefined4 *)(param_4 + (local_7c + local_68) * 4));
          }
        }
        iVar1 = (local_60 + -1) - local_7c;
        local_48 = local_80;
        if (iVar1 < local_80) {
          local_48 = iVar1;
        }
        for (local_68 = 0; local_68 < local_48; local_68 = local_68 + 1) {
          FUN_0075e9b4(local_50,param_4 + (local_7c + local_68) * 4,local_7c + local_68);
        }
        local_7c = local_7c + local_80 + -1;
      }
      else {
        if (local_7c < local_60 + -1) {
          FUN_0075e9b4(local_50,param_4 + local_7c * 4,local_7c);
        }
        local_38 = local_40;
        if ((local_5c == 0) ||
           (iVar1 = FUN_0075e6a0(auStack_10,*(undefined4 *)(param_4 + local_7c * 4)), iVar1 == 0)) {
          uVar2 = FUN_0075f4bc(local_54,*(undefined4 *)(param_4 + local_7c * 4));
          local_38 = local_38 +
                     (double)CONCAT44(extraout_s1_02,uVar2) * (double)CONCAT44(uStack_24,local_28);
        }
        else {
          local_44 = FUN_0075e67c(auStack_10,*(undefined4 *)(param_4 + local_7c * 4));
          uVar2 = FUN_0075f52c(local_54,local_44);
          local_38 = local_38 +
                     (double)CONCAT44(extraout_s1_01,uVar2) * (double)CONCAT44(uStack_2c,local_30);
        }
        if (local_38 < (double)*(float *)((int)local_58 + local_7c * 4)) {
          *(float *)((int)local_58 + local_7c * 4) = (float)local_38;
          param_6[local_7c] = 1;
        }
        if (local_5c != 0) {
          FUN_0075e648(auStack_10,*(undefined4 *)(param_4 + local_7c * 4));
        }
      }
    }
    local_78 = 1;
  }
  if (local_74 != 0) {
    VP8LColorCacheClear(auStack_10);
  }
  FUN_0075e990(local_50);
  free(local_54);
  free(local_58);
  return local_78;
LAB_0075f8ea:
  local_70 = local_70 + 1;
  goto LAB_0075f8f2;
}

// ---- FUN_0075fa88  @ 0x75fa88
undefined4 FUN_0075fa88(int param_1,int param_2,int *param_3,int *param_4)

{
  int iVar1;
  undefined4 uVar2;
  int local_18;
  int local_14;
  
  local_14 = 0;
  for (local_18 = param_2 + -1; -1 < local_18; local_18 = local_18 - iVar1) {
    iVar1 = *(int *)(param_1 + local_18 * 4);
    if (iVar1 < 1) {
      __assert2("../libwebp/src/enc/backward_references.c",0x247,"TraceBackwards","k >= 1");
    }
    local_14 = local_14 + 1;
  }
  *param_4 = local_14;
  iVar1 = WebPSafeMalloc(local_14,local_14 >> 0x1f,4);
  *param_3 = iVar1;
  if (*param_3 == 0) {
    uVar2 = 0;
  }
  else {
    for (local_18 = param_2 + -1; -1 < local_18; local_18 = local_18 - iVar1) {
      iVar1 = *(int *)(param_1 + local_18 * 4);
      if (iVar1 < 1) {
        __assert2("../libwebp/src/enc/backward_references.c",0x254,"TraceBackwards","k >= 1");
      }
      local_14 = local_14 + -1;
      *(int *)(*param_3 + local_14 * 4) = iVar1;
    }
    uVar2 = 1;
  }
  return uVar2;
}

// ---- FUN_0075fb94  @ 0x75fb94
undefined4
FUN_0075fb94(int param_1,int param_2,int param_3,int param_4,int param_5,int param_6,int *param_7)

{
  int iVar1;
  uint uVar2;
  undefined4 *puVar3;
  undefined4 local_68;
  undefined4 uStack_64;
  int local_60;
  int local_5c;
  int local_58;
  int local_54;
  undefined4 local_4c;
  uint local_48;
  int local_44;
  int local_40;
  int local_3c;
  int local_38;
  undefined4 local_34;
  int local_30;
  undefined4 local_2c;
  int local_28;
  uint local_24;
  void *local_20;
  uint local_1c;
  uint local_18;
  undefined4 local_14;
  undefined1 auStack_10 [8];
  
  local_2c = 100;
  local_28 = param_2 * param_1;
  local_24 = (uint)(0 < param_4);
  local_44 = 0;
  local_40 = 0;
  local_34 = 0;
  local_30 = 0;
  local_60 = param_4;
  local_5c = param_3;
  local_58 = param_2;
  local_54 = param_1;
  local_20 = malloc(0x100004);
  if (((local_20 != (void *)0x0) && (iVar1 = FUN_0075e8f4(local_20,local_28), iVar1 != 0)) &&
     ((local_24 == 0 || (local_30 = VP8LColorCacheInit(auStack_10,local_60), local_30 != 0)))) {
    param_7[1] = 0;
    for (local_38 = 0; local_38 < param_6; local_38 = local_38 + 1) {
      local_4c = 0;
      local_48 = 0;
      local_1c = *(uint *)(param_5 + local_38 * 4);
      if (local_1c == 1) {
        if ((local_24 == 0) ||
           (iVar1 = FUN_0075e6a0(auStack_10,*(undefined4 *)(local_5c + local_40 * 4)), iVar1 == 0))
        {
          puVar3 = (undefined4 *)(*param_7 + local_44 * 8);
          FUN_0075e5ac(&local_68,*(undefined4 *)(local_5c + local_40 * 4));
          *puVar3 = local_68;
          puVar3[1] = uStack_64;
        }
        else {
          local_14 = FUN_0075e67c(auStack_10,*(undefined4 *)(local_5c + local_40 * 4));
          puVar3 = (undefined4 *)(*param_7 + local_44 * 8);
          FUN_0075e524(&local_68,local_14);
          *puVar3 = local_68;
          puVar3[1] = uStack_64;
        }
        if (local_24 != 0) {
          FUN_0075e648(auStack_10,*(undefined4 *)(local_5c + local_40 * 4));
        }
        if (local_40 + 1 < local_28) {
          FUN_0075e9b4(local_20,local_5c + local_40 * 4,local_40);
        }
        local_40 = local_40 + 1;
      }
      else {
        FUN_0075e9f8(local_20,local_2c,local_40,local_54,local_5c,local_1c,&local_4c,&local_48);
        if (local_48 != local_1c) {
          __assert2("../libwebp/src/enc/backward_references.c",0x27b,
                    "BackwardReferencesHashChainFollowChosenPath","len == maxlen");
        }
        puVar3 = (undefined4 *)(*param_7 + local_44 * 8);
        FUN_0075e4f0(&local_68,local_4c,local_48 & 0xffff);
        *puVar3 = local_68;
        puVar3[1] = uStack_64;
        if (local_24 != 0) {
          for (local_3c = 0; local_3c < (int)local_48; local_3c = local_3c + 1) {
            FUN_0075e648(auStack_10,*(undefined4 *)(local_5c + (local_40 + local_3c) * 4));
          }
        }
        uVar2 = (local_28 + -1) - local_40;
        local_18 = local_48;
        if ((int)uVar2 < (int)local_48) {
          local_18 = uVar2;
        }
        for (local_3c = 0; local_3c < (int)local_18; local_3c = local_3c + 1) {
          FUN_0075e9b4(local_20,local_5c + (local_40 + local_3c) * 4,local_40 + local_3c);
        }
        local_40 = local_40 + local_48;
      }
      local_44 = local_44 + 1;
    }
    if (param_7[2] < local_44) {
      __assert2("../libwebp/src/enc/backward_references.c",0x298,
                "BackwardReferencesHashChainFollowChosenPath","size <= refs->max_size");
    }
    param_7[1] = local_44;
    local_34 = 1;
  }
  if (local_30 != 0) {
    VP8LColorCacheClear(auStack_10);
  }
  FUN_0075e990(local_20);
  return local_34;
}

// ---- FUN_0075fe90  @ 0x75fe90
undefined4
FUN_0075fe90(int param_1,int param_2,undefined4 param_3,undefined4 param_4,undefined4 param_5,
            undefined4 param_6)

{
  int iVar1;
  void *local_1c;
  undefined4 local_18;
  undefined4 local_14;
  void *local_10;
  int local_c;
  
  local_14 = 0;
  local_c = param_2 * param_1;
  local_1c = (void *)0x0;
  local_18 = 0;
  local_10 = (void *)WebPSafeMalloc(local_c,local_c >> 0x1f,4);
  if (((local_10 != (void *)0x0) &&
      (iVar1 = FUN_0075f5d8(param_1,param_2,param_3,param_4,param_5,local_10), iVar1 != 0)) &&
     (iVar1 = FUN_0075fa88(local_10,local_c,&local_1c,&local_18), iVar1 != 0)) {
    free(local_10);
    local_10 = (void *)0x0;
    iVar1 = FUN_0075fb94(param_1,param_2,param_4,param_5,local_1c,local_18,param_6);
    if (iVar1 != 0) {
      local_14 = 1;
    }
  }
  free(local_1c);
  free(local_10);
  return local_14;
}

// ---- FUN_0075ff58  @ 0x75ff58
void FUN_0075ff58(undefined4 param_1,int *param_2)

{
  int iVar1;
  undefined4 uVar2;
  int local_14;
  
  for (local_14 = 0; local_14 < param_2[1]; local_14 = local_14 + 1) {
    iVar1 = FUN_0075e5f0(*param_2 + local_14 * 8);
    if (iVar1 != 0) {
      uVar2 = FUN_0075e6e0(param_1,*(undefined4 *)(*param_2 + local_14 * 8 + 4));
      *(undefined4 *)(*param_2 + local_14 * 8 + 4) = uVar2;
    }
  }
  return;
}
