// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 9 functions

// ---- Radar::create  @ 0x34a10c
/* Radar::create() */

Radar * Radar::create(void)

{
  bool bVar1;
  Radar *this;
  int iVar2;
  
  this = operator_new(0xf0);
  Radar(this);
  if ((this == (Radar *)0x0) || (iVar2 = (**(code **)(*(int *)this + 0x18))(this), iVar2 == 0)) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (bVar1) {
    cocos2d::CCObject::autorelease((CCObject *)this);
  }
  else {
    if (this != (Radar *)0x0) {
      (**(code **)(*(int *)this + 8))(this);
    }
    this = (Radar *)0x0;
  }
  return this;
}

// ---- Radar::Radar  @ 0x3cd82c
/* Radar::Radar() */

Radar * __thiscall Radar::Radar(Radar *this)

{
  cocos2d::CCNode::CCNode((CCNode *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_00918fc8;
  cocos2d::CCPoint::CCPoint((CCPoint *)(this + 0xe8));
  return this;
}

// ---- Radar::init  @ 0x3cd870
/* Radar::init() */

bool __thiscall Radar::init(Radar *this)

{
  char cVar1;
  undefined4 uVar2;
  CCNotificationCenter *this_00;
  undefined8 uVar3;
  CCPoint aCStack_20 [8];
  code *local_18;
  undefined4 local_14;
  
  cVar1 = cocos2d::CCNode::init();
  if (cVar1 == '\x01') {
    uVar2 = cocos2d::CCDictionary::create();
    *(undefined4 *)(this + 0xe4) = uVar2;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0xe4));
    this_00 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    local_18 = (code *)0x3cdad9;
    local_14 = 0;
    uVar3 = cocos2d::CCNotificationCenter::addObserver
                      (this_00,(CCObject *)this,(_func_void_CCObject_ptr *)0x3cdad9,(char *)0x0,
                       (CCObject *)"RadarAlert");
    cocos2d::CCPoint::CCPoint(aCStack_20,(float)uVar3,(float)((ulonglong)uVar3 >> 0x20));
    cocos2d::CCPoint::operator=((CCPoint *)(this + 0xe8),aCStack_20);
  }
  return cVar1 == '\x01';
}

// ---- Radar::~Radar  @ 0x3cd934
/* WARNING: Removing unreachable block (ram,0x003cd97a) */
/* Radar::~Radar() */

Radar * __thiscall Radar::~Radar(Radar *this)

{
  CCNotificationCenter *this_00;
  
  *(undefined ***)this = &PTR_copyWithZone_1_00918fc8;
  this_00 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::removeAllObservers(this_00,(CCObject *)this);
  cocos2d::CCNode::removeAllChildren((CCNode *)this);
  cocos2d::CCObject::release(*(CCObject **)(this + 0xe4));
  cocos2d::CCNode::~CCNode((CCNode *)this);
  return this;
}

// ---- Radar::~Radar  @ 0x3cd994
/* Radar::~Radar() */

Radar * __thiscall Radar::~Radar(Radar *this)

{
  ~Radar(this);
  operator_delete(this);
  return this;
}

// ---- Radar::addAlert  @ 0x3cd9b0
/* Radar::addAlert(std::string) */

void __thiscall Radar::addAlert(Radar *this,string *param_2)

{
  CCObject *this_00;
  int *piVar1;
  code *pcVar2;
  float extraout_s0;
  float extraout_s1;
  CCPoint aCStack_18 [12];
  
  this_00 = (CCObject *)ArrowAlert::create();
  pcVar2 = *(code **)(*(int *)this_00 + 0x7c);
  cocos2d::CCPoint::CCPoint(aCStack_18,extraout_s0,extraout_s1);
  (*pcVar2)(this_00,aCStack_18);
  (**(code **)(*(int *)this_00 + 0x4c))(this_00,this + 0xe8);
  (**(code **)(*(int *)this + 200))(this,this_00);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 0xe4),this_00,param_2);
  (**(code **)(*(int *)this_00 + 0x90))(this_00,0);
  piVar1 = (int *)ArrowAlert::getSprite((ArrowAlert *)this_00);
  (**(code **)(*piVar1 + 0x1a4))(piVar1,0);
  return;
}

// ---- Radar::removeAlert  @ 0x3cda40
/* Radar::removeAlert(std::string) */

void __thiscall Radar::removeAlert(Radar *this,string *param_2)

{
  undefined4 uVar1;
  
  uVar1 = cocos2d::CCDictionary::objectForKey(*(CCDictionary **)(this + 0xe4),param_2);
  (**(code **)(*(int *)this + 0xf4))(this,uVar1,0);
  cocos2d::CCDictionary::removeObjectForKey(*(CCDictionary **)(this + 0xe4),param_2);
  return;
}

// ---- Radar::findCollisionObjectById  @ 0x3cda80
/* Radar::findCollisionObjectById(std::string) */

int __thiscall Radar::findCollisionObjectById(undefined4 param_1,string *param_2)

{
  undefined4 local_c;
  
  local_c = cocos2d::CCDictionary::objectForKey(peerSoldiers,param_2);
  if ((local_c == 0) && (allEnemies != (CCDictionary *)0x0)) {
    local_c = cocos2d::CCDictionary::objectForKey(allEnemies,param_2);
  }
  return local_c;
}

// ---- Radar::onRadarAlert  @ 0x3cdad8
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003cdb48 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* Radar::onRadarAlert(cocos2d::CCObject*) */

void Radar::onRadarAlert(CCObject *param_1)

{
  char cVar1;
  undefined4 uVar2;
  int *piVar3;
  int iVar4;
  CCString *in_r1;
  bool bVar5;
  CCDictionary *this;
  code *pcVar6;
  undefined4 in_fpscr;
  byte bVar7;
  float fVar8;
  undefined4 in_s1;
  undefined4 in_s3;
  undefined4 in_s5;
  double dVar9;
  undefined1 auStack_74 [4];
  string local_70;
  undefined1 local_6f;
  undefined1 local_6e;
  CCString *local_6c;
  int *local_68;
  ArrowAlert *local_64;
  undefined4 local_60;
  undefined4 uStack_5c;
  undefined4 uStack_58;
  undefined4 uStack_54;
  undefined1 local_50 [16];
  undefined4 local_40 [2];
  undefined4 local_38;
  undefined4 local_30 [2];
  undefined4 local_28;
  undefined4 local_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  
  bVar7 = (byte)((uint)in_fpscr >> 0x18);
  local_6c = in_r1;
  uVar2 = cocos2d::CCString::getCString(in_r1);
  FUN_0079a3f4(local_30);
  FUN_007c6a60(&local_20,uVar2,local_30);
  local_68 = (int *)findCollisionObjectById((Radar *)param_1,&local_20);
  FUN_007c5914(&local_20);
  FUN_0079a3fc(local_30);
  if (local_68 != (int *)0x0) {
    (**(code **)(*local_68 + 0x1ac))(&local_60,local_68);
    FUN_003cc8f0(0,in_s1,0,local_50);
    cVar1 = FUN_003ccc60(local_60,uStack_5c,uStack_58,uStack_54);
    if (cVar1 != '\x01') {
      (**(code **)(*local_68 + 0x1ac))(local_40,local_68);
      FUN_003cc8f0(SUB84((double)(float)centerPoint,0),in_s1,SUB84((double)centerPoint._4_4_,0),
                   local_30);
      FUN_003cc918(local_40[0],in_s1,local_38,in_s3,local_30[0],in_s5,local_28,&local_20);
      dVar9 = (double)cpvlength(local_20,uStack_1c,uStack_18,uStack_14);
      if ((char)(bVar7 & 0xf | (byte)(((uint)(dVar9 < 1200.0) << 0x1f) >> 0x18) |
                 (byte)(((uint)(dVar9 == 1200.0) << 0x1e) >> 0x18) |
                (byte)(((uint)(1200.0 <= dVar9) << 0x1d) >> 0x18)) < '\0') {
        bVar5 = true;
        goto LAB_003cdbec;
      }
    }
  }
  bVar5 = false;
LAB_003cdbec:
  if (bVar5) {
    this = *(CCDictionary **)(param_1 + 0xe4);
    uVar2 = cocos2d::CCString::getCString(local_6c);
    FUN_0079a3f4(auStack_74);
    FUN_007c6a60(&local_70,uVar2,auStack_74);
    local_64 = (ArrowAlert *)cocos2d::CCDictionary::objectForKey(this,&local_70);
    FUN_007c5914(&local_70);
    FUN_0079a3fc(auStack_74);
    if (local_64 != (ArrowAlert *)0x0) {
      (**(code **)(*(int *)local_64 + 0x90))(local_64,1);
      piVar3 = (int *)ArrowAlert::getSprite(local_64);
      (**(code **)(*piVar3 + 0x1a4))(piVar3,200);
      piVar3 = hostSoldier;
      pcVar6 = *(code **)(*hostSoldier + 0x300);
      uVar2 = (**(code **)(*local_68 + 0x1c4))(local_68);
      iVar4 = (*pcVar6)(piVar3,uVar2);
      if (iVar4 == 0) {
        piVar3 = (int *)ArrowAlert::getSprite(local_64);
        pcVar6 = *(code **)(*piVar3 + 0x1bc);
        uVar2 = FUN_003cc854(0xff,0,0);
        local_70 = SUB41(uVar2,0);
        local_6f = (undefined1)((uint)uVar2 >> 8);
        local_6e = (undefined1)((uint)uVar2 >> 0x10);
        fVar8 = (float)(*pcVar6)(piVar3,&local_70);
        ArrowAlert::setArrowScale(local_64,fVar8);
      }
      else {
        piVar3 = (int *)ArrowAlert::getSprite(local_64);
        pcVar6 = *(code **)(*piVar3 + 0x1bc);
        uVar2 = FUN_003cc854(0,0xff,0);
        local_70 = SUB41(uVar2,0);
        local_6f = (undefined1)((uint)uVar2 >> 8);
        local_6e = (undefined1)((uint)uVar2 >> 0x10);
        fVar8 = (float)(*pcVar6)(piVar3,&local_70);
        ArrowAlert::setArrowScale(local_64,fVar8);
      }
    }
  }
  return;
}
