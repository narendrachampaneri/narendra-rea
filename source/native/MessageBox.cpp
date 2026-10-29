// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 7 functions

// ---- MessageBox::MessageBox  @ 0x435a10
/* MessageBox::MessageBox() */

MessageBox * __thiscall MessageBox::MessageBox(MessageBox *this)

{
  cocos2d::CCObject::CCObject((CCObject *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_0091ded8;
  *(undefined4 *)(this + 0x14) = 0;
  *(undefined4 *)(this + 0x18) = 0;
  *(undefined4 *)(this + 0x1c) = 0;
  return this;
}

// ---- MessageBox::~MessageBox  @ 0x435a50
/* WARNING: Removing unreachable block (ram,0x00435a72) */
/* MessageBox::~MessageBox() */

MessageBox * __thiscall MessageBox::~MessageBox(MessageBox *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_0091ded8;
  cocos2d::CCObject::~CCObject((CCObject *)this);
  return this;
}

// ---- MessageBox::~MessageBox  @ 0x435a8c
/* MessageBox::~MessageBox() */

MessageBox * __thiscall MessageBox::~MessageBox(MessageBox *this)

{
  ~MessageBox(this);
  operator_delete(this);
  return this;
}

// ---- MessageBox::showAlert  @ 0x435aa8
/* MessageBox::showAlert(void (*)(int, cocos2d::CCObject*, cocos2d::CCObject*), char const*, char
   const*, cocos2d::CCArray*) */

void MessageBox::showAlert
               (_func_void_int_CCObject_ptr_CCObject_ptr *param_1,char *param_2,char *param_3,
               CCArray *param_4)

{
  showAlert(param_1,param_2,param_3,param_4,(CCObject *)0x0,(CCObject *)0x0);
  return;
}

// ---- MessageBox::showAlert  @ 0x435ad0
/* MessageBox::showAlert(void (*)(int, cocos2d::CCObject*, cocos2d::CCObject*), char const*, char
   const*, cocos2d::CCArray*, cocos2d::CCObject*) */

void MessageBox::showAlert
               (_func_void_int_CCObject_ptr_CCObject_ptr *param_1,char *param_2,char *param_3,
               CCArray *param_4,CCObject *param_5)

{
  showAlert(param_1,param_2,param_3,param_4,param_5,(CCObject *)0x0);
  return;
}

// ---- MessageBox::alertCallback  @ 0x435af8
/* MessageBox::alertCallback(int) */

void __thiscall MessageBox::alertCallback(MessageBox *this,int param_1)

{
  if (*(int *)(this + 0x1c) != 0) {
    (**(code **)(this + 0x1c))(param_1,*(undefined4 *)(this + 0x14),*(undefined4 *)(this + 0x18));
  }
  if (*(int *)(this + 0x14) != 0) {
    cocos2d::CCObject::release(*(CCObject **)(this + 0x14));
  }
  if (*(int *)(this + 0x18) != 0) {
    cocos2d::CCObject::release(*(CCObject **)(this + 0x18));
  }
  cocos2d::CCObject::autorelease((CCObject *)this);
  return;
}

// ---- MessageBox::showAlert  @ 0x443b14
/* MessageBox::showAlert(void (*)(int, cocos2d::CCObject*, cocos2d::CCObject*), char const*, char
   const*, cocos2d::CCArray*, cocos2d::CCObject*, cocos2d::CCObject*) */

void MessageBox::showAlert
               (_func_void_int_CCObject_ptr_CCObject_ptr *param_1,char *param_2,char *param_3,
               CCArray *param_4,CCObject *param_5,CCObject *param_6)

{
  MessageBox *this;
  
  this = operator_new(0x20);
  MessageBox(this);
  *(_func_void_int_CCObject_ptr_CCObject_ptr **)(this + 0x1c) = param_1;
  *(CCObject **)(this + 0x14) = param_5;
  *(CCObject **)(this + 0x18) = param_6;
  if (param_5 != (CCObject *)0x0) {
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x14));
  }
  if (param_6 != (CCObject *)0x0) {
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x18));
  }
  alertCallback(this,0);
  return;
}
