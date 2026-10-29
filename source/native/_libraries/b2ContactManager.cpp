// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 6 functions

// ---- b2ContactManager::b2ContactManager  @ 0x6d9778
/* b2ContactManager::b2ContactManager() */

b2ContactManager * __thiscall b2ContactManager::b2ContactManager(b2ContactManager *this)

{
  b2BroadPhase::b2BroadPhase((b2BroadPhase *)this);
  *(undefined4 *)(this + 0x3c) = 0;
  *(undefined4 *)(this + 0x40) = 0;
  *(undefined4 **)(this + 0x44) = &b2_defaultFilter;
  *(undefined4 **)(this + 0x48) = &b2_defaultListener;
  *(undefined4 *)(this + 0x4c) = 0;
  return this;
}

// ---- b2ContactManager::Destroy  @ 0x6d97c0
/* b2ContactManager::Destroy(b2Contact*) */

void __thiscall b2ContactManager::Destroy(b2ContactManager *this,b2Contact *param_1)

{
  bool bVar1;
  b2Fixture *this_00;
  b2Fixture *this_01;
  int iVar2;
  int iVar3;
  int iVar4;
  
  this_00 = (b2Fixture *)b2Contact::GetFixtureA(param_1);
  this_01 = (b2Fixture *)b2Contact::GetFixtureB(param_1);
  iVar2 = b2Fixture::GetBody(this_00);
  iVar3 = b2Fixture::GetBody(this_01);
  if ((*(int *)(this + 0x48) == 0) || (iVar4 = b2Contact::IsTouching(param_1), iVar4 == 0)) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (bVar1) {
    (**(code **)(**(int **)(this + 0x48) + 0xc))(*(undefined4 *)(this + 0x48),param_1);
  }
  if (*(int *)(param_1 + 8) != 0) {
    *(undefined4 *)(*(int *)(param_1 + 8) + 0xc) = *(undefined4 *)(param_1 + 0xc);
  }
  if (*(int *)(param_1 + 0xc) != 0) {
    *(undefined4 *)(*(int *)(param_1 + 0xc) + 8) = *(undefined4 *)(param_1 + 8);
  }
  if (*(b2Contact **)(this + 0x3c) == param_1) {
    *(undefined4 *)(this + 0x3c) = *(undefined4 *)(param_1 + 0xc);
  }
  if (*(int *)(param_1 + 0x18) != 0) {
    *(undefined4 *)(*(int *)(param_1 + 0x18) + 0xc) = *(undefined4 *)(param_1 + 0x1c);
  }
  if (*(int *)(param_1 + 0x1c) != 0) {
    *(undefined4 *)(*(int *)(param_1 + 0x1c) + 8) = *(undefined4 *)(param_1 + 0x18);
  }
  if (param_1 + 0x10 == *(b2Contact **)(iVar2 + 0x70)) {
    *(undefined4 *)(iVar2 + 0x70) = *(undefined4 *)(param_1 + 0x1c);
  }
  if (*(int *)(param_1 + 0x28) != 0) {
    *(undefined4 *)(*(int *)(param_1 + 0x28) + 0xc) = *(undefined4 *)(param_1 + 0x2c);
  }
  if (*(int *)(param_1 + 0x2c) != 0) {
    *(undefined4 *)(*(int *)(param_1 + 0x2c) + 8) = *(undefined4 *)(param_1 + 0x28);
  }
  if (param_1 + 0x20 == *(b2Contact **)(iVar3 + 0x70)) {
    *(undefined4 *)(iVar3 + 0x70) = *(undefined4 *)(param_1 + 0x2c);
  }
  b2Contact::Destroy(param_1,*(b2BlockAllocator **)(this + 0x4c));
  *(int *)(this + 0x40) = *(int *)(this + 0x40) + -1;
  return;
}

// ---- b2ContactManager::Collide  @ 0x6d98e8
/* b2ContactManager::Collide() */

void __thiscall b2ContactManager::Collide(b2ContactManager *this)

{
  char cVar1;
  b2Fixture *this_00;
  b2Fixture *this_01;
  int iVar2;
  int iVar3;
  b2Body *this_02;
  b2Body *this_03;
  b2Contact *pbVar4;
  int iVar5;
  bool bVar6;
  bool bVar7;
  b2Contact *local_38;
  
  local_38 = *(b2Contact **)(this + 0x3c);
LAB_006d9a9c:
  do {
    if (local_38 == (b2Contact *)0x0) {
      return;
    }
    this_00 = (b2Fixture *)b2Contact::GetFixtureA(local_38);
    this_01 = (b2Fixture *)b2Contact::GetFixtureB(local_38);
    iVar2 = b2Contact::GetChildIndexA(local_38);
    iVar3 = b2Contact::GetChildIndexB(local_38);
    this_02 = (b2Body *)b2Fixture::GetBody(this_00);
    this_03 = (b2Body *)b2Fixture::GetBody(this_01);
    if ((*(uint *)(local_38 + 4) & 8) != 0) {
      cVar1 = b2Body::ShouldCollide(this_03,this_02);
      if (cVar1 != '\x01') {
        pbVar4 = (b2Contact *)b2Contact::GetNext(local_38);
        Destroy(this,local_38);
        local_38 = pbVar4;
        goto LAB_006d9a9c;
      }
      if ((*(int *)(this + 0x44) == 0) ||
         (cVar1 = (**(code **)(**(int **)(this + 0x44) + 8))
                            (*(undefined4 *)(this + 0x44),this_00,this_01), cVar1 == '\x01')) {
        bVar6 = false;
      }
      else {
        bVar6 = true;
      }
      if (bVar6) {
        pbVar4 = (b2Contact *)b2Contact::GetNext(local_38);
        Destroy(this,local_38);
        local_38 = pbVar4;
        goto LAB_006d9a9c;
      }
      *(uint *)(local_38 + 4) = *(uint *)(local_38 + 4) & 0xfffffff7;
    }
    iVar5 = b2Body::IsAwake(this_02);
    if ((iVar5 == 0) || (*(int *)this_02 == 0)) {
      bVar6 = false;
    }
    else {
      bVar6 = true;
    }
    iVar5 = b2Body::IsAwake(this_03);
    if ((iVar5 == 0) || (*(int *)this_03 == 0)) {
      bVar7 = false;
    }
    else {
      bVar7 = true;
    }
    if ((bVar6) || (bVar7)) {
      cVar1 = b2BroadPhase::TestOverlap
                        ((b2BroadPhase *)this,
                         *(int *)(iVar2 * 0x1c + *(int *)(this_00 + 0x18) + 0x18),
                         *(int *)(iVar3 * 0x1c + *(int *)(this_01 + 0x18) + 0x18));
      if (cVar1 == '\x01') {
        b2Contact::Update(local_38,*(b2ContactListener **)(this + 0x48));
        local_38 = (b2Contact *)b2Contact::GetNext(local_38);
      }
      else {
        pbVar4 = (b2Contact *)b2Contact::GetNext(local_38);
        Destroy(this,local_38);
        local_38 = pbVar4;
      }
    }
    else {
      local_38 = (b2Contact *)b2Contact::GetNext(local_38);
    }
  } while( true );
}

// ---- b2ContactManager::FindNewContacts  @ 0x6d9aac
/* b2ContactManager::FindNewContacts() */

void __thiscall b2ContactManager::FindNewContacts(b2ContactManager *this)

{
  b2BroadPhase::UpdatePairs<b2ContactManager>((b2BroadPhase *)this,this);
  return;
}

// ---- b2ContactManager::AddPair  @ 0x6d9ac4
/* b2ContactManager::AddPair(void*, void*) */

void __thiscall b2ContactManager::AddPair(b2ContactManager *this,void *param_1,void *param_2)

{
  bool bVar1;
  char cVar2;
  b2Body *pbVar3;
  b2Body *pbVar4;
  b2Fixture *pbVar5;
  b2Fixture *pbVar6;
  int iVar7;
  int iVar8;
  b2Contact *this_00;
  b2Fixture *pbVar9;
  b2Fixture *pbVar10;
  int iVar11;
  int iVar12;
  undefined4 *local_40;
  
  pbVar9 = *(b2Fixture **)((int)param_1 + 0x10);
  pbVar10 = *(b2Fixture **)((int)param_2 + 0x10);
  iVar11 = *(int *)((int)param_1 + 0x14);
  iVar12 = *(int *)((int)param_2 + 0x14);
  pbVar3 = (b2Body *)b2Fixture::GetBody(pbVar9);
  pbVar4 = (b2Body *)b2Fixture::GetBody(pbVar10);
  if (pbVar3 != pbVar4) {
    for (local_40 = (undefined4 *)b2Body::GetContactList(pbVar4); local_40 != (undefined4 *)0x0;
        local_40 = (undefined4 *)local_40[3]) {
      if ((b2Body *)*local_40 == pbVar3) {
        pbVar5 = (b2Fixture *)b2Contact::GetFixtureA((b2Contact *)local_40[1]);
        pbVar6 = (b2Fixture *)b2Contact::GetFixtureB((b2Contact *)local_40[1]);
        iVar7 = b2Contact::GetChildIndexA((b2Contact *)local_40[1]);
        iVar8 = b2Contact::GetChildIndexB((b2Contact *)local_40[1]);
        if ((((pbVar5 == pbVar9) && (pbVar6 == pbVar10)) && (iVar7 == iVar11)) && (iVar8 == iVar12))
        {
          return;
        }
        if (((pbVar5 == pbVar10) && (pbVar6 == pbVar9)) && ((iVar7 == iVar12 && (iVar8 == iVar11))))
        {
          return;
        }
      }
    }
    cVar2 = b2Body::ShouldCollide(pbVar4,pbVar3);
    if (cVar2 == '\x01') {
      if ((*(int *)(this + 0x44) == 0) ||
         (cVar2 = (**(code **)(**(int **)(this + 0x44) + 8))
                            (*(undefined4 *)(this + 0x44),pbVar9,pbVar10), cVar2 == '\x01')) {
        bVar1 = false;
      }
      else {
        bVar1 = true;
      }
      if ((!bVar1) &&
         (this_00 = (b2Contact *)
                    b2Contact::Create(pbVar9,iVar11,pbVar10,iVar12,
                                      *(b2BlockAllocator **)(this + 0x4c)),
         this_00 != (b2Contact *)0x0)) {
        pbVar9 = (b2Fixture *)b2Contact::GetFixtureA(this_00);
        pbVar10 = (b2Fixture *)b2Contact::GetFixtureB(this_00);
        b2Contact::GetChildIndexA(this_00);
        b2Contact::GetChildIndexB(this_00);
        pbVar3 = (b2Body *)b2Fixture::GetBody(pbVar9);
        pbVar4 = (b2Body *)b2Fixture::GetBody(pbVar10);
        *(undefined4 *)(this_00 + 8) = 0;
        *(undefined4 *)(this_00 + 0xc) = *(undefined4 *)(this + 0x3c);
        if (*(int *)(this + 0x3c) != 0) {
          *(b2Contact **)(*(int *)(this + 0x3c) + 8) = this_00;
        }
        *(b2Contact **)(this + 0x3c) = this_00;
        *(b2Contact **)(this_00 + 0x14) = this_00;
        *(b2Body **)(this_00 + 0x10) = pbVar4;
        *(undefined4 *)(this_00 + 0x18) = 0;
        *(undefined4 *)(this_00 + 0x1c) = *(undefined4 *)(pbVar3 + 0x70);
        if (*(int *)(pbVar3 + 0x70) != 0) {
          *(b2Contact **)(*(int *)(pbVar3 + 0x70) + 8) = this_00 + 0x10;
        }
        *(b2Contact **)(pbVar3 + 0x70) = this_00 + 0x10;
        *(b2Contact **)(this_00 + 0x24) = this_00;
        *(b2Body **)(this_00 + 0x20) = pbVar3;
        *(undefined4 *)(this_00 + 0x28) = 0;
        *(undefined4 *)(this_00 + 0x2c) = *(undefined4 *)(pbVar4 + 0x70);
        if (*(int *)(pbVar4 + 0x70) != 0) {
          *(b2Contact **)(*(int *)(pbVar4 + 0x70) + 8) = this_00 + 0x20;
        }
        *(b2Contact **)(pbVar4 + 0x70) = this_00 + 0x20;
        b2Body::SetAwake(pbVar3,true);
        b2Body::SetAwake(pbVar4,true);
        *(int *)(this + 0x40) = *(int *)(this + 0x40) + 1;
      }
    }
  }
  return;
}

// ---- b2ContactManager::~b2ContactManager  @ 0x6dc600
/* b2ContactManager::~b2ContactManager() */

b2ContactManager * __thiscall b2ContactManager::~b2ContactManager(b2ContactManager *this)

{
  b2BroadPhase::~b2BroadPhase((b2BroadPhase *)this);
  return this;
}
