// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 1 functions

// ---- b2DistanceJointDef::Initialize  @ 0x6ccb70
/* b2DistanceJointDef::Initialize(b2Body*, b2Body*, b2Vec2 const&, b2Vec2 const&) */

void __thiscall
b2DistanceJointDef::Initialize
          (b2DistanceJointDef *this,b2Body *param_1,b2Body *param_2,b2Vec2 *param_3,b2Vec2 *param_4)

{
  b2DistanceJointDef *pbVar1;
  undefined4 uVar2;
  undefined4 local_28;
  undefined4 uStack_24;
  b2Vec2 *local_20;
  b2Body *local_1c;
  b2Body *local_18;
  b2DistanceJointDef *local_14;
  b2Vec2 abStack_10 [8];
  
  *(b2Body **)(this + 8) = param_1;
  *(b2Body **)(this + 0xc) = param_2;
  local_20 = param_3;
  local_1c = param_2;
  local_18 = param_1;
  local_14 = this;
  b2Body::GetLocalPoint((b2Body *)&local_28,*(b2Vec2 **)(this + 8));
  pbVar1 = local_14;
  *(undefined4 *)(this + 0x14) = local_28;
  *(undefined4 *)(this + 0x18) = uStack_24;
  b2Body::GetLocalPoint((b2Body *)&local_28,*(b2Vec2 **)(local_14 + 0xc));
  *(undefined4 *)(pbVar1 + 0x1c) = local_28;
  *(undefined4 *)(pbVar1 + 0x20) = uStack_24;
  ::operator-(abStack_10,param_4);
  uVar2 = b2Vec2::Length(abStack_10);
  *(undefined4 *)(local_14 + 0x24) = uVar2;
  return;
}
