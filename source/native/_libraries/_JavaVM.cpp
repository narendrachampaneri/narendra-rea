// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 3 functions

// ---- _JavaVM::GetEnv  @ 0x5e1270
/* _JavaVM::GetEnv(void**, int) */

undefined4 __thiscall _JavaVM::GetEnv(_JavaVM *this,void **param_1,int param_2)

{
  undefined4 uVar1;
  
  uVar1 = (**(code **)(*(int *)this + 0x18))(this,param_1,param_2);
  return uVar1;
}

// ---- _JavaVM::AttachCurrentThread  @ 0x5e15cc
/* _JavaVM::AttachCurrentThread(_JNIEnv**, void*) */

undefined4 __thiscall _JavaVM::AttachCurrentThread(_JavaVM *this,_JNIEnv **param_1,void *param_2)

{
  undefined4 uVar1;
  
  uVar1 = (**(code **)(*(int *)this + 0x10))(this,param_1,param_2);
  return uVar1;
}

// ---- _JavaVM::DetachCurrentThread  @ 0x5e15f0
/* _JavaVM::DetachCurrentThread() */

undefined4 __thiscall _JavaVM::DetachCurrentThread(_JavaVM *this)

{
  undefined4 uVar1;
  
  uVar1 = (**(code **)(*(int *)this + 0x14))(this);
  return uVar1;
}
