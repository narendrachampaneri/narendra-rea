// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 199 functions

// ---- FUN_005700bc  @ 0x5700bc
bool FUN_005700bc(int param_1)

{
  return param_1 - 1U < 4;
}

// ---- FUN_005700c8  @ 0x5700c8
int FUN_005700c8(int param_1,int param_2)

{
  int iVar1;
  undefined4 *puVar2;
  int iVar3;
  uint uVar4;
  byte *pbVar5;
  uint uVar6;
  char *pcVar7;
  int iVar8;
  int local_24;
  
  iVar8 = param_1;
  local_24 = param_2;
LAB_005700e0:
  do {
    pbVar5 = *(byte **)(param_2 + 4);
    if ((pbVar5 < *(byte **)(param_2 + 8)) && (uVar4 = (uint)*pbVar5, -1 < (int)(uVar4 << 0x18))) {
      *(uint *)(param_2 + 0x14) = uVar4;
      *(byte **)(param_2 + 4) = pbVar5 + 1;
    }
    else {
      uVar4 = FUN_00531548(param_2);
      *(uint *)(param_2 + 0x14) = uVar4;
    }
    if (uVar4 == 0) {
      return 1;
    }
    uVar6 = uVar4 & 7;
    switch(uVar4 >> 3) {
    case 1:
      if (uVar6 == 2) {
        *(uint *)(param_1 + 0x38) = *(uint *)(param_1 + 0x38) | 1;
        if (*(undefined4 **)(param_1 + 4) == &DAT_00960c38) {
          puVar2 = operator_new(4);
          *puVar2 = &DAT_00972528;
          *(undefined4 **)(param_1 + 4) = puVar2;
        }
        iVar3 = FUN_00530d42(param_2,*(undefined4 *)(param_1 + 4));
        if (iVar3 == 0) {
          return 0;
        }
        pcVar7 = *(char **)(param_2 + 4);
        if ((pcVar7 < *(char **)(param_2 + 8)) && (*pcVar7 == '\x12')) {
          *(char **)(param_2 + 4) = pcVar7 + 1;
LAB_00570178:
          *(uint *)(param_1 + 0x38) = *(uint *)(param_1 + 0x38) | 2;
          if (*(undefined4 **)(param_1 + 8) == &DAT_00960c38) {
            puVar2 = operator_new(4);
            *puVar2 = &DAT_00972528;
            *(undefined4 **)(param_1 + 8) = puVar2;
          }
          iVar3 = FUN_00530d42(param_2,*(undefined4 *)(param_1 + 8));
          if (iVar3 == 0) {
            return 0;
          }
          pcVar7 = *(char **)(param_2 + 4);
          if ((pcVar7 < *(char **)(param_2 + 8)) && (*pcVar7 == '\x18')) {
            *(char **)(param_2 + 4) = pcVar7 + 1;
LAB_005701c0:
            iVar1 = FUN_005307ec(param_2,&local_24);
            iVar3 = local_24;
            if (iVar1 == 0) {
              return 0;
            }
            iVar1 = FUN_005700bc(local_24);
            if (iVar1 != 0) {
              *(int *)(param_1 + 0x30) = iVar3;
              *(uint *)(param_1 + 0x38) = *(uint *)(param_1 + 0x38) | 4;
            }
            pcVar7 = *(char **)(param_2 + 4);
            if ((pcVar7 < *(char **)(param_2 + 8)) && (*pcVar7 == ' ')) {
              *(char **)(param_2 + 4) = pcVar7 + 1;
LAB_00570202:
              iVar3 = FUN_0056991c(param_2,param_1 + 0x10);
              if (iVar3 == 0) {
                return 0;
              }
              *(uint *)(param_1 + 0x38) = *(uint *)(param_1 + 0x38) | 8;
              pcVar7 = *(char **)(param_2 + 4);
              if ((pcVar7 < *(char **)(param_2 + 8)) && (*pcVar7 == '(')) {
                *(char **)(param_2 + 4) = pcVar7 + 1;
LAB_00570234:
                iVar3 = FUN_0056991c(param_2,param_1 + 0x18);
                if (iVar3 == 0) {
                  return 0;
                }
                *(uint *)(param_1 + 0x38) = *(uint *)(param_1 + 0x38) | 0x10;
                pcVar7 = *(char **)(param_2 + 4);
                if ((pcVar7 < *(char **)(param_2 + 8)) && (*pcVar7 == '2')) {
                  *(char **)(param_2 + 4) = pcVar7 + 1;
LAB_00570264:
                  *(uint *)(param_1 + 0x38) = *(uint *)(param_1 + 0x38) | 0x20;
                  if (*(undefined4 **)(param_1 + 0x20) == &DAT_00960c38) {
                    puVar2 = operator_new(4);
                    *puVar2 = &DAT_00972528;
                    *(undefined4 **)(param_1 + 0x20) = puVar2;
                  }
                  iVar3 = FUN_00530d9c(param_2,*(undefined4 *)(param_1 + 0x20));
                  if (iVar3 == 0) {
                    return 0;
                  }
                  pcVar7 = *(char **)(param_2 + 4);
                  if ((pcVar7 < *(char **)(param_2 + 8)) && (*pcVar7 == ':')) {
                    *(char **)(param_2 + 4) = pcVar7 + 1;
LAB_005702b0:
                    *(uint *)(param_1 + 0x38) = *(uint *)(param_1 + 0x38) | 0x40;
                    if (*(undefined4 **)(param_1 + 0x24) == &DAT_00960c38) {
                      puVar2 = operator_new(4);
                      *puVar2 = &DAT_00972528;
                      *(undefined4 **)(param_1 + 0x24) = puVar2;
                    }
                    iVar3 = FUN_00530d42(param_2,*(undefined4 *)(param_1 + 0x24));
                    if (iVar3 == 0) {
                      return 0;
                    }
                    pcVar7 = *(char **)(param_2 + 4);
                    if ((pcVar7 < *(char **)(param_2 + 8)) && (*pcVar7 == '@')) {
                      *(char **)(param_2 + 4) = pcVar7 + 1;
LAB_005702fa:
                      iVar3 = FUN_0056991c(param_2,param_1 + 0x28);
                      if (iVar3 == 0) {
                        return 0;
                      }
                      *(uint *)(param_1 + 0x38) = *(uint *)(param_1 + 0x38) | 0x80;
                      if ((*(int *)(param_2 + 4) == *(int *)(param_2 + 8)) &&
                         ((*(int *)(param_2 + 0x20) != 0 ||
                          (*(int *)(param_2 + 0xc) == *(int *)(param_2 + 0x1c))))) {
                        *(undefined4 *)(param_2 + 0x14) = 0;
                        *(undefined1 *)(param_2 + 0x18) = 1;
                        return iVar3;
                      }
                    }
                  }
                }
              }
            }
          }
        }
        goto LAB_005700e0;
      }
      break;
    case 2:
      if (uVar6 == 2) goto LAB_00570178;
      break;
    case 3:
      if (uVar6 == 0) goto LAB_005701c0;
      break;
    case 4:
      if (uVar6 == 0) goto LAB_00570202;
      break;
    case 5:
      if (uVar6 == 0) goto LAB_00570234;
      break;
    case 6:
      if (uVar6 == 2) goto LAB_00570264;
      break;
    case 7:
      if (uVar6 == 2) goto LAB_005702b0;
      break;
    case 8:
      if (uVar6 == 0) goto LAB_005702fa;
    }
    if (uVar6 == 4) {
      return 1;
    }
    iVar3 = FUN_0053086a(param_2,uVar4,uVar4,uVar6,iVar8);
    if (iVar3 == 0) {
      return 0;
    }
  } while( true );
}

// ---- FUN_0057035c  @ 0x57035c
bool FUN_0057035c(int param_1)

{
  return param_1 - 1U < 6;
}

// ---- FUN_0057036c  @ 0x57036c
void FUN_0057036c(int param_1)

{
  *(undefined4 *)(param_1 + 0x30) = 2;
  *(undefined4 *)(param_1 + 0x34) = 0;
  *(undefined4 *)(param_1 + 0x10) = 0;
  *(undefined4 *)(param_1 + 0x14) = 0;
  *(undefined4 *)(param_1 + 0x18) = 0;
  *(undefined4 *)(param_1 + 0x1c) = 0;
  *(undefined4 *)(param_1 + 0x28) = 0;
  *(undefined4 *)(param_1 + 0x2c) = 0;
  *(undefined4 **)(param_1 + 4) = &DAT_00960c38;
  *(undefined4 **)(param_1 + 8) = &DAT_00960c38;
  *(undefined4 **)(param_1 + 0x20) = &DAT_00960c38;
  *(undefined4 **)(param_1 + 0x24) = &DAT_00960c38;
  memset((void *)(param_1 + 0x38),0,4);
  return;
}

// ---- FUN_005703ac  @ 0x5703ac
undefined4 * FUN_005703ac(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_00570440_1_00929068;
  FUN_0057036c();
  return param_1;
}

// ---- FUN_005703d8  @ 0x5703d8
void FUN_005703d8(int param_1)

{
  undefined4 *puVar1;
  
  puVar1 = *(undefined4 **)(param_1 + 4);
  if ((puVar1 != &DAT_00960c38) && (puVar1 != (undefined4 *)0x0)) {
    FUN_007c5914(puVar1);
    operator_delete(puVar1);
  }
  puVar1 = *(undefined4 **)(param_1 + 8);
  if ((puVar1 != &DAT_00960c38) && (puVar1 != (undefined4 *)0x0)) {
    FUN_007c5914(puVar1);
    operator_delete(puVar1);
  }
  puVar1 = *(undefined4 **)(param_1 + 0x20);
  if ((puVar1 != &DAT_00960c38) && (puVar1 != (undefined4 *)0x0)) {
    FUN_007c5914(puVar1);
    operator_delete(puVar1);
  }
  puVar1 = *(undefined4 **)(param_1 + 0x24);
  if ((puVar1 != &DAT_00960c38) && (puVar1 != (undefined4 *)0x0)) {
    FUN_007c5914(puVar1);
    operator_delete(puVar1);
    return;
  }
  return;
}

// ---- FUN_00570440  @ 0x570440
undefined4 * FUN_00570440(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_00570440_1_00929068;
  FUN_005703d8();
  FUN_0052fe6c(param_1);
  return param_1;
}

// ---- FUN_00570460  @ 0x570460
void * FUN_00570460(void *param_1)

{
  FUN_00570440();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_00570478  @ 0x570478
void FUN_00570478(int param_1,int param_2)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  undefined1 auStack_2c [4];
  undefined1 auStack_28 [20];
  
  if (param_2 == param_1) {
    FUN_0052f7f0(auStack_28,3,
                 "/builddata/pulse-data/agents/hpya5.eem/recipes/816348608/base/google3/googleclient/play_games_infra/play_games_sdk/proto/gen/quest_impl.pb.cc"
                 ,0x1ce);
    uVar1 = FUN_0052f6be(auStack_28,"CHECK failed: (&from) != (this): ");
    FUN_0052f9d4(auStack_2c,uVar1);
    FUN_0052f808(auStack_28);
  }
  if ((*(uint *)(param_2 + 0x38) & 0xff) != 0) {
    if ((int)(*(uint *)(param_2 + 0x38) << 0x1f) < 0) {
      uVar1 = *(undefined4 *)(param_2 + 4);
      *(uint *)(param_1 + 0x38) = *(uint *)(param_1 + 0x38) | 1;
      if (*(undefined4 **)(param_1 + 4) == &DAT_00960c38) {
        puVar2 = operator_new(4);
        *puVar2 = &DAT_00972528;
        *(undefined4 **)(param_1 + 4) = puVar2;
      }
      FUN_007c653c(*(undefined4 *)(param_1 + 4),uVar1);
    }
    if (*(int *)(param_2 + 0x38) << 0x1e < 0) {
      uVar1 = *(undefined4 *)(param_2 + 8);
      *(uint *)(param_1 + 0x38) = *(uint *)(param_1 + 0x38) | 2;
      if (*(undefined4 **)(param_1 + 8) == &DAT_00960c38) {
        puVar2 = operator_new(4);
        *puVar2 = &DAT_00972528;
        *(undefined4 **)(param_1 + 8) = puVar2;
      }
      FUN_007c653c(*(undefined4 *)(param_1 + 8),uVar1);
    }
    if (*(int *)(param_2 + 0x38) << 0x1d < 0) {
      *(undefined4 *)(param_1 + 0x30) = *(undefined4 *)(param_2 + 0x30);
      *(uint *)(param_1 + 0x38) = *(uint *)(param_1 + 0x38) | 4;
    }
    if (*(int *)(param_2 + 0x38) << 0x1c < 0) {
      uVar1 = *(undefined4 *)(param_2 + 0x14);
      *(undefined4 *)(param_1 + 0x10) = *(undefined4 *)(param_2 + 0x10);
      *(undefined4 *)(param_1 + 0x14) = uVar1;
      *(uint *)(param_1 + 0x38) = *(uint *)(param_1 + 0x38) | 8;
    }
    if (*(int *)(param_2 + 0x38) << 0x1b < 0) {
      uVar1 = *(undefined4 *)(param_2 + 0x1c);
      *(undefined4 *)(param_1 + 0x18) = *(undefined4 *)(param_2 + 0x18);
      *(undefined4 *)(param_1 + 0x1c) = uVar1;
      *(uint *)(param_1 + 0x38) = *(uint *)(param_1 + 0x38) | 0x10;
    }
    if (*(int *)(param_2 + 0x38) << 0x1a < 0) {
      uVar1 = *(undefined4 *)(param_2 + 0x20);
      *(uint *)(param_1 + 0x38) = *(uint *)(param_1 + 0x38) | 0x20;
      if (*(undefined4 **)(param_1 + 0x20) == &DAT_00960c38) {
        puVar2 = operator_new(4);
        *puVar2 = &DAT_00972528;
        *(undefined4 **)(param_1 + 0x20) = puVar2;
      }
      FUN_007c653c(*(undefined4 *)(param_1 + 0x20),uVar1);
    }
    if (*(int *)(param_2 + 0x38) << 0x19 < 0) {
      uVar1 = *(undefined4 *)(param_2 + 0x24);
      *(uint *)(param_1 + 0x38) = *(uint *)(param_1 + 0x38) | 0x40;
      if (*(undefined4 **)(param_1 + 0x24) == &DAT_00960c38) {
        puVar2 = operator_new(4);
        *puVar2 = &DAT_00972528;
        *(undefined4 **)(param_1 + 0x24) = puVar2;
      }
      FUN_007c653c(*(undefined4 *)(param_1 + 0x24),uVar1);
    }
    if (*(int *)(param_2 + 0x38) << 0x18 < 0) {
      uVar1 = *(undefined4 *)(param_2 + 0x2c);
      *(undefined4 *)(param_1 + 0x28) = *(undefined4 *)(param_2 + 0x28);
      *(undefined4 *)(param_1 + 0x2c) = uVar1;
      *(uint *)(param_1 + 0x38) = *(uint *)(param_1 + 0x38) | 0x80;
    }
  }
  return;
}

// ---- FUN_005705fc  @ 0x5705fc
undefined4 * FUN_005705fc(undefined4 *param_1,undefined4 param_2)

{
  *param_1 = &PTR_FUN_00570440_1_00929068;
  FUN_0057036c();
  FUN_00570478(param_1,param_2);
  return param_1;
}

// ---- FUN_005706bc  @ 0x5706bc
void FUN_005706bc(int param_1)

{
  *(undefined4 *)(param_1 + 0x58) = 0;
  *(undefined4 **)(param_1 + 4) = &DAT_00960c38;
  *(undefined4 **)(param_1 + 8) = &DAT_00960c38;
  *(undefined4 **)(param_1 + 0xc) = &DAT_00960c38;
  *(undefined4 **)(param_1 + 0x10) = &DAT_00960c38;
  *(undefined4 **)(param_1 + 0x14) = &DAT_00960c38;
  *(undefined4 *)(param_1 + 0x28) = 0;
  *(undefined4 *)(param_1 + 0x2c) = 1;
  *(undefined4 *)(param_1 + 0x30) = 0;
  *(undefined4 *)(param_1 + 0x34) = 0;
  *(undefined4 *)(param_1 + 0x38) = 0;
  *(undefined4 *)(param_1 + 0x3c) = 0;
  *(undefined4 *)(param_1 + 0x40) = 0;
  *(undefined4 *)(param_1 + 0x44) = 0;
  *(undefined4 *)(param_1 + 0x48) = 0;
  *(undefined4 *)(param_1 + 0x4c) = 0;
  *(undefined4 *)(param_1 + 0x50) = 0;
  *(undefined4 *)(param_1 + 0x54) = 0;
  memset((void *)(param_1 + 0x5c),0,4);
  return;
}

// ---- FUN_0057070c  @ 0x57070c
undefined4 * FUN_0057070c(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0057100c_1_00929028;
  param_1[6] = 0;
  param_1[7] = 0;
  param_1[8] = 0;
  param_1[9] = 0;
  FUN_005706bc();
  return param_1;
}

// ---- FUN_00570730  @ 0x570730
void FUN_00570730(void)

{
  vector<void(*)(),std::allocator<void(*)()>> *pvVar1;
  undefined4 uVar2;
  void *pvVar3;
  undefined4 *puVar4;
  undefined *puStack_c;
  
  if (DAT_00964484 == '\0') {
    DAT_00964484 = 1;
    FUN_0052f9dc("asD0Ev","asD0Ev",
                 "/builddata/pulse-data/agents/hpya5.eem/recipes/816348608/base/google3/googleclient/play_games_infra/play_games_sdk/proto/gen/quest_impl.pb.cc"
                );
    pvVar3 = operator_new(0x40);
    FUN_005703ac();
    DAT_00964480 = pvVar3;
    pvVar3 = operator_new(0x60);
    FUN_0057070c();
    puStack_c = &UNK_0056fba1;
    DAT_0096447c = pvVar3;
    FUN_0052f604(0x960c24,0x52f855);
    uVar2 = DAT_00960c30;
    FUN_0052fb80(DAT_00960c30);
    pvVar1 = DAT_00960c2c;
    puVar4 = *(undefined4 **)(DAT_00960c2c + 4);
    if (puVar4 == *(undefined4 **)(DAT_00960c2c + 8)) {
      std::vector<void(*)(),std::allocator<void(*)()>>::_M_emplace_back_aux<void(*const&)()>
                (DAT_00960c2c,(_func_void *)&puStack_c);
    }
    else {
      if (puVar4 != (undefined4 *)0x0) {
        *puVar4 = puStack_c;
      }
      *(int *)(pvVar1 + 4) = *(int *)(pvVar1 + 4) + 4;
    }
    FUN_0052f8cc(uVar2);
    return;
  }
  return;
}

// ---- FUN_005707c8  @ 0x5707c8
void FUN_005707c8(int param_1)

{
  undefined4 *puVar1;
  
  puVar1 = *(undefined4 **)(param_1 + 4);
  if ((puVar1 != &DAT_00960c38) && (puVar1 != (undefined4 *)0x0)) {
    FUN_007c5914(puVar1);
    operator_delete(puVar1);
  }
  puVar1 = *(undefined4 **)(param_1 + 8);
  if ((puVar1 != &DAT_00960c38) && (puVar1 != (undefined4 *)0x0)) {
    FUN_007c5914(puVar1);
    operator_delete(puVar1);
  }
  puVar1 = *(undefined4 **)(param_1 + 0xc);
  if ((puVar1 != &DAT_00960c38) && (puVar1 != (undefined4 *)0x0)) {
    FUN_007c5914(puVar1);
    operator_delete(puVar1);
  }
  puVar1 = *(undefined4 **)(param_1 + 0x10);
  if ((puVar1 != &DAT_00960c38) && (puVar1 != (undefined4 *)0x0)) {
    FUN_007c5914(puVar1);
    operator_delete(puVar1);
  }
  puVar1 = *(undefined4 **)(param_1 + 0x14);
  if ((puVar1 != &DAT_00960c38) && (puVar1 != (undefined4 *)0x0)) {
    FUN_007c5914(puVar1);
    operator_delete(puVar1);
    return;
  }
  return;
}

// ---- FUN_00570936  @ 0x570936
void * FUN_00570936(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  void *pvVar1;
  int iVar2;
  int iVar3;
  
  iVar3 = param_1[1];
  iVar2 = param_1[2];
  if (iVar3 < iVar2) {
    param_1[1] = iVar3 + 1;
    return *(void **)(*param_1 + iVar3 * 4);
  }
  if (iVar2 == param_1[3]) {
    FUN_00530720(param_1,iVar2 + 1,param_3,param_1[3],param_4);
  }
  param_1[2] = param_1[2] + 1;
  pvVar1 = operator_new(0x40);
  FUN_005703ac();
  iVar2 = param_1[1];
  param_1[1] = iVar2 + 1;
  *(void **)(*param_1 + iVar2 * 4) = pvVar1;
  return pvVar1;
}

// ---- FUN_0057097c  @ 0x57097c
int FUN_0057097c(int param_1,int param_2)

{
  char cVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  int iVar4;
  int iVar5;
  uint uVar6;
  undefined4 *extraout_r2;
  undefined4 *extraout_r2_00;
  undefined4 *extraout_r2_01;
  undefined4 *extraout_r2_02;
  undefined4 *puVar7;
  undefined4 *extraout_r2_03;
  byte *pbVar8;
  uint uVar9;
  undefined4 *puVar10;
  char *pcVar11;
  int iVar12;
  int local_24;
  
  iVar12 = param_1;
  local_24 = param_2;
LAB_00570990:
  do {
    pbVar8 = *(byte **)(param_2 + 4);
    if ((pbVar8 < *(byte **)(param_2 + 8)) && (uVar6 = (uint)*pbVar8, -1 < (int)(uVar6 << 0x18))) {
      *(uint *)(param_2 + 0x14) = uVar6;
      *(byte **)(param_2 + 4) = pbVar8 + 1;
    }
    else {
      uVar6 = FUN_00531548(param_2);
      *(uint *)(param_2 + 0x14) = uVar6;
    }
    if (uVar6 == 0) {
      return 1;
    }
    uVar9 = uVar6 & 7;
    switch(uVar6 >> 3) {
    case 1:
      if (uVar9 == 2) {
        puVar7 = *(undefined4 **)(param_1 + 4);
        *(uint *)(param_1 + 0x5c) = *(uint *)(param_1 + 0x5c) | 1;
        puVar10 = &DAT_00960c38;
        if (puVar7 == &DAT_00960c38) {
          puVar7 = operator_new(4);
          puVar10 = (undefined4 *)&DAT_00972528;
          *puVar7 = &DAT_00972528;
          *(undefined4 **)(param_1 + 4) = puVar7;
          puVar7 = extraout_r2;
        }
        iVar5 = FUN_00530d42(param_2,*(undefined4 *)(param_1 + 4),puVar7,puVar10,iVar12);
        if (iVar5 == 0) {
          return 0;
        }
        pcVar11 = *(char **)(param_2 + 4);
        if ((pcVar11 < *(char **)(param_2 + 8)) && (*pcVar11 == '\x12')) {
          *(char **)(param_2 + 4) = pcVar11 + 1;
LAB_00570a32:
          puVar7 = *(undefined4 **)(param_1 + 8);
          *(uint *)(param_1 + 0x5c) = *(uint *)(param_1 + 0x5c) | 2;
          puVar10 = &DAT_00960c38;
          if (puVar7 == &DAT_00960c38) {
            puVar7 = operator_new(4);
            puVar10 = (undefined4 *)&DAT_00972528;
            *puVar7 = &DAT_00972528;
            *(undefined4 **)(param_1 + 8) = puVar7;
            puVar7 = extraout_r2_00;
          }
          iVar5 = FUN_00530d42(param_2,*(undefined4 *)(param_1 + 8),puVar7,puVar10,iVar12);
          if (iVar5 == 0) {
            return 0;
          }
          pcVar11 = *(char **)(param_2 + 4);
          if ((pcVar11 < *(char **)(param_2 + 8)) && (*pcVar11 == '\x1a')) {
            *(char **)(param_2 + 4) = pcVar11 + 1;
LAB_00570a7a:
            puVar7 = *(undefined4 **)(param_1 + 0xc);
            *(uint *)(param_1 + 0x5c) = *(uint *)(param_1 + 0x5c) | 4;
            puVar10 = &DAT_00960c38;
            if (puVar7 == &DAT_00960c38) {
              puVar7 = operator_new(4);
              puVar10 = (undefined4 *)&DAT_00972528;
              *puVar7 = &DAT_00972528;
              *(undefined4 **)(param_1 + 0xc) = puVar7;
              puVar7 = extraout_r2_01;
            }
            iVar5 = FUN_00530d42(param_2,*(undefined4 *)(param_1 + 0xc),puVar7,puVar10,iVar12);
            if (iVar5 == 0) {
              return 0;
            }
            pcVar11 = *(char **)(param_2 + 4);
            if ((pcVar11 < *(char **)(param_2 + 8)) && (*pcVar11 == '\"')) {
              *(char **)(param_2 + 4) = pcVar11 + 1;
LAB_00570ac6:
              puVar7 = *(undefined4 **)(param_1 + 0x10);
              *(uint *)(param_1 + 0x5c) = *(uint *)(param_1 + 0x5c) | 8;
              puVar10 = &DAT_00960c38;
              if (puVar7 == &DAT_00960c38) {
                puVar7 = operator_new(4);
                puVar10 = (undefined4 *)&DAT_00972528;
                *puVar7 = &DAT_00972528;
                *(undefined4 **)(param_1 + 0x10) = puVar7;
                puVar7 = extraout_r2_02;
              }
              iVar5 = FUN_00530d42(param_2,*(undefined4 *)(param_1 + 0x10),puVar7,puVar10,iVar12);
              if (iVar5 == 0) {
                return 0;
              }
              pcVar11 = *(char **)(param_2 + 4);
              if ((pcVar11 < *(char **)(param_2 + 8)) && (*pcVar11 == '*')) {
                *(char **)(param_2 + 4) = pcVar11 + 1;
LAB_00570b12:
                puVar7 = *(undefined4 **)(param_1 + 0x14);
                *(uint *)(param_1 + 0x5c) = *(uint *)(param_1 + 0x5c) | 0x10;
                puVar10 = &DAT_00960c38;
                if (puVar7 == &DAT_00960c38) {
                  puVar7 = operator_new(4);
                  puVar10 = (undefined4 *)&DAT_00972528;
                  *puVar7 = &DAT_00972528;
                  *(undefined4 **)(param_1 + 0x14) = puVar7;
                  puVar7 = extraout_r2_03;
                }
                iVar5 = FUN_00530d42(param_2,*(undefined4 *)(param_1 + 0x14),puVar7,puVar10,iVar12);
                if (iVar5 == 0) {
                  return 0;
                }
                pcVar11 = *(char **)(param_2 + 4);
                if ((pcVar11 < *(char **)(param_2 + 8)) && (*pcVar11 == '0')) {
                  *(char **)(param_2 + 4) = pcVar11 + 1;
LAB_00570b60:
                  iVar5 = FUN_005307ec(param_2,param_1 + 0x28);
                  if (iVar5 == 0) {
                    return 0;
                  }
                  *(uint *)(param_1 + 0x5c) = *(uint *)(param_1 + 0x5c) | 0x20;
                  pcVar11 = *(char **)(param_2 + 4);
                  if ((pcVar11 < *(char **)(param_2 + 8)) && (*pcVar11 == ':')) {
                    do {
                      *(char **)(param_2 + 4) = pcVar11 + 1;
LAB_00570b92:
                      uVar2 = FUN_00570936(param_1 + 0x18);
                      iVar5 = FUN_005307ec(param_2,&local_24);
                      if (iVar5 == 0) {
                        return 0;
                      }
                      iVar5 = *(int *)(param_2 + 0x2c) + 1;
                      *(int *)(param_2 + 0x2c) = iVar5;
                      if (*(int *)(param_2 + 0x30) < iVar5) {
                        return 0;
                      }
                      uVar3 = FUN_00530eac(param_2,local_24);
                      iVar5 = FUN_005700c8(uVar2,param_2);
                      if (iVar5 == 0) {
                        return 0;
                      }
                      cVar1 = *(char *)(param_2 + 0x18);
                      if (cVar1 == '\0') {
                        return 0;
                      }
                      FUN_00530eea(param_2,uVar3);
                      if (0 < *(int *)(param_2 + 0x2c)) {
                        *(int *)(param_2 + 0x2c) = *(int *)(param_2 + 0x2c) + -1;
                      }
                      if (cVar1 == '\0') {
                        return 0;
                      }
                      pcVar11 = *(char **)(param_2 + 4);
                      if (*(char **)(param_2 + 8) <= pcVar11) goto LAB_00570990;
                    } while (*pcVar11 == ':');
                    if (*pcVar11 == '@') {
                      *(char **)(param_2 + 4) = pcVar11 + 1;
LAB_00570c14:
                      iVar4 = FUN_005307ec(param_2,&local_24);
                      iVar5 = local_24;
                      if (iVar4 == 0) {
                        return 0;
                      }
                      iVar4 = FUN_0057035c(local_24);
                      if (iVar4 != 0) {
                        *(int *)(param_1 + 0x2c) = iVar5;
                        *(uint *)(param_1 + 0x5c) = *(uint *)(param_1 + 0x5c) | 0x80;
                      }
                      pcVar11 = *(char **)(param_2 + 4);
                      if ((pcVar11 < *(char **)(param_2 + 8)) && (*pcVar11 == 'H')) {
                        *(char **)(param_2 + 4) = pcVar11 + 1;
LAB_00570c58:
                        iVar5 = FUN_0056991c(param_2,param_1 + 0x30);
                        if (iVar5 == 0) {
                          return 0;
                        }
                        *(uint *)(param_1 + 0x5c) = *(uint *)(param_1 + 0x5c) | 0x100;
                        pcVar11 = *(char **)(param_2 + 4);
                        if ((pcVar11 < *(char **)(param_2 + 8)) && (*pcVar11 == 'P')) {
                          *(char **)(param_2 + 4) = pcVar11 + 1;
LAB_00570c8c:
                          iVar5 = FUN_0056991c(param_2,param_1 + 0x38);
                          if (iVar5 == 0) {
                            return 0;
                          }
                          *(uint *)(param_1 + 0x5c) = *(uint *)(param_1 + 0x5c) | 0x200;
                          pcVar11 = *(char **)(param_2 + 4);
                          if ((pcVar11 < *(char **)(param_2 + 8)) && (*pcVar11 == 'X')) {
                            *(char **)(param_2 + 4) = pcVar11 + 1;
LAB_00570cc0:
                            iVar5 = FUN_0056991c(param_2,param_1 + 0x40);
                            if (iVar5 == 0) {
                              return 0;
                            }
                            *(uint *)(param_1 + 0x5c) = *(uint *)(param_1 + 0x5c) | 0x400;
                            pcVar11 = *(char **)(param_2 + 4);
                            if ((pcVar11 < *(char **)(param_2 + 8)) && (*pcVar11 == '`')) {
                              *(char **)(param_2 + 4) = pcVar11 + 1;
LAB_00570cf4:
                              iVar5 = FUN_0056991c(param_2,param_1 + 0x48);
                              if (iVar5 == 0) {
                                return 0;
                              }
                              *(uint *)(param_1 + 0x5c) = *(uint *)(param_1 + 0x5c) | 0x800;
                              pcVar11 = *(char **)(param_2 + 4);
                              if ((pcVar11 < *(char **)(param_2 + 8)) && (*pcVar11 == 'h')) {
                                *(char **)(param_2 + 4) = pcVar11 + 1;
LAB_00570d26:
                                iVar5 = FUN_0056991c(param_2,param_1 + 0x50);
                                if (iVar5 == 0) {
                                  return 0;
                                }
                                *(uint *)(param_1 + 0x5c) = *(uint *)(param_1 + 0x5c) | 0x1000;
                                if ((*(int *)(param_2 + 4) == *(int *)(param_2 + 8)) &&
                                   ((*(int *)(param_2 + 0x20) != 0 ||
                                    (*(int *)(param_2 + 0xc) == *(int *)(param_2 + 0x1c))))) {
                                  *(undefined4 *)(param_2 + 0x14) = 0;
                                  *(undefined1 *)(param_2 + 0x18) = 1;
                                  return iVar5;
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
        goto LAB_00570990;
      }
      break;
    case 2:
      if (uVar9 == 2) goto LAB_00570a32;
      break;
    case 3:
      if (uVar9 == 2) goto LAB_00570a7a;
      break;
    case 4:
      if (uVar9 == 2) goto LAB_00570ac6;
      break;
    case 5:
      if (uVar9 == 2) goto LAB_00570b12;
      break;
    case 6:
      if (uVar9 == 0) goto LAB_00570b60;
      break;
    case 7:
      if (uVar9 == 2) goto LAB_00570b92;
      break;
    case 8:
      if (uVar9 == 0) goto LAB_00570c14;
      break;
    case 9:
      if (uVar9 == 0) goto LAB_00570c58;
      break;
    case 10:
      if (uVar9 == 0) goto LAB_00570c8c;
      break;
    case 0xb:
      if (uVar9 == 0) goto LAB_00570cc0;
      break;
    case 0xc:
      if (uVar9 == 0) goto LAB_00570cf4;
      break;
    case 0xd:
      if (uVar9 == 0) goto LAB_00570d26;
    }
    if (uVar9 == 4) {
      return 1;
    }
    iVar5 = FUN_0053086a(param_2);
    if (iVar5 == 0) {
      return 0;
    }
  } while( true );
}

// ---- FUN_00570d94  @ 0x570d94
void FUN_00570d94(int param_1,int param_2)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  int iVar3;
  undefined4 uVar4;
  undefined1 auStack_34 [4];
  undefined1 auStack_30 [20];
  
  if (param_2 == param_1) {
    FUN_0052f7f0(auStack_30,3,
                 "/builddata/pulse-data/agents/hpya5.eem/recipes/816348608/base/google3/googleclient/play_games_infra/play_games_sdk/proto/gen/quest_impl.pb.cc"
                 ,0x42b);
    uVar1 = FUN_0052f6be(auStack_30,"CHECK failed: (&from) != (this): ");
    FUN_0052f9d4(auStack_34,uVar1);
    FUN_0052f808(auStack_30);
  }
  FUN_00530720(param_1 + 0x18,*(int *)(param_1 + 0x1c) + *(int *)(param_2 + 0x1c));
  for (iVar3 = 0; iVar3 < *(int *)(param_2 + 0x1c); iVar3 = iVar3 + 1) {
    uVar4 = *(undefined4 *)(*(int *)(param_2 + 0x18) + iVar3 * 4);
    uVar1 = FUN_00570936(param_1 + 0x18);
    FUN_00570478(uVar1,uVar4);
  }
  if ((*(uint *)(param_2 + 0x5c) & 0xff) != 0) {
    if ((int)(*(uint *)(param_2 + 0x5c) << 0x1f) < 0) {
      uVar1 = *(undefined4 *)(param_2 + 4);
      *(uint *)(param_1 + 0x5c) = *(uint *)(param_1 + 0x5c) | 1;
      if (*(undefined4 **)(param_1 + 4) == &DAT_00960c38) {
        puVar2 = operator_new(4);
        *puVar2 = &DAT_00972528;
        *(undefined4 **)(param_1 + 4) = puVar2;
      }
      FUN_007c653c(*(undefined4 *)(param_1 + 4),uVar1);
    }
    if (*(int *)(param_2 + 0x5c) << 0x1e < 0) {
      uVar1 = *(undefined4 *)(param_2 + 8);
      *(uint *)(param_1 + 0x5c) = *(uint *)(param_1 + 0x5c) | 2;
      if (*(undefined4 **)(param_1 + 8) == &DAT_00960c38) {
        puVar2 = operator_new(4);
        *puVar2 = &DAT_00972528;
        *(undefined4 **)(param_1 + 8) = puVar2;
      }
      FUN_007c653c(*(undefined4 *)(param_1 + 8),uVar1);
    }
    if (*(int *)(param_2 + 0x5c) << 0x1d < 0) {
      uVar1 = *(undefined4 *)(param_2 + 0xc);
      *(uint *)(param_1 + 0x5c) = *(uint *)(param_1 + 0x5c) | 4;
      if (*(undefined4 **)(param_1 + 0xc) == &DAT_00960c38) {
        puVar2 = operator_new(4);
        *puVar2 = &DAT_00972528;
        *(undefined4 **)(param_1 + 0xc) = puVar2;
      }
      FUN_007c653c(*(undefined4 *)(param_1 + 0xc),uVar1);
    }
    if (*(int *)(param_2 + 0x5c) << 0x1c < 0) {
      uVar1 = *(undefined4 *)(param_2 + 0x10);
      *(uint *)(param_1 + 0x5c) = *(uint *)(param_1 + 0x5c) | 8;
      if (*(undefined4 **)(param_1 + 0x10) == &DAT_00960c38) {
        puVar2 = operator_new(4);
        *puVar2 = &DAT_00972528;
        *(undefined4 **)(param_1 + 0x10) = puVar2;
      }
      FUN_007c653c(*(undefined4 *)(param_1 + 0x10),uVar1);
    }
    if (*(int *)(param_2 + 0x5c) << 0x1b < 0) {
      uVar1 = *(undefined4 *)(param_2 + 0x14);
      *(uint *)(param_1 + 0x5c) = *(uint *)(param_1 + 0x5c) | 0x10;
      if (*(undefined4 **)(param_1 + 0x14) == &DAT_00960c38) {
        puVar2 = operator_new(4);
        *puVar2 = &DAT_00972528;
        *(undefined4 **)(param_1 + 0x14) = puVar2;
      }
      FUN_007c653c(*(undefined4 *)(param_1 + 0x14),uVar1);
    }
    if (*(int *)(param_2 + 0x5c) << 0x1a < 0) {
      *(undefined4 *)(param_1 + 0x28) = *(undefined4 *)(param_2 + 0x28);
      *(uint *)(param_1 + 0x5c) = *(uint *)(param_1 + 0x5c) | 0x20;
    }
    if (*(int *)(param_2 + 0x5c) << 0x18 < 0) {
      *(undefined4 *)(param_1 + 0x2c) = *(undefined4 *)(param_2 + 0x2c);
      *(uint *)(param_1 + 0x5c) = *(uint *)(param_1 + 0x5c) | 0x80;
    }
  }
  if ((*(uint *)(param_2 + 0x5c) & 0xff00) != 0) {
    if ((int)(*(uint *)(param_2 + 0x5c) << 0x17) < 0) {
      uVar1 = *(undefined4 *)(param_2 + 0x34);
      *(undefined4 *)(param_1 + 0x30) = *(undefined4 *)(param_2 + 0x30);
      *(undefined4 *)(param_1 + 0x34) = uVar1;
      *(uint *)(param_1 + 0x5c) = *(uint *)(param_1 + 0x5c) | 0x100;
    }
    if (*(int *)(param_2 + 0x5c) << 0x16 < 0) {
      uVar1 = *(undefined4 *)(param_2 + 0x3c);
      *(undefined4 *)(param_1 + 0x38) = *(undefined4 *)(param_2 + 0x38);
      *(undefined4 *)(param_1 + 0x3c) = uVar1;
      *(uint *)(param_1 + 0x5c) = *(uint *)(param_1 + 0x5c) | 0x200;
    }
    if (*(int *)(param_2 + 0x5c) << 0x15 < 0) {
      uVar1 = *(undefined4 *)(param_2 + 0x44);
      *(undefined4 *)(param_1 + 0x40) = *(undefined4 *)(param_2 + 0x40);
      *(undefined4 *)(param_1 + 0x44) = uVar1;
      *(uint *)(param_1 + 0x5c) = *(uint *)(param_1 + 0x5c) | 0x400;
    }
    if (*(int *)(param_2 + 0x5c) << 0x14 < 0) {
      uVar1 = *(undefined4 *)(param_2 + 0x4c);
      *(undefined4 *)(param_1 + 0x48) = *(undefined4 *)(param_2 + 0x48);
      *(undefined4 *)(param_1 + 0x4c) = uVar1;
      *(uint *)(param_1 + 0x5c) = *(uint *)(param_1 + 0x5c) | 0x800;
    }
    if (*(int *)(param_2 + 0x5c) << 0x13 < 0) {
      uVar1 = *(undefined4 *)(param_2 + 0x54);
      *(undefined4 *)(param_1 + 0x50) = *(undefined4 *)(param_2 + 0x50);
      *(undefined4 *)(param_1 + 0x54) = uVar1;
      *(uint *)(param_1 + 0x5c) = *(uint *)(param_1 + 0x5c) | 0x1000;
    }
  }
  return;
}

// ---- FUN_00570fe2  @ 0x570fe2
void FUN_00570fe2(undefined4 *param_1)

{
  void *pvVar1;
  int *piVar2;
  int iVar3;
  
  iVar3 = 0;
  while( true ) {
    pvVar1 = (void *)*param_1;
    if ((int)param_1[2] <= iVar3) break;
    piVar2 = *(int **)((int)pvVar1 + iVar3 * 4);
    if (piVar2 != (int *)0x0) {
      (**(code **)(*piVar2 + 4))();
    }
    iVar3 = iVar3 + 1;
  }
  if (pvVar1 != (void *)0x0) {
    operator_delete__(pvVar1);
    return;
  }
  return;
}

// ---- FUN_0057100c  @ 0x57100c
undefined4 * FUN_0057100c(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0057100c_1_00929028;
  FUN_005707c8();
  FUN_00570fe2(param_1 + 6);
  FUN_0052fe6c(param_1);
  return param_1;
}

// ---- FUN_00571034  @ 0x571034
void * FUN_00571034(void *param_1)

{
  FUN_0057100c();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_00571048  @ 0x571048
undefined4 * FUN_00571048(undefined4 *param_1,undefined4 param_2)

{
  *param_1 = &PTR_FUN_0057100c_1_00929028;
  param_1[6] = 0;
  param_1[7] = 0;
  param_1[8] = 0;
  param_1[9] = 0;
  FUN_005706bc();
  FUN_00570d94(param_1,param_2);
  return param_1;
}

// ---- FUN_005710c0  @ 0x5710c0
void FUN_005710c0(int param_1)

{
  if ((*(uint *)(param_1 + 0x1c) & 0xff) != 0) {
    if (((int)(*(uint *)(param_1 + 0x1c) << 0x1f) < 0) &&
       (*(undefined4 **)(param_1 + 4) != &DAT_00960c38)) {
      FUN_007c5b70();
    }
    if ((*(int *)(param_1 + 0x1c) << 0x1e < 0) && (*(undefined4 **)(param_1 + 8) != &DAT_00960c38))
    {
      FUN_007c5b70();
    }
    if ((*(int *)(param_1 + 0x1c) << 0x1d < 0) && (*(undefined4 **)(param_1 + 0xc) != &DAT_00960c38)
       ) {
      FUN_007c5b70();
    }
    if ((*(int *)(param_1 + 0x1c) << 0x1c < 0) &&
       (*(undefined4 **)(param_1 + 0x10) != &DAT_00960c38)) {
      FUN_007c5b70();
    }
    *(undefined1 *)(param_1 + 0x14) = 0;
  }
  memset((void *)(param_1 + 0x1c),0,4);
  return;
}

// ---- FUN_0057113c  @ 0x57113c
void FUN_0057113c(int param_1)

{
  if ((*(uint *)(param_1 + 0x34) & 0xff) != 0) {
    if (((int)(*(uint *)(param_1 + 0x34) << 0x1f) < 0) &&
       (*(undefined4 **)(param_1 + 4) != &DAT_00960c38)) {
      FUN_007c5b70();
    }
    if ((*(int *)(param_1 + 0x34) << 0x1e < 0) && (*(undefined4 **)(param_1 + 8) != &DAT_00960c38))
    {
      FUN_007c5b70();
    }
    if ((*(int *)(param_1 + 0x34) << 0x1d < 0) && (*(undefined4 **)(param_1 + 0xc) != &DAT_00960c38)
       ) {
      FUN_007c5b70();
    }
    *(undefined4 *)(param_1 + 0x10) = 0;
    *(undefined4 *)(param_1 + 0x14) = 0;
    *(undefined4 *)(param_1 + 0x18) = 0;
    *(undefined4 *)(param_1 + 0x1c) = 0;
    if ((*(int *)(param_1 + 0x34) << 0x1a < 0) &&
       (*(undefined4 **)(param_1 + 0x20) != &DAT_00960c38)) {
      FUN_007c5b70();
    }
    if ((*(int *)(param_1 + 0x34) << 0x19 < 0) && (*(int *)(param_1 + 0x24) != 0)) {
      FUN_005710c0();
    }
    *(undefined4 *)(param_1 + 0x28) = 0;
    *(undefined4 *)(param_1 + 0x2c) = 0;
  }
  memset((void *)(param_1 + 0x34),0,4);
  return;
}

// ---- FUN_005711d4  @ 0x5711d4
void FUN_005711d4(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  if (*(int *)(param_1 + 0x1c) << 0x1f < 0) {
    FUN_00530b60(1,*(undefined4 *)(param_1 + 4),param_2);
  }
  if (*(int *)(param_1 + 0x1c) << 0x1e < 0) {
    FUN_00530b60(2,*(undefined4 *)(param_1 + 8),param_2);
  }
  if (*(int *)(param_1 + 0x1c) << 0x1d < 0) {
    FUN_00530b60(3,*(undefined4 *)(param_1 + 0xc),param_2);
  }
  if (*(int *)(param_1 + 0x1c) << 0x1c < 0) {
    FUN_00530b60(4,*(undefined4 *)(param_1 + 0x10),param_2);
  }
  if (*(int *)(param_1 + 0x1c) << 0x1b < 0) {
    FUN_00530b2c(5,*(undefined1 *)(param_1 + 0x14),param_2,param_4);
    return;
  }
  return;
}

// ---- FUN_00571230  @ 0x571230
undefined4 FUN_00571230(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uStack_c;
  
  uStack_c = param_2;
  FUN_007c6a60(param_1,"gpg.proto.SnapshotFileData",&uStack_c,param_4,param_1);
  return param_1;
}

// ---- FUN_00571300  @ 0x571300
int FUN_00571300(int param_1,int param_2,undefined4 param_3)

{
  int iVar1;
  byte *pbVar2;
  undefined4 *extraout_r2;
  undefined4 *extraout_r2_00;
  undefined4 *extraout_r2_01;
  undefined4 *puVar3;
  undefined4 *extraout_r2_02;
  uint uVar4;
  uint uVar5;
  undefined4 *puVar6;
  char *pcVar7;
  int iVar8;
  int local_1c;
  undefined4 uStack_18;
  
  iVar8 = param_1;
  local_1c = param_2;
  uStack_18 = param_3;
LAB_0057130c:
  pbVar2 = *(byte **)(param_2 + 4);
  if ((pbVar2 < *(byte **)(param_2 + 8)) && (uVar4 = (uint)*pbVar2, -1 < (int)(uVar4 << 0x18))) {
    *(uint *)(param_2 + 0x14) = uVar4;
    *(byte **)(param_2 + 4) = pbVar2 + 1;
  }
  else {
    uVar4 = FUN_00531548(param_2);
    *(uint *)(param_2 + 0x14) = uVar4;
  }
  if (uVar4 == 0) {
    return 1;
  }
  uVar5 = uVar4 & 7;
  switch(uVar4 >> 3) {
  case 1:
    if (uVar5 != 2) break;
    puVar3 = *(undefined4 **)(param_1 + 4);
    *(uint *)(param_1 + 0x1c) = *(uint *)(param_1 + 0x1c) | 1;
    puVar6 = &DAT_00960c38;
    if (puVar3 == &DAT_00960c38) {
      puVar3 = operator_new(4);
      puVar6 = (undefined4 *)&DAT_00972528;
      *puVar3 = &DAT_00972528;
      *(undefined4 **)(param_1 + 4) = puVar3;
      puVar3 = extraout_r2;
    }
    iVar1 = FUN_00530d42(param_2,*(undefined4 *)(param_1 + 4),puVar3,puVar6,iVar8);
    if (iVar1 == 0) {
      return 0;
    }
    pcVar7 = *(char **)(param_2 + 4);
    if ((pcVar7 < *(char **)(param_2 + 8)) && (*pcVar7 == '\x12')) {
      *(char **)(param_2 + 4) = pcVar7 + 1;
LAB_0057139c:
      puVar3 = *(undefined4 **)(param_1 + 8);
      *(uint *)(param_1 + 0x1c) = *(uint *)(param_1 + 0x1c) | 2;
      puVar6 = &DAT_00960c38;
      if (puVar3 == &DAT_00960c38) {
        puVar3 = operator_new(4);
        puVar6 = (undefined4 *)&DAT_00972528;
        *puVar3 = &DAT_00972528;
        *(undefined4 **)(param_1 + 8) = puVar3;
        puVar3 = extraout_r2_00;
      }
      iVar1 = FUN_00530d42(param_2,*(undefined4 *)(param_1 + 8),puVar3,puVar6,iVar8);
      if (iVar1 == 0) {
        return 0;
      }
      pcVar7 = *(char **)(param_2 + 4);
      if ((pcVar7 < *(char **)(param_2 + 8)) && (*pcVar7 == '\x1a')) {
        *(char **)(param_2 + 4) = pcVar7 + 1;
LAB_005713e2:
        puVar3 = *(undefined4 **)(param_1 + 0xc);
        *(uint *)(param_1 + 0x1c) = *(uint *)(param_1 + 0x1c) | 4;
        puVar6 = &DAT_00960c38;
        if (puVar3 == &DAT_00960c38) {
          puVar3 = operator_new(4);
          puVar6 = (undefined4 *)&DAT_00972528;
          *puVar3 = &DAT_00972528;
          *(undefined4 **)(param_1 + 0xc) = puVar3;
          puVar3 = extraout_r2_01;
        }
        iVar1 = FUN_00530d42(param_2,*(undefined4 *)(param_1 + 0xc),puVar3,puVar6,iVar8);
        if (iVar1 == 0) {
          return 0;
        }
        pcVar7 = *(char **)(param_2 + 4);
        if ((pcVar7 < *(char **)(param_2 + 8)) && (*pcVar7 == '\"')) {
          *(char **)(param_2 + 4) = pcVar7 + 1;
LAB_0057142c:
          puVar3 = *(undefined4 **)(param_1 + 0x10);
          *(uint *)(param_1 + 0x1c) = *(uint *)(param_1 + 0x1c) | 8;
          puVar6 = &DAT_00960c38;
          if (puVar3 == &DAT_00960c38) {
            puVar3 = operator_new(4);
            puVar6 = (undefined4 *)&DAT_00972528;
            *puVar3 = &DAT_00972528;
            *(undefined4 **)(param_1 + 0x10) = puVar3;
            puVar3 = extraout_r2_02;
          }
          iVar1 = FUN_00530d42(param_2,*(undefined4 *)(param_1 + 0x10),puVar3,puVar6,iVar8);
          if (iVar1 == 0) {
            return 0;
          }
          pcVar7 = *(char **)(param_2 + 4);
          if ((pcVar7 < *(char **)(param_2 + 8)) && (*pcVar7 == '(')) {
            *(char **)(param_2 + 4) = pcVar7 + 1;
LAB_00571474:
            iVar1 = FUN_005307ec(param_2,&local_1c);
            if (iVar1 == 0) {
              return 0;
            }
            *(bool *)(param_1 + 0x14) = local_1c != 0;
            *(uint *)(param_1 + 0x1c) = *(uint *)(param_1 + 0x1c) | 0x10;
            if ((*(int *)(param_2 + 4) == *(int *)(param_2 + 8)) &&
               ((*(int *)(param_2 + 0x20) != 0 ||
                (*(int *)(param_2 + 0xc) == *(int *)(param_2 + 0x1c))))) {
              *(undefined4 *)(param_2 + 0x14) = 0;
              *(undefined1 *)(param_2 + 0x18) = 1;
              return iVar1;
            }
          }
        }
      }
    }
    goto LAB_0057130c;
  case 2:
    if (uVar5 == 2) goto LAB_0057139c;
    break;
  case 3:
    if (uVar5 == 2) goto LAB_005713e2;
    break;
  case 4:
    if (uVar5 == 2) goto LAB_0057142c;
    break;
  case 5:
    if (uVar5 == 0) goto LAB_00571474;
  }
  if (uVar5 == 4) {
    return 1;
  }
  iVar1 = FUN_0053086a(param_2);
  if (iVar1 == 0) {
    return 0;
  }
  goto LAB_0057130c;
}

// ---- FUN_005714dc  @ 0x5714dc
int FUN_005714dc(int param_1)

{
  int iVar1;
  int iVar2;
  
  iVar1 = 0;
  if ((*(uint *)(param_1 + 0x1c) & 0xff) != 0) {
    iVar1 = 0;
    if ((*(uint *)(param_1 + 0x1c) & 1) != 0) {
      iVar1 = FUN_0056994c(*(undefined4 *)(param_1 + 4));
      iVar1 = iVar1 + 1;
    }
    if (*(int *)(param_1 + 0x1c) << 0x1e < 0) {
      iVar2 = FUN_0056994c(*(undefined4 *)(param_1 + 8));
      iVar1 = iVar1 + iVar2 + 1;
    }
    if (*(int *)(param_1 + 0x1c) << 0x1d < 0) {
      iVar2 = FUN_0056994c(*(undefined4 *)(param_1 + 0xc));
      iVar1 = iVar1 + iVar2 + 1;
    }
    if (*(int *)(param_1 + 0x1c) << 0x1c < 0) {
      iVar2 = FUN_0056994c(*(undefined4 *)(param_1 + 0x10));
      iVar1 = iVar1 + iVar2 + 1;
    }
    if (*(int *)(param_1 + 0x1c) << 0x1b < 0) {
      iVar1 = iVar1 + 2;
    }
  }
  *(int *)(param_1 + 0x18) = iVar1;
  return iVar1;
}

// ---- FUN_00571534  @ 0x571534
int FUN_00571534(int param_1)

{
  int iVar1;
  int iVar2;
  uint uVar3;
  
  iVar1 = 0;
  if ((*(uint *)(param_1 + 0x34) & 0xff) != 0) {
    iVar1 = 0;
    if ((*(uint *)(param_1 + 0x34) & 1) != 0) {
      iVar1 = FUN_0056994c(*(undefined4 *)(param_1 + 4));
      iVar1 = iVar1 + 1;
    }
    if (*(int *)(param_1 + 0x34) << 0x1e < 0) {
      iVar2 = FUN_0056994c(*(undefined4 *)(param_1 + 8));
      iVar1 = iVar1 + iVar2 + 1;
    }
    if (*(int *)(param_1 + 0x34) << 0x1d < 0) {
      iVar2 = FUN_0056994c(*(undefined4 *)(param_1 + 0xc));
      iVar1 = iVar1 + iVar2 + 1;
    }
    if (*(int *)(param_1 + 0x34) << 0x1c < 0) {
      iVar2 = FUN_00531a7a(*(undefined4 *)(param_1 + 0x10),*(undefined4 *)(param_1 + 0x14));
      iVar1 = iVar1 + iVar2 + 1;
    }
    if (*(int *)(param_1 + 0x34) << 0x1b < 0) {
      iVar2 = FUN_00531a7a(*(undefined4 *)(param_1 + 0x18),*(undefined4 *)(param_1 + 0x1c));
      iVar1 = iVar1 + iVar2 + 1;
    }
    if (*(int *)(param_1 + 0x34) << 0x1a < 0) {
      iVar2 = FUN_0056994c(*(undefined4 *)(param_1 + 0x20));
      iVar1 = iVar1 + iVar2 + 1;
    }
    if (*(int *)(param_1 + 0x34) << 0x19 < 0) {
      iVar2 = *(int *)(param_1 + 0x24);
      if (iVar2 == 0) {
        iVar2 = *(int *)(DAT_00964488 + 0x24);
      }
      uVar3 = FUN_005714dc(iVar2);
      if (uVar3 < 0x80) {
        iVar2 = 1;
      }
      else {
        iVar2 = FUN_00531a52();
      }
      iVar1 = iVar1 + iVar2 + uVar3 + 1;
    }
    if (*(int *)(param_1 + 0x34) << 0x18 < 0) {
      iVar2 = FUN_00531a7a(*(undefined4 *)(param_1 + 0x28),*(undefined4 *)(param_1 + 0x2c));
      iVar1 = iVar1 + iVar2 + 1;
    }
  }
  *(int *)(param_1 + 0x30) = iVar1;
  return iVar1;
}

// ---- FUN_005715ec  @ 0x5715ec
void FUN_005715ec(int param_1)

{
  *(undefined4 *)(param_1 + 0x18) = 0;
  *(undefined1 *)(param_1 + 0x14) = 0;
  *(undefined4 **)(param_1 + 4) = &DAT_00960c38;
  *(undefined4 **)(param_1 + 8) = &DAT_00960c38;
  *(undefined4 **)(param_1 + 0xc) = &DAT_00960c38;
  *(undefined4 **)(param_1 + 0x10) = &DAT_00960c38;
  memset((void *)(param_1 + 0x1c),0,4);
  return;
}

// ---- FUN_00571618  @ 0x571618
undefined4 * FUN_00571618(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_005719a0_1_009290e8;
  FUN_005715ec();
  return param_1;
}

// ---- FUN_00571642  @ 0x571642
undefined4 FUN_00571642(int param_1)

{
  void *pvVar1;
  
  *(uint *)(param_1 + 0x34) = *(uint *)(param_1 + 0x34) | 0x40;
  if (*(int *)(param_1 + 0x24) == 0) {
    pvVar1 = operator_new(0x20);
    FUN_00571618();
    *(void **)(param_1 + 0x24) = pvVar1;
  }
  return *(undefined4 *)(param_1 + 0x24);
}

// ---- FUN_00571664  @ 0x571664
int FUN_00571664(int param_1,int param_2,undefined4 param_3)

{
  char cVar1;
  undefined4 *puVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  int iVar5;
  uint uVar6;
  byte *pbVar7;
  uint uVar8;
  char *pcVar9;
  int local_30;
  int iStack_2c;
  undefined4 uStack_28;
  
  local_30 = param_1;
  iStack_2c = param_2;
  uStack_28 = param_3;
LAB_00571678:
  do {
    pbVar7 = *(byte **)(param_2 + 4);
    if ((pbVar7 < *(byte **)(param_2 + 8)) && (uVar6 = (uint)*pbVar7, -1 < (int)(uVar6 << 0x18))) {
      *(uint *)(param_2 + 0x14) = uVar6;
      *(byte **)(param_2 + 4) = pbVar7 + 1;
    }
    else {
      uVar6 = FUN_00531548(param_2);
      *(uint *)(param_2 + 0x14) = uVar6;
    }
    if (uVar6 == 0) {
      return 1;
    }
    uVar8 = uVar6 & 7;
    switch(uVar6 >> 3) {
    case 1:
      if (uVar8 == 2) {
        *(uint *)(param_1 + 0x34) = *(uint *)(param_1 + 0x34) | 1;
        if (*(undefined4 **)(param_1 + 4) == &DAT_00960c38) {
          puVar2 = operator_new(4);
          *puVar2 = &DAT_00972528;
          *(undefined4 **)(param_1 + 4) = puVar2;
        }
        iVar5 = FUN_00530d42(param_2,*(undefined4 *)(param_1 + 4));
        if (iVar5 == 0) {
          return 0;
        }
        pcVar9 = *(char **)(param_2 + 4);
        if ((pcVar9 < *(char **)(param_2 + 8)) && (*pcVar9 == '\x12')) {
          *(char **)(param_2 + 4) = pcVar9 + 1;
LAB_00571710:
          *(uint *)(param_1 + 0x34) = *(uint *)(param_1 + 0x34) | 2;
          if (*(undefined4 **)(param_1 + 8) == &DAT_00960c38) {
            puVar2 = operator_new(4);
            *puVar2 = &DAT_00972528;
            *(undefined4 **)(param_1 + 8) = puVar2;
          }
          iVar5 = FUN_00530d42(param_2,*(undefined4 *)(param_1 + 8));
          if (iVar5 == 0) {
            return 0;
          }
          pcVar9 = *(char **)(param_2 + 4);
          if ((pcVar9 < *(char **)(param_2 + 8)) && (*pcVar9 == '\x1a')) {
            *(char **)(param_2 + 4) = pcVar9 + 1;
LAB_00571758:
            *(uint *)(param_1 + 0x34) = *(uint *)(param_1 + 0x34) | 4;
            if (*(undefined4 **)(param_1 + 0xc) == &DAT_00960c38) {
              puVar2 = operator_new(4);
              *puVar2 = &DAT_00972528;
              *(undefined4 **)(param_1 + 0xc) = puVar2;
            }
            iVar5 = FUN_00530d42(param_2,*(undefined4 *)(param_1 + 0xc));
            if (iVar5 == 0) {
              return 0;
            }
            pcVar9 = *(char **)(param_2 + 4);
            if ((pcVar9 < *(char **)(param_2 + 8)) && (*pcVar9 == ' ')) {
              *(char **)(param_2 + 4) = pcVar9 + 1;
LAB_005717a4:
              iVar5 = FUN_0056991c(param_2,param_1 + 0x10);
              if (iVar5 == 0) {
                return 0;
              }
              *(uint *)(param_1 + 0x34) = *(uint *)(param_1 + 0x34) | 8;
              pcVar9 = *(char **)(param_2 + 4);
              if ((pcVar9 < *(char **)(param_2 + 8)) && (*pcVar9 == '(')) {
                *(char **)(param_2 + 4) = pcVar9 + 1;
LAB_005717d6:
                iVar5 = FUN_0056991c(param_2,param_1 + 0x18);
                if (iVar5 == 0) {
                  return 0;
                }
                *(uint *)(param_1 + 0x34) = *(uint *)(param_1 + 0x34) | 0x10;
                pcVar9 = *(char **)(param_2 + 4);
                if ((pcVar9 < *(char **)(param_2 + 8)) && (*pcVar9 == '2')) {
                  *(char **)(param_2 + 4) = pcVar9 + 1;
LAB_00571808:
                  *(uint *)(param_1 + 0x34) = *(uint *)(param_1 + 0x34) | 0x20;
                  if (*(undefined4 **)(param_1 + 0x20) == &DAT_00960c38) {
                    puVar2 = operator_new(4);
                    *puVar2 = &DAT_00972528;
                    *(undefined4 **)(param_1 + 0x20) = puVar2;
                  }
                  iVar5 = FUN_00530d42(param_2,*(undefined4 *)(param_1 + 0x20));
                  if (iVar5 == 0) {
                    return 0;
                  }
                  pcVar9 = *(char **)(param_2 + 4);
                  if ((pcVar9 < *(char **)(param_2 + 8)) && (*pcVar9 == ':')) {
                    *(char **)(param_2 + 4) = pcVar9 + 1;
LAB_00571854:
                    uVar3 = FUN_00571642(param_1);
                    iVar5 = FUN_005307ec(param_2,&local_30);
                    if (iVar5 == 0) {
                      return 0;
                    }
                    iVar5 = *(int *)(param_2 + 0x2c) + 1;
                    *(int *)(param_2 + 0x2c) = iVar5;
                    if (*(int *)(param_2 + 0x30) < iVar5) {
                      return 0;
                    }
                    uVar4 = FUN_00530eac(param_2,local_30);
                    iVar5 = FUN_00571300(uVar3,param_2);
                    if (iVar5 == 0) {
                      return 0;
                    }
                    cVar1 = *(char *)(param_2 + 0x18);
                    if (cVar1 == '\0') {
                      return 0;
                    }
                    FUN_00530eea(param_2,uVar4);
                    if (0 < *(int *)(param_2 + 0x2c)) {
                      *(int *)(param_2 + 0x2c) = *(int *)(param_2 + 0x2c) + -1;
                    }
                    if (cVar1 == '\0') {
                      return 0;
                    }
                    pcVar9 = *(char **)(param_2 + 4);
                    if ((pcVar9 < *(char **)(param_2 + 8)) && (*pcVar9 == '@')) {
                      *(char **)(param_2 + 4) = pcVar9 + 1;
LAB_005718d2:
                      iVar5 = FUN_0056991c(param_2,&local_30);
                      if (iVar5 == 0) {
                        return 0;
                      }
                      *(int *)(param_1 + 0x28) = local_30;
                      *(int *)(param_1 + 0x2c) = iStack_2c;
                      *(uint *)(param_1 + 0x34) = *(uint *)(param_1 + 0x34) | 0x80;
                      if ((*(int *)(param_2 + 4) == *(int *)(param_2 + 8)) &&
                         ((*(int *)(param_2 + 0x20) != 0 ||
                          (*(int *)(param_2 + 0xc) == *(int *)(param_2 + 0x1c))))) {
                        *(undefined4 *)(param_2 + 0x14) = 0;
                        *(undefined1 *)(param_2 + 0x18) = 1;
                        return iVar5;
                      }
                    }
                  }
                }
              }
            }
          }
        }
        goto LAB_00571678;
      }
      break;
    case 2:
      if (uVar8 == 2) goto LAB_00571710;
      break;
    case 3:
      if (uVar8 == 2) goto LAB_00571758;
      break;
    case 4:
      if (uVar8 == 0) goto LAB_005717a4;
      break;
    case 5:
      if (uVar8 == 0) goto LAB_005717d6;
      break;
    case 6:
      if (uVar8 == 2) goto LAB_00571808;
      break;
    case 7:
      if (uVar8 == 2) goto LAB_00571854;
      break;
    case 8:
      if (uVar8 == 0) goto LAB_005718d2;
    }
    if (uVar8 == 4) {
      return 1;
    }
    iVar5 = FUN_0053086a(param_2);
    if (iVar5 == 0) {
      return 0;
    }
  } while( true );
}

// ---- FUN_00571938  @ 0x571938
void FUN_00571938(int param_1)

{
  undefined4 *puVar1;
  
  puVar1 = *(undefined4 **)(param_1 + 4);
  if ((puVar1 != &DAT_00960c38) && (puVar1 != (undefined4 *)0x0)) {
    FUN_007c5914(puVar1);
    operator_delete(puVar1);
  }
  puVar1 = *(undefined4 **)(param_1 + 8);
  if ((puVar1 != &DAT_00960c38) && (puVar1 != (undefined4 *)0x0)) {
    FUN_007c5914(puVar1);
    operator_delete(puVar1);
  }
  puVar1 = *(undefined4 **)(param_1 + 0xc);
  if ((puVar1 != &DAT_00960c38) && (puVar1 != (undefined4 *)0x0)) {
    FUN_007c5914(puVar1);
    operator_delete(puVar1);
  }
  puVar1 = *(undefined4 **)(param_1 + 0x10);
  if ((puVar1 != &DAT_00960c38) && (puVar1 != (undefined4 *)0x0)) {
    FUN_007c5914(puVar1);
    operator_delete(puVar1);
    return;
  }
  return;
}

// ---- FUN_005719a0  @ 0x5719a0
undefined4 * FUN_005719a0(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_005719a0_1_009290e8;
  FUN_00571938();
  FUN_0052fe6c(param_1);
  return param_1;
}

// ---- FUN_005719c0  @ 0x5719c0
void * FUN_005719c0(void *param_1)

{
  FUN_005719a0();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_005719d8  @ 0x5719d8
void FUN_005719d8(int param_1,int param_2)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  undefined1 auStack_2c [4];
  undefined1 auStack_28 [20];
  
  if (param_2 == param_1) {
    FUN_0052f7f0(auStack_28,3,
                 "/builddata/pulse-data/agents/hpya5.eem/recipes/816348608/base/google3/googleclient/play_games_infra/play_games_sdk/proto/gen/snapshot_impl.pb.cc"
                 ,0x152);
    uVar1 = FUN_0052f6be(auStack_28,"CHECK failed: (&from) != (this): ");
    FUN_0052f9d4(auStack_2c,uVar1);
    FUN_0052f808(auStack_28);
  }
  if ((*(uint *)(param_2 + 0x1c) & 0xff) != 0) {
    if ((int)(*(uint *)(param_2 + 0x1c) << 0x1f) < 0) {
      uVar1 = *(undefined4 *)(param_2 + 4);
      *(uint *)(param_1 + 0x1c) = *(uint *)(param_1 + 0x1c) | 1;
      if (*(undefined4 **)(param_1 + 4) == &DAT_00960c38) {
        puVar2 = operator_new(4);
        *puVar2 = &DAT_00972528;
        *(undefined4 **)(param_1 + 4) = puVar2;
      }
      FUN_007c653c(*(undefined4 *)(param_1 + 4),uVar1);
    }
    if (*(int *)(param_2 + 0x1c) << 0x1e < 0) {
      uVar1 = *(undefined4 *)(param_2 + 8);
      *(uint *)(param_1 + 0x1c) = *(uint *)(param_1 + 0x1c) | 2;
      if (*(undefined4 **)(param_1 + 8) == &DAT_00960c38) {
        puVar2 = operator_new(4);
        *puVar2 = &DAT_00972528;
        *(undefined4 **)(param_1 + 8) = puVar2;
      }
      FUN_007c653c(*(undefined4 *)(param_1 + 8),uVar1);
    }
    if (*(int *)(param_2 + 0x1c) << 0x1d < 0) {
      uVar1 = *(undefined4 *)(param_2 + 0xc);
      *(uint *)(param_1 + 0x1c) = *(uint *)(param_1 + 0x1c) | 4;
      if (*(undefined4 **)(param_1 + 0xc) == &DAT_00960c38) {
        puVar2 = operator_new(4);
        *puVar2 = &DAT_00972528;
        *(undefined4 **)(param_1 + 0xc) = puVar2;
      }
      FUN_007c653c(*(undefined4 *)(param_1 + 0xc),uVar1);
    }
    if (*(int *)(param_2 + 0x1c) << 0x1c < 0) {
      uVar1 = *(undefined4 *)(param_2 + 0x10);
      *(uint *)(param_1 + 0x1c) = *(uint *)(param_1 + 0x1c) | 8;
      if (*(undefined4 **)(param_1 + 0x10) == &DAT_00960c38) {
        puVar2 = operator_new(4);
        *puVar2 = &DAT_00972528;
        *(undefined4 **)(param_1 + 0x10) = puVar2;
      }
      FUN_007c653c(*(undefined4 *)(param_1 + 0x10),uVar1);
    }
    if (*(int *)(param_2 + 0x1c) << 0x1b < 0) {
      *(undefined1 *)(param_1 + 0x14) = *(undefined1 *)(param_2 + 0x14);
      *(uint *)(param_1 + 0x1c) = *(uint *)(param_1 + 0x1c) | 0x10;
    }
  }
  return;
}

// ---- FUN_00571b18  @ 0x571b18
undefined4 * FUN_00571b18(undefined4 *param_1,undefined4 param_2)

{
  *param_1 = &PTR_FUN_005719a0_1_009290e8;
  FUN_005715ec();
  FUN_005719d8(param_1,param_2);
  return param_1;
}

// ---- FUN_00571ba4  @ 0x571ba4
void FUN_00571ba4(int param_1)

{
  *(undefined4 *)(param_1 + 0x10) = 0;
  *(undefined4 *)(param_1 + 0x14) = 0;
  *(undefined4 *)(param_1 + 0x18) = 0;
  *(undefined4 *)(param_1 + 0x1c) = 0;
  *(undefined4 *)(param_1 + 0x28) = 0;
  *(undefined4 *)(param_1 + 0x2c) = 0;
  *(undefined4 *)(param_1 + 0x30) = 0;
  *(undefined4 **)(param_1 + 4) = &DAT_00960c38;
  *(undefined4 **)(param_1 + 8) = &DAT_00960c38;
  *(undefined4 **)(param_1 + 0xc) = &DAT_00960c38;
  *(undefined4 **)(param_1 + 0x20) = &DAT_00960c38;
  *(undefined4 *)(param_1 + 0x24) = 0;
  memset((void *)(param_1 + 0x34),0,4);
  return;
}

// ---- FUN_00571be8  @ 0x571be8
undefined4 * FUN_00571be8(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_00571d28_1_009290a8;
  FUN_00571ba4();
  return param_1;
}

// ---- FUN_00571c00  @ 0x571c00
void FUN_00571c00(void)

{
  vector<void(*)(),std::allocator<void(*)()>> *pvVar1;
  undefined4 uVar2;
  void *pvVar3;
  undefined4 *puVar4;
  undefined *puStack_c;
  
  if (DAT_00964494 == '\0') {
    DAT_00964494 = 1;
    FUN_0052f9dc("asD0Ev","asD0Ev",
                 "/builddata/pulse-data/agents/hpya5.eem/recipes/816348608/base/google3/googleclient/play_games_infra/play_games_sdk/proto/gen/snapshot_impl.pb.cc"
                );
    pvVar3 = operator_new(0x20);
    FUN_00571618();
    DAT_00964490 = pvVar3;
    pvVar3 = operator_new(0x38);
    FUN_00571be8();
    DAT_00964488 = pvVar3;
    FUN_00571c8c(pvVar3);
    puStack_c = &UNK_0057108d;
    FUN_0052f604(0x960c24,0x52f855);
    uVar2 = DAT_00960c30;
    FUN_0052fb80(DAT_00960c30);
    pvVar1 = DAT_00960c2c;
    puVar4 = *(undefined4 **)(DAT_00960c2c + 4);
    if (puVar4 == *(undefined4 **)(DAT_00960c2c + 8)) {
      std::vector<void(*)(),std::allocator<void(*)()>>::_M_emplace_back_aux<void(*const&)()>
                (DAT_00960c2c,(_func_void *)&puStack_c);
    }
    else {
      if (puVar4 != (undefined4 *)0x0) {
        *puVar4 = puStack_c;
      }
      *(int *)(pvVar1 + 4) = *(int *)(pvVar1 + 4) + 4;
    }
    FUN_0052f8cc(uVar2);
    return;
  }
  return;
}

// ---- FUN_00571c6c  @ 0x571c6c
int FUN_00571c6c(void)

{
  if (DAT_00964490 == 0) {
    FUN_00571c00();
  }
  return DAT_00964490;
}

// ---- FUN_00571c8c  @ 0x571c8c
void FUN_00571c8c(int param_1)

{
  undefined4 uVar1;
  
  uVar1 = FUN_00571c6c();
  *(undefined4 *)(param_1 + 0x24) = uVar1;
  return;
}

// ---- FUN_00571c98  @ 0x571c98
void * FUN_00571c98(void)

{
  void *pvVar1;
  
  pvVar1 = operator_new(0x38);
  FUN_00571be8();
  return pvVar1;
}

// ---- FUN_00571cac  @ 0x571cac
void FUN_00571cac(int param_1)

{
  undefined4 *puVar1;
  
  puVar1 = *(undefined4 **)(param_1 + 4);
  if ((puVar1 != &DAT_00960c38) && (puVar1 != (undefined4 *)0x0)) {
    FUN_007c5914(puVar1);
    operator_delete(puVar1);
  }
  puVar1 = *(undefined4 **)(param_1 + 8);
  if ((puVar1 != &DAT_00960c38) && (puVar1 != (undefined4 *)0x0)) {
    FUN_007c5914(puVar1);
    operator_delete(puVar1);
  }
  puVar1 = *(undefined4 **)(param_1 + 0xc);
  if ((puVar1 != &DAT_00960c38) && (puVar1 != (undefined4 *)0x0)) {
    FUN_007c5914(puVar1);
    operator_delete(puVar1);
  }
  puVar1 = *(undefined4 **)(param_1 + 0x20);
  if ((puVar1 != &DAT_00960c38) && (puVar1 != (undefined4 *)0x0)) {
    FUN_007c5914(puVar1);
    operator_delete(puVar1);
  }
  if ((param_1 != DAT_00964488) && (*(int **)(param_1 + 0x24) != (int *)0x0)) {
    (**(code **)(**(int **)(param_1 + 0x24) + 4))();
  }
  return;
}

// ---- FUN_00571d28  @ 0x571d28
undefined4 * FUN_00571d28(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_00571d28_1_009290a8;
  FUN_00571cac();
  FUN_0052fe6c(param_1);
  return param_1;
}

// ---- FUN_00571d48  @ 0x571d48
void * FUN_00571d48(void *param_1)

{
  FUN_00571d28();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_00572004  @ 0x572004
undefined4 FUN_00572004(int param_1)

{
  int iVar1;
  int *piVar2;
  undefined4 uVar3;
  
  if (*(int *)(param_1 + 0x14) << 0x1f < 0) {
    piVar2 = *(int **)(param_1 + 4);
    if (piVar2 == (int *)0x0) {
      piVar2 = *(int **)(DAT_00964498 + 4);
    }
    iVar1 = (**(code **)(*piVar2 + 0x14))();
    if (iVar1 == 0) {
      return 0;
    }
  }
  if (-1 < *(int *)(param_1 + 0x14) << 0x1e) {
    return 1;
  }
  piVar2 = *(int **)(param_1 + 8);
  if (piVar2 == (int *)0x0) {
    piVar2 = *(int **)(DAT_00964498 + 8);
  }
  uVar3 = (**(code **)(*piVar2 + 0x14))();
  return uVar3;
}

// ---- FUN_005720a4  @ 0x5720a4
undefined4 FUN_005720a4(int param_1)

{
  void *pvVar1;
  
  *(uint *)(param_1 + 0x14) = *(uint *)(param_1 + 0x14) | 1;
  if (*(int *)(param_1 + 4) == 0) {
    pvVar1 = operator_new(0x78);
    FUN_00573a64();
    *(void **)(param_1 + 4) = pvVar1;
  }
  return *(undefined4 *)(param_1 + 4);
}

// ---- FUN_005720d0  @ 0x5720d0
undefined4 FUN_005720d0(int param_1)

{
  void *pvVar1;
  
  *(uint *)(param_1 + 0x14) = *(uint *)(param_1 + 0x14) | 2;
  if (*(int *)(param_1 + 8) == 0) {
    pvVar1 = operator_new(0x78);
    FUN_00573a64();
    *(void **)(param_1 + 8) = pvVar1;
  }
  return *(undefined4 *)(param_1 + 8);
}

// ---- FUN_005720fc  @ 0x5720fc
void FUN_005720fc(int param_1)

{
  undefined4 uVar1;
  
  uVar1 = FUN_00573ba4();
  *(undefined4 *)(param_1 + 4) = uVar1;
  uVar1 = FUN_00573ba4();
  *(undefined4 *)(param_1 + 8) = uVar1;
  return;
}

// ---- FUN_0057210e  @ 0x57210e
void FUN_0057210e(int param_1)

{
  *(undefined4 *)(param_1 + 0x10) = 0;
  *(undefined4 *)(param_1 + 4) = 0;
  *(undefined4 *)(param_1 + 8) = 0;
  *(undefined1 *)(param_1 + 0xc) = 0;
  memset((void *)(param_1 + 0x14),0,4);
  return;
}

// ---- FUN_00572128  @ 0x572128
undefined4 * FUN_00572128(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_005721d4_1_00929128;
  FUN_0057210e();
  return param_1;
}

// ---- FUN_00572140  @ 0x572140
void FUN_00572140(void)

{
  vector<void(*)(),std::allocator<void(*)()>> *pvVar1;
  undefined4 uVar2;
  void *pvVar3;
  undefined4 *puVar4;
  undefined *puStack_c;
  
  if (DAT_00964495 == '\0') {
    DAT_00964495 = 1;
    FUN_0052f9dc("asD0Ev","asD0Ev",
                 "/builddata/pulse-data/agents/hpya5.eem/recipes/816348608/base/google3/googleclient/play_games_infra/play_games_sdk/proto/gen/tbmp_cache_entry.pb.cc"
                );
    FUN_00573a88();
    pvVar3 = operator_new(0x18);
    FUN_00572128();
    DAT_00964498 = pvVar3;
    FUN_005720fc(pvVar3);
    puStack_c = &UNK_00571fd5;
    FUN_0052f604(0x960c24,0x52f855);
    uVar2 = DAT_00960c30;
    FUN_0052fb80(DAT_00960c30);
    pvVar1 = DAT_00960c2c;
    puVar4 = *(undefined4 **)(DAT_00960c2c + 4);
    if (puVar4 == *(undefined4 **)(DAT_00960c2c + 8)) {
      std::vector<void(*)(),std::allocator<void(*)()>>::_M_emplace_back_aux<void(*const&)()>
                (DAT_00960c2c,(_func_void *)&puStack_c);
    }
    else {
      if (puVar4 != (undefined4 *)0x0) {
        *puVar4 = puStack_c;
      }
      *(int *)(pvVar1 + 4) = *(int *)(pvVar1 + 4) + 4;
    }
    FUN_0052f8cc(uVar2);
    return;
  }
  return;
}

// ---- FUN_005721ac  @ 0x5721ac
void FUN_005721ac(int param_1)

{
  if (param_1 != DAT_00964498) {
    if (*(int **)(param_1 + 4) != (int *)0x0) {
      (**(code **)(**(int **)(param_1 + 4) + 4))();
    }
    if (*(int **)(param_1 + 8) != (int *)0x0) {
      (**(code **)(**(int **)(param_1 + 8) + 4))();
    }
  }
  return;
}

// ---- FUN_005721d4  @ 0x5721d4
undefined4 * FUN_005721d4(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_005721d4_1_00929128;
  FUN_005721ac();
  FUN_0052fe6c(param_1);
  return param_1;
}

// ---- FUN_005721f4  @ 0x5721f4
void * FUN_005721f4(void *param_1)

{
  FUN_005721d4();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_00572350  @ 0x572350
void FUN_00572350(int param_1)

{
  if ((*(uint *)(param_1 + 0x14) & 0xff) != 0) {
    if (((int)(*(uint *)(param_1 + 0x14) << 0x1f) < 0) && (*(int *)(param_1 + 4) != 0)) {
      FUN_0057409c();
    }
    if ((*(int *)(param_1 + 0x14) << 0x1e < 0) && (*(int *)(param_1 + 8) != 0)) {
      FUN_0057409c();
    }
    *(undefined1 *)(param_1 + 0xc) = 0;
  }
  memset((void *)(param_1 + 0x14),0,4);
  return;
}

// ---- FUN_0057238a  @ 0x57238a
char FUN_0057238a(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  char cVar1;
  int iVar2;
  undefined4 uVar3;
  undefined4 local_14;
  
  local_14 = param_2;
  iVar2 = FUN_005307ec(param_1,&local_14,param_3,param_4,param_1);
  if ((iVar2 != 0) &&
     (iVar2 = *(int *)(param_1 + 0x2c) + 1, *(int *)(param_1 + 0x2c) = iVar2,
     iVar2 <= *(int *)(param_1 + 0x30))) {
    uVar3 = FUN_00530eac(param_1,local_14);
    iVar2 = FUN_0057420c(param_2,param_1);
    if ((iVar2 != 0) && (cVar1 = *(char *)(param_1 + 0x18), cVar1 != '\0')) {
      FUN_00530eea(param_1,uVar3);
      if (*(int *)(param_1 + 0x2c) < 1) {
        return cVar1;
      }
      *(int *)(param_1 + 0x2c) = *(int *)(param_1 + 0x2c) + -1;
      return cVar1;
    }
  }
  return '\0';
}

// ---- FUN_005723de  @ 0x5723de
int FUN_005723de(int param_1,int param_2)

{
  undefined4 uVar1;
  int iVar2;
  byte *pbVar3;
  uint uVar4;
  uint uVar5;
  char *pcVar6;
  int iVar7;
  int local_14;
  
  iVar7 = param_1;
  local_14 = param_2;
LAB_005723e6:
  do {
    pbVar3 = *(byte **)(param_2 + 4);
    if ((pbVar3 < *(byte **)(param_2 + 8)) && (uVar5 = (uint)*pbVar3, -1 < (int)(uVar5 << 0x18))) {
      *(uint *)(param_2 + 0x14) = uVar5;
      *(byte **)(param_2 + 4) = pbVar3 + 1;
    }
    else {
      uVar5 = FUN_00531548(param_2);
      *(uint *)(param_2 + 0x14) = uVar5;
    }
    if (uVar5 == 0) {
      return 1;
    }
    uVar4 = uVar5 >> 3;
    uVar5 = uVar5 & 7;
    if (uVar4 == 2) {
      if (uVar5 == 2) {
LAB_0057244e:
        uVar1 = FUN_005720d0(param_1);
        iVar2 = FUN_0057238a(param_2,uVar1);
        if (iVar2 == 0) {
          return 0;
        }
        pcVar6 = *(char **)(param_2 + 4);
        if ((pcVar6 < *(char **)(param_2 + 8)) && (*pcVar6 == '\x18')) {
          pcVar6 = pcVar6 + 1;
          *(char **)(param_2 + 4) = pcVar6;
          uVar1 = 0x18;
LAB_00572476:
          iVar2 = FUN_005307ec(param_2,&local_14,uVar1,pcVar6,iVar7);
          if (iVar2 == 0) {
            return 0;
          }
          *(bool *)(param_1 + 0xc) = local_14 != 0;
          *(uint *)(param_1 + 0x14) = *(uint *)(param_1 + 0x14) | 4;
          if ((*(int *)(param_2 + 4) == *(int *)(param_2 + 8)) &&
             ((*(int *)(param_2 + 0x20) != 0 ||
              (*(int *)(param_2 + 0xc) == *(int *)(param_2 + 0x1c))))) {
            *(undefined4 *)(param_2 + 0x14) = 0;
            *(undefined1 *)(param_2 + 0x18) = 1;
            return iVar2;
          }
        }
        goto LAB_005723e6;
      }
    }
    else if (uVar4 == 3) {
      uVar1 = 3;
      pcVar6 = (char *)0x0;
      if (uVar5 == 0) goto LAB_00572476;
    }
    else if ((uVar4 == 1) && (uVar5 == 2)) {
      uVar1 = FUN_005720a4(param_1);
      iVar2 = FUN_0057238a(param_2,uVar1);
      if (iVar2 == 0) {
        return 0;
      }
      pcVar6 = *(char **)(param_2 + 4);
      if ((pcVar6 < *(char **)(param_2 + 8)) && (*pcVar6 == '\x12')) {
        *(char **)(param_2 + 4) = pcVar6 + 1;
        goto LAB_0057244e;
      }
      goto LAB_005723e6;
    }
    if (uVar5 == 4) {
      return 1;
    }
    iVar2 = FUN_0053086a(param_2);
    if (iVar2 == 0) {
      return 0;
    }
  } while( true );
}

// ---- FUN_005724c8  @ 0x5724c8
int FUN_005724c8(int param_1)

{
  int iVar1;
  uint uVar2;
  int iVar3;
  
  iVar1 = 0;
  if ((*(uint *)(param_1 + 0x14) & 0xff) != 0) {
    iVar1 = 0;
    if ((*(uint *)(param_1 + 0x14) & 1) != 0) {
      iVar1 = *(int *)(param_1 + 4);
      if (iVar1 == 0) {
        iVar1 = *(int *)(DAT_00964498 + 4);
      }
      uVar2 = FUN_0057479c(iVar1);
      if (uVar2 < 0x80) {
        iVar1 = 1;
      }
      else {
        iVar1 = FUN_00531a52();
      }
      iVar1 = uVar2 + iVar1 + 1;
    }
    if (*(int *)(param_1 + 0x14) << 0x1e < 0) {
      iVar3 = *(int *)(param_1 + 8);
      if (iVar3 == 0) {
        iVar3 = *(int *)(DAT_00964498 + 8);
      }
      uVar2 = FUN_0057479c(iVar3);
      if (uVar2 < 0x80) {
        iVar3 = 1;
      }
      else {
        iVar3 = FUN_00531a52();
      }
      iVar1 = iVar1 + iVar3 + uVar2 + 1;
    }
    if (*(int *)(param_1 + 0x14) << 0x1d < 0) {
      iVar1 = iVar1 + 2;
    }
  }
  *(int *)(param_1 + 0x10) = iVar1;
  return iVar1;
}

// ---- FUN_0057255c  @ 0x57255c
void FUN_0057255c(int param_1)

{
  if ((*(uint *)(param_1 + 0x18) & 0xff) != 0) {
    *(undefined4 *)(param_1 + 8) = 0;
    *(undefined4 *)(param_1 + 0xc) = 0;
    if (((int)(*(uint *)(param_1 + 0x18) << 0x1e) < 0) &&
       (*(undefined4 **)(param_1 + 0x10) != &DAT_00960c38)) {
      FUN_007c5b70();
    }
  }
  memset((void *)(param_1 + 0x18),0,4);
  return;
}

// ---- FUN_00572598  @ 0x572598
int FUN_00572598(int param_1)

{
  int iVar1;
  int iVar2;
  int *piVar3;
  
  iVar1 = 0;
  if ((*(uint *)(param_1 + 0x18) & 0xff) != 0) {
    iVar1 = 0;
    if ((*(uint *)(param_1 + 0x18) & 1) != 0) {
      iVar1 = FUN_00531a7a(*(undefined4 *)(param_1 + 8),*(undefined4 *)(param_1 + 0xc));
      iVar1 = iVar1 + 1;
    }
    if (*(int *)(param_1 + 0x18) << 0x1e < 0) {
      piVar3 = *(int **)(param_1 + 0x10);
      if (*(uint *)(*piVar3 + -0xc) < 0x80) {
        iVar2 = 1;
      }
      else {
        iVar2 = FUN_00531a52();
      }
      iVar1 = iVar1 + iVar2 + *(int *)(*piVar3 + -0xc) + 1;
    }
  }
  *(int *)(param_1 + 0x14) = iVar1;
  return iVar1;
}

// ---- FUN_005725e0  @ 0x5725e0
undefined4 FUN_005725e0(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uStack_c;
  
  uStack_c = param_2;
  FUN_007c6a60(param_1,"gpg.proto.TBMPCacheMetadata",&uStack_c,param_4,param_1);
  return param_1;
}

// ---- FUN_0057272c  @ 0x57272c
void FUN_0057272c(int param_1)

{
  *(undefined4 *)(param_1 + 8) = 0;
  *(undefined4 *)(param_1 + 0xc) = 0;
  *(undefined4 *)(param_1 + 0x14) = 0;
  *(undefined4 **)(param_1 + 0x10) = &DAT_00960c38;
  memset((void *)(param_1 + 0x18),0,4);
  return;
}

// ---- FUN_00572750  @ 0x572750
undefined4 * FUN_00572750(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_005727f4_1_00929168;
  FUN_0057272c();
  return param_1;
}

// ---- FUN_00572768  @ 0x572768
void FUN_00572768(void)

{
  vector<void(*)(),std::allocator<void(*)()>> *pvVar1;
  undefined4 uVar2;
  void *pvVar3;
  undefined4 *puVar4;
  undefined *puStack_c;
  
  if (DAT_0096449e == '\0') {
    DAT_0096449e = 1;
    FUN_0052f9dc("asD0Ev","asD0Ev",
                 "/builddata/pulse-data/agents/hpya5.eem/recipes/816348608/base/google3/googleclient/play_games_infra/play_games_sdk/proto/gen/tbmp_cache_metadata.pb.cc"
                );
    pvVar3 = operator_new(0x20);
    FUN_00572750();
    puStack_c = &UNK_00572541;
    DAT_009644a0 = pvVar3;
    FUN_0052f604(0x960c24,0x52f855);
    uVar2 = DAT_00960c30;
    FUN_0052fb80(DAT_00960c30);
    pvVar1 = DAT_00960c2c;
    puVar4 = *(undefined4 **)(DAT_00960c2c + 4);
    if (puVar4 == *(undefined4 **)(DAT_00960c2c + 8)) {
      std::vector<void(*)(),std::allocator<void(*)()>>::_M_emplace_back_aux<void(*const&)()>
                (DAT_00960c2c,(_func_void *)&puStack_c);
    }
    else {
      if (puVar4 != (undefined4 *)0x0) {
        *puVar4 = puStack_c;
      }
      *(int *)(pvVar1 + 4) = *(int *)(pvVar1 + 4) + 4;
    }
    FUN_0052f8cc(uVar2);
    return;
  }
  return;
}

// ---- FUN_005727cc  @ 0x5727cc
void FUN_005727cc(int param_1)

{
  undefined4 *puVar1;
  
  puVar1 = *(undefined4 **)(param_1 + 0x10);
  if ((puVar1 != &DAT_00960c38) && (puVar1 != (undefined4 *)0x0)) {
    FUN_007c5914(puVar1);
    operator_delete(puVar1);
    return;
  }
  return;
}

// ---- FUN_005727f4  @ 0x5727f4
undefined4 * FUN_005727f4(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_005727f4_1_00929168;
  FUN_005727cc();
  FUN_0052fe6c(param_1);
  return param_1;
}

// ---- FUN_00572814  @ 0x572814
void * FUN_00572814(void *param_1)

{
  FUN_005727f4();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_005729b4  @ 0x5729b4
void FUN_005729b4(int param_1)

{
  if ((*(uint *)(param_1 + 0x14) & 0xff) != 0) {
    if (((int)(*(uint *)(param_1 + 0x14) << 0x1f) < 0) &&
       (*(undefined4 **)(param_1 + 4) != &DAT_00960c38)) {
      FUN_007c5b70();
    }
    *(undefined4 *)(param_1 + 8) = 1;
    *(undefined4 *)(param_1 + 0xc) = 0;
  }
  memset((void *)(param_1 + 0x14),0,4);
  return;
}

// ---- FUN_00572aa8  @ 0x572aa8
void FUN_00572aa8(int param_1,undefined4 param_2)

{
  int iVar1;
  
  if (*(int *)(param_1 + 0x30) << 0x1f < 0) {
    FUN_00530b60(1,*(undefined4 *)(param_1 + 4),param_2);
  }
  if (*(int *)(param_1 + 0x30) << 0x1e < 0) {
    FUN_00530b46(2,*(undefined4 *)(param_1 + 0xc),param_2);
  }
  if (*(int *)(param_1 + 0x30) << 0x1d < 0) {
    FUN_00530b60(3,*(undefined4 *)(param_1 + 8),param_2);
  }
  if (*(int *)(param_1 + 0x30) << 0x1c < 0) {
    FUN_00530b2c(4,*(undefined1 *)(param_1 + 0x10),param_2);
  }
  if (*(int *)(param_1 + 0x30) << 0x1b < 0) {
    FUN_00530bd8(5,*(undefined4 *)(param_1 + 0x14),param_2);
  }
  for (iVar1 = 0; iVar1 < *(int *)(param_1 + 0x1c); iVar1 = iVar1 + 1) {
    FUN_00530c7a(6,*(undefined4 *)(*(int *)(param_1 + 0x18) + iVar1 * 4),param_2);
  }
  if (*(int *)(param_1 + 0x30) << 0x19 < 0) {
    FUN_005309ec(7,*(undefined4 *)(param_1 + 0x28),param_2);
    return;
  }
  return;
}

// ---- FUN_00572b2e  @ 0x572b2e
void FUN_00572b2e(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  if (*(int *)(param_1 + 0x14) << 0x1f < 0) {
    FUN_00530b60(1,*(undefined4 *)(param_1 + 4),param_2);
  }
  if (*(int *)(param_1 + 0x14) << 0x1e < 0) {
    FUN_00530b46(2,*(undefined4 *)(param_1 + 8),param_2);
  }
  if (*(int *)(param_1 + 0x14) << 0x1d < 0) {
    FUN_005309ec(3,*(undefined4 *)(param_1 + 0xc),param_2,param_4);
    return;
  }
  return;
}

// ---- FUN_00572b9c  @ 0x572b9c
int FUN_00572b9c(int param_1,int param_2)

{
  int iVar1;
  int iVar2;
  byte *pbVar3;
  uint uVar4;
  undefined4 *puVar5;
  undefined4 *extraout_r2;
  uint uVar6;
  undefined4 *puVar7;
  char *pcVar8;
  int iVar9;
  int local_1c;
  
  iVar9 = param_1;
  local_1c = param_2;
LAB_00572baa:
  while( true ) {
    pbVar3 = *(byte **)(param_2 + 4);
    if ((pbVar3 < *(byte **)(param_2 + 8)) && (uVar6 = (uint)*pbVar3, -1 < (int)(uVar6 << 0x18))) {
      *(uint *)(param_2 + 0x14) = uVar6;
      *(byte **)(param_2 + 4) = pbVar3 + 1;
    }
    else {
      uVar6 = FUN_00531548(param_2);
      *(uint *)(param_2 + 0x14) = uVar6;
    }
    if (uVar6 == 0) {
      return 1;
    }
    uVar4 = uVar6 >> 3;
    uVar6 = uVar6 & 7;
    if (uVar4 != 2) break;
    if (uVar6 != 0) goto LAB_00572c9e;
LAB_00572c32:
    iVar2 = FUN_005307ec(param_2,&local_1c);
    iVar1 = local_1c;
    if (iVar2 == 0) {
      return 0;
    }
    iVar2 = FUN_0056e490(local_1c);
    if (iVar2 != 0) {
      *(int *)(param_1 + 8) = iVar1;
      *(uint *)(param_1 + 0x14) = *(uint *)(param_1 + 0x14) | 2;
    }
    pcVar8 = *(char **)(param_2 + 4);
    if ((pcVar8 < *(char **)(param_2 + 8)) && (*pcVar8 == '\x18')) {
      *(char **)(param_2 + 4) = pcVar8 + 1;
LAB_00572c6c:
      iVar1 = FUN_005307ec(param_2,param_1 + 0xc);
      if (iVar1 == 0) {
        return 0;
      }
      *(uint *)(param_1 + 0x14) = *(uint *)(param_1 + 0x14) | 4;
      if ((*(int *)(param_2 + 4) == *(int *)(param_2 + 8)) &&
         ((*(int *)(param_2 + 0x20) != 0 || (*(int *)(param_2 + 0xc) == *(int *)(param_2 + 0x1c)))))
      {
        *(undefined4 *)(param_2 + 0x14) = 0;
        *(undefined1 *)(param_2 + 0x18) = 1;
        return iVar1;
      }
    }
  }
  if (uVar4 == 3) {
    if (uVar6 == 0) goto LAB_00572c6c;
  }
  else if ((uVar4 == 1) && (uVar6 == 2)) {
    puVar5 = *(undefined4 **)(param_1 + 4);
    *(uint *)(param_1 + 0x14) = *(uint *)(param_1 + 0x14) | 1;
    puVar7 = &DAT_00960c38;
    if (puVar5 == &DAT_00960c38) {
      puVar5 = operator_new(4);
      puVar7 = (undefined4 *)&DAT_00972528;
      *puVar5 = &DAT_00972528;
      *(undefined4 **)(param_1 + 4) = puVar5;
      puVar5 = extraout_r2;
    }
    iVar1 = FUN_00530d42(param_2,*(undefined4 *)(param_1 + 4),puVar5,puVar7,iVar9);
    if (iVar1 == 0) {
      return 0;
    }
    pcVar8 = *(char **)(param_2 + 4);
    if ((pcVar8 < *(char **)(param_2 + 8)) && (*pcVar8 == '\x10')) {
      *(char **)(param_2 + 4) = pcVar8 + 1;
      goto LAB_00572c32;
    }
    goto LAB_00572baa;
  }
LAB_00572c9e:
  if (uVar6 == 4) {
    return 1;
  }
  iVar1 = FUN_0053086a(param_2);
  if (iVar1 == 0) {
    return 0;
  }
  goto LAB_00572baa;
}

// ---- FUN_00572cc0  @ 0x572cc0
int FUN_00572cc0(int param_1)

{
  int iVar1;
  int iVar2;
  
  iVar1 = 0;
  if ((*(uint *)(param_1 + 0x14) & 0xff) != 0) {
    iVar1 = 0;
    if ((*(uint *)(param_1 + 0x14) & 1) != 0) {
      iVar1 = FUN_0056994c(*(undefined4 *)(param_1 + 4));
      iVar1 = iVar1 + 1;
    }
    if (*(int *)(param_1 + 0x14) << 0x1e < 0) {
      if (*(int *)(param_1 + 8) < 0) {
        iVar2 = 10;
      }
      else {
        iVar2 = FUN_00569940();
      }
      iVar1 = iVar1 + iVar2 + 1;
    }
    if (*(int *)(param_1 + 0x14) << 0x1d < 0) {
      iVar2 = FUN_00569940(*(undefined4 *)(param_1 + 0xc));
      iVar1 = iVar1 + iVar2 + 1;
    }
  }
  *(int *)(param_1 + 0x10) = iVar1;
  return iVar1;
}

// ---- FUN_00572d08  @ 0x572d08
int FUN_00572d08(int param_1)

{
  int iVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  int *piVar5;
  
  iVar1 = 0;
  if ((*(uint *)(param_1 + 0x30) & 0xff) != 0) {
    iVar1 = 0;
    if ((*(uint *)(param_1 + 0x30) & 1) != 0) {
      iVar1 = FUN_0056994c(*(undefined4 *)(param_1 + 4));
      iVar1 = iVar1 + 1;
    }
    if (*(int *)(param_1 + 0x30) << 0x1e < 0) {
      if (*(int *)(param_1 + 0xc) < 0) {
        iVar2 = 10;
      }
      else {
        iVar2 = FUN_00569940();
      }
      iVar1 = iVar1 + iVar2 + 1;
    }
    if (*(int *)(param_1 + 0x30) << 0x1d < 0) {
      iVar2 = FUN_0056994c(*(undefined4 *)(param_1 + 8));
      iVar1 = iVar1 + iVar2 + 1;
    }
    if (*(int *)(param_1 + 0x30) << 0x1c < 0) {
      iVar1 = iVar1 + 2;
    }
    if (*(int *)(param_1 + 0x30) << 0x1b < 0) {
      piVar5 = *(int **)(param_1 + 0x14);
      iVar2 = FUN_00569940(*(undefined4 *)(*piVar5 + -0xc));
      iVar1 = iVar1 + iVar2 + *(int *)(*piVar5 + -0xc) + 1;
    }
    if (*(int *)(param_1 + 0x30) << 0x19 < 0) {
      iVar2 = FUN_00569940(*(undefined4 *)(param_1 + 0x28));
      iVar1 = iVar1 + iVar2 + 1;
    }
  }
  iVar1 = iVar1 + *(int *)(param_1 + 0x1c);
  for (iVar2 = 0; iVar2 < *(int *)(param_1 + 0x1c); iVar2 = iVar2 + 1) {
    iVar3 = FUN_00572cc0(*(undefined4 *)(*(int *)(param_1 + 0x18) + iVar2 * 4));
    iVar4 = FUN_00569940();
    iVar1 = iVar1 + iVar4 + iVar3;
  }
  *(int *)(param_1 + 0x2c) = iVar1;
  return iVar1;
}

// ---- FUN_00572da8  @ 0x572da8
bool FUN_00572da8(int param_1)

{
  return param_1 - 1U < 8;
}

// ---- FUN_00572db8  @ 0x572db8
void FUN_00572db8(int param_1)

{
  *(undefined4 *)(param_1 + 0x10) = 0;
  *(undefined4 *)(param_1 + 0xc) = 0;
  *(undefined4 **)(param_1 + 4) = &DAT_00960c38;
  *(undefined4 *)(param_1 + 8) = 1;
  memset((void *)(param_1 + 0x14),0,4);
  return;
}

// ---- FUN_00572de0  @ 0x572de0
undefined4 * FUN_00572de0(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_00572e34_1_009291e8;
  FUN_00572db8();
  return param_1;
}

// ---- FUN_00572e0c  @ 0x572e0c
void FUN_00572e0c(int param_1)

{
  undefined4 *puVar1;
  
  puVar1 = *(undefined4 **)(param_1 + 4);
  if ((puVar1 != &DAT_00960c38) && (puVar1 != (undefined4 *)0x0)) {
    FUN_007c5914(puVar1);
    operator_delete(puVar1);
    return;
  }
  return;
}

// ---- FUN_00572e34  @ 0x572e34
undefined4 * FUN_00572e34(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_00572e34_1_009291e8;
  FUN_00572e0c();
  FUN_0052fe6c(param_1);
  return param_1;
}

// ---- FUN_00572e54  @ 0x572e54
void * FUN_00572e54(void *param_1)

{
  FUN_00572e34();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_00572e6c  @ 0x572e6c
void FUN_00572e6c(int param_1,int param_2)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  undefined1 auStack_24 [4];
  undefined1 auStack_20 [16];
  
  if (param_2 == param_1) {
    FUN_0052f7f0(auStack_20,3,
                 "/builddata/pulse-data/agents/hpya5.eem/recipes/816348608/base/google3/googleclient/play_games_infra/play_games_sdk/proto/gen/tbmp_op.pb.cc"
                 ,0x125);
    uVar1 = FUN_0052f6be(auStack_20,"CHECK failed: (&from) != (this): ");
    FUN_0052f9d4(auStack_24,uVar1);
    FUN_0052f808(auStack_20);
  }
  if ((*(uint *)(param_2 + 0x14) & 0xff) != 0) {
    if ((int)(*(uint *)(param_2 + 0x14) << 0x1f) < 0) {
      uVar1 = *(undefined4 *)(param_2 + 4);
      *(uint *)(param_1 + 0x14) = *(uint *)(param_1 + 0x14) | 1;
      if (*(undefined4 **)(param_1 + 4) == &DAT_00960c38) {
        puVar2 = operator_new(4);
        *puVar2 = &DAT_00972528;
        *(undefined4 **)(param_1 + 4) = puVar2;
      }
      FUN_007c653c(*(undefined4 *)(param_1 + 4),uVar1);
    }
    if (*(int *)(param_2 + 0x14) << 0x1e < 0) {
      *(undefined4 *)(param_1 + 8) = *(undefined4 *)(param_2 + 8);
      *(uint *)(param_1 + 0x14) = *(uint *)(param_1 + 0x14) | 2;
    }
    if (*(int *)(param_2 + 0x14) << 0x1d < 0) {
      *(undefined4 *)(param_1 + 0xc) = *(undefined4 *)(param_2 + 0xc);
      *(uint *)(param_1 + 0x14) = *(uint *)(param_1 + 0x14) | 4;
    }
  }
  return;
}

// ---- FUN_00572fa4  @ 0x572fa4
void FUN_00572fa4(int param_1)

{
  *(undefined4 *)(param_1 + 0x2c) = 0;
  *(undefined4 *)(param_1 + 0xc) = 1;
  *(undefined4 **)(param_1 + 4) = &DAT_00960c38;
  *(undefined4 **)(param_1 + 8) = &DAT_00960c38;
  *(undefined1 *)(param_1 + 0x10) = 0;
  *(undefined4 **)(param_1 + 0x14) = &DAT_00960c38;
  *(undefined4 *)(param_1 + 0x28) = 0;
  memset((void *)(param_1 + 0x30),0,4);
  return;
}

// ---- FUN_00572fd0  @ 0x572fd0
undefined4 * FUN_00572fd0(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_00573620_1_009291a8;
  param_1[6] = 0;
  param_1[7] = 0;
  param_1[8] = 0;
  param_1[9] = 0;
  FUN_00572fa4();
  return param_1;
}

// ---- FUN_00572ff4  @ 0x572ff4
void FUN_00572ff4(void)

{
  vector<void(*)(),std::allocator<void(*)()>> *pvVar1;
  undefined4 uVar2;
  void *pvVar3;
  undefined4 *puVar4;
  undefined *puStack_c;
  
  if (DAT_009644a4 == '\0') {
    DAT_009644a4 = 1;
    FUN_0052f9dc("asD0Ev","asD0Ev",
                 "/builddata/pulse-data/agents/hpya5.eem/recipes/816348608/base/google3/googleclient/play_games_infra/play_games_sdk/proto/gen/tbmp_op.pb.cc"
                );
    FUN_0056e500();
    pvVar3 = operator_new(0x34);
    FUN_00572fd0();
    DAT_009644a8 = pvVar3;
    pvVar3 = operator_new(0x18);
    FUN_00572de0();
    puStack_c = &UNK_0057297d;
    DAT_009644b0 = pvVar3;
    FUN_0052f604(0x960c24,0x52f855);
    uVar2 = DAT_00960c30;
    FUN_0052fb80(DAT_00960c30);
    pvVar1 = DAT_00960c2c;
    puVar4 = *(undefined4 **)(DAT_00960c2c + 4);
    if (puVar4 == *(undefined4 **)(DAT_00960c2c + 8)) {
      std::vector<void(*)(),std::allocator<void(*)()>>::_M_emplace_back_aux<void(*const&)()>
                (DAT_00960c2c,(_func_void *)&puStack_c);
    }
    else {
      if (puVar4 != (undefined4 *)0x0) {
        *puVar4 = puStack_c;
      }
      *(int *)(pvVar1 + 4) = *(int *)(pvVar1 + 4) + 4;
    }
    FUN_0052f8cc(uVar2);
    return;
  }
  return;
}

// ---- FUN_00573090  @ 0x573090
void FUN_00573090(int param_1)

{
  undefined4 *puVar1;
  
  puVar1 = *(undefined4 **)(param_1 + 4);
  if ((puVar1 != &DAT_00960c38) && (puVar1 != (undefined4 *)0x0)) {
    FUN_007c5914(puVar1);
    operator_delete(puVar1);
  }
  puVar1 = *(undefined4 **)(param_1 + 8);
  if ((puVar1 != &DAT_00960c38) && (puVar1 != (undefined4 *)0x0)) {
    FUN_007c5914(puVar1);
    operator_delete(puVar1);
  }
  puVar1 = *(undefined4 **)(param_1 + 0x14);
  if ((puVar1 != &DAT_00960c38) && (puVar1 != (undefined4 *)0x0)) {
    FUN_007c5914(puVar1);
    operator_delete(puVar1);
    return;
  }
  return;
}

// ---- FUN_00573182  @ 0x573182
void * FUN_00573182(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  void *pvVar1;
  int iVar2;
  int iVar3;
  
  iVar3 = param_1[1];
  iVar2 = param_1[2];
  if (iVar3 < iVar2) {
    param_1[1] = iVar3 + 1;
    return *(void **)(*param_1 + iVar3 * 4);
  }
  if (iVar2 == param_1[3]) {
    FUN_00530720(param_1,iVar2 + 1,param_3,param_1[3],param_4);
  }
  param_1[2] = param_1[2] + 1;
  pvVar1 = operator_new(0x18);
  FUN_00572de0();
  iVar2 = param_1[1];
  param_1[1] = iVar2 + 1;
  *(void **)(*param_1 + iVar2 * 4) = pvVar1;
  return pvVar1;
}

// ---- FUN_005731c8  @ 0x5731c8
int FUN_005731c8(int param_1,int param_2,undefined4 param_3)

{
  char cVar1;
  int iVar2;
  undefined4 *puVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  int iVar6;
  uint uVar7;
  byte *pbVar8;
  uint uVar9;
  char *pcVar10;
  int iVar11;
  int local_2c;
  undefined4 uStack_28;
  
  iVar11 = param_1;
  local_2c = param_2;
  uStack_28 = param_3;
LAB_005731da:
  pbVar8 = *(byte **)(param_2 + 4);
  if ((pbVar8 < *(byte **)(param_2 + 8)) && (uVar7 = (uint)*pbVar8, -1 < (int)(uVar7 << 0x18))) {
    *(uint *)(param_2 + 0x14) = uVar7;
    *(byte **)(param_2 + 4) = pbVar8 + 1;
  }
  else {
    uVar7 = FUN_00531548(param_2);
    *(uint *)(param_2 + 0x14) = uVar7;
  }
  if (uVar7 == 0) {
    return 1;
  }
  uVar9 = uVar7 & 7;
  switch(uVar7 >> 3) {
  case 1:
    if (uVar9 != 2) break;
    *(uint *)(param_1 + 0x30) = *(uint *)(param_1 + 0x30) | 1;
    if (*(undefined4 **)(param_1 + 4) == &DAT_00960c38) {
      puVar3 = operator_new(4);
      *puVar3 = &DAT_00972528;
      *(undefined4 **)(param_1 + 4) = puVar3;
    }
    iVar6 = FUN_00530d42(param_2,*(undefined4 *)(param_1 + 4));
    if (iVar6 == 0) {
      return 0;
    }
    pcVar10 = *(char **)(param_2 + 4);
    if ((pcVar10 < *(char **)(param_2 + 8)) && (*pcVar10 == '\x10')) {
      *(char **)(param_2 + 4) = pcVar10 + 1;
LAB_00573270:
      iVar2 = FUN_005307ec(param_2,&local_2c);
      iVar6 = local_2c;
      if (iVar2 == 0) {
        return 0;
      }
      iVar2 = FUN_00572da8(local_2c);
      if (iVar2 != 0) {
        *(int *)(param_1 + 0xc) = iVar6;
        *(uint *)(param_1 + 0x30) = *(uint *)(param_1 + 0x30) | 2;
      }
      pcVar10 = *(char **)(param_2 + 4);
      if ((pcVar10 < *(char **)(param_2 + 8)) && (*pcVar10 == '\x1a')) {
        *(char **)(param_2 + 4) = pcVar10 + 1;
LAB_005732ae:
        *(uint *)(param_1 + 0x30) = *(uint *)(param_1 + 0x30) | 4;
        if (*(undefined4 **)(param_1 + 8) == &DAT_00960c38) {
          puVar3 = operator_new(4);
          *puVar3 = &DAT_00972528;
          *(undefined4 **)(param_1 + 8) = puVar3;
        }
        iVar6 = FUN_00530d42(param_2,*(undefined4 *)(param_1 + 8));
        if (iVar6 == 0) {
          return 0;
        }
        pcVar10 = *(char **)(param_2 + 4);
        if ((pcVar10 < *(char **)(param_2 + 8)) && (*pcVar10 == ' ')) {
          *(char **)(param_2 + 4) = pcVar10 + 1;
LAB_005732fa:
          iVar6 = FUN_005307ec(param_2,&local_2c);
          if (iVar6 == 0) {
            return 0;
          }
          *(bool *)(param_1 + 0x10) = local_2c != 0;
          *(uint *)(param_1 + 0x30) = *(uint *)(param_1 + 0x30) | 8;
          pcVar10 = *(char **)(param_2 + 4);
          if ((pcVar10 < *(char **)(param_2 + 8)) && (*pcVar10 == '*')) {
            *(char **)(param_2 + 4) = pcVar10 + 1;
LAB_00573336:
            *(uint *)(param_1 + 0x30) = *(uint *)(param_1 + 0x30) | 0x10;
            if (*(undefined4 **)(param_1 + 0x14) == &DAT_00960c38) {
              puVar3 = operator_new(4);
              *puVar3 = &DAT_00972528;
              *(undefined4 **)(param_1 + 0x14) = puVar3;
            }
            iVar6 = FUN_00530d9c(param_2,*(undefined4 *)(param_1 + 0x14));
            if (iVar6 == 0) {
              return 0;
            }
            pcVar10 = *(char **)(param_2 + 4);
            if ((pcVar10 < *(char **)(param_2 + 8)) && (*pcVar10 == '2')) {
              *(char **)(param_2 + 4) = pcVar10 + 1;
LAB_00573382:
              while( true ) {
                uVar4 = FUN_00573182(param_1 + 0x18);
                iVar6 = FUN_005307ec(param_2,&local_2c);
                if (iVar6 == 0) {
                  return 0;
                }
                iVar6 = *(int *)(param_2 + 0x2c) + 1;
                *(int *)(param_2 + 0x2c) = iVar6;
                if (*(int *)(param_2 + 0x30) < iVar6) {
                  return 0;
                }
                uVar5 = FUN_00530eac(param_2,local_2c);
                iVar6 = FUN_00572b9c(uVar4,param_2);
                if (iVar6 == 0) {
                  return 0;
                }
                cVar1 = *(char *)(param_2 + 0x18);
                if (cVar1 == '\0') {
                  return 0;
                }
                FUN_00530eea(param_2,uVar5);
                if (0 < *(int *)(param_2 + 0x2c)) {
                  *(int *)(param_2 + 0x2c) = *(int *)(param_2 + 0x2c) + -1;
                }
                if (cVar1 == '\0') {
                  return 0;
                }
                pcVar10 = *(char **)(param_2 + 4);
                if (*(char **)(param_2 + 8) <= pcVar10) goto LAB_005731da;
                if (*pcVar10 != '2') break;
                *(char **)(param_2 + 4) = pcVar10 + 1;
              }
              if (*pcVar10 == '8') {
                *(char **)(param_2 + 4) = pcVar10 + 1;
LAB_00573402:
                iVar6 = FUN_005307ec(param_2,param_1 + 0x28);
                if (iVar6 == 0) {
                  return 0;
                }
                *(uint *)(param_1 + 0x30) = *(uint *)(param_1 + 0x30) | 0x40;
                if ((*(int *)(param_2 + 4) == *(int *)(param_2 + 8)) &&
                   ((*(int *)(param_2 + 0x20) != 0 ||
                    (*(int *)(param_2 + 0xc) == *(int *)(param_2 + 0x1c))))) {
                  *(undefined4 *)(param_2 + 0x14) = 0;
                  *(undefined1 *)(param_2 + 0x18) = 1;
                  return iVar6;
                }
              }
            }
          }
        }
      }
    }
    goto LAB_005731da;
  case 2:
    if (uVar9 == 0) goto LAB_00573270;
    break;
  case 3:
    if (uVar9 == 2) goto LAB_005732ae;
    break;
  case 4:
    if (uVar9 == 0) goto LAB_005732fa;
    break;
  case 5:
    if (uVar9 == 2) goto LAB_00573336;
    break;
  case 6:
    if (uVar9 == 2) goto LAB_00573382;
    break;
  case 7:
    if (uVar9 == 0) goto LAB_00573402;
  }
  if (uVar9 == 4) {
    return 1;
  }
  iVar6 = FUN_0053086a(param_2,uVar7,uVar7,uVar9,iVar11);
  if (iVar6 == 0) {
    return 0;
  }
  goto LAB_005731da;
}

// ---- FUN_00573470  @ 0x573470
void FUN_00573470(int param_1,int param_2)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  int iVar3;
  undefined4 uVar4;
  undefined1 auStack_34 [4];
  undefined1 auStack_30 [20];
  
  if (param_2 == param_1) {
    FUN_0052f7f0(auStack_30,3,
                 "/builddata/pulse-data/agents/hpya5.eem/recipes/816348608/base/google3/googleclient/play_games_infra/play_games_sdk/proto/gen/tbmp_op.pb.cc"
                 ,0x2a2);
    uVar1 = FUN_0052f6be(auStack_30,"CHECK failed: (&from) != (this): ");
    FUN_0052f9d4(auStack_34,uVar1);
    FUN_0052f808(auStack_30);
  }
  FUN_00530720(param_1 + 0x18,*(int *)(param_1 + 0x1c) + *(int *)(param_2 + 0x1c));
  for (iVar3 = 0; iVar3 < *(int *)(param_2 + 0x1c); iVar3 = iVar3 + 1) {
    uVar4 = *(undefined4 *)(*(int *)(param_2 + 0x18) + iVar3 * 4);
    uVar1 = FUN_00573182(param_1 + 0x18);
    FUN_00572e6c(uVar1,uVar4);
  }
  if ((*(uint *)(param_2 + 0x30) & 0xff) != 0) {
    if ((int)(*(uint *)(param_2 + 0x30) << 0x1f) < 0) {
      uVar1 = *(undefined4 *)(param_2 + 4);
      *(uint *)(param_1 + 0x30) = *(uint *)(param_1 + 0x30) | 1;
      if (*(undefined4 **)(param_1 + 4) == &DAT_00960c38) {
        puVar2 = operator_new(4);
        *puVar2 = &DAT_00972528;
        *(undefined4 **)(param_1 + 4) = puVar2;
      }
      FUN_007c653c(*(undefined4 *)(param_1 + 4),uVar1);
    }
    if (*(int *)(param_2 + 0x30) << 0x1e < 0) {
      *(undefined4 *)(param_1 + 0xc) = *(undefined4 *)(param_2 + 0xc);
      *(uint *)(param_1 + 0x30) = *(uint *)(param_1 + 0x30) | 2;
    }
    if (*(int *)(param_2 + 0x30) << 0x1d < 0) {
      uVar1 = *(undefined4 *)(param_2 + 8);
      *(uint *)(param_1 + 0x30) = *(uint *)(param_1 + 0x30) | 4;
      if (*(undefined4 **)(param_1 + 8) == &DAT_00960c38) {
        puVar2 = operator_new(4);
        *puVar2 = &DAT_00972528;
        *(undefined4 **)(param_1 + 8) = puVar2;
      }
      FUN_007c653c(*(undefined4 *)(param_1 + 8),uVar1);
    }
    if (*(int *)(param_2 + 0x30) << 0x1c < 0) {
      *(undefined1 *)(param_1 + 0x10) = *(undefined1 *)(param_2 + 0x10);
      *(uint *)(param_1 + 0x30) = *(uint *)(param_1 + 0x30) | 8;
    }
    if (*(int *)(param_2 + 0x30) << 0x1b < 0) {
      uVar1 = *(undefined4 *)(param_2 + 0x14);
      *(uint *)(param_1 + 0x30) = *(uint *)(param_1 + 0x30) | 0x10;
      if (*(undefined4 **)(param_1 + 0x14) == &DAT_00960c38) {
        puVar2 = operator_new(4);
        *puVar2 = &DAT_00972528;
        *(undefined4 **)(param_1 + 0x14) = puVar2;
      }
      FUN_007c653c(*(undefined4 *)(param_1 + 0x14),uVar1);
    }
    if (*(int *)(param_2 + 0x30) << 0x19 < 0) {
      *(undefined4 *)(param_1 + 0x28) = *(undefined4 *)(param_2 + 0x28);
      *(uint *)(param_1 + 0x30) = *(uint *)(param_1 + 0x30) | 0x40;
    }
  }
  return;
}

// ---- FUN_005735f6  @ 0x5735f6
void FUN_005735f6(undefined4 *param_1)

{
  void *pvVar1;
  int *piVar2;
  int iVar3;
  
  iVar3 = 0;
  while( true ) {
    pvVar1 = (void *)*param_1;
    if ((int)param_1[2] <= iVar3) break;
    piVar2 = *(int **)((int)pvVar1 + iVar3 * 4);
    if (piVar2 != (int *)0x0) {
      (**(code **)(*piVar2 + 4))();
    }
    iVar3 = iVar3 + 1;
  }
  if (pvVar1 != (void *)0x0) {
    operator_delete__(pvVar1);
    return;
  }
  return;
}

// ---- FUN_00573620  @ 0x573620
undefined4 * FUN_00573620(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_00573620_1_009291a8;
  FUN_00573090();
  FUN_005735f6(param_1 + 6);
  FUN_0052fe6c(param_1);
  return param_1;
}

// ---- FUN_00573648  @ 0x573648
void * FUN_00573648(void *param_1)

{
  FUN_00573620();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0057365c  @ 0x57365c
undefined4 * FUN_0057365c(undefined4 *param_1,undefined4 param_2)

{
  *param_1 = &PTR_FUN_00573620_1_009291a8;
  param_1[6] = 0;
  param_1[7] = 0;
  param_1[8] = 0;
  param_1[9] = 0;
  FUN_00572fa4();
  FUN_00573470(param_1,param_2);
  return param_1;
}

// ---- FUN_00573918  @ 0x573918
undefined4 FUN_00573918(int param_1)

{
  void *pvVar1;
  
  *(uint *)(param_1 + 0x74) = *(uint *)(param_1 + 0x74) | 4;
  if (*(int *)(param_1 + 0x10) == 0) {
    pvVar1 = operator_new(0x30);
    FUN_0056e4e8();
    *(void **)(param_1 + 0x10) = pvVar1;
  }
  return *(undefined4 *)(param_1 + 0x10);
}

// ---- FUN_00573944  @ 0x573944
undefined4 FUN_00573944(int param_1)

{
  void *pvVar1;
  
  *(uint *)(param_1 + 0x74) = *(uint *)(param_1 + 0x74) | 8;
  if (*(int *)(param_1 + 0x14) == 0) {
    pvVar1 = operator_new(0x30);
    FUN_0056e4e8();
    *(void **)(param_1 + 0x14) = pvVar1;
  }
  return *(undefined4 *)(param_1 + 0x14);
}

// ---- FUN_00573970  @ 0x573970
undefined4 FUN_00573970(int param_1)

{
  void *pvVar1;
  
  *(uint *)(param_1 + 0x74) = *(uint *)(param_1 + 0x74) | 0x20;
  if (*(int *)(param_1 + 0x20) == 0) {
    pvVar1 = operator_new(0x30);
    FUN_0056e4e8();
    *(void **)(param_1 + 0x20) = pvVar1;
  }
  return *(undefined4 *)(param_1 + 0x20);
}

// ---- FUN_0057399c  @ 0x57399c
undefined4 FUN_0057399c(int param_1)

{
  void *pvVar1;
  
  *(uint *)(param_1 + 0x74) = *(uint *)(param_1 + 0x74) | 0x40;
  if (*(int *)(param_1 + 0x24) == 0) {
    pvVar1 = operator_new(0x30);
    FUN_0056e4e8();
    *(void **)(param_1 + 0x24) = pvVar1;
  }
  return *(undefined4 *)(param_1 + 0x24);
}

// ---- FUN_005739c8  @ 0x5739c8
bool FUN_005739c8(int param_1)

{
  return param_1 - 1U < 7;
}

// ---- FUN_005739d4  @ 0x5739d4
void FUN_005739d4(int param_1)

{
  undefined4 uVar1;
  
  uVar1 = FUN_0056e620();
  *(undefined4 *)(param_1 + 0x10) = uVar1;
  uVar1 = FUN_0056e620();
  *(undefined4 *)(param_1 + 0x14) = uVar1;
  uVar1 = FUN_0056e620();
  *(undefined4 *)(param_1 + 0x20) = uVar1;
  uVar1 = FUN_0056e620();
  *(undefined4 *)(param_1 + 0x24) = uVar1;
  return;
}

// ---- FUN_005739f4  @ 0x5739f4
void FUN_005739f4(int param_1)

{
  *(undefined4 *)(param_1 + 0x70) = 0;
  *(undefined4 *)(param_1 + 8) = 0;
  *(undefined4 *)(param_1 + 0xc) = 0;
  *(undefined4 *)(param_1 + 0x18) = 0;
  *(undefined4 *)(param_1 + 0x1c) = 0;
  *(undefined4 *)(param_1 + 0x50) = 0;
  *(undefined4 *)(param_1 + 0x54) = 0;
  *(undefined4 **)(param_1 + 4) = &DAT_00960c38;
  *(undefined4 *)(param_1 + 0x10) = 0;
  *(undefined4 *)(param_1 + 0x14) = 0;
  *(undefined4 *)(param_1 + 0x20) = 0;
  *(undefined4 *)(param_1 + 0x24) = 0;
  *(undefined4 *)(param_1 + 0x3c) = 1;
  *(undefined4 **)(param_1 + 0x28) = &DAT_00960c38;
  *(undefined4 **)(param_1 + 0x44) = &DAT_00960c38;
  *(undefined4 **)(param_1 + 0x48) = &DAT_00960c38;
  *(undefined4 *)(param_1 + 0x40) = 0;
  *(undefined4 *)(param_1 + 0x58) = 0;
  *(undefined4 *)(param_1 + 0x5c) = 0;
  *(undefined4 *)(param_1 + 0x60) = 0;
  *(undefined4 *)(param_1 + 100) = 0;
  *(undefined4 **)(param_1 + 0x68) = &DAT_00960c38;
  *(undefined1 *)(param_1 + 0x6c) = 0;
  memset((void *)(param_1 + 0x74),0,4);
  return;
}

// ---- FUN_00573a64  @ 0x573a64
undefined4 * FUN_00573a64(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_00574020_1_00929228;
  param_1[0xb] = 0;
  param_1[0xc] = 0;
  param_1[0xd] = 0;
  param_1[0xe] = 0;
  FUN_005739f4();
  return param_1;
}

// ---- FUN_00573a88  @ 0x573a88
void FUN_00573a88(void)

{
  vector<void(*)(),std::allocator<void(*)()>> *pvVar1;
  undefined4 uVar2;
  void *pvVar3;
  undefined4 *puVar4;
  undefined *puStack_c;
  
  if (DAT_009644b4 == '\0') {
    DAT_009644b4 = 1;
    FUN_0052f9dc("asD0Ev","asD0Ev",
                 "/builddata/pulse-data/agents/hpya5.eem/recipes/816348608/base/google3/googleclient/play_games_infra/play_games_sdk/proto/gen/turn_based_match_impl.pb.cc"
                );
    FUN_0056e500();
    pvVar3 = operator_new(0x78);
    FUN_00573a64();
    DAT_009644b8 = pvVar3;
    FUN_005739d4(pvVar3);
    puStack_c = &UNK_005736a1;
    FUN_0052f604(0x960c24,0x52f855);
    uVar2 = DAT_00960c30;
    FUN_0052fb80(DAT_00960c30);
    pvVar1 = DAT_00960c2c;
    puVar4 = *(undefined4 **)(DAT_00960c2c + 4);
    if (puVar4 == *(undefined4 **)(DAT_00960c2c + 8)) {
      std::vector<void(*)(),std::allocator<void(*)()>>::_M_emplace_back_aux<void(*const&)()>
                (DAT_00960c2c,(_func_void *)&puStack_c);
    }
    else {
      if (puVar4 != (undefined4 *)0x0) {
        *puVar4 = puStack_c;
      }
      *(int *)(pvVar1 + 4) = *(int *)(pvVar1 + 4) + 4;
    }
    FUN_0052f8cc(uVar2);
    return;
  }
  return;
}

// ---- FUN_00573af4  @ 0x573af4
void FUN_00573af4(int param_1)

{
  undefined4 *puVar1;
  
  puVar1 = *(undefined4 **)(param_1 + 4);
  if ((puVar1 != &DAT_00960c38) && (puVar1 != (undefined4 *)0x0)) {
    FUN_007c5914(puVar1);
    operator_delete(puVar1);
  }
  puVar1 = *(undefined4 **)(param_1 + 0x28);
  if ((puVar1 != &DAT_00960c38) && (puVar1 != (undefined4 *)0x0)) {
    FUN_007c5914(puVar1);
    operator_delete(puVar1);
  }
  puVar1 = *(undefined4 **)(param_1 + 0x44);
  if ((puVar1 != &DAT_00960c38) && (puVar1 != (undefined4 *)0x0)) {
    FUN_007c5914(puVar1);
    operator_delete(puVar1);
  }
  puVar1 = *(undefined4 **)(param_1 + 0x48);
  if ((puVar1 != &DAT_00960c38) && (puVar1 != (undefined4 *)0x0)) {
    FUN_007c5914(puVar1);
    operator_delete(puVar1);
  }
  puVar1 = *(undefined4 **)(param_1 + 0x68);
  if ((puVar1 != &DAT_00960c38) && (puVar1 != (undefined4 *)0x0)) {
    FUN_007c5914(puVar1);
    operator_delete(puVar1);
  }
  if (param_1 != DAT_009644b8) {
    if (*(int **)(param_1 + 0x10) != (int *)0x0) {
      (**(code **)(**(int **)(param_1 + 0x10) + 4))();
    }
    if (*(int **)(param_1 + 0x14) != (int *)0x0) {
      (**(code **)(**(int **)(param_1 + 0x14) + 4))();
    }
    if (*(int **)(param_1 + 0x20) != (int *)0x0) {
      (**(code **)(**(int **)(param_1 + 0x20) + 4))();
    }
    if (*(int **)(param_1 + 0x24) != (int *)0x0) {
      (**(code **)(**(int **)(param_1 + 0x24) + 4))();
    }
  }
  return;
}

// ---- FUN_00573ba4  @ 0x573ba4
int FUN_00573ba4(void)

{
  if (DAT_009644b8 == 0) {
    FUN_00573a88();
  }
  return DAT_009644b8;
}

// ---- FUN_00573ca4  @ 0x573ca4
void * FUN_00573ca4(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  void *pvVar1;
  int iVar2;
  int iVar3;
  
  iVar3 = param_1[1];
  iVar2 = param_1[2];
  if (iVar3 < iVar2) {
    param_1[1] = iVar3 + 1;
    return *(void **)(*param_1 + iVar3 * 4);
  }
  if (iVar2 == param_1[3]) {
    FUN_00530720(param_1,iVar2 + 1,param_3,param_1[3],param_4);
  }
  param_1[2] = param_1[2] + 1;
  pvVar1 = operator_new(0x30);
  FUN_0056e4e8();
  iVar2 = param_1[1];
  param_1[1] = iVar2 + 1;
  *(void **)(*param_1 + iVar2 * 4) = pvVar1;
  return pvVar1;
}

// ---- FUN_00573cf4  @ 0x573cf4
void FUN_00573cf4(int param_1,int param_2)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  int iVar3;
  undefined4 uVar4;
  undefined1 auStack_34 [4];
  undefined1 auStack_30 [20];
  
  if (param_2 == param_1) {
    FUN_0052f7f0(auStack_30,3,
                 "/builddata/pulse-data/agents/hpya5.eem/recipes/816348608/base/google3/googleclient/play_games_infra/play_games_sdk/proto/gen/turn_based_match_impl.pb.cc"
                 ,0x361);
    uVar1 = FUN_0052f6be(auStack_30,"CHECK failed: (&from) != (this): ");
    FUN_0052f9d4(auStack_34,uVar1);
    FUN_0052f808(auStack_30);
  }
  FUN_00530720(param_1 + 0x2c,*(int *)(param_1 + 0x30) + *(int *)(param_2 + 0x30));
  for (iVar3 = 0; iVar3 < *(int *)(param_2 + 0x30); iVar3 = iVar3 + 1) {
    uVar4 = *(undefined4 *)(*(int *)(param_2 + 0x2c) + iVar3 * 4);
    uVar1 = FUN_00573ca4(param_1 + 0x2c);
    FUN_0056e640(uVar1,uVar4);
  }
  if ((*(uint *)(param_2 + 0x74) & 0xff) != 0) {
    if ((int)(*(uint *)(param_2 + 0x74) << 0x1f) < 0) {
      uVar1 = *(undefined4 *)(param_2 + 4);
      *(uint *)(param_1 + 0x74) = *(uint *)(param_1 + 0x74) | 1;
      if (*(undefined4 **)(param_1 + 4) == &DAT_00960c38) {
        puVar2 = operator_new(4);
        *puVar2 = &DAT_00972528;
        *(undefined4 **)(param_1 + 4) = puVar2;
      }
      FUN_007c653c(*(undefined4 *)(param_1 + 4),uVar1);
    }
    if (*(int *)(param_2 + 0x74) << 0x1e < 0) {
      uVar1 = *(undefined4 *)(param_2 + 0xc);
      *(undefined4 *)(param_1 + 8) = *(undefined4 *)(param_2 + 8);
      *(undefined4 *)(param_1 + 0xc) = uVar1;
      *(uint *)(param_1 + 0x74) = *(uint *)(param_1 + 0x74) | 2;
    }
    if (*(int *)(param_2 + 0x74) << 0x1d < 0) {
      uVar1 = FUN_00573918(param_1);
      iVar3 = *(int *)(param_2 + 0x10);
      if (iVar3 == 0) {
        iVar3 = *(int *)(DAT_009644b8 + 0x10);
      }
      FUN_0056e640(uVar1,iVar3);
    }
    if (*(int *)(param_2 + 0x74) << 0x1c < 0) {
      uVar1 = FUN_00573944(param_1);
      iVar3 = *(int *)(param_2 + 0x14);
      if (iVar3 == 0) {
        iVar3 = *(int *)(DAT_009644b8 + 0x14);
      }
      FUN_0056e640(uVar1,iVar3);
    }
    if (*(int *)(param_2 + 0x74) << 0x1b < 0) {
      uVar1 = *(undefined4 *)(param_2 + 0x1c);
      *(undefined4 *)(param_1 + 0x18) = *(undefined4 *)(param_2 + 0x18);
      *(undefined4 *)(param_1 + 0x1c) = uVar1;
      *(uint *)(param_1 + 0x74) = *(uint *)(param_1 + 0x74) | 0x10;
    }
    if (*(int *)(param_2 + 0x74) << 0x1a < 0) {
      uVar1 = FUN_00573970(param_1);
      iVar3 = *(int *)(param_2 + 0x20);
      if (iVar3 == 0) {
        iVar3 = *(int *)(DAT_009644b8 + 0x20);
      }
      FUN_0056e640(uVar1,iVar3);
    }
    if (*(int *)(param_2 + 0x74) << 0x19 < 0) {
      uVar1 = FUN_0057399c(param_1);
      iVar3 = *(int *)(param_2 + 0x24);
      if (iVar3 == 0) {
        iVar3 = *(int *)(DAT_009644b8 + 0x24);
      }
      FUN_0056e640(uVar1,iVar3);
    }
    if (*(int *)(param_2 + 0x74) << 0x18 < 0) {
      *(undefined4 *)(param_1 + 0x3c) = *(undefined4 *)(param_2 + 0x3c);
      *(uint *)(param_1 + 0x74) = *(uint *)(param_1 + 0x74) | 0x80;
    }
  }
  if ((*(uint *)(param_2 + 0x74) & 0xff00) != 0) {
    if ((int)(*(uint *)(param_2 + 0x74) << 0x17) < 0) {
      uVar1 = *(undefined4 *)(param_2 + 0x28);
      *(uint *)(param_1 + 0x74) = *(uint *)(param_1 + 0x74) | 0x100;
      if (*(undefined4 **)(param_1 + 0x28) == &DAT_00960c38) {
        puVar2 = operator_new(4);
        *puVar2 = &DAT_00972528;
        *(undefined4 **)(param_1 + 0x28) = puVar2;
      }
      FUN_007c653c(*(undefined4 *)(param_1 + 0x28),uVar1);
    }
    if (*(int *)(param_2 + 0x74) << 0x15 < 0) {
      uVar1 = *(undefined4 *)(param_2 + 0x44);
      *(uint *)(param_1 + 0x74) = *(uint *)(param_1 + 0x74) | 0x400;
      if (*(undefined4 **)(param_1 + 0x44) == &DAT_00960c38) {
        puVar2 = operator_new(4);
        *puVar2 = &DAT_00972528;
        *(undefined4 **)(param_1 + 0x44) = puVar2;
      }
      FUN_007c653c(*(undefined4 *)(param_1 + 0x44),uVar1);
    }
    if (*(int *)(param_2 + 0x74) << 0x14 < 0) {
      uVar1 = *(undefined4 *)(param_2 + 0x48);
      *(uint *)(param_1 + 0x74) = *(uint *)(param_1 + 0x74) | 0x800;
      if (*(undefined4 **)(param_1 + 0x48) == &DAT_00960c38) {
        puVar2 = operator_new(4);
        *puVar2 = &DAT_00972528;
        *(undefined4 **)(param_1 + 0x48) = puVar2;
      }
      FUN_007c653c(*(undefined4 *)(param_1 + 0x48),uVar1);
    }
    if (*(int *)(param_2 + 0x74) << 0x13 < 0) {
      *(undefined4 *)(param_1 + 0x40) = *(undefined4 *)(param_2 + 0x40);
      *(uint *)(param_1 + 0x74) = *(uint *)(param_1 + 0x74) | 0x1000;
    }
    if (*(int *)(param_2 + 0x74) << 0x12 < 0) {
      *(undefined4 *)(param_1 + 0x58) = *(undefined4 *)(param_2 + 0x58);
      *(uint *)(param_1 + 0x74) = *(uint *)(param_1 + 0x74) | 0x2000;
    }
    if (*(int *)(param_2 + 0x74) << 0x11 < 0) {
      uVar1 = *(undefined4 *)(param_2 + 0x54);
      *(undefined4 *)(param_1 + 0x50) = *(undefined4 *)(param_2 + 0x50);
      *(undefined4 *)(param_1 + 0x54) = uVar1;
      *(uint *)(param_1 + 0x74) = *(uint *)(param_1 + 0x74) | 0x4000;
    }
    if (*(int *)(param_2 + 0x74) << 0x10 < 0) {
      *(undefined4 *)(param_1 + 0x5c) = *(undefined4 *)(param_2 + 0x5c);
      *(uint *)(param_1 + 0x74) = *(uint *)(param_1 + 0x74) | 0x8000;
    }
  }
  if ((*(uint *)(param_2 + 0x74) & 0xff0000) != 0) {
    if ((int)(*(uint *)(param_2 + 0x74) << 0xf) < 0) {
      *(undefined4 *)(param_1 + 0x60) = *(undefined4 *)(param_2 + 0x60);
      *(uint *)(param_1 + 0x74) = *(uint *)(param_1 + 0x74) | 0x10000;
    }
    if (*(int *)(param_2 + 0x74) << 0xe < 0) {
      *(undefined4 *)(param_1 + 100) = *(undefined4 *)(param_2 + 100);
      *(uint *)(param_1 + 0x74) = *(uint *)(param_1 + 0x74) | 0x20000;
    }
    if (*(int *)(param_2 + 0x74) << 0xd < 0) {
      uVar1 = *(undefined4 *)(param_2 + 0x68);
      *(uint *)(param_1 + 0x74) = *(uint *)(param_1 + 0x74) | 0x40000;
      if (*(undefined4 **)(param_1 + 0x68) == &DAT_00960c38) {
        puVar2 = operator_new(4);
        *puVar2 = &DAT_00972528;
        *(undefined4 **)(param_1 + 0x68) = puVar2;
      }
      FUN_007c653c(*(undefined4 *)(param_1 + 0x68),uVar1);
    }
    if (*(int *)(param_2 + 0x74) << 0xc < 0) {
      *(undefined1 *)(param_1 + 0x6c) = *(undefined1 *)(param_2 + 0x6c);
      *(uint *)(param_1 + 0x74) = *(uint *)(param_1 + 0x74) | 0x80000;
    }
  }
  return;
}

// ---- FUN_00573ff6  @ 0x573ff6
void FUN_00573ff6(undefined4 *param_1)

{
  void *pvVar1;
  int *piVar2;
  int iVar3;
  
  iVar3 = 0;
  while( true ) {
    pvVar1 = (void *)*param_1;
    if ((int)param_1[2] <= iVar3) break;
    piVar2 = *(int **)((int)pvVar1 + iVar3 * 4);
    if (piVar2 != (int *)0x0) {
      (**(code **)(*piVar2 + 4))();
    }
    iVar3 = iVar3 + 1;
  }
  if (pvVar1 != (void *)0x0) {
    operator_delete__(pvVar1);
    return;
  }
  return;
}

// ---- FUN_00574020  @ 0x574020
undefined4 * FUN_00574020(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_00574020_1_00929228;
  FUN_00573af4();
  FUN_00573ff6(param_1 + 0xb);
  FUN_0052fe6c(param_1);
  return param_1;
}

// ---- FUN_00574048  @ 0x574048
void * FUN_00574048(void *param_1)

{
  FUN_00574020();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0057405c  @ 0x57405c
undefined4 * FUN_0057405c(undefined4 *param_1,undefined4 param_2)

{
  *param_1 = &PTR_FUN_00574020_1_00929228;
  param_1[0xb] = 0;
  param_1[0xc] = 0;
  param_1[0xd] = 0;
  param_1[0xe] = 0;
  FUN_005739f4();
  FUN_00573cf4(param_1,param_2);
  return param_1;
}

// ---- FUN_0057409c  @ 0x57409c
void FUN_0057409c(int param_1)

{
  int iVar1;
  
  if ((*(uint *)(param_1 + 0x74) & 0xff) != 0) {
    if (((int)(*(uint *)(param_1 + 0x74) << 0x1f) < 0) &&
       (*(undefined4 **)(param_1 + 4) != &DAT_00960c38)) {
      FUN_007c5b70();
    }
    *(undefined4 *)(param_1 + 8) = 0;
    *(undefined4 *)(param_1 + 0xc) = 0;
    if ((*(int *)(param_1 + 0x74) << 0x1d < 0) && (*(int *)(param_1 + 0x10) != 0)) {
      FUN_0056e894();
    }
    if ((*(int *)(param_1 + 0x74) << 0x1c < 0) && (*(int *)(param_1 + 0x14) != 0)) {
      FUN_0056e894();
    }
    *(undefined4 *)(param_1 + 0x18) = 0;
    *(undefined4 *)(param_1 + 0x1c) = 0;
    if ((*(int *)(param_1 + 0x74) << 0x1a < 0) && (*(int *)(param_1 + 0x20) != 0)) {
      FUN_0056e894();
    }
    if ((*(int *)(param_1 + 0x74) << 0x19 < 0) && (*(int *)(param_1 + 0x24) != 0)) {
      FUN_0056e894();
    }
    *(undefined4 *)(param_1 + 0x3c) = 1;
  }
  if ((*(uint *)(param_1 + 0x74) & 0xff00) != 0) {
    if (((int)(*(uint *)(param_1 + 0x74) << 0x17) < 0) &&
       (*(undefined4 **)(param_1 + 0x28) != &DAT_00960c38)) {
      FUN_007c5b70();
    }
    if ((*(int *)(param_1 + 0x74) << 0x15 < 0) &&
       (*(undefined4 **)(param_1 + 0x44) != &DAT_00960c38)) {
      FUN_007c5b70();
    }
    if ((*(int *)(param_1 + 0x74) << 0x14 < 0) &&
       (*(undefined4 **)(param_1 + 0x48) != &DAT_00960c38)) {
      FUN_007c5b70();
    }
    *(undefined4 *)(param_1 + 0x40) = 0;
    *(undefined4 *)(param_1 + 0x58) = 0;
    *(undefined4 *)(param_1 + 0x50) = 0;
    *(undefined4 *)(param_1 + 0x54) = 0;
    *(undefined4 *)(param_1 + 0x5c) = 0;
  }
  if ((*(uint *)(param_1 + 0x74) & 0xff0000) != 0) {
    *(undefined4 *)(param_1 + 0x60) = 0;
    *(undefined4 *)(param_1 + 100) = 0;
    if (((int)(*(uint *)(param_1 + 0x74) << 0xd) < 0) &&
       (*(undefined4 **)(param_1 + 0x68) != &DAT_00960c38)) {
      FUN_007c5b70();
    }
    *(undefined1 *)(param_1 + 0x6c) = 0;
  }
  for (iVar1 = 0; iVar1 < *(int *)(param_1 + 0x30); iVar1 = iVar1 + 1) {
    (**(code **)(**(int **)(*(int *)(param_1 + 0x2c) + iVar1 * 4) + 0x10))();
  }
  *(undefined4 *)(param_1 + 0x30) = 0;
  memset((void *)(param_1 + 0x74),0,4);
  return;
}

// ---- FUN_005741b8  @ 0x5741b8
char FUN_005741b8(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  char cVar1;
  int iVar2;
  undefined4 uVar3;
  undefined4 local_14;
  
  local_14 = param_2;
  iVar2 = FUN_005307ec(param_1,&local_14,param_3,param_4,param_1);
  if ((iVar2 != 0) &&
     (iVar2 = *(int *)(param_1 + 0x2c) + 1, *(int *)(param_1 + 0x2c) = iVar2,
     iVar2 <= *(int *)(param_1 + 0x30))) {
    uVar3 = FUN_00530eac(param_1,local_14);
    iVar2 = FUN_0056e930(param_2,param_1);
    if ((iVar2 != 0) && (cVar1 = *(char *)(param_1 + 0x18), cVar1 != '\0')) {
      FUN_00530eea(param_1,uVar3);
      if (*(int *)(param_1 + 0x2c) < 1) {
        return cVar1;
      }
      *(int *)(param_1 + 0x2c) = *(int *)(param_1 + 0x2c) + -1;
      return cVar1;
    }
  }
  return '\0';
}

// ---- FUN_0057420c  @ 0x57420c
int FUN_0057420c(int param_1,int param_2,undefined4 param_3)

{
  int iVar1;
  undefined4 uVar2;
  undefined4 *puVar3;
  int iVar4;
  uint uVar5;
  byte *pbVar6;
  uint uVar7;
  char *pcVar8;
  int local_28;
  int iStack_24;
  undefined4 uStack_20;
  
  local_28 = param_1;
  iStack_24 = param_2;
  uStack_20 = param_3;
LAB_0057421e:
  do {
    pbVar6 = *(byte **)(param_2 + 4);
    if ((pbVar6 < *(byte **)(param_2 + 8)) && (uVar5 = (uint)*pbVar6, -1 < (int)(uVar5 << 0x18))) {
      *(uint *)(param_2 + 0x14) = uVar5;
      *(byte **)(param_2 + 4) = pbVar6 + 1;
    }
    else {
      uVar5 = FUN_00531548(param_2);
      *(uint *)(param_2 + 0x14) = uVar5;
    }
    if (uVar5 == 0) {
      return 1;
    }
    uVar7 = uVar5 & 7;
    switch(uVar5 >> 3) {
    case 1:
      if (uVar7 == 2) {
        *(uint *)(param_1 + 0x74) = *(uint *)(param_1 + 0x74) | 1;
        if (*(undefined4 **)(param_1 + 4) == &DAT_00960c38) {
          puVar3 = operator_new(4);
          *puVar3 = &DAT_00972528;
          *(undefined4 **)(param_1 + 4) = puVar3;
        }
        iVar4 = FUN_00530d42(param_2,*(undefined4 *)(param_1 + 4));
        if (iVar4 == 0) {
          return 0;
        }
        pcVar8 = *(char **)(param_2 + 4);
        if ((pcVar8 < *(char **)(param_2 + 8)) && (*pcVar8 == '\x10')) {
          *(char **)(param_2 + 4) = pcVar8 + 1;
LAB_005742d2:
          iVar4 = FUN_0056991c(param_2,param_1 + 8);
          if (iVar4 == 0) {
            return 0;
          }
          *(uint *)(param_1 + 0x74) = *(uint *)(param_1 + 0x74) | 2;
          pcVar8 = *(char **)(param_2 + 4);
          if ((pcVar8 < *(char **)(param_2 + 8)) && (*pcVar8 == '\x1a')) {
            *(char **)(param_2 + 4) = pcVar8 + 1;
LAB_00574302:
            uVar2 = FUN_00573918(param_1);
            iVar4 = FUN_005741b8(param_2,uVar2);
            if (iVar4 == 0) {
              return 0;
            }
            pcVar8 = *(char **)(param_2 + 4);
            if ((pcVar8 < *(char **)(param_2 + 8)) && (*pcVar8 == '\"')) {
              *(char **)(param_2 + 4) = pcVar8 + 1;
LAB_00574330:
              uVar2 = FUN_00573944(param_1);
              iVar4 = FUN_005741b8(param_2,uVar2);
              if (iVar4 == 0) {
                return 0;
              }
              pcVar8 = *(char **)(param_2 + 4);
              if ((pcVar8 < *(char **)(param_2 + 8)) && (*pcVar8 == '(')) {
                *(char **)(param_2 + 4) = pcVar8 + 1;
LAB_00574360:
                iVar4 = FUN_0056991c(param_2,param_1 + 0x18);
                if (iVar4 == 0) {
                  return 0;
                }
                *(uint *)(param_1 + 0x74) = *(uint *)(param_1 + 0x74) | 0x10;
                pcVar8 = *(char **)(param_2 + 4);
                if ((pcVar8 < *(char **)(param_2 + 8)) && (*pcVar8 == '2')) {
                  *(char **)(param_2 + 4) = pcVar8 + 1;
LAB_00574394:
                  uVar2 = FUN_00573970(param_1);
                  iVar4 = FUN_005741b8(param_2,uVar2);
                  if (iVar4 == 0) {
                    return 0;
                  }
                  pcVar8 = *(char **)(param_2 + 4);
                  if ((pcVar8 < *(char **)(param_2 + 8)) && (*pcVar8 == ':')) {
                    *(char **)(param_2 + 4) = pcVar8 + 1;
LAB_005743c4:
                    uVar2 = FUN_0057399c(param_1);
                    iVar4 = FUN_005741b8(param_2,uVar2);
                    if (iVar4 == 0) {
                      return 0;
                    }
                    pcVar8 = *(char **)(param_2 + 4);
                    if ((pcVar8 < *(char **)(param_2 + 8)) && (*pcVar8 == '@')) {
                      *(char **)(param_2 + 4) = pcVar8 + 1;
LAB_005743f6:
                      iVar1 = FUN_005307ec(param_2,&local_28);
                      iVar4 = local_28;
                      if (iVar1 == 0) {
                        return 0;
                      }
                      iVar1 = FUN_005739c8(local_28);
                      if (iVar1 != 0) {
                        *(int *)(param_1 + 0x3c) = iVar4;
                        *(uint *)(param_1 + 0x74) = *(uint *)(param_1 + 0x74) | 0x80;
                      }
                      pcVar8 = *(char **)(param_2 + 4);
                      if ((pcVar8 < *(char **)(param_2 + 8)) && (*pcVar8 == 'J')) {
                        *(char **)(param_2 + 4) = pcVar8 + 1;
LAB_0057443a:
                        *(uint *)(param_1 + 0x74) = *(uint *)(param_1 + 0x74) | 0x100;
                        if (*(undefined4 **)(param_1 + 0x28) == &DAT_00960c38) {
                          puVar3 = operator_new(4);
                          *puVar3 = &DAT_00972528;
                          *(undefined4 **)(param_1 + 0x28) = puVar3;
                        }
                        iVar4 = FUN_00530d42(param_2,*(undefined4 *)(param_1 + 0x28));
                        if (iVar4 == 0) {
                          return 0;
                        }
                        pcVar8 = *(char **)(param_2 + 4);
                        if ((pcVar8 < *(char **)(param_2 + 8)) && (*pcVar8 == 'R')) {
                          do {
                            *(char **)(param_2 + 4) = pcVar8 + 1;
LAB_00574484:
                            uVar2 = FUN_00573ca4(param_1 + 0x2c);
                            iVar4 = FUN_005741b8(param_2,uVar2);
                            if (iVar4 == 0) {
                              return 0;
                            }
                            pcVar8 = *(char **)(param_2 + 4);
                            if (*(char **)(param_2 + 8) <= pcVar8) goto LAB_0057421e;
                          } while (*pcVar8 == 'R');
                          if (*pcVar8 == 'Z') {
                            *(char **)(param_2 + 4) = pcVar8 + 1;
LAB_005744b6:
                            *(uint *)(param_1 + 0x74) = *(uint *)(param_1 + 0x74) | 0x400;
                            if (*(undefined4 **)(param_1 + 0x44) == &DAT_00960c38) {
                              puVar3 = operator_new(4);
                              *puVar3 = &DAT_00972528;
                              *(undefined4 **)(param_1 + 0x44) = puVar3;
                            }
                            iVar4 = FUN_00530d9c(param_2,*(undefined4 *)(param_1 + 0x44));
                            if (iVar4 == 0) {
                              return 0;
                            }
                            pcVar8 = *(char **)(param_2 + 4);
                            if ((pcVar8 < *(char **)(param_2 + 8)) && (*pcVar8 == 'b')) {
                              *(char **)(param_2 + 4) = pcVar8 + 1;
LAB_00574504:
                              *(uint *)(param_1 + 0x74) = *(uint *)(param_1 + 0x74) | 0x800;
                              if (*(undefined4 **)(param_1 + 0x48) == &DAT_00960c38) {
                                puVar3 = operator_new(4);
                                *puVar3 = &DAT_00972528;
                                *(undefined4 **)(param_1 + 0x48) = puVar3;
                              }
                              iVar4 = FUN_00530d9c(param_2,*(undefined4 *)(param_1 + 0x48));
                              if (iVar4 == 0) {
                                return 0;
                              }
                              pcVar8 = *(char **)(param_2 + 4);
                              if ((pcVar8 < *(char **)(param_2 + 8)) && (*pcVar8 == 'h')) {
                                *(char **)(param_2 + 4) = pcVar8 + 1;
LAB_00574552:
                                iVar4 = FUN_005307ec(param_2,param_1 + 0x40);
                                if (iVar4 == 0) {
                                  return 0;
                                }
                                *(uint *)(param_1 + 0x74) = *(uint *)(param_1 + 0x74) | 0x1000;
                                pcVar8 = *(char **)(param_2 + 4);
                                if ((pcVar8 < *(char **)(param_2 + 8)) && (*pcVar8 == 'p')) {
                                  *(char **)(param_2 + 4) = pcVar8 + 1;
LAB_00574588:
                                  iVar4 = FUN_005307ec(param_2,param_1 + 0x58);
                                  if (iVar4 == 0) {
                                    return 0;
                                  }
                                  *(uint *)(param_1 + 0x74) = *(uint *)(param_1 + 0x74) | 0x2000;
                                  pcVar8 = *(char **)(param_2 + 4);
                                  if ((pcVar8 < *(char **)(param_2 + 8)) && (*pcVar8 == 'x')) {
                                    *(char **)(param_2 + 4) = pcVar8 + 1;
LAB_005745be:
                                    iVar4 = FUN_0056991c(param_2,&local_28);
                                    if (iVar4 == 0) {
                                      return 0;
                                    }
                                    *(int *)(param_1 + 0x50) = local_28;
                                    *(int *)(param_1 + 0x54) = iStack_24;
                                    *(uint *)(param_1 + 0x74) = *(uint *)(param_1 + 0x74) | 0x4000;
                                    pcVar8 = *(char **)(param_2 + 4);
                                    if (((1 < *(int *)(param_2 + 8) - (int)pcVar8) &&
                                        (*pcVar8 == -0x80)) && (pcVar8[1] == '\x01')) {
                                      *(char **)(param_2 + 4) = pcVar8 + 2;
LAB_00574604:
                                      iVar4 = FUN_005307ec(param_2,param_1 + 0x5c);
                                      if (iVar4 == 0) {
                                        return 0;
                                      }
                                      *(uint *)(param_1 + 0x74) = *(uint *)(param_1 + 0x74) | 0x8000
                                      ;
                                      pcVar8 = *(char **)(param_2 + 4);
                                      if (((1 < *(int *)(param_2 + 8) - (int)pcVar8) &&
                                          (*pcVar8 == -0x78)) && (pcVar8[1] == '\x01')) {
                                        *(char **)(param_2 + 4) = pcVar8 + 2;
LAB_00574644:
                                        iVar4 = FUN_005307ec(param_2,param_1 + 0x60);
                                        if (iVar4 == 0) {
                                          return 0;
                                        }
                                        *(uint *)(param_1 + 0x74) =
                                             *(uint *)(param_1 + 0x74) | 0x10000;
                                        pcVar8 = *(char **)(param_2 + 4);
                                        if (((1 < *(int *)(param_2 + 8) - (int)pcVar8) &&
                                            (*pcVar8 == -0x70)) && (pcVar8[1] == '\x01')) {
                                          *(char **)(param_2 + 4) = pcVar8 + 2;
LAB_00574682:
                                          iVar4 = FUN_005307ec(param_2,param_1 + 100);
                                          if (iVar4 == 0) {
                                            return 0;
                                          }
                                          *(uint *)(param_1 + 0x74) =
                                               *(uint *)(param_1 + 0x74) | 0x20000;
                                          pcVar8 = *(char **)(param_2 + 4);
                                          if (((1 < *(int *)(param_2 + 8) - (int)pcVar8) &&
                                              (*pcVar8 == -0x66)) && (pcVar8[1] == '\x01')) {
                                            *(char **)(param_2 + 4) = pcVar8 + 2;
LAB_005746c0:
                                            *(uint *)(param_1 + 0x74) =
                                                 *(uint *)(param_1 + 0x74) | 0x40000;
                                            if (*(undefined4 **)(param_1 + 0x68) == &DAT_00960c38) {
                                              puVar3 = operator_new(4);
                                              *puVar3 = &DAT_00972528;
                                              *(undefined4 **)(param_1 + 0x68) = puVar3;
                                            }
                                            iVar4 = FUN_00530d42(param_2,*(undefined4 *)
                                                                          (param_1 + 0x68));
                                            if (iVar4 == 0) {
                                              return 0;
                                            }
                                            pcVar8 = *(char **)(param_2 + 4);
                                            if (((1 < *(int *)(param_2 + 8) - (int)pcVar8) &&
                                                (*pcVar8 == -0x60)) && (pcVar8[1] == '\x01')) {
                                              *(char **)(param_2 + 4) = pcVar8 + 2;
LAB_00574714:
                                              iVar4 = FUN_005307ec(param_2,&local_28);
                                              if (iVar4 == 0) {
                                                return 0;
                                              }
                                              *(bool *)(param_1 + 0x6c) = local_28 != 0;
                                              *(uint *)(param_1 + 0x74) =
                                                   *(uint *)(param_1 + 0x74) | 0x80000;
                                              if ((*(int *)(param_2 + 4) == *(int *)(param_2 + 8))
                                                 && ((*(int *)(param_2 + 0x20) != 0 ||
                                                     (*(int *)(param_2 + 0xc) ==
                                                      *(int *)(param_2 + 0x1c))))) {
                                                *(undefined4 *)(param_2 + 0x14) = 0;
                                                *(undefined1 *)(param_2 + 0x18) = 1;
                                                return iVar4;
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
        goto LAB_0057421e;
      }
      break;
    case 2:
      if (uVar7 == 0) goto LAB_005742d2;
      break;
    case 3:
      if (uVar7 == 2) goto LAB_00574302;
      break;
    case 4:
      if (uVar7 == 2) goto LAB_00574330;
      break;
    case 5:
      if (uVar7 == 0) goto LAB_00574360;
      break;
    case 6:
      if (uVar7 == 2) goto LAB_00574394;
      break;
    case 7:
      if (uVar7 == 2) goto LAB_005743c4;
      break;
    case 8:
      if (uVar7 == 0) goto LAB_005743f6;
      break;
    case 9:
      if (uVar7 == 2) goto LAB_0057443a;
      break;
    case 10:
      if (uVar7 == 2) goto LAB_00574484;
      break;
    case 0xb:
      if (uVar7 == 2) goto LAB_005744b6;
      break;
    case 0xc:
      if (uVar7 == 2) goto LAB_00574504;
      break;
    case 0xd:
      if (uVar7 == 0) goto LAB_00574552;
      break;
    case 0xe:
      if (uVar7 == 0) goto LAB_00574588;
      break;
    case 0xf:
      if (uVar7 == 0) goto LAB_005745be;
      break;
    case 0x10:
      if (uVar7 == 0) goto LAB_00574604;
      break;
    case 0x11:
      if (uVar7 == 0) goto LAB_00574644;
      break;
    case 0x12:
      if (uVar7 == 0) goto LAB_00574682;
      break;
    case 0x13:
      if (uVar7 == 2) goto LAB_005746c0;
      break;
    case 0x14:
      if (uVar7 == 0) goto LAB_00574714;
    }
    if (uVar7 == 4) {
      return 1;
    }
    iVar4 = FUN_0053086a(param_2);
    if (iVar4 == 0) {
      return 0;
    }
  } while( true );
}

// ---- FUN_0057478c  @ 0x57478c
int FUN_0057478c(void)

{
  int iVar1;
  int iVar2;
  
  iVar1 = FUN_0056ec5c();
  iVar2 = FUN_00569940();
  return iVar2 + iVar1;
}

// ---- FUN_0057479c  @ 0x57479c
int FUN_0057479c(int param_1)

{
  int iVar1;
  int iVar2;
  int iVar3;
  int *piVar4;
  
  iVar1 = 0;
  if ((*(uint *)(param_1 + 0x74) & 0xff) != 0) {
    iVar1 = 0;
    if ((*(uint *)(param_1 + 0x74) & 1) != 0) {
      iVar1 = FUN_0056994c(*(undefined4 *)(param_1 + 4));
      iVar1 = iVar1 + 1;
    }
    if (*(int *)(param_1 + 0x74) << 0x1e < 0) {
      iVar2 = FUN_00531a7a(*(undefined4 *)(param_1 + 8),*(undefined4 *)(param_1 + 0xc));
      iVar1 = iVar1 + iVar2 + 1;
    }
    if (*(int *)(param_1 + 0x74) << 0x1d < 0) {
      iVar2 = *(int *)(param_1 + 0x10);
      if (iVar2 == 0) {
        iVar2 = *(int *)(DAT_009644b8 + 0x10);
      }
      iVar2 = FUN_0057478c(iVar2);
      iVar1 = iVar1 + iVar2 + 1;
    }
    if (*(int *)(param_1 + 0x74) << 0x1c < 0) {
      iVar2 = *(int *)(param_1 + 0x14);
      if (iVar2 == 0) {
        iVar2 = *(int *)(DAT_009644b8 + 0x14);
      }
      iVar2 = FUN_0057478c(iVar2);
      iVar1 = iVar1 + iVar2 + 1;
    }
    if (*(int *)(param_1 + 0x74) << 0x1b < 0) {
      iVar2 = FUN_00531a7a(*(undefined4 *)(param_1 + 0x18),*(undefined4 *)(param_1 + 0x1c));
      iVar1 = iVar1 + iVar2 + 1;
    }
    if (*(int *)(param_1 + 0x74) << 0x1a < 0) {
      iVar2 = *(int *)(param_1 + 0x20);
      if (iVar2 == 0) {
        iVar2 = *(int *)(DAT_009644b8 + 0x20);
      }
      iVar2 = FUN_0057478c(iVar2);
      iVar1 = iVar1 + iVar2 + 1;
    }
    if (*(int *)(param_1 + 0x74) << 0x19 < 0) {
      iVar2 = *(int *)(param_1 + 0x24);
      if (iVar2 == 0) {
        iVar2 = *(int *)(DAT_009644b8 + 0x24);
      }
      iVar2 = FUN_0057478c(iVar2);
      iVar1 = iVar1 + iVar2 + 1;
    }
    if (*(int *)(param_1 + 0x74) << 0x18 < 0) {
      if (*(int *)(param_1 + 0x3c) < 0) {
        iVar2 = 10;
      }
      else {
        iVar2 = FUN_00569940();
      }
      iVar1 = iVar1 + iVar2 + 1;
    }
  }
  if ((*(uint *)(param_1 + 0x74) & 0xff00) != 0) {
    if ((int)(*(uint *)(param_1 + 0x74) << 0x17) < 0) {
      iVar2 = FUN_0056994c(*(undefined4 *)(param_1 + 0x28));
      iVar1 = iVar1 + iVar2 + 1;
    }
    if (*(int *)(param_1 + 0x74) << 0x15 < 0) {
      piVar4 = *(int **)(param_1 + 0x44);
      iVar2 = FUN_00569940(*(undefined4 *)(*piVar4 + -0xc));
      iVar1 = iVar1 + iVar2 + *(int *)(*piVar4 + -0xc) + 1;
    }
    if (*(int *)(param_1 + 0x74) << 0x14 < 0) {
      piVar4 = *(int **)(param_1 + 0x48);
      iVar2 = FUN_00569940(*(undefined4 *)(*piVar4 + -0xc));
      iVar1 = iVar1 + iVar2 + *(int *)(*piVar4 + -0xc) + 1;
    }
    if (*(int *)(param_1 + 0x74) << 0x13 < 0) {
      iVar2 = FUN_00569940(*(undefined4 *)(param_1 + 0x40));
      iVar1 = iVar1 + iVar2 + 1;
    }
    if (*(int *)(param_1 + 0x74) << 0x12 < 0) {
      iVar2 = FUN_00569940(*(undefined4 *)(param_1 + 0x58));
      iVar1 = iVar1 + iVar2 + 1;
    }
    if (*(int *)(param_1 + 0x74) << 0x11 < 0) {
      iVar2 = FUN_00531a7a(*(undefined4 *)(param_1 + 0x50),*(undefined4 *)(param_1 + 0x54));
      iVar1 = iVar1 + iVar2 + 1;
    }
    if (*(int *)(param_1 + 0x74) << 0x10 < 0) {
      iVar2 = FUN_00569940(*(undefined4 *)(param_1 + 0x5c));
      iVar1 = iVar1 + iVar2 + 2;
    }
  }
  if ((*(uint *)(param_1 + 0x74) & 0xff0000) != 0) {
    if ((int)(*(uint *)(param_1 + 0x74) << 0xf) < 0) {
      iVar2 = FUN_00569940(*(undefined4 *)(param_1 + 0x60));
      iVar1 = iVar1 + iVar2 + 2;
    }
    if (*(int *)(param_1 + 0x74) << 0xe < 0) {
      iVar2 = FUN_00569940(*(undefined4 *)(param_1 + 100));
      iVar1 = iVar1 + iVar2 + 2;
    }
    if (*(int *)(param_1 + 0x74) << 0xd < 0) {
      iVar2 = FUN_0056994c(*(undefined4 *)(param_1 + 0x68));
      iVar1 = iVar1 + iVar2 + 2;
    }
    if (*(int *)(param_1 + 0x74) << 0xc < 0) {
      iVar1 = iVar1 + 3;
    }
  }
  iVar1 = iVar1 + *(int *)(param_1 + 0x30);
  for (iVar2 = 0; iVar2 < *(int *)(param_1 + 0x30); iVar2 = iVar2 + 1) {
    iVar3 = FUN_0057478c(*(undefined4 *)(*(int *)(param_1 + 0x2c) + iVar2 * 4));
    iVar1 = iVar1 + iVar3;
  }
  *(int *)(param_1 + 0x70) = iVar1;
  return iVar1;
}

// ---- FUN_005749a0  @ 0x5749a0
undefined4 * FUN_005749a0(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_005749a0_1_00929268;
  FUN_0052fe6c();
  return param_1;
}

// ---- FUN_005749b8  @ 0x5749b8
void * FUN_005749b8(void *param_1)

{
  FUN_005749a0();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_005749ca  @ 0x5749ca
void FUN_005749ca(int param_1)

{
  if (*(char *)(param_1 + 0x14) != '\0') {
    *(undefined4 *)(param_1 + 4) = 0;
    *(undefined4 *)(param_1 + 8) = 0;
    *(undefined4 *)(param_1 + 0xc) = 0;
  }
  memset((void *)(param_1 + 0x14),0,4);
  return;
}

// ---- FUN_005749e0  @ 0x5749e0
void FUN_005749e0(int param_1)

{
  if ((*(uint *)(param_1 + 0x10) & 0xff) != 0) {
    if (((int)(*(uint *)(param_1 + 0x10) << 0x1f) < 0) && (*(int *)(param_1 + 4) != 0)) {
      FUN_005749ca();
    }
    if ((*(int *)(param_1 + 0x10) << 0x1e < 0) && (*(undefined4 **)(param_1 + 8) != &DAT_00960c38))
    {
      FUN_007c5b70();
    }
  }
  memset((void *)(param_1 + 0x10),0,4);
  return;
}

// ---- FUN_00574afc  @ 0x574afc
int FUN_00574afc(int param_1)

{
  int iVar1;
  int iVar2;
  
  iVar1 = 0;
  if ((*(uint *)(param_1 + 0x14) & 0xff) != 0) {
    iVar1 = 0;
    if ((*(uint *)(param_1 + 0x14) & 1) != 0) {
      iVar1 = FUN_00569940(*(undefined4 *)(param_1 + 4));
      iVar1 = iVar1 + 1;
    }
    if (*(int *)(param_1 + 0x14) << 0x1e < 0) {
      if (*(int *)(param_1 + 8) < 0) {
        iVar2 = 10;
      }
      else {
        iVar2 = FUN_00569940();
      }
      iVar1 = iVar1 + iVar2 + 1;
    }
    if (*(int *)(param_1 + 0x14) << 0x1d < 0) {
      iVar2 = FUN_00569940(*(undefined4 *)(param_1 + 0xc));
      iVar1 = iVar1 + iVar2 + 1;
    }
  }
  *(int *)(param_1 + 0x10) = iVar1;
  return iVar1;
}

// ---- FUN_00574b44  @ 0x574b44
int FUN_00574b44(int param_1)

{
  int iVar1;
  int iVar2;
  int *piVar3;
  
  iVar1 = 0;
  if ((*(uint *)(param_1 + 0x10) & 0xff) != 0) {
    iVar1 = 0;
    if ((*(uint *)(param_1 + 0x10) & 1) != 0) {
      iVar1 = *(int *)(param_1 + 4);
      if (iVar1 == 0) {
        iVar1 = *(int *)(DAT_009644bc + 4);
      }
      iVar1 = FUN_00574afc(iVar1);
      iVar2 = FUN_00569940();
      iVar1 = iVar2 + iVar1 + 1;
    }
    if (*(int *)(param_1 + 0x10) << 0x1e < 0) {
      piVar3 = *(int **)(param_1 + 8);
      iVar2 = FUN_00569940(*(undefined4 *)(*piVar3 + -0xc));
      iVar1 = iVar1 + iVar2 + *(int *)(*piVar3 + -0xc) + 1;
    }
  }
  *(int *)(param_1 + 0xc) = iVar1;
  return iVar1;
}

// ---- FUN_00574b98  @ 0x574b98
void FUN_00574b98(int param_1)

{
  *(undefined4 *)(param_1 + 0xc) = 0;
  *(undefined4 *)(param_1 + 4) = 0;
  *(undefined4 **)(param_1 + 8) = &DAT_00960c38;
  memset((void *)(param_1 + 0x10),0,4);
  return;
}

// ---- FUN_00574bb8  @ 0x574bb8
undefined4 * FUN_00574bb8(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_00574c20_1_009292a8;
  FUN_00574b98();
  return param_1;
}

// ---- FUN_00574be4  @ 0x574be4
void FUN_00574be4(int param_1)

{
  undefined4 *puVar1;
  
  puVar1 = *(undefined4 **)(param_1 + 8);
  if ((puVar1 != &DAT_00960c38) && (puVar1 != (undefined4 *)0x0)) {
    FUN_007c5914(puVar1);
    operator_delete(puVar1);
  }
  if ((param_1 != DAT_009644bc) && (*(int **)(param_1 + 4) != (int *)0x0)) {
    (**(code **)(**(int **)(param_1 + 4) + 4))();
  }
  return;
}

// ---- FUN_00574c20  @ 0x574c20
undefined4 * FUN_00574c20(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_00574c20_1_009292a8;
  FUN_00574be4();
  FUN_0052fe6c(param_1);
  return param_1;
}

// ---- FUN_00574c40  @ 0x574c40
void * FUN_00574c40(void *param_1)

{
  FUN_00574c20();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_00574c7c  @ 0x574c7c
bool FUN_00574c7c(uint param_1)

{
  return param_1 < 4;
}

// ---- FUN_00574c86  @ 0x574c86
int FUN_00574c86(int param_1,int param_2,undefined4 param_3)

{
  int iVar1;
  int iVar2;
  uint uVar3;
  byte *pbVar4;
  uint uVar5;
  uint uVar6;
  char *pcVar7;
  int iVar8;
  int local_24;
  undefined4 uStack_20;
  
  iVar8 = param_1;
  local_24 = param_2;
  uStack_20 = param_3;
LAB_00574c98:
  while( true ) {
    pbVar4 = *(byte **)(param_2 + 4);
    if ((pbVar4 < *(byte **)(param_2 + 8)) && (uVar6 = (uint)*pbVar4, -1 < (int)(uVar6 << 0x18))) {
      *(uint *)(param_2 + 0x14) = uVar6;
      *(byte **)(param_2 + 4) = pbVar4 + 1;
    }
    else {
      uVar6 = FUN_00531548(param_2);
      *(uint *)(param_2 + 0x14) = uVar6;
    }
    if (uVar6 == 0) {
      return 1;
    }
    uVar3 = uVar6 >> 3;
    uVar5 = uVar6 & 7;
    if (uVar3 != 2) break;
    if (uVar5 != 0) goto LAB_00574d6c;
LAB_00574d00:
    iVar2 = FUN_005307ec(param_2,&local_24);
    iVar1 = local_24;
    if (iVar2 == 0) {
      return 0;
    }
    iVar2 = FUN_00574c7c(local_24);
    if (iVar2 != 0) {
      *(int *)(param_1 + 8) = iVar1;
      *(uint *)(param_1 + 0x14) = *(uint *)(param_1 + 0x14) | 2;
    }
    pcVar7 = *(char **)(param_2 + 4);
    if ((pcVar7 < *(char **)(param_2 + 8)) && (*pcVar7 == '\x18')) {
      *(char **)(param_2 + 4) = pcVar7 + 1;
LAB_00574d3a:
      iVar1 = FUN_005307ec(param_2,param_1 + 0xc);
      if (iVar1 == 0) {
        return 0;
      }
      *(uint *)(param_1 + 0x14) = *(uint *)(param_1 + 0x14) | 4;
      if ((*(int *)(param_2 + 4) == *(int *)(param_2 + 8)) &&
         ((*(int *)(param_2 + 0x20) != 0 || (*(int *)(param_2 + 0xc) == *(int *)(param_2 + 0x1c)))))
      {
        *(undefined4 *)(param_2 + 0x14) = 0;
        *(undefined1 *)(param_2 + 0x18) = 1;
        return iVar1;
      }
    }
  }
  if (uVar3 == 3) {
    if (uVar5 == 0) goto LAB_00574d3a;
  }
  else if ((uVar3 == 1) && (uVar5 == 0)) {
    iVar1 = FUN_005307ec(param_2,param_1 + 4);
    if (iVar1 == 0) {
      return 0;
    }
    *(uint *)(param_1 + 0x14) = *(uint *)(param_1 + 0x14) | 1;
    pcVar7 = *(char **)(param_2 + 4);
    if ((pcVar7 < *(char **)(param_2 + 8)) && (*pcVar7 == '\x10')) {
      *(char **)(param_2 + 4) = pcVar7 + 1;
      goto LAB_00574d00;
    }
    goto LAB_00574c98;
  }
LAB_00574d6c:
  if (uVar5 == 4) {
    return 1;
  }
  iVar1 = FUN_0053086a(param_2,uVar6,uVar5,uVar6,iVar8);
  if (iVar1 == 0) {
    return 0;
  }
  goto LAB_00574c98;
}

// ---- FUN_00574d88  @ 0x574d88
void FUN_00574d88(int param_1)

{
  *(undefined4 *)(param_1 + 0x10) = 0;
  *(undefined4 *)(param_1 + 4) = 0;
  *(undefined4 *)(param_1 + 8) = 0;
  *(undefined4 *)(param_1 + 0xc) = 0;
  memset((void *)(param_1 + 0x14),0,4);
  return;
}

// ---- FUN_00574da4  @ 0x574da4
undefined4 * FUN_00574da4(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_005749a0_1_00929268;
  FUN_00574d88();
  return param_1;
}

// ---- FUN_00574dbc  @ 0x574dbc
undefined4 FUN_00574dbc(int param_1)

{
  void *pvVar1;
  
  *(uint *)(param_1 + 0x10) = *(uint *)(param_1 + 0x10) | 1;
  if (*(int *)(param_1 + 4) == 0) {
    pvVar1 = operator_new(0x18);
    FUN_00574da4();
    *(void **)(param_1 + 4) = pvVar1;
  }
  return *(undefined4 *)(param_1 + 4);
}

// ---- FUN_00574de0  @ 0x574de0
int FUN_00574de0(int param_1,int param_2)

{
  char cVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  int iVar4;
  byte *pbVar5;
  undefined4 *puVar6;
  undefined4 *extraout_r2;
  uint uVar7;
  uint uVar8;
  char *pcVar9;
  undefined4 *puVar10;
  int iVar11;
  int local_1c;
  
  iVar11 = param_1;
  local_1c = param_2;
LAB_00574dea:
  do {
    while( true ) {
      pbVar5 = *(byte **)(param_2 + 4);
      if ((pbVar5 < *(byte **)(param_2 + 8)) && (uVar7 = (uint)*pbVar5, -1 < (int)(uVar7 << 0x18)))
      {
        *(uint *)(param_2 + 0x14) = uVar7;
        *(byte **)(param_2 + 4) = pbVar5 + 1;
      }
      else {
        uVar7 = FUN_00531548(param_2);
        *(uint *)(param_2 + 0x14) = uVar7;
      }
      if (uVar7 == 0) {
        return 1;
      }
      uVar8 = uVar7 & 7;
      if (uVar7 >> 3 == 1) break;
      if ((uVar7 >> 3 != 2) || (uVar8 != 2)) goto LAB_00574edc;
LAB_00574e8c:
      puVar6 = *(undefined4 **)(param_1 + 8);
      *(uint *)(param_1 + 0x10) = *(uint *)(param_1 + 0x10) | 2;
      puVar10 = &DAT_00960c38;
      if (puVar6 == &DAT_00960c38) {
        puVar6 = operator_new(4);
        puVar10 = (undefined4 *)&DAT_00972528;
        *puVar6 = &DAT_00972528;
        *(undefined4 **)(param_1 + 8) = puVar6;
        puVar6 = extraout_r2;
      }
      iVar4 = FUN_00530d9c(param_2,*(undefined4 *)(param_1 + 8),puVar6,puVar10,iVar11);
      if (iVar4 == 0) {
        return 0;
      }
      if ((*(int *)(param_2 + 4) == *(int *)(param_2 + 8)) &&
         ((*(int *)(param_2 + 0x20) != 0 || (*(int *)(param_2 + 0xc) == *(int *)(param_2 + 0x1c)))))
      {
        *(undefined4 *)(param_2 + 0x14) = 0;
        *(undefined1 *)(param_2 + 0x18) = 1;
        return iVar4;
      }
    }
    if (uVar8 == 2) {
      uVar2 = FUN_00574dbc(param_1);
      iVar4 = FUN_005307ec(param_2,&local_1c);
      if (iVar4 == 0) {
        return 0;
      }
      iVar4 = *(int *)(param_2 + 0x2c) + 1;
      *(int *)(param_2 + 0x2c) = iVar4;
      if (*(int *)(param_2 + 0x30) < iVar4) {
        return 0;
      }
      uVar3 = FUN_00530eac(param_2,local_1c);
      iVar4 = FUN_00574c86(uVar2,param_2);
      if (iVar4 == 0) {
        return 0;
      }
      cVar1 = *(char *)(param_2 + 0x18);
      if (cVar1 == '\0') {
        return 0;
      }
      FUN_00530eea(param_2,uVar3);
      if (0 < *(int *)(param_2 + 0x2c)) {
        *(int *)(param_2 + 0x2c) = *(int *)(param_2 + 0x2c) + -1;
      }
      if (cVar1 == '\0') {
        return 0;
      }
      pcVar9 = *(char **)(param_2 + 4);
      if ((pcVar9 < *(char **)(param_2 + 8)) && (*pcVar9 == '\x12')) {
        *(char **)(param_2 + 4) = pcVar9 + 1;
        goto LAB_00574e8c;
      }
      goto LAB_00574dea;
    }
LAB_00574edc:
    if (uVar8 == 4) {
      return 1;
    }
    iVar4 = FUN_0053086a(param_2);
    if (iVar4 == 0) {
      return 0;
    }
  } while( true );
}

// ---- FUN_00574f18  @ 0x574f18
int FUN_00574f18(void)

{
  if (DAT_009644c4 == 0) {
    FUN_00574f44();
  }
  return DAT_009644c4;
}

// ---- FUN_00574f38  @ 0x574f38
void FUN_00574f38(int param_1)

{
  undefined4 uVar1;
  
  uVar1 = FUN_00574f18();
  *(undefined4 *)(param_1 + 4) = uVar1;
  return;
}

// ---- FUN_00574f44  @ 0x574f44
void FUN_00574f44(void)

{
  vector<void(*)(),std::allocator<void(*)()>> *pvVar1;
  undefined4 uVar2;
  void *pvVar3;
  undefined4 *puVar4;
  
  if (DAT_009644c0 == '\0') {
    DAT_009644c0 = 1;
    FUN_0052f9dc("asD0Ev","asD0Ev",
                 "/builddata/pulse-data/agents/hpya5.eem/recipes/816348608/base/google3/googleclient/play_games_infra/play_games_sdk/proto/gen/java/com/google/games/oneup/tools/botmaster/protos/bot_commands.pb.cc"
                );
    pvVar3 = operator_new(0x14);
    FUN_00574bb8();
    DAT_009644bc = pvVar3;
    pvVar3 = operator_new(0x18);
    FUN_00574da4();
    DAT_009644c4 = pvVar3;
    FUN_00574f38(DAT_009644bc);
    FUN_0052f604(0x960c24,0x52f855);
    uVar2 = DAT_00960c30;
    FUN_0052fb80(DAT_00960c30);
    pvVar1 = DAT_00960c2c;
    puVar4 = *(undefined4 **)(DAT_00960c2c + 4);
    if (puVar4 == *(undefined4 **)(DAT_00960c2c + 8)) {
      std::vector<void(*)(),std::allocator<void(*)()>>::_M_emplace_back_aux<void(*const&)()>
                (DAT_00960c2c,(_func_void *)&stack0xfffffff4);
    }
    else {
      if (puVar4 != (undefined4 *)0x0) {
        *puVar4 = &UNK_00574969;
      }
      *(int *)(pvVar1 + 4) = *(int *)(pvVar1 + 4) + 4;
    }
    FUN_0052f8cc(uVar2);
    return;
  }
  return;
}

// ---- FUN_00574fd0  @ 0x574fd0
void FUN_00574fd0(int param_1,int param_2)

{
  undefined4 uVar1;
  undefined1 auStack_24 [4];
  undefined1 auStack_20 [16];
  
  if (param_2 == param_1) {
    FUN_0052f7f0(auStack_20,3,
                 "/builddata/pulse-data/agents/hpya5.eem/recipes/816348608/base/google3/googleclient/play_games_infra/play_games_sdk/proto/gen/java/com/google/games/oneup/tools/botmaster/protos/bot_commands.pb.cc"
                 ,0x1f1);
    uVar1 = FUN_0052f6be(auStack_20,"CHECK failed: (&from) != (this): ");
    FUN_0052f9d4(auStack_24,uVar1);
    FUN_0052f808(auStack_20);
  }
  if ((*(uint *)(param_2 + 0x14) & 0xff) != 0) {
    if ((int)(*(uint *)(param_2 + 0x14) << 0x1f) < 0) {
      *(undefined4 *)(param_1 + 4) = *(undefined4 *)(param_2 + 4);
      *(uint *)(param_1 + 0x14) = *(uint *)(param_1 + 0x14) | 1;
    }
    if (*(int *)(param_2 + 0x14) << 0x1e < 0) {
      *(undefined4 *)(param_1 + 8) = *(undefined4 *)(param_2 + 8);
      *(uint *)(param_1 + 0x14) = *(uint *)(param_1 + 0x14) | 2;
    }
    if (*(int *)(param_2 + 0x14) << 0x1d < 0) {
      *(undefined4 *)(param_1 + 0xc) = *(undefined4 *)(param_2 + 0xc);
      *(uint *)(param_1 + 0x14) = *(uint *)(param_1 + 0x14) | 4;
    }
  }
  return;
}

// ---- FUN_005751d6  @ 0x5751d6
void FUN_005751d6(undefined4 *param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4)

{
  param_1 = (undefined4 *)*param_1;
  (*(code *)*param_1)(*param_2,param_1[1],(code *)*param_1,param_1,param_4);
  return;
}

// ---- FUN_005751e4  @ 0x5751e4
void FUN_005751e4(undefined4 *param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4)

{
  param_1 = (undefined4 *)*param_1;
  (*(code *)*param_1)(*param_2,param_1[1],(code *)*param_1,param_1,param_4);
  return;
}

// ---- FUN_005751f2  @ 0x5751f2
void FUN_005751f2(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  param_1 = (undefined4 *)*param_1;
  (*(code *)*param_1)(param_2,param_1[1],(code *)*param_1,param_1,param_4);
  return;
}

// ---- FUN_00575254  @ 0x575254
void FUN_00575254(int *param_1,undefined4 param_2,undefined4 param_3)

{
  (**(code **)*param_1)(param_2,param_3,((undefined4 *)*param_1)[1]);
  return;
}

// ---- FUN_00575264  @ 0x575264
void FUN_00575264(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  param_1 = (undefined4 *)*param_1;
  (*(code *)*param_1)(param_2,param_1[1],(code *)*param_1,param_1,param_4);
  return;
}

// ---- FUN_0057547a  @ 0x57547a
undefined4 FUN_0057547a(undefined4 *param_1,undefined4 *param_2,int param_3)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  
  if (param_3 == 2) {
    puVar2 = (undefined4 *)*param_2;
    param_2 = operator_new(8);
    uVar1 = puVar2[1];
    *param_2 = *puVar2;
    param_2[1] = uVar1;
  }
  else {
    if (param_3 == 3) {
      operator_delete((void *)*param_1);
      return 0;
    }
    if (param_3 != 1) {
      return 0;
    }
    param_2 = (undefined4 *)*param_2;
  }
  *param_1 = param_2;
  return 0;
}

// ---- FUN_005754ae  @ 0x5754ae
undefined4 FUN_005754ae(undefined4 *param_1,undefined4 *param_2,int param_3)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  
  if (param_3 == 2) {
    puVar2 = (undefined4 *)*param_2;
    param_2 = operator_new(8);
    uVar1 = puVar2[1];
    *param_2 = *puVar2;
    param_2[1] = uVar1;
  }
  else {
    if (param_3 == 3) {
      operator_delete((void *)*param_1);
      return 0;
    }
    if (param_3 != 1) {
      return 0;
    }
    param_2 = (undefined4 *)*param_2;
  }
  *param_1 = param_2;
  return 0;
}

// ---- FUN_00575516  @ 0x575516
undefined4 FUN_00575516(undefined4 *param_1,undefined4 *param_2,int param_3)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  
  if (param_3 == 2) {
    puVar2 = (undefined4 *)*param_2;
    param_2 = operator_new(8);
    uVar1 = puVar2[1];
    *param_2 = *puVar2;
    param_2[1] = uVar1;
  }
  else {
    if (param_3 == 3) {
      operator_delete((void *)*param_1);
      return 0;
    }
    if (param_3 != 1) {
      return 0;
    }
    param_2 = (undefined4 *)*param_2;
  }
  *param_1 = param_2;
  return 0;
}

// ---- FUN_0057557e  @ 0x57557e
undefined4 FUN_0057557e(undefined4 *param_1,undefined4 *param_2,int param_3)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  
  if (param_3 == 2) {
    puVar2 = (undefined4 *)*param_2;
    param_2 = operator_new(8);
    uVar1 = puVar2[1];
    *param_2 = *puVar2;
    param_2[1] = uVar1;
  }
  else {
    if (param_3 == 3) {
      operator_delete((void *)*param_1);
      return 0;
    }
    if (param_3 != 1) {
      return 0;
    }
    param_2 = (undefined4 *)*param_2;
  }
  *param_1 = param_2;
  return 0;
}

// ---- FUN_005755b2  @ 0x5755b2
undefined4 FUN_005755b2(undefined4 *param_1,undefined4 *param_2,int param_3)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  
  if (param_3 == 2) {
    puVar2 = (undefined4 *)*param_2;
    param_2 = operator_new(8);
    uVar1 = puVar2[1];
    *param_2 = *puVar2;
    param_2[1] = uVar1;
  }
  else {
    if (param_3 == 3) {
      operator_delete((void *)*param_1);
      return 0;
    }
    if (param_3 != 1) {
      return 0;
    }
    param_2 = (undefined4 *)*param_2;
  }
  *param_1 = param_2;
  return 0;
}

// ---- FUN_005755e6  @ 0x5755e6
undefined4 FUN_005755e6(undefined4 *param_1,undefined4 *param_2,int param_3)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  
  if (param_3 == 2) {
    puVar2 = (undefined4 *)*param_2;
    param_2 = operator_new(8);
    uVar1 = puVar2[1];
    *param_2 = *puVar2;
    param_2[1] = uVar1;
  }
  else {
    if (param_3 == 3) {
      operator_delete((void *)*param_1);
      return 0;
    }
    if (param_3 != 1) {
      return 0;
    }
    param_2 = (undefined4 *)*param_2;
  }
  *param_1 = param_2;
  return 0;
}

// ---- FUN_0057561a  @ 0x57561a
undefined4 FUN_0057561a(undefined4 *param_1,undefined4 *param_2,int param_3)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  
  if (param_3 == 2) {
    puVar2 = (undefined4 *)*param_2;
    param_2 = operator_new(8);
    uVar1 = puVar2[1];
    *param_2 = *puVar2;
    param_2[1] = uVar1;
  }
  else {
    if (param_3 == 3) {
      operator_delete((void *)*param_1);
      return 0;
    }
    if (param_3 != 1) {
      return 0;
    }
    param_2 = (undefined4 *)*param_2;
  }
  *param_1 = param_2;
  return 0;
}

// ---- FUN_0057564e  @ 0x57564e
undefined4 FUN_0057564e(undefined4 *param_1,undefined4 *param_2,int param_3)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  
  if (param_3 == 2) {
    puVar2 = (undefined4 *)*param_2;
    param_2 = operator_new(8);
    uVar1 = puVar2[1];
    *param_2 = *puVar2;
    param_2[1] = uVar1;
  }
  else {
    if (param_3 == 3) {
      operator_delete((void *)*param_1);
      return 0;
    }
    if (param_3 != 1) {
      return 0;
    }
    param_2 = (undefined4 *)*param_2;
  }
  *param_1 = param_2;
  return 0;
}

// ---- FUN_005756b6  @ 0x5756b6
undefined4 FUN_005756b6(undefined4 *param_1,undefined4 *param_2,int param_3)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  
  if (param_3 == 2) {
    puVar2 = (undefined4 *)*param_2;
    param_2 = operator_new(8);
    uVar1 = puVar2[1];
    *param_2 = *puVar2;
    param_2[1] = uVar1;
  }
  else {
    if (param_3 == 3) {
      operator_delete((void *)*param_1);
      return 0;
    }
    if (param_3 != 1) {
      return 0;
    }
    param_2 = (undefined4 *)*param_2;
  }
  *param_1 = param_2;
  return 0;
}

// ---- FUN_0057571e  @ 0x57571e
undefined4 FUN_0057571e(undefined4 *param_1,undefined4 *param_2,int param_3)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  
  if (param_3 == 2) {
    puVar2 = (undefined4 *)*param_2;
    param_2 = operator_new(8);
    uVar1 = puVar2[1];
    *param_2 = *puVar2;
    param_2[1] = uVar1;
  }
  else {
    if (param_3 == 3) {
      operator_delete((void *)*param_1);
      return 0;
    }
    if (param_3 != 1) {
      return 0;
    }
    param_2 = (undefined4 *)*param_2;
  }
  *param_1 = param_2;
  return 0;
}

// ---- FUN_00575752  @ 0x575752
undefined4 FUN_00575752(undefined4 *param_1,undefined4 *param_2,int param_3)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  
  if (param_3 == 2) {
    puVar2 = (undefined4 *)*param_2;
    param_2 = operator_new(8);
    uVar1 = puVar2[1];
    *param_2 = *puVar2;
    param_2[1] = uVar1;
  }
  else {
    if (param_3 == 3) {
      operator_delete((void *)*param_1);
      return 0;
    }
    if (param_3 != 1) {
      return 0;
    }
    param_2 = (undefined4 *)*param_2;
  }
  *param_1 = param_2;
  return 0;
}

// ---- FUN_005757ee  @ 0x5757ee
undefined4 FUN_005757ee(undefined4 *param_1,undefined4 *param_2,int param_3)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  
  if (param_3 == 2) {
    puVar2 = (undefined4 *)*param_2;
    param_2 = operator_new(8);
    uVar1 = puVar2[1];
    *param_2 = *puVar2;
    param_2[1] = uVar1;
  }
  else {
    if (param_3 == 3) {
      operator_delete((void *)*param_1);
      return 0;
    }
    if (param_3 != 1) {
      return 0;
    }
    param_2 = (undefined4 *)*param_2;
  }
  *param_1 = param_2;
  return 0;
}

// ---- FUN_00575822  @ 0x575822
undefined4 FUN_00575822(undefined4 *param_1,undefined4 *param_2,int param_3)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  
  if (param_3 == 2) {
    puVar2 = (undefined4 *)*param_2;
    param_2 = operator_new(8);
    uVar1 = puVar2[1];
    *param_2 = *puVar2;
    param_2[1] = uVar1;
  }
  else {
    if (param_3 == 3) {
      operator_delete((void *)*param_1);
      return 0;
    }
    if (param_3 != 1) {
      return 0;
    }
    param_2 = (undefined4 *)*param_2;
  }
  *param_1 = param_2;
  return 0;
}

// ---- FUN_00575856  @ 0x575856
undefined4 FUN_00575856(undefined4 *param_1,undefined4 *param_2,int param_3)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  
  if (param_3 == 2) {
    puVar2 = (undefined4 *)*param_2;
    param_2 = operator_new(8);
    uVar1 = puVar2[1];
    *param_2 = *puVar2;
    param_2[1] = uVar1;
  }
  else {
    if (param_3 == 3) {
      operator_delete((void *)*param_1);
      return 0;
    }
    if (param_3 != 1) {
      return 0;
    }
    param_2 = (undefined4 *)*param_2;
  }
  *param_1 = param_2;
  return 0;
}

// ---- FUN_0057588a  @ 0x57588a
undefined4 FUN_0057588a(undefined4 *param_1,undefined4 *param_2,int param_3)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  
  if (param_3 == 2) {
    puVar2 = (undefined4 *)*param_2;
    param_2 = operator_new(8);
    uVar1 = puVar2[1];
    *param_2 = *puVar2;
    param_2[1] = uVar1;
  }
  else {
    if (param_3 == 3) {
      operator_delete((void *)*param_1);
      return 0;
    }
    if (param_3 != 1) {
      return 0;
    }
    param_2 = (undefined4 *)*param_2;
  }
  *param_1 = param_2;
  return 0;
}

// ---- FUN_00575926  @ 0x575926
undefined4 FUN_00575926(undefined4 *param_1,undefined4 *param_2,int param_3)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  
  if (param_3 == 2) {
    puVar2 = (undefined4 *)*param_2;
    param_2 = operator_new(8);
    uVar1 = puVar2[1];
    *param_2 = *puVar2;
    param_2[1] = uVar1;
  }
  else {
    if (param_3 == 3) {
      operator_delete((void *)*param_1);
      return 0;
    }
    if (param_3 != 1) {
      return 0;
    }
    param_2 = (undefined4 *)*param_2;
  }
  *param_1 = param_2;
  return 0;
}

// ---- FUN_005759c2  @ 0x5759c2
undefined4 FUN_005759c2(undefined4 *param_1,undefined4 *param_2,int param_3)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  
  if (param_3 == 2) {
    puVar2 = (undefined4 *)*param_2;
    param_2 = operator_new(8);
    uVar1 = puVar2[1];
    *param_2 = *puVar2;
    param_2[1] = uVar1;
  }
  else {
    if (param_3 == 3) {
      operator_delete((void *)*param_1);
      return 0;
    }
    if (param_3 != 1) {
      return 0;
    }
    param_2 = (undefined4 *)*param_2;
  }
  *param_1 = param_2;
  return 0;
}

// ---- FUN_00575a92  @ 0x575a92
undefined4 FUN_00575a92(undefined4 *param_1,undefined4 *param_2,int param_3)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  
  if (param_3 == 2) {
    puVar2 = (undefined4 *)*param_2;
    param_2 = operator_new(8);
    uVar1 = puVar2[1];
    *param_2 = *puVar2;
    param_2[1] = uVar1;
  }
  else {
    if (param_3 == 3) {
      operator_delete((void *)*param_1);
      return 0;
    }
    if (param_3 != 1) {
      return 0;
    }
    param_2 = (undefined4 *)*param_2;
  }
  *param_1 = param_2;
  return 0;
}

// ---- FUN_00575ac6  @ 0x575ac6
undefined4 FUN_00575ac6(undefined4 *param_1,undefined4 *param_2,int param_3)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  
  if (param_3 == 2) {
    puVar2 = (undefined4 *)*param_2;
    param_2 = operator_new(8);
    uVar1 = puVar2[1];
    *param_2 = *puVar2;
    param_2[1] = uVar1;
  }
  else {
    if (param_3 == 3) {
      operator_delete((void *)*param_1);
      return 0;
    }
    if (param_3 != 1) {
      return 0;
    }
    param_2 = (undefined4 *)*param_2;
  }
  *param_1 = param_2;
  return 0;
}

// ---- FUN_00575b62  @ 0x575b62
undefined4 FUN_00575b62(undefined4 *param_1,undefined4 *param_2,int param_3)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  
  if (param_3 == 2) {
    puVar2 = (undefined4 *)*param_2;
    param_2 = operator_new(8);
    uVar1 = puVar2[1];
    *param_2 = *puVar2;
    param_2[1] = uVar1;
  }
  else {
    if (param_3 == 3) {
      operator_delete((void *)*param_1);
      return 0;
    }
    if (param_3 != 1) {
      return 0;
    }
    param_2 = (undefined4 *)*param_2;
  }
  *param_1 = param_2;
  return 0;
}

// ---- FUN_00575c32  @ 0x575c32
undefined4 FUN_00575c32(undefined4 *param_1,undefined4 *param_2,int param_3)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  
  if (param_3 == 2) {
    puVar2 = (undefined4 *)*param_2;
    param_2 = operator_new(8);
    uVar1 = puVar2[1];
    *param_2 = *puVar2;
    param_2[1] = uVar1;
  }
  else {
    if (param_3 == 3) {
      operator_delete((void *)*param_1);
      return 0;
    }
    if (param_3 != 1) {
      return 0;
    }
    param_2 = (undefined4 *)*param_2;
  }
  *param_1 = param_2;
  return 0;
}

// ---- FUN_00575d9e  @ 0x575d9e
undefined4 FUN_00575d9e(undefined4 *param_1,undefined4 *param_2,int param_3)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  
  if (param_3 == 2) {
    puVar2 = (undefined4 *)*param_2;
    param_2 = operator_new(8);
    uVar1 = puVar2[1];
    *param_2 = *puVar2;
    param_2[1] = uVar1;
  }
  else {
    if (param_3 == 3) {
      operator_delete((void *)*param_1);
      return 0;
    }
    if (param_3 != 1) {
      return 0;
    }
    param_2 = (undefined4 *)*param_2;
  }
  *param_1 = param_2;
  return 0;
}

// ---- FUN_00575e06  @ 0x575e06
undefined4 FUN_00575e06(undefined4 *param_1,undefined4 *param_2,int param_3)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  
  if (param_3 == 2) {
    puVar2 = (undefined4 *)*param_2;
    param_2 = operator_new(8);
    uVar1 = puVar2[1];
    *param_2 = *puVar2;
    param_2[1] = uVar1;
  }
  else {
    if (param_3 == 3) {
      operator_delete((void *)*param_1);
      return 0;
    }
    if (param_3 != 1) {
      return 0;
    }
    param_2 = (undefined4 *)*param_2;
  }
  *param_1 = param_2;
  return 0;
}

// ---- FUN_00575e3a  @ 0x575e3a
undefined4 FUN_00575e3a(undefined4 *param_1,undefined4 *param_2,int param_3)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  
  if (param_3 == 2) {
    puVar2 = (undefined4 *)*param_2;
    param_2 = operator_new(8);
    uVar1 = puVar2[1];
    *param_2 = *puVar2;
    param_2[1] = uVar1;
  }
  else {
    if (param_3 == 3) {
      operator_delete((void *)*param_1);
      return 0;
    }
    if (param_3 != 1) {
      return 0;
    }
    param_2 = (undefined4 *)*param_2;
  }
  *param_1 = param_2;
  return 0;
}

// ---- FUN_00575e6e  @ 0x575e6e
undefined4 FUN_00575e6e(undefined4 *param_1,undefined4 *param_2,int param_3)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  
  if (param_3 == 2) {
    puVar2 = (undefined4 *)*param_2;
    param_2 = operator_new(8);
    uVar1 = puVar2[1];
    *param_2 = *puVar2;
    param_2[1] = uVar1;
  }
  else {
    if (param_3 == 3) {
      operator_delete((void *)*param_1);
      return 0;
    }
    if (param_3 != 1) {
      return 0;
    }
    param_2 = (undefined4 *)*param_2;
  }
  *param_1 = param_2;
  return 0;
}

// ---- FUN_00575ea2  @ 0x575ea2
undefined4 FUN_00575ea2(undefined4 *param_1,undefined4 *param_2,int param_3)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  
  if (param_3 == 2) {
    puVar2 = (undefined4 *)*param_2;
    param_2 = operator_new(8);
    uVar1 = puVar2[1];
    *param_2 = *puVar2;
    param_2[1] = uVar1;
  }
  else {
    if (param_3 == 3) {
      operator_delete((void *)*param_1);
      return 0;
    }
    if (param_3 != 1) {
      return 0;
    }
    param_2 = (undefined4 *)*param_2;
  }
  *param_1 = param_2;
  return 0;
}

// ---- FUN_00575ed6  @ 0x575ed6
undefined4 FUN_00575ed6(undefined4 *param_1,undefined4 *param_2,int param_3)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  
  if (param_3 == 2) {
    puVar2 = (undefined4 *)*param_2;
    param_2 = operator_new(8);
    uVar1 = puVar2[1];
    *param_2 = *puVar2;
    param_2[1] = uVar1;
  }
  else {
    if (param_3 == 3) {
      operator_delete((void *)*param_1);
      return 0;
    }
    if (param_3 != 1) {
      return 0;
    }
    param_2 = (undefined4 *)*param_2;
  }
  *param_1 = param_2;
  return 0;
}

// ---- FUN_00575f3e  @ 0x575f3e
undefined4 FUN_00575f3e(undefined4 *param_1,undefined4 *param_2,int param_3)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  
  if (param_3 == 2) {
    puVar2 = (undefined4 *)*param_2;
    param_2 = operator_new(8);
    uVar1 = puVar2[1];
    *param_2 = *puVar2;
    param_2[1] = uVar1;
  }
  else {
    if (param_3 == 3) {
      operator_delete((void *)*param_1);
      return 0;
    }
    if (param_3 != 1) {
      return 0;
    }
    param_2 = (undefined4 *)*param_2;
  }
  *param_1 = param_2;
  return 0;
}

// ---- FUN_00575fda  @ 0x575fda
undefined4 FUN_00575fda(undefined4 *param_1,undefined4 *param_2,int param_3)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  
  if (param_3 == 2) {
    puVar2 = (undefined4 *)*param_2;
    param_2 = operator_new(8);
    uVar1 = puVar2[1];
    *param_2 = *puVar2;
    param_2[1] = uVar1;
  }
  else {
    if (param_3 == 3) {
      operator_delete((void *)*param_1);
      return 0;
    }
    if (param_3 != 1) {
      return 0;
    }
    param_2 = (undefined4 *)*param_2;
  }
  *param_1 = param_2;
  return 0;
}

// ---- FUN_0057600e  @ 0x57600e
undefined4 FUN_0057600e(undefined4 *param_1,undefined4 *param_2,int param_3)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  
  if (param_3 == 2) {
    puVar2 = (undefined4 *)*param_2;
    param_2 = operator_new(8);
    uVar1 = puVar2[1];
    *param_2 = *puVar2;
    param_2[1] = uVar1;
  }
  else {
    if (param_3 == 3) {
      operator_delete((void *)*param_1);
      return 0;
    }
    if (param_3 != 1) {
      return 0;
    }
    param_2 = (undefined4 *)*param_2;
  }
  *param_1 = param_2;
  return 0;
}

// ---- FUN_00576076  @ 0x576076
undefined4 FUN_00576076(undefined4 *param_1,undefined4 *param_2,int param_3)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  
  if (param_3 == 2) {
    puVar2 = (undefined4 *)*param_2;
    param_2 = operator_new(8);
    uVar1 = puVar2[1];
    *param_2 = *puVar2;
    param_2[1] = uVar1;
  }
  else {
    if (param_3 == 3) {
      operator_delete((void *)*param_1);
      return 0;
    }
    if (param_3 != 1) {
      return 0;
    }
    param_2 = (undefined4 *)*param_2;
  }
  *param_1 = param_2;
  return 0;
}

// ---- FUN_005760aa  @ 0x5760aa
undefined4 FUN_005760aa(undefined4 *param_1,undefined4 *param_2,int param_3)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  
  if (param_3 == 2) {
    puVar2 = (undefined4 *)*param_2;
    param_2 = operator_new(8);
    uVar1 = puVar2[1];
    *param_2 = *puVar2;
    param_2[1] = uVar1;
  }
  else {
    if (param_3 == 3) {
      operator_delete((void *)*param_1);
      return 0;
    }
    if (param_3 != 1) {
      return 0;
    }
    param_2 = (undefined4 *)*param_2;
  }
  *param_1 = param_2;
  return 0;
}

// ---- FUN_005760de  @ 0x5760de
undefined4 FUN_005760de(undefined4 *param_1,undefined4 *param_2,int param_3)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  
  if (param_3 == 2) {
    puVar2 = (undefined4 *)*param_2;
    param_2 = operator_new(8);
    uVar1 = puVar2[1];
    *param_2 = *puVar2;
    param_2[1] = uVar1;
  }
  else {
    if (param_3 == 3) {
      operator_delete((void *)*param_1);
      return 0;
    }
    if (param_3 != 1) {
      return 0;
    }
    param_2 = (undefined4 *)*param_2;
  }
  *param_1 = param_2;
  return 0;
}

// ---- FUN_00576146  @ 0x576146
undefined4 FUN_00576146(undefined4 *param_1,undefined4 *param_2,int param_3)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  
  if (param_3 == 2) {
    puVar2 = (undefined4 *)*param_2;
    param_2 = operator_new(8);
    uVar1 = puVar2[1];
    *param_2 = *puVar2;
    param_2[1] = uVar1;
  }
  else {
    if (param_3 == 3) {
      operator_delete((void *)*param_1);
      return 0;
    }
    if (param_3 != 1) {
      return 0;
    }
    param_2 = (undefined4 *)*param_2;
  }
  *param_1 = param_2;
  return 0;
}

// ---- FUN_0057617a  @ 0x57617a
undefined4 FUN_0057617a(undefined4 *param_1,undefined4 *param_2,int param_3)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  
  if (param_3 == 2) {
    puVar2 = (undefined4 *)*param_2;
    param_2 = operator_new(8);
    uVar1 = puVar2[1];
    *param_2 = *puVar2;
    param_2[1] = uVar1;
  }
  else {
    if (param_3 == 3) {
      operator_delete((void *)*param_1);
      return 0;
    }
    if (param_3 != 1) {
      return 0;
    }
    param_2 = (undefined4 *)*param_2;
  }
  *param_1 = param_2;
  return 0;
}

// ---- FUN_005761e2  @ 0x5761e2
undefined4 FUN_005761e2(undefined4 *param_1,undefined4 *param_2,int param_3)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  
  if (param_3 == 2) {
    puVar2 = (undefined4 *)*param_2;
    param_2 = operator_new(8);
    uVar1 = puVar2[1];
    *param_2 = *puVar2;
    param_2[1] = uVar1;
  }
  else {
    if (param_3 == 3) {
      operator_delete((void *)*param_1);
      return 0;
    }
    if (param_3 != 1) {
      return 0;
    }
    param_2 = (undefined4 *)*param_2;
  }
  *param_1 = param_2;
  return 0;
}

// ---- FUN_00576216  @ 0x576216
undefined4 FUN_00576216(undefined4 *param_1,undefined4 *param_2,int param_3)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  
  if (param_3 == 2) {
    puVar2 = (undefined4 *)*param_2;
    param_2 = operator_new(8);
    uVar1 = puVar2[1];
    *param_2 = *puVar2;
    param_2[1] = uVar1;
  }
  else {
    if (param_3 == 3) {
      operator_delete((void *)*param_1);
      return 0;
    }
    if (param_3 != 1) {
      return 0;
    }
    param_2 = (undefined4 *)*param_2;
  }
  *param_1 = param_2;
  return 0;
}

// ---- FUN_0057627e  @ 0x57627e
undefined4 FUN_0057627e(undefined4 *param_1,undefined4 *param_2,int param_3)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  
  if (param_3 == 2) {
    puVar2 = (undefined4 *)*param_2;
    param_2 = operator_new(8);
    uVar1 = puVar2[1];
    *param_2 = *puVar2;
    param_2[1] = uVar1;
  }
  else {
    if (param_3 == 3) {
      operator_delete((void *)*param_1);
      return 0;
    }
    if (param_3 != 1) {
      return 0;
    }
    param_2 = (undefined4 *)*param_2;
  }
  *param_1 = param_2;
  return 0;
}

// ---- FUN_0057631a  @ 0x57631a
undefined4 FUN_0057631a(undefined4 *param_1,undefined4 *param_2,int param_3)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  
  if (param_3 == 2) {
    puVar2 = (undefined4 *)*param_2;
    param_2 = operator_new(8);
    uVar1 = puVar2[1];
    *param_2 = *puVar2;
    param_2[1] = uVar1;
  }
  else {
    if (param_3 == 3) {
      operator_delete((void *)*param_1);
      return 0;
    }
    if (param_3 != 1) {
      return 0;
    }
    param_2 = (undefined4 *)*param_2;
  }
  *param_1 = param_2;
  return 0;
}

// ---- FUN_00576382  @ 0x576382
undefined4 FUN_00576382(undefined4 *param_1,undefined4 *param_2,int param_3)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  
  if (param_3 == 2) {
    puVar2 = (undefined4 *)*param_2;
    param_2 = operator_new(8);
    uVar1 = puVar2[1];
    *param_2 = *puVar2;
    param_2[1] = uVar1;
  }
  else {
    if (param_3 == 3) {
      operator_delete((void *)*param_1);
      return 0;
    }
    if (param_3 != 1) {
      return 0;
    }
    param_2 = (undefined4 *)*param_2;
  }
  *param_1 = param_2;
  return 0;
}

// ---- FUN_005763b6  @ 0x5763b6
void FUN_005763b6(undefined4 *param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 *puVar1;
  undefined4 *puVar2;
  undefined4 uVar3;
  undefined4 uStack_18;
  undefined4 uStack_14;
  
  uVar3 = *param_2;
  param_1 = (undefined4 *)*param_1;
  uStack_18 = param_3;
  uStack_14 = param_4;
  gpg::Player::Player((Player *)&uStack_18,(Player *)(param_2 + 1));
  puVar1 = operator_new(0xc);
  *puVar1 = uVar3;
  gpg::Player::Player((Player *)(puVar1 + 1),(Player *)&uStack_18);
  puVar2 = operator_new(4);
  *puVar2 = puVar1;
  (*(code *)*param_1)(puVar2,param_1[1]);
  gpg::Player::~Player((Player *)&uStack_18);
  return;
}

// ---- FUN_005774c4  @ 0x5774c4
void FUN_005774c4(undefined4 *param_1,ClaimMilestoneResponse *param_2)

{
  ClaimMilestoneResponse *this;
  undefined4 *puVar1;
  ClaimMilestoneResponse aCStack_24 [4];
  QuestMilestone aQStack_20 [8];
  Quest aQStack_18 [8];
  
  param_1 = (undefined4 *)*param_1;
  gpg::QuestManager::ClaimMilestoneResponse::ClaimMilestoneResponse(aCStack_24,param_2);
  this = operator_new(0x14);
  gpg::QuestManager::ClaimMilestoneResponse::ClaimMilestoneResponse(this,aCStack_24);
  puVar1 = operator_new(4);
  *puVar1 = this;
  (*(code *)*param_1)(puVar1,param_1[1]);
  gpg::Quest::~Quest(aQStack_18);
  gpg::QuestMilestone::~QuestMilestone(aQStack_20);
  return;
}

// ---- FUN_00578c60  @ 0x578c60
void FUN_00578c60(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                 StartAdvertisingResult *param_5)

{
  StartAdvertisingResult *this;
  undefined4 *puVar1;
  undefined4 *puVar2;
  undefined4 uStack_24;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  
  puVar2 = (undefined4 *)*param_1;
  uStack_24 = param_2;
  uStack_20 = param_3;
  uStack_1c = param_4;
  gpg::StartAdvertisingResult::StartAdvertisingResult((StartAdvertisingResult *)&uStack_24,param_5);
  this = operator_new(0xc);
  gpg::StartAdvertisingResult::StartAdvertisingResult(this,(StartAdvertisingResult *)&uStack_24);
  puVar1 = operator_new(4);
  *puVar1 = this;
  (*(code *)*puVar2)(param_3,param_4,puVar1,puVar2[1],param_1);
  FUN_007c5914(&uStack_1c);
  FUN_007c5914(&uStack_20);
  return;
}

// ---- FUN_0057a53c  @ 0x57a53c
void FUN_0057a53c(undefined4 *param_1,undefined4 *param_2)

{
  undefined4 *puVar1;
  undefined4 *puVar2;
  undefined4 uVar3;
  MultiplayerInvitation aMStack_20 [16];
  
  uVar3 = *param_2;
  param_1 = (undefined4 *)*param_1;
  gpg::MultiplayerInvitation::MultiplayerInvitation
            (aMStack_20,(MultiplayerInvitation *)(param_2 + 1));
  puVar1 = operator_new(0x14);
  *puVar1 = uVar3;
  gpg::MultiplayerInvitation::MultiplayerInvitation
            ((MultiplayerInvitation *)(puVar1 + 1),aMStack_20);
  puVar2 = operator_new(4);
  *puVar2 = puVar1;
  (*(code *)*param_1)(puVar2,param_1[1]);
  gpg::MultiplayerInvitation::~MultiplayerInvitation(aMStack_20);
  return;
}

// ---- FUN_0057a698  @ 0x57a698
void FUN_0057a698(undefined4 *param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 *puVar1;
  undefined4 *puVar2;
  undefined4 uVar3;
  undefined4 uStack_18;
  undefined4 uStack_14;
  
  uVar3 = *param_2;
  param_1 = (undefined4 *)*param_1;
  uStack_18 = param_3;
  uStack_14 = param_4;
  gpg::RealTimeRoom::RealTimeRoom((RealTimeRoom *)&uStack_18,(RealTimeRoom *)(param_2 + 1));
  puVar1 = operator_new(0xc);
  *puVar1 = uVar3;
  gpg::RealTimeRoom::RealTimeRoom((RealTimeRoom *)(puVar1 + 1),(RealTimeRoom *)&uStack_18);
  puVar2 = operator_new(4);
  *puVar2 = puVar1;
  (*(code *)*param_1)(puVar2,param_1[1]);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&uStack_14);
  return;
}

// ---- FUN_0057ae8c  @ 0x57ae8c
void FUN_0057ae8c(undefined4 *param_1,undefined4 param_2,undefined4 *param_3,TurnBasedMatch *param_4
                 )

{
  TurnBasedMatch *this;
  undefined4 *puVar1;
  undefined4 *puVar2;
  undefined4 local_24;
  undefined4 *puStack_20;
  TurnBasedMatch *pTStack_1c;
  
  local_24 = *param_3;
  puVar2 = (undefined4 *)*param_1;
  *param_3 = &DAT_00972528;
  puStack_20 = param_3;
  pTStack_1c = param_4;
  gpg::TurnBasedMatch::TurnBasedMatch((TurnBasedMatch *)&puStack_20,param_4);
  this = operator_new(8);
  gpg::TurnBasedMatch::TurnBasedMatch(this,(TurnBasedMatch *)&puStack_20);
  puVar1 = operator_new(4);
  *puVar1 = this;
  (*(code *)*puVar2)(param_2,local_24,puVar1,puVar2[1],param_1);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&pTStack_1c);
  FUN_007c5914(&local_24);
  return;
}

// ---- FUN_0057b32e  @ 0x57b32e
void FUN_0057b32e(undefined4 *param_1,PlayerSelectUIResponse *param_2)

{
  PlayerSelectUIResponse *this;
  undefined4 *puVar1;
  PlayerSelectUIResponse aPStack_28 [4];
  vector<std::string,std::allocator<std::string>> avStack_24 [20];
  
  param_1 = (undefined4 *)*param_1;
  gpg::TurnBasedMultiplayerManager::PlayerSelectUIResponse::PlayerSelectUIResponse
            (aPStack_28,param_2);
  this = operator_new(0x18);
  gpg::TurnBasedMultiplayerManager::PlayerSelectUIResponse::PlayerSelectUIResponse(this,aPStack_28);
  puVar1 = operator_new(4);
  *puVar1 = this;
  (*(code *)*param_1)(puVar1,param_1[1]);
  std::vector<std::string,std::allocator<std::string>>::~vector(avStack_24);
  return;
}

// ---- FUN_0057b608  @ 0x57b608
void FUN_0057b608(undefined4 *param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 *puVar1;
  undefined4 *puVar2;
  undefined4 uVar3;
  undefined4 *puStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  
  uVar3 = *param_2;
  param_1 = (undefined4 *)*param_1;
  puStack_1c = param_2;
  uStack_18 = param_3;
  uStack_14 = param_4;
  std::vector<gpg::MultiplayerInvitation,std::allocator<gpg::MultiplayerInvitation>>::vector
            ((vector<gpg::MultiplayerInvitation,std::allocator<gpg::MultiplayerInvitation>> *)
             &puStack_1c,(vector *)(param_2 + 1));
  puVar1 = operator_new(0x10);
  *puVar1 = uVar3;
  std::vector<gpg::MultiplayerInvitation,std::allocator<gpg::MultiplayerInvitation>>::vector
            ((vector<gpg::MultiplayerInvitation,std::allocator<gpg::MultiplayerInvitation>> *)
             (puVar1 + 1),(vector *)&puStack_1c);
  puVar2 = operator_new(4);
  *puVar2 = puVar1;
  (*(code *)*param_1)(puVar2,param_1[1]);
  std::vector<gpg::MultiplayerInvitation,std::allocator<gpg::MultiplayerInvitation>>::~vector
            ((vector<gpg::MultiplayerInvitation,std::allocator<gpg::MultiplayerInvitation>> *)
             &puStack_1c);
  return;
}

// ---- FUN_0057c352  @ 0x57c352
void FUN_0057c352(undefined4 *param_1,undefined4 *param_2)

{
  undefined4 *puVar1;
  undefined4 *puVar2;
  undefined4 uVar3;
  _unnamed a_Stack_40 [48];
  
  uVar3 = *param_2;
  param_1 = (undefined4 *)*param_1;
  gpg::TurnBasedMultiplayerManager::TurnBasedMatchesResponse::{unnamed_type#1}::
  TurnBasedMatchesResponse(a_Stack_40);
  puVar1 = operator_new(0x34);
  *puVar1 = uVar3;
  gpg::TurnBasedMultiplayerManager::TurnBasedMatchesResponse::{unnamed_type#1}::
  TurnBasedMatchesResponse((_unnamed *)(puVar1 + 1));
  puVar2 = operator_new(4);
  *puVar2 = puVar1;
  (*(code *)*param_1)(puVar2,param_1[1]);
  gpg::TurnBasedMultiplayerManager::TurnBasedMatchesResponse::{unnamed_type#1}::
  ~TurnBasedMatchesResponse((_unnamed_type_1_ *)a_Stack_40);
  return;
}

// ---- FUN_0057ccb2  @ 0x57ccb2
void FUN_0057ccb2(undefined4 *param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 *puVar1;
  undefined4 *puVar2;
  undefined4 uVar3;
  undefined4 *puStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  
  uVar3 = *param_2;
  param_1 = (undefined4 *)*param_1;
  puStack_1c = param_2;
  uStack_18 = param_3;
  uStack_14 = param_4;
  std::vector<gpg::ScoreSummary,std::allocator<gpg::ScoreSummary>>::vector
            ((vector<gpg::ScoreSummary,std::allocator<gpg::ScoreSummary>> *)&puStack_1c,
             (vector *)(param_2 + 1));
  puVar1 = operator_new(0x10);
  *puVar1 = uVar3;
  std::vector<gpg::ScoreSummary,std::allocator<gpg::ScoreSummary>>::vector
            ((vector<gpg::ScoreSummary,std::allocator<gpg::ScoreSummary>> *)(puVar1 + 1),
             (vector *)&puStack_1c);
  puVar2 = operator_new(4);
  *puVar2 = puVar1;
  (*(code *)*param_1)(puVar2,param_1[1]);
  std::vector<gpg::ScoreSummary,std::allocator<gpg::ScoreSummary>>::~vector
            ((vector<gpg::ScoreSummary,std::allocator<gpg::ScoreSummary>> *)&puStack_1c);
  return;
}

// ---- FUN_0057ce4a  @ 0x57ce4a
void FUN_0057ce4a(undefined4 *param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 *puVar1;
  undefined4 *puVar2;
  undefined4 uVar3;
  undefined4 *puStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  
  uVar3 = *param_2;
  param_1 = (undefined4 *)*param_1;
  puStack_1c = param_2;
  uStack_18 = param_3;
  uStack_14 = param_4;
  std::vector<gpg::Player,std::allocator<gpg::Player>>::vector
            ((vector<gpg::Player,std::allocator<gpg::Player>> *)&puStack_1c,(vector *)(param_2 + 1))
  ;
  puVar1 = operator_new(0x10);
  *puVar1 = uVar3;
  std::vector<gpg::Player,std::allocator<gpg::Player>>::vector
            ((vector<gpg::Player,std::allocator<gpg::Player>> *)(puVar1 + 1),(vector *)&puStack_1c);
  puVar2 = operator_new(4);
  *puVar2 = puVar1;
  (*(code *)*param_1)(puVar2,param_1[1]);
  std::vector<gpg::Player,std::allocator<gpg::Player>>::~vector
            ((vector<gpg::Player,std::allocator<gpg::Player>> *)&puStack_1c);
  return;
}

// ---- FUN_0057d170  @ 0x57d170
void FUN_0057d170(undefined4 *param_1,RealTimeRoom *param_2,MultiplayerParticipant *param_3,
                 int *param_4,undefined1 param_5)

{
  RealTimeRoom *this;
  undefined4 *puVar1;
  MultiplayerParticipant *this_00;
  undefined4 *puVar2;
  RealTimeRoom aRStack_3c [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_38 [4];
  MultiplayerParticipant aMStack_34 [8];
  int local_2c;
  int local_28;
  int local_24;
  
  param_1 = (undefined4 *)*param_1;
  gpg::RealTimeRoom::RealTimeRoom(aRStack_3c,param_2);
  gpg::MultiplayerParticipant::MultiplayerParticipant(aMStack_34,param_3);
  local_28 = param_4[1];
  local_2c = *param_4;
  local_24 = param_4[2];
  *param_4 = 0;
  param_4[1] = 0;
  param_4[2] = 0;
  this = operator_new(8);
  gpg::RealTimeRoom::RealTimeRoom(this,aRStack_3c);
  puVar1 = operator_new(4);
  *puVar1 = this;
  this_00 = operator_new(8);
  gpg::MultiplayerParticipant::MultiplayerParticipant(this_00,aMStack_34);
  puVar2 = operator_new(4);
  *puVar2 = this_00;
  (*(code *)*param_1)(puVar1,puVar2,local_2c,local_28 - local_2c,param_5,param_1[1]);
  std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::~_Vector_base
            ((_Vector_base<unsigned_char,std::allocator<unsigned_char>> *)&local_2c);
  gpg::MultiplayerParticipant::~MultiplayerParticipant(aMStack_34);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_38);
  return;
}

// ---- FUN_0057d27e  @ 0x57d27e
void FUN_0057d27e(undefined4 *param_1,OpenResponse *param_2)

{
  OpenResponse *this;
  undefined4 *puVar1;
  OpenResponse aOStack_30 [32];
  
  param_1 = (undefined4 *)*param_1;
  gpg::SnapshotManager::OpenResponse::OpenResponse(aOStack_30,param_2);
  this = operator_new(0x20);
  gpg::SnapshotManager::OpenResponse::OpenResponse(this,aOStack_30);
  puVar1 = operator_new(4);
  *puVar1 = this;
  (*(code *)*param_1)(puVar1,param_1[1]);
  gpg::SnapshotManager::OpenResponse::~OpenResponse(aOStack_30);
  return;
}

// ---- FUN_0057d2e8  @ 0x57d2e8
void FUN_0057d2e8(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                 EndpointDetails *param_5)

{
  EndpointDetails *this;
  undefined4 *puVar1;
  undefined4 *puVar2;
  undefined4 *puStack_28;
  undefined4 uStack_24;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  
  puVar2 = (undefined4 *)*param_1;
  puStack_28 = param_1;
  uStack_24 = param_2;
  uStack_20 = param_3;
  uStack_1c = param_4;
  gpg::EndpointDetails::EndpointDetails((EndpointDetails *)&puStack_28,param_5);
  this = operator_new(0x10);
  gpg::EndpointDetails::EndpointDetails(this,(EndpointDetails *)&puStack_28);
  puVar1 = operator_new(4);
  *puVar1 = this;
  (*(code *)*puVar2)(param_3,param_4,puVar1,puVar2[1]);
  gpg::EndpointDetails::~EndpointDetails((EndpointDetails *)&puStack_28);
  return;
}

// ---- FUN_0057d38c  @ 0x57d38c
void FUN_0057d38c(undefined4 *param_1,QuestUIResponse *param_2)

{
  QuestUIResponse *this;
  undefined4 *puVar1;
  QuestUIResponse aQStack_24 [20];
  
  param_1 = (undefined4 *)*param_1;
  gpg::QuestManager::QuestUIResponse::QuestUIResponse(aQStack_24,param_2);
  this = operator_new(0x14);
  gpg::QuestManager::QuestUIResponse::QuestUIResponse(this,aQStack_24);
  puVar1 = operator_new(4);
  *puVar1 = this;
  (*(code *)*param_1)(puVar1,param_1[1]);
  gpg::QuestManager::QuestUIResponse::~QuestUIResponse(aQStack_24);
  return;
}

// ---- FUN_0057d786  @ 0x57d786
void FUN_0057d786(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                 undefined4 param_5,vector *param_6,undefined1 param_7)

{
  undefined4 *puVar1;
  undefined4 local_28;
  int local_24;
  int local_20;
  
  puVar1 = (undefined4 *)*param_1;
  FUN_007c64e8(&local_28,param_5);
  std::vector<unsigned_char,std::allocator<unsigned_char>>::vector
            ((vector<unsigned_char,std::allocator<unsigned_char>> *)&local_24,param_6);
  (*(code *)*puVar1)(param_3,param_4,local_28,local_24,local_20 - local_24,param_7,puVar1[1]);
  std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::~_Vector_base
            ((_Vector_base<unsigned_char,std::allocator<unsigned_char>> *)&local_24);
  FUN_007c5914(&local_28);
  return;
}

// ---- FUN_0057e142  @ 0x57e142
void FUN_0057e142(undefined4 *param_1,undefined4 *param_2)

{
  undefined4 *puVar1;
  undefined4 *puVar2;
  undefined4 uVar3;
  _Rb_tree<std::string,std::pair<std::string_const,gpg::Event>,std::_Select1st<std::pair<std::string_const,gpg::Event>>,std::less<std::string>,std::allocator<std::pair<std::string_const,gpg::Event>>>
  a_Stack_28 [24];
  
  uVar3 = *param_2;
  param_1 = (undefined4 *)*param_1;
  std::
  _Rb_tree<std::string,std::pair<std::string_const,gpg::Event>,std::_Select1st<std::pair<std::string_const,gpg::Event>>,std::less<std::string>,std::allocator<std::pair<std::string_const,gpg::Event>>>
  ::_Rb_tree(a_Stack_28,(_Rb_tree *)(param_2 + 1));
  puVar1 = operator_new(0x1c);
  *puVar1 = uVar3;
  std::
  _Rb_tree<std::string,std::pair<std::string_const,gpg::Event>,std::_Select1st<std::pair<std::string_const,gpg::Event>>,std::less<std::string>,std::allocator<std::pair<std::string_const,gpg::Event>>>
  ::_Rb_tree((_Rb_tree<std::string,std::pair<std::string_const,gpg::Event>,std::_Select1st<std::pair<std::string_const,gpg::Event>>,std::less<std::string>,std::allocator<std::pair<std::string_const,gpg::Event>>>
              *)(puVar1 + 1),(_Rb_tree *)a_Stack_28);
  puVar2 = operator_new(4);
  *puVar2 = puVar1;
  (*(code *)*param_1)(puVar2,param_1[1]);
  std::
  _Rb_tree<std::string,std::pair<std::string_const,gpg::Event>,std::_Select1st<std::pair<std::string_const,gpg::Event>>,std::less<std::string>,std::allocator<std::pair<std::string_const,gpg::Event>>>
  ::~_Rb_tree(a_Stack_28);
  return;
}

// ---- FUN_0057f37c  @ 0x57f37c
void FUN_0057f37c(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  undefined4 uVar2;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_009644d0,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_009644d8,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    uVar2 = 0;
    cocos2d::CCRect::CCRect((CCRect *)&DAT_009644e0,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
    FUN_00798644(&DAT_009644f0);
    FUN_007985bc(&DAT_009644f0,0x798b71,&DAT_00943000,&DAT_00943000,uVar2);
  }
  return;
}
