// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 20 functions

// ---- Sound::Sound  @ 0x404920
/* Sound::Sound() */

Sound * __thiscall Sound::Sound(Sound *this)

{
  undefined4 uVar1;
  CCObject *pCVar2;
  CCArray *pCVar3;
  CCDictionary *pCVar4;
  string asStack_44 [4];
  string asStack_40 [4];
  string asStack_3c [4];
  string asStack_38 [4];
  string asStack_34 [4];
  string asStack_30 [4];
  string asStack_2c [4];
  string asStack_28 [4];
  string asStack_24 [4];
  string asStack_20 [4];
  string asStack_1c [4];
  string asStack_18 [4];
  string asStack_14 [8];
  
  *(undefined ***)this = &PTR__Sound_1_0091bdc0;
  std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::map
            ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)(this + 0x10));
  *(undefined4 *)(this + 0x30) = 0x3f800000;
  *(undefined4 *)(this + 0x34) = 0x3f800000;
  this[0x28] = (Sound)0x1;
  this[0x29] = (Sound)0x1;
  uVar1 = cocos2d::CCDictionary::create();
  *(undefined4 *)(this + 4) = uVar1;
  cocos2d::CCObject::retain(*(CCObject **)(this + 4));
  loadSoundBuffers(this);
  uVar1 = cocos2d::CCDictionary::create();
  *(undefined4 *)(this + 8) = uVar1;
  pCVar4 = *(CCDictionary **)(this + 8);
  pCVar2 = (CCObject *)cocos2d::CCInteger::create(0x5c);
  FUN_0079a3f4(asStack_14);
  FUN_007c6a60(asStack_44,&DAT_007e8cf4,asStack_14);
  cocos2d::CCDictionary::setObject(pCVar4,pCVar2,asStack_44);
  FUN_007c5914(asStack_44);
  FUN_0079a3fc(asStack_14);
  pCVar4 = *(CCDictionary **)(this + 8);
  pCVar2 = (CCObject *)cocos2d::CCInteger::create(0x5d);
  FUN_0079a3f4(asStack_14);
  FUN_007c6a60(asStack_40,&DAT_007e8cf8,asStack_14);
  cocos2d::CCDictionary::setObject(pCVar4,pCVar2,asStack_40);
  FUN_007c5914(asStack_40);
  FUN_0079a3fc(asStack_14);
  pCVar4 = *(CCDictionary **)(this + 8);
  pCVar2 = (CCObject *)cocos2d::CCInteger::create(0x5e);
  FUN_0079a3f4(asStack_14);
  FUN_007c6a60(asStack_3c,&DAT_007e8cfc,asStack_14);
  cocos2d::CCDictionary::setObject(pCVar4,pCVar2,asStack_3c);
  FUN_007c5914(asStack_3c);
  FUN_0079a3fc(asStack_14);
  pCVar4 = *(CCDictionary **)(this + 8);
  pCVar2 = (CCObject *)cocos2d::CCInteger::create(0x5f);
  FUN_0079a3f4(asStack_14);
  FUN_007c6a60(asStack_38,&DAT_007e8d00,asStack_14);
  cocos2d::CCDictionary::setObject(pCVar4,pCVar2,asStack_38);
  FUN_007c5914(asStack_38);
  FUN_0079a3fc(asStack_14);
  pCVar4 = *(CCDictionary **)(this + 8);
  pCVar2 = (CCObject *)cocos2d::CCInteger::create(0x60);
  FUN_0079a3f4(asStack_14);
  FUN_007c6a60(asStack_34,&DAT_007e8d04,asStack_14);
  cocos2d::CCDictionary::setObject(pCVar4,pCVar2,asStack_34);
  FUN_007c5914(asStack_34);
  FUN_0079a3fc(asStack_14);
  pCVar4 = *(CCDictionary **)(this + 8);
  pCVar2 = (CCObject *)cocos2d::CCInteger::create(0x2c);
  FUN_0079a3f4(asStack_14);
  FUN_007c6a60(asStack_30,&DAT_007e8d08,asStack_14);
  cocos2d::CCDictionary::setObject(pCVar4,pCVar2,asStack_30);
  FUN_007c5914(asStack_30);
  FUN_0079a3fc(asStack_14);
  pCVar4 = *(CCDictionary **)(this + 8);
  pCVar2 = (CCObject *)cocos2d::CCInteger::create(0x28);
  FUN_0079a3f4(asStack_14);
  FUN_007c6a60(asStack_2c,&DAT_007e8d0c,asStack_14);
  cocos2d::CCDictionary::setObject(pCVar4,pCVar2,asStack_2c);
  FUN_007c5914(asStack_2c);
  FUN_0079a3fc(asStack_14);
  pCVar4 = *(CCDictionary **)(this + 8);
  pCVar2 = (CCObject *)cocos2d::CCInteger::create(0x29);
  FUN_0079a3f4(asStack_14);
  FUN_007c6a60(asStack_28,&DAT_007e8d10,asStack_14);
  cocos2d::CCDictionary::setObject(pCVar4,pCVar2,asStack_28);
  FUN_007c5914(asStack_28);
  FUN_0079a3fc(asStack_14);
  pCVar4 = *(CCDictionary **)(this + 8);
  pCVar2 = (CCObject *)cocos2d::CCInteger::create(0x2a);
  FUN_0079a3f4(asStack_14);
  FUN_007c6a60(asStack_24,&DAT_007e8d14,asStack_14);
  cocos2d::CCDictionary::setObject(pCVar4,pCVar2,asStack_24);
  FUN_007c5914(asStack_24);
  FUN_0079a3fc(asStack_14);
  pCVar4 = *(CCDictionary **)(this + 8);
  pCVar2 = (CCObject *)cocos2d::CCInteger::create(0x61);
  FUN_0079a3f4(asStack_14);
  FUN_007c6a60(asStack_20,&DAT_007e8d18,asStack_14);
  cocos2d::CCDictionary::setObject(pCVar4,pCVar2,asStack_20);
  FUN_007c5914(asStack_20);
  FUN_0079a3fc(asStack_14);
  pCVar4 = *(CCDictionary **)(this + 8);
  pCVar2 = (CCObject *)cocos2d::CCInteger::create(0x2b);
  FUN_0079a3f4(asStack_14);
  FUN_007c6a60(asStack_1c,&DAT_007e8d1c,asStack_14);
  cocos2d::CCDictionary::setObject(pCVar4,pCVar2,asStack_1c);
  FUN_007c5914(asStack_1c);
  FUN_0079a3fc(asStack_14);
  pCVar4 = *(CCDictionary **)(this + 8);
  pCVar2 = (CCObject *)cocos2d::CCInteger::create(0x5b);
  FUN_0079a3f4(asStack_14);
  FUN_007c6a60(asStack_18,&DAT_007e8d20,asStack_14);
  cocos2d::CCDictionary::setObject(pCVar4,pCVar2,asStack_18);
  FUN_007c5914(asStack_18);
  FUN_0079a3fc(asStack_14);
  pCVar4 = *(CCDictionary **)(this + 8);
  pCVar2 = (CCObject *)cocos2d::CCInteger::create(0x32);
  FUN_0079a3f4(asStack_18);
  FUN_007c6a60(asStack_14,&DAT_007e8d24,asStack_18);
  cocos2d::CCDictionary::setObject(pCVar4,pCVar2,asStack_14);
  FUN_007c5914(asStack_14);
  FUN_0079a3fc(asStack_18);
  cocos2d::CCObject::retain(*(CCObject **)(this + 8));
  uVar1 = cocos2d::CCArray::create();
  *(undefined4 *)(this + 0xc) = uVar1;
  pCVar3 = *(CCArray **)(this + 0xc);
  pCVar2 = (CCObject *)cocos2d::CCInteger::create(0x28);
  cocos2d::CCArray::addObject(pCVar3,pCVar2);
  pCVar3 = *(CCArray **)(this + 0xc);
  pCVar2 = (CCObject *)cocos2d::CCInteger::create(0x29);
  cocos2d::CCArray::addObject(pCVar3,pCVar2);
  pCVar3 = *(CCArray **)(this + 0xc);
  pCVar2 = (CCObject *)cocos2d::CCInteger::create(0x2a);
  cocos2d::CCArray::addObject(pCVar3,pCVar2);
  pCVar3 = *(CCArray **)(this + 0xc);
  pCVar2 = (CCObject *)cocos2d::CCInteger::create(0x61);
  cocos2d::CCArray::addObject(pCVar3,pCVar2);
  pCVar3 = *(CCArray **)(this + 0xc);
  pCVar2 = (CCObject *)cocos2d::CCInteger::create(0x2b);
  cocos2d::CCArray::addObject(pCVar3,pCVar2);
  pCVar3 = *(CCArray **)(this + 0xc);
  pCVar2 = (CCObject *)cocos2d::CCInteger::create(0x5b);
  cocos2d::CCArray::addObject(pCVar3,pCVar2);
  cocos2d::CCObject::retain(*(CCObject **)(this + 0xc));
  return this;
}

// ---- Sound::~Sound  @ 0x404ed8
/* WARNING: Removing unreachable block (ram,0x00404f1a) */
/* Sound::~Sound() */

Sound * __thiscall Sound::~Sound(Sound *this)

{
  *(undefined ***)this = &PTR__Sound_1_0091bdc0;
  cocos2d::CCObject::release(*(CCObject **)(this + 4));
  cocos2d::CCObject::release(*(CCObject **)(this + 8));
  cocos2d::CCObject::release(*(CCObject **)(this + 0xc));
  std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::~map
            ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)(this + 0x10));
  return this;
}

// ---- Sound::~Sound  @ 0x404f34
/* Sound::~Sound() */

Sound * __thiscall Sound::~Sound(Sound *this)

{
  ~Sound(this);
  operator_delete(this);
  return this;
}

// ---- Sound::loadSoundBuffers  @ 0x404f50
/* Sound::loadSoundBuffers() */

void __thiscall Sound::loadSoundBuffers(Sound *this)

{
  int iVar1;
  char *pcVar2;
  undefined4 *puVar3;
  int local_198;
  CCObject *local_194;
  CCObject *local_190;
  CCObject *local_18c;
  CCObject *local_188;
  CCObject *local_184;
  CCObject *local_180;
  CCObject *local_17c;
  CCObject *local_178;
  CCObject *local_174;
  CCObject *local_170;
  CCObject *local_16c;
  CCObject *local_168;
  CCObject *local_164;
  CCObject *local_160;
  CCObject *local_15c;
  CCObject *local_158;
  CCObject *local_154;
  CCObject *local_150;
  CCObject *local_14c;
  CCObject *local_148;
  CCObject *local_144;
  CCObject *local_140;
  CCObject *local_13c;
  CCObject *local_138;
  CCObject *local_134;
  CCObject *local_130;
  CCObject *local_12c;
  CCObject *local_128;
  CCObject *local_124;
  CCObject *local_120;
  CCObject *local_11c;
  CCObject *local_118;
  CCObject *local_114;
  CCObject *local_110;
  CCObject *local_10c;
  CCObject *local_108;
  CCObject *local_104;
  CCObject *local_100;
  CCObject *local_fc;
  CCObject *local_f8;
  CCObject *local_f4;
  CCObject *local_f0;
  CCObject *local_ec;
  CCObject *local_e8;
  CCObject *local_e4;
  CCObject *local_e0;
  CCObject *local_dc;
  CCObject *local_d8;
  CCObject *local_d4;
  CCObject *local_d0;
  CCObject *local_cc;
  CCObject *local_c8;
  CCObject *local_c4;
  CCObject *local_c0;
  CCObject *local_bc;
  CCObject *local_b8;
  CCObject *local_b4;
  CCObject *local_b0;
  CCObject *local_ac;
  CCObject *local_a8;
  CCObject *local_a4;
  CCObject *local_a0;
  CCObject *local_9c;
  CCObject *local_98;
  CCObject *local_94;
  CCObject *local_90;
  CCObject *local_8c;
  CCObject *local_88;
  CCObject *local_84;
  CCObject *local_80;
  CCObject *local_7c;
  CCObject *local_78;
  CCObject *local_74;
  CCObject *local_70;
  CCObject *local_6c;
  CCObject *local_68;
  CCObject *local_64;
  CCObject *local_60;
  CCObject *local_5c;
  CCObject *local_58;
  CCObject *local_54;
  CCObject *local_50;
  CCObject *local_4c;
  CCObject *local_48;
  CCObject *local_44;
  CCObject *local_40;
  CCObject *local_3c;
  CCObject *local_38;
  CCObject *local_34;
  CCObject *local_30;
  CCObject *local_2c;
  CCObject *local_28;
  CCObject *local_24;
  CCObject *local_20;
  CCObject *local_1c;
  CCObject *local_18;
  CCObject *local_14;
  CCObject *local_10;
  CCObject *local_c;
  
  iVar1 = CocosDenshion::SimpleAudioEngine::sharedEngine();
  CocosDenshion::SimpleAudioEngine::createSoundGroup(iVar1,0);
  iVar1 = CocosDenshion::SimpleAudioEngine::sharedEngine();
  CocosDenshion::SimpleAudioEngine::createSoundGroup(iVar1,3);
  iVar1 = CocosDenshion::SimpleAudioEngine::sharedEngine();
  CocosDenshion::SimpleAudioEngine::createSoundGroup(iVar1,1);
  iVar1 = CocosDenshion::SimpleAudioEngine::sharedEngine();
  CocosDenshion::SimpleAudioEngine::createSoundGroup(iVar1,2);
  local_194 = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s","checkpoint",&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 4),local_194,1);
  pcVar2 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar1 = cocos2d::CCString::getCString((CCString *)local_194);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar2,iVar1);
  local_198 = 1;
  puVar3 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (this + 0x10),&local_198);
  *puVar3 = 1;
  local_190 = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s","dryfire",&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 4),local_190,0);
  pcVar2 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar1 = cocos2d::CCString::getCString((CCString *)local_190);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar2,iVar1);
  local_198 = 0;
  puVar3 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (this + 0x10),&local_198);
  *puVar3 = 0;
  local_18c = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s",&DAT_007e8d48,&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 4),local_18c,5);
  pcVar2 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar1 = cocos2d::CCString::getCString((CCString *)local_18c);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar2,iVar1);
  local_198 = 5;
  puVar3 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (this + 0x10),&local_198);
  *puVar3 = 0;
  local_188 = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s",&DAT_007e8d4c,&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 4),local_188,8);
  pcVar2 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar1 = cocos2d::CCString::getCString((CCString *)local_188);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar2,iVar1);
  local_198 = 8;
  puVar3 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (this + 0x10),&local_198);
  *puVar3 = 0;
  local_184 = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s","impact",&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 4),local_184,10);
  pcVar2 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar1 = cocos2d::CCString::getCString((CCString *)local_184);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar2,iVar1);
  local_198 = 10;
  puVar3 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (this + 0x10),&local_198);
  *puVar3 = 0;
  local_180 = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s","impact2",&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 4),local_180,0xb);
  pcVar2 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar1 = cocos2d::CCString::getCString((CCString *)local_180);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar2,iVar1);
  local_198 = 0xb;
  puVar3 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (this + 0x10),&local_198);
  *puVar3 = 0;
  local_17c = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s","impact3",&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 4),local_17c,0xc);
  pcVar2 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar1 = cocos2d::CCString::getCString((CCString *)local_17c);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar2,iVar1);
  local_198 = 0xc;
  puVar3 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (this + 0x10),&local_198);
  *puVar3 = 1;
  local_178 = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s","impale",&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 4),local_178,6);
  pcVar2 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar1 = cocos2d::CCString::getCString((CCString *)local_178);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar2,iVar1);
  local_198 = 6;
  puVar3 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (this + 0x10),&local_198);
  *puVar3 = 0;
  local_174 = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s",&DAT_007e8d70,&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 4),local_174,7);
  pcVar2 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar1 = cocos2d::CCString::getCString((CCString *)local_174);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar2,iVar1);
  local_198 = 7;
  puVar3 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (this + 0x10),&local_198);
  *puVar3 = 0;
  local_170 = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s","swipe",&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 4),local_170,2);
  pcVar2 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar1 = cocos2d::CCString::getCString((CCString *)local_170);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar2,iVar1);
  local_198 = 2;
  puVar3 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (this + 0x10),&local_198);
  *puVar3 = 1;
  local_16c = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s","snatch",&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 4),local_16c,0x11);
  pcVar2 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar1 = cocos2d::CCString::getCString((CCString *)local_16c);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar2,iVar1);
  local_198 = 0x11;
  puVar3 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (this + 0x10),&local_198);
  *puVar3 = 1;
  local_168 = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s","throw",&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 4),local_168,3);
  pcVar2 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar1 = cocos2d::CCString::getCString((CCString *)local_168);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar2,iVar1);
  local_198 = 3;
  puVar3 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (this + 0x10),&local_198);
  *puVar3 = 1;
  local_164 = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s","explode",&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 4),local_164,9);
  pcVar2 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar1 = cocos2d::CCString::getCString((CCString *)local_164);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar2,iVar1);
  local_198 = 9;
  puVar3 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (this + 0x10),&local_198);
  *puVar3 = 1;
  local_160 = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s","grenade1",&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 4),local_160,0xd);
  pcVar2 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar1 = cocos2d::CCString::getCString((CCString *)local_160);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar2,iVar1);
  local_198 = 0xd;
  puVar3 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (this + 0x10),&local_198);
  *puVar3 = 1;
  local_15c = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s","grenade2",&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 4),local_15c,0xe);
  pcVar2 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar1 = cocos2d::CCString::getCString((CCString *)local_15c);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar2,iVar1);
  local_198 = 0xe;
  puVar3 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (this + 0x10),&local_198);
  *puVar3 = 1;
  local_158 = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s","deagle",&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 4),local_158,0x12);
  pcVar2 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar1 = cocos2d::CCString::getCString((CCString *)local_158);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar2,iVar1);
  local_198 = 0x12;
  puVar3 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (this + 0x10),&local_198);
  *puVar3 = 0;
  local_154 = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s",&DAT_007e8db4,&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 4),local_154,0x17);
  pcVar2 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar1 = cocos2d::CCString::getCString((CCString *)local_154);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar2,iVar1);
  local_198 = 0x17;
  puVar3 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (this + 0x10),&local_198);
  *puVar3 = 0;
  local_150 = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s","magnum",&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 4),local_150,0x13);
  pcVar2 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar1 = cocos2d::CCString::getCString((CCString *)local_150);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar2,iVar1);
  local_198 = 0x13;
  puVar3 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (this + 0x10),&local_198);
  *puVar3 = 0;
  local_14c = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s","reload",&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 4),local_14c,4);
  pcVar2 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar1 = cocos2d::CCString::getCString((CCString *)local_14c);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar2,iVar1);
  local_198 = 4;
  puVar3 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (this + 0x10),&local_198);
  *puVar3 = 1;
  local_148 = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s","ricochet",&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 4),local_148,0x10);
  pcVar2 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar1 = cocos2d::CCString::getCString((CCString *)local_148);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar2,iVar1);
  local_198 = 0x10;
  puVar3 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (this + 0x10),&local_198);
  *puVar3 = 0;
  local_144 = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s",&DAT_007e8dd8,&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 4),local_144,0x14);
  pcVar2 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar1 = cocos2d::CCString::getCString((CCString *)local_144);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar2,iVar1);
  local_198 = 0x14;
  puVar3 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (this + 0x10),&local_198);
  *puVar3 = 0;
  local_140 = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s","shotgun",&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 4),local_140,0x15);
  pcVar2 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar1 = cocos2d::CCString::getCString((CCString *)local_140);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar2,iVar1);
  local_198 = 0x15;
  puVar3 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (this + 0x10),&local_198);
  *puVar3 = 0;
  local_13c = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s","m93ba",&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 4),local_13c,0x16);
  pcVar2 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar1 = cocos2d::CCString::getCString((CCString *)local_13c);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar2,iVar1);
  local_198 = 0x16;
  puVar3 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (this + 0x10),&local_198);
  *puVar3 = 1;
  local_138 = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s","death1",&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 4),local_138,0x18);
  pcVar2 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar1 = cocos2d::CCString::getCString((CCString *)local_138);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar2,iVar1);
  local_198 = 0x18;
  puVar3 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (this + 0x10),&local_198);
  *puVar3 = 1;
  local_134 = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s","death2",&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 4),local_134,0x19);
  pcVar2 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar1 = cocos2d::CCString::getCString((CCString *)local_134);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar2,iVar1);
  local_198 = 0x19;
  puVar3 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (this + 0x10),&local_198);
  *puVar3 = 1;
  local_130 = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s","death3",&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 4),local_130,0x1a);
  pcVar2 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar1 = cocos2d::CCString::getCString((CCString *)local_130);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar2,iVar1);
  local_198 = 0x1a;
  puVar3 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (this + 0x10),&local_198);
  *puVar3 = 1;
  local_12c = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s","death4",&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 4),local_12c,0x1b);
  pcVar2 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar1 = cocos2d::CCString::getCString((CCString *)local_12c);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar2,iVar1);
  local_198 = 0x1b;
  puVar3 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (this + 0x10),&local_198);
  *puVar3 = 1;
  local_128 = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s","death5",&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 4),local_128,0x1c);
  pcVar2 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar1 = cocos2d::CCString::getCString((CCString *)local_128);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar2,iVar1);
  local_198 = 0x1c;
  puVar3 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (this + 0x10),&local_198);
  *puVar3 = 1;
  local_124 = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s","death6",&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 4),local_124,0x1d);
  pcVar2 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar1 = cocos2d::CCString::getCString((CCString *)local_124);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar2,iVar1);
  local_198 = 0x1d;
  puVar3 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (this + 0x10),&local_198);
  *puVar3 = 1;
  local_120 = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s","death7",&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 4),local_120,0x1e);
  pcVar2 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar1 = cocos2d::CCString::getCString((CCString *)local_120);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar2,iVar1);
  local_198 = 0x1e;
  puVar3 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (this + 0x10),&local_198);
  *puVar3 = 1;
  local_11c = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s","death8",&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 4),local_11c,0x1f);
  pcVar2 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar1 = cocos2d::CCString::getCString((CCString *)local_11c);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar2,iVar1);
  local_198 = 0x1f;
  puVar3 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (this + 0x10),&local_198);
  *puVar3 = 1;
  local_118 = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s","death9",&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 4),local_118,0x20);
  pcVar2 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar1 = cocos2d::CCString::getCString((CCString *)local_118);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar2,iVar1);
  local_198 = 0x20;
  puVar3 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (this + 0x10),&local_198);
  *puVar3 = 1;
  local_114 = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s","clank",&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 4),local_114,0xf);
  pcVar2 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar1 = cocos2d::CCString::getCString((CCString *)local_114);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar2,iVar1);
  local_198 = 0xf;
  puVar3 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (this + 0x10),&local_198);
  *puVar3 = 0;
  local_110 = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s",&DAT_007e8e3c,&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 4),local_110,0x21);
  pcVar2 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar1 = cocos2d::CCString::getCString((CCString *)local_110);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar2,iVar1);
  local_198 = 0x21;
  puVar3 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (this + 0x10),&local_198);
  *puVar3 = 3;
  local_10c = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s","rocket",&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 4),local_10c,0x22);
  pcVar2 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar1 = cocos2d::CCString::getCString((CCString *)local_10c);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar2,iVar1);
  local_198 = 0x22;
  puVar3 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (this + 0x10),&local_198);
  *puVar3 = 3;
  local_108 = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s","silencer",&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 4),local_108,0x2d);
  pcVar2 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar1 = cocos2d::CCString::getCString((CCString *)local_108);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar2,iVar1);
  local_198 = 0x2d;
  puVar3 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (this + 0x10),&local_198);
  *puVar3 = 0;
  local_104 = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s","flame",&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 4),local_104,0x2e);
  pcVar2 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar1 = cocos2d::CCString::getCString((CCString *)local_104);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar2,iVar1);
  local_198 = 0x2e;
  puVar3 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (this + 0x10),&local_198);
  *puVar3 = 3;
  local_100 = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s",&DAT_007e8e5c,&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 4),local_100,0x2f);
  pcVar2 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar1 = cocos2d::CCString::getCString((CCString *)local_100);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar2,iVar1);
  local_198 = 0x2f;
  puVar3 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (this + 0x10),&local_198);
  *puVar3 = 3;
  local_fc = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s","energy",&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 4),local_fc,0x30);
  pcVar2 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar1 = cocos2d::CCString::getCString((CCString *)local_fc);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar2,iVar1);
  local_198 = 0x30;
  puVar3 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (this + 0x10),&local_198);
  *puVar3 = 0;
  local_f8 = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s","proxy",&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 4),local_f8,0x31);
  pcVar2 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar1 = cocos2d::CCString::getCString((CCString *)local_f8);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar2,iVar1);
  local_198 = 0x31;
  puVar3 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (this + 0x10),&local_198);
  *puVar3 = 1;
  local_f4 = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s","bringit",&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 4),local_f4,0x28);
  pcVar2 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar1 = cocos2d::CCString::getCString((CCString *)local_f4);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar2,iVar1);
  local_198 = 0x28;
  puVar3 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (this + 0x10),&local_198);
  *puVar3 = 1;
  local_f0 = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s","cmonboy",&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 4),local_f0,0x29);
  pcVar2 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar1 = cocos2d::CCString::getCString((CCString *)local_f0);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar2,iVar1);
  local_198 = 0x29;
  puVar3 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (this + 0x10),&local_198);
  *puVar3 = 1;
  local_ec = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s","piece",&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 4),local_ec,0x2a);
  pcVar2 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar1 = cocos2d::CCString::getCString((CCString *)local_ec);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar2,iVar1);
  local_198 = 0x2a;
  puVar3 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (this + 0x10),&local_198);
  *puVar3 = 1;
  local_e8 = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s","getsome",&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 4),local_e8,0x61);
  pcVar2 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar1 = cocos2d::CCString::getCString((CCString *)local_e8);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar2,iVar1);
  local_198 = 0x61;
  puVar3 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (this + 0x10),&local_198);
  *puVar3 = 1;
  local_e4 = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s",&DAT_007e8e90,&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 4),local_e4,0x2b);
  pcVar2 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar1 = cocos2d::CCString::getCString((CCString *)local_e4);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar2,iVar1);
  local_198 = 0x2b;
  puVar3 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (this + 0x10),&local_198);
  *puVar3 = 1;
  local_e0 = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s","hoorah",&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 4),local_e0,0x5b);
  pcVar2 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar1 = cocos2d::CCString::getCString((CCString *)local_e0);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar2,iVar1);
  local_198 = 0x5b;
  puVar3 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (this + 0x10),&local_198);
  *puVar3 = 1;
  local_dc = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s","readyup",&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 4),local_dc,0x5c);
  pcVar2 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar1 = cocos2d::CCString::getCString((CCString *)local_dc);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar2,iVar1);
  local_198 = 0x5c;
  puVar3 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (this + 0x10),&local_198);
  *puVar3 = 1;
  local_d8 = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s","moveout",&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 4),local_d8,0x5d);
  pcVar2 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar1 = cocos2d::CCString::getCString((CCString *)local_d8);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar2,iVar1);
  local_198 = 0x5d;
  puVar3 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (this + 0x10),&local_198);
  *puVar3 = 1;
  local_d4 = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s","coverme",&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 4),local_d4,0x5e);
  pcVar2 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar1 = cocos2d::CCString::getCString((CCString *)local_d4);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar2,iVar1);
  local_198 = 0x5e;
  puVar3 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (this + 0x10),&local_198);
  *puVar3 = 1;
  local_d0 = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s","niceshot",&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 4),local_d0,0x5f);
  pcVar2 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar1 = cocos2d::CCString::getCString((CCString *)local_d0);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar2,iVar1);
  local_198 = 0x5f;
  puVar3 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (this + 0x10),&local_198);
  *puVar3 = 1;
  local_cc = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s",&DAT_007e8ec4,&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 4),local_cc,0x60);
  pcVar2 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar1 = cocos2d::CCString::getCString((CCString *)local_cc);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar2,iVar1);
  local_198 = 0x60;
  puVar3 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (this + 0x10),&local_198);
  *puVar3 = 1;
  local_c8 = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s","gotme",&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 4),local_c8,0x2c);
  pcVar2 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar1 = cocos2d::CCString::getCString((CCString *)local_c8);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar2,iVar1);
  local_198 = 0x2c;
  puVar3 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (this + 0x10),&local_198);
  *puVar3 = 1;
  local_c4 = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s","goodgame",&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 4),local_c4,0x32);
  pcVar2 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar1 = cocos2d::CCString::getCString((CCString *)local_c4);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar2,iVar1);
  local_198 = 0x32;
  puVar3 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (this + 0x10),&local_198);
  *puVar3 = 1;
  local_c0 = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s",&DAT_007e8edc,&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 4),local_c0,0x25);
  pcVar2 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar1 = cocos2d::CCString::getCString((CCString *)local_c0);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar2,iVar1);
  local_198 = 0x25;
  puVar3 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (this + 0x10),&local_198);
  *puVar3 = 2;
  local_bc = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s","control",&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 4),local_bc,0x26);
  pcVar2 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar1 = cocos2d::CCString::getCString((CCString *)local_bc);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar2,iVar1);
  local_198 = 0x26;
  puVar3 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (this + 0x10),&local_198);
  *puVar3 = 2;
  local_b8 = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s",&DAT_007e8eec,&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 4),local_b8,0x27);
  pcVar2 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar1 = cocos2d::CCString::getCString((CCString *)local_b8);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar2,iVar1);
  local_198 = 0x27;
  puVar3 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (this + 0x10),&local_198);
  *puVar3 = 2;
  local_b4 = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s","laser",&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 4),local_b4,0x24);
  pcVar2 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar1 = cocos2d::CCString::getCString((CCString *)local_b4);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar2,iVar1);
  local_198 = 0x24;
  puVar3 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (this + 0x10),&local_198);
  *puVar3 = 3;
  local_b0 = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s",&DAT_007e8efc,&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 4),local_b0,0x23);
  pcVar2 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar1 = cocos2d::CCString::getCString((CCString *)local_b0);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar2,iVar1);
  local_198 = 0x23;
  puVar3 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (this + 0x10),&local_198);
  *puVar3 = 0;
  local_ac = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s","welcome",&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 4),local_ac,0x5a);
  pcVar2 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar1 = cocos2d::CCString::getCString((CCString *)local_ac);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar2,iVar1);
  local_198 = 0x5a;
  puVar3 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (this + 0x10),&local_198);
  *puVar3 = 2;
  local_a8 = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s",&DAT_007e8f08,&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 4),local_a8,0x33);
  pcVar2 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar1 = cocos2d::CCString::getCString((CCString *)local_a8);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar2,iVar1);
  local_198 = 0x33;
  puVar3 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (this + 0x10),&local_198);
  *puVar3 = 2;
  local_a4 = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s",&DAT_007e8f10,&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 4),local_a4,0x34);
  pcVar2 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar1 = cocos2d::CCString::getCString((CCString *)local_a4);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar2,iVar1);
  local_198 = 0x34;
  puVar3 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (this + 0x10),&local_198);
  *puVar3 = 2;
  local_a0 = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s","green",&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 4),local_a0,0x35);
  pcVar2 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar1 = cocos2d::CCString::getCString((CCString *)local_a0);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar2,iVar1);
  local_198 = 0x35;
  puVar3 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (this + 0x10),&local_198);
  *puVar3 = 2;
  local_9c = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s","basics",&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 4),local_9c,0x36);
  pcVar2 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar1 = cocos2d::CCString::getCString((CCString *)local_9c);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar2,iVar1);
  local_198 = 0x36;
  puVar3 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (this + 0x10),&local_198);
  *puVar3 = 2;
  local_98 = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s",&DAT_007e8f28,&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 4),local_98,0x37);
  pcVar2 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar1 = cocos2d::CCString::getCString((CCString *)local_98);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar2,iVar1);
  local_198 = 0x37;
  puVar3 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (this + 0x10),&local_198);
  *puVar3 = 2;
  local_94 = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s",&DAT_007e8f30,&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 4),local_94,0x38);
  pcVar2 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar1 = cocos2d::CCString::getCString((CCString *)local_94);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar2,iVar1);
  local_198 = 0x38;
  puVar3 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (this + 0x10),&local_198);
  *puVar3 = 2;
  local_90 = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s",&DAT_007e8f38,&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 4),local_90,0x39);
  pcVar2 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar1 = cocos2d::CCString::getCString((CCString *)local_90);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar2,iVar1);
  local_198 = 0x39;
  puVar3 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (this + 0x10),&local_198);
  *puVar3 = 2;
  local_8c = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s","pickup",&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 4),local_8c,0x3a);
  pcVar2 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar1 = cocos2d::CCString::getCString((CCString *)local_8c);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar2,iVar1);
  local_198 = 0x3a;
  puVar3 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (this + 0x10),&local_198);
  *puVar3 = 2;
  local_88 = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s",&DAT_007e8f48,&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 4),local_88,0x3b);
  pcVar2 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar1 = cocos2d::CCString::getCString((CCString *)local_88);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar2,iVar1);
  local_198 = 0x3b;
  puVar3 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (this + 0x10),&local_198);
  *puVar3 = 2;
  local_84 = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s","switch",&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 4),local_84,0x3c);
  pcVar2 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar1 = cocos2d::CCString::getCString((CCString *)local_84);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar2,iVar1);
  local_198 = 0x3c;
  puVar3 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (this + 0x10),&local_198);
  *puVar3 = 2;
  local_80 = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s",&DAT_007e8f58,&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 4),local_80,0x3d);
  pcVar2 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar1 = cocos2d::CCString::getCString((CCString *)local_80);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar2,iVar1);
  local_198 = 0x3d;
  puVar3 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (this + 0x10),&local_198);
  *puVar3 = 2;
  local_7c = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s",&DAT_007e8f60,&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 4),local_7c,0x3e);
  pcVar2 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar1 = cocos2d::CCString::getCString((CCString *)local_7c);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar2,iVar1);
  local_198 = 0x3e;
  puVar3 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (this + 0x10),&local_198);
  *puVar3 = 2;
  local_78 = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s",&DAT_007e8f68,&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 4),local_78,0x3f);
  pcVar2 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar1 = cocos2d::CCString::getCString((CCString *)local_78);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar2,iVar1);
  local_198 = 0x3f;
  puVar3 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (this + 0x10),&local_198);
  *puVar3 = 2;
  local_74 = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s","center",&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 4),local_74,0x40);
  pcVar2 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar1 = cocos2d::CCString::getCString((CCString *)local_74);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar2,iVar1);
  local_198 = 0x40;
  puVar3 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (this + 0x10),&local_198);
  *puVar3 = 2;
  local_70 = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s",&DAT_007e8f78,&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 4),local_70,0x41);
  pcVar2 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar1 = cocos2d::CCString::getCString((CCString *)local_70);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar2,iVar1);
  local_198 = 0x41;
  puVar3 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (this + 0x10),&local_198);
  *puVar3 = 2;
  local_6c = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s","targets",&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 4),local_6c,0x42);
  pcVar2 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar1 = cocos2d::CCString::getCString((CCString *)local_6c);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar2,iVar1);
  local_198 = 0x42;
  puVar3 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (this + 0x10),&local_198);
  *puVar3 = 2;
  local_68 = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s","hoorah",&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 4),local_68,0x5b);
  pcVar2 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar1 = cocos2d::CCString::getCString((CCString *)local_68);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar2,iVar1);
  local_198 = 0x5b;
  puVar3 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (this + 0x10),&local_198);
  *puVar3 = 2;
  local_64 = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s","grenades",&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 4),local_64,0x44);
  pcVar2 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar1 = cocos2d::CCString::getCString((CCString *)local_64);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar2,iVar1);
  local_198 = 0x44;
  puVar3 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (this + 0x10),&local_198);
  *puVar3 = 2;
  local_60 = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s","explosives",&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 4),local_60,0x45);
  pcVar2 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar1 = cocos2d::CCString::getCString((CCString *)local_60);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar2,iVar1);
  local_198 = 0x45;
  puVar3 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (this + 0x10),&local_198);
  *puVar3 = 2;
  local_5c = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s",&DAT_007e8fa0,&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 4),local_5c,0x46);
  pcVar2 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar1 = cocos2d::CCString::getCString((CCString *)local_5c);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar2,iVar1);
  local_198 = 0x46;
  puVar3 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (this + 0x10),&local_198);
  *puVar3 = 2;
  local_58 = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s","mecha",&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 4),local_58,0x47);
  pcVar2 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar1 = cocos2d::CCString::getCString((CCString *)local_58);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar2,iVar1);
  local_198 = 0x47;
  puVar3 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (this + 0x10),&local_198);
  *puVar3 = 2;
  local_54 = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s","future",&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 4),local_54,0x48);
  pcVar2 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar1 = cocos2d::CCString::getCString((CCString *)local_54);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar2,iVar1);
  local_198 = 0x48;
  puVar3 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (this + 0x10),&local_198);
  *puVar3 = 2;
  local_50 = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s","perfect",&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 4),local_50,0x49);
  pcVar2 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar1 = cocos2d::CCString::getCString((CCString *)local_50);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar2,iVar1);
  local_198 = 0x49;
  puVar3 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (this + 0x10),&local_198);
  *puVar3 = 2;
  local_4c = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s","think",&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 4),local_4c,0x4a);
  pcVar2 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar1 = cocos2d::CCString::getCString((CCString *)local_4c);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar2,iVar1);
  local_198 = 0x4a;
  puVar3 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (this + 0x10),&local_198);
  *puVar3 = 2;
  local_48 = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s","disassemble",&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 4),local_48,0x59);
  pcVar2 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar1 = cocos2d::CCString::getCString((CCString *)local_48);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar2,iVar1);
  local_198 = 0x59;
  puVar3 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (this + 0x10),&local_198);
  *puVar3 = 2;
  local_44 = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s","malfunction",&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 4),local_44,0x4b);
  pcVar2 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar1 = cocos2d::CCString::getCString((CCString *)local_44);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar2,iVar1);
  local_198 = 0x4b;
  puVar3 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (this + 0x10),&local_198);
  *puVar3 = 2;
  local_40 = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s","destroy",&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 4),local_40,0x4c);
  pcVar2 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar1 = cocos2d::CCString::getCString((CCString *)local_40);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar2,iVar1);
  local_198 = 0x4c;
  puVar3 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (this + 0x10),&local_198);
  *puVar3 = 1;
  local_3c = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s","standdown",&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 4),local_3c,0x4d);
  pcVar2 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar1 = cocos2d::CCString::getCString((CCString *)local_3c);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar2,iVar1);
  local_198 = 0x4d;
  puVar3 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (this + 0x10),&local_198);
  *puVar3 = 2;
  local_38 = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s",&DAT_007e8ff4,&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 4),local_38,0x4e);
  pcVar2 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar1 = cocos2d::CCString::getCString((CCString *)local_38);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar2,iVar1);
  local_198 = 0x4e;
  puVar3 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (this + 0x10),&local_198);
  *puVar3 = 2;
  local_34 = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s",&DAT_007e8ffc,&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 4),local_34,0x4f);
  pcVar2 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar1 = cocos2d::CCString::getCString((CCString *)local_34);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar2,iVar1);
  local_198 = 0x4f;
  puVar3 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (this + 0x10),&local_198);
  *puVar3 = 2;
  local_30 = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s",&DAT_007e9004,&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 4),local_30,0x50);
  pcVar2 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar1 = cocos2d::CCString::getCString((CCString *)local_30);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar2,iVar1);
  local_198 = 0x50;
  puVar3 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (this + 0x10),&local_198);
  *puVar3 = 2;
  local_2c = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s","melee",&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 4),local_2c,0x51);
  pcVar2 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar1 = cocos2d::CCString::getCString((CCString *)local_2c);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar2,iVar1);
  local_198 = 0x51;
  puVar3 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (this + 0x10),&local_198);
  *puVar3 = 2;
  local_28 = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s",&DAT_007e9014,&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 4),local_28,0x52);
  pcVar2 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar1 = cocos2d::CCString::getCString((CCString *)local_28);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar2,iVar1);
  local_198 = 0x52;
  puVar3 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (this + 0x10),&local_198);
  *puVar3 = 2;
  local_24 = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s","thanks",&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 4),local_24,0x53);
  pcVar2 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar1 = cocos2d::CCString::getCString((CCString *)local_24);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar2,iVar1);
  local_198 = 0x53;
  puVar3 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (this + 0x10),&local_198);
  *puVar3 = 2;
  local_20 = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s","boots",&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 4),local_20,0x54);
  pcVar2 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar1 = cocos2d::CCString::getCString((CCString *)local_20);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar2,iVar1);
  local_198 = 0x54;
  puVar3 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (this + 0x10),&local_198);
  *puVar3 = 2;
  local_1c = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s","jumps",&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 4),local_1c,0x55);
  pcVar2 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar1 = cocos2d::CCString::getCString((CCString *)local_1c);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar2,iVar1);
  local_198 = 0x55;
  puVar3 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (this + 0x10),&local_198);
  *puVar3 = 2;
  local_18 = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s","thrust",&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 4),local_18,0x56);
  pcVar2 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar1 = cocos2d::CCString::getCString((CCString *)local_18);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar2,iVar1);
  local_198 = 0x56;
  puVar3 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (this + 0x10),&local_198);
  *puVar3 = 2;
  local_14 = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s","gotit",&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 4),local_14,0x57);
  pcVar2 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar1 = cocos2d::CCString::getCString((CCString *)local_14);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar2,iVar1);
  local_198 = 0x57;
  puVar3 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (this + 0x10),&local_198);
  *puVar3 = 2;
  local_10 = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s",&DAT_007e9044,&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 4),local_10,0x58);
  pcVar2 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar1 = cocos2d::CCString::getCString((CCString *)local_10);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar2,iVar1);
  local_198 = 0x58;
  puVar3 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (this + 0x10),&local_198);
  *puVar3 = 2;
  local_c = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s",&DAT_007e904c,&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 4),local_c,0x43);
  pcVar2 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar1 = cocos2d::CCString::getCString((CCString *)local_c);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar2,iVar1);
  local_198 = 0x43;
  puVar3 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (this + 0x10),&local_198);
  *puVar3 = 2;
  return;
}

// ---- Sound::loadMapSounds  @ 0x407bc8
/* Sound::loadMapSounds(MapType) */

void Sound::loadMapSounds(void)

{
  return;
}

// ---- Sound::swapEffect  @ 0x407bd4
/* Sound::swapEffect(int, std::string, int) */

void __thiscall Sound::swapEffect(Sound *this,int param_1,undefined4 param_3,undefined4 param_4)

{
  char *pcVar1;
  int iVar2;
  undefined4 uVar3;
  undefined4 *puVar4;
  int local_18;
  Sound *local_14;
  CCString *local_10;
  CCObject *local_c;
  
  local_18 = param_1;
  local_14 = this;
  local_10 = (CCString *)cocos2d::CCDictionary::objectForKey(*(CCDictionary **)(this + 4),param_1);
  if (local_10 != (CCString *)0x0) {
    pcVar1 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
    iVar2 = cocos2d::CCString::getCString(local_10);
    CocosDenshion::SimpleAudioEngine::unloadEffect(pcVar1,iVar2);
    cocos2d::CCDictionary::removeObjectForKey(*(CCDictionary **)(local_14 + 4),local_18);
  }
  uVar3 = FUN_007c5300(param_3);
  local_c = (CCObject *)cocos2d::CCString::createWithFormat("%s.%s",uVar3,&DAT_007e8d3c);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(local_14 + 4),local_c,local_18);
  pcVar1 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  iVar2 = cocos2d::CCString::getCString((CCString *)local_c);
  CocosDenshion::SimpleAudioEngine::preloadEffect(pcVar1,iVar2);
  puVar4 = (undefined4 *)
           std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                     ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                      (local_14 + 0x10),&local_18);
  *puVar4 = param_4;
  return;
}

// ---- Sound::isPlayingMusic  @ 0x407c88
/* Sound::isPlayingMusic() */

undefined4 Sound::isPlayingMusic(void)

{
  undefined4 uVar1;
  
  CocosDenshion::SimpleAudioEngine::sharedEngine();
  uVar1 = CocosDenshion::SimpleAudioEngine::isBackgroundMusicPlaying();
  return uVar1;
}

// ---- Sound::playMusicFile  @ 0x407ca4
/* Sound::playMusicFile(std::string, float, bool) */

void __thiscall Sound::playMusicFile(Sound *this,undefined4 param_2,undefined4 param_3,bool param_4)

{
  bool bVar1;
  char cVar2;
  SimpleAudioEngine *pSVar3;
  char *pcVar4;
  float extraout_s0;
  
  if ((this[0x29] == (Sound)0x0) || (cVar2 = isPlayingMusic(), cVar2 == '\x01')) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (bVar1) {
    pSVar3 = (SimpleAudioEngine *)CocosDenshion::SimpleAudioEngine::sharedEngine();
    pcVar4 = (char *)FUN_007c5300(param_2);
    CocosDenshion::SimpleAudioEngine::playBackgroundMusic(pSVar3,pcVar4,param_4);
  }
  pSVar3 = (SimpleAudioEngine *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  CocosDenshion::SimpleAudioEngine::setBackgroundMusicVolume(pSVar3,extraout_s0);
  return;
}

// ---- Sound::stopMusic  @ 0x407d08
/* Sound::stopMusic() */

void Sound::stopMusic(void)

{
  SimpleAudioEngine *this;
  
  this = (SimpleAudioEngine *)CocosDenshion::SimpleAudioEngine::sharedEngine();
  CocosDenshion::SimpleAudioEngine::stopBackgroundMusic(this);
  return;
}

// ---- Sound::stopAll  @ 0x407d20
/* Sound::stopAll() */

void Sound::stopAll(void)

{
  stopMusic();
  CocosDenshion::SimpleAudioEngine::sharedEngine();
  CocosDenshion::SimpleAudioEngine::stopAllEffects();
  return;
}

// ---- Sound::playSoundWithVoice  @ 0x407d40
/* Sound::playSoundWithVoice(int, int) */

void Sound::playSoundWithVoice(int param_1,int param_2)

{
  char *pcVar1;
  int iVar2;
  undefined4 *puVar3;
  float extraout_s0;
  float extraout_s1;
  float extraout_s2;
  int local_20;
  int local_1c;
  CCString *local_14;
  
  local_1c = param_1;
  if (*(char *)(param_1 + 0x28) != '\0') {
    local_20 = param_2;
    local_14 = (CCString *)
               cocos2d::CCDictionary::objectForKey(*(CCDictionary **)(param_1 + 4),param_2);
    if (local_14 != (CCString *)0x0) {
      pcVar1 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
      iVar2 = cocos2d::CCString::getCString(local_14);
      puVar3 = (undefined4 *)
               std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
                         ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                          (local_1c + 0x10),&local_20);
      CocosDenshion::SimpleAudioEngine::playEffect
                (pcVar1,iVar2,SUB41(*puVar3,0),extraout_s0,extraout_s1,extraout_s2);
    }
  }
  *(undefined4 *)(local_1c + 0x30) = 0x3f800000;
  *(undefined4 *)(local_1c + 0x34) = 0x3f800000;
  return;
}

// ---- Sound::playSound  @ 0x407dc0
/* Sound::playSound(int) */

void __thiscall Sound::playSound(Sound *this,int param_1)

{
  int local_10;
  Sound *local_c;
  
  local_10 = param_1;
  local_c = this;
  std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::operator[]
            ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)(this + 0x10),
             &local_10);
  playSoundWithVoice((int)local_c,param_1);
  return;
}

// ---- Sound::loopSoundVP  @ 0x407dec
/* Sound::loopSoundVP(int, float, float) */

float __thiscall Sound::loopSoundVP(Sound *this,int param_1,float param_2,float param_3)

{
  CCString *this_00;
  char *pcVar1;
  int iVar2;
  undefined4 in_r2;
  undefined4 in_r3;
  float extraout_s0;
  float extraout_s1;
  float extraout_s2;
  
  *(undefined4 *)(this + 0x30) = in_r2;
  *(undefined4 *)(this + 0x34) = in_r3;
  if (this[0x28] != (Sound)0x0) {
    this_00 = (CCString *)cocos2d::CCDictionary::objectForKey(*(CCDictionary **)(this + 4),param_1);
    pcVar1 = (char *)CocosDenshion::SimpleAudioEngine::sharedEngine();
    iVar2 = cocos2d::CCString::getCString(this_00);
    param_2 = (float)CocosDenshion::SimpleAudioEngine::playEffect
                               (pcVar1,iVar2,false,extraout_s0,extraout_s1,extraout_s2);
  }
  *(undefined4 *)(this + 0x30) = 0x3f800000;
  *(undefined4 *)(this + 0x34) = 0x3f800000;
  return param_2;
}

// ---- Sound::stopSound  @ 0x407e60
/* Sound::stopSound(int) */

void __thiscall Sound::stopSound(Sound *this,int param_1)

{
  uint uVar1;
  
  uVar1 = CocosDenshion::SimpleAudioEngine::sharedEngine();
  CocosDenshion::SimpleAudioEngine::stopEffect(uVar1,param_1);
  return;
}

// ---- Sound::playSoundVP  @ 0x407e80
/* Sound::playSoundVP(int, float, float) */

void __thiscall Sound::playSoundVP(Sound *this,int param_1,float param_2,float param_3)

{
  undefined4 in_r2;
  undefined4 in_r3;
  
  *(undefined4 *)(this + 0x30) = in_r2;
  *(undefined4 *)(this + 0x34) = in_r3;
  playSound(this,param_1);
  return;
}

// ---- Sound::volumeForPosition  @ 0x407ea8
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x00407ede */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* Sound::volumeForPosition(cpVect, int, int) */

float Sound::volumeForPosition
                (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                undefined4 param_5,undefined4 param_6,undefined4 param_7,undefined4 param_8,
                undefined4 param_9,undefined4 param_10,undefined4 param_11,undefined4 param_12,
                undefined4 param_13,undefined4 param_14)

{
  bool bVar1;
  uint in_fpscr;
  float fVar2;
  double dVar3;
  float fVar4;
  float fVar5;
  undefined4 local_30 [2];
  undefined4 local_28;
  undefined4 local_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  
  FUN_004048a0(SUB84((double)(float)centerPoint,0),param_2,SUB84((double)centerPoint._4_4_,0),
               local_30);
  FUN_004048c8(param_9,param_2,param_11,param_4,local_30[0],param_6,local_28,&local_20);
  dVar3 = (double)cpvlength(local_20,uStack_1c,uStack_18,uStack_14);
  fVar4 = (float)dVar3;
  fVar2 = (float)VectorSignedToFloat(param_13,(byte)(in_fpscr >> 0x16) & 3);
  fVar5 = (float)VectorSignedToFloat(param_14,(byte)(in_fpscr >> 0x16) & 3);
  in_fpscr = in_fpscr & 0xfffffff;
  if (1.0 <= (fVar2 - fVar4) / fVar5) {
    bVar1 = true;
  }
  else {
    fVar2 = (float)VectorSignedToFloat(param_13,(byte)(in_fpscr >> 0x16) & 3);
    fVar5 = (float)VectorSignedToFloat(param_14,(byte)(in_fpscr >> 0x16) & 3);
    bVar1 = 0.0 < (fVar2 - fVar4) / fVar5;
  }
  if (bVar1) {
    fVar2 = (float)VectorSignedToFloat(param_13,(byte)(in_fpscr >> 0x16) & 3);
    fVar5 = (float)VectorSignedToFloat(param_14,(byte)(in_fpscr >> 0x16) & 3);
    if (1.0 <= (fVar2 - fVar4) / fVar5) {
      fVar2 = 1.0;
    }
    else {
      fVar5 = (float)VectorSignedToFloat(param_13,(byte)(in_fpscr >> 0x16) & 3);
      fVar2 = (float)VectorSignedToFloat(param_14,(byte)(in_fpscr >> 0x16) & 3);
      fVar2 = (fVar5 - fVar4) / fVar2;
    }
  }
  else {
    fVar2 = 0.0;
  }
  return fVar2;
}

// ---- Sound::playSoundPosition  @ 0x407ff8
/* Sound::playSoundPosition(int, cpVect) */

void Sound::playSoundPosition
               (Sound *param_1,int param_2,undefined4 param_3,undefined4 param_4,undefined4 param_5,
               undefined4 param_6)

{
  undefined4 uVar1;
  undefined4 local_8;
  undefined4 uStack_4;
  
  local_8 = param_3;
  uStack_4 = param_4;
  uVar1 = volumeForPosition(param_1,&local_8,param_3,param_4,param_5,param_6,1000,0x514);
  *(undefined4 *)(param_1 + 0x30) = uVar1;
  playSound(param_1,param_2);
  return;
}

// ---- Sound::playSoundPositionVP  @ 0x408044
/* Sound::playSoundPositionVP(int, cpVect, float, float) */

void Sound::playSoundPositionVP
               (Sound *param_1,int param_2,undefined4 param_3,undefined4 param_4,undefined4 param_5,
               undefined4 param_6,float param_7,undefined4 param_8)

{
  float fVar1;
  undefined4 local_8;
  undefined4 uStack_4;
  
  local_8 = param_3;
  uStack_4 = param_4;
  fVar1 = (float)volumeForPosition(param_1,&local_8,param_3,param_4,param_5,param_6,1000,0x514);
  *(float *)(param_1 + 0x30) = fVar1 * param_7;
  *(undefined4 *)(param_1 + 0x34) = param_8;
  playSound(param_1,param_2);
  return;
}

// ---- Sound::playTaunt  @ 0x4080a4
/* Sound::playTaunt(std::string, cpVect) */

bool Sound::playTaunt(int param_1,string *param_2,undefined4 param_3,undefined4 param_4,
                     undefined4 param_5,undefined4 param_6)

{
  CCInteger *this;
  undefined4 uVar1;
  
  this = (CCInteger *)cocos2d::CCDictionary::objectForKey(*(CCDictionary **)(param_1 + 8),param_2);
  if (this != (CCInteger *)0x0) {
    uVar1 = cocos2d::CCInteger::getValue(this);
    playSoundPosition(param_1,uVar1,param_3,param_4,param_5,param_6);
  }
  return this != (CCInteger *)0x0;
}

// ---- Sound::getRandomTaunt  @ 0x408100
/* Sound::getRandomTaunt() */

undefined4 __thiscall Sound::getRandomTaunt(Sound *this)

{
  undefined4 uVar1;
  undefined4 uVar2;
  uint uVar3;
  CCInteger *this_00;
  undefined4 extraout_r1;
  uint local_10;
  
  uVar1 = FUN_00404880();
  uVar2 = cocos2d::CCArray::count(*(CCArray **)(this + 0xc));
  __aeabi_uidivmod(uVar1,uVar2);
  local_10 = FUN_0040486c(extraout_r1);
  uVar3 = cocos2d::CCArray::count(*(CCArray **)(this + 0xc));
  if (uVar3 <= local_10) {
    local_10 = 0;
  }
  this_00 = (CCInteger *)cocos2d::CCArray::objectAtIndex(*(CCArray **)(this + 0xc),local_10);
  uVar1 = cocos2d::CCInteger::getValue(this_00);
  return uVar1;
}
