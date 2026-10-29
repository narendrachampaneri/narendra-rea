// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 70 functions

// ---- FUN_00717a48  @ 0x717a48
void FUN_00717a48(int param_1)

{
  undefined4 uVar1;
  int iVar2;
  int iVar3;
  undefined1 *puVar4;
  undefined1 *puVar5;
  int iVar6;
  int iVar7;
  int iVar8;
  int iVar9;
  int iVar10;
  undefined1 *puVar11;
  int local_3c;
  int local_38;
  undefined4 local_34;
  int local_30;
  int *local_2c;
  
  iVar3 = *(int *)(param_1 + 0x1e0);
  if (*(int *)(param_1 + 0x58) == 1) {
    *(undefined4 *)(iVar3 + 0x1c) = 1;
    local_38 = 0x1fe;
  }
  else {
    *(undefined4 *)(iVar3 + 0x1c) = 0;
    local_38 = 0;
  }
  uVar1 = (**(code **)(*(int *)(param_1 + 4) + 8))
                    (param_1,1,local_38 + 0x100,*(undefined4 *)(param_1 + 0x78));
  local_34 = *(undefined4 *)(iVar3 + 0x14);
  *(undefined4 *)(iVar3 + 0x18) = uVar1;
  if (0 < *(int *)(param_1 + 0x78)) {
    local_2c = (int *)(iVar3 + 0x1c);
    local_3c = 0;
    local_30 = 0;
    do {
      local_2c = local_2c + 1;
      iVar6 = *local_2c;
      local_34 = __divsi3(local_34,iVar6);
      if (local_38 != 0) {
        *(int *)(*(int *)(iVar3 + 0x18) + local_3c) =
             *(int *)(*(int *)(iVar3 + 0x18) + local_3c) + 0xff;
      }
      iVar10 = (iVar6 + -1) * 2;
      iVar8 = 0;
      iVar9 = 0;
      puVar11 = *(undefined1 **)(*(int *)(iVar3 + 0x18) + local_3c);
      iVar2 = __divsi3(iVar6 + 0xfe,iVar10);
      do {
        if (iVar2 < iVar8) {
          iVar9 = iVar9 + 1;
          iVar7 = iVar9 * 0x1fe + iVar6 + 0xfe;
          while( true ) {
            iVar2 = __divsi3(iVar7,iVar10);
            iVar7 = iVar7 + 0x1fe;
            if (iVar8 <= iVar2) break;
            iVar9 = iVar9 + 1;
          }
        }
        puVar11[iVar8] = (char)iVar9 * (char)local_34;
        iVar8 = iVar8 + 1;
      } while (iVar8 != 0x100);
      if (local_38 != 0) {
        puVar4 = puVar11 + 0xff;
        puVar5 = puVar11;
        do {
          puVar5 = puVar5 + -1;
          *puVar5 = *puVar11;
          puVar4 = puVar4 + 1;
          *puVar4 = puVar11[0xff];
        } while (puVar5 != puVar11 + -0xff);
      }
      local_30 = local_30 + 1;
      local_3c = local_3c + 4;
    } while (local_30 < *(int *)(param_1 + 0x78));
  }
  return;
}

// ---- FUN_00717d14  @ 0x717d14
void FUN_00717d14(int param_1)

{
  undefined4 uVar1;
  int iVar2;
  undefined4 *puVar3;
  int iVar4;
  
  iVar4 = *(int *)(param_1 + 0x70);
  if (0 < *(int *)(param_1 + 0x78)) {
    puVar3 = (undefined4 *)(*(int *)(param_1 + 0x1e0) + 0x40);
    iVar2 = 0;
    do {
      iVar2 = iVar2 + 1;
      uVar1 = (**(code **)(*(int *)(param_1 + 4) + 4))(param_1,1,(iVar4 + 2) * 2);
      puVar3 = puVar3 + 1;
      *puVar3 = uVar1;
    } while (iVar2 < *(int *)(param_1 + 0x78));
  }
  return;
}

// ---- FUN_00717fac  @ 0x717fac
void FUN_00717fac(int *param_1)

{
  byte *pbVar1;
  undefined4 uVar2;
  int *piVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  int *piVar7;
  undefined4 *puVar8;
  int iVar9;
  undefined4 *puVar10;
  undefined1 *puVar11;
  undefined4 *local_3c;
  undefined1 *local_30;
  
  iVar6 = param_1[0x78];
  param_1[0x22] = *(int *)(iVar6 + 0x10);
  param_1[0x21] = *(int *)(iVar6 + 0x14);
  iVar4 = param_1[0x16];
  if (iVar4 == 1) {
    if (param_1[0x1e] == 3) {
      *(undefined1 **)(iVar6 + 4) = &LAB_00717c54_1;
    }
    else {
      *(undefined4 *)(iVar6 + 4) = 0x718281;
    }
    *(undefined4 *)(iVar6 + 0x30) = 0;
    if (*(int *)(iVar6 + 0x1c) == 0) {
      FUN_00717a48(param_1);
    }
    if ((*(int *)(iVar6 + 0x34) == 0) && (iVar4 = param_1[0x78], 0 < param_1[0x1e])) {
      local_30 = &DAT_00855110;
      iVar6 = 0;
      piVar7 = (int *)(iVar4 + 0x1c);
      do {
        iVar9 = piVar7[1];
        if (iVar6 == 0) {
LAB_0071804c:
          local_3c = (undefined4 *)(**(code **)param_1[1])(param_1,1,0x400);
          puVar11 = local_30;
          puVar8 = local_3c;
          do {
            iVar5 = 0;
            puVar10 = puVar8;
            do {
              pbVar1 = puVar11 + iVar5;
              iVar5 = iVar5 + 1;
              uVar2 = __divsi3((uint)*pbVar1 * -0x1fe + 0xfe01,(iVar9 + -1) * 0x200);
              *puVar10 = uVar2;
              puVar10 = puVar10 + 1;
            } while (iVar5 != 0x10);
            puVar8 = puVar8 + 0x10;
            puVar11 = puVar11 + 0x10;
          } while (puVar8 != local_3c + 0x100);
        }
        else {
          if (iVar9 == *(int *)(iVar4 + 0x20)) {
            iVar5 = 0;
          }
          else {
            iVar5 = 0;
            piVar3 = (int *)(iVar4 + 0x20);
            do {
              iVar5 = iVar5 + 1;
              if (iVar5 == iVar6) goto LAB_0071804c;
              piVar3 = piVar3 + 1;
            } while (iVar9 != *piVar3);
          }
          local_3c = *(undefined4 **)(iVar4 + iVar5 * 4 + 0x34);
          if (local_3c == (undefined4 *)0x0) goto LAB_0071804c;
        }
        iVar6 = iVar6 + 1;
        piVar7[6] = (int)local_3c;
        piVar7 = piVar7 + 1;
      } while (iVar6 < param_1[0x1e]);
    }
  }
  else if (iVar4 == 0) {
    if (param_1[0x1e] == 3) {
      *(undefined1 **)(iVar6 + 4) = &LAB_00717be4_1;
    }
    else {
      *(undefined1 **)(iVar6 + 4) = &LAB_00717b58_1;
    }
  }
  else if (iVar4 == 2) {
    *(undefined4 *)(iVar6 + 4) = 0x71812d;
    *(undefined4 *)(iVar6 + 0x54) = 0;
    if (*(int *)(iVar6 + 0x44) == 0) {
      FUN_00717d14();
    }
    iVar4 = param_1[0x1c];
    if (0 < param_1[0x1e]) {
      puVar8 = (undefined4 *)(iVar6 + 0x40);
      iVar6 = 0;
      do {
        puVar8 = puVar8 + 1;
        iVar6 = iVar6 + 1;
        memset((void *)*puVar8,0,(iVar4 + 2) * 2);
      } while (iVar6 < param_1[0x1e]);
    }
  }
  else {
    *(undefined4 *)(*param_1 + 0x14) = 0x31;
    (**(code **)*param_1)();
  }
  return;
}

// ---- FUN_0071812c  @ 0x71812c
void FUN_0071812c(int param_1,int param_2,int param_3,int param_4)

{
  byte bVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  uint uVar5;
  int iVar6;
  int iVar7;
  short *psVar8;
  size_t __n;
  char *pcVar9;
  byte *pbVar10;
  size_t sVar11;
  short sVar12;
  int iVar13;
  int iVar14;
  int iVar15;
  int iVar16;
  int iVar17;
  int local_6c;
  int local_64;
  short *local_60;
  int local_58;
  int local_50;
  int local_40;
  
  iVar4 = *(int *)(param_1 + 0x1e0);
  iVar7 = *(int *)(param_1 + 0x78);
  __n = *(size_t *)(param_1 + 0x70);
  iVar2 = *(int *)(param_1 + 0x14c);
  if (0 < param_4) {
    local_50 = 0;
    local_40 = 0;
    do {
      memset(*(void **)(param_3 + local_50),0,__n);
      if (0 < iVar7) {
        local_64 = 0;
        local_58 = iVar4;
        do {
          pbVar10 = (byte *)(*(int *)(param_2 + local_50) + local_64);
          pcVar9 = *(char **)(param_3 + local_50);
          if (*(int *)(iVar4 + 0x54) == 0) {
            iVar15 = 1;
            local_60 = *(short **)(local_58 + 0x44);
            local_6c = iVar7;
          }
          else {
            iVar15 = -1;
            pbVar10 = pbVar10 + (__n - 1) * iVar7;
            pcVar9 = pcVar9 + (__n - 1);
            local_60 = (short *)(*(int *)(local_58 + 0x44) + (__n + 1) * 2);
            local_6c = -iVar7;
          }
          iVar16 = *(int *)(*(int *)(iVar4 + 0x18) + local_64 * 4);
          iVar17 = *(int *)(*(int *)(iVar4 + 0x10) + local_64 * 4);
          sVar12 = 0;
          if (__n != 0) {
            iVar13 = 0;
            iVar3 = 0;
            psVar8 = local_60;
            sVar11 = __n;
            iVar14 = 0;
            do {
              uVar5 = (uint)*(byte *)(iVar2 + (iVar3 + 8 + (int)psVar8[iVar15] >> 4) +
                                     (uint)*pbVar10);
              bVar1 = *(byte *)(iVar16 + uVar5);
              *pcVar9 = bVar1 + *pcVar9;
              pcVar9 = pcVar9 + iVar15;
              iVar6 = uVar5 - *(byte *)(iVar17 + (uint)bVar1);
              sVar11 = sVar11 - 1;
              *psVar8 = (short)iVar13 + (short)iVar6 * 3;
              iVar3 = iVar6 * 7;
              iVar13 = iVar6 * 5 + iVar14;
              psVar8 = psVar8 + iVar15;
              pbVar10 = pbVar10 + local_6c;
              iVar14 = iVar6;
            } while (sVar11 != 0);
            sVar12 = (short)iVar13;
            local_60 = (short *)(__n * iVar15 * 2 + (int)local_60);
          }
          *local_60 = sVar12;
          local_64 = local_64 + 1;
          local_58 = local_58 + 4;
        } while (local_64 != iVar7);
      }
      iVar15 = 1 - *(uint *)(iVar4 + 0x54);
      if (1 < *(uint *)(iVar4 + 0x54)) {
        iVar15 = 0;
      }
      *(int *)(iVar4 + 0x54) = iVar15;
      local_40 = local_40 + 1;
      local_50 = local_50 + 4;
    } while (local_40 != param_4);
  }
  return;
}

// ---- FUN_00718280  @ 0x718280
void FUN_00718280(int param_1,int param_2,int param_3,int param_4)

{
  int iVar1;
  byte bVar2;
  int iVar3;
  byte *pbVar4;
  int iVar5;
  uint uVar6;
  int iVar7;
  int iVar8;
  size_t sVar9;
  size_t __n;
  int iVar10;
  int iVar11;
  int iVar12;
  int iVar13;
  int *piVar14;
  int local_38;
  
  iVar5 = *(int *)(param_1 + 0x1e0);
  iVar10 = *(int *)(param_1 + 0x78);
  __n = *(size_t *)(param_1 + 0x70);
  if (0 < param_4) {
    iVar11 = 0;
    local_38 = 0;
    do {
      memset(*(void **)(param_3 + iVar11),0,__n);
      iVar7 = *(int *)(iVar5 + 0x30);
      if (0 < iVar10) {
        iVar13 = 0;
        piVar14 = (int *)(iVar5 + 0x30);
        do {
          iVar3 = *(int *)(param_3 + iVar11);
          iVar12 = *(int *)(*(int *)(iVar5 + 0x18) + iVar13 * 4);
          piVar14 = piVar14 + 1;
          iVar8 = *piVar14;
          if (__n != 0) {
            sVar9 = 0;
            pbVar4 = (byte *)(*(int *)(param_2 + iVar11) + iVar13);
            uVar6 = 0;
            do {
              iVar1 = uVar6 * 4;
              bVar2 = *pbVar4;
              uVar6 = uVar6 + 1 & 0xf;
              pbVar4 = pbVar4 + iVar10;
              *(char *)(iVar3 + sVar9) =
                   *(char *)(iVar3 + sVar9) +
                   *(char *)(*(int *)(iVar8 + iVar7 * 0x40 + iVar1) + iVar12 + (uint)bVar2);
              sVar9 = sVar9 + 1;
            } while (__n != sVar9);
          }
          iVar13 = iVar13 + 1;
        } while (iVar13 != iVar10);
      }
      iVar11 = iVar11 + 4;
      *(uint *)(iVar5 + 0x30) = iVar7 + 1U & 0xf;
      local_38 = local_38 + 1;
    } while (local_38 != param_4);
  }
  return;
}

// ---- FUN_0071839c  @ 0x71839c
void FUN_0071839c(int param_1,undefined4 *param_2)

{
  short sVar1;
  int iVar2;
  int *piVar3;
  short *psVar4;
  short *psVar5;
  int iVar6;
  int iVar7;
  int iVar8;
  int iVar9;
  int iVar10;
  int iVar11;
  int iVar12;
  int iVar13;
  short *psVar14;
  int iVar15;
  int *piVar16;
  int iVar17;
  int iVar18;
  
  iVar6 = *(int *)(*(int *)(param_1 + 0x1e0) + 0x18);
  psVar4 = (short *)*param_2;
  iVar17 = param_2[1];
  iVar13 = param_2[2];
  iVar18 = param_2[3];
  iVar12 = param_2[4];
  iVar2 = param_2[5];
  psVar14 = psVar4;
  if ((int)psVar4 < iVar17) {
    iVar15 = 0;
    iVar7 = (iVar12 + iVar13 * 0x20) * 2;
    iVar10 = iVar7;
    iVar11 = iVar13;
    do {
      for (; iVar11 <= iVar18; iVar11 = iVar11 + 1) {
        iVar8 = *(int *)(iVar6 + (int)psVar4 * 4 + iVar15);
        if (iVar12 <= iVar2) {
          psVar5 = (short *)(iVar8 + iVar10);
          sVar1 = *(short *)(iVar8 + iVar10);
          iVar8 = iVar12;
          while( true ) {
            if (sVar1 != 0) {
              if ((int)psVar14 < iVar17) {
                psVar5 = psVar14;
              }
              *param_2 = psVar14;
              if (iVar17 <= (int)psVar14) goto LAB_00718418;
              goto LAB_00718590;
            }
            iVar8 = iVar8 + 1;
            if (iVar2 < iVar8) break;
            psVar5 = psVar5 + 1;
            sVar1 = *psVar5;
          }
        }
        iVar10 = iVar10 + 0x40;
      }
      psVar14 = (short *)((int)psVar14 + 1);
      iVar15 = iVar15 + 4;
      psVar5 = psVar4;
      iVar10 = iVar7;
      iVar11 = iVar13;
    } while ((int)psVar14 <= iVar17);
LAB_00718590:
    psVar14 = psVar5;
    iVar8 = 0;
    iVar10 = iVar7;
    iVar11 = iVar13;
    iVar15 = iVar17;
    do {
      for (; iVar11 <= iVar18; iVar11 = iVar11 + 1) {
        iVar9 = *(int *)(iVar6 + iVar17 * 4 + iVar8);
        if (iVar12 <= iVar2) {
          psVar4 = (short *)(iVar9 + iVar10);
          sVar1 = *(short *)(iVar9 + iVar10);
          iVar9 = iVar12;
          while( true ) {
            if (sVar1 != 0) {
              param_2[1] = iVar15;
              iVar17 = iVar15;
              goto LAB_00718418;
            }
            iVar9 = iVar9 + 1;
            if (iVar2 < iVar9) break;
            psVar4 = psVar4 + 1;
            sVar1 = *psVar4;
          }
        }
        iVar10 = iVar10 + 0x40;
      }
      iVar15 = iVar15 + -1;
      iVar8 = iVar8 + -4;
      iVar10 = iVar7;
      iVar11 = iVar13;
    } while ((int)psVar14 <= iVar15);
  }
LAB_00718418:
  iVar10 = iVar13;
  if (iVar13 < iVar18) {
    iVar11 = (iVar12 + iVar13 * 0x20) * 2;
    piVar3 = (int *)(iVar6 + (int)psVar14 * 4);
    psVar4 = psVar14;
    piVar16 = piVar3;
    do {
      for (; (int)psVar4 <= iVar17; psVar4 = (short *)((int)psVar4 + 1)) {
        if (iVar12 <= iVar2) {
          psVar5 = (short *)(*piVar16 + iVar11);
          sVar1 = *(short *)(*piVar16 + iVar11);
          iVar7 = iVar12;
          while( true ) {
            if (sVar1 != 0) {
              if (iVar10 < iVar18) {
                iVar13 = iVar10;
              }
              param_2[2] = iVar10;
              if (iVar18 <= iVar10) goto LAB_0071846a;
              goto LAB_007185e2;
            }
            iVar7 = iVar7 + 1;
            if (iVar2 < iVar7) break;
            psVar5 = psVar5 + 1;
            sVar1 = *psVar5;
          }
        }
        piVar16 = piVar16 + 1;
      }
      iVar10 = iVar10 + 1;
      iVar11 = iVar11 + 0x40;
      psVar4 = psVar14;
      piVar16 = piVar3;
    } while (iVar10 <= iVar18);
LAB_007185e2:
    iVar10 = iVar13;
    iVar11 = (iVar12 + iVar18 * 0x20) * 2;
    psVar4 = psVar14;
    piVar16 = piVar3;
    iVar13 = iVar18;
    do {
      for (; (int)psVar4 <= iVar17; psVar4 = (short *)((int)psVar4 + 1)) {
        if (iVar12 <= iVar2) {
          psVar5 = (short *)(*piVar16 + iVar11);
          sVar1 = *(short *)(*piVar16 + iVar11);
          iVar7 = iVar12;
          while( true ) {
            if (sVar1 != 0) {
              param_2[3] = iVar13;
              iVar18 = iVar13;
              goto LAB_0071846a;
            }
            iVar7 = iVar7 + 1;
            if (iVar2 < iVar7) break;
            psVar5 = psVar5 + 1;
            sVar1 = *psVar5;
          }
        }
        piVar16 = piVar16 + 1;
      }
      iVar13 = iVar13 + -1;
      iVar11 = iVar11 + -0x40;
      psVar4 = psVar14;
      piVar16 = piVar3;
    } while (iVar10 <= iVar13);
  }
LAB_0071846a:
  iVar13 = iVar12;
  if (iVar12 < iVar2) {
    piVar3 = (int *)(iVar6 + (int)psVar14 * 4);
    iVar11 = (iVar10 * 0x20 + iVar12) * 2;
    psVar4 = psVar14;
    piVar16 = piVar3;
    do {
      for (; (int)psVar4 <= iVar17; psVar4 = (short *)((int)psVar4 + 1)) {
        if (iVar10 <= iVar18) {
          psVar5 = (short *)(*piVar16 + iVar11);
          sVar1 = *(short *)(*piVar16 + iVar11);
          iVar7 = iVar10;
          while( true ) {
            if (sVar1 != 0) {
              if (iVar13 < iVar2) {
                iVar12 = iVar13;
              }
              param_2[4] = iVar13;
              if (iVar2 <= iVar13) goto LAB_007184bc;
              goto LAB_0071854a;
            }
            iVar7 = iVar7 + 1;
            if (iVar18 < iVar7) break;
            psVar5 = psVar5 + 0x20;
            sVar1 = *psVar5;
          }
        }
        piVar16 = piVar16 + 1;
      }
      iVar13 = iVar13 + 1;
      iVar11 = iVar11 + 2;
      psVar4 = psVar14;
      piVar16 = piVar3;
    } while (iVar13 <= iVar2);
LAB_0071854a:
    iVar13 = iVar12;
    iVar11 = (iVar10 * 0x20 + iVar2) * 2;
    psVar4 = psVar14;
    piVar16 = piVar3;
    iVar12 = iVar2;
    do {
      for (; (int)psVar4 <= iVar17; psVar4 = (short *)((int)psVar4 + 1)) {
        if (iVar10 <= iVar18) {
          psVar5 = (short *)(*piVar16 + iVar11);
          sVar1 = *(short *)(*piVar16 + iVar11);
          iVar7 = iVar10;
          while( true ) {
            if (sVar1 != 0) {
              param_2[5] = iVar12;
              iVar2 = iVar12;
              goto LAB_007184bc;
            }
            iVar7 = iVar7 + 1;
            if (iVar18 < iVar7) break;
            psVar5 = psVar5 + 0x20;
            sVar1 = *psVar5;
          }
        }
        piVar16 = piVar16 + 1;
      }
      iVar12 = iVar12 + -1;
      iVar11 = iVar11 + -2;
      psVar4 = psVar14;
      piVar16 = piVar3;
    } while (iVar13 <= iVar12);
  }
LAB_007184bc:
  iVar7 = (iVar17 - (int)psVar14) * 0x10;
  iVar12 = (iVar18 - iVar10) * 0xc;
  iVar11 = (iVar2 - iVar13) * 8;
  param_2[6] = iVar11 * iVar11 + iVar12 * iVar12 + iVar7 * iVar7;
  if (iVar17 < (int)psVar14) {
    iVar12 = 0;
  }
  else {
    iVar12 = 0;
    piVar16 = (int *)(iVar6 + (int)psVar14 * 4);
    do {
      if (iVar10 <= iVar18) {
        psVar4 = (short *)(*piVar16 + (iVar13 + iVar10 * 0x20) * 2);
        iVar6 = iVar13;
        psVar5 = psVar4;
        iVar11 = iVar10;
        do {
          for (; iVar6 <= iVar2; iVar6 = iVar6 + 1) {
            if (*psVar4 != 0) {
              iVar12 = iVar12 + 1;
            }
            psVar4 = psVar4 + 1;
          }
          iVar11 = iVar11 + 1;
          psVar4 = psVar5 + 0x20;
          iVar6 = iVar13;
          psVar5 = psVar4;
        } while (iVar11 <= iVar18);
      }
      psVar14 = (short *)((int)psVar14 + 1);
      piVar16 = piVar16 + 1;
    } while ((int)psVar14 <= iVar17);
  }
  param_2[7] = iVar12;
  return;
}

// ---- FUN_0071867c  @ 0x71867c
void FUN_0071867c(int param_1,int param_2,int param_3,int param_4)

{
  byte bVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  uint uVar6;
  int iVar7;
  short *psVar8;
  int *piVar9;
  int iVar10;
  int iVar11;
  int *piVar12;
  int iVar13;
  int iVar14;
  int iVar15;
  int iVar16;
  int iVar17;
  int iVar18;
  byte *pbVar19;
  int iVar20;
  int iVar21;
  byte *pbVar22;
  byte *pbVar23;
  int iVar24;
  int *local_5fc;
  int local_5f8;
  int *local_5f0;
  byte *local_5e4;
  byte *local_5e0;
  int iStack_5b0;
  int local_5ac [128];
  int aiStack_3ac [128];
  byte local_1ac [256];
  byte local_ac [128];
  int local_2c [2];
  
  iVar24 = (param_4 >> 2) * 0x20;
  iVar15 = (param_3 >> 3) * 0x20;
  iVar16 = iVar15 + 2;
  local_2c[0] = __stack_chk_guard;
  iVar15 = iVar15 + 0x1e;
  iVar14 = (param_2 >> 2) * 0x20;
  iVar21 = iVar14 + 4;
  iVar14 = iVar14 + 0x1c;
  iVar3 = *(int *)(*(int *)(param_1 + 0x1e0) + 0x18);
  iVar4 = iVar24 + 4;
  iVar24 = iVar24 + 0x1c;
  iVar13 = *(int *)(param_1 + 0x84);
  if (iVar13 < 1) {
    iVar14 = 0;
  }
  else {
    iVar5 = 0x7fffffff;
    piVar9 = *(int **)(param_1 + 0x88);
    iVar20 = piVar9[1];
    iVar17 = *piVar9;
    iVar10 = piVar9[2];
    iVar11 = 0;
LAB_00718790:
    do {
      uVar6 = (uint)*(byte *)(iVar17 + iVar11);
      if ((int)uVar6 < iVar21) {
        iVar7 = (uVar6 - iVar21) * 2;
        iVar18 = (uVar6 - iVar14) * 2;
        iVar7 = iVar7 * iVar7;
        iVar18 = iVar18 * iVar18;
LAB_00718742:
        uVar6 = (uint)*(byte *)(iVar20 + iVar11);
        if (iVar16 <= (int)uVar6) goto LAB_007187bc;
LAB_0071874a:
        iVar2 = (uVar6 - iVar16) * 3;
        iVar7 = iVar2 * iVar2 + iVar7;
        iVar2 = (uVar6 - iVar15) * 3;
        iVar18 = iVar2 * iVar2 + iVar18;
LAB_00718760:
        uVar6 = (uint)*(byte *)(iVar10 + iVar11);
        if (iVar4 <= (int)uVar6) goto LAB_007187e4;
LAB_0071876c:
        iVar7 = (uVar6 - iVar4) * (uVar6 - iVar4) + iVar7;
        iVar18 = (uVar6 - iVar24) * (uVar6 - iVar24) + iVar18;
      }
      else {
        if ((int)uVar6 <= iVar14) {
          iVar18 = iVar21;
          if ((int)uVar6 <= iVar14 + iVar21 >> 1) {
            iVar18 = iVar14;
          }
          iVar7 = 0;
          iVar18 = (uVar6 - iVar18) * 2;
          iVar18 = iVar18 * iVar18;
          goto LAB_00718742;
        }
        iVar7 = (uVar6 - iVar14) * 2;
        iVar18 = (uVar6 - iVar21) * 2;
        uVar6 = (uint)*(byte *)(iVar20 + iVar11);
        iVar7 = iVar7 * iVar7;
        iVar18 = iVar18 * iVar18;
        if ((int)uVar6 < iVar16) goto LAB_0071874a;
LAB_007187bc:
        if ((int)uVar6 <= iVar15) {
          iVar2 = iVar15;
          if (iVar15 + iVar16 >> 1 < (int)uVar6) {
            iVar2 = iVar16;
          }
          iVar2 = (uVar6 - iVar2) * 3;
          iVar18 = iVar2 * iVar2 + iVar18;
          goto LAB_00718760;
        }
        iVar2 = (uVar6 - iVar15) * 3;
        iVar7 = iVar2 * iVar2 + iVar7;
        iVar2 = (uVar6 - iVar16) * 3;
        iVar18 = iVar2 * iVar2 + iVar18;
        uVar6 = (uint)*(byte *)(iVar10 + iVar11);
        if ((int)uVar6 < iVar4) goto LAB_0071876c;
LAB_007187e4:
        if (iVar24 < (int)uVar6) {
          iVar18 = (uVar6 - iVar4) * (uVar6 - iVar4) + iVar18;
          local_5ac[iVar11] = (uVar6 - iVar24) * (uVar6 - iVar24) + iVar7;
          iVar11 = iVar11 + 1;
          if (iVar18 <= iVar5) {
            iVar5 = iVar18;
          }
          if (iVar11 == iVar13) break;
          goto LAB_00718790;
        }
        iVar2 = iVar24;
        if (iVar24 + iVar4 >> 1 < (int)uVar6) {
          iVar2 = iVar4;
        }
        iVar18 = (uVar6 - iVar2) * (uVar6 - iVar2) + iVar18;
      }
      if (iVar18 <= iVar5) {
        iVar5 = iVar18;
      }
      local_5ac[iVar11] = iVar7;
      iVar11 = iVar11 + 1;
    } while (iVar11 != iVar13);
    iVar14 = 0;
    piVar9 = &iStack_5b0;
    iVar15 = 0;
    do {
      piVar9 = piVar9 + 1;
      if (*piVar9 <= iVar5) {
        local_1ac[iVar14] = (byte)iVar15;
        iVar14 = iVar14 + 1;
      }
      iVar15 = iVar15 + 1;
    } while (iVar15 != iVar13);
  }
  local_5f0 = local_5ac;
  piVar9 = local_5f0;
  do {
    piVar12 = piVar9 + 1;
    *piVar9 = 0x7fffffff;
    piVar9 = piVar12;
  } while (piVar12 != aiStack_3ac);
  if (iVar14 != 0) {
    local_5e4 = local_1ac;
    do {
      pbVar19 = local_5e4 + 1;
      bVar1 = *local_5e4;
      uVar6 = (uint)bVar1;
      piVar9 = *(int **)(param_1 + 0x88);
      iVar15 = (iVar21 - (uint)*(byte *)(*piVar9 + uVar6)) * 2;
      iVar10 = iVar16 - (uint)*(byte *)(piVar9[1] + uVar6);
      local_5fc = local_5f0;
      iVar24 = iVar4 - (uint)*(byte *)(piVar9[2] + uVar6);
      iVar13 = iVar10 * 3;
      iVar10 = iVar10 * 0x48;
      iVar5 = iVar10 + 0x90;
      iVar11 = iVar15 * iVar15 + iVar13 * iVar13 + iVar24 * iVar24;
      local_5f8 = (iVar15 + 8) * 0x20;
      piVar9 = local_5f0;
      pbVar23 = local_ac;
      iVar13 = iVar5;
      iVar15 = iVar11;
      pbVar22 = local_ac;
      while( true ) {
        while( true ) {
          if (iVar11 < *piVar9) {
            *piVar9 = iVar11;
            *pbVar23 = bVar1;
          }
          iVar18 = 1;
          iVar7 = 4;
          iVar17 = (iVar24 + 4) * 0x10;
          iVar20 = iVar11;
          do {
            iVar20 = iVar20 + iVar17;
            iVar17 = iVar17 + 0x80;
            if (iVar20 < *(int *)((int)piVar9 + iVar7)) {
              *(int *)((int)piVar9 + iVar7) = iVar20;
              pbVar23[iVar18] = bVar1;
            }
            iVar18 = iVar18 + 1;
            iVar7 = iVar7 + 4;
          } while (iVar18 != 4);
          if (iVar13 == iVar10 + 0x870) break;
          iVar11 = iVar11 + iVar13;
          piVar9 = piVar9 + 4;
          pbVar23 = pbVar23 + 4;
          iVar13 = iVar13 + 0x120;
        }
        pbVar23 = pbVar22 + 0x20;
        piVar9 = local_5fc + 0x20;
        if (pbVar23 == (byte *)local_2c) break;
        iVar11 = local_5f8 + iVar15;
        local_5f8 = local_5f8 + 0x200;
        iVar13 = iVar5;
        local_5fc = piVar9;
        iVar15 = iVar11;
        pbVar22 = pbVar23;
      }
      local_5e4 = pbVar19;
    } while (pbVar19 != local_1ac + iVar14);
  }
  local_5e0 = local_ac;
  iVar4 = 0;
  do {
    iVar13 = 0;
    pbVar23 = local_5e0;
    do {
      iVar14 = 0;
      psVar8 = (short *)(*(int *)(iVar3 + (param_2 >> 2) * 0x10 + iVar4) +
                        iVar13 + ((param_3 >> 3) * 0x100 + (param_4 >> 2) * 4) * 2);
      do {
        pbVar22 = pbVar23 + iVar14;
        iVar14 = iVar14 + 1;
        *psVar8 = *pbVar22 + 1;
        psVar8 = psVar8 + 1;
      } while (iVar14 != 4);
      iVar13 = iVar13 + 0x40;
      pbVar23 = pbVar23 + 4;
    } while (iVar13 != 0x200);
    iVar4 = iVar4 + 4;
    local_5e0 = local_5e0 + 0x20;
  } while (iVar4 != 0x10);
  if (local_2c[0] == __stack_chk_guard) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

// ---- FUN_00718a20  @ 0x718a20
void FUN_00718a20(int param_1,int param_2,int param_3,int param_4)

{
  byte *pbVar1;
  byte *pbVar2;
  byte bVar3;
  short sVar4;
  int iVar5;
  byte *pbVar6;
  int iVar7;
  int iVar8;
  char *pcVar9;
  int iVar10;
  int iVar11;
  int iVar12;
  int local_3c;
  
  iVar5 = *(int *)(param_1 + 0x70);
  iVar11 = *(int *)(*(int *)(param_1 + 0x1e0) + 0x18);
  if (0 < param_4) {
    iVar12 = 0;
    local_3c = 0;
    do {
      pbVar6 = *(byte **)(param_2 + iVar12);
      pcVar9 = *(char **)(param_3 + iVar12);
      for (iVar10 = iVar5; iVar10 != 0; iVar10 = iVar10 + -1) {
        while( true ) {
          bVar3 = *pbVar6;
          pbVar1 = pbVar6 + 1;
          pbVar2 = pbVar6 + 2;
          pbVar6 = pbVar6 + 3;
          iVar7 = *(int *)(iVar11 + (uint)(bVar3 >> 3) * 4);
          iVar8 = (uint)(*pbVar2 >> 3) + (uint)(*pbVar1 >> 2) * 0x20;
          sVar4 = *(short *)(iVar7 + iVar8 * 2);
          if (sVar4 != 0) break;
          FUN_0071867c(param_1);
          iVar10 = iVar10 + -1;
          *pcVar9 = (char)*(undefined2 *)(iVar7 + iVar8 * 2) + -1;
          pcVar9 = pcVar9 + 1;
          if (iVar10 == 0) goto LAB_00718a9c;
        }
        *pcVar9 = (char)sVar4 + -1;
        pcVar9 = pcVar9 + 1;
      }
LAB_00718a9c:
      iVar12 = iVar12 + 4;
      local_3c = local_3c + 1;
    } while (local_3c != param_4);
  }
  return;
}

// ---- FUN_00718ab4  @ 0x718ab4
void FUN_00718ab4(int param_1,undefined4 *param_2,undefined4 *param_3,int param_4)

{
  int iVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  uint uVar5;
  int iVar6;
  short sVar7;
  int iVar8;
  short sVar9;
  int iVar10;
  int *piVar11;
  int iVar12;
  byte *pbVar13;
  int iVar14;
  int iVar15;
  short *psVar16;
  int iVar17;
  int iVar18;
  int iVar19;
  uint uVar20;
  int iVar21;
  uint uVar22;
  int iVar23;
  uint uVar24;
  short sVar25;
  short *psVar26;
  int local_a4;
  undefined1 *local_a0;
  int local_94;
  int local_90;
  int local_8c;
  int local_88;
  int local_84;
  int local_80;
  int local_7c;
  int local_5c;
  short *local_54;
  int local_44;
  undefined4 *local_40;
  undefined4 *local_3c;
  
  iVar1 = *(int *)(param_1 + 0x1e0);
  iVar10 = *(int *)(iVar1 + 0x18);
  iVar15 = *(int *)(param_1 + 0x70);
  iVar17 = *(int *)(param_1 + 0x14c);
  iVar2 = *(int *)(iVar1 + 0x28);
  piVar11 = *(int **)(param_1 + 0x88);
  iVar18 = *piVar11;
  iVar3 = piVar11[1];
  iVar12 = piVar11[2];
  if (0 < param_4) {
    local_44 = 0;
    local_40 = param_3;
    local_3c = param_2;
    do {
      pbVar13 = (byte *)*local_3c;
      local_a0 = (undefined1 *)*local_40;
      if (*(int *)(iVar1 + 0x24) == 0) {
        local_54 = *(short **)(iVar1 + 0x20);
        *(undefined4 *)(iVar1 + 0x24) = 1;
        local_7c = 3;
        local_5c = 1;
      }
      else {
        local_a0 = local_a0 + iVar15 + -1;
        pbVar13 = pbVar13 + (iVar15 + -1) * 3;
        local_54 = (short *)(*(int *)(iVar1 + 0x20) + (iVar15 + 1) * 6);
        *(undefined4 *)(iVar1 + 0x24) = 0;
        local_7c = -3;
        local_5c = -1;
      }
      sVar7 = 0;
      sVar9 = 0;
      sVar25 = 0;
      if (iVar15 != 0) {
        iVar14 = 0;
        iVar6 = 0;
        iVar8 = 0;
        local_94 = 0;
        local_90 = 0;
        iVar4 = 0;
        local_8c = 0;
        local_88 = 0;
        local_84 = 0;
        local_80 = 0;
        psVar16 = local_54;
        local_a4 = iVar15;
        while( true ) {
          psVar26 = psVar16 + local_7c;
          uVar20 = (uint)*(byte *)(iVar17 + *(int *)(iVar2 + (iVar6 + 8 + (int)psVar16[local_7c] >>
                                                             4) * 4) + (uint)*pbVar13);
          uVar22 = (uint)*(byte *)(iVar17 + *(int *)(iVar2 + (iVar8 + 8 +
                                                              (int)*(short *)((int)local_54 +
                                                                             iVar14 + (local_7c + 1)
                                                                                      * 2) >> 4) * 4
                                                    ) + (uint)pbVar13[1]);
          iVar6 = *(int *)(iVar10 + ((int)uVar20 >> 3) * 4);
          uVar24 = (uint)*(byte *)(iVar17 + *(int *)(iVar2 + (iVar4 + 8 +
                                                              (int)*(short *)((int)local_54 +
                                                                             iVar14 + (local_7c + 2)
                                                                                      * 2) >> 4) * 4
                                                    ) + (uint)pbVar13[2]);
          iVar4 = ((int)uVar24 >> 3) + ((int)uVar22 >> 2) * 0x20;
          uVar5 = (uint)*(ushort *)(iVar6 + iVar4 * 2);
          if (uVar5 == 0) {
            FUN_0071867c(param_1);
            uVar5 = (uint)*(ushort *)(iVar6 + iVar4 * 2);
          }
          iVar4 = uVar5 - 1;
          *local_a0 = (char)iVar4;
          iVar19 = uVar20 - *(byte *)(iVar18 + iVar4);
          iVar21 = uVar22 - *(byte *)(iVar3 + iVar4);
          iVar23 = uVar24 - *(byte *)(iVar12 + iVar4);
          *psVar16 = (short)iVar19 * 3 + (short)local_8c;
          local_8c = local_80 + iVar19 * 5;
          psVar26[1 - local_7c] = (short)iVar21 * 3 + (short)local_90;
          local_90 = iVar21 * 5 + local_84;
          psVar26[2 - local_7c] = (short)iVar23 * 3 + (short)local_94;
          local_94 = iVar23 * 5 + local_88;
          iVar14 = iVar14 + local_7c * 2;
          local_a4 = local_a4 + -1;
          if (local_a4 == 0) break;
          iVar4 = iVar23 * 7;
          iVar6 = iVar19 * 7;
          iVar8 = iVar21 * 7;
          pbVar13 = pbVar13 + local_7c;
          local_a0 = local_a0 + local_5c;
          psVar16 = psVar26;
          local_88 = iVar23;
          local_84 = iVar21;
          local_80 = iVar19;
        }
        local_54 = (short *)(iVar15 * local_7c * 2 + (int)local_54);
        sVar9 = (short)local_8c;
        sVar7 = (short)local_90;
        sVar25 = (short)local_94;
      }
      *local_54 = sVar9;
      local_54[1] = sVar7;
      local_54[2] = sVar25;
      local_44 = local_44 + 1;
      local_40 = local_40 + 1;
      local_3c = local_3c + 1;
    } while (local_44 != param_4);
  }
  return;
}

// ---- FUN_00718d08  @ 0x718d08
void FUN_00718d08(int param_1)

{
  int iVar1;
  int *piVar2;
  int *piVar3;
  int *piVar4;
  uint uVar5;
  int iVar6;
  
  iVar6 = *(int *)(param_1 + 0x1e0);
  piVar2 = (int *)(*(code *)**(undefined4 **)(param_1 + 4))(param_1,1,0x7fc);
  piVar4 = piVar2 + 0xfe;
  *(int **)(iVar6 + 0x28) = piVar2 + 0xff;
  piVar3 = piVar2 + 0x100;
  iVar6 = 0;
  do {
    iVar1 = -iVar6;
    piVar4 = piVar4 + 1;
    *piVar4 = iVar6;
    iVar6 = iVar6 + 1;
    piVar3 = piVar3 + -1;
    *piVar3 = iVar1;
  } while (iVar6 != 0x10);
  piVar4 = piVar2 + 0x10e;
  piVar3 = piVar2 + 0xf0;
  iVar6 = 0x10;
  uVar5 = 0x10;
  do {
    uVar5 = uVar5 + 1;
    piVar4 = piVar4 + 1;
    *piVar4 = iVar6;
    piVar3 = piVar3 + -1;
    *piVar3 = -iVar6;
    iVar6 = iVar6 + (uVar5 & 1 ^ 1);
  } while (uVar5 != 0x30);
  piVar4 = piVar2 + 0x12e;
  piVar3 = piVar2 + 0xd0;
  do {
    piVar4 = piVar4 + 1;
    *piVar4 = iVar6;
    piVar3 = piVar3 + -1;
    *piVar3 = -iVar6;
  } while (piVar3 != piVar2);
  return;
}

// ---- FUN_00718e70  @ 0x718e70
void FUN_00718e70(int *param_1,int param_2)

{
  undefined4 *puVar1;
  void *__s;
  undefined4 uVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  size_t __n;
  
  iVar5 = param_1[0x78];
  iVar4 = *(int *)(iVar5 + 0x18);
  if (param_1[0x16] != 0) {
    param_1[0x16] = 2;
  }
  if (param_2 != 0) {
    *(undefined1 **)(iVar5 + 4) = &LAB_00718338_1;
    *(undefined4 *)(iVar5 + 8) = 0x718f5d;
    *(undefined4 *)(iVar5 + 0x1c) = 1;
    goto LAB_00718e96;
  }
  if (param_1[0x16] == 2) {
    *(undefined4 *)(iVar5 + 4) = 0x718ab5;
  }
  else {
    *(undefined4 *)(iVar5 + 4) = 0x718a21;
  }
  *(undefined **)(iVar5 + 8) = &DAT_00718d79;
  if (param_1[0x21] < 1) {
    *(undefined4 *)(*param_1 + 0x14) = 0x3a;
    uVar2 = 1;
    iVar3 = *param_1;
LAB_00718ef4:
    *(undefined4 *)(iVar3 + 0x18) = uVar2;
    (**(code **)*param_1)(param_1);
    iVar3 = param_1[0x16];
  }
  else {
    if (0x100 < param_1[0x21]) {
      *(undefined4 *)(*param_1 + 0x14) = 0x3b;
      uVar2 = 0x100;
      iVar3 = *param_1;
      goto LAB_00718ef4;
    }
    iVar3 = param_1[0x16];
  }
  if (iVar3 == 2) {
    __s = *(void **)(iVar5 + 0x20);
    __n = param_1[0x1c] * 6 + 0xc;
    if (__s == (void *)0x0) {
      __s = (void *)(**(code **)(param_1[1] + 4))(param_1,1,__n);
      *(void **)(iVar5 + 0x20) = __s;
    }
    memset(__s,0,__n);
    if (*(int *)(iVar5 + 0x28) == 0) {
      FUN_00718d08(param_1);
    }
    *(undefined4 *)(iVar5 + 0x24) = 0;
  }
  if (*(int *)(iVar5 + 0x1c) == 0) {
    return;
  }
LAB_00718e96:
  iVar3 = 0;
  do {
    puVar1 = (undefined4 *)(iVar4 + iVar3);
    iVar3 = iVar3 + 4;
    memset((void *)*puVar1,0,0x1000);
  } while (iVar3 != 0x80);
  *(undefined4 *)(iVar5 + 0x1c) = 0;
  return;
}

// ---- FUN_00718f5c  @ 0x718f5c
void FUN_00718f5c(int *param_1)

{
  bool bVar1;
  int *piVar2;
  int *piVar3;
  undefined1 uVar4;
  int iVar5;
  int iVar6;
  ushort *puVar7;
  int iVar8;
  int *piVar9;
  uint uVar10;
  int iVar11;
  int iVar12;
  int *piVar13;
  int iVar14;
  int iVar15;
  int iVar16;
  ushort *puVar17;
  int *piVar18;
  int iVar19;
  int local_50;
  int *local_4c;
  int *local_3c;
  int local_34;
  int local_30;
  
  iVar5 = param_1[0x78];
  param_1[0x22] = *(int *)(iVar5 + 0x10);
  iVar11 = *(int *)(iVar5 + 0x14);
  local_3c = (int *)(**(code **)param_1[1])(param_1,1,iVar11 << 5);
  local_3c[3] = 0x3f;
  *local_3c = 0;
  local_3c[1] = 0x1f;
  local_3c[2] = 0;
  local_3c[4] = 0;
  local_3c[5] = 0x1f;
  FUN_0071839c(param_1,local_3c);
  if (iVar11 < 2) {
    local_34 = 1;
  }
  else {
    local_34 = 1;
    piVar2 = local_3c;
    do {
      piVar13 = piVar2 + 8;
      if (iVar11 < local_34 * 2) {
        piVar18 = (int *)0x0;
        iVar6 = 0;
        piVar9 = local_3c;
        iVar19 = 0;
        while( true ) {
          iVar14 = piVar9[6];
          piVar3 = piVar9;
          if (iVar14 <= iVar19) {
            iVar14 = iVar19;
            piVar3 = piVar18;
          }
          piVar18 = piVar3;
          iVar6 = iVar6 + 1;
          if (local_34 <= iVar6) break;
          piVar9 = piVar9 + 8;
          iVar19 = iVar14;
        }
      }
      else {
        iVar6 = 0;
        iVar19 = 0;
        piVar18 = (int *)0x0;
        piVar9 = local_3c;
        while( true ) {
          if ((iVar19 < piVar9[7]) && (0 < piVar9[6])) {
            iVar19 = piVar9[7];
            piVar18 = piVar9;
          }
          if (local_34 <= iVar6 + 1) break;
          iVar6 = iVar6 + 1;
          piVar9 = piVar9 + 8;
        }
      }
      if (piVar18 == (int *)0x0) break;
      piVar2[9] = piVar18[1];
      piVar2[0xb] = piVar18[3];
      piVar2[0xd] = piVar18[5];
      *piVar13 = *piVar18;
      piVar2[10] = piVar18[2];
      piVar2[0xc] = piVar18[4];
      iVar19 = (piVar18[1] - *piVar18) * 0x10;
      iVar6 = (piVar18[3] - piVar18[2]) * 0xc;
      bVar1 = iVar19 <= iVar6;
      if (bVar1) {
        iVar19 = iVar6;
      }
      if (iVar19 < (piVar18[5] - piVar18[4]) * 8) {
        iVar19 = (piVar18[4] + piVar18[5]) / 2;
        piVar18[5] = iVar19;
        piVar2[0xc] = iVar19 + 1;
      }
      else if (bVar1) {
        iVar19 = (piVar18[2] + piVar18[3]) / 2;
        piVar18[3] = iVar19;
        piVar2[10] = iVar19 + 1;
      }
      else {
        iVar19 = (piVar18[1] + *piVar18) / 2;
        piVar18[1] = iVar19;
        *piVar13 = iVar19 + 1;
      }
      local_34 = local_34 + 1;
      FUN_0071839c(param_1);
      FUN_0071839c(param_1,piVar13);
      piVar2 = piVar13;
    } while (local_34 != iVar11);
  }
  local_30 = 0;
  do {
    local_50 = *local_3c;
    iVar11 = local_3c[2];
    iVar19 = local_3c[4];
    if (local_3c[1] < local_50) {
      iVar12 = 0;
      iVar6 = iVar12;
      iVar14 = iVar12;
      iVar15 = iVar12;
    }
    else {
      local_4c = (int *)(*(int *)(param_1[0x78] + 0x18) + local_50 * 4);
      iVar12 = 0;
      iVar14 = 0;
      iVar15 = 0;
      iVar6 = 0;
      do {
        if (iVar11 <= local_3c[3]) {
          puVar17 = (ushort *)(*local_4c + (iVar19 + iVar11 * 0x20) * 2);
          iVar16 = iVar11;
          do {
            if (iVar19 <= local_3c[5]) {
              puVar7 = puVar17;
              iVar8 = iVar19;
              do {
                uVar10 = (uint)*puVar7;
                if (uVar10 != 0) {
                  iVar6 = iVar6 + uVar10;
                  iVar15 = uVar10 * (local_50 * 8 + 4) + iVar15;
                  iVar14 = uVar10 * (iVar16 * 4 + 2) + iVar14;
                  iVar12 = uVar10 * (iVar8 * 8 + 4) + iVar12;
                }
                iVar8 = iVar8 + 1;
                puVar7 = puVar7 + 1;
              } while (iVar8 <= local_3c[5]);
            }
            iVar16 = iVar16 + 1;
            puVar17 = puVar17 + 0x20;
          } while (iVar16 <= local_3c[3]);
        }
        local_50 = local_50 + 1;
        local_4c = local_4c + 1;
      } while (local_50 <= local_3c[1]);
    }
    iVar11 = iVar6 >> 1;
    iVar19 = *(int *)param_1[0x22];
    uVar4 = __divsi3(iVar11 + iVar15,iVar6);
    *(undefined1 *)(iVar19 + local_30) = uVar4;
    iVar19 = *(int *)(param_1[0x22] + 4);
    uVar4 = __divsi3(iVar11 + iVar14,iVar6);
    *(undefined1 *)(iVar19 + local_30) = uVar4;
    iVar19 = *(int *)(param_1[0x22] + 8);
    uVar4 = __divsi3(iVar11 + iVar12,iVar6);
    *(undefined1 *)(iVar19 + local_30) = uVar4;
    local_30 = local_30 + 1;
    local_3c = local_3c + 8;
  } while (local_30 < local_34);
  param_1[0x21] = local_34;
  *(undefined4 *)(*param_1 + 0x14) = 0x62;
  *(int *)(*param_1 + 0x18) = local_34;
  (**(code **)(*param_1 + 4))(param_1,1);
  *(undefined4 *)(iVar5 + 0x1c) = 1;
  return;
}

// ---- FUN_0071926c  @ 0x71926c
void FUN_0071926c(int *param_1,undefined4 param_2)

{
  *(undefined4 *)(*param_1 + 0x14) = 0x38;
  *(undefined4 *)(*param_1 + 0x18) = param_2;
  (**(code **)*param_1)();
  return;
}

// ---- FUN_00719280  @ 0x719280
void FUN_00719280(undefined4 param_1,int *param_2,int param_3)

{
  int iVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  int iVar7;
  
  iVar3 = param_2[4];
  iVar7 = param_2[2];
  iVar1 = param_2[6];
  if (0 < iVar3) {
    if (param_2[5] <= iVar3) {
      iVar3 = param_2[5];
    }
    if (param_2[7] - iVar1 <= iVar3) {
      iVar3 = param_2[7] - iVar1;
    }
    if (param_2[1] - iVar1 <= iVar3) {
      iVar3 = param_2[1] - iVar1;
    }
    if (0 < iVar3) {
      iVar1 = iVar7 * iVar1;
      iVar5 = 0;
      while( true ) {
        iVar6 = iVar7 * iVar3;
        if (param_3 == 0) {
          (*(code *)param_2[0xc])
                    (param_1,param_2 + 0xc,*(undefined4 *)(*param_2 + iVar5 * 4),iVar1,iVar6);
          iVar2 = param_2[5];
          iVar4 = param_2[4];
          iVar5 = iVar5 + iVar2;
          if (iVar4 <= iVar5) {
            return;
          }
        }
        else {
          (*(code *)param_2[0xd])
                    (param_1,param_2 + 0xc,*(undefined4 *)(*param_2 + iVar5 * 4),iVar1,iVar6);
          iVar2 = param_2[5];
          iVar4 = param_2[4];
          iVar5 = iVar5 + iVar2;
          if (iVar4 <= iVar5) {
            return;
          }
        }
        iVar3 = iVar4 - iVar5;
        if (iVar2 <= iVar4 - iVar5) {
          iVar3 = iVar2;
        }
        iVar2 = param_2[7] - (iVar5 + param_2[6]);
        if (iVar2 <= iVar3) {
          iVar3 = iVar2;
        }
        iVar2 = param_2[1] - (iVar5 + param_2[6]);
        if (iVar2 <= iVar3) {
          iVar3 = iVar2;
        }
        if (iVar3 < 1) break;
        iVar1 = iVar1 + iVar6;
      }
      return;
    }
  }
  return;
}

// ---- FUN_00719334  @ 0x719334
void FUN_00719334(undefined4 param_1,int *param_2,int param_3)

{
  int iVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  int iVar7;
  
  iVar3 = param_2[2];
  iVar4 = param_2[4];
  iVar1 = param_2[6];
  if (0 < iVar4) {
    if (param_2[5] <= iVar4) {
      iVar4 = param_2[5];
    }
    if (param_2[7] - iVar1 <= iVar4) {
      iVar4 = param_2[7] - iVar1;
    }
    if (param_2[1] - iVar1 <= iVar4) {
      iVar4 = param_2[1] - iVar1;
    }
    if (0 < iVar4) {
      iVar1 = iVar1 * iVar3 * 0x80;
      iVar6 = 0;
      while( true ) {
        iVar7 = iVar3 * 0x80 * iVar4;
        if (param_3 == 0) {
          (*(code *)param_2[0xc])
                    (param_1,param_2 + 0xc,*(undefined4 *)(*param_2 + iVar6 * 4),iVar1,iVar7);
          iVar2 = param_2[5];
          iVar5 = param_2[4];
          iVar6 = iVar6 + iVar2;
          if (iVar5 <= iVar6) {
            return;
          }
        }
        else {
          (*(code *)param_2[0xd])
                    (param_1,param_2 + 0xc,*(undefined4 *)(*param_2 + iVar6 * 4),iVar1,iVar7);
          iVar2 = param_2[5];
          iVar5 = param_2[4];
          iVar6 = iVar6 + iVar2;
          if (iVar5 <= iVar6) {
            return;
          }
        }
        iVar4 = iVar5 - iVar6;
        if (iVar2 <= iVar5 - iVar6) {
          iVar4 = iVar2;
        }
        iVar2 = param_2[7] - (iVar6 + param_2[6]);
        if (iVar2 <= iVar4) {
          iVar4 = iVar2;
        }
        iVar2 = param_2[1] - (iVar6 + param_2[6]);
        if (iVar2 <= iVar4) {
          iVar4 = iVar2;
        }
        if (iVar4 < 1) break;
        iVar1 = iVar1 + iVar7;
      }
      return;
    }
  }
  return;
}

// ---- FUN_007193ec  @ 0x7193ec
int FUN_007193ec(int *param_1,uint param_2,uint param_3,undefined4 param_4)

{
  undefined4 *puVar1;
  uint uVar2;
  int iVar3;
  int iVar4;
  undefined4 *puVar5;
  int iVar6;
  
  iVar4 = param_1[1];
  if (0x3b9ac9f0 < param_3) {
    FUN_0071926c(param_1,1,param_3,0x3b9ac9f0,param_4);
  }
  if ((param_3 & 7) != 0) {
    param_3 = (param_3 + 8) - (param_3 & 7);
  }
  if (1 < param_2) {
    *(undefined4 *)(*param_1 + 0x14) = 0xf;
    *(uint *)(*param_1 + 0x18) = param_2;
    (**(code **)*param_1)(param_1);
  }
  puVar1 = *(undefined4 **)(iVar4 + (param_2 + 0xc) * 4 + 4);
  puVar5 = puVar1;
  if (puVar1 != (undefined4 *)0x0) {
    do {
      puVar1 = puVar5;
      uVar2 = puVar1[2];
      if (param_3 <= uVar2) {
LAB_00719440:
        iVar4 = puVar1[1];
        puVar1[1] = param_3 + iVar4;
        puVar1[2] = uVar2 - param_3;
        return (int)puVar1 + iVar4 + 0x10;
      }
      puVar5 = (undefined4 *)*puVar1;
    } while ((undefined4 *)*puVar1 != (undefined4 *)0x0);
    if (puVar1 != (undefined4 *)0x0) {
      uVar2 = *(uint *)(&DAT_00855704 + param_2 * 4);
      puVar5 = puVar1;
      goto LAB_00719468;
    }
  }
  uVar2 = *(uint *)(&DAT_008556fc + param_2 * 4);
  puVar5 = puVar1;
LAB_00719468:
  iVar3 = param_3 + 0x10;
  if (1000000000U - iVar3 <= uVar2) {
    uVar2 = 1000000000U - iVar3;
  }
  do {
    iVar6 = uVar2 + iVar3;
    puVar1 = (undefined4 *)jpeg_get_small(param_1,iVar6);
    while( true ) {
      if (puVar1 != (undefined4 *)0x0) {
        *(int *)(iVar4 + 0x4c) = *(int *)(iVar4 + 0x4c) + iVar6;
        puVar1[2] = uVar2 + param_3;
        *puVar1 = 0;
        puVar1[1] = 0;
        if (puVar5 == (undefined4 *)0x0) {
          *(undefined4 **)(iVar4 + (param_2 + 0xc) * 4 + 4) = puVar1;
          uVar2 = puVar1[2];
        }
        else {
          *puVar5 = puVar1;
          uVar2 = puVar1[2];
        }
        goto LAB_00719440;
      }
      uVar2 = uVar2 >> 1;
      if (0x31 < uVar2) break;
      iVar6 = uVar2 + iVar3;
      FUN_0071926c(param_1,2);
      puVar1 = (undefined4 *)jpeg_get_small(param_1,iVar6);
    }
  } while( true );
}

// ---- FUN_007196b4  @ 0x7196b4
void FUN_007196b4(int *param_1,uint param_2)

{
  int *piVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  
  iVar3 = param_1[1];
  if (param_2 < 2) {
    if (param_2 == 1) {
      for (iVar2 = *(int *)(iVar3 + 0x44); iVar2 != 0; iVar2 = *(int *)(iVar2 + 0x2c)) {
        while (*(int *)(iVar2 + 0x28) != 0) {
          *(undefined4 *)(iVar2 + 0x28) = 0;
          (**(code **)(iVar2 + 0x38))(param_1,iVar2 + 0x30);
          iVar2 = *(int *)(iVar2 + 0x2c);
          if (iVar2 == 0) goto LAB_0071975c;
        }
      }
LAB_0071975c:
      iVar2 = *(int *)(iVar3 + 0x48);
      *(undefined4 *)(iVar3 + 0x44) = 0;
      for (; iVar2 != 0; iVar2 = *(int *)(iVar2 + 0x2c)) {
        while (*(int *)(iVar2 + 0x28) != 0) {
          *(undefined4 *)(iVar2 + 0x28) = 0;
          (**(code **)(iVar2 + 0x38))(param_1,iVar2 + 0x30);
          iVar2 = *(int *)(iVar2 + 0x2c);
          if (iVar2 == 0) goto LAB_00719782;
        }
      }
LAB_00719782:
      *(undefined4 *)(iVar3 + 0x48) = 0;
    }
  }
  else {
    *(undefined4 *)(*param_1 + 0x14) = 0xf;
    *(uint *)(*param_1 + 0x18) = param_2;
    (**(code **)*param_1)();
  }
  iVar2 = iVar3 + (param_2 + 0xe) * 4;
  piVar1 = *(int **)(iVar2 + 4);
  *(undefined4 *)(iVar2 + 4) = 0;
  while (piVar1 != (int *)0x0) {
    iVar2 = *piVar1;
    iVar4 = piVar1[1] + piVar1[2] + 0x10;
    jpeg_free_large(param_1,piVar1,iVar4);
    *(int *)(iVar3 + 0x4c) = *(int *)(iVar3 + 0x4c) - iVar4;
    piVar1 = (int *)iVar2;
  }
  iVar2 = iVar3 + (param_2 + 0xc) * 4;
  piVar1 = *(int **)(iVar2 + 4);
  *(undefined4 *)(iVar2 + 4) = 0;
  while (piVar1 != (int *)0x0) {
    iVar2 = *piVar1;
    iVar4 = piVar1[1] + piVar1[2] + 0x10;
    jpeg_free_small(param_1,piVar1,iVar4);
    *(int *)(iVar3 + 0x4c) = *(int *)(iVar3 + 0x4c) - iVar4;
    piVar1 = (int *)iVar2;
  }
  return;
}

// ---- FUN_007197b0  @ 0x7197b0
int FUN_007197b0(int *param_1,int *param_2,uint param_3,uint param_4,int param_5)

{
  undefined4 *puVar1;
  int iVar2;
  int iVar3;
  uint uVar4;
  uint uVar5;
  int iVar6;
  
  uVar5 = param_4 + param_3;
  if ((((uint)param_2[1] < uVar5) || ((uint)param_2[3] < param_4)) || (*param_2 == 0)) {
    *(undefined4 *)(*param_1 + 0x14) = 0x17;
    (**(code **)*param_1)(param_1);
  }
  if ((param_3 < (uint)param_2[6]) || ((uint)(param_2[6] + param_2[4]) < uVar5)) {
    if (param_2[10] == 0) {
      *(undefined4 *)(*param_1 + 0x14) = 0x47;
      (**(code **)*param_1)(param_1);
    }
    if (param_2[9] != 0) {
      FUN_00719334(param_1,param_2,1);
      param_2[9] = 0;
    }
    if ((uint)param_2[6] < param_3) {
      param_2[6] = param_3;
    }
    else {
      param_2[6] = uVar5 - param_2[4] & ~((int)(uVar5 - param_2[4]) >> 0x1f);
    }
    FUN_00719334(param_1,param_2,0);
  }
  uVar4 = param_2[7];
  if (uVar4 < uVar5) {
    if (uVar4 < param_3) {
      uVar4 = param_3;
      if (param_5 != 0) {
        *(undefined4 *)(*param_1 + 0x14) = 0x17;
        (**(code **)*param_1)(param_1);
        param_2[7] = uVar5;
        goto LAB_0071987c;
      }
LAB_00719826:
      iVar2 = param_2[8];
    }
    else {
      if (param_5 == 0) goto LAB_00719826;
      param_2[7] = uVar5;
LAB_0071987c:
      iVar2 = param_2[8];
    }
    if (iVar2 != 0) {
      iVar2 = param_2[6];
      iVar3 = param_2[2];
      uVar4 = uVar4 - iVar2;
      if (uVar4 < uVar5 - iVar2) {
        iVar6 = uVar4 * 4;
        do {
          uVar4 = uVar4 + 1;
          puVar1 = (undefined4 *)(*param_2 + iVar6);
          iVar6 = iVar6 + 4;
          memset((void *)*puVar1,0,iVar3 << 7);
        } while (uVar4 < uVar5 - iVar2);
        goto LAB_00719854;
      }
      goto LAB_00719856;
    }
    if (param_5 == 0) {
      *(undefined4 *)(*param_1 + 0x14) = 0x17;
      (**(code **)*param_1)(param_1);
      iVar2 = param_2[6];
      goto LAB_00719860;
    }
    iVar2 = param_2[6];
  }
  else {
LAB_00719854:
    iVar2 = param_2[6];
LAB_00719856:
    if (param_5 == 0) goto LAB_00719860;
  }
  param_2[9] = 1;
LAB_00719860:
  return *param_2 + (param_3 - iVar2) * 4;
}

// ---- FUN_007198d4  @ 0x7198d4
int FUN_007198d4(int *param_1,int *param_2,uint param_3,uint param_4,int param_5)

{
  undefined4 *puVar1;
  int iVar2;
  uint uVar3;
  uint uVar4;
  int iVar5;
  size_t __n;
  
  uVar4 = param_4 + param_3;
  if ((((uint)param_2[1] < uVar4) || ((uint)param_2[3] < param_4)) || (*param_2 == 0)) {
    *(undefined4 *)(*param_1 + 0x14) = 0x17;
    (**(code **)*param_1)(param_1);
  }
  if ((param_3 < (uint)param_2[6]) || ((uint)(param_2[6] + param_2[4]) < uVar4)) {
    if (param_2[10] == 0) {
      *(undefined4 *)(*param_1 + 0x14) = 0x47;
      (**(code **)*param_1)(param_1);
    }
    if (param_2[9] != 0) {
      FUN_00719280(param_1,param_2,1);
      param_2[9] = 0;
    }
    if ((uint)param_2[6] < param_3) {
      param_2[6] = param_3;
    }
    else {
      param_2[6] = uVar4 - param_2[4] & ~((int)(uVar4 - param_2[4]) >> 0x1f);
    }
    FUN_00719280(param_1,param_2,0);
  }
  uVar3 = param_2[7];
  if (uVar3 < uVar4) {
    if (uVar3 < param_3) {
      uVar3 = param_3;
      if (param_5 != 0) {
        *(undefined4 *)(*param_1 + 0x14) = 0x17;
        (**(code **)*param_1)(param_1);
        param_2[7] = uVar4;
        goto LAB_0071999e;
      }
LAB_0071994a:
      iVar2 = param_2[8];
    }
    else {
      if (param_5 == 0) goto LAB_0071994a;
      param_2[7] = uVar4;
LAB_0071999e:
      iVar2 = param_2[8];
    }
    if (iVar2 != 0) {
      iVar2 = param_2[6];
      __n = param_2[2];
      uVar3 = uVar3 - iVar2;
      if (uVar3 < uVar4 - iVar2) {
        iVar5 = uVar3 * 4;
        do {
          uVar3 = uVar3 + 1;
          puVar1 = (undefined4 *)(*param_2 + iVar5);
          iVar5 = iVar5 + 4;
          memset((void *)*puVar1,0,__n);
        } while (uVar3 < uVar4 - iVar2);
        goto LAB_00719976;
      }
      goto LAB_00719978;
    }
    if (param_5 == 0) {
      *(undefined4 *)(*param_1 + 0x14) = 0x17;
      (**(code **)*param_1)(param_1);
      iVar2 = param_2[6];
      goto LAB_00719982;
    }
    iVar2 = param_2[6];
  }
  else {
LAB_00719976:
    iVar2 = param_2[6];
LAB_00719978:
    if (param_5 == 0) goto LAB_00719982;
  }
  param_2[9] = 1;
LAB_00719982:
  return *param_2 + (param_3 - iVar2) * 4;
}

// ---- FUN_007199f4  @ 0x7199f4
undefined4 * FUN_007199f4(int *param_1,uint param_2,uint param_3)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  int iVar3;
  
  iVar3 = param_1[1];
  if (0x3b9ac9f0 < param_3) {
    FUN_0071926c(param_1,3);
  }
  if ((param_3 & 7) != 0) {
    param_3 = (param_3 + 8) - (param_3 & 7);
  }
  if (1 < param_2) {
    *(undefined4 *)(*param_1 + 0x14) = 0xf;
    *(uint *)(*param_1 + 0x18) = param_2;
    (**(code **)*param_1)(param_1);
  }
  puVar1 = (undefined4 *)jpeg_get_large(param_1,param_3 + 0x10);
  if (puVar1 == (undefined4 *)0x0) {
    FUN_0071926c(param_1,4);
  }
  *(uint *)(iVar3 + 0x4c) = *(int *)(iVar3 + 0x4c) + 0x10 + param_3;
  iVar3 = iVar3 + (param_2 + 0xe) * 4;
  uVar2 = *(undefined4 *)(iVar3 + 4);
  puVar1[1] = param_3;
  *puVar1 = uVar2;
  puVar1[2] = 0;
  *(undefined4 **)(iVar3 + 4) = puVar1;
  return puVar1 + 4;
}

// ---- FUN_00719a78  @ 0x719a78
int FUN_00719a78(int *param_1,undefined4 param_2,int param_3,uint param_4)

{
  uint uVar1;
  int iVar2;
  int *piVar3;
  uint uVar4;
  int iVar5;
  uint uVar6;
  
  param_3 = param_3 * 0x80;
  iVar5 = param_1[1];
  uVar1 = __udivsi3(0x3b9ac9f0,param_3);
  if (uVar1 == 0) {
    *(undefined4 *)(*param_1 + 0x14) = 0x48;
    (**(code **)*param_1)(param_1);
  }
  if ((int)param_4 <= (int)uVar1) {
    uVar1 = param_4;
  }
  *(uint *)(iVar5 + 0x50) = uVar1;
  iVar5 = FUN_007193ec(param_1,param_2,param_4 << 2);
  if (param_4 != 0) {
    uVar6 = 0;
    do {
      while( true ) {
        if (param_4 - uVar6 <= uVar1) {
          uVar1 = param_4 - uVar6;
        }
        iVar2 = FUN_007199f4(param_1,param_2,param_3 * uVar1);
        if (uVar1 == 0) break;
        piVar3 = (int *)(iVar5 + uVar6 * 4);
        uVar4 = uVar1;
        do {
          uVar4 = uVar4 - 1;
          *piVar3 = iVar2;
          iVar2 = iVar2 + param_3;
          piVar3 = piVar3 + 1;
        } while (uVar4 != 0);
        uVar6 = uVar6 + uVar1;
        if (param_4 <= uVar6) {
          return iVar5;
        }
      }
    } while (uVar6 < param_4);
  }
  return iVar5;
}

// ---- FUN_00719b08  @ 0x719b08
int FUN_00719b08(int *param_1,undefined4 param_2,int param_3,uint param_4)

{
  uint uVar1;
  int iVar2;
  int *piVar3;
  uint uVar4;
  int iVar5;
  uint uVar6;
  
  iVar5 = param_1[1];
  uVar1 = __udivsi3(0x3b9ac9f0,param_3);
  if (uVar1 == 0) {
    *(undefined4 *)(*param_1 + 0x14) = 0x48;
    (**(code **)*param_1)(param_1);
  }
  if ((int)param_4 <= (int)uVar1) {
    uVar1 = param_4;
  }
  *(uint *)(iVar5 + 0x50) = uVar1;
  iVar5 = FUN_007193ec(param_1,param_2,param_4 << 2);
  if (param_4 != 0) {
    uVar6 = 0;
    do {
      while( true ) {
        if (param_4 - uVar6 <= uVar1) {
          uVar1 = param_4 - uVar6;
        }
        iVar2 = FUN_007199f4(param_1,param_2,param_3 * uVar1);
        if (uVar1 == 0) break;
        piVar3 = (int *)(iVar5 + uVar6 * 4);
        uVar4 = uVar1;
        do {
          uVar4 = uVar4 - 1;
          *piVar3 = iVar2;
          iVar2 = iVar2 + param_3;
          piVar3 = piVar3 + 1;
        } while (uVar4 != 0);
        uVar6 = uVar6 + uVar1;
        if (param_4 <= uVar6) {
          return iVar5;
        }
      }
    } while (uVar6 < param_4);
  }
  return iVar5;
}

// ---- FUN_00719b9c  @ 0x719b9c
void FUN_00719b9c(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int *piVar1;
  int *piVar2;
  int iVar3;
  int *piVar4;
  int iVar5;
  int iVar6;
  int iVar7;
  int iVar8;
  
  iVar6 = *(int *)(param_1 + 4);
  piVar4 = *(int **)(iVar6 + 0x44);
  iVar5 = 0;
  iVar7 = 0;
  if (piVar4 != (int *)0x0) {
    iVar5 = 0;
    iVar7 = 0;
    do {
      while (*piVar4 == 0) {
        piVar1 = piVar4 + 2;
        iVar7 = piVar4[3] * *piVar1 + iVar7;
        piVar2 = piVar4 + 1;
        piVar4 = (int *)piVar4[0xb];
        iVar5 = *piVar2 * *piVar1 + iVar5;
        if (piVar4 == (int *)0x0) goto LAB_00719bd0;
      }
      piVar4 = (int *)piVar4[0xb];
    } while (piVar4 != (int *)0x0);
  }
LAB_00719bd0:
  for (piVar4 = *(int **)(iVar6 + 0x48); piVar4 != (int *)0x0; piVar4 = (int *)piVar4[0xb]) {
    while (*piVar4 == 0) {
      piVar1 = piVar4 + 2;
      iVar7 = iVar7 + piVar4[3] * *piVar1 * 0x80;
      piVar2 = piVar4 + 1;
      piVar4 = (int *)piVar4[0xb];
      iVar5 = iVar5 + *piVar2 * *piVar1 * 0x80;
      if (piVar4 == (int *)0x0) goto LAB_00719bfc;
    }
  }
LAB_00719bfc:
  if (0 < iVar7) {
    iVar3 = jpeg_mem_available(param_1,iVar7,iVar5,*(undefined4 *)(iVar6 + 0x4c),param_4);
    if (iVar3 < iVar5) {
      iVar5 = __divsi3(iVar3,iVar7);
      if (iVar5 < 1) {
        iVar5 = 1;
      }
    }
    else {
      iVar5 = 1000000000;
    }
    for (piVar4 = *(int **)(iVar6 + 0x44); piVar4 != (int *)0x0; piVar4 = (int *)piVar4[0xb]) {
      while (*piVar4 == 0) {
        iVar3 = piVar4[1];
        iVar8 = piVar4[3];
        iVar7 = __udivsi3(iVar3 + -1,iVar8);
        if (iVar5 < iVar7 + 1) {
          piVar4[4] = iVar8 * iVar5;
          jpeg_open_backing_store(param_1,piVar4 + 0xc,iVar3 * piVar4[2]);
          piVar4[10] = 1;
          iVar3 = piVar4[4];
        }
        else {
          piVar4[4] = iVar3;
        }
        iVar7 = FUN_00719b08(param_1,1,piVar4[2],iVar3);
        *piVar4 = iVar7;
        iVar7 = *(int *)(iVar6 + 0x50);
        piVar4[6] = 0;
        piVar4[7] = 0;
        piVar4[5] = iVar7;
        piVar4[9] = 0;
        piVar4 = (int *)piVar4[0xb];
        if (piVar4 == (int *)0x0) goto LAB_00719c74;
      }
    }
LAB_00719c74:
    for (piVar4 = *(int **)(iVar6 + 0x48); piVar4 != (int *)0x0; piVar4 = (int *)piVar4[0xb]) {
      while (*piVar4 == 0) {
        iVar3 = piVar4[1];
        iVar8 = piVar4[3];
        iVar7 = __udivsi3(iVar3 + -1,iVar8);
        if (iVar5 < iVar7 + 1) {
          piVar4[4] = iVar8 * iVar5;
          jpeg_open_backing_store(param_1,piVar4 + 0xc,piVar4[2] * iVar3 * 0x80);
          piVar4[10] = 1;
          iVar3 = piVar4[4];
        }
        else {
          piVar4[4] = iVar3;
        }
        iVar7 = FUN_00719a78(param_1,1,piVar4[2],iVar3);
        *piVar4 = iVar7;
        iVar7 = *(int *)(iVar6 + 0x50);
        piVar4[6] = 0;
        piVar4[7] = 0;
        piVar4[5] = iVar7;
        piVar4[9] = 0;
        piVar4 = (int *)piVar4[0xb];
        if (piVar4 == (int *)0x0) {
          return;
        }
      }
    }
  }
  return;
}

// ---- FUN_00719d24  @ 0x719d24
void FUN_00719d24(undefined1 param_1,int *param_2)

{
  undefined1 *puVar1;
  int iVar2;
  undefined4 *puVar3;
  
  puVar3 = (undefined4 *)param_2[6];
  puVar1 = (undefined1 *)*puVar3;
  *puVar1 = param_1;
  *puVar3 = puVar1 + 1;
  iVar2 = puVar3[1];
  puVar3[1] = iVar2 + -1;
  if ((iVar2 + -1 == 0) && (iVar2 = (*(code *)puVar3[3])(param_2), iVar2 == 0)) {
    *(undefined4 *)(*param_2 + 0x14) = 0x19;
    (**(code **)*param_2)(param_2);
  }
  return;
}

// ---- FUN_00719d58  @ 0x719d58
void FUN_00719d58(int param_1)

{
  int iVar1;
  uint uVar2;
  int iVar3;
  
  iVar3 = *(int *)(param_1 + 0x1a4);
  uVar2 = (*(int *)(iVar3 + 0xc) + *(int *)(iVar3 + 0x10)) - 1U & 0xffff0000;
  if ((int)uVar2 < *(int *)(iVar3 + 0xc)) {
    uVar2 = uVar2 + 0x8000;
  }
  *(uint *)(iVar3 + 0xc) = uVar2;
  uVar2 = uVar2 << (*(uint *)(iVar3 + 0x1c) & 0xff);
  *(uint *)(iVar3 + 0xc) = uVar2;
  if ((uVar2 & 0xf8000000) == 0) {
    iVar1 = *(int *)(iVar3 + 0x20);
    if (iVar1 == 0) {
      *(int *)(iVar3 + 0x18) = *(int *)(iVar3 + 0x18) + 1;
    }
    else if (-1 < iVar1) {
      if (*(int *)(iVar3 + 0x18) != 0) {
        do {
          FUN_00719d24(0,param_1);
          iVar1 = *(int *)(iVar3 + 0x18) + -1;
          *(int *)(iVar3 + 0x18) = iVar1;
        } while (iVar1 != 0);
        iVar1 = *(int *)(iVar3 + 0x20);
      }
      FUN_00719d24(iVar1,param_1);
    }
    if (*(int *)(iVar3 + 0x14) != 0) {
      iVar1 = *(int *)(iVar3 + 0x18);
      while (iVar1 != 0) {
        FUN_00719d24(0,param_1);
        iVar1 = *(int *)(iVar3 + 0x18) + -1;
        *(int *)(iVar3 + 0x18) = iVar1;
      }
      do {
        FUN_00719d24(0xff,param_1);
        FUN_00719d24(0,param_1);
        iVar1 = *(int *)(iVar3 + 0x14) + -1;
        *(int *)(iVar3 + 0x14) = iVar1;
        if (iVar1 == 0) break;
        FUN_00719d24(0xff,param_1);
        FUN_00719d24(0,param_1);
        iVar1 = *(int *)(iVar3 + 0x14) + -1;
        *(int *)(iVar3 + 0x14) = iVar1;
      } while (iVar1 != 0);
    }
  }
  else {
    iVar1 = *(int *)(iVar3 + 0x20);
    if (-1 < iVar1) {
      if (*(int *)(iVar3 + 0x18) != 0) {
        do {
          FUN_00719d24(0,param_1);
          iVar1 = *(int *)(iVar3 + 0x18) + -1;
          *(int *)(iVar3 + 0x18) = iVar1;
        } while (iVar1 != 0);
        iVar1 = *(int *)(iVar3 + 0x20);
      }
      FUN_00719d24(iVar1 + 1,param_1);
      if (*(int *)(iVar3 + 0x20) == 0xfe) {
        FUN_00719d24(0,param_1);
      }
    }
    *(int *)(iVar3 + 0x18) = *(int *)(iVar3 + 0x18) + *(int *)(iVar3 + 0x14);
    *(undefined4 *)(iVar3 + 0x14) = 0;
  }
  uVar2 = *(uint *)(iVar3 + 0xc);
  if ((uVar2 & 0x7fff800) != 0) {
    if (*(int *)(iVar3 + 0x18) != 0) {
      do {
        FUN_00719d24(0,param_1);
        iVar1 = *(int *)(iVar3 + 0x18) + -1;
        *(int *)(iVar3 + 0x18) = iVar1;
      } while (iVar1 != 0);
      uVar2 = *(uint *)(iVar3 + 0xc);
    }
    FUN_00719d24((uVar2 & 0x7ffffff) >> 0x13,param_1);
    uVar2 = *(uint *)(iVar3 + 0xc);
    if ((uVar2 & 0x7ffffff) >> 0x13 == 0xff) {
      FUN_00719d24(0,param_1);
      uVar2 = *(uint *)(iVar3 + 0xc);
    }
    if (((uVar2 & 0x7f800) != 0) &&
       (FUN_00719d24((uVar2 & 0x7ffff) >> 0xb,param_1),
       (*(uint *)(iVar3 + 0xc) & 0x7ffff) >> 0xb == 0xff)) {
      FUN_00719d24(0,param_1);
    }
  }
  return;
}

// ---- FUN_00719eb4  @ 0x719eb4
void FUN_00719eb4(int param_1,byte *param_2,uint param_3)

{
  byte bVar1;
  int iVar2;
  uint uVar3;
  int iVar4;
  int iVar5;
  uint uVar6;
  int iVar7;
  
  iVar4 = *(int *)(param_1 + 0x1a4);
  bVar1 = *param_2;
  iVar2 = *(int *)(&jpeg_aritab + (bVar1 & 0x7f) * 4);
  iVar7 = iVar2 >> 0x10;
  iVar5 = *(int *)(iVar4 + 0x10) - iVar7;
  *(int *)(iVar4 + 0x10) = iVar5;
  if (param_3 == bVar1 >> 7) {
    if (0x7fff < iVar5) {
      return;
    }
    if (iVar5 < iVar7) {
      *(int *)(iVar4 + 0x10) = iVar7;
    }
    if (iVar5 < iVar7) {
      *(int *)(iVar4 + 0xc) = *(int *)(iVar4 + 0xc) + iVar5;
    }
    *param_2 = (byte)((uint)iVar2 >> 8) ^ bVar1 & 0x80;
  }
  else {
    if (iVar7 <= iVar5) {
      *(int *)(iVar4 + 0x10) = iVar7;
    }
    if (iVar7 <= iVar5) {
      *(int *)(iVar4 + 0xc) = *(int *)(iVar4 + 0xc) + iVar5;
    }
    *param_2 = (byte)iVar2 ^ bVar1 & 0x80;
  }
  iVar2 = *(int *)(iVar4 + 0x10);
  do {
    iVar2 = iVar2 << 1;
    *(int *)(iVar4 + 0x10) = iVar2;
    iVar5 = *(int *)(iVar4 + 0x1c) + -1;
    uVar3 = *(int *)(iVar4 + 0xc) << 1;
    *(int *)(iVar4 + 0x1c) = iVar5;
    *(uint *)(iVar4 + 0xc) = uVar3;
    if (iVar5 == 0) {
      uVar6 = (int)uVar3 >> 0x13;
      if ((int)uVar6 < 0x100) {
        if (uVar6 == 0xff) {
          *(int *)(iVar4 + 0x14) = *(int *)(iVar4 + 0x14) + 1;
        }
        else {
          iVar2 = *(int *)(iVar4 + 0x20);
          if (iVar2 == 0) {
            *(int *)(iVar4 + 0x18) = *(int *)(iVar4 + 0x18) + 1;
          }
          else if (-1 < iVar2) {
            if (*(int *)(iVar4 + 0x18) != 0) {
              do {
                FUN_00719d24(0,param_1);
                iVar2 = *(int *)(iVar4 + 0x18) + -1;
                *(int *)(iVar4 + 0x18) = iVar2;
              } while (iVar2 != 0);
              iVar2 = *(int *)(iVar4 + 0x20);
            }
            FUN_00719d24(iVar2,param_1);
          }
          if (*(int *)(iVar4 + 0x14) != 0) {
            iVar2 = *(int *)(iVar4 + 0x18);
            while (iVar2 != 0) {
              FUN_00719d24(0,param_1);
              iVar2 = *(int *)(iVar4 + 0x18) + -1;
              *(int *)(iVar4 + 0x18) = iVar2;
            }
            do {
              FUN_00719d24(0xff,param_1);
              FUN_00719d24(0,param_1);
              iVar2 = *(int *)(iVar4 + 0x14) + -1;
              *(int *)(iVar4 + 0x14) = iVar2;
            } while (iVar2 != 0);
          }
          uVar3 = *(uint *)(iVar4 + 0xc);
          *(uint *)(iVar4 + 0x20) = uVar6 & 0xff;
        }
      }
      else {
        if (-1 < *(int *)(iVar4 + 0x20)) {
          if (*(int *)(iVar4 + 0x18) == 0) {
            FUN_00719d24(*(int *)(iVar4 + 0x20) + 1,param_1);
            iVar2 = *(int *)(iVar4 + 0x20);
          }
          else {
            do {
              FUN_00719d24(0,param_1);
              iVar2 = *(int *)(iVar4 + 0x18) + -1;
              *(int *)(iVar4 + 0x18) = iVar2;
            } while (iVar2 != 0);
            FUN_00719d24(*(int *)(iVar4 + 0x20) + 1,param_1);
            iVar2 = *(int *)(iVar4 + 0x20);
          }
          if (iVar2 == 0xfe) {
            FUN_00719d24(0,param_1);
          }
        }
        *(uint *)(iVar4 + 0x20) = uVar6 & 0xff;
        uVar3 = *(uint *)(iVar4 + 0xc);
        *(int *)(iVar4 + 0x18) = *(int *)(iVar4 + 0x18) + *(int *)(iVar4 + 0x14);
        *(undefined4 *)(iVar4 + 0x14) = 0;
      }
      *(uint *)(iVar4 + 0xc) = uVar3 & 0x7ffff;
      *(int *)(iVar4 + 0x1c) = *(int *)(iVar4 + 0x1c) + 8;
      iVar2 = *(int *)(iVar4 + 0x10);
    }
  } while (iVar2 < 0x8000);
  return;
}

// ---- FUN_0071a074  @ 0x71a074
void FUN_0071a074(int *param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  void *pvVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  int *piVar5;
  int iVar6;
  uint uVar7;
  int iVar8;
  
  iVar3 = param_1[0x69];
  if (param_2 != 0) {
    *(undefined4 *)(*param_1 + 0x14) = 0x31;
    (**(code **)*param_1)();
  }
  if (param_1[0x42] == 0) {
    *(undefined4 *)(iVar3 + 4) = 0x71a2a1;
  }
  else if (param_1[0x5c] == 0) {
    if (param_1[0x5a] == 0) {
      *(undefined4 *)(iVar3 + 4) = 0x71a9d1;
      iVar2 = param_1[0x48];
      goto joined_r0x0071a0dc;
    }
    *(undefined4 *)(iVar3 + 4) = 0x71a7d1;
  }
  else if (param_1[0x5a] == 0) {
    *(undefined4 *)(iVar3 + 4) = 0x71a765;
  }
  else {
    *(undefined4 *)(iVar3 + 4) = 0x71a5c1;
  }
  iVar2 = param_1[0x48];
joined_r0x0071a0dc:
  if (0 < iVar2) {
    iVar4 = 0;
    piVar5 = param_1 + 0x48;
    iVar2 = iVar3;
    do {
      piVar5 = piVar5 + 1;
      iVar6 = *piVar5;
      if ((param_1[0x5a] == 0) && (param_1[0x5c] == 0)) {
        uVar7 = *(uint *)(iVar6 + 0x14);
        if (0xf < uVar7) {
          *(undefined4 *)(*param_1 + 0x14) = 0x32;
          *(uint *)(*param_1 + 0x18) = uVar7;
          (**(code **)*param_1)(param_1);
        }
        iVar8 = iVar3 + (uVar7 + 0x12) * 4;
        pvVar1 = *(void **)(iVar8 + 4);
        if (pvVar1 == (void *)0x0) {
          pvVar1 = (void *)(**(code **)param_1[1])(param_1,1,0x40,*(code **)param_1[1],param_4);
          *(void **)(iVar8 + 4) = pvVar1;
        }
        memset(pvVar1,0,0x40);
        *(undefined4 *)(iVar2 + 0x24) = 0;
        *(undefined4 *)(iVar2 + 0x34) = 0;
      }
      if (param_1[0x5b] != 0) {
        uVar7 = *(uint *)(iVar6 + 0x18);
        if (uVar7 < 0x10) {
          iVar6 = iVar3 + (uVar7 + 0x22) * 4;
          pvVar1 = *(void **)(iVar6 + 4);
        }
        else {
          *(undefined4 *)(*param_1 + 0x14) = 0x32;
          *(uint *)(*param_1 + 0x18) = uVar7;
          iVar6 = iVar3 + (uVar7 + 0x22) * 4;
          (**(code **)*param_1)(param_1);
          pvVar1 = *(void **)(iVar6 + 4);
        }
        if (pvVar1 == (void *)0x0) {
          pvVar1 = (void *)(**(code **)param_1[1])(param_1,1,0x100);
          *(void **)(iVar6 + 4) = pvVar1;
        }
        memset(pvVar1,0,0x100);
      }
      iVar4 = iVar4 + 1;
      iVar2 = iVar2 + 4;
    } while (iVar4 < param_1[0x48]);
  }
  *(undefined4 *)(iVar3 + 0xc) = 0;
  *(undefined4 *)(iVar3 + 0x10) = 0x10000;
  *(undefined4 *)(iVar3 + 0x14) = 0;
  *(undefined4 *)(iVar3 + 0x1c) = 0xb;
  *(undefined4 *)(iVar3 + 0x18) = 0;
  *(undefined4 *)(iVar3 + 0x20) = 0xffffffff;
  iVar2 = param_1[0x3b];
  *(undefined4 *)(iVar3 + 0x48) = 0;
  *(int *)(iVar3 + 0x44) = iVar2;
  return;
}

// ---- FUN_0071a1f8  @ 0x71a1f8
void FUN_0071a1f8(int param_1,int param_2)

{
  int iVar1;
  int iVar2;
  int iVar3;
  int *piVar4;
  int iVar5;
  
  iVar3 = *(int *)(param_1 + 0x1a4);
  FUN_00719d58();
  FUN_00719d24(0xff,param_1);
  FUN_00719d24(param_2 + 0xd0,param_1);
  if (0 < *(int *)(param_1 + 0x120)) {
    piVar4 = (int *)(param_1 + 0x120);
    iVar1 = 0;
    iVar2 = iVar3;
    do {
      piVar4 = piVar4 + 1;
      iVar5 = *piVar4;
      if ((*(int *)(param_1 + 0x168) == 0) && (*(int *)(param_1 + 0x170) == 0)) {
        memset(*(void **)(iVar3 + *(int *)(iVar5 + 0x14) * 4 + 0x4c),0,0x40);
        *(undefined4 *)(iVar2 + 0x24) = 0;
        *(undefined4 *)(iVar2 + 0x34) = 0;
      }
      if (*(int *)(param_1 + 0x16c) != 0) {
        memset(*(void **)(iVar3 + *(int *)(iVar5 + 0x18) * 4 + 0x8c),0,0x100);
      }
      iVar1 = iVar1 + 1;
      iVar2 = iVar2 + 4;
    } while (iVar1 < *(int *)(param_1 + 0x120));
  }
  *(undefined4 *)(iVar3 + 0xc) = 0;
  *(undefined4 *)(iVar3 + 0x14) = 0;
  *(undefined4 *)(iVar3 + 0x18) = 0;
  *(undefined4 *)(iVar3 + 0x10) = 0x10000;
  *(undefined4 *)(iVar3 + 0x1c) = 0xb;
  *(undefined4 *)(iVar3 + 0x20) = 0xffffffff;
  return;
}

// ---- FUN_0071a2a0  @ 0x71a2a0
undefined4 FUN_0071a2a0(int param_1,undefined4 *param_2)

{
  int iVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  int *piVar5;
  int iVar6;
  int iVar7;
  int iVar8;
  uint uVar9;
  int iVar10;
  int iVar11;
  uint uVar12;
  short *psVar13;
  int iVar14;
  int local_3c;
  int *local_38;
  undefined4 *local_34;
  
  iVar1 = *(int *)(param_1 + 0x1a4);
  if (*(int *)(param_1 + 0xec) != 0) {
    iVar6 = *(int *)(iVar1 + 0x44);
    if (iVar6 == 0) {
      FUN_0071a1f8(param_1,*(undefined4 *)(iVar1 + 0x48));
      iVar6 = *(int *)(param_1 + 0xec);
      *(int *)(iVar1 + 0x44) = iVar6;
      *(uint *)(iVar1 + 0x48) = *(int *)(iVar1 + 0x48) + 1U & 7;
    }
    *(int *)(iVar1 + 0x44) = iVar6 + -1;
  }
  iVar6 = *(int *)(param_1 + 0x17c);
  if (*(int *)(param_1 + 0x13c) < 1) {
    return 1;
  }
  local_38 = (int *)(param_1 + 0x13c);
  local_3c = 0;
  local_34 = param_2;
LAB_0071a2e2:
  psVar13 = (short *)*local_34;
  local_38 = local_38 + 1;
  iVar3 = *local_38;
  iVar2 = iVar3 + 0xc;
  iVar8 = iVar1 + iVar2 * 4;
  iVar7 = *(int *)(param_1 + iVar3 * 4 + 0x124);
  iVar4 = iVar1 + (iVar3 + 8) * 4;
  iVar14 = *(int *)(iVar7 + 0x14);
  iVar11 = iVar14 + 0x12;
  iVar10 = *(int *)(iVar1 + iVar11 * 4 + 4) + *(int *)(iVar8 + 4);
  iVar3 = (int)*psVar13 - *(int *)(iVar4 + 4);
  if (iVar3 == 0) {
    FUN_00719eb4(param_1,iVar10,0);
    *(undefined4 *)(iVar8 + 4) = 0;
  }
  else {
    *(int *)(iVar4 + 4) = (int)*psVar13;
    FUN_00719eb4(param_1,iVar10,1);
    if (iVar3 < 1) {
      iVar3 = -iVar3;
      FUN_00719eb4(param_1,iVar10 + 1,1);
      iVar4 = iVar10 + 3;
      *(undefined4 *)(iVar8 + 4) = 8;
    }
    else {
      iVar4 = iVar10 + 2;
      FUN_00719eb4(param_1,iVar10 + 1,0);
      *(undefined4 *)(iVar8 + 4) = 4;
    }
    uVar9 = iVar3 - 1;
    if (uVar9 == 0) {
      uVar12 = 0;
      iVar3 = 0;
    }
    else {
      FUN_00719eb4(param_1,iVar4,1);
      iVar4 = *(int *)(iVar1 + iVar11 * 4 + 4) + 0x14;
      iVar8 = (int)uVar9 >> 1;
      if (iVar8 == 0) {
        iVar3 = 1;
        uVar12 = 0;
      }
      else {
        iVar3 = 1;
        do {
          iVar3 = iVar3 << 1;
          FUN_00719eb4(param_1,iVar4,1);
          iVar4 = iVar4 + 1;
          iVar8 = iVar8 >> 1;
        } while (iVar8 != 0);
        uVar12 = iVar3 >> 1;
      }
    }
    iVar14 = iVar14 + param_1;
    FUN_00719eb4(param_1,iVar4,0);
    if (iVar3 < (1 << *(sbyte *)(iVar14 + 0x98)) >> 1) {
      *(undefined4 *)(iVar1 + iVar2 * 4 + 4) = 0;
    }
    else if ((1 << *(sbyte *)(iVar14 + 0xa8)) >> 1 < iVar3) {
      iVar3 = iVar1 + iVar2 * 4;
      *(int *)(iVar3 + 4) = *(int *)(iVar3 + 4) + 8;
    }
    for (; uVar12 != 0; uVar12 = (int)uVar12 >> 1) {
      FUN_00719eb4(param_1,iVar4 + 0xe,(uVar12 & uVar9) != 0);
    }
  }
  iVar3 = *(int *)(param_1 + 0x180);
  if (iVar3 != 0) {
    iVar4 = *(int *)(iVar7 + 0x18);
    iVar2 = iVar3;
    piVar5 = (int *)(iVar6 + iVar3 * 4);
    do {
      if (psVar13[*piVar5] != 0) {
        if (0 < iVar2) {
          iVar7 = iVar1 + (iVar4 + 0x22) * 4;
          iVar3 = 0;
          goto LAB_0071a48e;
        }
        break;
      }
      iVar2 = iVar2 + -1;
      piVar5 = piVar5 + -1;
    } while (iVar2 != 0);
    iVar11 = 0;
    goto LAB_0071a366;
  }
  goto LAB_0071a384;
LAB_0071a48e:
  do {
    iVar11 = iVar3 + 1;
    iVar10 = *(int *)(iVar7 + 4) + iVar3 * 3;
    FUN_00719eb4(param_1,iVar10,0);
    iVar8 = (int)psVar13[*(int *)(iVar6 + iVar11 * 4)];
    if (iVar8 == 0) {
      iVar14 = iVar10 + 1;
      piVar5 = (int *)(iVar6 + (iVar3 + 2) * 4);
      do {
        iVar10 = iVar14;
        iVar11 = iVar11 + 1;
        FUN_00719eb4(param_1,iVar10,0);
        iVar8 = (int)psVar13[*piVar5];
        iVar14 = iVar10 + 3;
        piVar5 = piVar5 + 1;
      } while (iVar8 == 0);
      iVar10 = iVar10 + 2;
    }
    FUN_00719eb4(param_1,iVar10 + 1,1);
    if (iVar8 < 1) {
      iVar8 = -iVar8;
      FUN_00719eb4(param_1,iVar1 + 0xcc,1);
    }
    else {
      FUN_00719eb4(param_1,iVar1 + 0xcc,0);
    }
    iVar10 = iVar10 + 2;
    uVar9 = iVar8 - 1;
    if ((uVar9 == 0) || (FUN_00719eb4(param_1,iVar10,1), uVar9 >> 1 == 0)) {
      FUN_00719eb4(param_1,iVar10,0);
    }
    else {
      FUN_00719eb4(param_1,iVar10,1);
      if ((int)(uint)*(byte *)(param_1 + iVar4 + 0xb8) < iVar11) {
        iVar3 = 0xd9;
      }
      else {
        iVar3 = 0xbd;
      }
      iVar3 = *(int *)(iVar7 + 4) + iVar3;
      iVar8 = (int)uVar9 >> 2;
      if (iVar8 == 0) {
        iVar10 = iVar3 + 0xe;
        FUN_00719eb4(param_1,iVar3,0);
        uVar12 = 1;
      }
      else {
        iVar14 = 2;
        do {
          iVar10 = iVar3;
          iVar14 = iVar14 * 2;
          FUN_00719eb4(param_1,iVar10,1);
          iVar8 = iVar8 >> 1;
          iVar3 = iVar10 + 1;
        } while (iVar8 != 0);
        uVar12 = iVar14 >> 1;
        FUN_00719eb4(param_1,iVar10 + 1,0);
        if (iVar14 == 0) goto LAB_0071a4fe;
        iVar10 = iVar10 + 0xf;
      }
      do {
        FUN_00719eb4(param_1,iVar10,(uVar12 & uVar9) != 0);
        uVar12 = (int)uVar12 >> 1;
      } while (uVar12 != 0);
    }
LAB_0071a4fe:
    iVar3 = iVar11;
  } while (iVar11 < iVar2);
  iVar3 = *(int *)(param_1 + 0x180);
LAB_0071a366:
  if (iVar11 < iVar3) {
    FUN_00719eb4(param_1,*(int *)(iVar1 + iVar4 * 4 + 0x8c) + iVar11 * 3,1);
  }
LAB_0071a384:
  local_3c = local_3c + 1;
  local_34 = local_34 + 1;
  if (*(int *)(param_1 + 0x13c) <= local_3c) {
    return 1;
  }
  goto LAB_0071a2e2;
}

// ---- FUN_0071a5c0  @ 0x71a5c0
undefined4 FUN_0071a5c0(int param_1,int *param_2)

{
  int iVar1;
  int iVar2;
  int iVar3;
  int *piVar4;
  uint uVar5;
  int iVar6;
  int iVar7;
  int iVar8;
  int iVar9;
  int iVar10;
  int iVar11;
  
  iVar1 = *(int *)(param_1 + 0x1a4);
  if (*(int *)(param_1 + 0xec) != 0) {
    iVar6 = *(int *)(iVar1 + 0x44);
    if (iVar6 == 0) {
      FUN_0071a1f8(param_1,*(undefined4 *)(iVar1 + 0x48));
      iVar6 = *(int *)(param_1 + 0xec);
      *(int *)(iVar1 + 0x44) = iVar6;
      *(uint *)(iVar1 + 0x48) = *(int *)(iVar1 + 0x48) + 1U & 7;
    }
    *(int *)(iVar1 + 0x44) = iVar6 + -1;
  }
  iVar3 = *(int *)(param_1 + 0x17c);
  iVar2 = *(int *)(param_1 + 0x16c);
  iVar7 = *(int *)(*(int *)(param_1 + 0x124) + 0x18);
  iVar11 = *param_2;
  iVar6 = iVar2;
  iVar10 = iVar2;
  if (0 < iVar2) {
    piVar4 = (int *)(iVar3 + iVar2 * 4);
    do {
      iVar8 = (int)*(short *)(iVar11 + *piVar4 * 2);
      if (iVar8 < 0) {
        iVar10 = -iVar8 >> (*(uint *)(param_1 + 0x174) & 0xff);
      }
      else {
        iVar10 = iVar8 >> (*(uint *)(param_1 + 0x174) & 0xff);
      }
      if (iVar10 != 0) {
        iVar10 = iVar6;
        if (0 < iVar6) {
          piVar4 = (int *)(iVar3 + (iVar6 + -1) * 4);
          while( true ) {
            if (iVar8 < 0) {
              iVar8 = -iVar8;
            }
            if ((iVar8 >> (*(uint *)(param_1 + 0x170) & 0xff) != 0) ||
               (iVar10 = iVar10 + -1, iVar10 == 0)) break;
            iVar8 = (int)*(short *)(iVar11 + *piVar4 * 2);
            piVar4 = piVar4 + -1;
          }
        }
        break;
      }
      iVar6 = iVar6 + -1;
      piVar4 = piVar4 + -1;
      iVar10 = iVar6;
    } while (iVar6 != 0);
  }
  iVar8 = *(int *)(param_1 + 0x168);
  if (iVar8 <= iVar6) {
LAB_0071a67a:
    iVar2 = (iVar8 + -1) * 3 + *(int *)(iVar1 + (iVar7 + 0x22) * 4 + 4);
    if (iVar10 < iVar8) {
      FUN_00719eb4(param_1,iVar2,0);
    }
    iVar2 = iVar2 + 1;
    piVar4 = (int *)(iVar3 + iVar8 * 4);
    do {
      iVar9 = (int)*(short *)(iVar11 + *piVar4 * 2);
      if (iVar9 < 0) {
        uVar5 = -iVar9 >> (*(uint *)(param_1 + 0x174) & 0xff);
        if (uVar5 != 0) goto code_r0x0071a6c4;
      }
      else {
        uVar5 = iVar9 >> (*(uint *)(param_1 + 0x174) & 0xff);
        if (uVar5 != 0) {
          if ((int)uVar5 >> 1 != 0) goto LAB_0071a728;
          FUN_00719eb4(param_1,iVar2,1);
          FUN_00719eb4(param_1,iVar1 + 0xcc,0);
          goto LAB_0071a6dc;
        }
      }
      iVar8 = iVar8 + 1;
      FUN_00719eb4(param_1,iVar2,0);
      iVar2 = iVar2 + 3;
      piVar4 = piVar4 + 1;
    } while( true );
  }
LAB_0071a6e6:
  if (iVar8 <= iVar2) {
    FUN_00719eb4(param_1,*(int *)(iVar1 + iVar7 * 4 + 0x8c) + (iVar8 + -1) * 3,1);
  }
  return 1;
code_r0x0071a6c4:
  if (uVar5 >> 1 == 0) {
    FUN_00719eb4(param_1,iVar2,1);
    FUN_00719eb4(param_1,iVar1 + 0xcc,1);
  }
  else {
LAB_0071a728:
    FUN_00719eb4(param_1,iVar2 + 1,uVar5 & 1);
  }
LAB_0071a6dc:
  iVar8 = iVar8 + 1;
  if (iVar6 < iVar8) goto code_r0x0071a6e2;
  goto LAB_0071a67a;
code_r0x0071a6e2:
  iVar2 = *(int *)(param_1 + 0x16c);
  goto LAB_0071a6e6;
}

// ---- FUN_0071a764  @ 0x71a764
undefined4 FUN_0071a764(int param_1,undefined4 *param_2)

{
  int iVar1;
  int iVar2;
  uint uVar3;
  
  iVar2 = *(int *)(param_1 + 0x1a4);
  if (*(int *)(param_1 + 0xec) != 0) {
    iVar1 = *(int *)(iVar2 + 0x44);
    if (iVar1 == 0) {
      FUN_0071a1f8(param_1,*(undefined4 *)(iVar2 + 0x48));
      iVar1 = *(int *)(param_1 + 0xec);
      *(int *)(iVar2 + 0x44) = iVar1;
      *(uint *)(iVar2 + 0x48) = *(int *)(iVar2 + 0x48) + 1U & 7;
    }
    *(int *)(iVar2 + 0x44) = iVar1 + -1;
  }
  uVar3 = *(uint *)(param_1 + 0x174);
  if (0 < *(int *)(param_1 + 0x13c)) {
    iVar1 = 0;
    do {
      iVar1 = iVar1 + 1;
      FUN_00719eb4(param_1,iVar2 + 0xcc,(int)*(short *)*param_2 >> (uVar3 & 0xff) & 1);
      param_2 = param_2 + 1;
    } while (iVar1 < *(int *)(param_1 + 0x13c));
  }
  return 1;
}

// ---- FUN_0071a7d0  @ 0x71a7d0
undefined4 FUN_0071a7d0(int param_1,int *param_2)

{
  int iVar1;
  int iVar2;
  int *piVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  int iVar7;
  int iVar8;
  int iVar9;
  uint uVar10;
  uint uVar11;
  int iVar12;
  int iVar13;
  int iVar14;
  
  iVar2 = *(int *)(param_1 + 0x1a4);
  if (*(int *)(param_1 + 0xec) != 0) {
    iVar4 = *(int *)(iVar2 + 0x44);
    if (iVar4 == 0) {
      FUN_0071a1f8(param_1,*(undefined4 *)(iVar2 + 0x48));
      iVar4 = *(int *)(param_1 + 0xec);
      *(int *)(iVar2 + 0x44) = iVar4;
      *(uint *)(iVar2 + 0x48) = *(int *)(iVar2 + 0x48) + 1U & 7;
    }
    *(int *)(iVar2 + 0x44) = iVar4 + -1;
  }
  iVar5 = *(int *)(param_1 + 0x17c);
  iVar1 = *(int *)(param_1 + 0x16c);
  iVar12 = *param_2;
  iVar6 = *(int *)(*(int *)(param_1 + 0x124) + 0x18);
  iVar4 = iVar1;
  if (0 < iVar1) {
    piVar3 = (int *)(iVar5 + iVar1 * 4);
    do {
      iVar7 = (int)*(short *)(iVar12 + *piVar3 * 2);
      if (iVar7 < 0) {
        iVar7 = -iVar7;
      }
    } while ((iVar7 >> (*(uint *)(param_1 + 0x174) & 0xff) == 0) &&
            (iVar4 = iVar4 + -1, piVar3 = piVar3 + -1, iVar4 != 0));
  }
  iVar7 = *(int *)(param_1 + 0x168);
  if (iVar7 <= iVar4) {
    iVar1 = iVar2 + (iVar6 + 0x22) * 4;
LAB_0071a856:
    iVar8 = *(int *)(iVar1 + 4) + (iVar7 + -1) * 3;
    iVar9 = iVar8 + 1;
    FUN_00719eb4(param_1,iVar8,0);
    piVar3 = (int *)(iVar5 + iVar7 * 4);
    do {
      iVar8 = (int)*(short *)(iVar12 + *piVar3 * 2);
      if (iVar8 < 0) {
        iVar8 = -iVar8 >> (*(uint *)(param_1 + 0x174) & 0xff);
        if (iVar8 != 0) goto code_r0x0071a8a6;
      }
      else {
        iVar8 = iVar8 >> (*(uint *)(param_1 + 0x174) & 0xff);
        if (iVar8 != 0) {
          FUN_00719eb4(param_1,iVar9,1);
          FUN_00719eb4(param_1,iVar2 + 0xcc,0);
          uVar11 = iVar8 - 1;
          if (uVar11 == 0) goto LAB_0071a8c8;
          goto LAB_0071a928;
        }
      }
      iVar7 = iVar7 + 1;
      FUN_00719eb4(param_1,iVar9,0);
      iVar9 = iVar9 + 3;
      piVar3 = piVar3 + 1;
    } while( true );
  }
LAB_0071a8de:
  if (iVar7 <= iVar1) {
    FUN_00719eb4(param_1,*(int *)(iVar2 + iVar6 * 4 + 0x8c) + (iVar7 + -1) * 3,1);
  }
  return 1;
code_r0x0071a8a6:
  FUN_00719eb4(param_1,iVar9,1);
  FUN_00719eb4(param_1,iVar2 + 0xcc,1);
  uVar11 = iVar8 - 1;
  if (uVar11 != 0) {
LAB_0071a928:
    FUN_00719eb4(param_1,iVar9 + 1,1);
    if (uVar11 >> 1 != 0) {
      FUN_00719eb4(param_1,iVar9 + 1,1);
      if ((int)(uint)*(byte *)(param_1 + iVar6 + 0xb8) < iVar7) {
        iVar8 = 0xd9;
      }
      else {
        iVar8 = 0xbd;
      }
      iVar9 = (int)uVar11 >> 2;
      iVar8 = *(int *)(iVar1 + 4) + iVar8;
      if (iVar9 == 0) {
        iVar13 = iVar8 + 0xe;
        FUN_00719eb4(param_1,iVar8,0);
        uVar10 = 1;
      }
      else {
        iVar14 = 2;
        do {
          iVar13 = iVar8;
          iVar14 = iVar14 * 2;
          FUN_00719eb4(param_1,iVar13,1);
          iVar9 = iVar9 >> 1;
          iVar8 = iVar13 + 1;
        } while (iVar9 != 0);
        uVar10 = iVar14 >> 1;
        FUN_00719eb4(param_1,iVar13 + 1,0);
        if (iVar14 == 0) goto LAB_0071a8d2;
        iVar13 = iVar13 + 0xf;
      }
      do {
        FUN_00719eb4(param_1,iVar13,(uVar10 & uVar11) != 0);
        uVar10 = (int)uVar10 >> 1;
      } while (uVar10 != 0);
      goto LAB_0071a8d2;
    }
  }
LAB_0071a8c8:
  FUN_00719eb4(param_1,iVar9 + 1,0);
LAB_0071a8d2:
  iVar7 = iVar7 + 1;
  if (iVar4 < iVar7) goto code_r0x0071a8da;
  goto LAB_0071a856;
code_r0x0071a8da:
  iVar1 = *(int *)(param_1 + 0x16c);
  goto LAB_0071a8de;
}

// ---- FUN_0071a9d0  @ 0x71a9d0
undefined4 FUN_0071a9d0(int param_1,undefined4 *param_2)

{
  int iVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  uint uVar7;
  uint uVar8;
  int iVar9;
  int iVar10;
  int iVar11;
  int iVar12;
  int *local_30;
  undefined4 *local_2c;
  
  iVar11 = *(int *)(param_1 + 0x1a4);
  if (*(int *)(param_1 + 0xec) != 0) {
    iVar3 = *(int *)(iVar11 + 0x44);
    if (iVar3 == 0) {
      FUN_0071a1f8(param_1,*(undefined4 *)(iVar11 + 0x48));
      iVar3 = *(int *)(param_1 + 0xec);
      *(int *)(iVar11 + 0x44) = iVar3;
      *(uint *)(iVar11 + 0x48) = *(int *)(iVar11 + 0x48) + 1U & 7;
    }
    *(int *)(iVar11 + 0x44) = iVar3 + -1;
  }
  if (0 < *(int *)(param_1 + 0x13c)) {
    local_30 = (int *)(param_1 + 0x13c);
    iVar3 = 0;
    local_2c = param_2;
    do {
      while( true ) {
        local_30 = local_30 + 1;
        iVar4 = *local_30;
        iVar1 = iVar4 + 0xc;
        iVar5 = iVar11 + (iVar4 + 8) * 4;
        iVar6 = iVar11 + iVar1 * 4;
        iVar12 = *(int *)(*(int *)(param_1 + iVar4 * 4 + 0x124) + 0x14);
        iVar10 = iVar12 + 0x12;
        iVar2 = (int)*(short *)*local_2c >> (*(uint *)(param_1 + 0x174) & 0xff);
        iVar4 = iVar2 - *(int *)(iVar5 + 4);
        iVar9 = *(int *)(iVar11 + iVar10 * 4 + 4) + *(int *)(iVar6 + 4);
        if (iVar4 != 0) break;
        FUN_00719eb4(param_1,iVar9,0);
        *(undefined4 *)(iVar6 + 4) = 0;
LAB_0071aa16:
        iVar3 = iVar3 + 1;
        local_2c = local_2c + 1;
        if (*(int *)(param_1 + 0x13c) <= iVar3) {
          return 1;
        }
      }
      *(int *)(iVar5 + 4) = iVar2;
      FUN_00719eb4(param_1,iVar9,1);
      if (iVar4 < 1) {
        iVar4 = -iVar4;
        FUN_00719eb4(param_1,iVar9 + 1,1);
        iVar2 = iVar9 + 3;
        *(undefined4 *)(iVar6 + 4) = 8;
      }
      else {
        iVar2 = iVar9 + 2;
        FUN_00719eb4(param_1,iVar9 + 1,0);
        *(undefined4 *)(iVar6 + 4) = 4;
      }
      uVar8 = iVar4 - 1;
      if (uVar8 == 0) {
        uVar7 = 0;
        iVar4 = 0;
      }
      else {
        FUN_00719eb4(param_1,iVar2,1);
        iVar2 = *(int *)(iVar11 + iVar10 * 4 + 4) + 0x14;
        iVar5 = (int)uVar8 >> 1;
        if (iVar5 == 0) {
          iVar4 = 1;
          uVar7 = 0;
        }
        else {
          iVar4 = 1;
          iVar6 = iVar2;
          do {
            iVar2 = iVar6 + 1;
            FUN_00719eb4(param_1,iVar6,1);
            iVar5 = iVar5 >> 1;
            iVar4 = iVar4 << 1;
            iVar6 = iVar2;
          } while (iVar5 != 0);
          uVar7 = iVar4 >> 1;
        }
      }
      iVar12 = iVar12 + param_1;
      FUN_00719eb4(param_1,iVar2,0);
      if (iVar4 < (1 << *(sbyte *)(iVar12 + 0x98)) >> 1) {
        *(undefined4 *)(iVar11 + iVar1 * 4 + 4) = 0;
      }
      else if ((1 << *(sbyte *)(iVar12 + 0xa8)) >> 1 < iVar4) {
        iVar4 = iVar11 + iVar1 * 4;
        *(int *)(iVar4 + 4) = *(int *)(iVar4 + 4) + 8;
      }
      if (uVar7 == 0) goto LAB_0071aa16;
      do {
        FUN_00719eb4(param_1,iVar2 + 0xe,(uVar7 & uVar8) != 0);
        uVar7 = (int)uVar7 >> 1;
      } while (uVar7 != 0);
      iVar3 = iVar3 + 1;
      local_2c = local_2c + 1;
    } while (iVar3 < *(int *)(param_1 + 0x13c));
  }
  return 1;
}

// ---- FUN_0071ab7c  @ 0x71ab7c
undefined1 FUN_0071ab7c(int *param_1)

{
  undefined1 uVar1;
  int iVar2;
  undefined4 *puVar3;
  
  puVar3 = (undefined4 *)param_1[6];
  iVar2 = puVar3[1];
  if (iVar2 == 0) {
    iVar2 = (*(code *)puVar3[3])();
    if (iVar2 == 0) {
      *(undefined4 *)(*param_1 + 0x14) = 0x19;
      (**(code **)*param_1)(param_1);
      iVar2 = puVar3[1];
    }
    else {
      iVar2 = puVar3[1];
    }
  }
  puVar3[1] = iVar2 + -1;
  uVar1 = *(undefined1 *)*puVar3;
  *puVar3 = (undefined1 *)*puVar3 + 1;
  return uVar1;
}

// ---- FUN_0071abb0  @ 0x71abb0
int FUN_0071abb0(int param_1,byte *param_2)

{
  byte bVar1;
  byte bVar2;
  uint uVar3;
  uint uVar4;
  int iVar5;
  uint uVar6;
  int iVar7;
  int iVar8;
  int iVar9;
  int iVar10;
  
  iVar10 = *(int *)(param_1 + 0x1d0);
  iVar5 = *(int *)(iVar10 + 0xc);
  if (iVar5 < 0x8000) {
    uVar6 = *(uint *)(iVar10 + 0x10);
    do {
      uVar3 = uVar6 - 1;
      *(uint *)(iVar10 + 0x10) = uVar3;
      uVar6 = uVar3;
      if ((int)uVar3 < 0) {
        if (*(int *)(param_1 + 0x1b4) == 0) {
          uVar4 = FUN_0071ab7c(param_1);
          if (uVar4 == 0xff) {
            do {
              iVar5 = FUN_0071ab7c(param_1);
            } while (iVar5 == 0xff);
            if (iVar5 != 0) {
              *(int *)(param_1 + 0x1b4) = iVar5;
              uVar4 = 0;
              uVar3 = *(uint *)(iVar10 + 0x10);
              goto LAB_0071abe6;
            }
          }
          uVar3 = *(uint *)(iVar10 + 0x10);
        }
        else {
          uVar4 = 0;
        }
LAB_0071abe6:
        uVar6 = uVar3 + 8;
        *(uint *)(iVar10 + 0x10) = uVar6;
        uVar4 = uVar4 | *(int *)(iVar10 + 8) << 8;
        *(uint *)(iVar10 + 8) = uVar4;
        if ((int)uVar6 < 0) {
          uVar6 = uVar3 + 9;
          *(uint *)(iVar10 + 0x10) = uVar6;
          if (uVar6 == 0) {
            iVar5 = 0x10000;
            *(undefined4 *)(iVar10 + 0xc) = 0x10000;
            goto LAB_0071ac34;
          }
        }
      }
      iVar5 = *(int *)(iVar10 + 0xc) * 2;
      *(int *)(iVar10 + 0xc) = iVar5;
    } while (iVar5 < 0x8000);
    uVar4 = *(uint *)(iVar10 + 8);
  }
  else {
    uVar6 = *(uint *)(iVar10 + 0x10);
    uVar4 = *(uint *)(iVar10 + 8);
  }
LAB_0071ac34:
  bVar1 = *param_2;
  uVar3 = (uint)bVar1;
  iVar8 = *(int *)(&jpeg_aritab + (uVar3 & 0x7f) * 4);
  iVar9 = iVar8 >> 0x10;
  iVar5 = iVar5 - iVar9;
  *(int *)(iVar10 + 0xc) = iVar5;
  iVar7 = iVar5 << (uVar6 & 0xff);
  bVar2 = (byte)((uint)iVar8 >> 8);
  if ((int)uVar4 < iVar7) {
    if (iVar5 < 0x8000) {
      if (iVar5 < iVar9) {
        *param_2 = (byte)iVar8 ^ bVar1 & 0x80;
        uVar3 = uVar3 ^ 0x80;
      }
      else {
        *param_2 = bVar2 ^ bVar1 & 0x80;
      }
    }
  }
  else {
    *(uint *)(iVar10 + 8) = uVar4 - iVar7;
    if (iVar9 <= iVar5) {
      uVar3 = uVar3 ^ 0x80;
    }
    *(int *)(iVar10 + 0xc) = iVar9;
    if (iVar5 < iVar9) {
      *param_2 = bVar2 ^ bVar1 & 0x80;
    }
    else {
      *param_2 = (byte)iVar8 ^ bVar1 & 0x80;
    }
  }
  return (int)uVar3 >> 7;
}

// ---- FUN_0071ad2c  @ 0x71ad2c
void FUN_0071ad2c(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  void *pvVar1;
  int iVar2;
  int iVar3;
  uint *puVar4;
  int iVar5;
  int iVar6;
  int *piVar7;
  int iVar8;
  uint uVar9;
  
  iVar5 = param_1[0x74];
  if (param_1[0x38] == 0) {
    if ((((param_1[0x66] != 0) || (param_1[0x68] != 0)) || (param_1[0x69] != 0)) ||
       ((param_1[0x67] < 0x40 && (param_1[0x67] != param_1[0x6c])))) {
      *(undefined4 *)(*param_1 + 0x14) = 0x7d;
      (**(code **)(*param_1 + 4))(param_1,0xffffffff,0x7d,*(code **)(*param_1 + 4),param_4);
    }
    *(undefined4 *)(iVar5 + 4) = 0x71b0ed;
    goto LAB_0071ae42;
  }
  iVar3 = param_1[0x66];
  if (iVar3 == 0) {
    if (param_1[0x67] != 0) goto LAB_0071ad54;
LAB_0071aefe:
    if (param_1[0x68] == 0) {
      iVar8 = param_1[0x69];
    }
    else {
      iVar8 = param_1[0x69];
      if (param_1[0x68] + -1 != iVar8) goto LAB_0071ad54;
    }
    if (0xd < iVar8) goto LAB_0071ad54;
  }
  else {
    if (((iVar3 <= param_1[0x67]) && (param_1[0x67] <= param_1[0x6c])) && (param_1[0x54] == 1))
    goto LAB_0071aefe;
LAB_0071ad54:
    *(undefined4 *)(*param_1 + 0x14) = 0x11;
    *(int *)(*param_1 + 0x18) = param_1[0x66];
    *(int *)(*param_1 + 0x1c) = param_1[0x67];
    *(int *)(*param_1 + 0x20) = param_1[0x68];
    *(int *)(*param_1 + 0x24) = param_1[0x69];
    (**(code **)*param_1)(param_1);
    iVar3 = param_1[0x66];
  }
  if (0 < param_1[0x54]) {
    piVar7 = param_1 + 0x54;
    iVar8 = 0;
    do {
      piVar7 = piVar7 + 1;
      iVar2 = param_1[0x28];
      iVar6 = *(int *)(*piVar7 + 4);
      if ((iVar3 != 0) && (*(int *)(iVar2 + iVar6 * 0x100) < 0)) {
        *(undefined4 *)(*param_1 + 0x14) = 0x76;
        *(int *)(*param_1 + 0x18) = iVar6;
        *(undefined4 *)(*param_1 + 0x1c) = 0;
        (**(code **)(*param_1 + 4))(param_1,0xffffffff);
        iVar3 = param_1[0x66];
      }
      if (iVar3 <= param_1[0x67]) {
        puVar4 = (uint *)(iVar2 + iVar6 * 0x100 + iVar3 * 4);
        do {
          if (param_1[0x68] != (*puVar4 & ~((int)*puVar4 >> 0x1f))) {
            *(undefined4 *)(*param_1 + 0x14) = 0x76;
            *(int *)(*param_1 + 0x18) = iVar6;
            *(int *)(*param_1 + 0x1c) = iVar3;
            (**(code **)(*param_1 + 4))(param_1,0xffffffff);
          }
          iVar3 = iVar3 + 1;
          *puVar4 = param_1[0x69];
          puVar4 = puVar4 + 1;
        } while (iVar3 <= param_1[0x67]);
        iVar3 = param_1[0x66];
      }
      iVar8 = iVar8 + 1;
    } while (iVar8 < param_1[0x54]);
  }
  if (param_1[0x68] == 0) {
    if (iVar3 == 0) {
      *(undefined4 *)(iVar5 + 4) = 0x71b669;
    }
    else {
      *(undefined4 *)(iVar5 + 4) = 0x71b51d;
    }
  }
  else if (iVar3 == 0) {
    *(undefined4 *)(iVar5 + 4) = 0x71b4c1;
  }
  else {
    *(undefined4 *)(iVar5 + 4) = 0x71b365;
  }
LAB_0071ae42:
  iVar3 = param_1[0x54];
  if (0 < iVar3) {
    iVar2 = 0;
    piVar7 = param_1 + 0x54;
    iVar8 = iVar5;
    do {
      piVar7 = piVar7 + 1;
      iVar6 = *piVar7;
      if (param_1[0x38] == 0) {
LAB_0071ae6a:
        uVar9 = *(uint *)(iVar6 + 0x14);
        if (uVar9 < 0x10) {
          pvVar1 = *(void **)(iVar5 + (uVar9 + 0xe) * 4);
          if (pvVar1 != (void *)0x0) goto LAB_0071ae80;
LAB_0071af34:
          pvVar1 = (void *)(**(code **)param_1[1])(param_1,1,0x40);
          *(void **)(iVar5 + (uVar9 + 0xe) * 4) = pvVar1;
          memset(pvVar1,0,0x40);
          *(undefined4 *)(iVar8 + 0x14) = 0;
          *(undefined4 *)(iVar8 + 0x24) = 0;
          if (param_1[0x38] != 0) goto LAB_0071af5c;
LAB_0071ae98:
          if (param_1[0x6c] != 0) goto LAB_0071ae9e;
        }
        else {
          *(undefined4 *)(*param_1 + 0x14) = 0x32;
          *(uint *)(*param_1 + 0x18) = uVar9;
          (**(code **)*param_1)(param_1);
          pvVar1 = *(void **)(iVar5 + (uVar9 + 0xe) * 4);
          if (pvVar1 == (void *)0x0) goto LAB_0071af34;
LAB_0071ae80:
          memset(pvVar1,0,0x40);
          *(undefined4 *)(iVar8 + 0x14) = 0;
          *(undefined4 *)(iVar8 + 0x24) = 0;
          if (param_1[0x38] == 0) goto LAB_0071ae98;
LAB_0071af5c:
          if (param_1[0x66] == 0) goto LAB_0071aebe;
          uVar9 = *(uint *)(iVar6 + 0x18);
          if (0xf < uVar9) goto LAB_0071af6e;
LAB_0071aea8:
          iVar3 = uVar9 + 0x1e;
          pvVar1 = *(void **)(iVar5 + iVar3 * 4);
joined_r0x0071af8c:
          if (pvVar1 == (void *)0x0) {
            pvVar1 = (void *)(**(code **)param_1[1])(param_1,1,0x100);
            *(void **)(iVar5 + iVar3 * 4) = pvVar1;
          }
          memset(pvVar1,0,0x100);
        }
LAB_0071aebe:
        iVar3 = param_1[0x54];
      }
      else {
        if (param_1[0x66] != 0) {
LAB_0071ae9e:
          uVar9 = *(uint *)(iVar6 + 0x18);
          if (uVar9 < 0x10) goto LAB_0071aea8;
LAB_0071af6e:
          *(undefined4 *)(*param_1 + 0x14) = 0x32;
          *(uint *)(*param_1 + 0x18) = uVar9;
          iVar3 = uVar9 + 0x1e;
          (**(code **)*param_1)(param_1);
          pvVar1 = *(void **)(iVar5 + iVar3 * 4);
          goto joined_r0x0071af8c;
        }
        if (param_1[0x68] == 0) goto LAB_0071ae6a;
      }
      iVar2 = iVar2 + 1;
      iVar8 = iVar8 + 4;
    } while (iVar2 < iVar3);
  }
  *(undefined4 *)(iVar5 + 8) = 0;
  *(undefined4 *)(iVar5 + 0xc) = 0;
  *(undefined4 *)(iVar5 + 0x10) = 0xfffffff0;
  *(int *)(iVar5 + 0x34) = param_1[0x46];
  return;
}

// ---- FUN_0071b034  @ 0x71b034
void FUN_0071b034(int *param_1)

{
  int iVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  int *piVar5;
  int iVar6;
  
  iVar4 = param_1[0x74];
  iVar1 = (**(code **)(param_1[0x73] + 8))();
  if (iVar1 == 0) {
    *(undefined4 *)(*param_1 + 0x14) = 0x19;
    (**(code **)*param_1)(param_1);
  }
  iVar1 = param_1[0x54];
  if (0 < iVar1) {
    iVar2 = 0;
    piVar5 = param_1 + 0x54;
    iVar3 = iVar4;
    do {
      piVar5 = piVar5 + 1;
      iVar6 = *piVar5;
      if (param_1[0x38] == 0) {
LAB_0071b072:
        memset(*(void **)(iVar4 + (*(int *)(iVar6 + 0x14) + 0xe) * 4),0,0x40);
        *(undefined4 *)(iVar3 + 0x14) = 0;
        *(undefined4 *)(iVar3 + 0x24) = 0;
        if (param_1[0x38] == 0) {
          iVar1 = param_1[0x6c];
        }
        else {
          iVar1 = param_1[0x66];
        }
        if (iVar1 != 0) {
LAB_0071b09a:
          memset(*(void **)(iVar4 + (*(int *)(iVar6 + 0x18) + 0x1e) * 4),0,0x100);
        }
        iVar1 = param_1[0x54];
      }
      else {
        if (param_1[0x66] != 0) goto LAB_0071b09a;
        if (param_1[0x68] == 0) goto LAB_0071b072;
      }
      iVar2 = iVar2 + 1;
      iVar3 = iVar3 + 4;
    } while (iVar2 < iVar1);
  }
  *(undefined4 *)(iVar4 + 8) = 0;
  *(undefined4 *)(iVar4 + 0xc) = 0;
  *(undefined4 *)(iVar4 + 0x10) = 0xfffffff0;
  *(int *)(iVar4 + 0x34) = param_1[0x46];
  return;
}

// ---- FUN_0071b0ec  @ 0x71b0ec
undefined4 FUN_0071b0ec(int *param_1,undefined4 *param_2)

{
  int iVar1;
  uint uVar2;
  int iVar3;
  undefined2 *puVar4;
  int iVar5;
  int iVar6;
  int iVar7;
  int iVar8;
  int iVar9;
  short sVar10;
  int iVar11;
  uint uVar12;
  int iVar13;
  int *local_44;
  int local_40;
  
  iVar8 = param_1[0x74];
  if (param_1[0x46] != 0) {
    iVar6 = *(int *)(iVar8 + 0x34);
    if (iVar6 == 0) {
      FUN_0071b034();
      iVar6 = *(int *)(iVar8 + 0x34);
    }
    *(int *)(iVar8 + 0x34) = iVar6 + -1;
  }
  if ((*(int *)(iVar8 + 0x10) != -1) && (iVar6 = param_1[0x6b], 0 < param_1[0x5b])) {
    local_44 = param_1 + 0x5b;
    local_40 = 0;
    do {
      puVar4 = (undefined2 *)*param_2;
      local_44 = local_44 + 1;
      iVar11 = *local_44;
      iVar5 = iVar11 + 8;
      iVar7 = iVar8 + iVar5 * 4;
      iVar13 = param_1[iVar11 + 0x55];
      iVar3 = *(int *)(iVar13 + 0x14);
      iVar9 = *(int *)(iVar8 + (iVar3 + 0xe) * 4) + *(int *)(iVar7 + 4);
      iVar1 = FUN_0071abb0(param_1,iVar9);
      if (iVar1 == 0) {
        *(undefined4 *)(iVar7 + 4) = 0;
        iVar3 = *(int *)(iVar8 + iVar11 * 4 + 0x14);
      }
      else {
        iVar1 = FUN_0071abb0(param_1,iVar9 + 1);
        iVar7 = iVar9 + 2 + iVar1;
        uVar2 = FUN_0071abb0(param_1,iVar7);
        if (uVar2 != 0) {
          iVar7 = *(int *)(iVar8 + (iVar3 + 0xe) * 4) + 0x14;
          while (iVar9 = FUN_0071abb0(param_1,iVar7), iVar9 != 0) {
            uVar2 = uVar2 * 2;
            if (uVar2 == 0x8000) {
LAB_0071b1c6:
              *(undefined4 *)(*param_1 + 0x14) = 0x75;
              (**(code **)(*param_1 + 4))(param_1,0xffffffff);
              *(undefined4 *)(iVar8 + 0x10) = 0xffffffff;
              return 1;
            }
            iVar7 = iVar7 + 1;
          }
        }
        if ((int)uVar2 < (1 << *(sbyte *)((int)param_1 + iVar3 + 0xe8)) >> 1) {
          *(undefined4 *)(iVar8 + iVar5 * 4 + 4) = 0;
        }
        else if ((1 << *(sbyte *)((int)param_1 + iVar3 + 0xf8)) >> 1 < (int)uVar2) {
          *(int *)(iVar8 + iVar5 * 4 + 4) = (iVar1 + 3) * 4;
        }
        else {
          *(int *)(iVar8 + iVar5 * 4 + 4) = (iVar1 + 1) * 4;
        }
        uVar12 = uVar2;
        while (uVar2 = (int)uVar2 >> 1, uVar2 != 0) {
          while (iVar3 = FUN_0071abb0(param_1,iVar7 + 0xe), iVar3 != 0) {
            uVar12 = uVar12 | uVar2;
            uVar2 = (int)uVar2 >> 1;
            if (uVar2 == 0) goto LAB_0071b2dc;
          }
        }
LAB_0071b2dc:
        iVar3 = uVar12 + 1;
        if (iVar1 != 0) {
          iVar3 = -iVar3;
        }
        iVar1 = iVar8 + (iVar11 + 4) * 4;
        iVar3 = *(int *)(iVar1 + 4) + iVar3;
        *(int *)(iVar1 + 4) = iVar3;
      }
      *puVar4 = (short)iVar3;
      if (param_1[0x6c] != 0) {
        iVar1 = *(int *)(iVar13 + 0x18);
        iVar3 = 0;
        iVar5 = iVar1 + 0x1e;
LAB_0071b192:
        iVar9 = *(int *)(iVar8 + iVar5 * 4) + iVar3 * 3;
        iVar7 = FUN_0071abb0(param_1,iVar9);
        if (iVar7 == 0) {
          iVar9 = iVar9 + 1;
          while( true ) {
            iVar3 = iVar3 + 1;
            iVar7 = FUN_0071abb0(param_1,iVar9);
            if (iVar7 != 0) break;
            iVar9 = iVar9 + 3;
            if (param_1[0x6c] <= iVar3) goto LAB_0071b1c6;
          }
          iVar7 = FUN_0071abb0(param_1,iVar8 + 0xb8);
          iVar9 = iVar9 + 1;
          uVar2 = FUN_0071abb0(param_1,iVar9);
          if ((uVar2 != 0) && (iVar11 = FUN_0071abb0(param_1,iVar9), iVar11 != 0)) {
            uVar2 = uVar2 << 1;
            if ((int)(uint)*(byte *)((int)param_1 + iVar1 + 0x108) < iVar3) {
              iVar9 = 0xd9;
            }
            else {
              iVar9 = 0xbd;
            }
            iVar9 = *(int *)(iVar8 + iVar5 * 4) + iVar9;
            while (iVar11 = FUN_0071abb0(param_1,iVar9), iVar11 != 0) {
              uVar2 = uVar2 * 2;
              if (uVar2 == 0x8000) goto LAB_0071b1c6;
              iVar9 = iVar9 + 1;
            }
          }
          uVar12 = uVar2;
          do {
            sVar10 = (short)uVar12;
            while( true ) {
              uVar2 = (int)uVar2 >> 1;
              if (uVar2 == 0) {
                sVar10 = sVar10 + 1;
                if (iVar7 != 0) {
                  sVar10 = -sVar10;
                }
                puVar4[*(int *)(iVar6 + iVar3 * 4)] = sVar10;
                if (param_1[0x6c] <= iVar3) goto LAB_0071b242;
                goto LAB_0071b192;
              }
              iVar11 = FUN_0071abb0(param_1,iVar9 + 0xe);
              if (iVar11 == 0) break;
              uVar12 = uVar12 | uVar2;
              sVar10 = (short)uVar12;
            }
          } while( true );
        }
      }
LAB_0071b242:
      local_40 = local_40 + 1;
      param_2 = param_2 + 1;
    } while (local_40 < param_1[0x5b]);
  }
  return 1;
}

// ---- FUN_0071b364  @ 0x71b364
undefined4 FUN_0071b364(int *param_1,int *param_2)

{
  int iVar1;
  int iVar2;
  int iVar3;
  ushort uVar4;
  ushort uVar5;
  int iVar6;
  int iVar7;
  uint uVar8;
  int *piVar9;
  int iVar10;
  int iVar11;
  ushort *puVar12;
  int iVar13;
  
  iVar13 = param_1[0x74];
  if (param_1[0x46] != 0) {
    iVar7 = *(int *)(iVar13 + 0x34);
    if (iVar7 == 0) {
      FUN_0071b034();
      iVar7 = *(int *)(iVar13 + 0x34);
    }
    *(int *)(iVar13 + 0x34) = iVar7 + -1;
  }
  if (*(int *)(iVar13 + 0x10) != -1) {
    iVar6 = param_1[0x6b];
    iVar1 = param_1[0x67];
    iVar11 = *param_2;
    iVar3 = *(int *)(param_1[0x55] + 0x18);
    uVar8 = param_1[0x69];
    iVar7 = iVar1;
    if ((0 < iVar1) && (*(short *)(iVar11 + *(int *)(iVar6 + iVar1 * 4) * 2) == 0)) {
      piVar9 = (int *)(iVar6 + (iVar1 + -1) * 4);
      do {
        iVar7 = iVar7 + -1;
        if (iVar7 == 0) break;
        iVar10 = *piVar9;
        piVar9 = piVar9 + -1;
      } while (*(short *)(iVar11 + iVar10 * 2) == 0);
    }
    iVar10 = param_1[0x66];
    if (iVar10 <= iVar1) {
      do {
        iVar1 = (iVar10 + -1) * 3 + *(int *)(iVar13 + (iVar3 + 0x1e) * 4);
        if ((iVar7 < iVar10) && (iVar2 = FUN_0071abb0(param_1,iVar1), iVar2 != 0)) {
          return 1;
        }
        iVar1 = iVar1 + 1;
        piVar9 = (int *)(iVar6 + iVar10 * 4);
        while( true ) {
          puVar12 = (ushort *)(iVar11 + *piVar9 * 2);
          uVar4 = (ushort)(1 << (uVar8 & 0xff));
          uVar5 = (ushort)(-1 << (uVar8 & 0xff));
          if (*(short *)(iVar11 + *piVar9 * 2) != 0) break;
          iVar2 = FUN_0071abb0(param_1,iVar1);
          if (iVar2 != 0) {
            iVar1 = FUN_0071abb0(param_1,iVar13 + 0xb8);
            if (iVar1 == 0) {
              *puVar12 = uVar4;
            }
            else {
              *puVar12 = uVar5;
            }
            goto LAB_0071b494;
          }
          iVar10 = iVar10 + 1;
          iVar1 = iVar1 + 3;
          piVar9 = piVar9 + 1;
          if (param_1[0x67] < iVar10) {
            *(undefined4 *)(*param_1 + 0x14) = 0x75;
            (**(code **)(*param_1 + 4))(param_1,0xffffffff);
            *(undefined4 *)(iVar13 + 0x10) = 0xffffffff;
            return 1;
          }
        }
        iVar1 = FUN_0071abb0(param_1,iVar1 + 1);
        if (iVar1 != 0) {
          if (-1 < (int)((uint)*puVar12 << 0x10)) {
            uVar5 = uVar4;
          }
          *puVar12 = *puVar12 + uVar5;
        }
LAB_0071b494:
        iVar10 = iVar10 + 1;
      } while (iVar10 <= param_1[0x67]);
    }
  }
  return 1;
}

// ---- FUN_0071b4c0  @ 0x71b4c0
undefined4 FUN_0071b4c0(int param_1,int param_2)

{
  int iVar1;
  int iVar2;
  uint uVar3;
  ushort *puVar4;
  int iVar5;
  
  iVar5 = *(int *)(param_1 + 0x1d0);
  if (*(int *)(param_1 + 0x118) != 0) {
    iVar2 = *(int *)(iVar5 + 0x34);
    if (iVar2 == 0) {
      FUN_0071b034();
      iVar2 = *(int *)(iVar5 + 0x34);
    }
    *(int *)(iVar5 + 0x34) = iVar2 + -1;
  }
  uVar3 = *(uint *)(param_1 + 0x1a4);
  if (0 < *(int *)(param_1 + 0x16c)) {
    iVar2 = 0;
    do {
      iVar1 = FUN_0071abb0(param_1,iVar5 + 0xb8);
      if (iVar1 != 0) {
        puVar4 = *(ushort **)(param_2 + iVar2 * 4);
        *puVar4 = *puVar4 | (ushort)(1 << (uVar3 & 0xff));
      }
      iVar2 = iVar2 + 1;
    } while (iVar2 < *(int *)(param_1 + 0x16c));
  }
  return 1;
}

// ---- FUN_0071b51c  @ 0x71b51c
undefined4 FUN_0071b51c(int *param_1,int *param_2)

{
  int iVar1;
  uint uVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  int iVar7;
  uint uVar8;
  int iVar9;
  int iVar10;
  int iVar11;
  
  iVar7 = param_1[0x74];
  if (param_1[0x46] != 0) {
    iVar4 = *(int *)(iVar7 + 0x34);
    if (iVar4 == 0) {
      FUN_0071b034();
      iVar4 = *(int *)(iVar7 + 0x34);
    }
    *(int *)(iVar7 + 0x34) = iVar4 + -1;
  }
  if (*(int *)(iVar7 + 0x10) != -1) {
    iVar6 = param_1[0x66];
    iVar4 = *param_2;
    iVar11 = param_1[0x6b];
    iVar5 = *(int *)(param_1[0x55] + 0x18);
    if (iVar6 <= param_1[0x67]) {
      iVar10 = iVar5 + 0x1e;
      do {
        iVar9 = (iVar6 + -1) * 3 + *(int *)(iVar7 + iVar10 * 4);
        iVar1 = FUN_0071abb0(param_1,iVar9);
        if (iVar1 != 0) {
          return 1;
        }
        iVar9 = iVar9 + 1;
        while (iVar1 = FUN_0071abb0(param_1,iVar9), iVar1 == 0) {
          iVar6 = iVar6 + 1;
          iVar9 = iVar9 + 3;
          if (param_1[0x67] < iVar6) goto LAB_0071b59a;
        }
        iVar1 = FUN_0071abb0(param_1,iVar7 + 0xb8);
        iVar9 = iVar9 + 1;
        uVar2 = FUN_0071abb0(param_1,iVar9);
        if ((uVar2 != 0) && (iVar3 = FUN_0071abb0(param_1,iVar9), iVar3 != 0)) {
          uVar2 = uVar2 << 1;
          if ((int)(uint)*(byte *)((int)param_1 + iVar5 + 0x108) < iVar6) {
            iVar9 = 0xd9;
          }
          else {
            iVar9 = 0xbd;
          }
          iVar9 = *(int *)(iVar7 + iVar10 * 4) + iVar9;
          while (iVar3 = FUN_0071abb0(param_1,iVar9), iVar3 != 0) {
            uVar2 = uVar2 * 2;
            if (uVar2 == 0x8000) {
LAB_0071b59a:
              *(undefined4 *)(*param_1 + 0x14) = 0x75;
              (**(code **)(*param_1 + 4))(param_1,0xffffffff);
              *(undefined4 *)(iVar7 + 0x10) = 0xffffffff;
              return 1;
            }
            iVar9 = iVar9 + 1;
          }
        }
        uVar8 = uVar2;
        while (uVar2 = (int)uVar2 >> 1, uVar2 != 0) {
          while (iVar3 = FUN_0071abb0(param_1,iVar9 + 0xe), iVar3 != 0) {
            uVar8 = uVar8 | uVar2;
            uVar2 = (int)uVar2 >> 1;
            if (uVar2 == 0) goto LAB_0071b5f2;
          }
        }
LAB_0071b5f2:
        iVar9 = uVar8 + 1;
        if (iVar1 != 0) {
          iVar9 = -iVar9;
        }
        iVar1 = iVar6 * 4;
        iVar6 = iVar6 + 1;
        *(short *)(iVar4 + *(int *)(iVar11 + iVar1) * 2) = (short)(iVar9 << (param_1[0x69] & 0xffU))
        ;
      } while (iVar6 <= param_1[0x67]);
    }
  }
  return 1;
}

// ---- FUN_0071b668  @ 0x71b668
undefined4 FUN_0071b668(int *param_1,undefined4 *param_2)

{
  int iVar1;
  uint uVar2;
  undefined2 *puVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  int iVar7;
  int iVar8;
  int iVar9;
  int iVar10;
  uint uVar11;
  int *local_38;
  undefined4 *local_34;
  
  iVar9 = param_1[0x74];
  if (param_1[0x46] != 0) {
    iVar5 = *(int *)(iVar9 + 0x34);
    if (iVar5 == 0) {
      FUN_0071b034();
      iVar5 = *(int *)(iVar9 + 0x34);
    }
    *(int *)(iVar9 + 0x34) = iVar5 + -1;
  }
  if ((*(int *)(iVar9 + 0x10) != -1) && (0 < param_1[0x5b])) {
    iVar5 = 0;
    local_38 = param_1 + 0x5b;
    local_34 = param_2;
    do {
      while( true ) {
        puVar3 = (undefined2 *)*local_34;
        local_38 = local_38 + 1;
        iVar8 = *local_38;
        iVar4 = iVar8 + 8;
        iVar6 = iVar9 + iVar4 * 4;
        iVar10 = *(int *)(param_1[iVar8 + 0x55] + 0x14);
        iVar7 = *(int *)(iVar9 + (iVar10 + 0xe) * 4) + *(int *)(iVar6 + 4);
        iVar1 = FUN_0071abb0(param_1,iVar7);
        if (iVar1 == 0) break;
        iVar1 = FUN_0071abb0(param_1,iVar7 + 1);
        iVar6 = iVar7 + 2 + iVar1;
        uVar2 = FUN_0071abb0(param_1,iVar6);
        if (uVar2 != 0) {
          iVar6 = *(int *)(iVar9 + (iVar10 + 0xe) * 4) + 0x14;
          while (iVar7 = FUN_0071abb0(param_1,iVar6), iVar7 != 0) {
            uVar2 = uVar2 * 2;
            if (uVar2 == 0x8000) {
              *(undefined4 *)(*param_1 + 0x14) = 0x75;
              (**(code **)(*param_1 + 4))(param_1,0xffffffff);
              *(undefined4 *)(iVar9 + 0x10) = 0xffffffff;
              return 1;
            }
            iVar6 = iVar6 + 1;
          }
        }
        if ((int)uVar2 < (1 << *(sbyte *)((int)param_1 + iVar10 + 0xe8)) >> 1) {
          *(undefined4 *)(iVar9 + iVar4 * 4 + 4) = 0;
        }
        else if ((1 << *(sbyte *)((int)param_1 + iVar10 + 0xf8)) >> 1 < (int)uVar2) {
          *(int *)(iVar9 + iVar4 * 4 + 4) = (iVar1 + 3) * 4;
        }
        else {
          *(int *)(iVar9 + iVar4 * 4 + 4) = (iVar1 + 1) * 4;
        }
        uVar11 = uVar2;
        while (uVar2 = (int)uVar2 >> 1, uVar2 != 0) {
          while (iVar4 = FUN_0071abb0(param_1,iVar6 + 0xe), iVar4 != 0) {
            uVar11 = uVar11 | uVar2;
            uVar2 = (int)uVar2 >> 1;
            if (uVar2 == 0) goto LAB_0071b77a;
          }
        }
LAB_0071b77a:
        iVar4 = uVar11 + 1;
        if (iVar1 != 0) {
          iVar4 = -iVar4;
        }
        iVar5 = iVar5 + 1;
        iVar1 = iVar9 + (iVar8 + 4) * 4;
        iVar4 = *(int *)(iVar1 + 4) + iVar4;
        *(int *)(iVar1 + 4) = iVar4;
        *puVar3 = (short)(iVar4 << (param_1[0x69] & 0xffU));
        local_34 = local_34 + 1;
        if (param_1[0x5b] <= iVar5) {
          return 1;
        }
      }
      *(undefined4 *)(iVar6 + 4) = 0;
      iVar5 = iVar5 + 1;
      *puVar3 = (short)(*(int *)(iVar9 + iVar8 * 4 + 0x14) << (param_1[0x69] & 0xffU));
      local_34 = local_34 + 1;
    } while (iVar5 < param_1[0x5b]);
  }
  return 1;
}

// ---- FUN_0071b858  @ 0x71b858
uint FUN_0071b858(undefined4 *param_1,uint param_2,undefined4 *param_3,undefined4 *param_4)

{
  void *__dest;
  char *pcVar1;
  undefined4 uVar2;
  int iVar3;
  uint uVar4;
  ushort local_22 [3];
  
  param_1[4] = param_2;
  if (param_4 != (undefined4 *)0x0) {
    *param_4 = 0;
  }
  if (param_4 != (undefined4 *)0x0) {
    param_2 = param_1[4];
  }
  if ((param_1[3] & 0x800) == 0) {
    iVar3 = (*(code *)param_1[0x9c])(param_1[0x99],param_2,0);
    if (iVar3 != param_1[4]) {
      TIFFErrorExt(param_1[0x99],"TIFFFetchDirectory","%s: Seek error accessing TIFF directory",
                   *param_1);
      return 0;
    }
    iVar3 = (*(code *)param_1[0x9a])(param_1[0x99],local_22,2);
    if (iVar3 != 2) {
      TIFFErrorExt(param_1[0x99],"TIFFFetchDirectory","%s: Can not read TIFF directory count",
                   *param_1);
      return 0;
    }
    if ((param_1[3] & 0x80) != 0) {
      TIFFSwabShort(local_22);
    }
    __dest = (void *)_TIFFCheckMalloc(param_1,local_22[0],0xc,"to read TIFF directory");
    if (__dest == (void *)0x0) {
      return 0;
    }
    iVar3 = (*(code *)param_1[0x9a])(param_1[0x99],__dest,(uint)local_22[0] * 0xc);
    uVar4 = (uint)local_22[0];
    if (iVar3 != uVar4 * 0xc) {
      uVar2 = *param_1;
      pcVar1 = "%.100s: Can not read TIFF directory";
      goto LAB_0071ba68;
    }
    if (param_4 == (undefined4 *)0x0) goto LAB_0071b974;
    (*(code *)param_1[0x9a])(param_1[0x99],param_4,4);
LAB_0071b964:
    if ((param_1[3] & 0x80) != 0) {
      TIFFSwabLong(param_4);
      uVar4 = (uint)local_22[0];
      goto LAB_0071b974;
    }
  }
  else {
    if (((uint)param_1[0x96] < 2) || (param_1[0x96] - 2 < param_2)) {
      TIFFErrorExt(param_1[0x99],"TIFFFetchDirectory","%s: Can not read TIFF directory count",
                   *param_1);
      return 0;
    }
    _TIFFmemcpy(local_22,(void *)(param_1[0x95] + param_2),2);
    if ((param_1[3] & 0x80) != 0) {
      TIFFSwabShort(local_22);
    }
    __dest = (void *)_TIFFCheckMalloc(param_1,local_22[0],0xc,"to read TIFF directory");
    if (__dest == (void *)0x0) {
      return 0;
    }
    iVar3 = param_2 + 2;
    if ((uint)param_1[0x96] < iVar3 + (uint)local_22[0] * 0xc) {
      uVar2 = *param_1;
      pcVar1 = "%s: Can not read TIFF directory";
LAB_0071ba68:
      TIFFErrorExt(param_1[0x99],"TIFFFetchDirectory",pcVar1,uVar2);
      _TIFFfree(__dest);
      return 0;
    }
    _TIFFmemcpy(__dest,(void *)(param_1[0x95] + iVar3),(uint)local_22[0] * 0xc);
    if (param_4 != (undefined4 *)0x0) {
      iVar3 = iVar3 + (uint)local_22[0] * 0xc;
      if (iVar3 + 4U <= (uint)param_1[0x96]) {
        _TIFFmemcpy(param_4,(void *)(param_1[0x95] + iVar3),4);
      }
      goto LAB_0071b964;
    }
  }
  uVar4 = (uint)local_22[0];
LAB_0071b974:
  *param_3 = __dest;
  return uVar4;
}

// ---- FUN_0071bb30  @ 0x71bb30
undefined4 FUN_0071bb30(undefined4 *param_1,undefined2 *param_2,uint param_3)

{
  undefined4 uVar1;
  int iVar2;
  undefined4 uVar3;
  
  if (*(uint *)(param_2 + 2) < param_3) {
    uVar3 = *param_1;
    uVar1 = param_1[0x99];
    iVar2 = TIFFFieldWithTag(param_1,*param_2);
    TIFFWarningExt(uVar1,uVar3,"incorrect count for field \"%s\" (%u, expecting %u); tag ignored",
                   *(undefined4 *)(iVar2 + 0x10),*(undefined4 *)(param_2 + 2),param_3);
    uVar1 = 0;
  }
  else {
    if (param_3 < *(uint *)(param_2 + 2)) {
      uVar3 = *param_1;
      uVar1 = param_1[0x99];
      iVar2 = TIFFFieldWithTag(param_1,*param_2);
      TIFFWarningExt(uVar1,uVar3,"incorrect count for field \"%s\" (%u, expecting %u); tag trimmed",
                     *(undefined4 *)(iVar2 + 0x10),*(undefined4 *)(param_2 + 2),param_3);
    }
    uVar1 = 1;
  }
  return uVar1;
}

// ---- FUN_0071bbd8  @ 0x71bbd8
undefined4
FUN_0071bbd8(undefined4 *param_1,undefined2 *param_2,undefined4 param_3,int param_4,float *param_5)

{
  int iVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  uint in_fpscr;
  float fVar4;
  float fVar5;
  
  if (param_4 == 0) {
    uVar3 = *param_1;
    uVar2 = param_1[0x99];
    iVar1 = TIFFFieldWithTag(param_1,*param_2);
    TIFFErrorExt(uVar2,uVar3,"%s: Rational with zero denominator (num = %u)",
                 *(undefined4 *)(iVar1 + 0x10),param_3);
    uVar2 = 0;
  }
  else {
    if (param_2[1] == 5) {
      fVar4 = (float)VectorUnsignedToFloat(param_3,(byte)(in_fpscr >> 0x16) & 3);
      fVar5 = (float)VectorUnsignedToFloat(param_4,(byte)(in_fpscr >> 0x16) & 3);
    }
    else {
      fVar4 = (float)VectorSignedToFloat(param_3,(byte)(in_fpscr >> 0x16) & 3);
      fVar5 = (float)VectorSignedToFloat(param_4,(byte)(in_fpscr >> 0x16) & 3);
    }
    uVar2 = 1;
    *param_5 = fVar4 / fVar5;
  }
  return uVar2;
}

// ---- FUN_0071bc68  @ 0x71bc68
uint FUN_0071bc68(undefined4 *param_1,undefined2 *param_2,void *param_3)

{
  int iVar1;
  uint uVar2;
  uint uVar3;
  int iVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  uint __n;
  
  iVar1 = TIFFDataWidth(param_2[1]);
  iVar4 = *(int *)(param_2 + 2);
  if (iVar4 == 0 || iVar1 == 0) {
LAB_0071bca8:
    uVar6 = param_1[0x99];
    uVar5 = *param_1;
    iVar1 = TIFFFieldWithTag(param_1,*param_2);
    TIFFErrorExt(uVar6,uVar5,"Error fetching data for field \"%s\"",*(undefined4 *)(iVar1 + 0x10));
    return 0;
  }
  __n = iVar4 * iVar1;
  iVar1 = __udivsi3(__n,iVar1);
  if (iVar4 != iVar1) goto LAB_0071bca8;
  if ((param_1[3] & 0x800) == 0) {
    iVar1 = (*(code *)param_1[0x9c])(param_1[0x99],*(undefined4 *)(param_2 + 4));
    if ((iVar1 != *(int *)(param_2 + 4)) ||
       (uVar2 = (*(code *)param_1[0x9a])(param_1[0x99],param_3,__n), __n - uVar2 != 0))
    goto LAB_0071bca8;
  }
  else {
    uVar3 = *(uint *)(param_2 + 4);
    uVar2 = __n + uVar3;
    if ((CARRY4(__n,uVar3)) || ((uVar2 <= __n && __n - uVar2 != 0 || ((uint)param_1[0x96] < uVar2)))
       ) goto LAB_0071bca8;
    _TIFFmemcpy(param_3,(void *)(param_1[0x95] + uVar3),__n);
    uVar2 = __n;
  }
  if ((param_1[3] & 0x80) == 0) {
    return uVar2;
  }
  switch(param_2[1]) {
  case 3:
    goto LAB_0071bde0;
  case 4:
    goto LAB_0071bdd0;
  case 5:
    goto LAB_0071bdbc;
  case 6:
    break;
  case 7:
    break;
  case 8:
LAB_0071bde0:
    TIFFSwabArrayOfShort(param_3,*(undefined4 *)(param_2 + 2));
    break;
  case 9:
    goto LAB_0071bdd0;
  case 10:
LAB_0071bdbc:
    TIFFSwabArrayOfLong(param_3,*(int *)(param_2 + 2) << 1);
    break;
  case 0xb:
LAB_0071bdd0:
    TIFFSwabArrayOfLong(param_3,*(undefined4 *)(param_2 + 2));
    break;
  case 0xc:
    TIFFSwabArrayOfDouble(param_3,*(undefined4 *)(param_2 + 2));
  }
  return uVar2;
}

// ---- FUN_0071bdf4  @ 0x71bdf4
bool FUN_0071bdf4(int param_1,int param_2,undefined1 *param_3)

{
  int iVar1;
  uint uVar2;
  
  uVar2 = *(uint *)(param_2 + 4);
  if (4 < uVar2) {
    iVar1 = FUN_0071bc68();
    return iVar1 != 0;
  }
  if (*(short *)(param_1 + 0x1b8) == 0x4d4d) {
    switch(uVar2) {
    case 1:
      goto LAB_0071bec4;
    case 2:
      goto LAB_0071bebc;
    case 3:
      break;
    case 4:
      param_3[3] = (char)*(undefined4 *)(param_2 + 8);
      break;
    default:
      goto switchD_0071be2c_default;
    }
    param_3[2] = (char)((uint)*(undefined4 *)(param_2 + 8) >> 8);
LAB_0071bebc:
    param_3[1] = (char)*(undefined2 *)(param_2 + 10);
LAB_0071bec4:
    *param_3 = *(undefined1 *)(param_2 + 0xb);
    return true;
  }
  switch(uVar2) {
  case 1:
    goto LAB_0071be60;
  case 2:
    goto LAB_0071be54;
  case 3:
    break;
  case 4:
    param_3[3] = *(undefined1 *)(param_2 + 0xb);
    break;
  default:
switchD_0071be2c_default:
    return true;
  }
  param_3[2] = (char)*(undefined2 *)(param_2 + 10);
LAB_0071be54:
  param_3[1] = (char)((uint)*(undefined4 *)(param_2 + 8) >> 8);
LAB_0071be60:
  *param_3 = (char)*(undefined4 *)(param_2 + 8);
  return true;
}

// ---- FUN_0071bed4  @ 0x71bed4
bool FUN_0071bed4(int param_1,int param_2,undefined2 *param_3)

{
  int iVar1;
  uint uVar2;
  undefined4 uVar3;
  
  uVar2 = *(uint *)(param_2 + 4);
  if (2 < uVar2) {
    iVar1 = FUN_0071bc68();
    return iVar1 != 0;
  }
  if (*(short *)(param_1 + 0x1b8) != 0x4d4d) {
    if (uVar2 == 1) {
      uVar3 = *(undefined4 *)(param_2 + 8);
    }
    else {
      if (uVar2 != 2) {
        return true;
      }
      uVar3 = *(undefined4 *)(param_2 + 8);
      param_3[1] = (short)((uint)uVar3 >> 0x10);
    }
    *param_3 = (short)uVar3;
    return true;
  }
  if (uVar2 == 1) {
    uVar3 = *(undefined4 *)(param_2 + 8);
  }
  else {
    if (uVar2 != 2) {
      return true;
    }
    uVar3 = *(undefined4 *)(param_2 + 8);
    param_3[1] = (short)uVar3;
  }
  *param_3 = (short)((uint)uVar3 >> 0x10);
  return true;
}

// ---- FUN_0071bf74  @ 0x71bf74
undefined4 FUN_0071bf74(undefined4 *param_1,undefined2 *param_2,short *param_3)

{
  int iVar1;
  short *psVar2;
  short sVar3;
  uint uVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  uint uVar7;
  undefined4 uVar8;
  short local_34 [12];
  
  uVar7 = (uint)*(ushort *)((int)param_1 + 0x62);
  iVar1 = FUN_0071bb30(param_1,param_2,uVar7);
  if (iVar1 == 0) {
LAB_0071c084:
    uVar6 = 0;
  }
  else {
    if (*(uint *)(param_2 + 2) < 0xb) {
      psVar2 = local_34;
    }
    else {
      psVar2 = (short *)_TIFFCheckMalloc(param_1,*(uint *)(param_2 + 2),2,
                                         "to fetch per-sample values");
      if (psVar2 == (short *)0x0) goto LAB_0071c084;
    }
    iVar1 = FUN_0071bed4(param_1,param_2,psVar2);
    if (iVar1 == 0) {
      uVar6 = 0;
    }
    else {
      if ((int)*(uint *)(param_2 + 2) <= (int)uVar7) {
        uVar7 = *(uint *)(param_2 + 2);
      }
      if ((int)uVar7 < 2) {
        sVar3 = *psVar2;
LAB_0071c05c:
        *param_3 = sVar3;
        uVar6 = 1;
      }
      else {
        sVar3 = psVar2[1];
        if (*psVar2 == sVar3) {
          uVar4 = 1;
          do {
            uVar4 = uVar4 + 1 & 0xffff;
            if ((int)uVar7 <= (int)uVar4) goto LAB_0071c05c;
          } while (psVar2[uVar4] == sVar3);
        }
        uVar8 = param_1[0x99];
        uVar6 = 0;
        uVar5 = *param_1;
        iVar1 = TIFFFieldWithTag(param_1,*param_2);
        TIFFErrorExt(uVar8,uVar5,"Cannot handle different per-sample values for field \"%s\"",
                     *(undefined4 *)(iVar1 + 0x10));
      }
    }
    if (psVar2 != local_34) {
      _TIFFfree(psVar2);
    }
  }
  return uVar6;
}

// ---- FUN_0071c0a4  @ 0x71c0a4
bool FUN_0071c0a4(undefined4 param_1,int param_2,undefined4 *param_3)

{
  int iVar1;
  
  if (*(int *)(param_2 + 4) != 1) {
    iVar1 = FUN_0071bc68();
    return iVar1 != 0;
  }
  *param_3 = *(undefined4 *)(param_2 + 8);
  return true;
}

// ---- FUN_0071c0d8  @ 0x71c0d8
undefined4 FUN_0071c0d8(undefined4 *param_1,undefined2 *param_2,int *param_3)

{
  int iVar1;
  int *piVar2;
  uint uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  uint uVar6;
  undefined4 uVar7;
  int local_48 [11];
  
  uVar6 = (uint)*(ushort *)((int)param_1 + 0x62);
  piVar2 = local_48;
  iVar1 = FUN_0071bb30(param_1,param_2,uVar6);
  if ((iVar1 == 0) ||
     ((10 < *(uint *)(param_2 + 2) &&
      (piVar2 = (int *)_TIFFCheckMalloc(param_1,*(uint *)(param_2 + 2),4,
                                        "to fetch per-sample values"), piVar2 == (int *)0x0)))) {
    uVar5 = 0;
  }
  else {
    iVar1 = FUN_0071c0a4(param_1,param_2,piVar2);
    if (iVar1 == 0) {
      uVar5 = 0;
    }
    else {
      if ((int)*(uint *)(param_2 + 2) <= (int)uVar6) {
        uVar6 = *(uint *)(param_2 + 2);
      }
      if ((int)uVar6 < 2) {
        iVar1 = *piVar2;
LAB_0071c1bc:
        *param_3 = iVar1;
        uVar5 = 1;
      }
      else {
        iVar1 = piVar2[1];
        if (iVar1 == *piVar2) {
          uVar3 = 1;
          do {
            uVar3 = uVar3 + 1 & 0xffff;
            if ((int)uVar6 <= (int)uVar3) goto LAB_0071c1bc;
          } while (piVar2[uVar3] == iVar1);
        }
        uVar7 = param_1[0x99];
        uVar5 = 0;
        uVar4 = *param_1;
        iVar1 = TIFFFieldWithTag(param_1,*param_2);
        TIFFErrorExt(uVar7,uVar4,"Cannot handle different per-sample values for field \"%s\"",
                     *(undefined4 *)(iVar1 + 0x10));
      }
    }
    if (piVar2 != local_48) {
      _TIFFfree(piVar2);
    }
  }
  return uVar5;
}

// ---- FUN_0071c204  @ 0x71c204
int FUN_0071c204(undefined4 param_1,int param_2,int param_3,int *param_4)

{
  ushort *puVar1;
  int iVar2;
  int iVar3;
  ushort *puVar4;
  int iVar5;
  uint *__s;
  
  FUN_0071bb30();
  __s = (uint *)*param_4;
  if (__s == (uint *)0x0) {
    __s = (uint *)_TIFFCheckMalloc(param_1,param_3,4,"for strip array");
    *param_4 = (int)__s;
    if (__s == (uint *)0x0) {
      return 0;
    }
  }
  _TIFFmemset(__s,0,param_3 << 2);
  if (*(short *)(param_2 + 2) == 3) {
    puVar1 = (ushort *)_TIFFCheckMalloc(param_1,*(undefined4 *)(param_2 + 4),2,"to fetch strip tag")
    ;
    if (puVar1 == (ushort *)0x0) {
      return 0;
    }
    iVar2 = FUN_0071bed4(param_1,param_2,puVar1);
    if (((iVar2 != 0) && (0 < param_3)) && (0 < *(int *)(param_2 + 4))) {
      iVar3 = 0;
      puVar4 = puVar1;
      do {
        iVar3 = iVar3 + 1;
        *__s = (uint)*puVar4;
        if (iVar3 == param_3) break;
        puVar4 = puVar4 + 1;
        __s = __s + 1;
      } while (iVar3 < *(int *)(param_2 + 4));
    }
  }
  else {
    if (*(int *)(param_2 + 4) == param_3) {
      iVar2 = FUN_0071c0a4(param_1,param_2,__s);
      return iVar2;
    }
    puVar1 = (ushort *)_TIFFCheckMalloc(param_1,*(int *)(param_2 + 4),4,"to fetch strip tag");
    if (puVar1 == (ushort *)0x0) {
      return 0;
    }
    iVar2 = FUN_0071c0a4(param_1,param_2,puVar1);
    if (((iVar2 != 0) && (0 < param_3)) && (0 < *(int *)(param_2 + 4))) {
      iVar5 = 0;
      iVar3 = 0;
      do {
        iVar3 = iVar3 + 1;
        *(undefined4 *)((int)__s + iVar5) = *(undefined4 *)((int)puVar1 + iVar5);
        if (iVar3 == param_3) break;
        iVar5 = iVar5 + 4;
      } while (iVar3 < *(int *)(param_2 + 4));
    }
  }
  _TIFFfree(puVar1);
  return iVar2;
}

// ---- FUN_0071c3a8  @ 0x71c3a8
int FUN_0071c3a8(undefined4 param_1,int param_2,int param_3)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  int iVar3;
  undefined4 uVar4;
  undefined4 *puVar5;
  uint uVar6;
  
  uVar4 = *(undefined4 *)(param_2 + 4);
  uVar1 = TIFFDataWidth(*(undefined2 *)(param_2 + 2));
  puVar2 = (undefined4 *)_TIFFCheckMalloc(param_1,uVar4,uVar1,"to fetch array of rationals");
  if (puVar2 == (undefined4 *)0x0) {
    iVar3 = 0;
  }
  else {
    iVar3 = FUN_0071bc68(param_1,param_2,puVar2);
    if ((iVar3 == 0) || (*(int *)(param_2 + 4) == 0)) {
      iVar3 = 0;
    }
    else {
      uVar6 = 0;
      puVar5 = puVar2;
      do {
        iVar3 = FUN_0071bbd8(param_1,param_2,*puVar5,puVar5[1],param_3);
        uVar6 = uVar6 + 1;
        puVar5 = puVar5 + 2;
        param_3 = param_3 + 4;
        if (iVar3 == 0) {
          _TIFFfree(puVar2);
          return 0;
        }
      } while (uVar6 < *(uint *)(param_2 + 4));
    }
    _TIFFfree(puVar2);
  }
  return iVar3;
}

// ---- FUN_0071c47c  @ 0x71c47c
undefined4 FUN_0071c47c(int param_1,int param_2,void *param_3)

{
  undefined4 uVar1;
  size_t __n;
  undefined4 local_14;
  
  __n = *(uint *)(param_2 + 4);
  if (__n < 5) {
    local_14 = *(undefined4 *)(param_2 + 8);
    if ((*(uint *)(param_1 + 0xc) & 0x80) != 0) {
      TIFFSwabLong(&local_14);
      __n = *(size_t *)(param_2 + 4);
    }
    _TIFFmemcpy(param_3,&local_14,__n);
    uVar1 = 1;
  }
  else {
    uVar1 = FUN_0071bc68();
  }
  return uVar1;
}

// ---- FUN_0071c4e8  @ 0x71c4e8
/* WARNING: Type propagation algorithm not settling */

uint FUN_0071c4e8(int param_1,undefined2 *param_2)

{
  int iVar1;
  int iVar2;
  uint uVar3;
  undefined4 *puVar4;
  undefined4 local_38;
  undefined4 local_34;
  undefined4 local_30;
  undefined4 uStack_2c;
  float local_28;
  uint local_24;
  float local_20;
  ushort local_1a [3];
  
  iVar1 = TIFFFieldWithTag(param_1,*param_2);
  uVar3 = *(uint *)(param_2 + 2);
  if (1 < uVar3) {
    switch(param_2[1]) {
    case 1:
      break;
    case 2:
      goto LAB_0071c700;
    case 3:
      goto LAB_0071c5b4;
    case 4:
      goto LAB_0071c614;
    case 5:
      goto LAB_0071c650;
    case 6:
      break;
    case 7:
LAB_0071c700:
      puVar4 = (undefined4 *)_TIFFCheckMalloc(param_1,uVar3 + 1,1,"to fetch tag value");
      if ((puVar4 != (undefined4 *)0x0) &&
         (iVar2 = FUN_0071c47c(param_1,param_2,puVar4), iVar2 != 0)) {
        *(undefined1 *)((int)puVar4 + *(int *)(param_2 + 2)) = 0;
        goto LAB_0071c5ec;
      }
      goto LAB_0071c58c;
    case 8:
LAB_0071c5b4:
      puVar4 = (undefined4 *)_TIFFCheckMalloc(param_1,uVar3,2,"to fetch tag value");
      if (puVar4 != (undefined4 *)0x0) {
        iVar2 = FUN_0071bed4(param_1,param_2,puVar4);
        goto joined_r0x0071c588;
      }
      goto LAB_0071c58c;
    case 9:
LAB_0071c614:
      puVar4 = (undefined4 *)_TIFFCheckMalloc(param_1,uVar3,4,"to fetch tag value");
      if (puVar4 != (undefined4 *)0x0) {
        iVar2 = FUN_0071c0a4(param_1,param_2,puVar4);
        goto joined_r0x0071c588;
      }
      goto LAB_0071c58c;
    case 10:
LAB_0071c650:
      puVar4 = (undefined4 *)_TIFFCheckMalloc(param_1,uVar3,4,"to fetch tag value");
      if (puVar4 != (undefined4 *)0x0) {
        iVar2 = FUN_0071c3a8(param_1,param_2,puVar4);
        goto joined_r0x0071c588;
      }
      goto LAB_0071c58c;
    case 0xb:
      puVar4 = (undefined4 *)_TIFFCheckMalloc(param_1,uVar3,4,"to fetch tag value");
      if (puVar4 == (undefined4 *)0x0) goto LAB_0071c58c;
      if (*(int *)(param_2 + 2) != 1) goto LAB_0071c574;
      *puVar4 = *(undefined4 *)(param_2 + 4);
      goto LAB_0071c5ec;
    case 0xc:
      puVar4 = (undefined4 *)_TIFFCheckMalloc(param_1,uVar3,8,"to fetch tag value");
      if (puVar4 == (undefined4 *)0x0) goto LAB_0071c58c;
LAB_0071c574:
      iVar2 = FUN_0071bc68(param_1,param_2,puVar4);
      goto joined_r0x0071c588;
    default:
      puVar4 = (undefined4 *)0x0;
      goto LAB_0071c58c;
    }
    puVar4 = (undefined4 *)_TIFFCheckMalloc(param_1,uVar3,1,"to fetch tag value");
    if (puVar4 != (undefined4 *)0x0) {
      iVar2 = FUN_0071bdf4(param_1,param_2,puVar4);
joined_r0x0071c588:
      if (iVar2 != 0) {
LAB_0071c5ec:
        if (*(char *)(iVar1 + 0xf) == '\0') {
          uVar3 = TIFFSetField(param_1,*param_2,puVar4);
        }
        else {
          uVar3 = TIFFSetField(param_1,*param_2,*(undefined4 *)(param_2 + 2),puVar4);
        }
        goto LAB_0071c590;
      }
    }
LAB_0071c58c:
    uVar3 = 0;
LAB_0071c590:
    if (puVar4 != (undefined4 *)0x0) {
      _TIFFfree(puVar4);
      return uVar3;
    }
    return uVar3;
  }
  iVar2 = FUN_0071bb30(param_1,param_2,1);
  if (iVar2 == 0) {
    return 0;
  }
  uVar3 = (uint)(ushort)param_2[1];
  switch(uVar3) {
  case 1:
    break;
  case 2:
    goto LAB_0071c96c;
  case 3:
    break;
  case 4:
    goto LAB_0071c7c8;
  case 5:
    goto LAB_0071c8ec;
  case 6:
    break;
  case 7:
LAB_0071c96c:
    iVar2 = FUN_0071c47c(param_1,param_2,&local_38);
    if (iVar2 != 0) {
      local_38._0_2_ = (ushort)(byte)local_38;
      if (*(char *)(iVar1 + 0xf) == '\0') {
        uVar3 = TIFFSetField(param_1,*param_2,&local_38);
        return uVar3;
      }
      uVar3 = TIFFSetField(param_1,*param_2,1,&local_38);
      return uVar3;
    }
LAB_0071c5a0:
    return 0;
  case 8:
    break;
  case 9:
    goto LAB_0071c7c8;
  case 10:
    goto LAB_0071c8ec;
  case 0xb:
LAB_0071c8ec:
    if (uVar3 == 0xb) {
      if (*(short *)(param_1 + 0x1b8) == 0x4d4d) {
        local_24 = *(uint *)(*(int *)(param_1 + 0x1c4) + 0x2c) &
                   *(uint *)(param_2 + 4) >> (*(uint *)(*(int *)(param_1 + 0x1c0) + 0x2c) & 0xff);
      }
      else {
        local_24 = *(uint *)(*(int *)(param_1 + 0x1c4) + 0x2c) & *(uint *)(param_2 + 4);
      }
      _TIFFmemcpy(&local_28,&local_24,4);
    }
    else {
      iVar2 = FUN_0071bc68(param_1,param_2,&local_38);
      if (iVar2 == 0) {
        local_28 = 1.0;
      }
      else {
        iVar2 = FUN_0071bbd8(param_1,param_2,local_38,local_34,&local_28);
        if (iVar2 == 0) {
          local_28 = 1.0;
        }
      }
    }
    local_20 = local_28;
    if (*(char *)(iVar1 + 0xf) == '\0') {
      uVar3 = TIFFSetField(param_1,*param_2,SUB84((double)local_28,0),
                           (int)((ulonglong)(double)local_28 >> 0x20));
      return uVar3;
    }
    uVar3 = TIFFSetField(param_1,*param_2,1,&local_20);
    return uVar3;
  case 0xc:
    iVar2 = FUN_0071bc68(param_1,param_2,&local_30);
    if (iVar2 != 0) {
      if (*(char *)(iVar1 + 0xf) == '\0') {
        iVar1 = TIFFSetField(param_1,*param_2,local_30,uStack_2c);
        return (uint)(iVar1 != 0);
      }
      iVar1 = TIFFSetField(param_1,*param_2,1,&local_30);
      return (uint)(iVar1 != 0);
    }
  default:
    goto LAB_0071c5a0;
  }
  if (*(int *)(iVar1 + 8) == 9 || *(int *)(iVar1 + 8) == 4) {
LAB_0071c7c8:
    if (*(short *)(param_1 + 0x1b8) == 0x4d4d) {
      local_24 = *(uint *)(*(int *)(param_1 + 0x1c4) + uVar3 * 4) &
                 *(uint *)(param_2 + 4) >> (*(uint *)(*(int *)(param_1 + 0x1c0) + uVar3 * 4) & 0xff)
      ;
    }
    else {
      local_24 = *(uint *)(*(int *)(param_1 + 0x1c4) + uVar3 * 4) & *(uint *)(param_2 + 4);
    }
    if (*(char *)(iVar1 + 0xf) != '\0') {
      uVar3 = TIFFSetField(param_1,*param_2,1,&local_24);
      return uVar3;
    }
  }
  else {
    if (*(short *)(param_1 + 0x1b8) == 0x4d4d) {
      local_1a[0] = (ushort)*(undefined4 *)(*(int *)(param_1 + 0x1c4) + uVar3 * 4) &
                    (ushort)(*(uint *)(param_2 + 4) >>
                            (*(uint *)(*(int *)(param_1 + 0x1c0) + uVar3 * 4) & 0xff));
    }
    else {
      local_1a[0] = (ushort)*(undefined4 *)(*(int *)(param_1 + 0x1c4) + uVar3 * 4) &
                    (ushort)*(undefined4 *)(param_2 + 4);
    }
    if (*(char *)(iVar1 + 0xf) != '\0') {
      uVar3 = TIFFSetField(param_1,*param_2,1,local_1a);
      return uVar3;
    }
  }
  uVar3 = TIFFSetField(param_1,*param_2);
  return uVar3;
}

// ---- FUN_0071ce68  @ 0x71ce68
undefined4 FUN_0071ce68(undefined4 *param_1,int param_2,int param_3)

{
  int iVar1;
  uint uVar2;
  uint uVar3;
  int iVar4;
  undefined4 uVar5;
  undefined4 *puVar6;
  int *piVar7;
  uint uVar8;
  int iVar9;
  int *piVar10;
  bool bVar11;
  
  if (param_1[0x2f] != 0) {
    _TIFFfree();
  }
  iVar1 = _TIFFCheckMalloc(param_1,param_1[0x2d],4,"for \"StripByteCounts\" array");
  param_1[0x2f] = iVar1;
  if (iVar1 == 0) {
LAB_0071cf4c:
    uVar5 = 0xffffffff;
  }
  else if (*(short *)(param_1 + 0x16) == 1) {
    if ((param_1[3] & 0x400) == 0) {
      iVar1 = TIFFScanlineSize(param_1);
      if (param_1[0x2d] != 0) {
        iVar9 = __udivsi3(param_1[0xf],param_1[0x2c]);
        uVar2 = 0;
        piVar10 = (int *)param_1[0x2f];
        do {
          *piVar10 = iVar9 * iVar1;
          uVar2 = uVar2 + 1;
          piVar10 = piVar10 + 1;
        } while (uVar2 < (uint)param_1[0x2d]);
        uVar2 = param_1[10];
        param_1[10] = uVar2 | 0x1000000;
        if ((uVar2 & 0x20000) == 0) {
          param_1[0x19] = param_1[0xf];
        }
        return 1;
      }
    }
    else {
      uVar5 = TIFFTileSize(param_1);
      if (param_1[0x2d] != 0) {
        uVar2 = 0;
        puVar6 = (undefined4 *)param_1[0x2f];
        do {
          *puVar6 = uVar5;
          uVar2 = uVar2 + 1;
          puVar6 = puVar6 + 1;
        } while (uVar2 < (uint)param_1[0x2d]);
      }
    }
    uVar2 = param_1[10];
    param_1[10] = uVar2 | 0x1000000;
    if ((uVar2 & 0x20000) == 0) {
      param_1[0x19] = param_1[0xf];
    }
    uVar5 = 1;
  }
  else {
    uVar2 = (*(code *)param_1[0x9e])(param_1[0x99]);
    iVar1 = param_3 * 0xc + 0xe;
    if (param_3 != 0) {
      iVar9 = param_2 + (param_3 - 1U & 0xffff) * 0xc;
      do {
        iVar4 = TIFFDataWidth(*(undefined2 *)(param_2 + 2));
        if (iVar4 == 0) {
          TIFFErrorExt(param_1[0x99],"EstimateStripByteCounts",
                       "%s: Cannot determine size of unknown tag type %d",*param_1,
                       *(undefined2 *)(param_2 + 2));
          goto LAB_0071cf4c;
        }
        uVar3 = *(int *)(param_2 + 4) * iVar4;
        if (4 < uVar3) {
          iVar1 = iVar1 + uVar3;
        }
        bVar11 = param_2 != iVar9;
        param_2 = param_2 + 0xc;
      } while (bVar11);
    }
    iVar1 = uVar2 - iVar1;
    if (*(short *)((int)param_1 + 0x8a) == 2) {
      iVar1 = __udivsi3(iVar1,*(undefined2 *)((int)param_1 + 0x62));
    }
    if (param_1[0x2d] == 0) {
      iVar1 = -4;
      piVar10 = (int *)param_1[0x2f];
    }
    else {
      piVar10 = (int *)param_1[0x2f];
      piVar7 = piVar10;
      uVar3 = 0;
      do {
        uVar8 = uVar3;
        *piVar7 = iVar1;
        uVar3 = uVar8 + 1;
        piVar7 = piVar7 + 1;
      } while (uVar3 < (uint)param_1[0x2d]);
      iVar1 = uVar8 * 4;
    }
    if (uVar2 < (uint)(*(int *)(param_1[0x2e] + iVar1) + *(int *)((int)piVar10 + iVar1))) {
      *(uint *)((int)piVar10 + iVar1) = uVar2 - *(int *)(param_1[0x2e] + iVar1);
    }
    uVar2 = param_1[10];
    param_1[10] = uVar2 | 0x1000000;
    if ((uVar2 & 0x20000) == 0) {
      param_1[0x19] = param_1[0xf];
    }
    uVar5 = 1;
  }
  return uVar5;
}

// ---- FUN_0071ed0c  @ 0x71ed0c
void FUN_0071ed0c(int param_1)

{
  uint uVar1;
  int iVar2;
  
  iVar2 = *(int *)(param_1 + 0x238);
  TIFFPredictorCleanup();
  uVar1 = *(uint *)(iVar2 + 0x7c);
  *(undefined4 *)(param_1 + 0x290) = *(undefined4 *)(iVar2 + 0x80);
  *(undefined4 *)(param_1 + 0x28c) = *(undefined4 *)(iVar2 + 0x84);
  if ((uVar1 & 2) == 0) {
    if ((uVar1 & 1) != 0) {
      inflateEnd(iVar2 + 0x40);
      *(undefined4 *)(iVar2 + 0x7c) = 0;
    }
  }
  else {
    deflateEnd(iVar2 + 0x40);
    *(undefined4 *)(iVar2 + 0x7c) = 0;
  }
  _TIFFfree(iVar2);
  *(undefined4 *)(param_1 + 0x238) = 0;
  _TIFFSetDefaultCompressionState(param_1);
  return;
}

// ---- FUN_0071ed80  @ 0x71ed80
undefined4 FUN_0071ed80(undefined4 *param_1,undefined4 param_2,undefined4 param_3)

{
  int iVar1;
  undefined4 uVar2;
  int iVar3;
  
  iVar3 = param_1[0x8e];
  *(undefined4 *)(iVar3 + 0x40) = param_2;
  *(undefined4 *)(iVar3 + 0x44) = param_3;
  do {
    while( true ) {
      iVar1 = deflate(iVar3 + 0x40,0);
      if (iVar1 != 0) {
        TIFFErrorExt(param_1[0x99],"ZIPEncode","%s: Encoder error: %s",*param_1,
                     *(undefined4 *)(iVar3 + 0x58));
        return 0;
      }
      if (*(int *)(iVar3 + 0x50) == 0) break;
      if (*(int *)(iVar3 + 0x44) == 0) {
        return 1;
      }
    }
    param_1[0x94] = param_1[0x92];
    TIFFFlushData1(param_1);
    uVar2 = param_1[0x91];
    *(undefined4 *)(iVar3 + 0x50) = param_1[0x92];
    *(undefined4 *)(iVar3 + 0x4c) = uVar2;
  } while (*(int *)(iVar3 + 0x44) != 0);
  return 1;
}

// ---- FUN_0071ee3c  @ 0x71ee3c
undefined4 FUN_0071ee3c(undefined4 *param_1)

{
  uint uVar1;
  undefined4 uVar2;
  int iVar3;
  
  iVar3 = param_1[0x8e];
  *(undefined4 *)(iVar3 + 0x44) = 0;
  do {
    uVar1 = deflate(iVar3 + 0x40,4);
    if (1 < uVar1) {
      TIFFErrorExt(param_1[0x99],"ZIPPostEncode","%s: zlib error: %s",*param_1,
                   *(undefined4 *)(iVar3 + 0x58));
      return 0;
    }
    if (*(int *)(iVar3 + 0x50) != param_1[0x92]) {
      param_1[0x94] = param_1[0x92] - *(int *)(iVar3 + 0x50);
      TIFFFlushData1(param_1);
      uVar2 = param_1[0x92];
      *(undefined4 *)(iVar3 + 0x4c) = param_1[0x91];
      *(undefined4 *)(iVar3 + 0x50) = uVar2;
    }
  } while (uVar1 != 1);
  return 1;
}

// ---- FUN_0071eeec  @ 0x71eeec
int FUN_0071eeec(int param_1)

{
  uint uVar1;
  undefined4 uVar2;
  int iVar3;
  
  iVar3 = *(int *)(param_1 + 0x238);
  if (*(int *)(iVar3 + 0x7c) != 2) {
    (**(code **)(param_1 + 0x1fc))();
  }
  uVar2 = *(undefined4 *)(param_1 + 0x244);
  *(undefined4 *)(iVar3 + 0x50) = *(undefined4 *)(param_1 + 0x248);
  *(undefined4 *)(iVar3 + 0x4c) = uVar2;
  uVar1 = deflateReset(iVar3 + 0x40);
  iVar3 = 1 - uVar1;
  if (1 < uVar1) {
    iVar3 = 0;
  }
  return iVar3;
}

// ---- FUN_0071ef30  @ 0x71ef30
bool FUN_0071ef30(undefined4 *param_1)

{
  int iVar1;
  int iVar2;
  
  iVar2 = param_1[0x8e];
  if ((*(uint *)(iVar2 + 0x7c) & 1) != 0) {
    inflateEnd(iVar2 + 0x40);
    *(undefined4 *)(iVar2 + 0x7c) = 0;
  }
  iVar1 = deflateInit_(iVar2 + 0x40,*(undefined4 *)(iVar2 + 0x78),"1.2.3",0x38);
  if (iVar1 != 0) {
    TIFFErrorExt(param_1[0x99],"ZIPSetupEncode","%s: %s",*param_1,*(undefined4 *)(iVar2 + 0x58));
  }
  else {
    *(uint *)(iVar2 + 0x7c) = *(uint *)(iVar2 + 0x7c) | 2;
  }
  return iVar1 == 0;
}

// ---- FUN_0071efdc  @ 0x71efdc
undefined4 FUN_0071efdc(undefined4 *param_1,undefined4 param_2,undefined4 param_3)

{
  int iVar1;
  int iVar2;
  
  iVar2 = param_1[0x8e];
  *(undefined4 *)(iVar2 + 0x4c) = param_2;
  *(undefined4 *)(iVar2 + 0x50) = param_3;
  do {
    iVar1 = inflate(iVar2 + 0x40,1);
    if (iVar1 == 1) {
      if (*(int *)(iVar2 + 0x50) == 0) {
        return 1;
      }
      TIFFErrorExt(param_1[0x99],"ZIPDecode","%s: Not enough data at scanline %d (short %d bytes)",
                   *param_1,param_1[0x72],*(int *)(iVar2 + 0x50));
      return 0;
    }
    if (iVar1 == -3) {
      TIFFErrorExt(param_1[0x99],"ZIPDecode","%s: Decoding error at scanline %d, %s",*param_1,
                   param_1[0x72],*(undefined4 *)(iVar2 + 0x58));
      iVar1 = inflateSync(iVar2 + 0x40);
      if (iVar1 != 0) {
        return 0;
      }
    }
    else if (iVar1 != 0) {
      TIFFErrorExt(param_1[0x99],"ZIPDecode","%s: zlib error: %s",*param_1,
                   *(undefined4 *)(iVar2 + 0x58));
      return 0;
    }
  } while (*(int *)(iVar2 + 0x50) != 0);
  return 1;
}

// ---- FUN_0071f10c  @ 0x71f10c
int FUN_0071f10c(int param_1)

{
  uint uVar1;
  undefined4 uVar2;
  int iVar3;
  
  iVar3 = *(int *)(param_1 + 0x238);
  if ((*(uint *)(iVar3 + 0x7c) & 1) == 0) {
    (**(code **)(param_1 + 500))();
  }
  uVar2 = *(undefined4 *)(param_1 + 0x244);
  *(undefined4 *)(iVar3 + 0x44) = *(undefined4 *)(param_1 + 0x250);
  *(undefined4 *)(iVar3 + 0x40) = uVar2;
  uVar1 = inflateReset(iVar3 + 0x40);
  iVar3 = 1 - uVar1;
  if (1 < uVar1) {
    iVar3 = 0;
  }
  return iVar3;
}

// ---- FUN_0071f150  @ 0x71f150
bool FUN_0071f150(undefined4 *param_1)

{
  int iVar1;
  int iVar2;
  
  iVar2 = param_1[0x8e];
  if ((*(uint *)(iVar2 + 0x7c) & 2) != 0) {
    deflateEnd(iVar2 + 0x40);
    *(undefined4 *)(iVar2 + 0x7c) = 0;
  }
  iVar1 = inflateInit_(iVar2 + 0x40,"1.2.3",0x38);
  if (iVar1 != 0) {
    TIFFErrorExt(param_1[0x99],"ZIPSetupDecode","%s: %s",*param_1,*(undefined4 *)(iVar2 + 0x58));
  }
  else {
    *(uint *)(iVar2 + 0x7c) = *(uint *)(iVar2 + 0x7c) | 1;
  }
  return iVar1 == 0;
}

// ---- FUN_0071f344  @ 0x71f344
undefined4 FUN_0071f344(undefined4 *param_1,byte *param_2,int param_3)

{
  uint uVar1;
  uint uVar2;
  uint uVar3;
  uint uVar4;
  int iVar5;
  int iVar6;
  size_t __n;
  byte *pbVar7;
  size_t sVar8;
  byte *pbVar9;
  uint uVar10;
  bool bVar11;
  int local_34;
  
  if (param_3 < 1) {
    pbVar9 = (byte *)param_1[0x93];
    iVar5 = param_1[0x94];
LAB_0071f4d0:
    param_1[0x94] = iVar5;
    param_1[0x93] = pbVar9;
    return 1;
  }
  local_34 = 0;
  do {
    param_2[local_34] = 0xff;
    local_34 = local_34 + 1;
  } while (local_34 != param_3);
  __n = param_1[0x8f];
  pbVar9 = (byte *)param_1[0x93];
  local_34 = local_34 - __n;
  iVar5 = param_1[0x94];
  do {
    iVar6 = iVar5 + -1;
    pbVar7 = pbVar9 + 1;
    uVar2 = (uint)*pbVar9;
    if (uVar2 == 0) {
      if (iVar6 < (int)__n) {
LAB_0071f538:
        TIFFErrorExt(param_1[0x99],*param_1,"NeXTDecode: Not enough data for scanline %ld",
                     param_1[0x72]);
        return 0;
      }
      iVar5 = iVar6 - __n;
      _TIFFmemcpy(param_2,pbVar7,__n);
      sVar8 = __n;
LAB_0071f3b8:
      pbVar9 = pbVar7 + sVar8;
    }
    else {
      if (uVar2 == 0x40) {
        sVar8 = (uint)pbVar9[4] + (uint)pbVar9[3] * 0x100;
        if ((iVar6 <= (int)(sVar8 + 3)) ||
           (iVar6 = (uint)pbVar9[2] + (uint)*pbVar7 * 0x100, (int)__n < (int)(sVar8 + iVar6)))
        goto LAB_0071f538;
        _TIFFmemcpy(param_2 + iVar6,pbVar9 + 5,sVar8);
        iVar5 = (iVar5 + -5) - sVar8;
        sVar8 = sVar8 + 4;
        goto LAB_0071f3b8;
      }
      uVar4 = 0;
      uVar10 = param_1[0xe];
      pbVar7 = param_2;
      while( true ) {
        uVar1 = uVar2 >> 6;
        uVar2 = uVar2 & 0x3f;
        if (uVar2 != 0) {
          do {
            uVar3 = uVar4 & 3;
            bVar11 = uVar10 <= uVar4;
            uVar4 = uVar4 + 1;
            if (bVar11) goto LAB_0071f4ac;
            if (uVar3 == 2) {
              *pbVar7 = (byte)(uVar1 << 2) | *pbVar7;
            }
            else if (uVar3 == 3) {
              *pbVar7 = (byte)uVar1 | *pbVar7;
              pbVar7 = pbVar7 + 1;
            }
            else if (uVar3 == 1) {
              *pbVar7 = (byte)(uVar1 << 4) | *pbVar7;
            }
            else {
              *pbVar7 = (byte)(uVar1 << 6);
            }
            uVar2 = uVar2 - 1;
          } while (0 < (int)uVar2);
        }
        if (uVar10 <= uVar4) break;
        if (iVar6 == 0) goto LAB_0071f538;
        iVar6 = iVar6 + -1;
        pbVar9 = pbVar9 + 1;
        uVar2 = (uint)*pbVar9;
      }
LAB_0071f4ac:
      pbVar9 = pbVar9 + 1;
      iVar5 = iVar6;
    }
    if (local_34 < 1) goto LAB_0071f4d0;
    local_34 = local_34 - __n;
    param_2 = param_2 + __n;
  } while( true );
}

// ---- FUN_0071f578  @ 0x71f578
undefined4 FUN_0071f578(int *param_1)

{
  uint uVar1;
  int iVar2;
  uint uVar3;
  uint uVar4;
  
  uVar3 = param_1[0x132];
  while (uVar3 == 0) {
    while( true ) {
      iVar2 = param_1[0x12d];
      *(char *)(param_1 + 0x131) = (char)uVar3;
      if (iVar2 == 1) break;
      if (iVar2 != 0) {
        if (iVar2 != 2) {
          return 0;
        }
        goto LAB_0071f654;
      }
      param_1[0x12d] = 1;
      if (param_1[0x4a] != 0) {
        param_1[0x130] = param_1[0x4a];
        uVar3 = param_1[0x4b];
        param_1[0x132] = uVar3;
      }
      if (uVar3 != 0) goto LAB_0071f5d4;
    }
    param_1[0x12d] = 2;
LAB_0071f654:
    iVar2 = param_1[0x12e];
    if (iVar2 == param_1[0x12f]) {
      param_1[0x12d] = 3;
    }
    else {
      uVar1 = *(uint *)(*(int *)(*param_1 + 0xb8) + iVar2 * 4);
      param_1[0x130] = uVar1;
      if (uVar1 != 0) {
        uVar4 = param_1[0x43];
        if (uVar1 < uVar4) {
          uVar3 = *(uint *)(*(int *)(*param_1 + 0xbc) + iVar2 * 4);
          param_1[0x132] = uVar3;
          if (uVar3 == 0) {
            param_1[0x130] = 0;
          }
          else if (uVar4 < uVar3 + uVar1) {
            uVar3 = uVar4 - uVar1;
            param_1[0x132] = uVar3;
          }
        }
        else {
          param_1[0x130] = 0;
        }
      }
      param_1[0x12e] = iVar2 + 1;
    }
  }
LAB_0071f5d4:
  if ((char)param_1[0x131] == '\0') {
    (**(code **)(*param_1 + 0x270))(*(undefined4 *)(*param_1 + 0x264),param_1[0x130]);
    uVar3 = param_1[0x132];
    *(undefined1 *)(param_1 + 0x131) = 1;
  }
  if (uVar3 < 0x800) {
    uVar3 = uVar3 & 0xffff;
  }
  else {
    uVar3 = 0x800;
  }
  uVar3 = (**(code **)(*param_1 + 0x268))(*(undefined4 *)(*param_1 + 0x264),param_1 + 0x135,uVar3);
  if (uVar3 == 0) {
    return 0;
  }
  param_1[0x130] = param_1[0x130] + (uVar3 & 0xffff);
  param_1[0x134] = (int)(param_1 + 0x135);
  *(short *)(param_1 + 0x133) = (short)uVar3;
  param_1[0x132] = param_1[0x132] - (uVar3 & 0xffff);
  return 1;
}

// ---- FUN_0071f6e8  @ 0x71f6e8
void FUN_0071f6e8(int param_1,undefined1 *param_2)

{
  int iVar1;
  
  if ((*(short *)(param_1 + 0x4cc) == 0) && (iVar1 = FUN_0071f578(), iVar1 == 0)) {
    return;
  }
  *param_2 = **(undefined1 **)(param_1 + 0x4d0);
  *(int *)(param_1 + 0x4d0) = *(int *)(param_1 + 0x4d0) + 1;
  *(short *)(param_1 + 0x4cc) = *(short *)(param_1 + 0x4cc) + -1;
  return;
}

// ---- FUN_0071f744  @ 0x71f744
undefined4 FUN_0071f744(undefined4 param_1,ushort *param_2)

{
  int iVar1;
  byte local_11;
  
  iVar1 = FUN_0071f6e8(param_1,&local_11);
  if (iVar1 != 0) {
    *param_2 = (ushort)local_11 << 8;
    iVar1 = FUN_0071f6e8(param_1,&local_11);
    if (iVar1 != 0) {
      *param_2 = *param_2 | (ushort)local_11;
      return 1;
    }
  }
  return 0;
}

// ---- FUN_0071f7ac  @ 0x71f7ac
void FUN_0071f7ac(int param_1,uint param_2)

{
  ushort uVar1;
  uint uVar2;
  uint uVar3;
  
  uVar1 = *(ushort *)(param_1 + 0x4cc);
  uVar3 = param_2;
  if (uVar1 <= param_2) {
    uVar3 = (uint)uVar1;
  }
  *(uint *)(param_1 + 0x4d0) = *(int *)(param_1 + 0x4d0) + uVar3;
  uVar2 = param_2 - uVar3 & 0xffff;
  *(ushort *)(param_1 + 0x4cc) = uVar1 - (short)uVar3;
  if (uVar2 != 0) {
    uVar3 = *(uint *)(param_1 + 0x4c8);
    if (uVar3 < uVar2) {
      uVar2 = uVar3 & 0xffff;
    }
    *(uint *)(param_1 + 0x4c8) = uVar3 - uVar2;
    *(uint *)(param_1 + 0x4c0) = *(int *)(param_1 + 0x4c0) + uVar2;
    *(undefined1 *)(param_1 + 0x4c4) = 0;
  }
  return;
}

// ---- FUN_0071f820  @ 0x71f820
undefined1 FUN_0071f820(int param_1)

{
  byte bVar1;
  int iVar2;
  uint uVar3;
  int iVar4;
  int iVar5;
  short local_1c;
  char local_19 [5];
  
  iVar4 = *(int *)(param_1 + 0x238);
  if (*(char *)(iVar4 + 0x193) == '\0') {
    TIFFErrorExt(*(undefined4 *)(param_1 + 0x264),"OJPEGReadHeaderInfoSecStreamSos",
                 "Corrupt SOS marker in JPEG data");
    return 0;
  }
  iVar2 = FUN_0071f744(iVar4,&local_1c);
  if (iVar2 != 0) {
    if (local_1c != (ushort)((*(byte *)(iVar4 + 0x126) + 3) * 2)) {
      TIFFErrorExt(*(undefined4 *)(param_1 + 0x264),"OJPEGReadHeaderInfoSecStreamSos",
                   "Corrupt SOS marker in JPEG data");
      return 0;
    }
    iVar2 = FUN_0071f6e8(iVar4,local_19);
    if (iVar2 != 0) {
      if (local_19[0] != *(char *)(iVar4 + 0x126)) {
        TIFFErrorExt(*(undefined4 *)(param_1 + 0x264),"OJPEGReadHeaderInfoSecStreamSos",
                     "Corrupt SOS marker in JPEG data");
        return 0;
      }
      if (local_19[0] != '\0') {
        uVar3 = 0;
        do {
          iVar2 = FUN_0071f6e8(iVar4,local_19);
          iVar5 = iVar4 + uVar3;
          if (iVar2 == 0) {
            return 0;
          }
          uVar3 = uVar3 + 1 & 0xff;
          *(char *)(iVar5 + (uint)*(byte *)(iVar4 + 0x125) + 0x1a9) = local_19[0];
          iVar2 = FUN_0071f6e8(iVar4,local_19);
          if (iVar2 == 0) {
            return 0;
          }
          bVar1 = *(byte *)(iVar4 + 0x126);
          *(char *)(iVar5 + (uint)*(byte *)(iVar4 + 0x125) + 0x1ac) = local_19[0];
        } while (uVar3 < bVar1);
      }
      FUN_0071f7ac(iVar4,3);
      return 1;
    }
  }
  return 0;
}
