// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 21 functions

// ---- FUN_00783144  @ 0x783144
undefined4 * FUN_00783144(undefined4 *param_1)

{
  int *local_14;
  
  *param_1 = &PTR_FUN_00783144_1_009097b8;
  Cki::JniEnv::JniEnv((JniEnv *)&local_14);
  (**(code **)(*local_14 + 0x58))(local_14,param_1[1]);
  Cki::JniEnv::~JniEnv((JniEnv *)&local_14);
  return param_1;
}

// ---- FUN_00783180  @ 0x783180
void FUN_00783180(undefined4 *param_1)

{
  int *local_14;
  
  *param_1 = &PTR_FUN_00783144_1_009097b8;
  Cki::JniEnv::JniEnv((JniEnv *)&local_14);
  (**(code **)(*local_14 + 0x58))(local_14,param_1[1]);
  Cki::JniEnv::~JniEnv((JniEnv *)&local_14);
  operator_delete(param_1);
  return;
}

// ---- FUN_007831c0  @ 0x7831c0
undefined4 * FUN_007831c0(int param_1,undefined4 param_2,undefined4 param_3,undefined4 *param_4)

{
  undefined4 uVar1;
  _jmethodID *p_Var2;
  int iVar3;
  _jobject *local_1c;
  
  Cki::JniEnv::JniEnv((JniEnv *)&local_1c);
  uVar1 = (**(code **)(*(int *)local_1c + 0x29c))(local_1c,param_2);
  p_Var2 = (_jmethodID *)
           FUN_002eb500(local_1c,*(undefined4 *)(param_1 + 4),*(undefined4 *)(param_1 + 8),uVar1,
                        param_3);
  iVar3 = (**(code **)(*(int *)local_1c + 0x390))();
  if (iVar3 == 0) {
    _JNIEnv::CallVoidMethod(local_1c,p_Var2,*(undefined4 *)(param_1 + 0x14),0x7fffffff);
    uVar1 = (**(code **)(*(int *)local_1c + 0x54))(local_1c,p_Var2);
    *param_4 = uVar1;
    uVar1 = _JNIEnv::CallIntMethod(local_1c,p_Var2,*(undefined4 *)(param_1 + 0x10));
    param_4[1] = uVar1;
    param_4[2] = 0;
    uVar1 = (**(code **)(*(int *)local_1c + 0x2c0))(local_1c,0x5000);
    uVar1 = (**(code **)(*(int *)local_1c + 0x54))(local_1c,uVar1);
    param_4[3] = uVar1;
  }
  else {
    (**(code **)(*(int *)local_1c + 0x44))();
    param_4 = (undefined4 *)0x0;
  }
  Cki::JniEnv::~JniEnv((JniEnv *)&local_1c);
  return param_4;
}

// ---- FUN_00783398  @ 0x783398
void FUN_00783398(undefined4 param_1,undefined4 *param_2)

{
  int *local_14;
  
  Cki::JniEnv::JniEnv((JniEnv *)&local_14);
  (**(code **)(*local_14 + 0x58))(local_14,*param_2);
  (**(code **)(*local_14 + 0x58))(local_14,param_2[3]);
  Cki::JniEnv::~JniEnv((JniEnv *)&local_14);
  return;
}

// ---- FUN_007833ec  @ 0x7833ec
undefined4 * FUN_007833ec(undefined4 *param_1)

{
  int *local_14;
  
  *param_1 = &PTR_FUN_007833ec_1_009097e8;
  dlclose(param_1[1]);
  Cki::JniEnv::JniEnv((JniEnv *)&local_14);
  (**(code **)(*local_14 + 0x58))(local_14,param_1[3]);
  Cki::JniEnv::~JniEnv((JniEnv *)&local_14);
  return param_1;
}

// ---- FUN_00783a9c  @ 0x783a9c
void FUN_00783a9c(int *param_1,undefined4 param_2,String *param_3)

{
  undefined4 uVar1;
  char *pcVar2;
  
  uVar1 = (**(code **)(*param_1 + 0x7c))(param_1);
  uVar1 = (**(code **)(*param_1 + 0x84))(param_1,uVar1,"getPath","()Ljava/lang/String;");
  uVar1 = FUN_002eb500(param_1,param_2,uVar1);
  pcVar2 = (char *)(**(code **)(*param_1 + 0x2a4))(param_1,uVar1,0);
  Cki::String::operator=(param_3,pcVar2);
                    /* WARNING: Could not recover jumptable at 0x00783afa. Too many branches */
                    /* WARNING: Treating indirect jump as call */
  (**(code **)(*param_1 + 0x2a8))(param_1,uVar1,pcVar2);
  return;
}

// ---- FUN_00783b08  @ 0x783b08
void FUN_00783b08(int *param_1,undefined4 param_2,undefined4 param_3,String *param_4)

{
  undefined4 uVar1;
  int iVar2;
  char *pcVar3;
  
  uVar1 = (**(code **)(*param_1 + 0x240))(param_1,param_2,param_3,"Ljava/lang/String;");
  iVar2 = (**(code **)(*param_1 + 0x244))(param_1,param_2,uVar1);
  if (iVar2 == 0) {
    return;
  }
  pcVar3 = (char *)(**(code **)(*param_1 + 0x2a4))(param_1,iVar2,0);
  Cki::String::operator=(param_4,pcVar3);
                    /* WARNING: Could not recover jumptable at 0x00783b66. Too many branches */
                    /* WARNING: Treating indirect jump as call */
  (**(code **)(*param_1 + 0x2a8))(param_1,iVar2,pcVar3);
  return;
}

// ---- FUN_00783eb4  @ 0x783eb4
undefined4 FUN_00783eb4(void)

{
  System *this;
  int iVar1;
  float fVar2;
  float fVar3;
  
  this = (System *)Cki::System::get();
  iVar1 = Cki::System::getConfig(this);
  fVar2 = *(float *)(iVar1 + 0x28);
  if (fVar2 <= 0.0) {
    fVar3 = -0.5;
  }
  else {
    fVar3 = 0.5;
  }
  if (DAT_0096bcd8 == '\0') {
    do {
      Cki::StreamSource::fileUpdateAll();
      Cki::Thread::sleepMs((int)(fVar2 + fVar3));
    } while (DAT_0096bcd8 != '\x01');
  }
  return 0;
}

// ---- FUN_0078b4f8  @ 0x78b4f8
undefined4 FUN_0078b4f8(int *param_1,undefined4 param_2,int param_3,undefined4 param_4,int param_5)

{
  int iVar1;
  code *pcVar2;
  
  iVar1 = (**(code **)(*param_1 + 8))(param_1);
  if (iVar1 != 1) {
    return 0xffffffff;
  }
  if (param_5 == 2) {
    pcVar2 = *(code **)(*param_1 + 0x14);
  }
  else {
    if (param_5 != 1) {
      iVar1 = 0;
      goto LAB_0078b530;
    }
    pcVar2 = *(code **)(*param_1 + 0x18);
  }
  iVar1 = (*pcVar2)(param_1);
LAB_0078b530:
  (**(code **)(*param_1 + 0x1c))(param_1,iVar1 + param_3);
  return 0;
}

// ---- FUN_0078b540  @ 0x78b540
undefined4 FUN_0078b540(int *param_1)

{
  int iVar1;
  undefined4 uVar2;
  
  iVar1 = (**(code **)(*param_1 + 8))(param_1);
  if (iVar1 == 1) {
                    /* WARNING: Could not recover jumptable at 0x0078b560. Too many branches */
                    /* WARNING: Treating indirect jump as call */
    uVar2 = (**(code **)(*param_1 + 0x18))(param_1);
    return uVar2;
  }
  return 0xffffffff;
}

// ---- FUN_0078bc78  @ 0x78bc78
int FUN_0078bc78(int param_1,int *param_2,int param_3,undefined4 param_4,int param_5,code *param_6,
                int param_7,int param_8)

{
  undefined4 uVar1;
  int iVar2;
  int *piVar3;
  undefined4 *puVar4;
  int iVar5;
  int local_2c;
  int local_28;
  
  iVar5 = -1;
  if (param_1 != 0 && param_6 != (code *)0x0) {
    iVar5 = (*param_6)(param_1,param_2,0,0,1);
  }
  local_28 = 0;
  local_2c = 0;
  __aeabi_memset(param_2,0x298,0);
  *param_2 = param_1;
  piVar3 = param_2 + 6;
  param_2[0xa2] = param_5;
  param_2[0xa3] = (int)param_6;
  param_2[0xa4] = param_7;
  param_2[0xa5] = param_8;
  ogg_sync_init(piVar3);
  if (param_3 != 0) {
    uVar1 = ogg_sync_buffer(piVar3,param_4);
    __aeabi_memcpy(uVar1,param_3,param_4);
    ogg_sync_wrote(piVar3,param_4);
  }
  if (iVar5 != -1) {
    param_2[1] = 1;
  }
  param_2[0xd] = 1;
  iVar5 = CK_calloc(1,0x20);
  param_2[0x12] = iVar5;
  iVar5 = CK_calloc(param_2[0xd],0x10);
  param_2[0x13] = iVar5;
  ogg_stream_init(param_2 + 0x1e,0xffffffff);
  iVar2 = FUN_0078d9d0(param_2,param_2[0x12],param_2[0x13],&local_28,&local_2c,0);
  iVar5 = local_2c;
  if (iVar2 < 0) {
    *param_2 = 0;
    ov_clear(param_2);
  }
  else {
    piVar3 = (int *)CK_calloc(local_2c + 2,4);
    param_2[0x10] = (int)piVar3;
    param_2[0x17] = param_2[0x72];
    *piVar3 = param_2[0x72];
    piVar3[1] = iVar5;
    __aeabi_memcpy(piVar3 + 2,local_28,iVar5 << 2);
    iVar5 = CK_calloc(1,8);
    param_2[0xe] = iVar5;
    piVar3 = (int *)CK_calloc(1,8);
    param_2[0xf] = (int)piVar3;
    puVar4 = (undefined4 *)param_2[0xe];
    *puVar4 = 0;
    puVar4[1] = 0;
    iVar5 = param_2[3];
    *piVar3 = param_2[2];
    piVar3[1] = iVar5;
    param_2[0x16] = 1;
  }
  if (local_28 != 0) {
    CK_free();
  }
  return iVar2;
}

// ---- FUN_0078c63c  @ 0x78c63c
undefined4 FUN_0078c63c(int *param_1,undefined4 param_2,int param_3,int param_4)

{
  int iVar1;
  undefined4 uVar2;
  code *pcVar3;
  
  if (*param_1 == 0) {
    uVar2 = 0xffffff7f;
  }
  else {
    pcVar3 = (code *)param_1[0xa3];
    if ((pcVar3 != (code *)0x0) &&
       (iVar1 = (*pcVar3)(*param_1,pcVar3,param_3,param_4,0), iVar1 != -1)) {
      param_1[2] = param_3;
      param_1[3] = param_4;
      ogg_sync_reset(param_1 + 6);
      return 0;
    }
    uVar2 = 0xffffff80;
  }
  return uVar2;
}

// ---- FUN_0078c684  @ 0x78c684
undefined8 FUN_0078c684(int *param_1,undefined4 param_2,uint param_3,int param_4)

{
  uint uVar1;
  undefined4 *puVar2;
  undefined4 uVar3;
  int iVar4;
  int *piVar5;
  uint uVar6;
  uint *puVar7;
  bool bVar8;
  
  puVar7 = (uint *)(param_1 + 2);
  bVar8 = -1 < param_4;
  if (param_4 == 0) {
    bVar8 = param_3 != 0;
  }
  if (bVar8) {
    bVar8 = CARRY4(param_3,*puVar7);
    param_3 = param_3 + *puVar7;
    param_4 = param_4 + param_1[3] + (uint)bVar8;
  }
  piVar5 = param_1 + 6;
LAB_0078c6cc:
  do {
    bVar8 = -1 < param_4;
    if (param_4 == 0) {
      bVar8 = param_3 != 0;
    }
    if (bVar8) {
      bVar8 = param_1[3] < param_4;
      if (param_1[3] == param_4) {
        bVar8 = *puVar7 < param_3;
      }
      if (bVar8) goto LAB_0078c708;
LAB_0078c764:
      uVar6 = 0xffffffff;
      goto LAB_0078c798;
    }
LAB_0078c708:
    uVar1 = ogg_sync_pageseek(piVar5,param_2);
    if (-1 < (int)uVar1) {
      if (uVar1 != 0) {
        uVar6 = *puVar7;
        iVar4 = param_1[3];
        *puVar7 = uVar6 + uVar1;
        param_1[3] = iVar4 + ((int)uVar1 >> 0x1f) + (uint)CARRY4(uVar6,uVar1);
        goto LAB_0078c79c;
      }
      if (param_3 == 0 && param_4 == 0) goto LAB_0078c764;
      puVar2 = (undefined4 *)__errno();
      *puVar2 = 0;
      if (param_1[0xa2] == 0) {
        iVar4 = -1;
        uVar6 = 0xffffff80;
        goto LAB_0078c79c;
      }
      if (*param_1 == 0) {
        iVar4 = -1;
        uVar6 = 0xfffffffe;
        goto LAB_0078c79c;
      }
      uVar3 = ogg_sync_buffer(piVar5,0x400);
      iVar4 = (*(code *)param_1[0xa2])(uVar3,1,0x400,*param_1);
      if (iVar4 < 1) {
        uVar6 = 0xffffff80;
        if (iVar4 == 0) {
          piVar5 = (int *)__errno();
          if (*piVar5 == 0) {
            uVar6 = 0xfffffffe;
          }
          return CONCAT44(0xffffffff,uVar6);
        }
LAB_0078c798:
        iVar4 = -1;
LAB_0078c79c:
        return CONCAT44(iVar4,uVar6);
      }
      ogg_sync_wrote(piVar5);
      goto LAB_0078c6cc;
    }
    uVar6 = *puVar7;
    *puVar7 = uVar6 - uVar1;
    param_1[3] = (param_1[3] - ((int)uVar1 >> 0x1f)) - (uint)(uVar6 < uVar1);
  } while( true );
}

// ---- FUN_0078d2c4  @ 0x78d2c4
undefined4 FUN_0078d2c4(int param_1)

{
  int iVar1;
  
  if (3 < *(int *)(param_1 + 0x58)) {
    return 0;
  }
  if (2 < *(int *)(param_1 + 0x58)) {
    iVar1 = *(int *)(param_1 + 0x48);
    if (*(int *)(param_1 + 4) != 0) {
      iVar1 = iVar1 + *(int *)(param_1 + 0x60) * 0x20;
    }
    iVar1 = vorbis_synthesis_init(param_1 + 0x1e0,iVar1);
    if (iVar1 == 0) {
      vorbis_block_init(param_1 + 0x1e0,param_1 + 0x230);
      *(undefined4 *)(param_1 + 0x58) = 4;
      *(undefined4 *)(param_1 + 0x68) = 0;
      *(undefined4 *)(param_1 + 0x6c) = 0;
      *(undefined4 *)(param_1 + 0x70) = 0;
      *(undefined4 *)(param_1 + 0x74) = 0;
      return 0;
    }
    return 0xffffff77;
  }
  return 0xffffff7f;
}

// ---- FUN_0078d320  @ 0x78d320
int FUN_0078d320(int param_1)

{
  uint *puVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  uint uVar5;
  int extraout_r1;
  int iVar6;
  uint uVar7;
  int iVar8;
  uint uVar9;
  uint uVar10;
  uint *puVar11;
  int iVar12;
  bool bVar13;
  undefined1 auStack_58 [4];
  int local_54;
  int local_4c;
  uint local_48;
  uint uStack_44;
  undefined1 auStack_34 [4];
  int local_30;
  
  puVar11 = (uint *)(param_1 + 0x68);
  iVar12 = param_1 + 0x78;
  iVar2 = param_1 + 0x230;
  iVar3 = param_1 + 0x1e0;
  while( true ) {
    iVar4 = *(int *)(param_1 + 0x58);
    if (iVar4 == 3) {
      iVar4 = FUN_0078d2c4(param_1);
      if (iVar4 < 0) {
        return iVar4;
      }
      iVar4 = *(int *)(param_1 + 0x58);
    }
    if (iVar4 == 4) {
      while( true ) {
        iVar4 = ogg_stream_packetout(iVar12,auStack_58);
        uVar10 = uStack_44;
        uVar9 = local_48;
        if (iVar4 == -1) {
          return -3;
        }
        if (iVar4 < 1) break;
        iVar4 = vorbis_synthesis(iVar2,auStack_58);
        if (iVar4 == 0) {
          iVar12 = vorbis_synthesis_pcmout(iVar3,0);
          if (iVar12 != 0) {
            return -0x81;
          }
          vorbis_synthesis_blockin(iVar3,iVar2);
          uVar5 = vorbis_synthesis_pcmout(iVar3,0);
          uVar7 = *(uint *)(param_1 + 0x70);
          *(uint *)(param_1 + 0x70) = uVar7 + uVar5;
          *(uint *)(param_1 + 0x74) =
               *(int *)(param_1 + 0x74) + ((int)uVar5 >> 0x1f) + (uint)CARRY4(uVar7,uVar5);
          uVar5 = *puVar11;
          *puVar11 = uVar5 + local_54 * 8;
          *(uint *)(param_1 + 0x6c) =
               ((local_54 << 3) >> 0x1f) + *(int *)(param_1 + 0x6c) +
               (uint)CARRY4(uVar5,local_54 * 8);
          if (((uVar9 & uVar10) != 0xffffffff) && (local_4c == 0)) {
            if (*(int *)(param_1 + 4) == 0) {
              iVar2 = 0;
            }
            else {
              iVar2 = *(int *)(param_1 + 0x60);
              if (0 < iVar2) {
                uVar5 = *(uint *)(*(int *)(param_1 + 0x44) + iVar2 * 0x10);
                bVar13 = uVar9 < uVar5;
                uVar9 = uVar9 - uVar5;
                uVar10 = (uVar10 - *(int *)(*(int *)(param_1 + 0x44) + iVar2 * 0x10 + 4)) -
                         (uint)bVar13;
              }
            }
            if ((int)uVar10 < 0) {
              uVar9 = 0;
            }
            uVar5 = vorbis_synthesis_pcmout(iVar3,0);
            if ((int)uVar10 < 0) {
              uVar10 = 0;
            }
            uVar7 = uVar9 - uVar5;
            iVar3 = (uVar10 - ((int)uVar5 >> 0x1f)) - (uint)(uVar9 < uVar5);
            if (0 < iVar2) {
              puVar11 = (uint *)(*(int *)(param_1 + 0x44) + 8);
              do {
                uVar9 = *puVar11;
                puVar1 = puVar11 + 1;
                puVar11 = puVar11 + 4;
                bVar13 = CARRY4(uVar7,uVar9);
                uVar7 = uVar7 + uVar9;
                iVar3 = iVar3 + *puVar1 + (uint)bVar13;
                iVar2 = iVar2 + -1;
              } while (iVar2 != 0);
            }
            *(uint *)(param_1 + 0x50) = uVar7;
            *(int *)(param_1 + 0x54) = iVar3;
          }
          return 1;
        }
      }
      iVar4 = *(int *)(param_1 + 0x58);
    }
    if (iVar4 < 2) break;
    do {
      FUN_0078c684(param_1,auStack_34,0xffffffff,0xffffffff);
      if (extraout_r1 < 0) {
        return -2;
      }
      uVar9 = *puVar11;
      *puVar11 = uVar9 + local_30 * 8;
      *(uint *)(param_1 + 0x6c) =
           ((local_30 << 3) >> 0x1f) + *(int *)(param_1 + 0x6c) + (uint)CARRY4(uVar9,local_30 * 8);
      iVar4 = *(int *)(param_1 + 0x58);
      if (iVar4 != 4) goto LAB_0078d412;
      iVar8 = *(int *)(param_1 + 0x5c);
      iVar4 = ogg_page_serialno(auStack_34);
      if (iVar8 == iVar4) goto LAB_0078d40e;
      iVar4 = ogg_page_bos(auStack_34);
    } while (iVar4 == 0);
    vorbis_dsp_clear(iVar3);
    vorbis_block_clear(iVar2);
    *(undefined4 *)(param_1 + 0x58) = 2;
    if (*(int *)(param_1 + 4) == 0) {
      vorbis_info_clear(*(undefined4 *)(param_1 + 0x48));
      vorbis_comment_clear(*(undefined4 *)(param_1 + 0x4c));
      break;
    }
LAB_0078d41c:
    iVar4 = ogg_page_serialno(auStack_34);
    iVar8 = *(int *)(param_1 + 0x34);
    if (iVar8 < 1) {
      iVar6 = 0;
    }
    else {
      iVar6 = 0;
      do {
        if (*(int *)(*(int *)(param_1 + 0x40) + iVar6 * 4) == iVar4) break;
        iVar6 = iVar6 + 1;
      } while (iVar6 < iVar8);
    }
    if (iVar6 != iVar8) {
      *(int *)(param_1 + 0x5c) = iVar4;
      *(int *)(param_1 + 0x60) = iVar6;
      ogg_stream_reset_serialno(iVar12);
      *(undefined4 *)(param_1 + 0x58) = 3;
LAB_0078d346:
      ogg_stream_pagein(iVar12,auStack_34);
    }
  }
LAB_0078d40e:
  iVar4 = *(int *)(param_1 + 0x58);
LAB_0078d412:
  if (iVar4 < 3) {
    if (*(int *)(param_1 + 4) != 0) goto LAB_0078d41c;
    iVar4 = FUN_0078d9d0(param_1,*(undefined4 *)(param_1 + 0x48),*(undefined4 *)(param_1 + 0x4c),0,0
                         ,auStack_34);
    if (iVar4 != 0) {
      return iVar4;
    }
    *(undefined4 *)(param_1 + 0x5c) = *(undefined4 *)(param_1 + 0x1c8);
    *(int *)(param_1 + 0x60) = *(int *)(param_1 + 0x60) + 1;
  }
  goto LAB_0078d346;
}

// ---- FUN_0078d9d0  @ 0x78d9d0
int FUN_0078d9d0(int param_1,undefined4 param_2,undefined4 param_3,int *param_4,int *param_5,
                undefined1 *param_6)

{
  bool bVar1;
  bool bVar2;
  bool bVar3;
  int iVar4;
  int iVar5;
  undefined4 uVar6;
  int extraout_r1;
  int iVar7;
  int *piVar8;
  longlong lVar9;
  undefined1 auStack_58 [36];
  undefined1 auStack_34 [16];
  
  if (param_6 == (undefined1 *)0x0) {
    lVar9 = FUN_0078c684(param_1,auStack_34,0x400,0);
    if (lVar9 == -0x80) {
      return -0x80;
    }
    if (lVar9 < 0) {
      return -0x84;
    }
    param_6 = auStack_34;
  }
  vorbis_info_init(param_2);
  vorbis_comment_init(param_3);
  *(undefined4 *)(param_1 + 0x58) = 2;
  iVar4 = ogg_page_bos(param_6);
  if (iVar4 != 0) {
    iVar4 = param_1 + 0x78;
    do {
      if (param_4 != (int *)0x0) {
        iVar7 = *param_5;
        piVar8 = (int *)*param_4;
        iVar5 = ogg_page_serialno(param_6);
        if (piVar8 != (int *)0x0 && iVar7 != 0) {
          do {
            if (*piVar8 == iVar5) {
              if (*param_4 != 0) {
                CK_free();
              }
              *param_4 = 0;
              *param_5 = 0;
              goto LAB_0078dbe8;
            }
            iVar7 = iVar7 + -1;
            piVar8 = piVar8 + 1;
          } while (iVar7 != 0);
        }
        uVar6 = ogg_page_serialno(param_6);
        iVar5 = *param_5;
        *param_5 = iVar5 + 1;
        if (*param_4 == 0) {
          iVar5 = CK_malloc(4);
        }
        else {
          iVar5 = CK_realloc(*param_4,(iVar5 + 1) * 4);
        }
        *param_4 = iVar5;
        if (iVar5 == 0) {
          iVar5 = -0x83;
          goto LAB_0078dbf2;
        }
        *(undefined4 *)(iVar5 + *param_5 * 4 + -4) = uVar6;
      }
      if (*(int *)(param_1 + 0x58) < 3) {
        uVar6 = ogg_page_serialno(param_6);
        ogg_stream_reset_serialno(iVar4,uVar6);
        ogg_stream_pagein(iVar4,param_6);
        iVar5 = ogg_stream_packetout(iVar4,auStack_58);
        if ((0 < iVar5) && (iVar5 = vorbis_synthesis_idheader(auStack_58), iVar5 != 0)) {
          *(undefined4 *)(param_1 + 0x58) = 3;
          iVar5 = vorbis_synthesis_headerin(param_2,param_3,auStack_58);
          if (iVar5 != 0) goto LAB_0078dbe8;
        }
      }
      lVar9 = FUN_0078c684(param_1,param_6,0x400,0);
      iVar5 = -0x80;
      if (lVar9 == -0x80) goto LAB_0078dbf2;
      if (lVar9 < 0) goto LAB_0078dbee;
      if ((*(int *)(param_1 + 0x58) == 3) &&
         (iVar7 = *(int *)(param_1 + 0x1c8), iVar5 = ogg_page_serialno(param_6), iVar7 == iVar5)) {
        ogg_stream_pagein(iVar4,param_6);
        break;
      }
      iVar5 = ogg_page_bos(param_6);
    } while (iVar5 != 0);
  }
  if (*(int *)(param_1 + 0x58) == 3) {
    iVar4 = 0;
    bVar1 = false;
    do {
      for (; bVar3 = bVar1, iVar4 < 2; iVar4 = iVar4 + 1) {
        iVar5 = ogg_stream_packetout(param_1 + 0x78,auStack_58);
        if (iVar5 == -1) goto LAB_0078dbe8;
        if (iVar5 == 0) {
          bVar2 = true;
          goto LAB_0078db9a;
        }
        iVar5 = vorbis_synthesis_headerin(param_2,param_3,auStack_58);
        if (iVar5 != 0) goto LAB_0078dbf2;
      }
      bVar2 = false;
LAB_0078db9a:
      bVar1 = bVar3;
      if (bVar2) {
        FUN_0078c684(param_1,param_6,0x400,0);
        if (extraout_r1 < 0) goto LAB_0078dbe8;
        iVar7 = *(int *)(param_1 + 0x1c8);
        iVar5 = ogg_page_serialno(param_6);
        if (iVar7 == iVar5) {
          ogg_stream_pagein(param_1 + 0x78,param_6);
          goto LAB_0078dbda;
        }
        iVar5 = ogg_page_bos(param_6);
        bVar3 = bVar1;
        if ((iVar5 != 0) && (bVar3 = true, bVar1)) goto LAB_0078dbe8;
        goto LAB_0078db9a;
      }
LAB_0078dbda:
      if (1 < iVar4) {
        return 0;
      }
    } while( true );
  }
LAB_0078dbee:
  iVar5 = -0x84;
LAB_0078dbf2:
  vorbis_info_clear(param_2);
  vorbis_comment_clear(param_3);
  *(undefined4 *)(param_1 + 0x58) = 2;
  return iVar5;
LAB_0078dbe8:
  iVar5 = -0x85;
  goto LAB_0078dbf2;
}

// ---- FUN_0078dc0c  @ 0x78dc0c
longlong FUN_0078dc0c(int param_1,undefined4 param_2)

{
  uint uVar1;
  int iVar2;
  int iVar3;
  int extraout_r1;
  int iVar4;
  int iVar5;
  uint uVar6;
  int iVar7;
  bool bVar8;
  longlong lVar9;
  undefined1 auStack_58 [36];
  undefined1 auStack_34 [16];
  
  iVar4 = *(int *)(param_1 + 0x1c8);
  uVar6 = 0;
  iVar5 = -1;
  iVar7 = 0;
  do {
    do {
      FUN_0078c684(param_1,auStack_34,0xffffffff,0xffffffff);
      lVar9 = CONCAT44(iVar7,uVar6);
      if ((extraout_r1 < 0) ||
         (iVar2 = ogg_page_bos(auStack_34), lVar9 = CONCAT44(iVar7,uVar6), iVar2 != 0))
      goto LAB_0078dcac;
      iVar2 = ogg_page_serialno(auStack_34);
    } while (iVar2 != iVar4);
    ogg_stream_pagein(param_1 + 0x78,auStack_34);
    iVar2 = iVar5;
    while( true ) {
      iVar5 = iVar2;
      iVar3 = ogg_stream_packetout(param_1 + 0x78,auStack_58);
      if (iVar3 == 0) break;
      iVar2 = iVar5;
      if ((0 < iVar3) && (iVar2 = vorbis_packet_blocksize(param_2,auStack_58), iVar5 != -1)) {
        uVar1 = iVar2 + iVar5 >> 2;
        bVar8 = CARRY4(uVar6,uVar1);
        uVar6 = uVar6 + uVar1;
        iVar7 = iVar7 + (iVar2 + iVar5 >> 0x1f) + (uint)bVar8;
      }
    }
    lVar9 = ogg_page_granulepos(auStack_34);
  } while (lVar9 == -1);
  lVar9 = ogg_page_granulepos(auStack_34);
  lVar9 = lVar9 - CONCAT44(iVar7,uVar6);
LAB_0078dcac:
  if (lVar9 < 0) {
    lVar9 = 0;
  }
  return lVar9;
}

// ---- FUN_0078dcc4  @ 0x78dcc4
longlong FUN_0078dcc4(int param_1,int *param_2,int param_3,int *param_4,undefined8 *param_5)

{
  uint *puVar1;
  longlong lVar2;
  longlong lVar3;
  int iVar4;
  int *piVar5;
  int *piVar6;
  int iVar7;
  int *piVar8;
  int iVar9;
  int iVar10;
  bool bVar11;
  longlong lVar12;
  undefined8 uVar13;
  uint local_40;
  undefined1 auStack_34 [16];
  
  iVar7 = -1;
  puVar1 = (uint *)(param_1 + 8);
  piVar6 = (int *)*puVar1;
  iVar9 = *(int *)(param_1 + 0xc);
  uVar13 = 0xffffffffffffffff;
  lVar3 = -1;
  piVar5 = param_2;
  piVar8 = piVar6;
  iVar10 = iVar9;
  do {
    do {
      bVar11 = piVar8 < (int *)0x400;
      piVar8 = piVar8 + -0x100;
      iVar10 = iVar10 - (uint)bVar11;
      if (iVar10 < 0) {
        piVar8 = (int *)0x0;
        iVar10 = 0;
      }
      iVar4 = FUN_0078c63c(param_1,piVar5,piVar8,iVar10);
      if (iVar4 != 0) {
        return (longlong)iVar4;
      }
      piVar5 = (int *)*puVar1;
      iVar4 = *(int *)(param_1 + 0xc);
      bVar11 = iVar4 < iVar9;
      if (iVar9 == iVar4) {
        bVar11 = piVar5 < piVar6;
      }
    } while (!bVar11);
    lVar2 = -1;
    do {
      lVar12 = FUN_0078c684(param_1,auStack_34,(int)piVar6 - (int)piVar5,
                            (iVar9 - iVar4) - (uint)(piVar6 < piVar5));
      piVar5 = (int *)((uint)lVar12 ^ 0xffffff80 | ~(uint)((ulonglong)lVar12 >> 0x20));
      if (piVar5 == (int *)0x0) {
        return -0x80;
      }
      if (lVar12 < 0) break;
      iVar7 = ogg_page_serialno(auStack_34);
      uVar13 = ogg_page_granulepos(auStack_34);
      if (iVar7 == *param_4) {
        *param_5 = uVar13;
        lVar3 = lVar12;
      }
      iVar4 = param_3;
      piVar5 = param_2;
      if (param_2 != (int *)0x0 && param_3 != 0) {
        do {
          if (*piVar5 == iVar7) goto LAB_0078dddc;
          iVar4 = iVar4 + -1;
          piVar5 = piVar5 + 1;
        } while (iVar4 != 0);
      }
      lVar3 = -1;
LAB_0078dddc:
      piVar5 = (int *)*puVar1;
      iVar4 = *(int *)(param_1 + 0xc);
      bVar11 = iVar4 < iVar9;
      if (iVar9 == iVar4) {
        bVar11 = piVar5 < piVar6;
      }
      lVar2 = lVar12;
    } while (bVar11);
    local_40 = (uint)((ulonglong)lVar3 >> 0x20);
    if (lVar2 != -1) {
      if (0x7fffffff < local_40) {
        *param_4 = iVar7;
        *param_5 = uVar13;
        lVar3 = lVar2;
      }
      return lVar3;
    }
  } while( true );
}

// ---- FUN_0078de3c  @ 0x78de3c
int FUN_0078de3c(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,uint param_5,
                uint param_6,uint param_7,uint param_8,undefined4 param_9,undefined4 param_10,
                int param_11,int *param_12,int param_13,int param_14)

{
  bool bVar1;
  longlong lVar2;
  int iVar3;
  int iVar4;
  uint uVar5;
  uint uVar6;
  int *piVar7;
  uint *puVar8;
  undefined4 uVar9;
  uint uVar10;
  undefined4 uVar11;
  int iVar12;
  uint uVar13;
  uint uVar14;
  longlong lVar15;
  undefined8 uVar16;
  uint local_94;
  int local_90;
  int local_8c;
  undefined4 local_88;
  undefined4 uStack_84;
  undefined4 uStack_80;
  undefined4 uStack_7c;
  undefined4 local_78;
  undefined4 uStack_74;
  undefined4 uStack_70;
  undefined4 local_6c;
  undefined4 local_68;
  undefined4 local_64;
  undefined4 local_60;
  undefined4 local_5c;
  undefined4 local_58;
  int local_54;
  undefined1 auStack_50 [16];
  undefined4 local_40;
  undefined4 local_3c;
  int local_34;
  undefined4 local_30;
  undefined4 local_2c;
  
  local_2c = param_10;
  local_30 = param_9;
  local_3c = 0xffffffff;
  local_40 = 0xffffffff;
  local_34 = param_11;
  iVar12 = *(int *)(param_1 + 0x1c8);
  if (param_13 == 0 || param_12 == (int *)0x0) {
LAB_0078de98:
    puVar8 = (uint *)(param_1 + 8);
    local_54 = 0;
    local_58 = 0;
    bVar1 = (int)param_8 <= (int)param_6;
    if (param_8 == param_6) {
      bVar1 = param_7 <= param_5;
    }
    lVar2 = CONCAT44(param_8,param_7);
    if (!bVar1) {
      lVar2 = CONCAT44(param_8,param_7);
      uVar6 = param_7;
      uVar13 = param_8;
LAB_0078ded6:
      do {
        bVar1 = -1 < (int)((uVar13 - param_6) - (uint)(uVar6 < param_5));
        if (uVar13 - param_6 == (uint)(uVar6 < param_5)) {
          bVar1 = 0x3ff < uVar6 - param_5;
        }
        uVar10 = param_5;
        uVar14 = param_6;
        if (bVar1) {
          iVar4 = uVar13 + param_6 + CARRY4(uVar6,param_5);
          uVar10 = -(iVar4 >> 0x1f);
          iVar4 = iVar4 + (uint)CARRY4(uVar6 + param_5,uVar10);
          uVar14 = iVar4 >> 1;
          uVar10 = (uint)((byte)iVar4 & 1) << 0x1f | uVar6 + param_5 + uVar10 >> 1;
        }
        uVar5 = *(uint *)(param_1 + 0xc) ^ uVar14;
        if ((*puVar8 != uVar10 || uVar5 != 0) &&
           (iVar4 = FUN_0078c63c(param_1,uVar5,uVar10,uVar14), iVar4 != 0)) {
          return iVar4;
        }
        lVar15 = FUN_0078c684(param_1,auStack_50,0xffffffff,0xffffffff);
        if (lVar15 == -0x80) {
          return -0x80;
        }
        if ((-1 < lVar15) &&
           (iVar3 = ogg_page_serialno(auStack_50), iVar4 = param_13, piVar7 = param_12,
           param_13 != 0 && param_12 != (int *)0x0)) {
          do {
            if (*piVar7 == iVar3) {
              param_5 = *puVar8;
              param_6 = *(uint *)(param_1 + 0xc);
              bVar1 = (int)param_6 < (int)uVar13;
              if (uVar13 == param_6) {
                bVar1 = param_5 < uVar6;
              }
              if (!bVar1) goto LAB_0078dfda;
              goto LAB_0078ded6;
            }
            iVar4 = iVar4 + -1;
            piVar7 = piVar7 + 1;
          } while (iVar4 != 0);
        }
        bVar1 = (int)param_6 < (int)uVar14;
        if (uVar14 == param_6) {
          bVar1 = param_5 < uVar10;
        }
        if (-1 < lVar15) {
          lVar2 = lVar15;
        }
        uVar6 = uVar10;
        uVar13 = uVar14;
      } while (bVar1);
    }
LAB_0078dfda:
    local_94 = (uint)((ulonglong)lVar2 >> 0x20);
    local_90 = (int)lVar2;
    *(longlong *)puVar8 = lVar2;
    do {
      local_8c = iVar12;
      uVar16 = FUN_0078dcc4(param_1,param_12,param_13,&local_8c,&local_40);
      *(undefined8 *)puVar8 = uVar16;
    } while (local_8c != iVar12);
    uVar6 = (uint)((ulonglong)uVar16 >> 0x20) ^ local_94;
    if ((((int)uVar16 == local_90 && uVar6 == 0) ||
        (iVar12 = FUN_0078c63c(param_1,uVar6,local_90,local_94), iVar12 == 0)) &&
       (iVar12 = FUN_0078d9d0(param_1,&local_78,&local_88,&local_54,&local_58,0), iVar12 == 0)) {
      uVar6 = *puVar8;
      uVar11 = *(undefined4 *)(param_1 + 0xc);
      uVar9 = *(undefined4 *)(param_1 + 0x1c8);
      uVar16 = FUN_0078dc0c(param_1,&local_78);
      iVar4 = param_14 + 1;
      iVar12 = FUN_0078de3c(param_1,*(undefined4 *)(param_1 + 0xc),local_90,local_94,*puVar8,
                            *(undefined4 *)(param_1 + 0xc),param_7,param_8,param_9,param_10,param_11
                            ,local_54,local_58,iVar4);
      if (iVar12 == 0) {
        if (local_54 != 0) {
          CK_free();
        }
        iVar12 = *(int *)(param_1 + 0x38);
        *(int *)(iVar12 + iVar4 * 8) = local_90;
        *(uint *)(iVar12 + iVar4 * 8 + 4) = local_94;
        *(undefined4 *)(*(int *)(param_1 + 0x40) + iVar4 * 4) = uVar9;
        iVar12 = *(int *)(param_1 + 0x3c);
        *(uint *)(iVar12 + iVar4 * 8) = uVar6;
        *(undefined4 *)(iVar12 + iVar4 * 8 + 4) = uVar11;
        iVar12 = *(int *)(param_1 + 0x48);
        *(undefined4 *)(iVar12 + iVar4 * 0x20) = local_78;
        iVar12 = iVar12 + iVar4 * 0x20;
        *(undefined4 *)(iVar12 + 0x14) = local_64;
        *(undefined4 *)(iVar12 + 0x10) = local_68;
        *(undefined4 *)(iVar12 + 0xc) = local_6c;
        *(undefined4 *)(iVar12 + 8) = uStack_70;
        *(undefined4 *)(iVar12 + 4) = uStack_74;
        *(undefined4 *)(iVar12 + 0x1c) = local_5c;
        *(undefined4 *)(iVar12 + 0x18) = local_60;
        iVar12 = *(int *)(param_1 + 0x4c);
        *(undefined4 *)(iVar12 + iVar4 * 0x10) = local_88;
        iVar12 = iVar12 + iVar4 * 0x10;
        *(undefined4 *)(iVar12 + 4) = uStack_84;
        *(undefined4 *)(iVar12 + 8) = uStack_80;
        *(undefined4 *)(iVar12 + 0xc) = uStack_7c;
        iVar12 = *(int *)(param_1 + 0x44);
        uVar6 = param_14 << 4 | 8;
        *(undefined4 *)(iVar12 + uVar6) = local_40;
        *(undefined4 *)(uVar6 + iVar12 + 4) = local_3c;
        iVar12 = iVar12 + param_14 * 0x10;
        *(undefined8 *)(iVar12 + 0x10) = uVar16;
        uVar6 = *(uint *)(iVar12 + 0x18);
        *(uint *)(iVar12 + 0x18) = uVar6 - (uint)uVar16;
        *(uint *)(iVar12 + 0x1c) =
             (*(int *)(iVar12 + 0x1c) - (int)((ulonglong)uVar16 >> 0x20)) -
             (uint)(uVar6 < (uint)uVar16);
LAB_0078e22a:
        iVar12 = 0;
      }
    }
    return iVar12;
  }
  iVar4 = 0;
LAB_0078de86:
  if (param_12[iVar4] != param_11) goto code_r0x0078de90;
  if (iVar12 != param_11) {
    do {
      local_34 = iVar12;
      uVar16 = FUN_0078dcc4(param_1,param_12,param_13,&local_34,&local_30);
      *(undefined8 *)(param_1 + 8) = uVar16;
    } while (local_34 != iVar12);
  }
  iVar12 = param_14 + 1;
  *(int *)(param_1 + 0x34) = iVar12;
  if (*(int *)(param_1 + 0x38) != 0) {
    CK_free();
  }
  if (*(int *)(param_1 + 0x40) != 0) {
    CK_free();
  }
  if (*(int *)(param_1 + 0x3c) != 0) {
    CK_free();
  }
  uVar9 = CK_malloc(*(int *)(param_1 + 0x34) * 8 + 8);
  *(undefined4 *)(param_1 + 0x38) = uVar9;
  uVar9 = CK_realloc(*(undefined4 *)(param_1 + 0x48),*(int *)(param_1 + 0x34) << 5);
  *(undefined4 *)(param_1 + 0x48) = uVar9;
  uVar9 = CK_realloc(*(undefined4 *)(param_1 + 0x4c),*(int *)(param_1 + 0x34) << 4);
  *(undefined4 *)(param_1 + 0x4c) = uVar9;
  uVar9 = CK_malloc(*(int *)(param_1 + 0x34) << 2);
  *(undefined4 *)(param_1 + 0x40) = uVar9;
  uVar9 = CK_malloc(*(int *)(param_1 + 0x34) << 3);
  *(undefined4 *)(param_1 + 0x3c) = uVar9;
  iVar4 = CK_malloc(*(int *)(param_1 + 0x34) << 4);
  *(int *)(param_1 + 0x44) = iVar4;
  iVar3 = *(int *)(param_1 + 0x38);
  *(uint *)(iVar3 + iVar12 * 8) = param_7;
  *(uint *)(iVar3 + iVar12 * 8 + 4) = param_8;
  *(undefined4 *)(iVar3 + param_14 * 8) = param_3;
  uVar6 = param_14 << 4 | 8;
  *(undefined4 *)(iVar3 + param_14 * 8 + 4) = param_4;
  *(undefined4 *)(iVar4 + uVar6) = local_30;
  *(undefined4 *)(iVar4 + uVar6 + 4) = local_2c;
  goto LAB_0078e22a;
code_r0x0078de90:
  iVar4 = iVar4 + 1;
  if (param_13 == iVar4) goto LAB_0078de98;
  goto LAB_0078de86;
}

// ---- FUN_0078fd78  @ 0x78fd78
undefined4 FUN_0078fd78(int *param_1,int param_2)

{
  int iVar1;
  int iVar2;
  
  iVar1 = param_1[1];
  if (param_1[2] < iVar1 - param_2) {
    return 0;
  }
  if (iVar1 <= 0x7fffffff - param_2) {
    iVar1 = iVar1 + param_2;
    if (iVar1 < 0x7ffffbff) {
      iVar1 = iVar1 + 0x400;
    }
    iVar2 = CK_realloc(*param_1,iVar1);
    if (iVar2 != 0) {
      *param_1 = iVar2;
      param_1[1] = iVar1;
      return 0;
    }
  }
  ogg_stream_clear(param_1);
  return 0xffffffff;
}

// ---- FUN_0078fdc8  @ 0x78fdc8
undefined4 FUN_0078fdc8(int param_1,int param_2)

{
  int iVar1;
  int iVar2;
  
  iVar1 = *(int *)(param_1 + 0x18);
  if (*(int *)(param_1 + 0x1c) < iVar1 - param_2) {
    return 0;
  }
  if (iVar1 <= 0x7fffffff - param_2) {
    iVar1 = iVar1 + param_2;
    if (iVar1 < 0x7fffffdf) {
      iVar1 = iVar1 + 0x20;
    }
    iVar2 = CK_realloc(*(undefined4 *)(param_1 + 0x10),iVar1 << 2);
    if (iVar2 != 0) {
      *(int *)(param_1 + 0x10) = iVar2;
      iVar2 = CK_realloc(*(undefined4 *)(param_1 + 0x14),iVar1 << 3);
      if (iVar2 != 0) {
        *(int *)(param_1 + 0x14) = iVar2;
        *(int *)(param_1 + 0x18) = iVar1;
        return 0;
      }
    }
  }
  ogg_stream_clear(param_1);
  return 0xffffffff;
}
