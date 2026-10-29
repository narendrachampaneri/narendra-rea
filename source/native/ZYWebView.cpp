// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 8 functions

// ---- ZYWebView::ZYWebView  @ 0x438c94
/* ZYWebView::ZYWebView() */

ZYWebView * __thiscall ZYWebView::ZYWebView(ZYWebView *this)

{
  cocos2d::CCObject::CCObject((CCObject *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_0091e2b0;
  return this;
}

// ---- ZYWebView::init  @ 0x438cc0
/* ZYWebView::init() */

undefined4 ZYWebView::init(void)

{
  return 1;
}

// ---- ZYWebView::showWebView  @ 0x438ccc
/* ZYWebView::showWebView(char const*, float, float, float, float) */

void ZYWebView::showWebView(char *param_1,float param_2,float param_3,float param_4,float param_5)

{
  int *piVar1;
  CCSize *pCVar2;
  CCEGLViewProtocol *pCVar3;
  char *in_r1;
  float extraout_s0;
  undefined8 uVar4;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  CCSize local_28 [8];
  CCSize local_20 [8];
  CCSize local_18 [8];
  CCPoint local_10 [12];
  
  piVar1 = (int *)cocos2d::CCEGLView::sharedOpenGLView();
  pCVar2 = (CCSize *)(**(code **)(*piVar1 + 0x2c))(piVar1);
  cocos2d::CCSize::CCSize(local_28,pCVar2);
  piVar1 = (int *)cocos2d::CCEGLView::sharedOpenGLView();
  pCVar2 = (CCSize *)(**(code **)(*piVar1 + 0x18))(piVar1);
  cocos2d::CCSize::CCSize(local_20,pCVar2);
  pCVar3 = (CCEGLViewProtocol *)cocos2d::CCEGLView::sharedOpenGLView();
  cocos2d::CCEGLViewProtocol::getScaleX(pCVar3);
  pCVar3 = (CCEGLViewProtocol *)cocos2d::CCEGLView::sharedOpenGLView();
  uVar4 = cocos2d::CCEGLViewProtocol::getScaleY(pCVar3);
  uVar4 = cocos2d::CCSize::CCSize(local_18,(float)uVar4,(float)((ulonglong)uVar4 >> 0x20));
  cocos2d::CCPoint::CCPoint(local_10,(float)uVar4,(float)((ulonglong)uVar4 >> 0x20));
  _privateShowWebView((ZYWebView *)param_1,in_r1,extraout_s0,extraout_s1,extraout_s2,extraout_s3);
  return;
}

// ---- ZYWebView::~ZYWebView  @ 0x443e68
/* WARNING: Removing unreachable block (ram,0x00443e90) */
/* ZYWebView::~ZYWebView() */

ZYWebView * __thiscall ZYWebView::~ZYWebView(ZYWebView *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_0091e2b0;
  removeWebView();
  cocos2d::CCObject::~CCObject((CCObject *)this);
  return this;
}

// ---- ZYWebView::~ZYWebView  @ 0x443ea8
/* ZYWebView::~ZYWebView() */

ZYWebView * __thiscall ZYWebView::~ZYWebView(ZYWebView *this)

{
  ~ZYWebView(this);
  operator_delete(this);
  return this;
}

// ---- ZYWebView::_privateShowWebView  @ 0x443f2c
/* ZYWebView::_privateShowWebView(char const*, float, float, float, float) */

void __thiscall
ZYWebView::_privateShowWebView
          (ZYWebView *this,char *param_1,float param_2,float param_3,float param_4,float param_5)

{
  char cVar1;
  _jmethodID *p_Var2;
  undefined4 uVar3;
  float in_r2;
  float in_r3;
  float in_stack_00000000;
  float in_stack_00000004;
  _jobject *local_14 [2];
  undefined4 local_c;
  
  p_Var2 = (_jmethodID *)getZYWebView();
  cVar1 = cocos2d::JniHelper::getMethodInfo
                    ((JniMethodInfo_ *)local_14,kZYWebViewJNIPakageName,"displayWebView","(IIII)V");
  if (cVar1 == '\x01') {
    _JNIEnv::CallVoidMethod
              (local_14[0],p_Var2,local_c,(int)in_r2,(int)in_r3,(int)in_stack_00000000,
               (int)in_stack_00000004);
    cocos2d::JniHelper::logAndClearExceptions((_JNIEnv *)local_14[0]);
  }
  cVar1 = cocos2d::JniHelper::getMethodInfo
                    ((JniMethodInfo_ *)local_14,kZYWebViewJNIPakageName,"updateURL",
                     "(Ljava/lang/String;)V");
  if (cVar1 == '\x01') {
    uVar3 = _JNIEnv::NewStringUTF((_JNIEnv *)local_14[0],param_1);
    _JNIEnv::CallVoidMethod(local_14[0],p_Var2,local_c,uVar3);
    cocos2d::JniHelper::logAndClearExceptions((_JNIEnv *)local_14[0]);
  }
  return;
}

// ---- ZYWebView::updateURL  @ 0x444040
/* ZYWebView::updateURL(char const*) */

void __thiscall ZYWebView::updateURL(ZYWebView *this,char *param_1)

{
  char cVar1;
  _jmethodID *p_Var2;
  undefined4 uVar3;
  _JNIEnv *local_14 [2];
  undefined4 local_c;
  
  p_Var2 = (_jmethodID *)getZYWebView();
  cVar1 = cocos2d::JniHelper::getMethodInfo
                    ((JniMethodInfo_ *)local_14,kZYWebViewJNIPakageName,"updateURL",
                     "(Ljava/lang/String;)V");
  if (cVar1 == '\x01') {
    uVar3 = _JNIEnv::NewStringUTF(local_14[0],param_1);
    _JNIEnv::CallVoidMethod((_jobject *)local_14[0],p_Var2,local_c,uVar3,param_1,this);
    cocos2d::JniHelper::logAndClearExceptions(local_14[0]);
  }
  return;
}

// ---- ZYWebView::removeWebView  @ 0x4440bc
/* ZYWebView::removeWebView() */

void ZYWebView::removeWebView(void)

{
  char cVar1;
  _jmethodID *p_Var2;
  _jobject *local_14 [2];
  undefined4 local_c;
  
  p_Var2 = (_jmethodID *)getZYWebView();
  if (p_Var2 != (_jmethodID *)0x0) {
    cVar1 = cocos2d::JniHelper::getMethodInfo
                      ((JniMethodInfo_ *)local_14,kZYWebViewJNIPakageName,"removeWebView","()V");
    if (cVar1 == '\x01') {
      _JNIEnv::CallVoidMethod(local_14[0],p_Var2,local_c);
      cocos2d::JniHelper::logAndClearExceptions((_JNIEnv *)local_14[0]);
    }
  }
  return;
}
