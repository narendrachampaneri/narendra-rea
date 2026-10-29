// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 32 functions

// ---- b2Body::GetTransform  @ 0x6c9ae8
/* b2Body::GetTransform() const */

b2Body * __thiscall b2Body::GetTransform(b2Body *this)

{
  return this + 0xc;
}

// ---- b2Body::SetAwake  @ 0x6c9af8
/* b2Body::SetAwake(bool) */

void __thiscall b2Body::SetAwake(b2Body *this,bool param_1)

{
  if (param_1) {
    if ((*(ushort *)(this + 4) & 2) == 0) {
      *(ushort *)(this + 4) = *(ushort *)(this + 4) | 2;
      *(undefined4 *)(this + 0x90) = 0;
    }
  }
  else {
    *(ushort *)(this + 4) = *(ushort *)(this + 4) & 0xfffd;
    *(undefined4 *)(this + 0x90) = 0;
    b2Vec2::SetZero((b2Vec2 *)(this + 0x40));
    *(undefined4 *)(this + 0x48) = 0;
    b2Vec2::SetZero((b2Vec2 *)(this + 0x4c));
    *(undefined4 *)(this + 0x54) = 0;
  }
  return;
}

// ---- b2Body::GetWorldPoint  @ 0x6ccb28
/* b2Body::GetWorldPoint(b2Vec2 const&) const */

b2Body * __thiscall b2Body::GetWorldPoint(b2Body *this,b2Vec2 *param_1)

{
  b2Mul((b2Transform *)this,param_1 + 0xc);
  return this;
}

// ---- b2Body::GetLocalPoint  @ 0x6ccb4c
/* b2Body::GetLocalPoint(b2Vec2 const&) const */

b2Body * __thiscall b2Body::GetLocalPoint(b2Body *this,b2Vec2 *param_1)

{
  b2MulT((b2Transform *)this,param_1 + 0xc);
  return this;
}

// ---- b2Body::IsActive  @ 0x6cfd34
/* b2Body::IsActive() const */

bool __thiscall b2Body::IsActive(b2Body *this)

{
  return (*(ushort *)(this + 4) & 0x20) != 0;
}

// ---- b2Body::GetMass  @ 0x6d01b0
/* b2Body::GetMass() const */

undefined4 __thiscall b2Body::GetMass(b2Body *this)

{
  return *(undefined4 *)(this + 0x74);
}

// ---- b2Body::IsAwake  @ 0x6d01c0
/* b2Body::IsAwake() const */

bool __thiscall b2Body::IsAwake(b2Body *this)

{
  return (*(ushort *)(this + 4) & 2) != 0;
}

// ---- b2Body::GetAngle  @ 0x6d0c7c
/* b2Body::GetAngle() const */

undefined4 __thiscall b2Body::GetAngle(b2Body *this)

{
  return *(undefined4 *)(this + 0x38);
}

// ---- b2Body::GetWorldVector  @ 0x6d0c8c
/* b2Body::GetWorldVector(b2Vec2 const&) const */

b2Body * __thiscall b2Body::GetWorldVector(b2Body *this,b2Vec2 *param_1)

{
  b2Mul((b2Rot *)this,param_1 + 0x14);
  return this;
}

// ---- b2Body::GetLocalVector  @ 0x6d0cb0
/* b2Body::GetLocalVector(b2Vec2 const&) const */

b2Body * __thiscall b2Body::GetLocalVector(b2Body *this,b2Vec2 *param_1)

{
  b2MulT((b2Rot *)this,param_1 + 0x14);
  return this;
}

// ---- b2Body::b2Body  @ 0x6d87e8
/* b2Body::b2Body(b2BodyDef const*, b2World*) */

b2Body * __thiscall b2Body::b2Body(b2Body *this,b2BodyDef *param_1,b2World *param_2)

{
  undefined4 uVar1;
  float fVar2;
  
  b2Transform::b2Transform((b2Transform *)(this + 0xc));
  b2Sweep::b2Sweep((b2Sweep *)(this + 0x1c));
  b2Vec2::b2Vec2((b2Vec2 *)(this + 0x40));
  fVar2 = (float)b2Vec2::b2Vec2((b2Vec2 *)(this + 0x4c));
  *(undefined2 *)(this + 4) = 0;
  if (param_1[0x27] != (b2BodyDef)0x0) {
    *(ushort *)(this + 4) = *(ushort *)(this + 4) | 8;
  }
  if (param_1[0x26] != (b2BodyDef)0x0) {
    *(ushort *)(this + 4) = *(ushort *)(this + 4) | 0x10;
  }
  if (param_1[0x24] != (b2BodyDef)0x0) {
    *(ushort *)(this + 4) = *(ushort *)(this + 4) | 4;
  }
  if (param_1[0x25] != (b2BodyDef)0x0) {
    *(ushort *)(this + 4) = *(ushort *)(this + 4) | 2;
  }
  if (param_1[0x28] != (b2BodyDef)0x0) {
    *(ushort *)(this + 4) = *(ushort *)(this + 4) | 0x20;
  }
  *(b2World **)(this + 0x58) = param_2;
  uVar1 = *(undefined4 *)(param_1 + 8);
  *(undefined4 *)(this + 0xc) = *(undefined4 *)(param_1 + 4);
  *(undefined4 *)(this + 0x10) = uVar1;
  b2Rot::Set((b2Rot *)(this + 0x14),fVar2);
  b2Vec2::SetZero((b2Vec2 *)(this + 0x1c));
  *(undefined4 *)(this + 0x24) = *(undefined4 *)(this + 0xc);
  *(undefined4 *)(this + 0x28) = *(undefined4 *)(this + 0x10);
  *(undefined4 *)(this + 0x2c) = *(undefined4 *)(this + 0xc);
  *(undefined4 *)(this + 0x30) = *(undefined4 *)(this + 0x10);
  *(undefined4 *)(this + 0x34) = *(undefined4 *)(param_1 + 0xc);
  *(undefined4 *)(this + 0x38) = *(undefined4 *)(param_1 + 0xc);
  *(undefined4 *)(this + 0x3c) = 0;
  *(undefined4 *)(this + 0x6c) = 0;
  *(undefined4 *)(this + 0x70) = 0;
  *(undefined4 *)(this + 0x5c) = 0;
  *(undefined4 *)(this + 0x60) = 0;
  uVar1 = *(undefined4 *)(param_1 + 0x14);
  *(undefined4 *)(this + 0x40) = *(undefined4 *)(param_1 + 0x10);
  *(undefined4 *)(this + 0x44) = uVar1;
  *(undefined4 *)(this + 0x48) = *(undefined4 *)(param_1 + 0x18);
  *(undefined4 *)(this + 0x84) = *(undefined4 *)(param_1 + 0x1c);
  *(undefined4 *)(this + 0x88) = *(undefined4 *)(param_1 + 0x20);
  *(undefined4 *)(this + 0x8c) = *(undefined4 *)(param_1 + 0x30);
  b2Vec2::SetZero((b2Vec2 *)(this + 0x4c));
  *(undefined4 *)(this + 0x54) = 0;
  *(undefined4 *)(this + 0x90) = 0;
  *(undefined4 *)this = *(undefined4 *)param_1;
  if (*(int *)this == 2) {
    *(undefined4 *)(this + 0x74) = 0x3f800000;
    *(undefined4 *)(this + 0x78) = 0x3f800000;
  }
  else {
    *(undefined4 *)(this + 0x74) = 0;
    *(undefined4 *)(this + 0x78) = 0;
  }
  *(undefined4 *)(this + 0x7c) = 0;
  *(undefined4 *)(this + 0x80) = 0;
  *(undefined4 *)(this + 0x94) = *(undefined4 *)(param_1 + 0x2c);
  *(undefined4 *)(this + 100) = 0;
  *(undefined4 *)(this + 0x68) = 0;
  return this;
}

// ---- b2Body::~b2Body  @ 0x6d89d0
/* b2Body::~b2Body() */

b2Body * __thiscall b2Body::~b2Body(b2Body *this)

{
  return this;
}

// ---- b2Body::SetType  @ 0x6d89dc
/* b2Body::SetType(b2BodyType) */

void __thiscall b2Body::SetType(b2Body *this,int param_2)

{
  int iVar1;
  b2Fixture *local_c;
  
  iVar1 = b2World::IsLocked(*(b2World **)(this + 0x58));
  if ((iVar1 == 0) && (*(int *)this != param_2)) {
    *(int *)this = param_2;
    ResetMassData(this);
    if (*(int *)this == 0) {
      b2Vec2::SetZero((b2Vec2 *)(this + 0x40));
      *(undefined4 *)(this + 0x48) = 0;
      *(undefined4 *)(this + 0x34) = *(undefined4 *)(this + 0x38);
      *(undefined4 *)(this + 0x24) = *(undefined4 *)(this + 0x2c);
      *(undefined4 *)(this + 0x28) = *(undefined4 *)(this + 0x30);
      SynchronizeFixtures(this);
    }
    SetAwake(this,true);
    b2Vec2::SetZero((b2Vec2 *)(this + 0x4c));
    *(undefined4 *)(this + 0x54) = 0;
    for (local_c = *(b2Fixture **)(this + 100); local_c != (b2Fixture *)0x0;
        local_c = *(b2Fixture **)(local_c + 4)) {
      b2Fixture::Refilter(local_c);
    }
  }
  return;
}

// ---- b2Body::CreateFixture  @ 0x6d8a80
/* b2Body::CreateFixture(b2FixtureDef const*) */

b2Fixture * __thiscall b2Body::CreateFixture(b2Body *this,b2FixtureDef *param_1)

{
  int iVar1;
  void *pvVar2;
  b2Fixture *this_00;
  b2BlockAllocator *this_01;
  
  iVar1 = b2World::IsLocked(*(b2World **)(this + 0x58));
  if (iVar1 == 0) {
    this_01 = *(b2BlockAllocator **)(this + 0x58);
    pvVar2 = (void *)b2BlockAllocator::Allocate(this_01,0x2c);
    this_00 = operator_new(0x2c,pvVar2);
    if (this_00 != (b2Fixture *)0x0) {
      b2Fixture::b2Fixture(this_00);
    }
    b2Fixture::Create(this_00,this_01,this,param_1);
    if ((*(ushort *)(this + 4) & 0x20) != 0) {
      b2Fixture::CreateProxies
                (this_00,(b2BroadPhase *)((int)&__DT_SYMTAB[0x909].st_name + *(int *)(this + 0x58)),
                 (b2Transform *)(this + 0xc));
    }
    *(undefined4 *)(this_00 + 4) = *(undefined4 *)(this + 100);
    *(b2Fixture **)(this + 100) = this_00;
    *(int *)(this + 0x68) = *(int *)(this + 0x68) + 1;
    *(b2Body **)(this_00 + 8) = this;
    if (0.0 < *(float *)this_00) {
      ResetMassData(this);
    }
    *(uint *)(&__DT_SYMTAB[0x908].st_info + *(int *)(this + 0x58)) =
         *(uint *)(&__DT_SYMTAB[0x908].st_info + *(int *)(this + 0x58)) | 1;
  }
  else {
    this_00 = (b2Fixture *)0x0;
  }
  return this_00;
}

// ---- b2Body::CreateFixture  @ 0x6d8b6c
/* b2Body::CreateFixture(b2Shape const*, float) */

undefined4 __thiscall b2Body::CreateFixture(b2Body *this,b2Shape *param_1,float param_2)

{
  undefined4 uVar1;
  b2Shape *local_24 [8];
  
  b2FixtureDef::b2FixtureDef((b2FixtureDef *)local_24);
  local_24[0] = param_1;
  uVar1 = CreateFixture(this,(b2FixtureDef *)local_24);
  return uVar1;
}

// ---- b2Body::DestroyFixture  @ 0x6d8b9c
/* b2Body::DestroyFixture(b2Fixture*) */

void __thiscall b2Body::DestroyFixture(b2Body *this,b2Fixture *param_1)

{
  int iVar1;
  b2Fixture *pbVar2;
  b2Fixture *pbVar3;
  b2Contact *this_00;
  b2BlockAllocator *this_01;
  b2Body *local_24;
  int local_20;
  
  iVar1 = b2World::IsLocked(*(b2World **)(this + 0x58));
  if (iVar1 == 0) {
    for (local_24 = this + 100; *(int *)local_24 != 0; local_24 = (b2Body *)(*(int *)local_24 + 4))
    {
      if (*(b2Fixture **)local_24 == param_1) {
        *(undefined4 *)local_24 = *(undefined4 *)(param_1 + 4);
        break;
      }
    }
    local_20 = *(int *)(this + 0x70);
    while (local_20 != 0) {
      this_00 = *(b2Contact **)(local_20 + 4);
      local_20 = *(int *)(local_20 + 0xc);
      pbVar2 = (b2Fixture *)b2Contact::GetFixtureA(this_00);
      pbVar3 = (b2Fixture *)b2Contact::GetFixtureB(this_00);
      if ((param_1 == pbVar2) || (param_1 == pbVar3)) {
        b2ContactManager::Destroy
                  ((b2ContactManager *)((int)&__DT_SYMTAB[0x909].st_name + *(int *)(this + 0x58)),
                   this_00);
      }
    }
    this_01 = *(b2BlockAllocator **)(this + 0x58);
    if ((*(ushort *)(this + 4) & 0x20) != 0) {
      b2Fixture::DestroyProxies
                (param_1,(b2BroadPhase *)((int)&__DT_SYMTAB[0x909].st_name + *(int *)(this + 0x58)))
      ;
    }
    b2Fixture::Destroy(param_1,this_01);
    *(undefined4 *)(param_1 + 8) = 0;
    *(undefined4 *)(param_1 + 4) = 0;
    b2BlockAllocator::Free(this_01,param_1,0x2c);
    *(int *)(this + 0x68) = *(int *)(this + 0x68) + -1;
    ResetMassData(this);
  }
  return;
}

// ---- b2Body::ResetMassData  @ 0x6d8cb8
/* b2Body::ResetMassData() */

void __thiscall b2Body::ResetMassData(b2Body *this)

{
  b2Body *pbVar1;
  b2Vec2 *this_00;
  float fVar2;
  float fVar3;
  undefined4 local_58;
  undefined4 uStack_54;
  b2Body *local_4c;
  b2Fixture *local_44;
  undefined4 local_40;
  undefined4 uStack_3c;
  undefined4 local_38;
  undefined4 uStack_34;
  b2Vec2 abStack_30 [8];
  float local_28 [3];
  float local_1c;
  
  *(undefined4 *)(this + 0x74) = 0;
  *(undefined4 *)(this + 0x78) = 0;
  *(undefined4 *)(this + 0x7c) = 0;
  *(undefined4 *)(this + 0x80) = 0;
  local_4c = this;
  fVar2 = (float)b2Vec2::SetZero((b2Vec2 *)(this + 0x1c));
  if ((*(int *)local_4c == 0) || (*(int *)local_4c == 1)) {
    *(undefined4 *)(local_4c + 0x24) = *(undefined4 *)(local_4c + 0xc);
    *(undefined4 *)(local_4c + 0x28) = *(undefined4 *)(local_4c + 0x10);
    *(undefined4 *)(local_4c + 0x2c) = *(undefined4 *)(local_4c + 0xc);
    *(undefined4 *)(local_4c + 0x30) = *(undefined4 *)(local_4c + 0x10);
    *(undefined4 *)(local_4c + 0x34) = *(undefined4 *)(local_4c + 0x38);
  }
  else {
    local_40 = (undefined4)b2Vec2_zero;
    uStack_3c = b2Vec2_zero._4_4_;
    for (local_44 = *(b2Fixture **)(local_4c + 100); local_44 != (b2Fixture *)0x0;
        local_44 = *(b2Fixture **)(local_44 + 4)) {
      if (*(float *)local_44 != 0.0) {
        b2MassData::b2MassData((b2MassData *)local_28);
        fVar2 = (float)b2Fixture::GetMassData(local_44,(b2MassData *)local_28);
        *(float *)(local_4c + 0x74) = *(float *)(local_4c + 0x74) + local_28[0];
        ::operator*(fVar2,abStack_30);
        fVar2 = (float)b2Vec2::operator+=((b2Vec2 *)&local_40,abStack_30);
        *(float *)(local_4c + 0x7c) = *(float *)(local_4c + 0x7c) + local_1c;
      }
    }
    if (*(float *)(local_4c + 0x74) <= 0.0) {
      *(undefined4 *)(local_4c + 0x74) = 0x3f800000;
      *(undefined4 *)(local_4c + 0x78) = 0x3f800000;
    }
    else {
      *(float *)(local_4c + 0x78) = 1.0 / *(float *)(local_4c + 0x74);
      b2Vec2::operator*=((b2Vec2 *)&local_40,fVar2);
    }
    if ((*(float *)(local_4c + 0x7c) <= 0.0) || ((*(ushort *)(local_4c + 4) & 0x10) != 0)) {
      *(undefined4 *)(local_4c + 0x7c) = 0;
      *(undefined4 *)(local_4c + 0x80) = 0;
    }
    else {
      fVar3 = *(float *)(local_4c + 0x74);
      fVar2 = (float)b2Dot((b2Vec2 *)&local_40,(b2Vec2 *)&local_40);
      *(float *)(local_4c + 0x7c) = *(float *)(local_4c + 0x7c) - fVar3 * fVar2;
      *(float *)(local_4c + 0x80) = 1.0 / *(float *)(local_4c + 0x7c);
    }
    pbVar1 = local_4c;
    local_38 = *(undefined4 *)(local_4c + 0x2c);
    uStack_34 = *(undefined4 *)(local_4c + 0x30);
    *(undefined4 *)(local_4c + 0x1c) = local_40;
    *(undefined4 *)(local_4c + 0x20) = uStack_3c;
    b2Mul((b2Transform *)&local_58,(b2Vec2 *)(local_4c + 0xc));
    *(undefined4 *)(pbVar1 + 0x2c) = local_58;
    *(undefined4 *)(pbVar1 + 0x30) = uStack_54;
    *(undefined4 *)(local_4c + 0x24) = *(undefined4 *)(local_4c + 0x2c);
    *(undefined4 *)(local_4c + 0x28) = *(undefined4 *)(local_4c + 0x30);
    this_00 = (b2Vec2 *)(local_4c + 0x40);
    fVar2 = (float)::operator-(abStack_30,(b2Vec2 *)(local_4c + 0x2c));
    b2Cross(fVar2,(b2Vec2 *)local_28);
    b2Vec2::operator+=(this_00,(b2Vec2 *)local_28);
  }
  return;
}

// ---- b2Body::SetMassData  @ 0x6d8f04
/* b2Body::SetMassData(b2MassData const*) */

void __thiscall b2Body::SetMassData(b2Body *this,b2MassData *param_1)

{
  b2Body *pbVar1;
  int iVar2;
  float fVar3;
  undefined4 uVar4;
  b2Vec2 *this_00;
  float fVar5;
  float fVar6;
  undefined4 local_40;
  undefined4 uStack_3c;
  b2MassData *local_38;
  b2Body *local_34;
  undefined4 local_30;
  undefined4 uStack_2c;
  b2Vec2 abStack_28 [8];
  b2Vec2 abStack_20 [12];
  
  local_38 = param_1;
  local_34 = this;
  iVar2 = b2World::IsLocked(*(b2World **)(this + 0x58));
  if ((iVar2 == 0) && (*(int *)local_34 == 2)) {
    *(undefined4 *)(local_34 + 0x78) = 0;
    *(undefined4 *)(local_34 + 0x7c) = 0;
    *(undefined4 *)(local_34 + 0x80) = 0;
    *(undefined4 *)(local_34 + 0x74) = *(undefined4 *)local_38;
    if (*(float *)(local_34 + 0x74) <= 0.0) {
      *(undefined4 *)(local_34 + 0x74) = 0x3f800000;
    }
    *(float *)(local_34 + 0x78) = 1.0 / *(float *)(local_34 + 0x74);
    if ((0.0 < *(float *)(local_38 + 0xc)) && ((*(ushort *)(local_34 + 4) & 0x10) == 0)) {
      fVar5 = *(float *)(local_38 + 0xc);
      fVar6 = *(float *)(local_34 + 0x74);
      fVar3 = (float)b2Dot((b2Vec2 *)(local_38 + 4),(b2Vec2 *)(local_38 + 4));
      *(float *)(local_34 + 0x7c) = fVar5 - fVar6 * fVar3;
      *(float *)(local_34 + 0x80) = 1.0 / *(float *)(local_34 + 0x7c);
    }
    pbVar1 = local_34;
    local_30 = *(undefined4 *)(local_34 + 0x2c);
    uStack_2c = *(undefined4 *)(local_34 + 0x30);
    uVar4 = *(undefined4 *)(local_38 + 8);
    *(undefined4 *)(local_34 + 0x1c) = *(undefined4 *)(local_38 + 4);
    *(undefined4 *)(local_34 + 0x20) = uVar4;
    b2Mul((b2Transform *)&local_40,(b2Vec2 *)(local_34 + 0xc));
    *(undefined4 *)(pbVar1 + 0x2c) = local_40;
    *(undefined4 *)(pbVar1 + 0x30) = uStack_3c;
    *(undefined4 *)(local_34 + 0x24) = *(undefined4 *)(local_34 + 0x2c);
    *(undefined4 *)(local_34 + 0x28) = *(undefined4 *)(local_34 + 0x30);
    this_00 = (b2Vec2 *)(local_34 + 0x40);
    fVar3 = (float)::operator-(abStack_28,(b2Vec2 *)(local_34 + 0x2c));
    b2Cross(fVar3,abStack_20);
    b2Vec2::operator+=(this_00,abStack_20);
  }
  return;
}

// ---- b2Body::ShouldCollide  @ 0x6d906c
/* b2Body::ShouldCollide(b2Body const*) const */

undefined4 __thiscall b2Body::ShouldCollide(b2Body *this,b2Body *param_1)

{
  undefined4 uVar1;
  undefined4 *local_4;
  
  if ((*(int *)this == 2) || (*(int *)param_1 == 2)) {
    for (local_4 = *(undefined4 **)(this + 0x6c); local_4 != (undefined4 *)0x0;
        local_4 = (undefined4 *)local_4[3]) {
      if (((b2Body *)*local_4 == param_1) && (*(char *)(local_4[1] + 0x3d) != '\x01')) {
        return 0;
      }
    }
    uVar1 = 1;
  }
  else {
    uVar1 = 0;
  }
  return uVar1;
}

// ---- b2Body::SetTransform  @ 0x6d90c4
/* b2Body::SetTransform(b2Vec2 const&, float) */

void __thiscall b2Body::SetTransform(b2Body *this,b2Vec2 *param_1,float param_2)

{
  b2Body *pbVar1;
  int iVar2;
  undefined4 uVar3;
  undefined4 in_r2;
  float extraout_s0;
  undefined4 local_28;
  undefined4 uStack_24;
  undefined4 local_1c;
  b2Vec2 *local_18;
  b2Body *local_14;
  b2Fixture *local_10;
  b2BroadPhase *local_c;
  
  local_1c = in_r2;
  local_18 = param_1;
  local_14 = this;
  iVar2 = b2World::IsLocked(*(b2World **)(this + 0x58));
  if (iVar2 == 0) {
    b2Rot::Set((b2Rot *)(local_14 + 0x14),extraout_s0);
    pbVar1 = local_14;
    uVar3 = *(undefined4 *)(local_18 + 4);
    *(undefined4 *)(local_14 + 0xc) = *(undefined4 *)local_18;
    *(undefined4 *)(local_14 + 0x10) = uVar3;
    b2Mul((b2Transform *)&local_28,(b2Vec2 *)(local_14 + 0xc));
    *(undefined4 *)(pbVar1 + 0x2c) = local_28;
    *(undefined4 *)(pbVar1 + 0x30) = uStack_24;
    *(undefined4 *)(local_14 + 0x38) = local_1c;
    *(undefined4 *)(local_14 + 0x24) = *(undefined4 *)(local_14 + 0x2c);
    *(undefined4 *)(local_14 + 0x28) = *(undefined4 *)(local_14 + 0x30);
    *(undefined4 *)(local_14 + 0x34) = local_1c;
    local_c = (b2BroadPhase *)((int)&__DT_SYMTAB[0x909].st_name + *(int *)(local_14 + 0x58));
    for (local_10 = *(b2Fixture **)(local_14 + 100); local_10 != (b2Fixture *)0x0;
        local_10 = *(b2Fixture **)(local_10 + 4)) {
      b2Fixture::Synchronize
                (local_10,local_c,(b2Transform *)(local_14 + 0xc),(b2Transform *)(local_14 + 0xc));
    }
    b2ContactManager::FindNewContacts
              ((b2ContactManager *)((int)&__DT_SYMTAB[0x909].st_name + *(int *)(local_14 + 0x58)));
  }
  return;
}

// ---- b2Body::SynchronizeFixtures  @ 0x6d9188
/* b2Body::SynchronizeFixtures() */

void __thiscall b2Body::SynchronizeFixtures(b2Body *this)

{
  b2Vec2 *pbVar1;
  float fVar2;
  undefined4 local_38;
  undefined4 uStack_34;
  b2Body *local_2c;
  b2Fixture *local_28;
  b2BroadPhase *local_24;
  b2Rot abStack_20 [8];
  undefined4 local_18;
  undefined4 uStack_14;
  b2Rot abStack_10 [8];
  
  local_2c = this;
  fVar2 = (float)b2Transform::b2Transform((b2Transform *)&local_18);
  b2Rot::Set(abStack_10,fVar2);
  pbVar1 = (b2Vec2 *)(local_2c + 0x24);
  b2Mul(abStack_20,(b2Vec2 *)abStack_10);
  ::operator-((b2Vec2 *)&local_38,pbVar1);
  local_18 = local_38;
  uStack_14 = uStack_34;
  local_24 = (b2BroadPhase *)((int)&__DT_SYMTAB[0x909].st_name + *(int *)(local_2c + 0x58));
  for (local_28 = *(b2Fixture **)(local_2c + 100); local_28 != (b2Fixture *)0x0;
      local_28 = *(b2Fixture **)(local_28 + 4)) {
    b2Fixture::Synchronize
              (local_28,local_24,(b2Transform *)&local_18,(b2Transform *)(local_2c + 0xc));
  }
  return;
}

// ---- b2Body::SetActive  @ 0x6d9210
/* b2Body::SetActive(bool) */

void __thiscall b2Body::SetActive(b2Body *this,bool param_1)

{
  uint uVar1;
  int iVar2;
  b2Fixture *local_20;
  b2Fixture *local_1c;
  int local_18;
  
  uVar1 = IsActive(this);
  if (param_1 != uVar1) {
    if (param_1) {
      *(ushort *)(this + 4) = *(ushort *)(this + 4) | 0x20;
      iVar2 = *(int *)(this + 0x58);
      for (local_20 = *(b2Fixture **)(this + 100); local_20 != (b2Fixture *)0x0;
          local_20 = *(b2Fixture **)(local_20 + 4)) {
        b2Fixture::CreateProxies
                  (local_20,(b2BroadPhase *)((int)&__DT_SYMTAB[0x909].st_name + iVar2),
                   (b2Transform *)(this + 0xc));
      }
    }
    else {
      *(ushort *)(this + 4) = *(ushort *)(this + 4) & 0xffdf;
      iVar2 = *(int *)(this + 0x58);
      for (local_1c = *(b2Fixture **)(this + 100); local_1c != (b2Fixture *)0x0;
          local_1c = *(b2Fixture **)(local_1c + 4)) {
        b2Fixture::DestroyProxies
                  (local_1c,(b2BroadPhase *)((int)&__DT_SYMTAB[0x909].st_name + iVar2));
      }
      local_18 = *(int *)(this + 0x70);
      while (local_18 != 0) {
        iVar2 = *(int *)(local_18 + 0xc);
        b2ContactManager::Destroy
                  ((b2ContactManager *)((int)&__DT_SYMTAB[0x909].st_name + *(int *)(this + 0x58)),
                   *(b2Contact **)(local_18 + 4));
        local_18 = iVar2;
      }
      *(undefined4 *)(this + 0x70) = 0;
    }
  }
  return;
}

// ---- b2Body::Dump  @ 0x6d92f4
/* b2Body::Dump() */

void __thiscall b2Body::Dump(b2Body *this)

{
  undefined4 extraout_r1;
  undefined4 extraout_r1_00;
  undefined4 extraout_r1_01;
  undefined4 extraout_r1_02;
  undefined4 extraout_r1_03;
  undefined4 extraout_r1_04;
  undefined4 extraout_r1_05;
  int iVar1;
  b2Fixture *local_10;
  
  iVar1 = *(int *)(this + 8);
  b2Log("{\n");
  b2Log("  b2BodyDef bd;\n");
  b2Log("  bd.type = b2BodyType(%d);\n",*(undefined4 *)this);
  b2Log("  bd.position.Set(%.15lef, %.15lef);\n",extraout_r1,SUB84((double)*(float *)(this + 0xc),0)
        ,(int)((ulonglong)(double)*(float *)(this + 0xc) >> 0x20),(double)*(float *)(this + 0x10));
  b2Log("  bd.angle = %.15lef;\n",extraout_r1_00,SUB84((double)*(float *)(this + 0x38),0),
        (int)((ulonglong)(double)*(float *)(this + 0x38) >> 0x20));
  b2Log("  bd.linearVelocity.Set(%.15lef, %.15lef);\n",extraout_r1_01,
        SUB84((double)*(float *)(this + 0x40),0),
        (int)((ulonglong)(double)*(float *)(this + 0x40) >> 0x20),(double)*(float *)(this + 0x44));
  b2Log("  bd.angularVelocity = %.15lef;\n",extraout_r1_02,SUB84((double)*(float *)(this + 0x48),0),
        (int)((ulonglong)(double)*(float *)(this + 0x48) >> 0x20));
  b2Log("  bd.linearDamping = %.15lef;\n",extraout_r1_03,SUB84((double)*(float *)(this + 0x84),0),
        (int)((ulonglong)(double)*(float *)(this + 0x84) >> 0x20));
  b2Log("  bd.angularDamping = %.15lef;\n",extraout_r1_04,SUB84((double)*(float *)(this + 0x88),0),
        (int)((ulonglong)(double)*(float *)(this + 0x88) >> 0x20));
  b2Log("  bd.allowSleep = bool(%d);\n",*(ushort *)(this + 4) & 4);
  b2Log("  bd.awake = bool(%d);\n",*(ushort *)(this + 4) & 2);
  b2Log("  bd.fixedRotation = bool(%d);\n",*(ushort *)(this + 4) & 0x10);
  b2Log("  bd.bullet = bool(%d);\n",*(ushort *)(this + 4) & 8);
  b2Log("  bd.active = bool(%d);\n",*(ushort *)(this + 4) & 0x20);
  b2Log("  bd.gravityScale = %.15lef;\n",extraout_r1_05,SUB84((double)*(float *)(this + 0x8c),0),
        (int)((ulonglong)(double)*(float *)(this + 0x8c) >> 0x20));
  b2Log("  bodies[%d] = m_world->CreateBody(&bd);\n",*(undefined4 *)(this + 8));
  b2Log("\n");
  for (local_10 = *(b2Fixture **)(this + 100); local_10 != (b2Fixture *)0x0;
      local_10 = *(b2Fixture **)(local_10 + 4)) {
    b2Log("  {\n");
    b2Fixture::Dump(local_10,iVar1);
    b2Log("  }\n");
  }
  b2Log("}\n");
  return;
}

// ---- b2Body::GetContactList  @ 0x6d964c
/* b2Body::GetContactList() */

undefined4 __thiscall b2Body::GetContactList(b2Body *this)

{
  return *(undefined4 *)(this + 0x70);
}

// ---- b2Body::GetWorld  @ 0x6da918
/* b2Body::GetWorld() */

undefined4 __thiscall b2Body::GetWorld(b2Body *this)

{
  return *(undefined4 *)(this + 0x58);
}

// ---- b2Body::GetType  @ 0x6db404
/* b2Body::GetType() const */

undefined4 __thiscall b2Body::GetType(b2Body *this)

{
  return *(undefined4 *)this;
}

// ---- b2Body::SynchronizeTransform  @ 0x6db414
/* b2Body::SynchronizeTransform() */

void b2Body::SynchronizeTransform(void)

{
  int in_r0;
  b2Vec2 *pbVar1;
  float in_s0;
  undefined4 local_28;
  undefined4 uStack_24;
  int local_1c;
  b2Rot abStack_18 [12];
  
  local_1c = in_r0;
  b2Rot::Set((b2Rot *)(in_r0 + 0x14),in_s0);
  pbVar1 = (b2Vec2 *)(local_1c + 0x2c);
  b2Mul(abStack_18,(b2Vec2 *)(local_1c + 0x14));
  ::operator-((b2Vec2 *)&local_28,pbVar1);
  *(undefined4 *)(local_1c + 0xc) = local_28;
  *(undefined4 *)(local_1c + 0x10) = uStack_24;
  return;
}

// ---- b2Body::GetWorldCenter  @ 0x6dc3e4
/* b2Body::GetWorldCenter() const */

b2Body * __thiscall b2Body::GetWorldCenter(b2Body *this)

{
  return this + 0x2c;
}

// ---- b2Body::IsBullet  @ 0x6dc3f4
/* b2Body::IsBullet() const */

bool __thiscall b2Body::IsBullet(b2Body *this)

{
  return (*(ushort *)(this + 4) & 8) != 0;
}

// ---- b2Body::GetFixtureList  @ 0x6dc410
/* b2Body::GetFixtureList() */

undefined4 __thiscall b2Body::GetFixtureList(b2Body *this)

{
  return *(undefined4 *)(this + 100);
}

// ---- b2Body::GetNext  @ 0x6dc420
/* b2Body::GetNext() */

undefined4 __thiscall b2Body::GetNext(b2Body *this)

{
  return *(undefined4 *)(this + 0x60);
}

// ---- b2Body::Advance  @ 0x6dc430
/* b2Body::Advance(float) */

void b2Body::Advance(float param_1)

{
  int in_r0;
  b2Vec2 *pbVar1;
  float fVar2;
  undefined4 local_28;
  undefined4 uStack_24;
  int local_1c;
  b2Rot abStack_18 [12];
  
  local_1c = in_r0;
  fVar2 = (float)b2Sweep::Advance(param_1);
  *(undefined4 *)(local_1c + 0x2c) = *(undefined4 *)(local_1c + 0x24);
  *(undefined4 *)(local_1c + 0x30) = *(undefined4 *)(local_1c + 0x28);
  *(undefined4 *)(local_1c + 0x38) = *(undefined4 *)(local_1c + 0x34);
  b2Rot::Set((b2Rot *)(local_1c + 0x14),fVar2);
  pbVar1 = (b2Vec2 *)(local_1c + 0x2c);
  b2Mul(abStack_18,(b2Vec2 *)(local_1c + 0x14));
  ::operator-((b2Vec2 *)&local_28,pbVar1);
  *(undefined4 *)(local_1c + 0xc) = local_28;
  *(undefined4 *)(local_1c + 0x10) = uStack_24;
  return;
}
