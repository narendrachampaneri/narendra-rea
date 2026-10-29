// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 2 functions

// ---- b2PositionSolverManifold::Initialize  @ 0x6cbbc8
/* b2PositionSolverManifold::Initialize(b2ContactPositionConstraint*, b2Transform const&,
   b2Transform const&, int) */

void b2PositionSolverManifold::Initialize
               (b2ContactPositionConstraint *param_1,b2Transform *param_2,b2Transform *param_3,
               int param_4)

{
  b2ContactPositionConstraint *pbVar1;
  int iVar2;
  float fVar3;
  undefined4 local_38;
  undefined4 uStack_34;
  b2Vec2 *local_30;
  b2Transform *local_2c;
  b2Transform *local_28;
  b2ContactPositionConstraint *local_24;
  b2Transform abStack_20 [8];
  undefined4 local_18;
  undefined4 uStack_14;
  b2Vec2 abStack_10 [8];
  
  iVar2 = *(int *)(param_2 + 0x48);
  local_30 = (b2Vec2 *)param_4;
  local_2c = param_3;
  local_28 = param_2;
  local_24 = param_1;
  if (iVar2 == 1) {
    b2Mul((b2Rot *)&local_38,(b2Vec2 *)(param_3 + 8));
    *(undefined4 *)param_1 = local_38;
    *(undefined4 *)(param_1 + 4) = uStack_34;
    b2Mul(abStack_20,(b2Vec2 *)local_2c);
    b2Mul((b2Transform *)&local_18,local_30);
    ::operator-(abStack_10,(b2Vec2 *)&local_18);
    fVar3 = (float)b2Dot(abStack_10,(b2Vec2 *)local_24);
    *(float *)(local_24 + 0x10) =
         (fVar3 - *(float *)(local_28 + 0x4c)) - *(float *)(local_28 + 0x50);
    *(undefined4 *)(local_24 + 8) = local_18;
    *(undefined4 *)(local_24 + 0xc) = uStack_14;
  }
  else if (iVar2 == 2) {
    b2Mul((b2Rot *)&local_38,(b2Vec2 *)(param_4 + 8));
    *(undefined4 *)param_1 = local_38;
    *(undefined4 *)(param_1 + 4) = uStack_34;
    b2Mul(abStack_20,local_30);
    b2Mul((b2Transform *)&local_18,(b2Vec2 *)local_2c);
    ::operator-(abStack_10,(b2Vec2 *)&local_18);
    fVar3 = (float)b2Dot(abStack_10,(b2Vec2 *)local_24);
    pbVar1 = local_24;
    *(float *)(local_24 + 0x10) =
         (fVar3 - *(float *)(local_28 + 0x4c)) - *(float *)(local_28 + 0x50);
    *(undefined4 *)(local_24 + 8) = local_18;
    *(undefined4 *)(local_24 + 0xc) = uStack_14;
    b2Vec2::operator-((b2Vec2 *)&local_38);
    *(undefined4 *)pbVar1 = local_38;
    *(undefined4 *)(pbVar1 + 4) = uStack_34;
  }
  else if (iVar2 == 0) {
    b2Mul(abStack_20,(b2Vec2 *)param_3);
    b2Mul((b2Transform *)&local_18,local_30);
    pbVar1 = local_24;
    ::operator-((b2Vec2 *)&local_38,(b2Vec2 *)&local_18);
    *(undefined4 *)pbVar1 = local_38;
    *(undefined4 *)(pbVar1 + 4) = uStack_34;
    b2Vec2::Normalize((b2Vec2 *)local_24);
    fVar3 = (float)::operator+(abStack_10,(b2Vec2 *)abStack_20);
    pbVar1 = local_24;
    ::operator*(fVar3,(b2Vec2 *)&local_38);
    *(undefined4 *)(pbVar1 + 8) = local_38;
    *(undefined4 *)(pbVar1 + 0xc) = uStack_34;
    ::operator-(abStack_10,(b2Vec2 *)&local_18);
    fVar3 = (float)b2Dot(abStack_10,(b2Vec2 *)local_24);
    *(float *)(local_24 + 0x10) =
         (fVar3 - *(float *)(local_28 + 0x4c)) - *(float *)(local_28 + 0x50);
  }
  return;
}

// ---- b2PositionSolverManifold::b2PositionSolverManifold  @ 0x6cbddc
/* b2PositionSolverManifold::b2PositionSolverManifold() */

b2PositionSolverManifold * __thiscall
b2PositionSolverManifold::b2PositionSolverManifold(b2PositionSolverManifold *this)

{
  b2Vec2::b2Vec2((b2Vec2 *)this);
  b2Vec2::b2Vec2((b2Vec2 *)(this + 8));
  return this;
}
