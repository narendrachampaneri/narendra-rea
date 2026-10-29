// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 97 functions

// ---- FUN_0070001c  @ 0x70001c
undefined4 FUN_0070001c(int param_1)

{
  int iVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  int iVar7;
  int *piVar8;
  int *piVar9;
  int *piVar10;
  int iVar11;
  int iVar12;
  uint local_4c;
  int local_48;
  int local_44;
  int local_3c;
  int local_38 [5];
  
  piVar9 = &local_3c;
  iVar5 = *(int *)(param_1 + 400);
  piVar10 = (int *)(param_1 + 0x120);
  for (iVar7 = 0; iVar7 < *(int *)(param_1 + 0x120); iVar7 = iVar7 + 1) {
    piVar10 = piVar10 + 1;
    iVar2 = *(int *)(*piVar10 + 0xc);
    iVar2 = (**(code **)(*(int *)(param_1 + 4) + 0x20))
                      (param_1,*(undefined4 *)(iVar5 + (*(int *)(*piVar10 + 4) + 0x10) * 4),
                       *(int *)(iVar5 + 8) * iVar2,iVar2,0);
    piVar9 = piVar9 + 1;
    *piVar9 = iVar2;
  }
  local_44 = *(int *)(iVar5 + 0x10);
  local_3c = iVar5 + 0x18;
  local_48 = local_44 << 2;
  iVar7 = *(int *)(iVar5 + 0x14);
  do {
    if (iVar7 <= local_44) {
      *(int *)(iVar5 + 8) = *(int *)(iVar5 + 8) + 1;
      FUN_006fff64(param_1);
      return 1;
    }
    local_4c = *(uint *)(iVar5 + 0xc);
    if (local_4c < *(uint *)(param_1 + 0x134)) {
      do {
        iVar7 = *(int *)(param_1 + 0x120);
        if (0 < iVar7) {
          iVar11 = 0;
          iVar2 = 0;
          piVar10 = (int *)(param_1 + 0x120);
          do {
            piVar10 = piVar10 + 1;
            iVar6 = *piVar10;
            iVar3 = *(int *)(iVar6 + 0x3c);
            iVar1 = *(int *)(iVar6 + 0x38);
            if (0 < iVar3) {
              iVar7 = iVar1 * 0x80;
              iVar12 = 0;
              piVar9 = (int *)(local_38[iVar11] + local_48);
              do {
                if (0 < iVar1) {
                  iVar3 = *piVar9 + local_4c * iVar7;
                  iVar4 = 0;
                  piVar8 = (int *)(iVar5 + (iVar2 + 5) * 4);
                  do {
                    piVar8 = piVar8 + 1;
                    *piVar8 = iVar3;
                    iVar4 = iVar4 + 1;
                    iVar1 = *(int *)(iVar6 + 0x38);
                    iVar2 = iVar2 + 1;
                    iVar3 = iVar3 + 0x80;
                  } while (iVar4 < iVar1);
                  iVar3 = *(int *)(iVar6 + 0x3c);
                }
                iVar12 = iVar12 + 1;
                piVar9 = piVar9 + 1;
              } while (iVar12 < iVar3);
              iVar7 = *(int *)(param_1 + 0x120);
            }
            iVar11 = iVar11 + 1;
          } while (iVar11 < iVar7);
        }
        iVar7 = (**(code **)(*(int *)(param_1 + 0x1a4) + 4))(param_1,local_3c);
        if (iVar7 == 0) {
          *(int *)(iVar5 + 0x10) = local_44;
          *(uint *)(iVar5 + 0xc) = local_4c;
          return 0;
        }
        local_4c = local_4c + 1;
      } while (local_4c < *(uint *)(param_1 + 0x134));
      iVar7 = *(int *)(iVar5 + 0x14);
    }
    *(undefined4 *)(iVar5 + 0xc) = 0;
    local_44 = local_44 + 1;
    local_48 = local_48 + 4;
  } while( true );
}

// ---- FUN_007001e8  @ 0x7001e8
void FUN_007001e8(int param_1,int param_2)

{
  undefined2 uVar1;
  int *piVar2;
  int extraout_r1;
  int extraout_r1_00;
  int iVar3;
  int iVar4;
  int iVar5;
  uint uVar6;
  code *pcVar7;
  int iVar8;
  int iVar9;
  int iVar10;
  int iVar11;
  void *pvVar12;
  int iVar13;
  uint uVar14;
  int iVar15;
  int iVar16;
  int *piVar17;
  int iVar18;
  int *local_5c;
  int *local_58;
  int local_50;
  int local_44;
  undefined4 *local_3c;
  
  iVar3 = *(int *)(param_1 + 400);
  uVar6 = *(int *)(param_1 + 0x11c) - 1;
  iVar16 = *(int *)(param_1 + 0x54);
  if (0 < *(int *)(param_1 + 0x4c)) {
    local_3c = (undefined4 *)(iVar3 + 0x3c);
    local_44 = 0;
    while( true ) {
      local_3c = local_3c + 1;
      piVar2 = (int *)(**(code **)(*(int *)(param_1 + 4) + 0x20))
                                (param_1,*local_3c,*(int *)(iVar3 + 8) * *(int *)(iVar16 + 0xc),
                                 *(int *)(iVar16 + 0xc),1);
      uVar14 = *(uint *)(iVar3 + 8);
      if (uVar14 < uVar6) {
        local_50 = *(int *)(iVar16 + 0xc);
      }
      else {
        iVar13 = *(int *)(iVar16 + 0xc);
        __aeabi_uidivmod(*(undefined4 *)(iVar16 + 0x20),iVar13);
        local_50 = extraout_r1_00;
        if (extraout_r1_00 == 0) {
          local_50 = iVar13;
        }
      }
      iVar4 = *(int *)(iVar16 + 0x1c);
      iVar10 = *(int *)(iVar16 + 8);
      __aeabi_uidivmod(iVar4,iVar10);
      pcVar7 = *(code **)(*(int *)(param_1 + 0x1a0) + local_44 * 4 + 4);
      iVar13 = extraout_r1;
      if (0 < extraout_r1) {
        iVar13 = iVar10 - extraout_r1;
      }
      if (0 < local_50) {
        iVar15 = 0;
        iVar8 = *(int *)(iVar16 + 0x28);
        piVar17 = piVar2;
        while( true ) {
          iVar11 = *piVar17;
          (*pcVar7)(param_1,iVar16,*(undefined4 *)(param_2 + local_44 * 4),iVar11,iVar15 * iVar8,0,
                    iVar4);
          if (0 < iVar13) {
            pvVar12 = (void *)(iVar11 + iVar4 * 0x80);
            memset(pvVar12,0,iVar13 << 7);
            uVar1 = *(undefined2 *)((int)pvVar12 + -0x80);
            iVar8 = 0;
            do {
              iVar11 = iVar8 * 0x80;
              iVar8 = iVar8 + 1;
              *(undefined2 *)((int)pvVar12 + iVar11) = uVar1;
            } while (iVar8 != iVar13);
          }
          iVar15 = iVar15 + 1;
          if (iVar15 == local_50) break;
          iVar8 = *(int *)(iVar16 + 0x28);
          piVar17 = piVar17 + 1;
        }
        uVar14 = *(uint *)(iVar3 + 8);
      }
      if (uVar14 == uVar6) {
        iVar8 = __udivsi3(iVar13 + iVar4,iVar10);
        if (local_50 < *(int *)(iVar16 + 0xc)) {
          local_5c = piVar2 + local_50 + -1;
          local_58 = piVar2 + local_50;
          do {
            pvVar12 = (void *)*local_58;
            iVar15 = *local_5c;
            memset(pvVar12,0,(iVar13 + iVar4) * 0x80);
            if (iVar8 != 0) {
              iVar18 = 0;
              iVar11 = 0;
              do {
                uVar1 = *(undefined2 *)(iVar15 + (iVar10 + -1) * 0x80 + iVar18);
                if (0 < iVar10) {
                  iVar9 = 0;
                  do {
                    iVar5 = iVar9 * 0x80;
                    iVar9 = iVar9 + 1;
                    *(undefined2 *)((int)pvVar12 + iVar5 + iVar18) = uVar1;
                  } while (iVar9 != iVar10);
                }
                iVar11 = iVar11 + 1;
                iVar18 = iVar18 + iVar10 * 0x80;
              } while (iVar11 != iVar8);
            }
            local_50 = local_50 + 1;
            local_5c = local_5c + 1;
            local_58 = local_58 + 1;
          } while (local_50 < *(int *)(iVar16 + 0xc));
        }
      }
      local_44 = local_44 + 1;
      if (*(int *)(param_1 + 0x4c) <= local_44) break;
      iVar16 = iVar16 + 0x58;
    }
  }
  FUN_0070001c(param_1,param_2);
  return;
}

// ---- FUN_007003b8  @ 0x7003b8
undefined4 FUN_007003b8(int param_1,int param_2)

{
  undefined4 *puVar1;
  code *pcVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  uint uVar6;
  int iVar7;
  int iVar8;
  int iVar9;
  int iVar10;
  int iVar11;
  int iVar12;
  int iVar13;
  int local_4c;
  int local_44;
  uint local_3c;
  int *local_38;
  
  iVar10 = *(int *)(param_1 + 400);
  uVar6 = *(int *)(param_1 + 0x134) - 1;
  local_4c = *(int *)(iVar10 + 0x10);
  iVar7 = *(int *)(param_1 + 0x11c);
  iVar8 = *(int *)(iVar10 + 0x14);
  do {
    if (iVar8 <= local_4c) {
      *(int *)(iVar10 + 8) = *(int *)(iVar10 + 8) + 1;
      FUN_006fff64(param_1);
      return 1;
    }
    local_3c = *(uint *)(iVar10 + 0xc);
    if (local_3c <= uVar6) {
      do {
        iVar8 = *(int *)(param_1 + 0x120);
        if (0 < iVar8) {
          iVar11 = 0;
          local_44 = 0;
          local_38 = (int *)(param_1 + 0x120);
LAB_0070040e:
          local_38 = local_38 + 1;
          iVar9 = *local_38;
          pcVar2 = *(code **)(*(int *)(param_1 + 0x1a0) + *(int *)(iVar9 + 4) * 4 + 4);
          iVar3 = *(int *)(iVar9 + 0x44);
          if (local_3c < uVar6) {
            iVar13 = *(int *)(iVar9 + 0x38);
          }
          else {
            iVar13 = *(int *)(iVar9 + 0x48);
          }
          if (0 < *(int *)(iVar9 + 0x3c)) {
            iVar8 = 0;
            iVar12 = *(int *)(iVar9 + 0x28) * local_4c;
            do {
              if ((*(uint *)(iVar10 + 8) < iVar7 - 1U) ||
                 (iVar8 + local_4c < *(int *)(iVar9 + 0x4c))) {
                (*pcVar2)(param_1,iVar9,*(undefined4 *)(param_2 + *(int *)(iVar9 + 4) * 4),
                          *(undefined4 *)(iVar10 + (iVar11 + 6) * 4),iVar12,iVar3 * local_3c,iVar13)
                ;
                iVar4 = *(int *)(iVar9 + 0x38);
                if (iVar13 < iVar4) {
                  memset(*(void **)(iVar10 + (iVar13 + iVar11 + 6) * 4),0,(iVar4 - iVar13) * 0x80);
                  iVar4 = *(int *)(iVar9 + 0x38);
                  if (iVar13 < iVar4) {
                    puVar1 = (undefined4 *)(iVar10 + (iVar13 + iVar11 + 5) * 4);
                    iVar4 = iVar13;
                    do {
                      iVar4 = iVar4 + 1;
                      *(undefined2 *)puVar1[1] = *(undefined2 *)*puVar1;
                      iVar5 = *(int *)(iVar9 + 0x38);
                      puVar1 = puVar1 + 1;
                    } while (iVar4 < iVar5);
                    goto LAB_007004ec;
                  }
                }
LAB_00700458:
                iVar11 = iVar11 + iVar4;
                iVar4 = *(int *)(iVar9 + 0x28);
                if (*(int *)(iVar9 + 0x3c) <= iVar8 + 1) goto LAB_007004f8;
              }
              else {
                memset(*(void **)(iVar10 + (iVar11 + 6) * 4),0,*(int *)(iVar9 + 0x38) << 7);
                iVar4 = *(int *)(iVar9 + 0x38);
                if (iVar4 < 1) goto LAB_00700458;
                iVar4 = 0;
                puVar1 = (undefined4 *)(iVar10 + (iVar11 + 5) * 4);
                do {
                  iVar4 = iVar4 + 1;
                  puVar1 = puVar1 + 1;
                  *(undefined2 *)*puVar1 = **(undefined2 **)(iVar10 + (iVar11 + 5) * 4);
                  iVar5 = *(int *)(iVar9 + 0x38);
                } while (iVar4 < iVar5);
LAB_007004ec:
                iVar11 = iVar11 + iVar5;
                iVar4 = *(int *)(iVar9 + 0x28);
                if (*(int *)(iVar9 + 0x3c) <= iVar8 + 1) goto LAB_007004f8;
              }
              iVar8 = iVar8 + 1;
              iVar12 = iVar12 + iVar4;
            } while( true );
          }
          goto LAB_007004fe;
        }
LAB_00700508:
        iVar8 = (**(code **)(*(int *)(param_1 + 0x1a4) + 4))(param_1,iVar10 + 0x18);
        if (iVar8 == 0) {
          *(int *)(iVar10 + 0x10) = local_4c;
          *(uint *)(iVar10 + 0xc) = local_3c;
          return 0;
        }
        local_3c = local_3c + 1;
      } while (local_3c <= uVar6);
      iVar8 = *(int *)(iVar10 + 0x14);
    }
    *(undefined4 *)(iVar10 + 0xc) = 0;
    local_4c = local_4c + 1;
  } while( true );
LAB_007004f8:
  iVar8 = *(int *)(param_1 + 0x120);
LAB_007004fe:
  local_44 = local_44 + 1;
  if (iVar8 <= local_44) goto LAB_00700508;
  goto LAB_0070040e;
}

// ---- FUN_00700598  @ 0x700598
void FUN_00700598(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int *piVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  char *pcVar6;
  int iVar7;
  int iVar8;
  int *piVar9;
  int *piVar10;
  int *piVar11;
  int iVar12;
  
  iVar4 = *(int *)(param_1 + 0x198);
  piVar1 = (int *)(*(code *)**(undefined4 **)(param_1 + 4))
                            (param_1,1,0x2000,(code *)**(undefined4 **)(param_1 + 4),param_4);
  pcVar6 = "ds";
  iVar2 = 0x8000;
  *(int **)(iVar4 + 8) = piVar1;
  iVar5 = 0;
  piVar10 = piVar1 + 0x2ff;
  piVar9 = piVar1 + 0x3ff;
  iVar12 = 0;
  iVar8 = 0;
  iVar7 = 0;
  iVar4 = 0;
  iVar3 = 0;
  do {
    *piVar1 = iVar3;
    piVar1[0x100] = iVar4;
    piVar1[0x200] = iVar2;
    iVar3 = iVar3 + 0x4c8b;
    piVar10 = piVar10 + 1;
    *piVar10 = iVar7;
    piVar9 = piVar9 + 1;
    *piVar9 = iVar8;
    piVar1[0x500] = (int)pcVar6;
    piVar1[0x600] = iVar12;
    piVar11 = piVar1 + 0x700;
    iVar4 = iVar4 + 0x9646;
    piVar1 = piVar1 + 1;
    *piVar11 = iVar5;
    iVar2 = iVar2 + 0x1d2f;
    iVar7 = iVar7 + -0x2b33;
    iVar8 = iVar8 + -0x54cd;
    iVar5 = iVar5 + -0x14d1;
    pcVar6 = pcVar6 + 0x8000;
    iVar12 = iVar12 + -0x6b2f;
  } while (iVar3 != 0x4c8b00);
  return;
}

// ---- FUN_00700b7c  @ 0x700b7c
void FUN_00700b7c(int param_1,int param_2,int param_3,short *param_4,int param_5,int param_6,
                 int param_7)

{
  short sVar1;
  code *pcVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  int iVar7;
  short *psVar8;
  int local_128 [65];
  
  pcVar2 = *(code **)(*(int *)(param_1 + 0x1a0) + *(int *)(param_2 + 4) * 4 + 0x2c);
  iVar5 = *(int *)(*(int *)(param_1 + 0x1a0) + *(int *)(param_2 + 0x10) * 4 + 0x54);
  if (param_7 == 0) {
    return;
  }
  iVar6 = 0;
  do {
    (*pcVar2)(local_128,param_3 + param_5 * 4,param_6);
    iVar7 = 0;
    psVar8 = param_4;
    do {
      while( true ) {
        iVar3 = *(int *)((int)local_128 + iVar7);
        iVar4 = *(int *)(iVar5 + iVar7);
        if (-1 < iVar3) break;
        if ((iVar4 >> 1) - iVar3 < iVar4) {
          sVar1 = 0;
        }
        else {
          sVar1 = __divsi3();
          sVar1 = -sVar1;
        }
LAB_00700bee:
        iVar7 = iVar7 + 4;
        *psVar8 = sVar1;
        psVar8 = psVar8 + 1;
        if (iVar7 == 0x100) goto LAB_00700bfc;
      }
      if (iVar4 <= iVar3 + (iVar4 >> 1)) {
        sVar1 = __divsi3();
        goto LAB_00700bee;
      }
      iVar7 = iVar7 + 4;
      *psVar8 = 0;
      psVar8 = psVar8 + 1;
    } while (iVar7 != 0x100);
LAB_00700bfc:
    iVar6 = iVar6 + 1;
    param_4 = param_4 + 0x40;
    if (iVar6 == param_7) {
      return;
    }
    param_6 = param_6 + *(int *)(param_2 + 0x24);
  } while( true );
}

// ---- FUN_00700c2c  @ 0x700c2c
void FUN_00700c2c(int param_1,int param_2,int param_3,short *param_4,int param_5,int param_6,
                 int param_7)

{
  float *pfVar1;
  float *pfVar2;
  short *psVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  code *pcVar7;
  float local_130 [65];
  
  pcVar7 = *(code **)(*(int *)(param_1 + 0x1a0) + *(int *)(param_2 + 4) * 4 + 100);
  iVar5 = *(int *)(*(int *)(param_1 + 0x1a0) + *(int *)(param_2 + 0x10) * 4 + 0x8c);
  if (param_7 != 0) {
    iVar6 = 0;
    while( true ) {
      (*pcVar7)(local_130,param_3 + param_5 * 4,param_6);
      iVar4 = 0;
      psVar3 = param_4;
      do {
        pfVar1 = (float *)((int)local_130 + iVar4);
        pfVar2 = (float *)(iVar5 + iVar4);
        iVar4 = iVar4 + 4;
        *psVar3 = (short)(int)(*pfVar1 * *pfVar2 + 16384.5) + -0x4000;
        psVar3 = psVar3 + 1;
      } while (iVar4 != 0x100);
      iVar6 = iVar6 + 1;
      param_4 = param_4 + 0x40;
      if (iVar6 == param_7) break;
      param_6 = param_6 + *(int *)(param_2 + 0x24);
    }
  }
  return;
}

// ---- FUN_00700cc8  @ 0x700cc8
void FUN_00700cc8(int *param_1)

{
  ushort *puVar1;
  short *psVar2;
  float *pfVar3;
  double *pdVar4;
  float *pfVar5;
  int iVar6;
  int *piVar7;
  double *pdVar8;
  int iVar9;
  int iVar10;
  int iVar11;
  int iVar12;
  int iVar13;
  int iVar14;
  uint uVar15;
  int iVar16;
  bool bVar17;
  uint in_fpscr;
  double dVar18;
  double dVar19;
  double *local_34;
  
  iVar6 = param_1[0x68];
  iVar12 = param_1[0x15];
  if (0 < param_1[0x13]) {
    iVar16 = 0;
    iVar14 = 0;
    local_34 = (double *)&DAT_008548d8;
    iVar9 = *(int *)(iVar12 + 0x28) + *(int *)(iVar12 + 0x24) * 0x100;
    bVar17 = false;
    iVar13 = iVar6;
    if (iVar9 == 0x707) goto LAB_00700de8;
LAB_00700d1a:
    if (bVar17 || iVar9 < 0x707) {
      if (iVar9 == 0x402) {
        *(undefined4 *)(iVar13 + 0x2c) = 0x710925;
        iVar9 = 0;
      }
      else if (iVar9 < 0x403) {
        if (iVar9 == 0x202) {
          *(undefined4 *)(iVar13 + 0x2c) = 0x7114a9;
          iVar9 = 0;
        }
        else if (iVar9 < 0x203) {
          if (iVar9 == 0x102) {
            *(undefined4 *)(iVar13 + 0x2c) = 0x70fce5;
            iVar9 = 0;
          }
          else if (iVar9 == 0x201) {
            *(undefined4 *)(iVar13 + 0x2c) = 0x7108f9;
            iVar9 = 0;
          }
          else {
            if (iVar9 != 0x101) goto LAB_00700d56;
            *(undefined4 *)(iVar13 + 0x2c) = 0x711489;
            iVar9 = 0;
          }
        }
        else if (iVar9 == 0x303) {
          *(undefined4 *)(iVar13 + 0x2c) = 0x7114f1;
          iVar9 = 0;
        }
        else if (iVar9 == 0x306) {
          *(undefined4 *)(iVar13 + 0x2c) = 0x70fda1;
          iVar9 = 0;
        }
        else {
          if (iVar9 != 0x204) goto LAB_00700d56;
          *(undefined4 *)(iVar13 + 0x2c) = 0x70fd11;
          iVar9 = 0;
        }
      }
      else if (iVar9 == 0x50a) {
        *(undefined4 *)(iVar13 + 0x2c) = 0x710071;
        iVar9 = 0;
      }
      else if (iVar9 < 0x50b) {
        if (iVar9 == 0x408) {
          *(undefined4 *)(iVar13 + 0x2c) = 0x70feb5;
          iVar9 = 0;
        }
        else if (iVar9 == 0x505) {
          *(undefined4 *)(iVar13 + 0x2c) = 0x711689;
          iVar9 = 0;
        }
        else {
          if (iVar9 != 0x404) goto LAB_00700d56;
          *(undefined4 *)(iVar13 + 0x2c) = 0x7115ad;
          iVar9 = 0;
        }
      }
      else if (iVar9 == 0x606) {
        *(undefined4 *)(iVar13 + 0x2c) = 0x7117e9;
        iVar9 = 0;
      }
      else if (iVar9 == 0x60c) {
        *(undefined4 *)(iVar13 + 0x2c) = 0x7102ad;
        iVar9 = 0;
      }
      else {
        if (iVar9 != 0x603) goto LAB_00700d56;
        *(undefined4 *)(iVar13 + 0x2c) = 0x7109c1;
        iVar9 = 0;
      }
    }
    else if (iVar9 == 0xb0b) {
      iVar9 = 0;
      *(undefined4 *)(iVar13 + 0x2c) = 0x70d92d;
    }
    else if (iVar9 < 0xb0c) {
      if (iVar9 == 0x810) {
        iVar9 = 0;
        *(undefined4 *)(iVar13 + 0x2c) = 0x70f8d5;
      }
      else if (iVar9 < 0x811) {
        if (iVar9 == 0x804) {
          iVar9 = 0;
          *(undefined4 *)(iVar13 + 0x2c) = 0x710acd;
        }
        else if (iVar9 == 0x808) {
          iVar9 = param_1[0x3a];
          if (iVar9 == 1) {
            *(undefined4 *)(iVar13 + 0x2c) = 0x70cf7d;
          }
          else if (iVar9 == 0) {
            iVar9 = 0;
            *(undefined4 *)(iVar13 + 0x2c) = 0x70d111;
          }
          else if (iVar9 == 2) {
            *(undefined4 *)(iVar13 + 100) = 0x70cd71;
          }
          else {
            *(undefined4 *)(*param_1 + 0x14) = 0x31;
            (**(code **)*param_1)(param_1);
            iVar9 = iVar16;
          }
        }
        else {
          if (iVar9 != 0x70e) goto LAB_00700d56;
          *(undefined4 *)(iVar13 + 0x2c) = 0x710565;
          iVar9 = 0;
        }
      }
      else if (iVar9 == 0xa05) {
        *(undefined4 *)(iVar13 + 0x2c) = 0x710c91;
        iVar9 = 0;
      }
      else if (iVar9 == 0xa0a) {
        *(undefined4 *)(iVar13 + 0x2c) = 0x70d635;
        iVar9 = 0;
      }
      else {
        if (iVar9 != 0x909) goto LAB_00700d56;
        *(undefined4 *)(iVar13 + 0x2c) = 0x70d3a1;
        iVar9 = 0;
      }
    }
    else if (iVar9 == 0xe07) {
      iVar9 = 0;
      *(undefined4 *)(iVar13 + 0x2c) = 0x71112d;
    }
    else if (iVar9 < 0xe08) {
      if (iVar9 == 0xc0c) {
        iVar9 = 0;
        *(undefined4 *)(iVar13 + 0x2c) = 0x70ddb9;
      }
      else if (iVar9 == 0xd0d) {
        iVar9 = 0;
        *(undefined4 *)(iVar13 + 0x2c) = 0x70e17d;
      }
      else {
        if (iVar9 != 0xc06) goto LAB_00700d56;
        iVar9 = 0;
        *(undefined4 *)(iVar13 + 0x2c) = 0x710ea5;
      }
    }
    else if (iVar9 == 0xf0f) {
      iVar9 = 0;
      *(undefined4 *)(iVar13 + 0x2c) = 0x70eaf9;
    }
    else if (iVar9 < 0xf10) {
      if (iVar9 == 0xe0e) {
        iVar9 = 0;
        *(undefined4 *)(iVar13 + 0x2c) = 0x70e675;
      }
      else {
LAB_00700d56:
        *(undefined4 *)(*param_1 + 0x14) = 7;
        *(undefined4 *)(*param_1 + 0x18) = *(undefined4 *)(iVar12 + 0x24);
        *(undefined4 *)(*param_1 + 0x1c) = *(undefined4 *)(iVar12 + 0x28);
        (**(code **)*param_1)(param_1);
        iVar9 = iVar16;
      }
    }
    else if (iVar9 == 0x1008) {
      iVar9 = 0;
      *(undefined4 *)(iVar13 + 0x2c) = 0x70f4f5;
    }
    else {
      if (iVar9 != 0x1010) goto LAB_00700d56;
      iVar9 = 0;
      *(undefined4 *)(iVar13 + 0x2c) = 0x70efc1;
    }
    uVar15 = *(uint *)(iVar12 + 0x10);
    if (3 < uVar15) {
      iVar10 = uVar15 + 0x16;
      iVar16 = iVar9;
      goto LAB_00700e06;
    }
LAB_00700d80:
    iVar10 = uVar15 + 0x16;
    iVar11 = param_1[iVar10];
    iVar16 = iVar9;
    if (iVar11 == 0) goto LAB_00700e06;
    if (iVar9 == 1) goto LAB_00700e28;
    while( true ) {
      if (iVar16 == 2) {
        iVar9 = iVar6 + (uVar15 + 0x22) * 4;
        pfVar3 = *(float **)(iVar9 + 4);
        pdVar4 = local_34;
        if (pfVar3 == (float *)0x0) {
          pfVar3 = (float *)(**(code **)param_1[1])(param_1,1,0x100);
          *(float **)(iVar9 + 4) = pfVar3;
        }
        do {
          iVar9 = 0;
          pdVar4 = pdVar4 + 1;
          dVar18 = *pdVar4;
          pfVar5 = pfVar3;
          pdVar8 = local_34;
          do {
            dVar19 = (double)VectorUnsignedToFloat
                                       ((uint)*(ushort *)(iVar11 + iVar9),
                                        (byte)(in_fpscr >> 0x16) & 3);
            pdVar8 = pdVar8 + 1;
            iVar9 = iVar9 + 2;
            *pfVar5 = (float)(1.0 / (dVar19 * dVar18 * *pdVar8 * 8.0));
            pfVar5 = pfVar5 + 1;
          } while (iVar9 != 0x10);
          iVar11 = iVar11 + 0x10;
          pfVar3 = pfVar3 + 8;
        } while (pdVar4 != (double *)&UNK_00854918);
        *(undefined4 *)(iVar13 + 4) = 0x700c2d;
      }
      else {
        iVar9 = iVar6 + (uVar15 + 0x14) * 4;
        piVar7 = *(int **)(iVar9 + 4);
        if (piVar7 == (int *)0x0) {
          piVar7 = (int *)(**(code **)param_1[1])(param_1,1,0x100);
          *(int **)(iVar9 + 4) = piVar7;
        }
        iVar9 = 0;
        do {
          puVar1 = (ushort *)(iVar11 + iVar9);
          iVar9 = iVar9 + 2;
          *piVar7 = (uint)*puVar1 << 3;
          piVar7 = piVar7 + 1;
        } while (iVar9 != 0x80);
        *(undefined4 *)(iVar13 + 4) = 0x700b7d;
      }
      iVar14 = iVar14 + 1;
      iVar9 = iVar12;
      if (param_1[0x13] <= iVar14) break;
      while( true ) {
        iVar13 = iVar13 + 4;
        iVar12 = iVar9 + 0x58;
        iVar9 = *(int *)(iVar9 + 0x80) + *(int *)(iVar9 + 0x7c) * 0x100;
        bVar17 = iVar9 == 0x707;
        if (!bVar17) goto LAB_00700d1a;
LAB_00700de8:
        iVar9 = 0;
        iVar16 = 0;
        *(undefined4 *)(iVar13 + 0x2c) = 0x711949;
        uVar15 = *(uint *)(iVar12 + 0x10);
        if (uVar15 < 4) goto LAB_00700d80;
        iVar10 = uVar15 + 0x16;
LAB_00700e06:
        *(undefined4 *)(*param_1 + 0x14) = 0x36;
        *(uint *)(*param_1 + 0x18) = uVar15;
        (**(code **)*param_1)(param_1);
        iVar11 = param_1[iVar10];
        if (iVar16 != 1) break;
LAB_00700e28:
        iVar9 = iVar6 + (uVar15 + 0x14) * 4;
        piVar7 = *(int **)(iVar9 + 4);
        if (piVar7 == (int *)0x0) {
          piVar7 = (int *)(**(code **)param_1[1])(param_1,iVar16,0x100);
          *(int **)(iVar9 + 4) = piVar7;
        }
        iVar9 = 0;
        do {
          puVar1 = (ushort *)(iVar11 + iVar9);
          psVar2 = (short *)((int)&DAT_00854860 + iVar9);
          iVar9 = iVar9 + 2;
          *piVar7 = (int)((uint)*puVar1 * (int)*psVar2 + 0x400) >> 0xb;
          piVar7 = piVar7 + 1;
        } while (iVar9 != 0x80);
        iVar14 = iVar14 + 1;
        *(undefined4 *)(iVar13 + 4) = 0x700b7d;
        iVar9 = iVar12;
        if (param_1[0x13] <= iVar14) {
          return;
        }
      }
    }
  }
  return;
}

// ---- FUN_00701358  @ 0x701358
bool FUN_00701358(undefined4 *param_1)

{
  int iVar1;
  undefined4 *puVar2;
  
  puVar2 = *(undefined4 **)(param_1[8] + 0x18);
  iVar1 = (*(code *)puVar2[3])();
  if (iVar1 != 0) {
    *param_1 = *puVar2;
    param_1[1] = puVar2[1];
  }
  return iVar1 != 0;
}

// ---- FUN_00701374  @ 0x701374
void FUN_00701374(int param_1)

{
  int iVar1;
  undefined4 *puVar2;
  
  puVar2 = *(undefined4 **)(*(int *)(param_1 + 0x78) + 0x18);
  iVar1 = (*(code *)puVar2[3])();
  if (iVar1 == 0) {
    *(undefined4 *)(**(int **)(param_1 + 0x78) + 0x14) = 0x19;
    (**(code **)**(undefined4 **)(param_1 + 0x78))();
  }
  *(undefined4 *)(param_1 + 0x70) = *puVar2;
  *(undefined4 *)(param_1 + 0x74) = puVar2[1];
  return;
}

// ---- FUN_0070139c  @ 0x70139c
undefined4 FUN_0070139c(undefined4 *param_1,uint param_2,uint param_3)

{
  undefined1 *puVar1;
  int iVar2;
  uint uVar3;
  int iVar4;
  
  iVar4 = param_1[3];
  if (param_3 == 0) {
    *(undefined4 *)(*(int *)param_1[8] + 0x14) = 0x29;
    (*(code *)**(undefined4 **)param_1[8])();
  }
  iVar4 = param_3 + iVar4;
  uVar3 = (param_2 & (1 << (param_3 & 0xff)) - 1U) << (0x18U - iVar4 & 0xff) | param_1[2];
joined_r0x007013c4:
  do {
    if (iVar4 < 8) {
      param_1[2] = uVar3;
      param_1[3] = iVar4;
      return 1;
    }
    puVar1 = (undefined1 *)*param_1;
    *puVar1 = (char)(uVar3 >> 0x10);
    *param_1 = puVar1 + 1;
    iVar2 = param_1[1];
    param_1[1] = iVar2 + -1;
    if ((iVar2 + -1 == 0) && (iVar2 = FUN_00701358(param_1), iVar2 == 0)) {
      return 0;
    }
    if ((uVar3 & 0xffffff) >> 0x10 == 0xff) {
      puVar1 = (undefined1 *)*param_1;
      *puVar1 = 0;
      *param_1 = puVar1 + 1;
      iVar2 = param_1[1];
      param_1[1] = iVar2 + -1;
      if (iVar2 + -1 == 0) {
        iVar2 = FUN_00701358(param_1);
        if (iVar2 == 0) {
          return 0;
        }
        iVar4 = iVar4 + -8;
        uVar3 = uVar3 << 8;
        goto joined_r0x007013c4;
      }
    }
    iVar4 = iVar4 + -8;
    uVar3 = uVar3 << 8;
  } while( true );
}

// ---- FUN_0070143c  @ 0x70143c
void FUN_0070143c(int param_1,uint param_2,uint param_3)

{
  undefined1 *puVar1;
  uint uVar2;
  uint uVar3;
  uint uVar4;
  int iVar5;
  uint uVar6;
  
  iVar5 = *(int *)(param_1 + 0x10);
  if (param_3 == 0) {
    *(undefined4 *)(**(int **)(param_1 + 0x78) + 0x14) = 0x29;
    (**(code **)**(undefined4 **)(param_1 + 0x78))();
  }
  if (*(int *)(param_1 + 0x6c) == 0) {
    uVar6 = param_3 + iVar5;
    uVar2 = (param_2 & (1 << (param_3 & 0xff)) - 1U) << (0x18 - uVar6 & 0xff) |
            *(uint *)(param_1 + 0xc);
    uVar4 = uVar6;
    if (7 < (int)uVar6) {
      do {
        while( true ) {
          uVar3 = uVar2;
          puVar1 = *(undefined1 **)(param_1 + 0x70);
          *puVar1 = (char)(uVar3 >> 0x10);
          *(undefined1 **)(param_1 + 0x70) = puVar1 + 1;
          iVar5 = *(int *)(param_1 + 0x74) + -1;
          *(int *)(param_1 + 0x74) = iVar5;
          if (iVar5 == 0) {
            FUN_00701374(param_1);
          }
          if ((uVar3 & 0xffffff) >> 0x10 == 0xff) break;
LAB_0070147a:
          uVar4 = uVar4 - 8;
          uVar2 = uVar3 << 8;
          if ((int)uVar4 < 8) goto LAB_007014c2;
        }
        puVar1 = *(undefined1 **)(param_1 + 0x70);
        *puVar1 = 0;
        *(undefined1 **)(param_1 + 0x70) = puVar1 + 1;
        iVar5 = *(int *)(param_1 + 0x74) + -1;
        *(int *)(param_1 + 0x74) = iVar5;
        if (iVar5 != 0) goto LAB_0070147a;
        uVar4 = uVar4 - 8;
        FUN_00701374(param_1);
        uVar2 = uVar3 << 8;
      } while (7 < (int)uVar4);
LAB_007014c2:
      uVar2 = uVar3 << 8;
      uVar6 = uVar6 & 7;
    }
    *(uint *)(param_1 + 0xc) = uVar2;
    *(uint *)(param_1 + 0x10) = uVar6;
  }
  return;
}

// ---- FUN_007014e4  @ 0x7014e4
/* WARNING: Restarted to delay deadcode elimination for space: stack */

undefined4 FUN_007014e4(int *param_1,undefined4 *param_2)

{
  int iVar1;
  undefined4 uVar2;
  int iVar3;
  int iVar4;
  char *pcVar5;
  int iVar6;
  int iVar7;
  undefined4 *puVar8;
  int *piVar9;
  int iVar10;
  int iVar11;
  int iVar12;
  int *piVar13;
  short *psVar14;
  undefined4 *local_6c;
  int *local_68;
  int local_54;
  char *local_4c;
  int local_48;
  int local_44;
  int local_40;
  int local_3c [4];
  int *local_2c;
  
  iVar1 = param_1[0x69];
  local_4c = *(char **)param_1[6];
  local_48 = ((undefined4 *)param_1[6])[1];
  local_44 = *(int *)(iVar1 + 0xc);
  local_40 = *(int *)(iVar1 + 0x10);
  local_3c[0] = *(undefined4 *)(iVar1 + 0x14);
  local_3c[1] = *(undefined4 *)(iVar1 + 0x18);
  local_3c[2] = *(undefined4 *)(iVar1 + 0x1c);
  local_3c[3] = *(undefined4 *)(iVar1 + 0x20);
  local_2c = param_1;
  if ((param_1[0x3b] == 0) || (iVar7 = *(int *)(iVar1 + 0x24), iVar7 != 0)) {
LAB_0070152e:
    if (0 < param_1[0x4f]) {
      local_68 = param_1 + 0x4f;
      local_54 = 0;
      local_6c = param_2;
      do {
        local_68 = local_68 + 1;
        psVar14 = (short *)*local_6c;
        iVar4 = *local_68 + 4;
        iVar11 = *(int *)(iVar1 + *(int *)(param_1[*local_68 + 0x49] + 0x14) * 4 + 0x2c);
        puVar8 = *(undefined4 **)(iVar1 + *(int *)(param_1[*local_68 + 0x49] + 0x18) * 4 + 0x3c);
        iVar3 = local_2c[0x60];
        piVar13 = (int *)local_2c[0x5f];
        iVar7 = (int)*psVar14 - (int)(&local_4c)[iVar4];
        if (iVar7 < 0) {
          iVar12 = iVar7 + -1;
          iVar7 = -iVar7;
LAB_007015a2:
          iVar6 = 0;
          do {
            iVar6 = iVar6 + 1;
            iVar7 = iVar7 >> 1;
          } while (iVar7 != 0);
          if (iVar6 < 0xc) goto LAB_007015b0;
          *(undefined4 *)(*local_2c + 0x14) = 6;
          (**(code **)*local_2c)();
          iVar7 = FUN_0070139c(&local_4c,*(undefined4 *)(iVar11 + iVar6 * 4),
                               *(undefined1 *)(iVar11 + iVar6 + 0x400));
        }
        else {
          iVar12 = iVar7;
          if (iVar7 != 0) goto LAB_007015a2;
          iVar6 = 0;
LAB_007015b0:
          iVar7 = FUN_0070139c(&local_4c,*(undefined4 *)(iVar11 + iVar6 * 4),
                               *(undefined1 *)(iVar11 + iVar6 + 0x400));
        }
        if ((iVar7 == 0) ||
           ((iVar6 != 0 && (iVar7 = FUN_0070139c(&local_4c,iVar12,iVar6), iVar7 == 0))))
        goto LAB_007016e6;
        if (0 < iVar3) {
          iVar7 = 0;
          iVar11 = 1;
          do {
            piVar13 = piVar13 + 1;
            iVar12 = (int)psVar14[*piVar13];
            if (iVar12 == 0) {
              iVar7 = iVar7 + 1;
            }
            else {
              for (; 0xf < iVar7; iVar7 = iVar7 + -0x10) {
                iVar6 = FUN_0070139c(&local_4c,puVar8[0xf0],*(undefined1 *)(puVar8 + 0x13c));
                if (iVar6 == 0) goto LAB_007016e6;
              }
              iVar6 = iVar12;
              if (iVar12 < 0) {
                iVar6 = -iVar12;
                iVar12 = iVar12 + -1;
              }
              iVar6 = iVar6 >> 1;
              if (iVar6 == 0) {
                iVar10 = 1;
              }
              else {
                iVar10 = 1;
                do {
                  iVar10 = iVar10 + 1;
                  iVar6 = iVar6 >> 1;
                } while (iVar6 != 0);
                if (10 < iVar10) {
                  *(undefined4 *)(*local_2c + 0x14) = 6;
                  (**(code **)*local_2c)();
                }
              }
              iVar7 = iVar10 + iVar7 * 0x10;
              iVar7 = FUN_0070139c(&local_4c,puVar8[iVar7],
                                   *(undefined1 *)((int)puVar8 + iVar7 + 0x400));
              if ((iVar7 == 0) || (iVar7 = FUN_0070139c(&local_4c,iVar12,iVar10), iVar7 == 0))
              goto LAB_007016e6;
              iVar7 = 0;
            }
            iVar11 = iVar11 + 1;
          } while (iVar11 <= iVar3);
          if ((iVar7 != 0) &&
             (iVar7 = FUN_0070139c(&local_4c,*puVar8,*(undefined1 *)(puVar8 + 0x100)), iVar7 == 0))
          goto LAB_007016e6;
        }
        (&local_4c)[iVar4] = (char *)(int)*(short *)*local_6c;
        local_54 = local_54 + 1;
        local_6c = local_6c + 1;
      } while (local_54 < param_1[0x4f]);
    }
    *(char **)param_1[6] = local_4c;
    *(int *)(param_1[6] + 4) = local_48;
    *(int *)(iVar1 + 0xc) = local_44;
    *(int *)(iVar1 + 0x10) = local_40;
    *(int *)(iVar1 + 0x14) = local_3c[0];
    *(int *)(iVar1 + 0x18) = local_3c[1];
    *(int *)(iVar1 + 0x1c) = local_3c[2];
    *(int *)(iVar1 + 0x20) = local_3c[3];
    iVar7 = param_1[0x3b];
    if (iVar7 != 0) {
      iVar3 = *(int *)(iVar1 + 0x24);
      if (iVar3 == 0) {
        *(int *)(iVar1 + 0x24) = iVar7;
        *(uint *)(iVar1 + 0x28) = *(int *)(iVar1 + 0x28) + 1U & 7;
        iVar3 = iVar7;
      }
      *(int *)(iVar1 + 0x24) = iVar3 + -1;
    }
    uVar2 = 1;
  }
  else {
    uVar2 = *(undefined4 *)(iVar1 + 0x28);
    iVar3 = FUN_0070139c(&local_4c,0x7f,7);
    if (iVar3 != 0) {
      local_44 = iVar7;
      local_40 = iVar7;
      pcVar5 = local_4c + 1;
      *local_4c = -1;
      local_48 = local_48 + -1;
      local_4c = pcVar5;
      if ((local_48 != 0) || (iVar7 = FUN_00701358(&local_4c), iVar7 != 0)) {
        *local_4c = (char)uVar2 + -0x30;
        local_4c = local_4c + 1;
        local_48 = local_48 + -1;
        if ((local_48 != 0) || (iVar7 = FUN_00701358(&local_4c), iVar7 != 0)) {
          piVar13 = local_2c;
          if (0 < local_2c[0x48]) {
            iVar7 = 0;
            piVar9 = &local_40;
            do {
              piVar9 = piVar9 + 1;
              *piVar9 = 0;
              iVar7 = iVar7 + 1;
            } while (iVar7 < piVar13[0x48]);
          }
          goto LAB_0070152e;
        }
      }
    }
LAB_007016e6:
    uVar2 = 0;
  }
  return uVar2;
}

// ---- FUN_007017a4  @ 0x7017a4
undefined4 FUN_007017a4(int *param_1,undefined4 *param_2)

{
  uint uVar1;
  uint uVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  undefined4 *puVar6;
  int *piVar7;
  int iVar8;
  uint uVar9;
  int *piVar10;
  int iVar11;
  short *psVar12;
  int iVar13;
  undefined4 *local_3c;
  int local_38;
  int *local_30;
  
  iVar3 = param_1[0x3b];
  iVar13 = param_1[0x69];
  if (iVar3 != 0) {
    iVar4 = *(int *)(iVar13 + 0x24);
    if (*(int *)(iVar13 + 0x24) == 0) {
      if (0 < param_1[0x48]) {
        puVar6 = (undefined4 *)(iVar13 + 0x10);
        iVar3 = 0;
        do {
          puVar6 = puVar6 + 1;
          *puVar6 = 0;
          iVar3 = iVar3 + 1;
        } while (iVar3 < param_1[0x48]);
        iVar3 = param_1[0x3b];
      }
      *(int *)(iVar13 + 0x24) = iVar3;
      iVar4 = iVar3;
    }
    *(int *)(iVar13 + 0x24) = iVar4 + -1;
  }
  if (0 < param_1[0x4f]) {
    local_30 = param_1 + 0x4f;
    local_38 = 0;
    local_3c = param_2;
    do {
      local_30 = local_30 + 1;
      iVar4 = *local_30 + 4;
      psVar12 = (short *)*local_3c;
      iVar11 = param_1[0x60];
      piVar10 = (int *)param_1[0x5f];
      iVar8 = *(int *)(iVar13 + *(int *)(param_1[*local_30 + 0x49] + 0x14) * 4 + 0x4c);
      piVar7 = *(int **)(iVar13 + *(int *)(param_1[*local_30 + 0x49] + 0x18) * 4 + 0x5c);
      uVar1 = (int)*psVar12 - *(int *)(iVar13 + iVar4 * 4 + 4);
      uVar9 = (int)uVar1 >> 0x1f;
      iVar5 = (uVar1 ^ uVar9) - uVar9;
      iVar3 = 0;
      if (iVar5 != 0) {
        iVar3 = 0;
        do {
          iVar3 = iVar3 + 1;
          iVar5 = iVar5 >> 1;
        } while (iVar5 != 0);
        if (iVar3 < 0xc) {
          iVar3 = iVar3 * 4;
        }
        else {
          iVar3 = iVar3 * 4;
          *(undefined4 *)(*param_1 + 0x14) = 6;
          (**(code **)*param_1)(param_1);
        }
      }
      *(int *)(iVar8 + iVar3) = *(int *)(iVar8 + iVar3) + 1;
      if (0 < iVar11) {
        uVar9 = 0;
        iVar3 = 1;
        do {
          piVar10 = piVar10 + 1;
          uVar1 = (uint)psVar12[*piVar10];
          if (uVar1 == 0) {
            uVar9 = uVar9 + 1;
          }
          else {
            if (0xf < (int)uVar9) {
              uVar2 = uVar9 - 0x10;
              uVar9 = uVar2 & 0xf;
              piVar7[0xf0] = piVar7[0xf0] + 1 + (uVar2 >> 4);
            }
            iVar5 = (int)((uVar1 ^ (int)uVar1 >> 0x1f) - ((int)uVar1 >> 0x1f)) >> 1;
            if (iVar5 == 0) {
              iVar8 = 1;
            }
            else {
              iVar8 = 1;
              do {
                iVar8 = iVar8 + 1;
                iVar5 = iVar5 >> 1;
              } while (iVar5 != 0);
              if (10 < iVar8) {
                *(undefined4 *)(*param_1 + 0x14) = 6;
                (**(code **)*param_1)(param_1);
              }
            }
            iVar8 = iVar8 + uVar9 * 0x10;
            uVar9 = 0;
            piVar7[iVar8] = piVar7[iVar8] + 1;
          }
          iVar3 = iVar3 + 1;
        } while (iVar3 <= iVar11);
        if (uVar9 != 0) {
          *piVar7 = *piVar7 + 1;
        }
      }
      *(int *)(iVar13 + iVar4 * 4 + 4) = (int)*(short *)*local_3c;
      local_38 = local_38 + 1;
      local_3c = local_3c + 1;
    } while (local_38 < param_1[0x4f]);
  }
  return 1;
}

// ---- FUN_0070197c  @ 0x70197c
void FUN_0070197c(int *param_1,int param_2,uint param_3,int *param_4)

{
  int *piVar1;
  uint uVar2;
  byte *pbVar3;
  uint uVar4;
  int iVar5;
  int iVar6;
  byte *pbVar7;
  byte *pbVar8;
  int iVar9;
  int iVar10;
  undefined4 *puVar11;
  int iVar12;
  int iVar13;
  uint uVar14;
  undefined4 uStack_538;
  int local_534 [257];
  byte local_130 [260];
  int local_2c;
  
  local_2c = __stack_chk_guard;
  if (3 < param_3) {
    *(undefined4 *)(*param_1 + 0x14) = 0x34;
    *(uint *)(*param_1 + 0x18) = param_3;
    (**(code **)*param_1)(param_1);
  }
  if (param_2 == 0) {
    iVar12 = param_1[param_3 + 0x22];
  }
  else {
    iVar12 = param_1[param_3 + 0x1e];
  }
  if (iVar12 == 0) {
    *(undefined4 *)(*param_1 + 0x14) = 0x34;
    *(uint *)(*param_1 + 0x18) = param_3;
    (**(code **)*param_1)(param_1);
  }
  iVar5 = *param_4;
  if (iVar5 == 0) {
    iVar5 = (**(code **)param_1[1])(param_1,1,0x500);
    *param_4 = iVar5;
  }
  iVar10 = 1;
  iVar13 = 0;
  do {
    uVar4 = (uint)*(byte *)(iVar12 + iVar10);
    if (0x100 < (int)(iVar13 + uVar4)) {
      *(undefined4 *)(*param_1 + 0x14) = 9;
      (**(code **)*param_1)(param_1);
    }
    iVar6 = iVar13;
    if (uVar4 != 0) {
      uVar2 = 0;
      do {
        local_130[uVar2 + iVar13] = (byte)iVar10;
        uVar2 = uVar2 + 1;
        iVar6 = iVar13 + uVar4;
      } while (uVar2 != uVar4);
    }
    iVar10 = iVar10 + 1;
    iVar13 = iVar6;
  } while (iVar10 != 0x11);
  iVar13 = 0;
  local_130[iVar6] = 0;
  uVar4 = (uint)local_130[0];
  if (uVar4 != 0) {
    iVar9 = 0;
    iVar10 = 0;
    uVar2 = uVar4;
    while( true ) {
      uVar14 = iVar13 + uVar4;
      if (uVar2 == uVar14) {
        pbVar3 = local_130 + iVar9;
        piVar1 = local_534 + iVar9 + -1;
        do {
          pbVar3 = pbVar3 + 1;
          uVar2 = (uint)*pbVar3;
          iVar9 = iVar9 + 1;
          piVar1 = piVar1 + 1;
          *piVar1 = iVar10;
          iVar10 = iVar10 + 1;
        } while (uVar2 == uVar14);
      }
      if (1 << (uVar14 & 0xff) <= iVar10) {
        *(undefined4 *)(*param_1 + 0x14) = 9;
        (**(code **)*param_1)(param_1);
      }
      if (uVar2 == 0) break;
      iVar13 = iVar13 + 1;
      iVar10 = iVar10 << 1;
    }
  }
  memset((void *)(iVar5 + 0x400),0,0x100);
  if (param_2 == 0) {
    uVar4 = 0xff;
  }
  else {
    uVar4 = 0xf;
  }
  if (iVar6 != 0) {
    pbVar3 = (byte *)(iVar12 + 0x10);
    puVar11 = &uStack_538;
    pbVar7 = local_130;
    do {
      pbVar3 = pbVar3 + 1;
      uVar2 = (uint)*pbVar3;
      if ((uVar4 < uVar2) || (*(char *)(iVar5 + uVar2 + 0x400) != '\0')) {
        *(undefined4 *)(*param_1 + 0x14) = 9;
        (**(code **)*param_1)(param_1);
      }
      puVar11 = puVar11 + 1;
      *(undefined4 *)(iVar5 + uVar2 * 4) = *puVar11;
      pbVar8 = pbVar7 + 1;
      *(byte *)(iVar5 + uVar2 + 0x400) = *pbVar7;
      pbVar7 = pbVar8;
    } while (pbVar8 != local_130 + iVar6);
  }
  if (local_2c != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}

// ---- FUN_00701b7c  @ 0x701b7c
void FUN_00701b7c(int *param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  void *pvVar1;
  undefined4 uVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  int *piVar7;
  uint uVar8;
  int iVar9;
  
  iVar5 = param_1[0x69];
  if (param_2 == 0) {
    *(undefined4 *)(iVar5 + 8) = 0x7024fd;
    iVar3 = param_1[0x42];
  }
  else {
    *(undefined4 *)(iVar5 + 8) = 0x7025a5;
    iVar3 = param_1[0x42];
  }
  if (iVar3 == 0) {
    if (param_2 == 0) {
      *(undefined4 *)(iVar5 + 4) = 0x7014e5;
    }
    else {
      *(undefined4 *)(iVar5 + 4) = 0x7017a5;
    }
  }
  else {
    *(int **)(iVar5 + 0x78) = param_1;
    *(int *)(iVar5 + 0x6c) = param_2;
    if (param_1[0x5c] == 0) {
      if (param_1[0x5a] == 0) {
        *(undefined4 *)(iVar5 + 4) = 0x70210d;
      }
      else {
        *(undefined4 *)(iVar5 + 4) = 0x702695;
      }
    }
    else if (param_1[0x5a] == 0) {
      *(undefined4 *)(iVar5 + 4) = 0x702231;
    }
    else {
      *(undefined4 *)(iVar5 + 4) = 0x7022bd;
      if (*(int *)(iVar5 + 0x88) == 0) {
        uVar2 = (**(code **)param_1[1])(param_1,1,1000,*(code **)param_1[1],param_4);
        *(undefined4 *)(iVar5 + 0x88) = uVar2;
      }
    }
    *(undefined4 *)(iVar5 + 0x7c) = *(undefined4 *)(param_1[0x49] + 0x18);
    *(undefined4 *)(iVar5 + 0x80) = 0;
    *(undefined4 *)(iVar5 + 0x84) = 0;
  }
  if (0 < param_1[0x48]) {
    piVar7 = param_1 + 0x48;
    iVar4 = 0;
    iVar3 = iVar5;
    do {
      piVar7 = piVar7 + 1;
      iVar6 = *piVar7;
      if ((param_1[0x5a] == 0) && (param_1[0x5c] == 0)) {
        uVar8 = *(uint *)(iVar6 + 0x14);
        if (param_2 == 0) {
          FUN_0070197c(param_1,1,uVar8,iVar5 + uVar8 * 4 + 0x2c);
        }
        else {
          if (3 < uVar8) {
            *(undefined4 *)(*param_1 + 0x14) = 0x34;
            *(uint *)(*param_1 + 0x18) = uVar8;
            (**(code **)*param_1)(param_1);
          }
          iVar9 = iVar5 + (uVar8 + 0x12) * 4;
          pvVar1 = *(void **)(iVar9 + 4);
          if (pvVar1 == (void *)0x0) {
            pvVar1 = (void *)(**(code **)param_1[1])(param_1,1,0x404);
            *(void **)(iVar9 + 4) = pvVar1;
          }
          memset(pvVar1,0,0x404);
        }
        *(undefined4 *)(iVar3 + 0x14) = 0;
      }
      if (param_1[0x5b] != 0) {
        uVar8 = *(uint *)(iVar6 + 0x18);
        if (param_2 == 0) {
          FUN_0070197c(param_1,0,uVar8,iVar5 + uVar8 * 4 + 0x3c);
        }
        else {
          if (3 < uVar8) {
            *(undefined4 *)(*param_1 + 0x14) = 0x34;
            *(uint *)(*param_1 + 0x18) = uVar8;
            (**(code **)*param_1)(param_1);
          }
          iVar6 = iVar5 + (uVar8 + 0x16) * 4;
          pvVar1 = *(void **)(iVar6 + 4);
          if (pvVar1 == (void *)0x0) {
            pvVar1 = (void *)(**(code **)param_1[1])(param_1,1,0x404);
            *(void **)(iVar6 + 4) = pvVar1;
          }
          memset(pvVar1,0,0x404);
        }
      }
      iVar4 = iVar4 + 1;
      iVar3 = iVar3 + 4;
    } while (iVar4 < param_1[0x48]);
  }
  *(undefined4 *)(iVar5 + 0xc) = 0;
  *(undefined4 *)(iVar5 + 0x10) = 0;
  iVar3 = param_1[0x3b];
  *(undefined4 *)(iVar5 + 0x28) = 0;
  *(int *)(iVar5 + 0x24) = iVar3;
  return;
}

// ---- FUN_00701d54  @ 0x701d54
void FUN_00701d54(int *param_1,int *param_2,int *param_3)

{
  char cVar1;
  int *piVar2;
  int *piVar3;
  char *pcVar4;
  int *piVar5;
  int iVar6;
  int *piVar7;
  char *pcVar8;
  int **ppiVar9;
  char cVar10;
  int *piVar11;
  int iVar12;
  int *piVar13;
  bool bVar14;
  int *local_85c;
  int *local_858 [257];
  int local_454 [256];
  char cStack_51;
  undefined4 local_50;
  int iStack_4c;
  int iStack_48;
  undefined4 uStack_44;
  undefined4 local_40 [3];
  char acStack_32 [6];
  int local_2c;
  
  local_2c = __stack_chk_guard;
  local_85c = param_1;
  memset(&local_50,0,0x21);
  memset(local_454,0,0x404);
  piVar5 = local_85c;
  ppiVar9 = &local_85c;
  do {
    ppiVar9 = ppiVar9 + 1;
    *ppiVar9 = (int *)0xffffffff;
  } while (ppiVar9 != local_858 + 0x100);
  param_3[0x100] = 1;
  piVar11 = (int *)0x0;
  iVar6 = 1000000000;
  piVar13 = (int *)0xffffffff;
  do {
    iVar12 = param_3[(int)piVar11];
    if ((iVar12 != 0) && (iVar12 <= iVar6)) {
      iVar6 = iVar12;
      piVar13 = piVar11;
    }
    piVar11 = (int *)((int)piVar11 + 1);
    while (0x100 < (int)piVar11) {
      iVar6 = 1000000000;
      piVar7 = (int *)0x0;
      piVar11 = (int *)0xffffffff;
      piVar3 = param_3;
      while( true ) {
        iVar12 = *piVar3;
        if ((iVar12 == 0) || (piVar2 = piVar7, piVar7 == piVar13 || iVar6 < iVar12)) {
          iVar12 = iVar6;
          piVar2 = piVar11;
        }
        piVar11 = piVar2;
        iVar6 = iVar12;
        if (piVar7 == (int *)0x100) break;
        piVar7 = (int *)((int)piVar7 + 1);
        piVar3 = piVar3 + 1;
      }
      if ((int)piVar11 < 0) {
        piVar13 = local_454;
        do {
          piVar11 = piVar13 + 1;
          iVar6 = *piVar13;
          if (iVar6 != 0) {
            if (0x20 < iVar6) {
              *(undefined4 *)(*piVar5 + 0x14) = 0x28;
              (**(code **)*piVar5)(piVar5);
              iVar6 = *piVar13;
            }
            *(char *)((int)&local_50 + iVar6) = *(char *)((int)&local_50 + iVar6) + '\x01';
          }
          piVar13 = piVar11;
        } while (piVar11 != &local_50);
        iVar6 = 0x1f;
        pcVar4 = acStack_32 + 2;
        do {
          cVar10 = *pcVar4;
          if (cVar10 != '\0') {
            do {
              cVar1 = pcVar4[-2];
              iVar12 = iVar6 + -1;
              pcVar8 = (char *)((int)&local_50 + iVar6 + -1);
              while (cVar1 == '\0') {
                pcVar8 = pcVar8 + -1;
                iVar12 = iVar12 + -1;
                cVar1 = *pcVar8;
              }
              *pcVar4 = cVar10 + -2;
              *(char *)((int)&local_50 + iVar6) = *(char *)((int)&local_50 + iVar6) + '\x01';
              *(char *)((int)&local_50 + iVar12 + 1) =
                   *(char *)((int)&local_50 + iVar12 + 1) + '\x02';
              *(char *)((int)&local_50 + iVar12) = *(char *)((int)&local_50 + iVar12) + -1;
              cVar10 = *pcVar4;
            } while (cVar10 != '\0');
          }
          iVar6 = iVar6 + -1;
          pcVar4 = pcVar4 + -1;
        } while (iVar6 != 0xf);
        pcVar4 = (char *)((int)&uStack_44 + 3);
        if ((char)local_40[0] == '\0') {
          do {
            pcVar8 = pcVar4 + -1;
            cVar10 = *pcVar4;
            pcVar4 = pcVar8;
          } while (cVar10 == '\0');
          pcVar8 = pcVar8 + (1 - (int)&local_50);
        }
        else {
          pcVar8 = (char *)0x10;
          cVar10 = (char)local_40[0];
        }
        *(char *)((int)&local_50 + (int)pcVar8) = cVar10 + -1;
        *param_2 = local_50;
        param_2[1] = iStack_4c;
        param_2[2] = iStack_48;
        param_2[3] = uStack_44;
        piVar5 = (int *)0x1;
        *(char *)(param_2 + 4) = (char)local_40[0];
        iVar6 = 0;
        do {
          iVar12 = 0;
          ppiVar9 = local_858 + 0x100;
          do {
            ppiVar9 = ppiVar9 + 1;
            piVar13 = *ppiVar9;
            bVar14 = piVar13 == piVar5;
            if (bVar14) {
              piVar13 = (int *)((int)param_2 + iVar6);
            }
            if (bVar14) {
              *(char *)((int)piVar13 + 0x11) = (char)iVar12;
              iVar6 = iVar6 + 1;
            }
            iVar12 = iVar12 + 1;
          } while (iVar12 != 0x100);
          piVar5 = (int *)((int)piVar5 + 1);
        } while (piVar5 != (int *)0x21);
        param_2[0x45] = 0;
        if (local_2c != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
          __stack_chk_fail();
        }
        return;
      }
      param_3[(int)piVar13] = param_3[(int)piVar13] + param_3[(int)piVar11];
      param_3[(int)piVar11] = 0;
      local_454[(int)piVar13] = local_454[(int)piVar13] + 1;
      piVar3 = local_858[(int)piVar13];
      while (piVar7 = piVar3, -1 < (int)piVar7) {
        local_454[(int)piVar7] = local_454[(int)piVar7] + 1;
        piVar13 = piVar7;
        piVar3 = local_858[(int)piVar7];
      }
      iVar6 = local_454[(int)piVar11];
      local_858[(int)piVar13] = piVar11;
      local_454[(int)piVar11] = iVar6 + 1;
      for (piVar13 = local_858[(int)piVar11]; -1 < (int)piVar13; piVar13 = local_858[(int)piVar13])
      {
        local_454[(int)piVar13] = local_454[(int)piVar13] + 1;
      }
      iVar6 = 1000000000;
      piVar13 = (int *)0xffffffff;
      piVar11 = (int *)0x0;
    }
  } while( true );
}

// ---- FUN_00701fe4  @ 0x701fe4
void FUN_00701fe4(int param_1)

{
  undefined1 *puVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  
  if (*(int *)(param_1 + 0x80) != 0) {
    iVar3 = *(int *)(param_1 + 0x80) >> 1;
    if (iVar3 == 0) {
      iVar3 = 0;
      iVar4 = 0;
    }
    else {
      iVar4 = 0;
      do {
        iVar4 = iVar4 + 1;
        iVar3 = iVar3 >> 1;
      } while (iVar3 != 0);
      if (0xe < iVar4) {
        *(undefined4 *)(**(int **)(param_1 + 0x78) + 0x14) = 0x29;
        (**(code **)**(undefined4 **)(param_1 + 0x78))();
      }
      iVar3 = iVar4 * 0x10;
    }
    if (*(int *)(param_1 + 0x6c) == 0) {
      iVar2 = *(int *)(param_1 + *(int *)(param_1 + 0x7c) * 4 + 0x3c);
      FUN_0070143c(param_1,*(undefined4 *)(iVar2 + iVar3 * 4),*(undefined1 *)(iVar2 + iVar3 + 0x400)
                  );
    }
    else {
      iVar2 = *(int *)(param_1 + *(int *)(param_1 + 0x7c) * 4 + 0x5c);
      *(int *)(iVar2 + iVar3 * 4) = *(int *)(iVar2 + iVar3 * 4) + 1;
    }
    if (iVar4 != 0) {
      FUN_0070143c(param_1,*(undefined4 *)(param_1 + 0x80),iVar4);
    }
    iVar4 = *(int *)(param_1 + 0x88);
    *(undefined4 *)(param_1 + 0x80) = 0;
    iVar3 = *(int *)(param_1 + 0x84);
    if ((*(int *)(param_1 + 0x6c) == 0) && (iVar2 = 0, iVar3 != 0)) {
      do {
        puVar1 = (undefined1 *)(iVar4 + iVar2);
        iVar2 = iVar2 + 1;
        FUN_0070143c(param_1,*puVar1,1);
      } while (iVar2 != iVar3);
    }
    *(undefined4 *)(param_1 + 0x84) = 0;
  }
  return;
}

// ---- FUN_00702088  @ 0x702088
void FUN_00702088(int param_1,char param_2)

{
  int iVar1;
  int iVar2;
  char *pcVar3;
  undefined4 *puVar4;
  
  FUN_00701fe4();
  if (*(int *)(param_1 + 0x6c) == 0) {
    FUN_0070143c(param_1,0x7f,7);
    *(undefined4 *)(param_1 + 0xc) = 0;
    *(undefined4 *)(param_1 + 0x10) = 0;
    pcVar3 = *(undefined1 **)(param_1 + 0x70) + 1;
    **(undefined1 **)(param_1 + 0x70) = 0xff;
    *(char **)(param_1 + 0x70) = pcVar3;
    iVar1 = *(int *)(param_1 + 0x74) + -1;
    *(int *)(param_1 + 0x74) = iVar1;
    if (iVar1 == 0) {
      FUN_00701374(param_1);
      pcVar3 = *(char **)(param_1 + 0x70);
    }
    *pcVar3 = param_2 + -0x30;
    *(char **)(param_1 + 0x70) = pcVar3 + 1;
    iVar1 = *(int *)(param_1 + 0x74) + -1;
    *(int *)(param_1 + 0x74) = iVar1;
    if (iVar1 == 0) {
      FUN_00701374(param_1);
    }
  }
  iVar1 = *(int *)(param_1 + 0x78);
  if (*(int *)(iVar1 + 0x168) == 0) {
    if (0 < *(int *)(iVar1 + 0x120)) {
      puVar4 = (undefined4 *)(param_1 + 0x10);
      iVar2 = 0;
      do {
        puVar4 = puVar4 + 1;
        *puVar4 = 0;
        iVar2 = iVar2 + 1;
      } while (iVar2 < *(int *)(iVar1 + 0x120));
    }
  }
  else {
    *(undefined4 *)(param_1 + 0x80) = 0;
    *(undefined4 *)(param_1 + 0x84) = 0;
  }
  return;
}

// ---- FUN_0070210c  @ 0x70210c
undefined4 FUN_0070210c(int *param_1,undefined4 *param_2)

{
  int iVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  int *piVar7;
  uint uVar8;
  
  iVar5 = param_1[0x69];
  uVar8 = param_1[0x5d];
  *(undefined4 *)(iVar5 + 0x70) = *(undefined4 *)param_1[6];
  *(undefined4 *)(iVar5 + 0x74) = *(undefined4 *)(param_1[6] + 4);
  if ((param_1[0x3b] != 0) && (*(int *)(iVar5 + 0x24) == 0)) {
    FUN_00702088(iVar5,*(undefined4 *)(iVar5 + 0x28));
  }
  if (0 < param_1[0x4f]) {
    piVar7 = param_1 + 0x4f;
    iVar6 = 0;
    do {
      piVar7 = piVar7 + 1;
      iVar3 = iVar5 + (*piVar7 + 4) * 4;
      iVar4 = param_1[*piVar7 + 0x49];
      iVar1 = *(int *)(iVar3 + 4);
      iVar2 = (int)*(short *)*param_2 >> (uVar8 & 0xff);
      *(int *)(iVar3 + 4) = iVar2;
      iVar2 = iVar2 - iVar1;
      if (iVar2 < 0) {
        iVar2 = -iVar2;
        iVar1 = iVar2 + -1;
LAB_00702182:
        iVar3 = 0;
        do {
          iVar3 = iVar3 + 1;
          iVar2 = iVar2 >> 1;
        } while (iVar2 != 0);
        if (iVar3 < 0xc) goto LAB_0070218e;
        *(undefined4 *)(*param_1 + 0x14) = 6;
        (**(code **)*param_1)(param_1);
        iVar2 = *(int *)(iVar4 + 0x14);
        if (*(int *)(iVar5 + 0x6c) != 0) goto LAB_00702196;
LAB_007021fe:
        iVar2 = *(int *)(iVar5 + iVar2 * 4 + 0x2c);
        FUN_0070143c(iVar5,*(undefined4 *)(iVar2 + iVar3 * 4),*(undefined1 *)(iVar2 + iVar3 + 0x400)
                    );
      }
      else {
        iVar1 = iVar2;
        if (iVar2 != 0) goto LAB_00702182;
        iVar3 = 0;
LAB_0070218e:
        iVar2 = *(int *)(iVar4 + 0x14);
        if (*(int *)(iVar5 + 0x6c) == 0) goto LAB_007021fe;
LAB_00702196:
        iVar2 = *(int *)(iVar5 + iVar2 * 4 + 0x4c);
        *(int *)(iVar2 + iVar3 * 4) = *(int *)(iVar2 + iVar3 * 4) + 1;
      }
      if (iVar3 != 0) {
        FUN_0070143c(iVar5,iVar1,iVar3);
      }
      iVar6 = iVar6 + 1;
      param_2 = param_2 + 1;
    } while (iVar6 < param_1[0x4f]);
  }
  *(undefined4 *)param_1[6] = *(undefined4 *)(iVar5 + 0x70);
  *(undefined4 *)(param_1[6] + 4) = *(undefined4 *)(iVar5 + 0x74);
  iVar6 = param_1[0x3b];
  if (iVar6 != 0) {
    iVar2 = *(int *)(iVar5 + 0x24);
    if (iVar2 == 0) {
      *(int *)(iVar5 + 0x24) = iVar6;
      *(uint *)(iVar5 + 0x28) = *(int *)(iVar5 + 0x28) + 1U & 7;
      iVar2 = iVar6;
    }
    *(int *)(iVar5 + 0x24) = iVar2 + -1;
  }
  return 1;
}

// ---- FUN_00702230  @ 0x702230
undefined4 FUN_00702230(int param_1,undefined4 *param_2)

{
  int iVar1;
  int iVar2;
  int iVar3;
  uint uVar4;
  
  iVar3 = *(int *)(param_1 + 0x1a4);
  uVar4 = *(uint *)(param_1 + 0x174);
  *(undefined4 *)(iVar3 + 0x70) = **(undefined4 **)(param_1 + 0x18);
  *(undefined4 *)(iVar3 + 0x74) = *(undefined4 *)(*(int *)(param_1 + 0x18) + 4);
  if ((*(int *)(param_1 + 0xec) != 0) && (*(int *)(iVar3 + 0x24) == 0)) {
    FUN_00702088(iVar3,*(undefined4 *)(iVar3 + 0x28));
  }
  if (0 < *(int *)(param_1 + 0x13c)) {
    iVar2 = 0;
    do {
      iVar2 = iVar2 + 1;
      FUN_0070143c(iVar3,(int)*(short *)*param_2 >> (uVar4 & 0xff),1);
      param_2 = param_2 + 1;
    } while (iVar2 < *(int *)(param_1 + 0x13c));
  }
  **(undefined4 **)(param_1 + 0x18) = *(undefined4 *)(iVar3 + 0x70);
  *(undefined4 *)(*(int *)(param_1 + 0x18) + 4) = *(undefined4 *)(iVar3 + 0x74);
  iVar2 = *(int *)(param_1 + 0xec);
  if (iVar2 != 0) {
    iVar1 = *(int *)(iVar3 + 0x24);
    if (iVar1 == 0) {
      *(int *)(iVar3 + 0x24) = iVar2;
      *(uint *)(iVar3 + 0x28) = *(int *)(iVar3 + 0x28) + 1U & 7;
      iVar1 = iVar2;
    }
    *(int *)(iVar3 + 0x24) = iVar1 + -1;
  }
  return 1;
}

// ---- FUN_007022bc  @ 0x7022bc
undefined4 FUN_007022bc(int param_1,int *param_2)

{
  uint uVar1;
  undefined1 *puVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  int iVar7;
  int iVar8;
  int iVar9;
  int iVar10;
  uint uVar11;
  int iVar12;
  int iVar13;
  uint uVar14;
  int iVar15;
  int iVar16;
  int iVar17;
  int aiStack_128 [65];
  
  iVar12 = *(int *)(param_1 + 0x1a4);
  *(undefined4 *)(iVar12 + 0x70) = **(undefined4 **)(param_1 + 0x18);
  *(undefined4 *)(iVar12 + 0x74) = *(undefined4 *)(*(int *)(param_1 + 0x18) + 4);
  if ((*(int *)(param_1 + 0xec) != 0) && (*(int *)(iVar12 + 0x24) == 0)) {
    FUN_00702088(iVar12,*(undefined4 *)(iVar12 + 0x28));
  }
  iVar8 = *(int *)(param_1 + 0x16c);
  iVar13 = *param_2;
  uVar11 = *(uint *)(param_1 + 0x174);
  iVar15 = *(int *)(param_1 + 0x168);
  if (iVar15 <= iVar8) {
    iVar9 = 0;
    iVar4 = *(int *)(param_1 + 0x17c) + iVar15 * 4;
    iVar3 = iVar15 * 4 + -0x128;
    iVar6 = 0;
    iVar7 = iVar15;
    do {
      uVar14 = (uint)*(short *)(iVar13 + *(int *)(iVar4 + iVar9) * 2);
      uVar1 = (int)uVar14 >> 0x1f;
      iVar5 = (int)((uVar14 ^ uVar1) - uVar1) >> (uVar11 & 0xff);
      *(int *)((int)aiStack_128 + iVar9 + iVar3 + 0x128) = iVar5;
      if (iVar5 == 1) {
        iVar6 = iVar7;
      }
      iVar7 = iVar7 + 1;
      iVar9 = iVar9 + 4;
    } while (iVar7 <= iVar8);
    iVar16 = 0;
    iVar9 = 0;
    iVar7 = 0;
    iVar5 = *(int *)(iVar12 + 0x88) + *(int *)(iVar12 + 0x84);
    do {
      iVar17 = *(int *)((int)aiStack_128 + iVar16 + iVar3 + 0x128);
      if (iVar17 == 0) {
        iVar7 = iVar7 + 1;
      }
      else {
        if (0xf < iVar7 && iVar15 <= iVar6) {
          do {
            FUN_00701fe4(iVar12);
            if (*(int *)(iVar12 + 0x6c) == 0) {
              iVar10 = *(int *)(iVar12 + *(int *)(iVar12 + 0x7c) * 4 + 0x3c);
              FUN_0070143c(iVar12,*(undefined4 *)(iVar10 + 0x3c0),*(undefined1 *)(iVar10 + 0x4f0));
            }
            else {
              iVar10 = *(int *)(iVar12 + *(int *)(iVar12 + 0x7c) * 4 + 0x5c);
              *(int *)(iVar10 + 0x3c0) = *(int *)(iVar10 + 0x3c0) + 1;
            }
            iVar7 = iVar7 + -0x10;
            if ((*(int *)(iVar12 + 0x6c) == 0) && (iVar10 = 0, iVar9 != 0)) {
              do {
                puVar2 = (undefined1 *)(iVar5 + iVar10);
                iVar10 = iVar10 + 1;
                FUN_0070143c(iVar12,*puVar2,1);
              } while (iVar9 != iVar10);
            }
            iVar9 = 0;
            iVar5 = *(int *)(iVar12 + 0x88);
          } while (0xf < iVar7);
        }
        if (iVar17 < 2) {
          FUN_00701fe4(iVar12);
          iVar7 = iVar7 * 0x10 + 1;
          if (*(int *)(iVar12 + 0x6c) == 0) {
            iVar17 = *(int *)(iVar12 + *(int *)(iVar12 + 0x7c) * 4 + 0x3c);
            FUN_0070143c(iVar12,*(undefined4 *)(iVar17 + iVar7 * 4),
                         *(undefined1 *)(iVar17 + iVar7 + 0x400));
          }
          else {
            iVar17 = *(int *)(iVar12 + *(int *)(iVar12 + 0x7c) * 4 + 0x5c);
            *(int *)(iVar17 + iVar7 * 4) = *(int *)(iVar17 + iVar7 * 4) + 1;
          }
          FUN_0070143c(iVar12,(uint)~(int)*(short *)(iVar13 + *(int *)(iVar4 + iVar16) * 2) >> 0x1f,
                       1);
          if ((*(int *)(iVar12 + 0x6c) == 0) && (iVar7 = 0, iVar9 != 0)) {
            do {
              puVar2 = (undefined1 *)(iVar5 + iVar7);
              iVar7 = iVar7 + 1;
              FUN_0070143c(iVar12,*puVar2,1);
            } while (iVar9 != iVar7);
          }
          iVar9 = 0;
          iVar5 = *(int *)(iVar12 + 0x88);
          iVar7 = iVar9;
        }
        else {
          *(byte *)(iVar5 + iVar9) = (byte)iVar17 & 1;
          iVar9 = iVar9 + 1;
        }
      }
      iVar15 = iVar15 + 1;
      iVar16 = iVar16 + 4;
    } while (iVar15 <= iVar8);
    if (iVar9 != 0 || 0 < iVar7) {
      uVar11 = iVar9 + *(int *)(iVar12 + 0x84);
      iVar8 = *(int *)(iVar12 + 0x80) + 1;
      *(uint *)(iVar12 + 0x84) = uVar11;
      *(int *)(iVar12 + 0x80) = iVar8;
      if ((iVar8 == 0x7fff) || (0x3a9 < uVar11)) {
        FUN_00701fe4(iVar12);
      }
    }
  }
  **(undefined4 **)(param_1 + 0x18) = *(undefined4 *)(iVar12 + 0x70);
  *(undefined4 *)(*(int *)(param_1 + 0x18) + 4) = *(undefined4 *)(iVar12 + 0x74);
  iVar8 = *(int *)(param_1 + 0xec);
  if (iVar8 != 0) {
    iVar13 = *(int *)(iVar12 + 0x24);
    if (*(int *)(iVar12 + 0x24) == 0) {
      *(int *)(iVar12 + 0x24) = iVar8;
      *(uint *)(iVar12 + 0x28) = *(int *)(iVar12 + 0x28) + 1U & 7;
      iVar13 = iVar8;
    }
    *(int *)(iVar12 + 0x24) = iVar13 + -1;
  }
  return 1;
}

// ---- FUN_007024fc  @ 0x7024fc
void FUN_007024fc(int *param_1)

{
  int iVar1;
  int iVar2;
  undefined4 local_3c;
  undefined4 local_38;
  undefined4 local_34;
  undefined4 local_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 local_24;
  undefined4 uStack_20;
  int *local_1c;
  
  iVar2 = param_1[0x69];
  if (param_1[0x42] == 0) {
    local_3c = *(undefined4 *)param_1[6];
    local_38 = ((undefined4 *)param_1[6])[1];
    local_34 = *(undefined4 *)(iVar2 + 0xc);
    local_30 = *(undefined4 *)(iVar2 + 0x10);
    uStack_2c = *(undefined4 *)(iVar2 + 0x14);
    uStack_28 = *(undefined4 *)(iVar2 + 0x18);
    local_24 = *(undefined4 *)(iVar2 + 0x1c);
    uStack_20 = *(undefined4 *)(iVar2 + 0x20);
    local_1c = param_1;
    iVar1 = FUN_0070139c(&local_3c,0x7f,7);
    if (iVar1 == 0) {
      *(undefined4 *)(*param_1 + 0x14) = 0x19;
      (**(code **)*param_1)(param_1);
    }
    else {
      local_34 = 0;
      local_30 = 0;
    }
    *(undefined4 *)param_1[6] = local_3c;
    *(undefined4 *)(param_1[6] + 4) = local_38;
    *(undefined4 *)(iVar2 + 0xc) = local_34;
    *(undefined4 *)(iVar2 + 0x10) = local_30;
    *(undefined4 *)(iVar2 + 0x14) = uStack_2c;
    *(undefined4 *)(iVar2 + 0x18) = uStack_28;
    *(undefined4 *)(iVar2 + 0x1c) = local_24;
    *(undefined4 *)(iVar2 + 0x20) = uStack_20;
  }
  else {
    *(undefined4 *)(iVar2 + 0x70) = *(undefined4 *)param_1[6];
    *(undefined4 *)(iVar2 + 0x74) = *(undefined4 *)(param_1[6] + 4);
    FUN_00701fe4(iVar2);
    FUN_0070143c(iVar2,0x7f,7);
    *(undefined4 *)(iVar2 + 0xc) = 0;
    *(undefined4 *)(iVar2 + 0x10) = 0;
    *(undefined4 *)param_1[6] = *(undefined4 *)(iVar2 + 0x70);
    *(undefined4 *)(param_1[6] + 4) = *(undefined4 *)(iVar2 + 0x74);
  }
  return;
}

// ---- FUN_007025a4  @ 0x7025a4
void FUN_007025a4(int param_1)

{
  int iVar1;
  int iVar2;
  int iVar3;
  int *piVar4;
  int iVar5;
  int iVar6;
  int local_48 [9];
  
  iVar6 = *(int *)(param_1 + 0x1a4);
  if (*(int *)(param_1 + 0x108) != 0) {
    FUN_00701fe4(iVar6);
  }
  iVar3 = 0;
  local_48[4] = 0;
  local_48[6] = 0;
  local_48[7] = 0;
  local_48[5] = 0;
  local_48[2] = 0;
  local_48[3] = 0;
  local_48[0] = 0;
  local_48[1] = 0;
  if (0 < *(int *)(param_1 + 0x120)) {
    piVar4 = (int *)(param_1 + 0x120);
    do {
      piVar4 = piVar4 + 1;
      iVar5 = *piVar4;
      if ((*(int *)(param_1 + 0x168) == 0) && (*(int *)(param_1 + 0x170) == 0)) {
        iVar2 = *(int *)(iVar5 + 0x14);
        if (local_48[iVar2 + 4] == 0) {
          iVar1 = *(int *)(param_1 + (iVar2 + 0x1e) * 4);
          if (iVar1 == 0) {
            iVar1 = jpeg_alloc_huff_table(param_1);
            *(int *)(param_1 + (iVar2 + 0x1e) * 4) = iVar1;
          }
          FUN_00701d54(param_1,iVar1,*(undefined4 *)(iVar6 + iVar2 * 4 + 0x4c));
          local_48[iVar2 + 4] = 1;
        }
      }
      if (*(int *)(param_1 + 0x16c) != 0) {
        iVar5 = *(int *)(iVar5 + 0x18);
        if (local_48[iVar5] == 0) {
          iVar2 = *(int *)(param_1 + (iVar5 + 0x22) * 4);
          if (iVar2 == 0) {
            iVar2 = jpeg_alloc_huff_table(param_1);
            *(int *)(param_1 + (iVar5 + 0x22) * 4) = iVar2;
          }
          FUN_00701d54(param_1,iVar2,*(undefined4 *)(iVar6 + iVar5 * 4 + 0x5c));
          local_48[iVar5] = 1;
        }
      }
      iVar3 = iVar3 + 1;
    } while (iVar3 < *(int *)(param_1 + 0x120));
  }
  return;
}

// ---- FUN_00702694  @ 0x702694
undefined4 FUN_00702694(int *param_1,int *param_2)

{
  uint uVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  uint uVar5;
  int iVar6;
  int iVar7;
  uint uVar8;
  int *piVar9;
  int iVar10;
  uint uVar11;
  int iVar12;
  uint local_34;
  
  iVar4 = param_1[0x69];
  *(undefined4 *)(iVar4 + 0x70) = *(undefined4 *)param_1[6];
  *(undefined4 *)(iVar4 + 0x74) = *(undefined4 *)(param_1[6] + 4);
  if ((param_1[0x3b] != 0) && (*(int *)(iVar4 + 0x24) == 0)) {
    FUN_00702088(iVar4,*(undefined4 *)(iVar4 + 0x28));
  }
  uVar1 = param_1[0x5d];
  iVar12 = param_1[0x5b];
  iVar7 = param_1[0x5a];
  iVar2 = *param_2;
  if (iVar7 <= iVar12) {
    uVar8 = 0;
    piVar9 = (int *)(param_1[0x5f] + iVar7 * 4);
    do {
      while( true ) {
        iVar10 = (int)*(short *)(iVar2 + *piVar9 * 2);
        if (iVar10 != 0) break;
LAB_007027e2:
        iVar7 = iVar7 + 1;
        uVar8 = uVar8 + 1;
        piVar9 = piVar9 + 1;
        if (iVar12 < iVar7) goto LAB_007027a0;
      }
      if (iVar10 < 0) {
        uVar11 = -iVar10 >> (uVar1 & 0xff);
        local_34 = ~uVar11;
      }
      else {
        uVar11 = iVar10 >> (uVar1 & 0xff);
        local_34 = uVar11;
      }
      if (uVar11 == 0) goto LAB_007027e2;
      if (*(int *)(iVar4 + 0x80) != 0) {
        FUN_00701fe4(iVar4);
      }
      uVar5 = uVar8;
      if (0xf < (int)uVar8) {
        do {
          while (*(int *)(iVar4 + 0x6c) == 0) {
            uVar5 = uVar5 - 0x10;
            iVar10 = *(int *)(iVar4 + *(int *)(iVar4 + 0x7c) * 4 + 0x3c);
            FUN_0070143c(iVar4,*(undefined4 *)(iVar10 + 0x3c0),*(undefined1 *)(iVar10 + 0x4f0));
            if ((int)uVar5 < 0x10) goto LAB_0070275a;
          }
          uVar5 = uVar5 - 0x10;
          iVar10 = *(int *)(iVar4 + *(int *)(iVar4 + 0x7c) * 4 + 0x5c);
          *(int *)(iVar10 + 0x3c0) = *(int *)(iVar10 + 0x3c0) + 1;
        } while (0xf < (int)uVar5);
LAB_0070275a:
        uVar8 = uVar8 & 0xf;
      }
      iVar10 = (int)uVar11 >> 1;
      if (iVar10 == 0) {
        iVar6 = 1;
      }
      else {
        iVar6 = 1;
        do {
          iVar6 = iVar6 + 1;
          iVar10 = iVar10 >> 1;
        } while (iVar10 != 0);
        if (10 < iVar6) {
          *(undefined4 *)(*param_1 + 0x14) = 6;
          (**(code **)*param_1)(param_1);
        }
      }
      iVar10 = iVar6 + uVar8 * 0x10;
      if (*(int *)(iVar4 + 0x6c) == 0) {
        iVar3 = *(int *)(iVar4 + *(int *)(iVar4 + 0x7c) * 4 + 0x3c);
        FUN_0070143c(iVar4,*(undefined4 *)(iVar3 + iVar10 * 4),
                     *(undefined1 *)(iVar3 + iVar10 + 0x400));
      }
      else {
        iVar3 = *(int *)(iVar4 + *(int *)(iVar4 + 0x7c) * 4 + 0x5c);
        *(int *)(iVar3 + iVar10 * 4) = *(int *)(iVar3 + iVar10 * 4) + 1;
      }
      iVar7 = iVar7 + 1;
      FUN_0070143c(iVar4,local_34,iVar6);
      uVar8 = 0;
      piVar9 = piVar9 + 1;
    } while (iVar7 <= iVar12);
LAB_007027a0:
    if ((uVar8 != 0) &&
       (iVar2 = *(int *)(iVar4 + 0x80) + 1, *(int *)(iVar4 + 0x80) = iVar2, iVar2 == 0x7fff)) {
      FUN_00701fe4(iVar4);
    }
  }
  *(undefined4 *)param_1[6] = *(undefined4 *)(iVar4 + 0x70);
  *(undefined4 *)(param_1[6] + 4) = *(undefined4 *)(iVar4 + 0x74);
  iVar2 = param_1[0x3b];
  if (iVar2 != 0) {
    iVar7 = *(int *)(iVar4 + 0x24);
    if (iVar7 == 0) {
      *(int *)(iVar4 + 0x24) = iVar2;
      *(uint *)(iVar4 + 0x28) = *(int *)(iVar4 + 0x28) + 1U & 7;
      iVar7 = iVar2;
    }
    *(int *)(iVar4 + 0x24) = iVar7 + -1;
  }
  return 1;
}

// ---- FUN_00702a1c  @ 0x702a1c
void FUN_00702a1c(int *param_1,undefined1 param_2)

{
  undefined1 *puVar1;
  int iVar2;
  undefined4 *puVar3;
  
  puVar3 = (undefined4 *)param_1[6];
  puVar1 = (undefined1 *)*puVar3;
  *puVar1 = param_2;
  *puVar3 = puVar1 + 1;
  iVar2 = puVar3[1];
  puVar3[1] = iVar2 + -1;
  if ((iVar2 + -1 == 0) && (iVar2 = (*(code *)puVar3[3])(), iVar2 == 0)) {
    *(undefined4 *)(*param_1 + 0x14) = 0x19;
    (**(code **)*param_1)(param_1);
  }
  return;
}

// ---- FUN_00702a4c  @ 0x702a4c
void FUN_00702a4c(undefined4 param_1,undefined4 param_2)

{
  FUN_00702a1c(param_1,0xff);
  FUN_00702a1c(param_1,param_2);
  return;
}

// ---- FUN_00702a64  @ 0x702a64
void FUN_00702a64(undefined4 param_1,uint param_2)

{
  FUN_00702a1c(param_1,(param_2 & 0xffff) >> 8);
  FUN_00702a1c(param_1,param_2 & 0xff);
  return;
}

// ---- FUN_00702a7c  @ 0x702a7c
int FUN_00702a7c(int *param_1,int param_2)

{
  ushort uVar1;
  int *piVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  
  iVar5 = param_1[param_2 + 0x16];
  if (iVar5 == 0) {
    *(undefined4 *)(*param_1 + 0x14) = 0x36;
    *(int *)(*param_1 + 0x18) = param_2;
    (**(code **)*param_1)();
  }
  if (param_1[0x60] < 0) {
    iVar4 = 0;
  }
  else {
    iVar3 = 0;
    iVar4 = 0;
    piVar2 = (int *)param_1[0x5f];
    do {
      iVar3 = iVar3 + 1;
      if (0xff < *(ushort *)(iVar5 + *piVar2 * 2)) {
        iVar4 = 1;
      }
      piVar2 = piVar2 + 1;
    } while (iVar3 <= param_1[0x60]);
  }
  if (*(int *)(iVar5 + 0x80) == 0) {
    FUN_00702a4c(param_1,0xdb);
    if (iVar4 == 0) {
      iVar3 = param_1[0x60] + 4;
    }
    else {
      iVar3 = param_1[0x60] * 2 + 5;
    }
    FUN_00702a64(param_1,iVar3);
    FUN_00702a1c(param_1,param_2 + iVar4 * 0x10);
    if (-1 < param_1[0x60]) {
      iVar3 = 0;
      do {
        while( true ) {
          uVar1 = *(ushort *)(iVar5 + *(int *)(param_1[0x5f] + iVar3 * 4) * 2);
          if (iVar4 == 0) break;
          FUN_00702a1c(param_1,uVar1 >> 8);
          iVar3 = iVar3 + 1;
          FUN_00702a1c(param_1,(char)uVar1);
          if (param_1[0x60] < iVar3) goto LAB_00702b30;
        }
        FUN_00702a1c(param_1,uVar1 & 0xff);
        iVar3 = iVar3 + 1;
      } while (iVar3 <= param_1[0x60]);
    }
LAB_00702b30:
    *(undefined4 *)(iVar5 + 0x80) = 1;
  }
  return iVar4;
}

// ---- FUN_00702b58  @ 0x702b58
void FUN_00702b58(int *param_1,int param_2,int param_3)

{
  byte *pbVar1;
  int iVar2;
  int iVar3;
  undefined1 *puVar4;
  int iVar5;
  
  if (param_3 == 0) {
    iVar2 = param_1[param_2 + 0x1e];
  }
  else {
    iVar2 = param_2 + 0x22;
    param_2 = param_2 + 0x10;
    iVar2 = param_1[iVar2];
  }
  if (iVar2 == 0) {
    *(undefined4 *)(*param_1 + 0x14) = 0x34;
    *(int *)(*param_1 + 0x18) = param_2;
    (**(code **)*param_1)(param_1);
  }
  if (*(int *)(iVar2 + 0x114) == 0) {
    FUN_00702a4c(param_1,0xc4);
    iVar3 = 1;
    iVar5 = 0;
    do {
      pbVar1 = (byte *)(iVar2 + iVar3);
      iVar3 = iVar3 + 1;
      iVar5 = iVar5 + (uint)*pbVar1;
    } while (iVar3 != 0x11);
    FUN_00702a64(param_1,iVar5 + 0x13);
    iVar3 = 1;
    FUN_00702a1c(param_1,param_2);
    do {
      puVar4 = (undefined1 *)(iVar2 + iVar3);
      iVar3 = iVar3 + 1;
      FUN_00702a1c(param_1,*puVar4);
    } while (iVar3 != 0x11);
    if (iVar5 != 0) {
      puVar4 = (undefined1 *)(iVar2 + 0x10);
      iVar3 = 0;
      do {
        puVar4 = puVar4 + 1;
        iVar3 = iVar3 + 1;
        FUN_00702a1c(param_1,*puVar4);
      } while (iVar3 != iVar5);
    }
    *(undefined4 *)(iVar2 + 0x114) = 1;
  }
  return;
}

// ---- FUN_00702bf4  @ 0x702bf4
void FUN_00702bf4(int *param_1)

{
  undefined4 *puVar1;
  undefined4 *puVar2;
  int iVar3;
  
  FUN_00702a4c();
  FUN_00702a64(param_1,param_1[0x13] * 3 + 8);
  if ((0xffff < param_1[0x11]) || (0xffff < param_1[0x10])) {
    *(undefined4 *)(*param_1 + 0x14) = 0x2a;
    *(undefined4 *)(*param_1 + 0x18) = 0xffff;
    (**(code **)*param_1)(param_1);
  }
  FUN_00702a1c(param_1,param_1[0x12]);
  FUN_00702a64(param_1,param_1[0x11]);
  FUN_00702a64(param_1,param_1[0x10]);
  FUN_00702a1c(param_1,param_1[0x13]);
  puVar2 = (undefined4 *)param_1[0x15];
  if (0 < param_1[0x13]) {
    iVar3 = 0;
    do {
      FUN_00702a1c(param_1,*puVar2);
      iVar3 = iVar3 + 1;
      FUN_00702a1c(param_1,puVar2[3] + puVar2[2] * 0x10);
      puVar1 = puVar2 + 4;
      puVar2 = puVar2 + 0x16;
      FUN_00702a1c(param_1,*puVar1);
    } while (iVar3 < param_1[0x13]);
  }
  return;
}

// ---- FUN_00702ddc  @ 0x702ddc
void FUN_00702ddc(int *param_1)

{
  bool bVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  bool bVar6;
  int iVar7;
  
  iVar3 = param_1[0x13];
  iVar4 = param_1[0x15];
  if (iVar3 < 1) {
    iVar7 = 0;
  }
  else {
    iVar7 = 0;
    iVar5 = 0;
    do {
      iVar2 = FUN_00702a7c(param_1,*(undefined4 *)(iVar4 + 0x10));
      iVar3 = param_1[0x13];
      iVar5 = iVar5 + 1;
      iVar4 = iVar4 + 0x58;
      iVar7 = iVar7 + iVar2;
    } while (iVar5 < iVar3);
  }
  if (param_1[0x35] != 0) {
LAB_00702e24:
    if (param_1[0x42] == 0) {
      FUN_00702bf4(param_1,0xc9);
    }
    else {
      FUN_00702bf4(param_1,0xca);
    }
    goto LAB_00702e34;
  }
  iVar4 = param_1[0x42];
  if (((iVar4 == 0) && (param_1[0x12] == 8)) && (param_1[0x5e] == 8)) {
    iVar4 = param_1[0x15];
    if (iVar3 < 1) {
      bVar1 = true;
    }
    else {
      bVar1 = true;
      iVar5 = 0;
      while( true ) {
        if ((1 < *(int *)(iVar4 + 0x14)) || (1 < *(int *)(iVar4 + 0x18))) {
          bVar1 = false;
        }
        iVar5 = iVar5 + 1;
        if (iVar5 == iVar3) break;
        iVar4 = iVar4 + 0x58;
      }
    }
    bVar6 = bVar1;
    if (iVar7 == 0) {
      bVar6 = false;
    }
    if (bVar6) {
      *(undefined4 *)(*param_1 + 0x14) = 0x4d;
      (**(code **)(*param_1 + 4))(param_1,0);
      if (param_1[0x35] != 0) goto LAB_00702e24;
      iVar4 = param_1[0x42];
      goto joined_r0x00702e14;
    }
  }
  else {
joined_r0x00702e14:
    bVar1 = false;
    if (iVar4 != 0) {
      FUN_00702bf4(param_1,0xc2);
      goto LAB_00702e34;
    }
  }
  if (bVar1) {
    FUN_00702bf4(param_1,0xc0);
  }
  else {
    FUN_00702bf4(param_1,0xc1);
  }
LAB_00702e34:
  if ((param_1[0x42] != 0) && (param_1[0x5e] != 8)) {
    FUN_00702a4c(param_1,0xda);
    FUN_00702a64(param_1,6);
    FUN_00702a1c(param_1,0);
    FUN_00702a1c(param_1,0);
    FUN_00702a1c(param_1,param_1[0x5e] * param_1[0x5e] + -1);
    FUN_00702a1c(param_1,0);
  }
  return;
}

// ---- FUN_00702f04  @ 0x702f04
void FUN_00702f04(int param_1)

{
  byte *pbVar1;
  byte *pbVar2;
  byte bVar3;
  int iVar4;
  int iVar5;
  int *piVar6;
  undefined4 *puVar7;
  int iVar8;
  undefined4 *puVar9;
  int iVar10;
  int iVar11;
  byte local_4c [16];
  byte local_3c [16];
  int local_2c;
  
  local_2c = __stack_chk_guard;
  iVar10 = *(int *)(param_1 + 0x194);
  if (*(int *)(param_1 + 0xd4) == 0) {
    if (0 < *(int *)(param_1 + 0x120)) {
      piVar6 = (int *)(param_1 + 0x120);
      iVar5 = 0;
      do {
        piVar6 = piVar6 + 1;
        iVar8 = *piVar6;
        if ((*(int *)(param_1 + 0x168) == 0) && (*(int *)(param_1 + 0x170) == 0)) {
          FUN_00702b58(param_1,*(undefined4 *)(iVar8 + 0x14));
        }
        if (*(int *)(param_1 + 0x16c) != 0) {
          FUN_00702b58(param_1,*(undefined4 *)(iVar8 + 0x18),1);
        }
        iVar5 = iVar5 + 1;
      } while (iVar5 < *(int *)(param_1 + 0x120));
    }
  }
  else {
    iVar5 = 0;
    do {
      local_4c[iVar5] = 0;
      local_3c[iVar5] = 0;
      iVar5 = iVar5 + 1;
    } while (iVar5 != 0x10);
    iVar5 = *(int *)(param_1 + 0x120);
    if (0 < iVar5) {
      iVar11 = *(int *)(param_1 + 0x168);
      iVar8 = *(int *)(param_1 + 0x16c);
      piVar6 = (int *)(param_1 + 0x120);
      do {
        piVar6 = piVar6 + 1;
        iVar4 = *piVar6;
        if ((iVar11 == 0) && (*(int *)(param_1 + 0x170) == 0)) {
          local_3c[*(int *)(iVar4 + 0x14)] = 1;
        }
        if (iVar8 != 0) {
          local_4c[*(int *)(iVar4 + 0x18)] = 1;
        }
      } while (piVar6 != (int *)(param_1 + iVar5 * 4 + 0x120));
    }
    iVar8 = 0;
    iVar5 = 0;
    do {
      pbVar1 = local_4c + iVar5;
      pbVar2 = local_3c + iVar5;
      iVar5 = iVar5 + 1;
      iVar8 = iVar8 + (uint)*pbVar2 + (uint)*pbVar1;
    } while (iVar5 != 0x10);
    if (iVar8 != 0) {
      FUN_00702a4c(param_1,0xcc);
      iVar11 = 0;
      FUN_00702a64(param_1,(iVar8 + 1) * 2);
      iVar5 = param_1;
      do {
        if (local_3c[iVar11] == 0) {
          bVar3 = local_4c[iVar11];
        }
        else {
          FUN_00702a1c(param_1,iVar11);
          FUN_00702a1c(param_1,(uint)*(byte *)(iVar5 + 0x98) + (uint)*(byte *)(iVar5 + 0xa8) * 0x10)
          ;
          bVar3 = local_4c[iVar11];
        }
        if (bVar3 != 0) {
          FUN_00702a1c(param_1,iVar11 + 0x10);
          FUN_00702a1c(param_1,*(undefined1 *)(iVar5 + 0xb8));
        }
        iVar11 = iVar11 + 1;
        iVar5 = iVar5 + 1;
      } while (iVar11 != 0x10);
    }
  }
  if (*(int *)(param_1 + 0xec) != *(int *)(iVar10 + 0x1c)) {
    FUN_00702a4c(param_1,0xdd);
    FUN_00702a64(param_1,4);
    FUN_00702a64(param_1,*(undefined4 *)(param_1 + 0xec));
    *(undefined4 *)(iVar10 + 0x1c) = *(undefined4 *)(param_1 + 0xec);
  }
  FUN_00702a4c(param_1,0xda);
  FUN_00702a64(param_1,(*(int *)(param_1 + 0x120) + 3) * 2);
  FUN_00702a1c(param_1,*(undefined4 *)(param_1 + 0x120));
  if (0 < *(int *)(param_1 + 0x120)) {
    puVar9 = (undefined4 *)(param_1 + 0x120);
    iVar10 = 0;
    do {
      puVar9 = puVar9 + 1;
      puVar7 = (undefined4 *)*puVar9;
      FUN_00702a1c(param_1,*puVar7);
      if ((*(int *)(param_1 + 0x168) == 0) && (*(int *)(param_1 + 0x170) == 0)) {
        iVar5 = puVar7[5] << 4;
      }
      else {
        iVar5 = 0;
      }
      iVar8 = 0;
      if (*(int *)(param_1 + 0x16c) != 0) {
        iVar8 = puVar7[6];
      }
      FUN_00702a1c(param_1,iVar8 + iVar5);
      iVar10 = iVar10 + 1;
    } while (iVar10 < *(int *)(param_1 + 0x120));
  }
  FUN_00702a1c(param_1,*(undefined4 *)(param_1 + 0x168));
  FUN_00702a1c(param_1,*(undefined4 *)(param_1 + 0x16c));
  FUN_00702a1c(param_1,*(int *)(param_1 + 0x174) + *(int *)(param_1 + 0x170) * 0x10);
  if (local_2c == __stack_chk_guard) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

// ---- FUN_00703214  @ 0x703214
void FUN_00703214(int *param_1)

{
  int *piVar1;
  int iVar2;
  int *piVar3;
  int iVar4;
  int iVar5;
  int *piVar6;
  
  iVar4 = param_1[0x33];
  if (iVar4 == 0) {
    iVar4 = param_1[0x13];
    if (4 < iVar4) {
      *(undefined4 *)(*param_1 + 0x14) = 0x1b;
      *(int *)(*param_1 + 0x18) = param_1[0x13];
      *(undefined4 *)(*param_1 + 0x1c) = 4;
      (**(code **)*param_1)(param_1);
      iVar4 = param_1[0x13];
    }
    param_1[0x48] = iVar4;
    if (0 < iVar4) {
      iVar2 = param_1[0x15];
      piVar6 = param_1 + 0x48;
      iVar5 = 0;
      do {
        iVar5 = iVar5 + 1;
        piVar6 = piVar6 + 1;
        *piVar6 = iVar2;
        iVar2 = iVar2 + 0x58;
      } while (iVar5 < iVar4);
    }
  }
  else {
    iVar2 = *(int *)(param_1[0x61] + 0x20);
    piVar6 = (int *)(iVar4 + iVar2 * 0x24);
    param_1[0x48] = *(int *)(iVar4 + iVar2 * 0x24);
    if (0 < *(int *)(iVar4 + iVar2 * 0x24)) {
      iVar2 = param_1[0x15];
      piVar3 = param_1 + 0x48;
      iVar4 = 0;
      piVar1 = piVar6;
      do {
        piVar1 = piVar1 + 1;
        iVar4 = iVar4 + 1;
        piVar3 = piVar3 + 1;
        *piVar3 = *piVar1 * 0x58 + iVar2;
      } while (iVar4 < *piVar6);
    }
    if (param_1[0x42] != 0) {
      param_1[0x5a] = piVar6[5];
      param_1[0x5b] = piVar6[6];
      param_1[0x5c] = piVar6[7];
      param_1[0x5d] = piVar6[8];
      return;
    }
  }
  param_1[0x5a] = 0;
  param_1[0x5c] = 0;
  param_1[0x5d] = 0;
  param_1[0x5b] = param_1[0x5e] * param_1[0x5e] + -1;
  return;
}

// ---- FUN_00703358  @ 0x703358
void FUN_00703358(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  int extraout_r1;
  int extraout_r1_00;
  int extraout_r1_01;
  int iVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  int *piVar7;
  
  if (param_1[0x48] == 1) {
    iVar2 = param_1[0x49];
    param_1[0x4d] = *(int *)(iVar2 + 0x1c);
    param_1[0x4e] = *(int *)(iVar2 + 0x20);
    iVar3 = *(int *)(iVar2 + 0xc);
    *(undefined4 *)(iVar2 + 0x44) = *(undefined4 *)(iVar2 + 0x24);
    *(undefined4 *)(iVar2 + 0x38) = 1;
    *(undefined4 *)(iVar2 + 0x3c) = 1;
    *(undefined4 *)(iVar2 + 0x40) = 1;
    *(undefined4 *)(iVar2 + 0x48) = 1;
    __aeabi_uidivmod(*(undefined4 *)(iVar2 + 0x20),iVar3,param_3,*(undefined4 *)(iVar2 + 0x24),
                     param_4);
    iVar1 = extraout_r1_01;
    if (extraout_r1_01 == 0) {
      iVar1 = iVar3;
    }
    *(int *)(iVar2 + 0x4c) = iVar1;
    param_1[0x4f] = 1;
    param_1[0x50] = 0;
  }
  else {
    if (3 < param_1[0x48] - 1U) {
      *(undefined4 *)(*param_1 + 0x14) = 0x1b;
      *(int *)(*param_1 + 0x18) = param_1[0x48];
      *(undefined4 *)(*param_1 + 0x1c) = 4;
      (**(code **)*param_1)();
    }
    iVar2 = 0;
    iVar1 = jdiv_round_up(param_1[0x10],param_1[0x43] * param_1[0x5e]);
    param_1[0x4d] = iVar1;
    iVar1 = jdiv_round_up(param_1[0x11],param_1[0x44] * param_1[0x5e]);
    param_1[0x4f] = 0;
    param_1[0x4e] = iVar1;
    if (0 < param_1[0x48]) {
      piVar7 = param_1 + 0x48;
      do {
        piVar7 = piVar7 + 1;
        iVar3 = *piVar7;
        iVar4 = *(int *)(iVar3 + 8);
        iVar6 = *(int *)(iVar3 + 0xc);
        *(int *)(iVar3 + 0x38) = iVar4;
        iVar5 = iVar4 * iVar6;
        *(int *)(iVar3 + 0x3c) = iVar6;
        *(int *)(iVar3 + 0x40) = iVar5;
        *(int *)(iVar3 + 0x44) = iVar4 * *(int *)(iVar3 + 0x24);
        __aeabi_uidivmod(*(undefined4 *)(iVar3 + 0x1c),iVar4);
        iVar1 = extraout_r1;
        if (extraout_r1 == 0) {
          iVar1 = iVar4;
        }
        *(int *)(iVar3 + 0x48) = iVar1;
        __aeabi_uidivmod(*(undefined4 *)(iVar3 + 0x20),iVar6);
        iVar1 = extraout_r1_00;
        if (extraout_r1_00 == 0) {
          iVar1 = iVar6;
        }
        *(int *)(iVar3 + 0x4c) = iVar1;
        if (10 < param_1[0x4f] + iVar5) {
          *(undefined4 *)(*param_1 + 0x14) = 0xe;
          (**(code **)*param_1)(param_1);
        }
        if (0 < iVar5) {
          iVar3 = param_1[0x4f];
          iVar1 = 0;
          do {
            iVar4 = iVar1 + iVar3 * 4;
            iVar1 = iVar1 + 4;
            *(int *)((int)param_1 + iVar4 + 0x140) = iVar2;
          } while (iVar1 != iVar5 * 4);
          param_1[0x4f] = iVar3 + iVar5;
        }
        iVar2 = iVar2 + 1;
      } while (iVar2 < param_1[0x48]);
    }
  }
  if (0 < param_1[0x3c]) {
    iVar1 = param_1[0x3c] * param_1[0x4d];
    if (iVar1 < 0x10000) {
      param_1[0x3b] = iVar1;
    }
    else {
      param_1[0x3b] = 0xffff;
    }
  }
  return;
}

// ---- FUN_00704450  @ 0x704450
int * FUN_00704450(int *param_1,int param_2,int param_3,int param_4)

{
  int iVar1;
  int *piVar2;
  
  if (param_2 < 5) {
    *param_1 = param_2;
    if (0 < param_2) {
      iVar1 = 0;
      piVar2 = param_1;
      do {
        piVar2 = piVar2 + 1;
        *piVar2 = iVar1;
        iVar1 = iVar1 + 1;
      } while (iVar1 != param_2);
    }
    param_1[7] = param_3;
    param_1[6] = 0;
    param_1[5] = 0;
    param_1[8] = param_4;
    param_1 = param_1 + 9;
  }
  else {
    iVar1 = 0;
    piVar2 = param_1;
    do {
      piVar2[1] = iVar1;
      iVar1 = iVar1 + 1;
      *piVar2 = 1;
      piVar2[5] = 0;
      piVar2[6] = 0;
      piVar2[7] = param_3;
      piVar2[8] = param_4;
      piVar2 = piVar2 + 9;
    } while (iVar1 != param_2);
    param_1 = param_1 + iVar1 * 9;
  }
  return param_1;
}

// ---- FUN_00704660  @ 0x704660
void FUN_00704660(int *param_1,int *param_2,void *param_3,void *param_4)

{
  byte *pbVar1;
  void *__dest;
  int iVar2;
  size_t __n;
  
  __dest = (void *)*param_2;
  if (__dest == (void *)0x0) {
    __dest = (void *)jpeg_alloc_huff_table(param_1);
    *param_2 = (int)__dest;
  }
  memcpy(__dest,param_3,0x11);
  __n = 0;
  iVar2 = 1;
  do {
    pbVar1 = (byte *)((int)param_3 + iVar2);
    iVar2 = iVar2 + 1;
    __n = __n + *pbVar1;
  } while (iVar2 != 0x11);
  if (0xff < __n - 1) {
    *(undefined4 *)(*param_1 + 0x14) = 9;
    (**(code **)*param_1)(param_1);
  }
  memcpy((void *)(*param_2 + 0x11),param_4,__n);
  *(undefined4 *)(*param_2 + 0x114) = 0;
  return;
}

// ---- FUN_00704930  @ 0x704930
void FUN_00704930(int *param_1,int param_2)

{
  int iVar1;
  
  iVar1 = param_1[99];
  if (param_2 != 0) {
    *(undefined4 *)(*param_1 + 0x14) = 3;
    (**(code **)*param_1)();
  }
  *(int *)(iVar1 + 0x30) = param_1[8];
  *(undefined4 *)(iVar1 + 0x34) = 0;
  *(undefined4 *)(iVar1 + 0x38) = 0;
  *(int *)(iVar1 + 0x3c) = param_1[0x44] << 1;
  return;
}

// ---- FUN_00704ad0  @ 0x704ad0
void FUN_00704ad0(undefined4 param_1,undefined4 param_2,int param_3,int param_4)

{
  int iVar1;
  int iVar2;
  
  if (param_3 < param_4) {
    iVar1 = param_3;
    do {
      iVar2 = iVar1 + 1;
      jcopy_sample_rows(param_1,param_3 + -1,param_1,iVar1,1,param_2);
      iVar1 = iVar2;
    } while (iVar2 != param_4);
  }
  return;
}

// ---- FUN_00704b08  @ 0x704b08
void FUN_00704b08(int param_1,int param_2,uint *param_3,uint param_4,undefined4 *param_5,
                 uint *param_6,uint param_7)

{
  int *piVar1;
  int *piVar2;
  uint uVar3;
  uint uVar4;
  int iVar5;
  int iVar6;
  uint uVar7;
  int iVar8;
  int iVar9;
  undefined4 *puVar10;
  undefined4 uVar11;
  
  iVar6 = *(int *)(param_1 + 0x18c);
  do {
    uVar3 = *param_3;
    if (param_4 <= uVar3) {
      return;
    }
    if (param_7 <= *param_6) {
      return;
    }
    uVar4 = *(int *)(param_1 + 0x110) - *(int *)(iVar6 + 0x34);
    uVar7 = param_4 - uVar3;
    if (uVar4 <= param_4 - uVar3) {
      uVar7 = uVar4;
    }
    (**(code **)(*(int *)(param_1 + 0x198) + 4))
              (param_1,param_2 + uVar3 * 4,iVar6 + 8,*(int *)(iVar6 + 0x34),uVar7);
    *param_3 = *param_3 + uVar7;
    iVar5 = uVar7 + *(int *)(iVar6 + 0x34);
    *(int *)(iVar6 + 0x34) = iVar5;
    iVar8 = *(int *)(iVar6 + 0x30) - uVar7;
    *(int *)(iVar6 + 0x30) = iVar8;
    if (iVar8 == 0) {
      iVar8 = *(int *)(param_1 + 0x110);
      if (iVar8 <= iVar5) goto LAB_00704b34;
      if (0 < *(int *)(param_1 + 0x4c)) {
        iVar9 = 0;
        puVar10 = (undefined4 *)(iVar6 + 4);
        while( true ) {
          puVar10 = puVar10 + 1;
          iVar9 = iVar9 + 1;
          FUN_00704ad0(*puVar10,*(undefined4 *)(param_1 + 0x1c),iVar5,iVar8);
          if (*(int *)(param_1 + 0x4c) <= iVar9) break;
          iVar5 = *(int *)(iVar6 + 0x34);
          iVar8 = *(int *)(param_1 + 0x110);
        }
        iVar8 = *(int *)(param_1 + 0x110);
      }
      *(int *)(iVar6 + 0x34) = iVar8;
      if (iVar8 != *(int *)(param_1 + 0x110)) goto LAB_00704b38;
LAB_00704bce:
      (**(code **)(*(int *)(param_1 + 0x19c) + 4))(param_1,iVar6 + 8,0,param_5,*param_6);
      *(undefined4 *)(iVar6 + 0x34) = 0;
      *param_6 = *param_6 + 1;
      iVar5 = *(int *)(iVar6 + 0x30);
    }
    else {
      iVar8 = *(int *)(param_1 + 0x110);
LAB_00704b34:
      if (iVar5 == iVar8) goto LAB_00704bce;
LAB_00704b38:
      iVar5 = *(int *)(iVar6 + 0x30);
    }
    if ((iVar5 == 0) && (uVar3 = *param_6, uVar3 < param_7)) {
      iVar6 = *(int *)(param_1 + 0x54);
      if (0 < *(int *)(param_1 + 0x4c)) {
        iVar5 = 0;
        while( true ) {
          iVar5 = iVar5 + 1;
          uVar11 = *param_5;
          iVar8 = __divsi3(*(int *)(iVar6 + 0xc) * *(int *)(iVar6 + 0x28),
                           *(undefined4 *)(param_1 + 0x118));
          piVar1 = (int *)(iVar6 + 0x24);
          piVar2 = (int *)(iVar6 + 0x1c);
          iVar6 = iVar6 + 0x58;
          FUN_00704ad0(uVar11,*piVar2 * *piVar1,iVar8 * uVar3,iVar8 * param_7);
          if (*(int *)(param_1 + 0x4c) <= iVar5) break;
          uVar3 = *param_6;
          param_5 = param_5 + 1;
        }
      }
      *param_6 = param_7;
      return;
    }
  } while( true );
}

// ---- FUN_00704c54  @ 0x704c54
void FUN_00704c54(int param_1,int param_2,uint *param_3,uint param_4,undefined4 param_5,
                 uint *param_6,uint param_7)

{
  int iVar1;
  uint uVar2;
  uint uVar3;
  int iVar4;
  uint uVar5;
  int iVar6;
  int iVar7;
  int iVar8;
  undefined4 *puVar9;
  int iVar10;
  
  iVar8 = *(int *)(param_1 + 0x18c);
  iVar1 = *(int *)(param_1 + 0x110) * 3;
  do {
    uVar2 = *param_6;
    do {
      if (param_7 <= uVar2) {
        return;
      }
      uVar3 = *param_3;
      if (uVar3 < param_4) {
        uVar5 = *(int *)(iVar8 + 0x3c) - *(int *)(iVar8 + 0x34);
        uVar2 = param_4 - uVar3;
        if (uVar5 <= param_4 - uVar3) {
          uVar2 = uVar5;
        }
        (**(code **)(*(int *)(param_1 + 0x198) + 4))
                  (param_1,param_2 + uVar3 * 4,iVar8 + 8,*(int *)(iVar8 + 0x34),uVar2);
        if ((*(int *)(iVar8 + 0x30) == *(int *)(param_1 + 0x20)) &&
           (iVar4 = *(int *)(param_1 + 0x4c), 0 < iVar4)) {
          iVar7 = *(int *)(param_1 + 0x110);
          iVar10 = 0;
          iVar6 = iVar8;
          do {
            if (0 < iVar7) {
              iVar4 = 1;
              do {
                iVar7 = -iVar4;
                iVar4 = iVar4 + 1;
                jcopy_sample_rows(*(undefined4 *)(iVar6 + 8),0,*(undefined4 *)(iVar6 + 8),iVar7,1,
                                  *(undefined4 *)(param_1 + 0x1c));
                iVar7 = *(int *)(param_1 + 0x110);
              } while (iVar4 <= iVar7);
              iVar4 = *(int *)(param_1 + 0x4c);
            }
            iVar10 = iVar10 + 1;
            iVar6 = iVar6 + 4;
          } while (iVar10 < iVar4);
        }
        *param_3 = *param_3 + uVar2;
        iVar4 = *(int *)(iVar8 + 0x34) + uVar2;
        *(int *)(iVar8 + 0x34) = iVar4;
        *(uint *)(iVar8 + 0x30) = *(int *)(iVar8 + 0x30) - uVar2;
        iVar6 = *(int *)(iVar8 + 0x3c);
        uVar2 = *param_6;
      }
      else {
        if (*(int *)(iVar8 + 0x30) != 0) {
          return;
        }
        iVar6 = *(int *)(iVar8 + 0x3c);
        iVar4 = *(int *)(iVar8 + 0x34);
        if (iVar4 < iVar6) {
          if (0 < *(int *)(param_1 + 0x4c)) {
            iVar7 = 0;
            puVar9 = (undefined4 *)(iVar8 + 4);
            while( true ) {
              puVar9 = puVar9 + 1;
              iVar7 = iVar7 + 1;
              FUN_00704ad0(*puVar9,*(undefined4 *)(param_1 + 0x1c),iVar4,iVar6);
              if (*(int *)(param_1 + 0x4c) <= iVar7) break;
              iVar4 = *(int *)(iVar8 + 0x34);
              iVar6 = *(int *)(iVar8 + 0x3c);
            }
            iVar6 = *(int *)(iVar8 + 0x3c);
          }
          *(int *)(iVar8 + 0x34) = iVar6;
          uVar2 = *param_6;
          iVar4 = iVar6;
        }
      }
    } while (iVar6 != iVar4);
    (**(code **)(*(int *)(param_1 + 0x19c) + 4))
              (param_1,iVar8 + 8,*(undefined4 *)(iVar8 + 0x38),param_5,uVar2);
    *param_6 = *param_6 + 1;
    iVar4 = *(int *)(param_1 + 0x110) + *(int *)(iVar8 + 0x38);
    *(int *)(iVar8 + 0x38) = iVar4;
    if (iVar1 <= iVar4) {
      iVar4 = 0;
    }
    *(int *)(iVar8 + 0x38) = iVar4;
    iVar4 = *(int *)(iVar8 + 0x34);
    if (iVar1 <= iVar4) {
      iVar4 = 0;
      *(undefined4 *)(iVar8 + 0x34) = 0;
    }
    *(int *)(iVar8 + 0x3c) = iVar4 + *(int *)(param_1 + 0x110);
  } while( true );
}

// ---- FUN_00704db8  @ 0x704db8
void FUN_00704db8(int *param_1,int param_2,int param_3,int param_4)

{
  undefined1 uVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  
  if ((0 < param_4 - param_3) && (0 < param_2)) {
    iVar4 = 0;
    do {
      iVar3 = *param_1;
      iVar2 = 0;
      uVar1 = *(undefined1 *)(iVar3 + param_3 + -1);
      do {
        *(undefined1 *)(iVar3 + param_3 + iVar2) = uVar1;
        iVar2 = iVar2 + 1;
      } while (iVar2 != param_4 - param_3);
      iVar4 = iVar4 + 1;
      param_1 = param_1 + 1;
    } while (iVar4 != param_2);
  }
  return;
}

// ---- FUN_00704de4  @ 0x704de4
void FUN_00704de4(int param_1,int param_2,int param_3,int param_4,int param_5)

{
  int *piVar1;
  undefined4 *puVar2;
  int *piVar3;
  int *piVar4;
  int iVar5;
  int iVar6;
  int iVar7;
  int iVar8;
  
  iVar6 = *(int *)(param_1 + 0x19c);
  if (0 < *(int *)(param_1 + 0x4c)) {
    iVar5 = 0;
    iVar8 = 0;
    iVar7 = *(int *)(param_1 + 0x54);
    do {
      piVar3 = (int *)(param_2 + iVar5);
      iVar8 = iVar8 + 1;
      piVar1 = (int *)(iVar6 + 0x34);
      piVar4 = (int *)(param_4 + iVar5);
      iVar5 = iVar5 + 4;
      puVar2 = (undefined4 *)(iVar6 + 0xc);
      iVar6 = iVar6 + 4;
      (*(code *)*puVar2)(param_1,iVar7,*piVar3 + param_3 * 4,*piVar1 * param_5 * 4 + *piVar4);
      iVar7 = iVar7 + 0x58;
    } while (iVar8 < *(int *)(param_1 + 0x4c));
  }
  return;
}

// ---- FUN_00704e40  @ 0x704e40
void FUN_00704e40(int param_1,int param_2,int *param_3,int *param_4)

{
  byte *pbVar1;
  undefined1 uVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  uint uVar6;
  uint uVar7;
  int iVar8;
  int iVar9;
  int iVar10;
  int *piVar11;
  int iVar12;
  int local_34;
  int *local_30;
  
  iVar8 = *(int *)(param_2 + 0x1c) * *(int *)(param_2 + 0x24);
  iVar4 = *(int *)(param_1 + 0x19c) + *(int *)(param_2 + 4);
  uVar6 = (uint)*(byte *)(iVar4 + 0x5c);
  uVar7 = (uint)*(byte *)(iVar4 + 0x66);
  FUN_00704db8(param_3,*(undefined4 *)(param_1 + 0x110),*(undefined4 *)(param_1 + 0x1c),
               iVar8 * uVar6);
  iVar4 = *(int *)(param_1 + 0x110);
  if (0 < iVar4) {
    local_34 = 0;
    local_30 = param_4;
    do {
      iVar10 = *local_30;
      if (iVar8 != 0) {
        iVar4 = 0;
        iVar9 = 0;
        while( true ) {
          iVar3 = 0;
          if (uVar7 != 0) {
            iVar3 = 0;
            iVar12 = 0;
            piVar11 = param_3;
            do {
              if (uVar6 != 0) {
                iVar5 = 0;
                do {
                  pbVar1 = (byte *)(*piVar11 + iVar4 + iVar5);
                  iVar5 = iVar5 + 1;
                  iVar3 = iVar3 + (uint)*pbVar1;
                } while (iVar5 < (int)uVar6);
              }
              iVar12 = iVar12 + 1;
              piVar11 = piVar11 + 1;
            } while (iVar12 < (int)uVar7);
          }
          uVar2 = __divsi3(iVar3 + ((int)(uVar6 * uVar7) >> 1),uVar6 * uVar7);
          *(undefined1 *)(iVar10 + iVar9) = uVar2;
          iVar9 = iVar9 + 1;
          if (iVar9 == iVar8) break;
          iVar4 = iVar4 + uVar6;
        }
        iVar4 = *(int *)(param_1 + 0x110);
      }
      local_34 = uVar7 + local_34;
      param_3 = param_3 + uVar7;
      local_30 = local_30 + 1;
    } while (local_34 < iVar4);
  }
  return;
}

// ---- FUN_00704f04  @ 0x704f04
void FUN_00704f04(int param_1,int param_2,int param_3,int param_4)

{
  int iVar1;
  byte *pbVar2;
  uint uVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  int iVar7;
  int iVar8;
  
  iVar5 = *(int *)(param_2 + 0x1c) * *(int *)(param_2 + 0x24);
  FUN_00704db8(param_3,*(undefined4 *)(param_1 + 0x110),*(undefined4 *)(param_1 + 0x1c),iVar5 * 2);
  iVar4 = *(int *)(param_1 + 0x110);
  if (0 < iVar4) {
    iVar6 = 0;
    iVar7 = 0;
    do {
      iVar8 = *(int *)(param_4 + iVar6);
      if (iVar5 != 0) {
        uVar3 = 0;
        iVar4 = 0;
        pbVar2 = *(byte **)(param_3 + iVar6);
        do {
          iVar1 = (uint)*pbVar2 + (uint)pbVar2[1] + uVar3;
          uVar3 = uVar3 ^ 1;
          *(char *)(iVar8 + iVar4) = (char)(iVar1 >> 1);
          iVar4 = iVar4 + 1;
          pbVar2 = pbVar2 + 2;
        } while (iVar4 != iVar5);
        iVar4 = *(int *)(param_1 + 0x110);
      }
      iVar7 = iVar7 + 1;
      iVar6 = iVar6 + 4;
    } while (iVar7 < iVar4);
  }
  return;
}

// ---- FUN_00704f70  @ 0x704f70
void FUN_00704f70(int param_1,int param_2,undefined4 *param_3,int *param_4)

{
  byte *pbVar1;
  byte bVar2;
  uint uVar3;
  byte *pbVar4;
  int iVar5;
  byte *pbVar6;
  int iVar7;
  int iVar8;
  int iVar9;
  int iVar10;
  
  iVar7 = *(int *)(param_2 + 0x1c) * *(int *)(param_2 + 0x24);
  FUN_00704db8(param_3,*(undefined4 *)(param_1 + 0x110),*(undefined4 *)(param_1 + 0x1c),iVar7 * 2);
  iVar5 = *(int *)(param_1 + 0x110);
  if (0 < iVar5) {
    iVar9 = 0;
    do {
      iVar8 = *param_4;
      pbVar6 = (byte *)param_3[1];
      if (iVar7 != 0) {
        uVar3 = 1;
        iVar5 = 0;
        pbVar4 = (byte *)*param_3;
        do {
          bVar2 = *pbVar6;
          pbVar1 = pbVar6 + 1;
          pbVar6 = pbVar6 + 2;
          iVar10 = (uint)*pbVar4 + (uint)pbVar4[1] + (uint)bVar2 + (uint)*pbVar1 + uVar3;
          uVar3 = uVar3 ^ 3;
          *(char *)(iVar8 + iVar5) = (char)(iVar10 >> 2);
          iVar5 = iVar5 + 1;
          pbVar4 = pbVar4 + 2;
        } while (iVar5 != iVar7);
        iVar5 = *(int *)(param_1 + 0x110);
      }
      iVar9 = iVar9 + 2;
      param_3 = param_3 + 2;
      param_4 = param_4 + 1;
    } while (iVar9 < iVar5);
  }
  return;
}

// ---- FUN_00704ff0  @ 0x704ff0
void FUN_00704ff0(int param_1,int param_2,undefined4 *param_3,undefined4 *param_4)

{
  byte *pbVar1;
  byte *pbVar2;
  byte *pbVar3;
  byte *pbVar4;
  byte *pbVar5;
  byte *pbVar6;
  byte *pbVar7;
  byte *pbVar8;
  byte *pbVar9;
  byte *pbVar10;
  byte *pbVar11;
  byte *pbVar12;
  byte *pbVar13;
  byte *pbVar14;
  byte *pbVar15;
  int iVar16;
  byte *pbVar17;
  byte *pbVar18;
  byte *pbVar19;
  byte *pbVar20;
  int iVar21;
  int iVar22;
  undefined1 *puVar23;
  int iVar24;
  int iVar25;
  byte *pbVar26;
  undefined1 *local_4c;
  byte *local_48;
  byte *local_44;
  byte *local_40;
  int local_38;
  undefined4 *local_30;
  
  iVar21 = *(int *)(param_2 + 0x1c) * *(int *)(param_2 + 0x24);
  FUN_00704db8(param_3 + -1,*(int *)(param_1 + 0x110) + 2,*(undefined4 *)(param_1 + 0x1c),iVar21 * 2
              );
  iVar24 = *(int *)(param_1 + 0xe4) * 0x10;
  iVar25 = *(int *)(param_1 + 0xe4) * -0x50 + 0x4000;
  if (0 < *(int *)(param_1 + 0x110)) {
    iVar21 = iVar21 + -2;
    iVar16 = iVar21 * 2;
    local_38 = 0;
    local_30 = param_4;
    do {
      pbVar17 = (byte *)*param_3;
      puVar23 = (undefined1 *)*local_30;
      local_40 = pbVar17 + 2;
      pbVar18 = (byte *)param_3[1];
      pbVar19 = (byte *)param_3[-1];
      pbVar20 = (byte *)param_3[2];
      pbVar26 = pbVar19 + 2;
      local_44 = pbVar18 + 2;
      local_48 = pbVar20 + 2;
      local_4c = puVar23 + 1;
      *puVar23 = (char)(iVar24 * ((uint)*pbVar19 * 3 + (uint)*pbVar20 * 3 +
                                  (uint)pbVar18[2] * 2 +
                                  ((uint)*pbVar18 + (uint)*pbVar17) * 2 + (uint)pbVar19[1] * 2 +
                                  (uint)pbVar20[1] * 2 + (uint)pbVar17[2] * 2 + (uint)pbVar19[2] +
                                 (uint)pbVar20[2]) +
                        iVar25 * ((uint)pbVar17[1] + (uint)*pbVar18 + (uint)*pbVar17 +
                                 (uint)pbVar18[1]) + 0x8000 >> 0x10);
      iVar22 = iVar21;
      if (iVar21 != 0) {
        do {
          pbVar2 = pbVar19 + 3;
          pbVar1 = pbVar19 + 2;
          pbVar3 = pbVar17 + 3;
          pbVar4 = pbVar20 + 2;
          pbVar5 = pbVar20 + 3;
          pbVar6 = pbVar17 + 1;
          pbVar7 = pbVar17 + 4;
          pbVar8 = pbVar18 + 1;
          pbVar9 = pbVar18 + 4;
          pbVar10 = pbVar19 + 1;
          pbVar11 = pbVar19 + 4;
          pbVar19 = pbVar19 + 2;
          pbVar12 = pbVar20 + 1;
          pbVar17 = pbVar17 + 2;
          pbVar13 = pbVar18 + 2;
          pbVar14 = pbVar18 + 3;
          pbVar18 = pbVar18 + 2;
          pbVar15 = pbVar20 + 4;
          pbVar20 = pbVar20 + 2;
          iVar22 = iVar22 + -1;
          puVar23 = puVar23 + 1;
          *puVar23 = (char)(iVar24 * ((uint)*pbVar15 +
                                     (uint)*pbVar10 +
                                     ((uint)*pbVar1 + (uint)*pbVar2 + (uint)*pbVar4 + (uint)*pbVar5
                                      + (uint)*pbVar6 + (uint)*pbVar7 + (uint)*pbVar8 +
                                     (uint)*pbVar9) * 2 + (uint)*pbVar11 + (uint)*pbVar12) +
                            iVar25 * ((uint)*pbVar3 + (uint)*pbVar17 + (uint)*pbVar13 +
                                     (uint)*pbVar14) + 0x8000 >> 0x10);
        } while (iVar22 != 0);
        pbVar26 = pbVar26 + iVar16;
        local_40 = local_40 + iVar16;
        local_44 = local_44 + iVar16;
        local_48 = local_48 + iVar16;
        local_4c = local_4c + iVar21;
      }
      param_3 = param_3 + 2;
      *local_4c = (char)(iVar24 * ((uint)pbVar26[1] * 3 + (uint)local_48[1] * 3 +
                                   ((uint)local_40[1] + (uint)local_44[1] + (uint)*pbVar26) * 2 +
                                   (uint)*local_48 * 2 + (uint)local_40[-1] * 2 +
                                   (uint)local_44[-1] * 2 + (uint)pbVar26[-1] + (uint)local_48[-1])
                         + iVar25 * ((uint)*local_44 + (uint)*local_40 + (uint)local_40[1] +
                                    (uint)local_44[1]) + 0x8000 >> 0x10);
      local_38 = local_38 + 2;
      local_30 = local_30 + 1;
    } while (local_38 < *(int *)(param_1 + 0x110));
  }
  return;
}

// ---- FUN_007051c0  @ 0x7051c0
void FUN_007051c0(int param_1,int param_2,undefined4 *param_3,undefined4 *param_4)

{
  byte *pbVar1;
  byte *pbVar2;
  uint uVar3;
  int iVar4;
  byte *pbVar5;
  int iVar6;
  int iVar7;
  int iVar8;
  int iVar9;
  undefined1 *puVar10;
  byte *pbVar11;
  int iVar12;
  int iVar13;
  byte *pbVar14;
  byte *pbVar15;
  undefined1 *local_40;
  undefined4 *local_3c;
  int local_34;
  undefined4 *local_30;
  
  iVar7 = *(int *)(param_2 + 0x1c) * *(int *)(param_2 + 0x24);
  FUN_00704db8(param_3 + -1,*(int *)(param_1 + 0x110) + 2,*(undefined4 *)(param_1 + 0x1c),iVar7);
  iVar12 = *(int *)(param_1 + 0xe4) * 0x40;
  iVar13 = (0x80 - *(int *)(param_1 + 0xe4)) * 0x200;
  if (0 < *(int *)(param_1 + 0x110)) {
    iVar7 = iVar7 + -2;
    local_34 = 0;
    local_3c = param_3;
    local_30 = param_4;
    do {
      puVar10 = (undefined1 *)*local_30;
      pbVar2 = (byte *)*local_3c;
      pbVar1 = (byte *)local_3c[-1];
      local_3c = local_3c + 1;
      pbVar5 = (byte *)*local_3c;
      pbVar14 = pbVar2 + 1;
      uVar3 = (uint)*pbVar2;
      pbVar11 = pbVar5 + 1;
      pbVar15 = pbVar1 + 1;
      iVar6 = (uint)pbVar5[1] + (uint)pbVar1[1] + (uint)pbVar2[1];
      iVar8 = (uint)*pbVar5 + (uint)*pbVar1 + uVar3;
      local_40 = puVar10 + 1;
      *puVar10 = (char)(iVar12 * ((iVar6 + iVar8 * 2) - uVar3) + uVar3 * iVar13 + 0x8000 >> 0x10);
      pbVar1 = pbVar14;
      iVar4 = iVar7;
      iVar9 = iVar8;
      if (iVar7 != 0) {
        do {
          iVar9 = iVar6;
          pbVar11 = pbVar11 + 1;
          pbVar15 = pbVar15 + 1;
          iVar6 = (uint)*pbVar15 + (uint)*pbVar11 + (uint)pbVar1[1];
          iVar4 = iVar4 + -1;
          puVar10 = puVar10 + 1;
          *puVar10 = (char)(iVar12 * ((iVar6 - (uint)*pbVar1) + iVar9 + iVar8) +
                            (uint)*pbVar1 * iVar13 + 0x8000 >> 0x10);
          pbVar1 = pbVar1 + 1;
          iVar8 = iVar9;
        } while (iVar4 != 0);
        pbVar14 = pbVar14 + iVar7;
        local_40 = local_40 + iVar7;
      }
      *local_40 = (char)(iVar12 * ((iVar9 + iVar6 * 2) - (uint)*pbVar14) +
                         iVar13 * (uint)*pbVar14 + 0x8000 >> 0x10);
      local_34 = local_34 + 1;
      local_30 = local_30 + 1;
    } while (local_34 < *(int *)(param_1 + 0x110));
  }
  return;
}

// ---- FUN_007054a8  @ 0x7054a8
void FUN_007054a8(int param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  jcopy_sample_rows(param_3,0,param_4,0,*(undefined4 *)(param_1 + 0x110),
                    *(undefined4 *)(param_1 + 0x1c));
  FUN_00704db8(param_4,*(undefined4 *)(param_1 + 0x110),*(undefined4 *)(param_1 + 0x1c),
               *(int *)(param_2 + 0x1c) * *(int *)(param_2 + 0x24));
  return;
}

// ---- FUN_0070552c  @ 0x70552c
undefined4 FUN_0070552c(int param_1)

{
  undefined4 uVar1;
  int iVar2;
  undefined2 *puVar3;
  int *piVar4;
  int iVar5;
  int iVar6;
  int iVar7;
  int iVar8;
  int iVar9;
  int iVar10;
  int iVar11;
  undefined4 *puVar12;
  int iVar13;
  int iVar14;
  int iVar15;
  int iVar16;
  int local_80;
  uint local_78;
  int *local_74;
  int local_70;
  int local_6c;
  int local_60 [9];
  undefined4 uStack_3c;
  int local_38 [5];
  
  puVar12 = &uStack_3c;
  iVar5 = *(int *)(param_1 + 0x134);
  iVar10 = *(int *)(param_1 + 400);
  iVar6 = *(int *)(param_1 + 0x11c);
  piVar4 = (int *)(param_1 + 0x120);
  for (iVar13 = 0; iVar13 < *(int *)(param_1 + 0x120); iVar13 = iVar13 + 1) {
    piVar4 = piVar4 + 1;
    iVar7 = *(int *)(*piVar4 + 0xc);
    uVar1 = (**(code **)(*(int *)(param_1 + 4) + 0x20))
                      (param_1,*(undefined4 *)(*(int *)(iVar10 + 0x18) + *(int *)(*piVar4 + 4) * 4),
                       *(int *)(iVar10 + 8) * iVar7,iVar7,0);
    puVar12 = puVar12 + 1;
    *puVar12 = uVar1;
  }
  local_70 = *(int *)(iVar10 + 0x10);
  local_6c = local_70 << 2;
  iVar13 = *(int *)(iVar10 + 0x14);
  do {
    if (iVar13 <= local_70) {
      *(int *)(iVar10 + 8) = *(int *)(iVar10 + 8) + 1;
      iVar5 = *(int *)(param_1 + 400);
      if (*(int *)(param_1 + 0x120) < 2) {
        if (*(uint *)(iVar5 + 8) < *(int *)(param_1 + 0x11c) - 1U) {
          uVar1 = *(undefined4 *)(*(int *)(param_1 + 0x124) + 0xc);
        }
        else {
          uVar1 = *(undefined4 *)(*(int *)(param_1 + 0x124) + 0x4c);
        }
        *(undefined4 *)(iVar5 + 0x14) = uVar1;
      }
      else {
        *(undefined4 *)(iVar5 + 0x14) = 1;
      }
      *(undefined4 *)(iVar5 + 0xc) = 0;
      *(undefined4 *)(iVar5 + 0x10) = 0;
      return 1;
    }
    local_78 = *(uint *)(iVar10 + 0xc);
    if (local_78 < *(uint *)(param_1 + 0x134)) {
      do {
        iVar13 = *(int *)(param_1 + 0x120);
        if (0 < iVar13) {
          iVar7 = 0;
          local_80 = 0;
          local_74 = (int *)(param_1 + 0x120);
          do {
            local_74 = local_74 + 1;
            iVar14 = *local_74;
            iVar2 = *(int *)(iVar14 + 0x38);
            iVar11 = iVar2;
            if (iVar5 - 1U <= local_78) {
              iVar11 = *(int *)(iVar14 + 0x48);
            }
            if (0 < *(int *)(iVar14 + 0x3c)) {
              iVar8 = iVar2 * 0x80;
              iVar16 = 0;
              iVar13 = local_6c;
              iVar15 = local_70;
              do {
                if (((*(uint *)(iVar10 + 8) < iVar6 - 1U) || (iVar15 < *(int *)(iVar14 + 0x4c))) &&
                   (0 < iVar11)) {
                  iVar2 = *(int *)(local_38[local_80] + iVar13) + local_78 * iVar8;
                  iVar9 = 0;
                  do {
                    *(int *)((int)local_60 + iVar9 + iVar7 * 4) = iVar2;
                    iVar9 = iVar9 + 4;
                    iVar2 = iVar2 + 0x80;
                  } while (iVar9 != iVar11 * 4);
                  iVar2 = *(int *)(iVar14 + 0x38);
                  iVar7 = iVar7 + iVar11;
                  iVar9 = iVar11;
                }
                else {
                  iVar9 = 0;
                }
                if (iVar9 < iVar2) {
                  puVar12 = (undefined4 *)(iVar10 + iVar7 * 4 + 0x18);
                  piVar4 = local_60 + iVar7 + -1;
                  do {
                    puVar12 = puVar12 + 1;
                    puVar3 = (undefined2 *)*puVar12;
                    iVar9 = iVar9 + 1;
                    iVar7 = iVar7 + 1;
                    piVar4[1] = (int)puVar3;
                    *puVar3 = *(undefined2 *)*piVar4;
                    iVar2 = *(int *)(iVar14 + 0x38);
                    piVar4 = piVar4 + 1;
                  } while (iVar9 < iVar2);
                }
                iVar16 = iVar16 + 1;
                iVar15 = iVar15 + 1;
                iVar13 = iVar13 + 4;
              } while (iVar16 < *(int *)(iVar14 + 0x3c));
              iVar13 = *(int *)(param_1 + 0x120);
            }
            local_80 = local_80 + 1;
          } while (local_80 < iVar13);
        }
        iVar13 = (**(code **)(*(int *)(param_1 + 0x1a4) + 4))(param_1,local_60);
        if (iVar13 == 0) {
          *(int *)(iVar10 + 0x10) = local_70;
          *(uint *)(iVar10 + 0xc) = local_78;
          return 0;
        }
        local_78 = local_78 + 1;
      } while (local_78 < *(uint *)(param_1 + 0x134));
      iVar13 = *(int *)(iVar10 + 0x14);
    }
    *(undefined4 *)(iVar10 + 0xc) = 0;
    local_70 = local_70 + 1;
    local_6c = local_6c + 4;
  } while( true );
}

// ---- FUN_00705d38  @ 0x705d38
undefined4 FUN_00705d38(int param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  uint uVar3;
  uint uVar4;
  
  if (*(int *)(param_1 + 0x14) != 0xcc) {
    (*(code *)**(undefined4 **)(param_1 + 0x1b8))();
    *(undefined4 *)(param_1 + 0x8c) = 0;
    *(undefined4 *)(param_1 + 0x14) = 0xcc;
  }
  if (*(int *)(*(int *)(param_1 + 0x1b8) + 8) == 0) {
LAB_00705dce:
    uVar1 = 1;
    if (*(int *)(param_1 + 0x44) == 0) {
      uVar2 = 0xcd;
    }
    else {
      uVar2 = 0xce;
    }
    *(undefined4 *)(param_1 + 0x14) = uVar2;
  }
  else {
    uVar3 = *(uint *)(param_1 + 0x8c);
    do {
      while (*(uint *)(param_1 + 0x74) <= uVar3) {
        uVar3 = 0;
        (**(code **)(*(int *)(param_1 + 0x1b8) + 4))(param_1);
        (*(code *)**(undefined4 **)(param_1 + 0x1b8))(param_1);
        *(undefined4 *)(param_1 + 0x8c) = 0;
        if (*(int *)(*(int *)(param_1 + 0x1b8) + 8) == 0) goto LAB_00705dce;
      }
      uVar4 = uVar3;
      if (*(int *)(param_1 + 8) != 0) {
        *(uint *)(*(int *)(param_1 + 8) + 4) = uVar3;
        *(undefined4 *)(*(int *)(param_1 + 8) + 8) = *(undefined4 *)(param_1 + 0x74);
        (*(code *)**(undefined4 **)(param_1 + 8))(param_1);
        uVar4 = *(uint *)(param_1 + 0x8c);
      }
      (**(code **)(*(int *)(param_1 + 0x1bc) + 4))(param_1,0,(uint *)(param_1 + 0x8c),0);
      uVar3 = *(uint *)(param_1 + 0x8c);
    } while (uVar3 != uVar4);
    uVar1 = 0;
  }
  return uVar1;
}

// ---- FUN_0070605c  @ 0x70605c
void FUN_0070605c(int param_1)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  
  puVar2 = *(undefined4 **)(param_1 + 0x18);
  uVar1 = (*(code *)**(undefined4 **)(param_1 + 4))(param_1,1,0x1000);
  puVar2[1] = 0x1000;
  puVar2[6] = uVar1;
  *puVar2 = uVar1;
  return;
}

// ---- FUN_0070617c  @ 0x70617c
undefined4 FUN_0070617c(int *param_1)

{
  void *__dest;
  int *piVar1;
  int iVar2;
  
  piVar1 = (int *)param_1[6];
  iVar2 = piVar1[9];
  __dest = malloc(iVar2 << 1);
  if (__dest == (void *)0x0) {
    *(undefined4 *)(*param_1 + 0x14) = 0x38;
    *(undefined4 *)(*param_1 + 0x18) = 10;
    (**(code **)*param_1)(param_1);
  }
  memcpy(__dest,(void *)piVar1[8],piVar1[9]);
  if ((void *)piVar1[7] != (void *)0x0) {
    free((void *)piVar1[7]);
  }
  piVar1[7] = (int)__dest;
  piVar1[8] = (int)__dest;
  *piVar1 = (int)__dest + piVar1[9];
  piVar1[1] = piVar1[9];
  piVar1[9] = iVar2 << 1;
  return 1;
}

// ---- FUN_00706260  @ 0x706260
undefined4 FUN_00706260(int *param_1)

{
  *(undefined4 *)(*param_1 + 0x14) = 0x7b;
  (**(code **)(*param_1 + 4))(param_1,0xffffffff);
  *(undefined **)param_1[6] = &DAT_00854cd0;
  *(undefined4 *)(param_1[6] + 4) = 2;
  return 1;
}

// ---- FUN_007063a8  @ 0x7063a8
undefined4 FUN_007063a8(int *param_1)

{
  size_t sVar1;
  undefined4 *puVar2;
  
  puVar2 = (undefined4 *)param_1[6];
  sVar1 = fread((void *)puVar2[8],1,0x1000,(FILE *)puVar2[7]);
  if (sVar1 == 0) {
    if (puVar2[9] != 0) {
      *(undefined4 *)(*param_1 + 0x14) = 0x2b;
      (**(code **)*param_1)(param_1);
    }
    *(undefined4 *)(*param_1 + 0x14) = 0x7b;
    (**(code **)(*param_1 + 4))(param_1,0xffffffff);
    sVar1 = 2;
    *(undefined1 *)puVar2[8] = 0xff;
    *(undefined1 *)(puVar2[8] + 1) = 0xd9;
  }
  puVar2[1] = sVar1;
  *puVar2 = puVar2[8];
  puVar2[9] = 0;
  return 1;
}

// ---- FUN_00706404  @ 0x706404
void FUN_00706404(int param_1)

{
  undefined4 uVar1;
  int iVar2;
  
  iVar2 = *(int *)(param_1 + 0x1c0);
  if (*(int *)(param_1 + 0x150) < 2) {
    if (*(uint *)(param_1 + 0x94) < *(int *)(param_1 + 0x148) - 1U) {
      uVar1 = *(undefined4 *)(*(int *)(param_1 + 0x154) + 0xc);
    }
    else {
      uVar1 = *(undefined4 *)(*(int *)(param_1 + 0x154) + 0x4c);
    }
    *(undefined4 *)(iVar2 + 0x1c) = uVar1;
  }
  else {
    *(undefined4 *)(iVar2 + 0x1c) = 1;
  }
  *(undefined4 *)(iVar2 + 0x14) = 0;
  *(undefined4 *)(iVar2 + 0x18) = 0;
  return;
}

// ---- FUN_0070644c  @ 0x70644c
undefined4 FUN_0070644c(int param_1)

{
  undefined4 uVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  uint uVar6;
  int iVar7;
  int iVar8;
  int iVar9;
  int *piVar10;
  int *piVar11;
  int *piVar12;
  int iVar13;
  int iVar14;
  uint local_4c;
  int local_48;
  int local_44;
  int local_3c;
  int local_38 [5];
  
  iVar7 = *(int *)(param_1 + 0x1c0);
  piVar11 = &local_3c;
  piVar12 = (int *)(param_1 + 0x150);
  for (iVar9 = 0; iVar9 < *(int *)(param_1 + 0x150); iVar9 = iVar9 + 1) {
    piVar12 = piVar12 + 1;
    iVar3 = *(int *)(*piVar12 + 0xc);
    iVar3 = (**(code **)(*(int *)(param_1 + 4) + 0x20))
                      (param_1,*(undefined4 *)(iVar7 + (*(int *)(*piVar12 + 4) + 0x12) * 4),
                       *(int *)(param_1 + 0x94) * iVar3,iVar3,1);
    piVar11 = piVar11 + 1;
    *piVar11 = iVar3;
  }
  local_44 = *(int *)(iVar7 + 0x18);
  local_3c = iVar7 + 0x20;
  local_48 = local_44 << 2;
  iVar9 = *(int *)(iVar7 + 0x1c);
  do {
    if (iVar9 <= local_44) {
      uVar6 = *(int *)(param_1 + 0x94) + 1;
      *(uint *)(param_1 + 0x94) = uVar6;
      if (uVar6 < *(uint *)(param_1 + 0x148)) {
        FUN_00706404(param_1);
        uVar1 = 3;
      }
      else {
        (**(code **)(*(int *)(param_1 + 0x1c8) + 0xc))(param_1);
        uVar1 = 4;
      }
      return uVar1;
    }
    local_4c = *(uint *)(iVar7 + 0x14);
    if (local_4c < *(uint *)(param_1 + 0x164)) {
      do {
        iVar9 = *(int *)(param_1 + 0x150);
        if (0 < iVar9) {
          iVar13 = 0;
          iVar3 = 0;
          piVar12 = (int *)(param_1 + 0x150);
          do {
            piVar12 = piVar12 + 1;
            iVar8 = *piVar12;
            iVar4 = *(int *)(iVar8 + 0x3c);
            iVar2 = *(int *)(iVar8 + 0x38);
            if (0 < iVar4) {
              iVar9 = iVar2 * 0x80;
              iVar14 = 0;
              piVar11 = (int *)(local_38[iVar13] + local_48);
              do {
                if (0 < iVar2) {
                  iVar4 = *piVar11 + local_4c * iVar9;
                  iVar5 = 0;
                  piVar10 = (int *)(iVar7 + (iVar3 + 7) * 4);
                  do {
                    piVar10 = piVar10 + 1;
                    *piVar10 = iVar4;
                    iVar5 = iVar5 + 1;
                    iVar2 = *(int *)(iVar8 + 0x38);
                    iVar3 = iVar3 + 1;
                    iVar4 = iVar4 + 0x80;
                  } while (iVar5 < iVar2);
                  iVar4 = *(int *)(iVar8 + 0x3c);
                }
                iVar14 = iVar14 + 1;
                piVar11 = piVar11 + 1;
              } while (iVar14 < iVar4);
              iVar9 = *(int *)(param_1 + 0x150);
            }
            iVar13 = iVar13 + 1;
          } while (iVar13 < iVar9);
        }
        iVar9 = (**(code **)(*(int *)(param_1 + 0x1d0) + 4))(param_1,local_3c);
        if (iVar9 == 0) {
          *(int *)(iVar7 + 0x18) = local_44;
          *(uint *)(iVar7 + 0x14) = local_4c;
          return 0;
        }
        local_4c = local_4c + 1;
      } while (local_4c < *(uint *)(param_1 + 0x164));
      iVar9 = *(int *)(iVar7 + 0x1c);
    }
    *(undefined4 *)(iVar7 + 0x14) = 0;
    local_44 = local_44 + 1;
    local_48 = local_48 + 4;
  } while( true );
}

// ---- FUN_007065a0  @ 0x7065a0
undefined4 FUN_007065a0(int param_1,int param_2)

{
  int iVar1;
  int extraout_r1;
  int iVar2;
  int iVar3;
  uint uVar4;
  int iVar5;
  int iVar6;
  uint uVar7;
  code *pcVar8;
  int iVar9;
  int *local_40;
  int local_3c;
  int local_38;
  int local_34;
  
  iVar2 = *(int *)(param_1 + 0x148);
  local_34 = *(int *)(param_1 + 0x1c0);
  while (*(int *)(param_1 + 0x90) < *(int *)(param_1 + 0x98)) {
LAB_007065d0:
    iVar1 = (*(code *)**(undefined4 **)(param_1 + 0x1c8))(param_1);
    if (iVar1 == 0) {
      return 0;
    }
  }
  if (*(int *)(param_1 + 0x90) == *(int *)(param_1 + 0x98)) {
    uVar4 = *(uint *)(param_1 + 0x9c);
    if (*(uint *)(param_1 + 0x94) <= uVar4) goto LAB_007065d0;
  }
  else {
    uVar4 = *(uint *)(param_1 + 0x9c);
  }
  iVar1 = *(int *)(param_1 + 0x24);
  iVar3 = *(int *)(param_1 + 0xd8);
  if (0 < iVar1) {
    local_38 = 0;
    do {
      if (*(int *)(iVar3 + 0x34) == 0) {
        if (iVar1 <= local_38 + 1) break;
      }
      else {
        local_40 = (int *)(**(code **)(*(int *)(param_1 + 4) + 0x20))
                                    (param_1,*(undefined4 *)(local_34 + 0x48),
                                     *(int *)(iVar3 + 0xc) * uVar4,*(int *)(iVar3 + 0xc),0);
        uVar4 = *(uint *)(param_1 + 0x9c);
        if (uVar4 < iVar2 - 1U) {
          local_3c = *(int *)(iVar3 + 0xc);
        }
        else {
          iVar1 = *(int *)(iVar3 + 0xc);
          __aeabi_uidivmod(*(undefined4 *)(iVar3 + 0x20),iVar1);
          local_3c = extraout_r1;
          if (extraout_r1 == 0) {
            local_3c = iVar1;
          }
        }
        pcVar8 = *(code **)(*(int *)(param_1 + 0x1d4) + local_38 * 4 + 4);
        iVar1 = *(int *)(param_2 + local_38 * 4);
        if (0 < local_3c) {
          iVar9 = 0;
          uVar4 = *(uint *)(iVar3 + 0x1c);
          while( true ) {
            iVar6 = *local_40;
            if (uVar4 != 0) {
              iVar5 = 0;
              uVar7 = 0;
              do {
                uVar7 = uVar7 + 1;
                (*pcVar8)(param_1,iVar3,iVar6,iVar1,iVar5);
                iVar6 = iVar6 + 0x80;
                iVar5 = iVar5 + *(int *)(iVar3 + 0x24);
                uVar4 = *(uint *)(iVar3 + 0x1c);
              } while (uVar7 < uVar4);
            }
            iVar9 = iVar9 + 1;
            if (iVar9 == local_3c) break;
            iVar1 = iVar1 + *(int *)(iVar3 + 0x28) * 4;
            local_40 = local_40 + 1;
          }
          uVar4 = *(uint *)(param_1 + 0x9c);
        }
        iVar1 = *(int *)(param_1 + 0x24);
        if (iVar1 <= local_38 + 1) break;
      }
      local_34 = local_34 + 4;
      local_38 = local_38 + 1;
      iVar3 = iVar3 + 0x58;
    } while( true );
  }
  *(uint *)(param_1 + 0x9c) = uVar4 + 1;
  if (*(uint *)(param_1 + 0x148) <= uVar4 + 1) {
    return 4;
  }
  return 3;
}

// ---- FUN_007066dc  @ 0x7066dc
void FUN_007066dc(int param_1)

{
  int iVar1;
  int *piVar2;
  int *piVar3;
  short *psVar4;
  int iVar5;
  int iVar6;
  int *piVar7;
  int iVar8;
  int iVar9;
  
  iVar6 = *(int *)(param_1 + 0x1c0);
  if (*(int *)(iVar6 + 0x10) != 0) {
    if (((*(int *)(param_1 + 0x50) != 0) && (*(int *)(param_1 + 0xe0) != 0)) &&
       (*(int *)(param_1 + 0xa0) != 0)) {
      piVar7 = *(int **)(iVar6 + 0x70);
      if (piVar7 == (int *)0x0) {
        piVar7 = (int *)(*(code *)**(undefined4 **)(param_1 + 4))
                                  (param_1,1,*(int *)(param_1 + 0x24) * 0x18);
        *(int **)(iVar6 + 0x70) = piVar7;
      }
      if ((((0 < *(int *)(param_1 + 0x24)) &&
           (psVar4 = *(short **)(*(int *)(param_1 + 0xd8) + 0x50), psVar4 != (short *)0x0)) &&
          ((*psVar4 != 0 && ((psVar4[1] != 0 && (psVar4[8] != 0)))))) &&
         ((psVar4[0x10] != 0 &&
          (((psVar4[9] != 0 && (psVar4[2] != 0)) &&
           (piVar3 = *(int **)(param_1 + 0xa0), -1 < *piVar3)))))) {
        iVar8 = 0;
        iVar1 = *(int *)(param_1 + 0xd8);
        iVar9 = iVar8;
        while( true ) {
          iVar5 = 1;
          piVar2 = piVar7;
          do {
            iVar5 = iVar5 + 1;
            piVar2 = piVar2 + 1;
            *piVar2 = piVar3[1];
            piVar3 = piVar3 + 1;
            if (*piVar3 != 0) {
              iVar8 = 1;
            }
          } while (iVar5 != 6);
          iVar9 = iVar9 + 1;
          if (*(int *)(param_1 + 0x24) <= iVar9) break;
          psVar4 = *(short **)(iVar1 + 0xa8);
          if ((((psVar4 == (short *)0x0) || (*psVar4 == 0)) ||
              (((psVar4[1] == 0 || ((psVar4[8] == 0 || (psVar4[0x10] == 0)))) || (psVar4[9] == 0))))
             || ((psVar4[2] == 0 ||
                 (piVar3 = (int *)(*(int *)(param_1 + 0xa0) + iVar9 * 0x100),
                 *(int *)(*(int *)(param_1 + 0xa0) + iVar9 * 0x100) < 0)))) goto LAB_007066ee;
          piVar7 = piVar7 + 6;
          iVar1 = iVar1 + 0x58;
        }
        if (iVar8 != 0) {
          *(undefined4 *)(iVar6 + 0xc) = 0x706ab5;
          goto LAB_007066f4;
        }
      }
    }
LAB_007066ee:
    *(undefined4 *)(iVar6 + 0xc) = 0x7065a1;
  }
LAB_007066f4:
  *(undefined4 *)(param_1 + 0x9c) = 0;
  return;
}

// ---- FUN_007068f4  @ 0x7068f4
undefined4 FUN_007068f4(int param_1,int param_2)

{
  int iVar1;
  undefined4 uVar2;
  int iVar3;
  uint uVar4;
  int iVar5;
  int iVar6;
  int iVar7;
  int iVar8;
  int iVar9;
  undefined4 *puVar10;
  int unaff_r10;
  code *pcVar11;
  int local_5c;
  int local_58;
  int local_48;
  int local_44;
  int *local_40;
  uint local_3c;
  
  iVar1 = *(int *)(param_1 + 0x1c0);
  uVar4 = *(int *)(param_1 + 0x164) - 1;
  iVar5 = *(int *)(param_1 + 0x148);
  local_44 = *(int *)(iVar1 + 0x18);
  iVar6 = *(int *)(iVar1 + 0x1c);
  do {
    if (iVar6 <= local_44) {
      *(int *)(param_1 + 0x9c) = *(int *)(param_1 + 0x9c) + 1;
      uVar4 = *(int *)(param_1 + 0x94) + 1;
      *(uint *)(param_1 + 0x94) = uVar4;
      if (uVar4 < *(uint *)(param_1 + 0x148)) {
        FUN_00706404(param_1);
        uVar2 = 3;
      }
      else {
        (**(code **)(*(int *)(param_1 + 0x1c8) + 0xc))(param_1);
        uVar2 = 4;
      }
      return uVar2;
    }
    local_3c = *(uint *)(iVar1 + 0x14);
    if (local_3c <= uVar4) {
      do {
        if (*(int *)(param_1 + 0x1b0) == 0) {
          iVar6 = (**(code **)(*(int *)(param_1 + 0x1d0) + 4))(param_1,iVar1 + 0x20);
        }
        else {
          memset(*(void **)(iVar1 + 0x20),0,*(int *)(param_1 + 0x16c) << 7);
          iVar6 = (**(code **)(*(int *)(param_1 + 0x1d0) + 4))(param_1,iVar1 + 0x20);
        }
        if (iVar6 == 0) {
          *(int *)(iVar1 + 0x18) = local_44;
          *(uint *)(iVar1 + 0x14) = local_3c;
          return 0;
        }
        iVar6 = *(int *)(param_1 + 0x150);
        if (0 < iVar6) {
          local_48 = 0;
          local_58 = 0;
          local_40 = (int *)(param_1 + 0x150);
          do {
            local_40 = local_40 + 1;
            iVar9 = *local_40;
            if (*(int *)(iVar9 + 0x34) == 0) {
              local_58 = local_58 + *(int *)(iVar9 + 0x40);
            }
            else {
              pcVar11 = *(code **)(*(int *)(param_1 + 0x1d4) + *(int *)(iVar9 + 4) * 4 + 4);
              if (local_3c < uVar4) {
                unaff_r10 = *(int *)(iVar9 + 0x38);
              }
              iVar7 = *(int *)(iVar9 + 0x44);
              if (uVar4 <= local_3c) {
                unaff_r10 = *(int *)(iVar9 + 0x48);
              }
              iVar3 = *(int *)(iVar9 + 0x28);
              iVar8 = *(int *)(iVar9 + 0x3c);
              if (0 < iVar8) {
                local_5c = 0;
                iVar6 = *(int *)(param_2 + *(int *)(iVar9 + 4) * 4) + iVar3 * local_44 * 4;
                while( true ) {
                  if (((*(uint *)(param_1 + 0x94) < iVar5 - 1U) ||
                      (local_5c + local_44 < *(int *)(iVar9 + 0x4c))) && (0 < unaff_r10)) {
                    iVar8 = 0;
                    puVar10 = (undefined4 *)(iVar1 + (local_58 + 7) * 4);
                    iVar3 = iVar7 * local_3c;
                    do {
                      puVar10 = puVar10 + 1;
                      iVar8 = iVar8 + 1;
                      (*pcVar11)(param_1,iVar9,*puVar10,iVar6,iVar3);
                      iVar3 = iVar3 + *(int *)(iVar9 + 0x24);
                    } while (iVar8 != unaff_r10);
                    iVar3 = *(int *)(iVar9 + 0x28);
                    iVar8 = *(int *)(iVar9 + 0x3c);
                  }
                  local_5c = local_5c + 1;
                  local_58 = local_58 + *(int *)(iVar9 + 0x38);
                  if (iVar8 <= local_5c) break;
                  iVar6 = iVar6 + iVar3 * 4;
                }
                iVar6 = *(int *)(param_1 + 0x150);
              }
            }
            local_48 = local_48 + 1;
          } while (local_48 < iVar6);
        }
        local_3c = local_3c + 1;
      } while (local_3c <= uVar4);
      iVar6 = *(int *)(iVar1 + 0x1c);
    }
    *(undefined4 *)(iVar1 + 0x14) = 0;
    local_44 = local_44 + 1;
  } while( true );
}

// ---- FUN_00706ab4  @ 0x706ab4
undefined4 FUN_00706ab4(int param_1,int param_2)

{
  bool bVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  int iVar7;
  int iVar8;
  undefined4 uVar9;
  int iVar10;
  int iVar11;
  int extraout_r1;
  int iVar12;
  int iVar13;
  uint uVar14;
  uint uVar15;
  int iVar16;
  uint uVar17;
  uint uVar18;
  int iVar19;
  short *psVar20;
  ushort *puVar21;
  code *pcVar22;
  int iVar23;
  int iVar24;
  int iVar25;
  short *psVar26;
  int iVar27;
  int iVar28;
  uint uVar29;
  int iVar30;
  int iVar31;
  short *local_15c;
  int local_14c;
  int local_140;
  int local_13c;
  int local_138;
  int local_134;
  int local_130;
  int local_12c;
  int local_104;
  undefined4 *local_100;
  int local_d0;
  int local_c4;
  int local_bc;
  int local_b8;
  undefined1 auStack_a8 [2];
  short local_a6;
  short local_a4;
  short local_98;
  short local_96;
  short local_88;
  
  iVar5 = *(int *)(param_1 + 0x1c0);
  iVar13 = *(int *)(param_1 + 0x148);
  do {
    if (*(int *)(param_1 + 0x98) < *(int *)(param_1 + 0x90)) {
      uVar18 = *(uint *)(param_1 + 0x9c);
LAB_00706b1a:
      iVar6 = *(int *)(param_1 + 0x24);
      iVar27 = *(int *)(param_1 + 0xd8);
      if (0 < iVar6) {
        local_bc = 0;
        local_c4 = 0;
        local_b8 = iVar5;
        while( true ) {
          if (*(int *)(iVar27 + 0x34) != 0) {
            if (uVar18 < iVar13 - 1U) {
              iVar6 = *(int *)(iVar27 + 0xc);
              bVar1 = false;
              iVar7 = iVar6 << 1;
              local_d0 = iVar6;
            }
            else {
              iVar6 = *(int *)(iVar27 + 0xc);
              __aeabi_uidivmod(*(undefined4 *)(iVar27 + 0x20),iVar6);
              if (extraout_r1 == 0) {
                bVar1 = true;
                iVar7 = iVar6;
                local_d0 = iVar6;
              }
              else {
                bVar1 = true;
                iVar7 = extraout_r1;
                local_d0 = extraout_r1;
              }
            }
            if (uVar18 == 0) {
              local_100 = (undefined4 *)
                          (**(code **)(*(int *)(param_1 + 4) + 0x20))
                                    (param_1,*(undefined4 *)(local_b8 + 0x48),0,iVar7,0);
            }
            else {
              iVar6 = (**(code **)(*(int *)(param_1 + 4) + 0x20))
                                (param_1,*(undefined4 *)(local_b8 + 0x48),(uVar18 - 1) * iVar6,
                                 iVar7 + iVar6,0);
              local_100 = (undefined4 *)(iVar6 + *(int *)(iVar27 + 0xc) * 4);
            }
            puVar21 = *(ushort **)(iVar27 + 0x50);
            uVar14 = (uint)*puVar21;
            pcVar22 = *(code **)(*(int *)(param_1 + 0x1d4) + local_c4 * 4 + 4);
            local_12c = *(int *)(param_2 + local_c4 * 4);
            if (local_d0 < 1) {
              uVar18 = *(uint *)(param_1 + 0x9c);
              iVar6 = *(int *)(param_1 + 0x24);
            }
            else {
              iVar6 = *(int *)(iVar5 + 0x70) + local_bc;
              iVar16 = (uint)puVar21[1] * 0x80;
              iVar12 = (uint)puVar21[1] << 8;
              iVar23 = (uint)puVar21[8] * 0x80;
              iVar10 = (uint)puVar21[8] << 8;
              iVar28 = (uint)puVar21[0x10] * 0x80;
              iVar19 = (uint)puVar21[0x10] << 8;
              iVar7 = (uint)puVar21[9] * 0x80;
              iVar25 = (uint)puVar21[9] << 8;
              iVar11 = (uint)puVar21[2] * 0x80;
              iVar31 = (uint)puVar21[2] << 8;
              local_104 = 0;
              while( true ) {
                psVar20 = (short *)*local_100;
                local_15c = psVar20;
                if (local_104 != 0 || uVar18 != 0) {
                  local_15c = (short *)local_100[-1];
                }
                if ((!bVar1) || (psVar26 = psVar20, local_d0 + -1 != local_104)) {
                  psVar26 = (short *)local_100[1];
                }
                local_13c = (int)*local_15c;
                local_14c = (int)*psVar20;
                local_140 = (int)*psVar26;
                iVar24 = 0;
                uVar15 = *(int *)(iVar27 + 0x1c) - 1;
                uVar17 = 0;
                local_138 = local_14c;
                local_134 = local_140;
                local_130 = local_13c;
                while( true ) {
                  iVar4 = local_13c;
                  iVar3 = local_140;
                  iVar2 = local_14c;
                  local_15c = local_15c + 0x40;
                  psVar26 = psVar26 + 0x40;
                  jcopy_block_row(psVar20,auStack_a8,1);
                  if (uVar17 < uVar15) {
                    local_13c = (int)*local_15c;
                    local_14c = (int)psVar20[0x40];
                    local_140 = (int)*psVar26;
                  }
                  uVar29 = *(uint *)(iVar6 + 4);
                  if ((uVar29 != 0) && (local_a6 == 0)) {
                    iVar8 = uVar14 * 0x24 * (local_138 - local_14c);
                    if (iVar8 < 0) {
                      iVar8 = __divsi3(iVar16 - iVar8,iVar12);
                      if ((0 < (int)uVar29) && (iVar30 = 1 << (uVar29 & 0xff), iVar30 <= iVar8)) {
                        iVar8 = iVar30 + -1;
                      }
                      iVar8 = -iVar8;
                    }
                    else {
                      iVar8 = __divsi3(iVar8 + iVar16,iVar12);
                      if ((0 < (int)uVar29) && (iVar30 = 1 << (uVar29 & 0xff), iVar30 <= iVar8)) {
                        iVar8 = iVar30 + -1;
                      }
                    }
                    local_a6 = (short)iVar8;
                  }
                  uVar29 = *(uint *)(iVar6 + 8);
                  if ((uVar29 != 0) && (local_98 == 0)) {
                    iVar8 = (iVar4 - iVar3) * uVar14 * 0x24;
                    if (iVar8 < 0) {
                      iVar8 = __divsi3(iVar23 - iVar8,iVar10);
                      if ((0 < (int)uVar29) && (iVar30 = 1 << (uVar29 & 0xff), iVar30 <= iVar8)) {
                        iVar8 = iVar30 + -1;
                      }
                      iVar8 = -iVar8;
                    }
                    else {
                      iVar8 = __divsi3(iVar8 + iVar23,iVar10);
                      if ((0 < (int)uVar29) && (iVar30 = 1 << (uVar29 & 0xff), iVar30 <= iVar8)) {
                        iVar8 = iVar30 + -1;
                      }
                    }
                    local_98 = (short)iVar8;
                  }
                  uVar29 = *(uint *)(iVar6 + 0xc);
                  if ((uVar29 != 0) && (local_88 == 0)) {
                    iVar8 = uVar14 * 9 * (iVar4 + iVar3 + iVar2 * -2);
                    if (iVar8 < 0) {
                      iVar8 = __divsi3(iVar28 - iVar8,iVar19);
                      if ((0 < (int)uVar29) && (iVar30 = 1 << (uVar29 & 0xff), iVar30 <= iVar8)) {
                        iVar8 = iVar30 + -1;
                      }
                      iVar8 = -iVar8;
                    }
                    else {
                      iVar8 = __divsi3(iVar8 + iVar28,iVar19);
                      if ((0 < (int)uVar29) && (iVar30 = 1 << (uVar29 & 0xff), iVar30 <= iVar8)) {
                        iVar8 = iVar30 + -1;
                      }
                    }
                    local_88 = (short)iVar8;
                  }
                  uVar29 = *(uint *)(iVar6 + 0x10);
                  if ((uVar29 != 0) && (local_96 == 0)) {
                    iVar8 = uVar14 * 5 * (((local_130 - local_134) + local_140) - local_13c);
                    if (iVar8 < 0) {
                      iVar8 = __divsi3(iVar7 - iVar8,iVar25);
                      if ((0 < (int)uVar29) && (iVar30 = 1 << (uVar29 & 0xff), iVar30 <= iVar8)) {
                        iVar8 = iVar30 + -1;
                      }
                      iVar8 = -iVar8;
                    }
                    else {
                      iVar8 = __divsi3(iVar8 + iVar7,iVar25);
                      if ((0 < (int)uVar29) && (iVar30 = 1 << (uVar29 & 0xff), iVar30 <= iVar8)) {
                        iVar8 = iVar30 + -1;
                      }
                    }
                    local_96 = (short)iVar8;
                  }
                  uVar29 = *(uint *)(iVar6 + 0x14);
                  if ((uVar29 != 0) && (local_a4 == 0)) {
                    iVar8 = (local_138 + iVar2 * -2 + local_14c) * uVar14 * 9;
                    if (iVar8 < 0) {
                      iVar8 = __divsi3(iVar11 - iVar8,iVar31);
                      if ((0 < (int)uVar29) && (iVar30 = 1 << (uVar29 & 0xff), iVar30 <= iVar8)) {
                        iVar8 = iVar30 + -1;
                      }
                      iVar8 = -iVar8;
                    }
                    else {
                      iVar8 = __divsi3(iVar8 + iVar11,iVar31);
                      if ((0 < (int)uVar29) && (iVar30 = 1 << (uVar29 & 0xff), iVar30 <= iVar8)) {
                        iVar8 = iVar30 + -1;
                      }
                    }
                    local_a4 = (short)iVar8;
                  }
                  uVar17 = uVar17 + 1;
                  (*pcVar22)(param_1,iVar27,auStack_a8,local_12c,iVar24);
                  if (uVar15 < uVar17) break;
                  iVar24 = iVar24 + *(int *)(iVar27 + 0x24);
                  local_130 = iVar4;
                  psVar20 = psVar20 + 0x40;
                  local_138 = iVar2;
                  local_134 = iVar3;
                }
                local_104 = local_104 + 1;
                if (local_104 == local_d0) break;
                local_12c = local_12c + *(int *)(iVar27 + 0x28) * 4;
                local_100 = local_100 + 1;
              }
              uVar18 = *(uint *)(param_1 + 0x9c);
              iVar6 = *(int *)(param_1 + 0x24);
            }
          }
          local_c4 = local_c4 + 1;
          local_b8 = local_b8 + 4;
          local_bc = local_bc + 0x18;
          if (iVar6 <= local_c4) break;
          iVar27 = iVar27 + 0x58;
        }
      }
      *(uint *)(param_1 + 0x9c) = uVar18 + 1;
      if (uVar18 + 1 < *(uint *)(param_1 + 0x148)) {
        uVar9 = 3;
      }
      else {
        uVar9 = 4;
      }
      return uVar9;
    }
    if ((*(undefined4 **)(param_1 + 0x1c8))[5] != 0) {
      uVar18 = *(uint *)(param_1 + 0x9c);
      goto LAB_00706b1a;
    }
    if (*(int *)(param_1 + 0x90) == *(int *)(param_1 + 0x98)) {
      uVar18 = *(uint *)(param_1 + 0x9c);
      uVar14 = uVar18;
      if (*(int *)(param_1 + 0x198) == 0) {
        uVar14 = uVar18 + 1;
      }
      if (uVar14 < *(uint *)(param_1 + 0x94)) goto LAB_00706b1a;
    }
    iVar6 = (*(code *)**(undefined4 **)(param_1 + 0x1c8))(param_1);
    if (iVar6 == 0) {
      return 0;
    }
  } while( true );
}

// ---- FUN_00706fd4  @ 0x706fd4
void FUN_00706fd4(int param_1)

{
  undefined4 uVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  int iVar7;
  int iVar8;
  
  iVar6 = *(int *)(param_1 + 0x1dc);
  uVar1 = (*(code *)**(undefined4 **)(param_1 + 4))(param_1,1,0x400);
  *(undefined4 *)(iVar6 + 8) = uVar1;
  uVar1 = (*(code *)**(undefined4 **)(param_1 + 4))(param_1,1,0x400);
  *(undefined4 *)(iVar6 + 0xc) = uVar1;
  uVar1 = (*(code *)**(undefined4 **)(param_1 + 4))(param_1,1,0x400);
  *(undefined4 *)(iVar6 + 0x10) = uVar1;
  iVar7 = 0x2c8d00;
  uVar1 = (*(code *)**(undefined4 **)(param_1 + 4))(param_1,1,0x400);
  iVar4 = -0xe25100;
  iVar5 = -0xb2f480;
  iVar3 = 0;
  *(undefined4 *)(iVar6 + 0x14) = uVar1;
  iVar2 = 0x5b6900;
  do {
    *(int *)(*(int *)(iVar6 + 8) + iVar3) = iVar5 >> 0x10;
    iVar8 = iVar4 >> 0x10;
    iVar5 = iVar5 + 0x166e9;
    iVar4 = iVar4 + 0x1c5a2;
    *(int *)(*(int *)(iVar6 + 0xc) + iVar3) = iVar8;
    *(int *)(*(int *)(iVar6 + 0x10) + iVar3) = iVar2;
    iVar2 = iVar2 + -0xb6d2;
    *(int *)(*(int *)(iVar6 + 0x14) + iVar3) = iVar7;
    iVar3 = iVar3 + 4;
    iVar7 = iVar7 + -0x581a;
  } while (iVar3 != 0x400);
  return;
}

// ---- FUN_00707544  @ 0x707544
void FUN_00707544(int param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4,
                 undefined4 param_5)

{
  jcopy_sample_rows(*param_2,param_3,param_4,0,param_5,*(undefined4 *)(param_1 + 0x70));
  return;
}

// ---- FUN_00707b40  @ 0x707b40
undefined4 FUN_00707b40(undefined4 *param_1,uint param_2,int param_3,int param_4)

{
  byte bVar1;
  byte *pbVar2;
  byte *pbVar3;
  uint uVar4;
  int iVar5;
  int *piVar6;
  
  piVar6 = (int *)param_1[4];
  pbVar2 = (byte *)*param_1;
  iVar5 = param_1[1];
  if (piVar6[0x6d] == 0) {
    for (; param_3 < 0x19; param_3 = param_3 + 8) {
      pbVar3 = pbVar2;
      if (iVar5 == 0) {
        iVar5 = (**(code **)(piVar6[6] + 0xc))(piVar6);
        if (iVar5 == 0) {
          return 0;
        }
        pbVar3 = *(byte **)piVar6[6];
        iVar5 = ((undefined4 *)piVar6[6])[1];
      }
      pbVar2 = pbVar3 + 1;
      bVar1 = *pbVar3;
      iVar5 = iVar5 + -1;
      pbVar3 = pbVar2;
      if (bVar1 == 0xff) {
        do {
          if (iVar5 == 0) {
            iVar5 = (**(code **)(piVar6[6] + 0xc))(piVar6);
            if (iVar5 == 0) {
              return 0;
            }
            pbVar3 = *(byte **)piVar6[6];
            iVar5 = ((undefined4 *)piVar6[6])[1];
          }
          pbVar2 = pbVar3 + 1;
          uVar4 = (uint)*pbVar3;
          iVar5 = iVar5 + -1;
          pbVar3 = pbVar2;
        } while (uVar4 == 0xff);
        if (uVar4 != 0) {
          piVar6[0x6d] = uVar4;
          goto LAB_00707ba0;
        }
      }
      param_2 = (uint)bVar1 | param_2 << 8;
    }
  }
  else {
LAB_00707ba0:
    if (param_3 < param_4) {
      if (*(int *)(piVar6[0x74] + 0x24) == 0) {
        *(undefined4 *)(*piVar6 + 0x14) = 0x78;
        (**(code **)(*piVar6 + 4))(piVar6,0xffffffff);
        *(undefined4 *)(piVar6[0x74] + 0x24) = 1;
      }
      param_2 = param_2 << (0x19U - param_3 & 0xff);
      param_3 = 0x19;
    }
  }
  *param_1 = pbVar2;
  param_1[1] = iVar5;
  param_1[2] = param_2;
  param_1[3] = param_3;
  return 1;
}

// ---- FUN_00707c0c  @ 0x707c0c
uint FUN_00707c0c(int param_1,int param_2,int param_3,int param_4,int param_5)

{
  int iVar1;
  uint uVar2;
  uint uVar3;
  int *piVar4;
  
  if (param_3 < param_5) {
    iVar1 = FUN_00707b40();
    if (iVar1 == 0) {
      return 0xffffffff;
    }
    param_2 = *(int *)(param_1 + 8);
    param_3 = *(int *)(param_1 + 0xc);
  }
  uVar2 = param_3 - param_5;
  uVar3 = param_2 >> (uVar2 & 0xff) & *(uint *)(&DAT_00854d98 + param_5 * 4);
  if (*(int *)(param_4 + param_5 * 4) < (int)uVar3) {
    piVar4 = (int *)(param_4 + param_5 * 4);
    do {
      if ((int)uVar2 < 1) {
        iVar1 = FUN_00707b40(param_1,param_2,uVar2,1);
        if (iVar1 == 0) {
          return 0xffffffff;
        }
        param_2 = *(int *)(param_1 + 8);
        uVar2 = *(uint *)(param_1 + 0xc);
      }
      uVar2 = uVar2 - 1;
      param_5 = param_5 + 1;
      uVar3 = param_2 >> (uVar2 & 0xff) & 1U | uVar3 << 1;
      piVar4 = piVar4 + 1;
    } while (*piVar4 < (int)uVar3);
  }
  *(int *)(param_1 + 8) = param_2;
  *(uint *)(param_1 + 0xc) = uVar2;
  if (param_5 < 0x11) {
    uVar2 = (uint)*(byte *)(*(int *)(param_4 + 0x8c) + uVar3 +
                            *(int *)(param_4 + (param_5 + 0x12) * 4) + 0x11);
  }
  else {
    *(undefined4 *)(**(int **)(param_1 + 0x10) + 0x14) = 0x79;
    (**(code **)(**(int **)(param_1 + 0x10) + 4))(*(int **)(param_1 + 0x10),0xffffffff);
    uVar2 = 0;
  }
  return uVar2;
}

// ---- FUN_00707cc0  @ 0x707cc0
undefined4 FUN_00707cc0(int param_1)

{
  int iVar1;
  undefined4 uVar2;
  uint uVar3;
  uint uVar4;
  undefined4 *puVar5;
  int iVar6;
  int iVar7;
  
  iVar6 = *(int *)(param_1 + 0x1d0);
  iVar7 = 0;
  uVar3 = *(uint *)(iVar6 + 0xc);
  uVar4 = uVar3 & ~((int)uVar3 >> 0x20);
  if ((int)uVar3 < 0) {
    uVar4 = uVar3 + 7;
  }
  *(int *)(*(int *)(param_1 + 0x1cc) + 0x18) =
       *(int *)(*(int *)(param_1 + 0x1cc) + 0x18) + ((int)uVar4 >> 3);
  *(undefined4 *)(iVar6 + 0xc) = 0;
  iVar1 = (**(code **)(*(int *)(param_1 + 0x1cc) + 8))();
  uVar2 = 0;
  if (iVar1 != 0) {
    if (0 < *(int *)(param_1 + 0x150)) {
      puVar5 = (undefined4 *)(iVar6 + 0x10);
      do {
        puVar5 = puVar5 + 1;
        *puVar5 = 0;
        iVar7 = iVar7 + 1;
      } while (iVar7 < *(int *)(param_1 + 0x150));
    }
    *(undefined4 *)(iVar6 + 0x10) = 0;
    *(undefined4 *)(iVar6 + 0x28) = *(undefined4 *)(param_1 + 0x118);
    if (*(int *)(param_1 + 0x1b4) == 0) {
      *(undefined4 *)(iVar6 + 0x24) = 0;
    }
    uVar2 = 1;
  }
  return uVar2;
}

// ---- FUN_00707d20  @ 0x707d20
undefined4 FUN_00707d20(int param_1,undefined4 *param_2)

{
  int iVar1;
  undefined4 uVar2;
  int iVar3;
  uint uVar4;
  uint uVar5;
  uint uVar6;
  int iVar7;
  undefined4 *puVar8;
  int iVar9;
  int iVar10;
  undefined2 *puVar11;
  int iVar12;
  int *piVar13;
  uint local_6c;
  int aiStack_4c [4];
  undefined4 local_3c;
  undefined4 local_38;
  int local_34;
  uint local_30;
  int local_2c;
  
  iVar1 = *(int *)(param_1 + 0x1d0);
  uVar4 = *(uint *)(param_1 + 0x1a4);
  if (((*(int *)(param_1 + 0x118) == 0) || (*(int *)(iVar1 + 0x28) != 0)) ||
     (iVar10 = FUN_00707cc0(param_1), iVar10 != 0)) {
    if (*(int *)(iVar1 + 0x24) == 0) {
      local_2c = param_1;
      puVar8 = *(undefined4 **)(param_1 + 0x18);
      local_3c = *puVar8;
      local_38 = puVar8[1];
      local_6c = *(uint *)(iVar1 + 0xc);
      iVar10 = *(int *)(iVar1 + 8);
      uVar2 = *(undefined4 *)(iVar1 + 0x10);
      aiStack_4c[0] = *(int *)(iVar1 + 0x14);
      aiStack_4c[1] = *(undefined4 *)(iVar1 + 0x18);
      aiStack_4c[2] = *(undefined4 *)(iVar1 + 0x1c);
      aiStack_4c[3] = *(undefined4 *)(iVar1 + 0x20);
      if (0 < *(int *)(param_1 + 0x16c)) {
        piVar13 = (int *)(param_1 + 0x16c);
        iVar12 = 0;
        do {
          piVar13 = piVar13 + 1;
          iVar7 = *piVar13;
          puVar11 = (undefined2 *)*param_2;
          iVar9 = *(int *)(iVar1 + *(int *)(*(int *)(param_1 + iVar7 * 4 + 0x154) + 0x14) * 4 + 0x2c
                          );
          if ((int)local_6c < 8) {
            iVar10 = FUN_00707b40(&local_3c,iVar10,local_6c,0);
            if (iVar10 == 0) goto LAB_00707e9e;
            iVar10 = local_34;
            local_6c = local_30;
            if (7 < (int)local_30) goto LAB_00707dbc;
            uVar5 = FUN_00707c0c(&local_3c,local_34,local_30,iVar9,1);
            iVar10 = local_34;
            local_6c = local_30;
joined_r0x00707e9c:
            local_34 = iVar10;
            local_30 = local_6c;
            if ((int)uVar5 < 0) goto LAB_00707e9e;
          }
          else {
LAB_00707dbc:
            uVar5 = iVar10 >> (local_6c - 8 & 0xff) & 0xff;
            iVar3 = *(int *)(iVar9 + (uVar5 + 0x24) * 4);
            if (iVar3 == 0) {
              uVar5 = FUN_00707c0c(&local_3c,iVar10,local_6c,iVar9,9);
              iVar10 = local_34;
              local_6c = local_30;
              goto joined_r0x00707e9c;
            }
            local_6c = local_6c - iVar3;
            uVar5 = (uint)*(byte *)(iVar9 + uVar5 + 0x490);
          }
          uVar6 = 0;
          if (uVar5 != 0) {
            if (((int)local_6c < (int)uVar5) &&
               (iVar9 = FUN_00707b40(&local_3c,iVar10,local_6c,uVar5), iVar10 = local_34,
               local_6c = local_30, iVar9 == 0)) goto LAB_00707e9e;
            local_6c = local_6c - uVar5;
            uVar6 = iVar10 >> (local_6c & 0xff) & *(uint *)(&DAT_00854d98 + uVar5 * 4);
            if ((int)uVar6 <= *(int *)(&DAT_00854d98 + (uVar5 - 1) * 4)) {
              uVar6 = uVar6 - *(uint *)(&DAT_00854d98 + uVar5 * 4);
            }
          }
          iVar12 = iVar12 + 1;
          iVar9 = aiStack_4c[iVar7];
          aiStack_4c[iVar7] = uVar6 + iVar9;
          *puVar11 = (short)(uVar6 + iVar9 << (uVar4 & 0xff));
          param_2 = param_2 + 1;
        } while (iVar12 < *(int *)(param_1 + 0x16c));
        puVar8 = *(undefined4 **)(param_1 + 0x18);
      }
      *puVar8 = local_3c;
      *(undefined4 *)(*(int *)(param_1 + 0x18) + 4) = local_38;
      *(int *)(iVar1 + 8) = iVar10;
      *(uint *)(iVar1 + 0xc) = local_6c;
      *(undefined4 *)(iVar1 + 0x10) = uVar2;
      *(int *)(iVar1 + 0x14) = aiStack_4c[0];
      *(int *)(iVar1 + 0x18) = aiStack_4c[1];
      *(int *)(iVar1 + 0x1c) = aiStack_4c[2];
      *(int *)(iVar1 + 0x20) = aiStack_4c[3];
    }
    uVar2 = 1;
    *(int *)(iVar1 + 0x28) = *(int *)(iVar1 + 0x28) + -1;
  }
  else {
LAB_00707e9e:
    uVar2 = 0;
  }
  return uVar2;
}

// ---- FUN_00707ec8  @ 0x707ec8
undefined4 FUN_00707ec8(int param_1,int *param_2)

{
  uint uVar1;
  undefined4 uVar2;
  int iVar3;
  int iVar4;
  uint uVar5;
  undefined4 *puVar6;
  uint uVar7;
  uint uVar8;
  int iVar9;
  int iVar10;
  int iVar11;
  uint uVar12;
  int iVar13;
  int iVar14;
  int iVar15;
  int local_4c;
  undefined4 local_3c;
  undefined4 local_38;
  int local_34;
  uint local_30;
  int local_2c;
  
  iVar14 = *(int *)(param_1 + 0x1d0);
  if (((*(int *)(param_1 + 0x118) == 0) || (*(int *)(iVar14 + 0x28) != 0)) ||
     (iVar11 = FUN_00707cc0(), iVar11 != 0)) {
    if (*(int *)(iVar14 + 0x24) == 0) {
      uVar1 = *(uint *)(param_1 + 0x1a4);
      iVar15 = *(int *)(param_1 + 0x19c);
      iVar11 = *(int *)(param_1 + 0x1ac);
      if (*(int *)(iVar14 + 0x10) == 0) {
        puVar6 = *(undefined4 **)(param_1 + 0x18);
        local_3c = *puVar6;
        local_38 = puVar6[1];
        iVar9 = *param_2;
        iVar4 = *(int *)(iVar14 + 8);
        uVar5 = *(uint *)(iVar14 + 0xc);
        iVar10 = *(int *)(param_1 + 0x198);
        iVar13 = *(int *)(iVar14 + 0x3c);
        local_4c = 0;
        if (iVar10 <= iVar15) {
          local_2c = param_1;
          do {
            if ((int)uVar5 < 8) {
              iVar4 = FUN_00707b40(&local_3c,iVar4,uVar5,0);
              if (iVar4 == 0) goto LAB_00708006;
              iVar4 = local_34;
              uVar5 = local_30;
              if (7 < (int)local_30) goto LAB_00707f94;
              uVar2 = 1;
LAB_00707faa:
              uVar8 = FUN_00707c0c(&local_3c,iVar4,uVar5,iVar13,uVar2);
              iVar4 = local_34;
              uVar5 = local_30;
              if ((int)uVar8 < 0) goto LAB_00708006;
            }
            else {
LAB_00707f94:
              uVar8 = iVar4 >> (uVar5 - 8 & 0xff) & 0xff;
              iVar3 = *(int *)(iVar13 + (uVar8 + 0x24) * 4);
              if (iVar3 == 0) {
                uVar2 = 9;
                goto LAB_00707faa;
              }
              uVar8 = (uint)*(byte *)(iVar13 + uVar8 + 0x490);
              uVar5 = uVar5 - iVar3;
            }
            uVar12 = (int)uVar8 >> 4;
            uVar8 = uVar8 & 0xf;
            if (uVar8 == 0) {
              if (uVar12 != 0xf) {
                local_4c = 1 << (uVar12 & 0xff);
                if (uVar12 != 0) {
                  if (((int)uVar5 < (int)uVar12) &&
                     (iVar11 = FUN_00707b40(&local_3c,iVar4,uVar5,uVar12), iVar4 = local_34,
                     uVar5 = local_30, iVar11 == 0)) goto LAB_00708006;
                  uVar5 = uVar5 - uVar12;
                  local_4c = local_4c +
                             (*(uint *)(&DAT_00854d98 + uVar12 * 4) & iVar4 >> (uVar5 & 0xff));
                }
                local_4c = local_4c + -1;
                puVar6 = *(undefined4 **)(param_1 + 0x18);
                goto LAB_00708038;
              }
              iVar10 = iVar10 + 0xf;
            }
            else {
              if (((int)uVar5 < (int)uVar8) &&
                 (iVar3 = FUN_00707b40(&local_3c,iVar4,uVar5,uVar8), iVar4 = local_34,
                 uVar5 = local_30, iVar3 == 0)) goto LAB_00708006;
              uVar5 = uVar5 - uVar8;
              uVar7 = iVar4 >> (uVar5 & 0xff) & *(uint *)(&DAT_00854d98 + uVar8 * 4);
              iVar10 = uVar12 + iVar10;
              if ((int)uVar7 <= *(int *)(&DAT_00854d98 + (uVar8 - 1) * 4)) {
                uVar7 = uVar7 - *(uint *)(&DAT_00854d98 + uVar8 * 4);
              }
              *(short *)(iVar9 + *(int *)(iVar11 + iVar10 * 4) * 2) =
                   (short)(uVar7 << (uVar1 & 0xff));
            }
            iVar10 = iVar10 + 1;
          } while (iVar10 <= iVar15);
          puVar6 = *(undefined4 **)(param_1 + 0x18);
        }
LAB_00708038:
        *puVar6 = local_3c;
        *(undefined4 *)(*(int *)(param_1 + 0x18) + 4) = local_38;
        *(int *)(iVar14 + 8) = iVar4;
        *(uint *)(iVar14 + 0xc) = uVar5;
      }
      else {
        local_4c = *(int *)(iVar14 + 0x10) + -1;
      }
      *(int *)(iVar14 + 0x10) = local_4c;
    }
    uVar2 = 1;
    *(int *)(iVar14 + 0x28) = *(int *)(iVar14 + 0x28) + -1;
  }
  else {
LAB_00708006:
    uVar2 = 0;
  }
  return uVar2;
}

// ---- FUN_00708078  @ 0x708078
undefined4 FUN_00708078(int param_1,undefined4 *param_2)

{
  int iVar1;
  undefined4 uVar2;
  int iVar3;
  uint uVar4;
  uint uVar5;
  undefined4 *puVar6;
  int iVar7;
  ushort *puVar8;
  int iVar9;
  undefined4 local_34;
  undefined4 local_30;
  int local_2c;
  uint local_28;
  int local_24;
  
  uVar5 = *(uint *)(param_1 + 0x1a4);
  iVar9 = *(int *)(param_1 + 0x1d0);
  if (((*(int *)(param_1 + 0x118) == 0) || (*(int *)(iVar9 + 0x28) != 0)) ||
     (iVar3 = FUN_00707cc0(), iVar3 != 0)) {
    puVar6 = *(undefined4 **)(param_1 + 0x18);
    local_34 = *puVar6;
    local_30 = puVar6[1];
    iVar3 = *(int *)(iVar9 + 8);
    uVar4 = *(uint *)(iVar9 + 0xc);
    if (0 < *(int *)(param_1 + 0x16c)) {
      iVar7 = 0;
      local_24 = param_1;
      do {
        puVar8 = (ushort *)*param_2;
        if (((int)uVar4 < 1) &&
           (iVar1 = FUN_00707b40(&local_34,iVar3,uVar4,1), iVar3 = local_2c, uVar4 = local_28,
           iVar1 == 0)) goto LAB_00708126;
        uVar4 = uVar4 - 1;
        if ((iVar3 >> (uVar4 & 0xff)) << 0x1f < 0) {
          *puVar8 = (ushort)(1 << (uVar5 & 0xff)) | *puVar8;
        }
        iVar7 = iVar7 + 1;
        param_2 = param_2 + 1;
      } while (iVar7 < *(int *)(param_1 + 0x16c));
      puVar6 = *(undefined4 **)(param_1 + 0x18);
    }
    *puVar6 = local_34;
    *(undefined4 *)(*(int *)(param_1 + 0x18) + 4) = local_30;
    uVar2 = 1;
    *(int *)(iVar9 + 8) = iVar3;
    *(uint *)(iVar9 + 0xc) = uVar4;
    *(int *)(iVar9 + 0x28) = *(int *)(iVar9 + 0x28) + -1;
  }
  else {
LAB_00708126:
    uVar2 = 0;
  }
  return uVar2;
}

// ---- FUN_0070812c  @ 0x70812c
undefined4 FUN_0070812c(int *param_1,int *param_2)

{
  short sVar1;
  short sVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  uint uVar7;
  uint uVar8;
  int iVar9;
  uint uVar10;
  short sVar11;
  undefined4 *puVar12;
  uint uVar13;
  undefined4 uVar14;
  int *piVar15;
  int iVar16;
  int iVar17;
  uint uVar18;
  int iVar19;
  int iVar20;
  bool bVar21;
  int local_15c;
  int local_144;
  int aiStack_13c [64];
  undefined4 local_3c;
  undefined4 local_38;
  int local_34;
  uint local_30;
  int *local_2c;
  
  iVar3 = param_1[0x74];
  if (((param_1[0x46] != 0) && (*(int *)(iVar3 + 0x28) == 0)) &&
     (iVar20 = FUN_00707cc0(param_1), iVar20 == 0)) {
    return 0;
  }
  if (*(int *)(iVar3 + 0x24) == 0) {
    iVar19 = param_1[0x67];
    uVar7 = 1 << (param_1[0x69] & 0xffU);
    uVar8 = -1 << (param_1[0x69] & 0xffU);
    iVar9 = param_1[0x6b];
    puVar12 = (undefined4 *)param_1[6];
    local_3c = *puVar12;
    local_38 = puVar12[1];
    iVar20 = *(int *)(iVar3 + 8);
    uVar10 = *(uint *)(iVar3 + 0xc);
    local_144 = *(int *)(iVar3 + 0x10);
    iVar17 = *param_2;
    iVar5 = *(int *)(iVar3 + 0x3c);
    iVar16 = param_1[0x66];
    sVar11 = (short)uVar8;
    local_2c = param_1;
    if (local_144 == 0) {
      local_144 = 0;
      if (iVar16 <= iVar19) {
        local_15c = 0;
        do {
          if ((int)uVar10 < 8) {
            iVar20 = FUN_00707b40(&local_3c,iVar20,uVar10,0);
            if (iVar20 == 0) goto LAB_007083da;
            uVar10 = local_30;
            iVar20 = local_34;
            if (7 < (int)local_30) goto LAB_007081b6;
            uVar14 = 1;
LAB_007081d2:
            uVar13 = FUN_00707c0c(&local_3c,iVar20,uVar10,iVar5,uVar14);
            uVar10 = local_30;
            iVar20 = local_34;
            if ((int)uVar13 < 0) goto LAB_007083da;
          }
          else {
LAB_007081b6:
            uVar13 = iVar20 >> (uVar10 - 8 & 0xff) & 0xff;
            iVar6 = *(int *)(iVar5 + (uVar13 + 0x24) * 4);
            if (iVar6 == 0) {
              uVar14 = 9;
              goto LAB_007081d2;
            }
            uVar13 = (uint)*(byte *)(iVar5 + uVar13 + 0x490);
            uVar10 = uVar10 - iVar6;
          }
          uVar18 = (int)uVar13 >> 4;
          if ((uVar13 & 0xf) == 0) {
            uVar13 = 0;
            if (uVar18 != 0xf) {
              local_144 = 1 << (uVar18 & 0xff);
              if (uVar18 != 0) {
                if (((int)uVar10 < (int)uVar18) &&
                   (iVar5 = FUN_00707b40(&local_3c,iVar20,uVar10,uVar18), uVar10 = local_30,
                   iVar20 = local_34, iVar5 == 0)) goto LAB_007083da;
                uVar10 = uVar10 - uVar18;
                local_144 = local_144 +
                            (iVar20 >> (uVar10 & 0xff) & *(uint *)(&DAT_00854d98 + uVar18 * 4));
              }
              if (local_144 != 0) goto LAB_007082c8;
              goto LAB_007083c0;
            }
          }
          else {
            if ((uVar13 & 0xf) != 1) {
              *(undefined4 *)(*param_1 + 0x14) = 0x79;
              (**(code **)(*param_1 + 4))(param_1,0xffffffff);
            }
            if (((int)uVar10 < 1) &&
               (iVar6 = FUN_00707b40(&local_3c,iVar20,uVar10,1), uVar10 = local_30,
               iVar20 = local_34, iVar6 == 0)) goto LAB_007083da;
            uVar10 = uVar10 - 1;
            uVar13 = uVar7;
            if ((iVar20 >> (uVar10 & 0xff) & 1U) == 0) {
              uVar13 = uVar8;
            }
          }
          piVar15 = (int *)(iVar9 + iVar16 * 4);
          do {
            iVar6 = *piVar15;
            if (*(short *)(iVar17 + iVar6 * 2) == 0) {
              bVar21 = uVar18 == 0;
              uVar18 = uVar18 - 1;
              if (bVar21) break;
            }
            else {
              if (((int)uVar10 < 1) &&
                 (iVar4 = FUN_00707b40(&local_3c,iVar20,uVar10,1), uVar10 = local_30,
                 iVar20 = local_34, iVar4 == 0)) goto LAB_007083da;
              uVar10 = uVar10 - 1;
              if ((iVar20 >> (uVar10 & 0xff)) << 0x1f < 0) {
                sVar1 = *(short *)(iVar17 + iVar6 * 2);
                if (((int)sVar1 & uVar7) == 0) {
                  sVar2 = (short)uVar7;
                  if (sVar1 < 0) {
                    sVar2 = sVar11;
                  }
                  *(short *)(iVar17 + iVar6 * 2) = sVar1 + sVar2;
                }
              }
            }
            iVar16 = iVar16 + 1;
            piVar15 = piVar15 + 1;
          } while (iVar16 <= iVar19);
          if (uVar13 != 0) {
            iVar6 = *(int *)(iVar9 + iVar16 * 4);
            *(short *)(iVar17 + iVar6 * 2) = (short)uVar13;
            aiStack_13c[local_15c] = iVar6;
            local_15c = local_15c + 1;
          }
          iVar16 = iVar16 + 1;
        } while (iVar16 <= iVar19);
        puVar12 = (undefined4 *)param_1[6];
      }
    }
    else {
      local_15c = 0;
LAB_007082c8:
      if (iVar16 <= iVar19) {
        piVar15 = (int *)(iVar9 + iVar16 * 4);
        do {
          iVar5 = *piVar15;
          if (*(short *)(iVar17 + iVar5 * 2) != 0) {
            if (((int)uVar10 < 1) &&
               (iVar9 = FUN_00707b40(&local_3c,iVar20,uVar10,1), iVar20 = local_34,
               uVar10 = local_30, iVar9 == 0)) {
LAB_007083da:
              if (local_15c == 0) {
                return 0;
              }
              piVar15 = aiStack_13c + local_15c;
              do {
                piVar15 = piVar15 + -1;
                *(undefined2 *)(iVar17 + *piVar15 * 2) = 0;
              } while (piVar15 != aiStack_13c);
              return 0;
            }
            uVar10 = uVar10 - 1;
            if ((iVar20 >> (uVar10 & 0xff)) << 0x1f < 0) {
              sVar1 = *(short *)(iVar17 + iVar5 * 2);
              if (((int)sVar1 & uVar7) == 0) {
                sVar2 = (short)uVar7;
                if (sVar1 < 0) {
                  sVar2 = sVar11;
                }
                *(short *)(iVar17 + iVar5 * 2) = sVar1 + sVar2;
              }
            }
          }
          iVar16 = iVar16 + 1;
          piVar15 = piVar15 + 1;
        } while (iVar16 <= iVar19);
      }
      local_144 = local_144 + -1;
LAB_007083c0:
      puVar12 = (undefined4 *)param_1[6];
    }
    *puVar12 = local_3c;
    *(undefined4 *)(param_1[6] + 4) = local_38;
    *(int *)(iVar3 + 8) = iVar20;
    *(uint *)(iVar3 + 0xc) = uVar10;
    *(int *)(iVar3 + 0x10) = local_144;
  }
  *(int *)(iVar3 + 0x28) = *(int *)(iVar3 + 0x28) + -1;
  return 1;
}

// ---- FUN_00708418  @ 0x708418
undefined4 FUN_00708418(int param_1,undefined4 *param_2)

{
  int iVar1;
  undefined4 uVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  uint uVar6;
  undefined4 uVar7;
  uint uVar8;
  uint uVar9;
  int iVar10;
  int iVar11;
  int iVar12;
  undefined4 *puVar13;
  uint uVar14;
  undefined2 *puVar15;
  int iVar16;
  int local_78;
  undefined4 *local_6c;
  int local_68;
  int local_64;
  int aiStack_4c [4];
  undefined4 local_3c;
  undefined4 local_38;
  int local_34;
  uint local_30;
  int local_2c;
  
  iVar1 = *(int *)(param_1 + 0x1d0);
  if (((*(int *)(param_1 + 0x118) == 0) || (*(int *)(iVar1 + 0x28) != 0)) ||
     (iVar12 = FUN_00707cc0(param_1), iVar12 != 0)) {
    if (*(int *)(iVar1 + 0x24) == 0) {
      iVar10 = *(int *)(param_1 + 0x1ac);
      iVar16 = *(int *)(param_1 + 0x1b0);
      local_2c = param_1;
      puVar13 = *(undefined4 **)(param_1 + 0x18);
      local_3c = *puVar13;
      local_38 = puVar13[1];
      iVar12 = *(int *)(iVar1 + 8);
      uVar14 = *(uint *)(iVar1 + 0xc);
      uVar2 = *(undefined4 *)(iVar1 + 0x10);
      aiStack_4c[0] = *(int *)(iVar1 + 0x14);
      aiStack_4c[1] = *(undefined4 *)(iVar1 + 0x18);
      aiStack_4c[2] = *(undefined4 *)(iVar1 + 0x1c);
      aiStack_4c[3] = *(undefined4 *)(iVar1 + 0x20);
      if (0 < *(int *)(param_1 + 0x16c)) {
        local_68 = 0;
        local_78 = iVar1;
        local_6c = param_2;
        local_64 = param_1;
        do {
          puVar15 = (undefined2 *)*local_6c;
          iVar11 = *(int *)(local_78 + 0x60);
          if ((int)uVar14 < 8) {
            iVar12 = FUN_00707b40(&local_3c,iVar12,uVar14,0);
            if (iVar12 == 0) goto LAB_00708658;
            iVar12 = local_34;
            uVar14 = local_30;
            if (7 < (int)local_30) goto LAB_007084b8;
            uVar7 = 1;
LAB_007084d4:
            uVar6 = FUN_00707c0c(&local_3c,iVar12,uVar14,iVar11,uVar7);
            iVar12 = local_34;
            uVar14 = local_30;
            if ((int)uVar6 < 0) goto LAB_00708658;
          }
          else {
LAB_007084b8:
            uVar6 = iVar12 >> (uVar14 - 8 & 0xff) & 0xff;
            iVar3 = *(int *)(iVar11 + (uVar6 + 0x24) * 4);
            if (iVar3 == 0) {
              uVar7 = 9;
              goto LAB_007084d4;
            }
            uVar6 = (uint)*(byte *)(iVar11 + uVar6 + 0x490);
            uVar14 = uVar14 - iVar3;
          }
          iVar11 = *(int *)(local_78 + 0xb0);
          iVar3 = *(int *)(local_78 + 0x88);
          if (iVar11 == 0) {
            if (uVar6 == 0) goto LAB_00708728;
            if (((int)uVar14 < (int)uVar6) &&
               (iVar11 = FUN_00707b40(&local_3c,iVar12,uVar14,uVar6), iVar12 = local_34,
               uVar14 = local_30, iVar11 == 0)) goto LAB_00708658;
            uVar14 = uVar14 - uVar6;
            iVar4 = 1;
          }
          else {
            uVar8 = 0;
            if (uVar6 != 0) {
              if (((int)uVar14 < (int)uVar6) &&
                 (iVar4 = FUN_00707b40(&local_3c,iVar12,uVar14,uVar6), iVar12 = local_34,
                 uVar14 = local_30, iVar4 == 0)) goto LAB_00708658;
              uVar14 = uVar14 - uVar6;
              uVar8 = iVar12 >> (uVar14 & 0xff) & *(uint *)(&DAT_00854d98 + uVar6 * 4);
              if ((int)uVar8 <= *(int *)(&DAT_00854d98 + (uVar6 - 1) * 4)) {
                uVar8 = uVar8 - *(uint *)(&DAT_00854d98 + uVar6 * 4);
              }
            }
            iVar4 = aiStack_4c[*(int *)(local_64 + 0x170)];
            aiStack_4c[*(int *)(local_64 + 0x170)] = iVar4 + uVar8;
            *puVar15 = (short)(iVar4 + uVar8);
            if (iVar11 < 2) {
LAB_00708728:
              iVar4 = 1;
            }
            else {
              iVar4 = 1;
LAB_0070858c:
              do {
                if ((int)uVar14 < 8) {
                  iVar12 = FUN_00707b40(&local_3c,iVar12,uVar14,0);
                  if (iVar12 == 0) goto LAB_00708658;
                  iVar12 = local_34;
                  uVar14 = local_30;
                  if (7 < (int)local_30) goto LAB_00708590;
                  uVar6 = FUN_00707c0c(&local_3c,local_34,local_30,iVar3,1);
                  iVar12 = local_34;
                  uVar14 = local_30;
joined_r0x00708656:
                  local_34 = iVar12;
                  local_30 = uVar14;
                  if ((int)uVar6 < 0) goto LAB_00708658;
                }
                else {
LAB_00708590:
                  uVar6 = iVar12 >> (uVar14 - 8 & 0xff) & 0xff;
                  iVar5 = *(int *)(iVar3 + (uVar6 + 0x24) * 4);
                  if (iVar5 == 0) {
                    uVar6 = FUN_00707c0c(&local_3c,iVar12,uVar14,iVar3,9);
                    iVar12 = local_34;
                    uVar14 = local_30;
                    goto joined_r0x00708656;
                  }
                  uVar14 = uVar14 - iVar5;
                  uVar6 = (uint)*(byte *)(iVar3 + uVar6 + 0x490);
                }
                uVar8 = uVar6 & 0xf;
                if (uVar8 != 0) {
                  if (((int)uVar14 < (int)uVar8) &&
                     (iVar5 = FUN_00707b40(&local_3c,iVar12,uVar14,uVar8), iVar12 = local_34,
                     uVar14 = local_30, iVar5 == 0)) goto LAB_00708658;
                  uVar14 = uVar14 - uVar8;
                  uVar9 = iVar12 >> (uVar14 & 0xff) & *(uint *)(&DAT_00854d98 + uVar8 * 4);
                  iVar5 = ((int)uVar6 >> 4) + iVar4;
                  if ((int)uVar9 <= *(int *)(&DAT_00854d98 + (uVar8 - 1) * 4)) {
                    uVar9 = uVar9 - *(uint *)(&DAT_00854d98 + uVar8 * 4);
                  }
                  iVar4 = iVar5 + 1;
                  puVar15[*(int *)(iVar10 + iVar5 * 4)] = (short)uVar9;
                  if (iVar11 <= iVar4) break;
                  goto LAB_0070858c;
                }
                if ((int)uVar6 >> 4 != 0xf) goto LAB_007085d8;
                iVar4 = iVar4 + 0x10;
              } while (iVar4 < iVar11);
            }
          }
          if (iVar4 <= iVar16) {
            do {
              if ((int)uVar14 < 8) {
                iVar12 = FUN_00707b40(&local_3c,iVar12,uVar14,0);
                if (iVar12 == 0) goto LAB_00708658;
                iVar12 = local_34;
                uVar14 = local_30;
                if (7 < (int)local_30) goto LAB_00708696;
                uVar7 = 1;
LAB_007086ac:
                uVar6 = FUN_00707c0c(&local_3c,iVar12,uVar14,iVar3,uVar7);
                iVar12 = local_34;
                uVar14 = local_30;
                if ((int)uVar6 < 0) goto LAB_00708658;
              }
              else {
LAB_00708696:
                uVar6 = iVar12 >> (uVar14 - 8 & 0xff) & 0xff;
                iVar11 = *(int *)(iVar3 + (uVar6 + 0x24) * 4);
                if (iVar11 == 0) {
                  uVar7 = 9;
                  goto LAB_007086ac;
                }
                uVar6 = (uint)*(byte *)(iVar3 + uVar6 + 0x490);
                uVar14 = uVar14 - iVar11;
              }
              uVar8 = uVar6 & 0xf;
              if (uVar8 == 0) {
                if ((int)uVar6 >> 4 != 0xf) break;
                iVar4 = iVar4 + 0xf;
              }
              else {
                if (((int)uVar14 < (int)uVar8) &&
                   (iVar11 = FUN_00707b40(&local_3c,iVar12,uVar14,uVar8), iVar12 = local_34,
                   uVar14 = local_30, iVar11 == 0)) goto LAB_00708658;
                iVar4 = ((int)uVar6 >> 4) + iVar4;
                uVar14 = uVar14 - uVar8;
              }
              iVar4 = iVar4 + 1;
            } while (iVar4 <= iVar16);
          }
LAB_007085d8:
          local_68 = local_68 + 1;
          local_78 = local_78 + 4;
          local_64 = local_64 + 4;
          local_6c = local_6c + 1;
        } while (local_68 < *(int *)(param_1 + 0x16c));
        puVar13 = *(undefined4 **)(param_1 + 0x18);
      }
      *puVar13 = local_3c;
      *(undefined4 *)(*(int *)(param_1 + 0x18) + 4) = local_38;
      *(int *)(iVar1 + 8) = iVar12;
      *(uint *)(iVar1 + 0xc) = uVar14;
      *(undefined4 *)(iVar1 + 0x10) = uVar2;
      *(int *)(iVar1 + 0x14) = aiStack_4c[0];
      *(int *)(iVar1 + 0x18) = aiStack_4c[1];
      *(int *)(iVar1 + 0x1c) = aiStack_4c[2];
      *(int *)(iVar1 + 0x20) = aiStack_4c[3];
    }
    uVar2 = 1;
    *(int *)(iVar1 + 0x28) = *(int *)(iVar1 + 0x28) + -1;
  }
  else {
LAB_00708658:
    uVar2 = 0;
  }
  return uVar2;
}

// ---- FUN_0070876c  @ 0x70876c
undefined4 FUN_0070876c(int param_1,undefined4 *param_2)

{
  undefined4 uVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  uint uVar6;
  undefined4 uVar7;
  uint uVar8;
  uint uVar9;
  int iVar10;
  int iVar11;
  undefined4 *puVar12;
  uint uVar13;
  undefined2 *puVar14;
  int local_6c;
  undefined4 *local_60;
  int local_5c;
  int local_58;
  int aiStack_4c [4];
  undefined4 local_3c;
  undefined4 local_38;
  int local_34;
  uint local_30;
  int local_2c;
  
  iVar5 = *(int *)(param_1 + 0x1d0);
  if (((*(int *)(param_1 + 0x118) == 0) || (*(int *)(iVar5 + 0x28) != 0)) ||
     (iVar11 = FUN_00707cc0(), iVar11 != 0)) {
    if (*(int *)(iVar5 + 0x24) == 0) {
      local_2c = param_1;
      puVar12 = *(undefined4 **)(param_1 + 0x18);
      local_3c = *puVar12;
      local_38 = puVar12[1];
      uVar13 = *(uint *)(iVar5 + 0xc);
      iVar11 = *(int *)(iVar5 + 8);
      uVar1 = *(undefined4 *)(iVar5 + 0x10);
      aiStack_4c[0] = *(int *)(iVar5 + 0x14);
      aiStack_4c[1] = *(undefined4 *)(iVar5 + 0x18);
      aiStack_4c[2] = *(undefined4 *)(iVar5 + 0x1c);
      aiStack_4c[3] = *(undefined4 *)(iVar5 + 0x20);
      if (0 < *(int *)(param_1 + 0x16c)) {
        local_5c = 0;
        local_6c = iVar5;
        local_60 = param_2;
        local_58 = param_1;
        do {
          puVar14 = (undefined2 *)*local_60;
          iVar10 = *(int *)(local_6c + 0x60);
          if ((int)uVar13 < 8) {
            iVar11 = FUN_00707b40(&local_3c,iVar11,uVar13,0);
            if (iVar11 == 0) goto LAB_007089f2;
            iVar11 = local_34;
            uVar13 = local_30;
            if (7 < (int)local_30) goto LAB_00708808;
            uVar7 = 1;
LAB_00708824:
            uVar6 = FUN_00707c0c(&local_3c,iVar11,uVar13,iVar10,uVar7);
            iVar11 = local_34;
            uVar13 = local_30;
            if ((int)uVar6 < 0) goto LAB_007089f2;
          }
          else {
LAB_00708808:
            uVar6 = iVar11 >> (uVar13 - 8 & 0xff) & 0xff;
            iVar2 = *(int *)(iVar10 + (uVar6 + 0x24) * 4);
            if (iVar2 == 0) {
              uVar7 = 9;
              goto LAB_00708824;
            }
            uVar6 = (uint)*(byte *)(iVar10 + uVar6 + 0x490);
            uVar13 = uVar13 - iVar2;
          }
          iVar10 = *(int *)(local_6c + 0xb0);
          iVar2 = *(int *)(local_6c + 0x88);
          if (iVar10 == 0) {
            if (uVar6 != 0) {
              if (((int)uVar13 < (int)uVar6) &&
                 (iVar10 = FUN_00707b40(&local_3c,iVar11,uVar13,uVar6), iVar11 = local_34,
                 uVar13 = local_30, iVar10 == 0)) goto LAB_007089f2;
              uVar13 = uVar13 - uVar6;
            }
LAB_00708a22:
            iVar3 = 1;
LAB_00708918:
            do {
              if ((int)uVar13 < 8) {
                iVar11 = FUN_00707b40(&local_3c,iVar11,uVar13,0);
                if (iVar11 == 0) goto LAB_007089f2;
                iVar11 = local_34;
                uVar13 = local_30;
                if (7 < (int)local_30) goto LAB_00708932;
                uVar7 = 1;
LAB_0070894a:
                uVar6 = FUN_00707c0c(&local_3c,iVar11,uVar13,iVar2,uVar7);
                iVar11 = local_34;
                uVar13 = local_30;
                if ((int)uVar6 < 0) goto LAB_007089f2;
              }
              else {
LAB_00708932:
                uVar6 = iVar11 >> (uVar13 - 8 & 0xff) & 0xff;
                iVar10 = *(int *)(iVar2 + (uVar6 + 0x24) * 4);
                if (iVar10 == 0) {
                  uVar7 = 9;
                  goto LAB_0070894a;
                }
                uVar6 = (uint)*(byte *)(iVar2 + uVar6 + 0x490);
                uVar13 = uVar13 - iVar10;
              }
              uVar8 = uVar6 & 0xf;
              if (uVar8 == 0) {
                if ((int)uVar6 >> 4 != 0xf) break;
                iVar3 = iVar3 + 0x10;
              }
              else {
                if (((int)uVar13 < (int)uVar8) &&
                   (iVar10 = FUN_00707b40(&local_3c,iVar11,uVar13,uVar8), iVar11 = local_34,
                   uVar13 = local_30, iVar10 == 0)) goto LAB_007089f2;
                uVar13 = uVar13 - uVar8;
                iVar3 = ((int)uVar6 >> 4) + iVar3 + 1;
              }
            } while (iVar3 < 0x40);
          }
          else {
            uVar8 = 0;
            if (uVar6 != 0) {
              if (((int)uVar13 < (int)uVar6) &&
                 (iVar3 = FUN_00707b40(&local_3c,iVar11,uVar13,uVar6), iVar11 = local_34,
                 uVar13 = local_30, iVar3 == 0)) goto LAB_007089f2;
              uVar13 = uVar13 - uVar6;
              uVar8 = iVar11 >> (uVar13 & 0xff) & *(uint *)(&DAT_00854d98 + uVar6 * 4);
              if ((int)uVar8 <= *(int *)(&DAT_00854d98 + (uVar6 - 1) * 4)) {
                uVar8 = uVar8 - *(uint *)(&DAT_00854d98 + uVar6 * 4);
              }
            }
            iVar3 = aiStack_4c[*(int *)(local_58 + 0x170)];
            aiStack_4c[*(int *)(local_58 + 0x170)] = iVar3 + uVar8;
            *puVar14 = (short)(iVar3 + uVar8);
            if (iVar10 < 2) goto LAB_00708a22;
            iVar3 = 1;
LAB_007088d2:
            do {
              if ((int)uVar13 < 8) {
                iVar11 = FUN_00707b40(&local_3c,iVar11,uVar13,0);
                if (iVar11 == 0) goto LAB_007089f2;
                iVar11 = local_34;
                uVar13 = local_30;
                if (7 < (int)local_30) goto LAB_007088d6;
                uVar6 = FUN_00707c0c(&local_3c,local_34,local_30,iVar2,1);
                iVar11 = local_34;
                uVar13 = local_30;
joined_r0x007089f0:
                local_34 = iVar11;
                local_30 = uVar13;
                if ((int)uVar6 < 0) goto LAB_007089f2;
              }
              else {
LAB_007088d6:
                uVar6 = iVar11 >> (uVar13 - 8 & 0xff) & 0xff;
                iVar4 = *(int *)(iVar2 + (uVar6 + 0x24) * 4);
                if (iVar4 == 0) {
                  uVar6 = FUN_00707c0c(&local_3c,iVar11,uVar13,iVar2,9);
                  iVar11 = local_34;
                  uVar13 = local_30;
                  goto joined_r0x007089f0;
                }
                uVar13 = uVar13 - iVar4;
                uVar6 = (uint)*(byte *)(iVar2 + uVar6 + 0x490);
              }
              uVar8 = uVar6 & 0xf;
              if (uVar8 == 0) {
                if ((int)uVar6 >> 4 != 0xf) goto LAB_00708970;
                iVar3 = iVar3 + 0x10;
                if (iVar10 <= iVar3) break;
                goto LAB_007088d2;
              }
              if (((int)uVar13 < (int)uVar8) &&
                 (iVar4 = FUN_00707b40(&local_3c,iVar11,uVar13,uVar8), iVar11 = local_34,
                 uVar13 = local_30, iVar4 == 0)) goto LAB_007089f2;
              uVar13 = uVar13 - uVar8;
              uVar9 = iVar11 >> (uVar13 & 0xff) & *(uint *)(&DAT_00854d98 + uVar8 * 4);
              iVar4 = ((int)uVar6 >> 4) + iVar3;
              if ((int)uVar9 <= *(int *)(&DAT_00854d98 + (uVar8 - 1) * 4)) {
                uVar9 = uVar9 - *(uint *)(&DAT_00854d98 + uVar8 * 4);
              }
              iVar3 = iVar4 + 1;
              puVar14[*(int *)(jpeg_natural_order + iVar4 * 4)] = (short)uVar9;
            } while (iVar3 < iVar10);
            if (iVar3 < 0x40) goto LAB_00708918;
          }
LAB_00708970:
          local_5c = local_5c + 1;
          local_6c = local_6c + 4;
          local_58 = local_58 + 4;
          local_60 = local_60 + 1;
        } while (local_5c < *(int *)(param_1 + 0x16c));
        puVar12 = *(undefined4 **)(param_1 + 0x18);
      }
      *puVar12 = local_3c;
      *(undefined4 *)(*(int *)(param_1 + 0x18) + 4) = local_38;
      *(int *)(iVar5 + 8) = iVar11;
      *(uint *)(iVar5 + 0xc) = uVar13;
      *(undefined4 *)(iVar5 + 0x10) = uVar1;
      *(int *)(iVar5 + 0x14) = aiStack_4c[0];
      *(int *)(iVar5 + 0x18) = aiStack_4c[1];
      *(int *)(iVar5 + 0x1c) = aiStack_4c[2];
      *(int *)(iVar5 + 0x20) = aiStack_4c[3];
    }
    uVar1 = 1;
    *(int *)(iVar5 + 0x28) = *(int *)(iVar5 + 0x28) + -1;
  }
  else {
LAB_007089f2:
    uVar1 = 0;
  }
  return uVar1;
}

// ---- FUN_00708b30  @ 0x708b30
void FUN_00708b30(int *param_1,int param_2,uint param_3,int *param_4)

{
  byte bVar1;
  byte *pbVar2;
  int iVar3;
  int *piVar4;
  int *piVar5;
  uint uVar6;
  int iVar7;
  int iVar8;
  uint uVar9;
  int iVar10;
  int iVar11;
  byte *pbVar12;
  int iVar13;
  int iVar14;
  int iVar15;
  int iVar16;
  int iVar17;
  byte *local_55c;
  int local_534 [257];
  byte local_130 [260];
  int local_2c;
  
  local_2c = __stack_chk_guard;
  if (3 < param_3) {
    *(undefined4 *)(*param_1 + 0x14) = 0x34;
    *(uint *)(*param_1 + 0x18) = param_3;
    (**(code **)*param_1)();
  }
  if (param_2 == 0) {
    local_55c = (byte *)param_1[param_3 + 0x31];
  }
  else {
    local_55c = (byte *)param_1[param_3 + 0x2d];
  }
  if (local_55c == (byte *)0x0) {
    *(undefined4 *)(*param_1 + 0x14) = 0x34;
    *(uint *)(*param_1 + 0x18) = param_3;
    (**(code **)*param_1)(param_1);
  }
  iVar16 = *param_4;
  if (iVar16 == 0) {
    iVar16 = (**(code **)param_1[1])(param_1,1,0x590);
    *param_4 = iVar16;
  }
  iVar10 = 1;
  iVar13 = 0;
  *(byte **)(iVar16 + 0x8c) = local_55c;
  do {
    uVar9 = (uint)local_55c[iVar10];
    if (0x100 < (int)(iVar13 + uVar9)) {
      *(undefined4 *)(*param_1 + 0x14) = 9;
      (**(code **)*param_1)(param_1);
    }
    iVar11 = iVar13;
    if (uVar9 != 0) {
      uVar6 = 0;
      do {
        local_130[uVar6 + iVar13] = (byte)iVar10;
        uVar6 = uVar6 + 1;
        iVar11 = iVar13 + uVar9;
      } while (uVar6 != uVar9);
    }
    iVar13 = iVar11;
    iVar10 = iVar10 + 1;
  } while (iVar10 != 0x11);
  iVar14 = 0;
  local_130[iVar13] = 0;
  iVar10 = 0;
  iVar11 = 0;
  while( true ) {
    uVar9 = (uint)local_130[iVar11];
    if (uVar9 == 0) break;
    if (uVar9 == iVar14 + (uint)local_130[0]) {
      pbVar2 = local_130 + iVar11;
      piVar4 = local_534 + iVar11 + -1;
      do {
        pbVar2 = pbVar2 + 1;
        bVar1 = *pbVar2;
        iVar11 = iVar11 + 1;
        piVar4 = piVar4 + 1;
        *piVar4 = iVar10;
        iVar10 = iVar10 + 1;
      } while (bVar1 == uVar9);
    }
    if (iVar10 < 1 << (iVar14 + (uint)local_130[0] & 0xff)) {
      iVar10 = iVar10 << 1;
      iVar14 = iVar14 + 1;
    }
    else {
      iVar10 = iVar10 << 1;
      iVar14 = iVar14 + 1;
      *(undefined4 *)(*param_1 + 0x14) = 9;
      (**(code **)*param_1)(param_1);
    }
  }
  pbVar12 = local_55c + 0x10;
  iVar10 = 0;
  pbVar2 = local_55c;
  iVar11 = iVar16;
  do {
    pbVar2 = pbVar2 + 1;
    if (*pbVar2 == 0) {
      *(undefined4 *)(iVar11 + 4) = 0xffffffff;
    }
    else {
      *(int *)(iVar11 + 0x4c) = iVar10 - local_534[iVar10];
      iVar10 = iVar10 + (uint)*pbVar2;
      *(int *)(iVar11 + 4) = local_534[iVar10 + -1];
    }
    iVar11 = iVar11 + 4;
  } while (pbVar2 != pbVar12);
  *(undefined4 *)(iVar16 + 0x44) = 0xfffff;
  iVar11 = 1;
  memset((void *)(iVar16 + 0x90),0,0x400);
  iVar10 = 0;
  do {
    uVar9 = (uint)local_55c[iVar11];
    iVar14 = iVar10;
    if (uVar9 != 0) {
      iVar8 = 1 << (8U - iVar11 & 0xff);
      piVar4 = local_534 + iVar10 + -1;
      iVar17 = 1;
      do {
        piVar4 = piVar4 + 1;
        if (0 < iVar8) {
          iVar15 = *piVar4 << (8U - iVar11 & 0xff);
          iVar7 = 0;
          piVar5 = (int *)(iVar16 + (iVar15 + 0x23) * 4);
          do {
            piVar5 = piVar5 + 1;
            *piVar5 = iVar11;
            iVar3 = iVar15 + iVar16 + iVar7;
            iVar7 = iVar7 + 1;
            *(byte *)(iVar3 + 0x490) = local_55c[iVar17 + iVar10 + 0x10];
          } while (iVar7 != iVar8);
          uVar9 = (uint)local_55c[iVar11];
        }
        iVar17 = iVar17 + 1;
        iVar14 = iVar14 + 1;
      } while (iVar17 <= (int)uVar9);
    }
    iVar11 = iVar11 + 1;
    iVar10 = iVar14;
  } while (iVar11 != 9);
  if (param_2 != 0) {
    iVar16 = 0;
    while (iVar16 < iVar13) {
      pbVar12 = pbVar12 + 1;
      if (*pbVar12 < 0x10) {
        iVar16 = iVar16 + 1;
      }
      else {
        iVar16 = iVar16 + 1;
        *(undefined4 *)(*param_1 + 0x14) = 9;
        (**(code **)*param_1)(param_1);
      }
    }
  }
  if (local_2c != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}

// ---- FUN_00708d9c  @ 0x708d9c
void FUN_00708d9c(int *param_1)

{
  int iVar1;
  int *piVar2;
  int iVar3;
  int iVar4;
  uint *puVar5;
  uint uVar6;
  int iVar7;
  undefined4 *puVar8;
  int iVar9;
  
  iVar4 = param_1[0x74];
  if (param_1[0x38] == 0) {
    if (((param_1[0x66] == 0) && (param_1[0x68] == 0)) && (param_1[0x69] == 0)) {
      if (param_1[0x37] == 0) {
        iVar3 = param_1[0x67];
        if (iVar3 < 0x40) goto LAB_00708eb0;
        goto LAB_00708eca;
      }
      iVar3 = param_1[0x67];
LAB_00708eb0:
      iVar9 = param_1[0x6c];
      if (iVar9 != iVar3) goto LAB_00708eb8;
    }
    else {
LAB_00708eb8:
      *(undefined4 *)(*param_1 + 0x14) = 0x7d;
      (**(code **)(*param_1 + 4))(param_1,0xffffffff);
LAB_00708eca:
      iVar9 = param_1[0x6c];
    }
    if (iVar9 == 0x3f) {
      *(undefined4 *)(iVar4 + 4) = 0x70876d;
    }
    else {
      *(undefined4 *)(iVar4 + 4) = 0x708419;
    }
    if (0 < param_1[0x54]) {
      iVar3 = 0;
      piVar2 = param_1 + 0x54;
      puVar8 = (undefined4 *)(iVar4 + 0x10);
      do {
        piVar2 = piVar2 + 1;
        iVar1 = *piVar2;
        iVar9 = *(int *)(iVar1 + 0x14);
        FUN_00708b30(param_1,1,iVar9,iVar4 + (iVar9 + 0x10) * 4);
        if (param_1[0x6c] != 0) {
          iVar9 = *(int *)(iVar1 + 0x18);
          FUN_00708b30(param_1,0,iVar9,iVar4 + (iVar9 + 0x14) * 4);
        }
        puVar8 = puVar8 + 1;
        *puVar8 = 0;
        iVar3 = iVar3 + 1;
      } while (iVar3 < param_1[0x54]);
    }
    if (0 < param_1[0x5b]) {
      piVar2 = param_1 + 0x5b;
      iVar3 = 0;
      puVar8 = (undefined4 *)(iVar4 + 0x5c);
      do {
        piVar2 = piVar2 + 1;
        iVar9 = param_1[*piVar2 + 0x55];
        puVar8[1] = *(undefined4 *)(iVar4 + (*(int *)(iVar9 + 0x14) + 0x10) * 4);
        puVar8[0xb] = *(undefined4 *)(iVar4 + (*(int *)(iVar9 + 0x18) + 0x14) * 4);
        if (*(int *)(iVar9 + 0x34) == 0) {
          puVar8[0x15] = 0;
        }
        else {
          iVar1 = *(int *)(iVar9 + 0x28);
          iVar9 = *(int *)(iVar9 + 0x24);
          switch(param_1[0x6c]) {
          case 0:
            puVar8[0x15] = 1;
            break;
          default:
            uVar6 = iVar1 - 1;
            if (6 < uVar6) {
              uVar6 = 7;
            }
            if (iVar9 - 1U < 8) {
              iVar9 = uVar6 * 8 + (iVar9 - 1U);
            }
            else {
              iVar9 = uVar6 * 8 + 7;
            }
            puVar8[0x15] = *(int *)(&DAT_00855004 + iVar9 * 4) + 1;
            break;
          case 3:
            iVar1 = (uint)(iVar1 != 1) * 2;
            if (iVar9 - 1U < 2) {
              iVar1 = iVar1 + (iVar9 - 1U);
            }
            else {
              iVar1 = iVar1 + 1;
            }
            puVar8[0x15] = *(int *)(&DAT_00854dd8 + iVar1 * 4) + 1;
            break;
          case 8:
            uVar6 = iVar1 - 1;
            if (1 < uVar6) {
              uVar6 = 2;
            }
            if (iVar9 - 1U < 3) {
              iVar9 = uVar6 * 3 + (iVar9 - 1U);
            }
            else {
              iVar9 = uVar6 * 3 + 2;
            }
            puVar8[0x15] = *(int *)(&DAT_00854de8 + iVar9 * 4) + 1;
            break;
          case 0xf:
            uVar6 = iVar1 - 1;
            if (2 < uVar6) {
              uVar6 = 3;
            }
            if (iVar9 - 1U < 4) {
              iVar9 = uVar6 * 4 + (iVar9 - 1U);
            }
            else {
              iVar9 = uVar6 * 4 + 3;
            }
            puVar8[0x15] = *(int *)(&DAT_00854e0c + iVar9 * 4) + 1;
            break;
          case 0x18:
            uVar6 = iVar1 - 1;
            if (3 < uVar6) {
              uVar6 = 4;
            }
            if (iVar9 - 1U < 5) {
              iVar9 = uVar6 * 5 + (iVar9 - 1U);
            }
            else {
              iVar9 = uVar6 * 5 + 4;
            }
            puVar8[0x15] = *(int *)(&DAT_00854e4c + iVar9 * 4) + 1;
            break;
          case 0x23:
            uVar6 = iVar1 - 1;
            if (4 < uVar6) {
              uVar6 = 5;
            }
            if (iVar9 - 1U < 6) {
              iVar9 = uVar6 * 6 + (iVar9 - 1U);
            }
            else {
              iVar9 = uVar6 * 6 + 5;
            }
            puVar8[0x15] = *(int *)(&DAT_00854eb0 + iVar9 * 4) + 1;
            break;
          case 0x30:
            uVar6 = iVar1 - 1;
            if (5 < uVar6) {
              uVar6 = 6;
            }
            if (iVar9 - 1U < 7) {
              iVar9 = uVar6 * 7 + (iVar9 - 1U);
            }
            else {
              iVar9 = uVar6 * 7 + 6;
            }
            puVar8[0x15] = *(int *)(&DAT_00854f40 + iVar9 * 4) + 1;
          }
        }
        iVar3 = iVar3 + 1;
        puVar8 = puVar8 + 1;
      } while (iVar3 < param_1[0x5b]);
    }
    goto LAB_0070904e;
  }
  iVar3 = param_1[0x66];
  if (iVar3 == 0) {
    if (param_1[0x67] != 0) goto LAB_00708dc6;
LAB_0070900c:
    if (param_1[0x68] == 0) {
      iVar9 = param_1[0x69];
    }
    else {
      iVar9 = param_1[0x69];
      if (param_1[0x68] + -1 != iVar9) goto LAB_00708dc6;
    }
    if (0xd < iVar9) goto LAB_00708dc6;
  }
  else {
    if (((iVar3 <= param_1[0x67]) && (param_1[0x67] <= param_1[0x6c])) && (param_1[0x54] == 1))
    goto LAB_0070900c;
LAB_00708dc6:
    *(undefined4 *)(*param_1 + 0x14) = 0x11;
    *(int *)(*param_1 + 0x18) = param_1[0x66];
    *(int *)(*param_1 + 0x1c) = param_1[0x67];
    *(int *)(*param_1 + 0x20) = param_1[0x68];
    *(int *)(*param_1 + 0x24) = param_1[0x69];
    (**(code **)*param_1)(param_1);
    iVar3 = param_1[0x66];
  }
  if (0 < param_1[0x54]) {
    piVar2 = param_1 + 0x54;
    iVar9 = 0;
    do {
      piVar2 = piVar2 + 1;
      iVar1 = param_1[0x28];
      iVar7 = *(int *)(*piVar2 + 4);
      if ((iVar3 != 0) && (*(int *)(iVar1 + iVar7 * 0x100) < 0)) {
        *(undefined4 *)(*param_1 + 0x14) = 0x76;
        *(int *)(*param_1 + 0x18) = iVar7;
        *(undefined4 *)(*param_1 + 0x1c) = 0;
        (**(code **)(*param_1 + 4))(param_1,0xffffffff);
        iVar3 = param_1[0x66];
      }
      if (iVar3 <= param_1[0x67]) {
        puVar5 = (uint *)(iVar1 + iVar7 * 0x100 + iVar3 * 4);
        do {
          if (param_1[0x68] != (*puVar5 & ~((int)*puVar5 >> 0x1f))) {
            *(undefined4 *)(*param_1 + 0x14) = 0x76;
            *(int *)(*param_1 + 0x18) = iVar7;
            *(int *)(*param_1 + 0x1c) = iVar3;
            (**(code **)(*param_1 + 4))(param_1,0xffffffff);
          }
          iVar3 = iVar3 + 1;
          *puVar5 = param_1[0x69];
          puVar5 = puVar5 + 1;
        } while (iVar3 <= param_1[0x67]);
        iVar3 = param_1[0x66];
      }
      iVar9 = iVar9 + 1;
    } while (iVar9 < param_1[0x54]);
  }
  if (param_1[0x68] == 0) {
    if (iVar3 != 0) {
      *(undefined4 *)(iVar4 + 4) = 0x707ec9;
      goto LAB_00709182;
    }
    *(undefined4 *)(iVar4 + 4) = 0x707d21;
    iVar3 = param_1[0x54];
  }
  else {
    if (iVar3 == 0) {
      *(undefined4 *)(iVar4 + 4) = 0x708079;
    }
    else {
      *(undefined4 *)(iVar4 + 4) = 0x70812d;
    }
LAB_00709182:
    iVar3 = param_1[0x54];
  }
  if (0 < iVar3) {
    iVar9 = 0;
    puVar8 = (undefined4 *)(iVar4 + 0x10);
    piVar2 = param_1 + 0x55;
    iVar3 = *piVar2;
    if (param_1[0x66] != 0) goto LAB_007091c0;
    do {
      if (param_1[0x68] == 0) {
        FUN_00708b30(param_1,1,*(int *)(iVar3 + 0x14),iVar4 + *(int *)(iVar3 + 0x14) * 4 + 0x2c);
      }
      while( true ) {
        puVar8 = puVar8 + 1;
        *puVar8 = 0;
        iVar9 = iVar9 + 1;
        if (param_1[0x54] <= iVar9) goto LAB_00709174;
        piVar2 = piVar2 + 1;
        iVar3 = *piVar2;
        if (param_1[0x66] == 0) break;
LAB_007091c0:
        iVar1 = iVar4 + (*(int *)(iVar3 + 0x18) + 10) * 4;
        FUN_00708b30(param_1,0,*(int *)(iVar3 + 0x18),iVar1 + 4);
        *(undefined4 *)(iVar4 + 0x3c) = *(undefined4 *)(iVar1 + 4);
      }
    } while( true );
  }
LAB_00709174:
  *(undefined4 *)(iVar4 + 0x10) = 0;
LAB_0070904e:
  *(undefined4 *)(iVar4 + 0xc) = 0;
  *(undefined4 *)(iVar4 + 8) = 0;
  *(undefined4 *)(iVar4 + 0x24) = 0;
  *(int *)(iVar4 + 0x28) = param_1[0x46];
  return;
}

// ---- FUN_007095a0  @ 0x7095a0
void FUN_007095a0(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  void *__dest;
  int extraout_r1;
  int extraout_r1_00;
  int extraout_r1_01;
  uint uVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  int *piVar6;
  int iVar7;
  int iVar8;
  
  if (param_1[0x54] == 1) {
    iVar3 = param_1[0x55];
    param_1[0x59] = *(int *)(iVar3 + 0x1c);
    param_1[0x5a] = *(int *)(iVar3 + 0x20);
    iVar4 = *(int *)(iVar3 + 0xc);
    *(undefined4 *)(iVar3 + 0x44) = *(undefined4 *)(iVar3 + 0x24);
    *(undefined4 *)(iVar3 + 0x38) = 1;
    *(undefined4 *)(iVar3 + 0x3c) = 1;
    *(undefined4 *)(iVar3 + 0x40) = 1;
    *(undefined4 *)(iVar3 + 0x48) = 1;
    __aeabi_uidivmod(*(undefined4 *)(iVar3 + 0x20),iVar4,param_3,*(undefined4 *)(iVar3 + 0x24),
                     param_4);
    iVar1 = extraout_r1_01;
    if (extraout_r1_01 == 0) {
      iVar1 = iVar4;
    }
    *(int *)(iVar3 + 0x4c) = iVar1;
    param_1[0x5c] = 0;
    param_1[0x5b] = 1;
    iVar1 = param_1[0x54];
  }
  else {
    if (3 < param_1[0x54] - 1U) {
      *(undefined4 *)(*param_1 + 0x14) = 0x1b;
      *(int *)(*param_1 + 0x18) = param_1[0x54];
      *(undefined4 *)(*param_1 + 0x1c) = 4;
      (**(code **)*param_1)();
    }
    iVar3 = 0;
    iVar1 = jdiv_round_up(param_1[7],param_1[0x4e] * param_1[0x6a]);
    param_1[0x59] = iVar1;
    iVar1 = jdiv_round_up(param_1[8],param_1[0x4f] * param_1[0x6a]);
    param_1[0x5b] = 0;
    param_1[0x5a] = iVar1;
    if (param_1[0x54] < 1) goto LAB_00709692;
    piVar6 = param_1 + 0x54;
    do {
      piVar6 = piVar6 + 1;
      iVar4 = *piVar6;
      iVar5 = *(int *)(iVar4 + 8);
      iVar8 = *(int *)(iVar4 + 0xc);
      *(int *)(iVar4 + 0x38) = iVar5;
      iVar7 = iVar5 * iVar8;
      *(int *)(iVar4 + 0x3c) = iVar8;
      *(int *)(iVar4 + 0x40) = iVar7;
      *(int *)(iVar4 + 0x44) = iVar5 * *(int *)(iVar4 + 0x24);
      __aeabi_uidivmod(*(undefined4 *)(iVar4 + 0x1c),iVar5);
      iVar1 = extraout_r1;
      if (extraout_r1 == 0) {
        iVar1 = iVar5;
      }
      *(int *)(iVar4 + 0x48) = iVar1;
      __aeabi_uidivmod(*(undefined4 *)(iVar4 + 0x20),iVar8);
      iVar1 = extraout_r1_00;
      if (extraout_r1_00 == 0) {
        iVar1 = iVar8;
      }
      *(int *)(iVar4 + 0x4c) = iVar1;
      if (10 < param_1[0x5b] + iVar7) {
        *(undefined4 *)(*param_1 + 0x14) = 0xe;
        (**(code **)*param_1)(param_1);
      }
      if (0 < iVar7) {
        iVar4 = param_1[0x5b];
        iVar1 = 0;
        do {
          iVar5 = iVar1 + iVar4 * 4;
          iVar1 = iVar1 + 4;
          *(int *)((int)param_1 + iVar5 + 0x170) = iVar3;
        } while (iVar1 != iVar7 * 4);
        param_1[0x5b] = iVar4 + iVar7;
      }
      iVar1 = param_1[0x54];
      iVar3 = iVar3 + 1;
    } while (iVar3 < iVar1);
  }
  if (0 < iVar1) {
    piVar6 = param_1 + 0x54;
    iVar3 = 0;
    do {
      piVar6 = piVar6 + 1;
      iVar4 = *piVar6;
      if (*(int *)(iVar4 + 0x50) == 0) {
        uVar2 = *(uint *)(iVar4 + 0x10);
        if ((3 < uVar2) || (param_1[uVar2 + 0x29] == 0)) {
          *(undefined4 *)(*param_1 + 0x14) = 0x36;
          *(uint *)(*param_1 + 0x18) = uVar2;
          (**(code **)*param_1)(param_1);
        }
        __dest = (void *)(**(code **)param_1[1])(param_1,1,0x84);
        memcpy(__dest,(void *)param_1[uVar2 + 0x29],0x84);
        *(void **)(iVar4 + 0x50) = __dest;
        iVar1 = param_1[0x54];
      }
      iVar3 = iVar3 + 1;
    } while (iVar3 < iVar1);
  }
LAB_00709692:
  (**(code **)param_1[0x74])(param_1);
  (**(code **)param_1[0x70])(param_1);
  *(undefined4 *)param_1[0x72] = *(undefined4 *)(param_1[0x70] + 4);
  return;
}

// ---- FUN_00709774  @ 0x709774
int FUN_00709774(int *param_1)

{
  int iVar1;
  undefined4 uVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  
  iVar4 = param_1[0x72];
  if (*(int *)(iVar4 + 0x14) == 0) {
    do {
      while( true ) {
        iVar1 = (**(code **)(param_1[0x73] + 4))(param_1);
        if (iVar1 != 1) {
          if (iVar1 != 2) {
            return iVar1;
          }
          *(undefined4 *)(iVar4 + 0x14) = 1;
          if (*(int *)(iVar4 + 0x18) != 0) {
            if (*(int *)(param_1[0x73] + 0x10) == 0) {
              return 2;
            }
            *(undefined4 *)(*param_1 + 0x14) = 0x3d;
            (**(code **)*param_1)(param_1);
            return 2;
          }
          if (param_1[0x26] <= param_1[0x24]) {
            return 2;
          }
          param_1[0x26] = param_1[0x24];
          return 2;
        }
        if (*(int *)(iVar4 + 0x18) == 0) break;
        if (*(int *)(iVar4 + 0x18) == 1) {
          if ((0xffdc < param_1[8]) || (0xffdc < param_1[7])) {
            *(undefined4 *)(*param_1 + 0x14) = 0x2a;
            *(undefined4 *)(*param_1 + 0x18) = 0xffdc;
            (**(code **)*param_1)(param_1);
          }
          if (param_1[0x35] != 8) {
            *(undefined4 *)(*param_1 + 0x14) = 0x10;
            *(int *)(*param_1 + 0x18) = param_1[0x35];
            (**(code **)*param_1)(param_1);
          }
          iVar1 = param_1[9];
          if (10 < iVar1) {
            *(undefined4 *)(*param_1 + 0x14) = 0x1b;
            *(int *)(*param_1 + 0x18) = param_1[9];
            *(undefined4 *)(*param_1 + 0x1c) = 10;
            (**(code **)*param_1)(param_1);
            iVar1 = param_1[9];
          }
          param_1[0x4e] = 1;
          param_1[0x4f] = 1;
          iVar5 = param_1[0x36];
          if (0 < iVar1) {
            iVar6 = 0;
            while( true ) {
              iVar3 = *(int *)(iVar5 + 8);
              if (((3 < iVar3 - 1U) || (*(int *)(iVar5 + 0xc) < 1)) || (4 < *(int *)(iVar5 + 0xc)))
              {
                *(undefined4 *)(*param_1 + 0x14) = 0x13;
                (**(code **)*param_1)(param_1);
                iVar3 = *(int *)(iVar5 + 8);
                iVar1 = param_1[9];
              }
              iVar6 = iVar6 + 1;
              if (param_1[0x4e] < iVar3) {
                param_1[0x4e] = iVar3;
              }
              else {
                param_1[0x4e] = param_1[0x4e];
              }
              if (param_1[0x4f] < *(int *)(iVar5 + 0xc)) {
                param_1[0x4f] = *(int *)(iVar5 + 0xc);
              }
              else {
                param_1[0x4f] = param_1[0x4f];
              }
              if (iVar1 <= iVar6) break;
              iVar5 = iVar5 + 0x58;
            }
          }
          if ((param_1[0x37] == 0) && ((param_1[0x38] == 0 || (param_1[0x54] == 0)))) {
            iVar5 = param_1[0x67];
            if (iVar5 == 0x3f) {
              param_1[0x6c] = 0x3f;
              iVar5 = 8;
              param_1[0x6a] = 8;
              param_1[0x6b] = (int)jpeg_natural_order;
            }
            else if (iVar5 < 0x40) {
              if (iVar5 == 0xf) {
                param_1[0x6c] = 0xf;
                iVar5 = 4;
                param_1[0x6a] = 4;
                param_1[0x6b] = (int)jpeg_natural_order4;
              }
              else if (iVar5 < 0x10) {
                if (iVar5 == 3) {
                  param_1[0x6c] = 3;
                  iVar5 = 2;
                  param_1[0x6a] = 2;
                  param_1[0x6b] = (int)jpeg_natural_order2;
                }
                else if (iVar5 == 8) {
                  iVar5 = 3;
                  param_1[0x6c] = 8;
                  param_1[0x6a] = 3;
                  param_1[0x6b] = (int)jpeg_natural_order3;
                }
                else {
                  if (iVar5 != 0) goto LAB_00709a62;
                  param_1[0x6c] = 0;
                  iVar5 = 1;
                  param_1[0x6a] = 1;
                  param_1[0x6b] = (int)jpeg_natural_order;
                }
              }
              else if (iVar5 == 0x23) {
                param_1[0x6c] = 0x23;
                iVar5 = 6;
                param_1[0x6a] = 6;
                param_1[0x6b] = (int)jpeg_natural_order6;
              }
              else if (iVar5 == 0x30) {
                param_1[0x6c] = 0x30;
                iVar5 = 7;
                param_1[0x6a] = 7;
                param_1[0x6b] = (int)jpeg_natural_order7;
              }
              else {
                if (iVar5 != 0x18) goto LAB_00709a62;
                param_1[0x6c] = 0x18;
                iVar5 = 5;
                param_1[0x6a] = 5;
                param_1[0x6b] = (int)jpeg_natural_order5;
              }
            }
            else if (iVar5 == 0x8f) {
              param_1[0x6a] = 0xc;
              param_1[0x6b] = (int)jpeg_natural_order;
              param_1[0x6c] = 0x3f;
              iVar5 = 0xc;
            }
            else {
              if (iVar5 < 0x90) {
                if (iVar5 == 99) {
                  iVar5 = 10;
                }
                else if (iVar5 == 0x78) {
                  iVar5 = 0xb;
                }
                else {
                  if (iVar5 != 0x50) goto LAB_00709a62;
                  iVar5 = 9;
                }
              }
              else {
                if (iVar5 == 0xc3) {
                  param_1[0x6a] = 0xe;
                  param_1[0x6b] = (int)jpeg_natural_order;
                  param_1[0x6c] = 0x3f;
                  iVar5 = 0xe;
                  goto LAB_00709936;
                }
                if (iVar5 < 0xc4) {
                  if (iVar5 != 0xa8) {
LAB_00709a62:
                    *(undefined4 *)(*param_1 + 0x14) = 0x11;
                    *(int *)(*param_1 + 0x18) = param_1[0x66];
                    *(int *)(*param_1 + 0x1c) = param_1[0x67];
                    *(int *)(*param_1 + 0x20) = param_1[0x68];
                    *(int *)(*param_1 + 0x24) = param_1[0x69];
                    (**(code **)*param_1)(param_1);
                    iVar5 = param_1[0x6a];
                    iVar1 = param_1[9];
                    goto LAB_00709936;
                  }
                  iVar5 = 0xd;
                }
                else if (iVar5 == 0xe0) {
                  iVar5 = 0xf;
                }
                else {
                  if (iVar5 != 0xff) goto LAB_00709a62;
                  iVar5 = 0x10;
                }
              }
              param_1[0x6a] = iVar5;
              param_1[0x6b] = (int)jpeg_natural_order;
              param_1[0x6c] = 0x3f;
            }
          }
          else {
            param_1[0x6a] = 8;
            param_1[0x6b] = (int)jpeg_natural_order;
            param_1[0x6c] = 0x3f;
            iVar5 = 8;
          }
LAB_00709936:
          param_1[0x50] = iVar5;
          param_1[0x51] = iVar5;
          iVar6 = param_1[0x36];
          if (0 < iVar1) {
            iVar1 = 0;
            while( true ) {
              *(int *)(iVar6 + 0x24) = iVar5;
              *(int *)(iVar6 + 0x28) = param_1[0x6a];
              uVar2 = jdiv_round_up(*(int *)(iVar6 + 8) * param_1[7],param_1[0x4e] * param_1[0x6a]);
              *(undefined4 *)(iVar6 + 0x1c) = uVar2;
              uVar2 = jdiv_round_up(*(int *)(iVar6 + 0xc) * param_1[8],param_1[0x4f] * param_1[0x6a]
                                   );
              *(undefined4 *)(iVar6 + 0x20) = uVar2;
              uVar2 = jdiv_round_up(*(int *)(iVar6 + 8) * param_1[7],param_1[0x4e]);
              *(undefined4 *)(iVar6 + 0x2c) = uVar2;
              uVar2 = jdiv_round_up(*(int *)(iVar6 + 0xc) * param_1[8],param_1[0x4f]);
              *(undefined4 *)(iVar6 + 0x34) = 1;
              *(undefined4 *)(iVar6 + 0x50) = 0;
              iVar1 = iVar1 + 1;
              *(undefined4 *)(iVar6 + 0x30) = uVar2;
              iVar6 = iVar6 + 0x58;
              if (param_1[9] <= iVar1) break;
              iVar5 = param_1[0x6a];
            }
            iVar5 = param_1[0x6a];
          }
          iVar1 = jdiv_round_up(param_1[8],param_1[0x4f] * iVar5);
          param_1[0x52] = iVar1;
          if ((param_1[0x54] < param_1[9]) || (param_1[0x38] != 0)) {
            *(undefined4 *)(param_1[0x72] + 0x10) = 1;
          }
          else {
            *(undefined4 *)(param_1[0x72] + 0x10) = 0;
          }
        }
        if (param_1[0x54] != 0) {
          *(undefined4 *)(iVar4 + 0x18) = 0;
          return 1;
        }
        *(undefined4 *)(iVar4 + 0x18) = 2;
      }
      if (*(int *)(iVar4 + 0x10) == 0) {
        *(undefined4 *)(*param_1 + 0x14) = 0x24;
        (**(code **)*param_1)(param_1);
      }
    } while (param_1[0x54] == 0);
    FUN_007095a0(param_1);
    iVar4 = 1;
  }
  else {
    iVar4 = 2;
  }
  return iVar4;
}

// ---- FUN_00709bd4  @ 0x709bd4
void FUN_00709bd4(int *param_1,int param_2)

{
  int iVar1;
  undefined4 *puVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  undefined4 *puVar6;
  int iVar7;
  int iVar8;
  int iVar9;
  int iVar10;
  undefined4 uVar11;
  int iVar12;
  int iVar13;
  int iVar14;
  int iVar15;
  int *local_3c;
  
  iVar3 = param_1[0x6f];
  if (param_2 == 0) {
    if (*(int *)(param_1[0x76] + 8) == 0) {
      *(undefined4 *)(iVar3 + 4) = 0x709d21;
    }
    else {
      *(undefined4 *)(iVar3 + 4) = 0x709d81;
      iVar7 = param_1[0x51];
      iVar4 = param_1[0x6f];
      iVar10 = param_1[0x36];
      if (0 < param_1[9]) {
        local_3c = (int *)(iVar4 + 4);
        iVar13 = 0;
        iVar1 = iVar7;
        while( true ) {
          iVar1 = __divsi3(*(int *)(iVar10 + 0xc) * *(int *)(iVar10 + 0x28),iVar1);
          puVar2 = *(undefined4 **)(*(int *)(iVar4 + 0x38) + iVar13 * 4);
          local_3c = local_3c + 1;
          iVar12 = *local_3c;
          iVar9 = *(int *)(*(int *)(iVar4 + 0x3c) + iVar13 * 4);
          iVar14 = (iVar7 + 2) * iVar1;
          if (0 < iVar14) {
            iVar8 = 0;
            iVar5 = 0;
            do {
              uVar11 = *(undefined4 *)(iVar12 + iVar8);
              iVar5 = iVar5 + 1;
              *(undefined4 *)(iVar9 + iVar8) = uVar11;
              *(undefined4 *)((int)puVar2 + iVar8) = uVar11;
              iVar8 = iVar8 + 4;
            } while (iVar5 != iVar14);
          }
          if (0 < iVar1 * 2) {
            iVar5 = 0;
            iVar8 = (iVar7 + -2) * iVar1 * 4;
            iVar15 = iVar7 * iVar1 * 4;
            iVar14 = 0;
            do {
              iVar14 = iVar14 + 1;
              *(undefined4 *)(iVar9 + iVar8 + iVar5) = *(undefined4 *)(iVar12 + iVar15 + iVar5);
              *(undefined4 *)(iVar15 + iVar9 + iVar5) = *(undefined4 *)(iVar12 + iVar8 + iVar5);
              iVar5 = iVar5 + 4;
            } while (iVar14 != iVar1 * 2);
          }
          if (0 < iVar1) {
            iVar9 = 0;
            puVar6 = puVar2 + -iVar1;
            do {
              iVar9 = iVar9 + 1;
              *puVar6 = *puVar2;
              puVar6 = puVar6 + 1;
            } while (iVar9 != iVar1);
          }
          iVar13 = iVar13 + 1;
          if (param_1[9] <= iVar13) break;
          iVar10 = iVar10 + 0x58;
          iVar1 = param_1[0x51];
        }
      }
      *(undefined4 *)(iVar3 + 0x40) = 0;
      *(undefined4 *)(iVar3 + 0x44) = 0;
      *(undefined4 *)(iVar3 + 0x4c) = 0;
    }
    *(undefined4 *)(iVar3 + 0x30) = 0;
    *(undefined4 *)(iVar3 + 0x34) = 0;
  }
  else if (param_2 == 2) {
    *(undefined1 **)(iVar3 + 4) = &LAB_00709fd0_1;
  }
  else {
    *(undefined4 *)(*param_1 + 0x14) = 3;
    (**(code **)*param_1)();
  }
  return;
}

// ---- FUN_00709d20  @ 0x709d20
void FUN_00709d20(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  int iVar2;
  uint uVar3;
  
  iVar2 = *(int *)(param_1 + 0x1bc);
  if (*(int *)(iVar2 + 0x30) == 0) {
    iVar1 = (**(code **)(*(int *)(param_1 + 0x1c0) + 0xc))(param_1,iVar2 + 8);
    if (iVar1 == 0) {
      return;
    }
    *(undefined4 *)(iVar2 + 0x30) = 1;
  }
  uVar3 = *(uint *)(param_1 + 0x144);
  (**(code **)(*(int *)(param_1 + 0x1c4) + 4))
            (param_1,iVar2 + 8,iVar2 + 0x34,uVar3,param_2,param_3,param_4);
  if (uVar3 <= *(uint *)(iVar2 + 0x34)) {
    *(undefined4 *)(iVar2 + 0x30) = 0;
    *(undefined4 *)(iVar2 + 0x34) = 0;
  }
  return;
}

// ---- FUN_00709d80  @ 0x709d80
void FUN_00709d80(int param_1,undefined4 param_2,uint *param_3,uint param_4)

{
  int iVar1;
  undefined4 *puVar2;
  int extraout_r1;
  int iVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  int iVar7;
  int iVar8;
  int iVar9;
  int iVar10;
  int iVar11;
  int iVar12;
  int iVar13;
  int local_40;
  int local_38;
  
  iVar8 = *(int *)(param_1 + 0x1bc);
  if (*(int *)(iVar8 + 0x30) == 0) {
    iVar5 = (**(code **)(*(int *)(param_1 + 0x1c0) + 0xc))
                      (param_1,*(undefined4 *)(iVar8 + (*(int *)(iVar8 + 0x40) + 0xe) * 4));
    if (iVar5 == 0) {
      return;
    }
    *(undefined4 *)(iVar8 + 0x30) = 1;
    *(int *)(iVar8 + 0x4c) = *(int *)(iVar8 + 0x4c) + 1;
  }
  iVar5 = *(int *)(iVar8 + 0x44);
  if (iVar5 != 1) {
    if (iVar5 == 2) {
      (**(code **)(*(int *)(param_1 + 0x1c4) + 4))
                (param_1,*(undefined4 *)(iVar8 + (*(int *)(iVar8 + 0x40) + 0xe) * 4),iVar8 + 0x34,
                 *(undefined4 *)(iVar8 + 0x48),param_2,param_3,param_4);
      if (*(uint *)(iVar8 + 0x34) < *(uint *)(iVar8 + 0x48)) {
        return;
      }
      *(undefined4 *)(iVar8 + 0x44) = 0;
      if (param_4 <= *param_3) {
        return;
      }
    }
    else if (iVar5 != 0) {
      return;
    }
    *(undefined4 *)(iVar8 + 0x34) = 0;
    *(int *)(iVar8 + 0x48) = *(int *)(param_1 + 0x144) + -1;
    if (*(int *)(iVar8 + 0x4c) == *(int *)(param_1 + 0x148)) {
      iVar3 = *(int *)(param_1 + 0x1bc);
      iVar5 = *(int *)(param_1 + 0xd8);
      if (0 < *(int *)(param_1 + 0x24)) {
        iVar6 = 0;
        while( true ) {
          iVar4 = *(int *)(iVar5 + 0xc) * *(int *)(iVar5 + 0x28);
          iVar1 = __divsi3(iVar4,*(undefined4 *)(param_1 + 0x144));
          __aeabi_uidivmod(*(undefined4 *)(iVar5 + 0x30),iVar4);
          iVar10 = extraout_r1;
          if (extraout_r1 == 0) {
            iVar10 = iVar4;
          }
          if (iVar6 == 0) {
            iVar4 = __divsi3(iVar10 + -1,iVar1);
            *(int *)(iVar3 + 0x48) = iVar4 + 1;
          }
          iVar4 = *(int *)(*(int *)(iVar3 + (*(int *)(iVar3 + 0x40) + 0xe) * 4) + iVar6 * 4);
          if (0 < iVar1 * 2) {
            iVar9 = 0;
            puVar2 = (undefined4 *)(iVar4 + iVar10 * 4);
            do {
              iVar9 = iVar9 + 1;
              *puVar2 = *(undefined4 *)(iVar4 + (iVar10 + -1) * 4);
              puVar2 = puVar2 + 1;
            } while (iVar9 != iVar1 * 2);
          }
          iVar6 = iVar6 + 1;
          if (*(int *)(param_1 + 0x24) <= iVar6) break;
          iVar5 = iVar5 + 0x58;
        }
      }
    }
    *(undefined4 *)(iVar8 + 0x44) = 1;
  }
  local_38 = iVar8 + 0x34;
  (**(code **)(*(int *)(param_1 + 0x1c4) + 4))
            (param_1,*(undefined4 *)(iVar8 + (*(int *)(iVar8 + 0x40) + 0xe) * 4),local_38,
             *(undefined4 *)(iVar8 + 0x48),param_2,param_3,param_4);
  if (*(uint *)(iVar8 + 0x48) <= *(uint *)(iVar8 + 0x34)) {
    if (*(int *)(iVar8 + 0x4c) == 1) {
      iVar3 = *(int *)(param_1 + 0x1bc);
      iVar10 = *(int *)(param_1 + 0x24);
      iVar5 = *(int *)(param_1 + 0x144);
      iVar6 = *(int *)(param_1 + 0xd8);
      if (0 < iVar10) {
        iVar4 = iVar5 + 1;
        local_40 = 0;
        iVar1 = iVar5 + 2;
        while( true ) {
          iVar5 = __divsi3(*(int *)(iVar6 + 0xc) * *(int *)(iVar6 + 0x28),iVar5);
          iVar12 = *(int *)(*(int *)(iVar3 + 0x38) + local_40 * 4);
          iVar9 = *(int *)(*(int *)(iVar3 + 0x3c) + local_40 * 4);
          if (0 < iVar5) {
            iVar7 = 0;
            iVar10 = 0;
            iVar11 = iVar1 * iVar5 * 4;
            iVar13 = iVar4 * iVar5 * 4;
            puVar2 = (undefined4 *)(iVar12 + iVar13);
            do {
              iVar10 = iVar10 + 1;
              *(undefined4 *)(iVar12 + iVar5 * -4 + iVar7) = *puVar2;
              *(undefined4 *)(iVar5 * -4 + iVar9 + iVar7) = *(undefined4 *)(iVar13 + iVar9 + iVar7);
              *(undefined4 *)(iVar12 + iVar11 + iVar7) = *(undefined4 *)(iVar12 + iVar7);
              *(undefined4 *)(iVar9 + iVar11 + iVar7) = *(undefined4 *)(iVar9 + iVar7);
              iVar7 = iVar7 + 4;
              puVar2 = puVar2 + 1;
            } while (iVar10 != iVar5);
            iVar10 = *(int *)(param_1 + 0x24);
          }
          local_40 = local_40 + 1;
          if (iVar10 <= local_40) break;
          iVar6 = iVar6 + 0x58;
          iVar5 = *(int *)(param_1 + 0x144);
        }
      }
    }
    *(uint *)(iVar8 + 0x40) = *(uint *)(iVar8 + 0x40) ^ 1;
    *(undefined4 *)(iVar8 + 0x30) = 0;
    *(int *)(iVar8 + 0x34) = *(int *)(param_1 + 0x144) + 1;
    *(int *)(iVar8 + 0x48) = *(int *)(param_1 + 0x144) + 2;
    *(undefined4 *)(iVar8 + 0x44) = 2;
  }
  return;
}

// ---- FUN_0070a120  @ 0x70a120
undefined4 FUN_0070a120(int *param_1,int param_2,int param_3,int param_4)

{
  byte bVar1;
  byte bVar2;
  int iVar3;
  uint *puVar4;
  undefined4 uVar5;
  int iVar6;
  byte *pbVar7;
  byte *pbVar8;
  undefined4 *puVar9;
  uint uVar10;
  
  puVar9 = (undefined4 *)param_1[6];
  iVar3 = puVar9[1];
  pbVar7 = (byte *)*puVar9;
  param_1[0x37] = param_2;
  param_1[0x38] = param_3;
  param_1[0x39] = param_4;
  if (iVar3 == 0) {
    iVar3 = (*(code *)puVar9[3])(param_1);
    if (iVar3 != 0) {
      pbVar7 = (byte *)*puVar9;
      iVar3 = puVar9[1];
      goto LAB_0070a13e;
    }
LAB_0070a316:
    uVar5 = 0;
  }
  else {
LAB_0070a13e:
    bVar1 = *pbVar7;
    if (iVar3 == 1) {
      iVar3 = (*(code *)puVar9[3])(param_1);
      if (iVar3 == 0) goto LAB_0070a316;
      pbVar7 = (byte *)*puVar9;
      iVar3 = puVar9[1] + -1;
      bVar2 = *pbVar7;
    }
    else {
      pbVar7 = pbVar7 + 1;
      iVar3 = iVar3 + -2;
      bVar2 = *pbVar7;
    }
    if (iVar3 == 0) {
      iVar3 = (*(code *)puVar9[3])(param_1);
      if (iVar3 == 0) goto LAB_0070a316;
      pbVar7 = (byte *)*puVar9;
      iVar3 = puVar9[1];
    }
    else {
      pbVar7 = pbVar7 + 1;
    }
    param_1[0x35] = (uint)*pbVar7;
    if (iVar3 == 1) {
      iVar3 = (*(code *)puVar9[3])(param_1);
      if (iVar3 == 0) goto LAB_0070a316;
      pbVar7 = (byte *)*puVar9;
      iVar6 = (uint)*pbVar7 << 8;
      iVar3 = puVar9[1] + -1;
      param_1[8] = iVar6;
    }
    else {
      pbVar7 = pbVar7 + 1;
      iVar6 = (uint)*pbVar7 << 8;
      iVar3 = iVar3 + -2;
      param_1[8] = iVar6;
    }
    if (iVar3 == 0) {
      iVar3 = (*(code *)puVar9[3])(param_1);
      if (iVar3 == 0) goto LAB_0070a316;
      pbVar7 = (byte *)*puVar9;
      iVar3 = puVar9[1];
      param_1[8] = param_1[8] + (uint)*pbVar7;
    }
    else {
      pbVar7 = pbVar7 + 1;
      param_1[8] = iVar6 + (uint)*pbVar7;
    }
    iVar3 = iVar3 + -1;
    if (iVar3 == 0) {
      iVar3 = (*(code *)puVar9[3])(param_1);
      if (iVar3 == 0) goto LAB_0070a316;
      pbVar7 = (byte *)*puVar9;
      iVar3 = puVar9[1];
    }
    else {
      pbVar7 = pbVar7 + 1;
    }
    iVar6 = (uint)*pbVar7 << 8;
    iVar3 = iVar3 + -1;
    param_1[7] = iVar6;
    if (iVar3 == 0) {
      iVar3 = (*(code *)puVar9[3])(param_1);
      if (iVar3 == 0) goto LAB_0070a316;
      pbVar7 = (byte *)*puVar9;
      iVar3 = puVar9[1];
      iVar6 = param_1[7];
    }
    else {
      pbVar7 = pbVar7 + 1;
    }
    iVar3 = iVar3 + -1;
    param_1[7] = iVar6 + (uint)*pbVar7;
    if (iVar3 == 0) {
      iVar3 = (*(code *)puVar9[3])(param_1);
      if (iVar3 == 0) goto LAB_0070a316;
      pbVar7 = (byte *)*puVar9;
      iVar3 = puVar9[1];
    }
    else {
      pbVar7 = pbVar7 + 1;
    }
    pbVar8 = pbVar7 + 1;
    iVar3 = iVar3 + -1;
    iVar6 = *param_1;
    param_1[9] = (uint)*pbVar7;
    *(int *)(iVar6 + 0x18) = param_1[0x6d];
    *(int *)(iVar6 + 0x1c) = param_1[7];
    *(int *)(iVar6 + 0x20) = param_1[8];
    *(int *)(iVar6 + 0x24) = param_1[9];
    *(undefined4 *)(*param_1 + 0x14) = 0x66;
    (**(code **)(*param_1 + 4))(param_1,1);
    if (*(int *)(param_1[0x73] + 0x10) != 0) {
      *(undefined4 *)(*param_1 + 0x14) = 0x3c;
      (**(code **)*param_1)(param_1);
    }
    if (((param_1[8] == 0) || (param_1[7] == 0)) || (iVar6 = param_1[9], iVar6 < 1)) {
      *(undefined4 *)(*param_1 + 0x14) = 0x21;
      (**(code **)*param_1)(param_1);
      iVar6 = param_1[9];
    }
    if (iVar6 * 3 != (uint)bVar1 * 0x100 + -8 + (uint)bVar2) {
      *(undefined4 *)(*param_1 + 0x14) = 0xc;
      (**(code **)*param_1)(param_1);
      iVar6 = param_1[9];
    }
    puVar4 = (uint *)param_1[0x36];
    if (puVar4 == (uint *)0x0) {
      puVar4 = (uint *)(**(code **)param_1[1])(param_1,1,iVar6 * 0x58);
      iVar6 = param_1[9];
      param_1[0x36] = (int)puVar4;
    }
    if (0 < iVar6) {
      uVar10 = 0;
      do {
        puVar4[1] = uVar10;
        if (iVar3 == 0) {
          iVar3 = (*(code *)puVar9[3])(param_1);
          if (iVar3 == 0) goto LAB_0070a316;
          pbVar8 = (byte *)*puVar9;
          iVar3 = puVar9[1] + -1;
          *puVar4 = (uint)*pbVar8;
          if (iVar3 != 0) goto LAB_0070a2a0;
LAB_0070a336:
          iVar3 = (*(code *)puVar9[3])(param_1);
          if (iVar3 == 0) goto LAB_0070a316;
          pbVar8 = (byte *)*puVar9;
          iVar3 = puVar9[1];
        }
        else {
          iVar3 = iVar3 + -1;
          *puVar4 = (uint)*pbVar8;
          if (iVar3 == 0) goto LAB_0070a336;
LAB_0070a2a0:
          pbVar8 = pbVar8 + 1;
        }
        bVar1 = *pbVar8;
        iVar3 = iVar3 + -1;
        puVar4[2] = (uint)(bVar1 >> 4);
        puVar4[3] = bVar1 & 0xf;
        if (iVar3 == 0) {
          iVar3 = (*(code *)puVar9[3])(param_1);
          if (iVar3 == 0) goto LAB_0070a316;
          pbVar7 = (byte *)*puVar9;
          iVar3 = puVar9[1];
        }
        else {
          pbVar7 = pbVar8 + 1;
        }
        pbVar8 = pbVar7 + 1;
        uVar10 = uVar10 + 1;
        iVar3 = iVar3 + -1;
        puVar4[4] = (uint)*pbVar7;
        iVar6 = *param_1;
        *(uint *)(iVar6 + 0x18) = *puVar4;
        *(uint *)(iVar6 + 0x1c) = puVar4[2];
        *(uint *)(iVar6 + 0x20) = puVar4[3];
        *(uint *)(iVar6 + 0x24) = puVar4[4];
        *(undefined4 *)(*param_1 + 0x14) = 0x67;
        (**(code **)(*param_1 + 4))(param_1,1);
        puVar4 = puVar4 + 0x16;
      } while ((int)uVar10 < param_1[9]);
    }
    uVar5 = 1;
    *(undefined4 *)(param_1[0x73] + 0x10) = 1;
    *puVar9 = pbVar8;
    puVar9[1] = iVar3;
  }
  return uVar5;
}

// ---- FUN_0070a3d8  @ 0x70a3d8
void FUN_0070a3d8(int *param_1,char *param_2,uint param_3,int param_4)

{
  undefined4 uVar1;
  uint uVar2;
  char cVar3;
  int iVar4;
  uint uVar5;
  
  param_4 = param_4 + param_3;
  if (param_3 < 0xe) {
    if (((param_3 < 6) || (*param_2 != 'J')) || (param_2[1] != 'F')) goto LAB_0070a3ec;
    cVar3 = param_2[2];
LAB_0070a424:
    if (((cVar3 != 'X') || (param_2[3] != 'X')) || (param_2[4] != '\0')) goto LAB_0070a3ec;
    cVar3 = param_2[5];
    if (cVar3 == '\x11') {
      *(undefined4 *)(*param_1 + 0x14) = 0x6f;
      *(int *)(*param_1 + 0x18) = param_4;
      goto LAB_0070a3f6;
    }
    if (cVar3 != '\x13') {
      if (cVar3 == '\x10') {
        *(undefined4 *)(*param_1 + 0x14) = 0x6e;
        *(int *)(*param_1 + 0x18) = param_4;
      }
      else {
        *(undefined4 *)(*param_1 + 0x14) = 0x5b;
        *(uint *)(*param_1 + 0x18) = (uint)(byte)param_2[5];
        *(int *)(*param_1 + 0x1c) = param_4;
      }
      goto LAB_0070a3f6;
    }
    iVar4 = *param_1;
    uVar1 = 0x70;
  }
  else {
    if ((*param_2 == 'J') && (param_2[1] == 'F')) {
      cVar3 = param_2[2];
      if (cVar3 != 'I') goto LAB_0070a424;
      if ((param_2[3] == 'F') && (param_2[4] == '\0')) {
        param_1[0x47] = 1;
        cVar3 = param_2[5];
        *(char *)(param_1 + 0x48) = cVar3;
        *(char *)((int)param_1 + 0x121) = param_2[6];
        *(char *)((int)param_1 + 0x122) = param_2[7];
        *(ushort *)(param_1 + 0x49) = (ushort)(byte)param_2[9] + (ushort)(byte)param_2[8] * 0x100;
        *(ushort *)((int)param_1 + 0x126) =
             (ushort)(byte)param_2[0xb] + (ushort)(byte)param_2[10] * 0x100;
        if (cVar3 != '\x01') {
          *(undefined4 *)(*param_1 + 0x14) = 0x7a;
          *(uint *)(*param_1 + 0x18) = (uint)*(byte *)(param_1 + 0x48);
          *(uint *)(*param_1 + 0x1c) = (uint)*(byte *)((int)param_1 + 0x121);
          (**(code **)(*param_1 + 4))(param_1,0xffffffff);
        }
        iVar4 = *param_1;
        *(uint *)(iVar4 + 0x18) = (uint)*(byte *)(param_1 + 0x48);
        *(uint *)(iVar4 + 0x1c) = (uint)*(byte *)((int)param_1 + 0x121);
        *(uint *)(iVar4 + 0x20) = (uint)*(ushort *)(param_1 + 0x49);
        *(uint *)(iVar4 + 0x24) = (uint)*(ushort *)((int)param_1 + 0x126);
        *(uint *)(iVar4 + 0x28) = (uint)*(byte *)((int)param_1 + 0x122);
        *(undefined4 *)(*param_1 + 0x14) = 0x59;
        (**(code **)(*param_1 + 4))(param_1,1);
        if (param_2[0xc] == '\0' && param_2[0xd] == '\0') {
          uVar2 = 0;
          uVar5 = 0;
        }
        else {
          *(undefined4 *)(*param_1 + 0x14) = 0x5c;
          *(uint *)(*param_1 + 0x18) = (uint)(byte)param_2[0xc];
          *(uint *)(*param_1 + 0x1c) = (uint)(byte)param_2[0xd];
          (**(code **)(*param_1 + 4))(param_1,1);
          uVar2 = (uint)(byte)param_2[0xc];
          uVar5 = (uint)(byte)param_2[0xd];
        }
        if (uVar5 * uVar2 * 3 == param_4 + -0xe) {
          return;
        }
        *(undefined4 *)(*param_1 + 0x14) = 0x5a;
        *(int *)(*param_1 + 0x18) = param_4 + -0xe;
        goto LAB_0070a3f6;
      }
    }
LAB_0070a3ec:
    iVar4 = *param_1;
    uVar1 = 0x4f;
  }
  *(undefined4 *)(iVar4 + 0x14) = uVar1;
  *(int *)(*param_1 + 0x18) = param_4;
LAB_0070a3f6:
  (**(code **)(*param_1 + 4))(param_1,1);
  return;
}

// ---- FUN_0070a560  @ 0x70a560
void FUN_0070a560(int *param_1,char *param_2,uint param_3,int param_4)

{
  byte bVar1;
  byte bVar2;
  byte bVar3;
  byte bVar4;
  byte bVar5;
  int iVar6;
  
  if ((((param_3 < 0xc) || (*param_2 != 'A')) || (param_2[1] != 'd')) ||
     (((param_2[2] != 'o' || (param_2[3] != 'b')) || (param_2[4] != 'e')))) {
    *(undefined4 *)(*param_1 + 0x14) = 0x50;
    *(uint *)(*param_1 + 0x18) = param_4 + param_3;
    (**(code **)(*param_1 + 4))(param_1,1);
  }
  else {
    bVar1 = param_2[7];
    bVar2 = param_2[8];
    bVar3 = param_2[9];
    iVar6 = *param_1;
    bVar4 = param_2[10];
    bVar5 = param_2[0xb];
    *(uint *)(iVar6 + 0x18) = (uint)(byte)param_2[6] + (uint)(byte)param_2[5] * 0x100;
    *(uint *)(iVar6 + 0x1c) = (uint)bVar2 + (uint)bVar1 * 0x100;
    *(uint *)(iVar6 + 0x20) = (uint)bVar4 + (uint)bVar3 * 0x100;
    *(uint *)(iVar6 + 0x24) = (uint)bVar5;
    *(undefined4 *)(*param_1 + 0x14) = 0x4e;
    (**(code **)(*param_1 + 4))(param_1,1);
    *(byte *)(param_1 + 0x4b) = bVar5;
    param_1[0x4a] = 1;
  }
  return;
}

// ---- FUN_0070a5e8  @ 0x70a5e8
void FUN_0070a5e8(int *param_1)

{
  byte bVar1;
  undefined4 uVar2;
  byte *pbVar3;
  uint uVar4;
  int iVar5;
  int iVar6;
  byte *pbVar7;
  undefined4 *puVar8;
  uint uVar9;
  uint uVar10;
  byte local_3c [16];
  int local_2c;
  
  local_2c = __stack_chk_guard;
  puVar8 = (undefined4 *)param_1[6];
  iVar6 = puVar8[1];
  pbVar3 = (byte *)*puVar8;
  if (iVar6 == 0) {
    iVar6 = (*(code *)puVar8[3])();
    if (iVar6 != 0) {
      pbVar3 = (byte *)*puVar8;
      iVar6 = puVar8[1];
      goto LAB_0070a60c;
    }
LAB_0070a6e2:
    uVar2 = 0;
    goto LAB_0070a68c;
  }
LAB_0070a60c:
  iVar6 = iVar6 + -1;
  bVar1 = *pbVar3;
  if (iVar6 == 0) {
    iVar6 = (*(code *)puVar8[3])(param_1);
    if (iVar6 == 0) goto LAB_0070a6e2;
    pbVar3 = (byte *)*puVar8;
    iVar6 = puVar8[1];
  }
  else {
    pbVar3 = pbVar3 + 1;
  }
  pbVar7 = pbVar3 + 1;
  iVar6 = iVar6 + -1;
  uVar4 = (uint)*pbVar3 + (uint)bVar1 * 0x100 + -2;
  if ((int)uVar4 < 0xe) {
    uVar10 = uVar4;
    if (0 < (int)uVar4) goto LAB_0070a632;
    uVar10 = 0;
    iVar5 = param_1[0x6d];
    if (iVar5 == 0xe0) goto LAB_0070a6bc;
LAB_0070a65c:
    if (iVar5 == 0xee) {
      FUN_0070a560(param_1,local_3c,uVar10,uVar4);
    }
    else {
      *(undefined4 *)(*param_1 + 0x14) = 0x46;
      *(int *)(*param_1 + 0x18) = param_1[0x6d];
      (**(code **)*param_1)(param_1);
    }
  }
  else {
    uVar10 = 0xe;
LAB_0070a632:
    uVar9 = 0;
    pbVar3 = pbVar7;
    do {
      if (iVar6 == 0) {
        iVar6 = (*(code *)puVar8[3])(param_1);
        if (iVar6 == 0) goto LAB_0070a6e2;
        pbVar3 = (byte *)*puVar8;
        iVar6 = puVar8[1];
      }
      pbVar7 = pbVar3 + 1;
      iVar6 = iVar6 + -1;
      local_3c[uVar9] = *pbVar3;
      uVar9 = uVar9 + 1;
      pbVar3 = pbVar7;
    } while (uVar9 < uVar10);
    uVar4 = uVar4 - uVar10;
    iVar5 = param_1[0x6d];
    if (iVar5 != 0xe0) goto LAB_0070a65c;
LAB_0070a6bc:
    FUN_0070a3d8(param_1,local_3c,uVar10,uVar4);
  }
  *puVar8 = pbVar7;
  puVar8[1] = iVar6;
  if (0 < (int)uVar4) {
    (**(code **)(param_1[6] + 0x10))(param_1,uVar4);
  }
  uVar2 = 1;
LAB_0070a68c:
  if (local_2c == __stack_chk_guard) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar2);
}

// ---- FUN_0070a718  @ 0x70a718
undefined4 FUN_0070a718(int *param_1)

{
  byte bVar1;
  byte *pbVar2;
  int iVar3;
  uint uVar4;
  undefined4 *puVar5;
  undefined4 *puVar6;
  byte *pbVar7;
  int iVar8;
  undefined4 *puVar9;
  byte *pbVar10;
  int iVar11;
  uint uVar12;
  uint uVar13;
  undefined4 *puVar14;
  byte *local_2c;
  
  iVar11 = param_1[0x73];
  puVar9 = (undefined4 *)param_1[6];
  puVar14 = *(undefined4 **)(iVar11 + 0xa4);
  pbVar10 = (byte *)*puVar9;
  iVar8 = puVar9[1];
  if (puVar14 == (undefined4 *)0x0) {
    if (iVar8 == 0) {
      iVar8 = (*(code *)puVar9[3])();
      if (iVar8 == 0) {
        return 0;
      }
      pbVar10 = (byte *)*puVar9;
      iVar8 = puVar9[1];
    }
    iVar8 = iVar8 + -1;
    bVar1 = *pbVar10;
    if (iVar8 == 0) {
      iVar8 = (*(code *)puVar9[3])(param_1);
      if (iVar8 == 0) {
        return 0;
      }
      pbVar7 = (byte *)*puVar9;
      iVar8 = puVar9[1];
    }
    else {
      pbVar7 = pbVar10 + 1;
    }
    pbVar10 = pbVar7 + 1;
    iVar8 = iVar8 + -1;
    uVar12 = (uint)bVar1 * 0x100 + -2 + (uint)*pbVar7;
    if ((int)uVar12 < 0) {
      uVar13 = 0;
      local_2c = (byte *)0x0;
      goto LAB_0070a7f0;
    }
    if (param_1[0x6d] == 0xfe) {
      uVar13 = *(uint *)(iVar11 + 0x60);
    }
    else {
      uVar13 = *(uint *)(iVar11 + (param_1[0x6d] + -200) * 4 + 4);
    }
    if (uVar12 <= uVar13) {
      uVar13 = uVar12;
    }
    puVar14 = (undefined4 *)(**(code **)(param_1[1] + 4))(param_1,1,uVar13 + 0x14);
    uVar4 = 0;
    *puVar14 = 0;
    iVar3 = param_1[0x6d];
    puVar14[2] = uVar12;
    puVar14[3] = uVar13;
    *(char *)(puVar14 + 1) = (char)iVar3;
    local_2c = (byte *)(puVar14 + 5);
    puVar14[4] = local_2c;
    *(undefined4 **)(iVar11 + 0xa4) = puVar14;
    *(undefined4 *)(iVar11 + 0xa8) = 0;
  }
  else {
    uVar4 = *(uint *)(iVar11 + 0xa8);
    uVar12 = 0;
    uVar13 = puVar14[3];
    local_2c = (byte *)(puVar14[4] + uVar4);
  }
joined_r0x0070a74c:
  if (uVar4 < uVar13) {
    do {
      *puVar9 = pbVar10;
      puVar9[1] = iVar8;
      *(uint *)(iVar11 + 0xa8) = uVar4;
      if (iVar8 == 0) {
        iVar8 = (*(code *)puVar9[3])(param_1);
        if (iVar8 == 0) {
          return 0;
        }
        iVar8 = puVar9[1];
        pbVar10 = (byte *)*puVar9;
        pbVar7 = pbVar10;
        if (iVar8 == 0 || uVar13 <= uVar4) goto joined_r0x0070a74c;
      }
      else {
        pbVar7 = pbVar10;
        if (iVar8 == 0 || uVar13 <= uVar4) goto joined_r0x0070a74c;
      }
      do {
        pbVar10 = pbVar7 + 1;
        uVar4 = uVar4 + 1;
        iVar8 = iVar8 + -1;
        pbVar2 = local_2c + 1;
        *local_2c = *pbVar7;
        local_2c = pbVar2;
        pbVar7 = pbVar10;
      } while (uVar4 < uVar13 && iVar8 != 0);
      if (uVar13 <= uVar4) break;
    } while( true );
  }
  if (puVar14 != (undefined4 *)0x0) {
    puVar6 = (undefined4 *)param_1[0x4d];
    if ((undefined4 *)param_1[0x4d] == (undefined4 *)0x0) {
      param_1[0x4d] = (int)puVar14;
    }
    else {
      do {
        puVar5 = puVar6;
        puVar6 = (undefined4 *)*puVar5;
      } while (puVar6 != (undefined4 *)0x0);
      *puVar5 = puVar14;
    }
    local_2c = (byte *)puVar14[4];
    uVar12 = puVar14[2] - uVar13;
  }
LAB_0070a7f0:
  *(undefined4 *)(iVar11 + 0xa4) = 0;
  if (param_1[0x6d] == 0xe0) {
    FUN_0070a3d8(param_1,local_2c,uVar13,uVar12);
  }
  else if (param_1[0x6d] == 0xee) {
    FUN_0070a560(param_1,local_2c,uVar13,uVar12);
  }
  else {
    *(undefined4 *)(*param_1 + 0x14) = 0x5d;
    *(int *)(*param_1 + 0x18) = param_1[0x6d];
    *(uint *)(*param_1 + 0x1c) = uVar12 + uVar13;
    (**(code **)(*param_1 + 4))(param_1,1);
  }
  *puVar9 = pbVar10;
  puVar9[1] = iVar8;
  if (0 < (int)uVar12) {
    (**(code **)(param_1[6] + 0x10))(param_1,uVar12);
  }
  return 1;
}

// ---- FUN_0070a904  @ 0x70a904
undefined4 FUN_0070a904(int *param_1)

{
  byte bVar1;
  undefined4 uVar2;
  int iVar3;
  undefined4 *puVar4;
  byte *pbVar5;
  int iVar6;
  
  puVar4 = (undefined4 *)param_1[6];
  iVar3 = puVar4[1];
  pbVar5 = (byte *)*puVar4;
  if (iVar3 == 0) {
    iVar3 = (*(code *)puVar4[3])();
    if (iVar3 != 0) {
      pbVar5 = (byte *)*puVar4;
      iVar3 = puVar4[1];
      goto LAB_0070a914;
    }
LAB_0070a97c:
    uVar2 = 0;
  }
  else {
LAB_0070a914:
    iVar3 = iVar3 + -1;
    bVar1 = *pbVar5;
    if (iVar3 == 0) {
      iVar3 = (*(code *)puVar4[3])(param_1);
      if (iVar3 == 0) goto LAB_0070a97c;
      pbVar5 = (byte *)*puVar4;
      iVar3 = puVar4[1];
    }
    else {
      pbVar5 = pbVar5 + 1;
    }
    iVar6 = (uint)bVar1 * 0x100 + -2 + (uint)*pbVar5;
    *(undefined4 *)(*param_1 + 0x14) = 0x5d;
    *(int *)(*param_1 + 0x18) = param_1[0x6d];
    *(int *)(*param_1 + 0x1c) = iVar6;
    (**(code **)(*param_1 + 4))(param_1,1);
    *puVar4 = pbVar5 + 1;
    puVar4[1] = iVar3 + -1;
    if (0 < iVar6) {
      (**(code **)(param_1[6] + 0x10))(param_1,iVar6);
    }
    uVar2 = 1;
  }
  return uVar2;
}

// ---- FUN_0070a980  @ 0x70a980
undefined4 FUN_0070a980(int *param_1)

{
  byte bVar1;
  uint uVar2;
  int iVar3;
  byte *pbVar4;
  byte *pbVar5;
  undefined4 *puVar6;
  
  puVar6 = (undefined4 *)param_1[6];
  pbVar4 = (byte *)*puVar6;
  iVar3 = puVar6[1];
LAB_0070a98c:
  if (iVar3 == 0) goto LAB_0070a9aa;
  do {
    bVar1 = *pbVar4;
    while( true ) {
      iVar3 = iVar3 + -1;
      pbVar4 = pbVar4 + 1;
      pbVar5 = pbVar4;
      if (bVar1 == 0xff) goto LAB_0070a9c0;
      *(int *)(param_1[0x73] + 0x18) = *(int *)(param_1[0x73] + 0x18) + 1;
      *puVar6 = pbVar4;
      puVar6[1] = iVar3;
      if (iVar3 != 0) break;
LAB_0070a9aa:
      iVar3 = (*(code *)puVar6[3])(param_1);
      if (iVar3 == 0) {
        return 0;
      }
      pbVar4 = (byte *)*puVar6;
      iVar3 = puVar6[1];
      bVar1 = *pbVar4;
    }
  } while( true );
LAB_0070a9c0:
  do {
    if (iVar3 == 0) {
      iVar3 = (*(code *)puVar6[3])(param_1);
      if (iVar3 == 0) {
        return 0;
      }
      pbVar5 = (byte *)*puVar6;
      iVar3 = puVar6[1];
    }
    pbVar4 = pbVar5 + 1;
    uVar2 = (uint)*pbVar5;
    iVar3 = iVar3 + -1;
    pbVar5 = pbVar4;
  } while (uVar2 == 0xff);
  if (uVar2 != 0) {
    if (*(int *)(param_1[0x73] + 0x18) != 0) {
      *(undefined4 *)(*param_1 + 0x14) = 0x77;
      *(undefined4 *)(*param_1 + 0x18) = *(undefined4 *)(param_1[0x73] + 0x18);
      *(uint *)(*param_1 + 0x1c) = uVar2;
      (**(code **)(*param_1 + 4))(param_1,0xffffffff);
      *(undefined4 *)(param_1[0x73] + 0x18) = 0;
    }
    param_1[0x6d] = uVar2;
    *puVar6 = pbVar4;
    puVar6[1] = iVar3;
    return 1;
  }
  *(int *)(param_1[0x73] + 0x18) = *(int *)(param_1[0x73] + 0x18) + 2;
  *puVar6 = pbVar4;
  puVar6[1] = iVar3;
  goto LAB_0070a98c;
}

// ---- FUN_0070ab74  @ 0x70ab74
void FUN_0070ab74(int param_1)

{
  int iVar1;
  
  iVar1 = *(int *)(param_1 + 0x1cc);
  *(undefined4 *)(param_1 + 0xd8) = 0;
  *(undefined4 *)(param_1 + 0x90) = 0;
  *(undefined4 *)(param_1 + 0x1b4) = 0;
  *(undefined4 *)(iVar1 + 0xc) = 0;
  *(undefined4 *)(iVar1 + 0x10) = 0;
  *(undefined4 *)(iVar1 + 0x18) = 0;
  *(undefined4 *)(iVar1 + 0xa4) = 0;
  return;
}

// ---- FUN_0070ba44  @ 0x70ba44
bool FUN_0070ba44(int param_1)

{
  int iVar1;
  int iVar2;
  bool bVar3;
  
  if (((((((*(int *)(param_1 + 0x4c) == 0) && (*(int *)(param_1 + 0x130) == 0)) &&
         (*(int *)(param_1 + 0x28) == 3)) &&
        ((*(int *)(param_1 + 0x24) == 3 && (*(int *)(param_1 + 0x2c) == 2)))) &&
       ((*(int *)(param_1 + 0x78) == 3 &&
        ((iVar1 = *(int *)(param_1 + 0xd8), *(int *)(iVar1 + 8) == 2 &&
         (*(int *)(iVar1 + 0x60) == 1)))))) && (*(int *)(iVar1 + 0xb8) == 1)) &&
     ((((*(int *)(iVar1 + 0xc) < 3 && (*(int *)(iVar1 + 100) == 1)) && (*(int *)(iVar1 + 0xbc) == 1)
       ) && (((iVar2 = *(int *)(iVar1 + 0x24), iVar2 == *(int *)(param_1 + 0x140) &&
              (iVar2 == *(int *)(iVar1 + 0x7c))) &&
             ((iVar2 == *(int *)(iVar1 + 0xd4) &&
              ((iVar2 = *(int *)(iVar1 + 0x28), iVar2 == *(int *)(param_1 + 0x144) &&
               (iVar2 == *(int *)(iVar1 + 0x80))))))))))) {
    bVar3 = iVar2 == *(int *)(iVar1 + 0xd8);
  }
  else {
    bVar3 = false;
  }
  return bVar3;
}

// ---- FUN_0070c004  @ 0x70c004
void FUN_0070c004(int param_1,undefined4 param_2,int *param_3,undefined4 param_4,int param_5,
                 int *param_6)

{
  (**(code **)(*(int *)(param_1 + 0x1d8) + 0xc))(param_1,param_2,*param_3,param_5 + *param_6 * 4);
  *param_6 = *param_6 + 1;
  *param_3 = *param_3 + 1;
  return;
}

// ---- FUN_0070c40c  @ 0x70c40c
void FUN_0070c40c(int param_1,undefined4 param_2,int *param_3,undefined4 param_4,int param_5,
                 int *param_6,int param_7)

{
  int iVar1;
  int iVar2;
  uint uVar3;
  uint uVar4;
  undefined4 local_20;
  undefined4 local_1c;
  
  iVar2 = *(int *)(param_1 + 0x1d8);
  if (*(int *)(iVar2 + 0x24) != 0) {
    uVar4 = 1;
    jcopy_sample_rows(iVar2 + 0x20,0,param_5 + *param_6 * 4,0,1,*(undefined4 *)(iVar2 + 0x28));
    *(undefined4 *)(iVar2 + 0x24) = 0;
    goto LAB_0070c450;
  }
  uVar3 = *(uint *)(iVar2 + 0x2c);
  iVar1 = *param_6;
  if (1 < uVar3) {
    uVar3 = 2;
  }
  uVar4 = param_7 - iVar1;
  if (uVar4 < uVar3) {
    local_20 = *(undefined4 *)(param_5 + iVar1 * 4);
LAB_0070c478:
    local_1c = *(undefined4 *)(iVar2 + 0x20);
    *(undefined4 *)(iVar2 + 0x24) = 1;
  }
  else {
    local_20 = *(undefined4 *)(param_5 + iVar1 * 4);
    uVar4 = uVar3;
    if (uVar3 != 2) goto LAB_0070c478;
    local_1c = *(undefined4 *)(param_5 + (iVar1 + 1) * 4);
  }
  (**(code **)(iVar2 + 0xc))(param_1,param_2,*param_3,&local_20);
LAB_0070c450:
  *param_6 = *param_6 + uVar4;
  *(uint *)(iVar2 + 0x2c) = *(int *)(iVar2 + 0x2c) - uVar4;
  if (*(int *)(iVar2 + 0x24) == 0) {
    *param_3 = *param_3 + 1;
  }
  return;
}

// ---- FUN_0070c538  @ 0x70c538
void FUN_0070c538(int param_1)

{
  int iVar1;
  undefined4 uVar2;
  uint uVar3;
  int in_stack_00000000;
  int *in_stack_00000004;
  int in_stack_00000008;
  int *piVar4;
  int local_1c;
  
  iVar1 = *(int *)(param_1 + 0x1c4);
  uVar3 = in_stack_00000008 - *in_stack_00000004;
  piVar4 = &local_1c;
  local_1c = 0;
  uVar2 = *(undefined4 *)(iVar1 + 0xc);
  if (*(uint *)(iVar1 + 0x10) < uVar3) {
    uVar3 = *(uint *)(iVar1 + 0x10);
  }
  (**(code **)(*(int *)(param_1 + 0x1d8) + 4))(param_1);
  (**(code **)(*(int *)(param_1 + 0x1e0) + 4))
            (param_1,*(undefined4 *)(iVar1 + 0xc),in_stack_00000000 + *in_stack_00000004 * 4,
             local_1c,uVar2,piVar4,uVar3);
  *in_stack_00000004 = *in_stack_00000004 + local_1c;
  return;
}

// ---- FUN_0070c5a0  @ 0x70c5a0
void FUN_0070c5a0(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                 undefined4 param_5,int *param_6)

{
  undefined4 uVar1;
  int iVar2;
  uint uVar3;
  uint uVar4;
  
  iVar2 = *(int *)(param_1 + 0x1c4);
  uVar3 = *(uint *)(iVar2 + 0x18);
  if (uVar3 == 0) {
    uVar1 = (**(code **)(*(int *)(param_1 + 4) + 0x1c))
                      (param_1,*(undefined4 *)(iVar2 + 8),*(undefined4 *)(iVar2 + 0x14),
                       *(undefined4 *)(iVar2 + 0x10),1);
    uVar3 = *(uint *)(iVar2 + 0x18);
    *(undefined4 *)(iVar2 + 0xc) = uVar1;
  }
  else {
    uVar1 = *(undefined4 *)(iVar2 + 0xc);
  }
  (**(code **)(*(int *)(param_1 + 0x1d8) + 4))
            (param_1,param_2,param_3,param_4,uVar1,iVar2 + 0x18,*(undefined4 *)(iVar2 + 0x10));
  uVar4 = *(uint *)(iVar2 + 0x18);
  if (uVar3 < uVar4) {
    (**(code **)(*(int *)(param_1 + 0x1e0) + 4))
              (param_1,*(int *)(iVar2 + 0xc) + uVar3 * 4,0,uVar4 - uVar3);
    *param_6 = *param_6 + (uVar4 - uVar3);
    uVar4 = *(uint *)(iVar2 + 0x18);
  }
  if (*(uint *)(iVar2 + 0x10) <= uVar4) {
    *(uint *)(iVar2 + 0x14) = *(int *)(iVar2 + 0x14) + *(uint *)(iVar2 + 0x10);
    *(undefined4 *)(iVar2 + 0x18) = 0;
  }
  return;
}

// ---- FUN_0070c634  @ 0x70c634
void FUN_0070c634(int param_1)

{
  int iVar1;
  uint uVar2;
  uint uVar3;
  int iVar4;
  int iVar5;
  uint uVar6;
  int in_stack_00000000;
  int *in_stack_00000004;
  int in_stack_00000008;
  
  iVar4 = *(int *)(param_1 + 0x1c4);
  iVar5 = *(int *)(iVar4 + 0x18);
  if (iVar5 == 0) {
    iVar1 = (**(code **)(*(int *)(param_1 + 4) + 0x1c))
                      (param_1,*(undefined4 *)(iVar4 + 8),*(undefined4 *)(iVar4 + 0x14),
                       *(undefined4 *)(iVar4 + 0x10),0);
    iVar5 = *(int *)(iVar4 + 0x18);
    *(int *)(iVar4 + 0xc) = iVar1;
  }
  else {
    iVar1 = *(int *)(iVar4 + 0xc);
  }
  uVar6 = *(int *)(iVar4 + 0x10) - iVar5;
  uVar3 = in_stack_00000008 - *in_stack_00000004;
  uVar2 = *(int *)(param_1 + 0x74) - *(int *)(iVar4 + 0x14);
  if (uVar2 <= uVar3) {
    uVar3 = uVar2;
  }
  if (uVar3 < uVar6) {
    uVar6 = uVar3;
  }
  (**(code **)(*(int *)(param_1 + 0x1e0) + 4))
            (param_1,iVar1 + iVar5 * 4,in_stack_00000000 + *in_stack_00000004 * 4,uVar6);
  *in_stack_00000004 = *in_stack_00000004 + uVar6;
  uVar6 = *(int *)(iVar4 + 0x18) + uVar6;
  *(uint *)(iVar4 + 0x18) = uVar6;
  if (*(uint *)(iVar4 + 0x10) <= uVar6) {
    *(uint *)(iVar4 + 0x14) = *(int *)(iVar4 + 0x14) + *(uint *)(iVar4 + 0x10);
    *(undefined4 *)(iVar4 + 0x18) = 0;
  }
  return;
}

// ---- FUN_0070c744  @ 0x70c744
void FUN_0070c744(int param_1,int *param_2,int *param_3,undefined4 param_4,int param_5,int *param_6,
                 int param_7)

{
  uint uVar1;
  int iVar2;
  int iVar3;
  undefined4 *puVar4;
  uint uVar5;
  int iVar6;
  
  iVar6 = *(int *)(param_1 + 0x1d8);
  iVar3 = *(int *)(param_1 + 0x13c);
  iVar2 = *(int *)(iVar6 + 0x5c);
  if (iVar3 <= iVar2) {
    iVar2 = *(int *)(param_1 + 0xd8);
    if (0 < *(int *)(param_1 + 0x24)) {
      iVar3 = 0;
      puVar4 = (undefined4 *)(iVar6 + 0x30);
      do {
        (*(code *)puVar4[1])
                  (param_1,iVar2,*param_3 * puVar4[0xd] * 4 + *param_2,iVar6 + iVar3 * 4 + 0xc);
        iVar3 = iVar3 + 1;
        iVar2 = iVar2 + 0x58;
        puVar4 = puVar4 + 1;
        param_2 = param_2 + 1;
      } while (iVar3 < *(int *)(param_1 + 0x24));
    }
    *(undefined4 *)(iVar6 + 0x5c) = 0;
    iVar3 = *(int *)(param_1 + 0x13c);
    iVar2 = 0;
  }
  uVar1 = param_7 - *param_6;
  if (*(uint *)(iVar6 + 0x60) <= uVar1) {
    uVar1 = *(uint *)(iVar6 + 0x60);
  }
  uVar5 = iVar3 - iVar2;
  if (uVar1 < (uint)(iVar3 - iVar2)) {
    uVar5 = uVar1;
  }
  (**(code **)(*(int *)(param_1 + 0x1dc) + 4))
            (param_1,iVar6 + 0xc,iVar2,param_5 + *param_6 * 4,uVar5);
  *param_6 = *param_6 + uVar5;
  *(uint *)(iVar6 + 0x60) = *(int *)(iVar6 + 0x60) - uVar5;
  iVar2 = uVar5 + *(int *)(iVar6 + 0x5c);
  *(int *)(iVar6 + 0x5c) = iVar2;
  if (*(int *)(param_1 + 0x13c) <= iVar2) {
    *param_3 = *param_3 + 1;
  }
  return;
}

// ---- FUN_0070c9f0  @ 0x70c9f0
void FUN_0070c9f0(int param_1,int param_2,undefined4 *param_3,undefined4 *param_4)

{
  undefined1 uVar1;
  undefined1 *puVar2;
  undefined1 *puVar3;
  undefined1 *puVar4;
  int iVar5;
  undefined1 *puVar6;
  uint uVar7;
  undefined4 *puVar8;
  uint uVar9;
  undefined1 *puVar10;
  
  param_4 = (undefined4 *)*param_4;
  iVar5 = *(int *)(param_1 + 0x1d8) + *(int *)(param_2 + 4);
  uVar7 = (uint)*(byte *)(iVar5 + 0x8c);
  uVar9 = (uint)*(byte *)(iVar5 + 0x96);
  if (0 < *(int *)(param_1 + 0x13c)) {
    iVar5 = 0;
    puVar8 = param_4;
    do {
      puVar3 = (undefined1 *)*puVar8;
      puVar6 = (undefined1 *)*param_3;
      puVar2 = puVar3 + *(int *)(param_1 + 0x70);
      while (puVar4 = puVar6, puVar3 < puVar2) {
        while( true ) {
          puVar6 = puVar4 + 1;
          uVar1 = *puVar4;
          if (uVar7 == 0) break;
          puVar10 = puVar3 + uVar7;
          puVar4 = puVar3;
          do {
            puVar3 = puVar4 + 1;
            *puVar4 = uVar1;
            puVar4 = puVar3;
          } while (puVar3 != puVar10);
          puVar4 = puVar6;
          if (puVar2 <= puVar3) goto LAB_0070ca4a;
        }
      }
LAB_0070ca4a:
      if (1 < uVar9) {
        jcopy_sample_rows(param_4,iVar5,param_4,iVar5 + 1,uVar9 - 1,*(undefined4 *)(param_1 + 0x70))
        ;
      }
      iVar5 = iVar5 + uVar9;
      puVar8 = puVar8 + uVar9;
      param_3 = param_3 + 1;
    } while (iVar5 < *(int *)(param_1 + 0x13c));
  }
  return;
}

// ---- FUN_0070ca78  @ 0x70ca78
void FUN_0070ca78(int param_1,undefined4 param_2,undefined4 *param_3,int *param_4)

{
  undefined1 uVar1;
  undefined1 *puVar2;
  undefined1 *puVar3;
  int iVar4;
  undefined1 *puVar5;
  int iVar6;
  int iVar7;
  
  iVar7 = *param_4;
  if (0 < *(int *)(param_1 + 0x13c)) {
    iVar6 = 0;
    do {
      puVar5 = *(undefined1 **)(iVar7 + iVar6 * 4);
      iVar4 = *(int *)(param_1 + 0x70);
      puVar2 = puVar5 + iVar4;
      puVar3 = (undefined1 *)*param_3;
      if (puVar5 < puVar2) {
        do {
          uVar1 = *puVar3;
          *puVar5 = uVar1;
          puVar5[1] = uVar1;
          puVar5 = puVar5 + 2;
          puVar3 = puVar3 + 1;
        } while (puVar5 < puVar2);
        iVar4 = *(int *)(param_1 + 0x70);
      }
      jcopy_sample_rows(iVar7,iVar6,iVar7,iVar6 + 1,1,iVar4);
      iVar6 = iVar6 + 2;
      param_3 = param_3 + 1;
    } while (iVar6 < *(int *)(param_1 + 0x13c));
  }
  return;
}

// ---- FUN_0070cd0c  @ 0x70cd0c
void FUN_0070cd0c(int *param_1)

{
  undefined1 auStack_dc [200];
  int local_14;
  
  local_14 = __stack_chk_guard;
  (**(code **)(*param_1 + 0xc))(param_1,auStack_dc);
  fprintf((FILE *)recv,"%s\n",auStack_dc);
  if (local_14 == __stack_chk_guard) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

// ---- FUN_0070cd58  @ 0x70cd58
void FUN_0070cd58(int *param_1)

{
  (**(code **)(*param_1 + 8))();
  jpeg_destroy(param_1);
                    /* WARNING: Subroutine does not return */
  exit(1);
}
