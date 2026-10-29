// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 7 functions

// ---- FUN_006da8a0  @ 0x6da8a0
void FUN_006da8a0(int param_1,int param_2)

{
  if ((param_1 == 1) && (param_2 == 0xffff)) {
    FUN_007985bc(&b2_defaultFilter,0x6d965d,&DAT_00943000);
    FUN_007985bc(&b2_defaultListener,0x6d96ad,&DAT_00943000);
  }
  return;
}

// ---- thunk_FUN_003ebf8c  @ 0x6dafcc
undefined4 * thunk_FUN_003ebf8c(undefined4 *param_1)

{
  undefined8 in_d0;
  undefined8 in_d1;
  undefined4 uStack_18;
  undefined4 uStack_14;
  undefined4 uStack_10;
  undefined4 uStack_c;
  
  uStack_10 = (undefined4)in_d0;
  uStack_c = (undefined4)((ulonglong)in_d0 >> 0x20);
  *param_1 = uStack_10;
  param_1[1] = uStack_c;
  uStack_18 = (undefined4)in_d1;
  uStack_14 = (undefined4)((ulonglong)in_d1 >> 0x20);
  param_1[2] = uStack_18;
  param_1[3] = uStack_14;
  return param_1;
}

// ---- FUN_006dfeb2  @ 0x6dfeb2
void FUN_006dfeb2(double *param_1,int param_2,int param_3)

{
  int iVar1;
  double dVar2;
  double dVar3;
  
  iVar1 = param_3 * 0x88 + *(int *)(param_2 + 4);
  dVar2 = *(double *)(iVar1 + 0x10);
  dVar3 = *(double *)(iVar1 + 0x18);
  if (*(int *)(param_2 + 0x38) == 0) {
    *param_1 = dVar2;
  }
  else {
    dVar3 = -dVar3;
    *param_1 = -dVar2;
  }
  param_1[1] = dVar3;
  return;
}

// ---- FUN_006dfee0  @ 0x6dfee0
undefined4 * FUN_006dfee0(undefined4 *param_1,int param_2,int param_3)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  
  puVar2 = (undefined4 *)(param_3 * 0x88 + *(int *)(param_2 + 4));
  uVar1 = puVar2[1];
  uVar3 = puVar2[2];
  uVar4 = puVar2[3];
  *param_1 = *puVar2;
  param_1[1] = uVar1;
  param_1[2] = uVar3;
  param_1[3] = uVar4;
  return param_1;
}

// ---- FUN_006dfef6  @ 0x6dfef6
double * FUN_006dfef6(double *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                     undefined4 param_5,undefined4 param_6)

{
  double dVar1;
  
  dVar1 = (double)cpvlength(param_3,param_4,param_5,param_6,param_4);
  param_1[1] = (1.0 / dVar1) * (double)CONCAT44(param_6,param_5);
  *param_1 = (double)CONCAT44(param_4,param_3) * (1.0 / dVar1);
  return param_1;
}

// ---- FUN_006dff36  @ 0x6dff36
double * FUN_006dff36(double *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                     undefined4 param_5,undefined4 param_6,double param_7)

{
  double local_30;
  double local_28;
  
  if ((double)CONCAT44(param_6,param_5) * (double)CONCAT44(param_6,param_5) +
      (double)CONCAT44(param_4,param_3) * (double)CONCAT44(param_4,param_3) <= param_7 * param_7) {
    *(undefined4 *)param_1 = param_3;
    *(undefined4 *)((int)param_1 + 4) = param_4;
    *(undefined4 *)(param_1 + 1) = param_5;
    *(undefined4 *)((int)param_1 + 0xc) = param_6;
  }
  else {
    FUN_006dfef6(&local_30,param_6,param_3,param_4,param_5,param_6);
    param_1[1] = param_7 * local_28;
    *param_1 = local_30 * param_7;
  }
  return param_1;
}

// ---- FUN_006dffb4  @ 0x6dffb4
double * FUN_006dffb4(double *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                     double param_5,double param_6,double param_7,undefined4 param_8,
                     undefined4 param_9)

{
  undefined4 local_40;
  undefined4 uStack_3c;
  undefined4 uStack_34;
  double local_30;
  double local_28;
  
  param_6 = param_6 - (double)CONCAT44(param_4,param_3);
  uStack_34 = (undefined4)((ulonglong)(param_7 - param_5) >> 0x20);
  local_40 = SUB84(param_6,0);
  uStack_3c = (undefined4)((ulonglong)param_6 >> 0x20);
  FUN_006dff36(&local_30,uStack_34,local_40,uStack_3c,param_7 - param_5,param_8,param_9);
  param_1[1] = param_5 + local_28;
  *param_1 = (double)CONCAT44(param_4,param_3) + local_30;
  return param_1;
}
