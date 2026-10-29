// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 19 functions

// ---- FUN_00600b00  @ 0x600b00
void FUN_00600b00(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_009664b4,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_009664bc,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    cocos2d::CCRect::CCRect((CCRect *)&DAT_009664c4,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
  }
  return;
}

// ---- FUN_0060219c  @ 0x60219c
void FUN_0060219c(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_009664d4,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_009664dc,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    cocos2d::CCRect::CCRect((CCRect *)&DAT_009664e4,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
  }
  return;
}

// ---- FUN_00603050  @ 0x603050
void FUN_00603050(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_009664fc,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_00966504,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    cocos2d::CCRect::CCRect((CCRect *)&DAT_0096650c,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
  }
  return;
}

// ---- FUN_006030e0  @ 0x6030e0
undefined4 FUN_006030e0(undefined4 param_1)

{
  bool bVar1;
  int iVar2;
  undefined4 local_c;
  
  local_c = 5;
  iVar2 = FUN_007c5380(param_1,&DAT_00839048,0);
  if ((iVar2 == -1) && (iVar2 = FUN_007c5380(param_1,".jpeg",0), iVar2 == -1)) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (bVar1) {
    local_c = 0;
  }
  else {
    iVar2 = FUN_007c5380(param_1,&DAT_00839058,0);
    if ((iVar2 == -1) && (iVar2 = FUN_007c5380(param_1,&DAT_00839060,0), iVar2 == -1)) {
      bVar1 = false;
    }
    else {
      bVar1 = true;
    }
    if (bVar1) {
      local_c = 1;
    }
    else {
      iVar2 = FUN_007c5380(param_1,".tiff",0);
      if ((iVar2 == -1) && (iVar2 = FUN_007c5380(param_1,".TIFF",0), iVar2 == -1)) {
        bVar1 = false;
      }
      else {
        bVar1 = true;
      }
      if (bVar1) {
        local_c = 2;
      }
      else {
        iVar2 = FUN_007c5380(param_1,".webp",0);
        if ((iVar2 == -1) && (iVar2 = FUN_007c5380(param_1,".WEBP",0), iVar2 == -1)) {
          bVar1 = false;
        }
        else {
          bVar1 = true;
        }
        if (bVar1) {
          local_c = 3;
        }
      }
    }
  }
  return local_c;
}

// ---- FUN_0060321c  @ 0x60321c
void FUN_0060321c(_AsyncStruct *param_1)

{
  bool bVar1;
  char cVar2;
  CCImage *this;
  _ImageInfo *local_18;
  undefined4 local_14;
  int local_10;
  CCImage *local_c;
  
  local_14 = FUN_007c5300(param_1);
  local_10 = FUN_006030e0(param_1);
  if (local_10 == 5) {
    if (param_1 != (_AsyncStruct *)0x0) {
      cocos2d::_AsyncStruct::~_AsyncStruct(param_1);
      operator_delete(param_1);
    }
  }
  else {
    this = operator_new(0x24);
    cocos2d::CCImage::CCImage(this);
    local_c = this;
    if ((this == (CCImage *)0x0) ||
       (cVar2 = cocos2d::CCImage::initWithImageFileThreadSafe(this,local_14,local_10),
       cVar2 == '\x01')) {
      bVar1 = false;
    }
    else {
      bVar1 = true;
    }
    if (bVar1) {
      if (local_c != (CCImage *)0x0) {
        cocos2d::CCObject::release((CCObject *)local_c);
      }
    }
    else {
      local_18 = operator_new(0xc);
      *(undefined4 *)local_18 = 0;
      *(undefined4 *)(local_18 + 4) = 0;
      *(undefined4 *)(local_18 + 8) = 0;
      *(_AsyncStruct **)local_18 = param_1;
      *(CCImage **)(local_18 + 4) = local_c;
      *(int *)(local_18 + 8) = local_10;
      pthread_mutex_lock((pthread_mutex_t *)&DAT_00966558);
      std::
      queue<cocos2d::_ImageInfo*,std::deque<cocos2d::_ImageInfo*,std::allocator<cocos2d::_ImageInfo*>>>
      ::push(DAT_00966568,&local_18);
      pthread_mutex_unlock((pthread_mutex_t *)&DAT_00966558);
    }
  }
  return;
}

// ---- FUN_00603334  @ 0x603334
undefined4 FUN_00603334(void)

{
  queue<cocos2d::_AsyncStruct*,std::deque<cocos2d::_AsyncStruct*,std::allocator<cocos2d::_AsyncStruct*>>>
  *pqVar1;
  queue<cocos2d::_ImageInfo*,std::deque<cocos2d::_ImageInfo*,std::allocator<cocos2d::_ImageInfo*>>>
  *pqVar2;
  int iVar3;
  undefined4 *puVar4;
  CCThread aCStack_14 [4];
  undefined4 local_10;
  queue<cocos2d::_AsyncStruct*,std::deque<cocos2d::_AsyncStruct*,std::allocator<cocos2d::_AsyncStruct*>>>
  *local_c;
  
  local_10 = 0;
  do {
    cocos2d::CCThread::CCThread(aCStack_14);
    cocos2d::CCThread::createAutoreleasePool();
    local_c = DAT_00966564;
    pthread_mutex_lock((pthread_mutex_t *)&DAT_00966554);
    iVar3 = std::
            queue<cocos2d::_AsyncStruct*,std::deque<cocos2d::_AsyncStruct*,std::allocator<cocos2d::_AsyncStruct*>>>
            ::empty(local_c);
    if (iVar3 == 0) {
      puVar4 = (undefined4 *)
               std::
               queue<cocos2d::_AsyncStruct*,std::deque<cocos2d::_AsyncStruct*,std::allocator<cocos2d::_AsyncStruct*>>>
               ::front();
      local_10 = *puVar4;
      std::
      queue<cocos2d::_AsyncStruct*,std::deque<cocos2d::_AsyncStruct*,std::allocator<cocos2d::_AsyncStruct*>>>
      ::pop(local_c);
      pthread_mutex_unlock((pthread_mutex_t *)&DAT_00966554);
      FUN_0060321c(local_10);
      iVar3 = 2;
    }
    else {
      pthread_mutex_unlock((pthread_mutex_t *)&DAT_00966554);
      if (DAT_00966560 == '\0') {
        pthread_cond_wait((pthread_cond_t *)&DAT_00966550,(pthread_mutex_t *)&DAT_0096654c);
        iVar3 = 1;
      }
      else {
        iVar3 = 0;
      }
    }
    cocos2d::CCThread::~CCThread(aCStack_14);
    pqVar1 = DAT_00966564;
  } while (iVar3 != 0);
  if (DAT_00966564 !=
      (queue<cocos2d::_AsyncStruct*,std::deque<cocos2d::_AsyncStruct*,std::allocator<cocos2d::_AsyncStruct*>>>
       *)0x0) {
    if (DAT_00966564 !=
        (queue<cocos2d::_AsyncStruct*,std::deque<cocos2d::_AsyncStruct*,std::allocator<cocos2d::_AsyncStruct*>>>
         *)0x0) {
      std::
      queue<cocos2d::_AsyncStruct*,std::deque<cocos2d::_AsyncStruct*,std::allocator<cocos2d::_AsyncStruct*>>>
      ::~queue(DAT_00966564);
      operator_delete(pqVar1);
    }
    pqVar2 = DAT_00966568;
    DAT_00966564 = (queue<cocos2d::_AsyncStruct*,std::deque<cocos2d::_AsyncStruct*,std::allocator<cocos2d::_AsyncStruct*>>>
                    *)0x0;
    if (DAT_00966568 !=
        (queue<cocos2d::_ImageInfo*,std::deque<cocos2d::_ImageInfo*,std::allocator<cocos2d::_ImageInfo*>>>
         *)0x0) {
      std::
      queue<cocos2d::_ImageInfo*,std::deque<cocos2d::_ImageInfo*,std::allocator<cocos2d::_ImageInfo*>>>
      ::~queue(DAT_00966568);
      operator_delete(pqVar2);
    }
    DAT_00966568 = (queue<cocos2d::_ImageInfo*,std::deque<cocos2d::_ImageInfo*,std::allocator<cocos2d::_ImageInfo*>>>
                    *)0x0;
    pthread_mutex_destroy((pthread_mutex_t *)&DAT_00966554);
    pthread_mutex_destroy((pthread_mutex_t *)&DAT_00966558);
    pthread_mutex_destroy((pthread_mutex_t *)&DAT_0096654c);
    pthread_cond_destroy((pthread_cond_t *)&DAT_00966550);
  }
  return 0;
}

// ---- FUN_006073dc  @ 0x6073dc
void FUN_006073dc(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  undefined4 uVar2;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_00966528,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_00966530,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    uVar2 = 0;
    cocos2d::CCRect::CCRect((CCRect *)&DAT_00966538,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
    std::list<cocos2d::VolatileTexture*,std::allocator<cocos2d::VolatileTexture*>>::list
              ((list<cocos2d::VolatileTexture*,std::allocator<cocos2d::VolatileTexture*>> *)
               &cocos2d::VolatileTexture::textures);
    FUN_007985bc(&cocos2d::VolatileTexture::textures,0x6073c5,&DAT_00943000,&DAT_00943000,uVar2);
  }
  return;
}

// ---- FUN_006077d8  @ 0x6077d8
void FUN_006077d8(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_00966570,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_00966578,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    cocos2d::CCRect::CCRect((CCRect *)&DAT_00966580,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
  }
  return;
}

// ---- FUN_006085dc  @ 0x6085dc
void FUN_006085dc(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_009665a0,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_009665a8,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    cocos2d::CCRect::CCRect((CCRect *)&DAT_009665b0,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
  }
  return;
}

// ---- FUN_0060867c  @ 0x60867c
CCPoint * FUN_0060867c(CCPoint *param_1,CCPoint *param_2)

{
  cocos2d::CCPoint::operator+(param_1,param_2);
  return param_1;
}

// ---- FUN_00608cd0  @ 0x608cd0
void FUN_00608cd0(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_009665c0,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_009665c8,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    cocos2d::CCRect::CCRect((CCRect *)&DAT_009665d0,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
  }
  return;
}

// ---- FUN_0060aa64  @ 0x60aa64
void FUN_0060aa64(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_009665e0,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_009665e8,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    cocos2d::CCRect::CCRect((CCRect *)&DAT_009665f0,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
  }
  return;
}

// ---- FUN_0060ae4c  @ 0x60ae4c
void FUN_0060ae4c(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_00966600,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_00966608,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    cocos2d::CCRect::CCRect((CCRect *)&DAT_00966610,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
  }
  return;
}

// ---- FUN_0060b92c  @ 0x60b92c
void FUN_0060b92c(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_00966620,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_00966628,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    cocos2d::CCRect::CCRect((CCRect *)&DAT_00966630,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
  }
  return;
}

// ---- FUN_0060b9a8  @ 0x60b9a8
undefined4 FUN_0060b9a8(char *param_1)

{
  undefined4 extraout_r0;
  
  strtod(param_1,(char **)0x0);
  return extraout_r0;
}

// ---- FUN_0060bb18  @ 0x60bb18
undefined *
FUN_0060bb18(undefined4 param_1,
            map<std::string,std::string,std::less<std::string>,std::allocator<std::pair<std::string_const,std::string>>>
            *param_2)

{
  int iVar1;
  undefined *puVar2;
  undefined1 auStack_14 [4];
  undefined4 local_10;
  undefined4 local_c [2];
  
  if (param_2 ==
      (map<std::string,std::string,std::less<std::string>,std::allocator<std::pair<std::string_const,std::string>>>
       *)0x0) {
    puVar2 = &DAT_008395a8;
  }
  else {
    FUN_0079a3f4(auStack_14);
    FUN_007c6a60(local_c,param_1,auStack_14);
    local_10 = std::
               map<std::string,std::string,std::less<std::string>,std::allocator<std::pair<std::string_const,std::string>>>
               ::find(param_2,(string *)local_c);
    FUN_007c5914(local_c);
    FUN_0079a3fc(auStack_14);
    local_c[0] = std::
                 map<std::string,std::string,std::less<std::string>,std::allocator<std::pair<std::string_const,std::string>>>
                 ::end(param_2);
    iVar1 = std::_Rb_tree_iterator<std::pair<std::string_const,std::string>>::operator!=
                      ((_Rb_tree_iterator<std::pair<std::string_const,std::string>> *)&local_10,
                       (_Rb_tree_iterator *)local_c);
    if (iVar1 == 0) {
      puVar2 = &DAT_008395a8;
    }
    else {
      iVar1 = std::_Rb_tree_iterator<std::pair<std::string_const,std::string>>::operator->
                        ((_Rb_tree_iterator<std::pair<std::string_const,std::string>> *)&local_10);
      puVar2 = (undefined *)FUN_007c5300(iVar1 + 4);
    }
  }
  return puVar2;
}

// ---- FUN_0060e70c  @ 0x60e70c
void FUN_0060e70c(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_00966640,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_00966648,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    cocos2d::CCRect::CCRect((CCRect *)&DAT_00966650,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
  }
  return;
}

// ---- FUN_0060f190  @ 0x60f190
void FUN_0060f190(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_00966660,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_00966668,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    cocos2d::CCRect::CCRect((CCRect *)&DAT_00966670,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
  }
  return;
}

// ---- FUN_0060f20c  @ 0x60f20c
bool FUN_0060f20c(CCTouchHandler *param_1,CCTouchHandler *param_2)

{
  int iVar1;
  int iVar2;
  
  iVar1 = cocos2d::CCTouchHandler::getPriority(param_1);
  iVar2 = cocos2d::CCTouchHandler::getPriority(param_2);
  return iVar1 < iVar2;
}
