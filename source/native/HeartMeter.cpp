// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 6 functions

// ---- HeartMeter::create  @ 0x34a02c
/* HeartMeter::create() */

HeartMeter * HeartMeter::create(void)

{
  bool bVar1;
  HeartMeter *this;
  int iVar2;
  
  this = operator_new(0xf0);
  HeartMeter(this);
  if ((this == (HeartMeter *)0x0) || (iVar2 = (**(code **)(*(int *)this + 0x18))(this), iVar2 == 0))
  {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (bVar1) {
    cocos2d::CCObject::autorelease((CCObject *)this);
  }
  else {
    if (this != (HeartMeter *)0x0) {
      (**(code **)(*(int *)this + 8))(this);
    }
    this = (HeartMeter *)0x0;
  }
  return this;
}

// ---- HeartMeter::HeartMeter  @ 0x35260c
/* HeartMeter::HeartMeter() */

HeartMeter * __thiscall HeartMeter::HeartMeter(HeartMeter *this)

{
  cocos2d::CCNode::CCNode((CCNode *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_009129b8;
  return this;
}

// ---- HeartMeter::init  @ 0x352638
/* HeartMeter::init() */

bool __thiscall HeartMeter::init(HeartMeter *this)

{
  char cVar1;
  undefined4 uVar2;
  code *pcVar3;
  undefined4 uVar4;
  undefined8 uVar5;
  CCPoint local_18;
  undefined1 local_17;
  undefined1 local_16;
  
  cVar1 = cocos2d::CCNode::init();
  if (cVar1 == '\x01') {
    uVar2 = cocos2d::CCSprite::createWithSpriteFrameName("healthBar.png");
    *(undefined4 *)(this + 0xe4) = uVar2;
    uVar5 = cocos2d::CCObject::retain(*(CCObject **)(this + 0xe4));
    pcVar3 = *(code **)(**(int **)(this + 0xe4) + 0x7c);
    uVar2 = *(undefined4 *)(this + 0xe4);
    cocos2d::CCPoint::CCPoint(&local_18,(float)uVar5,(float)((ulonglong)uVar5 >> 0x20));
    (*pcVar3)(uVar2,&local_18);
    (**(code **)(*(int *)this + 0xcc))(this,*(undefined4 *)(this + 0xe4),0);
    uVar2 = cocos2d::CCSprite::createWithSpriteFrameName("bar.png");
    *(undefined4 *)(this + 0xe8) = uVar2;
    uVar5 = cocos2d::CCObject::retain(*(CCObject **)(this + 0xe8));
    pcVar3 = *(code **)(**(int **)(this + 0xe8) + 0x7c);
    uVar2 = *(undefined4 *)(this + 0xe8);
    cocos2d::CCPoint::CCPoint(&local_18,(float)uVar5,(float)((ulonglong)uVar5 >> 0x20));
    (*pcVar3)(uVar2,&local_18);
    (**(code **)(*(int *)this + 0xcc))(this,*(undefined4 *)(this + 0xe8),0);
    pcVar3 = *(code **)(**(int **)(this + 0xe8) + 0x1bc);
    uVar4 = *(undefined4 *)(this + 0xe8);
    uVar2 = FUN_00351830(200,0,200);
    local_18 = SUB41(uVar2,0);
    local_17 = (undefined1)((uint)uVar2 >> 8);
    local_16 = (undefined1)((uint)uVar2 >> 0x10);
    uVar5 = (*pcVar3)(uVar4,&local_18);
    pcVar3 = *(code **)(**(int **)(this + 0xe8) + 0x4c);
    uVar2 = *(undefined4 *)(this + 0xe8);
    cocos2d::CCPoint::CCPoint(&local_18,(float)uVar5,(float)((ulonglong)uVar5 >> 0x20));
    (*pcVar3)(uVar2,&local_18);
    uVar2 = cocos2d::CCSprite::createWithSpriteFrameName("bar.png");
    *(undefined4 *)(this + 0xec) = uVar2;
    uVar5 = cocos2d::CCObject::retain(*(CCObject **)(this + 0xec));
    pcVar3 = *(code **)(**(int **)(this + 0xec) + 0x7c);
    uVar2 = *(undefined4 *)(this + 0xec);
    cocos2d::CCPoint::CCPoint(&local_18,(float)uVar5,(float)((ulonglong)uVar5 >> 0x20));
    (*pcVar3)(uVar2,&local_18);
    (**(code **)(*(int *)this + 0xcc))(this,*(undefined4 *)(this + 0xec),0);
    pcVar3 = *(code **)(**(int **)(this + 0xec) + 0x1bc);
    uVar4 = *(undefined4 *)(this + 0xec);
    uVar2 = FUN_00351830(0,0,0xff);
    local_18 = SUB41(uVar2,0);
    local_17 = (undefined1)((uint)uVar2 >> 8);
    local_16 = (undefined1)((uint)uVar2 >> 0x10);
    uVar5 = (*pcVar3)(uVar4,&local_18);
    pcVar3 = *(code **)(**(int **)(this + 0xec) + 0x4c);
    uVar2 = *(undefined4 *)(this + 0xec);
    cocos2d::CCPoint::CCPoint(&local_18,(float)uVar5,(float)((ulonglong)uVar5 >> 0x20));
    (*pcVar3)(uVar2,&local_18);
    (**(code **)(**(int **)(this + 0xe8) + 0x38))(*(undefined4 *)(this + 0xe8),0x40000000);
    (**(code **)(**(int **)(this + 0xec) + 0x38))(*(undefined4 *)(this + 0xec),0x40000000);
  }
  return cVar1 == '\x01';
}

// ---- HeartMeter::~HeartMeter  @ 0x3528a8
/* WARNING: Removing unreachable block (ram,0x003528f8) */
/* HeartMeter::~HeartMeter() */

HeartMeter * __thiscall HeartMeter::~HeartMeter(HeartMeter *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_009129b8;
  cocos2d::CCNode::removeAllChildrenWithCleanup((CCNode *)this,false);
  cocos2d::CCObject::release(*(CCObject **)(this + 0xe8));
  cocos2d::CCObject::release(*(CCObject **)(this + 0xe4));
  cocos2d::CCObject::release(*(CCObject **)(this + 0xec));
  cocos2d::CCNode::~CCNode((CCNode *)this);
  return this;
}

// ---- HeartMeter::~HeartMeter  @ 0x352910
/* HeartMeter::~HeartMeter() */

HeartMeter * __thiscall HeartMeter::~HeartMeter(HeartMeter *this)

{
  ~HeartMeter(this);
  operator_delete(this);
  return this;
}

// ---- HeartMeter::setMeters  @ 0x352930
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003529b0 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* HeartMeter::setMeters(double, double) */

void HeartMeter::setMeters(double param_1,double param_2)

{
  byte bVar1;
  double dVar2;
  bool bVar3;
  int in_r0;
  undefined4 in_r2;
  undefined4 in_r3;
  uint in_fpscr;
  uint uVar4;
  uint uVar5;
  float fVar6;
  double in_stack_00000000;
  
  dVar2 = (double)CONCAT44(in_r3,in_r2);
  uVar4 = in_fpscr & 0xfffffff | (uint)(dVar2 < 100.0) << 0x1f | (uint)(dVar2 == 100.0) << 0x1e |
          (uint)(100.0 <= dVar2) << 0x1d;
  if ((int)uVar4 < 0) {
    dVar2 = (double)CONCAT44(in_r3,in_r2);
    uVar5 = in_fpscr & 0xfffffff | (uint)(dVar2 < 0.0) << 0x1f | (uint)(dVar2 == 0.0) << 0x1e;
    uVar4 = uVar5 | (uint)NAN(dVar2) << 0x1c;
    bVar1 = (byte)(uVar5 >> 0x18);
    bVar3 = !(bool)(bVar1 >> 6 & 1) && bVar1 >> 7 == ((byte)(uVar4 >> 0x1c) & 1);
  }
  else {
    bVar3 = true;
  }
  if (bVar3) {
    dVar2 = (double)CONCAT44(in_r3,in_r2);
    uVar4 = uVar4 & 0xfffffff | (uint)(dVar2 < 100.0) << 0x1f | (uint)(dVar2 == 100.0) << 0x1e |
            (uint)(100.0 <= dVar2) << 0x1d;
    if ((int)uVar4 < 0) {
      fVar6 = (float)((double)CONCAT44(in_r3,in_r2) * 0.73);
    }
    else {
      fVar6 = 73.0;
    }
  }
  else {
    fVar6 = 0.0;
  }
  (**(code **)(**(int **)(in_r0 + 0xe8) + 0x30))
            (SUB84(param_1,0),(int)((ulonglong)param_1 >> 0x20),SUB84(param_2,0),
             *(undefined4 *)(in_r0 + 0xe8),fVar6);
  uVar5 = uVar4 & 0xfffffff | (uint)(in_stack_00000000 < 100.0) << 0x1f |
          (uint)(in_stack_00000000 == 100.0) << 0x1e | (uint)(100.0 <= in_stack_00000000) << 0x1d;
  if ((int)uVar5 < 0) {
    uVar4 = uVar4 & 0xfffffff | (uint)(in_stack_00000000 < 0.0) << 0x1f |
            (uint)(in_stack_00000000 == 0.0) << 0x1e;
    uVar5 = uVar4 | (uint)NAN(in_stack_00000000) << 0x1c;
    bVar1 = (byte)(uVar4 >> 0x18);
    bVar3 = !(bool)(bVar1 >> 6 & 1) && bVar1 >> 7 == ((byte)(uVar5 >> 0x1c) & 1);
  }
  else {
    bVar3 = true;
  }
  if (bVar3) {
    if ((char)((byte)(uVar5 >> 0x18) & 0xf |
               (byte)(((uint)(in_stack_00000000 < 100.0) << 0x1f) >> 0x18) |
               (byte)(((uint)(in_stack_00000000 == 100.0) << 0x1e) >> 0x18) |
              (byte)(((uint)(100.0 <= in_stack_00000000) << 0x1d) >> 0x18)) < '\0') {
      fVar6 = (float)(in_stack_00000000 * 0.73);
    }
    else {
      fVar6 = 73.0;
    }
  }
  else {
    fVar6 = 0.0;
  }
  (**(code **)(**(int **)(in_r0 + 0xec) + 0x30))(*(undefined4 *)(in_r0 + 0xec),fVar6);
  return;
}
