// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 227 functions

// ---- FUN_00790fd4  @ 0x790fd4
undefined4 FUN_00790fd4(int param_1,int param_2,int param_3)

{
  int iVar1;
  
  if (0 < param_3) {
    iVar1 = 0;
    do {
      if (*(short *)(_toupper_tab_ + (uint)*(byte *)(param_1 + iVar1) * 2 + 2) !=
          *(short *)(_toupper_tab_ + (uint)*(byte *)(param_2 + iVar1) * 2 + 2)) {
        return 1;
      }
      iVar1 = iVar1 + 1;
    } while (iVar1 < param_3);
  }
  return 0;
}

// ---- FUN_00791b64  @ 0x791b64
void FUN_00791b64(int param_1,undefined4 *param_2,int param_3,int param_4,code *param_5)

{
  int iVar1;
  int iVar2;
  undefined4 uVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  undefined4 *puVar7;
  int *piVar8;
  undefined4 *puVar9;
  int iVar10;
  uint uVar11;
  bool bVar12;
  int aiStack_60 [6];
  int iStack_48;
  undefined4 *puStack_44;
  int iStack_40;
  int iStack_3c;
  int iStack_38;
  int iStack_34;
  int *piStack_30;
  int iStack_2c;
  
  iStack_2c = __stack_chk_guard;
  piVar8 = (int *)*param_2;
  iVar1 = *(int *)(param_1 + 0x24) >> 1;
  iVar6 = piVar8[1];
  if (iVar1 <= piVar8[1]) {
    iVar6 = iVar1;
  }
  iStack_3c = param_3;
  if (0 < iVar6 - *piVar8) {
    iStack_38 = piVar8[2];
    aiStack_60[3] = *(int *)param_2[5];
    piStack_30 = piVar8;
    aiStack_60[4] = __divsi3();
    iVar1 = -(param_4 * 4 + 7U & 0xfffffff8);
    puVar7 = (undefined4 *)((int)aiStack_60 + iVar1 + 8);
    if (0 < param_4) {
      iVar2 = __divsi3(aiStack_60[4] + aiStack_60[3] + -1);
      iVar6 = param_4;
      puVar9 = puVar7;
      do {
        uVar3 = _vorbis_block_alloc(param_1,iVar2 << 2);
        *puVar9 = uVar3;
        iVar6 = iVar6 + -1;
        puVar9 = puVar9 + 1;
      } while (iVar6 != 0);
    }
    piVar8 = piStack_30;
    iVar6 = param_2[3];
    puStack_44 = puVar7;
    if (0 < iVar6) {
      uVar11 = 0;
      iStack_34 = param_1 + 4;
      do {
        if (0 < aiStack_60[4]) {
          iVar6 = 0;
          iVar2 = 0;
          piStack_30 = (int *)(1 << (uVar11 & 0xff));
          do {
            aiStack_60[5] = iVar6;
            if ((uVar11 == 0) && (iVar6 = 0, 0 < param_4)) {
              do {
                iVar4 = vorbis_book_decode(param_2[5],iStack_34);
                if ((iVar4 == -1) ||
                   ((piVar8[4] <= iVar4 ||
                    (iVar4 = *(int *)(param_2[8] + iVar4 * 4),
                    *(int *)(puVar7[iVar6] + iVar2 * 4) = iVar4, iVar4 == 0)))) goto LAB_00791d84;
                iVar6 = iVar6 + 1;
              } while (iVar6 < param_4);
            }
            iVar6 = aiStack_60[5];
            if ((0 < aiStack_60[3]) && (aiStack_60[5] < aiStack_60[4])) {
              iVar4 = 0;
              do {
                iStack_40 = iVar4;
                aiStack_60[5] = iVar6;
                if (0 < param_4) {
                  iVar10 = 0;
                  iStack_48 = iVar6 * iStack_38;
                  do {
                    iVar6 = *(int *)(*(int *)(puVar7[iVar10] + iVar2 * 4) + iVar4 * 4);
                    if (((piVar8[iVar6 + 6] & (uint)piStack_30) != 0) &&
                       (iVar6 = *(int *)(*(int *)(param_2[6] + iVar6 * 4) + uVar11 * 4), iVar6 != 0)
                       ) {
                      iVar4 = *piVar8 + iStack_48;
                      iVar5 = *(int *)(iStack_3c + iVar10 * 4);
                      *(undefined4 *)((int)aiStack_60 + iVar1) = 0xfffffff8;
                      iVar6 = (*param_5)(iVar6,iVar5 + iVar4 * 4,iStack_34,iStack_38);
                      iVar4 = iStack_40;
                      puVar7 = puStack_44;
                      if (iVar6 == -1) goto LAB_00791d84;
                    }
                    iVar10 = iVar10 + 1;
                  } while (iVar10 < param_4);
                }
                iVar4 = iVar4 + 1;
                iVar6 = aiStack_60[5] + 1;
                bVar12 = SBORROW4(iVar4,aiStack_60[3]);
                iVar10 = iVar4 - aiStack_60[3];
                if (iVar4 < aiStack_60[3]) {
                  bVar12 = SBORROW4(iVar6,aiStack_60[4]);
                  iVar10 = iVar6 - aiStack_60[4];
                }
              } while (iVar10 < 0 != bVar12);
            }
            iVar2 = iVar2 + 1;
          } while (iVar6 < aiStack_60[4]);
          iVar6 = param_2[3];
        }
        uVar11 = uVar11 + 1;
      } while ((int)uVar11 < iVar6);
    }
  }
LAB_00791d84:
  if (__stack_chk_guard != iStack_2c) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}

// ---- FUN_00793200  @ 0x793200
void FUN_00793200(int *param_1,int param_2,int param_3,code *UNRECOVERED_JUMPTABLE,int param_5)

{
  byte bVar1;
  int iVar2;
  int iVar3;
  
  iVar2 = (int)(param_3 + ((uint)(param_3 >> 0x1f) >> 0x1d)) >> 3;
  if (param_1[1] == 0) {
    iVar3 = param_1[3];
    if (param_1[4] <= *param_1 + iVar2 + 1) {
      if ((iVar3 == 0) || (iVar3 = *param_1 + iVar2 + 0x100, param_1[4] < iVar3)) {
LAB_007932c0:
        if (param_1[2] != 0) {
          CK_free();
        }
        __aeabi_memset(param_1,0x14,0);
        return;
      }
      param_1[4] = iVar3;
      iVar3 = CK_realloc(param_1[2]);
      if (iVar3 == 0) goto LAB_007932c0;
      param_1[2] = iVar3;
      iVar3 = iVar3 + *param_1;
      param_1[3] = iVar3;
    }
    __aeabi_memmove(iVar3,param_2,iVar2);
    iVar3 = param_1[3];
    param_1[3] = iVar3 + iVar2;
    *param_1 = *param_1 + iVar2;
    *(undefined1 *)(iVar3 + iVar2) = 0;
  }
  else if (7 < param_3) {
    iVar3 = 0;
    do {
      (*UNRECOVERED_JUMPTABLE)(param_1,*(undefined1 *)(param_2 + iVar3),8);
      iVar3 = iVar3 + 1;
    } while (iVar3 < iVar2);
  }
  if ((param_3 / 8) * 8 == param_3) {
    return;
  }
  bVar1 = *(byte *)(param_2 + iVar2);
  if (param_5 != 0) {
    bVar1 = bVar1 >> (8U - param_3 % 8 & 0xff);
  }
                    /* WARNING: Could not recover jumptable at 0x007932be. Too many branches */
                    /* WARNING: Treating indirect jump as call */
  (*UNRECOVERED_JUMPTABLE)(param_1,bVar1,param_3 % 8);
  return;
}

// ---- FUN_00793a48  @ 0x793a48
uint FUN_00793a48(int param_1,undefined4 param_2)

{
  int iVar1;
  uint uVar2;
  int iVar3;
  uint uVar4;
  uint uVar5;
  int iVar6;
  
  iVar6 = *(int *)(param_1 + 0x28);
  iVar1 = oggpack_look(param_2,*(undefined4 *)(param_1 + 0x24));
  if (iVar1 < 0) {
    iVar1 = *(int *)(param_1 + 8);
    uVar5 = 0;
LAB_00793a92:
    uVar2 = oggpack_look(param_2,iVar6);
    while ((0x7fffffff < uVar2 && (1 < iVar6))) {
      iVar6 = iVar6 + -1;
      uVar2 = oggpack_look(param_2,iVar6);
    }
    if ((int)uVar2 < 0) {
      iVar6 = 1;
    }
    else {
      iVar3 = iVar1 - uVar5;
      if (1 < iVar3) {
        uVar2 = uVar2 >> 0x10 | uVar2 << 0x10;
        uVar2 = uVar2 >> 8 & 0xff00ff | (uVar2 & 0xff00ff) << 8;
        uVar2 = uVar2 >> 4 & 0xf0f0f0f | (uVar2 & 0xf0f0f0f) << 4;
        uVar2 = uVar2 >> 2 & 0x33333333 | (uVar2 & 0x33333333) << 2;
        do {
          uVar4 = uVar5 + (iVar3 >> 1);
          if ((uVar2 >> 1 & 0x55555555 | (uVar2 & 0x55555555) << 1) <
              *(uint *)(*(int *)(param_1 + 0x14) + uVar4 * 4)) {
            iVar1 = iVar1 - (iVar3 >> 1);
            uVar4 = uVar5;
          }
          uVar5 = uVar4;
          iVar3 = iVar1 - uVar5;
        } while (1 < iVar3);
      }
      uVar2 = (uint)*(byte *)(*(int *)(param_1 + 0x1c) + uVar5);
      if ((int)uVar2 <= iVar6) goto LAB_00793b48;
      iVar6 = iVar6 + 1;
    }
    oggpack_adv(param_2,iVar6);
    uVar5 = 0xffffffff;
  }
  else {
    uVar2 = *(uint *)(*(int *)(param_1 + 0x20) + iVar1 * 4);
    if ((int)uVar2 < 0) {
      uVar5 = (uVar2 & 0x3fffffff) >> 0xf;
      iVar1 = *(int *)(param_1 + 8) - (uVar2 & 0x7fff);
      goto LAB_00793a92;
    }
    uVar5 = uVar2 - 1;
    uVar2 = (uint)*(byte *)(*(int *)(param_1 + 0x1c) + uVar5);
LAB_00793b48:
    oggpack_adv(param_2,uVar2);
  }
  return uVar5;
}

// ---- FUN_007943c0  @ 0x7943c0
int * FUN_007943c0(int param_1,undefined4 param_2)

{
  int *piVar1;
  int iVar2;
  int *piVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  bool bVar7;
  
  iVar6 = *(int *)(param_1 + 0x1c);
  piVar1 = (int *)CK_malloc(0x58);
  iVar2 = oggpack_read(param_2,8);
  *piVar1 = iVar2;
  iVar2 = oggpack_read(param_2,0x10);
  piVar1[1] = iVar2;
  iVar2 = oggpack_read(param_2,0x10);
  piVar1[2] = iVar2;
  iVar2 = oggpack_read(param_2,6);
  piVar1[3] = iVar2;
  iVar2 = oggpack_read(param_2,8);
  piVar1[4] = iVar2;
  iVar2 = oggpack_read(param_2,4);
  piVar1[5] = iVar2 + 1;
  iVar4 = *piVar1;
  if (0 < iVar4) {
    iVar4 = piVar1[1];
  }
  if (0 < iVar4) {
    iVar5 = piVar1[2];
    iVar4 = iVar5 + -1;
    if (iVar5 >= 1) {
      iVar4 = iVar2;
    }
    bVar7 = iVar5 < 1 && SBORROW4(iVar5,1);
    if (iVar4 < 0 == bVar7) {
      if (iVar4 < 0 != bVar7) {
        return piVar1;
      }
      iVar2 = 0;
      while( true ) {
        iVar4 = oggpack_read(param_2,8);
        piVar1[iVar2 + 6] = iVar4;
        if ((((iVar4 < 0) || (*(int *)(iVar6 + 0x1c) <= iVar4)) ||
            (piVar3 = *(int **)(iVar6 + 0x820 + iVar4 * 4), piVar3[3] == 0)) || (*piVar3 < 1))
        break;
        iVar2 = iVar2 + 1;
        if (piVar1[5] <= iVar2) {
          return piVar1;
        }
      }
    }
  }
  if (piVar1 != (int *)0x0) {
    __aeabi_memset(piVar1,0x58,0);
    CK_free(piVar1);
  }
  return (int *)0x0;
}

// ---- FUN_00794478  @ 0x794478
int * FUN_00794478(int param_1,int *param_2,int *param_3)

{
  int *piVar1;
  int iVar2;
  int iVar3;
  uint uVar4;
  char *pcVar5;
  uint uVar6;
  int iVar7;
  int iVar8;
  int iVar9;
  int iVar10;
  int iVar11;
  int iVar12;
  
  iVar7 = *(int *)(*(int *)(param_1 + 4) + 0x1c);
  piVar1 = (int *)CK_calloc(1,0x18);
  piVar1[2] = *param_3;
  iVar7 = *(int *)(iVar7 + *param_2 * 4) / 2;
  *piVar1 = iVar7;
  piVar1[1] = param_3[2];
  piVar1[4] = (int)param_3;
  iVar7 = CK_malloc(iVar7 * 4 + 4);
  piVar1[3] = iVar7;
  iVar12 = *piVar1;
  if (iVar12 < 1) {
    iVar12 = 0;
  }
  else {
    iVar8 = 0;
    iVar9 = param_3[1] / 2;
    do {
      iVar2 = __divsi3(iVar9 * iVar8,iVar12);
      iVar11 = piVar1[1];
      iVar10 = 0;
      do {
        if (((int)(&DAT_0087decc)[iVar10] <= iVar2) && (iVar2 < (int)(&DAT_0087ded0)[iVar10]))
        break;
        iVar10 = iVar10 + 1;
      } while (iVar10 < 0x1b);
      if (iVar10 == 0x1b) {
        iVar2 = 0x6c000000;
      }
      else {
        iVar2 = __divsi3((iVar2 - (&DAT_0087decc)[iVar10]) * 0x8000,
                         (&DAT_0087ded0)[iVar10] - (&DAT_0087decc)[iVar10]);
        iVar2 = (iVar2 + iVar10 * 0x8000) * 0x800;
      }
      iVar10 = 0;
      do {
        if (((int)(&DAT_0087decc)[iVar10] <= iVar9) && (iVar9 < (int)(&DAT_0087ded0)[iVar10]))
        break;
        iVar10 = iVar10 + 1;
      } while (iVar10 < 0x1b);
      if (iVar10 == 0x1b) {
        pcVar5 = "ientResultHandlerD1Ev";
      }
      else {
        iVar3 = __divsi3((iVar9 - (&DAT_0087decc)[iVar10]) * 0x8000,
                         (&DAT_0087ded0)[iVar10] - (&DAT_0087decc)[iVar10]);
        pcVar5 = (char *)(iVar3 + iVar10 * 0x8000);
      }
      iVar2 = __divsi3(iVar2,pcVar5);
      iVar10 = iVar2 * iVar11 >> 0xb;
      iVar2 = iVar11 + -1;
      if (iVar10 < iVar11) {
        iVar2 = iVar10;
      }
      *(int *)(iVar7 + iVar8 * 4) = iVar2;
      iVar8 = iVar8 + 1;
    } while (iVar8 < iVar12);
    if (iVar12 < 2) {
      iVar12 = 1;
    }
  }
  *(undefined4 *)(iVar7 + iVar12 * 4) = 0xffffffff;
  iVar7 = CK_malloc(piVar1[1] << 2);
  piVar1[5] = iVar7;
  if (0 < piVar1[1]) {
    iVar12 = 0;
    iVar8 = 0;
    do {
      uVar4 = __divsi3(iVar12);
      uVar4 = uVar4 & 0x1ffff;
      iVar12 = iVar12 + 0x10000;
      if (0x10000 < uVar4) {
        uVar4 = 0x20000 - uVar4;
      }
      uVar6 = (uVar4 & 0x3ffff) >> 9;
      *(int *)(iVar7 + iVar8 * 4) =
           (int)(*(int *)(&DAT_0087dcc8 + uVar6 * 4) * 0x200 -
                (*(int *)(&DAT_0087dcc8 + uVar6 * 4) - *(int *)(&DAT_0087dccc + uVar6 * 4)) *
                (uVar4 & 0x1ff)) >> 9;
      iVar8 = iVar8 + 1;
    } while (iVar8 < piVar1[1]);
  }
  return piVar1;
}

// ---- FUN_00794620  @ 0x794620
void FUN_00794620(int param_1)

{
  if (param_1 == 0) {
    return;
  }
  __aeabi_memset(param_1,0x58,0);
  CK_free(param_1);
  return;
}

// ---- FUN_00794f98  @ 0x794f98
int * FUN_00794f98(int param_1,undefined4 param_2)

{
  int *piVar1;
  int iVar2;
  int iVar3;
  uint uVar4;
  uint uVar5;
  int iVar6;
  int iVar7;
  uint uVar8;
  int *piVar9;
  
  piVar1 = (int *)CK_calloc(1,0xc90);
  iVar2 = *(int *)(param_1 + 0x1c);
  __aeabi_memset(piVar1,0xc90,0);
  iVar3 = oggpack_read(param_2,1);
  if (-1 < iVar3) {
    if (iVar3 == 0) {
      *piVar1 = 1;
    }
    else {
      iVar3 = oggpack_read(param_2,4);
      *piVar1 = iVar3 + 1;
      if (iVar3 < 0) goto LAB_00795120;
    }
    iVar3 = oggpack_read(param_2,1);
    if (-1 < iVar3) {
      if (iVar3 != 0) {
        iVar3 = oggpack_read(param_2,8);
        piVar1[0x123] = iVar3 + 1;
        if (iVar3 < 0) goto LAB_0079511c;
        uVar8 = *(uint *)(param_1 + 4);
        iVar3 = 0;
        do {
          if (uVar8 != 0) {
            uVar8 = uVar8 - 1;
          }
          iVar7 = 0;
          for (; uVar8 != 0; uVar8 = uVar8 >> 1) {
            iVar7 = iVar7 + 1;
          }
          uVar4 = oggpack_read(param_2,iVar7);
          iVar7 = 0;
          piVar1[iVar3 + 0x124] = uVar4;
          uVar8 = *(uint *)(param_1 + 4);
          if (uVar8 != 0) {
            uVar8 = uVar8 - 1;
          }
          for (; uVar8 != 0; uVar8 = uVar8 >> 1) {
            iVar7 = iVar7 + 1;
          }
          uVar5 = oggpack_read(param_2,iVar7);
          piVar1[iVar3 + 0x224] = uVar5;
          if (((((int)(uVar5 | uVar4) < 0) || (uVar4 == uVar5)) ||
              (uVar8 = *(uint *)(param_1 + 4), (int)uVar8 <= (int)uVar4)) ||
             ((int)uVar8 <= (int)uVar5)) goto LAB_0079511c;
          iVar3 = iVar3 + 1;
        } while (iVar3 < piVar1[0x123]);
      }
      iVar3 = oggpack_read(param_2,2);
      if (iVar3 == 0) {
        iVar3 = *piVar1;
        if (iVar3 < 2) {
LAB_007950c4:
          if (iVar3 < 1) {
            return piVar1;
          }
        }
        else if (0 < *(int *)(param_1 + 4)) {
          iVar7 = 0;
          do {
            iVar6 = oggpack_read(param_2,4);
            piVar1[iVar7 + 1] = iVar6;
            iVar3 = *piVar1;
            if ((iVar3 <= iVar6) || (iVar6 < 0)) goto LAB_00795120;
            iVar7 = iVar7 + 1;
          } while (iVar7 < *(int *)(param_1 + 4));
          goto LAB_007950c4;
        }
        piVar9 = piVar1 + 0x111;
        iVar3 = 0;
        while (iVar7 = oggpack_read(param_2,8), iVar7 < *(int *)(iVar2 + 0x10)) {
          iVar7 = oggpack_read(param_2,8);
          piVar9[-0x10] = iVar7;
          if ((*(int *)(iVar2 + 0x14) <= iVar7) || (iVar7 < 0)) break;
          iVar7 = oggpack_read(param_2,8);
          *piVar9 = iVar7;
          if ((*(int *)(iVar2 + 0x18) <= iVar7) || (iVar7 < 0)) break;
          iVar3 = iVar3 + 1;
          piVar9 = piVar9 + 1;
          if (*piVar1 <= iVar3) {
            return piVar1;
          }
        }
      }
    }
  }
LAB_0079511c:
  if (piVar1 == (int *)0x0) {
    return (int *)0x0;
  }
LAB_00795120:
  __aeabi_memset(piVar1,0xc90,0);
  CK_free(piVar1);
  return (int *)0x0;
}

// ---- FUN_00795140  @ 0x795140
undefined4 * FUN_00795140(int param_1,undefined4 param_2,int *param_3)

{
  int iVar1;
  undefined4 *puVar2;
  undefined4 uVar3;
  int iVar4;
  int *piVar5;
  int iVar6;
  int iVar7;
  int iVar8;
  
  iVar1 = *(int *)(param_1 + 4);
  iVar6 = *(int *)(iVar1 + 0x1c);
  puVar2 = (undefined4 *)CK_calloc(1,0x20);
  *puVar2 = param_2;
  puVar2[1] = param_3;
  uVar3 = CK_calloc(*param_3,4);
  puVar2[2] = uVar3;
  uVar3 = CK_calloc(*param_3,4);
  puVar2[3] = uVar3;
  uVar3 = CK_calloc(*param_3,4);
  puVar2[4] = uVar3;
  uVar3 = CK_calloc(*param_3,4);
  puVar2[5] = uVar3;
  if (0 < *param_3) {
    iVar8 = 0;
    piVar5 = param_3 + 0x111;
    do {
      iVar4 = piVar5[-0x10];
      iVar7 = *piVar5;
      *(undefined4 *)(puVar2[4] + iVar8 * 4) =
           *(undefined4 *)((int)&_floor_P + *(int *)(iVar6 + 0x420 + iVar4 * 4) * 4);
      uVar3 = (**(code **)(*(int *)(puVar2[4] + iVar8 * 4) + 4))
                        (param_1,param_2,*(undefined4 *)(iVar6 + 0x520 + iVar4 * 4));
      *(undefined4 *)(puVar2[2] + iVar8 * 4) = uVar3;
      *(undefined4 *)(puVar2[5] + iVar8 * 4) =
           *(undefined4 *)(_residue_P + *(int *)(iVar6 + 0x620 + iVar7 * 4) * 4);
      uVar3 = (**(code **)(*(int *)(puVar2[5] + iVar8 * 4) + 4))
                        (param_1,param_2,*(undefined4 *)(iVar6 + 0x720 + iVar7 * 4));
      piVar5 = piVar5 + 1;
      *(undefined4 *)(puVar2[3] + iVar8 * 4) = uVar3;
      iVar8 = iVar8 + 1;
    } while (iVar8 < *param_3);
  }
  puVar2[6] = *(undefined4 *)(iVar1 + 4);
  return puVar2;
}

// ---- FUN_00795248  @ 0x795248
void FUN_00795248(int param_1)

{
  if (param_1 == 0) {
    return;
  }
  __aeabi_memset(param_1,0xc90,0);
  CK_free(param_1);
  return;
}

// ---- FUN_00795268  @ 0x795268
void FUN_00795268(int param_1)

{
  int iVar1;
  int iVar2;
  
  if (param_1 == 0) {
    return;
  }
  iVar1 = *(int *)(param_1 + 0x10);
  if (0 < **(int **)(param_1 + 4)) {
    iVar2 = 0;
    do {
      (**(code **)(*(int *)(iVar1 + iVar2 * 4) + 0xc))
                (*(undefined4 *)(*(int *)(param_1 + 8) + iVar2 * 4));
      (**(code **)(*(int *)(*(int *)(param_1 + 0x14) + iVar2 * 4) + 0xc))
                (*(undefined4 *)(*(int *)(param_1 + 0xc) + iVar2 * 4));
      iVar2 = iVar2 + 1;
      iVar1 = *(int *)(param_1 + 0x10);
    } while (iVar2 < **(int **)(param_1 + 4));
  }
  CK_free();
  CK_free(*(undefined4 *)(param_1 + 0x14));
  CK_free(*(undefined4 *)(param_1 + 8));
  CK_free(*(undefined4 *)(param_1 + 0xc));
  __aeabi_memset(param_1,0x20,0);
  CK_free(param_1);
  return;
}

// ---- FUN_00797264  @ 0x797264
void FUN_00797264(byte *param_1,uint *param_2)

{
  uint uVar1;
  uint uVar2;
  uint uVar3;
  uint uVar4;
  
  uVar4 = 0;
  uVar3 = 0;
  do {
    uVar2 = (uint)*param_1;
    uVar1 = uVar3 & 0xff;
    uVar3 = uVar3 + 7;
    uVar4 = uVar4 | (uVar2 & 0x7f) << uVar1;
    param_1 = param_1 + 1;
  } while ((int)(uVar2 << 0x18) < 0);
  if ((uVar3 < 0x20) && ((int)(uVar2 << 0x19) < 0)) {
    uVar4 = uVar4 | -1 << (uVar3 & 0xff);
  }
  *param_2 = uVar4;
  return;
}

// ---- FUN_00797294  @ 0x797294
ushort * FUN_00797294(uint param_1,ushort *param_2,ushort *param_3,int *param_4)

{
  uint uVar1;
  ushort uVar2;
  ushort *puVar3;
  ushort *puVar4;
  int *piVar5;
  uint uVar6;
  byte *local_1c;
  
  if (param_1 != 0x50) {
    switch(param_1 & 0xf) {
    case 0:
    case 3:
    case 0xb:
      puVar3 = param_3 + 2;
      local_1c = *(byte **)param_3;
      break;
    case 1:
      local_1c = (byte *)0x0;
      uVar6 = 0;
      puVar4 = param_3;
      do {
        puVar3 = (ushort *)((int)puVar4 + 1);
        uVar2 = *puVar4;
        uVar1 = uVar6 & 0xff;
        uVar6 = uVar6 + 7;
        local_1c = (byte *)((uint)local_1c | ((byte)uVar2 & 0x7f) << uVar1);
        puVar4 = puVar3;
      } while (((byte)uVar2 & 0x80) != 0);
      break;
    case 2:
      puVar3 = param_3 + 1;
      local_1c = (byte *)(uint)*param_3;
      break;
    case 4:
    case 0xc:
      puVar3 = param_3 + 4;
      local_1c = *(byte **)param_3;
      break;
    default:
                    /* WARNING: Subroutine does not return */
      abort();
    case 9:
      puVar3 = (ushort *)FUN_00797264(param_3,&local_1c);
      break;
    case 10:
      puVar3 = param_3 + 1;
      local_1c = (byte *)(int)(short)*param_3;
    }
    if (local_1c != (byte *)0x0) {
      if ((param_1 & 0x70) != 0x10) {
        param_3 = param_2;
      }
      local_1c = local_1c + (int)param_3;
      if ((int)(param_1 << 0x18) < 0) {
        local_1c = *(byte **)local_1c;
      }
    }
    *param_4 = (int)local_1c;
    return puVar3;
  }
  piVar5 = (int *)((uint)((int)param_3 + 3) & 0xfffffffc);
  *param_4 = *piVar5;
  return (ushort *)(piVar5 + 1);
}

// ---- FUN_00797344  @ 0x797344
undefined4 FUN_00797344(uint param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  
  if (param_1 == 0xff) {
    return 0;
  }
  param_1 = param_1 & 0x70;
  if (param_1 == 0x20) {
    uVar1 = _Unwind_GetTextRelBase(param_2,param_2,param_3,param_4);
    return uVar1;
  }
  if (param_1 < 0x21) {
    if (param_1 == 0) {
      return 0;
    }
    if (param_1 == 0x10) {
      return 0;
    }
  }
  else {
    if (param_1 == 0x40) {
      uVar1 = _Unwind_GetRegionStart(param_2,param_2,param_3,param_4);
      return uVar1;
    }
    if (param_1 == 0x50) {
      return 0;
    }
    if (param_1 == 0x30) {
      uVar1 = _Unwind_GetDataRelBase(param_2,param_2,param_3,param_4);
      return uVar1;
    }
  }
                    /* WARNING: Subroutine does not return */
  abort();
}

// ---- FUN_00797390  @ 0x797390
void FUN_00797390(int param_1,char *param_2,undefined4 *param_3,undefined4 param_4)

{
  char cVar1;
  byte bVar2;
  uint uVar3;
  undefined4 uVar4;
  byte *pbVar5;
  byte *pbVar6;
  uint uVar7;
  uint uVar8;
  char *pcVar9;
  
  uVar4 = 0;
  if (param_1 != 0) {
    uVar4 = _Unwind_GetRegionStart();
  }
  *param_3 = uVar4;
  pcVar9 = param_2 + 1;
  cVar1 = *param_2;
  if (cVar1 == -1) {
    param_3[1] = uVar4;
  }
  else {
    uVar4 = FUN_00797344(cVar1,param_1);
    pcVar9 = (char *)FUN_00797294(cVar1,uVar4,pcVar9,param_3 + 1,param_4);
  }
  cVar1 = *pcVar9;
  pbVar5 = (byte *)(pcVar9 + 1);
  *(char *)(param_3 + 5) = cVar1;
  if (cVar1 == -1) {
    param_3[3] = 0;
  }
  else {
    uVar7 = 0;
    uVar8 = 0;
    *(undefined1 *)(param_3 + 5) = 0x90;
    pbVar6 = pbVar5;
    do {
      pbVar5 = pbVar6 + 1;
      bVar2 = *pbVar6;
      uVar3 = uVar8 & 0xff;
      uVar8 = uVar8 + 7;
      uVar7 = uVar7 | (bVar2 & 0x7f) << uVar3;
      pbVar6 = pbVar5;
    } while ((int)((uint)bVar2 << 0x18) < 0);
    param_3[3] = pbVar5 + uVar7;
  }
  uVar8 = 0;
  uVar7 = 0;
  *(byte *)((int)param_3 + 0x15) = *pbVar5;
  pbVar5 = pbVar5 + 1;
  do {
    pbVar6 = pbVar5 + 1;
    bVar2 = *pbVar5;
    uVar3 = uVar7 & 0xff;
    uVar7 = uVar7 + 7;
    uVar8 = uVar8 | (bVar2 & 0x7f) << uVar3;
    pbVar5 = pbVar6;
  } while ((int)((uint)bVar2 << 0x18) < 0);
  param_3[4] = pbVar6 + uVar8;
  return;
}

// ---- FUN_007979cc  @ 0x7979cc
bool FUN_007979cc(char *param_1)

{
  if ((((*param_1 == 'G') && (param_1[1] == 'N')) && (param_1[2] == 'U')) &&
     (((param_1[3] == 'C' && (param_1[4] == 'C')) && ((param_1[5] == '+' && (param_1[6] == '+'))))))
  {
    return (byte)param_1[7] < 2;
  }
  return false;
}

// ---- FUN_00797a08  @ 0x797a08
void FUN_00797a08(int param_1)

{
  int iVar1;
  
  if (param_1 != 0) {
    __cxa_begin_catch();
    iVar1 = FUN_007979cc(param_1);
    if (iVar1 != 0) {
                    /* WARNING: Subroutine does not return */
      __cxxabiv1::__terminate(*(_func_void **)(param_1 + -0x14));
    }
  }
                    /* WARNING: Subroutine does not return */
  std::terminate();
}

// ---- FUN_00797b34  @ 0x797b34
pthread_key_t * FUN_00797b34(pthread_key_t *param_1)

{
  if (param_1 != (pthread_key_t *)0x0) {
    if ((char)param_1[1] != '\0') {
      pthread_key_delete(*param_1);
    }
    *(undefined1 *)(param_1 + 1) = 0;
  }
  return param_1;
}

// ---- FUN_00797b50  @ 0x797b50
void FUN_00797b50(int *param_1)

{
  int iVar1;
  int iVar2;
  
  if (param_1 != (int *)0x0) {
    iVar1 = *param_1;
    while (iVar1 != 0) {
      iVar2 = *(int *)(iVar1 + 0x10);
      _Unwind_DeleteException(iVar1 + 0x20);
      iVar1 = iVar2;
    }
    free(param_1);
    return;
  }
  return;
}

// ---- FUN_00798360  @ 0x798360
void FUN_00798360(void)

{
  undefined4 *puVar1;
  undefined4 in_r3;
  
  puVar1 = (undefined4 *)__cxa_allocate_exception(4);
  *puVar1 = &DAT_0093d8b8;
                    /* WARNING: Subroutine does not return */
  __cxa_throw(puVar1,&DAT_0093d898,&LAB_00798308_1,&DAT_0093d8b8,in_r3);
}

// ---- FUN_00798388  @ 0x798388
void FUN_00798388(void)

{
  undefined4 *puVar1;
  undefined4 in_r3;
  
  puVar1 = (undefined4 *)__cxa_allocate_exception(4);
  *puVar1 = &DAT_0093d8d0;
                    /* WARNING: Subroutine does not return */
  __cxa_throw(puVar1,&DAT_0093d8a4,&LAB_007982f0_1,&DAT_0093d8d0,in_r3);
}

// ---- FUN_007985bc  @ 0x7985bc
void FUN_007985bc(undefined4 param_1,undefined4 param_2)

{
  __cxa_atexit(param_2,param_1);
  return;
}

// ---- FUN_00798644  @ 0x798644
undefined4 FUN_00798644(undefined4 param_1)

{
  bool bVar1;
  int iVar2;
  int iVar3;
  
  iVar2 = DAT_00971640;
  DataMemoryBarrier(0x1f);
  do {
    ExclusiveAccess(&DAT_00971640);
    iVar3 = DAT_00971640 + 1;
    bVar1 = (bool)hasExclusiveAccess(&DAT_00971640);
  } while (!bVar1);
  DAT_00971640 = iVar3;
  DataMemoryBarrier(0x1f);
  if (iVar2 == 0) {
    DAT_0094f564 = 1;
    DAT_00971620 = 0;
    DAT_00971618 = &PTR_FUN_00799d5c_1_0093d948;
    DAT_0097161c = 0;
    DAT_00971624 = 0;
    DAT_00971628 = 0;
    DAT_0097162c = 0;
    DAT_00971630 = 0;
    FUN_007adf48(&DAT_00971634);
    DAT_00971618 = &PTR_LAB_007af80c_1_0093e718;
    DAT_0097163c = 0xffffffff;
    DAT_00971638 = recvfrom;
    DAT_009714d4 = &PTR_FUN_00799d5c_1_0093d948;
    DAT_009714d8 = 0;
    DAT_009714dc = 0;
    DAT_009714e0 = 0;
    DAT_009714e4 = 0;
    DAT_009714e8 = 0;
    DAT_009714ec = 0;
    FUN_007adf48(&DAT_009714f0);
    DAT_009714f4 = &__sF;
    DAT_009714d4 = &PTR_LAB_007af80c_1_0093e718;
    DAT_009714f8 = 0xffffffff;
    DAT_00971328 = &PTR_FUN_00799d5c_1_0093d948;
    DAT_0097132c = 0;
    DAT_00971330 = 0;
    DAT_00971334 = 0;
    DAT_00971338 = 0;
    DAT_0097133c = 0;
    DAT_00971340 = 0;
    FUN_007adf48(&DAT_00971344);
    DAT_00971328 = &PTR_LAB_007af80c_1_0093e718;
    DAT_0097134c = 0xffffffff;
    DAT_00971348 = recv;
    FUN_0079a7a0(&DAT_009713bc);
    DAT_0097142c = 0;
    DAT_00971430 = 0;
    DAT_00971431 = 0;
    DAT_00971434 = 0;
    DAT_00971438 = 0;
    DAT_0097143c = 0;
    DAT_00971440 = 0;
    DAT_009713b8 = &DAT_0093eee4;
    DAT_009713bc = &PTR_LAB_007bb0a0_1_0093eef8;
    FUN_007990d4(&DAT_009713bc,&DAT_00971618);
    FUN_0079a7a0(&DAT_0097144c);
    DAT_009714bc = (undefined4 *)0x0;
    DAT_009714c0 = 0;
    DAT_009714c1 = 0;
    DAT_009714c4 = 0;
    DAT_009714c8 = 0;
    DAT_009714cc = 0;
    DAT_009714d0 = 0;
    DAT_00971448 = 0;
    DAT_0097144c = &PTR_LAB_007a5044_1_0093e0c0;
    DAT_00971444 = &DAT_0093e0ac;
    FUN_007990d4(&DAT_0097144c,&DAT_009714d4);
    FUN_0079a7a0(&DAT_00970e88);
    DAT_00970e84 = &DAT_0093eee4;
    DAT_00970e88 = &PTR_LAB_007bb0a0_1_0093eef8;
    DAT_00970ef8 = (undefined4 *)0x0;
    DAT_00970efc = 0;
    DAT_00970efd = 0;
    DAT_00970f00 = 0;
    DAT_00970f04 = 0;
    DAT_00970f08 = 0;
    DAT_00970f0c = 0;
    FUN_007990d4(&DAT_00970e88,&DAT_00971328);
    FUN_0079a7a0(&DAT_00971500);
    DAT_009714fc = &DAT_0093eee4;
    DAT_00971500 = &PTR_LAB_007bb0a0_1_0093eef8;
    DAT_00971570 = 0;
    DAT_00971574 = 0;
    DAT_00971575 = 0;
    DAT_00971578 = 0;
    DAT_0097157c = 0;
    DAT_00971580 = 0;
    DAT_00971584 = 0;
    FUN_007990d4(&DAT_00971500,&DAT_00971328);
    DAT_00970ef8 = &DAT_009713b8;
    DAT_00970e94 = DAT_00970e94 | 0x2000;
    DAT_009714bc = &DAT_009713b8;
    DAT_0097120c = 0;
    DAT_00971204 = &PTR_LAB_00799d78_1_0093d988;
    DAT_00971208 = 0;
    DAT_00971210 = 0;
    DAT_00971214 = 0;
    DAT_00971218 = 0;
    DAT_0097121c = 0;
    FUN_007adf48(&DAT_00971220);
    DAT_00971224 = recvfrom;
    DAT_00971228 = 0xffffffff;
    DAT_00971204 = &PTR_FUN_007af7f0_1_0093e758;
    DAT_00970e5c = &PTR_LAB_00799d78_1_0093d988;
    DAT_00970e60 = 0;
    DAT_00970e64 = 0;
    DAT_00970e68 = 0;
    DAT_00970e6c = 0;
    DAT_00970e70 = 0;
    DAT_00970e74 = 0;
    FUN_007adf48(&DAT_00970e78);
    DAT_00970e5c = &PTR_FUN_007af7f0_1_0093e758;
    DAT_00970e7c = &__sF;
    DAT_00970e80 = 0xffffffff;
    DAT_00970f10 = &PTR_LAB_00799d78_1_0093d988;
    DAT_00970f14 = 0;
    DAT_00970f18 = 0;
    DAT_00970f1c = 0;
    DAT_00970f20 = 0;
    DAT_00970f24 = 0;
    DAT_00970f28 = 0;
    FUN_007adf48(&DAT_00970f2c);
    DAT_00970f34 = 0xffffffff;
    DAT_00970f10 = &PTR_FUN_007af7f0_1_0093e758;
    DAT_00970f30 = recv;
    FUN_0079a7a0(&DAT_00970f3c);
    DAT_00970fac = 0;
    DAT_00970fb0 = 0;
    DAT_00970fb4 = 0;
    DAT_00970fb8 = 0;
    DAT_00970fbc = 0;
    DAT_00970fc0 = 0;
    DAT_00970fc4 = 0;
    DAT_00970f38 = &DAT_0093ef14;
    DAT_00970f3c = &DAT_0093ef28;
    FUN_00799504(&DAT_00970f3c,&DAT_00971204);
    FUN_0079a7a0(&DAT_0097129c);
    DAT_0097130c = (undefined4 *)0x0;
    DAT_00971310 = 0;
    DAT_00971314 = 0;
    DAT_00971318 = 0;
    DAT_0097131c = 0;
    DAT_00971320 = 0;
    DAT_00971324 = 0;
    DAT_00971298 = 0;
    DAT_0097129c = &PTR_LAB_007a507c_1_0093e0f0;
    DAT_00971294 = &DAT_0093e0dc;
    FUN_00799504(&DAT_0097129c,&DAT_00970e5c);
    FUN_0079a7a0(&DAT_0097158c);
    DAT_00971588 = &DAT_0093ef14;
    DAT_0097158c = &DAT_0093ef28;
    DAT_009715fc = (undefined4 *)0x0;
    DAT_00971600 = 0;
    DAT_00971604 = 0;
    DAT_00971608 = 0;
    DAT_0097160c = 0;
    DAT_00971610 = 0;
    DAT_00971614 = 0;
    FUN_00799504(&DAT_0097158c,&DAT_00970f10);
    FUN_0079a7a0(&DAT_0097110c);
    DAT_00971108 = &DAT_0093ef14;
    DAT_0097110c = &DAT_0093ef28;
    DAT_0097117c = 0;
    DAT_00971180 = 0;
    DAT_00971184 = 0;
    DAT_00971188 = 0;
    DAT_0097118c = 0;
    DAT_00971190 = 0;
    DAT_00971194 = 0;
    FUN_00799504(&DAT_0097110c,&DAT_00970f10);
    DAT_0097130c = &DAT_00970f38;
    DAT_009715fc = &DAT_00970f38;
    DAT_00971598 = DAT_00971598 | 0x2000;
    DataMemoryBarrier(0x1f);
    do {
      ExclusiveAccess(&DAT_00971640);
      bVar1 = (bool)hasExclusiveAccess(&DAT_00971640);
    } while (!bVar1);
    DAT_00971640 = DAT_00971640 + 1;
    DataMemoryBarrier(0x1f);
    return param_1;
  }
  return param_1;
}

// ---- FUN_00798b70  @ 0x798b70
undefined4 FUN_00798b70(undefined4 param_1)

{
  bool bVar1;
  int iVar2;
  int iVar3;
  
  iVar2 = DAT_00971640;
  DataMemoryBarrier(0x1f);
  do {
    ExclusiveAccess(&DAT_00971640);
    iVar3 = DAT_00971640 + -1;
    bVar1 = (bool)hasExclusiveAccess(&DAT_00971640);
  } while (!bVar1);
  DAT_00971640 = iVar3;
  DataMemoryBarrier(0x1f);
  if (iVar2 == 2) {
    FUN_007bb250(&DAT_009713b8);
    FUN_007bb250(&DAT_00970e84);
    FUN_007bb250(&DAT_009714fc);
    FUN_007bca3c(&DAT_00970f38);
    FUN_007bca3c(&DAT_00971588);
    FUN_007bca3c(&DAT_00971108);
    return param_1;
  }
  return param_1;
}

// ---- FUN_00798bf8  @ 0x798bf8
byte FUN_00798bf8(byte param_1)

{
  byte bVar1;
  undefined1 auStack_24 [4];
  
  bVar1 = DAT_0094f564;
  if ((DAT_0094f564 & (param_1 ^ 1)) == 0) {
    return DAT_0094f564;
  }
  FUN_00798644(auStack_24);
  DAT_0094f564 = 0;
  DAT_00971618 = &PTR_FUN_00799d5c_1_0093d948;
  FUN_007b01c0(&DAT_00971634);
  DAT_009714d4 = &PTR_FUN_00799d5c_1_0093d948;
  FUN_007b01c0(&DAT_009714f0);
  DAT_00971328 = &PTR_FUN_00799d5c_1_0093d948;
  FUN_007b01c0(&DAT_00971344);
  DAT_00971204 = &PTR_LAB_00799d78_1_0093d988;
  FUN_007b01c0(&DAT_00971220);
  DAT_00970e5c = &PTR_LAB_00799d78_1_0093d988;
  FUN_007b01c0(&DAT_00970e78);
  DAT_00970f10 = &PTR_LAB_00799d78_1_0093d988;
  FUN_007b01c0(&DAT_00970f2c);
  FUN_0079a5cc(&DAT_00971034,recvfrom,0x10,0x400);
  FUN_0079a5cc(&DAT_00971350,&__sF,8,0x400);
  FUN_0079a5cc(&DAT_0097122c,recv,0x10,0x400);
  FUN_00798ef0(&DAT_009713bc,&DAT_00971034);
  FUN_00798ef0(&DAT_0097144c,&DAT_00971350);
  FUN_00798ef0(&DAT_00970e88,&DAT_0097122c);
  FUN_00798ef0(&DAT_00971500,&DAT_0097122c);
  FUN_0079a724(&DAT_00971198,recvfrom,0x10,0x400);
  FUN_0079a724(&DAT_00970fc8,&__sF,8,0x400);
  FUN_0079a724(&DAT_0097109c,recv,0x10,0x400);
  FUN_0079937c(&DAT_00970f3c,&DAT_00971198);
  FUN_0079937c(&DAT_0097129c,&DAT_00970fc8);
  FUN_0079937c(&DAT_0097158c,&DAT_0097109c);
  FUN_0079937c(&DAT_0097110c,&DAT_0097109c);
  FUN_00798b70(auStack_24);
  return bVar1;
}

// ---- FUN_00798dd4  @ 0x798dd4
undefined4 * FUN_00798dd4(undefined4 *param_1)

{
  *param_1 = &DAT_0093d910;
  FUN_0079a9bc();
  return param_1;
}

// ---- FUN_00798e44  @ 0x798e44
int FUN_00798e44(int param_1)

{
  if ((*(uint *)(param_1 + 0x14) & 5) != 0) {
    param_1 = 0;
  }
  return param_1;
}

// ---- FUN_00798e64  @ 0x798e64
void FUN_00798e64(int param_1,uint param_2)

{
  if (*(int *)(param_1 + 0x78) == 0) {
    param_2 = param_2 | 1;
  }
  *(uint *)(param_1 + 0x14) = param_2;
  if ((param_2 & *(uint *)(param_1 + 0x10)) == 0) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  FUN_007c4c10("basic_ios::clear");
}

// ---- FUN_00798ef0  @ 0x798ef0
undefined4 FUN_00798ef0(int param_1,undefined4 param_2)

{
  undefined4 uVar1;
  
  uVar1 = *(undefined4 *)(param_1 + 0x78);
  *(undefined4 *)(param_1 + 0x78) = param_2;
  FUN_00798e64(param_1,0);
  return uVar1;
}

// ---- FUN_00798f00  @ 0x798f00
uint FUN_00798f00(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 extraout_r2;
  uint uVar1;
  int *piVar2;
  
  if (*(char *)(param_1 + 0x75) != '\0') {
    return (uint)*(byte *)(param_1 + 0x74);
  }
  piVar2 = *(int **)(param_1 + 0x7c);
  if (piVar2 != (int *)0x0) {
    if ((char)piVar2[7] == '\0') {
      FUN_007af570(piVar2);
      uVar1 = (**(code **)(*piVar2 + 0x18))
                        (piVar2,0x20,extraout_r2,*(code **)(*piVar2 + 0x18),param_4);
    }
    else {
      uVar1 = (uint)*(byte *)((int)piVar2 + 0x3d);
    }
    *(char *)(param_1 + 0x74) = (char)uVar1;
    *(undefined1 *)(param_1 + 0x75) = 1;
    return uVar1;
  }
                    /* WARNING: Subroutine does not return */
  FUN_007c4874();
}

// ---- FUN_00798fc0  @ 0x798fc0
uint FUN_00798fc0(int param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  uint uVar1;
  undefined4 extraout_r2;
  int *piVar2;
  
  piVar2 = *(int **)(param_1 + 0x7c);
  if (piVar2 == (int *)0x0) {
                    /* WARNING: Subroutine does not return */
    FUN_007c4874();
  }
  if ((char)piVar2[7] != '\0') {
    return (uint)*(byte *)((int)piVar2 + param_2 + 0x1d);
  }
  FUN_007af570(piVar2);
  uVar1 = (**(code **)(*piVar2 + 0x18))
                    (piVar2,param_2,extraout_r2,*(code **)(*piVar2 + 0x18),param_4);
  return uVar1;
}

// ---- FUN_00798fe8  @ 0x798fe8
undefined4 * FUN_00798fe8(undefined4 *param_1)

{
  FUN_0079a7a0();
  param_1[0x1c] = 0;
  *(undefined1 *)(param_1 + 0x1d) = 0;
  *(undefined1 *)((int)param_1 + 0x75) = 0;
  *param_1 = &DAT_0093d910;
  param_1[0x1e] = 0;
  param_1[0x1f] = 0;
  param_1[0x20] = 0;
  param_1[0x21] = 0;
  return param_1;
}

// ---- FUN_00799018  @ 0x799018
void FUN_00799018(int param_1,undefined4 param_2)

{
  int iVar1;
  undefined4 uVar2;
  
  iVar1 = FUN_0079db20(param_2);
  if (iVar1 == 0) {
    *(undefined4 *)(param_1 + 0x7c) = 0;
  }
  else {
    uVar2 = FUN_0079c760(param_2);
    *(undefined4 *)(param_1 + 0x7c) = uVar2;
  }
  iVar1 = FUN_0079dc40(param_2);
  if (iVar1 == 0) {
    *(undefined4 *)(param_1 + 0x80) = 0;
  }
  else {
    uVar2 = FUN_0079cff4(param_2);
    *(undefined4 *)(param_1 + 0x80) = uVar2;
  }
  iVar1 = FUN_0079dc84(param_2);
  if (iVar1 != 0) {
    uVar2 = FUN_0079d038(param_2);
    *(undefined4 *)(param_1 + 0x84) = uVar2;
    return;
  }
  *(undefined4 *)(param_1 + 0x84) = 0;
  return;
}

// ---- FUN_00799064  @ 0x799064
undefined4 FUN_00799064(undefined4 param_1,int param_2,undefined4 param_3)

{
  int *piVar1;
  undefined1 auStack_1c [4];
  
  FUN_007afd04(param_1,param_2 + 0x6c);
  FUN_007ac8ac(auStack_1c,param_2,param_3);
  FUN_007b01c0(auStack_1c);
  FUN_00799018(param_2,param_3);
  piVar1 = *(int **)(param_2 + 0x78);
  if (piVar1 != (int *)0x0) {
    FUN_007afd04(auStack_1c,piVar1 + 7);
    (**(code **)(*piVar1 + 8))(piVar1,param_3);
    FUN_007b0164(piVar1 + 7,param_3);
    FUN_007b01c0(auStack_1c);
  }
  return param_1;
}

// ---- FUN_007990d4  @ 0x7990d4
void FUN_007990d4(int param_1,uint param_2)

{
  int iVar1;
  
  FUN_007ac87c();
  FUN_00799018(param_1,param_1 + 0x6c);
  *(uint *)(param_1 + 0x78) = param_2;
  iVar1 = 1 - param_2;
  *(undefined1 *)(param_1 + 0x74) = 0;
  if (1 < param_2) {
    iVar1 = 0;
  }
  *(undefined1 *)(param_1 + 0x75) = 0;
  *(int *)(param_1 + 0x14) = iVar1;
  *(undefined4 *)(param_1 + 0x70) = 0;
  *(undefined4 *)(param_1 + 0x10) = 0;
  return;
}

// ---- FUN_00799108  @ 0x799108
undefined4 *
FUN_00799108(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  FUN_0079a7a0();
  param_1[0x1c] = 0;
  *(undefined1 *)(param_1 + 0x1d) = 0;
  *param_1 = &DAT_0093d910;
  *(undefined1 *)((int)param_1 + 0x75) = 0;
  param_1[0x1e] = 0;
  param_1[0x1f] = 0;
  param_1[0x20] = 0;
  param_1[0x21] = 0;
  FUN_007990d4(param_1,param_2,&DAT_0093d910,0,param_4);
  return param_1;
}

// ---- FUN_007992f0  @ 0x7992f0
void FUN_007992f0(int param_1,uint param_2)

{
  if (*(int *)(param_1 + 0x7c) == 0) {
    param_2 = param_2 | 1;
  }
  *(uint *)(param_1 + 0x14) = param_2;
  if ((param_2 & *(uint *)(param_1 + 0x10)) == 0) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  FUN_007c4c10("basic_ios::clear");
}

// ---- FUN_0079937c  @ 0x79937c
undefined4 FUN_0079937c(int param_1,undefined4 param_2)

{
  undefined4 uVar1;
  
  uVar1 = *(undefined4 *)(param_1 + 0x7c);
  *(undefined4 *)(param_1 + 0x7c) = param_2;
  FUN_007992f0(param_1,0);
  return uVar1;
}

// ---- FUN_00799444  @ 0x799444
void FUN_00799444(int param_1,undefined4 param_2)

{
  int iVar1;
  undefined4 uVar2;
  
  iVar1 = FUN_007b3d50(param_2);
  if (iVar1 == 0) {
    *(undefined4 *)(param_1 + 0x80) = 0;
  }
  else {
    uVar2 = FUN_007b2a34(param_2);
    *(undefined4 *)(param_1 + 0x80) = uVar2;
  }
  iVar1 = FUN_007b3e70(param_2);
  if (iVar1 == 0) {
    *(undefined4 *)(param_1 + 0x84) = 0;
  }
  else {
    uVar2 = FUN_007b3224(param_2);
    *(undefined4 *)(param_1 + 0x84) = uVar2;
  }
  iVar1 = FUN_007b3eb4(param_2);
  if (iVar1 != 0) {
    uVar2 = FUN_007b3268(param_2);
    *(undefined4 *)(param_1 + 0x88) = uVar2;
    return;
  }
  *(undefined4 *)(param_1 + 0x88) = 0;
  return;
}

// ---- FUN_00799494  @ 0x799494
undefined4 FUN_00799494(undefined4 param_1,int param_2,undefined4 param_3)

{
  int *piVar1;
  undefined1 auStack_1c [4];
  
  FUN_007afd04(param_1,param_2 + 0x6c);
  FUN_007ac8ac(auStack_1c,param_2,param_3);
  FUN_007b01c0(auStack_1c);
  FUN_00799444(param_2,param_3);
  piVar1 = *(int **)(param_2 + 0x7c);
  if (piVar1 != (int *)0x0) {
    FUN_007afd04(auStack_1c,piVar1 + 7);
    (**(code **)(*piVar1 + 8))(piVar1,param_3);
    FUN_007b0164(piVar1 + 7,param_3);
    FUN_007b01c0(auStack_1c);
  }
  return param_1;
}

// ---- FUN_00799504  @ 0x799504
void FUN_00799504(int param_1,uint param_2)

{
  int iVar1;
  
  FUN_007ac87c();
  FUN_00799444(param_1,param_1 + 0x6c);
  *(uint *)(param_1 + 0x7c) = param_2;
  iVar1 = 1 - param_2;
  *(undefined4 *)(param_1 + 0x74) = 0;
  if (1 < param_2) {
    iVar1 = 0;
  }
  *(undefined1 *)(param_1 + 0x78) = 0;
  *(int *)(param_1 + 0x14) = iVar1;
  *(undefined4 *)(param_1 + 0x70) = 0;
  *(undefined4 *)(param_1 + 0x10) = 0;
  return;
}

// ---- FUN_00799534  @ 0x799534
undefined4 *
FUN_00799534(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  FUN_0079a7a0();
  param_1[0x1c] = 0;
  param_1[0x1d] = 0;
  *param_1 = &PTR_LAB_00798dec_1_0093d920;
  *(undefined1 *)(param_1 + 0x1e) = 0;
  param_1[0x1f] = 0;
  param_1[0x20] = 0;
  param_1[0x21] = 0;
  param_1[0x22] = 0;
  FUN_00799504(param_1,param_2,&PTR_LAB_00798dec_1_0093d920,0,param_4);
  return param_1;
}

// ---- FUN_007996d4  @ 0x7996d4
void FUN_007996d4(int param_1,int *param_2)

{
  int iVar1;
  int iVar2;
  
  iVar2 = *(int *)(param_1 + 0xc);
  iVar1 = *(int *)(iVar2 + 8);
  *(int *)(param_1 + 0xc) = iVar1;
  if (iVar1 != 0) {
    *(int *)(iVar1 + 4) = param_1;
  }
  *(undefined4 *)(iVar2 + 4) = *(undefined4 *)(param_1 + 4);
  if (*param_2 == param_1) {
    *param_2 = iVar2;
  }
  else {
    iVar1 = *(int *)(param_1 + 4);
    if (*(int *)(iVar1 + 8) == param_1) {
      *(int *)(iVar1 + 8) = iVar2;
    }
    else {
      *(int *)(iVar1 + 0xc) = iVar2;
    }
  }
  *(int *)(iVar2 + 8) = param_1;
  *(int *)(param_1 + 4) = iVar2;
  return;
}

// ---- FUN_00799700  @ 0x799700
void FUN_00799700(int param_1,int *param_2)

{
  int iVar1;
  int iVar2;
  
  iVar2 = *(int *)(param_1 + 8);
  iVar1 = *(int *)(iVar2 + 0xc);
  *(int *)(param_1 + 8) = iVar1;
  if (iVar1 != 0) {
    *(int *)(iVar1 + 4) = param_1;
  }
  *(undefined4 *)(iVar2 + 4) = *(undefined4 *)(param_1 + 4);
  if (*param_2 == param_1) {
    *param_2 = iVar2;
  }
  else {
    iVar1 = *(int *)(param_1 + 4);
    if (*(int *)(iVar1 + 0xc) == param_1) {
      *(int *)(iVar1 + 0xc) = iVar2;
    }
    else {
      *(int *)(iVar1 + 8) = iVar2;
    }
  }
  *(int *)(iVar2 + 0xc) = param_1;
  *(int *)(param_1 + 4) = iVar2;
  return;
}

// ---- FUN_0079972c  @ 0x79972c
int FUN_0079972c(int *param_1)

{
  int iVar1;
  int iVar2;
  bool bVar3;
  
  if ((*param_1 == 0) && (*(int **)(param_1[1] + 4) == param_1)) {
    iVar1 = (*(int **)(param_1[1] + 4))[3];
  }
  else {
    iVar2 = param_1[2];
    if (param_1[2] == 0) {
      iVar1 = param_1[1];
      if (param_1 == *(int **)(iVar1 + 8)) {
        do {
          iVar2 = *(int *)(iVar1 + 4);
          bVar3 = *(int *)(iVar2 + 8) == iVar1;
          iVar1 = iVar2;
        } while (bVar3);
        return iVar2;
      }
    }
    else {
      do {
        iVar1 = iVar2;
        iVar2 = *(int *)(iVar1 + 0xc);
      } while (*(int *)(iVar1 + 0xc) != 0);
    }
  }
  return iVar1;
}

// ---- FUN_00799768  @ 0x799768
int FUN_00799768(int param_1)

{
  int iVar1;
  int iVar2;
  
  iVar2 = *(int *)(param_1 + 0xc);
  if (*(int *)(param_1 + 0xc) == 0) {
    iVar1 = *(int *)(param_1 + 4);
    if (param_1 == *(int *)(iVar1 + 0xc)) {
      do {
        iVar2 = iVar1;
        iVar1 = *(int *)(iVar2 + 4);
      } while (*(int *)(iVar1 + 0xc) == iVar2);
      if (iVar1 == *(int *)(iVar2 + 0xc)) {
        iVar1 = iVar2;
      }
      return iVar1;
    }
  }
  else {
    do {
      iVar1 = iVar2;
      iVar2 = *(int *)(iVar1 + 8);
    } while (*(int *)(iVar1 + 8) != 0);
  }
  return iVar1;
}

// ---- FUN_007997a0  @ 0x7997a0
int FUN_007997a0(int param_1)

{
  int iVar1;
  int iVar2;
  
  iVar2 = *(int *)(param_1 + 0xc);
  if (*(int *)(param_1 + 0xc) == 0) {
    iVar1 = *(int *)(param_1 + 4);
    if (param_1 == *(int *)(iVar1 + 0xc)) {
      do {
        iVar2 = iVar1;
        iVar1 = *(int *)(iVar2 + 4);
      } while (*(int *)(iVar1 + 0xc) == iVar2);
      if (iVar1 == *(int *)(iVar2 + 0xc)) {
        iVar1 = iVar2;
      }
      return iVar1;
    }
  }
  else {
    do {
      iVar1 = iVar2;
      iVar2 = *(int *)(iVar1 + 8);
    } while (*(int *)(iVar1 + 8) != 0);
  }
  return iVar1;
}

// ---- thunk_FUN_0079972c  @ 0x7997d8
int thunk_FUN_0079972c(int *param_1)

{
  int iVar1;
  int iVar2;
  bool bVar3;
  
  if ((*param_1 == 0) && (*(int **)(param_1[1] + 4) == param_1)) {
    iVar1 = (*(int **)(param_1[1] + 4))[3];
  }
  else {
    iVar2 = param_1[2];
    if (param_1[2] == 0) {
      iVar1 = param_1[1];
      if (param_1 == *(int **)(iVar1 + 8)) {
        do {
          iVar2 = *(int *)(iVar1 + 4);
          bVar3 = *(int *)(iVar2 + 8) == iVar1;
          iVar1 = iVar2;
        } while (bVar3);
        return iVar2;
      }
    }
    else {
      do {
        iVar1 = iVar2;
        iVar2 = *(int *)(iVar1 + 0xc);
      } while (*(int *)(iVar1 + 0xc) != 0);
    }
  }
  return iVar1;
}

// ---- FUN_007997e8  @ 0x7997e8
void FUN_007997e8(int param_1,int *param_2,int param_3,int param_4)

{
  int *piVar1;
  int *piVar2;
  int *piVar3;
  int *piVar4;
  int iVar5;
  
  iVar5 = param_4 + 4;
  param_2[1] = param_3;
  param_2[2] = 0;
  param_2[3] = 0;
  *param_2 = 0;
  if (param_1 == 0) {
    *(int **)(param_3 + 0xc) = param_2;
    if (*(int *)(param_4 + 0xc) == param_3) {
      *(int **)(param_4 + 0xc) = param_2;
    }
  }
  else {
    *(int **)(param_3 + 8) = param_2;
    if (param_3 == param_4) {
      *(int **)(param_4 + 4) = param_2;
      *(int **)(param_4 + 0xc) = param_2;
    }
    else if (*(int *)(param_4 + 8) == param_3) {
      *(int **)(param_4 + 8) = param_2;
    }
  }
  piVar2 = *(int **)(param_4 + 4);
  do {
    while( true ) {
      if ((param_2 == piVar2) || (piVar3 = (int *)param_2[1], *piVar3 != 0)) {
        *piVar2 = 1;
        return;
      }
      piVar4 = (int *)piVar3[1];
      piVar1 = (int *)piVar4[2];
      if (piVar3 == piVar1) break;
      if ((piVar1 == (int *)0x0) || (*piVar1 != 0)) {
        piVar2 = piVar3;
        if ((int *)piVar3[2] == param_2) {
          FUN_00799700(piVar3,iVar5);
          piVar2 = (int *)piVar3[1];
          param_2 = piVar3;
        }
        *piVar2 = 1;
        *piVar4 = 0;
        FUN_007996d4(piVar4,iVar5);
        piVar2 = *(int **)(param_4 + 4);
      }
      else {
LAB_00799838:
        *piVar3 = 1;
        *piVar1 = 1;
        *piVar4 = 0;
        param_2 = piVar4;
      }
    }
    piVar1 = (int *)piVar4[3];
    if ((piVar1 != (int *)0x0) && (*piVar1 == 0)) goto LAB_00799838;
    piVar2 = piVar3;
    if ((int *)piVar3[3] == param_2) {
      FUN_007996d4(piVar3,iVar5);
      piVar2 = (int *)piVar3[1];
      param_2 = piVar3;
    }
    *piVar2 = 1;
    *piVar4 = 0;
    FUN_00799700(piVar4,iVar5);
    piVar2 = *(int **)(param_4 + 4);
  } while( true );
}

// ---- FUN_007998b8  @ 0x7998b8
int * FUN_007998b8(int *param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  int *piVar2;
  int *piVar3;
  int *piVar4;
  int iVar5;
  int iVar6;
  int *piVar7;
  int *piVar8;
  
  piVar3 = (int *)param_1[2];
  if (piVar3 == (int *)0x0) {
    piVar8 = (int *)param_1[3];
  }
  else {
    piVar2 = (int *)param_1[3];
    piVar8 = piVar3;
    piVar4 = piVar2;
    if (piVar2 != (int *)0x0) {
      do {
        piVar7 = piVar4;
        piVar4 = (int *)piVar7[2];
      } while ((int *)piVar7[2] != (int *)0x0);
      piVar8 = (int *)piVar7[3];
      if (piVar7 != param_1) {
        piVar3[1] = (int)piVar7;
        piVar7[2] = (int)piVar3;
        piVar3 = piVar7;
        if (piVar2 != piVar7) {
          piVar3 = (int *)piVar7[1];
          piVar4 = piVar3;
          if (piVar8 != (int *)0x0) {
            piVar8[1] = (int)piVar3;
            piVar4 = (int *)piVar7[1];
          }
          piVar4[2] = (int)piVar8;
          piVar7[3] = (int)piVar2;
          *(int **)(param_1[3] + 4) = piVar7;
        }
        if (*(int **)(param_2 + 4) == param_1) {
          *(int **)(param_2 + 4) = piVar7;
          iVar5 = param_1[1];
        }
        else {
          iVar5 = param_1[1];
          if (*(int **)(iVar5 + 8) == param_1) {
            *(int **)(iVar5 + 8) = piVar7;
          }
          else {
            *(int **)(iVar5 + 0xc) = piVar7;
          }
        }
        iVar6 = *piVar7;
        iVar1 = *param_1;
        piVar7[1] = iVar5;
        *piVar7 = iVar1;
        *param_1 = iVar6;
        goto LAB_0079992e;
      }
    }
  }
  piVar3 = (int *)param_1[1];
  if (piVar8 != (int *)0x0) {
    piVar8[1] = (int)piVar3;
  }
  if (*(int **)(param_2 + 4) == param_1) {
    *(int **)(param_2 + 4) = piVar8;
  }
  else {
    iVar6 = param_1[1];
    if (*(int **)(iVar6 + 8) == param_1) {
      *(int **)(iVar6 + 8) = piVar8;
    }
    else {
      *(int **)(iVar6 + 0xc) = piVar8;
    }
  }
  if (*(int **)(param_2 + 8) == param_1) {
    piVar4 = piVar8;
    if (param_1[3] == 0) {
      *(int *)(param_2 + 8) = param_1[1];
    }
    else {
      do {
        piVar2 = piVar4;
        piVar4 = (int *)piVar2[2];
      } while (piVar4 != (int *)0x0);
      *(int **)(param_2 + 8) = piVar2;
    }
  }
  if (*(int **)(param_2 + 0xc) == param_1) {
    piVar4 = piVar8;
    if (param_1[2] == 0) {
      iVar6 = *param_1;
      *(int *)(param_2 + 0xc) = param_1[1];
    }
    else {
      do {
        piVar2 = piVar4;
        piVar4 = (int *)piVar2[3];
      } while (piVar4 != (int *)0x0);
      iVar6 = *param_1;
      *(int **)(param_2 + 0xc) = piVar2;
    }
  }
  else {
    iVar6 = *param_1;
  }
LAB_0079992e:
  if (iVar6 == 0) {
    return param_1;
  }
  iVar6 = param_2 + 4;
LAB_0079995e:
  do {
    piVar2 = piVar3;
    piVar4 = piVar8;
    if (*(int **)(param_2 + 4) == piVar8) {
LAB_007999a2:
      if (piVar4 == (int *)0x0) {
        return param_1;
      }
LAB_007999a4:
      *piVar4 = 1;
      return param_1;
    }
    if ((piVar8 != (int *)0x0) && (*piVar8 != 1)) goto LAB_007999a4;
    piVar4 = (int *)piVar2[2];
    if (piVar4 == piVar8) {
      piVar3 = (int *)piVar2[3];
      if (*piVar3 == 0) {
        *piVar3 = 1;
        *piVar2 = 0;
        FUN_007996d4(piVar2,iVar6,0,piVar3,param_4);
        piVar3 = (int *)piVar2[3];
      }
      piVar8 = (int *)piVar3[2];
      if ((piVar8 == (int *)0x0) || (*piVar8 == 1)) {
        piVar7 = (int *)piVar3[3];
        if ((piVar7 == (int *)0x0) || (*piVar7 == 1)) {
          *piVar3 = 0;
          piVar3 = (int *)piVar2[1];
          piVar8 = piVar2;
          goto LAB_0079995e;
        }
LAB_0079998c:
        iVar5 = *piVar2;
        *piVar3 = iVar5;
        *piVar2 = 1;
LAB_00799994:
        piVar3 = (int *)0x1;
        *piVar7 = 1;
      }
      else {
        piVar7 = (int *)piVar3[3];
        if ((piVar7 != (int *)0x0) && (*piVar7 != 1)) goto LAB_0079998c;
        *piVar8 = 1;
        *piVar3 = 0;
        FUN_00799700(piVar3,iVar6);
        piVar3 = (int *)piVar2[3];
        iVar5 = *piVar2;
        piVar7 = (int *)piVar3[3];
        *piVar3 = iVar5;
        *piVar2 = 1;
        if (piVar7 != (int *)0x0) goto LAB_00799994;
      }
      FUN_007996d4(piVar2,iVar6,iVar5,piVar3,param_4);
      goto LAB_007999a2;
    }
    if (*piVar4 == 0) {
      *piVar4 = 1;
      *piVar2 = 0;
      FUN_00799700(piVar2,iVar6);
      piVar4 = (int *)piVar2[2];
    }
    piVar3 = (int *)piVar4[3];
    if ((piVar3 != (int *)0x0) && (*piVar3 != 1)) {
      piVar7 = (int *)piVar4[2];
      if ((piVar7 == (int *)0x0) || (*piVar7 == 1)) {
        *piVar3 = 1;
        *piVar4 = 0;
        FUN_007996d4(piVar4,iVar6,0,piVar3,param_4);
        piVar7 = (int *)((int *)piVar2[2])[2];
        *(int *)piVar2[2] = *piVar2;
        *piVar2 = 1;
        if (piVar7 != (int *)0x0) goto LAB_007999ea;
      }
      else {
LAB_007999e2:
        *piVar4 = *piVar2;
        *piVar2 = 1;
LAB_007999ea:
        *piVar7 = 1;
      }
      FUN_00799700(piVar2,iVar6);
      piVar4 = piVar8;
      if (piVar8 == (int *)0x0) {
        return param_1;
      }
      goto LAB_007999a4;
    }
    piVar7 = (int *)piVar4[2];
    if ((piVar7 != (int *)0x0) && (*piVar7 != 1)) goto LAB_007999e2;
    piVar3 = (int *)piVar2[1];
    *piVar4 = 0;
    piVar8 = piVar2;
  } while( true );
}

// ---- FUN_00799b68  @ 0x799b68
void FUN_00799b68(int param_1,int param_2,int param_3)

{
  int *piVar1;
  int *piVar2;
  int *piVar3;
  
  if (param_1 != param_3) {
    piVar1 = *(int **)(param_1 + 4);
    piVar2 = *(int **)(param_3 + 4);
    piVar3 = *(int **)(param_2 + 4);
    *piVar2 = param_1;
    *piVar3 = param_3;
    *piVar1 = param_2;
    *(int **)(param_1 + 4) = piVar2;
    *(undefined4 *)(param_3 + 4) = *(undefined4 *)(param_2 + 4);
    *(int **)(param_2 + 4) = piVar1;
  }
  return;
}

// ---- FUN_00799b9c  @ 0x799b9c
void FUN_00799b9c(int *param_1,int param_2)

{
  int iVar1;
  
  iVar1 = *(int *)(param_2 + 4);
  *param_1 = param_2;
  param_1[1] = iVar1;
  **(int **)(param_2 + 4) = (int)param_1;
  *(int **)(param_2 + 4) = param_1;
  return;
}

// ---- FUN_00799bac  @ 0x799bac
void FUN_00799bac(int *param_1)

{
  int *piVar1;
  int iVar2;
  
  iVar2 = *param_1;
  piVar1 = (int *)param_1[1];
  *piVar1 = iVar2;
  *(int **)(iVar2 + 4) = piVar1;
  return;
}

// ---- FUN_00799c0c  @ 0x799c0c
uint FUN_00799c0c(int *param_1)

{
  uint uVar1;
  
  uVar1 = (**(code **)(*param_1 + 0x24))();
  if (uVar1 != 0xffffffff) {
    uVar1 = (uint)*(byte *)param_1[2];
    param_1[2] = (int)((byte *)param_1[2] + 1);
  }
  return uVar1;
}

// ---- FUN_00799c98  @ 0x799c98
int FUN_00799c98(int *param_1,undefined1 *param_2,int param_3)

{
  int iVar1;
  size_t __n;
  size_t sVar2;
  int iVar3;
  
  iVar3 = 0;
  if (0 < param_3) {
    do {
      __n = param_3 - iVar3;
      sVar2 = param_1[3] - param_1[2];
      if (sVar2 != 0) {
        if ((int)sVar2 <= (int)__n) {
          __n = sVar2;
        }
        iVar3 = iVar3 + __n;
        memcpy(param_2,(void *)param_1[2],__n);
        param_1[2] = param_1[2] + __n;
        if (param_3 <= iVar3) {
          return iVar3;
        }
        param_2 = param_2 + __n;
      }
      iVar1 = (**(code **)(*param_1 + 0x28))(param_1);
      if (iVar1 == -1) {
        return iVar3;
      }
      iVar3 = iVar3 + 1;
      *param_2 = (char)iVar1;
      param_2 = param_2 + 1;
    } while (iVar3 < param_3);
  }
  return iVar3;
}

// ---- FUN_00799cfc  @ 0x799cfc
int FUN_00799cfc(int *param_1,undefined1 *param_2,int param_3)

{
  undefined1 uVar1;
  int iVar2;
  size_t __n;
  size_t sVar3;
  int iVar4;
  
  iVar4 = 0;
  if (param_3 < 1) {
    return 0;
  }
  do {
    __n = param_3 - iVar4;
    sVar3 = param_1[6] - param_1[5];
    if (sVar3 != 0) {
      if ((int)sVar3 <= (int)__n) {
        __n = sVar3;
      }
      iVar4 = iVar4 + __n;
      memcpy((void *)param_1[5],param_2,__n);
      param_1[5] = param_1[5] + __n;
      if (param_3 <= iVar4) {
        return iVar4;
      }
      param_2 = param_2 + __n;
    }
    uVar1 = *param_2;
    param_2 = param_2 + 1;
    iVar2 = (**(code **)(*param_1 + 0x34))(param_1,uVar1);
    if (iVar2 == -1) {
      return iVar4;
    }
    iVar4 = iVar4 + 1;
  } while (iVar4 < param_3);
  return iVar4;
}

// ---- FUN_00799d5c  @ 0x799d5c
undefined4 * FUN_00799d5c(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_00799d5c_1_0093d948;
  FUN_007b01c0(param_1 + 7);
  return param_1;
}

// ---- FUN_00799dd4  @ 0x799dd4
int FUN_00799dd4(int *param_1,wchar_t *param_2,int param_3)

{
  wchar_t wVar1;
  size_t __n;
  size_t sVar2;
  int iVar3;
  
  iVar3 = 0;
  if (0 < param_3) {
    do {
      __n = param_3 - iVar3;
      sVar2 = param_1[3] - param_1[2] >> 2;
      if (sVar2 != 0) {
        if ((int)sVar2 <= (int)__n) {
          __n = sVar2;
        }
        iVar3 = iVar3 + __n;
        wmemcpy(param_2,(wchar_t *)param_1[2],__n);
        param_1[2] = param_1[2] + __n * 4;
        if (param_3 <= iVar3) {
          return iVar3;
        }
        param_2 = param_2 + __n;
      }
      wVar1 = (**(code **)(*param_1 + 0x28))(param_1);
      if (wVar1 == L'\xffffffff') {
        return iVar3;
      }
      iVar3 = iVar3 + 1;
      *param_2 = wVar1;
      param_2 = param_2 + 1;
    } while (iVar3 < param_3);
  }
  return iVar3;
}

// ---- FUN_00799e3c  @ 0x799e3c
int FUN_00799e3c(int *param_1,wchar_t *param_2,int param_3)

{
  int iVar1;
  wchar_t wVar2;
  size_t __n;
  size_t sVar3;
  int iVar4;
  
  iVar4 = 0;
  if (param_3 < 1) {
    return 0;
  }
  do {
    __n = param_3 - iVar4;
    sVar3 = param_1[6] - param_1[5] >> 2;
    if (sVar3 != 0) {
      if ((int)sVar3 <= (int)__n) {
        __n = sVar3;
      }
      iVar4 = iVar4 + __n;
      wmemcpy((wchar_t *)param_1[5],param_2,__n);
      param_1[5] = param_1[5] + __n * 4;
      if (param_3 <= iVar4) {
        return iVar4;
      }
      param_2 = param_2 + __n;
    }
    wVar2 = *param_2;
    param_2 = param_2 + 1;
    iVar1 = (**(code **)(*param_1 + 0x34))(param_1,wVar2);
    if (iVar1 == -1) {
      return iVar4;
    }
    iVar4 = iVar4 + 1;
  } while (iVar4 < param_3);
  return iVar4;
}

// ---- FUN_00799ea0  @ 0x799ea0
int FUN_00799ea0(int *param_1)

{
  int iVar1;
  
  iVar1 = (**(code **)(*param_1 + 0x24))();
  if (iVar1 != -1) {
    iVar1 = *(int *)param_1[2];
    param_1[2] = (int)((int *)param_1[2] + 1);
  }
  return iVar1;
}

// ---- FUN_00799eb8  @ 0x799eb8
undefined4 FUN_00799eb8(undefined4 param_1,int *param_2,undefined4 param_3,undefined4 param_4)

{
  FUN_007afd04(param_1,param_2 + 7,param_3,param_4,param_4);
  (**(code **)(*param_2 + 8))(param_2,param_3);
  FUN_007b0164(param_2 + 7,param_3);
  return param_1;
}

// ---- FUN_00799efc  @ 0x799efc
void FUN_00799efc(int *param_1)

{
  (**(code **)(*param_1 + 0xc))();
  return;
}

// ---- FUN_00799f08  @ 0x799f08
undefined4 FUN_00799f08(undefined4 param_1,int *param_2)

{
  (**(code **)(*param_2 + 0x10))();
  return param_1;
}

// ---- FUN_00799f24  @ 0x799f24
undefined4
FUN_00799f24(undefined4 param_1,int *param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5,undefined4 param_6,undefined4 param_7)

{
  (**(code **)(*param_2 + 0x14))(param_1,param_2,param_3,param_4,param_5,param_6,param_7);
  return param_1;
}

// ---- FUN_00799f60  @ 0x799f60
void FUN_00799f60(int *param_1)

{
  (**(code **)(*param_1 + 0x18))();
  return;
}

// ---- FUN_00799fec  @ 0x799fec
void FUN_00799fec(int *param_1)

{
  (**(code **)(*param_1 + 0x20))();
  return;
}

// ---- FUN_00799ff8  @ 0x799ff8
uint FUN_00799ff8(int *param_1,uint param_2)

{
  uint uVar1;
  
  uVar1 = param_1[2];
  if (((uint)param_1[1] < uVar1) && (*(byte *)(uVar1 - 1) == param_2)) {
    param_1[2] = uVar1 - 1;
    return (uint)*(byte *)(uVar1 - 1);
  }
  uVar1 = (**(code **)(*param_1 + 0x2c))();
  return uVar1;
}

// ---- FUN_0079a0f0  @ 0x79a0f0
undefined4 * FUN_0079a0f0(undefined4 *param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  
  uVar4 = *(undefined4 *)(param_2 + 4);
  uVar3 = *(undefined4 *)(param_2 + 8);
  uVar1 = *(undefined4 *)(param_2 + 0xc);
  uVar2 = *(undefined4 *)(param_2 + 0x10);
  param_1[5] = *(undefined4 *)(param_2 + 0x14);
  uVar5 = *(undefined4 *)(param_2 + 0x14);
  param_1[2] = uVar3;
  param_1[1] = uVar4;
  param_1[3] = uVar1;
  param_1[4] = uVar2;
  *param_1 = &PTR_FUN_00799d5c_1_0093d948;
  param_1[6] = uVar5;
  FUN_007afd04(param_1 + 7,param_2 + 0x1c,uVar1,uVar2,param_4);
  return param_1;
}

// ---- FUN_0079a138  @ 0x79a138
void FUN_0079a138(undefined4 param_1,undefined4 param_2)

{
  undefined1 auStack_9 [5];
  
  FUN_007ad274(param_1,param_2,auStack_9);
  return;
}

// ---- FUN_0079a190  @ 0x79a190
void FUN_0079a190(int *param_1)

{
  (**(code **)(*param_1 + 0xc))();
  return;
}

// ---- FUN_0079a19c  @ 0x79a19c
undefined4 FUN_0079a19c(undefined4 param_1,int *param_2)

{
  (**(code **)(*param_2 + 0x10))();
  return param_1;
}

// ---- FUN_0079a1b8  @ 0x79a1b8
undefined4
FUN_0079a1b8(undefined4 param_1,int *param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5,undefined4 param_6,undefined4 param_7)

{
  (**(code **)(*param_2 + 0x14))(param_1,param_2,param_3,param_4,param_5,param_6,param_7);
  return param_1;
}

// ---- FUN_0079a1f4  @ 0x79a1f4
void FUN_0079a1f4(int *param_1)

{
  (**(code **)(*param_1 + 0x18))();
  return;
}

// ---- FUN_0079a280  @ 0x79a280
void FUN_0079a280(int *param_1)

{
  (**(code **)(*param_1 + 0x20))();
  return;
}

// ---- FUN_0079a2d4  @ 0x79a2d4
undefined4 FUN_0079a2d4(int *param_1,undefined4 param_2)

{
  undefined4 *puVar1;
  
  puVar1 = (undefined4 *)param_1[5];
  if (puVar1 < (undefined4 *)param_1[6]) {
    *puVar1 = param_2;
    param_1[5] = (int)(puVar1 + 1);
  }
  else {
    param_2 = (**(code **)(*param_1 + 0x34))();
  }
  return param_2;
}

// ---- FUN_0079a2f4  @ 0x79a2f4
void FUN_0079a2f4(int *param_1)

{
  (**(code **)(*param_1 + 0x30))();
  return;
}

// ---- FUN_0079a398  @ 0x79a398
undefined4 * FUN_0079a398(undefined4 *param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  
  uVar4 = *(undefined4 *)(param_2 + 4);
  uVar3 = *(undefined4 *)(param_2 + 8);
  uVar1 = *(undefined4 *)(param_2 + 0xc);
  uVar2 = *(undefined4 *)(param_2 + 0x10);
  param_1[5] = *(undefined4 *)(param_2 + 0x14);
  uVar5 = *(undefined4 *)(param_2 + 0x14);
  param_1[2] = uVar3;
  param_1[1] = uVar4;
  param_1[3] = uVar1;
  param_1[4] = uVar2;
  *param_1 = &PTR_LAB_00799d78_1_0093d988;
  param_1[6] = uVar5;
  FUN_007afd04(param_1 + 7,param_2 + 0x1c,uVar1,uVar2,param_4);
  return param_1;
}

// ---- FUN_0079a3e0  @ 0x79a3e0
void FUN_0079a3e0(undefined4 param_1,undefined4 param_2)

{
  undefined1 auStack_9 [5];
  
  FUN_007ad334(param_1,param_2,auStack_9);
  return;
}

// ---- FUN_0079a3f4  @ 0x79a3f4
void FUN_0079a3f4(void)

{
  return;
}

// ---- FUN_0079a3fc  @ 0x79a3fc
void FUN_0079a3fc(void)

{
  return;
}

// ---- FUN_0079a40c  @ 0x79a40c
undefined4 * FUN_0079a40c(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_007c10b0_1_0093ef90;
  FUN_007c101c();
  FUN_007ae308(param_1 + 9);
  *param_1 = &PTR_FUN_00799d5c_1_0093d948;
  FUN_007b01c0(param_1 + 7);
  return param_1;
}

// ---- FUN_0079a468  @ 0x79a468
void * FUN_0079a468(void *param_1)

{
  FUN_0079a40c();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0079a47c  @ 0x79a47c
undefined4 * FUN_0079a47c(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_007c2e80_1_0093f188;
  FUN_007c2dec();
  FUN_007ae308(param_1 + 9);
  *param_1 = &PTR_LAB_00799d78_1_0093d988;
  FUN_007b01c0(param_1 + 7);
  return param_1;
}

// ---- FUN_0079a4d8  @ 0x79a4d8
void * FUN_0079a4d8(void *param_1)

{
  FUN_0079a47c();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0079a4ec  @ 0x79a4ec
undefined1 FUN_0079a4ec(uint *param_1,uint param_2)

{
  uint *puVar1;
  uint uVar2;
  undefined1 local_9;
  
  uVar2 = param_1[4];
  if (uVar2 == 0) {
LAB_0079a50a:
    puVar1 = param_1;
code_r0x0079a510:
    switch((char)puVar1[3]) {
    case '\0':
      uVar2 = puVar1[6];
      break;
    case '\x01':
      uVar2 = *(uint *)puVar1[6];
      param_1 = (uint *)puVar1[6];
      if (uVar2 <= param_2) {
        param_2 = param_2 - uVar2;
        param_1 = (uint *)puVar1[7];
      }
      goto LAB_0079a50a;
    case '\x02':
    case '\x03':
      (**(code **)(*(int *)puVar1[6] + 8))((int *)puVar1[6],param_2,1,&local_9);
      return local_9;
    default:
      goto code_r0x0079a510;
    }
  }
  return *(undefined1 *)(uVar2 + param_2);
}

// ---- FUN_0079a548  @ 0x79a548
undefined4 * FUN_0079a548(undefined4 *param_1)

{
  FUN_007c0ce8();
  *param_1 = &PTR_FUN_0079a40c_1_0093d9d8;
  return param_1;
}

// ---- FUN_0079a560  @ 0x79a560
undefined4 *
FUN_0079a560(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  undefined4 uVar2;
  
  FUN_007c0ce8();
  *param_1 = &PTR_FUN_0079a40c_1_0093d9d8;
  FUN_007ae240(param_1 + 9,param_2,param_3);
  iVar1 = FUN_007ae2b4(param_1 + 9);
  if (iVar1 == 0) {
    return param_1;
  }
  param_1[0xb] = param_3;
  param_1[0x10] = param_4;
  FUN_007c0d9c(param_1);
  uVar2 = param_1[0xf];
  *(undefined1 *)((int)param_1 + 0x45) = 0;
  *(undefined1 *)((int)param_1 + 0x46) = 0;
  param_1[1] = uVar2;
  param_1[2] = uVar2;
  param_1[3] = uVar2;
  param_1[5] = 0;
  param_1[4] = 0;
  param_1[6] = 0;
  return param_1;
}

// ---- FUN_0079a5cc  @ 0x79a5cc
undefined4 *
FUN_0079a5cc(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  undefined4 uVar2;
  
  FUN_007c0ce8();
  *param_1 = &PTR_FUN_0079a40c_1_0093d9d8;
  FUN_007ae20c(param_1 + 9,param_2,param_3);
  iVar1 = FUN_007ae2b4(param_1 + 9);
  if (iVar1 == 0) {
    return param_1;
  }
  param_1[0xb] = param_3;
  param_1[0x10] = param_4;
  FUN_007c0d9c(param_1);
  uVar2 = param_1[0xf];
  *(undefined1 *)((int)param_1 + 0x45) = 0;
  *(undefined1 *)((int)param_1 + 0x46) = 0;
  param_1[1] = uVar2;
  param_1[2] = uVar2;
  param_1[3] = uVar2;
  param_1[5] = 0;
  param_1[4] = 0;
  param_1[6] = 0;
  return param_1;
}

// ---- FUN_0079a648  @ 0x79a648
undefined4 FUN_0079a648(uint *param_1,uint param_2)

{
  uint *puVar1;
  uint uVar2;
  undefined4 local_c;
  
  uVar2 = param_1[4];
  if (uVar2 == 0) {
LAB_0079a668:
    puVar1 = param_1;
code_r0x0079a66e:
    switch((char)puVar1[3]) {
    case '\0':
      uVar2 = puVar1[6];
      break;
    case '\x01':
      uVar2 = *(uint *)puVar1[6];
      param_1 = (uint *)puVar1[6];
      if (uVar2 <= param_2) {
        param_2 = param_2 - uVar2;
        param_1 = (uint *)puVar1[7];
      }
      goto LAB_0079a668;
    case '\x02':
    case '\x03':
      (**(code **)(*(int *)puVar1[6] + 8))((int *)puVar1[6],param_2,1,&local_c);
      return local_c;
    default:
      goto code_r0x0079a66e;
    }
  }
  return *(undefined4 *)(uVar2 + param_2 * 4);
}

// ---- FUN_0079a6a0  @ 0x79a6a0
undefined4 * FUN_0079a6a0(undefined4 *param_1)

{
  FUN_007c2aa0();
  *param_1 = &PTR_FUN_0079a47c_1_0093da18;
  return param_1;
}

// ---- FUN_0079a6b8  @ 0x79a6b8
undefined4 *
FUN_0079a6b8(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  undefined4 uVar2;
  
  FUN_007c2aa0();
  *param_1 = &PTR_FUN_0079a47c_1_0093da18;
  FUN_007ae240(param_1 + 9,param_2,param_3);
  iVar1 = FUN_007ae2b4(param_1 + 9);
  if (iVar1 == 0) {
    return param_1;
  }
  param_1[0xb] = param_3;
  param_1[0x10] = param_4;
  FUN_007c2b54(param_1);
  uVar2 = param_1[0xf];
  *(undefined1 *)((int)param_1 + 0x45) = 0;
  *(undefined1 *)((int)param_1 + 0x46) = 0;
  param_1[1] = uVar2;
  param_1[2] = uVar2;
  param_1[3] = uVar2;
  param_1[5] = 0;
  param_1[4] = 0;
  param_1[6] = 0;
  return param_1;
}

// ---- FUN_0079a724  @ 0x79a724
undefined4 *
FUN_0079a724(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  undefined4 uVar2;
  
  FUN_007c2aa0();
  *param_1 = &PTR_FUN_0079a47c_1_0093da18;
  FUN_007ae20c(param_1 + 9,param_2,param_3);
  iVar1 = FUN_007ae2b4(param_1 + 9);
  if (iVar1 == 0) {
    return param_1;
  }
  param_1[0xb] = param_3;
  param_1[0x10] = param_4;
  FUN_007c2b54(param_1);
  uVar2 = param_1[0xf];
  *(undefined1 *)((int)param_1 + 0x45) = 0;
  *(undefined1 *)((int)param_1 + 0x46) = 0;
  param_1[1] = uVar2;
  param_1[2] = uVar2;
  param_1[3] = uVar2;
  param_1[5] = 0;
  param_1[4] = 0;
  param_1[6] = 0;
  return param_1;
}

// ---- FUN_0079a7a0  @ 0x79a7a0
undefined4 * FUN_0079a7a0(undefined4 *param_1)

{
  undefined4 *puVar1;
  undefined4 *puVar2;
  
  param_1[1] = 0;
  *param_1 = &DAT_0093da70;
  param_1[2] = 0;
  param_1[3] = 0;
  param_1[4] = 0;
  param_1[5] = 0;
  param_1[6] = 0;
  param_1[7] = 0;
  param_1[8] = 0;
  puVar1 = param_1 + 0xb;
  do {
    puVar1[-2] = 0;
    puVar2 = puVar1 + 2;
    puVar1[-1] = 0;
    puVar1 = puVar2;
  } while (puVar2 != param_1 + 0x1b);
  param_1[0x1a] = param_1 + 9;
  param_1[0x19] = 8;
  FUN_007adf48(puVar2);
  return param_1;
}

// ---- FUN_0079a948  @ 0x79a948
void FUN_0079a948(int param_1,undefined4 param_2)

{
  int *piVar1;
  
  piVar1 = *(int **)(param_1 + 0x18);
  if (piVar1 != (int *)0x0) {
    do {
      (*(code *)piVar1[1])(param_2,param_1,piVar1[2]);
      piVar1 = (int *)*piVar1;
    } while (piVar1 != (int *)0x0);
    return;
  }
  return;
}

// ---- FUN_0079a97c  @ 0x79a97c
void FUN_0079a97c(int param_1)

{
  bool bVar1;
  undefined4 *puVar2;
  int iVar3;
  int *piVar4;
  void *pvVar5;
  
  puVar2 = *(undefined4 **)(param_1 + 0x18);
  if (puVar2 != (void *)0x0) {
    piVar4 = (int *)((int)puVar2 + 0xc);
    DataMemoryBarrier(0x1f);
    while( true ) {
      do {
        ExclusiveAccess(piVar4);
        iVar3 = *piVar4;
        bVar1 = (bool)hasExclusiveAccess(piVar4);
      } while (!bVar1);
      *piVar4 = iVar3 + -1;
      DataMemoryBarrier(0x1f);
      if (iVar3 != 0) break;
      pvVar5 = (void *)*puVar2;
      operator_delete(puVar2);
      if (pvVar5 == (void *)0x0) break;
      DataMemoryBarrier(0x1f);
      piVar4 = (int *)((int)pvVar5 + 0xc);
      puVar2 = pvVar5;
    }
  }
  *(undefined4 *)(param_1 + 0x18) = 0;
  return;
}

// ---- FUN_0079a9bc  @ 0x79a9bc
undefined4 * FUN_0079a9bc(undefined4 *param_1)

{
  undefined4 *puVar1;
  
  *param_1 = &DAT_0093da70;
  FUN_0079a948(param_1,0);
  FUN_0079a97c(param_1);
  puVar1 = (undefined4 *)param_1[0x1a];
  if (puVar1 != param_1 + 9) {
    if (puVar1 != (undefined4 *)0x0) {
      operator_delete__(puVar1);
    }
    param_1[0x1a] = 0;
  }
  FUN_007b01c0(param_1 + 0x1b);
  return param_1;
}

// ---- FUN_0079a9f8  @ 0x79a9f8
void * FUN_0079a9f8(void *param_1)

{
  FUN_0079a9bc();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0079ab30  @ 0x79ab30
undefined4 * FUN_0079ab30(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0079ab30_1_0093dd30;
  FUN_007afcc4();
  return param_1;
}

// ---- FUN_0079ac50  @ 0x79ac50
undefined4 FUN_0079ac50(undefined4 param_1,int param_2)

{
  undefined1 auStack_c [4];
  
  FUN_007c6a60(param_1,*(undefined4 *)(*(int *)(param_2 + 8) + 0x14),auStack_c);
  return param_1;
}

// ---- FUN_0079ac68  @ 0x79ac68
undefined4 FUN_0079ac68(undefined4 param_1,int param_2)

{
  undefined1 auStack_c [4];
  
  FUN_007c6a60(param_1,*(undefined4 *)(*(int *)(param_2 + 8) + 0x1c),auStack_c);
  return param_1;
}

// ---- FUN_0079ac80  @ 0x79ac80
undefined4 FUN_0079ac80(undefined4 param_1,int param_2)

{
  undefined1 auStack_c [4];
  
  FUN_007c6a60(param_1,*(undefined4 *)(*(int *)(param_2 + 8) + 0x24),auStack_c);
  return param_1;
}

// ---- FUN_0079ac98  @ 0x79ac98
undefined4 FUN_0079ac98(undefined4 param_1,int param_2)

{
  undefined1 auStack_c [4];
  
  FUN_007c6a60(param_1,*(undefined4 *)(*(int *)(param_2 + 8) + 8),auStack_c);
  return param_1;
}

// ---- FUN_0079acb0  @ 0x79acb0
undefined4 FUN_0079acb0(undefined4 param_1,int param_2)

{
  undefined1 auStack_c [4];
  
  FUN_007c6a60(param_1,*(undefined4 *)(*(int *)(param_2 + 8) + 0x14),auStack_c);
  return param_1;
}

// ---- FUN_0079acc8  @ 0x79acc8
undefined4 FUN_0079acc8(undefined4 param_1,int param_2)

{
  undefined1 auStack_c [4];
  
  FUN_007c6a60(param_1,*(undefined4 *)(*(int *)(param_2 + 8) + 0x1c),auStack_c);
  return param_1;
}

// ---- FUN_0079ace0  @ 0x79ace0
undefined4 FUN_0079ace0(undefined4 param_1,int param_2)

{
  undefined1 auStack_c [4];
  
  FUN_007c6a60(param_1,*(undefined4 *)(*(int *)(param_2 + 8) + 0x24),auStack_c);
  return param_1;
}

// ---- FUN_0079acf8  @ 0x79acf8
undefined4 FUN_0079acf8(undefined4 param_1,int param_2)

{
  undefined1 auStack_c [4];
  
  FUN_007c6a60(param_1,*(undefined4 *)(*(int *)(param_2 + 8) + 8),auStack_c);
  return param_1;
}

// ---- FUN_0079ad10  @ 0x79ad10
undefined4 FUN_0079ad10(undefined4 param_1,int param_2)

{
  undefined1 auStack_c [4];
  
  FUN_007c6a60(param_1,*(undefined4 *)(*(int *)(param_2 + 8) + 0x14),auStack_c);
  return param_1;
}

// ---- FUN_0079ad28  @ 0x79ad28
undefined4 FUN_0079ad28(undefined4 param_1,int param_2)

{
  undefined1 auStack_c [4];
  
  FUN_007c6a60(param_1,*(undefined4 *)(*(int *)(param_2 + 8) + 0x1c),auStack_c);
  return param_1;
}

// ---- FUN_0079ad80  @ 0x79ad80
undefined4 * FUN_0079ad80(undefined4 *param_1)

{
  *param_1 = &DAT_0093de10;
  if (*(char *)((int)param_1 + 0x43) != '\0') {
    if ((void *)param_1[2] != (void *)0x0) {
      operator_delete__((void *)param_1[2]);
    }
    if ((void *)param_1[5] != (void *)0x0) {
      operator_delete__((void *)param_1[5]);
    }
    if ((void *)param_1[7] != (void *)0x0) {
      operator_delete__((void *)param_1[7]);
    }
    if ((void *)param_1[9] != (void *)0x0) {
      operator_delete__((void *)param_1[9]);
    }
  }
  FUN_007afcc4(param_1);
  return param_1;
}

// ---- FUN_0079ae0c  @ 0x79ae0c
void * FUN_0079ae0c(void *param_1)

{
  FUN_0079ad80();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0079ae20  @ 0x79ae20
undefined4 * FUN_0079ae20(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0079ab30_1_0093dd30;
  FUN_007afcc4();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0079ae74  @ 0x79ae74
undefined4 * FUN_0079ae74(undefined4 *param_1)

{
  *param_1 = &PTR_LAB_0079ab60_1_0093db40;
  FUN_007afcc4();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0079aec8  @ 0x79aec8
undefined4 * FUN_0079aec8(undefined4 *param_1)

{
  *param_1 = &DAT_0093dd60;
  FUN_007afcc4();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0079af88  @ 0x79af88
undefined4 * FUN_0079af88(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0079af88_1_0093dc40;
  FUN_007acbd8(param_1 + 2);
  FUN_007afcc4(param_1);
  return param_1;
}

// ---- FUN_0079afb4  @ 0x79afb4
void * FUN_0079afb4(void *param_1)

{
  FUN_0079af88();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0079afc8  @ 0x79afc8
undefined4 * FUN_0079afc8(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0079afc8_1_0093dde0;
  FUN_0079af88();
  return param_1;
}

// ---- FUN_0079b130  @ 0x79b130
undefined4 * FUN_0079b130(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0079b130_1_0093dc90;
  FUN_007a4e90();
  return param_1;
}

// ---- FUN_0079b21c  @ 0x79b21c
void FUN_0079b21c(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 extraout_r2;
  
  FUN_007af570();
  (**(code **)(*param_1 + 0x18))(param_1,param_2,extraout_r2,*(code **)(*param_1 + 0x18),param_4);
  return;
}

// ---- FUN_0079b234  @ 0x79b234
undefined4 * FUN_0079b234(undefined4 *param_1)

{
  *param_1 = &PTR_LAB_0079b000_1_0093dab0;
  FUN_007acbd8(param_1 + 2);
  FUN_007afcc4(param_1);
  return param_1;
}

// ---- FUN_0079b3f0  @ 0x79b3f0
int FUN_0079b3f0(undefined4 param_1,char *param_2,undefined4 param_3,char *param_4)

{
  char *__s1;
  int iVar1;
  size_t sVar2;
  char *__locale;
  
  __s1 = setlocale(1,(char *)0x0);
  if ((__s1 == (char *)0x0) || (iVar1 = strcmp(__s1,"C"), iVar1 == 0)) {
    iVar1 = vsprintf(param_2,param_4,&stack0x00000000);
  }
  else {
    sVar2 = strlen(__s1);
    __locale = operator_new__(sVar2 + 1);
    memcpy(__locale,__s1,sVar2 + 1);
    setlocale(1,"C");
    iVar1 = vsprintf(param_2,param_4,&stack0x00000000);
    if (__locale != (char *)0x0) {
      setlocale(1,__locale);
      operator_delete__(__locale);
    }
  }
  return iVar1;
}

// ---- FUN_0079b478  @ 0x79b478
int FUN_0079b478(int *param_1,void *param_2,int param_3,void *param_4)

{
  if ((char)param_1[7] == '\x01') {
    memcpy(param_4,param_2,param_3 - (int)param_2);
  }
  else {
    if ((char)param_1[7] == '\0') {
      FUN_007af570();
    }
    param_3 = (**(code **)(*param_1 + 0x1c))(param_1,param_2,param_3,param_4);
  }
  return param_3;
}

// ---- FUN_0079b554  @ 0x79b554
void FUN_0079b554(int *param_1)

{
  (**(code **)(*param_1 + 0xc))();
  return;
}

// ---- FUN_0079b560  @ 0x79b560
undefined4 FUN_0079b560(undefined4 param_1,int *param_2)

{
  (**(code **)(*param_2 + 0x10))();
  return param_1;
}

// ---- FUN_0079b570  @ 0x79b570
undefined4 FUN_0079b570(undefined4 param_1,int *param_2)

{
  (**(code **)(*param_2 + 0x14))();
  return param_1;
}

// ---- FUN_0079b580  @ 0x79b580
undefined4 FUN_0079b580(undefined4 param_1,int *param_2)

{
  (**(code **)(*param_2 + 0x18))();
  return param_1;
}

// ---- FUN_0079b590  @ 0x79b590
undefined4 FUN_0079b590(undefined4 param_1,int *param_2)

{
  (**(code **)(*param_2 + 0x1c))();
  return param_1;
}

// ---- FUN_0079b5a0  @ 0x79b5a0
void FUN_0079b5a0(int *param_1)

{
  (**(code **)(*param_1 + 0x20))();
  return;
}

// ---- FUN_0079b5ac  @ 0x79b5ac
undefined4 FUN_0079b5ac(int *param_1)

{
  undefined4 uVar1;
  
  uVar1 = (**(code **)(*param_1 + 0x24))();
  return uVar1;
}

// ---- FUN_0079b5dc  @ 0x79b5dc
undefined4 FUN_0079b5dc(int *param_1)

{
  undefined4 uVar1;
  
  uVar1 = (**(code **)(*param_1 + 0x28))();
  return uVar1;
}

// ---- FUN_0079b6b0  @ 0x79b6b0
void FUN_0079b6b0(int *param_1)

{
  (**(code **)(*param_1 + 0xc))();
  return;
}

// ---- FUN_0079b6bc  @ 0x79b6bc
undefined4 FUN_0079b6bc(undefined4 param_1,int *param_2)

{
  (**(code **)(*param_2 + 0x10))();
  return param_1;
}

// ---- FUN_0079b6cc  @ 0x79b6cc
undefined4 FUN_0079b6cc(undefined4 param_1,int *param_2)

{
  (**(code **)(*param_2 + 0x14))();
  return param_1;
}

// ---- FUN_0079b6dc  @ 0x79b6dc
undefined4 FUN_0079b6dc(undefined4 param_1,int *param_2)

{
  (**(code **)(*param_2 + 0x18))();
  return param_1;
}

// ---- FUN_0079b6ec  @ 0x79b6ec
undefined4 FUN_0079b6ec(undefined4 param_1,int *param_2)

{
  (**(code **)(*param_2 + 0x1c))();
  return param_1;
}

// ---- FUN_0079b6fc  @ 0x79b6fc
void FUN_0079b6fc(int *param_1)

{
  (**(code **)(*param_1 + 0x20))();
  return;
}

// ---- FUN_0079b708  @ 0x79b708
undefined4 FUN_0079b708(int *param_1)

{
  undefined4 uVar1;
  
  uVar1 = (**(code **)(*param_1 + 0x24))();
  return uVar1;
}

// ---- FUN_0079b738  @ 0x79b738
undefined4 FUN_0079b738(int *param_1)

{
  undefined4 uVar1;
  
  uVar1 = (**(code **)(*param_1 + 0x28))();
  return uVar1;
}

// ---- FUN_0079b998  @ 0x79b998
undefined4
FUN_0079b998(undefined4 param_1,int *param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5,undefined4 param_6,undefined1 param_7,undefined4 param_8,
            undefined4 param_9,undefined4 param_10)

{
  (**(code **)(*param_2 + 0xc))
            (param_1,param_2,param_3,param_4,param_5,param_6,param_7,param_8,param_9,param_10);
  return param_1;
}

// ---- FUN_0079ba24  @ 0x79ba24
undefined4
FUN_0079ba24(undefined4 param_1,int *param_2,undefined4 param_3,undefined4 param_4,
            undefined1 param_5,undefined4 param_6,undefined1 param_7,undefined4 param_8)

{
  (**(code **)(*param_2 + 0xc))(param_1,param_2,param_3,param_4,param_5,param_6,param_7,param_8);
  return param_1;
}

// ---- FUN_0079baf0  @ 0x79baf0
void FUN_0079baf0(int *param_1)

{
  (**(code **)(*param_1 + 0xc))();
  return;
}

// ---- FUN_0079bafc  @ 0x79bafc
undefined4 FUN_0079bafc(undefined4 param_1,int *param_2)

{
  (**(code **)(*param_2 + 0x10))();
  return param_1;
}

// ---- FUN_0079bb0c  @ 0x79bb0c
undefined4 FUN_0079bb0c(undefined4 param_1,int *param_2)

{
  (**(code **)(*param_2 + 0x14))();
  return param_1;
}

// ---- FUN_0079bb1c  @ 0x79bb1c
undefined4 FUN_0079bb1c(undefined4 param_1,int *param_2)

{
  (**(code **)(*param_2 + 0x18))();
  return param_1;
}

// ---- FUN_0079bc48  @ 0x79bc48
undefined4
FUN_0079bc48(undefined4 param_1,int *param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5,undefined4 param_6,undefined4 param_7,undefined4 param_8,
            undefined4 param_9)

{
  (**(code **)(*param_2 + 0xc))
            (param_1,param_2,param_3,param_4,param_5,param_6,param_7,param_8,param_9);
  return param_1;
}

// ---- FUN_0079bc84  @ 0x79bc84
undefined4
FUN_0079bc84(undefined4 param_1,int *param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5,undefined4 param_6,undefined4 param_7,undefined4 param_8,
            undefined4 param_9)

{
  (**(code **)(*param_2 + 0x10))
            (param_1,param_2,param_3,param_4,param_5,param_6,param_7,param_8,param_9);
  return param_1;
}

// ---- FUN_0079bcc0  @ 0x79bcc0
undefined4
FUN_0079bcc0(undefined4 param_1,int *param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5,undefined4 param_6,undefined4 param_7,undefined4 param_8,
            undefined4 param_9)

{
  (**(code **)(*param_2 + 0x14))
            (param_1,param_2,param_3,param_4,param_5,param_6,param_7,param_8,param_9);
  return param_1;
}

// ---- FUN_0079bcfc  @ 0x79bcfc
undefined4
FUN_0079bcfc(undefined4 param_1,int *param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5,undefined4 param_6,undefined4 param_7,undefined4 param_8,
            undefined4 param_9)

{
  (**(code **)(*param_2 + 0x18))
            (param_1,param_2,param_3,param_4,param_5,param_6,param_7,param_8,param_9);
  return param_1;
}

// ---- FUN_0079bd38  @ 0x79bd38
undefined4
FUN_0079bd38(undefined4 param_1,int *param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5,undefined4 param_6,undefined4 param_7,undefined4 param_8,
            undefined4 param_9)

{
  (**(code **)(*param_2 + 0x1c))
            (param_1,param_2,param_3,param_4,param_5,param_6,param_7,param_8,param_9);
  return param_1;
}

// ---- FUN_0079bd74  @ 0x79bd74
undefined4
FUN_0079bd74(undefined4 param_1,int *param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5,undefined4 param_6,undefined4 param_7,undefined4 param_8,
            undefined4 param_9)

{
  (**(code **)(*param_2 + 0x20))
            (param_1,param_2,param_3,param_4,param_5,param_6,param_7,param_8,param_9);
  return param_1;
}

// ---- FUN_0079bdb0  @ 0x79bdb0
undefined4
FUN_0079bdb0(undefined4 param_1,int *param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5,undefined4 param_6,undefined4 param_7,undefined4 param_8,
            undefined4 param_9)

{
  (**(code **)(*param_2 + 0x24))
            (param_1,param_2,param_3,param_4,param_5,param_6,param_7,param_8,param_9);
  return param_1;
}

// ---- FUN_0079bdec  @ 0x79bdec
undefined4
FUN_0079bdec(undefined4 param_1,int *param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5,undefined4 param_6,undefined4 param_7,undefined4 param_8,
            undefined4 param_9)

{
  (**(code **)(*param_2 + 0x28))
            (param_1,param_2,param_3,param_4,param_5,param_6,param_7,param_8,param_9);
  return param_1;
}

// ---- FUN_0079be28  @ 0x79be28
undefined4
FUN_0079be28(undefined4 param_1,int *param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5,undefined4 param_6,undefined4 param_7,undefined4 param_8,
            undefined4 param_9)

{
  (**(code **)(*param_2 + 0x2c))
            (param_1,param_2,param_3,param_4,param_5,param_6,param_7,param_8,param_9);
  return param_1;
}

// ---- FUN_0079be64  @ 0x79be64
undefined4
FUN_0079be64(undefined4 param_1,int *param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5,undefined4 param_6,undefined4 param_7,undefined4 param_8,
            undefined4 param_9)

{
  (**(code **)(*param_2 + 0x30))
            (param_1,param_2,param_3,param_4,param_5,param_6,param_7,param_8,param_9);
  return param_1;
}

// ---- FUN_0079bee4  @ 0x79bee4
undefined4
FUN_0079bee4(undefined4 param_1,int *param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5,undefined1 param_6,undefined4 param_7)

{
  (**(code **)(*param_2 + 0xc))(param_1,param_2,param_3,param_4,param_5,param_6,param_7);
  return param_1;
}

// ---- FUN_0079bf10  @ 0x79bf10
undefined4
FUN_0079bf10(undefined4 param_1,int *param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5,undefined1 param_6,undefined4 param_7)

{
  (**(code **)(*param_2 + 0x10))(param_1,param_2,param_3,param_4,param_5,param_6,param_7);
  return param_1;
}

// ---- FUN_0079bf3c  @ 0x79bf3c
undefined4
FUN_0079bf3c(undefined4 param_1,int *param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5,undefined1 param_6,undefined4 param_7,undefined4 param_8)

{
  (**(code **)(*param_2 + 0x14))(param_1,param_2,param_3,param_4,param_5,param_6,param_7,param_8);
  return param_1;
}

// ---- FUN_0079bf70  @ 0x79bf70
undefined4
FUN_0079bf70(undefined4 param_1,int *param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5,undefined1 param_6,undefined4 param_7,undefined4 param_8)

{
  (**(code **)(*param_2 + 0x18))(param_1,param_2,param_3,param_4,param_5,param_6,param_7,param_8);
  return param_1;
}

// ---- FUN_0079bfa4  @ 0x79bfa4
undefined4
FUN_0079bfa4(undefined4 param_1,int *param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5,undefined1 param_6,undefined4 param_7,undefined4 param_8)

{
  (**(code **)(*param_2 + 0x1c))(param_1,param_2,param_3,param_4,param_5,param_6,param_7,param_8);
  return param_1;
}

// ---- FUN_0079bfd4  @ 0x79bfd4
undefined4
FUN_0079bfd4(undefined4 param_1,int *param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5,undefined1 param_6,undefined4 param_7,undefined4 param_8)

{
  (**(code **)(*param_2 + 0x20))(param_1,param_2,param_3,param_4,param_5,param_6,param_7,param_8);
  return param_1;
}

// ---- FUN_0079c004  @ 0x79c004
undefined4
FUN_0079c004(undefined4 param_1,int *param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5,undefined1 param_6,undefined4 param_7)

{
  (**(code **)(*param_2 + 0x24))(param_1,param_2,param_3,param_4,param_5,param_6,param_7);
  return param_1;
}

// ---- FUN_0079c06c  @ 0x79c06c
undefined4 * FUN_0079c06c(undefined4 *param_1,undefined4 param_2,int param_3)

{
  undefined4 uVar1;
  
  param_1[2] = param_2;
  param_1[1] = (uint)(param_3 != 0);
  *param_1 = &DAT_0093dbc0;
  uVar1 = FUN_007b007c();
  param_1[4] = uVar1;
  FUN_007acc5c(param_1,0);
  return param_1;
}

// ---- FUN_0079c0a4  @ 0x79c0a4
undefined4 * FUN_0079c0a4(undefined4 *param_1,undefined4 param_2,char *param_3,int param_4)

{
  char *__s2;
  int iVar1;
  size_t sVar2;
  void *pvVar3;
  
  param_1[1] = (uint)(param_4 != 0);
  param_1[2] = 0;
  *param_1 = &DAT_0093dbc0;
  __s2 = (char *)FUN_007b007c();
  iVar1 = strcmp(param_3,__s2);
  if (iVar1 == 0) {
    param_1[4] = __s2;
  }
  else {
    sVar2 = strlen(param_3);
    pvVar3 = operator_new__(sVar2 + 1);
    pvVar3 = memcpy(pvVar3,param_3,sVar2 + 1);
    param_1[4] = pvVar3;
  }
  FUN_007acc5c(param_1,param_2);
  return param_1;
}

// ---- FUN_0079c3ac  @ 0x79c3ac
undefined4
FUN_0079c3ac(undefined4 param_1,int *param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5,undefined4 param_6,undefined4 param_7,undefined4 param_8,
            undefined4 param_9)

{
  (**(code **)(*param_2 + 0xc))
            (param_1,param_2,param_3,param_4,param_5,param_6,param_7,param_8,param_9);
  return param_1;
}

// ---- FUN_0079c3e8  @ 0x79c3e8
undefined4
FUN_0079c3e8(undefined4 param_1,int *param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5,undefined4 param_6,undefined4 param_7,undefined4 param_8,
            undefined4 param_9)

{
  (**(code **)(*param_2 + 0x10))
            (param_1,param_2,param_3,param_4,param_5,param_6,param_7,param_8,param_9);
  return param_1;
}

// ---- FUN_0079c424  @ 0x79c424
undefined4
FUN_0079c424(undefined4 param_1,int *param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5,undefined4 param_6,undefined4 param_7,undefined4 param_8,
            undefined4 param_9)

{
  (**(code **)(*param_2 + 0x14))
            (param_1,param_2,param_3,param_4,param_5,param_6,param_7,param_8,param_9);
  return param_1;
}

// ---- FUN_0079c460  @ 0x79c460
undefined4
FUN_0079c460(undefined4 param_1,int *param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5,undefined4 param_6,undefined4 param_7,undefined4 param_8,
            undefined4 param_9)

{
  (**(code **)(*param_2 + 0x18))
            (param_1,param_2,param_3,param_4,param_5,param_6,param_7,param_8,param_9);
  return param_1;
}

// ---- FUN_0079c49c  @ 0x79c49c
undefined4
FUN_0079c49c(undefined4 param_1,int *param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5,undefined4 param_6,undefined4 param_7,undefined4 param_8,
            undefined4 param_9)

{
  (**(code **)(*param_2 + 0x1c))
            (param_1,param_2,param_3,param_4,param_5,param_6,param_7,param_8,param_9);
  return param_1;
}

// ---- FUN_0079c4f0  @ 0x79c4f0
undefined4 * FUN_0079c4f0(undefined4 *param_1,int param_2)

{
  undefined4 uVar1;
  
  param_1[1] = (uint)(param_2 != 0);
  *param_1 = &PTR_FUN_0079af88_1_0093dc40;
  uVar1 = FUN_007b0058();
  param_1[2] = uVar1;
  return param_1;
}

// ---- FUN_0079c554  @ 0x79c554
void FUN_0079c554(int *param_1)

{
  (**(code **)(*param_1 + 8))();
  return;
}

// ---- FUN_0079c560  @ 0x79c560
undefined4 FUN_0079c560(undefined4 param_1,int *param_2)

{
  (**(code **)(*param_2 + 0xc))();
  return param_1;
}

// ---- FUN_0079c57c  @ 0x79c57c
void FUN_0079c57c(int *param_1)

{
  (**(code **)(*param_1 + 0x10))();
  return;
}

// ---- FUN_0079c6c8  @ 0x79c6c8
undefined4 FUN_0079c6c8(undefined4 param_1,int *param_2)

{
  (**(code **)(*param_2 + 0xc))();
  return param_1;
}

// ---- FUN_0079c6d8  @ 0x79c6d8
void FUN_0079c6d8(int *param_1)

{
  (**(code **)(*param_1 + 0x10))();
  return;
}

// ---- FUN_0079c760  @ 0x79c760
void FUN_0079c760(int *param_1)

{
  uint uVar1;
  int iVar2;
  
  uVar1 = FUN_007b03f0(&DAT_0097247c);
  if ((uVar1 < *(uint *)(*param_1 + 8)) &&
     (iVar2 = *(int *)(*(int *)(*param_1 + 4) + uVar1 * 4), iVar2 != 0)) {
    iVar2 = __dynamic_cast(iVar2,&DAT_0093e7a8,&DAT_0093e65c,0);
    if (iVar2 != 0) {
      return;
    }
                    /* WARNING: Subroutine does not return */
    __cxa_bad_cast();
  }
                    /* WARNING: Subroutine does not return */
  FUN_007c4874();
}

// ---- FUN_0079c7ac  @ 0x79c7ac
/* WARNING: Restarted to delay deadcode elimination for space: stack */

int * FUN_0079c7ac(int *param_1,int *param_2,int *param_3,int param_4,int param_5,undefined1 param_6
                  ,undefined4 param_7,byte *param_8,byte *param_9)

{
  byte bVar1;
  int *piVar2;
  int iVar3;
  uint uVar4;
  uint uVar5;
  byte *pbVar6;
  uint uVar7;
  char cVar8;
  int local_34;
  int *local_30;
  uint local_2c;
  
  local_2c = (uint)(byte)local_2c;
  local_34._0_1_ = (char)param_4;
  piVar2 = (int *)FUN_0079c760(param_5 + 0x6c);
  cVar8 = (char)local_34;
joined_r0x0079c7e0:
  local_34._1_3_ = (undefined3)((uint)param_4 >> 8);
  do {
    if (param_8 == param_9) goto LAB_0079c890;
    bVar1 = *param_8;
    uVar5 = (uint)*(byte *)((int)piVar2 + bVar1 + 0x11d);
    if (uVar5 == 0) {
      uVar5 = (**(code **)(*piVar2 + 0x20))(piVar2);
      if (uVar5 != 0) {
        *(char *)((int)piVar2 + bVar1 + 0x11d) = (char)uVar5;
        goto LAB_0079c864;
      }
    }
    else {
LAB_0079c864:
      if (uVar5 == 0x25) {
        pbVar6 = param_8 + 1;
        if (param_9 == pbVar6) goto LAB_0079c890;
        uVar4 = (uint)param_8[1];
        uVar5 = (uint)*(byte *)((int)piVar2 + uVar4 + 0x11d);
        if (uVar5 == 0) {
          uVar5 = (**(code **)(*piVar2 + 0x20))(piVar2,uVar4,0);
          uVar7 = uVar5;
          if (uVar5 != 0) {
            *(char *)((int)piVar2 + uVar4 + 0x11d) = (char)uVar5;
            if (uVar5 != 0x4f && uVar5 != 0x45) goto LAB_0079c8e6;
            goto LAB_0079c804;
          }
        }
        else {
          uVar7 = uVar5;
          if (uVar5 == 0x4f || uVar5 == 0x45) {
LAB_0079c804:
            pbVar6 = param_8 + 2;
            if (param_9 == pbVar6) {
LAB_0079c890:
              local_34 = CONCAT31(local_34._1_3_,cVar8);
              *param_1 = (int)param_3;
              param_1[1] = local_34;
              return param_1;
            }
            bVar1 = param_8[2];
            uVar5 = (uint)*(byte *)((int)piVar2 + bVar1 + 0x11d);
            if ((uVar5 == 0) && (uVar5 = (**(code **)(*piVar2 + 0x20))(piVar2), uVar5 != 0)) {
              *(char *)((int)piVar2 + bVar1 + 0x11d) = (char)uVar5;
            }
          }
          else {
LAB_0079c8e6:
            uVar7 = 0;
          }
        }
        param_8 = pbVar6;
        local_34 = CONCAT31(local_34._1_3_,cVar8);
        (**(code **)(*param_2 + 8))
                  (&local_30,param_2,param_3,local_34,param_5,param_6,param_7,uVar5,uVar7);
        local_34 = CONCAT31(local_34._1_3_,(byte)local_2c);
        param_3 = local_30;
        cVar8 = (byte)local_2c;
        goto LAB_0079c854;
      }
    }
    if (cVar8 == '\0') {
      if ((byte *)param_3[5] < (byte *)param_3[6]) {
        *(byte *)param_3[5] = *param_8;
        param_3[5] = param_3[5] + 1;
      }
      else {
        iVar3 = (**(code **)(*param_3 + 0x34))(param_3);
        if (iVar3 == -1) break;
      }
    }
    param_8 = param_8 + 1;
  } while( true );
  cVar8 = '\x01';
  local_34 = param_4;
LAB_0079c854:
  param_8 = param_8 + 1;
  param_4 = local_34;
  goto joined_r0x0079c7e0;
}

// ---- FUN_0079c918  @ 0x79c918
undefined4 *
FUN_0079c918(undefined4 *param_1,undefined4 param_2,int *param_3,uint param_4,int *param_5,
            uint param_6,int *param_7,int param_8,int param_9,int param_10,int param_11,
            uint *param_12)

{
  int *piVar1;
  int iVar2;
  uint uVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  int iVar7;
  uint uVar8;
  
  piVar1 = (int *)FUN_0079c760(param_11 + 0x6c);
  if (param_10 == 2) {
    iVar4 = 10;
  }
  else if (param_10 == 4) {
    iVar4 = 1000;
  }
  else {
    iVar4 = 1;
  }
  iVar5 = 0;
  iVar6 = 0;
  do {
    if (param_3 == (int *)0x0) {
      iVar7 = 1;
    }
    else {
      if (param_4 == 0xffffffff) {
        if ((byte *)param_3[2] < (byte *)param_3[3]) {
          param_4 = (uint)*(byte *)param_3[2];
        }
        else {
          param_4 = (**(code **)(*param_3 + 0x24))(param_3);
          if (param_4 == 0xffffffff) {
            iVar7 = 1;
            param_3 = (int *)0x0;
            goto LAB_0079c972;
          }
        }
      }
      iVar7 = 0;
    }
LAB_0079c972:
    if (param_5 == (int *)0x0) {
      iVar2 = 1;
    }
    else {
      if (param_6 == 0xffffffff) {
        if ((byte *)param_5[2] < (byte *)param_5[3]) {
          param_6 = (uint)*(byte *)param_5[2];
        }
        else {
          param_6 = (**(code **)(*param_5 + 0x24))(param_5);
          if (param_6 == 0xffffffff) {
            iVar2 = 1;
            param_5 = (int *)0x0;
            goto LAB_0079c980;
          }
        }
      }
      iVar2 = 0;
    }
LAB_0079c980:
    if (iVar2 == iVar7) {
      if (iVar6 == param_10) {
LAB_0079c98a:
        *param_7 = iVar5;
        goto LAB_0079c98e;
      }
LAB_0079ca4c:
      if (iVar6 == 2 && param_10 == 4) {
        *param_7 = iVar5 + -100;
      }
      else {
        *param_12 = *param_12 | 4;
      }
LAB_0079c98e:
      *param_1 = param_3;
      param_1[1] = param_4;
      return param_1;
    }
    if (iVar6 == param_10) goto LAB_0079c98a;
    uVar8 = 0xff;
    if (param_3 != (int *)0x0) {
      if (param_4 == 0xffffffff) {
        if ((byte *)param_3[2] < (byte *)param_3[3]) {
          param_4 = (uint)*(byte *)param_3[2];
        }
        else {
          param_4 = (**(code **)(*param_3 + 0x24))(param_3,0xff);
          uVar8 = 0xff;
          if (param_4 == 0xffffffff) {
            param_3 = (int *)0x0;
            goto LAB_0079c9b2;
          }
        }
      }
      uVar8 = param_4 & 0xff;
    }
LAB_0079c9b2:
    uVar3 = (uint)*(byte *)((int)piVar1 + uVar8 + 0x11d);
    if (uVar3 == 0) {
      uVar3 = (**(code **)(*piVar1 + 0x20))(piVar1,uVar8,0x2a);
      if (uVar3 == 0x2a) goto LAB_0079ca4c;
      *(char *)((int)piVar1 + uVar8 + 0x11d) = (char)uVar3;
    }
    if (9 < (uVar3 - 0x30 & 0xff)) goto LAB_0079ca4c;
    iVar5 = (uVar3 - 0x30) + iVar5 * 10;
    iVar7 = iVar4 * iVar5;
    if ((iVar7 - param_9 != 0 && param_9 <= iVar7) || (iVar7 + iVar4 <= param_8)) goto LAB_0079ca4c;
    iVar4 = iVar4 / 10;
    if (param_3 != (int *)0x0) {
      if ((uint)param_3[2] < (uint)param_3[3]) {
        param_3[2] = param_3[2] + 1;
      }
      else {
        (**(code **)(*param_3 + 0x28))(param_3);
      }
      param_4 = 0xffffffff;
    }
    iVar6 = iVar6 + 1;
  } while( true );
}

// ---- FUN_0079caec  @ 0x79caec
undefined4 *
FUN_0079caec(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
            int *param_5,int param_6,int param_7,uint *param_8,int param_9)

{
  int iVar1;
  uint uVar2;
  int *piVar3;
  uint uVar4;
  uint uVar5;
  bool bVar6;
  int *local_38;
  uint uStack_34;
  int *local_30;
  uint local_2c;
  int local_28;
  int local_24 [2];
  
  local_30 = (int *)param_3;
  local_2c = param_4;
  FUN_0079c760(param_7 + 0x6c);
  local_24[0] = 0;
  FUN_0079c918(&local_38,param_2,local_30,local_2c,param_5,param_6,&local_28,0,9999,4,param_7,
               local_24);
  local_30 = local_38;
  local_2c = uStack_34;
  if (local_24[0] == 0) {
    if (local_28 < 0) {
      local_28 = local_28 + 100;
    }
    else {
      local_28 = local_28 + -0x76c;
    }
    *(int *)(param_9 + 0x14) = local_28;
  }
  else {
    *param_8 = *param_8 | 4;
  }
  piVar3 = local_38;
  if (local_38 == (int *)0x0) {
    uVar5 = 1;
    uVar4 = uStack_34;
  }
  else {
    if (uStack_34 == 0xffffffff) {
      if ((byte *)local_38[2] < (byte *)local_38[3]) {
        uStack_34 = (uint)*(byte *)local_38[2];
      }
      else {
        uStack_34 = (**(code **)(*local_38 + 0x24))(local_38);
        if (uStack_34 == 0xffffffff) {
          uVar5 = 1;
          piVar3 = (int *)0x0;
          uVar4 = uStack_34;
          goto LAB_0079cb7a;
        }
      }
    }
    uVar5 = 0;
    uVar4 = uStack_34;
  }
LAB_0079cb7a:
  if ((param_5 == (int *)0x0) ||
     (((param_6 == -1 && ((uint)param_5[3] <= (uint)param_5[2])) &&
      (iVar1 = (**(code **)(*param_5 + 0x24))(), iVar1 == -1)))) {
    uVar2 = 1;
  }
  else {
    uVar2 = 0;
  }
  bVar6 = uVar2 == uVar5;
  *param_1 = piVar3;
  if (bVar6) {
    uVar2 = *param_8;
  }
  param_1[1] = uVar4;
  if (bVar6) {
    *param_8 = uVar2 | 2;
  }
  return param_1;
}

// ---- FUN_0079cbe8  @ 0x79cbe8
void FUN_0079cbe8(int *param_1)

{
  uint uVar1;
  int iVar2;
  
  uVar1 = FUN_007b03f0(&DAT_009716a8);
  if ((uVar1 < *(uint *)(*param_1 + 8)) &&
     (iVar2 = *(int *)(*(int *)(*param_1 + 4) + uVar1 * 4), iVar2 != 0)) {
    iVar2 = __dynamic_cast(iVar2,&DAT_0093e7a8,&DAT_0093e048,0);
    if (iVar2 != 0) {
      return;
    }
                    /* WARNING: Subroutine does not return */
    __cxa_bad_cast();
  }
                    /* WARNING: Subroutine does not return */
  FUN_007c4874();
}

// ---- FUN_0079cc34  @ 0x79cc34
void FUN_0079cc34(int *param_1)

{
  uint uVar1;
  int iVar2;
  
  uVar1 = FUN_007b03f0(&DAT_00971678);
  if ((uVar1 < *(uint *)(*param_1 + 8)) &&
     (iVar2 = *(int *)(*(int *)(*param_1 + 4) + uVar1 * 4), iVar2 != 0)) {
    iVar2 = __dynamic_cast(iVar2,&DAT_0093e7a8,&PTR_PTR_0093dfe8,0);
    if (iVar2 != 0) {
      return;
    }
                    /* WARNING: Subroutine does not return */
    __cxa_bad_cast();
  }
                    /* WARNING: Subroutine does not return */
  FUN_007c4874();
}

// ---- FUN_0079cc78  @ 0x79cc78
void FUN_0079cc78(int *param_1)

{
  uint uVar1;
  int iVar2;
  
  uVar1 = FUN_007b03f0(&DAT_00971694);
  if ((uVar1 < *(uint *)(*param_1 + 8)) &&
     (iVar2 = *(int *)(*(int *)(*param_1 + 4) + uVar1 * 4), iVar2 != 0)) {
    iVar2 = __dynamic_cast(iVar2,&DAT_0093e7a8,&PTR_PTR_0093df70,0);
    if (iVar2 != 0) {
      return;
    }
                    /* WARNING: Subroutine does not return */
    __cxa_bad_cast();
  }
                    /* WARNING: Subroutine does not return */
  FUN_007c4874();
}

// ---- FUN_0079ccbc  @ 0x79ccbc
void FUN_0079ccbc(int param_1,undefined4 param_2)

{
  uint *puVar1;
  bool bVar2;
  undefined1 uVar3;
  int *piVar4;
  uint uVar5;
  char *pcVar6;
  void *pvVar7;
  int iVar8;
  int *piVar9;
  int local_40;
  int local_3c;
  int local_38;
  int local_34;
  int local_30;
  int local_2c [2];
  
  *(undefined1 *)(param_1 + 100) = 1;
  piVar4 = (int *)FUN_0079cc78(param_2);
  (**(code **)(*piVar4 + 0x10))(&local_40,piVar4);
  puVar1 = (uint *)(local_40 + -0xc);
  uVar5 = *puVar1;
  *(uint *)(param_1 + 0xc) = uVar5;
  if (puVar1 != &DAT_0097251c) {
    piVar9 = (int *)(local_40 + -4);
    DataMemoryBarrier(0x1f);
    do {
      ExclusiveAccess(piVar9);
      iVar8 = *piVar9;
      bVar2 = (bool)hasExclusiveAccess(piVar9);
    } while (!bVar2);
    *piVar9 = iVar8 + -1;
    DataMemoryBarrier(0x1f);
    if (iVar8 < 1) {
      operator_delete(puVar1);
    }
    uVar5 = *(uint *)(param_1 + 0xc);
  }
  pcVar6 = operator_new__(uVar5);
  (**(code **)(*piVar4 + 0x10))(&local_3c,piVar4);
  FUN_007c527c(&local_3c,pcVar6,*(undefined4 *)(param_1 + 0xc),0);
  if ((undefined4 *)(local_3c + -0xc) != &DAT_0097251c) {
    piVar9 = (int *)(local_3c + -4);
    DataMemoryBarrier(0x1f);
    do {
      ExclusiveAccess(piVar9);
      iVar8 = *piVar9;
      bVar2 = (bool)hasExclusiveAccess(piVar9);
    } while (!bVar2);
    *piVar9 = iVar8 + -1;
    DataMemoryBarrier(0x1f);
    if (iVar8 < 1) {
      operator_delete((undefined4 *)(local_3c + -0xc));
    }
  }
  *(char **)(param_1 + 8) = pcVar6;
  uVar3 = 0;
  if (*(int *)(param_1 + 0xc) != 0) {
    if (*pcVar6 < '\x01') {
      uVar3 = 0;
    }
    else {
      uVar3 = 1;
    }
  }
  iVar8 = *piVar4;
  *(undefined1 *)(param_1 + 0x10) = uVar3;
  (**(code **)(iVar8 + 0x14))(&local_38,piVar4);
  puVar1 = (uint *)(local_38 + -0xc);
  uVar5 = *puVar1;
  *(uint *)(param_1 + 0x18) = uVar5;
  if (puVar1 != &DAT_0097251c) {
    piVar9 = (int *)(local_38 + -4);
    DataMemoryBarrier(0x1f);
    do {
      ExclusiveAccess(piVar9);
      iVar8 = *piVar9;
      bVar2 = (bool)hasExclusiveAccess(piVar9);
    } while (!bVar2);
    *piVar9 = iVar8 + -1;
    DataMemoryBarrier(0x1f);
    if (iVar8 < 1) {
      operator_delete(puVar1);
    }
    uVar5 = *(uint *)(param_1 + 0x18);
  }
  pvVar7 = operator_new__(uVar5);
  (**(code **)(*piVar4 + 0x14))(&local_34,piVar4);
  FUN_007c527c(&local_34,pvVar7,*(undefined4 *)(param_1 + 0x18),0);
  if ((undefined4 *)(local_34 + -0xc) != &DAT_0097251c) {
    piVar9 = (int *)(local_34 + -4);
    DataMemoryBarrier(0x1f);
    do {
      ExclusiveAccess(piVar9);
      iVar8 = *piVar9;
      bVar2 = (bool)hasExclusiveAccess(piVar9);
    } while (!bVar2);
    *piVar9 = iVar8 + -1;
    DataMemoryBarrier(0x1f);
    if (iVar8 < 1) {
      operator_delete((undefined4 *)(local_34 + -0xc));
    }
  }
  iVar8 = *piVar4;
  *(void **)(param_1 + 0x14) = pvVar7;
  (**(code **)(iVar8 + 0x18))(&local_30,piVar4);
  puVar1 = (uint *)(local_30 + -0xc);
  uVar5 = *puVar1;
  *(uint *)(param_1 + 0x20) = uVar5;
  if (puVar1 != &DAT_0097251c) {
    piVar9 = (int *)(local_30 + -4);
    DataMemoryBarrier(0x1f);
    do {
      ExclusiveAccess(piVar9);
      iVar8 = *piVar9;
      bVar2 = (bool)hasExclusiveAccess(piVar9);
    } while (!bVar2);
    *piVar9 = iVar8 + -1;
    DataMemoryBarrier(0x1f);
    if (iVar8 < 1) {
      operator_delete(puVar1);
    }
    uVar5 = *(uint *)(param_1 + 0x20);
  }
  pvVar7 = operator_new__(uVar5);
  (**(code **)(*piVar4 + 0x18))(local_2c,piVar4);
  FUN_007c527c(local_2c,pvVar7,*(undefined4 *)(param_1 + 0x20),0);
  if ((undefined4 *)(local_2c[0] + -0xc) != &DAT_0097251c) {
    piVar9 = (int *)(local_2c[0] + -4);
    DataMemoryBarrier(0x1f);
    do {
      ExclusiveAccess(piVar9);
      iVar8 = *piVar9;
      bVar2 = (bool)hasExclusiveAccess(piVar9);
    } while (!bVar2);
    *piVar9 = iVar8 + -1;
    DataMemoryBarrier(0x1f);
    if (iVar8 < 1) {
      operator_delete((undefined4 *)(local_2c[0] + -0xc));
    }
  }
  iVar8 = *piVar4;
  *(void **)(param_1 + 0x1c) = pvVar7;
  uVar3 = (**(code **)(iVar8 + 8))(piVar4);
  *(undefined1 *)(param_1 + 0x24) = uVar3;
  uVar3 = (**(code **)(*piVar4 + 0xc))(piVar4);
  *(undefined1 *)(param_1 + 0x25) = uVar3;
  piVar4 = (int *)FUN_0079c760(param_2);
  pvVar7 = DAT_0094f574;
  iVar8 = (int)DAT_0094f574 + 0x24;
  if ((char)piVar4[7] == '\x01') {
    memcpy((void *)(param_1 + 0x26),DAT_0094f574,0x24);
  }
  else {
    if ((char)piVar4[7] == '\0') {
      FUN_007af570();
    }
    (**(code **)(*piVar4 + 0x1c))(piVar4,pvVar7,iVar8,(void *)(param_1 + 0x26));
  }
  pvVar7 = DAT_0094f570;
  iVar8 = (int)DAT_0094f570 + 0x1a;
  if ((char)piVar4[7] == '\x01') {
    memcpy((void *)(param_1 + 0x4a),DAT_0094f570,0x1a);
  }
  else {
    if ((char)piVar4[7] == '\0') {
      FUN_007af570(piVar4);
    }
    (**(code **)(*piVar4 + 0x1c))(piVar4,pvVar7,iVar8,(void *)(param_1 + 0x4a));
  }
  return;
}

// ---- FUN_0079cff4  @ 0x79cff4
void FUN_0079cff4(int *param_1)

{
  uint uVar1;
  int iVar2;
  
  uVar1 = FUN_007b03f0(&DAT_0097168c);
  if ((uVar1 < *(uint *)(*param_1 + 8)) &&
     (iVar2 = *(int *)(*(int *)(*param_1 + 4) + uVar1 * 4), iVar2 != 0)) {
    iVar2 = __dynamic_cast(iVar2,&DAT_0093e7a8,&PTR_PTR_0093de68,0);
    if (iVar2 != 0) {
      return;
    }
                    /* WARNING: Subroutine does not return */
    __cxa_bad_cast();
  }
                    /* WARNING: Subroutine does not return */
  FUN_007c4874();
}

// ---- FUN_0079d038  @ 0x79d038
void FUN_0079d038(int *param_1)

{
  uint uVar1;
  int iVar2;
  
  uVar1 = FUN_007b03f0(&DAT_00971690);
  if ((uVar1 < *(uint *)(*param_1 + 8)) &&
     (iVar2 = *(int *)(*(int *)(*param_1 + 4) + uVar1 * 4), iVar2 != 0)) {
    iVar2 = __dynamic_cast(iVar2,&DAT_0093e7a8,&DAT_0093dfa0,0);
    if (iVar2 != 0) {
      return;
    }
                    /* WARNING: Subroutine does not return */
    __cxa_bad_cast();
  }
                    /* WARNING: Subroutine does not return */
  FUN_007c4874();
}

// ---- FUN_0079d07c  @ 0x79d07c
void FUN_0079d07c(int *param_1)

{
  uint uVar1;
  int iVar2;
  
  uVar1 = FUN_007b03f0(&DAT_009716a0);
  if ((uVar1 < *(uint *)(*param_1 + 8)) &&
     (iVar2 = *(int *)(*(int *)(*param_1 + 4) + uVar1 * 4), iVar2 != 0)) {
    iVar2 = __dynamic_cast(iVar2,&DAT_0093e7a8,&DAT_0093df50,0);
    if (iVar2 != 0) {
      return;
    }
                    /* WARNING: Subroutine does not return */
    __cxa_bad_cast();
  }
                    /* WARNING: Subroutine does not return */
  FUN_007c4874();
}

// ---- FUN_0079d0c0  @ 0x79d0c0
void FUN_0079d0c0(int param_1,undefined4 param_2)

{
  uint *puVar1;
  bool bVar2;
  undefined1 uVar3;
  int *piVar4;
  undefined4 uVar5;
  uint uVar6;
  char *pcVar7;
  void *pvVar8;
  int iVar9;
  code *pcVar10;
  int *piVar11;
  int local_58;
  int local_54;
  int local_50;
  int local_4c;
  int local_48;
  int local_44;
  int local_40;
  int local_3c;
  undefined4 local_38;
  undefined4 local_34;
  undefined4 local_30;
  undefined4 local_2c;
  
  *(undefined1 *)(param_1 + 0x43) = 1;
  piVar4 = (int *)FUN_0079d07c(param_2);
  uVar3 = (**(code **)(*piVar4 + 8))();
  *(undefined1 *)(param_1 + 0x11) = uVar3;
  uVar3 = (**(code **)(*piVar4 + 0xc))(piVar4);
  *(undefined1 *)(param_1 + 0x12) = uVar3;
  uVar5 = (**(code **)(*piVar4 + 0x20))(piVar4);
  pcVar10 = *(code **)(*piVar4 + 0x10);
  *(undefined4 *)(param_1 + 0x2c) = uVar5;
  (*pcVar10)(&local_58,piVar4);
  puVar1 = (uint *)(local_58 + -0xc);
  uVar6 = *puVar1;
  *(uint *)(param_1 + 0xc) = uVar6;
  if (puVar1 != &DAT_0097251c) {
    piVar11 = (int *)(local_58 + -4);
    DataMemoryBarrier(0x1f);
    do {
      ExclusiveAccess(piVar11);
      iVar9 = *piVar11;
      bVar2 = (bool)hasExclusiveAccess(piVar11);
    } while (!bVar2);
    *piVar11 = iVar9 + -1;
    DataMemoryBarrier(0x1f);
    if (iVar9 < 1) {
      operator_delete(puVar1);
    }
    uVar6 = *(uint *)(param_1 + 0xc);
  }
  pcVar7 = operator_new__(uVar6);
  (**(code **)(*piVar4 + 0x10))(&local_54,piVar4);
  FUN_007c527c(&local_54,pcVar7,*(undefined4 *)(param_1 + 0xc),0);
  if ((undefined4 *)(local_54 + -0xc) != &DAT_0097251c) {
    piVar11 = (int *)(local_54 + -4);
    DataMemoryBarrier(0x1f);
    do {
      ExclusiveAccess(piVar11);
      iVar9 = *piVar11;
      bVar2 = (bool)hasExclusiveAccess(piVar11);
    } while (!bVar2);
    *piVar11 = iVar9 + -1;
    DataMemoryBarrier(0x1f);
    if (iVar9 < 1) {
      operator_delete((undefined4 *)(local_54 + -0xc));
    }
  }
  *(char **)(param_1 + 8) = pcVar7;
  uVar3 = 0;
  if (*(int *)(param_1 + 0xc) != 0) {
    if (*pcVar7 < '\x01') {
      uVar3 = 0;
    }
    else {
      uVar3 = 1;
    }
  }
  iVar9 = *piVar4;
  *(undefined1 *)(param_1 + 0x10) = uVar3;
  (**(code **)(iVar9 + 0x14))(&local_50,piVar4);
  puVar1 = (uint *)(local_50 + -0xc);
  uVar6 = *puVar1;
  *(uint *)(param_1 + 0x18) = uVar6;
  if (puVar1 != &DAT_0097251c) {
    piVar11 = (int *)(local_50 + -4);
    DataMemoryBarrier(0x1f);
    do {
      ExclusiveAccess(piVar11);
      iVar9 = *piVar11;
      bVar2 = (bool)hasExclusiveAccess(piVar11);
    } while (!bVar2);
    *piVar11 = iVar9 + -1;
    DataMemoryBarrier(0x1f);
    if (iVar9 < 1) {
      operator_delete(puVar1);
    }
    uVar6 = *(uint *)(param_1 + 0x18);
  }
  pvVar8 = operator_new__(uVar6);
  (**(code **)(*piVar4 + 0x14))(&local_4c,piVar4);
  FUN_007c527c(&local_4c,pvVar8,*(undefined4 *)(param_1 + 0x18),0);
  if ((undefined4 *)(local_4c + -0xc) != &DAT_0097251c) {
    piVar11 = (int *)(local_4c + -4);
    DataMemoryBarrier(0x1f);
    do {
      ExclusiveAccess(piVar11);
      iVar9 = *piVar11;
      bVar2 = (bool)hasExclusiveAccess(piVar11);
    } while (!bVar2);
    *piVar11 = iVar9 + -1;
    DataMemoryBarrier(0x1f);
    if (iVar9 < 1) {
      operator_delete((undefined4 *)(local_4c + -0xc));
    }
  }
  iVar9 = *piVar4;
  *(void **)(param_1 + 0x14) = pvVar8;
  (**(code **)(iVar9 + 0x18))(&local_48,piVar4);
  puVar1 = (uint *)(local_48 + -0xc);
  uVar6 = *puVar1;
  *(uint *)(param_1 + 0x20) = uVar6;
  if (puVar1 != &DAT_0097251c) {
    piVar11 = (int *)(local_48 + -4);
    DataMemoryBarrier(0x1f);
    do {
      ExclusiveAccess(piVar11);
      iVar9 = *piVar11;
      bVar2 = (bool)hasExclusiveAccess(piVar11);
    } while (!bVar2);
    *piVar11 = iVar9 + -1;
    DataMemoryBarrier(0x1f);
    if (iVar9 < 1) {
      operator_delete(puVar1);
    }
    uVar6 = *(uint *)(param_1 + 0x20);
  }
  pvVar8 = operator_new__(uVar6);
  (**(code **)(*piVar4 + 0x18))(&local_44,piVar4);
  FUN_007c527c(&local_44,pvVar8,*(undefined4 *)(param_1 + 0x20),0);
  if ((undefined4 *)(local_44 + -0xc) != &DAT_0097251c) {
    piVar11 = (int *)(local_44 + -4);
    DataMemoryBarrier(0x1f);
    do {
      ExclusiveAccess(piVar11);
      iVar9 = *piVar11;
      bVar2 = (bool)hasExclusiveAccess(piVar11);
    } while (!bVar2);
    *piVar11 = iVar9 + -1;
    DataMemoryBarrier(0x1f);
    if (iVar9 < 1) {
      operator_delete((undefined4 *)(local_44 + -0xc));
    }
  }
  iVar9 = *piVar4;
  *(void **)(param_1 + 0x1c) = pvVar8;
  (**(code **)(iVar9 + 0x1c))(&local_40,piVar4);
  puVar1 = (uint *)(local_40 + -0xc);
  uVar6 = *puVar1;
  *(uint *)(param_1 + 0x28) = uVar6;
  if (puVar1 != &DAT_0097251c) {
    piVar11 = (int *)(local_40 + -4);
    DataMemoryBarrier(0x1f);
    do {
      ExclusiveAccess(piVar11);
      iVar9 = *piVar11;
      bVar2 = (bool)hasExclusiveAccess(piVar11);
    } while (!bVar2);
    *piVar11 = iVar9 + -1;
    DataMemoryBarrier(0x1f);
    if (iVar9 < 1) {
      operator_delete(puVar1);
    }
    uVar6 = *(uint *)(param_1 + 0x28);
  }
  pvVar8 = operator_new__(uVar6);
  (**(code **)(*piVar4 + 0x1c))(&local_3c,piVar4);
  FUN_007c527c(&local_3c,pvVar8,*(undefined4 *)(param_1 + 0x28),0);
  if ((undefined4 *)(local_3c + -0xc) != &DAT_0097251c) {
    piVar11 = (int *)(local_3c + -4);
    DataMemoryBarrier(0x1f);
    do {
      ExclusiveAccess(piVar11);
      iVar9 = *piVar11;
      bVar2 = (bool)hasExclusiveAccess(piVar11);
    } while (!bVar2);
    *piVar11 = iVar9 + -1;
    DataMemoryBarrier(0x1f);
    if (iVar9 < 1) {
      operator_delete((undefined4 *)(local_3c + -0xc));
    }
  }
  iVar9 = *piVar4;
  *(void **)(param_1 + 0x24) = pvVar8;
  local_38 = (**(code **)(iVar9 + 0x24))(piVar4);
  *(undefined4 *)(param_1 + 0x30) = local_38;
  local_34 = local_38;
  local_30 = (**(code **)(*piVar4 + 0x28))(piVar4);
  *(undefined4 *)(param_1 + 0x34) = local_30;
  local_2c = local_30;
  piVar4 = (int *)FUN_0079c760(param_2);
  pvVar8 = DAT_0094f578;
  iVar9 = (int)DAT_0094f578 + 0xb;
  if ((char)piVar4[7] == '\x01') {
    memcpy((void *)(param_1 + 0x38),DAT_0094f578,0xb);
  }
  else {
    if ((char)piVar4[7] == '\0') {
      FUN_007af570();
    }
    (**(code **)(*piVar4 + 0x1c))(piVar4,pvVar8,iVar9,(void *)(param_1 + 0x38));
  }
  return;
}

// ---- FUN_0079d4b0  @ 0x79d4b0
void FUN_0079d4b0(int *param_1)

{
  uint uVar1;
  int iVar2;
  
  uVar1 = FUN_007b03f0(&DAT_009716a4);
  if ((uVar1 < *(uint *)(*param_1 + 8)) &&
     (iVar2 = *(int *)(*(int *)(*param_1 + 4) + uVar1 * 4), iVar2 != 0)) {
    iVar2 = __dynamic_cast(iVar2,&DAT_0093e7a8,&DAT_0093dec0,0);
    if (iVar2 != 0) {
      return;
    }
                    /* WARNING: Subroutine does not return */
    __cxa_bad_cast();
  }
                    /* WARNING: Subroutine does not return */
  FUN_007c4874();
}

// ---- FUN_0079d4f4  @ 0x79d4f4
void FUN_0079d4f4(int param_1,undefined4 param_2)

{
  uint *puVar1;
  bool bVar2;
  undefined1 uVar3;
  int *piVar4;
  undefined4 uVar5;
  uint uVar6;
  char *pcVar7;
  void *pvVar8;
  int iVar9;
  code *pcVar10;
  int *piVar11;
  int local_58;
  int local_54;
  int local_50;
  int local_4c;
  int local_48;
  int local_44;
  int local_40;
  int local_3c;
  undefined4 local_38;
  undefined4 local_34;
  undefined4 local_30;
  undefined4 local_2c;
  
  *(undefined1 *)(param_1 + 0x43) = 1;
  piVar4 = (int *)FUN_0079d4b0(param_2);
  uVar3 = (**(code **)(*piVar4 + 8))();
  *(undefined1 *)(param_1 + 0x11) = uVar3;
  uVar3 = (**(code **)(*piVar4 + 0xc))(piVar4);
  *(undefined1 *)(param_1 + 0x12) = uVar3;
  uVar5 = (**(code **)(*piVar4 + 0x20))(piVar4);
  pcVar10 = *(code **)(*piVar4 + 0x10);
  *(undefined4 *)(param_1 + 0x2c) = uVar5;
  (*pcVar10)(&local_58,piVar4);
  puVar1 = (uint *)(local_58 + -0xc);
  uVar6 = *puVar1;
  *(uint *)(param_1 + 0xc) = uVar6;
  if (puVar1 != &DAT_0097251c) {
    piVar11 = (int *)(local_58 + -4);
    DataMemoryBarrier(0x1f);
    do {
      ExclusiveAccess(piVar11);
      iVar9 = *piVar11;
      bVar2 = (bool)hasExclusiveAccess(piVar11);
    } while (!bVar2);
    *piVar11 = iVar9 + -1;
    DataMemoryBarrier(0x1f);
    if (iVar9 < 1) {
      operator_delete(puVar1);
    }
    uVar6 = *(uint *)(param_1 + 0xc);
  }
  pcVar7 = operator_new__(uVar6);
  (**(code **)(*piVar4 + 0x10))(&local_54,piVar4);
  FUN_007c527c(&local_54,pcVar7,*(undefined4 *)(param_1 + 0xc),0);
  if ((undefined4 *)(local_54 + -0xc) != &DAT_0097251c) {
    piVar11 = (int *)(local_54 + -4);
    DataMemoryBarrier(0x1f);
    do {
      ExclusiveAccess(piVar11);
      iVar9 = *piVar11;
      bVar2 = (bool)hasExclusiveAccess(piVar11);
    } while (!bVar2);
    *piVar11 = iVar9 + -1;
    DataMemoryBarrier(0x1f);
    if (iVar9 < 1) {
      operator_delete((undefined4 *)(local_54 + -0xc));
    }
  }
  *(char **)(param_1 + 8) = pcVar7;
  uVar3 = 0;
  if (*(int *)(param_1 + 0xc) != 0) {
    if (*pcVar7 < '\x01') {
      uVar3 = 0;
    }
    else {
      uVar3 = 1;
    }
  }
  iVar9 = *piVar4;
  *(undefined1 *)(param_1 + 0x10) = uVar3;
  (**(code **)(iVar9 + 0x14))(&local_50,piVar4);
  puVar1 = (uint *)(local_50 + -0xc);
  uVar6 = *puVar1;
  *(uint *)(param_1 + 0x18) = uVar6;
  if (puVar1 != &DAT_0097251c) {
    piVar11 = (int *)(local_50 + -4);
    DataMemoryBarrier(0x1f);
    do {
      ExclusiveAccess(piVar11);
      iVar9 = *piVar11;
      bVar2 = (bool)hasExclusiveAccess(piVar11);
    } while (!bVar2);
    *piVar11 = iVar9 + -1;
    DataMemoryBarrier(0x1f);
    if (iVar9 < 1) {
      operator_delete(puVar1);
    }
    uVar6 = *(uint *)(param_1 + 0x18);
  }
  pvVar8 = operator_new__(uVar6);
  (**(code **)(*piVar4 + 0x14))(&local_4c,piVar4);
  FUN_007c527c(&local_4c,pvVar8,*(undefined4 *)(param_1 + 0x18),0);
  if ((undefined4 *)(local_4c + -0xc) != &DAT_0097251c) {
    piVar11 = (int *)(local_4c + -4);
    DataMemoryBarrier(0x1f);
    do {
      ExclusiveAccess(piVar11);
      iVar9 = *piVar11;
      bVar2 = (bool)hasExclusiveAccess(piVar11);
    } while (!bVar2);
    *piVar11 = iVar9 + -1;
    DataMemoryBarrier(0x1f);
    if (iVar9 < 1) {
      operator_delete((undefined4 *)(local_4c + -0xc));
    }
  }
  iVar9 = *piVar4;
  *(void **)(param_1 + 0x14) = pvVar8;
  (**(code **)(iVar9 + 0x18))(&local_48,piVar4);
  puVar1 = (uint *)(local_48 + -0xc);
  uVar6 = *puVar1;
  *(uint *)(param_1 + 0x20) = uVar6;
  if (puVar1 != &DAT_0097251c) {
    piVar11 = (int *)(local_48 + -4);
    DataMemoryBarrier(0x1f);
    do {
      ExclusiveAccess(piVar11);
      iVar9 = *piVar11;
      bVar2 = (bool)hasExclusiveAccess(piVar11);
    } while (!bVar2);
    *piVar11 = iVar9 + -1;
    DataMemoryBarrier(0x1f);
    if (iVar9 < 1) {
      operator_delete(puVar1);
    }
    uVar6 = *(uint *)(param_1 + 0x20);
  }
  pvVar8 = operator_new__(uVar6);
  (**(code **)(*piVar4 + 0x18))(&local_44,piVar4);
  FUN_007c527c(&local_44,pvVar8,*(undefined4 *)(param_1 + 0x20),0);
  if ((undefined4 *)(local_44 + -0xc) != &DAT_0097251c) {
    piVar11 = (int *)(local_44 + -4);
    DataMemoryBarrier(0x1f);
    do {
      ExclusiveAccess(piVar11);
      iVar9 = *piVar11;
      bVar2 = (bool)hasExclusiveAccess(piVar11);
    } while (!bVar2);
    *piVar11 = iVar9 + -1;
    DataMemoryBarrier(0x1f);
    if (iVar9 < 1) {
      operator_delete((undefined4 *)(local_44 + -0xc));
    }
  }
  iVar9 = *piVar4;
  *(void **)(param_1 + 0x1c) = pvVar8;
  (**(code **)(iVar9 + 0x1c))(&local_40,piVar4);
  puVar1 = (uint *)(local_40 + -0xc);
  uVar6 = *puVar1;
  *(uint *)(param_1 + 0x28) = uVar6;
  if (puVar1 != &DAT_0097251c) {
    piVar11 = (int *)(local_40 + -4);
    DataMemoryBarrier(0x1f);
    do {
      ExclusiveAccess(piVar11);
      iVar9 = *piVar11;
      bVar2 = (bool)hasExclusiveAccess(piVar11);
    } while (!bVar2);
    *piVar11 = iVar9 + -1;
    DataMemoryBarrier(0x1f);
    if (iVar9 < 1) {
      operator_delete(puVar1);
    }
    uVar6 = *(uint *)(param_1 + 0x28);
  }
  pvVar8 = operator_new__(uVar6);
  (**(code **)(*piVar4 + 0x1c))(&local_3c,piVar4);
  FUN_007c527c(&local_3c,pvVar8,*(undefined4 *)(param_1 + 0x28),0);
  if ((undefined4 *)(local_3c + -0xc) != &DAT_0097251c) {
    piVar11 = (int *)(local_3c + -4);
    DataMemoryBarrier(0x1f);
    do {
      ExclusiveAccess(piVar11);
      iVar9 = *piVar11;
      bVar2 = (bool)hasExclusiveAccess(piVar11);
    } while (!bVar2);
    *piVar11 = iVar9 + -1;
    DataMemoryBarrier(0x1f);
    if (iVar9 < 1) {
      operator_delete((undefined4 *)(local_3c + -0xc));
    }
  }
  iVar9 = *piVar4;
  *(void **)(param_1 + 0x24) = pvVar8;
  local_38 = (**(code **)(iVar9 + 0x24))(piVar4);
  *(undefined4 *)(param_1 + 0x30) = local_38;
  local_34 = local_38;
  local_30 = (**(code **)(*piVar4 + 0x28))(piVar4);
  *(undefined4 *)(param_1 + 0x34) = local_30;
  local_2c = local_30;
  piVar4 = (int *)FUN_0079c760(param_2);
  pvVar8 = DAT_0094f578;
  iVar9 = (int)DAT_0094f578 + 0xb;
  if ((char)piVar4[7] == '\x01') {
    memcpy((void *)(param_1 + 0x38),DAT_0094f578,0xb);
  }
  else {
    if ((char)piVar4[7] == '\0') {
      FUN_007af570();
    }
    (**(code **)(*piVar4 + 0x1c))(piVar4,pvVar8,iVar9,(void *)(param_1 + 0x38));
  }
  return;
}

// ---- FUN_0079d96c  @ 0x79d96c
void FUN_0079d96c(int *param_1)

{
  uint uVar1;
  int iVar2;
  
  uVar1 = FUN_007b03f0(&DAT_00971688);
  if ((uVar1 < *(uint *)(*param_1 + 8)) &&
     (iVar2 = *(int *)(*(int *)(*param_1 + 4) + uVar1 * 4), iVar2 != 0)) {
    iVar2 = __dynamic_cast(iVar2,&DAT_0093e7a8,&DAT_0093df44,0);
    if (iVar2 != 0) {
      return;
    }
                    /* WARNING: Subroutine does not return */
    __cxa_bad_cast();
  }
                    /* WARNING: Subroutine does not return */
  FUN_007c4874();
}

// ---- FUN_0079d9b0  @ 0x79d9b0
undefined4 *
FUN_0079d9b0(undefined4 *param_1,undefined4 param_2,int *param_3,char param_4,int param_5,
            undefined4 param_6,undefined4 param_7,char param_8,char param_9)

{
  int *piVar1;
  undefined4 uVar2;
  size_t sVar3;
  size_t sVar4;
  undefined1 local_a4;
  char local_a3;
  char local_a2;
  undefined1 local_a1;
  char acStack_a0 [128];
  
  piVar1 = (int *)FUN_0079c760(param_5 + 0x6c);
  uVar2 = FUN_0079d96c(param_5 + 0x6c);
  if ((char)piVar1[7] == '\0') {
    FUN_007af570(piVar1);
    local_a4 = (**(code **)(*piVar1 + 0x18))(piVar1,0x25);
  }
  else {
    local_a4 = *(undefined1 *)((int)piVar1 + 0x42);
  }
  local_a3 = param_8;
  local_a2 = param_9;
  if (param_9 != '\0') {
    local_a3 = param_9;
    local_a2 = param_8;
    local_a1 = 0;
  }
  FUN_007acbe8(uVar2,acStack_a0,0x80,&local_a4,param_7);
  sVar3 = strlen(acStack_a0);
  if ((param_4 == '\0') &&
     (sVar4 = (**(code **)(*param_3 + 0x30))(param_3,acStack_a0,sVar3), sVar3 != sVar4)) {
    param_4 = '\x01';
  }
  *param_1 = param_3;
  *(char *)(param_1 + 1) = param_4;
  return param_1;
}

// ---- FUN_0079db20  @ 0x79db20
bool FUN_0079db20(int *param_1)

{
  uint uVar1;
  int iVar2;
  
  uVar1 = FUN_007b03f0(&DAT_0097247c);
  if ((uVar1 < *(uint *)(*param_1 + 8)) &&
     (iVar2 = *(int *)(*(int *)(*param_1 + 4) + uVar1 * 4), iVar2 != 0)) {
    iVar2 = __dynamic_cast(iVar2,&DAT_0093e7a8,&DAT_0093e65c,0);
    return iVar2 != 0;
  }
  return false;
}

// ---- FUN_0079db6c  @ 0x79db6c
bool FUN_0079db6c(int *param_1)

{
  uint uVar1;
  int iVar2;
  
  uVar1 = FUN_007b03f0(&DAT_009716a8);
  if ((uVar1 < *(uint *)(*param_1 + 8)) &&
     (iVar2 = *(int *)(*(int *)(*param_1 + 4) + uVar1 * 4), iVar2 != 0)) {
    iVar2 = __dynamic_cast(iVar2,&DAT_0093e7a8,&DAT_0093e048,0);
    return iVar2 != 0;
  }
  return false;
}

// ---- FUN_0079dbb8  @ 0x79dbb8
bool FUN_0079dbb8(int *param_1)

{
  uint uVar1;
  int iVar2;
  
  uVar1 = FUN_007b03f0(&DAT_00971678);
  if ((uVar1 < *(uint *)(*param_1 + 8)) &&
     (iVar2 = *(int *)(*(int *)(*param_1 + 4) + uVar1 * 4), iVar2 != 0)) {
    iVar2 = __dynamic_cast(iVar2,&DAT_0093e7a8,&PTR_PTR_0093dfe8,0);
    return iVar2 != 0;
  }
  return false;
}

// ---- FUN_0079dc40  @ 0x79dc40
bool FUN_0079dc40(int *param_1)

{
  uint uVar1;
  int iVar2;
  
  uVar1 = FUN_007b03f0(&DAT_0097168c);
  if ((uVar1 < *(uint *)(*param_1 + 8)) &&
     (iVar2 = *(int *)(*(int *)(*param_1 + 4) + uVar1 * 4), iVar2 != 0)) {
    iVar2 = __dynamic_cast(iVar2,&DAT_0093e7a8,&PTR_PTR_0093de68,0);
    return iVar2 != 0;
  }
  return false;
}

// ---- FUN_0079dc84  @ 0x79dc84
bool FUN_0079dc84(int *param_1)

{
  uint uVar1;
  int iVar2;
  
  uVar1 = FUN_007b03f0(&DAT_00971690);
  if ((uVar1 < *(uint *)(*param_1 + 8)) &&
     (iVar2 = *(int *)(*(int *)(*param_1 + 4) + uVar1 * 4), iVar2 != 0)) {
    iVar2 = __dynamic_cast(iVar2,&DAT_0093e7a8,&DAT_0093dfa0,0);
    return iVar2 != 0;
  }
  return false;
}

// ---- FUN_0079dcc8  @ 0x79dcc8
bool FUN_0079dcc8(int *param_1)

{
  uint uVar1;
  int iVar2;
  
  uVar1 = FUN_007b03f0(&DAT_009716a4);
  if ((uVar1 < *(uint *)(*param_1 + 8)) &&
     (iVar2 = *(int *)(*(int *)(*param_1 + 4) + uVar1 * 4), iVar2 != 0)) {
    iVar2 = __dynamic_cast(iVar2,&DAT_0093e7a8,&DAT_0093dec0,0);
    return iVar2 != 0;
  }
  return false;
}

// ---- FUN_0079dea4  @ 0x79dea4
void FUN_0079dea4(undefined1 *param_1,undefined1 param_2,byte *param_3,int param_4,
                 undefined1 *param_5,undefined1 *param_6)

{
  byte bVar1;
  undefined1 *puVar2;
  undefined1 *puVar3;
  byte bVar4;
  undefined1 *puVar5;
  int iVar6;
  uint uVar7;
  uint uVar8;
  int iVar9;
  
  iVar9 = 0;
  uVar7 = (uint)*param_3;
  uVar8 = 0;
  while (((int)uVar7 < (int)param_6 - (int)param_5 && ('\0' < (char)uVar7))) {
    param_6 = param_6 + -uVar7;
    if (uVar8 < param_4 - 1U) {
      uVar8 = uVar8 + 1;
      uVar7 = (uint)param_3[uVar8];
    }
    else {
      iVar9 = iVar9 + 1;
    }
  }
  puVar2 = param_5;
  puVar3 = param_1;
  if (param_6 != param_5) {
    do {
      puVar5 = puVar2 + 1;
      *puVar3 = *puVar2;
      puVar2 = puVar5;
      puVar3 = puVar3 + 1;
    } while (puVar5 != param_6);
    iVar6 = (int)puVar5 - (int)param_5;
    param_5 = param_5 + iVar6;
    param_1 = param_1 + iVar6;
  }
  while (puVar2 = param_1, iVar9 != 0) {
    while( true ) {
      iVar9 = iVar9 + -1;
      *puVar2 = param_2;
      param_1 = puVar2 + 1;
      bVar1 = param_3[uVar8];
      puVar3 = param_5;
      bVar4 = bVar1;
      if (bVar1 == 0) break;
      do {
        bVar4 = bVar4 - 1;
        puVar2 = puVar2 + 1;
        *puVar2 = *puVar3;
        puVar3 = puVar3 + 1;
      } while (bVar4 != 0);
      iVar6 = (byte)(bVar1 - 1) + 1;
      puVar2 = param_1 + iVar6;
      param_5 = param_5 + iVar6;
      if (iVar9 == 0) goto LAB_0079df38;
    }
  }
LAB_0079df38:
  param_3 = param_3 + uVar8;
  do {
    puVar3 = puVar2;
    if (uVar8 == 0) {
      return;
    }
    while( true ) {
      uVar8 = uVar8 - 1;
      *puVar3 = param_2;
      puVar2 = puVar3 + 1;
      param_3 = param_3 + -1;
      bVar1 = *param_3;
      puVar5 = param_5;
      bVar4 = bVar1;
      if (bVar1 == 0) break;
      do {
        bVar4 = bVar4 - 1;
        puVar3 = puVar3 + 1;
        *puVar3 = *puVar5;
        puVar5 = puVar5 + 1;
      } while (bVar4 != 0);
      iVar9 = (byte)(bVar1 - 1) + 1;
      puVar3 = puVar2 + iVar9;
      param_5 = param_5 + iVar9;
      if (uVar8 == 0) {
        return;
      }
    }
  } while( true );
}

// ---- FUN_0079df84  @ 0x79df84
void FUN_0079df84(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                 void *param_5,int param_6,int param_7,int *param_8)

{
  void *__dest;
  int iVar1;
  
  if (param_5 != (void *)0x0) {
    __dest = (void *)FUN_0079dea4(param_6,param_4,param_2,param_3,param_7,param_5);
    memcpy(__dest,param_5,*param_8 - ((int)param_5 - param_7));
    *param_8 = (int)__dest + ((*param_8 - ((int)param_5 - param_7)) - param_6);
    return;
  }
  iVar1 = FUN_0079dea4(param_6,param_4,param_2,param_3,param_7,param_7 + *param_8);
  *param_8 = iVar1 - param_6;
  return;
}

// ---- FUN_0079dfdc  @ 0x79dfdc
void FUN_0079dfdc(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                 undefined4 param_5,int param_6,int param_7,int *param_8)

{
  int iVar1;
  
  iVar1 = FUN_0079dea4(param_6,param_4,param_2,param_3,param_7,*param_8 + param_7);
  *param_8 = iVar1 - param_6;
  return;
}

// ---- FUN_0079e004  @ 0x79e004
/* WARNING: Restarted to delay deadcode elimination for space: stack */

undefined4 *
FUN_0079e004(undefined4 *param_1,undefined4 param_2,int *param_3,uint param_4,int param_5,
            undefined1 param_6,undefined4 *param_7)

{
  int iVar1;
  int iVar2;
  undefined4 *puVar3;
  bool bVar4;
  uint uVar5;
  byte *pbVar6;
  int iVar7;
  uint uVar8;
  byte *pbVar9;
  int iVar10;
  uint uVar11;
  uint local_60;
  undefined1 local_58;
  undefined1 *local_4c;
  undefined4 local_3c;
  undefined1 auStack_38 [3];
  undefined1 uStack_35;
  undefined4 local_34;
  undefined1 *local_30;
  undefined1 *local_2c [2];
  
  local_58 = (undefined1)param_4;
  iVar1 = FUN_0079c760(param_5 + 0x6c);
  iVar2 = FUN_007b03f0(&DAT_009716a0);
  iVar7 = *(int *)(*(int *)(param_5 + 0x6c) + 0xc);
  iVar10 = *(int *)(iVar7 + iVar2 * 4);
  if (iVar10 == 0) {
    puVar3 = operator_new(0x44);
    puVar3[1] = 0;
    puVar3[2] = 0;
    puVar3[3] = 0;
    *puVar3 = &DAT_0093de10;
    *(undefined1 *)(puVar3 + 4) = 0;
    *(undefined1 *)((int)puVar3 + 0x11) = 0;
    *(undefined1 *)((int)puVar3 + 0x12) = 0;
    puVar3[5] = 0;
    puVar3[6] = 0;
    puVar3[7] = 0;
    puVar3[8] = 0;
    puVar3[9] = 0;
    puVar3[10] = 0;
    puVar3[0xb] = 0;
    *(undefined1 *)(puVar3 + 0xc) = 0;
    *(undefined1 *)((int)puVar3 + 0x31) = 0;
    *(undefined1 *)((int)puVar3 + 0x32) = 0;
    *(undefined1 *)((int)puVar3 + 0x33) = 0;
    *(undefined1 *)(puVar3 + 0xd) = 0;
    *(undefined1 *)((int)puVar3 + 0x35) = 0;
    *(undefined1 *)((int)puVar3 + 0x36) = 0;
    *(undefined1 *)((int)puVar3 + 0x37) = 0;
    *(undefined1 *)((int)puVar3 + 0x43) = 0;
    FUN_0079d0c0(puVar3,param_5 + 0x6c);
    FUN_007b0318(*(undefined4 *)(param_5 + 0x6c),puVar3,iVar2);
    iVar10 = *(int *)(iVar7 + iVar2 * 4);
  }
  pbVar9 = (byte *)*param_7;
  if (*pbVar9 == *(byte *)(iVar10 + 0x38)) {
    local_34 = *(undefined4 *)(iVar10 + 0x34);
    local_4c = *(undefined1 **)(iVar10 + 0x24);
    iVar2 = *(int *)(pbVar9 + -0xc);
    local_60 = *(uint *)(iVar10 + 0x28);
    if (iVar2 == 0) goto LAB_0079e22a;
    pbVar9 = pbVar9 + 1;
  }
  else {
    local_4c = *(undefined1 **)(iVar10 + 0x1c);
    local_34 = *(undefined4 *)(iVar10 + 0x30);
    local_60 = *(uint *)(iVar10 + 0x20);
    iVar2 = *(int *)(pbVar9 + -0xc);
  }
  if ((pbVar9 < pbVar9 + iVar2) &&
     (pbVar6 = pbVar9, (int)((uint)*(byte *)(*(int *)(iVar1 + 0x18) + (uint)*pbVar9) << 0x1d) < 0))
  {
    do {
      pbVar6 = pbVar6 + 1;
      if (pbVar6 == pbVar9 + iVar2) break;
    } while ((int)((uint)*(byte *)(*(int *)(iVar1 + 0x18) + (uint)*pbVar6) << 0x1d) < 0);
    uVar8 = (int)pbVar6 - (int)pbVar9;
    if (uVar8 != 0) {
      local_30 = &DAT_00972528;
      FUN_007c60a0(&local_30,uVar8 * 2);
      iVar1 = *(int *)(iVar10 + 0x2c);
      uVar11 = uVar8 - iVar1;
      if (0 < (int)uVar11) {
        uVar11 = uVar11 & ~(iVar1 >> 0x20);
        if (iVar1 < 0) {
          uVar11 = uVar8;
        }
        if (*(int *)(iVar10 + 0xc) == 0) {
          FUN_007c5d5c(&local_30,pbVar9,uVar11);
          iVar1 = *(int *)(iVar10 + 0x2c);
        }
        else {
          FUN_007c5bf4(&local_30,0,*(undefined4 *)(local_30 + -0xc),uVar11 << 1,0);
          if (-1 < *(int *)(local_30 + -4)) {
            FUN_007c5a30(&local_30);
          }
          iVar1 = FUN_0079dea4(local_30,*(undefined1 *)(iVar10 + 0x12),*(undefined4 *)(iVar10 + 8),
                               *(undefined4 *)(iVar10 + 0xc),pbVar9,pbVar9 + uVar11);
          if (-1 < *(int *)(local_30 + -4)) {
            FUN_007c5a30(&local_30);
          }
          uVar5 = iVar1 - (int)local_30;
          if (*(uint *)(local_30 + -0xc) < uVar5) {
                    /* WARNING: Subroutine does not return */
            FUN_007c4a44("basic_string::erase");
          }
          FUN_007c5938(&local_30,uVar5,*(uint *)(local_30 + -0xc) - uVar5,0);
          iVar1 = *(int *)(iVar10 + 0x2c);
        }
      }
      if (0 < iVar1) {
        FUN_007c640c(&local_30,*(undefined1 *)(iVar10 + 0x11));
        if ((int)uVar11 < 0) {
          FUN_007c633c(&local_30,-uVar11,*(undefined1 *)(iVar10 + 0x39));
          FUN_007c6234(&local_30,pbVar9,uVar8);
        }
        else {
          FUN_007c6234(&local_30,pbVar9 + uVar11,*(undefined4 *)(iVar10 + 0x2c));
        }
      }
      uVar8 = *(uint *)(param_5 + 0xc) & 0xb0;
      iVar1 = 0;
      if ((*(uint *)(param_5 + 0xc) & 0x200) != 0) {
        iVar1 = *(int *)(iVar10 + 0x18);
      }
      uVar11 = *(int *)(local_30 + -0xc) + local_60 + iVar1;
      local_2c[0] = &DAT_00972528;
      FUN_007c60a0(local_2c,uVar11 * 2);
      uVar5 = *(uint *)(param_5 + 8);
      iVar1 = 1;
      bVar4 = uVar8 == 0x10 && uVar11 < uVar5;
      do {
        switch((&uStack_35)[iVar1]) {
        case 0:
          if (bVar4) {
LAB_0079e27e:
            FUN_007c633c(local_2c,uVar5 - uVar11,param_6);
          }
          break;
        case 1:
          if (bVar4) goto LAB_0079e27e;
          FUN_007c640c(local_2c,param_6);
          break;
        case 2:
          if (*(int *)(param_5 + 0xc) << 0x16 < 0) {
            FUN_007c6234(local_2c,*(undefined4 *)(iVar10 + 0x14),*(undefined4 *)(iVar10 + 0x18));
          }
          break;
        case 3:
          if (local_60 != 0) {
            FUN_007c640c(local_2c,*local_4c);
            break;
          }
          if (iVar1 != 4) goto LAB_0079e266;
          goto LAB_0079e1d4;
        case 4:
          FUN_007c6120(local_2c,&local_30);
        }
        if (iVar1 == 4) goto LAB_0079e1c0;
LAB_0079e266:
        iVar1 = iVar1 + 1;
      } while( true );
    }
  }
  goto LAB_0079e22a;
LAB_0079e1c0:
  if (1 < local_60) {
    FUN_007c6234(local_2c,local_4c + 1,local_60 - 1);
  }
LAB_0079e1d4:
  uVar11 = *(uint *)(local_2c[0] + -0xc);
  if (uVar11 < uVar5) {
    if (uVar8 == 0x20) {
      FUN_007c633c(local_2c,uVar5 - uVar11,param_6);
      uVar11 = uVar5;
    }
    else {
      FUN_007c5bf4(local_2c,0,0,uVar5 - uVar11,param_6);
      uVar11 = uVar5;
    }
  }
  if (((param_4 & 0xff) == 0) &&
     (uVar8 = (**(code **)(*param_3 + 0x30))(param_3,local_2c[0],uVar11), uVar11 != uVar8)) {
    local_58 = 1;
  }
  FUN_007c5900(local_2c[0] + -0xc,auStack_38);
  FUN_007c5900(local_30 + -0xc,auStack_38);
LAB_0079e22a:
  local_3c = CONCAT31((int3)(param_4 >> 8),local_58);
  *(undefined4 *)(param_5 + 8) = 0;
  *param_1 = param_3;
  param_1[1] = local_3c;
  return param_1;
}

// ---- FUN_0079e3c4  @ 0x79e3c4
/* WARNING: Restarted to delay deadcode elimination for space: stack */

undefined4 *
FUN_0079e3c4(undefined4 *param_1,undefined4 param_2,int *param_3,uint param_4,int param_5,
            undefined1 param_6,undefined4 *param_7)

{
  int iVar1;
  int iVar2;
  undefined4 *puVar3;
  bool bVar4;
  uint uVar5;
  byte *pbVar6;
  int iVar7;
  uint uVar8;
  byte *pbVar9;
  int iVar10;
  uint uVar11;
  uint local_60;
  undefined1 local_58;
  undefined1 *local_4c;
  undefined4 local_3c;
  undefined1 auStack_38 [3];
  undefined1 uStack_35;
  undefined4 local_34;
  undefined1 *local_30;
  undefined1 *local_2c [2];
  
  local_58 = (undefined1)param_4;
  iVar1 = FUN_0079c760(param_5 + 0x6c);
  iVar2 = FUN_007b03f0(&DAT_009716a4);
  iVar7 = *(int *)(*(int *)(param_5 + 0x6c) + 0xc);
  iVar10 = *(int *)(iVar7 + iVar2 * 4);
  if (iVar10 == 0) {
    puVar3 = operator_new(0x44);
    puVar3[1] = 0;
    puVar3[2] = 0;
    puVar3[3] = 0;
    *puVar3 = &DAT_0093de00;
    *(undefined1 *)(puVar3 + 4) = 0;
    *(undefined1 *)((int)puVar3 + 0x11) = 0;
    *(undefined1 *)((int)puVar3 + 0x12) = 0;
    puVar3[5] = 0;
    puVar3[6] = 0;
    puVar3[7] = 0;
    puVar3[8] = 0;
    puVar3[9] = 0;
    puVar3[10] = 0;
    puVar3[0xb] = 0;
    *(undefined1 *)(puVar3 + 0xc) = 0;
    *(undefined1 *)((int)puVar3 + 0x31) = 0;
    *(undefined1 *)((int)puVar3 + 0x32) = 0;
    *(undefined1 *)((int)puVar3 + 0x33) = 0;
    *(undefined1 *)(puVar3 + 0xd) = 0;
    *(undefined1 *)((int)puVar3 + 0x35) = 0;
    *(undefined1 *)((int)puVar3 + 0x36) = 0;
    *(undefined1 *)((int)puVar3 + 0x37) = 0;
    *(undefined1 *)((int)puVar3 + 0x43) = 0;
    FUN_0079d4f4(puVar3,param_5 + 0x6c);
    FUN_007b0318(*(undefined4 *)(param_5 + 0x6c),puVar3,iVar2);
    iVar10 = *(int *)(iVar7 + iVar2 * 4);
  }
  pbVar9 = (byte *)*param_7;
  if (*pbVar9 == *(byte *)(iVar10 + 0x38)) {
    local_34 = *(undefined4 *)(iVar10 + 0x34);
    local_4c = *(undefined1 **)(iVar10 + 0x24);
    iVar2 = *(int *)(pbVar9 + -0xc);
    local_60 = *(uint *)(iVar10 + 0x28);
    if (iVar2 == 0) goto LAB_0079e5ea;
    pbVar9 = pbVar9 + 1;
  }
  else {
    local_4c = *(undefined1 **)(iVar10 + 0x1c);
    local_34 = *(undefined4 *)(iVar10 + 0x30);
    local_60 = *(uint *)(iVar10 + 0x20);
    iVar2 = *(int *)(pbVar9 + -0xc);
  }
  if ((pbVar9 < pbVar9 + iVar2) &&
     (pbVar6 = pbVar9, (int)((uint)*(byte *)(*(int *)(iVar1 + 0x18) + (uint)*pbVar9) << 0x1d) < 0))
  {
    do {
      pbVar6 = pbVar6 + 1;
      if (pbVar6 == pbVar9 + iVar2) break;
    } while ((int)((uint)*(byte *)(*(int *)(iVar1 + 0x18) + (uint)*pbVar6) << 0x1d) < 0);
    uVar8 = (int)pbVar6 - (int)pbVar9;
    if (uVar8 != 0) {
      local_30 = &DAT_00972528;
      FUN_007c60a0(&local_30,uVar8 * 2);
      iVar1 = *(int *)(iVar10 + 0x2c);
      uVar11 = uVar8 - iVar1;
      if (0 < (int)uVar11) {
        uVar11 = uVar11 & ~(iVar1 >> 0x20);
        if (iVar1 < 0) {
          uVar11 = uVar8;
        }
        if (*(int *)(iVar10 + 0xc) == 0) {
          FUN_007c5d5c(&local_30,pbVar9,uVar11);
          iVar1 = *(int *)(iVar10 + 0x2c);
        }
        else {
          FUN_007c5bf4(&local_30,0,*(undefined4 *)(local_30 + -0xc),uVar11 << 1,0);
          if (-1 < *(int *)(local_30 + -4)) {
            FUN_007c5a30(&local_30);
          }
          iVar1 = FUN_0079dea4(local_30,*(undefined1 *)(iVar10 + 0x12),*(undefined4 *)(iVar10 + 8),
                               *(undefined4 *)(iVar10 + 0xc),pbVar9,pbVar9 + uVar11);
          if (-1 < *(int *)(local_30 + -4)) {
            FUN_007c5a30(&local_30);
          }
          uVar5 = iVar1 - (int)local_30;
          if (*(uint *)(local_30 + -0xc) < uVar5) {
                    /* WARNING: Subroutine does not return */
            FUN_007c4a44("basic_string::erase");
          }
          FUN_007c5938(&local_30,uVar5,*(uint *)(local_30 + -0xc) - uVar5,0);
          iVar1 = *(int *)(iVar10 + 0x2c);
        }
      }
      if (0 < iVar1) {
        FUN_007c640c(&local_30,*(undefined1 *)(iVar10 + 0x11));
        if ((int)uVar11 < 0) {
          FUN_007c633c(&local_30,-uVar11,*(undefined1 *)(iVar10 + 0x39));
          FUN_007c6234(&local_30,pbVar9,uVar8);
        }
        else {
          FUN_007c6234(&local_30,pbVar9 + uVar11,*(undefined4 *)(iVar10 + 0x2c));
        }
      }
      uVar8 = *(uint *)(param_5 + 0xc) & 0xb0;
      iVar1 = 0;
      if ((*(uint *)(param_5 + 0xc) & 0x200) != 0) {
        iVar1 = *(int *)(iVar10 + 0x18);
      }
      uVar11 = *(int *)(local_30 + -0xc) + local_60 + iVar1;
      local_2c[0] = &DAT_00972528;
      FUN_007c60a0(local_2c,uVar11 * 2);
      uVar5 = *(uint *)(param_5 + 8);
      iVar1 = 1;
      bVar4 = uVar8 == 0x10 && uVar11 < uVar5;
      do {
        switch((&uStack_35)[iVar1]) {
        case 0:
          if (bVar4) {
LAB_0079e63e:
            FUN_007c633c(local_2c,uVar5 - uVar11,param_6);
          }
          break;
        case 1:
          if (bVar4) goto LAB_0079e63e;
          FUN_007c640c(local_2c,param_6);
          break;
        case 2:
          if (*(int *)(param_5 + 0xc) << 0x16 < 0) {
            FUN_007c6234(local_2c,*(undefined4 *)(iVar10 + 0x14),*(undefined4 *)(iVar10 + 0x18));
          }
          break;
        case 3:
          if (local_60 != 0) {
            FUN_007c640c(local_2c,*local_4c);
            break;
          }
          if (iVar1 != 4) goto LAB_0079e626;
          goto LAB_0079e594;
        case 4:
          FUN_007c6120(local_2c,&local_30);
        }
        if (iVar1 == 4) goto LAB_0079e580;
LAB_0079e626:
        iVar1 = iVar1 + 1;
      } while( true );
    }
  }
  goto LAB_0079e5ea;
LAB_0079e580:
  if (1 < local_60) {
    FUN_007c6234(local_2c,local_4c + 1,local_60 - 1);
  }
LAB_0079e594:
  uVar11 = *(uint *)(local_2c[0] + -0xc);
  if (uVar11 < uVar5) {
    if (uVar8 == 0x20) {
      FUN_007c633c(local_2c,uVar5 - uVar11,param_6);
      uVar11 = uVar5;
    }
    else {
      FUN_007c5bf4(local_2c,0,0,uVar5 - uVar11,param_6);
      uVar11 = uVar5;
    }
  }
  if (((param_4 & 0xff) == 0) &&
     (uVar8 = (**(code **)(*param_3 + 0x30))(param_3,local_2c[0],uVar11), uVar11 != uVar8)) {
    local_58 = 1;
  }
  FUN_007c5900(local_2c[0] + -0xc,auStack_38);
  FUN_007c5900(local_30 + -0xc,auStack_38);
LAB_0079e5ea:
  local_3c = CONCAT31((int3)(param_4 >> 8),local_58);
  *(undefined4 *)(param_5 + 8) = 0;
  *param_1 = param_3;
  param_1[1] = local_3c;
  return param_1;
}

// ---- FUN_0079e784  @ 0x79e784
undefined4
FUN_0079e784(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
            byte param_5,int param_6,byte param_7)

{
  bool bVar1;
  void *pvVar2;
  int *piVar3;
  int iVar4;
  undefined1 *puVar5;
  undefined1 auStack_198 [324];
  uint local_54;
  uint local_50;
  undefined4 local_4c;
  undefined1 *local_48;
  undefined4 *local_44;
  undefined4 local_40;
  undefined4 uStack_3c;
  undefined1 auStack_34 [4];
  undefined1 auStack_30 [4];
  void *local_2c [2];
  
  local_44 = &local_40;
  local_50 = (uint)param_5;
  local_54 = (uint)param_7;
  local_4c = param_2;
  local_40 = param_3;
  uStack_3c = param_4;
  FUN_007afd04(auStack_30,param_6 + 0x6c);
  piVar3 = (int *)FUN_0079c760(auStack_30);
  local_2c[0] = (void *)FUN_007b0058();
  iVar4 = FUN_0079b3f0(local_2c,auStack_198,0,"%.*Lf",0);
  local_48 = auStack_34;
  FUN_007c58e4(local_2c,iVar4,0,auStack_34);
  puVar5 = auStack_198 + iVar4;
  if (-1 < *(int *)((int)local_2c[0] + -4)) {
    FUN_007c5a30(local_2c);
  }
  pvVar2 = local_2c[0];
  if ((char)piVar3[7] == '\x01') {
    memcpy(local_2c[0],auStack_198,(int)puVar5 - (int)auStack_198);
  }
  else {
    if ((char)piVar3[7] == '\0') {
      FUN_007af570(piVar3);
    }
    (**(code **)(*piVar3 + 0x1c))(piVar3,auStack_198,puVar5,pvVar2);
  }
  if (local_50 == 0) {
    FUN_0079e3c4(param_1,local_4c,*local_44,local_44[1],param_6,local_54,local_2c);
  }
  else {
    FUN_0079e004(param_1,local_4c,*local_44,local_44[1],param_6,local_54,local_2c);
  }
  if ((undefined4 *)((int)local_2c[0] + -0xc) != &DAT_0097251c) {
    piVar3 = (int *)((int)local_2c[0] + -4);
    DataMemoryBarrier(0x1f);
    do {
      ExclusiveAccess(piVar3);
      iVar4 = *piVar3;
      bVar1 = (bool)hasExclusiveAccess(piVar3);
    } while (!bVar1);
    *piVar3 = iVar4 + -1;
    DataMemoryBarrier(0x1f);
    if (iVar4 < 1) {
      operator_delete((undefined4 *)((int)local_2c[0] + -0xc));
    }
  }
  FUN_007b01c0(auStack_30);
  return param_1;
}

// ---- FUN_0079e8e4  @ 0x79e8e4
undefined4
FUN_0079e8e4(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
            char param_5,undefined4 param_6,undefined1 param_7,undefined4 param_8)

{
  if (param_5 == '\0') {
    FUN_0079e3c4();
    return param_1;
  }
  FUN_0079e004(param_1,param_2,param_3,param_4,param_6,param_7,param_8);
  return param_1;
}

// ---- FUN_0079e91c  @ 0x79e91c
void FUN_0079e91c(int param_1,int param_2,byte *param_3,byte *param_4,int param_5,size_t param_6)

{
  int *piVar1;
  uint uVar2;
  uint uVar3;
  byte *__s;
  uint uVar4;
  int iVar5;
  size_t __n;
  
  uVar4 = *(uint *)(param_1 + 0xc) & 0xb0;
  __n = param_5 - param_6;
  if (uVar4 == 0x20) {
    memcpy(param_3,param_4,param_6);
    memset(param_3 + param_6,param_2,__n);
    return;
  }
  if (uVar4 != 0x10) goto LAB_0079e93c;
  piVar1 = (int *)FUN_0079c760(param_1 + 0x6c);
  if ((char)piVar1[7] == '\0') {
    uVar4 = FUN_0079b21c(piVar1,0x2d);
  }
  else {
    uVar4 = (uint)*(byte *)((int)piVar1 + 0x4a);
  }
  uVar3 = (uint)*param_4;
  if (uVar3 != uVar4) {
    if ((char)piVar1[7] == '\0') {
      FUN_007af570(piVar1);
      uVar2 = (**(code **)(*piVar1 + 0x18))(piVar1,0x2b);
      uVar3 = (uint)*param_4;
    }
    else {
      uVar2 = (uint)*(byte *)(piVar1 + 0x12);
    }
    uVar4 = uVar3;
    if (uVar2 != uVar3) {
      if ((char)piVar1[7] == '\0') {
        FUN_007af570(piVar1);
        uVar4 = (**(code **)(*piVar1 + 0x18))(piVar1,0x30);
        uVar3 = (uint)*param_4;
      }
      else {
        uVar4 = (uint)*(byte *)((int)piVar1 + 0x4d);
      }
      if ((uVar4 == uVar3) && (1 < (int)param_6)) {
        if ((char)piVar1[7] == '\0') {
          uVar4 = FUN_0079b21c(piVar1,0x78);
        }
        else {
          uVar4 = (uint)*(byte *)((int)piVar1 + 0x95);
        }
        uVar3 = (uint)param_4[1];
        if (uVar3 != uVar4) {
          if ((char)piVar1[7] == '\0') {
            uVar4 = FUN_0079b21c(piVar1,0x58);
            uVar3 = (uint)param_4[1];
          }
          else {
            uVar4 = (uint)*(byte *)((int)piVar1 + 0x75);
          }
          if (uVar3 != uVar4) goto LAB_0079e93c;
        }
        iVar5 = 2;
        *param_3 = *param_4;
        param_3[1] = param_4[1];
        __s = param_3 + 2;
      }
      else {
LAB_0079e93c:
        iVar5 = 0;
        __s = param_3;
      }
      goto LAB_0079e93e;
    }
  }
  __s = param_3 + 1;
  *param_3 = (byte)uVar4;
  iVar5 = 1;
LAB_0079e93e:
  memset(__s,param_2,__n);
  memcpy(__s + __n,param_4 + iVar5,param_6 - iVar5);
  return;
}

// ---- FUN_0079ea30  @ 0x79ea30
void FUN_0079ea30(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                 undefined4 param_5,undefined4 param_6,undefined4 *param_7)

{
  FUN_0079e91c(param_4,param_2,param_5,param_6,param_3,*param_7);
  *param_7 = param_3;
  return;
}

// ---- FUN_0079ea50  @ 0x79ea50
int FUN_0079ea50(undefined1 *param_1,uint param_2,int param_3,uint param_4,char param_5)

{
  uint uVar1;
  undefined1 *puVar2;
  int iVar3;
  
  puVar2 = param_1;
  if (param_5 == '\0') {
    if ((param_4 & 0x4a) == 0x40) {
      do {
        puVar2 = puVar2 + -1;
        uVar1 = param_2 & 7;
        param_2 = param_2 >> 3;
        *puVar2 = *(undefined1 *)(uVar1 + param_3 + 4);
      } while (param_2 != 0);
    }
    else {
      if ((param_4 & 0x4000) == 0) {
        iVar3 = 4;
      }
      else {
        iVar3 = 0x14;
      }
      do {
        puVar2 = puVar2 + -1;
        uVar1 = param_2 & 0xf;
        param_2 = param_2 >> 4;
        *puVar2 = *(undefined1 *)(param_3 + iVar3 + uVar1);
      } while (param_2 != 0);
    }
  }
  else {
    do {
      puVar2 = puVar2 + -1;
      uVar1 = param_2 / 10;
      *puVar2 = *(undefined1 *)(param_3 + param_2 % 10 + 4);
      param_2 = uVar1;
    } while (uVar1 != 0);
  }
  return (int)param_1 - (int)puVar2;
}

// ---- FUN_0079eac8  @ 0x79eac8
undefined4 *
FUN_0079eac8(undefined4 *param_1,undefined4 param_2,int *param_3,undefined4 param_4,int param_5,
            byte param_6,int param_7)

{
  undefined1 uVar1;
  int *piVar2;
  int iVar3;
  undefined4 *puVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  uint uVar7;
  char cVar8;
  int iVar9;
  uint uVar10;
  int iVar11;
  uint uVar12;
  uint uVar13;
  undefined1 *puVar14;
  undefined1 *puVar15;
  uint *puVar16;
  uint local_78 [4];
  undefined1 auStack_68 [2];
  undefined1 auStack_66 [18];
  undefined1 auStack_54 [16];
  undefined1 *local_44;
  uint local_40;
  undefined4 local_3c;
  int *local_38;
  undefined4 local_34;
  int local_2c [2];
  
  local_40 = (uint)param_6;
  local_3c = param_2;
  local_38 = param_3;
  local_34 = param_4;
  iVar3 = FUN_007b03f0(&DAT_00971694);
  iVar11 = *(int *)(*(int *)(param_5 + 0x6c) + 0xc);
  iVar9 = *(int *)(iVar11 + iVar3 * 4);
  if (iVar9 == 0) {
    puVar4 = operator_new(0x68);
    puVar4[1] = 0;
    puVar4[2] = 0;
    puVar4[3] = 0;
    *puVar4 = &DAT_0093de20;
    *(undefined1 *)(puVar4 + 4) = 0;
    puVar4[5] = 0;
    puVar4[6] = 0;
    puVar4[7] = 0;
    puVar4[8] = 0;
    *(undefined1 *)(puVar4 + 9) = 0;
    *(undefined1 *)((int)puVar4 + 0x25) = 0;
    *(undefined1 *)(puVar4 + 0x19) = 0;
    FUN_0079ccbc(puVar4,param_5 + 0x6c);
    FUN_007b0318(*(undefined4 *)(param_5 + 0x6c),puVar4,iVar3);
    iVar9 = *(int *)(iVar11 + iVar3 * 4);
  }
  uVar12 = *(uint *)(param_5 + 0xc);
  puVar16 = local_78;
  local_44 = auStack_68;
  uVar13 = uVar12 & 0x4a;
  uVar10 = (uint)(uVar13 != 8 && uVar13 != 0x40);
  uVar7 = uVar10 ^ 1;
  if (0 < param_7) {
    uVar7 = 1;
  }
  iVar3 = param_7;
  if (uVar7 == 0) {
    iVar3 = -param_7;
  }
  local_78[0] = uVar10;
  local_2c[0] = FUN_0079ea50(auStack_54,iVar3,iVar9 + 0x26,uVar12);
  puVar14 = local_44 + (0x14 - local_2c[0]);
  if (*(char *)(iVar9 + 0x10) != '\0') {
    uVar1 = *(undefined1 *)(iVar9 + 0x25);
    uVar5 = *(undefined4 *)(iVar9 + 8);
    uVar6 = *(undefined4 *)(iVar9 + 0xc);
    iVar3 = -(local_2c[0] * 2 + 0x10U & 0xfffffff8);
    puVar16 = (uint *)((int)local_78 + iVar3);
    *(undefined1 **)((int)local_78 + iVar3 + 8) = local_44 + (0x14 - local_2c[0]);
    *(int **)((int)local_78 + iVar3 + 0xc) = local_2c;
    *(undefined1 **)((int)local_78 + iVar3 + 4) = auStack_66 + iVar3;
    *(int *)((int)local_78 + iVar3) = param_5;
    local_44 = auStack_66 + iVar3;
    FUN_0079dfdc(local_3c,uVar5,uVar6,uVar1);
    puVar14 = local_44;
  }
  uVar5 = local_3c;
  uVar7 = local_40;
  puVar15 = puVar14;
  if (uVar10 == 0) {
    if (((uVar12 & 0x200) != 0) && (param_7 != 0)) {
      if (uVar13 == 0x40) {
        puVar15 = puVar14 + -1;
        *puVar15 = *(undefined1 *)(iVar9 + 0x2a);
        local_2c[0] = local_2c[0] + 1;
      }
      else {
        puVar15 = puVar14 + -2;
        puVar14[-1] = *(undefined1 *)(((iVar9 + 0x26) - ((int)(uVar12 << 0x11) >> 0x1f)) + 2);
        *puVar15 = *(undefined1 *)(iVar9 + 0x2a);
        local_2c[0] = local_2c[0] + 2;
      }
    }
  }
  else if (param_7 < 0) {
    puVar14[-1] = *(undefined1 *)(iVar9 + 0x26);
    puVar15 = puVar14 + -1;
    local_2c[0] = local_2c[0] + 1;
  }
  else if ((uVar12 & 0x800) != 0) {
    puVar14[-1] = *(undefined1 *)(iVar9 + 0x27);
    puVar15 = puVar14 + -1;
    local_2c[0] = local_2c[0] + 1;
  }
  iVar3 = *(int *)(param_5 + 8);
  puVar14 = puVar15;
  if (local_2c[0] < iVar3) {
    iVar9 = -(iVar3 + 0xeU & 0xfffffff8);
    puVar14 = (undefined1 *)((int)puVar16 + iVar9 + 0x10);
    *(undefined1 **)((int)puVar16 + iVar9 + 4) = puVar15;
    *(int **)((int)puVar16 + iVar9 + 8) = local_2c;
    *(undefined1 **)((int)puVar16 + iVar9) = puVar14;
    FUN_0079ea30(uVar5,uVar7,iVar3,param_5);
  }
  piVar2 = local_38;
  cVar8 = (char)local_34;
  *(undefined4 *)(param_5 + 8) = 0;
  if (((char)local_34 == '\0') &&
     (local_44 = (undefined1 *)local_2c[0],
     iVar3 = (**(code **)(*local_38 + 0x30))(local_38,puVar14,local_2c[0]),
     (undefined1 *)iVar3 != local_44)) {
    cVar8 = '\x01';
  }
  *param_1 = piVar2;
  *(char *)(param_1 + 1) = cVar8;
  return param_1;
}

// ---- FUN_0079ecf0  @ 0x79ecf0
undefined4
FUN_0079ecf0(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5,undefined1 param_6,undefined4 param_7)

{
  FUN_0079eac8(param_1,param_2,param_3,param_4,param_5,param_6,param_7);
  return param_1;
}

// ---- FUN_0079ed18  @ 0x79ed18
undefined4 *
FUN_0079ed18(undefined4 *param_1,undefined4 param_2,int *param_3,undefined4 param_4,int param_5,
            byte param_6,int param_7)

{
  undefined1 uVar1;
  int *piVar2;
  int iVar3;
  undefined4 *puVar4;
  uint uVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  char cVar8;
  int iVar9;
  uint uVar10;
  int iVar11;
  uint uVar12;
  uint uVar13;
  undefined1 *puVar14;
  undefined1 *puVar15;
  uint *puVar16;
  uint local_78 [4];
  undefined1 auStack_68 [2];
  undefined1 auStack_66 [18];
  undefined1 auStack_54 [16];
  undefined1 *local_44;
  uint local_40;
  undefined4 local_3c;
  int *local_38;
  undefined4 local_34;
  int local_2c [2];
  
  local_40 = (uint)param_6;
  local_3c = param_2;
  local_38 = param_3;
  local_34 = param_4;
  iVar3 = FUN_007b03f0(&DAT_00971694);
  iVar11 = *(int *)(*(int *)(param_5 + 0x6c) + 0xc);
  iVar9 = *(int *)(iVar11 + iVar3 * 4);
  if (iVar9 == 0) {
    puVar4 = operator_new(0x68);
    puVar4[1] = 0;
    puVar4[2] = 0;
    puVar4[3] = 0;
    *puVar4 = &DAT_0093de20;
    *(undefined1 *)(puVar4 + 4) = 0;
    puVar4[5] = 0;
    puVar4[6] = 0;
    puVar4[7] = 0;
    puVar4[8] = 0;
    *(undefined1 *)(puVar4 + 9) = 0;
    *(undefined1 *)((int)puVar4 + 0x25) = 0;
    *(undefined1 *)(puVar4 + 0x19) = 0;
    FUN_0079ccbc(puVar4,param_5 + 0x6c);
    FUN_007b0318(*(undefined4 *)(param_5 + 0x6c),puVar4,iVar3);
    iVar9 = *(int *)(iVar11 + iVar3 * 4);
  }
  uVar12 = *(uint *)(param_5 + 0xc);
  puVar16 = local_78;
  uVar13 = uVar12 & 0x4a;
  uVar10 = (uint)(uVar13 != 8 && uVar13 != 0x40);
  uVar5 = uVar10;
  if (param_7 != 0) {
    uVar5 = 0;
  }
  local_44 = auStack_68;
  iVar3 = param_7;
  if (uVar5 != 0) {
    iVar3 = 0;
  }
  local_78[0] = uVar10;
  local_2c[0] = FUN_0079ea50(auStack_54,iVar3,iVar9 + 0x26,uVar12);
  puVar14 = local_44 + (0x14 - local_2c[0]);
  if (*(char *)(iVar9 + 0x10) != '\0') {
    uVar1 = *(undefined1 *)(iVar9 + 0x25);
    uVar6 = *(undefined4 *)(iVar9 + 8);
    uVar7 = *(undefined4 *)(iVar9 + 0xc);
    iVar3 = -(local_2c[0] * 2 + 0x10U & 0xfffffff8);
    puVar16 = (uint *)((int)local_78 + iVar3);
    *(undefined1 **)((int)local_78 + iVar3 + 8) = local_44 + (0x14 - local_2c[0]);
    *(int **)((int)local_78 + iVar3 + 0xc) = local_2c;
    *(undefined1 **)((int)local_78 + iVar3 + 4) = auStack_66 + iVar3;
    *(int *)((int)local_78 + iVar3) = param_5;
    local_44 = auStack_66 + iVar3;
    FUN_0079dfdc(local_3c,uVar6,uVar7,uVar1);
    puVar14 = local_44;
  }
  uVar6 = local_3c;
  uVar5 = local_40;
  puVar15 = puVar14;
  if (((uVar10 == 0) && ((uVar12 & 0x200) != 0)) && (param_7 != 0)) {
    if (uVar13 == 0x40) {
      puVar15 = puVar14 + -1;
      *puVar15 = *(undefined1 *)(iVar9 + 0x2a);
      local_2c[0] = local_2c[0] + 1;
    }
    else {
      puVar15 = puVar14 + -2;
      puVar14[-1] = *(undefined1 *)(((iVar9 + 0x26) - ((int)(uVar12 << 0x11) >> 0x1f)) + 2);
      *puVar15 = *(undefined1 *)(iVar9 + 0x2a);
      local_2c[0] = local_2c[0] + 2;
    }
  }
  iVar3 = *(int *)(param_5 + 8);
  puVar14 = puVar15;
  if (local_2c[0] < iVar3) {
    iVar9 = -(iVar3 + 0xeU & 0xfffffff8);
    puVar14 = (undefined1 *)((int)puVar16 + iVar9 + 0x10);
    *(undefined1 **)((int)puVar16 + iVar9 + 4) = puVar15;
    *(int **)((int)puVar16 + iVar9 + 8) = local_2c;
    *(undefined1 **)((int)puVar16 + iVar9) = puVar14;
    FUN_0079ea30(uVar6,uVar5,iVar3,param_5);
  }
  piVar2 = local_38;
  cVar8 = (char)local_34;
  *(undefined4 *)(param_5 + 8) = 0;
  if (((char)local_34 == '\0') &&
     (local_44 = (undefined1 *)local_2c[0],
     iVar3 = (**(code **)(*local_38 + 0x30))(local_38,puVar14,local_2c[0]),
     (undefined1 *)iVar3 != local_44)) {
    cVar8 = '\x01';
  }
  *param_1 = piVar2;
  *(char *)(param_1 + 1) = cVar8;
  return param_1;
}

// ---- FUN_0079ef04  @ 0x79ef04
undefined4
FUN_0079ef04(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5,undefined1 param_6,undefined4 param_7)

{
  FUN_0079ed18(param_1,param_2,param_3,param_4,param_5,param_6,param_7);
  return param_1;
}

// ---- FUN_0079ef2c  @ 0x79ef2c
undefined4 *
FUN_0079ef2c(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
            int param_5,undefined1 param_6,undefined4 param_7)

{
  uint uVar1;
  undefined4 local_2c;
  undefined4 local_28;
  undefined1 uStack_24;
  
  uVar1 = *(uint *)(param_5 + 0xc);
  *(uint *)(param_5 + 0xc) = uVar1 & 0xffffbfb5 | 0x208;
  FUN_0079ed18(&local_28,param_2,param_3,param_4,param_5,param_6,param_7);
  *(uint *)(param_5 + 0xc) = uVar1;
  local_2c = CONCAT31((int3)((uint)param_4 >> 8),uStack_24);
  *param_1 = local_28;
  param_1[1] = local_2c;
  return param_1;
}

// ---- FUN_0079ef90  @ 0x79ef90
int FUN_0079ef90(undefined1 *param_1,undefined4 param_2,uint param_3,uint param_4,int param_5,
                uint param_6,char param_7)

{
  uint uVar1;
  int extraout_r2;
  int iVar2;
  undefined4 uVar3;
  undefined1 *puVar4;
  longlong lVar5;
  
  lVar5 = CONCAT44(param_4,param_3);
  puVar4 = param_1;
  if (param_7 == '\0') {
    if ((param_6 & 0x4a) == 0x40) {
      do {
        puVar4 = puVar4 + -1;
        uVar1 = param_3 & 7;
        param_3 = param_3 >> 3 | param_4 << 0x1d;
        param_4 = param_4 >> 3;
        *puVar4 = *(undefined1 *)(uVar1 + param_5 + 4);
      } while (param_3 != 0 || param_4 != 0);
    }
    else {
      if ((param_6 & 0x4000) == 0) {
        iVar2 = 4;
      }
      else {
        iVar2 = 0x14;
      }
      do {
        puVar4 = puVar4 + -1;
        uVar1 = param_3 & 0xf;
        param_3 = param_3 >> 4 | param_4 << 0x1c;
        param_4 = param_4 >> 4;
        *puVar4 = *(undefined1 *)(param_5 + iVar2 + uVar1);
      } while (param_3 != 0 || param_4 != 0);
    }
  }
  else {
    do {
      uVar3 = (undefined4)((ulonglong)lVar5 >> 0x20);
      puVar4 = puVar4 + -1;
      __aeabi_uldivmod((int)lVar5,uVar3,10,0,param_4);
      *puVar4 = *(undefined1 *)(param_5 + extraout_r2 + 4);
      lVar5 = __aeabi_uldivmod((int)lVar5,uVar3,10,0);
    } while (lVar5 != 0);
  }
  return (int)param_1 - (int)puVar4;
}

// ---- FUN_0079f040  @ 0x79f040
undefined4 *
FUN_0079f040(undefined4 *param_1,undefined4 param_2,int *param_3,undefined4 param_4,int param_5,
            byte param_6,int param_7,int param_8)

{
  undefined1 uVar1;
  int *piVar2;
  int iVar3;
  undefined4 *puVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  uint uVar7;
  char cVar8;
  int iVar9;
  uint uVar10;
  int iVar11;
  uint uVar12;
  uint uVar13;
  undefined1 *puVar14;
  undefined1 *puVar15;
  int *piVar16;
  int local_88 [4];
  undefined1 auStack_76 [38];
  undefined1 auStack_50 [8];
  undefined1 *local_48;
  uint local_44;
  undefined4 local_40;
  int local_3c;
  int *local_38;
  undefined4 local_34;
  int local_2c [2];
  
  local_44 = (uint)param_6;
  local_40 = param_2;
  local_38 = param_3;
  local_34 = param_4;
  iVar3 = FUN_007b03f0(&DAT_00971694);
  iVar11 = *(int *)(*(int *)(param_5 + 0x6c) + 0xc);
  iVar9 = *(int *)(iVar11 + iVar3 * 4);
  if (iVar9 == 0) {
    puVar4 = operator_new(0x68);
    puVar4[1] = 0;
    puVar4[2] = 0;
    puVar4[3] = 0;
    *puVar4 = &DAT_0093de20;
    *(undefined1 *)(puVar4 + 4) = 0;
    puVar4[5] = 0;
    puVar4[6] = 0;
    puVar4[7] = 0;
    puVar4[8] = 0;
    *(undefined1 *)(puVar4 + 9) = 0;
    *(undefined1 *)((int)puVar4 + 0x25) = 0;
    *(undefined1 *)(puVar4 + 0x19) = 0;
    FUN_0079ccbc(puVar4,param_5 + 0x6c);
    FUN_007b0318(*(undefined4 *)(param_5 + 0x6c),puVar4,iVar3);
    iVar9 = *(int *)(iVar11 + iVar3 * 4);
  }
  uVar12 = *(uint *)(param_5 + 0xc);
  piVar16 = local_88;
  local_88[0] = iVar9 + 0x26;
  uVar13 = uVar12 & 0x4a;
  uVar10 = (uint)(uVar13 != 8 && uVar13 != 0x40);
  uVar7 = uVar10;
  if (param_7 != 0 || param_8 != 0) {
    uVar7 = 0;
  }
  iVar3 = param_7;
  iVar11 = param_8;
  if (uVar7 != 0) {
    iVar3 = 0;
    iVar11 = 0;
  }
  local_88[1] = uVar12;
  local_88[2] = uVar10;
  local_3c = local_88[0];
  local_2c[0] = FUN_0079ef90(auStack_50,local_88[0],iVar3,iVar11);
  puVar14 = auStack_50 + -local_2c[0];
  if (*(char *)(iVar9 + 0x10) != '\0') {
    uVar1 = *(undefined1 *)(iVar9 + 0x25);
    uVar5 = *(undefined4 *)(iVar9 + 8);
    uVar6 = *(undefined4 *)(iVar9 + 0xc);
    iVar3 = -(local_2c[0] * 2 + 0x10U & 0xfffffff8);
    piVar16 = (int *)((int)local_88 + iVar3);
    *(undefined1 **)((int)local_88 + iVar3 + 8) = auStack_50 + -local_2c[0];
    *(int **)((int)local_88 + iVar3 + 0xc) = local_2c;
    *(undefined1 **)((int)local_88 + iVar3 + 4) = auStack_76 + iVar3;
    *(int *)((int)local_88 + iVar3) = param_5;
    local_48 = auStack_76 + iVar3;
    FUN_0079dfdc(local_40,uVar5,uVar6,uVar1);
    puVar14 = local_48;
  }
  iVar3 = local_2c[0];
  puVar15 = puVar14;
  if (((uVar10 == 0) && ((uVar12 & 0x200) != 0)) && (param_8 != 0 || param_7 != 0)) {
    if (uVar13 == 0x40) {
      iVar3 = local_2c[0] + 1;
      puVar15 = puVar14 + -1;
      local_2c[0] = iVar3;
      *puVar15 = *(undefined1 *)(iVar9 + 0x2a);
    }
    else {
      iVar3 = local_2c[0] + 2;
      puVar15 = puVar14 + -2;
      local_2c[0] = iVar3;
      puVar14[-1] = *(undefined1 *)((local_3c - ((int)(uVar12 << 0x11) >> 0x1f)) + 2);
      *puVar15 = *(undefined1 *)(iVar9 + 0x2a);
    }
  }
  uVar5 = local_40;
  uVar7 = local_44;
  iVar9 = *(int *)(param_5 + 8);
  puVar14 = puVar15;
  if (iVar3 < iVar9) {
    iVar3 = -(iVar9 + 0xeU & 0xfffffff8);
    puVar14 = (undefined1 *)((int)piVar16 + iVar3 + 0x10);
    *(undefined1 **)((int)piVar16 + iVar3 + 4) = puVar15;
    *(int **)((int)piVar16 + iVar3 + 8) = local_2c;
    *(undefined1 **)((int)piVar16 + iVar3) = puVar14;
    FUN_0079ea30(uVar5,uVar7,iVar9,param_5);
    iVar3 = local_2c[0];
  }
  piVar2 = local_38;
  cVar8 = (char)local_34;
  *(undefined4 *)(param_5 + 8) = 0;
  if (((char)local_34 == '\0') &&
     (local_48 = (undefined1 *)iVar3,
     iVar3 = (**(code **)(*local_38 + 0x30))(local_38,puVar14,iVar3),
     (undefined1 *)iVar3 != local_48)) {
    cVar8 = '\x01';
  }
  *param_1 = piVar2;
  *(char *)(param_1 + 1) = cVar8;
  return param_1;
}

// ---- FUN_0079f264  @ 0x79f264
int FUN_0079f264(undefined4 param_1,int *param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  int iVar2;
  undefined4 *puVar3;
  int iVar4;
  
  iVar1 = FUN_007b03f0(&DAT_009716a0);
  iVar4 = *(int *)(*param_2 + 0xc);
  iVar2 = *(int *)(iVar4 + iVar1 * 4);
  if (iVar2 != 0) {
    return iVar2;
  }
  puVar3 = operator_new(0x44);
  puVar3[1] = 0;
  puVar3[2] = 0;
  puVar3[3] = 0;
  *puVar3 = &DAT_0093de10;
  *(undefined1 *)(puVar3 + 4) = 0;
  *(undefined1 *)((int)puVar3 + 0x11) = 0;
  *(undefined1 *)((int)puVar3 + 0x12) = 0;
  puVar3[5] = 0;
  puVar3[6] = 0;
  puVar3[7] = 0;
  puVar3[8] = 0;
  puVar3[9] = 0;
  puVar3[10] = 0;
  puVar3[0xb] = 0;
  *(undefined1 *)(puVar3 + 0xc) = 0;
  *(undefined1 *)((int)puVar3 + 0x31) = 0;
  *(undefined1 *)((int)puVar3 + 0x32) = 0;
  *(undefined1 *)((int)puVar3 + 0x33) = 0;
  *(undefined1 *)(puVar3 + 0xd) = 0;
  *(undefined1 *)((int)puVar3 + 0x35) = 0;
  *(undefined1 *)((int)puVar3 + 0x36) = 0;
  *(undefined1 *)((int)puVar3 + 0x37) = 0;
  *(undefined1 *)((int)puVar3 + 0x43) = 0;
  FUN_0079d0c0(puVar3,param_2,&DAT_0093de10,0,param_4);
  FUN_007b0318(*param_2,puVar3,iVar1);
  return *(int *)(iVar4 + iVar1 * 4);
}

// ---- FUN_0079f30c  @ 0x79f30c
int * FUN_0079f30c(int *param_1)

{
  int *piVar1;
  
  piVar1 = (int *)*param_1;
  if (piVar1 != (int *)0x0) {
    if ((uint)piVar1[2] < (uint)piVar1[3]) {
      piVar1[2] = piVar1[2] + 1;
    }
    else {
      (**(code **)(*piVar1 + 0x28))();
    }
    param_1[1] = -1;
  }
  return param_1;
}

// ---- FUN_0079f334  @ 0x79f334
int FUN_0079f334(undefined4 param_1,int *param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  int iVar2;
  undefined4 *puVar3;
  int iVar4;
  
  iVar1 = FUN_007b03f0(&DAT_009716a4);
  iVar4 = *(int *)(*param_2 + 0xc);
  iVar2 = *(int *)(iVar4 + iVar1 * 4);
  if (iVar2 != 0) {
    return iVar2;
  }
  puVar3 = operator_new(0x44);
  puVar3[1] = 0;
  puVar3[2] = 0;
  puVar3[3] = 0;
  *puVar3 = &DAT_0093de00;
  *(undefined1 *)(puVar3 + 4) = 0;
  *(undefined1 *)((int)puVar3 + 0x11) = 0;
  *(undefined1 *)((int)puVar3 + 0x12) = 0;
  puVar3[5] = 0;
  puVar3[6] = 0;
  puVar3[7] = 0;
  puVar3[8] = 0;
  puVar3[9] = 0;
  puVar3[10] = 0;
  puVar3[0xb] = 0;
  *(undefined1 *)(puVar3 + 0xc) = 0;
  *(undefined1 *)((int)puVar3 + 0x31) = 0;
  *(undefined1 *)((int)puVar3 + 0x32) = 0;
  *(undefined1 *)((int)puVar3 + 0x33) = 0;
  *(undefined1 *)(puVar3 + 0xd) = 0;
  *(undefined1 *)((int)puVar3 + 0x35) = 0;
  *(undefined1 *)((int)puVar3 + 0x36) = 0;
  *(undefined1 *)((int)puVar3 + 0x37) = 0;
  *(undefined1 *)((int)puVar3 + 0x43) = 0;
  FUN_0079d4f4(puVar3,param_2,&DAT_0093de00,0,param_4);
  FUN_007b0318(*param_2,puVar3,iVar1);
  return *(int *)(iVar4 + iVar1 * 4);
}

// ---- FUN_0079f3dc  @ 0x79f3dc
int FUN_0079f3dc(undefined4 param_1,int *param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  int iVar2;
  undefined4 *puVar3;
  int iVar4;
  
  iVar1 = FUN_007b03f0(&DAT_00971694);
  iVar4 = *(int *)(*param_2 + 0xc);
  iVar2 = *(int *)(iVar4 + iVar1 * 4);
  if (iVar2 != 0) {
    return iVar2;
  }
  puVar3 = operator_new(0x68);
  puVar3[1] = 0;
  puVar3[2] = 0;
  puVar3[3] = 0;
  *puVar3 = &DAT_0093de20;
  *(undefined1 *)(puVar3 + 4) = 0;
  puVar3[5] = 0;
  puVar3[6] = 0;
  puVar3[7] = 0;
  puVar3[8] = 0;
  *(undefined1 *)(puVar3 + 9) = 0;
  *(undefined1 *)((int)puVar3 + 0x25) = 0;
  *(undefined1 *)(puVar3 + 0x19) = 0;
  FUN_0079ccbc(puVar3,param_2,&DAT_0093de20,0,param_4);
  FUN_007b0318(*param_2,puVar3,iVar1);
  return *(int *)(iVar4 + iVar1 * 4);
}

// ---- FUN_0079f460  @ 0x79f460
undefined4 *
FUN_0079f460(undefined4 *param_1,undefined4 param_2,int *param_3,uint param_4,int param_5,
            byte param_6,char param_7)

{
  int iVar1;
  void *pvVar2;
  size_t sVar3;
  int iVar4;
  int iVar5;
  uint uVar6;
  uint uVar7;
  undefined1 uVar8;
  undefined1 auStack_48 [4];
  void *local_44;
  undefined4 local_40;
  size_t local_3c;
  int *local_38;
  uint local_34;
  int *local_30;
  undefined1 local_2c;
  
  local_44 = (void *)(uint)param_6;
  uVar6 = *(uint *)(param_5 + 0xc);
  local_34._0_1_ = (undefined1)param_4;
  uVar8 = (undefined1)local_34;
  uVar7 = param_4 & 0xff;
  local_38 = param_3;
  local_34 = param_4;
  if ((uVar6 & 1) == 0) {
    FUN_0079eac8(&local_30,param_2,param_3,param_4,param_5,local_44,param_7);
    uVar8 = local_2c;
    goto LAB_0079f4aa;
  }
  iVar1 = FUN_0079f3dc(&local_30,param_5 + 0x6c);
  local_30 = param_3;
  if (param_7 == '\0') {
    iVar5 = *(int *)(iVar1 + 0x20);
    iVar4 = *(int *)(param_5 + 8);
    local_40 = *(undefined4 *)(iVar1 + 0x1c);
    if (iVar4 <= iVar5) {
LAB_0079f55c:
      *(undefined4 *)(param_5 + 8) = 0;
      if ((uVar7 == 0) &&
         (iVar1 = (**(code **)(*param_3 + 0x30))(param_3,local_40,iVar5), iVar5 != iVar1)) {
        uVar8 = 1;
      }
      goto LAB_0079f4aa;
    }
  }
  else {
    iVar5 = *(int *)(iVar1 + 0x18);
    iVar4 = *(int *)(param_5 + 8);
    local_40 = *(undefined4 *)(iVar1 + 0x14);
    if (iVar4 <= iVar5) goto LAB_0079f55c;
  }
  local_3c = iVar4 - iVar5;
  pvVar2 = memset(auStack_48 + -(local_3c + 0xe & 0xfffffff8),(int)local_44,local_3c);
  *(undefined4 *)(param_5 + 8) = 0;
  if ((uVar6 & 0xb0) == 0x20) {
    if (uVar7 != 0) goto LAB_0079f4aa;
    local_44 = pvVar2;
    iVar1 = (**(code **)(*param_3 + 0x30))(param_3,local_40,iVar5);
    if (iVar5 == iVar1) {
      sVar3 = (**(code **)(*param_3 + 0x30))(param_3,local_44,local_3c);
      uVar8 = local_3c != sVar3;
      goto LAB_0079f4aa;
    }
  }
  else {
    if (uVar7 != 0) goto LAB_0079f4aa;
    sVar3 = (**(code **)(*param_3 + 0x30))(param_3,pvVar2,local_3c);
    if (local_3c == sVar3) {
      iVar1 = (**(code **)(*param_3 + 0x30))(param_3,local_40,iVar5);
      uVar8 = iVar5 != iVar1;
      goto LAB_0079f4aa;
    }
  }
  uVar8 = 1;
LAB_0079f4aa:
  local_34 = CONCAT31(local_34._1_3_,uVar8);
  *param_1 = local_30;
  param_1[1] = local_34;
  return param_1;
}

// ---- FUN_0079f5c0  @ 0x79f5c0
undefined4 *
FUN_0079f5c0(undefined4 *param_1,undefined4 param_2,int *param_3,undefined4 param_4,int param_5,
            byte param_6,int param_7,int param_8)

{
  undefined1 uVar1;
  int *piVar2;
  int iVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  uint uVar6;
  int iVar7;
  int iVar8;
  char cVar9;
  uint uVar10;
  uint uVar11;
  uint uVar12;
  undefined1 *puVar13;
  undefined1 *puVar14;
  int *piVar15;
  int local_88 [4];
  undefined1 auStack_76 [38];
  undefined1 auStack_50 [8];
  undefined1 *local_48;
  uint local_44;
  undefined4 local_40;
  int local_3c;
  int *local_38;
  undefined4 local_34;
  undefined1 auStack_30 [4];
  int local_2c [2];
  
  local_44 = (uint)param_6;
  local_40 = param_2;
  local_38 = param_3;
  local_34 = param_4;
  iVar3 = FUN_0079f3dc(auStack_30,param_5 + 0x6c);
  uVar11 = *(uint *)(param_5 + 0xc);
  piVar15 = local_88;
  uVar12 = uVar11 & 0x4a;
  uVar10 = (uint)(uVar12 != 8 && uVar12 != 0x40);
  local_88[0] = iVar3 + 0x26;
  uVar6 = uVar10 ^ 1;
  if ((int)(uint)(param_7 == 0) <= param_8) {
    uVar6 = 1;
  }
  iVar8 = param_7;
  iVar7 = param_8;
  if (uVar6 == 0) {
    iVar8 = -param_7;
    iVar7 = -param_8 - (uint)(param_7 != 0);
  }
  local_88[1] = uVar11;
  local_88[2] = uVar10;
  local_3c = local_88[0];
  local_2c[0] = FUN_0079ef90(auStack_50,param_8 - (uint)(param_7 == 0),iVar8,iVar7);
  puVar13 = auStack_50 + -local_2c[0];
  if (*(char *)(iVar3 + 0x10) != '\0') {
    uVar1 = *(undefined1 *)(iVar3 + 0x25);
    uVar4 = *(undefined4 *)(iVar3 + 8);
    uVar5 = *(undefined4 *)(iVar3 + 0xc);
    iVar8 = -(local_2c[0] * 2 + 0x10U & 0xfffffff8);
    piVar15 = (int *)((int)local_88 + iVar8);
    *(undefined1 **)((int)local_88 + iVar8 + 8) = auStack_50 + -local_2c[0];
    *(int **)((int)local_88 + iVar8 + 0xc) = local_2c;
    *(undefined1 **)((int)local_88 + iVar8 + 4) = auStack_76 + iVar8;
    *(int *)((int)local_88 + iVar8) = param_5;
    local_48 = auStack_76 + iVar8;
    FUN_0079dfdc(local_40,uVar4,uVar5,uVar1);
    puVar13 = local_48;
  }
  iVar8 = local_2c[0];
  puVar14 = puVar13;
  if (uVar10 == 0) {
    if (((uVar11 & 0x200) != 0) && (param_8 != 0 || param_7 != 0)) {
      if (uVar12 == 0x40) {
        iVar8 = local_2c[0] + 1;
        puVar14 = puVar13 + -1;
        local_2c[0] = iVar8;
        *puVar14 = *(undefined1 *)(iVar3 + 0x2a);
      }
      else {
        iVar8 = local_2c[0] + 2;
        puVar14 = puVar13 + -2;
        local_2c[0] = iVar8;
        puVar13[-1] = *(undefined1 *)((local_3c - ((int)(uVar11 << 0x11) >> 0x1f)) + 2);
        *puVar14 = *(undefined1 *)(iVar3 + 0x2a);
      }
    }
  }
  else if (param_8 < 0) {
    iVar8 = local_2c[0] + 1;
    local_2c[0] = iVar8;
    puVar13[-1] = *(undefined1 *)(iVar3 + 0x26);
    puVar14 = puVar13 + -1;
  }
  else if ((uVar11 & 0x800) != 0) {
    iVar8 = local_2c[0] + 1;
    local_2c[0] = iVar8;
    puVar13[-1] = *(undefined1 *)(iVar3 + 0x27);
    puVar14 = puVar13 + -1;
  }
  uVar4 = local_40;
  uVar6 = local_44;
  iVar3 = *(int *)(param_5 + 8);
  puVar13 = puVar14;
  if (iVar8 < iVar3) {
    iVar8 = -(iVar3 + 0xeU & 0xfffffff8);
    puVar13 = (undefined1 *)((int)piVar15 + iVar8 + 0x10);
    *(undefined1 **)((int)piVar15 + iVar8 + 4) = puVar14;
    *(int **)((int)piVar15 + iVar8 + 8) = local_2c;
    *(undefined1 **)((int)piVar15 + iVar8) = puVar13;
    FUN_0079ea30(uVar4,uVar6,iVar3,param_5);
    iVar8 = local_2c[0];
  }
  piVar2 = local_38;
  cVar9 = (char)local_34;
  *(undefined4 *)(param_5 + 8) = 0;
  if (((char)local_34 == '\0') &&
     (local_48 = (undefined1 *)iVar8,
     iVar3 = (**(code **)(*local_38 + 0x30))(local_38,puVar13,iVar8),
     (undefined1 *)iVar3 != local_48)) {
    cVar9 = '\x01';
  }
  *param_1 = piVar2;
  *(char *)(param_1 + 1) = cVar9;
  return param_1;
}

// ---- FUN_0079f780  @ 0x79f780
undefined4
FUN_0079f780(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5,undefined1 param_6,undefined4 param_7,undefined4 param_8)

{
  FUN_0079f5c0(param_1,param_2,param_3,param_4,param_5,param_6,param_7,param_8);
  return param_1;
}

// ---- FUN_0079f7b0  @ 0x79f7b0
undefined4 *
FUN_0079f7b0(undefined4 *param_1,undefined4 param_2,int *param_3,undefined4 param_4,int param_5,
            byte param_6,undefined1 param_7,undefined4 param_8,undefined8 param_9)

{
  undefined1 uVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  undefined4 uVar5;
  int *piVar6;
  void *pvVar7;
  uint extraout_r1;
  uint uVar8;
  undefined4 uVar9;
  char *pcVar10;
  uint uVar11;
  int iVar12;
  char cVar13;
  char *__dest;
  char *pcVar14;
  uint uVar15;
  char *__src;
  undefined1 *puVar16;
  bool bVar17;
  bool bVar18;
  uint auStack_78 [2];
  undefined8 uStack_70;
  char acStack_68 [4];
  undefined4 local_64;
  undefined4 local_60;
  uint local_5c;
  int *local_58;
  undefined4 local_54;
  undefined1 auStack_4c [4];
  uint local_48;
  undefined4 local_44;
  undefined1 auStack_40 [20];
  
  local_5c = (uint)param_6;
  local_60 = param_2;
  local_58 = param_3;
  local_54 = param_4;
  iVar4 = FUN_0079f3dc(auStack_4c,param_5 + 0x6c);
  uVar11 = *(uint *)(param_5 + 4);
  uVar15 = uVar11 & ~((int)uVar11 >> 0x20);
  if ((int)uVar11 < 0) {
    uVar15 = 6;
  }
  FUN_007c7b04(param_5,auStack_40,param_7);
  if (*(int *)(param_5 + 0xc) << 0x1d < 0) {
    iVar12 = uVar15 + 0x138;
  }
  else {
    iVar12 = uVar15 + 0x1e;
  }
  iVar12 = -(iVar12 + 0xeU & 0xfffffff8);
  uVar5 = FUN_007b0058();
  __src = acStack_68 + iVar12;
  *(uint *)((int)auStack_78 + iVar12) = uVar15;
  *(undefined8 *)((int)&uStack_70 + iVar12) = param_9;
  local_44 = uVar5;
  local_48 = FUN_0079b3f0(&local_44,__src,0,auStack_40);
  piVar6 = (int *)FUN_0079c760(param_5 + 0x6c);
  pcVar10 = __src + local_48;
  iVar2 = -(local_48 + 0xe & 0xfffffff8);
  uVar11 = (uint)((int)&local_64 + iVar2 + iVar12 + 3) >> 3;
  __dest = (char *)(uVar11 * 8);
  if ((char)piVar6[7] == '\x01') {
    local_64 = (char *)local_48;
    memcpy(__dest,__src,(int)pcVar10 - (int)__src);
    uVar15 = (uint)local_64;
  }
  else {
    if ((char)piVar6[7] == '\0') {
      local_64 = pcVar10;
      FUN_007af570();
      pcVar10 = local_64;
    }
    (**(code **)(*piVar6 + 0x1c))(piVar6,__src,pcVar10,__dest);
    uVar15 = local_48;
  }
  local_64 = (char *)uVar15;
  pvVar7 = memchr(__src,0x2e,uVar15);
  pcVar10 = (char *)0x0;
  uVar8 = extraout_r1;
  if (pvVar7 != (void *)0x0) {
    uVar8 = (int)pvVar7 - (int)__src;
    pcVar10 = __dest + uVar8;
    *(undefined1 *)(uVar8 + uVar11 * 8) = *(undefined1 *)(iVar4 + 0x24);
  }
  pcVar14 = __dest;
  puVar16 = (undefined1 *)((int)auStack_78 + iVar2 + iVar12);
  if ((*(char *)(iVar4 + 0x10) != '\0') &&
     ((pcVar10 != (char *)0x0 || (int)uVar15 < 3 ||
      (((puVar16 = (undefined1 *)((int)auStack_78 + iVar2 + iVar12),
        (byte)acStack_68[iVar12 + 1] < 0x3a &&
        (puVar16 = (undefined1 *)((int)auStack_78 + iVar2 + iVar12),
        0x2f < (byte)acStack_68[iVar12 + 1])) &&
       (uVar8 = (byte)acStack_68[iVar12 + 2] - 0x30,
       puVar16 = (undefined1 *)((int)auStack_78 + iVar2 + iVar12), uVar8 < 10)))))) {
    bVar17 = *__src == '-';
    bVar18 = *__src == '+';
    iVar3 = -((int)local_64 * 2 + 0xeU & 0xfffffff8);
    puVar16 = (undefined1 *)((int)auStack_78 + iVar3 + iVar2 + iVar12);
    pcVar14 = acStack_68 + iVar3 + iVar2 + iVar12;
    if (bVar17 || bVar18) {
      uVar8 = uVar15 - 1;
      acStack_68[iVar3 + iVar2 + iVar12] = *__dest;
      pcVar14 = acStack_68 + iVar3 + iVar2 + iVar12;
    }
    uVar15 = (uint)(bVar17 || bVar18);
    uVar5 = *(undefined4 *)(iVar4 + 0xc);
    if (bVar17 || bVar18) {
      local_48 = uVar8;
    }
    uVar1 = *(undefined1 *)(iVar4 + 0x25);
    uVar9 = *(undefined4 *)(iVar4 + 8);
    *(char **)((int)&uStack_70 + iVar3 + iVar2 + iVar12) = __dest + uVar15;
    *(char **)((int)auStack_78 + iVar3 + iVar2 + iVar12) = pcVar10;
    *(char **)((int)auStack_78 + iVar3 + iVar2 + iVar12 + 4) = pcVar14 + uVar15;
    *(uint **)(acStack_68 + iVar3 + iVar2 + iVar12 + -4) = &local_48;
    FUN_0079df84(local_60,uVar9,uVar5,uVar1);
    uVar15 = local_48 + uVar15;
    local_48 = uVar15;
  }
  uVar11 = local_5c;
  uVar5 = local_60;
  iVar4 = *(int *)(param_5 + 8);
  pcVar10 = pcVar14;
  if ((int)uVar15 < iVar4) {
    iVar12 = -(iVar4 + 0xeU & 0xfffffff8);
    pcVar10 = puVar16 + iVar12 + 0x10;
    *(char **)(puVar16 + iVar12 + 4) = pcVar14;
    *(uint **)(puVar16 + iVar12 + 8) = &local_48;
    *(char **)(puVar16 + iVar12) = pcVar10;
    FUN_0079ea30(uVar5,uVar11,iVar4,param_5);
    uVar15 = local_48;
  }
  piVar6 = local_58;
  cVar13 = (char)local_54;
  *(undefined4 *)(param_5 + 8) = 0;
  if (((char)local_54 == '\0') &&
     (uVar11 = (**(code **)(*local_58 + 0x30))(local_58,pcVar10,uVar15), uVar11 != uVar15)) {
    cVar13 = '\x01';
  }
  *param_1 = piVar6;
  *(char *)(param_1 + 1) = cVar13;
  return param_1;
}

// ---- FUN_0079f9c8  @ 0x79f9c8
undefined4
FUN_0079f9c8(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5,undefined1 param_6)

{
  FUN_0079f7b0(param_1,param_2,param_3,param_4,param_5,param_6,0);
  return param_1;
}

// ---- FUN_0079f9f8  @ 0x79f9f8
undefined4 *
FUN_0079f9f8(undefined4 *param_1,undefined4 param_2,int *param_3,undefined4 param_4,int param_5,
            byte param_6,undefined1 param_7,undefined4 param_8,undefined8 param_9)

{
  undefined1 uVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  undefined4 uVar5;
  int *piVar6;
  void *pvVar7;
  uint extraout_r1;
  uint uVar8;
  undefined4 uVar9;
  char *pcVar10;
  uint uVar11;
  int iVar12;
  char cVar13;
  char *__dest;
  char *pcVar14;
  uint uVar15;
  char *__src;
  undefined1 *puVar16;
  bool bVar17;
  bool bVar18;
  uint auStack_78 [2];
  undefined8 uStack_70;
  char acStack_68 [4];
  undefined4 local_64;
  undefined4 local_60;
  uint local_5c;
  int *local_58;
  undefined4 local_54;
  undefined1 auStack_4c [4];
  uint local_48;
  undefined4 local_44;
  undefined1 auStack_40 [20];
  
  local_5c = (uint)param_6;
  local_60 = param_2;
  local_58 = param_3;
  local_54 = param_4;
  iVar4 = FUN_0079f3dc(auStack_4c,param_5 + 0x6c);
  uVar11 = *(uint *)(param_5 + 4);
  uVar15 = uVar11 & ~((int)uVar11 >> 0x20);
  if ((int)uVar11 < 0) {
    uVar15 = 6;
  }
  FUN_007c7b04(param_5,auStack_40,param_7);
  if (*(int *)(param_5 + 0xc) << 0x1d < 0) {
    iVar12 = uVar15 + 0x138;
  }
  else {
    iVar12 = uVar15 + 0x1e;
  }
  iVar12 = -(iVar12 + 0xeU & 0xfffffff8);
  uVar5 = FUN_007b0058();
  __src = acStack_68 + iVar12;
  *(uint *)((int)auStack_78 + iVar12) = uVar15;
  *(undefined8 *)((int)&uStack_70 + iVar12) = param_9;
  local_44 = uVar5;
  local_48 = FUN_0079b3f0(&local_44,__src,0,auStack_40);
  piVar6 = (int *)FUN_0079c760(param_5 + 0x6c);
  pcVar10 = __src + local_48;
  iVar2 = -(local_48 + 0xe & 0xfffffff8);
  uVar11 = (uint)((int)&local_64 + iVar2 + iVar12 + 3) >> 3;
  __dest = (char *)(uVar11 * 8);
  if ((char)piVar6[7] == '\x01') {
    local_64 = (char *)local_48;
    memcpy(__dest,__src,(int)pcVar10 - (int)__src);
    uVar15 = (uint)local_64;
  }
  else {
    if ((char)piVar6[7] == '\0') {
      local_64 = pcVar10;
      FUN_007af570();
      pcVar10 = local_64;
    }
    (**(code **)(*piVar6 + 0x1c))(piVar6,__src,pcVar10,__dest);
    uVar15 = local_48;
  }
  local_64 = (char *)uVar15;
  pvVar7 = memchr(__src,0x2e,uVar15);
  pcVar10 = (char *)0x0;
  uVar8 = extraout_r1;
  if (pvVar7 != (void *)0x0) {
    uVar8 = (int)pvVar7 - (int)__src;
    pcVar10 = __dest + uVar8;
    *(undefined1 *)(uVar8 + uVar11 * 8) = *(undefined1 *)(iVar4 + 0x24);
  }
  pcVar14 = __dest;
  puVar16 = (undefined1 *)((int)auStack_78 + iVar2 + iVar12);
  if ((*(char *)(iVar4 + 0x10) != '\0') &&
     ((pcVar10 != (char *)0x0 || (int)uVar15 < 3 ||
      (((puVar16 = (undefined1 *)((int)auStack_78 + iVar2 + iVar12),
        (byte)acStack_68[iVar12 + 1] < 0x3a &&
        (puVar16 = (undefined1 *)((int)auStack_78 + iVar2 + iVar12),
        0x2f < (byte)acStack_68[iVar12 + 1])) &&
       (uVar8 = (byte)acStack_68[iVar12 + 2] - 0x30,
       puVar16 = (undefined1 *)((int)auStack_78 + iVar2 + iVar12), uVar8 < 10)))))) {
    bVar17 = *__src == '-';
    bVar18 = *__src == '+';
    iVar3 = -((int)local_64 * 2 + 0xeU & 0xfffffff8);
    puVar16 = (undefined1 *)((int)auStack_78 + iVar3 + iVar2 + iVar12);
    pcVar14 = acStack_68 + iVar3 + iVar2 + iVar12;
    if (bVar17 || bVar18) {
      uVar8 = uVar15 - 1;
      acStack_68[iVar3 + iVar2 + iVar12] = *__dest;
      pcVar14 = acStack_68 + iVar3 + iVar2 + iVar12;
    }
    uVar15 = (uint)(bVar17 || bVar18);
    uVar5 = *(undefined4 *)(iVar4 + 0xc);
    if (bVar17 || bVar18) {
      local_48 = uVar8;
    }
    uVar1 = *(undefined1 *)(iVar4 + 0x25);
    uVar9 = *(undefined4 *)(iVar4 + 8);
    *(char **)((int)&uStack_70 + iVar3 + iVar2 + iVar12) = __dest + uVar15;
    *(char **)((int)auStack_78 + iVar3 + iVar2 + iVar12) = pcVar10;
    *(char **)((int)auStack_78 + iVar3 + iVar2 + iVar12 + 4) = pcVar14 + uVar15;
    *(uint **)(acStack_68 + iVar3 + iVar2 + iVar12 + -4) = &local_48;
    FUN_0079df84(local_60,uVar9,uVar5,uVar1);
    uVar15 = local_48 + uVar15;
    local_48 = uVar15;
  }
  uVar11 = local_5c;
  uVar5 = local_60;
  iVar4 = *(int *)(param_5 + 8);
  pcVar10 = pcVar14;
  if ((int)uVar15 < iVar4) {
    iVar12 = -(iVar4 + 0xeU & 0xfffffff8);
    pcVar10 = puVar16 + iVar12 + 0x10;
    *(char **)(puVar16 + iVar12 + 4) = pcVar14;
    *(uint **)(puVar16 + iVar12 + 8) = &local_48;
    *(char **)(puVar16 + iVar12) = pcVar10;
    FUN_0079ea30(uVar5,uVar11,iVar4,param_5);
    uVar15 = local_48;
  }
  piVar6 = local_58;
  cVar13 = (char)local_54;
  *(undefined4 *)(param_5 + 8) = 0;
  if (((char)local_54 == '\0') &&
     (uVar11 = (**(code **)(*local_58 + 0x30))(local_58,pcVar10,uVar15), uVar11 != uVar15)) {
    cVar13 = '\x01';
  }
  *param_1 = piVar6;
  *(char *)(param_1 + 1) = cVar13;
  return param_1;
}

// ---- FUN_0079fc10  @ 0x79fc10
undefined4
FUN_0079fc10(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5,undefined1 param_6)

{
  FUN_0079f9f8(param_1,param_2,param_3,param_4,param_5,param_6,0x4c);
  return param_1;
}

// ---- FUN_0079fc40  @ 0x79fc40
uint FUN_0079fc40(int *param_1)

{
  int *piVar1;
  uint uVar2;
  
  piVar1 = (int *)*param_1;
  if (piVar1 == (int *)0x0) {
    uVar2 = 0xffffffff;
  }
  else {
    uVar2 = param_1[1];
    if (uVar2 == 0xffffffff) {
      if ((byte *)piVar1[2] < (byte *)piVar1[3]) {
        uVar2 = (uint)*(byte *)piVar1[2];
      }
      else {
        uVar2 = (**(code **)(*piVar1 + 0x24))();
        if (uVar2 == 0xffffffff) {
          *param_1 = 0;
          return 0xffffffff;
        }
      }
      param_1[1] = uVar2;
      return uVar2;
    }
  }
  return uVar2;
}

// ---- FUN_0079fc7c  @ 0x79fc7c
bool FUN_0079fc7c(int *param_1,int *param_2)

{
  int *piVar1;
  int iVar2;
  uint uVar3;
  int iVar4;
  
  piVar1 = (int *)*param_1;
  if (piVar1 == (int *)0x0) {
    iVar4 = 1;
  }
  else if (param_1[1] == -1) {
    if ((byte *)piVar1[2] < (byte *)piVar1[3]) {
      uVar3 = (uint)*(byte *)piVar1[2];
    }
    else {
      uVar3 = (**(code **)(*piVar1 + 0x24))();
      if (uVar3 == 0xffffffff) {
        iVar4 = 1;
        *param_1 = 0;
        goto LAB_0079fc90;
      }
    }
    param_1[1] = uVar3;
    iVar4 = 0;
  }
  else {
    iVar4 = 0;
  }
LAB_0079fc90:
  piVar1 = (int *)*param_2;
  if (piVar1 == (int *)0x0) {
    iVar2 = 1;
  }
  else if (param_2[1] == -1) {
    if ((byte *)piVar1[2] < (byte *)piVar1[3]) {
      uVar3 = (uint)*(byte *)piVar1[2];
    }
    else {
      uVar3 = (**(code **)(*piVar1 + 0x24))();
      if (uVar3 == 0xffffffff) {
        iVar2 = 1;
        *param_2 = 0;
        goto LAB_0079fc9e;
      }
    }
    param_2[1] = uVar3;
    iVar2 = 0;
  }
  else {
    iVar2 = 0;
  }
LAB_0079fc9e:
  return iVar2 == iVar4;
}

// ---- FUN_0079fcfc  @ 0x79fcfc
undefined4 *
FUN_0079fcfc(undefined4 *param_1,undefined4 param_2,int *param_3,uint param_4,undefined4 param_5,
            undefined4 param_6,int *param_7,int param_8,int param_9,int param_10,uint *param_11)

{
  char cVar1;
  byte bVar2;
  char cVar3;
  int *piVar4;
  int iVar5;
  uint uVar6;
  size_t sVar7;
  int iVar8;
  uint uVar9;
  size_t sVar10;
  int iVar11;
  uint uVar12;
  int iVar13;
  uint uVar14;
  undefined4 *puVar15;
  char *pcVar16;
  int aiStack_40 [2];
  undefined4 *local_38;
  int **local_34;
  int *local_30;
  uint local_2c;
  
  iVar8 = param_9;
  iVar11 = param_8;
  local_38 = param_1;
  local_34 = &local_30;
  local_30 = param_3;
  local_2c = param_4;
  piVar4 = (int *)FUN_0079c760(param_10 + 0x6c);
  iVar13 = -(iVar8 * 4 + 0xeU & 0xfffffff8);
  iVar5 = FUN_0079fc7c(&local_30,&param_5);
  if (iVar5 == 0) {
    bVar2 = FUN_0079fc40(&local_30);
    if (iVar8 != 0) {
      puVar15 = (undefined4 *)(iVar11 + -4);
      aiStack_40[1] = iVar11;
      uVar9 = 0;
      iVar11 = 0;
      do {
        while ((puVar15 = puVar15 + 1, (uint)*(byte *)*puVar15 == (uint)bVar2 ||
               (uVar14 = (**(code **)(*piVar4 + 8))(piVar4), bVar2 == uVar14))) {
          *(int *)((int)aiStack_40 + uVar9 * 4 + iVar13) = iVar11;
          iVar11 = iVar11 + 1;
          uVar9 = uVar9 + 1;
          if (iVar11 == iVar8) goto LAB_0079fdac;
        }
        iVar11 = iVar11 + 1;
      } while (iVar11 != iVar8);
LAB_0079fdac:
      iVar11 = aiStack_40[1];
      uVar14 = 0;
      while (1 < uVar9) {
        uVar12 = 1;
        uVar6 = strlen(*(char **)(iVar11 + *(int *)((int)aiStack_40 + iVar13) * 4));
        piVar4 = (int *)((int)aiStack_40 + iVar13);
        do {
          piVar4 = piVar4 + 1;
          uVar12 = uVar12 + 1;
          sVar7 = strlen(*(char **)(iVar11 + *piVar4 * 4));
          if (sVar7 <= uVar6) {
            uVar6 = sVar7;
          }
        } while (uVar12 < uVar9);
        if (local_30 != (int *)0x0) {
          if ((uint)local_30[2] < (uint)local_30[3]) {
            local_30[2] = local_30[2] + 1;
          }
          else {
            (**(code **)(*local_30 + 0x28))();
          }
          local_2c = 0xffffffff;
        }
        uVar14 = uVar14 + 1;
        if ((uVar6 <= uVar14) || (iVar8 = FUN_0079fc7c(&local_30,&param_5), iVar8 != 0))
        goto LAB_0079fd40;
        uVar6 = 0;
        do {
          bVar2 = *(byte *)(*(int *)(iVar11 + *(int *)((int)aiStack_40 + uVar6 * 4 + iVar13) * 4) +
                           uVar14);
          if (local_30 == (int *)0x0) {
            uVar12 = 0xff;
          }
          else if (local_2c == 0xffffffff) {
            if ((byte *)local_30[2] < (byte *)local_30[3]) {
              uVar12 = (uint)*(byte *)local_30[2];
            }
            else {
              uVar12 = (**(code **)(*local_30 + 0x24))();
              if (uVar12 == 0xffffffff) {
                uVar12 = 0xff;
                local_30 = (int *)0x0;
                goto LAB_0079fe12;
              }
            }
            local_2c = uVar12;
            uVar12 = uVar12 & 0xff;
          }
          else {
            uVar12 = local_2c & 0xff;
          }
LAB_0079fe12:
          if (bVar2 == uVar12) {
            uVar6 = uVar6 + 1;
          }
          else {
            uVar9 = uVar9 - 1;
            *(undefined4 *)((int)aiStack_40 + uVar6 * 4 + iVar13) =
                 *(undefined4 *)((int)aiStack_40 + uVar9 * 4 + iVar13);
          }
        } while (uVar6 < uVar9);
      }
      if (uVar9 == 1) {
        sVar10 = uVar14 + 1;
        FUN_0079f30c(&local_30);
        iVar13 = *(int *)((int)aiStack_40 + iVar13);
        pcVar16 = *(char **)(iVar11 + iVar13 * 4);
        sVar7 = strlen(pcVar16);
        if (sVar10 < sVar7) {
          pcVar16 = pcVar16 + uVar14;
          do {
            iVar11 = FUN_0079fc7c(&local_30,&param_5);
            if (iVar11 != 0) break;
            pcVar16 = pcVar16 + 1;
            cVar1 = *pcVar16;
            cVar3 = FUN_0079fc40(&local_30);
            if (cVar1 != cVar3) break;
            sVar10 = sVar10 + 1;
            FUN_0079f30c(&local_30);
          } while (sVar10 < sVar7);
        }
        if (sVar10 == sVar7) {
          *param_7 = iVar13;
          goto LAB_0079fd4a;
        }
      }
    }
  }
LAB_0079fd40:
  *param_11 = *param_11 | 4;
LAB_0079fd4a:
  piVar4 = local_34[1];
  *local_38 = *local_34;
  local_38[1] = piVar4;
  return local_38;
}

// ---- FUN_0079fedc  @ 0x79fedc
undefined4 *
FUN_0079fedc(undefined4 *param_1,undefined4 param_2,int *param_3,uint param_4,int *param_5,
            uint param_6,uint *param_7,int param_8,uint param_9,int param_10,uint *param_11)

{
  uint *puVar1;
  int iVar2;
  byte bVar3;
  int *piVar4;
  int iVar5;
  uint uVar6;
  size_t sVar7;
  uint uVar8;
  int iVar9;
  uint uVar10;
  uint uVar11;
  uint uVar12;
  uint *puVar13;
  uint uVar14;
  undefined4 *puVar15;
  uint uVar16;
  uint uVar17;
  uint *puVar18;
  bool bVar19;
  uint auStack_40 [2];
  undefined4 *local_38;
  int **local_34;
  int *local_30;
  uint local_2c;
  
  uVar11 = param_8;
  local_38 = param_1;
  local_34 = &local_30;
  local_30 = param_3;
  local_2c = param_4;
  piVar4 = (int *)FUN_0079c760(param_10 + 0x6c);
  iVar2 = -(param_9 * 8 + 8);
  iVar5 = FUN_0079fc7c(&local_30,&param_5);
  if (iVar5 == 0) {
    bVar3 = FUN_0079fc40(&local_30);
    iVar5 = param_9 * 2;
    if (iVar5 != 0) {
      puVar15 = (undefined4 *)(uVar11 + -4);
      auStack_40[1] = uVar11;
      uVar12 = 0;
      iVar9 = 0;
      do {
        while ((puVar15 = puVar15 + 1, (uint)*(byte *)*puVar15 != (uint)bVar3 &&
               (uVar11 = (**(code **)(*piVar4 + 8))(piVar4), bVar3 != uVar11))) {
          iVar9 = iVar9 + 1;
          if (iVar9 == iVar5) goto LAB_007a0094;
        }
        *(int *)((int)auStack_40 + uVar12 * 4 + iVar2) = iVar9;
        iVar9 = iVar9 + 1;
        uVar12 = uVar12 + 1;
      } while (iVar9 != iVar5);
LAB_007a0094:
      uVar11 = auStack_40[1];
      puVar13 = (uint *)0x0;
      uVar14 = 0;
      if (uVar12 != 0) {
        FUN_0079f30c(&local_30);
        iVar9 = 0;
        iVar5 = -(uVar12 * 4 + 0xe & 0xfffffff8);
        puVar13 = (uint *)((int)auStack_40 + iVar5 + iVar2);
        do {
          sVar7 = strlen(*(char **)(uVar11 + *(int *)((int)auStack_40 + iVar9 + iVar2) * 4));
          *(size_t *)((int)auStack_40 + iVar9 + iVar5 + iVar2) = sVar7;
          iVar9 = iVar9 + 4;
        } while (uVar12 * 4 != iVar9);
        uVar14 = 1;
      }
      goto LAB_0079ff26;
    }
  }
  uVar12 = 0;
  uVar14 = 0;
  puVar13 = (uint *)0x0;
LAB_0079ff26:
  do {
    if (local_30 == (int *)0x0) {
      iVar5 = 1;
    }
    else if (local_2c == 0xffffffff) {
      if ((byte *)local_30[2] < (byte *)local_30[3]) {
        uVar17 = (uint)*(byte *)local_30[2];
      }
      else {
        uVar17 = (**(code **)(*local_30 + 0x24))();
        if (uVar17 == 0xffffffff) {
          iVar5 = 1;
          local_30 = (int *)0x0;
          goto LAB_0079ff38;
        }
      }
      local_2c = uVar17;
      iVar5 = 0;
    }
    else {
      iVar5 = 0;
    }
LAB_0079ff38:
    if (param_5 == (int *)0x0) {
      iVar9 = 1;
LAB_0079ff4a:
      if (iVar9 == iVar5) break;
    }
    else {
      if (param_6 != 0xffffffff) {
        iVar9 = 0;
        goto LAB_0079ff4a;
      }
      if ((byte *)param_5[2] < (byte *)param_5[3]) {
        uVar17 = (uint)*(byte *)param_5[2];
      }
      else {
        uVar17 = (**(code **)(*param_5 + 0x24))();
        if (uVar17 == 0xffffffff) {
          param_5 = (int *)0x0;
          iVar9 = 1;
          goto LAB_0079ff4a;
        }
      }
      param_6 = uVar17;
      if (iVar5 == 0) break;
    }
    if (local_30 == (int *)0x0) {
      uVar17 = 0xff;
    }
    else if (local_2c == 0xffffffff) {
      if ((byte *)local_30[2] < (byte *)local_30[3]) {
        uVar17 = (uint)*(byte *)local_30[2];
      }
      else {
        uVar17 = (**(code **)(*local_30 + 0x24))();
        if (uVar17 == 0xffffffff) {
          uVar17 = 0xff;
          local_30 = (int *)0x0;
          goto joined_r0x0079ff64;
        }
      }
      local_2c = uVar17;
      uVar17 = uVar17 & 0xff;
    }
    else {
      uVar17 = local_2c & 0xff;
    }
joined_r0x0079ff64:
    if (uVar12 == 0) goto LAB_0079ffe2;
    uVar10 = 0;
    uVar16 = 0;
    do {
      puVar1 = puVar13 + uVar10;
      iVar9 = uVar10 * 4;
      iVar5 = uVar10 * 4;
      puVar18 = puVar13 + uVar10;
      if (*puVar1 <= uVar14) {
        uVar16 = uVar16 + 1;
        uVar10 = uVar10 + 1;
      }
      uVar6 = *(uint *)(uVar11 + *(int *)((int)auStack_40 + iVar5 + iVar2) * 4);
      if (*puVar1 > uVar14) {
        uVar8 = (uint)*(byte *)(uVar6 + uVar14);
        bVar19 = uVar8 != uVar17;
        if (bVar19) {
          uVar12 = uVar12 - 1;
          uVar8 = *(uint *)((int)auStack_40 + uVar12 * 4 + iVar2);
          uVar6 = puVar13[uVar12];
        }
        else {
          uVar10 = uVar10 + 1;
        }
        if (bVar19) {
          *(uint *)((int)auStack_40 + iVar9 + iVar2) = uVar8;
          *puVar18 = uVar6;
        }
      }
    } while (uVar10 < uVar12);
    if (uVar12 == uVar16) break;
    if (local_30 != (int *)0x0) {
      if ((uint)local_30[2] < (uint)local_30[3]) {
        local_30[2] = local_30[2] + 1;
      }
      else {
        (**(code **)(*local_30 + 0x28))();
      }
      local_2c = 0xffffffff;
    }
    uVar14 = uVar14 + 1;
  } while( true );
  if (uVar12 == 1) {
    uVar11 = *puVar13;
joined_r0x007a0150:
    if (uVar14 == uVar11) {
LAB_007a0022:
      uVar11 = *(uint *)((int)auStack_40 + iVar2);
      if (param_9 <= uVar11) {
        uVar11 = uVar11 - param_9;
      }
      *param_7 = uVar11;
      goto LAB_0079ffec;
    }
  }
  else if (uVar12 == 2) {
    if (uVar14 != *puVar13) {
      uVar11 = puVar13[1];
      goto joined_r0x007a0150;
    }
    goto LAB_007a0022;
  }
LAB_0079ffe2:
  *param_11 = *param_11 | 4;
LAB_0079ffec:
  piVar4 = local_34[1];
  *local_38 = *local_34;
  local_38[1] = piVar4;
  return local_38;
}
