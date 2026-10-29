// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 11 functions

// ---- b2EdgeShape::b2EdgeShape  @ 0x6bff34
/* b2EdgeShape::b2EdgeShape() */

b2EdgeShape * __thiscall b2EdgeShape::b2EdgeShape(b2EdgeShape *this)

{
  b2Shape::b2Shape((b2Shape *)this);
  *(undefined ***)this = &PTR__b2EdgeShape_1_0093bd28;
  b2Vec2::b2Vec2((b2Vec2 *)(this + 0xc));
  b2Vec2::b2Vec2((b2Vec2 *)(this + 0x14));
  b2Vec2::b2Vec2((b2Vec2 *)(this + 0x1c));
  b2Vec2::b2Vec2((b2Vec2 *)(this + 0x24));
  *(undefined4 *)(this + 4) = 1;
  *(undefined4 *)(this + 8) = 0x3c23d70a;
  *(undefined4 *)(this + 0x1c) = 0;
  *(undefined4 *)(this + 0x20) = 0;
  *(undefined4 *)(this + 0x24) = 0;
  *(undefined4 *)(this + 0x28) = 0;
  this[0x2c] = (b2EdgeShape)0x0;
  this[0x2d] = (b2EdgeShape)0x0;
  return this;
}

// ---- b2EdgeShape::~b2EdgeShape  @ 0x6c0468
/* WARNING: Removing unreachable block (ram,0x006c048a) */
/* b2EdgeShape::~b2EdgeShape() */

b2EdgeShape * __thiscall b2EdgeShape::~b2EdgeShape(b2EdgeShape *this)

{
  *(undefined ***)this = &PTR__b2EdgeShape_1_0093bd28;
  b2Shape::~b2Shape((b2Shape *)this);
  return this;
}

// ---- b2EdgeShape::~b2EdgeShape  @ 0x6c04a4
/* b2EdgeShape::~b2EdgeShape() */

b2EdgeShape * __thiscall b2EdgeShape::~b2EdgeShape(b2EdgeShape *this)

{
  ~b2EdgeShape(this);
  operator_delete(this);
  return this;
}

// ---- b2EdgeShape::Set  @ 0x6c0c18
/* b2EdgeShape::Set(b2Vec2 const&, b2Vec2 const&) */

void __thiscall b2EdgeShape::Set(b2EdgeShape *this,b2Vec2 *param_1,b2Vec2 *param_2)

{
  undefined4 uVar1;
  
  uVar1 = *(undefined4 *)(param_1 + 4);
  *(undefined4 *)(this + 0xc) = *(undefined4 *)param_1;
  *(undefined4 *)(this + 0x10) = uVar1;
  uVar1 = *(undefined4 *)(param_2 + 4);
  *(undefined4 *)(this + 0x14) = *(undefined4 *)param_2;
  *(undefined4 *)(this + 0x18) = uVar1;
  this[0x2c] = (b2EdgeShape)0x0;
  this[0x2d] = (b2EdgeShape)0x0;
  return;
}

// ---- b2EdgeShape::operator=  @ 0x6c0c50
/* b2EdgeShape::TEMPNAMEPLACEHOLDERVALUE(b2EdgeShape const&) */

b2EdgeShape * __thiscall b2EdgeShape::operator=(b2EdgeShape *this,b2EdgeShape *param_1)

{
  undefined4 uVar1;
  
  b2Shape::operator=((b2Shape *)this,(b2Shape *)param_1);
  uVar1 = *(undefined4 *)(param_1 + 0x10);
  *(undefined4 *)(this + 0xc) = *(undefined4 *)(param_1 + 0xc);
  *(undefined4 *)(this + 0x10) = uVar1;
  uVar1 = *(undefined4 *)(param_1 + 0x18);
  *(undefined4 *)(this + 0x14) = *(undefined4 *)(param_1 + 0x14);
  *(undefined4 *)(this + 0x18) = uVar1;
  uVar1 = *(undefined4 *)(param_1 + 0x20);
  *(undefined4 *)(this + 0x1c) = *(undefined4 *)(param_1 + 0x1c);
  *(undefined4 *)(this + 0x20) = uVar1;
  uVar1 = *(undefined4 *)(param_1 + 0x28);
  *(undefined4 *)(this + 0x24) = *(undefined4 *)(param_1 + 0x24);
  *(undefined4 *)(this + 0x28) = uVar1;
  this[0x2c] = param_1[0x2c];
  this[0x2d] = param_1[0x2d];
  return this;
}

// ---- b2EdgeShape::Clone  @ 0x6c0cc8
/* b2EdgeShape::Clone(b2BlockAllocator*) const */

b2EdgeShape * __thiscall b2EdgeShape::Clone(b2EdgeShape *this,b2BlockAllocator *param_1)

{
  void *pvVar1;
  b2EdgeShape *this_00;
  
  pvVar1 = (void *)b2BlockAllocator::Allocate(param_1,0x30);
  this_00 = operator_new(0x30,pvVar1);
  if (this_00 != (b2EdgeShape *)0x0) {
    b2EdgeShape(this_00);
  }
  operator=(this_00,this);
  return this_00;
}

// ---- b2EdgeShape::GetChildCount  @ 0x6c0d0c
/* b2EdgeShape::GetChildCount() const */

undefined4 b2EdgeShape::GetChildCount(void)

{
  return 1;
}

// ---- b2EdgeShape::TestPoint  @ 0x6c0d18
/* b2EdgeShape::TestPoint(b2Transform const&, b2Vec2 const&) const */

undefined4 b2EdgeShape::TestPoint(b2Transform *param_1,b2Vec2 *param_2)

{
  return 0;
}

// ---- b2EdgeShape::RayCast  @ 0x6c0d28
/* b2EdgeShape::RayCast(b2RayCastOutput*, b2RayCastInput const&, b2Transform const&, int) const */

undefined4
b2EdgeShape::RayCast
          (b2RayCastOutput *param_1,b2RayCastInput *param_2,b2Transform *param_3,int param_4)

{
  b2RayCastInput *pbVar1;
  b2Vec2 *pbVar2;
  float extraout_s0;
  undefined8 uVar3;
  undefined4 local_88;
  undefined4 uStack_84;
  int local_80;
  b2Transform *local_7c;
  b2RayCastInput *local_78;
  b2RayCastOutput *local_74;
  float local_6c;
  float local_68;
  float local_64;
  float local_60;
  float local_5c;
  b2Rot abStack_58 [8];
  b2Rot abStack_50 [8];
  b2Vec2 abStack_48 [8];
  undefined4 local_40;
  undefined4 uStack_3c;
  undefined4 local_38;
  undefined4 uStack_34;
  b2Vec2 local_30 [8];
  undefined4 local_28;
  undefined4 uStack_24;
  b2Vec2 abStack_20 [8];
  b2Vec2 abStack_18 [8];
  b2Vec2 abStack_10 [8];
  
  local_80 = param_4;
  local_7c = param_3;
  local_78 = param_2;
  local_74 = param_1;
  ::operator-(abStack_10,(b2Vec2 *)param_3);
  b2MulT(abStack_58,(b2Vec2 *)(param_4 + 8));
  pbVar2 = (b2Vec2 *)(local_80 + 8);
  ::operator-(abStack_10,(b2Vec2 *)(local_7c + 8));
  b2MulT(abStack_50,pbVar2);
  ::operator-(abStack_48,(b2Vec2 *)abStack_50);
  local_40 = *(undefined4 *)(local_74 + 0xc);
  uStack_3c = *(undefined4 *)(local_74 + 0x10);
  local_38 = *(undefined4 *)(local_74 + 0x14);
  uStack_34 = *(undefined4 *)(local_74 + 0x18);
  uVar3 = ::operator-(local_30,(b2Vec2 *)&local_38);
  b2Vec2::b2Vec2((b2Vec2 *)&local_28,(float)uVar3,(float)((ulonglong)uVar3 >> 0x20));
  b2Vec2::Normalize((b2Vec2 *)&local_28);
  ::operator-(abStack_10,(b2Vec2 *)&local_40);
  local_6c = (float)b2Dot((b2Vec2 *)&local_28,abStack_10);
  local_68 = (float)b2Dot((b2Vec2 *)&local_28,abStack_48);
  if (((local_68 != 0.0) &&
      (local_64 = local_6c / local_68, -1 < (int)((uint)(local_64 < 0.0) << 0x1f))) &&
     (-1 < (int)((uint)(*(float *)(local_7c + 0x10) < local_64) << 0x1f))) {
    ::operator*(extraout_s0,abStack_10);
    ::operator+(abStack_20,(b2Vec2 *)abStack_58);
    ::operator-(abStack_18,(b2Vec2 *)&local_38);
    local_60 = (float)b2Dot(abStack_18,abStack_18);
    if (local_60 != 0.0) {
      ::operator-(abStack_10,abStack_20);
      local_5c = (float)b2Dot(abStack_10,abStack_18);
      pbVar1 = local_78;
      local_5c = local_5c / local_60;
      if ((-1 < (int)((uint)(local_5c < 0.0) << 0x1f)) && (local_5c <= 1.0)) {
        *(float *)(local_78 + 8) = local_64;
        if (local_6c <= 0.0) {
          *(undefined4 *)local_78 = local_28;
          *(undefined4 *)(local_78 + 4) = uStack_24;
        }
        else {
          b2Vec2::operator-((b2Vec2 *)&local_88);
          *(undefined4 *)pbVar1 = local_88;
          *(undefined4 *)(pbVar1 + 4) = uStack_84;
        }
        return 1;
      }
    }
  }
  return 0;
}

// ---- b2EdgeShape::ComputeAABB  @ 0x6c0f3c
/* b2EdgeShape::ComputeAABB(b2AABB*, b2Transform const&, int) const */

void __thiscall
b2EdgeShape::ComputeAABB(b2EdgeShape *this,b2AABB *param_1,b2Transform *param_2,int param_3)

{
  b2AABB *pbVar1;
  b2AABB *pbVar2;
  undefined8 uVar3;
  undefined4 local_48;
  undefined4 uStack_44;
  int local_40;
  b2Vec2 *local_3c;
  b2AABB *local_38;
  b2EdgeShape *local_34;
  b2Transform abStack_30 [8];
  b2Transform abStack_28 [8];
  b2Vec2 abStack_20 [8];
  b2Vec2 abStack_18 [8];
  b2Vec2 abStack_10 [8];
  
  local_40 = param_3;
  local_3c = (b2Vec2 *)param_2;
  local_38 = param_1;
  local_34 = this;
  b2Mul(abStack_30,(b2Vec2 *)param_2);
  b2Mul(abStack_28,local_3c);
  b2Min(abStack_20,(b2Vec2 *)abStack_30);
  uVar3 = b2Max(abStack_18,(b2Vec2 *)abStack_30);
  b2Vec2::b2Vec2(abStack_10,(float)uVar3,(float)((ulonglong)uVar3 >> 0x20));
  pbVar1 = local_38;
  ::operator-((b2Vec2 *)&local_48,abStack_20);
  pbVar2 = local_38;
  *(undefined4 *)pbVar1 = local_48;
  *(undefined4 *)(pbVar1 + 4) = uStack_44;
  ::operator+((b2Vec2 *)&local_48,abStack_18);
  *(undefined4 *)(pbVar2 + 8) = local_48;
  *(undefined4 *)(pbVar2 + 0xc) = uStack_44;
  return;
}

// ---- b2EdgeShape::ComputeMass  @ 0x6c0fe0
/* b2EdgeShape::ComputeMass(b2MassData*, float) const */

void __thiscall b2EdgeShape::ComputeMass(b2EdgeShape *this,b2MassData *param_1,float param_2)

{
  b2MassData *pbVar1;
  float fVar2;
  undefined4 local_28;
  undefined4 uStack_24;
  b2MassData *local_18;
  b2EdgeShape *local_14;
  b2Vec2 abStack_10 [8];
  
  *(undefined4 *)param_1 = 0;
  local_18 = param_1;
  local_14 = this;
  fVar2 = (float)::operator+(abStack_10,(b2Vec2 *)(this + 0xc));
  pbVar1 = local_18;
  ::operator*(fVar2,(b2Vec2 *)&local_28);
  *(undefined4 *)(pbVar1 + 4) = local_28;
  *(undefined4 *)(pbVar1 + 8) = uStack_24;
  *(undefined4 *)(local_18 + 0xc) = 0;
  return;
}
