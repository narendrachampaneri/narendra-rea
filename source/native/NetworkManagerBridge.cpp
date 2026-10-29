// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 7 functions

// ---- NetworkManagerBridge::NetworkManagerBridge  @ 0x443c2c
/* NetworkManagerBridge::NetworkManagerBridge() */

NetworkManagerBridge * __thiscall
NetworkManagerBridge::NetworkManagerBridge(NetworkManagerBridge *this)

{
  *(undefined ***)this = &PTR__NetworkManagerBridge_1_0091e298;
  return this;
}

// ---- NetworkManagerBridge::~NetworkManagerBridge  @ 0x443c50
/* WARNING: Removing unreachable block (ram,0x00443c6a) */
/* NetworkManagerBridge::~NetworkManagerBridge() */

NetworkManagerBridge * __thiscall
NetworkManagerBridge::~NetworkManagerBridge(NetworkManagerBridge *this)

{
  *(undefined ***)this = &PTR__NetworkManagerBridge_1_0091e298;
  return this;
}

// ---- NetworkManagerBridge::~NetworkManagerBridge  @ 0x443c84
/* NetworkManagerBridge::~NetworkManagerBridge() */

NetworkManagerBridge * __thiscall
NetworkManagerBridge::~NetworkManagerBridge(NetworkManagerBridge *this)

{
  ~NetworkManagerBridge(this);
  operator_delete(this);
  return this;
}

// ---- NetworkManagerBridge::startReachability  @ 0x443ca0
/* NetworkManagerBridge::startReachability() */

void NetworkManagerBridge::startReachability(void)

{
  return;
}

// ---- NetworkManagerBridge::stopReachability  @ 0x443ca8
/* NetworkManagerBridge::stopReachability() */

void NetworkManagerBridge::stopReachability(void)

{
  return;
}

// ---- NetworkManagerBridge::isInternetReachable  @ 0x443cb0
/* NetworkManagerBridge::isInternetReachable() */

bool NetworkManagerBridge::isInternetReachable(void)

{
  char cVar1;
  bool bVar2;
  _jclass *local_14;
  _jmethodID *local_10;
  undefined4 local_c;
  
  cVar1 = cocos2d::JniHelper::getStaticMethodInfo
                    ((JniMethodInfo_ *)&local_14,"com/appsomniacs/da2/DA2Activity","isConnected",
                     "()Z");
  if (cVar1 == '\x01') {
    cVar1 = _JNIEnv::CallStaticBooleanMethod(local_14,local_10,local_c);
    bVar2 = cVar1 != '\0';
    cocos2d::JniHelper::logAndClearExceptions((_JNIEnv *)local_14);
  }
  else {
    bVar2 = false;
  }
  return bVar2;
}

// ---- NetworkManagerBridge::notifySessionRequestCompleted  @ 0x443d2c
/* NetworkManagerBridge::notifySessionRequestCompleted(bool) */

void __thiscall
NetworkManagerBridge::notifySessionRequestCompleted(NetworkManagerBridge *this,bool param_1)

{
  char cVar1;
  _jclass *local_14;
  _jmethodID *local_10;
  undefined4 local_c;
  
  cVar1 = cocos2d::JniHelper::getStaticMethodInfo
                    ((JniMethodInfo_ *)&local_14,"com/appsomniacs/da2/DA2Activity",
                     "sessionRequestCompleted","(Z)V");
  if (cVar1 == '\x01') {
    _JNIEnv::CallStaticVoidMethod(local_14,local_10,local_c,(uint)param_1);
    cocos2d::JniHelper::logAndClearExceptions((_JNIEnv *)local_14);
  }
  return;
}
