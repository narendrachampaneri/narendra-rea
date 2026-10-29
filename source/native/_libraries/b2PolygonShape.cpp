// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 13 functions

// ---- b2PolygonShape::b2PolygonShape  @ 0x6c116c
/* b2PolygonShape::b2PolygonShape() */

b2PolygonShape * __thiscall b2PolygonShape::b2PolygonShape(b2PolygonShape *this)

{
  b2PolygonShape *pbVar1;
  int iVar2;
  
  b2Shape::b2Shape((b2Shape *)this);
  *(undefined ***)this = &PTR__b2PolygonShape_1_0093bd60;
  b2Vec2::b2Vec2((b2Vec2 *)(this + 0xc));
  pbVar1 = this + 0x14;
  for (iVar2 = 7; iVar2 != -1; iVar2 = iVar2 + -1) {
    b2Vec2::b2Vec2((b2Vec2 *)pbVar1);
    pbVar1 = pbVar1 + 8;
  }
  pbVar1 = this + 0x54;
  for (iVar2 = 7; iVar2 != -1; iVar2 = iVar2 + -1) {
    b2Vec2::b2Vec2((b2Vec2 *)pbVar1);
    pbVar1 = pbVar1 + 8;
  }
  *(undefined4 *)(this + 4) = 2;
  *(undefined4 *)(this + 8) = 0x3c23d70a;
  *(undefined4 *)(this + 0x94) = 0;
  b2Vec2::SetZero((b2Vec2 *)(this + 0xc));
  return this;
}

// ---- b2PolygonShape::operator=  @ 0x6c11fc
/* b2PolygonShape::TEMPNAMEPLACEHOLDERVALUE(b2PolygonShape const&) */

b2PolygonShape * __thiscall b2PolygonShape::operator=(b2PolygonShape *this,b2PolygonShape *param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  
  b2Shape::operator=((b2Shape *)this,(b2Shape *)param_1);
  uVar1 = *(undefined4 *)(param_1 + 0x10);
  *(undefined4 *)(this + 0xc) = *(undefined4 *)(param_1 + 0xc);
  *(undefined4 *)(this + 0x10) = uVar1;
  uVar1 = *(undefined4 *)(param_1 + 0x18);
  uVar2 = *(undefined4 *)(param_1 + 0x1c);
  uVar3 = *(undefined4 *)(param_1 + 0x20);
  *(undefined4 *)(this + 0x14) = *(undefined4 *)(param_1 + 0x14);
  *(undefined4 *)(this + 0x18) = uVar1;
  *(undefined4 *)(this + 0x1c) = uVar2;
  *(undefined4 *)(this + 0x20) = uVar3;
  uVar1 = *(undefined4 *)(param_1 + 0x28);
  uVar2 = *(undefined4 *)(param_1 + 0x2c);
  uVar3 = *(undefined4 *)(param_1 + 0x30);
  *(undefined4 *)(this + 0x24) = *(undefined4 *)(param_1 + 0x24);
  *(undefined4 *)(this + 0x28) = uVar1;
  *(undefined4 *)(this + 0x2c) = uVar2;
  *(undefined4 *)(this + 0x30) = uVar3;
  uVar1 = *(undefined4 *)(param_1 + 0x38);
  uVar2 = *(undefined4 *)(param_1 + 0x3c);
  uVar3 = *(undefined4 *)(param_1 + 0x40);
  *(undefined4 *)(this + 0x34) = *(undefined4 *)(param_1 + 0x34);
  *(undefined4 *)(this + 0x38) = uVar1;
  *(undefined4 *)(this + 0x3c) = uVar2;
  *(undefined4 *)(this + 0x40) = uVar3;
  uVar1 = *(undefined4 *)(param_1 + 0x48);
  uVar2 = *(undefined4 *)(param_1 + 0x4c);
  uVar3 = *(undefined4 *)(param_1 + 0x50);
  *(undefined4 *)(this + 0x44) = *(undefined4 *)(param_1 + 0x44);
  *(undefined4 *)(this + 0x48) = uVar1;
  *(undefined4 *)(this + 0x4c) = uVar2;
  *(undefined4 *)(this + 0x50) = uVar3;
  uVar1 = *(undefined4 *)(param_1 + 0x58);
  uVar2 = *(undefined4 *)(param_1 + 0x5c);
  uVar3 = *(undefined4 *)(param_1 + 0x60);
  *(undefined4 *)(this + 0x54) = *(undefined4 *)(param_1 + 0x54);
  *(undefined4 *)(this + 0x58) = uVar1;
  *(undefined4 *)(this + 0x5c) = uVar2;
  *(undefined4 *)(this + 0x60) = uVar3;
  uVar1 = *(undefined4 *)(param_1 + 0x68);
  uVar2 = *(undefined4 *)(param_1 + 0x6c);
  uVar3 = *(undefined4 *)(param_1 + 0x70);
  *(undefined4 *)(this + 100) = *(undefined4 *)(param_1 + 100);
  *(undefined4 *)(this + 0x68) = uVar1;
  *(undefined4 *)(this + 0x6c) = uVar2;
  *(undefined4 *)(this + 0x70) = uVar3;
  uVar1 = *(undefined4 *)(param_1 + 0x78);
  uVar2 = *(undefined4 *)(param_1 + 0x7c);
  uVar3 = *(undefined4 *)(param_1 + 0x80);
  *(undefined4 *)(this + 0x74) = *(undefined4 *)(param_1 + 0x74);
  *(undefined4 *)(this + 0x78) = uVar1;
  *(undefined4 *)(this + 0x7c) = uVar2;
  *(undefined4 *)(this + 0x80) = uVar3;
  uVar1 = *(undefined4 *)(param_1 + 0x88);
  uVar2 = *(undefined4 *)(param_1 + 0x8c);
  uVar3 = *(undefined4 *)(param_1 + 0x90);
  *(undefined4 *)(this + 0x84) = *(undefined4 *)(param_1 + 0x84);
  *(undefined4 *)(this + 0x88) = uVar1;
  *(undefined4 *)(this + 0x8c) = uVar2;
  *(undefined4 *)(this + 0x90) = uVar3;
  *(undefined4 *)(this + 0x94) = *(undefined4 *)(param_1 + 0x94);
  return this;
}

// ---- b2PolygonShape::Clone  @ 0x6c1274
/* b2PolygonShape::Clone(b2BlockAllocator*) const */

b2PolygonShape * __thiscall b2PolygonShape::Clone(b2PolygonShape *this,b2BlockAllocator *param_1)

{
  void *pvVar1;
  b2PolygonShape *this_00;
  
  pvVar1 = (void *)b2BlockAllocator::Allocate(param_1,0x98);
  this_00 = operator_new(0x98,pvVar1);
  if (this_00 != (b2PolygonShape *)0x0) {
    b2PolygonShape(this_00);
  }
  operator=(this_00,this);
  return this_00;
}

// ---- b2PolygonShape::SetAsBox  @ 0x6c12b8
/* b2PolygonShape::SetAsBox(float, float) */

void __thiscall b2PolygonShape::SetAsBox(b2PolygonShape *this,float param_1,float param_2)

{
  undefined8 uVar1;
  
  *(undefined4 *)(this + 0x94) = 4;
  uVar1 = b2Vec2::Set((b2Vec2 *)(this + 0x14),param_1,param_2);
  uVar1 = b2Vec2::Set((b2Vec2 *)(this + 0x1c),(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
  uVar1 = b2Vec2::Set((b2Vec2 *)(this + 0x24),(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
  uVar1 = b2Vec2::Set((b2Vec2 *)(this + 0x2c),(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
  uVar1 = b2Vec2::Set((b2Vec2 *)(this + 0x54),(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
  uVar1 = b2Vec2::Set((b2Vec2 *)(this + 0x5c),(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
  uVar1 = b2Vec2::Set((b2Vec2 *)(this + 100),(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
  b2Vec2::Set((b2Vec2 *)(this + 0x6c),(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
  b2Vec2::SetZero((b2Vec2 *)(this + 0xc));
  return;
}

// ---- b2PolygonShape::SetAsBox  @ 0x6c138c
/* b2PolygonShape::SetAsBox(float, float, b2Vec2 const&, float) */

void b2PolygonShape::SetAsBox(float param_1,float param_2,b2Vec2 *param_3,float param_4)

{
  b2Vec2 *pbVar1;
  b2Vec2 *pbVar2;
  undefined4 uVar3;
  int iVar4;
  undefined4 *in_r3;
  float fVar5;
  undefined8 uVar6;
  undefined4 local_38;
  undefined4 uStack_34;
  undefined4 *local_30;
  b2Vec2 *local_24;
  int local_1c;
  undefined4 local_18;
  undefined4 uStack_14;
  b2Rot abStack_10 [8];
  
  *(undefined4 *)(param_3 + 0x94) = 4;
  local_30 = in_r3;
  local_24 = param_3;
  uVar6 = b2Vec2::Set(param_3 + 0x14,param_1,param_2);
  uVar6 = b2Vec2::Set(local_24 + 0x1c,(float)uVar6,(float)((ulonglong)uVar6 >> 0x20));
  uVar6 = b2Vec2::Set(local_24 + 0x24,(float)uVar6,(float)((ulonglong)uVar6 >> 0x20));
  uVar6 = b2Vec2::Set(local_24 + 0x2c,(float)uVar6,(float)((ulonglong)uVar6 >> 0x20));
  uVar6 = b2Vec2::Set(local_24 + 0x54,(float)uVar6,(float)((ulonglong)uVar6 >> 0x20));
  uVar6 = b2Vec2::Set(local_24 + 0x5c,(float)uVar6,(float)((ulonglong)uVar6 >> 0x20));
  uVar6 = b2Vec2::Set(local_24 + 100,(float)uVar6,(float)((ulonglong)uVar6 >> 0x20));
  b2Vec2::Set(local_24 + 0x6c,(float)uVar6,(float)((ulonglong)uVar6 >> 0x20));
  uVar3 = local_30[1];
  *(undefined4 *)(local_24 + 0xc) = *local_30;
  *(undefined4 *)(local_24 + 0x10) = uVar3;
  fVar5 = (float)b2Transform::b2Transform((b2Transform *)&local_18);
  local_18 = *local_30;
  uStack_14 = local_30[1];
  b2Rot::Set(abStack_10,fVar5);
  for (local_1c = 0; pbVar2 = local_24, local_1c < *(int *)(local_24 + 0x94);
      local_1c = local_1c + 1) {
    iVar4 = local_1c + 2;
    b2Mul((b2Transform *)&local_38,(b2Vec2 *)&local_18);
    pbVar1 = local_24;
    *(undefined4 *)(pbVar2 + iVar4 * 8 + 4) = local_38;
    *(undefined4 *)(pbVar2 + iVar4 * 8 + 8) = uStack_34;
    iVar4 = local_1c + 10;
    b2Mul((b2Rot *)&local_38,(b2Vec2 *)abStack_10);
    *(undefined4 *)(pbVar1 + iVar4 * 8 + 4) = local_38;
    *(undefined4 *)(pbVar1 + iVar4 * 8 + 8) = uStack_34;
  }
  return;
}

// ---- b2PolygonShape::GetChildCount  @ 0x6c1500
/* b2PolygonShape::GetChildCount() const */

undefined4 b2PolygonShape::GetChildCount(void)

{
  return 1;
}

// ---- b2PolygonShape::Set  @ 0x6c1660
/* b2PolygonShape::Set(b2Vec2 const*, int) */

void __thiscall b2PolygonShape::Set(b2PolygonShape *this,b2Vec2 *param_1,int param_2)

{
  b2PolygonShape *pbVar1;
  undefined4 uVar2;
  int iVar3;
  float fVar4;
  undefined4 local_38;
  undefined4 uStack_34;
  int local_2c;
  b2Vec2 *local_28;
  b2PolygonShape *local_24;
  int local_20;
  int local_1c;
  int local_18;
  int local_14;
  b2Vec2 abStack_10 [8];
  
  *(int *)(this + 0x94) = param_2;
  for (local_20 = 0; local_20 < *(int *)(this + 0x94); local_20 = local_20 + 1) {
    uVar2 = *(undefined4 *)(param_1 + local_20 * 8 + 4);
    *(undefined4 *)(this + (local_20 + 2) * 8 + 4) = *(undefined4 *)(param_1 + local_20 * 8);
    *(undefined4 *)(this + (local_20 + 2) * 8 + 8) = uVar2;
  }
  local_2c = param_2;
  local_28 = param_1;
  local_24 = this;
  for (local_1c = 0; pbVar1 = local_24, local_1c < *(int *)(local_24 + 0x94);
      local_1c = local_1c + 1) {
    local_18 = local_1c;
    if (local_1c + 1 < *(int *)(local_24 + 0x94)) {
      local_14 = local_1c + 1;
    }
    else {
      local_14 = 0;
    }
    fVar4 = (float)::operator-(abStack_10,(b2Vec2 *)(local_24 + (local_14 + 2) * 8 + 4));
    pbVar1 = local_24;
    iVar3 = local_1c + 10;
    b2Cross((b2Vec2 *)&local_38,fVar4);
    *(undefined4 *)(pbVar1 + iVar3 * 8 + 4) = local_38;
    *(undefined4 *)(pbVar1 + iVar3 * 8 + 8) = uStack_34;
    b2Vec2::Normalize((b2Vec2 *)(local_24 + (local_1c + 10) * 8 + 4));
  }
  FUN_006c150c(&local_38,local_24 + 0x14,*(undefined4 *)(local_24 + 0x94));
  *(undefined4 *)(pbVar1 + 0xc) = local_38;
  *(undefined4 *)(pbVar1 + 0x10) = uStack_34;
  return;
}

// ---- b2PolygonShape::TestPoint  @ 0x6c1764
/* b2PolygonShape::TestPoint(b2Transform const&, b2Vec2 const&) const */

undefined4 __thiscall
b2PolygonShape::TestPoint(b2PolygonShape *this,b2Transform *param_1,b2Vec2 *param_2)

{
  float fVar1;
  int local_20;
  b2Rot abStack_18 [8];
  b2Vec2 abStack_10 [8];
  
  ::operator-(abStack_10,param_2);
  b2MulT(abStack_18,(b2Vec2 *)(param_1 + 8));
  local_20 = 0;
  while( true ) {
    if (*(int *)(this + 0x94) <= local_20) {
      return 1;
    }
    ::operator-(abStack_10,(b2Vec2 *)abStack_18);
    fVar1 = (float)b2Dot((b2Vec2 *)(this + (local_20 + 10) * 8 + 4),abStack_10);
    if (0.0 < fVar1) break;
    local_20 = local_20 + 1;
  }
  return 0;
}

// ---- b2PolygonShape::RayCast  @ 0x6c17f8
/* b2PolygonShape::RayCast(b2RayCastOutput*, b2RayCastInput const&, b2Transform const&, int) const
    */

bool b2PolygonShape::RayCast
               (b2RayCastOutput *param_1,b2RayCastInput *param_2,b2Transform *param_3,int param_4)

{
  b2RayCastInput *pbVar1;
  b2Vec2 *pbVar2;
  bool bVar3;
  undefined4 local_58;
  undefined4 uStack_54;
  int local_50;
  b2Transform *local_4c;
  b2RayCastInput *local_48;
  b2RayCastOutput *local_44;
  float local_40;
  float local_3c;
  int local_38;
  int local_34;
  float local_30;
  float local_2c;
  b2Rot abStack_28 [8];
  b2Rot abStack_20 [8];
  b2Vec2 abStack_18 [8];
  b2Vec2 abStack_10 [8];
  
  local_50 = param_4;
  local_4c = param_3;
  local_48 = param_2;
  local_44 = param_1;
  ::operator-(abStack_10,(b2Vec2 *)param_3);
  b2MulT(abStack_28,(b2Vec2 *)(param_4 + 8));
  pbVar2 = (b2Vec2 *)(local_50 + 8);
  ::operator-(abStack_10,(b2Vec2 *)(local_4c + 8));
  b2MulT(abStack_20,pbVar2);
  ::operator-(abStack_18,(b2Vec2 *)abStack_20);
  local_40 = 0.0;
  local_3c = *(float *)(local_4c + 0x10);
  local_38 = -1;
  local_34 = 0;
  while( true ) {
    pbVar1 = local_48;
    if (*(int *)(local_44 + 0x94) <= local_34) {
      bVar3 = -1 < local_38;
      if (bVar3) {
        *(float *)(local_48 + 8) = local_40;
        b2Mul((b2Rot *)&local_58,(b2Vec2 *)(local_50 + 8));
        *(undefined4 *)pbVar1 = local_58;
        *(undefined4 *)(pbVar1 + 4) = uStack_54;
      }
      return bVar3;
    }
    pbVar2 = (b2Vec2 *)(local_44 + (local_34 + 10) * 8 + 4);
    ::operator-(abStack_10,(b2Vec2 *)(local_44 + (local_34 + 2) * 8 + 4));
    local_30 = (float)b2Dot(pbVar2,abStack_10);
    local_2c = (float)b2Dot((b2Vec2 *)(local_44 + (local_34 + 10) * 8 + 4),abStack_18);
    if (local_2c == 0.0) {
      if ((int)((uint)(local_30 < 0.0) << 0x1f) < 0) {
        return false;
      }
    }
    else if ((-1 < (int)((uint)(local_2c < 0.0) << 0x1f)) || (local_40 * local_2c <= local_30)) {
      if ((0.0 < local_2c) && (local_30 < local_3c * local_2c)) {
        local_3c = local_30 / local_2c;
      }
    }
    else {
      local_40 = local_30 / local_2c;
      local_38 = local_34;
    }
    if ((int)((uint)(local_3c < local_40) << 0x1f) < 0) break;
    local_34 = local_34 + 1;
  }
  return false;
}

// ---- b2PolygonShape::ComputeAABB  @ 0x6c19cc
/* b2PolygonShape::ComputeAABB(b2AABB*, b2Transform const&, int) const */

void __thiscall
b2PolygonShape::ComputeAABB(b2PolygonShape *this,b2AABB *param_1,b2Transform *param_2,int param_3)

{
  b2AABB *pbVar1;
  b2AABB *pbVar2;
  undefined8 uVar3;
  undefined4 local_40;
  undefined4 uStack_3c;
  int local_38;
  b2Transform *local_34;
  b2AABB *local_30;
  b2PolygonShape *local_2c;
  int local_24;
  undefined4 local_20;
  undefined4 uStack_1c;
  undefined4 local_18;
  undefined4 uStack_14;
  b2Transform abStack_10 [8];
  
  local_38 = param_3;
  local_34 = param_2;
  local_30 = param_1;
  local_2c = this;
  uVar3 = b2Mul((b2Transform *)&local_20,(b2Vec2 *)param_2);
  local_18 = local_20;
  uStack_14 = uStack_1c;
  for (local_24 = 1; local_24 < *(int *)(local_2c + 0x94); local_24 = local_24 + 1) {
    b2Mul(abStack_10,(b2Vec2 *)local_34);
    b2Min((b2Vec2 *)&local_40,(b2Vec2 *)&local_20);
    local_20 = local_40;
    uStack_1c = uStack_3c;
    uVar3 = b2Max((b2Vec2 *)&local_40,(b2Vec2 *)&local_18);
    local_18 = local_40;
    uStack_14 = uStack_3c;
  }
  b2Vec2::b2Vec2((b2Vec2 *)abStack_10,(float)uVar3,(float)((ulonglong)uVar3 >> 0x20));
  pbVar1 = local_30;
  ::operator-((b2Vec2 *)&local_40,(b2Vec2 *)&local_20);
  pbVar2 = local_30;
  *(undefined4 *)pbVar1 = local_40;
  *(undefined4 *)(pbVar1 + 4) = uStack_3c;
  ::operator+((b2Vec2 *)&local_40,(b2Vec2 *)&local_18);
  *(undefined4 *)(pbVar2 + 8) = local_40;
  *(undefined4 *)(pbVar2 + 0xc) = uStack_3c;
  return;
}

// ---- b2PolygonShape::ComputeMass  @ 0x6c1ab4
/* b2PolygonShape::ComputeMass(b2MassData*, float) const */

void __thiscall b2PolygonShape::ComputeMass(b2PolygonShape *this,b2MassData *param_1,float param_2)

{
  b2MassData *pbVar1;
  float fVar2;
  float in_r2;
  uint in_fpscr;
  float fVar3;
  undefined8 uVar4;
  float fVar5;
  undefined4 local_90;
  undefined4 uStack_8c;
  float local_84;
  b2MassData *local_80;
  b2PolygonShape *local_7c;
  float local_74;
  float local_70;
  int local_6c;
  int local_68;
  undefined4 local_64;
  float local_60;
  float local_5c;
  float local_58;
  float local_54;
  float local_50;
  float local_4c;
  float local_48;
  float local_44;
  b2Vec2 abStack_40 [8];
  b2Vec2 abStack_38 [8];
  float local_30;
  float local_2c;
  float local_28;
  float local_24;
  b2Vec2 abStack_20 [8];
  b2Vec2 abStack_18 [8];
  
  local_84 = in_r2;
  local_80 = param_1;
  local_7c = this;
  uVar4 = b2Vec2::b2Vec2(abStack_40);
  uVar4 = b2Vec2::Set(abStack_40,(float)uVar4,(float)((ulonglong)uVar4 >> 0x20));
  local_74 = 0.0;
  local_70 = 0.0;
  fVar3 = (float)b2Vec2::b2Vec2(abStack_38,(float)uVar4,(float)((ulonglong)uVar4 >> 0x20));
  for (local_6c = 0; local_6c < *(int *)(local_7c + 0x94); local_6c = local_6c + 1) {
    fVar3 = (float)b2Vec2::operator+=(abStack_38,(b2Vec2 *)(local_7c + (local_6c + 2) * 8 + 4));
  }
  VectorSignedToFloat(*(undefined4 *)(local_7c + 0x94),(byte)(in_fpscr >> 0x16) & 3);
  fVar3 = (float)b2Vec2::operator*=(abStack_38,fVar3);
  local_64 = 0x3eaaaaab;
  for (local_68 = 0; local_68 < *(int *)(local_7c + 0x94); local_68 = local_68 + 1) {
    ::operator-((b2Vec2 *)&local_30,(b2Vec2 *)(local_7c + (local_68 + 2) * 8 + 4));
    if (local_68 + 1 < *(int *)(local_7c + 0x94)) {
      ::operator-((b2Vec2 *)&local_28,(b2Vec2 *)(local_7c + (local_68 + 3) * 8 + 4));
    }
    else {
      ::operator-((b2Vec2 *)&local_28,(b2Vec2 *)(local_7c + 0x14));
    }
    local_60 = (float)b2Cross((b2Vec2 *)&local_30,(b2Vec2 *)&local_28);
    local_5c = local_60 * 0.5;
    local_74 = local_74 + local_5c;
    fVar3 = (float)::operator+(abStack_20,(b2Vec2 *)&local_30);
    ::operator*(fVar3,abStack_18);
    fVar3 = (float)b2Vec2::operator+=(abStack_40,abStack_18);
    local_58 = local_30;
    local_54 = local_2c;
    local_50 = local_28;
    local_4c = local_24;
    local_48 = local_30 * local_30 + local_28 * local_30 + local_28 * local_28;
    local_44 = local_2c * local_2c + local_24 * local_2c + local_24 * local_24;
    local_70 = local_70 + local_60 * 0.083333336 * (local_48 + local_44);
  }
  *(float *)local_80 = local_84 * local_74;
  b2Vec2::operator*=(abStack_40,fVar3);
  pbVar1 = local_80;
  ::operator+((b2Vec2 *)&local_90,abStack_40);
  *(undefined4 *)(pbVar1 + 4) = local_90;
  *(undefined4 *)(pbVar1 + 8) = uStack_8c;
  *(float *)(local_80 + 0xc) = local_84 * local_70;
  fVar5 = *(float *)local_80;
  fVar3 = (float)b2Dot((b2Vec2 *)(local_80 + 4),(b2Vec2 *)(local_80 + 4));
  fVar2 = (float)b2Dot(abStack_40,abStack_40);
  *(float *)(local_80 + 0xc) = *(float *)(local_80 + 0xc) + fVar5 * (fVar3 - fVar2);
  return;
}

// ---- b2PolygonShape::~b2PolygonShape  @ 0x6c1d70
/* WARNING: Removing unreachable block (ram,0x006c1d92) */
/* b2PolygonShape::~b2PolygonShape() */

b2PolygonShape * __thiscall b2PolygonShape::~b2PolygonShape(b2PolygonShape *this)

{
  *(undefined ***)this = &PTR__b2PolygonShape_1_0093bd60;
  b2Shape::~b2Shape((b2Shape *)this);
  return this;
}

// ---- b2PolygonShape::~b2PolygonShape  @ 0x6c1dac
/* b2PolygonShape::~b2PolygonShape() */

b2PolygonShape * __thiscall b2PolygonShape::~b2PolygonShape(b2PolygonShape *this)

{
  ~b2PolygonShape(this);
  operator_delete(this);
  return this;
}
