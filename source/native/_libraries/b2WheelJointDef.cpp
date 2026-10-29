// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 1 functions

// ---- b2WheelJointDef::Initialize  @ 0x6d732c
/* b2WheelJointDef::Initialize(b2Body*, b2Body*, b2Vec2 const&, b2Vec2 const&) */

void b2WheelJointDef::Initialize(b2Body *param_1,b2Body *param_2,b2Vec2 *param_3,b2Vec2 *param_4)

{
  b2Body *pbVar1;
  b2Body *pbVar2;
  undefined4 local_20;
  undefined4 uStack_1c;
  b2Vec2 *local_18;
  b2Vec2 *local_14;
  b2Body *local_10;
  b2Body *local_c;
  
  *(b2Body **)(param_1 + 8) = param_2;
  *(b2Vec2 **)(param_1 + 0xc) = param_3;
  local_18 = param_4;
  local_14 = param_3;
  local_10 = param_2;
  local_c = param_1;
  b2Body::GetLocalPoint((b2Body *)&local_20,*(b2Vec2 **)(param_1 + 8));
  pbVar1 = local_c;
  *(undefined4 *)(param_1 + 0x14) = local_20;
  *(undefined4 *)(param_1 + 0x18) = uStack_1c;
  b2Body::GetLocalPoint((b2Body *)&local_20,*(b2Vec2 **)(local_c + 0xc));
  pbVar2 = local_c;
  *(undefined4 *)(pbVar1 + 0x1c) = local_20;
  *(undefined4 *)(pbVar1 + 0x20) = uStack_1c;
  b2Body::GetLocalVector((b2Body *)&local_20,*(b2Vec2 **)(local_c + 8));
  *(undefined4 *)(pbVar2 + 0x24) = local_20;
  *(undefined4 *)(pbVar2 + 0x28) = uStack_1c;
  return;
}
