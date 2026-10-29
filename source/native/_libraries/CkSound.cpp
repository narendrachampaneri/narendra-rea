// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 14 functions

// ---- CkSound::set3dListenerPosition  @ 0x7744ec
/* CkSound::set3dListenerPosition(float, float, float, float, float, float, float, float, float) */

void CkSound::set3dListenerPosition
               (float param_1,float param_2,float param_3,float param_4,float param_5,float param_6,
               float param_7,float param_8,float param_9)

{
  undefined4 in_r0;
  float extraout_r0;
  float extraout_r0_00;
  undefined4 in_r1;
  undefined4 in_r2;
  undefined4 in_r3;
  float fVar1;
  float in_stack_00000000;
  undefined4 in_stack_00000004;
  float in_stack_00000008;
  float in_stack_0000000c;
  float in_stack_00000010;
  
  Cki::Sound::s_3dListenerLookAt._4_4_ = in_stack_00000000;
  Cki::Sound::s_3dListenerLookAt._8_4_ = in_stack_00000004;
  Cki::Sound::s_3dListenerPos._0_4_ = in_r0;
  Cki::Sound::s_3dListenerPos._4_4_ = in_r1;
  Cki::Sound::s_3dListenerPos._8_4_ = in_r2;
  Cki::Sound::s_3dListenerLookAt._0_4_ = in_r3;
  sqrtf(in_stack_00000000);
  if ((int)((uint)(extraout_r0 < 1e-15) << 0x1f) < 0) {
    Cki::Logger::writef(Cki::g_logger,4,"Up vector is too small; ignoring");
    return;
  }
  sqrtf(1e-15);
  fVar1 = 1.0 / (extraout_r0_00 + 1e-37);
  Cki::Sound::s_3dListenerUp._0_4_ = fVar1 * in_stack_00000008;
  Cki::Sound::s_3dListenerUp._4_4_ = fVar1 * in_stack_0000000c;
  Cki::Sound::s_3dListenerUp._8_4_ = fVar1 * in_stack_00000010;
  return;
}

// ---- CkSound::get3dListenerPosition  @ 0x7744f0
/* CkSound::get3dListenerPosition(float&, float&, float&, float&, float&, float&, float&, float&,
   float&) */

void CkSound::get3dListenerPosition
               (float *param_1,float *param_2,float *param_3,float *param_4,float *param_5,
               float *param_6,float *param_7,float *param_8,float *param_9)

{
  *param_1 = (float)Cki::Sound::s_3dListenerPos._0_4_;
  *param_2 = (float)Cki::Sound::s_3dListenerPos._4_4_;
  *param_3 = (float)Cki::Sound::s_3dListenerPos._8_4_;
  *param_4 = (float)Cki::Sound::s_3dListenerLookAt._0_4_;
  *param_5 = (float)Cki::Sound::s_3dListenerLookAt._4_4_;
  *param_6 = (float)Cki::Sound::s_3dListenerLookAt._8_4_;
  *param_7 = (float)Cki::Sound::s_3dListenerUp._0_4_;
  *param_8 = (float)Cki::Sound::s_3dListenerUp._4_4_;
  *param_9 = (float)Cki::Sound::s_3dListenerUp._8_4_;
  return;
}

// ---- CkSound::set3dListenerVelocity  @ 0x7744f4
/* CkSound::set3dListenerVelocity(float, float, float) */

void CkSound::set3dListenerVelocity(float param_1,float param_2,float param_3)

{
  undefined4 in_r0;
  undefined4 in_r1;
  undefined4 in_r2;
  
  Cki::Sound::s_3dListenerVel._0_4_ = in_r0;
  Cki::Sound::s_3dListenerVel._4_4_ = in_r1;
  Cki::Sound::s_3dListenerVel._8_4_ = in_r2;
  return;
}

// ---- CkSound::get3dListenerVelocity  @ 0x7744f8
/* CkSound::get3dListenerVelocity(float&, float&, float&) */

void CkSound::get3dListenerVelocity(float *param_1,float *param_2,float *param_3)

{
  *param_1 = (float)Cki::Sound::s_3dListenerVel._0_4_;
  *param_2 = (float)Cki::Sound::s_3dListenerVel._4_4_;
  *param_3 = (float)Cki::Sound::s_3dListenerVel._8_4_;
  return;
}

// ---- CkSound::set3dAttenuation  @ 0x7744fc
/* CkSound::set3dAttenuation(CkAttenuationMode, float, float, float) */

void CkSound::set3dAttenuation
               (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  Cki::Sound::AttenParams::set((AttenParams *)Cki::Sound::s_3dAtten,param_1,param_2,param_3,param_4)
  ;
  return;
}

// ---- CkSound::get3dAttenuation  @ 0x774500
/* CkSound::get3dAttenuation(CkAttenuationMode&, float&, float&, float&) */

void CkSound::get3dAttenuation
               (CkAttenuationMode *param_1,float *param_2,float *param_3,float *param_4)

{
  *(undefined4 *)param_1 = Cki::Sound::s_3dAtten._0_4_;
  *param_2 = (float)Cki::Sound::s_3dAtten._4_4_;
  *param_3 = (float)Cki::Sound::s_3dAtten._8_4_;
  *param_4 = (float)Cki::Sound::s_3dAtten._12_4_;
  return;
}

// ---- CkSound::set3dSoundSpeed  @ 0x774504
/* CkSound::set3dSoundSpeed(float) */

void CkSound::set3dSoundSpeed(float param_1)

{
  undefined4 in_r0;
  
  Cki::Sound::s_3dSoundSpeed = in_r0;
  return;
}

// ---- CkSound::get3dSoundSpeed  @ 0x774508
/* CkSound::get3dSoundSpeed() */

undefined4 CkSound::get3dSoundSpeed(void)

{
  return Cki::Sound::s_3dSoundSpeed;
}

// ---- CkSound::newBankSound  @ 0x77450c
/* CkSound::newBankSound(CkBank*, int) */

undefined4 CkSound::newBankSound(CkBank *param_1,int param_2)

{
  int iVar1;
  BankSound *this;
  undefined4 uVar2;
  undefined8 uVar3;
  
  if ((param_2 < 0) || (iVar1 = (**(code **)(*(int *)param_1 + 0xc))(param_1), iVar1 <= param_2)) {
    Cki::Logger::writef(Cki::g_logger,4,"Sound index %d out of range",param_2);
  }
  else {
    uVar3 = Cki::Bank::getSample((Bank *)param_1,param_2);
    this = Cki::Allocatable::operator_new((Allocatable *)0x218,(uint)((ulonglong)uVar3 >> 0x20));
    if (this != (BankSound *)0x0) {
      uVar2 = Cki::BankSound::BankSound(this,(Sample *)uVar3,(Bank *)param_1);
      return uVar2;
    }
  }
  return 0;
}

// ---- CkSound::newBankSound  @ 0x774510
/* CkSound::newBankSound(CkBank*, char const*) */

undefined4 CkSound::newBankSound(CkBank *param_1,char *param_2)

{
  BankSound *this;
  undefined4 uVar1;
  undefined8 uVar2;
  CkBank *pCStack_14;
  
  pCStack_14 = param_1;
  if (param_1 == (CkBank *)0x0) {
    uVar2 = Cki::Bank::findSample(param_2,(Bank **)&pCStack_14);
  }
  else {
    uVar2 = Cki::Bank::findSample((Bank *)param_1,param_2);
  }
  if ((Sample *)uVar2 == (Sample *)0x0) {
    Cki::Logger::writef(Cki::g_logger,4,"Could not find sample \"%s\"",param_2);
  }
  else {
    this = Cki::Allocatable::operator_new((Allocatable *)0x218,(uint)((ulonglong)uVar2 >> 0x20));
    if (this != (BankSound *)0x0) {
      uVar1 = Cki::BankSound::BankSound(this,(Sample *)uVar2,(Bank *)pCStack_14);
      return uVar1;
    }
  }
  return 0;
}

// ---- CkSound::newStreamSound  @ 0x774514
/* CkSound::newStreamSound(char const*, CkPathType, int, int, char const*) */

CustomStreamSound *
CkSound::newStreamSound(undefined4 param_1,int param_2,int param_3,int param_4,int param_5)

{
  Path *pPVar1;
  undefined4 uVar2;
  CustomStreamSound *this;
  int iVar3;
  String *this_00;
  System *this_01;
  char *pcVar4;
  bool bVar5;
  undefined8 uVar6;
  String aSStack_674 [16];
  Path aPStack_664 [400];
  Path aPStack_4d4 [400];
  Path aPStack_344 [400];
  Path aPStack_1b4 [400];
  int iStack_24;
  
  iStack_24 = __stack_chk_guard;
  if (Cki::Sound::s_handler != (CustomStreamSound *)0x0) {
    pPVar1 = (Path *)Cki::Path::Path(aPStack_1b4,param_1,param_2);
    this = Cki::Sound::s_handler;
    uVar2 = Cki::Path::getBuffer(pPVar1);
    uVar6 = (*(code *)this)(uVar2,Cki::Sound::s_handlerData);
    if ((CkCustomStream *)uVar6 == (CkCustomStream *)0x0) {
      bVar5 = false;
    }
    else {
      this = Cki::Allocatable::operator_new((Allocatable *)0x270,(uint)((ulonglong)uVar6 >> 0x20));
      if (this == (CustomStreamSound *)0x0) {
        this = (CustomStreamSound *)0x0;
      }
      else {
        Cki::CustomStreamSound::CustomStreamSound(this,(CkCustomStream *)uVar6);
      }
      bVar5 = true;
    }
    Cki::FixedString<384>::~FixedString((FixedString<384> *)aPStack_1b4);
    if (bVar5) goto LAB_0077baea;
  }
  iVar3 = Cki::ReadStream::exists(param_1,param_2);
  if (iVar3 == 0) {
    pPVar1 = aPStack_1b4;
    Cki::Path::Path(pPVar1,param_1,param_2);
    param_4 = Cki::Path::getBuffer(pPVar1);
    iVar3 = -0x112b83;
LAB_0077baa0:
    pcVar4 = (char *)((int)&__DT_PLTGOT + iVar3);
  }
  else {
    iVar3 = Cki::ReadStream::getSize(param_1,param_2);
    bVar5 = param_3 == 0;
    if (-1 < param_3) {
      bVar5 = iVar3 == param_3;
    }
    if (!bVar5 && (-1 < param_3 && param_3 <= iVar3)) {
      if (param_4 < 1) {
        param_4 = iVar3 - param_3;
      }
      if (param_4 <= iVar3 - param_3) {
        if ((0 < param_3) && (param_5 == 0)) {
          pPVar1 = aPStack_664;
          Cki::Path::Path(pPVar1,param_1,param_2);
          param_4 = Cki::Path::getBuffer(pPVar1);
          iVar3 = -0x112b10;
          goto LAB_0077baa0;
        }
        Cki::Path::Path(aPStack_1b4,param_1,param_2);
        if (param_5 == 0) {
          param_5 = Cki::Path::getExtension(aPStack_1b4);
        }
        this_00 = (String *)Cki::String::String(aSStack_674,param_5);
        uVar6 = Cki::String::endsWith(this_00,"cks",true);
        if ((int)uVar6 == 1) {
          this = Cki::Allocatable::operator_new
                           ((Allocatable *)0x2a8,(uint)((ulonglong)uVar6 >> 0x20));
          if (this == (CustomStreamSound *)0x0) goto LAB_0077bc12;
          Cki::CksStreamSound::CksStreamSound
                    ((CksStreamSound *)this,param_1,param_2,param_3,param_4);
        }
        else {
          iVar3 = Cki::String::endsWith(aSStack_674,"ogg",false);
          if (iVar3 == 1) {
            this_01 = (System *)Cki::System::get();
            uVar6 = Cki::System::getConfig(this_01);
            if (*(char *)((int)uVar6 + 0xd) != '\0') {
              this = Cki::Allocatable::operator_new
                               ((Allocatable *)0x548,(uint)((ulonglong)uVar6 >> 0x20));
              if (this == (CustomStreamSound *)0x0) goto LAB_0077bc12;
              Cki::VorbisStreamSound::VorbisStreamSound
                        ((VorbisStreamSound *)this,param_1,param_2,param_3,param_4);
              goto LAB_0077bc14;
            }
          }
          uVar6 = Cki::SystemAndroid::getSdkVersion(Cki::SystemAndroid::s_instance);
          if ((int)uVar6 < 9) {
            Cki::Logger::writef(Cki::g_logger,4,
                                "Only .cks or .ogg streams are currently supported on Android versions prior to 2.3"
                               );
          }
          else {
            this = Cki::Allocatable::operator_new
                             ((Allocatable *)0x100,(uint)((ulonglong)uVar6 >> 0x20));
            if (this != (CustomStreamSound *)0x0) {
              pcVar4 = (char *)Cki::Path::getBuffer(aPStack_1b4);
              Cki::NativeStreamSound::NativeStreamSound
                        ((NativeStreamSound *)this,pcVar4,param_3,param_4,param_2 == 1);
              goto LAB_0077bc14;
            }
          }
LAB_0077bc12:
          this = (CustomStreamSound *)0x0;
        }
LAB_0077bc14:
        Cki::String::~String(aSStack_674);
        Cki::FixedString<384>::~FixedString((FixedString<384> *)aPStack_1b4);
        goto LAB_0077baea;
      }
      pPVar1 = aPStack_4d4;
      Cki::Path::Path(pPVar1,param_1,param_2);
      Cki::Path::getBuffer(pPVar1);
      pcVar4 = "Invalid length %d for stream file \"%s\"";
    }
    else {
      pPVar1 = aPStack_344;
      Cki::Path::Path(pPVar1,param_1,param_2);
      Cki::Path::getBuffer(pPVar1);
      pcVar4 = "Invalid offset %d for stream file \"%s\"";
      param_4 = param_3;
    }
  }
  Cki::Logger::writef(Cki::g_logger,4,pcVar4,param_4);
  Cki::FixedString<384>::~FixedString((FixedString<384> *)pPVar1);
  this = (CustomStreamSound *)0x0;
LAB_0077baea:
  if (__stack_chk_guard == iStack_24) {
    return this;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

// ---- CkSound::setCustomStreamHandler  @ 0x774518
/* CkSound::setCustomStreamHandler(CkCustomStream* (*)(char const*, void*), void*) */

void CkSound::setCustomStreamHandler
               (_func_CkCustomStream_ptr_char_ptr_void_ptr *param_1,void *param_2)

{
  Cki::Sound::s_handler = param_1;
  Cki::Sound::s_handlerData = param_2;
  return;
}

// ---- CkSound::~CkSound  @ 0x77bfa4
/* CkSound::~CkSound() */

CkSound * __thiscall CkSound::~CkSound(CkSound *this)

{
  return this;
}

// ---- CkSound::~CkSound  @ 0x77bfa8
/* CkSound::~CkSound() */

void __thiscall CkSound::~CkSound(CkSound *this)

{
  if (this == (CkSound *)0x0) {
    return;
  }
  free(this);
  return;
}
