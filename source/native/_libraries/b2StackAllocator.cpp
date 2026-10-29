// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 5 functions

// ---- b2StackAllocator::b2StackAllocator  @ 0x6c93cc
/* b2StackAllocator::b2StackAllocator() */

b2StackAllocator * __thiscall b2StackAllocator::b2StackAllocator(b2StackAllocator *this)

{
  *(undefined4 *)(this + 0x19000) = 0;
  *(undefined4 *)(this + 0x19004) = 0;
  *(undefined4 *)(this + 0x19008) = 0;
  *(undefined4 *)(this + 0x1918c) = 0;
  return this;
}

// ---- b2StackAllocator::~b2StackAllocator  @ 0x6c9408
/* b2StackAllocator::~b2StackAllocator() */

b2StackAllocator * __thiscall b2StackAllocator::~b2StackAllocator(b2StackAllocator *this)

{
  return this;
}

// ---- b2StackAllocator::Allocate  @ 0x6c9414
/* b2StackAllocator::Allocate(int) */

undefined4 __thiscall b2StackAllocator::Allocate(b2StackAllocator *this,int param_1)

{
  undefined4 uVar1;
  int iVar2;
  b2StackAllocator *pbVar3;
  
  iVar2 = *(int *)(this + 0x1918c);
  pbVar3 = this + iVar2 * 0xc + 0x1900c;
  *(int *)(this + iVar2 * 0xc + 0x19010) = param_1;
  if (param_1 + *(int *)(this + 0x19000) < 0x19001) {
    *(b2StackAllocator **)pbVar3 = this + *(int *)(this + 0x19000);
    this[iVar2 * 0xc + 0x19014] = (b2StackAllocator)0x0;
    *(int *)(this + 0x19000) = *(int *)(this + 0x19000) + param_1;
  }
  else {
    uVar1 = b2Alloc(param_1);
    *(undefined4 *)pbVar3 = uVar1;
    this[iVar2 * 0xc + 0x19014] = (b2StackAllocator)0x1;
  }
  *(int *)(this + 0x19004) = *(int *)(this + 0x19004) + param_1;
  iVar2 = b2Max<int>(*(int *)(this + 0x19008),*(int *)(this + 0x19004));
  *(int *)(this + 0x19008) = iVar2;
  *(int *)(this + 0x1918c) = *(int *)(this + 0x1918c) + 1;
  return *(undefined4 *)pbVar3;
}

// ---- b2StackAllocator::Free  @ 0x6c94fc
/* b2StackAllocator::Free(void*) */

void __thiscall b2StackAllocator::Free(b2StackAllocator *this,void *param_1)

{
  int iVar1;
  
  iVar1 = *(int *)(this + 0x1918c);
  if (this[iVar1 * 0xc + 0x19008] == (b2StackAllocator)0x0) {
    *(int *)(this + 0x19000) = *(int *)(this + 0x19000) - *(int *)(this + iVar1 * 0xc + 0x19004);
  }
  else {
    b2Free(param_1);
  }
  *(int *)(this + 0x19004) = *(int *)(this + 0x19004) - *(int *)(this + iVar1 * 0xc + 0x19004);
  *(int *)(this + 0x1918c) = *(int *)(this + 0x1918c) + -1;
  return;
}

// ---- b2StackAllocator::GetMaxAllocation  @ 0x6c9590
/* b2StackAllocator::GetMaxAllocation() const */

undefined4 __thiscall b2StackAllocator::GetMaxAllocation(b2StackAllocator *this)

{
  return *(undefined4 *)(this + 0x19008);
}
