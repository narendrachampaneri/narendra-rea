// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 26 functions

// ---- b2World::IsLocked  @ 0x6d87c4
/* b2World::IsLocked() const */

bool __thiscall b2World::IsLocked(b2World *this)

{
  return (*(uint *)(this + 0x191d4) & 2) != 0;
}

// ---- b2World::b2World  @ 0x6dc618
/* b2World::b2World(b2Vec2 const&) */

b2World * __thiscall b2World::b2World(b2World *this,b2Vec2 *param_1)

{
  undefined4 uVar1;
  
  b2BlockAllocator::b2BlockAllocator((b2BlockAllocator *)this);
  b2StackAllocator::b2StackAllocator((b2StackAllocator *)(this + 0x44));
  b2ContactManager::b2ContactManager((b2ContactManager *)(this + 0x191d8));
  b2Vec2::b2Vec2((b2Vec2 *)(this + 0x19238));
  *(undefined4 *)(this + 0x19244) = 0;
  *(undefined4 *)(this + 0x19248) = 0;
  *(undefined4 *)(this + 0x19228) = 0;
  *(undefined4 *)(this + 0x1922c) = 0;
  *(undefined4 *)(this + 0x19230) = 0;
  *(undefined4 *)(this + 0x19234) = 0;
  this[0x19250] = (b2World)0x1;
  this[0x19251] = (b2World)0x1;
  this[0x19252] = (b2World)0x0;
  this[0x19253] = (b2World)0x1;
  this[0x19240] = (b2World)0x1;
  uVar1 = *(undefined4 *)(param_1 + 4);
  *(undefined4 *)(this + 0x19238) = *(undefined4 *)param_1;
  *(undefined4 *)(this + 0x1923c) = uVar1;
  *(undefined4 *)(this + 0x191d4) = 4;
  *(undefined4 *)(this + 0x1924c) = 0;
  *(b2World **)(this + 0x19224) = this;
  memset(this + 0x19254,0,0x20);
  return this;
}

// ---- b2World::~b2World  @ 0x6dc744
/* b2World::~b2World() */

b2World * __thiscall b2World::~b2World(b2World *this)

{
  int iVar1;
  b2Fixture *pbVar2;
  int local_18;
  b2Fixture *local_14;
  
  local_18 = *(int *)(this + 0x19228);
  while (local_18 != 0) {
    iVar1 = *(int *)(local_18 + 0x60);
    local_14 = *(b2Fixture **)(local_18 + 100);
    while (local_18 = iVar1, local_14 != (b2Fixture *)0x0) {
      pbVar2 = *(b2Fixture **)(local_14 + 4);
      *(undefined4 *)(local_14 + 0x1c) = 0;
      b2Fixture::Destroy(local_14,(b2BlockAllocator *)this);
      local_14 = pbVar2;
    }
  }
  b2ContactManager::~b2ContactManager((b2ContactManager *)(this + 0x191d8));
  b2StackAllocator::~b2StackAllocator((b2StackAllocator *)(this + 0x44));
  b2BlockAllocator::~b2BlockAllocator((b2BlockAllocator *)this);
  return this;
}

// ---- b2World::SetDestructionListener  @ 0x6dc7bc
/* b2World::SetDestructionListener(b2DestructionListener*) */

void __thiscall b2World::SetDestructionListener(b2World *this,b2DestructionListener *param_1)

{
  *(b2DestructionListener **)(this + 0x19244) = param_1;
  return;
}

// ---- b2World::SetContactFilter  @ 0x6dc7d4
/* b2World::SetContactFilter(b2ContactFilter*) */

void __thiscall b2World::SetContactFilter(b2World *this,b2ContactFilter *param_1)

{
  *(b2ContactFilter **)(this + 0x1921c) = param_1;
  return;
}

// ---- b2World::SetContactListener  @ 0x6dc7ec
/* b2World::SetContactListener(b2ContactListener*) */

void __thiscall b2World::SetContactListener(b2World *this,b2ContactListener *param_1)

{
  *(b2ContactListener **)(this + 0x19220) = param_1;
  return;
}

// ---- b2World::SetDebugDraw  @ 0x6dc804
/* b2World::SetDebugDraw(b2Draw*) */

void __thiscall b2World::SetDebugDraw(b2World *this,b2Draw *param_1)

{
  *(b2Draw **)(this + 0x19248) = param_1;
  return;
}

// ---- b2World::CreateBody  @ 0x6dc81c
/* b2World::CreateBody(b2BodyDef const*) */

b2Body * __thiscall b2World::CreateBody(b2World *this,b2BodyDef *param_1)

{
  int iVar1;
  void *pvVar2;
  b2Body *this_00;
  
  iVar1 = IsLocked(this);
  if (iVar1 == 0) {
    pvVar2 = (void *)b2BlockAllocator::Allocate((b2BlockAllocator *)this,0x98);
    this_00 = operator_new(0x98,pvVar2);
    if (this_00 != (b2Body *)0x0) {
      b2Body::b2Body(this_00,param_1,this);
    }
    *(undefined4 *)(this_00 + 0x5c) = 0;
    *(undefined4 *)(this_00 + 0x60) = *(undefined4 *)(this + 0x19228);
    if (*(int *)(this + 0x19228) != 0) {
      *(b2Body **)(*(int *)(this + 0x19228) + 0x5c) = this_00;
    }
    *(b2Body **)(this + 0x19228) = this_00;
    *(int *)(this + 0x19230) = *(int *)(this + 0x19230) + 1;
  }
  else {
    this_00 = (b2Body *)0x0;
  }
  return this_00;
}

// ---- b2World::DestroyBody  @ 0x6dc8cc
/* b2World::DestroyBody(b2Body*) */

void __thiscall b2World::DestroyBody(b2World *this,b2Body *param_1)

{
  int iVar1;
  b2Fixture *pbVar2;
  int local_20;
  int local_1c;
  b2Fixture *local_18;
  
  iVar1 = IsLocked(this);
  if (iVar1 == 0) {
    local_20 = *(int *)(param_1 + 0x6c);
    while (local_20 != 0) {
      iVar1 = *(int *)(local_20 + 0xc);
      if (*(int *)(this + 0x19244) != 0) {
        (**(code **)(**(int **)(this + 0x19244) + 8))
                  (*(undefined4 *)(this + 0x19244),*(undefined4 *)(local_20 + 4));
      }
      DestroyJoint(this,*(b2Joint **)(local_20 + 4));
      *(int *)(param_1 + 0x6c) = iVar1;
      local_20 = iVar1;
    }
    *(undefined4 *)(param_1 + 0x6c) = 0;
    local_1c = *(int *)(param_1 + 0x70);
    while (local_1c != 0) {
      iVar1 = *(int *)(local_1c + 0xc);
      b2ContactManager::Destroy((b2ContactManager *)(this + 0x191d8),*(b2Contact **)(local_1c + 4));
      local_1c = iVar1;
    }
    *(undefined4 *)(param_1 + 0x70) = 0;
    local_18 = *(b2Fixture **)(param_1 + 100);
    while (local_18 != (b2Fixture *)0x0) {
      pbVar2 = *(b2Fixture **)(local_18 + 4);
      if (*(int *)(this + 0x19244) != 0) {
        (**(code **)(**(int **)(this + 0x19244) + 0xc))(*(undefined4 *)(this + 0x19244),local_18);
      }
      b2Fixture::DestroyProxies(local_18,(b2BroadPhase *)(this + 0x191d8));
      b2Fixture::Destroy(local_18,(b2BlockAllocator *)this);
      b2BlockAllocator::Free((b2BlockAllocator *)this,local_18,0x2c);
      *(b2Fixture **)(param_1 + 100) = pbVar2;
      *(int *)(param_1 + 0x68) = *(int *)(param_1 + 0x68) + -1;
      local_18 = pbVar2;
    }
    *(undefined4 *)(param_1 + 100) = 0;
    *(undefined4 *)(param_1 + 0x68) = 0;
    if (*(int *)(param_1 + 0x5c) != 0) {
      *(undefined4 *)(*(int *)(param_1 + 0x5c) + 0x60) = *(undefined4 *)(param_1 + 0x60);
    }
    if (*(int *)(param_1 + 0x60) != 0) {
      *(undefined4 *)(*(int *)(param_1 + 0x60) + 0x5c) = *(undefined4 *)(param_1 + 0x5c);
    }
    if (*(b2Body **)(this + 0x19228) == param_1) {
      *(undefined4 *)(this + 0x19228) = *(undefined4 *)(param_1 + 0x60);
    }
    *(int *)(this + 0x19230) = *(int *)(this + 0x19230) + -1;
    b2Body::~b2Body(param_1);
    b2BlockAllocator::Free((b2BlockAllocator *)this,param_1,0x98);
  }
  return;
}

// ---- b2World::CreateJoint  @ 0x6dca74
/* b2World::CreateJoint(b2JointDef const*) */

int __thiscall b2World::CreateJoint(b2World *this,b2JointDef *param_1)

{
  int iVar1;
  int iVar2;
  int *local_18;
  
  iVar1 = IsLocked(this);
  if (iVar1 == 0) {
    iVar1 = b2Joint::Create(param_1,(b2BlockAllocator *)this);
    *(undefined4 *)(iVar1 + 8) = 0;
    *(undefined4 *)(iVar1 + 0xc) = *(undefined4 *)(this + 0x1922c);
    if (*(int *)(this + 0x1922c) != 0) {
      *(int *)(*(int *)(this + 0x1922c) + 8) = iVar1;
    }
    *(int *)(this + 0x1922c) = iVar1;
    *(int *)(this + 0x19234) = *(int *)(this + 0x19234) + 1;
    *(int *)(iVar1 + 0x14) = iVar1;
    *(undefined4 *)(iVar1 + 0x10) = *(undefined4 *)(iVar1 + 0x34);
    *(undefined4 *)(iVar1 + 0x18) = 0;
    *(undefined4 *)(iVar1 + 0x1c) = *(undefined4 *)(*(int *)(iVar1 + 0x30) + 0x6c);
    if (*(int *)(*(int *)(iVar1 + 0x30) + 0x6c) != 0) {
      *(int *)(*(int *)(*(int *)(iVar1 + 0x30) + 0x6c) + 8) = iVar1 + 0x10;
    }
    *(int *)(*(int *)(iVar1 + 0x30) + 0x6c) = iVar1 + 0x10;
    *(int *)(iVar1 + 0x24) = iVar1;
    *(undefined4 *)(iVar1 + 0x20) = *(undefined4 *)(iVar1 + 0x30);
    *(undefined4 *)(iVar1 + 0x28) = 0;
    *(undefined4 *)(iVar1 + 0x2c) = *(undefined4 *)(*(int *)(iVar1 + 0x34) + 0x6c);
    if (*(int *)(*(int *)(iVar1 + 0x34) + 0x6c) != 0) {
      *(int *)(*(int *)(*(int *)(iVar1 + 0x34) + 0x6c) + 8) = iVar1 + 0x20;
    }
    *(int *)(*(int *)(iVar1 + 0x34) + 0x6c) = iVar1 + 0x20;
    iVar2 = *(int *)(param_1 + 8);
    if (param_1[0x10] != (b2JointDef)0x1) {
      for (local_18 = (int *)b2Body::GetContactList(*(b2Body **)(param_1 + 0xc));
          local_18 != (int *)0x0; local_18 = (int *)local_18[3]) {
        if (*local_18 == iVar2) {
          b2Contact::FlagForFiltering((b2Contact *)local_18[1]);
        }
      }
    }
  }
  else {
    iVar1 = 0;
  }
  return iVar1;
}

// ---- b2World::DestroyJoint  @ 0x6dcbb8
/* b2World::DestroyJoint(b2Joint*) */

void __thiscall b2World::DestroyJoint(b2World *this,b2Joint *param_1)

{
  b2Joint bVar1;
  int iVar2;
  b2Body *this_00;
  b2Body *this_01;
  int *local_14;
  
  iVar2 = IsLocked(this);
  if (iVar2 == 0) {
    bVar1 = param_1[0x3d];
    if (*(int *)(param_1 + 8) != 0) {
      *(undefined4 *)(*(int *)(param_1 + 8) + 0xc) = *(undefined4 *)(param_1 + 0xc);
    }
    if (*(int *)(param_1 + 0xc) != 0) {
      *(undefined4 *)(*(int *)(param_1 + 0xc) + 8) = *(undefined4 *)(param_1 + 8);
    }
    if (*(b2Joint **)(this + 0x1922c) == param_1) {
      *(undefined4 *)(this + 0x1922c) = *(undefined4 *)(param_1 + 0xc);
    }
    this_00 = *(b2Body **)(param_1 + 0x30);
    this_01 = *(b2Body **)(param_1 + 0x34);
    b2Body::SetAwake(this_00,true);
    b2Body::SetAwake(this_01,true);
    if (*(int *)(param_1 + 0x18) != 0) {
      *(undefined4 *)(*(int *)(param_1 + 0x18) + 0xc) = *(undefined4 *)(param_1 + 0x1c);
    }
    if (*(int *)(param_1 + 0x1c) != 0) {
      *(undefined4 *)(*(int *)(param_1 + 0x1c) + 8) = *(undefined4 *)(param_1 + 0x18);
    }
    if (param_1 + 0x10 == *(b2Joint **)(this_00 + 0x6c)) {
      *(undefined4 *)(this_00 + 0x6c) = *(undefined4 *)(param_1 + 0x1c);
    }
    *(undefined4 *)(param_1 + 0x18) = 0;
    *(undefined4 *)(param_1 + 0x1c) = 0;
    if (*(int *)(param_1 + 0x28) != 0) {
      *(undefined4 *)(*(int *)(param_1 + 0x28) + 0xc) = *(undefined4 *)(param_1 + 0x2c);
    }
    if (*(int *)(param_1 + 0x2c) != 0) {
      *(undefined4 *)(*(int *)(param_1 + 0x2c) + 8) = *(undefined4 *)(param_1 + 0x28);
    }
    if (param_1 + 0x20 == *(b2Joint **)(this_01 + 0x6c)) {
      *(undefined4 *)(this_01 + 0x6c) = *(undefined4 *)(param_1 + 0x2c);
    }
    *(undefined4 *)(param_1 + 0x28) = 0;
    *(undefined4 *)(param_1 + 0x2c) = 0;
    b2Joint::Destroy(param_1,(b2BlockAllocator *)this);
    *(int *)(this + 0x19234) = *(int *)(this + 0x19234) + -1;
    if (bVar1 != (b2Joint)0x1) {
      for (local_14 = (int *)b2Body::GetContactList(this_01); local_14 != (int *)0x0;
          local_14 = (int *)local_14[3]) {
        if ((b2Body *)*local_14 == this_00) {
          b2Contact::FlagForFiltering((b2Contact *)local_14[1]);
        }
      }
    }
  }
  return;
}

// ---- b2World::SetAllowSleeping  @ 0x6dcd24
/* b2World::SetAllowSleeping(bool) */

void __thiscall b2World::SetAllowSleeping(b2World *this,bool param_1)

{
  b2Body *local_c;
  
  if (((b2World)param_1 != this[0x19240]) &&
     (this[0x19240] = (b2World)param_1, this[0x19240] != (b2World)0x1)) {
    for (local_c = *(b2Body **)(this + 0x19228); local_c != (b2Body *)0x0;
        local_c = *(b2Body **)(local_c + 0x60)) {
      b2Body::SetAwake(local_c,true);
    }
  }
  return;
}

// ---- b2World::Solve  @ 0x6dcd90
/* b2World::Solve(b2TimeStep const&) */

void __thiscall b2World::Solve(b2World *this,b2TimeStep *param_1)

{
  bool bVar1;
  char cVar2;
  undefined4 *puVar3;
  int iVar4;
  undefined4 uVar5;
  b2Contact *this_00;
  b2Body *pbVar6;
  int local_a4;
  int local_a0;
  int local_9c;
  b2Body *local_98;
  int local_94;
  int *local_90;
  undefined4 *local_8c;
  int local_88;
  b2Body *local_84;
  b2Profile abStack_64 [12];
  float local_58;
  float local_54;
  float local_50;
  b2Island abStack_44 [8];
  int local_3c;
  int local_28;
  
  *(undefined4 *)(this + 0x19260) = 0;
  *(undefined4 *)(this + 0x19264) = 0;
  *(undefined4 *)(this + 0x19268) = 0;
  b2Island::b2Island(abStack_44,*(int *)(this + 0x19230),*(int *)(this + 0x19218),
                     *(int *)(this + 0x19234),(b2StackAllocator *)(this + 0x44),
                     *(b2ContactListener **)(this + 0x19220));
  for (local_a4 = *(int *)(this + 0x19228); local_a4 != 0; local_a4 = *(int *)(local_a4 + 0x60)) {
    *(ushort *)(local_a4 + 4) = *(ushort *)(local_a4 + 4) & 0xfffe;
  }
  for (local_a0 = *(int *)(this + 0x19214); local_a0 != 0; local_a0 = *(int *)(local_a0 + 0xc)) {
    *(uint *)(local_a0 + 4) = *(uint *)(local_a0 + 4) & 0xfffffffe;
  }
  for (local_9c = *(int *)(this + 0x1922c); local_9c != 0; local_9c = *(int *)(local_9c + 0xc)) {
    *(undefined1 *)(local_9c + 0x3c) = 0;
  }
  puVar3 = (undefined4 *)
           b2StackAllocator::Allocate
                     ((b2StackAllocator *)(this + 0x44),*(int *)(this + 0x19230) << 2);
  for (local_98 = *(b2Body **)(this + 0x19228); local_98 != (b2Body *)0x0;
      local_98 = *(b2Body **)(local_98 + 0x60)) {
    if ((*(ushort *)(local_98 + 4) & 1) == 0) {
      cVar2 = b2Body::IsAwake(local_98);
      if ((cVar2 == '\x01') && (cVar2 = b2Body::IsActive(local_98), cVar2 == '\x01')) {
        bVar1 = false;
      }
      else {
        bVar1 = true;
      }
      if ((!bVar1) && (iVar4 = b2Body::GetType(local_98), iVar4 != 0)) {
        b2Island::Clear(abStack_44);
        local_94 = 1;
        *puVar3 = local_98;
        *(ushort *)(local_98 + 4) = *(ushort *)(local_98 + 4) | 1;
        while (0 < local_94) {
          local_94 = local_94 + -1;
          pbVar6 = (b2Body *)puVar3[local_94];
          b2Island::Add(abStack_44,pbVar6);
          b2Body::SetAwake(pbVar6,true);
          iVar4 = b2Body::GetType(pbVar6);
          if (iVar4 != 0) {
            for (local_90 = *(int **)(pbVar6 + 0x70); local_90 != (int *)0x0;
                local_90 = (int *)local_90[3]) {
              this_00 = (b2Contact *)local_90[1];
              if ((*(uint *)(this_00 + 4) & 1) == 0) {
                cVar2 = b2Contact::IsEnabled(this_00);
                if ((cVar2 == '\x01') && (cVar2 = b2Contact::IsTouching(this_00), cVar2 == '\x01'))
                {
                  bVar1 = false;
                }
                else {
                  bVar1 = true;
                }
                if (((!bVar1) && (*(char *)(*(int *)(this_00 + 0x30) + 0x26) == '\0')) &&
                   (*(char *)(*(int *)(this_00 + 0x34) + 0x26) == '\0')) {
                  b2Island::Add(abStack_44,this_00);
                  *(uint *)(this_00 + 4) = *(uint *)(this_00 + 4) | 1;
                  iVar4 = *local_90;
                  if ((*(ushort *)(iVar4 + 4) & 1) == 0) {
                    puVar3[local_94] = iVar4;
                    *(ushort *)(iVar4 + 4) = *(ushort *)(iVar4 + 4) | 1;
                    local_94 = local_94 + 1;
                  }
                }
              }
            }
            for (local_8c = *(undefined4 **)(pbVar6 + 0x6c); local_8c != (undefined4 *)0x0;
                local_8c = (undefined4 *)local_8c[3]) {
              if (*(char *)(local_8c[1] + 0x3c) == '\0') {
                pbVar6 = (b2Body *)*local_8c;
                cVar2 = b2Body::IsActive(pbVar6);
                if (cVar2 == '\x01') {
                  b2Island::Add(abStack_44,(b2Joint *)local_8c[1]);
                  *(undefined1 *)(local_8c[1] + 0x3c) = 1;
                  if ((*(ushort *)(pbVar6 + 4) & 1) == 0) {
                    puVar3[local_94] = pbVar6;
                    *(ushort *)(pbVar6 + 4) = *(ushort *)(pbVar6 + 4) | 1;
                    local_94 = local_94 + 1;
                  }
                }
              }
            }
          }
        }
        b2Island::Solve(abStack_44,abStack_64,param_1,(b2Vec2 *)(this + 0x19238),(bool)this[0x19240]
                       );
        *(float *)(this + 0x19260) = *(float *)(this + 0x19260) + local_58;
        *(float *)(this + 0x19264) = *(float *)(this + 0x19264) + local_54;
        *(float *)(this + 0x19268) = *(float *)(this + 0x19268) + local_50;
        for (local_88 = 0; local_88 < local_28; local_88 = local_88 + 1) {
          pbVar6 = *(b2Body **)(local_88 * 4 + local_3c);
          iVar4 = b2Body::GetType(pbVar6);
          if (iVar4 == 0) {
            *(ushort *)(pbVar6 + 4) = *(ushort *)(pbVar6 + 4) & 0xfffe;
          }
        }
      }
    }
  }
  b2StackAllocator::Free((b2StackAllocator *)(this + 0x44),puVar3);
  b2Timer::b2Timer((b2Timer *)abStack_64);
  for (local_84 = *(b2Body **)(this + 0x19228); local_84 != (b2Body *)0x0;
      local_84 = (b2Body *)b2Body::GetNext(local_84)) {
    if (((*(ushort *)(local_84 + 4) & 1) != 0) && (iVar4 = b2Body::GetType(local_84), iVar4 != 0)) {
      b2Body::SynchronizeFixtures(local_84);
    }
  }
  b2ContactManager::FindNewContacts((b2ContactManager *)(this + 0x191d8));
  uVar5 = b2Timer::GetMilliseconds((b2Timer *)abStack_64);
  *(undefined4 *)(this + 0x1926c) = uVar5;
  b2Island::~b2Island(abStack_44);
  return;
}

// ---- b2World::SolveTOI  @ 0x6dd258
/* b2World::SolveTOI(b2TimeStep const&) */

void __thiscall b2World::SolveTOI(b2World *this,b2TimeStep *param_1)

{
  char cVar1;
  int iVar2;
  b2Shape *pbVar3;
  float extraout_r0;
  b2Fixture *pbVar4;
  b2Fixture *pbVar5;
  b2Body *pbVar6;
  b2Body *pbVar7;
  int iVar8;
  int iVar9;
  b2Body *this_00;
  b2Contact *this_01;
  b2Body *this_02;
  bool bVar10;
  bool bVar11;
  float extraout_s0;
  float extraout_s0_00;
  float fVar12;
  float extraout_s0_01;
  float extraout_s0_02;
  undefined8 uVar13;
  int local_188;
  int local_184;
  b2Contact *local_180;
  float local_17c;
  b2Contact *local_178;
  float local_174;
  int local_16c;
  undefined4 *local_168;
  int local_164;
  int local_160;
  b2Body *local_118 [4];
  undefined4 uStack_108;
  undefined4 uStack_104;
  undefined4 local_100;
  undefined4 uStack_fc;
  undefined4 uStack_f8;
  undefined4 uStack_f4;
  undefined4 local_f0;
  int local_ec;
  undefined4 local_e8;
  undefined4 uStack_e4;
  undefined4 uStack_e0;
  undefined4 local_dc;
  undefined4 uStack_d8;
  undefined4 uStack_d4;
  undefined4 uStack_d0;
  undefined4 local_cc;
  b2Island abStack_c8 [8];
  int local_c0;
  int local_ac;
  int local_a4;
  int local_a0;
  int local_9c;
  float local_94;
  float local_90;
  undefined4 local_8c;
  undefined4 local_88;
  undefined4 local_84;
  uint local_80;
  undefined4 uStack_7c;
  undefined4 uStack_78;
  undefined4 local_74;
  undefined4 local_5c;
  undefined4 uStack_58;
  undefined4 uStack_54;
  undefined4 uStack_50;
  undefined4 local_4c;
  undefined4 uStack_48;
  undefined4 uStack_44;
  undefined4 uStack_40;
  undefined4 local_3c;
  undefined4 local_38;
  undefined4 uStack_34;
  undefined4 uStack_30;
  undefined4 uStack_2c;
  undefined4 local_28;
  undefined4 uStack_24;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined4 local_18;
  undefined4 local_14;
  
  b2Island::b2Island(abStack_c8,0x40,0x20,0,(b2StackAllocator *)(this + 0x44),
                     *(b2ContactListener **)(this + 0x19220));
  if (this[0x19253] != (b2World)0x0) {
    for (local_188 = *(int *)(this + 0x19228); local_188 != 0;
        local_188 = *(int *)(local_188 + 0x60)) {
      *(ushort *)(local_188 + 4) = *(ushort *)(local_188 + 4) & 0xfffe;
      *(undefined4 *)(local_188 + 0x3c) = 0;
    }
    for (local_184 = *(int *)(this + 0x19214); local_184 != 0; local_184 = *(int *)(local_184 + 0xc)
        ) {
      *(uint *)(local_184 + 4) = *(uint *)(local_184 + 4) & 0xffffffde;
      *(undefined4 *)(local_184 + 0x80) = 0;
      *(undefined4 *)(local_184 + 0x84) = 0x3f800000;
    }
  }
  do {
    local_180 = (b2Contact *)0x0;
    local_17c = 1.0;
    for (local_178 = *(b2Contact **)(this + 0x19214); local_178 != (b2Contact *)0x0;
        local_178 = *(b2Contact **)(local_178 + 0xc)) {
      cVar1 = b2Contact::IsEnabled(local_178);
      if ((cVar1 == '\x01') && (*(int *)(local_178 + 0x80) < 9)) {
        if ((*(uint *)(local_178 + 4) & 0x20) == 0) {
          pbVar4 = (b2Fixture *)b2Contact::GetFixtureA(local_178);
          pbVar5 = (b2Fixture *)b2Contact::GetFixtureB(local_178);
          iVar2 = b2Fixture::IsSensor(pbVar4);
          if ((iVar2 == 0) && (iVar2 = b2Fixture::IsSensor(pbVar5), iVar2 == 0)) {
            bVar10 = false;
          }
          else {
            bVar10 = true;
          }
          if (!bVar10) {
            pbVar6 = (b2Body *)b2Fixture::GetBody(pbVar4);
            pbVar7 = (b2Body *)b2Fixture::GetBody(pbVar5);
            iVar8 = *(int *)pbVar6;
            iVar9 = *(int *)pbVar7;
            iVar2 = b2Body::IsAwake(pbVar6);
            if ((iVar2 == 0) || (iVar8 == 0)) {
              bVar10 = false;
            }
            else {
              bVar10 = true;
            }
            iVar2 = b2Body::IsAwake(pbVar7);
            if ((iVar2 == 0) || (iVar9 == 0)) {
              bVar11 = false;
            }
            else {
              bVar11 = true;
            }
            if ((bVar10) || (bVar11)) {
              iVar2 = b2Body::IsBullet(pbVar6);
              if ((iVar2 == 0) && (iVar8 == 2)) {
                bVar10 = false;
              }
              else {
                bVar10 = true;
              }
              iVar2 = b2Body::IsBullet(pbVar7);
              if ((iVar2 == 0) && (iVar9 == 2)) {
                bVar11 = false;
              }
              else {
                bVar11 = true;
              }
              if ((bVar10) || (bVar11)) {
                if ((int)((uint)(*(float *)(pbVar6 + 0x3c) < *(float *)(pbVar7 + 0x3c)) << 0x1f) < 0
                   ) {
                  b2Sweep::Advance(extraout_s0);
                }
                else if ((int)((uint)(*(float *)(pbVar7 + 0x3c) < *(float *)(pbVar6 + 0x3c)) << 0x1f
                              ) < 0) {
                  b2Sweep::Advance(extraout_s0);
                }
                iVar2 = b2Contact::GetChildIndexA(local_178);
                iVar8 = b2Contact::GetChildIndexB(local_178);
                b2TOIInput::b2TOIInput((b2TOIInput *)&local_94);
                pbVar3 = (b2Shape *)b2Fixture::GetShape(pbVar4);
                b2DistanceProxy::Set((b2DistanceProxy *)&local_94,pbVar3,iVar2);
                pbVar3 = (b2Shape *)b2Fixture::GetShape(pbVar5);
                b2DistanceProxy::Set((b2DistanceProxy *)&uStack_78,pbVar3,iVar8);
                local_5c = *(undefined4 *)(pbVar6 + 0x1c);
                uStack_58 = *(undefined4 *)(pbVar6 + 0x20);
                uStack_54 = *(undefined4 *)(pbVar6 + 0x24);
                uStack_50 = *(undefined4 *)(pbVar6 + 0x28);
                local_4c = *(undefined4 *)(pbVar6 + 0x2c);
                uStack_48 = *(undefined4 *)(pbVar6 + 0x30);
                uStack_44 = *(undefined4 *)(pbVar6 + 0x34);
                uStack_40 = *(undefined4 *)(pbVar6 + 0x38);
                local_3c = *(undefined4 *)(pbVar6 + 0x3c);
                local_38 = *(undefined4 *)(pbVar7 + 0x1c);
                uStack_34 = *(undefined4 *)(pbVar7 + 0x20);
                uStack_30 = *(undefined4 *)(pbVar7 + 0x24);
                uStack_2c = *(undefined4 *)(pbVar7 + 0x28);
                local_28 = *(undefined4 *)(pbVar7 + 0x2c);
                uStack_24 = *(undefined4 *)(pbVar7 + 0x30);
                uStack_20 = *(undefined4 *)(pbVar7 + 0x34);
                uStack_1c = *(undefined4 *)(pbVar7 + 0x38);
                local_18 = *(undefined4 *)(pbVar7 + 0x3c);
                local_14 = 0x3f800000;
                uVar13 = b2TimeOfImpact((b2TOIOutput *)&local_ec,(b2TOIInput *)&local_94);
                if (local_ec == 3) {
                  b2Min<float>((float)uVar13,(float)((ulonglong)uVar13 >> 0x20));
                  local_174 = extraout_r0;
                }
                else {
                  local_174 = 1.0;
                }
                *(float *)(local_178 + 0x84) = local_174;
                *(uint *)(local_178 + 4) = *(uint *)(local_178 + 4) | 0x20;
                goto LAB_006dd63e;
              }
            }
          }
        }
        else {
          local_174 = *(float *)(local_178 + 0x84);
LAB_006dd63e:
          if ((int)((uint)(local_174 < local_17c) << 0x1f) < 0) {
            local_180 = local_178;
            local_17c = local_174;
          }
        }
      }
    }
    if ((local_180 == (b2Contact *)0x0) || (0.9999988 < local_17c)) {
      this[0x19253] = (b2World)0x1;
      goto LAB_006ddb82;
    }
    pbVar4 = (b2Fixture *)b2Contact::GetFixtureA(local_180);
    pbVar5 = (b2Fixture *)b2Contact::GetFixtureB(local_180);
    pbVar6 = (b2Body *)b2Fixture::GetBody(pbVar4);
    pbVar7 = (b2Body *)b2Fixture::GetBody(pbVar5);
    local_118[2] = *(b2Body **)(pbVar6 + 0x1c);
    local_118[3] = *(b2Body **)(pbVar6 + 0x20);
    uStack_108 = *(undefined4 *)(pbVar6 + 0x24);
    uStack_104 = *(undefined4 *)(pbVar6 + 0x28);
    local_100 = *(undefined4 *)(pbVar6 + 0x2c);
    uStack_fc = *(undefined4 *)(pbVar6 + 0x30);
    uStack_f8 = *(undefined4 *)(pbVar6 + 0x34);
    uStack_f4 = *(undefined4 *)(pbVar6 + 0x38);
    local_f0 = *(undefined4 *)(pbVar6 + 0x3c);
    local_ec = *(int *)(pbVar7 + 0x1c);
    local_e8 = *(undefined4 *)(pbVar7 + 0x20);
    uStack_e4 = *(undefined4 *)(pbVar7 + 0x24);
    uStack_e0 = *(undefined4 *)(pbVar7 + 0x28);
    local_dc = *(undefined4 *)(pbVar7 + 0x2c);
    uStack_d8 = *(undefined4 *)(pbVar7 + 0x30);
    uStack_d4 = *(undefined4 *)(pbVar7 + 0x34);
    uStack_d0 = *(undefined4 *)(pbVar7 + 0x38);
    local_cc = *(undefined4 *)(pbVar7 + 0x3c);
    fVar12 = (float)b2Body::Advance(extraout_s0_00);
    b2Body::Advance(fVar12);
    b2Contact::Update(local_180,*(b2ContactListener **)(this + 0x19220));
    *(uint *)(local_180 + 4) = *(uint *)(local_180 + 4) & 0xffffffdf;
    *(int *)(local_180 + 0x80) = *(int *)(local_180 + 0x80) + 1;
    cVar1 = b2Contact::IsEnabled(local_180);
    if ((cVar1 == '\x01') && (cVar1 = b2Contact::IsTouching(local_180), cVar1 == '\x01')) {
      bVar10 = false;
    }
    else {
      bVar10 = true;
    }
    if (bVar10) {
      b2Contact::SetEnabled(local_180,false);
      *(b2Body **)(pbVar6 + 0x1c) = local_118[2];
      *(b2Body **)(pbVar6 + 0x20) = local_118[3];
      *(undefined4 *)(pbVar6 + 0x24) = uStack_108;
      *(undefined4 *)(pbVar6 + 0x28) = uStack_104;
      *(undefined4 *)(pbVar6 + 0x2c) = local_100;
      *(undefined4 *)(pbVar6 + 0x30) = uStack_fc;
      *(undefined4 *)(pbVar6 + 0x34) = uStack_f8;
      *(undefined4 *)(pbVar6 + 0x38) = uStack_f4;
      *(undefined4 *)(pbVar6 + 0x3c) = local_f0;
      *(int *)(pbVar7 + 0x1c) = local_ec;
      *(undefined4 *)(pbVar7 + 0x20) = local_e8;
      *(undefined4 *)(pbVar7 + 0x24) = uStack_e4;
      *(undefined4 *)(pbVar7 + 0x28) = uStack_e0;
      *(undefined4 *)(pbVar7 + 0x2c) = local_dc;
      *(undefined4 *)(pbVar7 + 0x30) = uStack_d8;
      *(undefined4 *)(pbVar7 + 0x34) = uStack_d4;
      *(undefined4 *)(pbVar7 + 0x38) = uStack_d0;
      *(undefined4 *)(pbVar7 + 0x3c) = local_cc;
      b2Body::SynchronizeTransform();
      b2Body::SynchronizeTransform();
    }
    else {
      b2Body::SetAwake(pbVar6,true);
      b2Body::SetAwake(pbVar7,true);
      b2Island::Clear(abStack_c8);
      b2Island::Add(abStack_c8,pbVar6);
      b2Island::Add(abStack_c8,pbVar7);
      fVar12 = (float)b2Island::Add(abStack_c8,local_180);
      *(ushort *)(pbVar6 + 4) = *(ushort *)(pbVar6 + 4) | 1;
      *(ushort *)(pbVar7 + 4) = *(ushort *)(pbVar7 + 4) | 1;
      *(uint *)(local_180 + 4) = *(uint *)(local_180 + 4) | 1;
      local_118[0] = pbVar6;
      local_118[1] = pbVar7;
      for (local_16c = 0; local_16c < 2; local_16c = local_16c + 1) {
        this_00 = local_118[local_16c];
        if (*(int *)this_00 == 2) {
          local_168 = *(undefined4 **)(this_00 + 0x70);
          while (((local_168 != (undefined4 *)0x0 && (local_ac != local_a0)) &&
                 (local_a4 != local_9c))) {
            this_01 = (b2Contact *)local_168[1];
            if ((*(uint *)(this_01 + 4) & 1) == 0) {
              this_02 = (b2Body *)*local_168;
              if (((*(int *)this_02 == 2) &&
                  (cVar1 = b2Body::IsBullet(this_00), fVar12 = extraout_s0_01, cVar1 != '\x01')) &&
                 (cVar1 = b2Body::IsBullet(this_02), fVar12 = extraout_s0_02, cVar1 != '\x01')) {
                bVar10 = true;
              }
              else {
                bVar10 = false;
              }
              if (((!bVar10) && (*(char *)(*(int *)(this_01 + 0x30) + 0x26) == '\0')) &&
                 (*(char *)(*(int *)(this_01 + 0x34) + 0x26) == '\0')) {
                local_94 = *(float *)(this_02 + 0x1c);
                local_90 = *(float *)(this_02 + 0x20);
                local_8c = *(undefined4 *)(this_02 + 0x24);
                local_88 = *(undefined4 *)(this_02 + 0x28);
                local_84 = *(undefined4 *)(this_02 + 0x2c);
                local_80 = *(uint *)(this_02 + 0x30);
                uStack_7c = *(undefined4 *)(this_02 + 0x34);
                uStack_78 = *(undefined4 *)(this_02 + 0x38);
                local_74 = *(undefined4 *)(this_02 + 0x3c);
                if ((*(ushort *)(this_02 + 4) & 1) == 0) {
                  b2Body::Advance(fVar12);
                }
                b2Contact::Update(this_01,*(b2ContactListener **)(this + 0x19220));
                cVar1 = b2Contact::IsEnabled(this_01);
                if (cVar1 == '\x01') {
                  cVar1 = b2Contact::IsTouching(this_01);
                  if (cVar1 == '\x01') {
                    *(uint *)(this_01 + 4) = *(uint *)(this_01 + 4) | 1;
                    fVar12 = (float)b2Island::Add(abStack_c8,this_01);
                    if ((*(ushort *)(this_02 + 4) & 1) == 0) {
                      *(ushort *)(this_02 + 4) = *(ushort *)(this_02 + 4) | 1;
                      if (*(int *)this_02 != 0) {
                        b2Body::SetAwake(this_02,true);
                      }
                      fVar12 = (float)b2Island::Add(abStack_c8,this_02);
                    }
                  }
                  else {
                    *(float *)(this_02 + 0x1c) = local_94;
                    *(float *)(this_02 + 0x20) = local_90;
                    *(undefined4 *)(this_02 + 0x24) = local_8c;
                    *(undefined4 *)(this_02 + 0x28) = local_88;
                    *(undefined4 *)(this_02 + 0x2c) = local_84;
                    *(uint *)(this_02 + 0x30) = local_80;
                    *(undefined4 *)(this_02 + 0x34) = uStack_7c;
                    *(undefined4 *)(this_02 + 0x38) = uStack_78;
                    *(undefined4 *)(this_02 + 0x3c) = local_74;
                    fVar12 = (float)b2Body::SynchronizeTransform();
                  }
                }
                else {
                  *(float *)(this_02 + 0x1c) = local_94;
                  *(float *)(this_02 + 0x20) = local_90;
                  *(undefined4 *)(this_02 + 0x24) = local_8c;
                  *(undefined4 *)(this_02 + 0x28) = local_88;
                  *(undefined4 *)(this_02 + 0x2c) = local_84;
                  *(uint *)(this_02 + 0x30) = local_80;
                  *(undefined4 *)(this_02 + 0x34) = uStack_7c;
                  *(undefined4 *)(this_02 + 0x38) = uStack_78;
                  *(undefined4 *)(this_02 + 0x3c) = local_74;
                  fVar12 = (float)b2Body::SynchronizeTransform();
                }
              }
            }
            local_168 = (undefined4 *)local_168[3];
          }
        }
      }
      local_94 = (1.0 - local_17c) * *(float *)param_1;
      local_90 = 1.0 / local_94;
      local_8c = 0x3f800000;
      local_84 = 0x14;
      local_88 = *(undefined4 *)(param_1 + 0xc);
      local_80 = local_80 & 0xffffff00;
      b2Island::SolveTOI(abStack_c8,(b2TimeStep *)&local_94,*(int *)(pbVar6 + 8),
                         *(int *)(pbVar7 + 8));
      for (local_164 = 0; local_164 < local_ac; local_164 = local_164 + 1) {
        pbVar6 = *(b2Body **)(local_c0 + local_164 * 4);
        *(ushort *)(pbVar6 + 4) = *(ushort *)(pbVar6 + 4) & 0xfffe;
        if (*(int *)pbVar6 == 2) {
          b2Body::SynchronizeFixtures(pbVar6);
          for (local_160 = *(int *)(pbVar6 + 0x70); local_160 != 0;
              local_160 = *(int *)(local_160 + 0xc)) {
            *(uint *)(*(int *)(local_160 + 4) + 4) =
                 *(uint *)(*(int *)(local_160 + 4) + 4) & 0xffffffde;
          }
        }
      }
      b2ContactManager::FindNewContacts((b2ContactManager *)(this + 0x191d8));
      if (this[0x19252] != (b2World)0x0) {
        this[0x19253] = (b2World)0x0;
LAB_006ddb82:
        b2Island::~b2Island(abStack_c8);
        return;
      }
    }
  } while( true );
}

// ---- b2World::Step  @ 0x6ddba0
/* b2World::Step(float, int, int) */

void __thiscall b2World::Step(b2World *this,float param_1,int param_2,int param_3)

{
  undefined4 uVar1;
  b2Timer abStack_30 [8];
  b2Timer abStack_28 [8];
  float local_20;
  float local_1c;
  float local_18;
  int local_14;
  b2World local_c;
  
  b2Timer::b2Timer(abStack_30);
  if ((*(uint *)(this + 0x191d4) & 1) != 0) {
    b2ContactManager::FindNewContacts((b2ContactManager *)(this + 0x191d8));
    *(uint *)(this + 0x191d4) = *(uint *)(this + 0x191d4) & 0xfffffffe;
  }
  *(uint *)(this + 0x191d4) = *(uint *)(this + 0x191d4) | 2;
  if ((float)param_2 <= 0.0) {
    local_1c = 0.0;
  }
  else {
    local_1c = 1.0 / (float)param_2;
  }
  local_18 = *(float *)(this + 0x1924c) * (float)param_2;
  local_c = this[0x19250];
  local_20 = (float)param_2;
  local_14 = param_3;
  b2Timer::b2Timer(abStack_28);
  b2ContactManager::Collide((b2ContactManager *)(this + 0x191d8));
  uVar1 = b2Timer::GetMilliseconds(abStack_28);
  *(undefined4 *)(this + 0x19258) = uVar1;
  if (this[0x19253] != (b2World)0x0) {
    if (0.0 < local_20) {
      b2Timer::b2Timer(abStack_28);
      Solve(this,(b2TimeStep *)&local_20);
      uVar1 = b2Timer::GetMilliseconds(abStack_28);
      *(undefined4 *)(this + 0x1925c) = uVar1;
    }
  }
  if (this[0x19251] != (b2World)0x0) {
    if (0.0 < local_20) {
      b2Timer::b2Timer(abStack_28);
      SolveTOI(this,(b2TimeStep *)&local_20);
      uVar1 = b2Timer::GetMilliseconds(abStack_28);
      *(undefined4 *)(this + 0x19270) = uVar1;
    }
  }
  if (0.0 < local_20) {
    *(float *)(this + 0x1924c) = local_1c;
  }
  if ((*(uint *)(this + 0x191d4) & 4) != 0) {
    ClearForces(this);
  }
  *(uint *)(this + 0x191d4) = *(uint *)(this + 0x191d4) & 0xfffffffd;
  uVar1 = b2Timer::GetMilliseconds(abStack_30);
  *(undefined4 *)(this + 0x19254) = uVar1;
  return;
}

// ---- b2World::ClearForces  @ 0x6ddd84
/* b2World::ClearForces() */

void __thiscall b2World::ClearForces(b2World *this)

{
  b2Body *local_c;
  
  for (local_c = *(b2Body **)(this + 0x19228); local_c != (b2Body *)0x0;
      local_c = (b2Body *)b2Body::GetNext(local_c)) {
    b2Vec2::SetZero((b2Vec2 *)(local_c + 0x4c));
    *(undefined4 *)(local_c + 0x54) = 0;
  }
  return;
}

// ---- b2World::QueryAABB  @ 0x6dddfc
/* b2World::QueryAABB(b2QueryCallback*, b2AABB const&) const */

void __thiscall b2World::QueryAABB(b2World *this,b2QueryCallback *param_1,b2AABB *param_2)

{
  b2World *local_10;
  b2QueryCallback *local_c;
  
  local_10 = this + 0x191d8;
  local_c = param_1;
  b2BroadPhase::Query<b2WorldQueryWrapper>
            ((b2BroadPhase *)(this + 0x191d8),(b2WorldQueryWrapper *)&local_10,param_2);
  return;
}

// ---- b2World::RayCast  @ 0x6ddf28
/* b2World::RayCast(b2RayCastCallback*, b2Vec2 const&, b2Vec2 const&) const */

void __thiscall
b2World::RayCast(b2World *this,b2RayCastCallback *param_1,b2Vec2 *param_2,b2Vec2 *param_3)

{
  b2World *local_24;
  b2RayCastCallback *local_20;
  undefined4 local_1c;
  undefined4 uStack_18;
  undefined4 local_14;
  undefined4 uStack_10;
  undefined4 local_c;
  
  local_24 = this + 0x191d8;
  local_20 = param_1;
  b2RayCastInput::b2RayCastInput((b2RayCastInput *)&local_1c);
  local_c = 0x3f800000;
  local_1c = *(undefined4 *)param_2;
  uStack_18 = *(undefined4 *)(param_2 + 4);
  local_14 = *(undefined4 *)param_3;
  uStack_10 = *(undefined4 *)(param_3 + 4);
  b2BroadPhase::RayCast<b2WorldRayCastWrapper>
            ((b2BroadPhase *)(this + 0x191d8),(b2WorldRayCastWrapper *)&local_24,
             (b2RayCastInput *)&local_1c);
  return;
}

// ---- b2World::DrawShape  @ 0x6ddf84
/* b2World::DrawShape(b2Fixture*, b2Transform const&, b2Color const&) */

void __thiscall
b2World::DrawShape(b2World *this,b2Fixture *param_1,b2Transform *param_2,b2Color *param_3)

{
  undefined4 uVar1;
  int iVar2;
  b2Vec2 *pbVar3;
  undefined8 uVar4;
  undefined4 local_a0;
  undefined4 uStack_9c;
  b2Color *local_98;
  b2Transform *local_94;
  b2Fixture *local_90;
  b2World *local_8c;
  int local_88;
  int local_84;
  int local_80;
  undefined4 local_7c;
  undefined4 local_78;
  int local_74;
  int local_70;
  undefined4 local_6c;
  int local_68;
  int local_64;
  b2Transform abStack_60 [8];
  undefined4 local_58;
  undefined4 uStack_54;
  undefined4 local_50 [17];
  
  local_98 = param_3;
  local_94 = param_2;
  local_90 = param_1;
  local_8c = this;
  uVar1 = b2Fixture::GetType(param_1);
  switch(uVar1) {
  case 0:
    local_80 = b2Fixture::GetShape(local_90);
    uVar4 = b2Mul(abStack_60,(b2Vec2 *)local_94);
    local_7c = *(undefined4 *)(local_80 + 8);
    pbVar3 = (b2Vec2 *)(local_94 + 8);
    b2Vec2::b2Vec2((b2Vec2 *)local_50,(float)uVar4,(float)((ulonglong)uVar4 >> 0x20));
    b2Mul((b2Rot *)&local_58,pbVar3);
    (**(code **)(**(int **)(local_8c + 0x19248) + 0x14))
              (*(undefined4 *)(local_8c + 0x19248),abStack_60,local_7c,&local_58,local_98);
    break;
  case 1:
    local_78 = b2Fixture::GetShape(local_90);
    b2Mul((b2Transform *)&local_58,(b2Vec2 *)local_94);
    b2Mul((b2Transform *)local_50,(b2Vec2 *)local_94);
    (**(code **)(**(int **)(local_8c + 0x19248) + 0x18))
              (*(undefined4 *)(local_8c + 0x19248),&local_58,local_50,local_98);
    break;
  case 2:
    local_68 = b2Fixture::GetShape(local_90);
    local_64 = *(int *)(local_68 + 0x94);
    pbVar3 = (b2Vec2 *)local_50;
    for (iVar2 = 7; iVar2 != -1; iVar2 = iVar2 + -1) {
      b2Vec2::b2Vec2(pbVar3);
      pbVar3 = pbVar3 + 8;
    }
    for (local_84 = 0; iVar2 = local_84, local_84 < local_64; local_84 = local_84 + 1) {
      b2Mul((b2Transform *)&local_a0,(b2Vec2 *)local_94);
      local_50[iVar2 * 2] = local_a0;
      local_50[iVar2 * 2 + 1] = uStack_9c;
    }
    (**(code **)(**(int **)(local_8c + 0x19248) + 0xc))
              (*(undefined4 *)(local_8c + 0x19248),local_50,local_64,local_98);
    break;
  case 3:
    local_74 = b2Fixture::GetShape(local_90);
    local_70 = *(int *)(local_74 + 0x10);
    local_6c = *(undefined4 *)(local_74 + 0xc);
    b2Mul((b2Transform *)&local_58,(b2Vec2 *)local_94);
    for (local_88 = 1; local_88 < local_70; local_88 = local_88 + 1) {
      b2Mul((b2Transform *)local_50,(b2Vec2 *)local_94);
      (**(code **)(**(int **)(local_8c + 0x19248) + 0x18))
                (*(undefined4 *)(local_8c + 0x19248),&local_58,local_50,local_98);
      (**(code **)(**(int **)(local_8c + 0x19248) + 0x10))
                (*(undefined4 *)(local_8c + 0x19248),&local_58,0x3d4ccccd,local_98);
      local_58 = local_50[0];
      uStack_54 = local_50[1];
    }
  }
  return;
}

// ---- b2World::DrawJoint  @ 0x6de1c4
/* b2World::DrawJoint(b2Joint*) */

void __thiscall b2World::DrawJoint(b2World *this,b2Joint *param_1)

{
  b2Body *this_00;
  b2Body *this_01;
  undefined4 *puVar1;
  undefined4 *puVar2;
  int iVar3;
  float extraout_s0;
  float extraout_s1;
  float extraout_s2;
  undefined4 local_44;
  undefined4 uStack_40;
  undefined4 local_3c;
  undefined4 uStack_38;
  undefined1 auStack_34 [8];
  undefined1 auStack_2c [8];
  undefined1 auStack_24 [8];
  undefined1 auStack_1c [8];
  b2Color abStack_14 [12];
  
  this_00 = (b2Body *)b2Joint::GetBodyA(param_1);
  this_01 = (b2Body *)b2Joint::GetBodyB(param_1);
  puVar1 = (undefined4 *)b2Body::GetTransform(this_00);
  puVar2 = (undefined4 *)b2Body::GetTransform(this_01);
  local_44 = *puVar1;
  uStack_40 = puVar1[1];
  local_3c = *puVar2;
  uStack_38 = puVar2[1];
  (*(code *)**(undefined4 **)param_1)(auStack_34,param_1);
  (**(code **)(*(int *)param_1 + 4))(auStack_2c,param_1);
  b2Color::b2Color(abStack_14,extraout_s0,extraout_s1,extraout_s2);
  iVar3 = b2Joint::GetType(param_1);
  if (iVar3 == 4) {
    b2PulleyJoint::GetGroundAnchorA();
    b2PulleyJoint::GetGroundAnchorB();
    (**(code **)(**(int **)(this + 0x19248) + 0x18))
              (*(undefined4 *)(this + 0x19248),auStack_24,auStack_34,abStack_14);
    (**(code **)(**(int **)(this + 0x19248) + 0x18))
              (*(undefined4 *)(this + 0x19248),auStack_1c,auStack_2c,abStack_14);
    (**(code **)(**(int **)(this + 0x19248) + 0x18))
              (*(undefined4 *)(this + 0x19248),auStack_24,auStack_1c,abStack_14);
  }
  else if (iVar3 != 5) {
    if (iVar3 == 3) {
      (**(code **)(**(int **)(this + 0x19248) + 0x18))
                (*(undefined4 *)(this + 0x19248),auStack_34,auStack_2c,abStack_14);
    }
    else {
      (**(code **)(**(int **)(this + 0x19248) + 0x18))
                (*(undefined4 *)(this + 0x19248),&local_44,auStack_34,abStack_14);
      (**(code **)(**(int **)(this + 0x19248) + 0x18))
                (*(undefined4 *)(this + 0x19248),auStack_34,auStack_2c,abStack_14);
      (**(code **)(**(int **)(this + 0x19248) + 0x18))
                (*(undefined4 *)(this + 0x19248),&local_3c,auStack_2c,abStack_14);
    }
  }
  return;
}

// ---- b2World::DrawDebugData  @ 0x6de370
/* b2World::DrawDebugData() */

void __thiscall b2World::DrawDebugData(b2World *this)

{
  char cVar1;
  uint uVar2;
  b2Transform *pbVar3;
  undefined4 *puVar4;
  int iVar5;
  b2Vec2 *this_00;
  float extraout_s0;
  float extraout_s0_00;
  float extraout_s0_01;
  float extraout_s0_02;
  float extraout_s0_03;
  float extraout_s0_04;
  float extraout_s0_05;
  float extraout_s0_06;
  float extraout_s0_07;
  float fVar6;
  undefined4 extraout_s0_08;
  float extraout_s1;
  float extraout_s1_00;
  float extraout_s1_01;
  float extraout_s1_02;
  float extraout_s1_03;
  float extraout_s1_04;
  float extraout_s1_05;
  float extraout_s1_06;
  float extraout_s1_07;
  float fVar8;
  undefined4 extraout_s1_08;
  undefined8 uVar7;
  float extraout_s2;
  float extraout_s2_00;
  float extraout_s2_01;
  float extraout_s2_02;
  float extraout_s2_03;
  float extraout_s2_04;
  float extraout_s2_05;
  float extraout_s2_06;
  float extraout_s2_07;
  float fVar9;
  b2Body *local_7c;
  b2Fixture *local_78;
  b2Joint *local_74;
  b2Contact *local_70;
  b2Body *local_6c;
  b2Fixture *local_68;
  int local_64;
  b2Body *local_60;
  b2Color abStack_4c [12];
  undefined4 local_40;
  undefined4 local_3c;
  undefined4 local_38;
  undefined4 local_34;
  undefined4 local_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  b2Vec2 abStack_20 [8];
  b2Vec2 abStack_18 [12];
  
  if (*(int *)(this + 0x19248) != 0) {
    uVar2 = b2Draw::GetFlags(*(b2Draw **)(this + 0x19248));
    fVar6 = extraout_s0;
    fVar8 = extraout_s1;
    fVar9 = extraout_s2;
    if ((uVar2 & 1) != 0) {
      local_7c = *(b2Body **)(this + 0x19228);
      while (local_7c != (b2Body *)0x0) {
        pbVar3 = (b2Transform *)b2Body::GetTransform(local_7c);
        for (local_78 = (b2Fixture *)b2Body::GetFixtureList(local_7c); local_78 != (b2Fixture *)0x0;
            local_78 = (b2Fixture *)b2Fixture::GetNext(local_78)) {
          cVar1 = b2Body::IsActive(local_7c);
          if (cVar1 == '\x01') {
            iVar5 = b2Body::GetType(local_7c);
            if (iVar5 == 0) {
              b2Color::b2Color((b2Color *)&local_30,extraout_s0_01,extraout_s1_01,extraout_s2_01);
              DrawShape(this,local_78,pbVar3,(b2Color *)&local_30);
            }
            else {
              iVar5 = b2Body::GetType(local_7c);
              if (iVar5 == 1) {
                b2Color::b2Color((b2Color *)&local_30,extraout_s0_02,extraout_s1_02,extraout_s2_02);
                DrawShape(this,local_78,pbVar3,(b2Color *)&local_30);
              }
              else {
                cVar1 = b2Body::IsAwake(local_7c);
                if (cVar1 == '\x01') {
                  b2Color::b2Color((b2Color *)&local_30,extraout_s0_03,extraout_s1_03,extraout_s2_03
                                  );
                  DrawShape(this,local_78,pbVar3,(b2Color *)&local_30);
                }
                else {
                  b2Color::b2Color((b2Color *)&local_30,extraout_s0_03,extraout_s1_03,extraout_s2_03
                                  );
                  DrawShape(this,local_78,pbVar3,(b2Color *)&local_30);
                }
              }
            }
          }
          else {
            b2Color::b2Color((b2Color *)&local_30,extraout_s0_00,extraout_s1_00,extraout_s2_00);
            DrawShape(this,local_78,pbVar3,(b2Color *)&local_30);
          }
        }
        local_7c = (b2Body *)b2Body::GetNext(local_7c);
        fVar6 = extraout_s0_04;
        fVar8 = extraout_s1_04;
        fVar9 = extraout_s2_04;
      }
    }
    if ((uVar2 & 2) != 0) {
      local_74 = *(b2Joint **)(this + 0x1922c);
      while (local_74 != (b2Joint *)0x0) {
        DrawJoint(this,local_74);
        local_74 = (b2Joint *)b2Joint::GetNext(local_74);
        fVar6 = extraout_s0_05;
        fVar8 = extraout_s1_05;
        fVar9 = extraout_s2_05;
      }
    }
    if ((uVar2 & 8) != 0) {
      b2Color::b2Color((b2Color *)&local_30,fVar6,fVar8,fVar9);
      local_70 = *(b2Contact **)(this + 0x19214);
      fVar6 = extraout_s0_06;
      fVar8 = extraout_s1_06;
      fVar9 = extraout_s2_06;
      while (local_70 != (b2Contact *)0x0) {
        local_70 = (b2Contact *)b2Contact::GetNext(local_70);
        fVar6 = extraout_s0_07;
        fVar8 = extraout_s1_07;
        fVar9 = extraout_s2_07;
      }
    }
    if ((uVar2 & 4) != 0) {
      b2Color::b2Color(abStack_4c,fVar6,fVar8,fVar9);
      for (local_6c = *(b2Body **)(this + 0x19228); local_6c != (b2Body *)0x0;
          local_6c = (b2Body *)b2Body::GetNext(local_6c)) {
        cVar1 = b2Body::IsActive(local_6c);
        if (cVar1 == '\x01') {
          for (local_68 = (b2Fixture *)b2Body::GetFixtureList(local_6c);
              local_68 != (b2Fixture *)0x0; local_68 = (b2Fixture *)b2Fixture::GetNext(local_68)) {
            for (local_64 = 0; local_64 < *(int *)(local_68 + 0x1c); local_64 = local_64 + 1) {
              puVar4 = (undefined4 *)
                       b2BroadPhase::GetFatAABB
                                 ((b2BroadPhase *)(this + 0x191d8),
                                  *(int *)(local_64 * 0x1c + *(int *)(local_68 + 0x18) + 0x18));
              uVar7 = CONCAT44(extraout_s1_08,extraout_s0_08);
              local_40 = *puVar4;
              local_3c = puVar4[1];
              local_38 = puVar4[2];
              local_34 = puVar4[3];
              this_00 = (b2Vec2 *)&local_30;
              iVar5 = 3;
              while( true ) {
                if (iVar5 == -1) break;
                uVar7 = b2Vec2::b2Vec2(this_00);
                this_00 = this_00 + 8;
                iVar5 = iVar5 + -1;
              }
              uVar7 = b2Vec2::Set((b2Vec2 *)&local_30,(float)uVar7,(float)((ulonglong)uVar7 >> 0x20)
                                 );
              uVar7 = b2Vec2::Set((b2Vec2 *)&uStack_28,(float)uVar7,
                                  (float)((ulonglong)uVar7 >> 0x20));
              uVar7 = b2Vec2::Set(abStack_20,(float)uVar7,(float)((ulonglong)uVar7 >> 0x20));
              b2Vec2::Set(abStack_18,(float)uVar7,(float)((ulonglong)uVar7 >> 0x20));
              (**(code **)(**(int **)(this + 0x19248) + 8))
                        (*(undefined4 *)(this + 0x19248),&local_30,4,abStack_4c);
            }
          }
        }
      }
    }
    if ((uVar2 & 0x10) != 0) {
      for (local_60 = *(b2Body **)(this + 0x19228); local_60 != (b2Body *)0x0;
          local_60 = (b2Body *)b2Body::GetNext(local_60)) {
        puVar4 = (undefined4 *)b2Body::GetTransform(local_60);
        local_30 = *puVar4;
        uStack_2c = puVar4[1];
        uStack_28 = puVar4[2];
        uStack_24 = puVar4[3];
        puVar4 = (undefined4 *)b2Body::GetWorldCenter(local_60);
        local_30 = *puVar4;
        uStack_2c = puVar4[1];
        (**(code **)(**(int **)(this + 0x19248) + 0x1c))(*(undefined4 *)(this + 0x19248),&local_30);
      }
    }
  }
  return;
}

// ---- b2World::GetProxyCount  @ 0x6de73c
/* b2World::GetProxyCount() const */

undefined4 __thiscall b2World::GetProxyCount(b2World *this)

{
  undefined4 uVar1;
  
  uVar1 = b2BroadPhase::GetProxyCount((b2BroadPhase *)(this + 0x191d8));
  return uVar1;
}

// ---- b2World::GetTreeHeight  @ 0x6de75c
/* b2World::GetTreeHeight() const */

undefined4 __thiscall b2World::GetTreeHeight(b2World *this)

{
  undefined4 uVar1;
  
  uVar1 = b2BroadPhase::GetTreeHeight((b2BroadPhase *)(this + 0x191d8));
  return uVar1;
}

// ---- b2World::GetTreeBalance  @ 0x6de77c
/* b2World::GetTreeBalance() const */

undefined4 __thiscall b2World::GetTreeBalance(b2World *this)

{
  undefined4 uVar1;
  
  uVar1 = b2BroadPhase::GetTreeBalance((b2BroadPhase *)(this + 0x191d8));
  return uVar1;
}

// ---- b2World::GetTreeQuality  @ 0x6de79c
/* b2World::GetTreeQuality() const */

undefined4 __thiscall b2World::GetTreeQuality(b2World *this)

{
  undefined4 uVar1;
  
  uVar1 = b2BroadPhase::GetTreeQuality((b2BroadPhase *)(this + 0x191d8));
  return uVar1;
}

// ---- b2World::Dump  @ 0x6de7bc
/* b2World::Dump() */

void b2World::Dump(void)

{
  int in_r0;
  undefined4 in_r1;
  double dVar1;
  int local_1c;
  b2Body *local_18;
  int local_14;
  int *local_10;
  int *local_c;
  
  if ((*(uint *)(&__DT_SYMTAB[0x908].st_info + in_r0) & 2) == 0) {
    dVar1 = (double)*(float *)((int)&__DT_SYMTAB[0x90f].st_name + in_r0);
    b2Log("b2Vec2 g(%.15lef, %.15lef);\n",in_r1,SUB84(dVar1,0),(int)((ulonglong)dVar1 >> 0x20),
          (double)*(float *)((int)&__DT_SYMTAB[0x90f].st_value + in_r0));
    b2Log("m_world->SetGravity(g);\n");
    b2Log("b2Body** bodies = (b2Body**)b2Alloc(%d * sizeof(b2Body*));\n",
          *(undefined4 *)((int)&__DT_SYMTAB[0x90e].st_size + in_r0));
    b2Log("b2Joint** joints = (b2Joint**)b2Alloc(%d * sizeof(b2Joint*));\n",
          *(undefined4 *)(&__DT_SYMTAB[0x90e].st_info + in_r0));
    local_1c = 0;
    for (local_18 = *(b2Body **)((int)&__DT_SYMTAB[0x90e].st_name + in_r0);
        local_18 != (b2Body *)0x0; local_18 = *(b2Body **)(local_18 + 0x60)) {
      *(int *)(local_18 + 8) = local_1c;
      b2Body::Dump(local_18);
      local_1c = local_1c + 1;
    }
    local_1c = 0;
    for (local_14 = *(int *)((int)&__DT_SYMTAB[0x90e].st_value + in_r0); local_14 != 0;
        local_14 = *(int *)(local_14 + 0xc)) {
      *(int *)(local_14 + 0x38) = local_1c;
      local_1c = local_1c + 1;
    }
    for (local_10 = *(int **)((int)&__DT_SYMTAB[0x90e].st_value + in_r0); local_10 != (int *)0x0;
        local_10 = (int *)local_10[3]) {
      if (local_10[1] != 6) {
        b2Log("{\n");
        (**(code **)(*local_10 + 0x10))(local_10);
        b2Log("}\n");
      }
    }
    for (local_c = *(int **)((int)&__DT_SYMTAB[0x90e].st_value + in_r0); local_c != (int *)0x0;
        local_c = (int *)local_c[3]) {
      if (local_c[1] == 6) {
        b2Log("{\n");
        (**(code **)(*local_c + 0x10))(local_c);
        b2Log("}\n");
      }
    }
    b2Log("b2Free(joints);\n");
    b2Log("b2Free(bodies);\n");
    b2Log("joints = NULL;\n");
    b2Log("bodies = NULL;\n");
  }
  return;
}
