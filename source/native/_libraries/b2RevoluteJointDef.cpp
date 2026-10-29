// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 1 functions

// ---- b2RevoluteJointDef::Initialize  @ 0x6d3c00
/* b2RevoluteJointDef::Initialize(b2Body*, b2Body*, b2Vec2 const&) */

void __thiscall
b2RevoluteJointDef::Initialize
          (b2RevoluteJointDef *this,b2Body *param_1,b2Body *param_2,b2Vec2 *param_3)

{
  b2RevoluteJointDef *pbVar1;
  float fVar2;
  float fVar3;
  undefined4 local_28;
  undefined4 uStack_24;
  b2Vec2 *local_20;
  b2Body *local_1c;
  b2Body *local_18;
  b2RevoluteJointDef *local_14;
  
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
  fVar2 = (float)b2Body::GetAngle(*(b2Body **)(local_14 + 0xc));
  fVar3 = (float)b2Body::GetAngle(*(b2Body **)(local_14 + 8));
  *(float *)(local_14 + 0x24) = fVar2 - fVar3;
  return;
}
