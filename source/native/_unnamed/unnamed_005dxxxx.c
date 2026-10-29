// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 33 functions

// ---- FUN_005d0444  @ 0x5d0444
void FUN_005d0444(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_00964aec,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_00964af4,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    cocos2d::CCRect::CCRect((CCRect *)&DAT_00964afc,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
  }
  return;
}

// ---- FUN_005d04c0  @ 0x5d04c0
long FUN_005d04c0(void)

{
  long lVar1;
  
  lVar1 = lrand48();
  return lVar1;
}

// ---- FUN_005d04cc  @ 0x5d04cc
CCPoint * FUN_005d04cc(CCPoint *param_1,CCPoint *param_2)

{
  cocos2d::CCPoint::operator+(param_1,param_2);
  return param_1;
}

// ---- FUN_005d04ec  @ 0x5d04ec
CCPoint * FUN_005d04ec(CCPoint *param_1,CCPoint *param_2)

{
  cocos2d::CCPoint::operator-(param_1,param_2);
  return param_1;
}

// ---- FUN_005d050c  @ 0x5d050c
CCPoint * FUN_005d050c(float param_1,CCPoint *param_2)

{
  cocos2d::CCPoint::operator*(param_2,param_1);
  return param_2;
}

// ---- FUN_005d3c50  @ 0x5d3c50
void FUN_005d3c50(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_00964b0c,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_00964b14,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    cocos2d::CCRect::CCRect((CCRect *)&DAT_00964b1c,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
  }
  return;
}

// ---- FUN_005d4c60  @ 0x5d4c60
void FUN_005d4c60(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_00964b2c,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_00964b34,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    cocos2d::CCRect::CCRect((CCRect *)&DAT_00964b3c,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
  }
  return;
}

// ---- FUN_005d4cdc  @ 0x5d4cdc
undefined4 FUN_005d4cdc(undefined1 param_1,undefined1 param_2,undefined1 param_3,undefined1 param_4)

{
  undefined1 local_8 [2];
  undefined1 uStack_6;
  
  _local_8 = CONCAT12(param_3,CONCAT11(param_2,param_1));
  return CONCAT13(param_4,_local_8);
}

// ---- FUN_005d5edc  @ 0x5d5edc
void FUN_005d5edc(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_00964b4c,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_00964b54,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    cocos2d::CCRect::CCRect((CCRect *)&DAT_00964b5c,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
  }
  return;
}

// ---- FUN_005d5f58  @ 0x5d5f58
undefined4 FUN_005d5f58(int param_1)

{
  undefined4 uVar1;
  
  if ((((param_1 == 7) || (param_1 == 8)) || (param_1 == 9)) || (param_1 == 10)) {
    uVar1 = 1;
  }
  else {
    uVar1 = 0;
  }
  return uVar1;
}

// ---- FUN_005d5f80  @ 0x5d5f80
undefined4 FUN_005d5f80(int param_1)

{
  int iVar1;
  undefined4 uVar2;
  
  if ((((param_1 == 1) || (param_1 == 3)) || (param_1 == 4)) ||
     (((param_1 == 5 || (param_1 == 0xc)) || (iVar1 = FUN_005d5f58(param_1), iVar1 != 0)))) {
    uVar2 = 1;
  }
  else {
    uVar2 = 0;
  }
  return uVar2;
}

// ---- FUN_005d5fd8  @ 0x5d5fd8
undefined4 FUN_005d5fd8(undefined4 param_1)

{
  undefined4 uVar1;
  
  uVar1 = WebPInitDecBufferInternal(param_1,0x200);
  return uVar1;
}

// ---- FUN_005d5ff4  @ 0x5d5ff4
undefined4
FUN_005d5ff4(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5,undefined4 param_6,undefined4 param_7,undefined4 param_8)

{
  undefined4 uVar1;
  
  uVar1 = WebPIDecGetYUVA(param_1,param_2,param_3,param_4,0,param_5,param_6,param_7,param_8,0);
  return uVar1;
}

// ---- FUN_005d6030  @ 0x5d6030
undefined4 FUN_005d6030(undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 uVar1;
  
  uVar1 = WebPGetFeaturesInternal(param_1,param_2,param_3,0x200);
  return uVar1;
}

// ---- FUN_005d6054  @ 0x5d6054
undefined4 FUN_005d6054(undefined4 param_1)

{
  undefined4 uVar1;
  
  uVar1 = WebPInitDecoderConfigInternal(param_1,0x200);
  return uVar1;
}

// ---- FUN_005d6168  @ 0x5d6168
void FUN_005d6168(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_00964b6c,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_00964b74,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    cocos2d::CCRect::CCRect((CCRect *)&DAT_00964b7c,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
  }
  return;
}

// ---- FUN_005d6e00  @ 0x5d6e00
void FUN_005d6e00(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_00964b8c,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_00964b94,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    cocos2d::CCRect::CCRect((CCRect *)&DAT_00964b9c,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
  }
  return;
}

// ---- FUN_005d6e90  @ 0x5d6e90
uint FUN_005d6e90(byte *param_1)

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

// ---- FUN_005d7cb8  @ 0x5d7cb8
XMLNode * FUN_005d7cb8(int param_1,XMLDocument *param_2)

{
  XMLNode *this;
  char *pcVar1;
  XMLNode *pXVar2;
  CCString *this_00;
  int iVar3;
  
  if (param_1 == 0) {
    this_00 = (CCString *)0x0;
  }
  else {
    this_00 = (CCString *)
              __dynamic_cast(param_1,&cocos2d::CCObject::typeinfo,&cocos2d::CCString::typeinfo,0);
  }
  if (this_00 == (CCString *)0x0) {
    if (param_1 == 0) {
      iVar3 = 0;
    }
    else {
      iVar3 = __dynamic_cast(param_1,&cocos2d::CCObject::typeinfo,&cocos2d::CCArray::typeinfo,0);
    }
    if (iVar3 == 0) {
      if (param_1 == 0) {
        iVar3 = 0;
      }
      else {
        iVar3 = __dynamic_cast(param_1,&cocos2d::CCObject::typeinfo,&cocos2d::CCDictionary::typeinfo
                               ,0);
      }
      if (iVar3 == 0) {
        this = (XMLNode *)0x0;
      }
      else {
        this = (XMLNode *)FUN_005d7da8(iVar3,param_2);
      }
    }
    else {
      this = (XMLNode *)FUN_005d7e78(iVar3,param_2);
    }
  }
  else {
    this = (XMLNode *)tinyxml2::XMLDocument::NewElement(param_2,"string");
    pcVar1 = (char *)cocos2d::CCString::getCString(this_00);
    pXVar2 = (XMLNode *)tinyxml2::XMLDocument::NewText(param_2,pcVar1);
    tinyxml2::XMLNode::LinkEndChild(this,pXVar2);
  }
  return this;
}

// ---- FUN_005d7da8  @ 0x5d7da8
XMLNode * FUN_005d7da8(int param_1,XMLDocument *param_2)

{
  XMLNode *this;
  XMLNode *pXVar1;
  char *pcVar2;
  XMLNode *pXVar3;
  undefined4 uVar4;
  CCDictElement *local_24;
  CCDictElement *local_20;
  
  this = (XMLNode *)tinyxml2::XMLDocument::NewElement(param_2,"dict");
  if (param_1 != 0) {
    local_24 = *(CCDictElement **)(param_1 + 0x14);
    if (*(int *)(param_1 + 0x14) == 0) {
      local_20 = (CCDictElement *)0x0;
    }
    else {
      local_20 = *(CCDictElement **)(*(int *)(param_1 + 0x14) + 0x110);
    }
    while (local_24 != (CCDictElement *)0x0) {
      pXVar1 = (XMLNode *)tinyxml2::XMLDocument::NewElement(param_2,"key");
      tinyxml2::XMLNode::LinkEndChild(this,pXVar1);
      pcVar2 = (char *)cocos2d::CCDictElement::getStrKey(local_24);
      pXVar3 = (XMLNode *)tinyxml2::XMLDocument::NewText(param_2,pcVar2);
      tinyxml2::XMLNode::LinkEndChild(pXVar1,pXVar3);
      uVar4 = cocos2d::CCDictElement::getObject(local_24);
      pXVar1 = (XMLNode *)FUN_005d7cb8(uVar4,param_2);
      if (pXVar1 != (XMLNode *)0x0) {
        tinyxml2::XMLNode::LinkEndChild(this,pXVar1);
      }
      local_24 = local_20;
      if (local_20 == (CCDictElement *)0x0) {
        local_20 = (CCDictElement *)0x0;
      }
      else {
        local_20 = *(CCDictElement **)(local_20 + 0x110);
      }
    }
  }
  return this;
}

// ---- FUN_005d7e78  @ 0x5d7e78
XMLNode * FUN_005d7e78(int param_1,XMLDocument *param_2)

{
  XMLNode *this;
  XMLNode *pXVar1;
  int iVar2;
  bool bVar3;
  int iVar4;
  int local_1c;
  int *local_18;
  
  this = (XMLNode *)tinyxml2::XMLDocument::NewElement(param_2,"array");
  local_1c = 0;
  if ((param_1 != 0) && (**(int **)(param_1 + 0x14) != 0)) {
    local_18 = *(int **)(*(int *)(param_1 + 0x14) + 8);
    iVar2 = *(int *)(*(int *)(param_1 + 0x14) + 8);
    iVar4 = **(int **)(param_1 + 0x14);
    while( true ) {
      if (((int *)((iVar4 + 0x3fffffff) * 4 + iVar2) < local_18) ||
         (local_1c = *local_18, local_1c == 0)) {
        bVar3 = false;
      }
      else {
        bVar3 = true;
      }
      if (!bVar3) break;
      pXVar1 = (XMLNode *)FUN_005d7cb8(local_1c,param_2);
      if (pXVar1 != (XMLNode *)0x0) {
        tinyxml2::XMLNode::LinkEndChild(this,pXVar1);
      }
      local_18 = local_18 + 1;
    }
  }
  return this;
}

// ---- FUN_005dc860  @ 0x5dc860
void FUN_005dc860(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_00964bb0,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_00964bb8,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    cocos2d::CCRect::CCRect((CCRect *)&DAT_00964bc0,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
  }
  return;
}

// ---- FUN_005dca50  @ 0x5dca50
uint FUN_005dca50(void)

{
  uint local_8;
  uint local_4;
  
  local_4 = DAT_00964c0c;
  local_8 = 0;
  while( true ) {
    if (4 < (int)local_8) {
      return 0xffffffff;
    }
    if ((local_4 & 1) == 0) break;
    local_4 = (int)local_4 >> 1;
    local_8 = local_8 + 1;
  }
  DAT_00964c0c = 1 << (local_8 & 0xff) | DAT_00964c0c;
  return local_8;
}

// ---- FUN_005dcab0  @ 0x5dcab0
void FUN_005dcab0(uint param_1)

{
  if ((-1 < (int)param_1) && ((int)param_1 < 5)) {
    DAT_00964c0c = DAT_00964c0c & ~(1 << (param_1 & 0xff));
  }
  return;
}

// ---- FUN_005dd5c8  @ 0x5dd5c8
void FUN_005dd5c8(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  undefined4 uVar2;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_00964bd8,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_00964be0,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    uVar2 = 0;
    cocos2d::CCRect::CCRect((CCRect *)&DAT_00964be8,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
    cocos2d::CCDictionary::CCDictionary((CCDictionary *)&DAT_00964c10);
    FUN_007985bc(&DAT_00964c10,0x5a3c11,&DAT_00943000,&DAT_00943000,uVar2);
  }
  return;
}

// ---- FUN_005dd84c  @ 0x5dd84c
void FUN_005dd84c(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_00964c2c,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_00964c34,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    cocos2d::CCRect::CCRect((CCRect *)&DAT_00964c3c,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
  }
  return;
}

// ---- FUN_005ddd30  @ 0x5ddd30
void FUN_005ddd30(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_00964cbc,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_00964cc4,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    cocos2d::CCRect::CCRect((CCRect *)&DAT_00964ccc,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
  }
  return;
}

// ---- FUN_005dde8c  @ 0x5dde8c
uint FUN_005dde8c(byte *param_1)

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

// ---- FUN_005de568  @ 0x5de568
void FUN_005de568(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_00964cdc,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_00964ce4,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    cocos2d::CCRect::CCRect((CCRect *)&DAT_00964cec,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
  }
  return;
}

// ---- FUN_005de614  @ 0x5de614
void FUN_005de614(undefined4 param_1,void *param_2,size_t param_3)

{
  int *piVar1;
  
  piVar1 = (int *)png_get_io_ptr(param_1);
  if (piVar1[1] < (int)(param_3 + piVar1[2])) {
    png_error(param_1,"pngReaderCallback failed");
  }
  else {
    memcpy(param_2,(void *)(piVar1[2] + *piVar1),param_3);
    piVar1[2] = param_3 + piVar1[2];
  }
  return;
}

// ---- FUN_005dea08  @ 0x5dea08
void FUN_005dea08(int *param_1)

{
  int iVar1;
  
  iVar1 = *param_1;
  (**(code **)(*param_1 + 8))(param_1);
                    /* WARNING: Subroutine does not return */
  longjmp((__jmp_buf_tag *)(iVar1 + 0x84),1);
}

// ---- FUN_005deff8  @ 0x5deff8
/* WARNING: Removing unreachable block (ram,0x005df082) */

int FUN_005deff8(int *param_1,void *param_2,uint param_3)

{
  void *local_20;
  uint local_1c;
  size_t local_18;
  int local_14;
  
  local_14 = 0;
  local_20 = param_2;
  local_1c = param_3;
  while( true ) {
    if (local_1c == 0) {
      return local_14;
    }
    local_18 = 0x80000000;
    if (local_1c < 0x80000000) {
      local_18 = local_1c;
    }
    if (param_1[1] < (int)(local_18 + param_1[2])) break;
    memcpy(local_20,(void *)(param_1[2] + *param_1),local_18);
    param_1[2] = local_18 + param_1[2];
    local_20 = (void *)(local_18 + (int)local_20);
    local_1c = local_1c - local_18;
    local_14 = local_18 + local_14;
  }
  return 0;
}

// ---- FUN_005dff00  @ 0x5dff00
undefined * FUN_005dff00(void)

{
  int iVar1;
  
  if (((DAT_00964d20 & 1) == 0) && (iVar1 = __cxa_guard_acquire(&DAT_00964d20), iVar1 != 0)) {
    cocos2d::BitmapDC::BitmapDC((BitmapDC *)&DAT_00964d24);
    __cxa_guard_release(&DAT_00964d20);
    FUN_007985bc(&DAT_00964d24,0x5dfc7d,&DAT_00943000);
  }
  return &DAT_00964d24;
}
