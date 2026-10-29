// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 7 functions

// ---- b2AABB::RayCast  @ 0x6c4d34
/* b2AABB::RayCast(b2RayCastOutput*, b2RayCastInput const&) const */

undefined4 __thiscall b2AABB::RayCast(b2AABB *this,b2RayCastOutput *param_1,b2RayCastInput *param_2)

{
  int iVar1;
  bool bVar2;
  float *pfVar3;
  float fVar4;
  undefined4 *puVar5;
  float extraout_r0;
  char cVar6;
  undefined4 uVar7;
  float extraout_s0;
  float extraout_s0_00;
  float extraout_s0_01;
  float extraout_s1;
  float extraout_s1_00;
  float extraout_s1_01;
  float fVar8;
  float local_4c;
  float local_48;
  float local_44;
  float local_40;
  int local_3c;
  undefined4 local_38;
  float local_34;
  undefined4 local_30;
  undefined4 uStack_2c;
  b2Vec2 abStack_28 [8];
  b2Vec2 abStack_20 [8];
  undefined4 local_18;
  undefined4 uStack_14;
  
  local_44 = -3.4028235e+38;
  local_40 = 3.4028235e+38;
  local_30 = *(undefined4 *)param_2;
  uStack_2c = *(undefined4 *)(param_2 + 4);
  ::operator-(abStack_28,(b2Vec2 *)(param_2 + 8));
  b2Abs(abStack_20);
  b2Vec2::b2Vec2((b2Vec2 *)&local_18);
  local_3c = 0;
  do {
    if (1 < local_3c) {
      if (((int)((uint)(local_44 < 0.0) << 0x1f) < 0) ||
         ((int)((uint)(*(float *)(param_2 + 0x10) < local_44) << 0x1f) < 0)) {
        uVar7 = 0;
      }
      else {
        *(float *)(param_1 + 8) = local_44;
        *(undefined4 *)param_1 = local_18;
        *(undefined4 *)(param_1 + 4) = uStack_14;
        uVar7 = 1;
      }
      return uVar7;
    }
    pfVar3 = (float *)b2Vec2::operator()(abStack_20,local_3c);
    iVar1 = (uint)(*pfVar3 < 1.1920929e-07) << 0x1f;
    if (-1 < iVar1) {
      pfVar3 = (float *)0x0;
    }
    cVar6 = (char)pfVar3;
    if (iVar1 < 0) {
      cVar6 = '\x01';
    }
    if (cVar6 == '\0') {
      pfVar3 = (float *)b2Vec2::operator()(abStack_28,local_3c);
      local_34 = 1.0 / *pfVar3;
      fVar4 = (float)b2Vec2::operator()((b2Vec2 *)this,local_3c);
      pfVar3 = (float *)b2Vec2::operator()((b2Vec2 *)&local_30,local_3c);
      local_4c = (fVar4 - *pfVar3) * local_34;
      fVar4 = (float)b2Vec2::operator()((b2Vec2 *)(this + 8),local_3c);
      pfVar3 = (float *)b2Vec2::operator()((b2Vec2 *)&local_30,local_3c);
      local_48 = (fVar4 - *pfVar3) * local_34;
      local_38 = 0xbf800000;
      fVar4 = extraout_s0;
      fVar8 = extraout_s1;
      if (local_48 < local_4c) {
        b2Swap<float>(&local_4c,&local_48);
        local_38 = 0x3f800000;
        fVar4 = extraout_s0_00;
        fVar8 = extraout_s1_00;
      }
      if (local_44 < local_4c) {
        b2Vec2::SetZero((b2Vec2 *)&local_18);
        puVar5 = (undefined4 *)b2Vec2::operator()((b2Vec2 *)&local_18,local_3c);
        *puVar5 = local_38;
        local_44 = local_4c;
        fVar4 = extraout_s0_01;
        fVar8 = extraout_s1_01;
      }
      b2Min<float>(fVar4,fVar8);
      local_40 = extraout_r0;
      if (extraout_r0 < local_44) {
        return 0;
      }
    }
    else {
      pfVar3 = (float *)b2Vec2::operator()((b2Vec2 *)&local_30,local_3c);
      fVar8 = *pfVar3;
      fVar4 = (float)b2Vec2::operator()((b2Vec2 *)this,local_3c);
      if ((int)((uint)(fVar8 < fVar4) << 0x1f) < 0) {
LAB_006c4e06:
        bVar2 = true;
      }
      else {
        fVar4 = (float)b2Vec2::operator()((b2Vec2 *)(this + 8),local_3c);
        pfVar3 = (float *)b2Vec2::operator()((b2Vec2 *)&local_30,local_3c);
        if ((int)((uint)(fVar4 < *pfVar3) << 0x1f) < 0) goto LAB_006c4e06;
        bVar2 = false;
      }
      if (bVar2) {
        return 0;
      }
    }
    local_3c = local_3c + 1;
  } while( true );
}

// ---- b2AABB::GetPerimeter  @ 0x6c63dc
/* b2AABB::GetPerimeter() const */

float __thiscall b2AABB::GetPerimeter(b2AABB *this)

{
  float fVar1;
  
  fVar1 = (*(float *)(this + 8) - *(float *)this) + (*(float *)(this + 0xc) - *(float *)(this + 4));
  return fVar1 + fVar1;
}

// ---- b2AABB::Combine  @ 0x6c6424
/* b2AABB::Combine(b2AABB const&, b2AABB const&) */

void __thiscall b2AABB::Combine(b2AABB *this,b2AABB *param_1,b2AABB *param_2)

{
  b2AABB *pbVar1;
  undefined4 local_20;
  undefined4 uStack_1c;
  b2AABB *local_14;
  b2AABB *local_10;
  b2AABB *local_c;
  
  local_14 = param_2;
  local_10 = param_1;
  local_c = this;
  b2Min((b2Vec2 *)&local_20,(b2Vec2 *)param_1);
  pbVar1 = local_c;
  *(undefined4 *)this = local_20;
  *(undefined4 *)(this + 4) = uStack_1c;
  b2Max((b2Vec2 *)&local_20,(b2Vec2 *)(local_10 + 8));
  *(undefined4 *)(pbVar1 + 8) = local_20;
  *(undefined4 *)(pbVar1 + 0xc) = uStack_1c;
  return;
}

// ---- b2AABB::Contains  @ 0x6c6478
/* b2AABB::Contains(b2AABB const&) const */

undefined1 __thiscall b2AABB::Contains(b2AABB *this,b2AABB *param_1)

{
  bool bVar1;
  undefined1 uVar2;
  
  if ((*(float *)param_1 < *(float *)this) || (*(float *)(param_1 + 4) < *(float *)(this + 4))) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if ((!bVar1) || (*(float *)(this + 8) < *(float *)(param_1 + 8))) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if ((!bVar1) || (*(float *)(this + 0xc) < *(float *)(param_1 + 0xc))) {
    uVar2 = 0;
  }
  else {
    uVar2 = 1;
  }
  return uVar2;
}

// ---- b2AABB::b2AABB  @ 0x6c6a24
/* b2AABB::b2AABB() */

b2AABB * __thiscall b2AABB::b2AABB(b2AABB *this)

{
  b2Vec2::b2Vec2((b2Vec2 *)this);
  b2Vec2::b2Vec2((b2Vec2 *)(this + 8));
  return this;
}

// ---- b2AABB::GetCenter  @ 0x6dc2ec
/* b2AABB::GetCenter() const */

b2Vec2 * b2AABB::GetCenter(void)

{
  b2Vec2 *in_r0;
  b2Vec2 *in_r1;
  float fVar1;
  b2Vec2 abStack_10 [12];
  
  fVar1 = (float)::operator+(abStack_10,in_r1);
  ::operator*(fVar1,in_r0);
  return in_r0;
}

// ---- b2AABB::GetExtents  @ 0x6dc320
/* b2AABB::GetExtents() const */

b2Vec2 * b2AABB::GetExtents(void)

{
  b2Vec2 *in_r0;
  int in_r1;
  float fVar1;
  b2Vec2 abStack_10 [12];
  
  fVar1 = (float)::operator-(abStack_10,(b2Vec2 *)(in_r1 + 8));
  ::operator*(fVar1,in_r0);
  return in_r0;
}
