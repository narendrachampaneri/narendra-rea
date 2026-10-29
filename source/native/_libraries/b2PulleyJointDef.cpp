// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 1 functions

// ---- b2PulleyJointDef::Initialize  @ 0x6d2bb8
/* b2PulleyJointDef::Initialize(b2Body*, b2Body*, b2Vec2 const&, b2Vec2 const&, b2Vec2 const&,
   b2Vec2 const&, float) */

void __thiscall
b2PulleyJointDef::Initialize
          (b2PulleyJointDef *this,b2Body *param_1,b2Body *param_2,b2Vec2 *param_3,b2Vec2 *param_4,
          b2Vec2 *param_5,b2Vec2 *param_6,float param_7)

{
  b2PulleyJointDef *pbVar1;
  undefined4 uVar2;
  undefined4 in_stack_0000000c;
  undefined4 local_30;
  undefined4 uStack_2c;
  b2Vec2 *local_28;
  b2Body *local_24;
  b2Body *local_20;
  b2PulleyJointDef *local_1c;
  b2Vec2 abStack_18 [8];
  b2Vec2 abStack_10 [8];
  
  *(b2Body **)(this + 8) = param_1;
  *(b2Body **)(this + 0xc) = param_2;
  uVar2 = *(undefined4 *)(param_3 + 4);
  *(undefined4 *)(this + 0x14) = *(undefined4 *)param_3;
  *(undefined4 *)(this + 0x18) = uVar2;
  uVar2 = *(undefined4 *)(param_4 + 4);
  *(undefined4 *)(this + 0x1c) = *(undefined4 *)param_4;
  *(undefined4 *)(this + 0x20) = uVar2;
  local_28 = param_3;
  local_24 = param_2;
  local_20 = param_1;
  local_1c = this;
  b2Body::GetLocalPoint((b2Body *)&local_30,*(b2Vec2 **)(this + 8));
  pbVar1 = local_1c;
  *(undefined4 *)(this + 0x24) = local_30;
  *(undefined4 *)(this + 0x28) = uStack_2c;
  b2Body::GetLocalPoint((b2Body *)&local_30,*(b2Vec2 **)(local_1c + 0xc));
  *(undefined4 *)(pbVar1 + 0x2c) = local_30;
  *(undefined4 *)(pbVar1 + 0x30) = uStack_2c;
  ::operator-(abStack_18,param_5);
  uVar2 = b2Vec2::Length(abStack_18);
  *(undefined4 *)(local_1c + 0x34) = uVar2;
  ::operator-(abStack_10,param_6);
  uVar2 = b2Vec2::Length(abStack_10);
  *(undefined4 *)(local_1c + 0x38) = uVar2;
  *(undefined4 *)(local_1c + 0x3c) = in_stack_0000000c;
  return;
}
