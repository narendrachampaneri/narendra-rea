// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 4 functions

// ---- b2SeparationFunction::Initialize  @ 0x6c7bd0
/* b2SeparationFunction::Initialize(b2SimplexCache const*, b2DistanceProxy const*, b2Sweep const&,
   b2DistanceProxy const*, b2Sweep const&, float) */

float b2SeparationFunction::Initialize
                (b2SimplexCache *param_1,b2DistanceProxy *param_2,b2Sweep *param_3,
                b2DistanceProxy *param_4,b2Sweep *param_5,float param_6)

{
  b2SimplexCache *pbVar1;
  undefined4 *puVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  float fVar6;
  undefined4 *in_stack_00000004;
  undefined4 local_90;
  undefined4 uStack_8c;
  b2DistanceProxy *local_88;
  b2Sweep *local_84;
  b2DistanceProxy *local_80;
  b2SimplexCache *local_7c;
  float local_78;
  float local_74;
  uint local_70;
  undefined4 local_68;
  undefined4 uStack_64;
  undefined4 local_60;
  undefined4 uStack_5c;
  b2Rot abStack_58 [8];
  undefined4 local_50;
  undefined4 uStack_4c;
  undefined4 local_48;
  undefined4 uStack_44;
  b2Transform abStack_40 [8];
  b2Transform abStack_38 [8];
  b2Transform abStack_30 [8];
  b2Vec2 abStack_28 [8];
  b2Transform abStack_20 [8];
  b2Vec2 abStack_18 [12];
  
  *(b2Sweep **)param_1 = param_3;
  *(b2Sweep **)(param_1 + 4) = param_5;
  local_70 = (uint)*(ushort *)(param_2 + 4);
  uVar3 = *(undefined4 *)(param_4 + 4);
  uVar4 = *(undefined4 *)(param_4 + 8);
  uVar5 = *(undefined4 *)(param_4 + 0xc);
  *(undefined4 *)(param_1 + 8) = *(undefined4 *)param_4;
  *(undefined4 *)(param_1 + 0xc) = uVar3;
  *(undefined4 *)(param_1 + 0x10) = uVar4;
  *(undefined4 *)(param_1 + 0x14) = uVar5;
  uVar3 = *(undefined4 *)(param_4 + 0x14);
  uVar4 = *(undefined4 *)(param_4 + 0x18);
  uVar5 = *(undefined4 *)(param_4 + 0x1c);
  *(undefined4 *)(param_1 + 0x18) = *(undefined4 *)(param_4 + 0x10);
  *(undefined4 *)(param_1 + 0x1c) = uVar3;
  *(undefined4 *)(param_1 + 0x20) = uVar4;
  *(undefined4 *)(param_1 + 0x24) = uVar5;
  *(undefined4 *)(param_1 + 0x28) = *(undefined4 *)(param_4 + 0x20);
  uVar3 = in_stack_00000004[1];
  uVar4 = in_stack_00000004[2];
  uVar5 = in_stack_00000004[3];
  *(undefined4 *)(param_1 + 0x2c) = *in_stack_00000004;
  *(undefined4 *)(param_1 + 0x30) = uVar3;
  *(undefined4 *)(param_1 + 0x34) = uVar4;
  *(undefined4 *)(param_1 + 0x38) = uVar5;
  uVar3 = in_stack_00000004[5];
  uVar4 = in_stack_00000004[6];
  uVar5 = in_stack_00000004[7];
  *(undefined4 *)(param_1 + 0x3c) = in_stack_00000004[4];
  *(undefined4 *)(param_1 + 0x40) = uVar3;
  *(undefined4 *)(param_1 + 0x44) = uVar4;
  *(undefined4 *)(param_1 + 0x48) = uVar5;
  *(undefined4 *)(param_1 + 0x4c) = in_stack_00000004[8];
  local_88 = param_4;
  local_84 = param_3;
  local_80 = param_2;
  local_7c = param_1;
  b2Transform::b2Transform(abStack_30);
  fVar6 = (float)b2Transform::b2Transform(abStack_20);
  fVar6 = (float)b2Sweep::GetTransform((b2Transform *)(local_7c + 8),fVar6);
  b2Sweep::GetTransform((b2Transform *)(local_7c + 0x2c),fVar6);
  if (local_70 == 1) {
    *(undefined4 *)(local_7c + 0x50) = 0;
    puVar2 = (undefined4 *)
             b2DistanceProxy::GetVertex(*(b2DistanceProxy **)local_7c,(uint)(byte)local_80[6]);
    local_50 = *puVar2;
    uStack_4c = puVar2[1];
    puVar2 = (undefined4 *)
             b2DistanceProxy::GetVertex(*(b2DistanceProxy **)(local_7c + 4),(uint)(byte)local_80[9])
    ;
    local_48 = *puVar2;
    uStack_44 = puVar2[1];
    b2Mul(abStack_40,(b2Vec2 *)abStack_30);
    b2Mul(abStack_38,(b2Vec2 *)abStack_20);
    pbVar1 = local_7c;
    ::operator-((b2Vec2 *)&local_90,(b2Vec2 *)abStack_38);
    *(undefined4 *)(pbVar1 + 0x5c) = local_90;
    *(undefined4 *)(pbVar1 + 0x60) = uStack_8c;
    local_78 = (float)b2Vec2::Normalize((b2Vec2 *)(local_7c + 0x5c));
  }
  else if (local_80[6] == local_80[7]) {
    *(undefined4 *)(local_7c + 0x50) = 2;
    puVar2 = (undefined4 *)
             b2DistanceProxy::GetVertex((b2DistanceProxy *)param_5,(uint)(byte)local_80[9]);
    local_68 = *puVar2;
    uStack_64 = puVar2[1];
    puVar2 = (undefined4 *)
             b2DistanceProxy::GetVertex((b2DistanceProxy *)param_5,(uint)(byte)local_80[10]);
    local_60 = *puVar2;
    uStack_5c = puVar2[1];
    fVar6 = (float)::operator-((b2Vec2 *)abStack_38,(b2Vec2 *)&local_60);
    pbVar1 = local_7c;
    b2Cross((b2Vec2 *)&local_90,fVar6);
    *(undefined4 *)(pbVar1 + 0x5c) = local_90;
    *(undefined4 *)(pbVar1 + 0x60) = uStack_8c;
    b2Vec2::Normalize((b2Vec2 *)(local_7c + 0x5c));
    b2Mul(abStack_58,abStack_18);
    fVar6 = (float)::operator+((b2Vec2 *)abStack_38,(b2Vec2 *)&local_68);
    pbVar1 = local_7c;
    ::operator*(fVar6,(b2Vec2 *)&local_90);
    *(undefined4 *)(pbVar1 + 0x54) = local_90;
    *(undefined4 *)(pbVar1 + 0x58) = uStack_8c;
    b2Mul((b2Transform *)&local_50,(b2Vec2 *)abStack_20);
    puVar2 = (undefined4 *)
             b2DistanceProxy::GetVertex((b2DistanceProxy *)local_84,(uint)(byte)local_80[6]);
    local_48 = *puVar2;
    uStack_44 = puVar2[1];
    b2Mul(abStack_40,(b2Vec2 *)abStack_30);
    ::operator-((b2Vec2 *)abStack_38,(b2Vec2 *)abStack_40);
    local_78 = (float)b2Dot((b2Vec2 *)abStack_38,(b2Vec2 *)abStack_58);
    pbVar1 = local_7c;
    if ((int)((uint)(local_78 < 0.0) << 0x1f) < 0) {
      b2Vec2::operator-((b2Vec2 *)&local_90);
      *(undefined4 *)(pbVar1 + 0x5c) = local_90;
      *(undefined4 *)(pbVar1 + 0x60) = uStack_8c;
      local_78 = -local_78;
    }
  }
  else {
    *(undefined4 *)(local_7c + 0x50) = 1;
    puVar2 = (undefined4 *)
             b2DistanceProxy::GetVertex(*(b2DistanceProxy **)local_7c,(uint)(byte)local_80[6]);
    local_68 = *puVar2;
    uStack_64 = puVar2[1];
    puVar2 = (undefined4 *)
             b2DistanceProxy::GetVertex(*(b2DistanceProxy **)local_7c,(uint)(byte)local_80[7]);
    local_60 = *puVar2;
    uStack_5c = puVar2[1];
    fVar6 = (float)::operator-((b2Vec2 *)abStack_38,(b2Vec2 *)&local_60);
    pbVar1 = local_7c;
    b2Cross((b2Vec2 *)&local_90,fVar6);
    *(undefined4 *)(pbVar1 + 0x5c) = local_90;
    *(undefined4 *)(pbVar1 + 0x60) = uStack_8c;
    b2Vec2::Normalize((b2Vec2 *)(local_7c + 0x5c));
    b2Mul(abStack_58,abStack_28);
    fVar6 = (float)::operator+((b2Vec2 *)abStack_38,(b2Vec2 *)&local_68);
    pbVar1 = local_7c;
    ::operator*(fVar6,(b2Vec2 *)&local_90);
    *(undefined4 *)(pbVar1 + 0x54) = local_90;
    *(undefined4 *)(pbVar1 + 0x58) = uStack_8c;
    b2Mul((b2Transform *)&local_50,(b2Vec2 *)abStack_30);
    puVar2 = (undefined4 *)
             b2DistanceProxy::GetVertex(*(b2DistanceProxy **)(local_7c + 4),(uint)(byte)local_80[9])
    ;
    local_48 = *puVar2;
    uStack_44 = puVar2[1];
    b2Mul(abStack_40,(b2Vec2 *)abStack_20);
    ::operator-((b2Vec2 *)abStack_38,(b2Vec2 *)abStack_40);
    local_78 = (float)b2Dot((b2Vec2 *)abStack_38,(b2Vec2 *)abStack_58);
    pbVar1 = local_7c;
    if ((int)((uint)(local_78 < 0.0) << 0x1f) < 0) {
      local_74 = local_78;
      b2Vec2::operator-((b2Vec2 *)&local_90);
      *(undefined4 *)(pbVar1 + 0x5c) = local_90;
      *(undefined4 *)(pbVar1 + 0x60) = uStack_8c;
      local_78 = -local_74;
    }
  }
  return local_78;
}

// ---- b2SeparationFunction::FindMinSeparation  @ 0x6c7f98
/* b2SeparationFunction::FindMinSeparation(int*, int*, float) const */

undefined4 b2SeparationFunction::FindMinSeparation(int *param_1,int *param_2,float param_3)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  int *in_r2;
  int iVar3;
  float fVar4;
  b2Rot abStack_60 [8];
  b2Rot abStack_58 [8];
  undefined4 local_50;
  undefined4 uStack_4c;
  undefined4 local_48;
  undefined4 uStack_44;
  undefined4 local_40;
  undefined4 uStack_3c;
  b2Transform abStack_38 [8];
  b2Vec2 abStack_30 [8];
  b2Transform abStack_28 [8];
  b2Vec2 abStack_20 [8];
  b2Transform abStack_18 [8];
  b2Vec2 abStack_10 [12];
  
  b2Transform::b2Transform(abStack_28);
  fVar4 = (float)b2Transform::b2Transform(abStack_18);
  fVar4 = (float)b2Sweep::GetTransform((b2Transform *)(param_1 + 2),fVar4);
  b2Sweep::GetTransform((b2Transform *)(param_1 + 0xb),fVar4);
  iVar3 = param_1[0x14];
  if (iVar3 == 1) {
    b2Mul(abStack_58,abStack_20);
    b2Mul((b2Transform *)&local_50,(b2Vec2 *)abStack_28);
    b2Vec2::operator-(abStack_30);
    b2MulT((b2Rot *)&local_48,abStack_10);
    *param_2 = -1;
    iVar3 = b2DistanceProxy::GetSupport((b2DistanceProxy *)param_1[1],(b2Vec2 *)&local_48);
    *in_r2 = iVar3;
    puVar1 = (undefined4 *)b2DistanceProxy::GetVertex((b2DistanceProxy *)param_1[1],*in_r2);
    local_40 = *puVar1;
    uStack_3c = puVar1[1];
    b2Mul(abStack_38,(b2Vec2 *)abStack_18);
    ::operator-(abStack_30,(b2Vec2 *)abStack_38);
    uVar2 = b2Dot(abStack_30,(b2Vec2 *)abStack_58);
  }
  else if (iVar3 == 2) {
    b2Mul(abStack_58,abStack_10);
    b2Mul((b2Transform *)&local_50,(b2Vec2 *)abStack_18);
    b2Vec2::operator-(abStack_30);
    b2MulT((b2Rot *)&local_48,abStack_20);
    *in_r2 = -1;
    iVar3 = b2DistanceProxy::GetSupport((b2DistanceProxy *)*param_1,(b2Vec2 *)&local_48);
    *param_2 = iVar3;
    puVar1 = (undefined4 *)b2DistanceProxy::GetVertex((b2DistanceProxy *)*param_1,*param_2);
    local_40 = *puVar1;
    uStack_3c = puVar1[1];
    b2Mul(abStack_38,(b2Vec2 *)abStack_28);
    ::operator-(abStack_30,(b2Vec2 *)abStack_38);
    uVar2 = b2Dot(abStack_30,(b2Vec2 *)abStack_58);
  }
  else if (iVar3 == 0) {
    b2MulT(abStack_60,abStack_20);
    b2Vec2::operator-(abStack_30);
    b2MulT(abStack_58,abStack_10);
    iVar3 = b2DistanceProxy::GetSupport((b2DistanceProxy *)*param_1,(b2Vec2 *)abStack_60);
    *param_2 = iVar3;
    iVar3 = b2DistanceProxy::GetSupport((b2DistanceProxy *)param_1[1],(b2Vec2 *)abStack_58);
    *in_r2 = iVar3;
    puVar1 = (undefined4 *)b2DistanceProxy::GetVertex((b2DistanceProxy *)*param_1,*param_2);
    local_50 = *puVar1;
    uStack_4c = puVar1[1];
    puVar1 = (undefined4 *)b2DistanceProxy::GetVertex((b2DistanceProxy *)param_1[1],*in_r2);
    local_48 = *puVar1;
    uStack_44 = puVar1[1];
    b2Mul((b2Transform *)&local_40,(b2Vec2 *)abStack_28);
    b2Mul(abStack_38,(b2Vec2 *)abStack_18);
    ::operator-(abStack_30,(b2Vec2 *)abStack_38);
    uVar2 = b2Dot(abStack_30,(b2Vec2 *)(param_1 + 0x17));
  }
  else {
    *param_2 = -1;
    *in_r2 = -1;
    uVar2 = 0;
  }
  return uVar2;
}

// ---- b2SeparationFunction::Evaluate  @ 0x6c8248
/* b2SeparationFunction::Evaluate(int, int, float) const */

undefined4 b2SeparationFunction::Evaluate(int param_1,int param_2,float param_3)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  int in_r2;
  int iVar3;
  float fVar4;
  b2Rot abStack_60 [8];
  b2Rot abStack_58 [8];
  undefined4 local_50;
  undefined4 uStack_4c;
  undefined4 local_48;
  undefined4 uStack_44;
  undefined4 local_40;
  undefined4 uStack_3c;
  b2Transform abStack_38 [8];
  b2Vec2 abStack_30 [8];
  b2Transform abStack_28 [8];
  b2Vec2 abStack_20 [8];
  b2Transform abStack_18 [8];
  b2Vec2 abStack_10 [12];
  
  b2Transform::b2Transform(abStack_28);
  fVar4 = (float)b2Transform::b2Transform(abStack_18);
  fVar4 = (float)b2Sweep::GetTransform((b2Transform *)(param_1 + 8),fVar4);
  b2Sweep::GetTransform((b2Transform *)(param_1 + 0x2c),fVar4);
  iVar3 = *(int *)(param_1 + 0x50);
  if (iVar3 == 1) {
    b2Mul(abStack_58,abStack_20);
    b2Mul((b2Transform *)&local_50,(b2Vec2 *)abStack_28);
    b2Vec2::operator-(abStack_30);
    b2MulT((b2Rot *)&local_48,abStack_10);
    puVar1 = (undefined4 *)b2DistanceProxy::GetVertex(*(b2DistanceProxy **)(param_1 + 4),in_r2);
    local_40 = *puVar1;
    uStack_3c = puVar1[1];
    b2Mul(abStack_38,(b2Vec2 *)abStack_18);
    ::operator-(abStack_30,(b2Vec2 *)abStack_38);
    uVar2 = b2Dot(abStack_30,(b2Vec2 *)abStack_58);
  }
  else if (iVar3 == 2) {
    b2Mul(abStack_58,abStack_10);
    b2Mul((b2Transform *)&local_50,(b2Vec2 *)abStack_18);
    b2Vec2::operator-(abStack_30);
    b2MulT((b2Rot *)&local_48,abStack_20);
    puVar1 = (undefined4 *)b2DistanceProxy::GetVertex(*(b2DistanceProxy **)param_1,param_2);
    local_40 = *puVar1;
    uStack_3c = puVar1[1];
    b2Mul(abStack_38,(b2Vec2 *)abStack_28);
    ::operator-(abStack_30,(b2Vec2 *)abStack_38);
    uVar2 = b2Dot(abStack_30,(b2Vec2 *)abStack_58);
  }
  else if (iVar3 == 0) {
    b2MulT(abStack_60,abStack_20);
    b2Vec2::operator-(abStack_30);
    b2MulT(abStack_58,abStack_10);
    puVar1 = (undefined4 *)b2DistanceProxy::GetVertex(*(b2DistanceProxy **)param_1,param_2);
    local_50 = *puVar1;
    uStack_4c = puVar1[1];
    puVar1 = (undefined4 *)b2DistanceProxy::GetVertex(*(b2DistanceProxy **)(param_1 + 4),in_r2);
    local_48 = *puVar1;
    uStack_44 = puVar1[1];
    b2Mul((b2Transform *)&local_40,(b2Vec2 *)abStack_28);
    b2Mul(abStack_38,(b2Vec2 *)abStack_18);
    ::operator-(abStack_30,(b2Vec2 *)abStack_38);
    uVar2 = b2Dot(abStack_30,(b2Vec2 *)(param_1 + 0x5c));
  }
  else {
    uVar2 = 0;
  }
  return uVar2;
}

// ---- b2SeparationFunction::b2SeparationFunction  @ 0x6c84a4
/* b2SeparationFunction::b2SeparationFunction() */

b2SeparationFunction * __thiscall
b2SeparationFunction::b2SeparationFunction(b2SeparationFunction *this)

{
  b2Sweep::b2Sweep((b2Sweep *)(this + 8));
  b2Sweep::b2Sweep((b2Sweep *)(this + 0x2c));
  b2Vec2::b2Vec2((b2Vec2 *)(this + 0x54));
  b2Vec2::b2Vec2((b2Vec2 *)(this + 0x5c));
  return this;
}
