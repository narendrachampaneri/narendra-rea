// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 2 functions

// ---- b2WorldManifold::Initialize  @ 0x6c48e0
/* b2WorldManifold::Initialize(b2Manifold const*, b2Transform const&, float, b2Transform const&,
   float) */

void b2WorldManifold::Initialize
               (b2Manifold *param_1,b2Transform *param_2,float param_3,b2Transform *param_4,
               float param_5)

{
  b2Manifold *pbVar1;
  float fVar2;
  int iVar3;
  float extraout_s0;
  float fVar4;
  b2Vec2 *in_stack_00000000;
  undefined4 local_58;
  undefined4 uStack_54;
  b2Vec2 *local_4c;
  b2Transform *local_48;
  b2Manifold *local_44;
  int local_40;
  int local_3c;
  b2Transform abStack_38 [8];
  b2Transform abStack_30 [8];
  b2Vec2 abStack_28 [8];
  b2Vec2 abStack_20 [8];
  b2Vec2 abStack_18 [12];
  
  if (*(int *)(param_2 + 0x3c) != 0) {
    iVar3 = *(int *)(param_2 + 0x38);
    local_4c = (b2Vec2 *)param_4;
    local_48 = param_2;
    local_44 = param_1;
    if (iVar3 == 1) {
      b2Mul((b2Rot *)&local_58,(b2Vec2 *)(param_4 + 8));
      *(undefined4 *)param_1 = local_58;
      *(undefined4 *)(param_1 + 4) = uStack_54;
      b2Mul(abStack_38,local_4c);
      for (local_40 = 0; local_40 < *(int *)(local_48 + 0x3c); local_40 = local_40 + 1) {
        b2Mul(abStack_30,in_stack_00000000);
        ::operator-(abStack_20,(b2Vec2 *)abStack_30);
        fVar4 = (float)b2Dot(abStack_20,(b2Vec2 *)local_44);
        ::operator*(fVar4,abStack_18);
        fVar4 = (float)::operator+(abStack_28,(b2Vec2 *)abStack_30);
        ::operator*(fVar4,abStack_18);
        ::operator-(abStack_20,(b2Vec2 *)abStack_30);
        fVar4 = (float)::operator+(abStack_18,abStack_28);
        pbVar1 = local_44;
        iVar3 = local_40 + 1;
        ::operator*(fVar4,(b2Vec2 *)&local_58);
        *(undefined4 *)(pbVar1 + iVar3 * 8) = local_58;
        *(undefined4 *)(pbVar1 + iVar3 * 8 + 4) = uStack_54;
      }
    }
    else if (iVar3 == 2) {
      b2Mul((b2Rot *)&local_58,in_stack_00000000 + 8);
      *(undefined4 *)param_1 = local_58;
      *(undefined4 *)(param_1 + 4) = uStack_54;
      b2Mul(abStack_38,in_stack_00000000);
      for (local_3c = 0; pbVar1 = local_44, local_3c < *(int *)(local_48 + 0x3c);
          local_3c = local_3c + 1) {
        b2Mul(abStack_30,local_4c);
        ::operator-(abStack_20,(b2Vec2 *)abStack_30);
        fVar4 = (float)b2Dot(abStack_20,(b2Vec2 *)local_44);
        ::operator*(fVar4,abStack_18);
        fVar4 = (float)::operator+(abStack_28,(b2Vec2 *)abStack_30);
        ::operator*(fVar4,abStack_18);
        ::operator-(abStack_20,(b2Vec2 *)abStack_30);
        fVar4 = (float)::operator+(abStack_18,abStack_20);
        pbVar1 = local_44;
        iVar3 = local_3c + 1;
        ::operator*(fVar4,(b2Vec2 *)&local_58);
        *(undefined4 *)(pbVar1 + iVar3 * 8) = local_58;
        *(undefined4 *)(pbVar1 + iVar3 * 8 + 4) = uStack_54;
      }
      b2Vec2::operator-((b2Vec2 *)&local_58);
      *(undefined4 *)pbVar1 = local_58;
      *(undefined4 *)(pbVar1 + 4) = uStack_54;
    }
    else if (iVar3 == 0) {
      b2Vec2::Set((b2Vec2 *)param_1,param_3,param_5);
      b2Mul(abStack_38,local_4c);
      b2Mul(abStack_30,in_stack_00000000);
      fVar2 = (float)b2DistanceSquared((b2Vec2 *)abStack_38,(b2Vec2 *)abStack_30);
      pbVar1 = local_44;
      fVar4 = extraout_s0;
      if (1.4210855e-14 < fVar2) {
        ::operator-((b2Vec2 *)&local_58,(b2Vec2 *)abStack_30);
        *(undefined4 *)pbVar1 = local_58;
        *(undefined4 *)(pbVar1 + 4) = uStack_54;
        fVar4 = (float)b2Vec2::Normalize((b2Vec2 *)local_44);
      }
      ::operator*(fVar4,abStack_18);
      fVar4 = (float)::operator+(abStack_28,(b2Vec2 *)abStack_38);
      ::operator*(fVar4,abStack_18);
      ::operator-(abStack_20,(b2Vec2 *)abStack_30);
      fVar4 = (float)::operator+(abStack_18,abStack_28);
      pbVar1 = local_44;
      ::operator*(fVar4,(b2Vec2 *)&local_58);
      *(undefined4 *)(pbVar1 + 8) = local_58;
      *(undefined4 *)(pbVar1 + 0xc) = uStack_54;
    }
  }
  return;
}

// ---- b2WorldManifold::b2WorldManifold  @ 0x6ca780
/* b2WorldManifold::b2WorldManifold() */

b2WorldManifold * __thiscall b2WorldManifold::b2WorldManifold(b2WorldManifold *this)

{
  int iVar1;
  b2WorldManifold *this_00;
  
  b2Vec2::b2Vec2((b2Vec2 *)this);
  this_00 = this;
  for (iVar1 = 1; this_00 = this_00 + 8, iVar1 != -1; iVar1 = iVar1 + -1) {
    b2Vec2::b2Vec2((b2Vec2 *)this_00);
  }
  return this;
}
