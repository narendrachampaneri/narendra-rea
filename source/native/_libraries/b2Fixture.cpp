// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 18 functions

// ---- b2Fixture::GetShape  @ 0x6c965c
/* b2Fixture::GetShape() */

undefined4 __thiscall b2Fixture::GetShape(b2Fixture *this)

{
  return *(undefined4 *)(this + 0xc);
}

// ---- b2Fixture::GetType  @ 0x6c9b74
/* b2Fixture::GetType() const */

undefined4 __thiscall b2Fixture::GetType(b2Fixture *this)

{
  undefined4 uVar1;
  
  uVar1 = b2Shape::GetType(*(b2Shape **)(this + 0xc));
  return uVar1;
}

// ---- b2Fixture::IsSensor  @ 0x6c9b90
/* b2Fixture::IsSensor() const */

b2Fixture __thiscall b2Fixture::IsSensor(b2Fixture *this)

{
  return this[0x26];
}

// ---- b2Fixture::GetBody  @ 0x6c9ba0
/* b2Fixture::GetBody() */

undefined4 __thiscall b2Fixture::GetBody(b2Fixture *this)

{
  return *(undefined4 *)(this + 8);
}

// ---- b2Fixture::GetMassData  @ 0x6d879c
/* b2Fixture::GetMassData(b2MassData*) const */

void __thiscall b2Fixture::GetMassData(b2Fixture *this,b2MassData *param_1)

{
  (**(code **)(**(int **)(this + 0xc) + 0x1c))
            (*(undefined4 *)(this + 0xc),param_1,*(undefined4 *)this);
  return;
}

// ---- b2Fixture::b2Fixture  @ 0x6da93c
/* b2Fixture::b2Fixture() */

b2Fixture * __thiscall b2Fixture::b2Fixture(b2Fixture *this)

{
  b2Filter::b2Filter((b2Filter *)(this + 0x20));
  *(undefined4 *)(this + 0x28) = 0;
  *(undefined4 *)(this + 8) = 0;
  *(undefined4 *)(this + 4) = 0;
  *(undefined4 *)(this + 0x18) = 0;
  *(undefined4 *)(this + 0x1c) = 0;
  *(undefined4 *)(this + 0xc) = 0;
  *(undefined4 *)this = 0;
  return this;
}

// ---- b2Fixture::Create  @ 0x6da984
/* b2Fixture::Create(b2BlockAllocator*, b2Body*, b2FixtureDef const*) */

void __thiscall
b2Fixture::Create(b2Fixture *this,b2BlockAllocator *param_1,b2Body *param_2,b2FixtureDef *param_3)

{
  undefined4 uVar1;
  int iVar2;
  int local_10;
  
  *(undefined4 *)(this + 0x28) = *(undefined4 *)(param_3 + 4);
  *(undefined4 *)(this + 0x10) = *(undefined4 *)(param_3 + 8);
  *(undefined4 *)(this + 0x14) = *(undefined4 *)(param_3 + 0xc);
  *(b2Body **)(this + 8) = param_2;
  *(undefined4 *)(this + 4) = 0;
  *(undefined4 *)(this + 0x20) = *(undefined4 *)(param_3 + 0x16);
  *(undefined2 *)(this + 0x24) = *(undefined2 *)(param_3 + 0x1a);
  this[0x26] = *(b2Fixture *)(param_3 + 0x14);
  uVar1 = (**(code **)(**(int **)param_3 + 8))(*(undefined4 *)param_3,param_1);
  *(undefined4 *)(this + 0xc) = uVar1;
  iVar2 = (**(code **)(**(int **)(this + 0xc) + 0xc))(*(undefined4 *)(this + 0xc));
  uVar1 = b2BlockAllocator::Allocate(param_1,iVar2 * 0x1c);
  *(undefined4 *)(this + 0x18) = uVar1;
  for (local_10 = 0; local_10 < iVar2; local_10 = local_10 + 1) {
    *(undefined4 *)(local_10 * 0x1c + *(int *)(this + 0x18) + 0x10) = 0;
    *(undefined4 *)(local_10 * 0x1c + *(int *)(this + 0x18) + 0x18) = 0xffffffff;
  }
  *(undefined4 *)(this + 0x1c) = 0;
  *(undefined4 *)this = *(undefined4 *)(param_3 + 0x10);
  return;
}

// ---- b2Fixture::Destroy  @ 0x6daa68
/* b2Fixture::Destroy(b2BlockAllocator*) */

void __thiscall b2Fixture::Destroy(b2Fixture *this,b2BlockAllocator *param_1)

{
  int iVar1;
  undefined4 *puVar2;
  
  iVar1 = (**(code **)(**(int **)(this + 0xc) + 0xc))(*(undefined4 *)(this + 0xc));
  b2BlockAllocator::Free(param_1,*(void **)(this + 0x18),iVar1 * 0x1c);
  *(undefined4 *)(this + 0x18) = 0;
  switch(*(undefined4 *)(*(int *)(this + 0xc) + 4)) {
  case 0:
    puVar2 = *(undefined4 **)(this + 0xc);
    (**(code **)*puVar2)(puVar2);
    b2BlockAllocator::Free(param_1,puVar2,0x14);
    break;
  case 1:
    puVar2 = *(undefined4 **)(this + 0xc);
    (**(code **)*puVar2)(puVar2);
    b2BlockAllocator::Free(param_1,puVar2,0x30);
    break;
  case 2:
    puVar2 = *(undefined4 **)(this + 0xc);
    (**(code **)*puVar2)(puVar2);
    b2BlockAllocator::Free(param_1,puVar2,0x98);
    break;
  case 3:
    puVar2 = *(undefined4 **)(this + 0xc);
    (**(code **)*puVar2)(puVar2);
    b2BlockAllocator::Free(param_1,puVar2,0x28);
  }
  *(undefined4 *)(this + 0xc) = 0;
  return;
}

// ---- b2Fixture::CreateProxies  @ 0x6dab48
/* b2Fixture::CreateProxies(b2BroadPhase*, b2Transform const&) */

void __thiscall b2Fixture::CreateProxies(b2Fixture *this,b2BroadPhase *param_1,b2Transform *param_2)

{
  undefined4 uVar1;
  b2AABB *pbVar2;
  int local_10;
  
  uVar1 = (**(code **)(**(int **)(this + 0xc) + 0xc))(*(undefined4 *)(this + 0xc));
  *(undefined4 *)(this + 0x1c) = uVar1;
  for (local_10 = 0; local_10 < *(int *)(this + 0x1c); local_10 = local_10 + 1) {
    pbVar2 = (b2AABB *)(local_10 * 0x1c + *(int *)(this + 0x18));
    (**(code **)(**(int **)(this + 0xc) + 0x18))
              (*(undefined4 *)(this + 0xc),pbVar2,param_2,local_10);
    uVar1 = b2BroadPhase::CreateProxy(param_1,pbVar2,pbVar2);
    *(undefined4 *)(pbVar2 + 0x18) = uVar1;
    *(b2Fixture **)(pbVar2 + 0x10) = this;
    *(int *)(pbVar2 + 0x14) = local_10;
  }
  return;
}

// ---- b2Fixture::DestroyProxies  @ 0x6dabd0
/* b2Fixture::DestroyProxies(b2BroadPhase*) */

void __thiscall b2Fixture::DestroyProxies(b2Fixture *this,b2BroadPhase *param_1)

{
  int iVar1;
  int local_10;
  
  for (local_10 = 0; local_10 < *(int *)(this + 0x1c); local_10 = local_10 + 1) {
    iVar1 = local_10 * 0x1c + *(int *)(this + 0x18);
    b2BroadPhase::DestroyProxy(param_1,*(int *)(iVar1 + 0x18));
    *(undefined4 *)(iVar1 + 0x18) = 0xffffffff;
  }
  *(undefined4 *)(this + 0x1c) = 0;
  return;
}

// ---- b2Fixture::Synchronize  @ 0x6dac20
/* b2Fixture::Synchronize(b2BroadPhase*, b2Transform const&, b2Transform const&) */

void __thiscall
b2Fixture::Synchronize
          (b2Fixture *this,b2BroadPhase *param_1,b2Transform *param_2,b2Transform *param_3)

{
  b2AABB *this_00;
  int local_38;
  b2Vec2 abStack_30 [8];
  b2AABB abStack_28 [16];
  b2AABB abStack_18 [16];
  
  if (*(int *)(this + 0x1c) != 0) {
    for (local_38 = 0; local_38 < *(int *)(this + 0x1c); local_38 = local_38 + 1) {
      this_00 = (b2AABB *)(local_38 * 0x1c + *(int *)(this + 0x18));
      b2AABB::b2AABB(abStack_28);
      b2AABB::b2AABB(abStack_18);
      (**(code **)(**(int **)(this + 0xc) + 0x18))
                (*(undefined4 *)(this + 0xc),abStack_28,param_2,*(undefined4 *)(this_00 + 0x14));
      (**(code **)(**(int **)(this + 0xc) + 0x18))
                (*(undefined4 *)(this + 0xc),abStack_18,param_3,*(undefined4 *)(this_00 + 0x14));
      b2AABB::Combine(this_00,abStack_28,abStack_18);
      ::operator-(abStack_30,(b2Vec2 *)param_3);
      b2BroadPhase::MoveProxy(param_1,*(int *)(this_00 + 0x18),this_00,abStack_30);
    }
  }
  return;
}

// ---- b2Fixture::SetFilterData  @ 0x6dacd8
/* b2Fixture::SetFilterData(b2Filter const&) */

void __thiscall b2Fixture::SetFilterData(b2Fixture *this,b2Filter *param_1)

{
  *(undefined4 *)(this + 0x20) = *(undefined4 *)param_1;
  *(undefined2 *)(this + 0x24) = *(undefined2 *)(param_1 + 4);
  Refilter(this);
  return;
}

// ---- b2Fixture::Refilter  @ 0x6dacfc
/* b2Fixture::Refilter() */

void __thiscall b2Fixture::Refilter(b2Fixture *this)

{
  b2Fixture *pbVar1;
  b2Fixture *pbVar2;
  int iVar3;
  b2Contact *this_00;
  int local_24;
  int local_20;
  
  if (*(int *)(this + 8) != 0) {
    for (local_24 = b2Body::GetContactList(*(b2Body **)(this + 8)); local_24 != 0;
        local_24 = *(int *)(local_24 + 0xc)) {
      this_00 = *(b2Contact **)(local_24 + 4);
      pbVar1 = (b2Fixture *)b2Contact::GetFixtureA(this_00);
      pbVar2 = (b2Fixture *)b2Contact::GetFixtureB(this_00);
      if ((pbVar1 == this) || (pbVar2 == this)) {
        b2Contact::FlagForFiltering(this_00);
      }
    }
    iVar3 = b2Body::GetWorld(*(b2Body **)(this + 8));
    if (iVar3 != 0) {
      for (local_20 = 0; local_20 < *(int *)(this + 0x1c); local_20 = local_20 + 1) {
        b2BroadPhase::TouchProxy
                  ((b2BroadPhase *)((int)&__DT_SYMTAB[0x909].st_name + iVar3),
                   *(int *)(local_20 * 0x1c + *(int *)(this + 0x18) + 0x18));
      }
    }
  }
  return;
}

// ---- b2Fixture::SetSensor  @ 0x6dadb0
/* b2Fixture::SetSensor(bool) */

void __thiscall b2Fixture::SetSensor(b2Fixture *this,bool param_1)

{
  if ((b2Fixture)param_1 != this[0x26]) {
    b2Body::SetAwake(*(b2Body **)(this + 8),true);
    this[0x26] = (b2Fixture)param_1;
  }
  return;
}

// ---- b2Fixture::Dump  @ 0x6dafd4
/* b2Fixture::Dump(int) */

void __thiscall b2Fixture::Dump(b2Fixture *this,int param_1)

{
  undefined4 extraout_r1;
  undefined4 extraout_r1_00;
  undefined4 extraout_r1_01;
  undefined4 extraout_r1_02;
  undefined4 extraout_r1_03;
  undefined4 extraout_r1_04;
  undefined4 extraout_r1_05;
  undefined4 extraout_r1_06;
  undefined4 extraout_r1_07;
  undefined4 extraout_r1_08;
  undefined4 extraout_r1_09;
  undefined4 extraout_r1_10;
  int iVar1;
  double dVar2;
  int local_20;
  int local_1c;
  
  b2Log("    b2FixtureDef fd;\n");
  b2Log("    fd.friction = %.15lef;\n",extraout_r1,SUB84((double)*(float *)(this + 0x10),0),
        (int)((ulonglong)(double)*(float *)(this + 0x10) >> 0x20));
  b2Log("    fd.restitution = %.15lef;\n",extraout_r1_00,SUB84((double)*(float *)(this + 0x14),0),
        (int)((ulonglong)(double)*(float *)(this + 0x14) >> 0x20));
  b2Log("    fd.density = %.15lef;\n",extraout_r1_01,SUB84((double)*(float *)this,0),
        (int)((ulonglong)(double)*(float *)this >> 0x20));
  b2Log("    fd.isSensor = bool(%d);\n",(uint)(byte)this[0x26]);
  b2Log("    fd.filter.categoryBits = uint16(%d);\n",(uint)*(ushort *)(this + 0x20));
  b2Log("    fd.filter.maskBits = uint16(%d);\n",(uint)*(ushort *)(this + 0x22));
  b2Log("    fd.filter.groupIndex = int16(%d);\n",(int)*(short *)(this + 0x24));
  switch(*(undefined4 *)(*(int *)(this + 0xc) + 4)) {
  case 0:
    iVar1 = *(int *)(this + 0xc);
    b2Log("    b2CircleShape shape;\n");
    b2Log("    shape.m_radius = %.15lef;\n",extraout_r1_02,SUB84((double)*(float *)(iVar1 + 8),0),
          (int)((ulonglong)(double)*(float *)(iVar1 + 8) >> 0x20));
    b2Log("    shape.m_p.Set(%.15lef, %.15lef);\n",extraout_r1_03,
          SUB84((double)*(float *)(iVar1 + 0xc),0),
          (int)((ulonglong)(double)*(float *)(iVar1 + 0xc) >> 0x20),(double)*(float *)(iVar1 + 0x10)
         );
    break;
  case 1:
    iVar1 = *(int *)(this + 0xc);
    b2Log("    b2EdgeShape shape;\n");
    b2Log("    shape.m_radius = %.15lef;\n",extraout_r1_04,SUB84((double)*(float *)(iVar1 + 8),0),
          (int)((ulonglong)(double)*(float *)(iVar1 + 8) >> 0x20));
    b2Log("    shape.m_vertex0.Set(%.15lef, %.15lef);\n",extraout_r1_05,
          SUB84((double)*(float *)(iVar1 + 0x1c),0),
          (int)((ulonglong)(double)*(float *)(iVar1 + 0x1c) >> 0x20),
          (double)*(float *)(iVar1 + 0x20));
    b2Log("    shape.m_vertex1.Set(%.15lef, %.15lef);\n",extraout_r1_06,
          SUB84((double)*(float *)(iVar1 + 0xc),0),
          (int)((ulonglong)(double)*(float *)(iVar1 + 0xc) >> 0x20),(double)*(float *)(iVar1 + 0x10)
         );
    b2Log("    shape.m_vertex2.Set(%.15lef, %.15lef);\n",extraout_r1_07,
          SUB84((double)*(float *)(iVar1 + 0x14),0),
          (int)((ulonglong)(double)*(float *)(iVar1 + 0x14) >> 0x20),
          (double)*(float *)(iVar1 + 0x18));
    b2Log("    shape.m_vertex3.Set(%.15lef, %.15lef);\n",extraout_r1_08,
          SUB84((double)*(float *)(iVar1 + 0x24),0),
          (int)((ulonglong)(double)*(float *)(iVar1 + 0x24) >> 0x20),
          (double)*(float *)(iVar1 + 0x28));
    b2Log("    shape.m_hasVertex0 = bool(%d);\n",(uint)*(byte *)(iVar1 + 0x2c));
    b2Log("    shape.m_hasVertex3 = bool(%d);\n",(uint)*(byte *)(iVar1 + 0x2d));
    break;
  case 2:
    iVar1 = *(int *)(this + 0xc);
    b2Log("    b2PolygonShape shape;\n");
    b2Log("    b2Vec2 vs[%d];\n",8);
    for (local_20 = 0; local_20 < *(int *)(iVar1 + 0x94); local_20 = local_20 + 1) {
      dVar2 = (double)*(float *)((local_20 + 2) * 8 + iVar1 + 4);
      b2Log("    vs[%d].Set(%.15lef, %.15lef);\n",local_20,SUB84(dVar2,0),
            (int)((ulonglong)dVar2 >> 0x20),(double)*(float *)((local_20 + 2) * 8 + iVar1 + 8));
    }
    b2Log("    shape.Set(vs, %d);\n",*(undefined4 *)(iVar1 + 0x94));
    break;
  case 3:
    iVar1 = *(int *)(this + 0xc);
    b2Log("    b2ChainShape shape;\n");
    b2Log("    b2Vec2 vs[%d];\n",*(undefined4 *)(iVar1 + 0x10));
    for (local_1c = 0; local_1c < *(int *)(iVar1 + 0x10); local_1c = local_1c + 1) {
      dVar2 = (double)*(float *)(local_1c * 8 + *(int *)(iVar1 + 0xc));
      b2Log("    vs[%d].Set(%.15lef, %.15lef);\n",local_1c,SUB84(dVar2,0),
            (int)((ulonglong)dVar2 >> 0x20),
            (double)*(float *)(local_1c * 8 + *(int *)(iVar1 + 0xc) + 4));
    }
    b2Log("    shape.CreateChain(vs, %d);\n",*(undefined4 *)(iVar1 + 0x10));
    b2Log("    shape.m_prevVertex.Set(%.15lef, %.15lef);\n",extraout_r1_09,
          SUB84((double)*(float *)(iVar1 + 0x14),0),
          (int)((ulonglong)(double)*(float *)(iVar1 + 0x14) >> 0x20),
          (double)*(float *)(iVar1 + 0x18));
    b2Log("    shape.m_nextVertex.Set(%.15lef, %.15lef);\n",extraout_r1_10,
          SUB84((double)*(float *)(iVar1 + 0x1c),0),
          (int)((ulonglong)(double)*(float *)(iVar1 + 0x1c) >> 0x20),
          (double)*(float *)(iVar1 + 0x20));
    b2Log("    shape.m_hasPrevVertex = bool(%d);\n",(uint)*(byte *)(iVar1 + 0x24));
    b2Log("    shape.m_hasNextVertex = bool(%d);\n",(uint)*(byte *)(iVar1 + 0x25));
    break;
  default:
    goto switchD_006db086_default;
  }
  b2Log("\n");
  b2Log("    fd.shape = &shape;\n");
  b2Log("\n");
  b2Log("    bodies[%d]->CreateFixture(&fd);\n",param_1);
switchD_006db086_default:
  return;
}

// ---- b2Fixture::GetNext  @ 0x6dc4ac
/* b2Fixture::GetNext() */

undefined4 __thiscall b2Fixture::GetNext(b2Fixture *this)

{
  return *(undefined4 *)(this + 4);
}

// ---- b2Fixture::RayCast  @ 0x6dc4bc
/* b2Fixture::RayCast(b2RayCastOutput*, b2RayCastInput const&, int) const */

undefined4 __thiscall
b2Fixture::RayCast(b2Fixture *this,b2RayCastOutput *param_1,b2RayCastInput *param_2,int param_3)

{
  undefined4 uVar1;
  code *pcVar2;
  undefined4 uVar3;
  
  pcVar2 = *(code **)(**(int **)(this + 0xc) + 0x14);
  uVar3 = *(undefined4 *)(this + 0xc);
  uVar1 = b2Body::GetTransform(*(b2Body **)(this + 8));
  uVar1 = (*pcVar2)(uVar3,param_1,param_2,uVar1,param_3);
  return uVar1;
}

// ---- b2Fixture::GetFilterData  @ 0x6dede4
/* b2Fixture::GetFilterData() const */

b2Fixture * __thiscall b2Fixture::GetFilterData(b2Fixture *this)

{
  return this + 0x20;
}
