// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 1 functions

// ---- b2FrictionJointDef::Initialize  @ 0x6cd908
/* b2FrictionJointDef::Initialize(b2Body*, b2Body*, b2Vec2 const&) */

void __thiscall
b2FrictionJointDef::Initialize
          (b2FrictionJointDef *this,b2Body *param_1,b2Body *param_2,b2Vec2 *param_3)

{
  b2FrictionJointDef *pbVar1;
  undefined4 local_20;
  undefined4 uStack_1c;
  b2Vec2 *local_18;
  b2Body *local_14;
  b2Body *local_10;
  b2FrictionJointDef *local_c;
  
  *(b2Body **)(this + 8) = param_1;
  *(b2Body **)(this + 0xc) = param_2;
  local_18 = param_3;
  local_14 = param_2;
  local_10 = param_1;
  local_c = this;
  b2Body::GetLocalPoint((b2Body *)&local_20,*(b2Vec2 **)(this + 8));
  pbVar1 = local_c;
  *(undefined4 *)(this + 0x14) = local_20;
  *(undefined4 *)(this + 0x18) = uStack_1c;
  b2Body::GetLocalPoint((b2Body *)&local_20,*(b2Vec2 **)(local_c + 0xc));
  *(undefined4 *)(pbVar1 + 0x1c) = local_20;
  *(undefined4 *)(pbVar1 + 0x20) = uStack_1c;
  return;
}
