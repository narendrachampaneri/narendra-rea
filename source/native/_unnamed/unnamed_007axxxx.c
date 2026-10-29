// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 149 functions

// ---- FUN_007a0158  @ 0x7a0158
undefined4 *
FUN_007a0158(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
            int *param_5,int param_6,int param_7,uint *param_8,int param_9)

{
  int iVar1;
  int iVar2;
  uint uVar3;
  int *piVar4;
  uint uVar5;
  uint uVar6;
  bool bVar7;
  int *local_70;
  uint uStack_6c;
  int *local_68;
  uint local_64;
  undefined4 local_60;
  int local_5c;
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
  undefined4 local_28;
  undefined4 local_24;
  
  local_68 = (int *)param_3;
  local_64 = param_4;
  iVar1 = FUN_0079d96c(param_7 + 0x6c);
  FUN_0079c760(param_7 + 0x6c);
  iVar2 = *(int *)(iVar1 + 8);
  local_50 = *(undefined4 *)(iVar2 + 0x50);
  local_58 = *(undefined4 *)(iVar2 + 0x48);
  local_54 = *(undefined4 *)(iVar2 + 0x4c);
  local_4c = *(undefined4 *)(*(int *)(iVar1 + 8) + 0x54);
  local_48 = *(undefined4 *)(*(int *)(iVar1 + 8) + 0x58);
  local_44 = *(undefined4 *)(*(int *)(iVar1 + 8) + 0x5c);
  local_40 = *(undefined4 *)(*(int *)(iVar1 + 8) + 0x60);
  local_3c = *(undefined4 *)(*(int *)(iVar1 + 8) + 0x2c);
  local_38 = *(undefined4 *)(*(int *)(iVar1 + 8) + 0x30);
  local_34 = *(undefined4 *)(*(int *)(iVar1 + 8) + 0x34);
  local_30 = *(undefined4 *)(*(int *)(iVar1 + 8) + 0x38);
  local_2c = *(undefined4 *)(*(int *)(iVar1 + 8) + 0x3c);
  local_5c = 0;
  local_28 = *(undefined4 *)(*(int *)(iVar1 + 8) + 0x40);
  local_24 = *(undefined4 *)(*(int *)(iVar1 + 8) + 0x44);
  FUN_0079fedc(&local_70,param_2,local_68,local_64,param_5,param_6,&local_60,&local_58,7,param_7,
               &local_5c);
  local_68 = local_70;
  local_64 = uStack_6c;
  if (local_5c == 0) {
    *(undefined4 *)(param_9 + 0x18) = local_60;
  }
  else {
    *param_8 = *param_8 | 4;
  }
  piVar4 = local_70;
  if (local_70 == (int *)0x0) {
    uVar6 = 1;
    uVar5 = uStack_6c;
  }
  else {
    if (uStack_6c == 0xffffffff) {
      if ((byte *)local_70[2] < (byte *)local_70[3]) {
        uStack_6c = (uint)*(byte *)local_70[2];
      }
      else {
        uStack_6c = (**(code **)(*local_70 + 0x24))(local_70);
        if (uStack_6c == 0xffffffff) {
          uVar6 = 1;
          piVar4 = (int *)0x0;
          uVar5 = uStack_6c;
          goto LAB_007a022a;
        }
      }
    }
    uVar6 = 0;
    uVar5 = uStack_6c;
  }
LAB_007a022a:
  if ((param_5 == (int *)0x0) ||
     (((param_6 == -1 && ((uint)param_5[3] <= (uint)param_5[2])) &&
      (iVar1 = (**(code **)(*param_5 + 0x24))(), iVar1 == -1)))) {
    uVar3 = 1;
  }
  else {
    uVar3 = 0;
  }
  bVar7 = uVar3 == uVar6;
  *param_1 = piVar4;
  if (bVar7) {
    uVar3 = *param_8;
  }
  param_1[1] = uVar5;
  if (bVar7) {
    *param_8 = uVar3 | 2;
  }
  return param_1;
}

// ---- FUN_007a029c  @ 0x7a029c
undefined4 *
FUN_007a029c(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
            int *param_5,int param_6,int param_7,uint *param_8,int param_9)

{
  int iVar1;
  int iVar2;
  uint uVar3;
  int *piVar4;
  uint uVar5;
  uint uVar6;
  bool bVar7;
  int *local_98;
  uint uStack_94;
  int *local_90;
  uint local_8c;
  undefined4 local_88;
  int local_84;
  undefined4 local_80;
  undefined4 local_7c;
  undefined4 local_78;
  undefined4 local_74;
  undefined4 local_70;
  undefined4 local_6c;
  undefined4 local_68;
  undefined4 local_64;
  undefined4 local_60;
  undefined4 local_5c;
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
  undefined4 local_28;
  undefined4 local_24;
  
  local_90 = (int *)param_3;
  local_8c = param_4;
  iVar1 = FUN_0079d96c(param_7 + 0x6c);
  FUN_0079c760(param_7 + 0x6c);
  iVar2 = *(int *)(iVar1 + 8);
  local_78 = *(undefined4 *)(iVar2 + 0x9c);
  local_80 = *(undefined4 *)(iVar2 + 0x94);
  local_7c = *(undefined4 *)(iVar2 + 0x98);
  local_74 = *(undefined4 *)(*(int *)(iVar1 + 8) + 0xa0);
  local_70 = *(undefined4 *)(*(int *)(iVar1 + 8) + 0xa4);
  local_6c = *(undefined4 *)(*(int *)(iVar1 + 8) + 0xa8);
  local_68 = *(undefined4 *)(*(int *)(iVar1 + 8) + 0xac);
  local_64 = *(undefined4 *)(*(int *)(iVar1 + 8) + 0xb0);
  local_60 = *(undefined4 *)(*(int *)(iVar1 + 8) + 0xb4);
  local_5c = *(undefined4 *)(*(int *)(iVar1 + 8) + 0xb8);
  local_58 = *(undefined4 *)(*(int *)(iVar1 + 8) + 0xbc);
  local_54 = *(undefined4 *)(*(int *)(iVar1 + 8) + 0xc0);
  local_50 = *(undefined4 *)(*(int *)(iVar1 + 8) + 100);
  local_4c = *(undefined4 *)(*(int *)(iVar1 + 8) + 0x68);
  local_48 = *(undefined4 *)(*(int *)(iVar1 + 8) + 0x6c);
  local_44 = *(undefined4 *)(*(int *)(iVar1 + 8) + 0x70);
  local_40 = *(undefined4 *)(*(int *)(iVar1 + 8) + 0x74);
  local_3c = *(undefined4 *)(*(int *)(iVar1 + 8) + 0x78);
  local_38 = *(undefined4 *)(*(int *)(iVar1 + 8) + 0x7c);
  local_34 = *(undefined4 *)(*(int *)(iVar1 + 8) + 0x80);
  local_30 = *(undefined4 *)(*(int *)(iVar1 + 8) + 0x84);
  local_2c = *(undefined4 *)(*(int *)(iVar1 + 8) + 0x88);
  local_28 = *(undefined4 *)(*(int *)(iVar1 + 8) + 0x8c);
  local_24 = *(undefined4 *)(*(int *)(iVar1 + 8) + 0x90);
  local_84 = 0;
  FUN_0079fedc(&local_98,param_2,local_90,local_8c,param_5,param_6,&local_88,&local_80,0xc,param_7,
               &local_84);
  local_90 = local_98;
  local_8c = uStack_94;
  if (local_84 == 0) {
    *(undefined4 *)(param_9 + 0x10) = local_88;
  }
  else {
    *param_8 = *param_8 | 4;
  }
  piVar4 = local_98;
  if (local_98 == (int *)0x0) {
    uVar6 = 1;
    uVar5 = uStack_94;
  }
  else {
    if (uStack_94 == 0xffffffff) {
      if ((byte *)local_98[2] < (byte *)local_98[3]) {
        uStack_94 = (uint)*(byte *)local_98[2];
      }
      else {
        uStack_94 = (**(code **)(*local_98 + 0x24))(local_98);
        if (uStack_94 == 0xffffffff) {
          uVar6 = 1;
          piVar4 = (int *)0x0;
          uVar5 = uStack_94;
          goto LAB_007a03d4;
        }
      }
    }
    uVar6 = 0;
    uVar5 = uStack_94;
  }
LAB_007a03d4:
  if ((param_5 == (int *)0x0) ||
     (((param_6 == -1 && ((uint)param_5[3] <= (uint)param_5[2])) &&
      (iVar1 = (**(code **)(*param_5 + 0x24))(), iVar1 == -1)))) {
    uVar3 = 1;
  }
  else {
    uVar3 = 0;
  }
  bVar7 = uVar3 == uVar6;
  *param_1 = piVar4;
  if (bVar7) {
    uVar3 = *param_8;
  }
  param_1[1] = uVar5;
  if (bVar7) {
    *param_8 = uVar3 | 2;
  }
  return param_1;
}

// ---- FUN_007a0444  @ 0x7a0444
undefined4 *
FUN_007a0444(undefined4 *param_1,undefined4 param_2,int *param_3,uint param_4,int *param_5,
            uint param_6,int param_7,uint *param_8,int param_9,char *param_10)

{
  char *__s;
  byte bVar1;
  int iVar2;
  int *piVar3;
  size_t sVar4;
  undefined4 *puVar5;
  char *pcVar6;
  uint uVar7;
  undefined4 uVar8;
  undefined *puVar9;
  int iVar10;
  undefined4 uVar11;
  int iVar12;
  uint uVar13;
  uint uVar14;
  char *local_88;
  char *local_84;
  int *local_70;
  uint uStack_6c;
  int *local_68;
  uint local_64;
  uint local_60;
  int local_5c;
  int local_58;
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
  
  __s = param_10;
  iVar12 = param_7 + 0x6c;
  local_68 = param_3;
  local_64 = param_4;
  iVar2 = FUN_0079d96c(iVar12);
  piVar3 = (int *)FUN_0079c760(iVar12);
  local_88 = "%H:%M:%S";
  sVar4 = strlen(__s);
  local_84 = "%H:%M";
  uVar13 = 0;
  local_60 = 0;
  do {
    if (local_68 == (int *)0x0) {
      iVar12 = 1;
    }
    else if (local_64 == 0xffffffff) {
      if ((byte *)local_68[2] < (byte *)local_68[3]) {
        uVar7 = (uint)*(byte *)local_68[2];
      }
      else {
        uVar7 = (**(code **)(*local_68 + 0x24))();
        if (uVar7 == 0xffffffff) {
          local_68 = (int *)0x0;
          iVar12 = 1;
          goto LAB_007a04ba;
        }
      }
      iVar12 = 0;
      local_64 = uVar7;
    }
    else {
      iVar12 = 0;
    }
LAB_007a04ba:
    if (param_5 == (int *)0x0) {
      iVar10 = 1;
    }
    else if (param_6 == 0xffffffff) {
      if ((byte *)param_5[2] < (byte *)param_5[3]) {
        uVar7 = (uint)*(byte *)param_5[2];
      }
      else {
        uVar7 = (**(code **)(*param_5 + 0x24))();
        if (uVar7 == 0xffffffff) {
          param_5 = (int *)0x0;
          iVar10 = 1;
          goto LAB_007a04ce;
        }
      }
      iVar10 = 0;
      param_6 = uVar7;
    }
    else {
      iVar10 = 0;
    }
LAB_007a04ce:
    if ((iVar12 == iVar10) || (local_60 != 0 || sVar4 <= uVar13)) {
      if ((local_60 != 0) || (uVar13 != sVar4)) {
        *param_8 = *param_8 | 4;
      }
      *param_1 = local_68;
      param_1[1] = local_64;
      return param_1;
    }
    bVar1 = __s[uVar13];
    uVar7 = (uint)*(byte *)((int)piVar3 + bVar1 + 0x11d);
    if (uVar7 == 0) {
      uVar7 = (**(code **)(*piVar3 + 0x20))(piVar3);
      if (uVar7 != 0) {
        *(char *)((int)piVar3 + bVar1 + 0x11d) = (char)uVar7;
        goto LAB_007a04fc;
      }
LAB_007a05da:
      bVar1 = __s[uVar13];
      if (local_68 == (int *)0x0) {
        uVar7 = 0xff;
      }
      else if (local_64 == 0xffffffff) {
        if ((byte *)local_68[2] < (byte *)local_68[3]) {
          uVar14 = (uint)*(byte *)local_68[2];
        }
        else {
          uVar14 = (**(code **)(*local_68 + 0x24))();
          if (uVar14 == 0xffffffff) {
            local_68 = (int *)0x0;
            uVar7 = 0xff;
            goto joined_r0x007a05f2;
          }
        }
        uVar7 = uVar14 & 0xff;
        local_64 = uVar14;
      }
      else {
        uVar7 = local_64 & 0xff;
      }
joined_r0x007a05f2:
      uVar14 = uVar13;
      if (bVar1 == uVar7) {
LAB_007a064e:
        FUN_0079f30c(&local_68);
      }
      else {
LAB_007a05f4:
        local_60 = local_60 | 4;
      }
      goto LAB_007a05fc;
    }
LAB_007a04fc:
    if (uVar7 != 0x25) goto LAB_007a05da;
    uVar14 = uVar13 + 1;
    bVar1 = __s[uVar14];
    uVar7 = (uint)*(byte *)((int)piVar3 + bVar1 + 0x11d);
    if (uVar7 == 0) {
      uVar7 = (**(code **)(*piVar3 + 0x20))(piVar3);
      if (uVar7 != 0) {
        *(char *)((int)piVar3 + bVar1 + 0x11d) = (char)uVar7;
        goto LAB_007a0516;
      }
LAB_007a0666:
      local_60 = local_60 | 4;
      goto LAB_007a05fc;
    }
LAB_007a0516:
    local_5c = 0;
    if (uVar7 == 0x45 || uVar7 == 0x4f) {
      uVar14 = uVar13 + 2;
      bVar1 = __s[uVar14];
      uVar7 = (uint)*(byte *)((int)piVar3 + bVar1 + 0x11d);
      if (uVar7 != 0) goto LAB_007a053a;
      uVar7 = (**(code **)(*piVar3 + 0x20))(piVar3);
      if (uVar7 != 0) {
        *(char *)((int)piVar3 + bVar1 + 0x11d) = (char)uVar7;
        goto LAB_007a053a;
      }
switchD_007a0542_caseD_45:
      goto LAB_007a0666;
    }
LAB_007a053a:
    switch(uVar7) {
    case 0x41:
      iVar12 = *(int *)(iVar2 + 8);
      iVar10 = param_9 + 0x18;
      local_58 = *(int *)(iVar12 + 0x2c);
      uVar11 = 7;
      local_54 = *(undefined4 *)(iVar12 + 0x30);
      local_50 = *(undefined4 *)(iVar12 + 0x34);
      local_4c = *(undefined4 *)(*(int *)(iVar2 + 8) + 0x38);
      local_48 = *(undefined4 *)(*(int *)(iVar2 + 8) + 0x3c);
      local_44 = *(undefined4 *)(*(int *)(iVar2 + 8) + 0x40);
      local_40 = *(undefined4 *)(*(int *)(iVar2 + 8) + 0x44);
      goto LAB_007a08b0;
    case 0x42:
      iVar12 = *(int *)(iVar2 + 8);
      local_58 = *(int *)(iVar12 + 100);
      local_54 = *(undefined4 *)(iVar12 + 0x68);
      local_50 = *(undefined4 *)(iVar12 + 0x6c);
      local_4c = *(undefined4 *)(*(int *)(iVar2 + 8) + 0x70);
      local_48 = *(undefined4 *)(*(int *)(iVar2 + 8) + 0x74);
      local_44 = *(undefined4 *)(*(int *)(iVar2 + 8) + 0x78);
      local_40 = *(undefined4 *)(*(int *)(iVar2 + 8) + 0x7c);
      local_3c = *(undefined4 *)(*(int *)(iVar2 + 8) + 0x80);
      local_38 = *(undefined4 *)(*(int *)(iVar2 + 8) + 0x84);
      local_34 = *(undefined4 *)(*(int *)(iVar2 + 8) + 0x88);
      local_30 = *(undefined4 *)(*(int *)(iVar2 + 8) + 0x8c);
      local_2c = *(undefined4 *)(*(int *)(iVar2 + 8) + 0x90);
      goto LAB_007a088e;
    case 0x43:
    case 0x59:
    case 0x79:
      FUN_0079c918(&local_70,param_2,local_68,local_64,param_5,param_6,&local_5c,0,9999,4,param_7,
                   &local_60);
      local_68 = local_70;
      local_64 = uStack_6c;
      if (local_60 == 0) {
        if (local_5c < 0) {
          iVar12 = local_5c + 100;
        }
        else {
          iVar12 = local_5c + -0x76c;
        }
        *(int *)(param_9 + 0x14) = iVar12;
      }
      break;
    case 0x44:
      pcVar6 = "%m/%d/%y";
      puVar9 = &DAT_00853281;
      goto LAB_007a0a7a;
    default:
      goto switchD_007a0542_caseD_45;
    case 0x48:
      uVar11 = 0;
      iVar12 = param_9 + 8;
      uVar8 = 0x17;
      goto LAB_007a07c6;
    case 0x49:
      uVar11 = 1;
      iVar12 = param_9 + 8;
      uVar8 = 0xc;
      goto LAB_007a07c6;
    case 0x4d:
      uVar11 = 0;
      iVar12 = param_9 + 4;
      uVar8 = 0x3b;
      goto LAB_007a07c6;
    case 0x52:
      pcVar6 = local_84;
      puVar9 = &DAT_0085328a;
      goto LAB_007a0a7a;
    case 0x53:
      FUN_0079c918(&local_70,param_2,local_68,local_64,param_5,param_6,param_9,0,0x3d,2,param_7,
                   &local_60);
      local_68 = local_70;
      local_64 = uStack_6c;
      break;
    case 0x54:
      pcVar6 = local_88;
      puVar9 = &DAT_00853295;
LAB_007a0a7a:
      FUN_0079b478(piVar3,pcVar6,puVar9,&local_58);
      FUN_007a0444(&local_70,param_2,local_68,local_64,param_5,param_6,param_7,&local_60,param_9,
                   &local_58);
      local_68 = local_70;
      local_64 = uStack_6c;
      break;
    case 0x58:
      FUN_007a0444(&local_70,param_2,local_68,local_64,param_5,param_6,param_7,&local_60,param_9,
                   *(undefined4 *)(*(int *)(iVar2 + 8) + 0x10));
      local_68 = local_70;
      local_64 = uStack_6c;
      break;
    case 0x5a:
      bVar1 = FUN_0079fc40(&local_68);
      if (-1 < (int)((uint)*(byte *)(piVar3[6] + (uint)bVar1) << 0x1f)) goto LAB_007a05f4;
      FUN_0079fcfc(&local_70,param_2,local_68,local_64,param_5,param_6,&local_58,&PTR_DAT_0094f57c,
                   0xe,param_7,&local_60);
      local_68 = local_70;
      local_64 = uStack_6c;
      iVar12 = FUN_0079fc7c(&local_68,&param_5);
      if (((iVar12 == 0) && (local_60 == 0)) && (local_58 == 0)) {
        bVar1 = FUN_0079fc40(&local_68);
        if ((char)piVar3[7] == '\0') {
          uVar13 = FUN_0079b21c(piVar3,0x2d);
        }
        else {
          uVar13 = (uint)*(byte *)((int)piVar3 + 0x4a);
        }
        if (bVar1 != uVar13) {
          bVar1 = FUN_0079fc40(&local_68);
          if ((char)piVar3[7] == '\0') {
            uVar13 = FUN_0079b21c(piVar3,0x2b);
          }
          else {
            uVar13 = (uint)*(byte *)(piVar3 + 0x12);
          }
          if (bVar1 != uVar13) break;
        }
        FUN_0079c918(&local_70,param_2,local_68,local_64,param_5,param_6,&local_58,0,0x17,2,param_7,
                     &local_60);
        local_68 = local_70;
        local_64 = uStack_6c;
        FUN_0079c918(&local_70,param_2,local_70,uStack_6c,param_5,param_6,&local_58,0,0x3b,2,param_7
                     ,&local_60);
        local_68 = local_70;
        local_64 = uStack_6c;
      }
      break;
    case 0x61:
      iVar12 = *(int *)(iVar2 + 8);
      iVar10 = param_9 + 0x18;
      local_58 = *(int *)(iVar12 + 0x48);
      local_54 = *(undefined4 *)(iVar12 + 0x4c);
      local_50 = *(undefined4 *)(iVar12 + 0x50);
      local_4c = *(undefined4 *)(*(int *)(iVar2 + 8) + 0x54);
      local_48 = *(undefined4 *)(*(int *)(iVar2 + 8) + 0x58);
      local_44 = *(undefined4 *)(*(int *)(iVar2 + 8) + 0x5c);
      local_40 = *(undefined4 *)(*(int *)(iVar2 + 8) + 0x60);
      uVar11 = 7;
      goto LAB_007a08b0;
    case 0x62:
    case 0x68:
      iVar12 = *(int *)(iVar2 + 8);
      local_58 = *(int *)(iVar12 + 0x94);
      local_54 = *(undefined4 *)(iVar12 + 0x98);
      local_50 = *(undefined4 *)(iVar12 + 0x9c);
      local_4c = *(undefined4 *)(*(int *)(iVar2 + 8) + 0xa0);
      local_48 = *(undefined4 *)(*(int *)(iVar2 + 8) + 0xa4);
      local_44 = *(undefined4 *)(*(int *)(iVar2 + 8) + 0xa8);
      local_40 = *(undefined4 *)(*(int *)(iVar2 + 8) + 0xac);
      local_3c = *(undefined4 *)(*(int *)(iVar2 + 8) + 0xb0);
      local_38 = *(undefined4 *)(*(int *)(iVar2 + 8) + 0xb4);
      local_34 = *(undefined4 *)(*(int *)(iVar2 + 8) + 0xb8);
      local_30 = *(undefined4 *)(*(int *)(iVar2 + 8) + 0xbc);
      local_2c = *(undefined4 *)(*(int *)(iVar2 + 8) + 0xc0);
LAB_007a088e:
      iVar10 = param_9 + 0x10;
      uVar11 = 0xc;
LAB_007a08b0:
      FUN_0079fcfc(&local_70,param_2,local_68,local_64,param_5,param_6,iVar10,&local_58,uVar11,
                   param_7,&local_60);
      local_68 = local_70;
      local_64 = uStack_6c;
      break;
    case 99:
      FUN_007a0444(&local_70,param_2,local_68,local_64,param_5,param_6,param_7,&local_60,param_9,
                   *(undefined4 *)(*(int *)(iVar2 + 8) + 0x18));
      local_68 = local_70;
      local_64 = uStack_6c;
      break;
    case 100:
      uVar11 = 1;
LAB_007a07be:
      iVar12 = param_9 + 0xc;
      uVar8 = 0x1f;
LAB_007a07c6:
      FUN_0079c918(&local_70,param_2,local_68,local_64,param_5,param_6,iVar12,uVar11,uVar8,2,param_7
                   ,&local_60);
      local_68 = local_70;
      local_64 = uStack_6c;
      break;
    case 0x65:
      bVar1 = FUN_0079fc40(&local_68);
      if (-1 < (int)((uint)*(byte *)(piVar3[6] + (uint)bVar1) << 0x1c)) {
        uVar11 = 10;
        goto LAB_007a07be;
      }
      puVar5 = (undefined4 *)FUN_0079f30c(&local_68);
      FUN_0079c918(&local_70,param_2,*puVar5,puVar5[1],param_5,param_6,param_9 + 0xc,1,9,1,param_7,
                   &local_60);
      local_68 = local_70;
      local_64 = uStack_6c;
      break;
    case 0x6d:
      FUN_0079c918(&local_70,param_2,local_68,local_64,param_5,param_6,&local_5c,1,0xc,2,param_7,
                   &local_60);
      local_68 = local_70;
      local_64 = uStack_6c;
      if (local_60 == 0) {
        *(int *)(param_9 + 0x10) = local_5c + -1;
      }
      break;
    case 0x6e:
      bVar1 = FUN_0079fc40(&local_68);
      uVar13 = (uint)*(byte *)((int)piVar3 + bVar1 + 0x11d);
      if (uVar13 == 0) {
        uVar13 = (**(code **)(*piVar3 + 0x20))(piVar3);
        if (uVar13 == 0) goto LAB_007a05f4;
        *(char *)((int)piVar3 + bVar1 + 0x11d) = (char)uVar13;
      }
      if (uVar13 != 10) goto LAB_007a05f4;
      goto LAB_007a064e;
    case 0x74:
      bVar1 = FUN_0079fc40(&local_68);
      uVar13 = (uint)*(byte *)((int)piVar3 + bVar1 + 0x11d);
      if (uVar13 == 0) {
        uVar13 = (**(code **)(*piVar3 + 0x20))(piVar3);
        if (uVar13 == 0) goto LAB_007a05f4;
        *(char *)((int)piVar3 + bVar1 + 0x11d) = (char)uVar13;
      }
      if (uVar13 == 9) goto LAB_007a064e;
      goto LAB_007a05f4;
    case 0x78:
      FUN_007a0444(&local_70,param_2,local_68,local_64,param_5,param_6,param_7,&local_60,param_9,
                   *(undefined4 *)(*(int *)(iVar2 + 8) + 8));
      local_68 = local_70;
      local_64 = uStack_6c;
    }
LAB_007a05fc:
    uVar13 = uVar14 + 1;
  } while( true );
}

// ---- FUN_007a0d0c  @ 0x7a0d0c
undefined4 *
FUN_007a0d0c(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
            int *param_5,int param_6,int param_7,uint *param_8,undefined4 param_9)

{
  int iVar1;
  uint uVar2;
  int *piVar3;
  uint uVar4;
  uint uVar5;
  bool bVar6;
  int *local_30;
  uint uStack_2c;
  int *local_28;
  uint local_24;
  
  local_28 = (int *)param_3;
  local_24 = param_4;
  iVar1 = FUN_0079d96c(param_7 + 0x6c);
  FUN_007a0444(&local_30,param_2,local_28,local_24,param_5,param_6,param_7,param_8,param_9,
               *(undefined4 *)(*(int *)(iVar1 + 8) + 0x10));
  local_28 = local_30;
  local_24 = uStack_2c;
  piVar3 = local_30;
  if (local_30 == (int *)0x0) {
    uVar5 = 1;
    uVar4 = uStack_2c;
  }
  else {
    if (uStack_2c == 0xffffffff) {
      if ((byte *)local_30[2] < (byte *)local_30[3]) {
        uStack_2c = (uint)*(byte *)local_30[2];
      }
      else {
        uStack_2c = (**(code **)(*local_30 + 0x24))(local_30);
        if (uStack_2c == 0xffffffff) {
          uVar5 = 1;
          piVar3 = (int *)0x0;
          uVar4 = uStack_2c;
          goto LAB_007a0d68;
        }
      }
    }
    uVar5 = 0;
    uVar4 = uStack_2c;
  }
LAB_007a0d68:
  if ((param_5 == (int *)0x0) ||
     (((param_6 == -1 && ((uint)param_5[3] <= (uint)param_5[2])) &&
      (iVar1 = (**(code **)(*param_5 + 0x24))(), iVar1 == -1)))) {
    uVar2 = 1;
  }
  else {
    uVar2 = 0;
  }
  bVar6 = uVar5 == uVar2;
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

// ---- FUN_007a0dcc  @ 0x7a0dcc
undefined4 *
FUN_007a0dcc(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
            int *param_5,int param_6,int param_7,uint *param_8,undefined4 param_9)

{
  int iVar1;
  uint uVar2;
  int *piVar3;
  uint uVar4;
  uint uVar5;
  bool bVar6;
  int *local_30;
  uint uStack_2c;
  int *local_28;
  uint local_24;
  
  local_28 = (int *)param_3;
  local_24 = param_4;
  iVar1 = FUN_0079d96c(param_7 + 0x6c);
  FUN_007a0444(&local_30,param_2,local_28,local_24,param_5,param_6,param_7,param_8,param_9,
               *(undefined4 *)(*(int *)(iVar1 + 8) + 8));
  local_28 = local_30;
  local_24 = uStack_2c;
  piVar3 = local_30;
  if (local_30 == (int *)0x0) {
    uVar5 = 1;
    uVar4 = uStack_2c;
  }
  else {
    if (uStack_2c == 0xffffffff) {
      if ((byte *)local_30[2] < (byte *)local_30[3]) {
        uStack_2c = (uint)*(byte *)local_30[2];
      }
      else {
        uStack_2c = (**(code **)(*local_30 + 0x24))(local_30);
        if (uStack_2c == 0xffffffff) {
          uVar5 = 1;
          piVar3 = (int *)0x0;
          uVar4 = uStack_2c;
          goto LAB_007a0e28;
        }
      }
    }
    uVar5 = 0;
    uVar4 = uStack_2c;
  }
LAB_007a0e28:
  if ((param_5 == (int *)0x0) ||
     (((param_6 == -1 && ((uint)param_5[3] <= (uint)param_5[2])) &&
      (iVar1 = (**(code **)(*param_5 + 0x24))(), iVar1 == -1)))) {
    uVar2 = 1;
  }
  else {
    uVar2 = 0;
  }
  bVar6 = uVar5 == uVar2;
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

// ---- FUN_007a0e8c  @ 0x7a0e8c
/* WARNING: Restarted to delay deadcode elimination for space: stack */

undefined4 *
FUN_007a0e8c(undefined4 *param_1,undefined4 param_2,int *param_3,uint param_4,int *param_5,
            uint param_6,int param_7,uint *param_8,undefined4 param_9)

{
  bool bVar1;
  bool bVar2;
  bool bVar3;
  byte bVar4;
  char cVar5;
  int iVar6;
  void *pvVar7;
  bool bVar8;
  undefined4 uVar9;
  int iVar10;
  int iVar11;
  int iVar12;
  uint uVar13;
  int iVar14;
  uint uVar15;
  char *pcVar16;
  uint uVar17;
  int iVar18;
  bool bVar19;
  uint local_7c;
  uint local_60;
  uint local_5c;
  int *local_48;
  uint local_44;
  undefined1 auStack_3c [4];
  undefined1 auStack_38 [4];
  undefined1 *local_34;
  char *local_30;
  char local_2c [8];
  
  iVar12 = param_7 + 0x6c;
  local_48 = param_3;
  local_44 = param_4;
  iVar6 = FUN_0079c760(iVar12);
  iVar12 = FUN_0079f264(auStack_3c,iVar12);
  if (*(int *)(iVar12 + 0x20) == 0) {
    bVar19 = false;
  }
  else {
    bVar19 = *(int *)(iVar12 + 0x28) != 0;
  }
  local_34 = &DAT_00972528;
  if (*(char *)(iVar12 + 0x10) != '\0') {
    FUN_007c60a0(&local_34,0x20);
  }
  local_30 = &DAT_00972528;
  FUN_007c60a0(&local_30,0x20);
  uVar9 = *(undefined4 *)(iVar12 + 0x34);
  uVar17 = 0;
  local_7c = 0;
  bVar3 = false;
  local_2c[3] = (char)((uint)uVar9 >> 0x18);
  local_2c[2] = (char)((uint)uVar9 >> 0x10);
  local_2c[0] = (char)uVar9;
  local_5c = 0;
  local_60 = 0;
  bVar2 = false;
LAB_007a0f3a:
  do {
    switch(local_2c[local_7c]) {
    case '\0':
switchD_007a0f46_caseD_0:
      bVar1 = true;
      goto joined_r0x007a1126;
    case '\x01':
      iVar14 = FUN_0079fc7c(&local_48,&param_5);
      if ((iVar14 == 0) &&
         (bVar4 = FUN_0079fc40(&local_48),
         (int)((uint)*(byte *)(*(int *)(iVar6 + 0x18) + (uint)bVar4) << 0x1c) < 0)) {
        FUN_0079f30c(&local_48);
        goto switchD_007a0f46_caseD_0;
      }
      bVar1 = false;
joined_r0x007a1126:
      if (local_7c != 3) {
LAB_007a0f7a:
        if (local_48 == (int *)0x0) goto LAB_007a1362;
        if (local_44 != 0xffffffff) {
          iVar14 = 0;
          goto LAB_007a0f8c;
        }
        if ((byte *)local_48[2] < (byte *)local_48[3]) {
          uVar13 = (uint)*(byte *)local_48[2];
        }
        else {
          uVar13 = (**(code **)(*local_48 + 0x24))();
          if (uVar13 == 0xffffffff) {
            local_48 = (int *)0x0;
            iVar14 = 1;
            goto LAB_007a0f8c;
          }
        }
        iVar14 = 0;
        local_44 = uVar13;
        if (param_5 != (int *)0x0) goto LAB_007a0f94;
LAB_007a12b8:
        iVar10 = 1;
LAB_007a0fa0:
        if (iVar10 != iVar14) {
          do {
            if (local_48 == (int *)0x0) {
              uVar13 = 0xff;
            }
            else if (local_44 == 0xffffffff) {
              if ((byte *)local_48[2] < (byte *)local_48[3]) {
                uVar15 = (uint)*(byte *)local_48[2];
              }
              else {
                uVar15 = (**(code **)(*local_48 + 0x24))();
                if (uVar15 == 0xffffffff) {
                  local_48 = (int *)0x0;
                  uVar13 = 0xff;
                  goto LAB_007a127c;
                }
              }
              uVar13 = uVar15 & 0xff;
              local_44 = uVar15;
            }
            else {
              uVar13 = local_44 & 0xff;
            }
LAB_007a127c:
            if (-1 < (int)((uint)*(byte *)(*(int *)(iVar6 + 0x18) + uVar13) << 0x1c)) break;
            if (local_48 != (int *)0x0) {
              if ((uint)local_48[2] < (uint)local_48[3]) {
                local_48[2] = local_48[2] + 1;
              }
              else {
                (**(code **)(*local_48 + 0x28))();
              }
              local_44 = 0xffffffff;
              goto LAB_007a0f7a;
            }
LAB_007a1362:
            iVar14 = 1;
LAB_007a0f8c:
            if (param_5 == (int *)0x0) goto LAB_007a12b8;
LAB_007a0f94:
            if (param_6 != 0xffffffff) {
              iVar10 = 0;
              goto LAB_007a0fa0;
            }
            if ((byte *)param_5[2] < (byte *)param_5[3]) {
              uVar13 = (uint)*(byte *)param_5[2];
            }
            else {
              uVar13 = (**(code **)(*param_5 + 0x24))();
              if (uVar13 == 0xffffffff) goto code_r0x007a151c;
            }
            param_6 = uVar13;
            if (iVar14 == 0) break;
          } while( true );
        }
        break;
      }
      bVar19 = bVar1;
      if (local_60 < 2) {
        bVar19 = false;
      }
      goto LAB_007a1136;
    case '\x02':
      if (-1 < *(int *)(param_7 + 0xc) << 0x16) {
        uVar13 = 1 - local_7c;
        if (1 < local_7c) {
          uVar13 = 0;
        }
        if (1 < local_60) {
          uVar13 = uVar13 | 1;
        }
        if (uVar13 == 0) {
          if (local_7c == 1) {
            if ((!bVar19) && (local_2c[0] != '\x03')) {
              if (local_2c[2] == '\x01') {
                iVar14 = *(int *)(iVar12 + 0x18);
                goto LAB_007a1376;
              }
              local_7c = 2;
              goto LAB_007a0f3a;
            }
          }
          else {
            if (local_7c != 2) goto switchD_007a0f46_default;
            if ((local_2c[3] != '\x04') && ((!bVar19 || (local_2c[3] != '\x03')))) {
              local_7c = 3;
              goto LAB_007a0f3a;
            }
          }
        }
      }
      iVar14 = *(int *)(iVar12 + 0x18);
LAB_007a1376:
      iVar10 = 0;
      if (local_48 == (int *)0x0) goto LAB_007a13dc;
LAB_007a137a:
      if (local_44 == 0xffffffff) {
        if ((byte *)local_48[2] < (byte *)local_48[3]) {
          uVar13 = (uint)*(byte *)local_48[2];
        }
        else {
          uVar13 = (**(code **)(*local_48 + 0x24))();
          if (uVar13 == 0xffffffff) {
            local_48 = (int *)0x0;
            iVar18 = 1;
            goto LAB_007a1384;
          }
        }
        iVar18 = 0;
        local_44 = uVar13;
      }
      else {
        iVar18 = 0;
      }
LAB_007a1384:
      if (param_5 == (int *)0x0) goto LAB_007a13e4;
      do {
        if (param_6 == 0xffffffff) {
          if ((byte *)param_5[2] < (byte *)param_5[3]) {
            uVar13 = (uint)*(byte *)param_5[2];
          }
          else {
            uVar13 = (**(code **)(*param_5 + 0x24))();
            if (uVar13 == 0xffffffff) {
              param_5 = (int *)0x0;
              iVar11 = 1;
              goto LAB_007a1394;
            }
          }
          iVar11 = 0;
          param_6 = uVar13;
        }
        else {
          iVar11 = 0;
        }
LAB_007a1394:
        if (iVar11 == iVar18) {
LAB_007a13ea:
          if (iVar10 == iVar14) goto switchD_007a0f46_default;
LAB_007a13b0:
          if ((iVar10 != 0) || (*(int *)(param_7 + 0xc) << 0x16 < 0)) goto LAB_007a1092;
          goto switchD_007a0f46_default;
        }
        while( true ) {
          if (iVar10 == iVar14) goto switchD_007a0f46_default;
          cVar5 = FUN_0079fc40(&local_48);
          if (*(char *)(*(int *)(iVar12 + 0x14) + iVar10) != cVar5) goto LAB_007a13b0;
          if (local_48 != (int *)0x0) {
            if ((uint)local_48[2] < (uint)local_48[3]) {
              local_48[2] = local_48[2] + 1;
            }
            else {
              (**(code **)(*local_48 + 0x28))();
            }
            local_44 = 0xffffffff;
          }
          iVar10 = iVar10 + 1;
          if (local_48 != (int *)0x0) goto LAB_007a137a;
LAB_007a13dc:
          iVar18 = 1;
          if (param_5 != (int *)0x0) break;
LAB_007a13e4:
          if (iVar18 == 1) goto LAB_007a13ea;
        }
      } while( true );
    case '\x03':
      if (((*(int *)(iVar12 + 0x20) != 0) &&
          (iVar14 = FUN_0079fc7c(&local_48,&param_5), iVar14 == 0)) &&
         (cVar5 = FUN_0079fc40(&local_48), **(char **)(iVar12 + 0x1c) == cVar5)) {
        local_60 = *(uint *)(iVar12 + 0x20);
        FUN_0079f30c(&local_48);
        goto switchD_007a0f46_default;
      }
      if (((*(int *)(iVar12 + 0x28) == 0) ||
          (iVar14 = FUN_0079fc7c(&local_48,&param_5), iVar14 != 0)) ||
         (cVar5 = FUN_0079fc40(&local_48), **(char **)(iVar12 + 0x24) != cVar5)) {
        bVar1 = (bool)(bVar19 ^ 1);
        if ((*(int *)(iVar12 + 0x20) != 0) && (*(int *)(iVar12 + 0x28) == 0)) {
          bVar2 = true;
          bVar1 = true;
        }
      }
      else {
        local_60 = *(uint *)(iVar12 + 0x28);
        FUN_0079f30c(&local_48);
        bVar2 = true;
        bVar1 = true;
      }
      break;
    case '\x04':
      if (local_48 == (int *)0x0) goto LAB_007a1078;
LAB_007a0fc8:
      if (local_44 == 0xffffffff) {
        if ((byte *)local_48[2] < (byte *)local_48[3]) {
          uVar13 = (uint)*(byte *)local_48[2];
        }
        else {
          uVar13 = (**(code **)(*local_48 + 0x24))();
          if (uVar13 == 0xffffffff) {
            local_48 = (int *)0x0;
            iVar14 = 1;
            goto LAB_007a0fd4;
          }
        }
        iVar14 = 0;
        local_44 = uVar13;
      }
      else {
        iVar14 = 0;
      }
LAB_007a0fd4:
      if (param_5 == (int *)0x0) goto LAB_007a1080;
LAB_007a0fda:
      if (param_6 == 0xffffffff) {
        if ((byte *)param_5[2] < (byte *)param_5[3]) {
          uVar13 = (uint)*(byte *)param_5[2];
        }
        else {
          uVar13 = (**(code **)(*param_5 + 0x24))();
          if (uVar13 == 0xffffffff) {
            param_5 = (int *)0x0;
            iVar10 = 1;
            goto LAB_007a0fe6;
          }
        }
        iVar10 = 0;
        param_6 = uVar13;
      }
      else {
        iVar10 = 0;
      }
LAB_007a0fe6:
      uVar13 = uVar17;
      if (iVar10 != iVar14) {
        do {
          if (local_48 == (int *)0x0) {
            uVar15 = 0xff;
LAB_007a1000:
            pvVar7 = memchr((void *)(iVar12 + 0x39),uVar15,10);
            if (pvVar7 != (void *)0x0) goto LAB_007a100e;
LAB_007a1300:
            uVar17 = 0;
            if ((*(byte *)(iVar12 + 0x11) != uVar15) || (bVar3)) {
              if ((*(char *)(iVar12 + 0x10) == '\0') ||
                 ((*(byte *)(iVar12 + 0x12) != uVar15 || (bVar3)))) break;
              if (uVar13 == 0) {
                bVar1 = false;
                goto LAB_007a1088;
              }
              FUN_007c640c(&local_34,uVar13 & 0xff);
              uVar17 = 0;
            }
            else {
              if (*(int *)(iVar12 + 0x2c) < 1) break;
              bVar3 = true;
              local_5c = uVar13;
            }
          }
          else {
            if (local_44 != 0xffffffff) {
              uVar15 = local_44 & 0xff;
              goto LAB_007a1000;
            }
            if ((byte *)local_48[2] < (byte *)local_48[3]) {
              uVar17 = (uint)*(byte *)local_48[2];
            }
            else {
              uVar17 = (**(code **)(*local_48 + 0x24))();
              if (uVar17 == 0xffffffff) {
                local_48 = (int *)0x0;
                uVar15 = 0xff;
                goto LAB_007a1000;
              }
            }
            uVar15 = uVar17 & 0xff;
            local_44 = uVar17;
            pvVar7 = memchr((void *)(iVar12 + 0x39),uVar15,10);
            if (pvVar7 == (void *)0x0) goto LAB_007a1300;
LAB_007a100e:
            iVar14 = *(int *)(local_30 + -0xc);
            uVar15 = iVar14 + 1;
            cVar5 = *(char *)((int)pvVar7 + (DAT_0094f578 - (iVar12 + 0x38)));
            if ((*(uint *)(local_30 + -8) < uVar15) || (0 < *(int *)(local_30 + -4))) {
              FUN_007c60a0(&local_30,uVar15);
              iVar14 = *(int *)(local_30 + -0xc);
            }
            local_30[iVar14] = cVar5;
            uVar17 = uVar13 + 1;
            if (local_30 != &DAT_00972528) {
              local_30[-0xffffffff00000004] = '\0';
              local_30[-0xffffffff00000003] = '\0';
              local_30[-0xffffffff00000002] = '\0';
              local_30[-0xffffffff00000001] = '\0';
              *(uint *)(local_30 + -0xc) = uVar15;
              local_30[uVar15] = '\0';
            }
          }
          if (local_48 != (int *)0x0) {
            if ((uint)local_48[2] < (uint)local_48[3]) {
              local_48[2] = local_48[2] + 1;
            }
            else {
              (**(code **)(*local_48 + 0x28))();
            }
            local_44 = 0xffffffff;
            if (local_48 != (int *)0x0) goto LAB_007a0fc8;
          }
LAB_007a1078:
          iVar14 = 1;
          if (param_5 != (int *)0x0) goto LAB_007a0fda;
LAB_007a1080:
          uVar13 = uVar17;
          if (iVar14 == 1) break;
        } while( true );
      }
      bVar1 = true;
LAB_007a1088:
      uVar17 = uVar13;
      if (*(int *)(local_30 + -0xc) == 0) goto LAB_007a1092;
      break;
    default:
switchD_007a0f46_default:
      bVar1 = true;
    }
    local_7c = local_7c + 1;
    bVar8 = bVar1;
    if (3 < (int)local_7c) {
      bVar8 = false;
    }
  } while (bVar8);
  bVar19 = bVar1;
  if (local_60 < 2) {
    bVar19 = false;
  }
LAB_007a1136:
  if (bVar19) {
    if (bVar2) {
      pcVar16 = *(char **)(iVar12 + 0x24);
    }
    else {
      pcVar16 = *(char **)(iVar12 + 0x1c);
    }
    for (uVar13 = 1; (iVar6 = FUN_0079fc7c(&local_48,&param_5), iVar6 == 0 && (uVar13 < local_60));
        uVar13 = uVar13 + 1) {
      cVar5 = FUN_0079fc40(&local_48);
      pcVar16 = pcVar16 + 1;
      if (*pcVar16 != cVar5) goto LAB_007a1092;
      FUN_0079f30c(&local_48);
    }
    if (uVar13 == local_60) {
LAB_007a1162:
      if ((1 < *(uint *)(local_30 + -0xc)) && (iVar6 = FUN_007c55a4(&local_30,0x30,0), iVar6 != 0))
      {
        FUN_007c5b80(&local_30,0);
      }
      if (bVar2) {
        if (-1 < *(int *)(local_30 + -4)) {
          FUN_007c5a30(&local_30);
        }
        if (*local_30 != '0') {
          if (-1 < *(int *)(local_30 + -4)) {
            FUN_007c5a30(&local_30);
          }
          FUN_007c5bf4(&local_30,0,0,1,0x2d);
          local_30[-0xffffffff00000004] = -1;
          local_30[-0xffffffff00000003] = -1;
          local_30[-0xffffffff00000002] = -1;
          local_30[-0xffffffff00000001] = -1;
        }
      }
      if (*(int *)(local_34 + -0xc) != 0) {
        uVar13 = uVar17;
        if (bVar3) {
          uVar13 = local_5c;
        }
        FUN_007c640c(&local_34,uVar13 & 0xff);
        iVar6 = FUN_007c7b7c(*(undefined4 *)(iVar12 + 8),*(undefined4 *)(iVar12 + 0xc),&local_34);
        if (iVar6 == 0) {
          *param_8 = *param_8 | 4;
        }
      }
      if ((!bVar3) || (*(uint *)(iVar12 + 0x2c) == uVar17)) {
        FUN_007c52bc(param_9,&local_30);
        goto LAB_007a109c;
      }
    }
  }
  else if (bVar1) goto LAB_007a1162;
LAB_007a1092:
  *param_8 = *param_8 | 4;
LAB_007a109c:
  iVar6 = FUN_0079fc7c(&local_48,&param_5);
  if (iVar6 != 0) {
    *param_8 = *param_8 | 2;
  }
  *param_1 = local_48;
  param_1[1] = local_44;
  FUN_007c5900(local_30 + -0xc,auStack_38);
  FUN_007c5900(local_34 + -0xc,auStack_38);
  return param_1;
code_r0x007a151c:
  param_5 = (int *)0x0;
  iVar10 = 1;
  goto LAB_007a0fa0;
}

// ---- FUN_007a15f8  @ 0x7a15f8
/* WARNING: Restarted to delay deadcode elimination for space: stack */

undefined4 *
FUN_007a15f8(undefined4 *param_1,undefined4 param_2,int *param_3,uint param_4,int *param_5,
            uint param_6,int param_7,uint *param_8,undefined4 param_9)

{
  bool bVar1;
  bool bVar2;
  bool bVar3;
  byte bVar4;
  char cVar5;
  int iVar6;
  void *pvVar7;
  bool bVar8;
  undefined4 uVar9;
  int iVar10;
  int iVar11;
  int iVar12;
  uint uVar13;
  int iVar14;
  uint uVar15;
  char *pcVar16;
  uint uVar17;
  int iVar18;
  bool bVar19;
  uint local_7c;
  uint local_60;
  uint local_5c;
  int *local_48;
  uint local_44;
  undefined1 auStack_3c [4];
  undefined1 auStack_38 [4];
  undefined1 *local_34;
  char *local_30;
  char local_2c [8];
  
  iVar12 = param_7 + 0x6c;
  local_48 = param_3;
  local_44 = param_4;
  iVar6 = FUN_0079c760(iVar12);
  iVar12 = FUN_0079f334(auStack_3c,iVar12);
  if (*(int *)(iVar12 + 0x20) == 0) {
    bVar19 = false;
  }
  else {
    bVar19 = *(int *)(iVar12 + 0x28) != 0;
  }
  local_34 = &DAT_00972528;
  if (*(char *)(iVar12 + 0x10) != '\0') {
    FUN_007c60a0(&local_34,0x20);
  }
  local_30 = &DAT_00972528;
  FUN_007c60a0(&local_30,0x20);
  uVar9 = *(undefined4 *)(iVar12 + 0x34);
  uVar17 = 0;
  local_7c = 0;
  bVar3 = false;
  local_2c[3] = (char)((uint)uVar9 >> 0x18);
  local_2c[2] = (char)((uint)uVar9 >> 0x10);
  local_2c[0] = (char)uVar9;
  local_5c = 0;
  local_60 = 0;
  bVar2 = false;
LAB_007a16a6:
  do {
    switch(local_2c[local_7c]) {
    case '\0':
switchD_007a16b2_caseD_0:
      bVar1 = true;
      goto joined_r0x007a1892;
    case '\x01':
      iVar14 = FUN_0079fc7c(&local_48,&param_5);
      if ((iVar14 == 0) &&
         (bVar4 = FUN_0079fc40(&local_48),
         (int)((uint)*(byte *)(*(int *)(iVar6 + 0x18) + (uint)bVar4) << 0x1c) < 0)) {
        FUN_0079f30c(&local_48);
        goto switchD_007a16b2_caseD_0;
      }
      bVar1 = false;
joined_r0x007a1892:
      if (local_7c != 3) {
LAB_007a16e6:
        if (local_48 == (int *)0x0) goto LAB_007a1ace;
        if (local_44 != 0xffffffff) {
          iVar14 = 0;
          goto LAB_007a16f8;
        }
        if ((byte *)local_48[2] < (byte *)local_48[3]) {
          uVar13 = (uint)*(byte *)local_48[2];
        }
        else {
          uVar13 = (**(code **)(*local_48 + 0x24))();
          if (uVar13 == 0xffffffff) {
            local_48 = (int *)0x0;
            iVar14 = 1;
            goto LAB_007a16f8;
          }
        }
        iVar14 = 0;
        local_44 = uVar13;
        if (param_5 != (int *)0x0) goto LAB_007a1700;
LAB_007a1a24:
        iVar10 = 1;
LAB_007a170c:
        if (iVar10 != iVar14) {
          do {
            if (local_48 == (int *)0x0) {
              uVar13 = 0xff;
            }
            else if (local_44 == 0xffffffff) {
              if ((byte *)local_48[2] < (byte *)local_48[3]) {
                uVar15 = (uint)*(byte *)local_48[2];
              }
              else {
                uVar15 = (**(code **)(*local_48 + 0x24))();
                if (uVar15 == 0xffffffff) {
                  local_48 = (int *)0x0;
                  uVar13 = 0xff;
                  goto LAB_007a19e8;
                }
              }
              uVar13 = uVar15 & 0xff;
              local_44 = uVar15;
            }
            else {
              uVar13 = local_44 & 0xff;
            }
LAB_007a19e8:
            if (-1 < (int)((uint)*(byte *)(*(int *)(iVar6 + 0x18) + uVar13) << 0x1c)) break;
            if (local_48 != (int *)0x0) {
              if ((uint)local_48[2] < (uint)local_48[3]) {
                local_48[2] = local_48[2] + 1;
              }
              else {
                (**(code **)(*local_48 + 0x28))();
              }
              local_44 = 0xffffffff;
              goto LAB_007a16e6;
            }
LAB_007a1ace:
            iVar14 = 1;
LAB_007a16f8:
            if (param_5 == (int *)0x0) goto LAB_007a1a24;
LAB_007a1700:
            if (param_6 != 0xffffffff) {
              iVar10 = 0;
              goto LAB_007a170c;
            }
            if ((byte *)param_5[2] < (byte *)param_5[3]) {
              uVar13 = (uint)*(byte *)param_5[2];
            }
            else {
              uVar13 = (**(code **)(*param_5 + 0x24))();
              if (uVar13 == 0xffffffff) goto code_r0x007a1c88;
            }
            param_6 = uVar13;
            if (iVar14 == 0) break;
          } while( true );
        }
        break;
      }
      bVar19 = bVar1;
      if (local_60 < 2) {
        bVar19 = false;
      }
      goto LAB_007a18a2;
    case '\x02':
      if (-1 < *(int *)(param_7 + 0xc) << 0x16) {
        uVar13 = 1 - local_7c;
        if (1 < local_7c) {
          uVar13 = 0;
        }
        if (1 < local_60) {
          uVar13 = uVar13 | 1;
        }
        if (uVar13 == 0) {
          if (local_7c == 1) {
            if ((!bVar19) && (local_2c[0] != '\x03')) {
              if (local_2c[2] == '\x01') {
                iVar14 = *(int *)(iVar12 + 0x18);
                goto LAB_007a1ae2;
              }
              local_7c = 2;
              goto LAB_007a16a6;
            }
          }
          else {
            if (local_7c != 2) goto switchD_007a16b2_default;
            if ((local_2c[3] != '\x04') && ((!bVar19 || (local_2c[3] != '\x03')))) {
              local_7c = 3;
              goto LAB_007a16a6;
            }
          }
        }
      }
      iVar14 = *(int *)(iVar12 + 0x18);
LAB_007a1ae2:
      iVar10 = 0;
      if (local_48 == (int *)0x0) goto LAB_007a1b48;
LAB_007a1ae6:
      if (local_44 == 0xffffffff) {
        if ((byte *)local_48[2] < (byte *)local_48[3]) {
          uVar13 = (uint)*(byte *)local_48[2];
        }
        else {
          uVar13 = (**(code **)(*local_48 + 0x24))();
          if (uVar13 == 0xffffffff) {
            local_48 = (int *)0x0;
            iVar18 = 1;
            goto LAB_007a1af0;
          }
        }
        iVar18 = 0;
        local_44 = uVar13;
      }
      else {
        iVar18 = 0;
      }
LAB_007a1af0:
      if (param_5 == (int *)0x0) goto LAB_007a1b50;
      do {
        if (param_6 == 0xffffffff) {
          if ((byte *)param_5[2] < (byte *)param_5[3]) {
            uVar13 = (uint)*(byte *)param_5[2];
          }
          else {
            uVar13 = (**(code **)(*param_5 + 0x24))();
            if (uVar13 == 0xffffffff) {
              param_5 = (int *)0x0;
              iVar11 = 1;
              goto LAB_007a1b00;
            }
          }
          iVar11 = 0;
          param_6 = uVar13;
        }
        else {
          iVar11 = 0;
        }
LAB_007a1b00:
        if (iVar11 == iVar18) {
LAB_007a1b56:
          if (iVar10 == iVar14) goto switchD_007a16b2_default;
LAB_007a1b1c:
          if ((iVar10 != 0) || (*(int *)(param_7 + 0xc) << 0x16 < 0)) goto LAB_007a17fe;
          goto switchD_007a16b2_default;
        }
        while( true ) {
          if (iVar10 == iVar14) goto switchD_007a16b2_default;
          cVar5 = FUN_0079fc40(&local_48);
          if (*(char *)(*(int *)(iVar12 + 0x14) + iVar10) != cVar5) goto LAB_007a1b1c;
          if (local_48 != (int *)0x0) {
            if ((uint)local_48[2] < (uint)local_48[3]) {
              local_48[2] = local_48[2] + 1;
            }
            else {
              (**(code **)(*local_48 + 0x28))();
            }
            local_44 = 0xffffffff;
          }
          iVar10 = iVar10 + 1;
          if (local_48 != (int *)0x0) goto LAB_007a1ae6;
LAB_007a1b48:
          iVar18 = 1;
          if (param_5 != (int *)0x0) break;
LAB_007a1b50:
          if (iVar18 == 1) goto LAB_007a1b56;
        }
      } while( true );
    case '\x03':
      if (((*(int *)(iVar12 + 0x20) != 0) &&
          (iVar14 = FUN_0079fc7c(&local_48,&param_5), iVar14 == 0)) &&
         (cVar5 = FUN_0079fc40(&local_48), **(char **)(iVar12 + 0x1c) == cVar5)) {
        local_60 = *(uint *)(iVar12 + 0x20);
        FUN_0079f30c(&local_48);
        goto switchD_007a16b2_default;
      }
      if (((*(int *)(iVar12 + 0x28) == 0) ||
          (iVar14 = FUN_0079fc7c(&local_48,&param_5), iVar14 != 0)) ||
         (cVar5 = FUN_0079fc40(&local_48), **(char **)(iVar12 + 0x24) != cVar5)) {
        bVar1 = (bool)(bVar19 ^ 1);
        if ((*(int *)(iVar12 + 0x20) != 0) && (*(int *)(iVar12 + 0x28) == 0)) {
          bVar2 = true;
          bVar1 = true;
        }
      }
      else {
        local_60 = *(uint *)(iVar12 + 0x28);
        FUN_0079f30c(&local_48);
        bVar2 = true;
        bVar1 = true;
      }
      break;
    case '\x04':
      if (local_48 == (int *)0x0) goto LAB_007a17e4;
LAB_007a1734:
      if (local_44 == 0xffffffff) {
        if ((byte *)local_48[2] < (byte *)local_48[3]) {
          uVar13 = (uint)*(byte *)local_48[2];
        }
        else {
          uVar13 = (**(code **)(*local_48 + 0x24))();
          if (uVar13 == 0xffffffff) {
            local_48 = (int *)0x0;
            iVar14 = 1;
            goto LAB_007a1740;
          }
        }
        iVar14 = 0;
        local_44 = uVar13;
      }
      else {
        iVar14 = 0;
      }
LAB_007a1740:
      if (param_5 == (int *)0x0) goto LAB_007a17ec;
LAB_007a1746:
      if (param_6 == 0xffffffff) {
        if ((byte *)param_5[2] < (byte *)param_5[3]) {
          uVar13 = (uint)*(byte *)param_5[2];
        }
        else {
          uVar13 = (**(code **)(*param_5 + 0x24))();
          if (uVar13 == 0xffffffff) {
            param_5 = (int *)0x0;
            iVar10 = 1;
            goto LAB_007a1752;
          }
        }
        iVar10 = 0;
        param_6 = uVar13;
      }
      else {
        iVar10 = 0;
      }
LAB_007a1752:
      uVar13 = uVar17;
      if (iVar10 != iVar14) {
        do {
          if (local_48 == (int *)0x0) {
            uVar15 = 0xff;
LAB_007a176c:
            pvVar7 = memchr((void *)(iVar12 + 0x39),uVar15,10);
            if (pvVar7 != (void *)0x0) goto LAB_007a177a;
LAB_007a1a6c:
            uVar17 = 0;
            if ((*(byte *)(iVar12 + 0x11) != uVar15) || (bVar3)) {
              if ((*(char *)(iVar12 + 0x10) == '\0') ||
                 ((*(byte *)(iVar12 + 0x12) != uVar15 || (bVar3)))) break;
              if (uVar13 == 0) {
                bVar1 = false;
                goto LAB_007a17f4;
              }
              FUN_007c640c(&local_34,uVar13 & 0xff);
              uVar17 = 0;
            }
            else {
              if (*(int *)(iVar12 + 0x2c) < 1) break;
              bVar3 = true;
              local_5c = uVar13;
            }
          }
          else {
            if (local_44 != 0xffffffff) {
              uVar15 = local_44 & 0xff;
              goto LAB_007a176c;
            }
            if ((byte *)local_48[2] < (byte *)local_48[3]) {
              uVar17 = (uint)*(byte *)local_48[2];
            }
            else {
              uVar17 = (**(code **)(*local_48 + 0x24))();
              if (uVar17 == 0xffffffff) {
                local_48 = (int *)0x0;
                uVar15 = 0xff;
                goto LAB_007a176c;
              }
            }
            uVar15 = uVar17 & 0xff;
            local_44 = uVar17;
            pvVar7 = memchr((void *)(iVar12 + 0x39),uVar15,10);
            if (pvVar7 == (void *)0x0) goto LAB_007a1a6c;
LAB_007a177a:
            iVar14 = *(int *)(local_30 + -0xc);
            uVar15 = iVar14 + 1;
            cVar5 = *(char *)((int)pvVar7 + (DAT_0094f578 - (iVar12 + 0x38)));
            if ((*(uint *)(local_30 + -8) < uVar15) || (0 < *(int *)(local_30 + -4))) {
              FUN_007c60a0(&local_30,uVar15);
              iVar14 = *(int *)(local_30 + -0xc);
            }
            local_30[iVar14] = cVar5;
            uVar17 = uVar13 + 1;
            if (local_30 != &DAT_00972528) {
              local_30[-0xffffffff00000004] = '\0';
              local_30[-0xffffffff00000003] = '\0';
              local_30[-0xffffffff00000002] = '\0';
              local_30[-0xffffffff00000001] = '\0';
              *(uint *)(local_30 + -0xc) = uVar15;
              local_30[uVar15] = '\0';
            }
          }
          if (local_48 != (int *)0x0) {
            if ((uint)local_48[2] < (uint)local_48[3]) {
              local_48[2] = local_48[2] + 1;
            }
            else {
              (**(code **)(*local_48 + 0x28))();
            }
            local_44 = 0xffffffff;
            if (local_48 != (int *)0x0) goto LAB_007a1734;
          }
LAB_007a17e4:
          iVar14 = 1;
          if (param_5 != (int *)0x0) goto LAB_007a1746;
LAB_007a17ec:
          uVar13 = uVar17;
          if (iVar14 == 1) break;
        } while( true );
      }
      bVar1 = true;
LAB_007a17f4:
      uVar17 = uVar13;
      if (*(int *)(local_30 + -0xc) == 0) goto LAB_007a17fe;
      break;
    default:
switchD_007a16b2_default:
      bVar1 = true;
    }
    local_7c = local_7c + 1;
    bVar8 = bVar1;
    if (3 < (int)local_7c) {
      bVar8 = false;
    }
  } while (bVar8);
  bVar19 = bVar1;
  if (local_60 < 2) {
    bVar19 = false;
  }
LAB_007a18a2:
  if (bVar19) {
    if (bVar2) {
      pcVar16 = *(char **)(iVar12 + 0x24);
    }
    else {
      pcVar16 = *(char **)(iVar12 + 0x1c);
    }
    for (uVar13 = 1; (iVar6 = FUN_0079fc7c(&local_48,&param_5), iVar6 == 0 && (uVar13 < local_60));
        uVar13 = uVar13 + 1) {
      cVar5 = FUN_0079fc40(&local_48);
      pcVar16 = pcVar16 + 1;
      if (*pcVar16 != cVar5) goto LAB_007a17fe;
      FUN_0079f30c(&local_48);
    }
    if (uVar13 == local_60) {
LAB_007a18ce:
      if ((1 < *(uint *)(local_30 + -0xc)) && (iVar6 = FUN_007c55a4(&local_30,0x30,0), iVar6 != 0))
      {
        FUN_007c5b80(&local_30,0);
      }
      if (bVar2) {
        if (-1 < *(int *)(local_30 + -4)) {
          FUN_007c5a30(&local_30);
        }
        if (*local_30 != '0') {
          if (-1 < *(int *)(local_30 + -4)) {
            FUN_007c5a30(&local_30);
          }
          FUN_007c5bf4(&local_30,0,0,1,0x2d);
          local_30[-0xffffffff00000004] = -1;
          local_30[-0xffffffff00000003] = -1;
          local_30[-0xffffffff00000002] = -1;
          local_30[-0xffffffff00000001] = -1;
        }
      }
      if (*(int *)(local_34 + -0xc) != 0) {
        uVar13 = uVar17;
        if (bVar3) {
          uVar13 = local_5c;
        }
        FUN_007c640c(&local_34,uVar13 & 0xff);
        iVar6 = FUN_007c7b7c(*(undefined4 *)(iVar12 + 8),*(undefined4 *)(iVar12 + 0xc),&local_34);
        if (iVar6 == 0) {
          *param_8 = *param_8 | 4;
        }
      }
      if ((!bVar3) || (*(uint *)(iVar12 + 0x2c) == uVar17)) {
        FUN_007c52bc(param_9,&local_30);
        goto LAB_007a1808;
      }
    }
  }
  else if (bVar1) goto LAB_007a18ce;
LAB_007a17fe:
  *param_8 = *param_8 | 4;
LAB_007a1808:
  iVar6 = FUN_0079fc7c(&local_48,&param_5);
  if (iVar6 != 0) {
    *param_8 = *param_8 | 2;
  }
  *param_1 = local_48;
  param_1[1] = local_44;
  FUN_007c5900(local_30 + -0xc,auStack_38);
  FUN_007c5900(local_34 + -0xc,auStack_38);
  return param_1;
code_r0x007a1c88:
  param_5 = (int *)0x0;
  iVar10 = 1;
  goto LAB_007a170c;
}

// ---- FUN_007a1d64  @ 0x7a1d64
undefined4 *
FUN_007a1d64(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5,undefined4 param_6,char param_7,undefined4 param_8,
            _Ios_Iostate *param_9,longdouble *param_10)

{
  bool bVar1;
  char *pcVar2;
  int iVar3;
  int *piVar4;
  undefined4 local_38;
  undefined4 uStack_34;
  undefined4 local_30;
  undefined4 uStack_2c;
  char *local_28;
  int *local_24 [2];
  
  local_28 = &DAT_00972528;
  local_30 = param_3;
  uStack_2c = param_4;
  if (param_7 == '\0') {
    FUN_007a15f8(&local_38,param_2,param_3,param_4,param_5,param_6,param_8,param_9,&local_28);
  }
  else {
    FUN_007a0e8c();
  }
  pcVar2 = local_28;
  local_30 = local_38;
  uStack_2c = uStack_34;
  local_24[0] = (int *)FUN_007b0058();
  std::__convert_to_v<long_double>(pcVar2,param_10,param_9,local_24);
  *param_1 = local_30;
  param_1[1] = uStack_2c;
  if (local_28 + -0xc != (char *)&DAT_0097251c) {
    piVar4 = (int *)(local_28 + -4);
    DataMemoryBarrier(0x1f);
    do {
      ExclusiveAccess(piVar4);
      iVar3 = *piVar4;
      bVar1 = (bool)hasExclusiveAccess(piVar4);
    } while (!bVar1);
    *piVar4 = iVar3 + -1;
    DataMemoryBarrier(0x1f);
    if (iVar3 < 1) {
      operator_delete(local_28 + -0xc);
    }
  }
  return param_1;
}

// ---- FUN_007a1e2c  @ 0x7a1e2c
undefined4 *
FUN_007a1e2c(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5,undefined4 param_6,char param_7,int param_8,undefined4 param_9,
            int *param_10)

{
  bool bVar1;
  undefined1 *__src;
  int *piVar2;
  int iVar3;
  undefined1 *puVar4;
  void *__dest;
  undefined4 local_40;
  undefined4 uStack_3c;
  undefined4 local_38;
  undefined4 uStack_34;
  undefined1 *local_2c [2];
  
  local_38 = param_3;
  uStack_34 = param_4;
  piVar2 = (int *)FUN_0079c760(param_8 + 0x6c);
  local_2c[0] = &DAT_00972528;
  if (param_7 == '\0') {
    FUN_007a15f8(&local_40,param_2,local_38,uStack_34,param_5,param_6,param_8,param_9,local_2c);
  }
  else {
    FUN_007a0e8c(&local_40,param_2,local_38,uStack_34,param_5,param_6,param_8,param_9,local_2c);
  }
  iVar3 = *(int *)(local_2c[0] + -0xc);
  local_38 = local_40;
  uStack_34 = uStack_3c;
  if (iVar3 != 0) {
    FUN_007c63c4(param_10,iVar3,0);
    __src = local_2c[0];
    __dest = (void *)*param_10;
    puVar4 = local_2c[0] + iVar3;
    if (-1 < *(int *)((int)__dest + -4)) {
      FUN_007c5a30(param_10);
      __dest = (void *)*param_10;
    }
    if ((char)piVar2[7] == '\x01') {
      memcpy(__dest,__src,(int)puVar4 - (int)__src);
    }
    else {
      if ((char)piVar2[7] == '\0') {
        FUN_007af570(piVar2);
      }
      (**(code **)(*piVar2 + 0x1c))(piVar2,__src,puVar4,__dest);
    }
  }
  *param_1 = local_38;
  param_1[1] = uStack_34;
  if ((undefined4 *)(local_2c[0] + -0xc) != &DAT_0097251c) {
    piVar2 = (int *)(local_2c[0] + -4);
    DataMemoryBarrier(0x1f);
    do {
      ExclusiveAccess(piVar2);
      iVar3 = *piVar2;
      bVar1 = (bool)hasExclusiveAccess(piVar2);
    } while (!bVar1);
    *piVar2 = iVar3 + -1;
    DataMemoryBarrier(0x1f);
    if (iVar3 < 1) {
      operator_delete(local_2c[0] + -0xc);
    }
  }
  return param_1;
}

// ---- FUN_007a1f68  @ 0x7a1f68
undefined4 *
FUN_007a1f68(undefined4 *param_1,undefined4 param_2,int *param_3,uint param_4,int *param_5,
            uint param_6,int param_7,undefined4 *param_8,int *param_9)

{
  int *piVar1;
  byte bVar2;
  int iVar3;
  int iVar4;
  void *pvVar5;
  undefined4 uVar6;
  char cVar7;
  char cVar8;
  char cVar9;
  int iVar10;
  uint uVar11;
  undefined1 *puVar12;
  uint uVar13;
  uint uVar14;
  uint uVar15;
  bool bVar16;
  uint local_50;
  int *local_40;
  uint local_3c;
  undefined1 auStack_34 [4];
  undefined1 auStack_30 [4];
  undefined1 *local_2c [2];
  
  piVar1 = param_9;
  uVar11 = 0;
  local_40 = param_3;
  local_3c = param_4;
  iVar3 = FUN_0079f3dc(auStack_34,param_7 + 0x6c);
  iVar4 = FUN_0079fc7c(&local_40,&param_5);
  if (iVar4 == 0) {
    bVar2 = FUN_0079fc40(&local_40);
    uVar11 = (uint)bVar2;
    bVar16 = *(byte *)(iVar3 + 0x4b) == uVar11;
    if ((!bVar16) && (*(byte *)(iVar3 + 0x4a) != uVar11)) {
      cVar7 = *(char *)(iVar3 + 0x10);
LAB_007a239e:
      uVar14 = 0;
      uVar13 = 0;
      do {
        uVar15 = 0;
        if ((cVar7 != '\0') && (*(byte *)(iVar3 + 0x25) == uVar11)) goto LAB_007a2320;
        if ((*(byte *)(iVar3 + 0x24) == uVar11) ||
           (bVar2 = *(byte *)(iVar3 + 0x4e), bVar2 != uVar11)) goto LAB_007a1fa4;
        if (uVar13 == 0) {
          FUN_007c640c(piVar1,0x30);
        }
        uVar14 = uVar14 + 1;
        if (local_40 == (int *)0x0) {
LAB_007a2436:
          iVar4 = 1;
        }
        else {
          if ((uint)local_40[2] < (uint)local_40[3]) {
            local_40[2] = local_40[2] + 1;
          }
          else {
            (**(code **)(*local_40 + 0x28))();
            local_3c = 0xffffffff;
            if (local_40 == (int *)0x0) goto LAB_007a2436;
          }
          local_3c = 0xffffffff;
          if ((byte *)local_40[2] < (byte *)local_40[3]) {
            uVar11 = (uint)*(byte *)local_40[2];
          }
          else {
            uVar11 = (**(code **)(*local_40 + 0x24))();
            if (uVar11 == 0xffffffff) {
              local_40 = (int *)0x0;
              iVar4 = 1;
              goto LAB_007a23ec;
            }
          }
          iVar4 = 0;
          local_3c = uVar11;
        }
LAB_007a23ec:
        if (param_5 == (int *)0x0) {
          iVar10 = 1;
LAB_007a23fc:
          if (iVar4 == iVar10) goto LAB_007a2400;
        }
        else {
          if (param_6 != 0xffffffff) {
            iVar10 = 0;
            goto LAB_007a23fc;
          }
          if ((byte *)param_5[2] < (byte *)param_5[3]) {
            uVar11 = (uint)*(byte *)param_5[2];
          }
          else {
            uVar11 = (**(code **)(*param_5 + 0x24))();
            if (uVar11 == 0xffffffff) {
              param_5 = (int *)0x0;
              iVar10 = 1;
              goto LAB_007a23fc;
            }
          }
          param_6 = uVar11;
          if (iVar4 == 0) goto LAB_007a2400;
        }
        uVar13 = 1;
        bVar2 = FUN_0079fc40(&local_40);
        cVar7 = *(char *)(iVar3 + 0x10);
        uVar11 = (uint)bVar2;
      } while( true );
    }
    cVar7 = *(char *)(iVar3 + 0x10);
    if ((cVar7 != '\0') && (*(byte *)(iVar3 + 0x25) == uVar11)) {
      cVar7 = '\x01';
      goto LAB_007a239e;
    }
    if (*(byte *)(iVar3 + 0x24) == uVar11) goto LAB_007a239e;
    if (bVar16) {
      uVar6 = 0x2b;
    }
    else {
      uVar6 = 0x2d;
    }
    FUN_007c640c(piVar1,uVar6);
    uVar6 = FUN_0079f30c(&local_40);
    iVar4 = FUN_0079fc7c(uVar6,&param_5);
    if (iVar4 == 0) {
      bVar2 = FUN_0079fc40(&local_40);
      cVar7 = *(char *)(iVar3 + 0x10);
      uVar11 = (uint)bVar2;
      goto LAB_007a239e;
    }
  }
  cVar7 = *(char *)(iVar3 + 0x10);
  uVar14 = 0;
  uVar13 = 0;
  uVar15 = 1;
  goto LAB_007a1fa4;
LAB_007a2470:
  uVar15 = 1;
  goto LAB_007a2022;
LAB_007a2400:
  uVar15 = 1;
  uVar13 = 1;
  cVar7 = *(char *)(iVar3 + 0x10);
  uVar11 = (uint)bVar2;
LAB_007a1fa4:
  local_2c[0] = &DAT_00972528;
  if (cVar7 != '\0') {
LAB_007a2320:
    local_2c[0] = &DAT_00972528;
    FUN_007c60a0(local_2c,0x20);
  }
  cVar7 = *(char *)(iVar3 + 100);
  local_50 = uVar15;
  if (cVar7 == '\0') {
    if (uVar15 == 0) {
LAB_007a1fd2:
      if (9 < (uVar11 - 0x30 & 0xff)) goto LAB_007a20aa;
      do {
        FUN_007c640c(piVar1,uVar11);
        uVar13 = 1;
LAB_007a1fe6:
        if (local_40 == (int *)0x0) {
LAB_007a2080:
          iVar4 = 1;
        }
        else {
          if ((uint)local_40[2] < (uint)local_40[3]) {
            local_40[2] = local_40[2] + 1;
          }
          else {
            (**(code **)(*local_40 + 0x28))();
            local_3c = 0xffffffff;
            if (local_40 == (int *)0x0) goto LAB_007a2080;
          }
          local_3c = 0xffffffff;
          if ((byte *)local_40[2] < (byte *)local_40[3]) {
            uVar11 = (uint)*(byte *)local_40[2];
          }
          else {
            uVar11 = (**(code **)(*local_40 + 0x24))();
            if (uVar11 == 0xffffffff) {
              local_40 = (int *)0x0;
              iVar4 = 1;
              goto LAB_007a200c;
            }
          }
          iVar4 = 0;
          local_3c = uVar11;
        }
LAB_007a200c:
        if (param_5 == (int *)0x0) {
          iVar10 = 1;
LAB_007a201e:
          if (iVar10 == iVar4) goto LAB_007a2022;
        }
        else {
          if (param_6 != 0xffffffff) {
            iVar10 = 0;
            goto LAB_007a201e;
          }
          if ((byte *)param_5[2] < (byte *)param_5[3]) {
            uVar11 = (uint)*(byte *)param_5[2];
          }
          else {
            uVar11 = (**(code **)(*param_5 + 0x24))();
            if (uVar11 == 0xffffffff) {
              param_5 = (int *)0x0;
              iVar10 = 1;
              goto LAB_007a201e;
            }
          }
          param_6 = uVar11;
          if (iVar4 == 0) goto LAB_007a2022;
        }
        bVar2 = FUN_0079fc40(&local_40);
        uVar11 = (uint)bVar2;
      } while ((uVar11 - 0x30 & 0xff) < 10);
LAB_007a20aa:
      if ((*(byte *)(iVar3 + 0x24) == uVar11) && (((local_50 ^ 1) & (uVar15 ^ 1)) != 0)) {
        FUN_007c640c(piVar1,0x2e);
        uVar15 = 0;
        local_50 = 1;
      }
      else {
        if (((*(byte *)(iVar3 + 0x5c) != uVar11) && (*(byte *)(iVar3 + 0x62) != uVar11)) ||
           ((uVar13 & (uVar15 ^ 1)) == 0)) goto LAB_007a2022;
        FUN_007c640c(piVar1,0x65);
        if (local_40 != (int *)0x0) {
          if ((uint)local_40[2] < (uint)local_40[3]) {
            local_40[2] = local_40[2] + 1;
          }
          else {
            (**(code **)(*local_40 + 0x28))();
          }
          local_3c = 0xffffffff;
        }
        iVar4 = FUN_0079fc7c(&local_40,&param_5);
        if (iVar4 != 0) goto LAB_007a2470;
        bVar2 = FUN_0079fc40(&local_40);
        uVar11 = (uint)bVar2;
        if (*(byte *)(iVar3 + 0x4b) == uVar11) {
          uVar6 = 0x2b;
        }
        else {
          if (*(byte *)(iVar3 + 0x4a) != uVar11) {
            uVar15 = 1;
            uVar13 = 1;
            goto LAB_007a1fd2;
          }
          uVar6 = 0x2d;
        }
        FUN_007c640c(piVar1,uVar6);
        uVar15 = 1;
        uVar13 = 1;
      }
      goto LAB_007a1fe6;
    }
  }
  else if (uVar15 == 0) {
    cVar8 = *(char *)(iVar3 + 0x10);
LAB_007a2164:
    do {
      if (cVar8 == '\0') goto LAB_007a2170;
      while (*(byte *)(iVar3 + 0x25) != uVar11) {
LAB_007a2170:
        if (*(byte *)(iVar3 + 0x24) == uVar11) {
          if (((uVar15 ^ 1) & (local_50 ^ 1)) == 0) goto LAB_007a2022;
          if (*(int *)(local_2c[0] + -0xc) != 0) {
            FUN_007c640c(local_2c,uVar14 & 0xff);
          }
          FUN_007c640c(piVar1,0x2e);
          local_50 = 1;
          uVar15 = 0;
          goto LAB_007a2198;
        }
        pvVar5 = memchr((void *)(iVar3 + 0x4e),uVar11,10);
        if (pvVar5 != (void *)0x0) {
          FUN_007c640c(piVar1,(int)pvVar5 + (0x30 - (iVar3 + 0x4e)) & 0xff);
          uVar14 = uVar14 + 1;
          uVar13 = 1;
          goto LAB_007a2198;
        }
        if (((*(byte *)(iVar3 + 0x5c) != uVar11) && (*(byte *)(iVar3 + 0x62) != uVar11)) ||
           ((uVar13 & (uVar15 ^ 1)) == 0)) goto LAB_007a2022;
        if ((*(int *)(local_2c[0] + -0xc) != 0) && (local_50 == 0)) {
          FUN_007c640c(local_2c,uVar14 & 0xff);
        }
        FUN_007c640c(piVar1,0x65);
        uVar6 = FUN_0079f30c(&local_40);
        iVar4 = FUN_0079fc7c(uVar6,&param_5);
        if (iVar4 != 0) goto LAB_007a2470;
        bVar2 = FUN_0079fc40(&local_40);
        uVar11 = (uint)bVar2;
        bVar16 = *(byte *)(iVar3 + 0x4b) == uVar11;
        if ((!bVar16) && (*(byte *)(iVar3 + 0x4a) != uVar11)) {
          uVar15 = 1;
          uVar13 = 1;
          cVar8 = *(char *)(iVar3 + 0x10);
          goto LAB_007a2164;
        }
        cVar8 = *(char *)(iVar3 + 0x10);
        if ((cVar8 == '\0') || (*(byte *)(iVar3 + 0x25) != uVar11)) {
          if (*(byte *)(iVar3 + 0x24) == uVar11) {
            uVar15 = 1;
            uVar13 = 1;
            goto LAB_007a2164;
          }
          if (bVar16) {
            uVar6 = 0x2b;
          }
          else {
            uVar6 = 0x2d;
          }
          FUN_007c640c(piVar1,uVar6);
          uVar13 = 1;
          uVar15 = 1;
          goto LAB_007a2198;
        }
        uVar15 = 1;
        uVar13 = 1;
      }
      if (((uVar15 ^ 1) & (local_50 ^ 1)) == 0) goto LAB_007a2022;
      if (uVar14 == 0) {
        FUN_007c5938(piVar1,0,*(undefined4 *)(*piVar1 + -0xc),0);
        break;
      }
      FUN_007c640c(local_2c,uVar14 & 0xff);
      uVar14 = 0;
      local_50 = 0;
      uVar15 = uVar14;
LAB_007a2198:
      cVar8 = cVar7;
      if (local_40 != (int *)0x0) {
        if ((uint)local_40[2] < (uint)local_40[3]) {
          local_40[2] = local_40[2] + 1;
        }
        else {
          (**(code **)(*local_40 + 0x28))();
          local_3c = 0xffffffff;
          if (local_40 == (int *)0x0) goto LAB_007a21c0;
        }
        local_3c = 0xffffffff;
        if ((byte *)local_40[2] < (byte *)local_40[3]) {
          uVar11 = (uint)*(byte *)local_40[2];
        }
        else {
          uVar11 = (**(code **)(*local_40 + 0x24))();
          if (uVar11 == 0xffffffff) {
            local_40 = (int *)0x0;
            goto LAB_007a21c0;
          }
        }
        local_3c = uVar11;
        cVar8 = '\0';
      }
LAB_007a21c0:
      cVar9 = cVar7;
      if (param_5 != (int *)0x0) {
        if (param_6 == 0xffffffff) {
          if ((byte *)param_5[2] < (byte *)param_5[3]) {
            uVar11 = (uint)*(byte *)param_5[2];
          }
          else {
            uVar11 = (**(code **)(*param_5 + 0x24))();
            if (uVar11 == 0xffffffff) {
              param_5 = (int *)0x0;
              goto LAB_007a21d2;
            }
          }
          param_6 = uVar11;
          cVar9 = '\0';
        }
        else {
          cVar9 = '\0';
        }
      }
LAB_007a21d2:
      if (cVar9 == cVar8) goto LAB_007a2022;
      bVar2 = FUN_0079fc40(&local_40);
      uVar11 = (uint)bVar2;
      cVar8 = *(char *)(iVar3 + 0x10);
    } while( true );
  }
  uVar15 = 0;
  local_50 = 0;
LAB_007a2022:
  puVar12 = local_2c[0];
  if (*(int *)(local_2c[0] + -0xc) != 0) {
    if (((uVar15 ^ 1) & (local_50 ^ 1)) != 0) {
      FUN_007c640c(local_2c,uVar14 & 0xff);
    }
    puVar12 = local_2c[0];
    iVar3 = FUN_007c7b7c(*(undefined4 *)(iVar3 + 8),*(undefined4 *)(iVar3 + 0xc),local_2c);
    if (iVar3 == 0) {
      *param_8 = 4;
    }
  }
  *param_1 = local_40;
  param_1[1] = local_3c;
  FUN_007c5900(puVar12 + -0xc,auStack_30);
  return param_1;
}

// ---- FUN_007a2520  @ 0x7a2520
undefined4 *
FUN_007a2520(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
            int *param_5,int param_6,undefined4 param_7,_Ios_Iostate *param_8,float *param_9)

{
  char *pcVar1;
  int iVar2;
  int *piVar3;
  uint uVar4;
  uint uVar5;
  bool bVar6;
  int *local_40;
  uint uStack_3c;
  int *local_38;
  uint local_34;
  char *local_30;
  int *local_2c [2];
  
  local_30 = &DAT_00972528;
  local_38 = (int *)param_3;
  local_34 = param_4;
  FUN_007c60a0(&local_30,0x20);
  FUN_007a1f68(&local_40,param_2,local_38,local_34,param_5,param_6,param_7,param_8,&local_30);
  pcVar1 = local_30;
  local_38 = local_40;
  local_34 = uStack_3c;
  local_2c[0] = (int *)FUN_007b0058();
  std::__convert_to_v<float>(pcVar1,param_9,param_8,local_2c);
  if (local_38 == (int *)0x0) {
    uVar5 = 1;
  }
  else if (local_34 == 0xffffffff) {
    if ((byte *)local_38[2] < (byte *)local_38[3]) {
      uVar4 = (uint)*(byte *)local_38[2];
    }
    else {
      uVar4 = (**(code **)(*local_38 + 0x24))();
      if (uVar4 == 0xffffffff) {
        uVar5 = 1;
        local_38 = (int *)0x0;
        goto LAB_007a25ae;
      }
    }
    uVar5 = 0;
    local_34 = uVar4;
  }
  else {
    uVar5 = 0;
  }
LAB_007a25ae:
  if ((param_5 == (int *)0x0) ||
     (((param_6 == -1 && ((uint)param_5[3] <= (uint)param_5[2])) &&
      (iVar2 = (**(code **)(*param_5 + 0x24))(), iVar2 == -1)))) {
    uVar4 = 1;
  }
  else {
    uVar4 = 0;
  }
  bVar6 = uVar4 == uVar5;
  if (bVar6) {
    uVar4 = *(uint *)param_8 | 2;
  }
  *param_1 = local_38;
  param_1[1] = local_34;
  if (bVar6) {
    *(uint *)param_8 = uVar4;
  }
  if (local_30 + -0xc != (char *)&DAT_0097251c) {
    piVar3 = (int *)(local_30 + -4);
    DataMemoryBarrier(0x1f);
    do {
      ExclusiveAccess(piVar3);
      iVar2 = *piVar3;
      bVar6 = (bool)hasExclusiveAccess(piVar3);
    } while (!bVar6);
    *piVar3 = iVar2 + -1;
    DataMemoryBarrier(0x1f);
    if (iVar2 < 1) {
      operator_delete(local_30 + -0xc);
    }
  }
  return param_1;
}

// ---- FUN_007a2660  @ 0x7a2660
undefined4 *
FUN_007a2660(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
            int *param_5,int param_6,undefined4 param_7,_Ios_Iostate *param_8,double *param_9)

{
  char *pcVar1;
  int iVar2;
  int *piVar3;
  uint uVar4;
  uint uVar5;
  bool bVar6;
  int *local_40;
  uint uStack_3c;
  int *local_38;
  uint local_34;
  char *local_30;
  int *local_2c [2];
  
  local_30 = &DAT_00972528;
  local_38 = (int *)param_3;
  local_34 = param_4;
  FUN_007c60a0(&local_30,0x20);
  FUN_007a1f68(&local_40,param_2,local_38,local_34,param_5,param_6,param_7,param_8,&local_30);
  pcVar1 = local_30;
  local_38 = local_40;
  local_34 = uStack_3c;
  local_2c[0] = (int *)FUN_007b0058();
  std::__convert_to_v<double>(pcVar1,param_9,param_8,local_2c);
  if (local_38 == (int *)0x0) {
    uVar5 = 1;
  }
  else if (local_34 == 0xffffffff) {
    if ((byte *)local_38[2] < (byte *)local_38[3]) {
      uVar4 = (uint)*(byte *)local_38[2];
    }
    else {
      uVar4 = (**(code **)(*local_38 + 0x24))();
      if (uVar4 == 0xffffffff) {
        uVar5 = 1;
        local_38 = (int *)0x0;
        goto LAB_007a26ee;
      }
    }
    uVar5 = 0;
    local_34 = uVar4;
  }
  else {
    uVar5 = 0;
  }
LAB_007a26ee:
  if ((param_5 == (int *)0x0) ||
     (((param_6 == -1 && ((uint)param_5[3] <= (uint)param_5[2])) &&
      (iVar2 = (**(code **)(*param_5 + 0x24))(), iVar2 == -1)))) {
    uVar4 = 1;
  }
  else {
    uVar4 = 0;
  }
  bVar6 = uVar4 == uVar5;
  if (bVar6) {
    uVar4 = *(uint *)param_8 | 2;
  }
  *param_1 = local_38;
  param_1[1] = local_34;
  if (bVar6) {
    *(uint *)param_8 = uVar4;
  }
  if (local_30 + -0xc != (char *)&DAT_0097251c) {
    piVar3 = (int *)(local_30 + -4);
    DataMemoryBarrier(0x1f);
    do {
      ExclusiveAccess(piVar3);
      iVar2 = *piVar3;
      bVar6 = (bool)hasExclusiveAccess(piVar3);
    } while (!bVar6);
    *piVar3 = iVar2 + -1;
    DataMemoryBarrier(0x1f);
    if (iVar2 < 1) {
      operator_delete(local_30 + -0xc);
    }
  }
  return param_1;
}

// ---- FUN_007a27a0  @ 0x7a27a0
undefined4 *
FUN_007a27a0(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
            int *param_5,int param_6,undefined4 param_7,_Ios_Iostate *param_8,longdouble *param_9)

{
  char *pcVar1;
  int iVar2;
  int *piVar3;
  uint uVar4;
  uint uVar5;
  bool bVar6;
  int *local_40;
  uint uStack_3c;
  int *local_38;
  uint local_34;
  char *local_30;
  int *local_2c [2];
  
  local_30 = &DAT_00972528;
  local_38 = (int *)param_3;
  local_34 = param_4;
  FUN_007c60a0(&local_30,0x20);
  FUN_007a1f68(&local_40,param_2,local_38,local_34,param_5,param_6,param_7,param_8,&local_30);
  pcVar1 = local_30;
  local_38 = local_40;
  local_34 = uStack_3c;
  local_2c[0] = (int *)FUN_007b0058();
  std::__convert_to_v<long_double>(pcVar1,param_9,param_8,local_2c);
  if (local_38 == (int *)0x0) {
    uVar5 = 1;
  }
  else if (local_34 == 0xffffffff) {
    if ((byte *)local_38[2] < (byte *)local_38[3]) {
      uVar4 = (uint)*(byte *)local_38[2];
    }
    else {
      uVar4 = (**(code **)(*local_38 + 0x24))();
      if (uVar4 == 0xffffffff) {
        uVar5 = 1;
        local_38 = (int *)0x0;
        goto LAB_007a282e;
      }
    }
    uVar5 = 0;
    local_34 = uVar4;
  }
  else {
    uVar5 = 0;
  }
LAB_007a282e:
  if ((param_5 == (int *)0x0) ||
     (((param_6 == -1 && ((uint)param_5[3] <= (uint)param_5[2])) &&
      (iVar2 = (**(code **)(*param_5 + 0x24))(), iVar2 == -1)))) {
    uVar4 = 1;
  }
  else {
    uVar4 = 0;
  }
  bVar6 = uVar4 == uVar5;
  if (bVar6) {
    uVar4 = *(uint *)param_8 | 2;
  }
  *param_1 = local_38;
  param_1[1] = local_34;
  if (bVar6) {
    *(uint *)param_8 = uVar4;
  }
  if (local_30 + -0xc != (char *)&DAT_0097251c) {
    piVar3 = (int *)(local_30 + -4);
    DataMemoryBarrier(0x1f);
    do {
      ExclusiveAccess(piVar3);
      iVar2 = *piVar3;
      bVar6 = (bool)hasExclusiveAccess(piVar3);
    } while (!bVar6);
    *piVar3 = iVar2 + -1;
    DataMemoryBarrier(0x1f);
    if (iVar2 < 1) {
      operator_delete(local_30 + -0xc);
    }
  }
  return param_1;
}

// ---- FUN_007a28e0  @ 0x7a28e0
/* WARNING: Restarted to delay deadcode elimination for space: stack */

undefined4 *
FUN_007a28e0(undefined4 *param_1,undefined4 param_2,int *param_3,uint param_4,int *param_5,
            uint param_6,int param_7,uint *param_8,uint *param_9)

{
  bool bVar1;
  byte bVar2;
  int iVar3;
  int iVar4;
  undefined4 uVar5;
  uint uVar6;
  void *pvVar7;
  bool bVar8;
  char cVar9;
  char cVar10;
  int iVar11;
  char cVar12;
  uint uVar13;
  uint uVar14;
  int iVar15;
  uint uVar16;
  uint uVar17;
  uint uVar18;
  uint __n;
  bool bVar19;
  uint local_68;
  uint local_5c;
  int *local_40;
  uint local_3c;
  undefined1 auStack_34 [4];
  undefined1 auStack_30 [4];
  undefined1 *local_2c [2];
  
  iVar4 = param_7;
  local_40 = param_3;
  local_3c = param_4;
  iVar3 = FUN_0079f3dc(auStack_34,param_7 + 0x6c);
  uVar17 = *(uint *)(iVar4 + 0xc) & 0x4a;
  if (uVar17 == 0x40) {
    local_5c = 8;
  }
  else if (uVar17 == 8) {
    local_5c = 0x10;
  }
  else {
    local_5c = 10;
  }
  iVar4 = FUN_0079fc7c(&local_40,&param_5);
  if (iVar4 == 0) {
    bVar2 = FUN_0079fc40(&local_40);
    uVar13 = (uint)bVar2;
    bVar19 = *(byte *)(iVar3 + 0x4a) == uVar13;
    if ((!bVar19) && (*(byte *)(iVar3 + 0x4b) != uVar13)) {
      cVar10 = *(char *)(iVar3 + 0x10);
LAB_007a2c4c:
      local_68 = 0;
      bVar8 = false;
      __n = local_5c;
      do {
        uVar16 = 0;
        local_5c = __n;
        if (((cVar10 != '\0') && (*(byte *)(iVar3 + 0x25) == uVar13)) ||
           (*(byte *)(iVar3 + 0x24) == uVar13)) goto joined_r0x007a2cdc;
        if (*(byte *)(iVar3 + 0x4e) == uVar13) {
          bVar8 = (bool)(bVar8 ^ 1);
          if (__n == 10) {
            bVar8 = true;
          }
          if (!bVar8) goto LAB_007a2c86;
          if (uVar17 == 0) {
            bVar8 = true;
            __n = 8;
            local_68 = uVar17;
          }
          else if (__n == 8) {
            bVar8 = true;
            local_68 = 0;
          }
          else {
            bVar8 = true;
            local_68 = local_68 + 1;
          }
        }
        else {
          if (!bVar8) goto joined_r0x007a2cdc;
LAB_007a2c86:
          if ((*(byte *)(iVar3 + 0x4c) != uVar13) && (*(byte *)(iVar3 + 0x4d) != uVar13)) {
            bVar8 = true;
            goto joined_r0x007a2cdc;
          }
          if (uVar17 == 0) {
            __n = 0x10;
            bVar8 = false;
            local_68 = uVar17;
          }
          else {
            if (__n != 0x10) {
              bVar8 = true;
              goto LAB_007a297c;
            }
            bVar8 = false;
            local_68 = 0;
          }
        }
        if (local_40 != (int *)0x0) {
          if ((uint)local_40[2] < (uint)local_40[3]) {
            local_40[2] = local_40[2] + 1;
          }
          else {
            (**(code **)(*local_40 + 0x28))();
          }
          local_3c = 0xffffffff;
        }
        iVar4 = FUN_0079fc7c(&local_40,&param_5);
        local_5c = __n;
        if (iVar4 != 0) {
          uVar16 = 1;
          cVar10 = *(char *)(iVar3 + 0x10);
          goto joined_r0x007a2cdc;
        }
        uVar13 = FUN_0079fc40(&local_40);
        uVar13 = uVar13 & 0xff;
        if (!bVar8) goto LAB_007a2dc8;
        cVar10 = *(char *)(iVar3 + 0x10);
      } while( true );
    }
    cVar10 = *(char *)(iVar3 + 0x10);
    if ((cVar10 != '\0') && (*(byte *)(iVar3 + 0x25) == uVar13)) {
      cVar10 = '\x01';
      goto LAB_007a2c4c;
    }
    if (*(byte *)(iVar3 + 0x24) == uVar13) goto LAB_007a2c4c;
    uVar5 = FUN_0079f30c(&local_40);
    iVar4 = FUN_0079fc7c(uVar5,&param_5);
    if (iVar4 == 0) {
      bVar2 = FUN_0079fc40(&local_40);
      cVar10 = *(char *)(iVar3 + 0x10);
      uVar13 = (uint)bVar2;
      goto LAB_007a2c4c;
    }
  }
  else {
    uVar13 = 0;
    bVar19 = false;
  }
  cVar10 = *(char *)(iVar3 + 0x10);
  local_68 = 0;
  bVar8 = false;
  uVar16 = 1;
joined_r0x007a2cdc:
  __n = local_5c;
  if (local_5c == 0x10) {
    __n = 0x16;
  }
LAB_007a297c:
  local_2c[0] = &DAT_00972528;
  if (cVar10 != '\0') {
    FUN_007c60a0(local_2c,0x20);
  }
  if (bVar19) {
    iVar4 = -0x80000000;
  }
  else {
    iVar4 = 0x7fffffff;
  }
  uVar6 = __udivsi3(iVar4,local_5c);
  cVar10 = *(char *)(iVar3 + 100);
  uVar17 = uVar16;
  uVar18 = uVar16;
  if (cVar10 == '\0') {
    if (uVar16 == 0) {
      do {
        if (__n < 0xb) {
          if ((uVar13 < 0x30) || (__n + 0x30 <= uVar13)) goto LAB_007a2b20;
          uVar14 = uVar13 - 0x30;
        }
        else {
          uVar14 = uVar13 - 0x30;
          if (9 < (uVar14 & 0xff)) {
            if (uVar13 - 0x61 < 6) {
              uVar14 = uVar13 - 0x57;
            }
            else {
              if (5 < uVar13 - 0x41) goto LAB_007a2b20;
              uVar14 = uVar13 - 0x37;
            }
          }
        }
        if (uVar6 < uVar17) {
          uVar18 = 1;
        }
        else {
          local_68 = local_68 + 1;
          if (iVar4 - uVar14 < local_5c * uVar17) {
            uVar18 = 1;
          }
          uVar17 = local_5c * uVar17 + uVar14;
        }
        if (local_40 == (int *)0x0) {
LAB_007a2ad4:
          iVar15 = 1;
        }
        else {
          if ((uint)local_40[2] < (uint)local_40[3]) {
            local_40[2] = local_40[2] + 1;
          }
          else {
            (**(code **)(*local_40 + 0x28))();
            local_3c = 0xffffffff;
            if (local_40 == (int *)0x0) goto LAB_007a2ad4;
          }
          local_3c = 0xffffffff;
          if ((byte *)local_40[2] < (byte *)local_40[3]) {
            uVar13 = (uint)*(byte *)local_40[2];
          }
          else {
            uVar13 = (**(code **)(*local_40 + 0x24))();
            if (uVar13 == 0xffffffff) {
              local_40 = (int *)0x0;
              iVar15 = 1;
              goto LAB_007a2a2e;
            }
          }
          iVar15 = 0;
          local_3c = uVar13;
        }
LAB_007a2a2e:
        if (param_5 == (int *)0x0) {
          iVar11 = 1;
LAB_007a2a40:
          if (iVar11 == iVar15) goto LAB_007a2a44;
        }
        else {
          if (param_6 != 0xffffffff) {
            iVar11 = 0;
            goto LAB_007a2a40;
          }
          if ((byte *)param_5[2] < (byte *)param_5[3]) {
            uVar13 = (uint)*(byte *)param_5[2];
          }
          else {
            uVar13 = (**(code **)(*param_5 + 0x24))();
            if (uVar13 == 0xffffffff) {
              param_5 = (int *)0x0;
              iVar11 = 1;
              goto LAB_007a2a40;
            }
          }
          param_6 = uVar13;
          if (iVar15 == 0) goto LAB_007a2a44;
        }
        bVar2 = FUN_0079fc40(&local_40);
        uVar13 = (uint)bVar2;
      } while( true );
    }
    bVar1 = false;
    uVar17 = 0;
    uVar18 = 0;
  }
  else {
    if (uVar16 == 0) {
      do {
        if ((*(char *)(iVar3 + 0x10) == '\0') || (*(byte *)(iVar3 + 0x25) != uVar13)) {
          if ((*(byte *)(iVar3 + 0x24) == uVar13) ||
             (pvVar7 = memchr((void *)(iVar3 + 0x4e),uVar13,__n), pvVar7 == (void *)0x0))
          goto LAB_007a2b20;
          iVar15 = (int)pvVar7 - (iVar3 + 0x4e);
          if (0xf < iVar15) {
            iVar15 = iVar15 + -6;
          }
          if (uVar6 < uVar17) {
            uVar18 = 1;
          }
          else {
            local_68 = local_68 + 1;
            if ((uint)(iVar4 - iVar15) < local_5c * uVar17) {
              uVar18 = 1;
            }
            uVar17 = local_5c * uVar17 + iVar15;
          }
        }
        else {
          if (local_68 == 0) {
            bVar1 = true;
            goto LAB_007a2a48;
          }
          FUN_007c640c(local_2c,local_68 & 0xff);
          local_68 = 0;
        }
        cVar12 = cVar10;
        if (local_40 != (int *)0x0) {
          if ((uint)local_40[2] < (uint)local_40[3]) {
            local_40[2] = local_40[2] + 1;
          }
          else {
            (**(code **)(*local_40 + 0x28))();
            local_3c = 0xffffffff;
            if (local_40 == (int *)0x0) goto LAB_007a2be0;
          }
          local_3c = 0xffffffff;
          if ((byte *)local_40[2] < (byte *)local_40[3]) {
            uVar13 = (uint)*(byte *)local_40[2];
          }
          else {
            uVar13 = (**(code **)(*local_40 + 0x24))();
            if (uVar13 == 0xffffffff) {
              local_40 = (int *)0x0;
              goto LAB_007a2be0;
            }
          }
          local_3c = uVar13;
          cVar12 = '\0';
        }
LAB_007a2be0:
        cVar9 = cVar10;
        if (param_5 != (int *)0x0) {
          if (param_6 == 0xffffffff) {
            if ((byte *)param_5[2] < (byte *)param_5[3]) {
              uVar13 = (uint)*(byte *)param_5[2];
            }
            else {
              uVar13 = (**(code **)(*param_5 + 0x24))();
              if (uVar13 == 0xffffffff) {
                param_5 = (int *)0x0;
                goto LAB_007a2bf2;
              }
            }
            param_6 = uVar13;
            cVar9 = '\0';
          }
          else {
            cVar9 = '\0';
          }
        }
LAB_007a2bf2:
        if (cVar9 == cVar12) goto LAB_007a2a44;
        bVar2 = FUN_0079fc40(&local_40);
        uVar13 = (uint)bVar2;
      } while( true );
    }
    uVar17 = 0;
    uVar18 = 0;
    bVar1 = false;
  }
LAB_007a2a48:
  if (*(int *)(local_2c[0] + -0xc) != 0) {
LAB_007a2b2c:
    FUN_007c640c(local_2c,local_68 & 0xff);
    iVar4 = FUN_007c7b7c(*(undefined4 *)(iVar3 + 8),*(undefined4 *)(iVar3 + 0xc),local_2c);
    if (iVar4 == 0) {
      *param_8 = 4;
    }
  }
LAB_007a2a52:
  bVar8 = (bool)(bVar8 ^ 1);
  if (local_68 != 0) {
    bVar8 = false;
  }
  if (((bVar8) && (*(int *)(local_2c[0] + -0xc) == 0)) || (bVar1)) {
    *param_9 = 0;
    *param_8 = 4;
  }
  else if (uVar18 == 0) {
    if (bVar19) {
      uVar17 = -uVar17;
    }
    *param_9 = uVar17;
  }
  else {
    if (bVar19) {
      *param_9 = 0x80000000;
    }
    else {
      *param_9 = 0x7fffffff;
    }
    *param_8 = 4;
  }
  if (uVar16 != 0) {
    *param_8 = *param_8 | 2;
  }
  *param_1 = local_40;
  param_1[1] = local_3c;
  FUN_007c5900(local_2c[0] + -0xc,auStack_30);
  return param_1;
LAB_007a2dc8:
  cVar10 = *(char *)(iVar3 + 0x10);
  goto joined_r0x007a2cdc;
LAB_007a2b20:
  bVar1 = false;
  if (*(int *)(local_2c[0] + -0xc) == 0) goto LAB_007a2a52;
  goto LAB_007a2b2c;
LAB_007a2a44:
  bVar1 = false;
  uVar16 = 1;
  goto LAB_007a2a48;
}

// ---- FUN_007a2e48  @ 0x7a2e48
undefined4
FUN_007a2e48(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5,undefined4 param_6,undefined4 param_7,undefined4 param_8,
            undefined4 param_9)

{
  FUN_007a28e0(param_1,param_2,param_3,param_4,param_5,param_6,param_7,param_8,param_9);
  return param_1;
}

// ---- FUN_007a2e84  @ 0x7a2e84
undefined4 *
FUN_007a2e84(undefined4 *param_1,undefined4 param_2,int *param_3,uint param_4,int *param_5,
            uint param_6,int param_7,uint *param_8,byte *param_9)

{
  int iVar1;
  uint uVar2;
  uint uVar3;
  uint uVar4;
  byte bVar5;
  byte bVar6;
  bool bVar7;
  bool bVar8;
  bool bVar9;
  bool bVar10;
  int *local_40;
  uint uStack_3c;
  int *local_38;
  uint local_34;
  uint local_2c [2];
  
  local_38 = param_3;
  local_34 = param_4;
  if (*(int *)(param_7 + 0xc) << 0x1f < 0) {
    iVar1 = FUN_0079f3dc(local_2c,param_7 + 0x6c);
    uVar4 = 0;
    bVar9 = true;
    bVar10 = true;
    bVar7 = *(int *)(iVar1 + 0x20) == 0;
    bVar8 = *(int *)(iVar1 + 0x18) == 0;
LAB_007a2f24:
    bVar5 = bVar8 ^ 1U | bVar7 ^ 1U;
    if (bVar5 != 0) {
      do {
        bVar6 = bVar5;
        if (local_38 != (int *)0x0) {
          if (local_34 == 0xffffffff) {
            if ((byte *)local_38[2] < (byte *)local_38[3]) {
              uVar3 = (uint)*(byte *)local_38[2];
            }
            else {
              uVar3 = (**(code **)(*local_38 + 0x24))();
              if (uVar3 == 0xffffffff) {
                local_38 = (int *)0x0;
                goto LAB_007a2f44;
              }
            }
            local_34 = uVar3;
            bVar6 = 0;
          }
          else {
            bVar6 = 0;
          }
        }
LAB_007a2f44:
        if (param_5 == (int *)0x0) {
LAB_007a2f52:
          if (bVar6 == bVar5) {
LAB_007a304a:
            bVar7 = true;
            goto LAB_007a2fe8;
          }
        }
        else {
          if (param_6 != 0xffffffff) {
            bVar5 = 0;
            goto LAB_007a2f52;
          }
          if ((byte *)param_5[2] < (byte *)param_5[3]) {
            uVar3 = (uint)*(byte *)param_5[2];
          }
          else {
            uVar3 = (**(code **)(*param_5 + 0x24))();
            if (uVar3 == 0xffffffff) {
              param_5 = (int *)0x0;
              goto LAB_007a2f52;
            }
          }
          param_6 = uVar3;
          if (bVar6 == 0) goto LAB_007a304a;
        }
        if (local_38 == (int *)0x0) {
          uVar3 = 0xff;
        }
        else if (local_34 == 0xffffffff) {
          if ((byte *)local_38[2] < (byte *)local_38[3]) {
            uVar2 = (uint)*(byte *)local_38[2];
          }
          else {
            uVar2 = (**(code **)(*local_38 + 0x24))();
            if (uVar2 == 0xffffffff) {
              local_38 = (int *)0x0;
              uVar3 = 0xff;
              goto LAB_007a2f68;
            }
          }
          uVar3 = uVar2 & 0xff;
          local_34 = uVar2;
        }
        else {
          uVar3 = local_34 & 0xff;
        }
LAB_007a2f68:
        if (bVar7 == false) {
          bVar9 = *(byte *)(*(int *)(iVar1 + 0x1c) + uVar4) == uVar3;
        }
        if (((bVar9 ^ 1U) & bVar8) != 0) {
LAB_007a308c:
          bVar7 = false;
          goto LAB_007a2ff2;
        }
        if (bVar8 == false) {
          bVar10 = *(byte *)(*(int *)(iVar1 + 0x14) + uVar4) == uVar3;
        }
        if ((bVar7 & (bVar10 ^ 1U)) != 0) {
          bVar10 = false;
          bVar7 = bVar10;
          goto LAB_007a2fe8;
        }
        if ((byte)((bVar10 ^ 1U) & (bVar9 ^ 1U)) != 0) {
          bVar10 = false;
          goto LAB_007a308c;
        }
        uVar4 = uVar4 + 1;
        if (local_38 != (int *)0x0) {
          if ((uint)local_38[2] < (uint)local_38[3]) {
            local_38[2] = local_38[2] + 1;
            local_34 = 0xffffffff;
          }
          else {
            (**(code **)(*local_38 + 0x28))();
            local_34 = 0xffffffff;
          }
        }
        bVar7 = true;
        if (bVar9 != false) {
          if (uVar4 < *(uint *)(iVar1 + 0x20)) {
            bVar7 = false;
          }
          else {
            bVar7 = true;
          }
        }
        bVar8 = true;
        if (bVar10 == false) goto LAB_007a2f24;
        bVar8 = *(uint *)(iVar1 + 0x18) <= uVar4;
        bVar5 = !bVar8 | bVar7 ^ 1U;
        if (bVar5 == 0) break;
      } while( true );
    }
    bVar7 = false;
LAB_007a2fe8:
    if (((bVar9 == false) || (uVar4 != *(uint *)(iVar1 + 0x20))) || (uVar4 == 0)) {
LAB_007a2ff2:
      if (((bVar10 == false) || (*(uint *)(iVar1 + 0x18) != uVar4)) || (uVar4 == 0)) {
        *param_9 = 0;
        *param_8 = 4;
        if (bVar7 != false) {
          *param_8 = 6;
        }
      }
      else {
        if (bVar7 == false) {
          uVar4 = 0;
        }
        else {
          uVar4 = 2;
        }
        *param_9 = 1;
        *param_8 = uVar4;
      }
    }
    else {
      *param_9 = 0;
      if ((bVar10 == false) || (*(uint *)(iVar1 + 0x18) != uVar4)) {
        if (bVar7 == false) {
          uVar4 = 0;
        }
        else {
          uVar4 = 2;
        }
        *param_8 = uVar4;
      }
      else {
        *param_8 = 4;
      }
    }
  }
  else {
    local_2c[0] = 0xffffffff;
    FUN_007a28e0(&local_40,param_2,param_3,param_4,param_5,param_6,param_7,param_8,local_2c);
    local_38 = local_40;
    local_34 = uStack_3c;
    if (local_2c[0] < 2) {
      *param_9 = (byte)local_2c[0] & 1;
    }
    else {
      *param_9 = 1;
      *param_8 = 4;
      iVar1 = FUN_0079fc7c(&local_38,&param_5);
      if (iVar1 != 0) {
        *param_8 = *param_8 | 2;
      }
    }
  }
  *param_1 = local_38;
  param_1[1] = local_34;
  return param_1;
}

// ---- FUN_007a313c  @ 0x7a313c
/* WARNING: Restarted to delay deadcode elimination for space: stack */

undefined4 *
FUN_007a313c(undefined4 *param_1,undefined4 param_2,int *param_3,uint param_4,int *param_5,
            uint param_6,int param_7,uint *param_8,short *param_9)

{
  bool bVar1;
  byte bVar2;
  ushort uVar3;
  int iVar4;
  int iVar5;
  undefined4 uVar6;
  void *pvVar7;
  short sVar8;
  bool bVar9;
  char cVar10;
  char cVar11;
  int iVar12;
  char cVar13;
  uint uVar14;
  uint uVar15;
  bool bVar16;
  uint uVar17;
  bool bVar18;
  uint __n;
  bool bVar19;
  uint local_64;
  uint local_58;
  int *local_40;
  uint local_3c;
  undefined1 auStack_34 [4];
  undefined1 auStack_30 [4];
  undefined1 *local_2c [2];
  
  iVar5 = param_7;
  local_40 = param_3;
  local_3c = param_4;
  iVar4 = FUN_0079f3dc(auStack_34,param_7 + 0x6c);
  uVar17 = *(uint *)(iVar5 + 0xc) & 0x4a;
  if (uVar17 == 0x40) {
    local_58 = 8;
  }
  else if (uVar17 == 8) {
    local_58 = 0x10;
  }
  else {
    local_58 = 10;
  }
  iVar5 = FUN_0079fc7c(&local_40,&param_5);
  if (iVar5 == 0) {
    bVar2 = FUN_0079fc40(&local_40);
    uVar14 = (uint)bVar2;
    bVar19 = *(byte *)(iVar4 + 0x4a) == uVar14;
    if ((!bVar19) && (*(byte *)(iVar4 + 0x4b) != uVar14)) {
      cVar11 = *(char *)(iVar4 + 0x10);
LAB_007a3494:
      local_64 = 0;
      bVar9 = false;
      __n = local_58;
      do {
        bVar16 = false;
        local_58 = __n;
        if (((cVar11 != '\0') && (*(byte *)(iVar4 + 0x25) == uVar14)) ||
           (*(byte *)(iVar4 + 0x24) == uVar14)) goto joined_r0x007a3522;
        if (*(byte *)(iVar4 + 0x4e) == uVar14) {
          bVar9 = (bool)(bVar9 ^ 1);
          if (__n == 10) {
            bVar9 = true;
          }
          if (!bVar9) goto LAB_007a34cc;
          if (uVar17 == 0) {
            bVar9 = true;
            __n = 8;
            local_64 = uVar17;
          }
          else if (__n == 8) {
            bVar9 = true;
            local_64 = 0;
          }
          else {
            bVar9 = true;
            local_64 = local_64 + 1;
          }
        }
        else {
          if (!bVar9) goto joined_r0x007a3522;
LAB_007a34cc:
          if ((*(byte *)(iVar4 + 0x4c) != uVar14) && (*(byte *)(iVar4 + 0x4d) != uVar14)) {
            bVar9 = true;
            goto joined_r0x007a3522;
          }
          if (uVar17 == 0) {
            __n = 0x10;
            bVar9 = false;
            local_64 = uVar17;
          }
          else {
            if (__n != 0x10) {
              bVar9 = true;
              goto LAB_007a31d8;
            }
            bVar9 = false;
            local_64 = 0;
          }
        }
        if (local_40 != (int *)0x0) {
          if ((uint)local_40[2] < (uint)local_40[3]) {
            local_40[2] = local_40[2] + 1;
          }
          else {
            (**(code **)(*local_40 + 0x28))();
          }
          local_3c = 0xffffffff;
        }
        iVar5 = FUN_0079fc7c(&local_40,&param_5);
        local_58 = __n;
        if (iVar5 != 0) {
          bVar16 = true;
          cVar11 = *(char *)(iVar4 + 0x10);
          goto joined_r0x007a3522;
        }
        bVar2 = FUN_0079fc40(&local_40);
        uVar14 = (uint)bVar2;
        if (!bVar9) goto LAB_007a3606;
        cVar11 = *(char *)(iVar4 + 0x10);
      } while( true );
    }
    cVar11 = *(char *)(iVar4 + 0x10);
    if ((cVar11 != '\0') && (*(byte *)(iVar4 + 0x25) == uVar14)) {
      cVar11 = '\x01';
      goto LAB_007a3494;
    }
    if (*(byte *)(iVar4 + 0x24) == uVar14) goto LAB_007a3494;
    uVar6 = FUN_0079f30c(&local_40);
    iVar5 = FUN_0079fc7c(uVar6,&param_5);
    if (iVar5 == 0) {
      bVar2 = FUN_0079fc40(&local_40);
      cVar11 = *(char *)(iVar4 + 0x10);
      uVar14 = (uint)bVar2;
      goto LAB_007a3494;
    }
  }
  else {
    uVar14 = 0;
    bVar19 = false;
  }
  cVar11 = *(char *)(iVar4 + 0x10);
  local_64 = 0;
  bVar9 = false;
  bVar16 = true;
joined_r0x007a3522:
  __n = local_58;
  if (local_58 == 0x10) {
    __n = 0x16;
  }
LAB_007a31d8:
  local_2c[0] = &DAT_00972528;
  if (cVar11 != '\0') {
    FUN_007c60a0(local_2c,0x20);
  }
  uVar3 = __divsi3(0xffff,local_58);
  cVar11 = *(char *)(iVar4 + 100);
  bVar18 = bVar16;
  if (cVar11 == '\0') {
    if (!bVar16) {
      uVar17 = 0;
      do {
        sVar8 = (short)uVar17;
        if (__n < 0xb) {
          if ((uVar14 < 0x30) || (__n + 0x30 <= uVar14)) goto LAB_007a3362;
          uVar15 = uVar14 - 0x30;
        }
        else {
          uVar15 = uVar14 - 0x30;
          if (9 < (uVar15 & 0xff)) {
            if (uVar14 - 0x61 < 6) {
              uVar15 = uVar14 - 0x57;
            }
            else {
              if (5 < uVar14 - 0x41) goto LAB_007a3362;
              uVar15 = uVar14 - 0x37;
            }
          }
        }
        if (uVar3 < uVar17) {
          bVar18 = true;
        }
        else {
          local_64 = local_64 + 1;
          uVar17 = local_58 * uVar17 & 0xffff;
          if ((int)(0xffff - uVar15) < (int)uVar17) {
            bVar18 = true;
          }
          uVar17 = uVar17 + uVar15 & 0xffff;
        }
        sVar8 = (short)uVar17;
        if (local_40 == (int *)0x0) {
LAB_007a3318:
          iVar5 = 1;
        }
        else {
          if ((uint)local_40[2] < (uint)local_40[3]) {
            local_40[2] = local_40[2] + 1;
          }
          else {
            (**(code **)(*local_40 + 0x28))();
            local_3c = 0xffffffff;
            if (local_40 == (int *)0x0) goto LAB_007a3318;
          }
          local_3c = 0xffffffff;
          if ((byte *)local_40[2] < (byte *)local_40[3]) {
            uVar14 = (uint)*(byte *)local_40[2];
          }
          else {
            uVar14 = (**(code **)(*local_40 + 0x24))();
            if (uVar14 == 0xffffffff) {
              local_40 = (int *)0x0;
              iVar5 = 1;
              goto LAB_007a3284;
            }
          }
          iVar5 = 0;
          local_3c = uVar14;
        }
LAB_007a3284:
        if (param_5 == (int *)0x0) {
          iVar12 = 1;
LAB_007a3296:
          if (iVar5 == iVar12) goto LAB_007a329a;
        }
        else {
          if (param_6 != 0xffffffff) {
            iVar12 = 0;
            goto LAB_007a3296;
          }
          if ((byte *)param_5[2] < (byte *)param_5[3]) {
            uVar14 = (uint)*(byte *)param_5[2];
          }
          else {
            uVar14 = (**(code **)(*param_5 + 0x24))();
            if (uVar14 == 0xffffffff) {
              param_5 = (int *)0x0;
              iVar12 = 1;
              goto LAB_007a3296;
            }
          }
          param_6 = uVar14;
          if (iVar5 == 0) goto LAB_007a329a;
        }
        bVar2 = FUN_0079fc40(&local_40);
        uVar14 = (uint)bVar2;
      } while( true );
    }
    bVar1 = false;
    sVar8 = 0;
    bVar18 = false;
  }
  else {
    if (!bVar16) {
      uVar17 = 0;
      do {
        sVar8 = (short)uVar17;
        if ((*(char *)(iVar4 + 0x10) == '\0') || (*(byte *)(iVar4 + 0x25) != uVar14)) {
          if ((*(byte *)(iVar4 + 0x24) == uVar14) ||
             (pvVar7 = memchr((void *)(iVar4 + 0x4e),uVar14,__n), pvVar7 == (void *)0x0))
          goto LAB_007a3362;
          iVar5 = (int)pvVar7 - (iVar4 + 0x4e);
          if (0xf < iVar5) {
            iVar5 = iVar5 + -6;
          }
          if (uVar3 < uVar17) {
            bVar18 = true;
          }
          else {
            local_64 = local_64 + 1;
            uVar17 = local_58 * uVar17 & 0xffff;
            if (0xffff - iVar5 < (int)uVar17) {
              bVar18 = true;
            }
            uVar17 = uVar17 + iVar5 & 0xffff;
          }
        }
        else {
          if (local_64 == 0) {
            bVar1 = true;
            goto LAB_007a329e;
          }
          FUN_007c640c(local_2c,local_64 & 0xff);
          local_64 = 0;
        }
        sVar8 = (short)uVar17;
        cVar13 = cVar11;
        if (local_40 != (int *)0x0) {
          if ((uint)local_40[2] < (uint)local_40[3]) {
            local_40[2] = local_40[2] + 1;
          }
          else {
            (**(code **)(*local_40 + 0x28))();
            local_3c = 0xffffffff;
            if (local_40 == (int *)0x0) goto LAB_007a3428;
          }
          local_3c = 0xffffffff;
          if ((byte *)local_40[2] < (byte *)local_40[3]) {
            uVar14 = (uint)*(byte *)local_40[2];
          }
          else {
            uVar14 = (**(code **)(*local_40 + 0x24))();
            if (uVar14 == 0xffffffff) {
              local_40 = (int *)0x0;
              goto LAB_007a3428;
            }
          }
          local_3c = uVar14;
          cVar13 = '\0';
        }
LAB_007a3428:
        cVar10 = cVar11;
        if (param_5 != (int *)0x0) {
          if (param_6 == 0xffffffff) {
            if ((byte *)param_5[2] < (byte *)param_5[3]) {
              uVar14 = (uint)*(byte *)param_5[2];
            }
            else {
              uVar14 = (**(code **)(*param_5 + 0x24))();
              if (uVar14 == 0xffffffff) {
                param_5 = (int *)0x0;
                goto LAB_007a343a;
              }
            }
            param_6 = uVar14;
            cVar10 = '\0';
          }
          else {
            cVar10 = '\0';
          }
        }
LAB_007a343a:
        if (cVar10 == cVar13) goto LAB_007a329a;
        bVar2 = FUN_0079fc40(&local_40);
        uVar14 = (uint)bVar2;
      } while( true );
    }
    sVar8 = 0;
    bVar18 = false;
    bVar1 = false;
  }
LAB_007a329e:
  iVar5 = *(int *)(local_2c[0] + -0xc);
joined_r0x007a336c:
  if (iVar5 != 0) {
    FUN_007c640c(local_2c,local_64 & 0xff);
    iVar5 = FUN_007c7b7c(*(undefined4 *)(iVar4 + 8),*(undefined4 *)(iVar4 + 0xc),local_2c);
    if (iVar5 == 0) {
      *param_8 = 4;
    }
  }
  bVar9 = (bool)(bVar9 ^ 1);
  if (local_64 != 0) {
    bVar9 = false;
  }
  if (((bVar9) && (*(int *)(local_2c[0] + -0xc) == 0)) || (bVar1)) {
    sVar8 = 0;
  }
  else {
    if (!bVar18) {
      if (bVar19) {
        sVar8 = -sVar8;
      }
      *param_9 = sVar8;
      goto LAB_007a32ce;
    }
    sVar8 = -1;
  }
  *param_9 = sVar8;
  *param_8 = 4;
LAB_007a32ce:
  if (bVar16) {
    *param_8 = *param_8 | 2;
  }
  *param_1 = local_40;
  param_1[1] = local_3c;
  FUN_007c5900(local_2c[0] + -0xc,auStack_30);
  return param_1;
LAB_007a3606:
  cVar11 = *(char *)(iVar4 + 0x10);
  goto joined_r0x007a3522;
LAB_007a3362:
  bVar1 = false;
  iVar5 = *(int *)(local_2c[0] + -0xc);
  goto joined_r0x007a336c;
LAB_007a329a:
  bVar1 = false;
  bVar16 = true;
  goto LAB_007a329e;
}

// ---- FUN_007a3688  @ 0x7a3688
undefined4
FUN_007a3688(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5,undefined4 param_6,undefined4 param_7,undefined4 param_8,
            undefined4 param_9)

{
  FUN_007a313c(param_1,param_2,param_3,param_4,param_5,param_6,param_7,param_8,param_9);
  return param_1;
}

// ---- FUN_007a36c4  @ 0x7a36c4
/* WARNING: Restarted to delay deadcode elimination for space: stack */

undefined4 *
FUN_007a36c4(undefined4 *param_1,undefined4 param_2,int *param_3,uint param_4,int *param_5,
            uint param_6,int param_7,uint *param_8,uint *param_9)

{
  bool bVar1;
  byte bVar2;
  int iVar3;
  int iVar4;
  undefined4 uVar5;
  uint uVar6;
  void *pvVar7;
  bool bVar8;
  char cVar9;
  char cVar10;
  int iVar11;
  char cVar12;
  uint uVar13;
  uint uVar14;
  uint uVar15;
  uint uVar16;
  uint uVar17;
  uint __n;
  bool bVar18;
  uint local_64;
  uint local_58;
  int *local_40;
  uint local_3c;
  undefined1 auStack_34 [4];
  undefined1 auStack_30 [4];
  undefined1 *local_2c [2];
  
  iVar4 = param_7;
  local_40 = param_3;
  local_3c = param_4;
  iVar3 = FUN_0079f3dc(auStack_34,param_7 + 0x6c);
  uVar16 = *(uint *)(iVar4 + 0xc) & 0x4a;
  if (uVar16 == 0x40) {
    local_58 = 8;
  }
  else if (uVar16 == 8) {
    local_58 = 0x10;
  }
  else {
    local_58 = 10;
  }
  iVar4 = FUN_0079fc7c(&local_40,&param_5);
  if (iVar4 == 0) {
    bVar2 = FUN_0079fc40(&local_40);
    uVar13 = (uint)bVar2;
    bVar18 = *(byte *)(iVar3 + 0x4a) == uVar13;
    if ((!bVar18) && (*(byte *)(iVar3 + 0x4b) != uVar13)) {
      cVar10 = *(char *)(iVar3 + 0x10);
LAB_007a3a08:
      local_64 = 0;
      bVar8 = false;
      __n = local_58;
      do {
        uVar15 = 0;
        local_58 = __n;
        if (((cVar10 != '\0') && (*(byte *)(iVar3 + 0x25) == uVar13)) ||
           (*(byte *)(iVar3 + 0x24) == uVar13)) goto joined_r0x007a3a96;
        if (*(byte *)(iVar3 + 0x4e) == uVar13) {
          bVar8 = (bool)(bVar8 ^ 1);
          if (__n == 10) {
            bVar8 = true;
          }
          if (!bVar8) goto LAB_007a3a40;
          if (uVar16 == 0) {
            bVar8 = true;
            __n = 8;
            local_64 = uVar16;
          }
          else if (__n == 8) {
            bVar8 = true;
            local_64 = 0;
          }
          else {
            bVar8 = true;
            local_64 = local_64 + 1;
          }
        }
        else {
          if (!bVar8) goto joined_r0x007a3a96;
LAB_007a3a40:
          if ((*(byte *)(iVar3 + 0x4c) != uVar13) && (*(byte *)(iVar3 + 0x4d) != uVar13)) {
            bVar8 = true;
            goto joined_r0x007a3a96;
          }
          if (uVar16 == 0) {
            __n = 0x10;
            bVar8 = false;
            local_64 = uVar16;
          }
          else {
            if (__n != 0x10) {
              bVar8 = true;
              goto LAB_007a3760;
            }
            bVar8 = false;
            local_64 = 0;
          }
        }
        if (local_40 != (int *)0x0) {
          if ((uint)local_40[2] < (uint)local_40[3]) {
            local_40[2] = local_40[2] + 1;
          }
          else {
            (**(code **)(*local_40 + 0x28))();
          }
          local_3c = 0xffffffff;
        }
        iVar4 = FUN_0079fc7c(&local_40,&param_5);
        local_58 = __n;
        if (iVar4 != 0) {
          uVar15 = 1;
          cVar10 = *(char *)(iVar3 + 0x10);
          goto joined_r0x007a3a96;
        }
        bVar2 = FUN_0079fc40(&local_40);
        uVar13 = (uint)bVar2;
        if (!bVar8) goto LAB_007a3b78;
        cVar10 = *(char *)(iVar3 + 0x10);
      } while( true );
    }
    cVar10 = *(char *)(iVar3 + 0x10);
    if ((cVar10 != '\0') && (*(byte *)(iVar3 + 0x25) == uVar13)) {
      cVar10 = '\x01';
      goto LAB_007a3a08;
    }
    if (*(byte *)(iVar3 + 0x24) == uVar13) goto LAB_007a3a08;
    uVar5 = FUN_0079f30c(&local_40);
    iVar4 = FUN_0079fc7c(uVar5,&param_5);
    if (iVar4 == 0) {
      bVar2 = FUN_0079fc40(&local_40);
      cVar10 = *(char *)(iVar3 + 0x10);
      uVar13 = (uint)bVar2;
      goto LAB_007a3a08;
    }
  }
  else {
    uVar13 = 0;
    bVar18 = false;
  }
  cVar10 = *(char *)(iVar3 + 0x10);
  local_64 = 0;
  bVar8 = false;
  uVar15 = 1;
joined_r0x007a3a96:
  __n = local_58;
  if (local_58 == 0x10) {
    __n = 0x16;
  }
LAB_007a3760:
  local_2c[0] = &DAT_00972528;
  if (cVar10 != '\0') {
    FUN_007c60a0(local_2c,0x20);
  }
  uVar6 = __udivsi3(0xffffffff,local_58);
  cVar10 = *(char *)(iVar3 + 100);
  uVar16 = uVar15;
  uVar17 = uVar15;
  if (cVar10 == '\0') {
    if (uVar15 == 0) {
      do {
        if (__n < 0xb) {
          if ((uVar13 < 0x30) || (__n + 0x30 <= uVar13)) goto LAB_007a38de;
          uVar14 = uVar13 - 0x30;
        }
        else {
          uVar14 = uVar13 - 0x30;
          if (9 < (uVar14 & 0xff)) {
            if (uVar13 - 0x61 < 6) {
              uVar14 = uVar13 - 0x57;
            }
            else {
              if (5 < uVar13 - 0x41) goto LAB_007a38de;
              uVar14 = uVar13 - 0x37;
            }
          }
        }
        if (uVar6 < uVar16) {
          uVar17 = 1;
        }
        else {
          local_64 = local_64 + 1;
          if (~uVar14 < local_58 * uVar16) {
            uVar17 = 1;
          }
          uVar16 = local_58 * uVar16 + uVar14;
        }
        if (local_40 == (int *)0x0) {
LAB_007a3896:
          iVar4 = 1;
        }
        else {
          if ((uint)local_40[2] < (uint)local_40[3]) {
            local_40[2] = local_40[2] + 1;
          }
          else {
            (**(code **)(*local_40 + 0x28))();
            local_3c = 0xffffffff;
            if (local_40 == (int *)0x0) goto LAB_007a3896;
          }
          local_3c = 0xffffffff;
          if ((byte *)local_40[2] < (byte *)local_40[3]) {
            uVar13 = (uint)*(byte *)local_40[2];
          }
          else {
            uVar13 = (**(code **)(*local_40 + 0x24))();
            if (uVar13 == 0xffffffff) {
              local_40 = (int *)0x0;
              iVar4 = 1;
              goto LAB_007a3802;
            }
          }
          iVar4 = 0;
          local_3c = uVar13;
        }
LAB_007a3802:
        if (param_5 == (int *)0x0) {
          iVar11 = 1;
LAB_007a3814:
          if (iVar4 == iVar11) goto LAB_007a3818;
        }
        else {
          if (param_6 != 0xffffffff) {
            iVar11 = 0;
            goto LAB_007a3814;
          }
          if ((byte *)param_5[2] < (byte *)param_5[3]) {
            uVar13 = (uint)*(byte *)param_5[2];
          }
          else {
            uVar13 = (**(code **)(*param_5 + 0x24))();
            if (uVar13 == 0xffffffff) {
              param_5 = (int *)0x0;
              iVar11 = 1;
              goto LAB_007a3814;
            }
          }
          param_6 = uVar13;
          if (iVar4 == 0) goto LAB_007a3818;
        }
        bVar2 = FUN_0079fc40(&local_40);
        uVar13 = (uint)bVar2;
      } while( true );
    }
    bVar1 = false;
    uVar16 = 0;
    uVar17 = 0;
  }
  else {
    if (uVar15 == 0) {
      do {
        if ((*(char *)(iVar3 + 0x10) == '\0') || (*(byte *)(iVar3 + 0x25) != uVar13)) {
          if ((*(byte *)(iVar3 + 0x24) == uVar13) ||
             (pvVar7 = memchr((void *)(iVar3 + 0x4e),uVar13,__n), pvVar7 == (void *)0x0))
          goto LAB_007a38de;
          uVar13 = (int)pvVar7 - (iVar3 + 0x4e);
          if (0xf < (int)uVar13) {
            uVar13 = uVar13 - 6;
          }
          if (uVar6 < uVar16) {
            uVar17 = 1;
          }
          else {
            local_64 = local_64 + 1;
            if (~uVar13 < local_58 * uVar16) {
              uVar17 = 1;
            }
            uVar16 = local_58 * uVar16 + uVar13;
          }
        }
        else {
          if (local_64 == 0) {
            bVar1 = true;
            goto LAB_007a381c;
          }
          FUN_007c640c(local_2c,local_64 & 0xff);
          local_64 = 0;
        }
        cVar12 = cVar10;
        if (local_40 != (int *)0x0) {
          if ((uint)local_40[2] < (uint)local_40[3]) {
            local_40[2] = local_40[2] + 1;
          }
          else {
            (**(code **)(*local_40 + 0x28))();
            local_3c = 0xffffffff;
            if (local_40 == (int *)0x0) goto LAB_007a399c;
          }
          local_3c = 0xffffffff;
          if ((byte *)local_40[2] < (byte *)local_40[3]) {
            uVar13 = (uint)*(byte *)local_40[2];
          }
          else {
            uVar13 = (**(code **)(*local_40 + 0x24))();
            if (uVar13 == 0xffffffff) {
              local_40 = (int *)0x0;
              goto LAB_007a399c;
            }
          }
          local_3c = uVar13;
          cVar12 = '\0';
        }
LAB_007a399c:
        cVar9 = cVar10;
        if (param_5 != (int *)0x0) {
          if (param_6 == 0xffffffff) {
            if ((byte *)param_5[2] < (byte *)param_5[3]) {
              uVar13 = (uint)*(byte *)param_5[2];
            }
            else {
              uVar13 = (**(code **)(*param_5 + 0x24))();
              if (uVar13 == 0xffffffff) {
                param_5 = (int *)0x0;
                goto LAB_007a39ae;
              }
            }
            param_6 = uVar13;
            cVar9 = '\0';
          }
          else {
            cVar9 = '\0';
          }
        }
LAB_007a39ae:
        if (cVar9 == cVar12) goto LAB_007a3818;
        bVar2 = FUN_0079fc40(&local_40);
        uVar13 = (uint)bVar2;
      } while( true );
    }
    uVar16 = 0;
    uVar17 = 0;
    bVar1 = false;
  }
LAB_007a381c:
  iVar4 = *(int *)(local_2c[0] + -0xc);
joined_r0x007a38e8:
  if (iVar4 != 0) {
    FUN_007c640c(local_2c,local_64 & 0xff);
    iVar4 = FUN_007c7b7c(*(undefined4 *)(iVar3 + 8),*(undefined4 *)(iVar3 + 0xc),local_2c);
    if (iVar4 == 0) {
      *param_8 = 4;
    }
  }
  bVar8 = (bool)(bVar8 ^ 1);
  if (local_64 != 0) {
    bVar8 = false;
  }
  if (((bVar8) && (*(int *)(local_2c[0] + -0xc) == 0)) || (bVar1)) {
    uVar16 = 0;
  }
  else {
    if (uVar17 == 0) {
      if (bVar18) {
        uVar16 = -uVar16;
      }
      *param_9 = uVar16;
      goto LAB_007a384c;
    }
    uVar16 = 0xffffffff;
  }
  *param_9 = uVar16;
  *param_8 = 4;
LAB_007a384c:
  if (uVar15 != 0) {
    *param_8 = *param_8 | 2;
  }
  *param_1 = local_40;
  param_1[1] = local_3c;
  FUN_007c5900(local_2c[0] + -0xc,auStack_30);
  return param_1;
LAB_007a3b78:
  cVar10 = *(char *)(iVar3 + 0x10);
  goto joined_r0x007a3a96;
LAB_007a38de:
  bVar1 = false;
  iVar4 = *(int *)(local_2c[0] + -0xc);
  goto joined_r0x007a38e8;
LAB_007a3818:
  bVar1 = false;
  uVar15 = 1;
  goto LAB_007a381c;
}

// ---- FUN_007a3bf8  @ 0x7a3bf8
undefined4
FUN_007a3bf8(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5,undefined4 param_6,undefined4 param_7,undefined4 param_8,
            undefined4 param_9)

{
  FUN_007a36c4(param_1,param_2,param_3,param_4,param_5,param_6,param_7,param_8,param_9);
  return param_1;
}

// ---- FUN_007a3c34  @ 0x7a3c34
/* WARNING: Restarted to delay deadcode elimination for space: stack */

undefined4 *
FUN_007a3c34(undefined4 *param_1,undefined4 param_2,int *param_3,uint param_4,int *param_5,
            uint param_6,int param_7,uint *param_8,uint *param_9)

{
  bool bVar1;
  byte bVar2;
  int iVar3;
  int iVar4;
  undefined4 uVar5;
  uint uVar6;
  void *pvVar7;
  bool bVar8;
  char cVar9;
  char cVar10;
  int iVar11;
  char cVar12;
  uint uVar13;
  uint uVar14;
  uint uVar15;
  uint uVar16;
  uint uVar17;
  uint __n;
  bool bVar18;
  uint local_64;
  uint local_58;
  int *local_40;
  uint local_3c;
  undefined1 auStack_34 [4];
  undefined1 auStack_30 [4];
  undefined1 *local_2c [2];
  
  iVar4 = param_7;
  local_40 = param_3;
  local_3c = param_4;
  iVar3 = FUN_0079f3dc(auStack_34,param_7 + 0x6c);
  uVar16 = *(uint *)(iVar4 + 0xc) & 0x4a;
  if (uVar16 == 0x40) {
    local_58 = 8;
  }
  else if (uVar16 == 8) {
    local_58 = 0x10;
  }
  else {
    local_58 = 10;
  }
  iVar4 = FUN_0079fc7c(&local_40,&param_5);
  if (iVar4 == 0) {
    bVar2 = FUN_0079fc40(&local_40);
    uVar13 = (uint)bVar2;
    bVar18 = *(byte *)(iVar3 + 0x4a) == uVar13;
    if ((!bVar18) && (*(byte *)(iVar3 + 0x4b) != uVar13)) {
      cVar10 = *(char *)(iVar3 + 0x10);
LAB_007a3f78:
      local_64 = 0;
      bVar8 = false;
      __n = local_58;
      do {
        uVar15 = 0;
        local_58 = __n;
        if (((cVar10 != '\0') && (*(byte *)(iVar3 + 0x25) == uVar13)) ||
           (*(byte *)(iVar3 + 0x24) == uVar13)) goto joined_r0x007a4006;
        if (*(byte *)(iVar3 + 0x4e) == uVar13) {
          bVar8 = (bool)(bVar8 ^ 1);
          if (__n == 10) {
            bVar8 = true;
          }
          if (!bVar8) goto LAB_007a3fb0;
          if (uVar16 == 0) {
            bVar8 = true;
            __n = 8;
            local_64 = uVar16;
          }
          else if (__n == 8) {
            bVar8 = true;
            local_64 = 0;
          }
          else {
            bVar8 = true;
            local_64 = local_64 + 1;
          }
        }
        else {
          if (!bVar8) goto joined_r0x007a4006;
LAB_007a3fb0:
          if ((*(byte *)(iVar3 + 0x4c) != uVar13) && (*(byte *)(iVar3 + 0x4d) != uVar13)) {
            bVar8 = true;
            goto joined_r0x007a4006;
          }
          if (uVar16 == 0) {
            __n = 0x10;
            bVar8 = false;
            local_64 = uVar16;
          }
          else {
            if (__n != 0x10) {
              bVar8 = true;
              goto LAB_007a3cd0;
            }
            bVar8 = false;
            local_64 = 0;
          }
        }
        if (local_40 != (int *)0x0) {
          if ((uint)local_40[2] < (uint)local_40[3]) {
            local_40[2] = local_40[2] + 1;
          }
          else {
            (**(code **)(*local_40 + 0x28))();
          }
          local_3c = 0xffffffff;
        }
        iVar4 = FUN_0079fc7c(&local_40,&param_5);
        local_58 = __n;
        if (iVar4 != 0) {
          uVar15 = 1;
          cVar10 = *(char *)(iVar3 + 0x10);
          goto joined_r0x007a4006;
        }
        bVar2 = FUN_0079fc40(&local_40);
        uVar13 = (uint)bVar2;
        if (!bVar8) goto LAB_007a40e8;
        cVar10 = *(char *)(iVar3 + 0x10);
      } while( true );
    }
    cVar10 = *(char *)(iVar3 + 0x10);
    if ((cVar10 != '\0') && (*(byte *)(iVar3 + 0x25) == uVar13)) {
      cVar10 = '\x01';
      goto LAB_007a3f78;
    }
    if (*(byte *)(iVar3 + 0x24) == uVar13) goto LAB_007a3f78;
    uVar5 = FUN_0079f30c(&local_40);
    iVar4 = FUN_0079fc7c(uVar5,&param_5);
    if (iVar4 == 0) {
      bVar2 = FUN_0079fc40(&local_40);
      cVar10 = *(char *)(iVar3 + 0x10);
      uVar13 = (uint)bVar2;
      goto LAB_007a3f78;
    }
  }
  else {
    uVar13 = 0;
    bVar18 = false;
  }
  cVar10 = *(char *)(iVar3 + 0x10);
  local_64 = 0;
  bVar8 = false;
  uVar15 = 1;
joined_r0x007a4006:
  __n = local_58;
  if (local_58 == 0x10) {
    __n = 0x16;
  }
LAB_007a3cd0:
  local_2c[0] = &DAT_00972528;
  if (cVar10 != '\0') {
    FUN_007c60a0(local_2c,0x20);
  }
  uVar6 = __udivsi3(0xffffffff,local_58);
  cVar10 = *(char *)(iVar3 + 100);
  uVar16 = uVar15;
  uVar17 = uVar15;
  if (cVar10 == '\0') {
    if (uVar15 == 0) {
      do {
        if (__n < 0xb) {
          if ((uVar13 < 0x30) || (__n + 0x30 <= uVar13)) goto LAB_007a3e4e;
          uVar14 = uVar13 - 0x30;
        }
        else {
          uVar14 = uVar13 - 0x30;
          if (9 < (uVar14 & 0xff)) {
            if (uVar13 - 0x61 < 6) {
              uVar14 = uVar13 - 0x57;
            }
            else {
              if (5 < uVar13 - 0x41) goto LAB_007a3e4e;
              uVar14 = uVar13 - 0x37;
            }
          }
        }
        if (uVar6 < uVar16) {
          uVar17 = 1;
        }
        else {
          local_64 = local_64 + 1;
          if (~uVar14 < local_58 * uVar16) {
            uVar17 = 1;
          }
          uVar16 = local_58 * uVar16 + uVar14;
        }
        if (local_40 == (int *)0x0) {
LAB_007a3e06:
          iVar4 = 1;
        }
        else {
          if ((uint)local_40[2] < (uint)local_40[3]) {
            local_40[2] = local_40[2] + 1;
          }
          else {
            (**(code **)(*local_40 + 0x28))();
            local_3c = 0xffffffff;
            if (local_40 == (int *)0x0) goto LAB_007a3e06;
          }
          local_3c = 0xffffffff;
          if ((byte *)local_40[2] < (byte *)local_40[3]) {
            uVar13 = (uint)*(byte *)local_40[2];
          }
          else {
            uVar13 = (**(code **)(*local_40 + 0x24))();
            if (uVar13 == 0xffffffff) {
              local_40 = (int *)0x0;
              iVar4 = 1;
              goto LAB_007a3d72;
            }
          }
          iVar4 = 0;
          local_3c = uVar13;
        }
LAB_007a3d72:
        if (param_5 == (int *)0x0) {
          iVar11 = 1;
LAB_007a3d84:
          if (iVar4 == iVar11) goto LAB_007a3d88;
        }
        else {
          if (param_6 != 0xffffffff) {
            iVar11 = 0;
            goto LAB_007a3d84;
          }
          if ((byte *)param_5[2] < (byte *)param_5[3]) {
            uVar13 = (uint)*(byte *)param_5[2];
          }
          else {
            uVar13 = (**(code **)(*param_5 + 0x24))();
            if (uVar13 == 0xffffffff) {
              param_5 = (int *)0x0;
              iVar11 = 1;
              goto LAB_007a3d84;
            }
          }
          param_6 = uVar13;
          if (iVar4 == 0) goto LAB_007a3d88;
        }
        bVar2 = FUN_0079fc40(&local_40);
        uVar13 = (uint)bVar2;
      } while( true );
    }
    bVar1 = false;
    uVar16 = 0;
    uVar17 = 0;
  }
  else {
    if (uVar15 == 0) {
      do {
        if ((*(char *)(iVar3 + 0x10) == '\0') || (*(byte *)(iVar3 + 0x25) != uVar13)) {
          if ((*(byte *)(iVar3 + 0x24) == uVar13) ||
             (pvVar7 = memchr((void *)(iVar3 + 0x4e),uVar13,__n), pvVar7 == (void *)0x0))
          goto LAB_007a3e4e;
          uVar13 = (int)pvVar7 - (iVar3 + 0x4e);
          if (0xf < (int)uVar13) {
            uVar13 = uVar13 - 6;
          }
          if (uVar6 < uVar16) {
            uVar17 = 1;
          }
          else {
            local_64 = local_64 + 1;
            if (~uVar13 < local_58 * uVar16) {
              uVar17 = 1;
            }
            uVar16 = local_58 * uVar16 + uVar13;
          }
        }
        else {
          if (local_64 == 0) {
            bVar1 = true;
            goto LAB_007a3d8c;
          }
          FUN_007c640c(local_2c,local_64 & 0xff);
          local_64 = 0;
        }
        cVar12 = cVar10;
        if (local_40 != (int *)0x0) {
          if ((uint)local_40[2] < (uint)local_40[3]) {
            local_40[2] = local_40[2] + 1;
          }
          else {
            (**(code **)(*local_40 + 0x28))();
            local_3c = 0xffffffff;
            if (local_40 == (int *)0x0) goto LAB_007a3f0c;
          }
          local_3c = 0xffffffff;
          if ((byte *)local_40[2] < (byte *)local_40[3]) {
            uVar13 = (uint)*(byte *)local_40[2];
          }
          else {
            uVar13 = (**(code **)(*local_40 + 0x24))();
            if (uVar13 == 0xffffffff) {
              local_40 = (int *)0x0;
              goto LAB_007a3f0c;
            }
          }
          local_3c = uVar13;
          cVar12 = '\0';
        }
LAB_007a3f0c:
        cVar9 = cVar10;
        if (param_5 != (int *)0x0) {
          if (param_6 == 0xffffffff) {
            if ((byte *)param_5[2] < (byte *)param_5[3]) {
              uVar13 = (uint)*(byte *)param_5[2];
            }
            else {
              uVar13 = (**(code **)(*param_5 + 0x24))();
              if (uVar13 == 0xffffffff) {
                param_5 = (int *)0x0;
                goto LAB_007a3f1e;
              }
            }
            param_6 = uVar13;
            cVar9 = '\0';
          }
          else {
            cVar9 = '\0';
          }
        }
LAB_007a3f1e:
        if (cVar9 == cVar12) goto LAB_007a3d88;
        bVar2 = FUN_0079fc40(&local_40);
        uVar13 = (uint)bVar2;
      } while( true );
    }
    uVar16 = 0;
    uVar17 = 0;
    bVar1 = false;
  }
LAB_007a3d8c:
  iVar4 = *(int *)(local_2c[0] + -0xc);
joined_r0x007a3e58:
  if (iVar4 != 0) {
    FUN_007c640c(local_2c,local_64 & 0xff);
    iVar4 = FUN_007c7b7c(*(undefined4 *)(iVar3 + 8),*(undefined4 *)(iVar3 + 0xc),local_2c);
    if (iVar4 == 0) {
      *param_8 = 4;
    }
  }
  bVar8 = (bool)(bVar8 ^ 1);
  if (local_64 != 0) {
    bVar8 = false;
  }
  if (((bVar8) && (*(int *)(local_2c[0] + -0xc) == 0)) || (bVar1)) {
    uVar16 = 0;
  }
  else {
    if (uVar17 == 0) {
      if (bVar18) {
        uVar16 = -uVar16;
      }
      *param_9 = uVar16;
      goto LAB_007a3dbc;
    }
    uVar16 = 0xffffffff;
  }
  *param_9 = uVar16;
  *param_8 = 4;
LAB_007a3dbc:
  if (uVar15 != 0) {
    *param_8 = *param_8 | 2;
  }
  *param_1 = local_40;
  param_1[1] = local_3c;
  FUN_007c5900(local_2c[0] + -0xc,auStack_30);
  return param_1;
LAB_007a40e8:
  cVar10 = *(char *)(iVar3 + 0x10);
  goto joined_r0x007a4006;
LAB_007a3e4e:
  bVar1 = false;
  iVar4 = *(int *)(local_2c[0] + -0xc);
  goto joined_r0x007a3e58;
LAB_007a3d88:
  bVar1 = false;
  uVar15 = 1;
  goto LAB_007a3d8c;
}

// ---- FUN_007a4168  @ 0x7a4168
undefined4
FUN_007a4168(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5,undefined4 param_6,undefined4 param_7,undefined4 param_8,
            undefined4 param_9)

{
  FUN_007a3c34(param_1,param_2,param_3,param_4,param_5,param_6,param_7,param_8,param_9);
  return param_1;
}

// ---- FUN_007a41a4  @ 0x7a41a4
undefined4 *
FUN_007a41a4(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5,undefined4 param_6,int param_7,undefined4 param_8,undefined4 *param_9
            )

{
  uint uVar1;
  undefined4 local_38;
  undefined4 uStack_34;
  undefined4 local_30;
  undefined4 uStack_2c;
  undefined4 local_24 [2];
  
  uVar1 = *(uint *)(param_7 + 0xc);
  *(uint *)(param_7 + 0xc) = uVar1 & 0xffffffb5 | 8;
  local_30 = param_3;
  uStack_2c = param_4;
  FUN_007a3c34(&local_38,param_2,param_3,param_4,param_5,param_6,param_7,param_8,local_24);
  *(uint *)(param_7 + 0xc) = uVar1;
  *param_1 = local_38;
  param_1[1] = uStack_34;
  *param_9 = local_24[0];
  return param_1;
}

// ---- FUN_007a4208  @ 0x7a4208
/* WARNING: Restarted to delay deadcode elimination for space: stack */

int * FUN_007a4208(int *param_1,undefined4 param_2,int *param_3,uint param_4,int *param_5,
                  uint param_6,int param_7,uint *param_8,uint *param_9)

{
  bool bVar1;
  bool bVar2;
  byte bVar3;
  int iVar4;
  int iVar5;
  undefined4 uVar6;
  void *pvVar7;
  uint uVar8;
  uint uVar9;
  uint uVar10;
  char cVar11;
  bool bVar12;
  char cVar13;
  uint uVar14;
  int iVar15;
  uint uVar16;
  uint uVar17;
  char cVar18;
  uint uVar19;
  bool bVar20;
  bool bVar21;
  undefined8 uVar22;
  uint local_80;
  uint local_7c;
  uint local_6c;
  uint local_60;
  int iStack_5c;
  int *local_40;
  uint local_3c;
  undefined1 auStack_34 [4];
  undefined1 auStack_30 [4];
  undefined1 *local_2c [2];
  
  iVar5 = param_7;
  local_40 = param_3;
  local_3c = param_4;
  iVar4 = FUN_0079f3dc(auStack_34,param_7 + 0x6c);
  uVar16 = *(uint *)(iVar5 + 0xc) & 0x4a;
  if (uVar16 == 0x40) {
    uVar17 = 8;
  }
  else if (uVar16 == 8) {
    uVar17 = 0x10;
  }
  else {
    uVar17 = 10;
  }
  iVar5 = FUN_0079fc7c(&local_40,&param_5);
  if (iVar5 == 0) {
    bVar3 = FUN_0079fc40(&local_40);
    uVar19 = (uint)bVar3;
    bVar20 = *(byte *)(iVar4 + 0x4a) == uVar19;
    if ((!bVar20) && (*(byte *)(iVar4 + 0x4b) != uVar19)) {
      cVar13 = *(char *)(iVar4 + 0x10);
LAB_007a462c:
      local_6c = 0;
      bVar12 = false;
      do {
        bVar1 = false;
        if (((cVar13 != '\0') && (*(byte *)(iVar4 + 0x25) == uVar19)) ||
           (*(byte *)(iVar4 + 0x24) == uVar19)) goto joined_r0x007a46b0;
        if (*(byte *)(iVar4 + 0x4e) == uVar19) {
          bVar12 = (bool)(bVar12 ^ 1);
          if (uVar17 == 10) {
            bVar12 = true;
          }
          if (!bVar12) goto LAB_007a4660;
          if (uVar16 == 0) {
            bVar12 = true;
            uVar17 = 8;
            local_6c = uVar16;
          }
          else if (uVar17 == 8) {
            bVar12 = true;
            local_6c = 0;
          }
          else {
            bVar12 = true;
            local_6c = local_6c + 1;
          }
        }
        else {
          if (!bVar12) goto joined_r0x007a46b0;
LAB_007a4660:
          if ((*(byte *)(iVar4 + 0x4c) != uVar19) && (*(byte *)(iVar4 + 0x4d) != uVar19)) {
            bVar12 = true;
            goto joined_r0x007a46b0;
          }
          if (uVar16 == 0) {
            uVar17 = 0x10;
            bVar12 = false;
            local_6c = uVar16;
          }
          else {
            if (uVar17 != 0x10) {
              bVar12 = true;
              uVar16 = uVar17;
              goto LAB_007a42a0;
            }
            bVar12 = false;
            local_6c = 0;
          }
        }
        if (local_40 != (int *)0x0) {
          if ((uint)local_40[2] < (uint)local_40[3]) {
            local_40[2] = local_40[2] + 1;
          }
          else {
            (**(code **)(*local_40 + 0x28))();
          }
          local_3c = 0xffffffff;
        }
        iVar5 = FUN_0079fc7c(&local_40,&param_5);
        if (iVar5 != 0) {
          bVar1 = true;
          cVar13 = *(char *)(iVar4 + 0x10);
          goto joined_r0x007a46b0;
        }
        bVar3 = FUN_0079fc40(&local_40);
        uVar19 = (uint)bVar3;
        if (!bVar12) goto LAB_007a47a0;
        cVar13 = *(char *)(iVar4 + 0x10);
      } while( true );
    }
    cVar13 = *(char *)(iVar4 + 0x10);
    if ((cVar13 != '\0') && (*(byte *)(iVar4 + 0x25) == uVar19)) {
      cVar13 = '\x01';
      goto LAB_007a462c;
    }
    if (*(byte *)(iVar4 + 0x24) == uVar19) goto LAB_007a462c;
    uVar6 = FUN_0079f30c(&local_40);
    iVar5 = FUN_0079fc7c(uVar6,&param_5);
    if (iVar5 == 0) {
      bVar3 = FUN_0079fc40(&local_40);
      cVar13 = *(char *)(iVar4 + 0x10);
      uVar19 = (uint)bVar3;
      goto LAB_007a462c;
    }
  }
  else {
    uVar19 = 0;
    bVar20 = false;
  }
  cVar13 = *(char *)(iVar4 + 0x10);
  bVar1 = true;
  local_6c = 0;
  bVar12 = false;
joined_r0x007a46b0:
  uVar16 = uVar17;
  if (uVar17 == 0x10) {
    uVar16 = 0x16;
  }
LAB_007a42a0:
  local_2c[0] = &DAT_00972528;
  if (cVar13 != '\0') {
    FUN_007c60a0(local_2c,0x20);
  }
  if (bVar20) {
    local_60 = 0;
    iStack_5c = -0x80000000;
  }
  else {
    local_60 = 0xffffffff;
    iStack_5c = 0x7fffffff;
  }
  uVar22 = __aeabi_uldivmod(local_60,iStack_5c,uVar17,0);
  uVar8 = (uint)((ulonglong)uVar22 >> 0x20);
  cVar13 = *(char *)(iVar4 + 100);
  bVar2 = bVar1;
  if (cVar13 == '\0') {
    if (!bVar1) {
      local_80 = 0;
      local_7c = 0;
      do {
        if (uVar16 < 0xb) {
          if ((uVar19 < 0x30) || (uVar16 + 0x30 <= uVar19)) goto LAB_007a44aa;
          uVar9 = uVar19 - 0x30;
        }
        else {
          uVar9 = uVar19 - 0x30;
          if (9 < (uVar9 & 0xff)) {
            if (uVar19 - 0x61 < 6) {
              uVar9 = uVar19 - 0x57;
            }
            else {
              if (5 < uVar19 - 0x41) goto LAB_007a44aa;
              uVar9 = uVar19 - 0x37;
            }
          }
        }
        bVar21 = local_7c <= uVar8;
        if (uVar8 == local_7c) {
          bVar21 = local_80 <= (uint)uVar22;
        }
        if (bVar21) {
          local_6c = local_6c + 1;
          uVar10 = (uint)((ulonglong)local_80 * (ulonglong)uVar17);
          uVar14 = (int)((ulonglong)local_80 * (ulonglong)uVar17 >> 0x20) + uVar17 * local_7c;
          uVar19 = (iStack_5c - ((int)uVar9 >> 0x1f)) - (uint)(local_60 < uVar9);
          bVar21 = uVar14 <= uVar19;
          if (uVar19 == uVar14) {
            bVar21 = uVar10 <= local_60 - uVar9;
          }
          if (!bVar21) {
            bVar2 = true;
          }
          local_80 = uVar9 + uVar10;
          local_7c = ((int)uVar9 >> 0x1f) + uVar14 + CARRY4(uVar9,uVar10);
        }
        else {
          bVar2 = true;
        }
        if (local_40 == (int *)0x0) {
LAB_007a45fa:
          iVar5 = 1;
        }
        else {
          if ((uint)local_40[2] < (uint)local_40[3]) {
            local_40[2] = local_40[2] + 1;
          }
          else {
            (**(code **)(*local_40 + 0x28))();
            local_3c = 0xffffffff;
            if (local_40 == (int *)0x0) goto LAB_007a45fa;
          }
          local_3c = 0xffffffff;
          if ((byte *)local_40[2] < (byte *)local_40[3]) {
            uVar19 = (uint)*(byte *)local_40[2];
          }
          else {
            uVar19 = (**(code **)(*local_40 + 0x24))();
            if (uVar19 == 0xffffffff) {
              local_40 = (int *)0x0;
              iVar5 = 1;
              goto LAB_007a4596;
            }
          }
          iVar5 = 0;
          local_3c = uVar19;
        }
LAB_007a4596:
        if (param_5 == (int *)0x0) {
          iVar15 = 1;
        }
        else if (param_6 == 0xffffffff) {
          if ((byte *)param_5[2] < (byte *)param_5[3]) {
            uVar19 = (uint)*(byte *)param_5[2];
          }
          else {
            uVar19 = (**(code **)(*param_5 + 0x24))();
            if (uVar19 == 0xffffffff) {
              param_5 = (int *)0x0;
              iVar15 = 1;
              goto LAB_007a45a8;
            }
          }
          iVar15 = 0;
          param_6 = uVar19;
        }
        else {
          iVar15 = 0;
        }
LAB_007a45a8:
        if (iVar15 == iVar5) goto LAB_007a43d2;
        bVar3 = FUN_0079fc40(&local_40);
        uVar19 = (uint)bVar3;
      } while( true );
    }
    local_80 = 0;
    local_7c = 0;
    bVar2 = false;
    bVar21 = false;
  }
  else {
    if (!bVar1) {
      local_80 = 0;
      local_7c = 0;
      do {
        if ((*(char *)(iVar4 + 0x10) == '\0') || (*(byte *)(iVar4 + 0x25) != uVar19)) {
          if ((*(byte *)(iVar4 + 0x24) == uVar19) ||
             (pvVar7 = memchr((void *)(iVar4 + 0x4e),uVar19,uVar16), pvVar7 == (void *)0x0))
          goto LAB_007a44aa;
          uVar19 = (int)pvVar7 - (iVar4 + 0x4e);
          if (0xf < (int)uVar19) {
            uVar19 = uVar19 - 6;
          }
          bVar21 = local_7c <= uVar8;
          if (uVar8 == local_7c) {
            bVar21 = local_80 <= (uint)uVar22;
          }
          if (bVar21) {
            local_6c = local_6c + 1;
            uVar10 = (uint)((ulonglong)local_80 * (ulonglong)uVar17);
            uVar14 = (int)((ulonglong)local_80 * (ulonglong)uVar17 >> 0x20) + uVar17 * local_7c;
            uVar9 = (iStack_5c - ((int)uVar19 >> 0x1f)) - (uint)(local_60 < uVar19);
            bVar21 = uVar14 <= uVar9;
            if (uVar9 == uVar14) {
              bVar21 = uVar10 <= local_60 - uVar19;
            }
            if (!bVar21) {
              bVar2 = true;
            }
            local_80 = uVar19 + uVar10;
            local_7c = ((int)uVar19 >> 0x1f) + uVar14 + CARRY4(uVar19,uVar10);
          }
          else {
            bVar2 = true;
          }
        }
        else {
          if (local_6c == 0) {
            bVar21 = true;
            goto LAB_007a43d6;
          }
          FUN_007c640c(local_2c,local_6c & 0xff);
          local_6c = 0;
        }
        cVar18 = cVar13;
        if (local_40 != (int *)0x0) {
          if ((uint)local_40[2] < (uint)local_40[3]) {
            local_40[2] = local_40[2] + 1;
          }
          else {
            (**(code **)(*local_40 + 0x28))();
            local_3c = 0xffffffff;
            if (local_40 == (int *)0x0) goto LAB_007a43bc;
          }
          local_3c = 0xffffffff;
          if ((byte *)local_40[2] < (byte *)local_40[3]) {
            uVar19 = (uint)*(byte *)local_40[2];
          }
          else {
            uVar19 = (**(code **)(*local_40 + 0x24))();
            if (uVar19 == 0xffffffff) {
              local_40 = (int *)0x0;
              goto LAB_007a43bc;
            }
          }
          local_3c = uVar19;
          cVar18 = '\0';
        }
LAB_007a43bc:
        cVar11 = cVar13;
        if (param_5 == (int *)0x0) {
LAB_007a43ce:
          if (cVar11 == cVar18) goto LAB_007a43d2;
        }
        else {
          if (param_6 != 0xffffffff) {
            cVar11 = '\0';
            goto LAB_007a43ce;
          }
          if ((byte *)param_5[2] < (byte *)param_5[3]) {
            uVar19 = (uint)*(byte *)param_5[2];
          }
          else {
            uVar19 = (**(code **)(*param_5 + 0x24))();
            if (uVar19 == 0xffffffff) {
              param_5 = (int *)0x0;
              goto LAB_007a43ce;
            }
          }
          param_6 = uVar19;
          if (cVar18 == '\0') goto LAB_007a43d2;
        }
        bVar3 = FUN_0079fc40(&local_40);
        uVar19 = (uint)bVar3;
      } while( true );
    }
    bVar2 = false;
    local_80 = 0;
    local_7c = 0;
    bVar21 = bVar2;
  }
LAB_007a43d6:
  iVar5 = *(int *)(local_2c[0] + -0xc);
joined_r0x007a44b6:
  if (iVar5 != 0) {
    FUN_007c640c(local_2c,local_6c & 0xff);
    iVar5 = FUN_007c7b7c(*(undefined4 *)(iVar4 + 8),*(undefined4 *)(iVar4 + 0xc),local_2c);
    if (iVar5 == 0) {
      *param_8 = 4;
    }
  }
  bVar12 = (bool)(bVar12 ^ 1);
  if (local_6c != 0) {
    bVar12 = false;
  }
  if (((bVar12) && (*(int *)(local_2c[0] + -0xc) == 0)) || (bVar21)) {
    *param_9 = 0;
    param_9[1] = 0;
    *param_8 = 4;
  }
  else if (bVar2) {
    if (bVar20) {
      *param_9 = 0;
      param_9[1] = 0x80000000;
    }
    else {
      *param_9 = 0xffffffff;
      param_9[1] = 0x7fffffff;
    }
    *param_8 = 4;
  }
  else {
    if (bVar20) {
      bVar20 = local_80 != 0;
      local_80 = -local_80;
      local_7c = -local_7c - (uint)bVar20;
    }
    *param_9 = local_80;
    param_9[1] = local_7c;
  }
  if (bVar1) {
    *param_8 = *param_8 | 2;
  }
  *param_1 = (int)local_40;
  param_1[1] = local_3c;
  FUN_007c5900(local_2c[0] + -0xc,auStack_30);
  return param_1;
LAB_007a47a0:
  cVar13 = *(char *)(iVar4 + 0x10);
  goto joined_r0x007a46b0;
LAB_007a44aa:
  bVar21 = false;
  iVar5 = *(int *)(local_2c[0] + -0xc);
  goto joined_r0x007a44b6;
LAB_007a43d2:
  bVar1 = true;
  bVar21 = false;
  goto LAB_007a43d6;
}

// ---- FUN_007a4820  @ 0x7a4820
undefined4
FUN_007a4820(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5,undefined4 param_6,undefined4 param_7,undefined4 param_8,
            undefined4 param_9)

{
  FUN_007a4208(param_1,param_2,param_3,param_4,param_5,param_6,param_7,param_8,param_9);
  return param_1;
}

// ---- FUN_007a485c  @ 0x7a485c
/* WARNING: Restarted to delay deadcode elimination for space: stack */

undefined4 *
FUN_007a485c(undefined4 *param_1,undefined4 param_2,int *param_3,uint param_4,int *param_5,
            uint param_6,int param_7,uint *param_8,uint *param_9)

{
  bool bVar1;
  bool bVar2;
  byte bVar3;
  int iVar4;
  int iVar5;
  undefined4 uVar6;
  void *pvVar7;
  uint uVar8;
  uint uVar9;
  bool bVar10;
  char cVar11;
  char cVar12;
  uint uVar13;
  int iVar14;
  char cVar15;
  uint uVar16;
  uint uVar17;
  uint uVar18;
  uint uVar19;
  bool bVar20;
  bool bVar21;
  undefined8 uVar22;
  uint local_78;
  uint local_74;
  uint local_64;
  int *local_40;
  uint local_3c;
  undefined1 auStack_34 [4];
  undefined1 auStack_30 [4];
  undefined1 *local_2c [2];
  
  iVar5 = param_7;
  local_40 = param_3;
  local_3c = param_4;
  iVar4 = FUN_0079f3dc(auStack_34,param_7 + 0x6c);
  uVar16 = *(uint *)(iVar5 + 0xc) & 0x4a;
  if (uVar16 == 0x40) {
    uVar19 = 8;
  }
  else if (uVar16 == 8) {
    uVar19 = 0x10;
  }
  else {
    uVar19 = 10;
  }
  iVar5 = FUN_0079fc7c(&local_40,&param_5);
  if (iVar5 == 0) {
    bVar3 = FUN_0079fc40(&local_40);
    uVar17 = (uint)bVar3;
    bVar20 = *(byte *)(iVar4 + 0x4a) == uVar17;
    if ((!bVar20) && (*(byte *)(iVar4 + 0x4b) != uVar17)) {
      cVar12 = *(char *)(iVar4 + 0x10);
LAB_007a4c22:
      local_64 = 0;
      bVar10 = false;
      do {
        bVar1 = false;
        if (((cVar12 != '\0') && (*(byte *)(iVar4 + 0x25) == uVar17)) ||
           (*(byte *)(iVar4 + 0x24) == uVar17)) goto joined_r0x007a4ca4;
        if (*(byte *)(iVar4 + 0x4e) == uVar17) {
          bVar10 = (bool)(bVar10 ^ 1);
          if (uVar19 == 10) {
            bVar10 = true;
          }
          if (!bVar10) goto LAB_007a4c52;
          if (uVar16 == 0) {
            bVar10 = true;
            uVar19 = 8;
            local_64 = uVar16;
          }
          else if (uVar19 == 8) {
            bVar10 = true;
            local_64 = 0;
          }
          else {
            bVar10 = true;
            local_64 = local_64 + 1;
          }
        }
        else {
          if (!bVar10) goto joined_r0x007a4ca4;
LAB_007a4c52:
          if ((*(byte *)(iVar4 + 0x4c) != uVar17) && (*(byte *)(iVar4 + 0x4d) != uVar17)) {
            bVar10 = true;
            goto joined_r0x007a4ca4;
          }
          if (uVar16 == 0) {
            uVar19 = 0x10;
            bVar10 = false;
            local_64 = uVar16;
          }
          else {
            if (uVar19 != 0x10) {
              bVar10 = true;
              uVar16 = uVar19;
              goto LAB_007a48fa;
            }
            bVar10 = false;
            local_64 = 0;
          }
        }
        if (local_40 != (int *)0x0) {
          if ((uint)local_40[2] < (uint)local_40[3]) {
            local_40[2] = local_40[2] + 1;
          }
          else {
            (**(code **)(*local_40 + 0x28))();
          }
          local_3c = 0xffffffff;
        }
        iVar5 = FUN_0079fc7c(&local_40,&param_5);
        if (iVar5 != 0) {
          bVar1 = true;
          cVar12 = *(char *)(iVar4 + 0x10);
          goto joined_r0x007a4ca4;
        }
        bVar3 = FUN_0079fc40(&local_40);
        uVar17 = (uint)bVar3;
        if (!bVar10) goto LAB_007a4d82;
        cVar12 = *(char *)(iVar4 + 0x10);
      } while( true );
    }
    cVar12 = *(char *)(iVar4 + 0x10);
    if ((cVar12 != '\0') && (*(byte *)(iVar4 + 0x25) == uVar17)) {
      cVar12 = '\x01';
      goto LAB_007a4c22;
    }
    if (*(byte *)(iVar4 + 0x24) == uVar17) goto LAB_007a4c22;
    uVar6 = FUN_0079f30c(&local_40);
    iVar5 = FUN_0079fc7c(uVar6,&param_5);
    if (iVar5 == 0) {
      bVar3 = FUN_0079fc40(&local_40);
      cVar12 = *(char *)(iVar4 + 0x10);
      uVar17 = (uint)bVar3;
      goto LAB_007a4c22;
    }
  }
  else {
    uVar17 = 0;
    bVar20 = false;
  }
  cVar12 = *(char *)(iVar4 + 0x10);
  bVar1 = true;
  local_64 = 0;
  bVar10 = false;
joined_r0x007a4ca4:
  uVar16 = uVar19;
  if (uVar19 == 0x10) {
    uVar16 = 0x16;
  }
LAB_007a48fa:
  local_2c[0] = &DAT_00972528;
  if (cVar12 != '\0') {
    FUN_007c60a0(local_2c,0x20);
  }
  uVar22 = __aeabi_uldivmod(0xffffffff,0xffffffff,uVar19,0);
  uVar8 = (uint)((ulonglong)uVar22 >> 0x20);
  cVar12 = *(char *)(iVar4 + 100);
  bVar2 = bVar1;
  if (cVar12 == '\0') {
    if (!bVar1) {
      local_78 = 0;
      local_74 = 0;
      do {
        if (uVar16 < 0xb) {
          if ((uVar17 < 0x30) || (uVar16 + 0x30 <= uVar17)) goto LAB_007a4ac8;
          uVar18 = uVar17 - 0x30;
        }
        else {
          uVar18 = uVar17 - 0x30;
          if (9 < (uVar18 & 0xff)) {
            if (uVar17 - 0x61 < 6) {
              uVar18 = uVar17 - 0x57;
            }
            else {
              if (5 < uVar17 - 0x41) goto LAB_007a4ac8;
              uVar18 = uVar17 - 0x37;
            }
          }
        }
        bVar21 = local_74 <= uVar8;
        if (uVar8 == local_74) {
          bVar21 = local_78 <= (uint)uVar22;
        }
        if (bVar21) {
          uVar9 = (uint)((ulonglong)local_78 * (ulonglong)uVar19);
          local_64 = local_64 + 1;
          uVar17 = ~((int)uVar18 >> 0x1f);
          uVar13 = (int)((ulonglong)local_78 * (ulonglong)uVar19 >> 0x20) + uVar19 * local_74;
          bVar21 = uVar13 <= uVar17;
          if (uVar17 == uVar13) {
            bVar21 = uVar9 <= ~uVar18;
          }
          if (!bVar21) {
            bVar2 = true;
          }
          local_78 = uVar18 + uVar9;
          local_74 = ((int)uVar18 >> 0x1f) + uVar13 + CARRY4(uVar18,uVar9);
        }
        else {
          bVar2 = true;
        }
        if (local_40 == (int *)0x0) {
LAB_007a4a7c:
          iVar5 = 1;
        }
        else {
          if ((uint)local_40[2] < (uint)local_40[3]) {
            local_40[2] = local_40[2] + 1;
          }
          else {
            (**(code **)(*local_40 + 0x28))();
            local_3c = 0xffffffff;
            if (local_40 == (int *)0x0) goto LAB_007a4a7c;
          }
          local_3c = 0xffffffff;
          if ((byte *)local_40[2] < (byte *)local_40[3]) {
            uVar17 = (uint)*(byte *)local_40[2];
          }
          else {
            uVar17 = (**(code **)(*local_40 + 0x24))();
            if (uVar17 == 0xffffffff) {
              local_40 = (int *)0x0;
              iVar5 = 1;
              goto LAB_007a49e0;
            }
          }
          iVar5 = 0;
          local_3c = uVar17;
        }
LAB_007a49e0:
        if (param_5 == (int *)0x0) {
          iVar14 = 1;
LAB_007a49f2:
          if (iVar5 == iVar14) goto LAB_007a49f6;
        }
        else {
          if (param_6 != 0xffffffff) {
            iVar14 = 0;
            goto LAB_007a49f2;
          }
          if ((byte *)param_5[2] < (byte *)param_5[3]) {
            uVar17 = (uint)*(byte *)param_5[2];
          }
          else {
            uVar17 = (**(code **)(*param_5 + 0x24))();
            if (uVar17 == 0xffffffff) {
              param_5 = (int *)0x0;
              iVar14 = 1;
              goto LAB_007a49f2;
            }
          }
          param_6 = uVar17;
          if (iVar5 == 0) goto LAB_007a49f6;
        }
        bVar3 = FUN_0079fc40(&local_40);
        uVar17 = (uint)bVar3;
      } while( true );
    }
    local_78 = 0;
    local_74 = 0;
    bVar21 = false;
    bVar2 = false;
  }
  else {
    if (!bVar1) {
      local_78 = 0;
      local_74 = 0;
      do {
        if ((*(char *)(iVar4 + 0x10) == '\0') || (*(byte *)(iVar4 + 0x25) != uVar17)) {
          if ((*(byte *)(iVar4 + 0x24) == uVar17) ||
             (pvVar7 = memchr((void *)(iVar4 + 0x4e),uVar17,uVar16), pvVar7 == (void *)0x0))
          goto LAB_007a4ac8;
          uVar17 = (int)pvVar7 - (iVar4 + 0x4e);
          if (0xf < (int)uVar17) {
            uVar17 = uVar17 - 6;
          }
          bVar21 = local_74 <= uVar8;
          if (uVar8 == local_74) {
            bVar21 = local_78 <= (uint)uVar22;
          }
          if (bVar21) {
            local_64 = local_64 + 1;
            uVar18 = (uint)((ulonglong)local_78 * (ulonglong)uVar19);
            uVar13 = ~((int)uVar17 >> 0x1f);
            uVar9 = (int)((ulonglong)local_78 * (ulonglong)uVar19 >> 0x20) + uVar19 * local_74;
            bVar21 = uVar9 <= uVar13;
            if (uVar13 == uVar9) {
              bVar21 = uVar18 <= ~uVar17;
            }
            if (!bVar21) {
              bVar2 = true;
            }
            local_78 = uVar17 + uVar18;
            local_74 = ((int)uVar17 >> 0x1f) + uVar9 + CARRY4(uVar17,uVar18);
          }
          else {
            bVar2 = true;
          }
        }
        else {
          if (local_64 == 0) {
            bVar21 = true;
            goto LAB_007a49fa;
          }
          FUN_007c640c(local_2c,local_64 & 0xff);
          local_64 = 0;
        }
        cVar15 = cVar12;
        if (local_40 != (int *)0x0) {
          if ((uint)local_40[2] < (uint)local_40[3]) {
            local_40[2] = local_40[2] + 1;
          }
          else {
            (**(code **)(*local_40 + 0x28))();
            local_3c = 0xffffffff;
            if (local_40 == (int *)0x0) goto LAB_007a4bb6;
          }
          local_3c = 0xffffffff;
          if ((byte *)local_40[2] < (byte *)local_40[3]) {
            uVar17 = (uint)*(byte *)local_40[2];
          }
          else {
            uVar17 = (**(code **)(*local_40 + 0x24))();
            if (uVar17 == 0xffffffff) {
              local_40 = (int *)0x0;
              goto LAB_007a4bb6;
            }
          }
          local_3c = uVar17;
          cVar15 = '\0';
        }
LAB_007a4bb6:
        cVar11 = cVar12;
        if (param_5 != (int *)0x0) {
          if (param_6 == 0xffffffff) {
            if ((byte *)param_5[2] < (byte *)param_5[3]) {
              uVar17 = (uint)*(byte *)param_5[2];
            }
            else {
              uVar17 = (**(code **)(*param_5 + 0x24))();
              if (uVar17 == 0xffffffff) {
                param_5 = (int *)0x0;
                goto LAB_007a4bc8;
              }
            }
            param_6 = uVar17;
            cVar11 = '\0';
          }
          else {
            cVar11 = '\0';
          }
        }
LAB_007a4bc8:
        if (cVar11 == cVar15) goto LAB_007a49f6;
        bVar3 = FUN_0079fc40(&local_40);
        uVar17 = (uint)bVar3;
      } while( true );
    }
    bVar2 = false;
    local_78 = 0;
    local_74 = 0;
    bVar21 = false;
  }
LAB_007a49fa:
  iVar5 = *(int *)(local_2c[0] + -0xc);
joined_r0x007a4ad2:
  if (iVar5 != 0) {
    FUN_007c640c(local_2c,local_64 & 0xff);
    iVar5 = FUN_007c7b7c(*(undefined4 *)(iVar4 + 8),*(undefined4 *)(iVar4 + 0xc),local_2c);
    if (iVar5 == 0) {
      *param_8 = 4;
    }
  }
  bVar10 = (bool)(bVar10 ^ 1);
  if (local_64 != 0) {
    bVar10 = false;
  }
  if (((bVar10) && (*(int *)(local_2c[0] + -0xc) == 0)) || (bVar21)) {
    uVar16 = 0;
    uVar19 = 0;
  }
  else {
    if (!bVar2) {
      if (bVar20) {
        bVar20 = local_78 != 0;
        local_78 = -local_78;
        local_74 = -local_74 - (uint)bVar20;
      }
      *param_9 = local_78;
      param_9[1] = local_74;
      goto LAB_007a4a2e;
    }
    uVar16 = 0xffffffff;
    uVar19 = 0xffffffff;
  }
  *param_9 = uVar16;
  param_9[1] = uVar19;
  *param_8 = 4;
LAB_007a4a2e:
  if (bVar1) {
    *param_8 = *param_8 | 2;
  }
  *param_1 = local_40;
  param_1[1] = local_3c;
  FUN_007c5900(local_2c[0] + -0xc,auStack_30);
  return param_1;
LAB_007a4d82:
  cVar12 = *(char *)(iVar4 + 0x10);
  goto joined_r0x007a4ca4;
LAB_007a4ac8:
  bVar21 = false;
  iVar5 = *(int *)(local_2c[0] + -0xc);
  goto joined_r0x007a4ad2;
LAB_007a49f6:
  bVar21 = false;
  bVar1 = true;
  goto LAB_007a49fa;
}

// ---- FUN_007a4e00  @ 0x7a4e00
undefined4
FUN_007a4e00(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5,undefined4 param_6,undefined4 param_7,undefined4 param_8,
            undefined4 param_9)

{
  FUN_007a485c(param_1,param_2,param_3,param_4,param_5,param_6,param_7,param_8,param_9);
  return param_1;
}

// ---- FUN_007a4e90  @ 0x7a4e90
undefined4 * FUN_007a4e90(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_007a4e90_1_0093e020;
  FUN_007acbd8(param_1 + 2);
  *param_1 = &PTR_LAB_0079ac20_1_0093dc60;
  FUN_007afcc4(param_1);
  return param_1;
}

// ---- FUN_007a4eec  @ 0x7a4eec
undefined4 * FUN_007a4eec(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_007a4eec_1_0093e060;
  FUN_007acbd8(param_1 + 2);
  *param_1 = &PTR_LAB_007b0f5c_1_0093eb58;
  FUN_007afcc4(param_1);
  return param_1;
}

// ---- FUN_007a4f48  @ 0x7a4f48
undefined4 * FUN_007a4f48(undefined4 *param_1,int param_2)

{
  undefined4 uVar1;
  
  param_1[1] = (uint)(param_2 != 0);
  *param_1 = &PTR_FUN_007a4e90_1_0093e020;
  uVar1 = FUN_007b0058();
  param_1[2] = uVar1;
  return param_1;
}

// ---- FUN_007a4f84  @ 0x7a4f84
undefined4 * FUN_007a4f84(undefined4 *param_1,undefined4 param_2,int param_3)

{
  undefined4 uVar1;
  undefined4 local_c;
  
  param_1[1] = (uint)(param_3 != 0);
  *param_1 = &PTR_FUN_007a4e90_1_0093e020;
  local_c = param_2;
  uVar1 = FUN_007acbe0(&local_c);
  param_1[2] = uVar1;
  return param_1;
}

// ---- FUN_007a4fb0  @ 0x7a4fb0
undefined4 * FUN_007a4fb0(undefined4 *param_1,int param_2)

{
  undefined4 uVar1;
  
  param_1[1] = (uint)(param_2 != 0);
  *param_1 = &PTR_FUN_007a4eec_1_0093e060;
  uVar1 = FUN_007b0058();
  param_1[2] = uVar1;
  return param_1;
}

// ---- FUN_007a4fec  @ 0x7a4fec
undefined4 * FUN_007a4fec(undefined4 *param_1,undefined4 param_2,int param_3)

{
  undefined4 uVar1;
  undefined4 local_c;
  
  param_1[1] = (uint)(param_3 != 0);
  *param_1 = &PTR_FUN_007a4eec_1_0093e060;
  local_c = param_2;
  uVar1 = FUN_007acbe0(&local_c);
  param_1[2] = uVar1;
  return param_1;
}

// ---- FUN_007a5108  @ 0x7a5108
int * FUN_007a5108(int *param_1,int *param_2,undefined4 param_3)

{
  int iVar1;
  
  iVar1 = *param_2;
  *param_1 = iVar1;
  *(int *)((int)param_1 + *(int *)(iVar1 + -0xc)) = param_2[1];
  param_1[1] = 0;
  FUN_007990d4(*(int *)(iVar1 + -0xc) + (int)param_1,param_3);
  return param_1;
}

// ---- FUN_007a51b8  @ 0x7a51b8
int * FUN_007a51b8(int *param_1,code *param_2)

{
  (*param_2)(*(int *)(*param_1 + -0xc) + (int)param_1);
  return param_1;
}

// ---- FUN_007a51cc  @ 0x7a51cc
int * FUN_007a51cc(int *param_1,code *param_2)

{
  (*param_2)(*(int *)(*param_1 + -0xc) + (int)param_1);
  return param_1;
}

// ---- FUN_007a51e4  @ 0x7a51e4
int * FUN_007a51e4(int *param_1,undefined1 *param_2,int param_3)

{
  uint uVar1;
  void *pvVar2;
  uint uVar3;
  int iVar4;
  byte *pbVar5;
  uint uVar6;
  byte *pbVar7;
  int iVar8;
  int *piVar9;
  size_t __n;
  void *__s;
  undefined1 *__dest;
  char local_24 [16];
  
  piVar9 = *(int **)((int)param_1 + *(int *)(*param_1 + -0xc) + 0x7c);
  if (piVar9 == (int *)0x0) {
                    /* WARNING: Subroutine does not return */
    FUN_007c4874();
  }
  if ((char)piVar9[7] == '\0') {
    FUN_007af570(piVar9);
    uVar6 = (**(code **)(*piVar9 + 0x18))(piVar9,10);
  }
  else {
    uVar6 = (uint)*(byte *)((int)piVar9 + 0x27);
  }
  param_1[1] = 0;
  FUN_007a52b8(local_24,param_1,1);
  uVar1 = 0;
  __dest = param_2;
  if (local_24[0] == '\0') {
LAB_007ae51a:
    if (0 < param_3) {
      *__dest = 0;
    }
    if (param_1[1] == 0) {
      uVar1 = uVar1 | 4;
    }
    else if (uVar1 == 0) {
      return param_1;
    }
    iVar8 = *(int *)(*param_1 + -0xc) + (int)param_1;
    FUN_00798e64(iVar8,*(uint *)(iVar8 + 0x14) | uVar1);
    return param_1;
  }
  piVar9 = *(int **)((int)param_1 + *(int *)(*param_1 + -0xc) + 0x78);
  pbVar7 = (byte *)piVar9[2];
  if ((byte *)piVar9[3] <= pbVar7) {
    uVar1 = FUN_002e7130(piVar9);
    goto LAB_007ae4bc;
  }
LAB_007ae4ba:
  uVar1 = (uint)*pbVar7;
LAB_007ae4bc:
  iVar8 = param_1[1];
  __dest = param_2;
  do {
    if (param_3 <= iVar8 + 1) {
      if (uVar1 == 0xffffffff) {
LAB_007ae518:
        uVar1 = 2;
      }
      else if (uVar1 == uVar6) {
LAB_007ae554:
        uVar3 = piVar9[2];
        uVar6 = piVar9[3];
        param_1[1] = iVar8 + 1;
        if (uVar3 < uVar6) {
          uVar1 = 0;
          piVar9[2] = uVar3 + 1;
        }
        else {
          FUN_002e713c(piVar9);
          uVar1 = 0;
        }
      }
      else {
        uVar1 = 4;
      }
      goto LAB_007ae51a;
    }
    if (uVar1 == 0xffffffff) goto LAB_007ae518;
    if (uVar1 == uVar6) goto LAB_007ae554;
    __s = (void *)piVar9[2];
    __n = (param_3 - iVar8) - 1;
    if (piVar9[3] - (int)__s <= (int)__n) {
      __n = piVar9[3] - (int)__s;
    }
    if ((int)__n < 2) {
      *__dest = (char)uVar1;
      param_2 = __dest + 1;
      pbVar7 = (byte *)piVar9[2];
      pbVar5 = (byte *)piVar9[3];
      param_1[1] = param_1[1] + 1;
      if (pbVar7 < pbVar5) {
        pbVar7 = pbVar7 + 1;
        piVar9[2] = (int)pbVar7;
      }
      else {
        uVar1 = FUN_002e713c(piVar9);
        if (uVar1 == 0xffffffff) goto LAB_007ae4bc;
        pbVar7 = (byte *)piVar9[2];
        pbVar5 = (byte *)piVar9[3];
      }
      if (pbVar7 < pbVar5) goto LAB_007ae4ba;
      uVar1 = FUN_002e7130(piVar9);
      goto LAB_007ae4bc;
    }
    pvVar2 = memchr(__s,uVar6,__n);
    if (pvVar2 != (void *)0x0) {
      __n = (int)pvVar2 - (int)__s;
    }
    param_2 = __dest + __n;
    memcpy(__dest,__s,__n);
    iVar4 = piVar9[2];
    uVar1 = piVar9[3];
    uVar3 = iVar4 + __n;
    iVar8 = param_1[1];
    piVar9[2] = uVar3;
    iVar8 = iVar8 + __n;
    param_1[1] = iVar8;
    if (uVar1 <= uVar3) break;
    uVar1 = (uint)*(byte *)(iVar4 + __n);
    __dest = param_2;
  } while( true );
  uVar1 = (**(code **)(*piVar9 + 0x24))(piVar9);
  goto LAB_007ae4bc;
}

// ---- FUN_007a522c  @ 0x7a522c
int * FUN_007a522c(int *param_1,int *param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  int iVar2;
  
  iVar2 = *param_2;
  *param_1 = iVar2;
  iVar1 = param_2[1];
  *(int *)((int)param_1 + *(int *)(iVar2 + -0xc)) = iVar1;
  param_1[1] = 0;
  FUN_007990d4(*(int *)(iVar2 + -0xc) + (int)param_1,0,iVar1,iVar2,param_4);
  return param_1;
}

// ---- FUN_007a52b8  @ 0x7a52b8
undefined1 * FUN_007a52b8(undefined1 *param_1,int *param_2,int param_3)

{
  uint uVar1;
  byte *pbVar2;
  int iVar3;
  byte *pbVar4;
  uint uVar5;
  int iVar6;
  int iVar7;
  
  iVar3 = *param_2;
  uVar1 = 0;
  *param_1 = 0;
  iVar3 = *(int *)(iVar3 + -0xc) + (int)param_2;
  uVar5 = *(uint *)(iVar3 + 0x14);
  if (uVar5 == 0) {
    if (*(int *)(iVar3 + 0x70) != 0) {
      FUN_007bb250();
      iVar3 = *(int *)(*param_2 + -0xc) + (int)param_2;
    }
    if ((param_3 == 0) && (*(int *)(iVar3 + 0xc) << 0x13 < 0)) {
      iVar6 = *(int *)(iVar3 + 0x78);
      if (*(byte **)(iVar6 + 8) < *(byte **)(iVar6 + 0xc)) {
        uVar1 = (uint)**(byte **)(iVar6 + 8);
      }
      else {
        uVar1 = FUN_002e710c(iVar6);
        iVar3 = *(int *)(*param_2 + -0xc) + (int)param_2;
      }
      iVar7 = *(int *)(iVar3 + 0x7c);
      if (iVar7 == 0) {
                    /* WARNING: Subroutine does not return */
        FUN_007c4874();
      }
      if (uVar1 == 0xffffffff) {
LAB_007a5362:
        uVar5 = *(uint *)(iVar3 + 0x14);
        uVar1 = 2;
        goto LAB_007a5318;
      }
      if ((int)((uint)*(byte *)(*(int *)(iVar7 + 0x18) + (uVar1 & 0xff)) << 0x1c) < 0) {
        do {
          pbVar2 = *(byte **)(iVar6 + 0xc);
          if (pbVar2 <= *(byte **)(iVar6 + 8)) {
            iVar3 = FUN_002e7100(iVar6);
            if (iVar3 != -1) {
              pbVar4 = *(byte **)(iVar6 + 8);
              pbVar2 = *(byte **)(iVar6 + 0xc);
              goto LAB_007a5336;
            }
LAB_007a535a:
            iVar3 = *(int *)(*param_2 + -0xc) + (int)param_2;
            goto LAB_007a5362;
          }
          pbVar4 = *(byte **)(iVar6 + 8) + 1;
          *(byte **)(iVar6 + 8) = pbVar4;
LAB_007a5336:
          if (pbVar4 < pbVar2) {
            uVar1 = (uint)*pbVar4;
          }
          else {
            uVar1 = FUN_002e710c(iVar6);
            if (uVar1 == 0xffffffff) goto LAB_007a535a;
          }
        } while ((int)((uint)*(byte *)(*(int *)(iVar7 + 0x18) + (uVar1 & 0xff)) << 0x1c) < 0);
        iVar3 = *(int *)(*param_2 + -0xc) + (int)param_2;
      }
    }
    uVar5 = *(uint *)(iVar3 + 0x14);
    if (uVar5 == 0) {
      *param_1 = 1;
      return param_1;
    }
    uVar1 = 0;
  }
LAB_007a5318:
  FUN_00798e64(iVar3,uVar1 | 4 | uVar5);
  return param_1;
}

// ---- FUN_007a5390  @ 0x7a5390
int * FUN_007a5390(int *param_1,undefined2 *param_2)

{
  int *piVar1;
  int iVar2;
  char local_3c [4];
  uint local_38;
  int local_34;
  undefined1 auStack_30 [8];
  undefined4 local_28;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  
  FUN_007a52b8(local_3c,param_1,0);
  if (local_3c[0] != '\0') {
    local_38 = 0;
    iVar2 = *(int *)(*param_1 + -0xc) + (int)param_1;
    piVar1 = *(int **)(iVar2 + 0x84);
    if (piVar1 == (int *)0x0) {
                    /* WARNING: Subroutine does not return */
      FUN_007c4874();
    }
    local_20 = 0;
    local_1c = 0xffffffff;
    local_28 = *(undefined4 *)(iVar2 + 0x78);
    local_24 = 0xffffffff;
    (**(code **)(*piVar1 + 0xc))
              (auStack_30,piVar1,local_28,0xffffffff,0,0xffffffff,iVar2,&local_38,&local_34);
    if (local_34 < -0x8000) {
      *param_2 = 0x8000;
      local_38 = local_38 | 4;
    }
    else if (local_34 < 0x8000) {
      *param_2 = (short)local_34;
    }
    else {
      local_38 = local_38 | 4;
      *param_2 = 0x7fff;
    }
    if (local_38 != 0) {
      iVar2 = *(int *)(*param_1 + -0xc) + (int)param_1;
      FUN_00798e64(iVar2,*(uint *)(iVar2 + 0x14) | local_38);
      return param_1;
    }
  }
  return param_1;
}

// ---- FUN_007a54ac  @ 0x7a54ac
int * FUN_007a54ac(int *param_1,undefined4 *param_2)

{
  int *piVar1;
  int iVar2;
  char local_3c [4];
  uint local_38;
  undefined4 local_34;
  undefined1 auStack_30 [8];
  undefined4 local_28;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  
  FUN_007a52b8(local_3c,param_1,0);
  if (local_3c[0] != '\0') {
    local_38 = 0;
    iVar2 = *(int *)(*param_1 + -0xc) + (int)param_1;
    piVar1 = *(int **)(iVar2 + 0x84);
    if (piVar1 == (int *)0x0) {
                    /* WARNING: Subroutine does not return */
      FUN_007c4874();
    }
    local_20 = 0;
    local_1c = 0xffffffff;
    local_28 = *(undefined4 *)(iVar2 + 0x78);
    local_24 = 0xffffffff;
    (**(code **)(*piVar1 + 0xc))
              (auStack_30,piVar1,local_28,0xffffffff,0,0xffffffff,iVar2,&local_38,&local_34);
    *param_2 = local_34;
    if (local_38 != 0) {
      iVar2 = *(int *)(*param_1 + -0xc) + (int)param_1;
      FUN_00798e64(iVar2,*(uint *)(iVar2 + 0x14) | local_38);
      return param_1;
    }
  }
  return param_1;
}

// ---- FUN_007a5590  @ 0x7a5590
int * FUN_007a5590(int *param_1,int param_2)

{
  int iVar1;
  uint uVar2;
  char local_14 [3];
  char local_11 [5];
  
  FUN_007a52b8(local_14,param_1,0);
  if (local_14[0] == '\0') {
    if (param_2 != 0) {
      return param_1;
    }
  }
  else if (param_2 != 0) {
    iVar1 = FUN_007ad274(*(undefined4 *)((int)param_1 + *(int *)(*param_1 + -0xc) + 0x78),param_2,
                         local_11);
    if (iVar1 == 0) {
      uVar2 = 4;
    }
    else {
      uVar2 = 0;
    }
    if (local_11[0] == '\0') {
      if (uVar2 == 0) {
        return param_1;
      }
    }
    else {
      uVar2 = uVar2 | 2;
    }
    goto LAB_007a55d2;
  }
  uVar2 = 4;
LAB_007a55d2:
  iVar1 = (int)param_1 + *(int *)(*param_1 + -0xc);
  FUN_00798e64(iVar1,uVar2 | *(uint *)(iVar1 + 0x14));
  return param_1;
}

// ---- FUN_007a57ec  @ 0x7a57ec
int * FUN_007a57ec(int *param_1,undefined1 *param_2,int param_3,uint param_4)

{
  uint uVar1;
  byte *pbVar2;
  byte *pbVar3;
  int iVar4;
  undefined1 *puVar5;
  bool bVar6;
  char local_24 [8];
  
  param_1[1] = 0;
  FUN_007a52b8(local_24,param_1,1);
  uVar1 = 0;
  puVar5 = param_2;
  if (local_24[0] != '\0') {
    iVar4 = *(int *)((int)param_1 + *(int *)(*param_1 + -0xc) + 0x78);
    if (*(byte **)(iVar4 + 0xc) <= *(byte **)(iVar4 + 8)) goto LAB_007a5896;
    uVar1 = (uint)**(byte **)(iVar4 + 8);
LAB_007a584a:
    if (param_1[1] + 1 < param_3) {
      if (uVar1 != 0xffffffff) {
        if (uVar1 != param_4) {
          param_2 = puVar5 + 1;
          *puVar5 = (char)uVar1;
          pbVar3 = *(byte **)(iVar4 + 8);
          pbVar2 = *(byte **)(iVar4 + 0xc);
          bVar6 = pbVar3 < pbVar2;
          if (bVar6) {
            pbVar3 = pbVar3 + 1;
          }
          param_1[1] = param_1[1] + 1;
          puVar5 = param_2;
          if (!bVar6) goto LAB_007a589e;
          *(byte **)(iVar4 + 8) = pbVar3;
          goto LAB_007a5844;
        }
        goto LAB_007a5886;
      }
      goto LAB_007a5856;
    }
    if (uVar1 == 0xffffffff) {
LAB_007a5856:
      uVar1 = 2;
    }
    else {
LAB_007a5886:
      uVar1 = 0;
    }
  }
  if (0 < param_3) {
    *puVar5 = 0;
  }
  if (param_1[1] == 0) {
    uVar1 = uVar1 | 4;
  }
  else if (uVar1 == 0) {
    return param_1;
  }
  iVar4 = *(int *)(*param_1 + -0xc) + (int)param_1;
  FUN_00798e64(iVar4,*(uint *)(iVar4 + 0x14) | uVar1);
  return param_1;
LAB_007a589e:
  uVar1 = FUN_002e7100(iVar4);
  if (uVar1 != 0xffffffff) {
    pbVar3 = *(byte **)(iVar4 + 8);
    pbVar2 = *(byte **)(iVar4 + 0xc);
LAB_007a5844:
    if (pbVar3 < pbVar2) {
      uVar1 = (uint)*pbVar3;
    }
    else {
LAB_007a5896:
      uVar1 = FUN_002e710c(iVar4);
      puVar5 = param_2;
    }
  }
  goto LAB_007a584a;
}

// ---- FUN_007a5954  @ 0x7a5954
int * FUN_007a5954(int *param_1,int *param_2,uint param_3)

{
  int iVar1;
  int iVar2;
  uint uVar3;
  uint uVar4;
  byte *pbVar5;
  byte *pbVar6;
  bool bVar7;
  char local_1c [4];
  
  param_1[1] = 0;
  FUN_007a52b8(local_1c,param_1,1);
  if (local_1c[0] == '\0') {
LAB_007a5974:
    uVar4 = 0;
    if (param_1[1] == 0) {
LAB_007a5978:
      uVar4 = uVar4 | 4;
LAB_007a597c:
      iVar1 = *(int *)(*param_1 + -0xc) + (int)param_1;
      FUN_00798e64(iVar1,*(uint *)(iVar1 + 0x14) | uVar4);
    }
    return param_1;
  }
  iVar1 = *(int *)((int)param_1 + *(int *)(*param_1 + -0xc) + 0x78);
  pbVar5 = *(byte **)(iVar1 + 8);
  if (*(byte **)(iVar1 + 0xc) <= pbVar5) goto LAB_007a59da;
LAB_007a59a6:
  uVar3 = (uint)*pbVar5;
  uVar4 = uVar3;
LAB_007a59aa:
  if (param_3 == uVar4) goto LAB_007a5974;
  if ((undefined1 *)param_2[6] <= (undefined1 *)param_2[5]) {
    iVar2 = (**(code **)(*param_2 + 0x34))(param_2);
    if (iVar2 != -1) goto LAB_007a59be;
    if (uVar4 == 0xffffffff) goto LAB_007a59e8;
    goto LAB_007a5974;
  }
  *(undefined1 *)param_2[5] = (char)uVar3;
  param_2[5] = param_2[5] + 1;
LAB_007a59be:
  pbVar5 = *(byte **)(iVar1 + 8);
  pbVar6 = *(byte **)(iVar1 + 0xc);
  bVar7 = pbVar5 < pbVar6;
  if (bVar7) {
    pbVar5 = pbVar5 + 1;
  }
  param_1[1] = param_1[1] + 1;
  if (bVar7) {
    *(byte **)(iVar1 + 8) = pbVar5;
  }
  else {
    iVar2 = FUN_002e7100(iVar1);
    if (iVar2 == -1) goto LAB_007a59e8;
    pbVar5 = *(byte **)(iVar1 + 8);
    pbVar6 = *(byte **)(iVar1 + 0xc);
  }
  if (pbVar6 <= pbVar5) goto LAB_007a59da;
  goto LAB_007a59a6;
LAB_007a59da:
  uVar4 = FUN_002e710c(iVar1);
  uVar3 = uVar4 & 0xff;
  if (uVar4 == 0xffffffff) {
LAB_007a59e8:
    if (param_1[1] == 0) {
      uVar4 = 2;
      goto LAB_007a5978;
    }
    uVar4 = 2;
    goto LAB_007a597c;
  }
  goto LAB_007a59aa;
}

// ---- FUN_007a5b70  @ 0x7a5b70
uint FUN_007a5b70(int *param_1)

{
  int iVar1;
  byte *pbVar2;
  uint uVar3;
  char local_14 [8];
  
  param_1[1] = 0;
  FUN_007a52b8(local_14,param_1,1);
  if (local_14[0] == '\0') {
    uVar3 = 0xffffffff;
  }
  else {
    iVar1 = *(int *)((int)param_1 + *(int *)(*param_1 + -0xc) + 0x78);
    pbVar2 = *(byte **)(iVar1 + 8);
    if (pbVar2 < *(byte **)(iVar1 + 0xc)) {
      uVar3 = (uint)*pbVar2;
    }
    else {
      uVar3 = FUN_002e710c();
      if (uVar3 == 0xffffffff) {
        iVar1 = *(int *)(*param_1 + -0xc) + (int)param_1;
        FUN_00798e64(iVar1,*(uint *)(iVar1 + 0x14) | 2);
        return 0xffffffff;
      }
    }
  }
  return uVar3;
}

// ---- FUN_007a5c24  @ 0x7a5c24
int * FUN_007a5c24(int *param_1,undefined4 param_2,int param_3)

{
  int *piVar1;
  int iVar2;
  char local_14 [4];
  
  param_1[1] = 0;
  FUN_007a52b8(local_14,param_1,1);
  if (local_14[0] != '\0') {
    piVar1 = *(int **)((int)param_1 + *(int *)(*param_1 + -0xc) + 0x78);
    iVar2 = (**(code **)(*piVar1 + 0x20))(piVar1,param_2,param_3);
    param_1[1] = iVar2;
    if (param_3 != iVar2) {
      iVar2 = *(int *)(*param_1 + -0xc) + (int)param_1;
      FUN_00798e64(iVar2,*(uint *)(iVar2 + 0x14) | 6);
      return param_1;
    }
  }
  return param_1;
}

// ---- FUN_007a629c  @ 0x7a629c
int * FUN_007a629c(int *param_1)

{
  byte bVar1;
  int iVar2;
  uint uVar3;
  int iVar4;
  byte *pbVar5;
  byte *pbVar6;
  int iVar7;
  undefined1 auStack_14 [4];
  
  FUN_007afd04(auStack_14,(int)param_1 + *(int *)(*param_1 + -0xc) + 0x6c);
  iVar2 = FUN_0079c760(auStack_14);
  FUN_007b01c0(auStack_14);
  iVar7 = *(int *)((int)param_1 + *(int *)(*param_1 + -0xc) + 0x78);
  if (*(byte **)(iVar7 + 8) < *(byte **)(iVar7 + 0xc)) {
    uVar3 = (uint)**(byte **)(iVar7 + 8);
  }
  else {
    uVar3 = FUN_002e710c(iVar7);
    if (uVar3 == 0xffffffff) {
LAB_007a630e:
      iVar2 = *(int *)(*param_1 + -0xc) + (int)param_1;
      FUN_00798e64(iVar2,*(uint *)(iVar2 + 0x14) | 2);
      return param_1;
    }
  }
  bVar1 = *(byte *)(*(int *)(iVar2 + 0x18) + (uVar3 & 0xff));
  do {
    if (-1 < (int)((uint)bVar1 << 0x1c)) {
      return param_1;
    }
    pbVar5 = *(byte **)(iVar7 + 0xc);
    if (*(byte **)(iVar7 + 8) < pbVar5) {
      pbVar6 = *(byte **)(iVar7 + 8) + 1;
      *(byte **)(iVar7 + 8) = pbVar6;
    }
    else {
      iVar4 = FUN_002e7100(iVar7);
      if (iVar4 == -1) goto LAB_007a630e;
      pbVar6 = *(byte **)(iVar7 + 8);
      pbVar5 = *(byte **)(iVar7 + 0xc);
    }
    if (pbVar6 < pbVar5) {
      uVar3 = (uint)*pbVar6;
    }
    else {
      uVar3 = FUN_002e710c(iVar7);
      if (uVar3 == 0xffffffff) goto LAB_007a630e;
    }
    bVar1 = *(byte *)(*(int *)(iVar2 + 0x18) + (uVar3 & 0xff));
  } while( true );
}

// ---- FUN_007a6350  @ 0x7a6350
int * FUN_007a6350(int *param_1,undefined1 *param_2)

{
  uint uVar1;
  byte *pbVar2;
  int iVar3;
  char local_14 [8];
  
  FUN_007a52b8(local_14,param_1,0);
  if (local_14[0] == '\0') {
    return param_1;
  }
  iVar3 = *(int *)((int)param_1 + *(int *)(*param_1 + -0xc) + 0x78);
  pbVar2 = *(byte **)(iVar3 + 8);
  if (pbVar2 < *(byte **)(iVar3 + 0xc)) {
    uVar1 = (uint)*pbVar2;
    *(byte **)(iVar3 + 8) = pbVar2 + 1;
  }
  else {
    uVar1 = FUN_002e7100(iVar3);
    if (uVar1 == 0xffffffff) {
      iVar3 = *(int *)(*param_1 + -0xc) + (int)param_1;
      FUN_00798e64(iVar3,*(uint *)(iVar3 + 0x14) | 6);
      return param_1;
    }
  }
  *param_2 = (char)uVar1;
  return param_1;
}

// ---- FUN_007a64d4  @ 0x7a64d4
int * FUN_007a64d4(int *param_1,undefined4 param_2)

{
  int *piVar1;
  int iVar2;
  char local_38 [4];
  uint local_34;
  undefined1 auStack_30 [8];
  undefined4 local_28;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  
  FUN_007a52b8(local_38,param_1,0);
  if (local_38[0] != '\0') {
    local_34 = 0;
    iVar2 = *(int *)(*param_1 + -0xc) + (int)param_1;
    piVar1 = *(int **)(iVar2 + 0x84);
    if (piVar1 == (int *)0x0) {
                    /* WARNING: Subroutine does not return */
      FUN_007c4874();
    }
    local_20 = 0;
    local_1c = 0xffffffff;
    local_28 = *(undefined4 *)(iVar2 + 0x78);
    local_24 = 0xffffffff;
    (**(code **)(*piVar1 + 0x10))
              (auStack_30,piVar1,local_28,0xffffffff,0,0xffffffff,iVar2,&local_34,param_2);
    if (local_34 != 0) {
      iVar2 = *(int *)(*param_1 + -0xc) + (int)param_1;
      FUN_00798e64(iVar2,*(uint *)(iVar2 + 0x14) | local_34);
      return param_1;
    }
  }
  return param_1;
}

// ---- FUN_007a6bd0  @ 0x7a6bd0
int * FUN_007a6bd0(int *param_1,undefined4 param_2)

{
  int *piVar1;
  int iVar2;
  char local_38 [4];
  uint local_34;
  undefined1 auStack_30 [8];
  undefined4 local_28;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  
  FUN_007a52b8(local_38,param_1,0);
  if (local_38[0] != '\0') {
    local_34 = 0;
    iVar2 = *(int *)(*param_1 + -0xc) + (int)param_1;
    piVar1 = *(int **)(iVar2 + 0x84);
    if (piVar1 == (int *)0x0) {
                    /* WARNING: Subroutine does not return */
      FUN_007c4874();
    }
    local_20 = 0;
    local_1c = 0xffffffff;
    local_28 = *(undefined4 *)(iVar2 + 0x78);
    local_24 = 0xffffffff;
    (**(code **)(*piVar1 + 0x24))
              (auStack_30,piVar1,local_28,0xffffffff,0,0xffffffff,iVar2,&local_34,param_2);
    if (local_34 != 0) {
      iVar2 = *(int *)(*param_1 + -0xc) + (int)param_1;
      FUN_00798e64(iVar2,*(uint *)(iVar2 + 0x14) | local_34);
      return param_1;
    }
  }
  return param_1;
}

// ---- FUN_007a6bd4  @ 0x7a6bd4
int * FUN_007a6bd4(int *param_1,undefined4 param_2)

{
  int *piVar1;
  int iVar2;
  char local_38 [4];
  uint local_34;
  undefined1 auStack_30 [8];
  undefined4 local_28;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  
  FUN_007a52b8(local_38,param_1,0);
  if (local_38[0] != '\0') {
    local_34 = 0;
    iVar2 = *(int *)(*param_1 + -0xc) + (int)param_1;
    piVar1 = *(int **)(iVar2 + 0x84);
    if (piVar1 == (int *)0x0) {
                    /* WARNING: Subroutine does not return */
      FUN_007c4874();
    }
    local_20 = 0;
    local_1c = 0xffffffff;
    local_28 = *(undefined4 *)(iVar2 + 0x78);
    local_24 = 0xffffffff;
    (**(code **)(*piVar1 + 0x28))
              (auStack_30,piVar1,local_28,0xffffffff,0,0xffffffff,iVar2,&local_34,param_2);
    if (local_34 != 0) {
      iVar2 = *(int *)(*param_1 + -0xc) + (int)param_1;
      FUN_00798e64(iVar2,*(uint *)(iVar2 + 0x14) | local_34);
      return param_1;
    }
  }
  return param_1;
}

// ---- FUN_007a6f20  @ 0x7a6f20
int * FUN_007a6f20(int *param_1,code *param_2)

{
  (*param_2)(*(int *)(*param_1 + -0xc) + (int)param_1);
  return param_1;
}

// ---- FUN_007a6f34  @ 0x7a6f34
int * FUN_007a6f34(int *param_1,code *param_2)

{
  (*param_2)(*(int *)(*param_1 + -0xc) + (int)param_1);
  return param_1;
}

// ---- FUN_007a6f4c  @ 0x7a6f4c
int * FUN_007a6f4c(int *param_1,wchar_t *param_2,int param_3)

{
  int *piVar1;
  wchar_t __c;
  uint uVar2;
  int iVar3;
  size_t sVar4;
  wchar_t *pwVar5;
  wchar_t *pwVar6;
  uint uVar7;
  int iVar8;
  size_t __n;
  wchar_t wVar9;
  char local_24 [16];
  
  piVar1 = *(int **)((int)param_1 + *(int *)(*param_1 + -0xc) + 0x80);
  if (piVar1 == (int *)0x0) {
                    /* WARNING: Subroutine does not return */
    FUN_007c4874();
  }
  __c = (**(code **)(*piVar1 + 0x28))(piVar1,10);
  param_1[1] = 0;
  FUN_007a7008(local_24,param_1,1);
  uVar2 = 0;
  if (local_24[0] == '\0') {
LAB_007aef1a:
    if (0 < param_3) {
      *param_2 = L'\0';
    }
    if (param_1[1] == 0) {
      uVar2 = uVar2 | 4;
    }
    else if (uVar2 == 0) {
      return param_1;
    }
    iVar8 = *(int *)(*param_1 + -0xc) + (int)param_1;
    FUN_007992f0(iVar8,*(uint *)(iVar8 + 0x14) | uVar2);
    return param_1;
  }
  piVar1 = *(int **)((int)param_1 + *(int *)(*param_1 + -0xc) + 0x7c);
  pwVar5 = (wchar_t *)piVar1[2];
  if ((wchar_t *)piVar1[3] <= pwVar5) {
    wVar9 = FUN_002e7148(piVar1);
    goto LAB_007aeea4;
  }
LAB_007aeea2:
  wVar9 = *pwVar5;
LAB_007aeea4:
  iVar8 = param_1[1];
  do {
    if (param_3 <= iVar8 + 1) {
      if (wVar9 == L'\xffffffff') {
LAB_007aef9a:
        uVar2 = 2;
      }
      else if (__c == wVar9) {
LAB_007aef4a:
        uVar7 = piVar1[2];
        uVar2 = piVar1[3];
        param_1[1] = iVar8 + 1;
        if (uVar7 < uVar2) {
          piVar1[2] = uVar7 + 4;
          uVar2 = 0;
        }
        else {
          FUN_002e7154(piVar1);
          uVar2 = 0;
        }
      }
      else {
        uVar2 = 4;
      }
      goto LAB_007aef1a;
    }
    if (wVar9 == L'\xffffffff') goto LAB_007aef9a;
    if (__c == wVar9) goto LAB_007aef4a;
    pwVar6 = (wchar_t *)piVar1[3];
    pwVar5 = (wchar_t *)piVar1[2];
    __n = (param_3 - iVar8) - 1;
    sVar4 = (int)pwVar6 - (int)pwVar5 >> 2;
    if ((int)sVar4 <= (int)__n) {
      __n = sVar4;
    }
    if ((int)__n < 2) {
      *param_2 = wVar9;
      param_2 = param_2 + 1;
      param_1[1] = param_1[1] + 1;
      if (pwVar5 < pwVar6) {
        wVar9 = *pwVar5;
        piVar1[2] = (int)(pwVar5 + 1);
      }
      else {
        wVar9 = FUN_002e7154(piVar1);
      }
      if (wVar9 == L'\xffffffff') goto LAB_007aeea4;
      pwVar5 = (wchar_t *)piVar1[2];
      if (pwVar5 < (wchar_t *)piVar1[3]) goto LAB_007aeea2;
      wVar9 = FUN_002e7148(piVar1);
      goto LAB_007aeea4;
    }
    pwVar5 = wmemchr(pwVar5,__c,__n);
    if (pwVar5 != (wchar_t *)0x0) {
      __n = (int)pwVar5 - piVar1[2] >> 2;
    }
    wmemcpy(param_2,(wchar_t *)piVar1[2],__n);
    iVar3 = piVar1[2];
    uVar2 = piVar1[3];
    uVar7 = iVar3 + __n * 4;
    iVar8 = param_1[1];
    param_2 = param_2 + __n;
    piVar1[2] = uVar7;
    iVar8 = __n + iVar8;
    param_1[1] = iVar8;
    if (uVar2 <= uVar7) break;
    wVar9 = *(wchar_t *)(iVar3 + __n * 4);
  } while( true );
  wVar9 = (**(code **)(*piVar1 + 0x24))(piVar1);
  goto LAB_007aeea4;
}

// ---- FUN_007a6f80  @ 0x7a6f80
int * FUN_007a6f80(int *param_1,int *param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  int iVar2;
  
  iVar2 = *param_2;
  *param_1 = iVar2;
  iVar1 = param_2[1];
  *(int *)((int)param_1 + *(int *)(iVar2 + -0xc)) = iVar1;
  param_1[1] = 0;
  FUN_00799504(*(int *)(iVar2 + -0xc) + (int)param_1,0,iVar1,iVar2,param_4);
  return param_1;
}

// ---- FUN_007a7008  @ 0x7a7008
undefined1 * FUN_007a7008(undefined1 *param_1,int *param_2,int param_3)

{
  uint uVar1;
  int iVar2;
  uint uVar3;
  int *piVar4;
  int iVar5;
  int iVar6;
  int *piVar7;
  
  iVar2 = *param_2;
  uVar1 = 0;
  *param_1 = 0;
  iVar2 = *(int *)(iVar2 + -0xc) + (int)param_2;
  uVar3 = *(uint *)(iVar2 + 0x14);
  if (uVar3 == 0) {
    if (*(int *)(iVar2 + 0x70) != 0) {
      FUN_007bca3c(*(int *)(iVar2 + 0x70));
      iVar2 = *(int *)(*param_2 + -0xc) + (int)param_2;
    }
    if ((param_3 == 0) && (*(int *)(iVar2 + 0xc) << 0x13 < 0)) {
      iVar5 = *(int *)(iVar2 + 0x7c);
      if (*(int **)(iVar5 + 8) < *(int **)(iVar5 + 0xc)) {
        iVar6 = **(int **)(iVar5 + 8);
      }
      else {
        iVar6 = FUN_002e7124(iVar5);
        iVar2 = *(int *)(*param_2 + -0xc) + (int)param_2;
      }
      piVar7 = *(int **)(iVar2 + 0x80);
      if (piVar7 == (int *)0x0) {
                    /* WARNING: Subroutine does not return */
        FUN_007c4874();
      }
      if (iVar6 != -1) {
        do {
          iVar2 = (**(code **)(*piVar7 + 8))(piVar7,8,iVar6);
          if (iVar2 == 0) {
            iVar2 = *(int *)(*param_2 + -0xc) + (int)param_2;
            if (iVar6 == -1) goto LAB_007a705a;
            goto LAB_007a70b6;
          }
          piVar4 = *(int **)(iVar5 + 8);
          if (piVar4 < *(int **)(iVar5 + 0xc)) {
            iVar2 = *piVar4;
            *(int **)(iVar5 + 8) = piVar4 + 1;
          }
          else {
            iVar2 = FUN_002e7118(iVar5);
          }
          if (iVar2 == -1) break;
          if (*(int **)(iVar5 + 8) < *(int **)(iVar5 + 0xc)) {
            iVar6 = **(int **)(iVar5 + 8);
          }
          else {
            iVar6 = FUN_002e7124(iVar5);
          }
        } while (iVar6 != -1);
        iVar2 = *(int *)(*param_2 + -0xc) + (int)param_2;
      }
LAB_007a705a:
      uVar3 = *(uint *)(iVar2 + 0x14);
      uVar1 = 2;
    }
    else {
LAB_007a70b6:
      uVar3 = *(uint *)(iVar2 + 0x14);
      if (uVar3 == 0) {
        *param_1 = 1;
        return param_1;
      }
      uVar1 = 0;
    }
  }
  FUN_007992f0(iVar2,uVar1 | 4 | uVar3);
  return param_1;
}

// ---- FUN_007a70f0  @ 0x7a70f0
int * FUN_007a70f0(int *param_1,undefined2 *param_2)

{
  int *piVar1;
  int iVar2;
  char local_3c [4];
  uint local_38;
  int local_34;
  undefined1 auStack_30 [8];
  undefined4 local_28;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  
  FUN_007a7008(local_3c,param_1,0);
  if (local_3c[0] != '\0') {
    local_38 = 0;
    iVar2 = *(int *)(*param_1 + -0xc) + (int)param_1;
    piVar1 = *(int **)(iVar2 + 0x88);
    if (piVar1 == (int *)0x0) {
                    /* WARNING: Subroutine does not return */
      FUN_007c4874();
    }
    local_20 = 0;
    local_1c = 0xffffffff;
    local_28 = *(undefined4 *)(iVar2 + 0x7c);
    local_24 = 0xffffffff;
    (**(code **)(*piVar1 + 0xc))
              (auStack_30,piVar1,local_28,0xffffffff,0,0xffffffff,iVar2,&local_38,&local_34);
    if (local_34 < -0x8000) {
      *param_2 = 0x8000;
      local_38 = local_38 | 4;
    }
    else if (local_34 < 0x8000) {
      *param_2 = (short)local_34;
    }
    else {
      local_38 = local_38 | 4;
      *param_2 = 0x7fff;
    }
    if (local_38 != 0) {
      iVar2 = *(int *)(*param_1 + -0xc) + (int)param_1;
      FUN_007992f0(iVar2,*(uint *)(iVar2 + 0x14) | local_38);
      return param_1;
    }
  }
  return param_1;
}

// ---- FUN_007a720c  @ 0x7a720c
int * FUN_007a720c(int *param_1,undefined4 *param_2)

{
  int *piVar1;
  int iVar2;
  char local_3c [4];
  uint local_38;
  undefined4 local_34;
  undefined1 auStack_30 [8];
  undefined4 local_28;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  
  FUN_007a7008(local_3c,param_1,0);
  if (local_3c[0] != '\0') {
    local_38 = 0;
    iVar2 = *(int *)(*param_1 + -0xc) + (int)param_1;
    piVar1 = *(int **)(iVar2 + 0x88);
    if (piVar1 == (int *)0x0) {
                    /* WARNING: Subroutine does not return */
      FUN_007c4874();
    }
    local_20 = 0;
    local_1c = 0xffffffff;
    local_28 = *(undefined4 *)(iVar2 + 0x7c);
    local_24 = 0xffffffff;
    (**(code **)(*piVar1 + 0xc))
              (auStack_30,piVar1,local_28,0xffffffff,0,0xffffffff,iVar2,&local_38,&local_34);
    *param_2 = local_34;
    if (local_38 != 0) {
      iVar2 = *(int *)(*param_1 + -0xc) + (int)param_1;
      FUN_007992f0(iVar2,*(uint *)(iVar2 + 0x14) | local_38);
      return param_1;
    }
  }
  return param_1;
}

// ---- FUN_007a72f0  @ 0x7a72f0
int * FUN_007a72f0(int *param_1,int param_2)

{
  int iVar1;
  uint uVar2;
  char local_14 [3];
  char local_11 [5];
  
  FUN_007a7008(local_14,param_1,0);
  if (local_14[0] == '\0') {
    if (param_2 != 0) {
      return param_1;
    }
  }
  else if (param_2 != 0) {
    iVar1 = FUN_007ad334(*(undefined4 *)((int)param_1 + *(int *)(*param_1 + -0xc) + 0x7c),param_2,
                         local_11);
    if (iVar1 == 0) {
      uVar2 = 4;
    }
    else {
      uVar2 = 0;
    }
    if (local_11[0] == '\0') {
      if (uVar2 == 0) {
        return param_1;
      }
    }
    else {
      uVar2 = uVar2 | 2;
    }
    goto LAB_007a7332;
  }
  uVar2 = 4;
LAB_007a7332:
  iVar1 = (int)param_1 + *(int *)(*param_1 + -0xc);
  FUN_007992f0(iVar1,uVar2 | *(uint *)(iVar1 + 0x14));
  return param_1;
}

// ---- FUN_007a76a4  @ 0x7a76a4
int * FUN_007a76a4(int *param_1,int *param_2,int param_3)

{
  int iVar1;
  int iVar2;
  int iVar3;
  uint uVar4;
  int *piVar5;
  int *piVar6;
  char local_1c [4];
  
  param_1[1] = 0;
  FUN_007a7008(local_1c,param_1,1);
  if (local_1c[0] == '\0') {
LAB_007a76c4:
    uVar4 = 0;
    if (param_1[1] == 0) {
LAB_007a76c8:
      uVar4 = uVar4 | 4;
LAB_007a76cc:
      iVar1 = *(int *)(*param_1 + -0xc) + (int)param_1;
      FUN_007992f0(iVar1,*(uint *)(iVar1 + 0x14) | uVar4);
    }
    return param_1;
  }
  iVar1 = *(int *)((int)param_1 + *(int *)(*param_1 + -0xc) + 0x7c);
  piVar5 = *(int **)(iVar1 + 8);
  if (piVar5 < *(int **)(iVar1 + 0xc)) goto LAB_007a772e;
LAB_007a7748:
  iVar2 = FUN_002e7124(iVar1);
  do {
    if (iVar2 == -1) {
LAB_007a7734:
      if (param_1[1] == 0) {
        uVar4 = 2;
        goto LAB_007a76c8;
      }
      uVar4 = 2;
      goto LAB_007a76cc;
    }
    if (param_3 == iVar2) goto LAB_007a76c4;
    piVar5 = (int *)param_2[5];
    if (piVar5 < (int *)param_2[6]) {
      *piVar5 = iVar2;
      param_2[5] = (int)(piVar5 + 1);
    }
    else {
      iVar3 = (**(code **)(*param_2 + 0x34))(param_2,iVar2);
      if (iVar3 == -1) {
        if (iVar2 == -1) goto LAB_007a7734;
        goto LAB_007a76c4;
      }
    }
    piVar6 = *(int **)(iVar1 + 8);
    piVar5 = *(int **)(iVar1 + 0xc);
    param_1[1] = param_1[1] + 1;
    if (piVar6 < piVar5) {
      iVar2 = *piVar6;
      *(int **)(iVar1 + 8) = piVar6 + 1;
    }
    else {
      iVar2 = FUN_002e7118(iVar1);
    }
    if (iVar2 == -1) goto LAB_007a7734;
    piVar5 = *(int **)(iVar1 + 8);
    if (*(int **)(iVar1 + 0xc) <= piVar5) goto LAB_007a7748;
LAB_007a772e:
    iVar2 = *piVar5;
  } while( true );
}

// ---- FUN_007a77f0  @ 0x7a77f0
int * FUN_007a77f0(int *param_1)

{
  int iVar1;
  int *piVar2;
  int iVar3;
  char local_c [4];
  
  param_1[1] = 0;
  FUN_007a7008(local_c,param_1,1);
  if (local_c[0] == '\0') {
    return param_1;
  }
  iVar3 = *(int *)((int)param_1 + *(int *)(*param_1 + -0xc) + 0x7c);
  piVar2 = *(int **)(iVar3 + 8);
  if (piVar2 < *(int **)(iVar3 + 0xc)) {
    iVar1 = *piVar2;
    *(int **)(iVar3 + 8) = piVar2 + 1;
  }
  else {
    iVar1 = FUN_002e7118(iVar3);
  }
  if (iVar1 != -1) {
    param_1[1] = 1;
    return param_1;
  }
  iVar3 = *(int *)(*param_1 + -0xc) + (int)param_1;
  FUN_007992f0(iVar3,*(uint *)(iVar3 + 0x14) | 2);
  return param_1;
}

// ---- FUN_007a7964  @ 0x7a7964
int * FUN_007a7964(int *param_1,undefined4 param_2,int param_3)

{
  int *piVar1;
  int iVar2;
  char local_14 [4];
  
  param_1[1] = 0;
  FUN_007a7008(local_14,param_1,1);
  if (local_14[0] != '\0') {
    piVar1 = *(int **)((int)param_1 + *(int *)(*param_1 + -0xc) + 0x7c);
    iVar2 = (**(code **)(*piVar1 + 0x20))(piVar1,param_2,param_3);
    param_1[1] = iVar2;
    if (param_3 != iVar2) {
      iVar2 = *(int *)(*param_1 + -0xc) + (int)param_1;
      FUN_007992f0(iVar2,*(uint *)(iVar2 + 0x14) | 6);
      return param_1;
    }
  }
  return param_1;
}

// ---- FUN_007a7ca4  @ 0x7a7ca4
undefined4 FUN_007a7ca4(int *param_1)

{
  int *piVar1;
  int iVar2;
  char local_14 [8];
  
  FUN_007a7008(local_14,param_1,1);
  if ((local_14[0] != '\0') &&
     (piVar1 = *(int **)((int)param_1 + *(int *)(*param_1 + -0xc) + 0x7c), piVar1 != (int *)0x0)) {
    iVar2 = (**(code **)(*piVar1 + 0x18))();
    if (iVar2 == -1) {
      iVar2 = *(int *)(*param_1 + -0xc) + (int)param_1;
      FUN_007992f0(iVar2,*(uint *)(iVar2 + 0x14) | 1);
      return 0xffffffff;
    }
    return 0;
  }
  return 0xffffffff;
}

// ---- FUN_007a7fec  @ 0x7a7fec
int * FUN_007a7fec(int *param_1)

{
  int *piVar1;
  int iVar2;
  int *piVar3;
  int iVar4;
  int iVar5;
  undefined1 auStack_1c [8];
  
  FUN_007afd04(auStack_1c,(int)param_1 + *(int *)(*param_1 + -0xc) + 0x6c);
  piVar1 = (int *)FUN_007b2a34(auStack_1c);
  FUN_007b01c0(auStack_1c);
  iVar4 = *(int *)((int)param_1 + *(int *)(*param_1 + -0xc) + 0x7c);
  piVar3 = *(int **)(iVar4 + 8);
  if (*(int **)(iVar4 + 0xc) <= piVar3) goto LAB_007a806c;
LAB_007a8024:
  iVar5 = *piVar3;
  do {
    if (iVar5 == -1) {
LAB_007a802a:
      iVar4 = *(int *)(*param_1 + -0xc) + (int)param_1;
      FUN_007992f0(iVar4,*(uint *)(iVar4 + 0x14) | 2);
      return param_1;
    }
    iVar2 = (**(code **)(*piVar1 + 8))(piVar1,8,iVar5);
    if (iVar2 == 0) {
      if (iVar5 != -1) {
        return param_1;
      }
      goto LAB_007a802a;
    }
    piVar3 = *(int **)(iVar4 + 8);
    if (piVar3 < *(int **)(iVar4 + 0xc)) {
      iVar5 = *piVar3;
      *(int **)(iVar4 + 8) = piVar3 + 1;
    }
    else {
      iVar5 = FUN_002e7118(iVar4);
    }
    if (iVar5 == -1) goto LAB_007a802a;
    piVar3 = *(int **)(iVar4 + 8);
    if (piVar3 < *(int **)(iVar4 + 0xc)) goto LAB_007a8024;
LAB_007a806c:
    iVar5 = FUN_002e7124(iVar4);
  } while( true );
}

// ---- FUN_007a8094  @ 0x7a8094
int * FUN_007a8094(int *param_1,int *param_2)

{
  int iVar1;
  int *piVar2;
  int iVar3;
  char local_14 [8];
  
  FUN_007a7008(local_14,param_1,0);
  if (local_14[0] != '\0') {
    iVar3 = *(int *)((int)param_1 + *(int *)(*param_1 + -0xc) + 0x7c);
    piVar2 = *(int **)(iVar3 + 8);
    if (piVar2 < *(int **)(iVar3 + 0xc)) {
      iVar1 = *piVar2;
      *(int **)(iVar3 + 8) = piVar2 + 1;
    }
    else {
      iVar1 = FUN_002e7118(iVar3);
    }
    if (iVar1 == -1) {
      iVar3 = *(int *)(*param_1 + -0xc) + (int)param_1;
      FUN_007992f0(iVar3,*(uint *)(iVar3 + 0x14) | 6);
      return param_1;
    }
    *param_2 = iVar1;
  }
  return param_1;
}

// ---- FUN_007a82e0  @ 0x7a82e0
int * FUN_007a82e0(int *param_1,undefined4 param_2)

{
  int *piVar1;
  undefined4 uVar2;
  int iVar3;
  
  iVar3 = *(int *)(*param_1 + -0xc);
  if (*(char *)((int)param_1 + iVar3 + 0x78) != '\0') {
    *(undefined4 *)((int)param_1 + iVar3 + 0x74) = param_2;
    return param_1;
  }
  piVar1 = *(int **)((int)param_1 + iVar3 + 0x80);
  if (piVar1 != (int *)0x0) {
    uVar2 = (**(code **)(*piVar1 + 0x28))(piVar1,0x20);
    *(undefined1 *)((int)param_1 + iVar3 + 0x78) = 1;
    *(undefined4 *)((int)param_1 + iVar3 + 0x74) = uVar2;
    *(undefined4 *)((int)param_1 + iVar3 + 0x74) = param_2;
    return param_1;
  }
                    /* WARNING: Subroutine does not return */
  FUN_007c4874();
}

// ---- FUN_007a8390  @ 0x7a8390
int * FUN_007a8390(int *param_1,undefined4 param_2)

{
  int *piVar1;
  int iVar2;
  char local_38 [4];
  uint local_34;
  undefined1 auStack_30 [8];
  undefined4 local_28;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  
  FUN_007a7008(local_38,param_1,0);
  if (local_38[0] != '\0') {
    local_34 = 0;
    iVar2 = *(int *)(*param_1 + -0xc) + (int)param_1;
    piVar1 = *(int **)(iVar2 + 0x88);
    if (piVar1 == (int *)0x0) {
                    /* WARNING: Subroutine does not return */
      FUN_007c4874();
    }
    local_20 = 0;
    local_1c = 0xffffffff;
    local_28 = *(undefined4 *)(iVar2 + 0x7c);
    local_24 = 0xffffffff;
    (**(code **)(*piVar1 + 0x10))
              (auStack_30,piVar1,local_28,0xffffffff,0,0xffffffff,iVar2,&local_34,param_2);
    if (local_34 != 0) {
      iVar2 = *(int *)(*param_1 + -0xc) + (int)param_1;
      FUN_007992f0(iVar2,*(uint *)(iVar2 + 0x14) | local_34);
      return param_1;
    }
  }
  return param_1;
}

// ---- FUN_007a90d4  @ 0x7a90d4
undefined4 * FUN_007a90d4(undefined4 *param_1)

{
  bool bVar1;
  undefined4 *puVar2;
  int *piVar3;
  int iVar4;
  
  puVar2 = (undefined4 *)(param_1[10] + -0xc);
  *param_1 = &DAT_0093e20c;
  param_1[0xb] = &DAT_0093e220;
  param_1[1] = &PTR_LAB_007a8e78_1_0093e130;
  if (puVar2 != &DAT_0097251c) {
    piVar3 = (int *)(param_1[10] + -4);
    DataMemoryBarrier(0x1f);
    do {
      ExclusiveAccess(piVar3);
      iVar4 = *piVar3;
      bVar1 = (bool)hasExclusiveAccess(piVar3);
    } while (!bVar1);
    *piVar3 = iVar4 + -1;
    DataMemoryBarrier(0x1f);
    if (iVar4 < 1) {
      operator_delete(puVar2);
    }
  }
  param_1[1] = &PTR_FUN_00799d5c_1_0093d948;
  FUN_007b01c0(param_1 + 8);
  *param_1 = &DAT_0093e1d4;
  param_1[0xb] = &DAT_0093d910;
  FUN_0079a9bc(param_1 + 0xb);
  return param_1;
}

// ---- FUN_007a95a8  @ 0x7a95a8
undefined4 * FUN_007a95a8(undefined4 *param_1)

{
  bool bVar1;
  undefined4 *puVar2;
  int *piVar3;
  int iVar4;
  
  puVar2 = (undefined4 *)(param_1[0xc] + -0xc);
  *param_1 = &DAT_0093e2ec;
  param_1[0xd] = &DAT_0093e314;
  param_1[2] = &DAT_0093e300;
  param_1[3] = &PTR_LAB_007a8e78_1_0093e130;
  if (puVar2 != &DAT_0097251c) {
    piVar3 = (int *)(param_1[0xc] + -4);
    DataMemoryBarrier(0x1f);
    do {
      ExclusiveAccess(piVar3);
      iVar4 = *piVar3;
      bVar1 = (bool)hasExclusiveAccess(piVar3);
    } while (!bVar1);
    *piVar3 = iVar4 + -1;
    DataMemoryBarrier(0x1f);
    if (iVar4 < 1) {
      operator_delete(puVar2);
    }
  }
  param_1[3] = &PTR_FUN_00799d5c_1_0093d948;
  FUN_007b01c0(param_1 + 10);
  param_1[2] = &DAT_0093e234;
  *param_1 = &DAT_0093e25c;
  param_1[1] = 0;
  param_1[0xd] = &DAT_0093d910;
  FUN_0079a9bc(param_1 + 0xd);
  return param_1;
}

// ---- FUN_007a9920  @ 0x7a9920
undefined4 * FUN_007a9920(undefined4 *param_1,int param_2)

{
  bool bVar1;
  undefined4 *puVar2;
  int iVar3;
  uint uVar4;
  int *piVar5;
  undefined1 auStack_1c [8];
  int local_14;
  
  uVar4 = *(uint *)(param_2 + 0x14);
  *param_1 = &DAT_00972528;
  if (uVar4 == 0) {
    FUN_007c653c(param_1,param_2 + 0x24);
  }
  else {
    if (*(uint *)(param_2 + 0xc) < uVar4) {
      local_14 = FUN_007c6678(*(undefined4 *)(param_2 + 0x10),uVar4,auStack_1c,0);
      FUN_007c653c(param_1,&local_14);
      puVar2 = (undefined4 *)(local_14 + -0xc);
      if (puVar2 == &DAT_0097251c) {
        return param_1;
      }
      piVar5 = (int *)(local_14 + -4);
      DataMemoryBarrier(0x1f);
      do {
        ExclusiveAccess(piVar5);
        iVar3 = *piVar5;
        bVar1 = (bool)hasExclusiveAccess(piVar5);
      } while (!bVar1);
      *piVar5 = iVar3 + -1;
    }
    else {
      local_14 = FUN_007c6678(*(undefined4 *)(param_2 + 0x10),*(uint *)(param_2 + 0xc),auStack_1c,0)
      ;
      FUN_007c653c(param_1,&local_14);
      puVar2 = (undefined4 *)(local_14 + -0xc);
      if (puVar2 == &DAT_0097251c) {
        return param_1;
      }
      piVar5 = (int *)(local_14 + -4);
      DataMemoryBarrier(0x1f);
      do {
        ExclusiveAccess(piVar5);
        iVar3 = *piVar5;
        bVar1 = (bool)hasExclusiveAccess(piVar5);
      } while (!bVar1);
      *piVar5 = iVar3 + -1;
    }
    DataMemoryBarrier(0x1f);
    if (iVar3 < 1) {
      operator_delete(puVar2);
    }
  }
  return param_1;
}

// ---- FUN_007a9a10  @ 0x7a9a10
void FUN_007a9a10(int param_1,int param_2,undefined4 param_3,undefined4 param_4,uint param_5,
                 int param_6)

{
  bool bVar1;
  
  *(undefined4 *)(param_1 + 0x18) = param_3;
  *(int *)(param_1 + 0x14) = param_2;
  *(int *)(param_1 + 0x10) = param_2;
  if ((int)(-(uint)(0x7fffffff < param_5) - param_6) < 0 !=
      (SBORROW4(0,param_6) != SBORROW4(-param_6,(uint)(0x7fffffff < param_5)))) {
    do {
      bVar1 = 0x7ffffffe < param_5;
      param_5 = param_5 + 0x80000001;
      param_6 = param_6 + (bVar1 - 1);
      param_2 = param_2 + 0x7fffffff;
    } while ((int)(-(uint)(0x7fffffff < param_5) - param_6) < 0 !=
             (SBORROW4(0,param_6) != SBORROW4(-param_6,(uint)(0x7fffffff < param_5))));
  }
  *(uint *)(param_1 + 0x14) = param_5 + param_2;
  return;
}

// ---- FUN_007a9a50  @ 0x7a9a50
void FUN_007a9a50(int param_1,int param_2,int param_3,undefined4 param_4)

{
  int iVar1;
  int iVar2;
  int iVar3;
  
  iVar1 = *(int *)(param_1 + 0x24);
  iVar3 = *(uint *)(param_1 + 0x20) << 0x1c;
  iVar2 = *(int *)(iVar1 + -0xc) + param_2;
  if (param_2 == iVar1) {
    iVar1 = param_2 + *(int *)(iVar1 + -8);
  }
  else {
    iVar1 = iVar2 + param_3;
    param_3 = 0;
    iVar2 = iVar1;
  }
  if (iVar3 < 0) {
    *(int *)(param_1 + 4) = param_2;
    *(int *)(param_1 + 8) = param_3 + param_2;
    *(int *)(param_1 + 0xc) = iVar2;
  }
  if (((*(uint *)(param_1 + 0x20) & 0x10) != 0) &&
     (FUN_007a9a10(param_1,param_2,iVar1,0,param_4,0), -1 < iVar3)) {
    *(int *)(param_1 + 4) = iVar2;
    *(int *)(param_1 + 8) = iVar2;
    *(int *)(param_1 + 0xc) = iVar2;
    return;
  }
  return;
}

// ---- FUN_007a9ac0  @ 0x7a9ac0
int FUN_007a9ac0(int param_1,int param_2,int param_3)

{
  if (-1 < param_3 && param_2 != 0) {
    FUN_007c5938(param_1 + 0x24,0,*(undefined4 *)(*(int *)(param_1 + 0x24) + -0xc),0);
    FUN_007a9a50(param_1,param_2,param_3,0);
  }
  return param_1;
}

// ---- FUN_007aa360  @ 0x7aa360
undefined4 * FUN_007aa360(undefined4 *param_1,int param_2)

{
  bool bVar1;
  undefined4 *puVar2;
  int iVar3;
  uint uVar4;
  int *piVar5;
  undefined1 auStack_1c [8];
  int local_14;
  
  uVar4 = *(uint *)(param_2 + 0x1c);
  *param_1 = &DAT_00972528;
  if (uVar4 == 0) {
    FUN_007c653c(param_1,param_2 + 0x2c);
  }
  else {
    if (*(uint *)(param_2 + 0x14) < uVar4) {
      local_14 = FUN_007c6678(*(undefined4 *)(param_2 + 0x18),uVar4,auStack_1c,0);
      FUN_007c653c(param_1,&local_14);
      puVar2 = (undefined4 *)(local_14 + -0xc);
      if (puVar2 == &DAT_0097251c) {
        return param_1;
      }
      piVar5 = (int *)(local_14 + -4);
      DataMemoryBarrier(0x1f);
      do {
        ExclusiveAccess(piVar5);
        iVar3 = *piVar5;
        bVar1 = (bool)hasExclusiveAccess(piVar5);
      } while (!bVar1);
      *piVar5 = iVar3 + -1;
    }
    else {
      local_14 = FUN_007c6678(*(undefined4 *)(param_2 + 0x18),*(uint *)(param_2 + 0x14),auStack_1c,0
                             );
      FUN_007c653c(param_1,&local_14);
      puVar2 = (undefined4 *)(local_14 + -0xc);
      if (puVar2 == &DAT_0097251c) {
        return param_1;
      }
      piVar5 = (int *)(local_14 + -4);
      DataMemoryBarrier(0x1f);
      do {
        ExclusiveAccess(piVar5);
        iVar3 = *piVar5;
        bVar1 = (bool)hasExclusiveAccess(piVar5);
      } while (!bVar1);
      *piVar5 = iVar3 + -1;
    }
    DataMemoryBarrier(0x1f);
    if (iVar3 < 1) {
      operator_delete(puVar2);
    }
  }
  return param_1;
}

// ---- FUN_007aa500  @ 0x7aa500
undefined4 * FUN_007aa500(undefined4 *param_1,uint param_2)

{
  undefined4 *puVar1;
  
  puVar1 = param_1 + 0xb;
  FUN_0079a7a0(puVar1);
  param_1[0x27] = 0;
  *(undefined1 *)(param_1 + 0x28) = 0;
  *param_1 = &DAT_0093e1d4;
  param_1[0xb] = &PTR_LAB_007bb0a0_1_0093e1e8;
  *(undefined1 *)((int)param_1 + 0xa1) = 0;
  param_1[0x29] = 0;
  param_1[0x2a] = 0;
  param_1[0x2b] = 0;
  param_1[0x2c] = 0;
  FUN_007990d4(puVar1,0);
  param_1[2] = 0;
  param_1[1] = &PTR_FUN_00799d5c_1_0093d948;
  *param_1 = &DAT_0093e20c;
  param_1[3] = 0;
  param_1[4] = 0;
  param_1[5] = 0;
  param_1[6] = 0;
  param_1[7] = 0;
  param_1[0xb] = &DAT_0093e220;
  FUN_007adf48(param_1 + 8);
  param_1[9] = param_2 | 0x10;
  param_1[10] = &DAT_00972528;
  param_1[1] = &PTR_LAB_007a8e78_1_0093e130;
  FUN_007990d4(puVar1,param_1 + 1);
  return param_1;
}

// ---- FUN_007aa88c  @ 0x7aa88c
undefined4 * FUN_007aa88c(undefined4 *param_1,int param_2)

{
  bool bVar1;
  undefined4 *puVar2;
  int iVar3;
  uint uVar4;
  int *piVar5;
  undefined1 auStack_1c [8];
  int local_14;
  
  uVar4 = *(uint *)(param_2 + 0x18);
  *param_1 = &DAT_00972528;
  if (uVar4 == 0) {
    FUN_007c653c(param_1,param_2 + 0x28);
  }
  else {
    if (*(uint *)(param_2 + 0x10) < uVar4) {
      local_14 = FUN_007c6678(*(undefined4 *)(param_2 + 0x14),uVar4,auStack_1c,0);
      FUN_007c653c(param_1,&local_14);
      puVar2 = (undefined4 *)(local_14 + -0xc);
      if (puVar2 == &DAT_0097251c) {
        return param_1;
      }
      piVar5 = (int *)(local_14 + -4);
      DataMemoryBarrier(0x1f);
      do {
        ExclusiveAccess(piVar5);
        iVar3 = *piVar5;
        bVar1 = (bool)hasExclusiveAccess(piVar5);
      } while (!bVar1);
      *piVar5 = iVar3 + -1;
    }
    else {
      local_14 = FUN_007c6678(*(undefined4 *)(param_2 + 0x14),*(uint *)(param_2 + 0x10),auStack_1c,0
                             );
      FUN_007c653c(param_1,&local_14);
      puVar2 = (undefined4 *)(local_14 + -0xc);
      if (puVar2 == &DAT_0097251c) {
        return param_1;
      }
      piVar5 = (int *)(local_14 + -4);
      DataMemoryBarrier(0x1f);
      do {
        ExclusiveAccess(piVar5);
        iVar3 = *piVar5;
        bVar1 = (bool)hasExclusiveAccess(piVar5);
      } while (!bVar1);
      *piVar5 = iVar3 + -1;
    }
    DataMemoryBarrier(0x1f);
    if (iVar3 < 1) {
      operator_delete(puVar2);
    }
  }
  return param_1;
}

// ---- FUN_007aaa70  @ 0x7aaa70
undefined4 *
FUN_007aaa70(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 *puVar1;
  
  puVar1 = param_1 + 0xd;
  FUN_0079a7a0(puVar1);
  param_1[0x29] = 0;
  *(undefined1 *)(param_1 + 0x2a) = 0;
  *param_1 = &DAT_0093e25c;
  param_1[0xd] = &DAT_0093e270;
  *(undefined1 *)((int)param_1 + 0xa9) = 0;
  param_1[0x2b] = 0;
  param_1[0x2c] = 0;
  param_1[0x2d] = 0;
  param_1[0x2e] = 0;
  param_1[1] = 0;
  FUN_007990d4(puVar1,0,&DAT_0093e270,0,param_4);
  param_1[2] = &DAT_0093e234;
  param_1[0xd] = &DAT_0093e248;
  FUN_007990d4(puVar1,0);
  param_1[4] = 0;
  param_1[5] = 0;
  param_1[3] = &PTR_FUN_00799d5c_1_0093d948;
  *param_1 = &DAT_0093e2ec;
  param_1[0xd] = &DAT_0093e314;
  param_1[2] = &DAT_0093e300;
  param_1[6] = 0;
  param_1[7] = 0;
  param_1[8] = 0;
  param_1[9] = 0;
  FUN_007adf48(param_1 + 10);
  param_1[0xb] = param_2;
  param_1[0xc] = &DAT_00972528;
  param_1[3] = &PTR_LAB_007a8e78_1_0093e130;
  FUN_007990d4(puVar1,param_1 + 3);
  return param_1;
}

// ---- FUN_007aacac  @ 0x7aacac
undefined4 * FUN_007aacac(undefined4 *param_1,int *param_2,uint param_3)

{
  int iVar1;
  undefined4 uVar2;
  undefined4 *puVar3;
  undefined1 auStack_2c [8];
  
  puVar3 = param_1 + 0xd;
  FUN_0079a7a0(puVar3);
  param_1[0x29] = 0;
  *(undefined1 *)(param_1 + 0x2a) = 0;
  *param_1 = &DAT_0093e25c;
  param_1[0xd] = &DAT_0093e270;
  *(undefined1 *)((int)param_1 + 0xa9) = 0;
  param_1[0x2b] = 0;
  param_1[0x2c] = 0;
  param_1[0x2d] = 0;
  param_1[0x2e] = 0;
  param_1[1] = 0;
  FUN_007990d4(puVar3,0);
  param_1[2] = &DAT_0093e234;
  param_1[0xd] = &DAT_0093e248;
  FUN_007990d4(puVar3,0);
  param_1[4] = 0;
  param_1[5] = 0;
  param_1[6] = 0;
  *param_1 = &DAT_0093e2ec;
  param_1[7] = 0;
  param_1[3] = &PTR_FUN_00799d5c_1_0093d948;
  param_1[8] = 0;
  param_1[0xd] = &DAT_0093e314;
  param_1[2] = &DAT_0093e300;
  param_1[9] = 0;
  FUN_007adf48(param_1 + 10);
  iVar1 = *param_2;
  param_1[0xb] = 0;
  uVar2 = *(undefined4 *)(iVar1 + -0xc);
  param_1[3] = &PTR_LAB_007a8e78_1_0093e130;
  FUN_007c6810(param_1 + 0xc,iVar1,uVar2,auStack_2c);
  param_1[0xb] = param_3;
  uVar2 = 0;
  if ((param_3 & 3) != 0) {
    uVar2 = *(undefined4 *)(param_1[0xc] + -0xc);
  }
  FUN_007a9a50(param_1 + 3,param_1[0xc],0,uVar2);
  FUN_007990d4(puVar3,param_1 + 3);
  return param_1;
}

// ---- FUN_007aaeb8  @ 0x7aaeb8
undefined4 * FUN_007aaeb8(undefined4 *param_1,int param_2)

{
  bool bVar1;
  undefined4 *puVar2;
  int iVar3;
  uint uVar4;
  int *piVar5;
  undefined1 auStack_1c [8];
  int local_14;
  
  uVar4 = *(uint *)(param_2 + 0x20);
  *param_1 = &DAT_00972528;
  if (uVar4 == 0) {
    FUN_007c653c(param_1,param_2 + 0x30);
  }
  else {
    if (*(uint *)(param_2 + 0x18) < uVar4) {
      local_14 = FUN_007c6678(*(undefined4 *)(param_2 + 0x1c),uVar4,auStack_1c,0);
      FUN_007c653c(param_1,&local_14);
      puVar2 = (undefined4 *)(local_14 + -0xc);
      if (puVar2 == &DAT_0097251c) {
        return param_1;
      }
      piVar5 = (int *)(local_14 + -4);
      DataMemoryBarrier(0x1f);
      do {
        ExclusiveAccess(piVar5);
        iVar3 = *piVar5;
        bVar1 = (bool)hasExclusiveAccess(piVar5);
      } while (!bVar1);
      *piVar5 = iVar3 + -1;
    }
    else {
      local_14 = FUN_007c6678(*(undefined4 *)(param_2 + 0x1c),*(uint *)(param_2 + 0x18),auStack_1c,0
                             );
      FUN_007c653c(param_1,&local_14);
      puVar2 = (undefined4 *)(local_14 + -0xc);
      if (puVar2 == &DAT_0097251c) {
        return param_1;
      }
      piVar5 = (int *)(local_14 + -4);
      DataMemoryBarrier(0x1f);
      do {
        ExclusiveAccess(piVar5);
        iVar3 = *piVar5;
        bVar1 = (bool)hasExclusiveAccess(piVar5);
      } while (!bVar1);
      *piVar5 = iVar3 + -1;
    }
    DataMemoryBarrier(0x1f);
    if (iVar3 < 1) {
      operator_delete(puVar2);
    }
  }
  return param_1;
}

// ---- FUN_007ab0f4  @ 0x7ab0f4
void FUN_007ab0f4(int param_1,int param_2,undefined4 param_3,undefined4 param_4,uint param_5,
                 int param_6)

{
  bool bVar1;
  
  *(undefined4 *)(param_1 + 0x18) = param_3;
  *(int *)(param_1 + 0x14) = param_2;
  *(int *)(param_1 + 0x10) = param_2;
  if ((int)(-(uint)(0x7fffffff < param_5) - param_6) < 0 !=
      (SBORROW4(0,param_6) != SBORROW4(-param_6,(uint)(0x7fffffff < param_5)))) {
    do {
      param_2 = param_2 + -4;
      bVar1 = 0x7ffffffe < param_5;
      param_5 = param_5 + 0x80000001;
      param_6 = param_6 + (bVar1 - 1);
    } while ((int)(-(uint)(0x7fffffff < param_5) - param_6) < 0 !=
             (SBORROW4(0,param_6) != SBORROW4(-param_6,(uint)(0x7fffffff < param_5))));
  }
  *(uint *)(param_1 + 0x14) = param_2 + param_5 * 4;
  return;
}

// ---- FUN_007ab140  @ 0x7ab140
void FUN_007ab140(int param_1,int param_2,int param_3,undefined4 param_4)

{
  int iVar1;
  int iVar2;
  int iVar3;
  
  iVar1 = *(int *)(param_1 + 0x24);
  iVar3 = *(uint *)(param_1 + 0x20) << 0x1c;
  iVar2 = param_2 + *(int *)(iVar1 + -0xc) * 4;
  if (param_2 == iVar1) {
    iVar1 = param_2 + *(int *)(iVar1 + -8) * 4;
  }
  else {
    iVar1 = iVar2 + param_3 * 4;
    param_3 = 0;
    iVar2 = iVar1;
  }
  if (iVar3 < 0) {
    *(int *)(param_1 + 4) = param_2;
    *(int *)(param_1 + 8) = param_2 + param_3 * 4;
    *(int *)(param_1 + 0xc) = iVar2;
  }
  if (((*(uint *)(param_1 + 0x20) & 0x10) != 0) &&
     (FUN_007ab0f4(param_1,param_2,iVar1,0,param_4,0), -1 < iVar3)) {
    *(int *)(param_1 + 4) = iVar2;
    *(int *)(param_1 + 8) = iVar2;
    *(int *)(param_1 + 0xc) = iVar2;
    return;
  }
  return;
}

// ---- FUN_007ab1b4  @ 0x7ab1b4
int FUN_007ab1b4(int param_1,int param_2,int param_3)

{
  if (-1 < param_3 && param_2 != 0) {
    FUN_007bea54(param_1 + 0x24,0,*(undefined4 *)(*(int *)(param_1 + 0x24) + -0xc),0);
    FUN_007ab140(param_1,param_2,param_3,0);
  }
  return param_1;
}

// ---- FUN_007aba64  @ 0x7aba64
undefined4 * FUN_007aba64(undefined4 *param_1,int param_2)

{
  bool bVar1;
  undefined4 *puVar2;
  int iVar3;
  uint uVar4;
  int *piVar5;
  undefined1 auStack_1c [8];
  int local_14;
  
  uVar4 = *(uint *)(param_2 + 0x1c);
  *param_1 = &DAT_00972510;
  if (uVar4 == 0) {
    FUN_007bf684(param_1,param_2 + 0x2c);
  }
  else {
    if (*(uint *)(param_2 + 0x14) < uVar4) {
      local_14 = FUN_007bf858(*(undefined4 *)(param_2 + 0x18),uVar4,auStack_1c,0);
      FUN_007bf684(param_1,&local_14);
      puVar2 = (undefined4 *)(local_14 + -0xc);
      if (puVar2 == &DAT_00972504) {
        return param_1;
      }
      piVar5 = (int *)(local_14 + -4);
      DataMemoryBarrier(0x1f);
      do {
        ExclusiveAccess(piVar5);
        iVar3 = *piVar5;
        bVar1 = (bool)hasExclusiveAccess(piVar5);
      } while (!bVar1);
      *piVar5 = iVar3 + -1;
    }
    else {
      local_14 = FUN_007bf858(*(undefined4 *)(param_2 + 0x18),*(uint *)(param_2 + 0x14),auStack_1c,0
                             );
      FUN_007bf684(param_1,&local_14);
      puVar2 = (undefined4 *)(local_14 + -0xc);
      if (puVar2 == &DAT_00972504) {
        return param_1;
      }
      piVar5 = (int *)(local_14 + -4);
      DataMemoryBarrier(0x1f);
      do {
        ExclusiveAccess(piVar5);
        iVar3 = *piVar5;
        bVar1 = (bool)hasExclusiveAccess(piVar5);
      } while (!bVar1);
      *piVar5 = iVar3 + -1;
    }
    DataMemoryBarrier(0x1f);
    if (iVar3 < 1) {
      operator_delete(puVar2);
    }
  }
  return param_1;
}

// ---- FUN_007abf90  @ 0x7abf90
undefined4 * FUN_007abf90(undefined4 *param_1,int param_2)

{
  bool bVar1;
  undefined4 *puVar2;
  int iVar3;
  uint uVar4;
  int *piVar5;
  undefined1 auStack_1c [8];
  int local_14;
  
  uVar4 = *(uint *)(param_2 + 0x18);
  *param_1 = &DAT_00972510;
  if (uVar4 == 0) {
    FUN_007bf684(param_1,param_2 + 0x28);
  }
  else {
    if (*(uint *)(param_2 + 0x10) < uVar4) {
      local_14 = FUN_007bf858(*(undefined4 *)(param_2 + 0x14),uVar4,auStack_1c,0);
      FUN_007bf684(param_1,&local_14);
      puVar2 = (undefined4 *)(local_14 + -0xc);
      if (puVar2 == &DAT_00972504) {
        return param_1;
      }
      piVar5 = (int *)(local_14 + -4);
      DataMemoryBarrier(0x1f);
      do {
        ExclusiveAccess(piVar5);
        iVar3 = *piVar5;
        bVar1 = (bool)hasExclusiveAccess(piVar5);
      } while (!bVar1);
      *piVar5 = iVar3 + -1;
    }
    else {
      local_14 = FUN_007bf858(*(undefined4 *)(param_2 + 0x14),*(uint *)(param_2 + 0x10),auStack_1c,0
                             );
      FUN_007bf684(param_1,&local_14);
      puVar2 = (undefined4 *)(local_14 + -0xc);
      if (puVar2 == &DAT_00972504) {
        return param_1;
      }
      piVar5 = (int *)(local_14 + -4);
      DataMemoryBarrier(0x1f);
      do {
        ExclusiveAccess(piVar5);
        iVar3 = *piVar5;
        bVar1 = (bool)hasExclusiveAccess(piVar5);
      } while (!bVar1);
      *piVar5 = iVar3 + -1;
    }
    DataMemoryBarrier(0x1f);
    if (iVar3 < 1) {
      operator_delete(puVar2);
    }
  }
  return param_1;
}

// ---- FUN_007ac5bc  @ 0x7ac5bc
undefined4 * FUN_007ac5bc(undefined4 *param_1,int param_2)

{
  bool bVar1;
  undefined4 *puVar2;
  int iVar3;
  uint uVar4;
  int *piVar5;
  undefined1 auStack_1c [8];
  int local_14;
  
  uVar4 = *(uint *)(param_2 + 0x20);
  *param_1 = &DAT_00972510;
  if (uVar4 == 0) {
    FUN_007bf684(param_1,param_2 + 0x30);
  }
  else {
    if (*(uint *)(param_2 + 0x18) < uVar4) {
      local_14 = FUN_007bf858(*(undefined4 *)(param_2 + 0x1c),uVar4,auStack_1c,0);
      FUN_007bf684(param_1,&local_14);
      puVar2 = (undefined4 *)(local_14 + -0xc);
      if (puVar2 == &DAT_00972504) {
        return param_1;
      }
      piVar5 = (int *)(local_14 + -4);
      DataMemoryBarrier(0x1f);
      do {
        ExclusiveAccess(piVar5);
        iVar3 = *piVar5;
        bVar1 = (bool)hasExclusiveAccess(piVar5);
      } while (!bVar1);
      *piVar5 = iVar3 + -1;
    }
    else {
      local_14 = FUN_007bf858(*(undefined4 *)(param_2 + 0x1c),*(uint *)(param_2 + 0x18),auStack_1c,0
                             );
      FUN_007bf684(param_1,&local_14);
      puVar2 = (undefined4 *)(local_14 + -0xc);
      if (puVar2 == &DAT_00972504) {
        return param_1;
      }
      piVar5 = (int *)(local_14 + -4);
      DataMemoryBarrier(0x1f);
      do {
        ExclusiveAccess(piVar5);
        iVar3 = *piVar5;
        bVar1 = (bool)hasExclusiveAccess(piVar5);
      } while (!bVar1);
      *piVar5 = iVar3 + -1;
    }
    DataMemoryBarrier(0x1f);
    if (iVar3 < 1) {
      operator_delete(puVar2);
    }
  }
  return param_1;
}

// ---- FUN_007ac794  @ 0x7ac794
uint FUN_007ac794(uint param_1,int *param_2,char *param_3,char *param_4,uint *param_5,
                 wchar_t *param_6,wchar_t *param_7,uint *param_8)

{
  size_t sVar1;
  bool bVar2;
  bool bVar3;
  int local_24;
  
  if (param_4 <= param_3) {
    param_1 = 0;
  }
  local_24 = *param_2;
  if (param_4 > param_3) {
    param_1 = 1;
  }
  if (param_6 < param_7 && param_3 < param_4) {
    do {
      sVar1 = mbrtowc(param_6,param_3,(int)param_4 - (int)param_3,(mbstate_t *)&local_24);
      if (sVar1 == 0xffffffff) {
        param_1 = 2;
        break;
      }
      if (sVar1 == 0xfffffffe) {
        param_1 = 1;
        break;
      }
      if (sVar1 == 0) {
        *param_6 = L'\0';
        sVar1 = 1;
      }
      param_3 = param_3 + sVar1;
      param_6 = param_6 + 1;
      *param_2 = local_24;
      param_1 = (uint)(param_3 < param_4);
      bVar3 = param_6 <= param_7;
      bVar2 = param_7 == param_6;
      if (bVar3 && !bVar2) {
        bVar3 = param_3 <= param_4;
        bVar2 = param_4 == param_3;
      }
    } while (bVar3 && !bVar2);
  }
  *param_5 = (uint)param_3;
  *param_8 = (uint)param_6;
  return param_1;
}

// ---- FUN_007ac814  @ 0x7ac814
int FUN_007ac814(undefined4 param_1,int *param_2,char *param_3,char *param_4,int param_5)

{
  size_t sVar1;
  int iVar2;
  mbstate_t local_24;
  
  local_24.__count = *param_2;
  if (param_5 == 0 || param_4 <= param_3) {
    iVar2 = 0;
  }
  else {
    iVar2 = 0;
    do {
      sVar1 = mbrtowc((wchar_t *)0x0,param_3,(int)param_4 - (int)param_3,&local_24);
      if (sVar1 + 2 < 2) {
        return iVar2;
      }
      if (sVar1 == 0) {
        sVar1 = 1;
      }
      param_5 = param_5 + -1;
      param_3 = param_3 + sVar1;
      iVar2 = iVar2 + sVar1;
      *param_2 = local_24.__count;
    } while (param_3 < param_4 && param_5 != 0);
  }
  return iVar2;
}

// ---- FUN_007ac87c  @ 0x7ac87c
void FUN_007ac87c(int param_1)

{
  undefined1 auStack_14 [8];
  
  *(undefined4 *)(param_1 + 8) = 0;
  *(undefined4 *)(param_1 + 4) = 6;
  *(undefined4 *)(param_1 + 0xc) = 0x1002;
  FUN_007adf48(auStack_14);
  FUN_007b0164(param_1 + 0x6c,auStack_14);
  FUN_007b01c0(auStack_14);
  return;
}

// ---- FUN_007ac8ac  @ 0x7ac8ac
undefined4 FUN_007ac8ac(undefined4 param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  FUN_007afd04(param_1,param_2 + 0x6c,param_3,param_4,param_4);
  FUN_007b0164(param_2 + 0x6c,param_3);
  FUN_0079a948(param_2,1);
  return param_1;
}

// ---- FUN_007acbd8  @ 0x7acbd8
void FUN_007acbd8(undefined4 *param_1)

{
  *param_1 = 0;
  return;
}

// ---- FUN_007acbe0  @ 0x7acbe0
undefined4 FUN_007acbe0(void)

{
  return 0;
}

// ---- FUN_007acbe8  @ 0x7acbe8
void FUN_007acbe8(int param_1,char *param_2,size_t param_3,char *param_4,tm *param_5)

{
  char *__s;
  size_t sVar1;
  char *__locale;
  
  __s = setlocale(6,(char *)0x0);
  if (__s == (char *)0x0) {
    __locale = (char *)0x0;
  }
  else {
    sVar1 = strlen(__s);
    __locale = operator_new__(sVar1 + 1);
    memcpy(__locale,__s,sVar1 + 1);
    setlocale(6,*(char **)(param_1 + 0x10));
  }
  sVar1 = strftime(param_2,param_3,param_4,param_5);
  setlocale(6,__locale);
  if (__locale != (char *)0x0) {
    operator_delete__(__locale);
  }
  if (sVar1 == 0) {
    *param_2 = '\0';
    return;
  }
  return;
}

// ---- FUN_007acc5c  @ 0x7acc5c
void FUN_007acc5c(int param_1)

{
  undefined4 *puVar1;
  
  puVar1 = *(undefined4 **)(param_1 + 8);
  if (puVar1 == (undefined4 *)0x0) {
    puVar1 = operator_new(200);
    puVar1[1] = 0;
    puVar1[2] = 0;
    puVar1[3] = 0;
    puVar1[4] = 0;
    puVar1[5] = 0;
    puVar1[6] = 0;
    puVar1[7] = 0;
    puVar1[8] = 0;
    puVar1[9] = 0;
    puVar1[10] = 0;
    puVar1[0xb] = 0;
    puVar1[0xc] = 0;
    puVar1[0xd] = 0;
    puVar1[0xe] = 0;
    puVar1[0xf] = 0;
    puVar1[0x10] = 0;
    puVar1[0x11] = 0;
    puVar1[0x12] = 0;
    puVar1[0x13] = 0;
    puVar1[0x14] = 0;
    puVar1[0x15] = 0;
    puVar1[0x16] = 0;
    puVar1[0x17] = 0;
    puVar1[0x18] = 0;
    puVar1[0x19] = 0;
    puVar1[0x1a] = 0;
    puVar1[0x1b] = 0;
    puVar1[0x1c] = 0;
    puVar1[0x1d] = 0;
    puVar1[0x1e] = 0;
    puVar1[0x1f] = 0;
    *puVar1 = &DAT_0093dbb0;
    puVar1[0x20] = 0;
    puVar1[0x21] = 0;
    puVar1[0x22] = 0;
    puVar1[0x23] = 0;
    puVar1[0x24] = 0;
    puVar1[0x25] = 0;
    puVar1[0x26] = 0;
    puVar1[0x27] = 0;
    puVar1[0x28] = 0;
    puVar1[0x29] = 0;
    puVar1[0x2a] = 0;
    puVar1[0x2b] = 0;
    puVar1[0x2c] = 0;
    puVar1[0x2d] = 0;
    puVar1[0x2e] = 0;
    puVar1[0x2f] = 0;
    puVar1[0x30] = 0;
    *(undefined1 *)(puVar1 + 0x31) = 0;
    *(undefined4 **)(param_1 + 8) = puVar1;
  }
  puVar1[2] = "%m/%d/%y";
  puVar1[3] = "%m/%d/%y";
  puVar1[4] = "%H:%M:%S";
  puVar1[5] = "%H:%M:%S";
  puVar1[6] = &DAT_0084895d;
  puVar1[7] = &DAT_0084895d;
  puVar1[10] = &DAT_0084895d;
  puVar1[8] = &DAT_00853314;
  puVar1[0x11] = "Saturday";
  puVar1[0x13] = &DAT_00853364;
  puVar1[9] = &DAT_00853318;
  puVar1[0xb] = "Sunday";
  puVar1[0xc] = "Monday";
  puVar1[0xd] = "Tuesday";
  puVar1[0xe] = "Wednesday";
  puVar1[0xf] = "Thursday";
  puVar1[0x10] = "Friday";
  puVar1[0x12] = &DAT_00853360;
  puVar1[0x14] = &DAT_00853368;
  puVar1[0x15] = &DAT_0085336c;
  puVar1[0x16] = &DAT_00853370;
  puVar1[0x17] = &DAT_00853374;
  puVar1[0x18] = &DAT_00853378;
  puVar1[0x19] = "January";
  puVar1[0x1a] = "February";
  puVar1[0x1b] = "March";
  puVar1[0x1c] = "April";
  puVar1[0x1d] = &DAT_008533a0;
  puVar1[0x1e] = &DAT_008533a4;
  puVar1[0x1f] = &DAT_008533ac;
  puVar1[0x20] = "August";
  puVar1[0x21] = "September";
  puVar1[0x22] = "October";
  puVar1[0x23] = "November";
  puVar1[0x29] = &DAT_008533a0;
  puVar1[0x25] = &DAT_008533e8;
  puVar1[0x26] = &DAT_008533ec;
  puVar1[0x24] = "December";
  puVar1[0x27] = &DAT_008533f0;
  puVar1[0x28] = &DAT_008533f4;
  puVar1[0x2a] = &DAT_008533f8;
  puVar1[0x2b] = &DAT_008533fc;
  puVar1[0x2c] = &DAT_00853400;
  puVar1[0x2d] = &DAT_00853404;
  puVar1[0x2e] = &DAT_00853408;
  puVar1[0x2f] = &DAT_0085340c;
  puVar1[0x30] = &DAT_00853410;
  return;
}

// ---- FUN_007acf24  @ 0x7acf24
void FUN_007acf24(int param_1,wchar_t *param_2,size_t param_3,wchar_t *param_4,tm *param_5)

{
  char *__s;
  size_t sVar1;
  char *__locale;
  
  __s = setlocale(6,(char *)0x0);
  if (__s == (char *)0x0) {
    sVar1 = wcsftime(param_2,param_3,param_4,param_5);
    setlocale(6,(char *)0x0);
  }
  else {
    sVar1 = strlen(__s);
    __locale = operator_new__(sVar1 + 1);
    memcpy(__locale,__s,sVar1 + 1);
    setlocale(6,*(char **)(param_1 + 0x10));
    sVar1 = wcsftime(param_2,param_3,param_4,param_5);
    setlocale(6,__locale);
    if (__locale != (char *)0x0) {
      operator_delete__(__locale);
    }
  }
  if (sVar1 == 0) {
    *param_2 = L'\0';
    return;
  }
  return;
}

// ---- FUN_007acfac  @ 0x7acfac
void FUN_007acfac(int param_1)

{
  undefined4 *puVar1;
  
  puVar1 = *(undefined4 **)(param_1 + 8);
  if (puVar1 == (undefined4 *)0x0) {
    puVar1 = operator_new(200);
    puVar1[1] = 0;
    puVar1[2] = 0;
    puVar1[3] = 0;
    puVar1[4] = 0;
    puVar1[5] = 0;
    puVar1[6] = 0;
    puVar1[7] = 0;
    puVar1[8] = 0;
    puVar1[9] = 0;
    puVar1[10] = 0;
    puVar1[0xb] = 0;
    puVar1[0xc] = 0;
    puVar1[0xd] = 0;
    puVar1[0xe] = 0;
    puVar1[0xf] = 0;
    puVar1[0x10] = 0;
    puVar1[0x11] = 0;
    puVar1[0x12] = 0;
    puVar1[0x13] = 0;
    puVar1[0x14] = 0;
    puVar1[0x15] = 0;
    puVar1[0x16] = 0;
    puVar1[0x17] = 0;
    puVar1[0x18] = 0;
    puVar1[0x19] = 0;
    puVar1[0x1a] = 0;
    puVar1[0x1b] = 0;
    puVar1[0x1c] = 0;
    puVar1[0x1d] = 0;
    puVar1[0x1e] = 0;
    puVar1[0x1f] = 0;
    *puVar1 = &DAT_0093eaa8;
    puVar1[0x20] = 0;
    puVar1[0x21] = 0;
    puVar1[0x22] = 0;
    puVar1[0x23] = 0;
    puVar1[0x24] = 0;
    puVar1[0x25] = 0;
    puVar1[0x26] = 0;
    puVar1[0x27] = 0;
    puVar1[0x28] = 0;
    puVar1[0x29] = 0;
    puVar1[0x2a] = 0;
    puVar1[0x2b] = 0;
    puVar1[0x2c] = 0;
    puVar1[0x2d] = 0;
    puVar1[0x2e] = 0;
    puVar1[0x2f] = 0;
    puVar1[0x30] = 0;
    *(undefined1 *)(puVar1 + 0x31) = 0;
    *(undefined4 **)(param_1 + 8) = puVar1;
  }
  puVar1[2] = &DAT_008810e0;
  puVar1[3] = &DAT_008810e0;
  puVar1[4] = &DAT_00881104;
  puVar1[5] = &DAT_00881104;
  puVar1[6] = &DAT_00881128;
  puVar1[7] = &DAT_00881128;
  puVar1[10] = &DAT_00881128;
  puVar1[8] = &DAT_0088112c;
  puVar1[0x11] = L"Saturday";
  puVar1[0x13] = &DAT_00881238;
  puVar1[9] = &DAT_00881138;
  puVar1[0xb] = L"Sunday";
  puVar1[0xc] = L"Monday";
  puVar1[0xd] = L"Tuesday";
  puVar1[0xe] = L"Wednesday";
  puVar1[0xf] = L"Thursday";
  puVar1[0x10] = L"Friday";
  puVar1[0x12] = &DAT_00881228;
  puVar1[0x14] = &DAT_00881248;
  puVar1[0x15] = &DAT_00881258;
  puVar1[0x16] = &DAT_00881268;
  puVar1[0x17] = &DAT_00881278;
  puVar1[0x18] = &DAT_00881288;
  puVar1[0x19] = L"January";
  puVar1[0x1a] = L"February";
  puVar1[0x1b] = L"March";
  puVar1[0x1c] = L"April";
  puVar1[0x1d] = &DAT_0088130c;
  puVar1[0x1e] = &DAT_0088131c;
  puVar1[0x1f] = &DAT_00881330;
  puVar1[0x20] = L"August";
  puVar1[0x21] = L"September";
  puVar1[0x22] = L"October";
  puVar1[0x23] = L"November";
  puVar1[0x29] = &DAT_0088130c;
  puVar1[0x25] = &DAT_008813f0;
  puVar1[0x26] = &DAT_00881400;
  puVar1[0x24] = L"December";
  puVar1[0x27] = &DAT_00881410;
  puVar1[0x28] = &DAT_00881420;
  puVar1[0x2a] = &DAT_00881430;
  puVar1[0x2b] = &DAT_00881440;
  puVar1[0x2c] = &DAT_00881450;
  puVar1[0x2d] = &DAT_00881460;
  puVar1[0x2e] = &DAT_00881470;
  puVar1[0x2f] = &DAT_00881480;
  puVar1[0x30] = &DAT_00881490;
  return;
}

// ---- FUN_007ad274  @ 0x7ad274
int FUN_007ad274(int *param_1,int *param_2,undefined1 *param_3,undefined4 param_4)

{
  uint uVar1;
  int iVar2;
  byte *pbVar3;
  int iVar4;
  byte *pbVar5;
  int iVar6;
  
  pbVar5 = (byte *)param_1[2];
  pbVar3 = (byte *)param_1[3];
  *param_3 = 1;
  if (pbVar5 < pbVar3) {
    uVar1 = (uint)*pbVar5;
  }
  else {
    uVar1 = (**(code **)(*param_1 + 0x24))();
    if (uVar1 == 0xffffffff) {
      return 0;
    }
    pbVar5 = (byte *)param_1[2];
    pbVar3 = (byte *)param_1[3];
  }
  iVar6 = 0;
  do {
    iVar4 = (int)pbVar3 - (int)pbVar5;
    if (iVar4 < 2) {
      if ((undefined1 *)param_2[5] < (undefined1 *)param_2[6]) {
        *(undefined1 *)param_2[5] = (char)uVar1;
        param_2[5] = param_2[5] + 1;
      }
      else {
        iVar4 = (**(code **)(*param_2 + 0x34))(param_2);
        if (iVar4 == -1) goto LAB_007ad300;
      }
      iVar6 = iVar6 + 1;
      pbVar3 = (byte *)param_1[3];
      if ((byte *)param_1[2] < pbVar3) {
        pbVar5 = (byte *)param_1[2] + 1;
        param_1[2] = (int)pbVar5;
      }
      else {
        iVar4 = (**(code **)(*param_1 + 0x28))(param_1);
        if (iVar4 == -1) {
          return iVar6;
        }
        pbVar5 = (byte *)param_1[2];
        pbVar3 = (byte *)param_1[3];
      }
      if (pbVar3 <= pbVar5) goto LAB_007ad2ac;
      uVar1 = (uint)*pbVar5;
    }
    else {
      iVar2 = (**(code **)(*param_2 + 0x30))
                        (param_2,pbVar5,iVar4,*(code **)(*param_2 + 0x30),param_4);
      iVar6 = iVar6 + iVar2;
      param_1[2] = param_1[2] + iVar2;
      if (iVar2 < iVar4) {
LAB_007ad300:
        *param_3 = 0;
        return iVar6;
      }
LAB_007ad2ac:
      uVar1 = (**(code **)(*param_1 + 0x24))(param_1);
    }
    if (uVar1 == 0xffffffff) {
      return iVar6;
    }
    pbVar5 = (byte *)param_1[2];
    pbVar3 = (byte *)param_1[3];
  } while( true );
}

// ---- FUN_007ad334  @ 0x7ad334
int FUN_007ad334(int *param_1,int *param_2,undefined1 *param_3)

{
  int iVar1;
  int *piVar2;
  int *piVar3;
  int iVar4;
  int iVar5;
  
  piVar3 = (int *)param_1[2];
  piVar2 = (int *)param_1[3];
  *param_3 = 1;
  if (piVar3 < piVar2) {
    iVar1 = *piVar3;
  }
  else {
    iVar1 = (**(code **)(*param_1 + 0x24))();
  }
  iVar5 = 0;
  do {
    while( true ) {
      if (iVar1 == -1) {
        return iVar5;
      }
      iVar4 = param_1[3] - param_1[2] >> 2;
      if (iVar4 < 2) break;
      iVar1 = (**(code **)(*param_2 + 0x30))(param_2,param_1[2],iVar4);
      iVar5 = iVar5 + iVar1;
      param_1[2] = param_1[2] + iVar1 * 4;
      if (iVar1 < iVar4) {
LAB_007ad3cc:
        *param_3 = 0;
        return iVar5;
      }
LAB_007ad36e:
      iVar1 = (**(code **)(*param_1 + 0x24))(param_1);
    }
    piVar2 = (int *)param_2[5];
    if (piVar2 < (int *)param_2[6]) {
      *piVar2 = iVar1;
      param_2[5] = (int)(piVar2 + 1);
    }
    else {
      iVar1 = (**(code **)(*param_2 + 0x34))(param_2,iVar1);
      if (iVar1 == -1) goto LAB_007ad3cc;
    }
    piVar2 = (int *)param_1[2];
    iVar5 = iVar5 + 1;
    if (piVar2 < (int *)param_1[3]) {
      iVar1 = *piVar2;
      param_1[2] = (int)(piVar2 + 1);
    }
    else {
      iVar1 = (**(code **)(*param_1 + 0x28))(param_1);
    }
    if (iVar1 == -1) {
      return iVar5;
    }
    if ((int *)param_1[3] <= (int *)param_1[2]) goto LAB_007ad36e;
    iVar1 = *(int *)param_1[2];
  } while( true );
}

// ---- FUN_007ad3e8  @ 0x7ad3e8
undefined4 * FUN_007ad3e8(void)

{
  int iVar1;
  uint uVar2;
  
  uVar2 = DAT_00972470 & 1;
  if ((uVar2 == 0) && (iVar1 = __cxa_guard_acquire(&DAT_00972470), iVar1 != 0)) {
    DAT_009716f8 = uVar2;
    __cxa_guard_release(&DAT_00972470);
  }
  return &DAT_009716f8;
}

// ---- FUN_007ad420  @ 0x7ad420
undefined4 * FUN_007ad420(undefined4 *param_1,undefined4 param_2)

{
  undefined2 *puVar1;
  int iVar2;
  int iVar3;
  undefined4 *puVar4;
  undefined4 *puVar5;
  
  iVar2 = 0;
  puVar4 = &DAT_00971be0;
  puVar5 = &DAT_00972400;
  param_1[4] = 0;
  *param_1 = param_2;
  param_1[2] = 0x1c;
  param_1[1] = &DAT_00971be0;
  param_1[3] = &DAT_00972400;
  while( true ) {
    *(undefined4 *)((int)puVar5 + iVar2) = 0;
    *(undefined4 *)((int)puVar4 + iVar2) = 0;
    iVar2 = iVar2 + 4;
    if (iVar2 == 0x70) break;
    puVar4 = (undefined4 *)param_1[1];
    puVar5 = (undefined4 *)param_1[3];
  }
  param_1[4] = &DAT_00971878;
  DAT_00971878 = &DAT_009716ec;
  puVar1 = (undefined2 *)FUN_007b007c();
  DAT_009716ec = *puVar1;
  DAT_0097187c = 0;
  iVar2 = 8;
  do {
    *(undefined4 *)(param_1[4] + iVar2) = 0;
    iVar2 = iVar2 + 4;
  } while (iVar2 != 0x18);
  FUN_007b0cf4(&DAT_009719c0,0,0,1);
  FUN_007b042c(param_1,&DAT_0097247c,&DAT_009719c0);
  FUN_007a4f48(&DAT_009717fc,1);
  FUN_007b042c(param_1,&DAT_009716a8,&DAT_009717fc);
  DAT_00972394 = 1;
  DAT_0097171c = 1;
  DAT_00972398 = 0;
  DAT_0097239c = 0;
  DAT_00972390 = &DAT_0093de20;
  DAT_009723a0 = 0;
  DAT_009723a4 = 0;
  DAT_009723a8 = 0;
  DAT_009723ac = 0;
  DAT_009723b0 = 0;
  DAT_009723b4 = 0;
  DAT_009723b5 = 0;
  DAT_009723f4 = 0;
  DAT_00971720 = &DAT_00972390;
  DAT_00971718 = &PTR_FUN_007c7498_1_0093daf0;
  FUN_007c7520(&DAT_00971718,0);
  FUN_007b042c(param_1,&DAT_00971694,&DAT_00971718);
  DAT_00972478 = 1;
  DAT_00972474 = &PTR_LAB_0079ab60_1_0093db40;
  FUN_007b042c(param_1,&DAT_00971690,&DAT_00972474);
  DAT_00971d84 = 1;
  DAT_00971d80 = &PTR_LAB_0079ab78_1_0093db80;
  FUN_007b042c(param_1,&DAT_0097168c,&DAT_00971d80);
  DAT_009716c8 = 1;
  DAT_009716c4 = &PTR_LAB_0079b000_1_0093dab0;
  DAT_009716cc = FUN_007b0058();
  FUN_007b042c(param_1,&DAT_00971678);
  DAT_0097227c = 1;
  DAT_00971d64 = 1;
  DAT_00972280 = 0;
  DAT_00972284 = 0;
  DAT_00972278 = &DAT_0093de00;
  DAT_00972288 = 0;
  DAT_00972289 = 0;
  DAT_0097228a = 0;
  DAT_0097228c = 0;
  DAT_00972290 = 0;
  DAT_00972294 = 0;
  DAT_00972298 = 0;
  DAT_0097229c = 0;
  DAT_009722a0 = 0;
  DAT_009722a4 = 0;
  DAT_009722a8 = 0;
  DAT_009722a9 = 0;
  DAT_009722aa = 0;
  DAT_009722ab = 0;
  DAT_009722ac = 0;
  DAT_009722ad = 0;
  DAT_009722ae = 0;
  DAT_009722af = 0;
  DAT_009722bb = 0;
  DAT_00971d68 = &DAT_00972278;
  DAT_00971d60 = &PTR_FUN_007c76f0_1_0093dc08;
  FUN_007c78b0(&DAT_00971d60,0,0);
  FUN_007b042c(param_1,&DAT_009716a4,&DAT_00971d60);
  DAT_00972348 = 1;
  DAT_00971d4c = 1;
  DAT_00972344 = &DAT_0093de10;
  DAT_0097234c = 0;
  DAT_00972350 = 0;
  DAT_00972354 = 0;
  DAT_00972355 = 0;
  DAT_00972356 = 0;
  DAT_00972358 = 0;
  DAT_0097235c = 0;
  DAT_00972360 = 0;
  DAT_00972364 = 0;
  DAT_00972368 = 0;
  DAT_0097236c = 0;
  DAT_00972370 = 0;
  DAT_00972374 = 0;
  DAT_00972375 = 0;
  DAT_00972376 = 0;
  DAT_00972377 = 0;
  DAT_00972378 = 0;
  DAT_00972379 = 0;
  DAT_0097237a = 0;
  DAT_0097237b = 0;
  DAT_00972387 = 0;
  DAT_00971d50 = &DAT_00972344;
  DAT_00971d48 = &PTR_FUN_007c76ac_1_0093dbd0;
  FUN_007c77f4(&DAT_00971d48,0,0);
  FUN_007b042c(param_1,&DAT_009716a0,&DAT_00971d48);
  DAT_00971c68 = 1;
  DAT_00971c64 = &PTR_FUN_0079ab30_1_0093dd30;
  FUN_007b042c(param_1,&DAT_0097169c,&DAT_00971c64);
  DAT_00971728 = 1;
  DAT_00971724 = &PTR_LAB_0079ab48_1_0093dd48;
  FUN_007b042c(param_1,&DAT_00971698,&DAT_00971724);
  DAT_00971738 = 1;
  DAT_0097173c = 0;
  DAT_00971734 = &DAT_0093dbb0;
  DAT_00971740 = 0;
  DAT_00971744 = 0;
  DAT_00971748 = 0;
  DAT_0097174c = 0;
  DAT_00971750 = 0;
  DAT_00971754 = 0;
  DAT_00971758 = 0;
  DAT_0097175c = 0;
  DAT_00971760 = 0;
  DAT_00971764 = 0;
  DAT_00971768 = 0;
  DAT_0097176c = 0;
  DAT_00971770 = 0;
  DAT_00971774 = 0;
  DAT_00971778 = 0;
  DAT_0097177c = 0;
  DAT_00971780 = 0;
  DAT_00971784 = 0;
  DAT_00971788 = 0;
  DAT_0097178c = 0;
  DAT_00971790 = 0;
  DAT_00971794 = 0;
  DAT_00971798 = 0;
  DAT_0097179c = 0;
  DAT_009717a0 = 0;
  DAT_009717a4 = 0;
  DAT_009717a8 = 0;
  DAT_009717ac = 0;
  DAT_009717b0 = 0;
  DAT_009717b4 = 0;
  DAT_009717b8 = 0;
  DAT_009717bc = 0;
  DAT_009717c0 = 0;
  DAT_009717c4 = 0;
  DAT_009717c8 = 0;
  DAT_009717cc = 0;
  DAT_009717d0 = 0;
  DAT_009717d4 = 0;
  DAT_009717d8 = 0;
  DAT_009717dc = 0;
  DAT_009717e0 = 0;
  DAT_009717e4 = 0;
  DAT_009717e8 = 0;
  DAT_009717ec = 0;
  DAT_009717f0 = 0;
  DAT_009717f4 = 0;
  DAT_009717f8 = 0;
  FUN_0079c06c(&DAT_009716b0,&DAT_00971734,1);
  FUN_007b042c(param_1,&DAT_00971688,&DAT_009716b0);
  DAT_0097238c = 1;
  DAT_00972388 = &PTR_LAB_0079abd8_1_0093dd90;
  FUN_007b042c(param_1,&DAT_00971680,&DAT_00972388);
  DAT_00971d44 = 1;
  DAT_00971d40 = &DAT_0093dd60;
  FUN_007b042c(param_1,&DAT_00971684,&DAT_00971d40);
  FUN_0079c4f0(&DAT_00971708,1);
  FUN_007b042c(param_1,&DAT_0097167c,&DAT_00971708);
  FUN_007af5b4(&DAT_00971d88,1);
  FUN_007b042c(param_1,&DAT_00972480,&DAT_00971d88);
  FUN_007a4fb0(&DAT_00972338,1);
  FUN_007b042c(param_1,&DAT_009716ac,&DAT_00972338);
  DAT_0097189c = 1;
  DAT_00971700 = 1;
  DAT_00971898 = &DAT_0093ed18;
  DAT_009718a0 = 0;
  DAT_009718a4 = 0;
  DAT_009718a8 = 0;
  DAT_009718ac = 0;
  DAT_009718b0 = 0;
  DAT_009718b4 = 0;
  DAT_009718b8 = 0;
  DAT_009718bc = 0;
  DAT_009718c0 = 0;
  DAT_009719bc = 0;
  DAT_00971704 = &DAT_00971898;
  DAT_009716fc = &PTR_FUN_007c74dc_1_0093e9e8;
  FUN_007c75dc(&DAT_009716fc,0);
  FUN_007b042c(param_1,&DAT_009724f0,&DAT_009716fc);
  DAT_00971c70 = 1;
  DAT_00971c6c = &PTR_LAB_007b0eb4_1_0093ea38;
  FUN_007b042c(param_1,&DAT_009724ec,&DAT_00971c6c);
  DAT_00971730 = 1;
  DAT_0097172c = &PTR_LAB_007b0ecc_1_0093ea78;
  FUN_007b042c(param_1,&DAT_009724e8,&DAT_0097172c);
  DAT_00971d58 = 1;
  DAT_00971d54 = &PTR_LAB_007b1354_1_0093e968;
  DAT_00971d5c = FUN_007b0058();
  FUN_007b042c(param_1,&DAT_009724d4);
  DAT_0097180c = 1;
  DAT_00972330 = 1;
  DAT_00971808 = &DAT_0093ecf8;
  DAT_00971810 = 0;
  DAT_00971814 = 0;
  DAT_00971818 = 0;
  DAT_0097181c = 0;
  DAT_00971820 = 0;
  DAT_00971824 = 0;
  DAT_00971828 = 0;
  DAT_0097182c = 0;
  DAT_00971830 = 0;
  DAT_00971834 = 0;
  DAT_00971838 = 0;
  DAT_0097183c = 0;
  DAT_00971840 = 0;
  DAT_00971841 = 0;
  DAT_00971842 = 0;
  DAT_00971843 = 0;
  DAT_00971844 = 0;
  DAT_00971845 = 0;
  DAT_00971846 = 0;
  DAT_00971847 = 0;
  DAT_00971874 = 0;
  DAT_00972334 = &DAT_00971808;
  DAT_0097232c = &PTR_FUN_007c7778_1_0093eb00;
  FUN_007c7a38(&DAT_0097232c,0,0);
  FUN_007b042c(param_1,&DAT_00972500,&DAT_0097232c);
  DAT_009722c0 = 1;
  DAT_00971d78 = 1;
  DAT_009722bc = &DAT_0093ed08;
  DAT_009722c4 = 0;
  DAT_009722c8 = 0;
  DAT_009722cc = 0;
  DAT_009722d0 = 0;
  DAT_009722d4 = 0;
  DAT_009722d8 = 0;
  DAT_009722dc = 0;
  DAT_009722e0 = 0;
  DAT_009722e4 = 0;
  DAT_009722e8 = 0;
  DAT_009722ec = 0;
  DAT_009722f0 = 0;
  DAT_009722f4 = 0;
  DAT_009722f5 = 0;
  DAT_009722f6 = 0;
  DAT_009722f7 = 0;
  DAT_009722f8 = 0;
  DAT_009722f9 = 0;
  DAT_009722fa = 0;
  DAT_009722fb = 0;
  DAT_00972328 = 0;
  DAT_00971d7c = &DAT_009722bc;
  DAT_00971d74 = &PTR_FUN_007c7734_1_0093eac8;
  FUN_007c796c(&DAT_00971d74,0);
  FUN_007b042c(param_1,&DAT_009724fc,&DAT_00971d74);
  DAT_009716d4 = 1;
  DAT_009716d0 = &PTR_FUN_007b0e84_1_0093ec28;
  FUN_007b042c(param_1,&DAT_009724f8,&DAT_009716d0);
  DAT_00971d70 = 1;
  DAT_00971d6c = &PTR_LAB_007b0e9c_1_0093ec40;
  FUN_007b042c(param_1,&DAT_009724f4,&DAT_00971d6c);
  DAT_00971c78 = 1;
  DAT_00971c7c = 0;
  DAT_00971c74 = &DAT_0093eaa8;
  DAT_00971c80 = 0;
  DAT_00971c84 = 0;
  DAT_00971c88 = 0;
  DAT_00971c8c = 0;
  DAT_00971c90 = 0;
  DAT_00971c94 = 0;
  DAT_00971c98 = 0;
  DAT_00971c9c = 0;
  DAT_00971ca0 = 0;
  DAT_00971ca4 = 0;
  DAT_00971ca8 = 0;
  DAT_00971cac = 0;
  DAT_00971cb0 = 0;
  DAT_00971cb4 = 0;
  DAT_00971cb8 = 0;
  DAT_00971cbc = 0;
  DAT_00971cc0 = 0;
  DAT_00971cc4 = 0;
  DAT_00971cc8 = 0;
  DAT_00971ccc = 0;
  DAT_00971cd0 = 0;
  DAT_00971cd4 = 0;
  DAT_00971cd8 = 0;
  DAT_00971cdc = 0;
  DAT_00971ce0 = 0;
  DAT_00971ce4 = 0;
  DAT_00971ce8 = 0;
  DAT_00971cec = 0;
  DAT_00971cf0 = 0;
  DAT_00971cf4 = 0;
  DAT_00971cf8 = 0;
  DAT_00971cfc = 0;
  DAT_00971d00 = 0;
  DAT_00971d04 = 0;
  DAT_00971d08 = 0;
  DAT_00971d0c = 0;
  DAT_00971d10 = 0;
  DAT_00971d14 = 0;
  DAT_00971d18 = 0;
  DAT_00971d1c = 0;
  DAT_00971d20 = 0;
  DAT_00971d24 = 0;
  DAT_00971d28 = 0;
  DAT_00971d2c = 0;
  DAT_00971d30 = 0;
  DAT_00971d34 = 0;
  DAT_00971d38 = 0;
  FUN_007b2340(&DAT_00971c50,&DAT_00971c74,1);
  FUN_007b042c(param_1,&DAT_009724e4,&DAT_00971c50);
  DAT_00971894 = 1;
  DAT_00971890 = &PTR_LAB_007b0f2c_1_0093ec88;
  FUN_007b042c(param_1,&DAT_009724dc,&DAT_00971890);
  DAT_009723fc = 1;
  DAT_009723f8 = &DAT_0093ec58;
  FUN_007b042c(param_1,&DAT_009724e0,&DAT_009723f8);
  FUN_007b27c4(&DAT_00972268,1);
  FUN_007b042c(param_1,&DAT_009724d8,&DAT_00972268);
  iVar3 = param_1[3];
  iVar2 = FUN_007b03f0(&DAT_00971694);
  *(undefined ***)(iVar3 + iVar2 * 4) = &DAT_00972390;
  iVar3 = param_1[3];
  iVar2 = FUN_007b03f0(&DAT_009716a4);
  *(undefined ***)(iVar3 + iVar2 * 4) = &DAT_00972278;
  iVar3 = param_1[3];
  iVar2 = FUN_007b03f0(&DAT_009716a0);
  *(undefined ***)(iVar3 + iVar2 * 4) = &DAT_00972344;
  iVar3 = param_1[3];
  iVar2 = FUN_007b03f0(&DAT_00971688);
  *(undefined ***)(iVar3 + iVar2 * 4) = &DAT_00971734;
  iVar3 = param_1[3];
  iVar2 = FUN_007b03f0(&DAT_009724f0);
  *(undefined ***)(iVar3 + iVar2 * 4) = &DAT_00971898;
  iVar3 = param_1[3];
  iVar2 = FUN_007b03f0(&DAT_00972500);
  *(undefined ***)(iVar3 + iVar2 * 4) = &DAT_00971808;
  iVar3 = param_1[3];
  iVar2 = FUN_007b03f0(&DAT_009724fc);
  *(undefined ***)(iVar3 + iVar2 * 4) = &DAT_009722bc;
  iVar3 = param_1[3];
  iVar2 = FUN_007b03f0(&DAT_009724e4);
  *(undefined ***)(iVar3 + iVar2 * 4) = &DAT_00971c74;
  return param_1;
}

// ---- FUN_007adf00  @ 0x7adf00
void FUN_007adf00(void)

{
  undefined4 extraout_r2;
  undefined4 in_r3;
  
  pthread_once((pthread_once_t *)&DAT_00972494,(__init_routine *)&LAB_007aded4_1);
  if (DAT_00972498 != (undefined *)0x0) {
    return;
  }
  FUN_007ad420(&DAT_009716d8,2,extraout_r2,0,in_r3);
  DAT_00972498 = &DAT_009716d8;
  DAT_0097249c = &DAT_009716d8;
  return;
}

// ---- FUN_007adf48  @ 0x7adf48
int * FUN_007adf48(int *param_1)

{
  bool bVar1;
  int *piVar2;
  pthread_mutex_t *__mutex;
  int iVar3;
  int extraout_r1;
  
  *param_1 = 0;
  FUN_007adf00();
  piVar2 = DAT_0097249c;
  *param_1 = (int)DAT_0097249c;
  if (piVar2 == DAT_00972498) {
    DataMemoryBarrier(0x1f);
    do {
      ExclusiveAccess(piVar2);
      bVar1 = (bool)hasExclusiveAccess(piVar2);
    } while (!bVar1);
    *piVar2 = *piVar2 + 1;
    DataMemoryBarrier(0x1f);
    return param_1;
  }
  __mutex = (pthread_mutex_t *)FUN_007ad3e8();
  iVar3 = pthread_mutex_lock(__mutex);
  if (iVar3 != 0) {
                    /* WARNING: Subroutine does not return */
    FUN_00798360();
  }
  DataMemoryBarrier(0x1f);
  do {
    ExclusiveAccess(DAT_0097249c);
    bVar1 = (bool)hasExclusiveAccess(DAT_0097249c);
  } while (!bVar1);
  *DAT_0097249c = *DAT_0097249c + 1;
  DataMemoryBarrier(0x1f);
  *param_1 = (int)DAT_0097249c;
  iVar3 = pthread_mutex_unlock(__mutex);
  if (iVar3 != 0) {
    FUN_00798388();
    if (extraout_r1 == -1) {
                    /* WARNING: Subroutine does not return */
      __cxa_call_unexpected();
    }
                    /* WARNING: Subroutine does not return */
    __cxa_end_cleanup();
  }
  return param_1;
}

// ---- FUN_007ae0e4  @ 0x7ae0e4
undefined * FUN_007ae0e4(uint param_1)

{
  switch(param_1 & 0x3d) {
  case 1:
  case 0x11:
    return &DAT_00853418;
  default:
    return (undefined *)0x0;
  case 5:
    return &DAT_00853430;
  case 8:
    return &DAT_0084a424;
  case 9:
    return &DAT_00853428;
  case 0xc:
    return &DAT_00853434;
  case 0xd:
    return &DAT_0085341c;
  case 0x10:
  case 0x30:
    return &DAT_0084a450;
  case 0x14:
    return &DAT_0085342c;
  case 0x15:
    return &DAT_00853430;
  case 0x18:
    return &DAT_00853420;
  case 0x19:
    return &DAT_00853428;
  case 0x1c:
    return &DAT_00853438;
  case 0x1d:
    return &DAT_0085341c;
  case 0x34:
    return &DAT_0085342c;
  case 0x38:
    return &DAT_00853424;
  case 0x3c:
    return &DAT_0085343c;
  }
}

// ---- FUN_007ae1d4  @ 0x7ae1d4
int FUN_007ae1d4(int param_1,void *param_2,size_t param_3)

{
  ssize_t sVar1;
  int *piVar2;
  size_t __n;
  
  __n = param_3;
  do {
    while( true ) {
      sVar1 = write(param_1,param_2,__n);
      if (sVar1 != -1) break;
      piVar2 = (int *)__errno();
      if (*piVar2 != 4) goto LAB_007ae1fe;
    }
    __n = __n - sVar1;
    param_2 = (void *)((int)param_2 + sVar1);
  } while (__n != 0);
LAB_007ae1fe:
  return param_3 - __n;
}

// ---- FUN_007ae204  @ 0x7ae204
void FUN_007ae204(undefined4 *param_1)

{
  *param_1 = 0;
  *(undefined1 *)(param_1 + 1) = 0;
  return;
}

// ---- FUN_007ae20c  @ 0x7ae20c
int * FUN_007ae20c(int *param_1,int param_2)

{
  undefined4 *puVar1;
  int iVar2;
  int *piVar3;
  
  if ((*param_1 == 0) && (param_2 != 0)) {
    puVar1 = (undefined4 *)__errno();
    *puVar1 = 0;
    do {
      iVar2 = fflush((FILE *)*param_1);
      if (iVar2 == 0) {
        *(undefined1 *)(param_1 + 1) = 0;
        *param_1 = param_2;
        return param_1;
      }
      piVar3 = (int *)__errno();
    } while (*piVar3 == 4);
  }
  return (int *)0x0;
}

// ---- FUN_007ae240  @ 0x7ae240
int * FUN_007ae240(int *param_1,int param_2,undefined4 param_3)

{
  char *__modes;
  FILE *__stream;
  
  __modes = (char *)FUN_007ae0e4(param_3);
  if ((__modes != (char *)0x0) && (*param_1 == 0)) {
    __stream = fdopen(param_2,__modes);
    *param_1 = (int)__stream;
    if (__stream != (FILE *)0x0) {
      *(undefined1 *)(param_1 + 1) = 1;
      if (param_2 != 0) {
        return param_1;
      }
      setvbuf(__stream,(char *)0x0,2,0);
      return param_1;
    }
  }
  return (int *)0x0;
}

// ---- FUN_007ae288  @ 0x7ae288
int * FUN_007ae288(int *param_1,char *param_2,undefined4 param_3)

{
  char *__modes;
  FILE *pFVar1;
  
  __modes = (char *)FUN_007ae0e4(param_3);
  if ((__modes != (char *)0x0) && (*param_1 == 0)) {
    pFVar1 = fopen(param_2,__modes);
    *param_1 = (int)pFVar1;
    if (pFVar1 != (FILE *)0x0) {
      *(undefined1 *)(param_1 + 1) = 1;
      return param_1;
    }
  }
  return (int *)0x0;
}

// ---- FUN_007ae2b4  @ 0x7ae2b4
bool FUN_007ae2b4(int *param_1)

{
  return *param_1 != 0;
}

// ---- FUN_007ae2cc  @ 0x7ae2cc
int * FUN_007ae2cc(int *param_1)

{
  int *piVar1;
  undefined4 *puVar2;
  int iVar3;
  
  if (*param_1 != 0) {
    if ((char)param_1[1] == '\0') {
      *param_1 = 0;
      return param_1;
    }
    puVar2 = (undefined4 *)__errno();
    *puVar2 = 0;
    do {
      iVar3 = fclose((FILE *)*param_1);
      if (iVar3 == 0) {
        *param_1 = 0;
        return param_1;
      }
      piVar1 = (int *)__errno();
    } while (*piVar1 == 4);
    *param_1 = 0;
  }
  return (int *)0x0;
}

// ---- FUN_007ae308  @ 0x7ae308
undefined4 FUN_007ae308(undefined4 param_1)

{
  FUN_007ae2cc();
  return param_1;
}

// ---- FUN_007ae314  @ 0x7ae314
ssize_t FUN_007ae314(int *param_1,void *param_2,size_t param_3)

{
  ssize_t sVar1;
  int *piVar2;
  
  do {
    sVar1 = read((int)*(short *)(*param_1 + 0xe),param_2,param_3);
    if (sVar1 != -1) {
      return sVar1;
    }
    piVar2 = (int *)__errno();
  } while (*piVar2 == 4);
  return -1;
}

// ---- FUN_007ae344  @ 0x7ae344
void FUN_007ae344(int *param_1)

{
  FUN_007ae1d4((int)*(short *)(*param_1 + 0xe));
  return;
}

// ---- FUN_007ae350  @ 0x7ae350
int FUN_007ae350(int *param_1,void *param_2,size_t param_3,int param_4,int param_5)

{
  short sVar1;
  ssize_t sVar2;
  int *piVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  iovec local_38;
  int local_30;
  int local_2c;
  
  iVar6 = param_3 + param_5;
  sVar1 = *(short *)(*param_1 + 0xe);
  local_2c = param_5;
  iVar5 = iVar6;
  local_30 = param_4;
  do {
    while( true ) {
      local_38.iov_base = param_2;
      local_38.iov_len = param_3;
      sVar2 = writev((int)sVar1,&local_38,2);
      if (sVar2 == -1) break;
      iVar5 = iVar5 - sVar2;
      param_2 = (void *)((int)param_2 + sVar2);
      if (iVar5 == 0) goto LAB_007ae3b8;
      iVar4 = sVar2 - param_3;
      param_3 = param_3 - sVar2;
      if (-1 < iVar4) {
        iVar4 = FUN_007ae1d4((int)sVar1,param_4 + iVar4,param_5 - iVar4);
        return iVar6 - (iVar5 - iVar4);
      }
    }
    piVar3 = (int *)__errno();
  } while (*piVar3 == 4);
LAB_007ae3b8:
  return iVar6 - iVar5;
}

// ---- FUN_007ae3c4  @ 0x7ae3c4
longlong FUN_007ae3c4(int *param_1,undefined4 param_2,uint param_3,int param_4,int param_5)

{
  __off_t _Var1;
  
  if (param_4 + (uint)(0x7fffffff < param_3) == 0) {
    _Var1 = lseek((int)*(short *)(*param_1 + 0xe),param_3,param_5);
    return (longlong)_Var1;
  }
  return -1;
}

// ---- FUN_007ae408  @ 0x7ae408
int FUN_007ae408(int *param_1)

{
  int iVar1;
  __off_t _Var2;
  int local_84;
  pollfd local_80;
  stat sStack_78;
  
  local_84 = 0;
  iVar1 = ioctl((int)*(short *)(*param_1 + 0xe),0x541b,&local_84);
  if ((iVar1 != 0) || (local_84 < 0)) {
    local_80.events = 1;
    local_80.fd = (int)*(short *)(*param_1 + 0xe);
    iVar1 = poll(&local_80,1,0);
    if ((iVar1 < 1) ||
       ((iVar1 = fstat((int)*(short *)(*param_1 + 0xe),&sStack_78), iVar1 != 0 ||
        ((sStack_78.st_mode & 0xf000) != 0x8000)))) {
      return 0;
    }
    _Var2 = lseek((int)*(short *)(*param_1 + 0xe),0,1);
    local_84 = sStack_78.st_blksize - _Var2;
  }
  return local_84;
}

// ---- FUN_007aec48  @ 0x7aec48
int * FUN_007aec48(int *param_1,int *param_2,uint param_3)

{
  int iVar1;
  void *pvVar2;
  undefined1 *puVar3;
  uint uVar4;
  byte *pbVar5;
  int iVar6;
  int *piVar7;
  uint uVar8;
  size_t __n;
  uint uVar9;
  byte *pbVar10;
  char local_2c [8];
  
  FUN_007a52b8(local_2c,param_1,1);
  if (local_2c[0] == '\0') {
LAB_007aec64:
    uVar4 = 4;
    goto LAB_007aec66;
  }
  FUN_007c5938(param_2,0,*(undefined4 *)(*param_2 + -0xc),0);
  piVar7 = *(int **)((int)param_1 + *(int *)(*param_1 + -0xc) + 0x78);
  pbVar10 = (byte *)piVar7[2];
  pbVar5 = (byte *)piVar7[3];
  if (pbVar10 < pbVar5) {
    uVar4 = (uint)*pbVar10;
LAB_007aecac:
    if (param_3 != uVar4) {
      uVar8 = 0;
      do {
        __n = (int)pbVar5 - (int)pbVar10;
        if ((int)(0x3ffffffc - uVar8) < (int)pbVar5 - (int)pbVar10) {
          __n = 0x3ffffffc - uVar8;
        }
        if ((int)__n < 2) {
          iVar6 = *param_2;
          iVar1 = *(int *)(iVar6 + -0xc);
          uVar9 = iVar1 + 1;
          if ((*(uint *)(iVar6 + -8) < uVar9) || (0 < *(int *)(iVar6 + -4))) {
            FUN_007c60a0(param_2,uVar9);
            iVar6 = *param_2;
            iVar1 = *(int *)(iVar6 + -0xc);
          }
          *(char *)(iVar6 + iVar1) = (char)uVar4;
          uVar8 = uVar8 + 1;
          puVar3 = (undefined1 *)*param_2;
          if (puVar3 != &DAT_00972528) {
            *(uint *)(puVar3 + -0xc) = uVar9;
            *(undefined4 *)(puVar3 + -4) = 0;
            puVar3[uVar9] = 0;
          }
          pbVar5 = (byte *)piVar7[3];
          if ((byte *)piVar7[2] < pbVar5) {
            pbVar10 = (byte *)piVar7[2] + 1;
            piVar7[2] = (int)pbVar10;
          }
          else {
            uVar4 = FUN_002e713c(piVar7);
            if (uVar4 == 0xffffffff) goto LAB_007aed12;
            pbVar10 = (byte *)piVar7[2];
            pbVar5 = (byte *)piVar7[3];
          }
          if (pbVar10 < pbVar5) {
            uVar4 = (uint)*pbVar10;
          }
          else {
            uVar4 = FUN_002e7130(piVar7);
          }
        }
        else {
          pvVar2 = memchr(pbVar10,param_3,__n);
          if (pvVar2 != (void *)0x0) {
            __n = (int)pvVar2 - (int)pbVar10;
          }
          FUN_007c6234(param_2,pbVar10,__n);
          iVar1 = piVar7[2];
          uVar8 = uVar8 + __n;
          uVar4 = iVar1 + __n;
          piVar7[2] = uVar4;
          if (uVar4 < (uint)piVar7[3]) {
            uVar4 = (uint)*(byte *)(iVar1 + __n);
          }
          else {
            uVar4 = (**(code **)(*piVar7 + 0x24))(piVar7);
          }
        }
LAB_007aed12:
        if (0x3ffffffb < uVar8) {
          if (uVar4 == 0xffffffff) {
LAB_007aed20:
            uVar4 = 2;
            goto LAB_007aec66;
          }
          if (param_3 != uVar4) goto LAB_007aec64;
          pbVar10 = (byte *)piVar7[2];
          iVar1 = uVar8 + 1;
          pbVar5 = (byte *)piVar7[3];
          goto LAB_007aed3e;
        }
        if (uVar4 == 0xffffffff) {
          if (uVar8 != 0) goto LAB_007aed20;
          goto LAB_007aee3e;
        }
        if (param_3 == uVar4) goto LAB_007aed36;
        pbVar10 = (byte *)piVar7[2];
        pbVar5 = (byte *)piVar7[3];
      } while( true );
    }
    iVar1 = 1;
    goto LAB_007aed3e;
  }
  uVar4 = FUN_002e7130(piVar7);
  if (uVar4 != 0xffffffff) {
    pbVar10 = (byte *)piVar7[2];
    pbVar5 = (byte *)piVar7[3];
    goto LAB_007aecac;
  }
LAB_007aee3e:
  uVar4 = 2;
  goto LAB_007aed4e;
LAB_007aed36:
  pbVar10 = (byte *)piVar7[2];
  iVar1 = uVar8 + 1;
  pbVar5 = (byte *)piVar7[3];
LAB_007aed3e:
  if (pbVar10 < pbVar5) {
    piVar7[2] = (int)(pbVar10 + 1);
  }
  else {
    FUN_002e713c(piVar7);
  }
  if (iVar1 != 0) {
    return param_1;
  }
  uVar4 = 0;
LAB_007aed4e:
  uVar4 = uVar4 | 4;
LAB_007aec66:
  iVar1 = *(int *)(*param_1 + -0xc) + (int)param_1;
  FUN_00798e64(iVar1,*(uint *)(iVar1 + 0x14) | uVar4);
  return param_1;
}

// ---- FUN_007af400  @ 0x7af400
int FUN_007af400(undefined4 param_1,void *param_2,int param_3,void *param_4)

{
  memcpy(param_4,param_2,param_3 - (int)param_2);
  return param_3;
}

// ---- FUN_007af410  @ 0x7af410
int FUN_007af410(undefined4 param_1,void *param_2,int param_3,undefined4 param_4,void *param_5)

{
  memcpy(param_5,param_2,param_3 - (int)param_2);
  return param_3;
}

// ---- FUN_007af420  @ 0x7af420
undefined4 * FUN_007af420(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_007af420_1_0093e6d8;
  FUN_007acbd8(param_1 + 2);
  *param_1 = &PTR_LAB_007b0f74_1_0093e9a8;
  FUN_007afcc4(param_1);
  return param_1;
}

// ---- FUN_007af480  @ 0x7af480
undefined4 * FUN_007af480(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_007af480_1_0093e628;
  FUN_007acbd8(param_1 + 2);
  if ((*(char *)(param_1 + 3) != '\0') && ((void *)param_1[6] != (void *)0x0)) {
    operator_delete__((void *)param_1[6]);
  }
  FUN_007afcc4(param_1);
  return param_1;
}

// ---- FUN_007af4b8  @ 0x7af4b8
void * FUN_007af4b8(void *param_1)

{
  FUN_007af420();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_007af4cc  @ 0x7af4cc
undefined4 * FUN_007af4cc(undefined4 *param_1)

{
  *param_1 = &PTR_LAB_007af468_1_0093e688;
  FUN_007af420();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_007af4ec  @ 0x7af4ec
void * FUN_007af4ec(void *param_1)

{
  FUN_007af480();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_007af500  @ 0x7af500
void FUN_007af500(int *param_1)

{
  int iVar1;
  char local_119;
  undefined1 local_118 [256];
  
  iVar1 = 0;
  do {
    local_118[iVar1] = (char)iVar1;
    iVar1 = iVar1 + 1;
  } while (iVar1 != 0x100);
  (**(code **)(*param_1 + 0x24))
            (param_1,local_118,&stack0xffffffe8,0,(void *)((int)param_1 + 0x11d));
  *(undefined1 *)((int)param_1 + 0x21d) = 1;
  iVar1 = memcmp(local_118,(void *)((int)param_1 + 0x11d),0x100);
  if (iVar1 == 0) {
    (**(code **)(*param_1 + 0x24))(param_1,local_118,local_118 + 1,1,&local_119);
    if (local_119 != '\x01') {
      return;
    }
  }
  *(undefined1 *)((int)param_1 + 0x21d) = 2;
  return;
}

// ---- FUN_007af570  @ 0x7af570
void FUN_007af570(int *param_1)

{
  int iVar1;
  undefined1 local_118 [256];
  
  iVar1 = 0;
  do {
    local_118[iVar1] = (char)iVar1;
    iVar1 = iVar1 + 1;
  } while (iVar1 != 0x100);
  (**(code **)(*param_1 + 0x1c))(param_1,local_118,&stack0xffffffe8,(void *)((int)param_1 + 0x1d));
  *(undefined1 *)(param_1 + 7) = 1;
  iVar1 = memcmp(local_118,(void *)((int)param_1 + 0x1d),0x100);
  if (iVar1 != 0) {
    *(undefined1 *)(param_1 + 7) = 2;
  }
  return;
}

// ---- FUN_007af5b4  @ 0x7af5b4
undefined4 * FUN_007af5b4(undefined4 *param_1,int param_2)

{
  undefined4 uVar1;
  
  param_1[1] = (uint)(param_2 != 0);
  *param_1 = &PTR_FUN_007af420_1_0093e6d8;
  uVar1 = FUN_007b0058();
  param_1[2] = uVar1;
  *(undefined1 *)(param_1 + 3) = 0;
  FUN_007c7f8c(param_1);
  return param_1;
}

// ---- FUN_007af5f8  @ 0x7af5f8
undefined4 * FUN_007af5f8(undefined4 *param_1,undefined4 param_2,int param_3)

{
  undefined4 uVar1;
  undefined4 local_c;
  
  param_1[1] = (uint)(param_3 != 0);
  *param_1 = &PTR_FUN_007af420_1_0093e6d8;
  local_c = param_2;
  uVar1 = FUN_007acbe0(&local_c);
  *(undefined1 *)(param_1 + 3) = 0;
  param_1[2] = uVar1;
  FUN_007c7f8c(param_1);
  return param_1;
}

// ---- FUN_007af694  @ 0x7af694
uint FUN_007af694(undefined4 param_1,char *param_2,char *param_3)

{
  int iVar1;
  uint uVar2;
  
  iVar1 = strcoll(param_2,param_3);
  if (iVar1 == 0) {
    uVar2 = 0;
  }
  else {
    uVar2 = iVar1 >> 0x1e | 1;
  }
  return uVar2;
}

// ---- FUN_007af6ac  @ 0x7af6ac
void FUN_007af6ac(undefined4 param_1,char *param_2,char *param_3,size_t param_4)

{
  strxfrm(param_2,param_3,param_4);
  return;
}

// ---- FUN_007af6b8  @ 0x7af6b8
uint FUN_007af6b8(undefined4 param_1,wchar_t *param_2,wchar_t *param_3)

{
  int iVar1;
  uint uVar2;
  
  iVar1 = wcscoll(param_2,param_3);
  if (iVar1 == 0) {
    uVar2 = 0;
  }
  else {
    uVar2 = iVar1 >> 0x1e | 1;
  }
  return uVar2;
}

// ---- FUN_007af6d0  @ 0x7af6d0
void FUN_007af6d0(undefined4 param_1,wchar_t *param_2,wchar_t *param_3,size_t param_4)

{
  wcsxfrm(param_2,param_3,param_4);
  return;
}

// ---- FUN_007af6dc  @ 0x7af6dc
undefined4
FUN_007af6dc(undefined4 param_1,int *param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5,undefined4 param_6,undefined4 param_7)

{
  (**(code **)(*param_2 + 0x10))(param_1,param_2,param_3,param_4,0,param_7);
  return param_1;
}

// ---- FUN_007af70c  @ 0x7af70c
undefined4
FUN_007af70c(undefined4 param_1,int *param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5,undefined4 param_6,undefined4 param_7)

{
  (**(code **)(*param_2 + 0x10))(param_1,param_2,param_3,param_4,0,param_7);
  return param_1;
}

// ---- FUN_007af73c  @ 0x7af73c
void FUN_007af73c(int param_1,void *param_2,size_t param_3)

{
  size_t sVar1;
  uint uVar2;
  
  sVar1 = fread(param_2,1,param_3,*(FILE **)(param_1 + 0x20));
  if ((int)sVar1 < 1) {
    uVar2 = 0xffffffff;
  }
  else {
    uVar2 = (uint)*(byte *)((int)param_2 + (sVar1 - 1));
  }
  *(uint *)(param_1 + 0x24) = uVar2;
  return;
}

// ---- FUN_007af76c  @ 0x7af76c
int FUN_007af76c(int param_1,int param_2,int param_3)

{
  wint_t wVar1;
  int iVar2;
  wint_t *pwVar3;
  
  if (param_3 == 0) {
LAB_007af794:
    *(undefined4 *)(param_1 + 0x24) = 0xffffffff;
    return 0;
  }
  pwVar3 = (wint_t *)(param_2 + -4);
  iVar2 = 0;
  do {
    wVar1 = getwc(*(__FILE **)(param_1 + 0x20));
    if (wVar1 == 0xffffffff) {
      if (iVar2 == 0) goto LAB_007af794;
      break;
    }
    iVar2 = iVar2 + 1;
    pwVar3 = pwVar3 + 1;
    *pwVar3 = wVar1;
  } while (param_3 != iVar2);
  *(undefined4 *)(param_1 + 0x24) = *(undefined4 *)(param_2 + (iVar2 + 0x3fffffff) * 4);
  return iVar2;
}

// ---- FUN_007af7b4  @ 0x7af7b4
void FUN_007af7b4(int param_1)

{
  wint_t wVar1;
  
  wVar1 = getwc(*(__FILE **)(param_1 + 0x20));
  *(wint_t *)(param_1 + 0x24) = wVar1;
  return;
}

// ---- FUN_007af7c4  @ 0x7af7c4
int FUN_007af7c4(int param_1,wchar_t *param_2,int param_3)

{
  wint_t wVar1;
  int iVar2;
  
  if (param_3 == 0) {
    iVar2 = 0;
  }
  else {
    iVar2 = 0;
    do {
      wVar1 = putwc(*param_2,*(__FILE **)(param_1 + 0x20));
      if (wVar1 == 0xffffffff) {
        return iVar2;
      }
      iVar2 = iVar2 + 1;
      param_2 = param_2 + 1;
    } while (param_3 != iVar2);
  }
  return iVar2;
}

// ---- FUN_007af7f0  @ 0x7af7f0
undefined4 * FUN_007af7f0(undefined4 *param_1)

{
  *param_1 = &PTR_LAB_00799d78_1_0093d988;
  FUN_007b01c0(param_1 + 7);
  return param_1;
}

// ---- FUN_007af828  @ 0x7af828
void FUN_007af828(int param_1)

{
  int iVar1;
  
  iVar1 = getc(*(FILE **)(param_1 + 0x20));
  *(int *)(param_1 + 0x24) = iVar1;
  return;
}

// ---- FUN_007af838  @ 0x7af838
void FUN_007af838(int param_1)

{
  int __c;
  
  __c = getc(*(FILE **)(param_1 + 0x20));
  ungetc(__c,*(FILE **)(param_1 + 0x20));
  return;
}

// ---- FUN_007af880  @ 0x7af880
long * FUN_007af880(long *param_1,int param_2,long param_3,undefined4 param_4,int param_5)

{
  long lVar1;
  int iVar2;
  
  *param_1 = -1;
  param_1[1] = -1;
  param_1[2] = 0;
  iVar2 = 0;
  if (param_5 != 0) {
    if (param_5 == 1) {
      iVar2 = 1;
    }
    else {
      iVar2 = 2;
    }
  }
  iVar2 = fseek(*(FILE **)(param_2 + 0x20),param_3,iVar2);
  if (iVar2 == 0) {
    lVar1 = ftell(*(FILE **)(param_2 + 0x20));
    *param_1 = lVar1;
    param_1[1] = lVar1 >> 0x1f;
  }
  return param_1;
}

// ---- FUN_007af8c0  @ 0x7af8c0
long * FUN_007af8c0(long *param_1,int param_2,long param_3,undefined4 param_4,int param_5)

{
  long lVar1;
  int iVar2;
  
  *param_1 = -1;
  param_1[1] = -1;
  param_1[2] = 0;
  iVar2 = 0;
  if (param_5 != 0) {
    if (param_5 == 1) {
      iVar2 = 1;
    }
    else {
      iVar2 = 2;
    }
  }
  iVar2 = fseek(*(FILE **)(param_2 + 0x20),param_3,iVar2);
  if (iVar2 == 0) {
    lVar1 = ftell(*(FILE **)(param_2 + 0x20));
    *param_1 = lVar1;
    param_1[1] = lVar1 >> 0x1f;
  }
  return param_1;
}

// ---- FUN_007af900  @ 0x7af900
void FUN_007af900(int param_1)

{
  wint_t __wc;
  
  __wc = getwc(*(__FILE **)(param_1 + 0x20));
  ungetwc(__wc,*(__FILE **)(param_1 + 0x20));
  return;
}

// ---- FUN_007af9cc  @ 0x7af9cc
void FUN_007af9cc(undefined4 param_1,int *param_2)

{
  FUN_007bb9f8(param_1,*param_2,*(undefined4 *)(*param_2 + -0xc));
  return;
}

// ---- FUN_007af9d8  @ 0x7af9d8
void FUN_007af9d8(int *param_1,undefined4 param_2)

{
  undefined4 uVar1;
  int *piVar2;
  
  piVar2 = *(int **)((int)param_1 + *(int *)(*param_1 + -0xc) + 0x7c);
  if (piVar2 == (int *)0x0) {
                    /* WARNING: Subroutine does not return */
    FUN_007c4874();
  }
  if ((char)piVar2[7] != '\0') {
    FUN_007aec48(param_1,param_2,*(undefined1 *)((int)piVar2 + 0x27));
    return;
  }
  FUN_007af570(piVar2);
  uVar1 = (**(code **)(*piVar2 + 0x18))(piVar2,10);
  FUN_007aec48(param_1,param_2,uVar1);
  return;
}

// ---- FUN_007afa20  @ 0x7afa20
int * FUN_007afa20(int *param_1,int *param_2)

{
  int iVar1;
  int *piVar2;
  int *piVar3;
  int iVar4;
  uint uVar5;
  int iVar6;
  int iVar7;
  int *piVar8;
  uint uVar9;
  char local_22c [4];
  int local_228 [129];
  
  FUN_007a7008(local_22c,param_1,0);
  if (local_22c[0] == '\0') {
    iVar7 = *param_1;
    uVar5 = 4;
  }
  else {
    FUN_007bea54(param_2,0,*(undefined4 *)(*param_2 + -0xc),0);
    uVar5 = *(uint *)((int)param_1 + *(int *)(*param_1 + -0xc) + 8);
    if ((int)uVar5 < 1) {
      uVar5 = 0xffffffe;
    }
    FUN_007afd04(local_228,(int)param_1 + *(int *)(*param_1 + -0xc) + 0x6c);
    piVar2 = (int *)FUN_007b2a34(local_228);
    FUN_007b01c0(local_228);
    piVar3 = *(int **)((int)param_1 + *(int *)(*param_1 + -0xc) + 0x7c);
    if ((int *)piVar3[2] < (int *)piVar3[3]) {
      iVar1 = *(int *)piVar3[2];
    }
    else {
      iVar1 = (**(code **)(*piVar3 + 0x24))();
    }
    uVar9 = 0;
    iVar6 = 0;
    iVar7 = 0;
    if (iVar1 != -1) {
      do {
        iVar4 = (**(code **)(*piVar2 + 8))(piVar2,8,iVar1);
        iVar7 = iVar6;
        if (iVar4 != 0) goto LAB_007afb14;
        if (iVar6 == 0x80) {
          FUN_007bf384(param_2,local_228);
          iVar7 = 1;
          iVar6 = 0;
        }
        else {
          iVar7 = iVar6 + 1;
        }
        iVar4 = *param_1;
        uVar9 = uVar9 + 1;
        local_228[iVar6] = iVar1;
        piVar8 = *(int **)((int)param_1 + *(int *)(iVar4 + -0xc) + 0x7c);
        piVar3 = (int *)piVar8[2];
        if (piVar3 < (int *)piVar8[3]) {
          iVar1 = *piVar3;
          piVar8[2] = (int)(piVar3 + 1);
        }
        else {
          iVar1 = (**(code **)(*piVar8 + 0x28))(piVar8);
        }
        if (iVar1 == -1) {
          if (uVar5 <= uVar9) {
            iVar1 = -1;
            goto LAB_007afb14;
          }
          break;
        }
        if ((int *)piVar8[2] < (int *)piVar8[3]) {
          iVar1 = *(int *)piVar8[2];
        }
        else {
          iVar1 = (**(code **)(*piVar8 + 0x24))(piVar8);
        }
        if (uVar5 <= uVar9) goto LAB_007afb14;
        iVar6 = iVar7;
      } while (iVar1 != -1);
      iVar1 = -1;
    }
LAB_007afb14:
    FUN_007bf384(param_2,local_228,iVar7);
    iVar7 = *param_1;
    if (iVar1 == -1) {
      uVar5 = 2;
    }
    else {
      uVar5 = 0;
    }
    *(undefined4 *)((int)param_1 + *(int *)(iVar7 + -0xc) + 8) = 0;
    if (uVar9 == 0) {
      uVar5 = uVar5 | 4;
    }
    else if (uVar5 == 0) {
      return param_1;
    }
  }
  iVar1 = *(int *)(iVar7 + -0xc) + (int)param_1;
  FUN_007992f0(iVar1,*(uint *)(iVar1 + 0x14) | uVar5);
  return param_1;
}

// ---- FUN_007afc0c  @ 0x7afc0c
int * FUN_007afc0c(int *param_1,int *param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  wchar_t *pwVar2;
  int *piVar3;
  wchar_t __c;
  uint uVar4;
  uint uVar5;
  undefined *puVar6;
  wchar_t wVar7;
  size_t __n;
  wchar_t *pwVar8;
  char local_2c [16];
  
  piVar3 = *(int **)((int)param_1 + *(int *)(*param_1 + -0xc) + 0x80);
  if (piVar3 == (int *)0x0) {
                    /* WARNING: Subroutine does not return */
    FUN_007c4874();
  }
  __c = (**(code **)(*piVar3 + 0x28))(piVar3,10);
  FUN_007a7008(local_2c,param_1,1,param_4);
  if (local_2c[0] == '\0') {
LAB_007af208:
    uVar5 = 4;
  }
  else {
    FUN_007bea54(param_2,0,*(undefined4 *)(*param_2 + -0xc),0);
    piVar3 = *(int **)((int)param_1 + *(int *)(*param_1 + -0xc) + 0x7c);
    if ((wchar_t *)piVar3[2] < (wchar_t *)piVar3[3]) {
      wVar7 = *(wchar_t *)piVar3[2];
    }
    else {
      wVar7 = FUN_002e7148(piVar3);
    }
    if (wVar7 == L'\xffffffff') {
LAB_007af3e4:
      uVar5 = 2;
    }
    else {
      if (__c == wVar7) {
        iVar1 = 1;
      }
      else {
        uVar5 = 0;
        do {
          pwVar8 = (wchar_t *)piVar3[3];
          pwVar2 = (wchar_t *)piVar3[2];
          __n = (int)pwVar8 - (int)pwVar2 >> 2;
          if ((int)(0xffffffe - uVar5) < (int)__n) {
            __n = 0xffffffe - uVar5;
          }
          if ((int)__n < 2) {
            puVar6 = (undefined *)*param_2;
            iVar1 = *(int *)(puVar6 + -0xc);
            uVar4 = iVar1 + 1;
            if ((*(uint *)(puVar6 + -8) < uVar4) || (0 < *(int *)(puVar6 + -4))) {
              FUN_007bf1f4(param_2,uVar4);
              puVar6 = (undefined *)*param_2;
              pwVar2 = (wchar_t *)piVar3[2];
              pwVar8 = (wchar_t *)piVar3[3];
              iVar1 = *(int *)(puVar6 + -0xc);
            }
            *(wchar_t *)(puVar6 + iVar1 * 4) = wVar7;
            uVar5 = uVar5 + 1;
            if (puVar6 != &DAT_00972510) {
              *(uint *)(puVar6 + -0xc) = uVar4;
              *(undefined4 *)(puVar6 + -4) = 0;
              *(undefined4 *)(puVar6 + uVar4 * 4) = 0;
            }
            if (pwVar2 < pwVar8) {
              wVar7 = *pwVar2;
              piVar3[2] = (int)(pwVar2 + 1);
            }
            else {
              wVar7 = FUN_002e7154(piVar3);
            }
            if (wVar7 != L'\xffffffff') {
              if ((wchar_t *)piVar3[2] < (wchar_t *)piVar3[3]) {
                wVar7 = *(wchar_t *)piVar3[2];
              }
              else {
                wVar7 = FUN_002e7148(piVar3);
              }
            }
          }
          else {
            pwVar2 = wmemchr(pwVar2,__c,__n);
            if (pwVar2 != (wchar_t *)0x0) {
              __n = (int)pwVar2 - piVar3[2] >> 2;
            }
            FUN_007bf384(param_2,piVar3[2],__n);
            iVar1 = piVar3[2];
            uVar5 = uVar5 + __n;
            uVar4 = iVar1 + __n * 4;
            piVar3[2] = uVar4;
            if (uVar4 < (uint)piVar3[3]) {
              wVar7 = *(wchar_t *)(iVar1 + __n * 4);
            }
            else {
              wVar7 = (**(code **)(*piVar3 + 0x24))(piVar3);
            }
          }
          if (0xffffffd < uVar5) {
            if (wVar7 == L'\xffffffff') {
LAB_007af2cc:
              uVar5 = 2;
              goto LAB_007af20a;
            }
            if (__c != wVar7) goto LAB_007af208;
            break;
          }
          if (wVar7 == L'\xffffffff') {
            if (uVar5 != 0) goto LAB_007af2cc;
            goto LAB_007af3e4;
          }
        } while (__c != wVar7);
        iVar1 = uVar5 + 1;
      }
      if ((uint)piVar3[2] < (uint)piVar3[3]) {
        piVar3[2] = piVar3[2] + 4;
      }
      else {
        FUN_002e7154(piVar3);
      }
      if (iVar1 != 0) {
        return param_1;
      }
      uVar5 = 0;
    }
    uVar5 = uVar5 | 4;
  }
LAB_007af20a:
  iVar1 = *(int *)(*param_1 + -0xc) + (int)param_1;
  FUN_007992f0(iVar1,*(uint *)(iVar1 + 0x14) | uVar5);
  return param_1;
}

// ---- FUN_007afcc4  @ 0x7afcc4
void FUN_007afcc4(undefined4 *param_1)

{
  *param_1 = &DAT_0093e7b8;
  return;
}

// ---- FUN_007afd04  @ 0x7afd04
void FUN_007afd04(undefined4 *param_1,undefined4 *param_2)

{
  bool bVar1;
  int *piVar2;
  
  piVar2 = (int *)*param_2;
  *param_1 = piVar2;
  DataMemoryBarrier(0x1f);
  do {
    ExclusiveAccess(piVar2);
    bVar1 = (bool)hasExclusiveAccess(piVar2);
  } while (!bVar1);
  *piVar2 = *piVar2 + 1;
  DataMemoryBarrier(0x1f);
  return;
}
