// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 18 functions

// ---- b2Contact::~b2Contact  @ 0x6c966c
/* WARNING: Removing unreachable block (ram,0x006c9686) */
/* b2Contact::~b2Contact() */

b2Contact * __thiscall b2Contact::~b2Contact(b2Contact *this)

{
  *(undefined ***)this = &PTR___cxa_pure_virtual_1_0093bde8;
  return this;
}

// ---- b2Contact::~b2Contact  @ 0x6c96a0
/* b2Contact::~b2Contact() */

b2Contact * __thiscall b2Contact::~b2Contact(b2Contact *this)

{
  ~b2Contact(this);
  operator_delete(this);
  return this;
}

// ---- b2Contact::GetFixtureA  @ 0x6c9c50
/* b2Contact::GetFixtureA() */

undefined4 __thiscall b2Contact::GetFixtureA(b2Contact *this)

{
  return *(undefined4 *)(this + 0x30);
}

// ---- b2Contact::GetFixtureB  @ 0x6c9c60
/* b2Contact::GetFixtureB() */

undefined4 __thiscall b2Contact::GetFixtureB(b2Contact *this)

{
  return *(undefined4 *)(this + 0x34);
}

// ---- b2Contact::InitializeRegisters  @ 0x6c9c70
/* b2Contact::InitializeRegisters() */

void b2Contact::InitializeRegisters(void)

{
  AddType(0x6c9a05,0x6c9a51,0,0);
  AddType(0x6cc871,0x6cc8bd,2,0);
  AddType(0x6cc9ad,0x6cc9f9,2,2);
  AddType(0x6cc5f9,0x6cc645,1,0);
  AddType(0x6cc735,0x6cc781,1,2);
  AddType(0x6c9715,0x6c9769,3,0);
  AddType(0x6c988d,0x6c98e1,3,2);
  return;
}

// ---- b2Contact::AddType  @ 0x6c9d40
/* b2Contact::AddType(b2Contact* (*)(b2Fixture*, int, b2Fixture*, int, b2BlockAllocator*), void
   (*)(b2Contact*, b2BlockAllocator*), b2Shape::Type, b2Shape::Type) */

void b2Contact::AddType(undefined4 param_1,undefined4 param_2,int param_3,int param_4)

{
  *(undefined4 *)(s_registers + param_3 * 0x30 + param_4 * 0xc) = param_1;
  *(undefined4 *)(s_registers + param_3 * 0x30 + param_4 * 0xc + 4) = param_2;
  s_registers[param_3 * 0x30 + param_4 * 0xc + 8] = 1;
  if (param_3 != param_4) {
    *(undefined4 *)(s_registers + param_4 * 0x30 + param_3 * 0xc) = param_1;
    *(undefined4 *)(s_registers + param_4 * 0x30 + param_3 * 0xc + 4) = param_2;
    s_registers[param_4 * 0x30 + param_3 * 0xc + 8] = 0;
  }
  return;
}

// ---- b2Contact::Create  @ 0x6c9e48
/* b2Contact::Create(b2Fixture*, int, b2Fixture*, int, b2BlockAllocator*) */

undefined4
b2Contact::Create(b2Fixture *param_1,int param_2,b2Fixture *param_3,int param_4,
                 b2BlockAllocator *param_5)

{
  int iVar1;
  int iVar2;
  undefined4 uVar3;
  code *pcVar4;
  
  if (s_initialized != '\x01') {
    InitializeRegisters();
    s_initialized = '\x01';
  }
  iVar1 = b2Fixture::GetType(param_1);
  iVar2 = b2Fixture::GetType(param_3);
  pcVar4 = *(code **)(s_registers + iVar1 * 0x30 + iVar2 * 0xc);
  if (pcVar4 == (code *)0x0) {
    uVar3 = 0;
  }
  else if (s_registers[iVar1 * 0x30 + iVar2 * 0xc + 8] == '\0') {
    uVar3 = (*pcVar4)(param_3,param_4,param_1,param_2,param_5);
  }
  else {
    uVar3 = (*pcVar4)(param_1,param_2,param_3,param_4,param_5);
  }
  return uVar3;
}

// ---- b2Contact::Destroy  @ 0x6c9f18
/* b2Contact::Destroy(b2Contact*, b2BlockAllocator*) */

void b2Contact::Destroy(b2Contact *param_1,b2BlockAllocator *param_2)

{
  b2Fixture *pbVar1;
  b2Body *pbVar2;
  int iVar3;
  int iVar4;
  
  if (0 < *(int *)(param_1 + 0x7c)) {
    pbVar1 = (b2Fixture *)GetFixtureA(param_1);
    pbVar2 = (b2Body *)b2Fixture::GetBody(pbVar1);
    b2Body::SetAwake(pbVar2,true);
    pbVar1 = (b2Fixture *)GetFixtureB(param_1);
    pbVar2 = (b2Body *)b2Fixture::GetBody(pbVar1);
    b2Body::SetAwake(pbVar2,true);
  }
  pbVar1 = (b2Fixture *)GetFixtureA(param_1);
  iVar3 = b2Fixture::GetType(pbVar1);
  pbVar1 = (b2Fixture *)GetFixtureB(param_1);
  iVar4 = b2Fixture::GetType(pbVar1);
  (**(code **)(s_registers + iVar3 * 0x30 + iVar4 * 0xc + 4))(param_1,param_2);
  return;
}

// ---- b2Contact::b2Contact  @ 0x6c9fbc
/* b2Contact::b2Contact(b2Fixture*, int, b2Fixture*, int) */

b2Contact * __thiscall
b2Contact::b2Contact(b2Contact *this,b2Fixture *param_1,int param_2,b2Fixture *param_3,int param_4)

{
  undefined4 uVar1;
  float extraout_s0;
  undefined8 uVar2;
  float extraout_s1;
  
  *(undefined ***)this = &PTR___cxa_pure_virtual_1_0093bde8;
  uVar2 = b2Manifold::b2Manifold((b2Manifold *)(this + 0x40));
  *(undefined4 *)(this + 4) = 4;
  *(b2Fixture **)(this + 0x30) = param_1;
  *(b2Fixture **)(this + 0x34) = param_3;
  *(int *)(this + 0x38) = param_2;
  *(int *)(this + 0x3c) = param_4;
  *(undefined4 *)(this + 0x7c) = 0;
  *(undefined4 *)(this + 8) = 0;
  *(undefined4 *)(this + 0xc) = 0;
  *(undefined4 *)(this + 0x14) = 0;
  *(undefined4 *)(this + 0x18) = 0;
  *(undefined4 *)(this + 0x1c) = 0;
  *(undefined4 *)(this + 0x10) = 0;
  *(undefined4 *)(this + 0x24) = 0;
  *(undefined4 *)(this + 0x28) = 0;
  *(undefined4 *)(this + 0x2c) = 0;
  *(undefined4 *)(this + 0x20) = 0;
  *(undefined4 *)(this + 0x80) = 0;
  uVar1 = b2MixFriction((float)uVar2,(float)((ulonglong)uVar2 >> 0x20));
  *(undefined4 *)(this + 0x88) = uVar1;
  uVar1 = b2MixRestitution(extraout_s0,extraout_s1);
  *(undefined4 *)(this + 0x8c) = uVar1;
  return this;
}

// ---- b2Contact::Update  @ 0x6ca094
/* b2Contact::Update(b2ContactListener*) */

void __thiscall b2Contact::Update(b2Contact *this,b2ContactListener *param_1)

{
  bool bVar1;
  char cVar2;
  char cVar3;
  b2Body *this_00;
  b2Body *this_01;
  b2Transform *pbVar4;
  b2Transform *pbVar5;
  b2Shape *pbVar6;
  b2Shape *pbVar7;
  int iVar8;
  bool bVar9;
  char local_81;
  int local_78;
  int local_74;
  undefined4 local_50;
  undefined4 uStack_4c;
  int aiStack_48 [4];
  undefined4 uStack_38;
  undefined4 uStack_34;
  undefined4 local_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  undefined4 local_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  int local_14;
  
  local_50 = *(undefined4 *)(this + 0x40);
  uStack_4c = *(undefined4 *)(this + 0x44);
  aiStack_48[0] = *(int *)(this + 0x48);
  aiStack_48[1] = *(int *)(this + 0x4c);
  aiStack_48[2] = *(int *)(this + 0x50);
  aiStack_48[3] = *(int *)(this + 0x54);
  uStack_38 = *(undefined4 *)(this + 0x58);
  uStack_34 = *(undefined4 *)(this + 0x5c);
  local_30 = *(undefined4 *)(this + 0x60);
  uStack_2c = *(undefined4 *)(this + 100);
  uStack_28 = *(undefined4 *)(this + 0x68);
  uStack_24 = *(undefined4 *)(this + 0x6c);
  local_20 = *(undefined4 *)(this + 0x70);
  uStack_1c = *(undefined4 *)(this + 0x74);
  uStack_18 = *(undefined4 *)(this + 0x78);
  local_14 = *(int *)(this + 0x7c);
  *(uint *)(this + 4) = *(uint *)(this + 4) | 4;
  bVar9 = (*(uint *)(this + 4) & 2) != 0;
  cVar2 = b2Fixture::IsSensor(*(b2Fixture **)(this + 0x30));
  cVar3 = b2Fixture::IsSensor(*(b2Fixture **)(this + 0x34));
  if ((cVar2 == '\0') && (cVar3 == '\0')) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  this_00 = (b2Body *)b2Fixture::GetBody(*(b2Fixture **)(this + 0x30));
  this_01 = (b2Body *)b2Fixture::GetBody(*(b2Fixture **)(this + 0x34));
  pbVar4 = (b2Transform *)b2Body::GetTransform(this_00);
  pbVar5 = (b2Transform *)b2Body::GetTransform(this_01);
  if (bVar1) {
    pbVar6 = (b2Shape *)b2Fixture::GetShape(*(b2Fixture **)(this + 0x30));
    pbVar7 = (b2Shape *)b2Fixture::GetShape(*(b2Fixture **)(this + 0x34));
    local_81 = b2TestOverlap(pbVar6,*(int *)(this + 0x38),pbVar7,*(int *)(this + 0x3c),pbVar4,pbVar5
                            );
    *(undefined4 *)(this + 0x7c) = 0;
  }
  else {
    (*(code *)**(undefined4 **)this)(this,this + 0x40,pbVar4,pbVar5);
    local_81 = 0 < *(int *)(this + 0x7c);
    for (local_78 = 0; local_78 < *(int *)(this + 0x7c); local_78 = local_78 + 1) {
      iVar8 = local_78 * 0x14;
      *(undefined4 *)(this + iVar8 + 0x48) = 0;
      *(undefined4 *)(this + iVar8 + 0x4c) = 0;
      for (local_74 = 0; local_74 < local_14; local_74 = local_74 + 1) {
        if (aiStack_48[local_74 * 5 + 2] == *(int *)(this + iVar8 + 0x50)) {
          *(int *)(this + iVar8 + 0x48) = aiStack_48[local_74 * 5];
          *(int *)(this + iVar8 + 0x4c) = aiStack_48[local_74 * 5 + 1];
          break;
        }
      }
    }
    if ((bool)local_81 != bVar9) {
      b2Body::SetAwake(this_00,true);
      b2Body::SetAwake(this_01,true);
    }
  }
  if (local_81 == '\0') {
    *(uint *)(this + 4) = *(uint *)(this + 4) & 0xfffffffd;
  }
  else {
    *(uint *)(this + 4) = *(uint *)(this + 4) | 2;
  }
  if (((!bVar9) && (local_81 != '\0')) && (param_1 != (b2ContactListener *)0x0)) {
    (**(code **)(*(int *)param_1 + 8))(param_1,this);
  }
  if (((bVar9) && (local_81 != '\x01')) && (param_1 != (b2ContactListener *)0x0)) {
    (**(code **)(*(int *)param_1 + 0xc))(param_1,this);
  }
  if (((!bVar1) && (local_81 != '\0')) && (param_1 != (b2ContactListener *)0x0)) {
    (**(code **)(*(int *)param_1 + 0x10))(param_1,this,&local_50);
  }
  return;
}

// ---- b2Contact::GetManifold  @ 0x6ca46c
/* b2Contact::GetManifold() */

b2Contact * __thiscall b2Contact::GetManifold(b2Contact *this)

{
  return this + 0x40;
}

// ---- b2Contact::IsTouching  @ 0x6d972c
/* b2Contact::IsTouching() const */

bool __thiscall b2Contact::IsTouching(b2Contact *this)

{
  return (*(uint *)(this + 4) & 2) != 0;
}

// ---- b2Contact::GetNext  @ 0x6d9748
/* b2Contact::GetNext() */

undefined4 __thiscall b2Contact::GetNext(b2Contact *this)

{
  return *(undefined4 *)(this + 0xc);
}

// ---- b2Contact::GetChildIndexA  @ 0x6d9758
/* b2Contact::GetChildIndexA() const */

undefined4 __thiscall b2Contact::GetChildIndexA(b2Contact *this)

{
  return *(undefined4 *)(this + 0x38);
}

// ---- b2Contact::GetChildIndexB  @ 0x6d9768
/* b2Contact::GetChildIndexB() const */

undefined4 __thiscall b2Contact::GetChildIndexB(b2Contact *this)

{
  return *(undefined4 *)(this + 0x3c);
}

// ---- b2Contact::FlagForFiltering  @ 0x6da928
/* b2Contact::FlagForFiltering() */

void __thiscall b2Contact::FlagForFiltering(b2Contact *this)

{
  *(uint *)(this + 4) = *(uint *)(this + 4) | 8;
  return;
}

// ---- b2Contact::SetEnabled  @ 0x6dc590
/* b2Contact::SetEnabled(bool) */

void __thiscall b2Contact::SetEnabled(b2Contact *this,bool param_1)

{
  if (param_1) {
    *(uint *)(this + 4) = *(uint *)(this + 4) | 4;
  }
  else {
    *(uint *)(this + 4) = *(uint *)(this + 4) & 0xfffffffb;
  }
  return;
}

// ---- b2Contact::IsEnabled  @ 0x6dc5c0
/* b2Contact::IsEnabled() const */

bool __thiscall b2Contact::IsEnabled(b2Contact *this)

{
  return (*(uint *)(this + 4) & 4) != 0;
}
