// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 19 functions

// ---- b2BroadPhase::b2BroadPhase  @ 0x6c1dc8
/* b2BroadPhase::b2BroadPhase() */

b2BroadPhase * __thiscall b2BroadPhase::b2BroadPhase(b2BroadPhase *this)

{
  undefined4 uVar1;
  
  b2DynamicTree::b2DynamicTree((b2DynamicTree *)this);
  *(undefined4 *)(this + 0x1c) = 0;
  *(undefined4 *)(this + 0x30) = 0x10;
  *(undefined4 *)(this + 0x34) = 0;
  uVar1 = b2Alloc(*(int *)(this + 0x30) * 0xc);
  *(undefined4 *)(this + 0x2c) = uVar1;
  *(undefined4 *)(this + 0x24) = 0x10;
  *(undefined4 *)(this + 0x28) = 0;
  uVar1 = b2Alloc(*(int *)(this + 0x24) << 2);
  *(undefined4 *)(this + 0x20) = uVar1;
  return this;
}

// ---- b2BroadPhase::~b2BroadPhase  @ 0x6c1e38
/* b2BroadPhase::~b2BroadPhase() */

b2BroadPhase * __thiscall b2BroadPhase::~b2BroadPhase(b2BroadPhase *this)

{
  b2Free(*(void **)(this + 0x20));
  b2Free(*(void **)(this + 0x2c));
  b2DynamicTree::~b2DynamicTree((b2DynamicTree *)this);
  return this;
}

// ---- b2BroadPhase::CreateProxy  @ 0x6c1e64
/* b2BroadPhase::CreateProxy(b2AABB const&, void*) */

int __thiscall b2BroadPhase::CreateProxy(b2BroadPhase *this,b2AABB *param_1,void *param_2)

{
  int iVar1;
  
  iVar1 = b2DynamicTree::CreateProxy((b2DynamicTree *)this,param_1,param_2);
  *(int *)(this + 0x1c) = *(int *)(this + 0x1c) + 1;
  BufferMove(this,iVar1);
  return iVar1;
}

// ---- b2BroadPhase::DestroyProxy  @ 0x6c1e9c
/* b2BroadPhase::DestroyProxy(int) */

void __thiscall b2BroadPhase::DestroyProxy(b2BroadPhase *this,int param_1)

{
  UnBufferMove(this,param_1);
  *(int *)(this + 0x1c) = *(int *)(this + 0x1c) + -1;
  b2DynamicTree::DestroyProxy((b2DynamicTree *)this,param_1);
  return;
}

// ---- b2BroadPhase::MoveProxy  @ 0x6c1ec8
/* b2BroadPhase::MoveProxy(int, b2AABB const&, b2Vec2 const&) */

void __thiscall
b2BroadPhase::MoveProxy(b2BroadPhase *this,int param_1,b2AABB *param_2,b2Vec2 *param_3)

{
  char cVar1;
  
  cVar1 = b2DynamicTree::MoveProxy((b2DynamicTree *)this,param_1,param_2,param_3);
  if (cVar1 != '\0') {
    BufferMove(this,param_1);
  }
  return;
}

// ---- b2BroadPhase::TouchProxy  @ 0x6c1f00
/* b2BroadPhase::TouchProxy(int) */

void __thiscall b2BroadPhase::TouchProxy(b2BroadPhase *this,int param_1)

{
  BufferMove(this,param_1);
  return;
}

// ---- b2BroadPhase::BufferMove  @ 0x6c1f18
/* b2BroadPhase::BufferMove(int) */

void __thiscall b2BroadPhase::BufferMove(b2BroadPhase *this,int param_1)

{
  undefined4 uVar1;
  void *__src;
  
  if (*(int *)(this + 0x28) == *(int *)(this + 0x24)) {
    __src = *(void **)(this + 0x20);
    *(int *)(this + 0x24) = *(int *)(this + 0x24) << 1;
    uVar1 = b2Alloc(*(int *)(this + 0x24) << 2);
    *(undefined4 *)(this + 0x20) = uVar1;
    memcpy(*(void **)(this + 0x20),__src,*(int *)(this + 0x28) << 2);
    b2Free(__src);
  }
  *(int *)(*(int *)(this + 0x28) * 4 + *(int *)(this + 0x20)) = param_1;
  *(int *)(this + 0x28) = *(int *)(this + 0x28) + 1;
  return;
}

// ---- b2BroadPhase::UnBufferMove  @ 0x6c1f88
/* b2BroadPhase::UnBufferMove(int) */

void __thiscall b2BroadPhase::UnBufferMove(b2BroadPhase *this,int param_1)

{
  int local_4;
  
  local_4 = 0;
  while( true ) {
    if (*(int *)(this + 0x28) <= local_4) {
      return;
    }
    if (*(int *)(local_4 * 4 + *(int *)(this + 0x20)) == param_1) break;
    local_4 = local_4 + 1;
  }
  *(undefined4 *)(local_4 * 4 + *(int *)(this + 0x20)) = 0xffffffff;
  return;
}

// ---- b2BroadPhase::QueryCallback  @ 0x6c1fcc
/* b2BroadPhase::QueryCallback(int) */

undefined4 __thiscall b2BroadPhase::QueryCallback(b2BroadPhase *this,int param_1)

{
  undefined4 uVar1;
  int iVar2;
  int iVar3;
  void *__src;
  int iVar4;
  
  if (*(int *)(this + 0x38) != param_1) {
    if (*(int *)(this + 0x34) == *(int *)(this + 0x30)) {
      __src = *(void **)(this + 0x2c);
      *(int *)(this + 0x30) = *(int *)(this + 0x30) << 1;
      uVar1 = b2Alloc(*(int *)(this + 0x30) * 0xc);
      *(undefined4 *)(this + 0x2c) = uVar1;
      memcpy(*(void **)(this + 0x2c),__src,*(int *)(this + 0x34) * 0xc);
      b2Free(__src);
    }
    iVar3 = *(int *)(this + 0x2c);
    iVar4 = *(int *)(this + 0x34);
    iVar2 = b2Min<int>(param_1,*(int *)(this + 0x38));
    *(int *)(iVar3 + iVar4 * 0xc) = iVar2;
    iVar3 = *(int *)(this + 0x2c);
    iVar4 = *(int *)(this + 0x34);
    iVar2 = b2Max<int>(param_1,*(int *)(this + 0x38));
    *(int *)(iVar3 + iVar4 * 0xc + 4) = iVar2;
    *(int *)(this + 0x34) = *(int *)(this + 0x34) + 1;
  }
  return 1;
}

// ---- b2BroadPhase::TestOverlap  @ 0x6d9614
/* b2BroadPhase::TestOverlap(int, int) const */

undefined4 __thiscall b2BroadPhase::TestOverlap(b2BroadPhase *this,int param_1,int param_2)

{
  b2AABB *pbVar1;
  b2AABB *pbVar2;
  undefined4 uVar3;
  
  pbVar1 = (b2AABB *)b2DynamicTree::GetFatAABB((b2DynamicTree *)this,param_1);
  pbVar2 = (b2AABB *)b2DynamicTree::GetFatAABB((b2DynamicTree *)this,param_2);
  uVar3 = b2TestOverlap(pbVar1,pbVar2);
  return uVar3;
}

// ---- b2BroadPhase::UpdatePairs<b2ContactManager>  @ 0x6d9d00
/* void b2BroadPhase::UpdatePairs<b2ContactManager>(b2ContactManager*) */

void __thiscall
b2BroadPhase::UpdatePairs<b2ContactManager>(b2BroadPhase *this,b2ContactManager *param_1)

{
  b2AABB *pbVar1;
  void *pvVar2;
  void *pvVar3;
  int *piVar4;
  int *piVar5;
  int local_24;
  int local_20;
  
  *(undefined4 *)(this + 0x34) = 0;
  for (local_24 = 0; local_24 < *(int *)(this + 0x28); local_24 = local_24 + 1) {
    *(undefined4 *)(this + 0x38) = *(undefined4 *)(local_24 * 4 + *(int *)(this + 0x20));
    if (*(int *)(this + 0x38) != -1) {
      pbVar1 = (b2AABB *)b2DynamicTree::GetFatAABB((b2DynamicTree *)this,*(int *)(this + 0x38));
      b2DynamicTree::Query<b2BroadPhase>((b2DynamicTree *)this,this,pbVar1);
    }
  }
  *(undefined4 *)(this + 0x28) = 0;
  std::sort<b2Pair*,bool(*)(b2Pair_const&,b2Pair_const&)>
            (*(b2Pair **)(this + 0x2c),
             (b2Pair *)(*(int *)(this + 0x34) * 0xc + *(int *)(this + 0x2c)),
             (_func_bool_b2Pair_ptr_b2Pair_ptr *)0x6d95d5);
  local_20 = 0;
  do {
    if (*(int *)(this + 0x34) <= local_20) {
      return;
    }
    piVar4 = (int *)(local_20 * 0xc + *(int *)(this + 0x2c));
    pvVar2 = (void *)b2DynamicTree::GetUserData((b2DynamicTree *)this,*piVar4);
    pvVar3 = (void *)b2DynamicTree::GetUserData((b2DynamicTree *)this,piVar4[1]);
    b2ContactManager::AddPair(param_1,pvVar2,pvVar3);
    do {
      local_20 = local_20 + 1;
      if ((*(int *)(this + 0x34) <= local_20) ||
         (piVar5 = (int *)(local_20 * 0xc + *(int *)(this + 0x2c)), *piVar5 != *piVar4)) break;
    } while (piVar5[1] == piVar4[1]);
  } while( true );
}

// ---- b2BroadPhase::GetUserData  @ 0x6dc354
/* b2BroadPhase::GetUserData(int) const */

undefined4 __thiscall b2BroadPhase::GetUserData(b2BroadPhase *this,int param_1)

{
  undefined4 uVar1;
  
  uVar1 = b2DynamicTree::GetUserData((b2DynamicTree *)this,param_1);
  return uVar1;
}

// ---- b2BroadPhase::GetFatAABB  @ 0x6dc370
/* b2BroadPhase::GetFatAABB(int) const */

undefined4 __thiscall b2BroadPhase::GetFatAABB(b2BroadPhase *this,int param_1)

{
  undefined4 uVar1;
  
  uVar1 = b2DynamicTree::GetFatAABB((b2DynamicTree *)this,param_1);
  return uVar1;
}

// ---- b2BroadPhase::GetProxyCount  @ 0x6dc38c
/* b2BroadPhase::GetProxyCount() const */

undefined4 __thiscall b2BroadPhase::GetProxyCount(b2BroadPhase *this)

{
  return *(undefined4 *)(this + 0x1c);
}

// ---- b2BroadPhase::GetTreeHeight  @ 0x6dc39c
/* b2BroadPhase::GetTreeHeight() const */

undefined4 __thiscall b2BroadPhase::GetTreeHeight(b2BroadPhase *this)

{
  undefined4 uVar1;
  
  uVar1 = b2DynamicTree::GetHeight((b2DynamicTree *)this);
  return uVar1;
}

// ---- b2BroadPhase::GetTreeBalance  @ 0x6dc3b4
/* b2BroadPhase::GetTreeBalance() const */

undefined4 __thiscall b2BroadPhase::GetTreeBalance(b2BroadPhase *this)

{
  undefined4 uVar1;
  
  uVar1 = b2DynamicTree::GetMaxBalance((b2DynamicTree *)this);
  return uVar1;
}

// ---- b2BroadPhase::GetTreeQuality  @ 0x6dc3cc
/* b2BroadPhase::GetTreeQuality() const */

undefined4 __thiscall b2BroadPhase::GetTreeQuality(b2BroadPhase *this)

{
  undefined4 uVar1;
  
  uVar1 = b2DynamicTree::GetAreaRatio((b2DynamicTree *)this);
  return uVar1;
}

// ---- b2BroadPhase::Query<b2WorldQueryWrapper>  @ 0x6de980
/* void b2BroadPhase::Query<b2WorldQueryWrapper>(b2WorldQueryWrapper*, b2AABB const&) const */

void __thiscall
b2BroadPhase::Query<b2WorldQueryWrapper>
          (b2BroadPhase *this,b2WorldQueryWrapper *param_1,b2AABB *param_2)

{
  b2DynamicTree::Query<b2WorldQueryWrapper>((b2DynamicTree *)this,param_1,param_2);
  return;
}

// ---- b2BroadPhase::RayCast<b2WorldRayCastWrapper>  @ 0x6de99c
/* void b2BroadPhase::RayCast<b2WorldRayCastWrapper>(b2WorldRayCastWrapper*, b2RayCastInput const&)
   const */

void __thiscall
b2BroadPhase::RayCast<b2WorldRayCastWrapper>
          (b2BroadPhase *this,b2WorldRayCastWrapper *param_1,b2RayCastInput *param_2)

{
  b2DynamicTree::RayCast<b2WorldRayCastWrapper>((b2DynamicTree *)this,param_1,param_2);
  return;
}
