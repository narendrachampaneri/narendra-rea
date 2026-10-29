// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 8 functions

// ---- b2Rope::b2Rope  @ 0x6deebc
/* b2Rope::b2Rope() */

b2Rope * __thiscall b2Rope::b2Rope(b2Rope *this)

{
  b2Vec2::b2Vec2((b2Vec2 *)(this + 0x1c));
  *(undefined4 *)this = 0;
  *(undefined4 *)(this + 4) = 0;
  *(undefined4 *)(this + 8) = 0;
  *(undefined4 *)(this + 0xc) = 0;
  *(undefined4 *)(this + 0x10) = 0;
  *(undefined4 *)(this + 0x14) = 0;
  *(undefined4 *)(this + 0x18) = 0;
  b2Vec2::SetZero((b2Vec2 *)(this + 0x1c));
  *(undefined4 *)(this + 0x28) = 0x3f800000;
  *(undefined4 *)(this + 0x2c) = 0x3dcccccd;
  return this;
}

// ---- b2Rope::~b2Rope  @ 0x6def20
/* b2Rope::~b2Rope() */

b2Rope * __thiscall b2Rope::~b2Rope(b2Rope *this)

{
  b2Free(*(void **)(this + 4));
  b2Free(*(void **)(this + 8));
  b2Free(*(void **)(this + 0xc));
  b2Free(*(void **)(this + 0x10));
  b2Free(*(void **)(this + 0x14));
  b2Free(*(void **)(this + 0x18));
  return this;
}

// ---- b2Rope::Initialize  @ 0x6def6c
/* b2Rope::Initialize(b2RopeDef const*) */

void __thiscall b2Rope::Initialize(b2Rope *this,b2RopeDef *param_1)

{
  undefined4 uVar1;
  int iVar2;
  undefined4 *puVar3;
  undefined4 *puVar4;
  float fVar5;
  int iVar6;
  int iVar7;
  undefined8 uVar8;
  int local_50;
  int local_4c;
  int local_48;
  undefined4 local_28;
  undefined4 uStack_24;
  undefined4 local_20;
  undefined4 uStack_1c;
  undefined4 local_18;
  undefined4 uStack_14;
  undefined4 local_10;
  undefined4 uStack_c;
  
  *(undefined4 *)this = *(undefined4 *)(param_1 + 4);
  uVar1 = b2Alloc(*(int *)this << 3);
  *(undefined4 *)(this + 4) = uVar1;
  uVar1 = b2Alloc(*(int *)this << 3);
  *(undefined4 *)(this + 8) = uVar1;
  uVar1 = b2Alloc(*(int *)this << 3);
  *(undefined4 *)(this + 0xc) = uVar1;
  uVar1 = b2Alloc(*(int *)this << 2);
  *(undefined4 *)(this + 0x10) = uVar1;
  for (local_50 = 0; local_50 < *(int *)this; local_50 = local_50 + 1) {
    puVar4 = (undefined4 *)(local_50 * 8 + *(int *)(this + 4));
    puVar3 = (undefined4 *)(local_50 * 8 + *(int *)param_1);
    uVar1 = puVar3[1];
    *puVar4 = *puVar3;
    puVar4[1] = uVar1;
    puVar4 = (undefined4 *)(local_50 * 8 + *(int *)(this + 8));
    puVar3 = (undefined4 *)(local_50 * 8 + *(int *)param_1);
    uVar1 = puVar3[1];
    *puVar4 = *puVar3;
    puVar4[1] = uVar1;
    b2Vec2::SetZero((b2Vec2 *)(local_50 * 8 + *(int *)(this + 0xc)));
    fVar5 = *(float *)(local_50 * 4 + *(int *)(param_1 + 8));
    if (fVar5 <= 0.0) {
      *(undefined4 *)(local_50 * 4 + *(int *)(this + 0x10)) = 0;
    }
    else {
      *(float *)(local_50 * 4 + *(int *)(this + 0x10)) = 1.0 / fVar5;
    }
  }
  iVar6 = *(int *)this;
  iVar7 = *(int *)this;
  uVar1 = b2Alloc((iVar6 + -1) * 4);
  *(undefined4 *)(this + 0x14) = uVar1;
  uVar1 = b2Alloc((iVar7 + -2) * 4);
  *(undefined4 *)(this + 0x18) = uVar1;
  for (local_4c = 0; local_4c < iVar6 + -1; local_4c = local_4c + 1) {
    puVar3 = (undefined4 *)(*(int *)(this + 4) + local_4c * 8);
    local_18 = *puVar3;
    uStack_14 = puVar3[1];
    puVar3 = (undefined4 *)(*(int *)(this + 4) + (local_4c + 1) * 8);
    local_10 = *puVar3;
    uStack_c = puVar3[1];
    iVar2 = *(int *)(this + 0x14);
    uVar1 = b2Distance((b2Vec2 *)&local_18,(b2Vec2 *)&local_10);
    *(undefined4 *)(iVar2 + local_4c * 4) = uVar1;
  }
  for (local_48 = 0; local_48 < iVar7 + -2; local_48 = local_48 + 1) {
    puVar3 = (undefined4 *)(*(int *)(this + 4) + (local_48 + 1) * 8);
    local_28 = *puVar3;
    uStack_24 = puVar3[1];
    puVar3 = (undefined4 *)(*(int *)(this + 4) + (local_48 + 2) * 8);
    local_20 = *puVar3;
    uStack_1c = puVar3[1];
    ::operator-((b2Vec2 *)&local_18,(b2Vec2 *)&local_28);
    ::operator-((b2Vec2 *)&local_10,(b2Vec2 *)&local_20);
    b2Cross((b2Vec2 *)&local_18,(b2Vec2 *)&local_10);
    uVar8 = b2Dot((b2Vec2 *)&local_18,(b2Vec2 *)&local_10);
    iVar6 = *(int *)(this + 0x18);
    uVar1 = std::atan2((float)uVar8,(float)((ulonglong)uVar8 >> 0x20));
    *(undefined4 *)(iVar6 + local_48 * 4) = uVar1;
  }
  uVar1 = *(undefined4 *)(param_1 + 0x10);
  *(undefined4 *)(this + 0x1c) = *(undefined4 *)(param_1 + 0xc);
  *(undefined4 *)(this + 0x20) = uVar1;
  *(undefined4 *)(this + 0x24) = *(undefined4 *)(param_1 + 0x14);
  *(undefined4 *)(this + 0x28) = *(undefined4 *)(param_1 + 0x18);
  *(undefined4 *)(this + 0x2c) = *(undefined4 *)(param_1 + 0x1c);
  return;
}

// ---- b2Rope::Step  @ 0x6df1c8
/* b2Rope::Step(float, int) */

void b2Rope::Step(float param_1,int param_2)

{
  float in_r1;
  undefined4 uVar1;
  int in_r2;
  int iVar2;
  undefined4 *puVar3;
  int iVar4;
  undefined4 *puVar5;
  float fVar6;
  undefined4 local_40;
  undefined4 uStack_3c;
  int local_34;
  float local_30;
  b2Rope *local_2c;
  int local_24;
  int local_20;
  int local_1c;
  float local_14;
  b2Vec2 abStack_10 [8];
  
  if (in_r1 != 0.0) {
    local_34 = in_r2;
    local_30 = in_r1;
    local_2c = (b2Rope *)param_2;
    fVar6 = expf(param_1);
    for (local_24 = 0; local_24 < *(int *)local_2c; local_24 = local_24 + 1) {
      puVar3 = (undefined4 *)(local_24 * 8 + *(int *)(local_2c + 8));
      puVar5 = (undefined4 *)(local_24 * 8 + *(int *)(local_2c + 4));
      uVar1 = puVar5[1];
      *puVar3 = *puVar5;
      puVar3[1] = uVar1;
      if (0.0 < *(float *)(local_24 * 4 + *(int *)(local_2c + 0x10))) {
        iVar2 = *(int *)(local_2c + 0xc);
        iVar4 = local_24 * 8;
        ::operator*(fVar6,abStack_10);
        fVar6 = (float)b2Vec2::operator+=((b2Vec2 *)(iVar2 + iVar4),abStack_10);
      }
      fVar6 = (float)b2Vec2::operator*=((b2Vec2 *)(local_24 * 8 + *(int *)(local_2c + 0xc)),fVar6);
      iVar2 = *(int *)(local_2c + 4);
      iVar4 = local_24 * 8;
      ::operator*(fVar6,abStack_10);
      fVar6 = (float)b2Vec2::operator+=((b2Vec2 *)(iVar2 + iVar4),abStack_10);
    }
    for (local_20 = 0; local_20 < local_34; local_20 = local_20 + 1) {
      SolveC2(local_2c);
      SolveC3(local_2c);
      SolveC2(local_2c);
    }
    local_14 = 1.0 / local_30;
    for (local_1c = 0; local_1c < *(int *)local_2c; local_1c = local_1c + 1) {
      puVar5 = (undefined4 *)(*(int *)(local_2c + 0xc) + local_1c * 8);
      fVar6 = (float)::operator-(abStack_10,(b2Vec2 *)(*(int *)(local_2c + 4) + local_1c * 8));
      ::operator*(fVar6,(b2Vec2 *)&local_40);
      *puVar5 = local_40;
      puVar5[1] = uStack_3c;
    }
  }
  return;
}

// ---- b2Rope::SolveC2  @ 0x6df340
/* b2Rope::SolveC2() */

void __thiscall b2Rope::SolveC2(b2Rope *this)

{
  undefined4 *puVar1;
  int iVar2;
  float fVar3;
  int local_44;
  undefined4 local_28;
  undefined4 uStack_24;
  undefined4 local_20;
  undefined4 uStack_1c;
  b2Vec2 abStack_18 [8];
  b2Vec2 abStack_10 [12];
  
  iVar2 = *(int *)this;
  for (local_44 = 0; local_44 < iVar2 + -1; local_44 = local_44 + 1) {
    puVar1 = (undefined4 *)(*(int *)(this + 4) + local_44 * 8);
    local_28 = *puVar1;
    uStack_24 = puVar1[1];
    puVar1 = (undefined4 *)(*(int *)(this + 4) + (local_44 + 1) * 8);
    local_20 = *puVar1;
    uStack_1c = puVar1[1];
    ::operator-(abStack_18,(b2Vec2 *)&local_20);
    fVar3 = (float)b2Vec2::Normalize(abStack_18);
    if (*(float *)(local_44 * 4 + *(int *)(this + 0x10)) +
        *(float *)((local_44 + 1) * 4 + *(int *)(this + 0x10)) != 0.0) {
      ::operator*(fVar3,abStack_10);
      fVar3 = (float)b2Vec2::operator-=((b2Vec2 *)&local_28,abStack_10);
      ::operator*(fVar3,abStack_10);
      b2Vec2::operator+=((b2Vec2 *)&local_20,abStack_10);
      puVar1 = (undefined4 *)(local_44 * 8 + *(int *)(this + 4));
      *puVar1 = local_28;
      puVar1[1] = uStack_24;
      puVar1 = (undefined4 *)((local_44 + 1) * 8 + *(int *)(this + 4));
      *puVar1 = local_20;
      puVar1[1] = uStack_1c;
    }
  }
  return;
}

// ---- b2Rope::SetAngle  @ 0x6df4c8
/* b2Rope::SetAngle(float) */

void __thiscall b2Rope::SetAngle(b2Rope *this,float param_1)

{
  undefined4 in_r1;
  int iVar1;
  int local_8;
  
  iVar1 = *(int *)this;
  for (local_8 = 0; local_8 < iVar1 + -2; local_8 = local_8 + 1) {
    *(undefined4 *)(local_8 * 4 + *(int *)(this + 0x18)) = in_r1;
  }
  return;
}

// ---- b2Rope::SolveC3  @ 0x6df4fc
/* b2Rope::SolveC3() */

void __thiscall b2Rope::SolveC3(b2Rope *this)

{
  float fVar1;
  float fVar2;
  float fVar3;
  undefined4 *puVar4;
  int iVar5;
  float fVar6;
  float fVar7;
  float fVar8;
  float extraout_s0;
  undefined8 uVar9;
  int local_9c;
  float local_98;
  float local_94;
  undefined4 local_68;
  undefined4 uStack_64;
  undefined4 local_60;
  undefined4 uStack_5c;
  undefined4 local_58;
  undefined4 uStack_54;
  b2Vec2 abStack_50 [8];
  b2Vec2 abStack_48 [8];
  b2Vec2 abStack_40 [8];
  undefined4 local_38;
  undefined4 uStack_34;
  b2Vec2 abStack_30 [8];
  b2Vec2 abStack_28 [8];
  undefined4 local_20;
  undefined4 uStack_1c;
  b2Vec2 abStack_18 [12];
  
  iVar5 = *(int *)this;
  for (local_9c = 0; local_9c < iVar5 + -2; local_9c = local_9c + 1) {
    puVar4 = (undefined4 *)(*(int *)(this + 4) + local_9c * 8);
    local_68 = *puVar4;
    uStack_64 = puVar4[1];
    puVar4 = (undefined4 *)(*(int *)(this + 4) + (local_9c + 1) * 8);
    local_60 = *puVar4;
    uStack_5c = puVar4[1];
    puVar4 = (undefined4 *)(*(int *)(this + 4) + (local_9c + 2) * 8);
    local_58 = *puVar4;
    uStack_54 = puVar4[1];
    fVar6 = *(float *)(local_9c * 4 + *(int *)(this + 0x10));
    fVar7 = *(float *)((local_9c + 1) * 4 + *(int *)(this + 0x10));
    fVar8 = *(float *)((local_9c + 2) * 4 + *(int *)(this + 0x10));
    ::operator-(abStack_50,(b2Vec2 *)&local_60);
    ::operator-(abStack_48,(b2Vec2 *)&local_58);
    fVar1 = (float)b2Vec2::LengthSquared(abStack_50);
    fVar2 = (float)b2Vec2::LengthSquared(abStack_48);
    if (fVar1 * fVar2 != 0.0) {
      b2Cross(abStack_50,abStack_48);
      uVar9 = b2Dot(abStack_50,abStack_48);
      local_98 = (float)std::atan2((float)uVar9,(float)((ulonglong)uVar9 >> 0x20));
      fVar1 = (float)b2Vec2::Skew();
      ::operator*(fVar1,abStack_40);
      fVar1 = (float)b2Vec2::Skew();
      ::operator*(fVar1,(b2Vec2 *)&local_38);
      b2Vec2::operator-(abStack_30);
      ::operator-(abStack_28,abStack_40);
      local_20 = local_38;
      uStack_1c = uStack_34;
      fVar1 = (float)b2Dot(abStack_30,abStack_30);
      fVar2 = (float)b2Dot(abStack_28,abStack_28);
      fVar3 = (float)b2Dot((b2Vec2 *)&local_20,(b2Vec2 *)&local_20);
      if (fVar1 * fVar6 + fVar2 * fVar7 + fVar3 * fVar8 != 0.0) {
        local_94 = local_98 - *(float *)(local_9c * 4 + *(int *)(this + 0x18));
        while (3.1415927 < local_94) {
          local_98 = local_98 - 6.2831855;
          local_94 = local_98 - *(float *)(local_9c * 4 + *(int *)(this + 0x18));
        }
        while ((int)((uint)(local_94 < -3.1415927) << 0x1f) < 0) {
          local_98 = local_98 + 6.2831855;
          local_94 = local_98 - *(float *)(local_9c * 4 + *(int *)(this + 0x18));
        }
        ::operator*(extraout_s0,abStack_18);
        fVar1 = (float)b2Vec2::operator+=((b2Vec2 *)&local_68,abStack_18);
        ::operator*(fVar1,abStack_18);
        fVar1 = (float)b2Vec2::operator+=((b2Vec2 *)&local_60,abStack_18);
        ::operator*(fVar1,abStack_18);
        b2Vec2::operator+=((b2Vec2 *)&local_58,abStack_18);
        puVar4 = (undefined4 *)(local_9c * 8 + *(int *)(this + 4));
        *puVar4 = local_68;
        puVar4[1] = uStack_64;
        puVar4 = (undefined4 *)((local_9c + 1) * 8 + *(int *)(this + 4));
        *puVar4 = local_60;
        puVar4[1] = uStack_5c;
        puVar4 = (undefined4 *)((local_9c + 2) * 8 + *(int *)(this + 4));
        *puVar4 = local_58;
        puVar4[1] = uStack_54;
      }
    }
  }
  return;
}

// ---- b2Rope::Draw  @ 0x6df87c
/* b2Rope::Draw(b2Draw*) const */

void b2Rope::Draw(b2Draw *param_1)

{
  int *in_r1;
  float in_s0;
  float in_s1;
  float in_s2;
  int local_18;
  b2Color abStack_14 [12];
  
  b2Color::b2Color(abStack_14,in_s0,in_s1,in_s2);
  for (local_18 = 0; local_18 < *(int *)param_1 + -1; local_18 = local_18 + 1) {
    (**(code **)(*in_r1 + 0x18))
              (in_r1,*(int *)(param_1 + 4) + local_18 * 8,*(int *)(param_1 + 4) + (local_18 + 1) * 8
               ,abStack_14);
  }
  return;
}
