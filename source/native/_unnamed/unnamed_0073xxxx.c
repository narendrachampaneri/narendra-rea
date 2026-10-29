// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 80 functions

// ---- FUN_0073009c  @ 0x73009c
undefined4 FUN_0073009c(int *param_1,undefined4 *param_2,uint param_3,uint param_4)

{
  int iVar1;
  void *__s;
  uint uVar2;
  int extraout_r1;
  int extraout_r1_00;
  undefined4 uVar3;
  code *pcVar4;
  int iVar5;
  undefined4 *puVar6;
  undefined4 *puVar7;
  int iVar8;
  undefined4 *puVar9;
  undefined4 *puVar10;
  undefined4 uVar11;
  uint uVar12;
  uint uVar13;
  int iVar14;
  int iVar15;
  int iVar16;
  undefined4 *puVar17;
  int local_74;
  void *local_70;
  int local_68;
  int local_64;
  int local_5c;
  uint local_44;
  undefined4 local_38;
  int local_30;
  int local_2c [2];
  
  iVar14 = *param_1;
  iVar15 = param_1[3];
  pcVar4 = (code *)param_1[0xd];
  local_74 = TIFFTileSize(iVar14);
  if (iVar15 == 0) {
    iVar1 = 3;
  }
  else {
    iVar1 = 4;
  }
  __s = _TIFFmalloc(local_74 * iVar1);
  if (__s == (void *)0x0) {
    uVar11 = *(undefined4 *)(iVar14 + 0x264);
    uVar3 = TIFFFileName(iVar14);
    TIFFErrorExt(uVar11,uVar3,"No space for tile buffer");
    local_38 = 0;
  }
  else {
    if (iVar15 == 0) {
      _TIFFmemset(__s,0,local_74 * 3);
      local_70 = (void *)((int)__s + local_74 * 2);
      local_5c = 0;
    }
    else {
      _TIFFmemset(__s,0,local_74 << 2);
      local_70 = (void *)((int)__s + local_74 * 2);
      local_5c = (int)local_70 + local_74;
    }
    local_74 = (int)__s + local_74;
    TIFFGetField(iVar14,0x142,local_2c);
    TIFFGetField(iVar14,0x143,&local_30);
    uVar2 = FUN_00728eb8(param_1);
    if ((uVar2 & 1) == 0) {
      iVar1 = param_3 - local_2c[0];
      local_64 = 0;
    }
    else {
      iVar1 = -(param_3 + local_2c[0]);
      local_64 = param_4 - 1;
    }
    if (param_4 != 0) {
      local_38 = 1;
      uVar13 = 0;
      do {
        local_68 = local_30;
        iVar8 = uVar13 + param_1[0x13];
        __aeabi_uidivmod(iVar8,local_30);
        local_68 = local_68 - extraout_r1;
        local_44 = local_68 + uVar13;
        if (param_4 < local_44) {
          local_68 = param_4 - uVar13;
          local_44 = local_68 + uVar13;
        }
        if (param_3 != 0) {
          uVar12 = 0;
          while (((((iVar8 = TIFFReadTile(iVar14,__s,uVar12 + param_1[0x14],iVar8,0,0), -1 < iVar8
                    || (param_1[1] == 0)) &&
                   ((iVar8 = TIFFReadTile(iVar14,local_74,uVar12 + param_1[0x14],
                                          uVar13 + param_1[0x13],0,1), -1 < iVar8 ||
                    (param_1[1] == 0)))) &&
                  ((iVar8 = TIFFReadTile(iVar14,local_70,uVar12 + param_1[0x14],
                                         uVar13 + param_1[0x13],0,2), -1 < iVar8 ||
                   (param_1[1] == 0)))) &&
                 ((iVar15 == 0 ||
                  ((iVar8 = TIFFReadTile(iVar14,local_5c,uVar12 + param_1[0x14],
                                         uVar13 + param_1[0x13],0,3), -1 < iVar8 ||
                   (param_1[1] == 0))))))) {
            __aeabi_uidivmod(uVar13 + param_1[0x13],local_30);
            iVar8 = TIFFTileRowSize(iVar14);
            iVar8 = extraout_r1_00 * iVar8;
            if (param_3 < uVar12 + local_2c[0]) {
              iVar5 = local_2c[0] - (param_3 - uVar12);
              iVar16 = local_74 + iVar8;
              if (iVar15 != 0) {
                iVar16 = local_5c;
              }
              if (iVar15 != 0) {
                iVar16 = iVar16 + iVar8;
              }
              else {
                iVar16 = 0;
              }
              (*pcVar4)(param_1,param_2 + uVar12 + param_3 * local_64,uVar12,local_64,
                        param_3 - uVar12,local_68,iVar5,iVar5 + iVar1,(void *)((int)__s + iVar8),
                        local_74 + iVar8,(void *)((int)local_70 + iVar8),iVar16);
            }
            else {
              if (iVar15 == 0) {
                iVar16 = 0;
              }
              else {
                iVar16 = local_5c + iVar8;
              }
              (*pcVar4)(param_1,param_2 + param_3 * local_64 + uVar12,uVar12,local_64,local_2c[0],
                        local_68,0,iVar1,(void *)((int)__s + iVar8),local_74 + iVar8,
                        (void *)((int)local_70 + iVar8),iVar16);
            }
            uVar12 = uVar12 + local_2c[0];
            if (param_3 <= uVar12) goto LAB_00730454;
            iVar8 = uVar13 + param_1[0x13];
          }
          local_38 = 0;
        }
LAB_00730454:
        if ((uVar2 & 1) != 0) {
          local_68 = -local_68;
        }
        if (param_4 <= local_44) goto LAB_007304c8;
        local_64 = local_64 + local_68;
        uVar13 = local_44;
      } while( true );
    }
    local_38 = 1;
LAB_007304c8:
    if (((uVar2 & 2) != 0) && (param_4 != 0)) {
      uVar2 = 0;
      puVar17 = param_2 + (param_3 - 1);
      do {
        puVar6 = puVar17;
        puVar9 = param_2;
        if (param_2 < puVar17) {
          do {
            uVar3 = *puVar9;
            puVar10 = puVar9 + 1;
            *puVar9 = *puVar6;
            puVar7 = puVar6 + -1;
            *puVar6 = uVar3;
            puVar6 = puVar7;
            puVar9 = puVar10;
          } while (puVar10 < puVar7);
        }
        uVar2 = uVar2 + 1;
        param_2 = param_2 + param_3;
        puVar17 = puVar17 + param_3;
      } while (uVar2 != param_4);
    }
    _TIFFfree(__s);
  }
  return local_38;
}

// ---- FUN_00730574  @ 0x730574
undefined4 FUN_00730574(int *param_1,undefined4 *param_2,uint param_3,uint param_4)

{
  int iVar1;
  int iVar2;
  void *__s;
  uint uVar3;
  int iVar4;
  undefined4 uVar5;
  int iVar6;
  code *pcVar7;
  int extraout_r1;
  int extraout_r1_00;
  int extraout_r1_01;
  int extraout_r1_02;
  int extraout_r1_03;
  undefined4 uVar8;
  int extraout_r1_04;
  int extraout_r1_05;
  undefined4 *puVar9;
  undefined4 *puVar10;
  undefined4 *puVar11;
  undefined4 *puVar12;
  uint uVar13;
  int iVar14;
  int iVar15;
  int iVar16;
  undefined4 *puVar17;
  int local_60;
  void *local_5c;
  int local_40;
  int local_3c;
  int local_38;
  int local_2c [2];
  
  iVar15 = *param_1;
  iVar1 = param_1[3];
  pcVar7 = (code *)param_1[0xd];
  uVar13 = param_1[4];
  local_60 = TIFFStripSize(iVar15);
  if (iVar1 == 0) {
    iVar2 = 3;
  }
  else {
    iVar2 = 4;
  }
  __s = _TIFFmalloc(local_60 * iVar2);
  if (__s == (void *)0x0) {
    uVar8 = *(undefined4 *)(iVar15 + 0x264);
    uVar5 = TIFFFileName(iVar15);
    TIFFErrorExt(uVar8,uVar5,"No space for tile buffer");
    uVar5 = 0;
  }
  else {
    if (iVar1 == 0) {
      _TIFFmemset(__s,0,local_60 * 3);
      local_5c = (void *)((int)__s + local_60 * 2);
      local_38 = 0;
    }
    else {
      _TIFFmemset(__s,0,local_60 << 2);
      local_5c = (void *)((int)__s + local_60 * 2);
      local_38 = (int)local_5c + local_60;
    }
    local_60 = (int)__s + local_60;
    uVar3 = FUN_00728eb8(param_1);
    if ((uVar3 & 1) == 0) {
      iVar2 = 0;
      local_40 = 0;
    }
    else {
      iVar2 = param_4 - 1;
      local_40 = param_3 * -2;
    }
    TIFFGetFieldDefaulted(iVar15,0x116,local_2c);
    iVar4 = TIFFScanlineSize(iVar15);
    if (param_3 < uVar13) {
      local_3c = uVar13 - param_3;
    }
    else {
      local_3c = 0;
    }
    if (param_4 != 0) {
      uVar13 = 0;
      do {
        iVar14 = local_2c[0];
        iVar16 = uVar13 + param_1[0x13];
        __aeabi_uidivmod(iVar16,local_2c[0]);
        iVar14 = iVar14 - extraout_r1_02;
        if (param_4 < iVar14 + uVar13) {
          iVar14 = param_4 - uVar13;
        }
        uVar5 = TIFFComputeStrip(iVar15,iVar16,0);
        __aeabi_uidivmod(uVar13 + param_1[0x13],local_2c[0]);
        iVar6 = TIFFReadEncodedStrip(iVar15,uVar5,__s,iVar4 * (iVar14 + extraout_r1_03));
        if ((iVar6 < 0) && (param_1[1] != 0)) {
LAB_00730840:
          uVar5 = 0;
          goto LAB_00730848;
        }
        uVar5 = TIFFComputeStrip(iVar15,iVar16,1);
        __aeabi_uidivmod(uVar13 + param_1[0x13],local_2c[0]);
        iVar6 = TIFFReadEncodedStrip(iVar15,uVar5,local_60,iVar4 * (iVar14 + extraout_r1));
        if ((iVar6 < 0) && (param_1[1] != 0)) goto LAB_00730840;
        uVar5 = TIFFComputeStrip(iVar15,iVar16,2);
        __aeabi_uidivmod(uVar13 + param_1[0x13],local_2c[0]);
        iVar6 = TIFFReadEncodedStrip(iVar15,uVar5,local_5c,iVar4 * (iVar14 + extraout_r1_00));
        if ((iVar6 < 0) && (param_1[1] != 0)) goto LAB_00730840;
        if (iVar1 == 0) {
          __aeabi_uidivmod(uVar13 + param_1[0x13],local_2c[0]);
          iVar16 = iVar4 * extraout_r1_01;
          iVar6 = 0;
        }
        else {
          uVar5 = TIFFComputeStrip(iVar15,iVar16,3);
          __aeabi_uidivmod(uVar13 + param_1[0x13],local_2c[0]);
          iVar16 = TIFFReadEncodedStrip(iVar15,uVar5,local_38,iVar4 * (iVar14 + extraout_r1_04));
          if ((iVar16 < 0) && (param_1[1] != 0)) goto LAB_00730840;
          __aeabi_uidivmod(uVar13 + param_1[0x13],local_2c[0]);
          iVar16 = iVar4 * extraout_r1_05;
          iVar6 = local_38 + iVar16;
        }
        uVar13 = uVar13 + iVar14;
        (*pcVar7)(param_1,(undefined4 *)(iVar2 * param_3 * 4 + (int)param_2),0,iVar2,param_3,iVar14,
                  local_3c,local_40,(int)__s + iVar16,local_60 + iVar16,(int)local_5c + iVar16,iVar6
                 );
        if ((uVar3 & 1) != 0) {
          iVar14 = -iVar14;
        }
        if (param_4 <= uVar13) break;
        iVar2 = iVar2 + iVar14;
      } while( true );
    }
    uVar5 = 1;
LAB_00730848:
    if (((uVar3 & 2) != 0) && (param_4 != 0)) {
      uVar13 = 0;
      puVar17 = param_2 + (param_3 - 1);
      do {
        puVar9 = puVar17;
        puVar11 = param_2;
        if (param_2 < puVar17) {
          do {
            uVar8 = *puVar11;
            puVar12 = puVar11 + 1;
            *puVar11 = *puVar9;
            puVar10 = puVar9 + -1;
            *puVar9 = uVar8;
            puVar9 = puVar10;
            puVar11 = puVar12;
          } while (puVar12 < puVar10);
        }
        uVar13 = uVar13 + 1;
        param_2 = param_2 + param_3;
        puVar17 = puVar17 + param_3;
      } while (uVar13 != param_4);
    }
    _TIFFfree(__s);
  }
  return uVar5;
}

// ---- FUN_007309e0  @ 0x7309e0
undefined4 FUN_007309e0(int param_1)

{
  short sVar1;
  
  sVar1 = *(short *)(param_1 + 0x2e);
  switch(*(undefined2 *)(param_1 + 0x2c)) {
  case 8:
    if (sVar1 == 4 || sVar1 == 1) {
      return 0;
    }
    break;
  case 9:
    break;
  case 10:
    break;
  case 0xb:
    if (sVar1 == 4 || sVar1 == 1) {
      return 2;
    }
    break;
  case 0xc:
    if (sVar1 == 4 || sVar1 == 2) {
      return 3;
    }
    break;
  case 0xd:
    break;
  case 0xe:
    break;
  case 0xf:
    break;
  case 0x10:
    if (sVar1 == 4 || sVar1 == 1) {
      return 4;
    }
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
    break;
  case 0x16:
    break;
  case 0x17:
    break;
  case 0x18:
    break;
  case 0x19:
    break;
  case 0x1a:
    break;
  case 0x1b:
    break;
  case 0x1c:
    break;
  case 0x1d:
    break;
  case 0x1e:
    break;
  case 0x1f:
    break;
  case 0x20:
    if (sVar1 == 3) {
      return 5;
    }
  }
  return 0xffffffff;
}

// ---- FUN_00730ac0  @ 0x730ac0
int FUN_00730ac0(int param_1,int param_2)

{
  int iVar1;
  int iVar2;
  
  iVar2 = param_1 * param_2;
  if ((param_1 != 0) && (iVar1 = __udivsi3(iVar2,param_1), iVar1 != param_2)) {
    iVar2 = 0;
  }
  return iVar2;
}

// ---- FUN_00731298  @ 0x731298
void FUN_00731298(int param_1)

{
  int iVar1;
  int iVar2;
  
  iVar2 = *(int *)(param_1 + 0x238);
  TIFFPredictorCleanup();
  iVar1 = *(int *)(iVar2 + 0xa0);
  *(undefined4 *)(param_1 + 0x290) = *(undefined4 *)(iVar2 + 0x8c);
  *(undefined4 *)(param_1 + 0x28c) = *(undefined4 *)(iVar2 + 0x90);
  if (iVar1 != 0) {
    _TIFFfree();
  }
  if (*(int *)(iVar2 + 0xa4) != 0) {
    _TIFFfree();
  }
  if (*(int *)(iVar2 + 0xa8) != 0) {
    _TIFFfree();
  }
  if (*(int *)(iVar2 + 0x94) != 0) {
    _TIFFfree();
  }
  if (*(int *)(iVar2 + 0x98) != 0) {
    _TIFFfree();
  }
  if (*(int *)(iVar2 + 0x9c) != 0) {
    _TIFFfree();
  }
  if ((*(uint *)(iVar2 + 0x80) & 1) != 0) {
    if (*(int *)(param_1 + 8) == 0) {
      inflateEnd(iVar2 + 0x40);
    }
    else {
      deflateEnd(iVar2 + 0x40);
    }
  }
  if (*(int *)(iVar2 + 0x78) != 0) {
    _TIFFfree();
  }
  _TIFFfree(iVar2);
  *(undefined4 *)(param_1 + 0x238) = 0;
  _TIFFSetDefaultCompressionState(param_1);
  return;
}

// ---- FUN_00731370  @ 0x731370
undefined4 FUN_00731370(undefined4 *param_1)

{
  uint uVar1;
  undefined4 uVar2;
  int iVar3;
  
  iVar3 = param_1[0x8e];
  *(undefined4 *)(iVar3 + 0x44) = 0;
  do {
    uVar1 = deflate(iVar3 + 0x40,4);
    if (1 < uVar1) {
      TIFFErrorExt(param_1[0x99],"PixarLogPostEncode","%s: zlib error: %s",*param_1,
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

// ---- FUN_00731420  @ 0x731420
undefined4 FUN_00731420(undefined4 *param_1,float *param_2,uint param_3)

{
  short sVar1;
  short sVar2;
  short sVar3;
  short sVar4;
  byte bVar5;
  float fVar6;
  int iVar7;
  int iVar8;
  undefined4 extraout_r0;
  undefined4 extraout_r0_00;
  undefined4 extraout_r0_01;
  undefined4 extraout_r0_02;
  undefined4 extraout_r0_03;
  undefined4 extraout_r0_04;
  undefined4 extraout_r0_05;
  undefined4 extraout_r0_06;
  undefined4 extraout_r0_07;
  undefined4 extraout_r0_08;
  undefined4 extraout_r0_09;
  undefined4 extraout_r0_10;
  undefined4 extraout_r0_11;
  undefined4 extraout_r0_12;
  undefined4 extraout_r0_13;
  undefined4 extraout_r0_14;
  int iVar9;
  undefined4 extraout_r1;
  undefined4 extraout_r1_00;
  ushort *puVar10;
  short *psVar11;
  undefined4 extraout_r1_01;
  undefined4 extraout_r1_02;
  undefined4 extraout_r1_03;
  undefined4 extraout_r1_04;
  undefined4 extraout_r1_05;
  undefined4 extraout_r1_06;
  undefined4 extraout_r1_07;
  undefined4 extraout_r1_08;
  undefined4 extraout_r1_09;
  undefined4 extraout_r1_10;
  undefined4 extraout_r1_11;
  undefined4 extraout_r1_12;
  undefined4 extraout_r1_13;
  undefined4 extraout_r1_14;
  short sVar12;
  int iVar13;
  int iVar14;
  uint uVar15;
  float *pfVar16;
  uint uVar17;
  uint uVar18;
  uint uVar19;
  undefined4 uVar20;
  uint uVar21;
  short sVar22;
  uint uVar23;
  short *psVar24;
  int iVar25;
  int iVar26;
  short *psVar27;
  short sVar28;
  int iVar29;
  short sVar30;
  byte *pbVar31;
  byte *pbVar32;
  ushort *puVar33;
  ushort *puVar34;
  uint in_fpscr;
  uint uVar35;
  uint uVar36;
  double in_d0;
  float fVar37;
  double dVar38;
  int local_98;
  uint local_94;
  
  iVar25 = param_1[0x8e];
  iVar9 = *(int *)(iVar25 + 0x84);
  local_94 = param_3;
  switch(iVar9) {
  case 0:
    goto LAB_00731464;
  case 1:
    goto LAB_00731464;
  case 2:
    break;
  case 3:
    break;
  case 4:
    break;
  case 5:
    local_94 = param_3 >> 2;
    goto LAB_00731464;
  default:
    TIFFErrorExt(param_1[0x99],*param_1,"%d bit input not supported in PixarLog",
                 *(undefined2 *)(param_1 + 0x15));
    return 0;
  }
  local_94 = param_3 >> 1;
LAB_00731464:
  psVar27 = *(short **)(iVar25 + 0x78);
  iVar26 = param_1[0xe] * (uint)*(ushort *)(iVar25 + 0x7c);
  if ((int)local_94 < 1) {
LAB_00731be8:
    *(short **)(iVar25 + 0x40) = psVar27;
    *(uint *)(iVar25 + 0x44) = local_94 << 1;
    do {
      iVar9 = deflate(iVar25 + 0x40,0);
      if (iVar9 != 0) {
        TIFFErrorExt(param_1[0x99],"PixarLogEncode","%s: Encoder error: %s",*param_1,
                     *(undefined4 *)(iVar25 + 0x58));
        return 0;
      }
      if (*(int *)(iVar25 + 0x50) == 0) {
        param_1[0x94] = param_1[0x92];
        TIFFFlushData1(param_1);
        uVar20 = param_1[0x92];
        *(undefined4 *)(iVar25 + 0x4c) = param_1[0x91];
        *(undefined4 *)(iVar25 + 0x50) = uVar20;
      }
    } while (*(int *)(iVar25 + 0x44) != 0);
    return 1;
  }
  iVar13 = iVar26 + -1;
  iVar7 = iVar26 + -3;
  iVar8 = iVar26 + -4;
  local_98 = iVar26;
  if (iVar9 == 4) goto LAB_007318d8;
  do {
    fVar6 = DAT_00969080;
    if (iVar9 == 5) {
      uVar23 = (uint)*(ushort *)(iVar25 + 0x7c);
      iVar9 = *(int *)(iVar25 + 0xa0);
      if ((int)uVar23 <= iVar26) {
        if (uVar23 == 3) {
          fVar37 = *param_2;
          uVar23 = in_fpscr & 0xfffffff;
          uVar15 = uVar23 | (uint)(fVar37 < 0.0) << 0x1f;
          if (SUB41(uVar15 >> 0x1f,0)) {
            uVar23 = 0;
            sVar12 = 0;
          }
          else {
            uVar15 = uVar23 | (uint)(fVar37 < 2.0) << 0x1f;
            if (SUB41(uVar15 >> 0x1f,0)) {
              dVar38 = (double)VectorSignedToFloat((uint)*(ushort *)
                                                          (iVar9 + (int)(DAT_00969080 * fVar37) * 2)
                                                   ,(byte)(uVar15 >> 0x16) & 3);
              uVar19 = (uint)(0.0 < dVar38) * (int)(longlong)dVar38;
              uVar23 = uVar19 & 0xffff;
              sVar12 = (short)uVar19;
            }
            else {
              uVar23 = uVar23 | (uint)(fVar37 < 24.2) << 0x1f | (uint)(fVar37 == 24.2) << 0x1e;
              uVar15 = uVar23 | (uint)NAN(fVar37) << 0x1c;
              bVar5 = (byte)(uVar23 >> 0x18);
              if ((bool)(bVar5 >> 6 & 1) || bVar5 >> 7 != ((byte)(uVar15 >> 0x1c) & 1)) {
                dVar38 = (double)DAT_00969078;
                in_d0 = log(in_d0);
                dVar38 = dVar38 * (double)CONCAT44(extraout_r1_01,extraout_r0_01) + 0.5;
                uVar19 = (uint)(0.0 < dVar38) * (int)(longlong)dVar38;
                uVar23 = uVar19 & 0xffff;
                sVar12 = (short)uVar19;
              }
              else {
                uVar23 = 0x7ff;
                sVar12 = 0x7ff;
              }
            }
          }
          fVar37 = param_2[1];
          uVar15 = uVar15 & 0xfffffff;
          uVar19 = uVar15 | (uint)(fVar37 < 0.0) << 0x1f;
          *psVar27 = sVar12;
          if (SUB41(uVar19 >> 0x1f,0)) {
            uVar15 = 0;
            sVar12 = 0;
          }
          else {
            uVar19 = uVar15 | (uint)(fVar37 < 2.0) << 0x1f;
            if (SUB41(uVar19 >> 0x1f,0)) {
              dVar38 = (double)VectorSignedToFloat((uint)*(ushort *)
                                                          (iVar9 + (int)(fVar6 * fVar37) * 2),
                                                   (byte)(uVar19 >> 0x16) & 3);
              uVar17 = (uint)(0.0 < dVar38) * (int)(longlong)dVar38;
              uVar15 = uVar17 & 0xffff;
              sVar12 = (short)uVar17;
            }
            else {
              uVar15 = uVar15 | (uint)(fVar37 < 24.2) << 0x1f | (uint)(fVar37 == 24.2) << 0x1e;
              uVar19 = uVar15 | (uint)NAN(fVar37) << 0x1c;
              bVar5 = (byte)(uVar15 >> 0x18);
              if ((bool)(bVar5 >> 6 & 1) || bVar5 >> 7 != ((byte)(uVar19 >> 0x1c) & 1)) {
                dVar38 = (double)DAT_00969078;
                in_d0 = log(in_d0);
                dVar38 = dVar38 * (double)CONCAT44(extraout_r1_02,extraout_r0_02) + 0.5;
                uVar17 = (uint)(0.0 < dVar38) * (int)(longlong)dVar38;
                uVar15 = uVar17 & 0xffff;
                sVar12 = (short)uVar17;
              }
              else {
                uVar15 = 0x7ff;
                sVar12 = 0x7ff;
              }
            }
          }
          fVar37 = param_2[2];
          uVar19 = uVar19 & 0xfffffff;
          in_fpscr = uVar19 | (uint)(fVar37 < 0.0) << 0x1f;
          psVar27[1] = sVar12;
          if (SUB41(in_fpscr >> 0x1f,0)) {
            uVar19 = 0;
            sVar12 = 0;
          }
          else {
            in_fpscr = uVar19 | (uint)(fVar37 < 2.0) << 0x1f;
            if (SUB41(in_fpscr >> 0x1f,0)) {
              dVar38 = (double)VectorSignedToFloat((uint)*(ushort *)
                                                          (iVar9 + (int)(fVar6 * fVar37) * 2),
                                                   (byte)(in_fpscr >> 0x16) & 3);
              uVar17 = (uint)(0.0 < dVar38) * (int)(longlong)dVar38;
              uVar19 = uVar17 & 0xffff;
              sVar12 = (short)uVar17;
            }
            else {
              uVar19 = uVar19 | (uint)(fVar37 < 24.2) << 0x1f | (uint)(fVar37 == 24.2) << 0x1e;
              in_fpscr = uVar19 | (uint)NAN(fVar37) << 0x1c;
              bVar5 = (byte)(uVar19 >> 0x18);
              if ((bool)(bVar5 >> 6 & 1) || bVar5 >> 7 != ((byte)(in_fpscr >> 0x1c) & 1)) {
                dVar38 = (double)DAT_00969078;
                in_d0 = log(in_d0);
                dVar38 = dVar38 * (double)CONCAT44(extraout_r1_03,extraout_r0_03) + 0.5;
                uVar17 = (uint)(0.0 < dVar38) * (int)(longlong)dVar38;
                uVar19 = uVar17 & 0xffff;
                sVar12 = (short)uVar17;
              }
              else {
                uVar19 = 0x7ff;
                sVar12 = 0x7ff;
              }
            }
          }
          psVar27[2] = sVar12;
          iVar29 = iVar7;
          pfVar16 = param_2;
          psVar11 = psVar27;
          while (0 < iVar29) {
            fVar37 = pfVar16[3];
            uVar35 = in_fpscr & 0xfffffff;
            uVar17 = uVar35 | (uint)(fVar37 < 0.0) << 0x1f;
            iVar29 = iVar29 + -3;
            if (SUB41(uVar17 >> 0x1f,0)) {
              uVar21 = 0;
              uVar35 = uVar21;
            }
            else {
              uVar17 = uVar35 | (uint)(fVar37 < 2.0) << 0x1f;
              if (SUB41(uVar17 >> 0x1f,0)) {
                dVar38 = (double)VectorSignedToFloat((uint)*(ushort *)
                                                            (iVar9 + (int)(fVar6 * fVar37) * 2),
                                                     (byte)(uVar17 >> 0x16) & 3);
                uVar35 = (uint)(longlong)dVar38;
                uVar21 = uVar35 & 0xffff;
              }
              else {
                uVar35 = uVar35 | (uint)(fVar37 < 24.2) << 0x1f | (uint)(fVar37 == 24.2) << 0x1e;
                uVar17 = uVar35 | (uint)NAN(fVar37) << 0x1c;
                bVar5 = (byte)(uVar35 >> 0x18);
                if ((bool)(bVar5 >> 6 & 1) || bVar5 >> 7 != ((byte)(uVar17 >> 0x1c) & 1)) {
                  dVar38 = (double)DAT_00969078;
                  in_d0 = log(in_d0);
                  uVar35 = (uint)(longlong)
                                 (dVar38 * (double)CONCAT44(extraout_r1_04,extraout_r0_04) + 0.5);
                  uVar21 = uVar35 & 0xffff;
                }
                else {
                  uVar21 = 0x7ff;
                  uVar35 = uVar21;
                }
              }
            }
            fVar37 = pfVar16[4];
            uVar17 = uVar17 & 0xfffffff;
            uVar18 = uVar17 | (uint)(fVar37 < 0.0) << 0x1f;
            psVar11[3] = (ushort)((uVar21 - uVar23) * 0x200000 >> 0x15);
            if (SUB41(uVar18 >> 0x1f,0)) {
              uVar23 = 0;
              uVar17 = uVar23;
            }
            else {
              uVar18 = uVar17 | (uint)(fVar37 < 2.0) << 0x1f;
              if (SUB41(uVar18 >> 0x1f,0)) {
                dVar38 = (double)VectorSignedToFloat((uint)*(ushort *)
                                                            (iVar9 + (int)(fVar6 * fVar37) * 2),
                                                     (byte)(uVar18 >> 0x16) & 3);
                uVar23 = (uint)(longlong)dVar38 & 0xffff;
                uVar17 = (uint)(longlong)dVar38;
              }
              else {
                uVar23 = uVar17 | (uint)(fVar37 < 24.2) << 0x1f | (uint)(fVar37 == 24.2) << 0x1e;
                uVar18 = uVar23 | (uint)NAN(fVar37) << 0x1c;
                bVar5 = (byte)(uVar23 >> 0x18);
                if ((bool)(bVar5 >> 6 & 1) || bVar5 >> 7 != ((byte)(uVar18 >> 0x1c) & 1)) {
                  dVar38 = (double)DAT_00969078;
                  in_d0 = log(in_d0);
                  uVar17 = (uint)(longlong)
                                 (dVar38 * (double)CONCAT44(extraout_r1_05,extraout_r0_05) + 0.5);
                  uVar23 = uVar17 & 0xffff;
                }
                else {
                  uVar23 = 0x7ff;
                  uVar17 = uVar23;
                }
              }
            }
            fVar37 = pfVar16[5];
            uVar18 = uVar18 & 0xfffffff;
            in_fpscr = uVar18 | (uint)(fVar37 < 0.0) << 0x1f;
            psVar11[4] = (ushort)((uVar23 - uVar15) * 0x200000 >> 0x15);
            if (SUB41(in_fpscr >> 0x1f,0)) {
              uVar23 = 0;
              uVar15 = uVar23;
            }
            else {
              in_fpscr = uVar18 | (uint)(fVar37 < 2.0) << 0x1f;
              if (SUB41(in_fpscr >> 0x1f,0)) {
                dVar38 = (double)VectorSignedToFloat((uint)*(ushort *)
                                                            (iVar9 + (int)(fVar6 * fVar37) * 2),
                                                     (byte)(in_fpscr >> 0x16) & 3);
                uVar23 = (uint)(longlong)dVar38;
                uVar15 = uVar23 & 0xffff;
              }
              else {
                uVar23 = uVar18 | (uint)(fVar37 < 24.2) << 0x1f | (uint)(fVar37 == 24.2) << 0x1e;
                in_fpscr = uVar23 | (uint)NAN(fVar37) << 0x1c;
                bVar5 = (byte)(uVar23 >> 0x18);
                if ((bool)(bVar5 >> 6 & 1) || bVar5 >> 7 != ((byte)(in_fpscr >> 0x1c) & 1)) {
                  dVar38 = (double)DAT_00969078;
                  in_d0 = log(in_d0);
                  uVar23 = (uint)(longlong)
                                 (dVar38 * (double)CONCAT44(extraout_r1_06,extraout_r0_06) + 0.5);
                  uVar15 = uVar23 & 0xffff;
                }
                else {
                  uVar23 = 0x7ff;
                  uVar15 = uVar23;
                }
              }
            }
            pfVar16 = pfVar16 + 3;
            psVar11[5] = (ushort)((uVar15 - uVar19) * 0x200000 >> 0x15);
            psVar11 = psVar11 + 3;
            uVar19 = uVar23;
            uVar23 = uVar35;
            uVar15 = uVar17;
          }
        }
        else if (uVar23 == 4) {
          fVar37 = *param_2;
          uVar23 = in_fpscr & 0xfffffff;
          uVar15 = uVar23 | (uint)(fVar37 < 0.0) << 0x1f;
          if (SUB41(uVar15 >> 0x1f,0)) {
            uVar23 = 0;
            sVar12 = 0;
          }
          else {
            uVar15 = uVar23 | (uint)(fVar37 < 2.0) << 0x1f;
            if (SUB41(uVar15 >> 0x1f,0)) {
              dVar38 = (double)VectorSignedToFloat((uint)*(ushort *)
                                                          (iVar9 + (int)(DAT_00969080 * fVar37) * 2)
                                                   ,(byte)(uVar15 >> 0x16) & 3);
              uVar19 = (uint)(0.0 < dVar38) * (int)(longlong)dVar38;
              uVar23 = uVar19 & 0xffff;
              sVar12 = (short)uVar19;
            }
            else {
              uVar23 = uVar23 | (uint)(fVar37 < 24.2) << 0x1f | (uint)(fVar37 == 24.2) << 0x1e;
              uVar15 = uVar23 | (uint)NAN(fVar37) << 0x1c;
              bVar5 = (byte)(uVar23 >> 0x18);
              if ((bool)(bVar5 >> 6 & 1) || bVar5 >> 7 != ((byte)(uVar15 >> 0x1c) & 1)) {
                dVar38 = (double)DAT_00969078;
                in_d0 = log(in_d0);
                dVar38 = dVar38 * (double)CONCAT44(extraout_r1_11,extraout_r0_11) + 0.5;
                uVar19 = (uint)(0.0 < dVar38) * (int)(longlong)dVar38;
                uVar23 = uVar19 & 0xffff;
                sVar12 = (short)uVar19;
              }
              else {
                uVar23 = 0x7ff;
                sVar12 = 0x7ff;
              }
            }
          }
          fVar37 = param_2[1];
          uVar15 = uVar15 & 0xfffffff;
          uVar19 = uVar15 | (uint)(fVar37 < 0.0) << 0x1f;
          *psVar27 = sVar12;
          if (SUB41(uVar19 >> 0x1f,0)) {
            uVar15 = 0;
            sVar12 = 0;
          }
          else {
            uVar19 = uVar15 | (uint)(fVar37 < 2.0) << 0x1f;
            if (SUB41(uVar19 >> 0x1f,0)) {
              dVar38 = (double)VectorSignedToFloat((uint)*(ushort *)
                                                          (iVar9 + (int)(fVar6 * fVar37) * 2),
                                                   (byte)(uVar19 >> 0x16) & 3);
              uVar17 = (uint)(0.0 < dVar38) * (int)(longlong)dVar38;
              uVar15 = uVar17 & 0xffff;
              sVar12 = (short)uVar17;
            }
            else {
              uVar15 = uVar15 | (uint)(fVar37 < 24.2) << 0x1f | (uint)(fVar37 == 24.2) << 0x1e;
              uVar19 = uVar15 | (uint)NAN(fVar37) << 0x1c;
              bVar5 = (byte)(uVar15 >> 0x18);
              if ((bool)(bVar5 >> 6 & 1) || bVar5 >> 7 != ((byte)(uVar19 >> 0x1c) & 1)) {
                dVar38 = (double)DAT_00969078;
                in_d0 = log(in_d0);
                dVar38 = dVar38 * (double)CONCAT44(extraout_r1_12,extraout_r0_12) + 0.5;
                uVar17 = (uint)(0.0 < dVar38) * (int)(longlong)dVar38;
                uVar15 = uVar17 & 0xffff;
                sVar12 = (short)uVar17;
              }
              else {
                uVar15 = 0x7ff;
                sVar12 = 0x7ff;
              }
            }
          }
          fVar37 = param_2[2];
          uVar19 = uVar19 & 0xfffffff;
          uVar17 = uVar19 | (uint)(fVar37 < 0.0) << 0x1f;
          psVar27[1] = sVar12;
          if (SUB41(uVar17 >> 0x1f,0)) {
            uVar19 = 0;
            sVar12 = 0;
          }
          else {
            uVar17 = uVar19 | (uint)(fVar37 < 2.0) << 0x1f;
            if (SUB41(uVar17 >> 0x1f,0)) {
              dVar38 = (double)VectorSignedToFloat((uint)*(ushort *)
                                                          (iVar9 + (int)(fVar6 * fVar37) * 2),
                                                   (byte)(uVar17 >> 0x16) & 3);
              uVar35 = (uint)(0.0 < dVar38) * (int)(longlong)dVar38;
              uVar19 = uVar35 & 0xffff;
              sVar12 = (short)uVar35;
            }
            else {
              uVar19 = uVar19 | (uint)(fVar37 < 24.2) << 0x1f | (uint)(fVar37 == 24.2) << 0x1e;
              uVar17 = uVar19 | (uint)NAN(fVar37) << 0x1c;
              bVar5 = (byte)(uVar19 >> 0x18);
              if ((bool)(bVar5 >> 6 & 1) || bVar5 >> 7 != ((byte)(uVar17 >> 0x1c) & 1)) {
                dVar38 = (double)DAT_00969078;
                in_d0 = log(in_d0);
                dVar38 = dVar38 * (double)CONCAT44(extraout_r1_14,extraout_r0_14) + 0.5;
                uVar35 = (uint)(0.0 < dVar38) * (int)(longlong)dVar38;
                uVar19 = uVar35 & 0xffff;
                sVar12 = (short)uVar35;
              }
              else {
                uVar19 = 0x7ff;
                sVar12 = 0x7ff;
              }
            }
          }
          fVar37 = param_2[3];
          uVar17 = uVar17 & 0xfffffff;
          in_fpscr = uVar17 | (uint)(fVar37 < 0.0) << 0x1f;
          psVar27[2] = sVar12;
          if (SUB41(in_fpscr >> 0x1f,0)) {
            uVar17 = 0;
            sVar12 = 0;
          }
          else {
            in_fpscr = uVar17 | (uint)(fVar37 < 2.0) << 0x1f;
            if (SUB41(in_fpscr >> 0x1f,0)) {
              dVar38 = (double)VectorSignedToFloat((uint)*(ushort *)
                                                          (iVar9 + (int)(fVar6 * fVar37) * 2),
                                                   (byte)(in_fpscr >> 0x16) & 3);
              uVar35 = (uint)(0.0 < dVar38) * (int)(longlong)dVar38;
              uVar17 = uVar35 & 0xffff;
              sVar12 = (short)uVar35;
            }
            else {
              uVar17 = uVar17 | (uint)(fVar37 < 24.2) << 0x1f | (uint)(fVar37 == 24.2) << 0x1e;
              in_fpscr = uVar17 | (uint)NAN(fVar37) << 0x1c;
              bVar5 = (byte)(uVar17 >> 0x18);
              if ((bool)(bVar5 >> 6 & 1) || bVar5 >> 7 != ((byte)(in_fpscr >> 0x1c) & 1)) {
                dVar38 = (double)DAT_00969078;
                in_d0 = log(in_d0);
                dVar38 = dVar38 * (double)CONCAT44(extraout_r1_13,extraout_r0_13) + 0.5;
                uVar35 = (uint)(0.0 < dVar38) * (int)(longlong)dVar38;
                uVar17 = uVar35 & 0xffff;
                sVar12 = (short)uVar35;
              }
              else {
                uVar17 = 0x7ff;
                sVar12 = 0x7ff;
              }
            }
          }
          psVar27[3] = sVar12;
          if (0 < iVar8) {
            psVar11 = psVar27;
            pfVar16 = param_2;
            do {
              fVar37 = pfVar16[4];
              uVar21 = in_fpscr & 0xfffffff;
              uVar35 = uVar21 | (uint)(fVar37 < 0.0) << 0x1f;
              if (SUB41(uVar35 >> 0x1f,0)) {
                uVar18 = 0;
                uVar21 = uVar18;
              }
              else {
                uVar35 = uVar21 | (uint)(fVar37 < 2.0) << 0x1f;
                if (SUB41(uVar35 >> 0x1f,0)) {
                  dVar38 = (double)VectorSignedToFloat((uint)*(ushort *)
                                                              (iVar9 + (int)(fVar6 * fVar37) * 2),
                                                       (byte)(uVar35 >> 0x16) & 3);
                  uVar21 = (uint)(longlong)dVar38;
                  uVar18 = uVar21 & 0xffff;
                }
                else {
                  uVar21 = uVar21 | (uint)(fVar37 < 24.2) << 0x1f | (uint)(fVar37 == 24.2) << 0x1e;
                  uVar35 = uVar21 | (uint)NAN(fVar37) << 0x1c;
                  bVar5 = (byte)(uVar21 >> 0x18);
                  if ((bool)(bVar5 >> 6 & 1) || bVar5 >> 7 != ((byte)(uVar35 >> 0x1c) & 1)) {
                    dVar38 = (double)DAT_00969078;
                    in_d0 = log(in_d0);
                    uVar21 = (uint)(longlong)
                                   (dVar38 * (double)CONCAT44(extraout_r1_07,extraout_r0_07) + 0.5);
                    uVar18 = uVar21 & 0xffff;
                  }
                  else {
                    uVar18 = 0x7ff;
                    uVar21 = uVar18;
                  }
                }
              }
              fVar37 = pfVar16[5];
              uVar35 = uVar35 & 0xfffffff;
              uVar36 = uVar35 | (uint)(fVar37 < 0.0) << 0x1f;
              psVar11[4] = (ushort)((uVar18 - uVar23) * 0x200000 >> 0x15);
              if (SUB41(uVar36 >> 0x1f,0)) {
                uVar23 = 0;
                uVar35 = uVar23;
              }
              else {
                uVar36 = uVar35 | (uint)(fVar37 < 2.0) << 0x1f;
                if (SUB41(uVar36 >> 0x1f,0)) {
                  dVar38 = (double)VectorSignedToFloat((uint)*(ushort *)
                                                              (iVar9 + (int)(fVar6 * fVar37) * 2),
                                                       (byte)(uVar36 >> 0x16) & 3);
                  uVar23 = (uint)(longlong)dVar38 & 0xffff;
                  uVar35 = (uint)(longlong)dVar38;
                }
                else {
                  uVar23 = uVar35 | (uint)(fVar37 < 24.2) << 0x1f | (uint)(fVar37 == 24.2) << 0x1e;
                  uVar36 = uVar23 | (uint)NAN(fVar37) << 0x1c;
                  bVar5 = (byte)(uVar23 >> 0x18);
                  if ((bool)(bVar5 >> 6 & 1) || bVar5 >> 7 != ((byte)(uVar36 >> 0x1c) & 1)) {
                    dVar38 = (double)DAT_00969078;
                    in_d0 = log(in_d0);
                    uVar35 = (uint)(longlong)
                                   (dVar38 * (double)CONCAT44(extraout_r1_08,extraout_r0_08) + 0.5);
                    uVar23 = uVar35 & 0xffff;
                  }
                  else {
                    uVar23 = 0x7ff;
                    uVar35 = uVar23;
                  }
                }
              }
              fVar37 = pfVar16[6];
              uVar36 = uVar36 & 0xfffffff;
              uVar18 = uVar36 | (uint)(fVar37 < 0.0) << 0x1f;
              psVar11[5] = (ushort)((uVar23 - uVar15) * 0x200000 >> 0x15);
              if (SUB41(uVar18 >> 0x1f,0)) {
                uVar23 = 0;
                uVar36 = uVar23;
              }
              else {
                uVar18 = uVar36 | (uint)(fVar37 < 2.0) << 0x1f;
                if (SUB41(uVar18 >> 0x1f,0)) {
                  dVar38 = (double)VectorSignedToFloat((uint)*(ushort *)
                                                              (iVar9 + (int)(fVar6 * fVar37) * 2),
                                                       (byte)(uVar18 >> 0x16) & 3);
                  uVar23 = (uint)(longlong)dVar38 & 0xffff;
                  uVar36 = (uint)(longlong)dVar38;
                }
                else {
                  uVar23 = uVar36 | (uint)(fVar37 < 24.2) << 0x1f | (uint)(fVar37 == 24.2) << 0x1e;
                  uVar18 = uVar23 | (uint)NAN(fVar37) << 0x1c;
                  bVar5 = (byte)(uVar23 >> 0x18);
                  if ((bool)(bVar5 >> 6 & 1) || bVar5 >> 7 != ((byte)(uVar18 >> 0x1c) & 1)) {
                    dVar38 = (double)DAT_00969078;
                    in_d0 = log(in_d0);
                    uVar36 = (uint)(longlong)
                                   (dVar38 * (double)CONCAT44(extraout_r1_09,extraout_r0_09) + 0.5);
                    uVar23 = uVar36 & 0xffff;
                  }
                  else {
                    uVar23 = 0x7ff;
                    uVar36 = uVar23;
                  }
                }
              }
              fVar37 = pfVar16[7];
              uVar18 = uVar18 & 0xfffffff;
              in_fpscr = uVar18 | (uint)(fVar37 < 0.0) << 0x1f;
              psVar11[6] = (ushort)((uVar23 - uVar19) * 0x200000 >> 0x15);
              if (SUB41(in_fpscr >> 0x1f,0)) {
                uVar18 = 0;
                uVar23 = uVar18;
              }
              else {
                in_fpscr = uVar18 | (uint)(fVar37 < 2.0) << 0x1f;
                if (SUB41(in_fpscr >> 0x1f,0)) {
                  dVar38 = (double)VectorSignedToFloat((uint)*(ushort *)
                                                              (iVar9 + (int)(fVar6 * fVar37) * 2),
                                                       (byte)(in_fpscr >> 0x16) & 3);
                  uVar18 = (uint)(longlong)dVar38;
                  uVar23 = uVar18 & 0xffff;
                }
                else {
                  uVar23 = uVar18 | (uint)(fVar37 < 24.2) << 0x1f | (uint)(fVar37 == 24.2) << 0x1e;
                  in_fpscr = uVar23 | (uint)NAN(fVar37) << 0x1c;
                  bVar5 = (byte)(uVar23 >> 0x18);
                  if ((bool)(bVar5 >> 6 & 1) || bVar5 >> 7 != ((byte)(in_fpscr >> 0x1c) & 1)) {
                    dVar38 = (double)DAT_00969078;
                    in_d0 = log(in_d0);
                    uVar18 = (uint)(longlong)
                                   (dVar38 * (double)CONCAT44(extraout_r1_10,extraout_r0_10) + 0.5);
                    uVar23 = uVar18 & 0xffff;
                  }
                  else {
                    uVar18 = 0x7ff;
                    uVar23 = uVar18;
                  }
                }
              }
              pfVar16 = pfVar16 + 4;
              psVar11[7] = (ushort)((uVar23 - uVar17) * 0x200000 >> 0x15);
              psVar11 = psVar11 + 4;
              uVar23 = uVar21;
              uVar15 = uVar35;
              uVar19 = uVar36;
              uVar17 = uVar18;
            } while (psVar11 != psVar27 + (iVar26 - 5U & 0xfffffffc) + 4);
          }
        }
        else {
          pfVar16 = param_2 + iVar13;
          psVar11 = psVar27 + iVar13;
          if (0 < (int)(iVar26 - uVar23)) {
            iVar29 = (iVar26 - uVar23) - uVar23;
            do {
              iVar14 = 0;
              puVar33 = (ushort *)(psVar11 + uVar23);
              psVar24 = psVar11;
              do {
                fVar37 = *pfVar16;
                uVar15 = in_fpscr & 0xfffffff;
                in_fpscr = uVar15 | (uint)(fVar37 < 0.0) << 0x1f;
                pfVar16 = pfVar16 + -1;
                uVar19 = 0;
                if (!SUB41(in_fpscr >> 0x1f,0)) {
                  in_fpscr = uVar15 | (uint)(fVar37 < 2.0) << 0x1f;
                  if (SUB41(in_fpscr >> 0x1f,0)) {
                    dVar38 = (double)VectorSignedToFloat((uint)*(ushort *)
                                                                (iVar9 + (int)(fVar6 * fVar37) * 2),
                                                         (byte)(in_fpscr >> 0x16) & 3);
                    uVar19 = (uint)(0.0 < dVar38) * (int)(longlong)dVar38 & 0xffff;
                  }
                  else {
                    uVar15 = uVar15 | (uint)(fVar37 < 24.2) << 0x1f | (uint)(fVar37 == 24.2) << 0x1e
                    ;
                    in_fpscr = uVar15 | (uint)NAN(fVar37) << 0x1c;
                    uVar19 = 0x7ff;
                    bVar5 = (byte)(uVar15 >> 0x18);
                    if ((bool)(bVar5 >> 6 & 1) || bVar5 >> 7 != ((byte)(in_fpscr >> 0x1c) & 1)) {
                      dVar38 = (double)DAT_00969078;
                      in_d0 = log(in_d0);
                      dVar38 = dVar38 * (double)CONCAT44(extraout_r1,extraout_r0) + 0.5;
                      uVar19 = (uint)(0.0 < dVar38) * (int)(longlong)dVar38 & 0xffff;
                    }
                  }
                }
                psVar11 = psVar24 + -1;
                *psVar24 = (short)uVar19;
                iVar14 = iVar14 + -1;
                *puVar33 = (ushort)((*puVar33 - uVar19) * 0x200000 >> 0x15);
                puVar33 = puVar33 + -1;
                psVar24 = psVar11;
              } while (0 < (int)(iVar14 + uVar23));
              iVar29 = iVar29 - uVar23;
            } while (0 < (int)(iVar29 + uVar23));
          }
          iVar29 = 0;
          do {
            while( true ) {
              fVar37 = *pfVar16;
              uVar15 = in_fpscr & 0xfffffff;
              in_fpscr = uVar15 | (uint)(fVar37 < 0.0) << 0x1f;
              pfVar16 = pfVar16 + -1;
              sVar12 = 0;
              if (!SUB41(in_fpscr >> 0x1f,0)) break;
LAB_007317fc:
              iVar29 = iVar29 + -1;
              *psVar11 = sVar12;
              psVar11 = psVar11 + -1;
              if ((int)(iVar29 + uVar23) < 1) goto LAB_007318a0;
            }
            in_fpscr = uVar15 | (uint)(fVar37 < 2.0) << 0x1f;
            if (SUB41(in_fpscr >> 0x1f,0)) {
              dVar38 = (double)VectorSignedToFloat((uint)*(ushort *)
                                                          (iVar9 + (int)(fVar6 * fVar37) * 2),
                                                   (byte)(in_fpscr >> 0x16) & 3);
              sVar12 = (ushort)(0.0 < dVar38) * (short)(longlong)dVar38;
              goto LAB_007317fc;
            }
            uVar15 = uVar15 | (uint)(fVar37 < 24.2) << 0x1f | (uint)(fVar37 == 24.2) << 0x1e;
            in_fpscr = uVar15 | (uint)NAN(fVar37) << 0x1c;
            sVar12 = 0x7ff;
            bVar5 = (byte)(uVar15 >> 0x18);
            if (!(bool)(bVar5 >> 6 & 1) && bVar5 >> 7 == ((byte)(in_fpscr >> 0x1c) & 1))
            goto LAB_007317fc;
            iVar29 = iVar29 + -1;
            dVar38 = (double)DAT_00969078;
            in_d0 = log(in_d0);
            dVar38 = dVar38 * (double)CONCAT44(extraout_r1_00,extraout_r0_00) + 0.5;
            *psVar11 = (ushort)(0.0 < dVar38) * (short)(longlong)dVar38;
            psVar11 = psVar11 + -1;
          } while (0 < (int)(iVar29 + uVar23));
        }
      }
LAB_007318a0:
      param_2 = param_2 + iVar26;
    }
    else {
      if (iVar9 != 0) {
        TIFFErrorExt(param_1[0x99],*param_1,"%d bit input not supported in PixarLog",
                     *(undefined2 *)(param_1 + 0x15));
        return 0;
      }
      uVar23 = (uint)*(ushort *)(iVar25 + 0x7c);
      iVar9 = *(int *)(iVar25 + 0xa8);
      if ((int)uVar23 <= iVar26) {
        if (uVar23 == 3) {
          sVar12 = *(short *)(iVar9 + (uint)*(byte *)param_2 * 2);
          *psVar27 = sVar12;
          sVar22 = *(short *)(iVar9 + (uint)*(byte *)((int)param_2 + 1) * 2);
          psVar27[1] = sVar22;
          sVar30 = *(short *)(iVar9 + (uint)*(byte *)((int)param_2 + 2) * 2);
          psVar27[2] = sVar30;
          iVar29 = iVar7;
          pfVar16 = param_2;
          psVar11 = psVar27;
          if (0 < iVar7) {
            do {
              iVar29 = iVar29 + -3;
              sVar28 = *(short *)(iVar9 + (uint)*(byte *)((int)pfVar16 + 3) * 2);
              psVar11[3] = sVar28 - sVar12 & 0x7ff;
              sVar1 = *(short *)(iVar9 + (uint)*(byte *)(pfVar16 + 1) * 2);
              psVar11[4] = sVar1 - sVar22 & 0x7ff;
              sVar2 = *(short *)(iVar9 + (uint)*(byte *)((int)pfVar16 + 5) * 2);
              psVar11[5] = sVar2 - sVar30 & 0x7ff;
              pfVar16 = (float *)((int)pfVar16 + 3);
              psVar11 = psVar11 + 3;
              sVar12 = sVar28;
              sVar22 = sVar1;
              sVar30 = sVar2;
            } while (0 < iVar29);
            param_2 = (float *)((int)param_2 + iVar26);
            goto LAB_007318a8;
          }
        }
        else if (uVar23 == 4) {
          sVar12 = *(short *)(iVar9 + (uint)*(byte *)param_2 * 2);
          *psVar27 = sVar12;
          sVar22 = *(short *)(iVar9 + (uint)*(byte *)((int)param_2 + 1) * 2);
          psVar27[1] = sVar22;
          sVar30 = *(short *)(iVar9 + (uint)*(byte *)((int)param_2 + 2) * 2);
          psVar27[2] = sVar30;
          sVar28 = *(short *)(iVar9 + (uint)*(byte *)((int)param_2 + 3) * 2);
          psVar27[3] = sVar28;
          iVar29 = iVar8;
          psVar11 = psVar27;
          pfVar16 = param_2;
          if (0 < iVar8) {
            do {
              iVar29 = iVar29 + -4;
              sVar1 = *(short *)(iVar9 + (uint)*(byte *)(pfVar16 + 1) * 2);
              psVar11[4] = sVar1 - sVar12 & 0x7ff;
              sVar2 = *(short *)(iVar9 + (uint)*(byte *)((int)pfVar16 + 5) * 2);
              psVar11[5] = sVar2 - sVar22 & 0x7ff;
              sVar3 = *(short *)(iVar9 + (uint)*(byte *)((int)pfVar16 + 6) * 2);
              psVar11[6] = sVar3 - sVar30 & 0x7ff;
              sVar4 = *(short *)(iVar9 + (uint)*(byte *)((int)pfVar16 + 7) * 2);
              psVar11[7] = sVar4 - sVar28 & 0x7ff;
              psVar11 = psVar11 + 4;
              pfVar16 = pfVar16 + 1;
              sVar12 = sVar1;
              sVar22 = sVar2;
              sVar30 = sVar3;
              sVar28 = sVar4;
            } while (0 < iVar29);
            param_2 = (float *)((int)param_2 + iVar26);
            goto LAB_007318a8;
          }
        }
        else {
          iVar29 = iVar26 + uVar23 + -1;
          pbVar31 = (byte *)((int)param_2 + iVar29);
          psVar11 = psVar27 + iVar29;
          if (0 < (int)(iVar26 - uVar23)) {
            iVar29 = (iVar26 - uVar23) - uVar23;
            do {
              iVar14 = 0;
              puVar33 = (ushort *)(psVar11 + uVar23);
              psVar24 = psVar11;
              pbVar32 = pbVar31;
              do {
                pbVar31 = pbVar32 + -1;
                iVar14 = iVar14 + -1;
                sVar12 = *(short *)(iVar9 + (uint)*pbVar32 * 2);
                psVar11 = psVar24 + -1;
                *psVar24 = sVar12;
                *puVar33 = *puVar33 - sVar12 & 0x7ff;
                puVar33 = puVar33 + -1;
                psVar24 = psVar11;
                pbVar32 = pbVar31;
              } while (0 < (int)(iVar14 + uVar23));
              iVar29 = iVar29 - uVar23;
            } while (0 < (int)(uVar23 + iVar29));
          }
          iVar29 = 0;
          do {
            pbVar32 = pbVar31 + iVar29;
            iVar29 = iVar29 + -1;
            *psVar11 = *(short *)(iVar9 + (uint)*pbVar32 * 2);
            psVar11 = psVar11 + -1;
          } while (0 < (int)(iVar29 + uVar23));
        }
      }
      param_2 = (float *)((int)param_2 + iVar26);
    }
LAB_007318a8:
    while( true ) {
      local_98 = local_98 + iVar26;
      if ((int)local_94 <= local_98 - iVar26) {
        psVar27 = *(short **)(iVar25 + 0x78);
        goto LAB_00731be8;
      }
      psVar27 = psVar27 + iVar26;
      iVar9 = *(int *)(iVar25 + 0x84);
      if (iVar9 != 4) break;
LAB_007318d8:
      uVar23 = (uint)*(ushort *)(iVar25 + 0x7c);
      iVar9 = *(int *)(iVar25 + 0xa4);
      if ((int)uVar23 <= iVar26) {
        if (uVar23 == 3) {
          sVar12 = *(short *)(iVar9 + (uint)(*(ushort *)param_2 >> 2) * 2);
          *psVar27 = sVar12;
          sVar22 = *(short *)(iVar9 + (uint)(*(ushort *)((int)param_2 + 2) >> 2) * 2);
          psVar27[1] = sVar22;
          sVar30 = *(short *)(iVar9 + (uint)(*(ushort *)(param_2 + 1) >> 2) * 2);
          psVar27[2] = sVar30;
          pfVar16 = param_2;
          psVar11 = psVar27;
          for (iVar29 = iVar7; 0 < iVar29; iVar29 = iVar29 + -3) {
            sVar28 = *(short *)(iVar9 + (uint)(*(ushort *)((int)pfVar16 + 6) >> 2) * 2);
            psVar11[3] = sVar28 - sVar12 & 0x7ff;
            sVar1 = *(short *)(iVar9 + (uint)(*(ushort *)(pfVar16 + 2) >> 2) * 2);
            psVar11[4] = sVar1 - sVar22 & 0x7ff;
            puVar33 = (ushort *)((int)pfVar16 + 10);
            pfVar16 = (float *)((int)pfVar16 + 6);
            sVar2 = *(short *)(iVar9 + (uint)(*puVar33 >> 2) * 2);
            psVar11[5] = sVar2 - sVar30 & 0x7ff;
            psVar11 = psVar11 + 3;
            sVar12 = sVar28;
            sVar22 = sVar1;
            sVar30 = sVar2;
          }
        }
        else if (uVar23 == 4) {
          sVar12 = *(short *)(iVar9 + (uint)(*(ushort *)param_2 >> 2) * 2);
          *psVar27 = sVar12;
          sVar22 = *(short *)(iVar9 + (uint)(*(ushort *)((int)param_2 + 2) >> 2) * 2);
          psVar27[1] = sVar22;
          sVar30 = *(short *)(iVar9 + (uint)(*(ushort *)(param_2 + 1) >> 2) * 2);
          psVar27[2] = sVar30;
          sVar28 = *(short *)(iVar9 + (uint)(*(ushort *)((int)param_2 + 6) >> 2) * 2);
          psVar27[3] = sVar28;
          if (0 < iVar8) {
            psVar11 = psVar27;
            pfVar16 = param_2;
            do {
              sVar1 = *(short *)(iVar9 + (uint)(*(ushort *)(pfVar16 + 2) >> 2) * 2);
              psVar11[4] = sVar1 - sVar12 & 0x7ff;
              sVar2 = *(short *)(iVar9 + (uint)(*(ushort *)((int)pfVar16 + 10) >> 2) * 2);
              psVar11[5] = sVar2 - sVar22 & 0x7ff;
              sVar3 = *(short *)(iVar9 + (uint)(*(ushort *)(pfVar16 + 3) >> 2) * 2);
              psVar11[6] = sVar3 - sVar30 & 0x7ff;
              puVar33 = (ushort *)((int)pfVar16 + 0xe);
              pfVar16 = pfVar16 + 2;
              sVar4 = *(short *)(iVar9 + (uint)(*puVar33 >> 2) * 2);
              psVar11[7] = sVar4 - sVar28 & 0x7ff;
              psVar11 = psVar11 + 4;
              sVar12 = sVar1;
              sVar22 = sVar2;
              sVar30 = sVar3;
              sVar28 = sVar4;
            } while (pfVar16 != param_2 + (iVar26 - 5U >> 2) * 2 + 2);
          }
        }
        else {
          puVar33 = (ushort *)((int)param_2 + iVar13 * 2);
          psVar11 = psVar27 + iVar13;
          if (0 < (int)(iVar26 - uVar23)) {
            iVar29 = (iVar26 - uVar23) - uVar23;
            do {
              puVar10 = (ushort *)(psVar11 + uVar23);
              uVar15 = uVar23;
              psVar24 = psVar11;
              puVar34 = puVar33;
              do {
                puVar33 = puVar34 + -1;
                uVar15 = uVar15 - 1;
                sVar12 = *(short *)(iVar9 + (uint)(*puVar34 >> 2) * 2);
                psVar11 = psVar24 + -1;
                *psVar24 = sVar12;
                *puVar10 = *puVar10 - sVar12 & 0x7ff;
                puVar10 = puVar10 + -1;
                psVar24 = psVar11;
                puVar34 = puVar33;
              } while (0 < (int)uVar15);
              iVar29 = iVar29 - uVar23;
            } while (0 < (int)(uVar23 + iVar29));
          }
          iVar29 = 0;
          do {
            iVar29 = iVar29 + -1;
            *psVar11 = *(short *)(iVar9 + (uint)(*puVar33 >> 2) * 2);
            psVar11 = psVar11 + -1;
            puVar33 = puVar33 + -1;
          } while (0 < (int)(iVar29 + uVar23));
        }
      }
      param_2 = (float *)((int)param_2 + iVar26 * 2);
    }
  } while( true );
}

// ---- FUN_00732b4c  @ 0x732b4c
undefined4 FUN_00732b4c(undefined4 *param_1,ushort *param_2,uint param_3)

{
  uint uVar1;
  bool bVar2;
  bool bVar3;
  undefined1 uVar4;
  undefined1 uVar5;
  undefined1 uVar6;
  ushort uVar7;
  int iVar8;
  ushort *puVar9;
  int extraout_r1;
  int iVar10;
  ushort *puVar11;
  float *pfVar12;
  uint uVar13;
  ushort *puVar14;
  ushort *puVar15;
  int iVar16;
  int iVar17;
  int iVar18;
  int iVar19;
  uint uVar20;
  uint uVar21;
  int iVar22;
  ushort *puVar23;
  uint uVar24;
  int iVar25;
  float fVar26;
  undefined4 uVar27;
  ushort uVar28;
  float fVar29;
  undefined4 uVar30;
  ushort uVar31;
  ushort uVar32;
  float fVar33;
  float fVar34;
  undefined4 uVar35;
  ushort *local_5c;
  ushort *local_58;
  int local_50;
  uint local_4c;
  
  iVar18 = param_1[0x8e];
  local_4c = param_3;
  switch(*(undefined4 *)(iVar18 + 0x84)) {
  case 0:
    goto LAB_00732b90;
  case 1:
    goto LAB_00732b90;
  case 2:
    break;
  case 3:
    break;
  case 4:
    break;
  case 5:
    local_4c = param_3 >> 2;
    goto LAB_00732b90;
  default:
    TIFFErrorExt(param_1[0x99],*param_1,"%d bit input not supported in PixarLog",
                 *(undefined2 *)(param_1 + 0x15));
    return 0;
  }
  local_4c = param_3 >> 1;
LAB_00732b90:
  uVar31 = *(ushort *)(iVar18 + 0x7c);
  *(undefined4 *)(iVar18 + 0x4c) = *(undefined4 *)(iVar18 + 0x78);
  iVar19 = param_1[0xe];
  *(uint *)(iVar18 + 0x50) = local_4c << 1;
  do {
    iVar8 = inflate(iVar18 + 0x40,1);
    if (iVar8 == 1) {
      if (*(int *)(iVar18 + 0x50) != 0) {
        TIFFErrorExt(param_1[0x99],"PixarLogDecode",
                     "%s: Not enough data at scanline %d (short %d bytes)",*param_1,param_1[0x72],
                     *(int *)(iVar18 + 0x50));
        return 0;
      }
      break;
    }
    if (iVar8 == -3) {
      TIFFErrorExt(param_1[0x99],"PixarLogDecode","%s: Decoding error at scanline %d, %s",*param_1,
                   param_1[0x72],*(undefined4 *)(iVar18 + 0x58));
      iVar8 = inflateSync(iVar18 + 0x40);
      if (iVar8 != 0) {
        return 0;
      }
    }
    else if (iVar8 != 0) {
      TIFFErrorExt(param_1[0x99],"PixarLogDecode","%s: zlib error: %s",*param_1,
                   *(undefined4 *)(iVar18 + 0x58));
      return 0;
    }
  } while (*(int *)(iVar18 + 0x50) != 0);
  local_58 = *(ushort **)(iVar18 + 0x78);
  if ((param_1[3] & 0x80) != 0) {
    TIFFSwabArrayOfShort(local_58,local_4c);
  }
  iVar19 = iVar19 * (uint)uVar31;
  __aeabi_idivmod(local_4c,iVar19);
  if (extraout_r1 != 0) {
    TIFFWarningExt(param_1[0x99],"PixarLogDecode",
                   "%s: stride %d is not a multiple of sample count, %d, data truncated.",*param_1,
                   iVar19,local_4c);
    local_4c = local_4c - extraout_r1;
  }
  if (0 < (int)local_4c) {
    iVar8 = iVar19 + -3;
    iVar25 = iVar19 + -4;
    uVar1 = iVar19 - 5U >> 2;
    local_5c = param_2;
    local_50 = iVar19;
    while( true ) {
      switch(*(undefined4 *)(iVar18 + 0x84)) {
      case 0:
        uVar20 = (uint)*(ushort *)(iVar18 + 0x7c);
        iVar22 = *(int *)(iVar18 + 0x9c);
        if ((int)uVar20 <= iVar19) {
          if (uVar20 == 3) {
            uVar20 = (uint)*local_58;
            *(undefined1 *)local_5c = *(undefined1 *)(iVar22 + uVar20);
            uVar13 = (uint)local_58[1];
            *(undefined1 *)((int)local_5c + 1) = *(undefined1 *)(iVar22 + uVar13);
            uVar21 = (uint)local_58[2];
            *(undefined1 *)(local_5c + 1) = *(undefined1 *)(iVar22 + uVar21);
            puVar15 = local_5c;
            puVar11 = local_58;
            for (iVar16 = iVar8; 0 < iVar16; iVar16 = iVar16 + -3) {
              uVar20 = uVar20 + puVar11[3];
              *(undefined1 *)((int)puVar15 + 3) = *(undefined1 *)(iVar22 + (uVar20 & 0x7ff));
              uVar13 = uVar13 + puVar11[4];
              *(undefined1 *)(puVar15 + 2) = *(undefined1 *)(iVar22 + (uVar13 & 0x7ff));
              puVar9 = puVar11 + 5;
              puVar11 = puVar11 + 3;
              uVar21 = uVar21 + *puVar9;
              *(undefined1 *)((int)puVar15 + 5) = *(undefined1 *)(iVar22 + (uVar21 & 0x7ff));
              puVar15 = (ushort *)((int)puVar15 + 3);
            }
          }
          else if (uVar20 == 4) {
            uVar24 = (uint)*local_58;
            *(undefined1 *)local_5c = *(undefined1 *)(iVar22 + uVar24);
            uVar20 = (uint)local_58[1];
            *(undefined1 *)((int)local_5c + 1) = *(undefined1 *)(iVar22 + uVar20);
            uVar13 = (uint)local_58[2];
            *(undefined1 *)(local_5c + 1) = *(undefined1 *)(iVar22 + uVar13);
            uVar21 = (uint)local_58[3];
            *(undefined1 *)((int)local_5c + 3) = *(undefined1 *)(iVar22 + uVar21);
            if (0 < iVar25) {
              puVar15 = local_5c;
              puVar11 = local_58;
              do {
                uVar24 = uVar24 + puVar11[4];
                *(undefined1 *)(puVar15 + 2) = *(undefined1 *)(iVar22 + (uVar24 & 0x7ff));
                uVar20 = uVar20 + puVar11[5];
                *(undefined1 *)((int)puVar15 + 5) = *(undefined1 *)(iVar22 + (uVar20 & 0x7ff));
                uVar13 = uVar13 + puVar11[6];
                *(undefined1 *)(puVar15 + 3) = *(undefined1 *)(iVar22 + (uVar13 & 0x7ff));
                puVar9 = puVar11 + 7;
                puVar11 = puVar11 + 4;
                uVar21 = uVar21 + *puVar9;
                *(undefined1 *)((int)puVar15 + 7) = *(undefined1 *)(iVar22 + (uVar21 & 0x7ff));
                puVar15 = puVar15 + 2;
              } while (puVar11 != local_58 + uVar1 * 4 + 4);
            }
          }
          else {
            iVar16 = 0;
            puVar15 = local_58;
            puVar11 = local_5c;
            do {
              puVar23 = puVar15 + 1;
              iVar16 = iVar16 + 1;
              puVar9 = (ushort *)((int)puVar11 + 1);
              *(undefined1 *)puVar11 = *(undefined1 *)(iVar22 + (*puVar15 & 0x7ff));
              puVar15 = puVar23;
              puVar11 = puVar9;
            } while (0 < (int)(uVar20 - iVar16));
            if (0 < (int)(iVar19 - uVar20)) {
              iVar16 = (iVar19 - uVar20) - uVar20;
              do {
                iVar10 = 0;
                puVar15 = puVar9;
                puVar11 = puVar23 + uVar20;
                puVar14 = puVar23;
                do {
                  puVar15 = (ushort *)((int)puVar15 + 1);
                  *puVar11 = *puVar14 + *puVar11;
                  puVar23 = puVar14 + 1;
                  *(undefined1 *)((int)puVar9 + iVar10) =
                       *(undefined1 *)(iVar22 + (*puVar14 & 0x7ff));
                  iVar10 = iVar10 + 1;
                  puVar11 = puVar11 + 1;
                  puVar14 = puVar23;
                } while (0 < (int)(uVar20 - iVar10));
                iVar16 = iVar16 - uVar20;
                puVar9 = puVar15;
              } while (0 < (int)(iVar16 + uVar20));
            }
          }
        }
        local_5c = (ushort *)((int)local_5c + iVar19);
        break;
      case 1:
        uVar20 = (uint)*(ushort *)(iVar18 + 0x7c);
        iVar22 = *(int *)(iVar18 + 0x9c);
        if ((int)uVar20 <= iVar19) {
          if (uVar20 == 3) {
            *(undefined1 *)local_5c = 0;
            uVar20 = (uint)local_58[2];
            uVar13 = (uint)local_58[1];
            uVar21 = (uint)*local_58;
            uVar4 = *(undefined1 *)(iVar22 + uVar13);
            uVar5 = *(undefined1 *)(iVar22 + uVar21);
            *(undefined1 *)((int)local_5c + 1) = *(undefined1 *)(iVar22 + uVar20);
            *(undefined1 *)(local_5c + 1) = uVar4;
            *(undefined1 *)((int)local_5c + 3) = uVar5;
            puVar15 = local_5c;
            puVar11 = local_58;
            for (iVar16 = iVar8; 0 < iVar16; iVar16 = iVar16 + -3) {
              *(undefined1 *)(puVar15 + 2) = 0;
              puVar9 = puVar11 + 5;
              puVar23 = puVar11 + 4;
              puVar11 = puVar11 + 3;
              uVar20 = uVar20 + *puVar9;
              uVar13 = uVar13 + *puVar23;
              uVar21 = uVar21 + *puVar11;
              uVar4 = *(undefined1 *)(iVar22 + (uVar13 & 0x7ff));
              uVar5 = *(undefined1 *)(iVar22 + (uVar21 & 0x7ff));
              *(undefined1 *)((int)puVar15 + 5) = *(undefined1 *)(iVar22 + (uVar20 & 0x7ff));
              *(undefined1 *)(puVar15 + 3) = uVar4;
              *(undefined1 *)((int)puVar15 + 7) = uVar5;
              puVar15 = puVar15 + 2;
            }
          }
          else if (uVar20 == 4) {
            uVar21 = (uint)local_58[3];
            uVar24 = (uint)local_58[2];
            uVar20 = (uint)local_58[1];
            uVar13 = (uint)*local_58;
            uVar4 = *(undefined1 *)(iVar22 + uVar20);
            uVar5 = *(undefined1 *)(iVar22 + uVar13);
            uVar6 = *(undefined1 *)(iVar22 + uVar21);
            *(undefined1 *)((int)local_5c + 1) = *(undefined1 *)(iVar22 + uVar24);
            *(undefined1 *)(local_5c + 1) = uVar4;
            *(undefined1 *)local_5c = uVar6;
            *(undefined1 *)((int)local_5c + 3) = uVar5;
            if (0 < iVar25) {
              puVar15 = local_5c;
              puVar11 = local_58;
              do {
                puVar9 = puVar11 + 6;
                puVar23 = puVar11 + 5;
                uVar21 = uVar21 + puVar11[7];
                puVar11 = puVar11 + 4;
                uVar24 = uVar24 + *puVar9;
                uVar20 = uVar20 + *puVar23;
                uVar13 = uVar13 + *puVar11;
                uVar4 = *(undefined1 *)(iVar22 + (uVar24 & 0x7ff));
                uVar5 = *(undefined1 *)(iVar22 + (uVar20 & 0x7ff));
                uVar6 = *(undefined1 *)(iVar22 + (uVar13 & 0x7ff));
                *(undefined1 *)(puVar15 + 2) = *(undefined1 *)(iVar22 + (uVar21 & 0x7ff));
                *(undefined1 *)((int)puVar15 + 5) = uVar4;
                *(undefined1 *)(puVar15 + 3) = uVar5;
                *(undefined1 *)((int)puVar15 + 7) = uVar6;
                puVar15 = puVar15 + 2;
              } while (puVar11 != local_58 + uVar1 * 4 + 4);
            }
          }
          else {
            iVar16 = 0;
            puVar15 = local_58;
            puVar11 = local_5c;
            do {
              puVar23 = puVar15 + 1;
              iVar16 = iVar16 + 1;
              puVar9 = (ushort *)((int)puVar11 + 1);
              *(undefined1 *)puVar11 = *(undefined1 *)(iVar22 + (*puVar15 & 0x7ff));
              puVar15 = puVar23;
              puVar11 = puVar9;
            } while (0 < (int)(uVar20 - iVar16));
            if (0 < (int)(iVar19 - uVar20)) {
              iVar16 = (iVar19 - uVar20) - uVar20;
              do {
                iVar10 = 0;
                puVar15 = puVar9;
                puVar11 = puVar23 + uVar20;
                puVar14 = puVar23;
                do {
                  puVar15 = (ushort *)((int)puVar15 + 1);
                  *puVar11 = *puVar14 + *puVar11;
                  puVar23 = puVar14 + 1;
                  *(undefined1 *)((int)puVar9 + iVar10) =
                       *(undefined1 *)(iVar22 + (*puVar14 & 0x7ff));
                  iVar10 = iVar10 + 1;
                  puVar11 = puVar11 + 1;
                  puVar14 = puVar23;
                } while (0 < (int)(uVar20 - iVar10));
                iVar16 = iVar16 - uVar20;
                puVar9 = puVar15;
              } while (0 < (int)(iVar16 + uVar20));
            }
          }
        }
        local_5c = (ushort *)((int)local_5c + iVar19);
        break;
      case 2:
        uVar20 = (uint)*(ushort *)(iVar18 + 0x7c);
        if ((int)uVar20 <= iVar19) {
          if (uVar20 == 3) {
            uVar31 = *local_58;
            *local_5c = uVar31;
            uVar28 = local_58[1];
            local_5c[1] = uVar28;
            uVar32 = local_58[2];
            local_5c[2] = uVar32;
            puVar15 = local_5c;
            puVar11 = local_58;
            for (iVar22 = iVar8; 0 < iVar22; iVar22 = iVar22 + -3) {
              uVar31 = uVar31 + puVar11[3];
              puVar15[3] = uVar31 & 0x7ff;
              uVar28 = uVar28 + puVar11[4];
              puVar15[4] = uVar28 & 0x7ff;
              puVar9 = puVar11 + 5;
              puVar11 = puVar11 + 3;
              uVar32 = uVar32 + *puVar9;
              puVar15[5] = uVar32 & 0x7ff;
              puVar15 = puVar15 + 3;
            }
          }
          else if (uVar20 == 4) {
            uVar31 = *local_58;
            *local_5c = uVar31;
            uVar28 = local_58[1];
            local_5c[1] = uVar28;
            uVar32 = local_58[2];
            local_5c[2] = uVar32;
            uVar7 = local_58[3];
            local_5c[3] = uVar7;
            if (0 < iVar25) {
              puVar15 = local_58;
              puVar11 = local_5c;
              do {
                uVar31 = uVar31 + puVar15[4];
                puVar11[4] = uVar31 & 0x7ff;
                uVar28 = uVar28 + puVar15[5];
                puVar11[5] = uVar28 & 0x7ff;
                uVar32 = uVar32 + puVar15[6];
                puVar11[6] = uVar32 & 0x7ff;
                puVar9 = puVar15 + 7;
                puVar15 = puVar15 + 4;
                uVar7 = uVar7 + *puVar9;
                puVar11[7] = uVar7 & 0x7ff;
                puVar11 = puVar11 + 4;
              } while (puVar11 != local_5c + uVar1 * 4 + 4);
            }
          }
          else {
            iVar22 = 0;
            puVar15 = local_58;
            puVar11 = local_5c;
            do {
              puVar9 = puVar15 + 1;
              iVar22 = iVar22 + 1;
              puVar23 = puVar11 + 1;
              *puVar11 = (ushort)(((uint)*puVar15 << 0x15) >> 0x15);
              puVar15 = puVar9;
              puVar11 = puVar23;
            } while (0 < (int)(uVar20 - iVar22));
            if (0 < (int)(iVar19 - uVar20)) {
              iVar22 = (iVar19 - uVar20) - uVar20;
              do {
                iVar16 = 0;
                iVar10 = 0;
                uVar13 = uVar20;
                do {
                  uVar13 = uVar13 - 1;
                  iVar16 = iVar16 + 2;
                  *(short *)((int)puVar9 + iVar10 + uVar20 * 2) =
                       *(short *)((int)puVar9 + iVar10) +
                       *(short *)((int)puVar9 + iVar10 + uVar20 * 2);
                  *(ushort *)((int)puVar23 + iVar10) =
                       (ushort)(((uint)*(ushort *)((int)puVar9 + iVar10) << 0x15) >> 0x15);
                  iVar10 = iVar10 + 2;
                } while (0 < (int)uVar13);
                iVar22 = iVar22 - uVar20;
                puVar9 = (ushort *)((int)puVar9 + iVar16);
                puVar23 = (ushort *)((int)puVar23 + iVar16);
              } while (0 < (int)(uVar20 + iVar22));
            }
          }
        }
        local_5c = local_5c + iVar19;
        break;
      case 3:
        uVar20 = (uint)*(ushort *)(iVar18 + 0x7c);
        iVar22 = *(int *)(iVar18 + 0x94);
        if ((int)uVar20 <= iVar19) {
          if (uVar20 == 3) {
            uVar20 = (uint)*local_58;
            uVar13 = (uint)local_58[1];
            uVar21 = (uint)local_58[2];
            fVar33 = *(float *)(iVar22 + uVar20 * 4) * 2048.0;
            pfVar12 = (float *)(iVar22 + uVar21 * 4);
            fVar26 = *(float *)(iVar22 + uVar13 * 4) * 2048.0;
            bVar2 = fVar33 < 3071.0;
            fVar29 = *pfVar12 * 2048.0;
            uVar31 = (ushort)pfVar12;
            if (bVar2) {
              fVar33 = (float)((uint)(0.0 < fVar33) * (int)fVar33);
            }
            else {
              uVar31 = 0xbff;
            }
            if (bVar2) {
              uVar31 = SUB42(fVar33,0);
            }
            *local_5c = uVar31;
            uVar28 = SUB42(fVar26,0);
            if (fVar26 < 3071.0) {
              uVar28 = (ushort)(0.0 < fVar26) * (short)(int)fVar26;
            }
            else {
              uVar31 = 0xbff;
            }
            if (fVar26 < 3071.0) {
              uVar31 = uVar28;
            }
            local_5c[1] = uVar31;
            if (fVar29 < 3071.0) {
              uVar31 = (ushort)(0.0 < fVar29) * (short)(int)fVar29;
            }
            else {
              uVar31 = 0xbff;
            }
            local_5c[2] = uVar31;
            iVar16 = iVar8;
            puVar15 = local_5c;
            puVar11 = local_58;
            while (0 < iVar16) {
              iVar16 = iVar16 + -3;
              uVar20 = uVar20 + puVar11[3];
              puVar9 = puVar11 + 5;
              uVar13 = uVar13 + puVar11[4];
              puVar11 = puVar11 + 3;
              uVar21 = uVar21 + *puVar9;
              fVar33 = *(float *)(iVar22 + (uVar20 & 0x7ff) * 4) * 2048.0;
              uVar31 = 0xbff;
              fVar26 = *(float *)(iVar22 + (uVar13 & 0x7ff) * 4) * 2048.0;
              bVar2 = fVar33 < 3071.0;
              fVar29 = *(float *)(iVar22 + (uVar21 & 0x7ff) * 4) * 2048.0;
              if (bVar2) {
                fVar33 = (float)((uint)(0.0 < fVar33) * (int)fVar33);
              }
              bVar3 = fVar26 < 3071.0;
              uVar28 = 0xbff;
              if (bVar2) {
                uVar28 = SUB42(fVar33,0);
              }
              puVar15[3] = uVar28;
              if (bVar3) {
                fVar26 = (float)((uint)(0.0 < fVar26) * (int)fVar26);
              }
              uVar28 = 0xbff;
              if (bVar3) {
                uVar28 = SUB42(fVar26,0);
              }
              puVar15[4] = uVar28;
              if (fVar29 < 3071.0) {
                uVar31 = (ushort)(0.0 < fVar29) * (short)(int)fVar29;
              }
              puVar15[5] = uVar31;
              puVar15 = puVar15 + 3;
            }
          }
          else if (uVar20 == 4) {
            uVar21 = (uint)*local_58;
            uVar20 = (uint)local_58[1];
            uVar24 = (uint)local_58[2];
            pfVar12 = (float *)(iVar22 + uVar21 * 4);
            fVar33 = *pfVar12 * 2048.0;
            uVar13 = (uint)local_58[3];
            fVar34 = *(float *)(iVar22 + uVar13 * 4);
            fVar26 = *(float *)(iVar22 + uVar20 * 4) * 2048.0;
            bVar2 = fVar33 < 3071.0;
            fVar29 = *(float *)(iVar22 + uVar24 * 4) * 2048.0;
            uVar31 = (ushort)pfVar12;
            if (bVar2) {
              fVar33 = (float)((uint)(0.0 < fVar33) * (int)fVar33);
            }
            else {
              uVar31 = 0xbff;
            }
            bVar3 = fVar26 < 3071.0;
            if (bVar2) {
              uVar31 = SUB42(fVar33,0);
            }
            *local_5c = uVar31;
            fVar34 = fVar34 * 2048.0;
            if (bVar3) {
              fVar26 = (float)((uint)(0.0 < fVar26) * (int)fVar26);
            }
            else {
              uVar31 = 0xbff;
            }
            if (bVar3) {
              uVar31 = SUB42(fVar26,0);
            }
            local_5c[1] = uVar31;
            uVar31 = SUB42(fVar29,0);
            if (fVar29 < 3071.0) {
              uVar31 = (ushort)(0.0 < fVar29) * (short)(int)fVar29;
              puVar15 = local_5c;
            }
            else {
              puVar15 = (ushort *)0xbff;
            }
            uVar28 = (ushort)puVar15;
            if (fVar29 < 3071.0) {
              uVar28 = uVar31;
            }
            local_5c[2] = uVar28;
            if (fVar34 < 3071.0) {
              uVar31 = (ushort)(0.0 < fVar34) * (short)(int)fVar34;
            }
            else {
              uVar31 = 0xbff;
            }
            local_5c[3] = uVar31;
            if (0 < iVar25) {
              puVar15 = local_58;
              puVar11 = local_5c;
              do {
                uVar21 = uVar21 + puVar15[4];
                uVar20 = uVar20 + puVar15[5];
                uVar24 = uVar24 + puVar15[6];
                uVar13 = uVar13 + puVar15[7];
                fVar33 = *(float *)(iVar22 + (uVar21 & 0x7ff) * 4) * 2048.0;
                puVar15 = puVar15 + 4;
                pfVar12 = (float *)(iVar22 + (uVar13 & 0x7ff) * 4);
                fVar34 = *pfVar12;
                fVar26 = *(float *)(iVar22 + (uVar20 & 0x7ff) * 4) * 2048.0;
                bVar2 = fVar33 < 3071.0;
                fVar29 = *(float *)(iVar22 + (uVar24 & 0x7ff) * 4) * 2048.0;
                uVar31 = (ushort)pfVar12;
                if (bVar2) {
                  fVar33 = (float)((uint)(0.0 < fVar33) * (int)fVar33);
                }
                else {
                  uVar31 = 0xbff;
                }
                bVar3 = fVar26 < 3071.0;
                if (bVar2) {
                  uVar31 = SUB42(fVar33,0);
                }
                puVar11[4] = uVar31;
                fVar34 = fVar34 * 2048.0;
                if (bVar3) {
                  fVar26 = (float)((uint)(0.0 < fVar26) * (int)fVar26);
                }
                else {
                  uVar31 = 0xbff;
                }
                if (bVar3) {
                  uVar31 = SUB42(fVar26,0);
                }
                puVar11[5] = uVar31;
                uVar28 = SUB42(fVar29,0);
                if (fVar29 < 3071.0) {
                  uVar28 = (ushort)(0.0 < fVar29) * (short)(int)fVar29;
                }
                else {
                  uVar31 = 0xbff;
                }
                if (fVar29 < 3071.0) {
                  uVar31 = uVar28;
                }
                puVar11[6] = uVar31;
                if (fVar34 < 3071.0) {
                  uVar31 = (ushort)(0.0 < fVar34) * (short)(int)fVar34;
                }
                else {
                  uVar31 = 0xbff;
                }
                puVar11[7] = uVar31;
                puVar11 = puVar11 + 4;
              } while (puVar11 != local_5c + uVar1 * 4 + 4);
            }
          }
          else {
            iVar16 = 0;
            puVar15 = local_58;
            puVar11 = local_5c;
            do {
              puVar9 = puVar15 + 1;
              uVar31 = 0xbff;
              iVar16 = iVar16 + 1;
              fVar33 = *(float *)(iVar22 + (*puVar15 & 0x7ff) * 4) * 2048.0;
              if (fVar33 < 3071.0) {
                uVar31 = (ushort)(0.0 < fVar33) * (short)(int)fVar33;
              }
              puVar23 = puVar11 + 1;
              *puVar11 = uVar31;
              puVar15 = puVar9;
              puVar11 = puVar23;
            } while (0 < (int)(uVar20 - iVar16));
            if (0 < (int)(iVar19 - uVar20)) {
              iVar16 = (iVar19 - uVar20) - uVar20;
              do {
                puVar15 = puVar9 + uVar20;
                uVar13 = uVar20;
                puVar11 = puVar23;
                puVar14 = puVar9;
                do {
                  uVar31 = *puVar15;
                  uVar32 = 0xbff;
                  puVar9 = puVar14 + 1;
                  uVar28 = *puVar14;
                  uVar13 = uVar13 - 1;
                  *puVar15 = (ushort)((uint)uVar28 + (uint)uVar31);
                  fVar33 = *(float *)(iVar22 + ((uint)uVar28 + (uint)uVar31 & 0x7ff) * 4) * 2048.0;
                  if (fVar33 < 3071.0) {
                    uVar32 = (ushort)(0.0 < fVar33) * (short)(int)fVar33;
                  }
                  puVar23 = puVar11 + 1;
                  *puVar11 = uVar32;
                  puVar15 = puVar15 + 1;
                  puVar11 = puVar23;
                  puVar14 = puVar9;
                } while (0 < (int)uVar13);
                iVar16 = iVar16 - uVar20;
              } while (0 < (int)(uVar20 + iVar16));
            }
          }
        }
        local_5c = local_5c + iVar19;
        break;
      case 4:
        uVar20 = (uint)*(ushort *)(iVar18 + 0x7c);
        iVar22 = *(int *)(iVar18 + 0x98);
        if ((int)uVar20 <= iVar19) {
          if (uVar20 == 3) {
            uVar20 = (uint)*local_58;
            *local_5c = *(ushort *)(iVar22 + uVar20 * 2);
            uVar13 = (uint)local_58[1];
            local_5c[1] = *(ushort *)(iVar22 + uVar13 * 2);
            uVar21 = (uint)local_58[2];
            local_5c[2] = *(ushort *)(iVar22 + uVar21 * 2);
            puVar15 = local_5c;
            puVar11 = local_58;
            for (iVar16 = iVar8; 0 < iVar16; iVar16 = iVar16 + -3) {
              uVar20 = uVar20 + puVar11[3];
              puVar15[3] = *(ushort *)(iVar22 + (uVar20 & 0x7ff) * 2);
              uVar13 = uVar13 + puVar11[4];
              puVar15[4] = *(ushort *)(iVar22 + (uVar13 & 0x7ff) * 2);
              puVar9 = puVar11 + 5;
              puVar11 = puVar11 + 3;
              uVar21 = uVar21 + *puVar9;
              puVar15[5] = *(ushort *)(iVar22 + (uVar21 & 0x7ff) * 2);
              puVar15 = puVar15 + 3;
            }
          }
          else if (uVar20 == 4) {
            uVar13 = (uint)*local_58;
            *local_5c = *(ushort *)(iVar22 + uVar13 * 2);
            uVar24 = (uint)local_58[1];
            local_5c[1] = *(ushort *)(iVar22 + uVar24 * 2);
            uVar20 = (uint)local_58[2];
            local_5c[2] = *(ushort *)(iVar22 + uVar20 * 2);
            uVar21 = (uint)local_58[3];
            local_5c[3] = *(ushort *)(iVar22 + uVar21 * 2);
            if (0 < iVar25) {
              puVar15 = local_58;
              puVar11 = local_5c;
              do {
                uVar13 = uVar13 + puVar15[4];
                puVar11[4] = *(ushort *)(iVar22 + (uVar13 & 0x7ff) * 2);
                uVar24 = uVar24 + puVar15[5];
                puVar11[5] = *(ushort *)(iVar22 + (uVar24 & 0x7ff) * 2);
                uVar20 = uVar20 + puVar15[6];
                puVar11[6] = *(ushort *)(iVar22 + (uVar20 & 0x7ff) * 2);
                puVar9 = puVar15 + 7;
                puVar15 = puVar15 + 4;
                uVar21 = uVar21 + *puVar9;
                puVar11[7] = *(ushort *)(iVar22 + (uVar21 & 0x7ff) * 2);
                puVar11 = puVar11 + 4;
              } while (puVar11 != local_5c + uVar1 * 4 + 4);
            }
          }
          else {
            iVar16 = 0;
            puVar15 = local_58;
            puVar11 = local_5c;
            do {
              puVar9 = puVar15 + 1;
              iVar16 = iVar16 + 1;
              puVar23 = puVar11 + 1;
              *puVar11 = *(ushort *)(iVar22 + (*puVar15 & 0x7ff) * 2);
              puVar15 = puVar9;
              puVar11 = puVar23;
            } while (0 < (int)(uVar20 - iVar16));
            if (0 < (int)(iVar19 - uVar20)) {
              iVar16 = (iVar19 - uVar20) - uVar20;
              do {
                iVar10 = 0;
                iVar17 = 0;
                uVar13 = uVar20;
                do {
                  uVar13 = uVar13 - 1;
                  iVar10 = iVar10 + 2;
                  *(short *)((int)puVar9 + iVar17 + uVar20 * 2) =
                       *(short *)((int)puVar9 + iVar17) +
                       *(short *)((int)puVar9 + iVar17 + uVar20 * 2);
                  *(undefined2 *)((int)puVar23 + iVar17) =
                       *(undefined2 *)(iVar22 + (*(ushort *)((int)puVar9 + iVar17) & 0x7ff) * 2);
                  iVar17 = iVar17 + 2;
                } while (0 < (int)uVar13);
                iVar16 = iVar16 - uVar20;
                puVar9 = (ushort *)((int)puVar9 + iVar10);
                puVar23 = (ushort *)((int)puVar23 + iVar10);
              } while (0 < (int)(uVar20 + iVar16));
            }
          }
        }
        local_5c = local_5c + iVar19;
        break;
      case 5:
        uVar20 = (uint)*(ushort *)(iVar18 + 0x7c);
        iVar22 = *(int *)(iVar18 + 0x94);
        if ((int)uVar20 <= iVar19) {
          if (uVar20 == 3) {
            uVar20 = (uint)*local_58;
            uVar13 = (uint)local_58[1];
            uVar21 = (uint)local_58[2];
            uVar27 = *(undefined4 *)(iVar22 + uVar13 * 4);
            uVar30 = *(undefined4 *)(iVar22 + uVar21 * 4);
            *(undefined4 *)local_5c = *(undefined4 *)(iVar22 + uVar20 * 4);
            *(undefined4 *)(local_5c + 2) = uVar27;
            *(undefined4 *)(local_5c + 4) = uVar30;
            puVar15 = local_5c;
            puVar11 = local_58;
            for (iVar16 = iVar8; 0 < iVar16; iVar16 = iVar16 + -3) {
              puVar9 = puVar11 + 5;
              uVar20 = uVar20 + puVar11[3];
              uVar13 = uVar13 + puVar11[4];
              puVar11 = puVar11 + 3;
              uVar21 = uVar21 + *puVar9;
              uVar27 = *(undefined4 *)(iVar22 + (uVar13 & 0x7ff) * 4);
              uVar30 = *(undefined4 *)(iVar22 + (uVar21 & 0x7ff) * 4);
              *(undefined4 *)(puVar15 + 6) = *(undefined4 *)(iVar22 + (uVar20 & 0x7ff) * 4);
              *(undefined4 *)(puVar15 + 8) = uVar27;
              *(undefined4 *)(puVar15 + 10) = uVar30;
              puVar15 = puVar15 + 6;
            }
          }
          else if (uVar20 == 4) {
            uVar20 = (uint)local_58[1];
            uVar24 = (uint)local_58[2];
            uVar21 = (uint)local_58[3];
            uVar13 = (uint)*local_58;
            uVar30 = *(undefined4 *)(iVar22 + uVar24 * 4);
            uVar35 = *(undefined4 *)(iVar22 + uVar21 * 4);
            uVar27 = *(undefined4 *)(iVar22 + uVar13 * 4);
            *(undefined4 *)(local_5c + 2) = *(undefined4 *)(iVar22 + uVar20 * 4);
            *(undefined4 *)local_5c = uVar27;
            *(undefined4 *)(local_5c + 4) = uVar30;
            *(undefined4 *)(local_5c + 6) = uVar35;
            if (0 < iVar25) {
              puVar15 = local_5c;
              puVar11 = local_58;
              do {
                uVar13 = uVar13 + puVar11[4];
                uVar20 = uVar20 + puVar11[5];
                uVar24 = uVar24 + puVar11[6];
                uVar21 = uVar21 + puVar11[7];
                puVar11 = puVar11 + 4;
                uVar30 = *(undefined4 *)(iVar22 + (uVar24 & 0x7ff) * 4);
                uVar35 = *(undefined4 *)(iVar22 + (uVar21 & 0x7ff) * 4);
                uVar27 = *(undefined4 *)(iVar22 + (uVar13 & 0x7ff) * 4);
                *(undefined4 *)(puVar15 + 10) = *(undefined4 *)(iVar22 + (uVar20 & 0x7ff) * 4);
                *(undefined4 *)(puVar15 + 8) = uVar27;
                *(undefined4 *)(puVar15 + 0xc) = uVar30;
                *(undefined4 *)(puVar15 + 0xe) = uVar35;
                puVar15 = puVar15 + 8;
              } while (puVar11 != local_58 + uVar1 * 4 + 4);
            }
          }
          else {
            iVar16 = 0;
            puVar15 = local_58;
            puVar11 = local_5c;
            do {
              puVar9 = puVar15 + 1;
              iVar16 = iVar16 + 1;
              *(undefined4 *)puVar11 = *(undefined4 *)(iVar22 + (*puVar15 & 0x7ff) * 4);
              puVar11 = puVar11 + 2;
              puVar15 = puVar9;
            } while (0 < (int)(uVar20 - iVar16));
            if (0 < (int)(iVar19 - uVar20)) {
              iVar16 = (iVar19 - uVar20) - uVar20;
              do {
                iVar10 = 0;
                iVar17 = 0;
                uVar13 = uVar20;
                puVar15 = puVar11;
                do {
                  uVar13 = uVar13 - 1;
                  iVar10 = iVar10 + 2;
                  *(short *)((int)puVar9 + iVar17 + uVar20 * 2) =
                       *(short *)((int)puVar9 + iVar17) +
                       *(short *)((int)puVar9 + iVar17 + uVar20 * 2);
                  puVar23 = (ushort *)((int)puVar9 + iVar17);
                  iVar17 = iVar17 + 2;
                  *(undefined4 *)puVar15 = *(undefined4 *)(iVar22 + (*puVar23 & 0x7ff) * 4);
                  puVar15 = puVar15 + 2;
                } while (0 < (int)uVar13);
                iVar16 = iVar16 - uVar20;
                puVar9 = (ushort *)((int)puVar9 + iVar10);
                puVar11 = puVar11 + iVar10;
              } while (0 < (int)(iVar16 + uVar20));
            }
          }
        }
        local_5c = local_5c + iVar19 * 2;
        break;
      default:
        TIFFErrorExt(param_1[0x99],*param_1,"PixarLogDecode: unsupported bits/sample: %d",
                     *(undefined2 *)(param_1 + 0x15));
        return 0;
      }
      local_50 = local_50 + iVar19;
      if ((int)local_4c <= local_50 - iVar19) break;
      local_58 = local_58 + iVar19;
    }
  }
  return 1;
}

// ---- FUN_007341e8  @ 0x7341e8
undefined4 FUN_007341e8(int param_1,void *param_2,size_t param_3)

{
  void *pvVar1;
  int iVar2;
  size_t __n;
  size_t sVar3;
  int iVar4;
  
  do {
    if ((int)param_3 < 1) {
      return 1;
    }
    iVar2 = *(int *)(param_1 + 0x250);
    iVar4 = *(int *)(param_1 + 0x248);
    if (iVar4 < (int)(param_3 + iVar2)) {
      __n = iVar4 - iVar2;
      sVar3 = param_3 - __n;
    }
    else {
      sVar3 = 0;
      __n = param_3;
    }
    pvVar1 = param_2;
    if (*(void **)(param_1 + 0x24c) != param_2) {
      _TIFFmemcpy(*(void **)(param_1 + 0x24c),param_2,__n);
      iVar2 = *(int *)(param_1 + 0x250);
      iVar4 = *(int *)(param_1 + 0x248);
      pvVar1 = *(void **)(param_1 + 0x24c);
    }
    param_2 = (void *)((int)param_2 + __n);
    *(size_t *)(param_1 + 0x250) = __n + iVar2;
    *(size_t *)(param_1 + 0x24c) = (int)pvVar1 + __n;
    param_3 = sVar3;
  } while (((int)(__n + iVar2) < iVar4) || (iVar2 = TIFFFlushData1(param_1), iVar2 != 0));
  return 0xffffffff;
}

// ---- FUN_00734404  @ 0x734404
uint FUN_00734404(int param_1)

{
  int iVar1;
  uint uVar2;
  int iVar3;
  
  uVar2 = (**(code **)(*(int *)(param_1 + 0x238) + 0x3d4))();
  if (*(uint *)(param_1 + 0x3c) <= uVar2) {
    return uVar2;
  }
  iVar1 = (uint)*(ushort *)(param_1 + 0xce) * 8;
  iVar3 = __udivsi3(iVar1 + -1 + uVar2,iVar1);
  return iVar3 * iVar1;
}

// ---- FUN_00734444  @ 0x734444
void FUN_00734444(int param_1,int *param_2,int *param_3)

{
  int iVar1;
  int iVar2;
  int iVar3;
  
  (**(code **)(*(int *)(param_1 + 0x238) + 0x3d8))();
  iVar3 = (uint)*(ushort *)(param_1 + 0xcc) * 8;
  iVar2 = __udivsi3(iVar3 + -1 + *param_2,iVar3);
  iVar1 = (uint)*(ushort *)(param_1 + 0xce) * 8;
  *param_2 = iVar2 * iVar3;
  iVar3 = __udivsi3(iVar1 + -1 + *param_3,iVar1);
  *param_3 = iVar3 * iVar1;
  return;
}

// ---- FUN_0073470c  @ 0x73470c
undefined4 FUN_0073470c(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  undefined4 uVar2;
  
  iVar1 = setjmp((__jmp_buf_tag *)(param_1 + 600));
  if (iVar1 == 0) {
    uVar2 = (**(code **)(*(int *)(param_1 + 4) + 8))(param_1,param_2,param_3,param_4);
  }
  else {
    uVar2 = 0;
  }
  return uVar2;
}

// ---- FUN_00734748  @ 0x734748
undefined4 FUN_00734748(int param_1,int param_2,int param_3,undefined4 param_4)

{
  int *piVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  int iVar7;
  int *piVar8;
  
  iVar7 = *(int *)(param_1 + 0x238);
  if (param_3 < 1) {
    iVar6 = 0;
  }
  else {
    iVar6 = 0;
    piVar8 = (int *)(iVar7 + 0x394);
    iVar3 = 0;
    do {
      iVar4 = *(int *)(param_2 + 0xc);
      piVar1 = (int *)(param_2 + 0x1c);
      iVar5 = *(int *)(param_2 + 8);
      iVar3 = iVar3 + 1;
      param_2 = param_2 + 0x54;
      iVar2 = FUN_0073470c(iVar7,1,*piVar1 << 3,iVar4 << 3,param_4);
      iVar6 = iVar5 * iVar4 + iVar6;
      if (iVar2 == 0) {
        return 0;
      }
      piVar8 = piVar8 + 1;
      *piVar8 = iVar2;
    } while (iVar3 != param_3);
  }
  *(int *)(iVar7 + 0x3c4) = iVar6;
  return 1;
}

// ---- FUN_007347bc  @ 0x7347bc
bool FUN_007347bc(int param_1)

{
  int iVar1;
  
  iVar1 = setjmp((__jmp_buf_tag *)(param_1 + 600));
  if (iVar1 == 0) {
    jpeg_destroy(param_1);
  }
  return iVar1 == 0;
}

// ---- FUN_007347f0  @ 0x7347f0
void FUN_007347f0(int param_1)

{
  undefined4 uVar1;
  int iVar2;
  undefined4 uVar3;
  int iVar4;
  
  iVar4 = *(int *)(param_1 + 0x238);
  iVar2 = *(int *)(iVar4 + 0x1d0);
  uVar1 = *(undefined4 *)(iVar4 + 0x3d0);
  *(undefined4 *)(param_1 + 0x290) = *(undefined4 *)(iVar4 + 0x3c8);
  uVar3 = *(undefined4 *)(iVar4 + 0x3cc);
  *(undefined4 *)(param_1 + 0x294) = uVar1;
  *(undefined4 *)(param_1 + 0x28c) = uVar3;
  if (iVar2 != 0) {
    FUN_007347bc(iVar4);
  }
  if (*(int *)(iVar4 + 0x3dc) != 0) {
    _TIFFfree();
  }
  _TIFFfree(*(undefined4 *)(param_1 + 0x238));
  *(undefined4 *)(param_1 + 0x238) = 0;
  _TIFFSetDefaultCompressionState(param_1);
  return;
}

// ---- FUN_007348d0  @ 0x7348d0
undefined4 FUN_007348d0(int param_1,undefined4 param_2,undefined4 param_3)

{
  int iVar1;
  undefined4 uVar2;
  
  iVar1 = setjmp((__jmp_buf_tag *)(param_1 + 600));
  if (iVar1 == 0) {
    uVar2 = jpeg_write_scanlines(param_1,param_2,param_3);
  }
  else {
    uVar2 = 0xffffffff;
  }
  return uVar2;
}

// ---- FUN_00734908  @ 0x734908
undefined4 FUN_00734908(undefined4 *param_1,int param_2,undefined4 param_3)

{
  int iVar1;
  int iVar2;
  int extraout_r1;
  undefined4 uVar3;
  int iVar4;
  int iVar5;
  int local_24 [2];
  
  iVar5 = param_1[0x8e];
  uVar3 = *(undefined4 *)(iVar5 + 0x394);
  iVar1 = __divsi3(param_3,uVar3);
  __aeabi_idivmod(param_3,uVar3);
  if (extraout_r1 != 0) {
    TIFFWarningExt(param_1[0x99],*param_1,"fractional scanline discarded");
  }
  if ((param_1[3] & 0x400) == 0) {
    if ((uint)param_1[0xf] < (uint)(iVar1 + param_1[0x72])) {
      iVar1 = param_1[0xf] - param_1[0x72];
    }
  }
  if (iVar1 < 1) {
LAB_007349dc:
    uVar3 = 1;
  }
  else {
    local_24[0] = param_2;
    iVar2 = FUN_007348d0(iVar5,local_24,1);
    iVar4 = 1;
    while (iVar2 == 1) {
      if (iVar4 == iVar1) goto LAB_007349dc;
      param_1[0x72] = param_1[0x72] + 1;
      iVar4 = iVar4 + 1;
      param_2 = param_2 + *(int *)(iVar5 + 0x394);
      local_24[0] = param_2;
      iVar2 = FUN_007348d0(iVar5,local_24,1);
    }
    uVar3 = 0;
  }
  return uVar3;
}

// ---- FUN_00734a04  @ 0x734a04
undefined4 FUN_00734a04(int param_1,undefined4 param_2,undefined4 param_3)

{
  int iVar1;
  undefined4 uVar2;
  
  iVar1 = setjmp((__jmp_buf_tag *)(param_1 + 600));
  if (iVar1 == 0) {
    uVar2 = jpeg_write_raw_data(param_1,param_2,param_3);
  }
  else {
    uVar2 = 0xffffffff;
  }
  return uVar2;
}

// ---- FUN_00734a3c  @ 0x734a3c
undefined4 FUN_00734a3c(undefined4 *param_1,int param_2,undefined4 param_3)

{
  ushort uVar1;
  int iVar2;
  undefined1 *puVar3;
  int extraout_r1;
  undefined1 *puVar4;
  undefined1 *puVar5;
  int iVar6;
  int iVar7;
  int iVar8;
  uint uVar9;
  int iVar10;
  int iVar11;
  int iVar12;
  int iVar13;
  undefined1 *puVar14;
  int iVar15;
  int iVar16;
  int local_44;
  int local_3c;
  int local_38;
  int local_34;
  int local_30;
  
  iVar11 = param_1[0x8e];
  uVar9 = (uint)*(ushort *)(iVar11 + 0x38e);
  uVar1 = *(ushort *)(iVar11 + 0x390);
  iVar2 = __udivsi3(*(int *)(iVar11 + 0x1c) + -1 + uVar9,uVar9);
  iVar10 = *(int *)(iVar11 + 0x3c4);
  uVar9 = (uVar9 * uVar1 + 2) * *(int *)(iVar11 + 0x38) * iVar2 + 7 >> 3;
  local_34 = __divsi3(param_3,uVar9);
  local_34 = (uint)uVar1 * local_34;
  __aeabi_idivmod(param_3,uVar9);
  if (extraout_r1 != 0) {
    TIFFWarningExt(param_1[0x99],*param_1,"fractional scanline discarded");
  }
  iVar2 = *(int *)(*(int *)(iVar11 + 0x44) + 0x7c);
  local_30 = param_2;
  do {
    if (local_34 < 1) {
      return 1;
    }
    iVar7 = *(int *)(iVar11 + 0x3c);
    local_44 = *(int *)(iVar11 + 0x44);
    if (0 < iVar7) {
      local_3c = 0;
      local_38 = 0;
      iVar13 = iVar11;
      while( true ) {
        HintPreloadData(local_44 + 0x158);
        iVar16 = *(int *)(local_44 + 8);
        iVar15 = *(int *)(local_44 + 0xc);
        iVar6 = *(int *)(local_44 + 0x1c) * 8 - iVar2 * iVar16;
        if (0 < iVar15) {
          puVar14 = (undefined1 *)(local_30 + local_38);
          iVar7 = 0;
          do {
            iVar12 = iVar7;
            puVar4 = *(undefined1 **)
                      (*(int *)(iVar13 + 0x398) + (*(int *)(iVar11 + 0x3c0) * iVar15 + iVar12) * 4);
            if (iVar16 == 1) {
              if (iVar2 != 0) {
                iVar7 = 0;
                puVar3 = puVar14;
                do {
                  puVar4[iVar7] = *puVar3;
                  iVar7 = iVar7 + 1;
                  puVar3 = puVar3 + iVar10;
                } while (iVar2 != iVar7);
                puVar4 = puVar4 + iVar2;
              }
            }
            else {
              puVar3 = puVar14;
              iVar7 = iVar2;
              if (iVar2 != 0) {
                while( true ) {
                  if (0 < iVar16) {
                    iVar8 = 0;
                    do {
                      puVar4[iVar8] = puVar3[iVar8];
                      iVar8 = iVar8 + 1;
                    } while (iVar8 != iVar16);
                    puVar4 = puVar4 + iVar16;
                  }
                  if (iVar7 + -1 == 0) break;
                  puVar3 = puVar3 + iVar10;
                  iVar7 = iVar7 + -1;
                }
              }
            }
            if (0 < iVar6) {
              puVar3 = puVar4;
              do {
                puVar5 = puVar3 + 1;
                *puVar3 = puVar3[-1];
                puVar3 = puVar5;
              } while (puVar5 != puVar4 + iVar6);
            }
            puVar14 = puVar14 + iVar16;
            iVar7 = iVar12 + 1;
          } while (iVar12 + 1 != iVar15);
          iVar7 = *(int *)(iVar11 + 0x3c);
          local_38 = local_38 + iVar16 * iVar12 + iVar16;
        }
        iVar13 = iVar13 + 4;
        local_3c = local_3c + 1;
        if (iVar7 <= local_3c) break;
        local_44 = local_44 + 0x54;
      }
    }
    iVar7 = *(int *)(iVar11 + 0x3c0) + 1;
    *(int *)(iVar11 + 0x3c0) = iVar7;
    if (7 < iVar7) {
      iVar7 = *(int *)(iVar11 + 0xec) * 8;
      iVar13 = FUN_00734a04(iVar11,iVar11 + 0x398,iVar7);
      if (iVar13 != iVar7) {
        return 0;
      }
      *(undefined4 *)(iVar11 + 0x3c0) = 0;
    }
    local_34 = local_34 - (uint)*(ushort *)(iVar11 + 0x390);
    param_1[0x72] = param_1[0x72] + (uint)*(ushort *)(iVar11 + 0x390);
    local_30 = local_30 + *(int *)(iVar11 + 0x394);
  } while( true );
}

// ---- FUN_00734cd0  @ 0x734cd0
bool FUN_00734cd0(int param_1)

{
  int iVar1;
  
  iVar1 = setjmp((__jmp_buf_tag *)(param_1 + 600));
  if (iVar1 == 0) {
    jpeg_finish_compress(param_1);
  }
  return iVar1 == 0;
}

// ---- FUN_00734e00  @ 0x734e00
bool FUN_00734e00(int param_1,undefined4 param_2)

{
  int iVar1;
  
  iVar1 = setjmp((__jmp_buf_tag *)(param_1 + 600));
  if (iVar1 == 0) {
    jpeg_set_colorspace(param_1,param_2);
  }
  return iVar1 == 0;
}

// ---- FUN_00734e38  @ 0x734e38
bool FUN_00734e38(int param_1,undefined4 param_2,undefined4 param_3)

{
  int iVar1;
  
  iVar1 = setjmp((__jmp_buf_tag *)(param_1 + 600));
  if (iVar1 == 0) {
    jpeg_set_quality(param_1,param_2,param_3);
  }
  return iVar1 == 0;
}

// ---- FUN_00734e74  @ 0x734e74
bool FUN_00734e74(int param_1,undefined4 param_2)

{
  int iVar1;
  
  iVar1 = setjmp((__jmp_buf_tag *)(param_1 + 600));
  if (iVar1 == 0) {
    jpeg_start_compress(param_1,param_2);
  }
  return iVar1 == 0;
}

// ---- FUN_007351c4  @ 0x7351c4
bool FUN_007351c4(undefined4 *param_1)

{
  undefined4 uVar1;
  int iVar2;
  
  uVar1 = jpeg_std_error(param_1 + 0x75);
  param_1[0x75] = &DAT_00735264;
  param_1[0x77] = &DAT_00734858;
  *param_1 = uVar1;
  iVar2 = setjmp((__jmp_buf_tag *)(param_1 + 0x96));
  if (iVar2 == 0) {
    jpeg_CreateDecompress(param_1,0x3e,0x1d0);
  }
  return iVar2 == 0;
}

// ---- FUN_00735230  @ 0x735230
bool FUN_00735230(int param_1)

{
  int iVar1;
  
  iVar1 = setjmp((__jmp_buf_tag *)(param_1 + 600));
  if (iVar1 == 0) {
    jpeg_abort(param_1);
  }
  return iVar1 == 0;
}

// ---- FUN_007352d4  @ 0x7352d4
bool FUN_007352d4(undefined4 *param_1)

{
  undefined4 uVar1;
  int iVar2;
  
  uVar1 = jpeg_std_error(param_1 + 0x75);
  param_1[0x75] = &DAT_00735264;
  param_1[0x77] = &DAT_00734858;
  *param_1 = uVar1;
  iVar2 = setjmp((__jmp_buf_tag *)(param_1 + 0x96));
  if (iVar2 == 0) {
    jpeg_CreateCompress(param_1,0x3e,0x178);
  }
  return iVar2 == 0;
}

// ---- FUN_00735340  @ 0x735340
bool FUN_00735340(int param_1,int param_2,int param_3)

{
  int iVar1;
  int iVar2;
  int iVar3;
  uint *local_1c;
  
  iVar3 = *(int *)(param_1 + 0x238);
  local_1c = (uint *)0x0;
  if (*(int *)(iVar3 + 0x1d0) != 0) {
    if (((param_2 == 0) || (*(int *)(iVar3 + 0x10) == 0)) &&
       ((param_3 == 0 || (*(int *)(iVar3 + 0x10) != 0)))) {
      return true;
    }
    FUN_007347bc(iVar3);
    *(undefined4 *)(iVar3 + 0x1d0) = 0;
  }
  iVar1 = TIFFIsTiled(param_1);
  if (((iVar1 == 0) || (iVar1 = TIFFGetField(param_1,0x145,&local_1c), iVar1 == 0)) ||
     (local_1c == (uint *)0x0)) {
    iVar1 = 1;
  }
  else {
    iVar1 = 1 - *local_1c;
    if (1 < *local_1c) {
      iVar1 = 0;
    }
  }
  iVar2 = TIFFIsTiled(param_1);
  if (((iVar2 == 0) && (iVar2 = TIFFGetField(param_1,0x117,&local_1c), iVar2 != 0)) &&
     ((local_1c != (uint *)0x0 && (iVar1 = 1 - *local_1c, 1 < *local_1c)))) {
    iVar1 = 0;
  }
  if ((param_3 == 0) && ((param_2 != 0 || ((*(int *)(param_1 + 8) != 0 && (iVar1 != 0)))))) {
    iVar1 = FUN_007352d4(iVar3);
  }
  else {
    iVar1 = FUN_007351c4(iVar3);
  }
  if (iVar1 != 0) {
    *(undefined4 *)(iVar3 + 0x1d0) = 1;
  }
  return iVar1 != 0;
}

// ---- FUN_00735494  @ 0x735494
bool FUN_00735494(int param_1)

{
  int iVar1;
  
  iVar1 = setjmp((__jmp_buf_tag *)(param_1 + 600));
  if (iVar1 == 0) {
    jpeg_set_defaults(param_1);
  }
  return iVar1 == 0;
}

// ---- FUN_007354c8  @ 0x7354c8
bool FUN_007354c8(int param_1,undefined4 param_2)

{
  int iVar1;
  
  iVar1 = setjmp((__jmp_buf_tag *)(param_1 + 600));
  if (iVar1 == 0) {
    jpeg_suppress_tables(param_1,param_2);
  }
  return iVar1 == 0;
}

// ---- FUN_00735570  @ 0x735570
bool FUN_00735570(int param_1)

{
  int iVar1;
  
  iVar1 = setjmp((__jmp_buf_tag *)(param_1 + 600));
  if (iVar1 == 0) {
    jpeg_write_tables(param_1);
  }
  return iVar1 == 0;
}

// ---- FUN_007355a4  @ 0x7355a4
undefined4 FUN_007355a4(int param_1)

{
  ushort uVar1;
  int iVar2;
  void *pvVar3;
  int extraout_r1;
  int extraout_r1_00;
  int extraout_r1_01;
  uint uVar4;
  int iVar5;
  int iVar6;
  uint in_fpscr;
  undefined4 local_34;
  undefined4 local_30;
  undefined4 local_2c;
  undefined4 local_28;
  undefined4 local_24;
  undefined4 local_20;
  undefined1 auStack_1c [8];
  
  iVar6 = *(int *)(param_1 + 0x238);
  FUN_00735340(param_1,1);
  *(undefined4 *)(iVar6 + 0x28) = 0;
  *(undefined4 *)(iVar6 + 0x24) = 1;
  iVar2 = FUN_00735494(iVar6);
  if (iVar2 == 0) {
    return 0;
  }
  uVar1 = *(ushort *)(param_1 + 0x5a);
  *(ushort *)(iVar6 + 0x38c) = uVar1;
  if (uVar1 < 3) {
LAB_007355f4:
    *(undefined2 *)(iVar6 + 0x38e) = 1;
    *(undefined2 *)(iVar6 + 0x390) = 1;
  }
  else {
    if (uVar1 < 5) {
      TIFFErrorExt(*(undefined4 *)(param_1 + 0x264),"JPEGSetupEncode",
                   "PhotometricInterpretation %d not allowed for JPEG");
      return 0;
    }
    if (uVar1 != 6) goto LAB_007355f4;
    *(undefined2 *)(iVar6 + 0x38e) = *(undefined2 *)(param_1 + 0xcc);
    *(undefined2 *)(iVar6 + 0x390) = *(undefined2 *)(param_1 + 0xce);
    iVar2 = TIFFGetField(param_1,0x214,auStack_1c);
    if (iVar2 == 0) {
      local_34 = 0;
      iVar2 = 1 << (*(ushort *)(param_1 + 0x54) & 0xff);
      local_30 = VectorSignedToFloat(iVar2 + -1,(byte)(in_fpscr >> 0x16) & 3);
      local_2c = VectorSignedToFloat(iVar2 >> 1,(byte)(in_fpscr >> 0x16) & 3);
      local_28 = local_30;
      local_24 = local_2c;
      local_20 = local_30;
      TIFFSetField(param_1,0x214,&local_34);
    }
  }
  if (*(short *)(param_1 + 0x54) != 8) {
    TIFFErrorExt(*(undefined4 *)(param_1 + 0x264),"JPEGSetupEncode",
                 "BitsPerSample %d not allowed for JPEG");
    return 0;
  }
  *(undefined4 *)(iVar6 + 0x38) = 8;
  if ((*(uint *)(param_1 + 0xc) & 0x400) == 0) {
    if (*(uint *)(param_1 + 100) < *(uint *)(param_1 + 0x3c)) {
      iVar2 = (uint)*(ushort *)(iVar6 + 0x390) << 3;
      __aeabi_uidivmod(*(uint *)(param_1 + 100),iVar2);
      if (extraout_r1_01 != 0) {
        TIFFErrorExt(*(undefined4 *)(param_1 + 0x264),"JPEGSetupEncode",
                     "RowsPerStrip must be multiple of %d for JPEG",iVar2);
        return 0;
      }
    }
  }
  else {
    iVar2 = (uint)*(ushort *)(iVar6 + 0x390) << 3;
    __aeabi_uidivmod(*(undefined4 *)(param_1 + 0x48),iVar2);
    if (extraout_r1 != 0) {
      TIFFErrorExt(*(undefined4 *)(param_1 + 0x264),"JPEGSetupEncode",
                   "JPEG tile height must be multiple of %d",iVar2);
      return 0;
    }
    iVar2 = (uint)*(ushort *)(iVar6 + 0x38e) << 3;
    __aeabi_uidivmod(*(undefined4 *)(param_1 + 0x44),iVar2);
    if (extraout_r1_00 != 0) {
      TIFFErrorExt(*(undefined4 *)(param_1 + 0x264),"JPEGSetupEncode",
                   "JPEG tile width must be multiple of %d",iVar2);
      return 0;
    }
  }
  if ((*(uint *)(iVar6 + 0x3ec) & 3) == 0) {
    *(uint *)(param_1 + 0x30) = *(uint *)(param_1 + 0x30) & 0xfffffffb;
LAB_0073567c:
    *(int *)(iVar6 + 0x18) = iVar6 + 0x358;
    *(undefined1 **)(iVar6 + 0x360) = &LAB_00734300;
    *(undefined1 **)(iVar6 + 0x368) = &LAB_00734318;
    *(code **)(iVar6 + 0x364) = FUN_00735a10;
    return 1;
  }
  iVar5 = *(int *)(param_1 + 0x238);
  FUN_00735340(param_1,0,0);
  iVar2 = FUN_00734e38(iVar5,*(undefined4 *)(iVar5 + 0x3e4),0);
  if ((iVar2 != 0) && (iVar2 = FUN_007354c8(iVar5,1), iVar2 != 0)) {
    uVar4 = *(uint *)(iVar5 + 0x3ec);
    if ((uVar4 & 1) != 0) {
      if (*(int *)(iVar5 + 0x48) != 0) {
        *(undefined4 *)(*(int *)(iVar5 + 0x48) + 0x80) = 0;
      }
      if ((*(short *)(iVar5 + 0x38c) == 6) && (*(int *)(iVar5 + 0x4c) != 0)) {
        *(undefined4 *)(*(int *)(iVar5 + 0x4c) + 0x80) = 0;
      }
      uVar4 = *(uint *)(iVar5 + 0x3ec);
    }
    if ((uVar4 & 2) != 0) {
      if (*(int *)(iVar5 + 0x58) != 0) {
        *(undefined4 *)(*(int *)(iVar5 + 0x58) + 0x114) = 0;
      }
      if (*(int *)(iVar5 + 0x68) != 0) {
        *(undefined4 *)(*(int *)(iVar5 + 0x68) + 0x114) = 0;
      }
      if (*(short *)(iVar5 + 0x38c) == 6) {
        if (*(int *)(iVar5 + 0x5c) != 0) {
          *(undefined4 *)(*(int *)(iVar5 + 0x5c) + 0x114) = 0;
        }
        if (*(int *)(iVar5 + 0x6c) != 0) {
          *(undefined4 *)(*(int *)(iVar5 + 0x6c) + 0x114) = 0;
        }
      }
    }
    if (*(int *)(iVar5 + 0x3dc) != 0) {
      _TIFFfree();
    }
    *(undefined4 *)(iVar5 + 0x3e0) = 1000;
    pvVar3 = _TIFFmalloc(1000);
    *(void **)(iVar5 + 0x3dc) = pvVar3;
    if (pvVar3 == (void *)0x0) {
      *(undefined4 *)(iVar5 + 0x3e0) = 0;
      TIFFErrorExt(*(undefined4 *)(*(int *)(iVar5 + 0x388) + 0x264),"TIFFjpeg_tables_dest",
                   "No space for JPEGTables");
      return 0;
    }
    *(int *)(iVar5 + 0x18) = iVar5 + 0x358;
    *(undefined1 **)(iVar5 + 0x360) = &LAB_00734338;
    *(undefined1 **)(iVar5 + 0x364) = &LAB_00735500;
    *(undefined1 **)(iVar5 + 0x368) = &LAB_0073434c;
    iVar2 = FUN_00735570(iVar5);
    if (iVar2 != 0) {
      *(uint *)(param_1 + 0x30) = *(uint *)(param_1 + 0x30) | 4;
      *(uint *)(param_1 + 0xc) = *(uint *)(param_1 + 0xc) | 8;
      goto LAB_0073567c;
    }
  }
  return 0;
}

// ---- FUN_00735a10  @ 0x735a10
undefined4 FUN_00735a10(int param_1)

{
  undefined4 uVar1;
  int iVar2;
  
  iVar2 = *(int *)(param_1 + 0x388);
  *(undefined4 *)(iVar2 + 0x250) = *(undefined4 *)(iVar2 + 0x248);
  TIFFFlushData1(iVar2);
  uVar1 = *(undefined4 *)(iVar2 + 0x244);
  *(undefined4 *)(param_1 + 0x35c) = *(undefined4 *)(iVar2 + 0x248);
  *(undefined4 *)(param_1 + 0x358) = uVar1;
  return 1;
}

// ---- FUN_00735a44  @ 0x735a44
undefined4 FUN_00735a44(int param_1,undefined4 param_2,undefined4 param_3)

{
  int iVar1;
  undefined4 uVar2;
  
  iVar1 = setjmp((__jmp_buf_tag *)(param_1 + 600));
  if (iVar1 == 0) {
    uVar2 = jpeg_read_scanlines(param_1,param_2,param_3);
  }
  else {
    uVar2 = 0xffffffff;
  }
  return uVar2;
}

// ---- FUN_00735a7c  @ 0x735a7c
undefined4 FUN_00735a7c(int param_1)

{
  int iVar1;
  undefined4 uVar2;
  
  iVar1 = setjmp((__jmp_buf_tag *)(param_1 + 600));
  if (iVar1 == 0) {
    uVar2 = jpeg_finish_decompress(param_1);
  }
  else {
    uVar2 = 0xffffffff;
  }
  return uVar2;
}

// ---- FUN_00735aac  @ 0x735aac
bool FUN_00735aac(undefined4 *param_1,byte *param_2,undefined4 param_3)

{
  uint uVar1;
  int iVar2;
  int iVar3;
  int extraout_r1;
  byte *pbVar4;
  int iVar5;
  int iVar6;
  undefined4 uVar7;
  bool bVar8;
  byte *local_28;
  void *local_24;
  
  iVar6 = param_1[0x8e];
  uVar7 = *(undefined4 *)(iVar6 + 0x394);
  iVar2 = __divsi3(param_3,uVar7);
  __aeabi_idivmod(param_3,uVar7);
  if (extraout_r1 != 0) {
    TIFFWarningExt(param_1[0x99],*param_1,"fractional scanline not read");
  }
  if (*(int *)(iVar6 + 0x20) <= iVar2) {
    iVar2 = *(int *)(iVar6 + 0x20);
  }
  if (iVar2 == 0) {
LAB_00735bf8:
    if (*(uint *)(iVar6 + 0x8c) < *(uint *)(iVar6 + 0x74)) {
      bVar8 = true;
    }
    else {
      iVar2 = FUN_00735a7c(iVar6);
      bVar8 = iVar2 != 0;
    }
  }
  else {
    local_24 = (void *)0x0;
    if (*(int *)(iVar6 + 0xd4) == 0xc) {
      local_24 = _TIFFmalloc(*(int *)(iVar6 + 0x24) * *(int *)(iVar6 + 0x70) * 2);
    }
    if (local_24 == (void *)0x0) goto LAB_00735b7c;
    while (iVar3 = FUN_00735a44(iVar6,&local_24,1), iVar3 == 1) {
      if (*(int *)(iVar6 + 0xd4) != 0xc) {
        if ((*(int *)(iVar6 + 0xd4) != 8) ||
           (iVar3 = *(int *)(iVar6 + 0x70) * *(int *)(iVar6 + 0x24), iVar3 < 1)) goto LAB_00735b50;
        iVar5 = 0;
        do {
          param_2[iVar5] = *(byte *)((int)local_24 + iVar5);
          iVar5 = iVar5 + 1;
        } while (iVar3 - iVar5 != 0);
        iVar2 = iVar2 + -1;
        param_1[0x72] = param_1[0x72] + 1;
        iVar3 = *(int *)(iVar6 + 0x394);
        if (0 < iVar2) goto LAB_00735b70;
LAB_00735bec:
        if (local_24 != (void *)0x0) {
          _TIFFfree();
        }
        goto LAB_00735bf8;
      }
      uVar1 = (uint)(*(int *)(iVar6 + 0x70) * *(int *)(iVar6 + 0x24)) >> 1;
      if (uVar1 != 0) {
        pbVar4 = param_2;
        iVar3 = 0;
        do {
          *pbVar4 = *(byte *)((int)local_24 + iVar3) >> 4;
          iVar5 = iVar3 + 2;
          pbVar4[1] = *(char *)((int)local_24 + iVar3) << 4;
          pbVar4[2] = *(byte *)((int)local_24 + iVar3 + 1);
          pbVar4 = pbVar4 + 3;
          iVar3 = iVar5;
        } while (iVar5 != uVar1 << 1);
      }
LAB_00735b50:
      while( true ) {
        iVar2 = iVar2 + -1;
        param_1[0x72] = param_1[0x72] + 1;
        iVar3 = *(int *)(iVar6 + 0x394);
        if (iVar2 < 1) goto LAB_00735bec;
LAB_00735b70:
        param_2 = param_2 + iVar3;
        if (local_24 != (void *)0x0) break;
LAB_00735b7c:
        local_28 = param_2;
        iVar3 = FUN_00735a44(iVar6,&local_28,1);
        if (iVar3 != 1) goto LAB_00735b98;
      }
    }
LAB_00735b98:
    bVar8 = false;
  }
  return bVar8;
}

// ---- FUN_00735cbc  @ 0x735cbc
undefined4 FUN_00735cbc(int param_1,undefined4 param_2)

{
  int iVar1;
  undefined4 uVar2;
  
  iVar1 = setjmp((__jmp_buf_tag *)(param_1 + 600));
  if (iVar1 == 0) {
    uVar2 = jpeg_read_header(param_1,param_2);
  }
  else {
    uVar2 = 0xffffffff;
  }
  return uVar2;
}

// ---- FUN_00735cf0  @ 0x735cf0
undefined4 FUN_00735cf0(int param_1)

{
  short sVar1;
  int iVar2;
  undefined2 uVar3;
  int iVar4;
  
  iVar4 = *(int *)(param_1 + 0x238);
  FUN_00735340(param_1,0,1);
  if ((*(uint *)(param_1 + 0x30) & 4) != 0) {
    *(undefined1 **)(iVar4 + 0x378) = &LAB_00734378;
    *(undefined **)(iVar4 + 0x37c) = &DAT_007343b8;
    *(undefined4 *)(iVar4 + 0x380) = 0x70aa9d;
    *(undefined **)(iVar4 + 900) = &DAT_007343ec;
    *(undefined1 **)(iVar4 + 0x374) = &LAB_007343f0;
    *(int *)(iVar4 + 0x18) = iVar4 + 0x36c;
    *(undefined4 *)(iVar4 + 0x370) = 0;
    *(undefined4 *)(iVar4 + 0x36c) = 0;
    iVar2 = FUN_00735cbc(iVar4,0);
    if (iVar2 != 2) {
      TIFFErrorExt(*(undefined4 *)(param_1 + 0x264),"JPEGSetupDecode","Bogus JPEGTables field");
      return 0;
    }
  }
  sVar1 = *(short *)(param_1 + 0x5a);
  *(short *)(iVar4 + 0x38c) = sVar1;
  if (sVar1 == 6) {
    *(undefined2 *)(iVar4 + 0x38e) = *(undefined2 *)(param_1 + 0xcc);
    uVar3 = *(undefined2 *)(param_1 + 0xce);
  }
  else {
    uVar3 = 1;
    *(undefined2 *)(iVar4 + 0x38e) = 1;
  }
  *(int *)(iVar4 + 0x18) = iVar4 + 0x36c;
  *(undefined4 *)(iVar4 + 0x36c) = 0;
  *(undefined2 *)(iVar4 + 0x390) = uVar3;
  *(undefined1 **)(iVar4 + 0x374) = &LAB_00734360;
  *(undefined1 **)(iVar4 + 0x378) = &LAB_00734378;
  *(code **)(param_1 + 0x27c) = _TIFFNoPostDecode;
  *(undefined **)(iVar4 + 0x37c) = &DAT_007343b8;
  *(undefined4 *)(iVar4 + 0x380) = 0x70aa9d;
  *(undefined **)(iVar4 + 900) = &DAT_007343ec;
  *(undefined4 *)(iVar4 + 0x370) = 0;
  return 1;
}

// ---- FUN_00735e6c  @ 0x735e6c
bool FUN_00735e6c(int param_1)

{
  int iVar1;
  
  iVar1 = setjmp((__jmp_buf_tag *)(param_1 + 600));
  if (iVar1 == 0) {
    jpeg_start_decompress(param_1);
  }
  return iVar1 == 0;
}

// ---- FUN_00735ea0  @ 0x735ea0
undefined4 FUN_00735ea0(int param_1,int param_2)

{
  undefined2 uVar1;
  int iVar2;
  undefined4 uVar3;
  int iVar4;
  int iVar5;
  bool bVar6;
  uint uVar7;
  uint uVar8;
  uint uVar9;
  uint uVar10;
  
  iVar5 = *(int *)(param_1 + 0x238);
  iVar2 = FUN_00735230(iVar5);
  if (iVar2 == 0) {
    return 0;
  }
  iVar2 = FUN_00735cbc(iVar5,1);
  if (iVar2 != 1) {
    return 0;
  }
  uVar7 = *(uint *)(param_1 + 0x38);
  if ((*(uint *)(param_1 + 0xc) & 0x400) == 0) {
    uVar8 = *(int *)(param_1 + 0x3c) - *(int *)(param_1 + 0x1c8);
    if (*(uint *)(param_1 + 100) <= uVar8) {
      uVar8 = *(uint *)(param_1 + 100);
    }
    uVar3 = TIFFOldScanlineSize(param_1);
    *(undefined4 *)(iVar5 + 0x394) = uVar3;
  }
  else {
    uVar7 = *(uint *)(param_1 + 0x44);
    uVar8 = *(uint *)(param_1 + 0x48);
    uVar3 = TIFFTileRowSize(param_1);
    *(undefined4 *)(iVar5 + 0x394) = uVar3;
  }
  if (*(short *)(param_1 + 0x8a) == 2 && param_2 != 0) {
    uVar7 = __udivsi3((*(ushort *)(iVar5 + 0x38e) - 1) + uVar7);
    uVar8 = __udivsi3((*(ushort *)(iVar5 + 0x390) - 1) + uVar8);
  }
  uVar9 = *(uint *)(iVar5 + 0x1c);
  if (uVar9 < uVar7) {
    uVar10 = *(uint *)(iVar5 + 0x20);
LAB_00735f80:
    TIFFWarningExt(*(undefined4 *)(param_1 + 0x264),"JPEGPreDecode",
                   "Improper JPEG strip/tile size, expected %dx%d, got %dx%d",uVar7,uVar8,uVar9,
                   uVar10);
    uVar9 = *(uint *)(iVar5 + 0x1c);
    uVar10 = *(uint *)(iVar5 + 0x20);
  }
  else {
    uVar10 = *(uint *)(iVar5 + 0x20);
    if (uVar10 < uVar8) goto LAB_00735f80;
  }
  if ((uVar7 < uVar9) || (uVar8 < uVar10)) {
    TIFFErrorExt(*(undefined4 *)(param_1 + 0x264),"JPEGPreDecode",
                 "JPEG strip/tile size exceeds expected dimensions, expected %dx%d, got %dx%d",uVar7
                 ,uVar8,uVar9,uVar10);
    return 0;
  }
  uVar7 = *(uint *)(iVar5 + 0x24);
  if (*(short *)(param_1 + 0x8a) == 1) {
    uVar8 = (uint)*(ushort *)(param_1 + 0x62);
  }
  else {
    uVar8 = 1;
  }
  if (uVar7 != uVar8) {
    TIFFErrorExt(*(undefined4 *)(param_1 + 0x264),"JPEGPreDecode","Improper JPEG component count");
    return 0;
  }
  if (*(uint *)(iVar5 + 0xd4) != (uint)*(ushort *)(param_1 + 0x54)) {
    TIFFErrorExt(*(undefined4 *)(param_1 + 0x264),"JPEGPreDecode","Improper JPEG data precision");
    return 0;
  }
  if (*(short *)(param_1 + 0x8a) == 1) {
    iVar2 = *(int *)(iVar5 + 0xd8);
    uVar8 = (uint)*(ushort *)(iVar5 + 0x38e);
    if (*(uint *)(iVar2 + 8) == uVar8) {
      uVar9 = *(uint *)(iVar2 + 0xc);
      uVar10 = (uint)*(ushort *)(iVar5 + 0x390);
      if (uVar9 != uVar10) goto LAB_007360e0;
    }
    else {
      uVar9 = *(uint *)(iVar2 + 0xc);
      uVar10 = (uint)*(ushort *)(iVar5 + 0x390);
LAB_007360e0:
      TIFFWarningExt(*(undefined4 *)(param_1 + 0x264),"JPEGPreDecode",
                     "Improper JPEG sampling factors %d,%d\nApparently should be %d,%d.",
                     *(uint *)(iVar2 + 8),uVar9,uVar8,uVar10);
      if (((int)(uint)*(ushort *)(iVar5 + 0x38e) < *(int *)(*(int *)(iVar5 + 0xd8) + 8)) ||
         ((int)(uint)*(ushort *)(iVar5 + 0x390) < *(int *)(*(int *)(iVar5 + 0xd8) + 0xc))) {
        TIFFErrorExt(*(undefined4 *)(param_1 + 0x264),"JPEGPreDecode",
                     "Cannot honour JPEG sampling factors that exceed those specified.");
        return 0;
      }
      iVar2 = TIFFFindFieldInfo(param_1,0x847e,0);
      if (iVar2 == 0) {
        TIFFWarningExt(*(undefined4 *)(param_1 + 0x264),"JPEGPreDecode",
                       "Decompressor will try reading with sampling %d,%d.",
                       *(undefined4 *)(*(int *)(iVar5 + 0xd8) + 8),
                       *(undefined4 *)(*(int *)(iVar5 + 0xd8) + 0xc),uVar8,uVar10);
        uVar7 = *(uint *)(iVar5 + 0x24);
        uVar1 = *(undefined2 *)(*(int *)(iVar5 + 0xd8) + 8);
        *(undefined2 *)(iVar5 + 0x390) = *(undefined2 *)(*(int *)(iVar5 + 0xd8) + 0xc);
        *(undefined2 *)(iVar5 + 0x38e) = uVar1;
      }
      else {
        uVar7 = *(uint *)(iVar5 + 0x24);
      }
    }
    if (1 < (int)uVar7) {
      iVar2 = *(int *)(iVar5 + 0xd8);
      if (*(int *)(iVar2 + 0x5c) == 1) {
        uVar8 = 1;
        iVar4 = *(int *)(iVar2 + 0x60);
        while (iVar4 == 1) {
          uVar8 = uVar8 + 1;
          if (uVar8 == uVar7) goto LAB_00736238;
          if (*(int *)(iVar2 + 0xb0) != 1) break;
          iVar4 = *(int *)(iVar2 + 0xb4);
          iVar2 = iVar2 + 0x54;
        }
      }
      TIFFErrorExt(*(undefined4 *)(param_1 + 0x264),"JPEGPreDecode","Improper JPEG sampling factors"
                  );
      return 0;
    }
LAB_00736238:
    if (((*(short *)(param_1 + 0x8a) != 1) || (*(short *)(iVar5 + 0x38c) != 6)) ||
       (*(int *)(iVar5 + 1000) != 1)) goto LAB_00736154;
    *(undefined4 *)(iVar5 + 0x28) = 3;
    *(undefined4 *)(iVar5 + 0x2c) = 2;
  }
  else {
    if ((*(int *)(*(int *)(iVar5 + 0xd8) + 8) != 1) || (*(int *)(*(int *)(iVar5 + 0xd8) + 0xc) != 1)
       ) {
      TIFFErrorExt(*(undefined4 *)(param_1 + 0x264),"JPEGPreDecode","Improper JPEG sampling factors"
                  );
      return 0;
    }
LAB_00736154:
    *(undefined4 *)(iVar5 + 0x2c) = 0;
    *(undefined4 *)(iVar5 + 0x28) = 0;
    if ((*(short *)(param_1 + 0x8a) == 1) &&
       ((*(short *)(iVar5 + 0x38e) != 1 || (*(short *)(iVar5 + 0x390) != 1)))) {
      bVar6 = true;
      *(undefined4 *)(iVar5 + 0x44) = 1;
      *(code **)(param_1 + 0x21c) = FUN_007363c0;
      *(code **)(param_1 + 0x20c) = FUN_007363c0;
      *(code **)(param_1 + 0x214) = FUN_007363c0;
      goto LAB_0073618c;
    }
  }
  bVar6 = false;
  *(undefined4 *)(iVar5 + 0x44) = 0;
  *(code **)(param_1 + 0x21c) = FUN_00735aac;
  *(code **)(param_1 + 0x20c) = FUN_00735aac;
  *(code **)(param_1 + 0x214) = FUN_00735aac;
LAB_0073618c:
  iVar2 = FUN_00735e6c(iVar5);
  if (iVar2 != 0) {
    if (!bVar6) {
      return 1;
    }
    iVar2 = FUN_00734748(param_1,*(undefined4 *)(iVar5 + 0xd8),*(undefined4 *)(iVar5 + 0x24));
    if (iVar2 != 0) {
      *(undefined4 *)(iVar5 + 0x3c0) = 8;
      return 1;
    }
  }
  return 0;
}

// ---- FUN_00736388  @ 0x736388
undefined4 FUN_00736388(int param_1,undefined4 param_2,undefined4 param_3)

{
  int iVar1;
  undefined4 uVar2;
  
  iVar1 = setjmp((__jmp_buf_tag *)(param_1 + 600));
  if (iVar1 == 0) {
    uVar2 = jpeg_read_raw_data(param_1,param_2,param_3);
  }
  else {
    uVar2 = 0xffffffff;
  }
  return uVar2;
}

// ---- FUN_007363c0  @ 0x7363c0
undefined4 FUN_007363c0(int param_1,int param_2)

{
  undefined1 *puVar1;
  undefined4 uVar2;
  undefined1 *puVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  int iVar7;
  int iVar8;
  int iVar9;
  int iVar10;
  undefined1 *puVar11;
  int iVar12;
  int iVar13;
  int iVar14;
  int local_44;
  int local_40;
  int local_3c;
  int local_38;
  int local_30;
  
  iVar8 = *(int *)(param_1 + 0x238);
  local_3c = *(int *)(iVar8 + 0x20);
  if (local_3c != 0) {
    iVar6 = *(int *)(iVar8 + 0x3c4);
    iVar7 = *(int *)(*(int *)(iVar8 + 0xd8) + 0x7c);
    local_30 = param_2;
    do {
      iVar5 = *(int *)(iVar8 + 0x3c0);
      if (7 < iVar5) {
        iVar5 = *(int *)(iVar8 + 0x138) * 8;
        iVar4 = FUN_00736388(iVar8,iVar8 + 0x398,iVar5);
        if (iVar4 != iVar5) {
          return 0;
        }
        iVar5 = 0;
        *(undefined4 *)(iVar8 + 0x3c0) = 0;
      }
      iVar4 = *(int *)(iVar8 + 0x24);
      local_44 = *(int *)(iVar8 + 0xd8);
      if (0 < iVar4) {
        local_40 = 0;
        local_38 = 0;
        iVar12 = iVar8;
        do {
          HintPreloadData(local_44 + 0x1ac);
          iVar13 = *(int *)(local_44 + 0xc);
          iVar14 = *(int *)(local_44 + 8);
          if (0 < iVar13) {
            puVar11 = (undefined1 *)(local_30 + local_40);
            iVar4 = 0;
            do {
              iVar10 = iVar4;
              iVar4 = *(int *)(*(int *)(iVar12 + 0x398) + (iVar5 * iVar13 + iVar10) * 4);
              if (iVar14 == 1) {
                if (iVar7 != 0) {
                  iVar5 = 0;
                  puVar3 = puVar11;
                  do {
                    puVar1 = (undefined1 *)(iVar4 + iVar5);
                    iVar5 = iVar5 + 1;
                    *puVar3 = *puVar1;
                    puVar3 = puVar3 + iVar6;
                  } while (iVar7 != iVar5);
                  goto LAB_007364cc;
                }
              }
              else {
                puVar3 = puVar11;
                iVar9 = iVar7;
                if (iVar7 != 0) {
                  while( true ) {
                    if (0 < iVar14) {
                      iVar5 = 0;
                      do {
                        puVar3[iVar5] = *(undefined1 *)(iVar4 + iVar5);
                        iVar5 = iVar5 + 1;
                      } while (iVar5 != iVar14);
                      iVar4 = iVar4 + iVar14;
                    }
                    if (iVar9 + -1 == 0) break;
                    puVar3 = puVar3 + iVar6;
                    iVar9 = iVar9 + -1;
                  }
LAB_007364cc:
                  iVar5 = *(int *)(iVar8 + 0x3c0);
                }
              }
              puVar11 = puVar11 + iVar14;
              iVar4 = iVar10 + 1;
            } while (iVar10 + 1 != iVar13);
            iVar4 = *(int *)(iVar8 + 0x24);
            local_40 = local_40 + iVar14 * iVar10 + iVar14;
          }
          iVar12 = iVar12 + 4;
          local_38 = local_38 + 1;
          if (iVar4 <= local_38) break;
          local_44 = local_44 + 0x54;
        } while( true );
      }
      *(int *)(iVar8 + 0x3c0) = iVar5 + 1;
      local_3c = local_3c - (uint)*(ushort *)(iVar8 + 0x390);
      *(uint *)(param_1 + 0x1c8) = *(int *)(param_1 + 0x1c8) + (uint)*(ushort *)(iVar8 + 0x390);
      if (local_3c < 1) break;
      local_30 = local_30 + *(int *)(iVar8 + 0x394);
    } while( true );
  }
  if (*(uint *)(iVar8 + 0x8c) < *(uint *)(iVar8 + 0x74)) {
    uVar2 = 1;
  }
  else {
    iVar8 = FUN_00735a7c(iVar8);
    uVar2 = 0;
    if (iVar8 != 0) {
      uVar2 = 1;
    }
  }
  return uVar2;
}

// ---- FUN_007366b0  @ 0x7366b0
void FUN_007366b0(int param_1)

{
  undefined4 uVar1;
  uint uVar2;
  
  uVar2 = *(uint *)(param_1 + 0xc) & 0xffffbfff;
  *(uint *)(param_1 + 0xc) = uVar2;
  if (((*(short *)(param_1 + 0x8a) == 1) && (*(short *)(param_1 + 0x5a) == 6)) &&
     (*(int *)(*(int *)(param_1 + 0x238) + 1000) == 1)) {
    uVar2 = uVar2 | 0x4000;
    *(uint *)(param_1 + 0xc) = uVar2;
  }
  if ((uVar2 & 0x400) == 0) {
    uVar1 = 0xffffffff;
  }
  else {
    uVar1 = TIFFTileSize(param_1);
  }
  *(undefined4 *)(param_1 + 0x1ec) = uVar1;
  return;
}

// ---- FUN_00736e78  @ 0x736e78
undefined4 FUN_00736e78(int param_1,undefined4 param_2,undefined4 param_3)

{
  int iVar1;
  int iVar2;
  
  iVar2 = *(int *)(param_1 + 0x238);
  iVar1 = (**(code **)(iVar2 + 0x1c))();
  if (iVar1 == 0) {
    return 0;
  }
  (**(code **)(iVar2 + 0x28))(param_1,param_2,param_3);
  return 1;
}

// ---- FUN_00736eb8  @ 0x736eb8
undefined4 FUN_00736eb8(int param_1,int param_2,int param_3)

{
  int iVar1;
  int iVar2;
  
  iVar2 = *(int *)(param_1 + 0x238);
  iVar1 = (**(code **)(iVar2 + 0x24))();
  if (iVar1 == 0) {
    return 0;
  }
  iVar1 = *(int *)(iVar2 + 8);
  if (0 < param_3) {
    param_3 = param_3 - iVar1;
    do {
      param_3 = param_3 - iVar1;
      (**(code **)(iVar2 + 0x28))(param_1,param_2,iVar1);
      param_2 = param_2 + iVar1;
    } while (0 < param_3 + iVar1);
  }
  return 1;
}

// ---- FUN_00737300  @ 0x737300
void FUN_00737300(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  
  iVar1 = *(int *)(param_1 + 0x238);
  (**(code **)(iVar1 + 0x18))();
  (**(code **)(iVar1 + 0xc))(param_1,param_2,param_3,param_4);
  return;
}

// ---- FUN_007374e4  @ 0x7374e4
undefined4 FUN_007374e4(int param_1)

{
  short sVar1;
  int iVar2;
  undefined4 uVar3;
  uint uVar4;
  int *piVar5;
  
  piVar5 = *(int **)(param_1 + 0x238);
  iVar2 = *piVar5;
  if (iVar2 == 2) {
    sVar1 = *(short *)(param_1 + 0x54);
    if ((sVar1 == 0x10 || sVar1 == 8) || (sVar1 == 0x20)) goto LAB_00737538;
    TIFFErrorExt(*(undefined4 *)(param_1 + 0x264),"PredictorSetup",
                 "Horizontal differencing \"Predictor\" not supported with %d-bit samples");
    uVar3 = 0;
  }
  else {
    if (iVar2 == 3) {
      if (*(short *)(param_1 + 0x56) != 3) {
        TIFFErrorExt(*(undefined4 *)(param_1 + 0x264),"PredictorSetup",
                     "Floating point \"Predictor\" not supported with %d data format");
        return 0;
      }
LAB_00737538:
      if (*(short *)(param_1 + 0x8a) == 1) {
        uVar4 = (uint)*(ushort *)(param_1 + 0x62);
      }
      else {
        uVar4 = 1;
      }
      piVar5[1] = uVar4;
      if ((*(uint *)(param_1 + 0xc) & 0x400) != 0) {
        iVar2 = TIFFTileRowSize();
        piVar5[2] = iVar2;
        return 1;
      }
      iVar2 = TIFFScanlineSize();
      piVar5[2] = iVar2;
      return 1;
    }
    uVar3 = 1;
    if (iVar2 != 1) {
      TIFFErrorExt(*(undefined4 *)(param_1 + 0x264),"PredictorSetup",
                   "\"Predictor\" value %d not supported");
      uVar3 = 0;
    }
  }
  return uVar3;
}

// ---- FUN_007375f4  @ 0x7375f4
undefined4 FUN_007375f4(int param_1)

{
  short sVar1;
  int iVar2;
  code *pcVar3;
  int *piVar4;
  
  piVar4 = *(int **)(param_1 + 0x238);
  iVar2 = (*(code *)piVar4[0xf])();
  if ((iVar2 == 0) || (iVar2 = FUN_007374e4(param_1), iVar2 == 0)) {
    return 0;
  }
  if (*piVar4 == 2) {
    sVar1 = *(short *)(param_1 + 0x54);
    if (sVar1 == 0x10) {
      piVar4[6] = (int)&LAB_00737100;
    }
    else if (sVar1 == 0x20) {
      piVar4[6] = (int)&LAB_007371fc;
    }
    else if (sVar1 == 8) {
      piVar4[6] = (int)&LAB_00736f20;
    }
    if (*(code **)(param_1 + 0x210) != FUN_00737300) {
      piVar4[3] = (int)*(code **)(param_1 + 0x210);
      *(code **)(param_1 + 0x210) = FUN_00737300;
      piVar4[4] = *(int *)(param_1 + 0x218);
      *(code **)(param_1 + 0x218) = FUN_00737c7c;
      piVar4[5] = *(int *)(param_1 + 0x220);
      *(code **)(param_1 + 0x220) = FUN_00737c7c;
      return 1;
    }
  }
  else if (*piVar4 == 3) {
    pcVar3 = *(code **)(param_1 + 0x210);
    piVar4[6] = (int)&LAB_00737924;
    if (pcVar3 != FUN_00737300) {
      piVar4[3] = (int)pcVar3;
      *(code **)(param_1 + 0x210) = FUN_00737300;
      piVar4[4] = *(int *)(param_1 + 0x218);
      *(code **)(param_1 + 0x218) = FUN_00737c7c;
      piVar4[5] = *(int *)(param_1 + 0x220);
      *(code **)(param_1 + 0x220) = FUN_00737c7c;
      return 1;
    }
  }
  return 1;
}

// ---- FUN_0073773c  @ 0x73773c
undefined4 FUN_0073773c(int param_1)

{
  short sVar1;
  int iVar2;
  code *pcVar3;
  int *piVar4;
  
  piVar4 = *(int **)(param_1 + 0x238);
  iVar2 = (*(code *)piVar4[0xe])();
  if ((iVar2 == 0) || (iVar2 = FUN_007374e4(param_1), iVar2 == 0)) {
    return 0;
  }
  if (*piVar4 == 2) {
    sVar1 = *(short *)(param_1 + 0x54);
    if (sVar1 == 0x10) {
      piVar4[10] = (int)&LAB_00736c9c;
    }
    else if (sVar1 == 0x20) {
      piVar4[10] = (int)&LAB_00736d84;
    }
    else if (sVar1 == 8) {
      piVar4[10] = (int)&LAB_00736ae8;
    }
    if (*(code **)(param_1 + 0x20c) != FUN_00736e78) {
      piVar4[7] = (int)*(code **)(param_1 + 0x20c);
      *(code **)(param_1 + 0x20c) = FUN_00736e78;
      piVar4[8] = *(int *)(param_1 + 0x214);
      *(code **)(param_1 + 0x214) = FUN_00736eb8;
      piVar4[9] = *(int *)(param_1 + 0x21c);
      *(code **)(param_1 + 0x21c) = FUN_00736eb8;
    }
    if ((*(uint *)(param_1 + 0xc) & 0x80) != 0) {
      if ((undefined1 *)piVar4[10] == &LAB_00736c9c) {
        piVar4[10] = (int)&LAB_00737e54;
        *(code **)(param_1 + 0x27c) = _TIFFNoPostDecode;
        return 1;
      }
      if ((undefined1 *)piVar4[10] == &LAB_00736d84) {
        piVar4[10] = (int)&LAB_00737d54;
        *(code **)(param_1 + 0x27c) = _TIFFNoPostDecode;
        return 1;
      }
    }
  }
  else if (*piVar4 == 3) {
    pcVar3 = *(code **)(param_1 + 0x20c);
    piVar4[10] = (int)&LAB_00737acc;
    if (pcVar3 != FUN_00736e78) {
      piVar4[7] = (int)pcVar3;
      *(code **)(param_1 + 0x20c) = FUN_00736e78;
      piVar4[8] = *(int *)(param_1 + 0x214);
      *(code **)(param_1 + 0x214) = FUN_00736eb8;
      piVar4[9] = *(int *)(param_1 + 0x21c);
      *(code **)(param_1 + 0x21c) = FUN_00736eb8;
    }
    if ((*(uint *)(param_1 + 0xc) & 0x80) != 0) {
      *(code **)(param_1 + 0x27c) = _TIFFNoPostDecode;
      return 1;
    }
  }
  return 1;
}

// ---- FUN_00737c7c  @ 0x737c7c
undefined4 FUN_00737c7c(int param_1,void *param_2,size_t param_3,undefined4 param_4)

{
  void *__dest;
  undefined4 uVar1;
  int iVar2;
  int iVar3;
  void *pvVar4;
  int iVar5;
  
  iVar2 = *(int *)(param_1 + 0x238);
  __dest = _TIFFmalloc(param_3);
  if (__dest == (void *)0x0) {
    TIFFErrorExt(*(undefined4 *)(param_1 + 0x264),"PredictorEncodeTile",
                 "Out of memory allocating %d byte temp buffer.",param_3);
    uVar1 = 0;
  }
  else {
    memcpy(__dest,param_2,param_3);
    iVar3 = *(int *)(iVar2 + 8);
    if (0 < (int)param_3) {
      iVar5 = param_3 - iVar3;
      pvVar4 = __dest;
      do {
        iVar5 = iVar5 - iVar3;
        (**(code **)(iVar2 + 0x18))(param_1,pvVar4,iVar3);
        pvVar4 = (void *)((int)pvVar4 + iVar3);
      } while (0 < iVar5 + iVar3);
    }
    uVar1 = (**(code **)(iVar2 + 0x14))(param_1,__dest,param_3,param_4);
    _TIFFfree(__dest);
  }
  return uVar1;
}

// ---- FUN_00738050  @ 0x738050
void FUN_00738050(int param_1,uint param_2,ushort *param_3,undefined1 param_4)

{
  int iVar1;
  int iVar2;
  ushort *puVar3;
  ushort uVar4;
  undefined1 *puVar5;
  uint uVar6;
  int iVar7;
  uint uVar8;
  
  iVar1 = 1 << (param_2 & 0xff);
  uVar4 = param_3[1];
  while (uVar4 != 0) {
    uVar6 = (uint)*param_3;
    uVar8 = uVar4 & 0xf;
    iVar2 = 1 << uVar8;
    if ((int)uVar6 < iVar1) {
      puVar5 = (undefined1 *)(param_1 + uVar6 * 8);
      iVar7 = iVar2 + uVar6;
      do {
        iVar7 = iVar7 + iVar2;
        *puVar5 = param_4;
        puVar5[1] = (char)uVar8;
        *(uint *)(puVar5 + 4) = (uint)(uVar4 >> 4);
        puVar5 = puVar5 + iVar2 * 8;
      } while (iVar7 - iVar2 < iVar1);
    }
    puVar3 = param_3 + 3;
    param_3 = param_3 + 2;
    uVar4 = *puVar3;
  }
  return;
}

// ---- FUN_00738680  @ 0x738680
undefined4 FUN_00738680(int param_1,int param_2,undefined4 param_3,uint param_4)

{
  undefined4 uVar1;
  int iVar2;
  uint uVar3;
  int iVar4;
  
  iVar4 = *(int *)(param_1 + 0xb8);
  iVar2 = *(int *)(iVar4 + param_2 * 4);
  if ((iVar2 == 0) || (*(int *)(param_1 + 0x1d4) == 0)) {
    uVar3 = *(uint *)(*(int *)(param_1 + 0xbc) + param_2 * 4);
    if ((uVar3 == 0) || ((iVar2 == 0 || (uVar3 < param_4)))) {
      uVar1 = (**(code **)(param_1 + 0x270))(*(undefined4 *)(param_1 + 0x264),0,2);
      iVar2 = *(int *)(param_1 + 0xb8);
      *(undefined4 *)(iVar4 + param_2 * 4) = uVar1;
      iVar2 = *(int *)(iVar2 + param_2 * 4);
    }
    else {
      iVar2 = (**(code **)(param_1 + 0x270))(*(undefined4 *)(param_1 + 0x264),iVar2,0);
      if (iVar2 != *(int *)(*(int *)(param_1 + 0xb8) + param_2 * 4)) {
        TIFFErrorExt(*(undefined4 *)(param_1 + 0x264),"TIFFAppendToStrip",
                     "Seek error at scanline %lu",*(undefined4 *)(param_1 + 0x1c8));
        return 0;
      }
    }
    *(int *)(param_1 + 0x1d4) = iVar2;
    *(undefined4 *)(*(int *)(param_1 + 0xbc) + param_2 * 4) = 0;
  }
  uVar3 = (**(code **)(param_1 + 0x26c))(*(undefined4 *)(param_1 + 0x264),param_3,param_4);
  if (uVar3 == param_4) {
    *(uint *)(param_1 + 0x1d4) = *(int *)(param_1 + 0x1d4) + param_4;
    *(uint *)(*(int *)(param_1 + 0xbc) + param_2 * 4) =
         *(int *)(*(int *)(param_1 + 0xbc) + param_2 * 4) + param_4;
    return 1;
  }
  TIFFErrorExt(*(undefined4 *)(param_1 + 0x264),"TIFFAppendToStrip","Write error at scanline %lu",
               *(undefined4 *)(param_1 + 0x1c8));
  return 0;
}

// ---- FUN_00738f90  @ 0x738f90
undefined4 FUN_00738f90(undefined4 *param_1,undefined4 param_2)

{
  void *pvVar1;
  void *pvVar2;
  
  pvVar1 = _TIFFrealloc((void *)param_1[0x2e],(param_1[0x2d] + 1) * 4);
  pvVar2 = _TIFFrealloc((void *)param_1[0x2f],(param_1[0x2d] + 1) * 4);
  if (pvVar1 == (void *)0x0 || pvVar2 == (void *)0x0) {
    if (pvVar1 != (void *)0x0) {
      _TIFFfree(pvVar1);
    }
    if (pvVar2 != (void *)0x0) {
      _TIFFfree(pvVar2);
    }
    param_1[0x2d] = 0;
    TIFFErrorExt(param_1[0x99],param_2,"%s: No space to expand strip arrays",*param_1);
    return 0;
  }
  param_1[0x2f] = pvVar2;
  param_1[0x2e] = pvVar1;
  _TIFFmemset((void *)(param_1[0x2d] * 4 + (int)pvVar1),0,4);
  _TIFFmemset((void *)(param_1[0x2d] * 4 + param_1[0x2f]),0,4);
  param_1[0x2d] = param_1[0x2d] + 1;
  return 1;
}

// ---- FUN_0073bfe8  @ 0x73bfe8
void FUN_0073bfe8(int param_1,int param_2)

{
  undefined2 uVar1;
  int iVar2;
  int extraout_r1;
  undefined4 extraout_r2;
  undefined4 uVar3;
  uint uVar4;
  bool bVar5;
  
  uVar4 = *(uint *)(param_1 + 0xc);
  if ((uVar4 & 0x20) == 0) {
    iVar2 = (**(code **)(param_1 + 500))();
    if (iVar2 == 0) {
      return;
    }
    uVar4 = *(uint *)(param_1 + 0xc) | 0x20;
    *(uint *)(param_1 + 0xc) = uVar4;
  }
  *(int *)(param_1 + 0x1d0) = param_2;
  __aeabi_uidivmod(param_2,*(undefined4 *)(param_1 + 0xb0));
  bVar5 = (uVar4 & 0x20000) == 0;
  uVar3 = extraout_r2;
  if (bVar5) {
    uVar3 = *(undefined4 *)(param_1 + 0x244);
  }
  if (bVar5) {
    *(undefined4 *)(param_1 + 0x24c) = uVar3;
  }
  *(int *)(param_1 + 0x1c8) = *(int *)(param_1 + 100) * extraout_r1;
  if (bVar5) {
    *(undefined4 *)(param_1 + 0x250) = *(undefined4 *)(*(int *)(param_1 + 0xbc) + param_2 * 4);
  }
  else {
    *(undefined4 *)(param_1 + 0x250) = 0;
    *(undefined4 *)(param_1 + 0x24c) = 0;
  }
  uVar1 = __udivsi3(param_2,*(undefined4 *)(param_1 + 0xb0));
  (**(code **)(param_1 + 0x1f8))(param_1,uVar1);
  return;
}

// ---- FUN_0073c1b0  @ 0x73c1b0
undefined4 FUN_0073c1b0(undefined4 *param_1,uint param_2)

{
  if (param_1[2] == 1) {
    TIFFErrorExt(param_1[0x99],*param_1,"File not open for reading");
    return 0;
  }
  if ((param_1[3] & 0x7ff) >> 10 != param_2) {
    if (param_2 != 0) {
      TIFFErrorExt(param_1[0x99],*param_1,"Can not read tiles from a stripped image");
      return 0;
    }
    TIFFErrorExt(param_1[0x99],*param_1,"Can not read scanlines from a tiled image");
    return 0;
  }
  return 1;
}

// ---- FUN_0073c234  @ 0x73c234
size_t FUN_0073c234(undefined4 *param_1,int param_2,void *param_3,size_t param_4,undefined4 param_5)

{
  size_t sVar1;
  int iVar2;
  size_t sVar3;
  
  sVar3 = param_4;
  if ((param_1[3] & 0x800) == 0) {
    iVar2 = (*(code *)param_1[0x9c])(param_1[0x99],*(undefined4 *)(param_1[0x2e] + param_2 * 4));
    if (iVar2 == *(int *)(param_1[0x2e] + param_2 * 4)) {
      sVar1 = (*(code *)param_1[0x9a])(param_1[0x99],param_3,param_4);
      if (param_4 != sVar1) {
        sVar3 = 0xffffffff;
        TIFFErrorExt(param_1[0x99],param_5,
                     "%s: Read error at row %ld, col %ld; got %lu bytes, expected %lu",*param_1,
                     param_1[0x72],param_1[0x79],sVar1,param_4);
      }
    }
    else {
      sVar3 = 0xffffffff;
      TIFFErrorExt(param_1[0x99],param_5,"%s: Seek error at row %ld, col %ld, tile %ld",*param_1,
                   param_1[0x72],param_1[0x79],param_2);
    }
  }
  else {
    iVar2 = *(int *)(param_1[0x2e] + param_2 * 4);
    if ((uint)param_1[0x96] < param_4 + iVar2) {
      TIFFErrorExt(param_1[0x99],param_5,
                   "%s: Read error at row %ld, col %ld, tile %ld; got %lu bytes, expected %lu",
                   *param_1,param_1[0x72],param_1[0x79],param_2,param_1[0x96] - iVar2,param_4);
      sVar3 = 0xffffffff;
    }
    else {
      _TIFFmemcpy(param_3,(void *)(param_1[0x95] + iVar2),param_4);
    }
  }
  return sVar3;
}

// ---- FUN_0073c7b4  @ 0x73c7b4
size_t FUN_0073c7b4(undefined4 *param_1,int param_2,void *param_3,size_t param_4,undefined4 param_5)

{
  size_t sVar1;
  int iVar2;
  size_t sVar3;
  
  sVar3 = param_4;
  if ((param_1[3] & 0x800) == 0) {
    iVar2 = (*(code *)param_1[0x9c])(param_1[0x99],*(undefined4 *)(param_1[0x2e] + param_2 * 4));
    if (iVar2 == *(int *)(param_1[0x2e] + param_2 * 4)) {
      sVar1 = (*(code *)param_1[0x9a])(param_1[0x99],param_3,param_4);
      if (param_4 != sVar1) {
        sVar3 = 0xffffffff;
        TIFFErrorExt(param_1[0x99],param_5,
                     "%s: Read error at scanline %lu; got %lu bytes, expected %lu",*param_1,
                     param_1[0x72],sVar1,param_4);
      }
    }
    else {
      sVar3 = 0xffffffff;
      TIFFErrorExt(param_1[0x99],param_5,"%s: Seek error at scanline %lu, strip %lu",*param_1,
                   param_1[0x72],param_2);
    }
  }
  else {
    iVar2 = *(int *)(param_1[0x2e] + param_2 * 4);
    if ((uint)param_1[0x96] < param_4 + iVar2) {
      TIFFErrorExt(param_1[0x99],param_5,
                   "%s: Read error at scanline %lu, strip %lu; got %lu bytes, expected %lu",*param_1
                   ,param_1[0x72],param_2,param_1[0x96] - iVar2,param_4);
      sVar3 = 0xffffffff;
    }
    else {
      _TIFFmemcpy(param_3,(void *)(param_1[0x95] + iVar2),param_4);
    }
  }
  return sVar3;
}

// ---- FUN_0073d070  @ 0x73d070
undefined4 FUN_0073d070(undefined4 *param_1,byte *param_2,int param_3)

{
  int iVar1;
  byte bVar2;
  uint uVar3;
  byte *pbVar4;
  int iVar5;
  uint uVar6;
  uint uVar7;
  char *pcVar8;
  byte *pbVar9;
  byte *pbVar10;
  byte *pbVar11;
  uint uVar12;
  uint uVar13;
  bool bVar14;
  byte *local_40;
  int local_2c;
  
  if (param_3 < 1) {
    return 1;
  }
  pbVar11 = (byte *)param_1[0x93];
  iVar5 = param_1[0x94];
  local_40 = param_2;
  local_2c = param_3;
LAB_0073d0c4:
  uVar6 = 0;
  uVar13 = param_1[0xe];
  uVar12 = 0;
  pbVar10 = local_40;
LAB_0073d0d8:
  do {
    bVar14 = uVar13 == uVar6;
    iVar1 = uVar13 - uVar6;
    if ((int)uVar13 > (int)uVar6) {
      bVar14 = iVar5 == 0;
      iVar1 = iVar5;
    }
    pbVar9 = pbVar11;
    if (bVar14 || iVar1 < 0 != ((int)uVar13 <= (int)uVar6 && SBORROW4(uVar13,uVar6))) break;
    while( true ) {
      pbVar11 = pbVar9 + 1;
      uVar7 = (uint)*pbVar9;
      iVar5 = iVar5 + -1;
      uVar3 = uVar7 & 0xc0;
      if (uVar3 == 0x40) break;
      if (0x40 < uVar3) {
        if (uVar3 != 0x80) {
          if (uVar3 != 0xc0) goto LAB_0073d0d8;
          goto joined_r0x0073d2a8;
        }
        uVar3 = (uVar7 & 0x3f) >> 3;
        if (uVar3 != 4) {
          bVar14 = (uVar6 & 1) != 0;
          uVar6 = uVar6 + 1;
          bVar2 = (byte)*(int *)(&DAT_00856004 + uVar3 * 4);
          if (bVar14) {
            bVar2 = *pbVar10;
          }
          uVar12 = uVar12 + *(int *)(&DAT_00856004 + uVar3 * 4) & 0xf;
          if (bVar14) {
            *pbVar10 = (byte)uVar12 | bVar2;
            pbVar10 = pbVar10 + 1;
          }
          else {
            *pbVar10 = (byte)(uVar12 << 4);
          }
        }
        if ((uVar7 & 7) == 4) goto LAB_0073d0d8;
        uVar3 = uVar6 & 1;
        uVar6 = uVar6 + 1;
        uVar12 = uVar12 + *(int *)(&DAT_00856004 + (uVar7 & 7) * 4) & 0xf;
        pbVar9 = pbVar10;
        if (uVar3 != 0) goto LAB_0073d1f8;
        *pbVar10 = (byte)(uVar12 << 4);
        goto LAB_0073d0d8;
      }
      if ((*pbVar9 & 0xc0) != 0) goto LAB_0073d0d8;
      bVar14 = (uVar6 & 1) != 0;
      if (bVar14) {
        uVar6 = uVar6 + 1;
        uVar7 = uVar7 - 1;
        uVar3 = (uint)*pbVar10;
      }
      uVar6 = uVar6 + uVar7;
      if (bVar14) {
        uVar12 = uVar12 | uVar3;
        bVar2 = (byte)uVar12;
        pbVar9 = pbVar10 + 1;
        *pbVar10 = bVar2;
      }
      else {
        uVar12 = uVar12 | uVar12 << 4;
        bVar2 = (byte)uVar12;
        pbVar9 = pbVar10;
      }
      if (((int)uVar6 < (int)uVar13) && (0 < (int)uVar7)) {
        uVar3 = uVar7 - 1 >> 1;
        pbVar10 = pbVar9;
        do {
          pbVar4 = pbVar10 + 1;
          *pbVar10 = bVar2;
          pbVar10 = pbVar4;
        } while (pbVar4 != pbVar9 + uVar3 + 1);
        pbVar9 = pbVar9 + uVar3 + 1;
        uVar7 = (uVar7 - 2) + uVar3 * -2;
      }
      uVar12 = uVar12 & 0xf;
      pbVar10 = pbVar9;
      if (uVar7 == 0xffffffff) {
        pbVar10 = pbVar9 + -1;
        *pbVar10 = *pbVar10 & 0xf0;
      }
      bVar14 = uVar13 == uVar6;
      iVar1 = uVar13 - uVar6;
      if ((int)uVar13 > (int)uVar6) {
        bVar14 = iVar5 == 0;
        iVar1 = iVar5;
      }
      pbVar9 = pbVar11;
      if (bVar14 || iVar1 < 0 != ((int)uVar13 <= (int)uVar6 && SBORROW4(uVar13,uVar6)))
      goto LAB_0073d188;
    }
    uVar3 = (uVar7 & 0x3f) >> 4;
    if (uVar3 != 2) {
      bVar2 = (byte)*(int *)(&DAT_00855ff4 + uVar3 * 4);
      bVar14 = (uVar6 & 1) != 0;
      uVar6 = uVar6 + 1;
      if (bVar14) {
        bVar2 = *pbVar10;
      }
      uVar12 = uVar12 + *(int *)(&DAT_00855ff4 + uVar3 * 4) & 0xf;
      if (bVar14) {
        *pbVar10 = (byte)uVar12 | bVar2;
        pbVar10 = pbVar10 + 1;
      }
      else {
        *pbVar10 = (byte)(uVar12 << 4);
      }
    }
    uVar3 = (uVar7 & 0xf) >> 2;
    if (uVar3 != 2) {
      bVar2 = (byte)*(int *)(&DAT_00855ff4 + uVar3 * 4);
      bVar14 = (uVar6 & 1) != 0;
      uVar6 = uVar6 + 1;
      if (bVar14) {
        bVar2 = *pbVar10;
      }
      uVar12 = uVar12 + *(int *)(&DAT_00855ff4 + uVar3 * 4) & 0xf;
      if (bVar14) {
        *pbVar10 = (byte)uVar12 | bVar2;
        pbVar10 = pbVar10 + 1;
      }
      else {
        *pbVar10 = (byte)(uVar12 << 4);
      }
    }
    if ((uVar7 & 3) != 2) {
      uVar7 = uVar12 + *(int *)(&DAT_00855ff4 + (uVar7 & 3) * 4);
joined_r0x0073d2a8:
      uVar3 = uVar6 & 1;
      uVar12 = uVar7 & 0xf;
      uVar6 = uVar6 + 1;
      pbVar9 = pbVar10;
      if (uVar3 == 0) {
        *pbVar10 = (byte)(uVar12 << 4);
      }
      else {
LAB_0073d1f8:
        pbVar10 = pbVar9 + 1;
        *pbVar9 = *pbVar9 | (byte)uVar12;
      }
    }
  } while( true );
LAB_0073d188:
  param_1[0x93] = pbVar11;
  param_1[0x94] = iVar5;
  if (uVar13 != uVar6) {
    if ((int)uVar13 < (int)uVar6) {
      pcVar8 = "Too much";
    }
    else {
      pcVar8 = "Not enough";
    }
    TIFFErrorExt(param_1[0x99],*param_1,"ThunderDecode: %s data at scanline %ld (%lu != %lu)",pcVar8
                 ,param_1[0x72],uVar6,uVar13);
    return 0;
  }
  local_2c = local_2c - param_1[0x8f];
  if (local_2c < 1) {
    return 1;
  }
  local_40 = local_40 + param_1[0x8f];
  goto LAB_0073d0c4;
}

// ---- FUN_0073d38c  @ 0x73d38c
void FUN_0073d38c(int param_1)

{
  undefined4 *puVar1;
  undefined4 *puVar2;
  undefined4 *puVar3;
  
  puVar1 = *(undefined4 **)(param_1 + 0x90);
  puVar2 = puVar1 + 18000;
  do {
    puVar2[-0xe] = 0xffffffff;
    puVar2[-0xc] = 0xffffffff;
    puVar2[-10] = 0xffffffff;
    puVar2[-8] = 0xffffffff;
    puVar2[-6] = 0xffffffff;
    puVar2[-4] = 0xffffffff;
    puVar2[-2] = 0xffffffff;
    puVar3 = puVar2 + -0x10;
    *puVar2 = 0xffffffff;
    puVar2 = puVar3;
  } while (puVar3 != puVar1);
  *puVar1 = 0xffffffff;
  return;
}

// ---- FUN_0073d3d8  @ 0x73d3d8
undefined4 FUN_0073d3d8(int param_1)

{
  int iVar1;
  int iVar2;
  int iVar3;
  
  iVar3 = *(int *)(param_1 + 0x238);
  if (*(int *)(iVar3 + 0x90) == 0) {
    (**(code **)(param_1 + 0x1fc))();
  }
  iVar2 = *(int *)(param_1 + 0x248);
  iVar1 = *(int *)(param_1 + 0x244);
  *(undefined2 *)(iVar3 + 0x40) = 9;
  *(int *)(iVar3 + 0x8c) = iVar1 + iVar2 + -5;
  *(undefined4 *)(iVar3 + 0x88) = 0;
  *(undefined4 *)(iVar3 + 0x4c) = 0;
  *(undefined4 *)(iVar3 + 0x48) = 0;
  *(undefined2 *)(iVar3 + 0x42) = 0x1ff;
  *(undefined4 *)(iVar3 + 0x80) = 0;
  *(undefined2 *)(iVar3 + 0x44) = 0x102;
  *(undefined4 *)(iVar3 + 0x84) = 0;
  *(undefined4 *)(iVar3 + 0x7c) = 10000;
  FUN_0073d38c(iVar3);
  *(undefined4 *)(iVar3 + 0x78) = 0xffff;
  return 1;
}

// ---- FUN_0073d560  @ 0x73d560
undefined4 FUN_0073d560(int param_1)

{
  void *pvVar1;
  int iVar2;
  
  iVar2 = *(int *)(param_1 + 0x238);
  pvVar1 = _TIFFmalloc(0x11948);
  *(void **)(iVar2 + 0x90) = pvVar1;
  if (pvVar1 == (void *)0x0) {
    TIFFErrorExt(*(undefined4 *)(param_1 + 0x264),"LZWSetupEncode","No space for LZW hash table");
    return 0;
  }
  return 1;
}

// ---- FUN_0073d5b4  @ 0x73d5b4
void FUN_0073d5b4(int param_1)

{
  int iVar1;
  
  TIFFPredictorCleanup();
  iVar1 = *(int *)(param_1 + 0x238);
  if (*(int *)(iVar1 + 0x74) != 0) {
    _TIFFfree();
    iVar1 = *(int *)(param_1 + 0x238);
  }
  if (*(int *)(iVar1 + 0x90) != 0) {
    _TIFFfree();
    iVar1 = *(int *)(param_1 + 0x238);
  }
  _TIFFfree(iVar1);
  *(undefined4 *)(param_1 + 0x238) = 0;
  _TIFFSetDefaultCompressionState(param_1);
  return;
}

// ---- FUN_0073d608  @ 0x73d608
undefined4 FUN_0073d608(int param_1,byte *param_2,int param_3)

{
  undefined4 uVar1;
  undefined1 *puVar2;
  int iVar3;
  int iVar4;
  ushort uVar5;
  uint uVar6;
  int iVar7;
  ushort uVar8;
  int iVar9;
  uint uVar10;
  uint uVar11;
  uint uVar12;
  int iVar13;
  uint uVar14;
  uint uVar15;
  int iVar16;
  undefined1 *puVar17;
  int *piVar18;
  int iVar19;
  undefined1 *puVar20;
  uint uVar21;
  int local_54;
  uint local_50;
  uint local_48;
  int local_44;
  byte *local_40;
  uint local_38;
  int local_34;
  
  iVar16 = *(int *)(param_1 + 0x238);
  if (iVar16 == 0) {
    uVar1 = 0;
  }
  else {
    local_54 = *(int *)(iVar16 + 0x84);
    uVar15 = (uint)*(ushort *)(iVar16 + 0x78);
    uVar12 = *(uint *)(iVar16 + 0x4c);
    uVar8 = *(ushort *)(iVar16 + 0x44);
    uVar14 = (uint)uVar8;
    local_48 = *(uint *)(iVar16 + 0x88);
    local_50 = *(uint *)(iVar16 + 0x48);
    local_34 = *(int *)(iVar16 + 0x7c);
    local_38 = (uint)*(ushort *)(iVar16 + 0x42);
    puVar2 = *(undefined1 **)(iVar16 + 0x8c);
    uVar5 = *(ushort *)(iVar16 + 0x40);
    uVar6 = (uint)uVar5;
    puVar20 = *(undefined1 **)(param_1 + 0x24c);
    puVar17 = puVar20;
    local_44 = param_3;
    local_40 = param_2;
    if (uVar15 == 0xffff && 0 < param_3) {
      uVar12 = (uVar12 - 8) + uVar6;
      local_50 = local_50 << (uVar6 & 0xff) | 0x100;
      *puVar20 = (char)((int)local_50 >> (uVar12 & 0xff));
      puVar17 = puVar20 + 1;
      if (7 < (int)uVar12) {
        uVar12 = uVar12 - 8;
        puVar17 = puVar20 + 2;
        puVar20[1] = (char)((int)local_50 >> (uVar12 & 0xff));
      }
      local_40 = param_2 + 1;
      uVar15 = (uint)*param_2;
      local_48 = local_48 + uVar6;
      local_54 = local_54 + 1;
      local_44 = param_3 + -1;
    }
    if (0 < local_44) {
      iVar13 = 0;
      uVar11 = uVar15;
      do {
        uVar15 = (uint)local_40[iVar13];
        iVar7 = *(int *)(iVar16 + 0x90);
        iVar9 = local_54 + 1;
        uVar10 = uVar11 ^ uVar15 << 5;
        iVar19 = uVar11 + uVar15 * 0x1000;
        iVar3 = *(int *)(iVar7 + uVar10 * 8);
        piVar18 = (int *)(iVar7 + uVar10 * 8);
        uVar21 = uVar6;
        if (iVar3 == iVar19) {
LAB_0073d824:
          uVar15 = (uint)*(ushort *)(piVar18 + 1);
          uVar11 = uVar14 & 0xffff;
          local_54 = iVar9;
        }
        else {
          if (-1 < iVar3) {
            if (uVar10 == 0) {
              iVar3 = 1;
            }
            else {
              iVar3 = 0x2329 - uVar10;
            }
            do {
              uVar10 = uVar10 - iVar3;
              if ((int)uVar10 < 0) {
                uVar10 = uVar10 + 0x2329;
              }
              iVar4 = *(int *)(iVar7 + uVar10 * 8);
              piVar18 = (int *)(iVar7 + uVar10 * 8);
              if (iVar4 == iVar19) goto LAB_0073d824;
            } while (-1 < iVar4);
          }
          puVar20 = puVar17;
          if (puVar2 < puVar17) {
            *(int *)(param_1 + 0x250) = (int)puVar17 - *(int *)(param_1 + 0x244);
            TIFFFlushData1(param_1);
            puVar20 = *(undefined1 **)(param_1 + 0x244);
          }
          iVar3 = uVar6 + uVar12;
          uVar12 = iVar3 - 8;
          local_50 = uVar11 | local_50 << (uVar6 & 0xff);
          *puVar20 = (char)((int)local_50 >> (uVar12 & 0xff));
          puVar17 = puVar20 + 1;
          if (7 < (int)uVar12) {
            uVar12 = iVar3 - 0x10;
            puVar17 = puVar20 + 2;
            puVar20[1] = (char)((int)local_50 >> (uVar12 & 0xff));
          }
          *(short *)(piVar18 + 1) = (short)uVar14;
          uVar14 = uVar14 + 1;
          *piVar18 = iVar19;
          if (uVar14 == 0xffe) {
            FUN_0073d38c(iVar16);
            uVar14 = uVar12 + (uVar6 - 8);
            local_50 = local_50 << (uVar6 & 0xff) | 0x100;
            *(undefined4 *)(iVar16 + 0x80) = 0;
            uVar12 = uVar14;
            if (7 < (int)uVar14) {
              uVar12 = uVar14 - 8;
            }
            *puVar17 = (char)((int)local_50 >> (uVar14 & 0xff));
            if ((int)uVar14 < 8) {
LAB_0073d90c:
              puVar17 = puVar17 + 1;
              uVar11 = 0x102;
              local_38 = 0x1ff;
              uVar14 = 0x102;
              local_54 = 0;
              uVar21 = 9;
              local_48 = uVar6;
            }
            else {
LAB_0073d988:
              uVar11 = 0x102;
              puVar20 = puVar17 + 1;
              puVar17 = puVar17 + 2;
              *puVar20 = (char)((int)local_50 >> (uVar12 & 0xff));
              local_38 = 0x1ff;
              local_54 = 0;
              uVar14 = uVar11;
              uVar21 = 9;
              local_48 = uVar6;
            }
          }
          else {
            local_48 = local_48 + uVar6;
            if ((int)local_38 < (int)uVar14) {
              uVar11 = uVar14 & 0xffff;
              local_38 = (1 << (uVar6 + 1 & 0xff)) - 1;
              uVar21 = uVar6 + 1;
              local_54 = iVar9;
            }
            else {
              if (local_34 <= iVar9) {
                local_34 = local_54 + 0x2711;
                if (iVar9 < 0x800000) {
                  iVar3 = __divsi3(iVar9 * 0x100,local_48);
                }
                else if ((int)local_48 >> 8 == 0) {
                  iVar3 = 0x7fffffff;
                }
                else {
                  iVar3 = __divsi3(iVar9);
                }
                if (iVar3 <= *(int *)(iVar16 + 0x80)) {
                  FUN_0073d38c(iVar16);
                  uVar12 = uVar12 + (uVar6 - 8);
                  local_50 = local_50 << (uVar6 & 0xff) | 0x100;
                  *(undefined4 *)(iVar16 + 0x80) = 0;
                  *puVar17 = (char)((int)local_50 >> (uVar12 & 0xff));
                  if ((int)uVar12 < 8) goto LAB_0073d90c;
                  uVar12 = uVar12 - 8;
                  goto LAB_0073d988;
                }
                *(int *)(iVar16 + 0x80) = iVar3;
              }
              uVar11 = uVar14 & 0xffff;
              local_54 = iVar9;
            }
          }
        }
        uVar8 = (ushort)uVar11;
        iVar13 = iVar13 + 1;
        uVar11 = uVar15;
        uVar6 = uVar21;
      } while (iVar13 != local_44);
      uVar5 = (ushort)uVar21;
    }
    *(ushort *)(iVar16 + 0x40) = uVar5;
    uVar1 = 1;
    *(ushort *)(iVar16 + 0x44) = uVar8;
    *(undefined1 **)(param_1 + 0x24c) = puVar17;
    *(int *)(iVar16 + 0x84) = local_54;
    *(uint *)(iVar16 + 0x88) = local_48;
    *(uint *)(iVar16 + 0x78) = uVar15;
    *(int *)(iVar16 + 0x7c) = local_34;
    *(uint *)(iVar16 + 0x48) = local_50;
    *(uint *)(iVar16 + 0x4c) = uVar12;
    *(short *)(iVar16 + 0x42) = (short)local_38;
  }
  return uVar1;
}

// ---- FUN_0073da44  @ 0x73da44
undefined4 FUN_0073da44(int param_1)

{
  undefined1 *puVar1;
  undefined1 *puVar2;
  int iVar3;
  uint uVar4;
  uint uVar5;
  uint uVar6;
  uint uVar7;
  
  iVar3 = *(int *)(param_1 + 0x238);
  puVar1 = *(undefined1 **)(param_1 + 0x24c);
  uVar4 = *(uint *)(iVar3 + 0x4c);
  uVar6 = *(uint *)(iVar3 + 0x48);
  uVar7 = (uint)*(ushort *)(iVar3 + 0x40);
  if (*(undefined1 **)(iVar3 + 0x8c) < puVar1) {
    *(int *)(param_1 + 0x250) = (int)puVar1 - *(int *)(param_1 + 0x244);
    TIFFFlushData1();
    puVar1 = *(undefined1 **)(param_1 + 0x244);
  }
  puVar2 = puVar1;
  if (*(uint *)(iVar3 + 0x78) != 0xffff) {
    uVar6 = *(uint *)(iVar3 + 0x78) | uVar6 << (uVar7 & 0xff);
    uVar5 = (uVar4 - 8) + uVar7;
    uVar4 = uVar5;
    if (7 < (int)uVar5) {
      uVar4 = uVar5 - 8;
    }
    *puVar1 = (char)((int)uVar6 >> (uVar5 & 0xff));
    puVar2 = puVar1 + 1;
    if (7 < (int)uVar5) {
      puVar2 = puVar1 + 2;
      puVar1[1] = (char)((int)uVar6 >> (uVar4 & 0xff));
    }
    *(undefined4 *)(iVar3 + 0x78) = 0xffff;
  }
  uVar4 = (uVar7 - 8) + uVar4;
  uVar7 = uVar6 << (uVar7 & 0xff) | 0x101;
  uVar6 = uVar4;
  if (7 < (int)uVar4) {
    uVar6 = uVar4 - 8;
  }
  puVar1 = puVar2 + 1;
  *puVar2 = (char)((int)uVar7 >> (uVar4 & 0xff));
  if (7 < (int)uVar4) {
    puVar1 = puVar2 + 2;
    puVar2[1] = (char)((int)uVar7 >> (uVar6 & 0xff));
  }
  puVar2 = puVar1;
  if (0 < (int)uVar6) {
    puVar2 = puVar1 + 1;
    *puVar1 = (char)(uVar7 << (8 - uVar6 & 0xff));
  }
  *(int *)(param_1 + 0x250) = (int)puVar2 - *(int *)(param_1 + 0x244);
  return 1;
}

// ---- FUN_0073db18  @ 0x73db18
undefined4 FUN_0073db18(undefined4 *param_1,undefined1 *param_2,int param_3)

{
  undefined1 *puVar1;
  uint uVar2;
  int iVar3;
  undefined4 uVar4;
  undefined1 uVar5;
  undefined1 *puVar6;
  uint uVar7;
  undefined1 *puVar8;
  int *piVar9;
  uint *puVar10;
  uint *__s;
  int iVar11;
  uint *puVar12;
  undefined2 uVar13;
  uint uVar14;
  byte *pbVar15;
  uint uVar16;
  uint uVar17;
  int iVar18;
  int iVar19;
  byte *pbVar20;
  uint local_34;
  uint *local_30;
  
  iVar11 = param_1[0x8e];
  iVar19 = *(int *)(iVar11 + 0x58);
  if (iVar19 != 0) {
    piVar9 = *(int **)(iVar11 + 100);
    iVar3 = (uint)*(ushort *)(piVar9 + 1) - iVar19;
    if (param_3 < iVar3) {
      *(int *)(iVar11 + 0x58) = param_3 + iVar19;
      do {
        iVar3 = iVar3 + -1;
        piVar9 = (int *)*piVar9;
        if (iVar3 == param_3) {
          if (piVar9 != (int *)0x0) {
            param_2 = param_2 + iVar3;
            goto LAB_0073df04;
          }
          break;
        }
      } while (piVar9 != (int *)0x0);
      goto LAB_0073db70;
    }
    param_2 = param_2 + iVar3;
    param_3 = param_3 - iVar3;
    puVar6 = param_2;
    do {
      puVar8 = (undefined1 *)((int)piVar9 + 6);
      iVar3 = iVar3 + -1;
      piVar9 = (int *)*piVar9;
      puVar6 = puVar6 + -1;
      *puVar6 = *puVar8;
      if (iVar3 == 0) break;
    } while (piVar9 != (int *)0x0);
    *(undefined4 *)(iVar11 + 0x58) = 0;
  }
  local_34 = *(uint *)(iVar11 + 0x54);
  local_30 = *(uint **)(iVar11 + 0x70);
  pbVar20 = (byte *)param_1[0x93];
  uVar14 = (uint)*(ushort *)(iVar11 + 0x40);
  uVar16 = *(uint *)(iVar11 + 0x48);
  uVar17 = *(uint *)(iVar11 + 0x4c);
  puVar12 = *(uint **)(iVar11 + 0x68);
  __s = *(uint **)(iVar11 + 0x6c);
  if (param_3 < 1) {
LAB_0073def0:
    uVar13 = (undefined2)uVar14;
    pbVar15 = pbVar20;
  }
  else {
    iVar19 = *(int *)(iVar11 + 0x5c);
    puVar10 = puVar12;
    if ((int)uVar14 <= iVar19) {
      do {
        uVar7 = (uint)*pbVar20;
        iVar18 = uVar17 + 8;
        uVar16 = uVar7 | uVar16 << 8;
        pbVar15 = pbVar20 + 1;
        iVar3 = iVar18;
        if (iVar18 < (int)uVar14) {
          iVar3 = uVar17 + 0x10;
          pbVar15 = pbVar20 + 2;
          uVar7 = (uint)pbVar20[1];
        }
        uVar17 = iVar3 - uVar14;
        if (iVar18 < (int)uVar14) {
          uVar16 = uVar7 | uVar16 << 8;
        }
        *(uint *)(iVar11 + 0x5c) = iVar19 - uVar14;
        uVar7 = local_34 & (int)uVar16 >> (uVar17 & 0xff) & 0xffff;
        puVar12 = puVar10;
        if (uVar7 == 0x101) {
          uVar13 = (undefined2)uVar14;
          goto LAB_0073dd7c;
        }
        if (uVar7 == 0x100) {
          __s = (uint *)(*(int *)(iVar11 + 0x74) + 0x810);
          _TIFFmemset(__s,0,0x97e8);
          local_30 = (uint *)(*(int *)(iVar11 + 0x74) + 0xff0);
          if (*(int *)(iVar11 + 0x5c) < 9) {
            local_34 = 0x1ff;
            TIFFWarningExt(param_1[0x99],*param_1,"LZWDecode: Strip %d not terminated with EOI code"
                           ,param_1[0x74]);
            uVar13 = 9;
            goto LAB_0073dd7c;
          }
          uVar14 = (uint)*pbVar15;
          iVar3 = uVar17 + 8;
          uVar16 = uVar14 | uVar16 << 8;
          pbVar20 = pbVar15 + 1;
          iVar19 = iVar3;
          if (iVar3 < 9) {
            iVar19 = uVar17 + 0x10;
            pbVar20 = pbVar15 + 2;
            uVar14 = (uint)pbVar15[1];
          }
          uVar17 = iVar19 - 9;
          if (iVar3 < 9) {
            uVar16 = uVar14 | uVar16 << 8;
          }
          *(int *)(iVar11 + 0x5c) = *(int *)(iVar11 + 0x5c) + -9;
          uVar7 = (int)uVar16 >> (uVar17 & 0xff) & 0x1ff;
          if (uVar7 == 0x101) {
            uVar13 = 9;
            local_34 = 0x1ff;
            pbVar15 = pbVar20;
            goto LAB_0073dd7c;
          }
          if (uVar7 == 0x100) {
            TIFFErrorExt(param_1[0x99],*param_1,"LZWDecode: Corrupted LZW table at scanline %d",
                         param_1[0x72]);
            return 0;
          }
          puVar6 = param_2 + 1;
          *param_2 = (char)uVar7;
          param_3 = param_3 + -1;
          local_34 = 0x1ff;
          uVar14 = 9;
          puVar12 = (uint *)(*(int *)(iVar11 + 0x74) + uVar7 * 8);
        }
        else {
          puVar12 = *(uint **)(iVar11 + 0x74);
          if ((__s < puVar12) || (puVar12 + 0x27fe <= __s)) {
            TIFFErrorExt(param_1[0x99],*param_1,"LZWDecode: Corrupted LZW table at scanline %d",
                         param_1[0x72]);
            return 0;
          }
          *__s = (uint)puVar10;
          if ((puVar10 < *(uint **)(iVar11 + 0x74)) ||
             (*(uint **)(iVar11 + 0x74) + 0x27fe <= puVar10)) {
            TIFFErrorExt(param_1[0x99],*param_1,"LZWDecode: Corrupted LZW table at scanline %d",
                         param_1[0x72]);
            return 0;
          }
          uVar5 = *(undefined1 *)((int)puVar10 + 7);
          puVar12 = puVar12 + uVar7 * 2;
          uVar2 = puVar10[1];
          *(undefined1 *)((int)__s + 7) = uVar5;
          if (puVar12 < __s) {
            uVar5 = *(undefined1 *)((int)puVar12 + 7);
          }
          *(short *)(__s + 1) = (short)uVar2 + 1;
          *(undefined1 *)((int)__s + 6) = uVar5;
          __s = __s + 2;
          if (local_30 < __s) {
            uVar14 = uVar14 + 1;
            if (0xb < (int)uVar14) {
              uVar14 = 0xc;
            }
            iVar19 = 1 << (uVar14 & 0xff);
            local_34 = iVar19 - 1;
            local_30 = (uint *)(*(int *)(iVar11 + 0x74) + (iVar19 + -2) * 8);
          }
          pbVar20 = pbVar15;
          if (uVar7 < 0x100) {
            puVar6 = param_2 + 1;
            *param_2 = (char)uVar7;
            param_3 = param_3 + -1;
          }
          else {
            uVar7 = (uint)(ushort)puVar12[1];
            if (uVar7 == 0) {
              TIFFErrorExt(param_1[0x99],*param_1,
                           "LZWDecode: Wrong length of decoded string: data probably corrupted at scanline %d"
                           ,param_1[0x72]);
              return 0;
            }
            uVar13 = (undefined2)uVar14;
            if (param_3 < (int)uVar7) {
              *(uint **)(iVar11 + 100) = puVar12;
              puVar10 = puVar12;
              goto LAB_0073df7c;
            }
            puVar6 = param_2 + uVar7;
            puVar8 = puVar6;
            puVar10 = puVar12;
            do {
              puVar1 = (undefined1 *)((int)puVar10 + 6);
              puVar10 = (uint *)*puVar10;
              puVar8 = puVar8 + -1;
              *puVar8 = *puVar1;
            } while (puVar10 != (uint *)0x0 && param_2 < puVar8);
            if (puVar10 != (uint *)0x0) {
              TIFFErrorExt(param_1[0x99],*param_1,
                           "LZWDecode: Bogus encoding, loop in the code table; scanline %d",
                           param_1[0x72]);
              goto LAB_0073dd7c;
            }
            param_3 = param_3 - uVar7;
          }
        }
        if (param_3 < 1) goto LAB_0073def0;
        iVar19 = *(int *)(iVar11 + 0x5c);
        puVar10 = puVar12;
        param_2 = puVar6;
      } while ((int)uVar14 <= iVar19);
    }
    uVar13 = (undefined2)uVar14;
    TIFFWarningExt(param_1[0x99],*param_1,"LZWDecode: Strip %d not terminated with EOI code",
                   param_1[0x74]);
    pbVar15 = pbVar20;
  }
  goto LAB_0073dd7c;
  while (piVar9 != (int *)0x0) {
LAB_0073df04:
    iVar3 = iVar3 + -1;
    param_2 = param_2 + -1;
    *param_2 = *(undefined1 *)((int)piVar9 + 6);
    piVar9 = (int *)*piVar9;
    if (iVar3 == 0) break;
  }
  goto LAB_0073db70;
  while (param_3 < (int)(uint)(ushort)puVar10[1]) {
LAB_0073df7c:
    puVar10 = (uint *)*puVar10;
    if (puVar10 == (uint *)0x0) goto LAB_0073dd7c;
  }
  param_2 = param_2 + param_3;
  *(int *)(iVar11 + 0x58) = param_3;
  do {
    param_3 = param_3 + -1;
    param_2 = param_2 + -1;
    *param_2 = *(undefined1 *)((int)puVar10 + 6);
    puVar10 = (uint *)*puVar10;
    if (param_3 == 0) {
      if (puVar10 != (uint *)0x0) {
        TIFFErrorExt(param_1[0x99],*param_1,
                     "LZWDecode: Bogus encoding, loop in the code table; scanline %d",param_1[0x72])
        ;
      }
      break;
    }
  } while (puVar10 != (uint *)0x0);
LAB_0073dd7c:
  *(uint **)(iVar11 + 0x70) = local_30;
  param_1[0x93] = pbVar15;
  *(undefined2 *)(iVar11 + 0x40) = uVar13;
  *(uint *)(iVar11 + 0x48) = uVar16;
  *(uint *)(iVar11 + 0x4c) = uVar17;
  *(uint *)(iVar11 + 0x54) = local_34;
  *(uint **)(iVar11 + 0x68) = puVar12;
  *(uint **)(iVar11 + 0x6c) = __s;
  if (param_3 < 1) {
LAB_0073db70:
    uVar4 = 1;
  }
  else {
    TIFFErrorExt(param_1[0x99],*param_1,
                 "LZWDecode: Not enough data at scanline %d (short %ld bytes)",param_1[0x72],param_3
                );
    uVar4 = 0;
  }
  return uVar4;
}

// ---- FUN_0073e078  @ 0x73e078
undefined4 FUN_0073e078(undefined4 *param_1)

{
  int iVar1;
  int iVar2;
  void *__s;
  
  iVar2 = param_1[0x8e];
  if (*(int *)(iVar2 + 0x74) == 0) {
    (*(code *)param_1[0x7d])();
  }
  if ((*(char *)param_1[0x91] == '\0') && ((((char *)param_1[0x91])[1] & 1U) != 0)) {
    if (*(int *)(iVar2 + 0x60) == 0) {
      TIFFWarningExt(param_1[0x99],*param_1,"Old-style LZW codes, convert file");
      param_1[0x83] = FUN_0073e198;
      param_1[0x85] = FUN_0073e198;
      param_1[0x87] = FUN_0073e198;
      (*(code *)param_1[0x7d])(param_1);
      *(code **)(iVar2 + 0x60) = FUN_0073e198;
    }
    *(undefined2 *)(iVar2 + 0x42) = 0x1ff;
  }
  else {
    *(undefined2 *)(iVar2 + 0x42) = 0x1fe;
    *(code **)(iVar2 + 0x60) = FUN_0073db18;
  }
  iVar1 = param_1[0x94];
  *(undefined4 *)(iVar2 + 0x4c) = 0;
  __s = (void *)(*(int *)(iVar2 + 0x74) + 0x810);
  *(undefined2 *)(iVar2 + 0x40) = 9;
  *(undefined4 *)(iVar2 + 0x48) = 0;
  *(undefined4 *)(iVar2 + 0x58) = 0;
  *(int *)(iVar2 + 0x5c) = iVar1 << 3;
  *(void **)(iVar2 + 0x6c) = __s;
  *(undefined4 *)(iVar2 + 0x54) = 0x1ff;
  _TIFFmemset(__s,0,0x97e8);
  *(int *)(iVar2 + 0x68) = *(int *)(iVar2 + 0x74) + -8;
  *(int *)(iVar2 + 0x70) = *(int *)(iVar2 + 0x74) + (*(int *)(iVar2 + 0x54) + -1) * 8;
  return 1;
}

// ---- FUN_0073e198  @ 0x73e198
undefined4 FUN_0073e198(undefined4 *param_1,undefined1 *param_2,int param_3)

{
  int iVar1;
  undefined1 uVar2;
  undefined1 *puVar3;
  uint uVar4;
  char *pcVar5;
  int *piVar6;
  uint uVar7;
  int *piVar8;
  undefined4 uVar9;
  int *__s;
  int iVar10;
  undefined2 uVar11;
  uint uVar12;
  uint uVar13;
  uint uVar14;
  byte *pbVar15;
  byte *pbVar16;
  int iVar17;
  undefined1 *puVar18;
  uint local_34;
  uint local_30;
  int *local_2c;
  
  iVar10 = param_1[0x8e];
  iVar17 = *(int *)(iVar10 + 0x58);
  if (iVar17 != 0) {
    piVar6 = *(int **)(iVar10 + 100);
    iVar1 = (uint)*(ushort *)(piVar6 + 1) - iVar17;
    if (param_3 < iVar1) {
      *(int *)(iVar10 + 0x58) = param_3 + iVar17;
      do {
        iVar1 = iVar1 + -1;
        piVar6 = (int *)*piVar6;
      } while (iVar1 != param_3);
      param_2 = param_2 + iVar1;
      do {
        iVar1 = iVar1 + -1;
        param_2 = param_2 + -1;
        *param_2 = *(undefined1 *)((int)piVar6 + 6);
        piVar6 = (int *)*piVar6;
      } while (iVar1 != 0);
      return 1;
    }
    param_2 = param_2 + iVar1;
    param_3 = param_3 - iVar1;
    puVar3 = param_2;
    do {
      iVar1 = iVar1 + -1;
      puVar3 = puVar3 + -1;
      *puVar3 = *(undefined1 *)((int)piVar6 + 6);
      piVar6 = (int *)*piVar6;
    } while (iVar1 != 0);
    *(undefined4 *)(iVar10 + 0x58) = 0;
  }
  local_30 = *(uint *)(iVar10 + 0x48);
  local_34 = *(uint *)(iVar10 + 0x54);
  local_2c = *(int **)(iVar10 + 0x70);
  pbVar15 = (byte *)param_1[0x93];
  uVar12 = (uint)*(ushort *)(iVar10 + 0x40);
  uVar13 = *(uint *)(iVar10 + 0x4c);
  piVar6 = *(int **)(iVar10 + 0x68);
  __s = *(int **)(iVar10 + 0x6c);
  if (param_3 < 1) {
LAB_0073e57c:
    uVar11 = (undefined2)uVar12;
    piVar8 = piVar6;
  }
  else {
    iVar17 = *(int *)(iVar10 + 0x5c);
    piVar8 = piVar6;
    if ((int)uVar12 <= iVar17) {
      do {
        uVar4 = uVar13 + 8;
        uVar7 = local_30 | (uint)*pbVar15 << (uVar13 & 0xff);
        uVar14 = uVar13;
        pbVar16 = pbVar15 + 1;
        if ((int)uVar4 < (int)uVar12) {
          uVar14 = (uint)pbVar15[1];
          pbVar16 = pbVar15 + 2;
        }
        pbVar15 = pbVar16;
        *(uint *)(iVar10 + 0x5c) = iVar17 - uVar12;
        if ((int)uVar4 < (int)uVar12) {
          uVar7 = uVar7 | uVar14 << (uVar4 & 0xff);
          uVar4 = uVar13 + 0x10;
        }
        uVar13 = uVar4 - uVar12;
        local_30 = (int)uVar7 >> (uVar12 & 0xff);
        uVar7 = uVar7 & local_34 & 0xffff;
        piVar6 = piVar8;
        if (uVar7 == 0x101) goto LAB_0073e57c;
        if (uVar7 == 0x100) {
          __s = (int *)(*(int *)(iVar10 + 0x74) + 0x810);
          _TIFFmemset(__s,0,0x97e8);
          local_2c = (int *)(*(int *)(iVar10 + 0x74) + 0xff8);
          if (*(int *)(iVar10 + 0x5c) < 9) {
            uVar11 = 9;
            local_34 = 0x1ff;
            TIFFWarningExt(param_1[0x99],*param_1,"LZWDecode: Strip %d not terminated with EOI code"
                           ,param_1[0x74]);
            goto LAB_0073e3fc;
          }
          uVar14 = (uint)*pbVar15;
          uVar12 = uVar13 + 8;
          uVar7 = local_30 | uVar14 << (uVar13 & 0xff);
          pbVar16 = pbVar15 + 1;
          if ((int)uVar12 < 9) {
            pbVar16 = pbVar15 + 2;
            uVar14 = (uint)pbVar15[1];
          }
          *(int *)(iVar10 + 0x5c) = *(int *)(iVar10 + 0x5c) + -9;
          if ((int)uVar12 < 9) {
            uVar7 = uVar7 | uVar14 << (uVar12 & 0xff);
            uVar12 = uVar13 + 0x10;
          }
          local_30 = (int)uVar7 >> 9;
          uVar13 = uVar12 - 9;
          uVar7 = uVar7 & 0x1ff;
          pbVar15 = pbVar16;
          if (uVar7 == 0x101) {
            uVar11 = 9;
            local_34 = 0x1ff;
            goto LAB_0073e3fc;
          }
          if (uVar7 == 0x100) {
            uVar9 = param_1[0x72];
            pcVar5 = "LZWDecode: Corrupted LZW table at scanline %d";
            goto LAB_0073e564;
          }
          local_34 = 0x1ff;
          param_3 = param_3 + -1;
          *param_2 = (char)uVar7;
          uVar12 = 9;
          piVar6 = (int *)(*(int *)(iVar10 + 0x74) + uVar7 * 8);
          puVar18 = param_2 + 1;
        }
        else {
          piVar6 = *(int **)(iVar10 + 0x74);
          if ((__s < piVar6) || (piVar6 + 0x27fe <= __s)) {
            TIFFErrorExt(param_1[0x99],*param_1,
                         "LZWDecodeCompat: Corrupted LZW table at scanline %d",param_1[0x72]);
            return 0;
          }
          *__s = (int)piVar8;
          if ((piVar8 < *(int **)(iVar10 + 0x74)) || (*(int **)(iVar10 + 0x74) + 0x27fe <= piVar8))
          {
            uVar9 = param_1[0x72];
            pcVar5 = "LZWDecodeCompat: Corrupted LZW table at scanline %d";
LAB_0073e564:
            TIFFErrorExt(param_1[0x99],*param_1,pcVar5,uVar9);
            return 0;
          }
          uVar2 = *(undefined1 *)((int)piVar8 + 7);
          piVar6 = piVar6 + uVar7 * 2;
          iVar17 = piVar8[1];
          *(undefined1 *)((int)__s + 7) = uVar2;
          if (piVar6 < __s) {
            uVar2 = *(undefined1 *)((int)piVar6 + 7);
          }
          *(short *)(__s + 1) = (short)iVar17 + 1;
          *(undefined1 *)((int)__s + 6) = uVar2;
          __s = __s + 2;
          if (local_2c < __s) {
            uVar12 = uVar12 + 1;
            if (0xb < (int)uVar12) {
              uVar12 = 0xc;
            }
            local_34 = (1 << (uVar12 & 0xff)) - 1;
            local_2c = (int *)(*(int *)(iVar10 + 0x74) + local_34 * 8);
          }
          if (uVar7 < 0x100) {
            param_3 = param_3 + -1;
            *param_2 = (char)uVar7;
            puVar18 = param_2 + 1;
          }
          else {
            uVar7 = (uint)*(ushort *)(piVar6 + 1);
            if (uVar7 == 0) {
              TIFFErrorExt(param_1[0x99],*param_1,
                           "LZWDecodeCompat: Wrong length of decoded string: data probably corrupted at scanline %d"
                           ,param_1[0x72]);
              return 0;
            }
            if (param_3 < (int)uVar7) {
              *(int **)(iVar10 + 100) = piVar6;
              piVar8 = piVar6;
              do {
                piVar8 = (int *)*piVar8;
              } while (param_3 < (int)(uint)*(ushort *)(piVar8 + 1));
              param_2 = param_2 + param_3;
              *(int *)(iVar10 + 0x58) = param_3;
              do {
                param_3 = param_3 + -1;
                param_2 = param_2 + -1;
                *param_2 = *(undefined1 *)((int)piVar8 + 6);
                piVar8 = (int *)*piVar8;
              } while (param_3 != 0);
              uVar11 = (undefined2)uVar12;
              param_3 = 0;
              piVar8 = piVar6;
              goto LAB_0073e3fc;
            }
            puVar18 = param_2 + uVar7;
            param_3 = param_3 - uVar7;
            puVar3 = puVar18;
            piVar8 = piVar6;
            do {
              puVar3 = puVar3 + -1;
              *puVar3 = *(undefined1 *)((int)piVar8 + 6);
              piVar8 = (int *)*piVar8;
              if (piVar8 == (int *)0x0) break;
            } while (param_2 < puVar3);
          }
        }
        param_2 = puVar18;
        if (param_3 < 1) goto LAB_0073e57c;
        iVar17 = *(int *)(iVar10 + 0x5c);
        piVar8 = piVar6;
      } while ((int)uVar12 <= iVar17);
    }
    uVar11 = (undefined2)uVar12;
    TIFFWarningExt(param_1[0x99],*param_1,"LZWDecode: Strip %d not terminated with EOI code",
                   param_1[0x74]);
    piVar8 = piVar6;
  }
LAB_0073e3fc:
  *(int **)(iVar10 + 0x70) = local_2c;
  param_1[0x93] = pbVar15;
  *(undefined2 *)(iVar10 + 0x40) = uVar11;
  *(uint *)(iVar10 + 0x48) = local_30;
  *(uint *)(iVar10 + 0x4c) = uVar13;
  *(uint *)(iVar10 + 0x54) = local_34;
  *(int **)(iVar10 + 0x68) = piVar8;
  *(int **)(iVar10 + 0x6c) = __s;
  if (param_3 < 1) {
    return 1;
  }
  TIFFErrorExt(param_1[0x99],*param_1,
               "LZWDecodeCompat: Not enough data at scanline %d (short %ld bytes)",param_1[0x72],
               param_3);
  return 0;
}

// ---- FUN_0073e62c  @ 0x73e62c
undefined4 FUN_0073e62c(int param_1)

{
  int iVar1;
  void *pvVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  
  iVar5 = *(int *)(param_1 + 0x238);
  if (iVar5 == 0) {
    pvVar2 = _TIFFmalloc(0x94);
    *(void **)(param_1 + 0x238) = pvVar2;
    if (pvVar2 == (void *)0x0) {
      TIFFErrorExt(*(undefined4 *)(param_1 + 0x264),"LZWPreDecode","No space for LZW state block");
      return 0;
    }
    *(undefined4 *)((int)pvVar2 + 0x60) = 0;
    *(undefined4 *)((int)pvVar2 + 0x74) = 0;
    TIFFPredictorInit(param_1);
    iVar5 = *(int *)(param_1 + 0x238);
  }
  if (*(int *)(iVar5 + 0x74) == 0) {
    pvVar2 = _TIFFmalloc(0x9ff8);
    *(void **)(iVar5 + 0x74) = pvVar2;
    if (pvVar2 == (void *)0x0) {
      TIFFErrorExt(*(undefined4 *)(param_1 + 0x264)," LZWSetupDecode","No space for LZW code table")
      ;
      return 0;
    }
    iVar4 = 0xff;
    while( true ) {
      iVar1 = iVar4 * 8;
      *(char *)((int)pvVar2 + iVar1 + 6) = (char)iVar4;
      *(char *)(*(int *)(iVar5 + 0x74) + iVar1 + 7) = (char)iVar4;
      iVar3 = *(int *)(iVar5 + 0x74);
      *(undefined4 *)(iVar3 + iVar4 * 8) = 0;
      iVar4 = iVar4 + -1;
      *(undefined2 *)(iVar3 + iVar1 + 4) = 1;
      if (iVar4 == -1) break;
      pvVar2 = *(void **)(iVar5 + 0x74);
    }
    _TIFFmemset((void *)(*(int *)(iVar5 + 0x74) + 0x800),0,0x10);
    return 1;
  }
  return 1;
}

// ---- FUN_0073ea20  @ 0x73ea20
uint FUN_0073ea20(int param_1,uint param_2,int param_3)

{
  byte bVar1;
  uint uVar2;
  int iVar3;
  uint uVar4;
  uint uVar5;
  uint uVar6;
  uint uVar7;
  uint uVar8;
  byte *pbVar9;
  
  uVar6 = param_3 - param_2;
  pbVar9 = (byte *)(param_1 + ((int)param_2 >> 3));
  if ((int)uVar6 < 1) {
    return 0;
  }
  uVar7 = param_2 & 7;
  if (uVar7 == 0) {
    uVar4 = 0;
  }
  else {
    uVar4 = 8 - uVar7;
    if ((int)uVar6 <= (int)(8 - uVar7)) {
      uVar4 = uVar6;
    }
    if ((int)(uint)(byte)(&DAT_00856050)
                         [(uint)*(byte *)(param_1 + ((int)param_2 >> 3)) << uVar7 & 0xff] <=
        (int)uVar4) {
      uVar4 = (uint)(byte)(&DAT_00856050)
                          [(uint)*(byte *)(param_1 + ((int)param_2 >> 3)) << uVar7 & 0xff];
    }
    if ((int)(uVar4 + uVar7) < 8) {
      return uVar4;
    }
    uVar6 = uVar6 - uVar4;
    pbVar9 = pbVar9 + 1;
  }
  uVar7 = uVar4;
  if (0x3f < (int)uVar6) {
    if (((uint)pbVar9 & 3) != 0) {
      bVar1 = *pbVar9;
      while( true ) {
        if (bVar1 != 0) {
          return (byte)(&DAT_00856050)[bVar1] + uVar7;
        }
        pbVar9 = pbVar9 + 1;
        uVar7 = uVar7 + 8;
        if (((uint)pbVar9 & 3) == 0) break;
        bVar1 = *pbVar9;
      }
      uVar6 = (uVar6 + uVar4) - uVar7;
      uVar4 = uVar7;
      if ((int)uVar6 < 0x20) goto LAB_0073eb20;
    }
    iVar3 = *(int *)pbVar9;
    uVar7 = uVar4;
    while (iVar3 == 0) {
      uVar6 = uVar6 - 0x20;
      uVar7 = uVar7 + 0x20;
      if ((int)uVar6 < 0x20) {
        pbVar9 = pbVar9 + 4;
        break;
      }
      pbVar9 = pbVar9 + 4;
      iVar3 = *(int *)pbVar9;
    }
  }
LAB_0073eb20:
  uVar4 = uVar7;
  if ((int)uVar6 < 8) {
LAB_0073eb74:
    if (0 < (int)uVar6) {
      if ((int)uVar6 < (int)(uint)(byte)(&DAT_00856050)[*pbVar9]) {
        uVar4 = uVar4 + uVar6;
      }
      else {
        uVar4 = uVar4 + (byte)(&DAT_00856050)[*pbVar9];
      }
    }
  }
  else {
    uVar5 = (uint)*pbVar9;
    if (uVar5 == 0) {
      uVar8 = uVar7 + 8 + (uVar6 - 8 & 0xfffffff8);
      uVar2 = uVar7 + 8;
      do {
        uVar4 = uVar2;
        if (uVar4 == uVar8) {
          pbVar9 = pbVar9 + 1;
          uVar6 = (uVar6 + uVar7) - uVar8;
          goto LAB_0073eb74;
        }
        pbVar9 = pbVar9 + 1;
        uVar5 = (uint)*pbVar9;
        uVar2 = uVar4 + 8;
      } while (uVar5 == 0);
    }
    uVar4 = uVar4 + (byte)(&DAT_00856050)[uVar5];
  }
  return uVar4;
}

// ---- FUN_0073ebfc  @ 0x73ebfc
uint FUN_0073ebfc(int param_1,uint param_2,int param_3)

{
  byte bVar1;
  uint uVar2;
  int iVar3;
  uint uVar4;
  uint uVar5;
  uint uVar6;
  uint uVar7;
  uint uVar8;
  byte *pbVar9;
  
  uVar6 = param_3 - param_2;
  pbVar9 = (byte *)(param_1 + ((int)param_2 >> 3));
  if ((int)uVar6 < 1) {
    return 0;
  }
  uVar7 = param_2 & 7;
  if (uVar7 == 0) {
    uVar4 = 0;
  }
  else {
    uVar4 = 8 - uVar7;
    if ((int)uVar6 <= (int)(8 - uVar7)) {
      uVar4 = uVar6;
    }
    if ((int)(uint)(byte)(&DAT_00856150)
                         [(uint)*(byte *)(param_1 + ((int)param_2 >> 3)) << uVar7 & 0xff] <=
        (int)uVar4) {
      uVar4 = (uint)(byte)(&DAT_00856150)
                          [(uint)*(byte *)(param_1 + ((int)param_2 >> 3)) << uVar7 & 0xff];
    }
    if ((int)(uVar4 + uVar7) < 8) {
      return uVar4;
    }
    uVar6 = uVar6 - uVar4;
    pbVar9 = pbVar9 + 1;
  }
  uVar7 = uVar4;
  if (0x3f < (int)uVar6) {
    if (((uint)pbVar9 & 3) != 0) {
      bVar1 = *pbVar9;
      while( true ) {
        if (bVar1 != 0xff) {
          return (byte)(&DAT_00856150)[bVar1] + uVar7;
        }
        pbVar9 = pbVar9 + 1;
        uVar7 = uVar7 + 8;
        if (((uint)pbVar9 & 3) == 0) break;
        bVar1 = *pbVar9;
      }
      uVar6 = (uVar6 + uVar4) - uVar7;
      uVar4 = uVar7;
      if ((int)uVar6 < 0x20) goto LAB_0073ecfc;
    }
    iVar3 = *(int *)pbVar9;
    uVar7 = uVar4;
    while (iVar3 == -1) {
      uVar6 = uVar6 - 0x20;
      uVar7 = uVar7 + 0x20;
      if ((int)uVar6 < 0x20) {
        pbVar9 = pbVar9 + 4;
        break;
      }
      pbVar9 = pbVar9 + 4;
      iVar3 = *(int *)pbVar9;
    }
  }
LAB_0073ecfc:
  uVar4 = uVar7;
  if ((int)uVar6 < 8) {
LAB_0073ed50:
    if (0 < (int)uVar6) {
      if ((int)uVar6 < (int)(uint)(byte)(&DAT_00856150)[*pbVar9]) {
        uVar4 = uVar4 + uVar6;
      }
      else {
        uVar4 = uVar4 + (byte)(&DAT_00856150)[*pbVar9];
      }
    }
  }
  else {
    uVar5 = (uint)*pbVar9;
    if (uVar5 == 0xff) {
      uVar8 = uVar7 + 8 + (uVar6 - 8 & 0xfffffff8);
      uVar2 = uVar7 + 8;
      do {
        uVar4 = uVar2;
        if (uVar4 == uVar8) {
          pbVar9 = pbVar9 + 1;
          uVar6 = (uVar6 + uVar7) - uVar8;
          goto LAB_0073ed50;
        }
        pbVar9 = pbVar9 + 1;
        uVar5 = (uint)*pbVar9;
        uVar2 = uVar4 + 8;
      } while (uVar5 == 0xff);
    }
    uVar4 = uVar4 + (byte)(&DAT_00856150)[uVar5];
  }
  return uVar4;
}

// ---- FUN_0073ef34  @ 0x73ef34
void FUN_0073ef34(undefined4 param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4)

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
  TIFFErrorExt(param_2[0x99],param_1,"%s: Bad code word at line %u of %s %u (x %u)",*param_2,param_3
               ,pcVar1,uVar2,param_4);
  return;
}

// ---- FUN_0073efa8  @ 0x73efa8
undefined4 FUN_0073efa8(undefined4 *param_1)

{
  int iVar1;
  int *piVar2;
  uint uVar3;
  int iVar4;
  bool bVar5;
  
  iVar1 = _TIFFMergeFieldInfo(param_1,&DAT_00909504,0xb);
  if (iVar1 == 0) {
    TIFFErrorExt(param_1[0x99],"InitCCITTFax3","Merging common CCITT Fax codec-specific tags failed"
                );
    return 0;
  }
  piVar2 = _TIFFmalloc(0x70);
  param_1[0x8e] = piVar2;
  if (piVar2 != (int *)0x0) {
    iVar4 = param_1[2];
    uVar3 = 0;
    iVar1 = param_1[0xa4];
    bVar5 = iVar4 == 0;
    piVar2[7] = 0;
    piVar2[8] = 0;
    piVar2[0xb] = 0;
    *piVar2 = iVar4;
    piVar2[9] = 0;
    if (bVar5) {
      uVar3 = param_1[3];
    }
    piVar2[0xc] = iVar1;
    if (bVar5) {
      uVar3 = uVar3 | 0x100;
    }
    if (bVar5) {
      param_1[3] = uVar3;
    }
    iVar1 = param_1[0x8e];
    iVar4 = param_1[0xa5];
    param_1[0xa4] = &LAB_0073edd8;
    piVar2[0xd] = param_1[0xa3];
    *(undefined4 *)(iVar1 + 0x50) = 0;
    param_1[0xa3] = &LAB_0074333c;
    piVar2[0xe] = iVar4;
    param_1[0xa5] = &LAB_00743014;
    TIFFSetField(param_1,0x10004,_TIFFFax3fillruns);
    *(undefined4 *)(param_1[0x8e] + 0x60) = 0;
    param_1[0x7e] = FUN_00742e48;
    param_1[0x8b] = FUN_0073f324;
    param_1[0x87] = FUN_0074027c;
    param_1[0x7f] = &LAB_00742e98;
    param_1[0x81] = FUN_007400c0;
    param_1[0x82] = FUN_0073fc9c;
    param_1[0x88] = FUN_0073fd84;
    param_1[0x89] = FUN_0073f498;
    param_1[0x7d] = &LAB_00742e98;
    param_1[0x83] = FUN_0074027c;
    param_1[0x85] = FUN_0074027c;
    param_1[0x84] = FUN_0073fd84;
    param_1[0x86] = FUN_0073fd84;
    return 1;
  }
  TIFFErrorExt(param_1[0x99],"TIFFInitCCITTFax3","%s: No space for state block",*param_1);
  return 0;
}

// ---- FUN_0073f324  @ 0x73f324
void FUN_0073f324(int param_1)

{
  int iVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  int iVar4;
  
  iVar4 = *(int *)(param_1 + 0x238);
  iVar1 = *(int *)(iVar4 + 0x50);
  uVar2 = *(undefined4 *)(iVar4 + 0x38);
  *(undefined4 *)(param_1 + 0x290) = *(undefined4 *)(iVar4 + 0x30);
  uVar3 = *(undefined4 *)(iVar4 + 0x34);
  *(undefined4 *)(param_1 + 0x294) = uVar2;
  *(undefined4 *)(param_1 + 0x28c) = uVar3;
  if (iVar1 != 0) {
    _TIFFfree();
  }
  if (*(int *)(iVar4 + 0x60) != 0) {
    _TIFFfree();
  }
  iVar1 = *(int *)(param_1 + 0x238);
  if (*(int *)(iVar1 + 0x24) != 0) {
    _TIFFfree();
    iVar1 = *(int *)(param_1 + 0x238);
  }
  if (*(int *)(iVar1 + 0x2c) != 0) {
    _TIFFfree();
    iVar1 = *(int *)(param_1 + 0x238);
  }
  _TIFFfree(iVar1);
  *(undefined4 *)(param_1 + 0x238) = 0;
  _TIFFSetDefaultCompressionState(param_1);
  return;
}

// ---- FUN_0073f3b0  @ 0x73f3b0
void FUN_0073f3b0(int param_1,uint param_2,uint param_3)

{
  byte bVar1;
  uint uVar2;
  uint uVar3;
  int iVar4;
  byte *pbVar5;
  undefined1 *puVar6;
  int iVar7;
  
  iVar7 = *(int *)(param_1 + 0x238);
  uVar3 = *(uint *)(iVar7 + 0x44);
  uVar2 = *(uint *)(iVar7 + 0x40);
  if (uVar3 < param_3) {
    iVar4 = *(int *)(param_1 + 0x250);
    do {
      param_3 = param_3 - uVar3;
      bVar1 = (byte)uVar2;
      if (*(int *)(param_1 + 0x248) <= iVar4) {
        TIFFFlushData1(param_1);
      }
      pbVar5 = *(byte **)(param_1 + 0x24c);
      uVar3 = 8;
      uVar2 = 0;
      *pbVar5 = bVar1 | (byte)(param_2 >> (param_3 & 0xff));
      *(byte **)(param_1 + 0x24c) = pbVar5 + 1;
      iVar4 = *(int *)(param_1 + 0x250) + 1;
      *(int *)(param_1 + 0x250) = iVar4;
    } while (8 < param_3);
  }
  uVar3 = uVar3 - param_3;
  uVar2 = uVar2 | (param_2 & *(uint *)(&DAT_00856250 + param_3 * 4)) << (uVar3 & 0xff);
  if (uVar3 == 0) {
    if (*(int *)(param_1 + 0x248) <= *(int *)(param_1 + 0x250)) {
      TIFFFlushData1(param_1);
    }
    puVar6 = *(undefined1 **)(param_1 + 0x24c);
    uVar3 = 8;
    *puVar6 = (char)uVar2;
    *(undefined1 **)(param_1 + 0x24c) = puVar6 + 1;
    *(int *)(param_1 + 0x250) = *(int *)(param_1 + 0x250) + 1;
    uVar2 = 0;
  }
  *(uint *)(iVar7 + 0x44) = uVar3;
  *(uint *)(iVar7 + 0x40) = uVar2;
  return;
}

// ---- FUN_0073f498  @ 0x73f498
void FUN_0073f498(int param_1)

{
  undefined1 *puVar1;
  int iVar2;
  int iVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  
  iVar3 = *(int *)(param_1 + 0x238);
  if ((*(uint *)(iVar3 + 4) & 1) != 0) {
    return;
  }
  if ((*(uint *)(iVar3 + 0x1c) & 1) == 0) {
    uVar4 = 0xc;
    uVar5 = 1;
  }
  else {
    uVar4 = 0xd;
    if (*(int *)(iVar3 + 0x5c) == 0) {
      uVar5 = 3;
    }
    else {
      uVar5 = 2;
    }
  }
  iVar2 = 0;
  do {
    iVar2 = iVar2 + 1;
    FUN_0073f3b0(param_1,uVar5,uVar4);
  } while (iVar2 != 6);
  if (*(int *)(param_1 + 0x248) <= *(int *)(param_1 + 0x250)) {
    TIFFFlushData1(param_1);
  }
  puVar1 = *(undefined1 **)(param_1 + 0x24c);
  *puVar1 = (char)*(undefined4 *)(iVar3 + 0x40);
  *(undefined1 **)(param_1 + 0x24c) = puVar1 + 1;
  *(int *)(param_1 + 0x250) = *(int *)(param_1 + 0x250) + 1;
  *(undefined4 *)(iVar3 + 0x44) = 8;
  *(undefined4 *)(iVar3 + 0x40) = 0;
  return;
}

// ---- FUN_0073f548  @ 0x73f548
void FUN_0073f548(int param_1,int param_2,int param_3)

{
  ushort uVar1;
  byte bVar2;
  int iVar3;
  byte *pbVar4;
  uint uVar5;
  int iVar6;
  undefined1 *puVar7;
  uint uVar8;
  uint uVar9;
  int iVar10;
  
  iVar3 = *(int *)(param_1 + 0x238);
  uVar5 = *(uint *)(iVar3 + 0x44);
  uVar9 = *(uint *)(iVar3 + 0x40);
  if (0xa3f < param_2) {
    do {
      uVar8 = (uint)*(ushort *)(param_3 + 0x26a);
      uVar1 = *(ushort *)(param_3 + 0x26c);
      if (uVar5 < uVar8) {
        iVar6 = *(int *)(param_1 + 0x250);
        do {
          uVar8 = uVar8 - uVar5;
          bVar2 = (byte)uVar9;
          uVar9 = 0;
          if (*(int *)(param_1 + 0x248) <= iVar6) {
            TIFFFlushData1(param_1);
          }
          pbVar4 = *(byte **)(param_1 + 0x24c);
          uVar5 = 8;
          *pbVar4 = bVar2 | (byte)(uVar1 >> (uVar8 & 0xff));
          *(byte **)(param_1 + 0x24c) = pbVar4 + 1;
          iVar6 = *(int *)(param_1 + 0x250) + 1;
          *(int *)(param_1 + 0x250) = iVar6;
        } while (8 < uVar8);
      }
      uVar5 = uVar5 - uVar8;
      uVar9 = uVar9 | ((uint)uVar1 & *(uint *)(&DAT_00856250 + uVar8 * 4)) << (uVar5 & 0xff);
      if (uVar5 == 0) {
        if (*(int *)(param_1 + 0x248) <= *(int *)(param_1 + 0x250)) {
          TIFFFlushData1(param_1);
        }
        puVar7 = *(undefined1 **)(param_1 + 0x24c);
        uVar5 = 8;
        *puVar7 = (char)uVar9;
        uVar9 = 0;
        *(undefined1 **)(param_1 + 0x24c) = puVar7 + 1;
        *(int *)(param_1 + 0x250) = *(int *)(param_1 + 0x250) + 1;
      }
      param_2 = param_2 - *(short *)(param_3 + 0x26e);
    } while (0xa3f < param_2);
  }
  if (0x3f < param_2) {
    iVar6 = (param_2 >> 6) * 6 + 0x17a;
    iVar10 = param_3 + iVar6;
    uVar8 = (uint)*(ushort *)(param_3 + iVar6);
    uVar1 = *(ushort *)(iVar10 + 2);
    if (uVar5 < uVar8) {
      iVar6 = *(int *)(param_1 + 0x250);
      do {
        uVar8 = uVar8 - uVar5;
        bVar2 = (byte)uVar9;
        uVar9 = 0;
        if (*(int *)(param_1 + 0x248) <= iVar6) {
          TIFFFlushData1(param_1);
        }
        pbVar4 = *(byte **)(param_1 + 0x24c);
        uVar5 = 8;
        *pbVar4 = bVar2 | (byte)(uVar1 >> (uVar8 & 0xff));
        *(byte **)(param_1 + 0x24c) = pbVar4 + 1;
        iVar6 = *(int *)(param_1 + 0x250) + 1;
        *(int *)(param_1 + 0x250) = iVar6;
      } while (8 < uVar8);
    }
    uVar5 = uVar5 - uVar8;
    uVar9 = uVar9 | ((uint)uVar1 & *(uint *)(&DAT_00856250 + uVar8 * 4)) << (uVar5 & 0xff);
    if (uVar5 == 0) {
      if (*(int *)(param_1 + 0x248) <= *(int *)(param_1 + 0x250)) {
        TIFFFlushData1(param_1);
      }
      puVar7 = *(undefined1 **)(param_1 + 0x24c);
      uVar5 = 8;
      *puVar7 = (char)uVar9;
      uVar9 = 0;
      *(undefined1 **)(param_1 + 0x24c) = puVar7 + 1;
      *(int *)(param_1 + 0x250) = *(int *)(param_1 + 0x250) + 1;
    }
    param_2 = param_2 - *(short *)(iVar10 + 4);
  }
  uVar8 = (uint)*(ushort *)(param_3 + param_2 * 6);
  uVar1 = *(ushort *)(param_3 + param_2 * 6 + 2);
  if (uVar5 < uVar8) {
    iVar6 = *(int *)(param_1 + 0x250);
    do {
      uVar8 = uVar8 - uVar5;
      bVar2 = (byte)uVar9;
      uVar9 = 0;
      if (*(int *)(param_1 + 0x248) <= iVar6) {
        TIFFFlushData1(param_1);
      }
      pbVar4 = *(byte **)(param_1 + 0x24c);
      uVar5 = 8;
      *pbVar4 = bVar2 | (byte)(uVar1 >> (uVar8 & 0xff));
      *(byte **)(param_1 + 0x24c) = pbVar4 + 1;
      iVar6 = *(int *)(param_1 + 0x250) + 1;
      *(int *)(param_1 + 0x250) = iVar6;
    } while (8 < uVar8);
  }
  uVar5 = uVar5 - uVar8;
  uVar9 = uVar9 | ((uint)uVar1 & *(uint *)(&DAT_00856250 + uVar8 * 4)) << (uVar5 & 0xff);
  if (uVar5 == 0) {
    if (*(int *)(param_1 + 0x248) <= *(int *)(param_1 + 0x250)) {
      TIFFFlushData1(param_1);
    }
    puVar7 = *(undefined1 **)(param_1 + 0x24c);
    uVar5 = 8;
    *puVar7 = (char)uVar9;
    *(undefined1 **)(param_1 + 0x24c) = puVar7 + 1;
    *(int *)(param_1 + 0x250) = *(int *)(param_1 + 0x250) + 1;
    uVar9 = 0;
  }
  *(uint *)(iVar3 + 0x44) = uVar5;
  *(uint *)(iVar3 + 0x40) = uVar9;
  return;
}

// ---- FUN_0073f838  @ 0x73f838
undefined4 FUN_0073f838(undefined4 param_1,char *param_2,char *param_3,uint param_4)

{
  int iVar1;
  int iVar2;
  uint uVar3;
  uint uVar4;
  uint uVar5;
  uint uVar6;
  
  if (*param_2 < '\0') {
    uVar5 = 0;
  }
  else {
    uVar5 = FUN_0073ea20(param_2,0,param_4);
  }
  if (*param_3 < '\0') {
    uVar6 = 0;
  }
  else {
    uVar6 = FUN_0073ea20(param_3,0,param_4);
  }
  uVar4 = 0;
  while( true ) {
    uVar3 = param_4;
    if (uVar6 < param_4) {
      if (((int)(uint)(byte)param_3[uVar6 >> 3] >> (~uVar6 & 7) & 1U) == 0) {
        iVar1 = FUN_0073ea20(param_3,uVar6,param_4);
      }
      else {
        iVar1 = FUN_0073ebfc(param_3,uVar6,param_4);
      }
      uVar3 = iVar1 + uVar6;
    }
    if (uVar3 < uVar5) {
      FUN_0073f3b0(param_1,1,4);
      uVar4 = uVar3;
    }
    else if ((uVar6 - uVar5) + 3 < 7) {
      iVar1 = (uVar6 - uVar5) * 6;
      FUN_0073f3b0(param_1,*(undefined2 *)(&DAT_00856288 + iVar1),
                   *(undefined2 *)(&DAT_00856286 + iVar1));
      uVar4 = uVar5;
    }
    else {
      uVar6 = param_4;
      if (uVar5 < param_4) {
        if (((int)(uint)(byte)param_2[uVar5 >> 3] >> (~uVar5 & 7) & 1U) == 0) {
          iVar1 = FUN_0073ea20(param_2,uVar5,param_4);
        }
        else {
          iVar1 = FUN_0073ebfc(param_2,uVar5,param_4);
        }
        uVar6 = iVar1 + uVar5;
      }
      FUN_0073f3b0(param_1,1,3);
      if ((uVar5 + uVar4 == 0) || (((int)(uint)(byte)param_2[uVar4 >> 3] >> (~uVar4 & 7) & 1U) == 0)
         ) {
        FUN_0073f548(param_1,uVar5 - uVar4,TIFFFaxWhiteCodes);
        FUN_0073f548(param_1,uVar6 - uVar5,TIFFFaxBlackCodes);
        uVar4 = uVar6;
      }
      else {
        FUN_0073f548(param_1,uVar5 - uVar4,TIFFFaxBlackCodes);
        FUN_0073f548(param_1,uVar6 - uVar5,TIFFFaxWhiteCodes);
        uVar4 = uVar6;
      }
    }
    if (param_4 <= uVar4) break;
    uVar6 = ~uVar4 & 7;
    if (((int)(uint)(byte)param_2[uVar4 >> 3] >> uVar6 & 1U) == 0) {
      iVar1 = FUN_0073ea20(param_2,uVar4,param_4);
    }
    else {
      iVar1 = FUN_0073ebfc(param_2,uVar4,param_4);
    }
    uVar5 = iVar1 + uVar4;
    if (((int)(uint)(byte)param_2[uVar4 >> 3] >> uVar6 & 1U) == 0) {
      iVar1 = FUN_0073ebfc(param_3,uVar4,param_4);
    }
    else {
      iVar1 = FUN_0073ea20(param_3,uVar4,param_4);
    }
    iVar1 = iVar1 + uVar4;
    if (((int)(uint)(byte)param_2[uVar4 >> 3] >> uVar6 & 1U) == 0) {
      iVar2 = FUN_0073ea20(param_3,iVar1,param_4);
      uVar6 = iVar2 + iVar1;
    }
    else {
      iVar2 = FUN_0073ebfc(param_3,iVar1,param_4);
      uVar6 = iVar2 + iVar1;
    }
  }
  return 1;
}

// ---- FUN_0073fb40  @ 0x73fb40
undefined4 FUN_0073fb40(int param_1,undefined4 param_2,uint param_3,undefined4 param_4)

{
  int iVar1;
  undefined1 *puVar2;
  uint uVar3;
  int iVar4;
  
  iVar4 = *(int *)(param_1 + 0x238);
  uVar3 = 0;
  do {
    iVar1 = FUN_0073ea20(param_2,uVar3,param_3);
    uVar3 = iVar1 + uVar3;
    FUN_0073f548(param_1,iVar1,TIFFFaxWhiteCodes,iVar1,param_4);
    if (param_3 <= uVar3) break;
    iVar1 = FUN_0073ebfc(param_2,uVar3,param_3);
    uVar3 = iVar1 + uVar3;
    FUN_0073f548(param_1,iVar1,TIFFFaxBlackCodes,iVar1,param_4);
  } while (uVar3 < param_3);
  uVar3 = *(uint *)(iVar4 + 4);
  if ((uVar3 & 0xc) != 0) {
    if (*(int *)(iVar4 + 0x44) != 8) {
      if (*(int *)(param_1 + 0x248) <= *(int *)(param_1 + 0x250)) {
        TIFFFlushData1(param_1);
      }
      puVar2 = *(undefined1 **)(param_1 + 0x24c);
      *puVar2 = (char)*(undefined4 *)(iVar4 + 0x40);
      *(undefined1 **)(param_1 + 0x24c) = puVar2 + 1;
      *(int *)(param_1 + 0x250) = *(int *)(param_1 + 0x250) + 1;
      uVar3 = *(uint *)(iVar4 + 4);
      *(undefined4 *)(iVar4 + 0x40) = 0;
      *(undefined4 *)(iVar4 + 0x44) = 8;
    }
    if (((uVar3 & 8) != 0) && (puVar2 = *(undefined1 **)(param_1 + 0x24c), ((uint)puVar2 & 1) != 0))
    {
      if (*(int *)(param_1 + 0x248) <= *(int *)(param_1 + 0x250)) {
        TIFFFlushData1(param_1);
        puVar2 = *(undefined1 **)(param_1 + 0x24c);
      }
      *puVar2 = (char)*(undefined4 *)(iVar4 + 0x40);
      *(undefined1 **)(param_1 + 0x24c) = puVar2 + 1;
      *(int *)(param_1 + 0x250) = *(int *)(param_1 + 0x250) + 1;
      *(undefined4 *)(iVar4 + 0x44) = 8;
      *(undefined4 *)(iVar4 + 0x40) = 0;
    }
  }
  return 1;
}

// ---- FUN_0073fc9c  @ 0x73fc9c
undefined4 FUN_0073fc9c(int param_1)

{
  undefined1 *puVar1;
  int iVar2;
  
  iVar2 = *(int *)(param_1 + 0x238);
  if (*(int *)(iVar2 + 0x44) != 8) {
    if (*(int *)(param_1 + 0x248) <= *(int *)(param_1 + 0x250)) {
      TIFFFlushData1();
    }
    puVar1 = *(undefined1 **)(param_1 + 0x24c);
    *puVar1 = (char)*(undefined4 *)(iVar2 + 0x40);
    *(undefined1 **)(param_1 + 0x24c) = puVar1 + 1;
    *(int *)(param_1 + 0x250) = *(int *)(param_1 + 0x250) + 1;
    *(undefined4 *)(iVar2 + 0x44) = 8;
    *(undefined4 *)(iVar2 + 0x40) = 0;
  }
  return 1;
}

// ---- FUN_0073fd00  @ 0x73fd00
undefined4 FUN_0073fd00(int param_1)

{
  undefined1 *puVar1;
  int iVar2;
  
  iVar2 = *(int *)(param_1 + 0x238);
  FUN_0073f3b0(param_1,1,0xc);
  FUN_0073f3b0(param_1,1,0xc);
  if (*(int *)(iVar2 + 0x44) != 8) {
    if (*(int *)(param_1 + 0x248) <= *(int *)(param_1 + 0x250)) {
      TIFFFlushData1(param_1);
    }
    puVar1 = *(undefined1 **)(param_1 + 0x24c);
    *puVar1 = (char)*(undefined4 *)(iVar2 + 0x40);
    *(undefined1 **)(param_1 + 0x24c) = puVar1 + 1;
    *(int *)(param_1 + 0x250) = *(int *)(param_1 + 0x250) + 1;
    *(undefined4 *)(iVar2 + 0x44) = 8;
    *(undefined4 *)(iVar2 + 0x40) = 0;
  }
  return 1;
}

// ---- FUN_0073fd84  @ 0x73fd84
undefined4 FUN_0073fd84(int param_1,void *param_2,int param_3)

{
  byte bVar1;
  uint uVar2;
  int iVar3;
  byte *pbVar4;
  uint uVar5;
  int iVar6;
  undefined1 *puVar7;
  int iVar8;
  uint uVar9;
  uint uVar10;
  
  iVar8 = *(int *)(param_1 + 0x238);
  if (param_3 < 1) {
    return 1;
  }
  do {
    if ((*(uint *)(iVar8 + 4) & 2) == 0) {
      iVar3 = *(int *)(param_1 + 0x238);
      uVar5 = *(uint *)(iVar3 + 0x1c);
      uVar2 = *(uint *)(iVar3 + 0x44);
      uVar9 = *(uint *)(iVar3 + 0x40);
      if (((uVar5 & 4) != 0) && (uVar2 != 4)) {
        if ((int)uVar2 < 4) {
          uVar5 = uVar2 + 4;
        }
        else {
          uVar5 = uVar2 - 4;
        }
        if (uVar2 < uVar5) {
          iVar6 = *(int *)(param_1 + 0x250);
          do {
            uVar5 = uVar5 - uVar2;
            if (*(int *)(param_1 + 0x248) <= iVar6) {
              TIFFFlushData1(param_1);
            }
            puVar7 = *(undefined1 **)(param_1 + 0x24c);
            uVar2 = 8;
            *puVar7 = (char)uVar9;
            uVar9 = 0;
            *(undefined1 **)(param_1 + 0x24c) = puVar7 + 1;
            iVar6 = *(int *)(param_1 + 0x250) + 1;
            *(int *)(param_1 + 0x250) = iVar6;
          } while (8 < uVar5);
        }
        uVar2 = uVar2 - uVar5;
        if (uVar2 == 0) {
          if (*(int *)(param_1 + 0x248) <= *(int *)(param_1 + 0x250)) {
            TIFFFlushData1(param_1);
          }
          puVar7 = *(undefined1 **)(param_1 + 0x24c);
          uVar2 = 8;
          *puVar7 = (char)uVar9;
          uVar9 = 0;
          *(undefined1 **)(param_1 + 0x24c) = puVar7 + 1;
          *(int *)(param_1 + 0x250) = *(int *)(param_1 + 0x250) + 1;
        }
        uVar5 = *(uint *)(iVar3 + 0x1c);
      }
      if ((uVar5 & 1) == 0) {
        uVar10 = 0xc;
        uVar5 = 1;
      }
      else {
        uVar10 = 0xd;
        if (*(int *)(iVar3 + 0x5c) == 0) {
          uVar5 = 3;
        }
        else {
          uVar5 = 2;
        }
      }
      if (uVar2 < uVar10) {
        iVar6 = *(int *)(param_1 + 0x250);
        do {
          uVar10 = uVar10 - uVar2;
          bVar1 = (byte)uVar9;
          uVar9 = 0;
          if (*(int *)(param_1 + 0x248) <= iVar6) {
            TIFFFlushData1(param_1);
          }
          pbVar4 = *(byte **)(param_1 + 0x24c);
          uVar2 = 8;
          *pbVar4 = bVar1 | (byte)(uVar5 >> (uVar10 & 0xff));
          *(byte **)(param_1 + 0x24c) = pbVar4 + 1;
          iVar6 = *(int *)(param_1 + 0x250) + 1;
          *(int *)(param_1 + 0x250) = iVar6;
        } while (8 < uVar10);
      }
      uVar2 = uVar2 - uVar10;
      uVar9 = uVar9 | (uVar5 & *(uint *)(&DAT_00856250 + uVar10 * 4)) << (uVar2 & 0xff);
      if (uVar2 == 0) {
        if (*(int *)(param_1 + 0x248) <= *(int *)(param_1 + 0x250)) {
          TIFFFlushData1(param_1);
        }
        puVar7 = *(undefined1 **)(param_1 + 0x24c);
        uVar2 = 8;
        *puVar7 = (char)uVar9;
        *(undefined1 **)(param_1 + 0x24c) = puVar7 + 1;
        *(int *)(param_1 + 0x250) = *(int *)(param_1 + 0x250) + 1;
        uVar9 = 0;
      }
      *(uint *)(iVar3 + 0x44) = uVar2;
      *(uint *)(iVar3 + 0x40) = uVar9;
    }
    if ((*(uint *)(iVar8 + 0x1c) & 1) == 0) {
      iVar3 = FUN_0073fb40(param_1,param_2,*(undefined4 *)(iVar8 + 0xc));
      if (iVar3 == 0) {
        return 0;
      }
LAB_0073fee8:
      iVar3 = *(int *)(iVar8 + 8);
    }
    else {
      if (*(int *)(iVar8 + 0x5c) == 0) {
        iVar3 = FUN_0073fb40(param_1,param_2,*(undefined4 *)(iVar8 + 0xc));
        if (iVar3 == 0) {
          return 0;
        }
        *(undefined4 *)(iVar8 + 0x5c) = 1;
        iVar3 = *(int *)(iVar8 + 100);
      }
      else {
        iVar3 = FUN_0073f838(param_1,param_2,*(undefined4 *)(iVar8 + 0x60),
                             *(undefined4 *)(iVar8 + 0xc));
        if (iVar3 == 0) {
          return 0;
        }
        iVar3 = *(int *)(iVar8 + 100) + -1;
        *(int *)(iVar8 + 100) = iVar3;
      }
      if (iVar3 == 0) {
        *(undefined4 *)(iVar8 + 0x5c) = 0;
        *(int *)(iVar8 + 100) = *(int *)(iVar8 + 0x68) + -1;
        goto LAB_0073fee8;
      }
      _TIFFmemcpy(*(void **)(iVar8 + 0x60),param_2,*(size_t *)(iVar8 + 8));
      iVar3 = *(int *)(iVar8 + 8);
    }
    param_3 = param_3 - iVar3;
    if (param_3 < 1) {
      return 1;
    }
    param_2 = (void *)((int)param_2 + iVar3);
  } while( true );
}
