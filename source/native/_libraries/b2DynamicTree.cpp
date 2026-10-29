// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 24 functions

// ---- b2DynamicTree::b2DynamicTree  @ 0x6c654c
/* b2DynamicTree::b2DynamicTree() */

b2DynamicTree * __thiscall b2DynamicTree::b2DynamicTree(b2DynamicTree *this)

{
  undefined4 uVar1;
  int local_c;
  
  *(undefined4 *)this = 0xffffffff;
  *(undefined4 *)(this + 0xc) = 0x10;
  *(undefined4 *)(this + 8) = 0;
  uVar1 = b2Alloc(*(int *)(this + 0xc) * 0x24);
  *(undefined4 *)(this + 4) = uVar1;
  memset(*(void **)(this + 4),0,*(int *)(this + 0xc) * 0x24);
  for (local_c = 0; local_c < *(int *)(this + 0xc) + -1; local_c = local_c + 1) {
    *(int *)(local_c * 0x24 + *(int *)(this + 4) + 0x14) = local_c + 1;
    *(undefined4 *)(local_c * 0x24 + *(int *)(this + 4) + 0x20) = 0xffffffff;
  }
  *(undefined4 *)(*(int *)(this + 0xc) * 0x24 + *(int *)(this + 4) + -0x10) = 0xffffffff;
  *(undefined4 *)(*(int *)(this + 0xc) * 0x24 + *(int *)(this + 4) + -4) = 0xffffffff;
  *(undefined4 *)(this + 0x10) = 0;
  *(undefined4 *)(this + 0x14) = 0;
  *(undefined4 *)(this + 0x18) = 0;
  return this;
}

// ---- b2DynamicTree::~b2DynamicTree  @ 0x6c6634
/* b2DynamicTree::~b2DynamicTree() */

b2DynamicTree * __thiscall b2DynamicTree::~b2DynamicTree(b2DynamicTree *this)

{
  b2Free(*(void **)(this + 4));
  return this;
}

// ---- b2DynamicTree::AllocateNode  @ 0x6c6650
/* b2DynamicTree::AllocateNode() */

int __thiscall b2DynamicTree::AllocateNode(b2DynamicTree *this)

{
  undefined4 uVar1;
  void *__src;
  int iVar2;
  int local_14;
  
  if (*(int *)(this + 0x10) == -1) {
    __src = *(void **)(this + 4);
    *(int *)(this + 0xc) = *(int *)(this + 0xc) << 1;
    uVar1 = b2Alloc(*(int *)(this + 0xc) * 0x24);
    *(undefined4 *)(this + 4) = uVar1;
    memcpy(*(void **)(this + 4),__src,*(int *)(this + 8) * 0x24);
    b2Free(__src);
    for (local_14 = *(int *)(this + 8); local_14 < *(int *)(this + 0xc) + -1;
        local_14 = local_14 + 1) {
      *(int *)(local_14 * 0x24 + *(int *)(this + 4) + 0x14) = local_14 + 1;
      *(undefined4 *)(local_14 * 0x24 + *(int *)(this + 4) + 0x20) = 0xffffffff;
    }
    *(undefined4 *)(*(int *)(this + 0xc) * 0x24 + *(int *)(this + 4) + -0x10) = 0xffffffff;
    *(undefined4 *)(*(int *)(this + 0xc) * 0x24 + *(int *)(this + 4) + -4) = 0xffffffff;
    *(undefined4 *)(this + 0x10) = *(undefined4 *)(this + 8);
  }
  iVar2 = *(int *)(this + 0x10);
  *(undefined4 *)(this + 0x10) = *(undefined4 *)(iVar2 * 0x24 + *(int *)(this + 4) + 0x14);
  *(undefined4 *)(iVar2 * 0x24 + *(int *)(this + 4) + 0x14) = 0xffffffff;
  *(undefined4 *)(iVar2 * 0x24 + *(int *)(this + 4) + 0x18) = 0xffffffff;
  *(undefined4 *)(iVar2 * 0x24 + *(int *)(this + 4) + 0x1c) = 0xffffffff;
  *(undefined4 *)(iVar2 * 0x24 + *(int *)(this + 4) + 0x20) = 0;
  *(undefined4 *)(iVar2 * 0x24 + *(int *)(this + 4) + 0x10) = 0;
  *(int *)(this + 8) = *(int *)(this + 8) + 1;
  return iVar2;
}

// ---- b2DynamicTree::FreeNode  @ 0x6c67cc
/* b2DynamicTree::FreeNode(int) */

void __thiscall b2DynamicTree::FreeNode(b2DynamicTree *this,int param_1)

{
  *(undefined4 *)(param_1 * 0x24 + *(int *)(this + 4) + 0x14) = *(undefined4 *)(this + 0x10);
  *(undefined4 *)(param_1 * 0x24 + *(int *)(this + 4) + 0x20) = 0xffffffff;
  *(int *)(this + 0x10) = param_1;
  *(int *)(this + 8) = *(int *)(this + 8) + -1;
  return;
}

// ---- b2DynamicTree::CreateProxy  @ 0x6c6814
/* b2DynamicTree::CreateProxy(b2AABB const&, void*) */

int __thiscall b2DynamicTree::CreateProxy(b2DynamicTree *this,b2AABB *param_1,void *param_2)

{
  undefined4 *puVar1;
  int iVar2;
  float extraout_s0;
  float extraout_s1;
  undefined4 local_30;
  undefined4 uStack_2c;
  void *local_24;
  b2AABB *local_20;
  b2DynamicTree *local_1c;
  int local_14;
  b2Vec2 abStack_10 [8];
  
  local_24 = param_2;
  local_20 = param_1;
  local_1c = this;
  local_14 = AllocateNode(this);
  b2Vec2::b2Vec2(abStack_10,extraout_s0,extraout_s1);
  puVar1 = (undefined4 *)(*(int *)(local_1c + 4) + local_14 * 0x24);
  ::operator-((b2Vec2 *)&local_30,(b2Vec2 *)local_20);
  *puVar1 = local_30;
  puVar1[1] = uStack_2c;
  iVar2 = *(int *)(local_1c + 4) + local_14 * 0x24;
  ::operator+((b2Vec2 *)&local_30,(b2Vec2 *)(local_20 + 8));
  *(undefined4 *)(iVar2 + 8) = local_30;
  *(undefined4 *)(iVar2 + 0xc) = uStack_2c;
  *(void **)(local_14 * 0x24 + *(int *)(local_1c + 4) + 0x10) = local_24;
  *(undefined4 *)(local_14 * 0x24 + *(int *)(local_1c + 4) + 0x20) = 0;
  InsertLeaf(local_1c,local_14);
  return local_14;
}

// ---- b2DynamicTree::DestroyProxy  @ 0x6c68d8
/* b2DynamicTree::DestroyProxy(int) */

void __thiscall b2DynamicTree::DestroyProxy(b2DynamicTree *this,int param_1)

{
  RemoveLeaf(this,param_1);
  FreeNode(this,param_1);
  return;
}

// ---- b2DynamicTree::MoveProxy  @ 0x6c68f8
/* b2DynamicTree::MoveProxy(int, b2AABB const&, b2Vec2 const&) */

undefined4 __thiscall
b2DynamicTree::MoveProxy(b2DynamicTree *this,int param_1,b2AABB *param_2,b2Vec2 *param_3)

{
  int iVar1;
  undefined4 uVar2;
  float *pfVar3;
  float fVar4;
  undefined8 uVar5;
  float local_40;
  float fStack_3c;
  b2Vec2 *local_38;
  b2AABB *local_34;
  int local_30;
  b2DynamicTree *local_2c;
  b2Vec2 abStack_28 [8];
  float local_20;
  float local_1c;
  float local_18;
  float local_14;
  float local_10;
  float local_c;
  
  local_38 = param_3;
  local_34 = param_2;
  local_30 = param_1;
  local_2c = this;
  iVar1 = b2AABB::Contains((b2AABB *)(param_1 * 0x24 + *(int *)(this + 4)),param_2);
  if (iVar1 == 0) {
    uVar5 = RemoveLeaf(local_2c,local_30);
    local_18 = *(float *)local_34;
    local_14 = *(float *)(local_34 + 4);
    local_10 = *(float *)(local_34 + 8);
    local_c = *(float *)(local_34 + 0xc);
    b2Vec2::b2Vec2(abStack_28,(float)uVar5,(float)((ulonglong)uVar5 >> 0x20));
    ::operator-((b2Vec2 *)&local_40,(b2Vec2 *)&local_18);
    local_18 = local_40;
    local_14 = fStack_3c;
    fVar4 = (float)::operator+((b2Vec2 *)&local_40,(b2Vec2 *)&local_10);
    local_10 = local_40;
    local_c = fStack_3c;
    ::operator*(fVar4,(b2Vec2 *)&local_20);
    if ((int)((uint)(local_20 < 0.0) << 0x1f) < 0) {
      local_18 = local_18 + local_20;
    }
    else {
      local_10 = local_10 + local_20;
    }
    if ((int)((uint)(local_1c < 0.0) << 0x1f) < 0) {
      local_14 = local_14 + local_1c;
    }
    else {
      local_c = local_c + local_1c;
    }
    pfVar3 = (float *)(local_30 * 0x24 + *(int *)(local_2c + 4));
    *pfVar3 = local_18;
    pfVar3[1] = local_14;
    pfVar3[2] = local_10;
    pfVar3[3] = local_c;
    InsertLeaf(local_2c,local_30);
    uVar2 = 1;
  }
  else {
    uVar2 = 0;
  }
  return uVar2;
}

// ---- b2DynamicTree::InsertLeaf  @ 0x6c6a48
/* b2DynamicTree::InsertLeaf(int) */

void __thiscall b2DynamicTree::InsertLeaf(b2DynamicTree *this,int param_1)

{
  char cVar1;
  float fVar2;
  float fVar3;
  float fVar4;
  int iVar5;
  int iVar6;
  undefined4 *puVar7;
  int iVar8;
  int iVar9;
  int iVar10;
  int local_80;
  float local_7c;
  float local_78;
  undefined4 local_38;
  undefined4 uStack_34;
  undefined4 uStack_30;
  undefined4 uStack_2c;
  b2AABB abStack_28 [16];
  b2AABB abStack_18 [16];
  
  *(int *)(this + 0x18) = *(int *)(this + 0x18) + 1;
  if (*(int *)this == -1) {
    *(int *)this = param_1;
    *(undefined4 *)(*(int *)this * 0x24 + *(int *)(this + 4) + 0x14) = 0xffffffff;
  }
  else {
    puVar7 = (undefined4 *)(param_1 * 0x24 + *(int *)(this + 4));
    local_38 = *puVar7;
    uStack_34 = puVar7[1];
    uStack_30 = puVar7[2];
    uStack_2c = puVar7[3];
    local_80 = *(int *)this;
    while (cVar1 = b2TreeNode::IsLeaf((b2TreeNode *)(local_80 * 0x24 + *(int *)(this + 4))),
          cVar1 != '\x01') {
      iVar8 = *(int *)(local_80 * 0x24 + *(int *)(this + 4) + 0x18);
      iVar6 = *(int *)(local_80 * 0x24 + *(int *)(this + 4) + 0x1c);
      fVar2 = (float)b2AABB::GetPerimeter((b2AABB *)(local_80 * 0x24 + *(int *)(this + 4)));
      b2AABB::b2AABB(abStack_28);
      b2AABB::Combine(abStack_28,(b2AABB *)(local_80 * 0x24 + *(int *)(this + 4)),
                      (b2AABB *)&local_38);
      fVar3 = (float)b2AABB::GetPerimeter(abStack_28);
      fVar2 = (fVar3 - fVar2) + (fVar3 - fVar2);
      iVar5 = b2TreeNode::IsLeaf((b2TreeNode *)(iVar8 * 0x24 + *(int *)(this + 4)));
      if (iVar5 == 0) {
        b2AABB::b2AABB(abStack_18);
        b2AABB::Combine(abStack_18,(b2AABB *)&local_38,(b2AABB *)(iVar8 * 0x24 + *(int *)(this + 4))
                       );
        fVar4 = (float)b2AABB::GetPerimeter((b2AABB *)(iVar8 * 0x24 + *(int *)(this + 4)));
        local_7c = (float)b2AABB::GetPerimeter(abStack_18);
        local_7c = local_7c - fVar4;
      }
      else {
        b2AABB::b2AABB(abStack_18);
        b2AABB::Combine(abStack_18,(b2AABB *)&local_38,(b2AABB *)(iVar8 * 0x24 + *(int *)(this + 4))
                       );
        local_7c = (float)b2AABB::GetPerimeter(abStack_18);
      }
      local_7c = local_7c + fVar2;
      iVar5 = b2TreeNode::IsLeaf((b2TreeNode *)(iVar6 * 0x24 + *(int *)(this + 4)));
      if (iVar5 == 0) {
        b2AABB::b2AABB(abStack_18);
        b2AABB::Combine(abStack_18,(b2AABB *)&local_38,(b2AABB *)(iVar6 * 0x24 + *(int *)(this + 4))
                       );
        fVar4 = (float)b2AABB::GetPerimeter((b2AABB *)(iVar6 * 0x24 + *(int *)(this + 4)));
        local_78 = (float)b2AABB::GetPerimeter(abStack_18);
        local_78 = local_78 - fVar4;
      }
      else {
        b2AABB::b2AABB(abStack_18);
        b2AABB::Combine(abStack_18,(b2AABB *)&local_38,(b2AABB *)(iVar6 * 0x24 + *(int *)(this + 4))
                       );
        local_78 = (float)b2AABB::GetPerimeter(abStack_18);
      }
      local_78 = local_78 + fVar2;
      if (((int)((uint)(fVar3 + fVar3 < local_7c) << 0x1f) < 0) &&
         ((int)((uint)(fVar3 + fVar3 < local_78) << 0x1f) < 0)) break;
      local_80 = iVar6;
      if ((int)((uint)(local_7c < local_78) << 0x1f) < 0) {
        local_80 = iVar8;
      }
    }
    iVar8 = *(int *)(local_80 * 0x24 + *(int *)(this + 4) + 0x14);
    iVar5 = AllocateNode(this);
    *(int *)(iVar5 * 0x24 + *(int *)(this + 4) + 0x14) = iVar8;
    *(undefined4 *)(iVar5 * 0x24 + *(int *)(this + 4) + 0x10) = 0;
    b2AABB::Combine((b2AABB *)(iVar5 * 0x24 + *(int *)(this + 4)),(b2AABB *)&local_38,
                    (b2AABB *)(local_80 * 0x24 + *(int *)(this + 4)));
    *(int *)(*(int *)(this + 4) + iVar5 * 0x24 + 0x20) =
         *(int *)(local_80 * 0x24 + *(int *)(this + 4) + 0x20) + 1;
    if (iVar8 == -1) {
      *(int *)(iVar5 * 0x24 + *(int *)(this + 4) + 0x18) = local_80;
      *(int *)(iVar5 * 0x24 + *(int *)(this + 4) + 0x1c) = param_1;
      *(int *)(local_80 * 0x24 + *(int *)(this + 4) + 0x14) = iVar5;
      *(int *)(param_1 * 0x24 + *(int *)(this + 4) + 0x14) = iVar5;
      *(int *)this = iVar5;
    }
    else {
      if (*(int *)(iVar8 * 0x24 + *(int *)(this + 4) + 0x18) == local_80) {
        *(int *)(iVar8 * 0x24 + *(int *)(this + 4) + 0x18) = iVar5;
      }
      else {
        *(int *)(iVar8 * 0x24 + *(int *)(this + 4) + 0x1c) = iVar5;
      }
      *(int *)(iVar5 * 0x24 + *(int *)(this + 4) + 0x18) = local_80;
      *(int *)(iVar5 * 0x24 + *(int *)(this + 4) + 0x1c) = param_1;
      *(int *)(local_80 * 0x24 + *(int *)(this + 4) + 0x14) = iVar5;
      *(int *)(param_1 * 0x24 + *(int *)(this + 4) + 0x14) = iVar5;
    }
    local_80 = *(int *)(param_1 * 0x24 + *(int *)(this + 4) + 0x14);
    while (local_80 != -1) {
      iVar5 = Balance(this,local_80);
      iVar9 = *(int *)(iVar5 * 0x24 + *(int *)(this + 4) + 0x18);
      iVar10 = *(int *)(iVar5 * 0x24 + *(int *)(this + 4) + 0x1c);
      iVar6 = *(int *)(this + 4);
      iVar8 = b2Max<int>(*(int *)(iVar9 * 0x24 + *(int *)(this + 4) + 0x20),
                         *(int *)(iVar10 * 0x24 + *(int *)(this + 4) + 0x20));
      *(int *)(iVar6 + iVar5 * 0x24 + 0x20) = iVar8 + 1;
      b2AABB::Combine((b2AABB *)(iVar5 * 0x24 + *(int *)(this + 4)),
                      (b2AABB *)(iVar9 * 0x24 + *(int *)(this + 4)),
                      (b2AABB *)(iVar10 * 0x24 + *(int *)(this + 4)));
      local_80 = *(int *)(iVar5 * 0x24 + *(int *)(this + 4) + 0x14);
    }
  }
  return;
}

// ---- b2DynamicTree::RemoveLeaf  @ 0x6c6f98
/* b2DynamicTree::RemoveLeaf(int) */

void __thiscall b2DynamicTree::RemoveLeaf(b2DynamicTree *this,int param_1)

{
  int iVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  int local_20;
  int local_1c;
  
  if (*(int *)this == param_1) {
    *(undefined4 *)this = 0xffffffff;
  }
  else {
    iVar2 = *(int *)(param_1 * 0x24 + *(int *)(this + 4) + 0x14);
    local_1c = *(int *)(iVar2 * 0x24 + *(int *)(this + 4) + 0x14);
    if (*(int *)(iVar2 * 0x24 + *(int *)(this + 4) + 0x18) == param_1) {
      local_20 = *(int *)(iVar2 * 0x24 + *(int *)(this + 4) + 0x1c);
    }
    else {
      local_20 = *(int *)(iVar2 * 0x24 + *(int *)(this + 4) + 0x18);
    }
    if (local_1c == -1) {
      *(int *)this = local_20;
      *(undefined4 *)(local_20 * 0x24 + *(int *)(this + 4) + 0x14) = 0xffffffff;
      FreeNode(this,iVar2);
    }
    else {
      if (*(int *)(local_1c * 0x24 + *(int *)(this + 4) + 0x18) == iVar2) {
        *(int *)(local_1c * 0x24 + *(int *)(this + 4) + 0x18) = local_20;
      }
      else {
        *(int *)(local_1c * 0x24 + *(int *)(this + 4) + 0x1c) = local_20;
      }
      *(int *)(local_20 * 0x24 + *(int *)(this + 4) + 0x14) = local_1c;
      FreeNode(this,iVar2);
      while (local_1c != -1) {
        iVar2 = Balance(this,local_1c);
        iVar3 = *(int *)(iVar2 * 0x24 + *(int *)(this + 4) + 0x18);
        iVar4 = *(int *)(iVar2 * 0x24 + *(int *)(this + 4) + 0x1c);
        b2AABB::Combine((b2AABB *)(iVar2 * 0x24 + *(int *)(this + 4)),
                        (b2AABB *)(iVar3 * 0x24 + *(int *)(this + 4)),
                        (b2AABB *)(iVar4 * 0x24 + *(int *)(this + 4)));
        iVar1 = *(int *)(this + 4);
        iVar3 = b2Max<int>(*(int *)(iVar3 * 0x24 + *(int *)(this + 4) + 0x20),
                           *(int *)(iVar4 * 0x24 + *(int *)(this + 4) + 0x20));
        *(int *)(iVar1 + iVar2 * 0x24 + 0x20) = iVar3 + 1;
        local_1c = *(int *)(iVar2 * 0x24 + *(int *)(this + 4) + 0x14);
      }
    }
  }
  return;
}

// ---- b2DynamicTree::Balance  @ 0x6c7184
/* b2DynamicTree::Balance(int) */

int __thiscall b2DynamicTree::Balance(b2DynamicTree *this,int param_1)

{
  bool bVar1;
  int iVar2;
  b2TreeNode *this_00;
  int iVar3;
  b2AABB *this_01;
  b2AABB *this_02;
  int iVar4;
  b2AABB *pbVar5;
  b2AABB *pbVar6;
  
  this_00 = (b2TreeNode *)(param_1 * 0x24 + *(int *)(this + 4));
  iVar2 = b2TreeNode::IsLeaf(this_00);
  if ((iVar2 == 0) && (1 < *(int *)(this_00 + 0x20))) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (!bVar1) {
    iVar2 = *(int *)(this_00 + 0x18);
    iVar3 = *(int *)(this_00 + 0x1c);
    this_01 = (b2AABB *)(iVar2 * 0x24 + *(int *)(this + 4));
    this_02 = (b2AABB *)(iVar3 * 0x24 + *(int *)(this + 4));
    if (*(int *)(this_02 + 0x20) - *(int *)(this_01 + 0x20) < 2) {
      if (*(int *)(this_02 + 0x20) - *(int *)(this_01 + 0x20) < -1) {
        iVar3 = *(int *)(this_01 + 0x18);
        iVar4 = *(int *)(this_01 + 0x1c);
        pbVar5 = (b2AABB *)(iVar3 * 0x24 + *(int *)(this + 4));
        pbVar6 = (b2AABB *)(iVar4 * 0x24 + *(int *)(this + 4));
        *(int *)(this_01 + 0x18) = param_1;
        *(undefined4 *)(this_01 + 0x14) = *(undefined4 *)(this_00 + 0x14);
        *(int *)(this_00 + 0x14) = iVar2;
        if (*(int *)(this_01 + 0x14) == -1) {
          *(int *)this = iVar2;
        }
        else if (*(int *)(*(int *)(this_01 + 0x14) * 0x24 + *(int *)(this + 4) + 0x18) == param_1) {
          *(int *)(*(int *)(this_01 + 0x14) * 0x24 + *(int *)(this + 4) + 0x18) = iVar2;
        }
        else {
          *(int *)(*(int *)(this_01 + 0x14) * 0x24 + *(int *)(this + 4) + 0x1c) = iVar2;
        }
        if (*(int *)(pbVar6 + 0x20) < *(int *)(pbVar5 + 0x20)) {
          *(int *)(this_01 + 0x1c) = iVar3;
          *(int *)(this_00 + 0x18) = iVar4;
          *(int *)(pbVar6 + 0x14) = param_1;
          b2AABB::Combine((b2AABB *)this_00,this_02,pbVar6);
          b2AABB::Combine(this_01,(b2AABB *)this_00,pbVar5);
          iVar3 = b2Max<int>(*(int *)(this_02 + 0x20),*(int *)(pbVar6 + 0x20));
          *(int *)(this_00 + 0x20) = iVar3 + 1;
          iVar3 = b2Max<int>(*(int *)(this_00 + 0x20),*(int *)(pbVar5 + 0x20));
          *(int *)(this_01 + 0x20) = iVar3 + 1;
          param_1 = iVar2;
        }
        else {
          *(int *)(this_01 + 0x1c) = iVar4;
          *(int *)(this_00 + 0x18) = iVar3;
          *(int *)(pbVar5 + 0x14) = param_1;
          b2AABB::Combine((b2AABB *)this_00,this_02,pbVar5);
          b2AABB::Combine(this_01,(b2AABB *)this_00,pbVar6);
          iVar3 = b2Max<int>(*(int *)(this_02 + 0x20),*(int *)(pbVar5 + 0x20));
          *(int *)(this_00 + 0x20) = iVar3 + 1;
          iVar3 = b2Max<int>(*(int *)(this_00 + 0x20),*(int *)(pbVar6 + 0x20));
          *(int *)(this_01 + 0x20) = iVar3 + 1;
          param_1 = iVar2;
        }
      }
    }
    else {
      iVar2 = *(int *)(this_02 + 0x18);
      iVar4 = *(int *)(this_02 + 0x1c);
      pbVar5 = (b2AABB *)(iVar2 * 0x24 + *(int *)(this + 4));
      pbVar6 = (b2AABB *)(iVar4 * 0x24 + *(int *)(this + 4));
      *(int *)(this_02 + 0x18) = param_1;
      *(undefined4 *)(this_02 + 0x14) = *(undefined4 *)(this_00 + 0x14);
      *(int *)(this_00 + 0x14) = iVar3;
      if (*(int *)(this_02 + 0x14) == -1) {
        *(int *)this = iVar3;
      }
      else if (*(int *)(*(int *)(this_02 + 0x14) * 0x24 + *(int *)(this + 4) + 0x18) == param_1) {
        *(int *)(*(int *)(this_02 + 0x14) * 0x24 + *(int *)(this + 4) + 0x18) = iVar3;
      }
      else {
        *(int *)(*(int *)(this_02 + 0x14) * 0x24 + *(int *)(this + 4) + 0x1c) = iVar3;
      }
      if (*(int *)(pbVar6 + 0x20) < *(int *)(pbVar5 + 0x20)) {
        *(int *)(this_02 + 0x1c) = iVar2;
        *(int *)(this_00 + 0x1c) = iVar4;
        *(int *)(pbVar6 + 0x14) = param_1;
        b2AABB::Combine((b2AABB *)this_00,this_01,pbVar6);
        b2AABB::Combine(this_02,(b2AABB *)this_00,pbVar5);
        iVar2 = b2Max<int>(*(int *)(this_01 + 0x20),*(int *)(pbVar6 + 0x20));
        *(int *)(this_00 + 0x20) = iVar2 + 1;
        iVar2 = b2Max<int>(*(int *)(this_00 + 0x20),*(int *)(pbVar5 + 0x20));
        *(int *)(this_02 + 0x20) = iVar2 + 1;
        param_1 = iVar3;
      }
      else {
        *(int *)(this_02 + 0x1c) = iVar4;
        *(int *)(this_00 + 0x1c) = iVar2;
        *(int *)(pbVar5 + 0x14) = param_1;
        b2AABB::Combine((b2AABB *)this_00,this_01,pbVar5);
        b2AABB::Combine(this_02,(b2AABB *)this_00,pbVar6);
        iVar2 = b2Max<int>(*(int *)(this_01 + 0x20),*(int *)(pbVar5 + 0x20));
        *(int *)(this_00 + 0x20) = iVar2 + 1;
        iVar2 = b2Max<int>(*(int *)(this_00 + 0x20),*(int *)(pbVar6 + 0x20));
        *(int *)(this_02 + 0x20) = iVar2 + 1;
        param_1 = iVar3;
      }
    }
  }
  return param_1;
}

// ---- b2DynamicTree::GetHeight  @ 0x6c750c
/* b2DynamicTree::GetHeight() const */

undefined4 __thiscall b2DynamicTree::GetHeight(b2DynamicTree *this)

{
  undefined4 uVar1;
  
  if (*(int *)this == -1) {
    uVar1 = 0;
  }
  else {
    uVar1 = *(undefined4 *)(*(int *)this * 0x24 + *(int *)(this + 4) + 0x20);
  }
  return uVar1;
}

// ---- b2DynamicTree::GetAreaRatio  @ 0x6c753c
/* b2DynamicTree::GetAreaRatio() const */

float __thiscall b2DynamicTree::GetAreaRatio(b2DynamicTree *this)

{
  float fVar1;
  float fVar2;
  b2AABB *this_00;
  float local_1c;
  int local_18;
  
  if (*(int *)this == -1) {
    local_1c = 0.0;
  }
  else {
    fVar1 = (float)b2AABB::GetPerimeter((b2AABB *)(*(int *)this * 0x24 + *(int *)(this + 4)));
    local_1c = 0.0;
    for (local_18 = 0; local_18 < *(int *)(this + 0xc); local_18 = local_18 + 1) {
      this_00 = (b2AABB *)(local_18 * 0x24 + *(int *)(this + 4));
      if (-1 < *(int *)(this_00 + 0x20)) {
        fVar2 = (float)b2AABB::GetPerimeter(this_00);
        local_1c = local_1c + fVar2;
      }
    }
    local_1c = local_1c / fVar1;
  }
  return local_1c;
}

// ---- b2DynamicTree::ComputeHeight  @ 0x6c75e0
/* b2DynamicTree::ComputeHeight(int) const */

int __thiscall b2DynamicTree::ComputeHeight(b2DynamicTree *this,int param_1)

{
  int iVar1;
  int iVar2;
  b2TreeNode *this_00;
  
  this_00 = (b2TreeNode *)(param_1 * 0x24 + *(int *)(this + 4));
  iVar1 = b2TreeNode::IsLeaf(this_00);
  if (iVar1 == 0) {
    iVar1 = ComputeHeight(this,*(int *)(this_00 + 0x18));
    iVar2 = ComputeHeight(this,*(int *)(this_00 + 0x1c));
    iVar1 = b2Max<int>(iVar1,iVar2);
    iVar1 = iVar1 + 1;
  }
  else {
    iVar1 = 0;
  }
  return iVar1;
}

// ---- b2DynamicTree::ComputeHeight  @ 0x6c7640
/* b2DynamicTree::ComputeHeight() const */

undefined4 __thiscall b2DynamicTree::ComputeHeight(b2DynamicTree *this)

{
  undefined4 uVar1;
  
  uVar1 = ComputeHeight(this,*(int *)this);
  return uVar1;
}

// ---- b2DynamicTree::ValidateStructure  @ 0x6c7660
/* b2DynamicTree::ValidateStructure(int) const */

void __thiscall b2DynamicTree::ValidateStructure(b2DynamicTree *this,int param_1)

{
  int iVar1;
  b2TreeNode *this_00;
  int iVar2;
  int iVar3;
  
  if (param_1 != -1) {
    this_00 = (b2TreeNode *)(param_1 * 0x24 + *(int *)(this + 4));
    iVar2 = *(int *)(this_00 + 0x18);
    iVar3 = *(int *)(this_00 + 0x1c);
    iVar1 = b2TreeNode::IsLeaf(this_00);
    if (iVar1 == 0) {
      ValidateStructure(this,iVar2);
      ValidateStructure(this,iVar3);
    }
  }
  return;
}

// ---- b2DynamicTree::ValidateMetrics  @ 0x6c76b4
/* b2DynamicTree::ValidateMetrics(int) const */

void __thiscall b2DynamicTree::ValidateMetrics(b2DynamicTree *this,int param_1)

{
  int iVar1;
  b2TreeNode *this_00;
  int iVar2;
  int iVar3;
  b2AABB abStack_18 [20];
  
  if (param_1 != -1) {
    this_00 = (b2TreeNode *)(param_1 * 0x24 + *(int *)(this + 4));
    iVar2 = *(int *)(this_00 + 0x18);
    iVar3 = *(int *)(this_00 + 0x1c);
    iVar1 = b2TreeNode::IsLeaf(this_00);
    if (iVar1 == 0) {
      b2Max<int>(*(int *)(iVar2 * 0x24 + *(int *)(this + 4) + 0x20),
                 *(int *)(iVar3 * 0x24 + *(int *)(this + 4) + 0x20));
      b2AABB::b2AABB(abStack_18);
      b2AABB::Combine(abStack_18,(b2AABB *)(iVar2 * 0x24 + *(int *)(this + 4)),
                      (b2AABB *)(iVar3 * 0x24 + *(int *)(this + 4)));
      ValidateMetrics(this,iVar2);
      ValidateMetrics(this,iVar3);
    }
  }
  return;
}

// ---- b2DynamicTree::Validate  @ 0x6c7774
/* b2DynamicTree::Validate() const */

void __thiscall b2DynamicTree::Validate(b2DynamicTree *this)

{
  int local_c;
  
  ValidateStructure(this,*(int *)this);
  ValidateMetrics(this,*(int *)this);
  for (local_c = *(int *)(this + 0x10); local_c != -1;
      local_c = *(int *)(local_c * 0x24 + *(int *)(this + 4) + 0x14)) {
  }
  return;
}

// ---- b2DynamicTree::GetMaxBalance  @ 0x6c77c8
/* b2DynamicTree::GetMaxBalance() const */

int __thiscall b2DynamicTree::GetMaxBalance(b2DynamicTree *this)

{
  int iVar1;
  int local_20;
  int local_1c;
  
  local_20 = 0;
  for (local_1c = 0; local_1c < *(int *)(this + 0xc); local_1c = local_1c + 1) {
    iVar1 = local_1c * 0x24 + *(int *)(this + 4);
    if (1 < *(int *)(iVar1 + 0x20)) {
      iVar1 = b2Abs<int>(*(int *)(*(int *)(iVar1 + 0x1c) * 0x24 + *(int *)(this + 4) + 0x20) -
                         *(int *)(*(int *)(iVar1 + 0x18) * 0x24 + *(int *)(this + 4) + 0x20));
      local_20 = b2Max<int>(local_20,iVar1);
    }
  }
  return local_20;
}

// ---- b2DynamicTree::RebuildBottomUp  @ 0x6c7858
/* b2DynamicTree::RebuildBottomUp() */

void __thiscall b2DynamicTree::RebuildBottomUp(b2DynamicTree *this)

{
  undefined4 *puVar1;
  float fVar2;
  int iVar3;
  undefined4 *puVar4;
  int iVar5;
  int iVar6;
  b2AABB *pbVar7;
  b2AABB *pbVar8;
  b2AABB *this_00;
  int local_74;
  int local_70;
  float local_6c;
  int local_68;
  int local_64;
  int local_60;
  int local_5c;
  undefined4 local_38;
  undefined4 uStack_34;
  undefined4 uStack_30;
  undefined4 uStack_2c;
  undefined4 local_28;
  undefined4 uStack_24;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  b2AABB abStack_18 [16];
  
  puVar1 = (undefined4 *)b2Alloc(*(int *)(this + 8) << 2);
  local_74 = 0;
  for (local_70 = 0; local_70 < *(int *)(this + 0xc); local_70 = local_70 + 1) {
    if (-1 < *(int *)(local_70 * 0x24 + *(int *)(this + 4) + 0x20)) {
      iVar3 = b2TreeNode::IsLeaf((b2TreeNode *)(local_70 * 0x24 + *(int *)(this + 4)));
      if (iVar3 == 0) {
        FreeNode(this,local_70);
      }
      else {
        *(undefined4 *)(local_70 * 0x24 + *(int *)(this + 4) + 0x14) = 0xffffffff;
        puVar1[local_74] = local_70;
        local_74 = local_74 + 1;
      }
    }
  }
  for (; 1 < local_74; local_74 = local_74 + -1) {
    local_6c = 3.4028235e+38;
    local_68 = -1;
    local_64 = -1;
    for (local_60 = 0; local_60 < local_74; local_60 = local_60 + 1) {
      puVar4 = (undefined4 *)(puVar1[local_60] * 0x24 + *(int *)(this + 4));
      local_38 = *puVar4;
      uStack_34 = puVar4[1];
      uStack_30 = puVar4[2];
      uStack_2c = puVar4[3];
      local_5c = local_60;
      while (local_5c = local_5c + 1, local_5c < local_74) {
        puVar4 = (undefined4 *)(puVar1[local_5c] * 0x24 + *(int *)(this + 4));
        local_28 = *puVar4;
        uStack_24 = puVar4[1];
        uStack_20 = puVar4[2];
        uStack_1c = puVar4[3];
        b2AABB::b2AABB(abStack_18);
        b2AABB::Combine(abStack_18,(b2AABB *)&local_38,(b2AABB *)&local_28);
        fVar2 = (float)b2AABB::GetPerimeter(abStack_18);
        if ((int)((uint)(fVar2 < local_6c) << 0x1f) < 0) {
          local_68 = local_60;
          local_64 = local_5c;
          local_6c = fVar2;
        }
      }
    }
    iVar5 = puVar1[local_68];
    iVar6 = puVar1[local_64];
    pbVar7 = (b2AABB *)(iVar5 * 0x24 + *(int *)(this + 4));
    pbVar8 = (b2AABB *)(iVar6 * 0x24 + *(int *)(this + 4));
    iVar3 = AllocateNode(this);
    this_00 = (b2AABB *)(iVar3 * 0x24 + *(int *)(this + 4));
    *(int *)(this_00 + 0x18) = iVar5;
    *(int *)(this_00 + 0x1c) = iVar6;
    iVar5 = b2Max<int>(*(int *)(pbVar7 + 0x20),*(int *)(pbVar8 + 0x20));
    *(int *)(this_00 + 0x20) = iVar5 + 1;
    b2AABB::Combine(this_00,pbVar7,pbVar8);
    *(undefined4 *)(this_00 + 0x14) = 0xffffffff;
    *(int *)(pbVar7 + 0x14) = iVar3;
    *(int *)(pbVar8 + 0x14) = iVar3;
    puVar1[local_64] = puVar1[local_74 + 0x3fffffff];
    puVar1[local_68] = iVar3;
  }
  *(undefined4 *)this = *puVar1;
  b2Free(puVar1);
  Validate(this);
  return;
}

// ---- b2DynamicTree::GetUserData  @ 0x6d9598
/* b2DynamicTree::GetUserData(int) const */

undefined4 __thiscall b2DynamicTree::GetUserData(b2DynamicTree *this,int param_1)

{
  return *(undefined4 *)(param_1 * 0x24 + *(int *)(this + 4) + 0x10);
}

// ---- b2DynamicTree::GetFatAABB  @ 0x6d95b8
/* b2DynamicTree::GetFatAABB(int) const */

int __thiscall b2DynamicTree::GetFatAABB(b2DynamicTree *this,int param_1)

{
  return param_1 * 0x24 + *(int *)(this + 4);
}

// ---- b2DynamicTree::Query<b2BroadPhase>  @ 0x6d9e2c
/* void b2DynamicTree::Query<b2BroadPhase>(b2BroadPhase*, b2AABB const&) const */

void __thiscall
b2DynamicTree::Query<b2BroadPhase>(b2DynamicTree *this,b2BroadPhase *param_1,b2AABB *param_2)

{
  char cVar1;
  int iVar2;
  int iVar3;
  b2AABB *this_00;
  b2GrowableStack<int,256> abStack_414 [1036];
  
  b2GrowableStack<int,256>::b2GrowableStack(abStack_414);
  b2GrowableStack<int,256>::Push(abStack_414,(int *)this);
  do {
    while( true ) {
      do {
        do {
          iVar3 = b2GrowableStack<int,256>::GetCount(abStack_414);
          if (iVar3 < 1) goto LAB_006d9f12;
          iVar3 = b2GrowableStack<int,256>::Pop(abStack_414);
        } while (iVar3 == -1);
        this_00 = (b2AABB *)(iVar3 * 0x24 + *(int *)(this + 4));
        iVar2 = b2TestOverlap(this_00,param_2);
      } while (iVar2 == 0);
      iVar2 = b2TreeNode::IsLeaf((b2TreeNode *)this_00);
      if (iVar2 != 0) break;
      b2GrowableStack<int,256>::Push(abStack_414,(int *)(this_00 + 0x18));
      b2GrowableStack<int,256>::Push(abStack_414,(int *)(this_00 + 0x1c));
    }
    cVar1 = b2BroadPhase::QueryCallback(param_1,iVar3);
  } while (cVar1 == '\x01');
LAB_006d9f12:
  b2GrowableStack<int,256>::~b2GrowableStack(abStack_414);
  return;
}

// ---- b2DynamicTree::Query<b2WorldQueryWrapper>  @ 0x6de9b8
/* void b2DynamicTree::Query<b2WorldQueryWrapper>(b2WorldQueryWrapper*, b2AABB const&) const */

void __thiscall
b2DynamicTree::Query<b2WorldQueryWrapper>
          (b2DynamicTree *this,b2WorldQueryWrapper *param_1,b2AABB *param_2)

{
  char cVar1;
  int iVar2;
  int iVar3;
  b2AABB *this_00;
  b2GrowableStack<int,256> abStack_414 [1036];
  
  b2GrowableStack<int,256>::b2GrowableStack(abStack_414);
  b2GrowableStack<int,256>::Push(abStack_414,(int *)this);
  do {
    while( true ) {
      do {
        do {
          iVar3 = b2GrowableStack<int,256>::GetCount(abStack_414);
          if (iVar3 < 1) goto LAB_006dea9e;
          iVar3 = b2GrowableStack<int,256>::Pop(abStack_414);
        } while (iVar3 == -1);
        this_00 = (b2AABB *)(iVar3 * 0x24 + *(int *)(this + 4));
        iVar2 = b2TestOverlap(this_00,param_2);
      } while (iVar2 == 0);
      iVar2 = b2TreeNode::IsLeaf((b2TreeNode *)this_00);
      if (iVar2 != 0) break;
      b2GrowableStack<int,256>::Push(abStack_414,(int *)(this_00 + 0x18));
      b2GrowableStack<int,256>::Push(abStack_414,(int *)(this_00 + 0x1c));
    }
    cVar1 = b2WorldQueryWrapper::QueryCallback(param_1,iVar3);
  } while (cVar1 == '\x01');
LAB_006dea9e:
  b2GrowableStack<int,256>::~b2GrowableStack(abStack_414);
  return;
}

// ---- b2DynamicTree::RayCast<b2WorldRayCastWrapper>  @ 0x6deac4
/* void b2DynamicTree::RayCast<b2WorldRayCastWrapper>(b2WorldRayCastWrapper*, b2RayCastInput const&)
   const */

void __thiscall
b2DynamicTree::RayCast<b2WorldRayCastWrapper>
          (b2DynamicTree *this,b2WorldRayCastWrapper *param_1,b2RayCastInput *param_2)

{
  char cVar1;
  float extraout_r0;
  int iVar2;
  float fVar3;
  undefined4 local_4c0;
  undefined4 uStack_4bc;
  b2RayCastInput *local_4b4;
  b2WorldRayCastWrapper *local_4b0;
  b2DynamicTree *local_4ac;
  float local_4a4;
  int local_4a0;
  b2AABB *local_49c;
  float local_498;
  float local_494;
  undefined4 local_490;
  undefined4 uStack_48c;
  undefined4 local_488;
  undefined4 uStack_484;
  b2Vec2 abStack_480 [8];
  b2Vec2 abStack_478 [8];
  b2Vec2 abStack_470 [16];
  b2Vec2 abStack_460 [8];
  b2Vec2 abStack_458 [8];
  b2Vec2 abStack_450 [8];
  b2Vec2 abStack_448 [8];
  undefined4 local_440;
  undefined4 uStack_43c;
  undefined4 local_438;
  undefined4 uStack_434;
  undefined4 local_430;
  undefined4 uStack_42c;
  undefined4 local_428;
  undefined4 uStack_424;
  float local_420;
  b2Vec2 abStack_41c [1036];
  
  local_490 = *(undefined4 *)param_2;
  uStack_48c = *(undefined4 *)(param_2 + 4);
  local_488 = *(undefined4 *)(param_2 + 8);
  uStack_484 = *(undefined4 *)(param_2 + 0xc);
  local_4b4 = param_2;
  local_4b0 = param_1;
  local_4ac = this;
  ::operator-(abStack_480,(b2Vec2 *)&local_488);
  fVar3 = (float)b2Vec2::Normalize(abStack_480);
  b2Cross(fVar3,abStack_478);
  b2Abs(abStack_470);
  local_4a4 = *(float *)(local_4b4 + 0x10);
  b2AABB::b2AABB((b2AABB *)&local_440);
  fVar3 = (float)::operator-((b2Vec2 *)&local_430,(b2Vec2 *)&local_488);
  ::operator*(fVar3,abStack_41c);
  ::operator+(abStack_448,(b2Vec2 *)&local_490);
  b2Min((b2Vec2 *)&local_4c0,(b2Vec2 *)&local_490);
  local_440 = local_4c0;
  uStack_43c = uStack_4bc;
  b2Max((b2Vec2 *)&local_4c0,(b2Vec2 *)&local_490);
  local_438 = local_4c0;
  uStack_434 = uStack_4bc;
  b2GrowableStack<int,256>::b2GrowableStack((b2GrowableStack<int,256> *)abStack_41c);
  b2GrowableStack<int,256>::Push((b2GrowableStack<int,256> *)abStack_41c,(int *)local_4ac);
  while (iVar2 = b2GrowableStack<int,256>::GetCount((b2GrowableStack<int,256> *)abStack_41c),
        0 < iVar2) {
    local_4a0 = b2GrowableStack<int,256>::Pop((b2GrowableStack<int,256> *)abStack_41c);
    if (local_4a0 != -1) {
      local_49c = (b2AABB *)(local_4a0 * 0x24 + *(int *)(local_4ac + 4));
      cVar1 = b2TestOverlap(local_49c,(b2AABB *)&local_440);
      if (cVar1 == '\x01') {
        b2AABB::GetCenter();
        b2AABB::GetExtents();
        ::operator-((b2Vec2 *)&local_430,(b2Vec2 *)&local_490);
        fVar3 = (float)b2Dot(abStack_478,(b2Vec2 *)&local_430);
        b2Abs<float>(fVar3);
        local_498 = (float)b2Dot(abStack_470,abStack_460);
        local_498 = extraout_r0 - local_498;
        if (local_498 <= 0.0) {
          iVar2 = b2TreeNode::IsLeaf((b2TreeNode *)local_49c);
          if (iVar2 == 0) {
            b2GrowableStack<int,256>::Push
                      ((b2GrowableStack<int,256> *)abStack_41c,(int *)(local_49c + 0x18));
            b2GrowableStack<int,256>::Push
                      ((b2GrowableStack<int,256> *)abStack_41c,(int *)(local_49c + 0x1c));
          }
          else {
            b2RayCastInput::b2RayCastInput((b2RayCastInput *)&local_430);
            local_430 = *(undefined4 *)local_4b4;
            uStack_42c = *(undefined4 *)(local_4b4 + 4);
            local_428 = *(undefined4 *)(local_4b4 + 8);
            uStack_424 = *(undefined4 *)(local_4b4 + 0xc);
            local_420 = local_4a4;
            local_494 = (float)b2WorldRayCastWrapper::RayCastCallback
                                         (local_4b0,(b2RayCastInput *)&local_430,local_4a0);
            if (local_494 == 0.0) break;
            if (0.0 < local_494) {
              local_4a4 = local_494;
              fVar3 = (float)::operator-(abStack_450,(b2Vec2 *)&local_488);
              ::operator*(fVar3,abStack_448);
              ::operator+(abStack_458,(b2Vec2 *)&local_490);
              b2Min((b2Vec2 *)&local_4c0,(b2Vec2 *)&local_490);
              local_440 = local_4c0;
              uStack_43c = uStack_4bc;
              b2Max((b2Vec2 *)&local_4c0,(b2Vec2 *)&local_490);
              local_438 = local_4c0;
              uStack_434 = uStack_4bc;
            }
          }
        }
      }
    }
  }
  b2GrowableStack<int,256>::~b2GrowableStack((b2GrowableStack<int,256> *)abStack_41c);
  return;
}
