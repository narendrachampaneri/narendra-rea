// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 5 functions

// ---- CkMixer::getMaster  @ 0x7744e0
/* CkMixer::getMaster() */

undefined4 CkMixer::getMaster(void)

{
  return Cki::Mixer::s_master;
}

// ---- CkMixer::newMixer  @ 0x7744e4
/* CkMixer::newMixer(char const*, CkMixer*) */

undefined4 CkMixer::newMixer(char *param_1,CkMixer *param_2)

{
  Mixer *this;
  undefined4 uVar1;
  
  this = Cki::Allocatable::operator_new((Allocatable *)0x50,(uint)param_2);
  if (this != (Mixer *)0x0) {
    uVar1 = Cki::Mixer::Mixer(this,param_1,(Mixer *)param_2);
    return uVar1;
  }
  return 0;
}

// ---- CkMixer::find  @ 0x7744e8
/* CkMixer::find(char const*) */

int CkMixer::find(char *param_1)

{
  int iVar1;
  int *piVar2;
  int iVar3;
  
  iVar3 = Cki::Mixer::s_master;
  while (iVar3 != 0) {
    iVar1 = Cki::SoundName::operator==((SoundName *)(iVar3 + 0x15),param_1);
    if (iVar1 != 0) {
      return iVar3;
    }
    iVar1 = *(int *)(iVar3 + 8);
    if ((iVar1 == 0) && (iVar1 = *(int *)(iVar3 + 0x10), iVar1 == 0)) {
      piVar2 = (int *)(iVar3 + 4);
      do {
        piVar2 = (int *)*piVar2;
        if (piVar2 == (int *)0x0) goto LAB_00779676;
      } while (piVar2[3] == 0);
      iVar3 = piVar2[3] + -4;
    }
    else {
      iVar3 = iVar1 + -4;
    }
  }
LAB_00779676:
  Cki::Logger::writef(Cki::g_logger,1,"Couldn\'t find mixer named \"%s\"",param_1);
  return 0;
}

// ---- CkMixer::~CkMixer  @ 0x7796f0
/* CkMixer::~CkMixer() */

CkMixer * __thiscall CkMixer::~CkMixer(CkMixer *this)

{
  return this;
}

// ---- CkMixer::~CkMixer  @ 0x7796f4
/* CkMixer::~CkMixer() */

void __thiscall CkMixer::~CkMixer(CkMixer *this)

{
  if (this == (CkMixer *)0x0) {
    return;
  }
  free(this);
  return;
}
