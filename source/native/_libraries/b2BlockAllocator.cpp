// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 5 functions

// ---- b2BlockAllocator::b2BlockAllocator  @ 0x6c89f0
/* b2BlockAllocator::b2BlockAllocator() */

b2BlockAllocator * __thiscall b2BlockAllocator::b2BlockAllocator(b2BlockAllocator *this)

{
  undefined4 uVar1;
  int local_10;
  int local_c;
  
  *(undefined4 *)(this + 8) = 0x80;
  *(undefined4 *)(this + 4) = 0;
  uVar1 = b2Alloc(*(int *)(this + 8) << 3);
  *(undefined4 *)this = uVar1;
  memset(*(void **)this,0,*(int *)(this + 8) << 3);
  memset(this + 0xc,0,0x38);
  if (s_blockSizeLookupInitialized != '\x01') {
    local_10 = 0;
    for (local_c = 1; local_c < 0x281; local_c = local_c + 1) {
      if (*(int *)(s_blockSizes + local_10 * 4) < local_c) {
        local_10 = local_10 + 1;
        s_blockSizeLookup[local_c] = (char)local_10;
      }
      else {
        s_blockSizeLookup[local_c] = (char)local_10;
      }
    }
    s_blockSizeLookupInitialized = '\x01';
  }
  return this;
}

// ---- b2BlockAllocator::~b2BlockAllocator  @ 0x6c8abc
/* b2BlockAllocator::~b2BlockAllocator() */

b2BlockAllocator * __thiscall b2BlockAllocator::~b2BlockAllocator(b2BlockAllocator *this)

{
  int local_c;
  
  for (local_c = 0; local_c < *(int *)(this + 4); local_c = local_c + 1) {
    b2Free(*(void **)(local_c * 8 + *(int *)this + 4));
  }
  b2Free(*(void **)this);
  return this;
}

// ---- b2BlockAllocator::Allocate  @ 0x6c8b00
/* b2BlockAllocator::Allocate(int) */

undefined4 * __thiscall b2BlockAllocator::Allocate(b2BlockAllocator *this,int param_1)

{
  undefined4 uVar1;
  int iVar2;
  undefined4 *puVar3;
  uint uVar4;
  void *__src;
  int *piVar5;
  int iVar6;
  int local_30;
  
  if (param_1 == 0) {
    puVar3 = (undefined4 *)0x0;
  }
  else if (param_1 < 0x281) {
    uVar4 = (uint)(byte)s_blockSizeLookup[param_1];
    if (*(int *)(this + (uVar4 + 2) * 4 + 4) == 0) {
      if (*(int *)(this + 4) == *(int *)(this + 8)) {
        __src = *(void **)this;
        *(int *)(this + 8) = *(int *)(this + 8) + 0x80;
        uVar1 = b2Alloc(*(int *)(this + 8) << 3);
        *(undefined4 *)this = uVar1;
        memcpy(*(void **)this,__src,*(int *)(this + 4) << 3);
        memset((void *)(*(int *)this + *(int *)(this + 4) * 8),0,0x400);
        b2Free(__src);
      }
      piVar5 = (int *)(*(int *)(this + 4) * 8 + *(int *)this);
      iVar2 = b2Alloc(0x4000);
      piVar5[1] = iVar2;
      iVar6 = *(int *)(s_blockSizes + uVar4 * 4);
      *piVar5 = iVar6;
      iVar2 = __divsi3(0x4000,iVar6);
      for (local_30 = 0; local_30 < iVar2 + -1; local_30 = local_30 + 1) {
        *(int *)(local_30 * iVar6 + piVar5[1]) = iVar6 * (local_30 + 1) + piVar5[1];
      }
      *(undefined4 *)(iVar6 * (iVar2 + -1) + piVar5[1]) = 0;
      *(undefined4 *)(this + (uVar4 + 2) * 4 + 4) = *(undefined4 *)piVar5[1];
      *(int *)(this + 4) = *(int *)(this + 4) + 1;
      puVar3 = (undefined4 *)piVar5[1];
    }
    else {
      puVar3 = *(undefined4 **)(this + (uVar4 + 2) * 4 + 4);
      *(undefined4 *)(this + (uVar4 + 2) * 4 + 4) = *puVar3;
    }
  }
  else {
    puVar3 = (undefined4 *)b2Alloc(param_1);
  }
  return puVar3;
}

// ---- b2BlockAllocator::Free  @ 0x6c8c90
/* b2BlockAllocator::Free(void*, int) */

void __thiscall b2BlockAllocator::Free(b2BlockAllocator *this,void *param_1,int param_2)

{
  byte bVar1;
  
  if (param_2 != 0) {
    if (param_2 < 0x281) {
      bVar1 = s_blockSizeLookup[param_2];
      *(undefined4 *)param_1 = *(undefined4 *)(this + (bVar1 + 2) * 4 + 4);
      *(void **)(this + (bVar1 + 2) * 4 + 4) = param_1;
    }
    else {
      b2Free(param_1);
    }
  }
  return;
}

// ---- b2BlockAllocator::Clear  @ 0x6c8cf4
/* b2BlockAllocator::Clear() */

void __thiscall b2BlockAllocator::Clear(b2BlockAllocator *this)

{
  int local_c;
  
  for (local_c = 0; local_c < *(int *)(this + 4); local_c = local_c + 1) {
    b2Free(*(void **)(local_c * 8 + *(int *)this + 4));
  }
  *(undefined4 *)(this + 4) = 0;
  memset(*(void **)this,0,*(int *)(this + 8) << 3);
  memset(this + 0xc,0,0x38);
  return;
}
