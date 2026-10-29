// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 3 functions

// ---- _JNIEnv::GetMethodID  @ 0x1a5a0
/* _JNIEnv::GetMethodID(_jclass*, char const*, char const*) */

void _JNIEnv::GetMethodID(_jclass *param_1,char *param_2,char *param_3)

{
  (**(code **)(*(int *)param_1 + 0x84))();
  return;
}

// ---- _JNIEnv::CallVoidMethod  @ 0x1a5ac
/* _JNIEnv::CallVoidMethod(_jobject*, _jmethodID*, ...) */

void _JNIEnv::CallVoidMethod(_jobject *param_1,_jmethodID *param_2,...)

{
  undefined4 in_r2;
  undefined4 in_r3;
  undefined4 uStack_4;
  
  uStack_4 = in_r3;
  (**(code **)(*(int *)param_1 + 0xf8))(param_1,param_2,in_r2,&uStack_4,param_1,&uStack_4);
  return;
}

// ---- _JNIEnv::CallStaticObjectMethod  @ 0x1a5ca
/* _JNIEnv::CallStaticObjectMethod(_jclass*, _jmethodID*, ...) */

void _JNIEnv::CallStaticObjectMethod(_jclass *param_1,_jmethodID *param_2,...)

{
  undefined4 in_r2;
  undefined4 in_r3;
  undefined4 uStack_4;
  
  uStack_4 = in_r3;
  (**(code **)(*(int *)param_1 + 0x1cc))(param_1,param_2,in_r2,&uStack_4,param_1,&uStack_4);
  return;
}
