// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 5 functions

// ---- b2GrowableStack<int,256>::b2GrowableStack  @ 0x6d9f84
/* b2GrowableStack<int, 256>::b2GrowableStack() */

b2GrowableStack<int,256> * __thiscall
b2GrowableStack<int,256>::b2GrowableStack(b2GrowableStack<int,256> *this)

{
  *(b2GrowableStack<int,256> **)this = this + 4;
  *(undefined4 *)(this + 0x404) = 0;
  *(undefined4 *)(this + 0x408) = 0x100;
  return this;
}

// ---- b2GrowableStack<int,256>::~b2GrowableStack  @ 0x6d9fac
/* b2GrowableStack<int, 256>::~b2GrowableStack() */

b2GrowableStack<int,256> * __thiscall
b2GrowableStack<int,256>::~b2GrowableStack(b2GrowableStack<int,256> *this)

{
  if (*(b2GrowableStack<int,256> **)this != this + 4) {
    b2Free(*(void **)this);
    *(undefined4 *)this = 0;
  }
  return this;
}

// ---- b2GrowableStack<int,256>::Push  @ 0x6d9fd8
/* b2GrowableStack<int, 256>::Push(int const&) */

void __thiscall b2GrowableStack<int,256>::Push(b2GrowableStack<int,256> *this,int *param_1)

{
  undefined4 uVar1;
  b2GrowableStack<int,256> *__src;
  
  if (*(int *)(this + 0x404) == *(int *)(this + 0x408)) {
    __src = *(b2GrowableStack<int,256> **)this;
    *(int *)(this + 0x408) = *(int *)(this + 0x408) << 1;
    uVar1 = b2Alloc(*(int *)(this + 0x408) << 2);
    *(undefined4 *)this = uVar1;
    memcpy(*(void **)this,__src,*(int *)(this + 0x404) << 2);
    if (this + 4 != __src) {
      b2Free(__src);
    }
  }
  *(int *)(*(int *)(this + 0x404) * 4 + *(int *)this) = *param_1;
  *(int *)(this + 0x404) = *(int *)(this + 0x404) + 1;
  return;
}

// ---- b2GrowableStack<int,256>::GetCount  @ 0x6da068
/* b2GrowableStack<int, 256>::GetCount() */

undefined4 __thiscall b2GrowableStack<int,256>::GetCount(b2GrowableStack<int,256> *this)

{
  return *(undefined4 *)(this + 0x404);
}

// ---- b2GrowableStack<int,256>::Pop  @ 0x6da078
/* b2GrowableStack<int, 256>::Pop() */

undefined4 __thiscall b2GrowableStack<int,256>::Pop(b2GrowableStack<int,256> *this)

{
  *(int *)(this + 0x404) = *(int *)(this + 0x404) + -1;
  return *(undefined4 *)(*(int *)(this + 0x404) * 4 + *(int *)this);
}
