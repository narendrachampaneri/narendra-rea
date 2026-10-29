// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 414 functions

// ---- FUN_0053000c  @ 0x53000c
undefined4 * FUN_0053000c(undefined4 *param_1,undefined4 param_2)

{
  undefined4 uVar1;
  
  param_1[7] = 0x7fffffff;
  param_1[9] = 0x4000000;
  param_1[10] = 0x2000000;
  *param_1 = param_2;
  param_1[1] = 0;
  param_1[2] = 0;
  uVar1 = DAT_00943fd8;
  param_1[3] = 0;
  param_1[4] = 0;
  param_1[5] = 0;
  *(undefined1 *)(param_1 + 6) = 0;
  *(undefined1 *)((int)param_1 + 0x19) = 0;
  param_1[8] = 0;
  param_1[0xb] = 0;
  param_1[0xc] = uVar1;
  param_1[0xd] = 0;
  param_1[0xe] = 0;
  FUN_00531010();
  return param_1;
}

// ---- FUN_00530054  @ 0x530054
void FUN_00530054(undefined4 *param_1,int param_2,int param_3)

{
  undefined4 uVar1;
  
  param_1[1] = param_2;
  param_1[3] = param_3;
  param_1[7] = param_3;
  param_1[9] = 0x4000000;
  param_1[10] = 0x2000000;
  *param_1 = 0;
  uVar1 = DAT_00943fd8;
  param_1[2] = param_2 + param_3;
  param_1[4] = 0;
  param_1[5] = 0;
  *(undefined1 *)(param_1 + 6) = 0;
  *(undefined1 *)((int)param_1 + 0x19) = 0;
  param_1[8] = 0;
  param_1[0xb] = 0;
  param_1[0xc] = uVar1;
  param_1[0xd] = 0;
  param_1[0xe] = 0;
  return;
}

// ---- FUN_00530090  @ 0x530090
int FUN_00530090(int *param_1)

{
  int iVar1;
  int iVar2;
  undefined4 uVar3;
  undefined1 auStack_30 [4];
  undefined1 auStack_2c [4];
  undefined1 auStack_28 [20];
  
  iVar1 = (**(code **)(*param_1 + 0x20))();
  iVar2 = 0;
  if ((iVar1 != 0) && (iVar2 = (**(code **)(*param_1 + 0x14))(param_1), iVar2 == 0)) {
    FUN_0052f7f0(auStack_28,2,
                 "/builddata/pulse-data/agents/hpya5.eem/recipes/816348608/base/googleclient/third_party/protobuf/files/src/google/protobuf/message_lite.cc"
                 ,0x7b);
    FUN_0052ff74(auStack_2c,param_1);
    uVar3 = FUN_0052f6b0(auStack_28,auStack_2c);
    FUN_0052f9d4(auStack_30,uVar3);
    FUN_007c5914(auStack_2c);
    FUN_0052f808(auStack_28);
  }
  return iVar2;
}

// ---- FUN_00530100  @ 0x530100
int FUN_00530100(int *param_1,undefined4 param_2)

{
  int iVar1;
  int iVar2;
  undefined4 uVar3;
  undefined1 auStack_30 [4];
  undefined1 auStack_2c [4];
  undefined1 auStack_28 [20];
  
  (**(code **)(*param_1 + 0x10))();
  iVar1 = (**(code **)(*param_1 + 0x20))(param_1,param_2);
  iVar2 = 0;
  if ((iVar1 != 0) && (iVar2 = (**(code **)(*param_1 + 0x14))(param_1), iVar2 == 0)) {
    FUN_0052f7f0(auStack_28,2,
                 "/builddata/pulse-data/agents/hpya5.eem/recipes/816348608/base/googleclient/third_party/protobuf/files/src/google/protobuf/message_lite.cc"
                 ,0x7b);
    FUN_0052ff74(auStack_2c,param_1);
    uVar3 = FUN_0052f6b0(auStack_28,auStack_2c);
    FUN_0052f9d4(auStack_30,uVar3);
    FUN_007c5914(auStack_2c);
    FUN_0052f808(auStack_28);
  }
  return iVar2;
}

// ---- FUN_0053017c  @ 0x53017c
void FUN_0053017c(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 extraout_r2;
  
  (**(code **)(*param_1 + 0x10))();
  (**(code **)(*param_1 + 0x20))(param_1,param_2,extraout_r2,*(code **)(*param_1 + 0x20),param_4);
  return;
}

// ---- FUN_00530194  @ 0x530194
undefined1 FUN_00530194(undefined4 param_1)

{
  int iVar1;
  undefined1 auStack_4c [24];
  undefined1 local_34;
  
  FUN_0053000c(auStack_4c);
  iVar1 = FUN_00530100(param_1,auStack_4c);
  if (iVar1 == 0) {
    local_34 = 0;
  }
  FUN_00530e2c(auStack_4c);
  return local_34;
}

// ---- FUN_005301cc  @ 0x5301cc
undefined1 FUN_005301cc(undefined4 param_1)

{
  int iVar1;
  undefined1 auStack_4c [24];
  undefined1 local_34;
  
  FUN_0053000c(auStack_4c);
  iVar1 = FUN_0053017c(param_1,auStack_4c);
  if (iVar1 == 0) {
    local_34 = 0;
  }
  FUN_00530e2c(auStack_4c);
  return local_34;
}

// ---- FUN_00530204  @ 0x530204
int FUN_00530204(undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
  int iVar1;
  uint uVar2;
  undefined1 auStack_4c [24];
  char local_34;
  
  FUN_0053000c(auStack_4c);
  FUN_00530eac(auStack_4c,param_3);
  iVar1 = FUN_00530100(param_1,auStack_4c);
  if (iVar1 == 0) {
    iVar1 = 0;
  }
  else {
    iVar1 = 0;
    if (local_34 != '\0') {
      uVar2 = FUN_00530efa(auStack_4c);
      iVar1 = 1 - uVar2;
      if (1 < uVar2) {
        iVar1 = 0;
      }
    }
  }
  FUN_00530e2c(auStack_4c);
  return iVar1;
}

// ---- FUN_00530256  @ 0x530256
int FUN_00530256(undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
  int iVar1;
  uint uVar2;
  undefined1 auStack_4c [24];
  char local_34;
  
  FUN_0053000c(auStack_4c);
  FUN_00530eac(auStack_4c,param_3);
  iVar1 = FUN_0053017c(param_1,auStack_4c);
  if (iVar1 == 0) {
    iVar1 = 0;
  }
  else {
    iVar1 = 0;
    if (local_34 != '\0') {
      uVar2 = FUN_00530efa(auStack_4c);
      iVar1 = 1 - uVar2;
      if (1 < uVar2) {
        iVar1 = 0;
      }
    }
  }
  FUN_00530e2c(auStack_4c);
  return iVar1;
}

// ---- FUN_005302a8  @ 0x5302a8
undefined1 FUN_005302a8(int *param_1,int *param_2)

{
  int iVar1;
  undefined4 uVar2;
  undefined1 uVar3;
  undefined1 auStack_6c [4];
  undefined1 auStack_68 [4];
  undefined1 auStack_64 [16];
  undefined1 auStack_54 [24];
  undefined1 local_3c;
  
  FUN_00530054(auStack_54,*param_2,*(undefined4 *)(*param_2 + -0xc));
  (**(code **)(*param_1 + 0x10))(param_1);
  iVar1 = (**(code **)(*param_1 + 0x20))(param_1,auStack_54);
  if (iVar1 != 0) {
    iVar1 = (**(code **)(*param_1 + 0x14))(param_1);
    uVar3 = local_3c;
    if (iVar1 != 0) goto LAB_00530336;
    FUN_0052f7f0(auStack_64,2,
                 "/builddata/pulse-data/agents/hpya5.eem/recipes/816348608/base/googleclient/third_party/protobuf/files/src/google/protobuf/message_lite.cc"
                 ,0x7b);
    FUN_0052ff74(auStack_68,param_1);
    uVar2 = FUN_0052f6b0(auStack_64,auStack_68);
    FUN_0052f9d4(auStack_6c,uVar2);
    FUN_007c5914(auStack_68);
    FUN_0052f808(auStack_64);
  }
  uVar3 = 0;
LAB_00530336:
  FUN_00530e2c(auStack_54);
  return uVar3;
}

// ---- FUN_00530348  @ 0x530348
undefined1 FUN_00530348(int *param_1,int *param_2)

{
  int iVar1;
  undefined1 auStack_4c [24];
  undefined1 local_34;
  
  FUN_00530054(auStack_4c,*param_2,*(undefined4 *)(*param_2 + -0xc));
  (**(code **)(*param_1 + 0x10))(param_1);
  iVar1 = (**(code **)(*param_1 + 0x20))(param_1,auStack_4c);
  if (iVar1 == 0) {
    local_34 = 0;
  }
  FUN_00530e2c(auStack_4c);
  return local_34;
}

// ---- FUN_00530390  @ 0x530390
undefined1 FUN_00530390(int *param_1)

{
  int iVar1;
  undefined4 uVar2;
  undefined1 uVar3;
  undefined1 auStack_6c [4];
  undefined1 auStack_68 [4];
  undefined1 auStack_64 [16];
  undefined1 auStack_54 [24];
  undefined1 local_3c;
  
  FUN_00530054(auStack_54);
  (**(code **)(*param_1 + 0x10))(param_1);
  iVar1 = (**(code **)(*param_1 + 0x20))(param_1,auStack_54);
  if (iVar1 != 0) {
    iVar1 = (**(code **)(*param_1 + 0x14))(param_1);
    uVar3 = local_3c;
    if (iVar1 != 0) goto LAB_00530418;
    FUN_0052f7f0(auStack_64,2,
                 "/builddata/pulse-data/agents/hpya5.eem/recipes/816348608/base/googleclient/third_party/protobuf/files/src/google/protobuf/message_lite.cc"
                 ,0x7b);
    FUN_0052ff74(auStack_68,param_1);
    uVar2 = FUN_0052f6b0(auStack_64,auStack_68);
    FUN_0052f9d4(auStack_6c,uVar2);
    FUN_007c5914(auStack_68);
    FUN_0052f808(auStack_64);
  }
  uVar3 = 0;
LAB_00530418:
  FUN_00530e2c(auStack_54);
  return uVar3;
}

// ---- FUN_00530428  @ 0x530428
undefined1 FUN_00530428(int *param_1)

{
  int iVar1;
  undefined1 auStack_4c [24];
  undefined1 local_34;
  
  FUN_00530054(auStack_4c);
  (**(code **)(*param_1 + 0x10))(param_1);
  iVar1 = (**(code **)(*param_1 + 0x20))(param_1,auStack_4c);
  if (iVar1 == 0) {
    local_34 = 0;
  }
  FUN_00530e2c(auStack_4c);
  return local_34;
}

// ---- FUN_0053046a  @ 0x53046a
undefined4 FUN_0053046a(int *param_1,int param_2)

{
  int iVar1;
  int iVar2;
  undefined4 uVar3;
  int iVar4;
  
  iVar1 = (**(code **)(*param_1 + 0x24))();
  if (iVar1 <= *(int *)(param_2 + 8)) {
    iVar4 = *(int *)(param_2 + 4);
    *(int *)(param_2 + 8) = *(int *)(param_2 + 8) - iVar1;
    *(int *)(param_2 + 4) = iVar4 + iVar1;
    if (iVar4 != 0) {
      iVar2 = (**(code **)(*param_1 + 0x2c))(param_1,iVar4);
      iVar2 = iVar2 - iVar4;
      if (iVar2 == iVar1) {
        return 1;
      }
      uVar3 = (**(code **)(*param_1 + 0x24))(param_1);
      goto LAB_005304aa;
    }
  }
  iVar2 = *(int *)(param_2 + 0xc);
  iVar4 = *(int *)(param_2 + 8);
  (**(code **)(*param_1 + 0x28))(param_1,param_2);
  if (*(char *)(param_2 + 0x10) != '\0') {
    return 0;
  }
  iVar2 = (*(int *)(param_2 + 0xc) - *(int *)(param_2 + 8)) - (iVar2 - iVar4);
  if (iVar2 == iVar1) {
    return 1;
  }
  uVar3 = (**(code **)(*param_1 + 0x24))(param_1);
LAB_005304aa:
  FUN_0052feac(iVar1,uVar3,iVar2);
  return 1;
}

// ---- FUN_00530720  @ 0x530720
void FUN_00530720(undefined4 *param_1,uint param_2)

{
  void *__dest;
  uint uVar1;
  void *__src;
  
  if ((int)param_1[3] < (int)param_2) {
    uVar1 = param_1[3] * 2;
    __src = (void *)*param_1;
    if ((int)uVar1 < 4) {
      uVar1 = 4;
    }
    if ((int)param_2 <= (int)uVar1) {
      param_2 = uVar1;
    }
    param_1[3] = param_2;
    if (param_2 < 0x1fc00001) {
      param_2 = param_2 << 2;
    }
    else {
      param_2 = 0xffffffff;
    }
    __dest = operator_new__(param_2);
    *param_1 = __dest;
    if (__src != (void *)0x0) {
      memcpy(__dest,__src,param_1[2] << 2);
      operator_delete__(__src);
      return;
    }
  }
  return;
}

// ---- FUN_005307d4  @ 0x5307d4
undefined4 * FUN_005307d4(undefined4 *param_1)

{
  *param_1 = &PTR_LAB_005307c0_1_00924e70;
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_005307ec  @ 0x5307ec
undefined4 FUN_005307ec(int param_1,uint *param_2)

{
  undefined4 uVar1;
  uint uVar2;
  
  if (*(byte **)(param_1 + 4) < *(byte **)(param_1 + 8)) {
    uVar2 = (uint)**(byte **)(param_1 + 4);
    if (-1 < (int)(uVar2 << 0x18)) {
      *param_2 = uVar2;
      *(int *)(param_1 + 4) = *(int *)(param_1 + 4) + 1;
      return 1;
    }
  }
  uVar1 = FUN_0053145a();
  return uVar1;
}

// ---- FUN_00530818  @ 0x530818
undefined4 FUN_00530818(int *param_1)

{
  undefined4 uVar1;
  
  if (*(int *)(*param_1 + -0xc) != 0) {
    uVar1 = FUN_007c5a74();
    return uVar1;
  }
  return 0;
}

// ---- FUN_0053082c  @ 0x53082c
undefined4 FUN_0053082c(int param_1)

{
  int iVar1;
  uint uVar2;
  byte *pbVar3;
  
  do {
    pbVar3 = *(byte **)(param_1 + 4);
    if (pbVar3 < *(byte **)(param_1 + 8)) {
      uVar2 = (uint)*pbVar3;
      if ((int)(uVar2 << 0x18) < 0) goto LAB_00530846;
      *(uint *)(param_1 + 0x14) = uVar2;
      *(byte **)(param_1 + 4) = pbVar3 + 1;
    }
    else {
LAB_00530846:
      uVar2 = FUN_00531548(param_1);
      *(uint *)(param_1 + 0x14) = uVar2;
    }
    if ((uVar2 == 0) || ((uVar2 & 7) == 4)) {
      return 1;
    }
    iVar1 = FUN_0053086a(param_1);
    if (iVar1 == 0) {
      return 0;
    }
  } while( true );
}

// ---- FUN_0053086a  @ 0x53086a
uint FUN_0053086a(int param_1,uint param_2,undefined4 param_3)

{
  uint uVar1;
  char *pcVar2;
  int iVar3;
  int local_18;
  uint uStack_14;
  undefined4 uStack_10;
  
  local_18 = param_1;
  uStack_14 = param_2;
  uStack_10 = param_3;
  switch(param_2 & 7) {
  case 0:
    pcVar2 = *(char **)(param_1 + 4);
    if ((pcVar2 < *(char **)(param_1 + 8)) && (-1 < *pcVar2)) {
      *(char **)(param_1 + 4) = pcVar2 + 1;
    }
    else {
      iVar3 = FUN_0053132e(param_1,&local_18);
      if (iVar3 == 0) {
        return 0;
      }
    }
    uVar1 = 1;
    break;
  case 1:
    uVar1 = FUN_005311dc(param_1,&local_18);
    break;
  case 2:
    iVar3 = FUN_005307ec(param_1,&local_18);
    uVar1 = 0;
    if (iVar3 != 0) {
      uVar1 = FUN_00530fa4(param_1,local_18);
    }
    break;
  case 3:
    iVar3 = *(int *)(param_1 + 0x2c) + 1;
    *(int *)(param_1 + 0x2c) = iVar3;
    if ((iVar3 <= *(int *)(param_1 + 0x30)) && (iVar3 = FUN_0053082c(), iVar3 != 0)) {
      if (0 < *(int *)(param_1 + 0x2c)) {
        *(int *)(param_1 + 0x2c) = *(int *)(param_1 + 0x2c) + -1;
      }
      return (uint)(*(uint *)(param_1 + 0x14) == (param_2 & 0xfffffff8 | 4));
    }
  default:
    uVar1 = 0;
    break;
  case 5:
    uVar1 = FUN_0053119e(param_1,&local_18);
  }
  return uVar1;
}

// ---- FUN_005309b4  @ 0x5309b4
void FUN_005309b4(int param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  FUN_0053189e(param_3,param_1 << 3);
  if (param_2 < 0) {
    FUN_00531950();
    return;
  }
  FUN_0053189e(param_3,param_2,param_2,param_4);
  return;
}

// ---- FUN_005309ce  @ 0x5309ce
void FUN_005309ce(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                 undefined4 param_5)

{
  undefined4 extraout_r1;
  
  FUN_0053189e(param_5,param_1 << 3);
  FUN_00531950(param_5,extraout_r1,param_3,param_4);
  return;
}

// ---- FUN_005309ec  @ 0x5309ec
void FUN_005309ec(int param_1,undefined4 param_2,undefined4 param_3)

{
  FUN_0053189e(param_3,param_1 << 3);
  FUN_0053189e(param_3,param_2);
  return;
}

// ---- FUN_00530a06  @ 0x530a06
void FUN_00530a06(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                 undefined4 param_5)

{
  undefined4 extraout_r1;
  
  FUN_0053189e(param_5,param_1 << 3);
  FUN_00531950(param_5,extraout_r1,param_3,param_4);
  return;
}

// ---- FUN_00530a24  @ 0x530a24
void FUN_00530a24(int param_1,int param_2,undefined4 param_3)

{
  FUN_0053189e(param_3,param_1 << 3);
  FUN_0053189e(param_3,param_2 << 1 ^ param_2 >> 0x1f);
  return;
}

// ---- FUN_00530b2c  @ 0x530b2c
void FUN_00530b2c(int param_1,undefined4 param_2,undefined4 param_3)

{
  FUN_0053189e(param_3,param_1 << 3);
  FUN_0053189e(param_3,param_2);
  return;
}

// ---- FUN_00530b46  @ 0x530b46
void FUN_00530b46(int param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  FUN_0053189e(param_3,param_1 << 3);
  if (param_2 < 0) {
    FUN_00531950();
    return;
  }
  FUN_0053189e(param_3,param_2,param_2,param_4);
  return;
}

// ---- FUN_00530b60  @ 0x530b60
void FUN_00530b60(int param_1,int *param_2,undefined4 param_3)

{
  undefined4 uVar1;
  undefined1 auStack_24 [4];
  undefined1 auStack_20 [16];
  
  FUN_0053189e(param_3,param_1 << 3 | 2);
  if (*(int *)(*param_2 + -0xc) < 0) {
    FUN_0052f7f0(auStack_20,3,
                 "/builddata/pulse-data/agents/hpya5.eem/recipes/816348608/base/googleclient/third_party/protobuf/files/src/google/protobuf/wire_format_lite.cc"
                 ,0x11c);
    uVar1 = FUN_0052f6be(auStack_20,"CHECK failed: value.size() <= kint32max: ");
    FUN_0052f9d4(auStack_24,uVar1);
    FUN_0052f808(auStack_20);
  }
  FUN_0053189e(param_3,*(undefined4 *)(*param_2 + -0xc));
  FUN_005317d8(param_3,*param_2,*(undefined4 *)(*param_2 + -0xc));
  return;
}

// ---- FUN_00530bd8  @ 0x530bd8
void FUN_00530bd8(int param_1,int *param_2,undefined4 param_3)

{
  undefined4 uVar1;
  undefined1 auStack_24 [4];
  undefined1 auStack_20 [16];
  
  FUN_0053189e(param_3,param_1 << 3 | 2);
  if (*(int *)(*param_2 + -0xc) < 0) {
    FUN_0052f7f0(auStack_20,3,
                 "/builddata/pulse-data/agents/hpya5.eem/recipes/816348608/base/googleclient/third_party/protobuf/files/src/google/protobuf/wire_format_lite.cc"
                 ,0x123);
    uVar1 = FUN_0052f6be(auStack_20,"CHECK failed: value.size() <= kint32max: ");
    FUN_0052f9d4(auStack_24,uVar1);
    FUN_0052f808(auStack_20);
  }
  FUN_0053189e(param_3,*(undefined4 *)(*param_2 + -0xc));
  FUN_005317d8(param_3,*param_2,*(undefined4 *)(*param_2 + -0xc));
  return;
}

// ---- FUN_00530c7a  @ 0x530c7a
void FUN_00530c7a(int param_1,int *param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  
  FUN_0053189e(param_3,param_1 << 3 | 2,param_3,param_4,param_4);
  uVar1 = (**(code **)(*param_2 + 0x30))(param_2);
  FUN_0053189e(param_3,uVar1);
  (**(code **)(*param_2 + 0x28))(param_2,param_3);
  return;
}

// ---- FUN_00530ca8  @ 0x530ca8
void FUN_00530ca8(int param_1,int *param_2,int param_3)

{
  int iVar1;
  int iVar2;
  
  FUN_0053189e(param_3,param_1 << 3 | 3);
  iVar1 = (**(code **)(*param_2 + 0x30))(param_2);
  if (iVar1 <= *(int *)(param_3 + 8)) {
    iVar2 = *(int *)(param_3 + 4);
    *(int *)(param_3 + 4) = iVar2 + iVar1;
    *(int *)(param_3 + 8) = *(int *)(param_3 + 8) - iVar1;
    if (iVar2 != 0) {
      (**(code **)(*param_2 + 0x2c))(param_2);
      goto LAB_00530ce8;
    }
  }
  (**(code **)(*param_2 + 0x28))(param_2,param_3);
LAB_00530ce8:
  FUN_0053189e(param_3,param_1 << 3 | 4);
  return;
}

// ---- FUN_00530d42  @ 0x530d42
int FUN_00530d42(int param_1,size_t param_2,undefined4 param_3,undefined4 param_4)

{
  size_t __n;
  int iVar1;
  void *__dest;
  int iVar2;
  size_t local_1c;
  undefined4 uStack_18;
  
  local_1c = param_2;
  uStack_18 = param_3;
  iVar1 = FUN_005307ec(param_1,&local_1c,param_3,param_4,param_1);
  __n = local_1c;
  if ((iVar1 != 0) && (-1 < (int)local_1c)) {
    if ((int)local_1c <= *(int *)(param_1 + 8) - *(int *)(param_1 + 4)) {
      FUN_007c6404(param_2,local_1c);
      if ((int)__n < 1) {
        return iVar1;
      }
      __dest = (void *)FUN_00530818(param_2);
      memcpy(__dest,*(void **)(param_1 + 4),__n);
      *(size_t *)(param_1 + 4) = __n + *(int *)(param_1 + 4);
      return iVar1;
    }
    iVar2 = FUN_00531234(param_1,param_2,local_1c);
    if (iVar2 != 0) {
      return iVar1;
    }
  }
  return 0;
}

// ---- FUN_00530d9c  @ 0x530d9c
int FUN_00530d9c(int param_1,size_t param_2,undefined4 param_3,undefined4 param_4)

{
  size_t __n;
  int iVar1;
  void *__dest;
  size_t local_1c;
  undefined4 uStack_18;
  
  local_1c = param_2;
  uStack_18 = param_3;
  iVar1 = FUN_005307ec(param_1,&local_1c,param_3,param_4,param_1);
  __n = local_1c;
  if (iVar1 != 0) {
    if ((int)local_1c < 0) {
      iVar1 = 0;
    }
    else if (*(int *)(param_1 + 8) - *(int *)(param_1 + 4) < (int)local_1c) {
      iVar1 = FUN_00531234(param_1,param_2,local_1c);
    }
    else {
      FUN_007c6404(param_2,local_1c);
      if (0 < (int)__n) {
        __dest = (void *)FUN_00530818(param_2);
        memcpy(__dest,*(void **)(param_1 + 4),__n);
        *(size_t *)(param_1 + 4) = __n + *(int *)(param_1 + 4);
      }
    }
  }
  return iVar1;
}

// ---- FUN_00530df4  @ 0x530df4
void FUN_00530df4(undefined4 *param_1)

{
  int iVar1;
  int iVar2;
  
  if (0 < (int)((param_1[2] - param_1[1]) + param_1[8] + param_1[4])) {
    (**(code **)(*(int *)*param_1 + 0xc))();
    iVar1 = param_1[2];
    iVar2 = param_1[8];
    param_1[2] = param_1[1];
    param_1[8] = 0;
    param_1[4] = 0;
    param_1[3] = param_1[3] - ((iVar1 - param_1[1]) + iVar2);
  }
  return;
}

// ---- FUN_00530e2c  @ 0x530e2c
int * FUN_00530e2c(int *param_1)

{
  undefined4 uVar1;
  undefined1 auStack_24 [4];
  undefined1 auStack_20 [20];
  
  if (*param_1 != 0) {
    FUN_00530df4();
  }
  if (param_1[10] == -2) {
    FUN_0052f7f0(auStack_20,1,
                 "/builddata/pulse-data/agents/hpya5.eem/recipes/816348608/base/googleclient/third_party/protobuf/files/src/google/protobuf/io/coded_stream.cc"
                 ,0x4e);
    uVar1 = FUN_0052f6be(auStack_20,"The total number of bytes read was ");
    uVar1 = FUN_0052f6fc(uVar1,param_1[3]);
    FUN_0052f9d4(auStack_24,uVar1);
    FUN_0052f808(auStack_20);
  }
  return param_1;
}

// ---- FUN_00530e7c  @ 0x530e7c
void FUN_00530e7c(int param_1)

{
  int iVar1;
  int *piVar2;
  int iVar3;
  
  iVar1 = *(int *)(param_1 + 8) + *(int *)(param_1 + 0x20);
  *(int *)(param_1 + 8) = iVar1;
  if (*(int *)(param_1 + 0x24) < *(int *)(param_1 + 0x1c)) {
    piVar2 = (int *)(param_1 + 0x24);
  }
  else {
    piVar2 = (int *)(param_1 + 0x1c);
  }
  if (*(int *)(param_1 + 0xc) <= *piVar2) {
    *(undefined4 *)(param_1 + 0x20) = 0;
    return;
  }
  iVar3 = *(int *)(param_1 + 0xc) - *piVar2;
  *(int *)(param_1 + 0x20) = iVar3;
  *(int *)(param_1 + 8) = iVar1 - iVar3;
  return;
}

// ---- FUN_00530eac  @ 0x530eac
int FUN_00530eac(int param_1,int param_2)

{
  int iVar1;
  int iVar2;
  
  iVar2 = *(int *)(param_1 + 0x1c);
  if ((param_2 < 0) ||
     (iVar1 = *(int *)(param_1 + 0xc) -
              ((*(int *)(param_1 + 8) - *(int *)(param_1 + 4)) + *(int *)(param_1 + 0x20)),
     0x7fffffff - iVar1 < param_2)) {
    *(undefined4 *)(param_1 + 0x1c) = 0x7fffffff;
  }
  else {
    *(int *)(param_1 + 0x1c) = param_2 + iVar1;
  }
  if (iVar2 < *(int *)(param_1 + 0x1c)) {
    *(int *)(param_1 + 0x1c) = iVar2;
  }
  else {
    *(int *)(param_1 + 0x1c) = *(int *)(param_1 + 0x1c);
  }
  FUN_00530e7c();
  return iVar2;
}

// ---- FUN_00530eea  @ 0x530eea
void FUN_00530eea(int param_1,undefined4 param_2)

{
  *(undefined4 *)(param_1 + 0x1c) = param_2;
  FUN_00530e7c();
  *(undefined1 *)(param_1 + 0x18) = 0;
  return;
}

// ---- FUN_00530efa  @ 0x530efa
int FUN_00530efa(int param_1)

{
  if (*(int *)(param_1 + 0x1c) != 0x7fffffff) {
    return *(int *)(param_1 + 0x1c) -
           (*(int *)(param_1 + 0xc) -
           (*(int *)(param_1 + 0x20) + (*(int *)(param_1 + 8) - *(int *)(param_1 + 4))));
  }
  return -1;
}

// ---- FUN_00530f1c  @ 0x530f1c
void FUN_00530f1c(int param_1,int param_2,int param_3)

{
  int iVar1;
  
  iVar1 = *(int *)(param_1 + 0xc) -
          ((*(int *)(param_1 + 8) - *(int *)(param_1 + 4)) + *(int *)(param_1 + 0x20));
  if (iVar1 < param_2) {
    *(int *)(param_1 + 0x24) = param_2;
  }
  else {
    *(int *)(param_1 + 0x24) = iVar1;
  }
  if (param_3 < 0) {
    *(undefined4 *)(param_1 + 0x28) = 0xffffffff;
  }
  else {
    *(int *)(param_1 + 0x28) = param_3;
  }
  FUN_00530e7c();
  return;
}

// ---- FUN_00530f4c  @ 0x530f4c
void FUN_00530f4c(int param_1)

{
  undefined4 uVar1;
  undefined1 auStack_24 [4];
  undefined1 auStack_20 [20];
  
  FUN_0052f7f0(auStack_20,2,
               "/builddata/pulse-data/agents/hpya5.eem/recipes/816348608/base/googleclient/third_party/protobuf/files/src/google/protobuf/io/coded_stream.cc"
               ,0xab);
  uVar1 = FUN_0052f6be(auStack_20,
                       "A protocol message was rejected because it was too big (more than ");
  uVar1 = FUN_0052f6fc(uVar1,*(undefined4 *)(param_1 + 0x24));
  uVar1 = FUN_0052f6be(uVar1,
                       " bytes).  To increase the limit (or to disable these warnings), see CodedInputStream::SetTotalBytesLimit() in google/protobuf/io/coded_stream.h."
                      );
  FUN_0052f9d4(auStack_24,uVar1);
  FUN_0052f808(auStack_20);
  return;
}

// ---- FUN_00530fa4  @ 0x530fa4
undefined4 FUN_00530fa4(undefined4 *param_1,int param_2)

{
  undefined4 uVar1;
  int iVar2;
  int *piVar3;
  int iVar4;
  
  if (-1 < param_2) {
    iVar4 = param_1[1];
    iVar2 = param_1[2] - iVar4;
    if (param_2 <= iVar2) {
      param_1[1] = param_2 + iVar4;
      return 1;
    }
    if ((int)param_1[8] < 1) {
      param_1[1] = 0;
      param_1[2] = 0;
      if ((int)param_1[9] < (int)param_1[7]) {
        piVar3 = param_1 + 9;
      }
      else {
        piVar3 = param_1 + 7;
      }
      iVar4 = *piVar3 - param_1[3];
      if (param_2 - iVar2 <= iVar4) {
        param_1[3] = param_1[3] + (param_2 - iVar2);
        uVar1 = (**(code **)(*(int *)*param_1 + 0x10))();
        return uVar1;
      }
      if (0 < iVar4) {
        param_1[3] = *piVar3;
        (**(code **)(*(int *)*param_1 + 0x10))((int *)*param_1,iVar4);
      }
    }
    else {
      param_1[1] = iVar2 + iVar4;
    }
  }
  return 0;
}

// ---- FUN_00531010  @ 0x531010
undefined4 FUN_00531010(undefined4 *param_1)

{
  undefined4 uVar1;
  int iVar2;
  int *piVar3;
  undefined1 auStack_34 [4];
  int local_30;
  int local_2c;
  undefined1 auStack_28 [20];
  
  iVar2 = param_1[3];
  if ((((int)param_1[8] < 1) && ((int)param_1[4] < 1)) && (iVar2 != param_1[7])) {
    if ((-1 < (int)param_1[10]) && ((int)param_1[10] <= iVar2)) {
      FUN_0052f7f0(auStack_28,1,
                   "/builddata/pulse-data/agents/hpya5.eem/recipes/816348608/base/googleclient/third_party/protobuf/files/src/google/protobuf/io/coded_stream.cc"
                   ,0x1f9);
      uVar1 = FUN_0052f6be(auStack_28,
                           "Reading dangerously large protocol message.  If the message turns out to be larger than "
                          );
      uVar1 = FUN_0052f6fc(uVar1,param_1[9]);
      uVar1 = FUN_0052f6be(uVar1,
                           " bytes, parsing will be halted for security reasons.  To increase the limit (or to disable these warnings), see CodedInputStream::SetTotalBytesLimit() in google/protobuf/io/coded_stream.h."
                          );
      FUN_0052f9d4(&local_2c,uVar1);
      FUN_0052f808(auStack_28);
      param_1[10] = 0xfffffffe;
    }
    piVar3 = (int *)*param_1;
    do {
      iVar2 = (**(code **)(*piVar3 + 8))(piVar3,&local_30,&local_2c);
      if (iVar2 == 0) {
        param_1[1] = 0;
        param_1[2] = 0;
        return 0;
      }
    } while (local_2c == 0);
    param_1[2] = local_2c + local_30;
    param_1[1] = local_30;
    if (local_2c < 0) {
      FUN_0052f7f0(auStack_28,3,
                   "/builddata/pulse-data/agents/hpya5.eem/recipes/816348608/base/googleclient/third_party/protobuf/files/src/google/protobuf/io/coded_stream.cc"
                   ,0x20a);
      uVar1 = FUN_0052f6be(auStack_28,"CHECK failed: (buffer_size) >= (0): ");
      FUN_0052f9d4(auStack_34,uVar1);
      FUN_0052f808(auStack_28);
    }
    iVar2 = param_1[3];
    if (0x7fffffff - local_2c < iVar2) {
      iVar2 = iVar2 + local_2c + -0x7fffffff;
      param_1[4] = iVar2;
      param_1[2] = param_1[2] - iVar2;
      iVar2 = 0x7fffffff;
    }
    else {
      iVar2 = iVar2 + local_2c;
    }
    param_1[3] = iVar2;
    FUN_00530e7c(param_1);
    uVar1 = 1;
  }
  else {
    if (((int)param_1[9] <= iVar2 - param_1[8]) && (param_1[9] != param_1[7])) {
      FUN_00530f4c(param_1);
    }
    uVar1 = 0;
  }
  return uVar1;
}

// ---- FUN_0053115e  @ 0x53115e
undefined4 FUN_0053115e(int param_1,void *param_2,size_t param_3)

{
  int iVar1;
  void *__src;
  size_t __n;
  
  do {
    __src = *(void **)(param_1 + 4);
    __n = *(int *)(param_1 + 8) - (int)__src;
    if ((int)param_3 <= (int)__n) {
      memcpy(param_2,__src,param_3);
      *(size_t *)(param_1 + 4) = param_3 + *(int *)(param_1 + 4);
      return 1;
    }
    memcpy(param_2,__src,__n);
    param_3 = param_3 - __n;
    *(size_t *)(param_1 + 4) = __n + *(int *)(param_1 + 4);
    iVar1 = FUN_00531010(param_1);
    param_2 = (void *)((int)param_2 + __n);
  } while (iVar1 != 0);
  return 0;
}

// ---- FUN_0053119e  @ 0x53119e
undefined4 FUN_0053119e(int param_1,uint *param_2,undefined4 param_3)

{
  int iVar1;
  uint **ppuVar2;
  uint **ppuVar3;
  uint *local_14;
  undefined4 uStack_10;
  
  uStack_10 = param_3;
  ppuVar3 = &local_14;
  local_14 = param_2;
  ppuVar2 = *(uint ***)(param_1 + 4);
  if ((uint)(*(int *)(param_1 + 8) - (int)ppuVar2) < 4) {
    iVar1 = FUN_0053115e(param_1,ppuVar3,4,ppuVar2,param_1);
    if (iVar1 == 0) {
      return 0;
    }
  }
  else {
    *(uint ***)(param_1 + 4) = ppuVar2 + 1;
    ppuVar3 = ppuVar2;
  }
  *param_2 = (uint)*(byte *)((int)ppuVar3 + 2) << 0x10 | (uint)*(byte *)((int)ppuVar3 + 1) << 8 |
             (uint)*(byte *)ppuVar3 | (uint)*(byte *)((int)ppuVar3 + 3) << 0x18;
  return 1;
}

// ---- FUN_005311dc  @ 0x5311dc
undefined4 FUN_005311dc(int param_1,uint *param_2,undefined4 param_3)

{
  byte bVar1;
  byte bVar2;
  byte bVar3;
  byte bVar4;
  int iVar5;
  byte *pbVar6;
  byte *pbVar7;
  int local_18;
  uint *local_14;
  undefined4 uStack_10;
  
  uStack_10 = param_3;
  local_14 = param_2;
  pbVar7 = (byte *)&local_18;
  local_18 = param_1;
  pbVar6 = *(byte **)(param_1 + 4);
  if ((uint)(*(int *)(param_1 + 8) - (int)pbVar6) < 8) {
    iVar5 = FUN_0053115e(param_1,pbVar7,8);
    if (iVar5 == 0) {
      return 0;
    }
  }
  else {
    *(byte **)(param_1 + 4) = pbVar6 + 8;
    pbVar7 = pbVar6;
  }
  bVar1 = pbVar7[6];
  bVar2 = pbVar7[5];
  bVar3 = pbVar7[7];
  bVar4 = pbVar7[4];
  *param_2 = (uint)pbVar7[2] << 0x10 | (uint)pbVar7[1] << 8 | (uint)*pbVar7 |
             (uint)pbVar7[3] << 0x18;
  param_2[1] = (uint)bVar1 << 0x10 | (uint)bVar2 << 8 | (uint)bVar4 | (uint)bVar3 << 0x18;
  return 1;
}

// ---- FUN_00531234  @ 0x531234
undefined4 FUN_00531234(int param_1,int *param_2,int param_3)

{
  int iVar1;
  int iVar2;
  
  if (*(int *)(*param_2 + -0xc) != 0) {
    FUN_007c5b70(param_2);
  }
  do {
    iVar1 = *(int *)(param_1 + 4);
    iVar2 = *(int *)(param_1 + 8) - iVar1;
    if (param_3 <= iVar2) {
      FUN_007c6234(param_2,iVar1,param_3);
      *(int *)(param_1 + 4) = param_3 + *(int *)(param_1 + 4);
      return 1;
    }
    if (iVar2 != 0) {
      FUN_007c6234(param_2,iVar1,iVar2);
    }
    param_3 = param_3 - iVar2;
    *(int *)(param_1 + 4) = iVar2 + *(int *)(param_1 + 4);
    iVar1 = FUN_00531010(param_1);
  } while (iVar1 != 0);
  return 0;
}

// ---- FUN_00531282  @ 0x531282
undefined4 FUN_00531282(int param_1,int *param_2,size_t param_3,undefined4 param_4)

{
  void *__dest;
  undefined4 uVar1;
  int iVar2;
  
  if ((int)param_3 < 0) {
    return 0;
  }
  iVar2 = *(int *)(param_1 + 8) - *(int *)(param_1 + 4);
  if ((int)param_3 <= iVar2) {
    FUN_007c6404(param_2,param_3,param_3,iVar2,param_4);
    if (0 < (int)param_3) {
      __dest = (void *)0x0;
      if (*(int *)(*param_2 + -0xc) != 0) {
        __dest = (void *)FUN_007c5a74(param_2);
      }
      memcpy(__dest,*(void **)(param_1 + 4),param_3);
      *(size_t *)(param_1 + 4) = param_3 + *(int *)(param_1 + 4);
    }
    return 1;
  }
  uVar1 = FUN_00531234();
  return uVar1;
}

// ---- FUN_0053132e  @ 0x53132e
undefined4 FUN_0053132e(int param_1,uint *param_2)

{
  byte bVar1;
  int iVar2;
  byte *pbVar3;
  uint uVar4;
  byte *pbVar5;
  uint uVar6;
  uint uVar7;
  int iVar8;
  undefined8 uVar9;
  
  pbVar3 = *(byte **)(param_1 + 8);
  pbVar5 = *(byte **)(param_1 + 4);
  if (((int)pbVar3 - (int)pbVar5 < 10) && ((pbVar3 <= pbVar5 || ((char)pbVar3[-1] < '\0')))) {
    iVar8 = 0;
    uVar4 = 0;
    uVar7 = 0;
    while( true ) {
      while (pbVar3 = *(byte **)(param_1 + 4), pbVar3 == *(byte **)(param_1 + 8)) {
        iVar2 = FUN_00531010(param_1);
        if (iVar2 == 0) {
          return 0;
        }
      }
      bVar1 = *pbVar3;
      uVar9 = __ashldi3(bVar1 & 0x7f,0,iVar8);
      *(byte **)(param_1 + 4) = pbVar3 + 1;
      uVar4 = uVar4 | (uint)uVar9;
      uVar7 = uVar7 | (uint)((ulonglong)uVar9 >> 0x20);
      if ((bVar1 & 0x80) == 0) break;
      iVar8 = iVar8 + 7;
      if (iVar8 == 0x46) {
        return 0;
      }
    }
    *param_2 = uVar4;
    param_2[1] = uVar7;
    return 1;
  }
  bVar1 = *pbVar5;
  uVar7 = bVar1 & 0x7f;
  uVar4 = bVar1 & 0xffffff80;
  if ((bVar1 & 0x80) == 0) {
    pbVar3 = pbVar5 + 1;
    uVar6 = uVar4;
  }
  else {
    bVar1 = pbVar5[1];
    uVar4 = bVar1 & 0xffffff80;
    uVar7 = uVar7 | (bVar1 & 0x7f) << 7;
    if ((bVar1 & 0x80) == 0) {
      pbVar3 = pbVar5 + 2;
      uVar6 = uVar4;
    }
    else {
      bVar1 = pbVar5[2];
      uVar4 = bVar1 & 0xffffff80;
      uVar7 = uVar7 | (bVar1 & 0x7f) << 0xe;
      if ((bVar1 & 0x80) == 0) {
        pbVar3 = pbVar5 + 3;
        uVar6 = uVar4;
      }
      else {
        bVar1 = pbVar5[3];
        uVar4 = bVar1 & 0xffffff80;
        uVar7 = uVar7 | (bVar1 & 0x7f) << 0x15;
        if ((bVar1 & 0x80) == 0) {
          pbVar3 = pbVar5 + 4;
          uVar6 = uVar4;
        }
        else {
          bVar1 = pbVar5[4];
          uVar4 = bVar1 & 0x7f;
          if ((bVar1 & 0x80) == 0) {
            pbVar3 = pbVar5 + 5;
            uVar6 = bVar1 & 0xffffff80;
          }
          else {
            bVar1 = pbVar5[5];
            uVar4 = uVar4 | (bVar1 & 0x7f) << 7;
            if ((bVar1 & 0x80) == 0) {
              pbVar3 = pbVar5 + 6;
              uVar6 = bVar1 & 0xffffff80;
            }
            else {
              bVar1 = pbVar5[6];
              uVar4 = uVar4 | (bVar1 & 0x7f) << 0xe;
              if ((bVar1 & 0x80) == 0) {
                pbVar3 = pbVar5 + 7;
                uVar6 = bVar1 & 0xffffff80;
              }
              else {
                bVar1 = pbVar5[7];
                uVar4 = uVar4 | (bVar1 & 0x7f) << 0x15;
                if ((bVar1 & 0x80) == 0) {
                  pbVar3 = pbVar5 + 8;
                  uVar6 = bVar1 & 0xffffff80;
                }
                else {
                  uVar6 = pbVar5[8] & 0x7f;
                  if ((int)((uint)pbVar5[8] << 0x18) < 0) {
                    if ((pbVar5[9] & 0x80) != 0) {
                      return 0;
                    }
                    pbVar3 = pbVar5 + 10;
                    uVar6 = uVar6 | (uint)pbVar5[9] << 7;
                  }
                  else {
                    pbVar3 = pbVar5 + 9;
                  }
                }
              }
            }
          }
        }
      }
    }
  }
  *(byte **)(param_1 + 4) = pbVar3;
  *param_2 = uVar4 << 0x1c | uVar7;
  param_2[1] = uVar6 << 0x18 | uVar4 >> 4;
  return 1;
}

// ---- FUN_0053145a  @ 0x53145a
int FUN_0053145a(uint param_1,uint *param_2)

{
  int iVar1;
  byte *pbVar2;
  byte *pbVar3;
  byte *pbVar4;
  uint uVar5;
  uint uStack_10;
  
  pbVar2 = *(byte **)(param_1 + 8);
  pbVar4 = *(byte **)(param_1 + 4);
  if (((int)pbVar2 - (int)pbVar4 < 10) && ((pbVar2 <= pbVar4 || ((char)pbVar2[-1] < '\0')))) {
    uStack_10 = param_1;
    iVar1 = FUN_0053132e(param_1,&uStack_10);
    if (iVar1 != 0) {
      *param_2 = uStack_10;
    }
    return iVar1;
  }
  uVar5 = *pbVar4 & 0x7f;
  if ((int)((uint)*pbVar4 << 0x18) < 0) {
    uVar5 = uVar5 | (pbVar4[1] & 0x7f) << 7;
    if ((int)((uint)pbVar4[1] << 0x18) < 0) {
      uVar5 = uVar5 | (pbVar4[2] & 0x7f) << 0xe;
      if ((int)((uint)pbVar4[2] << 0x18) < 0) {
        uVar5 = uVar5 | (pbVar4[3] & 0x7f) << 0x15;
        if ((int)((uint)pbVar4[3] << 0x18) < 0) {
          pbVar2 = pbVar4 + 5;
          uVar5 = uVar5 | (uint)pbVar4[4] << 0x1c;
          if ((int)((uint)pbVar4[4] << 0x18) < 0) {
            pbVar3 = pbVar2;
            while (pbVar2 = pbVar3 + 1, (int)((uint)*pbVar3 << 0x18) < 0) {
              pbVar3 = pbVar2;
              if (pbVar2 == pbVar4 + 10) {
                return 0;
              }
            }
          }
        }
        else {
          pbVar2 = pbVar4 + 4;
        }
      }
      else {
        pbVar2 = pbVar4 + 3;
      }
    }
    else {
      pbVar2 = pbVar4 + 2;
    }
  }
  else {
    pbVar2 = pbVar4 + 1;
  }
  *param_2 = uVar5;
  if (pbVar2 == (byte *)0x0) {
    return 0;
  }
  *(byte **)(param_1 + 4) = pbVar2;
  return 1;
}

// ---- FUN_00531548  @ 0x531548
uint FUN_00531548(uint param_1)

{
  int iVar1;
  byte *pbVar2;
  uint uVar3;
  byte *pbVar4;
  byte *pbVar5;
  bool bVar6;
  uint local_10;
  int iStack_c;
  
  pbVar4 = *(byte **)(param_1 + 4);
  iStack_c = *(int *)(param_1 + 8) - (int)pbVar4;
  if (iStack_c < 10) {
    if (iStack_c < 1) {
      if (iStack_c == 0) {
        if (((0 < *(int *)(param_1 + 0x20)) ||
            (iStack_c = *(int *)(param_1 + 0x1c), *(int *)(param_1 + 0xc) == iStack_c)) &&
           (iStack_c = *(int *)(param_1 + 0x24),
           *(int *)(param_1 + 0xc) - *(int *)(param_1 + 0x20) < iStack_c)) {
          *(undefined1 *)(param_1 + 0x18) = 1;
          return 0;
        }
      }
LAB_005315e4:
      if ((*(int *)(param_1 + 4) == *(int *)(param_1 + 8)) &&
         (local_10 = param_1, iVar1 = FUN_00531010(), iVar1 == 0)) {
        if (*(int *)(param_1 + 0xc) - *(int *)(param_1 + 0x20) < *(int *)(param_1 + 0x24)) {
          bVar6 = true;
        }
        else {
          bVar6 = *(int *)(param_1 + 0x1c) == *(int *)(param_1 + 0x24);
        }
        *(bool *)(param_1 + 0x18) = bVar6;
        local_10 = 0;
      }
      else {
        pbVar4 = *(byte **)(param_1 + 4);
        local_10 = 0;
        iStack_c = 0;
        if ((pbVar4 < *(byte **)(param_1 + 8)) && (-1 < (int)((uint)*pbVar4 << 0x18))) {
          local_10 = (uint)*pbVar4;
          *(byte **)(param_1 + 4) = pbVar4 + 1;
        }
        else {
          iVar1 = FUN_0053132e(param_1,&local_10);
          if (iVar1 == 0) {
            return 0;
          }
        }
      }
      return local_10;
    }
    if (*(char *)(*(int *)(param_1 + 8) + -1) < '\0') goto LAB_005315e4;
  }
  uVar3 = *pbVar4 & 0x7f;
  if ((int)((uint)*pbVar4 << 0x18) < 0) {
    uVar3 = uVar3 | (pbVar4[1] & 0x7f) << 7;
    if (-1 < (int)((uint)pbVar4[1] << 0x18)) {
      pbVar5 = pbVar4 + 2;
      goto LAB_005315c0;
    }
    uVar3 = uVar3 | (pbVar4[2] & 0x7f) << 0xe;
    if (-1 < (int)((uint)pbVar4[2] << 0x18)) {
      pbVar5 = pbVar4 + 3;
      goto LAB_005315c0;
    }
    uVar3 = uVar3 | (pbVar4[3] & 0x7f) << 0x15;
    if (-1 < (int)((uint)pbVar4[3] << 0x18)) {
      pbVar5 = pbVar4 + 4;
      goto LAB_005315c0;
    }
    pbVar5 = pbVar4 + 5;
    uVar3 = uVar3 | (uint)pbVar4[4] << 0x1c;
    if (-1 < (int)((uint)pbVar4[4] << 0x18)) goto LAB_005315c0;
    pbVar2 = pbVar5;
    while (pbVar5 = pbVar2 + 1, (int)((uint)*pbVar2 << 0x18) < 0) {
      pbVar2 = pbVar5;
      if (pbVar5 == pbVar4 + 10) {
        return 0;
      }
    }
  }
  else {
    pbVar5 = pbVar4 + 1;
  }
  if (pbVar5 == (byte *)0x0) {
    return 0;
  }
LAB_005315c0:
  *(byte **)(param_1 + 4) = pbVar5;
  return uVar3;
}

// ---- FUN_005315fc  @ 0x5315fc
undefined4 * FUN_005315fc(undefined4 *param_1)

{
  if (0 < (int)param_1[2]) {
    (**(code **)(*(int *)*param_1 + 0xc))();
  }
  return param_1;
}

// ---- FUN_00531746  @ 0x531746
void FUN_00531746(undefined4 *param_1,undefined4 param_2)

{
  int iVar1;
  code *pcVar2;
  undefined4 local_c;
  
  pcVar2 = *(code **)(*(int *)*param_1 + 8);
  local_c = param_2;
  iVar1 = (*pcVar2)((int *)*param_1,&local_c,param_1 + 2,pcVar2,param_1);
  if (iVar1 == 0) {
    param_1[1] = 0;
    param_1[2] = 0;
    *(undefined1 *)(param_1 + 4) = 1;
  }
  else {
    param_1[1] = local_c;
    param_1[3] = param_1[2] + param_1[3];
  }
  return;
}

// ---- FUN_00531774  @ 0x531774
undefined4 * FUN_00531774(undefined4 *param_1,undefined4 param_2)

{
  *param_1 = param_2;
  param_1[1] = 0;
  param_1[2] = 0;
  param_1[3] = 0;
  *(undefined1 *)(param_1 + 4) = 0;
  FUN_00531746();
  *(undefined1 *)(param_1 + 4) = 0;
  return param_1;
}

// ---- FUN_005317d8  @ 0x5317d8
void FUN_005317d8(int param_1,void *param_2,size_t param_3)

{
  int iVar1;
  
  do {
    if ((int)param_3 <= (int)*(size_t *)(param_1 + 8)) {
      memcpy(*(void **)(param_1 + 4),param_2,param_3);
      *(size_t *)(param_1 + 4) = *(int *)(param_1 + 4) + param_3;
      *(size_t *)(param_1 + 8) = *(int *)(param_1 + 8) - param_3;
      return;
    }
    memcpy(*(void **)(param_1 + 4),param_2,*(size_t *)(param_1 + 8));
    param_3 = param_3 - *(int *)(param_1 + 8);
    param_2 = (void *)((int)param_2 + *(int *)(param_1 + 8));
    iVar1 = FUN_00531746(param_1);
  } while (iVar1 != 0);
  return;
}

// ---- FUN_00531852  @ 0x531852
void FUN_00531852(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  bool bVar1;
  int *piVar2;
  int local_18;
  undefined4 local_14;
  undefined4 uStack_10;
  
  bVar1 = *(uint *)(param_1 + 8) < 8;
  piVar2 = &local_18;
  if (!bVar1) {
    piVar2 = *(int **)(param_1 + 4);
  }
  local_18 = param_1;
  local_14 = param_2;
  uStack_10 = param_3;
  *(char *)piVar2 = (char)param_3;
  *(char *)((int)piVar2 + 1) = (char)((uint)param_3 >> 8);
  *(char *)(piVar2 + 1) = (char)param_4;
  *(char *)((int)piVar2 + 2) = (char)((uint)param_3 >> 0x10);
  *(char *)((int)piVar2 + 3) = (char)((uint)param_3 >> 0x18);
  *(char *)((int)piVar2 + 5) = (char)((uint)param_4 >> 8);
  *(char *)((int)piVar2 + 6) = (char)((uint)param_4 >> 0x10);
  *(char *)((int)piVar2 + 7) = (char)((uint)param_4 >> 0x18);
  if (bVar1) {
    FUN_005317d8(param_1,&local_18,8);
  }
  else {
    *(int *)(param_1 + 4) = *(int *)(param_1 + 4) + 8;
    *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + -8;
  }
  return;
}

// ---- FUN_0053189e  @ 0x53189e
void FUN_0053189e(int param_1,uint param_2,undefined4 param_3)

{
  byte bVar1;
  byte *pbVar2;
  byte *pbVar3;
  int iVar4;
  int local_18 [3];
  
  if (*(int *)(param_1 + 8) < 5) {
    iVar4 = 0;
    local_18[0] = param_1;
    local_18[1] = param_2;
    local_18[2] = param_3;
    for (; 0x7f < param_2; param_2 = param_2 >> 7) {
      *(byte *)((int)local_18 + iVar4) = (byte)param_2 | 0x80;
      iVar4 = iVar4 + 1;
    }
    *(byte *)((int)local_18 + iVar4) = (byte)param_2;
    FUN_005317d8(param_1,local_18);
  }
  else {
    pbVar3 = *(byte **)(param_1 + 4);
    *pbVar3 = (byte)param_2 | 0x80;
    if (param_2 < 0x80) {
      pbVar2 = pbVar3 + 1;
      *pbVar3 = (byte)param_2 & 0x7f;
    }
    else {
      bVar1 = (byte)((param_2 << 0x11) >> 0x18);
      pbVar3[1] = bVar1 | 0x80;
      if (param_2 < 0x4000) {
        pbVar3[1] = bVar1 & 0x7f;
        pbVar2 = pbVar3 + 2;
      }
      else {
        bVar1 = (byte)((param_2 << 10) >> 0x18);
        pbVar3[2] = bVar1 | 0x80;
        if (param_2 < 0x200000) {
          pbVar3[2] = bVar1 & 0x7f;
          pbVar2 = pbVar3 + 3;
        }
        else {
          bVar1 = (byte)((param_2 << 3) >> 0x18);
          pbVar3[3] = bVar1 | 0x80;
          if (param_2 < 0x10000000) {
            pbVar3[3] = bVar1 & 0x7f;
            pbVar2 = pbVar3 + 4;
          }
          else {
            pbVar2 = pbVar3 + 5;
            pbVar3[4] = (byte)(param_2 >> 0x1c);
          }
        }
      }
    }
    *(int *)(param_1 + 4) = *(int *)(param_1 + 4) + ((int)pbVar2 - (int)pbVar3);
    *(int *)(param_1 + 8) = *(int *)(param_1 + 8) - ((int)pbVar2 - (int)pbVar3);
  }
  return;
}

// ---- FUN_00531950  @ 0x531950
void FUN_00531950(int param_1,undefined4 param_2,uint param_3,uint param_4)

{
  byte bVar1;
  byte *pbVar2;
  int iVar3;
  uint uVar4;
  byte local_24 [16];
  
  if (*(int *)(param_1 + 8) < 10) {
    iVar3 = 0;
    while( true ) {
      if (param_4 == 0 && param_3 < 0x80) break;
      local_24[iVar3] = (byte)param_3 | 0x80;
      param_3 = param_3 >> 7 | param_4 << 0x19;
      param_4 = param_4 >> 7;
      iVar3 = iVar3 + 1;
    }
    local_24[iVar3] = (byte)param_3;
    FUN_005317d8(param_1,local_24,iVar3 + 1);
    return;
  }
  pbVar2 = *(byte **)(param_1 + 4);
  uVar4 = param_3 >> 0x1c | param_4 << 4;
  if (param_4 >> 0x18 == 0) {
    if (uVar4 != 0) {
      if (0x3fff < uVar4) {
        if (0x1fffff < uVar4) {
          iVar3 = 8;
          goto LAB_005319b8;
        }
        iVar3 = 7;
        goto LAB_005319c4;
      }
      if (0x7f < uVar4) {
        iVar3 = 6;
        goto LAB_005319cc;
      }
      iVar3 = 5;
      goto LAB_005319d8;
    }
    if (0x3fff < param_3) {
      if (0x1fffff < param_3) {
        iVar3 = 4;
        goto LAB_005319de;
      }
      iVar3 = 3;
      goto LAB_005319ea;
    }
    if (param_3 < 0x80) {
      iVar3 = 1;
      goto LAB_005319fe;
    }
    iVar3 = 2;
  }
  else {
    bVar1 = (byte)(param_4 >> 0x18);
    if (param_4 >> 0x18 < 0x80) {
      iVar3 = 9;
    }
    else {
      pbVar2[9] = bVar1 >> 7 | 0x80;
      iVar3 = 10;
    }
    pbVar2[8] = bVar1 | 0x80;
LAB_005319b8:
    pbVar2[7] = (byte)((param_4 & 0xfffffff) >> 0x11) | 0x80;
LAB_005319c4:
    pbVar2[6] = (byte)((param_4 & 0xfffffff) >> 10) | 0x80;
LAB_005319cc:
    pbVar2[5] = (byte)((param_4 & 0xfffffff) >> 3) | 0x80;
LAB_005319d8:
    pbVar2[4] = (byte)uVar4 | 0x80;
LAB_005319de:
    pbVar2[3] = (byte)(param_3 >> 0x15) | 0x80;
LAB_005319ea:
    pbVar2[2] = (byte)(param_3 >> 0xe) | 0x80;
  }
  pbVar2[1] = (byte)(param_3 >> 7) | 0x80;
LAB_005319fe:
  *pbVar2 = (byte)param_3 | 0x80;
  pbVar2[iVar3 + -1] = pbVar2[iVar3 + -1] & 0x7f;
  *(int *)(param_1 + 4) = *(int *)(param_1 + 4) + iVar3;
  *(int *)(param_1 + 8) = *(int *)(param_1 + 8) - iVar3;
  return;
}

// ---- FUN_00531a52  @ 0x531a52
undefined4 FUN_00531a52(uint param_1)

{
  undefined4 uVar1;
  
  if (param_1 < 0x80) {
    return 1;
  }
  if (param_1 < 0x4000) {
    return 2;
  }
  if (param_1 < 0x200000) {
    return 3;
  }
  if (param_1 < 0x10000000) {
    uVar1 = 4;
  }
  else {
    uVar1 = 5;
  }
  return uVar1;
}

// ---- FUN_00531a7a  @ 0x531a7a
undefined4 FUN_00531a7a(uint param_1,uint param_2)

{
  undefined4 uVar1;
  
  if (param_2 < 8) {
    if (param_2 == 0 && param_1 < 0x80) {
      return 1;
    }
    if (param_2 == 0 && param_1 < 0x4000) {
      return 2;
    }
    if (param_2 == 0 && param_1 < 0x200000) {
      return 3;
    }
    if (param_2 == 0 && param_1 < 0x10000000) {
      uVar1 = 4;
    }
    else {
      uVar1 = 5;
    }
    return uVar1;
  }
  if (param_2 < 0x400) {
    return 6;
  }
  if (0x1ffff < param_2) {
    if (param_2 < 0x1000000) {
      return 8;
    }
    if ((int)param_2 < 0) {
      uVar1 = 10;
    }
    else {
      uVar1 = 9;
    }
    return uVar1;
  }
  return 7;
}

// ---- FUN_00531afa  @ 0x531afa
int FUN_00531afa(int *param_1,int param_2)

{
  int iVar1;
  code *pcVar2;
  int *piStack_20;
  int local_1c;
  
  pcVar2 = *(code **)(*param_1 + 8);
  piStack_20 = param_1;
  local_1c = param_2;
  while( true ) {
    iVar1 = (*pcVar2)(param_1,&piStack_20,&local_1c);
    if ((iVar1 == 0) || (param_2 <= local_1c)) break;
    param_2 = param_2 - local_1c;
    pcVar2 = *(code **)(*param_1 + 8);
  }
  if (param_2 < local_1c) {
    (**(code **)(*param_1 + 0xc))(param_1,local_1c - param_2);
  }
  return iVar1;
}

// ---- FUN_00531b54  @ 0x531b54
void FUN_00531b54(int param_1,uint param_2)

{
  undefined4 uVar1;
  undefined1 auStack_24 [4];
  undefined1 auStack_20 [16];
  
  if (*(uint *)(param_1 + 0x14) < param_2) {
    FUN_0052f7f0(auStack_20,3,
                 "/builddata/pulse-data/agents/hpya5.eem/recipes/816348608/base/googleclient/third_party/protobuf/files/src/google/protobuf/io/gzip_stream.cc"
                 ,0x126);
    uVar1 = FUN_0052f6be(auStack_20,"CHECK failed: (zcontext_.avail_in) >= (count): ");
    FUN_0052f9d4(auStack_24,uVar1);
    FUN_0052f808(auStack_20);
  }
  *(uint *)(param_1 + 0x14) = *(int *)(param_1 + 0x14) - param_2;
  return;
}

// ---- FUN_00531ba8  @ 0x531ba8
undefined4 * FUN_00531ba8(undefined4 *param_1)

{
  undefined4 uVar1;
  
  *param_1 = &PTR_FUN_00531ba8_1_00924eb0;
  operator_delete((void *)param_1[0x12]);
  uVar1 = inflateEnd(param_1 + 3);
  param_1[0x11] = uVar1;
  FUN_00532058(param_1);
  return param_1;
}

// ---- FUN_00531bd4  @ 0x531bd4
void * FUN_00531bd4(void *param_1)

{
  FUN_00531ba8();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_00531be8  @ 0x531be8
void FUN_00531be8(undefined4 param_1,int param_2)

{
  uint uVar1;
  
  if (param_2 == 0) {
    uVar1 = 0x20;
  }
  else if (param_2 == 1) {
    uVar1 = 0x10;
  }
  else {
    uVar1 = 0;
  }
  inflateInit2_(param_1,uVar1 | 0xf,"1.2.3",0x38);
  return;
}

// ---- FUN_00531c08  @ 0x531c08
undefined4 * FUN_00531c08(undefined4 *param_1,undefined4 param_2,undefined4 param_3,int param_4)

{
  void *pvVar1;
  undefined4 uVar2;
  undefined1 auStack_24 [4];
  undefined1 auStack_20 [20];
  
  param_1[2] = param_2;
  *param_1 = &PTR_FUN_00531ba8_1_00924eb0;
  param_1[1] = param_3;
  param_1[0x11] = 0;
  param_1[0xb] = 0;
  param_1[0xc] = 0;
  param_1[0xd] = 0;
  param_1[8] = 0;
  param_1[3] = 0;
  param_1[4] = 0;
  param_1[5] = 0;
  param_1[9] = 0;
  if (param_4 == -1) {
    param_4 = 0x10000;
  }
  param_1[0x14] = param_4;
  pvVar1 = operator_new(param_1[0x14]);
  param_1[0x12] = pvVar1;
  if (pvVar1 == (void *)0x0) {
    FUN_0052f7f0(auStack_20,3,
                 "/builddata/pulse-data/agents/hpya5.eem/recipes/816348608/base/googleclient/third_party/protobuf/files/src/google/protobuf/io/gzip_stream.cc"
                 ,0x42);
    uVar2 = FUN_0052f6be(auStack_20,"CHECK failed: output_buffer_ != NULL: ");
    FUN_0052f9d4(auStack_24,uVar2);
    FUN_0052f808(auStack_20);
  }
  param_1[6] = param_1[0x12];
  param_1[7] = param_1[0x14];
  param_1[0x13] = param_1[0x12];
  return param_1;
}

// ---- FUN_00531c9c  @ 0x531c9c
int FUN_00531c9c(int param_1,undefined4 param_2)

{
  int iVar1;
  int iVar2;
  int local_18;
  undefined4 local_14;
  
  local_18 = param_1;
  local_14 = param_2;
  if (((*(int *)(param_1 + 0x44) != 0) || (*(int *)(param_1 + 0x1c) != 0)) &&
     (*(int *)(param_1 + 0x10) == 0)) {
    iVar2 = *(int *)(param_1 + 0xc);
    iVar1 = (**(code **)(**(int **)(param_1 + 8) + 8))(*(int **)(param_1 + 8),&local_18,&local_14);
    if (iVar1 == 0) {
      *(undefined4 *)(param_1 + 0x18) = 0;
      *(undefined4 *)(param_1 + 0x1c) = 0;
      return 1;
    }
    *(int *)(param_1 + 0xc) = local_18;
    *(undefined4 *)(param_1 + 0x10) = local_14;
    if ((iVar2 == 0) &&
       (iVar1 = FUN_00531be8(param_1 + 0xc,*(undefined4 *)(param_1 + 4)), iVar1 != 0)) {
      return iVar1;
    }
  }
  *(undefined4 *)(param_1 + 0x18) = *(undefined4 *)(param_1 + 0x48);
  *(undefined4 *)(param_1 + 0x1c) = *(undefined4 *)(param_1 + 0x50);
  *(undefined4 *)(param_1 + 0x4c) = *(undefined4 *)(param_1 + 0x48);
  iVar1 = inflate(param_1 + 0xc,param_2);
  return iVar1;
}

// ---- FUN_00531cf4  @ 0x531cf4
void FUN_00531cf4(int param_1,undefined4 *param_2,int *param_3)

{
  *param_2 = *(undefined4 *)(param_1 + 0x4c);
  *param_3 = *(int *)(param_1 + 0x18) - *(int *)(param_1 + 0x4c);
  *(undefined4 *)(param_1 + 0x4c) = *(undefined4 *)(param_1 + 0x18);
  return;
}

// ---- FUN_00531d06  @ 0x531d06
undefined4 FUN_00531d06(int param_1,undefined4 param_2,undefined4 param_3)

{
  int iVar1;
  uint uVar2;
  
  uVar2 = *(uint *)(param_1 + 0x44);
  if ((1 < uVar2) && (uVar2 != 0xfffffffb)) {
    return 0;
  }
  if (*(int *)(param_1 + 0x18) == 0) {
    return 0;
  }
  if (*(int *)(param_1 + 0x18) == *(int *)(param_1 + 0x4c)) {
    if (uVar2 == 1) {
      iVar1 = inflateEnd(param_1 + 0xc);
      *(int *)(param_1 + 0x44) = iVar1;
      if (iVar1 != 0) {
        return 0;
      }
      iVar1 = FUN_00531be8(param_1 + 0xc,*(undefined4 *)(param_1 + 4));
      *(int *)(param_1 + 0x44) = iVar1;
      if (iVar1 != 0) {
        return 0;
      }
    }
    uVar2 = FUN_00531c9c(param_1,0);
    *(uint *)(param_1 + 0x44) = uVar2;
    if (uVar2 == 1) {
      if (*(int *)(param_1 + 0x18) == 0) {
        return 0;
      }
    }
    else if ((1 < uVar2) && (uVar2 != 0xfffffffb)) {
      return 0;
    }
  }
  FUN_00531cf4(param_1,param_2,param_3);
  return 1;
}

// ---- FUN_00531e88  @ 0x531e88
int FUN_00531e88(int param_1,int param_2)

{
  int iVar1;
  undefined4 uVar2;
  undefined1 auStack_34 [4];
  undefined1 auStack_30 [20];
  
  do {
    if ((*(int *)(param_1 + 8) == 0) || (*(int *)(param_1 + 0x20) == 0)) {
      iVar1 = (**(code **)(**(int **)(param_1 + 4) + 8))
                        (*(int **)(param_1 + 4),param_1 + 8,param_1 + 0xc);
      if (iVar1 == 0) {
        *(undefined4 *)(param_1 + 8) = 0;
        *(undefined4 *)(param_1 + 0xc) = 0;
        return -5;
      }
      if (*(int *)(param_1 + 0xc) < 1) {
        FUN_0052f7f0(auStack_30,3,
                     "/builddata/pulse-data/agents/hpya5.eem/recipes/816348608/base/googleclient/third_party/protobuf/files/src/google/protobuf/io/gzip_stream.cc"
                     ,0xfe);
        uVar2 = FUN_0052f6be(auStack_30,"CHECK failed: (sub_data_size_) > (0): ");
        FUN_0052f9d4(auStack_34,uVar2);
        FUN_0052f808(auStack_30);
      }
      *(undefined4 *)(param_1 + 0x1c) = *(undefined4 *)(param_1 + 8);
      *(undefined4 *)(param_1 + 0x20) = *(undefined4 *)(param_1 + 0xc);
    }
    iVar1 = deflate(param_1 + 0x10,param_2);
  } while ((iVar1 == 0) && (*(int *)(param_1 + 0x20) == 0));
  if (param_2 - 3U < 2) {
    (**(code **)(**(int **)(param_1 + 4) + 0xc))
              (*(int **)(param_1 + 4),*(undefined4 *)(param_1 + 0x20));
    *(undefined4 *)(param_1 + 8) = 0;
    *(undefined4 *)(param_1 + 0xc) = 0;
  }
  return iVar1;
}

// ---- FUN_00531f3c  @ 0x531f3c
undefined4 FUN_00531f3c(int param_1,undefined4 *param_2,undefined4 *param_3)

{
  undefined4 uVar1;
  int iVar2;
  undefined1 auStack_24 [4];
  undefined1 auStack_20 [16];
  
  if ((*(int *)(param_1 + 0x48) == 0) || (*(int *)(param_1 + 0x48) == -5)) {
    if (*(int *)(param_1 + 0x14) != 0) {
      iVar2 = FUN_00531e88(param_1,0);
      *(int *)(param_1 + 0x48) = iVar2;
      if (iVar2 != 0) goto LAB_00531f4e;
    }
    if (*(int *)(param_1 + 0x14) == 0) {
      *(undefined4 *)(param_1 + 0x10) = *(undefined4 *)(param_1 + 0x4c);
      *(undefined4 *)(param_1 + 0x14) = *(undefined4 *)(param_1 + 0x50);
      *param_2 = *(undefined4 *)(param_1 + 0x4c);
      *param_3 = *(undefined4 *)(param_1 + 0x50);
    }
    else {
      FUN_0052f7f0(auStack_20,2,
                   "/builddata/pulse-data/agents/hpya5.eem/recipes/816348608/base/googleclient/third_party/protobuf/files/src/google/protobuf/io/gzip_stream.cc"
                   ,0x121);
      uVar1 = FUN_0052f6be(auStack_20,"Deflate left bytes unconsumed");
      FUN_0052f9d4(auStack_24,uVar1);
      FUN_0052f808(auStack_20);
    }
    uVar1 = 1;
  }
  else {
LAB_00531f4e:
    uVar1 = 0;
  }
  return uVar1;
}

// ---- FUN_00531fe8  @ 0x531fe8
int FUN_00531fe8(int param_1)

{
  int iVar1;
  uint uVar2;
  
  if ((*(int *)(param_1 + 0x48) != 0) && (*(int *)(param_1 + 0x48) != -5)) {
    return 0;
  }
  do {
    iVar1 = FUN_00531e88(param_1,4);
    *(int *)(param_1 + 0x48) = iVar1;
  } while (iVar1 == 0);
  uVar2 = deflateEnd(param_1 + 0x10);
  *(undefined4 *)(param_1 + 0x48) = 1;
  iVar1 = 1 - uVar2;
  if (1 < uVar2) {
    iVar1 = 0;
  }
  return iVar1;
}

// ---- FUN_0053201c  @ 0x53201c
undefined4 * FUN_0053201c(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0053201c_1_00924e90;
  FUN_00531fe8();
  if ((void *)param_1[0x13] != (void *)0x0) {
    operator_delete((void *)param_1[0x13]);
  }
  FUN_00532068(param_1);
  return param_1;
}

// ---- FUN_00532044  @ 0x532044
void * FUN_00532044(void *param_1)

{
  FUN_0053201c();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_00532058  @ 0x532058
void FUN_00532058(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_00532058_1_00924ed0;
  return;
}

// ---- FUN_00532068  @ 0x532068
void FUN_00532068(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_00532068_1_00924ef0;
  return;
}

// ---- FUN_005320a8  @ 0x5320a8
int FUN_005320a8(int param_1,undefined4 param_2,undefined4 param_3)

{
  int iVar1;
  longlong lVar2;
  
  while( true ) {
    if (*(int *)(param_1 + 8) < 1) {
      return 0;
    }
    iVar1 = (**(code **)(*(int *)**(undefined4 **)(param_1 + 4) + 8))
                      ((int *)**(undefined4 **)(param_1 + 4),param_2,param_3);
    if (iVar1 != 0) break;
    lVar2 = (**(code **)(*(int *)**(undefined4 **)(param_1 + 4) + 0x14))();
    *(int *)(param_1 + 4) = *(int *)(param_1 + 4) + 4;
    *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + -1;
    *(longlong *)(param_1 + 0x10) = lVar2 + *(longlong *)(param_1 + 0x10);
  }
  return iVar1;
}

// ---- FUN_005320f4  @ 0x5320f4
int FUN_005320f4(int param_1,int param_2)

{
  int iVar1;
  int iVar2;
  longlong lVar3;
  
  while( true ) {
    if (*(int *)(param_1 + 8) < 1) {
      return 0;
    }
    iVar1 = (**(code **)(*(int *)**(undefined4 **)(param_1 + 4) + 0x14))();
    iVar2 = (**(code **)(*(int *)**(undefined4 **)(param_1 + 4) + 0x10))
                      ((int *)**(undefined4 **)(param_1 + 4),param_2);
    if (iVar2 != 0) break;
    lVar3 = (**(code **)(*(int *)**(undefined4 **)(param_1 + 4) + 0x14))();
    param_2 = (iVar1 + param_2) - (int)lVar3;
    *(longlong *)(param_1 + 0x10) = lVar3 + *(longlong *)(param_1 + 0x10);
    *(int *)(param_1 + 4) = *(int *)(param_1 + 4) + 4;
    *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + -1;
  }
  return iVar2;
}

// ---- FUN_00532146  @ 0x532146
void FUN_00532146(int param_1,uint param_2,undefined4 param_3,undefined4 param_4)

{
  code *pcVar1;
  int iVar2;
  bool bVar3;
  
  iVar2 = (int)param_2 >> 0x1f;
  pcVar1 = *(code **)(**(int **)(param_1 + 4) + 0xc);
  if (*(int *)(param_1 + 0xc) < 0) {
    (*pcVar1)(*(int **)(param_1 + 4),param_2 - *(int *)(param_1 + 8),*(int *)(param_1 + 8),pcVar1,
              param_4);
  }
  else {
    (*pcVar1)();
    bVar3 = CARRY4(param_2,*(uint *)(param_1 + 8));
    param_2 = param_2 + *(uint *)(param_1 + 8);
    iVar2 = iVar2 + *(int *)(param_1 + 0xc) + (uint)bVar3;
  }
  *(uint *)(param_1 + 8) = param_2;
  *(int *)(param_1 + 0xc) = iVar2;
  return;
}

// ---- FUN_0053217a  @ 0x53217a
int FUN_0053217a(int param_1,uint param_2)

{
  uint uVar1;
  int iVar2;
  int iVar3;
  
  iVar3 = (int)param_2 >> 0x1f;
  uVar1 = *(uint *)(param_1 + 8);
  iVar2 = *(int *)(param_1 + 0xc);
  if ((int)((iVar2 - iVar3) - (uint)(uVar1 < param_2)) < 0 ==
      (SBORROW4(iVar2,iVar3) != SBORROW4(iVar2 - iVar3,(uint)(uVar1 < param_2)))) {
    iVar2 = (**(code **)(**(int **)(param_1 + 4) + 0x10))();
    if (iVar2 != 0) {
      uVar1 = *(uint *)(param_1 + 8);
      *(uint *)(param_1 + 8) = uVar1 - param_2;
      *(uint *)(param_1 + 0xc) = (*(int *)(param_1 + 0xc) - iVar3) - (uint)(uVar1 < param_2);
      return iVar2;
    }
  }
  else if (-1 < iVar2) {
    (**(code **)(**(int **)(param_1 + 4) + 0x10))(*(int **)(param_1 + 4),uVar1);
    *(undefined4 *)(param_1 + 8) = 0;
    *(undefined4 *)(param_1 + 0xc) = 0;
  }
  return 0;
}

// ---- FUN_005321c8  @ 0x5321c8
undefined4 * FUN_005321c8(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_005321c8_1_00924f80;
  FUN_00532058();
  return param_1;
}

// ---- FUN_005321e0  @ 0x5321e0
undefined4 * FUN_005321e0(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_005321e0_1_00924f40;
  if ((int)param_1[3] < 0) {
    (**(code **)(*(int *)param_1[1] + 0xc))((int *)param_1[1],-param_1[2]);
  }
  FUN_00532058(param_1);
  return param_1;
}

// ---- FUN_00532210  @ 0x532210
void * FUN_00532210(void *param_1)

{
  FUN_005321c8();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_00532234  @ 0x532234
undefined4 * FUN_00532234(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_00532234_1_00924fa0;
  FUN_00532a98();
  return param_1;
}

// ---- FUN_0053224c  @ 0x53224c
void * FUN_0053224c(void *param_1)

{
  FUN_00532234();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0053225e  @ 0x53225e
int FUN_0053225e(int param_1)

{
  int iVar1;
  int *piVar2;
  
  do {
    iVar1 = close(param_1);
    if (-1 < iVar1) {
      return iVar1;
    }
    piVar2 = (int *)__errno();
  } while (*piVar2 == 4);
  return iVar1;
}

// ---- FUN_0053227c  @ 0x53227c
ssize_t FUN_0053227c(int param_1,void *param_2,size_t param_3)

{
  undefined4 uVar1;
  ssize_t sVar2;
  int *piVar3;
  undefined4 *puVar4;
  undefined1 auStack_2c [4];
  undefined1 auStack_28 [20];
  
  if (*(char *)(param_1 + 9) != '\0') {
    FUN_0052f7f0(auStack_28,3,
                 "/builddata/pulse-data/agents/hpya5.eem/recipes/816348608/base/googleclient/third_party/protobuf/files/src/google/protobuf/io/zero_copy_stream_impl.cc"
                 ,0x8a);
    uVar1 = FUN_0052f6be(auStack_28,"CHECK failed: !is_closed_: ");
    FUN_0052f9d4(auStack_2c,uVar1);
    FUN_0052f808(auStack_28);
  }
  do {
    sVar2 = read(*(int *)(param_1 + 4),param_2,param_3);
    if (-1 < sVar2) {
      return sVar2;
    }
    piVar3 = (int *)__errno();
  } while (*piVar3 == 4);
  puVar4 = (undefined4 *)__errno();
  *(undefined4 *)(param_1 + 0xc) = *puVar4;
  return sVar2;
}

// ---- FUN_005322ec  @ 0x5322ec
__off_t FUN_005322ec(int param_1,__off_t param_2)

{
  undefined4 uVar1;
  __off_t _Var2;
  undefined1 auStack_24 [4];
  undefined1 auStack_20 [16];
  
  if (*(char *)(param_1 + 9) != '\0') {
    FUN_0052f7f0(auStack_20,3,
                 "/builddata/pulse-data/agents/hpya5.eem/recipes/816348608/base/googleclient/third_party/protobuf/files/src/google/protobuf/io/zero_copy_stream_impl.cc"
                 ,0x9a);
    uVar1 = FUN_0052f6be(auStack_20,"CHECK failed: !is_closed_: ");
    FUN_0052f9d4(auStack_24,uVar1);
    FUN_0052f808(auStack_20);
  }
  if ((*(char *)(param_1 + 0x10) != '\0') ||
     (_Var2 = lseek(*(int *)(param_1 + 4),param_2,1), _Var2 == -1)) {
    *(undefined1 *)(param_1 + 0x10) = 1;
    param_2 = FUN_00532aa8(param_1,param_2);
  }
  return param_2;
}

// ---- FUN_0053235c  @ 0x53235c
undefined4 * FUN_0053235c(undefined4 *param_1)

{
  *param_1 = &DAT_00924f10;
  FUN_00532af8();
  return param_1;
}

// ---- FUN_00532374  @ 0x532374
void * FUN_00532374(void *param_1)

{
  FUN_0053235c();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_00532388  @ 0x532388
undefined4 FUN_00532388(int param_1,int param_2,int param_3)

{
  undefined4 uVar1;
  ssize_t sVar2;
  int *piVar3;
  undefined4 *puVar4;
  int iVar5;
  undefined1 auStack_34 [4];
  undefined1 auStack_30 [20];
  
  if (*(char *)(param_1 + 9) != '\0') {
    FUN_0052f7f0(auStack_30,3,
                 "/builddata/pulse-data/agents/hpya5.eem/recipes/816348608/base/googleclient/third_party/protobuf/files/src/google/protobuf/io/zero_copy_stream_impl.cc"
                 ,0xed);
    uVar1 = FUN_0052f6be(auStack_30,"CHECK failed: !is_closed_: ");
    FUN_0052f9d4(auStack_34,uVar1);
    FUN_0052f808(auStack_30);
  }
  iVar5 = 0;
  do {
    if (param_3 <= iVar5) {
      return 1;
    }
    while( true ) {
      sVar2 = write(*(int *)(param_1 + 4),(void *)(param_2 + iVar5),param_3 - iVar5);
      if (-1 < sVar2) break;
      piVar3 = (int *)__errno();
      if (*piVar3 != 4) {
        puVar4 = (undefined4 *)__errno();
        *(undefined4 *)(param_1 + 0xc) = *puVar4;
        return 0;
      }
    }
    if (sVar2 == 0) {
      return 0;
    }
    iVar5 = iVar5 + sVar2;
  } while( true );
}

// ---- FUN_00532414  @ 0x532414
int FUN_00532414(int param_1)

{
  int iVar1;
  int *piVar2;
  uint uVar3;
  
  FUN_007a5c24(*(undefined4 *)(param_1 + 4));
  piVar2 = *(int **)(param_1 + 4);
  iVar1 = piVar2[1];
  if ((iVar1 == 0) &&
     (uVar3 = *(uint *)((int)piVar2 + *(int *)(*piVar2 + -0xc) + 0x14), (uVar3 & 5) != 0)) {
    if ((uVar3 & 2) == 0) {
      iVar1 = -1;
    }
    else {
      iVar1 = 0;
    }
  }
  return iVar1;
}

// ---- FUN_005324c6  @ 0x5324c6
longlong FUN_005324c6(int param_1)

{
  code *pcVar1;
  longlong lVar2;
  
  pcVar1 = *(code **)(**(int **)(param_1 + 4) + 0x14);
  if (*(int *)(param_1 + 0xc) < 0) {
    lVar2 = (*pcVar1)();
    return lVar2 + *(longlong *)(param_1 + 8);
  }
  lVar2 = (*pcVar1)();
  return lVar2;
}

// ---- FUN_005324f0  @ 0x5324f0
void FUN_005324f0(int param_1)

{
  undefined4 uVar1;
  undefined1 auStack_1c [4];
  undefined1 auStack_18 [16];
  
  if (*(int *)(param_1 + 8) < 1) {
    FUN_0052f7f0(auStack_18,2,
                 "/builddata/pulse-data/agents/hpya5.eem/recipes/816348608/base/googleclient/third_party/protobuf/files/src/google/protobuf/io/zero_copy_stream_impl.cc"
                 ,0x179);
    uVar1 = FUN_0052f6be(auStack_18,"Can\'t BackUp() after failed Next().");
    FUN_0052f9d4(auStack_1c,uVar1);
    FUN_0052f808(auStack_18);
  }
  else {
    (**(code **)(*(int *)**(undefined4 **)(param_1 + 4) + 0xc))();
  }
  return;
}

// ---- FUN_00532564  @ 0x532564
bool FUN_00532564(int param_1)

{
  undefined4 uVar1;
  int iVar2;
  undefined4 *puVar3;
  undefined1 auStack_24 [4];
  undefined1 auStack_20 [20];
  
  if (*(char *)(param_1 + 9) != '\0') {
    FUN_0052f7f0(auStack_20,3,
                 "/builddata/pulse-data/agents/hpya5.eem/recipes/816348608/base/googleclient/third_party/protobuf/files/src/google/protobuf/io/zero_copy_stream_impl.cc"
                 ,0x7b);
    uVar1 = FUN_0052f6be(auStack_20,"CHECK failed: !is_closed_: ");
    FUN_0052f9d4(auStack_24,uVar1);
    FUN_0052f808(auStack_20);
  }
  *(undefined1 *)(param_1 + 9) = 1;
  iVar2 = FUN_0053225e(*(undefined4 *)(param_1 + 4));
  if (iVar2 != 0) {
    puVar3 = (undefined4 *)__errno();
    *(undefined4 *)(param_1 + 0xc) = *puVar3;
  }
  return iVar2 == 0;
}

// ---- FUN_005325d0  @ 0x5325d0
undefined4 * FUN_005325d0(undefined4 *param_1)

{
  int iVar1;
  undefined4 uVar2;
  char *pcVar3;
  undefined1 auStack_24 [4];
  undefined1 auStack_20 [16];
  
  *param_1 = &PTR_FUN_005325d0_1_00925018;
  if ((*(char *)(param_1 + 2) != '\0') && (iVar1 = FUN_00532564(), iVar1 == 0)) {
    FUN_0052f7f0(auStack_20,2,
                 "/builddata/pulse-data/agents/hpya5.eem/recipes/816348608/base/googleclient/third_party/protobuf/files/src/google/protobuf/io/zero_copy_stream_impl.cc"
                 ,0x75);
    uVar2 = FUN_0052f6be(auStack_20,"close() failed: ");
    pcVar3 = strerror(param_1[3]);
    uVar2 = FUN_0052f6be(uVar2,pcVar3);
    FUN_0052f9d4(auStack_24,uVar2);
    FUN_0052f808(auStack_20);
  }
  FUN_00532a98(param_1);
  return param_1;
}

// ---- FUN_005326a4  @ 0x5326a4
bool FUN_005326a4(int param_1)

{
  undefined4 uVar1;
  int iVar2;
  undefined4 *puVar3;
  undefined1 auStack_24 [4];
  undefined1 auStack_20 [20];
  
  if (*(char *)(param_1 + 9) != '\0') {
    FUN_0052f7f0(auStack_20,3,
                 "/builddata/pulse-data/agents/hpya5.eem/recipes/816348608/base/googleclient/third_party/protobuf/files/src/google/protobuf/io/zero_copy_stream_impl.cc"
                 ,0xdd);
    uVar1 = FUN_0052f6be(auStack_20,"CHECK failed: !is_closed_: ");
    FUN_0052f9d4(auStack_24,uVar1);
    FUN_0052f808(auStack_20);
  }
  *(undefined1 *)(param_1 + 9) = 1;
  iVar2 = FUN_0053225e(*(undefined4 *)(param_1 + 4));
  if (iVar2 != 0) {
    puVar3 = (undefined4 *)__errno();
    *(undefined4 *)(param_1 + 0xc) = *puVar3;
  }
  return iVar2 == 0;
}

// ---- FUN_00532724  @ 0x532724
undefined4 * FUN_00532724(undefined4 *param_1)

{
  int iVar1;
  undefined4 uVar2;
  char *pcVar3;
  undefined1 auStack_24 [4];
  undefined1 auStack_20 [16];
  
  *param_1 = &DAT_00924f28;
  if ((*(char *)(param_1 + 2) != '\0') && (iVar1 = FUN_005326a4(), iVar1 == 0)) {
    FUN_0052f7f0(auStack_20,2,
                 "/builddata/pulse-data/agents/hpya5.eem/recipes/816348608/base/googleclient/third_party/protobuf/files/src/google/protobuf/io/zero_copy_stream_impl.cc"
                 ,0xd7);
    uVar2 = FUN_0052f6be(auStack_20,"close() failed: ");
    pcVar3 = strerror(param_1[3]);
    uVar2 = FUN_0052f6be(uVar2,pcVar3);
    FUN_0052f9d4(auStack_24,uVar2);
    FUN_0052f808(auStack_20);
  }
  FUN_00532af8(param_1);
  return param_1;
}

// ---- FUN_005328c4  @ 0x5328c4
undefined4 * FUN_005328c4(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_005328c4_1_00924fd8;
  FUN_005330fc(param_1 + 6);
  FUN_005325d0(param_1 + 1);
  FUN_00532058(param_1);
  return param_1;
}

// ---- FUN_005328ec  @ 0x5328ec
void * FUN_005328ec(void *param_1)

{
  FUN_005328c4();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_00532900  @ 0x532900
undefined4 * FUN_00532900(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_00532900_1_00924f60;
  FUN_005330fc(param_1 + 4);
  FUN_00532234(param_1 + 1);
  FUN_00532058(param_1);
  return param_1;
}

// ---- FUN_00532928  @ 0x532928
void * FUN_00532928(void *param_1)

{
  FUN_00532900();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0053296c  @ 0x53296c
undefined4 * FUN_0053296c(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0053296c_1_00924fb8;
  thunk_FUN_005332fe(param_1 + 6);
  FUN_00533344(param_1 + 6);
  FUN_00532724(param_1 + 1);
  FUN_00532068(param_1);
  return param_1;
}

// ---- FUN_0053299c  @ 0x53299c
void * FUN_0053299c(void *param_1)

{
  FUN_0053296c();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_005329b0  @ 0x5329b0
undefined4 * FUN_005329b0(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_005329b0_1_00924ff8;
  thunk_FUN_005332fe(param_1 + 4);
  FUN_00533344(param_1 + 4);
  FUN_0053235c(param_1 + 1);
  FUN_00532068(param_1);
  return param_1;
}

// ---- FUN_005329e0  @ 0x5329e0
void * FUN_005329e0(void *param_1)

{
  FUN_005329b0();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_00532a16  @ 0x532a16
undefined4 FUN_00532a16(int param_1,int *param_2,undefined4 *param_3)

{
  int iVar1;
  int iVar2;
  
  iVar1 = *(int *)(param_1 + 0x10);
  if (*(int *)(param_1 + 8) <= iVar1) {
    *(undefined4 *)(param_1 + 0x14) = 0;
    return 0;
  }
  iVar2 = *(int *)(param_1 + 8) - iVar1;
  if (iVar2 < *(int *)(param_1 + 0xc)) {
    *(int *)(param_1 + 0x14) = iVar2;
  }
  else {
    *(int *)(param_1 + 0x14) = *(int *)(param_1 + 0xc);
  }
  *param_2 = iVar1 + *(int *)(param_1 + 4);
  *param_3 = *(undefined4 *)(param_1 + 0x14);
  *(int *)(param_1 + 0x10) = *(int *)(param_1 + 0x14) + *(int *)(param_1 + 0x10);
  return 1;
}

// ---- FUN_00532a98  @ 0x532a98
void FUN_00532a98(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_00532a98_1_00925090;
  return;
}

// ---- FUN_00532aa8  @ 0x532aa8
int FUN_00532aa8(int *param_1,int param_2)

{
  int iVar1;
  int iVar2;
  undefined1 auStack_1018 [4100];
  
  iVar2 = 0;
  while( true ) {
    if (param_2 <= iVar2) {
      return iVar2;
    }
    iVar1 = param_2 - iVar2;
    if (0xfff < iVar1) {
      iVar1 = 0x1000;
    }
    iVar1 = (**(code **)(*param_1 + 8))(param_1,auStack_1018,iVar1);
    if (iVar1 < 1) break;
    iVar2 = iVar2 + iVar1;
  }
  return iVar2;
}

// ---- FUN_00532ae2  @ 0x532ae2
undefined8 FUN_00532ae2(int param_1)

{
  uint uVar1;
  
  uVar1 = *(uint *)(param_1 + 0x24);
  return CONCAT44((*(int *)(param_1 + 0x14) - ((int)uVar1 >> 0x1f)) -
                  (uint)(*(uint *)(param_1 + 0x10) < uVar1),*(uint *)(param_1 + 0x10) - uVar1);
}

// ---- FUN_00532af8  @ 0x532af8
void FUN_00532af8(undefined4 *param_1)

{
  *param_1 = &DAT_009250c8;
  return;
}

// ---- FUN_00532b08  @ 0x532b08
undefined8 FUN_00532b08(int param_1)

{
  uint uVar1;
  
  uVar1 = *(uint *)(param_1 + 0x20);
  return CONCAT44(*(int *)(param_1 + 0x14) +
                  ((int)uVar1 >> 0x1f) + (uint)CARRY4(*(uint *)(param_1 + 0x10),uVar1),
                  *(uint *)(param_1 + 0x10) + uVar1);
}

// ---- FUN_00532b1c  @ 0x532b1c
undefined4 FUN_00532b1c(int param_1,int *param_2,int *param_3,undefined4 param_4)

{
  uint uVar1;
  int iVar2;
  uint uVar3;
  
  iVar2 = **(int **)(param_1 + 4);
  uVar3 = *(uint *)(iVar2 + -0xc);
  uVar1 = *(uint *)(iVar2 + -8);
  if ((uVar1 <= uVar3) && (uVar1 = uVar3 * 2, (int)uVar1 < 0x10)) {
    uVar1 = 0x10;
  }
  FUN_007c6404(*(int **)(param_1 + 4),uVar1,param_3,iVar2,param_4);
  if (*(int *)(**(int **)(param_1 + 4) + -0xc) == 0) {
    iVar2 = 0;
  }
  else {
    iVar2 = FUN_007c5a74();
  }
  *param_2 = iVar2 + uVar3;
  *param_3 = *(int *)(**(int **)(param_1 + 4) + -0xc) - uVar3;
  return 1;
}

// ---- FUN_00532b68  @ 0x532b68
undefined4 * FUN_00532b68(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_00532b68_1_009250a8;
  FUN_00532058();
  return param_1;
}

// ---- FUN_00532b80  @ 0x532b80
void * FUN_00532b80(void *param_1)

{
  FUN_00532b68();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_00532b94  @ 0x532b94
undefined4 * FUN_00532b94(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_00532a98_1_00925090;
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_005330a4  @ 0x5330a4
undefined4 * FUN_005330a4(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_005330a4_1_00925050;
  FUN_00532068();
  return param_1;
}

// ---- FUN_005330bc  @ 0x5330bc
void * FUN_005330bc(void *param_1)

{
  FUN_005330a4();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_005330d0  @ 0x5330d0
undefined4 * FUN_005330d0(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_005330d0_1_009250e0;
  FUN_00532068();
  return param_1;
}

// ---- FUN_005330e8  @ 0x5330e8
void * FUN_005330e8(void *param_1)

{
  FUN_005330d0();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_005330fc  @ 0x5330fc
undefined4 * FUN_005330fc(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_005330fc_1_00925070;
  if ((*(char *)(param_1 + 2) != '\0') && ((int *)param_1[1] != (int *)0x0)) {
    (**(code **)(*(int *)param_1[1] + 4))();
  }
  if ((void *)param_1[6] != (void *)0x0) {
    operator_delete__((void *)param_1[6]);
  }
  FUN_00532058(param_1);
  return param_1;
}

// ---- FUN_0053312c  @ 0x53312c
void * FUN_0053312c(void *param_1)

{
  FUN_005330fc();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_00533164  @ 0x533164
void FUN_00533164(undefined4 *param_1,undefined4 param_2,int param_3,int param_4)

{
  if (param_4 < 1) {
    param_4 = param_3;
  }
  param_1[3] = param_4;
  param_1[1] = param_2;
  param_1[2] = param_3;
  *param_1 = &PTR_FUN_005330a4_1_00925050;
  param_1[4] = 0;
  param_1[5] = 0;
  return;
}

// ---- FUN_005331f8  @ 0x5331f8
void FUN_005331f8(undefined4 *param_1,void *param_2)

{
  void *pvVar1;
  
  pvVar1 = (void *)*param_1;
  if (param_2 != pvVar1) {
    if (pvVar1 != (void *)0x0) {
      operator_delete__(pvVar1);
    }
    *param_1 = param_2;
  }
  return;
}

// ---- FUN_0053320e  @ 0x53320e
void FUN_0053320e(int param_1)

{
  void *pvVar1;
  
  if (*(int *)(param_1 + 0x18) == 0) {
    pvVar1 = operator_new__(*(uint *)(param_1 + 0x1c));
    FUN_005331f8(param_1 + 0x18,pvVar1);
    return;
  }
  return;
}

// ---- FUN_0053322c  @ 0x53322c
void FUN_0053322c(int param_1)

{
  undefined4 uVar1;
  undefined1 auStack_24 [4];
  undefined1 auStack_20 [20];
  
  if (*(int *)(param_1 + 0x24) != 0) {
    FUN_0052f7f0(auStack_20,3,
                 "/builddata/pulse-data/agents/hpya5.eem/recipes/816348608/base/googleclient/third_party/protobuf/files/src/google/protobuf/io/zero_copy_stream_impl_lite.cc"
                 ,0x12f);
    uVar1 = FUN_0052f6be(auStack_20,"CHECK failed: (backup_bytes_) == (0): ");
    FUN_0052f9d4(auStack_24,uVar1);
    FUN_0052f808(auStack_20);
  }
  *(undefined4 *)(param_1 + 0x20) = 0;
  FUN_005331f8(param_1 + 0x18);
  return;
}

// ---- FUN_005332f4  @ 0x5332f4
void FUN_005332f4(int param_1)

{
  *(undefined4 *)(param_1 + 0x20) = 0;
  FUN_005331f8();
  return;
}

// ---- FUN_005332fe  @ 0x5332fe
int FUN_005332fe(int param_1)

{
  int iVar1;
  uint uVar2;
  uint uVar3;
  
  if (*(char *)(param_1 + 9) == '\0') {
    if (*(int *)(param_1 + 0x20) == 0) {
      iVar1 = 1;
    }
    else {
      iVar1 = (**(code **)(**(int **)(param_1 + 4) + 8))
                        (*(int **)(param_1 + 4),*(undefined4 *)(param_1 + 0x18));
      if (iVar1 == 0) {
        *(undefined1 *)(param_1 + 9) = 1;
        FUN_005332f4(param_1);
      }
      else {
        uVar2 = *(uint *)(param_1 + 0x20);
        uVar3 = *(uint *)(param_1 + 0x10);
        *(undefined4 *)(param_1 + 0x20) = 0;
        *(uint *)(param_1 + 0x10) = uVar3 + uVar2;
        *(uint *)(param_1 + 0x14) =
             *(int *)(param_1 + 0x14) + ((int)uVar2 >> 0x1f) + (uint)CARRY4(uVar3,uVar2);
      }
    }
  }
  else {
    iVar1 = 0;
  }
  return iVar1;
}

// ---- FUN_00533344  @ 0x533344
undefined4 * FUN_00533344(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_00533344_1_00925030;
  FUN_005332fe();
  if ((*(char *)(param_1 + 2) != '\0') && ((int *)param_1[1] != (int *)0x0)) {
    (**(code **)(*(int *)param_1[1] + 4))();
  }
  if ((void *)param_1[6] != (void *)0x0) {
    operator_delete__((void *)param_1[6]);
  }
  FUN_00532068(param_1);
  return param_1;
}

// ---- FUN_00533378  @ 0x533378
void * FUN_00533378(void *param_1)

{
  FUN_00533344();
  operator_delete(param_1);
  return param_1;
}

// ---- thunk_FUN_005332fe  @ 0x53338a
int thunk_FUN_005332fe(int param_1)

{
  int iVar1;
  uint uVar2;
  uint uVar3;
  
  if (*(char *)(param_1 + 9) == '\0') {
    if (*(int *)(param_1 + 0x20) == 0) {
      iVar1 = 1;
    }
    else {
      iVar1 = (**(code **)(**(int **)(param_1 + 4) + 8))
                        (*(int **)(param_1 + 4),*(undefined4 *)(param_1 + 0x18));
      if (iVar1 == 0) {
        *(undefined1 *)(param_1 + 9) = 1;
        FUN_005332f4(param_1);
      }
      else {
        uVar2 = *(uint *)(param_1 + 0x20);
        uVar3 = *(uint *)(param_1 + 0x10);
        *(undefined4 *)(param_1 + 0x20) = 0;
        *(uint *)(param_1 + 0x10) = uVar3 + uVar2;
        *(uint *)(param_1 + 0x14) =
             *(int *)(param_1 + 0x14) + ((int)uVar2 >> 0x1f) + (uint)CARRY4(uVar3,uVar2);
      }
    }
  }
  else {
    iVar1 = 0;
  }
  return iVar1;
}

// ---- FUN_0053338e  @ 0x53338e
void FUN_0053338e(int param_1)

{
  void *pvVar1;
  
  if (*(int *)(param_1 + 0x18) == 0) {
    pvVar1 = operator_new__(*(uint *)(param_1 + 0x1c));
    FUN_005331f8(param_1 + 0x18,pvVar1);
    return;
  }
  return;
}

// ---- FUN_005333ac  @ 0x5333ac
undefined4 FUN_005333ac(int param_1,int *param_2,int *param_3)

{
  int iVar1;
  
  if ((*(int *)(param_1 + 0x20) == *(int *)(param_1 + 0x1c)) && (iVar1 = FUN_005332fe(), iVar1 == 0)
     ) {
    return 0;
  }
  FUN_0053338e(param_1);
  *param_2 = *(int *)(param_1 + 0x20) + *(int *)(param_1 + 0x18);
  *param_3 = *(int *)(param_1 + 0x1c) - *(int *)(param_1 + 0x20);
  *(undefined4 *)(param_1 + 0x20) = *(undefined4 *)(param_1 + 0x1c);
  return 1;
}

// ---- FUN_0053340c  @ 0x53340c
void FUN_0053340c(void *param_1)

{
  if (param_1 != (void *)0x0) {
    operator_delete(param_1);
    return;
  }
  return;
}

// ---- FUN_00533414  @ 0x533414
void FUN_00533414(int *param_1)

{
  if (param_1 != (int *)0x0) {
    (**(code **)(*param_1 + 4))();
  }
  return;
}

// ---- FUN_00533420  @ 0x533420
void FUN_00533420(int *param_1)

{
  if (param_1 != (int *)0x0) {
    (**(code **)(*param_1 + 4))();
  }
  return;
}

// ---- FUN_0053342c  @ 0x53342c
undefined4 * FUN_0053342c(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0053342c_1_00925228;
  std::_Function_base::~_Function_base((_Function_base *)(param_1 + 1));
  *param_1 = &PTR_LAB_005333e4_1_00925210;
  return param_1;
}

// ---- FUN_00533454  @ 0x533454
void * FUN_00533454(void *param_1)

{
  FUN_0053342c();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_00533468  @ 0x533468
undefined4 * FUN_00533468(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_00533468_1_00925100;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(param_1 + 0xb));
  FUN_005107b4(param_1);
  return param_1;
}

// ---- FUN_00533488  @ 0x533488
void * FUN_00533488(void *param_1)

{
  FUN_00533468();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0053349c  @ 0x53349c
undefined4 * FUN_0053349c(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0053349c_1_00925158;
  FUN_0050812e(param_1 + 0xc);
  FUN_00533468(param_1);
  return param_1;
}

// ---- FUN_005334bc  @ 0x5334bc
void * FUN_005334bc(void *param_1)

{
  FUN_0053349c();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_005334d0  @ 0x5334d0
undefined4 * FUN_005334d0(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_005334d0_1_009251b0;
  FUN_0053349c();
  return param_1;
}

// ---- FUN_005334e8  @ 0x5334e8
void * FUN_005334e8(void *param_1)

{
  FUN_005334d0();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_005334fc  @ 0x5334fc
undefined4 * FUN_005334fc(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_005334fc_1_00925240;
  FUN_005334d0();
  return param_1;
}

// ---- FUN_00533514  @ 0x533514
void * FUN_00533514(void *param_1)

{
  FUN_005334fc();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_00533528  @ 0x533528
undefined4 * FUN_00533528(undefined4 *param_1,undefined4 *param_2)

{
  undefined4 uVar1;
  undefined4 *puStack_1c;
  
  uVar1 = *param_2;
  puStack_1c = param_2;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&puStack_1c,
             (__shared_count *)(param_2 + 1));
  param_1[1] = 0;
  param_1[2] = 0;
  *param_1 = &PTR_FUN_005107b4_1_00924458;
  param_1[3] = uVar1;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(param_1 + 4),
             (__shared_count *)&puStack_1c);
  param_1[8] = 0;
  param_1[6] = 0;
  param_1[7] = 0;
  param_1[8] = 0;
  param_1[9] = 0;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&puStack_1c);
  *param_1 = &PTR_FUN_00533468_1_00925100;
  param_1[10] = *param_2;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(param_1 + 0xb),
             (__shared_count *)(param_2 + 1));
  return param_1;
}

// ---- FUN_005335e6  @ 0x5335e6
int FUN_005335e6(int param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  *(undefined4 *)(param_1 + 8) = 0;
  if (*(int *)(param_2 + 8) != 0) {
    *(undefined4 *)(param_1 + 0xc) = *(undefined4 *)(param_2 + 0xc);
    *(undefined4 *)(param_1 + 8) = *(undefined4 *)(param_2 + 8);
    (**(code **)(param_2 + 8))(param_1,param_2,2,*(code **)(param_2 + 8),param_4);
  }
  std::function<void(gpg::AchievementManager::FetchAllResponse_const&)>::function
            ((function<void(gpg::AchievementManager::FetchAllResponse_const&)> *)(param_1 + 0x10),
             (function *)(param_2 + 0x10));
  return param_1;
}

// ---- FUN_00533620  @ 0x533620
undefined4 *
FUN_00533620(undefined4 *param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_7c [4];
  undefined4 local_78;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_74 [4];
  undefined4 local_70;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_6c [4];
  undefined1 auStack_68 [32];
  undefined1 auStack_48 [36];
  
  uVar1 = *param_2;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_7c,(__shared_count *)(param_2 + 1));
  FUN_005335e6(auStack_68,param_3);
  local_78 = uVar1;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_74,(__shared_count *)a_Stack_7c);
  FUN_005335e6(auStack_48,auStack_68);
  local_70 = local_78;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_6c,(__shared_count *)a_Stack_74);
  FUN_00533528(param_1,&local_70);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_6c);
  *param_1 = &PTR_FUN_0053349c_1_00925158;
  FUN_005335e6(param_1 + 0xc,auStack_48);
  FUN_0050812e(auStack_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_74);
  *param_1 = &PTR_FUN_005334d0_1_009251b0;
  FUN_0050812e(auStack_68);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_7c);
  param_1[0x14] = param_4;
  *param_1 = &PTR_FUN_005334fc_1_00925240;
  return param_1;
}

// ---- FUN_00533700  @ 0x533700
int FUN_00533700(int param_1,int param_2)

{
  *(undefined4 *)(param_1 + 8) = 0;
  if (*(int *)(param_2 + 8) != 0) {
    *(undefined4 *)(param_1 + 0xc) = *(undefined4 *)(param_2 + 0xc);
    *(undefined4 *)(param_1 + 8) = *(undefined4 *)(param_2 + 8);
    (**(code **)(param_2 + 8))(param_1,param_2,2);
  }
  return param_1;
}

// ---- FUN_0053372c  @ 0x53372c
undefined4 * FUN_0053372c(undefined4 *param_1,_Any_data *param_2)

{
  undefined4 uVar1;
  
  *param_1 = &PTR_FUN_0053342c_1_00925228;
  param_1[3] = 0;
  std::swap<std::_Any_data>(param_2,(_Any_data *)(param_1 + 1));
  uVar1 = *(undefined4 *)(param_2 + 8);
  *(undefined4 *)(param_2 + 8) = param_1[3];
  param_1[3] = uVar1;
  uVar1 = *(undefined4 *)(param_2 + 0xc);
  *(undefined4 *)(param_2 + 0xc) = param_1[4];
  param_1[4] = uVar1;
  return param_1;
}

// ---- FUN_00533760  @ 0x533760
void * FUN_00533760(int param_1)

{
  void *pvVar1;
  _Function_base a_Stack_20 [20];
  
  FUN_00533700(a_Stack_20,param_1 + 4);
  pvVar1 = operator_new(0x14);
  FUN_0053372c(pvVar1,a_Stack_20);
  std::_Function_base::~_Function_base(a_Stack_20);
  return pvVar1;
}

// ---- FUN_005338ce  @ 0x5338ce
void FUN_005338ce(int *param_1,undefined4 param_2)

{
  int iVar1;
  undefined4 local_28;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  
  iVar1 = FUN_00548c48(param_2);
  if (iVar1 == 0) {
    (**(code **)(*param_1 + 0x50))(&local_28,param_1,param_2);
    FUN_00508d64(param_1 + 0xc,&local_28);
  }
  else {
    local_28 = 0xfffffffe;
    local_24 = 0;
    local_20 = 0;
    local_1c = 0;
    FUN_00508d64(param_1 + 0xc,&local_28);
  }
  std::vector<gpg::Achievement,std::allocator<gpg::Achievement>>::~vector
            ((vector<gpg::Achievement,std::allocator<gpg::Achievement>> *)&local_24);
  return;
}

// ---- FUN_00533958  @ 0x533958
undefined4
FUN_00533958(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 *param_4)

{
  undefined4 uVar1;
  void *pvVar2;
  void *local_64;
  undefined4 local_60;
  undefined4 local_5c;
  undefined1 auStack_58 [16];
  undefined4 *local_48 [2];
  code *local_40;
  undefined4 local_3c;
  _Function_base a_Stack_38 [20];
  
  FUN_00545074(auStack_58);
  local_60 = *param_4;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_5c,(__shared_count *)(param_4 + 1)
            );
  local_40 = (code *)0x0;
  local_48[0] = operator_new(8);
  uVar1 = local_5c;
  *local_48[0] = local_60;
  local_48[0][1] = 0;
  local_60 = 0;
  local_5c = 0;
  local_48[0][1] = uVar1;
  local_3c = 0x533e25;
  local_40 = (code *)0x5335a1;
  FUN_00533700(a_Stack_38,(_Function_base *)local_48);
  pvVar2 = operator_new(0x14);
  FUN_0053372c(pvVar2,a_Stack_38);
  local_64 = pvVar2;
  FUN_005453a8(auStack_58,param_2,param_3,&local_64);
  if (local_64 != (void *)0x0) {
    FUN_00533414();
  }
  std::_Function_base::~_Function_base(a_Stack_38);
  std::_Function_base::~_Function_base((_Function_base *)local_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_5c);
  FUN_00548b30(param_1,auStack_58);
  FUN_00548ab0(auStack_58);
  return param_1;
}

// ---- FUN_00533a38  @ 0x533a38
undefined4 FUN_00533a38(undefined4 param_1,int param_2)

{
  bool bVar1;
  int extraout_r1;
  int *piVar2;
  int *extraout_r2;
  int extraout_r3;
  int iVar3;
  int *unaff_r4;
  int iVar4;
  int local_34;
  int local_30;
  undefined4 local_2c;
  int local_28;
  undefined4 local_24;
  
  local_34 = *(int *)(param_2 + 8);
  if (local_34 == 0) goto LAB_00533a54;
  piVar2 = (int *)(local_34 + 4);
  unaff_r4 = &local_28;
  local_28 = *(int *)(local_34 + 4);
  while( true ) {
    iVar3 = local_28;
    if (local_28 == 0) {
LAB_00533a54:
      std::__throw_bad_weak_ptr();
      param_2 = extraout_r1;
      piVar2 = extraout_r2;
      iVar3 = extraout_r3;
    }
    DataMemoryBarrier(0x1f);
    ExclusiveAccess(piVar2);
    iVar4 = *piVar2;
    bVar1 = false;
    if (iVar4 == *unaff_r4) {
      bVar1 = (bool)hasExclusiveAccess(piVar2);
      if (bVar1) {
        *piVar2 = iVar3 + 1;
      }
      DataMemoryBarrier(0x1f);
    }
    if (bVar1) break;
    *unaff_r4 = iVar4;
  }
  iVar3 = *(int *)(param_2 + 4);
  local_28 = iVar3;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(unaff_r4 + 1),
             (__shared_count *)&local_34);
  local_2c = local_24;
  local_30 = local_28;
  local_28 = 0;
  local_24 = 0;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(unaff_r4 + 1));
  FUN_00533958(unaff_r4,0,0x5463d1,&local_30,iVar3);
  FUN_00548b30(param_1,unaff_r4);
  FUN_00548ab0(unaff_r4);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_2c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_34);
  return param_1;
}

// ---- FUN_00533af0  @ 0x533af0
void FUN_00533af0(int param_1)

{
  undefined4 uVar1;
  undefined1 auStack_48 [16];
  undefined1 auStack_38 [16];
  undefined1 auStack_28 [20];
  
  FUN_00547b10(auStack_48,&DAT_00961324,&DAT_009634a4,"Achievements",
               "Lcom/google/android/gms/games/achievement/Achievements;");
  uVar1 = FUN_00548bac(*(int *)(param_1 + 0x28) + 0xf4);
  FUN_0054968c(auStack_38,auStack_48,&DAT_00963024,&DAT_008057f6,
               "(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/common/api/PendingResult;"
               ,uVar1,*(int *)(param_1 + 0x50) == 2);
  FUN_00533a38(auStack_28,param_1);
  uVar1 = FUN_00548bac(auStack_28);
  FUN_00548d90(auStack_38,"setResultCallback",
               "(Lcom/google/android/gms/common/api/ResultCallback;)V",uVar1);
  FUN_00548ab0(auStack_28);
  FUN_00548ab0(auStack_38);
  FUN_00548ab0(auStack_48);
  return;
}

// ---- FUN_00533bb8  @ 0x533bb8
void FUN_00533bb8(int param_1,undefined4 param_2)

{
  int iVar1;
  undefined4 uVar2;
  undefined1 auStack_20 [16];
  
  iVar1 = FUN_00543484(param_2);
  if (iVar1 == -3) {
    FUN_00511920(*(undefined4 *)(param_1 + 0x28));
  }
  else if (iVar1 == -2) {
    FUN_0054968c(auStack_20,param_2,&DAT_009619a4,"getStatus",
                 "()Lcom/google/android/gms/common/api/Status;");
    uVar2 = FUN_00548d1c(auStack_20,"getStatusCode");
    FUN_00548ab0(auStack_20);
    FUN_005166ae(1,"Encountered GmsCore error with status code: %d",uVar2);
  }
  FUN_00529dec(iVar1);
  return;
}

// ---- FUN_00533c38  @ 0x533c38
FetchAllResponse * FUN_00533c38(FetchAllResponse *param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 uVar1;
  int iVar2;
  uint uVar3;
  Achievement *pAVar4;
  new_allocator<gpg::Achievement> *this;
  uint uVar5;
  undefined1 auStack_64 [4];
  undefined1 auStack_60 [4];
  shared_ptr asStack_5c [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_58 [4];
  Achievement *local_54;
  Achievement *local_50;
  Achievement *local_4c;
  undefined1 auStack_48 [16];
  undefined4 local_38;
  undefined4 local_34;
  undefined4 local_30;
  undefined4 local_2c;
  
  uVar1 = FUN_00533bb8(param_2,param_3);
  FUN_0054932c((FetchAllResponse *)&local_38,param_3,&DAT_00960ca4);
  FUN_0054968c(auStack_48,(FetchAllResponse *)&local_38,&DAT_009622a4,"getAchievements",
               "()Lcom/google/android/gms/games/achievement/AchievementBuffer;");
  FUN_00548ab0((FetchAllResponse *)&local_38);
  iVar2 = gpg::IsError(uVar1);
  local_38 = uVar1;
  if (iVar2 == 0) {
    uVar3 = FUN_00548d1c(auStack_48,"getCount");
    local_54 = (Achievement *)0x0;
    local_50 = (Achievement *)0x0;
    this = (new_allocator<gpg::Achievement> *)&local_54;
    local_4c = (Achievement *)0x0;
    if (0x1fffffff < uVar3) {
                    /* WARNING: Subroutine does not return */
      FUN_007c49e8("vector::reserve");
    }
    if (uVar3 != 0) {
      pAVar4 = operator_new(uVar3 * 8);
      std::__uninitialized_copy<false>::__uninit_copy<gpg::Achievement*,gpg::Achievement*>
                ((Achievement *)0x0,(Achievement *)0x0,pAVar4);
      std::_Destroy_aux<false>::__destroy<gpg::Achievement*>(local_54,local_50);
      FUN_0053340c(local_54);
      local_4c = pAVar4 + uVar3 * 8;
      local_50 = pAVar4;
    }
    local_54 = local_50;
    for (uVar5 = 0; uVar5 != uVar3; uVar5 = uVar5 + 1) {
      FUN_0054968c((FetchAllResponse *)&local_38,auStack_48,&DAT_00961024,&DAT_0080598d,
                   "(I)Lcom/google/android/gms/games/achievement/Achievement;",uVar5);
      FUN_007c6a60(auStack_60,&DAT_00801f93,auStack_64);
      FUN_005350bc(asStack_5c,(FetchAllResponse *)&local_38,auStack_60);
      if (local_50 == local_4c) {
        std::vector<gpg::Achievement,std::allocator<gpg::Achievement>>::
        _M_emplace_back_aux<std::shared_ptr<gpg::AchievementImpl>>
                  ((vector<gpg::Achievement,std::allocator<gpg::Achievement>> *)this,asStack_5c);
      }
      else {
        __gnu_cxx::new_allocator<gpg::Achievement>::
        construct<gpg::Achievement,std::shared_ptr<gpg::AchievementImpl>>(this,local_50,asStack_5c);
        local_50 = local_50 + 8;
      }
      std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_58);
      FUN_007c5914(auStack_60);
      FUN_00548ab0((FetchAllResponse *)&local_38);
    }
    FUN_00548de4(auStack_48,"close");
    std::vector<gpg::Achievement,std::allocator<gpg::Achievement>>::vector
              ((vector<gpg::Achievement,std::allocator<gpg::Achievement>> *)&local_34,this);
    gpg::AchievementManager::FetchAllResponse::FetchAllResponse
              (param_1,(FetchAllResponse *)&local_38);
    std::vector<gpg::Achievement,std::allocator<gpg::Achievement>>::~vector
              ((vector<gpg::Achievement,std::allocator<gpg::Achievement>> *)&local_34);
  }
  else {
    FUN_00548de4(auStack_48,"close");
    local_34 = 0;
    local_30 = 0;
    local_2c = 0;
    gpg::AchievementManager::FetchAllResponse::FetchAllResponse
              (param_1,(FetchAllResponse *)&local_38);
    this = (new_allocator<gpg::Achievement> *)&local_34;
  }
  std::vector<gpg::Achievement,std::allocator<gpg::Achievement>>::~vector
            ((vector<gpg::Achievement,std::allocator<gpg::Achievement>> *)this);
  FUN_00548ab0(auStack_48);
  return param_1;
}

// ---- FUN_00533e24  @ 0x533e24
void FUN_00533e24(undefined4 *param_1)

{
  undefined4 uVar1;
  undefined1 auStack_30 [16];
  undefined1 auStack_20 [16];
  
  param_1 = (undefined4 *)*param_1;
  FUN_00548b30(auStack_30);
  uVar1 = *param_1;
  FUN_00548b30(auStack_20,auStack_30);
  FUN_005338ce(uVar1,auStack_20);
  FUN_00548ab0(auStack_20);
  FUN_00548ab0(auStack_30);
  return;
}

// ---- FUN_00533ee2  @ 0x533ee2
void FUN_00533ee2(int *param_1)

{
  if (param_1 != (int *)0x0) {
    (**(code **)(*param_1 + 4))();
  }
  return;
}

// ---- FUN_00533eee  @ 0x533eee
void FUN_00533eee(int *param_1)

{
  if (param_1 != (int *)0x0) {
    (**(code **)(*param_1 + 4))();
  }
  return;
}

// ---- FUN_00533f3c  @ 0x533f3c
undefined4 * FUN_00533f3c(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_00533f3c_1_009252a0;
  FUN_0050818c(param_1 + 0xc);
  FUN_00533468(param_1);
  return param_1;
}

// ---- FUN_00533f5c  @ 0x533f5c
void * FUN_00533f5c(void *param_1)

{
  FUN_00533f3c();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_00533f70  @ 0x533f70
undefined4 * FUN_00533f70(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_00533f70_1_009252f8;
  FUN_00533f3c();
  return param_1;
}

// ---- FUN_00533f88  @ 0x533f88
void * FUN_00533f88(void *param_1)

{
  FUN_00533f70();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_00533f9c  @ 0x533f9c
undefined4 * FUN_00533f9c(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_00533f9c_1_00925358;
  FUN_007c5914(param_1 + 0x15);
  FUN_00533f70(param_1);
  return param_1;
}

// ---- FUN_00533fbc  @ 0x533fbc
void * FUN_00533fbc(void *param_1)

{
  FUN_00533f9c();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_00534014  @ 0x534014
int FUN_00534014(int param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  *(undefined4 *)(param_1 + 8) = 0;
  if (*(int *)(param_2 + 8) != 0) {
    *(undefined4 *)(param_1 + 0xc) = *(undefined4 *)(param_2 + 0xc);
    *(undefined4 *)(param_1 + 8) = *(undefined4 *)(param_2 + 8);
    (**(code **)(param_2 + 8))(param_1,param_2,2,*(code **)(param_2 + 8),param_4);
  }
  std::function<void(gpg::AchievementManager::FetchResponse_const&)>::function
            ((function<void(gpg::AchievementManager::FetchResponse_const&)> *)(param_1 + 0x10),
             (function *)(param_2 + 0x10));
  return param_1;
}

// ---- FUN_00534050  @ 0x534050
undefined4 *
FUN_00534050(undefined4 *param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5)

{
  undefined4 uVar1;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_7c [4];
  undefined4 local_78;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_74 [4];
  undefined4 local_70;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_6c [4];
  undefined1 auStack_68 [32];
  undefined1 auStack_48 [36];
  
  uVar1 = *param_2;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_7c,(__shared_count *)(param_2 + 1));
  FUN_00534014(auStack_68,param_3);
  local_78 = uVar1;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_74,(__shared_count *)a_Stack_7c);
  FUN_00534014(auStack_48,auStack_68);
  local_70 = local_78;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_6c,(__shared_count *)a_Stack_74);
  FUN_00533528(param_1,&local_70);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_6c);
  *param_1 = &PTR_FUN_00533f3c_1_009252a0;
  FUN_00534014(param_1 + 0xc,auStack_48);
  FUN_0050818c(auStack_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_74);
  *param_1 = &PTR_FUN_00533f70_1_009252f8;
  FUN_0050818c(auStack_68);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_7c);
  param_1[0x14] = param_4;
  *param_1 = &PTR_FUN_00533f9c_1_00925358;
  FUN_007c64e8(param_1 + 0x15,param_5);
  return param_1;
}

// ---- FUN_00534140  @ 0x534140
void FUN_00534140(int *param_1,undefined4 param_2)

{
  int iVar1;
  undefined4 local_24;
  Achievement aAStack_20 [12];
  
  iVar1 = FUN_00548c48(param_2);
  if (iVar1 == 0) {
    (**(code **)(*param_1 + 0x50))(&local_24,param_1,param_2);
    FUN_00508884(param_1 + 0xc,&local_24);
  }
  else {
    local_24 = 0xfffffffe;
    gpg::Achievement::Achievement(aAStack_20);
    FUN_00508884(param_1 + 0xc,&local_24);
  }
  gpg::Achievement::~Achievement(aAStack_20);
  return;
}

// ---- FUN_005341c8  @ 0x5341c8
undefined4
FUN_005341c8(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 *param_4)

{
  undefined4 uVar1;
  void *pvVar2;
  void *local_64;
  undefined4 local_60;
  undefined4 local_5c;
  undefined1 auStack_58 [16];
  undefined4 *local_48 [2];
  code *local_40;
  undefined4 local_3c;
  _Function_base a_Stack_38 [20];
  
  FUN_00545074(auStack_58);
  local_60 = *param_4;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_5c,(__shared_count *)(param_4 + 1)
            );
  local_40 = (code *)0x0;
  local_48[0] = operator_new(8);
  uVar1 = local_5c;
  *local_48[0] = local_60;
  local_48[0][1] = 0;
  local_60 = 0;
  local_5c = 0;
  local_48[0][1] = uVar1;
  local_3c = 0x5346cd;
  local_40 = (code *)0x533fcf;
  FUN_00533700(a_Stack_38,(_Function_base *)local_48);
  pvVar2 = operator_new(0x14);
  FUN_0053372c(pvVar2,a_Stack_38);
  local_64 = pvVar2;
  FUN_005453a8(auStack_58,param_2,param_3,&local_64);
  if (local_64 != (void *)0x0) {
    FUN_00533ee2();
  }
  std::_Function_base::~_Function_base(a_Stack_38);
  std::_Function_base::~_Function_base((_Function_base *)local_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_5c);
  FUN_00548b30(param_1,auStack_58);
  FUN_00548ab0(auStack_58);
  return param_1;
}

// ---- FUN_005342a8  @ 0x5342a8
undefined4 FUN_005342a8(undefined4 param_1,int param_2)

{
  bool bVar1;
  int extraout_r1;
  int *piVar2;
  int *extraout_r2;
  int extraout_r3;
  int iVar3;
  int *unaff_r4;
  int iVar4;
  int local_34;
  int local_30;
  undefined4 local_2c;
  int local_28;
  undefined4 local_24;
  
  local_34 = *(int *)(param_2 + 8);
  if (local_34 == 0) goto LAB_005342c4;
  piVar2 = (int *)(local_34 + 4);
  unaff_r4 = &local_28;
  local_28 = *(int *)(local_34 + 4);
  while( true ) {
    iVar3 = local_28;
    if (local_28 == 0) {
LAB_005342c4:
      std::__throw_bad_weak_ptr();
      param_2 = extraout_r1;
      piVar2 = extraout_r2;
      iVar3 = extraout_r3;
    }
    DataMemoryBarrier(0x1f);
    ExclusiveAccess(piVar2);
    iVar4 = *piVar2;
    bVar1 = false;
    if (iVar4 == *unaff_r4) {
      bVar1 = (bool)hasExclusiveAccess(piVar2);
      if (bVar1) {
        *piVar2 = iVar3 + 1;
      }
      DataMemoryBarrier(0x1f);
    }
    if (bVar1) break;
    *unaff_r4 = iVar4;
  }
  iVar3 = *(int *)(param_2 + 4);
  local_28 = iVar3;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(unaff_r4 + 1),
             (__shared_count *)&local_34);
  local_2c = local_24;
  local_30 = local_28;
  local_28 = 0;
  local_24 = 0;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(unaff_r4 + 1));
  FUN_005341c8(unaff_r4,0,0x5463d1,&local_30,iVar3);
  FUN_00548b30(param_1,unaff_r4);
  FUN_00548ab0(unaff_r4);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_2c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_34);
  return param_1;
}

// ---- FUN_00534360  @ 0x534360
void FUN_00534360(int param_1)

{
  undefined4 uVar1;
  undefined1 auStack_48 [16];
  undefined1 auStack_38 [16];
  undefined1 auStack_28 [20];
  
  FUN_00547b10(auStack_48,&DAT_00961324,&DAT_009634a4,"Achievements",
               "Lcom/google/android/gms/games/achievement/Achievements;");
  uVar1 = FUN_00548bac(*(int *)(param_1 + 0x28) + 0xf4);
  FUN_0054968c(auStack_38,auStack_48,&DAT_00963024,&DAT_008057f6,
               "(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/common/api/PendingResult;"
               ,uVar1,*(int *)(param_1 + 0x50) == 2);
  FUN_005342a8(auStack_28,param_1);
  uVar1 = FUN_00548bac(auStack_28);
  FUN_00548d90(auStack_38,"setResultCallback",
               "(Lcom/google/android/gms/common/api/ResultCallback;)V",uVar1);
  FUN_00548ab0(auStack_28);
  FUN_00548ab0(auStack_38);
  FUN_00548ab0(auStack_48);
  return;
}

// ---- FUN_00534428  @ 0x534428
void FUN_00534428(int param_1,undefined4 param_2)

{
  int iVar1;
  undefined4 uVar2;
  undefined1 auStack_20 [16];
  
  iVar1 = FUN_00543484(param_2);
  if (iVar1 == -3) {
    FUN_00511920(*(undefined4 *)(param_1 + 0x28));
  }
  else if (iVar1 == -2) {
    FUN_0054968c(auStack_20,param_2,&DAT_009619a4,"getStatus",
                 "()Lcom/google/android/gms/common/api/Status;");
    uVar2 = FUN_00548d1c(auStack_20,"getStatusCode");
    FUN_00548ab0(auStack_20);
    FUN_005166ae(1,"Encountered GmsCore error with status code: %d",uVar2);
  }
  FUN_00529dec(iVar1);
  return;
}

// ---- FUN_005344a8  @ 0x5344a8
int * FUN_005344a8(int *param_1,int param_2,undefined4 param_3)

{
  undefined4 uVar1;
  void *pvVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  int local_70;
  undefined4 local_6c;
  int local_68;
  undefined4 local_64;
  void *local_60;
  Achievement aAStack_5c [8];
  void *local_54;
  undefined4 local_50 [2];
  undefined1 auStack_48 [16];
  int local_38;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_34 [16];
  
  pvVar2 = (void *)FUN_00534428(param_2,param_3);
  FUN_0054932c(&local_38,param_3,&DAT_00960ca4);
  FUN_0054968c(auStack_48,&local_38,&DAT_009622a4,"getAchievements",
               "()Lcom/google/android/gms/games/achievement/AchievementBuffer;");
  FUN_00548ab0(&local_38);
  iVar3 = gpg::IsError(pvVar2);
  if (iVar3 == 0) {
    iVar3 = FUN_00548d1c(auStack_48,"getCount");
    local_70 = 0;
    local_6c = 0;
    for (iVar5 = 0; iVar5 < iVar3; iVar5 = iVar5 + 1) {
      FUN_0054968c(&local_38,auStack_48,&DAT_00961024,&DAT_0080598d,
                   "(I)Lcom/google/android/gms/games/achievement/Achievement;",iVar5);
      FUN_00549104(&local_60,&local_38,"getAchievementId");
      if ((*(size_t *)((int)local_60 + -0xc) == *(size_t *)((int)*(void **)(param_2 + 0x54) + -0xc))
         && (iVar4 = memcmp(local_60,*(void **)(param_2 + 0x54),*(size_t *)((int)local_60 + -0xc)),
            iVar4 == 0)) {
        FUN_005350bc(&local_68,&local_38,&local_60);
        uVar1 = local_64;
        local_70 = local_68;
        local_50[0] = local_6c;
        local_64 = 0;
        local_68 = 0;
        local_54 = (void *)0x0;
        local_6c = uVar1;
        std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
                  ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_50);
        std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
                  ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_64);
        FUN_007c5914(&local_60);
        FUN_00548ab0(&local_38);
        break;
      }
      FUN_007c5914(&local_60);
      FUN_00548ab0(&local_38);
    }
    FUN_00548de4(auStack_48,"close");
    if (local_70 == 0) {
      local_38 = -2;
      gpg::Achievement::Achievement((Achievement *)a_Stack_34);
      *param_1 = local_38;
      gpg::Achievement::Achievement((Achievement *)(param_1 + 1),(Achievement *)a_Stack_34);
      gpg::Achievement::~Achievement((Achievement *)a_Stack_34);
    }
    else {
      local_38 = local_70;
      local_54 = pvVar2;
      std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
                (a_Stack_34,(__shared_count *)&local_6c);
      gpg::Achievement::Achievement((Achievement *)local_50,&local_38);
      *param_1 = (int)local_54;
      gpg::Achievement::Achievement((Achievement *)(param_1 + 1),(Achievement *)local_50);
      gpg::Achievement::~Achievement((Achievement *)local_50);
      std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_34);
    }
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_6c);
  }
  else {
    FUN_00548de4(auStack_48,"close");
    local_60 = pvVar2;
    gpg::Achievement::Achievement(aAStack_5c);
    *param_1 = (int)local_60;
    gpg::Achievement::Achievement((Achievement *)(param_1 + 1),aAStack_5c);
    gpg::Achievement::~Achievement(aAStack_5c);
  }
  FUN_00548ab0(auStack_48);
  return param_1;
}

// ---- FUN_005346cc  @ 0x5346cc
void FUN_005346cc(undefined4 *param_1)

{
  undefined4 uVar1;
  undefined1 auStack_30 [16];
  undefined1 auStack_20 [16];
  
  param_1 = (undefined4 *)*param_1;
  FUN_00548b30(auStack_30);
  uVar1 = *param_1;
  FUN_00548b30(auStack_20,auStack_30);
  FUN_00534140(uVar1,auStack_20);
  FUN_00548ab0(auStack_20);
  FUN_00548ab0(auStack_30);
  return;
}

// ---- FUN_0053470e  @ 0x53470e
void FUN_0053470e(undefined4 *param_1,undefined4 *param_2)

{
  bool bVar1;
  int iVar2;
  int *piVar3;
  
  *param_1 = *param_2;
  iVar2 = param_2[1];
  param_1[1] = iVar2;
  if (iVar2 != 0) {
    piVar3 = (int *)(iVar2 + 4);
    DataMemoryBarrier(0x1f);
    do {
      ExclusiveAccess(piVar3);
      bVar1 = (bool)hasExclusiveAccess(piVar3);
    } while (!bVar1);
    *piVar3 = *piVar3 + 1;
    DataMemoryBarrier(0x1f);
  }
  return;
}

// ---- FUN_00534734  @ 0x534734
undefined4 * FUN_00534734(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_00534734_1_009253b8;
  FUN_007c5914(param_1 + 0xd);
  FUN_00533468(param_1);
  return param_1;
}

// ---- FUN_00534754  @ 0x534754
void * FUN_00534754(void *param_1)

{
  FUN_00534734();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_00534768  @ 0x534768
undefined4 *
FUN_00534768(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5)

{
  undefined4 *puStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  
  puStack_20 = param_1;
  uStack_1c = param_2;
  uStack_18 = param_3;
  FUN_0053470e(&puStack_20);
  FUN_00533528(param_1,&puStack_20);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&uStack_1c);
  param_1[0xc] = param_3;
  *param_1 = &PTR_FUN_00534734_1_009253b8;
  FUN_007c64e8(param_1 + 0xd,param_4);
  *(undefined1 *)(param_1 + 0xe) = 1;
  param_1[0xf] = param_5;
  return param_1;
}

// ---- FUN_005347b8  @ 0x5347b8
undefined4 *
FUN_005347b8(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 *puStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  
  puStack_20 = param_1;
  uStack_1c = param_2;
  uStack_18 = param_3;
  FUN_0053470e(&puStack_20);
  FUN_00533528(param_1,&puStack_20);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&uStack_1c);
  param_1[0xc] = param_3;
  *param_1 = &PTR_FUN_00534734_1_009253b8;
  FUN_007c64e8(param_1 + 0xd,param_4);
  *(undefined1 *)(param_1 + 0xe) = 0;
  param_1[0xf] = 0;
  return param_1;
}

// ---- FUN_00534804  @ 0x534804
void FUN_00534804(int param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined1 *puVar3;
  undefined4 uVar4;
  undefined1 auStack_48 [16];
  undefined1 auStack_38 [16];
  undefined1 auStack_28 [16];
  
  uVar1 = FUN_00549a1c();
  FUN_0054942c(auStack_48,param_1 + 0x34,uVar1);
  if (*(char *)(param_1 + 0x38) == '\0') {
    puVar3 = auStack_28;
    FUN_00547b10(puVar3,&DAT_00961324,&DAT_009634a4,"Achievements",
                 "Lcom/google/android/gms/games/achievement/Achievements;");
    uVar4 = *(undefined4 *)(param_1 + 0x30);
    uVar1 = FUN_00548bac(*(int *)(param_1 + 0x28) + 0xf4);
    uVar2 = FUN_00548bac(auStack_48);
    FUN_00548d90(puVar3,uVar4,
                 "(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V",uVar1,
                 uVar2);
  }
  else {
    puVar3 = auStack_38;
    FUN_00547b10(puVar3,&DAT_00961324,&DAT_009634a4,"Achievements",
                 "Lcom/google/android/gms/games/achievement/Achievements;");
    uVar4 = *(undefined4 *)(param_1 + 0x30);
    uVar1 = FUN_00548bac(*(int *)(param_1 + 0x28) + 0xf4);
    uVar2 = FUN_00548bac(auStack_48);
    FUN_00548d90(puVar3,uVar4,
                 "(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;I)V",uVar1,
                 uVar2,*(undefined4 *)(param_1 + 0x3c));
  }
  FUN_00548ab0(puVar3);
  FUN_00548ab0(auStack_48);
  return;
}

// ---- FUN_00534910  @ 0x534910
undefined4 * FUN_00534910(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_00534910_1_00925410;
  FUN_005082ea(param_1 + 0xc);
  FUN_00533468(param_1);
  return param_1;
}

// ---- FUN_00534930  @ 0x534930
void * FUN_00534930(void *param_1)

{
  FUN_00534910();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_00534944  @ 0x534944
undefined4 * FUN_00534944(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_00534944_1_00925468;
  FUN_00534910();
  return param_1;
}

// ---- FUN_0053495c  @ 0x53495c
void * FUN_0053495c(void *param_1)

{
  FUN_00534944();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_00534970  @ 0x534970
undefined4 * FUN_00534970(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_00534970_1_009254c8;
  FUN_00534944();
  return param_1;
}

// ---- FUN_00534988  @ 0x534988
void * FUN_00534988(void *param_1)

{
  FUN_00534970();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_005349e0  @ 0x5349e0
undefined4 * FUN_005349e0(undefined4 *param_1,undefined4 *param_2,undefined4 param_3)

{
  undefined4 uVar1;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_84 [4];
  undefined4 local_80;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_7c [4];
  undefined4 local_78;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_74 [4];
  undefined4 local_70;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_6c [4];
  undefined1 auStack_68 [32];
  undefined1 auStack_48 [36];
  
  uVar1 = *param_2;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_84,(__shared_count *)(param_2 + 1));
  FUN_0051344a(auStack_68,param_3);
  local_80 = uVar1;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_7c,(__shared_count *)a_Stack_84);
  FUN_0051344a(auStack_48,auStack_68);
  local_78 = local_80;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_74,(__shared_count *)a_Stack_7c);
  local_70 = local_78;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_6c,(__shared_count *)a_Stack_74);
  param_1[1] = 0;
  param_1[2] = 0;
  *param_1 = &PTR_FUN_005107b4_1_00924458;
  param_1[3] = local_70;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(param_1 + 4),
             (__shared_count *)a_Stack_6c);
  param_1[8] = 0;
  param_1[6] = 0;
  param_1[7] = 0;
  param_1[8] = 0;
  param_1[9] = 0;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_6c);
  *param_1 = &PTR_FUN_00533468_1_00925100;
  param_1[10] = local_78;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(param_1 + 0xb),
             (__shared_count *)a_Stack_74);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_74);
  *param_1 = &PTR_FUN_00534910_1_00925410;
  FUN_0051344a(param_1 + 0xc,auStack_48);
  FUN_005082ea(auStack_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_7c);
  *param_1 = &PTR_FUN_00534944_1_00925468;
  *(undefined1 *)(param_1 + 0x14) = 0;
  FUN_005082ea(auStack_68);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_84);
  *param_1 = &PTR_FUN_00534970_1_009254c8;
  return param_1;
}

// ---- FUN_00534b40  @ 0x534b40
void FUN_00534b40(int *param_1,undefined4 param_2,undefined4 param_3,int param_4)

{
  undefined4 uVar1;
  undefined4 uVar2;
  _Any_data *this;
  int iVar3;
  undefined4 local_88;
  undefined4 local_84;
  undefined4 local_80 [2];
  undefined4 local_78;
  undefined4 local_74;
  undefined4 local_70 [2];
  undefined4 local_68;
  undefined4 local_60 [2];
  undefined4 local_58;
  undefined4 local_54;
  _Any_data a_Stack_50 [8];
  undefined4 local_48;
  undefined4 local_44;
  undefined4 local_40 [2];
  undefined4 local_38;
  undefined4 local_34;
  _Any_data a_Stack_30 [8];
  undefined4 local_28;
  undefined4 local_24;
  
  this = (_Any_data *)&local_88;
  if (param_4 == 0) {
    if ((char)param_1[0x14] == '\0') {
      this = (_Any_data *)&local_84;
      local_84 = 1;
    }
    else {
      local_88 = 0xfffffffa;
    }
  }
  else if (param_4 == 0x2711) {
    this = (_Any_data *)local_80;
    FUN_005166ae(1,"UI returned RECONNECT_REQUIRED: handling.");
    FUN_00536858(param_1[10]);
    iVar3 = param_1[10];
    local_68 = 0;
    local_78 = 0;
    local_38 = 0;
    local_28 = 0;
    std::swap<std::_Any_data>(this,a_Stack_30);
    uVar2 = local_24;
    uVar1 = local_28;
    local_58 = 0;
    local_28 = local_78;
    local_78 = uVar1;
    local_24 = local_74;
    local_74 = uVar2;
    std::swap<std::_Any_data>((_Any_data *)local_40,(_Any_data *)local_60);
    uVar2 = local_54;
    uVar1 = local_58;
    local_48 = 0;
    local_58 = local_38;
    local_38 = uVar1;
    local_54 = local_34;
    local_34 = uVar2;
    std::swap<std::_Any_data>(a_Stack_30,a_Stack_50);
    uVar2 = local_44;
    uVar1 = local_48;
    local_48 = local_28;
    local_28 = uVar1;
    local_44 = local_24;
    local_24 = uVar2;
    std::_Function_base::~_Function_base((_Function_base *)a_Stack_30);
    std::_Function_base::~_Function_base((_Function_base *)local_40);
    std::_Function_base::~_Function_base((_Function_base *)this);
    std::_Function_base::~_Function_base((_Function_base *)local_70);
    FUN_005124a2(iVar3,(_Function_base *)local_60);
    std::_Function_base::~_Function_base((_Function_base *)a_Stack_50);
    std::_Function_base::~_Function_base((_Function_base *)local_60);
    local_80[0] = 0xfffffffd;
  }
  else if (param_4 == 0x2715) {
    this = (_Any_data *)local_70;
    local_70[0] = 0xffffffee;
  }
  else {
    iVar3 = FUN_00548c48(param_2);
    if (iVar3 == 0) {
      local_40[0] = (**(code **)(*param_1 + 0x50))(param_1,param_2);
      this = (_Any_data *)local_40;
    }
    else {
      this = (_Any_data *)local_60;
      local_60[0] = 0xfffffffe;
    }
  }
  FUN_00514114(param_1 + 0xc,this);
  return;
}

// ---- FUN_00534c84  @ 0x534c84
void FUN_00534c84(int param_1)

{
  bool bVar1;
  undefined4 uVar2;
  int iVar3;
  int *piVar4;
  int *extraout_r2;
  int extraout_r3;
  int iVar5;
  int *unaff_r5;
  int *unaff_r10;
  undefined4 local_5c;
  int local_58;
  int local_54;
  int local_50;
  int local_4c;
  undefined1 auStack_48 [16];
  int *local_38;
  int local_34;
  code *local_30;
  undefined4 local_2c;
  
  FUN_00547b10((_Function_base *)&local_38,&DAT_00961324,&DAT_009634a4,"Achievements",
               "Lcom/google/android/gms/games/achievement/Achievements;");
  uVar2 = FUN_00548bac(*(int *)(param_1 + 0x28) + 0xf4);
  FUN_0054968c(auStack_48,(_Function_base *)&local_38,&DAT_009630a4,"getAchievementsIntent",
               "(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/Intent;",uVar2
              );
  FUN_00548ab0((_Function_base *)&local_38);
  local_54 = *(int *)(param_1 + 8);
  uVar2 = *(undefined4 *)(param_1 + 0x28);
  if (local_54 == 0) {
    iVar3 = std::__throw_bad_weak_ptr();
  }
  else {
    piVar4 = (int *)(local_54 + 4);
    unaff_r5 = &local_50;
    iVar3 = *(int *)(local_54 + 4);
    do {
      local_50 = iVar3;
      iVar5 = local_50;
      if (local_50 == 0) {
        std::__throw_bad_weak_ptr();
        piVar4 = extraout_r2;
        iVar5 = extraout_r3;
      }
      DataMemoryBarrier(0x1f);
      ExclusiveAccess(piVar4);
      iVar3 = *piVar4;
      bVar1 = false;
      if (iVar3 == local_50) {
        bVar1 = (bool)hasExclusiveAccess(piVar4);
        if (bVar1) {
          *piVar4 = iVar5 + 1;
        }
        DataMemoryBarrier(0x1f);
      }
    } while (!bVar1);
    local_58 = *(int *)(param_1 + 4);
    unaff_r10 = &local_58;
    local_38 = (int *)local_58;
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_34,(__shared_count *)&local_54);
    local_4c = local_34;
    local_50 = (int)local_38;
    local_38 = (int *)0x0;
    local_34 = 0;
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_34);
    local_30 = (code *)0x0;
    local_38 = operator_new(8);
    iVar3 = local_4c;
    *local_38 = local_50;
    local_38[1] = 0;
    local_4c = 0;
    local_38[1] = iVar3;
    local_2c = 0x534e09;
    local_50 = 0;
    local_30 = (code *)0x53499b;
    iVar3 = FUN_0053eea8(uVar2,auStack_48,(_Function_base *)&local_38);
  }
  std::_Function_base::~_Function_base((_Function_base *)&local_38);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(unaff_r5 + 1));
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(unaff_r10 + 1));
  if (iVar3 == 0) {
    local_5c = 0xfffffff4;
    FUN_00514114(param_1 + 0x30,&local_5c);
  }
  FUN_00548ab0(auStack_48);
  return;
}

// ---- FUN_00534e08  @ 0x534e08
void FUN_00534e08(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  undefined1 auStack_38 [16];
  undefined1 auStack_28 [16];
  
  param_1 = (undefined4 *)*param_1;
  FUN_00548b30(auStack_38);
  uVar1 = *param_1;
  FUN_00548b30(auStack_28,auStack_38);
  FUN_00534b40(uVar1,auStack_28,param_3,param_4);
  FUN_00548ab0(auStack_28);
  FUN_00548ab0(auStack_38);
  return;
}

// ---- FUN_00534e6c  @ 0x534e6c
undefined4 * FUN_00534e6c(undefined4 *param_1)

{
  *param_1 = &PTR___Sp_counted_base_1_009242b8;
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_00534ed4  @ 0x534ed4
int FUN_00534ed4(int *param_1,undefined4 *param_2,int *param_3)

{
  int *piVar1;
  undefined4 uVar2;
  gpg *pgVar3;
  int iVar4;
  int iVar5;
  int *piVar6;
  undefined1 auStack_d0 [4];
  undefined1 auStack_cc [8];
  undefined1 auStack_c4 [4];
  undefined1 auStack_c0 [176];
  
  piVar6 = (int *)*param_2;
  piVar1 = piVar6 + param_2[1] * 2;
  for (iVar5 = (int)(param_2[1] << 3) >> 5; 0 < iVar5; iVar5 = iVar5 + -1) {
    iVar4 = *param_1;
    if (*piVar6 == iVar4) goto LAB_00534f46;
    if (piVar6[2] == iVar4) {
      piVar6 = piVar6 + 2;
      goto LAB_00534f46;
    }
    if (piVar6[4] == iVar4) {
      piVar6 = piVar6 + 4;
      goto LAB_00534f46;
    }
    if (piVar6[6] == iVar4) {
      piVar6 = piVar6 + 6;
      goto LAB_00534f46;
    }
    piVar6 = piVar6 + 8;
  }
  iVar5 = (int)piVar1 - (int)piVar6 >> 3;
  if (iVar5 == 2) {
LAB_00534f34:
    if (*piVar6 != *param_1) {
      piVar6 = piVar6 + 2;
LAB_00534f3e:
      if (*piVar6 != *param_1) goto LAB_00534f4e;
    }
  }
  else {
    if (iVar5 != 3) {
      if (iVar5 != 1) goto LAB_00534f4e;
      goto LAB_00534f3e;
    }
    if (*piVar6 != *param_1) {
      piVar6 = piVar6 + 2;
      goto LAB_00534f34;
    }
  }
LAB_00534f46:
  if (piVar6 != piVar1) {
    return piVar6[1];
  }
LAB_00534f4e:
  FUN_007aaa70(auStack_cc,0x18);
  uVar2 = FUN_007bbcd0(auStack_c4,"Invalid conversion from ");
  uVar2 = thunk_FUN_007bbd6c(uVar2,*param_1);
  pgVar3 = (gpg *)FUN_007bbcd0(uVar2,": using ");
  uVar2 = gpg::operator<<(pgVar3,*param_3);
  FUN_007bbcd0(uVar2,"instead.");
  FUN_007a9920(auStack_d0,auStack_c0);
  FUN_00516680(4,auStack_d0);
  FUN_007c5914(auStack_d0);
  iVar5 = *param_3;
  FUN_007a95a8(auStack_cc);
  return iVar5;
}

// ---- FUN_00534fc8  @ 0x534fc8
int FUN_00534fc8(int *param_1,undefined4 *param_2,int *param_3)

{
  int *piVar1;
  undefined4 uVar2;
  gpg *pgVar3;
  int iVar4;
  int iVar5;
  int *piVar6;
  undefined1 auStack_d0 [4];
  undefined1 auStack_cc [8];
  undefined1 auStack_c4 [4];
  undefined1 auStack_c0 [176];
  
  piVar6 = (int *)*param_2;
  piVar1 = piVar6 + param_2[1] * 2;
  for (iVar5 = (int)(param_2[1] << 3) >> 5; 0 < iVar5; iVar5 = iVar5 + -1) {
    iVar4 = *param_1;
    if (*piVar6 == iVar4) goto LAB_0053503a;
    if (piVar6[2] == iVar4) {
      piVar6 = piVar6 + 2;
      goto LAB_0053503a;
    }
    if (piVar6[4] == iVar4) {
      piVar6 = piVar6 + 4;
      goto LAB_0053503a;
    }
    if (piVar6[6] == iVar4) {
      piVar6 = piVar6 + 6;
      goto LAB_0053503a;
    }
    piVar6 = piVar6 + 8;
  }
  iVar5 = (int)piVar1 - (int)piVar6 >> 3;
  if (iVar5 == 2) {
LAB_00535028:
    if (*piVar6 != *param_1) {
      piVar6 = piVar6 + 2;
LAB_00535032:
      if (*piVar6 != *param_1) goto LAB_00535042;
    }
  }
  else {
    if (iVar5 != 3) {
      if (iVar5 != 1) goto LAB_00535042;
      goto LAB_00535032;
    }
    if (*piVar6 != *param_1) {
      piVar6 = piVar6 + 2;
      goto LAB_00535028;
    }
  }
LAB_0053503a:
  if (piVar6 != piVar1) {
    return piVar6[1];
  }
LAB_00535042:
  FUN_007aaa70(auStack_cc,0x18);
  uVar2 = FUN_007bbcd0(auStack_c4,"Invalid conversion from ");
  uVar2 = thunk_FUN_007bbd6c(uVar2,*param_1);
  pgVar3 = (gpg *)FUN_007bbcd0(uVar2,": using ");
  uVar2 = gpg::operator<<(pgVar3,*param_3);
  FUN_007bbcd0(uVar2,"instead.");
  FUN_007a9920(auStack_d0,auStack_c0);
  FUN_00516680(4,auStack_d0);
  FUN_007c5914(auStack_d0);
  iVar5 = *param_3;
  FUN_007a95a8(auStack_cc);
  return iVar5;
}

// ---- FUN_005350bc  @ 0x5350bc
undefined4 * FUN_005350bc(undefined4 *param_1,undefined4 param_2,int *param_3)

{
  int iVar1;
  undefined4 uVar2;
  undefined4 *puVar3;
  undefined4 *puVar4;
  undefined8 uVar5;
  undefined8 uVar6;
  undefined4 local_a8;
  undefined4 local_9c;
  undefined1 auStack_78 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> *local_74;
  __shared_count<(__gnu_cxx::_Lock_policy)2> *local_70;
  __shared_count<(__gnu_cxx::_Lock_policy)2> *local_6c;
  __shared_count<(__gnu_cxx::_Lock_policy)2> *local_68;
  undefined4 local_64;
  undefined4 local_60;
  __shared_count<(__gnu_cxx::_Lock_policy)2> *local_5c;
  __shared_count<(__gnu_cxx::_Lock_policy)2> *local_58;
  __shared_count<(__gnu_cxx::_Lock_policy)2> *local_54;
  undefined4 *local_50;
  undefined4 *local_4c;
  __shared_count<(__gnu_cxx::_Lock_policy)2> *local_48;
  undefined4 local_44;
  __shared_count<(__gnu_cxx::_Lock_policy)2> *local_40;
  undefined4 local_3c;
  undefined4 local_38;
  undefined4 local_34;
  undefined4 local_30;
  undefined4 local_2c;
  
  local_64 = FUN_00548d1c(param_2,"getType");
  local_34 = 2;
  local_44 = 2;
  local_40 = (__shared_count<(__gnu_cxx::_Lock_policy)2> *)0x0;
  local_3c = 1;
  local_38 = 1;
  local_50 = (undefined4 *)0x1;
  local_48 = (__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_40;
  iVar1 = FUN_00534ed4(&local_64,&local_48,&local_50);
  if (*(int *)(*param_3 + -0xc) == 0) {
    FUN_00549104(auStack_78,param_2,"getAchievementId");
  }
  else {
    FUN_007c64e8(auStack_78,param_3);
  }
  FUN_00549104(&local_74,param_2,"getName");
  FUN_00549104(&local_70,param_2,"getDescription");
  local_60 = FUN_00548d1c(param_2,"getState");
  local_3c = 3;
  local_34 = 2;
  local_30 = 2;
  local_44 = 3;
  local_40 = (__shared_count<(__gnu_cxx::_Lock_policy)2> *)0x0;
  local_38 = 1;
  local_2c = 1;
  local_58 = (__shared_count<(__gnu_cxx::_Lock_policy)2> *)0x1;
  local_48 = (__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_40;
  uVar2 = FUN_00534fc8(&local_60,&local_48,&local_58);
  if (iVar1 == 2) {
    local_a8 = FUN_00548d1c(param_2,"getCurrentSteps");
    local_9c = FUN_00548d1c(param_2,"getTotalSteps");
  }
  else {
    local_a8 = 0;
    local_9c = 0;
  }
  uVar5 = FUN_00548d84(param_2,"getXpValue");
  FUN_005490cc(&local_6c,param_2,&DAT_00801f93,"getRevealedImageUrl");
  FUN_005490cc(&local_68,param_2,&DAT_00801f93,"getUnlockedImageUrl");
  uVar6 = FUN_00548d84(param_2,"getLastUpdatedTimestamp");
  local_50 = (undefined4 *)0x0;
  local_4c = (undefined4 *)0x0;
  puVar3 = operator_new(0x38);
  local_50 = puVar3;
  FUN_007c64e8(&local_54,auStack_78);
  local_40 = local_74;
  local_48 = local_70;
  local_58 = local_6c;
  local_5c = local_68;
  if (puVar3 != (undefined4 *)0x0) {
    puVar3[1] = local_74;
    *puVar3 = local_54;
    puVar3[2] = local_70;
    puVar3[4] = uVar2;
    puVar3[3] = iVar1;
    puVar3[6] = local_9c;
    puVar3[5] = local_a8;
    puVar3[10] = local_6c;
    *(undefined8 *)(puVar3 + 8) = uVar5;
    puVar3[0xb] = local_68;
    *(undefined8 *)(puVar3 + 0xc) = uVar6;
    local_5c = (__shared_count<(__gnu_cxx::_Lock_policy)2> *)&DAT_00972528;
    local_58 = (__shared_count<(__gnu_cxx::_Lock_policy)2> *)&DAT_00972528;
    local_54 = (__shared_count<(__gnu_cxx::_Lock_policy)2> *)&DAT_00972528;
    local_48 = (__shared_count<(__gnu_cxx::_Lock_policy)2> *)&DAT_00972528;
    local_40 = (__shared_count<(__gnu_cxx::_Lock_policy)2> *)&DAT_00972528;
  }
  local_74 = (__shared_count<(__gnu_cxx::_Lock_policy)2> *)&DAT_00972528;
  local_70 = (__shared_count<(__gnu_cxx::_Lock_policy)2> *)&DAT_00972528;
  local_6c = (__shared_count<(__gnu_cxx::_Lock_policy)2> *)&DAT_00972528;
  local_68 = (__shared_count<(__gnu_cxx::_Lock_policy)2> *)&DAT_00972528;
  FUN_007c5914(&local_5c);
  FUN_007c5914(&local_58);
  FUN_007c5914(&local_48);
  FUN_007c5914((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_40);
  FUN_007c5914(&local_54);
  puVar3 = local_50;
  local_40 = (__shared_count<(__gnu_cxx::_Lock_policy)2> *)0x0;
  puVar4 = operator_new(0x14);
  if (puVar4 != (undefined4 *)0x0) {
    puVar4[1] = 1;
    puVar4[2] = 1;
    puVar4[3] = puVar3;
    *puVar4 = &PTR_LAB_00534e58_1_00925528;
  }
  local_40 = (__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_4c;
  local_4c = puVar4;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_40);
  param_1[1] = local_4c;
  *param_1 = local_50;
  local_4c = (undefined4 *)0x0;
  local_50 = (undefined4 *)0x0;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_4c);
  FUN_007c5914(&local_68);
  FUN_007c5914(&local_6c);
  FUN_007c5914(&local_70);
  FUN_007c5914(&local_74);
  FUN_007c5914(auStack_78);
  return param_1;
}

// ---- FUN_00535790  @ 0x535790
undefined4 * FUN_00535790(undefined4 *param_1)

{
  *param_1 = &PTR___Sp_counted_base_1_009242b8;
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_00536340  @ 0x536340
int FUN_00536340(int param_1)

{
  if (*(code **)(param_1 + 8) != (code *)0x0) {
    (**(code **)(param_1 + 8))(param_1,param_1,3);
    *(undefined4 *)(param_1 + 8) = 0;
    *(undefined4 *)(param_1 + 0xc) = 0;
  }
  return param_1;
}

// ---- FUN_00536358  @ 0x536358
void FUN_00536358(int *param_1)

{
  if (param_1 != (int *)0x0) {
    (**(code **)(*param_1 + 4))();
  }
  return;
}

// ---- FUN_00536364  @ 0x536364
void FUN_00536364(void *param_1)

{
  if (param_1 != (void *)0x0) {
    operator_delete(param_1);
    return;
  }
  return;
}

// ---- FUN_0053636c  @ 0x53636c
void FUN_0053636c(uint param_1)

{
  if (0x3fffffff < param_1) {
    param_1 = FUN_007c4844();
  }
  operator_new(param_1 << 2);
  return;
}

// ---- FUN_00536382  @ 0x536382
void FUN_00536382(int param_1)

{
  undefined4 *puVar1;
  
  puVar1 = *(undefined4 **)(param_1 + 0xc);
  (**(code **)*puVar1)(puVar1);
  operator_delete(puVar1);
  return;
}

// ---- FUN_00536398  @ 0x536398
void FUN_00536398(int param_1)

{
  undefined4 *puVar1;
  
  puVar1 = *(undefined4 **)(param_1 + 0xc);
  (**(code **)*puVar1)(puVar1);
  operator_delete(puVar1);
  return;
}

// ---- FUN_005363c4  @ 0x5363c4
void FUN_005363c4(int param_1)

{
  undefined4 *puVar1;
  
  puVar1 = *(undefined4 **)(param_1 + 0xc);
  (**(code **)*puVar1)(puVar1);
  operator_delete(puVar1);
  return;
}

// ---- FUN_005363da  @ 0x5363da
void FUN_005363da(int param_1)

{
  undefined4 *puVar1;
  
  puVar1 = *(undefined4 **)(param_1 + 0xc);
  (**(code **)*puVar1)(puVar1);
  operator_delete(puVar1);
  return;
}

// ---- FUN_00536406  @ 0x536406
void FUN_00536406(int param_1)

{
  undefined4 *puVar1;
  
  puVar1 = *(undefined4 **)(param_1 + 0xc);
  (**(code **)*puVar1)(puVar1);
  operator_delete(puVar1);
  return;
}

// ---- FUN_00536432  @ 0x536432
void FUN_00536432(int param_1)

{
  undefined4 *puVar1;
  
  puVar1 = *(undefined4 **)(param_1 + 0xc);
  (**(code **)*puVar1)(puVar1);
  operator_delete(puVar1);
  return;
}

// ---- FUN_0053645e  @ 0x53645e
void FUN_0053645e(int param_1)

{
  undefined4 *puVar1;
  
  puVar1 = *(undefined4 **)(param_1 + 0xc);
  (**(code **)*puVar1)(puVar1);
  operator_delete(puVar1);
  return;
}

// ---- FUN_0053648a  @ 0x53648a
void FUN_0053648a(int param_1)

{
  undefined4 *puVar1;
  
  puVar1 = *(undefined4 **)(param_1 + 0xc);
  (**(code **)*puVar1)(puVar1);
  operator_delete(puVar1);
  return;
}

// ---- FUN_005364a0  @ 0x5364a0
void FUN_005364a0(int param_1)

{
  undefined4 *puVar1;
  
  puVar1 = *(undefined4 **)(param_1 + 0xc);
  (**(code **)*puVar1)(puVar1);
  operator_delete(puVar1);
  return;
}

// ---- FUN_005364cc  @ 0x5364cc
void FUN_005364cc(int param_1)

{
  undefined4 *puVar1;
  
  puVar1 = *(undefined4 **)(param_1 + 0xc);
  (**(code **)*puVar1)(puVar1);
  operator_delete(puVar1);
  return;
}

// ---- FUN_005364f8  @ 0x5364f8
void FUN_005364f8(int param_1)

{
  undefined4 *puVar1;
  
  puVar1 = *(undefined4 **)(param_1 + 0xc);
  (**(code **)*puVar1)(puVar1);
  operator_delete(puVar1);
  return;
}

// ---- FUN_00536524  @ 0x536524
void FUN_00536524(int param_1)

{
  undefined4 *puVar1;
  
  puVar1 = *(undefined4 **)(param_1 + 0xc);
  (**(code **)*puVar1)(puVar1);
  operator_delete(puVar1);
  return;
}

// ---- FUN_00536550  @ 0x536550
void FUN_00536550(int param_1)

{
  undefined4 *puVar1;
  
  puVar1 = *(undefined4 **)(param_1 + 0xc);
  (**(code **)*puVar1)(puVar1);
  operator_delete(puVar1);
  return;
}

// ---- FUN_0053657c  @ 0x53657c
void FUN_0053657c(int param_1)

{
  undefined4 *puVar1;
  
  puVar1 = *(undefined4 **)(param_1 + 0xc);
  (**(code **)*puVar1)(puVar1);
  operator_delete(puVar1);
  return;
}

// ---- FUN_005365a8  @ 0x5365a8
void FUN_005365a8(int param_1)

{
  undefined4 *puVar1;
  
  puVar1 = *(undefined4 **)(param_1 + 0xc);
  (**(code **)*puVar1)(puVar1);
  operator_delete(puVar1);
  return;
}

// ---- FUN_005365d4  @ 0x5365d4
void FUN_005365d4(int param_1)

{
  undefined4 *puVar1;
  
  puVar1 = *(undefined4 **)(param_1 + 0xc);
  (**(code **)*puVar1)(puVar1);
  operator_delete(puVar1);
  return;
}

// ---- FUN_00536600  @ 0x536600
void FUN_00536600(int param_1)

{
  undefined4 *puVar1;
  
  puVar1 = *(undefined4 **)(param_1 + 0xc);
  (**(code **)*puVar1)(puVar1);
  operator_delete(puVar1);
  return;
}

// ---- FUN_0053662c  @ 0x53662c
void FUN_0053662c(int param_1)

{
  undefined4 *puVar1;
  
  puVar1 = *(undefined4 **)(param_1 + 0xc);
  (**(code **)*puVar1)(puVar1);
  operator_delete(puVar1);
  return;
}

// ---- FUN_00536684  @ 0x536684
void FUN_00536684(int param_1)

{
  undefined4 *puVar1;
  
  puVar1 = *(undefined4 **)(param_1 + 0xc);
  (**(code **)*puVar1)(puVar1);
  operator_delete(puVar1);
  return;
}

// ---- FUN_005366b0  @ 0x5366b0
void FUN_005366b0(int param_1)

{
  undefined4 *puVar1;
  
  puVar1 = *(undefined4 **)(param_1 + 0xc);
  (**(code **)*puVar1)(puVar1);
  operator_delete(puVar1);
  return;
}

// ---- FUN_005366dc  @ 0x5366dc
void FUN_005366dc(int param_1)

{
  undefined4 *puVar1;
  
  puVar1 = *(undefined4 **)(param_1 + 0xc);
  (**(code **)*puVar1)(puVar1);
  operator_delete(puVar1);
  return;
}

// ---- FUN_00536708  @ 0x536708
void FUN_00536708(int param_1)

{
  undefined4 *puVar1;
  
  puVar1 = *(undefined4 **)(param_1 + 0xc);
  (**(code **)*puVar1)(puVar1);
  operator_delete(puVar1);
  return;
}

// ---- FUN_00536734  @ 0x536734
void FUN_00536734(int param_1)

{
  undefined4 *puVar1;
  
  puVar1 = *(undefined4 **)(param_1 + 0xc);
  (**(code **)*puVar1)(puVar1);
  operator_delete(puVar1);
  return;
}

// ---- FUN_00536760  @ 0x536760
void FUN_00536760(int param_1)

{
  undefined4 *puVar1;
  
  puVar1 = *(undefined4 **)(param_1 + 0xc);
  (**(code **)*puVar1)(puVar1);
  operator_delete(puVar1);
  return;
}

// ---- FUN_0053678c  @ 0x53678c
void FUN_0053678c(int param_1)

{
  undefined4 *puVar1;
  
  puVar1 = *(undefined4 **)(param_1 + 0xc);
  (**(code **)*puVar1)(puVar1);
  operator_delete(puVar1);
  return;
}

// ---- FUN_005367ce  @ 0x5367ce
void FUN_005367ce(int param_1)

{
  undefined4 *puVar1;
  
  puVar1 = *(undefined4 **)(param_1 + 0xc);
  (**(code **)*puVar1)(puVar1);
  operator_delete(puVar1);
  return;
}

// ---- FUN_005367e4  @ 0x5367e4
void FUN_005367e4(undefined4 param_1,Quest *param_2)

{
  undefined4 *puVar1;
  Quest aQStack_30 [8];
  undefined4 *local_28 [2];
  undefined1 *local_20;
  undefined4 local_1c;
  
  gpg::Quest::Quest(aQStack_30,param_2);
  local_20 = (undefined1 *)0x0;
  puVar1 = operator_new(0xc);
  *puVar1 = param_1;
  gpg::Quest::Quest((Quest *)(puVar1 + 1),aQStack_30);
  local_1c = 0x53eb39;
  local_20 = &LAB_005362f0_1;
  local_28[0] = puVar1;
  FUN_00512344(param_1,(_Function_base *)local_28);
  std::_Function_base::~_Function_base((_Function_base *)local_28);
  gpg::Quest::~Quest(aQStack_30);
  return;
}

// ---- FUN_00536858  @ 0x536858
void FUN_00536858(int param_1)

{
  int iVar1;
  
  iVar1 = FUN_00548c48(param_1 + 0xf4);
  if (iVar1 == 0) {
    FUN_00548de4(param_1 + 0xf4,"disconnect");
    FUN_00545790();
    return;
  }
  return;
}

// ---- FUN_00536880  @ 0x536880
int FUN_00536880(int param_1)

{
  return param_1 + 0x78;
}

// ---- FUN_00536884  @ 0x536884
int FUN_00536884(int param_1)

{
  gpg::MultiplayerParticipant::~MultiplayerParticipant((MultiplayerParticipant *)(param_1 + 0x10));
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(param_1 + 0xc));
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(param_1 + 4));
  return param_1;
}

// ---- FUN_005368a0  @ 0x5368a0
int FUN_005368a0(int param_1)

{
  gpg::MultiplayerParticipant::~MultiplayerParticipant((MultiplayerParticipant *)(param_1 + 0x10));
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(param_1 + 0xc));
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(param_1 + 4));
  return param_1;
}

// ---- FUN_005368bc  @ 0x5368bc
int FUN_005368bc(int param_1)

{
  gpg::MultiplayerParticipant::~MultiplayerParticipant((MultiplayerParticipant *)(param_1 + 0x10));
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(param_1 + 0xc));
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(param_1 + 4));
  return param_1;
}

// ---- FUN_005368d8  @ 0x5368d8
void FUN_005368d8(undefined4 param_1)

{
  undefined1 auStack_24 [4];
  MultiplayerInvitation aMStack_20 [16];
  
  FUN_00549138(auStack_24);
  gpg::MultiplayerInvitation::MultiplayerInvitation(aMStack_20);
  FUN_00511be0(param_1,3,1,auStack_24,aMStack_20);
  gpg::MultiplayerInvitation::~MultiplayerInvitation(aMStack_20);
  FUN_007c5914(auStack_24);
  return;
}

// ---- FUN_0053691e  @ 0x53691e
void FUN_0053691e(void *param_1)

{
  if (param_1 != (void *)0x0) {
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)((int)param_1 + 4));
    operator_delete(param_1);
    return;
  }
  return;
}

// ---- FUN_00536936  @ 0x536936
void FUN_00536936(undefined4 param_1)

{
  undefined1 auStack_1c [4];
  TurnBasedMatch aTStack_18 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_14 [4];
  
  FUN_00549138(auStack_1c);
  gpg::TurnBasedMatch::TurnBasedMatch(aTStack_18);
  FUN_00511df4(param_1,3,1,auStack_1c,aTStack_18);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_14);
  FUN_007c5914(auStack_1c);
  return;
}

// ---- FUN_0053697c  @ 0x53697c
void FUN_0053697c(undefined4 param_1)

{
  undefined4 uVar1;
  undefined1 *local_44;
  undefined4 local_40;
  undefined4 local_3c;
  MultiplayerInvitation aMStack_38 [16];
  undefined4 local_28;
  undefined4 local_24 [3];
  
  FUN_00566880(&local_40);
  local_28 = local_40;
  local_24[0] = local_3c;
  local_3c = 0;
  local_40 = (undefined1 *)0x0;
  gpg::MultiplayerInvitation::MultiplayerInvitation(aMStack_38,(MultiplayerInvitation *)&local_28);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_24);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_3c);
  uVar1 = gpg::MultiplayerInvitation::Id(aMStack_38);
  FUN_007c64e8(&local_44,uVar1);
  local_40 = local_44;
  local_44 = &DAT_00972528;
  gpg::MultiplayerInvitation::MultiplayerInvitation((MultiplayerInvitation *)&local_28,aMStack_38);
  FUN_00511be0(param_1,1,1,&local_40,(MultiplayerInvitation *)&local_28);
  gpg::MultiplayerInvitation::~MultiplayerInvitation((MultiplayerInvitation *)&local_28);
  FUN_007c5914(&local_40);
  FUN_007c5914(&local_44);
  gpg::MultiplayerInvitation::~MultiplayerInvitation(aMStack_38);
  return;
}

// ---- FUN_00536a38  @ 0x536a38
void FUN_00536a38(undefined4 param_1)

{
  undefined4 uVar1;
  undefined1 *local_34;
  TurnBasedMatch aTStack_30 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_2c [4];
  undefined4 local_28;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  
  FUN_00566298(&local_28);
  local_20 = local_28;
  local_1c = local_24;
  local_24 = 0;
  local_28 = (undefined1 *)0x0;
  gpg::TurnBasedMatch::TurnBasedMatch(aTStack_30,(TurnBasedMatch *)&local_20);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_1c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_24);
  uVar1 = gpg::TurnBasedMatch::Id(aTStack_30);
  FUN_007c64e8(&local_34,uVar1);
  local_28 = local_34;
  local_34 = &DAT_00972528;
  gpg::TurnBasedMatch::TurnBasedMatch((TurnBasedMatch *)&local_20,aTStack_30);
  FUN_00511df4(param_1,1,1,&local_28,(TurnBasedMatch *)&local_20);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_1c);
  FUN_007c5914(&local_28);
  FUN_007c5914(&local_34);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_2c);
  return;
}

// ---- FUN_00536af0  @ 0x536af0
undefined4 * FUN_00536af0(undefined4 *param_1,undefined4 *param_2)

{
  *param_1 = *param_2;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(param_1 + 1),
             (__shared_count *)(param_2 + 1));
  return param_1;
}

// ---- FUN_00536e1e  @ 0x536e1e
int FUN_00536e1e(int param_1,int param_2)

{
  *(undefined4 *)(param_1 + 8) = 0;
  if (*(int *)(param_2 + 8) != 0) {
    *(undefined4 *)(param_1 + 0xc) = *(undefined4 *)(param_2 + 0xc);
    *(undefined4 *)(param_1 + 8) = *(undefined4 *)(param_2 + 8);
    (**(code **)(param_2 + 8))(param_1,param_2,2);
  }
  return param_1;
}

// ---- FUN_00536f98  @ 0x536f98
function<void(gpg::RealTimeRoom_const&)> *
FUN_00536f98(function<void(gpg::RealTimeRoom_const&)> *param_1,function *param_2)

{
  std::function<void(gpg::RealTimeRoom_const&)>::function(param_1,param_2);
  std::function<void(gpg::RealTimeRoom_const&)>::function(param_1 + 0x10,param_2 + 0x10);
  std::function<void(gpg::RealTimeRoom_const&,gpg::MultiplayerParticipant_const&)>::function
            ((function<void(gpg::RealTimeRoom_const&,gpg::MultiplayerParticipant_const&)> *)
             (param_1 + 0x20),param_2 + 0x20);
  std::function<void(gpg::RealTimeRoom_const&,gpg::MultiplayerParticipant_const&)>::function
            ((function<void(gpg::RealTimeRoom_const&,gpg::MultiplayerParticipant_const&)> *)
             (param_1 + 0x30),param_2 + 0x30);
  std::function<void(gpg::RealTimeRoom_const&,gpg::MultiplayerParticipant_const&)>::function
            ((function<void(gpg::RealTimeRoom_const&,gpg::MultiplayerParticipant_const&)> *)
             (param_1 + 0x40),param_2 + 0x40);
  *(undefined4 *)(param_1 + 0x58) = 0;
  if (*(int *)(param_2 + 0x58) != 0) {
    *(undefined4 *)(param_1 + 0x5c) = *(undefined4 *)(param_2 + 0x5c);
    *(undefined4 *)(param_1 + 0x58) = *(undefined4 *)(param_2 + 0x58);
    (**(code **)(param_2 + 0x58))(param_1 + 0x50,param_2 + 0x50,2);
  }
  return param_1;
}

// ---- FUN_005370a4  @ 0x5370a4
void FUN_005370a4(int *param_1,int param_2)

{
  int iVar1;
  
  iVar1 = *param_1;
  *param_1 = param_2;
  if (iVar1 != 0) {
    FUN_0053691e(iVar1);
    return;
  }
  return;
}

// ---- FUN_005370b4  @ 0x5370b4
undefined4 * FUN_005370b4(undefined4 *param_1)

{
  _Function_base *this;
  
  this = (_Function_base *)param_1[7];
  *param_1 = &PTR_FUN_005370b4_1_00925568;
  if (this != (_Function_base *)0x0) {
    std::_Function_base::~_Function_base(this + 0x50);
    std::_Function_base::~_Function_base(this + 0x40);
    std::_Function_base::~_Function_base(this + 0x30);
    std::_Function_base::~_Function_base(this + 0x20);
    std::_Function_base::~_Function_base(this + 0x10);
    std::_Function_base::~_Function_base(this);
    operator_delete(this);
  }
  param_1[7] = 0;
  std::_Function_base::~_Function_base((_Function_base *)(param_1 + 3));
  *param_1 = &PTR__IRealTimeEventListener_1_009120b8;
  std::__weak_count<(__gnu_cxx::_Lock_policy)2>::~__weak_count
            ((__weak_count<(__gnu_cxx::_Lock_policy)2> *)(param_1 + 2));
  return param_1;
}

// ---- FUN_00537124  @ 0x537124
void * FUN_00537124(void *param_1)

{
  FUN_005370b4();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_00537136  @ 0x537136
int FUN_00537136(int param_1)

{
  std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::~_Vector_base
            ((_Vector_base<unsigned_char,std::allocator<unsigned_char>> *)(param_1 + 0x18));
  gpg::MultiplayerParticipant::~MultiplayerParticipant((MultiplayerParticipant *)(param_1 + 0x10));
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(param_1 + 0xc));
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(param_1 + 4));
  return param_1;
}

// ---- FUN_005371e8  @ 0x5371e8
void FUN_005371e8(undefined4 *param_1,undefined4 *param_2)

{
  undefined4 uVar1;
  
  *param_1 = *param_2;
  param_1[1] = 0;
  uVar1 = param_2[1];
  param_2[1] = 0;
  param_1[1] = uVar1;
  *param_2 = 0;
  return;
}

// ---- FUN_005371fc  @ 0x5371fc
void FUN_005371fc(undefined4 *param_1)

{
  int iVar1;
  int *piVar2;
  int iVar3;
  code *pcVar4;
  vector<unsigned_char,std::allocator<unsigned_char>> avStack_38 [12];
  _Vector_base<unsigned_char,std::allocator<unsigned_char>> a_Stack_2c [12];
  
  piVar2 = (int *)*param_1;
  iVar3 = *(int *)(*piVar2 + 0x1c);
  std::vector<unsigned_char,std::allocator<unsigned_char>>::vector
            (avStack_38,(vector *)(piVar2 + 6));
  iVar1 = piVar2[9];
  if (*(int *)(iVar3 + 0x58) == 0) {
    FUN_007c4d54();
  }
  pcVar4 = *(code **)(iVar3 + 0x5c);
  std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::_Vector_base
            (a_Stack_2c,(_Vector_base *)avStack_38);
  (*pcVar4)(iVar3 + 0x50,piVar2 + 2,piVar2 + 4,a_Stack_2c,(char)iVar1);
  std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::~_Vector_base(a_Stack_2c);
  std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::~_Vector_base
            ((_Vector_base<unsigned_char,std::allocator<unsigned_char>> *)avStack_38);
  return;
}

// ---- FUN_00537340  @ 0x537340
void FUN_00537340(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  void *pvVar1;
  void *local_2c;
  _Function_base a_Stack_28 [16];
  
  FUN_00533700(a_Stack_28,param_4);
  pvVar1 = operator_new(0x14);
  FUN_0053372c(pvVar1,a_Stack_28);
  local_2c = pvVar1;
  FUN_005453a8(param_1,param_2,param_3,&local_2c);
  if (local_2c != (void *)0x0) {
    FUN_00536358();
  }
  std::_Function_base::~_Function_base(a_Stack_28);
  return;
}

// ---- FUN_0053739c  @ 0x53739c
function * FUN_0053739c(function *param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  _Function_base a_Stack_58 [8];
  undefined4 local_50;
  _Any_data a_Stack_48 [8];
  undefined4 local_40;
  undefined4 local_3c;
  function<void(std::function<void()>)> afStack_38 [8];
  undefined4 local_30;
  _Any_data a_Stack_28 [8];
  undefined4 local_20;
  undefined4 local_1c;
  
  local_50 = 0;
  local_40 = 0;
  local_30 = 0;
  local_20 = 0;
  std::swap<std::_Any_data>(a_Stack_48,a_Stack_28);
  uVar2 = local_1c;
  uVar1 = local_20;
  *(undefined4 *)(param_1 + 8) = 0;
  local_20 = local_40;
  local_40 = uVar1;
  local_1c = local_3c;
  local_3c = uVar2;
  std::function<void(std::function<void()>)>::swap(afStack_38,param_1);
  *(undefined4 *)(param_1 + 0x18) = 0;
  std::swap<std::_Any_data>(a_Stack_28,(_Any_data *)(param_1 + 0x10));
  uVar1 = *(undefined4 *)(param_1 + 0x18);
  *(undefined4 *)(param_1 + 0x18) = local_20;
  uVar2 = *(undefined4 *)(param_1 + 0x1c);
  *(undefined4 *)(param_1 + 0x1c) = local_1c;
  local_20 = uVar1;
  local_1c = uVar2;
  FUN_0050fd1e(afStack_38);
  std::_Function_base::~_Function_base((_Function_base *)a_Stack_48);
  std::_Function_base::~_Function_base(a_Stack_58);
  return param_1;
}

// ---- FUN_00537458  @ 0x537458
undefined4
FUN_00537458(undefined4 param_1,int *param_2,uint param_3,int param_4,undefined4 param_5,int param_6
            )

{
  longlong lVar1;
  int iVar2;
  int iVar3;
  undefined4 local_38;
  int iStack_34;
  undefined4 local_30;
  int iStack_2c;
  int local_28;
  undefined1 local_24;
  
  iVar2 = FUN_00553a80();
  if (iVar2 != 0) {
    FUN_005166ae(4,"Blocking calls are not allowed from the UI thread.");
    FUN_00548b30(param_1,param_5);
    return param_1;
  }
  local_28 = *param_2;
  local_24 = 0;
  std::unique_lock<std::mutex>::lock((unique_lock<std::mutex> *)&local_28);
  local_24 = 1;
  iVar2 = *param_2;
  if (*(char *)(iVar2 + 8) == '\0') {
    FUN_007bfd24(&local_38);
    lVar1 = (ulonglong)param_3 * 1000000 + CONCAT44(param_4 * 1000000,local_38);
    local_30 = (undefined4)lVar1;
    iStack_2c = iStack_34 + (int)((ulonglong)lVar1 >> 0x20);
    do {
      if (*(char *)(*param_2 + 8) != '\0') goto LAB_005374ee;
      iVar3 = std::condition_variable::
              __wait_until_impl<std::chrono::duration<long_long,std::ratio<1ll,1000000000ll>>>
                        ((unique_lock *)(iVar2 + 4),(time_point *)&local_28);
    } while (iVar3 != 1);
    if (*(char *)(*param_2 + 8) == '\0') goto LAB_005374f4;
  }
LAB_005374ee:
  param_6 = *param_2 + 0xc;
LAB_005374f4:
  FUN_00548b30(param_1,param_6);
  std::unique_lock<std::mutex>::~unique_lock((unique_lock<std::mutex> *)&local_28);
  return param_1;
}

// ---- FUN_00537568  @ 0x537568
void FUN_00537568(function<void(std::function<void()>)> *param_1,SnapshotMetadata *param_2)

{
  _Any_data *p_Var1;
  undefined4 uVar2;
  undefined4 uVar3;
  _Any_data *local_40 [2];
  code *local_38;
  code *local_34;
  function<void(gpg::SnapshotMetadata)> afStack_30 [8];
  undefined4 local_28;
  undefined4 local_24;
  SnapshotMetadata aSStack_20 [8];
  
  if (*(int *)(param_1 + 0x18) != 0) {
    if (*(int *)(param_1 + 8) == 0) {
      gpg::SnapshotMetadata::SnapshotMetadata((SnapshotMetadata *)afStack_30,param_2);
      std::function<void(gpg::SnapshotMetadata)>::operator()
                ((function<void(gpg::SnapshotMetadata)> *)(param_1 + 0x10),afStack_30);
      gpg::SnapshotMetadata::~SnapshotMetadata((SnapshotMetadata *)afStack_30);
    }
    else {
      std::function<void(gpg::SnapshotMetadata)>::function(afStack_30,(function *)(param_1 + 0x10));
      gpg::SnapshotMetadata::SnapshotMetadata(aSStack_20,param_2);
      local_38 = (code *)0x0;
      p_Var1 = operator_new(0x18);
      *(undefined4 *)(p_Var1 + 8) = 0;
      std::swap<std::_Any_data>((_Any_data *)afStack_30,p_Var1);
      uVar2 = *(undefined4 *)(p_Var1 + 8);
      *(undefined4 *)(p_Var1 + 8) = local_28;
      uVar3 = *(undefined4 *)(p_Var1 + 0xc);
      *(undefined4 *)(p_Var1 + 0xc) = local_24;
      local_28 = uVar2;
      local_24 = uVar3;
      gpg::SnapshotMetadata::SnapshotMetadata((SnapshotMetadata *)(p_Var1 + 0x10),aSStack_20);
      local_34 = (code *)0x53753f;
      local_38 = (code *)0x536ee1;
      local_40[0] = p_Var1;
      std::function<void(std::function<void()>)>::operator()(param_1,local_40);
      std::_Function_base::~_Function_base((_Function_base *)local_40);
      gpg::SnapshotMetadata::~SnapshotMetadata(aSStack_20);
      std::_Function_base::~_Function_base((_Function_base *)afStack_30);
    }
  }
  return;
}

// ---- FUN_00537654  @ 0x537654
void FUN_00537654(function<void(std::function<void()>)> *param_1,Quest *param_2)

{
  _Any_data *p_Var1;
  undefined4 uVar2;
  undefined4 uVar3;
  _Any_data *local_40 [2];
  code *local_38;
  code *local_34;
  function<void(gpg::Quest)> afStack_30 [8];
  undefined4 local_28;
  undefined4 local_24;
  Quest aQStack_20 [8];
  
  if (*(int *)(param_1 + 0x18) != 0) {
    if (*(int *)(param_1 + 8) == 0) {
      gpg::Quest::Quest((Quest *)afStack_30,param_2);
      std::function<void(gpg::Quest)>::operator()
                ((function<void(gpg::Quest)> *)(param_1 + 0x10),afStack_30);
      gpg::Quest::~Quest((Quest *)afStack_30);
    }
    else {
      std::function<void(gpg::Quest)>::function(afStack_30,(function *)(param_1 + 0x10));
      gpg::Quest::Quest(aQStack_20,param_2);
      local_38 = (code *)0x0;
      p_Var1 = operator_new(0x18);
      *(undefined4 *)(p_Var1 + 8) = 0;
      std::swap<std::_Any_data>((_Any_data *)afStack_30,p_Var1);
      uVar2 = *(undefined4 *)(p_Var1 + 8);
      *(undefined4 *)(p_Var1 + 8) = local_28;
      uVar3 = *(undefined4 *)(p_Var1 + 0xc);
      *(undefined4 *)(p_Var1 + 0xc) = local_24;
      local_28 = uVar2;
      local_24 = uVar3;
      gpg::Quest::Quest((Quest *)(p_Var1 + 0x10),aQStack_20);
      local_34 = (code *)0x5110a9;
      local_38 = (code *)0x511e3b;
      local_40[0] = p_Var1;
      std::function<void(std::function<void()>)>::operator()(param_1,local_40);
      std::_Function_base::~_Function_base((_Function_base *)local_40);
      gpg::Quest::~Quest(aQStack_20);
      std::_Function_base::~_Function_base((_Function_base *)afStack_30);
    }
  }
  return;
}

// ---- FUN_0053777a  @ 0x53777a
undefined4 FUN_0053777a(undefined4 param_1,int param_2)

{
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_24 [4];
  undefined4 local_20;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_1c [8];
  
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_24,(__weak_count *)(param_2 + 8));
  local_20 = *(undefined4 *)(param_2 + 4);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_1c,(__shared_count *)a_Stack_24);
  FUN_005371e8(param_1,&local_20);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_1c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_24);
  return param_1;
}

// ---- FUN_005377bc  @ 0x5377bc
void FUN_005377bc(int param_1,RealTimeRoom *param_2)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  undefined4 local_48;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_44 [4];
  undefined4 local_40;
  undefined4 local_3c;
  RealTimeRoom aRStack_38 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_34 [4];
  undefined4 *local_30 [2];
  code *local_28;
  undefined1 *local_24;
  
  if (*(int *)(*(int *)(param_1 + 0x1c) + 8) != 0) {
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
              (a_Stack_44,(__weak_count *)(param_1 + 8));
    local_48 = *(undefined4 *)(param_1 + 4);
    FUN_00536af0(&local_40,&local_48);
    gpg::RealTimeRoom::RealTimeRoom(aRStack_38,param_2);
    local_28 = (code *)0x0;
    puVar2 = operator_new(0x10);
    uVar1 = local_3c;
    *puVar2 = local_40;
    puVar2[1] = 0;
    local_3c = 0;
    local_40 = 0;
    puVar2[1] = uVar1;
    gpg::RealTimeRoom::RealTimeRoom((RealTimeRoom *)(puVar2 + 2),aRStack_38);
    local_24 = &LAB_00537044_1;
    local_28 = (code *)0x536b05;
    local_30[0] = puVar2;
    std::function<void(std::function<void()>)>::operator()
              ((function<void(std::function<void()>)> *)(param_1 + 0xc),(_Function_base *)local_30);
    std::_Function_base::~_Function_base((_Function_base *)local_30);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_34);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_3c);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_44);
  }
  return;
}

// ---- FUN_00537898  @ 0x537898
void FUN_00537898(int param_1,RealTimeRoom *param_2)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  undefined4 local_48;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_44 [4];
  undefined4 local_40;
  undefined4 local_3c;
  RealTimeRoom aRStack_38 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_34 [4];
  undefined4 *local_30 [2];
  code *local_28;
  undefined1 *local_24;
  
  if (*(int *)(*(int *)(param_1 + 0x1c) + 0x18) != 0) {
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
              (a_Stack_44,(__weak_count *)(param_1 + 8));
    local_48 = *(undefined4 *)(param_1 + 4);
    FUN_00536af0(&local_40,&local_48);
    gpg::RealTimeRoom::RealTimeRoom(aRStack_38,param_2);
    local_28 = (code *)0x0;
    puVar2 = operator_new(0x10);
    uVar1 = local_3c;
    *puVar2 = local_40;
    puVar2[1] = 0;
    local_3c = 0;
    local_40 = 0;
    puVar2[1] = uVar1;
    gpg::RealTimeRoom::RealTimeRoom((RealTimeRoom *)(puVar2 + 2),aRStack_38);
    local_24 = &LAB_00537050_1;
    local_28 = (code *)0x536b67;
    local_30[0] = puVar2;
    std::function<void(std::function<void()>)>::operator()
              ((function<void(std::function<void()>)> *)(param_1 + 0xc),(_Function_base *)local_30);
    std::_Function_base::~_Function_base((_Function_base *)local_30);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_34);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_3c);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_44);
  }
  return;
}

// ---- FUN_00537974  @ 0x537974
void FUN_00537974(int param_1,RealTimeRoom *param_2,MultiplayerParticipant *param_3)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  undefined4 local_50;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_4c [4];
  undefined4 *local_48 [2];
  code *local_40;
  undefined1 *local_3c;
  undefined4 local_38;
  undefined4 local_34;
  RealTimeRoom aRStack_30 [8];
  MultiplayerParticipant aMStack_28 [12];
  
  if (*(int *)(*(int *)(param_1 + 0x1c) + 0x28) != 0) {
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
              (a_Stack_4c,(__weak_count *)(param_1 + 8));
    local_50 = *(undefined4 *)(param_1 + 4);
    FUN_00536af0(&local_38,&local_50);
    gpg::RealTimeRoom::RealTimeRoom(aRStack_30,param_2);
    gpg::MultiplayerParticipant::MultiplayerParticipant(aMStack_28,param_3);
    local_40 = (code *)0x0;
    puVar2 = operator_new(0x18);
    uVar1 = local_34;
    *puVar2 = local_38;
    puVar2[1] = 0;
    local_34 = 0;
    local_38 = 0;
    puVar2[1] = uVar1;
    gpg::RealTimeRoom::RealTimeRoom((RealTimeRoom *)(puVar2 + 2),aRStack_30);
    gpg::MultiplayerParticipant::MultiplayerParticipant
              ((MultiplayerParticipant *)(puVar2 + 4),aMStack_28);
    local_3c = &LAB_0053706e_1;
    local_40 = (code *)0x536c39;
    local_48[0] = puVar2;
    std::function<void(std::function<void()>)>::operator()
              ((function<void(std::function<void()>)> *)(param_1 + 0xc),(_Function_base *)local_48);
    std::_Function_base::~_Function_base((_Function_base *)local_48);
    FUN_00536884(&local_38);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_4c);
  }
  return;
}

// ---- FUN_00537a60  @ 0x537a60
void FUN_00537a60(int param_1,RealTimeRoom *param_2,MultiplayerParticipant *param_3)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  undefined4 local_50;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_4c [4];
  undefined4 *local_48 [2];
  code *local_40;
  undefined1 *local_3c;
  undefined4 local_38;
  undefined4 local_34;
  RealTimeRoom aRStack_30 [8];
  MultiplayerParticipant aMStack_28 [12];
  
  if (*(int *)(*(int *)(param_1 + 0x1c) + 0x38) != 0) {
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
              (a_Stack_4c,(__weak_count *)(param_1 + 8));
    local_50 = *(undefined4 *)(param_1 + 4);
    FUN_00536af0(&local_38,&local_50);
    gpg::RealTimeRoom::RealTimeRoom(aRStack_30,param_2);
    gpg::MultiplayerParticipant::MultiplayerParticipant(aMStack_28,param_3);
    local_40 = (code *)0x0;
    puVar2 = operator_new(0x18);
    uVar1 = local_34;
    *puVar2 = local_38;
    puVar2[1] = 0;
    local_34 = 0;
    local_38 = 0;
    puVar2[1] = uVar1;
    gpg::RealTimeRoom::RealTimeRoom((RealTimeRoom *)(puVar2 + 2),aRStack_30);
    gpg::MultiplayerParticipant::MultiplayerParticipant
              ((MultiplayerParticipant *)(puVar2 + 4),aMStack_28);
    local_3c = &LAB_00537080_1;
    local_40 = (code *)0x536ca9;
    local_48[0] = puVar2;
    std::function<void(std::function<void()>)>::operator()
              ((function<void(std::function<void()>)> *)(param_1 + 0xc),(_Function_base *)local_48);
    std::_Function_base::~_Function_base((_Function_base *)local_48);
    FUN_005368a0(&local_38);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_4c);
  }
  return;
}

// ---- FUN_00537b4c  @ 0x537b4c
void FUN_00537b4c(int param_1,RealTimeRoom *param_2,MultiplayerParticipant *param_3)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  undefined4 local_50;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_4c [4];
  undefined4 *local_48 [2];
  code *local_40;
  undefined1 *local_3c;
  undefined4 local_38;
  undefined4 local_34;
  RealTimeRoom aRStack_30 [8];
  MultiplayerParticipant aMStack_28 [12];
  
  if (*(int *)(*(int *)(param_1 + 0x1c) + 0x48) != 0) {
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
              (a_Stack_4c,(__weak_count *)(param_1 + 8));
    local_50 = *(undefined4 *)(param_1 + 4);
    FUN_00536af0(&local_38,&local_50);
    gpg::RealTimeRoom::RealTimeRoom(aRStack_30,param_2);
    gpg::MultiplayerParticipant::MultiplayerParticipant(aMStack_28,param_3);
    local_40 = (code *)0x0;
    puVar2 = operator_new(0x18);
    uVar1 = local_34;
    *puVar2 = local_38;
    puVar2[1] = 0;
    local_34 = 0;
    local_38 = 0;
    puVar2[1] = uVar1;
    gpg::RealTimeRoom::RealTimeRoom((RealTimeRoom *)(puVar2 + 2),aRStack_30);
    gpg::MultiplayerParticipant::MultiplayerParticipant
              ((MultiplayerParticipant *)(puVar2 + 4),aMStack_28);
    local_3c = &LAB_00537092_1;
    local_40 = (code *)0x536bc9;
    local_48[0] = puVar2;
    std::function<void(std::function<void()>)>::operator()
              ((function<void(std::function<void()>)> *)(param_1 + 0xc),(_Function_base *)local_48);
    std::_Function_base::~_Function_base((_Function_base *)local_48);
    FUN_005368bc(&local_38);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_4c);
  }
  return;
}

// ---- FUN_00537c38  @ 0x537c38
void FUN_00537c38(int param_1,RealTimeRoom *param_2,MultiplayerParticipant *param_3,vector *param_4,
                 undefined1 param_5)

{
  undefined4 local_60;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_5c [4];
  _Function_base a_Stack_58 [16];
  undefined1 auStack_48 [8];
  RealTimeRoom aRStack_40 [8];
  MultiplayerParticipant aMStack_38 [8];
  vector<unsigned_char,std::allocator<unsigned_char>> avStack_30 [12];
  undefined1 local_24;
  
  if (*(int *)(*(int *)(param_1 + 0x1c) + 0x58) != 0) {
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
              (a_Stack_5c,(__weak_count *)(param_1 + 8));
    local_60 = *(undefined4 *)(param_1 + 4);
    FUN_00536af0(auStack_48,&local_60);
    gpg::RealTimeRoom::RealTimeRoom(aRStack_40,param_2);
    gpg::MultiplayerParticipant::MultiplayerParticipant(aMStack_38,param_3);
    std::vector<unsigned_char,std::allocator<unsigned_char>>::vector(avStack_30,param_4);
    local_24 = param_5;
    std::function<void()>::
    function<gpg::RealTimeEventListenerHelperImpl::WrappedRealTimeEventListener::OnDataReceived(gpg::RealTimeRoom_const&,gpg::MultiplayerParticipant_const&,std::vector<unsigned_char,std::allocator<unsigned_char>>,bool)::_lambda()_1_,void>
              ((function<void()> *)a_Stack_58,auStack_48);
    std::function<void(std::function<void()>)>::operator()
              ((function<void(std::function<void()>)> *)(param_1 + 0xc),a_Stack_58);
    std::_Function_base::~_Function_base(a_Stack_58);
    FUN_00537136(auStack_48);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_5c);
  }
  return;
}

// ---- FUN_00537cd8  @ 0x537cd8
undefined4 * FUN_00537cd8(undefined4 *param_1)

{
  void *pvVar1;
  
  pvVar1 = (void *)*param_1;
  if (pvVar1 != (void *)0x0) {
    FUN_0050a444(pvVar1);
    operator_delete(pvVar1);
  }
  *param_1 = 0;
  return param_1;
}

// ---- FUN_00537cf4  @ 0x537cf4
undefined4
FUN_00537cf4(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5,undefined4 param_6)

{
  undefined4 local_14;
  undefined4 uStack_10;
  undefined4 uStack_c;
  
  local_14 = param_2;
  uStack_10 = param_3;
  uStack_c = param_4;
  FUN_005166ae(4,
               "Resolving Snapshot conflicts with arbitrary merge data is not yet supported on Android.  Returning an error."
               ,param_3,param_4,param_1);
  local_14 = 0xfffffffe;
  gpg::SnapshotMetadata::SnapshotMetadata((SnapshotMetadata *)&uStack_10);
  FUN_00526e34(param_6,&local_14);
  gpg::SnapshotMetadata::~SnapshotMetadata((SnapshotMetadata *)&uStack_10);
  return 1;
}

// ---- FUN_00537d34  @ 0x537d34
undefined4 *
FUN_00537d34(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  void *pvVar1;
  undefined4 *puVar2;
  undefined4 uVar3;
  undefined4 local_14;
  undefined4 uStack_10;
  
  *param_1 = 0;
  param_1[1] = 0;
  local_14 = param_2;
  uStack_10 = param_3;
  pvVar1 = operator_new(0x10);
  *param_1 = pvVar1;
  if (pvVar1 != (void *)0x0) {
    FUN_00548b30(pvVar1,param_4);
  }
  uVar3 = *param_1;
  local_14 = 0;
  puVar2 = operator_new(0x14);
  if (puVar2 != (undefined4 *)0x0) {
    puVar2[1] = 1;
    puVar2[2] = 1;
    puVar2[3] = uVar3;
    *puVar2 = &PTR_LAB_005353a8_1_00925cc8;
  }
  local_14 = param_1[1];
  param_1[1] = puVar2;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_14);
  return param_1;
}

// ---- FUN_00537fdc  @ 0x537fdc
int * FUN_00537fdc(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                  undefined4 param_5,undefined4 *param_6)

{
  void *pvVar1;
  undefined4 *puVar2;
  int iVar3;
  int *local_20;
  undefined4 uStack_1c;
  
  *param_1 = 0;
  *(undefined4 *)(param_1 + 1) = 0;
  local_20 = param_1;
  uStack_1c = param_2;
  pvVar1 = operator_new(0x38);
  *param_1 = (int)pvVar1;
  FUN_005371e8((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_20,param_4);
  if (pvVar1 != (void *)0x0) {
    FUN_00544850(pvVar1,(__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_20,param_5,*param_6);
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&uStack_1c);
  iVar3 = *param_1;
  local_20 = (int *)0x0;
  puVar2 = operator_new(0x14);
  if (puVar2 != (undefined4 *)0x0) {
    puVar2[1] = 1;
    puVar2[2] = 1;
    puVar2[3] = iVar3;
    *puVar2 = &PTR_LAB_005356c8_1_009257c8;
  }
  local_20 = (int *)param_1[1];
  param_1[1] = (int)puVar2;
  iVar3 = *param_1;
  if (iVar3 != 0) {
    *(int *)(iVar3 + 4) = iVar3;
    std::__weak_count<(__gnu_cxx::_Lock_policy)2>::operator=
              ((__weak_count<(__gnu_cxx::_Lock_policy)2> *)(iVar3 + 8),
               (__shared_count *)(param_1 + 1));
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_20);
  return param_1;
}

// ---- FUN_005380a8  @ 0x5380a8
void FUN_005380a8(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 local_38;
  undefined4 uStack_34;
  undefined1 auStack_30 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_2c [4];
  undefined4 local_28;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  
  local_38 = param_3;
  uStack_34 = param_4;
  FUN_0053777a(auStack_30,param_1);
  FUN_00537fdc(&local_28,0,&local_20,auStack_30,param_2,&local_38);
  local_20 = local_28;
  local_1c = local_24;
  local_24 = 0;
  local_28 = 0;
  FUN_005109bc(param_1,&local_20);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_1c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_24);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_2c);
  return;
}

// ---- FUN_00538120  @ 0x538120
int * FUN_00538120(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                  undefined4 param_5,undefined4 *param_6,undefined4 param_7)

{
  void *pvVar1;
  undefined4 *puVar2;
  int iVar3;
  int local_20;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_1c [4];
  
  *param_1 = 0;
  *(undefined4 *)(param_1 + 1) = 0;
  pvVar1 = operator_new(0x48);
  *param_1 = (int)pvVar1;
  FUN_005371e8((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_20,param_4);
  if (pvVar1 != (void *)0x0) {
    FUN_0054e7f0(pvVar1,(__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_20,param_5,param_7,
                 *param_6,param_6[1],param_7);
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_1c);
  iVar3 = *param_1;
  local_20 = 0;
  puVar2 = operator_new(0x14);
  if (puVar2 != (undefined4 *)0x0) {
    puVar2[1] = 1;
    puVar2[2] = 1;
    puVar2[3] = iVar3;
    *puVar2 = &PTR_LAB_00535650_1_00925888;
  }
  local_20 = param_1[1];
  param_1[1] = (int)puVar2;
  iVar3 = *param_1;
  if (iVar3 != 0) {
    *(int *)(iVar3 + 4) = iVar3;
    std::__weak_count<(__gnu_cxx::_Lock_policy)2>::operator=
              ((__weak_count<(__gnu_cxx::_Lock_policy)2> *)(iVar3 + 8),
               (__shared_count *)(param_1 + 1));
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_20);
  return param_1;
}

// ---- FUN_005381f8  @ 0x5381f8
void FUN_005381f8(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                 undefined4 param_5)

{
  undefined4 local_38;
  undefined4 uStack_34;
  undefined1 auStack_30 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_2c [4];
  undefined4 local_28;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  
  local_38 = param_3;
  uStack_34 = param_4;
  FUN_0053777a(auStack_30,param_1);
  FUN_00538120(&local_28,0,&local_20,auStack_30,param_2,&local_38,param_5);
  local_20 = local_28;
  local_1c = local_24;
  local_24 = 0;
  local_28 = 0;
  FUN_005109bc(param_1,&local_20);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_1c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_24);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_2c);
  return;
}

// ---- FUN_00538274  @ 0x538274
int * FUN_00538274(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                  undefined4 param_5)

{
  void *pvVar1;
  undefined4 *puVar2;
  int iVar3;
  int *local_20;
  undefined4 uStack_1c;
  
  *param_1 = 0;
  *(undefined4 *)(param_1 + 1) = 0;
  local_20 = param_1;
  uStack_1c = param_2;
  pvVar1 = operator_new(0x38);
  *param_1 = (int)pvVar1;
  FUN_005371e8((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_20,param_4);
  if (pvVar1 != (void *)0x0) {
    FUN_0055ed38(pvVar1,(__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_20,param_5);
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&uStack_1c);
  iVar3 = *param_1;
  local_20 = (int *)0x0;
  puVar2 = operator_new(0x14);
  if (puVar2 != (undefined4 *)0x0) {
    puVar2[1] = 1;
    puVar2[2] = 1;
    puVar2[3] = iVar3;
    *puVar2 = &PTR_LAB_00535588_1_009259c8;
  }
  local_20 = (int *)param_1[1];
  param_1[1] = (int)puVar2;
  iVar3 = *param_1;
  if (iVar3 != 0) {
    *(int *)(iVar3 + 4) = iVar3;
    std::__weak_count<(__gnu_cxx::_Lock_policy)2>::operator=
              ((__weak_count<(__gnu_cxx::_Lock_policy)2> *)(iVar3 + 8),
               (__shared_count *)(param_1 + 1));
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_20);
  return param_1;
}

// ---- FUN_0053833c  @ 0x53833c
void FUN_0053833c(undefined4 param_1,undefined4 param_2)

{
  undefined1 auStack_30 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_2c [4];
  undefined4 local_28;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  
  FUN_0053777a(auStack_30,param_1);
  FUN_00538274(&local_28,0,&local_20,auStack_30,param_2);
  local_20 = local_28;
  local_1c = local_24;
  local_24 = 0;
  local_28 = 0;
  FUN_005109bc(param_1,&local_20);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_1c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_24);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_2c);
  return;
}

// ---- FUN_005383ac  @ 0x5383ac
void FUN_005383ac(__shared_count *param_1,undefined4 *param_2,undefined4 param_3)

{
  if (param_2 != (undefined4 *)0x0) {
    *param_2 = param_3;
    std::__weak_count<(__gnu_cxx::_Lock_policy)2>::operator=
              ((__weak_count<(__gnu_cxx::_Lock_policy)2> *)(param_2 + 1),param_1);
    return;
  }
  return;
}

// ---- FUN_005383c4  @ 0x5383c4
int * FUN_005383c4(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                  undefined4 param_5,undefined4 param_6)

{
  void *pvVar1;
  undefined4 *puVar2;
  int iVar3;
  int *piVar4;
  undefined4 uStack_24;
  int local_20;
  undefined4 uStack_1c;
  
  *param_1 = 0;
  *(undefined4 *)(param_1 + 1) = 0;
  piVar4 = param_1;
  uStack_24 = param_2;
  local_20 = param_3;
  uStack_1c = param_4;
  pvVar1 = operator_new(0x38);
  *param_1 = (int)pvVar1;
  FUN_005371e8((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_20,param_4);
  FUN_007c64e8(&uStack_24,param_6);
  if (pvVar1 != (void *)0x0) {
    FUN_0055a1c0(pvVar1,(__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_20,param_5,&uStack_24,
                 piVar4);
  }
  FUN_007c5914(&uStack_24);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&uStack_1c);
  iVar3 = *param_1;
  local_20 = 0;
  puVar2 = operator_new(0x14);
  if (puVar2 != (undefined4 *)0x0) {
    puVar2[1] = 1;
    puVar2[2] = 1;
    puVar2[3] = iVar3;
    *puVar2 = &PTR_LAB_00535420_1_00925c08;
  }
  local_20 = param_1[1];
  param_1[1] = (int)puVar2;
  iVar3 = *param_1;
  if (iVar3 != 0) {
    *(int *)(iVar3 + 4) = iVar3;
    std::__weak_count<(__gnu_cxx::_Lock_policy)2>::operator=
              ((__weak_count<(__gnu_cxx::_Lock_policy)2> *)(iVar3 + 8),
               (__shared_count *)(param_1 + 1));
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_20);
  return param_1;
}

// ---- FUN_005384ac  @ 0x5384ac
void FUN_005384ac(undefined4 param_1,undefined4 param_2)

{
  undefined1 auStack_30 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_2c [4];
  undefined4 local_28;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  
  FUN_0053777a(auStack_30,param_1);
  FUN_005383c4(&local_28,0,&local_20,auStack_30,"declineInvitation",param_2);
  local_20 = local_28;
  local_1c = local_24;
  local_24 = 0;
  local_28 = 0;
  FUN_005109bc(param_1,&local_20);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_1c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_24);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_2c);
  return;
}

// ---- FUN_00538524  @ 0x538524
void FUN_00538524(undefined4 param_1,undefined4 param_2)

{
  undefined1 auStack_30 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_2c [4];
  undefined4 local_28;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  
  FUN_0053777a(auStack_30,param_1);
  FUN_005383c4(&local_28,0,&local_20,auStack_30,"dismissInvitation",param_2);
  local_20 = local_28;
  local_1c = local_24;
  local_24 = 0;
  local_28 = 0;
  FUN_005109bc(param_1,&local_20);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_1c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_24);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_2c);
  return;
}

// ---- FUN_0053859c  @ 0x53859c
int * FUN_0053859c(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  void *pvVar1;
  undefined4 *puVar2;
  int iVar3;
  int *local_20;
  undefined4 uStack_1c;
  
  *param_1 = 0;
  *(undefined4 *)(param_1 + 1) = 0;
  local_20 = param_1;
  uStack_1c = param_2;
  pvVar1 = operator_new(0x30);
  *param_1 = (int)pvVar1;
  FUN_005371e8((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_20,param_4);
  if (pvVar1 != (void *)0x0) {
    FUN_0054367c(pvVar1,(__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_20);
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&uStack_1c);
  iVar3 = *param_1;
  local_20 = (int *)0x0;
  puVar2 = operator_new(0x14);
  if (puVar2 != (undefined4 *)0x0) {
    puVar2[1] = 1;
    puVar2[2] = 1;
    puVar2[3] = iVar3;
    *puVar2 = &PTR_LAB_005353bc_1_00925ca8;
  }
  local_20 = (int *)param_1[1];
  param_1[1] = (int)puVar2;
  iVar3 = *param_1;
  if (iVar3 != 0) {
    *(int *)(iVar3 + 4) = iVar3;
    std::__weak_count<(__gnu_cxx::_Lock_policy)2>::operator=
              ((__weak_count<(__gnu_cxx::_Lock_policy)2> *)(iVar3 + 8),
               (__shared_count *)(param_1 + 1));
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_20);
  return param_1;
}

// ---- FUN_005386dc  @ 0x5386dc
int * FUN_005386dc(int *param_1,undefined4 param_2,undefined4 param_3,function *param_4,
                  undefined4 param_5)

{
  undefined4 *puVar1;
  void *pvVar2;
  int iVar3;
  int local_38 [5];
  
  *param_1 = 0;
  *(undefined4 *)(param_1 + 1) = 0;
  puVar1 = operator_new(0x20);
  *param_1 = (int)puVar1;
  std::function<void(std::function<void()>)>::function
            ((function<void(std::function<void()>)> *)local_38,param_4);
  if (puVar1 != (undefined4 *)0x0) {
    puVar1[1] = 0;
    puVar1[2] = 0;
    *puVar1 = &PTR_FUN_005370b4_1_00925568;
    std::function<void(std::function<void()>)>::function
              ((function<void(std::function<void()>)> *)(puVar1 + 3),(function *)local_38);
    pvVar2 = operator_new(0x60);
    FUN_00536f98(pvVar2,param_5);
    puVar1[7] = pvVar2;
  }
  std::_Function_base::~_Function_base((_Function_base *)local_38);
  iVar3 = *param_1;
  local_38[0] = 0;
  puVar1 = operator_new(0x14);
  if (puVar1 != (undefined4 *)0x0) {
    puVar1[1] = 1;
    puVar1[2] = 1;
    puVar1[3] = iVar3;
    *puVar1 = &PTR_LAB_00535380_1_00925d08;
  }
  local_38[0] = param_1[1];
  param_1[1] = (int)puVar1;
  iVar3 = *param_1;
  if (iVar3 != 0) {
    *(int *)(iVar3 + 4) = iVar3;
    std::__weak_count<(__gnu_cxx::_Lock_policy)2>::operator=
              ((__weak_count<(__gnu_cxx::_Lock_policy)2> *)(iVar3 + 8),
               (__shared_count *)(param_1 + 1));
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_38);
  return param_1;
}

// ---- FUN_00538800  @ 0x538800
undefined4 * FUN_00538800(undefined4 *param_1,undefined4 param_2,undefined4 *param_3)

{
  undefined4 local_20;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_1c [4];
  undefined4 local_18;
  undefined4 local_14;
  
  FUN_005386dc(&local_20,0,&local_18,param_2,*param_3);
  local_18 = local_20;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_14,(__shared_count *)a_Stack_1c);
  *param_1 = local_18;
  param_1[1] = local_14;
  local_14 = 0;
  local_18 = 0;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_14);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_1c);
  return param_1;
}

// ---- FUN_0053884c  @ 0x53884c
int * FUN_0053884c(int *param_1,undefined4 param_2,int param_3,undefined4 param_4,undefined4 param_5
                  ,undefined4 param_6)

{
  void *pvVar1;
  int iVar2;
  int iVar3;
  int *piStack_28;
  undefined4 uStack_24;
  int local_20;
  undefined4 uStack_1c;
  
  *param_1 = 0;
  *(undefined4 *)(param_1 + 1) = 0;
  piStack_28 = param_1;
  uStack_24 = param_2;
  local_20 = param_3;
  uStack_1c = param_4;
  pvVar1 = operator_new(0x40);
  *param_1 = (int)pvVar1;
  FUN_005371e8((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_20,param_4);
  if (pvVar1 != (void *)0x0) {
    FUN_005347b8(pvVar1,(__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_20,param_5,param_6);
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&uStack_1c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::
  __shared_count<gpg::AndroidGameServicesImpl::AchievementModifyOperation*,std::__shared_ptr<gpg::AndroidGameServicesImpl::AchievementModifyOperation,(__gnu_cxx::_Lock_policy)2>::_Deleter<std::allocator<gpg::AndroidGameServicesImpl::AchievementModifyOperation>>,std::allocator<gpg::AndroidGameServicesImpl::AchievementModifyOperation>>
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_20,*param_1,&piStack_28,&uStack_24
            );
  iVar3 = param_1[1];
  iVar2 = *param_1;
  param_1[1] = local_20;
  local_20 = iVar3;
  if (iVar2 != 0) {
    *(int *)(iVar2 + 4) = iVar2;
    std::__weak_count<(__gnu_cxx::_Lock_policy)2>::operator=
              ((__weak_count<(__gnu_cxx::_Lock_policy)2> *)(iVar2 + 8),
               (__shared_count *)(param_1 + 1));
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_20);
  return param_1;
}

// ---- FUN_005388e4  @ 0x5388e4
void FUN_005388e4(undefined4 param_1,undefined4 param_2)

{
  undefined1 auStack_30 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_2c [4];
  undefined4 local_28;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  
  FUN_0053777a(auStack_30,param_1);
  FUN_0053884c(&local_28,0,&local_20,auStack_30,"reveal",param_2);
  local_20 = local_28;
  local_1c = local_24;
  local_24 = 0;
  local_28 = 0;
  FUN_005109bc(param_1,&local_20);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_1c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_24);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_2c);
  return;
}

// ---- FUN_0053895c  @ 0x53895c
void FUN_0053895c(undefined4 param_1,undefined4 param_2)

{
  undefined1 auStack_30 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_2c [4];
  undefined4 local_28;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  
  FUN_0053777a(auStack_30,param_1);
  FUN_0053884c(&local_28,0,&local_20,auStack_30,"unlock",param_2);
  local_20 = local_28;
  local_1c = local_24;
  local_24 = 0;
  local_28 = 0;
  FUN_005109bc(param_1,&local_20);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_1c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_24);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_2c);
  return;
}

// ---- FUN_005389d4  @ 0x5389d4
int * FUN_005389d4(int *param_1,undefined4 param_2,int param_3,undefined4 param_4,undefined4 param_5
                  ,undefined4 param_6)

{
  void *pvVar1;
  int iVar2;
  int iVar3;
  int *piStack_28;
  undefined4 uStack_24;
  int local_20;
  undefined4 uStack_1c;
  
  *param_1 = 0;
  *(undefined4 *)(param_1 + 1) = 0;
  piStack_28 = param_1;
  uStack_24 = param_2;
  local_20 = param_3;
  uStack_1c = param_4;
  pvVar1 = operator_new(0x38);
  *param_1 = (int)pvVar1;
  FUN_005371e8((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_20,param_4);
  if (pvVar1 != (void *)0x0) {
    FUN_005647b8(pvVar1,(__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_20,param_5,param_6);
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&uStack_1c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::
  __shared_count<gpg::AndroidGameServicesImpl::TBMPModifyMatchOperation*,std::__shared_ptr<gpg::AndroidGameServicesImpl::TBMPModifyMatchOperation,(__gnu_cxx::_Lock_policy)2>::_Deleter<std::allocator<gpg::AndroidGameServicesImpl::TBMPModifyMatchOperation>>,std::allocator<gpg::AndroidGameServicesImpl::TBMPModifyMatchOperation>>
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_20,*param_1,&piStack_28,&uStack_24
            );
  iVar3 = param_1[1];
  iVar2 = *param_1;
  param_1[1] = local_20;
  local_20 = iVar3;
  if (iVar2 != 0) {
    *(int *)(iVar2 + 4) = iVar2;
    std::__weak_count<(__gnu_cxx::_Lock_policy)2>::operator=
              ((__weak_count<(__gnu_cxx::_Lock_policy)2> *)(iVar2 + 8),
               (__shared_count *)(param_1 + 1));
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_20);
  return param_1;
}

// ---- FUN_00538a6c  @ 0x538a6c
void FUN_00538a6c(undefined4 param_1,undefined4 param_2)

{
  undefined1 auStack_30 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_2c [4];
  undefined4 local_28;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  
  FUN_0053777a(auStack_30,param_1);
  FUN_005389d4(&local_28,0,&local_20,auStack_30,"declineInvitation",param_2);
  local_20 = local_28;
  local_1c = local_24;
  local_24 = 0;
  local_28 = 0;
  FUN_005109bc(param_1,&local_20);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_1c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_24);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_2c);
  return;
}

// ---- FUN_00538ae4  @ 0x538ae4
void FUN_00538ae4(undefined4 param_1,undefined4 param_2)

{
  undefined1 auStack_30 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_2c [4];
  undefined4 local_28;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  
  FUN_0053777a(auStack_30,param_1);
  FUN_005389d4(&local_28,0,&local_20,auStack_30,"dismissInvitation",param_2);
  local_20 = local_28;
  local_1c = local_24;
  local_24 = 0;
  local_28 = 0;
  FUN_005109bc(param_1,&local_20);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_1c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_24);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_2c);
  return;
}

// ---- FUN_00538b5c  @ 0x538b5c
void FUN_00538b5c(undefined4 param_1,RealTimeRoom *param_2,undefined4 param_3)

{
  undefined4 uVar1;
  void *pvVar2;
  undefined1 auStack_54 [4];
  undefined1 auStack_50 [4];
  undefined1 auStack_4c [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_48 [4];
  void *local_44;
  undefined4 local_40;
  void *local_3c;
  undefined4 local_38;
  undefined4 local_34;
  undefined4 local_30;
  undefined4 local_2c;
  
  FUN_0053777a(auStack_4c,param_1);
  uVar1 = gpg::RealTimeRoom::Id(param_2);
  local_34 = 0;
  local_30 = 0;
  local_2c = 0;
  local_44 = (void *)0x0;
  local_40 = 0;
  pvVar2 = operator_new(0x50);
  local_44 = pvVar2;
  FUN_005371e8((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_3c,auStack_4c);
  if (pvVar2 != (void *)0x0) {
    FUN_0055b0ec(pvVar2,(__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_3c,1,uVar1,param_3,
                 (vector<std::string,std::allocator<std::string>> *)&local_34);
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_38);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::
  __shared_count<gpg::AndroidGameServicesImpl::RTMPSendUnreliableOperation*,std::__shared_ptr<gpg::AndroidGameServicesImpl::RTMPSendUnreliableOperation,(__gnu_cxx::_Lock_policy)2>::_Deleter<std::allocator<gpg::AndroidGameServicesImpl::RTMPSendUnreliableOperation>>,std::allocator<gpg::AndroidGameServicesImpl::RTMPSendUnreliableOperation>>
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_3c,local_44,auStack_50,auStack_54)
  ;
  uVar1 = local_40;
  local_40 = local_3c;
  local_3c = (void *)uVar1;
  if (local_44 != (void *)0x0) {
    *(void **)((int)local_44 + 4) = local_44;
    std::__weak_count<(__gnu_cxx::_Lock_policy)2>::operator=
              ((__weak_count<(__gnu_cxx::_Lock_policy)2> *)((int)local_44 + 8),
               (__shared_count *)&local_40);
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_3c);
  local_3c = local_44;
  local_38 = local_40;
  local_40 = 0;
  local_44 = (void *)0x0;
  FUN_005109bc(param_1,(__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_3c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_38);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_40);
  std::vector<std::string,std::allocator<std::string>>::~vector
            ((vector<std::string,std::allocator<std::string>> *)&local_34);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_48);
  return;
}

// ---- FUN_00538e18  @ 0x538e18
void FUN_00538e18(undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 uVar1;
  void *pvVar2;
  undefined1 auStack_40 [4];
  undefined1 auStack_3c [4];
  undefined1 auStack_38 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_34 [4];
  void *local_30;
  undefined4 local_2c;
  void *local_28;
  undefined4 local_24;
  
  FUN_0053777a(auStack_38,param_1);
  local_30 = (void *)0x0;
  local_2c = 0;
  pvVar2 = operator_new(0x40);
  local_30 = pvVar2;
  FUN_005371e8((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_28,auStack_38);
  if (pvVar2 != (void *)0x0) {
    FUN_00534768(pvVar2,(__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_28,"setSteps",param_2,
                 param_3);
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_24);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::
  __shared_count<gpg::AndroidGameServicesImpl::AchievementModifyOperation*,std::__shared_ptr<gpg::AndroidGameServicesImpl::AchievementModifyOperation,(__gnu_cxx::_Lock_policy)2>::_Deleter<std::allocator<gpg::AndroidGameServicesImpl::AchievementModifyOperation>>,std::allocator<gpg::AndroidGameServicesImpl::AchievementModifyOperation>>
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_28,local_30,auStack_3c,auStack_40)
  ;
  uVar1 = local_2c;
  local_2c = local_28;
  local_28 = (void *)uVar1;
  if (local_30 != (void *)0x0) {
    *(void **)((int)local_30 + 4) = local_30;
    std::__weak_count<(__gnu_cxx::_Lock_policy)2>::operator=
              ((__weak_count<(__gnu_cxx::_Lock_policy)2> *)((int)local_30 + 8),
               (__shared_count *)&local_2c);
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_28);
  local_28 = local_30;
  local_24 = local_2c;
  local_2c = 0;
  local_30 = (void *)0x0;
  FUN_005109bc(param_1,(__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_28);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_24);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_2c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_34);
  return;
}

// ---- FUN_00538ef8  @ 0x538ef8
void FUN_00538ef8(undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 uVar1;
  void *pvVar2;
  undefined1 auStack_40 [4];
  undefined1 auStack_3c [4];
  undefined1 auStack_38 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_34 [4];
  void *local_30;
  undefined4 local_2c;
  void *local_28;
  undefined4 local_24;
  
  FUN_0053777a(auStack_38,param_1);
  local_30 = (void *)0x0;
  local_2c = 0;
  pvVar2 = operator_new(0x40);
  local_30 = pvVar2;
  FUN_005371e8((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_28,auStack_38);
  if (pvVar2 != (void *)0x0) {
    FUN_00534768(pvVar2,(__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_28,"increment",param_2,
                 param_3);
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_24);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::
  __shared_count<gpg::AndroidGameServicesImpl::AchievementModifyOperation*,std::__shared_ptr<gpg::AndroidGameServicesImpl::AchievementModifyOperation,(__gnu_cxx::_Lock_policy)2>::_Deleter<std::allocator<gpg::AndroidGameServicesImpl::AchievementModifyOperation>>,std::allocator<gpg::AndroidGameServicesImpl::AchievementModifyOperation>>
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_28,local_30,auStack_3c,auStack_40)
  ;
  uVar1 = local_2c;
  local_2c = local_28;
  local_28 = (void *)uVar1;
  if (local_30 != (void *)0x0) {
    *(void **)((int)local_30 + 4) = local_30;
    std::__weak_count<(__gnu_cxx::_Lock_policy)2>::operator=
              ((__weak_count<(__gnu_cxx::_Lock_policy)2> *)((int)local_30 + 8),
               (__shared_count *)&local_2c);
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_28);
  local_28 = local_30;
  local_24 = local_2c;
  local_2c = 0;
  local_30 = (void *)0x0;
  FUN_005109bc(param_1,(__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_28);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_24);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_2c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_34);
  return;
}

// ---- FUN_00538fd8  @ 0x538fd8
int * FUN_00538fd8(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                  function *param_5,undefined4 *param_6)

{
  void *pvVar1;
  undefined4 *puVar2;
  int iVar3;
  undefined1 auStack_48 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_44 [4];
  int local_40 [4];
  function<void(gpg::AchievementManager::FetchAllResponse_const&)> afStack_30 [20];
  
  *param_1 = 0;
  *(undefined4 *)(param_1 + 1) = 0;
  pvVar1 = operator_new(0x58);
  *param_1 = (int)pvVar1;
  FUN_005371e8(auStack_48,param_4);
  std::function<void(std::function<void()>)>::function
            ((function<void(std::function<void()>)> *)local_40,param_5);
  std::function<void(gpg::AchievementManager::FetchAllResponse_const&)>::function
            (afStack_30,param_5 + 0x10);
  if (pvVar1 != (void *)0x0) {
    FUN_00533620(pvVar1,auStack_48,(function<void(std::function<void()>)> *)local_40,*param_6);
  }
  FUN_0050812e((function<void(std::function<void()>)> *)local_40);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_44);
  iVar3 = *param_1;
  local_40[0] = 0;
  puVar2 = operator_new(0x14);
  if (puVar2 != (undefined4 *)0x0) {
    puVar2[1] = 1;
    puVar2[2] = 1;
    puVar2[3] = iVar3;
    *puVar2 = &PTR_LAB_0053577c_1_009256a8;
  }
  local_40[0] = param_1[1];
  param_1[1] = (int)puVar2;
  iVar3 = *param_1;
  if (iVar3 != 0) {
    *(int *)(iVar3 + 4) = iVar3;
    std::__weak_count<(__gnu_cxx::_Lock_policy)2>::operator=
              ((__weak_count<(__gnu_cxx::_Lock_policy)2> *)(iVar3 + 8),
               (__shared_count *)(param_1 + 1));
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_40);
  return param_1;
}

// ---- FUN_005390e0  @ 0x5390e0
undefined4 FUN_005390e0(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  undefined4 uVar2;
  undefined4 local_3c;
  undefined1 auStack_38 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_34 [4];
  undefined4 local_30;
  undefined4 local_2c;
  undefined4 local_28;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  
  local_3c = param_2;
  iVar1 = FUN_007c5724(param_3,&DAT_00800efc);
  if (iVar1 == 0) {
    FUN_0053777a(auStack_38,param_1);
    FUN_00538fd8(&local_30,0,&local_28,auStack_38,param_4,&local_3c);
    local_28 = local_30;
    local_24 = local_2c;
    local_2c = 0;
    local_30 = 0;
    uVar2 = FUN_00510986(param_1,&local_28);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_24);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_2c);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_34);
  }
  else {
    FUN_005166ae(4,"Android AchievementFetchAll expecting \"me\" for player_id");
    local_24 = 0;
    local_28 = 0xfffffffe;
    local_20 = 0;
    local_1c = 0;
    FUN_00508d64(param_4,&local_28);
    uVar2 = 1;
    std::vector<gpg::Achievement,std::allocator<gpg::Achievement>>::~vector
              ((vector<gpg::Achievement,std::allocator<gpg::Achievement>> *)&local_24);
  }
  return uVar2;
}

// ---- FUN_005391a4  @ 0x5391a4
int * FUN_005391a4(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                  function *param_5,undefined4 *param_6,undefined4 param_7)

{
  void *pvVar1;
  undefined4 *puVar2;
  int iVar3;
  undefined1 auStack_48 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_44 [4];
  int local_40 [4];
  function<void(gpg::LeaderboardManager::FetchAllScoreSummariesResponse_const&)> afStack_30 [20];
  
  *param_1 = 0;
  *(undefined4 *)(param_1 + 1) = 0;
  pvVar1 = operator_new(0x60);
  *param_1 = (int)pvVar1;
  FUN_005371e8(auStack_48,param_4);
  std::function<void(std::function<void()>)>::function
            ((function<void(std::function<void()>)> *)local_40,param_5);
  std::function<void(gpg::LeaderboardManager::FetchAllScoreSummariesResponse_const&)>::function
            (afStack_30,param_5 + 0x10);
  if (pvVar1 != (void *)0x0) {
    FUN_0054a7d0(pvVar1,auStack_48,(function<void(std::function<void()>)> *)local_40,*param_6,
                 param_7);
  }
  FUN_00512f2c((function<void(std::function<void()>)> *)local_40);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_44);
  iVar3 = *param_1;
  local_40[0] = 0;
  puVar2 = operator_new(0x14);
  if (puVar2 != (undefined4 *)0x0) {
    puVar2[1] = 1;
    puVar2[2] = 1;
    puVar2[3] = iVar3;
    *puVar2 = &PTR_LAB_00535678_1_00925848;
  }
  local_40[0] = param_1[1];
  param_1[1] = (int)puVar2;
  iVar3 = *param_1;
  if (iVar3 != 0) {
    *(int *)(iVar3 + 4) = iVar3;
    std::__weak_count<(__gnu_cxx::_Lock_policy)2>::operator=
              ((__weak_count<(__gnu_cxx::_Lock_policy)2> *)(iVar3 + 8),
               (__shared_count *)(param_1 + 1));
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_40);
  return param_1;
}

// ---- FUN_005392b0  @ 0x5392b0
undefined4 FUN_005392b0(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  undefined4 local_3c;
  undefined1 auStack_38 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_34 [4];
  undefined4 local_30;
  undefined4 local_2c;
  undefined4 local_28;
  undefined4 local_24 [2];
  
  local_3c = param_2;
  FUN_0053777a(auStack_38,param_1);
  FUN_005391a4(&local_30,0,&local_28,auStack_38,param_4,&local_3c,param_3);
  local_28 = local_30;
  local_24[0] = local_2c;
  local_2c = 0;
  local_30 = 0;
  uVar1 = FUN_00510986(param_1,&local_28);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_24);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_2c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_34);
  return uVar1;
}

// ---- FUN_00539330  @ 0x539330
int * FUN_00539330(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                  undefined4 param_5,undefined4 param_6,undefined4 param_7,undefined4 param_8)

{
  void *pvVar1;
  undefined4 *puVar2;
  int iVar3;
  undefined1 auStack_40 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_3c [4];
  int local_38 [8];
  
  *param_1 = 0;
  *(undefined4 *)(param_1 + 1) = 0;
  pvVar1 = operator_new(0x68);
  *param_1 = (int)pvVar1;
  FUN_005371e8(auStack_40,param_4);
  FUN_00526a4e((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_38,param_5);
  if (pvVar1 != (void *)0x0) {
    FUN_005608a0(pvVar1,auStack_40,(__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_38,param_6,
                 param_7,param_8);
  }
  FUN_005267ea((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_38);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_3c);
  iVar3 = *param_1;
  local_38[0] = 0;
  puVar2 = operator_new(0x14);
  if (puVar2 != (undefined4 *)0x0) {
    puVar2[1] = 1;
    puVar2[2] = 1;
    puVar2[3] = iVar3;
    *puVar2 = &PTR_LAB_00535538_1_00925a48;
  }
  local_38[0] = param_1[1];
  param_1[1] = (int)puVar2;
  iVar3 = *param_1;
  if (iVar3 != 0) {
    *(int *)(iVar3 + 4) = iVar3;
    std::__weak_count<(__gnu_cxx::_Lock_policy)2>::operator=
              ((__weak_count<(__gnu_cxx::_Lock_policy)2> *)(iVar3 + 8),
               (__shared_count *)(param_1 + 1));
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_38);
  return param_1;
}

// ---- FUN_00539424  @ 0x539424
undefined4
FUN_00539424(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5)

{
  undefined4 uVar1;
  undefined1 auStack_38 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_34 [4];
  undefined4 local_30;
  undefined4 local_2c;
  undefined4 local_28;
  undefined4 local_24;
  
  FUN_0053777a(auStack_38,param_1);
  FUN_00539330(&local_30,0,&local_28,auStack_38,param_5,param_2,param_3,param_4);
  local_28 = local_30;
  local_24 = local_2c;
  local_2c = 0;
  local_30 = 0;
  uVar1 = FUN_00510986(param_1,&local_28);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_24);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_2c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_34);
  return uVar1;
}

// ---- FUN_005394a0  @ 0x5394a0
int * FUN_005394a0(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                  undefined4 param_5,undefined4 param_6,_Vector_base *param_7,undefined4 param_8)

{
  void *pvVar1;
  undefined4 *puVar2;
  int iVar3;
  undefined1 auStack_54 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_50 [4];
  _Vector_base<unsigned_char,std::allocator<unsigned_char>> a_Stack_4c [12];
  int local_40 [9];
  
  *param_1 = 0;
  *(undefined4 *)(param_1 + 1) = 0;
  pvVar1 = operator_new(0x70);
  *param_1 = (int)pvVar1;
  FUN_005371e8(auStack_54,param_4);
  std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::_Vector_base(a_Stack_4c,param_7);
  FUN_00526a4e((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_40,param_8);
  if (pvVar1 != (void *)0x0) {
    FUN_0055e608(pvVar1,auStack_54,param_5,param_6,a_Stack_4c,
                 (__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_40);
  }
  FUN_005267ea((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_40);
  std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::~_Vector_base(a_Stack_4c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_50);
  iVar3 = *param_1;
  local_40[0] = 0;
  puVar2 = operator_new(0x14);
  if (puVar2 != (undefined4 *)0x0) {
    puVar2[1] = 1;
    puVar2[2] = 1;
    puVar2[3] = iVar3;
    *puVar2 = &PTR_LAB_005355b0_1_00925988;
  }
  local_40[0] = param_1[1];
  param_1[1] = (int)puVar2;
  iVar3 = *param_1;
  if (iVar3 != 0) {
    *(int *)(iVar3 + 4) = iVar3;
    std::__weak_count<(__gnu_cxx::_Lock_policy)2>::operator=
              ((__weak_count<(__gnu_cxx::_Lock_policy)2> *)(iVar3 + 8),
               (__shared_count *)(param_1 + 1));
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_40);
  return param_1;
}

// ---- FUN_005395a8  @ 0x5395a8
undefined4
FUN_005395a8(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5)

{
  undefined4 uVar1;
  undefined1 auStack_38 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_34 [4];
  undefined4 local_30;
  undefined4 local_2c;
  undefined4 local_28;
  undefined4 local_24;
  
  FUN_0053777a(auStack_38,param_1);
  FUN_005394a0(&local_30,0,&local_28,auStack_38,param_2,param_3,param_4,param_5);
  local_28 = local_30;
  local_24 = local_2c;
  local_2c = 0;
  local_30 = 0;
  uVar1 = FUN_00510986(param_1,&local_28);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_24);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_2c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_34);
  return uVar1;
}

// ---- FUN_00539624  @ 0x539624
undefined4 * FUN_00539624(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_00539624_1_00925590;
  FUN_0051f9f4(param_1 + 0xc);
  FUN_00533468(param_1);
  return param_1;
}

// ---- FUN_00539644  @ 0x539644
void * FUN_00539644(void *param_1)

{
  FUN_00539624();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_00539658  @ 0x539658
undefined4 * FUN_00539658(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_00539658_1_009255e8;
  FUN_00539624();
  return param_1;
}

// ---- FUN_00539670  @ 0x539670
void * FUN_00539670(void *param_1)

{
  FUN_00539658();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_00539684  @ 0x539684
int * FUN_00539684(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                  function *param_5,undefined4 *param_6,undefined4 param_7)

{
  void *pvVar1;
  undefined4 *puVar2;
  int iVar3;
  undefined1 auStack_48 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_44 [4];
  int local_40 [4];
  function<void(gpg::AchievementManager::FetchResponse_const&)> afStack_30 [20];
  
  *param_1 = 0;
  *(undefined4 *)(param_1 + 1) = 0;
  pvVar1 = operator_new(0x58);
  *param_1 = (int)pvVar1;
  FUN_005371e8(auStack_48,param_4);
  std::function<void(std::function<void()>)>::function
            ((function<void(std::function<void()>)> *)local_40,param_5);
  std::function<void(gpg::AchievementManager::FetchResponse_const&)>::function
            (afStack_30,param_5 + 0x10);
  if (pvVar1 != (void *)0x0) {
    FUN_00534050(pvVar1,auStack_48,(function<void(std::function<void()>)> *)local_40,*param_6,
                 param_7);
  }
  FUN_0050818c((function<void(std::function<void()>)> *)local_40);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_44);
  iVar3 = *param_1;
  local_40[0] = 0;
  puVar2 = operator_new(0x14);
  if (puVar2 != (undefined4 *)0x0) {
    puVar2[1] = 1;
    puVar2[2] = 1;
    puVar2[3] = iVar3;
    *puVar2 = &PTR_LAB_00535768_1_009256c8;
  }
  local_40[0] = param_1[1];
  param_1[1] = (int)puVar2;
  iVar3 = *param_1;
  if (iVar3 != 0) {
    *(int *)(iVar3 + 4) = iVar3;
    std::__weak_count<(__gnu_cxx::_Lock_policy)2>::operator=
              ((__weak_count<(__gnu_cxx::_Lock_policy)2> *)(iVar3 + 8),
               (__shared_count *)(param_1 + 1));
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_40);
  return param_1;
}

// ---- FUN_00539790  @ 0x539790
undefined4 FUN_00539790(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  undefined4 local_3c;
  undefined1 auStack_38 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_34 [4];
  undefined4 local_30;
  undefined4 local_2c;
  undefined4 local_28;
  undefined4 local_24 [2];
  
  local_3c = param_2;
  FUN_0053777a(auStack_38,param_1);
  FUN_00539684(&local_30,0,&local_28,auStack_38,param_4,&local_3c,param_3);
  local_28 = local_30;
  local_24[0] = local_2c;
  local_2c = 0;
  local_30 = 0;
  uVar1 = FUN_00510986(param_1,&local_28);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_24);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_2c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_34);
  return uVar1;
}

// ---- FUN_00539810  @ 0x539810
int * FUN_00539810(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                  undefined4 param_5,undefined4 *param_6,undefined4 param_7)

{
  void *pvVar1;
  undefined4 *puVar2;
  int iVar3;
  undefined4 uVar4;
  undefined1 auStack_48 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_44 [4];
  int local_40 [9];
  
  *param_1 = 0;
  *(undefined4 *)(param_1 + 1) = 0;
  pvVar1 = operator_new(0x60);
  *param_1 = (int)pvVar1;
  FUN_005371e8(auStack_48,param_4);
  uVar4 = *param_6;
  FUN_0051344a((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_40,param_7);
  if (pvVar1 != (void *)0x0) {
    FUN_0054e508(pvVar1,auStack_48,param_5,uVar4,
                 (__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_40);
  }
  FUN_005082ea((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_40);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_44);
  iVar3 = *param_1;
  local_40[0] = 0;
  puVar2 = operator_new(0x14);
  if (puVar2 != (undefined4 *)0x0) {
    puVar2[1] = 1;
    puVar2[2] = 1;
    puVar2[3] = iVar3;
    *puVar2 = &PTR_LAB_00535628_1_009258c8;
  }
  local_40[0] = param_1[1];
  param_1[1] = (int)puVar2;
  iVar3 = *param_1;
  if (iVar3 != 0) {
    *(int *)(iVar3 + 4) = iVar3;
    std::__weak_count<(__gnu_cxx::_Lock_policy)2>::operator=
              ((__weak_count<(__gnu_cxx::_Lock_policy)2> *)(iVar3 + 8),
               (__shared_count *)(param_1 + 1));
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_40);
  return param_1;
}

// ---- FUN_00539904  @ 0x539904
undefined4 FUN_00539904(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  undefined4 local_44;
  undefined4 local_40;
  __shared_count a_Stack_3c [4];
  undefined4 local_38;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_34 [4];
  undefined4 local_30;
  undefined4 local_2c;
  undefined4 local_28;
  undefined4 local_24;
  
  local_44 = param_3;
  FUN_0053777a(&local_40,param_1);
  local_38 = local_40;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count(a_Stack_34,a_Stack_3c);
  FUN_00539810(&local_30,0,&local_28,&local_38,param_2,&local_44,param_4);
  local_28 = local_30;
  local_24 = local_2c;
  local_2c = 0;
  local_30 = 0;
  uVar1 = FUN_005109f2(param_1,&local_28);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_24);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_2c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_34);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)a_Stack_3c);
  return uVar1;
}

// ---- FUN_005399a0  @ 0x5399a0
int * FUN_005399a0(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                  undefined4 param_5)

{
  void *pvVar1;
  undefined4 *puVar2;
  int iVar3;
  undefined1 auStack_40 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_3c [4];
  int local_38 [8];
  
  *param_1 = 0;
  *(undefined4 *)(param_1 + 1) = 0;
  pvVar1 = operator_new(0x58);
  *param_1 = (int)pvVar1;
  FUN_005371e8(auStack_40,param_4);
  FUN_0051344a((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_38,param_5);
  if (pvVar1 != (void *)0x0) {
    FUN_0054e20c(pvVar1,auStack_40,(__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_38);
  }
  FUN_005082ea((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_38);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_3c);
  iVar3 = *param_1;
  local_38[0] = 0;
  puVar2 = operator_new(0x14);
  if (puVar2 != (undefined4 *)0x0) {
    puVar2[1] = 1;
    puVar2[2] = 1;
    puVar2[3] = iVar3;
    *puVar2 = &PTR_LAB_0053563c_1_009258a8;
  }
  local_38[0] = param_1[1];
  param_1[1] = (int)puVar2;
  iVar3 = *param_1;
  if (iVar3 != 0) {
    *(int *)(iVar3 + 4) = iVar3;
    std::__weak_count<(__gnu_cxx::_Lock_policy)2>::operator=
              ((__weak_count<(__gnu_cxx::_Lock_policy)2> *)(iVar3 + 8),
               (__shared_count *)(param_1 + 1));
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_38);
  return param_1;
}

// ---- FUN_00539a88  @ 0x539a88
undefined4 FUN_00539a88(undefined4 param_1,undefined4 param_2)

{
  undefined4 uVar1;
  undefined4 local_40;
  __shared_count a_Stack_3c [4];
  undefined4 local_38;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_34 [4];
  undefined4 local_30;
  undefined4 local_2c;
  undefined4 local_28;
  undefined4 local_24 [2];
  
  FUN_0053777a(&local_40,param_1);
  local_38 = local_40;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count(a_Stack_34,a_Stack_3c);
  FUN_005399a0(&local_30,0,&local_28,&local_38,param_2);
  local_28 = local_30;
  local_24[0] = local_2c;
  local_2c = 0;
  local_30 = 0;
  uVar1 = FUN_005109f2(param_1,&local_28);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_24);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_2c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_34);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)a_Stack_3c);
  return uVar1;
}

// ---- FUN_00539b18  @ 0x539b18
int * FUN_00539b18(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                  undefined4 param_5)

{
  void *pvVar1;
  undefined4 *puVar2;
  int iVar3;
  undefined1 auStack_40 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_3c [4];
  int local_38 [8];
  
  *param_1 = 0;
  *(undefined4 *)(param_1 + 1) = 0;
  pvVar1 = operator_new(0x58);
  *param_1 = (int)pvVar1;
  FUN_005371e8(auStack_40,param_4);
  FUN_0051344a((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_38,param_5);
  if (pvVar1 != (void *)0x0) {
    FUN_005349e0(pvVar1,auStack_40,(__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_38);
  }
  FUN_005082ea((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_38);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_3c);
  iVar3 = *param_1;
  local_38[0] = 0;
  puVar2 = operator_new(0x14);
  if (puVar2 != (undefined4 *)0x0) {
    puVar2[1] = 1;
    puVar2[2] = 1;
    puVar2[3] = iVar3;
    *puVar2 = &PTR_LAB_00535740_1_00925708;
  }
  local_38[0] = param_1[1];
  param_1[1] = (int)puVar2;
  iVar3 = *param_1;
  if (iVar3 != 0) {
    *(int *)(iVar3 + 4) = iVar3;
    std::__weak_count<(__gnu_cxx::_Lock_policy)2>::operator=
              ((__weak_count<(__gnu_cxx::_Lock_policy)2> *)(iVar3 + 8),
               (__shared_count *)(param_1 + 1));
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_38);
  return param_1;
}

// ---- FUN_00539c00  @ 0x539c00
undefined4 FUN_00539c00(undefined4 param_1,undefined4 param_2)

{
  undefined4 uVar1;
  undefined4 local_40;
  __shared_count a_Stack_3c [4];
  undefined4 local_38;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_34 [4];
  undefined4 local_30;
  undefined4 local_2c;
  undefined4 local_28;
  undefined4 local_24 [2];
  
  FUN_0053777a(&local_40,param_1);
  local_38 = local_40;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count(a_Stack_34,a_Stack_3c);
  FUN_00539b18(&local_30,0,&local_28,&local_38,param_2);
  local_28 = local_30;
  local_24[0] = local_2c;
  local_2c = 0;
  local_30 = 0;
  uVar1 = FUN_005109f2(param_1,&local_28);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_24);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_2c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_34);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)a_Stack_3c);
  return uVar1;
}

// ---- FUN_00539c90  @ 0x539c90
int * FUN_00539c90(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                  function *param_5)

{
  void *pvVar1;
  undefined4 *puVar2;
  int iVar3;
  undefined1 auStack_48 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_44 [4];
  int local_40 [4];
  function<void(gpg::PlayerManager::FetchSelfResponse_const&)> afStack_30 [20];
  
  *param_1 = 0;
  *(undefined4 *)(param_1 + 1) = 0;
  pvVar1 = operator_new(0x50);
  *param_1 = (int)pvVar1;
  FUN_005371e8(auStack_48,param_4);
  std::function<void(std::function<void()>)>::function
            ((function<void(std::function<void()>)> *)local_40,param_5);
  std::function<void(gpg::PlayerManager::FetchSelfResponse_const&)>::function
            (afStack_30,param_5 + 0x10);
  if (pvVar1 != (void *)0x0) {
    FUN_00554e28(pvVar1,auStack_48,(function<void(std::function<void()>)> *)local_40);
  }
  std::_Function_base::~_Function_base((_Function_base *)afStack_30);
  std::_Function_base::~_Function_base((_Function_base *)local_40);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_44);
  iVar3 = *param_1;
  local_40[0] = 0;
  puVar2 = operator_new(0x14);
  if (puVar2 != (undefined4 *)0x0) {
    puVar2[1] = 1;
    puVar2[2] = 1;
    puVar2[3] = iVar3;
    *puVar2 = &PTR_LAB_0053572c_1_00925728;
  }
  local_40[0] = param_1[1];
  param_1[1] = (int)puVar2;
  iVar3 = *param_1;
  if (iVar3 != 0) {
    *(int *)(iVar3 + 4) = iVar3;
    std::__weak_count<(__gnu_cxx::_Lock_policy)2>::operator=
              ((__weak_count<(__gnu_cxx::_Lock_policy)2> *)(iVar3 + 8),
               (__shared_count *)(param_1 + 1));
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_40);
  return param_1;
}

// ---- FUN_00539d9c  @ 0x539d9c
undefined4 FUN_00539d9c(undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 uVar1;
  undefined1 auStack_30 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_2c [4];
  undefined4 local_28;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  
  FUN_0053777a(auStack_30,param_1);
  FUN_00539c90(&local_28,0,&local_20,auStack_30,param_3);
  local_20 = local_28;
  local_1c = local_24;
  local_24 = 0;
  local_28 = 0;
  uVar1 = FUN_00510986(param_1,&local_20);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_1c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_24);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_2c);
  return uVar1;
}

// ---- FUN_00539f1c  @ 0x539f1c
undefined4 FUN_00539f1c(undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
  void *pvVar1;
  undefined4 uVar2;
  undefined1 auStack_64 [4];
  undefined1 auStack_60 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_5c [4];
  void *local_58;
  undefined4 local_54;
  undefined1 auStack_50 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_4c [4];
  void *local_48;
  undefined4 local_44 [8];
  
  FUN_0053777a(auStack_60,param_1);
  local_58 = (void *)0x0;
  local_54 = 0;
  pvVar1 = operator_new(0x68);
  local_58 = pvVar1;
  FUN_005371e8(auStack_50,auStack_60);
  FUN_0051a104((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_48,param_3);
  if (pvVar1 != (void *)0x0) {
    FUN_00553b28(pvVar1,auStack_50,"loadConnectedPlayers",0,param_2,
                 (__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_48);
  }
  FUN_00519e26((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_4c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::
  __shared_count<gpg::AndroidGameServicesImpl::PlayersFetchListOperation*,std::__shared_ptr<gpg::AndroidGameServicesImpl::PlayersFetchListOperation,(__gnu_cxx::_Lock_policy)2>::_Deleter<std::allocator<gpg::AndroidGameServicesImpl::PlayersFetchListOperation>>,std::allocator<gpg::AndroidGameServicesImpl::PlayersFetchListOperation>>
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_48,local_58,auStack_50,auStack_64)
  ;
  uVar2 = local_54;
  local_54 = local_48;
  local_48 = (void *)uVar2;
  if (local_58 != (void *)0x0) {
    *(void **)((int)local_58 + 4) = local_58;
    std::__weak_count<(__gnu_cxx::_Lock_policy)2>::operator=
              ((__weak_count<(__gnu_cxx::_Lock_policy)2> *)((int)local_58 + 8),
               (__shared_count *)&local_54);
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_48);
  local_48 = local_58;
  local_44[0] = local_54;
  local_54 = 0;
  local_58 = (void *)0x0;
  uVar2 = FUN_00510986(param_1,(__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_44);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_54);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_5c);
  return uVar2;
}

// ---- FUN_0053a024  @ 0x53a024
undefined4 FUN_0053a024(undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
  void *pvVar1;
  undefined4 uVar2;
  undefined1 auStack_64 [4];
  undefined1 auStack_60 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_5c [4];
  void *local_58;
  undefined4 local_54;
  undefined1 auStack_50 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_4c [4];
  void *local_48;
  undefined4 local_44 [8];
  
  FUN_0053777a(auStack_60,param_1);
  local_58 = (void *)0x0;
  local_54 = 0;
  pvVar1 = operator_new(0x68);
  local_58 = pvVar1;
  FUN_005371e8(auStack_50,auStack_60);
  FUN_0051a104((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_48,param_3);
  if (pvVar1 != (void *)0x0) {
    FUN_00553b28(pvVar1,auStack_50,"loadRecentlyPlayedWithPlayers",
                 "loadMoreRecentlyPlayedWithPlayers",param_2,
                 (__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_48);
  }
  FUN_00519e26((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_4c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::
  __shared_count<gpg::AndroidGameServicesImpl::PlayersFetchListOperation*,std::__shared_ptr<gpg::AndroidGameServicesImpl::PlayersFetchListOperation,(__gnu_cxx::_Lock_policy)2>::_Deleter<std::allocator<gpg::AndroidGameServicesImpl::PlayersFetchListOperation>>,std::allocator<gpg::AndroidGameServicesImpl::PlayersFetchListOperation>>
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_48,local_58,auStack_50,auStack_64)
  ;
  uVar2 = local_54;
  local_54 = local_48;
  local_48 = (void *)uVar2;
  if (local_58 != (void *)0x0) {
    *(void **)((int)local_58 + 4) = local_58;
    std::__weak_count<(__gnu_cxx::_Lock_policy)2>::operator=
              ((__weak_count<(__gnu_cxx::_Lock_policy)2> *)((int)local_58 + 8),
               (__shared_count *)&local_54);
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_48);
  local_48 = local_58;
  local_44[0] = local_54;
  local_54 = 0;
  local_58 = (void *)0x0;
  uVar2 = FUN_00510986(param_1,(__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_44);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_54);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_5c);
  return uVar2;
}

// ---- FUN_0053a130  @ 0x53a130
int * FUN_0053a130(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                  function *param_5,undefined4 param_6)

{
  void *pvVar1;
  undefined4 *puVar2;
  int iVar3;
  undefined1 auStack_48 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_44 [4];
  int local_40 [4];
  function<void(gpg::PlayerManager::FetchResponse_const&)> afStack_30 [20];
  
  *param_1 = 0;
  *(undefined4 *)(param_1 + 1) = 0;
  pvVar1 = operator_new(0x58);
  *param_1 = (int)pvVar1;
  FUN_005371e8(auStack_48,param_4);
  std::function<void(std::function<void()>)>::function
            ((function<void(std::function<void()>)> *)local_40,param_5);
  std::function<void(gpg::PlayerManager::FetchResponse_const&)>::function(afStack_30,param_5 + 0x10)
  ;
  if (pvVar1 != (void *)0x0) {
    FUN_0055459c(pvVar1,auStack_48,(function<void(std::function<void()>)> *)local_40,param_6);
  }
  FUN_00519dfe((function<void(std::function<void()>)> *)local_40);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_44);
  iVar3 = *param_1;
  local_40[0] = 0;
  puVar2 = operator_new(0x14);
  if (puVar2 != (undefined4 *)0x0) {
    puVar2[1] = 1;
    puVar2[2] = 1;
    puVar2[3] = iVar3;
    *puVar2 = &PTR_LAB_00535704_1_00925768;
  }
  local_40[0] = param_1[1];
  param_1[1] = (int)puVar2;
  iVar3 = *param_1;
  if (iVar3 != 0) {
    *(int *)(iVar3 + 4) = iVar3;
    std::__weak_count<(__gnu_cxx::_Lock_policy)2>::operator=
              ((__weak_count<(__gnu_cxx::_Lock_policy)2> *)(iVar3 + 8),
               (__shared_count *)(param_1 + 1));
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_40);
  return param_1;
}

// ---- FUN_0053a234  @ 0x53a234
undefined4 FUN_0053a234(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  undefined1 auStack_38 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_34 [4];
  undefined4 local_30;
  undefined4 local_2c;
  undefined4 local_28;
  undefined4 local_24 [2];
  
  FUN_0053777a(auStack_38,param_1);
  FUN_0053a130(&local_30,0,&local_28,auStack_38,param_4,param_3);
  local_28 = local_30;
  local_24[0] = local_2c;
  local_2c = 0;
  local_30 = 0;
  uVar1 = FUN_00510986(param_1,&local_28);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_24);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_2c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_34);
  return uVar1;
}

// ---- FUN_0053a2b0  @ 0x53a2b0
int * FUN_0053a2b0(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                  function *param_5,undefined4 *param_6)

{
  void *pvVar1;
  undefined4 *puVar2;
  int iVar3;
  undefined1 auStack_48 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_44 [4];
  int local_40 [4];
  function<void(gpg::EventManager::FetchAllResponse_const&)> afStack_30 [20];
  
  *param_1 = 0;
  *(undefined4 *)(param_1 + 1) = 0;
  pvVar1 = operator_new(0x58);
  *param_1 = (int)pvVar1;
  FUN_005371e8(auStack_48,param_4);
  std::function<void(std::function<void()>)>::function
            ((function<void(std::function<void()>)> *)local_40,param_5);
  std::function<void(gpg::EventManager::FetchAllResponse_const&)>::function
            (afStack_30,param_5 + 0x10);
  if (pvVar1 != (void *)0x0) {
    FUN_00543844(pvVar1,auStack_48,(function<void(std::function<void()>)> *)local_40,*param_6);
  }
  FUN_0050e8be((function<void(std::function<void()>)> *)local_40);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_44);
  iVar3 = *param_1;
  local_40[0] = 0;
  puVar2 = operator_new(0x14);
  if (puVar2 != (undefined4 *)0x0) {
    puVar2[1] = 1;
    puVar2[2] = 1;
    puVar2[3] = iVar3;
    *puVar2 = &PTR_LAB_005356f0_1_00925788;
  }
  local_40[0] = param_1[1];
  param_1[1] = (int)puVar2;
  iVar3 = *param_1;
  if (iVar3 != 0) {
    *(int *)(iVar3 + 4) = iVar3;
    std::__weak_count<(__gnu_cxx::_Lock_policy)2>::operator=
              ((__weak_count<(__gnu_cxx::_Lock_policy)2> *)(iVar3 + 8),
               (__shared_count *)(param_1 + 1));
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_40);
  return param_1;
}

// ---- FUN_0053a3b8  @ 0x53a3b8
undefined4 FUN_0053a3b8(undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 uVar1;
  undefined4 local_34;
  undefined1 auStack_30 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_2c [4];
  undefined4 local_28;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  
  local_34 = param_2;
  FUN_0053777a(auStack_30,param_1);
  FUN_0053a2b0(&local_28,0,&local_20,auStack_30,param_3,&local_34);
  local_20 = local_28;
  local_1c = local_24;
  local_24 = 0;
  local_28 = 0;
  uVar1 = FUN_00510986(param_1,&local_20);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_1c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_24);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_2c);
  return uVar1;
}

// ---- FUN_0053a434  @ 0x53a434
int * FUN_0053a434(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                  function *param_5,undefined4 *param_6,undefined4 param_7)

{
  void *pvVar1;
  undefined4 *puVar2;
  int iVar3;
  undefined1 auStack_48 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_44 [4];
  int local_40 [4];
  function<void(gpg::EventManager::FetchResponse_const&)> afStack_30 [20];
  
  *param_1 = 0;
  *(undefined4 *)(param_1 + 1) = 0;
  pvVar1 = operator_new(0x58);
  *param_1 = (int)pvVar1;
  FUN_005371e8(auStack_48,param_4);
  std::function<void(std::function<void()>)>::function
            ((function<void(std::function<void()>)> *)local_40,param_5);
  std::function<void(gpg::EventManager::FetchResponse_const&)>::function(afStack_30,param_5 + 0x10);
  if (pvVar1 != (void *)0x0) {
    FUN_0054415c(pvVar1,auStack_48,(function<void(std::function<void()>)> *)local_40,*param_6,
                 param_7);
  }
  FUN_0050e93a((function<void(std::function<void()>)> *)local_40);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_44);
  iVar3 = *param_1;
  local_40[0] = 0;
  puVar2 = operator_new(0x14);
  if (puVar2 != (undefined4 *)0x0) {
    puVar2[1] = 1;
    puVar2[2] = 1;
    puVar2[3] = iVar3;
    *puVar2 = &PTR_LAB_005356dc_1_009257a8;
  }
  local_40[0] = param_1[1];
  param_1[1] = (int)puVar2;
  iVar3 = *param_1;
  if (iVar3 != 0) {
    *(int *)(iVar3 + 4) = iVar3;
    std::__weak_count<(__gnu_cxx::_Lock_policy)2>::operator=
              ((__weak_count<(__gnu_cxx::_Lock_policy)2> *)(iVar3 + 8),
               (__shared_count *)(param_1 + 1));
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_40);
  return param_1;
}

// ---- FUN_0053a540  @ 0x53a540
undefined4 FUN_0053a540(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  undefined4 local_3c;
  undefined1 auStack_38 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_34 [4];
  undefined4 local_30;
  undefined4 local_2c;
  undefined4 local_28;
  undefined4 local_24 [2];
  
  local_3c = param_2;
  FUN_0053777a(auStack_38,param_1);
  FUN_0053a434(&local_30,0,&local_28,auStack_38,param_4,&local_3c,param_3);
  local_28 = local_30;
  local_24[0] = local_2c;
  local_2c = 0;
  local_30 = 0;
  uVar1 = FUN_00510986(param_1,&local_28);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_24);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_2c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_34);
  return uVar1;
}

// ---- FUN_0053a5c0  @ 0x53a5c0
int * FUN_0053a5c0(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                  function *param_5,undefined4 *param_6,undefined4 param_7)

{
  void *pvVar1;
  undefined4 *puVar2;
  int iVar3;
  undefined1 auStack_48 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_44 [4];
  int local_40 [4];
  function<void(gpg::LeaderboardManager::FetchResponse_const&)> afStack_30 [20];
  
  *param_1 = 0;
  *(undefined4 *)(param_1 + 1) = 0;
  pvVar1 = operator_new(0x58);
  *param_1 = (int)pvVar1;
  FUN_005371e8(auStack_48,param_4);
  std::function<void(std::function<void()>)>::function
            ((function<void(std::function<void()>)> *)local_40,param_5);
  std::function<void(gpg::LeaderboardManager::FetchResponse_const&)>::function
            (afStack_30,param_5 + 0x10);
  if (pvVar1 != (void *)0x0) {
    FUN_0054b858(pvVar1,auStack_48,(function<void(std::function<void()>)> *)local_40,*param_6,
                 param_7);
  }
  FUN_00512e7a((function<void(std::function<void()>)> *)local_40);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_44);
  iVar3 = *param_1;
  local_40[0] = 0;
  puVar2 = operator_new(0x14);
  if (puVar2 != (undefined4 *)0x0) {
    puVar2[1] = 1;
    puVar2[2] = 1;
    puVar2[3] = iVar3;
    *puVar2 = &PTR_LAB_005356b4_1_009257e8;
  }
  local_40[0] = param_1[1];
  param_1[1] = (int)puVar2;
  iVar3 = *param_1;
  if (iVar3 != 0) {
    *(int *)(iVar3 + 4) = iVar3;
    std::__weak_count<(__gnu_cxx::_Lock_policy)2>::operator=
              ((__weak_count<(__gnu_cxx::_Lock_policy)2> *)(iVar3 + 8),
               (__shared_count *)(param_1 + 1));
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_40);
  return param_1;
}

// ---- FUN_0053a6cc  @ 0x53a6cc
undefined4 FUN_0053a6cc(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  undefined4 local_3c;
  undefined1 auStack_38 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_34 [4];
  undefined4 local_30;
  undefined4 local_2c;
  undefined4 local_28;
  undefined4 local_24 [2];
  
  local_3c = param_2;
  FUN_0053777a(auStack_38,param_1);
  FUN_0053a5c0(&local_30,0,&local_28,auStack_38,param_4,&local_3c,param_3);
  local_28 = local_30;
  local_24[0] = local_2c;
  local_2c = 0;
  local_30 = 0;
  uVar1 = FUN_00510986(param_1,&local_28);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_24);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_2c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_34);
  return uVar1;
}

// ---- FUN_0053a74c  @ 0x53a74c
int * FUN_0053a74c(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                  function *param_5,undefined4 *param_6)

{
  void *pvVar1;
  undefined4 *puVar2;
  int iVar3;
  undefined1 auStack_48 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_44 [4];
  int local_40 [4];
  function<void(gpg::LeaderboardManager::FetchAllResponse_const&)> afStack_30 [20];
  
  *param_1 = 0;
  *(undefined4 *)(param_1 + 1) = 0;
  pvVar1 = operator_new(0x58);
  *param_1 = (int)pvVar1;
  FUN_005371e8(auStack_48,param_4);
  std::function<void(std::function<void()>)>::function
            ((function<void(std::function<void()>)> *)local_40,param_5);
  std::function<void(gpg::LeaderboardManager::FetchAllResponse_const&)>::function
            (afStack_30,param_5 + 0x10);
  if (pvVar1 != (void *)0x0) {
    FUN_00549db4(pvVar1,auStack_48,(function<void(std::function<void()>)> *)local_40,*param_6);
  }
  FUN_00512ea2((function<void(std::function<void()>)> *)local_40);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_44);
  iVar3 = *param_1;
  local_40[0] = 0;
  puVar2 = operator_new(0x14);
  if (puVar2 != (undefined4 *)0x0) {
    puVar2[1] = 1;
    puVar2[2] = 1;
    puVar2[3] = iVar3;
    *puVar2 = &PTR_LAB_005356a0_1_00925808;
  }
  local_40[0] = param_1[1];
  param_1[1] = (int)puVar2;
  iVar3 = *param_1;
  if (iVar3 != 0) {
    *(int *)(iVar3 + 4) = iVar3;
    std::__weak_count<(__gnu_cxx::_Lock_policy)2>::operator=
              ((__weak_count<(__gnu_cxx::_Lock_policy)2> *)(iVar3 + 8),
               (__shared_count *)(param_1 + 1));
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_40);
  return param_1;
}

// ---- FUN_0053a854  @ 0x53a854
undefined4 FUN_0053a854(undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 uVar1;
  undefined4 local_34;
  undefined1 auStack_30 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_2c [4];
  undefined4 local_28;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  
  local_34 = param_2;
  FUN_0053777a(auStack_30,param_1);
  FUN_0053a74c(&local_28,0,&local_20,auStack_30,param_3,&local_34);
  local_20 = local_28;
  local_1c = local_24;
  local_24 = 0;
  local_28 = 0;
  uVar1 = FUN_00510986(param_1,&local_20);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_1c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_24);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_2c);
  return uVar1;
}

// ---- FUN_0053a8d0  @ 0x53a8d0
int * FUN_0053a8d0(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                  function *param_5,undefined4 *param_6,undefined4 param_7,undefined4 *param_8,
                  undefined4 *param_9)

{
  void *pvVar1;
  undefined4 *puVar2;
  int iVar3;
  undefined1 auStack_48 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_44 [4];
  int local_40 [4];
  function<void(gpg::LeaderboardManager::FetchScoreSummaryResponse_const&)> afStack_30 [20];
  
  *param_1 = 0;
  *(undefined4 *)(param_1 + 1) = 0;
  pvVar1 = operator_new(0x60);
  *param_1 = (int)pvVar1;
  FUN_005371e8(auStack_48,param_4);
  std::function<void(std::function<void()>)>::function
            ((function<void(std::function<void()>)> *)local_40,param_5);
  std::function<void(gpg::LeaderboardManager::FetchScoreSummaryResponse_const&)>::function
            (afStack_30,param_5 + 0x10);
  if (pvVar1 != (void *)0x0) {
    FUN_0054d6d8(pvVar1,auStack_48,(function<void(std::function<void()>)> *)local_40,*param_6,
                 param_7,*param_8,*param_9);
  }
  std::_Function_base::~_Function_base((_Function_base *)afStack_30);
  std::_Function_base::~_Function_base((_Function_base *)local_40);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_44);
  iVar3 = *param_1;
  local_40[0] = 0;
  puVar2 = operator_new(0x14);
  if (puVar2 != (undefined4 *)0x0) {
    puVar2[1] = 1;
    puVar2[2] = 1;
    puVar2[3] = iVar3;
    *puVar2 = &PTR_LAB_0053568c_1_00925828;
  }
  local_40[0] = param_1[1];
  param_1[1] = (int)puVar2;
  iVar3 = *param_1;
  if (iVar3 != 0) {
    *(int *)(iVar3 + 4) = iVar3;
    std::__weak_count<(__gnu_cxx::_Lock_policy)2>::operator=
              ((__weak_count<(__gnu_cxx::_Lock_policy)2> *)(iVar3 + 8),
               (__shared_count *)(param_1 + 1));
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_40);
  return param_1;
}

// ---- FUN_0053a9f0  @ 0x53a9f0
undefined4
FUN_0053a9f0(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5,undefined4 param_6)

{
  undefined4 uVar1;
  undefined4 local_38;
  undefined4 local_34;
  undefined1 auStack_30 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_2c [4];
  undefined4 local_28;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  
  local_38 = param_4;
  local_34 = param_2;
  FUN_0053777a(auStack_30,param_1);
  FUN_0053a8d0(&local_28,0,&local_20,auStack_30,param_6,&local_34,param_3,&local_38,&param_5);
  local_20 = local_28;
  local_1c = local_24;
  local_24 = 0;
  local_28 = 0;
  uVar1 = FUN_00510986(param_1,&local_20);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_1c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_24);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_2c);
  return uVar1;
}

// ---- FUN_0053aa78  @ 0x53aa78
int * FUN_0053aa78(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                  function *param_5,undefined4 *param_6,undefined4 param_7,undefined4 *param_8)

{
  void *pvVar1;
  undefined4 *puVar2;
  int iVar3;
  undefined1 auStack_48 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_44 [4];
  int local_40 [4];
  function<void(gpg::LeaderboardManager::FetchScorePageResponse_const&)> afStack_30 [20];
  
  *param_1 = 0;
  *(undefined4 *)(param_1 + 1) = 0;
  pvVar1 = operator_new(0x68);
  *param_1 = (int)pvVar1;
  FUN_005371e8(auStack_48,param_4);
  std::function<void(std::function<void()>)>::function
            ((function<void(std::function<void()>)> *)local_40,param_5);
  std::function<void(gpg::LeaderboardManager::FetchScorePageResponse_const&)>::function
            (afStack_30,param_5 + 0x10);
  if (pvVar1 != (void *)0x0) {
    FUN_0054c1b4(pvVar1,auStack_48,(function<void(std::function<void()>)> *)local_40,*param_6,
                 param_7,*param_8);
  }
  FUN_00512edc((function<void(std::function<void()>)> *)local_40);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_44);
  iVar3 = *param_1;
  local_40[0] = 0;
  puVar2 = operator_new(0x14);
  if (puVar2 != (undefined4 *)0x0) {
    puVar2[1] = 1;
    puVar2[2] = 1;
    puVar2[3] = iVar3;
    *puVar2 = &PTR_LAB_00535664_1_00925868;
  }
  local_40[0] = param_1[1];
  param_1[1] = (int)puVar2;
  iVar3 = *param_1;
  if (iVar3 != 0) {
    *(int *)(iVar3 + 4) = iVar3;
    std::__weak_count<(__gnu_cxx::_Lock_policy)2>::operator=
              ((__weak_count<(__gnu_cxx::_Lock_policy)2> *)(iVar3 + 8),
               (__shared_count *)(param_1 + 1));
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_40);
  return param_1;
}

// ---- FUN_0053ab88  @ 0x53ab88
undefined4
FUN_0053ab88(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5)

{
  undefined4 uVar1;
  undefined4 local_38;
  undefined4 local_34;
  undefined1 auStack_30 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_2c [4];
  undefined4 local_28;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  
  local_38 = param_4;
  local_34 = param_2;
  FUN_0053777a(auStack_30,param_1);
  FUN_0053aa78(&local_28,0,&local_20,auStack_30,param_5,&local_34,param_3,&local_38);
  local_20 = local_28;
  local_1c = local_24;
  local_24 = 0;
  local_28 = 0;
  uVar1 = FUN_00510986(param_1,&local_20);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_1c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_24);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_2c);
  return uVar1;
}

// ---- FUN_0053ac0c  @ 0x53ac0c
int * FUN_0053ac0c(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                  function *param_5,undefined4 *param_6,undefined4 param_7)

{
  void *pvVar1;
  undefined4 *puVar2;
  int iVar3;
  undefined1 auStack_48 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_44 [4];
  int local_40 [4];
  function<void(gpg::QuestManager::FetchResponse_const&)> afStack_30 [20];
  
  *param_1 = 0;
  *(undefined4 *)(param_1 + 1) = 0;
  pvVar1 = operator_new(0x58);
  *param_1 = (int)pvVar1;
  FUN_005371e8(auStack_48,param_4);
  std::function<void(std::function<void()>)>::function
            ((function<void(std::function<void()>)> *)local_40,param_5);
  std::function<void(gpg::QuestManager::FetchResponse_const&)>::function(afStack_30,param_5 + 0x10);
  if (pvVar1 != (void *)0x0) {
    FUN_00556f00(pvVar1,auStack_48,(function<void(std::function<void()>)> *)local_40,*param_6,
                 param_7);
  }
  FUN_0051c092((function<void(std::function<void()>)> *)local_40);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_44);
  iVar3 = *param_1;
  local_40[0] = 0;
  puVar2 = operator_new(0x14);
  if (puVar2 != (undefined4 *)0x0) {
    puVar2[1] = 1;
    puVar2[2] = 1;
    puVar2[3] = iVar3;
    *puVar2 = &PTR_LAB_00535614_1_009258e8;
  }
  local_40[0] = param_1[1];
  param_1[1] = (int)puVar2;
  iVar3 = *param_1;
  if (iVar3 != 0) {
    *(int *)(iVar3 + 4) = iVar3;
    std::__weak_count<(__gnu_cxx::_Lock_policy)2>::operator=
              ((__weak_count<(__gnu_cxx::_Lock_policy)2> *)(iVar3 + 8),
               (__shared_count *)(param_1 + 1));
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_40);
  return param_1;
}

// ---- FUN_0053ad18  @ 0x53ad18
undefined4 FUN_0053ad18(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  undefined4 local_3c;
  undefined1 auStack_38 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_34 [4];
  undefined4 local_30;
  undefined4 local_2c;
  undefined4 local_28;
  undefined4 local_24 [2];
  
  local_3c = param_2;
  FUN_0053777a(auStack_38,param_1);
  FUN_0053ac0c(&local_30,0,&local_28,auStack_38,param_4,&local_3c,param_3);
  local_28 = local_30;
  local_24[0] = local_2c;
  local_2c = 0;
  local_30 = 0;
  uVar1 = FUN_00510986(param_1,&local_28);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_24);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_2c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_34);
  return uVar1;
}

// ---- FUN_0053ad98  @ 0x53ad98
int * FUN_0053ad98(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                  function *param_5,undefined4 *param_6,undefined4 *param_7)

{
  void *pvVar1;
  undefined4 *puVar2;
  int iVar3;
  undefined1 auStack_48 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_44 [4];
  int local_40 [4];
  function<void(gpg::QuestManager::FetchListResponse_const&)> afStack_30 [20];
  
  *param_1 = 0;
  *(undefined4 *)(param_1 + 1) = 0;
  pvVar1 = operator_new(0x58);
  *param_1 = (int)pvVar1;
  FUN_005371e8(auStack_48,param_4);
  std::function<void(std::function<void()>)>::function
            ((function<void(std::function<void()>)> *)local_40,param_5);
  std::function<void(gpg::QuestManager::FetchListResponse_const&)>::function
            (afStack_30,param_5 + 0x10);
  if (pvVar1 != (void *)0x0) {
    FUN_0055656c(pvVar1,auStack_48,(function<void(std::function<void()>)> *)local_40,*param_6,
                 *param_7);
  }
  FUN_0051c0ba((function<void(std::function<void()>)> *)local_40);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_44);
  iVar3 = *param_1;
  local_40[0] = 0;
  puVar2 = operator_new(0x14);
  if (puVar2 != (undefined4 *)0x0) {
    puVar2[1] = 1;
    puVar2[2] = 1;
    puVar2[3] = iVar3;
    *puVar2 = &PTR_LAB_00535600_1_00925908;
  }
  local_40[0] = param_1[1];
  param_1[1] = (int)puVar2;
  iVar3 = *param_1;
  if (iVar3 != 0) {
    *(int *)(iVar3 + 4) = iVar3;
    std::__weak_count<(__gnu_cxx::_Lock_policy)2>::operator=
              ((__weak_count<(__gnu_cxx::_Lock_policy)2> *)(iVar3 + 8),
               (__shared_count *)(param_1 + 1));
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_40);
  return param_1;
}

// ---- FUN_0053aea4  @ 0x53aea4
undefined4 FUN_0053aea4(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  undefined4 local_38;
  undefined4 local_34;
  undefined1 auStack_30 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_2c [4];
  undefined4 local_28;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  
  local_38 = param_3;
  local_34 = param_2;
  FUN_0053777a(auStack_30,param_1);
  FUN_0053ad98(&local_28,0,&local_20,auStack_30,param_4,&local_34,&local_38);
  local_20 = local_28;
  local_1c = local_24;
  local_24 = 0;
  local_28 = 0;
  uVar1 = FUN_00510986(param_1,&local_20);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_1c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_24);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_2c);
  return uVar1;
}

// ---- FUN_0053af24  @ 0x53af24
int * FUN_0053af24(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                  function *param_5,undefined4 param_6)

{
  void *pvVar1;
  undefined4 *puVar2;
  int iVar3;
  undefined1 auStack_48 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_44 [4];
  int local_40 [4];
  function<void(gpg::QuestManager::AcceptResponse_const&)> afStack_30 [20];
  
  *param_1 = 0;
  *(undefined4 *)(param_1 + 1) = 0;
  pvVar1 = operator_new(0x58);
  *param_1 = (int)pvVar1;
  FUN_005371e8(auStack_48,param_4);
  std::function<void(std::function<void()>)>::function
            ((function<void(std::function<void()>)> *)local_40,param_5);
  std::function<void(gpg::QuestManager::AcceptResponse_const&)>::function(afStack_30,param_5 + 0x10)
  ;
  if (pvVar1 != (void *)0x0) {
    FUN_0055589c(pvVar1,auStack_48,(function<void(std::function<void()>)> *)local_40,param_6);
  }
  FUN_0051c0f4((function<void(std::function<void()>)> *)local_40);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_44);
  iVar3 = *param_1;
  local_40[0] = 0;
  puVar2 = operator_new(0x14);
  if (puVar2 != (undefined4 *)0x0) {
    puVar2[1] = 1;
    puVar2[2] = 1;
    puVar2[3] = iVar3;
    *puVar2 = &PTR_LAB_005355ec_1_00925928;
  }
  local_40[0] = param_1[1];
  param_1[1] = (int)puVar2;
  iVar3 = *param_1;
  if (iVar3 != 0) {
    *(int *)(iVar3 + 4) = iVar3;
    std::__weak_count<(__gnu_cxx::_Lock_policy)2>::operator=
              ((__weak_count<(__gnu_cxx::_Lock_policy)2> *)(iVar3 + 8),
               (__shared_count *)(param_1 + 1));
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_40);
  return param_1;
}

// ---- FUN_0053b028  @ 0x53b028
undefined4 FUN_0053b028(undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 uVar1;
  undefined1 auStack_38 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_34 [4];
  undefined4 local_30;
  undefined4 local_2c;
  undefined4 local_28;
  undefined4 local_24 [2];
  
  FUN_0053777a(auStack_38,param_1);
  FUN_0053af24(&local_30,0,&local_28,auStack_38,param_3,param_2);
  local_28 = local_30;
  local_24[0] = local_2c;
  local_2c = 0;
  local_30 = 0;
  uVar1 = FUN_00510986(param_1,&local_28);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_24);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_2c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_34);
  return uVar1;
}

// ---- FUN_0053b0a4  @ 0x53b0a4
int * FUN_0053b0a4(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                  function *param_5,undefined4 param_6)

{
  void *pvVar1;
  undefined4 *puVar2;
  int iVar3;
  undefined1 auStack_48 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_44 [4];
  int local_40 [4];
  function<void(gpg::QuestManager::ClaimMilestoneResponse_const&)> afStack_30 [20];
  
  *param_1 = 0;
  *(undefined4 *)(param_1 + 1) = 0;
  pvVar1 = operator_new(0x58);
  *param_1 = (int)pvVar1;
  FUN_005371e8(auStack_48,param_4);
  std::function<void(std::function<void()>)>::function
            ((function<void(std::function<void()>)> *)local_40,param_5);
  std::function<void(gpg::QuestManager::ClaimMilestoneResponse_const&)>::function
            (afStack_30,param_5 + 0x10);
  if (pvVar1 != (void *)0x0) {
    FUN_00555f04(pvVar1,auStack_48,(function<void(std::function<void()>)> *)local_40,param_6);
  }
  FUN_0051c11c((function<void(std::function<void()>)> *)local_40);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_44);
  iVar3 = *param_1;
  local_40[0] = 0;
  puVar2 = operator_new(0x14);
  if (puVar2 != (undefined4 *)0x0) {
    puVar2[1] = 1;
    puVar2[2] = 1;
    puVar2[3] = iVar3;
    *puVar2 = &PTR_LAB_005355d8_1_00925948;
  }
  local_40[0] = param_1[1];
  param_1[1] = (int)puVar2;
  iVar3 = *param_1;
  if (iVar3 != 0) {
    *(int *)(iVar3 + 4) = iVar3;
    std::__weak_count<(__gnu_cxx::_Lock_policy)2>::operator=
              ((__weak_count<(__gnu_cxx::_Lock_policy)2> *)(iVar3 + 8),
               (__shared_count *)(param_1 + 1));
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_40);
  return param_1;
}

// ---- FUN_0053b1a8  @ 0x53b1a8
undefined4 FUN_0053b1a8(undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 uVar1;
  undefined1 auStack_38 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_34 [4];
  undefined4 local_30;
  undefined4 local_2c;
  undefined4 local_28;
  undefined4 local_24 [2];
  
  FUN_0053777a(auStack_38,param_1);
  FUN_0053b0a4(&local_30,0,&local_28,auStack_38,param_3,param_2);
  local_28 = local_30;
  local_24[0] = local_2c;
  local_2c = 0;
  local_30 = 0;
  uVar1 = FUN_00510986(param_1,&local_28);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_24);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_2c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_34);
  return uVar1;
}

// ---- FUN_0053b222  @ 0x53b222
int * FUN_0053b222(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                  undefined4 param_5,undefined4 param_6)

{
  void *pvVar1;
  int iVar2;
  int iVar3;
  undefined1 auStack_44 [4];
  undefined1 auStack_40 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_3c [4];
  int local_38 [8];
  
  *param_1 = 0;
  *(undefined4 *)(param_1 + 1) = 0;
  pvVar1 = operator_new(0x58);
  *param_1 = (int)pvVar1;
  FUN_005371e8(auStack_40,param_4);
  FUN_0051c67a((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_38,param_6);
  if (pvVar1 != (void *)0x0) {
    FUN_005577a4(pvVar1,auStack_40,param_5,(__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_38);
  }
  FUN_0051c190((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_38);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_3c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::
  __shared_count<gpg::AndroidGameServicesImpl::QuestShowOperation*,std::__shared_ptr<gpg::AndroidGameServicesImpl::QuestShowOperation,(__gnu_cxx::_Lock_policy)2>::_Deleter<std::allocator<gpg::AndroidGameServicesImpl::QuestShowOperation>>,std::allocator<gpg::AndroidGameServicesImpl::QuestShowOperation>>
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_38,*param_1,auStack_44,auStack_40);
  iVar3 = param_1[1];
  iVar2 = *param_1;
  param_1[1] = local_38[0];
  local_38[0] = iVar3;
  if (iVar2 != 0) {
    *(int *)(iVar2 + 4) = iVar2;
    std::__weak_count<(__gnu_cxx::_Lock_policy)2>::operator=
              ((__weak_count<(__gnu_cxx::_Lock_policy)2> *)(iVar2 + 8),
               (__shared_count *)(param_1 + 1));
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_38);
  return param_1;
}

// ---- FUN_0053b2dc  @ 0x53b2dc
undefined4 FUN_0053b2dc(undefined4 param_1,Quest *param_2,undefined4 param_3)

{
  undefined4 uVar1;
  undefined1 auStack_30 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_2c [4];
  undefined4 local_28;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  
  FUN_0053777a(auStack_30,param_1);
  uVar1 = gpg::Quest::Id(param_2);
  FUN_0053b222(&local_28,0,&local_20,auStack_30,uVar1,param_3);
  local_20 = local_28;
  local_1c = local_24;
  local_24 = 0;
  local_28 = 0;
  uVar1 = FUN_005109f2(param_1,&local_20);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_1c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_24);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_2c);
  return uVar1;
}

// ---- FUN_0053b358  @ 0x53b358
int * FUN_0053b358(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                  undefined4 param_5)

{
  void *pvVar1;
  int iVar2;
  int iVar3;
  undefined1 auStack_44 [4];
  undefined1 auStack_40 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_3c [4];
  int local_38 [8];
  
  *param_1 = 0;
  *(undefined4 *)(param_1 + 1) = 0;
  pvVar1 = operator_new(0x58);
  *param_1 = (int)pvVar1;
  FUN_005371e8(auStack_40,param_4);
  FUN_0051c67a((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_38,param_5);
  if (pvVar1 != (void *)0x0) {
    FUN_0055781c(pvVar1,auStack_40,(__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_38);
  }
  FUN_0051c190((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_38);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_3c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::
  __shared_count<gpg::AndroidGameServicesImpl::QuestShowOperation*,std::__shared_ptr<gpg::AndroidGameServicesImpl::QuestShowOperation,(__gnu_cxx::_Lock_policy)2>::_Deleter<std::allocator<gpg::AndroidGameServicesImpl::QuestShowOperation>>,std::allocator<gpg::AndroidGameServicesImpl::QuestShowOperation>>
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_38,*param_1,auStack_44,auStack_40);
  iVar3 = param_1[1];
  iVar2 = *param_1;
  param_1[1] = local_38[0];
  local_38[0] = iVar3;
  if (iVar2 != 0) {
    *(int *)(iVar2 + 4) = iVar2;
    std::__weak_count<(__gnu_cxx::_Lock_policy)2>::operator=
              ((__weak_count<(__gnu_cxx::_Lock_policy)2> *)(iVar2 + 8),
               (__shared_count *)(param_1 + 1));
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_38);
  return param_1;
}

// ---- FUN_0053b410  @ 0x53b410
undefined4 FUN_0053b410(undefined4 param_1,undefined4 param_2)

{
  undefined4 uVar1;
  undefined1 auStack_30 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_2c [4];
  undefined4 local_28;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  
  FUN_0053777a(auStack_30,param_1);
  FUN_0053b358(&local_28,0,&local_20,auStack_30,param_2);
  local_20 = local_28;
  local_1c = local_24;
  local_24 = 0;
  local_28 = 0;
  uVar1 = FUN_005109f2(param_1,&local_20);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_1c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_24);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_2c);
  return uVar1;
}

// ---- FUN_0053b484  @ 0x53b484
int * FUN_0053b484(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                  function *param_5,undefined4 *param_6)

{
  void *pvVar1;
  undefined4 *puVar2;
  int iVar3;
  undefined1 auStack_48 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_44 [4];
  int local_40 [4];
  function<void(gpg::SnapshotManager::FetchAllResponse_const&)> afStack_30 [20];
  
  *param_1 = 0;
  *(undefined4 *)(param_1 + 1) = 0;
  pvVar1 = operator_new(0x58);
  *param_1 = (int)pvVar1;
  FUN_005371e8(auStack_48,param_4);
  std::function<void(std::function<void()>)>::function
            ((function<void(std::function<void()>)> *)local_40,param_5);
  std::function<void(gpg::SnapshotManager::FetchAllResponse_const&)>::function
            (afStack_30,param_5 + 0x10);
  if (pvVar1 != (void *)0x0) {
    FUN_0055f238(pvVar1,auStack_48,(function<void(std::function<void()>)> *)local_40,*param_6);
  }
  FUN_005267b0((function<void(std::function<void()>)> *)local_40);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_44);
  iVar3 = *param_1;
  local_40[0] = 0;
  puVar2 = operator_new(0x14);
  if (puVar2 != (undefined4 *)0x0) {
    puVar2[1] = 1;
    puVar2[2] = 1;
    puVar2[3] = iVar3;
    *puVar2 = &PTR_LAB_00535574_1_009259e8;
  }
  local_40[0] = param_1[1];
  param_1[1] = (int)puVar2;
  iVar3 = *param_1;
  if (iVar3 != 0) {
    *(int *)(iVar3 + 4) = iVar3;
    std::__weak_count<(__gnu_cxx::_Lock_policy)2>::operator=
              ((__weak_count<(__gnu_cxx::_Lock_policy)2> *)(iVar3 + 8),
               (__shared_count *)(param_1 + 1));
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_40);
  return param_1;
}

// ---- FUN_0053b58c  @ 0x53b58c
undefined4 FUN_0053b58c(undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 uVar1;
  undefined4 local_34;
  undefined1 auStack_30 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_2c [4];
  undefined4 local_28;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  
  local_34 = param_2;
  FUN_0053777a(auStack_30,param_1);
  FUN_0053b484(&local_28,0,&local_20,auStack_30,param_3,&local_34);
  local_20 = local_28;
  local_1c = local_24;
  local_24 = 0;
  local_28 = 0;
  uVar1 = FUN_00510986(param_1,&local_20);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_1c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_24);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_2c);
  return uVar1;
}

// ---- FUN_0053b608  @ 0x53b608
int * FUN_0053b608(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                  function *param_5,undefined4 param_6)

{
  void *pvVar1;
  undefined4 *puVar2;
  int iVar3;
  undefined1 auStack_48 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_44 [4];
  int local_40 [4];
  function<void(gpg::SnapshotManager::OpenResponse_const&)> afStack_30 [20];
  
  *param_1 = 0;
  *(undefined4 *)(param_1 + 1) = 0;
  pvVar1 = operator_new(0x58);
  *param_1 = (int)pvVar1;
  FUN_005371e8(auStack_48,param_4);
  std::function<void(std::function<void()>)>::function
            ((function<void(std::function<void()>)> *)local_40,param_5);
  std::function<void(gpg::SnapshotManager::OpenResponse_const&)>::function
            (afStack_30,param_5 + 0x10);
  if (pvVar1 != (void *)0x0) {
    FUN_0055fbf4(pvVar1,auStack_48,(function<void(std::function<void()>)> *)local_40,param_6);
  }
  FUN_00525364((function<void(std::function<void()>)> *)local_40);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_44);
  iVar3 = *param_1;
  local_40[0] = 0;
  puVar2 = operator_new(0x14);
  if (puVar2 != (undefined4 *)0x0) {
    puVar2[1] = 1;
    puVar2[2] = 1;
    puVar2[3] = iVar3;
    *puVar2 = &PTR_LAB_00535560_1_00925a08;
  }
  local_40[0] = param_1[1];
  param_1[1] = (int)puVar2;
  iVar3 = *param_1;
  if (iVar3 != 0) {
    *(int *)(iVar3 + 4) = iVar3;
    std::__weak_count<(__gnu_cxx::_Lock_policy)2>::operator=
              ((__weak_count<(__gnu_cxx::_Lock_policy)2> *)(iVar3 + 8),
               (__shared_count *)(param_1 + 1));
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_40);
  return param_1;
}

// ---- FUN_0053b70c  @ 0x53b70c
undefined4 FUN_0053b70c(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  undefined1 auStack_38 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_34 [4];
  undefined4 local_30;
  undefined4 local_2c;
  undefined4 local_28;
  undefined4 local_24 [2];
  
  FUN_0053777a(auStack_38,param_1);
  FUN_0053b608(&local_30,0,&local_28,auStack_38,param_4,param_3);
  local_28 = local_30;
  local_24[0] = local_2c;
  local_2c = 0;
  local_30 = 0;
  uVar1 = FUN_00510986(param_1,&local_28);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_24);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_2c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_34);
  return uVar1;
}

// ---- FUN_0053b788  @ 0x53b788
int * FUN_0053b788(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                  function *param_5,undefined4 param_6)

{
  void *pvVar1;
  undefined4 *puVar2;
  int iVar3;
  undefined1 auStack_48 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_44 [4];
  int local_40 [4];
  function<void(gpg::SnapshotManager::ReadResponse_const&)> afStack_30 [20];
  
  *param_1 = 0;
  *(undefined4 *)(param_1 + 1) = 0;
  pvVar1 = operator_new(0x58);
  *param_1 = (int)pvVar1;
  FUN_005371e8(auStack_48,param_4);
  std::function<void(std::function<void()>)>::function
            ((function<void(std::function<void()>)> *)local_40,param_5);
  std::function<void(gpg::SnapshotManager::ReadResponse_const&)>::function
            (afStack_30,param_5 + 0x10);
  if (pvVar1 != (void *)0x0) {
    FUN_0056050c(pvVar1,auStack_48,(function<void(std::function<void()>)> *)local_40,param_6);
  }
  FUN_00526878((function<void(std::function<void()>)> *)local_40);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_44);
  iVar3 = *param_1;
  local_40[0] = 0;
  puVar2 = operator_new(0x14);
  if (puVar2 != (undefined4 *)0x0) {
    puVar2[1] = 1;
    puVar2[2] = 1;
    puVar2[3] = iVar3;
    *puVar2 = &PTR_LAB_0053554c_1_00925a28;
  }
  local_40[0] = param_1[1];
  param_1[1] = (int)puVar2;
  iVar3 = *param_1;
  if (iVar3 != 0) {
    *(int *)(iVar3 + 4) = iVar3;
    std::__weak_count<(__gnu_cxx::_Lock_policy)2>::operator=
              ((__weak_count<(__gnu_cxx::_Lock_policy)2> *)(iVar3 + 8),
               (__shared_count *)(param_1 + 1));
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_40);
  return param_1;
}

// ---- FUN_0053b88c  @ 0x53b88c
undefined4 FUN_0053b88c(undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 uVar1;
  undefined1 auStack_38 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_34 [4];
  undefined4 local_30;
  undefined4 local_2c;
  undefined4 local_28;
  undefined4 local_24 [2];
  
  FUN_0053777a(auStack_38,param_1);
  FUN_0053b788(&local_30,0,&local_28,auStack_38,param_3,param_2);
  local_28 = local_30;
  local_24[0] = local_2c;
  local_2c = 0;
  local_30 = 0;
  uVar1 = FUN_00510986(param_1,&local_28);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_24);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_2c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_34);
  return uVar1;
}

// ---- FUN_0053b908  @ 0x53b908
int * FUN_0053b908(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                  function *param_5,undefined1 *param_6,undefined1 *param_7,undefined4 *param_8,
                  undefined4 param_9)

{
  void *pvVar1;
  undefined4 *puVar2;
  int iVar3;
  undefined1 auStack_48 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_44 [4];
  int local_40 [4];
  function<void(gpg::SnapshotManager::SnapshotSelectUIResponse_const&)> afStack_30 [20];
  
  *param_1 = 0;
  *(undefined4 *)(param_1 + 1) = 0;
  pvVar1 = operator_new(0x60);
  *param_1 = (int)pvVar1;
  FUN_005371e8(auStack_48,param_4);
  std::function<void(std::function<void()>)>::function
            ((function<void(std::function<void()>)> *)local_40,param_5);
  std::function<void(gpg::SnapshotManager::SnapshotSelectUIResponse_const&)>::function
            (afStack_30,param_5 + 0x10);
  if (pvVar1 != (void *)0x0) {
    FUN_005611a0(pvVar1,auStack_48,(function<void(std::function<void()>)> *)local_40,*param_6,
                 *param_7,*param_8,param_9);
  }
  std::_Function_base::~_Function_base((_Function_base *)afStack_30);
  std::_Function_base::~_Function_base((_Function_base *)local_40);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_44);
  iVar3 = *param_1;
  local_40[0] = 0;
  puVar2 = operator_new(0x14);
  if (puVar2 != (undefined4 *)0x0) {
    puVar2[1] = 1;
    puVar2[2] = 1;
    puVar2[3] = iVar3;
    *puVar2 = &PTR_LAB_00535524_1_00925a68;
  }
  local_40[0] = param_1[1];
  param_1[1] = (int)puVar2;
  iVar3 = *param_1;
  if (iVar3 != 0) {
    *(int *)(iVar3 + 4) = iVar3;
    std::__weak_count<(__gnu_cxx::_Lock_policy)2>::operator=
              ((__weak_count<(__gnu_cxx::_Lock_policy)2> *)(iVar3 + 8),
               (__shared_count *)(param_1 + 1));
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_40);
  return param_1;
}

// ---- FUN_0053ba28  @ 0x53ba28
undefined4
FUN_0053ba28(undefined4 param_1,undefined1 param_2,undefined1 param_3,undefined4 param_4,
            undefined4 param_5,undefined4 param_6)

{
  undefined4 uVar1;
  undefined4 local_38;
  undefined1 local_32;
  undefined1 local_31;
  undefined1 auStack_30 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_2c [4];
  undefined4 local_28;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c [2];
  
  local_38 = param_4;
  local_32 = param_3;
  local_31 = param_2;
  FUN_0053777a(auStack_30,param_1);
  FUN_0053b908(&local_28,0,&local_20,auStack_30,param_6,&local_31,&local_32,&local_38,param_5);
  local_20 = local_28;
  local_1c[0] = local_24;
  local_24 = 0;
  local_28 = 0;
  uVar1 = FUN_00510986(param_1,&local_20);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_1c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_24);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_2c);
  return uVar1;
}

// ---- FUN_0053bab4  @ 0x53bab4
int * FUN_0053bab4(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                  undefined4 param_5,undefined4 param_6)

{
  void *pvVar1;
  undefined4 *puVar2;
  int iVar3;
  undefined1 auStack_40 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_3c [4];
  int local_38 [8];
  
  *param_1 = 0;
  *(undefined4 *)(param_1 + 1) = 0;
  pvVar1 = operator_new(0x58);
  *param_1 = (int)pvVar1;
  FUN_005371e8(auStack_40,param_4);
  FUN_0052b37a((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_38,param_5);
  if (pvVar1 != (void *)0x0) {
    FUN_00562504(pvVar1,auStack_40,(__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_38,param_6);
  }
  FUN_0052af58((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_38);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_3c);
  iVar3 = *param_1;
  local_38[0] = 0;
  puVar2 = operator_new(0x14);
  if (puVar2 != (undefined4 *)0x0) {
    puVar2[1] = 1;
    puVar2[2] = 1;
    puVar2[3] = iVar3;
    *puVar2 = &PTR_LAB_00535510_1_00925a88;
  }
  local_38[0] = param_1[1];
  param_1[1] = (int)puVar2;
  iVar3 = *param_1;
  if (iVar3 != 0) {
    *(int *)(iVar3 + 4) = iVar3;
    std::__weak_count<(__gnu_cxx::_Lock_policy)2>::operator=
              ((__weak_count<(__gnu_cxx::_Lock_policy)2> *)(iVar3 + 8),
               (__shared_count *)(param_1 + 1));
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_38);
  return param_1;
}

// ---- FUN_0053bba0  @ 0x53bba0
undefined4 FUN_0053bba0(undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 uVar1;
  undefined1 auStack_38 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_34 [4];
  undefined4 local_30;
  undefined4 local_2c;
  undefined4 local_28;
  undefined4 local_24 [2];
  
  FUN_0053777a(auStack_38,param_1);
  FUN_0053bab4(&local_30,0,&local_28,auStack_38,param_3,param_2);
  local_28 = local_30;
  local_24[0] = local_2c;
  local_2c = 0;
  local_30 = 0;
  uVar1 = FUN_00510986(param_1,&local_28);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_24);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_2c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_34);
  return uVar1;
}

// ---- FUN_0053bc1a  @ 0x53bc1a
int * FUN_0053bc1a(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                  undefined4 param_5,undefined4 *param_6,undefined4 param_7,undefined4 param_8)

{
  void *pvVar1;
  int iVar2;
  int iVar3;
  undefined4 uVar4;
  undefined1 auStack_4c [4];
  undefined1 auStack_48 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_44 [4];
  int local_40 [8];
  
  *param_1 = 0;
  param_1[1] = 0;
  pvVar1 = operator_new(0x68);
  *param_1 = (int)pvVar1;
  FUN_005371e8(auStack_48,param_4);
  FUN_0052b37a((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_40,param_5);
  uVar4 = *param_6;
  FUN_007c64e8(auStack_4c,param_8);
  if (pvVar1 != (void *)0x0) {
    FUN_005641a8(pvVar1,auStack_48,(__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_40,uVar4,
                 param_7,auStack_4c);
  }
  FUN_007c5914(auStack_4c);
  FUN_0052af58((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_40);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_44);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::
  __shared_count<gpg::AndroidGameServicesImpl::TBMPModifyAndFetchMatchOperation*,std::__shared_ptr<gpg::AndroidGameServicesImpl::TBMPModifyAndFetchMatchOperation,(__gnu_cxx::_Lock_policy)2>::_Deleter<std::allocator<gpg::AndroidGameServicesImpl::TBMPModifyAndFetchMatchOperation>>,std::allocator<gpg::AndroidGameServicesImpl::TBMPModifyAndFetchMatchOperation>>
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_40,*param_1,auStack_4c,auStack_48);
  iVar3 = param_1[1];
  param_1[1] = local_40[0];
  if (*param_1 == 0) {
    iVar2 = 0;
  }
  else {
    iVar2 = *param_1 + 4;
  }
  local_40[0] = iVar3;
  FUN_005383ac(param_1 + 1,iVar2);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_40);
  return param_1;
}

// ---- FUN_0053bd94  @ 0x53bd94
int * FUN_0053bd94(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                  undefined4 param_5,undefined4 *param_6,undefined4 param_7,undefined4 param_8)

{
  void *pvVar1;
  int iVar2;
  int iVar3;
  undefined4 uVar4;
  undefined1 auStack_4c [4];
  undefined1 auStack_48 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_44 [4];
  int local_40 [8];
  
  *param_1 = 0;
  param_1[1] = 0;
  pvVar1 = operator_new(0x68);
  *param_1 = (int)pvVar1;
  FUN_005371e8(auStack_48,param_4);
  FUN_0052b37a((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_40,param_5);
  uVar4 = *param_6;
  FUN_007c64e8(auStack_4c,param_8);
  if (pvVar1 != (void *)0x0) {
    FUN_005641a8(pvVar1,auStack_48,(__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_40,uVar4,
                 param_7,auStack_4c);
  }
  FUN_007c5914(auStack_4c);
  FUN_0052af58((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_40);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_44);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::
  __shared_count<gpg::AndroidGameServicesImpl::TBMPModifyAndFetchMatchOperation*,std::__shared_ptr<gpg::AndroidGameServicesImpl::TBMPModifyAndFetchMatchOperation,(__gnu_cxx::_Lock_policy)2>::_Deleter<std::allocator<gpg::AndroidGameServicesImpl::TBMPModifyAndFetchMatchOperation>>,std::allocator<gpg::AndroidGameServicesImpl::TBMPModifyAndFetchMatchOperation>>
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_40,*param_1,auStack_4c,auStack_48);
  iVar3 = param_1[1];
  param_1[1] = local_40[0];
  if (*param_1 == 0) {
    iVar2 = 0;
  }
  else {
    iVar2 = *param_1 + 4;
  }
  local_40[0] = iVar3;
  FUN_005383ac(param_1 + 1,iVar2);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_40);
  return param_1;
}

// ---- FUN_0053be78  @ 0x53be78
undefined4 FUN_0053be78(undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 uVar1;
  undefined *local_3c;
  undefined1 auStack_38 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_34 [4];
  undefined4 local_30;
  undefined4 local_2c;
  undefined4 local_28;
  undefined4 local_24 [2];
  
  FUN_0053777a(auStack_38,param_1);
  local_3c = &DAT_00961e24;
  FUN_0053bd94(&local_30,0,&local_28,auStack_38,param_3,&local_3c,"acceptInvitation",param_2);
  local_28 = local_30;
  local_24[0] = local_2c;
  local_2c = 0;
  local_30 = 0;
  uVar1 = FUN_00510986(param_1,&local_28);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_24);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_2c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_34);
  return uVar1;
}

// ---- FUN_0053bf0c  @ 0x53bf0c
int * FUN_0053bf0c(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                  undefined4 param_5,undefined4 *param_6,undefined4 param_7,undefined4 param_8)

{
  void *pvVar1;
  int iVar2;
  int iVar3;
  undefined4 uVar4;
  undefined1 auStack_4c [4];
  undefined1 auStack_48 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_44 [4];
  int local_40 [8];
  
  *param_1 = 0;
  param_1[1] = 0;
  pvVar1 = operator_new(0x68);
  *param_1 = (int)pvVar1;
  FUN_005371e8(auStack_48,param_4);
  FUN_0052b37a((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_40,param_5);
  uVar4 = *param_6;
  FUN_007c64e8(auStack_4c,param_8);
  if (pvVar1 != (void *)0x0) {
    FUN_005641a8(pvVar1,auStack_48,(__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_40,uVar4,
                 param_7,auStack_4c);
  }
  FUN_007c5914(auStack_4c);
  FUN_0052af58((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_40);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_44);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::
  __shared_count<gpg::AndroidGameServicesImpl::TBMPModifyAndFetchMatchOperation*,std::__shared_ptr<gpg::AndroidGameServicesImpl::TBMPModifyAndFetchMatchOperation,(__gnu_cxx::_Lock_policy)2>::_Deleter<std::allocator<gpg::AndroidGameServicesImpl::TBMPModifyAndFetchMatchOperation>>,std::allocator<gpg::AndroidGameServicesImpl::TBMPModifyAndFetchMatchOperation>>
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_40,*param_1,auStack_4c,auStack_48);
  iVar3 = param_1[1];
  param_1[1] = local_40[0];
  if (*param_1 == 0) {
    iVar2 = 0;
  }
  else {
    iVar2 = *param_1 + 4;
  }
  local_40[0] = iVar3;
  FUN_005383ac(param_1 + 1,iVar2);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_40);
  return param_1;
}

// ---- FUN_0053bff0  @ 0x53bff0
undefined4 FUN_0053bff0(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  undefined *local_3c;
  undefined1 auStack_38 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_34 [4];
  undefined4 local_30;
  undefined4 local_2c;
  undefined4 local_28;
  undefined4 local_24 [2];
  
  FUN_0053777a(auStack_38,param_1);
  local_3c = &DAT_009614a4;
  FUN_0053bf0c(&local_30,0,&local_28,auStack_38,param_4,&local_3c,"loadMatch",param_3);
  local_28 = local_30;
  local_24[0] = local_2c;
  local_2c = 0;
  local_30 = 0;
  uVar1 = FUN_00510986(param_1,&local_28);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_24);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_2c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_34);
  return uVar1;
}

// ---- FUN_0053c084  @ 0x53c084
int * FUN_0053c084(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                  undefined4 param_5,undefined4 *param_6,undefined4 param_7,undefined4 param_8)

{
  void *pvVar1;
  int iVar2;
  int iVar3;
  undefined4 uVar4;
  undefined1 auStack_4c [4];
  undefined1 auStack_48 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_44 [4];
  int local_40 [8];
  
  *param_1 = 0;
  param_1[1] = 0;
  pvVar1 = operator_new(0x68);
  *param_1 = (int)pvVar1;
  FUN_005371e8(auStack_48,param_4);
  FUN_0052b37a((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_40,param_5);
  uVar4 = *param_6;
  FUN_007c64e8(auStack_4c,param_8);
  if (pvVar1 != (void *)0x0) {
    FUN_005641a8(pvVar1,auStack_48,(__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_40,uVar4,
                 param_7,auStack_4c);
  }
  FUN_007c5914(auStack_4c);
  FUN_0052af58((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_40);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_44);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::
  __shared_count<gpg::AndroidGameServicesImpl::TBMPModifyAndFetchMatchOperation*,std::__shared_ptr<gpg::AndroidGameServicesImpl::TBMPModifyAndFetchMatchOperation,(__gnu_cxx::_Lock_policy)2>::_Deleter<std::allocator<gpg::AndroidGameServicesImpl::TBMPModifyAndFetchMatchOperation>>,std::allocator<gpg::AndroidGameServicesImpl::TBMPModifyAndFetchMatchOperation>>
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_40,*param_1,auStack_4c,auStack_48);
  iVar3 = param_1[1];
  param_1[1] = local_40[0];
  if (*param_1 == 0) {
    iVar2 = 0;
  }
  else {
    iVar2 = *param_1 + 4;
  }
  local_40[0] = iVar3;
  FUN_005383ac(param_1 + 1,iVar2);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_40);
  return param_1;
}

// ---- FUN_0053c168  @ 0x53c168
undefined4 FUN_0053c168(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  undefined *local_3c;
  undefined1 auStack_38 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_34 [4];
  undefined4 local_30;
  undefined4 local_2c;
  undefined4 local_28;
  undefined4 local_24 [2];
  
  FUN_0053777a(auStack_38,param_1);
  local_3c = &DAT_00963424;
  FUN_0053c084(&local_30,0,&local_28,auStack_38,param_4,&local_3c,"leaveMatch",param_2);
  local_28 = local_30;
  local_24[0] = local_2c;
  local_2c = 0;
  local_30 = 0;
  uVar1 = FUN_00510986(param_1,&local_28);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_24);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_2c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_34);
  return uVar1;
}

// ---- FUN_0053c1fc  @ 0x53c1fc
int * FUN_0053c1fc(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                  undefined4 param_5,undefined4 *param_6,undefined4 param_7,undefined4 param_8)

{
  void *pvVar1;
  int iVar2;
  int iVar3;
  undefined4 uVar4;
  undefined1 auStack_4c [4];
  undefined1 auStack_48 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_44 [4];
  int local_40 [8];
  
  *param_1 = 0;
  param_1[1] = 0;
  pvVar1 = operator_new(0x68);
  *param_1 = (int)pvVar1;
  FUN_005371e8(auStack_48,param_4);
  FUN_0052b37a((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_40,param_5);
  uVar4 = *param_6;
  FUN_007c64e8(auStack_4c,param_8);
  if (pvVar1 != (void *)0x0) {
    FUN_005641a8(pvVar1,auStack_48,(__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_40,uVar4,
                 param_7,auStack_4c);
  }
  FUN_007c5914(auStack_4c);
  FUN_0052af58((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_40);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_44);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::
  __shared_count<gpg::AndroidGameServicesImpl::TBMPModifyAndFetchMatchOperation*,std::__shared_ptr<gpg::AndroidGameServicesImpl::TBMPModifyAndFetchMatchOperation,(__gnu_cxx::_Lock_policy)2>::_Deleter<std::allocator<gpg::AndroidGameServicesImpl::TBMPModifyAndFetchMatchOperation>>,std::allocator<gpg::AndroidGameServicesImpl::TBMPModifyAndFetchMatchOperation>>
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_40,*param_1,auStack_4c,auStack_48);
  iVar3 = param_1[1];
  param_1[1] = local_40[0];
  if (*param_1 == 0) {
    iVar2 = 0;
  }
  else {
    iVar2 = *param_1 + 4;
  }
  local_40[0] = iVar3;
  FUN_005383ac(param_1 + 1,iVar2);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_40);
  return param_1;
}

// ---- FUN_0053c2e0  @ 0x53c2e0
undefined4 FUN_0053c2e0(undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 uVar1;
  undefined *local_3c;
  undefined1 auStack_38 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_34 [4];
  undefined4 local_30;
  undefined4 local_2c;
  undefined4 local_28;
  undefined4 local_24 [2];
  
  FUN_0053777a(auStack_38,param_1);
  local_3c = &DAT_00964124;
  FUN_0053c1fc(&local_30,0,&local_28,auStack_38,param_3,&local_3c,"cancelMatch",param_2);
  local_28 = local_30;
  local_24[0] = local_2c;
  local_2c = 0;
  local_30 = 0;
  uVar1 = FUN_00510986(param_1,&local_28);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_24);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_2c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_34);
  return uVar1;
}

// ---- FUN_0053c374  @ 0x53c374
int * FUN_0053c374(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                  undefined4 param_5,undefined4 param_6)

{
  void *pvVar1;
  int iVar2;
  int iVar3;
  undefined1 auStack_4c [4];
  undefined1 auStack_48 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_44 [4];
  int local_40 [9];
  
  *param_1 = 0;
  *(undefined4 *)(param_1 + 1) = 0;
  pvVar1 = operator_new(0x70);
  *param_1 = (int)pvVar1;
  FUN_005371e8(auStack_48,param_4);
  FUN_0052b37a((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_40,param_5);
  FUN_007c64e8(auStack_4c,param_6);
  if (pvVar1 != (void *)0x0) {
    FUN_00563894(pvVar1,auStack_48,(__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_40,auStack_4c
                );
  }
  FUN_007c5914(auStack_4c);
  FUN_0052af58((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_40);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_44);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::
  __shared_count<gpg::AndroidGameServicesImpl::TBMPFinishMatchOperation*,std::__shared_ptr<gpg::AndroidGameServicesImpl::TBMPFinishMatchOperation,(__gnu_cxx::_Lock_policy)2>::_Deleter<std::allocator<gpg::AndroidGameServicesImpl::TBMPFinishMatchOperation>>,std::allocator<gpg::AndroidGameServicesImpl::TBMPFinishMatchOperation>>
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_40,*param_1,auStack_4c,auStack_48);
  iVar3 = param_1[1];
  iVar2 = *param_1;
  param_1[1] = local_40[0];
  local_40[0] = iVar3;
  if (iVar2 != 0) {
    *(int *)(iVar2 + 4) = iVar2;
    std::__weak_count<(__gnu_cxx::_Lock_policy)2>::operator=
              ((__weak_count<(__gnu_cxx::_Lock_policy)2> *)(iVar2 + 8),
               (__shared_count *)(param_1 + 1));
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_40);
  return param_1;
}

// ---- FUN_0053c44a  @ 0x53c44a
undefined4 FUN_0053c44a(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  undefined1 auStack_38 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_34 [4];
  undefined4 local_30;
  undefined4 local_2c;
  undefined4 local_28;
  undefined4 local_24 [2];
  
  FUN_0053777a(auStack_38,param_1);
  FUN_0053c374(&local_30,0,&local_28,auStack_38,param_4,param_2);
  local_28 = local_30;
  local_24[0] = local_2c;
  local_2c = 0;
  local_30 = 0;
  uVar1 = FUN_00510986(param_1,&local_28);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_24);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_2c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_34);
  return uVar1;
}

// ---- FUN_0053c4c4  @ 0x53c4c4
int * FUN_0053c4c4(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                  undefined4 param_5,undefined4 param_6,_Vector_base *param_7,undefined4 param_8)

{
  void *pvVar1;
  int iVar2;
  int iVar3;
  undefined1 auStack_58 [4];
  undefined1 auStack_54 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_50 [4];
  _Vector_base<unsigned_char,std::allocator<unsigned_char>> a_Stack_4c [12];
  int local_40 [8];
  
  *param_1 = 0;
  *(undefined4 *)(param_1 + 1) = 0;
  pvVar1 = operator_new(0x70);
  *param_1 = (int)pvVar1;
  FUN_005371e8(auStack_54,param_4);
  FUN_0052b37a((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_40,param_5);
  FUN_007c64e8(auStack_58,param_6);
  std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::_Vector_base(a_Stack_4c,param_7);
  if (pvVar1 != (void *)0x0) {
    FUN_0056397c(pvVar1,auStack_54,(__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_40,auStack_58
                 ,a_Stack_4c,param_8);
  }
  std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::~_Vector_base(a_Stack_4c);
  FUN_007c5914(auStack_58);
  FUN_0052af58((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_40);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_50);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::
  __shared_count<gpg::AndroidGameServicesImpl::TBMPFinishMatchOperation*,std::__shared_ptr<gpg::AndroidGameServicesImpl::TBMPFinishMatchOperation,(__gnu_cxx::_Lock_policy)2>::_Deleter<std::allocator<gpg::AndroidGameServicesImpl::TBMPFinishMatchOperation>>,std::allocator<gpg::AndroidGameServicesImpl::TBMPFinishMatchOperation>>
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_40,*param_1,auStack_54,a_Stack_4c);
  iVar3 = param_1[1];
  iVar2 = *param_1;
  param_1[1] = local_40[0];
  local_40[0] = iVar3;
  if (iVar2 != 0) {
    *(int *)(iVar2 + 4) = iVar2;
    std::__weak_count<(__gnu_cxx::_Lock_policy)2>::operator=
              ((__weak_count<(__gnu_cxx::_Lock_policy)2> *)(iVar2 + 8),
               (__shared_count *)(param_1 + 1));
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_40);
  return param_1;
}

// ---- FUN_0053c5b8  @ 0x53c5b8
undefined4
FUN_0053c5b8(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5,undefined4 param_6)

{
  undefined4 uVar1;
  undefined1 auStack_38 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_34 [4];
  undefined4 local_30;
  undefined4 local_2c;
  undefined4 local_28;
  undefined4 local_24 [2];
  
  FUN_0053777a(auStack_38,param_1);
  FUN_0053c4c4(&local_30,0,&local_28,auStack_38,param_6,param_2,param_4,param_5);
  local_28 = local_30;
  local_24[0] = local_2c;
  local_2c = 0;
  local_30 = 0;
  uVar1 = FUN_00510986(param_1,&local_28);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_24);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_2c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_34);
  return uVar1;
}

// ---- FUN_0053c634  @ 0x53c634
int * FUN_0053c634(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                  undefined4 param_5,undefined4 param_6,_Vector_base *param_7,undefined4 param_8,
                  undefined4 param_9)

{
  void *pvVar1;
  undefined4 *puVar2;
  int iVar3;
  undefined1 auStack_64 [4];
  undefined1 auStack_60 [4];
  undefined1 auStack_5c [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_58 [4];
  _Vector_base<unsigned_char,std::allocator<unsigned_char>> a_Stack_54 [12];
  int local_48 [9];
  
  *param_1 = 0;
  *(undefined4 *)(param_1 + 1) = 0;
  pvVar1 = operator_new(0x70);
  *param_1 = (int)pvVar1;
  FUN_005371e8(auStack_5c,param_4);
  FUN_0052b37a((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_48,param_5);
  FUN_007c64e8(auStack_60,param_6);
  std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::_Vector_base(a_Stack_54,param_7);
  FUN_007c64e8(auStack_64,param_9);
  if (pvVar1 != (void *)0x0) {
    FUN_005651cc(pvVar1,auStack_5c,(__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_48,auStack_60
                 ,a_Stack_54,param_8,auStack_64);
  }
  FUN_007c5914(auStack_64);
  std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::~_Vector_base(a_Stack_54);
  FUN_007c5914(auStack_60);
  FUN_0052af58((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_58);
  iVar3 = *param_1;
  local_48[0] = 0;
  puVar2 = operator_new(0x14);
  if (puVar2 != (undefined4 *)0x0) {
    puVar2[1] = 1;
    puVar2[2] = 1;
    puVar2[3] = iVar3;
    *puVar2 = &PTR_LAB_005354d4_1_00925ae8;
  }
  local_48[0] = param_1[1];
  param_1[1] = (int)puVar2;
  iVar3 = *param_1;
  if (iVar3 != 0) {
    *(int *)(iVar3 + 4) = iVar3;
    std::__weak_count<(__gnu_cxx::_Lock_policy)2>::operator=
              ((__weak_count<(__gnu_cxx::_Lock_policy)2> *)(iVar3 + 8),
               (__shared_count *)(param_1 + 1));
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_48);
  return param_1;
}

// ---- FUN_0053c780  @ 0x53c780
undefined4
FUN_0053c780(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5,undefined4 param_6,undefined4 param_7)

{
  undefined4 uVar1;
  undefined1 auStack_38 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_34 [4];
  undefined4 local_30;
  undefined4 local_2c;
  undefined4 local_28;
  undefined4 local_24 [2];
  
  FUN_0053777a(auStack_38,param_1);
  FUN_0053c634(&local_30,0,&local_28,auStack_38,param_7,param_2,param_4,param_5,param_6);
  local_28 = local_30;
  local_24[0] = local_2c;
  local_2c = 0;
  local_30 = 0;
  uVar1 = FUN_00510986(param_1,&local_28);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_24);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_2c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_34);
  return uVar1;
}

// ---- FUN_0053c800  @ 0x53c800
int * FUN_0053c800(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                  undefined4 param_5,undefined4 *param_6,undefined4 param_7,undefined4 param_8,
                  undefined4 param_9)

{
  void *pvVar1;
  int iVar2;
  int iVar3;
  undefined4 uVar4;
  undefined1 auStack_58 [4];
  undefined1 auStack_54 [4];
  undefined1 auStack_50 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_4c [4];
  int local_48 [9];
  
  *param_1 = 0;
  param_1[1] = 0;
  pvVar1 = operator_new(0x68);
  *param_1 = (int)pvVar1;
  FUN_005371e8(auStack_50,param_4);
  FUN_0052b37a((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_48,param_5);
  uVar4 = *param_6;
  FUN_007c64e8(auStack_54,param_8);
  FUN_007c64e8(auStack_58,param_9);
  if (pvVar1 != (void *)0x0) {
    FUN_00564114(pvVar1,auStack_50,(__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_48,uVar4,
                 param_7,auStack_54,auStack_58);
  }
  FUN_007c5914(auStack_58);
  FUN_007c5914(auStack_54);
  FUN_0052af58((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_48);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_4c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::
  __shared_count<gpg::AndroidGameServicesImpl::TBMPModifyAndFetchMatchOperation*,std::__shared_ptr<gpg::AndroidGameServicesImpl::TBMPModifyAndFetchMatchOperation,(__gnu_cxx::_Lock_policy)2>::_Deleter<std::allocator<gpg::AndroidGameServicesImpl::TBMPModifyAndFetchMatchOperation>>,std::allocator<gpg::AndroidGameServicesImpl::TBMPModifyAndFetchMatchOperation>>
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_48,*param_1,auStack_54,auStack_50);
  iVar3 = param_1[1];
  param_1[1] = local_48[0];
  if (*param_1 == 0) {
    iVar2 = 0;
  }
  else {
    iVar2 = *param_1 + 4;
  }
  local_48[0] = iVar3;
  FUN_005383ac(param_1 + 1,iVar2);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_48);
  return param_1;
}

// ---- FUN_0053c99c  @ 0x53c99c
int * FUN_0053c99c(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                  function *param_5)

{
  void *pvVar1;
  undefined4 *puVar2;
  int iVar3;
  undefined1 auStack_48 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_44 [4];
  int local_40 [4];
  function<void(gpg::TurnBasedMultiplayerManager::TurnBasedMatchesResponse_const&)> afStack_30 [20];
  
  *param_1 = 0;
  *(undefined4 *)(param_1 + 1) = 0;
  pvVar1 = operator_new(0x50);
  *param_1 = (int)pvVar1;
  FUN_005371e8(auStack_48,param_4);
  std::function<void(std::function<void()>)>::function
            ((function<void(std::function<void()>)> *)local_40,param_5);
  std::function<void(gpg::TurnBasedMultiplayerManager::TurnBasedMatchesResponse_const&)>::function
            (afStack_30,param_5 + 0x10);
  if (pvVar1 != (void *)0x0) {
    FUN_00562d60(pvVar1,auStack_48,(function<void(std::function<void()>)> *)local_40);
  }
  std::_Function_base::~_Function_base((_Function_base *)afStack_30);
  std::_Function_base::~_Function_base((_Function_base *)local_40);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_44);
  iVar3 = *param_1;
  local_40[0] = 0;
  puVar2 = operator_new(0x14);
  if (puVar2 != (undefined4 *)0x0) {
    puVar2[1] = 1;
    puVar2[2] = 1;
    puVar2[3] = iVar3;
    *puVar2 = &PTR_LAB_005354ac_1_00925b28;
  }
  local_40[0] = param_1[1];
  param_1[1] = (int)puVar2;
  iVar3 = *param_1;
  if (iVar3 != 0) {
    *(int *)(iVar3 + 4) = iVar3;
    std::__weak_count<(__gnu_cxx::_Lock_policy)2>::operator=
              ((__weak_count<(__gnu_cxx::_Lock_policy)2> *)(iVar3 + 8),
               (__shared_count *)(param_1 + 1));
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_40);
  return param_1;
}

// ---- FUN_0053caa8  @ 0x53caa8
undefined4 FUN_0053caa8(undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 uVar1;
  undefined1 auStack_30 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_2c [4];
  undefined4 local_28;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  
  FUN_0053777a(auStack_30,param_1);
  FUN_0053c99c(&local_28,0,&local_20,auStack_30,param_3);
  local_20 = local_28;
  local_1c = local_24;
  local_24 = 0;
  local_28 = 0;
  uVar1 = FUN_00510986(param_1,&local_20);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_1c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_24);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_2c);
  return uVar1;
}

// ---- FUN_0053cb1c  @ 0x53cb1c
int * FUN_0053cb1c(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                  function *param_5)

{
  void *pvVar1;
  undefined4 *puVar2;
  int iVar3;
  undefined1 auStack_48 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_44 [4];
  int local_40 [4];
  function<void(gpg::TurnBasedMultiplayerManager::MatchInboxUIResponse_const&)> afStack_30 [20];
  
  *param_1 = 0;
  *(undefined4 *)(param_1 + 1) = 0;
  pvVar1 = operator_new(0x58);
  *param_1 = (int)pvVar1;
  FUN_005371e8(auStack_48,param_4);
  std::function<void(std::function<void()>)>::function
            ((function<void(std::function<void()>)> *)local_40,param_5);
  std::function<void(gpg::TurnBasedMultiplayerManager::MatchInboxUIResponse_const&)>::function
            (afStack_30,param_5 + 0x10);
  if (pvVar1 != (void *)0x0) {
    FUN_00564ac8(pvVar1,auStack_48,(function<void(std::function<void()>)> *)local_40);
  }
  std::_Function_base::~_Function_base((_Function_base *)afStack_30);
  std::_Function_base::~_Function_base((_Function_base *)local_40);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_44);
  iVar3 = *param_1;
  local_40[0] = 0;
  puVar2 = operator_new(0x14);
  if (puVar2 != (undefined4 *)0x0) {
    puVar2[1] = 1;
    puVar2[2] = 1;
    puVar2[3] = iVar3;
    *puVar2 = &PTR_LAB_00535498_1_00925b48;
  }
  local_40[0] = param_1[1];
  param_1[1] = (int)puVar2;
  iVar3 = *param_1;
  if (iVar3 != 0) {
    *(int *)(iVar3 + 4) = iVar3;
    std::__weak_count<(__gnu_cxx::_Lock_policy)2>::operator=
              ((__weak_count<(__gnu_cxx::_Lock_policy)2> *)(iVar3 + 8),
               (__shared_count *)(param_1 + 1));
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_40);
  return param_1;
}

// ---- FUN_0053cc28  @ 0x53cc28
undefined4 FUN_0053cc28(undefined4 param_1,undefined4 param_2)

{
  undefined4 uVar1;
  undefined1 auStack_30 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_2c [4];
  undefined4 local_28;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  
  FUN_0053777a(auStack_30,param_1);
  FUN_0053cb1c(&local_28,0,&local_20,auStack_30,param_2);
  local_20 = local_28;
  local_1c = local_24;
  local_24 = 0;
  local_28 = 0;
  uVar1 = FUN_00510986(param_1,&local_20);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_1c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_24);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_2c);
  return uVar1;
}

// ---- FUN_0053cc9c  @ 0x53cc9c
function<void(std::function<void()>)> *
FUN_0053cc9c(function<void(std::function<void()>)> *param_1,function *param_2)

{
  std::function<void(std::function<void()>)>::function(param_1,param_2);
  std::function<void(gpg::TurnBasedMultiplayerManager::PlayerSelectUIResponse_const&)>::function
            ((function<void(gpg::TurnBasedMultiplayerManager::PlayerSelectUIResponse_const&)> *)
             (param_1 + 0x10),param_2 + 0x10);
  return param_1;
}

// ---- FUN_0053ccc0  @ 0x53ccc0
int * FUN_0053ccc0(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                  undefined4 param_5,undefined4 param_6,undefined4 *param_7,undefined4 *param_8,
                  undefined1 *param_9)

{
  undefined1 uVar1;
  undefined4 *puVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  int iVar5;
  undefined4 local_a8;
  __shared_count a_Stack_a4 [4];
  undefined4 local_a0;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_9c [4];
  undefined4 local_98;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_94 [4];
  undefined4 local_90;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_8c [4];
  undefined1 auStack_88 [32];
  undefined1 auStack_68 [32];
  int local_48 [9];
  
  *param_1 = 0;
  *(undefined4 *)(param_1 + 1) = 0;
  puVar2 = operator_new(0x70);
  *param_1 = (int)puVar2;
  FUN_005371e8(&local_a8,param_4);
  FUN_0053cc9c(auStack_88,param_5);
  uVar3 = *param_7;
  uVar4 = *param_8;
  uVar1 = *param_9;
  if (puVar2 != (undefined4 *)0x0) {
    local_a0 = local_a8;
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count(a_Stack_9c,a_Stack_a4);
    FUN_0053cc9c(auStack_68,auStack_88);
    local_98 = local_a0;
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
              (a_Stack_94,(__shared_count *)a_Stack_9c);
    FUN_0053cc9c((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_48,auStack_68);
    local_90 = local_98;
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
              (a_Stack_8c,(__shared_count *)a_Stack_94);
    FUN_00533528(puVar2,&local_90);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_8c);
    *puVar2 = &PTR_FUN_00539624_1_00925590;
    FUN_0053cc9c(puVar2 + 0xc,(__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_48);
    FUN_0051f9f4((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_48);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_94);
    *puVar2 = &PTR_FUN_00539658_1_009255e8;
    *(undefined1 *)(puVar2 + 0x14) = 1;
    FUN_0051f9f4(auStack_68);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_9c);
    *puVar2 = &PTR_FUN_0053f04c_1_00925648;
    FUN_00549380(puVar2 + 0x15,param_6);
    puVar2[0x19] = uVar3;
    puVar2[0x1a] = uVar4;
    *(undefined1 *)(puVar2 + 0x1b) = uVar1;
  }
  FUN_0051f9f4(auStack_88);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)a_Stack_a4);
  iVar5 = *param_1;
  local_48[0] = 0;
  puVar2 = operator_new(0x14);
  if (puVar2 != (undefined4 *)0x0) {
    puVar2[1] = 1;
    puVar2[2] = 1;
    puVar2[3] = iVar5;
    *puVar2 = &PTR_LAB_00535484_1_00925b68;
  }
  local_48[0] = param_1[1];
  param_1[1] = (int)puVar2;
  iVar5 = *param_1;
  if (iVar5 != 0) {
    *(int *)(iVar5 + 4) = iVar5;
    std::__weak_count<(__gnu_cxx::_Lock_policy)2>::operator=
              ((__weak_count<(__gnu_cxx::_Lock_policy)2> *)(iVar5 + 8),
               (__shared_count *)(param_1 + 1));
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_48);
  return param_1;
}

// ---- FUN_0053ceb8  @ 0x53ceb8
int * FUN_0053ceb8(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                  function *param_5)

{
  void *pvVar1;
  undefined4 *puVar2;
  int iVar3;
  undefined1 auStack_48 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_44 [4];
  int local_40 [4];
  function<void(gpg::RealTimeMultiplayerManager::FetchInvitationsResponse_const&)> afStack_30 [20];
  
  *param_1 = 0;
  *(undefined4 *)(param_1 + 1) = 0;
  pvVar1 = operator_new(0x50);
  *param_1 = (int)pvVar1;
  FUN_005371e8(auStack_48,param_4);
  std::function<void(std::function<void()>)>::function
            ((function<void(std::function<void()>)> *)local_40,param_5);
  std::function<void(gpg::RealTimeMultiplayerManager::FetchInvitationsResponse_const&)>::function
            (afStack_30,param_5 + 0x10);
  if (pvVar1 != (void *)0x0) {
    FUN_00559a78(pvVar1,auStack_48,(function<void(std::function<void()>)> *)local_40);
  }
  std::_Function_base::~_Function_base((_Function_base *)afStack_30);
  std::_Function_base::~_Function_base((_Function_base *)local_40);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_44);
  iVar3 = *param_1;
  local_40[0] = 0;
  puVar2 = operator_new(0x14);
  if (puVar2 != (undefined4 *)0x0) {
    puVar2[1] = 1;
    puVar2[2] = 1;
    puVar2[3] = iVar3;
    *puVar2 = &PTR_LAB_00535470_1_00925b88;
  }
  local_40[0] = param_1[1];
  param_1[1] = (int)puVar2;
  iVar3 = *param_1;
  if (iVar3 != 0) {
    *(int *)(iVar3 + 4) = iVar3;
    std::__weak_count<(__gnu_cxx::_Lock_policy)2>::operator=
              ((__weak_count<(__gnu_cxx::_Lock_policy)2> *)(iVar3 + 8),
               (__shared_count *)(param_1 + 1));
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_40);
  return param_1;
}

// ---- FUN_0053cfc4  @ 0x53cfc4
undefined4 FUN_0053cfc4(undefined4 param_1,undefined4 param_2)

{
  undefined4 uVar1;
  undefined1 auStack_30 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_2c [4];
  undefined4 local_28;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  
  FUN_0053777a(auStack_30,param_1);
  FUN_0053ceb8(&local_28,0,&local_20,auStack_30,param_2);
  local_20 = local_28;
  local_1c = local_24;
  local_24 = 0;
  local_28 = 0;
  uVar1 = FUN_00510986(param_1,&local_20);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_1c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_24);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_2c);
  return uVar1;
}

// ---- FUN_0053d038  @ 0x53d038
int * FUN_0053d038(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                  undefined4 param_5,undefined4 param_6,undefined4 *param_7)

{
  void *pvVar1;
  undefined4 *puVar2;
  int iVar3;
  undefined4 local_50;
  undefined4 local_4c;
  undefined1 auStack_48 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_44 [4];
  int local_40 [9];
  
  *param_1 = 0;
  *(undefined4 *)(param_1 + 1) = 0;
  pvVar1 = operator_new(0x68);
  *param_1 = (int)pvVar1;
  FUN_005371e8(auStack_48,param_4);
  FUN_0051fe32((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_40,param_5);
  local_50 = *param_7;
  local_4c = param_7[1];
  param_7[1] = 0;
  *param_7 = 0;
  if (pvVar1 != (void *)0x0) {
    FUN_00559308(pvVar1,auStack_48,(__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_40,param_6,
                 &local_50);
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_4c);
  FUN_0051f8b6((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_40);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_44);
  iVar3 = *param_1;
  local_40[0] = 0;
  puVar2 = operator_new(0x14);
  if (puVar2 != (undefined4 *)0x0) {
    puVar2[1] = 1;
    puVar2[2] = 1;
    puVar2[3] = iVar3;
    *puVar2 = &PTR_LAB_0053545c_1_00925ba8;
  }
  local_40[0] = param_1[1];
  param_1[1] = (int)puVar2;
  iVar3 = *param_1;
  if (iVar3 != 0) {
    *(int *)(iVar3 + 4) = iVar3;
    std::__weak_count<(__gnu_cxx::_Lock_policy)2>::operator=
              ((__weak_count<(__gnu_cxx::_Lock_policy)2> *)(iVar3 + 8),
               (__shared_count *)(param_1 + 1));
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_40);
  return param_1;
}

// ---- FUN_0053d154  @ 0x53d154
undefined4
FUN_0053d154(undefined4 param_1,undefined4 param_2,undefined4 *param_3,undefined4 param_4)

{
  function *pfVar1;
  undefined4 uVar2;
  undefined1 auStack_60 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_5c [4];
  undefined4 local_58;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_54 [4];
  undefined1 auStack_50 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_4c [4];
  undefined4 local_48;
  undefined4 local_44;
  undefined4 local_40;
  undefined4 local_3c;
  function<void(std::function<void()>)> afStack_38 [20];
  
  FUN_0053777a(auStack_60,param_1);
  pfVar1 = (function *)FUN_0051075c(param_1);
  std::function<void(std::function<void()>)>::function(afStack_38,pfVar1);
  local_58 = *param_3;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_54,(__shared_count *)(param_3 + 1));
  FUN_00538800(auStack_50,afStack_38,&local_58);
  FUN_0053d038(&local_48,0,&local_40,auStack_60,param_4,param_2,auStack_50);
  local_40 = local_48;
  local_3c = local_44;
  local_44 = 0;
  local_48 = 0;
  uVar2 = FUN_00510986(param_1,&local_40);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_3c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_44);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_4c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_54);
  std::_Function_base::~_Function_base((_Function_base *)afStack_38);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_5c);
  return uVar2;
}

// ---- FUN_0053d234  @ 0x53d234
int * FUN_0053d234(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                  undefined4 param_5,undefined4 param_6,undefined4 *param_7)

{
  void *pvVar1;
  undefined4 *puVar2;
  int iVar3;
  undefined4 local_50;
  undefined4 local_4c;
  undefined1 auStack_48 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_44 [4];
  int local_40 [9];
  
  *param_1 = 0;
  *(undefined4 *)(param_1 + 1) = 0;
  pvVar1 = operator_new(0x68);
  *param_1 = (int)pvVar1;
  FUN_005371e8(auStack_48,param_4);
  FUN_0051fe32((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_40,param_5);
  local_50 = *param_7;
  local_4c = param_7[1];
  param_7[1] = 0;
  *param_7 = 0;
  if (pvVar1 != (void *)0x0) {
    FUN_0055881c(pvVar1,auStack_48,(__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_40,param_6,
                 &local_50);
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_4c);
  FUN_0051f8b6((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_40);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_44);
  iVar3 = *param_1;
  local_40[0] = 0;
  puVar2 = operator_new(0x14);
  if (puVar2 != (undefined4 *)0x0) {
    puVar2[1] = 1;
    puVar2[2] = 1;
    puVar2[3] = iVar3;
    *puVar2 = &PTR_LAB_00535434_1_00925be8;
  }
  local_40[0] = param_1[1];
  param_1[1] = (int)puVar2;
  iVar3 = *param_1;
  if (iVar3 != 0) {
    *(int *)(iVar3 + 4) = iVar3;
    std::__weak_count<(__gnu_cxx::_Lock_policy)2>::operator=
              ((__weak_count<(__gnu_cxx::_Lock_policy)2> *)(iVar3 + 8),
               (__shared_count *)(param_1 + 1));
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_40);
  return param_1;
}

// ---- FUN_0053d350  @ 0x53d350
undefined4
FUN_0053d350(undefined4 param_1,undefined4 param_2,undefined4 *param_3,undefined4 param_4)

{
  function *pfVar1;
  undefined4 uVar2;
  undefined1 auStack_60 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_5c [4];
  undefined4 local_58;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_54 [4];
  undefined1 auStack_50 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_4c [4];
  undefined4 local_48;
  undefined4 local_44;
  undefined4 local_40;
  undefined4 local_3c;
  function<void(std::function<void()>)> afStack_38 [20];
  
  FUN_0053777a(auStack_60,param_1);
  pfVar1 = (function *)FUN_0051075c(param_1);
  std::function<void(std::function<void()>)>::function(afStack_38,pfVar1);
  local_58 = *param_3;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_54,(__shared_count *)(param_3 + 1));
  FUN_00538800(auStack_50,afStack_38,&local_58);
  FUN_0053d234(&local_48,0,&local_40,auStack_60,param_4,param_2,auStack_50);
  local_40 = local_48;
  local_3c = local_44;
  local_44 = 0;
  local_48 = 0;
  uVar2 = FUN_00510986(param_1,&local_40);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_3c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_44);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_4c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_54);
  std::_Function_base::~_Function_base((_Function_base *)afStack_38);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_5c);
  return uVar2;
}

// ---- FUN_0053d430  @ 0x53d430
int * FUN_0053d430(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                  function *param_5)

{
  void *pvVar1;
  undefined4 *puVar2;
  int iVar3;
  undefined1 auStack_48 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_44 [4];
  int local_40 [4];
  function<void(gpg::RealTimeMultiplayerManager::RoomInboxUIResponse_const&)> afStack_30 [20];
  
  *param_1 = 0;
  *(undefined4 *)(param_1 + 1) = 0;
  pvVar1 = operator_new(0x58);
  *param_1 = (int)pvVar1;
  FUN_005371e8(auStack_48,param_4);
  std::function<void(std::function<void()>)>::function
            ((function<void(std::function<void()>)> *)local_40,param_5);
  std::function<void(gpg::RealTimeMultiplayerManager::RoomInboxUIResponse_const&)>::function
            (afStack_30,param_5 + 0x10);
  if (pvVar1 != (void *)0x0) {
    FUN_0055b5a8(pvVar1,auStack_48,(function<void(std::function<void()>)> *)local_40);
  }
  std::_Function_base::~_Function_base((_Function_base *)afStack_30);
  std::_Function_base::~_Function_base((_Function_base *)local_40);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_44);
  iVar3 = *param_1;
  local_40[0] = 0;
  puVar2 = operator_new(0x14);
  if (puVar2 != (undefined4 *)0x0) {
    puVar2[1] = 1;
    puVar2[2] = 1;
    puVar2[3] = iVar3;
    *puVar2 = &PTR_LAB_00535448_1_00925bc8;
  }
  local_40[0] = param_1[1];
  param_1[1] = (int)puVar2;
  iVar3 = *param_1;
  if (iVar3 != 0) {
    *(int *)(iVar3 + 4) = iVar3;
    std::__weak_count<(__gnu_cxx::_Lock_policy)2>::operator=
              ((__weak_count<(__gnu_cxx::_Lock_policy)2> *)(iVar3 + 8),
               (__shared_count *)(param_1 + 1));
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_40);
  return param_1;
}

// ---- FUN_0053d53c  @ 0x53d53c
undefined4 FUN_0053d53c(undefined4 param_1,undefined4 param_2)

{
  undefined4 uVar1;
  undefined1 auStack_30 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_2c [4];
  undefined4 local_28;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  
  FUN_0053777a(auStack_30,param_1);
  FUN_0053d430(&local_28,0,&local_20,auStack_30,param_2);
  local_20 = local_28;
  local_1c = local_24;
  local_24 = 0;
  local_28 = 0;
  uVar1 = FUN_00510986(param_1,&local_20);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_1c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_24);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_2c);
  return uVar1;
}

// ---- FUN_0053d5b0  @ 0x53d5b0
int * FUN_0053d5b0(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                  function *param_5,undefined4 param_6)

{
  void *pvVar1;
  undefined4 *puVar2;
  int iVar3;
  undefined1 auStack_48 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_44 [4];
  int local_40 [4];
  function<void(gpg::ResponseStatus_const&)> afStack_30 [20];
  
  *param_1 = 0;
  *(undefined4 *)(param_1 + 1) = 0;
  pvVar1 = operator_new(0x60);
  *param_1 = (int)pvVar1;
  FUN_005371e8(auStack_48,param_4);
  std::function<void(std::function<void()>)>::function
            ((function<void(std::function<void()>)> *)local_40,param_5);
  std::function<void(gpg::ResponseStatus_const&)>::function(afStack_30,param_5 + 0x10);
  if (pvVar1 != (void *)0x0) {
    FUN_0055a450(pvVar1,auStack_48,(function<void(std::function<void()>)> *)local_40,param_6);
  }
  FUN_0051f9a4((function<void(std::function<void()>)> *)local_40);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_44);
  iVar3 = *param_1;
  local_40[0] = 0;
  puVar2 = operator_new(0x14);
  if (puVar2 != (undefined4 *)0x0) {
    puVar2[1] = 1;
    puVar2[2] = 1;
    puVar2[3] = iVar3;
    *puVar2 = &PTR_LAB_0053540c_1_00925c28;
  }
  local_40[0] = param_1[1];
  param_1[1] = (int)puVar2;
  iVar3 = *param_1;
  if (iVar3 != 0) {
    *(int *)(iVar3 + 4) = iVar3;
    std::__weak_count<(__gnu_cxx::_Lock_policy)2>::operator=
              ((__weak_count<(__gnu_cxx::_Lock_policy)2> *)(iVar3 + 8),
               (__shared_count *)(param_1 + 1));
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_40);
  return param_1;
}

// ---- FUN_0053d6b4  @ 0x53d6b4
undefined4 FUN_0053d6b4(undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 uVar1;
  undefined1 auStack_38 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_34 [4];
  undefined4 local_30;
  undefined4 local_2c;
  undefined4 local_28;
  undefined4 local_24 [2];
  
  FUN_0053777a(auStack_38,param_1);
  FUN_0053d5b0(&local_30,0,&local_28,auStack_38,param_3,param_2);
  local_28 = local_30;
  local_24[0] = local_2c;
  local_2c = 0;
  local_30 = 0;
  uVar1 = FUN_00510986(param_1,&local_28);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_24);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_2c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_34);
  return uVar1;
}

// ---- FUN_0053d730  @ 0x53d730
int * FUN_0053d730(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                  function *param_5,undefined4 param_6,undefined4 *param_7)

{
  void *pvVar1;
  undefined4 *puVar2;
  int iVar3;
  undefined1 auStack_48 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_44 [4];
  int local_40 [4];
  function<void(gpg::RealTimeMultiplayerManager::WaitingRoomUIResponse_const&)> afStack_30 [20];
  
  *param_1 = 0;
  *(undefined4 *)(param_1 + 1) = 0;
  pvVar1 = operator_new(0x60);
  *param_1 = (int)pvVar1;
  FUN_005371e8(auStack_48,param_4);
  std::function<void(std::function<void()>)>::function
            ((function<void(std::function<void()>)> *)local_40,param_5);
  std::function<void(gpg::RealTimeMultiplayerManager::WaitingRoomUIResponse_const&)>::function
            (afStack_30,param_5 + 0x10);
  if (pvVar1 != (void *)0x0) {
    FUN_0055bd64(pvVar1,auStack_48,(function<void(std::function<void()>)> *)local_40,param_6,
                 *param_7);
  }
  FUN_0051fa36((function<void(std::function<void()>)> *)local_40);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_44);
  iVar3 = *param_1;
  local_40[0] = 0;
  puVar2 = operator_new(0x14);
  if (puVar2 != (undefined4 *)0x0) {
    puVar2[1] = 1;
    puVar2[2] = 1;
    puVar2[3] = iVar3;
    *puVar2 = &PTR_LAB_005353f8_1_00925c48;
  }
  local_40[0] = param_1[1];
  param_1[1] = (int)puVar2;
  iVar3 = *param_1;
  if (iVar3 != 0) {
    *(int *)(iVar3 + 4) = iVar3;
    std::__weak_count<(__gnu_cxx::_Lock_policy)2>::operator=
              ((__weak_count<(__gnu_cxx::_Lock_policy)2> *)(iVar3 + 8),
               (__shared_count *)(param_1 + 1));
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_40);
  return param_1;
}

// ---- FUN_0053d83c  @ 0x53d83c
undefined4 FUN_0053d83c(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  undefined4 local_3c;
  undefined1 auStack_38 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_34 [4];
  undefined4 local_30;
  undefined4 local_2c;
  undefined4 local_28;
  undefined4 local_24 [2];
  
  local_3c = param_3;
  FUN_0053777a(auStack_38,param_1);
  FUN_0053d730(&local_30,0,&local_28,auStack_38,param_4,param_2,&local_3c);
  local_28 = local_30;
  local_24[0] = local_2c;
  local_2c = 0;
  local_30 = 0;
  uVar1 = FUN_00510986(param_1,&local_28);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_24);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_2c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_34);
  return uVar1;
}

// ---- FUN_0053d8bc  @ 0x53d8bc
int * FUN_0053d8bc(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                  function *param_5,undefined4 param_6,undefined4 param_7,undefined4 param_8)

{
  void *pvVar1;
  undefined4 *puVar2;
  int iVar3;
  undefined1 auStack_48 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_44 [4];
  int local_40 [4];
  function<void(gpg::MultiplayerStatus_const&)> afStack_30 [20];
  
  *param_1 = 0;
  *(undefined4 *)(param_1 + 1) = 0;
  pvVar1 = operator_new(0x68);
  *param_1 = (int)pvVar1;
  FUN_005371e8(auStack_48,param_4);
  std::function<void(std::function<void()>)>::function
            ((function<void(std::function<void()>)> *)local_40,param_5);
  std::function<void(gpg::MultiplayerStatus_const&)>::function(afStack_30,param_5 + 0x10);
  if (pvVar1 != (void *)0x0) {
    FUN_0055a9f0(pvVar1,auStack_48,(function<void(std::function<void()>)> *)local_40,param_6,param_7
                 ,param_8);
  }
  FUN_0051f9b8((function<void(std::function<void()>)> *)local_40);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_44);
  iVar3 = *param_1;
  local_40[0] = 0;
  puVar2 = operator_new(0x14);
  if (puVar2 != (undefined4 *)0x0) {
    puVar2[1] = 1;
    puVar2[2] = 1;
    puVar2[3] = iVar3;
    *puVar2 = &PTR_LAB_005353e4_1_00925c68;
  }
  local_40[0] = param_1[1];
  param_1[1] = (int)puVar2;
  iVar3 = *param_1;
  if (iVar3 != 0) {
    *(int *)(iVar3 + 4) = iVar3;
    std::__weak_count<(__gnu_cxx::_Lock_policy)2>::operator=
              ((__weak_count<(__gnu_cxx::_Lock_policy)2> *)(iVar3 + 8),
               (__shared_count *)(param_1 + 1));
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_40);
  return param_1;
}

// ---- FUN_0053d9c8  @ 0x53d9c8
undefined4
FUN_0053d9c8(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5)

{
  undefined4 uVar1;
  undefined1 auStack_38 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_34 [4];
  undefined4 local_30;
  undefined4 local_2c;
  undefined4 local_28;
  undefined4 local_24;
  
  FUN_0053777a(auStack_38,param_1);
  FUN_0053d8bc(&local_30,0,&local_28,auStack_38,param_5,param_2,param_4,param_3);
  local_28 = local_30;
  local_24 = local_2c;
  local_2c = 0;
  local_30 = 0;
  uVar1 = FUN_00510986(param_1,&local_28);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_24);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_2c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_34);
  return uVar1;
}

// ---- FUN_0053da80  @ 0x53da80
PlayerSelectUIResponse * FUN_0053da80(PlayerSelectUIResponse *param_1)

{
  undefined4 local_28;
  vector<std::string,std::allocator<std::string>> avStack_24 [24];
  
  FUN_005166ae(4,"Android UI operation returned a value when none was expected.");
  memset(&local_28,0,0x18);
  local_28 = 0xfffffffe;
  gpg::TurnBasedMultiplayerManager::PlayerSelectUIResponse::PlayerSelectUIResponse
            (param_1,(PlayerSelectUIResponse *)&local_28);
  std::vector<std::string,std::allocator<std::string>>::~vector(avStack_24);
  return param_1;
}

// ---- FUN_0053dab8  @ 0x53dab8
void FUN_0053dab8(int *param_1,undefined4 param_2,undefined4 param_3,int param_4)

{
  int *piVar1;
  int iVar2;
  undefined4 local_38;
  vector<std::string,std::allocator<std::string>> avStack_34 [32];
  
  piVar1 = param_1 + 0xc;
  if (param_4 == 0) {
    if ((char)param_1[0x14] == '\0') {
      memset(&local_38,0,0x18);
      local_38 = 1;
      FUN_00521690(piVar1,&local_38);
    }
    else {
      memset(&local_38,0,0x18);
      local_38 = 0xfffffffa;
      FUN_00521690(piVar1,&local_38);
    }
  }
  else if (param_4 == 0x2711) {
    FUN_005166ae(1,"UI returned RECONNECT_REQUIRED: handling.");
    FUN_00536858(param_1[10]);
    iVar2 = param_1[10];
    FUN_0053739c(&local_38);
    FUN_005124a2(iVar2,&local_38);
    FUN_0050fd1e(&local_38);
    memset(&local_38,0,0x18);
    local_38 = 0xfffffffd;
    FUN_00521690(piVar1,&local_38);
  }
  else if (param_4 == 0x2715) {
    memset(&local_38,0,0x18);
    local_38 = 0xffffffee;
    FUN_00521690(piVar1,&local_38);
  }
  else {
    iVar2 = FUN_00548c48(param_2);
    if (iVar2 == 0) {
      (**(code **)(*param_1 + 0x50))(&local_38,param_1,param_2);
      FUN_00521690(piVar1,&local_38);
    }
    else {
      memset(&local_38,0,0x18);
      local_38 = 0xfffffffe;
      FUN_00521690(piVar1,&local_38);
    }
  }
  std::vector<std::string,std::allocator<std::string>>::~vector(avStack_34);
  return;
}

// ---- FUN_0053dbc8  @ 0x53dbc8
void FUN_0053dbc8(int *param_1)

{
  undefined1 auStack_28 [4];
  vector<std::string,std::allocator<std::string>> avStack_24 [24];
  
  (**(code **)(*param_1 + 0x4c))(auStack_28,param_1);
  FUN_00521690(param_1 + 0xc,auStack_28);
  std::vector<std::string,std::allocator<std::string>>::~vector(avStack_24);
  return;
}

// ---- FUN_0053dbf8  @ 0x53dbf8
int FUN_0053dbf8(int param_1,int param_2)

{
  FUN_00549380();
  FUN_00536e1e(param_1 + 0x10,param_2 + 0x10);
  FUN_00549380(param_1 + 0x20,param_2 + 0x20);
  std::function<void(std::function<void()>)>::function
            ((function<void(std::function<void()>)> *)(param_1 + 0x30),(function *)(param_2 + 0x30))
  ;
  std::function<void(gpg::SnapshotMetadata)>::function
            ((function<void(gpg::SnapshotMetadata)> *)(param_1 + 0x40),(function *)(param_2 + 0x40))
  ;
  std::function<void(std::function<void()>)>::function
            ((function<void(std::function<void()>)> *)(param_1 + 0x50),(function *)(param_2 + 0x50))
  ;
  std::function<void(gpg::Quest)>::function
            ((function<void(gpg::Quest)> *)(param_1 + 0x60),(function *)(param_2 + 0x60));
  return param_1;
}

// ---- FUN_0053dc90  @ 0x53dc90
int FUN_0053dc90(int param_1)

{
  FUN_007be0b4(param_1 + 0x1c);
  FUN_00548ab0(param_1 + 8);
  if (*(int *)(param_1 + 4) != 0) {
    FUN_0053691e();
  }
  *(undefined4 *)(param_1 + 4) = 0;
  return param_1;
}

// ---- FUN_0053dcb2  @ 0x53dcb2
int FUN_0053dcb2(int param_1)

{
  std::_Function_base::~_Function_base((_Function_base *)(param_1 + 0x60));
  std::_Function_base::~_Function_base((_Function_base *)(param_1 + 0x50));
  std::_Function_base::~_Function_base((_Function_base *)(param_1 + 0x40));
  std::_Function_base::~_Function_base((_Function_base *)(param_1 + 0x30));
  FUN_00548ab0(param_1 + 0x20);
  std::_Function_base::~_Function_base((_Function_base *)(param_1 + 0x10));
  FUN_00548ab0(param_1);
  return param_1;
}

// ---- FUN_0053dcf0  @ 0x53dcf0
undefined4 * FUN_0053dcf0(undefined4 *param_1,undefined4 param_2)

{
  undefined4 uStack_14;
  
  *param_1 = &PTR_FUN_0053dcf0_1_00925d28;
  param_1[0x1d] = &PTR_DAT_00925ea4;
  uStack_14 = param_2;
  FUN_00549ab4(&uStack_14);
  FUN_00536858(param_1);
  FUN_005456f8(param_1,&LAB_005461f0_1);
  FUN_005456f8(param_1,0x546269);
  FUN_005456f8(param_1,0x54631d);
  FUN_005456f8(param_1,0x5462a5);
  FUN_0054824c(param_1 + 0x1d,param_1 + 0x21);
  FUN_00549ad2(&uStack_14);
  FUN_0053dc90(param_1 + 0x45);
  std::_Function_base::~_Function_base((_Function_base *)(param_1 + 0x41));
  FUN_00548ab0(param_1 + 0x3d);
  FUN_0053dcb2(param_1 + 0x21);
  FUN_00559228(param_1 + 0x1e);
  FUN_005126c0(param_1);
  return param_1;
}

// ---- FUN_0053dd9c  @ 0x53dd9c
void * FUN_0053dd9c(void *param_1)

{
  FUN_0053dcf0();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0053ddb0  @ 0x53ddb0
undefined4
FUN_0053ddb0(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 *param_4)

{
  undefined4 uVar1;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_54 [4];
  undefined4 local_50;
  undefined4 local_4c;
  undefined1 auStack_48 [16];
  undefined4 *local_38 [2];
  code *local_30;
  undefined1 *local_2c;
  
  FUN_00545074(auStack_48);
  uVar1 = *param_4;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_54,(__shared_count *)(param_4 + 1));
  local_50 = uVar1;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_4c,(__shared_count *)a_Stack_54);
  local_30 = (code *)0x0;
  local_38[0] = operator_new(8);
  uVar1 = local_4c;
  *local_38[0] = local_50;
  local_38[0][1] = 0;
  local_4c = 0;
  local_38[0][1] = uVar1;
  local_50 = 0;
  local_2c = &LAB_0053ded4_1;
  local_30 = (code *)0x536d5f;
  FUN_00537340(auStack_48,param_2,param_3,(_Function_base *)local_38);
  std::_Function_base::~_Function_base((_Function_base *)local_38);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_4c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_54);
  FUN_00548b30(param_1,auStack_48);
  FUN_00548ab0(auStack_48);
  return param_1;
}

// ---- FUN_0053de78  @ 0x53de78
void FUN_0053de78(int *param_1,undefined4 param_2)

{
  int iVar1;
  mutex *local_2c;
  undefined1 auStack_28 [16];
  
  local_2c = (mutex *)*param_1;
  std::mutex::lock(local_2c);
  iVar1 = *param_1;
  FUN_00548b30(auStack_28,param_2);
  FUN_00548b60(iVar1 + 0xc,auStack_28);
  FUN_00548ab0(auStack_28);
  *(undefined1 *)(*param_1 + 8) = 1;
  FUN_007be0e0(*param_1 + 4);
  std::lock_guard<std::mutex>::~lock_guard((lock_guard<std::mutex> *)&local_2c);
  return;
}

// ---- FUN_0053defc  @ 0x53defc
void FUN_0053defc(undefined4 param_1,undefined4 param_2)

{
  undefined1 auStack_48 [16];
  undefined1 auStack_38 [16];
  undefined1 auStack_28 [20];
  
  FUN_00548b30(auStack_48,param_1);
  FUN_00548b30(auStack_38,param_2);
  FUN_00548b60(param_1,auStack_38);
  FUN_00548ab0(auStack_38);
  FUN_00548b30(auStack_28,auStack_48);
  FUN_00548b60(param_2,auStack_28);
  FUN_00548ab0(auStack_28);
  FUN_00548ab0(auStack_48);
  return;
}

// ---- FUN_0053df5c  @ 0x53df5c
void FUN_0053df5c(int param_1,undefined4 param_2)

{
  uint uVar1;
  undefined4 uVar2;
  int iVar3;
  mutex *local_2c;
  undefined1 auStack_28 [16];
  
  local_2c = (mutex *)(param_1 + 0x114);
  std::mutex::lock(local_2c);
  FUN_005166ae(1,"Play Games callback indicates connection failure.");
  if (*(int *)(param_1 + 0x118) == 0) {
    FUN_005166ae(4,"Unexpected response: connection failed.");
  }
  else {
    uVar1 = FUN_00548d1c(param_2,"getErrorCode");
    if ((((uVar1 - 1 < 3) || ((uVar1 & 0xfffffffd) == 5)) || (uVar1 == 9)) || (uVar1 == 0xc)) {
      uVar2 = FUN_00548bac(param_1 + 0x84);
      FUN_00548074(auStack_28,&DAT_00961aa4,&DAT_009612a4,"getErrorDialog",
                   "(ILandroid/app/Activity;I)Landroid/app/Dialog;",uVar1,uVar2,0x475047);
      iVar3 = FUN_00548c48(auStack_28);
      if (iVar3 == 0) {
        FUN_00548de4(auStack_28,&DAT_00805f86);
      }
      FUN_00548ab0(auStack_28);
    }
    uVar2 = *(undefined4 *)(param_1 + 0x118);
    FUN_00549380(auStack_28,param_2);
    FUN_0053de78(uVar2,auStack_28);
    FUN_00548ab0(auStack_28);
  }
  std::lock_guard<std::mutex>::~lock_guard((lock_guard<std::mutex> *)&local_2c);
  return;
}

// ---- FUN_0053e05c  @ 0x53e05c
void FUN_0053e05c(undefined4 *param_1)

{
  undefined4 uVar1;
  undefined1 auStack_30 [16];
  undefined1 auStack_20 [16];
  
  param_1 = (undefined4 *)*param_1;
  FUN_00548b30(auStack_30);
  uVar1 = *param_1;
  FUN_00548b30(auStack_20,auStack_30);
  FUN_0053df5c(uVar1,auStack_20);
  FUN_00548ab0(auStack_20);
  FUN_00548ab0(auStack_30);
  return;
}

// ---- FUN_0053e0a0  @ 0x53e0a0
void FUN_0053e0a0(int param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  int iVar3;
  undefined1 auStack_d8 [16];
  int *local_c8 [2];
  undefined1 *local_c0;
  undefined1 *local_bc;
  int *local_b8 [2];
  undefined1 *local_b0;
  undefined1 *local_ac;
  undefined1 auStack_a8 [16];
  undefined1 auStack_98 [16];
  int *local_88 [2];
  undefined1 *local_80;
  undefined1 *local_7c;
  int *local_78 [2];
  undefined1 *local_70;
  undefined1 *local_6c;
  undefined1 auStack_68 [16];
  undefined1 auStack_58 [16];
  int *local_48 [2];
  undefined1 *local_40;
  undefined1 *local_3c;
  undefined1 auStack_38 [20];
  
  FUN_005456f8(param_1,0x54631d);
  FUN_005456f8(param_1,0x5462a5);
  FUN_005456f8(param_1,0x546395);
  FUN_00545074(auStack_d8);
  local_c0 = (undefined1 *)0x0;
  local_c8[0] = operator_new(4);
  *local_c8[0] = param_1;
  local_bc = &LAB_0053e85e_1;
  local_c0 = &LAB_00536200_1;
  FUN_00537340(auStack_d8,param_1,0x5462a5,(_Function_base *)local_c8);
  std::_Function_base::~_Function_base((_Function_base *)local_c8);
  local_b0 = (undefined1 *)0x0;
  local_b8[0] = operator_new(4);
  *local_b8[0] = param_1;
  local_ac = &LAB_0053e8a0_1;
  local_b0 = &LAB_00536230_1;
  FUN_00537340(auStack_d8,param_1,0x5462e1,(_Function_base *)local_b8);
  std::_Function_base::~_Function_base((_Function_base *)local_b8);
  FUN_00547b10(auStack_a8,&DAT_00961324,&DAT_00962624,"Invitations",
               "Lcom/google/android/gms/games/multiplayer/Invitations;");
  iVar3 = param_1 + 0xf4;
  uVar1 = FUN_00548bac(iVar3);
  uVar2 = FUN_00548bac(auStack_d8);
  FUN_00548d90(auStack_a8,"registerInvitationListener",
               "(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/multiplayer/OnInvitationReceivedListener;)V"
               ,uVar1,uVar2);
  FUN_00548ab0(auStack_a8);
  FUN_00545074(auStack_98);
  local_80 = (undefined1 *)0x0;
  local_88[0] = operator_new(4);
  *local_88[0] = param_1;
  local_7c = &LAB_0053e8e2_1;
  local_80 = &LAB_00536260_1;
  FUN_00537340(auStack_98,param_1,0x54631d,(_Function_base *)local_88);
  std::_Function_base::~_Function_base((_Function_base *)local_88);
  local_70 = (undefined1 *)0x0;
  local_78[0] = operator_new(4);
  *local_78[0] = param_1;
  local_6c = &LAB_0053e924_1;
  local_70 = &LAB_00536290_1;
  FUN_00537340(auStack_98,param_1,0x546359,(_Function_base *)local_78);
  std::_Function_base::~_Function_base((_Function_base *)local_78);
  FUN_00547b10(auStack_68,&DAT_00961324,&DAT_00960e24,"TurnBasedMultiplayer",
               "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer;");
  uVar1 = FUN_00548bac(iVar3);
  uVar2 = FUN_00548bac(auStack_98);
  FUN_00548d90(auStack_68,"registerMatchUpdateListener",
               "(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/multiplayer/turnbased/OnTurnBasedMatchUpdateReceivedListener;)V"
               ,uVar1,uVar2);
  FUN_00548ab0(auStack_68);
  FUN_00545074(auStack_58);
  local_40 = (undefined1 *)0x0;
  local_48[0] = operator_new(4);
  *local_48[0] = param_1;
  local_3c = &LAB_0053e966_1;
  local_40 = &LAB_005362c0_1;
  FUN_00537340(auStack_58,param_1,0x546395,(_Function_base *)local_48);
  std::_Function_base::~_Function_base((_Function_base *)local_48);
  FUN_00547b10(auStack_38,&DAT_00961324,&DAT_00962524,"Quests",
               "Lcom/google/android/gms/games/quest/Quests;");
  uVar1 = FUN_00548bac(iVar3);
  uVar2 = FUN_00548bac(auStack_58);
  FUN_00548d90(auStack_38,"registerQuestUpdateListener",
               "(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/quest/QuestUpdateListener;)V"
               ,uVar1,uVar2);
  FUN_00548ab0(auStack_38);
  FUN_00548ab0(auStack_58);
  FUN_00548ab0(auStack_98);
  FUN_00548ab0(auStack_d8);
  return;
}

// ---- FUN_0053e394  @ 0x53e394
void FUN_0053e394(int param_1,undefined4 param_2)

{
  int iVar1;
  undefined4 uVar2;
  mutex *local_118;
  undefined1 auStack_114 [4];
  undefined1 auStack_110 [4];
  undefined1 auStack_10c [4];
  undefined4 local_108;
  undefined4 local_104;
  TurnBasedMatch aTStack_100 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_fc [4];
  undefined4 local_f8;
  undefined4 local_f4;
  undefined1 auStack_f0 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_ec [4];
  SnapshotMetadata aSStack_e8 [8];
  Quest aQStack_e0 [8];
  undefined1 auStack_d8 [16];
  undefined1 auStack_c8 [16];
  undefined1 auStack_b8 [16];
  undefined1 auStack_a8 [16];
  MultiplayerInvitation aMStack_98 [16];
  undefined1 auStack_88 [16];
  undefined1 auStack_78 [16];
  undefined1 auStack_68 [16];
  undefined1 auStack_58 [16];
  undefined4 local_48;
  undefined4 local_44 [3];
  undefined4 local_38;
  undefined4 local_34 [4];
  
  local_118 = (mutex *)(param_1 + 0x114);
  std::mutex::lock(local_118);
  iVar1 = FUN_00548c48(param_2);
  if (iVar1 == 0) {
    FUN_005166ae(1,"Play Games callback indicates connection.");
    FUN_00544d30();
    FUN_00547b10(auStack_d8,&DAT_00961a24,&DAT_009628a4,"EXTRA_TURN_BASED_MATCH",
                 "Ljava/lang/String;");
    uVar2 = FUN_00548bac(auStack_d8);
    FUN_0054968c(auStack_c8,param_2,&DAT_009620a4,"getParcelable",
                 "(Ljava/lang/String;)Landroid/os/Parcelable;",uVar2);
    iVar1 = FUN_00548c48(auStack_c8);
    if (iVar1 == 0) {
      FUN_00566298(&local_108,auStack_c8);
      local_38 = local_108;
      local_34[0] = local_104;
      local_104 = 0;
      local_108 = 0;
      gpg::TurnBasedMatch::TurnBasedMatch((TurnBasedMatch *)&local_48,&local_38);
      std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
                ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_34);
      std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
                ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_104);
      uVar2 = gpg::TurnBasedMatch::Id((TurnBasedMatch *)&local_48);
      FUN_007c64e8(auStack_114,uVar2);
      gpg::TurnBasedMatch::TurnBasedMatch(aTStack_100,(TurnBasedMatch *)&local_48);
      FUN_00511df4(param_1,2,1,auStack_114,aTStack_100);
      std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_fc);
      FUN_007c5914(auStack_114);
      std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
                ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_44);
    }
    FUN_00547b10(auStack_b8,&DAT_00961a24,&DAT_009628a4,"EXTRA_INVITATION","Ljava/lang/String;");
    uVar2 = FUN_00548bac(auStack_b8);
    FUN_0054968c(auStack_a8,param_2,&DAT_00962f24,"getParcelable",
                 "(Ljava/lang/String;)Landroid/os/Parcelable;",uVar2);
    iVar1 = FUN_00548c48(auStack_a8);
    if (iVar1 == 0) {
      FUN_00566880(&local_f8,auStack_a8);
      local_48 = local_f8;
      local_44[0] = local_f4;
      local_f4 = 0;
      local_f8 = 0;
      gpg::MultiplayerInvitation::MultiplayerInvitation
                ((MultiplayerInvitation *)&local_38,&local_48);
      std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
                ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_44);
      std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
                ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_f4);
      uVar2 = gpg::MultiplayerInvitation::Id((MultiplayerInvitation *)&local_38);
      FUN_007c64e8(auStack_110,uVar2);
      gpg::MultiplayerInvitation::MultiplayerInvitation
                (aMStack_98,(MultiplayerInvitation *)&local_38);
      FUN_00511be0(param_1,2,1,auStack_110,aMStack_98);
      gpg::MultiplayerInvitation::~MultiplayerInvitation(aMStack_98);
      FUN_007c5914(auStack_110);
      gpg::MultiplayerInvitation::~MultiplayerInvitation((MultiplayerInvitation *)&local_38);
    }
    FUN_00547b10(auStack_88,&DAT_009631a4,&DAT_009628a4,"EXTRA_SNAPSHOT_METADATA",
                 "Ljava/lang/String;");
    uVar2 = FUN_00548bac(auStack_88);
    FUN_0054968c(auStack_78,param_2,&DAT_00961224,"getParcelable",
                 "(Ljava/lang/String;)Landroid/os/Parcelable;",uVar2);
    iVar1 = FUN_00548c48(auStack_78);
    if (iVar1 == 0) {
      FUN_007c6a60(auStack_10c,&DAT_00801f93,&local_38);
      FUN_00562324(auStack_f0,auStack_78,auStack_10c);
      gpg::SnapshotMetadata::SnapshotMetadata(aSStack_e8,auStack_f0);
      FUN_00537568(param_1 + 0xb4,aSStack_e8);
      gpg::SnapshotMetadata::~SnapshotMetadata(aSStack_e8);
      std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_ec);
      FUN_007c5914(auStack_10c);
    }
    FUN_00547b10(auStack_68,&DAT_00962524,&DAT_009628a4,"EXTRA_QUEST","Ljava/lang/String;");
    uVar2 = FUN_00548bac(auStack_68);
    FUN_0054968c(auStack_58,param_2,&DAT_009632a4,"getParcelable",
                 "(Ljava/lang/String;)Landroid/os/Parcelable;",uVar2);
    iVar1 = FUN_00548c48(auStack_58);
    if (iVar1 == 0) {
      FUN_005583d8(aQStack_e0,auStack_58);
      FUN_00537654(param_1 + 0xd4,aQStack_e0);
      gpg::Quest::~Quest(aQStack_e0);
    }
    FUN_0053e0a0(param_1);
    iVar1 = *(int *)(param_1 + 0x118);
    if (iVar1 == 0) {
      FUN_005166ae(4,"Unexpected response: connection failed.");
    }
    else {
      FUN_00547b78(&local_48,&DAT_00962da4,"(ILandroid/app/PendingIntent;)V",0,0);
      FUN_00549380(&local_38,&local_48);
      FUN_0053de78(iVar1,&local_38);
      FUN_00548ab0(&local_38);
      FUN_00548ab0(&local_48);
    }
    FUN_00548ab0(auStack_58);
    FUN_00548ab0(auStack_68);
    FUN_00548ab0(auStack_78);
    FUN_00548ab0(auStack_88);
    FUN_00548ab0(auStack_a8);
    FUN_00548ab0(auStack_b8);
    FUN_00548ab0(auStack_c8);
    FUN_00548ab0(auStack_d8);
  }
  else {
    FUN_005166ae(1,"Play Games callback indicates disconnection.");
    FUN_00545790();
  }
  std::lock_guard<std::mutex>::~lock_guard((lock_guard<std::mutex> *)&local_118);
  return;
}

// ---- FUN_0053e81c  @ 0x53e81c
void FUN_0053e81c(undefined4 *param_1)

{
  undefined4 uVar1;
  undefined1 auStack_30 [16];
  undefined1 auStack_20 [16];
  
  param_1 = (undefined4 *)*param_1;
  FUN_00548b30(auStack_30);
  uVar1 = *param_1;
  FUN_00548b30(auStack_20,auStack_30);
  FUN_0053e394(uVar1,auStack_20);
  FUN_00548ab0(auStack_20);
  FUN_00548ab0(auStack_30);
  return;
}

// ---- FUN_0053ea70  @ 0x53ea70
undefined4
FUN_0053ea70(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined1 param_4,
            undefined4 param_5)

{
  undefined4 uVar1;
  undefined1 local_49;
  undefined4 local_48;
  undefined4 local_44;
  undefined1 auStack_40 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_3c [4];
  undefined4 local_38;
  undefined4 local_34;
  undefined4 local_30;
  undefined4 local_2c;
  undefined1 auStack_28 [16];
  
  local_49 = param_4;
  local_48 = param_3;
  local_44 = param_2;
  FUN_0053777a(auStack_40,param_1);
  FUN_00547b10(auStack_28,&DAT_00961324,&DAT_00963224,"RealTimeMultiplayer",
               "Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;");
  FUN_0053ccc0(&local_38,0,&local_30,auStack_40,param_5,auStack_28,&local_44,&local_48,&local_49);
  local_30 = local_38;
  local_2c = local_34;
  local_34 = 0;
  local_38 = 0;
  uVar1 = FUN_00510986(param_1,&local_30);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_2c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_34);
  FUN_00548ab0(auStack_28);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_3c);
  return uVar1;
}

// ---- FUN_0053eb38  @ 0x53eb38
undefined4 FUN_0053eb38(undefined4 *param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  int *piVar3;
  undefined1 auStack_30 [16];
  undefined1 auStack_20 [16];
  
  piVar3 = (int *)*param_1;
  FUN_00547b10(auStack_20,&DAT_00961324,&DAT_00962524,"Quests",
               "Lcom/google/android/gms/games/quest/Quests;");
  uVar1 = FUN_00548bac(*piVar3 + 0xf4);
  uVar2 = gpg::Quest::Id((Quest *)(piVar3 + 1));
  FUN_0054942c(auStack_30,uVar2,0);
  uVar2 = FUN_00548bac(auStack_30);
  FUN_00548d90(auStack_20,"showStateChangedPopup",
               "(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V",uVar1,
               uVar2);
  FUN_00548ab0(auStack_30);
  FUN_00548ab0(auStack_20);
  return 1;
}

// ---- FUN_0053ebcc  @ 0x53ebcc
void FUN_0053ebcc(undefined4 param_1,undefined4 param_2)

{
  undefined4 uVar1;
  int iVar2;
  undefined4 uVar3;
  int iVar4;
  undefined1 auStack_48 [16];
  undefined1 auStack_38 [20];
  
  uVar1 = FUN_00549a1c();
  iVar2 = FUN_00510774(param_1);
  for (iVar4 = *(int *)(iVar2 + 0xc); iVar4 != iVar2 + 4; iVar4 = FUN_007997a0(iVar4)) {
    FUN_0054942c(auStack_38,iVar4 + 0x10,uVar1);
    uVar3 = FUN_00548bac(auStack_38);
    FUN_00547b78(auStack_48,&DAT_009640a4,"(Ljava/lang/String;)V",uVar3);
    FUN_00548ab0(auStack_38);
    uVar3 = FUN_00548bac(auStack_48);
    FUN_0054968c(auStack_38,param_2,&DAT_00961da4,"addScope",
                 "(Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;"
                 ,uVar3);
    FUN_00548ab0(auStack_38);
    FUN_00548ab0(auStack_48);
  }
  return;
}

// ---- FUN_0053ec84  @ 0x53ec84
undefined4 FUN_0053ec84(undefined4 param_1,undefined4 param_2)

{
  undefined4 uVar1;
  undefined1 auStack_50 [16];
  undefined1 auStack_40 [16];
  undefined1 auStack_30 [20];
  
  FUN_00548074(auStack_50,&DAT_00962fa4,&DAT_00962ba4,"builder",
               "()Lcom/google/android/gms/games/Games$GamesOptions$Builder;");
  uVar1 = FUN_0051077c(param_2,1,1);
  FUN_0054968c(auStack_40,auStack_50,&DAT_00962ba4,"setSdkVariant",
               "(I)Lcom/google/android/gms/games/Games$GamesOptions$Builder;",uVar1);
  FUN_0054968c(auStack_30,auStack_40,&DAT_00962fa4,"build",
               "()Lcom/google/android/gms/games/Games$GamesOptions;");
  FUN_00548b30(param_1,auStack_30);
  FUN_00548ab0(auStack_30);
  FUN_00548ab0(auStack_40);
  FUN_00548ab0(auStack_50);
  return param_1;
}

// ---- FUN_0053ed48  @ 0x53ed48
void FUN_0053ed48(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  code *pcVar1;
  int iStack_28;
  undefined4 uStack_24;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  
  iStack_28 = param_1;
  uStack_24 = param_2;
  uStack_20 = param_3;
  uStack_1c = param_4;
  if (*(int *)(param_1 + 8) == 0) {
    FUN_007c4d54();
  }
  pcVar1 = *(code **)(param_1 + 0xc);
  FUN_00548b30(&iStack_28);
  (*pcVar1)(param_1,&iStack_28,param_3,param_4);
  FUN_00548ab0(&iStack_28);
  return;
}

// ---- FUN_0053eea8  @ 0x53eea8
undefined4 FUN_0053eea8(int param_1,undefined4 param_2,int param_3)

{
  undefined4 uVar1;
  function<void(std::function<void()>)> *pfVar2;
  undefined4 *puVar3;
  code *pcVar4;
  undefined4 uVar5;
  undefined4 local_60;
  __shared_count a_Stack_5c [4];
  _Function_base a_Stack_58 [16];
  undefined4 *local_48 [2];
  undefined1 *local_40;
  undefined1 *local_3c;
  undefined4 local_38;
  undefined4 local_34;
  code *local_30;
  undefined4 local_2c;
  undefined4 local_28;
  undefined4 local_24;
  
  if (*(int *)(param_1 + 0x10c) == 0) {
    local_30 = *(code **)(param_3 + 8);
    pcVar4 = (code *)0x0;
    if (local_30 != (code *)0x0) {
      local_2c = *(undefined4 *)(param_3 + 0xc);
      (*local_30)((_Any_data *)&local_38,param_3,2);
      pcVar4 = local_30;
    }
    local_30 = pcVar4;
    std::swap<std::_Any_data>((_Any_data *)&local_38,(_Any_data *)(param_1 + 0x104));
    pcVar4 = *(code **)(param_1 + 0x10c);
    *(code **)(param_1 + 0x10c) = local_30;
    uVar1 = *(undefined4 *)(param_1 + 0x110);
    *(undefined4 *)(param_1 + 0x110) = local_2c;
    local_30 = pcVar4;
    local_2c = uVar1;
    std::_Function_base::~_Function_base((_Function_base *)&local_38);
    if (*(int *)(param_1 + 0x9c) == 0) {
      uVar1 = FUN_00548bac(param_2);
      FUN_00548d90(param_1 + 0x84,"startActivityForResult","(Landroid/content/Intent;I)V",uVar1,
                   0x475047);
    }
    else {
      FUN_00549380((_Any_data *)&local_38,param_2);
      FUN_00537d34(&local_60,0,(_Function_base *)local_48,(_Any_data *)&local_38);
      FUN_00548ab0((_Any_data *)&local_38);
      FUN_00536e1e(a_Stack_58,param_1 + 0x94);
      pfVar2 = (function<void(std::function<void()>)> *)FUN_0051075c(param_1);
      local_38 = local_60;
      std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
                ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_34,a_Stack_5c);
      FUN_00536e1e(&local_30,a_Stack_58);
      local_40 = (undefined1 *)0x0;
      puVar3 = operator_new(0x18);
      uVar1 = local_34;
      *puVar3 = local_38;
      puVar3[1] = 0;
      local_34 = 0;
      puVar3[1] = uVar1;
      local_38 = 0;
      puVar3[4] = 0;
      std::swap<std::_Any_data>((_Any_data *)&local_30,(_Any_data *)(puVar3 + 2));
      uVar1 = puVar3[4];
      uVar5 = puVar3[5];
      puVar3[4] = local_28;
      puVar3[5] = local_24;
      local_3c = &LAB_00536150_1;
      local_40 = &LAB_00536e48_1;
      local_48[0] = puVar3;
      local_28 = uVar1;
      local_24 = uVar5;
      std::function<void(std::function<void()>)>::operator()(pfVar2,(_Function_base *)local_48);
      std::_Function_base::~_Function_base((_Function_base *)local_48);
      std::_Function_base::~_Function_base((_Function_base *)&local_30);
      std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
                ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_34);
      std::_Function_base::~_Function_base(a_Stack_58);
      std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
                ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)a_Stack_5c);
    }
    uVar1 = 1;
  }
  else {
    FUN_005166ae(4,
                 "Trying to show UI while waiting for a result from an existing UI. Please ensure that OnActivityResult is forwarded to the Games C++ SDK from your Java activity. See android_support.h for more details."
                );
    uVar1 = 0;
  }
  return uVar1;
}

// ---- FUN_0053f04c  @ 0x53f04c
undefined4 * FUN_0053f04c(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0053f04c_1_00925648;
  FUN_00548ab0(param_1 + 0x15);
  FUN_00539658(param_1);
  return param_1;
}

// ---- FUN_0053f06c  @ 0x53f06c
void * FUN_0053f06c(void *param_1)

{
  FUN_0053f04c();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0053f080  @ 0x53f080
void FUN_0053f080(int param_1)

{
  undefined4 uVar1;
  int iVar2;
  undefined4 uVar3;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_54 [4];
  undefined4 local_50;
  undefined4 local_4c;
  undefined1 auStack_48 [16];
  undefined4 *local_38;
  undefined4 local_34;
  code *local_30;
  undefined1 *local_2c;
  
  uVar1 = FUN_00548bac(*(int *)(param_1 + 0x28) + 0xf4);
  FUN_0054968c(auStack_48,param_1 + 0x54,&DAT_009630a4,"getSelectOpponentsIntent",
               "(Lcom/google/android/gms/common/api/GoogleApiClient;IIZ)Landroid/content/Intent;",
               uVar1,*(undefined4 *)(param_1 + 100),*(undefined4 *)(param_1 + 0x68),
               *(undefined1 *)(param_1 + 0x6c));
  uVar3 = *(undefined4 *)(param_1 + 0x28);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            (a_Stack_54,(__weak_count *)(param_1 + 8));
  local_38 = *(undefined4 **)(param_1 + 4);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_34,(__shared_count *)a_Stack_54);
  local_4c = local_34;
  local_50 = local_38;
  local_38 = (undefined4 *)0x0;
  local_34 = 0;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_34);
  local_30 = (code *)0x0;
  local_38 = operator_new(8);
  uVar1 = local_4c;
  *local_38 = local_50;
  local_38[1] = 0;
  local_4c = 0;
  local_50 = (undefined4 *)0x0;
  local_38[1] = uVar1;
  local_2c = &LAB_0053f860_1;
  local_30 = (code *)0x536d19;
  iVar2 = FUN_0053eea8(uVar3,auStack_48,(_Function_base *)&local_38);
  std::_Function_base::~_Function_base((_Function_base *)&local_38);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_4c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_54);
  if (iVar2 == 0) {
    memset((_Function_base *)&local_38,0,0x18);
    local_38 = (undefined4 *)0xfffffff4;
    FUN_00521690(param_1 + 0x30,(_Function_base *)&local_38);
    std::vector<std::string,std::allocator<std::string>>::~vector
              ((vector<std::string,std::allocator<std::string>> *)&local_34);
  }
  FUN_00548ab0(auStack_48);
  return;
}

// ---- FUN_0053f1c0  @ 0x53f1c0
PlayerSelectUIResponse *
FUN_0053f1c0(PlayerSelectUIResponse *param_1,undefined4 param_2,undefined4 param_3)

{
  string *psVar1;
  string *psVar2;
  undefined4 uVar3;
  int iVar4;
  uint uVar5;
  string *psVar6;
  int iVar7;
  uint uVar8;
  undefined1 *local_84;
  undefined1 auStack_80 [16];
  undefined1 auStack_70 [16];
  undefined1 auStack_60 [16];
  undefined1 auStack_50 [16];
  undefined4 local_40;
  string *local_3c;
  string *local_38;
  string *local_34;
  undefined4 local_30;
  undefined4 local_2c;
  
  memset((PlayerSelectUIResponse *)&local_40,0,0x18);
  local_40 = 1;
  FUN_00547b10(auStack_80,&DAT_00961a24,&DAT_009628a4,"EXTRA_MIN_AUTOMATCH_PLAYERS",
               "Ljava/lang/String;");
  FUN_00547b10(auStack_70,&DAT_00961a24,&DAT_009628a4,"EXTRA_MAX_AUTOMATCH_PLAYERS",
               "Ljava/lang/String;");
  FUN_00547b10(auStack_60,&DAT_00961324,&DAT_009628a4,"EXTRA_PLAYER_IDS","Ljava/lang/String;");
  uVar3 = FUN_00548bac(auStack_80);
  iVar4 = FUN_00548c54(param_3,"hasExtra","(Ljava/lang/String;)Z",uVar3);
  if (iVar4 == 0) {
    local_40 = 0xfffffffa;
  }
  else {
    uVar3 = FUN_00548bac(auStack_80);
    local_30 = FUN_00548cc0(param_3,"getIntExtra","(Ljava/lang/String;I)I",uVar3,0);
    uVar3 = FUN_00548bac(auStack_70);
    local_2c = FUN_00548cc0(param_3,"getIntExtra","(Ljava/lang/String;I)I",uVar3,0);
    uVar3 = FUN_00548bac(auStack_60);
    FUN_0054968c(auStack_50,param_3,&DAT_00961824,"getStringArrayListExtra",
                 "(Ljava/lang/String;)Ljava/util/ArrayList;",uVar3);
    uVar5 = FUN_00548d1c(auStack_50,&DAT_00806800);
    psVar2 = local_38;
    psVar1 = local_3c;
    if (0x3fffffff < uVar5) {
                    /* WARNING: Subroutine does not return */
      FUN_007c49e8("vector::reserve");
    }
    if ((uint)((int)local_34 - (int)local_3c >> 2) < uVar5) {
      iVar4 = (int)local_38 - (int)local_3c;
      if (uVar5 == 0) {
        psVar6 = (string *)0x0;
      }
      else {
        psVar6 = (string *)FUN_0053636c();
      }
      for (iVar7 = 0; psVar2 != psVar1 + iVar7; iVar7 = iVar7 + 4) {
        if (psVar6 + iVar7 != (string *)0x0) {
          *(undefined4 *)(psVar6 + iVar7) = *(undefined4 *)(psVar1 + iVar7);
          *(undefined1 **)(psVar1 + iVar7) = &DAT_00972528;
        }
      }
      std::_Destroy_aux<false>::__destroy<std::string*>(local_3c,local_38);
      FUN_00536364(local_3c);
      local_38 = psVar6 + (iVar4 >> 2) * 4;
      local_34 = psVar6 + uVar5 * 4;
      local_3c = psVar6;
    }
    for (uVar8 = 0; uVar8 != uVar5; uVar8 = uVar8 + 1) {
      FUN_0054904c((string *)&local_84,auStack_50,&DAT_0080598d,"(I)Ljava/lang/Object;",uVar8);
      if (local_38 == local_34) {
        std::vector<std::string,std::allocator<std::string>>::_M_emplace_back_aux<std::string>
                  ((vector<std::string,std::allocator<std::string>> *)&local_3c,(string *)&local_84)
        ;
      }
      else {
        if (local_38 != (string *)0x0) {
          *(undefined1 **)local_38 = local_84;
          local_84 = &DAT_00972528;
        }
        local_38 = local_38 + 4;
      }
      FUN_007c5914((string *)&local_84);
    }
    FUN_00548ab0(auStack_50);
  }
  gpg::TurnBasedMultiplayerManager::PlayerSelectUIResponse::PlayerSelectUIResponse
            (param_1,(PlayerSelectUIResponse *)&local_40);
  FUN_00548ab0(auStack_60);
  FUN_00548ab0(auStack_70);
  FUN_00548ab0(auStack_80);
  std::vector<std::string,std::allocator<std::string>>::~vector
            ((vector<std::string,std::allocator<std::string>> *)&local_3c);
  return param_1;
}

// ---- FUN_0053f450  @ 0x53f450
undefined4 * FUN_0053f450(undefined4 *param_1,undefined4 *param_2,undefined4 param_3)

{
  function *pfVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  int iVar5;
  undefined4 *puVar6;
  undefined4 *puVar7;
  function<void(std::function<void()>)> afStack_108 [16];
  function<void(std::function<void()>)> afStack_f8 [16];
  undefined1 auStack_e8 [16];
  undefined1 auStack_d8 [16];
  undefined1 auStack_c8 [16];
  undefined1 auStack_b8 [16];
  undefined1 auStack_a8 [16];
  undefined1 auStack_98 [16];
  undefined1 auStack_88 [16];
  undefined1 auStack_78 [16];
  undefined1 auStack_68 [16];
  undefined4 *local_58 [2];
  undefined1 *local_50;
  undefined4 local_4c;
  undefined1 auStack_48 [16];
  undefined4 *local_38 [2];
  undefined1 *local_30;
  undefined4 local_2c;
  
  local_38[0] = (undefined4 *)*param_2;
  *param_2 = 0;
  FUN_00512518(param_1,(_Function_base *)local_38);
  FUN_00537cd8((_Function_base *)local_38);
  *param_1 = &PTR_FUN_0053dcf0_1_00925d28;
  param_1[0x1d] = &PTR_DAT_00925ea4;
  FUN_00558eea(param_1 + 0x1e);
  puVar7 = param_1 + 0x21;
  FUN_0053dbf8(puVar7,param_3);
  puVar6 = param_1 + 0x3d;
  FUN_00548b18(puVar6);
  param_1[0x45] = 0;
  param_1[0x43] = 0;
  param_1[0x45] = 0;
  param_1[0x46] = 0;
  FUN_00548b18(param_1 + 0x47);
  *(undefined1 *)(param_1 + 0x4b) = 0;
  param_1[0x4c] = 0;
  FUN_007be0ac(param_1 + 0x4c);
  pfVar1 = (function *)FUN_0051075c(param_1);
  std::function<void(std::function<void()>)>::function(afStack_108,pfVar1);
  if (param_1[0x37] != 0) {
    std::function<void(std::function<void()>)>::operator=
              ((function<void(std::function<void()>)> *)(param_1 + 0x35),(function *)afStack_108);
  }
  std::_Function_base::~_Function_base((_Function_base *)afStack_108);
  pfVar1 = (function *)FUN_0051075c(param_1);
  std::function<void(std::function<void()>)>::function(afStack_f8,pfVar1);
  if (param_1[0x2f] != 0) {
    std::function<void(std::function<void()>)>::operator=
              ((function<void(std::function<void()>)> *)(param_1 + 0x2d),(function *)afStack_f8);
  }
  std::_Function_base::~_Function_base((_Function_base *)afStack_f8);
  uVar2 = FUN_00548bac(puVar7);
  FUN_00545074(auStack_68);
  local_50 = (undefined1 *)0x0;
  local_58[0] = operator_new(4);
  *local_58[0] = param_1;
  local_4c = 0x53e81d;
  local_50 = &LAB_005361a0_1;
  FUN_00537340(auStack_68,param_1,&LAB_005461f0_1,(_Function_base *)local_58);
  std::_Function_base::~_Function_base((_Function_base *)local_58);
  FUN_00548b30(auStack_e8,auStack_68);
  FUN_00548ab0(auStack_68);
  uVar3 = FUN_00548bac(auStack_e8);
  FUN_00545074(auStack_48);
  local_30 = (undefined1 *)0x0;
  local_38[0] = operator_new(4);
  *local_38[0] = param_1;
  local_2c = 0x53e05d;
  local_30 = &LAB_005361d0_1;
  FUN_00537340(auStack_48,param_1,0x546269,(_Function_base *)local_38);
  std::_Function_base::~_Function_base((_Function_base *)local_38);
  FUN_00548b30(auStack_d8,auStack_48);
  FUN_00548ab0(auStack_48);
  uVar4 = FUN_00548bac(auStack_d8);
  FUN_00547b78((_Function_base *)local_58,&DAT_00961da4,
               "(Landroid/content/Context;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V"
               ,uVar2,uVar3,uVar4);
  FUN_00548ab0(auStack_d8);
  FUN_00548ab0(auStack_e8);
  iVar5 = FUN_00548c48((_Function_base *)local_58);
  if (iVar5 == 0) {
    FUN_00547b10(auStack_b8,&DAT_00961324,&DAT_009633a4,&DAT_008068f7,
                 "Lcom/google/android/gms/common/api/Api;");
    uVar2 = FUN_00548bac(auStack_b8);
    FUN_0053ec84(auStack_a8,param_1);
    uVar3 = FUN_00548bac(auStack_a8);
    FUN_0054968c(auStack_c8,(_Function_base *)local_58,&DAT_00961da4,"addApi",
                 "(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions$HasOptions;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;"
                 ,uVar2,uVar3);
    FUN_00548ab0(auStack_c8);
    FUN_00548ab0(auStack_a8);
    FUN_00548ab0(auStack_b8);
    FUN_0053ebcc(param_1,(_Function_base *)local_58);
    iVar5 = FUN_00548c48(param_1 + 0x29);
    if (iVar5 == 0) {
      uVar2 = FUN_00548bac(param_1 + 0x29);
      FUN_0054968c(auStack_98,(_Function_base *)local_58,&DAT_00961da4,"setViewForPopups",
                   "(Landroid/view/View;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;"
                   ,uVar2);
      FUN_00548ab0(auStack_98);
    }
    FUN_0054968c(auStack_78,(_Function_base *)local_58,&DAT_009613a4,"build",
                 "()Lcom/google/android/gms/common/api/GoogleApiClient;",uVar2);
    FUN_00549380(auStack_88,auStack_78);
    FUN_00548b60(puVar6,auStack_88);
    FUN_00548ab0(auStack_88);
    FUN_00548ab0(auStack_78);
    iVar5 = FUN_00548c48(puVar6);
    if (iVar5 != 0) {
      FUN_005166ae(4,"Failed to create GoogleApiClient from builder.");
    }
    FUN_005488f0(param_1 + 0x1d,puVar7);
  }
  else {
    FUN_005166ae(4,"Failed to create GoogleApiClient.Builder.");
  }
  FUN_00548ab0((_Function_base *)local_58);
  return param_1;
}

// ---- FUN_0053f800  @ 0x53f800
undefined4 * FUN_0053f800(undefined4 *param_1,undefined4 *param_2,undefined4 *param_3)

{
  void *pvVar1;
  undefined4 uVar2;
  undefined4 *puStack_20;
  undefined4 *local_1c;
  
  puStack_20 = param_1;
  local_1c = param_2;
  FUN_00549ab4(&puStack_20);
  local_1c = (undefined4 *)*param_2;
  *param_2 = 0;
  uVar2 = *param_3;
  pvVar1 = operator_new(0x134);
  FUN_0053f450(pvVar1,&local_1c,uVar2);
  *param_1 = pvVar1;
  FUN_00537cd8(&local_1c);
  FUN_00549ad2(&puStack_20);
  return param_1;
}

// ---- FUN_0053f8b0  @ 0x53f8b0
undefined4 * FUN_0053f8b0(undefined4 *param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  undefined4 local_1c;
  undefined4 uStack_18;
  
  *param_1 = 0;
  param_1[1] = 0;
  local_1c = param_2;
  uStack_18 = param_3;
  puVar1 = operator_new(0x1c);
  *param_1 = puVar1;
  if (puVar1 != (undefined4 *)0x0) {
    *puVar1 = 0;
    *puVar1 = 0;
    puVar1[1] = 0;
    FUN_007be0ac(puVar1 + 1);
    *(undefined1 *)(puVar1 + 2) = 0;
    FUN_00548b18(puVar1 + 3);
  }
  uVar2 = *param_1;
  local_1c = 0;
  puVar1 = operator_new(0x14);
  if (puVar1 != (undefined4 *)0x0) {
    puVar1[1] = 1;
    puVar1[2] = 1;
    puVar1[3] = uVar2;
    *puVar1 = &PTR_LAB_00535394_1_00925ce8;
  }
  local_1c = param_1[1];
  param_1[1] = puVar1;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_1c);
  return param_1;
}

// ---- FUN_0053f968  @ 0x53f968
undefined4 FUN_0053f968(int param_1)

{
  int iVar1;
  undefined4 *puVar2;
  uint uVar3;
  uint uVar4;
  undefined4 uVar5;
  mutex *this;
  int iVar6;
  int iVar7;
  mutex *local_94;
  undefined4 local_90;
  __shared_count a_Stack_8c [4];
  undefined1 auStack_88 [16];
  undefined1 auStack_78 [16];
  undefined1 auStack_68 [16];
  undefined1 auStack_58 [16];
  undefined1 auStack_48 [16];
  mutex *local_38 [5];
  
  iVar6 = param_1 + 0xf4;
  iVar1 = FUN_00548c48(iVar6);
  if (iVar1 != 0) {
    FUN_005166ae(4,"Not authorizing: no client.");
    return 0xfffffffd;
  }
  this = (mutex *)(param_1 + 0x114);
  FUN_0053f8b0(&local_90,0,(lock_guard<std::mutex> *)local_38);
  local_38[0] = this;
  std::mutex::lock(this);
  if (*(int *)(param_1 + 0x118) != 0) {
    FUN_005166ae(4,"Not authorizing: already in progress.");
    uVar5 = 0xfffffffd;
    std::lock_guard<std::mutex>::~lock_guard((lock_guard<std::mutex> *)local_38);
    goto LAB_0053fb5c;
  }
  FUN_00548b18(auStack_88);
  FUN_00548b60(param_1 + 0x11c,auStack_88);
  iVar7 = param_1 + 0x118;
  FUN_00548ab0(auStack_88);
  puVar2 = operator_new(8);
  *puVar2 = local_90;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(puVar2 + 1),a_Stack_8c);
  FUN_005370a4(iVar7,puVar2);
  std::lock_guard<std::mutex>::~lock_guard((lock_guard<std::mutex> *)local_38);
  iVar1 = FUN_00548cb4(iVar6,"isConnected");
  if (iVar1 != 0) {
    FUN_005166ae(2,"Already connected to Google Play.");
    local_38[0] = this;
    std::mutex::lock(this);
    FUN_005370a4(iVar7,0);
    std::lock_guard<std::mutex>::~lock_guard((lock_guard<std::mutex> *)local_38);
    uVar5 = 1;
    goto LAB_0053fb5c;
  }
  FUN_00548de4(iVar6,"connect");
  FUN_00548b18(auStack_68);
  FUN_00548b18(auStack_58);
  FUN_00537458(auStack_78,&local_90,15000,0,auStack_68,auStack_58);
  FUN_00548ab0(auStack_58);
  FUN_00548ab0(auStack_68);
  local_94 = this;
  std::mutex::lock(this);
  FUN_005370a4(iVar7,0);
  iVar1 = FUN_00548c48(auStack_78);
  if (iVar1 == 0) {
    iVar1 = FUN_00548cb4(auStack_78,"isSuccess");
    if (iVar1 == 0) {
      iVar1 = FUN_00548cb4(auStack_78,"hasResolution");
      if (iVar1 == 0) {
        uVar3 = FUN_00548d1c(auStack_78,"getErrorCode");
        FUN_005166ae(2,"Error connecting to Google Play: code %i.",uVar3);
        if (uVar3 < 0xd) {
          uVar4 = 1 << (uVar3 & 0xff);
          if ((uVar4 & 0x51) == 0) {
            if ((uVar4 & 0x1fae) != 0) goto LAB_0053fb4c;
            goto LAB_0053fb3e;
          }
        }
        else {
LAB_0053fb3e:
          FUN_005166ae(4,"Unrecognized connection result error code: %d",uVar3);
        }
        uVar5 = 0xfffffffe;
      }
      else {
        FUN_005166ae(2,"UI interaction required to connect to Google Play.");
        FUN_0054968c(auStack_48,auStack_78,&DAT_00964024,"getResolution",
                     "()Landroid/app/PendingIntent;");
        FUN_00549380((lock_guard<std::mutex> *)local_38,auStack_48);
        FUN_00548b60(param_1 + 0x11c,(lock_guard<std::mutex> *)local_38);
        FUN_00548ab0((lock_guard<std::mutex> *)local_38);
        FUN_00548ab0(auStack_48);
LAB_0053fb4c:
        uVar5 = 0xfffffffd;
      }
    }
    else {
      FUN_005166ae(2,"Successfully connected to Google Play.");
      uVar5 = 1;
    }
  }
  else {
    FUN_005166ae(2,"Timed out connecting to Google Play.");
    uVar5 = 0xfffffffb;
  }
  std::lock_guard<std::mutex>::~lock_guard((lock_guard<std::mutex> *)&local_94);
  FUN_00548ab0(auStack_78);
LAB_0053fb5c:
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)a_Stack_8c);
  return uVar5;
}

// ---- FUN_0053fc14  @ 0x53fc14
uint FUN_0053fc14(int param_1)

{
  uint uVar1;
  int iVar2;
  
  if (*(int *)(param_1 + 0x10c) != 0) {
    FUN_00536858();
  }
  uVar1 = FUN_00548cb4(param_1 + 0xf4,"isConnected");
  if (uVar1 == 0) {
    iVar2 = FUN_0053f968(param_1);
    uVar1 = (uint)(iVar2 == 1);
  }
  return uVar1;
}

// ---- FUN_0053fc48  @ 0x53fc48
bool FUN_0053fc48(int param_1)

{
  int iVar1;
  undefined4 uVar2;
  mutex *this;
  int iVar3;
  bool bVar4;
  uint local_58;
  int iStack_54;
  int local_50;
  int iStack_4c;
  timespec local_48;
  undefined1 auStack_40 [16];
  mutex *local_30;
  undefined1 local_2c;
  
  this = (mutex *)(param_1 + 0x114);
  FUN_00548b18(auStack_40);
  local_30 = this;
  std::mutex::lock(this);
  FUN_0053defc(auStack_40,param_1 + 0x11c);
  iVar1 = FUN_00548c48(auStack_40);
  if (iVar1 == 0) {
    *(undefined1 *)(param_1 + 300) = 1;
  }
  std::lock_guard<std::mutex>::~lock_guard((lock_guard<std::mutex> *)&local_30);
  iVar1 = FUN_00548c48(auStack_40);
  if (iVar1 == 0) {
    FUN_005166ae(2,"Resolving connection.");
    FUN_0054968c((lock_guard<std::mutex> *)&local_30,auStack_40,&DAT_00963fa4,"getIntentSender",
                 "()Landroid/content/IntentSender;");
    uVar2 = FUN_00548bac((lock_guard<std::mutex> *)&local_30);
    FUN_00548d90(param_1 + 0x84,"startIntentSenderForResult",
                 "(Landroid/content/IntentSender;ILandroid/content/Intent;III)V",uVar2,0x475047,0,0,
                 0,0);
    FUN_00548ab0((lock_guard<std::mutex> *)&local_30);
    local_2c = 0;
    local_30 = this;
    std::unique_lock<std::mutex>::lock((unique_lock<std::mutex> *)&local_30);
    local_2c = 1;
    if (*(char *)(param_1 + 300) != '\0') {
      FUN_007bfd24(&local_58);
      local_50 = local_58 + 0xf08eb000;
      iStack_4c = iStack_54 + (uint)(0xf714fff < local_58) + 0x1b;
      std::condition_variable::
      __wait_until_impl<std::chrono::duration<long_long,std::ratio<1ll,1000000000ll>>>
                ((unique_lock *)(param_1 + 0x130),(time_point *)&local_30);
    }
    *(undefined1 *)(param_1 + 300) = 0;
    std::unique_lock<std::mutex>::~unique_lock((unique_lock<std::mutex> *)&local_30);
    iVar1 = FUN_0053f968(param_1);
    iVar3 = 3;
    do {
      bVar4 = iVar1 == 1;
      iVar1 = 1;
      if (bVar4) break;
      local_48.tv_sec = 1;
      local_48.tv_nsec = 0;
      nanosleep(&local_48,(timespec *)0x0);
      iVar1 = FUN_0053f968(param_1);
      iVar3 = iVar3 + -1;
    } while (iVar3 != 0);
    bVar4 = iVar1 == 1;
  }
  else {
    bVar4 = false;
  }
  FUN_00548ab0(auStack_40);
  return bVar4;
}

// ---- FUN_0053fdec  @ 0x53fdec
void FUN_0053fdec(int *param_1,int param_2)

{
  int iVar1;
  undefined4 *puVar2;
  undefined4 uVar3;
  char *pcVar4;
  mutex *this;
  mutex *local_7c;
  mutex *local_78;
  __shared_count a_Stack_74 [4];
  undefined1 auStack_70 [16];
  undefined1 auStack_60 [16];
  undefined1 auStack_50 [16];
  undefined1 auStack_40 [16];
  mutex *local_30;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_2c [12];
  
  FUN_005591ec(param_1 + 0x1e);
  if (param_2 == 0) {
    iVar1 = FUN_00548c48(param_1 + 0x3d);
    if (iVar1 == 0) {
      iVar1 = (**(code **)(*param_1 + 0x128))(param_1);
      if (iVar1 != 0) {
        this = (mutex *)(param_1 + 0x45);
        FUN_0053f8b0(&local_78,0,(lock_guard<std::mutex> *)&local_30);
        local_30 = this;
        std::mutex::lock(this);
        if (param_1[0x46] == 0) {
          puVar2 = operator_new(8);
          *puVar2 = local_78;
          std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
                    ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(puVar2 + 1),a_Stack_74);
          FUN_005370a4(param_1 + 0x46,puVar2);
          std::lock_guard<std::mutex>::~lock_guard((lock_guard<std::mutex> *)&local_30);
          uVar3 = FUN_00548bac(param_1 + 0x3d);
          FUN_00548074(auStack_70,&DAT_00961324,&DAT_00963024,"signOut",
                       "(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;"
                       ,uVar3);
          local_30 = local_78;
          std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count(a_Stack_2c,a_Stack_74);
          FUN_0053ddb0(auStack_60,0,0x5463d1,(lock_guard<std::mutex> *)&local_30);
          uVar3 = FUN_00548bac(auStack_60);
          FUN_00548d90(auStack_70,"setResultCallback",
                       "(Lcom/google/android/gms/common/api/ResultCallback;)V",uVar3);
          FUN_00548ab0(auStack_60);
          std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_2c);
          FUN_00548ab0(auStack_70);
          FUN_00548b18(auStack_40);
          FUN_00548b18((lock_guard<std::mutex> *)&local_30);
          FUN_00537458(auStack_50,&local_78,15000,0,auStack_40,(lock_guard<std::mutex> *)&local_30);
          FUN_00548ab0((lock_guard<std::mutex> *)&local_30);
          FUN_00548ab0(auStack_40);
          local_7c = this;
          std::mutex::lock(this);
          FUN_005370a4(param_1 + 0x46,0);
          FUN_00536858(param_1);
          FUN_00511138(param_1);
          std::lock_guard<std::mutex>::~lock_guard((lock_guard<std::mutex> *)&local_7c);
          FUN_00548ab0(auStack_50);
        }
        else {
          FUN_005166ae(4,"Not signing out: already in progress.");
          FUN_00511138(param_1);
          std::lock_guard<std::mutex>::~lock_guard((lock_guard<std::mutex> *)&local_30);
        }
        std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
                  ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)a_Stack_74);
        return;
      }
      pcVar4 = "Not signing out: already signed out.";
    }
    else {
      pcVar4 = "Not signing out: no client.";
    }
    FUN_005166ae(4,pcVar4);
    FUN_00511138(param_1);
  }
  return;
}

// ---- FUN_0053fff8  @ 0x53fff8
int * FUN_0053fff8(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                  undefined4 param_5)

{
  void *pvVar1;
  undefined4 *puVar2;
  int iVar3;
  undefined1 auStack_30 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_2c [4];
  int local_28 [4];
  
  *param_1 = 0;
  *(undefined4 *)(param_1 + 1) = 0;
  pvVar1 = operator_new(0x40);
  *param_1 = (int)pvVar1;
  FUN_005371e8(auStack_30,param_4);
  FUN_00548b30((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_28,param_5);
  if (pvVar1 != (void *)0x0) {
    FUN_0055ef7c(pvVar1,auStack_30,(__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_28);
  }
  FUN_00548ab0((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_28);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_2c);
  iVar3 = *param_1;
  local_28[0] = 0;
  puVar2 = operator_new(0x14);
  if (puVar2 != (undefined4 *)0x0) {
    puVar2[1] = 1;
    puVar2[2] = 1;
    puVar2[3] = iVar3;
    *puVar2 = &PTR_LAB_0053559c_1_009259a8;
  }
  local_28[0] = param_1[1];
  param_1[1] = (int)puVar2;
  iVar3 = *param_1;
  if (iVar3 != 0) {
    *(int *)(iVar3 + 4) = iVar3;
    std::__weak_count<(__gnu_cxx::_Lock_policy)2>::operator=
              ((__weak_count<(__gnu_cxx::_Lock_policy)2> *)(iVar3 + 8),
               (__shared_count *)(param_1 + 1));
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_28);
  return param_1;
}
