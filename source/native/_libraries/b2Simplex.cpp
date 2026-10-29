// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 9 functions

// ---- b2Simplex::ReadCache  @ 0x6c5468
/* b2Simplex::ReadCache(b2SimplexCache const*, b2DistanceProxy const*, b2Transform const&,
   b2DistanceProxy const*, b2Transform const&) */

void __thiscall
b2Simplex::ReadCache
          (b2Simplex *this,b2SimplexCache *param_1,b2DistanceProxy *param_2,b2Transform *param_3,
          b2DistanceProxy *param_4,b2Transform *param_5)

{
  b2Simplex *pbVar1;
  b2Simplex *pbVar2;
  undefined4 *puVar3;
  undefined4 local_48;
  undefined4 uStack_44;
  b2Vec2 *local_40;
  b2DistanceProxy *local_3c;
  b2SimplexCache *local_38;
  b2Simplex *local_34;
  int local_30;
  b2Simplex *local_2c;
  b2Simplex *local_28;
  float local_24;
  float local_20;
  b2Simplex *local_1c;
  undefined4 local_18;
  undefined4 uStack_14;
  undefined4 local_10;
  undefined4 uStack_c;
  
  *(uint *)(this + 0x6c) = (uint)*(ushort *)(param_1 + 4);
  local_40 = (b2Vec2 *)param_3;
  local_3c = param_2;
  local_38 = param_1;
  local_34 = this;
  local_2c = this;
  for (local_30 = 0; local_30 < *(int *)(local_34 + 0x6c); local_30 = local_30 + 1) {
    local_28 = local_2c + local_30 * 0x24;
    *(uint *)(local_28 + 0x1c) = (uint)(byte)local_38[local_30 + 6];
    *(uint *)(local_28 + 0x20) = (uint)(byte)local_38[local_30 + 9];
    puVar3 = (undefined4 *)b2DistanceProxy::GetVertex(local_3c,*(int *)(local_28 + 0x1c));
    local_18 = *puVar3;
    uStack_14 = puVar3[1];
    puVar3 = (undefined4 *)b2DistanceProxy::GetVertex(param_4,*(int *)(local_28 + 0x20));
    pbVar1 = local_28;
    local_10 = *puVar3;
    uStack_c = puVar3[1];
    b2Mul((b2Transform *)&local_48,local_40);
    pbVar2 = local_28;
    *(undefined4 *)pbVar1 = local_48;
    *(undefined4 *)(pbVar1 + 4) = uStack_44;
    b2Mul((b2Transform *)&local_48,(b2Vec2 *)param_5);
    pbVar1 = local_28;
    *(undefined4 *)(pbVar2 + 8) = local_48;
    *(undefined4 *)(pbVar2 + 0xc) = uStack_44;
    ::operator-((b2Vec2 *)&local_48,(b2Vec2 *)(local_28 + 8));
    *(undefined4 *)(pbVar1 + 0x10) = local_48;
    *(undefined4 *)(pbVar1 + 0x14) = uStack_44;
    *(undefined4 *)(local_28 + 0x18) = 0;
  }
  if (1 < *(int *)(local_34 + 0x6c)) {
    local_24 = *(float *)local_38;
    local_20 = (float)GetMetric(local_34);
    if (((local_20 < local_24 * 0.5) || ((int)((uint)(local_24 + local_24 < local_20) << 0x1f) < 0))
       || ((int)((uint)(local_20 < 1.1920929e-07) << 0x1f) < 0)) {
      *(undefined4 *)(local_34 + 0x6c) = 0;
    }
  }
  if (*(int *)(local_34 + 0x6c) == 0) {
    local_1c = local_2c;
    *(undefined4 *)(local_2c + 0x1c) = 0;
    *(undefined4 *)(local_2c + 0x20) = 0;
    puVar3 = (undefined4 *)b2DistanceProxy::GetVertex(local_3c,0);
    local_18 = *puVar3;
    uStack_14 = puVar3[1];
    puVar3 = (undefined4 *)b2DistanceProxy::GetVertex(param_4,0);
    pbVar1 = local_1c;
    local_10 = *puVar3;
    uStack_c = puVar3[1];
    b2Mul((b2Transform *)&local_48,local_40);
    pbVar2 = local_1c;
    *(undefined4 *)pbVar1 = local_48;
    *(undefined4 *)(pbVar1 + 4) = uStack_44;
    b2Mul((b2Transform *)&local_48,(b2Vec2 *)param_5);
    pbVar1 = local_1c;
    *(undefined4 *)(pbVar2 + 8) = local_48;
    *(undefined4 *)(pbVar2 + 0xc) = uStack_44;
    ::operator-((b2Vec2 *)&local_48,(b2Vec2 *)(local_1c + 8));
    *(undefined4 *)(pbVar1 + 0x10) = local_48;
    *(undefined4 *)(pbVar1 + 0x14) = uStack_44;
    *(undefined4 *)(local_34 + 0x6c) = 1;
  }
  return;
}

// ---- b2Simplex::WriteCache  @ 0x6c566c
/* b2Simplex::WriteCache(b2SimplexCache*) const */

void __thiscall b2Simplex::WriteCache(b2Simplex *this,b2SimplexCache *param_1)

{
  undefined4 uVar1;
  int local_10;
  
  uVar1 = GetMetric(this);
  *(undefined4 *)param_1 = uVar1;
  *(short *)(param_1 + 4) = (short)*(undefined4 *)(this + 0x6c);
  for (local_10 = 0; local_10 < *(int *)(this + 0x6c); local_10 = local_10 + 1) {
    param_1[local_10 + 6] = SUB41(*(undefined4 *)(this + local_10 * 0x24 + 0x1c),0);
    param_1[local_10 + 9] = SUB41(*(undefined4 *)(this + local_10 * 0x24 + 0x20),0);
  }
  return;
}

// ---- b2Simplex::GetSearchDirection  @ 0x6c56e0
/* b2Simplex::GetSearchDirection() const */

b2Vec2 * b2Simplex::GetSearchDirection(void)

{
  undefined4 uVar1;
  b2Vec2 *in_r0;
  float fVar2;
  int in_r1;
  float extraout_s0;
  b2Vec2 abStack_18 [8];
  b2Vec2 abStack_10 [12];
  
  uVar1 = b2Vec2_zero._4_4_;
  if (*(int *)(in_r1 + 0x6c) == 1) {
    b2Vec2::operator-(in_r0);
  }
  else if (*(int *)(in_r1 + 0x6c) == 2) {
    ::operator-(abStack_18,(b2Vec2 *)(in_r1 + 0x34));
    b2Vec2::operator-(abStack_10);
    fVar2 = (float)b2Cross(abStack_18,abStack_10);
    if (fVar2 <= 0.0) {
      b2Cross(in_r0,extraout_s0);
    }
    else {
      b2Cross(extraout_s0,in_r0);
    }
  }
  else {
    *(undefined4 *)in_r0 = (undefined4)b2Vec2_zero;
    *(undefined4 *)(in_r0 + 4) = uVar1;
  }
  return in_r0;
}

// ---- b2Simplex::GetClosestPoint  @ 0x6c5790
/* b2Simplex::GetClosestPoint() const */

b2Vec2 * b2Simplex::GetClosestPoint(void)

{
  b2Vec2 *in_r0;
  int in_r1;
  undefined4 uVar1;
  float in_s0;
  float fVar2;
  b2Vec2 abStack_18 [8];
  b2Vec2 abStack_10 [12];
  
  uVar1 = b2Vec2_zero._4_4_;
  switch(*(undefined4 *)(in_r1 + 0x6c)) {
  case 0:
    *(undefined4 *)in_r0 = (undefined4)b2Vec2_zero;
    *(undefined4 *)(in_r0 + 4) = uVar1;
    break;
  case 1:
    uVar1 = *(undefined4 *)(in_r1 + 0x14);
    *(undefined4 *)in_r0 = *(undefined4 *)(in_r1 + 0x10);
    *(undefined4 *)(in_r0 + 4) = uVar1;
    break;
  case 2:
    fVar2 = (float)::operator*(in_s0,abStack_18);
    ::operator*(fVar2,abStack_10);
    ::operator+(in_r0,abStack_18);
    break;
  case 3:
    *(undefined4 *)in_r0 = (undefined4)b2Vec2_zero;
    *(undefined4 *)(in_r0 + 4) = uVar1;
    break;
  default:
    *(undefined4 *)in_r0 = (undefined4)b2Vec2_zero;
    *(undefined4 *)(in_r0 + 4) = uVar1;
  }
  return in_r0;
}

// ---- b2Simplex::GetWitnessPoints  @ 0x6c5854
/* b2Simplex::GetWitnessPoints(b2Vec2*, b2Vec2*) const */

void b2Simplex::GetWitnessPoints(b2Vec2 *param_1,b2Vec2 *param_2)

{
  b2Vec2 *pbVar1;
  undefined4 uVar2;
  undefined4 *in_r2;
  float in_s0;
  float fVar3;
  undefined4 local_40;
  undefined4 uStack_3c;
  undefined4 *local_34;
  b2Vec2 *local_30;
  b2Vec2 *local_2c;
  b2Vec2 abStack_28 [8];
  b2Vec2 abStack_20 [8];
  b2Vec2 abStack_18 [8];
  b2Vec2 abStack_10 [8];
  
  local_34 = in_r2;
  local_30 = param_2;
  local_2c = param_1;
  switch(*(undefined4 *)(param_1 + 0x6c)) {
  case 1:
    uVar2 = *(undefined4 *)(param_1 + 4);
    *(undefined4 *)param_2 = *(undefined4 *)param_1;
    *(undefined4 *)(param_2 + 4) = uVar2;
    uVar2 = *(undefined4 *)(param_1 + 0xc);
    *in_r2 = *(undefined4 *)(param_1 + 8);
    in_r2[1] = uVar2;
    break;
  case 2:
    fVar3 = (float)::operator*(in_s0,abStack_18);
    ::operator*(fVar3,abStack_10);
    pbVar1 = local_30;
    fVar3 = (float)::operator+((b2Vec2 *)&local_40,abStack_18);
    *(undefined4 *)pbVar1 = local_40;
    *(undefined4 *)(pbVar1 + 4) = uStack_3c;
    fVar3 = (float)::operator*(fVar3,abStack_18);
    ::operator*(fVar3,abStack_10);
    ::operator+((b2Vec2 *)&local_40,abStack_18);
    *local_34 = local_40;
    local_34[1] = uStack_3c;
    break;
  case 3:
    fVar3 = (float)::operator*(in_s0,abStack_28);
    ::operator*(fVar3,abStack_20);
    fVar3 = (float)::operator+(abStack_18,abStack_28);
    ::operator*(fVar3,abStack_10);
    pbVar1 = local_30;
    ::operator+((b2Vec2 *)&local_40,abStack_18);
    *(undefined4 *)pbVar1 = local_40;
    *(undefined4 *)(pbVar1 + 4) = uStack_3c;
    uVar2 = *(undefined4 *)(local_30 + 4);
    *local_34 = *(undefined4 *)local_30;
    local_34[1] = uVar2;
  }
  return;
}

// ---- b2Simplex::GetMetric  @ 0x6c59a8
/* b2Simplex::GetMetric() const */

undefined4 __thiscall b2Simplex::GetMetric(b2Simplex *this)

{
  undefined4 uVar1;
  b2Vec2 abStack_18 [8];
  b2Vec2 abStack_10 [12];
  
  switch(*(undefined4 *)(this + 0x6c)) {
  case 0:
    uVar1 = 0;
    break;
  case 1:
    uVar1 = 0;
    break;
  case 2:
    uVar1 = b2Distance((b2Vec2 *)(this + 0x10),(b2Vec2 *)(this + 0x34));
    break;
  case 3:
    ::operator-(abStack_18,(b2Vec2 *)(this + 0x34));
    ::operator-(abStack_10,(b2Vec2 *)(this + 0x58));
    uVar1 = b2Cross(abStack_18,abStack_10);
    break;
  default:
    uVar1 = 0;
  }
  return uVar1;
}

// ---- b2Simplex::Solve2  @ 0x6c5a3c
/* b2Simplex::Solve2() */

void __thiscall b2Simplex::Solve2(b2Simplex *this)

{
  float fVar1;
  float fVar2;
  float fVar3;
  undefined4 local_28;
  undefined4 uStack_24;
  undefined4 local_20;
  undefined4 uStack_1c;
  b2Vec2 abStack_18 [12];
  
  local_28 = *(undefined4 *)(this + 0x10);
  uStack_24 = *(undefined4 *)(this + 0x14);
  local_20 = *(undefined4 *)(this + 0x34);
  uStack_1c = *(undefined4 *)(this + 0x38);
  ::operator-(abStack_18,(b2Vec2 *)&local_20);
  fVar1 = (float)b2Dot((b2Vec2 *)&local_28,abStack_18);
  fVar1 = -fVar1;
  if (0.0 < fVar1) {
    fVar2 = (float)b2Dot((b2Vec2 *)&local_20,abStack_18);
    if (0.0 < fVar2) {
      fVar3 = 1.0 / (fVar2 + fVar1);
      *(float *)(this + 0x18) = fVar2 * fVar3;
      *(float *)(this + 0x3c) = fVar1 * fVar3;
      *(undefined4 *)(this + 0x6c) = 2;
    }
    else {
      *(undefined4 *)(this + 0x3c) = 0x3f800000;
      *(undefined4 *)(this + 0x6c) = 1;
      *(undefined4 *)this = *(undefined4 *)(this + 0x24);
      *(undefined4 *)(this + 4) = *(undefined4 *)(this + 0x28);
      *(undefined4 *)(this + 8) = *(undefined4 *)(this + 0x2c);
      *(undefined4 *)(this + 0xc) = *(undefined4 *)(this + 0x30);
      *(undefined4 *)(this + 0x10) = *(undefined4 *)(this + 0x34);
      *(undefined4 *)(this + 0x14) = *(undefined4 *)(this + 0x38);
      *(undefined4 *)(this + 0x18) = *(undefined4 *)(this + 0x3c);
      *(undefined4 *)(this + 0x1c) = *(undefined4 *)(this + 0x40);
      *(undefined4 *)(this + 0x20) = *(undefined4 *)(this + 0x44);
    }
  }
  else {
    *(undefined4 *)(this + 0x18) = 0x3f800000;
    *(undefined4 *)(this + 0x6c) = 1;
  }
  return;
}

// ---- b2Simplex::Solve3  @ 0x6c5b30
/* b2Simplex::Solve3() */

void __thiscall b2Simplex::Solve3(b2Simplex *this)

{
  float fVar1;
  float fVar2;
  float fVar3;
  float fVar4;
  float fVar5;
  float fVar6;
  float fVar7;
  float fVar8;
  float fVar9;
  float fVar10;
  undefined4 local_40;
  undefined4 uStack_3c;
  undefined4 local_38;
  undefined4 uStack_34;
  undefined4 local_30;
  undefined4 uStack_2c;
  b2Vec2 abStack_28 [8];
  b2Vec2 abStack_20 [8];
  b2Vec2 abStack_18 [12];
  
  local_40 = *(undefined4 *)(this + 0x10);
  uStack_3c = *(undefined4 *)(this + 0x14);
  local_38 = *(undefined4 *)(this + 0x34);
  uStack_34 = *(undefined4 *)(this + 0x38);
  local_30 = *(undefined4 *)(this + 0x58);
  uStack_2c = *(undefined4 *)(this + 0x5c);
  ::operator-(abStack_28,(b2Vec2 *)&local_38);
  fVar1 = (float)b2Dot((b2Vec2 *)&local_40,abStack_28);
  fVar2 = (float)b2Dot((b2Vec2 *)&local_38,abStack_28);
  fVar1 = -fVar1;
  ::operator-(abStack_20,(b2Vec2 *)&local_30);
  fVar3 = (float)b2Dot((b2Vec2 *)&local_40,abStack_20);
  fVar4 = (float)b2Dot((b2Vec2 *)&local_30,abStack_20);
  fVar3 = -fVar3;
  ::operator-(abStack_18,(b2Vec2 *)&local_30);
  fVar5 = (float)b2Dot((b2Vec2 *)&local_38,abStack_18);
  fVar6 = (float)b2Dot((b2Vec2 *)&local_30,abStack_18);
  fVar5 = -fVar5;
  fVar7 = (float)b2Cross(abStack_28,abStack_20);
  fVar8 = (float)b2Cross((b2Vec2 *)&local_38,(b2Vec2 *)&local_30);
  fVar8 = fVar8 * fVar7;
  fVar9 = (float)b2Cross((b2Vec2 *)&local_30,(b2Vec2 *)&local_40);
  fVar9 = fVar9 * fVar7;
  fVar10 = (float)b2Cross((b2Vec2 *)&local_40,(b2Vec2 *)&local_38);
  fVar10 = fVar10 * fVar7;
  if ((0.0 < fVar1) || (0.0 < fVar3)) {
    if ((0.0 < fVar2) && ((0.0 < fVar1 && (fVar10 <= 0.0)))) {
      fVar3 = 1.0 / (fVar2 + fVar1);
      *(float *)(this + 0x18) = fVar2 * fVar3;
      *(float *)(this + 0x3c) = fVar1 * fVar3;
      *(undefined4 *)(this + 0x6c) = 2;
      return;
    }
    if (((0.0 < fVar4) && (0.0 < fVar3)) && (fVar9 <= 0.0)) {
      fVar1 = 1.0 / (fVar4 + fVar3);
      *(float *)(this + 0x18) = fVar4 * fVar1;
      *(float *)(this + 0x60) = fVar3 * fVar1;
      *(undefined4 *)(this + 0x6c) = 2;
      *(undefined4 *)(this + 0x24) = *(undefined4 *)(this + 0x48);
      *(undefined4 *)(this + 0x28) = *(undefined4 *)(this + 0x4c);
      *(undefined4 *)(this + 0x2c) = *(undefined4 *)(this + 0x50);
      *(undefined4 *)(this + 0x30) = *(undefined4 *)(this + 0x54);
      *(undefined4 *)(this + 0x34) = *(undefined4 *)(this + 0x58);
      *(undefined4 *)(this + 0x38) = *(undefined4 *)(this + 0x5c);
      *(undefined4 *)(this + 0x3c) = *(undefined4 *)(this + 0x60);
      *(undefined4 *)(this + 0x40) = *(undefined4 *)(this + 100);
      *(undefined4 *)(this + 0x44) = *(undefined4 *)(this + 0x68);
      return;
    }
    if ((0.0 < fVar2) || (0.0 < fVar5)) {
      if ((0.0 < fVar4) || (0.0 < fVar6)) {
        if (((0.0 < fVar6) && (0.0 < fVar5)) && (fVar8 <= 0.0)) {
          fVar1 = 1.0 / (fVar6 + fVar5);
          *(float *)(this + 0x3c) = fVar6 * fVar1;
          *(float *)(this + 0x60) = fVar5 * fVar1;
          *(undefined4 *)(this + 0x6c) = 2;
          *(undefined4 *)this = *(undefined4 *)(this + 0x48);
          *(undefined4 *)(this + 4) = *(undefined4 *)(this + 0x4c);
          *(undefined4 *)(this + 8) = *(undefined4 *)(this + 0x50);
          *(undefined4 *)(this + 0xc) = *(undefined4 *)(this + 0x54);
          *(undefined4 *)(this + 0x10) = *(undefined4 *)(this + 0x58);
          *(undefined4 *)(this + 0x14) = *(undefined4 *)(this + 0x5c);
          *(undefined4 *)(this + 0x18) = *(undefined4 *)(this + 0x60);
          *(undefined4 *)(this + 0x1c) = *(undefined4 *)(this + 100);
          *(undefined4 *)(this + 0x20) = *(undefined4 *)(this + 0x68);
          return;
        }
        fVar1 = 1.0 / (fVar8 + fVar9 + fVar10);
        *(float *)(this + 0x18) = fVar8 * fVar1;
        *(float *)(this + 0x3c) = fVar9 * fVar1;
        *(float *)(this + 0x60) = fVar10 * fVar1;
        *(undefined4 *)(this + 0x6c) = 3;
      }
      else {
        *(undefined4 *)(this + 0x60) = 0x3f800000;
        *(undefined4 *)(this + 0x6c) = 1;
        *(undefined4 *)this = *(undefined4 *)(this + 0x48);
        *(undefined4 *)(this + 4) = *(undefined4 *)(this + 0x4c);
        *(undefined4 *)(this + 8) = *(undefined4 *)(this + 0x50);
        *(undefined4 *)(this + 0xc) = *(undefined4 *)(this + 0x54);
        *(undefined4 *)(this + 0x10) = *(undefined4 *)(this + 0x58);
        *(undefined4 *)(this + 0x14) = *(undefined4 *)(this + 0x5c);
        *(undefined4 *)(this + 0x18) = *(undefined4 *)(this + 0x60);
        *(undefined4 *)(this + 0x1c) = *(undefined4 *)(this + 100);
        *(undefined4 *)(this + 0x20) = *(undefined4 *)(this + 0x68);
      }
    }
    else {
      *(undefined4 *)(this + 0x3c) = 0x3f800000;
      *(undefined4 *)(this + 0x6c) = 1;
      *(undefined4 *)this = *(undefined4 *)(this + 0x24);
      *(undefined4 *)(this + 4) = *(undefined4 *)(this + 0x28);
      *(undefined4 *)(this + 8) = *(undefined4 *)(this + 0x2c);
      *(undefined4 *)(this + 0xc) = *(undefined4 *)(this + 0x30);
      *(undefined4 *)(this + 0x10) = *(undefined4 *)(this + 0x34);
      *(undefined4 *)(this + 0x14) = *(undefined4 *)(this + 0x38);
      *(undefined4 *)(this + 0x18) = *(undefined4 *)(this + 0x3c);
      *(undefined4 *)(this + 0x1c) = *(undefined4 *)(this + 0x40);
      *(undefined4 *)(this + 0x20) = *(undefined4 *)(this + 0x44);
    }
  }
  else {
    *(undefined4 *)(this + 0x18) = 0x3f800000;
    *(undefined4 *)(this + 0x6c) = 1;
  }
  return;
}

// ---- b2Simplex::b2Simplex  @ 0x6c5f38
/* b2Simplex::b2Simplex() */

b2Simplex * __thiscall b2Simplex::b2Simplex(b2Simplex *this)

{
  b2SimplexVertex::b2SimplexVertex((b2SimplexVertex *)this);
  b2SimplexVertex::b2SimplexVertex((b2SimplexVertex *)(this + 0x24));
  b2SimplexVertex::b2SimplexVertex((b2SimplexVertex *)(this + 0x48));
  return this;
}
