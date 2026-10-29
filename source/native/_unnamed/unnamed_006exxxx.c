// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 84 functions

// ---- FUN_006e002a  @ 0x6e002a
void FUN_006e002a(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                 double param_5,double param_6)

{
  undefined4 local_18;
  undefined4 uStack_14;
  undefined4 local_10;
  undefined4 uStack_c;
  
  param_6 = (double)CONCAT44(param_4,param_3) - param_6;
  param_5 = (double)CONCAT44(param_2,param_1) - param_5;
  uStack_c = (undefined4)((ulonglong)param_6 >> 0x20);
  local_10 = SUB84(param_6,0);
  uStack_14 = (undefined4)((ulonglong)param_5 >> 0x20);
  local_18 = SUB84(param_5,0);
  cpvlength(local_18,uStack_14,local_10,uStack_c);
  return;
}

// ---- FUN_006e0544  @ 0x6e0544
void FUN_006e0544(int param_1,int param_2)

{
  double in_d0;
  double in_d1;
  double in_d2;
  double in_d3;
  double in_d4;
  double in_d5;
  
  *(double *)(param_1 + 0x38) = *(double *)(param_1 + 0x38) + -in_d4 * *(double *)(param_1 + 0x10);
  *(double *)(param_1 + 0x40) = *(double *)(param_1 + 0x40) + -in_d5 * *(double *)(param_1 + 0x10);
  *(double *)(param_1 + 0x60) =
       *(double *)(param_1 + 0x60) + (in_d0 * -in_d5 - in_d1 * -in_d4) * *(double *)(param_1 + 0x20)
  ;
  *(double *)(param_2 + 0x40) = *(double *)(param_2 + 0x40) + in_d5 * *(double *)(param_2 + 0x10);
  *(double *)(param_2 + 0x38) = *(double *)(param_2 + 0x38) + in_d4 * *(double *)(param_2 + 0x10);
  *(double *)(param_2 + 0x60) =
       *(double *)(param_2 + 0x60) + (in_d2 * in_d5 - in_d3 * in_d4) * *(double *)(param_2 + 0x20);
  return;
}

// ---- FUN_006e05c2  @ 0x6e05c2
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x006e06be */
/* WARNING: Restarted to delay deadcode elimination for space: register */

void FUN_006e05c2(int param_1)

{
  int iVar1;
  int iVar2;
  double dVar3;
  double dVar4;
  
  iVar2 = *(int *)(param_1 + 4);
  iVar1 = *(int *)(param_1 + 8);
  if ((*(int *)(iVar2 + 0xbc) != 0) ||
     ((*(int *)(iVar2 + 0xb0) != 0 && (iVar2 == *(int *)(iVar2 + 0xb0) + 0x88)))) {
    if (*(int *)(iVar1 + 0xbc) != 0) {
      return;
    }
    if ((*(int *)(iVar1 + 0xb0) != 0) && (iVar1 == *(int *)(iVar1 + 0xb0) + 0x88)) {
      return;
    }
  }
  dVar4 = (((*(double *)(iVar1 + 0x40) + *(double *)(iVar1 + 0x60) * *(double *)(param_1 + 0x90)) -
           (*(double *)(iVar2 + 0x40) + *(double *)(iVar2 + 0x60) * *(double *)(param_1 + 0x80))) *
           *(double *)(param_1 + 0xb0) +
          ((*(double *)(iVar1 + 0x38) - *(double *)(param_1 + 0x98) * *(double *)(iVar1 + 0x60)) -
          (*(double *)(iVar2 + 0x38) - *(double *)(param_1 + 0x88) * *(double *)(iVar2 + 0x60))) *
          *(double *)(param_1 + 0xa8)) - *(double *)(param_1 + 0x70);
  dVar3 = -(dVar4 * *(double *)(param_1 + 0x78));
  *(double *)(param_1 + 0x70) = dVar4 + dVar3;
  dVar3 = dVar3 * *(double *)(param_1 + 0xa0);
  dVar4 = *(double *)(param_1 + 0xa8) * dVar3;
  FUN_006e0544((int)*(undefined8 *)(param_1 + 0x80),
               (int)((ulonglong)*(undefined8 *)(param_1 + 0x80) >> 0x20),
               (int)*(undefined8 *)(param_1 + 0x88),
               (int)((ulonglong)*(undefined8 *)(param_1 + 0x88) >> 0x20),
               (int)*(undefined8 *)(param_1 + 0x90),
               (int)((ulonglong)*(undefined8 *)(param_1 + 0x90) >> 0x20),
               (int)*(undefined8 *)(param_1 + 0x98),
               (int)((ulonglong)*(undefined8 *)(param_1 + 0x98) >> 0x20),SUB84(dVar4,0),
               (int)((ulonglong)dVar4 >> 0x20),SUB84(dVar3 * *(double *)(param_1 + 0xb0),0),iVar2,
               iVar1);
  return;
}

// ---- FUN_006e261e  @ 0x6e261e
void FUN_006e261e(int param_1,int param_2)

{
  double in_d0;
  double in_d1;
  double in_d2;
  double in_d3;
  double in_d4;
  double in_d5;
  
  *(double *)(param_1 + 0x38) = *(double *)(param_1 + 0x38) + -in_d4 * *(double *)(param_1 + 0x10);
  *(double *)(param_1 + 0x40) = *(double *)(param_1 + 0x40) + -in_d5 * *(double *)(param_1 + 0x10);
  *(double *)(param_1 + 0x60) =
       *(double *)(param_1 + 0x60) + (in_d0 * -in_d5 - in_d1 * -in_d4) * *(double *)(param_1 + 0x20)
  ;
  *(double *)(param_2 + 0x40) = *(double *)(param_2 + 0x40) + in_d5 * *(double *)(param_2 + 0x10);
  *(double *)(param_2 + 0x38) = *(double *)(param_2 + 0x38) + in_d4 * *(double *)(param_2 + 0x10);
  *(double *)(param_2 + 0x60) =
       *(double *)(param_2 + 0x60) + (in_d2 * in_d5 - in_d3 * in_d4) * *(double *)(param_2 + 0x20);
  return;
}

// ---- FUN_006e3520  @ 0x6e3520
undefined4 FUN_006e3520(int param_1)

{
  int iVar1;
  double *pdVar2;
  double *pdVar3;
  double in_d0;
  double in_d1;
  double in_d2;
  double dVar4;
  double dVar5;
  
  pdVar2 = *(double **)(param_1 + 0x74);
  iVar1 = 1;
  dVar5 = in_d1 * pdVar2[1] + in_d0 * *pdVar2;
  while (pdVar3 = pdVar2 + 2, iVar1 < *(int *)(param_1 + 0x68)) {
    iVar1 = iVar1 + 1;
    dVar4 = in_d1 * pdVar2[3] + in_d0 * *pdVar3;
    pdVar2 = pdVar3;
    if (-1 < (int)((uint)(dVar5 < dVar4) << 0x1f)) {
      dVar5 = dVar4;
    }
  }
  return SUB84(dVar5 - in_d2,0);
}

// ---- FUN_006e3572  @ 0x6e3572
undefined4 FUN_006e3572(int param_1)

{
  double *pdVar1;
  int iVar2;
  double in_d0;
  double in_d1;
  
  iVar2 = 0;
  pdVar1 = *(double **)(param_1 + 0x78);
  while( true ) {
    if (*(int *)(param_1 + 0x68) <= iVar2) {
      return 1;
    }
    if (0.0 < (in_d1 * pdVar1[1] + in_d0 * *pdVar1) - pdVar1[2]) break;
    iVar2 = iVar2 + 1;
    pdVar1 = pdVar1 + 3;
  }
  return 0;
}

// ---- FUN_006e35ba  @ 0x6e35ba
int FUN_006e35ba(int param_1,int *param_2)

{
  int iVar1;
  
  iVar1 = *param_2;
  if (iVar1 < 6) {
    *param_2 = iVar1 + 1;
  }
  return iVar1 * 0x88 + param_1;
}

// ---- FUN_006e35cc  @ 0x6e35cc
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x006e35e8 */
/* WARNING: Restarted to delay deadcode elimination for space: register */

int FUN_006e35cc(undefined4 param_1,double *param_2,int param_3,double *param_4)

{
  int iVar1;
  int iVar2;
  int iVar3;
  double dVar4;
  double dVar5;
  
  dVar4 = *param_2;
  FUN_006e3520(SUB84(dVar4,0),(int)((ulonglong)dVar4 >> 0x20),SUB84(param_2[1],0),
               (int)((ulonglong)param_2[1] >> 0x20),SUB84(param_2[2],0));
  if (0.0 < dVar4) {
LAB_006e3644:
    iVar1 = -1;
  }
  else {
    iVar1 = 0;
    for (iVar2 = 1; iVar2 < param_3; iVar2 = iVar2 + 1) {
      dVar5 = param_2[3];
      FUN_006e3520(SUB84(dVar5,0),(int)((ulonglong)dVar5 >> 0x20),SUB84(param_2[4],0),
                   (int)((ulonglong)param_2[4] >> 0x20),SUB84(param_2[5],0),param_1);
      if (0.0 < dVar5) goto LAB_006e3644;
      iVar3 = iVar2;
      if (dVar5 <= dVar4) {
        iVar3 = iVar1;
        dVar5 = dVar4;
      }
      iVar1 = iVar3;
      dVar4 = dVar5;
      param_2 = param_2 + 3;
    }
    *param_4 = dVar4;
  }
  return iVar1;
}

// ---- FUN_006e3650  @ 0x6e3650
void FUN_006e3650(undefined4 param_1,undefined4 param_2,int param_3,int param_4)

{
  undefined4 uVar1;
  double *pdVar2;
  int iVar3;
  double in_d1;
  double dVar4;
  double dVar5;
  double dVar6;
  double dVar7;
  double dVar8;
  double dVar9;
  double dVar10;
  double dVar11;
  double dVar12;
  undefined4 local_78;
  undefined4 uStack_74;
  undefined4 local_70;
  undefined4 uStack_6c;
  
  dVar11 = *(double *)(param_3 + 200);
  dVar7 = *(double *)(param_3 + 0xa0);
  dVar8 = *(double *)(param_3 + 0xb0);
  dVar12 = *(double *)(param_3 + 0xc0);
  dVar4 = *(double *)(param_3 + 0xa8);
  dVar5 = *(double *)(param_3 + 0xb8);
  for (iVar3 = 0; iVar3 < *(int *)(param_4 + 0x68); iVar3 = iVar3 + 1) {
    pdVar2 = (double *)(*(int *)(param_4 + 0x74) + iVar3 * 0x10);
    dVar9 = pdVar2[1];
    dVar10 = *pdVar2;
    if ((((int)((uint)(dVar9 * dVar11 * in_d1 + dVar10 * dVar12 * in_d1 <
                      *(double *)(param_3 + 0x98) +
                      (*(double *)(param_3 + 200) * *(double *)(param_3 + 0xa8) +
                      *(double *)(param_3 + 0xc0) * *(double *)(param_3 + 0xa0)) * in_d1) << 0x1f) <
          0) && (dVar6 = *(double *)(param_3 + 0xc0) * dVar9 - *(double *)(param_3 + 200) * dVar10,
                dVar6 <= dVar12 * dVar4 - dVar11 * dVar7)) &&
       (dVar12 * dVar5 - dVar11 * dVar8 <= dVar6)) {
      uVar1 = FUN_006e35ba(param_1,param_2);
      uStack_6c = (undefined4)((ulonglong)dVar9 >> 0x20);
      local_70 = SUB84(dVar9,0);
      local_78 = SUB84(dVar10,0);
      uStack_74 = (undefined4)((ulonglong)dVar10 >> 0x20);
      cpContactInit(uVar1,uStack_6c,local_78,uStack_74,local_70,uStack_6c,dVar12 * in_d1,
                    dVar11 * in_d1);
    }
  }
  return;
}

// ---- FUN_006e3778  @ 0x6e3778
undefined4 FUN_006e3778(undefined4 param_1)

{
  undefined4 extraout_r0;
  undefined4 uVar1;
  undefined4 extraout_r1;
  double in_d0;
  double in_d1;
  double in_d2;
  double in_d3;
  double in_d4;
  double in_d5;
  double dVar2;
  double dVar3;
  double dVar4;
  double dVar5;
  double dVar6;
  double dVar7;
  double dVar8;
  undefined4 local_60;
  undefined4 uStack_5c;
  undefined4 uStack_54;
  
  dVar5 = in_d3 - in_d1;
  dVar6 = in_d2 - in_d0;
  dVar4 = in_d4 + in_d5;
  if (dVar4 * dVar4 <= dVar5 * dVar5 + dVar6 * dVar6) {
    uVar1 = 0;
  }
  else {
    sqrt(in_d0);
    dVar3 = (double)CONCAT44(extraout_r1,extraout_r0);
    dVar2 = INFINITY;
    if (dVar3 != 0.0) {
      dVar2 = dVar3;
    }
    dVar8 = (in_d4 - dVar4 * 0.5) / dVar2 + 0.5;
    dVar7 = in_d0 + dVar6 * dVar8;
    dVar8 = in_d1 + dVar5 * dVar8;
    uStack_54 = (undefined4)((ulonglong)dVar8 >> 0x20);
    local_60 = SUB84(dVar7,0);
    uStack_5c = (undefined4)((ulonglong)dVar7 >> 0x20);
    cpContactInit(param_1,uStack_54,local_60,uStack_5c,dVar8,dVar6 * (1.0 / dVar2),
                  dVar5 * (1.0 / dVar2),dVar3 - dVar4,0);
    uVar1 = 1;
  }
  return uVar1;
}

// ---- FUN_006e3848  @ 0x6e3848
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x006e39bc */
/* WARNING: Restarted to delay deadcode elimination for space: register */

undefined4 FUN_006e3848(int param_1,int param_2,undefined4 param_3)

{
  uint uVar1;
  undefined4 uVar2;
  int extraout_r1;
  double *pdVar3;
  int iVar4;
  double *pdVar5;
  int iVar6;
  int iVar7;
  uint in_fpscr;
  byte bVar8;
  undefined8 uVar9;
  undefined8 uVar10;
  double dVar11;
  double dVar12;
  undefined4 in_s9;
  double dVar13;
  double dVar14;
  double dVar15;
  double dVar16;
  double dVar17;
  double dVar18;
  double dVar19;
  double dVar20;
  double dVar21;
  double dVar22;
  double dVar23;
  undefined4 local_78;
  undefined4 uStack_74;
  undefined4 uStack_6c;
  
  dVar22 = *(double *)(param_1 + 0x88);
  dVar21 = *(double *)(param_1 + 0x80);
  pdVar3 = *(double **)(param_2 + 0x78);
  dVar17 = *(double *)(param_1 + 0x78);
  pdVar5 = pdVar3;
  iVar6 = 0;
  dVar18 = ((dVar22 * pdVar3[1] + dVar21 * *pdVar3) - pdVar3[2]) - dVar17;
  for (iVar4 = 0; bVar8 = (byte)(in_fpscr >> 0x18), iVar4 < *(int *)(param_2 + 0x68);
      iVar4 = iVar4 + 1) {
    dVar15 = ((dVar22 * pdVar5[1] + dVar21 * *pdVar5) - pdVar5[2]) - dVar17;
    if (0.0 < dVar15) {
      return 0;
    }
    uVar1 = in_fpscr & 0xfffffff | (uint)(dVar15 < dVar18) << 0x1f |
            (uint)(dVar15 == dVar18) << 0x1e;
    in_fpscr = uVar1 | (uint)(NAN(dVar15) || NAN(dVar18)) << 0x1c;
    bVar8 = (byte)(uVar1 >> 0x18);
    iVar7 = iVar4;
    if ((bool)(bVar8 >> 6 & 1) || bVar8 >> 7 != ((byte)(in_fpscr >> 0x1c) & 1)) {
      iVar7 = iVar6;
      dVar15 = dVar18;
    }
    pdVar5 = pdVar5 + 3;
    iVar6 = iVar7;
    dVar18 = dVar15;
  }
  iVar4 = *(int *)(param_2 + 0x74);
  dVar20 = pdVar3[iVar6 * 3];
  pdVar5 = (double *)(iVar4 + iVar6 * 0x10);
  dVar19 = (pdVar3 + iVar6 * 3)[1];
  dVar15 = *pdVar5;
  dVar23 = pdVar5[1];
  __aeabi_idivmod(iVar6 + 1,*(int *)(param_2 + 0x68));
  dVar16 = dVar20 * dVar22 - dVar19 * dVar21;
  pdVar5 = (double *)(iVar4 + extraout_r1 * 0x10);
  dVar11 = *pdVar5;
  dVar12 = pdVar5[1];
  dVar13 = dVar20 * dVar12 - dVar19 * dVar11;
  dVar14 = dVar20 * dVar23 - dVar19 * dVar15;
  if ((char)(bVar8 & 0xf | (byte)(((uint)(dVar16 < dVar13) << 0x1f) >> 0x18) |
             (byte)(((uint)(dVar16 == dVar13) << 0x1e) >> 0x18) |
            (byte)(((uint)(dVar13 <= dVar16) << 0x1d) >> 0x18)) < '\0') {
    uVar9 = *(undefined8 *)(param_1 + 0x80);
    uVar10 = *(undefined8 *)(param_1 + 0x88);
    dVar15 = dVar11;
    dVar23 = dVar12;
  }
  else {
    if ((char)(bVar8 & 0xf | (byte)(((uint)(dVar16 < dVar14) << 0x1f) >> 0x18) |
               (byte)(((uint)(dVar16 == dVar14) << 0x1e) >> 0x18) |
              (byte)(((uint)(dVar14 <= dVar16) << 0x1d) >> 0x18)) < '\0') {
      dVar17 = dVar17 + dVar18 * 0.5;
      dVar21 = dVar21 - dVar20 * dVar17;
      uStack_6c = (undefined4)((ulonglong)(dVar22 - dVar19 * dVar17) >> 0x20);
      local_78 = SUB84(dVar21,0);
      uStack_74 = (undefined4)((ulonglong)dVar21 >> 0x20);
      cpContactInit(param_3,uStack_6c,local_78,uStack_74);
      return 1;
    }
    uVar9 = *(undefined8 *)(param_1 + 0x80);
    uVar10 = *(undefined8 *)(param_1 + 0x88);
  }
  uVar2 = FUN_006e3778((int)uVar9,(int)((ulonglong)uVar9 >> 0x20),(int)uVar10,
                       (int)((ulonglong)uVar10 >> 0x20),SUB84(dVar15,0),
                       (int)((ulonglong)dVar15 >> 0x20),SUB84(dVar23,0),
                       (int)((ulonglong)dVar23 >> 0x20),SUB84(dVar17,0),in_s9,0,param_3);
  return uVar2;
}

// ---- FUN_006e3e88  @ 0x6e3e88
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x006e3f40 */
/* WARNING: Restarted to delay deadcode elimination for space: register */

int FUN_006e3e88(undefined4 param_1,int param_2,int param_3)

{
  uint uVar1;
  byte bVar2;
  int iVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined4 *puVar6;
  double *pdVar7;
  double *pdVar8;
  int iVar9;
  uint in_fpscr;
  double in_d0;
  double in_d1;
  double dVar10;
  int local_70;
  int local_6c [5];
  undefined4 local_58;
  undefined4 uStack_54;
  undefined4 local_50;
  undefined4 uStack_4c;
  
  uVar5 = (undefined4)((ulonglong)in_d0 >> 0x20);
  local_70 = 0;
  for (iVar9 = 0; iVar9 < *(int *)(param_2 + 0x68); iVar9 = iVar9 + 1) {
    puVar6 = (undefined4 *)(*(int *)(param_2 + 0x74) + iVar9 * 0x10);
    local_58 = *puVar6;
    uStack_54 = puVar6[1];
    local_50 = puVar6[2];
    uStack_4c = puVar6[3];
    iVar3 = FUN_006e3572(local_58,uVar5,local_50,param_3);
    if (iVar3 != 0) {
      uVar4 = FUN_006e35ba(param_1,&local_70);
      cpContactInit(uVar4,uStack_4c,local_58,uStack_54);
    }
  }
  for (iVar9 = 0; iVar9 < *(int *)(param_3 + 0x68); iVar9 = iVar9 + 1) {
    puVar6 = (undefined4 *)(*(int *)(param_3 + 0x74) + iVar9 * 0x10);
    local_58 = *puVar6;
    uStack_54 = puVar6[1];
    local_50 = puVar6[2];
    uStack_4c = puVar6[3];
    iVar3 = FUN_006e3572(local_58,uVar5,local_50,param_2);
    if (iVar3 != 0) {
      uVar4 = FUN_006e35ba(param_1,&local_70);
      cpContactInit(uVar4,uStack_4c,local_58,uStack_54);
    }
  }
  local_6c[0] = local_70;
  if (local_70 == 0) {
    for (iVar9 = 0; iVar9 < *(int *)(param_2 + 0x68); iVar9 = iVar9 + 1) {
      pdVar7 = (double *)(*(int *)(param_2 + 0x74) + iVar9 * 0x10);
      local_58 = *(undefined4 *)pdVar7;
      uStack_54 = *(undefined4 *)((int)pdVar7 + 4);
      local_50 = *(undefined4 *)(pdVar7 + 1);
      uStack_4c = *(undefined4 *)((int)pdVar7 + 0xc);
      pdVar8 = *(double **)(param_3 + 0x78);
      for (iVar3 = 0; iVar3 < *(int *)(param_3 + 0x68); iVar3 = iVar3 + 1) {
        dVar10 = pdVar8[1] * -in_d1 + *pdVar8 * -in_d0;
        uVar1 = in_fpscr & 0xfffffff;
        in_fpscr = uVar1 | (uint)(dVar10 < 0.0) << 0x1f | (uint)(dVar10 == 0.0) << 0x1e |
                   (uint)(0.0 <= dVar10) << 0x1d;
        if (-1 < (int)in_fpscr) {
          dVar10 = (pdVar8[1] * pdVar7[1] + *pdVar8 * *pdVar7) - pdVar8[2];
          uVar1 = uVar1 | (uint)(dVar10 < 0.0) << 0x1f | (uint)(dVar10 == 0.0) << 0x1e;
          in_fpscr = uVar1 | (uint)NAN(dVar10) << 0x1c;
          bVar2 = (byte)(uVar1 >> 0x18);
          if (!(bool)(bVar2 >> 6 & 1) && bVar2 >> 7 == ((byte)(in_fpscr >> 0x1c) & 1))
          goto LAB_006e4056;
        }
        pdVar8 = pdVar8 + 3;
      }
      uVar5 = FUN_006e35ba(param_1,local_6c);
      cpContactInit(uVar5,uStack_4c,local_58,uStack_54);
LAB_006e4056:
    }
    for (iVar9 = 0; iVar9 < *(int *)(param_3 + 0x68); iVar9 = iVar9 + 1) {
      pdVar7 = (double *)(*(int *)(param_3 + 0x74) + iVar9 * 0x10);
      local_58 = *(undefined4 *)pdVar7;
      uStack_54 = *(undefined4 *)((int)pdVar7 + 4);
      local_50 = *(undefined4 *)(pdVar7 + 1);
      uStack_4c = *(undefined4 *)((int)pdVar7 + 0xc);
      pdVar8 = *(double **)(param_2 + 0x78);
      for (iVar3 = 0; iVar3 < *(int *)(param_2 + 0x68); iVar3 = iVar3 + 1) {
        dVar10 = pdVar8[1] * in_d1 + *pdVar8 * in_d0;
        uVar1 = in_fpscr & 0xfffffff;
        in_fpscr = uVar1 | (uint)(dVar10 < 0.0) << 0x1f | (uint)(dVar10 == 0.0) << 0x1e |
                   (uint)(0.0 <= dVar10) << 0x1d;
        if (-1 < (int)in_fpscr) {
          dVar10 = (pdVar8[1] * pdVar7[1] + *pdVar8 * *pdVar7) - pdVar8[2];
          uVar1 = uVar1 | (uint)(dVar10 < 0.0) << 0x1f | (uint)(dVar10 == 0.0) << 0x1e;
          in_fpscr = uVar1 | (uint)NAN(dVar10) << 0x1c;
          bVar2 = (byte)(uVar1 >> 0x18);
          if (!(bool)(bVar2 >> 6 & 1) && bVar2 >> 7 == ((byte)(in_fpscr >> 0x1c) & 1))
          goto LAB_006e410c;
        }
        pdVar8 = pdVar8 + 3;
      }
      uVar5 = FUN_006e35ba(param_1,local_6c);
      cpContactInit(uVar5,uStack_4c,local_58,uStack_54);
LAB_006e410c:
    }
  }
  return local_6c[0];
}

// ---- FUN_006e4128  @ 0x6e4128
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x006e41a2 */
/* WARNING: Restarted to delay deadcode elimination for space: register */

undefined4 FUN_006e4128(int param_1,int param_2,undefined4 param_3)

{
  int iVar1;
  int iVar2;
  undefined4 uVar3;
  double *pdVar4;
  double dVar5;
  double dVar6;
  double local_38;
  double local_30 [3];
  
  iVar1 = FUN_006e35cc(param_2,*(undefined4 *)(param_1 + 0x78),*(undefined4 *)(param_1 + 0x68),
                       &local_38);
  if ((iVar1 != -1) &&
     (iVar2 = FUN_006e35cc(param_1,*(undefined4 *)(param_2 + 0x78),*(undefined4 *)(param_2 + 0x68),
                           local_30), iVar2 != -1)) {
    if (local_38 <= local_30[0]) {
      pdVar4 = (double *)(iVar2 * 0x18 + *(int *)(param_2 + 0x78));
      dVar6 = -pdVar4[1];
      dVar5 = -*pdVar4;
      local_38 = local_30[0];
    }
    else {
      pdVar4 = (double *)(iVar1 * 0x18 + *(int *)(param_1 + 0x78));
      dVar5 = *pdVar4;
      dVar6 = pdVar4[1];
    }
    uVar3 = FUN_006e3e88(SUB84(dVar5,0),(int)((ulonglong)dVar5 >> 0x20),SUB84(dVar6,0),
                         (int)((ulonglong)dVar6 >> 0x20),SUB84(local_38,0),param_3,param_1,param_2);
    return uVar3;
  }
  return 0;
}

// ---- FUN_006e44a8  @ 0x6e44a8
void FUN_006e44a8(double *param_1,int param_2,undefined4 param_3,undefined4 param_4,double param_5,
                 double param_6,double param_7)

{
  double *pdVar1;
  double *pdVar2;
  int iVar3;
  double dVar4;
  double dVar5;
  double dVar6;
  double dVar7;
  double dVar8;
  double dVar9;
  
  iVar3 = 0;
  pdVar2 = *(double **)(param_2 + 0x70);
  pdVar1 = *(double **)(param_2 + 0x78);
  while( true ) {
    if (*(int *)(param_2 + 0x68) <= iVar3) break;
    iVar3 = iVar3 + 1;
    dVar5 = pdVar2[1] * param_6 + *pdVar2 * param_7;
    dVar6 = *pdVar2 * param_6 - pdVar2[1] * param_7;
    pdVar1[1] = dVar5;
    *pdVar1 = dVar6;
    pdVar1[2] = param_5 * dVar5 + (double)CONCAT44(param_4,param_3) * dVar6 + pdVar2[2];
    pdVar2 = pdVar2 + 3;
    pdVar1 = pdVar1 + 3;
  }
  pdVar1 = *(double **)(param_2 + 0x6c);
  pdVar2 = *(double **)(param_2 + 0x74);
  for (iVar3 = 0; iVar3 < *(int *)(param_2 + 0x68); iVar3 = iVar3 + 1) {
    dVar6 = pdVar1[1];
    dVar5 = *pdVar1;
    pdVar1 = pdVar1 + 2;
    *pdVar2 = (double)CONCAT44(param_4,param_3) + (dVar5 * param_6 - dVar6 * param_7);
    pdVar2[1] = param_5 + dVar6 * param_6 + dVar5 * param_7;
    pdVar2 = pdVar2 + 2;
  }
  pdVar2 = *(double **)(param_2 + 0x74);
  dVar7 = *pdVar2;
  dVar8 = pdVar2[1];
  iVar3 = 1;
  dVar5 = dVar8;
  dVar6 = dVar7;
  while (pdVar1 = pdVar2 + 2, iVar3 < *(int *)(param_2 + 0x68)) {
    dVar9 = *pdVar1;
    dVar4 = pdVar2[3];
    iVar3 = iVar3 + 1;
    if (-1 < (int)((uint)(dVar6 < dVar9) << 0x1f)) {
      dVar6 = dVar9;
    }
    if (dVar9 < dVar7) {
      dVar9 = dVar7;
    }
    dVar7 = dVar9;
    if (-1 < (int)((uint)(dVar8 < dVar4) << 0x1f)) {
      dVar8 = dVar4;
    }
    pdVar2 = pdVar1;
    if (dVar5 <= dVar4) {
      dVar5 = dVar4;
    }
  }
  *param_1 = dVar6;
  param_1[1] = dVar8;
  param_1[2] = dVar7;
  param_1[3] = dVar5;
  return;
}

// ---- FUN_006e45c2  @ 0x6e45c2
undefined4
FUN_006e45c2(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,double param_5)

{
  double dVar1;
  undefined4 uVar2;
  double *pdVar3;
  int iVar4;
  
  dVar1 = (double)CONCAT44(param_4,param_3);
  if ((((-1 < (int)((uint)(*(double *)(param_1 + 8) < dVar1) << 0x1f)) ||
       (*(double *)(param_1 + 0x18) <= dVar1)) ||
      (-1 < (int)((uint)(*(double *)(param_1 + 0x10) < param_5) << 0x1f))) ||
     (*(double *)(param_1 + 0x20) <= param_5)) {
LAB_006e460c:
    uVar2 = 0;
  }
  else {
    pdVar3 = *(double **)(param_1 + 0x78);
    for (iVar4 = 0; iVar4 < *(int *)(param_1 + 0x68); iVar4 = iVar4 + 1) {
      if (0.0 < (param_5 * pdVar3[1] + dVar1 * *pdVar3) - pdVar3[2]) goto LAB_006e460c;
      pdVar3 = pdVar3 + 3;
    }
    uVar2 = 1;
  }
  return uVar2;
}

// ---- FUN_006e476c  @ 0x6e476c
void FUN_006e476c(int param_1)

{
  free(*(void **)(param_1 + 0x6c));
  free(*(void **)(param_1 + 0x74));
  free(*(void **)(param_1 + 0x70));
  free(*(void **)(param_1 + 0x78));
  return;
}

// ---- FUN_006e478c  @ 0x6e478c
void FUN_006e478c(int param_1,size_t param_2,double *param_3)

{
  void *pvVar1;
  int extraout_r1;
  double *pdVar2;
  int iVar3;
  double *pdVar4;
  int iVar5;
  double in_d0;
  double in_d1;
  double dVar6;
  double dVar7;
  double dVar8;
  double dVar9;
  double dVar10;
  undefined4 local_58;
  undefined4 uStack_54;
  undefined4 local_50;
  undefined4 uStack_4c;
  
  *(size_t *)(param_1 + 0x68) = param_2;
  pvVar1 = calloc(param_2,0x10);
  iVar3 = 0;
  *(void **)(param_1 + 0x6c) = pvVar1;
  pvVar1 = calloc(param_2,0x10);
  *(void **)(param_1 + 0x74) = pvVar1;
  pvVar1 = calloc(param_2,0x18);
  *(void **)(param_1 + 0x70) = pvVar1;
  pvVar1 = calloc(param_2,0x18);
  *(void **)(param_1 + 0x78) = pvVar1;
  pdVar4 = param_3;
  while (iVar3 < (int)param_2) {
    iVar5 = iVar3 * 0x10;
    iVar3 = iVar3 + 1;
    __aeabi_idivmod(iVar3,param_2);
    pdVar2 = pdVar4 + 1;
    dVar7 = in_d0 + *pdVar4;
    pdVar4 = pdVar4 + 2;
    dVar8 = in_d1 + *pdVar2;
    dVar9 = (in_d0 + param_3[extraout_r1 * 2]) - dVar7;
    dVar10 = -((in_d1 + (param_3 + extraout_r1 * 2)[1]) - dVar8);
    uStack_4c = (undefined4)((ulonglong)dVar9 >> 0x20);
    local_50 = SUB84(dVar9,0);
    uStack_54 = (undefined4)((ulonglong)dVar10 >> 0x20);
    local_58 = SUB84(dVar10,0);
    dVar6 = (double)cpvlength(local_58,uStack_54,local_50,uStack_4c);
    pdVar2 = (double *)(*(int *)(param_1 + 0x6c) + iVar5);
    pdVar2[1] = dVar8;
    *pdVar2 = dVar7;
    iVar5 = iVar3 * 0x18 + -0x18;
    pdVar2 = (double *)(*(int *)(param_1 + 0x70) + iVar5);
    dVar9 = dVar9 * (1.0 / dVar6);
    dVar10 = dVar10 * (1.0 / dVar6);
    pdVar2[1] = dVar9;
    *pdVar2 = dVar10;
    *(double *)(iVar5 + *(int *)(param_1 + 0x70) + 0x10) = dVar9 * dVar8 + dVar10 * dVar7;
  }
  return;
}

// ---- FUN_006e535e  @ 0x6e535e
bool FUN_006e535e(int param_1)

{
  if (*(int *)(param_1 + 0xb0) != 0) {
    return param_1 == *(int *)(param_1 + 0xb0) + 0x88;
  }
  return false;
}

// ---- FUN_006e5372  @ 0x6e5372
bool FUN_006e5372(int *param_1,int param_2)

{
  if ((*param_1 == *(int *)(param_2 + 8)) && (param_1[1] == *(int *)(param_2 + 0xc))) {
    return true;
  }
  if (param_1[1] == *(int *)(param_2 + 8)) {
    return *param_1 == *(int *)(param_2 + 0xc);
  }
  return false;
}

// ---- FUN_006e539a  @ 0x6e539a
bool FUN_006e539a(int *param_1,int *param_2)

{
  if ((*param_1 == *param_2) && (param_1[1] == param_2[1])) {
    return true;
  }
  if (param_1[1] == *param_2) {
    return *param_1 == param_2[1];
  }
  return false;
}

// ---- FUN_006e53f2  @ 0x6e53f2
int FUN_006e53f2(int param_1)

{
  int iVar1;
  
  if (*(int *)(param_1 + 0xb8) != 0) {
    iVar1 = FUN_006e53f2();
    *(int *)(param_1 + 0xb8) = iVar1;
    return iVar1;
  }
  return param_1;
}

// ---- FUN_006e540a  @ 0x6e540a
undefined4 * FUN_006e540a(undefined4 *param_1)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  
  puVar1 = malloc(0xc);
  uVar2 = param_1[1];
  uVar3 = param_1[2];
  *puVar1 = *param_1;
  puVar1[1] = uVar2;
  puVar1[2] = uVar3;
  return puVar1;
}

// ---- FUN_006e5422  @ 0x6e5422
undefined4 * FUN_006e5422(undefined4 *param_1)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  
  puVar1 = malloc(0x1c);
  uVar2 = param_1[1];
  uVar3 = param_1[2];
  uVar4 = param_1[3];
  *puVar1 = *param_1;
  puVar1[1] = uVar2;
  puVar1[2] = uVar3;
  puVar1[3] = uVar4;
  uVar2 = param_1[5];
  uVar3 = param_1[6];
  puVar1[4] = param_1[4];
  puVar1[5] = uVar2;
  puVar1[6] = uVar3;
  return puVar1;
}

// ---- FUN_006e5440  @ 0x6e5440
undefined4 FUN_006e5440(undefined4 *param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  code *pcVar2;
  int iVar3;
  int iVar4;
  
  if (*(double *)(param_2 + 0x28) <= 1.79769313486232e+308) {
    iVar4 = *(int *)(param_1[2] + 4);
    iVar3 = *(int *)(param_1[3] + 4);
    iVar1 = FUN_006e535e(iVar4);
    if (((iVar1 != 0) || (*(int *)(iVar4 + 0xbc) != 0)) &&
       ((iVar1 = FUN_006e535e(iVar3), iVar1 != 0 || (*(int *)(iVar3 + 0xbc) != 0)))) {
      param_1[0xf] = 3;
      return 1;
    }
    if (param_1[0xf] == 3) {
      param_1[0xf] = 0;
    }
  }
  iVar1 = *(int *)(param_2 + 0x34);
  iVar3 = param_1[0xc];
  if ((iVar1 != iVar3) && (param_1[0xf] != 4)) {
    pcVar2 = *(code **)(param_1[0xd] + 0x14);
    (*pcVar2)(param_1,param_2,*(undefined4 *)(param_1[0xd] + 0x18),pcVar2,param_4);
    param_1[0xf] = 4;
  }
  if ((uint)(iVar1 - iVar3) < cp_contact_persistence) {
    return 1;
  }
  param_1[1] = 0;
  *param_1 = 0;
  cpArrayPush(*(undefined4 *)(param_2 + 0x4c),param_1);
  return 0;
}

// ---- FUN_006e54e0  @ 0x6e54e0
void FUN_006e54e0(undefined4 *param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  void *pvVar2;
  int iVar3;
  int iVar4;
  
  if (**(int **)(param_2 + 0x4c) == 0) {
    pvVar2 = malloc(0x8000);
    cpArrayPush(*(undefined4 *)(param_2 + 0x58),pvVar2);
    iVar4 = 0;
    do {
      iVar3 = (int)pvVar2 + iVar4;
      iVar4 = iVar4 + 0x40;
      cpArrayPush(*(undefined4 *)(param_2 + 0x4c),iVar3);
    } while (iVar4 != 0x8000);
  }
  uVar1 = cpArrayPop(*(undefined4 *)(param_2 + 0x4c));
  cpArbiterInit(uVar1,*param_1,param_1[1],param_4);
  return;
}

// ---- FUN_006e554a  @ 0x6e554a
void FUN_006e554a(int param_1,undefined4 param_2)

{
  cpSpaceHashInsert(param_2,param_1,*(undefined4 *)(param_1 + 100),*(undefined4 *)(param_1 + 0x24),
                    *(undefined4 *)(param_1 + 8),*(undefined4 *)(param_1 + 0xc),
                    *(undefined4 *)(param_1 + 0x10),*(undefined4 *)(param_1 + 0x14),
                    *(undefined4 *)(param_1 + 0x18),*(undefined4 *)(param_1 + 0x1c),
                    *(undefined4 *)(param_1 + 0x20),*(undefined4 *)(param_1 + 0x24));
  return;
}

// ---- FUN_006e5572  @ 0x6e5572
void FUN_006e5572(undefined4 param_1)

{
  undefined1 auStack_28 [36];
  
  cpShapeCacheBB(auStack_28,param_1);
  return;
}

// ---- FUN_006e55bc  @ 0x6e55bc
void FUN_006e55bc(double *param_1,int param_2,uint *param_3)

{
  if (((*(uint *)(param_2 + 0x58) == 0) || (param_3[1] != *(uint *)(param_2 + 0x58))) &&
     ((*(uint *)(param_2 + 0x5c) & *param_3) != 0)) {
    if (((*param_1 <= *(double *)(param_2 + 0x18)) && (*(double *)(param_2 + 8) <= param_1[2])) &&
       ((param_1[1] <= *(double *)(param_2 + 0x20) && (*(double *)(param_2 + 0x10) <= param_1[3]))))
    {
      (*(code *)param_3[2])(param_2,param_3[3]);
    }
  }
  return;
}

// ---- FUN_006e5622  @ 0x6e5622
undefined4 FUN_006e5622(int param_1,int *param_2)

{
  if ((param_2[1] != *(int *)(param_1 + 8)) && (param_2[1] != *(int *)(param_1 + 0xc))) {
    return 1;
  }
  (**(code **)(*(int *)(param_1 + 0x34) + 0x14))
            (param_1,*param_2,*(undefined4 *)(*(int *)(param_1 + 0x34) + 0x18));
  cpArrayPush(*(undefined4 *)(*param_2 + 0x4c),param_1);
  return 0;
}

// ---- FUN_006e5654  @ 0x6e5654
void FUN_006e5654(int param_1,undefined4 param_2)

{
  int iVar1;
  
  if (*(int *)(param_1 + 0xbc) == 0) {
    iVar1 = FUN_006e53f2();
    if (*(int *)(iVar1 + 0xbc) == 0) {
      cpArrayPush(param_2,iVar1);
      *(int *)(param_1 + 0xbc) = iVar1;
    }
    else {
      if (iVar1 == param_1) {
        return;
      }
      *(int *)(param_1 + 0xbc) = *(int *)(iVar1 + 0xbc);
    }
    *(int *)(iVar1 + 0xbc) = param_1;
  }
  return;
}

// ---- FUN_006e5688  @ 0x6e5688
void FUN_006e5688(undefined4 *param_1,int param_2,uint *param_3)

{
  int iVar1;
  
  if (((*(uint *)(param_2 + 0x58) == 0) || (param_3[1] != *(uint *)(param_2 + 0x58))) &&
     ((*(uint *)(param_2 + 0x5c) & *param_3) != 0)) {
    iVar1 = cpShapePointQuery(param_2,param_1[3],*param_1,param_1[1],param_1[2],param_1[3],param_3);
    if (iVar1 != 0) {
      (*(code *)param_3[2])(param_2,param_3[3]);
    }
  }
  return;
}

// ---- FUN_006e56c4  @ 0x6e56c4
undefined8 FUN_006e56c4(undefined4 *param_1,int param_2,undefined4 param_3)

{
  int iVar1;
  undefined1 auStack_38 [8];
  undefined4 local_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  
  if (((*(int *)(param_2 + 0x58) == 0) || (param_1[9] != *(int *)(param_2 + 0x58))) &&
     ((*(uint *)(param_2 + 0x5c) & param_1[8]) != 0)) {
    iVar1 = cpShapeSegmentQuery(param_2,param_1[3],*param_1,param_1[1],param_1[2],param_1[3],
                                param_1[4],param_1[5],param_1[6],param_1[7],auStack_38);
    if (iVar1 != 0) {
      if ((code *)param_1[10] != (code *)0x0) {
        (*(code *)param_1[10])
                  (param_2,uStack_24,local_30,uStack_2c,uStack_28,uStack_24,uStack_20,uStack_1c,
                   param_3);
      }
      param_1[0xb] = 1;
    }
  }
  return 0x3ff0000000000000;
}

// ---- FUN_006e5734  @ 0x6e5734
undefined8 FUN_006e5734(undefined4 *param_1,int param_2,undefined4 *param_3)

{
  int iVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 local_38 [2];
  double local_30;
  undefined4 uStack_28;
  undefined4 uStack_24;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  
  if (((*(int *)(param_2 + 0x58) == 0) || (param_1[9] != *(int *)(param_2 + 0x58))) &&
     ((*(uint *)(param_2 + 0x5c) & param_1[8]) != 0)) {
    iVar1 = cpShapeSegmentQuery(param_2,param_1[3],*param_1,param_1[1],param_1[2],param_1[3],
                                param_1[4],param_1[5],param_1[6],param_1[7],local_38);
    if (iVar1 != 0) {
      if ((int)((uint)(local_30 < *(double *)(param_3 + 2)) << 0x1f) < 0) {
        *(double *)(param_3 + 2) = local_30;
        *param_3 = local_38[0];
        param_3[4] = uStack_28;
        param_3[5] = uStack_24;
        param_3[6] = uStack_20;
        param_3[7] = uStack_1c;
      }
      uVar3 = (undefined4)((ulonglong)local_30 >> 0x20);
      uVar2 = SUB84(local_30,0);
      goto LAB_006e57aa;
    }
  }
  uVar3 = 0x3ff00000;
  uVar2 = 0;
LAB_006e57aa:
  return CONCAT44(uVar3,uVar2);
}

// ---- FUN_006e57b4  @ 0x6e57b4
void FUN_006e57b4(int param_1)

{
  int iVar1;
  int iVar2;
  int iVar3;
  
  if (*(int *)(param_1 + 0xbc) == 0) {
    return;
  }
  iVar2 = *(int *)(param_1 + 0xb0);
  iVar1 = param_1;
  do {
    iVar3 = *(int *)(iVar1 + 0xbc);
    *(undefined4 *)(iVar1 + 0xbc) = 0;
    *(undefined4 *)(iVar1 + 200) = 0;
    *(undefined4 *)(iVar1 + 0xcc) = 0;
    cpArrayPush(*(undefined4 *)(iVar2 + 0x40),iVar1);
    for (iVar1 = *(int *)(iVar1 + 0xb4); iVar1 != 0; iVar1 = *(int *)(iVar1 + 0x60)) {
      cpSpaceHashRemove(*(undefined4 *)(iVar2 + 0x38),iVar1,*(undefined4 *)(iVar1 + 100));
      FUN_006e554a(iVar1,*(undefined4 *)(iVar2 + 0x3c));
    }
    iVar1 = iVar3;
  } while (iVar3 != param_1);
  cpArrayDeleteObj(*(undefined4 *)(iVar2 + 0x44),iVar3);
  return;
}

// ---- FUN_006e5816  @ 0x6e5816
void FUN_006e5816(undefined4 param_1,int param_2,int param_3)

{
  int iVar1;
  int iVar2;
  bool bVar3;
  
  iVar1 = FUN_006e535e(param_2);
  if (iVar1 != 0) {
    return;
  }
  iVar1 = FUN_006e535e(param_3);
  if (iVar1 != 0) {
    return;
  }
  iVar1 = FUN_006e53f2(param_2);
  iVar2 = FUN_006e53f2(param_3);
  bVar3 = *(int *)(iVar2 + 0xbc) != 0;
  if (*(int *)(iVar1 + 0xbc) == 0) {
    if (!bVar3) goto LAB_006e5868;
  }
  else if (bVar3) {
    return;
  }
  FUN_006e57b4(iVar1);
  FUN_006e57b4(iVar2);
LAB_006e5868:
  if (*(int *)(param_2 + 0xb0) == 0) {
    cpArrayPush(param_1,param_2);
  }
  if (*(int *)(param_3 + 0xb0) == 0) {
    cpArrayPush(param_1,param_3);
  }
  if (*(int *)(iVar2 + 0xc0) <= *(int *)(iVar1 + 0xc0)) {
    if (*(int *)(iVar1 + 0xc0) <= *(int *)(iVar2 + 0xc0)) {
      if (iVar1 != iVar2) {
        *(int *)(iVar2 + 0xb8) = iVar1;
        *(int *)(iVar1 + 0xc0) = *(int *)(iVar1 + 0xc0) + 1;
      }
      return;
    }
    *(int *)(iVar2 + 0xb8) = iVar1;
    return;
  }
  *(int *)(iVar1 + 0xb8) = iVar2;
  return;
}

// ---- FUN_006e58b8  @ 0x6e58b8
void FUN_006e58b8(int param_1)

{
  int *piVar1;
  
  piVar1 = *(int **)(param_1 + 0x54);
  if (cp_contact_persistence < (uint)(*(int *)(param_1 + 0x34) - *piVar1)) {
    *(int *)(param_1 + 0x54) = piVar1[1];
    *piVar1 = *(int *)(param_1 + 0x34);
    piVar1[1] = *(int *)(param_1 + 0x54);
    piVar1[2] = 0;
  }
  else {
    piVar1 = malloc(0x7f90);
    cpArrayPush(*(undefined4 *)(param_1 + 0x58),piVar1);
    *piVar1 = *(int *)(param_1 + 0x34);
    piVar1[1] = *(int *)(param_1 + 0x54);
    piVar1[2] = 0;
  }
  *(int **)(*(int *)(param_1 + 0x50) + 4) = piVar1;
  *(int **)(param_1 + 0x50) = piVar1;
  return;
}

// ---- FUN_006e590c  @ 0x6e590c
void FUN_006e590c(undefined4 *param_1,undefined4 *param_2,int param_3)

{
  bool bVar1;
  int iVar2;
  int iVar3;
  undefined4 *puVar4;
  undefined4 *puVar5;
  int iVar6;
  int local_38;
  int local_34;
  undefined4 *local_30;
  undefined4 *local_2c;
  
  if (((((*(double *)(param_1 + 2) <= *(double *)(param_2 + 6)) &&
        (*(double *)(param_2 + 2) <= *(double *)(param_1 + 6))) &&
       (*(double *)(param_1 + 4) <= *(double *)(param_2 + 8))) &&
      (((*(double *)(param_2 + 4) <= *(double *)(param_1 + 8) && (param_1[1] != param_2[1])) &&
       ((param_1[0x16] == 0 || ((param_2[0x16] == 0 || (param_1[0x16] != param_2[0x16])))))))) &&
     ((param_2[0x17] & param_1[0x17]) != 0)) {
    local_38 = param_1[0x15];
    local_34 = param_2[0x15];
    iVar2 = cpHashSetFind(*(undefined4 *)(param_3 + 100),
                          local_34 * -0x38a08e1f ^ local_38 * -0x38a08e1f,&local_38);
    if ((param_1[10] == 0) && (param_2[10] == 0)) {
      bVar1 = false;
    }
    else {
      if (iVar2 == param_3 + 0x68) {
        return;
      }
      bVar1 = true;
    }
    puVar5 = param_1;
    if (*(uint *)*param_2 < *(uint *)*param_1) {
      puVar5 = param_2;
      param_2 = param_1;
    }
    if (0xf0 < *(int *)(*(int *)(param_3 + 0x50) + 8) + 6U) {
      FUN_006e58b8(param_3);
    }
    iVar6 = *(int *)(*(int *)(param_3 + 0x50) + 8) * 0x88 + *(int *)(param_3 + 0x50) + 0x10;
    iVar3 = cpCollideShapes(puVar5,param_2,iVar6);
    if (iVar3 != 0) {
      *(int *)(*(int *)(param_3 + 0x50) + 8) = *(int *)(*(int *)(param_3 + 0x50) + 8) + iVar3;
      local_30 = puVar5;
      local_2c = param_2;
      puVar4 = (undefined4 *)
               cpHashSetInsert(*(undefined4 *)(param_3 + 0x5c),
                               (int)param_2 * -0x38a08e1f ^ (int)puVar5 * -0x38a08e1f,&local_30,
                               param_3);
      cpArbiterUpdate(puVar4,iVar6,iVar3,iVar2,puVar5,param_2);
      if ((puVar4[0xf] == 1) &&
         (iVar6 = (**(code **)(iVar2 + 8))(puVar4,param_3,*(undefined4 *)(iVar2 + 0x18)), iVar6 == 0
         )) {
        cpArbiterIgnore(puVar4);
      }
      if (((puVar4[0xf] == 2) ||
          (iVar2 = (**(code **)(iVar2 + 0xc))(puVar4,param_3,*(undefined4 *)(iVar2 + 0x18)),
          iVar2 == 0)) || (bVar1)) {
        *(int *)(*(int *)(param_3 + 0x50) + 8) = *(int *)(*(int *)(param_3 + 0x50) + 8) - iVar3;
        puVar4[1] = 0;
        *puVar4 = 0;
      }
      else {
        cpArrayPush(*(undefined4 *)(param_3 + 0x48),puVar4);
      }
      puVar4[0xc] = *(undefined4 *)(param_3 + 0x34);
    }
  }
  return;
}

// ---- FUN_006e60b8  @ 0x6e60b8
void FUN_006e60b8(undefined4 param_1,int param_2)

{
  cpSpaceBBQuery(param_1,*(undefined4 *)(param_2 + 0x24),*(undefined4 *)(param_2 + 8),
                 *(undefined4 *)(param_2 + 0xc),*(undefined4 *)(param_2 + 0x10),
                 *(undefined4 *)(param_2 + 0x14),*(undefined4 *)(param_2 + 0x18),
                 *(undefined4 *)(param_2 + 0x1c),*(undefined4 *)(param_2 + 0x20),
                 *(undefined4 *)(param_2 + 0x24),0xffffffff,0,&LAB_006e6242_1,0);
  return;
}

// ---- FUN_006e62d8  @ 0x6e62d8
void FUN_006e62d8(undefined4 param_1,undefined4 param_2)

{
  cpSpaceRemoveShape(param_2,param_1);
  cpShapeFree(param_1);
  return;
}

// ---- FUN_006e67f2  @ 0x6e67f2
int FUN_006e67f2(void)

{
  int iVar1;
  uint in_fpscr;
  double in_d0;
  double dVar2;
  
  iVar1 = (int)(longlong)in_d0;
  if ((in_d0 < 0.0) &&
     (dVar2 = (double)VectorSignedToFloat(iVar1,(byte)((in_fpscr & 0xfffffff) >> 0x16) & 3),
     in_d0 != dVar2)) {
    iVar1 = iVar1 + -1;
  }
  return iVar1;
}

// ---- FUN_006e6818  @ 0x6e6818
void FUN_006e6818(undefined4 *param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4)

{
  (*(code *)*param_2)(*param_1,param_2[1],param_3,(code *)*param_2,param_4);
  return;
}

// ---- FUN_006e6824  @ 0x6e6824
void FUN_006e6824(int param_1,undefined4 param_2)

{
  int iVar1;
  
  iVar1 = *(int *)(param_1 + 4) + -1;
  *(int *)(param_1 + 4) = iVar1;
  if (iVar1 == 0) {
    cpArrayPush(param_2,param_1);
    return;
  }
  return;
}

// ---- FUN_006e6838  @ 0x6e6838
void FUN_006e6838(int *param_1)

{
  undefined4 *puVar1;
  int iVar2;
  undefined4 *puVar3;
  
  for (iVar2 = 0; iVar2 < *param_1; iVar2 = iVar2 + 1) {
    puVar1 = *(undefined4 **)(param_1[7] + iVar2 * 4);
    while (puVar1 != (undefined4 *)0x0) {
      puVar3 = (undefined4 *)puVar1[1];
      FUN_006e6824(*puVar1,param_1[6]);
      puVar1[1] = param_1[8];
      param_1[8] = (int)puVar1;
      puVar1 = puVar3;
    }
    *(undefined4 *)(param_1[7] + iVar2 * 4) = 0;
  }
  return;
}

// ---- FUN_006e6874  @ 0x6e6874
void FUN_006e6874(int param_1,undefined4 *param_2,int param_3,code *param_4,undefined4 param_5)

{
  int iVar1;
  undefined4 *puVar2;
  undefined4 *puVar3;
  int *piVar4;
  
  puVar2 = (undefined4 *)*param_2;
LAB_006e6882:
  do {
    if (puVar2 == (undefined4 *)0x0) {
      return;
    }
    piVar4 = (int *)*puVar2;
    iVar1 = *piVar4;
    if ((piVar4[2] != *(int *)(param_1 + 0x28)) && (param_3 != iVar1)) {
      if (iVar1 == 0) {
        puVar3 = (undefined4 *)puVar2[1];
        *param_2 = puVar3;
        puVar2[1] = *(undefined4 *)(param_1 + 0x20);
        *(undefined4 **)(param_1 + 0x20) = puVar2;
        FUN_006e6824(piVar4,*(undefined4 *)(param_1 + 0x18));
        puVar2 = puVar3;
        goto LAB_006e6882;
      }
      (*param_4)(param_3,iVar1,param_5);
      piVar4[2] = *(int *)(param_1 + 0x28);
    }
    param_2 = puVar2 + 1;
    puVar2 = (undefined4 *)puVar2[1];
  } while( true );
}

// ---- FUN_006e68c8  @ 0x6e68c8
void FUN_006e68c8(undefined4 param_1,int param_2)

{
  undefined4 *puVar1;
  void *pvVar2;
  int iVar3;
  int iVar4;
  
  if (**(int **)(param_2 + 0x18) == 0) {
    pvVar2 = malloc(0x8000);
    cpArrayPush(*(undefined4 *)(param_2 + 0x24),pvVar2);
    iVar4 = 0;
    do {
      iVar3 = (int)pvVar2 + iVar4;
      iVar4 = iVar4 + 0xc;
      cpArrayPush(*(undefined4 *)(param_2 + 0x18),iVar3);
    } while (iVar4 != 0x7ff8);
  }
  puVar1 = (undefined4 *)cpArrayPop(*(undefined4 *)(param_2 + 0x18));
  *puVar1 = param_1;
  puVar1[2] = 0;
  puVar1[1] = 1;
  return;
}

// ---- FUN_006e6914  @ 0x6e6914
void * FUN_006e6914(int param_1)

{
  void *pvVar1;
  void *pvVar2;
  int iVar3;
  
  pvVar2 = malloc(0x8000);
  cpArrayPush(*(undefined4 *)(param_1 + 0x24),pvVar2);
  iVar3 = 1;
  pvVar1 = pvVar2;
  do {
    iVar3 = iVar3 + 1;
    *(undefined4 *)((int)pvVar1 + 0xc) = *(undefined4 *)(param_1 + 0x20);
    *(void **)(param_1 + 0x20) = (void *)((int)pvVar1 + 8);
    pvVar1 = (void *)((int)pvVar1 + 8);
  } while (iVar3 != 0x1000);
  return pvVar2;
}

// ---- FUN_006e6948  @ 0x6e6948
void FUN_006e6948(undefined4 *param_1,undefined4 *param_2)

{
  int iVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  int *piVar5;
  int extraout_r1;
  undefined4 uVar6;
  undefined4 uVar7;
  undefined4 uVar8;
  int iVar9;
  undefined4 *puVar10;
  undefined4 *puVar11;
  uint uVar12;
  int iVar13;
  uint uVar14;
  double dVar15;
  undefined4 *local_54;
  double local_50;
  double local_48;
  double local_40;
  double local_38;
  
  puVar11 = (undefined4 *)*param_2;
  uVar6 = param_2[1];
  dVar15 = *(double *)(puVar11 + 2);
  uVar8 = *puVar11;
  uVar7 = *param_1;
  (*(code *)puVar11[4])(&local_50,uVar7);
  iVar1 = FUN_006e67f2(SUB84(local_50 / dVar15,0));
  uVar12 = iVar1 * 0x61c88639;
  iVar2 = FUN_006e67f2(SUB84(local_40 / dVar15,0));
  iVar3 = FUN_006e67f2(SUB84(local_48 / dVar15,0));
  iVar4 = FUN_006e67f2(SUB84(local_38 / dVar15,0));
  iVar9 = puVar11[7];
  do {
    iVar13 = iVar3;
    uVar14 = iVar3 * -0x61c88633;
    if (iVar2 < iVar1) {
      puVar11[10] = puVar11[10] + 1;
      return;
    }
    for (; iVar13 <= iVar4; iVar13 = iVar13 + 1) {
      __aeabi_uidivmod(uVar14 ^ uVar12,uVar8);
      local_54 = *(undefined4 **)(iVar9 + extraout_r1 * 4);
      for (puVar10 = local_54; puVar10 != (undefined4 *)0x0; puVar10 = (undefined4 *)puVar10[1]) {
        if ((undefined4 *)*puVar10 == param_1) goto LAB_006e6a1c;
      }
      param_1[1] = param_1[1] + 1;
      FUN_006e6874(puVar11,&local_54,uVar7,uVar6,param_2[2]);
      piVar5 = (int *)puVar11[8];
      if (piVar5 == (int *)0x0) {
        piVar5 = (int *)FUN_006e6914(puVar11);
      }
      else {
        puVar11[8] = piVar5[1];
      }
      *piVar5 = (int)param_1;
      piVar5[1] = (int)local_54;
      *(int **)(iVar9 + extraout_r1 * 4) = piVar5;
LAB_006e6a1c:
      uVar14 = uVar14 + 0x9e3779cd;
    }
    iVar1 = iVar1 + 1;
    uVar12 = uVar12 + 0x61c88639;
  } while( true );
}

// ---- FUN_006e6a60  @ 0x6e6a60
void FUN_006e6a60(undefined4 *param_1,int param_2)

{
  int iVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  int extraout_r1;
  int *piVar5;
  undefined4 uVar6;
  int *piVar7;
  uint uVar8;
  uint uVar9;
  int iVar10;
  double in_d0;
  double in_d1;
  double in_d2;
  double in_d3;
  double dVar11;
  
  dVar11 = *(double *)(param_1 + 2);
  iVar1 = FUN_006e67f2(SUB84(in_d0 / dVar11,0));
  iVar2 = FUN_006e67f2(SUB84(in_d2 / dVar11,0));
  uVar9 = iVar1 * 0x61c88639;
  iVar3 = FUN_006e67f2(SUB84(in_d1 / dVar11,0));
  iVar4 = FUN_006e67f2(SUB84(in_d3 / dVar11,0));
  uVar6 = *param_1;
  do {
    uVar8 = iVar3 * -0x61c88633;
    iVar10 = iVar3;
    if (iVar2 < iVar1) {
      return;
    }
    for (; iVar10 <= iVar4; iVar10 = iVar10 + 1) {
      __aeabi_uidivmod(uVar8 ^ uVar9,uVar6);
      piVar5 = *(int **)(param_1[7] + extraout_r1 * 4);
      for (piVar7 = piVar5; piVar7 != (int *)0x0; piVar7 = (int *)piVar7[1]) {
        if (*piVar7 == param_2) goto LAB_006e6b10;
      }
      *(int *)(param_2 + 4) = *(int *)(param_2 + 4) + 1;
      piVar7 = (int *)param_1[8];
      if (piVar7 == (int *)0x0) {
        piVar7 = (int *)FUN_006e6914(param_1);
      }
      else {
        param_1[8] = piVar7[1];
      }
      *piVar7 = param_2;
      piVar7[1] = (int)piVar5;
      *(int **)(param_1[7] + extraout_r1 * 4) = piVar7;
LAB_006e6b10:
      uVar8 = uVar8 + 0x9e3779cd;
    }
    iVar1 = iVar1 + 1;
    uVar9 = uVar9 + 0x61c88639;
  } while( true );
}

// ---- FUN_006e6b54  @ 0x6e6b54
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x006e6b78 */
/* WARNING: Restarted to delay deadcode elimination for space: register */

void FUN_006e6b54(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                 undefined4 param_5,undefined4 param_6,undefined4 *param_7,int param_8)

{
  undefined4 local_30 [2];
  undefined4 local_28;
  undefined4 local_20;
  undefined4 local_18;
  
  (**(code **)(param_8 + 0x10))(local_30,*param_7);
  FUN_006e6a60(local_30[0],param_2,local_28,param_4,local_20,param_6,local_18,param_8,param_7);
  return;
}

// ---- FUN_006e7500  @ 0x6e7500
undefined4 FUN_006e7500(void)

{
  int iVar1;
  int iVar2;
  char acStack_50 [63];
  undefined1 local_11;
  
  local_11 = 0;
  iVar1 = lws_b64_encode_string("sanity check base 64",0x14,acStack_50,0x40);
  if ((iVar1 != 0x1c) || (iVar2 = strcmp(acStack_50,"c2FuaXR5IGNoZWNrIGJhc2UgNjQ="), iVar2 != 0)) {
    _lws_log(1,"Failed lws_b64 encode selftest %d result \'%s\' %d\n",0,acStack_50,iVar1);
    return 0xffffffff;
  }
  local_11 = 0;
  iVar1 = lws_b64_decode_string("c2FuaXR5IGNoZWNrIGJhc2UgNjQ=",acStack_50,0x40);
  if ((iVar1 == 0x14) && (iVar2 = strcmp(acStack_50,"sanity check base 64"), iVar2 == 0)) {
    return 0;
  }
  _lws_log(1,"Failed lws_b64 decode selftest %d result \'%s\' %d\n",0,acStack_50,iVar1);
  return 0xffffffff;
}

// ---- FUN_006e7760  @ 0x6e7760
void FUN_006e7760(int param_1,undefined4 param_2)

{
  int iVar1;
  timeval local_144;
  char local_13c [300];
  
  gettimeofday(&local_144,(__timezone_ptr_t)0x0);
  local_13c[0] = '\0';
  if (param_1 == 1) {
    iVar1 = 0;
  }
  else if (param_1 == 2) {
    iVar1 = 1;
  }
  else if (param_1 == 4) {
    iVar1 = 2;
  }
  else if (param_1 == 8) {
    iVar1 = 3;
  }
  else if (param_1 == 0x10) {
    iVar1 = 4;
  }
  else if (param_1 == 0x20) {
    iVar1 = 5;
  }
  else if (param_1 == 0x40) {
    iVar1 = 6;
  }
  else if (param_1 == 0x80) {
    iVar1 = 7;
  }
  else if (param_1 == 0x100) {
    iVar1 = 8;
  }
  else {
    if (param_1 != 0x200) goto LAB_006e77e0;
    iVar1 = 9;
  }
  sprintf(local_13c,"[%ld:%04d] %s: ",local_144.tv_sec,local_144.tv_usec / 100,
          (&DAT_00907f98)[iVar1]);
LAB_006e77e0:
  fprintf((FILE *)recv,"%s%s",local_13c,param_2);
  return;
}

// ---- FUN_006e7a18  @ 0x6e7a18
undefined4 FUN_006e7a18(int param_1,int param_2)

{
  int iVar1;
  undefined4 uVar2;
  undefined4 local_1c;
  
  local_1c = 1;
  if (*(int *)(param_1 + 0x1138) == 0) {
LAB_006e7ae8:
    local_1c = 1;
    setsockopt(param_2,6,1,&local_1c,4);
    fcntl(param_2,4,0x800);
    uVar2 = 0;
  }
  else {
    iVar1 = setsockopt(param_2,1,9,&local_1c,4);
    if (-1 < iVar1) {
      local_1c = *(undefined4 *)(param_1 + 0x1138);
      iVar1 = setsockopt(param_2,0,4,&local_1c,4);
      if (-1 < iVar1) {
        local_1c = *(undefined4 *)(param_1 + 0x1140);
        iVar1 = setsockopt(param_2,0,5,&local_1c,4);
        if (-1 < iVar1) {
          local_1c = *(undefined4 *)(param_1 + 0x113c);
          iVar1 = setsockopt(param_2,0,6,&local_1c,4);
          if (-1 < iVar1) goto LAB_006e7ae8;
        }
      }
    }
    uVar2 = 1;
  }
  return uVar2;
}

// ---- FUN_006e7b98  @ 0x6e7b98
int FUN_006e7b98(undefined4 param_1,int param_2,undefined4 param_3,undefined4 param_4,
                undefined4 param_5)

{
  int iVar1;
  int iVar2;
  int iVar3;
  uint uVar4;
  code *pcVar5;
  
  uVar4 = (uint)*(byte *)(param_2 + 0x1c);
  if (uVar4 == 0) {
    return 0;
  }
  iVar3 = 1;
  iVar2 = param_2 + -4;
  do {
    pcVar5 = *(code **)(*(int *)(iVar2 + 8) + 4);
    if (pcVar5 == (code *)0x0) {
      if ((int)uVar4 <= iVar3) {
        return 0;
      }
    }
    else {
      iVar1 = (*pcVar5)(param_1,*(int *)(iVar2 + 8),param_2,param_3,*(undefined4 *)(iVar2 + 0x14),
                        param_4,param_5);
      uVar4 = (uint)*(byte *)(param_2 + 0x1c);
      if ((int)uVar4 <= iVar3) {
        return iVar1;
      }
      if (iVar1 != 0) {
        return iVar1;
      }
    }
    iVar3 = iVar3 + 1;
    iVar2 = iVar2 + 4;
  } while( true );
}

// ---- FUN_006e7c98  @ 0x6e7c98
void FUN_006e7c98(int param_1,undefined1 param_2,int param_3)

{
  timeval local_18;
  
  gettimeofday(&local_18,(__timezone_ptr_t)0x0);
  *(undefined1 *)(param_1 + 0x24) = param_2;
  *(__time_t *)(param_1 + 0x28) = local_18.tv_sec + param_3;
  return;
}

// ---- FUN_006e7ce8  @ 0x6e7ce8
void FUN_006e7ce8(code *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                 undefined4 param_5,undefined4 param_6,undefined4 param_7)

{
  (*param_1)(param_2,param_3,param_4,param_5,param_6,param_7);
  return;
}

// ---- FUN_006e7de8  @ 0x6e7de8
undefined4 FUN_006e7de8(int *param_1)

{
  void *__s;
  size_t __size;
  
  if (*param_1 == 0) {
    return 1;
  }
  __size = *(size_t *)(*param_1 + 8);
  if ((__size != 0) && (param_1[0xd] == 0)) {
    __s = malloc(__size);
    param_1[0xd] = (int)__s;
    if (__s != (void *)0x0) {
      memset(__s,0,__size);
      return 0;
    }
    _lws_log(1,"Out of memory for conn user space\n");
    return 1;
  }
  return 0;
}

// ---- FUN_006e8088  @ 0x6e8088
undefined4 FUN_006e8088(int param_1,int *param_2,int param_3)

{
  bool bVar1;
  int iVar2;
  undefined4 uVar3;
  int *piVar4;
  int iVar5;
  int iVar6;
  code *pcVar7;
  uint uVar8;
  undefined4 local_30;
  int local_2c;
  
  uVar8 = (uint)*(byte *)(param_2 + 7);
  if (uVar8 == 0) {
    if ((*(byte *)((int)param_2 + 0x1d) & 1) != 0) {
LAB_006e8124:
      do {
        while( true ) {
          local_30 = 0;
          local_2c = 0;
          if (uVar8 == 0) goto LAB_006e81e4;
          bVar1 = false;
          iVar6 = 0;
          piVar4 = param_2 + -1;
          do {
            iVar5 = (**(code **)(piVar4[2] + 4))
                              (*(undefined4 *)(*param_2 + 0x10),piVar4[2],param_2,0xc,piVar4[5],
                               &local_30,0);
            iVar6 = iVar6 + 1;
            if (iVar5 < 0) {
              _lws_log(1,"ext reports fatal error\n");
              return 0xffffffff;
            }
            uVar8 = (uint)*(byte *)(param_2 + 7);
            if (iVar5 != 0) {
              bVar1 = true;
            }
            piVar4 = piVar4 + 1;
          } while (iVar6 < (int)uVar8);
          if (local_2c == 0) break;
          iVar6 = FUN_006e9bf8(param_2,local_30);
          if (iVar6 < 0) {
            return 0xffffffff;
          }
          if (local_2c != iVar6) {
            _lws_log(1,"Unable to spill ext %d vs %s\n");
            return 0xffffffff;
          }
          if (!bVar1) goto LAB_006e81e4;
          iVar6 = lws_send_pipe_choked(param_2);
          if (iVar6 != 0) {
            _lws_log(8,"choked in POLLOUT service\n");
            return 0;
          }
          uVar8 = (uint)*(byte *)(param_2 + 7);
        }
      } while (bVar1);
LAB_006e81e4:
      *(byte *)((int)param_2 + 0x1d) = *(byte *)((int)param_2 + 0x1d) & 0xfe;
    }
  }
  else {
    iVar6 = 0;
    iVar5 = 0;
    piVar4 = param_2 + -1;
    do {
      pcVar7 = *(code **)(piVar4[2] + 4);
      iVar5 = iVar5 + 1;
      if (pcVar7 != (code *)0x0) {
        iVar2 = (*pcVar7)(param_1,piVar4[2],param_2,0x14,piVar4[5],0,0);
        uVar8 = (uint)*(byte *)(param_2 + 7);
        if (iVar6 < iVar2) {
          iVar6 = iVar2;
        }
      }
      piVar4 = piVar4 + 1;
    } while (iVar5 < (int)uVar8);
    if (iVar6 == 1) goto LAB_006e8234;
    if (((*(byte *)((int)param_2 + 0x1d) & 1) != 0) && (iVar6 != 2)) goto LAB_006e8124;
  }
  if (param_3 != 0) {
    iVar6 = *(int *)(param_1 + 0x1144);
    iVar2 = param_2[0xb];
    iVar5 = param_2[0xd];
    *(ushort *)(param_3 + 4) = *(ushort *)(param_3 + 4) & 0xfffb;
    (**(code **)(iVar6 + 4))(param_1,param_2,0x1a,iVar5,iVar2,4);
  }
LAB_006e8234:
  if (*(char *)((int)param_2 + 0x1f) == '\x03') {
    uVar3 = 8;
  }
  else {
    uVar3 = 9;
  }
  uVar3 = (**(code **)(*param_2 + 4))(param_1,param_2,uVar3,param_2[0xd],0,0);
  return uVar3;
}

// ---- FUN_006e82e8  @ 0x6e82e8
void FUN_006e82e8(int *param_1,int *param_2,int param_3)

{
  byte bVar1;
  bool bVar2;
  int iVar3;
  undefined4 *puVar4;
  undefined4 uVar5;
  int iVar6;
  int iVar7;
  int *piVar8;
  int iVar9;
  code *pcVar10;
  uint uVar11;
  int iVar12;
  undefined4 *puVar13;
  undefined4 local_50;
  int local_4c;
  timeval local_48;
  undefined4 local_40;
  undefined4 local_3c;
  undefined4 local_38;
  undefined4 local_34;
  undefined4 local_30;
  undefined4 local_2c [2];
  
  if ((param_2 == (int *)0x0) || (bVar1 = *(byte *)(param_2 + 8), bVar1 == 3)) {
    return;
  }
  if (bVar1 != 7) {
    *(short *)(param_2 + 0x14) = (short)param_3;
    if ((*(char *)((int)param_2 + 0x1f) == '\0') && (param_2[0xe] != 0)) {
      _lws_log(0x10,"closing http fd %d\n");
      close(param_2[0xe]);
      param_2[0xe] = 0;
    }
    uVar11 = (uint)*(byte *)(param_2 + 7);
    if (uVar11 != 0) {
      iVar9 = 0;
      piVar8 = param_2 + -1;
      do {
        pcVar10 = *(code **)(piVar8[2] + 4);
        if (pcVar10 != (code *)0x0) {
          iVar3 = (*pcVar10)(param_1,piVar8[2],param_2,6,piVar8[5],0,0);
          if (iVar3 != 0) {
            _lws_log(0x80,"extension vetoed close\n");
            return;
          }
          uVar11 = (uint)*(byte *)(param_2 + 7);
        }
        iVar9 = iVar9 + 1;
        piVar8 = piVar8 + 1;
      } while (iVar9 < (int)uVar11);
    }
    while( true ) {
      local_50 = 0;
      local_4c = 0;
      if (uVar11 == 0) break;
      bVar2 = false;
      iVar9 = 0;
      piVar8 = param_2 + -1;
      do {
        iVar3 = (**(code **)(piVar8[2] + 4))
                          (*(undefined4 *)(*param_2 + 0x10),piVar8[2],param_2,0xf,piVar8[5],
                           &local_50,0);
        iVar9 = iVar9 + 1;
        if (iVar3 < 0) {
          _lws_log(0x80,"Extension reports fatal error\n");
          goto LAB_006e8418;
        }
        if (iVar3 != 0) {
          bVar2 = true;
        }
        piVar8 = piVar8 + 1;
      } while (iVar9 < (int)(uint)*(byte *)(param_2 + 7));
      if ((local_4c != 0) && (iVar9 = FUN_006e9bf8(param_2,local_50), iVar9 != local_4c)) {
        _lws_log(0x10,"close: ext spill failed\n");
        goto LAB_006e8418;
      }
      if (!bVar2) break;
      uVar11 = (uint)*(byte *)(param_2 + 7);
    }
    if (bVar1 == 4 && param_3 != 0) {
      _lws_log(0x10,"sending close indication...\n");
      local_40 = 0;
      local_3c = 0;
      local_38 = 0;
      local_34 = 0;
      local_30 = 0;
      local_2c[0] = 0;
      iVar9 = libwebsocket_write(param_2,local_2c,0,4);
      if (-1 < iVar9) {
        *(undefined1 *)(param_2 + 8) = 7;
        gettimeofday(&local_48,(__timezone_ptr_t)0x0);
        param_2[10] = local_48.tv_sec + 1;
        *(undefined1 *)(param_2 + 9) = 5;
        _lws_log(0x10,"sent close indication, awaiting ack\n");
        return;
      }
      _lws_log(8,"close: sending close packet failed, hanging up\n");
    }
  }
LAB_006e8418:
  _lws_log(0x10,"close: just_kill_connection\n");
  iVar3 = param_1[2];
  iVar9 = param_2[0xb];
  param_1[2] = iVar3 + -1;
  if (iVar3 + -1 != 0) {
    if (param_1[3] < iVar9) {
      _lws_log(1,"Socket fd %d too high (%d)\n");
      goto LAB_006e84b4;
    }
    _lws_log(8,"remove_wsi_socket_from_fds: wsi=%p, sock=%d, fds pos=%d\n",param_2,iVar9,
             param_2[0xc]);
    iVar7 = *param_1;
    iVar6 = param_1[2];
    iVar12 = param_2[0xc];
    puVar4 = (undefined4 *)(iVar7 + iVar6 * 8);
    uVar5 = puVar4[1];
    puVar13 = (undefined4 *)(iVar7 + iVar12 * 8);
    *puVar13 = *puVar4;
    puVar13[1] = uVar5;
    iVar3 = param_1[1];
    iVar9 = param_2[0xb];
    *(int *)(*(int *)(iVar3 + *(int *)(iVar7 + iVar6 * 8) * 4) + 0x30) = iVar12;
    *(undefined4 *)(iVar3 + iVar9 * 4) = 0;
    param_2[0xc] = -1;
  }
  if (iVar9 != 0) {
    (**(code **)(param_1[0x451] + 4))(param_1,param_2,0x18,param_2[0xd],iVar9,0);
  }
LAB_006e84b4:
  *(undefined1 *)(param_2 + 8) = 3;
  if (((bVar1 == 4) || (*(char *)((int)param_2 + 0x1f) == '\x02')) ||
     (*(char *)((int)param_2 + 0x1f) == '\x03')) {
    if ((void *)param_2[0xe] != (void *)0x0) {
      free((void *)param_2[0xe]);
      param_2[0xe] = 0;
    }
    if ((void *)param_2[0x15] != (void *)0x0) {
      free((void *)param_2[0x15]);
      param_2[0x15] = 0;
    }
  }
  if (((*param_2 == 0) || (*(int *)(*param_2 + 4) == 0)) || (((bVar1 & 0xfd) != 4 && (bVar1 != 7))))
  {
    _lws_log(0x10,"not calling back closed\n");
  }
  else {
    _lws_log(0x10,"calling back CLOSED\n");
    (**(code **)(*param_2 + 4))(param_1,param_2,4,param_2[0xd],0,0);
  }
  uVar11 = (uint)*(byte *)(param_2 + 7);
  if (uVar11 != 0) {
    iVar9 = 0;
    piVar8 = param_2 + -1;
    do {
      pcVar10 = *(code **)(piVar8[2] + 4);
      iVar9 = iVar9 + 1;
      if (pcVar10 != (code *)0x0) {
        (*pcVar10)(param_1,piVar8[2],param_2,8,piVar8[5],0,0);
        free((void *)piVar8[5]);
        uVar11 = (uint)*(byte *)(param_2 + 7);
      }
      piVar8 = piVar8 + 1;
    } while (iVar9 < (int)uVar11);
  }
  iVar9 = param_1[0x453];
  if (iVar9 != 0) {
    pcVar10 = *(code **)(iVar9 + 4);
    while (pcVar10 != (code *)0x0) {
      (*pcVar10)(param_1,iVar9,param_2,9,0,0,0);
      if (iVar9 + 0x10 == 0) break;
      pcVar10 = *(code **)(iVar9 + 0x14);
      iVar9 = iVar9 + 0x10;
    }
  }
  if (param_2[0xb] != 0) {
    iVar9 = shutdown(param_2[0xb],2);
    if (iVar9 != 0) {
      puVar4 = (undefined4 *)__errno();
      _lws_log(0x10,"closing: shutdown returned %d\n",*puVar4);
    }
    iVar9 = close(param_2[0xb]);
    if (iVar9 != 0) {
      puVar4 = (undefined4 *)__errno();
      _lws_log(0x10,"closing: close returned %d\n",*puVar4);
    }
  }
  if (((*param_2 != 0) && (*(int *)(*param_2 + 8) != 0)) && ((void *)param_2[0xd] != (void *)0x0)) {
    free((void *)param_2[0xd]);
  }
  free(param_2);
  return;
}

// ---- FUN_006e8f54  @ 0x6e8f54
undefined1 FUN_006e8f54(undefined4 param_1,int param_2,uint param_3)

{
  undefined1 uVar1;
  int iVar2;
  int iVar3;
  
  if (*(char *)(param_2 + 0x1c) != '\0') {
    iVar3 = 0;
    iVar2 = param_2 + -4;
    do {
      (**(code **)(*(int *)(iVar2 + 8) + 4))
                (param_1,*(int *)(iVar2 + 8),param_2,0x12,*(undefined4 *)(iVar2 + 0x14),0,param_3);
      iVar3 = iVar3 + 1;
      iVar2 = iVar2 + 4;
    } while (iVar3 < (int)(uint)*(byte *)(param_2 + 0x1c));
  }
  uVar1 = 0;
  if (*(char *)(param_2 + 0x24) != '\0') {
    if (*(uint *)(param_2 + 0x28) < param_3) {
      _lws_log(8,"TIMEDOUT WAITING\n");
      FUN_006e82e8(param_1,param_2,0);
      uVar1 = 1;
    }
    else {
      uVar1 = 0;
    }
  }
  return uVar1;
}

// ---- FUN_006e900c  @ 0x6e900c
undefined4 FUN_006e900c(int *param_1,int param_2)

{
  int iVar1;
  int iVar2;
  int iVar3;
  undefined4 uVar4;
  int iVar5;
  int iVar6;
  
  iVar2 = param_1[2];
  iVar1 = param_1[3];
  if (iVar2 < iVar1) {
    iVar3 = *(int *)(param_2 + 0x2c);
    if (iVar1 < iVar3) {
      _lws_log(1,"Socket fd %d is too high (%d)\n",iVar3,iVar1);
      uVar4 = 1;
    }
    else {
      if (iVar3 == 0) {
        __assert2("/Users/james/Project/libwebsockets/lib/libwebsockets.c",0x74,
                  "insert_wsi_socket_into_fds","wsi->sock");
        iVar3 = *(int *)(param_2 + 0x2c);
        iVar2 = param_1[2];
      }
      _lws_log(8,"insert_wsi_socket_into_fds: wsi=%p, sock=%d, fds pos=%d\n",param_2,iVar3,iVar2);
      iVar1 = *(int *)(param_2 + 0x2c);
      *(int *)(param_1[1] + iVar1 * 4) = param_2;
      iVar2 = param_1[2];
      iVar3 = *param_1;
      iVar5 = param_1[0x451];
      iVar6 = iVar3 + iVar2 * 8;
      *(int *)(param_2 + 0x30) = iVar2;
      uVar4 = *(undefined4 *)(param_2 + 0x34);
      *(int *)(iVar3 + iVar2 * 8) = iVar1;
      *(undefined2 *)(iVar6 + 4) = 1;
      *(undefined2 *)(iVar6 + 6) = 0;
      param_1[2] = iVar2 + 1;
      (**(code **)(iVar5 + 4))(param_1,param_2,0x17,uVar4,iVar1,1);
      uVar4 = 0;
    }
  }
  else {
    _lws_log(1,"Too many fds (%d)\n",iVar1);
    uVar4 = 1;
  }
  return uVar4;
}

// ---- FUN_006e9bf8  @ 0x6e9bf8
ssize_t FUN_006e9bf8(int *param_1,void *param_2,size_t param_3)

{
  int iVar1;
  ssize_t sVar2;
  int *piVar3;
  int iVar4;
  void *local_1c;
  
  local_1c = param_2;
  if ((char)param_1[7] != '\0') {
    iVar4 = 0;
    piVar3 = param_1 + -1;
    do {
      iVar1 = (**(code **)(piVar3[2] + 4))
                        (*(undefined4 *)(*param_1 + 0x10),piVar3[2],param_1,0xd,piVar3[5],&local_1c,
                         param_3);
      iVar4 = iVar4 + 1;
      if (iVar1 < 0) {
        _lws_log(0x80,"Extension reports fatal error\n");
        return -1;
      }
      if (iVar1 != 0) {
        return iVar1;
      }
      piVar3 = piVar3 + 1;
    } while (iVar4 < (int)(uint)*(byte *)(param_1 + 7));
  }
  iVar4 = param_1[0xb];
  if (iVar4 == 0) {
    _lws_log(2,"** error 0 sock but expected to send\n");
    iVar4 = param_1[0xb];
  }
  sVar2 = send(iVar4,local_1c,param_3,0x4000);
  if (sVar2 < 0) {
    _lws_log(0x10,"ERROR writing len %d to skt %d\n",param_3,sVar2);
    sVar2 = -1;
  }
  return sVar2;
}

// ---- FUN_006e9cf8  @ 0x6e9cf8
int FUN_006e9cf8(int *param_1,undefined4 param_2,int param_3)

{
  bool bVar1;
  int iVar2;
  int *piVar3;
  int iVar4;
  undefined4 local_30;
  int local_2c;
  
  local_30 = param_2;
  local_2c = param_3;
  do {
    bVar1 = false;
    if ((char)param_1[7] != '\0') {
      iVar4 = 0;
      bVar1 = false;
      piVar3 = param_1 + -1;
      do {
        iVar2 = (**(code **)(piVar3[2] + 4))
                          (*(undefined4 *)(*param_1 + 0x10),piVar3[2],param_1,0xc,piVar3[5],
                           &local_30,0);
        iVar4 = iVar4 + 1;
        if (iVar2 < 0) {
          _lws_log(0x80,"Extension: fatal error\n");
          return -1;
        }
        if (iVar2 != 0) {
          bVar1 = true;
        }
        piVar3 = piVar3 + 1;
      } while (iVar4 < (int)(uint)*(byte *)(param_1 + 7));
    }
    if (local_2c != 0) {
      iVar4 = FUN_006e9bf8(param_1,local_30);
      if (iVar4 < 0) {
        return -1;
      }
      if (local_2c != iVar4) {
        _lws_log(1,"Unable to spill ext %d vs %d\n");
        return -1;
      }
    }
    _lws_log(0x20,"written %d bytes to client\n");
    if (!bVar1) {
      return param_3;
    }
    local_30 = 0;
    local_2c = 0;
    iVar4 = lws_send_pipe_choked(param_1);
  } while (iVar4 == 0);
  _lws_log(0x10,"choked\n");
  libwebsocket_callback_on_writable(*(undefined4 *)(*param_1 + 0x10),param_1);
  *(byte *)((int)param_1 + 0x1d) = *(byte *)((int)param_1 + 0x1d) | 1;
  return param_3;
}

// ---- FUN_006ea4f0  @ 0x6ea4f0
undefined4 FUN_006ea4f0(int param_1)

{
  undefined2 *puVar1;
  
  puVar1 = malloc(0x550);
  *(undefined2 **)(param_1 + 0x38) = puVar1;
  if (puVar1 != (undefined2 *)0x0) {
    *(undefined4 *)(puVar1 + 2) = 0;
    *(undefined4 *)(puVar1 + 4) = 0;
    *(undefined4 *)(puVar1 + 6) = 0;
    *puVar1 = 0;
    *(undefined4 *)(puVar1 + 8) = 0;
    puVar1[1] = 0;
    *(undefined4 *)(puVar1 + 10) = 0;
    puVar1[0xc] = 0;
    *(undefined1 *)(puVar1 + 0xd) = 0;
    return 0;
  }
  _lws_log(1,"Out of memory\n");
  return 0xffffffff;
}

// ---- FUN_006ea62c  @ 0x6ea62c
int FUN_006ea62c(int param_1,int param_2)

{
  int iVar1;
  uint uVar2;
  
  iVar1 = *(int *)(param_1 + 0x38);
  uVar2 = (uint)*(byte *)(iVar1 + param_2 + 4);
  if (uVar2 == 0) {
    iVar1 = 0;
  }
  else {
    iVar1 = iVar1 + *(ushort *)(iVar1 + uVar2 * 6 + 0x1c) + 0x130;
  }
  return iVar1;
}

// ---- FUN_006ea658  @ 0x6ea658
undefined4 FUN_006ea658(int param_1,int param_2,int param_3)

{
  short sVar1;
  ushort uVar2;
  int iVar3;
  char *pcVar4;
  ushort *puVar5;
  
  **(short **)(param_1 + 0x38) = **(short **)(param_1 + 0x38) + 1;
  sVar1 = **(short **)(param_1 + 0x38);
  if (sVar1 == 0x2e) {
    _lws_log(2,"More hdr frags than we can deal with, dropping\n");
    return 0xffffffff;
  }
  *(char *)((int)*(short **)(param_1 + 0x38) + param_2 + 4) = (char)sVar1;
  puVar5 = *(ushort **)(param_1 + 0x38);
  puVar5[(uint)*puVar5 * 3 + 0xe] = puVar5[1];
  pcVar4 = (char *)(param_3 + -1);
  (*(ushort **)(param_1 + 0x38))[(uint)**(ushort **)(param_1 + 0x38) * 3 + 0xf] = 0;
  *(undefined1 *)(*(ushort **)(param_1 + 0x38) + (uint)**(ushort **)(param_1 + 0x38) * 3 + 0x10) = 0
  ;
  while( true ) {
    iVar3 = *(int *)(param_1 + 0x38);
    uVar2 = *(ushort *)(iVar3 + 2);
    if (uVar2 == 0x400) {
      _lws_log(1,"Ran out of header data space\n");
      return 0xffffffff;
    }
    *(char *)(iVar3 + (uint)uVar2 + 0x130) = pcVar4[1];
    *(ushort *)(iVar3 + 2) = uVar2 + 1;
    if (pcVar4[1] == '\0') break;
    puVar5 = *(ushort **)(param_1 + 0x38);
    puVar5[(uint)*puVar5 * 3 + 0xf] = puVar5[(uint)*puVar5 * 3 + 0xf] + 1;
    pcVar4 = pcVar4 + 1;
    if (*pcVar4 == '\0') {
      return 0;
    }
  }
  return 0;
}

// ---- FUN_006ea768  @ 0x6ea768
undefined4 FUN_006ea768(int param_1,uint param_2)

{
  byte *pbVar1;
  byte bVar2;
  ushort uVar3;
  uint uVar4;
  char *__nptr;
  undefined2 *puVar5;
  uint uVar6;
  short sVar7;
  int iVar8;
  short *psVar9;
  ushort *puVar10;
  byte bVar11;
  undefined *puVar12;
  
  switch(*(undefined1 *)(param_1 + 0x3e)) {
  case 0:
    break;
  case 1:
    break;
  case 2:
    break;
  case 3:
    break;
  case 4:
    break;
  case 5:
    break;
  case 6:
    break;
  case 7:
    break;
  case 8:
    break;
  case 9:
    break;
  case 10:
    break;
  case 0xb:
    break;
  case 0xc:
    break;
  case 0xd:
    break;
  case 0xe:
    break;
  case 0xf:
    break;
  case 0x10:
    break;
  case 0x11:
    return 0;
  case 0x12:
    return 0;
  case 0x13:
    return 0;
  case 0x14:
    return 0;
  case 0x15:
    return 0;
  case 0x16:
    return 0;
  case 0x17:
    return 0;
  case 0x18:
    _lws_log(0x20,"WSI_TOKEN_NAME_PART \'%c\'\n",param_2);
    sVar7 = *(short *)(param_1 + 0x3c);
    iVar8 = (int)sVar7;
    if (-1 < iVar8) {
      puVar12 = &DAT_0094ec80 + iVar8;
      bVar2 = (&DAT_0094ec81)[iVar8];
      if (bVar2 != 0) {
        bVar11 = (&DAT_0094ec80)[iVar8];
        while (param_2 != (bVar11 & 0x7f)) {
          if ((bVar11 & 0x80) != 0) {
            *(undefined2 *)(param_1 + 0x3c) = 0xffff;
            goto LAB_006eab84;
          }
          bVar2 = puVar12[3];
          iVar8 = iVar8 + 2;
          sVar7 = (short)iVar8;
          if (bVar2 == 0) goto LAB_006ea990;
          pbVar1 = puVar12 + 2;
          puVar12 = puVar12 + 2;
          bVar11 = *pbVar1;
        }
        sVar7 = sVar7 + (ushort)bVar2 * 2;
      }
    }
LAB_006ea990:
    iVar8 = (int)sVar7;
    *(short *)(param_1 + 0x3c) = sVar7;
    if (iVar8 < 0) {
LAB_006eab84:
      if ((*(char *)(*(int *)(param_1 + 0x38) + 4) == '\0') &&
         (*(char *)(*(int *)(param_1 + 0x38) + 0x14) == '\0')) {
        _lws_log(8,"Unknown method - dropping\n");
        return 0xffffffff;
      }
      goto LAB_006eaafc;
    }
    if ((&DAT_0094ec81)[iVar8] != '\0') {
      return 0;
    }
    bVar2 = (&DAT_0094ec80)[iVar8];
    bVar11 = bVar2 & 0x7f;
    _lws_log(0x20,"known hdr %d\n",bVar11);
    if ((bVar2 & 0x7f) == 0) {
      psVar9 = *(short **)(param_1 + 0x38);
      if ((char)psVar9[2] != '\0') {
        _lws_log(2,"Duplicated GET\n");
        return 0xffffffff;
      }
      *(undefined1 *)(param_1 + 0x3e) = 0;
    }
    else if (bVar11 == 0xc) {
      *(undefined1 *)(param_1 + 0x3e) = 7;
      psVar9 = *(short **)(param_1 + 0x38);
    }
    else {
      *(byte *)(param_1 + 0x3e) = bVar11;
      if (bVar11 == 9) goto LAB_006ea8d0;
      psVar9 = *(short **)(param_1 + 0x38);
    }
    *psVar9 = *psVar9 + 1;
    puVar10 = *(ushort **)(param_1 + 0x38);
    if (*puVar10 == 0x2e) {
      _lws_log(2,"More hdr frags than we can deal with\n");
      return 0xffffffff;
    }
    puVar10[(uint)*puVar10 * 3 + 0xe] = puVar10[1];
    (*(ushort **)(param_1 + 0x38))[(uint)**(ushort **)(param_1 + 0x38) * 3 + 0xf] = 0;
    *(undefined1 *)(*(ushort **)(param_1 + 0x38) + (uint)**(ushort **)(param_1 + 0x38) * 3 + 0x10) =
         0;
    puVar5 = *(undefined2 **)(param_1 + 0x38);
    uVar4 = (uint)*(byte *)((int)puVar5 + *(byte *)(param_1 + 0x3e) + 4);
    if (uVar4 == 0) {
      *(char *)((int)puVar5 + *(byte *)(param_1 + 0x3e) + 4) = (char)*puVar5;
      return 0;
    }
    do {
      uVar6 = uVar4;
      uVar4 = (uint)*(byte *)(puVar5 + uVar6 * 3 + 0x10);
    } while (*(byte *)(puVar5 + uVar6 * 3 + 0x10) != 0);
    *(char *)(puVar5 + uVar6 * 3 + 0x10) = (char)*puVar5;
    iVar8 = *(int *)(param_1 + 0x38);
    uVar3 = *(ushort *)(iVar8 + 2);
    if (uVar3 != 0x400) {
      *(undefined1 *)(iVar8 + (uint)uVar3 + 0x130) = 0x20;
      *(ushort *)(iVar8 + 2) = uVar3 + 1;
      puVar10 = *(ushort **)(param_1 + 0x38);
      puVar10[(uint)*puVar10 * 3 + 0xf] = puVar10[(uint)*puVar10 * 3 + 0xf] + 1;
      return 0;
    }
    goto LAB_006eac4c;
  case 0x19:
    _lws_log(0x20,"WSI_TOKEN_SKIPPING \'%c\'\n",param_2);
    if (param_2 != 0xd) {
      return 0;
    }
    *(undefined1 *)(param_1 + 0x3e) = 0x1a;
    return 0;
  case 0x1a:
    _lws_log(0x20,"WSI_TOKEN_SKIPPING_SAW_CR \'%c\'\n",param_2);
    if (param_2 == 10) {
      *(undefined1 *)(param_1 + 0x3e) = 0x18;
      *(undefined2 *)(param_1 + 0x3c) = 0;
      return 0;
    }
LAB_006eaafc:
    *(undefined1 *)(param_1 + 0x3e) = 0x19;
    return 0;
  case 0x1b:
    _lws_log(0x20,"WSI_PARSING_COMPLETE \'%c\'\n",param_2);
    return 0;
  default:
    goto switchD_006ea77c_default;
  }
  _lws_log(0x20,"WSI_TOK_(%d) \'%c\'\n",*(undefined1 *)(param_1 + 0x3e),param_2);
  iVar8 = *(int *)(param_1 + 0x38);
  uVar4 = (uint)*(byte *)(param_1 + 0x3e);
  if (*(short *)(iVar8 + (uint)*(byte *)(iVar8 + uVar4 + 4) * 6 + 0x1e) == 0) {
    if (param_2 == 0x20) {
      return 0;
    }
LAB_006ea874:
    if (uVar4 != 9) {
LAB_006ea87c:
      if (param_2 == 0xd) {
        *(undefined1 *)(param_1 + 0x3e) = 0x1a;
        _lws_log(0x20,&DAT_008494d8);
        param_2 = 0;
        iVar8 = *(int *)(param_1 + 0x38);
      }
    }
  }
  else {
    if (uVar4 != 0) goto LAB_006ea874;
    if (param_2 != 0x20) goto LAB_006ea87c;
    *(undefined1 *)(param_1 + 0x3e) = 0x19;
    param_2 = 0;
  }
  uVar3 = *(ushort *)(iVar8 + 2);
  if (uVar3 == 0x400) {
LAB_006eac4c:
    _lws_log(2,"excessive header content\n");
    return 0xffffffff;
  }
  *(char *)(iVar8 + (uint)uVar3 + 0x130) = (char)param_2;
  *(ushort *)(iVar8 + 2) = uVar3 + 1;
  if (param_2 != 0) {
    puVar10 = *(ushort **)(param_1 + 0x38);
    puVar10[(uint)*puVar10 * 3 + 0xf] = puVar10[(uint)*puVar10 * 3 + 0xf] + 1;
  }
  if (*(char *)(param_1 + 0x3e) == '\t') {
LAB_006ea8d0:
    iVar8 = lws_hdr_total_length(param_1,6);
    if (iVar8 != 0) {
      iVar8 = lws_hdr_total_length(param_1,0xb);
      if (iVar8 == 0) {
        uVar6 = (uint)*(byte *)(param_1 + 0x1e);
      }
      else {
        iVar8 = *(int *)(param_1 + 0x38);
        __nptr = (char *)0x0;
        if (*(byte *)(iVar8 + 0xf) != 0) {
          __nptr = (char *)(iVar8 + *(ushort *)(iVar8 + (uint)*(byte *)(iVar8 + 0xf) * 6 + 0x1c) +
                                    0x130);
        }
        uVar4 = atoi(__nptr);
        uVar6 = uVar4 & 0xff;
        *(char *)(param_1 + 0x1e) = (char)uVar4;
      }
      _lws_log(0x20,"v%02d hdrs completed\n",uVar6);
    }
    *(byte *)(param_1 + 0x23) = *(byte *)(param_1 + 0x23) | 1;
    *(undefined1 *)(param_1 + 0x3e) = 0x1b;
    return 0;
  }
switchD_006ea77c_default:
  return 0;
}

// ---- FUN_006eacd8  @ 0x6eacd8
uint FUN_006eacd8(int *param_1,uint param_2)

{
  byte bVar1;
  bool bVar2;
  uint uVar3;
  int iVar4;
  byte bVar5;
  undefined4 *puVar6;
  int iVar7;
  int *piVar8;
  int local_28;
  int local_24;
  
  bVar5 = (byte)param_2;
  switch(*(undefined1 *)((int)param_1 + 0x21)) {
  case 0:
    if (*(char *)((int)param_1 + 0x1e) != '\r') {
      _lws_log(2,"lws_rx_sm: unknown spec version %d\n");
      return 0;
    }
    *(byte *)((int)param_1 + 0x4f) = *(byte *)((int)param_1 + 0x4f) | 2;
    goto LAB_006ead80;
  case 1:
    *(byte *)((int)param_1 + 0x41) = bVar5;
    if (param_2 != 0) {
      *(byte *)((int)param_1 + 0x4f) = *(byte *)((int)param_1 + 0x4f) & 0xfd;
    }
    *(undefined1 *)((int)param_1 + 0x21) = 2;
    uVar3 = 0;
    break;
  case 2:
    *(byte *)((int)param_1 + 0x42) = bVar5;
    if (param_2 != 0) {
      *(byte *)((int)param_1 + 0x4f) = *(byte *)((int)param_1 + 0x4f) & 0xfd;
    }
    *(undefined1 *)((int)param_1 + 0x21) = 3;
    uVar3 = 0;
    break;
  case 3:
    *(byte *)((int)param_1 + 0x43) = bVar5;
    if (param_2 != 0) {
      *(byte *)((int)param_1 + 0x4f) = *(byte *)((int)param_1 + 0x4f) & 0xfd;
    }
    uVar3 = 0;
    *(undefined1 *)(param_1 + 0x11) = 0;
    *(undefined1 *)((int)param_1 + 0x21) = 4;
    break;
  case 4:
LAB_006ead80:
    uVar3 = param_2 & 0xf;
    *(byte *)((int)param_1 + 0x4d) = *(byte *)((int)param_1 + 0x4d) & 0xfe | (byte)(param_2 >> 7);
    *(char *)(param_1 + 0x13) = (char)uVar3;
    *(byte *)((int)param_1 + 0x4e) = bVar5 & 0x70;
    if (uVar3 - 1 < 2) {
      bVar5 = *(byte *)((int)param_1 + 0x4f) & 0xfe;
      if (uVar3 == 2) {
        bVar5 = bVar5 | 1;
      }
      *(byte *)((int)param_1 + 0x4f) = bVar5;
    }
    *(undefined1 *)((int)param_1 + 0x21) = 5;
    uVar3 = 0;
    break;
  case 5:
    uVar3 = param_2 & 0x7f;
    *(byte *)(param_1 + 0x18) = *(byte *)(param_1 + 0x18) & 0xfb | (byte)((param_2 >> 7) << 2);
    if (uVar3 == 0x7e) {
      if ((*(byte *)(param_1 + 0x13) & 8) == 0) {
        *(undefined1 *)((int)param_1 + 0x21) = 6;
        return *(byte *)(param_1 + 0x13) & 8;
      }
LAB_006eb3d4:
      _lws_log(2,"Control frame with xtended length is illegal\n");
      return 0xffffffff;
    }
    if (uVar3 == 0x7f) {
      if ((*(byte *)(param_1 + 0x13) & 8) == 0) {
        *(undefined1 *)((int)param_1 + 0x21) = 8;
        return *(byte *)(param_1 + 0x13) & 8;
      }
      goto LAB_006eb3d4;
    }
    bVar5 = *(byte *)(param_1 + 0x18);
    param_1[0x12] = uVar3;
    if ((bVar5 & 4) != 0) goto LAB_006ead64;
    goto LAB_006eae1c;
  case 6:
    param_1[0x12] = param_2 << 8;
    *(undefined1 *)((int)param_1 + 0x21) = 7;
    uVar3 = 0;
    break;
  case 7:
    goto LAB_006ead4c;
  case 8:
    if ((param_2 & 0x80) == 0) {
      uVar3 = 0;
      param_1[0x12] = 0;
      *(undefined1 *)((int)param_1 + 0x21) = 9;
    }
    else {
      _lws_log(2,"b63 of length must be zero\n");
      uVar3 = 0xffffffff;
    }
    break;
  case 9:
    *(undefined1 *)((int)param_1 + 0x21) = 10;
    uVar3 = 0;
    break;
  case 10:
    *(undefined1 *)((int)param_1 + 0x21) = 0xb;
    uVar3 = 0;
    break;
  case 0xb:
    *(undefined1 *)((int)param_1 + 0x21) = 0xc;
    uVar3 = 0;
    break;
  case 0xc:
    param_1[0x12] = param_1[0x12] | param_2 << 0x18;
    *(undefined1 *)((int)param_1 + 0x21) = 0xd;
    uVar3 = 0;
    break;
  case 0xd:
    param_1[0x12] = param_1[0x12] | param_2 << 0x10;
    *(undefined1 *)((int)param_1 + 0x21) = 0xe;
    uVar3 = 0;
    break;
  case 0xe:
    param_1[0x12] = param_1[0x12] | param_2 << 8;
    *(undefined1 *)((int)param_1 + 0x21) = 0xf;
    uVar3 = 0;
    break;
  case 0xf:
LAB_006ead4c:
    bVar5 = *(byte *)(param_1 + 0x18);
    param_1[0x12] = param_1[0x12] | param_2;
    if ((bVar5 & 4) == 0) {
LAB_006eae1c:
      uVar3 = bVar5 & 4;
      *(undefined1 *)((int)param_1 + 0x21) = 0x14;
    }
    else {
LAB_006ead64:
      *(undefined1 *)((int)param_1 + 0x21) = 0x10;
      uVar3 = 0;
    }
    break;
  case 0x10:
    *(byte *)(param_1 + 0x10) = bVar5;
    if (param_2 != 0) {
      *(byte *)((int)param_1 + 0x4f) = *(byte *)((int)param_1 + 0x4f) & 0xfd;
    }
    *(undefined1 *)((int)param_1 + 0x21) = 0x11;
    uVar3 = 0;
    break;
  case 0x11:
    *(byte *)((int)param_1 + 0x41) = bVar5;
    if (param_2 != 0) {
      *(byte *)((int)param_1 + 0x4f) = *(byte *)((int)param_1 + 0x4f) & 0xfd;
    }
    *(undefined1 *)((int)param_1 + 0x21) = 0x12;
    uVar3 = 0;
    break;
  case 0x12:
    *(byte *)((int)param_1 + 0x42) = bVar5;
    if (param_2 != 0) {
      *(byte *)((int)param_1 + 0x4f) = *(byte *)((int)param_1 + 0x4f) & 0xfd;
    }
    *(undefined1 *)((int)param_1 + 0x21) = 0x13;
    uVar3 = 0;
    break;
  case 0x13:
    *(byte *)((int)param_1 + 0x43) = bVar5;
    if (param_2 != 0) {
      *(byte *)((int)param_1 + 0x4f) = *(byte *)((int)param_1 + 0x4f) & 0xfd;
    }
    *(undefined1 *)((int)param_1 + 0x21) = 0x14;
    *(undefined1 *)(param_1 + 0x11) = 0;
    if (param_1[0x12] != 0) goto switchD_006eacf0_default;
LAB_006eae58:
    puVar6 = (undefined4 *)*param_1;
    goto LAB_006eae5c;
  case 0x14:
    iVar7 = param_1[0xe];
    if (iVar7 == 0) {
      _lws_log(1,"NULL user buffer...\n");
      iVar7 = param_1[0xe];
    }
    if ((*(byte *)((int)param_1 + 0x4f) & 2) == 0) {
      bVar1 = *(byte *)(param_1 + 0x11);
      iVar4 = param_1[0xf];
      *(byte *)(iVar7 + iVar4 + 0x12) = bVar5 ^ *(byte *)((int)param_1 + (bVar1 & 3) + 0x40);
      *(byte *)(param_1 + 0x11) = bVar1 + 1;
      param_1[0xf] = iVar4 + 1;
    }
    else {
      iVar4 = param_1[0xf];
      *(byte *)(iVar7 + iVar4 + 0x12) = bVar5;
      param_1[0xf] = iVar4 + 1;
    }
    iVar7 = param_1[0x12];
    param_1[0x12] = iVar7 + -1;
    if (iVar7 + -1 == 0) {
      *(undefined1 *)((int)param_1 + 0x21) = 0;
      goto LAB_006eae58;
    }
    puVar6 = (undefined4 *)*param_1;
    if (puVar6[3] == 0) {
      if (param_1[0xf] != 0x1000) goto switchD_006eacf0_default;
    }
    else if (puVar6[3] != param_1[0xf]) goto switchD_006eacf0_default;
LAB_006eae5c:
    _lws_log(0x20,"spill on %s\n",*puVar6);
    switch((char)param_1[0x13]) {
    case '\0':
      goto LAB_006eb224;
    case '\x01':
      goto LAB_006eb224;
    case '\x02':
LAB_006eb224:
      local_28 = param_1[0xe] + 0x12;
      local_24 = param_1[0xf];
      if ((char)param_1[7] != '\0') {
        iVar7 = 0;
        piVar8 = param_1 + -1;
        do {
          iVar4 = (**(code **)(piVar8[2] + 4))
                            (*(undefined4 *)(*param_1 + 0x10),piVar8[2],param_1,0x16,piVar8[5],
                             &local_28,0);
          if (iVar4 < 0) {
            _lws_log(0x80,"Extension \'%s\' failed to handle payload!\n",
                     *(undefined4 *)param_1[iVar7 + 1]);
            return 0xffffffff;
          }
          iVar7 = iVar7 + 1;
          piVar8 = piVar8 + 1;
        } while (iVar7 < (int)(uint)*(byte *)(param_1 + 7));
      }
      if (local_24 < 1) {
        uVar3 = 0;
      }
      else {
        *(undefined1 *)(local_28 + local_24) = 0;
        iVar7 = *(int *)(*param_1 + 4);
        if (iVar7 == 0) {
          _lws_log(1,"No callback on payload spill!\n");
          uVar3 = 0;
        }
        else {
          uVar3 = FUN_006e7ce8(iVar7,*(undefined4 *)(*param_1 + 0x10),param_1,5,param_1[0xd],
                               local_28,local_24);
        }
      }
      param_1[0xf] = 0;
      return uVar3;
    case '\x03':
      break;
    case '\x04':
      break;
    case '\x05':
      break;
    case '\x06':
      break;
    case '\a':
      break;
    case '\b':
      if ((char)param_1[8] != '\a') {
        _lws_log(0x20,"server sees client close packet\n");
        iVar7 = libwebsocket_write(param_1,param_1[0xe] + 0x12,param_1[0xf],4);
        if (iVar7 < 0) {
          _lws_log(8,"write of close ack failed %d\n");
        }
        *(undefined1 *)(param_1 + 8) = 6;
        return 0xffffffff;
      }
      _lws_log(0x20,"seen client close ack\n");
      return 0xffffffff;
    case '\t':
      _lws_log(8,"received %d byte ping, sending pong\n",param_1[0xf]);
      lwsl_hexdump(param_1[0xe] + 0x12,param_1[0xf]);
      iVar7 = libwebsocket_write(param_1,param_1[0xe] + 0x12,param_1[0xf],6);
      if (iVar7 < 0) {
        return 0xffffffff;
      }
      goto LAB_006eb180;
    case '\n':
      goto LAB_006eb180;
    }
    _lws_log(0x20,"passing opc %x up to exts\n");
    local_28 = param_1[0xe] + 0x12;
    local_24 = param_1[0xf];
    if ((char)param_1[7] == '\0') {
LAB_006eb16c:
      _lws_log(0x80,"ext opc opcode 0x%x unknown\n",(char)param_1[0x13]);
    }
    else {
      bVar2 = false;
      iVar7 = 0;
      piVar8 = param_1 + -1;
      do {
        iVar4 = (**(code **)(piVar8[2] + 4))
                          (*(undefined4 *)(*param_1 + 0x10),piVar8[2],param_1,0x10,piVar8[5],
                           &local_28,0);
        iVar7 = iVar7 + 1;
        if (iVar4 != 0) {
          bVar2 = true;
        }
        piVar8 = piVar8 + 1;
      } while (iVar7 < (int)(uint)*(byte *)(param_1 + 7));
      if (!bVar2) goto LAB_006eb16c;
    }
LAB_006eb180:
    uVar3 = 0;
    param_1[0xf] = 0;
    break;
  default:
switchD_006eacf0_default:
    uVar3 = 0;
  }
  return uVar3;
}

// ---- FUN_006eb438  @ 0x6eb438
undefined4 FUN_006eb438(int param_1,int param_2,uint param_3)

{
  int iVar1;
  void *__dest;
  uint uVar2;
  size_t __size;
  
  if (param_3 == 0) {
    return 0;
  }
  uVar2 = *(byte *)(param_1 + 0x60) & 1;
  if ((*(byte *)(param_1 + 0x60) & 1) != 0) {
    uVar2 = 0;
    do {
      if (*(int *)(param_1 + 0x54) != 0) {
        *(int *)(param_1 + 0x5c) = *(int *)(param_1 + 0x5c) + 1;
      }
      iVar1 = FUN_006eacd8(param_1,*(undefined1 *)(param_2 + uVar2));
      uVar2 = uVar2 + 1;
      if (iVar1 < 0) {
        return 0xffffffff;
      }
      if (uVar2 == param_3) {
        return 0;
      }
    } while ((*(byte *)(param_1 + 0x60) & 1) != 0);
  }
  if (*(int *)(param_1 + 0x54) != 0) {
    _lws_log(8,"stalling in existing rxflow buf\n");
    return 1;
  }
  __size = param_3 - uVar2;
  _lws_log(8,"new rxflow input buffer len %d\n",__size);
  __dest = malloc(__size);
  *(size_t *)(param_1 + 0x58) = __size;
  *(undefined4 *)(param_1 + 0x5c) = 0;
  *(void **)(param_1 + 0x54) = __dest;
  memcpy(__dest,(void *)(param_2 + uVar2),__size);
  return 1;
}

// ---- FUN_006eb524  @ 0x6eb524
void FUN_006eb524(uint *param_1)

{
  uint uVar1;
  uint uVar2;
  uint uVar3;
  uint uVar4;
  uint uVar5;
  uint uVar6;
  uint uVar7;
  uint uVar8;
  uint uVar9;
  uint uVar10;
  uint uVar11;
  uint uVar12;
  uint uVar13;
  uint uVar14;
  uint uVar15;
  uint uVar16;
  undefined1 local_70;
  undefined1 local_6f;
  undefined1 local_6e;
  undefined1 local_6d;
  undefined1 local_6c;
  undefined1 local_6b;
  undefined1 local_6a;
  undefined1 local_69;
  undefined1 local_68;
  undefined1 local_67;
  undefined1 local_66;
  undefined1 local_65;
  undefined1 local_64;
  undefined1 local_63;
  undefined1 local_62;
  undefined1 local_61;
  undefined1 local_60;
  undefined1 local_5f;
  undefined1 local_5e;
  undefined1 local_5d;
  undefined1 local_5c;
  undefined1 local_5b;
  undefined1 local_5a;
  undefined1 local_59;
  undefined1 local_58;
  undefined1 local_57;
  undefined1 local_56;
  undefined1 local_55;
  undefined1 local_54;
  undefined1 local_53;
  undefined1 local_52;
  undefined1 local_51;
  undefined1 local_50;
  undefined1 local_4f;
  undefined1 local_4e;
  undefined1 local_4d;
  undefined1 local_4c;
  undefined1 local_4b;
  undefined1 local_4a;
  undefined1 local_49;
  undefined1 local_48;
  undefined1 local_47;
  undefined1 local_46;
  undefined1 local_45;
  undefined1 local_44;
  undefined1 local_43;
  undefined1 local_42;
  undefined1 local_41;
  undefined1 local_40;
  undefined1 local_3f;
  undefined1 local_3e;
  undefined1 local_3d;
  undefined1 local_3c;
  undefined1 local_3b;
  undefined1 local_3a;
  undefined1 local_39;
  undefined1 local_38;
  undefined1 local_37;
  undefined1 local_36;
  undefined1 local_35;
  undefined1 local_34;
  undefined1 local_33;
  undefined1 local_32;
  undefined1 local_31;
  
  memcpy(&local_70,param_1 + 8,0x40);
  *(undefined1 *)(param_1 + 8) = local_6d;
  *(undefined1 *)((int)param_1 + 0x21) = local_6e;
  *(undefined1 *)((int)param_1 + 0x22) = local_6f;
  *(undefined1 *)((int)param_1 + 0x23) = local_70;
  *(undefined1 *)(param_1 + 9) = local_69;
  *(undefined1 *)((int)param_1 + 0x25) = local_6a;
  *(undefined1 *)((int)param_1 + 0x26) = local_6b;
  *(undefined1 *)((int)param_1 + 0x27) = local_6c;
  *(undefined1 *)(param_1 + 10) = local_65;
  *(undefined1 *)((int)param_1 + 0x29) = local_66;
  *(undefined1 *)((int)param_1 + 0x2a) = local_67;
  *(undefined1 *)((int)param_1 + 0x2b) = local_68;
  *(undefined1 *)(param_1 + 0xb) = local_61;
  *(undefined1 *)((int)param_1 + 0x2d) = local_62;
  *(undefined1 *)((int)param_1 + 0x2e) = local_63;
  *(undefined1 *)((int)param_1 + 0x2f) = local_64;
  *(undefined1 *)(param_1 + 0xc) = local_5d;
  *(undefined1 *)((int)param_1 + 0x31) = local_5e;
  *(undefined1 *)((int)param_1 + 0x32) = local_5f;
  *(undefined1 *)((int)param_1 + 0x33) = local_60;
  *(undefined1 *)(param_1 + 0xd) = local_59;
  *(undefined1 *)((int)param_1 + 0x35) = local_5a;
  *(undefined1 *)((int)param_1 + 0x36) = local_5b;
  *(undefined1 *)((int)param_1 + 0x37) = local_5c;
  *(undefined1 *)(param_1 + 0xe) = local_55;
  *(undefined1 *)((int)param_1 + 0x39) = local_56;
  *(undefined1 *)((int)param_1 + 0x3a) = local_57;
  *(undefined1 *)((int)param_1 + 0x3b) = local_58;
  *(undefined1 *)(param_1 + 0xf) = local_51;
  *(undefined1 *)((int)param_1 + 0x3d) = local_52;
  *(undefined1 *)((int)param_1 + 0x3e) = local_53;
  *(undefined1 *)((int)param_1 + 0x3f) = local_54;
  *(undefined1 *)(param_1 + 0x10) = local_4d;
  *(undefined1 *)((int)param_1 + 0x41) = local_4e;
  *(undefined1 *)((int)param_1 + 0x42) = local_4f;
  *(undefined1 *)((int)param_1 + 0x43) = local_50;
  *(undefined1 *)(param_1 + 0x11) = local_49;
  *(undefined1 *)((int)param_1 + 0x45) = local_4a;
  *(undefined1 *)((int)param_1 + 0x46) = local_4b;
  *(undefined1 *)((int)param_1 + 0x47) = local_4c;
  *(undefined1 *)(param_1 + 0x12) = local_45;
  *(undefined1 *)((int)param_1 + 0x49) = local_46;
  *(undefined1 *)((int)param_1 + 0x4a) = local_47;
  *(undefined1 *)((int)param_1 + 0x4b) = local_48;
  *(undefined1 *)(param_1 + 0x13) = local_41;
  *(undefined1 *)((int)param_1 + 0x4d) = local_42;
  *(undefined1 *)((int)param_1 + 0x4e) = local_43;
  *(undefined1 *)((int)param_1 + 0x4f) = local_44;
  *(undefined1 *)(param_1 + 0x14) = local_3d;
  *(undefined1 *)((int)param_1 + 0x51) = local_3e;
  *(undefined1 *)((int)param_1 + 0x52) = local_3f;
  uVar15 = param_1[3];
  uVar6 = param_1[4];
  uVar9 = *param_1;
  uVar14 = param_1[1];
  uVar13 = param_1[2];
  *(undefined1 *)((int)param_1 + 0x53) = local_40;
  *(undefined1 *)(param_1 + 0x15) = local_39;
  *(undefined1 *)((int)param_1 + 0x55) = local_3a;
  *(undefined1 *)((int)param_1 + 0x56) = local_3b;
  *(undefined1 *)((int)param_1 + 0x57) = local_3c;
  *(undefined1 *)(param_1 + 0x16) = local_35;
  *(undefined1 *)((int)param_1 + 0x59) = local_36;
  *(undefined1 *)((int)param_1 + 0x5b) = local_38;
  *(undefined1 *)(param_1 + 0x17) = local_31;
  *(undefined1 *)((int)param_1 + 0x5a) = local_37;
  *(undefined1 *)((int)param_1 + 0x5d) = local_32;
  *(undefined1 *)((int)param_1 + 0x5e) = local_33;
  *(undefined1 *)((int)param_1 + 0x5f) = local_34;
  uVar11 = param_1[8];
  uVar7 = 0;
  uVar8 = uVar14;
  uVar12 = uVar15;
  uVar4 = uVar13;
  uVar16 = uVar6;
  uVar3 = uVar9;
  while( true ) {
    uVar10 = uVar12;
    uVar7 = uVar7 + 1;
    uVar11 = (uVar3 >> 0x1b | uVar3 << 5) + 0x5a827999 + (uVar10 & ~uVar8 | uVar8 & uVar4) + uVar16
             + uVar11;
    uVar1 = uVar8 >> 2 | uVar8 << 0x1e;
    if (uVar7 == 0x14) break;
    uVar5 = uVar7 & 0xf;
    uVar2 = uVar5 + 8;
    uVar8 = uVar3;
    uVar12 = uVar4;
    uVar16 = uVar10;
    uVar3 = uVar11;
    if (uVar7 < 0x10) {
      uVar11 = param_1[uVar2];
      uVar4 = uVar1;
    }
    else {
      uVar11 = param_1[(uVar5 + 0xd & 0xf) + 8] ^ param_1[(uVar2 & 0xf) + 8] ^ param_1[uVar2] ^
               param_1[(uVar5 + 2 & 0xf) + 8];
      uVar11 = uVar11 >> 0x1f | uVar11 << 1;
      param_1[uVar2] = uVar11;
      uVar4 = uVar1;
    }
  }
  uVar8 = 0x14;
  do {
    uVar16 = uVar11;
    uVar12 = uVar4;
    uVar4 = uVar1;
    uVar11 = uVar8 & 0xf;
    uVar7 = uVar11 + 8;
    uVar11 = param_1[(uVar11 + 0xd & 0xf) + 8] ^ param_1[(uVar7 & 0xf) + 8] ^ param_1[uVar7] ^
             param_1[(uVar11 + 2 & 0xf) + 8];
    uVar11 = uVar11 >> 0x1f | uVar11 << 1;
    uVar8 = uVar8 + 1;
    param_1[uVar7] = uVar11;
    uVar11 = (uVar16 >> 0x1b | uVar16 << 5) + 0x6ed9eba1 + (uVar4 ^ uVar3 ^ uVar12) + uVar11 +
             uVar10;
    uVar1 = uVar3 >> 2 | uVar3 << 0x1e;
    uVar10 = uVar12;
    uVar3 = uVar16;
  } while (uVar8 != 0x28);
  uVar8 = 0x28;
  do {
    uVar10 = uVar11;
    uVar7 = uVar1;
    uVar3 = uVar4;
    uVar11 = uVar8 & 0xf;
    uVar4 = uVar11 + 8;
    uVar11 = param_1[(uVar11 + 0xd & 0xf) + 8] ^ param_1[(uVar4 & 0xf) + 8] ^ param_1[uVar4] ^
             param_1[(uVar11 + 2 & 0xf) + 8];
    uVar11 = uVar11 >> 0x1f | uVar11 << 1;
    uVar8 = uVar8 + 1;
    param_1[uVar4] = uVar11;
    uVar11 = (uVar10 >> 0x1b | uVar10 << 5) + 0x8f1bbcdc +
             ((uVar3 | uVar7) & uVar16 | uVar3 & uVar7) + uVar11 + uVar12;
    uVar1 = uVar16 >> 2 | uVar16 << 0x1e;
    uVar4 = uVar7;
    uVar12 = uVar3;
    uVar16 = uVar10;
  } while (uVar8 != 0x3c);
  uVar8 = 0x3c;
  do {
    uVar12 = uVar11;
    uVar4 = uVar7;
    uVar7 = uVar1;
    uVar11 = uVar8 & 0xf;
    uVar16 = uVar11 + 8;
    uVar11 = param_1[(uVar11 + 0xd & 0xf) + 8] ^ param_1[(uVar16 & 0xf) + 8] ^ param_1[uVar16] ^
             param_1[(uVar11 + 2 & 0xf) + 8];
    uVar11 = uVar11 >> 0x1f | uVar11 << 1;
    uVar8 = uVar8 + 1;
    param_1[uVar16] = uVar11;
    uVar11 = (uVar12 >> 0x1b | uVar12 << 5) + 0xca62c1d6 + (uVar7 ^ uVar10 ^ uVar4) + uVar11 + uVar3
    ;
    uVar1 = uVar10 >> 2 | uVar10 << 0x1e;
    uVar3 = uVar4;
    uVar10 = uVar12;
  } while (uVar8 != 0x50);
  param_1[3] = uVar7 + uVar15;
  param_1[4] = uVar4 + uVar6;
  *param_1 = uVar11 + uVar9;
  param_1[1] = uVar12 + uVar14;
  param_1[2] = uVar1 + uVar13;
  memset(param_1 + 8,0,0x40);
  return;
}

// ---- FUN_006eba50  @ 0x6eba50
void FUN_006eba50(undefined4 *param_1)

{
  memset(param_1,0,0x68);
  *param_1 = 0x67452301;
  param_1[1] = 0xefcdab89;
  param_1[2] = 0x98badcfe;
  param_1[3] = 0x10325476;
  param_1[4] = 0xc3d2e1f0;
  return;
}

// ---- FUN_006eba98  @ 0x6eba98
void FUN_006eba98(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  byte bVar1;
  undefined1 uVar2;
  uint uVar3;
  uint uVar4;
  
  bVar1 = *(byte *)(param_1 + 0x60);
  uVar3 = bVar1 + 1 & 0x3f;
  *(char *)(param_1 + 0x60) = (char)uVar3;
  *(undefined1 *)(param_1 + (bVar1 & 0x3f) + 0x20) = 0x80;
  if (uVar3 == 0) {
    FUN_006eb524();
    uVar3 = (uint)*(byte *)(param_1 + 0x60);
  }
  uVar3 = uVar3 & 0x3f;
  uVar4 = 0x40 - uVar3;
  if (uVar4 < 8) {
    memset((void *)(param_1 + uVar3 + 0x20),0,uVar4);
    *(byte *)(param_1 + 0x60) = (char)uVar4 + *(char *)(param_1 + 0x60) & 0x3f;
    FUN_006eb524(param_1);
    uVar3 = *(byte *)(param_1 + 0x60) & 0x3f;
    uVar4 = 0x40 - uVar3;
  }
  memset((void *)(param_1 + uVar3 + 0x20),0,uVar4 - 8);
  uVar4 = (*(byte *)(param_1 + 0x60) - 8) + uVar4 & 0x3f;
  uVar3 = uVar4 + 1 & 0x3f;
  *(char *)(param_1 + 0x60) = (char)uVar3;
  *(undefined1 *)(param_1 + uVar4 + 0x20) = *(undefined1 *)(param_1 + 0x1f);
  if (uVar3 == 0) {
    FUN_006eb524(param_1);
    uVar3 = (uint)*(byte *)(param_1 + 0x60);
  }
  uVar4 = uVar3 + 1 & 0x3f;
  *(char *)(param_1 + 0x60) = (char)uVar4;
  *(undefined1 *)(param_1 + (uVar3 & 0x3f) + 0x20) = *(undefined1 *)(param_1 + 0x1e);
  if (uVar4 == 0) {
    FUN_006eb524(param_1);
    uVar4 = (uint)*(byte *)(param_1 + 0x60);
  }
  uVar3 = uVar4 + 1 & 0x3f;
  *(char *)(param_1 + 0x60) = (char)uVar3;
  *(undefined1 *)(param_1 + (uVar4 & 0x3f) + 0x20) = *(undefined1 *)(param_1 + 0x1d);
  if (uVar3 == 0) {
    FUN_006eb524(param_1);
    uVar3 = (uint)*(byte *)(param_1 + 0x60);
  }
  uVar4 = uVar3 + 1 & 0x3f;
  *(char *)(param_1 + 0x60) = (char)uVar4;
  *(undefined1 *)(param_1 + (uVar3 & 0x3f) + 0x20) = *(undefined1 *)(param_1 + 0x1c);
  if (uVar4 == 0) {
    FUN_006eb524(param_1);
    uVar4 = (uint)*(byte *)(param_1 + 0x60);
  }
  uVar3 = uVar4 + 1 & 0x3f;
  *(char *)(param_1 + 0x60) = (char)uVar3;
  *(undefined1 *)(param_1 + (uVar4 & 0x3f) + 0x20) = *(undefined1 *)(param_1 + 0x1b);
  if (uVar3 == 0) {
    FUN_006eb524(param_1);
    uVar3 = (uint)*(byte *)(param_1 + 0x60);
  }
  uVar4 = uVar3 + 1 & 0x3f;
  *(char *)(param_1 + 0x60) = (char)uVar4;
  *(undefined1 *)(param_1 + (uVar3 & 0x3f) + 0x20) = *(undefined1 *)(param_1 + 0x1a);
  if (uVar4 == 0) {
    FUN_006eb524(param_1);
    uVar4 = (uint)*(byte *)(param_1 + 0x60);
  }
  uVar3 = uVar4 + 1 & 0x3f;
  *(char *)(param_1 + 0x60) = (char)uVar3;
  *(undefined1 *)(param_1 + (uVar4 & 0x3f) + 0x20) = *(undefined1 *)(param_1 + 0x19);
  if (uVar3 == 0) {
    FUN_006eb524(param_1);
    uVar3 = (uint)*(byte *)(param_1 + 0x60);
  }
  uVar4 = uVar3 + 1 & 0x3f;
  uVar2 = *(undefined1 *)(param_1 + 0x18);
  *(char *)(param_1 + 0x60) = (char)uVar4;
  *(undefined1 *)(param_1 + (uVar3 & 0x3f) + 0x20) = uVar2;
  if (uVar4 != 0) {
    return;
  }
  FUN_006eb524(param_1,uVar2,0,param_4);
  return;
}

// ---- FUN_006ebd70  @ 0x6ebd70
void FUN_006ebd70(undefined1 *param_1,undefined1 *param_2)

{
  FUN_006eba98();
  *param_2 = param_1[3];
  param_2[1] = param_1[2];
  param_2[2] = param_1[1];
  param_2[3] = *param_1;
  param_2[4] = param_1[7];
  param_2[5] = param_1[6];
  param_2[6] = param_1[5];
  param_2[7] = param_1[4];
  param_2[8] = param_1[0xb];
  param_2[9] = param_1[10];
  param_2[10] = param_1[9];
  param_2[0xb] = param_1[8];
  param_2[0xc] = param_1[0xf];
  param_2[0xd] = param_1[0xe];
  param_2[0xe] = param_1[0xd];
  param_2[0xf] = param_1[0xc];
  param_2[0x10] = param_1[0x13];
  param_2[0x11] = param_1[0x12];
  param_2[0x12] = param_1[0x11];
  param_2[0x13] = param_1[0x10];
  return;
}

// ---- FUN_006ebe24  @ 0x6ebe24
undefined1 * FUN_006ebe24(int param_1,uint param_2,undefined1 *param_3)

{
  uint uVar1;
  uint uVar2;
  uint __n;
  bool bVar3;
  undefined4 local_90;
  undefined4 local_8c;
  undefined4 local_88;
  undefined4 local_84;
  undefined4 local_80;
  uint local_78;
  int iStack_74;
  undefined1 auStack_70 [64];
  byte local_30;
  
  memset(&local_90,0,0x68);
  local_90 = 0x67452301;
  local_8c = 0xefcdab89;
  local_88 = 0x98badcfe;
  local_84 = 0x10325476;
  local_80 = 0xc3d2e1f0;
  if (param_2 != 0) {
    uVar2 = 0;
    do {
      while( true ) {
        uVar1 = 0x40 - (local_30 & 0x3f);
        __n = param_2 - uVar2;
        if (uVar1 <= param_2 - uVar2) {
          __n = uVar1;
        }
        memcpy(auStack_70 + (local_30 & 0x3f),(void *)(param_1 + uVar2),__n);
        bVar3 = CARRY4(local_78,__n * 8);
        local_78 = local_78 + __n * 8;
        uVar1 = __n + local_30 & 0x3f;
        iStack_74 = iStack_74 + (uint)bVar3;
        uVar2 = uVar2 + __n;
        local_30 = (byte)uVar1;
        if (uVar1 != 0) break;
        FUN_006eb524(&local_90);
        if (param_2 <= uVar2) goto LAB_006ebef8;
      }
    } while (uVar2 < param_2);
  }
LAB_006ebef8:
  FUN_006eba98(&local_90);
  param_3[1] = local_90._2_1_;
  param_3[2] = local_90._1_1_;
  param_3[3] = (undefined1)local_90;
  param_3[0xb] = (char)local_88;
  *param_3 = local_90._3_1_;
  param_3[4] = local_8c._3_1_;
  param_3[5] = local_8c._2_1_;
  param_3[6] = local_8c._1_1_;
  param_3[7] = (undefined1)local_8c;
  param_3[8] = local_88._3_1_;
  param_3[9] = local_88._2_1_;
  param_3[10] = local_88._1_1_;
  param_3[0xc] = local_84._3_1_;
  param_3[0xe] = local_84._1_1_;
  param_3[0xf] = (undefined1)local_84;
  param_3[0x10] = local_80._3_1_;
  param_3[0xd] = local_84._2_1_;
  param_3[0x11] = local_80._2_1_;
  param_3[0x12] = local_80._1_1_;
  param_3[0x13] = (undefined1)local_80;
  return param_3;
}

// ---- FUN_006ebfd0  @ 0x6ebfd0
undefined4 FUN_006ebfd0(int param_1,int *param_2)

{
  char cVar1;
  bool bVar2;
  int iVar3;
  char *pcVar4;
  byte *pbVar5;
  uint uVar6;
  size_t sVar7;
  void *pvVar8;
  int *piVar9;
  byte bVar10;
  undefined4 uVar11;
  byte *pbVar12;
  int iVar13;
  undefined4 *puVar14;
  size_t sVar15;
  int iVar16;
  char *local_c4;
  uint local_ac;
  char local_a8 [132];
  
  iVar3 = lws_hdr_total_length(param_2,0xe);
  if (iVar3 == 0) {
    _lws_log(8,"no ACCEPT\n");
  }
  else {
    pcVar4 = (char *)FUN_006ea62c(param_2,0x10);
    if (pcVar4 == (char *)0x0) {
      _lws_log(8,"no URI\n");
    }
    else {
      iVar3 = strncmp(pcVar4,"101",3);
      if (iVar3 == 0) {
        pbVar5 = (byte *)FUN_006ea62c(param_2,6);
        if (pbVar5 == (byte *)0x0) {
          _lws_log(8,"no UPGRADE\n");
        }
        else {
          uVar6 = (uint)*pbVar5;
          if (uVar6 != 0) {
            pbVar12 = pbVar5 + -1;
            do {
              iVar3 = tolower(uVar6);
              pbVar12[1] = (byte)iVar3;
              uVar6 = (uint)pbVar12[2];
              pbVar12 = pbVar12 + 1;
            } while (uVar6 != 0);
          }
          iVar3 = strcmp((char *)pbVar5,"websocket");
          if (iVar3 == 0) {
            pbVar5 = (byte *)FUN_006ea62c(param_2,2);
            if (pbVar5 == (byte *)0x0) {
              _lws_log(8,"no Connection hdr\n");
            }
            else {
              uVar6 = (uint)*pbVar5;
              if (uVar6 != 0) {
                pbVar12 = pbVar5 + -1;
                do {
                  iVar3 = tolower(uVar6);
                  pbVar12[1] = (byte)iVar3;
                  uVar6 = (uint)pbVar12[2];
                  pbVar12 = pbVar12 + 1;
                } while (uVar6 != 0);
              }
              iVar3 = strcmp((char *)pbVar5,"upgrade");
              if (iVar3 == 0) {
                pbVar5 = (byte *)FUN_006ea62c(param_2,0x12);
                if (pbVar5 == (byte *)0x0) {
                  _lws_log(0x20,"lws_client_int_s_hs: no protocol list\n");
                }
                else {
                  _lws_log(0x20,"lws_client_int_s_hs: protocol list \'%s\'\n",pbVar5);
                }
                iVar3 = lws_hdr_total_length(param_2,5);
                if (iVar3 != 0) {
                  pcVar4 = (char *)FUN_006ea62c(param_2,5);
                  bVar2 = false;
                  sVar7 = strlen(pcVar4);
                  bVar10 = *pbVar5;
                  while (bVar10 != 0) {
                    if (bVar2) goto LAB_006ec524;
                    iVar3 = strncmp((char *)pbVar5,pcVar4,sVar7);
                    if ((iVar3 == 0) && (pbVar5[sVar7] == 0x2c || pbVar5[sVar7] == 0)) {
                      bVar2 = true;
                    }
                    else {
                      if (bVar10 != 0x2c) {
                        do {
                          pbVar5 = pbVar5 + 1;
                          bVar10 = *pbVar5;
                          if (bVar10 == 0x2c || bVar10 == 0) goto joined_r0x006ec258;
                        } while( true );
                      }
                      do {
                        pbVar5 = pbVar5 + 1;
                        bVar10 = *pbVar5;
joined_r0x006ec258:
                      } while ((bVar10 & 0xdf) != 0);
                    }
                  }
                  if (bVar2) {
LAB_006ec524:
                    puVar14 = *(undefined4 **)(param_1 + 0x1144);
                    local_ac = 0;
                    iVar3 = puVar14[1];
                    *param_2 = 0;
                    if (iVar3 != 0) {
                      sVar7 = 1;
                      do {
                        sVar15 = sVar7;
                        iVar3 = strcmp(pcVar4,(char *)*puVar14);
                        if (iVar3 == 0) {
                          *param_2 = (int)puVar14;
                          goto LAB_006ec2b8;
                        }
                        piVar9 = puVar14 + 7;
                        puVar14 = puVar14 + 6;
                        sVar7 = sVar15 + 1;
                        local_ac = sVar15;
                      } while (*piVar9 != 0);
                    }
                    _lws_log(1,"lws_client_int_s_hs: fail protocol %s\n",pcVar4);
                    uVar11 = 0x3ea;
                  }
                  else {
                    _lws_log(1,"lws_client_int_s_hs: got bad protocol %s\n",pcVar4);
                    uVar11 = 0x3ea;
                  }
                  goto LAB_006ec018;
                }
                _lws_log(8,"lws_client_int_s_hs: WSI_TOKEN_PROTOCOL is null\n");
                *param_2 = *(int *)(param_1 + 0x1144);
LAB_006ec2b8:
                iVar3 = lws_hdr_total_length(param_2,0xd);
                if (iVar3 == 0) {
                  _lws_log(0x80,"no client extenstions allowed by server\n");
                }
                else {
                  local_c4 = (char *)(param_1 + 0x120);
                  iVar3 = lws_hdr_copy(param_2,local_c4,0x1000,0xd);
                  if (iVar3 < 0) {
                    _lws_log(2,"ext list from server failed to copy\n");
                    uVar11 = 0x3ea;
                    goto LAB_006ec018;
                  }
                  bVar2 = true;
                  local_ac = 0;
                  do {
                    cVar1 = *local_c4;
                    if (((cVar1 == '\0') || (cVar1 == ' ' || cVar1 == ',')) || (cVar1 == '\t')) {
                      local_a8[local_ac] = '\0';
                      if (cVar1 == '\0') {
                        bVar2 = false;
                      }
                      else {
                        local_c4 = local_c4 + 1;
                        if (local_ac == 0) goto LAB_006ec3b4;
                      }
                      _lws_log(0x80,"checking client ext %s\n",local_a8);
                      puVar14 = *(undefined4 **)(*(int *)(*param_2 + 0x10) + 0x114c);
                      local_ac = 0;
                      if ((puVar14 != (undefined4 *)0x0) && (puVar14[1] != 0)) {
                        do {
                          iVar3 = strcmp(local_a8,(char *)*puVar14);
                          if (iVar3 == 0) {
                            local_ac = 1;
                            _lws_log(0x80,"instantiating client ext %s\n",local_a8);
                            sVar7 = puVar14[2];
                            bVar10 = *(byte *)(param_2 + 7);
                            pvVar8 = malloc(sVar7);
                            param_2[bVar10 + 4] = (int)pvVar8;
                            if (pvVar8 == (void *)0x0) {
                              uVar11 = 0x3ea;
                              _lws_log(1,"Out of mem\n");
                              goto LAB_006ec018;
                            }
                            memset(pvVar8,0,sVar7);
                            bVar10 = *(byte *)(param_2 + 7);
                            iVar3 = *param_2;
                            param_2[bVar10 + 1] = (int)puVar14;
                            (*(code *)puVar14[1])
                                      (*(undefined4 *)(iVar3 + 0x10),puVar14,param_2,5,
                                       param_2[bVar10 + 4],0,0);
                            *(char *)(param_2 + 7) = (char)param_2[7] + '\x01';
                          }
                        } while ((puVar14 + 4 != (undefined4 *)0x0) &&
                                (piVar9 = puVar14 + 5, puVar14 = puVar14 + 4, *piVar9 != 0));
                        if (local_ac != 0) {
                          local_ac = 0;
                          goto LAB_006ec3b4;
                        }
                      }
                      uVar11 = 0x3ea;
                      _lws_log(2,"Unknown ext \'%s\'!\n",local_a8);
                      goto LAB_006ec018;
                    }
                    local_c4 = local_c4 + 1;
                    uVar6 = local_ac;
                    if (local_ac < 0x7f) {
                      uVar6 = local_ac + 1;
                    }
                    local_a8[local_ac] = cVar1;
                    if (local_ac < 0x7f) {
                      local_ac = uVar6;
                    }
LAB_006ec3b4:
                  } while (bVar2);
                }
                pcVar4 = (char *)FUN_006ea62c(param_2,0xe);
                iVar13 = param_2[0xe];
                iVar3 = strcmp(pcVar4,(char *)(iVar13 + 0x530));
                if (iVar3 != 0) {
                  _lws_log(2,"lws_client_int_s_hs: accept %s wrong vs %s\n",pcVar4,
                           (char *)(iVar13 + 0x530));
                  uVar11 = 0x3ea;
                  goto LAB_006ec018;
                }
                iVar3 = FUN_006e7de8(param_2);
                if (iVar3 != 0) {
                  _lws_log(1,"Problem allocating wsi user mem\n");
                  uVar11 = 0x3ea;
                  goto LAB_006ec018;
                }
                (**(code **)(*param_2 + 4))(param_1,param_2,2,param_2[0xd],0,0);
                FUN_006e7c98(param_2,0,0);
                if ((void *)param_2[0xe] != (void *)0x0) {
                  free((void *)param_2[0xe]);
                }
                *(undefined1 *)(param_2 + 8) = 4;
                *(undefined1 *)((int)param_2 + 0x1f) = 3;
                memset(param_2 + 0xe,0,0x2c);
                *(undefined1 *)(param_2 + 0x18) = 1;
                if (*(int *)(*param_2 + 0xc) == 0) {
                  local_ac = 0x1016;
                }
                else {
                  local_ac = *(int *)(*param_2 + 0xc) + 0x16;
                }
                pvVar8 = malloc(local_ac);
                param_2[0xe] = (int)pvVar8;
                if (pvVar8 == (void *)0x0) {
                  _lws_log(1,"Out of Mem allocating rx buffer %d\n",local_ac);
                  uVar11 = 0x3ea;
                  goto LAB_006ec018;
                }
                _lws_log(8,"Allocating client RX buffer %d\n",local_ac);
                iVar3 = setsockopt(param_2[0xb],1,7,&local_ac,4);
                if (iVar3 == 0) {
                  _lws_log(0x10,"handshake OK for protocol %s\n",*(undefined4 *)*param_2);
                  (**(code **)(*param_2 + 4))(param_1,param_2,3,param_2[0xd],0,0);
                  for (iVar3 = *(int *)(param_1 + 0x114c);
                      (iVar3 != 0 && (*(code **)(iVar3 + 4) != (code *)0x0)); iVar3 = iVar3 + 0x10)
                  {
                    local_ac = (uint)*(byte *)(param_2 + 7);
                    if (local_ac == 0) {
                      local_ac = 0;
                      iVar13 = 0;
                    }
                    else {
                      iVar16 = 0;
                      iVar13 = 0;
                      piVar9 = param_2 + -1;
                      do {
                        iVar16 = iVar16 + 1;
                        if (piVar9[2] == iVar3) {
                          iVar13 = piVar9[5];
                        }
                        piVar9 = piVar9 + 1;
                      } while (iVar16 < (int)local_ac);
                    }
                    (**(code **)(iVar3 + 4))(param_1,iVar3,param_2,10,iVar13,0,0);
                  }
                  return 0;
                }
                _lws_log(2,"Failed to set SNDBUF to %d",local_ac);
              }
              else {
                _lws_log(2,"lws_client_int_s_hs: bad header %s\n",pbVar5);
              }
            }
          }
          else {
            _lws_log(2,"lws_client_handshake: got bad Upgrade header \'%s\'\n",pbVar5);
          }
        }
      }
      else {
        _lws_log(2,"lws_client_handshake: got bad HTTP response \'%s\'\n",pcVar4);
      }
    }
  }
  free((void *)param_2[0xe]);
  uVar11 = 0;
  param_2[0xe] = 0;
LAB_006ec018:
  if (*param_2 != 0) {
    (**(code **)(*param_2 + 4))(param_1,param_2,1,param_2[0xd],0,0);
  }
  _lws_log(8,"closing connection due to bail2 connection error\n");
  if ((void *)param_2[0xe] != (void *)0x0) {
    free((void *)param_2[0xe]);
  }
  FUN_006e82e8(param_1,param_2,uVar11);
  return 1;
}

// ---- FUN_006ec8c4  @ 0x6ec8c4
char * FUN_006ec8c4(int param_1,int param_2,char *param_3)

{
  int *piVar1;
  int iVar2;
  undefined4 uVar3;
  size_t sVar4;
  uint uVar5;
  char *pcVar6;
  int iVar7;
  uint uVar8;
  code *pcVar9;
  int local_f8;
  char *local_e8;
  undefined1 auStack_e4 [20];
  char acStack_d0 [39];
  undefined1 local_a9;
  char acStack_a8 [132];
  
  local_e8 = param_3;
  iVar2 = libwebsockets_get_random(param_1,auStack_e4,0x10);
  if (iVar2 == 0x10) {
    lws_b64_encode_string(auStack_e4,0x10,acStack_d0,0x28);
    pcVar6 = local_e8;
    uVar3 = FUN_006ea62c(param_2,0x14);
    iVar2 = sprintf(pcVar6,"GET %s HTTP/1.1\r\n",uVar3);
    local_e8 = pcVar6 + iVar2;
    memcpy(local_e8,"Pragma: no-cache\r\nCache-Control: no-cache\r\n",0x2c);
    pcVar6 = local_e8 + 0x2b;
    local_e8 = pcVar6;
    uVar3 = FUN_006ea62c(param_2,0x15);
    iVar2 = sprintf(pcVar6,"Host: %s\r\n",uVar3);
    local_e8 = pcVar6 + iVar2;
    memcpy(local_e8,"Upgrade: websocket\r\nConnection: Upgrade\r\nSec-WebSocket-Key: ",0x3d);
    local_e8 = local_e8 + 0x3c;
    strcpy(local_e8,acStack_d0);
    sVar4 = strlen(acStack_d0);
    local_e8 = local_e8 + sVar4;
    memcpy(local_e8,&DAT_00849be4,3);
    local_e8 = local_e8 + 2;
    iVar2 = FUN_006ea62c(param_2,0x16);
    pcVar6 = local_e8;
    if (iVar2 != 0) {
      uVar3 = FUN_006ea62c(param_2,0x16);
      iVar2 = sprintf(pcVar6,"Origin: %s\r\n",uVar3);
      local_e8 = pcVar6 + iVar2;
    }
    iVar2 = FUN_006ea62c(param_2,0x12);
    pcVar6 = local_e8;
    if (iVar2 != 0) {
      uVar3 = FUN_006ea62c(param_2,0x12);
      iVar2 = sprintf(pcVar6,"Sec-WebSocket-Protocol: %s\r\n",uVar3);
      local_e8 = pcVar6 + iVar2;
    }
    memcpy(local_e8,"Sec-WebSocket-Extensions: ",0x1b);
    iVar2 = *(int *)(param_1 + 0x114c);
    local_e8 = local_e8 + 0x1a;
    if ((iVar2 != 0) && (*(int *)(iVar2 + 4) != 0)) {
      local_f8 = 0;
      iVar7 = iVar2 + 0x10;
      if (iVar2 == 0) goto LAB_006ecb54;
LAB_006ecac8:
      pcVar9 = *(code **)(iVar2 + 4);
      if (pcVar9 == (code *)0x0) goto LAB_006ecb54;
      uVar8 = 0;
      do {
        uVar5 = (*pcVar9)(param_1,iVar2,param_2,7,0,*(undefined4 *)(iVar7 + -0x10),0);
        uVar8 = uVar8 | uVar5;
        if (iVar2 + 0x10 == 0) break;
        pcVar9 = *(code **)(iVar2 + 0x14);
        iVar2 = iVar2 + 0x10;
      } while (pcVar9 != (code *)0x0);
      if (uVar8 == 0) goto LAB_006ecb54;
      _lws_log(0x80,"ext %s vetoed\n",*(undefined4 *)(iVar7 + -0x10));
      while (iVar7 != 0) {
        while( true ) {
          piVar1 = (int *)(iVar7 + 4);
          iVar7 = iVar7 + 0x10;
          if (*piVar1 == 0) goto LAB_006ecbd0;
          iVar2 = *(int *)(param_1 + 0x114c);
          if (iVar2 != 0) goto LAB_006ecac8;
LAB_006ecb54:
          iVar2 = (**(code **)(*(int *)(param_1 + 0x1144) + 4))
                            (param_1,param_2,0x14,*(undefined4 *)(param_2 + 0x34),
                             *(undefined4 *)(iVar7 + -0x10),0);
          if (iVar2 != 0) break;
          pcVar6 = local_e8;
          if (local_f8 != 0) {
            pcVar6 = local_e8 + 1;
            *local_e8 = ',';
          }
          if (local_f8 != 0) {
            local_e8 = pcVar6;
          }
          iVar2 = sprintf(pcVar6,"%s",*(undefined4 *)(iVar7 + -0x10));
          local_f8 = local_f8 + 1;
          local_e8 = pcVar6 + iVar2;
          if (iVar7 == 0) goto LAB_006ecbd0;
        }
      }
    }
LAB_006ecbd0:
    memcpy(local_e8,&DAT_00849be4,3);
    pcVar6 = local_e8 + 2;
    if (*(char *)(param_2 + 0x1e) != '\0') {
      local_e8 = pcVar6;
      iVar2 = sprintf(pcVar6,"Sec-WebSocket-Version: %d\r\n");
      pcVar6 = pcVar6 + iVar2;
    }
    local_e8 = pcVar6;
    (**(code **)(*(int *)(param_1 + 0x1144) + 4))
              (param_1,param_2,0x12,0,&local_e8,param_3 + (0xff4 - (int)pcVar6));
    memcpy(local_e8,&DAT_00849be4,3);
    local_e8 = local_e8 + 2;
    local_a9 = 0;
    iVar2 = sprintf(acStack_a8,"%s258EAFA5-E914-47DA-95CA-C5AB0DC85B11",acStack_d0);
    FUN_006ebe24(acStack_a8,iVar2,auStack_e4);
    lws_b64_encode_string(auStack_e4,0x14,*(int *)(param_2 + 0x38) + 0x530,0x1e);
  }
  else {
    _lws_log(1,"Unable to read from random dev %s\n","/dev/urandom");
    FUN_006e82e8(param_1,param_2,0);
    local_e8 = (char *)0x0;
  }
  return local_e8;
}

// ---- FUN_006ecd38  @ 0x6ecd38
uint FUN_006ecd38(int param_1,int param_2,undefined4 *param_3)

{
  int iVar1;
  uint uVar2;
  char *__s1;
  void *__buf;
  ssize_t sVar3;
  undefined1 local_20 [12];
  
  switch(*(undefined1 *)(param_2 + 0x1f)) {
  case 5:
    uVar2 = *(ushort *)((int)param_3 + 6) & 0x18;
    if ((*(ushort *)((int)param_3 + 6) & 0x18) == 0) {
      __s1 = (char *)(param_1 + 0x120);
      sVar3 = recv(*(int *)(param_2 + 0x2c),__s1,0x1000,uVar2);
      if (sVar3 < 0) {
        FUN_006e82e8(param_1,param_2,uVar2);
        _lws_log(1,"ERROR reading from proxy socket\n");
        return uVar2;
      }
      *(char *)(param_1 + 0x12d) = (char)uVar2;
      iVar1 = strcmp(__s1,"HTTP/1.0 200 ");
      if (iVar1 != 0) {
        FUN_006e82e8(param_1,param_2,uVar2);
        _lws_log(1,"ERROR proxy: %s\n",__s1);
        return uVar2;
      }
      FUN_006e7c98(param_2,0,0);
      goto LAB_006ece0c;
    }
    _lws_log(2,"Proxy connection %p (fd=%d) dead\n",param_2,*param_3);
    break;
  case 6:
LAB_006ece0c:
    __buf = (void *)(param_1 + 0x120);
    iVar1 = FUN_006ec8c4(param_1,param_2,__buf);
    if (iVar1 == 0) {
      _lws_log(1,"Failed to generate handshake for client\n");
      FUN_006e82e8(param_1,param_2,0);
      return 0;
    }
    sVar3 = send(*(int *)(param_2 + 0x2c),__buf,iVar1 - (int)__buf,0);
    if (-1 < sVar3) {
      *(undefined1 *)(param_2 + 0x3e) = 0x18;
      *(undefined2 *)(param_2 + 0x3c) = 0;
      *(undefined1 *)(param_2 + 0x1f) = 7;
      FUN_006e7c98(param_2,3,5);
      return 0;
    }
    _lws_log(0x10,"ERROR writing to client socket\n");
    break;
  case 7:
    if ((*(ushort *)((int)param_3 + 6) & 0x18) == 0) {
      if ((*(ushort *)((int)param_3 + 6) & 1) == 0) {
        return 0;
      }
      sVar3 = 1;
      do {
        if (*(char *)(param_2 + 0x3e) == '\x1b') {
          uVar2 = FUN_006ebfd0(param_1,param_2);
          return uVar2;
        }
        if (sVar3 < 1) {
          return 0;
        }
        sVar3 = recv(*(int *)(param_2 + 0x2c),local_20,1,0);
        if (sVar3 < 0) {
          _lws_log(2,"error on parsing recv\n");
          goto LAB_006ecee4;
        }
        iVar1 = FUN_006ea768(param_2,local_20[0]);
      } while (iVar1 == 0);
      _lws_log(2,"problems parsing header\n");
    }
    else {
      _lws_log(0x10,"Server connection %p (fd=%d) dead\n",param_2,*param_3);
    }
LAB_006ecee4:
    _lws_log(8,"closing connection at LWS_CONNMODE...SERVER_REPLY\n");
    FUN_006e82e8(param_1,param_2,0);
    return 0;
  case 8:
    _lws_log(0x80,"LWS_CONNMODE_WS_CLIENT_WAITING_EXTENSION_CONNECT\n");
    return 0;
  case 9:
    _lws_log(0x80,"LWS_CONNMODE_WS_CLIENT_PENDING_CANDIDATE_CHILD\n");
  default:
    goto LAB_006ecd9c;
  }
  FUN_006e82e8(param_1,param_2,0);
LAB_006ecd9c:
  return 0;
}

// ---- FUN_006ed568  @ 0x6ed568
uint FUN_006ed568(int *param_1,uint param_2)

{
  byte bVar1;
  bool bVar2;
  uint uVar3;
  int iVar4;
  int iVar5;
  byte bVar6;
  int iVar7;
  int *piVar8;
  code *pcVar9;
  int local_28;
  int local_24;
  
  bVar6 = (byte)param_2;
  switch(*(undefined1 *)((int)param_1 + 0x21)) {
  case 0:
    if (*(char *)((int)param_1 + 0x1e) == '\r') {
      uVar3 = param_2 & 0xf;
      *(byte *)((int)param_1 + 0x4d) = *(byte *)((int)param_1 + 0x4d) & 0xfe | (byte)(param_2 >> 7);
      *(char *)(param_1 + 0x13) = (char)uVar3;
      *(byte *)((int)param_1 + 0x4e) = bVar6 & 0x70;
      if (uVar3 - 1 < 2) {
        bVar6 = *(byte *)((int)param_1 + 0x4f) & 0xfe;
        if (uVar3 == 2) {
          bVar6 = bVar6 | 1;
        }
        *(byte *)((int)param_1 + 0x4f) = bVar6;
      }
      *(undefined1 *)((int)param_1 + 0x21) = 5;
      uVar3 = 0;
    }
    else {
      _lws_log(1,"unknown spec version %02d\n");
      uVar3 = 0;
    }
    break;
  case 1:
  default:
switchD_006ed580_default:
    _lws_log(1,"client rx illegal state\n");
    uVar3 = 1;
    break;
  case 2:
    goto switchD_006ed580_default;
  case 3:
    goto switchD_006ed580_default;
  case 4:
    goto switchD_006ed580_default;
  case 5:
    *(byte *)(param_1 + 0x18) = *(byte *)(param_1 + 0x18) & 0xfb | (byte)((param_2 >> 7) << 2);
    if ((param_2 & 0x7f) == 0x7e) {
      if ((*(byte *)(param_1 + 0x13) & 8) == 0) {
        *(undefined1 *)((int)param_1 + 0x21) = 6;
        return *(byte *)(param_1 + 0x13) & 8;
      }
LAB_006edc0c:
      _lws_log(2,"Control frame asking for extended length is illegal\n");
      return 0xffffffff;
    }
    if ((param_2 & 0x7f) == 0x7f) {
      if ((*(byte *)(param_1 + 0x13) & 8) == 0) {
        *(undefined1 *)((int)param_1 + 0x21) = 8;
        return *(byte *)(param_1 + 0x13) & 8;
      }
      goto LAB_006edc0c;
    }
    bVar6 = *(byte *)(param_1 + 0x18);
    param_1[0x12] = param_2;
    goto joined_r0x006ed5f0;
  case 6:
    param_1[0x12] = param_2 << 8;
    *(undefined1 *)((int)param_1 + 0x21) = 7;
    uVar3 = 0;
    break;
  case 7:
    goto LAB_006ed5dc;
  case 8:
    if ((param_2 & 0x80) == 0) {
      uVar3 = 0;
      param_1[0x12] = 0;
      *(undefined1 *)((int)param_1 + 0x21) = 9;
    }
    else {
      _lws_log(2,"b63 of length must be zero\n");
      uVar3 = 0xffffffff;
    }
    break;
  case 9:
    *(undefined1 *)((int)param_1 + 0x21) = 10;
    uVar3 = 0;
    break;
  case 10:
    *(undefined1 *)((int)param_1 + 0x21) = 0xb;
    uVar3 = 0;
    break;
  case 0xb:
    *(undefined1 *)((int)param_1 + 0x21) = 0xc;
    uVar3 = 0;
    break;
  case 0xc:
    param_1[0x12] = param_1[0x12] | param_2 << 0x18;
    *(undefined1 *)((int)param_1 + 0x21) = 0xd;
    uVar3 = 0;
    break;
  case 0xd:
    param_1[0x12] = param_1[0x12] | param_2 << 0x10;
    *(undefined1 *)((int)param_1 + 0x21) = 0xe;
    uVar3 = 0;
    break;
  case 0xe:
    param_1[0x12] = param_1[0x12] | param_2 << 8;
    *(undefined1 *)((int)param_1 + 0x21) = 0xf;
    uVar3 = 0;
    break;
  case 0xf:
LAB_006ed5dc:
    bVar6 = *(byte *)(param_1 + 0x18);
    param_2 = param_2 | param_1[0x12];
    param_1[0x12] = param_2;
joined_r0x006ed5f0:
    if ((bVar6 & 4) != 0) {
      *(undefined1 *)((int)param_1 + 0x21) = 0x10;
      return 0;
    }
    if (param_2 != 0) {
      *(undefined1 *)((int)param_1 + 0x21) = 0x14;
      return bVar6 & 4;
    }
    *(undefined1 *)((int)param_1 + 0x21) = 0;
    goto LAB_006ed608;
  case 0x10:
    *(byte *)(param_1 + 0x10) = bVar6;
    if (param_2 != 0) {
      *(byte *)((int)param_1 + 0x4f) = *(byte *)((int)param_1 + 0x4f) & 0xfd;
    }
    *(undefined1 *)((int)param_1 + 0x21) = 0x11;
    uVar3 = 0;
    break;
  case 0x11:
    *(byte *)((int)param_1 + 0x41) = bVar6;
    if (param_2 != 0) {
      *(byte *)((int)param_1 + 0x4f) = *(byte *)((int)param_1 + 0x4f) & 0xfd;
    }
    *(undefined1 *)((int)param_1 + 0x21) = 0x12;
    uVar3 = 0;
    break;
  case 0x12:
    *(byte *)((int)param_1 + 0x42) = bVar6;
    if (param_2 != 0) {
      *(byte *)((int)param_1 + 0x4f) = *(byte *)((int)param_1 + 0x4f) & 0xfd;
    }
    *(undefined1 *)((int)param_1 + 0x21) = 0x13;
    uVar3 = 0;
    break;
  case 0x13:
    *(byte *)((int)param_1 + 0x43) = bVar6;
    if (param_2 != 0) {
      *(byte *)((int)param_1 + 0x4f) = *(byte *)((int)param_1 + 0x4f) & 0xfd;
    }
    if (param_1[0x12] != 0) {
      *(undefined1 *)((int)param_1 + 0x21) = 0x14;
      return 0;
    }
LAB_006ed6b0:
    *(undefined1 *)((int)param_1 + 0x21) = 0;
    goto LAB_006ed608;
  case 0x14:
    iVar7 = param_1[0xe];
    if (iVar7 == 0) {
      _lws_log(1,"NULL client rx_user_buffer\n");
      iVar7 = param_1[0xe];
    }
    if (((*(byte *)(param_1 + 0x18) & 4) == 0) || ((*(byte *)((int)param_1 + 0x4f) & 2) != 0)) {
      iVar5 = param_1[0xf];
      *(byte *)(iVar7 + iVar5 + 0x12) = bVar6;
      param_1[0xf] = iVar5 + 1;
    }
    else {
      bVar1 = *(byte *)(param_1 + 0x11);
      iVar5 = param_1[0xf];
      *(byte *)(iVar7 + iVar5 + 0x12) = bVar6 ^ *(byte *)((int)param_1 + (bVar1 & 3) + 0x40);
      *(byte *)(param_1 + 0x11) = bVar1 + 1;
      param_1[0xf] = iVar5 + 1;
    }
    iVar7 = param_1[0x12];
    param_1[0x12] = iVar7 + -1;
    if (iVar7 + -1 == 0) goto LAB_006ed6b0;
    if (*(int *)(*param_1 + 0xc) == 0) {
      if (param_1[0xf] != 0x1000) {
        return 0;
      }
    }
    else if (*(int *)(*param_1 + 0xc) != param_1[0xf]) {
      return 0;
    }
LAB_006ed608:
    switch((char)param_1[0x13]) {
    case '\0':
      goto LAB_006eda10;
    case '\x01':
      goto LAB_006eda10;
    case '\x02':
LAB_006eda10:
      iVar7 = 6;
LAB_006ed8f8:
      local_28 = param_1[0xe] + 0x12;
      local_24 = param_1[0xf];
      if ((char)param_1[7] != '\0') {
        iVar5 = 0;
        piVar8 = param_1 + -1;
        do {
          iVar4 = (**(code **)(piVar8[2] + 4))
                            (*(undefined4 *)(*param_1 + 0x10),piVar8[2],param_1,0x16,piVar8[5],
                             &local_28,0);
          if (iVar4 < 0) {
            _lws_log(0x80,"Ext \'%s\' failed to handle payload!\n",*(undefined4 *)param_1[iVar5 + 1]
                    );
            return 0xffffffff;
          }
          iVar5 = iVar5 + 1;
          piVar8 = piVar8 + 1;
        } while (iVar5 < (int)(uint)*(byte *)(param_1 + 7));
      }
      if (0 < local_24) {
        *(undefined1 *)(local_28 + local_24) = 0;
        iVar5 = *param_1;
        pcVar9 = *(code **)(iVar5 + 4);
        if (pcVar9 != (code *)0x0) {
          if (iVar7 == 7) {
            _lws_log(8,"Client doing pong callback\n");
            iVar5 = *param_1;
            pcVar9 = *(code **)(iVar5 + 4);
          }
          (*pcVar9)(*(undefined4 *)(iVar5 + 0x10),param_1,iVar7,param_1[0xd],local_28,local_24);
        }
      }
      goto LAB_006ed9bc;
    case '\x03':
      break;
    case '\x04':
      break;
    case '\x05':
      break;
    case '\x06':
      break;
    case '\a':
      break;
    case '\b':
      if ((char)param_1[8] == '\a') {
        _lws_log(0x20,"seen server\'s close ack\n");
        return 0xffffffff;
      }
      _lws_log(0x20,"client sees server close len = %d\n",param_1[0xf]);
      libwebsocket_write(param_1,param_1[0xe] + 0x12,param_1[0xf],4);
      *(undefined1 *)(param_1 + 8) = 6;
      return 0xffffffff;
    case '\t':
      _lws_log(8,"client received ping, doing pong\n");
      libwebsocket_write(param_1,param_1[0xe] + 0x12,param_1[0xf],6);
      goto LAB_006ed9bc;
    case '\n':
      _lws_log(8,"client receied pong\n");
      lwsl_hexdump(param_1[0xe] + 0x12,param_1[0xf]);
      iVar7 = 7;
      goto LAB_006ed8f8;
    }
    _lws_log(0x20,"Reserved opc 0x%2X\n");
    local_28 = param_1[0xe] + 0x12;
    local_24 = param_1[0xf];
    if ((char)param_1[7] != '\0') {
      iVar7 = 0;
      bVar2 = false;
      piVar8 = param_1 + -1;
      do {
        iVar5 = (**(code **)(piVar8[2] + 4))
                          (*(undefined4 *)(*param_1 + 0x10),piVar8[2],param_1,0x10,piVar8[5],
                           &local_28,0);
        iVar7 = iVar7 + 1;
        if (iVar5 != 0) {
          bVar2 = true;
        }
        piVar8 = piVar8 + 1;
      } while (iVar7 < (int)(uint)*(byte *)(param_1 + 7));
      if (bVar2) {
LAB_006ed9bc:
        param_1[0xf] = 0;
        return 0;
      }
    }
    _lws_log(0x80,"Unhandled ext opc 0x%x\n",(char)param_1[0x13]);
    uVar3 = 0;
    param_1[0xf] = 0;
  }
  return uVar3;
}

// ---- FUN_006edc68  @ 0x6edc68
uint FUN_006edc68(int param_1,undefined4 param_2,int param_3,undefined4 param_4,int *param_5,
                 int *param_6)

{
  void *pvVar1;
  undefined4 uVar2;
  int iVar3;
  byte *pbVar4;
  int iVar5;
  size_t __n;
  size_t sVar6;
  uint uVar7;
  
  switch(param_4) {
  case 4:
    goto LAB_006edd7c;
  case 5:
LAB_006edd7c:
    param_5[0x16] = 0;
    param_5[8] = 0;
    param_5[0x17] = 0;
    param_5[9] = 0;
    param_5[0x18] = 0;
    param_5[10] = 0;
    iVar3 = inflateInit2_(param_5,0xfffffff1,"1.2.3",0x38);
    if (iVar3 != 0) {
      _lws_log(0x80,"deflateInit returned %d\n",iVar3);
      return 1;
    }
    if (*(int *)(param_1 + 0x10) == 0) {
      uVar2 = 0xffffffff;
    }
    else {
      uVar2 = 1;
    }
    iVar3 = deflateInit2_(param_5 + 0xe,uVar2,8,0xfffffff1,8,0,"1.2.3",0x38);
    if (iVar3 == 0) {
      param_5[0x1c] = 0;
      param_5[0x1d] = 0;
      param_5[0x20] = 0;
      param_5[0x21] = 0;
      param_5[0x1e] = 4;
      param_5[0x1f] = 4;
      pvVar1 = malloc(0x1a);
      param_5[0x22] = (int)pvVar1;
      if (pvVar1 != (void *)0x0) {
        pvVar1 = malloc(0x1a);
        param_5[0x23] = (int)pvVar1;
        if (pvVar1 != (void *)0x0) {
          _lws_log(0x80,"zlibs constructed\n");
          return 0;
        }
      }
      _lws_log(1,"Out of mem\n");
      inflateEnd(param_5);
      deflateEnd(param_5 + 0xe);
      return 0xffffffff;
    }
    _lws_log(0x80,"deflateInit2 returned %d\n",iVar3);
    return 1;
  case 6:
    break;
  case 7:
    uVar7 = strcmp((char *)param_6,"x-webkit-deflate-frame");
    if (uVar7 < 2) {
      return 1 - uVar7;
    }
    return 0;
  case 8:
    if ((void *)param_5[0x21] != (void *)0x0) {
      free((void *)param_5[0x21]);
    }
    free((void *)param_5[0x22]);
    free((void *)param_5[0x23]);
    param_5[0x1c] = 0;
    param_5[0x1d] = 0;
    param_5[0x1e] = 0;
    param_5[0x1f] = 0;
    param_5[0x20] = 0;
    inflateEnd(param_5);
    deflateEnd(param_5 + 0xe);
    _lws_log(0x80,"zlibs destructed\n");
    return 0;
  case 9:
    break;
  case 10:
    break;
  case 0xb:
    break;
  case 0xc:
    if (param_5[0x20] == 0) {
      return 0;
    }
    pbVar4 = (byte *)*param_6;
    param_5[0x20] = 0;
    *pbVar4 = *pbVar4 | 0x40;
    return 0;
  case 0xd:
    break;
  case 0xe:
    break;
  case 0xf:
    break;
  case 0x10:
    break;
  case 0x11:
    break;
  case 0x12:
    break;
  case 0x13:
    break;
  case 0x14:
    break;
  case 0x15:
    iVar3 = *param_6;
    iVar5 = param_6[1];
    param_5[0x11] = param_5[0x23] + 0x12;
    param_5[0xe] = iVar3;
    param_5[0xf] = iVar5;
    param_5[0x12] = param_5[0x1f];
    while( true ) {
      iVar3 = deflate(param_5 + 0xe,2);
      if (iVar3 == -2) {
        _lws_log(0x80,"zlib error deflate\n");
        return 0xffffffff;
      }
      if (param_5[0x12] != 0) {
        iVar3 = param_5[0x23];
        param_5[0x20] = 1;
        param_6[1] = (param_5[0x11] - (iVar3 + 0x12)) + -4;
        *param_6 = iVar3 + 0x12;
        return 0;
      }
      uVar7 = param_5[0x1f] * 2;
      param_5[0x1f] = uVar7;
      iVar3 = param_5[0x11] - (param_5[0x23] + 0x12);
      if (0x10000 < uVar7) {
        _lws_log(0x80,"zlib out hit limit %u\n",0x10000);
        return 0xffffffff;
      }
      pvVar1 = realloc((void *)param_5[0x23],uVar7 + 0x16);
      param_5[0x23] = (int)pvVar1;
      if (pvVar1 == (void *)0x0) break;
      _lws_log(0x10,"deflate-frame ext TX did realloc to %ld\n",param_5[0x1e]);
      param_5[0x11] = param_5[0x23] + iVar3 + 0x12;
      param_5[0x12] = param_5[0x1f] - iVar3;
    }
    goto LAB_006ee100;
  case 0x16:
    if ((*(byte *)(param_3 + 0x4e) & 0x40) == 0) {
      return *(byte *)(param_3 + 0x4e) & 0x40;
    }
    __n = param_6[1];
    iVar3 = param_5[0x1c];
    if (*(int *)(param_3 + 0x48) != 0) {
      uVar7 = iVar3 + *(int *)(param_3 + 0x48) + __n;
      pvVar1 = (void *)param_5[0x21];
      if ((uint)param_5[0x1d] < uVar7) {
        param_5[0x1d] = uVar7;
        if (pvVar1 != (void *)0x0) {
          free(pvVar1);
        }
        pvVar1 = malloc(uVar7 + 4);
        param_5[0x21] = (int)pvVar1;
        if (pvVar1 == (void *)0x0) goto LAB_006ee100;
        iVar3 = param_5[0x1c];
      }
      memcpy((void *)((int)pvVar1 + iVar3),(void *)*param_6,__n);
      param_5[0x1c] = param_5[0x1c] + __n;
      *param_6 = 0;
      param_6[1] = 0;
      return 0;
    }
    if (iVar3 == 0) {
      iVar3 = *param_6;
      *param_5 = iVar3;
      sVar6 = __n;
    }
    else {
      sVar6 = __n + iVar3;
      memcpy((void *)(param_5[0x21] + iVar3),(void *)*param_6,__n);
      iVar3 = param_5[0x21];
      param_5[0x1c] = 0;
      *param_5 = iVar3;
    }
    *(undefined1 *)(iVar3 + sVar6) = 0;
    *(undefined1 *)(*param_5 + sVar6 + 1) = 0;
    *(undefined1 *)(*param_5 + sVar6 + 2) = 0xff;
    *(undefined1 *)(*param_5 + sVar6 + 3) = 0xff;
    param_5[1] = sVar6 + 4;
    param_5[3] = param_5[0x22] + 0x12;
    param_5[4] = param_5[0x1e];
    while( true ) {
      iVar3 = inflate(param_5,2);
      if ((iVar3 + 4U < 7) && ((1 << (iVar3 + 4U & 0xff) & 0x47U) != 0)) {
        _lws_log(1,"zlib error inflate %d: %s\n",iVar3,param_5[6]);
        return 0xffffffff;
      }
      if (param_5[4] != 0) {
        iVar5 = param_5[0x22];
        iVar3 = param_5[3];
        *param_6 = iVar5 + 0x12;
        param_6[1] = iVar3 - (iVar5 + 0x12);
        return 0;
      }
      uVar7 = param_5[0x1e] * 2;
      param_5[0x1e] = uVar7;
      iVar3 = param_5[3] - (param_5[0x22] + 0x12);
      if (0x10000 < uVar7) {
        _lws_log(0x80,"zlib in buffer hit limit %u\n",0x10000);
        return 0xffffffff;
      }
      pvVar1 = realloc((void *)param_5[0x22],uVar7 + 0x16);
      param_5[0x22] = (int)pvVar1;
      if (pvVar1 == (void *)0x0) break;
      _lws_log(0x10,"deflate-frame ext RX did realloc to %ld\n",param_5[0x1e]);
      param_5[3] = param_5[0x22] + iVar3 + 0x12;
      param_5[4] = param_5[0x1e] - iVar3;
    }
LAB_006ee100:
    _lws_log(1,"Out of memory\n");
    return 0xffffffff;
  }
  return 0;
}

// ---- FUN_006ee268  @ 0x6ee268
uint FUN_006ee268(void)

{
  int iVar1;
  undefined4 uVar2;
  undefined4 *puVar3;
  size_t __n;
  int in_r3;
  undefined4 uVar4;
  undefined4 *in_stack_00000000;
  undefined4 *in_stack_00000004;
  
  switch(in_r3) {
  case 4:
    goto LAB_006ee3b4;
  case 5:
LAB_006ee3b4:
    in_stack_00000000[0x16] = 0;
    in_stack_00000000[8] = 0;
    in_stack_00000000[0x17] = 0;
    in_stack_00000000[9] = 0;
    in_stack_00000000[0x18] = 0;
    in_stack_00000000[10] = 0;
    iVar1 = inflateInit2_(in_stack_00000000,0xfffffff1,"1.2.3",0x38);
    if (iVar1 != 0) {
      _lws_log(1,"deflateInit returned %d\n",iVar1);
      return 1;
    }
    iVar1 = deflateInit2_(in_stack_00000000 + 0xe,1,8,0xfffffff1,8,0,"1.2.3",0x38);
    if (iVar1 != 0) {
      _lws_log(1,"deflateInit returned %d\n",iVar1);
      return 1;
    }
    _lws_log(0x80,"zlibs constructed\n");
    in_stack_00000000[0x1c] = 0;
    return 0;
  case 6:
    break;
  case 7:
    break;
  case 8:
    inflateEnd(in_stack_00000000);
    deflateEnd(in_stack_00000000 + 0xe);
    _lws_log(0x80,"zlibs destructed\n");
    return 0;
  case 9:
    break;
  case 10:
    break;
  case 0xb:
    iVar1 = in_stack_00000000[0x1c];
    if (iVar1 == 0) {
      puVar3 = (undefined4 *)*in_stack_00000004;
      iVar1 = in_stack_00000004[1];
    }
    else {
      puVar3 = in_stack_00000000 + 0x1d;
      in_stack_00000000[0x1c] = 0;
    }
    *in_stack_00000000 = puVar3;
    in_stack_00000000[1] = iVar1;
    in_stack_00000000[4] = 0x1000;
    in_stack_00000000[3] = in_stack_00000000 + 0x41d;
    iVar1 = inflate(in_stack_00000000,2);
    if ((iVar1 + 4U < 7) && ((1 << (iVar1 + 4U & 0xff) & 0x43U) != 0)) {
      _lws_log(1,"zlib error inflate %d\n",iVar1);
      return 0xffffffff;
    }
    __n = in_stack_00000000[1];
    iVar1 = 0x1000 - in_stack_00000000[4];
    *in_stack_00000004 = in_stack_00000000 + 0x41d;
    in_stack_00000004[1] = iVar1;
    if (__n != 0) {
      in_stack_00000000[0x1c] = __n;
      memcpy(in_stack_00000000 + 0x1d,(void *)*in_stack_00000000,__n);
      return 1;
    }
    goto LAB_006ee308;
  case 0xc:
    goto LAB_006ee2b8;
  case 0xd:
    break;
  case 0xe:
    break;
  case 0xf:
LAB_006ee2b8:
    uVar4 = *in_stack_00000004;
    if (in_r3 == 0xf) {
      uVar2 = 3;
    }
    else {
      uVar2 = 1;
    }
    in_stack_00000000[0xf] = in_stack_00000004[1];
    in_stack_00000000[0xe] = uVar4;
    in_stack_00000000[0x11] = in_stack_00000000 + 0x41d;
    in_stack_00000000[0x12] = 0x1000;
    iVar1 = deflate(in_stack_00000000 + 0xe,uVar2);
    if (iVar1 == -2) {
      _lws_log(0x80,"zlib error deflate\n");
      return 0xffffffff;
    }
    iVar1 = in_stack_00000000[0x12];
    *in_stack_00000004 = in_stack_00000000 + 0x41d;
    iVar1 = 0x1000 - iVar1;
    in_stack_00000004[1] = iVar1;
LAB_006ee308:
    return (uint)(iVar1 == 0x1000);
  }
  return 0;
}

// ---- FUN_006ee4e4  @ 0x6ee4e4
void FUN_006ee4e4(void)

{
  __pid_t _Var1;
  
  _Var1 = getpid();
  if (_Var1 == DAT_0098bd88) {
    if (DAT_00968e6c != (char *)0x0) {
      unlink(DAT_00968e6c);
      free(DAT_00968e6c);
      DAT_00968e6c = (char *)0x0;
    }
  }
  _Var1 = getpid();
  kill(_Var1,9);
  return;
}

// ---- FUN_006ee544  @ 0x6ee544
void FUN_006ee544(int param_1)

{
  char *pcVar1;
  int __fd;
  undefined4 *puVar2;
  int *piVar3;
  char *pcVar4;
  size_t __n;
  size_t sVar5;
  undefined4 uVar6;
  char acStack_34 [24];
  
  if ((param_1 != 0xe) && (param_1 != 0x11)) {
    if (param_1 != 10) {
      return;
    }
    __fd = open(DAT_00968e6c,0x242,0x1a0);
    pcVar1 = DAT_00968e6c;
    if (-1 < __fd) {
      __n = sprintf(acStack_34,"%u",DAT_0098bd88);
      sVar5 = write(__fd,acStack_34,__n);
      pcVar1 = DAT_00968e6c;
      if (__n != sVar5) {
        puVar2 = (undefined4 *)__errno();
        uVar6 = *puVar2;
        piVar3 = (int *)__errno();
        pcVar4 = strerror(*piVar3);
        fprintf((FILE *)recv,"unable write pid to lock file %s, code=%d (%s)\n",pcVar1,uVar6,pcVar4)
        ;
      }
      close(__fd);
                    /* WARNING: Subroutine does not return */
      exit((uint)(__n == sVar5));
    }
    puVar2 = (undefined4 *)__errno();
    uVar6 = *puVar2;
    piVar3 = (int *)__errno();
    pcVar4 = strerror(*piVar3);
    fprintf((FILE *)recv,"unable to create lock file %s, code=%d (%s)\n",pcVar1,uVar6,pcVar4);
  }
                    /* WARNING: Subroutine does not return */
  exit(1);
}

// ---- FUN_006ee684  @ 0x6ee684
undefined4 FUN_006ee684(void)

{
  return DAT_0098bd88;
}

// ---- FUN_006eeadc  @ 0x6eeadc
undefined4 FUN_006eeadc(int *param_1)

{
  undefined4 *puVar1;
  int __fd;
  char *__ptr;
  int iVar2;
  int *piVar3;
  char *pcVar4;
  void *pvVar5;
  size_t __size;
  undefined4 uVar6;
  char *__s;
  char *__src;
  int local_64;
  size_t local_60;
  char *local_5c;
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
  
  puVar1 = (undefined4 *)__errno();
  *puVar1 = 6;
  local_58 = 0;
  local_54 = 0;
  local_50 = 0;
  local_4c = 0;
  __fd = socket(2,2,0);
  if (__fd < 0) {
    return 0xffffffff;
  }
  __size = 0x2000;
  while( true ) {
    __ptr = calloc(1,__size);
    if (__ptr == (char *)0x0) goto LAB_006eebb4;
    local_60 = __size;
    local_5c = __ptr;
    iVar2 = ioctl(__fd,0x8912,&local_60);
    if ((iVar2 < 0) && (piVar3 = (int *)__errno(), *piVar3 != 0x16)) goto LAB_006eeb88;
    if ((int)local_60 < (int)__size) break;
    free(__ptr);
    __size = __size << 1;
  }
  if (local_5c + local_60 <= local_5c) goto LAB_006eecac;
  piVar3 = &local_64;
  __s = local_5c;
  while( true ) {
    local_48 = 0;
    local_44 = 0;
    local_40 = 0;
    local_3c = 0;
    local_38 = 0;
    local_34 = 0;
    local_30 = 0;
    local_2c = 0;
    memcpy(&local_48,__s,0x10);
    iVar2 = ioctl(__fd,0x8913,&local_48);
    __src = __s + 0x10;
    if (iVar2 < 0) break;
    puVar1 = malloc(0x1c);
    *piVar3 = (int)puVar1;
    *puVar1 = 0;
    iVar2 = *piVar3;
    pcVar4 = strdup(__s);
    __s = __s + 0x20;
    *(char **)(iVar2 + 4) = pcVar4;
    iVar2 = *piVar3;
    *(int *)(iVar2 + 8) = (int)(short)local_38;
    pvVar5 = malloc(0x10);
    *(void **)(iVar2 + 0xc) = pvVar5;
    memcpy(*(void **)(*piVar3 + 0xc),__src,0x10);
    *(undefined4 *)(*piVar3 + 0x10) = 0;
    *(undefined4 *)(*piVar3 + 0x14) = 0;
    *(undefined4 *)(*piVar3 + 0x18) = 0;
    piVar3 = (int *)*piVar3;
    if (local_5c + local_60 <= __s) {
LAB_006eecac:
      *param_1 = local_64;
      close(__fd);
      free(__ptr);
      return 0;
    }
  }
LAB_006eeb88:
  puVar1 = (undefined4 *)__errno();
  uVar6 = *puVar1;
LAB_006eeb90:
  close(__fd);
  free(__ptr);
  puVar1 = (undefined4 *)__errno();
  *puVar1 = uVar6;
  return 0xffffffff;
LAB_006eebb4:
  uVar6 = 0xc;
  goto LAB_006eeb90;
}

// ---- FUN_006ef864  @ 0x6ef864
void FUN_006ef864(int param_1,int param_2,char *param_3)

{
  byte bVar1;
  char cVar2;
  byte *pbVar3;
  uint uVar4;
  int iVar5;
  int iVar6;
  
  iVar6 = 0;
  pbVar3 = (byte *)(param_1 + 0x1df);
  iVar5 = 0;
  do {
    pbVar3 = pbVar3 + 1;
    bVar1 = *pbVar3;
    uVar4 = (uint)bVar1;
    iVar6 = iVar6 + 1;
    if (uVar4 - 0x5b < 6 || 0x39 < uVar4 - 0x41) {
      *(undefined1 *)(param_2 + iVar5) = 0x5b;
      cVar2 = "0123456789ABCDEFIDAT"[uVar4 & 0xf];
      *(char *)(param_2 + iVar5 + 1) = "0123456789ABCDEFIDAT"[bVar1 >> 4];
      *(char *)(param_2 + iVar5 + 2) = cVar2;
      *(undefined1 *)(param_2 + iVar5 + 3) = 0x5d;
      iVar5 = iVar5 + 4;
    }
    else {
      *(byte *)(param_2 + iVar5) = bVar1;
      iVar5 = iVar5 + 1;
    }
  } while (iVar6 != 4);
  if (param_3 == (char *)0x0) {
    *(undefined1 *)(param_2 + iVar5) = 0;
  }
  else {
    *(undefined1 *)(param_2 + iVar5) = 0x3a;
    *(undefined1 *)(param_2 + iVar5 + 1) = 0x20;
    iVar6 = iVar5 + 2;
    do {
      if (*param_3 == '\0') break;
      *(char *)(param_2 + iVar6) = *param_3;
      iVar6 = iVar6 + 1;
      param_3 = param_3 + 1;
    } while (iVar6 != iVar5 + 0x41);
    *(undefined1 *)(param_2 + iVar6) = 0;
  }
  return;
}
