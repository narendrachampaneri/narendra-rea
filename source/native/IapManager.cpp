// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 12 functions

// ---- IapManager::IapManager  @ 0x43da8c
/* IapManager::IapManager() */

IapManager * __thiscall IapManager::IapManager(IapManager *this)

{
  cocos2d::CCNode::CCNode((CCNode *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_0091e0e0;
  return this;
}

// ---- IapManager::~IapManager  @ 0x43dab8
/* WARNING: Removing unreachable block (ram,0x0043dada) */
/* IapManager::~IapManager() */

IapManager * __thiscall IapManager::~IapManager(IapManager *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_0091e0e0;
  cocos2d::CCNode::~CCNode((CCNode *)this);
  return this;
}

// ---- IapManager::~IapManager  @ 0x43daf4
/* IapManager::~IapManager() */

IapManager * __thiscall IapManager::~IapManager(IapManager *this)

{
  ~IapManager(this);
  operator_delete(this);
  return this;
}

// ---- IapManager::sharedIapManager  @ 0x43de34
/* IapManager::sharedIapManager() */

IapManager * IapManager::sharedIapManager(void)

{
  IapManager *this;
  
  if (m_pInstance == (IapManager *)0x0) {
    this = operator_new(0xe4);
    IapManager(this);
    m_pInstance = this;
    (**(code **)(*(int *)this + 0x18))(this);
  }
  return m_pInstance;
}

// ---- IapManager::init  @ 0x43de90
/* IapManager::init() */

undefined4 __thiscall IapManager::init(IapManager *this)

{
  char cVar1;
  CCUserDefault *this_00;
  char *pcVar2;
  int iVar3;
  int *piVar4;
  _func_void_float *p_Var5;
  undefined4 uVar6;
  float extraout_s0;
  float extraout_s1;
  
  cVar1 = cocos2d::CCNode::init();
  if (cVar1 == '\x01') {
    initPurchasedSkusLookup((map *)m_purchasedSkus);
    this_00 = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
    pcVar2 = (char *)FUN_007c5300(&m_hasPreviousValidatedPurchaseStringKey);
    iVar3 = cocos2d::CCUserDefault::getBoolForKey(this_00,pcVar2,false);
    if (iVar3 != 0) {
      bRequiresIapValidationRetry = 1;
    }
    piVar4 = (int *)cocos2d::CCDirector::sharedDirector();
    p_Var5 = (_func_void_float *)(**(code **)(*piVar4 + 0x30))(piVar4);
    cocos2d::CCScheduler::scheduleSelector
              (p_Var5,(CCObject *)0x43e911,extraout_s0,0,extraout_s1,SUB41(this,0));
    uVar6 = 1;
  }
  else {
    uVar6 = 0;
  }
  return uVar6;
}

// ---- IapManager::restore  @ 0x43e0e8
/* IapManager::restore(bool) */

void __thiscall IapManager::restore(IapManager *this,bool param_1)

{
  char cVar1;
  int iVar2;
  CCUserDefault *pCVar3;
  char *pcVar4;
  undefined1 auStack_38 [4];
  undefined1 auStack_34 [4];
  undefined1 auStack_30 [3];
  char local_2d;
  bool local_2c [4];
  string asStack_28 [4];
  pair<std::string,bool> apStack_24 [8];
  _jclass *local_1c;
  _jmethodID *local_18;
  undefined4 local_14;
  
  iVar2 = ApplicationInterface::requiresClaimedIdentity();
  if ((iVar2 == 0) || (cVar1 = ApplicationInterface::hasClaimedIdentity(), cVar1 == '\x01')) {
    if (param_1) {
      pCVar3 = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
      pcVar4 = (char *)FUN_007c5300(&m_hasPreviousValidatedPurchaseStringKey);
      iVar2 = cocos2d::CCUserDefault::getBoolForKey(pCVar3,pcVar4,false);
      if (iVar2 != 0) {
        pCVar3 = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
        pcVar4 = (char *)FUN_007c5300(&m_hasPreviousValidatedPurchaseStringKey);
        cocos2d::CCUserDefault::setBoolForKey(pCVar3,pcVar4,false);
      }
      std::
      map<std::string,bool,std::less<std::string>,std::allocator<std::pair<std::string_const,bool>>>
      ::clear((map<std::string,bool,std::less<std::string>,std::allocator<std::pair<std::string_const,bool>>>
               *)m_purchasedSkus);
      FUN_0079a3f4(auStack_30);
      FUN_007c6a60(asStack_28,"com.chadtowns.da2.propack",auStack_30);
      local_2c[0] = false;
      std::pair<std::string,bool>::pair<std::string,bool,void>(apStack_24,asStack_28,local_2c);
      std::
      map<std::string,bool,std::less<std::string>,std::allocator<std::pair<std::string_const,bool>>>
      ::insert<std::pair<std::string,bool>,void>((pair *)&local_1c);
      std::pair<std::string,bool>::~pair(apStack_24);
      FUN_007c5914(asStack_28);
      FUN_0079a3fc(auStack_30);
      FUN_0079a3f4(auStack_30);
      FUN_007c6a60(asStack_28,"com.chadtowns.da2.battlepack1",auStack_30);
      local_2c[0] = false;
      std::pair<std::string,bool>::pair<std::string,bool,void>(apStack_24,asStack_28,local_2c);
      std::
      map<std::string,bool,std::less<std::string>,std::allocator<std::pair<std::string_const,bool>>>
      ::insert<std::pair<std::string,bool>,void>((pair *)&local_1c);
      std::pair<std::string,bool>::~pair(apStack_24);
      FUN_007c5914(asStack_28);
      FUN_0079a3fc(auStack_30);
      FUN_0079a3f4(auStack_30);
      FUN_007c6a60(asStack_28,"com.chadtowns.da2.battlepack2",auStack_30);
      local_2c[0] = false;
      std::pair<std::string,bool>::pair<std::string,bool,void>(apStack_24,asStack_28,local_2c);
      std::
      map<std::string,bool,std::less<std::string>,std::allocator<std::pair<std::string_const,bool>>>
      ::insert<std::pair<std::string,bool>,void>((pair *)&local_1c);
      std::pair<std::string,bool>::~pair(apStack_24);
      FUN_007c5914(asStack_28);
      FUN_0079a3fc(auStack_30);
      FUN_0079a3f4(auStack_30);
      FUN_007c6a60(asStack_28,"com.chadtowns.da2.battlepack3",auStack_30);
      local_2c[0] = false;
      std::pair<std::string,bool>::pair<std::string,bool,void>(apStack_24,asStack_28,local_2c);
      std::
      map<std::string,bool,std::less<std::string>,std::allocator<std::pair<std::string_const,bool>>>
      ::insert<std::pair<std::string,bool>,void>((pair *)&local_1c);
      std::pair<std::string,bool>::~pair(apStack_24);
      FUN_007c5914(asStack_28);
      FUN_0079a3fc(auStack_30);
      FUN_0079a3f4(auStack_30);
      FUN_007c6a60(asStack_28,"com.chadtowns.da2.battlepack4",auStack_30);
      local_2c[0] = false;
      std::pair<std::string,bool>::pair<std::string,bool,void>(apStack_24,asStack_28,local_2c);
      std::
      map<std::string,bool,std::less<std::string>,std::allocator<std::pair<std::string_const,bool>>>
      ::insert<std::pair<std::string,bool>,void>((pair *)&local_1c);
      std::pair<std::string,bool>::~pair(apStack_24);
      FUN_007c5914(asStack_28);
      FUN_0079a3fc(auStack_30);
    }
    FUN_0079a3f4(auStack_34);
    FUN_007c6a60(apStack_24,&DAT_007edc48,auStack_34);
    FUN_0079a3f4(auStack_30);
    FUN_007c6a60(&local_1c,&DAT_007edc48,auStack_30);
    FUN_0079a3f4(auStack_38);
    FUN_007c6a60(local_2c,"com.chadtowns.da2.propack",auStack_38);
    signalValidationOperationStarting(asStack_28,local_2c);
    registerPurchase(this,apStack_24,&local_1c,asStack_28);
    FUN_007c5914(asStack_28);
    FUN_007c5914(local_2c);
    FUN_0079a3fc(auStack_38);
    FUN_007c5914(&local_1c);
    FUN_0079a3fc(auStack_30);
    FUN_007c5914(apStack_24);
    FUN_0079a3fc(auStack_34);
    FUN_0079a3f4(auStack_34);
    FUN_007c6a60(apStack_24,&DAT_007edc48,auStack_34);
    FUN_0079a3f4(auStack_30);
    FUN_007c6a60(&local_1c,&DAT_007edc48,auStack_30);
    FUN_0079a3f4(auStack_38);
    FUN_007c6a60(local_2c,"com.chadtowns.da2.battlepack1",auStack_38);
    signalValidationOperationStarting(asStack_28,local_2c);
    registerPurchase(this,apStack_24,&local_1c,asStack_28);
    FUN_007c5914(asStack_28);
    FUN_007c5914(local_2c);
    FUN_0079a3fc(auStack_38);
    FUN_007c5914(&local_1c);
    FUN_0079a3fc(auStack_30);
    FUN_007c5914(apStack_24);
    FUN_0079a3fc(auStack_34);
    FUN_0079a3f4(auStack_34);
    FUN_007c6a60(apStack_24,&DAT_007edc48,auStack_34);
    FUN_0079a3f4(auStack_30);
    FUN_007c6a60(&local_1c,&DAT_007edc48,auStack_30);
    FUN_0079a3f4(auStack_38);
    FUN_007c6a60(local_2c,"com.chadtowns.da2.battlepack2",auStack_38);
    signalValidationOperationStarting(asStack_28,local_2c);
    registerPurchase(this,apStack_24,&local_1c,asStack_28);
    FUN_007c5914(asStack_28);
    FUN_007c5914(local_2c);
    FUN_0079a3fc(auStack_38);
    FUN_007c5914(&local_1c);
    FUN_0079a3fc(auStack_30);
    FUN_007c5914(apStack_24);
    FUN_0079a3fc(auStack_34);
    FUN_0079a3f4(auStack_34);
    FUN_007c6a60(apStack_24,&DAT_007edc48,auStack_34);
    FUN_0079a3f4(auStack_30);
    FUN_007c6a60(&local_1c,&DAT_007edc48,auStack_30);
    FUN_0079a3f4(auStack_38);
    FUN_007c6a60(local_2c,"com.chadtowns.da2.battlepack3",auStack_38);
    signalValidationOperationStarting(asStack_28,local_2c);
    registerPurchase(this,apStack_24,&local_1c,asStack_28);
    FUN_007c5914(asStack_28);
    FUN_007c5914(local_2c);
    FUN_0079a3fc(auStack_38);
    FUN_007c5914(&local_1c);
    FUN_0079a3fc(auStack_30);
    FUN_007c5914(apStack_24);
    FUN_0079a3fc(auStack_34);
    FUN_0079a3f4(auStack_34);
    FUN_007c6a60(apStack_24,&DAT_007edc48,auStack_34);
    FUN_0079a3f4(auStack_30);
    FUN_007c6a60(&local_1c,&DAT_007edc48,auStack_30);
    FUN_0079a3f4(auStack_38);
    FUN_007c6a60(local_2c,"com.chadtowns.da2.battlepack4",auStack_38);
    signalValidationOperationStarting(asStack_28,local_2c);
    registerPurchase(this,apStack_24,&local_1c,asStack_28);
    FUN_007c5914(asStack_28);
    FUN_007c5914(local_2c);
    FUN_0079a3fc(auStack_38);
    FUN_007c5914(&local_1c);
    FUN_0079a3fc(auStack_30);
    FUN_007c5914(apStack_24);
    FUN_0079a3fc(auStack_34);
    local_2d = cocos2d::JniHelper::getStaticMethodInfo
                         ((JniMethodInfo_ *)&local_1c,"com/appsomniacs/da2/DA2Activity",
                          "verifyInventory","()V");
    if (local_2d == '\x01') {
      _JNIEnv::CallStaticVoidMethod(local_1c,local_18,local_14);
      cocos2d::JniHelper::logAndClearExceptions((_JNIEnv *)local_1c);
    }
  }
  else {
    ApplicationInterface::pickClaimedIdentity();
  }
  return;
}

// ---- IapManager::checkStatusRestoreWithoutCacheReset  @ 0x43e910
/* IapManager::checkStatusRestoreWithoutCacheReset(float) */

void __thiscall IapManager::checkStatusRestoreWithoutCacheReset(IapManager *this,float param_1)

{
  int iVar1;
  NetworkManager *this_00;
  float in_r1;
  uint in_fpscr;
  float fVar2;
  undefined1 auStack_10 [4];
  undefined1 auStack_c [4];
  
  m_elapsedDeltaSinceLastSessionConnectReAttempt =
       m_elapsedDeltaSinceLastSessionConnectReAttempt + in_r1;
  iVar1 = ApplicationInterface::hasClaimedIdentity();
  if (iVar1 != 0) {
    NetworkManager::sharedNetworkManager();
    iVar1 = NetworkManagerBridge::isInternetReachable();
    if (iVar1 != 0) {
      NetworkManager::sharedNetworkManager();
      iVar1 = NetworkManager::hasCompletedSessionRequest();
      if (iVar1 == 0) {
        fVar2 = (float)VectorSignedToFloat(m_numberOfSessionReattempts,(byte)(in_fpscr >> 0x16) & 3)
        ;
        m_reattemptSessionConnectDelay = fVar2 * m_minWebSessionRequestReAttemptWaitTime;
        fVar2 = m_maxWebSessionRequestReAttemptWaitTime;
        if ((int)((uint)(m_reattemptSessionConnectDelay < m_maxWebSessionRequestReAttemptWaitTime)
                 << 0x1f) < 0) {
          fVar2 = m_reattemptSessionConnectDelay;
        }
        if (fVar2 <= m_elapsedDeltaSinceLastSessionConnectReAttempt) {
          this_00 = (NetworkManager *)NetworkManager::sharedNetworkManager();
          NetworkManager::requestWebSession(this_00);
          m_numberOfSessionReattempts = m_numberOfSessionReattempts + 1;
          m_elapsedDeltaSinceLastSessionConnectReAttempt = 0.0;
        }
      }
      else {
        m_numberOfSessionReattempts = 0;
        m_elapsedDeltaSinceLastSessionConnectReAttempt = 0.0;
        if (bRequiresIapValidationRetry != '\0') {
          bRequiresIapValidationRetry = '\0';
          FUN_0079a3f4(auStack_10);
          FUN_007c6a60(auStack_c,"com.chadtowns.da2.propack",auStack_10);
          iVar1 = isProductPurchased(this,auStack_c);
          FUN_007c5914(auStack_c);
          FUN_0079a3fc(auStack_10);
          if (iVar1 == 0) {
            restore(this,false);
          }
        }
      }
    }
  }
  return;
}

// ---- IapManager::purchaseProduct  @ 0x43eba4
/* IapManager::purchaseProduct(std::string) */

void __thiscall IapManager::purchaseProduct(IapManager *this,string *param_2)

{
  int iVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  char *pcVar5;
  CCHttpClient *this_00;
  _Rb_tree_iterator<std::pair<std::string_const,bool>> a_Stack_40 [4];
  undefined1 auStack_3c [4];
  uint local_38;
  string asStack_34 [4];
  undefined4 local_30;
  undefined4 local_2c;
  CCString *local_28;
  CCObject *local_24;
  pair<std::string,bool> apStack_20 [8];
  code *local_18;
  undefined4 local_14;
  
  initPurchasedSkusLookup((map *)m_purchasedSkus);
  iVar1 = std::
          map<std::string,bool,std::less<std::string>,std::allocator<std::pair<std::string_const,bool>>>
          ::count((map<std::string,bool,std::less<std::string>,std::allocator<std::pair<std::string_const,bool>>>
                   *)m_purchasedSkus,param_2);
  if (iVar1 == 0) {
    FUN_007c64e8(asStack_34,param_2);
    local_38 = local_38 & 0xffffff00;
    std::pair<std::string,bool>::pair<std::string,bool,void>
              (apStack_20,asStack_34,(bool *)&local_38);
    std::
    map<std::string,bool,std::less<std::string>,std::allocator<std::pair<std::string_const,bool>>>::
    insert<std::pair<std::string,bool>,void>((pair *)&local_18);
    std::pair<std::string,bool>::~pair(apStack_20);
    FUN_007c5914(asStack_34);
    FUN_007c64e8(&local_18,param_2);
    purchaseProduct(this,&local_18);
    FUN_007c5914(&local_18);
  }
  else {
    iVar1 = std::
            map<std::string,bool,std::less<std::string>,std::allocator<std::pair<std::string_const,bool>>>
            ::count((map<std::string,bool,std::less<std::string>,std::allocator<std::pair<std::string_const,bool>>>
                     *)m_purchasedSkus,param_2);
    if (iVar1 == 1) {
      std::_Rb_tree_iterator<std::pair<std::string_const,bool>>::_Rb_tree_iterator(a_Stack_40);
      local_18 = (code *)std::
                         map<std::string,bool,std::less<std::string>,std::allocator<std::pair<std::string_const,bool>>>
                         ::find((map<std::string,bool,std::less<std::string>,std::allocator<std::pair<std::string_const,bool>>>
                                 *)m_purchasedSkus,param_2);
      std::_Rb_tree_iterator<std::pair<std::string_const,bool>>::operator->
                ((_Rb_tree_iterator<std::pair<std::string_const,bool>> *)&local_18);
      NetworkManager::sharedNetworkManager();
      NetworkManager::hasCompletedSessionRequest();
      NetworkManager::sharedNetworkManager();
      NetworkManager::getPrivateClientToken();
      local_30 = FUN_007c5300(param_2);
      local_2c = FUN_007c505c(param_2);
      base64Encode(local_30,local_2c,&local_38);
      uVar2 = NetworkManager::sharedNetworkManager();
      FUN_0079a3f4(&local_18);
      FUN_007c6a60(apStack_20,local_38,&local_18);
      NetworkManager::urlEncode(asStack_34,uVar2,apStack_20);
      FUN_007c5914(apStack_20);
      FUN_0079a3fc(&local_18);
      uVar2 = FUN_007c5300(auStack_3c);
      uVar3 = ApplicationInterface::getPlatformId();
      uVar4 = FUN_007c5300(asStack_34);
      local_28 = (CCString *)
                 cocos2d::CCString::createWithFormat
                           ("/games/doodlearmy2/api/%s/%d/%s/payload",uVar2,uVar3,uVar4);
      pcVar5 = (char *)NetworkManager::sharedNetworkManager();
      cocos2d::CCString::getCString(local_28);
      local_24 = (CCObject *)NetworkManager::createAppsomniacsRequest(pcVar5);
      cocos2d::extension::CCHttpRequest::setRequestType((CCHttpRequest *)local_24,0);
      local_18 = (code *)0x43f1d5;
      local_14 = 0;
      cocos2d::extension::CCHttpRequest::setResponseCallback
                (local_24,(_func_void_CCHttpClient_ptr_CCHttpResponse_ptr *)this);
      cocos2d::extension::CCHttpRequest::setTag((CCHttpRequest *)local_24,"GET Request -> Purchase")
      ;
      this_00 = (CCHttpClient *)cocos2d::extension::CCHttpClient::getInstance();
      cocos2d::extension::CCHttpClient::send(this_00,(CCHttpRequest *)local_24);
      cocos2d::CCObject::release(local_24);
      FUN_007c5914(asStack_34);
      FUN_007c5914(auStack_3c);
    }
    else {
      std::
      map<std::string,bool,std::less<std::string>,std::allocator<std::pair<std::string_const,bool>>>
      ::count((map<std::string,bool,std::less<std::string>,std::allocator<std::pair<std::string_const,bool>>>
               *)m_purchasedSkus,param_2);
    }
  }
  return;
}

// ---- IapManager::registerPurchase  @ 0x43edfc
/* IapManager::registerPurchase(std::string, std::string, std::string) */

void __thiscall
IapManager::registerPurchase(IapManager *this,undefined4 param_2,undefined4 param_3,string *param_4)

{
  bool bVar1;
  char cVar2;
  int iVar3;
  string *psVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  char *pcVar8;
  MemoryPoolAllocator *pMVar9;
  char *__s;
  size_t sVar10;
  CCHttpClient *this_00;
  undefined4 local_c4;
  undefined4 local_c0;
  undefined1 auStack_bc [4];
  undefined4 local_b8;
  undefined1 auStack_b4 [4];
  undefined1 auStack_b0 [4];
  undefined4 local_ac;
  undefined4 local_a8;
  CCString *local_a4;
  CCObject *local_a0;
  code *local_9c;
  undefined4 local_98;
  GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
  aGStack_94 [16];
  GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
  aGStack_84 [16];
  GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator> aGStack_74 [24];
  Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
  aWStack_5c [28];
  GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
  aGStack_40 [48];
  
  initPurchasedSkusLookup((map *)m_purchasedSkus);
  local_c4 = std::
             map<std::string,bool,std::less<std::string>,std::allocator<std::pair<std::string_const,bool>>>
             ::lower_bound((map<std::string,bool,std::less<std::string>,std::allocator<std::pair<std::string_const,bool>>>
                            *)m_purchasedSkus,param_4);
  local_c0 = std::
             map<std::string,bool,std::less<std::string>,std::allocator<std::pair<std::string_const,bool>>>
             ::end((map<std::string,bool,std::less<std::string>,std::allocator<std::pair<std::string_const,bool>>>
                    *)m_purchasedSkus);
  iVar3 = std::_Rb_tree_iterator<std::pair<std::string_const,bool>>::operator==
                    ((_Rb_tree_iterator<std::pair<std::string_const,bool>> *)&local_c4,
                     (_Rb_tree_iterator *)&local_c0);
  if (iVar3 == 0) {
    psVar4 = (string *)
             std::_Rb_tree_iterator<std::pair<std::string_const,bool>>::operator->
                       ((_Rb_tree_iterator<std::pair<std::string_const,bool>> *)&local_c4);
    bVar1 = std::operator<(param_4,psVar4);
    if (!bVar1) {
      bVar1 = false;
      goto LAB_0043ee66;
    }
  }
  bVar1 = true;
LAB_0043ee66:
  if ((bVar1) ||
     (iVar3 = std::_Rb_tree_iterator<std::pair<std::string_const,bool>>::operator->
                        ((_Rb_tree_iterator<std::pair<std::string_const,bool>> *)&local_c4),
     *(char *)(iVar3 + 4) == '\0')) {
    NetworkManager::sharedNetworkManager();
    cVar2 = NetworkManager::hasCompletedSessionRequest();
    if (cVar2 == '\x01') {
      NetworkManager::sharedNetworkManager();
      NetworkManager::getPrivateClientToken();
      local_ac = FUN_007c5300(param_4);
      local_a8 = FUN_007c505c(param_4);
      base64Encode(local_ac,local_a8,&local_b8);
      uVar5 = NetworkManager::sharedNetworkManager();
      FUN_0079a3f4(aGStack_40);
      FUN_007c6a60(auStack_b0,local_b8,aGStack_40);
      NetworkManager::urlEncode(auStack_b4,uVar5,auStack_b0);
      FUN_007c5914(auStack_b0);
      FUN_0079a3fc(aGStack_40);
      uVar5 = FUN_007c5300(auStack_bc);
      uVar6 = ApplicationInterface::getPlatformId();
      uVar7 = FUN_007c5300(auStack_b4);
      local_a4 = (CCString *)
                 cocos2d::CCString::createWithFormat
                           ("/games/doodlearmy2/api/%s/%d/%s/validate",uVar5,uVar6,uVar7);
      pcVar8 = (char *)NetworkManager::sharedNetworkManager();
      cocos2d::CCString::getCString(local_a4);
      local_a0 = (CCObject *)NetworkManager::createAppsomniacsRequest(pcVar8);
      cocos2d::extension::CCHttpRequest::setRequestType((CCHttpRequest *)local_a0,1);
      local_9c = (code *)0x43f491;
      local_98 = 0;
      cocos2d::extension::CCHttpRequest::setResponseCallback
                (local_a0,(_func_void_CCHttpClient_ptr_CCHttpResponse_ptr *)this);
      iVar3 = FUN_007c505c(param_3);
      if (iVar3 == 0) {
        thunk_FUN_007c653c(param_3,auStack_bc);
      }
      iVar3 = FUN_007c505c(param_2);
      if (iVar3 == 0) {
        FUN_007c5e70(param_2,&DAT_007edd38);
      }
      rapidjson::
      GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
      ::GenericDocument(aGStack_40,(MemoryPoolAllocator *)0x0,0x400);
      rapidjson::
      GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
      SetObject((GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                 *)aGStack_40);
      rapidjson::
      GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
      GenericValue(aGStack_94);
      pcVar8 = (char *)FUN_007c5300(param_3);
      rapidjson::
      GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
      SetString(aGStack_94,pcVar8);
      pMVar9 = (MemoryPoolAllocator *)
               rapidjson::
               GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
               ::GetAllocator(aGStack_40);
      rapidjson::
      GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
      AddMember((GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                 *)aGStack_40,"signature",(GenericValue *)aGStack_94,pMVar9);
      rapidjson::
      GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
      GenericValue(aGStack_84);
      pcVar8 = (char *)FUN_007c5300(param_2);
      rapidjson::
      GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
      SetString(aGStack_84,pcVar8);
      pMVar9 = (MemoryPoolAllocator *)
               rapidjson::
               GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
               ::GetAllocator(aGStack_40);
      rapidjson::
      GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
      AddMember((GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                 *)aGStack_40,"data",(GenericValue *)aGStack_84,pMVar9);
      rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>::
      GenericStringBuffer(aGStack_74,(CrtAllocator *)0x0,0x100);
      rapidjson::
      Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
      ::Writer(aWStack_5c,(GenericStringBuffer *)aGStack_74,(MemoryPoolAllocator *)0x0,0x20);
      rapidjson::
      GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
      Accept<rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>
                ((GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                  *)aGStack_40,(Writer *)aWStack_5c);
      pcVar8 = (char *)rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>
                       ::GetString(aGStack_74);
      __s = (char *)rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>::
                    GetString(aGStack_74);
      sVar10 = strlen(__s);
      cocos2d::extension::CCHttpRequest::setRequestData((CCHttpRequest *)local_a0,pcVar8,sVar10);
      this_00 = (CCHttpClient *)cocos2d::extension::CCHttpClient::getInstance();
      cocos2d::extension::CCHttpClient::send(this_00,(CCHttpRequest *)local_a0);
      cocos2d::CCObject::release(local_a0);
      rapidjson::
      Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
      ::~Writer(aWStack_5c);
      rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>::
      ~GenericStringBuffer(aGStack_74);
      rapidjson::
      GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
      ~GenericValue(aGStack_84);
      rapidjson::
      GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
      ~GenericValue(aGStack_94);
      rapidjson::
      GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
      ::~GenericDocument(aGStack_40);
      FUN_007c5914(auStack_b4);
      FUN_007c5914(auStack_bc);
    }
  }
  return;
}

// ---- IapManager::isProductPurchased  @ 0x43f148
/* IapManager::isProductPurchased(std::string) */

undefined1 __thiscall IapManager::isProductPurchased(undefined4 param_1,string *param_2)

{
  int iVar1;
  undefined1 uVar2;
  undefined4 local_c;
  
  initPurchasedSkusLookup((map *)m_purchasedSkus);
  iVar1 = std::
          map<std::string,bool,std::less<std::string>,std::allocator<std::pair<std::string_const,bool>>>
          ::count((map<std::string,bool,std::less<std::string>,std::allocator<std::pair<std::string_const,bool>>>
                   *)m_purchasedSkus,param_2);
  if (iVar1 == 0) {
    uVar2 = 0;
  }
  else {
    iVar1 = std::
            map<std::string,bool,std::less<std::string>,std::allocator<std::pair<std::string_const,bool>>>
            ::count((map<std::string,bool,std::less<std::string>,std::allocator<std::pair<std::string_const,bool>>>
                     *)m_purchasedSkus,param_2);
    if (iVar1 == 1) {
      local_c = std::
                map<std::string,bool,std::less<std::string>,std::allocator<std::pair<std::string_const,bool>>>
                ::find((map<std::string,bool,std::less<std::string>,std::allocator<std::pair<std::string_const,bool>>>
                        *)m_purchasedSkus,param_2);
      iVar1 = std::_Rb_tree_iterator<std::pair<std::string_const,bool>>::operator->
                        ((_Rb_tree_iterator<std::pair<std::string_const,bool>> *)&local_c);
      uVar2 = *(undefined1 *)(iVar1 + 4);
    }
    else {
      std::
      map<std::string,bool,std::less<std::string>,std::allocator<std::pair<std::string_const,bool>>>
      ::count((map<std::string,bool,std::less<std::string>,std::allocator<std::pair<std::string_const,bool>>>
               *)m_purchasedSkus,param_2);
      uVar2 = 0;
    }
  }
  return uVar2;
}

// ---- IapManager::onAppsomniacsPayloadHttpRequestCompleted  @ 0x43f1d4
/* IapManager::onAppsomniacsPayloadHttpRequestCompleted(cocos2d::extension::CCHttpClient*,
   cocos2d::extension::CCHttpResponse*) */

void __thiscall
IapManager::onAppsomniacsPayloadHttpRequestCompleted
          (IapManager *this,CCHttpClient *param_1,CCHttpResponse *param_2)

{
  bool bVar1;
  char cVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  char *pcVar5;
  NetworkManager *this_00;
  int iVar6;
  GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
  *pGVar7;
  string asStack_5c [4];
  undefined1 auStack_58 [4];
  undefined1 auStack_54 [4];
  undefined1 auStack_50 [4];
  undefined1 auStack_4c [4];
  int local_48;
  vector<char,std::allocator<char>> *local_44;
  GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
  aGStack_40 [52];
  
  local_48 = cocos2d::extension::CCHttpResponse::getResponseCode(param_2);
  local_44 = (vector<char,std::allocator<char>> *)
             cocos2d::extension::CCHttpResponse::getResponseData(param_2);
  uVar3 = std::vector<char,std::allocator<char>>::begin(local_44);
  uVar4 = std::vector<char,std::allocator<char>>::end(local_44);
  FUN_0079a3f4(aGStack_40);
  std::string::string<__gnu_cxx::__normal_iterator<char*,std::vector<char,std::allocator<char>>>>
            (asStack_5c,uVar3,uVar4,aGStack_40);
  FUN_0079a3fc(aGStack_40);
  rapidjson::
  GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
  GenericDocument(aGStack_40,(MemoryPoolAllocator *)0x0,0x400);
  pcVar5 = (char *)FUN_007c5300(asStack_5c);
  rapidjson::
  GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
  Parse<0u>(aGStack_40,pcVar5);
  this_00 = (NetworkManager *)NetworkManager::sharedNetworkManager();
  iVar6 = NetworkManager::processClientMessageFromJsonDoc(this_00,(GenericDocument *)aGStack_40);
  if (((iVar6 != 0) || (local_48 != 200)) ||
     (iVar6 = rapidjson::
              GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
              ::IsObject((GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                          *)aGStack_40), iVar6 == 0)) goto LAB_0043f3c6;
  FUN_007c51b0(auStack_58);
  FUN_007c51b0(auStack_54);
  iVar6 = rapidjson::
          GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
          ::HasMember((GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                       *)aGStack_40,"pi");
  if (iVar6 == 0) {
LAB_0043f2da:
    bVar1 = false;
  }
  else {
    pGVar7 = (GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
              *)rapidjson::
                GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                ::operator[]((GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                              *)aGStack_40,"pi");
    cVar2 = rapidjson::
            GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
            ::IsNull(pGVar7);
    if (cVar2 == '\x01') goto LAB_0043f2da;
    pGVar7 = (GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
              *)rapidjson::
                GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                ::operator[]((GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                              *)aGStack_40,"pi");
    iVar6 = rapidjson::
            GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
            ::GetStringLength(pGVar7);
    if (iVar6 == 0) goto LAB_0043f2da;
    bVar1 = true;
  }
  if (bVar1) {
    pGVar7 = (GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
              *)rapidjson::
                GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                ::operator[]((GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                              *)aGStack_40,"pi");
    uVar3 = rapidjson::
            GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
            ::GetString(pGVar7);
    FUN_007c5e70(auStack_58,uVar3);
  }
  iVar6 = rapidjson::
          GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
          ::HasMember((GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                       *)aGStack_40,"dp");
  if (iVar6 == 0) {
LAB_0043f358:
    bVar1 = false;
  }
  else {
    pGVar7 = (GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
              *)rapidjson::
                GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                ::operator[]((GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                              *)aGStack_40,"dp");
    cVar2 = rapidjson::
            GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
            ::IsNull(pGVar7);
    if (cVar2 == '\x01') goto LAB_0043f358;
    pGVar7 = (GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
              *)rapidjson::
                GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                ::operator[]((GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                              *)aGStack_40,"dp");
    iVar6 = rapidjson::
            GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
            ::GetStringLength(pGVar7);
    if (iVar6 == 0) goto LAB_0043f358;
    bVar1 = true;
  }
  if (bVar1) {
    pGVar7 = (GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
              *)rapidjson::
                GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                ::operator[]((GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                              *)aGStack_40,"dp");
    uVar3 = rapidjson::
            GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
            ::GetString(pGVar7);
    FUN_007c5e70(auStack_54,uVar3);
  }
  FUN_007c64e8(auStack_50,auStack_58);
  FUN_007c64e8(auStack_4c,auStack_54);
  requestPurchaseFromPlatform(auStack_50,auStack_4c);
  FUN_007c5914(auStack_4c);
  FUN_007c5914(auStack_50);
  FUN_007c5914(auStack_54);
  FUN_007c5914(auStack_58);
LAB_0043f3c6:
  rapidjson::
  GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
  ~GenericDocument(aGStack_40);
  FUN_007c5914(asStack_5c);
  return;
}

// ---- IapManager::onAppsomniacsPurchaseValidationHttpRequestCompleted  @ 0x43f490
/* IapManager::onAppsomniacsPurchaseValidationHttpRequestCompleted(cocos2d::extension::CCHttpClient*,
   cocos2d::extension::CCHttpResponse*) */

void __thiscall
IapManager::onAppsomniacsPurchaseValidationHttpRequestCompleted
          (IapManager *this,CCHttpClient *param_1,CCHttpResponse *param_2)

{
  void *pvVar1;
  bool bVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  int iVar5;
  string *psVar6;
  CCUserDefault *pCVar7;
  char *pcVar8;
  string asStack_5c [4];
  undefined1 auStack_58 [4];
  undefined1 auStack_54 [4];
  undefined1 auStack_50 [4];
  undefined4 local_4c;
  undefined1 auStack_48 [4];
  undefined1 auStack_44 [4];
  bool local_40 [4];
  void *local_3c;
  string asStack_38 [4];
  undefined4 local_34;
  int local_30;
  vector<char,std::allocator<char>> *local_2c;
  undefined4 local_28;
  undefined4 local_24;
  void *local_20 [2];
  pair apStack_18 [8];
  
  local_30 = cocos2d::extension::CCHttpResponse::getResponseCode(param_2);
  local_2c = (vector<char,std::allocator<char>> *)
             cocos2d::extension::CCHttpResponse::getResponseData(param_2);
  uVar3 = std::vector<char,std::allocator<char>>::begin(local_2c);
  uVar4 = std::vector<char,std::allocator<char>>::end(local_2c);
  FUN_0079a3f4(apStack_18);
  std::string::string<__gnu_cxx::__normal_iterator<char*,std::vector<char,std::allocator<char>>>>
            (asStack_5c,uVar3,uVar4,apStack_18);
  FUN_0079a3fc(apStack_18);
  uVar3 = NetworkManager::sharedNetworkManager();
  FUN_007c64e8(auStack_54,asStack_5c);
  NetworkManager::urlDecode(auStack_58,uVar3,auStack_54);
  FUN_007c5914(auStack_54);
  if (local_30 != 200) {
    iVar5 = FUN_007c505c(asStack_5c);
    if (iVar5 == 0) {
      bVar2 = local_30 == 0xcc;
      FUN_0079a3f4(apStack_18);
      FUN_007c6a60(&local_34,&DAT_007edc48,apStack_18);
      signalValidationOperationCompleted(bVar2,local_30,&local_34);
      FUN_007c5914(&local_34);
      FUN_0079a3fc(apStack_18);
    }
    else {
      uVar3 = FUN_007c5300(auStack_58);
      uVar4 = FUN_007c505c(auStack_58);
      local_24 = base64Decode(uVar3,uVar4,local_20);
      pvVar1 = local_20[0];
      if (local_20[0] == (void *)0x0) {
        bVar2 = local_30 == 0xcc;
        FUN_007c64e8(&local_3c,auStack_58);
        signalValidationOperationCompleted(bVar2,local_30,&local_3c);
        FUN_007c5914(&local_3c);
      }
      else {
        FUN_0079a3f4(&local_34);
        FUN_007c6810(apStack_18,pvVar1,local_24,&local_34);
        FUN_0079a3fc(&local_34);
        operator_delete(local_20[0]);
        pCVar7 = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
        pcVar8 = (char *)FUN_007c5300(&m_hasPreviousValidatedPurchaseStringKey);
        iVar5 = cocos2d::CCUserDefault::getBoolForKey(pCVar7,pcVar8,false);
        if (iVar5 != 0) {
          bRequiresIapValidationRetry = 1;
        }
        bVar2 = local_30 == 0xcc;
        FUN_007c64e8(asStack_38,apStack_18);
        signalValidationOperationCompleted(bVar2,local_30,asStack_38);
        FUN_007c5914(asStack_38);
        FUN_007c5914(apStack_18);
      }
    }
    goto LAB_0043f84a;
  }
  iVar5 = FUN_007c505c(asStack_5c);
  if (iVar5 == 0) {
    FUN_0079a3f4(apStack_18);
    FUN_007c6a60(local_40,&DAT_007edc48,apStack_18);
    signalValidationOperationCompleted(1,local_30,local_40);
    FUN_007c5914(local_40);
    FUN_0079a3fc(apStack_18);
    goto LAB_0043f84a;
  }
  uVar3 = FUN_007c5300(auStack_58);
  uVar4 = FUN_007c505c(auStack_58);
  local_28 = base64Decode(uVar3,uVar4,&local_3c);
  pvVar1 = local_3c;
  if (local_3c == (void *)0x0) {
    FUN_007c64e8(auStack_50,auStack_58);
    signalValidationOperationCompleted(0,local_30,auStack_50);
    FUN_007c5914(auStack_50);
    goto LAB_0043f84a;
  }
  FUN_0079a3f4(apStack_18);
  FUN_007c6810(asStack_38,pvVar1,local_28,apStack_18);
  FUN_0079a3fc(apStack_18);
  operator_delete(local_3c);
  local_34 = std::
             map<std::string,bool,std::less<std::string>,std::allocator<std::pair<std::string_const,bool>>>
             ::lower_bound((map<std::string,bool,std::less<std::string>,std::allocator<std::pair<std::string_const,bool>>>
                            *)m_purchasedSkus,asStack_38);
  local_4c = std::
             map<std::string,bool,std::less<std::string>,std::allocator<std::pair<std::string_const,bool>>>
             ::end((map<std::string,bool,std::less<std::string>,std::allocator<std::pair<std::string_const,bool>>>
                    *)m_purchasedSkus);
  iVar5 = std::_Rb_tree_iterator<std::pair<std::string_const,bool>>::operator==
                    ((_Rb_tree_iterator<std::pair<std::string_const,bool>> *)&local_34,
                     (_Rb_tree_iterator *)&local_4c);
  if (iVar5 == 0) {
    psVar6 = (string *)
             std::_Rb_tree_iterator<std::pair<std::string_const,bool>>::operator->
                       ((_Rb_tree_iterator<std::pair<std::string_const,bool>> *)&local_34);
    bVar2 = std::operator<(asStack_38,psVar6);
    if (bVar2) goto LAB_0043f5f0;
    bVar2 = false;
  }
  else {
LAB_0043f5f0:
    bVar2 = true;
  }
  if (bVar2) {
    local_40[0] = true;
    std::pair<std::string,bool>::pair<std::string&,bool,void>
              ((pair<std::string,bool> *)local_20,asStack_38,local_40);
    std::
    map<std::string,bool,std::less<std::string>,std::allocator<std::pair<std::string_const,bool>>>::
    insert<std::pair<std::string,bool>,void>(apStack_18);
    std::pair<std::string,bool>::~pair((pair<std::string,bool> *)local_20);
  }
  else {
    iVar5 = std::_Rb_tree_iterator<std::pair<std::string_const,bool>>::operator->
                      ((_Rb_tree_iterator<std::pair<std::string_const,bool>> *)&local_34);
    *(undefined1 *)(iVar5 + 4) = 1;
  }
  FUN_0079a3f4(apStack_18);
  FUN_007c6a60(auStack_48,"com.chadtowns.da2.propack",apStack_18);
  iVar5 = FUN_007c567c(auStack_48,asStack_38);
  FUN_007c5914(auStack_48);
  FUN_0079a3fc(apStack_18);
  if (iVar5 == 0) {
    pCVar7 = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
    pcVar8 = (char *)FUN_007c5300(&m_hasPreviousValidatedPurchaseStringKey);
    cocos2d::CCUserDefault::setBoolForKey(pCVar7,pcVar8,true);
    bRequiresIapValidationRetry = 0;
  }
  FUN_007c64e8(auStack_44,asStack_38);
  signalValidationOperationCompleted(1,local_30,auStack_44);
  FUN_007c5914(auStack_44);
  FUN_007c5914(asStack_38);
LAB_0043f84a:
  FUN_007c5914(auStack_58);
  FUN_007c5914(asStack_5c);
  return;
}
