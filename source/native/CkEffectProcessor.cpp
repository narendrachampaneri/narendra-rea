// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 4 functions

// ---- CkEffectProcessor::~CkEffectProcessor  @ 0x78a5ac
/* CkEffectProcessor::~CkEffectProcessor() */

CkEffectProcessor * __thiscall CkEffectProcessor::~CkEffectProcessor(CkEffectProcessor *this)

{
  return this;
}

// ---- CkEffectProcessor::getSampleRate  @ 0x78e234
/* CkEffectProcessor::getSampleRate() */

undefined4 CkEffectProcessor::getSampleRate(void)

{
  return Cki::AudioNode::s_sampleRate;
}

// ---- CkEffectProcessor::process  @ 0x78e248
/* CkEffectProcessor::process(int*, int*, int) */

void __thiscall
CkEffectProcessor::process(CkEffectProcessor *this,int *param_1,int *param_2,int param_3)

{
  int iVar1;
  
  iVar1 = (**(code **)(*(int *)this + 0x10))();
  if (iVar1 != 0) {
    return;
  }
  __aeabi_memcpy(param_2,param_1,param_3 << 3);
  return;
}

// ---- CkEffectProcessor::~CkEffectProcessor  @ 0x78e268
/* CkEffectProcessor::~CkEffectProcessor() */

void __thiscall CkEffectProcessor::~CkEffectProcessor(CkEffectProcessor *this)

{
  if (this == (CkEffectProcessor *)0x0) {
    return;
  }
  free(this);
  return;
}
