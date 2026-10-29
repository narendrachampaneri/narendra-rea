// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 39 functions

// ---- FUN_0072017c  @ 0x72017c
undefined4 FUN_0072017c(int param_1,uint param_2,void *param_3)

{
  int iVar1;
  uint uVar2;
  uint uVar3;
  uint __n;
  
  uVar3 = (uint)*(ushort *)(param_1 + 0x4cc);
  do {
    if (uVar3 == 0) {
      iVar1 = FUN_0071f578(param_1);
      if (iVar1 == 0) {
        return 0;
      }
      uVar3 = (uint)*(ushort *)(param_1 + 0x4cc);
    }
    __n = uVar3;
    if (param_2 <= uVar3) {
      __n = param_2;
    }
    _TIFFmemcpy(param_3,*(void **)(param_1 + 0x4d0),__n);
    param_2 = param_2 - __n & 0xffff;
    uVar2 = *(ushort *)(param_1 + 0x4cc) - __n;
    *(uint *)(param_1 + 0x4d0) = *(int *)(param_1 + 0x4d0) + __n;
    uVar3 = uVar2 & 0xffff;
    *(short *)(param_1 + 0x4cc) = (short)uVar2;
    param_3 = (void *)((int)param_3 + __n);
  } while (param_2 != 0);
  return 1;
}

// ---- FUN_00720210  @ 0x720210
void FUN_00720210(int param_1)

{
  byte bVar1;
  char cVar2;
  byte bVar3;
  int iVar4;
  undefined4 uVar5;
  undefined4 *puVar6;
  size_t *psVar7;
  int iVar8;
  size_t *psVar9;
  uint uVar10;
  int iVar11;
  byte *pbVar12;
  undefined1 *puVar13;
  byte bVar14;
  ushort uVar15;
  ushort uVar16;
  uint uVar17;
  int iVar18;
  bool bVar19;
  uint local_58;
  ushort local_46;
  ushort local_44;
  ushort local_42;
  ushort local_40;
  byte local_3d;
  undefined1 local_3c [15];
  byte bStack_2d;
  int local_2c;
  
  iVar18 = *(int *)(param_1 + 0x238);
  local_2c = __stack_chk_guard;
  if (*(int *)(iVar18 + 0x10c) == 0) {
    uVar5 = (**(code **)(param_1 + 0x278))(*(undefined4 *)(param_1 + 0x264));
    *(undefined4 *)(iVar18 + 0x10c) = uVar5;
  }
  uVar17 = *(uint *)(iVar18 + 0x128);
  if (uVar17 != 0) {
    uVar10 = *(uint *)(iVar18 + 0x10c);
    if (uVar17 < uVar10) {
      if ((*(int *)(iVar18 + 300) == 0) || (uVar10 < *(int *)(iVar18 + 300) + uVar17)) {
        *(uint *)(iVar18 + 300) = uVar10 - uVar17;
      }
    }
    else {
      *(undefined4 *)(iVar18 + 300) = 0;
      *(undefined4 *)(iVar18 + 0x128) = 0;
    }
  }
  *(undefined4 *)(iVar18 + 0x4b8) = 0;
  *(undefined4 *)(iVar18 + 0x4bc) = *(undefined4 *)(param_1 + 0xb4);
  *(undefined4 *)(iVar18 + 0x4b4) = 0;
  *(undefined2 *)(iVar18 + 0x4cc) = 0;
  *(undefined4 *)(iVar18 + 0x4c8) = 0;
LAB_00720440:
  iVar4 = FUN_0071f578(iVar18);
  if (iVar4 != 0) {
LAB_007202a4:
    local_3d = **(byte **)(iVar18 + 0x4d0);
    if (local_3d != 0xff) goto LAB_0072049c;
    *(int *)(iVar18 + 0x4d0) = *(int *)(iVar18 + 0x4d0) + 1;
    *(short *)(iVar18 + 0x4cc) = *(short *)(iVar18 + 0x4cc) + -1;
    do {
      iVar4 = FUN_0071f6e8(iVar18,&local_3d);
      if (iVar4 == 0) goto LAB_00720450;
    } while (local_3d == 0xff);
    switch(local_3d) {
    case 0xc0:
      goto LAB_00720958;
    case 0xc1:
      goto LAB_00720958;
    case 0xc2:
      break;
    case 0xc3:
LAB_00720958:
      iVar4 = *(int *)(param_1 + 0x238);
      if (*(char *)(iVar4 + 0x193) == '\0') {
        if (*(char *)(iVar4 + 0x131) == '\0') {
          *(byte *)(iVar4 + 0x194) = local_3d;
        }
        iVar11 = FUN_0071f744(iVar4,&local_44);
        if (iVar11 == 0) goto LAB_00720450;
        if (local_44 < 0xb) {
          if (*(char *)(iVar4 + 0x131) != '\0') goto LAB_00720450;
          TIFFErrorExt(*(undefined4 *)(param_1 + 0x264),"OJPEGReadHeaderInfoSecStreamSof",
                       "Corrupt SOF marker in JPEG data");
          uVar17 = 0;
        }
        else {
          local_44 = local_44 - 8;
          uVar17 = local_44 / 3;
          if ((uint)local_44 % 3 == 0) {
            if ((*(char *)(iVar4 + 0x131) == '\0') && (*(byte *)(iVar4 + 0x124) != uVar17)) {
              TIFFErrorExt(*(undefined4 *)(param_1 + 0x264),"OJPEGReadHeaderInfoSecStreamSof",
                           "JPEG compressed data indicates unexpected number of samples");
              uVar17 = 0;
            }
            else {
              iVar11 = FUN_0071f6e8(iVar4,&local_42);
              if (iVar11 == 0) goto LAB_00720450;
              if ((byte)local_42 == '\b') {
                if (*(char *)(iVar4 + 0x131) == '\0') {
                  iVar11 = FUN_0071f744(iVar4,&local_46);
                  if (iVar11 == 0) goto LAB_00720450;
                  uVar10 = (uint)local_46;
                  if ((uVar10 < *(uint *)(iVar4 + 0x114)) && (uVar10 < *(uint *)(iVar4 + 0x120))) {
                    TIFFErrorExt(*(undefined4 *)(param_1 + 0x264),"OJPEGReadHeaderInfoSecStreamSof",
                                 "JPEG compressed data indicates unexpected height");
                    uVar17 = 0;
                    goto LAB_00720454;
                  }
                  *(uint *)(iVar4 + 0x19c) = uVar10;
                  iVar11 = FUN_0071f744(iVar4,&local_46);
                  if (iVar11 == 0) goto LAB_00720450;
                  uVar10 = (uint)local_46;
                  if ((uVar10 < *(uint *)(iVar4 + 0x110)) && (uVar10 < *(uint *)(iVar4 + 0x118))) {
                    TIFFErrorExt(*(undefined4 *)(param_1 + 0x264),"OJPEGReadHeaderInfoSecStreamSof",
                                 "JPEG compressed data indicates unexpected width");
                    uVar17 = 0;
                    goto LAB_00720454;
                  }
                  *(uint *)(iVar4 + 0x198) = uVar10;
                }
                else {
                  FUN_0071f7ac(iVar4,4);
                }
                iVar11 = FUN_0071f6e8(iVar4,&local_42);
                if (iVar11 == 0) goto LAB_00720450;
                if ((byte)local_42 == uVar17) {
                  iVar11 = iVar4;
                  for (local_58 = 0; local_58 != uVar17; local_58 = local_58 + 1 & 0xffff) {
                    iVar8 = FUN_0071f6e8(iVar4,&local_42);
                    if (iVar8 == 0) goto LAB_00720450;
                    if (*(char *)(iVar4 + 0x131) == '\0') {
                      *(byte *)(iVar11 + 0x1a0) = (byte)local_42;
                    }
                    iVar8 = FUN_0071f6e8(iVar4,&local_42);
                    if (iVar8 == 0) goto LAB_00720450;
                    if (*(char *)(iVar4 + 0x131) == '\0') {
                      cVar2 = *(char *)(iVar4 + 0x136);
                      *(byte *)(iVar11 + 0x1a3) = (byte)local_42;
                      if (cVar2 == '\0') {
                        if (local_58 == 0) {
                          if ((uint)(byte)local_42 !=
                              ((uint)*(byte *)(iVar4 + 0x135) | (uint)*(byte *)(iVar4 + 0x134) << 4)
                             ) {
                            TIFFErrorExt(*(undefined4 *)(param_1 + 0x264),
                                         "OJPEGReadHeaderInfoSecStreamSof",
                                         "JPEG compressed data indicates unexpected subsampling values"
                                        );
                            uVar17 = 0;
                            goto LAB_00720454;
                          }
                        }
                        else if ((byte)local_42 != 0x11) {
                          TIFFErrorExt(*(undefined4 *)(param_1 + 0x264),
                                       "OJPEGReadHeaderInfoSecStreamSof",
                                       "JPEG compressed data indicates unexpected subsampling values"
                                      );
                          uVar17 = 0;
                          goto LAB_00720454;
                        }
                      }
                    }
                    else if (local_58 == 0) {
                      bVar1 = (byte)local_42 >> 4;
                      *(byte *)(iVar4 + 0x134) = bVar1;
                      bVar14 = (byte)local_42 & 0xf;
                      bVar19 = 3 < bVar1;
                      if (bVar1 != 4) {
                        bVar19 = bVar1 != 1;
                      }
                      *(byte *)(iVar4 + 0x135) = bVar14;
                      if (!bVar19 || (bVar1 == 4 || bVar1 == 2)) {
                        bVar19 = 3 < bVar14;
                        if (bVar14 != 4) {
                          bVar19 = bVar14 != 1;
                        }
                        if (!bVar19 || (bVar14 == 4 || bVar14 == 2)) goto LAB_00721440;
                      }
                      *(undefined1 *)(iVar4 + 0x136) = 1;
                    }
                    else if ((byte)local_42 != 0x11) {
                      *(undefined1 *)(iVar4 + 0x136) = 1;
                    }
LAB_00721440:
                    iVar8 = FUN_0071f6e8(iVar4,&local_42);
                    if (iVar8 == 0) goto LAB_00720450;
                    if (*(char *)(iVar4 + 0x131) == '\0') {
                      *(byte *)(iVar11 + 0x1a6) = (byte)local_42;
                    }
                    iVar11 = iVar11 + 1;
                  }
                  cVar2 = *(char *)(iVar18 + 0x131);
                  if (*(char *)(iVar4 + 0x131) == '\0') {
                    *(undefined1 *)(iVar4 + 0x193) = 1;
                  }
                  if (cVar2 == '\0') goto LAB_00720428;
                  goto LAB_007208fc;
                }
                if (*(char *)(iVar4 + 0x131) != '\0') goto LAB_00720450;
                TIFFErrorExt(*(undefined4 *)(param_1 + 0x264),"OJPEGReadHeaderInfoSecStreamSof",
                             "Corrupt SOF marker in JPEG data");
                uVar17 = 0;
              }
              else {
                if (*(char *)(iVar4 + 0x131) != '\0') goto LAB_00720450;
                TIFFErrorExt(*(undefined4 *)(param_1 + 0x264),"OJPEGReadHeaderInfoSecStreamSof",
                             "JPEG compressed data indicates unexpected number of bits per sample");
                uVar17 = 0;
              }
            }
            goto LAB_00720454;
          }
          if (*(char *)(iVar4 + 0x131) != '\0') goto LAB_00720450;
          TIFFErrorExt(*(undefined4 *)(param_1 + 0x264),"OJPEGReadHeaderInfoSecStreamSof",
                       "Corrupt SOF marker in JPEG data");
          uVar17 = 0;
        }
      }
      else {
        TIFFErrorExt(*(undefined4 *)(param_1 + 0x264),"OJPEGReadHeaderInfoSecStreamSof",
                     "Corrupt JPEG data");
        uVar17 = 0;
      }
      goto LAB_00720454;
    case 0xc4:
      iVar11 = *(int *)(param_1 + 0x238);
      iVar4 = FUN_0071f744(iVar11,&local_42);
      if (iVar4 == 0) goto LAB_00720450;
      uVar17 = (uint)local_42;
      if (uVar17 < 3) {
        if (*(char *)(iVar11 + 0x131) != '\0') goto LAB_00720450;
        TIFFErrorExt(*(undefined4 *)(param_1 + 0x264),"OJPEGReadHeaderInfoSecStreamDht",
                     "Corrupt DHT marker in JPEG data");
        uVar17 = 0;
        goto LAB_00720454;
      }
      if (*(char *)(iVar11 + 0x131) == '\0') {
        psVar7 = _TIFFmalloc(uVar17 + 6);
        if (psVar7 == (size_t *)0x0) {
          TIFFErrorExt(*(undefined4 *)(param_1 + 0x264),"OJPEGReadHeaderInfoSecStreamDht",
                       "Out of memory");
          uVar17 = 0;
          goto LAB_00720454;
        }
        *(undefined1 *)(psVar7 + 1) = 0xff;
        *(undefined1 *)((int)psVar7 + 5) = 0xc4;
        *psVar7 = uVar17 + 6;
        *(char *)((int)psVar7 + 6) = (char)(local_42 >> 8);
        *(char *)((int)psVar7 + 7) = (char)local_42;
        iVar4 = FUN_0072017c(iVar11,local_42 - 2,psVar7 + 2);
        if (iVar4 == 0) goto LAB_00720450;
        uVar10 = (uint)(byte)psVar7[2];
        uVar17 = uVar10 & 0xf0;
        if (((byte)psVar7[2] & 0xf0) == 0) {
          if (uVar10 < 4) {
            iVar4 = uVar10 + 0x5c;
            if (*(int *)(iVar11 + iVar4 * 4) != 0) {
LAB_00720e58:
              _TIFFfree();
            }
            *(size_t **)(iVar11 + iVar4 * 4) = psVar7;
            goto LAB_00720428;
          }
          TIFFErrorExt(*(undefined4 *)(param_1 + 0x264),"OJPEGReadHeaderInfoSecStreamDht",
                       "Corrupt DHT marker in JPEG data");
          goto LAB_00720454;
        }
        bVar19 = uVar17 != 0x10;
        uVar17 = 0;
        if (bVar19) {
          TIFFErrorExt(*(undefined4 *)(param_1 + 0x264),"OJPEGReadHeaderInfoSecStreamDht",
                       "Corrupt DHT marker in JPEG data");
          goto LAB_00720454;
        }
        if (3 < (uVar10 & 0xf)) {
          TIFFErrorExt(*(undefined4 *)(param_1 + 0x264),"OJPEGReadHeaderInfoSecStreamDht",
                       "Corrupt DHT marker in JPEG data");
          goto LAB_00720454;
        }
        iVar4 = (uVar10 & 0xf) + 0x60;
        if (*(int *)(iVar11 + iVar4 * 4) != 0) goto LAB_00720e58;
        *(size_t **)(iVar11 + iVar4 * 4) = psVar7;
      }
      else {
        FUN_0071f7ac(iVar11,uVar17 - 2 & 0xffff);
      }
      goto LAB_00720428;
    case 0xc5:
      break;
    case 0xc6:
      break;
    case 199:
      break;
    case 200:
      break;
    case 0xc9:
      break;
    case 0xca:
      break;
    case 0xcb:
      break;
    case 0xcc:
      break;
    case 0xcd:
      break;
    case 0xce:
      break;
    case 0xcf:
      break;
    case 0xd0:
      break;
    case 0xd1:
      break;
    case 0xd2:
      break;
    case 0xd3:
      break;
    case 0xd4:
      break;
    case 0xd5:
      break;
    case 0xd6:
      break;
    case 0xd7:
      break;
    case 0xd8:
      goto LAB_00720428;
    case 0xd9:
      break;
    case 0xda:
      if (*(char *)(iVar18 + 0x131) == '\0') {
        iVar4 = FUN_0071f820(param_1);
        if (iVar4 != 0) goto LAB_00720428;
        goto LAB_00720450;
      }
      goto LAB_007208fc;
    case 0xdb:
      iVar11 = *(int *)(param_1 + 0x238);
      iVar4 = FUN_0071f744(iVar11,&local_42);
      if (iVar4 == 0) goto LAB_00720450;
      if (2 < local_42) {
        if (*(char *)(iVar11 + 0x131) == '\0') {
          uVar15 = local_42 - 2;
          local_42 = local_42 - 2;
          do {
            if (uVar15 < 0x41) {
              TIFFErrorExt(*(undefined4 *)(param_1 + 0x264),"OJPEGReadHeaderInfoSecStreamDqt",
                           "Corrupt DQT marker in JPEG data");
              uVar17 = 0;
              goto LAB_00720454;
            }
            puVar6 = _TIFFmalloc(0x49);
            if (puVar6 == (undefined4 *)0x0) {
              TIFFErrorExt(*(undefined4 *)(param_1 + 0x264),"OJPEGReadHeaderInfoSecStreamDqt",
                           "Out of memory");
              uVar17 = 0;
              goto LAB_00720454;
            }
            *puVar6 = 0x49;
            *(undefined1 *)((int)puVar6 + 5) = 0xdb;
            *(undefined1 *)(puVar6 + 1) = 0xff;
            *(undefined1 *)((int)puVar6 + 6) = 0;
            *(undefined1 *)((int)puVar6 + 7) = 0x43;
            iVar4 = FUN_0072017c(iVar11,0x41,puVar6 + 2);
            if (iVar4 == 0) goto LAB_00720450;
            if (3 < (*(byte *)(puVar6 + 2) & 0xf)) {
              TIFFErrorExt(*(undefined4 *)(param_1 + 0x264),"OJPEGReadHeaderInfoSecStreamDqt",
                           "Corrupt DQT marker in JPEG data");
              uVar17 = 0;
              goto LAB_00720454;
            }
            iVar4 = (*(byte *)(puVar6 + 2) & 0xf) + 0x58;
            if (*(int *)(iVar11 + iVar4 * 4) != 0) {
              _TIFFfree();
            }
            *(undefined4 **)(iVar11 + iVar4 * 4) = puVar6;
            uVar16 = local_42 - 0x41;
            uVar15 = local_42 - 0x41;
            local_42 = uVar16;
          } while (uVar15 != 0);
        }
        else {
          FUN_0071f7ac(iVar11,local_42 - 2);
        }
        goto LAB_00720428;
      }
      if (*(char *)(iVar11 + 0x131) != '\0') goto LAB_00720450;
      TIFFErrorExt(*(undefined4 *)(param_1 + 0x264),"OJPEGReadHeaderInfoSecStreamDqt",
                   "Corrupt DQT marker in JPEG data");
      uVar17 = 0;
      goto LAB_00720454;
    case 0xdc:
      break;
    case 0xdd:
      iVar11 = *(int *)(param_1 + 0x238);
      iVar4 = FUN_0071f744(iVar11,&local_42);
      if (iVar4 == 0) goto LAB_00720450;
      if (local_42 == 4) {
        iVar4 = FUN_0071f744(iVar11,&local_42);
        if (iVar4 != 0) {
          *(ushort *)(iVar11 + 400) = local_42;
          goto LAB_00720428;
        }
        goto LAB_00720450;
      }
      TIFFErrorExt(*(undefined4 *)(param_1 + 0x264),"OJPEGReadHeaderInfoSecStreamDri",
                   "Corrupt DRI marker in JPEG data");
      uVar17 = 0;
      goto LAB_00720454;
    case 0xde:
      break;
    case 0xdf:
      break;
    case 0xe0:
      goto LAB_00720904;
    case 0xe1:
      goto LAB_00720904;
    case 0xe2:
      goto LAB_00720904;
    case 0xe3:
      goto LAB_00720904;
    case 0xe4:
      goto LAB_00720904;
    case 0xe5:
      goto LAB_00720904;
    case 0xe6:
      goto LAB_00720904;
    case 0xe7:
      goto LAB_00720904;
    case 0xe8:
      goto LAB_00720904;
    case 0xe9:
      goto LAB_00720904;
    case 0xea:
      goto LAB_00720904;
    case 0xeb:
      goto LAB_00720904;
    case 0xec:
      goto LAB_00720904;
    case 0xed:
      goto LAB_00720904;
    case 0xee:
      goto LAB_00720904;
    case 0xef:
      goto LAB_00720904;
    case 0xf0:
      break;
    case 0xf1:
      break;
    case 0xf2:
      break;
    case 0xf3:
      break;
    case 0xf4:
      break;
    case 0xf5:
      break;
    case 0xf6:
      break;
    case 0xf7:
      break;
    case 0xf8:
      break;
    case 0xf9:
      break;
    case 0xfa:
      break;
    case 0xfb:
      break;
    case 0xfc:
      break;
    case 0xfd:
      break;
    case 0xfe:
LAB_00720904:
      iVar4 = FUN_0071f744(iVar18,&local_40);
      if (iVar4 == 0) goto LAB_00720450;
      if (local_40 < 2) {
        if (*(char *)(iVar18 + 0x131) != '\0') goto LAB_00720450;
        TIFFErrorExt(*(undefined4 *)(param_1 + 0x264),"OJPEGReadHeaderInfoSec","Corrupt JPEG data");
        uVar17 = 0;
        goto LAB_00720454;
      }
      if (local_40 != 2) {
        FUN_0071f7ac(iVar18,local_40 - 2);
      }
LAB_00720428:
      if (local_3d != 0xda) goto code_r0x00720430;
LAB_0072049c:
      if ((*(char *)(iVar18 + 0x131) != '\0') || (*(char *)(iVar18 + 0x193) != '\0'))
      goto LAB_007208fc;
      iVar4 = *(int *)(param_1 + 0x238);
      if (*(int *)(iVar4 + 0x13c) == 0) {
        TIFFErrorExt(*(undefined4 *)(param_1 + 0x264),"OJPEGReadHeaderInfoSecTablesQTable",
                     "Missing JPEG tables");
        uVar17 = 0;
        goto LAB_00720454;
      }
      uVar17 = (uint)*(byte *)(iVar4 + 0x124);
      *(undefined1 *)(iVar4 + 0x4c4) = 0;
      if (uVar17 == 0) goto LAB_00720590;
      uVar10 = 0;
      goto LAB_007204d8;
    }
    TIFFErrorExt(*(undefined4 *)(param_1 + 0x264),"OJPEGReadHeaderInfoSec",
                 "Unknown marker type %d in JPEG data");
    uVar17 = 0;
    goto LAB_00720454;
  }
  goto LAB_00720450;
code_r0x00720430:
  if (*(short *)(iVar18 + 0x4cc) == 0) goto LAB_00720440;
  goto LAB_007202a4;
LAB_00720450:
  uVar17 = 0;
  goto LAB_00720454;
LAB_007204d8:
  do {
    iVar11 = *(int *)(iVar4 + (uVar10 + 0x4e) * 4 + 4);
    if (iVar11 == 0) {
LAB_00720be4:
      *(undefined1 *)(iVar4 + uVar10 + 0x1a6) = *(undefined1 *)(iVar4 + uVar10 + 0x1a5);
    }
    else {
      if (uVar10 != 0) {
        if (iVar11 == *(int *)(iVar4 + uVar10 * 4 + 0x138)) goto LAB_00720be4;
        if (0 < (int)(uVar10 - 1)) {
          if (iVar11 == *(int *)(iVar4 + 0x13c)) {
LAB_00720c30:
            TIFFErrorExt(*(undefined4 *)(param_1 + 0x264),"OJPEGReadHeaderInfoSecTablesQTable",
                         "Corrupt JpegQTables tag value");
            uVar17 = 0;
            goto LAB_00720454;
          }
          uVar17 = 0;
          while (uVar17 = uVar17 + 1 & 0xff, (int)uVar17 < (int)(uVar10 - 1)) {
            if (iVar11 == *(int *)(iVar4 + uVar17 * 4 + 0x13c)) goto LAB_00720c30;
          }
        }
      }
      puVar6 = _TIFFmalloc(0x49);
      if (puVar6 == (undefined4 *)0x0) {
        TIFFErrorExt(*(undefined4 *)(param_1 + 0x264),"OJPEGReadHeaderInfoSecTablesQTable",
                     "Out of memory");
        uVar17 = 0;
        goto LAB_00720454;
      }
      *(char *)(puVar6 + 2) = (char)uVar10;
      *(undefined1 *)(puVar6 + 1) = 0xff;
      *(undefined1 *)((int)puVar6 + 5) = 0xdb;
      *puVar6 = 0x49;
      *(undefined1 *)((int)puVar6 + 6) = 0;
      *(undefined1 *)((int)puVar6 + 7) = 0x43;
      (**(code **)(param_1 + 0x270))
                (*(undefined4 *)(param_1 + 0x264),*(undefined4 *)(iVar4 + (uVar10 + 0x4e) * 4 + 4),0
                );
      iVar11 = (**(code **)(param_1 + 0x268))(*(undefined4 *)(param_1 + 0x264),(int)puVar6 + 9,0x40)
      ;
      if (iVar11 != 0x40) goto LAB_00720450;
      uVar17 = (uint)*(byte *)(iVar4 + 0x124);
      *(undefined4 **)(iVar4 + (uVar10 + 0x58) * 4) = puVar6;
      *(char *)(iVar4 + uVar10 + 0x1a6) = (char)uVar10;
    }
    uVar10 = uVar10 + 1 & 0xff;
  } while (uVar10 < uVar17);
LAB_00720590:
  bVar1 = *(byte *)(iVar18 + 0x124);
  *(undefined1 *)(iVar18 + 0x194) = 0xc0;
  if (bVar1 != 0) {
    pbVar12 = (byte *)(iVar18 + 0x19f);
    bVar14 = 0;
    do {
      bVar3 = bVar14 + 1;
      pbVar12 = pbVar12 + 1;
      *pbVar12 = bVar14;
      bVar14 = bVar3;
    } while (bVar3 < bVar1);
  }
  *(byte *)(iVar18 + 0x1a3) = *(byte *)(iVar18 + 0x135) | *(char *)(iVar18 + 0x134) << 4;
  if (1 < bVar1) {
    bVar14 = 1;
    puVar13 = (undefined1 *)(iVar18 + 0x1a3);
    do {
      bVar14 = bVar14 + 1;
      puVar13 = puVar13 + 1;
      *puVar13 = 0x11;
    } while (bVar14 < bVar1);
  }
  *(undefined1 *)(iVar18 + 0x193) = 1;
  iVar4 = *(int *)(param_1 + 0x238);
  iVar11 = *(int *)(iVar4 + 0x148);
  *(undefined4 *)(iVar18 + 0x198) = *(undefined4 *)(iVar18 + 0x118);
  *(undefined4 *)(iVar18 + 0x19c) = *(undefined4 *)(iVar18 + 0x120);
  if (iVar11 == 0) {
    TIFFErrorExt(*(undefined4 *)(param_1 + 0x264),"OJPEGReadHeaderInfoSecTablesDcTable",
                 "Missing JPEG tables");
    uVar17 = 0;
  }
  else {
    uVar17 = (uint)*(byte *)(iVar4 + 0x124);
    uVar10 = 0;
    *(undefined1 *)(iVar4 + 0x4c4) = 0;
    if (uVar17 != 0) {
      do {
        iVar11 = *(int *)(iVar4 + (uVar10 + 0x52) * 4);
        if (iVar11 == 0) {
LAB_00720cdc:
          *(undefined1 *)(iVar4 + uVar10 + 0x1ac) = *(undefined1 *)(iVar4 + uVar10 + 0x1ab);
        }
        else {
          if (uVar10 != 0) {
            if (iVar11 == *(int *)(iVar4 + (uVar10 + 0x51) * 4)) goto LAB_00720cdc;
            if (0 < (int)(uVar10 - 1)) {
              if (iVar11 == *(int *)(iVar4 + 0x148)) {
LAB_00720d7c:
                TIFFErrorExt(*(undefined4 *)(param_1 + 0x264),"OJPEGReadHeaderInfoSecTablesDcTable",
                             "Corrupt JpegDcTables tag value");
                uVar17 = 0;
                goto LAB_00720454;
              }
              uVar17 = 0;
              while (uVar17 = uVar17 + 1 & 0xff, (int)uVar17 < (int)(uVar10 - 1)) {
                if (iVar11 == *(int *)(iVar4 + (uVar17 + 0x52) * 4)) goto LAB_00720d7c;
              }
            }
          }
          (**(code **)(param_1 + 0x270))(*(undefined4 *)(param_1 + 0x264),iVar11,0);
          iVar11 = (**(code **)(param_1 + 0x268))(*(undefined4 *)(param_1 + 0x264),local_3c,0x10);
          if (iVar11 != 0x10) goto LAB_00720450;
          iVar11 = 0;
          pbVar12 = &local_3d;
          do {
            pbVar12 = pbVar12 + 1;
            iVar11 = iVar11 + (uint)*pbVar12;
          } while (pbVar12 != &bStack_2d);
          psVar7 = _TIFFmalloc(iVar11 + 0x19U);
          if (psVar7 == (size_t *)0x0) {
            TIFFErrorExt(*(undefined4 *)(param_1 + 0x264),"OJPEGReadHeaderInfoSecTablesDcTable",
                         "Out of memory");
            uVar17 = 0;
            goto LAB_00720454;
          }
          psVar9 = psVar7 + 2;
          *psVar7 = iVar11 + 0x19U;
          *(char *)((int)psVar7 + 7) = (char)(iVar11 + 0x13);
          *(undefined1 *)(psVar7 + 1) = 0xff;
          *(char *)((int)psVar7 + 6) = (char)((uint)(iVar11 + 0x13) >> 8);
          *(undefined1 *)((int)psVar7 + 5) = 0xc4;
          *(char *)(psVar7 + 2) = (char)uVar10;
          pbVar12 = &local_3d;
          do {
            pbVar12 = pbVar12 + 1;
            psVar9 = (size_t *)((int)psVar9 + 1);
            *(byte *)psVar9 = *pbVar12;
          } while (&bStack_2d != pbVar12);
          iVar8 = (**(code **)(param_1 + 0x268))
                            (*(undefined4 *)(param_1 + 0x264),(int)psVar7 + 0x19,iVar11);
          if (iVar11 != iVar8) goto LAB_00720450;
          uVar17 = (uint)*(byte *)(iVar4 + 0x124);
          *(size_t **)(iVar4 + (uVar10 + 0x5c) * 4) = psVar7;
          *(char *)(iVar4 + uVar10 + 0x1ac) = (char)(uVar10 << 4);
        }
        uVar10 = uVar10 + 1 & 0xff;
      } while (uVar10 < uVar17);
    }
    iVar4 = *(int *)(param_1 + 0x238);
    if (*(int *)(iVar4 + 0x154) == 0) {
      TIFFErrorExt(*(undefined4 *)(param_1 + 0x264),"OJPEGReadHeaderInfoSecTablesAcTable",
                   "Missing JPEG tables");
      uVar17 = 0;
    }
    else {
      uVar17 = (uint)*(byte *)(iVar4 + 0x124);
      uVar10 = 0;
      *(undefined1 *)(iVar4 + 0x4c4) = 0;
      if (uVar17 != 0) {
        do {
          iVar8 = iVar4 + uVar10 * 4;
          iVar11 = *(int *)(iVar8 + 0x154);
          if (iVar11 == 0) {
LAB_00720cec:
            iVar11 = iVar4 + uVar10;
            *(byte *)(iVar11 + 0x1ac) = *(byte *)(iVar11 + 0x1ab) & 0xf | *(byte *)(iVar11 + 0x1ac);
          }
          else {
            if (uVar10 != 0) {
              if (iVar11 == *(int *)(iVar8 + 0x150)) goto LAB_00720cec;
              if (0 < (int)(uVar10 - 1)) {
                if (iVar11 == *(int *)(iVar4 + 0x154)) {
LAB_00720ebc:
                  TIFFErrorExt(*(undefined4 *)(param_1 + 0x264),
                               "OJPEGReadHeaderInfoSecTablesAcTable",
                               "Corrupt JpegAcTables tag value");
                  uVar17 = 0;
                  goto LAB_00720454;
                }
                uVar17 = 0;
                while (uVar17 = uVar17 + 1 & 0xff, (int)uVar17 < (int)(uVar10 - 1)) {
                  if (iVar11 == *(int *)(iVar4 + uVar17 * 4 + 0x154)) goto LAB_00720ebc;
                }
              }
            }
            (**(code **)(param_1 + 0x270))(*(undefined4 *)(param_1 + 0x264),iVar11,0);
            iVar11 = (**(code **)(param_1 + 0x268))(*(undefined4 *)(param_1 + 0x264),local_3c,0x10);
            if (iVar11 != 0x10) goto LAB_00720450;
            iVar11 = 0;
            pbVar12 = &local_3d;
            do {
              pbVar12 = pbVar12 + 1;
              iVar11 = iVar11 + (uint)*pbVar12;
            } while (pbVar12 != &bStack_2d);
            psVar7 = _TIFFmalloc(iVar11 + 0x19U);
            if (psVar7 == (size_t *)0x0) {
              TIFFErrorExt(*(undefined4 *)(param_1 + 0x264),"OJPEGReadHeaderInfoSecTablesAcTable",
                           "Out of memory");
              uVar17 = 0;
              goto LAB_00720454;
            }
            psVar9 = psVar7 + 2;
            *psVar7 = iVar11 + 0x19U;
            *(char *)((int)psVar7 + 7) = (char)(iVar11 + 0x13);
            *(byte *)(psVar7 + 2) = (byte)uVar10 | 0x10;
            *(char *)((int)psVar7 + 6) = (char)((uint)(iVar11 + 0x13) >> 8);
            *(undefined1 *)(psVar7 + 1) = 0xff;
            *(undefined1 *)((int)psVar7 + 5) = 0xc4;
            pbVar12 = &local_3d;
            do {
              pbVar12 = pbVar12 + 1;
              psVar9 = (size_t *)((int)psVar9 + 1);
              *(byte *)psVar9 = *pbVar12;
            } while (&bStack_2d != pbVar12);
            iVar8 = (**(code **)(param_1 + 0x268))
                              (*(undefined4 *)(param_1 + 0x264),(int)psVar7 + 0x19,iVar11);
            if (iVar11 != iVar8) goto LAB_00720450;
            uVar17 = (uint)*(byte *)(iVar4 + 0x124);
            *(size_t **)(iVar4 + (uVar10 + 0x60) * 4) = psVar7;
            *(byte *)(iVar4 + uVar10 + 0x1ac) = (byte)uVar10 | *(byte *)(iVar4 + uVar10 + 0x1ac);
          }
          uVar10 = uVar10 + 1 & 0xff;
        } while (uVar10 < uVar17);
      }
      bVar1 = *(byte *)(iVar18 + 0x124);
      if (1 < bVar1) {
        pbVar12 = (byte *)(iVar18 + 0x1a9);
        bVar14 = 1;
        do {
          bVar3 = bVar14 + 1;
          pbVar12 = pbVar12 + 1;
          *pbVar12 = bVar14;
          bVar14 = bVar3;
        } while (bVar3 < bVar1);
      }
LAB_007208fc:
      uVar17 = 1;
    }
  }
LAB_00720454:
  if (local_2c != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar17);
  }
  return;
}

// ---- FUN_00721604  @ 0x721604
void FUN_00721604(int param_1)

{
  char cVar1;
  char cVar2;
  char cVar3;
  char cVar4;
  int iVar5;
  
  iVar5 = *(int *)(param_1 + 0x238);
  if ((*(short *)(param_1 + 0x62) != 3) ||
     (*(short *)(param_1 + 0x5a) != 10 && *(short *)(param_1 + 0x5a) != 6)) {
    if (*(char *)(iVar5 + 0x133) != '\0') {
      TIFFWarningExt(*(undefined4 *)(param_1 + 0x264),"OJPEGSubsamplingCorrect",
                     "Subsampling tag not appropriate for this Photometric and/or SamplesPerPixel");
    }
    *(undefined1 *)(iVar5 + 0x135) = 1;
    *(undefined1 *)(iVar5 + 0x134) = 1;
    *(undefined1 *)(iVar5 + 0x136) = 0;
    goto LAB_0072165c;
  }
  *(undefined1 *)(iVar5 + 0x132) = 1;
  *(undefined1 *)(iVar5 + 0x131) = 1;
  cVar1 = *(char *)(iVar5 + 0x134);
  cVar2 = *(char *)(iVar5 + 0x135);
  FUN_00720210();
  cVar4 = *(char *)(iVar5 + 0x136);
  *(undefined1 *)(iVar5 + 0x131) = 0;
  if (cVar4 != '\0') {
    *(undefined1 *)(iVar5 + 0x134) = 1;
  }
  cVar3 = *(char *)(iVar5 + 0x134);
  if (cVar4 != '\0') {
    *(undefined1 *)(iVar5 + 0x135) = 1;
  }
  if ((cVar3 == cVar1) && (*(char *)(iVar5 + 0x135) == cVar2)) {
LAB_0072175c:
    if (cVar4 != '\0') goto LAB_007216c0;
  }
  else {
    if (cVar4 == '\0') {
      if (*(char *)(iVar5 + 0x133) == '\0') {
        TIFFWarningExt(*(undefined4 *)(param_1 + 0x264),"OJPEGSubsamplingCorrect",
                       "Subsampling tag is not set, yet subsampling inside JPEG data [%d,%d] does not match default values [2,2]; assuming subsampling inside JPEG data is correct"
                       ,cVar3,*(undefined1 *)(iVar5 + 0x135));
        cVar4 = *(char *)(iVar5 + 0x136);
      }
      else {
        TIFFWarningExt(*(undefined4 *)(param_1 + 0x264),"OJPEGSubsamplingCorrect",
                       "Subsampling inside JPEG data [%d,%d] does not match subsampling tag values [%d,%d]; assuming subsampling inside JPEG data is correct"
                       ,cVar3,*(undefined1 *)(iVar5 + 0x135),cVar1,cVar2);
        cVar4 = *(char *)(iVar5 + 0x136);
      }
      goto LAB_0072175c;
    }
LAB_007216c0:
    if (*(char *)(iVar5 + 0x133) == '\0') {
      TIFFWarningExt(*(undefined4 *)(param_1 + 0x264),"OJPEGSubsamplingCorrect",
                     "Subsampling tag is not set, yet subsampling inside JPEG data does not match default values [2,2] (nor any other values allowed in TIFF); assuming subsampling inside JPEG data is correct and desubsampling inside JPEG decompression"
                    );
    }
    else {
      TIFFWarningExt(*(undefined4 *)(param_1 + 0x264),"OJPEGSubsamplingCorrect",
                     "Subsampling inside JPEG data does not match subsampling tag values [%d,%d] (nor any other values allowed in TIFF); assuming subsampling inside JPEG data is correct and desubsampling inside JPEG decompression"
                     ,cVar1,cVar2);
    }
    if (*(char *)(iVar5 + 0x136) != '\0') goto LAB_0072165c;
  }
  if (*(byte *)(iVar5 + 0x134) < *(byte *)(iVar5 + 0x135)) {
    TIFFWarningExt(*(undefined4 *)(param_1 + 0x264),"OJPEGSubsamplingCorrect",
                   "Subsampling values [%d,%d] are not allowed in TIFF",*(byte *)(iVar5 + 0x134),
                   *(byte *)(iVar5 + 0x135));
  }
LAB_0072165c:
  *(undefined1 *)(iVar5 + 0x132) = 1;
  return;
}

// ---- FUN_00721964  @ 0x721964
void FUN_00721964(int param_1)

{
  int iVar1;
  int iVar2;
  
  iVar2 = *(int *)(param_1 + 0x238);
  if (iVar2 == 0) {
    return;
  }
  iVar1 = *(int *)(iVar2 + 0x160);
  *(undefined4 *)(param_1 + 0x290) = *(undefined4 *)(iVar2 + 0x104);
  *(undefined4 *)(param_1 + 0x28c) = *(undefined4 *)(iVar2 + 0x108);
  if (iVar1 != 0) {
    _TIFFfree();
  }
  if (*(int *)(iVar2 + 0x164) != 0) {
    _TIFFfree();
  }
  if (*(int *)(iVar2 + 0x168) != 0) {
    _TIFFfree();
  }
  if (*(int *)(iVar2 + 0x16c) != 0) {
    _TIFFfree();
  }
  if (*(int *)(iVar2 + 0x170) != 0) {
    _TIFFfree();
  }
  if (*(int *)(iVar2 + 0x174) != 0) {
    _TIFFfree();
  }
  if (*(int *)(iVar2 + 0x178) != 0) {
    _TIFFfree();
  }
  if (*(int *)(iVar2 + 0x17c) != 0) {
    _TIFFfree();
  }
  if (*(int *)(iVar2 + 0x180) != 0) {
    _TIFFfree();
  }
  if (*(int *)(iVar2 + 0x184) != 0) {
    _TIFFfree();
  }
  if (*(int *)(iVar2 + 0x188) != 0) {
    _TIFFfree();
  }
  if (*(int *)(iVar2 + 0x18c) != 0) {
    _TIFFfree();
  }
  if (*(char *)(iVar2 + 500) != '\0') {
    iVar1 = *(int *)(param_1 + 0x238);
    jpeg_destroy(iVar1 + 0x280);
    *(undefined1 *)(iVar1 + 500) = 0;
  }
  if (*(int *)(iVar2 + 0x48c) != 0) {
    _TIFFfree();
  }
  if (*(int *)(iVar2 + 0x4a0) != 0) {
    _TIFFfree();
  }
  if (*(int *)(iVar2 + 0x14d8) != 0) {
    _TIFFfree();
  }
  _TIFFfree(iVar2);
  *(undefined4 *)(param_1 + 0x238) = 0;
  _TIFFSetDefaultCompressionState(param_1);
  return;
}

// ---- FUN_00721abc  @ 0x721abc
void FUN_00721abc(int param_1)

{
  int iVar1;
  int extraout_r1;
  int iVar2;
  
  iVar2 = *(int *)(param_1 + 0x238);
  iVar1 = *(int *)(iVar2 + 0x1f0) + 1;
  *(int *)(iVar2 + 0x1f0) = iVar1;
  __aeabi_uidivmod(iVar1,*(undefined4 *)(param_1 + 0xb0));
  if (extraout_r1 != 0) {
    return;
  }
  jpeg_destroy(iVar2 + 0x280);
  *(undefined1 *)(iVar2 + 0x1ed) = 0;
  *(undefined1 *)(iVar2 + 500) = 0;
  return;
}

// ---- FUN_00721af8  @ 0x721af8
bool FUN_00721af8(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  
  iVar1 = setjmp((__jmp_buf_tag *)(param_1 + 4));
  if (iVar1 == 0) {
    jpeg_read_raw_data(param_2,param_3,param_4);
  }
  return iVar1 == 0;
}

// ---- FUN_00721b2c  @ 0x721b2c
bool FUN_00721b2c(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  
  iVar1 = setjmp((__jmp_buf_tag *)(param_1 + 4));
  if (iVar1 == 0) {
    jpeg_read_scanlines(param_2,param_3,param_4);
  }
  return iVar1 == 0;
}

// ---- FUN_00721b60  @ 0x721b60
undefined1 FUN_00721b60(int param_1,undefined1 *param_2,int param_3)

{
  uint uVar1;
  int extraout_r1;
  uint uVar2;
  int extraout_r1_00;
  undefined1 *puVar3;
  int iVar5;
  int iVar6;
  int iVar7;
  uint uVar8;
  uint uVar9;
  undefined1 *puVar10;
  int iVar11;
  int iVar12;
  undefined1 *puVar13;
  undefined1 *puVar14;
  int local_38;
  undefined1 *local_2c [2];
  undefined1 *puVar4;
  
  iVar7 = *(int *)(param_1 + 0x238);
  if (*(char *)(iVar7 + 0x1f5) == '\0') {
    __aeabi_uidivmod(param_3,*(undefined4 *)(iVar7 + 0x4ac));
    if (extraout_r1 != 0) {
      TIFFErrorExt(*(undefined4 *)(param_1 + 0x264),"OJPEGDecodeRaw","Fractional scanline not read")
      ;
      return 0;
    }
    local_38 = param_3;
    while( true ) {
      iVar5 = *(int *)(iVar7 + 0x4a8);
      if (iVar5 == 0) {
        iVar5 = FUN_00721af8(iVar7,iVar7 + 0x280,*(undefined4 *)(iVar7 + 0x4a0),
                             (uint)*(byte *)(iVar7 + 0x135) << 3);
        if (iVar5 == 0) {
          return 0;
        }
        iVar5 = *(int *)(iVar7 + 0x4a8);
      }
      uVar1 = (uint)*(byte *)(iVar7 + 0x135);
      iVar12 = *(int *)(iVar7 + 0x494);
      iVar11 = *(int *)(iVar7 + 0x498);
      if (*(int *)(iVar7 + 0x4a4) != 0) {
        iVar6 = iVar5 * *(int *)(iVar7 + 0x478);
        uVar9 = 0;
        puVar10 = (undefined1 *)(uVar1 * iVar5 * *(int *)(iVar7 + 0x470) + *(int *)(iVar7 + 0x490));
        puVar14 = param_2;
        while( true ) {
          if (uVar1 == 0) {
            uVar8 = (uint)*(byte *)(iVar7 + 0x134);
          }
          else {
            uVar8 = (uint)*(byte *)(iVar7 + 0x134);
            uVar2 = 0;
            puVar3 = puVar10;
            while( true ) {
              if (uVar8 != 0) {
                uVar1 = 0;
                puVar4 = puVar3;
                puVar13 = puVar14;
                do {
                  puVar3 = puVar4 + 1;
                  uVar1 = uVar1 + 1 & 0xff;
                  puVar14 = puVar13 + 1;
                  *puVar13 = *puVar4;
                  uVar8 = (uint)*(byte *)(iVar7 + 0x134);
                  puVar4 = puVar3;
                  puVar13 = puVar14;
                } while (uVar1 < uVar8);
                uVar1 = (uint)*(byte *)(iVar7 + 0x135);
              }
              uVar2 = uVar2 + 1 & 0xff;
              if (uVar1 <= uVar2) break;
              puVar3 = puVar3 + (*(int *)(iVar7 + 0x470) - uVar8);
            }
          }
          *puVar14 = *(undefined1 *)(iVar12 + iVar6 + uVar9);
          puVar3 = (undefined1 *)(iVar11 + iVar6 + uVar9);
          uVar9 = uVar9 + 1;
          puVar14[1] = *puVar3;
          if (*(uint *)(iVar7 + 0x4a4) <= uVar9) break;
          puVar10 = puVar10 + uVar8;
          uVar1 = (uint)*(byte *)(iVar7 + 0x135);
          puVar14 = puVar14 + 2;
        }
        iVar5 = *(int *)(iVar7 + 0x4a8);
      }
      *(int *)(iVar7 + 0x4a8) = iVar5 + 1;
      if (iVar5 + 1 == *(int *)(iVar7 + 0x47c)) {
        *(undefined4 *)(iVar7 + 0x4a8) = 0;
      }
      local_38 = local_38 - *(int *)(iVar7 + 0x4ac);
      if (local_38 == 0) break;
      param_2 = param_2 + *(int *)(iVar7 + 0x4ac);
    }
    return 1;
  }
  __aeabi_uidivmod(param_3,*(undefined4 *)(iVar7 + 0x4ac));
  if (extraout_r1_00 == 0) {
    local_2c[0] = param_2;
    do {
      iVar5 = FUN_00721b2c(iVar7,iVar7 + 0x280,local_2c,1);
      if (iVar5 == 0) {
        return 0;
      }
      param_3 = param_3 - *(int *)(iVar7 + 0x4ac);
      local_2c[0] = local_2c[0] + *(int *)(iVar7 + 0x4ac);
    } while (param_3 != 0);
    return 1;
  }
  TIFFErrorExt(*(undefined4 *)(param_1 + 0x264),"OJPEGDecodeScanlines",
               "Fractional scanline not read");
  return 0;
}

// ---- FUN_00721db0  @ 0x721db0
bool FUN_00721db0(int param_1,undefined4 param_2)

{
  int iVar1;
  
  iVar1 = setjmp((__jmp_buf_tag *)(param_1 + 4));
  if (iVar1 == 0) {
    jpeg_CreateDecompress(param_2,0x3e,0x1d0);
  }
  return iVar1 == 0;
}

// ---- FUN_00721dec  @ 0x721dec
bool FUN_00721dec(int param_1,undefined4 param_2,undefined4 param_3)

{
  int iVar1;
  
  iVar1 = setjmp((__jmp_buf_tag *)(param_1 + 4));
  if (iVar1 == 0) {
    jpeg_read_header(param_2,param_3);
  }
  return iVar1 == 0;
}

// ---- FUN_00721e20  @ 0x721e20
bool FUN_00721e20(int param_1,undefined4 param_2)

{
  int iVar1;
  
  iVar1 = setjmp((__jmp_buf_tag *)(param_1 + 4));
  if (iVar1 == 0) {
    jpeg_start_decompress(param_2);
  }
  return iVar1 == 0;
}

// ---- FUN_00721e54  @ 0x721e54
undefined4 FUN_00721e54(int param_1,uint param_2)

{
  char cVar1;
  byte bVar2;
  ushort uVar3;
  short sVar4;
  short sVar5;
  int iVar6;
  uint uVar7;
  void *pvVar8;
  int iVar9;
  size_t __size;
  int *piVar10;
  int *piVar11;
  int extraout_r1;
  undefined1 uVar12;
  undefined4 uVar13;
  uint uVar14;
  int iVar15;
  uint uVar16;
  int iVar17;
  uint uVar18;
  int iVar19;
  int iVar20;
  undefined4 uVar21;
  char local_29 [5];
  
  iVar20 = *(int *)(param_1 + 0x238);
  if (*(char *)(iVar20 + 0x132) == '\0') {
    FUN_00721604();
  }
  if (*(char *)(iVar20 + 0x1ec) == '\0') {
    iVar15 = *(int *)(param_1 + 0x238);
    uVar13 = *(undefined4 *)(param_1 + 0x38);
    *(undefined4 *)(iVar15 + 0x110) = uVar13;
    iVar6 = *(int *)(param_1 + 0x3c);
    *(int *)(iVar15 + 0x114) = iVar6;
    if ((*(uint *)(param_1 + 0xc) & 0x400) == 0) {
      *(undefined4 *)(iVar15 + 0x118) = uVar13;
      uVar13 = *(undefined4 *)(param_1 + 100);
      *(int *)(iVar15 + 0x120) = iVar6;
      *(undefined4 *)(iVar15 + 0x11c) = uVar13;
      cVar1 = *(char *)(param_1 + 0x62);
      *(char *)(iVar15 + 0x124) = cVar1;
      if (cVar1 != '\x01') goto LAB_00721ec0;
LAB_00722294:
      *(undefined1 *)(iVar15 + 0x135) = 1;
      *(undefined1 *)(iVar15 + 0x125) = 0;
      *(undefined1 *)(iVar15 + 0x126) = 1;
      *(undefined1 *)(iVar15 + 0x134) = 1;
    }
    else {
      *(undefined4 *)(iVar15 + 0x118) = *(undefined4 *)(param_1 + 0x44);
      iVar17 = *(int *)(param_1 + 0x48);
      *(int *)(iVar15 + 0x11c) = iVar17;
      iVar6 = __udivsi3(iVar6 + iVar17 + -1,iVar17);
      cVar1 = *(char *)(param_1 + 0x62);
      *(char *)(iVar15 + 0x124) = cVar1;
      *(int *)(iVar15 + 0x120) = iVar17 * iVar6;
      if (cVar1 == '\x01') goto LAB_00722294;
LAB_00721ec0:
      if (cVar1 != '\x03') {
        TIFFErrorExt(*(undefined4 *)(param_1 + 0x264),"OJPEGReadHeaderInfo",
                     "SamplesPerPixel %d not supported for this compression scheme");
        return 0;
      }
      *(undefined1 *)(iVar15 + 0x125) = 0;
      uVar12 = 3;
      if (*(short *)(param_1 + 0x8a) != 1) {
        uVar12 = 1;
      }
      *(undefined1 *)(iVar15 + 0x126) = uVar12;
    }
    uVar16 = *(uint *)(iVar15 + 0x11c);
    if (uVar16 < *(uint *)(iVar15 + 0x114)) {
      iVar6 = (uint)*(byte *)(iVar15 + 0x135) << 3;
      __aeabi_uidivmod(uVar16,iVar6);
      if (extraout_r1 != 0) {
        TIFFErrorExt(*(undefined4 *)(param_1 + 0x264),"OJPEGReadHeaderInfo",
                     "Incompatible vertical subsampling and image strip/tile length");
        return 0;
      }
      sVar4 = __udivsi3(*(int *)(iVar15 + 0x118) + -1 + (uint)*(byte *)(iVar15 + 0x134) * 8);
      sVar5 = __udivsi3(uVar16,iVar6);
      *(short *)(iVar15 + 400) = sVar5 * sVar4;
    }
    iVar6 = FUN_00720210(param_1);
    if (iVar6 == 0) {
      return 0;
    }
    *(undefined1 *)(iVar15 + 0x1ec) = 1;
    *(undefined4 *)(iVar15 + 0x1b4) = *(undefined4 *)(iVar15 + 0x4b4);
    *(undefined4 *)(iVar15 + 0x1b8) = *(undefined4 *)(iVar15 + 0x4b8);
    *(uint *)(iVar15 + 0x1bc) = *(int *)(iVar15 + 0x4c0) - (uint)*(ushort *)(iVar15 + 0x4cc);
    *(uint *)(iVar15 + 0x1c0) = (uint)*(ushort *)(iVar15 + 0x4cc) + *(int *)(iVar15 + 0x4c8);
    *(undefined1 *)(iVar15 + 0x1b0) = 1;
  }
  if (*(char *)(iVar20 + param_2 * 0x14 + 0x1b0) == '\0') {
    iVar6 = *(int *)(param_1 + 0x238);
    uVar14 = (param_2 & 0xff) - 1;
    uVar16 = uVar14 & 0xff;
    *(char *)(iVar6 + 0x125) = (char)uVar14;
    if (*(char *)(iVar6 + uVar16 * 0x14 + 0x1b0) == '\0') {
      uVar14 = (param_2 & 0xff) - 2;
      do {
        uVar16 = uVar14 & 0xff;
        uVar14 = uVar16 - 1;
      } while (*(char *)(iVar6 + uVar16 * 0x14 + 0x1b0) == '\0');
      *(char *)(iVar6 + 0x125) = (char)uVar14 + '\x01';
    }
    *(undefined4 *)(iVar6 + 0x4d0) = 0;
    uVar21 = *(undefined4 *)(iVar6 + uVar16 * 0x14 + 0x1b4);
    iVar15 = iVar6 + (uint)*(byte *)(iVar6 + 0x125) * 0x14;
    *(undefined2 *)(iVar6 + 0x4cc) = 0;
    uVar13 = *(undefined4 *)(iVar15 + 0x1b8);
    *(undefined4 *)(iVar6 + 0x4b4) = uVar21;
    *(undefined4 *)(iVar6 + 0x4b8) = uVar13;
    uVar13 = *(undefined4 *)(iVar15 + 0x1bc);
    *(undefined1 *)(iVar6 + 0x4c4) = 0;
    *(undefined4 *)(iVar6 + 0x4c0) = uVar13;
    *(undefined4 *)(iVar6 + 0x4c8) = *(undefined4 *)(iVar15 + 0x1c0);
    if (*(byte *)(iVar6 + 0x125) < param_2) {
      do {
        do {
          do {
            iVar15 = FUN_0071f6e8(iVar6,local_29);
            if (iVar15 == 0) {
              return 0;
            }
          } while (local_29[0] != -1);
          do {
            iVar15 = FUN_0071f6e8(iVar6,local_29);
            if (iVar15 == 0) {
              return 0;
            }
          } while (local_29[0] == -1);
        } while (local_29[0] != -0x26);
        *(char *)(iVar6 + 0x125) = *(char *)(iVar6 + 0x125) + '\x01';
        iVar15 = FUN_0071f820(param_1);
        if (iVar15 == 0) {
          return 0;
        }
        *(undefined1 *)(iVar6 + (uint)*(byte *)(iVar6 + 0x125) * 0x14 + 0x1b0) = 1;
        uVar13 = *(undefined4 *)(iVar6 + 0x4b8);
        uVar3 = *(ushort *)(iVar6 + 0x4cc);
        *(undefined4 *)(iVar6 + (uint)*(byte *)(iVar6 + 0x125) * 0x14 + 0x1b4) =
             *(undefined4 *)(iVar6 + 0x4b4);
        *(undefined4 *)(iVar6 + (uint)*(byte *)(iVar6 + 0x125) * 0x14 + 0x1b8) = uVar13;
        *(uint *)(iVar6 + (uint)*(byte *)(iVar6 + 0x125) * 0x14 + 0x1bc) =
             *(int *)(iVar6 + 0x4c0) - (uint)uVar3;
        *(uint *)(iVar6 + (uint)*(byte *)(iVar6 + 0x125) * 0x14 + 0x1c0) =
             (uint)uVar3 + *(int *)(iVar6 + 0x4c8);
      } while (*(byte *)(iVar6 + 0x125) < param_2);
    }
  }
  if ((*(uint *)(param_1 + 0xc) & 0x400) == 0) {
    uVar16 = *(uint *)(param_1 + 0x1d0);
  }
  else {
    uVar16 = *(uint *)(param_1 + 0x1e8);
  }
  if (*(char *)(iVar20 + 0x1ed) != '\0') {
    if ((*(ushort *)(iVar20 + 0x1ee) == param_2) &&
       (uVar14 = *(uint *)(iVar20 + 0x1f0), uVar14 <= uVar16)) goto joined_r0x007223a0;
    if (*(char *)(iVar20 + 500) != '\0') {
      iVar6 = *(int *)(param_1 + 0x238);
      jpeg_destroy(iVar6 + 0x280);
      *(undefined1 *)(iVar6 + 500) = 0;
    }
    *(undefined1 *)(iVar20 + 0x1ed) = 0;
  }
  *(char *)(iVar20 + 0x125) = (char)param_2;
  iVar6 = *(int *)(param_1 + 0xb0);
  *(short *)(iVar20 + 0x1ee) = (short)param_2;
  *(uint *)(iVar20 + 0x1f0) = iVar6 * param_2;
  if ((*(char *)(iVar20 + 0x4c4) == '\0') ||
     (*(int *)(iVar20 + 0x4c0) - (uint)*(ushort *)(iVar20 + 0x4cc) !=
      *(int *)(iVar20 + param_2 * 0x14 + 0x1bc))) {
    *(undefined4 *)(iVar20 + 0x4d0) = 0;
    iVar6 = iVar20 + param_2 * 0x14;
    *(undefined2 *)(iVar20 + 0x4cc) = 0;
    uVar13 = *(undefined4 *)(iVar6 + 0x1b4);
    *(undefined4 *)(iVar20 + 0x4b8) = *(undefined4 *)(iVar6 + 0x1b8);
    uVar21 = *(undefined4 *)(iVar6 + 0x1bc);
    *(undefined1 *)(iVar20 + 0x4c4) = 0;
    *(undefined4 *)(iVar20 + 0x4b4) = uVar13;
    *(undefined4 *)(iVar20 + 0x4c0) = uVar21;
    *(undefined4 *)(iVar20 + 0x4c8) = *(undefined4 *)(iVar6 + 0x1c0);
  }
  iVar15 = *(int *)(param_1 + 0x238);
  iVar17 = iVar15 + 0x280;
  *(undefined4 *)(iVar15 + 0xcd4) = 0;
  *(undefined1 *)(iVar15 + 0x192) = 0;
  jpeg_std_error(iVar15 + 0x1f8);
  *(int *)(iVar15 + 0x280) = iVar15 + 0x1f8;
  *(undefined **)(iVar15 + 0x200) = &DAT_007200d4;
  *(undefined **)(iVar15 + 0x1f8) = &DAT_00722d2c;
  *(int *)(iVar15 + 0x28c) = param_1;
  iVar6 = FUN_00721db0(iVar15,iVar17);
  if (iVar6 == 0) {
    return 0;
  }
  *(code **)(iVar15 + 0x45c) = FUN_00722894;
  *(code **)(iVar15 + 0x460) = FUN_00722860;
  *(code **)(iVar15 + 0x464) = FUN_00722828;
  *(undefined4 *)(iVar15 + 0x454) = 0;
  *(undefined **)(iVar15 + 0x458) = &DAT_0071f818;
  *(undefined **)(iVar15 + 0x468) = &DAT_0071f81c;
  *(int *)(iVar15 + 0x298) = iVar15 + 0x450;
  *(undefined1 *)(iVar15 + 500) = 1;
  iVar6 = FUN_00721dec(iVar15,iVar17,1);
  if (iVar6 == 0) {
    return 0;
  }
  if (*(char *)(iVar15 + 0x136) == '\0') {
    uVar14 = (uint)*(byte *)(iVar15 + 0x126);
    if (uVar14 < 2) goto LAB_00722354;
    *(undefined4 *)(iVar15 + 0x2c4) = 1;
    *(undefined1 *)(iVar15 + 0x1f5) = 0;
    if (*(char *)(iVar15 + 0x46c) == '\0') {
      bVar2 = *(byte *)(iVar15 + 0x134);
      iVar6 = (uint)bVar2 * 8;
      iVar9 = __udivsi3(*(int *)(iVar15 + 0x118) + -1 + iVar6,iVar6);
      iVar19 = (uint)*(byte *)(iVar15 + 0x135) * 8;
      *(int *)(iVar15 + 0x474) = iVar19;
      iVar9 = iVar9 * iVar6;
      *(int *)(iVar15 + 0x470) = iVar9;
      iVar6 = __udivsi3(iVar9,(uint)bVar2);
      iVar19 = iVar19 * iVar9;
      *(int *)(iVar15 + 0x480) = iVar19;
      *(int *)(iVar15 + 0x478) = iVar6;
      *(int *)(iVar15 + 0x484) = iVar6 << 3;
      __size = iVar19 + iVar6 * 0x10;
      *(size_t *)(iVar15 + 0x488) = __size;
      *(undefined4 *)(iVar15 + 0x47c) = 8;
      pvVar8 = _TIFFmalloc(__size);
      *(void **)(iVar15 + 0x48c) = pvVar8;
      if (pvVar8 == (void *)0x0) {
        TIFFErrorExt(*(undefined4 *)(param_1 + 0x264),"OJPEGWriteHeaderInfo","Out of memory");
        return 0;
      }
      iVar19 = *(int *)(iVar15 + 0x474) + 3 + *(int *)(iVar15 + 0x47c) * 2;
      iVar6 = (int)pvVar8 + *(int *)(iVar15 + 0x480);
      *(void **)(iVar15 + 0x490) = pvVar8;
      *(int *)(iVar15 + 0x498) = iVar6 + *(int *)(iVar15 + 0x484);
      *(int *)(iVar15 + 0x494) = iVar6;
      *(int *)(iVar15 + 0x49c) = iVar19;
      piVar10 = _TIFFmalloc(iVar19 * 4);
      *(int **)(iVar15 + 0x4a0) = piVar10;
      if (piVar10 == (int *)0x0) {
        TIFFErrorExt(*(undefined4 *)(param_1 + 0x264),"OJPEGWriteHeaderInfo","Out of memory");
        return 0;
      }
      uVar18 = *(uint *)(iVar15 + 0x474);
      uVar14 = *(uint *)(iVar15 + 0x47c);
      *piVar10 = (int)(piVar10 + 3);
      piVar10[1] = (int)(piVar10 + uVar18 + 3);
      piVar11 = piVar10 + 3;
      piVar10[2] = (int)(piVar10 + uVar18 + uVar14 + 3);
      if (uVar18 != 0) {
        iVar19 = *(int *)(iVar15 + 0x470);
        uVar7 = 0;
        iVar6 = 0;
        piVar10 = piVar10 + 3;
        do {
          uVar7 = uVar7 + 1;
          iVar9 = *(int *)(iVar15 + 0x490) + iVar6;
          iVar6 = iVar6 + iVar19;
          piVar11 = piVar10 + 1;
          *piVar10 = iVar9;
          piVar10 = piVar11;
        } while (uVar7 < uVar18);
      }
      if (uVar14 != 0) {
        iVar6 = 0;
        iVar19 = *(int *)(iVar15 + 0x478);
        uVar18 = 0;
        do {
          uVar18 = uVar18 + 1;
          iVar9 = *(int *)(iVar15 + 0x494) + iVar6;
          iVar6 = iVar6 + iVar19;
          piVar10 = piVar11 + 1;
          *piVar11 = iVar9;
          piVar11 = piVar10;
        } while (uVar18 < uVar14);
        iVar6 = 0;
        uVar18 = 0;
        do {
          uVar18 = uVar18 + 1;
          iVar9 = *(int *)(iVar15 + 0x498) + iVar6;
          iVar6 = iVar6 + iVar19;
          *piVar10 = iVar9;
          piVar10 = piVar10 + 1;
        } while (uVar18 < uVar14);
      }
      uVar18 = (uint)*(byte *)(iVar15 + 0x134);
      iVar6 = __udivsi3(*(int *)(iVar15 + 0x118) + -1 + uVar18,uVar18);
      *(undefined4 *)(iVar15 + 0x4a8) = 0;
      uVar14 = (uint)*(byte *)(iVar15 + 0x135);
      *(int *)(iVar15 + 0x4a4) = iVar6;
      *(uint *)(iVar15 + 0x4ac) = iVar6 * (uVar14 * uVar18 + 2);
      uVar13 = __udivsi3(*(int *)(iVar15 + 0x11c) + -1 + uVar14,uVar14);
      *(undefined1 *)(iVar15 + 0x46c) = 1;
      *(undefined4 *)(iVar15 + 0x4b0) = uVar13;
    }
  }
  else {
    uVar14 = (uint)*(byte *)(iVar15 + 0x126);
LAB_00722354:
    *(undefined4 *)(iVar15 + 0x2ac) = 0;
    *(undefined4 *)(iVar15 + 0x4b0) = *(undefined4 *)(iVar15 + 0x11c);
    *(undefined4 *)(iVar15 + 0x2a8) = 0;
    *(undefined1 *)(iVar15 + 0x1f5) = 1;
    *(uint *)(iVar15 + 0x4ac) = *(int *)(iVar15 + 0x118) * uVar14;
  }
  iVar6 = FUN_00721e20(iVar15,iVar17);
  if (iVar6 == 0) {
    return 0;
  }
  uVar14 = *(uint *)(iVar20 + 0x1f0);
  *(undefined1 *)(iVar15 + 0x1ed) = 1;
joined_r0x007223a0:
  do {
    while( true ) {
      if (uVar16 <= uVar14) {
        return 1;
      }
      if (*(char *)(iVar20 + 0x1f5) == '\0') break;
      iVar6 = *(int *)(param_1 + 0x238);
      if (*(int *)(iVar6 + 0x14d8) == 0) {
        pvVar8 = _TIFFmalloc(*(size_t *)(iVar6 + 0x4ac));
        *(void **)(iVar6 + 0x14d8) = pvVar8;
        if (pvVar8 == (void *)0x0) {
          TIFFErrorExt(*(undefined4 *)(param_1 + 0x264),"OJPEGPreDecodeSkipScanlines",
                       "Out of memory");
          return 0;
        }
      }
      if (*(int *)(iVar6 + 0x4b0) != 0) {
        uVar14 = 0;
        do {
          iVar15 = FUN_00721b2c(iVar6,iVar6 + 0x280,iVar6 + 0x14d8,1);
          uVar14 = uVar14 + 1;
          if (iVar15 == 0) {
            return 0;
          }
        } while (uVar14 < *(uint *)(iVar6 + 0x4b0));
      }
LAB_00722460:
      uVar14 = *(int *)(iVar20 + 0x1f0) + 1;
      *(uint *)(iVar20 + 0x1f0) = uVar14;
    }
    iVar15 = *(int *)(param_1 + 0x238);
    iVar6 = *(int *)(iVar15 + 0x4a8);
    uVar18 = *(uint *)(iVar15 + 0x4b0);
    if (iVar6 == 0) {
      uVar7 = *(uint *)(iVar15 + 0x47c);
LAB_00722488:
      if (uVar7 <= uVar18) {
        do {
          iVar6 = FUN_00721af8(iVar15,iVar15 + 0x280,*(undefined4 *)(iVar15 + 0x4a0),
                               (uint)*(byte *)(iVar15 + 0x135) << 3);
          if (iVar6 == 0) {
            return 0;
          }
          uVar18 = uVar18 - *(uint *)(iVar15 + 0x47c);
        } while (*(uint *)(iVar15 + 0x47c) <= uVar18);
      }
      if (uVar18 == 0) goto LAB_00722460;
      iVar6 = FUN_00721af8(iVar15,iVar15 + 0x280,*(undefined4 *)(iVar15 + 0x4a0),
                           (uint)*(byte *)(iVar15 + 0x135) << 3);
      if (iVar6 == 0) {
        return 0;
      }
      *(uint *)(iVar15 + 0x4a8) = uVar18;
      uVar14 = *(uint *)(iVar20 + 0x1f0);
    }
    else {
      uVar7 = *(uint *)(iVar15 + 0x47c);
      if (uVar7 - iVar6 < uVar18) {
        *(undefined4 *)(iVar15 + 0x4a8) = 0;
        uVar18 = (iVar6 + uVar18) - uVar7;
        goto LAB_00722488;
      }
      uVar18 = iVar6 + uVar18;
      if (uVar18 == uVar7) {
        uVar18 = 0;
      }
      *(uint *)(iVar15 + 0x4a8) = uVar18;
    }
    uVar14 = uVar14 + 1;
    *(uint *)(iVar20 + 0x1f0) = uVar14;
  } while( true );
}

// ---- FUN_00722814  @ 0x722814
void FUN_00722814(int param_1)

{
                    /* WARNING: Subroutine does not return */
  longjmp((__jmp_buf_tag *)(*(int *)(param_1 + 0x238) + 4),1);
}

// ---- FUN_00722828  @ 0x722828
undefined4 FUN_00722828(int param_1)

{
  int iVar1;
  
  iVar1 = *(int *)(param_1 + 0xc);
  TIFFErrorExt(*(undefined4 *)(iVar1 + 0x264),"LibJpeg","Unexpected error");
  FUN_00722814(iVar1);
  return 0;
}

// ---- FUN_00722860  @ 0x722860
void FUN_00722860(int param_1)

{
  int iVar1;
  
  iVar1 = *(int *)(param_1 + 0xc);
  TIFFErrorExt(*(undefined4 *)(iVar1 + 0x264),"LibJpeg","Unexpected error");
  FUN_00722814(iVar1);
  return;
}

// ---- FUN_00722894  @ 0x722894
undefined4 FUN_00722894(int param_1)

{
  byte bVar1;
  undefined1 uVar2;
  undefined1 uVar3;
  short sVar4;
  int *piVar5;
  int iVar6;
  char cVar7;
  undefined4 uVar8;
  uint uVar9;
  undefined1 *puVar10;
  int *piVar11;
  int iVar12;
  uint uVar13;
  int iVar14;
  int iVar15;
  
  iVar12 = *(int *)(param_1 + 0xc);
  piVar11 = (int *)0x0;
  iVar14 = *(int *)(iVar12 + 0x238);
  uVar8 = *(undefined4 *)(iVar14 + 0xcd4);
  iVar15 = iVar14;
switchD_007228d0_default:
  switch(uVar8) {
  case 0:
    goto LAB_00722c5c;
  case 1:
    piVar5 = *(int **)(iVar15 + 0x160);
    if (piVar5 == (int *)0x0) {
      uVar9 = 0;
    }
    else {
LAB_00722a94:
      piVar11 = piVar5 + 1;
      uVar9 = *piVar5 - 4;
    }
    break;
  case 2:
    piVar5 = *(int **)(iVar15 + 0x164);
    if (piVar5 != (int *)0x0) goto LAB_00722a94;
    uVar9 = 0;
    break;
  case 3:
    piVar5 = *(int **)(iVar15 + 0x168);
    if (piVar5 != (int *)0x0) goto LAB_00722a94;
    uVar9 = 0;
    break;
  case 4:
    piVar5 = *(int **)(iVar15 + 0x16c);
    if (piVar5 != (int *)0x0) goto LAB_00722a94;
    uVar9 = 0;
    break;
  case 5:
    piVar5 = *(int **)(iVar15 + 0x170);
    if (piVar5 != (int *)0x0) goto LAB_00722a94;
    uVar9 = 0;
    break;
  case 6:
    piVar5 = *(int **)(iVar15 + 0x174);
    if (piVar5 != (int *)0x0) goto LAB_00722a94;
    uVar9 = 0;
    break;
  case 7:
    piVar5 = *(int **)(iVar15 + 0x178);
    uVar9 = 0;
    if (piVar5 != (int *)0x0) goto LAB_00722a94;
    break;
  case 8:
    piVar5 = *(int **)(iVar15 + 0x17c);
    if (piVar5 != (int *)0x0) goto LAB_00722a94;
    uVar9 = 0;
    break;
  case 9:
    piVar5 = *(int **)(iVar15 + 0x180);
    if (piVar5 != (int *)0x0) goto LAB_00722a94;
    uVar9 = 0;
    break;
  case 10:
    piVar5 = *(int **)(iVar15 + 0x184);
    if (piVar5 != (int *)0x0) goto LAB_00722a94;
    uVar9 = 0;
    break;
  case 0xb:
    piVar5 = *(int **)(iVar15 + 0x188);
    if (piVar5 != (int *)0x0) goto LAB_00722a94;
    uVar9 = 0;
    break;
  case 0xc:
    piVar5 = *(int **)(iVar15 + 0x18c);
    if (piVar5 != (int *)0x0) goto LAB_00722a94;
    uVar9 = 0;
    break;
  case 0xd:
    sVar4 = *(short *)(iVar15 + 400);
    if (sVar4 == 0) {
      uVar9 = 0;
    }
    else {
      *(char *)(iVar15 + 0xcdd) = (char)sVar4;
      uVar9 = 6;
      piVar11 = (int *)(iVar15 + 0xcd8);
      *(undefined1 *)(iVar15 + 0xcd8) = 0xff;
      *(char *)(iVar15 + 0xcdc) = (char)((ushort)sVar4 >> 8);
      *(undefined1 *)(iVar15 + 0xcd9) = 0xdd;
      *(undefined1 *)(iVar15 + 0xcda) = 0;
      *(undefined1 *)(iVar15 + 0xcdb) = 4;
    }
    break;
  case 0xe:
    bVar1 = *(byte *)(iVar15 + 0x126);
    uVar13 = (uint)bVar1;
    uVar9 = 0;
    *(char *)(iVar15 + 0xcde) = (char)*(undefined4 *)(iVar15 + 0x19c);
    *(byte *)(iVar15 + 0xcdb) = bVar1 * '\x03' + '\b';
    *(undefined1 *)(iVar15 + 0xcdc) = 8;
    *(undefined1 *)(iVar15 + 0xcd8) = 0xff;
    *(undefined1 *)(iVar15 + 0xcd9) = *(undefined1 *)(iVar15 + 0x194);
    *(char *)(iVar15 + 0xcdd) = (char)((uint)*(undefined4 *)(iVar15 + 0x19c) >> 8);
    *(char *)(iVar15 + 0xcdf) = (char)((uint)*(undefined4 *)(iVar15 + 0x198) >> 8);
    *(char *)(iVar15 + 0xce0) = (char)*(undefined4 *)(iVar15 + 0x198);
    *(undefined1 *)(iVar15 + 0xcda) = 0;
    *(byte *)(iVar15 + 0xce1) = bVar1;
    if (uVar13 != 0) {
      bVar1 = *(byte *)(iVar15 + 0x125);
      puVar10 = (undefined1 *)(iVar15 + 0xce2);
      do {
        iVar12 = iVar15 + (uint)bVar1 + uVar9;
        uVar9 = uVar9 + 1;
        uVar2 = *(undefined1 *)(iVar12 + 0x1a0);
        uVar3 = *(undefined1 *)(iVar12 + 0x1a3);
        puVar10[2] = *(undefined1 *)(iVar12 + 0x1a6);
        *puVar10 = uVar2;
        puVar10[1] = uVar3;
        puVar10 = puVar10 + 3;
      } while ((uVar9 & 0xff) < uVar13);
    }
    uVar9 = uVar13 * 3 + 10;
    piVar11 = (int *)(iVar15 + 0xcd8);
    *(int *)(iVar15 + 0xcd4) = *(int *)(iVar15 + 0xcd4) + 1;
    goto LAB_00722940;
  case 0xf:
    bVar1 = *(byte *)(iVar15 + 0x126);
    uVar13 = (uint)bVar1;
    *(undefined1 *)(iVar15 + 0xcd8) = 0xff;
    *(undefined1 *)(iVar15 + 0xcd9) = 0xda;
    if (uVar13 == 0) {
      piVar11 = (int *)(iVar15 + 0xcd0);
    }
    uVar9 = 0;
    *(undefined1 *)(iVar15 + 0xcda) = 0;
    *(byte *)(iVar15 + 0xcdb) = (bVar1 + 3) * '\x02';
    *(byte *)(iVar15 + 0xcdc) = bVar1;
    if (uVar13 != 0) {
      bVar1 = *(byte *)(iVar15 + 0x125);
      piVar11 = (int *)(iVar15 + 0xcd0);
      puVar10 = (undefined1 *)(iVar15 + 0xcdd);
      do {
        iVar12 = iVar15 + (uint)bVar1 + uVar9;
        uVar9 = uVar9 + 1;
        uVar2 = *(undefined1 *)(iVar12 + 0x1a9);
        puVar10[1] = *(undefined1 *)(iVar12 + 0x1ac);
        *puVar10 = uVar2;
        puVar10 = puVar10 + 2;
      } while ((uVar9 & 0xff) < uVar13);
    }
    iVar12 = *(int *)(iVar15 + 0xcd4);
    iVar6 = iVar15 + uVar13 * 2;
    *(undefined1 *)(iVar6 + 0xcdd) = 0;
    *(int *)(iVar15 + 0xcd4) = iVar12 + 1;
    uVar9 = (uVar13 + 4) * 2;
    piVar11 = piVar11 + 2;
    *(undefined1 *)(iVar15 + (uVar13 + 0x66f) * 2) = 0x3f;
    *(undefined1 *)(iVar6 + 0xcdf) = 0;
    goto LAB_00722940;
  case 0x10:
    uVar9 = (uint)*(ushort *)(iVar15 + 0x4cc);
    if (uVar9 == 0) {
      iVar6 = FUN_0071f578(iVar15);
      if (iVar6 == 0) {
        TIFFErrorExt(*(undefined4 *)(iVar12 + 0x264),"LibJpeg","Premature end of JPEG data");
        FUN_00722814(iVar12);
        uVar9 = 0;
        goto LAB_00722940;
      }
      uVar9 = (uint)*(ushort *)(iVar15 + 0x4cc);
    }
    *(undefined2 *)(iVar15 + 0x4cc) = 0;
    piVar11 = *(int **)(iVar15 + 0x4d0);
    if (*(int *)(iVar15 + 0x4c8) == 0) {
      if (*(int *)(iVar15 + 0x4b4) == 2) {
        uVar8 = 0x12;
        if (*(uint *)(iVar15 + 0x4b8) < *(uint *)(iVar15 + 0x4bc)) {
          uVar8 = 0x11;
        }
        *(undefined4 *)(iVar15 + 0xcd4) = uVar8;
      }
      else if (*(int *)(iVar15 + 0x4b4) == 3) {
        *(undefined4 *)(iVar15 + 0xcd4) = 0x12;
      }
    }
    goto LAB_00722aac;
  case 0x11:
    *(undefined1 *)(iVar15 + 0xcd8) = 0xff;
    cVar7 = *(char *)(iVar15 + 0x192) + '\x01';
    piVar11 = (int *)(iVar15 + 0xcd8);
    *(char *)(iVar15 + 0xcd9) = *(char *)(iVar15 + 0x192) + -0x30;
    *(char *)(iVar15 + 0x192) = cVar7;
    if (cVar7 == '\b') {
      *(undefined1 *)(iVar15 + 0x192) = 0;
    }
    *(undefined4 *)(iVar15 + 0xcd4) = 0x10;
    uVar9 = 2;
    goto LAB_00722940;
  case 0x12:
    piVar11 = (int *)(iVar15 + 0xcd8);
    *(undefined1 *)(iVar15 + 0xcd8) = 0xff;
    *(undefined1 *)(iVar15 + 0xcd9) = 0xd9;
    uVar9 = 2;
    goto LAB_00722940;
  default:
    goto switchD_007228d0_default;
  }
  *(int *)(iVar15 + 0xcd4) = *(int *)(iVar15 + 0xcd4) + 1;
LAB_00722aac:
  if (uVar9 != 0) goto LAB_00722940;
  iVar15 = *(int *)(iVar12 + 0x238);
  uVar8 = *(undefined4 *)(iVar14 + 0xcd4);
  goto switchD_007228d0_default;
LAB_00722c5c:
  piVar11 = (int *)(iVar15 + 0xcd8);
  *(undefined1 *)(iVar15 + 0xcd8) = 0xff;
  *(int *)(iVar15 + 0xcd4) = *(int *)(iVar15 + 0xcd4) + 1;
  *(undefined1 *)(iVar15 + 0xcd9) = 0xd8;
  uVar9 = 2;
LAB_00722940:
  *(int **)(iVar14 + 0x450) = piVar11;
  *(uint *)(iVar14 + 0x454) = uVar9;
  return 1;
}

// ---- FUN_00722dac  @ 0x722dac
void FUN_00722dac(int param_1,undefined2 param_2,undefined2 *param_3,uint param_4)

{
  *param_3 = param_2;
  if (0xffff < param_4) {
    *(uint *)(param_3 + 4) = param_4;
  }
  *(undefined4 *)(param_3 + 2) = 1;
  if (0xffff >= param_4) {
    param_3[1] = 3;
    if (*(short *)(param_1 + 0x1b8) == 0x4d4d) {
      param_4 = (param_4 & *(uint *)(*(int *)(param_1 + 0x1c4) + 0xc)) <<
                (*(uint *)(*(int *)(param_1 + 0x1c0) + 0xc) & 0xff);
    }
    else {
      param_4 = param_4 & *(uint *)(*(int *)(param_1 + 0x1c4) + 0xc);
    }
    *(uint *)(param_3 + 4) = param_4;
    return;
  }
  param_3[1] = 4;
  return;
}

// ---- FUN_007230a0  @ 0x7230a0
undefined4 FUN_007230a0(undefined4 *param_1,undefined2 *param_2,undefined4 param_3)

{
  undefined2 uVar1;
  int iVar2;
  int iVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  int iVar6;
  
  if ((param_1[3] & 0x80) == 0) {
LAB_00723104:
    uVar1 = param_2[1];
    goto switchD_007230c8_default;
  }
  uVar1 = param_2[1];
  switch(uVar1) {
  case 3:
    goto LAB_007231ac;
  case 4:
    goto LAB_007231c0;
  case 5:
    goto LAB_007231d4;
  case 6:
    break;
  case 7:
    break;
  case 8:
LAB_007231ac:
    TIFFSwabArrayOfShort(param_3,*(undefined4 *)(param_2 + 2));
    uVar1 = param_2[1];
    break;
  case 9:
    goto LAB_007231c0;
  case 10:
LAB_007231d4:
    TIFFSwabArrayOfLong(param_3,*(int *)(param_2 + 2) << 1);
    uVar1 = param_2[1];
    break;
  case 0xb:
LAB_007231c0:
    TIFFSwabArrayOfLong(param_3,*(undefined4 *)(param_2 + 2));
    uVar1 = param_2[1];
    break;
  case 0xc:
    TIFFSwabArrayOfDouble(param_3,*(undefined4 *)(param_2 + 2));
    goto LAB_00723104;
  }
switchD_007230c8_default:
  iVar6 = *(int *)(param_2 + 2);
  *(undefined4 *)(param_2 + 4) = param_1[0x76];
  iVar2 = TIFFDataWidth(uVar1);
  iVar3 = (*(code *)param_1[0x9c])(param_1[0x99],*(undefined4 *)(param_2 + 4),0);
  if ((iVar3 == *(int *)(param_2 + 4)) &&
     (iVar3 = (*(code *)param_1[0x9b])(param_1[0x99],param_3,iVar6 * iVar2), iVar3 == iVar6 * iVar2)
     ) {
    param_1[0x76] = param_1[0x76] + (iVar3 + 1U & 0xfffffffe);
    return 1;
  }
  uVar5 = param_1[0x99];
  uVar4 = *param_1;
  iVar2 = TIFFFieldWithTag(param_1,*param_2);
  TIFFErrorExt(uVar5,uVar4,"Error writing data for field \"%s\"",*(undefined4 *)(iVar2 + 0x10));
  return 0;
}

// ---- FUN_007231f0  @ 0x7231f0
undefined4 FUN_007231f0(int param_1,int param_2,ushort *param_3)

{
  ushort uVar1;
  undefined4 uVar2;
  uint uVar3;
  
  uVar3 = *(uint *)(param_2 + 4);
  if (uVar3 < 3) {
    if (*(short *)(param_1 + 0x1b8) == 0x4d4d) {
      uVar1 = *param_3;
      *(uint *)(param_2 + 8) = (uint)uVar1 << 0x10;
      if (uVar3 == 2) {
        *(uint *)(param_2 + 8) = CONCAT22(uVar1,param_3[1]);
      }
    }
    else {
      uVar1 = *param_3;
      *(uint *)(param_2 + 8) = (uint)uVar1;
      if (uVar3 == 2) {
        *(uint *)(param_2 + 8) = CONCAT22(param_3[1],uVar1);
      }
    }
    return 1;
  }
  uVar2 = FUN_007230a0();
  return uVar2;
}

// ---- FUN_00723274  @ 0x723274
undefined4 FUN_00723274(int param_1,int param_2,byte *param_3)

{
  byte bVar1;
  ushort uVar2;
  uint3 uVar3;
  undefined4 uVar4;
  uint uVar5;
  uint uVar6;
  
  uVar6 = *(uint *)(param_2 + 4);
  if (uVar6 < 5) {
    if (*(short *)(param_1 + 0x1b8) == 0x4d4d) {
      bVar1 = *param_3;
      *(uint *)(param_2 + 8) = (uint)bVar1 << 0x18;
      if (1 < uVar6) {
        uVar5 = (uint)bVar1 << 0x18 | (uint)param_3[1] << 0x10;
        *(uint *)(param_2 + 8) = uVar5;
        if (2 < uVar6) {
          uVar5 = uVar5 | (uint)param_3[2] << 8;
          *(uint *)(param_2 + 8) = uVar5;
          if (uVar6 == 4) {
            *(uint *)(param_2 + 8) = uVar5 | param_3[3];
          }
        }
      }
    }
    else {
      bVar1 = *param_3;
      *(uint *)(param_2 + 8) = (uint)bVar1;
      if (1 < uVar6) {
        uVar2 = CONCAT11(param_3[1],bVar1);
        *(uint *)(param_2 + 8) = (uint)uVar2;
        if (2 < uVar6) {
          uVar3 = CONCAT12(param_3[2],uVar2);
          *(uint *)(param_2 + 8) = (uint)uVar3;
          if (uVar6 == 4) {
            *(uint *)(param_2 + 8) = CONCAT13(param_3[3],uVar3);
          }
        }
      }
    }
    return 1;
  }
  uVar4 = FUN_007230a0();
  return uVar4;
}

// ---- FUN_00723340  @ 0x723340
undefined4 FUN_00723340(undefined4 *param_1,undefined2 *param_2,float *param_3)

{
  uint uVar1;
  byte bVar2;
  int *piVar3;
  int iVar4;
  undefined4 uVar5;
  uint uVar6;
  int *piVar7;
  uint uVar8;
  undefined4 uVar9;
  uint in_fpscr;
  double dVar10;
  float fVar11;
  
  piVar3 = _TIFFmalloc(*(int *)(param_2 + 2) << 3);
  if (piVar3 == (int *)0x0) {
    TIFFErrorExt(param_1[0x99],*param_1,"No space to write RATIONAL array");
    uVar5 = 0;
  }
  else {
    if (*(int *)(param_2 + 2) != 0) {
      uVar8 = 0;
      piVar7 = piVar3;
      do {
        fVar11 = *param_3;
        param_3 = param_3 + 1;
        uVar6 = in_fpscr & 0xfffffff;
        in_fpscr = uVar6 | (uint)(fVar11 < 0.0) << 0x1f;
        if (SUB41(in_fpscr >> 0x1f,0)) {
          if (param_2[1] != 5) {
            uVar5 = 0xffffffff;
            fVar11 = -fVar11;
            goto LAB_007233bc;
          }
          uVar9 = param_1[0x99];
          uVar5 = *param_1;
          iVar4 = TIFFFieldWithTag(param_1,*param_2);
          TIFFWarningExt(uVar9,uVar5,
                         "\"%s\": Information lost writing value (%g) as (unsigned) RATIONAL",
                         *(undefined4 *)(iVar4 + 0x10),(double)fVar11);
          iVar4 = 0;
          uVar6 = 1;
        }
        else {
          uVar5 = 1;
LAB_007233bc:
          uVar1 = uVar6 | (uint)(fVar11 < 0.0) << 0x1f | (uint)(fVar11 == 0.0) << 0x1e;
          in_fpscr = uVar1 | (uint)NAN(fVar11) << 0x1c;
          bVar2 = (byte)(uVar1 >> 0x18);
          if (((bool)(bVar2 >> 6 & 1) || bVar2 >> 7 != ((byte)(in_fpscr >> 0x1c) & 1)) ||
             (in_fpscr = uVar6 | (uint)(fVar11 < 2.6843546e+08) << 0x1f, !SUB41(in_fpscr >> 0x1f,0))
             ) {
            uVar6 = 1;
          }
          else {
            uVar6 = 1;
            do {
              fVar11 = fVar11 * 8.0;
              uVar6 = uVar6 * 8;
              in_fpscr = in_fpscr & 0xfffffff | (uint)(fVar11 < 2.6843546e+08) << 0x1f;
            } while (SUB41(in_fpscr >> 0x1f,0) && uVar6 < 0x10000000);
          }
          dVar10 = (double)VectorSignedToFloat(uVar5,(byte)(in_fpscr >> 0x16) & 3);
          iVar4 = (uint)(0.0 < dVar10 * 0.5) * (int)(longlong)(dVar10 * 0.5);
        }
        *piVar7 = iVar4;
        uVar8 = uVar8 + 1;
        piVar7[1] = uVar6;
        piVar7 = piVar7 + 2;
      } while (uVar8 < *(uint *)(param_2 + 2));
    }
    uVar5 = FUN_007230a0(param_1,param_2,piVar3);
    _TIFFfree(piVar3);
  }
  return uVar5;
}

// ---- FUN_007234f0  @ 0x7234f0
/* WARNING: Type propagation algorithm not settling */

void FUN_007234f0(undefined4 *param_1,int param_2)

{
  size_t *psVar1;
  ushort uVar2;
  short sVar3;
  undefined2 *puVar4;
  undefined4 uVar5;
  double *pdVar6;
  undefined1 *puVar7;
  float *pfVar8;
  size_t sVar9;
  double *pdVar10;
  int iVar11;
  undefined4 *puVar12;
  int iVar13;
  float *pfVar14;
  uint *puVar15;
  undefined2 uVar16;
  uint uVar17;
  int iVar18;
  float *pfVar19;
  int *piVar20;
  undefined2 *puVar21;
  uint uVar22;
  int iVar23;
  bool bVar24;
  double dVar25;
  uint local_164;
  int *local_13c;
  double local_128 [10];
  undefined1 local_d4 [2];
  undefined1 auStack_d2 [18];
  uint local_c0 [4];
  undefined8 local_b0;
  char *local_a8;
  undefined4 local_a4;
  undefined4 *local_a0;
  undefined4 local_9c;
  undefined4 *local_98;
  undefined4 local_94;
  uint local_90;
  int local_8c;
  undefined4 local_88;
  ushort local_82;
  undefined1 local_80 [4];
  float local_7c [20];
  int local_2c;
  
  local_2c = __stack_chk_guard;
  if (param_1[2] == 0) {
LAB_00724010:
    uVar5 = 1;
  }
  else {
    if (param_2 != 0) {
      if ((param_1[3] & 0x1000) != 0) {
        param_1[3] = param_1[3] & 0xffffefff;
        iVar23 = (*(code *)param_1[0x82])();
        if (iVar23 == 0) {
          TIFFErrorExt(param_1[0x99],*param_1,"Error post-encoding before directory write");
          uVar5 = 0;
          goto LAB_007238b0;
        }
      }
      (*(code *)param_1[0x89])(param_1);
      if ((int)param_1[0x94] < 1) {
LAB_00724214:
        uVar17 = param_1[3];
      }
      else {
        uVar17 = param_1[3];
        if ((uVar17 & 0x40) != 0) {
          iVar23 = TIFFFlushData1(param_1);
          if (iVar23 == 0) {
            TIFFErrorExt(param_1[0x99],*param_1,"Error flushing data before directory write");
            uVar5 = 0;
            goto LAB_007238b0;
          }
          goto LAB_00724214;
        }
      }
      if (((uVar17 & 0x200) != 0) && (param_1[0x91] != 0)) {
        _TIFFfree();
        uVar17 = param_1[3];
        param_1[0x92] = 0;
        param_1[0x91] = 0;
        param_1[0x94] = 0;
      }
      param_1[3] = uVar17 & 0xffffffaf;
    }
    uVar17 = 0;
    iVar23 = 0;
    do {
      if (((uint)(uVar17 != 0x41) & (uint)param_1[(uVar17 >> 5) + 10] >> (uVar17 & 0x1f)) != 0) {
        if (uVar17 < 5) {
          iVar11 = 2;
        }
        else {
          iVar11 = 1;
        }
        iVar23 = iVar23 + iVar11;
      }
      uVar17 = uVar17 + 1;
    } while (uVar17 != 0x80);
    local_164 = iVar23 + param_1[0x3a];
    local_13c = (int *)(local_164 * 0xc);
    puVar4 = _TIFFmalloc((size_t)local_13c);
    if (puVar4 == (undefined2 *)0x0) {
      TIFFErrorExt(param_1[0x99],*param_1,"Cannot write directory, out of space");
      uVar5 = 0;
      goto LAB_007238b0;
    }
    iVar23 = param_1[4];
    if (iVar23 == 0) {
      iVar23 = (*(code *)param_1[0x9c])(param_1[0x99],0,2);
      uVar17 = param_1[3];
      local_90 = iVar23 + 1U & 0xfffffffe;
      param_1[4] = local_90;
      if ((uVar17 & 0x80) != 0) {
        TIFFSwabLong(&local_90);
        uVar17 = param_1[3];
      }
      if ((uVar17 & 0x2000) == 0) {
        if (param_1[0x6f] == 0) {
          param_1[0x6f] = param_1[4];
          (*(code *)param_1[0x9c])(param_1[0x99],4,0);
          iVar23 = (*(code *)param_1[0x9b])(param_1[0x99],&local_90,4);
          if (iVar23 == 4) goto LAB_007245c0;
          TIFFErrorExt(param_1[0x99],*param_1,"Error writing TIFF header");
        }
        else {
          local_8c = param_1[0x6f];
          do {
            iVar23 = (*(code *)param_1[0x9c])(param_1[0x99],local_8c,0);
            if ((iVar23 != local_8c) ||
               (iVar23 = (*(code *)param_1[0x9a])(param_1[0x99],&local_82,2), iVar23 != 2)) {
              TIFFErrorExt(param_1[0x99],"TIFFLinkDirectory","Error fetching directory count");
              goto LAB_007238a4;
            }
            if ((param_1[3] & 0x80) != 0) {
              TIFFSwabShort(&local_82);
            }
            (*(code *)param_1[0x9c])(param_1[0x99],(uint)local_82 * 0xc,1);
            iVar23 = (*(code *)param_1[0x9a])(param_1[0x99],&local_8c,4);
            if (iVar23 != 4) {
              TIFFErrorExt(param_1[0x99],"TIFFLinkDirectory","Error fetching directory link");
              goto LAB_007238a4;
            }
            if ((param_1[3] & 0x80) != 0) {
              TIFFSwabLong(&local_8c);
            }
          } while (local_8c != 0);
          iVar23 = (*(code *)param_1[0x9c])(param_1[0x99],0,1);
          (*(code *)param_1[0x9c])(param_1[0x99],iVar23 + -4,0);
          iVar23 = (*(code *)param_1[0x9b])(param_1[0x99],&local_90,4);
          if (iVar23 == 4) {
LAB_007245c0:
            iVar23 = param_1[4];
            goto LAB_007235b8;
          }
          TIFFErrorExt(param_1[0x99],"TIFFLinkDirectory","Error writing directory link");
        }
      }
      else {
        (*(code *)param_1[0x9c])(param_1[0x99],param_1[0x78],0);
        iVar23 = (*(code *)param_1[0x9b])(param_1[0x99],&local_90,4);
        if (iVar23 == 4) {
          sVar3 = *(short *)(param_1 + 0x77);
          *(short *)(param_1 + 0x77) = sVar3 + -1;
          if ((short)(sVar3 + -1) == 0) {
            param_1[3] = param_1[3] & 0xffffdfff;
          }
          else {
            param_1[0x78] = param_1[0x78] + 4;
          }
          goto LAB_007245c0;
        }
        TIFFErrorExt(param_1[0x99],"TIFFLinkDirectory","%s: Error writing SubIFD directory link",
                     *param_1);
      }
    }
    else {
LAB_007235b8:
      uVar17 = (int)local_13c + iVar23 + 6;
      param_1[0x76] = uVar17;
      if ((uVar17 & 1) != 0) {
        uVar17 = uVar17 + 1;
        param_1[0x76] = uVar17;
      }
      (*(code *)param_1[0x9c])(param_1[0x99],uVar17,0);
      *(short *)(param_1 + 0x73) = *(short *)(param_1 + 0x73) + 1;
      _TIFFmemcpy(local_c0,param_1 + 10,0x10);
      if (((int)local_c0[0] < 0) && (*(short *)(param_1 + 0x2a) == 0)) {
        local_13c = local_13c + -3;
        local_164 = local_164 - 1;
        local_c0[0] = local_c0[0] & 0x7fffffff;
      }
      iVar23 = param_1[0xa1];
      piVar20 = local_13c;
      if (0 < iVar23) {
        iVar11 = 0;
        puVar21 = puVar4;
LAB_00723688:
        piVar20 = *(int **)(param_1[0xa0] + iVar11 * 4);
        uVar17 = (uint)*(ushort *)(piVar20 + 3);
        if (uVar17 == 0x41) {
          if (0 < (int)param_1[0x3a]) {
            iVar18 = 0;
            bVar24 = false;
            iVar13 = 0;
            do {
              psVar1 = (size_t *)(param_1[0x3b] + iVar18);
              iVar13 = iVar13 + 1;
              iVar18 = iVar18 + 0xc;
              if ((int *)*psVar1 == piVar20) {
                bVar24 = true;
              }
            } while (iVar13 != param_1[0x3a]);
            if (bVar24) goto switchD_007236c4_default;
          }
          goto LAB_00723830;
        }
        if ((local_c0[*(ushort *)(piVar20 + 3) >> 5] >> (uVar17 & 0x1f) & 1) == 0)
        goto LAB_00723830;
        switch(uVar17) {
        case 1:
          FUN_00722dac(param_1,0x100,puVar21,param_1[0xe]);
          FUN_00722dac(param_1,0x101,puVar21 + 6,param_1[0xf]);
          puVar21 = puVar21 + 6;
          goto switchD_00723c14_default;
        case 2:
          FUN_00722dac(param_1,0x142,puVar21,param_1[0x11]);
          FUN_00722dac(param_1,0x143,puVar21 + 6,param_1[0x12]);
          puVar21 = puVar21 + 6;
          goto switchD_00723c14_default;
        case 3:
          puVar21[1] = 5;
          *puVar21 = 0x11a;
          *(undefined4 *)(puVar21 + 2) = 1;
          iVar13 = FUN_00723340(param_1,puVar21,param_1 + 0x20);
          if (iVar13 != 0) {
            puVar21[6] = 0x11b;
            puVar21[7] = 5;
            *(undefined4 *)(puVar21 + 8) = 1;
            iVar13 = FUN_00723340(param_1,puVar21 + 6,param_1 + 0x21);
            goto joined_r0x00723cac;
          }
          goto LAB_007238a4;
        case 4:
          puVar21[1] = 5;
          *puVar21 = 0x11e;
          *(undefined4 *)(puVar21 + 2) = 1;
          iVar13 = FUN_00723340(param_1,puVar21,param_1 + 0x23);
          if (iVar13 != 0) {
            puVar21[6] = 0x11f;
            puVar21[7] = 5;
            *(undefined4 *)(puVar21 + 8) = 1;
            iVar13 = FUN_00723340(param_1,puVar21 + 6,param_1 + 0x24);
joined_r0x00723cac:
            puVar21 = puVar21 + 6;
            goto joined_r0x007238fc;
          }
          goto LAB_007238a4;
        case 5:
          break;
        case 6:
          goto LAB_00723dd4;
        case 7:
          uVar16 = 0x103;
          uVar2 = *(ushort *)(param_1 + 0x16);
          puVar21[1] = 3;
          goto LAB_00723d88;
        case 8:
          uVar2 = *(ushort *)((int)param_1 + 0x5a);
          puVar21[1] = 3;
          uVar16 = 0x106;
LAB_00723d88:
          *puVar21 = uVar16;
          sVar3 = *(short *)(param_1 + 0x6e);
          *(undefined4 *)(puVar21 + 2) = 1;
          if (sVar3 == 0x4d4d) {
            uVar17 = ((uint)uVar2 & *(uint *)(param_1[0x71] + 0xc)) <<
                     (*(uint *)(param_1[0x70] + 0xc) & 0xff);
          }
          else {
            uVar17 = (uint)uVar2 & *(uint *)(param_1[0x71] + 0xc);
          }
          *(uint *)(puVar21 + 4) = uVar17;
          goto switchD_00723c14_default;
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
          FUN_00722dac(param_1,0x116,puVar21,param_1[0x19]);
          goto switchD_00723c14_default;
        case 0x12:
          goto LAB_00723dd4;
        case 0x13:
          goto LAB_00723dd4;
        case 0x14:
          break;
        case 0x15:
          break;
        case 0x16:
          break;
        case 0x17:
          goto LAB_00723a14;
        case 0x18:
          iVar13 = 0x117;
          if ((param_1[3] & 0x400) != 0) {
            iVar13 = 0x145;
          }
          if (iVar13 != *piVar20) goto LAB_00723830;
          iVar18 = param_1[0x2d];
          *puVar21 = (short)iVar13;
          puVar21[1] = 4;
          puVar12 = (undefined4 *)param_1[0x2f];
          *(int *)(puVar21 + 2) = iVar18;
          if (iVar18 != 1) goto LAB_007239a8;
LAB_00723a04:
          *(undefined4 *)(puVar21 + 4) = *puVar12;
          goto switchD_00723c14_default;
        case 0x19:
          iVar13 = 0x111;
          if ((param_1[3] & 0x400) != 0) {
            iVar13 = 0x144;
          }
          if (iVar13 != *piVar20) goto LAB_00723830;
          iVar18 = param_1[0x2d];
          *puVar21 = (short)iVar13;
          puVar21[1] = 4;
          *(int *)(puVar21 + 2) = iVar18;
          puVar12 = (undefined4 *)param_1[0x2e];
          if (iVar18 == 1) goto LAB_00723a04;
          goto LAB_007239a8;
        case 0x1a:
          *puVar21 = 0x140;
          puVar21[1] = 3;
          puVar12 = param_1 + 0x25;
          *(int *)(puVar21 + 2) = 1 << (*(ushort *)(param_1 + 0x15) & 0xff);
          uVar5 = param_1[0x76];
          do {
            puVar12 = puVar12 + 1;
            iVar13 = FUN_007230a0(param_1,puVar21,*puVar12);
            if (iVar13 == 0) goto LAB_007238a4;
          } while (puVar12 != param_1 + 0x28);
          *(undefined4 *)(puVar21 + 4) = uVar5;
          *(int *)(puVar21 + 2) = *(int *)(puVar21 + 2) * 3;
          goto switchD_00723c14_default;
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
LAB_00723dd4:
          uVar17 = (uint)*(ushort *)((int)param_1 + 0x62);
          iVar13 = *piVar20;
          if (10 < uVar17) {
            puVar7 = _TIFFmalloc(uVar17 << 1);
            if (puVar7 != (undefined1 *)0x0) {
              TIFFGetField(param_1,iVar13,&local_82);
LAB_00723e04:
              iVar18 = 0;
              do {
                *(ushort *)(puVar7 + iVar18) = local_82;
                iVar18 = iVar18 + 2;
              } while (iVar18 != ((uVar17 - 1 & 0xffff) + 1) * 2);
              *(uint *)(puVar21 + 2) = uVar17;
              puVar21[1] = 3;
              *puVar21 = (short)iVar13;
              iVar13 = FUN_007231f0(param_1,puVar21,puVar7);
              if (puVar7 != local_d4) {
                _TIFFfree(puVar7);
              }
              goto joined_r0x007238fc;
            }
            TIFFErrorExt(param_1[0x99],*param_1,"No space to write per-sample shorts");
            goto LAB_007238a4;
          }
          TIFFGetField(param_1,iVar13,&local_82);
          puVar7 = local_d4;
          if (uVar17 != 0) goto LAB_00723e04;
          *(undefined4 *)(puVar21 + 2) = 0;
          puVar21[1] = 3;
          *puVar21 = (short)iVar13;
          iVar13 = FUN_007231f0(param_1,puVar21,local_d4);
          goto joined_r0x007238fc;
        case 0x21:
          goto LAB_00723ab0;
        case 0x22:
LAB_00723ab0:
          uVar5 = _TIFFSampleToTagType(param_1);
          uVar17 = (uint)*(ushort *)((int)param_1 + 0x62);
          iVar13 = *piVar20;
          pfVar8 = local_7c;
          if (uVar17 < 0xb) {
            TIFFGetField(param_1,iVar13,&local_b0);
            pdVar6 = local_128;
            if (uVar17 != 0) goto LAB_00723af0;
            TIFFDataWidth(uVar5);
LAB_00723b34:
            *(uint *)(puVar21 + 2) = uVar17;
            puVar21[1] = (short)uVar5;
            *puVar21 = (short)iVar13;
            switch(uVar5) {
            case 1:
              if (uVar17 != 0) {
                uVar22 = 0;
                pdVar10 = pdVar6;
                do {
                  dVar25 = *pdVar10;
                  pdVar10 = pdVar10 + 1;
                  *(char *)((int)pfVar8 + uVar22) = (0.0 < dVar25) * (char)(longlong)dVar25;
                  uVar22 = uVar22 + 1;
                } while (uVar17 != uVar22);
              }
              goto LAB_007242b8;
            case 2:
              break;
            case 3:
              if (uVar17 != 0) {
                pdVar10 = pdVar6;
                pfVar14 = pfVar8;
                do {
                  dVar25 = *pdVar10;
                  pdVar10 = pdVar10 + 1;
                  pfVar19 = (float *)((int)pfVar14 + 2);
                  *(ushort *)pfVar14 = (ushort)(0.0 < dVar25) * (short)(longlong)dVar25;
                  pfVar14 = pfVar19;
                } while (pfVar19 != (float *)((int)pfVar8 + uVar17 * 2));
              }
              goto LAB_00724334;
            case 4:
              if (uVar17 != 0) {
                uVar22 = 0;
                pdVar10 = pdVar6;
                pfVar14 = pfVar8;
                do {
                  dVar25 = *pdVar10;
                  pdVar10 = pdVar10 + 1;
                  uVar22 = uVar22 + 1;
                  *pfVar14 = (float)((uint)(0.0 < dVar25) * (int)(longlong)dVar25);
                  pfVar14 = pfVar14 + 1;
                } while (uVar22 != uVar17);
              }
              goto LAB_00724270;
            case 5:
              break;
            case 6:
              if (uVar17 != 0) {
                pdVar10 = pdVar6;
                pfVar14 = pfVar8;
                do {
                  dVar25 = *pdVar10;
                  pdVar10 = pdVar10 + 1;
                  pfVar19 = (float *)((int)pfVar14 + 1);
                  *(char *)pfVar14 = (char)(longlong)dVar25;
                  pfVar14 = pfVar19;
                } while (pfVar19 != (float *)((int)pfVar8 + uVar17));
              }
LAB_007242b8:
              iVar13 = FUN_00723274(param_1,puVar21,pfVar8);
              if (iVar13 == 0) break;
              bVar24 = true;
              goto LAB_00723f9c;
            case 7:
              break;
            case 8:
              if (uVar17 != 0) {
                pdVar10 = pdVar6;
                pfVar14 = pfVar8;
                do {
                  dVar25 = *pdVar10;
                  pdVar10 = pdVar10 + 1;
                  pfVar19 = (float *)((int)pfVar14 + 2);
                  *(short *)pfVar14 = (short)(longlong)dVar25;
                  pfVar14 = pfVar19;
                } while (pfVar19 != (float *)((int)pfVar8 + uVar17 * 2));
              }
LAB_00724334:
              iVar13 = FUN_007231f0(param_1,puVar21,pfVar8);
              if (iVar13 == 0) break;
              bVar24 = true;
              goto LAB_00723f9c;
            case 9:
              if (uVar17 != 0) {
                uVar22 = 0;
                pdVar10 = pdVar6;
                pfVar14 = pfVar8;
                do {
                  dVar25 = *pdVar10;
                  pdVar10 = pdVar10 + 1;
                  uVar22 = uVar22 + 1;
                  *pfVar14 = (float)(longlong)dVar25;
                  pfVar14 = pfVar14 + 1;
                } while (uVar22 != uVar17);
              }
              goto LAB_00724270;
            case 10:
              break;
            case 0xb:
              if (uVar17 != 0) {
                uVar22 = 0;
                pdVar10 = pdVar6;
                pfVar14 = pfVar8;
                do {
                  dVar25 = *pdVar10;
                  pdVar10 = pdVar10 + 1;
                  uVar22 = uVar22 + 1;
                  *pfVar14 = (float)dVar25;
                  pfVar14 = pfVar14 + 1;
                } while (uVar22 != uVar17);
              }
LAB_00724270:
              if (*(int *)(puVar21 + 2) == 1) {
                bVar24 = true;
                *(float *)(puVar21 + 4) = *pfVar8;
              }
              else {
                iVar13 = FUN_007230a0(param_1,puVar21,pfVar8);
joined_r0x00724238:
                if (iVar13 == 0) break;
                bVar24 = true;
              }
              goto LAB_00723f9c;
            case 0xc:
              iVar13 = FUN_007230a0(param_1,puVar21,pdVar6);
              goto joined_r0x00724238;
            }
            bVar24 = false;
LAB_00723f9c:
            if (pfVar8 != local_7c) {
              _TIFFfree(pfVar8);
            }
LAB_00723fb0:
            if (pdVar6 != local_128) {
              _TIFFfree(pdVar6);
            }
            if (bVar24) goto switchD_00723c14_default;
          }
          else {
            pdVar6 = _TIFFmalloc(uVar17 << 3);
            if (pdVar6 != (double *)0x0) {
              TIFFGetField(param_1,iVar13,&local_b0);
LAB_00723af0:
              iVar18 = 0;
              do {
                *(undefined4 *)((int)pdVar6 + iVar18) = (int)local_b0;
                ((undefined4 *)((int)pdVar6 + iVar18))[1] = (int)((ulonglong)local_b0 >> 0x20);
                iVar18 = iVar18 + 8;
              } while (iVar18 != ((uVar17 - 1 & 0xffff) + 1) * 8);
              iVar18 = TIFFDataWidth(uVar5);
              if (uVar17 * iVar18 < 0x51) goto LAB_00723b34;
              iVar18 = TIFFDataWidth(uVar5);
              pfVar8 = _TIFFmalloc(uVar17 * iVar18);
              if (pfVar8 != (float *)0x0) goto LAB_00723b34;
              TIFFErrorExt(param_1[0x99],*param_1,"No space to write array");
              bVar24 = false;
              goto LAB_00723fb0;
            }
            TIFFErrorExt(param_1[0x99],*param_1,"No space to write per-sample values");
          }
          goto LAB_007238a4;
        case 0x23:
          break;
        case 0x24:
          break;
        case 0x25:
          goto LAB_00723a14;
        case 0x26:
          break;
        case 0x27:
LAB_00723a14:
          iVar13 = *piVar20;
          TIFFGetField(param_1,iVar13,local_d4,auStack_d2);
          *puVar21 = (short)iVar13;
          puVar21[1] = 3;
          goto LAB_00723a38;
        case 0x28:
          break;
        case 0x29:
          break;
        case 0x2a:
          break;
        case 0x2b:
          break;
        case 0x2c:
          iVar13 = (uint)*(ushort *)((int)param_1 + 0x62) - (uint)*(ushort *)(param_1 + 0x2a);
          sVar9 = 2 << (*(ushort *)(param_1 + 0x15) & 0xff);
          if (iVar13 < 0) {
LAB_00723a8c:
            iVar13 = _TIFFmemcmp((void *)param_1[0x35],(void *)param_1[0x37],sVar9);
            if (iVar13 == 0) {
LAB_00723ef0:
              iVar13 = _TIFFmemcmp((void *)param_1[0x35],(void *)param_1[0x36],sVar9);
              if (iVar13 == 0) goto LAB_00723f0c;
            }
            uVar17 = 3;
          }
          else {
            if (1 < iVar13) {
              if (iVar13 != 2) goto LAB_00723a8c;
              goto LAB_00723ef0;
            }
LAB_00723f0c:
            uVar17 = 1;
          }
          *puVar21 = 0x12d;
          puVar21[1] = 3;
          puVar12 = param_1 + 0x34;
          uVar22 = 0;
          *(int *)(puVar21 + 2) = 1 << (*(ushort *)(param_1 + 0x15) & 0xff);
          uVar5 = param_1[0x76];
          do {
            puVar12 = puVar12 + 1;
            iVar13 = FUN_007230a0(param_1,puVar21,*puVar12);
            if (iVar13 == 0) goto LAB_007238a4;
            uVar22 = uVar22 + 1;
          } while (uVar22 < uVar17);
          *(undefined4 *)(puVar21 + 4) = uVar5;
          *(uint *)(puVar21 + 2) = uVar17 * *(int *)(puVar21 + 2);
          goto switchD_00723c14_default;
        case 0x2d:
          break;
        case 0x2e:
          uVar5 = param_1[0x38];
          puVar21[1] = 2;
          *puVar21 = 0x14d;
          *(undefined4 *)(puVar21 + 2) = uVar5;
          iVar13 = FUN_00723274(param_1,puVar21,param_1[0x39]);
          goto joined_r0x007238fc;
        case 0x2f:
          break;
        case 0x30:
          break;
        case 0x31:
          iVar13 = *piVar20;
          puVar21[1] = 4;
          puVar12 = (undefined4 *)param_1[0x32];
          *puVar21 = (short)iVar13;
          uVar2 = *(ushort *)(param_1 + 0x31);
          *(uint *)(puVar21 + 2) = (uint)uVar2;
          if (uVar2 == 1) {
            *(undefined4 *)(puVar21 + 4) = *puVar12;
          }
          else {
            iVar13 = FUN_007230a0(param_1,puVar21);
            if (iVar13 == 0) goto LAB_007238a4;
            if (*(int *)(puVar21 + 2) == 0) goto switchD_00723c14_default;
          }
          param_1[3] = param_1[3] | 0x2000;
          uVar17 = *(uint *)(puVar21 + 2);
          *(short *)(param_1 + 0x77) = (short)uVar17;
          if (uVar17 < 2) {
            iVar13 = (int)puVar21 + param_1[4] + (10 - (int)puVar4);
          }
          else {
            iVar13 = *(int *)(puVar21 + 4);
          }
          param_1[0x78] = iVar13;
          goto switchD_00723c14_default;
        }
switchD_007236c4_default:
        if (*piVar20 == 0x150) {
          TIFFGetField(param_1,0x150,local_d4,auStack_d2);
          *puVar21 = 0x150;
          puVar21[1] = 3;
LAB_00723a38:
          *(undefined4 *)(puVar21 + 2) = 2;
          iVar13 = FUN_007231f0(param_1,puVar21,local_d4);
          goto joined_r0x007238fc;
        }
        local_80._0_2_ = *(ushort *)((int)piVar20 + 6);
        iVar13 = piVar20[2];
        *puVar21 = (short)*piVar20;
        uVar17 = (uint)(ushort)local_80._0_2_;
        puVar21[1] = (short)iVar13;
        *(uint *)(puVar21 + 2) = uVar17;
        switch(iVar13) {
        case 1:
          goto LAB_0072462c;
        case 2:
          if (*(char *)((int)piVar20 + 0xf) == '\0') {
            TIFFGetField(param_1,*piVar20,&local_a8);
          }
          else {
            if (uVar17 == 0xfffd) {
              puVar15 = &local_90;
            }
            else {
              puVar15 = (uint *)local_80;
            }
            TIFFGetField(param_1,*piVar20,puVar15,&local_a8);
          }
          sVar9 = strlen(local_a8);
          *(size_t *)(puVar21 + 2) = sVar9 + 1;
          iVar13 = FUN_00723274(param_1,puVar21,local_a8);
          goto joined_r0x007247cc;
        case 3:
          goto LAB_00724784;
        case 4:
          break;
        case 5:
          goto LAB_007246d4;
        case 6:
LAB_0072462c:
          if (*(char *)((int)piVar20 + 0xf) != '\0') {
            if (uVar17 == 0xfffd) {
LAB_00724a74:
              TIFFGetField(param_1,*piVar20,&local_90,&local_a8);
              *(uint *)(puVar21 + 2) = local_90;
            }
            else {
LAB_00724644:
              TIFFGetField(param_1,*piVar20,local_80,&local_a8);
              *(uint *)(puVar21 + 2) = (uint)(ushort)local_80._0_2_;
            }
LAB_00724660:
            iVar13 = FUN_00723274(param_1,puVar21,local_a8);
            goto joined_r0x007247cc;
          }
          if (uVar17 != 1) {
            TIFFGetField(param_1,*piVar20,&local_a8);
            goto LAB_00724660;
          }
          TIFFGetField(param_1,*piVar20,&local_82);
          iVar13 = FUN_00723274(param_1,puVar21,&local_82);
joined_r0x007238fc:
          if (iVar13 != 0) goto switchD_00723c14_default;
          goto LAB_007238a4;
        case 7:
          if (uVar17 == 0xffff) goto LAB_00724644;
          if (uVar17 == 0xfffd) goto LAB_00724a74;
          TIFFGetField(param_1,*piVar20,&local_a8);
          goto LAB_00724660;
        case 8:
LAB_00724784:
          if (*(char *)((int)piVar20 + 0xf) != '\0') {
            if (uVar17 == 0xfffd) {
              TIFFGetField(param_1,*piVar20,&local_90,&local_94);
              *(uint *)(puVar21 + 2) = local_90;
            }
            else {
              TIFFGetField(param_1,*piVar20,local_80,&local_94);
              *(uint *)(puVar21 + 2) = (uint)(ushort)local_80._0_2_;
            }
LAB_007247b8:
            iVar13 = FUN_007231f0(param_1,puVar21,local_94);
            goto joined_r0x007247cc;
          }
          if (uVar17 != 1) {
            TIFFGetField(param_1,*piVar20,&local_94);
            goto LAB_007247b8;
          }
          TIFFGetField(param_1,*piVar20,&local_82);
          if (*(short *)(param_1 + 0x6e) == 0x4d4d) {
            *(uint *)(puVar21 + 4) =
                 ((uint)local_82 & *(uint *)(param_1[0x71] + (uint)(ushort)puVar21[1] * 4)) <<
                 (*(uint *)(param_1[0x70] + (uint)(ushort)puVar21[1] * 4) & 0xff);
          }
          else {
            *(uint *)(puVar21 + 4) =
                 (uint)local_82 & *(uint *)(param_1[0x71] + (uint)(ushort)puVar21[1] * 4);
          }
          goto switchD_00723c14_default;
        case 9:
          break;
        case 10:
LAB_007246d4:
          if (*(char *)((int)piVar20 + 0xf) != '\0') {
            if (uVar17 == 0xfffd) {
              TIFFGetField(param_1,*piVar20,&local_90,&local_a0);
              *(uint *)(puVar21 + 2) = local_90;
            }
            else {
              TIFFGetField(param_1,*piVar20,local_80,&local_a0);
              *(uint *)(puVar21 + 2) = (uint)(ushort)local_80._0_2_;
            }
LAB_00724708:
            iVar13 = FUN_00723340(param_1,puVar21,local_a0);
            goto joined_r0x007247cc;
          }
          if (uVar17 != 1) {
            TIFFGetField(param_1,*piVar20,&local_a0);
            goto LAB_00724708;
          }
          TIFFGetField(param_1,*piVar20,&local_9c);
          iVar13 = FUN_00723340(param_1,puVar21,&local_9c);
          goto joined_r0x007238fc;
        case 0xb:
          if (*(char *)((int)piVar20 + 0xf) != '\0') {
            if (uVar17 == 0xfffd) {
              TIFFGetField(param_1,*piVar20,&local_90,&local_a0);
              *(uint *)(puVar21 + 2) = local_90;
            }
            else {
              TIFFGetField(param_1,*piVar20,local_80,&local_a0);
              *(uint *)(puVar21 + 2) = (uint)(ushort)local_80._0_2_;
            }
LAB_00724838:
            iVar13 = *(int *)(puVar21 + 2);
            puVar12 = local_a0;
            goto joined_r0x00724844;
          }
          if (uVar17 != 1) {
            TIFFGetField(param_1,*piVar20,&local_a0);
            goto LAB_00724838;
          }
          TIFFGetField(param_1,*piVar20,&local_9c);
          if (*(int *)(puVar21 + 2) == 1) {
            *(undefined4 *)(puVar21 + 4) = local_9c;
            goto switchD_00723c14_default;
          }
          goto LAB_007239a8;
        case 0xc:
          if (*(char *)((int)piVar20 + 0xf) == '\0') {
            if (uVar17 == 1) {
              TIFFGetField(param_1,*piVar20,&local_b0);
              iVar13 = FUN_007230a0(param_1,puVar21,&local_b0);
              goto joined_r0x007238fc;
            }
            TIFFGetField(param_1,*piVar20,&local_a4);
          }
          else if (uVar17 == 0xfffd) {
            TIFFGetField(param_1,*piVar20,&local_90,&local_a4);
            *(uint *)(puVar21 + 2) = local_90;
          }
          else {
            TIFFGetField(param_1,*piVar20,local_80,&local_a4);
            *(uint *)(puVar21 + 2) = (uint)(ushort)local_80._0_2_;
          }
          iVar13 = FUN_007230a0(param_1,puVar21,local_a4);
          goto joined_r0x007247cc;
        case 0xd:
          break;
        default:
          goto switchD_00723c14_default;
        }
        if (*(char *)((int)piVar20 + 0xf) == '\0') {
          if (uVar17 == 1) {
            TIFFGetField(param_1,*piVar20,puVar21 + 4);
          }
          else {
            TIFFGetField(param_1,*piVar20,&local_98);
            iVar13 = *(int *)(puVar21 + 2);
            puVar12 = local_98;
joined_r0x00724844:
            if (iVar13 != 1) goto LAB_007239a8;
            *(undefined4 *)(puVar21 + 4) = *puVar12;
          }
        }
        else {
          if (uVar17 == 0xfffd) {
            TIFFGetField(param_1,*piVar20,&local_90,&local_98);
            *(uint *)(puVar21 + 2) = local_90;
          }
          else {
            TIFFGetField(param_1,*piVar20,local_80,&local_98);
            *(uint *)(puVar21 + 2) = (uint)(ushort)local_80._0_2_;
          }
          if (*(int *)(puVar21 + 2) == 1) {
            *(undefined4 *)(puVar21 + 4) = *local_98;
          }
          else {
LAB_007239a8:
            iVar13 = FUN_007230a0(param_1,puVar21);
joined_r0x007247cc:
            if (iVar13 == 0) goto LAB_007238a4;
          }
        }
switchD_00723c14_default:
        uVar2 = *(ushort *)(piVar20 + 3);
        puVar21 = puVar21 + 6;
        if (uVar2 != 0x41) {
          local_c0[uVar2 >> 5] = local_c0[uVar2 >> 5] & ~(1 << (uVar2 & 0x1f));
        }
LAB_00723830:
        iVar11 = iVar11 + 1;
        if (iVar11 == iVar23) goto LAB_0072383c;
        goto LAB_00723688;
      }
LAB_0072383c:
      local_88 = param_1[5];
      bVar24 = (param_1[3] & 0x80) != 0;
      if (!bVar24) {
        piVar20 = (int *)(local_80 + 2);
      }
      sVar3 = (short)local_164;
      local_80._2_2_ = sVar3;
      if (bVar24) {
        puVar21 = puVar4;
        if ((local_164 & 0xffff) != 0) {
          do {
            TIFFSwabArrayOfShort(puVar21,2);
            TIFFSwabArrayOfLong(puVar21 + 2,2);
            local_80._2_2_ = local_80._2_2_ + -1;
            puVar21 = puVar21 + 6;
          } while (local_80._2_2_ != 0);
        }
        piVar20 = (int *)(local_80 + 2);
        local_80._2_2_ = sVar3;
        TIFFSwabShort(piVar20);
        TIFFSwabLong(&local_88);
      }
      (*(code *)param_1[0x9c])(param_1[0x99],param_1[4],0);
      iVar23 = (*(code *)param_1[0x9b])(param_1[0x99],piVar20,2);
      if (iVar23 == 2) {
        piVar20 = (int *)(*(code *)param_1[0x9b])(param_1[0x99],puVar4,local_13c);
        if (piVar20 == local_13c) {
          iVar23 = (*(code *)param_1[0x9b])(param_1[0x99],&local_88,4);
          if (iVar23 == 4) {
            if (param_2 != 0) {
              TIFFFreeDirectory(param_1);
              param_1[3] = param_1[3] & 0xfffffff7;
              (*(code *)param_1[0x8b])(param_1);
              TIFFCreateDirectory(param_1);
            }
            _TIFFfree(puVar4);
            goto LAB_00724010;
          }
          TIFFErrorExt(param_1[0x99],*param_1,"Error writing directory link");
        }
        else {
          TIFFErrorExt(param_1[0x99],*param_1,"Error writing directory contents");
        }
      }
      else {
        TIFFErrorExt(param_1[0x99],*param_1,"Error writing directory count");
      }
    }
LAB_007238a4:
    _TIFFfree(puVar4);
    uVar5 = 0;
  }
LAB_007238b0:
  if (local_2c == __stack_chk_guard) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar5);
}

// ---- FUN_007250f8  @ 0x7250f8
int FUN_007250f8(int *param_1,int *param_2)

{
  int iVar1;
  int iVar2;
  int iVar3;
  
  iVar2 = *param_1;
  iVar3 = *param_2;
  iVar1 = strcmp(*(char **)(iVar2 + 0x10),*(char **)(iVar3 + 0x10));
  if (iVar1 == 0) {
    iVar2 = *(int *)(iVar2 + 8);
    iVar1 = 0;
    if (iVar2 != 0) {
      iVar1 = *(int *)(iVar3 + 8) - iVar2;
    }
    return iVar1;
  }
  return iVar1;
}

// ---- FUN_00725840  @ 0x725840
undefined4 FUN_00725840(undefined4 *param_1,int *param_2,int *param_3)

{
  undefined4 uVar1;
  uint uVar2;
  int iVar3;
  int iVar4;
  ushort local_1a;
  
  if ((param_1[3] & 0x800) == 0) {
    iVar3 = (*(code *)param_1[0x9c])(param_1[0x99],*param_2);
    if (iVar3 == *param_2) {
      iVar3 = (*(code *)param_1[0x9a])(param_1[0x99],&local_1a,2);
      if (iVar3 == 2) {
        if ((param_1[3] & 0x80) != 0) {
          TIFFSwabShort(&local_1a);
        }
        if (param_3 == (int *)0x0) {
          (*(code *)param_1[0x9c])(param_1[0x99],(uint)local_1a * 0xc,1);
        }
        else {
          iVar3 = (*(code *)param_1[0x9c])(param_1[0x99],(uint)local_1a * 0xc,1);
          *param_3 = iVar3;
        }
        iVar3 = (*(code *)param_1[0x9a])(param_1[0x99],param_2,4);
        if (iVar3 != 4) {
          TIFFErrorExt(param_1[0x99],"TIFFAdvanceDirectory","%s: Error fetching directory link",
                       *param_1);
          return 0;
        }
        uVar2 = param_1[3];
        goto joined_r0x007259c8;
      }
    }
    TIFFErrorExt(param_1[0x99],"TIFFAdvanceDirectory","%s: Error fetching directory count",*param_1)
    ;
    uVar1 = 0;
  }
  else {
    iVar3 = *param_2;
    if ((uint)param_1[0x96] < iVar3 + 2U) {
      TIFFErrorExt(param_1[0x99],"TIFFAdvanceDirectory","%s: Error fetching directory count",
                   *param_1);
      return 0;
    }
    _TIFFmemcpy(&local_1a,(void *)(param_1[0x95] + iVar3),2);
    if ((param_1[3] & 0x80) != 0) {
      TIFFSwabShort(&local_1a);
    }
    iVar3 = iVar3 + (uint)local_1a * 0xc;
    iVar4 = iVar3 + 2;
    if (param_3 != (int *)0x0) {
      *param_3 = iVar4;
    }
    if ((uint)param_1[0x96] < iVar3 + 6U) {
      TIFFErrorExt(param_1[0x99],"TIFFAdvanceDirectory","%s: Error fetching directory link",*param_1
                  );
      return 0;
    }
    _TIFFmemcpy(param_2,(void *)(param_1[0x95] + iVar4),4);
    uVar2 = param_1[3];
joined_r0x007259c8:
    if ((uVar2 & 0x80) == 0) {
      uVar1 = 1;
    }
    else {
      TIFFSwabLong(param_2);
      uVar1 = 1;
    }
  }
  return uVar1;
}

// ---- FUN_00728254  @ 0x728254
int FUN_00728254(undefined4 *param_1,int param_2,int param_3,undefined4 param_4)

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

// ---- FUN_00728eb8  @ 0x728eb8
bool FUN_00728eb8(int param_1)

{
  short sVar1;
  
  switch(*(undefined2 *)(param_1 + 0x1c)) {
  case 1:
    goto LAB_00728f7c;
  case 2:
    break;
  case 3:
    goto LAB_00728f1c;
  case 4:
    goto LAB_00728eec;
  case 5:
LAB_00728f7c:
    sVar1 = *(short *)(param_1 + 0x1e);
    if (sVar1 == 2 || sVar1 == 6) {
      return (bool)2;
    }
    if (sVar1 == 3 || sVar1 == 7) {
      return (bool)3;
    }
    return sVar1 == 4 || sVar1 == 8;
  case 6:
    break;
  case 7:
LAB_00728f1c:
    sVar1 = *(short *)(param_1 + 0x1e);
    if (sVar1 == 1 || sVar1 == 5) {
      return (bool)3;
    }
    if (sVar1 != 2 && sVar1 != 6) {
      if (sVar1 == 4 || sVar1 == 8) {
        return (bool)2;
      }
      return false;
    }
    return true;
  case 8:
LAB_00728eec:
    sVar1 = *(short *)(param_1 + 0x1e);
    if (sVar1 == 1 || sVar1 == 5) {
      return true;
    }
    if (sVar1 == 2 || sVar1 == 6) {
      return (bool)3;
    }
    if (sVar1 == 3 || sVar1 == 7) {
      return (bool)2;
    }
    return false;
  default:
    goto switchD_00728ec4_default;
  }
  sVar1 = *(short *)(param_1 + 0x1e);
  if (sVar1 == 1 || sVar1 == 5) {
    return (bool)2;
  }
  if (sVar1 == 3 || sVar1 == 7) {
    return true;
  }
  if (sVar1 == 4 || sVar1 == 8) {
    return (bool)3;
  }
switchD_00728ec4_default:
  return false;
}

// ---- FUN_0072bd54  @ 0x72bd54
uint FUN_0072bd54(int *param_1)

{
  uint uVar1;
  void *pvVar2;
  undefined4 local_18;
  undefined4 local_14 [2];
  
  if (param_1[0x11] == 0) {
    pvVar2 = _TIFFmalloc(0x1818);
    param_1[0x11] = (int)pvVar2;
    if (pvVar2 == (void *)0x0) {
      TIFFErrorExt(*(undefined4 *)(*param_1 + 0x264),s_initYCbCrConversion_0094ee6c,
                   "No space for YCbCr->RGB conversion state");
      return 0;
    }
  }
  TIFFGetFieldDefaulted(*param_1,0x211,local_14);
  TIFFGetFieldDefaulted(*param_1,0x214,&local_18);
  uVar1 = TIFFYCbCrToRGBInit(param_1[0x11],local_14[0],local_18);
  return ~uVar1 >> 0x1f;
}

// ---- FUN_0072bdf0  @ 0x72bdf0
undefined4 FUN_0072bdf0(int *param_1)

{
  int iVar1;
  ushort *puVar2;
  byte bVar3;
  byte bVar4;
  byte bVar5;
  byte bVar6;
  byte bVar7;
  byte bVar8;
  byte bVar9;
  byte bVar10;
  byte bVar11;
  byte bVar12;
  byte bVar13;
  byte bVar14;
  byte bVar15;
  byte bVar16;
  ushort uVar17;
  ushort uVar18;
  ushort uVar19;
  ushort uVar20;
  ushort uVar21;
  ushort uVar22;
  ushort uVar23;
  undefined1 uVar24;
  size_t sVar25;
  void *pvVar26;
  int iVar27;
  undefined4 uVar28;
  int iVar29;
  uint uVar30;
  int iVar31;
  uint *puVar32;
  uint uVar33;
  uint uVar34;
  undefined4 uVar35;
  int iVar36;
  int iVar37;
  int iVar38;
  int iVar39;
  int iVar40;
  int iVar41;
  
  if (6 < *(ushort *)(param_1 + 8)) {
    return 1;
  }
  uVar33 = 1 << ((int)(short)param_1[8] & 0xffU);
  if ((uVar33 & 100) == 0) {
    if ((uVar33 & 8) != 0) {
      uVar33 = (uint)*(ushort *)(param_1 + 6);
      iVar39 = param_1[9];
      iVar36 = param_1[10];
      iVar38 = 1 << (uVar33 & 0xff);
      iVar40 = param_1[0xb];
      iVar37 = 0;
      iVar41 = iVar38;
      do {
        if (iVar41 < 1) {
          uVar35 = *(undefined4 *)(*param_1 + 0x264);
          uVar28 = TIFFFileName(*param_1);
          TIFFWarningExt(uVar35,uVar28,"Assuming 8-bit colormap");
          uVar33 = (uint)*(ushort *)(param_1 + 6);
          goto LAB_0072bf4c;
        }
      } while (((*(ushort *)(iVar39 + iVar37) < 0x100) && (*(ushort *)(iVar36 + iVar37) < 0x100)) &&
              (puVar2 = (ushort *)(iVar40 + iVar37), iVar37 = iVar37 + 2, iVar41 = iVar41 + -1,
              *puVar2 < 0x100));
      if (0 < iVar38) {
        iVar37 = iVar38 * 2;
        iVar41 = 0;
        do {
          iVar27 = iVar39 + iVar37 + iVar41;
          iVar29 = iVar36 + iVar37 + iVar41;
          iVar31 = iVar40 + iVar37 + iVar41;
          iVar41 = iVar41 + -2;
          *(ushort *)(iVar27 + -2) = *(ushort *)(iVar27 + -2) >> 8;
          *(ushort *)(iVar29 + -2) = *(ushort *)(iVar29 + -2) >> 8;
          *(ushort *)(iVar31 + -2) = *(ushort *)(iVar31 + -2) >> 8;
        } while (iVar41 != iVar38 * -2);
        uVar33 = (uint)*(ushort *)(param_1 + 6);
      }
LAB_0072bf4c:
      if (8 < uVar33) {
        return 1;
      }
      iVar38 = __divsi3(8,uVar33);
      iVar37 = param_1[9];
      iVar41 = param_1[10];
      iVar36 = param_1[0xb];
      pvVar26 = _TIFFmalloc((iVar38 + 1) * 0x400);
      param_1[0x10] = (int)pvVar26;
      if (pvVar26 != (void *)0x0) {
        puVar32 = (uint *)((int)pvVar26 + 0x400);
        uVar34 = 0;
        while( true ) {
          *(uint **)((int)pvVar26 + uVar34 * 4) = puVar32;
          switch(uVar33) {
          case 1:
            iVar38 = ((int)(uVar34 << 0x19) >> 0x1f) * -2;
            iVar39 = (uVar34 & 1) * 2;
            iVar40 = ((uVar34 & 0xff) >> 7) * 2;
            iVar27 = ((int)(uVar34 << 0x1a) >> 0x1f) * -2;
            uVar17 = *(ushort *)(iVar41 + iVar40);
            iVar29 = ((int)(uVar34 << 0x1b) >> 0x1f) * -2;
            uVar30 = uVar34 & 2;
            iVar31 = ((int)(uVar34 << 0x1c) >> 0x1f) * -2;
            iVar1 = ((int)(uVar34 << 0x1d) >> 0x1f) * -2;
            uVar18 = *(ushort *)(iVar41 + iVar27);
            uVar19 = *(ushort *)(iVar41 + iVar29);
            uVar20 = *(ushort *)(iVar41 + iVar31);
            uVar21 = *(ushort *)(iVar41 + iVar1);
            uVar22 = *(ushort *)(iVar41 + uVar30);
            uVar23 = *(ushort *)(iVar41 + iVar39);
            bVar3 = *(byte *)(iVar37 + iVar40);
            bVar4 = *(byte *)(iVar36 + iVar40);
            bVar5 = *(byte *)(iVar37 + iVar27);
            bVar6 = *(byte *)(iVar37 + iVar29);
            bVar7 = *(byte *)(iVar37 + iVar31);
            bVar8 = *(byte *)(iVar37 + iVar1);
            bVar9 = *(byte *)(iVar37 + uVar30);
            bVar10 = *(byte *)(iVar37 + iVar39);
            bVar11 = *(byte *)(iVar36 + iVar27);
            bVar12 = *(byte *)(iVar36 + uVar30);
            bVar13 = *(byte *)(iVar36 + iVar29);
            bVar14 = *(byte *)(iVar36 + iVar31);
            bVar15 = *(byte *)(iVar36 + iVar1);
            bVar16 = *(byte *)(iVar36 + iVar39);
            puVar32[1] = *(byte *)(iVar37 + iVar38) | 0xff000000 |
                         (*(ushort *)(iVar41 + iVar38) & 0xff) << 8 |
                         (uint)*(byte *)(iVar36 + iVar38) << 0x10;
            *puVar32 = bVar3 | 0xff000000 | (uVar17 & 0xff) << 8 | (uint)bVar4 << 0x10;
            puVar32[2] = bVar5 | 0xff000000 | (uVar18 & 0xff) << 8 | (uint)bVar11 << 0x10;
            puVar32[3] = bVar6 | 0xff000000 | (uVar19 & 0xff) << 8 | (uint)bVar13 << 0x10;
            puVar32[4] = bVar7 | 0xff000000 | (uVar20 & 0xff) << 8 | (uint)bVar14 << 0x10;
            puVar32[5] = bVar8 | 0xff000000 | (uVar21 & 0xff) << 8 | (uint)bVar15 << 0x10;
            puVar32[6] = bVar9 | 0xff000000 | (uVar22 & 0xff) << 8 | (uint)bVar12 << 0x10;
            puVar32[7] = bVar10 | 0xff000000 | (uVar23 & 0xff) << 8 | (uint)bVar16 << 0x10;
            puVar32 = puVar32 + 8;
            break;
          case 2:
            iVar38 = ((uVar34 & 0x3f) >> 4) * 2;
            iVar39 = ((uVar34 & 0xf) >> 2) * 2;
            iVar40 = (uVar34 & 3) * 2;
            iVar27 = ((uVar34 & 0xff) >> 6) * 2;
            uVar17 = *(ushort *)(iVar41 + iVar38);
            uVar18 = *(ushort *)(iVar41 + iVar39);
            uVar19 = *(ushort *)(iVar41 + iVar40);
            bVar3 = *(byte *)(iVar37 + iVar39);
            bVar4 = *(byte *)(iVar37 + iVar38);
            bVar5 = *(byte *)(iVar37 + iVar40);
            bVar6 = *(byte *)(iVar36 + iVar38);
            bVar7 = *(byte *)(iVar36 + iVar40);
            bVar8 = *(byte *)(iVar36 + iVar39);
            *puVar32 = *(byte *)(iVar37 + iVar27) | 0xff000000 |
                       (*(ushort *)(iVar41 + iVar27) & 0xff) << 8 |
                       (uint)*(byte *)(iVar36 + iVar27) << 0x10;
            puVar32[1] = bVar4 | 0xff000000 | (uVar17 & 0xff) << 8 | (uint)bVar6 << 0x10;
            puVar32[2] = bVar3 | 0xff000000 | (uVar18 & 0xff) << 8 | (uint)bVar8 << 0x10;
            puVar32[3] = bVar5 | 0xff000000 | (uVar19 & 0xff) << 8 | (uint)bVar7 << 0x10;
            puVar32 = puVar32 + 4;
            break;
          case 3:
            break;
          case 4:
            iVar38 = (uVar34 & 0xf) * 2;
            iVar39 = ((uVar34 & 0xff) >> 4) * 2;
            uVar17 = *(ushort *)(iVar41 + iVar38);
            bVar3 = *(byte *)(iVar37 + iVar38);
            bVar4 = *(byte *)(iVar36 + iVar38);
            *puVar32 = *(byte *)(iVar37 + iVar39) | 0xff000000 |
                       (*(ushort *)(iVar41 + iVar39) & 0xff) << 8 |
                       (uint)*(byte *)(iVar36 + iVar39) << 0x10;
            puVar32[1] = bVar3 | 0xff000000 | (uVar17 & 0xff) << 8 | (uint)bVar4 << 0x10;
            puVar32 = puVar32 + 2;
            break;
          case 5:
            break;
          case 6:
            break;
          case 7:
            break;
          case 8:
            iVar38 = (uVar34 & 0xff) * 2;
            *puVar32 = *(byte *)(iVar37 + iVar38) | 0xff000000 |
                       (*(ushort *)(iVar41 + iVar38) & 0xff) << 8 |
                       (uint)*(byte *)(iVar36 + iVar38) << 0x10;
            puVar32 = puVar32 + 1;
          }
          uVar34 = uVar34 + 1;
          if (uVar34 == 0x100) break;
          pvVar26 = (void *)param_1[0x10];
        }
        return 1;
      }
      uVar35 = *(undefined4 *)(*param_1 + 0x264);
      uVar28 = TIFFFileName(*param_1);
      TIFFErrorExt(uVar35,uVar28,"No space for Palette mapping table");
      return 0;
    }
    if ((uVar33 & 3) == 0) {
      return 1;
    }
    uVar33 = (uint)*(ushort *)(param_1 + 6);
  }
  else {
    uVar33 = (uint)*(ushort *)(param_1 + 6);
    if (uVar33 == 8) {
      return 1;
    }
  }
  if (uVar33 == 0x10) {
    sVar25 = 0x100;
    iVar38 = 0xff;
  }
  else {
    sVar25 = 1 << (uVar33 & 0xff);
    iVar38 = sVar25 - 1;
  }
  pvVar26 = _TIFFmalloc(sVar25);
  param_1[0xe] = (int)pvVar26;
  if (pvVar26 == (void *)0x0) {
    uVar35 = *(undefined4 *)(*param_1 + 0x264);
    uVar28 = TIFFFileName(*param_1);
    TIFFErrorExt(uVar35,uVar28,"No space for photometric conversion table");
    return 0;
  }
  if ((short)param_1[8] == 0) {
    if (-1 < iVar38) {
      iVar37 = iVar38 * 0xff;
      iVar41 = 0;
      while( true ) {
        uVar24 = __divsi3(iVar37,iVar38);
        iVar37 = iVar37 + -0xff;
        *(undefined1 *)((int)pvVar26 + iVar41) = uVar24;
        iVar41 = iVar41 + 1;
        if (iVar38 < iVar41) break;
        pvVar26 = (void *)param_1[0xe];
      }
    }
  }
  else if (-1 < iVar38) {
    iVar41 = 0;
    iVar37 = iVar41;
    while( true ) {
      uVar24 = __divsi3(iVar37,iVar38);
      iVar37 = iVar37 + 0xff;
      *(undefined1 *)((int)pvVar26 + iVar41) = uVar24;
      iVar41 = iVar41 + 1;
      if (iVar38 < iVar41) break;
      pvVar26 = (void *)param_1[0xe];
    }
  }
  uVar17 = *(ushort *)(param_1 + 6);
  if ((0x10 < uVar17) || (1 < *(ushort *)(param_1 + 8))) {
    return 1;
  }
  iVar38 = __divsi3(8,uVar17);
  iVar37 = param_1[0xe];
  if (iVar38 == 0) {
    sVar25 = 0x800;
  }
  else {
    sVar25 = (iVar38 + 1) * 0x400;
  }
  pvVar26 = _TIFFmalloc(sVar25);
  param_1[0xf] = (int)pvVar26;
  if (pvVar26 == (void *)0x0) {
    uVar35 = *(undefined4 *)(*param_1 + 0x264);
    uVar28 = TIFFFileName(*param_1);
    TIFFErrorExt(uVar35,uVar28,"No space for B&W mapping table");
    return 0;
  }
  puVar32 = (uint *)((int)pvVar26 + 0x400);
  uVar33 = 0;
  do {
    *(uint **)((int)pvVar26 + uVar33 * 4) = puVar32;
    switch(uVar17) {
    case 1:
      uVar34 = (uint)*(byte *)(iVar37 + ((int)uVar33 >> 7));
      *puVar32 = uVar34 | 0xff000000 | uVar34 << 8 | uVar34 << 0x10;
      uVar34 = (uint)*(byte *)(iVar37 - ((int)(uVar33 << 0x19) >> 0x1f));
      puVar32[1] = uVar34 | 0xff000000 | uVar34 << 8 | uVar34 << 0x10;
      uVar34 = (uint)*(byte *)(iVar37 - ((int)(uVar33 << 0x1a) >> 0x1f));
      puVar32[2] = uVar34 | 0xff000000 | uVar34 << 8 | uVar34 << 0x10;
      uVar34 = (uint)*(byte *)(iVar37 - ((int)(uVar33 << 0x1b) >> 0x1f));
      puVar32[3] = uVar34 | 0xff000000 | uVar34 << 8 | uVar34 << 0x10;
      uVar34 = (uint)*(byte *)(iVar37 + ((uVar33 & 0xf) >> 3));
      puVar32[4] = uVar34 | 0xff000000 | uVar34 << 8 | uVar34 << 0x10;
      uVar34 = (uint)*(byte *)(iVar37 + ((uVar33 & 7) >> 2));
      puVar32[5] = uVar34 | 0xff000000 | uVar34 << 8 | uVar34 << 0x10;
      uVar34 = (uint)*(byte *)(iVar37 + ((uVar33 & 3) >> 1));
      puVar32[6] = uVar34 | 0xff000000 | uVar34 << 8 | uVar34 << 0x10;
      uVar34 = (uint)*(byte *)(iVar37 + (uVar33 & 1));
      puVar32[7] = uVar34 | 0xff000000 | uVar34 << 8 | uVar34 << 0x10;
      puVar32 = puVar32 + 8;
      break;
    case 2:
      uVar34 = (uint)*(byte *)(iVar37 + ((int)uVar33 >> 6));
      *puVar32 = uVar34 | 0xff000000 | uVar34 << 8 | uVar34 << 0x10;
      uVar34 = (uint)*(byte *)(iVar37 + ((uVar33 & 0x3f) >> 4));
      puVar32[1] = uVar34 | 0xff000000 | uVar34 << 8 | uVar34 << 0x10;
      uVar34 = (uint)*(byte *)(iVar37 + ((uVar33 & 0xf) >> 2));
      puVar32[2] = uVar34 | 0xff000000 | uVar34 << 8 | uVar34 << 0x10;
      uVar34 = (uint)*(byte *)(iVar37 + (uVar33 & 3));
      puVar32[3] = uVar34 | 0xff000000 | uVar34 << 8 | uVar34 << 0x10;
      puVar32 = puVar32 + 4;
      break;
    case 3:
      break;
    case 4:
      uVar34 = (uint)*(byte *)(iVar37 + ((int)uVar33 >> 4));
      *puVar32 = uVar34 | 0xff000000 | uVar34 << 8 | uVar34 << 0x10;
      uVar34 = (uint)*(byte *)(iVar37 + (uVar33 & 0xf));
      puVar32[1] = uVar34 | 0xff000000 | uVar34 << 8 | uVar34 << 0x10;
      puVar32 = puVar32 + 2;
      break;
    case 5:
      break;
    case 6:
      break;
    case 7:
      break;
    case 8:
      goto LAB_0072c590;
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
LAB_0072c590:
      uVar34 = (uint)*(byte *)(iVar37 + uVar33);
      *puVar32 = uVar34 | 0xff000000 | uVar34 << 8 | uVar34 << 0x10;
      puVar32 = puVar32 + 1;
    }
    uVar33 = uVar33 + 1;
    if (uVar33 == 0x100) {
      _TIFFfree(param_1[0xe]);
      param_1[0xe] = 0;
      return 1;
    }
    pvVar26 = (void *)param_1[0xf];
  } while( true );
}

// ---- FUN_0072dc0c  @ 0x72dc0c
void FUN_0072dc0c(int param_1,uint *param_2,undefined4 param_3,undefined4 param_4,int param_5,
                 int param_6,int param_7,int param_8,undefined1 *param_9)

{
  undefined1 *puVar1;
  int iVar2;
  uint *puVar3;
  uint *local_54;
  int local_40;
  int local_3c;
  uint local_38;
  undefined4 local_34;
  undefined4 local_30;
  undefined4 local_2c [2];
  
  if (param_6 != 0) {
    local_54 = param_2;
    while( true ) {
      puVar1 = param_9;
      iVar2 = param_5;
      puVar3 = local_54;
      if (param_5 != 0) {
        do {
          TIFFCIELabToXYZ(*(undefined4 *)(param_1 + 0x48),*puVar1,(int)(char)puVar1[1],
                          (int)(char)puVar1[2],local_2c,&local_30,&local_34);
          TIFFXYZToRGB(*(undefined4 *)(param_1 + 0x48),local_2c[0],local_30,local_34,&local_38,
                       &local_3c,&local_40);
          iVar2 = iVar2 + -1;
          *puVar3 = local_38 | 0xff000000 | local_3c << 8 | local_40 << 0x10;
          puVar1 = puVar1 + 3;
          puVar3 = puVar3 + 1;
        } while (iVar2 != 0);
        local_54 = local_54 + param_5;
        param_9 = param_9 + param_5 * 3;
      }
      param_6 = param_6 + -1;
      if (param_6 == 0) break;
      local_54 = local_54 + param_8;
      param_9 = param_9 + param_7 * 3;
    }
  }
  return;
}

// ---- FUN_0072dd58  @ 0x72dd58
void FUN_0072dd58(int param_1,uint *param_2,undefined4 param_3,undefined4 param_4,int param_5,
                 int param_6,int param_7,int param_8,undefined1 *param_9)

{
  int iVar1;
  uint *puVar2;
  undefined1 *puVar3;
  int local_34;
  int local_30;
  uint local_2c [2];
  
  puVar3 = param_9;
  iVar1 = param_5;
  puVar2 = param_2;
  while( true ) {
    do {
      TIFFYCbCrtoRGB(*(undefined4 *)(param_1 + 0x44),*puVar3,puVar3[1],puVar3[2],local_2c,&local_30,
                     &local_34);
      iVar1 = iVar1 + -1;
      *param_2 = local_2c[0] | 0xff000000 | local_30 << 8 | local_34 << 0x10;
      puVar3 = puVar3 + 3;
      param_2 = param_2 + 1;
    } while (iVar1 != 0);
    param_6 = param_6 + -1;
    if (param_6 == 0) break;
    param_2 = puVar2 + param_8 + param_5;
    puVar3 = param_9 + param_7 * 3 + param_5 * 3;
    iVar1 = param_5;
    param_9 = puVar3;
    puVar2 = param_2;
  }
  return;
}

// ---- FUN_0072de20  @ 0x72de20
void FUN_0072de20(int param_1,uint *param_2,undefined4 param_3,undefined4 param_4,int param_5,
                 uint param_6,int param_7,int param_8,undefined1 *param_9)

{
  undefined1 *puVar1;
  undefined1 uVar2;
  undefined1 uVar3;
  undefined4 uVar4;
  int iVar5;
  undefined1 *puVar6;
  int iVar7;
  uint *local_4c;
  uint *local_48;
  uint local_44;
  uint local_34;
  int local_30;
  uint local_2c [2];
  
  local_4c = param_2;
  if (1 < param_6) {
    local_48 = param_2 + param_8 + param_5;
    local_44 = param_6;
    while( true ) {
      iVar5 = 0;
      puVar6 = param_9;
      iVar7 = param_5;
      do {
        uVar2 = puVar6[2];
        uVar3 = puVar6[3];
        TIFFYCbCrtoRGB(*(undefined4 *)(param_1 + 0x44),param_9[iVar5],uVar2,uVar3,local_2c,&local_30
                       ,&local_34);
        uVar4 = *(undefined4 *)(param_1 + 0x44);
        *(uint *)((int)local_4c + iVar5) =
             local_2c[0] | 0xff000000 | local_30 << 8 | local_34 << 0x10;
        puVar1 = puVar6 + 1;
        puVar6 = puVar6 + 4;
        TIFFYCbCrtoRGB(uVar4,*puVar1,uVar2,uVar3,&local_34,&local_30,local_2c);
        iVar7 = iVar7 + -1;
        *(uint *)((int)local_48 + iVar5) =
             local_34 | 0xff000000 | local_30 << 8 | local_2c[0] << 0x10;
        iVar5 = iVar5 + 4;
      } while (iVar7 != 0);
      local_44 = local_44 - 2;
      local_4c = local_4c + param_8 * 2 + param_5 * 2;
      param_9 = param_9 + param_5 * 4 + (param_7 / 2) * 4;
      if (local_44 < 2) break;
      local_48 = local_48 + param_8 * 2 + param_5 * 2;
    }
    param_6 = param_6 & 1;
  }
  if (param_6 == 1) {
    do {
      puVar6 = param_9 + 2;
      puVar1 = param_9 + 3;
      uVar2 = *param_9;
      param_9 = param_9 + 4;
      TIFFYCbCrtoRGB(*(undefined4 *)(param_1 + 0x44),uVar2,*puVar6,*puVar1,local_2c,&local_30,
                     &local_34);
      param_5 = param_5 + -1;
      *local_4c = local_2c[0] | 0xff000000 | local_30 << 8 | local_34 << 0x10;
      local_4c = local_4c + 1;
    } while (param_5 != 0);
  }
  return;
}

// ---- FUN_0072dff8  @ 0x72dff8
void FUN_0072dff8(int param_1,uint *param_2,undefined4 param_3,undefined4 param_4,uint param_5,
                 int param_6,int param_7,int param_8,undefined1 *param_9)

{
  uint uVar1;
  undefined1 *puVar2;
  undefined1 *puVar3;
  undefined1 uVar4;
  undefined1 uVar5;
  undefined4 uVar6;
  undefined1 *puVar7;
  uint uVar8;
  uint *local_54;
  uint local_34;
  int local_30;
  uint local_2c [2];
  
  uVar1 = param_5 >> 1;
  puVar7 = param_9;
  uVar8 = uVar1;
  local_54 = param_2;
  while( true ) {
    do {
      uVar4 = puVar7[2];
      uVar5 = puVar7[3];
      TIFFYCbCrtoRGB(*(undefined4 *)(param_1 + 0x44),*puVar7,uVar4,uVar5,local_2c,&local_30,
                     &local_34);
      uVar6 = *(undefined4 *)(param_1 + 0x44);
      *param_2 = local_2c[0] | 0xff000000 | local_30 << 8 | local_34 << 0x10;
      TIFFYCbCrtoRGB(uVar6,puVar7[1],uVar4,uVar5,&local_34,&local_30,local_2c);
      uVar8 = uVar8 - 1;
      param_2[1] = local_34 | 0xff000000 | local_30 << 8 | local_2c[0] << 0x10;
      param_2 = param_2 + 2;
      puVar7 = puVar7 + 4;
    } while (uVar8 != 0);
    param_2 = local_54 + uVar1 * 2;
    puVar7 = param_9 + uVar1 * 4;
    if ((param_5 & 1) != 0) {
      param_2 = param_2 + 1;
      puVar2 = puVar7 + 2;
      puVar3 = puVar7 + 3;
      puVar7 = puVar7 + 4;
      TIFFYCbCrtoRGB(*(undefined4 *)(param_1 + 0x44),param_9[uVar1 * 4],*puVar2,*puVar3,local_2c,
                     &local_30,&local_34);
      local_54[uVar1 * 2] = local_2c[0] | 0xff000000 | local_30 << 8 | local_34 << 0x10;
    }
    if (param_6 == 1) break;
    param_6 = param_6 + -1;
    param_2 = param_2 + param_8;
    puVar7 = puVar7 + param_7 * 2;
    uVar8 = uVar1;
    local_54 = param_2;
    param_9 = puVar7;
  }
  return;
}

// ---- FUN_0072e1a8  @ 0x72e1a8
void FUN_0072e1a8(int param_1,uint *param_2,undefined4 param_3,undefined4 param_4,uint param_5,
                 uint param_6,int param_7,int param_8,undefined1 *param_9)

{
  undefined1 *puVar1;
  undefined1 uVar2;
  undefined1 uVar3;
  int iVar4;
  int iVar5;
  undefined1 *puVar6;
  uint *puVar7;
  uint uVar8;
  uint *puVar9;
  undefined4 uVar10;
  uint local_5c;
  uint *local_58;
  uint *local_54;
  uint local_50;
  uint local_34;
  int local_30;
  uint local_2c [2];
  
  local_58 = param_2;
  if (1 < param_6) {
    iVar5 = param_5 + param_8 * 2;
    iVar4 = (param_5 - 2 >> 1) + 1;
    local_50 = param_6;
    local_54 = param_2 + param_8 + param_5;
    while( true ) {
      uVar8 = param_5;
      if (1 < param_5) {
        local_5c = param_5;
        puVar6 = param_9;
        puVar7 = local_54;
        puVar9 = local_58;
        do {
          uVar2 = puVar6[5];
          local_5c = local_5c - 2;
          uVar3 = puVar6[4];
          TIFFYCbCrtoRGB(*(undefined4 *)(param_1 + 0x44),*puVar6,uVar3,uVar2,local_2c,&local_30,
                         &local_34);
          uVar10 = *(undefined4 *)(param_1 + 0x44);
          *puVar9 = local_2c[0] | 0xff000000 | local_30 << 8 | local_34 << 0x10;
          TIFFYCbCrtoRGB(uVar10,puVar6[1],uVar3,uVar2,&local_34,&local_30,local_2c);
          uVar10 = *(undefined4 *)(param_1 + 0x44);
          puVar9[1] = local_34 | 0xff000000 | local_30 << 8 | local_2c[0] << 0x10;
          puVar9 = puVar9 + 2;
          TIFFYCbCrtoRGB(uVar10,puVar6[2],uVar3,uVar2,local_2c,&local_30,&local_34);
          uVar10 = *(undefined4 *)(param_1 + 0x44);
          *puVar7 = local_2c[0] | 0xff000000 | local_30 << 8 | local_34 << 0x10;
          puVar1 = puVar6 + 3;
          puVar6 = puVar6 + 6;
          TIFFYCbCrtoRGB(uVar10,*puVar1,uVar3,uVar2,&local_34,&local_30,local_2c);
          puVar7[1] = local_34 | 0xff000000 | local_30 << 8 | local_2c[0] << 0x10;
          puVar7 = puVar7 + 2;
        } while (1 < local_5c);
        param_9 = param_9 + iVar4 * 6;
        local_54 = local_54 + iVar4 * 2;
        local_58 = local_58 + iVar4 * 2;
        uVar8 = param_5 - 2 & 1;
      }
      if (uVar8 == 1) {
        uVar2 = param_9[4];
        uVar3 = param_9[5];
        TIFFYCbCrtoRGB(*(undefined4 *)(param_1 + 0x44),*param_9,uVar2,uVar3,local_2c,&local_30,
                       &local_34);
        uVar10 = *(undefined4 *)(param_1 + 0x44);
        *local_58 = local_2c[0] | 0xff000000 | local_30 << 8 | local_34 << 0x10;
        puVar6 = param_9 + 2;
        param_9 = param_9 + 6;
        TIFFYCbCrtoRGB(uVar10,*puVar6,uVar2,uVar3,&local_34,&local_30,local_2c);
        *local_54 = local_34 | 0xff000000 | local_30 << 8 | local_2c[0] << 0x10;
        local_58 = local_58 + 1;
        local_54 = local_54 + 1;
      }
      local_50 = local_50 - 2;
      local_58 = local_58 + iVar5;
      param_9 = param_9 + (param_7 / 2) * 6;
      if (local_50 < 2) break;
      local_54 = local_54 + iVar5;
    }
    param_6 = param_6 & 1;
  }
  if (param_6 == 1) {
    if (1 < param_5) {
      puVar6 = param_9;
      puVar7 = local_58;
      uVar8 = param_5;
      do {
        uVar2 = puVar6[4];
        uVar8 = uVar8 - 2;
        uVar3 = puVar6[5];
        TIFFYCbCrtoRGB(*(undefined4 *)(param_1 + 0x44),*puVar6,uVar2,uVar3,local_2c,&local_30,
                       &local_34);
        uVar10 = *(undefined4 *)(param_1 + 0x44);
        *puVar7 = local_2c[0] | 0xff000000 | local_30 << 8 | local_34 << 0x10;
        puVar1 = puVar6 + 1;
        puVar6 = puVar6 + 6;
        TIFFYCbCrtoRGB(uVar10,*puVar1,uVar2,uVar3,&local_34,&local_30,local_2c);
        puVar7[1] = local_34 | 0xff000000 | local_30 << 8 | local_2c[0] << 0x10;
        puVar7 = puVar7 + 2;
      } while (1 < uVar8);
      uVar8 = param_5 - 2;
      param_5 = uVar8 & 1;
      iVar4 = (uVar8 >> 1) + 1;
      local_58 = local_58 + iVar4 * 2;
      param_9 = param_9 + iVar4 * 6;
    }
    if (param_5 == 1) {
      TIFFYCbCrtoRGB(*(undefined4 *)(param_1 + 0x44),*param_9,param_9[4],param_9[5],local_2c,
                     &local_30,&local_34);
      *local_58 = local_2c[0] | 0xff000000 | local_30 << 8 | local_34 << 0x10;
    }
  }
  return;
}

// ---- FUN_0072e644  @ 0x72e644
void FUN_0072e644(int param_1,uint *param_2,undefined4 param_3,undefined4 param_4,uint param_5,
                 int param_6,int param_7,int param_8,undefined1 *param_9)

{
  undefined1 uVar1;
  undefined1 uVar2;
  uint uVar3;
  undefined1 *puVar4;
  undefined4 uVar5;
  uint local_58;
  uint *local_54;
  uint local_34;
  int local_30;
  uint local_2c [2];
  
  uVar3 = param_5 & 3;
  param_5 = param_5 >> 2;
  puVar4 = param_9;
  local_58 = param_5;
  local_54 = param_2;
  do {
    do {
      uVar1 = puVar4[5];
      uVar2 = puVar4[4];
      TIFFYCbCrtoRGB(*(undefined4 *)(param_1 + 0x44),*puVar4,uVar2,uVar1,local_2c,&local_30,
                     &local_34);
      uVar5 = *(undefined4 *)(param_1 + 0x44);
      *param_2 = local_2c[0] | 0xff000000 | local_30 << 8 | local_34 << 0x10;
      TIFFYCbCrtoRGB(uVar5,puVar4[1],uVar2,uVar1,&local_34,&local_30,local_2c);
      uVar5 = *(undefined4 *)(param_1 + 0x44);
      param_2[1] = local_34 | 0xff000000 | local_30 << 8 | local_2c[0] << 0x10;
      TIFFYCbCrtoRGB(uVar5,puVar4[2],uVar2,uVar1,local_2c,&local_30,&local_34);
      uVar5 = *(undefined4 *)(param_1 + 0x44);
      param_2[2] = local_2c[0] | 0xff000000 | local_30 << 8 | local_34 << 0x10;
      TIFFYCbCrtoRGB(uVar5,puVar4[3],uVar2,uVar1,&local_34,&local_30,local_2c);
      local_58 = local_58 - 1;
      param_2[3] = local_34 | 0xff000000 | local_30 << 8 | local_2c[0] << 0x10;
      param_2 = param_2 + 4;
      puVar4 = puVar4 + 6;
    } while (local_58 != 0);
    local_54 = local_54 + param_5 * 4;
    param_9 = param_9 + param_5 * 6;
    puVar4 = param_9;
    param_2 = local_54;
    if (uVar3 != 0) {
      uVar1 = param_9[4];
      uVar2 = param_9[5];
      if (uVar3 == 2) {
LAB_0072e898:
        TIFFYCbCrtoRGB(*(undefined4 *)(param_1 + 0x44),param_9[1],uVar1,uVar2,&local_34,&local_30,
                       local_2c);
        local_54[1] = local_34 | 0xff000000 | local_30 << 8 | local_2c[0] << 0x10;
      }
      else if (uVar3 == 3) {
        TIFFYCbCrtoRGB(*(undefined4 *)(param_1 + 0x44),param_9[2],uVar1,uVar2,local_2c,&local_30,
                       &local_34);
        local_54[2] = local_2c[0] | 0xff000000 | local_30 << 8 | local_34 << 0x10;
        goto LAB_0072e898;
      }
      puVar4 = param_9 + 6;
      TIFFYCbCrtoRGB(*(undefined4 *)(param_1 + 0x44),*param_9,uVar1,uVar2,local_2c,&local_30,
                     &local_34);
      param_2 = local_54 + uVar3;
      *local_54 = local_2c[0] | 0xff000000 | local_30 << 8 | local_34 << 0x10;
    }
    param_6 = param_6 + -1;
    if (param_6 == 0) {
      return;
    }
    param_2 = param_2 + param_8;
    puVar4 = puVar4 + param_7;
    local_58 = param_5;
    local_54 = param_2;
    param_9 = puVar4;
  } while( true );
}

// ---- FUN_0072e8dc  @ 0x72e8dc
void FUN_0072e8dc(int param_1,uint *param_2,undefined4 param_3,undefined4 param_4,uint param_5,
                 uint param_6,int param_7,int param_8,undefined1 *param_9)

{
  undefined1 *puVar1;
  undefined1 uVar2;
  undefined1 uVar3;
  uint uVar4;
  undefined4 uVar5;
  int iVar6;
  undefined1 *puVar7;
  uint *puVar8;
  uint *local_5c;
  uint *local_58;
  uint local_54;
  int local_50;
  undefined1 *local_4c;
  uint local_34;
  int local_30;
  uint local_2c [2];
  
  param_7 = param_7 * 10;
  iVar6 = param_5 + param_8 * 2;
  local_58 = param_2 + param_8 + param_5;
  if (param_7 < 0) {
    param_7 = param_7 + 3;
  }
  if ((param_6 & 3) != 0) {
LAB_0072ec0c:
    uVar4 = param_5;
    do {
      while (uVar4 == 0) {
LAB_0072ec40:
        if (param_6 < 3) {
          return;
        }
        param_6 = param_6 - 2;
        if (param_6 == 0) {
          return;
        }
        param_2 = param_2 + iVar6;
        param_9 = param_9 + (param_7 >> 2);
        local_58 = local_58 + iVar6;
        uVar4 = param_5;
      }
      uVar2 = param_9[8];
      uVar3 = param_9[9];
      if (uVar4 == 2) {
LAB_0072edb4:
        if (param_6 != 1) {
          TIFFYCbCrtoRGB(*(undefined4 *)(param_1 + 0x44),param_9[5],uVar2,uVar3,&local_34,&local_30,
                         local_2c);
          local_58[1] = local_34 | 0xff000000 | local_30 << 8 | local_2c[0] << 0x10;
        }
        TIFFYCbCrtoRGB(*(undefined4 *)(param_1 + 0x44),param_9[1],uVar2,uVar3,local_2c,&local_30,
                       &local_34);
        param_2[1] = local_2c[0] | 0xff000000 | local_30 << 8 | local_34 << 0x10;
      }
      else {
        if (uVar4 == 3) {
LAB_0072ed2c:
          if (param_6 != 1) {
            TIFFYCbCrtoRGB(*(undefined4 *)(param_1 + 0x44),param_9[6],uVar2,uVar3,&local_34,
                           &local_30,local_2c);
            local_58[2] = local_34 | 0xff000000 | local_30 << 8 | local_2c[0] << 0x10;
          }
          TIFFYCbCrtoRGB(*(undefined4 *)(param_1 + 0x44),param_9[2],uVar2,uVar3,local_2c,&local_30,
                         &local_34);
          param_2[2] = local_2c[0] | 0xff000000 | local_30 << 8 | local_34 << 0x10;
          goto LAB_0072edb4;
        }
        if (uVar4 != 1) {
          if (param_6 != 1) {
            TIFFYCbCrtoRGB(*(undefined4 *)(param_1 + 0x44),param_9[7],uVar2,uVar3,&local_34,
                           &local_30,local_2c);
            local_58[3] = local_34 | 0xff000000 | local_30 << 8 | local_2c[0] << 0x10;
          }
          TIFFYCbCrtoRGB(*(undefined4 *)(param_1 + 0x44),param_9[3],uVar2,uVar3,local_2c,&local_30,
                         &local_34);
          param_2[3] = local_2c[0] | 0xff000000 | local_30 << 8 | local_34 << 0x10;
          goto LAB_0072ed2c;
        }
      }
      if (param_6 != 1) {
        TIFFYCbCrtoRGB(*(undefined4 *)(param_1 + 0x44),param_9[4],uVar2,uVar3,&local_34,&local_30,
                       local_2c);
        *local_58 = local_34 | 0xff000000 | local_30 << 8 | local_2c[0] << 0x10;
      }
      TIFFYCbCrtoRGB(*(undefined4 *)(param_1 + 0x44),*param_9,uVar2,uVar3,local_2c,&local_30,
                     &local_34);
      *param_2 = local_2c[0] | 0xff000000 | local_30 << 8 | local_34 << 0x10;
      if (uVar4 < 4) {
        param_9 = param_9 + 10;
        param_2 = param_2 + uVar4;
        local_58 = local_58 + uVar4;
        goto LAB_0072ec40;
      }
      param_2 = param_2 + 4;
      param_9 = param_9 + 10;
      local_58 = local_58 + 4;
      uVar4 = uVar4 - 4;
    } while( true );
  }
  if ((param_5 & 1) == 0) {
    if (1 < param_6) {
      param_5 = param_5 >> 2;
      local_4c = param_9;
      local_50 = 0;
      while( true ) {
        puVar8 = (uint *)((int)local_58 + local_50);
        local_5c = (uint *)((int)param_2 + local_50);
        puVar7 = local_4c;
        local_54 = param_5;
        do {
          uVar2 = puVar7[9];
          uVar3 = puVar7[8];
          TIFFYCbCrtoRGB(*(undefined4 *)(param_1 + 0x44),*puVar7,uVar3,uVar2,&local_34,&local_30,
                         local_2c);
          uVar5 = *(undefined4 *)(param_1 + 0x44);
          *local_5c = local_34 | 0xff000000 | local_30 << 8 | local_2c[0] << 0x10;
          TIFFYCbCrtoRGB(uVar5,puVar7[1],uVar3,uVar2,local_2c,&local_30,&local_34);
          uVar5 = *(undefined4 *)(param_1 + 0x44);
          local_5c[1] = local_2c[0] | 0xff000000 | local_30 << 8 | local_34 << 0x10;
          TIFFYCbCrtoRGB(uVar5,puVar7[2],uVar3,uVar2,&local_34,&local_30,local_2c);
          uVar5 = *(undefined4 *)(param_1 + 0x44);
          local_5c[2] = local_34 | 0xff000000 | local_30 << 8 | local_2c[0] << 0x10;
          TIFFYCbCrtoRGB(uVar5,puVar7[3],uVar3,uVar2,local_2c,&local_30,&local_34);
          uVar5 = *(undefined4 *)(param_1 + 0x44);
          local_5c[3] = local_2c[0] | 0xff000000 | local_30 << 8 | local_34 << 0x10;
          local_5c = local_5c + 4;
          TIFFYCbCrtoRGB(uVar5,puVar7[4],uVar3,uVar2,&local_34,&local_30,local_2c);
          uVar5 = *(undefined4 *)(param_1 + 0x44);
          *puVar8 = local_34 | 0xff000000 | local_30 << 8 | local_2c[0] << 0x10;
          TIFFYCbCrtoRGB(uVar5,puVar7[5],uVar3,uVar2,local_2c,&local_30,&local_34);
          uVar5 = *(undefined4 *)(param_1 + 0x44);
          puVar8[1] = local_2c[0] | 0xff000000 | local_30 << 8 | local_34 << 0x10;
          TIFFYCbCrtoRGB(uVar5,puVar7[6],uVar3,uVar2,&local_34,&local_30,local_2c);
          uVar5 = *(undefined4 *)(param_1 + 0x44);
          puVar8[2] = local_34 | 0xff000000 | local_30 << 8 | local_2c[0] << 0x10;
          puVar1 = puVar7 + 7;
          puVar7 = puVar7 + 10;
          TIFFYCbCrtoRGB(uVar5,*puVar1,uVar3,uVar2,local_2c,&local_30,&local_34);
          local_54 = local_54 - 1;
          puVar8[3] = local_2c[0] | 0xff000000 | local_30 << 8 | local_34 << 0x10;
          puVar8 = puVar8 + 4;
        } while (local_54 != 0);
        param_6 = param_6 - 2;
        local_50 = local_50 + param_5 * 0x10 + iVar6 * 4;
        if (param_6 < 2) break;
        local_4c = local_4c + (param_7 >> 2) + param_5 * 10;
      }
    }
  }
  else if (param_6 != 0) goto LAB_0072ec0c;
  return;
}

// ---- FUN_0072eef4  @ 0x72eef4
void FUN_0072eef4(int param_1,uint *param_2,undefined4 param_3,undefined4 param_4,uint param_5,
                 uint param_6,int param_7,int param_8,undefined1 *param_9)

{
  undefined1 *puVar1;
  undefined1 uVar2;
  undefined1 uVar3;
  int iVar4;
  undefined4 uVar5;
  int iVar6;
  undefined1 *puVar7;
  uint *puVar8;
  uint *local_6c;
  uint *local_68;
  uint *local_64;
  uint *local_60;
  uint *local_5c;
  uint *local_58;
  uint *local_54;
  uint local_50;
  int local_4c;
  undefined1 *local_48;
  uint local_34;
  int local_30;
  uint local_2c [2];
  
  iVar4 = param_8 + param_5;
  iVar6 = param_5 * 3 + param_8 * 4;
  param_7 = param_7 * 0x12;
  if (param_7 < 0) {
    param_7 = param_7 + 3;
  }
  local_64 = param_2 + iVar4;
  local_60 = local_64 + iVar4;
  local_5c = local_60 + iVar4;
  if ((param_6 & 3) == 0) {
    if ((param_5 & 3) == 0) {
      if (3 < param_6) {
        param_5 = param_5 >> 2;
        local_48 = param_9;
        local_4c = 0;
        while( true ) {
          puVar8 = (uint *)((int)local_5c + local_4c);
          local_58 = (uint *)((int)local_60 + local_4c);
          local_54 = (uint *)((int)local_64 + local_4c);
          local_6c = (uint *)((int)param_2 + local_4c);
          puVar7 = local_48;
          local_50 = param_5;
          do {
            uVar2 = puVar7[0x11];
            uVar3 = puVar7[0x10];
            TIFFYCbCrtoRGB(*(undefined4 *)(param_1 + 0x44),*puVar7,uVar3,uVar2,&local_34,&local_30,
                           local_2c);
            uVar5 = *(undefined4 *)(param_1 + 0x44);
            *local_6c = local_34 | 0xff000000 | local_30 << 8 | local_2c[0] << 0x10;
            TIFFYCbCrtoRGB(uVar5,puVar7[1],uVar3,uVar2,local_2c,&local_30,&local_34);
            uVar5 = *(undefined4 *)(param_1 + 0x44);
            local_6c[1] = local_2c[0] | 0xff000000 | local_30 << 8 | local_34 << 0x10;
            TIFFYCbCrtoRGB(uVar5,puVar7[2],uVar3,uVar2,&local_34,&local_30,local_2c);
            uVar5 = *(undefined4 *)(param_1 + 0x44);
            local_6c[2] = local_34 | 0xff000000 | local_30 << 8 | local_2c[0] << 0x10;
            TIFFYCbCrtoRGB(uVar5,puVar7[3],uVar3,uVar2,local_2c,&local_30,&local_34);
            uVar5 = *(undefined4 *)(param_1 + 0x44);
            local_6c[3] = local_2c[0] | 0xff000000 | local_30 << 8 | local_34 << 0x10;
            local_6c = local_6c + 4;
            TIFFYCbCrtoRGB(uVar5,puVar7[4],uVar3,uVar2,&local_34,&local_30,local_2c);
            uVar5 = *(undefined4 *)(param_1 + 0x44);
            *local_54 = local_34 | 0xff000000 | local_30 << 8 | local_2c[0] << 0x10;
            TIFFYCbCrtoRGB(uVar5,puVar7[5],uVar3,uVar2,local_2c,&local_30,&local_34);
            uVar5 = *(undefined4 *)(param_1 + 0x44);
            local_54[1] = local_2c[0] | 0xff000000 | local_30 << 8 | local_34 << 0x10;
            TIFFYCbCrtoRGB(uVar5,puVar7[6],uVar3,uVar2,&local_34,&local_30,local_2c);
            uVar5 = *(undefined4 *)(param_1 + 0x44);
            local_54[2] = local_34 | 0xff000000 | local_30 << 8 | local_2c[0] << 0x10;
            TIFFYCbCrtoRGB(uVar5,puVar7[7],uVar3,uVar2,local_2c,&local_30,&local_34);
            uVar5 = *(undefined4 *)(param_1 + 0x44);
            local_54[3] = local_2c[0] | 0xff000000 | local_30 << 8 | local_34 << 0x10;
            local_54 = local_54 + 4;
            TIFFYCbCrtoRGB(uVar5,puVar7[8],uVar3,uVar2,&local_34,&local_30,local_2c);
            uVar5 = *(undefined4 *)(param_1 + 0x44);
            *local_58 = local_34 | 0xff000000 | local_30 << 8 | local_2c[0] << 0x10;
            TIFFYCbCrtoRGB(uVar5,puVar7[9],uVar3,uVar2,local_2c,&local_30,&local_34);
            uVar5 = *(undefined4 *)(param_1 + 0x44);
            local_58[1] = local_2c[0] | 0xff000000 | local_30 << 8 | local_34 << 0x10;
            TIFFYCbCrtoRGB(uVar5,puVar7[10],uVar3,uVar2,&local_34,&local_30,local_2c);
            uVar5 = *(undefined4 *)(param_1 + 0x44);
            local_58[2] = local_34 | 0xff000000 | local_30 << 8 | local_2c[0] << 0x10;
            TIFFYCbCrtoRGB(uVar5,puVar7[0xb],uVar3,uVar2,local_2c,&local_30,&local_34);
            uVar5 = *(undefined4 *)(param_1 + 0x44);
            local_58[3] = local_2c[0] | 0xff000000 | local_30 << 8 | local_34 << 0x10;
            local_58 = local_58 + 4;
            TIFFYCbCrtoRGB(uVar5,puVar7[0xc],uVar3,uVar2,&local_34,&local_30,local_2c);
            uVar5 = *(undefined4 *)(param_1 + 0x44);
            *puVar8 = local_34 | 0xff000000 | local_30 << 8 | local_2c[0] << 0x10;
            TIFFYCbCrtoRGB(uVar5,puVar7[0xd],uVar3,uVar2,local_2c,&local_30,&local_34);
            uVar5 = *(undefined4 *)(param_1 + 0x44);
            puVar8[1] = local_2c[0] | 0xff000000 | local_30 << 8 | local_34 << 0x10;
            TIFFYCbCrtoRGB(uVar5,puVar7[0xe],uVar3,uVar2,&local_34,&local_30,local_2c);
            uVar5 = *(undefined4 *)(param_1 + 0x44);
            puVar8[2] = local_34 | 0xff000000 | local_30 << 8 | local_2c[0] << 0x10;
            puVar1 = puVar7 + 0xf;
            puVar7 = puVar7 + 0x12;
            TIFFYCbCrtoRGB(uVar5,*puVar1,uVar3,uVar2,local_2c,&local_30,&local_34);
            local_50 = local_50 - 1;
            puVar8[3] = local_2c[0] | 0xff000000 | local_30 << 8 | local_34 << 0x10;
            puVar8 = puVar8 + 4;
          } while (local_50 != 0);
          param_6 = param_6 - 4;
          local_4c = local_4c + param_5 * 0x10 + iVar6 * 4;
          if (param_6 < 4) break;
          local_48 = local_48 + (param_7 >> 2) + param_5 * 0x12;
        }
      }
    }
    else if (param_6 != 0) goto LAB_0072f428;
    return;
  }
LAB_0072f428:
  local_68 = param_2;
  do {
    if (param_5 != 0) {
      local_6c = (uint *)param_5;
      do {
        uVar2 = param_9[0x10];
        uVar3 = param_9[0x11];
        if (local_6c == (uint *)0x2) {
LAB_0072f70c:
          if (param_6 == 2) {
LAB_0072f79c:
            TIFFYCbCrtoRGB(*(undefined4 *)(param_1 + 0x44),param_9[5],uVar2,uVar3,&local_34,
                           &local_30,local_2c);
            local_64[1] = local_34 | 0xff000000 | local_30 << 8 | local_2c[0] << 0x10;
          }
          else {
            if (param_6 == 3) {
LAB_0072f760:
              TIFFYCbCrtoRGB(*(undefined4 *)(param_1 + 0x44),param_9[9],uVar2,uVar3,local_2c,
                             &local_30,&local_34);
              local_60[1] = local_2c[0] | 0xff000000 | local_30 << 8 | local_34 << 0x10;
              goto LAB_0072f79c;
            }
            if (param_6 != 1) {
              TIFFYCbCrtoRGB(*(undefined4 *)(param_1 + 0x44),param_9[0xd],uVar2,uVar3,&local_34,
                             &local_30,local_2c);
              local_5c[1] = local_34 | 0xff000000 | local_30 << 8 | local_2c[0] << 0x10;
              goto LAB_0072f760;
            }
          }
          TIFFYCbCrtoRGB(*(undefined4 *)(param_1 + 0x44),param_9[1],uVar2,uVar3,local_2c,&local_30,
                         &local_34);
          local_68[1] = local_2c[0] | 0xff000000 | local_30 << 8 | local_34 << 0x10;
        }
        else {
          if (local_6c == (uint *)0x3) {
LAB_0072f604:
            if (param_6 == 2) {
LAB_0072f694:
              TIFFYCbCrtoRGB(*(undefined4 *)(param_1 + 0x44),param_9[6],uVar2,uVar3,&local_34,
                             &local_30,local_2c);
              local_64[2] = local_34 | 0xff000000 | local_30 << 8 | local_2c[0] << 0x10;
            }
            else {
              if (param_6 == 3) {
LAB_0072f658:
                TIFFYCbCrtoRGB(*(undefined4 *)(param_1 + 0x44),param_9[10],uVar2,uVar3,local_2c,
                               &local_30,&local_34);
                local_60[2] = local_2c[0] | 0xff000000 | local_30 << 8 | local_34 << 0x10;
                goto LAB_0072f694;
              }
              if (param_6 != 1) {
                TIFFYCbCrtoRGB(*(undefined4 *)(param_1 + 0x44),param_9[0xe],uVar2,uVar3,&local_34,
                               &local_30,local_2c);
                local_5c[2] = local_34 | 0xff000000 | local_30 << 8 | local_2c[0] << 0x10;
                goto LAB_0072f658;
              }
            }
            TIFFYCbCrtoRGB(*(undefined4 *)(param_1 + 0x44),param_9[2],uVar2,uVar3,local_2c,&local_30
                           ,&local_34);
            local_68[2] = local_2c[0] | 0xff000000 | local_30 << 8 | local_34 << 0x10;
            goto LAB_0072f70c;
          }
          if (local_6c != (uint *)0x1) {
            if (param_6 == 2) {
LAB_0072f58c:
              TIFFYCbCrtoRGB(*(undefined4 *)(param_1 + 0x44),param_9[7],uVar2,uVar3,&local_34,
                             &local_30,local_2c);
              local_64[3] = local_34 | 0xff000000 | local_30 << 8 | local_2c[0] << 0x10;
            }
            else {
              if (param_6 == 3) {
LAB_0072f550:
                TIFFYCbCrtoRGB(*(undefined4 *)(param_1 + 0x44),param_9[0xb],uVar2,uVar3,local_2c,
                               &local_30,&local_34);
                local_60[3] = local_2c[0] | 0xff000000 | local_30 << 8 | local_34 << 0x10;
                goto LAB_0072f58c;
              }
              if (param_6 != 1) {
                TIFFYCbCrtoRGB(*(undefined4 *)(param_1 + 0x44),param_9[0xf],uVar2,uVar3,&local_34,
                               &local_30,local_2c);
                local_5c[3] = local_34 | 0xff000000 | local_30 << 8 | local_2c[0] << 0x10;
                goto LAB_0072f550;
              }
            }
            TIFFYCbCrtoRGB(*(undefined4 *)(param_1 + 0x44),param_9[3],uVar2,uVar3,local_2c,&local_30
                           ,&local_34);
            local_68[3] = local_2c[0] | 0xff000000 | local_30 << 8 | local_34 << 0x10;
            goto LAB_0072f604;
          }
        }
        if (param_6 == 2) {
LAB_0072f8a4:
          TIFFYCbCrtoRGB(*(undefined4 *)(param_1 + 0x44),param_9[4],uVar2,uVar3,&local_34,&local_30,
                         local_2c);
          *local_64 = local_34 | 0xff000000 | local_30 << 8 | local_2c[0] << 0x10;
        }
        else {
          if (param_6 == 3) {
LAB_0072f868:
            TIFFYCbCrtoRGB(*(undefined4 *)(param_1 + 0x44),param_9[8],uVar2,uVar3,local_2c,&local_30
                           ,&local_34);
            *local_60 = local_2c[0] | 0xff000000 | local_30 << 8 | local_34 << 0x10;
            goto LAB_0072f8a4;
          }
          if (param_6 != 1) {
            TIFFYCbCrtoRGB(*(undefined4 *)(param_1 + 0x44),param_9[0xc],uVar2,uVar3,&local_34,
                           &local_30,local_2c);
            *local_5c = local_34 | 0xff000000 | local_30 << 8 | local_2c[0] << 0x10;
            goto LAB_0072f868;
          }
        }
        TIFFYCbCrtoRGB(*(undefined4 *)(param_1 + 0x44),*param_9,uVar2,uVar3,local_2c,&local_30,
                       &local_34);
        *local_68 = local_2c[0] | 0xff000000 | local_30 << 8 | local_34 << 0x10;
        if (local_6c < 4) {
          param_9 = param_9 + 0x12;
          local_5c = local_5c + (int)local_6c;
          local_68 = local_68 + (int)local_6c;
          local_64 = local_64 + (int)local_6c;
          local_60 = local_60 + (int)local_6c;
          break;
        }
        param_9 = param_9 + 0x12;
        local_6c = (uint *)((int)local_6c - 4);
        local_68 = local_68 + 4;
        local_64 = local_64 + 4;
        local_60 = local_60 + 4;
        local_5c = local_5c + 4;
      } while (local_6c != (uint *)0x0);
    }
    if (param_6 < 5) {
      return;
    }
    param_6 = param_6 - 4;
    if (param_6 == 0) {
      return;
    }
    local_68 = local_68 + iVar6;
    local_64 = local_64 + iVar6;
    param_9 = param_9 + (param_7 >> 2);
    local_60 = local_60 + iVar6;
    local_5c = local_5c + iVar6;
  } while( true );
}

// ---- FUN_0072f978  @ 0x72f978
void FUN_0072f978(int param_1,uint *param_2,undefined4 param_3,undefined4 param_4,int param_5,
                 int param_6,int param_7,int param_8,int param_9,int param_10,int param_11)

{
  undefined1 *puVar1;
  undefined1 *puVar2;
  undefined1 *puVar3;
  int iVar4;
  uint *puVar5;
  int local_48;
  uint *local_44;
  int local_34;
  int local_30;
  uint local_2c [2];
  
  if (param_6 != 0) {
    local_48 = 0;
    local_44 = param_2;
    while( true ) {
      iVar4 = 0;
      puVar5 = local_44;
      do {
        puVar1 = (undefined1 *)(param_10 + local_48 + iVar4);
        puVar2 = (undefined1 *)(param_11 + local_48 + iVar4);
        puVar3 = (undefined1 *)(param_9 + local_48 + iVar4);
        iVar4 = iVar4 + 1;
        TIFFYCbCrtoRGB(*(undefined4 *)(param_1 + 0x44),*puVar3,*puVar1,*puVar2,local_2c,&local_30,
                       &local_34);
        *puVar5 = local_2c[0] | 0xff000000 | local_30 << 8 | local_34 << 0x10;
        puVar5 = puVar5 + 1;
      } while (param_5 != iVar4);
      param_6 = param_6 + -1;
      local_48 = local_48 + param_7 + param_5;
      if (param_6 == 0) break;
      local_44 = local_44 + param_8 + param_5;
    }
  }
  return;
}

// ---- FUN_0072fa80  @ 0x72fa80
undefined4 FUN_0072fa80(int *param_1,undefined4 *param_2,uint param_3,uint param_4)

{
  size_t sVar1;
  void *__s;
  uint uVar2;
  int iVar3;
  int iVar4;
  undefined4 uVar5;
  int extraout_r1;
  int extraout_r1_00;
  int extraout_r1_01;
  int extraout_r1_02;
  undefined4 uVar6;
  code *pcVar7;
  undefined4 *puVar8;
  undefined4 *puVar9;
  undefined4 *puVar10;
  undefined4 *puVar11;
  uint uVar12;
  int iVar13;
  int iVar14;
  int iVar15;
  uint uVar16;
  int iVar17;
  int iVar18;
  undefined4 *puVar19;
  int iVar20;
  int local_3c;
  int local_38;
  int local_30;
  ushort local_2c;
  undefined1 auStack_2a [6];
  
  iVar18 = *param_1;
  pcVar7 = (code *)param_1[0xd];
  uVar12 = param_1[4];
  sVar1 = TIFFStripSize(iVar18);
  __s = _TIFFmalloc(sVar1);
  if (__s == (void *)0x0) {
    uVar6 = *(undefined4 *)(iVar18 + 0x264);
    uVar5 = TIFFFileName(iVar18);
    TIFFErrorExt(uVar6,uVar5,"No space for strip buffer");
    uVar5 = 0;
  }
  else {
    sVar1 = TIFFStripSize(iVar18);
    _TIFFmemset(__s,0,sVar1);
    uVar2 = FUN_00728eb8(param_1);
    if ((uVar2 & 1) == 0) {
      iVar14 = 0;
      local_3c = 0;
    }
    else {
      iVar14 = param_4 - 1;
      local_3c = param_3 * -2;
    }
    TIFFGetFieldDefaulted(iVar18,0x116,&local_30);
    TIFFGetFieldDefaulted(iVar18,0x212,auStack_2a,&local_2c);
    iVar3 = TIFFNewScanlineSize(iVar18);
    if (param_3 < uVar12) {
      local_38 = uVar12 - param_3;
    }
    else {
      local_38 = 0;
    }
    if (param_4 != 0) {
      uVar12 = 0;
      while( true ) {
        iVar13 = local_30;
        iVar15 = param_1[0x13];
        __aeabi_uidivmod(uVar12 + iVar15,local_30);
        uVar16 = (uint)local_2c;
        iVar13 = iVar13 - extraout_r1_00;
        if (param_4 < iVar13 + uVar12) {
          iVar13 = param_4 - uVar12;
        }
        __aeabi_uidivmod(iVar13,uVar16);
        iVar17 = iVar13;
        if (extraout_r1_01 != 0) {
          iVar17 = (iVar13 + uVar16) - extraout_r1_01;
        }
        uVar5 = TIFFComputeStrip(iVar18,uVar12 + iVar15,0);
        __aeabi_uidivmod(uVar12 + param_1[0x13],local_30);
        iVar15 = TIFFReadEncodedStrip(iVar18,uVar5,__s,iVar3 * (iVar17 + extraout_r1_02));
        if ((iVar15 < 0) && (param_1[1] != 0)) {
          uVar5 = 0;
          goto joined_r0x0072fc98;
        }
        iVar4 = uVar12 + param_1[0x13];
        uVar12 = uVar12 + iVar13;
        uVar16 = param_3;
        iVar15 = iVar13;
        iVar17 = local_38;
        iVar20 = local_3c;
        __aeabi_uidivmod(iVar4,local_30);
        (*pcVar7)(param_1,(undefined4 *)(param_3 * 4 * iVar14 + (int)param_2),0,iVar14,uVar16,iVar15
                  ,iVar17,iVar20,(void *)(iVar3 * extraout_r1 + (int)__s));
        if ((uVar2 & 1) != 0) {
          iVar13 = -iVar13;
        }
        if (param_4 <= uVar12) break;
        iVar14 = iVar14 + iVar13;
      }
    }
    uVar5 = 1;
joined_r0x0072fc98:
    if (((uVar2 & 2) != 0) && (param_4 != 0)) {
      uVar12 = 0;
      puVar19 = param_2 + (param_3 - 1);
      do {
        puVar8 = puVar19;
        puVar10 = param_2;
        if (param_2 < puVar19) {
          do {
            uVar6 = *puVar10;
            puVar11 = puVar10 + 1;
            *puVar10 = *puVar8;
            puVar9 = puVar8 + -1;
            *puVar8 = uVar6;
            puVar8 = puVar9;
            puVar10 = puVar11;
          } while (puVar11 < puVar9);
        }
        uVar12 = uVar12 + 1;
        param_2 = param_2 + param_3;
        puVar19 = puVar19 + param_3;
      } while (uVar12 != param_4);
    }
    _TIFFfree(__s);
  }
  return uVar5;
}

// ---- FUN_0072fd4c  @ 0x72fd4c
undefined4 FUN_0072fd4c(int *param_1,undefined4 *param_2,uint param_3,uint param_4)

{
  int iVar1;
  size_t sVar2;
  void *__s;
  uint uVar3;
  int extraout_r1;
  int extraout_r1_00;
  undefined4 uVar4;
  code *pcVar5;
  undefined4 *puVar6;
  undefined4 *puVar7;
  int iVar8;
  int iVar9;
  undefined4 *puVar10;
  undefined4 *puVar11;
  uint uVar12;
  undefined4 *puVar13;
  undefined4 uVar14;
  int iVar15;
  uint uVar16;
  int local_60;
  int local_4c;
  uint local_44;
  undefined4 local_38;
  int local_30;
  int local_2c [2];
  
  iVar1 = *param_1;
  pcVar5 = (code *)param_1[0xd];
  sVar2 = TIFFTileSize();
  __s = _TIFFmalloc(sVar2);
  if (__s == (void *)0x0) {
    uVar14 = *(undefined4 *)(iVar1 + 0x264);
    uVar4 = TIFFFileName();
    TIFFErrorExt(uVar14,uVar4,"No space for tile buffer");
    local_38 = 0;
  }
  else {
    sVar2 = TIFFTileSize(iVar1);
    _TIFFmemset(__s,0,sVar2);
    TIFFGetField(iVar1,0x142,local_2c);
    TIFFGetField(iVar1,0x143,&local_30);
    uVar3 = FUN_00728eb8(param_1);
    if ((uVar3 & 1) == 0) {
      iVar8 = param_3 - local_2c[0];
      local_60 = 0;
    }
    else {
      local_60 = param_4 - 1;
      iVar8 = -(param_3 + local_2c[0]);
    }
    if (param_4 != 0) {
      local_38 = 1;
      uVar16 = 0;
      do {
        local_4c = local_30;
        iVar9 = uVar16 + param_1[0x13];
        __aeabi_uidivmod(iVar9,local_30);
        local_4c = local_4c - extraout_r1;
        local_44 = local_4c + uVar16;
        if (param_4 < local_44) {
          local_4c = param_4 - uVar16;
          local_44 = local_4c + uVar16;
        }
        if (param_3 != 0) {
          uVar12 = 0;
          while ((iVar9 = TIFFReadTile(iVar1,__s,uVar12 + param_1[0x14],iVar9,0,0), -1 < iVar9 ||
                 (param_1[1] == 0))) {
            __aeabi_uidivmod(uVar16 + param_1[0x13],local_30);
            iVar9 = TIFFTileRowSize(iVar1);
            iVar15 = local_2c[0] - (param_3 - uVar12);
            if (param_3 < uVar12 + local_2c[0]) {
              (*pcVar5)(param_1,param_2 + param_3 * local_60 + uVar12,uVar12,local_60,
                        param_3 - uVar12,local_4c,iVar15,iVar15 + iVar8,
                        (void *)((int)__s + extraout_r1_00 * iVar9));
            }
            else {
              (*pcVar5)(param_1,param_2 + param_3 * local_60 + uVar12,uVar12,local_60,local_2c[0],
                        local_4c,0,iVar8,(void *)((int)__s + extraout_r1_00 * iVar9));
            }
            uVar12 = uVar12 + local_2c[0];
            if (param_3 <= uVar12) goto LAB_0072ffa8;
            iVar9 = uVar16 + param_1[0x13];
          }
          local_38 = 0;
        }
LAB_0072ffa8:
        if ((uVar3 & 1) != 0) {
          local_4c = -local_4c;
        }
        if (param_4 <= local_44) goto LAB_0072ffec;
        local_60 = local_60 + local_4c;
        uVar16 = local_44;
      } while( true );
    }
    local_38 = 1;
LAB_0072ffec:
    _TIFFfree(__s);
    if (((uVar3 & 2) != 0) && (param_4 != 0)) {
      uVar3 = 0;
      puVar13 = param_2 + (param_3 - 1);
      do {
        puVar6 = puVar13;
        puVar10 = param_2;
        if (param_2 < puVar13) {
          do {
            uVar4 = *puVar10;
            puVar11 = puVar10 + 1;
            *puVar10 = *puVar6;
            puVar7 = puVar6 + -1;
            *puVar6 = uVar4;
            puVar6 = puVar7;
            puVar10 = puVar11;
          } while (puVar11 < puVar7);
        }
        uVar3 = uVar3 + 1;
        param_2 = param_2 + param_3;
        puVar13 = puVar13 + param_3;
      } while (uVar3 != param_4);
    }
  }
  return local_38;
}
