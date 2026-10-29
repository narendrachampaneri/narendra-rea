// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 20 functions

// ---- FUN_005c3eac  @ 0x5c3eac
void FUN_005c3eac(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_009649e4,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_009649ec,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    cocos2d::CCRect::CCRect((CCRect *)&DAT_009649f4,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
  }
  return;
}

// ---- FUN_005c4ec0  @ 0x5c4ec0
void FUN_005c4ec0(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_00964a04,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_00964a0c,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    cocos2d::CCRect::CCRect((CCRect *)&DAT_00964a14,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
  }
  return;
}

// ---- FUN_005c509c  @ 0x5c509c
vector<unsigned_int,std::allocator<unsigned_int>> *
FUN_005c509c(vector<unsigned_int,std::allocator<unsigned_int>> *param_1,int param_2)

{
  bool bVar1;
  uint local_1c;
  CCInteger *local_18;
  int *local_14;
  int *local_10;
  CCInteger *local_c;
  
  std::vector<unsigned_int,std::allocator<unsigned_int>>::vector(param_1);
  if ((param_2 != 0) && (**(int **)(param_2 + 0x14) != 0)) {
    local_14 = *(int **)(*(int *)(param_2 + 0x14) + 8);
    local_10 = (int *)((**(int **)(param_2 + 0x14) + 0x3fffffff) * 4 +
                      *(int *)(*(int *)(param_2 + 0x14) + 8));
    while( true ) {
      if ((local_10 < local_14) || (local_18 = (CCInteger *)*local_14, local_18 == (CCInteger *)0x0)
         ) {
        bVar1 = false;
      }
      else {
        bVar1 = true;
      }
      if (!bVar1) break;
      local_c = local_18;
      local_1c = cocos2d::CCInteger::getValue(local_18);
      std::vector<unsigned_int,std::allocator<unsigned_int>>::push_back(param_1,&local_1c);
      local_14 = local_14 + 1;
    }
  }
  return param_1;
}

// ---- FUN_005c7058  @ 0x5c7058
void FUN_005c7058(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_00964a24,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_00964a2c,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    cocos2d::CCRect::CCRect((CCRect *)&DAT_00964a34,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
  }
  return;
}

// ---- FUN_005c70d4  @ 0x5c70d4
uint FUN_005c70d4(undefined1 param_1,undefined1 param_2,undefined1 param_3)

{
  undefined2 local_8;
  undefined1 local_4 [4];
  
  local_8 = CONCAT11(param_2,param_1);
  local_4._0_3_ = CONCAT12(param_3,local_8);
  return CONCAT13(0,local_4._0_3_);
}

// ---- FUN_005c9080  @ 0x5c9080
void FUN_005c9080(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  undefined4 uVar2;
  undefined1 auStack_c [4];
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_00964a44,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_00964a4c,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    uVar2 = 0;
    cocos2d::CCRect::CCRect((CCRect *)&DAT_00964a54,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
    FUN_0079a3f4(auStack_c);
    FUN_007c6a60(&DAT_00964a64,"Marker Felt",auStack_c,auStack_c,uVar2);
    FUN_0079a3fc(auStack_c);
    FUN_007985bc(&DAT_00964a64,0x7c5915,&DAT_00943000);
  }
  return;
}

// ---- FUN_005c915c  @ 0x5c915c
undefined4 *
FUN_005c915c(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
            undefined4 *param_5)

{
  *param_5 = param_1;
  param_5[1] = param_2;
  param_5[2] = param_3;
  param_5[3] = param_4;
  return param_5;
}

// ---- FUN_005c9190  @ 0x5c9190
void FUN_005c9190(int *param_1,undefined4 param_2)

{
  int iVar1;
  bool bVar2;
  int iVar3;
  int local_14;
  int *local_10;
  
  (**(code **)(*param_1 + 0x134))(param_1,param_2);
  iVar1 = (**(code **)(*param_1 + 0xd8))(param_1);
  if (iVar1 != 0) {
    local_14 = 0;
    iVar1 = (**(code **)(*param_1 + 0xd8))(param_1);
    if ((iVar1 == 0) ||
       (iVar1 = (**(code **)(*param_1 + 0xd8))(param_1), **(int **)(iVar1 + 0x14) == 0)) {
      bVar2 = false;
    }
    else {
      bVar2 = true;
    }
    if (bVar2) {
      iVar1 = (**(code **)(*param_1 + 0xd8))(param_1);
      local_10 = *(int **)(*(int *)(iVar1 + 0x14) + 8);
      iVar1 = (**(code **)(*param_1 + 0xd8))(param_1);
      iVar3 = *(int *)(*(int *)(iVar1 + 0x14) + 8);
      iVar1 = (**(code **)(*param_1 + 0xd8))(param_1);
      iVar1 = **(int **)(iVar1 + 0x14);
      while( true ) {
        if (((int *)((iVar1 + 0x3fffffff) * 4 + iVar3) < local_10) ||
           (local_14 = *local_10, local_14 == 0)) {
          bVar2 = false;
        }
        else {
          bVar2 = true;
        }
        if (!bVar2) break;
        FUN_005c9190(local_14,param_2);
        local_10 = local_10 + 1;
      }
    }
  }
  return;
}

// ---- FUN_005c9a34  @ 0x5c9a34
void FUN_005c9a34(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_00964a6c,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_00964a74,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    cocos2d::CCRect::CCRect((CCRect *)&DAT_00964a7c,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
  }
  return;
}

// ---- FUN_005c9ac8  @ 0x5c9ac8
undefined4 * FUN_005c9ac8(undefined4 param_1,undefined4 param_2,undefined4 *param_3)

{
  *param_3 = param_1;
  param_3[1] = param_2;
  return param_3;
}

// ---- FUN_005c9ae8  @ 0x5c9ae8
undefined4 FUN_005c9ae8(CCPoint *param_1)

{
  undefined4 uVar1;
  CCPoint aCStack_10 [12];
  
  cocos2d::CCPoint::operator-(aCStack_10,param_1);
  uVar1 = cocos2d::CCPoint::getLengthSq(aCStack_10);
  return uVar1;
}

// ---- FUN_005ca8a8  @ 0x5ca8a8
void FUN_005ca8a8(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_00964a8c,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_00964a94,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    cocos2d::CCRect::CCRect((CCRect *)&DAT_00964a9c,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
  }
  return;
}

// ---- FUN_005ca924  @ 0x5ca924
undefined4 * FUN_005ca924(undefined4 param_1,undefined4 param_2,undefined4 *param_3)

{
  *param_3 = param_1;
  param_3[1] = param_2;
  return param_3;
}

// ---- FUN_005ca9a8  @ 0x5ca9a8
CCPoint * FUN_005ca9a8(CCPoint *param_1,CCPoint *param_2)

{
  cocos2d::CCPoint::operator+(param_1,param_2);
  return param_1;
}

// ---- FUN_005ca9c8  @ 0x5ca9c8
CCPoint * FUN_005ca9c8(CCPoint *param_1,CCPoint *param_2)

{
  cocos2d::CCPoint::operator-(param_1,param_2);
  return param_1;
}

// ---- FUN_005ca9e8  @ 0x5ca9e8
CCPoint * FUN_005ca9e8(float param_1,CCPoint *param_2)

{
  cocos2d::CCPoint::operator*(param_2,param_1);
  return param_2;
}

// ---- FUN_005cbfc8  @ 0x5cbfc8
void FUN_005cbfc8(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_00964aac,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_00964ab4,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    cocos2d::CCRect::CCRect((CCRect *)&DAT_00964abc,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
  }
  return;
}

// ---- FUN_005cc044  @ 0x5cc044
undefined4 *
FUN_005cc044(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
            undefined4 *param_5)

{
  *param_5 = param_1;
  param_5[1] = param_2;
  param_5[2] = param_3;
  param_5[3] = param_4;
  return param_5;
}

// ---- FUN_005cd41c  @ 0x5cd41c
void FUN_005cd41c(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_00964acc,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_00964ad4,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    cocos2d::CCRect::CCRect((CCRect *)&DAT_00964adc,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
  }
  return;
}

// ---- FUN_005cdd14  @ 0x5cdd14
int FUN_005cdd14(void)

{
  char cVar1;
  CCTextureCache *pCVar2;
  int local_14;
  CCObject *local_10;
  
  local_10 = (CCObject *)0x0;
  pCVar2 = (CCTextureCache *)cocos2d::CCTextureCache::sharedTextureCache();
  local_14 = cocos2d::CCTextureCache::textureForKey(pCVar2,"__firePngData");
  if (local_14 == 0) {
    local_10 = operator_new(0x24);
    cocos2d::CCImage::CCImage((CCImage *)local_10);
    if ((local_10 != (CCObject *)0x0) &&
       (cVar1 = cocos2d::CCImage::initWithImageData((CCImage *)local_10,&PNG_008341e4,0x2d2,1,0,0,8)
       , cVar1 == '\x01')) {
      pCVar2 = (CCTextureCache *)cocos2d::CCTextureCache::sharedTextureCache();
      local_14 = cocos2d::CCTextureCache::addUIImage(pCVar2,(CCImage *)local_10,"__firePngData");
    }
  }
  if (local_10 != (CCObject *)0x0) {
    cocos2d::CCObject::release(local_10);
  }
  return local_14;
}
