// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 43 functions

// ---- FUN_005f0fa4  @ 0x5f0fa4
void FUN_005f0fa4(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_00964f40,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_00964f48,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    cocos2d::CCRect::CCRect((CCRect *)&DAT_00964f50,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
  }
  return;
}

// ---- FUN_005f1710  @ 0x5f1710
undefined4 FUN_005f1710(CCPoint *param_1,CCPoint *param_2)

{
  undefined4 uVar1;
  
  uVar1 = cocos2d::CCPoint::dot(param_1,param_2);
  return uVar1;
}

// ---- FUN_005f1ca0  @ 0x5f1ca0
void FUN_005f1ca0(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_0096516c,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_00965174,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    cocos2d::CCRect::CCRect((CCRect *)&DAT_0096517c,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
  }
  return;
}

// ---- FUN_005f1e04  @ 0x5f1e04
void FUN_005f1e04(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_0096518c,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_00965194,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    cocos2d::CCRect::CCRect((CCRect *)&DAT_0096519c,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
  }
  return;
}

// ---- FUN_005f1e80  @ 0x5f1e80
undefined4 FUN_005f1e80(char *param_1)

{
  undefined4 extraout_r0;
  
  strtod(param_1,(char **)0x0);
  return extraout_r0;
}

// ---- FUN_005f1f1c  @ 0x5f1f1c
XMLNode * FUN_005f1f1c(char *param_1,undefined4 *param_2)

{
  char cVar1;
  XMLDocument *pXVar2;
  int *piVar3;
  undefined4 uVar4;
  char *__filename;
  int iVar5;
  XMLNode *pXVar6;
  code *pcVar7;
  undefined1 auStack_28 [4];
  XMLNode *local_24;
  XMLNode *local_20;
  XMLDocument *local_1c;
  char *local_18;
  char *local_14;
  
  local_24 = (XMLNode *)0x0;
  local_20 = (XMLNode *)0x0;
  cVar1 = cocos2d::CCUserDefault::isXMLFileExist();
  if (cVar1 == '\x01') {
    if (param_1 == (char *)0x0) {
      pXVar6 = (XMLNode *)0x0;
    }
    else {
      pXVar2 = operator_new(0x174);
      tinyxml2::XMLDocument::XMLDocument(pXVar2,1,0);
      *param_2 = pXVar2;
      local_1c = pXVar2;
      piVar3 = (int *)cocos2d::CCFileUtils::sharedFileUtils();
      pcVar7 = *(code **)(*piVar3 + 0x10);
      cocos2d::CCUserDefault::sharedUserDefault();
      uVar4 = cocos2d::CCUserDefault::getXMLFilePath();
      uVar4 = FUN_007c5300(uVar4);
      local_18 = (char *)(*pcVar7)(piVar3,uVar4,&DAT_0083883c,auStack_28);
      pXVar6 = local_24;
      if (local_18 != (char *)0x0) {
        tinyxml2::XMLDocument::Parse(local_1c,local_18,0xffffffff);
        if (local_18 != (char *)0x0) {
          operator_delete__(local_18);
        }
        local_20 = (XMLNode *)tinyxml2::XMLDocument::RootElement(local_1c);
        pXVar6 = local_24;
        if (local_20 != (XMLNode *)0x0) {
          local_24 = (XMLNode *)tinyxml2::XMLNode::FirstChildElement(local_20,(char *)0x0);
          if (local_24 == (XMLNode *)0x0) {
            cocos2d::CCUserDefault::sharedUserDefault();
            uVar4 = cocos2d::CCUserDefault::getXMLFilePath();
            __filename = (char *)FUN_007c5300(uVar4);
            remove(__filename);
            pXVar6 = (XMLNode *)0x0;
          }
          else {
            for (; pXVar6 = (XMLNode *)0x0, local_24 != (XMLNode *)0x0;
                local_24 = (XMLNode *)tinyxml2::XMLNode::NextSiblingElement(local_24,(char *)0x0)) {
              local_14 = (char *)tinyxml2::XMLNode::Value(local_24);
              iVar5 = strcmp(local_14,param_1);
              if (iVar5 == 0) {
                return local_24;
              }
            }
          }
        }
      }
    }
  }
  else {
    pXVar6 = (XMLNode *)0x0;
  }
  return pXVar6;
}

// ---- FUN_005f2044  @ 0x5f2044
void FUN_005f2044(XMLDocument *param_1,XMLNode *param_2)

{
  undefined4 uVar1;
  char *pcVar2;
  
  if (param_2 != (XMLNode *)0x0) {
    tinyxml2::XMLDocument::DeleteNode(param_1,param_2);
    cocos2d::CCUserDefault::sharedUserDefault();
    uVar1 = cocos2d::CCUserDefault::getXMLFilePath();
    pcVar2 = (char *)FUN_007c5300(uVar1);
    tinyxml2::XMLDocument::SaveFile(param_1,pcVar2,false);
    if (param_1 != (XMLDocument *)0x0) {
      (**(code **)(*(int *)param_1 + 0x44))(param_1);
    }
  }
  return;
}

// ---- FUN_005f2090  @ 0x5f2090
void FUN_005f2090(undefined4 param_1)

{
  undefined4 local_10;
  undefined4 local_c;
  
  local_10 = 0;
  local_c = FUN_005f1f1c(param_1,&local_10);
  FUN_005f2044(local_10,local_c);
  return;
}

// ---- FUN_005f27c0  @ 0x5f27c0
void FUN_005f27c0(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  undefined4 uVar2;
  undefined1 auStack_c [4];
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_009651b8,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_009651c0,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    uVar2 = 0;
    cocos2d::CCRect::CCRect((CCRect *)&DAT_009651c8,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
    FUN_0079a3f4(auStack_c);
    FUN_007c6a60(&cocos2d::CCUserDefault::m_sFilePath,&DAT_00838848,auStack_c,auStack_c,uVar2);
    FUN_0079a3fc(auStack_c);
    FUN_007985bc(&cocos2d::CCUserDefault::m_sFilePath,0x7c5915,&DAT_00943000);
  }
  return;
}

// ---- FUN_005f2d50  @ 0x5f2d50
undefined4 * FUN_005f2d50(undefined4 param_1,undefined4 param_2,undefined4 *param_3)

{
  *param_3 = param_1;
  param_3[1] = param_2;
  return param_3;
}

// ---- FUN_005f2d70  @ 0x5f2d70
CCPoint * FUN_005f2d70(CCPoint *param_1,CCPoint *param_2)

{
  cocos2d::CCPoint::operator-(param_1,param_2);
  return param_1;
}

// ---- FUN_005f2d90  @ 0x5f2d90
CCPoint * FUN_005f2d90(float param_1,CCPoint *param_2)

{
  cocos2d::CCPoint::operator*(param_2,param_1);
  return param_2;
}

// ---- FUN_005f2db0  @ 0x5f2db0
CCPoint * FUN_005f2db0(CCPoint *param_1,CCPoint *param_2)

{
  float fVar1;
  CCPoint aCStack_10 [12];
  
  fVar1 = (float)cocos2d::CCPoint::operator+(aCStack_10,param_2);
  cocos2d::CCPoint::operator/(param_1,fVar1);
  return param_1;
}

// ---- FUN_005f2de0  @ 0x5f2de0
undefined4 FUN_005f2de0(CCPoint *param_1,CCPoint *param_2)

{
  undefined4 uVar1;
  
  uVar1 = cocos2d::CCPoint::dot(param_1,param_2);
  return uVar1;
}

// ---- FUN_005f2e00  @ 0x5f2e00
undefined4 FUN_005f2e00(undefined4 param_1)

{
  cocos2d::CCPoint::getPerp();
  return param_1;
}

// ---- FUN_005f33d8  @ 0x5f33d8
void FUN_005f33d8(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_009653d8,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_009653e0,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    cocos2d::CCRect::CCRect((CCRect *)&DAT_009653e8,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
  }
  return;
}

// ---- FUN_005f3ec8  @ 0x5f3ec8
undefined4 FUN_005f3ec8(int param_1,uint param_2,int param_3)

{
  undefined1 uVar1;
  byte local_2a;
  undefined1 local_28 [2];
  undefined1 local_26;
  uint local_24;
  int local_20;
  uint local_1c;
  uint local_18;
  int local_14;
  uint local_10;
  uint local_c;
  
  local_20 = 0;
  local_2a = 0;
  local_18 = 0;
  local_14 = 0x12;
  local_10 = (uint)(*(byte *)(param_3 + 5) >> 3);
  local_c = (int)*(short *)(param_3 + 6) * (int)*(short *)(param_3 + 8);
  local_24 = 0;
  do {
    if (local_c <= local_24) {
      return 1;
    }
    if (local_2a == 0) {
      if (param_2 < local_14 + 1U) {
        return 1;
      }
      local_2a = *(byte *)(local_14 + param_1);
      local_14 = local_14 + 1;
      local_18 = local_2a & 0x80;
      if ((local_2a & 0x80) != 0) {
        local_2a = local_2a + 0x80;
      }
      local_1c = 0;
    }
    else {
      local_2a = local_2a - 1;
      local_1c = (uint)(local_18 != 0);
    }
    if (local_1c == 0) {
      if (param_2 < local_10 + local_14) {
        return 1;
      }
      memcpy(local_28,(void *)(param_1 + local_14),local_10);
      uVar1 = local_28[0];
      local_14 = local_10 + local_14;
      if (2 < local_10) {
        local_28[0] = local_26;
        local_26 = uVar1;
      }
    }
    memcpy((void *)(*(int *)(param_3 + 0xc) + local_20),local_28,local_10);
    local_20 = local_10 + local_20;
    local_24 = local_24 + 1;
  } while( true );
}

// ---- FUN_005f4374  @ 0x5f4374
void FUN_005f4374(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_009653f8,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_00965400,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    cocos2d::CCRect::CCRect((CCRect *)&DAT_00965408,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
  }
  return;
}

// ---- FUN_005faeb0  @ 0x5faeb0
void FUN_005faeb0(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_0096642c,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_00966434,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    cocos2d::CCRect::CCRect((CCRect *)&DAT_0096643c,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
  }
  return;
}

// ---- FUN_005fb094  @ 0x5fb094
FILE * FUN_005fb094(undefined4 param_1,char *param_2,uint param_3)

{
  FILE *local_10;
  char *local_c;
  
  local_10 = (FILE *)0x0;
  local_c = (char *)0x0;
  if ((param_3 & 3) == 1) {
    local_c = "rb";
  }
  else if ((param_3 & 4) == 0) {
    if ((param_3 & 8) != 0) {
      local_c = "wb";
    }
  }
  else {
    local_c = "r+b";
  }
  if ((param_2 != (char *)0x0) && (local_c != (char *)0x0)) {
    local_10 = fopen(param_2,local_c);
  }
  return local_10;
}

// ---- FUN_005fb108  @ 0x5fb108
FILE * FUN_005fb108(undefined4 param_1,char *param_2,uint param_3)

{
  FILE *local_10;
  char *local_c;
  
  local_10 = (FILE *)0x0;
  local_c = (char *)0x0;
  if ((param_3 & 3) == 1) {
    local_c = "rb";
  }
  else if ((param_3 & 4) == 0) {
    if ((param_3 & 8) != 0) {
      local_c = "wb";
    }
  }
  else {
    local_c = "r+b";
  }
  if ((param_2 != (char *)0x0) && (local_c != (char *)0x0)) {
    local_10 = fopen(param_2,local_c);
  }
  return local_10;
}

// ---- FUN_005fb17c  @ 0x5fb17c
size_t FUN_005fb17c(undefined4 param_1,FILE *param_2,void *param_3,size_t param_4)

{
  size_t sVar1;
  
  sVar1 = fread(param_3,1,param_4,param_2);
  return sVar1;
}

// ---- FUN_005fb1a4  @ 0x5fb1a4
size_t FUN_005fb1a4(undefined4 param_1,FILE *param_2,void *param_3,size_t param_4)

{
  size_t sVar1;
  
  sVar1 = fwrite(param_3,1,param_4,param_2);
  return sVar1;
}

// ---- FUN_005fb1cc  @ 0x5fb1cc
long FUN_005fb1cc(undefined4 param_1,FILE *param_2)

{
  long lVar1;
  
  lVar1 = ftell(param_2);
  return lVar1;
}

// ---- FUN_005fb1e8  @ 0x5fb1e8
longlong FUN_005fb1e8(undefined4 param_1,FILE *param_2)

{
  long lVar1;
  
  lVar1 = ftell(param_2);
  return (longlong)lVar1;
}

// ---- FUN_005fb210  @ 0x5fb210
undefined4 FUN_005fb210(undefined4 param_1,FILE *param_2,long param_3,int param_4)

{
  int iVar1;
  int local_10;
  undefined4 local_c;
  
  if (param_4 == 1) {
    local_10 = 1;
  }
  else if (param_4 == 2) {
    local_10 = 2;
  }
  else {
    if (param_4 != 0) {
      return 0xffffffff;
    }
    local_10 = 0;
  }
  local_c = 0;
  iVar1 = fseek(param_2,param_3,local_10);
  if (iVar1 != 0) {
    local_c = 0xffffffff;
  }
  return local_c;
}

// ---- FUN_005fb278  @ 0x5fb278
undefined4
FUN_005fb278(undefined4 param_1,FILE *param_2,long param_3,undefined4 param_4,int param_5)

{
  int iVar1;
  undefined4 uVar2;
  int local_c;
  
  if (param_5 == 1) {
    local_c = 1;
  }
  else if (param_5 == 2) {
    local_c = 2;
  }
  else {
    if (param_5 != 0) {
      return 0xffffffff;
    }
    local_c = 0;
  }
  iVar1 = fseek(param_2,param_3,local_c);
  if (iVar1 == 0) {
    uVar2 = 0;
  }
  else {
    uVar2 = 0xffffffff;
  }
  return uVar2;
}

// ---- FUN_005fb2dc  @ 0x5fb2dc
int FUN_005fb2dc(undefined4 param_1,FILE *param_2)

{
  int iVar1;
  
  iVar1 = fclose(param_2);
  return iVar1;
}

// ---- FUN_005fb3e4  @ 0x5fb3e4
undefined4 FUN_005fb3e4(int param_1,undefined4 param_2,uint *param_3)

{
  int iVar1;
  undefined4 uVar2;
  byte local_d;
  int local_c;
  
  local_c = (**(code **)(param_1 + 4))(*(undefined4 *)(param_1 + 0x1c),param_2,&local_d,1);
  if (local_c == 1) {
    *param_3 = (uint)local_d;
    uVar2 = 0;
  }
  else {
    iVar1 = (**(code **)(param_1 + 0x18))(*(undefined4 *)(param_1 + 0x1c),param_2);
    if (iVar1 == 0) {
      uVar2 = 0;
    }
    else {
      uVar2 = 0xffffffff;
    }
  }
  return uVar2;
}

// ---- FUN_005fb448  @ 0x5fb448
int FUN_005fb448(undefined4 param_1,undefined4 param_2,uint *param_3)

{
  uint local_14;
  int local_10;
  uint local_c;
  
  local_14 = 0;
  local_10 = FUN_005fb3e4(param_1,param_2,&local_14);
  local_c = local_14;
  if (local_10 == 0) {
    local_10 = FUN_005fb3e4(param_1,param_2,&local_14);
  }
  if (local_10 == 0) {
    *param_3 = local_14 << 8 | local_c;
  }
  else {
    *param_3 = 0;
  }
  return local_10;
}

// ---- FUN_005fb4a8  @ 0x5fb4a8
int FUN_005fb4a8(undefined4 param_1,undefined4 param_2,int *param_3)

{
  uint local_14;
  int local_10;
  uint local_c;
  
  local_14 = 0;
  local_10 = FUN_005fb3e4(param_1,param_2,&local_14);
  local_c = local_14;
  if (local_10 == 0) {
    local_10 = FUN_005fb3e4(param_1,param_2,&local_14);
  }
  local_c = local_14 << 8 | local_c;
  if (local_10 == 0) {
    local_10 = FUN_005fb3e4(param_1,param_2,&local_14);
  }
  local_c = local_14 << 0x10 | local_c;
  if (local_10 == 0) {
    local_10 = FUN_005fb3e4(param_1,param_2,&local_14);
  }
  if (local_10 == 0) {
    *param_3 = local_14 * 0x1000000 + local_c;
  }
  else {
    *param_3 = 0;
  }
  return local_10;
}

// ---- FUN_005fb548  @ 0x5fb548
int FUN_005fb548(undefined4 param_1,undefined4 param_2,uint *param_3)

{
  uint local_38;
  int local_34;
  uint local_30;
  uint uStack_2c;
  
  local_38 = 0;
  local_34 = FUN_005fb3e4(param_1,param_2,&local_38);
  uStack_2c = (int)local_38 >> 0x1f;
  local_30 = local_38;
  if (local_34 == 0) {
    local_34 = FUN_005fb3e4(param_1,param_2,&local_38);
  }
  local_30 = local_30 | local_38 << 8;
  uStack_2c = uStack_2c | ((int)local_38 >> 0x1f) << 8 | local_38 >> 0x18;
  if (local_34 == 0) {
    local_34 = FUN_005fb3e4(param_1,param_2,&local_38);
  }
  local_30 = local_30 | local_38 << 0x10;
  uStack_2c = uStack_2c | ((int)local_38 >> 0x1f) << 0x10 | local_38 >> 0x10;
  if (local_34 == 0) {
    local_34 = FUN_005fb3e4(param_1,param_2,&local_38);
  }
  local_30 = local_30 | local_38 << 0x18;
  uStack_2c = uStack_2c | ((int)local_38 >> 0x1f) << 0x18 | local_38 >> 8;
  if (local_34 == 0) {
    local_34 = FUN_005fb3e4(param_1,param_2,&local_38);
  }
  uStack_2c = uStack_2c | local_38;
  if (local_34 == 0) {
    local_34 = FUN_005fb3e4(param_1,param_2,&local_38);
  }
  uStack_2c = uStack_2c | local_38 << 8;
  if (local_34 == 0) {
    local_34 = FUN_005fb3e4(param_1,param_2,&local_38);
  }
  uStack_2c = uStack_2c | local_38 << 0x10;
  if (local_34 == 0) {
    local_34 = FUN_005fb3e4(param_1,param_2,&local_38);
  }
  if (local_34 == 0) {
    *param_3 = local_30;
    param_3[1] = uStack_2c | local_38 << 0x18;
  }
  else {
    *param_3 = 0;
    param_3[1] = 0;
  }
  return local_34;
}

// ---- FUN_005fb728  @ 0x5fb728
undefined4 FUN_005fb728(byte *param_1,byte *param_2)

{
  byte *local_10;
  byte *local_c;
  byte local_2;
  byte local_1;
  
  local_10 = param_2;
  local_c = param_1;
  while( true ) {
    local_2 = *local_c;
    local_1 = *local_10;
    if ((0x60 < local_2) && (local_2 < 0x7b)) {
      local_2 = local_2 - 0x20;
    }
    if ((0x60 < local_1) && (local_1 < 0x7b)) {
      local_1 = local_1 - 0x20;
    }
    if (local_2 == 0) {
      if (local_1 == 0) {
        return 0;
      }
      return 0xffffffff;
    }
    if (local_1 == 0) {
      return 1;
    }
    if (local_2 < local_1) break;
    local_10 = local_10 + 1;
    local_c = local_c + 1;
    if (local_1 < local_2) {
      return 1;
    }
  }
  return 0xffffffff;
}

// ---- FUN_005fb804  @ 0x5fb804
longlong FUN_005fb804(cocos2d *param_1,zlib_filefunc64_32_def_s *param_2)

{
  longlong lVar1;
  longlong lVar2;
  longlong lVar3;
  longlong lVar4;
  int iVar5;
  void *pvVar6;
  void *__ptr;
  int iVar7;
  void *pvVar8;
  uint uVar9;
  int iVar10;
  bool bVar11;
  longlong lVar12;
  uint in_stack_ffffffb4;
  int local_3c;
  uint local_30;
  uint uStack_2c;
  uint local_28;
  uint uStack_24;
  
  lVar4 = 0;
  iVar5 = cocos2d::call_zseek64
                    (param_1,param_2,(void *)0x0,CONCAT44(in_stack_ffffffb4,2),(int)param_2);
  if (iVar5 == 0) {
    lVar12 = cocos2d::call_ztell64((zlib_filefunc64_32_def_s *)param_1,param_2);
    iVar5 = (int)((ulonglong)lVar12 >> 0x20);
    pvVar6 = (void *)lVar12;
    lVar1 = 0xffff;
    if (iVar5 == 0 && pvVar6 < (void *)0xffff) {
      lVar1 = lVar12;
    }
    uStack_24 = (uint)((ulonglong)lVar1 >> 0x20);
    local_28 = (uint)lVar1;
    __ptr = malloc(0x404);
    if (__ptr == (void *)0x0) {
      lVar4 = 0;
    }
    else {
      lVar3 = 4;
      while( true ) {
        uStack_2c = (uint)((ulonglong)lVar3 >> 0x20);
        local_30 = (uint)lVar3;
        bVar11 = uStack_24 <= uStack_2c;
        if (uStack_2c == uStack_24) {
          bVar11 = local_28 <= local_30;
        }
        if (bVar11) break;
        uVar9 = (uint)((ulonglong)(lVar3 + 0x400) >> 0x20);
        bVar11 = uVar9 <= uStack_24;
        if (uStack_24 == uVar9) {
          bVar11 = (uint)(lVar3 + 0x400) <= local_28;
        }
        lVar2 = lVar1;
        if (bVar11) {
          lVar2 = lVar3 + 0x400;
        }
        lVar3 = lVar12 - lVar2;
        pvVar8 = (void *)lVar3;
        uVar9 = iVar5 - (int)((ulonglong)lVar3 >> 0x20);
        bVar11 = uVar9 == pvVar6 < pvVar8;
        if (uVar9 == pvVar6 < pvVar8) {
          bVar11 = (uint)((int)pvVar6 - (int)pvVar8) < 0x405;
        }
        if (bVar11) {
          iVar10 = (int)pvVar6 - (int)pvVar8;
        }
        else {
          iVar10 = 0x404;
        }
        iVar7 = cocos2d::call_zseek64
                          (param_1,param_2,pvVar8,(ulonglong)in_stack_ffffffb4 << 0x20,(int)param_2)
        ;
        if ((iVar7 != 0) ||
           (iVar7 = (**(code **)(param_1 + 4))(*(undefined4 *)(param_1 + 0x1c),param_2,__ptr,iVar10)
           , iVar7 != iVar10)) break;
        iVar10 = iVar10 + -3;
        do {
          local_3c = iVar10;
          iVar10 = local_3c + -1;
          if (local_3c < 1) goto LAB_005fb9c6;
        } while ((((*(char *)(iVar10 + (int)__ptr) != 'P') ||
                  (*(char *)(local_3c + (int)__ptr) != 'K')) ||
                 (*(char *)(local_3c + 1 + (int)__ptr) != '\x05')) ||
                (*(char *)(local_3c + 2 + (int)__ptr) != '\x06'));
        lVar4 = lVar3 + iVar10;
LAB_005fb9c6:
        lVar3 = lVar2;
        if (lVar4 != 0) break;
      }
      if (__ptr != (void *)0x0) {
        free(__ptr);
      }
    }
  }
  else {
    lVar4 = 0;
  }
  return lVar4;
}

// ---- FUN_005fb9fc  @ 0x5fb9fc
undefined8 FUN_005fb9fc(cocos2d *param_1,zlib_filefunc64_32_def_s *param_2)

{
  longlong lVar1;
  longlong lVar2;
  longlong lVar3;
  int iVar4;
  void *pvVar5;
  uint uVar6;
  bool bVar7;
  uint in_stack_ffffffac;
  int local_48;
  int local_44;
  void *local_40;
  int local_3c;
  void *local_38;
  undefined4 uStack_34;
  undefined8 local_30;
  undefined8 local_28;
  undefined8 local_20;
  undefined8 local_18;
  undefined8 local_10;
  
  local_28._0_4_ = 0xffff;
  local_28._4_4_ = 0;
  local_20._0_4_ = (void *)0x0;
  local_20._4_4_ = 0;
  iVar4 = cocos2d::call_zseek64
                    (param_1,param_2,(void *)0x0,CONCAT44(in_stack_ffffffac,2),(int)param_2);
  if (iVar4 == 0) {
    local_18 = cocos2d::call_ztell64((zlib_filefunc64_32_def_s *)param_1,param_2);
    uVar6 = (uint)((ulonglong)local_18 >> 0x20);
    bVar7 = local_28._4_4_ <= uVar6;
    if (uVar6 == local_28._4_4_) {
      bVar7 = (uint)local_28 <= (uint)local_18;
    }
    local_28 = CONCAT44(local_28._4_4_,(uint)local_28);
    if (!bVar7) {
      local_28 = local_18;
    }
    local_40 = malloc(0x404);
    if (local_40 == (void *)0x0) {
      local_38 = (void *)0x0;
      uStack_34 = 0;
    }
    else {
      lVar1 = local_28;
      lVar2 = local_18;
      lVar3 = 4;
      do {
        local_30._4_4_ = (uint)((ulonglong)lVar3 >> 0x20);
        local_30._0_4_ = (uint)lVar3;
        local_18._4_4_ = (int)((ulonglong)lVar2 >> 0x20);
        local_18._0_4_ = (void *)lVar2;
        local_28._4_4_ = (uint)((ulonglong)lVar1 >> 0x20);
        local_28._0_4_ = (uint)lVar1;
        bVar7 = local_28._4_4_ <= local_30._4_4_;
        if (local_30._4_4_ == local_28._4_4_) {
          bVar7 = (uint)local_28 <= (uint)local_30;
        }
        local_30 = lVar3;
        if (bVar7) break;
        uVar6 = (uint)((ulonglong)(lVar3 + 0x400) >> 0x20);
        bVar7 = uVar6 <= local_28._4_4_;
        if (local_28._4_4_ == uVar6) {
          bVar7 = (uint)(lVar3 + 0x400) <= (uint)local_28;
        }
        local_30 = lVar1;
        if (bVar7) {
          local_30 = lVar3 + 0x400;
        }
        local_10 = lVar2 - local_30;
        pvVar5 = (void *)local_10;
        uVar6 = local_18._4_4_ - (int)((ulonglong)local_10 >> 0x20);
        bVar7 = uVar6 == (void *)local_18 < pvVar5;
        if (uVar6 == (void *)local_18 < pvVar5) {
          bVar7 = (uint)((int)(void *)local_18 - (int)pvVar5) < 0x405;
        }
        if (bVar7) {
          local_3c = (int)(void *)local_18 - (int)pvVar5;
        }
        else {
          local_3c = 0x404;
        }
        local_28 = lVar1;
        local_18 = lVar2;
        iVar4 = cocos2d::call_zseek64
                          (param_1,param_2,pvVar5,(ulonglong)in_stack_ffffffac << 0x20,(int)param_2)
        ;
        lVar1 = local_28;
        lVar2 = local_18;
        if (iVar4 != 0) break;
        iVar4 = (**(code **)(param_1 + 4))
                          (*(undefined4 *)(param_1 + 0x1c),param_2,local_40,local_3c);
        lVar1 = local_28;
        lVar2 = local_18;
        if (iVar4 != local_3c) break;
        iVar4 = local_3c + -3;
        do {
          local_44 = iVar4;
          iVar4 = local_44 + -1;
          if (local_44 < 1) goto LAB_005fbbbe;
        } while ((((*(char *)(iVar4 + (int)local_40) != 'P') ||
                  (*(char *)(local_44 + (int)local_40) != 'K')) ||
                 (*(char *)(local_44 + 1 + (int)local_40) != '\x06')) ||
                (*(char *)(local_44 + 2 + (int)local_40) != '\a'));
        local_20 = local_10 + iVar4;
LAB_005fbbbe:
        local_44 = iVar4;
        lVar3 = local_30;
      } while (local_20 == 0);
      local_28 = lVar1;
      local_18 = lVar2;
      if (local_40 != (void *)0x0) {
        free(local_40);
      }
      if (local_20 == 0) {
        local_38 = (void *)0x0;
        uStack_34 = 0;
      }
      else {
        iVar4 = cocos2d::call_zseek64
                          (param_1,param_2,(void *)local_20,(ulonglong)in_stack_ffffffac << 0x20,
                           (int)param_2);
        if (iVar4 == 0) {
          iVar4 = FUN_005fb4a8(param_1,param_2,&local_48);
          if (iVar4 == 0) {
            iVar4 = FUN_005fb4a8(param_1,param_2,&local_48);
            if (iVar4 == 0) {
              if (local_48 == 0) {
                iVar4 = FUN_005fb548(param_1,param_2,&local_38);
                if (iVar4 == 0) {
                  iVar4 = FUN_005fb4a8(param_1,param_2,&local_48);
                  if (iVar4 == 0) {
                    if (local_48 == 1) {
                      iVar4 = cocos2d::call_zseek64
                                        (param_1,param_2,local_38,
                                         (ulonglong)in_stack_ffffffac << 0x20,(int)param_2);
                      if (iVar4 == 0) {
                        iVar4 = FUN_005fb4a8(param_1,param_2,&local_48);
                        if (iVar4 == 0) {
                          if (local_48 != 0x6064b50) {
                            local_38 = (void *)0x0;
                            uStack_34 = 0;
                          }
                        }
                        else {
                          local_38 = (void *)0x0;
                          uStack_34 = 0;
                        }
                      }
                      else {
                        local_38 = (void *)0x0;
                        uStack_34 = 0;
                      }
                    }
                    else {
                      local_38 = (void *)0x0;
                      uStack_34 = 0;
                    }
                  }
                  else {
                    local_38 = (void *)0x0;
                    uStack_34 = 0;
                  }
                }
                else {
                  local_38 = (void *)0x0;
                  uStack_34 = 0;
                }
              }
              else {
                local_38 = (void *)0x0;
                uStack_34 = 0;
              }
            }
            else {
              local_38 = (void *)0x0;
              uStack_34 = 0;
            }
          }
          else {
            local_38 = (void *)0x0;
            uStack_34 = 0;
          }
        }
        else {
          local_38 = (void *)0x0;
          uStack_34 = 0;
        }
      }
    }
  }
  else {
    local_38 = (void *)0x0;
    uStack_34 = 0;
  }
  return CONCAT44(uStack_34,local_38);
}

// ---- FUN_005fbd54  @ 0x5fbd54
/* WARNING: Removing unreachable block (ram,0x005fbd70) */

void * FUN_005fbd54(void *param_1,undefined4 *param_2,undefined4 param_3)

{
  int iVar1;
  uint uVar2;
  bool bVar3;
  longlong lVar4;
  uint in_stack_fffffebc;
  int in_stack_fffffec0;
  uint local_130;
  int local_12c;
  int local_128;
  undefined1 auStack_124 [4];
  int local_120;
  void *local_11c;
  uint local_118;
  int iStack_114;
  undefined1 auStack_110 [8];
  undefined8 local_108;
  undefined4 local_100;
  undefined4 uStack_fc;
  undefined4 uStack_f8;
  undefined4 uStack_f4;
  undefined4 local_f0;
  code *local_ec;
  undefined4 uStack_e8;
  undefined4 local_e4;
  undefined4 local_e0;
  undefined4 local_dc;
  undefined4 local_d8;
  undefined4 local_d4;
  zlib_filefunc64_32_def_s *local_d0;
  uint local_c8;
  int iStack_c4;
  undefined4 local_c0 [2];
  longlong local_b8;
  longlong local_98;
  uint local_90;
  int iStack_8c;
  uint local_88;
  int iStack_84;
  undefined4 local_20;
  undefined4 local_1c;
  undefined4 local_18;
  
  local_120 = 0;
  local_d8 = 0;
  local_dc = 0;
  if (param_2 == (undefined4 *)0x0) {
    cocos2d::fill_fopen64_filefunc((zlib_filefunc64_def_s *)&local_100);
  }
  else {
    local_100 = *param_2;
    uStack_fc = param_2[1];
    uStack_f8 = param_2[2];
    uStack_f4 = param_2[3];
    local_f0 = param_2[4];
    local_ec = (code *)param_2[5];
    uStack_e8 = param_2[6];
    local_e4 = param_2[7];
    local_e0 = param_2[8];
    local_dc = param_2[9];
    local_d8 = param_2[10];
  }
  local_d4 = param_3;
  local_d0 = (zlib_filefunc64_32_def_s *)
             cocos2d::call_zopen64((zlib_filefunc64_32_def_s *)&local_100,param_1,5);
  if (local_d0 == (zlib_filefunc64_32_def_s *)0x0) {
    local_11c = (void *)0x0;
  }
  else {
    local_108 = FUN_005fb9fc(&local_100,local_d0);
    if (local_108 == 0) {
      lVar4 = FUN_005fb804(&local_100,local_d0);
      if (lVar4 == 0) {
        local_120 = -1;
      }
      local_18 = 0;
      local_108 = lVar4;
      iVar1 = cocos2d::call_zseek64
                        ((cocos2d *)&local_100,local_d0,(void *)lVar4,
                         (ulonglong)in_stack_fffffebc << 0x20,in_stack_fffffec0);
      if (iVar1 != 0) {
        local_120 = -1;
      }
      iVar1 = FUN_005fb4a8(&local_100,local_d0,&local_130);
      if (iVar1 != 0) {
        local_120 = -1;
      }
      iVar1 = FUN_005fb448(&local_100,local_d0,&local_12c);
      if (iVar1 != 0) {
        local_120 = -1;
      }
      iVar1 = FUN_005fb448(&local_100,local_d0,&local_128);
      if (iVar1 != 0) {
        local_120 = -1;
      }
      iVar1 = FUN_005fb448(&local_100,local_d0,&local_130);
      if (iVar1 != 0) {
        local_120 = -1;
      }
      local_c8 = local_130;
      iStack_c4 = 0;
      iVar1 = FUN_005fb448(&local_100,local_d0,&local_130);
      if (iVar1 != 0) {
        local_120 = -1;
      }
      local_118 = local_130;
      iStack_114 = 0;
      if (((iStack_c4 != 0 || local_c8 != local_130) || (local_128 != 0)) || (local_12c != 0)) {
        local_120 = -0x67;
      }
      iVar1 = FUN_005fb4a8(&local_100,local_d0,&local_130);
      if (iVar1 != 0) {
        local_120 = -1;
      }
      local_90 = local_130;
      iStack_8c = 0;
      iVar1 = FUN_005fb4a8(&local_100,local_d0,&local_130);
      if (iVar1 != 0) {
        local_120 = -1;
      }
      local_88 = local_130;
      iStack_84 = 0;
      iVar1 = FUN_005fb448(&local_100,local_d0,local_c0);
      local_98 = local_108;
      if (iVar1 != 0) {
        local_120 = -1;
      }
    }
    else {
      local_18 = 1;
      iVar1 = cocos2d::call_zseek64
                        ((cocos2d *)&local_100,local_d0,(void *)local_108,
                         (ulonglong)in_stack_fffffebc << 0x20,in_stack_fffffec0);
      if (iVar1 != 0) {
        local_120 = -1;
      }
      iVar1 = FUN_005fb4a8(&local_100,local_d0,&local_130);
      if (iVar1 != 0) {
        local_120 = -1;
      }
      iVar1 = FUN_005fb548(&local_100,local_d0,auStack_110);
      if (iVar1 != 0) {
        local_120 = -1;
      }
      iVar1 = FUN_005fb448(&local_100,local_d0,auStack_124);
      if (iVar1 != 0) {
        local_120 = -1;
      }
      iVar1 = FUN_005fb448(&local_100,local_d0,auStack_124);
      if (iVar1 != 0) {
        local_120 = -1;
      }
      iVar1 = FUN_005fb4a8(&local_100,local_d0,&local_12c);
      if (iVar1 != 0) {
        local_120 = -1;
      }
      iVar1 = FUN_005fb4a8(&local_100,local_d0,&local_128);
      if (iVar1 != 0) {
        local_120 = -1;
      }
      iVar1 = FUN_005fb548(&local_100,local_d0,&local_c8);
      if (iVar1 != 0) {
        local_120 = -1;
      }
      iVar1 = FUN_005fb548(&local_100,local_d0,&local_118);
      if (iVar1 != 0) {
        local_120 = -1;
      }
      if (((iStack_c4 != iStack_114 || local_c8 != local_118) || (local_128 != 0)) ||
         (local_12c != 0)) {
        local_120 = -0x67;
      }
      iVar1 = FUN_005fb548(&local_100,local_d0,&local_90);
      if (iVar1 != 0) {
        local_120 = -1;
      }
      iVar1 = FUN_005fb548(&local_100,local_d0,&local_88);
      if (iVar1 != 0) {
        local_120 = -1;
      }
      local_c0[0] = 0;
      local_98 = local_108;
    }
    local_108._4_4_ = (uint)((ulonglong)local_98 >> 0x20);
    local_108._0_4_ = (uint)local_98;
    uVar2 = iStack_8c + iStack_84 + (uint)CARRY4(local_90,local_88);
    bVar3 = uVar2 <= local_108._4_4_;
    if (local_108._4_4_ == uVar2) {
      bVar3 = local_90 + local_88 <= (uint)local_108;
    }
    if ((!bVar3) && (local_120 == 0)) {
      local_120 = -0x67;
    }
    local_108 = local_98;
    if (local_120 == 0) {
      local_b8 = local_98 -
                 CONCAT44(iStack_8c + iStack_84 + (uint)CARRY4(local_90,local_88),
                          local_90 + local_88);
      local_20 = 0;
      local_1c = 0;
      local_11c = malloc(0xf0);
      if (local_11c != (void *)0x0) {
        memcpy(local_11c,&local_100,0xf0);
        cocos2d::unzGoToFirstFile(local_11c);
      }
    }
    else {
      (*local_ec)(local_e4,local_d0);
      local_11c = (void *)0x0;
    }
  }
  return local_11c;
}

// ---- FUN_005fc3f8  @ 0x5fc3f8
void FUN_005fc3f8(uint param_1,undefined4 param_2,int *param_3)

{
  param_3[3] = param_1 >> 0x10 & 0x1f;
  param_3[4] = ((param_1 >> 0x10 & 0x1e0) >> 5) - 1;
  param_3[5] = (param_1 >> 0x19) + 0x7bc;
  param_3[2] = (param_1 & 0xf800) >> 0xb;
  param_3[1] = (param_1 & 0x7e0) >> 5;
  *param_3 = (param_1 & 0x1f) << 1;
  return;
}

// ---- FUN_005fc4d4  @ 0x5fc4d4
int FUN_005fc4d4(cocos2d *param_1,void *param_2,int *param_3,int param_4,uint param_5,int param_6,
                uint param_7,int param_8,uint param_9)

{
  int iVar1;
  uint uVar2;
  uint in_stack_ffffff44;
  int local_a4;
  int local_a0;
  int local_9c;
  void *local_98;
  undefined1 auStack_94 [4];
  int local_90;
  void *local_8c;
  uint local_88;
  uint local_84;
  uint local_80;
  cocos2d *local_7c;
  int local_78;
  int iStack_74;
  uint local_70;
  int iStack_6c;
  undefined1 auStack_68 [4];
  undefined1 auStack_64 [4];
  undefined1 auStack_60 [4];
  undefined1 auStack_5c [4];
  undefined4 local_58;
  undefined1 auStack_54 [4];
  int local_50;
  int iStack_4c;
  int local_48;
  int iStack_44;
  uint local_40;
  uint local_3c;
  uint local_38;
  int local_34;
  undefined1 auStack_30 [4];
  undefined1 auStack_2c [4];
  undefined1 auStack_28 [28];
  
  local_90 = 0;
  local_8c = (void *)0x0;
  if (param_1 == (cocos2d *)0x0) {
    local_90 = -0x66;
  }
  else {
    local_7c = param_1;
    iVar1 = cocos2d::call_zseek64
                      (param_1,*(zlib_filefunc64_32_def_s **)(param_1 + 0x30),
                       (void *)(*(int *)(param_1 + 0x48) + *(int *)(param_1 + 0x58)),
                       (ulonglong)in_stack_ffffff44 << 0x20,param_4);
    if (iVar1 != 0) {
      local_90 = -1;
    }
    if (local_90 == 0) {
      iVar1 = FUN_005fb4a8(local_7c,*(undefined4 *)(local_7c + 0x30),&local_a4);
      if (iVar1 == 0) {
        if (local_a4 != 0x2014b50) {
          local_90 = -0x67;
        }
      }
      else {
        local_90 = -1;
      }
    }
    iVar1 = FUN_005fb448(local_7c,*(undefined4 *)(local_7c + 0x30),auStack_68);
    if (iVar1 != 0) {
      local_90 = -1;
    }
    iVar1 = FUN_005fb448(local_7c,*(undefined4 *)(local_7c + 0x30),auStack_64);
    if (iVar1 != 0) {
      local_90 = -1;
    }
    iVar1 = FUN_005fb448(local_7c,*(undefined4 *)(local_7c + 0x30),auStack_60);
    if (iVar1 != 0) {
      local_90 = -1;
    }
    iVar1 = FUN_005fb448(local_7c,*(undefined4 *)(local_7c + 0x30),auStack_5c);
    if (iVar1 != 0) {
      local_90 = -1;
    }
    iVar1 = FUN_005fb4a8(local_7c,*(undefined4 *)(local_7c + 0x30),&local_58);
    if (iVar1 != 0) {
      local_90 = -1;
    }
    FUN_005fc3f8(local_58,0,auStack_28);
    iVar1 = FUN_005fb4a8(local_7c,*(undefined4 *)(local_7c + 0x30),auStack_54);
    if (iVar1 != 0) {
      local_90 = -1;
    }
    iVar1 = FUN_005fb4a8(local_7c,*(undefined4 *)(local_7c + 0x30),&local_a0);
    if (iVar1 != 0) {
      local_90 = -1;
    }
    local_50 = local_a0;
    iStack_4c = 0;
    iVar1 = FUN_005fb4a8(local_7c,*(undefined4 *)(local_7c + 0x30),&local_a0);
    if (iVar1 != 0) {
      local_90 = -1;
    }
    local_48 = local_a0;
    iStack_44 = 0;
    iVar1 = FUN_005fb448(local_7c,*(undefined4 *)(local_7c + 0x30),&local_40);
    if (iVar1 != 0) {
      local_90 = -1;
    }
    iVar1 = FUN_005fb448(local_7c,*(undefined4 *)(local_7c + 0x30),&local_3c);
    if (iVar1 != 0) {
      local_90 = -1;
    }
    iVar1 = FUN_005fb448(local_7c,*(undefined4 *)(local_7c + 0x30),&local_38);
    if (iVar1 != 0) {
      local_90 = -1;
    }
    iVar1 = FUN_005fb448(local_7c,*(undefined4 *)(local_7c + 0x30),&local_34);
    if (iVar1 != 0) {
      local_90 = -1;
    }
    iVar1 = FUN_005fb448(local_7c,*(undefined4 *)(local_7c + 0x30),auStack_30);
    if (iVar1 != 0) {
      local_90 = -1;
    }
    iVar1 = FUN_005fb4a8(local_7c,*(undefined4 *)(local_7c + 0x30),auStack_2c);
    if (iVar1 != 0) {
      local_90 = -1;
    }
    iVar1 = FUN_005fb4a8(local_7c,*(undefined4 *)(local_7c + 0x30),&local_a0);
    if (iVar1 != 0) {
      local_90 = -1;
    }
    local_78 = local_a0;
    iStack_74 = 0;
    local_8c = (void *)((int)local_8c + local_40);
    if ((local_90 == 0) && (param_4 != 0)) {
      if (local_40 < param_5) {
        *(undefined1 *)(local_40 + param_4) = 0;
        local_88 = local_40;
      }
      else {
        local_88 = param_5;
      }
      if (((local_40 != 0) && (param_5 != 0)) &&
         (uVar2 = (**(code **)(local_7c + 4))
                            (*(undefined4 *)(local_7c + 0x1c),*(undefined4 *)(local_7c + 0x30),
                             param_4,local_88), uVar2 != local_88)) {
        local_90 = -1;
      }
      local_8c = (void *)((int)local_8c - local_88);
    }
    if ((local_90 == 0) && (param_6 != 0)) {
      if (local_3c < param_7) {
        local_70 = local_3c;
      }
      else {
        local_70 = param_7;
      }
      iStack_6c = 0;
      if (local_8c != (void *)0x0) {
        iVar1 = cocos2d::call_zseek64
                          (local_7c,*(zlib_filefunc64_32_def_s **)(local_7c + 0x30),local_8c,
                           CONCAT44(in_stack_ffffff44,1),param_4);
        if (iVar1 == 0) {
          local_8c = (void *)0x0;
        }
        else {
          local_90 = -1;
        }
      }
      if (((local_3c != 0) && (param_7 != 0)) &&
         (uVar2 = (**(code **)(local_7c + 4))
                            (*(undefined4 *)(local_7c + 0x1c),*(undefined4 *)(local_7c + 0x30),
                             param_6,local_70), iStack_6c != 0 || uVar2 != local_70)) {
        local_90 = -1;
      }
      local_8c = (void *)((int)local_8c + (local_3c - local_70));
    }
    else {
      local_8c = (void *)((int)local_8c + local_3c);
    }
    if ((local_90 == 0) && (local_3c != 0)) {
      local_84 = 0;
      local_8c = (void *)((int)local_8c - local_3c);
      if (local_8c != (void *)0x0) {
        iVar1 = cocos2d::call_zseek64
                          (local_7c,*(zlib_filefunc64_32_def_s **)(local_7c + 0x30),local_8c,
                           CONCAT44(in_stack_ffffff44,1),param_4);
        if (iVar1 == 0) {
          local_8c = (void *)0x0;
        }
        else {
          local_90 = -1;
        }
      }
      for (; local_84 < local_3c; local_84 = (int)local_98 + local_84 + 4) {
        iVar1 = FUN_005fb448(local_7c,*(undefined4 *)(local_7c + 0x30),&local_9c);
        if (iVar1 != 0) {
          local_90 = -1;
        }
        iVar1 = FUN_005fb448(local_7c,*(undefined4 *)(local_7c + 0x30),&local_98);
        if (iVar1 != 0) {
          local_90 = -1;
        }
        if (local_9c == 1) {
          if ((iStack_44 == 0 && local_48 == -1) &&
             (iVar1 = FUN_005fb548(local_7c,*(undefined4 *)(local_7c + 0x30),&local_48), iVar1 != 0)
             ) {
            local_90 = -1;
          }
          if ((iStack_4c == 0 && local_50 == -1) &&
             (iVar1 = FUN_005fb548(local_7c,*(undefined4 *)(local_7c + 0x30),&local_50), iVar1 != 0)
             ) {
            local_90 = -1;
          }
          if ((iStack_74 == 0 && local_78 == -1) &&
             (iVar1 = FUN_005fb548(local_7c,*(undefined4 *)(local_7c + 0x30),&local_78), iVar1 != 0)
             ) {
            local_90 = -1;
          }
          if ((local_34 == -1) &&
             (iVar1 = FUN_005fb4a8(local_7c,*(undefined4 *)(local_7c + 0x30),auStack_94), iVar1 != 0
             )) {
            local_90 = -1;
          }
        }
        else {
          iVar1 = cocos2d::call_zseek64
                            (local_7c,*(zlib_filefunc64_32_def_s **)(local_7c + 0x30),local_98,
                             CONCAT44(in_stack_ffffff44,1),param_4);
          if (iVar1 != 0) {
            local_90 = -1;
          }
        }
      }
    }
    if ((local_90 == 0) && (param_8 != 0)) {
      if (local_38 < param_9) {
        *(undefined1 *)(local_38 + param_8) = 0;
        local_80 = local_38;
      }
      else {
        local_80 = param_9;
      }
      if ((local_8c != (void *)0x0) &&
         (iVar1 = cocos2d::call_zseek64
                            (local_7c,*(zlib_filefunc64_32_def_s **)(local_7c + 0x30),local_8c,
                             CONCAT44(in_stack_ffffff44,1),param_4), iVar1 != 0)) {
        local_90 = -1;
      }
      if (((local_38 != 0) && (param_9 != 0)) &&
         (uVar2 = (**(code **)(local_7c + 4))
                            (*(undefined4 *)(local_7c + 0x1c),*(undefined4 *)(local_7c + 0x30),
                             param_8,local_80), uVar2 != local_80)) {
        local_90 = -1;
      }
    }
    if ((local_90 == 0) && (param_2 != (void *)0x0)) {
      memcpy(param_2,auStack_68,0x58);
    }
    if ((local_90 == 0) && (param_3 != (int *)0x0)) {
      *param_3 = local_78;
      param_3[1] = iStack_74;
    }
  }
  return local_90;
}

// ---- FUN_005fd190  @ 0x5fd190
int FUN_005fd190(cocos2d *param_1,int *param_2,int *param_3,int *param_4)

{
  int iVar1;
  uint uVar2;
  uint uVar3;
  uint in_stack_ffffffc4;
  int local_28;
  int local_24;
  uint local_20;
  uint local_1c;
  int local_18;
  int local_14;
  
  local_14 = 0;
  *param_2 = 0;
  *param_3 = 0;
  param_3[1] = 0;
  *param_4 = 0;
  iVar1 = cocos2d::call_zseek64
                    (param_1,*(zlib_filefunc64_32_def_s **)(param_1 + 0x30),
                     (void *)(*(int *)(param_1 + 0x48) + *(int *)(param_1 + 0xd8)),
                     (ulonglong)in_stack_ffffffc4 << 0x20,(int)param_4);
  if (iVar1 == 0) {
    if (local_14 == 0) {
      iVar1 = FUN_005fb4a8(param_1,*(undefined4 *)(param_1 + 0x30),&local_28);
      if (iVar1 == 0) {
        if (local_28 != 0x4034b50) {
          local_14 = -0x67;
        }
      }
      else {
        local_14 = -1;
      }
    }
    iVar1 = FUN_005fb448(param_1,*(undefined4 *)(param_1 + 0x30),&local_24);
    if (iVar1 != 0) {
      local_14 = -1;
    }
    iVar1 = FUN_005fb448(param_1,*(undefined4 *)(param_1 + 0x30),&local_20);
    if (iVar1 != 0) {
      local_14 = -1;
    }
    iVar1 = FUN_005fb448(param_1,*(undefined4 *)(param_1 + 0x30),&local_24);
    if (iVar1 == 0) {
      if ((local_14 == 0) && (*(int *)(param_1 + 0x8c) != local_24)) {
        local_14 = -0x67;
      }
    }
    else {
      local_14 = -1;
    }
    if ((((local_14 == 0) && (*(int *)(param_1 + 0x8c) != 0)) && (*(int *)(param_1 + 0x8c) != 0xc))
       && (*(int *)(param_1 + 0x8c) != 8)) {
      local_14 = -0x67;
    }
    iVar1 = FUN_005fb4a8(param_1,*(undefined4 *)(param_1 + 0x30),&local_24);
    if (iVar1 != 0) {
      local_14 = -1;
    }
    iVar1 = FUN_005fb4a8(param_1,*(undefined4 *)(param_1 + 0x30),&local_24);
    if (iVar1 == 0) {
      if (((local_14 == 0) && (*(int *)(param_1 + 0x94) != local_24)) && ((local_20 & 8) == 0)) {
        local_14 = -0x67;
      }
    }
    else {
      local_14 = -1;
    }
    iVar1 = FUN_005fb4a8(param_1,*(undefined4 *)(param_1 + 0x30),&local_24);
    if (iVar1 == 0) {
      if (((local_24 != -1) && (local_14 == 0)) &&
         ((*(int *)(param_1 + 0x9c) != 0 || local_24 != *(int *)(param_1 + 0x98) &&
          ((local_20 & 8) == 0)))) {
        local_14 = -0x67;
      }
    }
    else {
      local_14 = -1;
    }
    iVar1 = FUN_005fb4a8(param_1,*(undefined4 *)(param_1 + 0x30),&local_24);
    if (iVar1 == 0) {
      if ((((local_24 != -1) && (local_14 == 0)) &&
          (*(int *)(param_1 + 0xa4) != 0 || local_24 != *(int *)(param_1 + 0xa0))) &&
         ((local_20 & 8) == 0)) {
        local_14 = -0x67;
      }
    }
    else {
      local_14 = -1;
    }
    iVar1 = FUN_005fb448(param_1,*(undefined4 *)(param_1 + 0x30),&local_1c);
    if (iVar1 == 0) {
      if ((local_14 == 0) && (*(uint *)(param_1 + 0xa8) != local_1c)) {
        local_14 = -0x67;
      }
    }
    else {
      local_14 = -1;
    }
    *param_2 = *param_2 + local_1c;
    iVar1 = FUN_005fb448(param_1,*(undefined4 *)(param_1 + 0x30),&local_18);
    if (iVar1 != 0) {
      local_14 = -1;
    }
    uVar2 = *(uint *)(param_1 + 0xd8);
    iVar1 = *(int *)(param_1 + 0xdc);
    uVar3 = local_1c + uVar2;
    *param_3 = uVar3 + 0x1e;
    param_3[1] = iVar1 + (uint)CARRY4(local_1c,uVar2) + (uint)(0xffffffe1 < uVar3);
    *param_4 = local_18;
    *param_2 = *param_2 + local_18;
  }
  else {
    local_14 = -1;
  }
  return local_14;
}

// ---- FUN_005fe1d8  @ 0x5fe1d8
void FUN_005fe1d8(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_0096644c,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_00966454,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    cocos2d::CCRect::CCRect((CCRect *)&DAT_0096645c,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
  }
  return;
}

// ---- FUN_005ff07c  @ 0x5ff07c
void FUN_005ff07c(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_0096646c,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_00966474,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    cocos2d::CCRect::CCRect((CCRect *)&DAT_0096647c,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
  }
  return;
}

// ---- FUN_005ffd1c  @ 0x5ffd1c
void FUN_005ffd1c(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_0096648c,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_00966494,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    cocos2d::CCRect::CCRect((CCRect *)&DAT_0096649c,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
  }
  return;
}

// ---- FUN_005ffdcc  @ 0x5ffdcc
int FUN_005ffdcc(byte *param_1)

{
  byte bVar1;
  byte *local_c;
  int local_4;
  
  local_4 = 0;
  for (local_c = param_1; (bVar1 = *local_c, bVar1 != 0 && (bVar1 != 0)); local_c = local_c + 1) {
    if ((bVar1 & 0xc0) != 0x80) {
      local_4 = local_4 + 1;
    }
  }
  return local_4;
}
