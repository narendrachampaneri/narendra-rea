// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 9 functions

// ---- ApplicationManager::ApplicationManager  @ 0x4313b8
/* ApplicationManager::ApplicationManager() */

ApplicationManager * __thiscall ApplicationManager::ApplicationManager(ApplicationManager *this)

{
  cocos2d::CCNode::CCNode((CCNode *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_0091db78;
  return this;
}

// ---- ApplicationManager::~ApplicationManager  @ 0x4313e4
/* WARNING: Removing unreachable block (ram,0x00431406) */
/* ApplicationManager::~ApplicationManager() */

ApplicationManager * __thiscall ApplicationManager::~ApplicationManager(ApplicationManager *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_0091db78;
  cocos2d::CCNode::~CCNode((CCNode *)this);
  return this;
}

// ---- ApplicationManager::~ApplicationManager  @ 0x431420
/* ApplicationManager::~ApplicationManager() */

ApplicationManager * __thiscall ApplicationManager::~ApplicationManager(ApplicationManager *this)

{
  ~ApplicationManager(this);
  operator_delete(this);
  return this;
}

// ---- ApplicationManager::sharedApplicationManager  @ 0x4330b4
/* ApplicationManager::sharedApplicationManager() */

ApplicationManager * ApplicationManager::sharedApplicationManager(void)

{
  ApplicationManager *this;
  
  if (m_pInstance == (ApplicationManager *)0x0) {
    this = operator_new(0xec);
    ApplicationManager(this);
    m_pInstance = this;
    (**(code **)(*(int *)this + 0x18))(this);
  }
  return m_pInstance;
}

// ---- ApplicationManager::init  @ 0x433110
/* ApplicationManager::init() */

bool __thiscall ApplicationManager::init(ApplicationManager *this)

{
  char cVar1;
  
  cVar1 = cocos2d::CCNode::init();
  if (cVar1 == '\x01') {
    this[0xe4] = (ApplicationManager)0x0;
    this[0xe5] = (ApplicationManager)0x0;
    *(undefined4 *)(this + 0xe8) = 0;
  }
  return cVar1 == '\x01';
}

// ---- ApplicationManager::updateStep  @ 0x433154
/* ApplicationManager::updateStep(float) */

float __thiscall ApplicationManager::updateStep(ApplicationManager *this,float param_1)

{
  CCDirector *this_00;
  float in_r1;
  
  if (this[0xe5] != (ApplicationManager)0x0) {
    *(float *)(this + 0xe8) = *(float *)(this + 0xe8) + in_r1;
    if (0.5 < *(float *)(this + 0xe8)) {
      this[0xe5] = (ApplicationManager)0x0;
      *(undefined4 *)(this + 0xe8) = 0;
      this_00 = (CCDirector *)cocos2d::CCDirector::sharedDirector();
      param_1 = (float)cocos2d::CCDirector::pause(this_00);
    }
  }
  return param_1;
}

// ---- ApplicationManager::showVideoInterfaceAlert  @ 0x4331b4
/* ApplicationManager::showVideoInterfaceAlert() */

void __thiscall ApplicationManager::showVideoInterfaceAlert(ApplicationManager *this)

{
  CCObject *pCVar1;
  undefined4 uVar2;
  undefined1 auStack_28 [4];
  undefined1 auStack_24 [4];
  undefined1 auStack_20 [4];
  string asStack_1c [4];
  undefined1 auStack_18 [4];
  undefined1 auStack_14 [8];
  
  FUN_0079a3f4(auStack_24);
  FUN_007c6a60(auStack_18,"Game Paused",auStack_24);
  FUN_0079a3f4(auStack_20);
  FUN_007c6a60(auStack_14,"Press OK to continue.",auStack_20);
  FUN_0079a3f4(auStack_28);
  FUN_007c6a60(asStack_1c,&DAT_007ec38c,auStack_28);
  pCVar1 = (CCObject *)cocos2d::CCString::create(asStack_1c);
  uVar2 = cocos2d::CCArray::create(pCVar1,0);
  AMessageBox::showAlert(0x4332dd,auStack_18,auStack_14,uVar2,0,this);
  FUN_007c5914(asStack_1c);
  FUN_0079a3fc(auStack_28);
  FUN_007c5914(auStack_14);
  FUN_0079a3fc(auStack_20);
  FUN_007c5914(auStack_18);
  FUN_0079a3fc(auStack_24);
  this[0xe5] = (ApplicationManager)0x1;
  return;
}

// ---- ApplicationManager::videoMessageBoxHandler  @ 0x4332c0
/* ApplicationManager::videoMessageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*) */

void ApplicationManager::videoMessageBoxHandler(int param_1,CCObject *param_2,CCObject *param_3)

{
  if (param_1 == 0) {
    ApplicationInterface::stopVideoRecording();
  }
  return;
}

// ---- ApplicationManager::videoInterfaceMessageBoxHandler  @ 0x4332dc
/* ApplicationManager::videoInterfaceMessageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)
    */

void ApplicationManager::videoInterfaceMessageBoxHandler
               (int param_1,CCObject *param_2,CCObject *param_3)

{
  CCDirector *this;
  
  this = (CCDirector *)cocos2d::CCDirector::sharedDirector();
  cocos2d::CCDirector::resume(this);
  return;
}
