// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 10 functions

// ---- b2CircleShape::b2CircleShape  @ 0x6c070c
/* b2CircleShape::b2CircleShape() */

b2CircleShape * __thiscall b2CircleShape::b2CircleShape(b2CircleShape *this)

{
  b2Shape::b2Shape((b2Shape *)this);
  *(undefined ***)this = &PTR__b2CircleShape_1_0093bcf0;
  b2Vec2::b2Vec2((b2Vec2 *)(this + 0xc));
  *(undefined4 *)(this + 4) = 0;
  *(undefined4 *)(this + 8) = 0;
  b2Vec2::SetZero((b2Vec2 *)(this + 0xc));
  return this;
}

// ---- b2CircleShape::operator=  @ 0x6c077c
/* b2CircleShape::TEMPNAMEPLACEHOLDERVALUE(b2CircleShape const&) */

b2CircleShape * __thiscall b2CircleShape::operator=(b2CircleShape *this,b2CircleShape *param_1)

{
  undefined4 uVar1;
  
  b2Shape::operator=((b2Shape *)this,(b2Shape *)param_1);
  uVar1 = *(undefined4 *)(param_1 + 0x10);
  *(undefined4 *)(this + 0xc) = *(undefined4 *)(param_1 + 0xc);
  *(undefined4 *)(this + 0x10) = uVar1;
  return this;
}

// ---- b2CircleShape::Clone  @ 0x6c07ac
/* b2CircleShape::Clone(b2BlockAllocator*) const */

b2CircleShape * __thiscall b2CircleShape::Clone(b2CircleShape *this,b2BlockAllocator *param_1)

{
  void *pvVar1;
  b2CircleShape *this_00;
  
  pvVar1 = (void *)b2BlockAllocator::Allocate(param_1,0x14);
  this_00 = operator_new(0x14,pvVar1);
  if (this_00 != (b2CircleShape *)0x0) {
    b2CircleShape(this_00);
  }
  operator=(this_00,this);
  return this_00;
}

// ---- b2CircleShape::GetChildCount  @ 0x6c07f0
/* b2CircleShape::GetChildCount() const */

undefined4 b2CircleShape::GetChildCount(void)

{
  return 1;
}

// ---- b2CircleShape::TestPoint  @ 0x6c07fc
/* b2CircleShape::TestPoint(b2Transform const&, b2Vec2 const&) const */

bool __thiscall b2CircleShape::TestPoint(b2CircleShape *this,b2Transform *param_1,b2Vec2 *param_2)

{
  float fVar1;
  b2Vec2 abStack_18 [8];
  b2Rot abStack_10 [8];
  
  b2Mul(abStack_10,(b2Vec2 *)(param_1 + 8));
  ::operator+(abStack_18,(b2Vec2 *)param_1);
  ::operator-((b2Vec2 *)abStack_10,param_2);
  fVar1 = (float)b2Dot((b2Vec2 *)abStack_10,(b2Vec2 *)abStack_10);
  return fVar1 <= *(float *)(this + 8) * *(float *)(this + 8);
}

// ---- b2CircleShape::RayCast  @ 0x6c0870
/* b2CircleShape::RayCast(b2RayCastOutput*, b2RayCastInput const&, b2Transform const&, int) const */

undefined4
b2CircleShape::RayCast
          (b2RayCastOutput *param_1,b2RayCastInput *param_2,b2Transform *param_3,int param_4)

{
  b2RayCastInput *pbVar1;
  float fVar2;
  undefined4 uVar3;
  float extraout_s0;
  float extraout_s0_00;
  undefined4 local_58;
  undefined4 uStack_54;
  int local_50;
  b2Transform *local_4c;
  b2RayCastInput *local_48;
  b2RayCastOutput *local_44;
  float local_3c;
  float local_38;
  float local_34;
  float local_30;
  float local_2c;
  b2Vec2 abStack_28 [8];
  b2Vec2 abStack_20 [8];
  b2Vec2 abStack_18 [8];
  b2Rot abStack_10 [8];
  
  local_50 = param_4;
  local_4c = param_3;
  local_48 = param_2;
  local_44 = param_1;
  b2Mul(abStack_10,(b2Vec2 *)(param_4 + 8));
  ::operator+(abStack_28,(b2Vec2 *)param_4);
  ::operator-(abStack_20,(b2Vec2 *)local_4c);
  local_3c = (float)b2Dot(abStack_20,abStack_20);
  local_3c = local_3c - *(float *)(local_44 + 8) * *(float *)(local_44 + 8);
  ::operator-(abStack_18,(b2Vec2 *)(local_4c + 8));
  local_38 = (float)b2Dot(abStack_20,abStack_18);
  local_34 = (float)b2Dot(abStack_18,abStack_18);
  local_30 = local_38 * local_38 - local_34 * local_3c;
  if (((int)((uint)(local_30 < 0.0) << 0x1f) < 0) ||
     ((int)((uint)(local_34 < 1.1920929e-07) << 0x1f) < 0)) {
    uVar3 = 0;
  }
  else {
    fVar2 = (float)std::sqrt(extraout_s0);
    local_2c = -(fVar2 + local_38);
    if ((local_2c < 0.0) || (*(float *)(local_4c + 0x10) * local_34 < local_2c)) {
      uVar3 = 0;
    }
    else {
      local_2c = local_2c / local_34;
      *(float *)(local_48 + 8) = local_2c;
      ::operator*(extraout_s0_00,(b2Vec2 *)abStack_10);
      pbVar1 = local_48;
      ::operator+((b2Vec2 *)&local_58,abStack_20);
      *(undefined4 *)pbVar1 = local_58;
      *(undefined4 *)(pbVar1 + 4) = uStack_54;
      b2Vec2::Normalize((b2Vec2 *)local_48);
      uVar3 = 1;
    }
  }
  return uVar3;
}

// ---- b2CircleShape::ComputeAABB  @ 0x6c09f0
/* b2CircleShape::ComputeAABB(b2AABB*, b2Transform const&, int) const */

void b2CircleShape::ComputeAABB(b2AABB *param_1,b2Transform *param_2,int param_3)

{
  undefined8 uVar1;
  b2Vec2 local_18 [8];
  b2Rot abStack_10 [8];
  
  b2Mul(abStack_10,(b2Vec2 *)(param_3 + 8));
  uVar1 = ::operator+(local_18,(b2Vec2 *)param_3);
  uVar1 = b2Vec2::Set((b2Vec2 *)param_2,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
  b2Vec2::Set((b2Vec2 *)(param_2 + 8),(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
  return;
}

// ---- b2CircleShape::ComputeMass  @ 0x6c0a80
/* b2CircleShape::ComputeMass(b2MassData*, float) const */

void __thiscall b2CircleShape::ComputeMass(b2CircleShape *this,b2MassData *param_1,float param_2)

{
  float fVar1;
  undefined4 uVar2;
  float in_r2;
  float fVar3;
  float fVar4;
  float fVar5;
  
  *(float *)param_1 = in_r2 * 3.1415927 * *(float *)(this + 8) * *(float *)(this + 8);
  uVar2 = *(undefined4 *)(this + 0x10);
  *(undefined4 *)(param_1 + 4) = *(undefined4 *)(this + 0xc);
  *(undefined4 *)(param_1 + 8) = uVar2;
  fVar5 = *(float *)param_1;
  fVar3 = *(float *)(this + 8);
  fVar4 = *(float *)(this + 8);
  fVar1 = (float)b2Dot((b2Vec2 *)(this + 0xc),(b2Vec2 *)(this + 0xc));
  *(float *)(param_1 + 0xc) = fVar5 * (fVar3 * 0.5 * fVar4 + fVar1);
  return;
}

// ---- b2CircleShape::~b2CircleShape  @ 0x6c0b14
/* WARNING: Removing unreachable block (ram,0x006c0b36) */
/* b2CircleShape::~b2CircleShape() */

b2CircleShape * __thiscall b2CircleShape::~b2CircleShape(b2CircleShape *this)

{
  *(undefined ***)this = &PTR__b2CircleShape_1_0093bcf0;
  b2Shape::~b2Shape((b2Shape *)this);
  return this;
}

// ---- b2CircleShape::~b2CircleShape  @ 0x6c0b50
/* b2CircleShape::~b2CircleShape() */

b2CircleShape * __thiscall b2CircleShape::~b2CircleShape(b2CircleShape *this)

{
  ~b2CircleShape(this);
  operator_delete(this);
  return this;
}
