// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 9 functions

// ---- ItemPurchase::sharedItemPurchase  @ 0x35c01c
/* ItemPurchase::sharedItemPurchase() */

ItemPurchase * ItemPurchase::sharedItemPurchase(void)

{
  ItemPurchase *this;
  
  if (m_pInstance == (ItemPurchase *)0x0) {
    this = operator_new(8);
    ItemPurchase(this);
    m_pInstance = this;
  }
  return m_pInstance;
}

// ---- ItemPurchase::ItemPurchase  @ 0x35c060
/* ItemPurchase::ItemPurchase() */

ItemPurchase * __thiscall ItemPurchase::ItemPurchase(ItemPurchase *this)

{
  undefined4 uVar1;
  
  *(undefined ***)this = &PTR__ItemPurchase_1_00913288;
  uVar1 = cocos2d::CCArray::create();
  *(undefined4 *)(this + 4) = uVar1;
  cocos2d::CCObject::retain(*(CCObject **)(this + 4));
  loadPurchasesFromCache(this);
  return this;
}

// ---- ItemPurchase::~ItemPurchase  @ 0x35c0a0
/* WARNING: Removing unreachable block (ram,0x0035c0c4) */
/* ItemPurchase::~ItemPurchase() */

ItemPurchase * __thiscall ItemPurchase::~ItemPurchase(ItemPurchase *this)

{
  *(undefined ***)this = &PTR__ItemPurchase_1_00913288;
  cocos2d::CCObject::release(*(CCObject **)(this + 4));
  return this;
}

// ---- ItemPurchase::~ItemPurchase  @ 0x35c0dc
/* ItemPurchase::~ItemPurchase() */

ItemPurchase * __thiscall ItemPurchase::~ItemPurchase(ItemPurchase *this)

{
  ~ItemPurchase(this);
  operator_delete(this);
  return this;
}

// ---- ItemPurchase::loadPurchasesFromCache  @ 0x35c0f8
/* ItemPurchase::loadPurchasesFromCache() */

void __thiscall ItemPurchase::loadPurchasesFromCache(ItemPurchase *this)

{
  uint uVar1;
  string *psVar2;
  int iVar3;
  undefined4 uVar4;
  CCObject *pCVar5;
  uint uVar6;
  CCArray *this_00;
  undefined1 auStack_30 [4];
  char acStack_2c [4];
  undefined1 auStack_28 [4];
  string asStack_24 [4];
  uint local_20;
  vector<std::string,std::allocator<std::string>> avStack_1c [16];
  
  psVar2 = (string *)cocos2d::CCUserDefault::sharedUserDefault();
  FUN_0079a3f4(asStack_24);
  FUN_007c6a60(avStack_1c,&DAT_007db1a0,asStack_24);
  cocos2d::CCUserDefault::getStringForKey(acStack_2c,psVar2);
  FUN_007c5914(avStack_1c);
  FUN_0079a3fc(asStack_24);
  iVar3 = FUN_007c505c(acStack_2c);
  if (iVar3 != 0) {
    FUN_007c64e8(auStack_28,acStack_2c);
    FUN_0035b974(avStack_1c,auStack_28,&DAT_007db1bc);
    FUN_007c5914(auStack_28);
    for (local_20 = 0; uVar1 = local_20,
        uVar6 = std::vector<std::string,std::allocator<std::string>>::size(avStack_1c),
        uVar1 < uVar6; local_20 = local_20 + 1) {
      uVar4 = std::vector<std::string,std::allocator<std::string>>::operator[](avStack_1c,local_20);
      FUN_007c64e8(auStack_28,uVar4);
      iVar3 = FUN_007c505c(auStack_28);
      if (iVar3 != 0) {
        this_00 = *(CCArray **)(this + 4);
        uVar4 = FUN_007c5300(auStack_28);
        FUN_0079a3f4(auStack_30);
        FUN_007c6a60(asStack_24,uVar4,auStack_30);
        pCVar5 = (CCObject *)cocos2d::CCString::create(asStack_24);
        cocos2d::CCArray::addObject(this_00,pCVar5);
        FUN_007c5914(asStack_24);
        FUN_0079a3fc(auStack_30);
      }
      FUN_007c5914(auStack_28);
    }
    std::vector<std::string,std::allocator<std::string>>::~vector(avStack_1c);
  }
  FUN_007c5914(acStack_2c);
  return;
}

// ---- ItemPurchase::isItemPurchased  @ 0x35c294
/* ItemPurchase::isItemPurchased(std::string) */

undefined4 ItemPurchase::isItemPurchased(undefined4 param_1)

{
  int iVar1;
  CCString *this;
  undefined4 uVar2;
  uint uVar3;
  CCArray *this_00;
  uint local_14;
  
  iVar1 = sharedItemPurchase();
  this_00 = *(CCArray **)(iVar1 + 4);
  local_14 = 0;
  while( true ) {
    uVar3 = cocos2d::CCArray::count(this_00);
    if (uVar3 <= local_14) {
      return 0;
    }
    this = (CCString *)cocos2d::CCArray::objectAtIndex(this_00,local_14);
    uVar2 = cocos2d::CCString::getCString(this);
    iVar1 = FUN_007c5724(param_1,uVar2);
    if (iVar1 == 0) break;
    local_14 = local_14 + 1;
  }
  return 1;
}

// ---- ItemPurchase::purchaseItem  @ 0x35c304
/* ItemPurchase::purchaseItem(std::string) */

void ItemPurchase::purchaseItem(undefined4 param_1)

{
  int iVar1;
  undefined4 uVar2;
  CCObject *pCVar3;
  ItemPurchase *this;
  CCArray *this_00;
  undefined1 auStack_18 [4];
  string asStack_14 [8];
  
  iVar1 = sharedItemPurchase();
  this_00 = *(CCArray **)(iVar1 + 4);
  uVar2 = FUN_007c5300(param_1);
  FUN_0079a3f4(auStack_18);
  FUN_007c6a60(asStack_14,uVar2,auStack_18);
  pCVar3 = (CCObject *)cocos2d::CCString::create(asStack_14);
  cocos2d::CCArray::addObject(this_00,pCVar3);
  FUN_007c5914(asStack_14);
  FUN_0079a3fc(auStack_18);
  this = (ItemPurchase *)sharedItemPurchase();
  rebuildAndCachePurchases(this);
  return;
}

// ---- ItemPurchase::sellItem  @ 0x35c37c
/* ItemPurchase::sellItem(std::string) */

void ItemPurchase::sellItem(undefined4 param_1)

{
  int iVar1;
  CCString *this;
  undefined4 uVar2;
  uint uVar3;
  ItemPurchase *this_00;
  CCArray *this_01;
  undefined4 local_14;
  
  iVar1 = sharedItemPurchase();
  this_01 = *(CCArray **)(iVar1 + 4);
  local_14 = 0;
  do {
    uVar3 = cocos2d::CCArray::count(this_01);
    if (uVar3 <= local_14) {
LAB_0035c3f2:
      this_00 = (ItemPurchase *)sharedItemPurchase();
      rebuildAndCachePurchases(this_00);
      return;
    }
    this = (CCString *)cocos2d::CCArray::objectAtIndex(this_01,local_14);
    uVar2 = cocos2d::CCString::getCString(this);
    iVar1 = FUN_007c5724(param_1,uVar2);
    if (iVar1 == 0) {
      iVar1 = sharedItemPurchase();
      cocos2d::CCArray::removeObject(*(CCArray **)(iVar1 + 4),(CCObject *)this,true);
      goto LAB_0035c3f2;
    }
    local_14 = local_14 + 1;
  } while( true );
}

// ---- ItemPurchase::rebuildAndCachePurchases  @ 0x35c404
/* ItemPurchase::rebuildAndCachePurchases() */

void __thiscall ItemPurchase::rebuildAndCachePurchases(ItemPurchase *this)

{
  bool bVar1;
  uint uVar2;
  int iVar3;
  undefined4 uVar4;
  uint uVar5;
  CCUserDefault *this_00;
  undefined1 auStack_18 [4];
  string asStack_14 [4];
  uint local_10;
  CCString *local_c;
  
  FUN_0079a3f4(auStack_18);
  FUN_007c6a60(asStack_14,&DAT_007db1a0,auStack_18);
  FUN_0079a3fc(auStack_18);
  for (local_10 = 0; uVar2 = local_10, uVar5 = cocos2d::CCArray::count(*(CCArray **)(this + 4)),
      uVar2 < uVar5; local_10 = local_10 + 1) {
    local_c = (CCString *)cocos2d::CCArray::objectAtIndex(*(CCArray **)(this + 4),local_10);
    if ((local_c == (CCString *)0x0) || (iVar3 = cocos2d::CCString::length(local_c), iVar3 == 0)) {
      bVar1 = false;
    }
    else {
      bVar1 = true;
    }
    if (bVar1) {
      uVar4 = cocos2d::CCString::getCString(local_c);
      FUN_007c62f0(asStack_14,uVar4);
      FUN_007c62f0(asStack_14,&DAT_007db1bc);
    }
  }
  this_00 = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
  cocos2d::CCUserDefault::setStringForKey(this_00,"CachedPurchasedItems",asStack_14);
  FUN_007c5914(asStack_14);
  return;
}
