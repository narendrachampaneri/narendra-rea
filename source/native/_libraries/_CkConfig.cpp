// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 2 functions

// ---- _CkConfig::_CkConfig  @ 0x774450
/* _CkConfig::_CkConfig(_JNIEnv*, _jobject*) */

void __thiscall _CkConfig::_CkConfig(_CkConfig *this,_JNIEnv *param_1,_jobject *param_2)

{
  *(_JNIEnv **)this = param_1;
  *(undefined4 *)(this + 4) = 0;
  *(_jobject **)(this + 8) = param_2;
  this[0xc] = (_CkConfig)0x0;
  this[0xd] = (_CkConfig)0x1;
  *(undefined4 *)(this + 0x10) = 0;
  *(undefined4 *)(this + 0x14) = 0;
  *(undefined4 *)(this + 0x18) = 7;
  *(undefined4 *)(this + 0x1c) = 0;
  *(undefined4 *)(this + 0x20) = 0x40a00000;
  *(undefined4 *)(this + 0x24) = 0x43fa0000;
  *(undefined4 *)(this + 0x28) = 0x42c80000;
  *(undefined4 *)(this + 0x2c) = 500;
  *(undefined4 *)(this + 0x30) = 0x3f4ccccd;
  *(undefined4 *)(this + 0x34) = 2;
  return;
}

// ---- _CkConfig::_CkConfig  @ 0x774498
/* _CkConfig::_CkConfig(_JavaVM*, _jobject*) */

void __thiscall _CkConfig::_CkConfig(_CkConfig *this,_JavaVM *param_1,_jobject *param_2)

{
  *(undefined4 *)this = 0;
  *(_JavaVM **)(this + 4) = param_1;
  *(_jobject **)(this + 8) = param_2;
  this[0xc] = (_CkConfig)0x0;
  this[0xd] = (_CkConfig)0x1;
  *(undefined4 *)(this + 0x10) = 0;
  *(undefined4 *)(this + 0x14) = 0;
  *(undefined4 *)(this + 0x18) = 7;
  *(undefined4 *)(this + 0x1c) = 0;
  *(undefined4 *)(this + 0x20) = 0x40a00000;
  *(undefined4 *)(this + 0x24) = 0x43fa0000;
  *(undefined4 *)(this + 0x28) = 0x42c80000;
  *(undefined4 *)(this + 0x2c) = 500;
  *(undefined4 *)(this + 0x30) = 0x3f4ccccd;
  *(undefined4 *)(this + 0x34) = 2;
  return;
}
