// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 20 functions

// ---- FUN_00590008  @ 0x590008
uint FUN_00590008(byte *param_1)

{
  size_t sVar1;
  uint uVar2;
  byte *local_1c;
  uint local_14;
  
  sVar1 = strlen((char *)param_1);
  local_14 = 0;
  for (local_1c = param_1; local_1c < param_1 + sVar1; local_1c = local_1c + 1) {
    uVar2 = toupper((uint)*local_1c);
    local_14 = uVar2 & 0xff ^ local_14 * 0x1000193;
  }
  return local_14;
}

// ---- FUN_00591b08  @ 0x591b08
void FUN_00591b08(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_009645f4,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_009645fc,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    cocos2d::CCRect::CCRect((CCRect *)&DAT_00964604,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
  }
  return;
}

// ---- FUN_00591b84  @ 0x591b84
uint FUN_00591b84(undefined1 param_1,undefined1 param_2,undefined1 param_3)

{
  undefined2 local_8;
  undefined1 local_4 [4];
  
  local_8 = CONCAT11(param_2,param_1);
  local_4._0_3_ = CONCAT12(param_3,local_8);
  return CONCAT13(0,local_4._0_3_);
}

// ---- FUN_00591cc4  @ 0x591cc4
CCPoint * FUN_00591cc4(CCPoint *param_1)

{
  cocos2d::CCPoint::operator-(param_1);
  return param_1;
}

// ---- FUN_00591ce0  @ 0x591ce0
CCPoint * FUN_00591ce0(CCPoint *param_1,CCPoint *param_2)

{
  cocos2d::CCPoint::operator+(param_1,param_2);
  return param_1;
}

// ---- FUN_00591d00  @ 0x591d00
CCPoint * FUN_00591d00(CCPoint *param_1,CCPoint *param_2)

{
  cocos2d::CCPoint::operator-(param_1,param_2);
  return param_1;
}

// ---- FUN_00591d20  @ 0x591d20
CCPoint * FUN_00591d20(float param_1,CCPoint *param_2)

{
  cocos2d::CCPoint::operator*(param_2,param_1);
  return param_2;
}

// ---- FUN_00594b90  @ 0x594b90
float FUN_00594b90(float param_1,float param_2,float param_3,float param_4,float param_5)

{
  float extraout_r0;
  float extraout_r0_00;
  float extraout_r0_01;
  float extraout_r0_02;
  float fVar1;
  float __y;
  float __y_00;
  float __y_01;
  
  fVar1 = powf(param_1,param_2);
  fVar1 = powf(fVar1,__y);
  fVar1 = powf(fVar1,__y_00);
  powf(fVar1,__y_01);
  return extraout_r0 * param_1 + param_5 * 3.0 * extraout_r0_00 * param_2 +
         extraout_r0_01 * 3.0 * (1.0 - param_5) * param_3 + extraout_r0_02 * param_4;
}

// ---- FUN_00597ec4  @ 0x597ec4
void FUN_00597ec4(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_0096462c,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_00964634,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    cocos2d::CCRect::CCRect((CCRect *)&DAT_0096463c,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
  }
  return;
}

// ---- FUN_0059af08  @ 0x59af08
void FUN_0059af08(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_0096464c,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_00964654,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    cocos2d::CCRect::CCRect((CCRect *)&DAT_0096465c,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
  }
  return;
}

// ---- FUN_0059b340  @ 0x59b340
void FUN_0059b340(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_0096466c,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_00964674,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    cocos2d::CCRect::CCRect((CCRect *)&DAT_0096467c,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
  }
  return;
}

// ---- FUN_0059b8f4  @ 0x59b8f4
void FUN_0059b8f4(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_0096468c,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_00964694,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    cocos2d::CCRect::CCRect((CCRect *)&DAT_0096469c,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
  }
  return;
}

// ---- FUN_0059b970  @ 0x59b970
long FUN_0059b970(void)

{
  long lVar1;
  
  lVar1 = lrand48();
  return lVar1;
}

// ---- FUN_0059b97c  @ 0x59b97c
void FUN_0059b97c(long param_1)

{
  srand48(param_1);
  return;
}

// ---- FUN_0059b990  @ 0x59b990
CCPoint * FUN_0059b990(float param_1,CCPoint *param_2)

{
  cocos2d::CCPoint::operator*(param_2,param_1);
  return param_2;
}

// ---- FUN_0059e960  @ 0x59e960
void FUN_0059e960(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_009646ac,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_009646b4,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    cocos2d::CCRect::CCRect((CCRect *)&DAT_009646bc,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
  }
  return;
}

// ---- FUN_0059ec74  @ 0x59ec74
void FUN_0059ec74(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_009646cc,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_009646d4,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    cocos2d::CCRect::CCRect((CCRect *)&DAT_009646dc,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
  }
  return;
}

// ---- FUN_0059f550  @ 0x59f550
void FUN_0059f550(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_009646ec,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_009646f4,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    cocos2d::CCRect::CCRect((CCRect *)&DAT_009646fc,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
  }
  return;
}

// ---- FUN_0059f5f8  @ 0x59f5f8
CCPoint * FUN_0059f5f8(CCPoint *param_1,CCPoint *param_2)

{
  cocos2d::CCPoint::operator+(param_1,param_2);
  return param_1;
}

// ---- FUN_0059f618  @ 0x59f618
CCPoint * FUN_0059f618(CCPoint *param_1,CCPoint *param_2)

{
  cocos2d::CCPoint::operator-(param_1,param_2);
  return param_1;
}
