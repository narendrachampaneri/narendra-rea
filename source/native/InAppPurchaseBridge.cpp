// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 10 functions

// ---- InAppPurchaseBridge::restore  @ 0x441634
/* InAppPurchaseBridge::restore() */

void InAppPurchaseBridge::restore(void)

{
  IapManager *this;
  
  this = (IapManager *)IapManager::sharedIapManager();
  IapManager::restore(this,true);
  return;
}

// ---- InAppPurchaseBridge::purchaseProduct  @ 0x441648
/* InAppPurchaseBridge::purchaseProduct(std::string) */

void InAppPurchaseBridge::purchaseProduct(undefined4 param_1)

{
  IapManager *pIVar1;
  undefined1 auStack_c [4];
  
  pIVar1 = (IapManager *)IapManager::sharedIapManager();
  FUN_007c64e8(auStack_c,param_1);
  IapManager::purchaseProduct(pIVar1,auStack_c);
  FUN_007c5914(auStack_c);
  return;
}

// ---- InAppPurchaseBridge::purchaseProductInGame  @ 0x441684
/* InAppPurchaseBridge::purchaseProductInGame(std::string) */

void InAppPurchaseBridge::purchaseProductInGame(undefined4 param_1)

{
  int iVar1;
  IapManager *pIVar2;
  NetworkManager *pNVar3;
  CCDirector *this;
  CCScene *pCVar4;
  float fVar5;
  undefined1 auStack_14 [8];
  
  iVar1 = ApplicationInterface::requiresClaimedIdentity();
  if (iVar1 == 0) {
    pIVar2 = (IapManager *)IapManager::sharedIapManager();
    FUN_007c64e8(auStack_14,param_1);
    IapManager::purchaseProduct(pIVar2,auStack_14);
    FUN_007c5914(auStack_14);
  }
  else {
    iVar1 = ApplicationInterface::hasClaimedIdentity();
    if (iVar1 == 0) {
      pNVar3 = (NetworkManager *)NetworkManager::sharedNetworkManager();
      NetworkManager::setInGame(pNVar3,false);
      pNVar3 = (NetworkManager *)NetworkManager::sharedNetworkManager();
      NetworkManager::endMatch(pNVar3);
      Sound::playSound(sndEng,0xd);
      this = (CCDirector *)cocos2d::CCDirector::sharedDirector();
      pCVar4 = DAT_00943750;
      fVar5 = (float)PurchaseLayer::scene();
      pCVar4 = (CCScene *)cocos2d::CCTransitionSlideInL::create(fVar5,pCVar4);
      cocos2d::CCDirector::replaceScene(this,pCVar4);
    }
    else {
      pIVar2 = (IapManager *)IapManager::sharedIapManager();
      FUN_007c64e8(auStack_14,param_1);
      IapManager::purchaseProduct(pIVar2,auStack_14);
      FUN_007c5914(auStack_14);
    }
  }
  return;
}

// ---- InAppPurchaseBridge::isProductPurchased  @ 0x441760
/* InAppPurchaseBridge::isProductPurchased(std::string) */

undefined4 InAppPurchaseBridge::isProductPurchased(undefined4 param_1)

{
  IapManager *pIVar1;
  undefined4 uVar2;
  undefined1 auStack_c [4];
  
  pIVar1 = (IapManager *)IapManager::sharedIapManager();
  FUN_007c64e8(auStack_c,param_1);
  uVar2 = IapManager::isProductPurchased(pIVar1,auStack_c);
  FUN_007c5914(auStack_c);
  return uVar2;
}

// ---- InAppPurchaseBridge::readyToSignIn  @ 0x4417a4
/* InAppPurchaseBridge::readyToSignIn() */

undefined4 InAppPurchaseBridge::readyToSignIn(void)

{
  undefined4 uVar1;
  
  uVar1 = readyToPurchase();
  return uVar1;
}

// ---- InAppPurchaseBridge::readyToPurchase  @ 0x4417b0
/* InAppPurchaseBridge::readyToPurchase() */

byte InAppPurchaseBridge::readyToPurchase(void)

{
  byte bVar1;
  char cVar2;
  int iVar3;
  _jclass *local_14;
  _jmethodID *local_10;
  undefined4 local_c;
  
  bVar1 = cocos2d::JniHelper::getStaticMethodInfo
                    ((JniMethodInfo_ *)&local_14,"com/appsomniacs/da2/DA2Activity",
                     "isBillingMechanismReady","()Z");
  bVar1 = bVar1 ^ 1;
  if (bVar1 == 0) {
    cVar2 = _JNIEnv::CallStaticBooleanMethod(local_14,local_10,local_c);
    cocos2d::JniHelper::logAndClearExceptions((_JNIEnv *)local_14);
    if ((cVar2 == '\0') || (iVar3 = ApplicationInterface::hasClaimedIdentity(), iVar3 == 0)) {
      bVar1 = 0;
    }
    else {
      bVar1 = 1;
    }
  }
  return bVar1;
}

// ---- InAppPurchaseBridge::hasPendingTransactions  @ 0x44183c
/* InAppPurchaseBridge::hasPendingTransactions() */

byte InAppPurchaseBridge::hasPendingTransactions(void)

{
  byte bVar1;
  char cVar2;
  _jclass *local_14;
  _jmethodID *local_10;
  undefined4 local_c;
  
  bVar1 = cocos2d::JniHelper::getStaticMethodInfo
                    ((JniMethodInfo_ *)&local_14,"com/appsomniacs/da2/DA2Activity",
                     "isIapOperationPending","()Z");
  bVar1 = bVar1 ^ 1;
  if (bVar1 == 0) {
    cVar2 = _JNIEnv::CallStaticBooleanMethod(local_14,local_10,local_c);
    bVar1 = cVar2 != '\0';
    cocos2d::JniHelper::logAndClearExceptions((_JNIEnv *)local_14);
  }
  return bVar1;
}

// ---- InAppPurchaseBridge::canMakePurchases  @ 0x4418b4
/* InAppPurchaseBridge::canMakePurchases() */

byte InAppPurchaseBridge::canMakePurchases(void)

{
  byte bVar1;
  char cVar2;
  int iVar3;
  _jclass *local_14;
  _jmethodID *local_10;
  undefined4 local_c;
  
  bVar1 = cocos2d::JniHelper::getStaticMethodInfo
                    ((JniMethodInfo_ *)&local_14,"com/appsomniacs/da2/DA2Activity",
                     "isBillingPossible","()Z");
  bVar1 = bVar1 ^ 1;
  if (bVar1 == 0) {
    cVar2 = _JNIEnv::CallStaticBooleanMethod(local_14,local_10,local_c);
    cocos2d::JniHelper::logAndClearExceptions((_JNIEnv *)local_14);
    if ((cVar2 != '\0') && (iVar3 = ApplicationInterface::hasClaimedIdentity(), iVar3 != 0)) {
      NetworkManager::sharedNetworkManager();
      iVar3 = NetworkManager::hasCompletedSessionRequest();
      if (iVar3 != 0) {
        return 1;
      }
    }
    bVar1 = 0;
  }
  return bVar1;
}

// ---- InAppPurchaseBridge::showPurchaseStatusAlert  @ 0x441a1c
/* InAppPurchaseBridge::showPurchaseStatusAlert() */

void InAppPurchaseBridge::showPurchaseStatusAlert(void)

{
  int iVar1;
  undefined4 uVar2;
  CCObject *pCVar3;
  undefined1 auStack_24 [4];
  undefined1 auStack_20 [4];
  undefined1 auStack_1c [4];
  undefined1 auStack_18 [4];
  string asStack_14 [4];
  undefined1 auStack_10 [4];
  undefined1 auStack_c [4];
  
  getBillingSystemStatusMessage();
  iVar1 = FUN_007c505c(auStack_18);
  if (iVar1 != 0) {
    FUN_0079a3f4(auStack_20);
    FUN_007c6a60(auStack_10,"In App Purchases Disabled",auStack_20);
    uVar2 = FUN_007c5300(auStack_18);
    FUN_0079a3f4(auStack_1c);
    FUN_007c6a60(auStack_c,uVar2,auStack_1c);
    FUN_0079a3f4(auStack_24);
    FUN_007c6a60(asStack_14,&DAT_007ee400,auStack_24);
    pCVar3 = (CCObject *)cocos2d::CCString::create(asStack_14);
    uVar2 = cocos2d::CCArray::create(pCVar3,0);
    AMessageBox::showAlert(0,auStack_10,auStack_c,uVar2,0,0);
    FUN_007c5914(asStack_14);
    FUN_0079a3fc(auStack_24);
    FUN_007c5914(auStack_c);
    FUN_0079a3fc(auStack_1c);
    FUN_007c5914(auStack_10);
    FUN_0079a3fc(auStack_20);
  }
  FUN_007c5914(auStack_18);
  return;
}

// ---- InAppPurchaseBridge::getProductPrice  @ 0x441b44
/* InAppPurchaseBridge::getProductPrice(std::string) */

InAppPurchaseBridge * __thiscall
InAppPurchaseBridge::getProductPrice(InAppPurchaseBridge *this,undefined4 param_2)

{
  _JNIEnv *this_00;
  char cVar1;
  int iVar2;
  char *pcVar3;
  JniHelper aJStack_20 [4];
  undefined4 local_1c;
  _jstring *local_18;
  _JNIEnv *local_14;
  _jmethodID *local_10;
  undefined4 local_c;
  
  cVar1 = cocos2d::JniHelper::getStaticMethodInfo
                    ((JniMethodInfo_ *)&local_14,"com/appsomniacs/da2/DA2Activity",
                     "getLocalizedPurchasePrice","(Ljava/lang/String;)Ljava/lang/String;");
  if (cVar1 == '\x01') {
    iVar2 = FUN_007c505c(param_2);
    this_00 = local_14;
    if (iVar2 == 0) {
      local_1c = _JNIEnv::NewStringUTF(local_14,"");
    }
    else {
      pcVar3 = (char *)FUN_007c5300(param_2);
      local_1c = _JNIEnv::NewStringUTF(this_00,pcVar3);
    }
    local_18 = (_jstring *)
               _JNIEnv::CallStaticObjectMethod((_jclass *)local_14,local_10,local_c,local_1c);
    cocos2d::JniHelper::jstring2string(aJStack_20,local_18);
    FUN_002eb49c(local_14,local_18);
    FUN_002eb49c(local_14,local_1c);
    cocos2d::JniHelper::logAndClearExceptions(local_14);
    FUN_007c51c0(this,aJStack_20);
    FUN_007c5914(aJStack_20);
  }
  else {
    FUN_0079a3f4(aJStack_20);
    FUN_007c6a60(this,&DAT_007ee448,aJStack_20);
    FUN_0079a3fc(aJStack_20);
  }
  return this;
}
