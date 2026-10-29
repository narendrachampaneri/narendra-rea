// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 11 functions

// ---- FUN_005b1864  @ 0x5b1864
void FUN_005b1864(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_009648f4,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_009648fc,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    cocos2d::CCRect::CCRect((CCRect *)&DAT_00964904,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
  }
  return;
}

// ---- FUN_005b5db8  @ 0x5b5db8
void FUN_005b5db8(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_0096491c,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_00964924,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    cocos2d::CCRect::CCRect((CCRect *)&DAT_0096492c,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
  }
  return;
}

// ---- FUN_005b5e50  @ 0x5b5e50
CCPoint * FUN_005b5e50(CCPoint *param_1,CCPoint *param_2)

{
  cocos2d::CCPoint::operator+(param_1,param_2);
  return param_1;
}

// ---- FUN_005b5e70  @ 0x5b5e70
void * FUN_005b5e70(ushort *param_1)

{
  int iVar1;
  void *pvVar2;
  uint uVar3;
  int local_14;
  
  if (param_1 == (ushort *)0x0) {
    iVar1 = 0;
  }
  else {
    iVar1 = cocos2d::cc_wcslen(param_1);
  }
  if (iVar1 + 1U < 0x3f800001) {
    uVar3 = (iVar1 + 1U) * 2;
  }
  else {
    uVar3 = 0xffffffff;
  }
  pvVar2 = operator_new__(uVar3);
  for (local_14 = 0; local_14 < iVar1; local_14 = local_14 + 1) {
    *(ushort *)(local_14 * 2 + (int)pvVar2) = param_1[local_14];
  }
  *(undefined2 *)(iVar1 * 2 + (int)pvVar2) = 0;
  return pvVar2;
}

// ---- FUN_005bbc74  @ 0x5bbc74
void FUN_005bbc74(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  undefined4 uVar2;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_0096493c,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_00964944,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    uVar2 = 0;
    cocos2d::CCRect::CCRect((CCRect *)&DAT_0096494c,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
    FUN_00798644(&DAT_0096495c);
    FUN_007985bc(&DAT_0096495c,0x798b71,&DAT_00943000,&DAT_00943000,uVar2);
  }
  return;
}

// ---- FUN_005bcdc8  @ 0x5bcdc8
void FUN_005bcdc8(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_00964964,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_0096496c,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    cocos2d::CCRect::CCRect((CCRect *)&DAT_00964974,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
  }
  return;
}

// ---- FUN_005bce80  @ 0x5bce80
undefined4 FUN_005bce80(undefined1 param_1,undefined1 param_2,undefined1 param_3,undefined1 param_4)

{
  undefined1 local_8 [2];
  undefined1 uStack_6;
  
  _local_8 = CONCAT12(param_3,CONCAT11(param_2,param_1));
  return CONCAT13(param_4,_local_8);
}

// ---- FUN_005bcff4  @ 0x5bcff4
CCPoint * FUN_005bcff4(float param_1,CCPoint *param_2)

{
  cocos2d::CCPoint::operator*(param_2,param_1);
  return param_2;
}

// ---- FUN_005bf8d8  @ 0x5bf8d8
void FUN_005bf8d8(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_00964984,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_0096498c,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    cocos2d::CCRect::CCRect((CCRect *)&DAT_00964994,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
  }
  return;
}

// ---- FUN_005bfad4  @ 0x5bfad4
void FUN_005bfad4(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_009649a4,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_009649ac,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    cocos2d::CCRect::CCRect((CCRect *)&DAT_009649b4,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
  }
  return;
}

// ---- FUN_005bfde4  @ 0x5bfde4
void FUN_005bfde4(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_009649c4,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_009649cc,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    cocos2d::CCRect::CCRect((CCRect *)&DAT_009649d4,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
  }
  return;
}
