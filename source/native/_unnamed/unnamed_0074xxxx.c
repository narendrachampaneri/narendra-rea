// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 149 functions

// ---- FUN_00740060  @ 0x740060
undefined4 FUN_00740060(int param_1,void *param_2,int param_3)

{
  int iVar1;
  int iVar2;
  
  iVar2 = *(int *)(param_1 + 0x238);
  while( true ) {
    if (param_3 < 1) {
      return 1;
    }
    iVar1 = FUN_0073f838(param_1,param_2,*(undefined4 *)(iVar2 + 0x60),*(undefined4 *)(iVar2 + 0xc))
    ;
    if (iVar1 == 0) break;
    _TIFFmemcpy(*(void **)(iVar2 + 0x60),param_2,*(size_t *)(iVar2 + 8));
    param_3 = param_3 - *(int *)(iVar2 + 8);
    param_2 = (void *)((int)param_2 + *(int *)(iVar2 + 8));
  }
  return 0;
}

// ---- FUN_007400c0  @ 0x7400c0
undefined4 FUN_007400c0(int param_1)

{
  undefined4 uVar1;
  int iVar2;
  float fVar3;
  
  iVar2 = *(int *)(param_1 + 0x238);
  *(undefined4 *)(iVar2 + 0x44) = 8;
  *(undefined4 *)(iVar2 + 0x40) = 0;
  *(undefined4 *)(iVar2 + 0x5c) = 0;
  if (*(void **)(iVar2 + 0x60) != (void *)0x0) {
    _TIFFmemset(*(void **)(iVar2 + 0x60),0,*(size_t *)(iVar2 + 8));
  }
  if ((*(uint *)(iVar2 + 0x1c) & 1) == 0) {
    *(undefined4 *)(iVar2 + 100) = 0;
    *(undefined4 *)(iVar2 + 0x68) = 0;
  }
  else {
    fVar3 = *(float *)(param_1 + 0x84);
    if (*(short *)(param_1 + 0x88) == 3) {
      fVar3 = fVar3 * 2.54;
    }
    if (150.0 < fVar3) {
      uVar1 = 4;
    }
    else {
      uVar1 = 2;
    }
    *(undefined4 *)(iVar2 + 0x68) = uVar1;
    if (150.0 < fVar3) {
      uVar1 = 3;
    }
    else {
      uVar1 = 1;
    }
    *(undefined4 *)(iVar2 + 100) = uVar1;
  }
  *(undefined4 *)(iVar2 + 0x6c) = 0;
  return 1;
}

// ---- FUN_00740158  @ 0x740158
void FUN_00740158(undefined4 param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4)

{
  char *pcVar1;
  undefined4 uVar2;
  
  if ((param_2[3] & 0x400) == 0) {
    uVar2 = param_2[0x74];
    pcVar1 = "strip";
  }
  else {
    uVar2 = param_2[0x7a];
    pcVar1 = "tile";
  }
  TIFFWarningExt(param_2[0x99],param_1,"%s: Premature EOF at line %u of %s %u (x %u)",*param_2,
                 param_3,pcVar1,uVar2,param_4);
  return;
}

// ---- FUN_007401cc  @ 0x7401cc
void FUN_007401cc(undefined4 param_1,undefined4 *param_2,undefined4 param_3,uint param_4,
                 uint param_5)

{
  uint uVar1;
  char *pcVar2;
  undefined4 uVar3;
  char *pcVar4;
  
  if (param_4 < param_5) {
    uVar1 = param_2[3];
    pcVar4 = "Premature EOL";
  }
  else {
    uVar1 = param_2[3];
    pcVar4 = "Line length mismatch";
  }
  if ((uVar1 & 0x400) == 0) {
    uVar3 = param_2[0x74];
    pcVar2 = "strip";
  }
  else {
    uVar3 = param_2[0x7a];
    pcVar2 = "tile";
  }
  TIFFWarningExt(param_2[0x99],param_1,"%s: %s at line %u of %s %u (got %u, expected %u)",*param_2,
                 pcVar4,param_3,pcVar2,uVar3,param_4,param_5);
  return;
}

// ---- FUN_0074027c  @ 0x74027c
undefined4 FUN_0074027c(int param_1,int param_2,int param_3)

{
  int iVar1;
  uint uVar2;
  uint *puVar3;
  uint *puVar4;
  uint uVar5;
  uint uVar6;
  uint uVar7;
  uint uVar8;
  byte *pbVar9;
  byte *pbVar10;
  byte *pbVar11;
  byte *pbVar12;
  int iVar13;
  uint uVar14;
  int iVar15;
  uint *puVar16;
  bool bVar17;
  uint *local_50;
  uint local_4c;
  int local_44;
  int local_40;
  int local_3c;
  
  iVar13 = *(int *)(param_1 + 0x238);
  pbVar9 = *(byte **)(param_1 + 0x24c);
  local_44 = *(int *)(iVar13 + 0x48);
  pbVar12 = pbVar9 + *(int *)(param_1 + 0x250);
  uVar14 = *(uint *)(iVar13 + 0xc);
  iVar15 = *(int *)(iVar13 + 0x3c);
  uVar8 = *(uint *)(iVar13 + 0x40);
  uVar5 = *(uint *)(iVar13 + 0x44);
  puVar16 = *(uint **)(iVar13 + 0x58);
  pbVar11 = pbVar9;
  local_40 = param_2;
  local_3c = param_3;
  if (0 < param_3) {
LAB_00740314:
    uVar6 = uVar5;
    pbVar11 = pbVar9;
    local_50 = puVar16;
    if (local_44 == 0) {
      do {
        uVar5 = uVar6;
        pbVar11 = pbVar9;
        if ((int)uVar6 < 0xb) {
          if (pbVar9 < pbVar12) {
            pbVar10 = pbVar9 + 1;
            uVar8 = uVar8 | (uint)*(byte *)(iVar15 + (uint)*pbVar9) << (uVar6 & 0xff);
            uVar5 = uVar6 + 8;
            pbVar11 = pbVar10;
            if ((int)uVar5 < 0xb) {
              if (pbVar12 <= pbVar10) goto LAB_00740338;
              pbVar11 = pbVar9 + 2;
              uVar8 = uVar8 | (uint)*(byte *)(iVar15 + (uint)*pbVar10) << (uVar5 & 0xff);
              uVar5 = uVar6 + 0x10;
            }
          }
          else {
            pbVar10 = pbVar9;
            if (uVar6 == 0) goto LAB_0074064c;
LAB_00740338:
            uVar5 = 0xb;
            pbVar11 = pbVar10;
          }
        }
        if ((uVar8 & 0x7ff) == 0) break;
        uVar6 = uVar5 - 1;
        uVar8 = uVar8 >> 1;
        pbVar9 = pbVar11;
      } while( true );
    }
    do {
      if ((int)uVar5 < 8) {
        if (pbVar11 < pbVar12) {
          uVar8 = uVar8 | (uint)*(byte *)(iVar15 + (uint)*pbVar11) << (uVar5 & 0xff);
          uVar5 = uVar5 + 8;
          pbVar11 = pbVar11 + 1;
        }
        else {
          bVar17 = uVar5 == 0;
          uVar5 = 8;
          pbVar9 = pbVar11;
          if (bVar17) goto LAB_0074064c;
        }
      }
      if ((uVar8 & 0xff) != 0) goto LAB_007403a0;
      uVar5 = uVar5 - 8;
      uVar8 = uVar8 >> 8;
    } while( true );
  }
LAB_00740970:
  *(uint *)(iVar13 + 0x44) = uVar5;
  *(uint *)(iVar13 + 0x40) = uVar8;
  *(int *)(iVar13 + 0x48) = local_44;
  *(byte **)(param_1 + 0x24c) = pbVar11;
  *(byte **)(param_1 + 0x250) = pbVar9 + (*(int *)(param_1 + 0x250) - (int)pbVar11);
  return 1;
LAB_0074064c:
  if (uVar14 != 0) {
    FUN_007401cc("Fax3Decode1D",param_1,*(undefined4 *)(iVar13 + 0x6c),0,uVar14);
    local_50 = puVar16 + 1;
    *puVar16 = uVar14;
    if ((int)uVar14 < 1) {
      puVar16[1] = 0;
      local_50 = puVar16 + 2;
    }
  }
  goto LAB_007406ac;
LAB_007403a0:
  for (; (uVar8 & 1) == 0; uVar8 = uVar8 >> 1) {
    uVar5 = uVar5 - 1;
  }
  local_4c = 0;
  uVar6 = 0;
  uVar5 = uVar5 - 1;
  uVar8 = uVar8 >> 1;
LAB_007403cc:
  uVar7 = uVar5;
  pbVar9 = pbVar11;
  if ((int)uVar5 < 0xc) {
    if (pbVar11 < pbVar12) {
      pbVar9 = pbVar11 + 1;
      uVar8 = uVar8 | (uint)*(byte *)(iVar15 + (uint)*pbVar11) << (uVar5 & 0xff);
      uVar7 = uVar5 + 8;
      if ((int)uVar7 < 0xc) {
        if (pbVar12 <= pbVar9) goto LAB_007403e4;
        uVar8 = uVar8 | (uint)*(byte *)(iVar15 + (uint)*pbVar9) << (uVar7 & 0xff);
        uVar7 = uVar5 + 0x10;
        pbVar9 = pbVar11 + 2;
      }
    }
    else {
      puVar3 = local_50;
      if (uVar5 == 0) {
LAB_00740860:
        local_50 = puVar3;
        FUN_00740158("Fax3Decode1D",param_1,*(undefined4 *)(iVar13 + 0x6c),uVar6);
        if (local_4c != 0) {
          *local_50 = local_4c;
          local_50 = local_50 + 1;
        }
        if (uVar6 == uVar14) goto LAB_007409b4;
        FUN_007401cc("Fax3Decode1D",param_1,*(undefined4 *)(iVar13 + 0x6c),uVar6,uVar14);
        if ((int)uVar14 < (int)uVar6 && puVar16 < local_50) {
          do {
            local_50 = local_50 + -1;
            uVar6 = uVar6 - *local_50;
          } while (puVar16 < local_50 && (int)uVar14 < (int)uVar6);
        }
        if ((int)uVar6 < (int)uVar14) {
          local_44 = 0;
          if (((int)local_50 - (int)puVar16 & 4U) != 0) {
            *local_50 = 0;
            local_50 = local_50 + 1;
          }
          *local_50 = uVar14 - (uVar6 & ~((int)uVar6 >> 0x1f));
          local_50 = local_50 + 1;
        }
        else {
          if ((int)uVar6 <= (int)uVar14) {
LAB_007409b4:
            local_44 = 0;
            goto LAB_007406ac;
          }
          local_44 = 0;
          *local_50 = uVar14;
          local_50[1] = 0;
          local_50 = local_50 + 2;
        }
LAB_007406ac:
        (**(code **)(iVar13 + 0x4c))(local_40,puVar16,local_50,uVar14);
        *(uint *)(iVar13 + 0x40) = uVar8;
        *(undefined4 *)(iVar13 + 0x44) = 0;
        *(int *)(iVar13 + 0x48) = local_44;
        iVar13 = *(int *)(param_1 + 0x24c);
        *(byte **)(param_1 + 0x24c) = pbVar9;
        *(int *)(param_1 + 0x250) = (iVar13 + *(int *)(param_1 + 0x250)) - (int)pbVar9;
        return 0xffffffff;
      }
LAB_007403e4:
      uVar7 = 0xc;
    }
  }
  pbVar11 = pbVar9;
  uVar2 = uVar8 & 0xfff;
  iVar1 = uVar2 * 8;
  uVar8 = uVar8 >> (uint)(byte)TIFFFaxWhiteTable[iVar1 + 1];
  uVar5 = uVar7 - (byte)TIFFFaxWhiteTable[iVar1 + 1];
  switch(TIFFFaxWhiteTable[uVar2 * 8]) {
  case 7:
    puVar3 = local_50 + 1;
    *local_50 = local_4c + *(int *)(TIFFFaxWhiteTable + iVar1 + 4);
    uVar6 = uVar6 + *(int *)(TIFFFaxWhiteTable + iVar1 + 4);
    puVar4 = puVar3;
    if ((int)uVar6 < (int)uVar14) {
      local_4c = 0;
      pbVar9 = pbVar11;
      do {
        uVar7 = uVar5;
        pbVar11 = pbVar9;
        if ((int)uVar5 < 0xd) {
          if (pbVar9 < pbVar12) {
            pbVar10 = pbVar9 + 1;
            uVar8 = uVar8 | (uint)*(byte *)(iVar15 + (uint)*pbVar9) << (uVar5 & 0xff);
            uVar7 = uVar5 + 8;
            pbVar11 = pbVar10;
            if ((int)uVar7 < 0xd) {
              if (pbVar12 <= pbVar10) goto LAB_007405fc;
              pbVar11 = pbVar9 + 2;
              uVar8 = uVar8 | (uint)*(byte *)(iVar15 + (uint)*pbVar10) << (uVar7 & 0xff);
              uVar7 = uVar5 + 0x10;
            }
          }
          else {
            if (uVar5 == 0) goto LAB_00740860;
LAB_007405fc:
            uVar7 = 0xd;
          }
        }
        uVar2 = uVar8 & 0x1fff;
        iVar1 = uVar2 * 8;
        uVar8 = uVar8 >> (uint)(byte)TIFFFaxBlackTable[iVar1 + 1];
        uVar5 = uVar7 - (byte)TIFFFaxBlackTable[iVar1 + 1];
        switch(TIFFFaxBlackTable[uVar2 * 8]) {
        case 8:
          goto LAB_007407c8;
        case 9:
        default:
          FUN_0073ef34("Fax3Decode1D",param_1,*(undefined4 *)(iVar13 + 0x6c),uVar6);
          local_44 = 0;
          local_50 = puVar3;
          goto LAB_0074043c;
        case 10:
          break;
        case 0xb:
          break;
        case 0xc:
          local_44 = 1;
          local_50 = puVar3;
          goto LAB_0074043c;
        }
        local_4c = local_4c + *(int *)(TIFFFaxBlackTable + iVar1 + 4);
        uVar6 = uVar6 + *(int *)(TIFFFaxBlackTable + iVar1 + 4);
        pbVar9 = pbVar11;
      } while( true );
    }
    goto LAB_0074078c;
  case 8:
    goto switchD_00740414_caseD_8;
  case 9:
    break;
  case 10:
    goto switchD_00740414_default;
  case 0xb:
    break;
  case 0xc:
    local_44 = 1;
    goto LAB_0074043c;
  default:
    goto switchD_00740414_default;
  }
  uVar6 = uVar6 + *(int *)(TIFFFaxWhiteTable + iVar1 + 4);
  local_4c = local_4c + *(int *)(TIFFFaxWhiteTable + iVar1 + 4);
  goto LAB_007403cc;
switchD_00740414_caseD_8:
switchD_00740414_default:
  FUN_0073ef34("Fax3Decode1D",param_1,*(undefined4 *)(iVar13 + 0x6c),uVar6);
  local_44 = 0;
LAB_0074043c:
  if (local_4c != 0) {
    *local_50 = local_4c;
    local_50 = local_50 + 1;
  }
LAB_00740450:
  if (uVar6 != uVar14) {
    FUN_007401cc("Fax3Decode1D",param_1,*(undefined4 *)(iVar13 + 0x6c),uVar6,uVar14);
    if (puVar16 < local_50 && (int)uVar14 < (int)uVar6) {
      do {
        local_50 = local_50 + -1;
        uVar6 = uVar6 - *local_50;
      } while (puVar16 < local_50 && (int)uVar14 < (int)uVar6);
    }
    if ((int)uVar6 < (int)uVar14) {
      if (((int)local_50 - (int)puVar16 & 4U) != 0) {
        *local_50 = 0;
        local_50 = local_50 + 1;
      }
      *local_50 = uVar14 - (uVar6 & ~((int)uVar6 >> 0x1f));
      local_50 = local_50 + 1;
    }
    else if ((int)uVar14 < (int)uVar6) {
      *local_50 = uVar14;
      local_50[1] = 0;
      local_50 = local_50 + 2;
    }
  }
  (**(code **)(iVar13 + 0x4c))(local_40,puVar16,local_50,uVar14);
  local_3c = local_3c - *(int *)(iVar13 + 8);
  *(int *)(iVar13 + 0x6c) = *(int *)(iVar13 + 0x6c) + 1;
  if (local_3c < 1) goto LAB_00740964;
  local_40 = local_40 + *(int *)(iVar13 + 8);
  pbVar9 = pbVar11;
  goto LAB_00740314;
LAB_007407c8:
  puVar4 = local_50 + 2;
  *puVar3 = local_4c + *(int *)(TIFFFaxBlackTable + iVar1 + 4);
  uVar6 = uVar6 + *(int *)(TIFFFaxBlackTable + iVar1 + 4);
  if ((int)uVar14 <= (int)uVar6) {
LAB_0074078c:
    local_44 = 0;
    local_50 = puVar4;
    goto LAB_00740450;
  }
  if ((local_50[1] == 0) && (*local_50 == 0)) {
    local_4c = 0;
  }
  else {
    local_4c = 0;
    local_50 = puVar4;
  }
  goto LAB_007403cc;
LAB_00740964:
  pbVar9 = *(byte **)(param_1 + 0x24c);
  goto LAB_00740970;
}

// ---- FUN_00740a0c  @ 0x740a0c
undefined4 FUN_00740a0c(undefined4 *param_1,int param_2,int param_3)

{
  char cVar1;
  char *pcVar2;
  uint uVar3;
  int iVar4;
  undefined4 uVar5;
  int iVar6;
  undefined1 *puVar7;
  uint *puVar8;
  uint *puVar9;
  uint *puVar10;
  uint uVar11;
  uint uVar12;
  uint uVar13;
  byte *pbVar14;
  byte *pbVar15;
  byte *pbVar16;
  byte *pbVar17;
  uint uVar18;
  int iVar19;
  uint uVar20;
  uint *puVar21;
  int iVar22;
  uint uVar23;
  bool bVar24;
  uint *local_5c;
  uint local_58;
  char *local_54;
  int local_48;
  int local_44;
  undefined4 local_40;
  
  iVar19 = param_1[0x8e];
  pbVar14 = (byte *)param_1[0x93];
  local_54 = *(char **)(iVar19 + 0x48);
  pbVar17 = pbVar14 + param_1[0x94];
  uVar20 = *(uint *)(iVar19 + 0xc);
  iVar22 = *(int *)(iVar19 + 0x3c);
  uVar13 = *(uint *)(iVar19 + 0x40);
  uVar11 = *(uint *)(iVar19 + 0x44);
  pbVar16 = pbVar14;
  if (0 < param_3) {
    puVar21 = *(uint **)(iVar19 + 0x58);
    local_48 = param_2;
    local_44 = param_3;
LAB_00740aa8:
    uVar12 = uVar11;
    pbVar14 = pbVar16;
    local_5c = puVar21;
    if (local_54 == (char *)0x0) {
      do {
        uVar11 = uVar12;
        pbVar16 = pbVar14;
        if ((int)uVar12 < 0xb) {
          if (pbVar14 < pbVar17) {
            pbVar15 = pbVar14 + 1;
            uVar13 = uVar13 | (uint)*(byte *)(iVar22 + (uint)*pbVar14) << (uVar12 & 0xff);
            uVar11 = uVar12 + 8;
            pbVar16 = pbVar15;
            if ((int)uVar11 < 0xb) {
              if (pbVar17 <= pbVar15) goto LAB_00740acc;
              pbVar16 = pbVar14 + 2;
              uVar13 = uVar13 | (uint)*(byte *)(iVar22 + (uint)*pbVar15) << (uVar11 & 0xff);
              uVar11 = uVar12 + 0x10;
            }
          }
          else {
            pbVar15 = pbVar14;
            if (uVar12 == 0) goto LAB_00740c08;
LAB_00740acc:
            uVar11 = 0xb;
            pbVar16 = pbVar15;
          }
        }
        pbVar14 = pbVar16;
        if ((uVar13 & 0x7ff) == 0) break;
        uVar12 = uVar11 - 1;
        uVar13 = uVar13 >> 1;
      } while( true );
    }
    do {
      if ((int)uVar11 < 8) {
        if (pbVar14 < pbVar17) {
          uVar13 = uVar13 | (uint)*(byte *)(iVar22 + (uint)*pbVar14) << (uVar11 & 0xff);
          uVar11 = uVar11 + 8;
          pbVar14 = pbVar14 + 1;
        }
        else {
          bVar24 = uVar11 == 0;
          uVar11 = 8;
          if (bVar24) goto LAB_00740c08;
        }
      }
      if ((uVar13 & 0xff) != 0) goto LAB_00740b34;
      uVar11 = uVar11 - 8;
      uVar13 = uVar13 >> 8;
    } while( true );
  }
LAB_007419b4:
  *(uint *)(iVar19 + 0x44) = uVar11;
  *(uint *)(iVar19 + 0x40) = uVar13;
  *(char **)(iVar19 + 0x48) = local_54;
  param_1[0x93] = pbVar16;
  param_1[0x94] = pbVar14 + (param_1[0x94] - (int)pbVar16);
  return 1;
LAB_00740b34:
  for (; (uVar13 & 1) == 0; uVar13 = uVar13 >> 1) {
    uVar11 = uVar11 - 1;
  }
  uVar12 = uVar11 - 1;
  uVar13 = uVar13 >> 1;
  pbVar16 = pbVar14;
  if ((int)uVar12 < 1) {
    if (pbVar14 < pbVar17) {
      pbVar16 = pbVar14 + 1;
      uVar11 = uVar11 + 6;
      uVar13 = uVar13 | (uint)*(byte *)(iVar22 + (uint)*pbVar14) << (uVar12 & 0xff);
    }
    else {
      if (uVar12 == 0) {
        local_54 = (char *)0x0;
LAB_00740c08:
        if (uVar20 != 0) {
          FUN_007401cc("Fax3Decode2D",param_1,*(undefined4 *)(iVar19 + 0x6c),0,uVar20);
          local_5c = puVar21 + 1;
          *puVar21 = uVar20;
          if ((int)uVar20 < 1) {
            puVar21[1] = 0;
            local_5c = puVar21 + 2;
          }
        }
        goto LAB_00740c54;
      }
      uVar11 = 0;
    }
  }
  else {
    uVar11 = uVar11 - 2;
  }
  uVar18 = uVar13 & 1;
  uVar13 = uVar13 >> 1;
  uVar12 = **(uint **)(iVar19 + 0x54);
  if (uVar18 != 0) {
    local_58 = 0;
    uVar18 = 0;
LAB_00740b84:
    do {
      uVar12 = uVar11;
      pbVar14 = pbVar16;
      if ((int)uVar11 < 0xc) {
        if (pbVar16 < pbVar17) {
          pbVar14 = pbVar16 + 1;
          uVar13 = uVar13 | (uint)*(byte *)(iVar22 + (uint)*pbVar16) << (uVar11 & 0xff);
          uVar12 = uVar11 + 8;
          if ((int)uVar12 < 0xc) {
            if (pbVar17 <= pbVar14) goto LAB_00740bb4;
            uVar13 = uVar13 | (uint)*(byte *)(iVar22 + (uint)*pbVar14) << (uVar12 & 0xff);
            uVar12 = uVar11 + 0x10;
            pbVar14 = pbVar16 + 2;
          }
          goto LAB_00740bb8;
        }
        puVar10 = local_5c;
        if (uVar11 != 0) {
LAB_00740bb4:
          uVar12 = 0xc;
          goto LAB_00740bb8;
        }
LAB_00740ff0:
        local_5c = puVar10;
        FUN_00740158("Fax3Decode2D",param_1,*(undefined4 *)(iVar19 + 0x6c),uVar18);
        if (local_58 != 0) {
          *local_5c = local_58;
          local_5c = local_5c + 1;
        }
        if (uVar18 != uVar20) {
          FUN_007401cc("Fax3Decode2D",param_1,*(undefined4 *)(iVar19 + 0x6c),uVar18,uVar20);
          if ((int)uVar20 < (int)uVar18 && puVar21 < local_5c) {
            do {
              local_5c = local_5c + -1;
              uVar18 = uVar18 - *local_5c;
            } while (puVar21 < local_5c && (int)uVar20 < (int)uVar18);
          }
          if ((int)uVar18 < (int)uVar20) goto LAB_00741bec;
          if ((int)uVar20 < (int)uVar18) goto LAB_007410a0;
        }
        local_54 = (char *)0x0;
        goto LAB_00740c54;
      }
LAB_00740bb8:
      pbVar16 = pbVar14;
      uVar3 = uVar13 & 0xfff;
      iVar6 = uVar3 * 8;
      uVar13 = uVar13 >> (uint)(byte)TIFFFaxWhiteTable[iVar6 + 1];
      uVar11 = uVar12 - (byte)TIFFFaxWhiteTable[iVar6 + 1];
      switch(TIFFFaxWhiteTable[uVar3 * 8]) {
      case 7:
        puVar10 = local_5c + 1;
        *local_5c = local_58 + *(int *)(TIFFFaxWhiteTable + iVar6 + 4);
        uVar18 = uVar18 + *(int *)(TIFFFaxWhiteTable + iVar6 + 4);
        puVar8 = puVar10;
        if ((int)uVar18 < (int)uVar20) {
          local_58 = 0;
          pbVar14 = pbVar16;
          do {
            uVar12 = uVar11;
            pbVar16 = pbVar14;
            if ((int)uVar11 < 0xd) {
              if (pbVar14 < pbVar17) {
                pbVar15 = pbVar14 + 1;
                uVar13 = uVar13 | (uint)*(byte *)(iVar22 + (uint)*pbVar14) << (uVar11 & 0xff);
                uVar12 = uVar11 + 8;
                pbVar16 = pbVar15;
                if ((int)uVar12 < 0xd) {
                  if (pbVar17 <= pbVar15) goto LAB_00740f68;
                  pbVar16 = pbVar14 + 2;
                  uVar13 = uVar13 | (uint)*(byte *)(iVar22 + (uint)*pbVar15) << (uVar12 & 0xff);
                  uVar12 = uVar11 + 0x10;
                }
              }
              else {
                pbVar15 = pbVar14;
                if (uVar11 == 0) goto LAB_00740ff0;
LAB_00740f68:
                uVar12 = 0xd;
                pbVar16 = pbVar15;
              }
            }
            uVar3 = uVar13 & 0x1fff;
            iVar6 = uVar3 * 8;
            uVar13 = uVar13 >> (uint)(byte)TIFFFaxBlackTable[iVar6 + 1];
            uVar11 = uVar12 - (byte)TIFFFaxBlackTable[iVar6 + 1];
            switch(TIFFFaxBlackTable[uVar3 * 8]) {
            case 8:
              goto LAB_007415c8;
            case 9:
            default:
              local_54 = (char *)0x0;
              FUN_0073ef34("Fax3Decode2D",param_1,*(undefined4 *)(iVar19 + 0x6c),uVar18);
              local_5c = puVar10;
              goto LAB_00740dc4;
            case 10:
              break;
            case 0xb:
              break;
            case 0xc:
              local_54 = (char *)0x1;
              local_5c = puVar10;
              goto LAB_00740dc4;
            }
            local_58 = local_58 + *(int *)(TIFFFaxBlackTable + iVar6 + 4);
            uVar18 = uVar18 + *(int *)(TIFFFaxBlackTable + iVar6 + 4);
            pbVar14 = pbVar16;
          } while( true );
        }
        goto LAB_007415f4;
      case 8:
        goto switchD_00740be4_caseD_8;
      case 9:
        goto LAB_00740ef8;
      case 10:
        goto switchD_00740be4_default;
      case 0xb:
LAB_00740ef8:
        uVar18 = uVar18 + *(int *)(TIFFFaxWhiteTable + iVar6 + 4);
        local_58 = local_58 + *(int *)(TIFFFaxWhiteTable + iVar6 + 4);
        break;
      case 0xc:
        local_54 = (char *)0x1;
        goto LAB_00740dc4;
      default:
        goto switchD_00740be4_default;
      }
    } while( true );
  }
  if (0 < (int)uVar20) {
    puVar10 = *(uint **)(iVar19 + 0x54) + 1;
    uVar18 = 0;
    local_58 = 0;
LAB_00740d10:
    puVar8 = local_5c;
    puVar9 = local_5c;
    if ((int)uVar11 < 7) {
      if (pbVar16 < pbVar17) {
        uVar13 = uVar13 | (uint)*(byte *)(iVar22 + (uint)*pbVar16) << (uVar11 & 0xff);
        uVar11 = uVar11 + 8;
        pbVar16 = pbVar16 + 1;
        goto LAB_00740d2c;
      }
      if (uVar11 != 0) {
        uVar11 = 7;
        goto LAB_00740d2c;
      }
LAB_00741b28:
      local_5c = puVar9;
      FUN_00740158("Fax3Decode2D",param_1,*(undefined4 *)(iVar19 + 0x6c),uVar18);
      pbVar14 = pbVar16;
      if (local_58 != 0) goto LAB_00741b50;
      goto LAB_00741b60;
    }
LAB_00740d2c:
    uVar3 = uVar13 & 0x7f;
    iVar6 = uVar3 * 8;
    uVar13 = uVar13 >> (uint)(byte)TIFFFaxMainTable[iVar6 + 1];
    uVar11 = uVar11 - (byte)TIFFFaxMainTable[iVar6 + 1];
    pbVar14 = pbVar16;
    switch(TIFFFaxMainTable[uVar3 * 8]) {
    case 1:
      if (puVar21 != local_5c) {
        iVar6 = uVar18 - uVar12;
        uVar3 = uVar18;
        if ((int)uVar12 <= (int)uVar18) {
          iVar6 = uVar20 - uVar12;
          uVar3 = uVar20;
        }
        puVar8 = puVar10;
        if (uVar3 != uVar12 && iVar6 < 0 == SBORROW4(uVar3,uVar12)) {
          do {
            puVar10 = puVar8 + 2;
            uVar12 = puVar8[1] + *puVar8 + uVar12;
            puVar8 = puVar10;
          } while ((int)uVar12 <= (int)uVar18 && (int)uVar12 < (int)uVar20);
        }
      }
      puVar8 = puVar10 + 1;
      iVar6 = local_58 - uVar18;
      uVar18 = uVar12 + *puVar10;
      puVar10 = puVar10 + 2;
      uVar12 = uVar18 + *puVar8;
      local_58 = iVar6 + uVar18;
      break;
    case 2:
      if (((int)local_5c - (int)puVar21 & 4U) == 0) {
        do {
          uVar3 = uVar11;
          pbVar14 = pbVar16;
          if ((int)uVar11 < 0xc) {
            if (pbVar16 < pbVar17) {
              pbVar15 = pbVar16 + 1;
              uVar13 = uVar13 | (uint)*(byte *)(iVar22 + (uint)*pbVar16) << (uVar11 & 0xff);
              uVar3 = uVar11 + 8;
              pbVar14 = pbVar15;
              if ((int)uVar3 < 0xc) {
                if (pbVar17 <= pbVar15) goto LAB_00741624;
                pbVar14 = pbVar16 + 2;
                uVar13 = uVar13 | (uint)*(byte *)(iVar22 + (uint)*pbVar15) << (uVar3 & 0xff);
                uVar3 = uVar11 + 0x10;
              }
            }
            else {
              pbVar15 = pbVar16;
              if (uVar11 == 0) goto LAB_00741b28;
LAB_00741624:
              uVar3 = 0xc;
              pbVar14 = pbVar15;
            }
          }
          cVar1 = TIFFFaxWhiteTable[(uVar13 & 0xfff) * 8];
          iVar6 = (uVar13 & 0xfff) * 8;
          uVar13 = uVar13 >> (uint)(byte)TIFFFaxWhiteTable[iVar6 + 1];
          uVar11 = uVar3 - (byte)TIFFFaxWhiteTable[iVar6 + 1];
          pbVar16 = pbVar14;
          if ((cVar1 != '\t') && (cVar1 != '\v')) goto code_r0x00741660;
          uVar18 = uVar18 + *(int *)(TIFFFaxWhiteTable + iVar6 + 4);
          local_58 = local_58 + *(int *)(TIFFFaxWhiteTable + iVar6 + 4);
        } while( true );
      }
      do {
        uVar3 = uVar11;
        pbVar14 = pbVar16;
        if ((int)uVar11 < 0xd) {
          if (pbVar16 < pbVar17) {
            pbVar15 = pbVar16 + 1;
            uVar13 = uVar13 | (uint)*(byte *)(iVar22 + (uint)*pbVar16) << (uVar11 & 0xff);
            uVar3 = uVar11 + 8;
            pbVar14 = pbVar15;
            if ((int)uVar3 < 0xd) {
              if (pbVar17 <= pbVar15) goto LAB_00741524;
              pbVar14 = pbVar16 + 2;
              uVar13 = uVar13 | (uint)*(byte *)(iVar22 + (uint)*pbVar15) << (uVar3 & 0xff);
              uVar3 = uVar11 + 0x10;
            }
          }
          else {
            pbVar15 = pbVar16;
            if (uVar11 == 0) goto LAB_00741b28;
LAB_00741524:
            uVar3 = 0xd;
            pbVar14 = pbVar15;
          }
        }
        uVar23 = (uint)(byte)TIFFFaxBlackTable[(uVar13 & 0x1fff) * 8];
        iVar6 = (uVar13 & 0x1fff) * 8;
        uVar13 = uVar13 >> (uint)(byte)TIFFFaxBlackTable[iVar6 + 1];
        uVar11 = uVar3 - (byte)TIFFFaxBlackTable[iVar6 + 1];
        pbVar16 = pbVar14;
        if (uVar23 == 8) goto LAB_0074177c;
        if ((uVar23 < 8) || (1 < uVar23 - 10)) goto LAB_00741568;
        uVar18 = uVar18 + *(int *)(TIFFFaxBlackTable + iVar6 + 4);
        local_58 = local_58 + *(int *)(TIFFFaxBlackTable + iVar6 + 4);
      } while( true );
    case 3:
      if (puVar21 != local_5c) {
        iVar6 = uVar18 - uVar12;
        uVar3 = uVar18;
        if ((int)uVar12 <= (int)uVar18) {
          iVar6 = uVar20 - uVar12;
          uVar3 = uVar20;
        }
        puVar8 = puVar10;
        if (uVar3 != uVar12 && iVar6 < 0 == SBORROW4(uVar3,uVar12)) {
          do {
            puVar10 = puVar8 + 2;
            uVar12 = puVar8[1] + *puVar8 + uVar12;
            puVar8 = puVar10;
          } while ((int)uVar12 <= (int)uVar18 && (int)uVar12 < (int)uVar20);
        }
      }
      iVar6 = uVar12 - uVar18;
      uVar18 = uVar18 + iVar6;
      *local_5c = iVar6 + local_58;
      local_58 = 0;
      uVar12 = uVar12 + *puVar10;
      puVar10 = puVar10 + 1;
      local_5c = local_5c + 1;
      break;
    case 4:
      if (puVar21 != local_5c) {
        iVar4 = uVar18 - uVar12;
        uVar3 = uVar18;
        if ((int)uVar12 <= (int)uVar18) {
          iVar4 = uVar20 - uVar12;
          uVar3 = uVar20;
        }
        puVar8 = puVar10;
        if (uVar3 != uVar12 && iVar4 < 0 == SBORROW4(uVar3,uVar12)) {
          do {
            puVar10 = puVar8 + 2;
            uVar12 = puVar8[1] + *puVar8 + uVar12;
            puVar8 = puVar10;
          } while ((int)uVar12 <= (int)uVar18 && (int)uVar12 < (int)uVar20);
        }
      }
      iVar4 = local_58 + *(int *)(TIFFFaxMainTable + iVar6 + 4);
      local_58 = 0;
      *local_5c = iVar4 + (uVar12 - uVar18);
      uVar18 = uVar18 + *(int *)(TIFFFaxMainTable + iVar6 + 4) + (uVar12 - uVar18);
      uVar12 = uVar12 + *puVar10;
      puVar10 = puVar10 + 1;
      local_5c = local_5c + 1;
      break;
    case 5:
      if (puVar21 != local_5c) {
        iVar4 = uVar18 - uVar12;
        uVar3 = uVar18;
        if ((int)uVar12 <= (int)uVar18) {
          iVar4 = uVar20 - uVar12;
          uVar3 = uVar20;
        }
        puVar8 = puVar10;
        if (uVar3 != uVar12 && iVar4 < 0 == SBORROW4(uVar3,uVar12)) {
          do {
            puVar10 = puVar8 + 2;
            uVar12 = puVar8[1] + *puVar8 + uVar12;
            puVar8 = puVar10;
          } while ((int)uVar12 <= (int)uVar18 && (int)uVar12 < (int)uVar20);
        }
      }
      iVar4 = local_58 - *(int *)(TIFFFaxMainTable + iVar6 + 4);
      local_58 = 0;
      *local_5c = iVar4 + (uVar12 - uVar18);
      uVar18 = (uVar18 - *(int *)(TIFFFaxMainTable + iVar6 + 4)) + (uVar12 - uVar18);
      uVar12 = uVar12 - puVar10[-1];
      puVar10 = puVar10 + -1;
      local_5c = local_5c + 1;
      break;
    case 6:
      *local_5c = uVar20 - uVar18;
      if ((param_1[3] & 0x400) == 0) {
        local_40 = param_1[0x74];
        local_54 = "strip";
      }
      else {
        local_40 = param_1[0x7a];
        local_54 = "tile";
      }
      pcVar2 = local_54;
      local_54 = (char *)0x0;
      TIFFErrorExt(param_1[0x99],"Fax3Decode2D",
                   "%s: Uncompressed data (not supported) at line %u of %s %u (x %u)",*param_1,
                   *(undefined4 *)(iVar19 + 0x6c),pcVar2,local_40,uVar18);
      local_5c = local_5c + 1;
      goto LAB_007413b4;
    case 7:
      goto switchD_00740d58_default;
    case 8:
      goto switchD_00740d58_default;
    case 9:
      goto switchD_00740d58_default;
    case 10:
      goto switchD_00740d58_default;
    case 0xb:
      goto switchD_00740d58_default;
    case 0xc:
      uVar12 = uVar11;
      if (3 < (int)uVar11) {
        uVar12 = uVar11 - 4;
      }
      *local_5c = uVar20 - uVar18;
      if ((int)uVar11 < 4) {
        if (pbVar16 < pbVar17) {
          pbVar14 = pbVar16 + 1;
          uVar13 = uVar13 | (uint)*(byte *)(iVar22 + (uint)*pbVar16) << (uVar12 & 0xff);
          uVar12 = uVar12 + 4;
        }
        else {
          puVar9 = local_5c + 1;
          if (uVar12 == 0) goto LAB_00741b28;
          uVar12 = 0;
        }
      }
      if ((uVar13 & 0xf) != 0) {
        FUN_0073ef34("Fax3Decode2D",param_1,*(undefined4 *)(iVar19 + 0x6c),uVar18);
      }
      uVar13 = uVar13 >> 4;
      local_54 = (char *)0x1;
      uVar11 = uVar12;
      pbVar16 = pbVar14;
      local_5c = local_5c + 1;
      goto LAB_007413b4;
    default:
      goto switchD_00740d58_default;
    }
    goto LAB_00741334;
  }
  uVar18 = 0;
LAB_00741380:
  local_54 = (char *)0x0;
LAB_007413cc:
  if (uVar18 != uVar20) {
    FUN_007401cc("Fax3Decode2D",param_1,*(undefined4 *)(iVar19 + 0x6c),uVar18,uVar20);
    if (puVar21 < local_5c && (int)uVar20 < (int)uVar18) {
      do {
        local_5c = local_5c + -1;
        uVar18 = uVar18 - *local_5c;
      } while (puVar21 < local_5c && (int)uVar20 < (int)uVar18);
    }
    if ((int)uVar18 < (int)uVar20) {
      if (((int)local_5c - (int)puVar21 & 4U) != 0) {
        *local_5c = 0;
        local_5c = local_5c + 1;
      }
      *local_5c = uVar20 - (uVar18 & ~((int)uVar18 >> 0x1f));
      local_5c = local_5c + 1;
    }
    else if ((int)uVar20 < (int)uVar18) {
      *local_5c = uVar20;
      local_5c[1] = 0;
      local_5c = local_5c + 2;
    }
  }
LAB_00740e88:
  (**(code **)(iVar19 + 0x4c))(local_48,puVar21,local_5c,uVar20);
  uVar5 = *(undefined4 *)(iVar19 + 0x58);
  *local_5c = 0;
  puVar21 = *(uint **)(iVar19 + 0x54);
  local_44 = local_44 - *(int *)(iVar19 + 8);
  *(undefined4 *)(iVar19 + 0x54) = uVar5;
  *(int *)(iVar19 + 0x6c) = *(int *)(iVar19 + 0x6c) + 1;
  *(uint **)(iVar19 + 0x58) = puVar21;
  if (local_44 < 1) goto LAB_007419ac;
  local_48 = local_48 + *(int *)(iVar19 + 8);
  goto LAB_00740aa8;
switchD_00740be4_caseD_8:
switchD_00740be4_default:
  local_54 = (char *)0x0;
  FUN_0073ef34("Fax3Decode2D",param_1,*(undefined4 *)(iVar19 + 0x6c),uVar18);
LAB_00740dc4:
  if (local_58 != 0) {
    *local_5c = local_58;
    local_5c = local_5c + 1;
  }
LAB_00740dd8:
  if (uVar18 != uVar20) {
    FUN_007401cc("Fax3Decode2D",param_1,*(undefined4 *)(iVar19 + 0x6c),uVar18,uVar20);
    if (puVar21 < local_5c && (int)uVar20 < (int)uVar18) {
      do {
        local_5c = local_5c + -1;
        uVar18 = uVar18 - *local_5c;
      } while (puVar21 < local_5c && (int)uVar20 < (int)uVar18);
    }
    if ((int)uVar18 < (int)uVar20) {
      if (((int)local_5c - (int)puVar21 & 4U) != 0) {
        *local_5c = 0;
        local_5c = local_5c + 1;
      }
      *local_5c = uVar20 - (uVar18 & ~((int)uVar18 >> 0x1f));
      local_5c = local_5c + 1;
    }
    else if ((int)uVar20 < (int)uVar18) {
      *local_5c = uVar20;
      local_5c[1] = 0;
      local_5c = local_5c + 2;
    }
  }
  goto LAB_00740e88;
LAB_007415c8:
  puVar8 = local_5c + 2;
  *puVar10 = local_58 + *(int *)(TIFFFaxBlackTable + iVar6 + 4);
  uVar18 = uVar18 + *(int *)(TIFFFaxBlackTable + iVar6 + 4);
  if ((int)uVar20 <= (int)uVar18) {
LAB_007415f4:
    local_54 = (char *)0x0;
    local_5c = puVar8;
    goto LAB_00740dd8;
  }
  if ((local_5c[1] == 0) && (*local_5c == 0)) {
    local_58 = 0;
  }
  else {
    local_58 = 0;
    local_5c = puVar8;
  }
  goto LAB_00740b84;
code_r0x00741660:
  if (cVar1 == '\a') {
    puVar9 = local_5c + 1;
    *local_5c = local_58 + *(int *)(TIFFFaxWhiteTable + iVar6 + 4);
    uVar18 = uVar18 + *(int *)(TIFFFaxWhiteTable + iVar6 + 4);
    local_58 = 0;
    do {
      uVar3 = uVar11;
      pbVar14 = pbVar16;
      if ((int)uVar11 < 0xd) {
        if (pbVar16 < pbVar17) {
          pbVar15 = pbVar16 + 1;
          uVar13 = uVar13 | (uint)*(byte *)(iVar22 + (uint)*pbVar16) << (uVar11 & 0xff);
          uVar3 = uVar11 + 8;
          pbVar14 = pbVar15;
          if ((int)uVar3 < 0xd) {
            if (pbVar17 <= pbVar15) goto LAB_00741af0;
            pbVar14 = pbVar16 + 2;
            uVar13 = uVar13 | (uint)*(byte *)(iVar22 + (uint)*pbVar15) << (uVar3 & 0xff);
            uVar3 = uVar11 + 0x10;
          }
        }
        else {
          if (uVar11 == 0) goto LAB_00741b28;
LAB_00741af0:
          uVar3 = 0xd;
        }
      }
      uVar23 = (uint)(byte)TIFFFaxBlackTable[(uVar13 & 0x1fff) * 8];
      iVar6 = (uVar13 & 0x1fff) * 8;
      puVar7 = TIFFFaxBlackTable + iVar6;
      uVar13 = uVar13 >> (uint)(byte)TIFFFaxBlackTable[iVar6 + 1];
      uVar11 = uVar3 - (byte)TIFFFaxBlackTable[iVar6 + 1];
      if (uVar23 == 8) goto LAB_00741834;
      if ((uVar23 < 8) || (1 < uVar23 - 10)) goto LAB_00741568;
      uVar18 = uVar18 + *(int *)(TIFFFaxBlackTable + iVar6 + 4);
      local_58 = local_58 + *(int *)(TIFFFaxBlackTable + iVar6 + 4);
      pbVar16 = pbVar14;
    } while( true );
  }
LAB_0074166c:
  local_5c = puVar9;
  uVar5 = *(undefined4 *)(iVar19 + 0x6c);
  pbVar16 = pbVar14;
LAB_00741684:
  local_54 = (char *)0x0;
  FUN_0073ef34("Fax3Decode2D",param_1,uVar5,uVar18);
  goto LAB_007413b4;
LAB_0074177c:
  *local_5c = local_58 + *(int *)(TIFFFaxBlackTable + iVar6 + 4);
  uVar18 = uVar18 + *(int *)(TIFFFaxBlackTable + iVar6 + 4);
  local_58 = 0;
  do {
    uVar3 = uVar11;
    pbVar14 = pbVar16;
    if ((int)uVar11 < 0xc) {
      if (pbVar16 < pbVar17) {
        pbVar15 = pbVar16 + 1;
        uVar13 = uVar13 | (uint)*(byte *)(iVar22 + (uint)*pbVar16) << (uVar11 & 0xff);
        uVar3 = uVar11 + 8;
        pbVar14 = pbVar15;
        if ((int)uVar3 < 0xc) {
          if (pbVar17 <= pbVar15) goto LAB_00741ae0;
          pbVar14 = pbVar16 + 2;
          uVar13 = uVar13 | (uint)*(byte *)(iVar22 + (uint)*pbVar15) << (uVar3 & 0xff);
          uVar3 = uVar11 + 0x10;
        }
      }
      else {
        puVar9 = local_5c + 1;
        if (uVar11 == 0) goto LAB_00741b28;
LAB_00741ae0:
        uVar3 = 0xc;
      }
    }
    cVar1 = TIFFFaxWhiteTable[(uVar13 & 0xfff) * 8];
    iVar6 = (uVar13 & 0xfff) * 8;
    puVar7 = TIFFFaxWhiteTable + iVar6;
    uVar13 = uVar13 >> (uint)(byte)TIFFFaxWhiteTable[iVar6 + 1];
    uVar11 = uVar3 - (byte)TIFFFaxWhiteTable[iVar6 + 1];
    if ((cVar1 != '\t') && (cVar1 != '\v')) break;
    uVar18 = uVar18 + *(int *)(TIFFFaxWhiteTable + iVar6 + 4);
    local_58 = local_58 + *(int *)(TIFFFaxWhiteTable + iVar6 + 4);
    pbVar16 = pbVar14;
  } while( true );
  puVar9 = local_5c + 1;
  if (cVar1 == '\a') {
LAB_00741834:
    local_5c = local_5c + 1;
    *local_5c = local_58 + *(int *)(puVar7 + 4);
    uVar18 = uVar18 + *(int *)(puVar7 + 4);
    if (puVar8 + 2 != puVar21) {
      iVar6 = uVar18 - uVar12;
      uVar3 = uVar18;
      if ((int)uVar12 <= (int)uVar18) {
        iVar6 = uVar20 - uVar12;
        uVar3 = uVar20;
      }
      puVar9 = puVar10;
      if (uVar3 != uVar12 && iVar6 < 0 == SBORROW4(uVar3,uVar12)) {
        do {
          puVar10 = puVar9 + 2;
          uVar12 = puVar9[1] + *puVar9 + uVar12;
          iVar6 = uVar18 - uVar12;
          uVar3 = uVar18;
          if ((int)uVar12 <= (int)uVar18) {
            iVar6 = uVar20 - uVar12;
            uVar3 = uVar20;
          }
          puVar9 = puVar10;
        } while (uVar3 != uVar12 && iVar6 < 0 == SBORROW4(uVar3,uVar12));
      }
    }
    local_58 = 0;
    local_5c = puVar8 + 2;
LAB_00741334:
    pbVar16 = pbVar14;
    if ((int)uVar20 <= (int)uVar18) goto code_r0x0074133c;
    goto LAB_00740d10;
  }
  goto LAB_0074166c;
LAB_00741568:
  local_5c = puVar9;
  uVar5 = *(undefined4 *)(iVar19 + 0x6c);
  pbVar16 = pbVar14;
  goto LAB_00741684;
code_r0x0074133c:
  if (local_58 == 0) goto LAB_00741380;
  if ((int)uVar20 <= (int)(uVar18 + local_58)) {
LAB_00741370:
    *local_5c = local_58;
    local_5c = local_5c + 1;
    goto LAB_00741380;
  }
  if ((int)uVar11 < 1) {
    if (pbVar14 < pbVar17) {
      pbVar16 = pbVar14 + 1;
      uVar13 = uVar13 | (uint)*(byte *)(iVar22 + (uint)*pbVar14) << (uVar11 & 0xff);
      uVar11 = uVar11 + 8;
    }
    else {
      if (uVar11 == 0) {
        FUN_00740158("Fax3Decode2D",param_1,*(undefined4 *)(iVar19 + 0x6c),uVar18);
LAB_00741b50:
        *local_5c = local_58;
        local_5c = local_5c + 1;
LAB_00741b60:
        if (uVar18 == uVar20) goto LAB_00741be0;
        FUN_007401cc("Fax3Decode2D",param_1,*(undefined4 *)(iVar19 + 0x6c),uVar18,uVar20);
        if (puVar21 < local_5c && (int)uVar20 < (int)uVar18) {
          do {
            local_5c = local_5c + -1;
            uVar18 = uVar18 - *local_5c;
          } while (puVar21 < local_5c && (int)uVar20 < (int)uVar18);
        }
        if ((int)uVar18 < (int)uVar20) {
LAB_00741bec:
          if (((int)local_5c - (int)puVar21 & 4U) != 0) {
            *local_5c = 0;
            local_5c = local_5c + 1;
          }
          local_54 = (char *)0x0;
          *local_5c = uVar20 - (uVar18 & ~((int)uVar18 >> 0x1f));
          local_5c = local_5c + 1;
        }
        else if ((int)uVar20 < (int)uVar18) {
LAB_007410a0:
          local_54 = (char *)0x0;
          *local_5c = uVar20;
          local_5c[1] = 0;
          local_5c = local_5c + 2;
        }
        else {
LAB_00741be0:
          local_54 = (char *)0x0;
        }
LAB_00740c54:
        (**(code **)(iVar19 + 0x4c))(local_48,puVar21,local_5c,uVar20);
        *(undefined4 *)(iVar19 + 0x44) = 0;
        *(char **)(iVar19 + 0x48) = local_54;
        *(uint *)(iVar19 + 0x40) = uVar13;
        iVar19 = param_1[0x93];
        param_1[0x93] = pbVar14;
        param_1[0x94] = (iVar19 + param_1[0x94]) - (int)pbVar14;
        return 0xffffffff;
      }
      uVar11 = 1;
    }
  }
  if ((uVar13 & 1) != 0) {
    uVar11 = uVar11 - 1;
    uVar13 = uVar13 >> 1;
    goto LAB_00741370;
  }
switchD_00740d58_default:
  FUN_0073ef34("Fax3Decode2D",param_1,*(undefined4 *)(iVar19 + 0x6c),uVar18);
  local_54 = (char *)0x0;
LAB_007413b4:
  if (local_58 != 0) {
    *local_5c = local_58;
    local_5c = local_5c + 1;
  }
  goto LAB_007413cc;
LAB_007419ac:
  pbVar14 = (byte *)param_1[0x93];
  goto LAB_007419b4;
}

// ---- FUN_00741c84  @ 0x741c84
undefined4 FUN_00741c84(int param_1,int param_2,int param_3)

{
  int iVar1;
  uint uVar2;
  undefined4 uVar3;
  byte *pbVar4;
  byte *pbVar5;
  uint uVar6;
  uint uVar7;
  uint uVar8;
  uint uVar9;
  uint uVar10;
  uint *puVar11;
  uint *puVar12;
  uint *puVar13;
  uint *puVar14;
  int iVar15;
  uint uVar16;
  uint uVar17;
  int iVar18;
  int local_5c;
  int local_58;
  byte *local_54;
  undefined4 local_34;
  
  pbVar4 = *(byte **)(param_1 + 0x24c);
  iVar15 = *(int *)(param_1 + 0x238);
  iVar18 = *(int *)(iVar15 + 0x3c);
  local_34 = *(undefined4 *)(iVar15 + 0x48);
  pbVar5 = pbVar4 + *(int *)(param_1 + 0x250);
  uVar10 = *(uint *)(iVar15 + 0xc);
  uVar6 = *(uint *)(iVar15 + 4);
  uVar16 = *(uint *)(iVar15 + 0x40);
  uVar8 = *(uint *)(iVar15 + 0x44);
  puVar11 = *(uint **)(iVar15 + 0x58);
  local_54 = pbVar4;
  if (0 < param_3) {
    local_5c = param_3;
    local_58 = param_2;
LAB_00741d2c:
    uVar17 = 0;
    uVar7 = 0;
    puVar14 = puVar11;
LAB_00741d40:
    do {
      uVar9 = uVar8;
      pbVar4 = local_54;
      puVar13 = puVar14;
      if ((int)uVar8 < 0xc) {
        if (local_54 < pbVar5) {
          pbVar4 = local_54 + 1;
          uVar16 = uVar16 | (uint)*(byte *)(iVar18 + (uint)*local_54) << (uVar8 & 0xff);
          uVar9 = uVar8 + 8;
          if ((int)uVar9 < 0xc) {
            if (pbVar5 <= pbVar4) goto LAB_00741d60;
            uVar16 = uVar16 | (uint)*(byte *)(iVar18 + (uint)*pbVar4) << (uVar9 & 0xff);
            uVar9 = uVar8 + 0x10;
            pbVar4 = local_54 + 2;
          }
        }
        else {
          if (uVar8 == 0) {
LAB_0074211c:
            FUN_00740158("Fax3DecodeRLE",param_1,*(undefined4 *)(iVar15 + 0x6c),uVar7);
            puVar14 = puVar13;
            if (uVar17 != 0) {
              puVar14 = puVar13 + 1;
              *puVar13 = uVar17;
            }
            if (uVar7 != uVar10) {
              FUN_007401cc("Fax3DecodeRLE",param_1,*(undefined4 *)(iVar15 + 0x6c),uVar7,uVar10);
              if ((int)uVar10 < (int)uVar7 && puVar11 < puVar14) {
                do {
                  puVar14 = puVar14 + -1;
                  uVar7 = uVar7 - *puVar14;
                } while (puVar11 < puVar14 && (int)uVar10 < (int)uVar7);
              }
              if ((int)uVar7 < (int)uVar10) {
                puVar13 = puVar14;
                if (((int)puVar14 - (int)puVar11 & 4U) != 0) {
                  puVar13 = puVar14 + 1;
                  *puVar14 = 0;
                }
                puVar14 = puVar13 + 1;
                *puVar13 = uVar10 - (uVar7 & ~((int)uVar7 >> 0x1f));
              }
              else if ((int)uVar10 < (int)uVar7) {
                *puVar14 = uVar10;
                puVar14[1] = 0;
                puVar14 = puVar14 + 2;
              }
            }
            (**(code **)(iVar15 + 0x4c))(local_58,puVar11,puVar14,uVar10);
            uVar3 = 0xffffffff;
            *(uint *)(iVar15 + 0x40) = uVar16;
            *(undefined4 *)(iVar15 + 0x48) = local_34;
            pbVar4 = *(byte **)(param_1 + 0x24c);
            *(undefined4 *)(iVar15 + 0x44) = 0;
            goto LAB_007420f8;
          }
LAB_00741d60:
          local_54 = pbVar4;
          uVar9 = 0xc;
          pbVar4 = local_54;
        }
      }
      local_54 = pbVar4;
      uVar2 = uVar16 & 0xfff;
      iVar1 = uVar2 * 8;
      uVar16 = uVar16 >> (uint)(byte)TIFFFaxWhiteTable[iVar1 + 1];
      uVar8 = uVar9 - (byte)TIFFFaxWhiteTable[iVar1 + 1];
      switch(TIFFFaxWhiteTable[uVar2 * 8]) {
      case 7:
        puVar13 = puVar14 + 1;
        *puVar14 = uVar17 + *(int *)(TIFFFaxWhiteTable + iVar1 + 4);
        uVar7 = uVar7 + *(int *)(TIFFFaxWhiteTable + iVar1 + 4);
        puVar12 = puVar13;
        if ((int)uVar7 < (int)uVar10) {
          uVar17 = 0;
          do {
            uVar9 = uVar8;
            pbVar4 = local_54;
            if ((int)uVar8 < 0xd) {
              if (local_54 < pbVar5) {
                pbVar4 = local_54 + 1;
                uVar16 = uVar16 | (uint)*(byte *)(iVar18 + (uint)*local_54) << (uVar8 & 0xff);
                uVar9 = uVar8 + 8;
                if ((int)uVar9 < 0xd) {
                  if (pbVar5 <= pbVar4) goto LAB_00741f08;
                  uVar16 = uVar16 | (uint)*(byte *)(iVar18 + (uint)*pbVar4) << (uVar9 & 0xff);
                  uVar9 = uVar8 + 0x10;
                  pbVar4 = local_54 + 2;
                }
              }
              else {
                if (uVar8 == 0) goto LAB_0074211c;
LAB_00741f08:
                local_54 = pbVar4;
                uVar9 = 0xd;
                pbVar4 = local_54;
              }
            }
            local_54 = pbVar4;
            uVar2 = uVar16 & 0x1fff;
            iVar1 = uVar2 * 8;
            uVar16 = uVar16 >> (uint)(byte)TIFFFaxBlackTable[iVar1 + 1];
            uVar8 = uVar9 - (byte)TIFFFaxBlackTable[iVar1 + 1];
            switch(TIFFFaxBlackTable[uVar2 * 8]) {
            case 8:
              goto LAB_00741f94;
            case 9:
            default:
              FUN_0073ef34("Fax3DecodeRLE",param_1,*(undefined4 *)(iVar15 + 0x6c),uVar7);
              goto LAB_00741dbc;
            case 10:
              break;
            case 0xb:
              break;
            case 0xc:
              local_34 = 1;
              goto LAB_00741dbc;
            }
            uVar17 = uVar17 + *(int *)(TIFFFaxBlackTable + iVar1 + 4);
            uVar7 = uVar7 + *(int *)(TIFFFaxBlackTable + iVar1 + 4);
          } while( true );
        }
        goto LAB_00741dc4;
      case 8:
        goto switchD_00741d90_caseD_8;
      case 9:
        break;
      case 10:
        goto switchD_00741d90_default;
      case 0xb:
        break;
      case 0xc:
        local_34 = 1;
        goto LAB_00741dbc;
      default:
        goto switchD_00741d90_default;
      }
      uVar17 = uVar17 + *(int *)(TIFFFaxWhiteTable + iVar1 + 4);
      uVar7 = uVar7 + *(int *)(TIFFFaxWhiteTable + iVar1 + 4);
    } while( true );
  }
LAB_007420e0:
  uVar3 = 1;
  *(uint *)(iVar15 + 0x44) = uVar8;
  *(undefined4 *)(iVar15 + 0x48) = local_34;
  *(uint *)(iVar15 + 0x40) = uVar16;
LAB_007420f8:
  *(byte **)(param_1 + 0x250) = pbVar4 + (*(int *)(param_1 + 0x250) - (int)local_54);
  *(byte **)(param_1 + 0x24c) = local_54;
  return uVar3;
switchD_00741d90_caseD_8:
switchD_00741d90_default:
  FUN_0073ef34("Fax3DecodeRLE",param_1,*(undefined4 *)(iVar15 + 0x6c),uVar7);
LAB_00741dbc:
  puVar12 = puVar13;
  if (uVar17 != 0) {
    *puVar13 = uVar17;
    puVar12 = puVar13 + 1;
  }
LAB_00741dc4:
  if (uVar7 != uVar10) {
    FUN_007401cc("Fax3DecodeRLE",param_1,*(undefined4 *)(iVar15 + 0x6c),uVar7,uVar10);
    if (puVar11 < puVar12 && (int)uVar10 < (int)uVar7) {
      do {
        puVar12 = puVar12 + -1;
        uVar7 = uVar7 - *puVar12;
      } while (puVar11 < puVar12 && (int)uVar10 < (int)uVar7);
    }
    if ((int)uVar7 < (int)uVar10) {
      puVar14 = puVar12;
      if (((int)puVar12 - (int)puVar11 & 4U) != 0) {
        puVar14 = puVar12 + 1;
        *puVar12 = 0;
      }
      puVar12 = puVar14 + 1;
      *puVar14 = uVar10 - (uVar7 & ~((int)uVar7 >> 0x1f));
    }
    else if ((int)uVar10 < (int)uVar7) {
      *puVar12 = uVar10;
      puVar12[1] = 0;
      puVar12 = puVar12 + 2;
    }
  }
  (**(code **)(iVar15 + 0x4c))(local_58,puVar11,puVar12,uVar10);
  if ((uVar6 & 4) == 0) {
    if ((uVar6 & 8) != 0) {
      uVar17 = uVar8 & 0xf;
      uVar8 = uVar8 - uVar17;
      uVar16 = uVar16 >> uVar17;
      if ((uVar8 == 0) && (((uint)local_54 & 1) != 0)) {
        local_54 = local_54 + 1;
      }
    }
  }
  else {
    uVar16 = uVar16 >> (uVar8 & 7);
    uVar8 = uVar8 - (uVar8 & 7);
  }
  local_5c = local_5c - *(int *)(iVar15 + 8);
  *(int *)(iVar15 + 0x6c) = *(int *)(iVar15 + 0x6c) + 1;
  if (local_5c < 1) goto LAB_007420d8;
  local_58 = local_58 + *(int *)(iVar15 + 8);
  goto LAB_00741d2c;
LAB_00741f94:
  puVar12 = puVar14 + 2;
  *puVar13 = uVar17 + *(int *)(TIFFFaxBlackTable + iVar1 + 4);
  uVar7 = uVar7 + *(int *)(TIFFFaxBlackTable + iVar1 + 4);
  if ((int)uVar10 <= (int)uVar7) goto LAB_00741dc4;
  if ((puVar14[1] == 0) && (*puVar14 == 0)) {
    uVar17 = 0;
  }
  else {
    uVar17 = 0;
    puVar14 = puVar12;
  }
  goto LAB_00741d40;
LAB_007420d8:
  pbVar4 = *(byte **)(param_1 + 0x24c);
  goto LAB_007420e0;
}

// ---- FUN_00742244  @ 0x742244
undefined4 FUN_00742244(undefined4 *param_1,int param_2,int param_3)

{
  char cVar1;
  uint uVar2;
  int iVar3;
  undefined1 *puVar4;
  byte *pbVar5;
  byte *pbVar6;
  uint *puVar7;
  uint *puVar8;
  bool bVar9;
  uint uVar10;
  uint uVar11;
  uint uVar12;
  uint uVar13;
  int iVar14;
  uint *puVar15;
  uint *puVar16;
  uint uVar17;
  int iVar18;
  uint uVar19;
  int iVar20;
  uint uVar21;
  byte *pbVar22;
  char *pcVar23;
  byte *local_60;
  int local_54;
  int local_50;
  int local_4c;
  undefined4 local_48;
  
  iVar18 = param_1[0x8e];
  pbVar5 = (byte *)param_1[0x93];
  iVar20 = *(int *)(iVar18 + 0x3c);
  local_4c = *(int *)(iVar18 + 0x48);
  uVar12 = *(uint *)(iVar18 + 0xc);
  pbVar6 = pbVar5 + param_1[0x94];
  uVar17 = *(uint *)(iVar18 + 0x40);
  uVar13 = *(uint *)(iVar18 + 0x44);
  local_60 = pbVar5;
  if (param_3 < 1) {
LAB_00742d70:
    *(uint *)(iVar18 + 0x44) = uVar13;
    *(uint *)(iVar18 + 0x40) = uVar17;
    *(int *)(iVar18 + 0x48) = local_4c;
    param_1[0x93] = local_60;
    param_1[0x94] = pbVar5 + (param_1[0x94] - (int)local_60);
    return 1;
  }
  puVar7 = *(uint **)(iVar18 + 0x54);
  puVar15 = *(uint **)(iVar18 + 0x58);
  uVar10 = *puVar7;
  local_54 = param_2;
  local_50 = param_3;
  if ((int)uVar12 < 1) goto LAB_0074255c;
LAB_007422fc:
  uVar19 = 0;
  puVar7 = puVar7 + 1;
  uVar11 = 0;
  puVar16 = puVar15;
LAB_00742320:
  puVar8 = puVar16;
  if ((int)uVar13 < 7) {
    if (local_60 < pbVar6) {
      uVar17 = uVar17 | (uint)*(byte *)(iVar20 + (uint)*local_60) << (uVar13 & 0xff);
      uVar13 = uVar13 + 8;
      local_60 = local_60 + 1;
      goto LAB_00742344;
    }
    if (uVar13 != 0) {
      uVar13 = 7;
      goto LAB_00742344;
    }
LAB_00742c80:
    FUN_00740158("Fax4Decode",param_1,*(undefined4 *)(iVar18 + 0x6c),uVar11);
    puVar16 = puVar8;
    if (uVar19 != 0) goto LAB_00742d60;
    goto LAB_00742ca4;
  }
LAB_00742344:
  uVar2 = uVar17 & 0x7f;
  iVar14 = uVar2 * 8;
  uVar17 = uVar17 >> (uint)(byte)TIFFFaxMainTable[iVar14 + 1];
  uVar13 = uVar13 - (byte)TIFFFaxMainTable[iVar14 + 1];
  switch(TIFFFaxMainTable[uVar2 * 8]) {
  case 1:
    if (puVar16 != puVar15) {
      iVar14 = uVar11 - uVar10;
      uVar2 = uVar11;
      if ((int)uVar10 <= (int)uVar11) {
        iVar14 = uVar12 - uVar10;
        uVar2 = uVar12;
      }
      puVar8 = puVar7;
      if (uVar2 != uVar10 && iVar14 < 0 == SBORROW4(uVar2,uVar10)) {
        do {
          puVar7 = puVar8 + 2;
          uVar10 = puVar8[1] + *puVar8 + uVar10;
          puVar8 = puVar7;
        } while ((int)uVar10 <= (int)uVar11 && (int)uVar10 < (int)uVar12);
      }
    }
    iVar14 = uVar19 - uVar11;
    puVar8 = puVar7 + 1;
    uVar11 = uVar10 + *puVar7;
    puVar7 = puVar7 + 2;
    uVar19 = iVar14 + uVar11;
    uVar10 = uVar11 + *puVar8;
    break;
  case 2:
    if (((int)puVar16 - (int)puVar15 & 4U) == 0) {
      do {
        uVar2 = uVar13;
        pbVar5 = local_60;
        if ((int)uVar13 < 0xc) {
          if (local_60 < pbVar6) {
            pbVar5 = local_60 + 1;
            uVar17 = uVar17 | (uint)*(byte *)(iVar20 + (uint)*local_60) << (uVar13 & 0xff);
            uVar2 = uVar13 + 8;
            if ((int)uVar2 < 0xc) {
              if (pbVar6 <= pbVar5) goto LAB_00742814;
              uVar17 = uVar17 | (uint)*(byte *)(iVar20 + (uint)*pbVar5) << (uVar2 & 0xff);
              uVar2 = uVar13 + 0x10;
              pbVar5 = local_60 + 2;
            }
          }
          else {
            if (uVar13 == 0) goto LAB_00742c80;
LAB_00742814:
            local_60 = pbVar5;
            uVar2 = 0xc;
            pbVar5 = local_60;
          }
        }
        local_60 = pbVar5;
        cVar1 = TIFFFaxWhiteTable[(uVar17 & 0xfff) * 8];
        iVar14 = (uVar17 & 0xfff) * 8;
        uVar17 = uVar17 >> (uint)(byte)TIFFFaxWhiteTable[iVar14 + 1];
        uVar13 = uVar2 - (byte)TIFFFaxWhiteTable[iVar14 + 1];
        if ((cVar1 != '\t') && (cVar1 != '\v')) goto code_r0x00742850;
        uVar19 = uVar19 + *(int *)(TIFFFaxWhiteTable + iVar14 + 4);
        uVar11 = uVar11 + *(int *)(TIFFFaxWhiteTable + iVar14 + 4);
      } while( true );
    }
    do {
      uVar2 = uVar13;
      pbVar5 = local_60;
      if ((int)uVar13 < 0xd) {
        if (local_60 < pbVar6) {
          pbVar5 = local_60 + 1;
          uVar17 = uVar17 | (uint)*(byte *)(iVar20 + (uint)*local_60) << (uVar13 & 0xff);
          uVar2 = uVar13 + 8;
          if ((int)uVar2 < 0xd) {
            if (pbVar6 <= pbVar5) goto LAB_00742714;
            uVar17 = uVar17 | (uint)*(byte *)(iVar20 + (uint)*pbVar5) << (uVar2 & 0xff);
            uVar2 = uVar13 + 0x10;
            pbVar5 = local_60 + 2;
          }
        }
        else {
          if (uVar13 == 0) goto LAB_00742c80;
LAB_00742714:
          local_60 = pbVar5;
          uVar2 = 0xd;
          pbVar5 = local_60;
        }
      }
      local_60 = pbVar5;
      uVar21 = (uint)(byte)TIFFFaxBlackTable[(uVar17 & 0x1fff) * 8];
      iVar14 = (uVar17 & 0x1fff) * 8;
      uVar17 = uVar17 >> (uint)(byte)TIFFFaxBlackTable[iVar14 + 1];
      uVar13 = uVar2 - (byte)TIFFFaxBlackTable[iVar14 + 1];
      if (uVar21 == 8) goto LAB_00742a80;
      if ((uVar21 < 8) || (1 < uVar21 - 10)) goto LAB_00742758;
      uVar19 = uVar19 + *(int *)(TIFFFaxBlackTable + iVar14 + 4);
      uVar11 = uVar11 + *(int *)(TIFFFaxBlackTable + iVar14 + 4);
    } while( true );
  case 3:
    puVar8 = puVar7;
    if (puVar16 != puVar15) {
      iVar14 = uVar11 - uVar10;
      uVar2 = uVar11;
      if ((int)uVar10 <= (int)uVar11) {
        iVar14 = uVar12 - uVar10;
        uVar2 = uVar12;
      }
      if (uVar2 != uVar10 && iVar14 < 0 == SBORROW4(uVar2,uVar10)) {
        do {
          puVar8 = puVar7 + 2;
          uVar10 = puVar7[1] + *puVar7 + uVar10;
          puVar7 = puVar8;
        } while ((int)uVar10 <= (int)uVar11 && (int)uVar10 < (int)uVar12);
      }
    }
    *puVar16 = (uVar10 - uVar11) + uVar19;
    puVar7 = puVar8 + 1;
    uVar11 = uVar11 + (uVar10 - uVar11);
    uVar19 = 0;
    uVar10 = uVar10 + *puVar8;
    puVar16 = puVar16 + 1;
    break;
  case 4:
    puVar8 = puVar7;
    if (puVar16 != puVar15) {
      iVar3 = uVar11 - uVar10;
      uVar2 = uVar11;
      if ((int)uVar10 <= (int)uVar11) {
        iVar3 = uVar12 - uVar10;
        uVar2 = uVar12;
      }
      if (uVar2 != uVar10 && iVar3 < 0 == SBORROW4(uVar2,uVar10)) {
        do {
          puVar8 = puVar7 + 2;
          uVar10 = puVar7[1] + *puVar7 + uVar10;
          puVar7 = puVar8;
        } while ((int)uVar10 <= (int)uVar11 && (int)uVar10 < (int)uVar12);
      }
    }
    iVar3 = uVar19 + *(int *)(TIFFFaxMainTable + iVar14 + 4);
    uVar19 = 0;
    *puVar16 = iVar3 + (uVar10 - uVar11);
    puVar7 = puVar8 + 1;
    uVar11 = uVar11 + *(int *)(TIFFFaxMainTable + iVar14 + 4) + (uVar10 - uVar11);
    uVar10 = uVar10 + *puVar8;
    puVar16 = puVar16 + 1;
    break;
  case 5:
    if (puVar16 != puVar15) {
      iVar3 = uVar11 - uVar10;
      uVar2 = uVar11;
      if ((int)uVar10 <= (int)uVar11) {
        iVar3 = uVar12 - uVar10;
        uVar2 = uVar12;
      }
      puVar8 = puVar7;
      if (uVar2 != uVar10 && iVar3 < 0 == SBORROW4(uVar2,uVar10)) {
        do {
          puVar7 = puVar8 + 2;
          uVar10 = puVar8[1] + *puVar8 + uVar10;
          puVar8 = puVar7;
        } while ((int)uVar10 <= (int)uVar11 && (int)uVar10 < (int)uVar12);
      }
    }
    iVar3 = uVar19 - *(int *)(TIFFFaxMainTable + iVar14 + 4);
    uVar19 = 0;
    *puVar16 = iVar3 + (uVar10 - uVar11);
    puVar7 = puVar7 + -1;
    uVar11 = (uVar11 - *(int *)(TIFFFaxMainTable + iVar14 + 4)) + (uVar10 - uVar11);
    uVar10 = uVar10 - *puVar7;
    puVar16 = puVar16 + 1;
    break;
  case 6:
    puVar8 = puVar16 + 1;
    *puVar16 = uVar12 - uVar11;
    if ((param_1[3] & 0x400) == 0) {
      local_48 = param_1[0x74];
      pcVar23 = "strip";
    }
    else {
      local_48 = param_1[0x7a];
      pcVar23 = "tile";
    }
    TIFFErrorExt(param_1[0x99],"Fax4Decode",
                 "%s: Uncompressed data (not supported) at line %u of %s %u (x %u)",*param_1,
                 *(undefined4 *)(iVar18 + 0x6c),pcVar23,local_48,uVar11);
    goto LAB_0074244c;
  case 7:
    goto switchD_0074236c_default;
  case 8:
    goto switchD_0074236c_default;
  case 9:
    goto switchD_0074236c_default;
  case 10:
    goto switchD_0074236c_default;
  case 0xb:
    goto switchD_0074236c_default;
  case 0xc:
    uVar10 = uVar13;
    if (3 < (int)uVar13) {
      uVar10 = uVar13 - 4;
    }
    puVar8 = puVar16 + 1;
    *puVar16 = uVar12 - uVar11;
    if ((int)uVar13 < 4) {
      if (local_60 < pbVar6) {
        uVar17 = uVar17 | (uint)*(byte *)(iVar20 + (uint)*local_60) << (uVar10 & 0xff);
        uVar10 = uVar10 + 4;
        local_60 = local_60 + 1;
      }
      else {
        if (uVar10 == 0) goto LAB_00742c80;
        uVar10 = 0;
      }
    }
    if ((uVar17 & 0xf) != 0) {
      FUN_0073ef34("Fax4Decode",param_1,*(undefined4 *)(iVar18 + 0x6c),uVar11);
    }
    uVar17 = uVar17 >> 4;
    local_4c = 1;
    uVar13 = uVar10;
    goto LAB_0074244c;
  default:
    goto switchD_0074236c_default;
  }
  goto LAB_00742404;
code_r0x00742850:
  if (cVar1 == '\a') {
    puVar8 = puVar16 + 1;
    *puVar16 = uVar19 + *(int *)(TIFFFaxWhiteTable + iVar14 + 4);
    uVar19 = 0;
    uVar11 = uVar11 + *(int *)(TIFFFaxWhiteTable + iVar14 + 4);
    do {
      uVar2 = uVar13;
      pbVar5 = local_60;
      if ((int)uVar13 < 0xd) {
        if (local_60 < pbVar6) {
          pbVar5 = local_60 + 1;
          uVar17 = uVar17 | (uint)*(byte *)(iVar20 + (uint)*local_60) << (uVar13 & 0xff);
          uVar2 = uVar13 + 8;
          if ((int)uVar2 < 0xd) {
            if (pbVar6 <= pbVar5) goto LAB_00742c68;
            uVar17 = uVar17 | (uint)*(byte *)(iVar20 + (uint)*pbVar5) << (uVar2 & 0xff);
            uVar2 = uVar13 + 0x10;
            pbVar5 = local_60 + 2;
          }
        }
        else {
          if (uVar13 == 0) goto LAB_00742c80;
LAB_00742c68:
          local_60 = pbVar5;
          uVar2 = 0xd;
          pbVar5 = local_60;
        }
      }
      local_60 = pbVar5;
      uVar21 = (uint)(byte)TIFFFaxBlackTable[(uVar17 & 0x1fff) * 8];
      iVar14 = (uVar17 & 0x1fff) * 8;
      puVar4 = TIFFFaxBlackTable + iVar14;
      uVar17 = uVar17 >> (uint)(byte)TIFFFaxBlackTable[iVar14 + 1];
      uVar13 = uVar2 - (byte)TIFFFaxBlackTable[iVar14 + 1];
      if (uVar21 == 8) goto LAB_00742b38;
      if ((uVar21 < 8) || (1 < uVar21 - 10)) goto LAB_00742758;
      uVar19 = uVar19 + *(int *)(TIFFFaxBlackTable + iVar14 + 4);
      uVar11 = uVar11 + *(int *)(TIFFFaxBlackTable + iVar14 + 4);
    } while( true );
  }
  goto LAB_00742858;
LAB_00742a80:
  *puVar16 = uVar19 + *(int *)(TIFFFaxBlackTable + iVar14 + 4);
  uVar19 = 0;
  uVar11 = uVar11 + *(int *)(TIFFFaxBlackTable + iVar14 + 4);
  do {
    uVar2 = uVar13;
    pbVar5 = local_60;
    puVar8 = puVar16 + 1;
    if ((int)uVar13 < 0xc) {
      if (local_60 < pbVar6) {
        pbVar5 = local_60 + 1;
        uVar17 = uVar17 | (uint)*(byte *)(iVar20 + (uint)*local_60) << (uVar13 & 0xff);
        uVar2 = uVar13 + 8;
        if ((int)uVar2 < 0xc) {
          if (pbVar6 <= pbVar5) goto LAB_00742c78;
          uVar17 = uVar17 | (uint)*(byte *)(iVar20 + (uint)*pbVar5) << (uVar2 & 0xff);
          uVar2 = uVar13 + 0x10;
          pbVar5 = local_60 + 2;
        }
      }
      else {
        if (uVar13 == 0) goto LAB_00742c80;
LAB_00742c78:
        local_60 = pbVar5;
        uVar2 = 0xc;
        pbVar5 = local_60;
      }
    }
    local_60 = pbVar5;
    cVar1 = TIFFFaxWhiteTable[(uVar17 & 0xfff) * 8];
    iVar14 = (uVar17 & 0xfff) * 8;
    puVar4 = TIFFFaxWhiteTable + iVar14;
    uVar17 = uVar17 >> (uint)(byte)TIFFFaxWhiteTable[iVar14 + 1];
    uVar13 = uVar2 - (byte)TIFFFaxWhiteTable[iVar14 + 1];
    if ((cVar1 != '\t') && (cVar1 != '\v')) break;
    uVar19 = uVar19 + *(int *)(TIFFFaxWhiteTable + iVar14 + 4);
    uVar11 = uVar11 + *(int *)(TIFFFaxWhiteTable + iVar14 + 4);
  } while( true );
  if (cVar1 == '\a') {
LAB_00742b38:
    puVar8 = puVar16 + 1;
    puVar16 = puVar16 + 2;
    *puVar8 = uVar19 + *(int *)(puVar4 + 4);
    uVar11 = uVar11 + *(int *)(puVar4 + 4);
    if (puVar16 != puVar15) {
      iVar14 = uVar11 - uVar10;
      uVar19 = uVar11;
      if ((int)uVar10 <= (int)uVar11) {
        iVar14 = uVar12 - uVar10;
        uVar19 = uVar12;
      }
      puVar8 = puVar7;
      if (uVar19 != uVar10 && iVar14 < 0 == SBORROW4(uVar19,uVar10)) {
        do {
          puVar7 = puVar8 + 2;
          uVar10 = puVar8[1] + *puVar8 + uVar10;
          iVar14 = uVar11 - uVar10;
          uVar19 = uVar11;
          if ((int)uVar10 <= (int)uVar11) {
            iVar14 = uVar12 - uVar10;
            uVar19 = uVar12;
          }
          puVar8 = puVar7;
        } while (uVar19 != uVar10 && iVar14 < 0 == SBORROW4(uVar19,uVar10));
      }
    }
    uVar19 = 0;
LAB_00742404:
    if ((int)uVar12 <= (int)uVar11) goto code_r0x0074240c;
    goto LAB_00742320;
  }
LAB_00742858:
  FUN_0073ef34("Fax4Decode",param_1,*(undefined4 *)(iVar18 + 0x6c),uVar11);
  goto LAB_0074244c;
LAB_00742758:
  FUN_0073ef34("Fax4Decode",param_1,*(undefined4 *)(iVar18 + 0x6c),uVar11);
  goto LAB_0074244c;
code_r0x0074240c:
  if (uVar19 != 0) {
    if ((int)(uVar11 + uVar19) < (int)uVar12) {
      if ((int)uVar13 < 1) {
        if (local_60 < pbVar6) {
          uVar17 = uVar17 | (uint)*(byte *)(iVar20 + (uint)*local_60) << (uVar13 & 0xff);
          uVar13 = uVar13 + 8;
          local_60 = local_60 + 1;
        }
        else {
          if (uVar13 == 0) {
            FUN_00740158("Fax4Decode",param_1,*(undefined4 *)(iVar18 + 0x6c),uVar11);
LAB_00742d60:
            puVar8 = puVar16 + 1;
            *puVar16 = uVar19;
LAB_00742ca4:
            if (uVar11 != uVar12) {
              FUN_007401cc("Fax4Decode",param_1,*(undefined4 *)(iVar18 + 0x6c),uVar11,uVar12);
              if (puVar15 < puVar8 && (int)uVar12 < (int)uVar11) {
                do {
                  puVar8 = puVar8 + -1;
                  uVar11 = uVar11 - *puVar8;
                } while (puVar15 < puVar8 && (int)uVar12 < (int)uVar11);
              }
              if ((int)uVar11 < (int)uVar12) {
                puVar7 = puVar8;
                if (((int)puVar8 - (int)puVar15 & 4U) != 0) {
                  puVar7 = puVar8 + 1;
                  *puVar8 = 0;
                }
                puVar8 = puVar7 + 1;
                *puVar7 = uVar12 - (uVar11 & ~((int)uVar11 >> 0x1f));
              }
              else if ((int)uVar12 < (int)uVar11) {
                *puVar8 = uVar12;
                puVar8[1] = 0;
                puVar8 = puVar8 + 2;
              }
            }
            uVar13 = 0;
            puVar16 = puVar8;
            pbVar5 = local_60;
joined_r0x00742d3c:
            if (pbVar5 < pbVar6) {
              pbVar22 = pbVar5 + 1;
              uVar17 = uVar17 | (uint)*(byte *)(iVar20 + (uint)*pbVar5) << (uVar13 & 0xff);
              local_60 = pbVar22;
              if (0xc < (int)(uVar13 + 8)) {
                iVar14 = uVar13 - 5;
                goto LAB_007428dc;
              }
              if (pbVar22 < pbVar6) {
                iVar14 = uVar13 + 3;
                local_60 = pbVar5 + 2;
                uVar17 = uVar17 | (uint)*(byte *)(iVar20 + (uint)*pbVar22) << (uVar13 + 8 & 0xff);
                goto LAB_007428dc;
              }
            }
            else {
              local_60 = pbVar5;
              if (uVar13 == 0) {
                iVar14 = -0xd;
                goto LAB_007428dc;
              }
            }
            iVar14 = 0;
LAB_007428dc:
            (**(code **)(iVar18 + 0x4c))(local_54,puVar15,puVar16,uVar12);
            *(int *)(iVar18 + 0x44) = iVar14;
            *(int *)(iVar18 + 0x48) = local_4c;
            iVar20 = param_1[0x93];
            *(uint *)(iVar18 + 0x40) = uVar17 >> 0xd;
            param_1[0x93] = local_60;
            param_1[0x94] = (iVar20 + param_1[0x94]) - (int)local_60;
            return 0xffffffff;
          }
          uVar13 = 1;
        }
      }
      puVar8 = puVar16;
      if ((uVar17 & 1) == 0) {
switchD_0074236c_default:
        FUN_0073ef34("Fax4Decode",param_1,*(undefined4 *)(iVar18 + 0x6c),uVar11);
LAB_0074244c:
        puVar16 = puVar8;
        if (uVar19 == 0) goto LAB_00742458;
      }
      else {
        uVar13 = uVar13 - 1;
        uVar17 = uVar17 >> 1;
      }
    }
    *puVar16 = uVar19;
    puVar16 = puVar16 + 1;
  }
LAB_00742458:
  while( true ) {
    if (uVar11 != uVar12) {
      FUN_007401cc("Fax4Decode",param_1,*(undefined4 *)(iVar18 + 0x6c),uVar11,uVar12);
      bVar9 = (int)uVar12 < (int)uVar11 && puVar15 < puVar16;
      while (bVar9) {
        puVar16 = puVar16 + -1;
        uVar11 = uVar11 - *puVar16;
        bVar9 = puVar15 < puVar16 && (int)uVar12 < (int)uVar11;
      }
      if ((int)uVar11 < (int)uVar12) {
        puVar7 = puVar16;
        if (((int)puVar16 - (int)puVar15 & 4U) != 0) {
          puVar7 = puVar16 + 1;
          *puVar16 = 0;
        }
        puVar16 = puVar7 + 1;
        *puVar7 = uVar12 - (uVar11 & ~((int)uVar11 >> 0x1f));
      }
      else if ((int)uVar12 < (int)uVar11) {
        *puVar16 = uVar12;
        puVar16[1] = 0;
        puVar16 = puVar16 + 2;
      }
    }
    if (local_4c != 0) {
      pbVar5 = local_60;
      if ((int)uVar13 < 0xd) goto joined_r0x00742d3c;
      iVar14 = uVar13 - 0xd;
      goto LAB_007428dc;
    }
    (**(code **)(iVar18 + 0x4c))(local_54,puVar15,puVar16,uVar12);
    puVar15 = *(uint **)(iVar18 + 0x54);
    *puVar16 = 0;
    puVar7 = *(uint **)(iVar18 + 0x58);
    local_50 = local_50 - *(int *)(iVar18 + 8);
    *(uint **)(iVar18 + 0x54) = puVar7;
    *(int *)(iVar18 + 0x6c) = *(int *)(iVar18 + 0x6c) + 1;
    *(uint **)(iVar18 + 0x58) = puVar15;
    if (local_50 < 1) {
      pbVar5 = (byte *)param_1[0x93];
      goto LAB_00742d70;
    }
    local_54 = local_54 + *(int *)(iVar18 + 8);
    uVar10 = *puVar7;
    if (0 < (int)uVar12) break;
LAB_0074255c:
    uVar11 = 0;
    puVar16 = puVar15;
  }
  goto LAB_007422fc;
}

// ---- FUN_00742e48  @ 0x742e48
undefined4 FUN_00742e48(int param_1)

{
  short sVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 *puVar4;
  int iVar5;
  
  iVar5 = *(int *)(param_1 + 0x238);
  sVar1 = *(short *)(param_1 + 0x5e);
  *(undefined4 *)(iVar5 + 0x44) = 0;
  *(undefined4 *)(iVar5 + 0x40) = 0;
  *(undefined4 *)(iVar5 + 0x48) = 0;
  uVar2 = TIFFGetBitRevTable(sVar1 != 2);
  puVar4 = *(undefined4 **)(iVar5 + 0x54);
  if (puVar4 != (undefined4 *)0x0) {
    uVar3 = *(undefined4 *)(iVar5 + 0xc);
    puVar4[1] = 0;
    *puVar4 = uVar3;
  }
  *(undefined4 *)(iVar5 + 0x3c) = uVar2;
  *(undefined4 *)(iVar5 + 0x6c) = 0;
  return 1;
}

// ---- FUN_0074376c  @ 0x74376c
int FUN_0074376c(int param_1,int param_2)

{
  int iVar1;
  int iVar2;
  
  iVar2 = param_1 * param_2;
  if ((param_1 != 0) && (iVar1 = __udivsi3(iVar2,param_1), iVar1 != param_2)) {
    iVar2 = 0;
  }
  return iVar2;
}

// ---- FUN_00743804  @ 0x743804
bool FUN_00743804(undefined4 *param_1,uint *param_2,undefined4 param_3)

{
  byte *pbVar1;
  byte *pbVar2;
  int iVar3;
  byte bVar4;
  int iVar5;
  int iVar6;
  int iVar7;
  byte *pbVar8;
  int *piVar9;
  uint *puVar10;
  bool bVar11;
  
  piVar9 = (int *)param_1[0x8e];
  iVar5 = __divsi3(param_3,piVar9[2]);
  iVar6 = param_1[0x94];
  pbVar8 = (byte *)param_1[0x93];
  puVar10 = param_2;
  if (*piVar9 != 2) {
    puVar10 = (uint *)piVar9[3];
  }
  iVar7 = iVar5;
  if (0 < iVar5) {
    iVar7 = iVar6;
  }
  if (iVar7 < 1) {
    iVar7 = 0;
  }
  else {
    iVar7 = 0;
    do {
      pbVar1 = pbVar8 + 1;
      iVar6 = iVar6 + -3;
      bVar4 = *pbVar8;
      iVar7 = iVar7 + 1;
      pbVar2 = pbVar8 + 2;
      bVar11 = iVar6 == 0;
      iVar3 = iVar6;
      if (0 < iVar6) {
        iVar3 = iVar5 - iVar7;
        bVar11 = iVar5 == iVar7;
      }
      pbVar8 = pbVar8 + 3;
      *puVar10 = (uint)*pbVar1 << 8 | (uint)bVar4 << 0x10 | (uint)*pbVar2;
      puVar10 = puVar10 + 1;
    } while (!bVar11 && iVar3 < 0 == (0 < iVar6 && SBORROW4(iVar5,iVar7)));
  }
  param_1[0x93] = pbVar8;
  param_1[0x94] = iVar6;
  if (iVar7 == iVar5) {
    (*(code *)piVar9[5])(piVar9,param_2);
  }
  else {
    TIFFErrorExt(param_1[0x99],*param_1,
                 "LogLuvDecode24: Not enough data at row %d (short %d pixels)",param_1[0x72],
                 iVar5 - iVar7);
  }
  return iVar7 == iVar5;
}

// ---- FUN_007438e0  @ 0x7438e0
undefined4 FUN_007438e0(undefined4 *param_1)

{
  undefined4 uVar1;
  int iVar2;
  void *pvVar3;
  undefined4 uVar4;
  int iVar5;
  uint uVar6;
  int *piVar7;
  
  piVar7 = (int *)param_1[0x8e];
  if (*(short *)((int)param_1 + 0x8a) != 1) {
    TIFFErrorExt(param_1[0x99],"LogLuvInitState",
                 "SGILog compression cannot handle non-contiguous data");
    return 0;
  }
  iVar5 = *piVar7;
  if (iVar5 != -1) goto LAB_00743904;
  uVar6 = (uint)*(ushort *)((int)param_1 + 0x56) | (uint)*(ushort *)(param_1 + 0x15) << 3;
  if (uVar6 == 0x84) {
LAB_00743aac:
    iVar5 = 1;
  }
  else if (uVar6 < 0x85) {
    if (uVar6 == 0x44) {
LAB_00743a98:
      iVar5 = 3;
    }
    else {
      if (uVar6 < 0x45) {
        if (uVar6 == 0x41) goto LAB_00743a98;
      }
      else if (uVar6 - 0x81 < 2) goto LAB_00743aac;
LAB_00743974:
      iVar5 = -1;
    }
  }
  else if (uVar6 == 0x103) {
    iVar5 = 0;
  }
  else {
    if (uVar6 < 0x104) {
      if (uVar6 < 0x101) goto LAB_00743974;
    }
    else if (uVar6 != 0x104) {
      iVar5 = -1;
      goto LAB_00743978;
    }
    iVar5 = 2;
  }
LAB_00743978:
  if (*(short *)((int)param_1 + 0x62) == 1) {
    if (iVar5 != 2) {
      iVar5 = -1;
    }
  }
  else {
    if ((*(short *)((int)param_1 + 0x62) == 3) && (iVar5 != 2)) {
      *piVar7 = iVar5;
      goto LAB_00743904;
    }
    iVar5 = -1;
  }
  *piVar7 = iVar5;
LAB_00743904:
  switch(iVar5) {
  case 0:
    piVar7[2] = 0xc;
    break;
  case 1:
    piVar7[2] = 6;
    break;
  case 2:
    piVar7[2] = 4;
    break;
  case 3:
    piVar7[2] = 3;
    break;
  default:
    TIFFErrorExt(param_1[0x99],*param_1,"No support for converting user data format to LogLuv");
    return 0;
  }
  if ((param_1[3] & 0x400) == 0) {
    uVar4 = param_1[0x19];
    uVar1 = param_1[0xe];
  }
  else {
    uVar4 = param_1[0x12];
    uVar1 = param_1[0x11];
  }
  iVar5 = FUN_0074376c(uVar1,uVar4);
  piVar7[4] = iVar5;
  iVar2 = FUN_0074376c(iVar5,4);
  if (iVar2 != 0) {
    pvVar3 = _TIFFmalloc(iVar5 << 2);
    piVar7[3] = (int)pvVar3;
    if (pvVar3 != (void *)0x0) {
      return 1;
    }
  }
  TIFFErrorExt(param_1[0x99],"LogLuvInitState","%s: No space for SGILog translation buffer",*param_1
              );
  return 0;
}

// ---- FUN_00743ad8  @ 0x743ad8
undefined4 FUN_00743ad8(undefined4 *param_1)

{
  undefined4 uVar1;
  int iVar2;
  void *pvVar3;
  undefined4 uVar4;
  uint uVar5;
  int iVar6;
  int *piVar7;
  
  piVar7 = (int *)param_1[0x8e];
  iVar6 = *piVar7;
  if (iVar6 != -1) goto LAB_00743af0;
  uVar5 = (uint)*(ushort *)((int)param_1 + 0x62) << 3 | (uint)*(ushort *)(param_1 + 0x15) << 6 |
          (uint)*(ushort *)((int)param_1 + 0x56);
  if (uVar5 < 0x40b) {
    if (0x408 < uVar5) goto LAB_00743c30;
    if ((uVar5 == 0x209) || (uVar5 == 0x20c)) {
      iVar6 = 3;
      *piVar7 = 3;
      goto LAB_00743af0;
    }
  }
  else {
    if (uVar5 == 0x40c) {
LAB_00743c30:
      iVar6 = 1;
      *piVar7 = 1;
      goto LAB_00743af0;
    }
    if (uVar5 == 0x80b) {
      iVar6 = 0;
    }
    else {
      iVar6 = -1;
    }
  }
  *piVar7 = iVar6;
LAB_00743af0:
  if (iVar6 == 1) {
    piVar7[2] = 2;
  }
  else if (iVar6 == 3) {
    piVar7[2] = 1;
  }
  else {
    if (iVar6 != 0) {
      TIFFErrorExt(param_1[0x99],*param_1,"No support for converting user data format to LogL");
      return 0;
    }
    piVar7[2] = 4;
  }
  if ((param_1[3] & 0x400) == 0) {
    uVar4 = param_1[0x19];
    uVar1 = param_1[0xe];
  }
  else {
    uVar4 = param_1[0x12];
    uVar1 = param_1[0x11];
  }
  iVar6 = FUN_0074376c(uVar1,uVar4);
  piVar7[4] = iVar6;
  iVar2 = FUN_0074376c(iVar6,2);
  if (iVar2 != 0) {
    pvVar3 = _TIFFmalloc(iVar6 << 1);
    piVar7[3] = (int)pvVar3;
    if (pvVar3 != (void *)0x0) {
      return 1;
    }
  }
  TIFFErrorExt(param_1[0x99],"LogL16InitState","%s: No space for SGILog translation buffer",*param_1
              );
  return 0;
}

// ---- FUN_007441a8  @ 0x7441a8
undefined1 FUN_007441a8(undefined4 *param_1,void *param_2,undefined4 param_3)

{
  byte bVar1;
  int iVar2;
  uint uVar3;
  int iVar4;
  ushort *puVar5;
  int iVar6;
  byte *pbVar7;
  bool bVar8;
  byte *pbVar9;
  void *__s;
  int *piVar10;
  uint uVar11;
  int iVar12;
  
  piVar10 = (int *)param_1[0x8e];
  iVar2 = __divsi3(param_3,piVar10[2]);
  __s = param_2;
  if (*piVar10 != 1) {
    __s = (void *)piVar10[3];
  }
  _TIFFmemset(__s,0,iVar2 << 1);
  pbVar7 = (byte *)param_1[0x93];
  iVar6 = param_1[0x94];
  uVar11 = 8;
  do {
    iVar4 = 0;
    bVar8 = 0 < iVar2 && 0 < iVar6;
    while (bVar8) {
      uVar3 = (uint)*pbVar7;
      if ((*pbVar7 & 0x80) == 0) {
        iVar12 = iVar6 + -1;
        pbVar9 = pbVar7 + 1;
        if ((iVar12 != 0) && (uVar3 != 0)) {
          iVar12 = iVar4 + iVar6 + -1;
          puVar5 = (ushort *)((int)__s + iVar4 * 2);
          iVar6 = iVar4;
          do {
            pbVar7 = pbVar7 + 1;
            iVar6 = iVar6 + 1;
            *puVar5 = *puVar5 | (ushort)*pbVar7 << (uVar11 & 0xff);
            if (iVar6 == iVar12) {
              iVar12 = 0;
              pbVar9 = pbVar9 + (iVar6 - iVar4);
              iVar4 = iVar6;
              goto LAB_00744290;
            }
            puVar5 = puVar5 + 1;
          } while ((iVar6 != iVar4 + uVar3) && (iVar6 < iVar2));
          iVar12 = iVar12 - iVar6;
          pbVar9 = pbVar9 + (iVar6 - iVar4);
          iVar4 = iVar6;
        }
      }
      else {
        bVar1 = pbVar7[1];
        pbVar9 = pbVar7 + 2;
        iVar12 = iVar6 + -2;
        if (uVar3 != 0x7e) {
          iVar6 = iVar4 + -0x7e;
          puVar5 = (ushort *)((int)__s + iVar4 * 2);
          do {
            iVar4 = iVar4 + 1;
            *puVar5 = (ushort)bVar1 << (uVar11 & 0xff) | *puVar5;
            if (iVar4 == iVar6 + uVar3) break;
            puVar5 = puVar5 + 1;
          } while (iVar4 < iVar2);
        }
      }
LAB_00744290:
      bVar8 = iVar4 < iVar2 && 0 < iVar12;
      iVar6 = iVar12;
      pbVar7 = pbVar9;
    }
    if (iVar4 != iVar2) {
      TIFFErrorExt(param_1[0x99],*param_1,
                   "LogL16Decode: Not enough data at row %d (short %d pixels)",param_1[0x72],
                   iVar2 - iVar4);
      param_1[0x94] = iVar6;
      param_1[0x93] = pbVar7;
      return 0;
    }
    uVar11 = uVar11 - 8;
    if (uVar11 == 0xfffffff8) {
      (*(code *)piVar10[5])(piVar10,param_2);
      param_1[0x94] = iVar6;
      param_1[0x93] = pbVar7;
      return 1;
    }
  } while( true );
}

// ---- FUN_00744380  @ 0x744380
undefined1 FUN_00744380(undefined4 *param_1,void *param_2,undefined4 param_3)

{
  byte bVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  uint *puVar5;
  int iVar6;
  byte *pbVar7;
  uint uVar8;
  bool bVar9;
  byte *pbVar10;
  int *piVar11;
  void *__s;
  uint uVar12;
  
  piVar11 = (int *)param_1[0x8e];
  iVar2 = __divsi3(param_3,piVar11[2]);
  __s = param_2;
  if (*piVar11 != 2) {
    __s = (void *)piVar11[3];
  }
  _TIFFmemset(__s,0,iVar2 << 2);
  pbVar7 = (byte *)param_1[0x93];
  iVar6 = param_1[0x94];
  uVar12 = 0x18;
  do {
    iVar4 = 0;
    bVar9 = 0 < iVar2 && 0 < iVar6;
    while (bVar9) {
      uVar8 = (uint)*pbVar7;
      if ((*pbVar7 & 0x80) == 0) {
        iVar3 = iVar6 + -1;
        pbVar10 = pbVar7 + 1;
        if ((iVar3 != 0) && (uVar8 != 0)) {
          iVar3 = iVar4 + iVar6 + -1;
          puVar5 = (uint *)((int)__s + iVar4 * 4);
          iVar6 = iVar4;
          do {
            pbVar7 = pbVar7 + 1;
            iVar6 = iVar6 + 1;
            *puVar5 = *puVar5 | (uint)*pbVar7 << (uVar12 & 0xff);
            if (iVar6 == iVar3) {
              iVar3 = 0;
              pbVar10 = pbVar10 + (iVar6 - iVar4);
              iVar4 = iVar6;
              goto LAB_0074446c;
            }
            puVar5 = puVar5 + 1;
          } while ((iVar6 != iVar4 + uVar8) && (iVar6 < iVar2));
          iVar3 = iVar3 - iVar6;
          pbVar10 = pbVar10 + (iVar6 - iVar4);
          iVar4 = iVar6;
        }
      }
      else {
        bVar1 = pbVar7[1];
        pbVar10 = pbVar7 + 2;
        iVar3 = iVar6 + -2;
        if (uVar8 != 0x7e) {
          iVar6 = iVar4 + -0x7e;
          puVar5 = (uint *)((int)__s + iVar4 * 4);
          do {
            iVar4 = iVar4 + 1;
            *puVar5 = (uint)bVar1 << (uVar12 & 0xff) | *puVar5;
            if (iVar4 == iVar6 + uVar8) break;
            puVar5 = puVar5 + 1;
          } while (iVar4 < iVar2);
        }
      }
LAB_0074446c:
      bVar9 = iVar4 < iVar2 && 0 < iVar3;
      pbVar7 = pbVar10;
      iVar6 = iVar3;
    }
    if (iVar4 != iVar2) {
      TIFFErrorExt(param_1[0x99],*param_1,
                   "LogLuvDecode32: Not enough data at row %d (short %d pixels)",param_1[0x72],
                   iVar2 - iVar4);
      param_1[0x94] = iVar6;
      param_1[0x93] = pbVar7;
      return 0;
    }
    uVar12 = uVar12 - 8;
    if (uVar12 == 0xfffffff8) {
      (*(code *)piVar11[5])(piVar11,param_2);
      param_1[0x94] = iVar6;
      param_1[0x93] = pbVar7;
      return 1;
    }
  } while( true );
}

// ---- FUN_007446a8  @ 0x7446a8
int FUN_007446a8(int param_1,int param_2,uint param_3,undefined4 param_4)

{
  int iVar1;
  int iVar2;
  int iVar3;
  
  iVar1 = TIFFScanlineSize();
  if (param_3 != 0) {
    iVar3 = param_3 - iVar1;
    do {
      iVar2 = (**(code **)(param_1 + 0x210))(param_1,param_2,iVar1,param_4);
      iVar3 = iVar3 + -iVar1;
      param_2 = param_2 + iVar1;
      if (iVar2 != 1) {
        iVar1 = 1 - param_3;
        if (1 < param_3) {
          iVar1 = 0;
        }
        return iVar1;
      }
      param_3 = -iVar1 + param_3;
    } while (iVar3 + iVar1 != 0);
  }
  return 1;
}

// ---- FUN_00744724  @ 0x744724
int FUN_00744724(int param_1,int param_2,uint param_3,undefined4 param_4)

{
  int iVar1;
  int iVar2;
  int iVar3;
  
  iVar1 = TIFFScanlineSize();
  if (param_3 != 0) {
    iVar3 = param_3 - iVar1;
    do {
      iVar2 = (**(code **)(param_1 + 0x20c))(param_1,param_2,iVar1,param_4);
      iVar3 = iVar3 + -iVar1;
      param_2 = param_2 + iVar1;
      if (iVar2 == 0) {
        iVar1 = 1 - param_3;
        if (1 < param_3) {
          iVar1 = 0;
        }
        return iVar1;
      }
      param_3 = -iVar1 + param_3;
    } while (iVar3 + iVar1 != 0);
  }
  return 1;
}

// ---- FUN_007447a0  @ 0x7447a0
void FUN_007447a0(int param_1)

{
  int iVar1;
  int iVar2;
  
  iVar2 = *(int *)(param_1 + 0x238);
  iVar1 = *(int *)(iVar2 + 0xc);
  *(undefined4 *)(param_1 + 0x290) = *(undefined4 *)(iVar2 + 0x18);
  *(undefined4 *)(param_1 + 0x28c) = *(undefined4 *)(iVar2 + 0x1c);
  if (iVar1 != 0) {
    _TIFFfree();
  }
  _TIFFfree(iVar2);
  *(undefined4 *)(param_1 + 0x238) = 0;
  _TIFFSetDefaultCompressionState(param_1);
  return;
}

// ---- FUN_007447e8  @ 0x7447e8
int FUN_007447e8(int param_1,int param_2,uint param_3,undefined4 param_4)

{
  int iVar1;
  int iVar2;
  int iVar3;
  
  iVar1 = TIFFTileRowSize();
  if (param_3 != 0) {
    iVar3 = param_3 - iVar1;
    do {
      iVar2 = (**(code **)(param_1 + 0x210))(param_1,param_2,iVar1,param_4);
      iVar3 = iVar3 + -iVar1;
      param_2 = param_2 + iVar1;
      if (iVar2 != 1) {
        iVar1 = 1 - param_3;
        if (1 < param_3) {
          iVar1 = 0;
        }
        return iVar1;
      }
      param_3 = -iVar1 + param_3;
    } while (iVar3 + iVar1 != 0);
  }
  return 1;
}

// ---- FUN_00744864  @ 0x744864
int FUN_00744864(int param_1,int param_2,uint param_3,undefined4 param_4)

{
  int iVar1;
  int iVar2;
  int iVar3;
  
  iVar1 = TIFFTileRowSize();
  if (param_3 != 0) {
    iVar3 = param_3 - iVar1;
    do {
      iVar2 = (**(code **)(param_1 + 0x20c))(param_1,param_2,iVar1,param_4);
      iVar3 = iVar3 + -iVar1;
      param_2 = param_2 + iVar1;
      if (iVar2 == 0) {
        iVar1 = 1 - param_3;
        if (1 < param_3) {
          iVar1 = 0;
        }
        return iVar1;
      }
      param_3 = -iVar1 + param_3;
    } while (iVar3 + iVar1 != 0);
  }
  return 1;
}

// ---- FUN_007448e0  @ 0x7448e0
undefined4 FUN_007448e0(int param_1,int param_2,undefined4 param_3)

{
  uint uVar1;
  int iVar2;
  short *psVar3;
  int iVar4;
  int iVar5;
  char *pcVar6;
  char *pcVar7;
  int *piVar8;
  int iVar9;
  int iVar10;
  int iVar11;
  uint uVar12;
  int iVar13;
  char *pcVar14;
  uint local_38;
  int local_2c;
  
  piVar8 = *(int **)(param_1 + 0x238);
  iVar2 = __divsi3(param_3,piVar8[2]);
  local_2c = param_2;
  if (*piVar8 != 1) {
    local_2c = piVar8[3];
    (*(code *)piVar8[5])(piVar8,param_2,iVar2);
  }
  pcVar6 = *(char **)(param_1 + 0x24c);
  iVar5 = *(int *)(param_1 + 0x248) - *(int *)(param_1 + 0x250);
  local_38 = 8;
  do {
    if (0 < iVar2) {
      iVar10 = 0;
      uVar1 = 0xff << (local_38 & 0xff);
LAB_007449a4:
      do {
        iVar11 = iVar10;
        if (iVar5 < 4) {
          *(char **)(param_1 + 0x24c) = pcVar6;
          *(int *)(param_1 + 0x250) = *(int *)(param_1 + 0x248) - iVar5;
          iVar5 = TIFFFlushData1(param_1);
          if (iVar5 == 0) {
            return 0xffffffff;
          }
          pcVar6 = *(char **)(param_1 + 0x24c);
          iVar5 = *(int *)(param_1 + 0x248) - *(int *)(param_1 + 0x250);
        }
        do {
          psVar3 = (short *)(local_2c + (iVar11 + 1) * 2);
          iVar13 = 1;
          while( true ) {
            iVar4 = iVar11 + iVar13;
            iVar9 = iVar13 + 1;
            if ((iVar2 <= iVar4) ||
               ((uVar1 & (int)*psVar3) !=
                (int)(short)(*(ushort *)(local_2c + iVar11 * 2) & (ushort)uVar1))) break;
            psVar3 = psVar3 + 1;
            iVar13 = iVar9;
            if (iVar9 == 0x81) goto LAB_00744a2c;
          }
          iVar9 = iVar13;
        } while ((iVar13 < 4) && (iVar11 = iVar4, iVar4 < iVar2));
LAB_00744a2c:
        iVar13 = iVar11 - iVar10;
        if (iVar13 - 2U < 2) {
          iVar4 = iVar10 + 1;
          uVar12 = (uint)(short)((ushort)uVar1 & *(ushort *)(local_2c + iVar10 * 2));
          psVar3 = (short *)(local_2c + iVar4 * 2);
          do {
            iVar4 = iVar4 + 1;
            if (uVar12 != (uVar1 & (int)*psVar3)) goto LAB_00744a3c;
            psVar3 = psVar3 + 1;
          } while (iVar4 != iVar11);
          iVar5 = iVar5 + -2;
          *pcVar6 = ('~' - (char)iVar10) + (char)iVar11;
          pcVar6[1] = (char)((int)uVar12 >> (local_38 & 0xff));
          pcVar6 = pcVar6 + 2;
          iVar10 = iVar11;
        }
        else {
LAB_00744a3c:
          if (iVar10 < iVar11) {
            while( true ) {
              if (0x7e < iVar13) {
                iVar13 = 0x7f;
              }
              if (iVar5 <= iVar13 + 2) {
                *(char **)(param_1 + 0x24c) = pcVar6;
                *(int *)(param_1 + 0x250) = *(int *)(param_1 + 0x248) - iVar5;
                iVar5 = TIFFFlushData1();
                if (iVar5 == 0) {
                  return 0xffffffff;
                }
                pcVar6 = *(char **)(param_1 + 0x24c);
                iVar5 = *(int *)(param_1 + 0x248) - *(int *)(param_1 + 0x250);
              }
              iVar5 = iVar5 + -1;
              pcVar7 = pcVar6 + 1;
              *pcVar6 = (char)iVar13;
              if (iVar13 != 0) {
                pcVar14 = pcVar6 + iVar13;
                psVar3 = (short *)(local_2c + iVar10 * 2);
                do {
                  pcVar6 = pcVar6 + 1;
                  *pcVar6 = (char)((int)*psVar3 >> (local_38 & 0xff));
                  psVar3 = psVar3 + 1;
                } while (pcVar6 != pcVar14);
                iVar10 = iVar10 + iVar13;
                iVar5 = iVar5 - iVar13;
                pcVar7 = pcVar7 + iVar13;
              }
              pcVar6 = pcVar7;
              if (iVar11 <= iVar10) break;
              iVar13 = iVar11 - iVar10;
            }
          }
        }
        if (3 < iVar9) {
          iVar10 = iVar10 + iVar9;
          *pcVar6 = (char)iVar9 + '~';
          iVar5 = iVar5 + -2;
          pcVar6[1] = (char)((int)*(short *)(local_2c + iVar11 * 2) >> (local_38 & 0xff));
          pcVar6 = pcVar6 + 2;
          if (iVar2 <= iVar10) break;
          goto LAB_007449a4;
        }
      } while (iVar10 < iVar2);
    }
    local_38 = local_38 - 8;
    if (local_38 == 0xfffffff8) {
      *(char **)(param_1 + 0x24c) = pcVar6;
      *(int *)(param_1 + 0x250) = *(int *)(param_1 + 0x248) - iVar5;
      return 1;
    }
  } while( true );
}

// ---- FUN_00744c18  @ 0x744c18
undefined4 FUN_00744c18(int param_1,int param_2,undefined4 param_3)

{
  uint uVar1;
  int iVar2;
  uint *puVar3;
  char *pcVar4;
  int iVar5;
  char *pcVar6;
  char *pcVar7;
  int *piVar8;
  int iVar9;
  char *pcVar10;
  uint uVar11;
  char *pcVar12;
  int iVar13;
  int iVar14;
  uint local_30;
  
  piVar8 = *(int **)(param_1 + 0x238);
  iVar2 = __divsi3(param_3,piVar8[2]);
  iVar14 = param_2;
  if (*piVar8 != 2) {
    iVar14 = piVar8[3];
    (*(code *)piVar8[5])(piVar8,param_2,iVar2);
  }
  local_30 = 0x18;
  pcVar6 = *(char **)(param_1 + 0x24c);
  iVar5 = *(int *)(param_1 + 0x248) - *(int *)(param_1 + 0x250);
  do {
    if (0 < iVar2) {
      pcVar10 = (char *)0x0;
      uVar1 = 0xff << (local_30 & 0xff);
      do {
        pcVar12 = pcVar10;
        if (iVar5 < 4) {
          *(char **)(param_1 + 0x24c) = pcVar6;
          *(int *)(param_1 + 0x250) = *(int *)(param_1 + 0x248) - iVar5;
          iVar5 = TIFFFlushData1();
          if (iVar5 == 0) {
            return 0xffffffff;
          }
          pcVar6 = *(char **)(param_1 + 0x24c);
          iVar5 = *(int *)(param_1 + 0x248) - *(int *)(param_1 + 0x250);
        }
        do {
          puVar3 = (uint *)(iVar14 + (int)(pcVar12 + 1) * 4);
          iVar13 = 1;
          while( true ) {
            pcVar4 = pcVar12 + iVar13;
            iVar9 = iVar13 + 1;
            if ((iVar2 <= (int)pcVar4) ||
               ((uVar1 & *puVar3) != (uVar1 & *(uint *)(iVar14 + (int)pcVar12 * 4)))) break;
            puVar3 = puVar3 + 1;
            iVar13 = iVar9;
            if (iVar9 == 0x81) goto LAB_00744d44;
          }
          iVar9 = iVar13;
          if (3 < iVar13) {
LAB_00744d44:
            iVar13 = (int)pcVar12 - (int)pcVar10;
            goto joined_r0x00744e34;
          }
          pcVar12 = pcVar4;
        } while ((int)pcVar4 < iVar2);
        iVar13 = (int)pcVar4 - (int)pcVar10;
joined_r0x00744e34:
        pcVar4 = (char *)(iVar13 + -2);
        if (pcVar4 < (char *)0x2) {
          pcVar4 = pcVar10 + 1;
          uVar11 = uVar1 & *(uint *)(iVar14 + (int)pcVar10 * 4);
          puVar3 = (uint *)(iVar14 + (int)pcVar4 * 4);
          do {
            pcVar4 = pcVar4 + 1;
            if (uVar11 != (*puVar3 & uVar1)) goto LAB_00744d5c;
            puVar3 = puVar3 + 1;
          } while (pcVar4 != pcVar12);
          iVar5 = iVar5 + -2;
          pcVar4 = pcVar6 + 1;
          *pcVar6 = ('~' - (char)pcVar10) + (char)pcVar12;
          pcVar6[1] = (char)(uVar11 >> (local_30 & 0xff));
          pcVar6 = pcVar6 + 2;
          pcVar10 = pcVar12;
        }
        else {
LAB_00744d5c:
          if ((int)pcVar10 < (int)pcVar12) {
            while( true ) {
              if (0x7e < iVar13) {
                iVar13 = 0x7f;
              }
              if (iVar5 <= iVar13 + 2) {
                *(char **)(param_1 + 0x24c) = pcVar6;
                *(int *)(param_1 + 0x250) = *(int *)(param_1 + 0x248) - iVar5;
                iVar5 = TIFFFlushData1();
                if (iVar5 == 0) {
                  return 0xffffffff;
                }
                pcVar6 = *(char **)(param_1 + 0x24c);
                iVar5 = *(int *)(param_1 + 0x248) - *(int *)(param_1 + 0x250);
              }
              iVar5 = iVar5 + -1;
              pcVar7 = pcVar6 + 1;
              *pcVar6 = (char)iVar13;
              pcVar4 = pcVar6;
              if (iVar13 != 0) {
                pcVar4 = pcVar6 + iVar13;
                puVar3 = (uint *)(iVar14 + (int)pcVar10 * 4);
                do {
                  pcVar6 = pcVar6 + 1;
                  *pcVar6 = (char)(*puVar3 >> (local_30 & 0xff));
                  puVar3 = puVar3 + 1;
                } while (pcVar6 != pcVar4);
                pcVar10 = pcVar10 + iVar13;
                iVar5 = iVar5 - iVar13;
                pcVar7 = pcVar7 + iVar13;
                pcVar4 = pcVar6;
              }
              pcVar6 = pcVar7;
              if ((int)pcVar12 <= (int)pcVar10) break;
              iVar13 = (int)pcVar12 - (int)pcVar10;
            }
          }
        }
        if (iVar9 < 4) {
          iVar13 = 0;
        }
        else {
          iVar5 = iVar5 + -2;
          pcVar4 = pcVar6 + 1;
          *pcVar6 = (char)iVar9 + '~';
          iVar13 = iVar9;
        }
        pcVar10 = pcVar10 + iVar13;
        if (3 < iVar9) {
          pcVar6[1] = (char)(*(uint *)(iVar14 + (int)pcVar12 * 4) >> (local_30 & 0xff));
          pcVar6 = pcVar4 + 1;
        }
      } while ((int)pcVar10 < iVar2);
    }
    local_30 = local_30 - 8;
    if (local_30 == 0xfffffff8) {
      *(char **)(param_1 + 0x24c) = pcVar6;
      *(int *)(param_1 + 0x250) = *(int *)(param_1 + 0x248) - iVar5;
      return 1;
    }
  } while( true );
}

// ---- FUN_00744f0c  @ 0x744f0c
undefined4 FUN_00744f0c(int param_1,undefined4 *param_2,undefined4 param_3)

{
  int iVar1;
  int iVar2;
  undefined1 *puVar3;
  undefined1 *puVar4;
  int iVar5;
  int *piVar6;
  undefined4 *puVar7;
  
  piVar6 = *(int **)(param_1 + 0x238);
  iVar1 = __divsi3(param_3,piVar6[2]);
  puVar7 = param_2;
  if (*piVar6 != 2) {
    puVar7 = (undefined4 *)piVar6[3];
    (*(code *)piVar6[5])(piVar6,param_2,iVar1);
  }
  iVar2 = *(int *)(param_1 + 0x248);
  puVar3 = *(undefined1 **)(param_1 + 0x24c);
  iVar5 = iVar2 - *(int *)(param_1 + 0x250);
  if (iVar1 != 0) {
    iVar2 = 0;
    puVar4 = puVar3;
    do {
      iVar2 = iVar2 + 1;
      if (iVar5 < 3) {
        *(undefined1 **)(param_1 + 0x24c) = puVar4;
        *(int *)(param_1 + 0x250) = *(int *)(param_1 + 0x248) - iVar5;
        iVar5 = TIFFFlushData1(param_1);
        if (iVar5 == 0) {
          return 0xffffffff;
        }
        puVar4 = *(undefined1 **)(param_1 + 0x24c);
        iVar5 = *(int *)(param_1 + 0x248) - *(int *)(param_1 + 0x250);
      }
      iVar5 = iVar5 + -3;
      *puVar4 = (char)*(undefined2 *)((int)puVar7 + 2);
      puVar4[1] = (char)((uint)*puVar7 >> 8);
      puVar3 = puVar4 + 3;
      puVar4[2] = (char)*puVar7;
      puVar4 = puVar3;
      puVar7 = puVar7 + 1;
    } while (iVar2 != iVar1);
    iVar2 = *(int *)(param_1 + 0x248);
  }
  *(int *)(param_1 + 0x250) = iVar2 - iVar5;
  *(undefined1 **)(param_1 + 0x24c) = puVar3;
  return 1;
}

// ---- FUN_00745740  @ 0x745740
void FUN_00745740(int param_1,int param_2,int param_3)

{
  int iVar1;
  undefined4 *puVar2;
  
  if (param_3 < 1) {
    return;
  }
  iVar1 = 0;
  puVar2 = *(undefined4 **)(param_1 + 0xc);
  do {
    iVar1 = iVar1 + 1;
    LogLuv24toXYZ(*puVar2,param_2);
    param_2 = param_2 + 0xc;
    puVar2 = puVar2 + 1;
  } while (iVar1 != param_3);
  return;
}

// ---- FUN_00745a40  @ 0x745a40
void FUN_00745a40(int param_1,int param_2,int param_3)

{
  int iVar1;
  undefined4 *puVar2;
  
  if (param_3 < 1) {
    return;
  }
  iVar1 = 0;
  puVar2 = *(undefined4 **)(param_1 + 0xc);
  do {
    iVar1 = iVar1 + 1;
    LogLuv32toXYZ(*puVar2,param_2);
    param_2 = param_2 + 0xc;
    puVar2 = puVar2 + 1;
  } while (iVar1 != param_3);
  return;
}

// ---- FUN_00746100  @ 0x746100
void FUN_00746100(int param_1,int param_2,int param_3)

{
  undefined4 uVar1;
  int iVar2;
  undefined4 *puVar3;
  
  if (param_3 < 1) {
    return;
  }
  iVar2 = 0;
  puVar3 = *(undefined4 **)(param_1 + 0xc);
  do {
    uVar1 = LogLuv24fromXYZ(param_2,*(undefined4 *)(param_1 + 4));
    iVar2 = iVar2 + 1;
    param_2 = param_2 + 0xc;
    *puVar3 = uVar1;
    puVar3 = puVar3 + 1;
  } while (iVar2 != param_3);
  return;
}

// ---- FUN_00746500  @ 0x746500
void FUN_00746500(int param_1,int param_2,int param_3)

{
  undefined4 uVar1;
  int iVar2;
  undefined4 *puVar3;
  
  if (param_3 < 1) {
    return;
  }
  iVar2 = 0;
  puVar3 = *(undefined4 **)(param_1 + 0xc);
  do {
    uVar1 = LogLuv32fromXYZ(param_2,*(undefined4 *)(param_1 + 4));
    iVar2 = iVar2 + 1;
    param_2 = param_2 + 0xc;
    *puVar3 = uVar1;
    puVar3 = puVar3 + 1;
  } while (iVar2 != param_3);
  return;
}

// ---- FUN_007465a8  @ 0x7465a8
void FUN_007465a8(undefined4 *param_1)

{
  undefined4 *puVar1;
  char *pcVar2;
  char acStack_30 [20];
  int local_1c;
  
  pcVar2 = acStack_30;
  local_1c = __stack_chk_guard;
  puVar1 = (undefined4 *)TIFFFindCODEC(*(undefined2 *)(param_1 + 0x16));
  sprintf(acStack_30,"%d",(uint)*(ushort *)(param_1 + 0x16));
  if (puVar1 != (undefined4 *)0x0) {
    pcVar2 = (char *)*puVar1;
  }
  TIFFErrorExt(param_1[0x99],*param_1,"%s compression support is not configured",pcVar2);
  if (local_1c == __stack_chk_guard) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(0);
}

// ---- FUN_00746644  @ 0x746644
void FUN_00746644(int param_1,char *param_2,__gnuc_va_list param_3)

{
  if (param_1 != 0) {
    fprintf((FILE *)recv,"%s: ",param_1);
  }
  vfprintf((FILE *)recv,param_2,param_3);
  fwrite(&DAT_00853018,1,2,(FILE *)recv);
  return;
}

// ---- FUN_007466c8  @ 0x7466c8
void FUN_007466c8(int param_1,char *param_2,__gnuc_va_list param_3)

{
  if (param_1 != 0) {
    fprintf((FILE *)recv,"%s: ",param_1);
  }
  fwrite("Warning, ",1,9,(FILE *)recv);
  vfprintf((FILE *)recv,param_2,param_3);
  fwrite(&DAT_00853018,1,2,(FILE *)recv);
  return;
}

// ---- FUN_007468bc  @ 0x7468bc
__blksize_t FUN_007468bc(int param_1)

{
  int iVar1;
  stat sStack_70;
  
  iVar1 = fstat(param_1,&sStack_70);
  if (iVar1 < 0) {
    sStack_70.st_blksize = 0;
  }
  return sStack_70.st_blksize;
}

// ---- FUN_007468e0  @ 0x7468e0
undefined4 FUN_007468e0(int param_1,undefined4 *param_2,size_t *param_3)

{
  size_t __len;
  void *pvVar1;
  
  __len = FUN_007468bc();
  if (__len != 0xffffffff) {
    pvVar1 = mmap((void *)0x0,__len,1,1,param_1,0);
    *param_2 = pvVar1;
    if (pvVar1 != (void *)0xffffffff) {
      *param_3 = __len;
      return 1;
    }
  }
  return 0;
}

// ---- FUN_007469c0  @ 0x7469c0
undefined4 FUN_007469c0(int param_1,byte *param_2,uint param_3)

{
  byte bVar1;
  char cVar2;
  byte *pbVar3;
  int iVar4;
  byte bVar5;
  int iVar6;
  int iVar7;
  uint uVar8;
  uint uVar9;
  byte *pbVar10;
  byte *pbVar11;
  byte *pbVar12;
  byte *pbVar13;
  int iVar14;
  uint local_2c;
  
  iVar6 = *(int *)(param_1 + 0x248);
  pbVar12 = *(byte **)(param_1 + 0x24c);
  iVar14 = *(int *)(param_1 + 0x244);
  pbVar10 = pbVar12;
  if (0 < (int)param_3) {
    uVar9 = 0;
    pbVar10 = (byte *)0x0;
    bVar1 = *param_2;
joined_r0x00746a00:
    local_2c = param_3 - 1;
    pbVar13 = param_2 + 1;
    pbVar11 = pbVar10;
    if ((local_2c == 0) || (param_2[1] != bVar1)) {
      uVar8 = 1;
    }
    else {
      uVar8 = 1;
      do {
        uVar8 = uVar8 + 1;
        if (uVar8 == param_3) {
          pbVar13 = param_2 + uVar8;
          local_2c = 0;
          goto LAB_00746a3c;
        }
      } while (param_2[uVar8] == param_2[1]);
      local_2c = param_3 - uVar8;
      pbVar13 = param_2 + uVar8;
    }
LAB_00746a3c:
    pbVar10 = pbVar11;
    if ((byte *)(iVar14 + iVar6) <= pbVar12 + 2) {
      if (uVar9 == 1 || uVar9 == 3) {
        *(byte **)(param_1 + 0x250) =
             pbVar11 + (*(int *)(param_1 + 0x250) - *(int *)(param_1 + 0x24c));
        iVar4 = TIFFFlushData1(param_1);
        if (iVar4 == 0) {
          return 0xffffffff;
        }
        iVar4 = (int)pbVar12 - (int)pbVar11;
        pbVar10 = *(byte **)(param_1 + 0x24c);
        pbVar12 = pbVar10;
        if (0 < iVar4) {
          iVar7 = 0;
          do {
            pbVar10[iVar7] = pbVar11[iVar7];
            iVar7 = iVar7 + 1;
          } while (iVar7 != iVar4);
          pbVar12 = pbVar10 + iVar7;
          pbVar10 = *(byte **)(param_1 + 0x24c);
        }
      }
      else {
        *(byte **)(param_1 + 0x250) =
             pbVar12 + (*(int *)(param_1 + 0x250) - *(int *)(param_1 + 0x24c));
        iVar4 = TIFFFlushData1(param_1);
        if (iVar4 == 0) {
          return 0xffffffff;
        }
        pbVar12 = *(byte **)(param_1 + 0x24c);
      }
    }
    cVar2 = (char)uVar8;
    pbVar3 = pbVar12;
    pbVar11 = pbVar10;
    switch(uVar9) {
    case 0:
      if (uVar8 != 1) {
        if ((int)uVar8 < 0x81) {
          uVar9 = 2;
          *pbVar12 = 1 - cVar2;
          pbVar12[1] = bVar1;
          pbVar3 = pbVar12 + 2;
          goto joined_r0x00746c58;
        }
        uVar8 = uVar8 - 0x80;
        uVar9 = 2;
        *pbVar12 = 0x81;
        pbVar12[1] = bVar1;
        pbVar12 = pbVar12 + 2;
        goto LAB_00746a3c;
      }
LAB_00746c34:
      *pbVar12 = 0;
      pbVar12[1] = bVar1;
      pbVar3 = pbVar12 + 2;
      uVar9 = uVar8;
      pbVar10 = pbVar12;
      goto joined_r0x00746c58;
    case 1:
      if (uVar8 == 1) {
        bVar5 = *pbVar10;
        *pbVar10 = bVar5 + 1;
        uVar9 = (uint)((byte)(bVar5 + 1) != 0x7f);
        *pbVar12 = bVar1;
        pbVar3 = pbVar12 + 1;
        goto joined_r0x00746c58;
      }
      if ((int)uVar8 < 0x81) {
        uVar9 = 3;
        *pbVar12 = 1 - cVar2;
        pbVar12[1] = bVar1;
        pbVar3 = pbVar12 + 2;
        goto joined_r0x00746c58;
      }
      uVar8 = uVar8 - 0x80;
      uVar9 = 3;
      *pbVar12 = 0x81;
      pbVar12[1] = bVar1;
      pbVar12 = pbVar12 + 2;
      goto LAB_00746a3c;
    case 2:
      goto LAB_00746b24;
    case 3:
      goto LAB_00746b14;
    default:
      goto joined_r0x00746c58;
    }
  }
LAB_00746c60:
  *(byte **)(param_1 + 0x24c) = pbVar12;
  *(byte **)(param_1 + 0x250) = pbVar12 + (*(int *)(param_1 + 0x250) - (int)pbVar10);
  return 1;
LAB_00746b14:
  if (((uVar8 == 1) && (pbVar12[-2] == 0xff)) && (*pbVar10 < 0x7e)) {
    bVar5 = *pbVar10 + 2;
    *pbVar10 = bVar5;
    uVar9 = (uint)(bVar5 != 0x7f);
    pbVar12[-2] = pbVar12[-1];
  }
  else {
    uVar9 = 2;
  }
  goto LAB_00746a3c;
LAB_00746b24:
  if (uVar8 == 1) goto LAB_00746c34;
  if (0x80 < (int)uVar8) {
    uVar8 = uVar8 - 0x80;
    *pbVar12 = 0x81;
    pbVar12[1] = bVar1;
    pbVar12 = pbVar12 + 2;
    goto LAB_00746a3c;
  }
  *pbVar12 = 1 - cVar2;
  pbVar12[1] = bVar1;
  pbVar3 = pbVar12 + 2;
joined_r0x00746c58:
  pbVar12 = pbVar3;
  if ((int)local_2c < 1) goto LAB_00746c5c;
  bVar1 = *pbVar13;
  param_3 = local_2c;
  param_2 = pbVar13;
  goto joined_r0x00746a00;
LAB_00746c5c:
  pbVar10 = *(byte **)(param_1 + 0x24c);
  goto LAB_00746c60;
}

// ---- FUN_00746d58  @ 0x746d58
undefined4 FUN_00746d58(int param_1)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  
  puVar1 = _TIFFmalloc(4);
  *(undefined4 **)(param_1 + 0x238) = puVar1;
  if (puVar1 == (undefined4 *)0x0) {
    uVar3 = 0;
  }
  else {
    if ((*(uint *)(param_1 + 0xc) & 0x400) != 0) {
      uVar3 = TIFFTileRowSize(param_1);
      *puVar1 = uVar3;
      return 1;
    }
    uVar2 = TIFFScanlineSize(param_1);
    uVar3 = 1;
    *puVar1 = uVar2;
  }
  return uVar3;
}

// ---- FUN_00746db8  @ 0x746db8
undefined4 FUN_00746db8(undefined4 *param_1,void *param_2,int param_3,undefined4 param_4)

{
  byte bVar1;
  int iVar2;
  byte *pbVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  byte *__src;
  uint uVar7;
  size_t __n;
  
  __src = (byte *)param_1[0x93];
  iVar5 = param_1[0x94];
LAB_00746de0:
  do {
    iVar2 = iVar5;
    pbVar3 = __src;
    iVar4 = param_3;
    if (0 < param_3) {
      iVar4 = iVar5;
    }
    while( true ) {
      if (iVar4 < 1) {
        param_1[0x93] = pbVar3;
        param_1[0x94] = iVar2;
        if (param_3 < 1) {
          return 1;
        }
        TIFFErrorExt(param_1[0x99],*param_1,"PackBitsDecode: Not enough data for scanline %ld",
                     param_1[0x72]);
        return 0;
      }
      __src = pbVar3 + 1;
      uVar7 = (uint)*pbVar3;
      iVar5 = iVar2 + -1;
      if (uVar7 < 0x80) break;
      if (uVar7 - 0x100 == -0x80) goto LAB_00746de0;
      iVar5 = 1 - (uVar7 - 0x100);
      if (param_3 < iVar5) {
        TIFFWarningExt(param_1[0x99],*param_1,
                       "PackBitsDecode: discarding %ld bytes to avoid buffer overrun",
                       iVar5 - param_3,param_4);
        iVar6 = 0;
      }
      else {
        iVar6 = param_3 - iVar5;
        param_3 = iVar5;
      }
      bVar1 = *__src;
      iVar5 = 0;
      do {
        *(byte *)((int)param_2 + iVar5) = bVar1;
        iVar5 = iVar5 + 1;
      } while (iVar5 != param_3);
      iVar4 = iVar6;
      if (0 < iVar6) {
        iVar4 = iVar2 + -2;
      }
      param_2 = (void *)((int)param_2 + iVar5);
      iVar2 = iVar2 + -2;
      param_3 = iVar6;
      pbVar3 = pbVar3 + 2;
    }
    if (param_3 <= (int)uVar7) {
      iVar4 = (1 - param_3) + uVar7;
      uVar7 = param_3 - 1;
      TIFFWarningExt(param_1[0x99],*param_1,
                     "PackBitsDecode: discarding %ld bytes to avoid buffer overrun",iVar4,param_4);
    }
    __n = uVar7 + 1;
    _TIFFmemcpy(param_2,__src,__n);
    iVar5 = iVar5 - __n;
    param_2 = (void *)((int)param_2 + __n);
    param_3 = param_3 - __n;
    __src = __src + __n;
  } while( true );
}

// ---- FUN_00747888  @ 0x747888
int FUN_00747888(undefined4 *param_1,int param_2,int param_3,undefined4 param_4)

{
  int iVar1;
  int iVar2;
  
  iVar2 = param_2 * param_3;
  if ((param_3 != 0) && (iVar1 = __udivsi3(iVar2,param_3), iVar1 != param_2)) {
    iVar2 = 0;
    TIFFErrorExt(param_1[0x99],*param_1,"Integer overflow in %s",param_4);
  }
  return iVar2;
}

// ---- FUN_00747ff8  @ 0x747ff8
void FUN_00747ff8(void *param_1,int param_2,void *param_3,int param_4,size_t param_5,int param_6)

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

// ---- FUN_00748044  @ 0x748044
uint FUN_00748044(byte *param_1,uint param_2,int param_3,int param_4,int param_5,int param_6)

{
  byte bVar1;
  void *__ptr;
  byte bVar2;
  uint __size;
  uint uVar3;
  code *pcVar4;
  byte *local_2c;
  uint local_28;
  
  __size = param_3 * param_4;
  if (((param_3 < 1) || (param_4 < 1)) || (param_5 < param_3)) {
    __assert2("../libwebp/src/dec/alpha.c",0x36,"DecodeAlpha",
              "width > 0 && height > 0 && stride >= width");
  }
  if ((param_1 == (byte *)0x0) || (param_6 == 0)) {
    __assert2("../libwebp/src/dec/alpha.c",0x37,"DecodeAlpha","data != NULL && output != NULL");
  }
  if (param_2 < 2) {
    return 0;
  }
  bVar1 = *param_1;
  uVar3 = *param_1 >> 2 & 3;
  bVar2 = *param_1 >> 4 & 3;
  if (((1 < (bVar1 & 3)) || (3 < uVar3)) || ((1 < bVar2 || (*param_1 >> 6 != 0)))) {
    return 0;
  }
  if ((bVar1 & 3) == 0) {
    local_28 = (uint)(__size <= param_2);
    local_2c = param_1 + 1;
  }
  else {
    local_2c = malloc(__size);
    if (local_2c == (byte *)0x0) {
      return 0;
    }
    local_28 = VP8LDecodeAlphaImageStream(param_3,param_4,param_1 + 1,param_2 - 1,local_2c);
  }
  if (local_28 != 0) {
    pcVar4 = *(code **)(WebPUnfilters + uVar3 * 4);
    if (pcVar4 == (code *)0x0) {
      FUN_00747ff8(local_2c,param_3,param_6,param_5,param_3,param_4);
    }
    else {
      __ptr = malloc(__size);
      if (__ptr == (void *)0x0) {
        local_28 = 0;
        goto LAB_00748204;
      }
      (*pcVar4)(local_2c,param_3,param_4,1,param_3,__ptr);
      FUN_00747ff8(__ptr,param_3,param_6,param_5,param_3,param_4);
      free(__ptr);
    }
    if (bVar2 == 1) {
      local_28 = DequantizeLevels(local_2c,param_3,param_4);
    }
  }
LAB_00748204:
  if ((bVar1 & 3) != 0) {
    free(local_2c);
  }
  return local_28;
}

// ---- FUN_007482c0  @ 0x7482c0
bool FUN_007482c0(uint param_1)

{
  return param_1 < 0xb;
}

// ---- FUN_007482d4  @ 0x7482d4
undefined4 FUN_007482d4(int param_1)

{
  undefined4 uVar1;
  
  if ((param_1 < 0) || (0xc < param_1)) {
    uVar1 = 0;
  }
  else {
    uVar1 = 1;
  }
  return uVar1;
}

// ---- FUN_007482f4  @ 0x7482f4
undefined4 FUN_007482f4(int *param_1)

{
  uint uVar1;
  bool bVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  uint uVar7;
  uint uVar8;
  uint uVar9;
  uint uVar10;
  uint uVar11;
  uint uVar12;
  undefined4 uVar13;
  
  iVar5 = *param_1;
  iVar6 = param_1[1];
  uVar7 = param_1[2];
  iVar3 = FUN_007482d4(iVar5);
  if (iVar3 == 0) {
    bVar2 = false;
  }
  else {
    iVar4 = FUN_007482c0(iVar5);
    iVar3 = (int)uVar7 >> 0x1f;
    if (iVar4 == 0) {
      uVar8 = param_1[8];
      uVar9 = param_1[9];
      uVar12 = (int)(uVar7 + 1) / 2;
      uVar10 = param_1[10];
      uVar1 = (int)(uVar7 + 1) / 2;
      uVar11 = param_1[0xb];
      bVar2 = param_1[6] != 0 &&
              (param_1[5] != 0 &&
              (param_1[4] != 0 &&
              ((iVar6 + 1) / 2 <= param_1[10] &&
              ((iVar6 + 1) / 2 <= param_1[9] &&
              (iVar6 <= param_1[8] &&
              (-(uVar1 * ((int)uVar10 >> 0x1f) + uVar10 * ((int)uVar1 >> 0x1f) +
                (int)((ulonglong)uVar10 * (ulonglong)uVar1 >> 0x20)) <
               (uint)((uint)((ulonglong)uVar10 * (ulonglong)uVar1) <= (uint)param_1[0xe]) &&
              (-(uVar12 * ((int)uVar9 >> 0x1f) + uVar9 * ((int)uVar12 >> 0x1f) +
                (int)((ulonglong)uVar9 * (ulonglong)uVar12 >> 0x20)) <
               (uint)((uint)((ulonglong)uVar9 * (ulonglong)uVar12) <= (uint)param_1[0xd]) &&
              -(uVar7 * ((int)uVar8 >> 0x1f) + uVar8 * iVar3 +
               (int)((ulonglong)uVar8 * (ulonglong)uVar7 >> 0x20)) <
              (uint)((uint)((ulonglong)uVar8 * (ulonglong)uVar7) <= (uint)param_1[0xc]))))))));
      if (iVar5 == 0xc) {
        bVar2 = param_1[7] != 0 &&
                (-(uVar7 * ((int)uVar11 >> 0x1f) + uVar11 * iVar3 +
                  (int)((ulonglong)uVar11 * (ulonglong)uVar7 >> 0x20)) <
                 (uint)((uint)((ulonglong)uVar11 * (ulonglong)uVar7) <= (uint)param_1[0xf]) &&
                (iVar6 <= param_1[0xb] && bVar2));
      }
    }
    else {
      uVar12 = param_1[5];
      bVar2 = param_1[4] != 0 &&
              (iVar6 * *(int *)(&DAT_0086f3cc + iVar5 * 4) <= param_1[5] &&
              -(uVar7 * ((int)uVar12 >> 0x1f) + uVar12 * iVar3 +
               (int)((ulonglong)uVar12 * (ulonglong)uVar7 >> 0x20)) <
              (uint)((uint)((ulonglong)uVar12 * (ulonglong)uVar7) <= (uint)param_1[6]));
    }
  }
  if (bVar2) {
    uVar13 = 0;
  }
  else {
    uVar13 = 2;
  }
  return uVar13;
}

// ---- FUN_007485ec  @ 0x7485ec
undefined4 FUN_007485ec(int *param_1)

{
  uint uVar1;
  longlong lVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  uint uVar6;
  uint uVar7;
  int iVar8;
  undefined4 uVar9;
  uint uVar10;
  uint local_54;
  uint local_50;
  uint local_30;
  int iStack_2c;
  int local_28;
  int iStack_24;
  
  uVar6 = param_1[1];
  uVar7 = param_1[2];
  iVar8 = *param_1;
  if ((((int)uVar6 < 1) || ((int)uVar7 < 1)) || (iVar3 = FUN_007482d4(iVar8), iVar3 == 0)) {
    uVar9 = 2;
  }
  else {
    if ((param_1[3] == 0) && (param_1[0x14] == 0)) {
      local_54 = 0;
      local_50 = 0;
      local_30 = 0;
      iStack_2c = 0;
      local_28 = 0;
      iStack_24 = 0;
      uVar10 = uVar6 * *(int *)(&DAT_0086f3cc + iVar8 * 4);
      iVar5 = (int)((ulonglong)uVar10 * (ulonglong)uVar7);
      iVar3 = FUN_007482c0(iVar8);
      if (iVar3 == 0) {
        local_54 = (int)(uVar6 + 1) / 2;
        uVar1 = (int)(uVar7 + 1) / 2;
        local_30 = (uint)((ulonglong)local_54 * (ulonglong)uVar1);
        iStack_2c = uVar1 * ((int)local_54 >> 0x1f) + local_54 * ((int)uVar1 >> 0x1f) +
                    (int)((ulonglong)local_54 * (ulonglong)uVar1 >> 0x20);
        if (iVar8 == 0xc) {
          local_28 = (int)((ulonglong)uVar6 * (ulonglong)uVar7);
          iStack_24 = uVar7 * ((int)uVar6 >> 0x1f) + uVar6 * ((int)uVar7 >> 0x1f) +
                      (int)((ulonglong)uVar6 * (ulonglong)uVar7 >> 0x20);
          local_50 = uVar6;
        }
      }
      lVar2 = (ulonglong)uVar10 * (ulonglong)uVar7 +
              CONCAT44(uVar7 * ((int)uVar10 >> 0x1f) + uVar10 * ((int)uVar7 >> 0x1f),local_30 * 2) +
              CONCAT44(iStack_2c * 2 + (uint)CARRY4(local_30,local_30),local_28);
      iVar3 = WebPSafeMalloc((int)lVar2,iStack_24 + (int)((ulonglong)lVar2 >> 0x20),1);
      if (iVar3 == 0) {
        return 1;
      }
      param_1[0x14] = iVar3;
      iVar4 = FUN_007482c0(iVar8);
      if (iVar4 == 0) {
        param_1[4] = iVar3;
        param_1[8] = uVar10;
        param_1[0xc] = iVar5;
        param_1[5] = iVar3 + iVar5;
        param_1[9] = local_54;
        param_1[0xd] = local_30;
        param_1[6] = iVar3 + iVar5 + local_30;
        param_1[10] = local_54;
        param_1[0xe] = local_30;
        if (iVar8 == 0xc) {
          param_1[7] = iVar3 + iVar5 + local_30 * 2;
        }
        param_1[0xf] = local_28;
        param_1[0xb] = local_50;
      }
      else {
        param_1[4] = iVar3;
        param_1[5] = uVar10;
        param_1[6] = iVar5;
      }
    }
    uVar9 = FUN_007482f4(param_1);
  }
  return uVar9;
}

// ---- FUN_007489e8  @ 0x7489e8
undefined1 FUN_007489e8(int param_1,int param_2)

{
  undefined1 uVar1;
  
  if (param_2 == 0) {
    if (param_1 < 0x28) {
      if (param_1 < 0x14) {
        uVar1 = 0xe < param_1;
      }
      else {
        uVar1 = 2;
      }
    }
    else {
      uVar1 = 3;
    }
  }
  else if (param_1 < 0x28) {
    uVar1 = 0xe < param_1;
  }
  else {
    uVar1 = 2;
  }
  return uVar1;
}

// ---- FUN_00748a34  @ 0x748a34
void FUN_00748a34(int param_1,int param_2,int param_3)

{
  undefined4 uVar1;
  int *piVar2;
  int iVar3;
  uint *puVar4;
  int iVar5;
  uint uVar6;
  uint uVar7;
  int iVar8;
  int iVar9;
  int iVar10;
  int iVar11;
  
  piVar2 = (int *)(param_1 + 0xb8);
  iVar3 = *(int *)(param_1 + 0x750);
  puVar4 = (uint *)(*(int *)(param_1 + 0xc4) + param_2 * 4);
  iVar5 = *(int *)(param_1 + 0x744) + iVar3 * *piVar2 * 0x10 + param_2 * 0x10;
  uVar6 = *puVar4 & 0x3f;
  uVar7 = (*puVar4 & 0xfff) >> 6;
  iVar8 = uVar6 * 2 + uVar7;
  if (uVar6 != 0) {
    if (*(int *)(param_1 + 0x784) == 1) {
      if (0 < param_2) {
        (*VP8SimpleHFilter16)(iVar5,iVar3,iVar8 + 4);
      }
      if ((*puVar4 & 0x1000) != 0) {
        (*VP8SimpleHFilter16i)(iVar5,iVar3,iVar8);
      }
      if (0 < param_3) {
        (*VP8SimpleVFilter16)(iVar5,iVar3,iVar8 + 4);
      }
      if ((*puVar4 & 0x1000) != 0) {
        (*VP8SimpleVFilter16i)(iVar5,iVar3,iVar8);
      }
    }
    else {
      iVar9 = *(int *)(param_1 + 0x754);
      iVar10 = *(int *)(param_1 + 0x748) + iVar9 * *piVar2 * 8 + param_2 * 8;
      iVar11 = *(int *)(param_1 + 0x74c) + iVar9 * *piVar2 * 8 + param_2 * 8;
      uVar1 = FUN_007489e8(uVar6,*(undefined1 *)(param_1 + 0x38));
      if (0 < param_2) {
        (*VP8HFilter16)(iVar5,iVar3,iVar8 + 4,uVar7,uVar1);
        (*VP8HFilter8)(iVar10,iVar11,iVar9,iVar8 + 4,uVar7,uVar1);
      }
      if ((*puVar4 & 0x1000) != 0) {
        (*VP8HFilter16i)(iVar5,iVar3,iVar8,uVar7,uVar1);
        (*VP8HFilter8i)(iVar10,iVar11,iVar9,iVar8,uVar7,uVar1);
      }
      if (0 < param_3) {
        (*VP8VFilter16)(iVar5,iVar3,iVar8 + 4,uVar7,uVar1);
        (*VP8VFilter8)(iVar10,iVar11,iVar9,iVar8 + 4,uVar7,uVar1);
      }
      if ((*puVar4 & 0x1000) != 0) {
        (*VP8VFilter16i)(iVar5,iVar3,iVar8,uVar7,uVar1);
        (*VP8VFilter8i)(iVar10,iVar11,iVar9,iVar8,uVar7,uVar1);
      }
    }
  }
  return;
}

// ---- FUN_00748cac  @ 0x748cac
void FUN_00748cac(int param_1)

{
  undefined4 uVar1;
  int local_10;
  
  uVar1 = *(undefined4 *)(param_1 + 0xbc);
  if (*(int *)(param_1 + 0xc0) == 0) {
    __assert2("../libwebp/src/dec/frame.c",0x5d,"FilterRow","dec->thread_ctx_.filter_row_");
  }
  for (local_10 = *(int *)(param_1 + 0x13c); local_10 < *(int *)(param_1 + 0x144);
      local_10 = local_10 + 1) {
    FUN_00748a34(param_1,local_10,uVar1);
  }
  return;
}

// ---- FUN_00748f7c  @ 0x748f7c
undefined4 FUN_00748f7c(int param_1,int *param_2)

{
  bool bVar1;
  undefined4 uVar2;
  int *piVar3;
  uint uVar4;
  size_t __n;
  size_t __n_00;
  int iVar5;
  int iVar6;
  int iVar7;
  int iVar8;
  int iVar9;
  int iVar10;
  undefined4 local_44;
  int local_40;
  int local_3c;
  
  local_44 = 1;
  piVar3 = (int *)(param_1 + 0xb8);
  uVar4 = (uint)(byte)(&DAT_0086f404)[*(int *)(param_1 + 0x784)];
  __n = uVar4 * *(int *)(param_1 + 0x750);
  __n_00 = *(int *)(param_1 + 0x754) * (uVar4 / 2);
  iVar5 = *(int *)(param_1 + 0x750) * *piVar3 * 0x10;
  iVar6 = *(int *)(param_1 + 0x754) * *piVar3 * 8;
  iVar7 = *(int *)(param_1 + 0x744) + (iVar5 - __n);
  iVar8 = *(int *)(param_1 + 0x748) + (iVar6 - __n_00);
  iVar9 = *(int *)(param_1 + 0x74c) + (iVar6 - __n_00);
  iVar10 = *(int *)(param_1 + 0xbc);
  bVar1 = *(int *)(param_1 + 0xbc) < *(int *)(param_1 + 0x148) + -1;
  local_40 = *(int *)(param_1 + 0xbc) * 0x10;
  local_3c = (*(int *)(param_1 + 0xbc) + 1) * 0x10;
  if (*(int *)(param_1 + 0xc0) != 0) {
    FUN_00748cac(param_1);
  }
  if (param_2[0xb] != 0) {
    if (iVar10 == 0) {
      param_2[5] = *(int *)(param_1 + 0x744) + iVar5;
      param_2[6] = *(int *)(param_1 + 0x748) + iVar6;
      param_2[7] = *(int *)(param_1 + 0x74c) + iVar6;
    }
    else {
      local_40 = local_40 - uVar4;
      param_2[5] = iVar7;
      param_2[6] = iVar8;
      param_2[7] = iVar9;
    }
    if (bVar1) {
      local_3c = local_3c - uVar4;
    }
    if (param_2[0x16] < local_3c) {
      local_3c = param_2[0x16];
    }
    param_2[0x1a] = 0;
    if ((*(int *)(param_1 + 0x790) != 0) && (local_40 < local_3c)) {
      iVar5 = VP8DecompressAlphaRows(param_1,local_40,local_3c - local_40);
      param_2[0x1a] = iVar5;
      if (param_2[0x1a] == 0) {
        uVar2 = VP8SetError(param_1,3,"Could not decode alpha data.");
        return uVar2;
      }
    }
    if (local_40 < param_2[0x15]) {
      uVar4 = param_2[0x15] - local_40;
      local_40 = param_2[0x15];
      if ((uVar4 & 1) != 0) {
        __assert2("../libwebp/src/dec/frame.c",0xdb,"FinishRow","!(delta_y & 1)");
      }
      param_2[5] = param_2[5] + uVar4 * *(int *)(param_1 + 0x750);
      param_2[6] = param_2[6] + ((int)uVar4 >> 1) * *(int *)(param_1 + 0x754);
      param_2[7] = param_2[7] + ((int)uVar4 >> 1) * *(int *)(param_1 + 0x754);
      if (param_2[0x1a] != 0) {
        param_2[0x1a] = param_2[0x1a] + uVar4 * *param_2;
      }
    }
    if (local_40 < local_3c) {
      param_2[5] = param_2[5] + param_2[0x13];
      param_2[6] = param_2[6] + (param_2[0x13] >> 1);
      param_2[7] = param_2[7] + (param_2[0x13] >> 1);
      if (param_2[0x1a] != 0) {
        param_2[0x1a] = param_2[0x1a] + param_2[0x13];
      }
      param_2[2] = local_40 - param_2[0x15];
      param_2[3] = param_2[0x14] - param_2[0x13];
      param_2[4] = local_3c - local_40;
      local_44 = (*(code *)param_2[0xb])(param_2);
    }
  }
  if ((*piVar3 + 1 == *(int *)(param_1 + 0xb4)) && (bVar1)) {
    memcpy((void *)(*(int *)(param_1 + 0x744) - __n),
           (void *)(iVar7 + *(int *)(param_1 + 0x750) * 0x10),__n);
    memcpy((void *)(*(int *)(param_1 + 0x748) - __n_00),
           (void *)(iVar8 + *(int *)(param_1 + 0x754) * 8),__n_00);
    memcpy((void *)(*(int *)(param_1 + 0x74c) - __n_00),
           (void *)(iVar9 + *(int *)(param_1 + 0x754) * 8),__n_00);
  }
  return local_44;
}

// ---- FUN_00749588  @ 0x749588
undefined4 FUN_00749588(int param_1)

{
  int iVar1;
  undefined4 uVar2;
  
  *(undefined4 *)(param_1 + 0xb0) = 0;
  if (*(int *)(param_1 + 0xac) == 0) {
    *(undefined4 *)(param_1 + 0xb4) = 1;
  }
  else {
    iVar1 = WebPWorkerReset(param_1 + 0x8c);
    if (iVar1 == 0) {
      uVar2 = VP8SetError(param_1,1,"thread initialization failed.");
      return uVar2;
    }
    *(int *)(param_1 + 0xa0) = param_1;
    *(int *)(param_1 + 0xa4) = param_1 + 200;
    *(undefined4 *)(param_1 + 0x9c) = 0x748f7d;
    if (*(int *)(param_1 + 0x784) < 1) {
      uVar2 = 2;
    }
    else {
      uVar2 = 3;
    }
    *(undefined4 *)(param_1 + 0xb4) = uVar2;
  }
  return 1;
}

// ---- FUN_0074961c  @ 0x74961c
/* WARNING: Removing unreachable block (ram,0x007498cc) */

undefined4 FUN_0074961c(int param_1)

{
  uint uVar1;
  uint uVar2;
  uint uVar3;
  uint uVar4;
  uint uVar5;
  uint uVar6;
  int iVar7;
  int iVar8;
  uint __n;
  uint __n_00;
  int iVar9;
  uint uVar10;
  uint uVar11;
  undefined4 uVar12;
  int iVar13;
  
  iVar7 = *(int *)(param_1 + 0xb4);
  iVar8 = *(int *)(param_1 + 0x134);
  __n = iVar8 * 4;
  __n_00 = (iVar8 + 1) * 8;
  if (*(int *)(param_1 + 0x784) < 1) {
    uVar10 = 0;
  }
  else {
    if (*(int *)(param_1 + 0xac) == 0) {
      iVar9 = 1;
    }
    else {
      iVar9 = 2;
    }
    uVar10 = iVar8 * iVar9 * 4;
  }
  uVar11 = ((int)((iVar7 * 0x10 + (uint)(byte)(&DAT_0086f404)[*(int *)(param_1 + 0x784)]) * 3) / 2)
           * iVar8 * 0x20;
  if (*(int *)(param_1 + 0x790) == 0) {
    uVar1 = 0;
  }
  else {
    uVar1 = (uint)*(ushort *)(param_1 + 0x40) * (uint)*(ushort *)(param_1 + 0x42);
  }
  uVar2 = iVar8 * 0x24 + __n_00;
  uVar3 = uVar2 + uVar10;
  uVar4 = uVar3 + 0x640 + uVar11;
  uVar5 = uVar4 + uVar1;
  uVar6 = uVar5 + 0x1f;
  if ((char)(CARRY4(__n,iVar8 * 0x20) + CARRY4(iVar8 * 0x24,__n_00) + CARRY4(uVar2,uVar10) +
             (0xfffffcbf < uVar3) + (0xfffffcff < uVar3 + 0x340) + CARRY4(uVar3 + 0x640,uVar11) +
             CARRY4(uVar4,uVar1) + (0xffffffe0 < uVar5)) == '\0') {
    if (*(uint *)(param_1 + 0x75c) < uVar6) {
      free(*(void **)(param_1 + 0x758));
      *(undefined4 *)(param_1 + 0x75c) = 0;
      uVar12 = WebPSafeMalloc(uVar6,0,1);
      *(undefined4 *)(param_1 + 0x758) = uVar12;
      if (*(int *)(param_1 + 0x758) == 0) {
        uVar12 = VP8SetError(param_1,1,"no memory during frame initialization.");
        return uVar12;
      }
      *(uint *)(param_1 + 0x75c) = uVar6;
    }
    *(int *)(param_1 + 0x720) = *(int *)(param_1 + 0x758);
    iVar13 = *(int *)(param_1 + 0x758) + __n;
    *(int *)(param_1 + 0x728) = iVar13;
    iVar13 = iVar13 + iVar8 * 0x10;
    *(int *)(param_1 + 0x72c) = iVar13;
    iVar13 = iVar13 + iVar8 * 8;
    *(int *)(param_1 + 0x730) = iVar13;
    iVar13 = iVar13 + iVar8 * 8;
    *(int *)(param_1 + 0x734) = iVar13 + 8;
    iVar13 = iVar13 + __n_00;
    iVar9 = iVar13;
    if (uVar10 == 0) {
      iVar9 = 0;
    }
    *(int *)(param_1 + 0x738) = iVar9;
    *(undefined4 *)(param_1 + 0xb8) = 0;
    *(undefined4 *)(param_1 + 0xc4) = *(undefined4 *)(param_1 + 0x738);
    if (*(int *)(param_1 + 0xac) != 0) {
      *(int *)(param_1 + 0xc4) = *(int *)(param_1 + 0xc4) + iVar8 * 4;
    }
    uVar10 = iVar13 + uVar10 + 0x1f & 0xffffffe0;
    *(uint *)(param_1 + 0x73c) = uVar10;
    *(uint *)(param_1 + 0x740) = uVar10 + 0x340;
    *(int *)(param_1 + 0x750) = iVar8 << 4;
    *(int *)(param_1 + 0x754) = iVar8 << 3;
    iVar8 = *(int *)(param_1 + 0x754) * ((byte)(&DAT_0086f404)[*(int *)(param_1 + 0x784)] / 2);
    *(uint *)(param_1 + 0x744) =
         uVar10 + 0x640 +
         (uint)(byte)(&DAT_0086f404)[*(int *)(param_1 + 0x784)] * *(int *)(param_1 + 0x750);
    *(int *)(param_1 + 0x748) =
         *(int *)(param_1 + 0x744) + *(int *)(param_1 + 0x750) * iVar7 * 0x10 + iVar8;
    *(int *)(param_1 + 0x74c) =
         *(int *)(param_1 + 0x748) + *(int *)(param_1 + 0x754) * iVar7 * 8 + iVar8;
    *(undefined4 *)(param_1 + 0xb0) = 0;
    iVar7 = uVar10 + 0x640 + uVar11;
    if (uVar1 == 0) {
      iVar7 = 0;
    }
    *(int *)(param_1 + 0x798) = iVar7;
    memset((void *)(*(int *)(param_1 + 0x734) + -8),0,__n_00);
    memset(*(void **)(param_1 + 0x720),0,__n);
    uVar12 = 1;
  }
  else {
    uVar12 = 0;
  }
  return uVar12;
}

// ---- FUN_00749a28  @ 0x749a28
void FUN_00749a28(int param_1,int param_2)

{
  *(undefined4 *)(param_2 + 8) = 0;
  *(undefined4 *)(param_2 + 0x14) = *(undefined4 *)(param_1 + 0x744);
  *(undefined4 *)(param_2 + 0x18) = *(undefined4 *)(param_1 + 0x748);
  *(undefined4 *)(param_2 + 0x1c) = *(undefined4 *)(param_1 + 0x74c);
  *(undefined4 *)(param_2 + 0x20) = *(undefined4 *)(param_1 + 0x750);
  *(undefined4 *)(param_2 + 0x24) = *(undefined4 *)(param_1 + 0x754);
  *(undefined4 *)(param_2 + 0x68) = 0;
  return;
}

// ---- FUN_00749ab8  @ 0x749ab8
int FUN_00749ab8(int param_1,int param_2)

{
  if (param_2 == 0) {
    if (*(int *)(param_1 + 0x760) == 0) {
      if (*(int *)(param_1 + 0x764) == 0) {
        param_2 = 6;
      }
      else {
        param_2 = 5;
      }
    }
    else if (*(int *)(param_1 + 0x764) == 0) {
      param_2 = 4;
    }
    else {
      param_2 = 0;
    }
  }
  return param_2;
}

// ---- FUN_00749b04  @ 0x749b04
void FUN_00749b04(undefined4 *param_1,undefined4 *param_2)

{
  *param_1 = *param_2;
  return;
}

// ---- FUN_0074a07c  @ 0x74a07c
undefined4 FUN_0074a07c(undefined4 param_1)

{
  undefined4 uVar1;
  
  uVar1 = WebPInitDecBufferInternal(param_1,0x200);
  return uVar1;
}

// ---- FUN_0074a094  @ 0x74a094
undefined4 FUN_0074a094(undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 uVar1;
  
  uVar1 = WebPGetFeaturesInternal(param_1,param_2,param_3,0x200);
  return uVar1;
}

// ---- FUN_0074a0b4  @ 0x74a0b4
undefined4 FUN_0074a0b4(undefined4 param_1)

{
  undefined4 uVar1;
  
  uVar1 = VP8InitIoInternal(param_1,0x200);
  return uVar1;
}

// ---- FUN_0074a0cc  @ 0x74a0cc
void FUN_0074a0cc(int *param_1,int param_2)

{
  if (*param_1 != 0) {
    *param_1 = *param_1 + param_2;
    param_1[1] = param_1[1] + param_2;
  }
  return;
}

// ---- FUN_0074a0f8  @ 0x74a0f8
int FUN_0074a0f8(int param_1)

{
  return *(int *)(param_1 + 8) - *(int *)(param_1 + 4);
}

// ---- FUN_0074a10c  @ 0x74a10c
void FUN_0074a10c(int param_1,int param_2)

{
  undefined4 uVar1;
  int *piVar2;
  int iVar3;
  int iVar4;
  int local_20;
  
  piVar2 = (int *)(param_1 + 0x1e4);
  iVar3 = *(int *)(param_1 + 500) + *(int *)(param_1 + 0x1e8);
  *(int *)(param_1 + 0x1b8) = iVar3;
  uVar1 = FUN_0074a0f8(piVar2);
  *(undefined4 *)(param_1 + 0x1b4) = uVar1;
  if (*(int *)(param_1 + 0x174) != 0) {
    if (*(int *)(param_1 + 0x170) == 0) {
      iVar3 = *(int *)(param_1 + 0x174);
      iVar4 = *(int *)(iVar3 + 0x14c) + -1;
      if (param_2 != 0) {
        for (local_20 = 0; local_20 <= iVar4; local_20 = local_20 + 1) {
          FUN_0074a0cc(iVar3 + 0x150 + local_20 * 0x28,param_2);
        }
        if (*piVar2 == 2) {
          FUN_0074a0cc(iVar3 + 0x10,param_2);
        }
      }
      if (iVar4 < 0) {
        __assert2("../libwebp/src/dec/idec.c",0x7b,"DoRemap","last_part >= 0");
      }
      *(int *)(iVar3 + iVar4 * 0x28 + 0x154) = *(int *)(param_1 + 500) + *(int *)(param_1 + 0x1ec);
    }
    else {
      iVar4 = *(int *)(param_1 + 0x174);
      uVar1 = FUN_0074a0f8(piVar2);
      VP8LBitReaderSetBuffer(iVar4 + 0x20,iVar3,uVar1);
    }
  }
  return;
}

// ---- FUN_0074a230  @ 0x74a230
undefined4 FUN_0074a230(int param_1,void *param_2,uint param_3)

{
  uint __n;
  void *__dest;
  uint uVar1;
  void *__src;
  undefined4 uVar2;
  
  __src = (void *)(*(int *)(param_1 + 500) + *(int *)(param_1 + 0x1e8));
  if (*(int *)(param_1 + 0x1e4) != 1) {
    __assert2("../libwebp/src/dec/idec.c",0x8a,"AppendToMemBuffer","mem->mode_ == MEM_MODE_APPEND");
  }
  if (param_3 < 0xfffffff7) {
    if (*(uint *)(param_1 + 0x1f0) < *(int *)(param_1 + 0x1ec) + param_3) {
      __n = FUN_0074a0f8((int *)(param_1 + 0x1e4));
      uVar1 = param_3 + __n + 0xfff & 0xfffff000;
      __dest = (void *)WebPSafeMalloc(uVar1,CARRY4(param_3,__n) + (0xfffff000 < param_3 + __n),1);
      if (__dest == (void *)0x0) {
        return 0;
      }
      memcpy(__dest,__src,__n);
      free(*(void **)(param_1 + 500));
      *(void **)(param_1 + 500) = __dest;
      *(uint *)(param_1 + 0x1f0) = uVar1;
      *(undefined4 *)(param_1 + 0x1e8) = 0;
      *(uint *)(param_1 + 0x1ec) = __n;
    }
    memcpy((void *)(*(int *)(param_1 + 500) + *(int *)(param_1 + 0x1ec)),param_2,param_3);
    *(uint *)(param_1 + 0x1ec) = *(int *)(param_1 + 0x1ec) + param_3;
    if (*(uint *)(param_1 + 0x1f0) < *(uint *)(param_1 + 0x1ec)) {
      __assert2("../libwebp/src/dec/idec.c",0xa2,"AppendToMemBuffer","mem->end_ <= mem->buf_size_");
    }
    FUN_0074a10c(param_1,(*(int *)(param_1 + 500) + *(int *)(param_1 + 0x1e8)) - (int)__src);
    uVar2 = 1;
  }
  else {
    uVar2 = 0;
  }
  return uVar2;
}

// ---- FUN_0074a3c0  @ 0x74a3c0
bool FUN_0074a3c0(int param_1,undefined4 param_2,uint param_3)

{
  bool bVar1;
  int iVar2;
  int iVar3;
  
  iVar2 = *(int *)(param_1 + 500);
  iVar3 = *(int *)(param_1 + 0x1e8);
  if (*(int *)(param_1 + 0x1e4) != 2) {
    __assert2("../libwebp/src/dec/idec.c",0xac,"RemapMemBuffer","mem->mode_ == MEM_MODE_MAP");
  }
  bVar1 = *(uint *)(param_1 + 0x1f0) <= param_3;
  if (bVar1) {
    *(undefined4 *)(param_1 + 500) = param_2;
    *(uint *)(param_1 + 0x1f0) = param_3;
    *(undefined4 *)(param_1 + 0x1ec) = *(undefined4 *)(param_1 + 0x1f0);
    FUN_0074a10c(param_1,(*(int *)(param_1 + 500) + *(int *)(param_1 + 0x1e8)) - (iVar2 + iVar3));
  }
  return bVar1;
}

// ---- FUN_0074a450  @ 0x74a450
void FUN_0074a450(undefined4 *param_1)

{
  *param_1 = 0;
  param_1[4] = 0;
  param_1[3] = 0;
  param_1[6] = 0;
  param_1[5] = 0;
  return;
}

// ---- FUN_0074a480  @ 0x74a480
void FUN_0074a480(int *param_1)

{
  if (param_1 == (int *)0x0) {
    __assert2("../libwebp/src/dec/idec.c",0xc0,"ClearMemBuffer",&DAT_0086f608);
  }
  if (*param_1 == 1) {
    free((void *)param_1[4]);
    free((void *)param_1[6]);
  }
  return;
}

// ---- FUN_0074a4d0  @ 0x74a4d0
undefined4 FUN_0074a4d0(int *param_1,int param_2)

{
  if (*param_1 == 0) {
    *param_1 = param_2;
  }
  else if (*param_1 != param_2) {
    return 0;
  }
  if (*param_1 != param_2) {
    __assert2("../libwebp/src/dec/idec.c",0xcd,"CheckMemBufferMode","mem->mode_ == expected");
  }
  return 1;
}

// ---- FUN_0074a530  @ 0x74a530
void FUN_0074a530(int param_1,undefined4 *param_2,undefined4 *param_3)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 *puVar3;
  undefined4 uVar4;
  
  puVar3 = (undefined4 *)(*(int *)(param_1 + 0x734) + *(int *)(param_1 + 0x760) * 8);
  uVar1 = *(undefined4 *)(*(int *)(param_1 + 0x734) + -4);
  *param_3 = *(undefined4 *)(*(int *)(param_1 + 0x734) + -8);
  param_3[1] = uVar1;
  uVar1 = puVar3[1];
  param_3[2] = *puVar3;
  param_3[3] = uVar1;
  uVar1 = *(undefined4 *)(param_1 + 0x14);
  uVar2 = *(undefined4 *)(param_1 + 0x18);
  uVar4 = *(undefined4 *)(param_1 + 0x1c);
  param_3[6] = *(undefined4 *)(param_1 + 0x10);
  param_3[7] = uVar1;
  param_3[8] = uVar2;
  param_3[9] = uVar4;
  uVar1 = *(undefined4 *)(param_1 + 0x24);
  uVar2 = *(undefined4 *)(param_1 + 0x28);
  uVar4 = *(undefined4 *)(param_1 + 0x2c);
  param_3[10] = *(undefined4 *)(param_1 + 0x20);
  param_3[0xb] = uVar1;
  param_3[0xc] = uVar2;
  param_3[0xd] = uVar4;
  uVar1 = *(undefined4 *)(param_1 + 0x34);
  param_3[0xe] = *(undefined4 *)(param_1 + 0x30);
  param_3[0xf] = uVar1;
  uVar1 = param_2[1];
  uVar2 = param_2[2];
  uVar4 = param_2[3];
  param_3[0x10] = *param_2;
  param_3[0x11] = uVar1;
  param_3[0x12] = uVar2;
  param_3[0x13] = uVar4;
  uVar1 = param_2[5];
  uVar2 = param_2[6];
  uVar4 = param_2[7];
  param_3[0x14] = param_2[4];
  param_3[0x15] = uVar1;
  param_3[0x16] = uVar2;
  param_3[0x17] = uVar4;
  uVar1 = param_2[9];
  param_3[0x18] = param_2[8];
  param_3[0x19] = uVar1;
  memcpy(param_3 + 4,(void *)(*(int *)(param_1 + 0x720) + *(int *)(param_1 + 0x760) * 4),4);
  memcpy(param_3 + 5,(void *)(param_1 + 0x724),4);
  return;
}

// ---- FUN_0074a604  @ 0x74a604
void FUN_0074a604(undefined4 *param_1,int param_2,undefined4 *param_3)

{
  undefined4 uVar1;
  undefined4 uVar2;
  int iVar3;
  undefined4 *puVar4;
  undefined4 uVar5;
  
  iVar3 = *(int *)(param_2 + 0x734);
  puVar4 = (undefined4 *)(*(int *)(param_2 + 0x734) + *(int *)(param_2 + 0x760) * 8);
  uVar1 = param_1[1];
  *(undefined4 *)(iVar3 + -8) = *param_1;
  *(undefined4 *)(iVar3 + -4) = uVar1;
  uVar1 = param_1[3];
  *puVar4 = param_1[2];
  puVar4[1] = uVar1;
  uVar1 = param_1[7];
  uVar2 = param_1[8];
  uVar5 = param_1[9];
  *(undefined4 *)(param_2 + 0x10) = param_1[6];
  *(undefined4 *)(param_2 + 0x14) = uVar1;
  *(undefined4 *)(param_2 + 0x18) = uVar2;
  *(undefined4 *)(param_2 + 0x1c) = uVar5;
  uVar1 = param_1[0xb];
  uVar2 = param_1[0xc];
  uVar5 = param_1[0xd];
  *(undefined4 *)(param_2 + 0x20) = param_1[10];
  *(undefined4 *)(param_2 + 0x24) = uVar1;
  *(undefined4 *)(param_2 + 0x28) = uVar2;
  *(undefined4 *)(param_2 + 0x2c) = uVar5;
  uVar1 = param_1[0xf];
  *(undefined4 *)(param_2 + 0x30) = param_1[0xe];
  *(undefined4 *)(param_2 + 0x34) = uVar1;
  uVar1 = param_1[0x11];
  uVar2 = param_1[0x12];
  uVar5 = param_1[0x13];
  *param_3 = param_1[0x10];
  param_3[1] = uVar1;
  param_3[2] = uVar2;
  param_3[3] = uVar5;
  uVar1 = param_1[0x15];
  uVar2 = param_1[0x16];
  uVar5 = param_1[0x17];
  param_3[4] = param_1[0x14];
  param_3[5] = uVar1;
  param_3[6] = uVar2;
  param_3[7] = uVar5;
  uVar1 = param_1[0x19];
  param_3[8] = param_1[0x18];
  param_3[9] = uVar1;
  memcpy((void *)(*(int *)(param_2 + 0x720) + *(int *)(param_2 + 0x760) * 4),param_1 + 4,4);
  memcpy((void *)(param_2 + 0x724),param_1 + 5,4);
  return;
}

// ---- FUN_0074a6d4  @ 0x74a6d4
undefined4 FUN_0074a6d4(int *param_1,undefined4 param_2)

{
  if ((*param_1 == 3) && (param_1[0x6b] != 0)) {
    (*(code *)param_1[0x6b])(param_1 + 0x5e);
  }
  *param_1 = 7;
  return param_2;
}

// ---- FUN_0074a70c  @ 0x74a70c
void FUN_0074a70c(undefined4 *param_1,undefined4 param_2,int param_3)

{
  undefined4 uVar1;
  
  *param_1 = param_2;
  param_1[0x7a] = param_1[0x7a] + param_3;
  if ((uint)param_1[0x7b] < (uint)param_1[0x7a]) {
    __assert2("../libwebp/src/dec/idec.c",0x102,"ChangeState","mem->start_ <= mem->end_");
  }
  param_1[0x6e] = param_1[0x7d] + param_1[0x7a];
  uVar1 = FUN_0074a0f8(param_1 + 0x79);
  param_1[0x6d] = uVar1;
  return;
}

// ---- FUN_0074a784  @ 0x74a784
undefined4 FUN_0074a784(int param_1)

{
  int iVar1;
  int iVar2;
  undefined4 uVar3;
  int local_28;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  undefined4 local_18;
  undefined4 local_14;
  undefined4 local_c;
  
  iVar1 = *(int *)(param_1 + 500);
  iVar2 = *(int *)(param_1 + 0x1e8);
  local_24 = FUN_0074a0f8(param_1 + 0x1e4);
  local_28 = iVar1 + iVar2;
  iVar1 = WebPParseHeaders(&local_28);
  if (iVar1 == 7) {
    uVar3 = 5;
  }
  else if (iVar1 == 0) {
    *(undefined4 *)(param_1 + 0x254) = local_14;
    *(undefined4 *)(param_1 + 0x170) = local_c;
    if (*(int *)(param_1 + 0x170) == 0) {
      iVar1 = VP8New();
      if (iVar1 == 0) {
        return 1;
      }
      *(int *)(param_1 + 0x174) = iVar1;
      if ((*(int *)(param_1 + 0x1c) == 0) || (*(int *)(*(int *)(param_1 + 0x1c) + 0x28) < 1)) {
        uVar3 = 0;
      }
      else {
        uVar3 = 1;
      }
      *(undefined4 *)(iVar1 + 0xac) = uVar3;
      *(undefined4 *)(iVar1 + 0x790) = local_1c;
      *(undefined4 *)(iVar1 + 0x794) = local_18;
      FUN_0074a70c(param_1,1,local_20);
    }
    else {
      iVar1 = VP8LNew();
      if (iVar1 == 0) {
        return 1;
      }
      *(int *)(param_1 + 0x174) = iVar1;
      FUN_0074a70c(param_1,4,local_20);
    }
    uVar3 = 0;
  }
  else {
    uVar3 = FUN_0074a6d4(param_1,iVar1);
  }
  return uVar3;
}

// ---- FUN_0074a888  @ 0x74a888
undefined4 FUN_0074a888(undefined4 *param_1)

{
  uint uVar1;
  int iVar2;
  uint3 *puVar3;
  undefined4 uVar4;
  
  puVar3 = (uint3 *)(param_1[0x7d] + param_1[0x7a]);
  uVar1 = FUN_0074a0f8(param_1 + 0x79);
  if (uVar1 < 10) {
    uVar4 = 5;
  }
  else {
    iVar2 = VP8GetInfo(puVar3,uVar1,param_1[0x95],0,0);
    if (iVar2 == 0) {
      uVar4 = FUN_0074a6d4(param_1,3);
    }
    else {
      param_1[0x7e] = (*puVar3 >> 5) + 10;
      param_1[0x6e] = puVar3;
      param_1[0x6d] = uVar1;
      *param_1 = 2;
      uVar4 = 0;
    }
  }
  return uVar4;
}

// ---- FUN_0074a940  @ 0x74a940
undefined4 FUN_0074a940(int param_1)

{
  void *__dest;
  int iVar1;
  int *piVar2;
  uint __size;
  
  iVar1 = *(int *)(param_1 + 0x174);
  piVar2 = (int *)(iVar1 + 0x10);
  __size = *(int *)(iVar1 + 0x14) - *piVar2;
  if (*(int *)(param_1 + 0x170) != 0) {
    __assert2("../libwebp/src/dec/idec.c",0x150,"CopyParts0Data","!idec->is_lossless_");
  }
  if (*(int *)(param_1 + 0x1fc) != 0) {
    __assert2("../libwebp/src/dec/idec.c",0x151,"CopyParts0Data","mem->part0_buf_ == NULL");
  }
  if (__size == 0) {
    __assert2("../libwebp/src/dec/idec.c",0x152,"CopyParts0Data","psize > 0");
  }
  if (*(uint *)(param_1 + 0x1f8) < __size) {
    __assert2("../libwebp/src/dec/idec.c",0x153,"CopyParts0Data","psize <= mem->part0_size_");
  }
  if (*(int *)(param_1 + 0x1e4) == 1) {
    __dest = malloc(__size);
    if (__dest == (void *)0x0) {
      return 0;
    }
    memcpy(__dest,(void *)*piVar2,__size);
    *(void **)(param_1 + 0x1fc) = __dest;
    *piVar2 = (int)__dest;
    *(uint *)(iVar1 + 0x14) = (int)__dest + __size;
  }
  *(uint *)(param_1 + 0x1e8) = *(int *)(param_1 + 0x1e8) + __size;
  return 1;
}

// ---- FUN_0074aa80  @ 0x74aa80
undefined4 FUN_0074aa80(undefined4 *param_1)

{
  uint uVar1;
  int iVar2;
  int *piVar3;
  undefined4 *puVar4;
  undefined4 uVar5;
  
  piVar3 = (int *)param_1[0x5d];
  puVar4 = param_1 + 0x5e;
  uVar5 = param_1[2];
  uVar1 = FUN_0074a0f8(param_1 + 0x79);
  if (uVar1 < (uint)param_1[0x7e]) {
    uVar5 = 5;
  }
  else {
    iVar2 = VP8GetHeaders(piVar3,puVar4);
    if (iVar2 == 0) {
      iVar2 = *piVar3;
      if ((iVar2 == 5) || (iVar2 == 7)) {
        uVar5 = 5;
      }
      else {
        uVar5 = FUN_0074a6d4(param_1,iVar2);
      }
    }
    else {
      iVar2 = WebPAllocateDecBuffer(*puVar4,param_1[0x5f],param_1[7],uVar5);
      *piVar3 = iVar2;
      if (*piVar3 == 0) {
        iVar2 = FUN_0074a940(param_1);
        if (iVar2 == 0) {
          uVar5 = FUN_0074a6d4(param_1,1);
        }
        else {
          iVar2 = VP8EnterCritical(piVar3,puVar4);
          if (iVar2 == 0) {
            *param_1 = 3;
            iVar2 = VP8InitFrame(piVar3,puVar4);
            if (iVar2 == 0) {
              uVar5 = FUN_0074a6d4(param_1,*piVar3);
            }
            else {
              uVar5 = 0;
            }
          }
          else {
            uVar5 = FUN_0074a6d4(param_1,*piVar3);
          }
        }
      }
      else {
        uVar5 = FUN_0074a6d4(param_1,*piVar3);
      }
    }
  }
  return uVar5;
}

// ---- FUN_0074ab94  @ 0x74ab94
undefined4 FUN_0074ab94(undefined4 *param_1)

{
  uint uVar1;
  int iVar2;
  undefined4 uVar3;
  int iVar4;
  int *piVar5;
  undefined1 auStack_70 [108];
  
  iVar4 = param_1[0x5d];
  if (*(int *)(iVar4 + 4) == 0) {
    __assert2("../libwebp/src/dec/idec.c",0x199,"DecodeRemaining","dec->ready_");
  }
  do {
    if (*(int *)(iVar4 + 0x138) <= *(int *)(iVar4 + 0x764)) {
      iVar2 = VP8ExitCritical(iVar4,param_1 + 0x5e);
      if (iVar2 == 0) {
        uVar3 = FUN_0074a6d4(param_1,6);
      }
      else {
        *(undefined4 *)(iVar4 + 4) = 0;
        *param_1 = 6;
        uVar3 = 0;
      }
      return uVar3;
    }
    piVar5 = (int *)(iVar4 + 0x150 +
                    (*(int *)(iVar4 + 0x14c) - 1U & *(uint *)(iVar4 + 0x764)) * 0x28);
    if (*(int *)(iVar4 + 0x760) == 0) {
      VP8InitScanline(iVar4);
    }
    while (*(int *)(iVar4 + 0x760) < *(int *)(iVar4 + 0x134)) {
      FUN_0074a530(iVar4,piVar5,auStack_70);
      iVar2 = VP8DecodeMB(iVar4,piVar5);
      if (iVar2 == 0) {
        FUN_0074a604(auStack_70,iVar4,piVar5);
        if ((*(int *)(iVar4 + 0x14c) == 1) && (uVar1 = FUN_0074a0f8(param_1 + 0x79), 0x1000 < uVar1)
           ) {
          uVar3 = FUN_0074a6d4(param_1,3);
          return uVar3;
        }
        return 5;
      }
      VP8ReconstructBlock(iVar4);
      VP8StoreBlock(iVar4);
      if ((*(int *)(iVar4 + 0x14c) == 1) &&
         (param_1[0x7a] = *piVar5 - param_1[0x7d], (uint)param_1[0x7b] < (uint)param_1[0x7a])) {
        __assert2("../libwebp/src/dec/idec.c",0x1b3,"DecodeRemaining",
                  "idec->mem_.start_ <= idec->mem_.end_");
      }
      *(int *)(iVar4 + 0x760) = *(int *)(iVar4 + 0x760) + 1;
    }
    iVar2 = VP8ProcessRow(iVar4,param_1 + 0x5e);
    if (iVar2 == 0) {
      uVar3 = FUN_0074a6d4(param_1,6);
      return uVar3;
    }
    *(undefined4 *)(iVar4 + 0x760) = 0;
    *(int *)(iVar4 + 0x764) = *(int *)(iVar4 + 0x764) + 1;
  } while( true );
}

// ---- FUN_0074ad74  @ 0x74ad74
undefined4 FUN_0074ad74(undefined4 param_1,int param_2)

{
  undefined4 uVar1;
  
  if ((param_2 == 5) || (param_2 == 7)) {
    uVar1 = 5;
  }
  else {
    uVar1 = FUN_0074a6d4(param_1,param_2);
  }
  return uVar1;
}

// ---- FUN_0074ada0  @ 0x74ada0
undefined4 FUN_0074ada0(undefined4 *param_1)

{
  uint uVar1;
  int iVar2;
  int *piVar3;
  undefined4 uVar4;
  
  piVar3 = (int *)param_1[0x5d];
  uVar4 = param_1[2];
  uVar1 = FUN_0074a0f8(param_1 + 0x79);
  if (param_1[0x5c] == 0) {
    __assert2("../libwebp/src/dec/idec.c",0x1d2,"DecodeVP8LHeader","idec->is_lossless_");
  }
  if (uVar1 < (uint)param_1[0x95] >> 3) {
    uVar4 = 5;
  }
  else {
    iVar2 = VP8LDecodeHeader(piVar3,param_1 + 0x5e);
    if (iVar2 == 0) {
      uVar4 = FUN_0074ad74(param_1,*piVar3);
    }
    else {
      iVar2 = WebPAllocateDecBuffer(param_1[0x5e],param_1[0x5f],param_1[7],uVar4);
      *piVar3 = iVar2;
      if (*piVar3 == 0) {
        *param_1 = 5;
        uVar4 = 0;
      }
      else {
        uVar4 = FUN_0074a6d4(param_1,*piVar3);
      }
    }
  }
  return uVar4;
}

// ---- FUN_0074ae80  @ 0x74ae80
undefined4 FUN_0074ae80(undefined4 *param_1)

{
  uint uVar1;
  int iVar2;
  undefined4 *puVar3;
  undefined4 uVar4;
  
  puVar3 = (undefined4 *)param_1[0x5d];
  uVar1 = FUN_0074a0f8(param_1 + 0x79);
  if (param_1[0x5c] == 0) {
    __assert2("../libwebp/src/dec/idec.c",0x1e9,"DecodeVP8LData","idec->is_lossless_");
  }
  if (uVar1 < (uint)param_1[0x95]) {
    uVar4 = 5;
  }
  else {
    iVar2 = VP8LDecodeImage(puVar3);
    if (iVar2 == 0) {
      uVar4 = FUN_0074ad74(param_1,*puVar3);
    }
    else {
      *param_1 = 6;
      uVar4 = 0;
    }
  }
  return uVar4;
}

// ---- FUN_0074af0c  @ 0x74af0c
undefined4 FUN_0074af0c(int *param_1)

{
  undefined4 local_c;
  
  local_c = 5;
  if (*param_1 == 0) {
    local_c = FUN_0074a784(param_1);
  }
  else if (param_1[0x5d] == 0) {
    return 5;
  }
  if (*param_1 == 1) {
    local_c = FUN_0074a888(param_1);
  }
  if (*param_1 == 2) {
    local_c = FUN_0074aa80(param_1);
  }
  if (*param_1 == 3) {
    local_c = FUN_0074ab94(param_1);
  }
  if (*param_1 == 4) {
    local_c = FUN_0074ada0(param_1);
  }
  if (*param_1 == 5) {
    local_c = FUN_0074ae80(param_1);
  }
  return local_c;
}

// ---- FUN_0074b260  @ 0x74b260
undefined4 FUN_0074b260(int *param_1)

{
  undefined4 uVar1;
  
  if (param_1 == (int *)0x0) {
    __assert2("../libwebp/src/dec/idec.c",0x286,"IDecCheckStatus",&DAT_0086f6dc);
  }
  if (*param_1 == 7) {
    uVar1 = 3;
  }
  else if (*param_1 == 6) {
    uVar1 = 0;
  }
  else {
    uVar1 = 5;
  }
  return uVar1;
}

// ---- FUN_0074b398  @ 0x74b398
uint FUN_0074b398(uint *param_1)

{
  uint uVar1;
  
  if ((param_1 == (uint *)0x0) || (param_1[0x5d] == 0)) {
    uVar1 = 0;
  }
  else if (*param_1 < 3) {
    uVar1 = 0;
  }
  else {
    uVar1 = param_1[2];
  }
  return uVar1;
}

// ---- FUN_0074b5bc  @ 0x74b5bc
bool FUN_0074b5bc(int param_1)

{
  return *(int *)(param_1 + 0x18) < 1;
}

// ---- FUN_0074b5d4  @ 0x74b5d4
undefined4 FUN_0074b5d4(int param_1)

{
  undefined4 uVar1;
  
  if ((((param_1 == 7) || (param_1 == 8)) || (param_1 == 9)) || (param_1 == 10)) {
    uVar1 = 1;
  }
  else {
    uVar1 = 0;
  }
  return uVar1;
}

// ---- FUN_0074b600  @ 0x74b600
undefined4 FUN_0074b600(int param_1)

{
  int iVar1;
  undefined4 uVar2;
  
  if ((((param_1 == 1) || (param_1 == 3)) || (param_1 == 4)) ||
     (((param_1 == 5 || (param_1 == 0xc)) || (iVar1 = FUN_0074b5d4(param_1), iVar1 != 0)))) {
    uVar2 = 1;
  }
  else {
    uVar2 = 0;
  }
  return uVar2;
}

// ---- FUN_0074b640  @ 0x74b640
bool FUN_0074b640(uint param_1)

{
  return param_1 < 0xb;
}

// ---- FUN_0074b654  @ 0x74b654
undefined4 FUN_0074b654(int param_1,int *param_2)

{
  size_t __n;
  int iVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  int iVar7;
  int iVar8;
  int iVar9;
  int iVar10;
  size_t __n_00;
  int iVar11;
  undefined4 local_30;
  
  iVar7 = *param_2;
  iVar4 = *(int *)(iVar7 + 0x10);
  iVar8 = *(int *)(param_1 + 8);
  iVar1 = *(int *)(iVar7 + 0x20);
  iVar5 = *(int *)(iVar7 + 0x14);
  iVar9 = *(int *)(param_1 + 8);
  iVar2 = *(int *)(iVar7 + 0x24);
  iVar6 = *(int *)(iVar7 + 0x18);
  iVar10 = *(int *)(param_1 + 8);
  iVar3 = *(int *)(iVar7 + 0x28);
  __n_00 = *(size_t *)(param_1 + 0xc);
  iVar11 = *(int *)(param_1 + 0x10);
  __n = (int)(__n_00 + 1) / 2;
  for (local_30 = 0; local_30 < iVar11; local_30 = local_30 + 1) {
    memcpy((void *)(iVar4 + iVar1 * iVar8 + local_30 * *(int *)(iVar7 + 0x20)),
           (void *)(*(int *)(param_1 + 0x14) + local_30 * *(int *)(param_1 + 0x20)),__n_00);
  }
  for (local_30 = 0; local_30 < (iVar11 + 1) / 2; local_30 = local_30 + 1) {
    memcpy((void *)(iVar5 + iVar2 * (iVar9 >> 1) + local_30 * *(int *)(iVar7 + 0x24)),
           (void *)(*(int *)(param_1 + 0x18) + local_30 * *(int *)(param_1 + 0x24)),__n);
    memcpy((void *)(iVar6 + iVar3 * (iVar10 >> 1) + local_30 * *(int *)(iVar7 + 0x28)),
           (void *)(*(int *)(param_1 + 0x1c) + local_30 * *(int *)(param_1 + 0x24)),__n);
  }
  return *(undefined4 *)(param_1 + 0x10);
}

// ---- FUN_0074b798  @ 0x74b798
undefined4 FUN_0074b798(int param_1,int *param_2)

{
  code *pcVar1;
  undefined4 uVar2;
  int iVar3;
  int local_30;
  int local_2c;
  int local_28;
  int local_24;
  int local_20;
  
  param_2 = (int *)*param_2;
  local_30 = param_2[4] + param_2[5] * *(int *)(param_1 + 8);
  local_2c = *(int *)(param_1 + 0x14);
  local_28 = *(int *)(param_1 + 0x18);
  local_24 = *(int *)(param_1 + 0x1c);
  pcVar1 = *(code **)(WebPSamplers + *param_2 * 4);
  uVar2 = *(undefined4 *)(param_1 + 0xc);
  iVar3 = *(int *)(param_1 + 0x10) + -1;
  for (local_20 = 0; local_20 < iVar3; local_20 = local_20 + 2) {
    (*pcVar1)(local_2c,local_2c + *(int *)(param_1 + 0x20),local_28,local_24,local_30,
              local_30 + param_2[5],uVar2);
    local_2c = local_2c + *(int *)(param_1 + 0x20) * 2;
    local_28 = local_28 + *(int *)(param_1 + 0x24);
    local_24 = local_24 + *(int *)(param_1 + 0x24);
    local_30 = local_30 + param_2[5] * 2;
  }
  if (local_20 == iVar3) {
    (*pcVar1)(local_2c,local_2c,local_28,local_24,local_30,local_30,uVar2);
  }
  return *(undefined4 *)(param_1 + 0x10);
}

// ---- FUN_0074b898  @ 0x74b898
int FUN_0074b898(int param_1,int *param_2)

{
  size_t __n;
  int iVar1;
  code *pcVar2;
  uint uVar3;
  size_t __n_00;
  void *pvVar4;
  void *pvVar5;
  int local_3c;
  int local_38;
  int local_34;
  void *local_30;
  void *local_2c;
  int local_28;
  
  local_3c = *(int *)(param_1 + 0x10);
  iVar1 = *param_2;
  local_38 = *(int *)(iVar1 + 0x10) + *(int *)(iVar1 + 0x14) * *(int *)(param_1 + 8);
  pcVar2 = *(code **)(WebPUpsamplers + *(int *)*param_2 * 4);
  local_34 = *(int *)(param_1 + 0x14);
  local_30 = *(void **)(param_1 + 0x18);
  local_2c = *(void **)(param_1 + 0x1c);
  local_28 = *(int *)(param_1 + 8);
  uVar3 = *(int *)(param_1 + 8) + *(int *)(param_1 + 0x10);
  __n_00 = *(size_t *)(param_1 + 0xc);
  __n = (int)(__n_00 + 1) / 2;
  if (local_28 == 0) {
    (*pcVar2)(0,local_34,local_30,local_2c,local_30,local_2c,0,local_38,__n_00);
  }
  else {
    (*pcVar2)(param_2[1],local_34,param_2[2],param_2[3],local_30,local_2c,
              local_38 - *(int *)(iVar1 + 0x14),local_38,__n_00);
    local_3c = local_3c + 1;
  }
  for (; local_28 + 2 < (int)uVar3; local_28 = local_28 + 2) {
    pvVar5 = (void *)((int)local_30 + *(int *)(param_1 + 0x24));
    pvVar4 = (void *)((int)local_2c + *(int *)(param_1 + 0x24));
    local_38 = local_38 + *(int *)(iVar1 + 0x14) * 2;
    local_34 = local_34 + *(int *)(param_1 + 0x20) * 2;
    (*pcVar2)(local_34 - *(int *)(param_1 + 0x20),local_34,local_30,local_2c,pvVar5,pvVar4,
              local_38 - *(int *)(iVar1 + 0x14),local_38,__n_00);
    local_30 = pvVar5;
    local_2c = pvVar4;
  }
  pvVar5 = (void *)(local_34 + *(int *)(param_1 + 0x20));
  if ((int)(*(int *)(param_1 + 0x54) + uVar3) < *(int *)(param_1 + 0x58)) {
    memcpy((void *)param_2[1],pvVar5,__n_00);
    memcpy((void *)param_2[2],local_30,__n);
    memcpy((void *)param_2[3],local_2c,__n);
    local_3c = local_3c + -1;
  }
  else if ((uVar3 & 1) == 0) {
    (*pcVar2)(pvVar5,0,local_30,local_2c,local_30,local_2c,local_38 + *(int *)(iVar1 + 0x14),0,
              __n_00);
  }
  return local_3c;
}

// ---- FUN_0074baa4  @ 0x74baa4
undefined4 FUN_0074baa4(int *param_1,int *param_2)

{
  int iVar1;
  size_t __n;
  int iVar2;
  void *local_20;
  void *local_1c;
  int local_18;
  
  local_20 = (void *)param_1[0x1a];
  iVar1 = *param_2;
  __n = param_1[3];
  iVar2 = param_1[4];
  local_1c = (void *)(*(int *)(iVar1 + 0x1c) + *(int *)(iVar1 + 0x2c) * param_1[2]);
  if (local_20 == (void *)0x0) {
    if (*(int *)(iVar1 + 0x1c) != 0) {
      for (local_18 = 0; local_18 < iVar2; local_18 = local_18 + 1) {
        memset(local_1c,0xff,__n);
        local_1c = (void *)((int)local_1c + *(int *)(iVar1 + 0x2c));
      }
    }
  }
  else {
    for (local_18 = 0; local_18 < iVar2; local_18 = local_18 + 1) {
      memcpy(local_1c,local_20,__n);
      local_20 = (void *)((int)local_20 + *param_1);
      local_1c = (void *)((int)local_1c + *(int *)(iVar1 + 0x2c));
    }
  }
  return 0;
}

// ---- FUN_0074bb64  @ 0x74bb64
int FUN_0074bb64(int *param_1,int *param_2,int *param_3)

{
  int local_4;
  
  local_4 = param_1[2];
  *param_3 = param_1[4];
  if (param_1[0xe] != 0) {
    if (local_4 == 0) {
      *param_3 = *param_3 + -1;
    }
    else {
      local_4 = local_4 + -1;
      *param_2 = *param_2 - *param_1;
    }
    if (param_1[0x15] + param_1[2] + param_1[4] == param_1[0x16]) {
      *param_3 = (param_1[0x16] - param_1[0x15]) - local_4;
    }
  }
  return local_4;
}

// ---- FUN_0074bbe4  @ 0x74bbe4
undefined4 FUN_0074bbe4(int *param_1,int *param_2)

{
  int iVar1;
  int local_3c;
  int local_38;
  int local_34;
  uint local_30;
  int local_2c;
  int local_28;
  int local_24;
  int local_20;
  int local_1c;
  int *local_18;
  int local_14;
  int local_10;
  uint local_c;
  
  local_3c = param_1[0x1a];
  if (local_3c != 0) {
    local_24 = param_1[3];
    local_20 = *(int *)*param_2;
    if ((local_20 == 4) || (local_20 == 9)) {
      local_1c = 1;
    }
    else {
      local_1c = 0;
    }
    local_18 = (int *)(*param_2 + 0x10);
    local_14 = FUN_0074bb64(param_1,&local_3c,&local_38);
    local_10 = *local_18 + local_14 * local_18[1];
    if (local_1c == 0) {
      local_34 = 3;
    }
    else {
      local_34 = 0;
    }
    local_34 = local_10 + local_34;
    local_30 = 0xff;
    for (local_28 = 0; local_28 < local_38; local_28 = local_28 + 1) {
      for (local_2c = 0; local_2c < local_24; local_2c = local_2c + 1) {
        local_c = (uint)*(byte *)(local_3c + local_2c);
        *(byte *)(local_34 + local_2c * 4) = *(byte *)(local_3c + local_2c);
        local_30 = local_c & local_30;
      }
      local_3c = local_3c + *param_1;
      local_34 = local_34 + local_18[1];
    }
    if ((local_30 != 0xff) && (iVar1 = FUN_0074b5d4(local_20), iVar1 != 0)) {
      (*WebPApplyAlphaMultiply)(local_10,local_1c,local_24,local_38,local_18[1]);
    }
  }
  return 0;
}

// ---- FUN_0074bd0c  @ 0x74bd0c
undefined4 FUN_0074bd0c(int *param_1,int *param_2)

{
  byte bVar1;
  int iVar2;
  int local_38;
  int local_34;
  int local_30;
  uint local_2c;
  int local_28;
  int local_24;
  int local_20;
  undefined4 local_1c;
  int *local_18;
  int local_14;
  int local_10;
  uint local_c;
  
  local_38 = param_1[0x1a];
  if (local_38 != 0) {
    local_20 = param_1[3];
    local_1c = *(undefined4 *)*param_2;
    local_18 = (int *)(*param_2 + 0x10);
    local_14 = FUN_0074bb64(param_1,&local_38,&local_34);
    local_10 = *local_18 + local_14 * local_18[1];
    local_30 = local_10 + 1;
    local_2c = 0xf;
    for (local_24 = 0; local_24 < local_34; local_24 = local_24 + 1) {
      for (local_28 = 0; local_28 < local_20; local_28 = local_28 + 1) {
        bVar1 = *(byte *)(local_38 + local_28) >> 4;
        local_c = (uint)bVar1;
        *(byte *)(local_30 + local_28 * 2) = bVar1 | *(byte *)(local_30 + local_28 * 2) & 0xf0;
        local_2c = local_c & local_2c;
      }
      local_38 = local_38 + *param_1;
      local_30 = local_30 + local_18[1];
    }
    if ((local_2c != 0xf) && (iVar2 = FUN_0074b5d4(local_1c), iVar2 != 0)) {
      (*WebPApplyAlphaMultiply4444)(local_10,local_20,local_34,local_18[1]);
    }
  }
  return 0;
}

// ---- FUN_0074be28  @ 0x74be28
int FUN_0074be28(int param_1,int param_2,int param_3,undefined4 param_4)

{
  int iVar1;
  undefined4 local_1c;
  undefined4 local_14;
  undefined4 local_10;
  
  local_10 = 0;
  local_1c = param_3;
  local_14 = param_1;
  while (0 < local_1c) {
    iVar1 = WebPRescalerImport(param_4,local_1c,local_14,param_2);
    local_14 = local_14 + param_2 * iVar1;
    local_1c = local_1c - iVar1;
    iVar1 = WebPRescalerExport(param_4);
    local_10 = local_10 + iVar1;
  }
  return local_10;
}

// ---- FUN_0074be80  @ 0x74be80
undefined4 FUN_0074be80(int param_1,int param_2)

{
  int iVar1;
  undefined4 uVar2;
  
  iVar1 = *(int *)(param_1 + 0x10) + 1 >> 1;
  uVar2 = FUN_0074be28(*(undefined4 *)(param_1 + 0x14),*(undefined4 *)(param_1 + 0x20),
                       *(int *)(param_1 + 0x10),param_2 + 0x18);
  FUN_0074be28(*(undefined4 *)(param_1 + 0x18),*(undefined4 *)(param_1 + 0x24),iVar1,param_2 + 0x68)
  ;
  FUN_0074be28(*(undefined4 *)(param_1 + 0x1c),*(undefined4 *)(param_1 + 0x24),iVar1,param_2 + 0xb8)
  ;
  return uVar2;
}

// ---- FUN_0074bef0  @ 0x74bef0
undefined4 FUN_0074bef0(undefined4 *param_1,int param_2)

{
  if (param_1[0x1a] != 0) {
    FUN_0074be28(param_1[0x1a],*param_1,param_1[4],param_2 + 0x108);
  }
  return 0;
}

// ---- FUN_0074bf20  @ 0x74bf20
undefined4 FUN_0074bf20(int param_1,int *param_2)

{
  int iVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  void *pvVar6;
  int iVar7;
  int iVar8;
  int iVar9;
  int iVar10;
  undefined4 uVar11;
  int iVar12;
  int local_48;
  
  iVar5 = FUN_0074b600(*(undefined4 *)*param_2);
  iVar7 = *param_2;
  iVar8 = *(int *)(param_1 + 0x60);
  iVar9 = *(int *)(param_1 + 100);
  iVar1 = iVar8 + 1 >> 1;
  iVar2 = iVar9 + 1 >> 1;
  iVar3 = *(int *)(param_1 + 0xc) + 1 >> 1;
  iVar4 = *(int *)(param_1 + 0x10) + 1 >> 1;
  iVar10 = iVar8 * 2;
  local_48 = iVar1 * 4 + iVar10;
  if (iVar5 != 0) {
    local_48 = local_48 + iVar10;
  }
  pvVar6 = calloc(1,local_48 << 2);
  param_2[0x56] = (int)pvVar6;
  if (param_2[0x56] == 0) {
    uVar11 = 0;
  }
  else {
    iVar12 = param_2[0x56];
    WebPRescalerInit(param_2 + 6,*(undefined4 *)(param_1 + 0xc),*(undefined4 *)(param_1 + 0x10),
                     *(undefined4 *)(iVar7 + 0x10),iVar8,iVar9,*(undefined4 *)(iVar7 + 0x20),1,
                     *(undefined4 *)(param_1 + 0xc),iVar8,*(undefined4 *)(param_1 + 0x10),iVar9,
                     iVar12);
    WebPRescalerInit(param_2 + 0x1a,iVar3,iVar4,*(undefined4 *)(iVar7 + 0x14),iVar1,iVar2,
                     *(undefined4 *)(iVar7 + 0x24),1,iVar3,iVar1,iVar4,iVar2,iVar12 + iVar8 * 8);
    WebPRescalerInit(param_2 + 0x2e,iVar3,iVar4,*(undefined4 *)(iVar7 + 0x18),iVar1,iVar2,
                     *(undefined4 *)(iVar7 + 0x28),1,iVar3,iVar1,iVar4,iVar2,
                     iVar12 + (iVar10 + iVar1 * 2) * 4);
    param_2[0x57] = 0x74be81;
    if (iVar5 != 0) {
      WebPRescalerInit(param_2 + 0x42,*(undefined4 *)(param_1 + 0xc),*(undefined4 *)(param_1 + 0x10)
                       ,*(undefined4 *)(iVar7 + 0x1c),iVar8,iVar9,*(undefined4 *)(iVar7 + 0x2c),1,
                       *(undefined4 *)(param_1 + 0xc),iVar8,*(undefined4 *)(param_1 + 0x10),iVar9,
                       (iVar10 + iVar1 * 4) * 4 + iVar12);
      param_2[0x58] = 0x74bef1;
    }
    uVar11 = 1;
  }
  return uVar11;
}

// ---- FUN_0074c134  @ 0x74c134
int FUN_0074c134(int *param_1,int param_2)

{
  int iVar1;
  code *pcVar2;
  int iVar3;
  int local_18;
  int local_14;
  
  pcVar2 = *(code **)(WebPYUV444Converters + *(int *)*param_1 * 4);
  iVar3 = *param_1;
  local_18 = *(int *)(iVar3 + 0x10) + *(int *)(iVar3 + 0x14) * (param_1[4] + param_2);
  local_14 = 0;
  while ((iVar1 = FUN_0074b5bc(param_1 + 6), iVar1 != 0 &&
         (iVar1 = FUN_0074b5bc(param_1 + 0x1a), iVar1 != 0))) {
    if (*(int *)(*param_1 + 8) <= param_1[4] + param_2 + local_14) {
      __assert2("../libwebp/src/dec/io.c",0x171,"ExportRGB",
                "p->last_y + y_pos + num_lines_out < p->output->height");
    }
    if (param_1[0x20] != param_1[0x34]) {
      __assert2("../libwebp/src/dec/io.c",0x172,"ExportRGB",
                "p->scaler_u.y_accum == p->scaler_v.y_accum");
    }
    WebPRescalerExportRow(param_1 + 6);
    WebPRescalerExportRow(param_1 + 0x1a);
    WebPRescalerExportRow(param_1 + 0x2e);
    (*pcVar2)(param_1[0x15],param_1[0x29],param_1[0x3d],local_18,param_1[0x13]);
    local_18 = local_18 + *(int *)(iVar3 + 0x14);
    local_14 = local_14 + 1;
  }
  return local_14;
}

// ---- FUN_0074c274  @ 0x74c274
int FUN_0074c274(int param_1,int param_2)

{
  int iVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  int local_28;
  int local_24;
  int local_20;
  
  iVar5 = *(int *)(param_1 + 0x10);
  iVar1 = iVar5 + 1 >> 1;
  local_28 = 0;
  local_24 = 0;
  local_20 = 0;
  while (local_28 < iVar5) {
    iVar2 = WebPRescalerImport(param_2 + 0x18,iVar5 - local_28,
                               *(int *)(param_1 + 0x14) + local_28 * *(int *)(param_1 + 0x20),
                               *(undefined4 *)(param_1 + 0x20));
    iVar3 = WebPRescalerImport(param_2 + 0x68,iVar1 - local_24,
                               *(int *)(param_1 + 0x18) + local_24 * *(int *)(param_1 + 0x24),
                               *(undefined4 *)(param_1 + 0x24));
    iVar4 = WebPRescalerImport(param_2 + 0xb8,iVar1 - local_24,
                               *(int *)(param_1 + 0x1c) + local_24 * *(int *)(param_1 + 0x24),
                               *(undefined4 *)(param_1 + 0x24));
    if (iVar3 != iVar4) {
      __assert2("../libwebp/src/dec/io.c",0x18e,"EmitRescaledRGB","u_lines_in == v_lines_in");
    }
    local_28 = local_28 + iVar2;
    local_24 = local_24 + iVar3;
    iVar2 = FUN_0074c134(param_2,local_20);
    local_20 = local_20 + iVar2;
  }
  return local_20;
}

// ---- FUN_0074c378  @ 0x74c378
int FUN_0074c378(int *param_1,int param_2)

{
  byte bVar1;
  int iVar2;
  byte bVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  int iVar7;
  int iVar8;
  int local_34;
  int local_30;
  int local_28;
  
  iVar4 = *param_1;
  iVar5 = *(int *)(iVar4 + 0x10) + *(int *)(iVar4 + 0x14) * (param_1[4] + param_2);
  iVar6 = *(int *)*param_1;
  if ((iVar6 == 4) || (iVar6 == 9)) {
    iVar7 = 1;
  }
  else {
    iVar7 = 0;
  }
  if (iVar7 == 0) {
    local_34 = 3;
  }
  else {
    local_34 = 0;
  }
  local_34 = iVar5 + local_34;
  local_30 = 0;
  iVar6 = FUN_0074b5d4(iVar6);
  bVar3 = 0xff;
  iVar8 = param_1[0x4f];
  while (iVar2 = FUN_0074b5bc(param_1 + 0x42), iVar2 != 0) {
    if (*(int *)(*param_1 + 8) <= param_1[4] + param_2 + local_30) {
      __assert2("../libwebp/src/dec/io.c",0x1a4,"ExportAlpha",
                "p->last_y + y_pos + num_lines_out < p->output->height");
    }
    WebPRescalerExportRow(param_1 + 0x42);
    for (local_28 = 0; local_28 < iVar8; local_28 = local_28 + 1) {
      bVar1 = *(byte *)(param_1[0x51] + local_28);
      *(byte *)(local_34 + local_28 * 4) = bVar1;
      bVar3 = bVar1 & bVar3;
    }
    local_34 = local_34 + *(int *)(iVar4 + 0x14);
    local_30 = local_30 + 1;
  }
  if ((iVar6 != 0) && (bVar3 != 0xff)) {
    (*WebPApplyAlphaMultiply)(iVar5,iVar7,iVar8,local_30,*(undefined4 *)(iVar4 + 0x14));
  }
  return local_30;
}

// ---- FUN_0074c4d8  @ 0x74c4d8
int FUN_0074c4d8(int *param_1,int param_2)

{
  byte bVar1;
  int iVar2;
  int iVar3;
  byte bVar4;
  int iVar5;
  int iVar6;
  int iVar7;
  int local_30;
  int local_2c;
  int local_24;
  
  iVar5 = *param_1;
  iVar6 = *(int *)(iVar5 + 0x10) + *(int *)(iVar5 + 0x14) * (param_1[4] + param_2);
  local_30 = iVar6 + 1;
  local_2c = 0;
  iVar7 = param_1[0x4f];
  iVar2 = FUN_0074b5d4(*(undefined4 *)*param_1);
  bVar4 = 0xf;
  while (iVar3 = FUN_0074b5bc(param_1 + 0x42), iVar3 != 0) {
    if (*(int *)(*param_1 + 8) <= param_1[4] + param_2 + local_2c) {
      __assert2("../libwebp/src/dec/io.c",0x1c1,"ExportAlphaRGBA4444",
                "p->last_y + y_pos + num_lines_out < p->output->height");
    }
    WebPRescalerExportRow(param_1 + 0x42);
    for (local_24 = 0; local_24 < iVar7; local_24 = local_24 + 1) {
      bVar1 = *(byte *)(param_1[0x51] + local_24) >> 4;
      *(byte *)(local_30 + local_24 * 2) = bVar1 | *(byte *)(local_30 + local_24 * 2) & 0xf0;
      bVar4 = bVar1 & bVar4;
    }
    local_30 = local_30 + *(int *)(iVar5 + 0x14);
    local_2c = local_2c + 1;
  }
  if ((iVar2 != 0) && (bVar4 != 0xf)) {
    (*WebPApplyAlphaMultiply4444)(iVar6,iVar7,local_2c,*(undefined4 *)(iVar5 + 0x14));
  }
  return local_2c;
}

// ---- FUN_0074c628  @ 0x74c628
undefined4 FUN_0074c628(int *param_1,int param_2)

{
  int iVar1;
  int local_14;
  int local_10;
  
  if (param_1[0x1a] != 0) {
    local_14 = 0;
    local_10 = 0;
    while (local_14 < param_1[4]) {
      iVar1 = WebPRescalerImport(param_2 + 0x108,param_1[4] - local_14,
                                 param_1[0x1a] + local_14 * *param_1,*param_1);
      local_14 = local_14 + iVar1;
      iVar1 = (**(code **)(param_2 + 0x164))(param_2,local_10);
      local_10 = local_10 + iVar1;
    }
  }
  return 0;
}

// ---- FUN_0074c6a0  @ 0x74c6a0
undefined4 FUN_0074c6a0(int param_1,undefined4 *param_2)

{
  int iVar1;
  int iVar2;
  int iVar3;
  void *pvVar4;
  int iVar5;
  int iVar6;
  undefined4 uVar7;
  int iVar8;
  int iVar9;
  int local_40;
  int local_3c;
  
  iVar3 = FUN_0074b600(*(undefined4 *)*param_2);
  iVar5 = *(int *)(param_1 + 0x60);
  iVar6 = *(int *)(param_1 + 100);
  iVar1 = *(int *)(param_1 + 0xc) + 1 >> 1;
  iVar2 = *(int *)(param_1 + 0x10) + 1 >> 1;
  local_40 = iVar5 * 6;
  local_3c = iVar5 * 3;
  if (iVar3 != 0) {
    local_40 = iVar5 * 8;
    local_3c = iVar5 * 4;
  }
  pvVar4 = calloc(1,local_40 * 4 + local_3c);
  param_2[0x56] = pvVar4;
  if (param_2[0x56] == 0) {
    uVar7 = 0;
  }
  else {
    iVar8 = param_2[0x56];
    iVar9 = iVar8 + local_40 * 4;
    WebPRescalerInit(param_2 + 6,*(undefined4 *)(param_1 + 0xc),*(undefined4 *)(param_1 + 0x10),
                     iVar9,iVar5,iVar6,0,1,*(undefined4 *)(param_1 + 0xc),iVar5,
                     *(undefined4 *)(param_1 + 0x10),iVar6,iVar8);
    WebPRescalerInit(param_2 + 0x1a,iVar1,iVar2,iVar9 + iVar5,iVar5,iVar6,0,1,
                     *(undefined4 *)(param_1 + 0xc),iVar5 << 1,*(undefined4 *)(param_1 + 0x10),
                     iVar6 << 1,iVar8 + iVar5 * 8);
    WebPRescalerInit(param_2 + 0x2e,iVar1,iVar2,iVar9 + iVar5 * 2,iVar5,iVar6,0,1,
                     *(undefined4 *)(param_1 + 0xc),iVar5 << 1,*(undefined4 *)(param_1 + 0x10),
                     iVar6 << 1,iVar8 + iVar5 * 0x10);
    param_2[0x57] = 0x74c275;
    if (iVar3 != 0) {
      WebPRescalerInit(param_2 + 0x42,*(undefined4 *)(param_1 + 0xc),*(undefined4 *)(param_1 + 0x10)
                       ,iVar9 + iVar5 * 3,iVar5,iVar6,0,1,*(undefined4 *)(param_1 + 0xc),iVar5,
                       *(undefined4 *)(param_1 + 0x10),iVar6,iVar8 + iVar5 * 0x18);
      param_2[0x58] = 0x74c629;
      if ((*(int *)*param_2 == 5) || (*(int *)*param_2 == 10)) {
        param_2[0x59] = 0x74c4d9;
      }
      else {
        param_2[0x59] = 0x74c379;
      }
    }
    uVar7 = 1;
  }
  return uVar7;
}

// ---- FUN_0074c904  @ 0x74c904
undefined4 FUN_0074c904(int param_1)

{
  int iVar1;
  int iVar2;
  int iVar3;
  void *pvVar4;
  undefined4 *puVar5;
  int iVar6;
  undefined4 uVar7;
  
  puVar5 = *(undefined4 **)(param_1 + 0x28);
  iVar6 = *(int *)*puVar5;
  iVar1 = FUN_0074b640(iVar6);
  iVar2 = FUN_0074b600(iVar6);
  puVar5[0x56] = 0;
  puVar5[0x57] = 0;
  puVar5[0x58] = 0;
  puVar5[0x59] = 0;
  if (iVar2 == 0) {
    uVar7 = 0xc;
  }
  else {
    uVar7 = 0xb;
  }
  iVar3 = WebPIoInitFromOptions(puVar5[5],param_1,uVar7);
  if (iVar3 == 0) {
    uVar7 = 0;
  }
  else {
    if (*(int *)(param_1 + 0x5c) == 0) {
      if (iVar1 == 0) {
        puVar5[0x57] = 0x74b655;
      }
      else {
        puVar5[0x57] = 0x74b799;
        if (*(int *)(param_1 + 0x38) != 0) {
          iVar3 = *(int *)(param_1 + 0xc) + 1 >> 1;
          pvVar4 = malloc(*(int *)(param_1 + 0xc) + iVar3 * 2);
          puVar5[0x56] = pvVar4;
          if (puVar5[0x56] == 0) {
            return 0;
          }
          puVar5[1] = puVar5[0x56];
          puVar5[2] = puVar5[1] + *(int *)(param_1 + 0xc);
          puVar5[3] = puVar5[2] + iVar3;
          puVar5[0x57] = 0x74b899;
          WebPInitUpsamplers();
        }
      }
      if (iVar2 != 0) {
        iVar2 = FUN_0074b5d4(iVar6);
        if (iVar2 != 0) {
          WebPInitPremultiply();
        }
        if ((iVar6 == 5) || (iVar6 == 10)) {
          uVar7 = 0x74bd0d;
        }
        else if (iVar1 == 0) {
          uVar7 = 0x74baa5;
        }
        else {
          uVar7 = 0x74bbe5;
        }
        puVar5[0x58] = uVar7;
      }
    }
    else {
      if (iVar1 == 0) {
        iVar2 = FUN_0074bf20(param_1,puVar5);
      }
      else {
        iVar2 = FUN_0074c6a0(param_1,puVar5);
      }
      if (iVar2 == 0) {
        return 0;
      }
    }
    if (iVar1 != 0) {
      VP8YUVInit();
    }
    uVar7 = 1;
  }
  return uVar7;
}

// ---- FUN_0074caac  @ 0x74caac
undefined4 FUN_0074caac(int param_1)

{
  int iVar1;
  int iVar2;
  int iVar3;
  undefined4 uVar4;
  
  iVar1 = *(int *)(param_1 + 0x28);
  iVar2 = *(int *)(param_1 + 0xc);
  iVar3 = *(int *)(param_1 + 0x10);
  if ((*(uint *)(param_1 + 8) & 1) != 0) {
    __assert2("../libwebp/src/dec/io.c",0x256,"CustomPut","!(io->mb_y & 1)");
  }
  if ((iVar2 < 1) || (iVar3 < 1)) {
    uVar4 = 0;
  }
  else {
    iVar2 = (**(code **)(iVar1 + 0x15c))(param_1,iVar1);
    if (*(int *)(iVar1 + 0x160) != 0) {
      (**(code **)(iVar1 + 0x160))(param_1,iVar1);
    }
    *(int *)(iVar1 + 0x10) = *(int *)(iVar1 + 0x10) + iVar2;
    uVar4 = 1;
  }
  return uVar4;
}

// ---- FUN_0074cb44  @ 0x74cb44
void FUN_0074cb44(int param_1)

{
  int iVar1;
  
  iVar1 = *(int *)(param_1 + 0x28);
  free(*(void **)(iVar1 + 0x158));
  *(undefined4 *)(iVar1 + 0x158) = 0;
  return;
}

// ---- FUN_0074cc08  @ 0x74cc08
undefined4 FUN_0074cc08(undefined4 param_1)

{
  undefined4 uVar1;
  
  uVar1 = VP8GetValue(param_1,1);
  return uVar1;
}

// ---- FUN_0074cc20  @ 0x74cc20
int FUN_0074cc20(int param_1,int param_2)

{
  if (param_1 < 0) {
    param_2 = 0;
  }
  else if (param_1 < param_2) {
    param_2 = param_1;
  }
  return param_2;
}

// ---- FUN_0074ce8c  @ 0x74ce8c
undefined4 FUN_0074ce8c(undefined4 param_1)

{
  undefined4 uVar1;
  
  uVar1 = VP8GetValue(param_1,1);
  return uVar1;
}

// ---- FUN_0074cea4  @ 0x74cea4
void FUN_0074cea4(int *param_1)

{
  uint uVar1;
  uint uVar2;
  uint uVar3;
  
  if ((param_1 == (int *)0x0) || (*param_1 == 0)) {
    __assert2("../libwebp/src/dec/./../utils/bit_reader.h",0x4b,"VP8LoadNewBytes","br && br->buf_");
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

// ---- FUN_0074cfc8  @ 0x74cfc8
bool FUN_0074cfc8(int param_1,undefined4 param_2,undefined4 param_3,uint param_4)

{
  uint uVar1;
  
  if (0 < *(int *)(param_1 + 0x20)) {
    FUN_0074cea4(param_1);
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

// ---- FUN_0074d060  @ 0x74d060
void FUN_0074d060(int param_1)

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

// ---- FUN_0074d0f8  @ 0x74d0f8
undefined4 FUN_0074d0f8(int param_1,int param_2)

{
  undefined4 uVar1;
  uint uVar2;
  uint uVar3;
  
  uVar2 = param_2 * *(int *)(param_1 + 0x14);
  uVar3 = uVar2 >> 8;
  uVar1 = FUN_0074cfc8(param_1,uVar3,uVar2 * 0x1000000,uVar3);
  if (*(uint *)(param_1 + 0x14) < 0x7f) {
    FUN_0074d060(param_1);
  }
  return uVar1;
}

// ---- FUN_0074d4ac  @ 0x74d4ac
undefined4 FUN_0074d4ac(undefined4 param_1)

{
  undefined4 uVar1;
  
  uVar1 = VP8GetValue(param_1,1);
  return uVar1;
}

// ---- FUN_0074d4c4  @ 0x74d4c4
void FUN_0074d4c4(int *param_1)

{
  uint uVar1;
  uint uVar2;
  uint uVar3;
  
  if ((param_1 == (int *)0x0) || (*param_1 == 0)) {
    __assert2("../libwebp/src/dec/././../utils/bit_reader.h",0x4b,"VP8LoadNewBytes","br && br->buf_"
             );
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

// ---- FUN_0074d5e8  @ 0x74d5e8
bool FUN_0074d5e8(int param_1,undefined4 param_2,undefined4 param_3,uint param_4)

{
  uint uVar1;
  
  if (0 < *(int *)(param_1 + 0x20)) {
    FUN_0074d4c4(param_1);
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

// ---- FUN_0074d680  @ 0x74d680
void FUN_0074d680(int param_1)

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

// ---- FUN_0074d718  @ 0x74d718
undefined4 FUN_0074d718(int param_1,int param_2)

{
  undefined4 uVar1;
  uint uVar2;
  uint uVar3;
  
  uVar2 = param_2 * *(int *)(param_1 + 0x14);
  uVar3 = uVar2 >> 8;
  uVar1 = FUN_0074d5e8(param_1,uVar3,uVar2 * 0x1000000,uVar3);
  if (*(uint *)(param_1 + 0x14) < 0x7f) {
    FUN_0074d680(param_1);
  }
  return uVar1;
}

// ---- FUN_0074d788  @ 0x74d788
int FUN_0074d788(int param_1,int param_2)

{
  int iVar1;
  
  iVar1 = FUN_0074d5e8(param_1,param_2,
                       (uint)((*(uint *)(param_1 + 0x14) & 1) != 0) << 0x1f |
                       *(uint *)(param_1 + 0x10) >> 1,*(uint *)(param_1 + 0x14) >> 1);
  FUN_0074d680(param_1);
  if (iVar1 != 0) {
    param_2 = -param_2;
  }
  return param_2;
}

// ---- FUN_0074d7d4  @ 0x74d7d4
void FUN_0074d7d4(undefined4 *param_1)

{
  *param_1 = 0;
  param_1[2] = &DAT_008706c8;
  return;
}

// ---- FUN_0074da64  @ 0x74da64
void FUN_0074da64(undefined4 *param_1)

{
  if (param_1 == (undefined4 *)0x0) {
    __assert2("../libwebp/src/dec/vp8.c",0x8c,"ResetSegmentHeader","hdr != NULL");
  }
  *param_1 = 0;
  param_1[1] = 0;
  param_1[2] = 1;
  *(undefined1 *)(param_1 + 3) = 0;
  *(undefined1 *)((int)param_1 + 0xd) = 0;
  *(undefined1 *)((int)param_1 + 0xe) = 0;
  *(undefined1 *)((int)param_1 + 0xf) = 0;
  *(undefined1 *)(param_1 + 4) = 0;
  *(undefined1 *)((int)param_1 + 0x11) = 0;
  *(undefined1 *)((int)param_1 + 0x12) = 0;
  *(undefined1 *)((int)param_1 + 0x13) = 0;
  return;
}

// ---- FUN_0074db0c  @ 0x74db0c
bool FUN_0074db0c(int param_1,int *param_2,int param_3)

{
  undefined1 uVar1;
  int iVar2;
  int local_10;
  int local_c;
  
  if (param_1 == 0) {
    __assert2("../libwebp/src/dec/vp8.c",0x97,"ParseSegmentHeader","br != NULL");
  }
  if (param_2 == (int *)0x0) {
    __assert2("../libwebp/src/dec/vp8.c",0x98,"ParseSegmentHeader","hdr != NULL");
  }
  iVar2 = FUN_0074d4ac(param_1);
  *param_2 = iVar2;
  if (*param_2 == 0) {
    param_2[1] = 0;
  }
  else {
    iVar2 = FUN_0074d4ac(param_1);
    param_2[1] = iVar2;
    iVar2 = FUN_0074d4ac(param_1);
    if (iVar2 != 0) {
      iVar2 = FUN_0074d4ac(param_1);
      param_2[2] = iVar2;
      for (local_10 = 0; local_10 < 4; local_10 = local_10 + 1) {
        iVar2 = FUN_0074d4ac(param_1);
        if (iVar2 == 0) {
          uVar1 = 0;
        }
        else {
          uVar1 = VP8GetSignedValue(param_1,7);
        }
        *(undefined1 *)((int)param_2 + local_10 + 0xc) = uVar1;
      }
      for (local_10 = 0; local_10 < 4; local_10 = local_10 + 1) {
        iVar2 = FUN_0074d4ac(param_1);
        if (iVar2 == 0) {
          uVar1 = 0;
        }
        else {
          uVar1 = VP8GetSignedValue(param_1,6);
        }
        *(undefined1 *)((int)param_2 + local_10 + 0x10) = uVar1;
      }
    }
    if (param_2[1] != 0) {
      for (local_c = 0; local_c < 3; local_c = local_c + 1) {
        iVar2 = FUN_0074d4ac(param_1);
        if (iVar2 == 0) {
          uVar1 = 0xff;
        }
        else {
          uVar1 = VP8GetValue(param_1,8);
        }
        *(undefined1 *)(param_3 + local_c) = uVar1;
      }
    }
  }
  return *(int *)(param_1 + 8) == 0;
}

// ---- FUN_0074dc90  @ 0x74dc90
undefined4 FUN_0074dc90(int param_1,uint3 *param_2,int param_3)

{
  uint uVar1;
  uint uVar2;
  int iVar3;
  undefined4 uVar4;
  undefined4 local_28;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  
  uVar2 = (int)param_2 + param_3;
  uVar1 = VP8GetValue(param_1 + 0x10,2);
  *(int *)(param_1 + 0x14c) = 1 << (uVar1 & 0xff);
  iVar3 = *(int *)(param_1 + 0x14c) + -1;
  local_24 = (int)param_2 + iVar3 * 3;
  if (uVar2 < local_24) {
    uVar4 = 7;
  }
  else {
    local_28 = param_2;
    for (local_20 = 0; local_20 < iVar3; local_20 = local_20 + 1) {
      local_1c = local_24 + *local_28;
      if (uVar2 < local_24 + *local_28) {
        local_1c = uVar2;
      }
      VP8InitBitReader(param_1 + 0x150 + local_20 * 0x28,local_24,local_1c);
      local_24 = local_1c;
      local_28 = (uint3 *)((int)local_28 + 3);
    }
    VP8InitBitReader(param_1 + 0x150 + iVar3 * 0x28,local_24,uVar2);
    if (local_24 < uVar2) {
      uVar4 = 0;
    }
    else {
      uVar4 = 5;
    }
  }
  return uVar4;
}

// ---- FUN_0074dda8  @ 0x74dda8
bool FUN_0074dda8(int param_1,int param_2)

{
  int iVar1;
  undefined4 uVar2;
  int *piVar3;
  int local_18;
  int local_14;
  char local_10;
  
  piVar3 = (int *)(param_2 + 0x48);
  iVar1 = FUN_0074d4ac(param_1);
  *piVar3 = iVar1;
  uVar2 = VP8GetValue(param_1,6);
  *(undefined4 *)(param_2 + 0x4c) = uVar2;
  uVar2 = VP8GetValue(param_1,3);
  *(undefined4 *)(param_2 + 0x50) = uVar2;
  uVar2 = FUN_0074d4ac(param_1);
  *(undefined4 *)(param_2 + 0x54) = uVar2;
  if ((*(int *)(param_2 + 0x54) != 0) && (iVar1 = FUN_0074d4ac(param_1), iVar1 != 0)) {
    for (local_18 = 0; local_18 < 4; local_18 = local_18 + 1) {
      iVar1 = FUN_0074d4ac(param_1);
      if (iVar1 != 0) {
        iVar1 = VP8GetSignedValue(param_1,6);
        piVar3[local_18 + 4] = iVar1;
      }
    }
    for (local_18 = 0; local_18 < 4; local_18 = local_18 + 1) {
      iVar1 = FUN_0074d4ac(param_1);
      if (iVar1 != 0) {
        iVar1 = VP8GetSignedValue(param_1,6);
        piVar3[local_18 + 8] = iVar1;
      }
    }
  }
  if (*(int *)(param_2 + 0x4c) == 0) {
    uVar2 = 0;
  }
  else if (*piVar3 == 0) {
    uVar2 = 2;
  }
  else {
    uVar2 = 1;
  }
  *(undefined4 *)(param_2 + 0x784) = uVar2;
  if (0 < *(int *)(param_2 + 0x784)) {
    if (*(int *)(param_2 + 0x78) == 0) {
      *(char *)(param_2 + 0x78c) = (char)*(undefined4 *)(param_2 + 0x4c);
    }
    else {
      for (local_14 = 0; local_14 < 4; local_14 = local_14 + 1) {
        local_10 = *(char *)(param_2 + local_14 + 0x88);
        if (*(int *)(param_2 + 0x80) == 0) {
          local_10 = local_10 + (char)*(undefined4 *)(param_2 + 0x4c);
        }
        *(char *)(param_2 + local_14 + 0x78c) = local_10;
      }
    }
  }
  return *(int *)(param_1 + 8) == 0;
}

// ---- FUN_0074e3d4  @ 0x74e3d4
int FUN_0074e3d4(undefined4 param_1,int param_2,int param_3,int param_4,int param_5,int param_6)

{
  byte bVar1;
  short sVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  uint uVar6;
  undefined1 *local_24;
  int local_20;
  char *local_1c;
  
  local_24 = (undefined1 *)(param_2 + param_5 * 0x21 + param_3 * 0xb);
  iVar3 = FUN_0074d718(param_1,*local_24);
  if (iVar3 == 0) {
    iVar3 = 0;
  }
  else {
    do {
      iVar5 = param_5 + 1;
      iVar3 = FUN_0074d718(param_1,local_24[1]);
      if (iVar3 == 0) {
        local_24 = (undefined1 *)(param_2 + (uint)(byte)(&DAT_008708b1)[param_5] * 0x21);
      }
      else {
        iVar3 = FUN_0074d718(param_1,local_24[2]);
        if (iVar3 == 0) {
          iVar3 = (uint)(byte)(&DAT_008708b1)[param_5] * 0x21 + 0xb;
          local_20 = 1;
        }
        else {
          iVar3 = FUN_0074d718(param_1,local_24[3]);
          if (iVar3 == 0) {
            iVar3 = FUN_0074d718(param_1,local_24[4]);
            if (iVar3 == 0) {
              local_20 = 2;
            }
            else {
              local_20 = FUN_0074d718(param_1,local_24[5]);
              local_20 = local_20 + 3;
            }
          }
          else {
            iVar3 = FUN_0074d718(param_1,local_24[6]);
            if (iVar3 == 0) {
              iVar3 = FUN_0074d718(param_1,local_24[7]);
              if (iVar3 == 0) {
                local_20 = FUN_0074d718(param_1,0x9f);
                local_20 = local_20 + 5;
              }
              else {
                iVar3 = FUN_0074d718(param_1,0xa5);
                local_20 = FUN_0074d718(param_1,0x91);
                local_20 = iVar3 * 2 + 7 + local_20;
              }
            }
            else {
              iVar3 = FUN_0074d718(param_1,local_24[8]);
              iVar4 = FUN_0074d718(param_1,local_24[iVar3 + 9]);
              uVar6 = iVar3 * 2 + iVar4;
              local_20 = 0;
              for (local_1c = (&PTR_DAT_00909630)[uVar6]; *local_1c != '\0'; local_1c = local_1c + 1
                  ) {
                iVar3 = FUN_0074d718(param_1,*local_1c);
                local_20 = iVar3 + local_20 * 2;
              }
              local_20 = local_20 + (8 << (uVar6 & 0xff)) + 3;
            }
          }
          iVar3 = (uint)(byte)(&DAT_008708b1)[param_5] * 0x21 + 0x16;
        }
        local_24 = (undefined1 *)(param_2 + iVar3);
        bVar1 = (&DAT_008708e4)[param_5];
        sVar2 = FUN_0074d788(param_1,local_20);
        if (bVar1 == 0) {
          iVar3 = 0;
        }
        else {
          iVar3 = 4;
        }
        *(short *)(param_6 + (uint)bVar1 * 2) = (short)*(undefined4 *)(param_4 + iVar3) * sVar2;
        if (iVar5 == 0x10) {
          return 0x10;
        }
        iVar3 = FUN_0074d718(param_1,*local_24);
        if (iVar3 == 0) {
          return iVar5;
        }
      }
      param_5 = iVar5;
    } while (iVar5 != 0x10);
    iVar3 = 0x10;
  }
  return iVar3;
}

// ---- FUN_0074e680  @ 0x74e680
void FUN_0074e680(int param_1,uint *param_2,undefined4 param_3)

{
  int iVar1;
  int local_8c;
  int local_88;
  int local_84;
  int local_80;
  undefined4 local_7c;
  int local_78;
  short *local_74;
  uint local_70;
  uint local_6c;
  int local_68;
  int local_64;
  int local_60;
  uint local_5c;
  uint local_58;
  int local_54;
  uint *local_50;
  int local_4c;
  int local_48;
  int local_44;
  uint local_40;
  uint local_3c;
  int local_38;
  int local_34;
  undefined4 local_30;
  undefined4 local_2c;
  undefined4 local_28;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  undefined4 local_18;
  undefined4 local_14;
  
  local_54 = param_1 + 0x294 + (uint)*(byte *)(param_1 + 0x77a) * 0x18;
  local_74 = *(short **)(param_1 + 0x740);
  local_50 = (uint *)(*(int *)(param_1 + 0x734) + -8);
  local_70 = 0;
  local_6c = 0;
  local_8c = 0;
  local_88 = 0;
  memset(local_74,0,0x300);
  if (*(char *)(param_1 + 0x768) == '\0') {
    local_30 = 0;
    local_2c = 0;
    local_28 = 0;
    local_24 = 0;
    local_20 = 0;
    local_1c = 0;
    local_18 = 0;
    local_14 = 0;
    local_4c = ((byte)param_2[1] & 1) + ((byte)local_50[1] & 1);
    iVar1 = FUN_0074e3d4(param_3,param_1 + 0x3ff,local_4c,local_54 + 8,0,&local_30);
    *(byte *)(local_50 + 1) = (byte)local_50[1] & 0xfe | 0 < iVar1;
    *(byte *)(param_2 + 1) =
         (byte)param_2[1] & 0xfe | (byte)(((uint)(byte)local_50[1] << 0x1f) >> 0x1f);
    local_7c = 1;
    local_78 = param_1 + 0x2f7;
    (*VP8TransformWHT)(&local_30,local_74);
  }
  else {
    local_7c = 0;
    local_78 = param_1 + 0x60f;
  }
  local_84 = *(int *)(&DAT_008708f4 + (*param_2 & 0xf) * 4);
  local_80 = *(int *)(&DAT_008708f4 + (*local_50 & 0xf) * 4);
  for (local_64 = 0; local_64 < 4; local_64 = local_64 + 1) {
    local_5c = (uint)*(byte *)((int)&local_80 + local_64);
    for (local_68 = 0; local_68 < 4; local_68 = local_68 + 1) {
      local_48 = *(byte *)((int)&local_84 + local_68) + local_5c;
      local_44 = FUN_0074e3d4(param_3,local_78,local_48,local_54,local_7c,local_74);
      local_5c = (uint)(0 < local_44);
      *(bool *)((int)&local_84 + local_68) = 0 < local_44;
      *(bool *)((int)&local_88 + local_68) = *local_74 != 0;
      *(bool *)((int)&local_8c + local_68) = 1 < local_44;
      local_74 = local_74 + 0x10;
    }
    *(char *)((int)&local_80 + local_64) = (char)local_5c;
    local_6c = (local_88 * 0x1020408 & 0xff000000U) >> ((6U - local_64 & 0x3f) << 2) | local_6c;
    local_70 = (local_8c * 0x1020408 & 0xff000000U) >> ((6U - local_64 & 0x3f) << 2) | local_70;
  }
  local_40 = (uint)(local_84 * 0x1020408) >> 0x18;
  local_3c = (uint)(local_80 * 0x1020408) >> 0x18;
  local_84 = *(int *)(&DAT_008708f4 + (*param_2 >> 4) * 4);
  local_80 = *(int *)(&DAT_008708f4 + (*local_50 >> 4) * 4);
  for (local_60 = 0; local_60 < 4; local_60 = local_60 + 2) {
    for (local_64 = 0; local_64 < 2; local_64 = local_64 + 1) {
      local_58 = (uint)*(byte *)((int)&local_80 + local_60 + local_64);
      for (local_68 = 0; local_68 < 2; local_68 = local_68 + 1) {
        local_38 = *(byte *)((int)&local_84 + local_60 + local_68) + local_58;
        local_34 = FUN_0074e3d4(param_3,param_1 + 0x507,local_38,local_54 + 0x10,0,local_74);
        local_58 = (uint)(0 < local_34);
        *(bool *)((int)&local_84 + local_60 + local_68) = 0 < local_34;
        *(bool *)((int)&local_88 + local_64 * 2 + local_68) = *local_74 != 0;
        *(bool *)((int)&local_8c + local_64 * 2 + local_68) = 1 < local_34;
        local_74 = local_74 + 0x10;
      }
      *(char *)((int)&local_80 + local_60 + local_64) = (char)local_58;
    }
    local_6c = (local_88 * 0x1020408 & 0xff000000U) >> ((4U - local_60 & 0x7f) << 1) | local_6c;
    local_70 = (local_8c * 0x1020408 & 0xff000000U) >> ((4U - local_60 & 0x7f) << 1) | local_70;
  }
  *param_2 = local_40 | (local_84 * 0x1020408 & 0xff000000U) >> 0x14;
  *local_50 = local_3c | (local_80 * 0x1020408 & 0xff000000U) >> 0x14;
  *(uint *)(param_1 + 0x780) = local_70;
  *(uint *)(param_1 + 0x77c) = local_70 | local_6c;
  *(byte *)(param_2 + 1) = (byte)param_2[1] & 0xfd | (*(int *)(param_1 + 0x77c) == 0) << 1;
  return;
}

// ---- FUN_0074ed44  @ 0x74ed44
undefined4 FUN_0074ed44(int param_1,undefined4 param_2)

{
  int iVar1;
  int iVar2;
  uint uVar3;
  undefined4 uVar4;
  
  *(undefined4 *)(param_1 + 0x764) = 0;
  do {
    if (*(int *)(param_1 + 0x148) <= *(int *)(param_1 + 0x764)) {
      if ((*(int *)(param_1 + 0xac) == 0) || (iVar2 = WebPWorkerSync(param_1 + 0x8c), iVar2 != 0)) {
        uVar4 = 1;
      }
      else {
        uVar4 = 0;
      }
      return uVar4;
    }
    uVar3 = *(uint *)(param_1 + 0x764);
    iVar2 = *(int *)(param_1 + 0x14c);
    VP8InitScanline(param_1);
    *(undefined4 *)(param_1 + 0x760) = 0;
    while (*(int *)(param_1 + 0x760) < *(int *)(param_1 + 0x134)) {
      iVar1 = VP8DecodeMB(param_1,param_1 + 0x150 + (iVar2 - 1U & uVar3) * 0x28);
      if (iVar1 == 0) {
        uVar4 = VP8SetError(param_1,7,"Premature end-of-file encountered.");
        return uVar4;
      }
      VP8ReconstructBlock(param_1);
      VP8StoreBlock(param_1);
      *(int *)(param_1 + 0x760) = *(int *)(param_1 + 0x760) + 1;
    }
    iVar2 = VP8ProcessRow(param_1,param_2);
    if (iVar2 == 0) {
      uVar4 = VP8SetError(param_1,6,"Output aborted.");
      return uVar4;
    }
    *(int *)(param_1 + 0x764) = *(int *)(param_1 + 0x764) + 1;
  } while( true );
}

// ---- FUN_0074efbc  @ 0x74efbc
bool FUN_0074efbc(int param_1)

{
  return *(int *)(param_1 + 0x18) < 1;
}

// ---- FUN_0074efd4  @ 0x74efd4
undefined4 FUN_0074efd4(undefined4 param_1)

{
  undefined4 uVar1;
  
  uVar1 = VP8InitIoInternal(param_1,0x200);
  return uVar1;
}

// ---- FUN_0074efec  @ 0x74efec
uint FUN_0074efec(uint *param_1)

{
  uint uVar1;
  uint uVar2;
  
  uVar2 = param_1[5];
  uVar1 = *param_1 >> (uVar2 & 0xff) | param_1[1] << (0x20 - uVar2 & 0xff);
  if (-1 < (int)(uVar2 - 0x20)) {
    uVar1 = param_1[1] >> (uVar2 - 0x20 & 0xff);
  }
  param_1[5] = param_1[5] + 1;
  return uVar1 & 1;
}

// ---- FUN_0074f03c  @ 0x74f03c
undefined4 FUN_0074f03c(int *param_1,uint param_2)

{
  if (0xffffffffU >> (param_1[1] & 0xffU) < param_2) {
    __assert2("../libwebp/src/dec/./../utils/color_cache.h",0x20,"VP8LColorCacheLookup",
              "key <= (~0U >> cc->hash_shift_)");
  }
  return *(undefined4 *)(*param_1 + param_2 * 4);
}

// ---- FUN_0074f090  @ 0x74f090
void FUN_0074f090(int *param_1,int param_2)

{
  *(int *)(*param_1 + ((uint)(param_2 * 0x1e35a7bd) >> (param_1[1] & 0xffU)) * 4) = param_2;
  return;
}

// ---- FUN_0074f0c4  @ 0x74f0c4
bool FUN_0074f0c4(int param_1)

{
  return *(int *)(param_1 + 4) == 0;
}

// ---- FUN_0074f0dc  @ 0x74f0dc
int FUN_0074f0dc(int param_1,int param_2)

{
  return param_1 + (*(int *)(param_1 + 4) + param_2) * 8;
}

// ---- FUN_0074f0fc  @ 0x74f0fc
uint FUN_0074f0fc(int param_1,uint param_2)

{
  return ((1 << (param_2 & 0xff)) + param_1) - 1U >> (param_2 & 0xff);
}

// ---- FUN_0074f124  @ 0x74f124
uint FUN_0074f124(int param_1)

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

// ---- FUN_0074f15c  @ 0x74f15c
int FUN_0074f15c(int param_1,int param_2,int param_3)

{
  return (int)("_ZN7cocos2d15CCEaseBackInOut6createEPNS_16CCActionIntervalE" +
              param_1 * 0x41c7 + param_2 * 0x8123 + param_3 * 0x1914 + 0x2d) >> 0x10;
}

// ---- FUN_0074f1a0  @ 0x74f1a0
undefined4 FUN_0074f1a0(int param_1,int param_2,int param_3)

{
  undefined4 uVar1;
  
  uVar1 = FUN_0074f124(param_1 * -0x25f7 + param_2 * -0x4a89 + param_3 * 0x7080);
  return uVar1;
}

// ---- FUN_0074f1e4  @ 0x74f1e4
undefined4 FUN_0074f1e4(int param_1,int param_2,int param_3)

{
  undefined4 uVar1;
  
  uVar1 = FUN_0074f124(param_1 * 0x7080 + param_2 * -0x5e34 + param_3 * -0x124c);
  return uVar1;
}

// ---- FUN_0074f24c  @ 0x74f24c
bool FUN_0074f24c(undefined4 param_1,int *param_2,int *param_3,undefined4 *param_4)

{
  int iVar1;
  int iVar2;
  undefined4 uVar3;
  undefined1 local_9 [5];
  
  local_9[0] = VP8LReadBits(param_1,8);
  iVar1 = VP8LCheckSignature(local_9,1);
  if (iVar1 != 0) {
    iVar2 = VP8LReadBits(param_1,0xe);
    *param_2 = iVar2 + 1;
    iVar2 = VP8LReadBits(param_1,0xe);
    *param_3 = iVar2 + 1;
    uVar3 = VP8LReadBits(param_1,1);
    *param_4 = uVar3;
    VP8LReadBits(param_1,3);
  }
  return iVar1 != 0;
}

// ---- FUN_0074f348  @ 0x74f348
int FUN_0074f348(uint param_1,undefined4 param_2)

{
  uint uVar1;
  int iVar2;
  
  if (3 < (int)param_1) {
    uVar1 = (int)(param_1 - 2) >> 1;
    iVar2 = VP8LReadBits(param_2,uVar1);
    param_1 = iVar2 + ((param_1 & 1) + 2 << (uVar1 & 0xff));
  }
  return param_1 + 1;
}

// ---- FUN_0074f394  @ 0x74f394
undefined4 FUN_0074f394(undefined4 param_1,undefined4 param_2)

{
  undefined4 uVar1;
  
  uVar1 = FUN_0074f348(param_1,param_2);
  return uVar1;
}

// ---- FUN_0074f3ac  @ 0x74f3ac
int FUN_0074f3ac(int param_1,int param_2)

{
  if (param_2 < 0x79) {
    param_2 = param_1 * ((int)(uint)(byte)(&DAT_00870a7f)[param_2] >> 4) +
              (8 - ((byte)(&DAT_00870a7f)[param_2] & 0xf));
    if (param_2 < 1) {
      param_2 = 1;
    }
  }
  else {
    param_2 = param_2 + -0x78;
  }
  return param_2;
}

// ---- FUN_0074f404  @ 0x74f404
undefined4 FUN_0074f404(int *param_1,undefined4 param_2)

{
  undefined4 uVar1;
  int iVar2;
  undefined4 *local_c;
  
  local_c = (undefined4 *)*param_1;
  if (local_c == (undefined4 *)0x0) {
    __assert2("../libwebp/src/dec/vp8l.c",0x9b,"ReadSymbolUnsafe","node != NULL");
  }
  while (iVar2 = FUN_0074f0c4(local_c), iVar2 == 0) {
    uVar1 = FUN_0074efec(param_2);
    local_c = (undefined4 *)FUN_0074f0dc(local_c,uVar1);
  }
  return *local_c;
}

// ---- FUN_0074f46c  @ 0x74f46c
undefined4 FUN_0074f46c(int *param_1,int param_2)

{
  undefined4 uVar1;
  int iVar2;
  undefined4 *local_10;
  
  if (*(uint *)(param_2 + 0xc) < *(int *)(param_2 + 0x10) + 8U) {
    local_10 = (undefined4 *)*param_1;
    if (local_10 == (undefined4 *)0x0) {
      __assert2("../libwebp/src/dec/vp8l.c",0xa9,"ReadSymbol","node != NULL");
    }
    while (iVar2 = FUN_0074f0c4(local_10), iVar2 == 0) {
      uVar1 = VP8LReadOneBit(param_2);
      local_10 = (undefined4 *)FUN_0074f0dc(local_10,uVar1);
    }
    uVar1 = *local_10;
  }
  else {
    uVar1 = FUN_0074f404(param_1,param_2);
  }
  return uVar1;
}

// ---- FUN_0074f4fc  @ 0x74f4fc
undefined4 FUN_0074f4fc(undefined4 *param_1,undefined4 param_2,int param_3,int param_4)

{
  int iVar1;
  undefined4 *puVar2;
  int iVar3;
  bool bVar4;
  undefined4 local_48;
  int local_44;
  int local_40;
  int local_3c;
  int local_38;
  undefined1 auStack_14 [16];
  
  local_48 = 0;
  puVar2 = param_1 + 8;
  local_3c = 8;
  iVar1 = HuffmanTreeBuildImplicit(auStack_14,param_2,0x13);
  if (iVar1 == 0) {
    *param_1 = 3;
    return 0;
  }
  iVar1 = VP8LReadBits(puVar2,1);
  local_40 = param_3;
  if (iVar1 != 0) {
    iVar1 = VP8LReadBits(puVar2,3);
    local_40 = VP8LReadBits(puVar2,(iVar1 + 1) * 2);
    local_40 = local_40 + 2;
    if (param_3 < local_40) {
      *param_1 = 3;
      goto LAB_0074f69a;
    }
  }
  local_44 = 0;
  while ((local_44 < param_3 && (bVar4 = local_40 != 0, local_40 = local_40 + -1, bVar4))) {
    VP8LFillBitWindow(puVar2);
    iVar1 = FUN_0074f46c(auStack_14,puVar2);
    if (iVar1 < 0x10) {
      *(int *)(param_4 + local_44 * 4) = iVar1;
      local_44 = local_44 + 1;
      if (iVar1 != 0) {
        local_3c = iVar1;
      }
    }
    else {
      iVar3 = *(int *)(&DAT_00870a54 + (iVar1 + -0x10) * 4);
      local_38 = VP8LReadBits(puVar2,*(undefined4 *)(&DAT_00870a48 + (iVar1 + -0x10) * 4));
      local_38 = local_38 + iVar3;
      if (param_3 < local_44 + local_38) {
        *param_1 = 3;
        goto LAB_0074f69a;
      }
      iVar3 = local_3c;
      if (iVar1 != 0x10) {
        iVar3 = 0;
      }
      while (bVar4 = 0 < local_38, local_38 = local_38 + -1, bVar4) {
        *(int *)(param_4 + local_44 * 4) = iVar3;
        local_44 = local_44 + 1;
      }
    }
  }
  local_48 = 1;
LAB_0074f69a:
  HuffmanTreeRelease(auStack_14);
  return local_48;
}

// ---- FUN_0074f6c0  @ 0x74f6c0
bool FUN_0074f6c0(int param_1,undefined4 *param_2,undefined4 param_3)

{
  byte bVar1;
  bool bVar2;
  int iVar3;
  int iVar4;
  void *__ptr;
  undefined4 *puVar5;
  undefined4 uVar6;
  int local_84;
  int local_80;
  undefined4 local_64;
  undefined4 local_60;
  undefined4 local_5c;
  undefined4 local_58;
  int local_54 [19];
  
  puVar5 = param_2 + 8;
  iVar3 = VP8LReadBits(puVar5,1);
  if (iVar3 == 0) {
    memset(local_54,0,0x4c);
    iVar3 = VP8LReadBits(puVar5,4);
    if (0x13 < iVar3 + 4) {
      *param_2 = 3;
      return false;
    }
    __ptr = (void *)WebPSafeCalloc(param_1,param_1 >> 0x1f,4);
    if (__ptr == (void *)0x0) {
      *param_2 = 1;
      return false;
    }
    for (local_80 = 0; local_80 < iVar3 + 4; local_80 = local_80 + 1) {
      bVar1 = (&DAT_00870a6c)[local_80];
      iVar4 = VP8LReadBits(puVar5,3);
      local_54[bVar1] = iVar4;
    }
    local_84 = FUN_0074f4fc(param_2,local_54,param_1,__ptr);
    if (local_84 != 0) {
      local_84 = HuffmanTreeBuildImplicit(param_3,__ptr,param_1);
    }
    free(__ptr);
  }
  else {
    iVar3 = VP8LReadBits(puVar5,1);
    iVar4 = VP8LReadBits(puVar5,1);
    if (iVar4 == 0) {
      uVar6 = 1;
    }
    else {
      uVar6 = 8;
    }
    local_64 = VP8LReadBits(puVar5,uVar6);
    local_5c = 0;
    local_54[0] = iVar3;
    if (iVar3 + 1 == 2) {
      local_60 = VP8LReadBits(puVar5,8);
      local_58 = 1;
      local_54[1] = iVar3;
    }
    local_84 = HuffmanTreeBuildExplicit(param_3,local_54,&local_5c,&local_64,param_1,iVar3 + 1);
  }
  if ((local_84 == 0) || (param_2[0xf] != 0)) {
    bVar2 = false;
  }
  else {
    bVar2 = true;
  }
  if (!bVar2) {
    *param_2 = 3;
  }
  return bVar2;
}

// ---- FUN_0074f884  @ 0x74f884
void FUN_0074f884(void *param_1,int param_2)

{
  int local_14;
  int local_10;
  
  if (param_1 != (void *)0x0) {
    for (local_14 = 0; local_14 < param_2; local_14 = local_14 + 1) {
      for (local_10 = 0; local_10 < 5; local_10 = local_10 + 1) {
        HuffmanTreeRelease((int)param_1 + local_10 * 0xc + local_14 * 0x3c);
      }
    }
    free(param_1);
  }
  return;
}

// ---- FUN_0074f8f8  @ 0x74f8f8
undefined4
FUN_0074f8f8(undefined4 *param_1,undefined4 param_2,undefined4 param_3,uint param_4,int param_5)

{
  int iVar1;
  void *local_40;
  int local_3c;
  int local_38;
  int local_34;
  int local_30;
  uint local_2c;
  undefined4 *local_28;
  undefined4 *local_24;
  int local_20;
  int local_1c;
  int local_18;
  int local_14;
  uint local_10;
  int local_c;
  
  local_28 = param_1 + 8;
  local_24 = param_1 + 0x14;
  local_40 = (void *)0x0;
  local_34 = 0;
  local_30 = 1;
  if ((param_5 != 0) && (iVar1 = VP8LReadBits(local_28,1), iVar1 != 0)) {
    local_20 = VP8LReadBits(local_28,3);
    local_20 = local_20 + 2;
    local_1c = FUN_0074f0fc(param_2,local_20);
    local_18 = FUN_0074f0fc(param_3,local_20);
    local_14 = local_18 * local_1c;
    iVar1 = FUN_00750e70(local_1c,local_18,0,param_1,&local_40);
    if (iVar1 == 0) {
      *param_1 = 3;
      goto LAB_0074faea;
    }
    local_24[4] = local_20;
    for (local_3c = 0; local_3c < local_14; local_3c = local_3c + 1) {
      local_10 = *(uint *)((int)local_40 + local_3c * 4) >> 8 & 0xffff;
      *(uint *)((int)local_40 + local_3c * 4) = local_10;
      if (local_30 <= (int)local_10) {
        local_30 = local_10 + 1;
      }
    }
  }
  if (local_28[7] == 0) {
    if (0x10000 < local_30) {
      __assert2("../libwebp/src/dec/vp8l.c",0x154,"ReadHuffmanCodes","num_htree_groups <= 0x10000");
    }
    local_34 = WebPSafeCalloc(local_30,local_30 >> 0x1f,0x3c);
    if (local_34 != 0) {
      local_3c = 0;
      do {
        if (local_30 <= local_3c) {
          local_24[6] = local_40;
          local_24[7] = local_30;
          local_24[8] = local_34;
          return 1;
        }
        local_c = local_34 + local_3c * 0x3c;
        for (local_38 = 0; local_38 < 5; local_38 = local_38 + 1) {
          local_2c = (uint)*(ushort *)(&DAT_00870a60 + local_38 * 2);
          if ((local_38 == 0) && (0 < (int)param_4)) {
            local_2c = local_2c + (1 << (param_4 & 0xff));
          }
          iVar1 = FUN_0074f6c0(local_2c,param_1,local_c + local_38 * 0xc);
          if (iVar1 == 0) goto LAB_0074faea;
        }
        local_3c = local_3c + 1;
      } while( true );
    }
    *param_1 = 1;
  }
LAB_0074faea:
  free(local_40);
  FUN_0074f884(local_34,local_30);
  return 0;
}

// ---- FUN_0074fb14  @ 0x74fb14
undefined4 FUN_0074fb14(undefined4 *param_1,int param_2)

{
  longlong lVar1;
  uint uVar2;
  int iVar3;
  int iVar4;
  uint uVar5;
  undefined4 uVar6;
  uint uVar7;
  undefined4 uVar8;
  undefined4 uVar9;
  
  uVar6 = *(undefined4 *)(param_2 + 0xc);
  uVar7 = *(uint *)(param_2 + 0x60);
  uVar8 = *(undefined4 *)(param_2 + 0x10);
  uVar9 = *(undefined4 *)(param_2 + 100);
  iVar4 = (int)((ulonglong)uVar7 * 8);
  lVar1 = (ulonglong)uVar7 * 4 + CONCAT44(((int)uVar7 >> 0x1f) * 4,iVar4);
  uVar2 = (uint)lVar1;
  uVar5 = uVar2 + 0x14;
  iVar3 = WebPSafeCalloc(uVar5 * 4,
                         uVar5 >> 0x1e |
                         (((int)uVar7 >> 0x1f) * 8 + (int)((ulonglong)uVar7 * 8 >> 0x20) +
                          (int)((ulonglong)lVar1 >> 0x20) + (uint)(0xffffffeb < uVar2)) * 4,1);
  if (iVar3 == 0) {
    *param_1 = 1;
    uVar6 = 0;
  }
  else {
    if (param_1[0x33] != 0) {
      __assert2("../libwebp/src/dec/vp8l.c",0x189,"AllocateAndInitRescaler",
                "dec->rescaler_memory == NULL");
    }
    param_1[0x33] = iVar3;
    param_1[0x34] = iVar3;
    WebPRescalerInit(param_1[0x34],uVar6,uVar8,iVar3 + 0x50 + iVar4 * 4,uVar7,uVar9,0,4,uVar6,uVar7,
                     uVar8,uVar9,iVar3 + 0x50);
    uVar6 = 1;
  }
  return uVar6;
}

// ---- FUN_0074fc80  @ 0x74fc80
int FUN_0074fc80(int param_1,undefined4 param_2,int param_3,int param_4)

{
  int iVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 local_18;
  
  uVar2 = *(undefined4 *)(param_1 + 0x3c);
  uVar3 = *(undefined4 *)(param_1 + 0x34);
  local_18 = 0;
  while (iVar1 = FUN_0074efbc(param_1), iVar1 != 0) {
    WebPRescalerExportRow(param_1);
    VP8LConvertFromBGRA(uVar2,uVar3,param_2,param_4 + param_3 * local_18);
    local_18 = local_18 + 1;
  }
  return local_18;
}

// ---- FUN_0074fcdc  @ 0x74fcdc
int FUN_0074fcdc(int param_1,int param_2,int param_3,int param_4,int param_5,int param_6)

{
  int iVar1;
  undefined4 uVar2;
  undefined4 local_20;
  undefined4 local_1c;
  
  uVar2 = **(undefined4 **)(param_1 + 0x10);
  local_20 = 0;
  local_1c = 0;
  while (local_20 < param_4) {
    iVar1 = WebPRescalerImport(*(undefined4 *)(param_1 + 0xd0),param_4 - local_20,
                               param_2 + param_3 * local_20,param_3);
    local_20 = local_20 + iVar1;
    iVar1 = FUN_0074fc80(*(undefined4 *)(param_1 + 0xd0),uVar2,param_6,param_5 + param_6 * local_1c)
    ;
    local_1c = local_1c + iVar1;
  }
  return local_1c;
}

// ---- FUN_0074fd68  @ 0x74fd68
int FUN_0074fd68(undefined4 param_1,int param_2,int param_3,undefined4 param_4,int param_5,
                int param_6,int param_7)

{
  bool bVar1;
  undefined4 local_14;
  undefined4 local_10;
  undefined4 local_c;
  
  local_14 = param_5;
  local_c = param_6;
  local_10 = param_2;
  while (bVar1 = 0 < local_14, local_14 = local_14 + -1, bVar1) {
    VP8LConvertFromBGRA(local_10,param_4,param_1,local_c);
    local_10 = local_10 + param_3;
    local_c = local_c + param_7;
  }
  return param_5;
}

// ---- FUN_0074fdc0  @ 0x74fdc0
void FUN_0074fdc0(int param_1,uint param_2,uint param_3,int param_4)

{
  undefined1 uVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  uint uVar7;
  uint uVar8;
  uint uVar9;
  int iVar10;
  undefined4 local_64;
  undefined4 local_60;
  undefined4 local_5c;
  
  iVar4 = *(int *)(param_4 + 0x10);
  iVar5 = *(int *)(param_4 + 0x20);
  for (local_64 = 0; local_64 < (int)param_2; local_64 = local_64 + 1) {
    uVar7 = *(uint *)(param_1 + local_64 * 4);
    uVar1 = FUN_0074f15c(uVar7 >> 0x10 & 0xff,uVar7 >> 8 & 0xff,uVar7 & 0xff);
    *(undefined1 *)(iVar4 + param_3 * iVar5 + local_64) = uVar1;
  }
  iVar4 = *(int *)(param_4 + 0x14) + *(int *)(param_4 + 0x24) * ((int)param_3 >> 1);
  iVar5 = *(int *)(param_4 + 0x18) + *(int *)(param_4 + 0x28) * ((int)param_3 >> 1);
  for (local_60 = 0; local_60 < (int)param_2 >> 1; local_60 = local_60 + 1) {
    uVar7 = *(uint *)(param_1 + local_60 * 8);
    uVar8 = *(uint *)(param_1 + local_60 * 8 + 4);
    iVar10 = (uVar7 >> 0xf & 0x1fe) + (uVar8 >> 0xf & 0x1fe);
    iVar3 = (uVar7 >> 7 & 0x1fe) + (uVar8 >> 7 & 0x1fe);
    iVar6 = (uVar7 & 0xff) * 2 + (uVar8 & 0xff) * 2;
    if ((param_3 & 1) == 0) {
      uVar1 = FUN_0074f1a0(iVar10,iVar3,iVar6);
      *(undefined1 *)(iVar4 + local_60) = uVar1;
      uVar1 = FUN_0074f1e4(iVar10,iVar3,iVar6);
      *(undefined1 *)(iVar5 + local_60) = uVar1;
    }
    else {
      iVar2 = FUN_0074f1a0(iVar10,iVar3,iVar6);
      iVar10 = FUN_0074f1e4(iVar10,iVar3,iVar6);
      *(char *)(iVar4 + local_60) =
           (char)((int)((uint)*(byte *)(iVar4 + local_60) + iVar2 + 1) >> 1);
      *(char *)(iVar5 + local_60) =
           (char)((int)((uint)*(byte *)(iVar5 + local_60) + iVar10 + 1) >> 1);
    }
  }
  if ((param_2 & 1) != 0) {
    uVar7 = *(uint *)(param_1 + local_60 * 8);
    uVar8 = uVar7 >> 0xe & 0x3fc;
    uVar9 = uVar7 >> 6 & 0x3fc;
    iVar10 = (uVar7 & 0xff) << 2;
    if ((param_3 & 1) == 0) {
      uVar1 = FUN_0074f1a0(uVar8,uVar9,iVar10);
      *(undefined1 *)(iVar4 + local_60) = uVar1;
      uVar1 = FUN_0074f1e4(uVar8,uVar9,iVar10);
      *(undefined1 *)(iVar5 + local_60) = uVar1;
    }
    else {
      iVar3 = FUN_0074f1a0(uVar8,uVar9,iVar10);
      iVar10 = FUN_0074f1e4(uVar8,uVar9,iVar10);
      *(char *)(iVar4 + local_60) =
           (char)((int)((uint)*(byte *)(iVar4 + local_60) + iVar3 + 1) >> 1);
      *(char *)(iVar5 + local_60) =
           (char)((int)((uint)*(byte *)(iVar5 + local_60) + iVar10 + 1) >> 1);
    }
  }
  if (*(int *)(param_4 + 0x1c) != 0) {
    iVar4 = *(int *)(param_4 + 0x1c);
    iVar5 = *(int *)(param_4 + 0x2c);
    for (local_5c = 0; local_5c < (int)param_2; local_5c = local_5c + 1) {
      *(char *)(iVar4 + param_3 * iVar5 + local_5c) =
           (char)((uint)*(undefined4 *)(param_1 + local_5c * 4) >> 0x18);
    }
  }
  return;
}
