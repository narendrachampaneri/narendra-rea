// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 27 functions

// ---- _JNIEnv::FindClass  @ 0x2eb45c
/* _JNIEnv::FindClass(char const*) */

undefined4 __thiscall _JNIEnv::FindClass(_JNIEnv *this,char *param_1)

{
  undefined4 uVar1;
  
  uVar1 = (**(code **)(*(int *)this + 0x18))(this,param_1);
  return uVar1;
}

// ---- _JNIEnv::NewGlobalRef  @ 0x2eb47c
/* _JNIEnv::NewGlobalRef(_jobject*) */

undefined4 __thiscall _JNIEnv::NewGlobalRef(_JNIEnv *this,_jobject *param_1)

{
  undefined4 uVar1;
  
  uVar1 = (**(code **)(*(int *)this + 0x54))(this,param_1);
  return uVar1;
}

// ---- _JNIEnv::GetObjectClass  @ 0x2eb4b8
/* _JNIEnv::GetObjectClass(_jobject*) */

undefined4 __thiscall _JNIEnv::GetObjectClass(_JNIEnv *this,_jobject *param_1)

{
  undefined4 uVar1;
  
  uVar1 = (**(code **)(*(int *)this + 0x7c))(this,param_1);
  return uVar1;
}

// ---- _JNIEnv::NewStringUTF  @ 0x2eb534
/* _JNIEnv::NewStringUTF(char const*) */

undefined4 __thiscall _JNIEnv::NewStringUTF(_JNIEnv *this,char *param_1)

{
  undefined4 uVar1;
  
  uVar1 = (**(code **)(*(int *)this + 0x29c))(this,param_1);
  return uVar1;
}

// ---- _JNIEnv::CallStaticObjectMethod  @ 0x43b15c
/* _JNIEnv::CallStaticObjectMethod(_jclass*, _jmethodID*, ...) */

undefined4 _JNIEnv::CallStaticObjectMethod(_jclass *param_1,_jmethodID *param_2,...)

{
  undefined4 uVar1;
  undefined4 in_r2;
  undefined4 in_r3;
  undefined4 uStack_4;
  
  uStack_4 = in_r3;
  uVar1 = (**(code **)(*(int *)param_1 + 0x1cc))(param_1,param_2,in_r2,&uStack_4);
  return uVar1;
}

// ---- _JNIEnv::CallStaticBooleanMethod  @ 0x43b190
/* _JNIEnv::CallStaticBooleanMethod(_jclass*, _jmethodID*, ...) */

undefined1 _JNIEnv::CallStaticBooleanMethod(_jclass *param_1,_jmethodID *param_2,...)

{
  undefined1 uVar1;
  undefined4 in_r2;
  undefined4 in_r3;
  undefined4 uStack_4;
  
  uStack_4 = in_r3;
  uVar1 = (**(code **)(*(int *)param_1 + 0x1d8))(param_1,param_2,in_r2,&uStack_4);
  return uVar1;
}

// ---- _JNIEnv::CallStaticVoidMethod  @ 0x43b1c8
/* _JNIEnv::CallStaticVoidMethod(_jclass*, _jmethodID*, ...) */

void _JNIEnv::CallStaticVoidMethod(_jclass *param_1,_jmethodID *param_2,...)

{
  undefined4 in_r2;
  undefined4 in_r3;
  undefined4 uStack_4;
  
  uStack_4 = in_r3;
  (**(code **)(*(int *)param_1 + 0x238))(param_1,param_2,in_r2,&uStack_4);
  return;
}

// ---- _JNIEnv::CallVoidMethod  @ 0x443e3c
/* _JNIEnv::CallVoidMethod(_jobject*, _jmethodID*, ...) */

void _JNIEnv::CallVoidMethod(_jobject *param_1,_jmethodID *param_2,...)

{
  undefined4 in_r2;
  undefined4 in_r3;
  undefined4 uStack_4;
  
  uStack_4 = in_r3;
  (**(code **)(*(int *)param_1 + 0xf8))(param_1,param_2,in_r2,&uStack_4);
  return;
}

// ---- _JNIEnv::GetByteArrayRegion  @ 0x5dfc34
/* _JNIEnv::GetByteArrayRegion(_jbyteArray*, int, int, signed char*) */

void __thiscall
_JNIEnv::GetByteArrayRegion
          (_JNIEnv *this,_jbyteArray *param_1,int param_2,int param_3,signed *param_4)

{
  (**(code **)(*(int *)this + 800))(this,param_1,param_2,param_3,param_4);
  return;
}

// ---- _JNIEnv::CallStaticIntMethod  @ 0x5e0284
/* _JNIEnv::CallStaticIntMethod(_jclass*, _jmethodID*, ...) */

undefined4 _JNIEnv::CallStaticIntMethod(_jclass *param_1,_jmethodID *param_2,...)

{
  undefined4 uVar1;
  undefined4 in_r2;
  undefined4 in_r3;
  undefined4 uStack_4;
  
  uStack_4 = in_r3;
  uVar1 = (**(code **)(*(int *)param_1 + 0x208))(param_1,param_2,in_r2,&uStack_4);
  return uVar1;
}

// ---- _JNIEnv::GetStringUTFChars  @ 0x5e02b8
/* _JNIEnv::GetStringUTFChars(_jstring*, unsigned char*) */

undefined4 __thiscall _JNIEnv::GetStringUTFChars(_JNIEnv *this,_jstring *param_1,uchar *param_2)

{
  undefined4 uVar1;
  
  uVar1 = (**(code **)(*(int *)this + 0x2a4))(this,param_1,param_2);
  return uVar1;
}

// ---- _JNIEnv::ReleaseStringUTFChars  @ 0x5e02dc
/* _JNIEnv::ReleaseStringUTFChars(_jstring*, char const*) */

void __thiscall _JNIEnv::ReleaseStringUTFChars(_JNIEnv *this,_jstring *param_1,char *param_2)

{
  (**(code **)(*(int *)this + 0x2a8))(this,param_1,param_2);
  return;
}

// ---- _JNIEnv::CallStaticFloatMethod  @ 0x5e04c0
/* _JNIEnv::CallStaticFloatMethod(_jclass*, _jmethodID*, ...) */

undefined4 _JNIEnv::CallStaticFloatMethod(_jclass *param_1,_jmethodID *param_2,...)

{
  undefined4 uVar1;
  undefined4 in_r2;
  undefined4 in_r3;
  undefined4 uStack_4;
  
  uStack_4 = in_r3;
  uVar1 = (**(code **)(*(int *)param_1 + 0x220))(param_1,param_2,in_r2,&uStack_4);
  return uVar1;
}

// ---- _JNIEnv::CallStaticDoubleMethod  @ 0x5e04f4
/* _JNIEnv::CallStaticDoubleMethod(_jclass*, _jmethodID*, ...) */

undefined8 _JNIEnv::CallStaticDoubleMethod(_jclass *param_1,_jmethodID *param_2,...)

{
  undefined8 uVar1;
  undefined4 in_r2;
  undefined4 in_r3;
  undefined4 uStack_4;
  
  uStack_4 = in_r3;
  uVar1 = (**(code **)(*(int *)param_1 + 0x22c))(param_1,param_2,in_r2,&uStack_4);
  return uVar1;
}

// ---- _JNIEnv::GetArrayLength  @ 0x5e0530
/* _JNIEnv::GetArrayLength(_jarray*) */

undefined4 __thiscall _JNIEnv::GetArrayLength(_JNIEnv *this,_jarray *param_1)

{
  undefined4 uVar1;
  
  uVar1 = (**(code **)(*(int *)this + 0x2ac))(this,param_1);
  return uVar1;
}

// ---- _JNIEnv::GetByteArrayElements  @ 0x5e0550
/* _JNIEnv::GetByteArrayElements(_jbyteArray*, unsigned char*) */

undefined4 __thiscall
_JNIEnv::GetByteArrayElements(_JNIEnv *this,_jbyteArray *param_1,uchar *param_2)

{
  undefined4 uVar1;
  
  uVar1 = (**(code **)(*(int *)this + 0x2e0))(this,param_1,param_2);
  return uVar1;
}

// ---- _JNIEnv::ReleaseByteArrayElements  @ 0x5e0574
/* _JNIEnv::ReleaseByteArrayElements(_jbyteArray*, signed char*, int) */

void __thiscall
_JNIEnv::ReleaseByteArrayElements(_JNIEnv *this,_jbyteArray *param_1,signed *param_2,int param_3)

{
  (**(code **)(*(int *)this + 0x300))(this,param_1,param_2,param_3);
  return;
}

// ---- _JNIEnv::Throw  @ 0x5e14f0
/* _JNIEnv::Throw(_jthrowable*) */

undefined4 __thiscall _JNIEnv::Throw(_JNIEnv *this,_jthrowable *param_1)

{
  undefined4 uVar1;
  
  uVar1 = (**(code **)(*(int *)this + 0x34))(this,param_1);
  return uVar1;
}

// ---- _JNIEnv::EnsureLocalCapacity  @ 0x5e1510
/* _JNIEnv::EnsureLocalCapacity(int) */

undefined4 __thiscall _JNIEnv::EnsureLocalCapacity(_JNIEnv *this,int param_1)

{
  undefined4 uVar1;
  
  uVar1 = (**(code **)(*(int *)this + 0x68))(this,param_1);
  return uVar1;
}

// ---- _JNIEnv::NewObject  @ 0x5e1530
/* _JNIEnv::NewObject(_jclass*, _jmethodID*, ...) */

undefined4 _JNIEnv::NewObject(_jclass *param_1,_jmethodID *param_2,...)

{
  undefined4 uVar1;
  undefined4 in_r2;
  undefined4 in_r3;
  undefined4 uStack_4;
  
  uStack_4 = in_r3;
  uVar1 = (**(code **)(*(int *)param_1 + 0x74))(param_1,param_2,in_r2,&uStack_4);
  return uVar1;
}

// ---- _JNIEnv::GetObjectArrayElement  @ 0x5e1560
/* _JNIEnv::GetObjectArrayElement(_jobjectArray*, int) */

undefined4 __thiscall
_JNIEnv::GetObjectArrayElement(_JNIEnv *this,_jobjectArray *param_1,int param_2)

{
  undefined4 uVar1;
  
  uVar1 = (**(code **)(*(int *)this + 0x2b4))(this,param_1,param_2);
  return uVar1;
}

// ---- _JNIEnv::NewByteArray  @ 0x5e1584
/* _JNIEnv::NewByteArray(int) */

undefined4 __thiscall _JNIEnv::NewByteArray(_JNIEnv *this,int param_1)

{
  undefined4 uVar1;
  
  uVar1 = (**(code **)(*(int *)this + 0x2c0))(this,param_1);
  return uVar1;
}

// ---- _JNIEnv::SetByteArrayRegion  @ 0x5e15a4
/* _JNIEnv::SetByteArrayRegion(_jbyteArray*, int, int, signed char const*) */

void __thiscall
_JNIEnv::SetByteArrayRegion
          (_JNIEnv *this,_jbyteArray *param_1,int param_2,int param_3,signed *param_4)

{
  (**(code **)(*(int *)this + 0x340))(this,param_1,param_2,param_3,param_4);
  return;
}

// ---- _JNIEnv::GetIntArrayRegion  @ 0x5e362c
/* _JNIEnv::GetIntArrayRegion(_jintArray*, int, int, int*) */

void __thiscall
_JNIEnv::GetIntArrayRegion(_JNIEnv *this,_jintArray *param_1,int param_2,int param_3,int *param_4)

{
  (**(code **)(*(int *)this + 0x32c))(this,param_1,param_2,param_3,param_4);
  return;
}

// ---- _JNIEnv::GetFloatArrayRegion  @ 0x5e3654
/* _JNIEnv::GetFloatArrayRegion(_jfloatArray*, int, int, float*) */

void __thiscall
_JNIEnv::GetFloatArrayRegion
          (_JNIEnv *this,_jfloatArray *param_1,int param_2,int param_3,float *param_4)

{
  (**(code **)(*(int *)this + 0x334))(this,param_1,param_2,param_3,param_4);
  return;
}

// ---- _JNIEnv::CallIntMethod  @ 0x780e04
/* _JNIEnv::CallIntMethod(_jobject*, _jmethodID*, ...) */

void _JNIEnv::CallIntMethod(_jobject *param_1,_jmethodID *param_2,...)

{
  (**(code **)(*(int *)param_1 + 200))();
  return;
}

// ---- _JNIEnv::CallLongMethod  @ 0x7833c8
/* _JNIEnv::CallLongMethod(_jobject*, _jmethodID*, ...) */

void _JNIEnv::CallLongMethod(_jobject *param_1,_jmethodID *param_2,...)

{
  (**(code **)(*(int *)param_1 + 0xd4))();
  return;
}
