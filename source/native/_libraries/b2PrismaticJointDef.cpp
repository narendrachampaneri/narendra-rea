// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 1 functions

// ---- b2PrismaticJointDef::Initialize  @ 0x6d0cd4
/* b2PrismaticJointDef::Initialize(b2Body*, b2Body*, b2Vec2 const&, b2Vec2 const&) */

void b2PrismaticJointDef::Initialize
               (b2Body *param_1,b2Body *param_2,b2Vec2 *param_3,b2Vec2 *param_4)

{
  b2Body *pbVar1;
  b2Body *pbVar2;
  float fVar3;
  float fVar4;
  undefined4 local_28;
  undefined4 uStack_24;
  b2Vec2 *local_20;
  b2Vec2 *local_1c;
  b2Body *local_18;
  b2Body *local_14;
  
  *(b2Body **)(param_1 + 8) = param_2;
  *(b2Vec2 **)(param_1 + 0xc) = param_3;
  local_20 = param_4;
  local_1c = param_3;
  local_18 = param_2;
  local_14 = param_1;
  b2Body::GetLocalPoint((b2Body *)&local_28,*(b2Vec2 **)(param_1 + 8));
  pbVar1 = local_14;
  *(undefined4 *)(param_1 + 0x14) = local_28;
  *(undefined4 *)(param_1 + 0x18) = uStack_24;
  b2Body::GetLocalPoint((b2Body *)&local_28,*(b2Vec2 **)(local_14 + 0xc));
  pbVar2 = local_14;
  *(undefined4 *)(pbVar1 + 0x1c) = local_28;
  *(undefined4 *)(pbVar1 + 0x20) = uStack_24;
  b2Body::GetLocalVector((b2Body *)&local_28,*(b2Vec2 **)(local_14 + 8));
  *(undefined4 *)(pbVar2 + 0x24) = local_28;
  *(undefined4 *)(pbVar2 + 0x28) = uStack_24;
  fVar3 = (float)b2Body::GetAngle(*(b2Body **)(local_14 + 0xc));
  fVar4 = (float)b2Body::GetAngle(*(b2Body **)(local_14 + 8));
  *(float *)(local_14 + 0x2c) = fVar3 - fVar4;
  return;
}
