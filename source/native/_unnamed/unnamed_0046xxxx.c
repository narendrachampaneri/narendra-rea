// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 28 functions

// ---- FUN_00460b60  @ 0x460b60
void FUN_00460b60(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  undefined4 uVar2;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_00953848,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_00953850,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    uVar2 = 0;
    cocos2d::CCRect::CCRect((CCRect *)&DAT_00953858,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
    FUN_00798644(&DAT_00953868);
    FUN_007985bc(&DAT_00953868,0x798b71,&DAT_00943000,&DAT_00943000,uVar2);
  }
  return;
}

// ---- FUN_00460c20  @ 0x460c20
CCPoint * FUN_00460c20(CCPoint *param_1,CCPoint *param_2)

{
  cocos2d::CCPoint::operator+(param_1,param_2);
  return param_1;
}

// ---- FUN_00460c40  @ 0x460c40
CCPoint * FUN_00460c40(CCPoint *param_1,CCPoint *param_2)

{
  cocos2d::CCPoint::operator-(param_1,param_2);
  return param_1;
}

// ---- FUN_00460c60  @ 0x460c60
CCPoint * FUN_00460c60(float param_1,CCPoint *param_2)

{
  cocos2d::CCPoint::operator*(param_2,param_1);
  return param_2;
}

// ---- FUN_00460c80  @ 0x460c80
CCPoint * FUN_00460c80(CCPoint *param_1,CCPoint *param_2)

{
  float fVar1;
  CCPoint aCStack_10 [12];
  
  fVar1 = (float)cocos2d::CCPoint::operator+(aCStack_10,param_2);
  cocos2d::CCPoint::operator/(param_1,fVar1);
  return param_1;
}

// ---- FUN_00460cd0  @ 0x460cd0
float FUN_00460cd0(float param_1)

{
  CCEGLViewProtocol *pCVar1;
  float fVar2;
  float fVar3;
  undefined4 uVar4;
  uint in_fpscr;
  float fVar5;
  
  pCVar1 = (CCEGLViewProtocol *)cocos2d::CCEGLView::sharedOpenGLView();
  fVar2 = (float)cocos2d::CCEGLViewProtocol::getScaleX(pCVar1);
  pCVar1 = (CCEGLViewProtocol *)cocos2d::CCEGLView::sharedOpenGLView();
  fVar3 = (float)cocos2d::CCEGLViewProtocol::getScaleY(pCVar1);
  uVar4 = cocos2d::CCDevice::getDPI();
  fVar5 = (float)VectorSignedToFloat(uVar4,(byte)(in_fpscr >> 0x16) & 3);
  return (param_1 * ((fVar2 + fVar3) / 2.0)) / fVar5;
}

// ---- FUN_00462ec8  @ 0x462ec8
void FUN_00462ec8(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  undefined4 uVar2;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_0095386c,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_00953874,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    uVar2 = 0;
    cocos2d::CCRect::CCRect((CCRect *)&DAT_0095387c,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
    FUN_00798644(&DAT_0095388c);
    FUN_007985bc(&DAT_0095388c,0x798b71,&DAT_00943000,&DAT_00943000,uVar2);
  }
  return;
}

// ---- FUN_00462f78  @ 0x462f78
CCPoint * FUN_00462f78(float param_1,CCPoint *param_2)

{
  cocos2d::CCPoint::operator*(param_2,param_1);
  return param_2;
}

// ---- FUN_00465ef4  @ 0x465ef4
void FUN_00465ef4(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  undefined4 uVar2;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_00953890,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_00953898,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    uVar2 = 0;
    cocos2d::CCRect::CCRect((CCRect *)&DAT_009538a0,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
    FUN_00798644(&DAT_009538b0);
    FUN_007985bc(&DAT_009538b0,0x798b71,&DAT_00943000,&DAT_00943000,uVar2);
  }
  return;
}

// ---- FUN_00466090  @ 0x466090
void FUN_00466090(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_009538b4,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_009538bc,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    cocos2d::CCRect::CCRect((CCRect *)&DAT_009538c4,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
  }
  return;
}

// ---- FUN_00467100  @ 0x467100
cocos2d * FUN_00467100(cocos2d *param_1,int *param_2)

{
  CCSize *pCVar1;
  float extraout_s0;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  CCSize local_38 [4];
  undefined4 local_34;
  CCRect aCStack_30 [16];
  CCAffineTransform aCStack_20 [28];
  
  pCVar1 = (CCSize *)(**(code **)(*param_2 + 0x8c))(param_2);
  cocos2d::CCSize::CCSize(local_38,pCVar1);
  cocos2d::CCRect::CCRect(aCStack_30,extraout_s0,extraout_s1,extraout_s2,extraout_s3);
  (**(code **)(*param_2 + 0x184))
            (aCStack_20,param_2,aCStack_20,*(code **)(*param_2 + 0x184),local_34);
  cocos2d::CCRectApplyAffineTransform(param_1,aCStack_30,aCStack_20);
  return param_1;
}

// ---- FUN_004672cc  @ 0x4672cc
void FUN_004672cc(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  undefined4 uVar2;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_009538d4,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_009538dc,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    uVar2 = 0;
    cocos2d::CCRect::CCRect((CCRect *)&DAT_009538e4,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
    FUN_00798644(&DAT_009538f4);
    FUN_007985bc(&DAT_009538f4,0x798b71,&DAT_00943000,&DAT_00943000,uVar2);
  }
  return;
}

// ---- FUN_00467b2c  @ 0x467b2c
void FUN_00467b2c(undefined4 param_1,CCEditBoxImpl *param_2)

{
  bool bVar1;
  int iVar2;
  int *piVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  CCScriptEngineManager *this;
  code *pcVar6;
  undefined1 auStack_2c [4];
  undefined1 auStack_28 [4];
  CCEditBoxImpl *local_24;
  CCEditBox *local_20;
  int *local_1c;
  
  local_24 = param_2;
  (**(code **)(*(int *)param_2 + 0x34))(param_2,param_1);
  iVar2 = cocos2d::extension::CCEditBoxImpl::getDelegate(local_24);
  if (iVar2 != 0) {
    piVar3 = (int *)cocos2d::extension::CCEditBoxImpl::getDelegate(local_24);
    pcVar6 = *(code **)(*piVar3 + 0x10);
    uVar4 = cocos2d::extension::CCEditBoxImpl::getCCEditBox(local_24);
    uVar5 = (**(code **)(*(int *)local_24 + 0x38))(local_24);
    FUN_0079a3f4(auStack_2c);
    FUN_007c6a60(auStack_28,uVar5,auStack_2c);
    (*pcVar6)(piVar3,uVar4,auStack_28);
    FUN_007c5914(auStack_28);
    FUN_0079a3fc(auStack_2c);
    piVar3 = (int *)cocos2d::extension::CCEditBoxImpl::getDelegate(local_24);
    pcVar6 = *(code **)(*piVar3 + 0xc);
    uVar4 = cocos2d::extension::CCEditBoxImpl::getCCEditBox(local_24);
    (*pcVar6)(piVar3,uVar4);
    piVar3 = (int *)cocos2d::extension::CCEditBoxImpl::getDelegate(local_24);
    pcVar6 = *(code **)(*piVar3 + 0x14);
    uVar4 = cocos2d::extension::CCEditBoxImpl::getCCEditBox(local_24);
    (*pcVar6)(piVar3,uVar4);
  }
  local_20 = (CCEditBox *)cocos2d::extension::CCEditBoxImpl::getCCEditBox(local_24);
  if ((local_20 == (CCEditBox *)0x0) ||
     (iVar2 = cocos2d::extension::CCEditBox::getScriptEditBoxHandler(local_20), iVar2 == 0)) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (bVar1) {
    this = (CCScriptEngineManager *)cocos2d::CCScriptEngineManager::sharedManager();
    local_1c = (int *)cocos2d::CCScriptEngineManager::getScriptEngine(this);
    pcVar6 = *(code **)(*local_1c + 0x48);
    uVar4 = cocos2d::extension::CCEditBox::getScriptEditBoxHandler(local_20);
    (*pcVar6)(local_1c,uVar4,"changed",local_20,0);
    pcVar6 = *(code **)(*local_1c + 0x48);
    uVar4 = cocos2d::extension::CCEditBox::getScriptEditBoxHandler(local_20);
    (*pcVar6)(local_1c,uVar4,"ended",local_20,0);
    pcVar6 = *(code **)(*local_1c + 0x48);
    uVar4 = cocos2d::extension::CCEditBox::getScriptEditBoxHandler(local_20);
    (*pcVar6)(local_1c,uVar4,"return",local_20,0);
  }
  return;
}

// ---- FUN_00467d98  @ 0x467d98
void FUN_00467d98(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  undefined4 uVar2;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_009538f8,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_00953900,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    uVar2 = 0;
    cocos2d::CCRect::CCRect((CCRect *)&DAT_00953908,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
    FUN_00798644(&DAT_00953918);
    FUN_007985bc(&DAT_00953918,0x798b71,&DAT_00943000,&DAT_00943000,uVar2);
  }
  return;
}

// ---- FUN_00468100  @ 0x468100
int FUN_00468100(int param_1,int param_2,int param_3,vector<char,std::allocator<char>> *param_4)

{
  undefined4 uVar1;
  
  uVar1 = std::vector<char,std::allocator<char>>::end(param_4);
  std::vector<char,std::allocator<char>>::insert<char*,void>
            (param_4,uVar1,param_1,param_3 * param_2 + param_1);
  return param_3 * param_2;
}

// ---- FUN_0046813c  @ 0x46813c
int FUN_0046813c(int param_1,int param_2,int param_3,vector<char,std::allocator<char>> *param_4)

{
  undefined4 uVar1;
  
  uVar1 = std::vector<char,std::allocator<char>>::end(param_4);
  std::vector<char,std::allocator<char>>::insert<char*,void>
            (param_4,uVar1,param_1,param_3 * param_2 + param_1);
  return param_3 * param_2;
}

// ---- FUN_00468178  @ 0x468178
void FUN_00468178(void)

{
  int iVar1;
  CCHttpResponse *this;
  undefined4 uVar2;
  undefined4 uVar3;
  int *piVar4;
  CCScheduler *this_00;
  CCObject *pCVar5;
  int local_20;
  CCHttpRequest *local_1c;
  int local_18;
  CCHttpResponse *local_14;
  
  local_1c = (CCHttpRequest *)0x0;
  while (DAT_00953958 == '\0') {
    local_1c = (CCHttpRequest *)0x0;
    pthread_mutex_lock((pthread_mutex_t *)&DAT_00953944);
    iVar1 = cocos2d::CCArray::count(DAT_0095395c);
    if (iVar1 != 0) {
      iVar1 = cocos2d::CCArray::objectAtIndex(DAT_0095395c,0);
      if (iVar1 == 0) {
        local_1c = (CCHttpRequest *)0x0;
      }
      else {
        local_1c = (CCHttpRequest *)
                   __dynamic_cast(iVar1,&cocos2d::CCObject::typeinfo,
                                  &cocos2d::extension::CCHttpRequest::typeinfo,0);
      }
      cocos2d::CCArray::removeObjectAtIndex(DAT_0095395c,0,true);
    }
    pthread_mutex_unlock((pthread_mutex_t *)&DAT_00953944);
    if (local_1c == (CCHttpRequest *)0x0) {
      pthread_cond_wait((pthread_cond_t *)&DAT_00953950,(pthread_mutex_t *)&DAT_0095394c);
    }
    else {
      this = operator_new(0x3c);
      cocos2d::extension::CCHttpResponse::CCHttpResponse(this,local_1c);
      local_14 = this;
      cocos2d::CCObject::release((CCObject *)local_1c);
      local_20 = -1;
      local_18 = 0;
      uVar2 = cocos2d::extension::CCHttpRequest::getRequestType(local_1c);
      switch(uVar2) {
      case 0:
        uVar2 = cocos2d::extension::CCHttpResponse::getResponseData(local_14);
        uVar3 = cocos2d::extension::CCHttpResponse::getResponseHeader(local_14);
        local_18 = FUN_0046877c(local_1c,0x468101,uVar2,&local_20,0x46813d,uVar3);
        break;
      case 1:
        uVar2 = cocos2d::extension::CCHttpResponse::getResponseData(local_14);
        uVar3 = cocos2d::extension::CCHttpResponse::getResponseHeader(local_14);
        local_18 = FUN_00468808(local_1c,0x468101,uVar2,&local_20,0x46813d,uVar3);
        break;
      case 2:
        uVar2 = cocos2d::extension::CCHttpResponse::getResponseData(local_14);
        uVar3 = cocos2d::extension::CCHttpResponse::getResponseHeader(local_14);
        local_18 = FUN_004688c8(local_1c,0x468101,uVar2,&local_20,0x46813d,uVar3);
        break;
      case 3:
        uVar2 = cocos2d::extension::CCHttpResponse::getResponseData(local_14);
        uVar3 = cocos2d::extension::CCHttpResponse::getResponseHeader(local_14);
        local_18 = FUN_00468994(local_1c,0x468101,uVar2,&local_20,0x46813d,uVar3);
      }
      cocos2d::extension::CCHttpResponse::setResponseCode(local_14,local_20);
      if (local_18 == 0) {
        cocos2d::extension::CCHttpResponse::setSucceed(local_14,true);
      }
      else {
        cocos2d::extension::CCHttpResponse::setSucceed(local_14,false);
        cocos2d::extension::CCHttpResponse::setErrorBuffer(local_14,&DAT_00953968);
      }
      pthread_mutex_lock((pthread_mutex_t *)&DAT_00953948);
      cocos2d::CCArray::addObject(DAT_00953960,(CCObject *)local_14);
      pthread_mutex_unlock((pthread_mutex_t *)&DAT_00953948);
      piVar4 = (int *)cocos2d::CCDirector::sharedDirector();
      this_00 = (CCScheduler *)(**(code **)(*piVar4 + 0x30))(piVar4);
      pCVar5 = (CCObject *)cocos2d::extension::CCHttpClient::getInstance();
      cocos2d::CCScheduler::resumeTarget(this_00,pCVar5);
    }
  }
  pthread_mutex_lock((pthread_mutex_t *)&DAT_00953944);
  cocos2d::CCArray::removeAllObjects(DAT_0095395c);
  pthread_mutex_unlock((pthread_mutex_t *)&DAT_00953944);
  iVar1 = cocos2d::CCArray::count(DAT_0095395c);
  DAT_00953954 = DAT_00953954 - iVar1;
  if (DAT_0095395c != (CCArray *)0x0) {
    pthread_mutex_destroy((pthread_mutex_t *)&DAT_00953944);
    pthread_mutex_destroy((pthread_mutex_t *)&DAT_00953948);
    pthread_mutex_destroy((pthread_mutex_t *)&DAT_0095394c);
    pthread_cond_destroy((pthread_cond_t *)&DAT_00953950);
    cocos2d::CCObject::release((CCObject *)DAT_0095395c);
    DAT_0095395c = (CCArray *)0x0;
    cocos2d::CCObject::release((CCObject *)DAT_00953960);
    DAT_00953960 = (CCArray *)0x0;
  }
                    /* WARNING: Subroutine does not return */
  pthread_exit((void *)0x0);
}

// ---- FUN_004684d8  @ 0x4684d8
undefined4 FUN_004684d8(int param_1)

{
  int iVar1;
  CCHttpClient *pCVar2;
  undefined4 uVar3;
  
  if (param_1 == 0) {
    uVar3 = 0;
  }
  else {
    iVar1 = curl_easy_setopt(param_1,0x271a,&DAT_00953968);
    if (iVar1 == 0) {
      pCVar2 = (CCHttpClient *)cocos2d::extension::CCHttpClient::getInstance();
      uVar3 = cocos2d::extension::CCHttpClient::getTimeoutForRead(pCVar2);
      iVar1 = curl_easy_setopt(param_1,0xd,uVar3);
      if (iVar1 == 0) {
        pCVar2 = (CCHttpClient *)cocos2d::extension::CCHttpClient::getInstance();
        uVar3 = cocos2d::extension::CCHttpClient::getTimeoutForConnect(pCVar2);
        iVar1 = curl_easy_setopt(param_1,0x4e,uVar3);
        if (iVar1 == 0) {
          curl_easy_setopt(param_1,0x40,0);
          curl_easy_setopt(param_1,0x51,0);
          curl_easy_setopt(param_1,99,1);
          uVar3 = 1;
        }
        else {
          uVar3 = 0;
        }
      }
      else {
        uVar3 = 0;
      }
    }
    else {
      uVar3 = 0;
    }
  }
  return uVar3;
}

// ---- FUN_0046877c  @ 0x46877c
bool FUN_0046877c(CCHttpRequest *param_1,_func_uint_void_ptr_uint_uint_void_ptr *param_2,
                 void *param_3,int *param_4,_func_uint_void_ptr_uint_uint_void_ptr *param_5,
                 void *param_6)

{
  bool bVar1;
  int iVar2;
  CURLRaii aCStack_10 [8];
  
  cocos2d::extension::CURLRaii::CURLRaii(aCStack_10);
  iVar2 = cocos2d::extension::CURLRaii::init(aCStack_10,param_1,param_2,param_3,param_5,param_6);
  if (((iVar2 == 0) ||
      (bVar1 = cocos2d::extension::CURLRaii::setOption<bool>(aCStack_10,0x34,1), !bVar1)) ||
     (iVar2 = cocos2d::extension::CURLRaii::perform(aCStack_10,param_4), iVar2 == 0)) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  cocos2d::extension::CURLRaii::~CURLRaii(aCStack_10);
  return !bVar1;
}

// ---- FUN_00468808  @ 0x468808
bool FUN_00468808(CCHttpRequest *param_1,_func_uint_void_ptr_uint_uint_void_ptr *param_2,
                 void *param_3,int *param_4,_func_uint_void_ptr_uint_uint_void_ptr *param_5,
                 void *param_6)

{
  bool bVar1;
  int iVar2;
  undefined4 uVar3;
  CURLRaii aCStack_10 [8];
  
  cocos2d::extension::CURLRaii::CURLRaii(aCStack_10);
  iVar2 = cocos2d::extension::CURLRaii::init(aCStack_10,param_1,param_2,param_3,param_5,param_6);
  if ((iVar2 != 0) &&
     (bVar1 = cocos2d::extension::CURLRaii::setOption<int>(aCStack_10,0x2f,1), bVar1)) {
    uVar3 = cocos2d::extension::CCHttpRequest::getRequestData(param_1);
    bVar1 = cocos2d::extension::CURLRaii::setOption<char*>(aCStack_10,0x271f,uVar3);
    if (bVar1) {
      uVar3 = cocos2d::extension::CCHttpRequest::getRequestDataSize(param_1);
      bVar1 = cocos2d::extension::CURLRaii::setOption<int>(aCStack_10,0x3c,uVar3);
      if ((bVar1) && (iVar2 = cocos2d::extension::CURLRaii::perform(aCStack_10,param_4), iVar2 != 0)
         ) {
        bVar1 = true;
        goto LAB_00468896;
      }
    }
  }
  bVar1 = false;
LAB_00468896:
  cocos2d::extension::CURLRaii::~CURLRaii(aCStack_10);
  return !bVar1;
}

// ---- FUN_004688c8  @ 0x4688c8
bool FUN_004688c8(CCHttpRequest *param_1,_func_uint_void_ptr_uint_uint_void_ptr *param_2,
                 void *param_3,int *param_4,_func_uint_void_ptr_uint_uint_void_ptr *param_5,
                 void *param_6)

{
  bool bVar1;
  int iVar2;
  undefined4 uVar3;
  CURLRaii aCStack_10 [8];
  
  cocos2d::extension::CURLRaii::CURLRaii(aCStack_10);
  iVar2 = cocos2d::extension::CURLRaii::init(aCStack_10,param_1,param_2,param_3,param_5,param_6);
  if ((iVar2 != 0) &&
     (bVar1 = cocos2d::extension::CURLRaii::setOption<char_const*>(aCStack_10,0x2734,&DAT_007f0c24),
     bVar1)) {
    uVar3 = cocos2d::extension::CCHttpRequest::getRequestData(param_1);
    bVar1 = cocos2d::extension::CURLRaii::setOption<char*>(aCStack_10,0x271f,uVar3);
    if (bVar1) {
      uVar3 = cocos2d::extension::CCHttpRequest::getRequestDataSize(param_1);
      bVar1 = cocos2d::extension::CURLRaii::setOption<int>(aCStack_10,0x3c,uVar3);
      if ((bVar1) && (iVar2 = cocos2d::extension::CURLRaii::perform(aCStack_10,param_4), iVar2 != 0)
         ) {
        bVar1 = true;
        goto LAB_0046895c;
      }
    }
  }
  bVar1 = false;
LAB_0046895c:
  cocos2d::extension::CURLRaii::~CURLRaii(aCStack_10);
  return !bVar1;
}

// ---- FUN_00468994  @ 0x468994
bool FUN_00468994(CCHttpRequest *param_1,_func_uint_void_ptr_uint_uint_void_ptr *param_2,
                 void *param_3,int *param_4,_func_uint_void_ptr_uint_uint_void_ptr *param_5,
                 void *param_6)

{
  bool bVar1;
  int iVar2;
  CURLRaii aCStack_10 [8];
  
  cocos2d::extension::CURLRaii::CURLRaii(aCStack_10);
  iVar2 = cocos2d::extension::CURLRaii::init(aCStack_10,param_1,param_2,param_3,param_5,param_6);
  if ((((iVar2 == 0) ||
       (bVar1 = cocos2d::extension::CURLRaii::setOption<char_const*>(aCStack_10,0x2734,"DELETE"),
       !bVar1)) ||
      (bVar1 = cocos2d::extension::CURLRaii::setOption<bool>(aCStack_10,0x34,1), !bVar1)) ||
     (iVar2 = cocos2d::extension::CURLRaii::perform(aCStack_10,param_4), iVar2 == 0)) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  cocos2d::extension::CURLRaii::~CURLRaii(aCStack_10);
  return !bVar1;
}

// ---- FUN_0046990c  @ 0x46990c
void FUN_0046990c(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  undefined4 uVar2;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_0095391c,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_00953924,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    uVar2 = 0;
    cocos2d::CCRect::CCRect((CCRect *)&DAT_0095392c,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
    FUN_00798644(&DAT_0095393c);
    FUN_007985bc(&DAT_0095393c,0x798b71,&DAT_00943000,&DAT_00943000,uVar2);
  }
  return;
}

// ---- FUN_0046af8c  @ 0x46af8c
void FUN_0046af8c(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  undefined4 uVar2;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_00953a68,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_00953a70,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    uVar2 = 0;
    cocos2d::CCRect::CCRect((CCRect *)&DAT_00953a78,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
    FUN_00798644(&DAT_00953a88);
    FUN_007985bc(&DAT_00953a88,0x798b71,&DAT_00943000,&DAT_00943000,uVar2);
  }
  return;
}

// ---- FUN_0046d448  @ 0x46d448
void FUN_0046d448(int param_1,int param_2)

{
  if ((param_1 == 1) && (param_2 == 0xffff)) {
    RakNet::SystemAddress::SystemAddress((SystemAddress *)&DAT_00953a90);
    RakNet::RakNetGUID::RakNetGUID((RakNetGUID *)&DAT_00953aa8,0xffffffffffffffff);
  }
  return;
}

// ---- FUN_0046d664  @ 0x46d664
int FUN_0046d664(int param_1)

{
  if (param_1 < 0) {
    param_1 = -param_1;
  }
  return param_1;
}

// ---- FUN_0046dfe0  @ 0x46dfe0
void FUN_0046dfe0(int param_1,int param_2)

{
  if ((param_1 == 1) && (param_2 == 0xffff)) {
    RakNet::SystemAddress::SystemAddress((SystemAddress *)&DAT_00953ac0);
    RakNet::RakNetGUID::RakNetGUID((RakNetGUID *)&DAT_00953ad8,0xffffffffffffffff);
  }
  return;
}

// ---- FUN_0046f838  @ 0x46f838
void FUN_0046f838(int param_1,int param_2)

{
  if ((param_1 == 1) && (param_2 == 0xffff)) {
    RakNet::SystemAddress::SystemAddress((SystemAddress *)&DAT_00953ae8);
    RakNet::RakNetGUID::RakNetGUID((RakNetGUID *)&DAT_00953b00,0xffffffffffffffff);
  }
  return;
}
