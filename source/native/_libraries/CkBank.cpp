// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 6 functions

// ---- CkBank::newBank  @ 0x7743fc
/* CkBank::newBank(char const*, CkPathType, int, int) */

int CkBank::newBank(undefined4 param_1,undefined4 param_2,int param_3,int param_4)

{
  ReadStream *this;
  int iVar1;
  Path *this_00;
  undefined4 uVar2;
  char *pcVar3;
  bool bVar4;
  Path aPStack_684 [400];
  Path aPStack_4f4 [400];
  Path aPStack_364 [400];
  Path aPStack_1d4 [400];
  ReadStream aRStack_44 [40];
  int iStack_1c;
  
  iStack_1c = __stack_chk_guard;
  this = (ReadStream *)Cki::ReadStream::ReadStream(aRStack_44,param_1,param_2);
  iVar1 = Cki::ReadStream::isValid(this);
  if (iVar1 == 1) {
    iVar1 = Cki::ReadStream::getSize(aRStack_44);
    bVar4 = param_3 == 0;
    if (-1 < param_3) {
      bVar4 = iVar1 == param_3;
    }
    if (bVar4 || (-1 >= param_3 || iVar1 < param_3)) {
      this_00 = aPStack_1d4;
      Cki::Path::Path(this_00,param_1,param_2);
      Cki::Path::getBuffer(this_00);
      pcVar3 = "Invalid offset %d for bank file \"%s\"";
      goto LAB_0077536a;
    }
    if (param_4 < 1) {
      param_4 = iVar1 - param_3;
    }
    if (param_4 <= iVar1 - param_3) {
      iVar1 = Cki::Bank::create((BinaryStream *)aRStack_44,param_3,param_4);
      if (iVar1 != 0) goto LAB_00775376;
      this_00 = aPStack_4f4;
      Cki::Path::Path(this_00,param_1,param_2);
      param_3 = Cki::Path::getBuffer(this_00);
      iVar1 = -0x113185;
      goto LAB_00775364;
    }
    this_00 = aPStack_364;
    Cki::Path::Path(this_00,param_1,param_2);
    uVar2 = Cki::Path::getBuffer(this_00);
    Cki::Logger::writef(Cki::g_logger,4,"Invalid length %d for bank file \"%s\"",param_4,uVar2);
  }
  else {
    this_00 = aPStack_684;
    Cki::Path::Path(this_00,param_1,param_2);
    param_3 = Cki::Path::getBuffer(this_00);
    iVar1 = -0x11315a;
LAB_00775364:
    pcVar3 = (char *)((int)&__DT_PLTGOT + iVar1);
LAB_0077536a:
    Cki::Logger::writef(Cki::g_logger,4,pcVar3,param_3);
  }
  Cki::FixedString<384>::~FixedString((FixedString<384> *)this_00);
  iVar1 = 0;
LAB_00775376:
  Cki::ReadStream::~ReadStream(aRStack_44);
  if (__stack_chk_guard == iStack_1c) {
    return iVar1;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

// ---- CkBank::newBankAsync  @ 0x774400
/* CkBank::newBankAsync(char const*, CkPathType, int, int) */

void CkBank::newBankAsync(undefined4 param_1,undefined4 param_2,int param_3,int param_4)

{
  int iVar1;
  Path *this;
  undefined4 uVar2;
  void *pvVar3;
  Bank *pBVar4;
  char *pcVar5;
  bool bVar6;
  undefined8 uVar7;
  Path aPStack_4d4 [400];
  Path aPStack_344 [400];
  Path aPStack_1b4 [400];
  int iStack_24;
  
  iStack_24 = __stack_chk_guard;
  iVar1 = Cki::ReadStream::getSize(param_1);
  if (iVar1 < 0) {
    this = aPStack_4d4;
    Cki::Path::Path(this,param_1,param_2);
    param_3 = Cki::Path::getBuffer(this);
    pcVar5 = "Bank file \"%s\" could not be opened";
LAB_007754fa:
    Cki::Logger::writef(Cki::g_logger,4,pcVar5,param_3);
LAB_0077553a:
    Cki::FixedString<384>::~FixedString((FixedString<384> *)this);
  }
  else {
    bVar6 = param_3 == 0;
    if (-1 < param_3) {
      bVar6 = iVar1 == param_3;
    }
    if (bVar6 || (-1 >= param_3 || iVar1 < param_3)) {
      this = aPStack_1b4;
      Cki::Path::Path(this,param_1,param_2);
      Cki::Path::getBuffer(this);
      pcVar5 = "Invalid offset %d for bank file \"%s\"";
      goto LAB_007754fa;
    }
    if (param_4 < 1) {
      param_4 = iVar1 - param_3;
    }
    if (iVar1 - param_3 < param_4) {
      this = aPStack_344;
      Cki::Path::Path(this,param_1,param_2);
      uVar2 = Cki::Path::getBuffer(this);
      Cki::Logger::writef(Cki::g_logger,4,"Invalid length %d for bank file \"%s\"",param_4,uVar2);
      goto LAB_0077553a;
    }
    uVar7 = Cki::Mem::alloc(param_4,4);
    pvVar3 = (void *)uVar7;
    if (pvVar3 != (void *)0x0) {
      pBVar4 = Cki::Allocatable::operator_new((Allocatable *)0x38,(uint)((ulonglong)uVar7 >> 0x20));
      if (pBVar4 != (Bank *)0x0) {
        uVar2 = Cki::Bank::Bank(pBVar4,pvVar3,param_3,param_4,param_1,param_2);
        goto LAB_00775540;
      }
      Cki::Mem::free(pvVar3);
    }
  }
  uVar2 = 0;
LAB_00775540:
  if (__stack_chk_guard == iStack_24) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar2);
}

// ---- CkBank::newBankFromMemory  @ 0x774404
/* CkBank::newBankFromMemory(void*, int) */

int CkBank::newBankFromMemory(void *param_1,int param_2)

{
  int iVar1;
  
  iVar1 = Cki::Bank::create(param_1,param_2,true);
  if (iVar1 == 0) {
    Cki::Logger::writef(Cki::g_logger,4,"Bank from memory location 0x%p could not be processed",
                        param_1);
  }
  return iVar1;
}

// ---- CkBank::find  @ 0x774408
/* CkBank::find(char const*) */

int * CkBank::find(char *param_1)

{
  int iVar1;
  SoundName *this;
  int *unaff_r5;
  int iVar2;
  bool bVar3;
  
  iVar2 = Cki::Listable<Cki::Bank,0>::s_list._0_4_;
  while( true ) {
    bVar3 = iVar2 == 0;
    if (!bVar3) {
      unaff_r5 = (int *)(iVar2 + -0x10);
      bVar3 = unaff_r5 == (int *)0x0;
    }
    if (bVar3) break;
    iVar1 = (**(code **)*unaff_r5)(unaff_r5);
    if ((iVar1 == 1) && (iVar1 = (**(code **)(*unaff_r5 + 4))(unaff_r5), iVar1 == 0)) {
      this = (SoundName *)Cki::BankData::getName();
      iVar1 = Cki::SoundName::operator==(this,param_1);
      if (iVar1 != 0) {
        return unaff_r5;
      }
    }
    iVar2 = *(int *)(iVar2 + 4);
  }
  Cki::Logger::writef(Cki::g_logger,1,"Could not find bank named \"%s\"",param_1);
  return (int *)0x0;
}

// ---- CkBank::~CkBank  @ 0x775d08
/* CkBank::~CkBank() */

CkBank * __thiscall CkBank::~CkBank(CkBank *this)

{
  return this;
}

// ---- CkBank::~CkBank  @ 0x775d0c
/* CkBank::~CkBank() */

void __thiscall CkBank::~CkBank(CkBank *this)

{
  if (this == (CkBank *)0x0) {
    return;
  }
  free(this);
  return;
}
