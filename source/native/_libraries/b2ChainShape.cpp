// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 14 functions

// ---- b2ChainShape::b2ChainShape  @ 0x6bfec4
/* b2ChainShape::b2ChainShape() */

b2ChainShape * __thiscall b2ChainShape::b2ChainShape(b2ChainShape *this)

{
  b2Shape::b2Shape((b2Shape *)this);
  *(undefined ***)this = &PTR__b2ChainShape_1_0093bc88;
  b2Vec2::b2Vec2((b2Vec2 *)(this + 0x14));
  b2Vec2::b2Vec2((b2Vec2 *)(this + 0x1c));
  *(undefined4 *)(this + 4) = 3;
  *(undefined4 *)(this + 8) = 0x3c23d70a;
  *(undefined4 *)(this + 0xc) = 0;
  *(undefined4 *)(this + 0x10) = 0;
  this[0x24] = (b2ChainShape)0x0;
  this[0x25] = (b2ChainShape)0x0;
  return this;
}

// ---- b2ChainShape::~b2ChainShape  @ 0x6bffcc
/* WARNING: Removing unreachable block (ram,0x006c0004) */
/* b2ChainShape::~b2ChainShape() */

b2ChainShape * __thiscall b2ChainShape::~b2ChainShape(b2ChainShape *this)

{
  *(undefined ***)this = &PTR__b2ChainShape_1_0093bc88;
  b2Free(*(void **)(this + 0xc));
  *(undefined4 *)(this + 0xc) = 0;
  *(undefined4 *)(this + 0x10) = 0;
  b2Shape::~b2Shape((b2Shape *)this);
  return this;
}

// ---- b2ChainShape::~b2ChainShape  @ 0x6c001c
/* b2ChainShape::~b2ChainShape() */

b2ChainShape * __thiscall b2ChainShape::~b2ChainShape(b2ChainShape *this)

{
  ~b2ChainShape(this);
  operator_delete(this);
  return this;
}

// ---- b2ChainShape::CreateLoop  @ 0x6c0038
/* b2ChainShape::CreateLoop(b2Vec2 const*, int) */

void __thiscall b2ChainShape::CreateLoop(b2ChainShape *this,b2Vec2 *param_1,int param_2)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  
  *(int *)(this + 0x10) = param_2 + 1;
  uVar1 = b2Alloc(*(int *)(this + 0x10) << 3);
  *(undefined4 *)(this + 0xc) = uVar1;
  memcpy(*(void **)(this + 0xc),param_1,param_2 << 3);
  puVar2 = (undefined4 *)(param_2 * 8 + *(int *)(this + 0xc));
  uVar1 = (*(undefined4 **)(this + 0xc))[1];
  *puVar2 = **(undefined4 **)(this + 0xc);
  puVar2[1] = uVar1;
  puVar2 = (undefined4 *)(*(int *)(this + 0xc) + (*(int *)(this + 0x10) + 0x1ffffffe) * 8);
  uVar1 = puVar2[1];
  *(undefined4 *)(this + 0x14) = *puVar2;
  *(undefined4 *)(this + 0x18) = uVar1;
  uVar1 = *(undefined4 *)(*(int *)(this + 0xc) + 0xc);
  *(undefined4 *)(this + 0x1c) = *(undefined4 *)(*(int *)(this + 0xc) + 8);
  *(undefined4 *)(this + 0x20) = uVar1;
  this[0x24] = (b2ChainShape)0x1;
  this[0x25] = (b2ChainShape)0x1;
  return;
}

// ---- b2ChainShape::CreateChain  @ 0x6c00cc
/* b2ChainShape::CreateChain(b2Vec2 const*, int) */

void __thiscall b2ChainShape::CreateChain(b2ChainShape *this,b2Vec2 *param_1,int param_2)

{
  undefined4 uVar1;
  
  *(int *)(this + 0x10) = param_2;
  uVar1 = b2Alloc(param_2 << 3);
  *(undefined4 *)(this + 0xc) = uVar1;
  memcpy(*(void **)(this + 0xc),param_1,*(int *)(this + 0x10) << 3);
  this[0x24] = (b2ChainShape)0x0;
  this[0x25] = (b2ChainShape)0x0;
  return;
}

// ---- b2ChainShape::SetPrevVertex  @ 0x6c0118
/* b2ChainShape::SetPrevVertex(b2Vec2 const&) */

void __thiscall b2ChainShape::SetPrevVertex(b2ChainShape *this,b2Vec2 *param_1)

{
  undefined4 uVar1;
  
  uVar1 = *(undefined4 *)(param_1 + 4);
  *(undefined4 *)(this + 0x14) = *(undefined4 *)param_1;
  *(undefined4 *)(this + 0x18) = uVar1;
  this[0x24] = (b2ChainShape)0x1;
  return;
}

// ---- b2ChainShape::SetNextVertex  @ 0x6c0138
/* b2ChainShape::SetNextVertex(b2Vec2 const&) */

void __thiscall b2ChainShape::SetNextVertex(b2ChainShape *this,b2Vec2 *param_1)

{
  undefined4 uVar1;
  
  uVar1 = *(undefined4 *)(param_1 + 4);
  *(undefined4 *)(this + 0x1c) = *(undefined4 *)param_1;
  *(undefined4 *)(this + 0x20) = uVar1;
  this[0x25] = (b2ChainShape)0x1;
  return;
}

// ---- b2ChainShape::Clone  @ 0x6c0158
/* b2ChainShape::Clone(b2BlockAllocator*) const */

b2ChainShape * __thiscall b2ChainShape::Clone(b2ChainShape *this,b2BlockAllocator *param_1)

{
  void *pvVar1;
  b2ChainShape *this_00;
  undefined4 uVar2;
  
  pvVar1 = (void *)b2BlockAllocator::Allocate(param_1,0x28);
  this_00 = operator_new(0x28,pvVar1);
  if (this_00 != (b2ChainShape *)0x0) {
    b2ChainShape(this_00);
  }
  CreateChain(this_00,*(b2Vec2 **)(this + 0xc),*(int *)(this + 0x10));
  uVar2 = *(undefined4 *)(this + 0x18);
  *(undefined4 *)(this_00 + 0x14) = *(undefined4 *)(this + 0x14);
  *(undefined4 *)(this_00 + 0x18) = uVar2;
  uVar2 = *(undefined4 *)(this + 0x20);
  *(undefined4 *)(this_00 + 0x1c) = *(undefined4 *)(this + 0x1c);
  *(undefined4 *)(this_00 + 0x20) = uVar2;
  this_00[0x24] = this[0x24];
  this_00[0x25] = this[0x25];
  return this_00;
}

// ---- b2ChainShape::GetChildCount  @ 0x6c01dc
/* b2ChainShape::GetChildCount() const */

int __thiscall b2ChainShape::GetChildCount(b2ChainShape *this)

{
  return *(int *)(this + 0x10) + -1;
}

// ---- b2ChainShape::GetChildEdge  @ 0x6c01ec
/* b2ChainShape::GetChildEdge(b2EdgeShape*, int) const */

void __thiscall b2ChainShape::GetChildEdge(b2ChainShape *this,b2EdgeShape *param_1,int param_2)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  
  *(undefined4 *)(param_1 + 4) = 1;
  *(undefined4 *)(param_1 + 8) = *(undefined4 *)(this + 8);
  puVar2 = (undefined4 *)(*(int *)(this + 0xc) + param_2 * 8);
  uVar1 = puVar2[1];
  *(undefined4 *)(param_1 + 0xc) = *puVar2;
  *(undefined4 *)(param_1 + 0x10) = uVar1;
  puVar2 = (undefined4 *)(*(int *)(this + 0xc) + (param_2 + 1) * 8);
  uVar1 = puVar2[1];
  *(undefined4 *)(param_1 + 0x14) = *puVar2;
  *(undefined4 *)(param_1 + 0x18) = uVar1;
  if (param_2 < 1) {
    uVar1 = *(undefined4 *)(this + 0x18);
    *(undefined4 *)(param_1 + 0x1c) = *(undefined4 *)(this + 0x14);
    *(undefined4 *)(param_1 + 0x20) = uVar1;
    *(b2ChainShape *)(param_1 + 0x2c) = this[0x24];
  }
  else {
    puVar2 = (undefined4 *)(*(int *)(this + 0xc) + (param_2 + 0x1fffffff) * 8);
    uVar1 = puVar2[1];
    *(undefined4 *)(param_1 + 0x1c) = *puVar2;
    *(undefined4 *)(param_1 + 0x20) = uVar1;
    param_1[0x2c] = (b2EdgeShape)0x1;
  }
  if (param_2 < *(int *)(this + 0x10) + -2) {
    puVar2 = (undefined4 *)(*(int *)(this + 0xc) + (param_2 + 2) * 8);
    uVar1 = puVar2[1];
    *(undefined4 *)(param_1 + 0x24) = *puVar2;
    *(undefined4 *)(param_1 + 0x28) = uVar1;
    param_1[0x2d] = (b2EdgeShape)0x1;
  }
  else {
    uVar1 = *(undefined4 *)(this + 0x20);
    *(undefined4 *)(param_1 + 0x24) = *(undefined4 *)(this + 0x1c);
    *(undefined4 *)(param_1 + 0x28) = uVar1;
    *(b2ChainShape *)(param_1 + 0x2d) = this[0x25];
  }
  return;
}

// ---- b2ChainShape::TestPoint  @ 0x6c02c8
/* b2ChainShape::TestPoint(b2Transform const&, b2Vec2 const&) const */

undefined4 b2ChainShape::TestPoint(b2Transform *param_1,b2Vec2 *param_2)

{
  return 0;
}

// ---- b2ChainShape::RayCast  @ 0x6c02d8
/* b2ChainShape::RayCast(b2RayCastOutput*, b2RayCastInput const&, b2Transform const&, int) const */

undefined4 __thiscall
b2ChainShape::RayCast
          (b2ChainShape *this,b2RayCastOutput *param_1,b2RayCastInput *param_2,b2Transform *param_3,
          int param_4)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  int local_40;
  b2EdgeShape abStack_38 [12];
  undefined4 local_2c;
  undefined4 uStack_28;
  undefined4 local_24;
  undefined4 uStack_20;
  
  b2EdgeShape::b2EdgeShape(abStack_38);
  local_40 = param_4 + 1;
  if (*(int *)(this + 0x10) == local_40) {
    local_40 = 0;
  }
  puVar2 = (undefined4 *)(*(int *)(this + 0xc) + param_4 * 8);
  local_2c = *puVar2;
  uStack_28 = puVar2[1];
  puVar2 = (undefined4 *)(*(int *)(this + 0xc) + local_40 * 8);
  local_24 = *puVar2;
  uStack_20 = puVar2[1];
  uVar1 = b2EdgeShape::RayCast
                    ((b2RayCastOutput *)abStack_38,(b2RayCastInput *)param_1,(b2Transform *)param_2,
                     (int)param_3);
  b2EdgeShape::~b2EdgeShape(abStack_38);
  return uVar1;
}

// ---- b2ChainShape::ComputeAABB  @ 0x6c0360
/* b2ChainShape::ComputeAABB(b2AABB*, b2Transform const&, int) const */

void __thiscall
b2ChainShape::ComputeAABB(b2ChainShape *this,b2AABB *param_1,b2Transform *param_2,int param_3)

{
  b2AABB *pbVar1;
  b2AABB *pbVar2;
  undefined4 local_38;
  undefined4 uStack_34;
  int local_30;
  b2Vec2 *local_2c;
  b2AABB *local_28;
  b2ChainShape *local_24;
  int local_20;
  int local_1c;
  b2Transform abStack_18 [8];
  b2Transform abStack_10 [8];
  
  local_20 = param_3 + 1;
  if (*(int *)(this + 0x10) == local_20) {
    local_20 = 0;
  }
  local_30 = param_3;
  local_2c = (b2Vec2 *)param_2;
  local_28 = param_1;
  local_24 = this;
  local_1c = param_3;
  b2Mul(abStack_18,(b2Vec2 *)param_2);
  b2Mul(abStack_10,local_2c);
  pbVar1 = local_28;
  b2Min((b2Vec2 *)&local_38,(b2Vec2 *)abStack_18);
  pbVar2 = local_28;
  *(undefined4 *)pbVar1 = local_38;
  *(undefined4 *)(pbVar1 + 4) = uStack_34;
  b2Max((b2Vec2 *)&local_38,(b2Vec2 *)abStack_18);
  *(undefined4 *)(pbVar2 + 8) = local_38;
  *(undefined4 *)(pbVar2 + 0xc) = uStack_34;
  return;
}

// ---- b2ChainShape::ComputeMass  @ 0x6c03f4
/* b2ChainShape::ComputeMass(b2MassData*, float) const */

void b2ChainShape::ComputeMass(b2MassData *param_1,float param_2)

{
  undefined4 *in_r1;
  
  *in_r1 = 0;
  b2Vec2::SetZero((b2Vec2 *)(in_r1 + 1));
  in_r1[3] = 0;
  return;
}
