// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 4 functions

// ---- b2DistanceProxy::b2DistanceProxy  @ 0x6c48a4
/* b2DistanceProxy::b2DistanceProxy() */

b2DistanceProxy * __thiscall b2DistanceProxy::b2DistanceProxy(b2DistanceProxy *this)

{
  int iVar1;
  b2DistanceProxy *this_00;
  
  this_00 = this;
  for (iVar1 = 1; iVar1 != -1; iVar1 = iVar1 + -1) {
    b2Vec2::b2Vec2((b2Vec2 *)this_00);
    this_00 = this_00 + 8;
  }
  *(undefined4 *)(this + 0x10) = 0;
  *(undefined4 *)(this + 0x14) = 0;
  *(undefined4 *)(this + 0x18) = 0;
  return this;
}

// ---- b2DistanceProxy::GetVertex  @ 0x6c52dc
/* b2DistanceProxy::GetVertex(int) const */

int __thiscall b2DistanceProxy::GetVertex(b2DistanceProxy *this,int param_1)

{
  return param_1 * 8 + *(int *)(this + 0x10);
}

// ---- b2DistanceProxy::GetSupport  @ 0x6c52f4
/* b2DistanceProxy::GetSupport(b2Vec2 const&) const */

int __thiscall b2DistanceProxy::GetSupport(b2DistanceProxy *this,b2Vec2 *param_1)

{
  float fVar1;
  int local_18;
  float local_14;
  int local_10;
  
  local_18 = 0;
  local_14 = (float)b2Dot(*(b2Vec2 **)(this + 0x10),param_1);
  for (local_10 = 1; local_10 < *(int *)(this + 0x14); local_10 = local_10 + 1) {
    fVar1 = (float)b2Dot((b2Vec2 *)(local_10 * 8 + *(int *)(this + 0x10)),param_1);
    if (local_14 < fVar1) {
      local_18 = local_10;
      local_14 = fVar1;
    }
  }
  return local_18;
}

// ---- b2DistanceProxy::Set  @ 0x6c5370
/* b2DistanceProxy::Set(b2Shape const*, int) */

void __thiscall b2DistanceProxy::Set(b2DistanceProxy *this,b2Shape *param_1,int param_2)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  
  uVar1 = b2Shape::GetType(param_1);
  switch(uVar1) {
  case 0:
    *(b2Shape **)(this + 0x10) = param_1 + 0xc;
    *(undefined4 *)(this + 0x14) = 1;
    *(undefined4 *)(this + 0x18) = *(undefined4 *)(param_1 + 8);
    break;
  case 1:
    *(b2Shape **)(this + 0x10) = param_1 + 0xc;
    *(undefined4 *)(this + 0x14) = 2;
    *(undefined4 *)(this + 0x18) = *(undefined4 *)(param_1 + 8);
    break;
  case 2:
    *(b2Shape **)(this + 0x10) = param_1 + 0x14;
    *(undefined4 *)(this + 0x14) = *(undefined4 *)(param_1 + 0x94);
    *(undefined4 *)(this + 0x18) = *(undefined4 *)(param_1 + 8);
    break;
  case 3:
    puVar2 = (undefined4 *)(*(int *)(param_1 + 0xc) + param_2 * 8);
    uVar1 = puVar2[1];
    *(undefined4 *)this = *puVar2;
    *(undefined4 *)(this + 4) = uVar1;
    if (param_2 + 1 < *(int *)(param_1 + 0x10)) {
      puVar2 = (undefined4 *)(*(int *)(param_1 + 0xc) + (param_2 + 1) * 8);
      uVar1 = puVar2[1];
      *(undefined4 *)(this + 8) = *puVar2;
      *(undefined4 *)(this + 0xc) = uVar1;
    }
    else {
      uVar1 = (*(undefined4 **)(param_1 + 0xc))[1];
      *(undefined4 *)(this + 8) = **(undefined4 **)(param_1 + 0xc);
      *(undefined4 *)(this + 0xc) = uVar1;
    }
    *(b2DistanceProxy **)(this + 0x10) = this;
    *(undefined4 *)(this + 0x14) = 2;
    *(undefined4 *)(this + 0x18) = *(undefined4 *)(param_1 + 8);
  }
  return;
}
