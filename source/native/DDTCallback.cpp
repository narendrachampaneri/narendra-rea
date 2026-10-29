// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 6 functions

// ---- DDTCallback::DDTCallback  @ 0x487054
/* DDTCallback::DDTCallback() */

DDTCallback * __thiscall DDTCallback::DDTCallback(DDTCallback *this)

{
  RakNet::FileListTransferCBInterface::FileListTransferCBInterface
            ((FileListTransferCBInterface *)this);
  *(undefined ***)this = &PTR__DDTCallback_1_00922d20;
  return this;
}

// ---- DDTCallback::~DDTCallback  @ 0x487080
/* WARNING: Removing unreachable block (ram,0x004870a2) */
/* DDTCallback::~DDTCallback() */

DDTCallback * __thiscall DDTCallback::~DDTCallback(DDTCallback *this)

{
  *(undefined ***)this = &PTR__DDTCallback_1_00922d20;
  RakNet::FileListTransferCBInterface::~FileListTransferCBInterface
            ((FileListTransferCBInterface *)this);
  return this;
}

// ---- DDTCallback::~DDTCallback  @ 0x4870bc
/* DDTCallback::~DDTCallback() */

DDTCallback * __thiscall DDTCallback::~DDTCallback(DDTCallback *this)

{
  ~DDTCallback(this);
  operator_delete(this);
  return this;
}

// ---- DDTCallback::OnFile  @ 0x4870d8
/* DDTCallback::OnFile(RakNet::FileListTransferCBInterface::OnFileStruct*) */

void __thiscall DDTCallback::OnFile(DDTCallback *this,OnFileStruct *param_1)

{
  size_t sVar1;
  undefined4 uVar2;
  uint uVar3;
  char local_414 [1024];
  int local_14;
  
  local_14 = __stack_chk_guard;
  if (((param_1 == (OnFileStruct *)0xfffffffc) || (*(int *)(param_1 + 0x204) == 0)) ||
     (uVar3 = *(uint *)(this + 4), sVar1 = strlen((char *)(param_1 + 4)), sVar1 <= uVar3)) {
    local_414[0] = '\0';
  }
  else {
    strcpy(local_414,(char *)(this + 8));
    strcat(local_414,(char *)(param_1 + *(int *)(this + 4) + 4));
    WriteFileWithDirectories(local_414,*(char **)(param_1 + 0x204),*(uint *)(param_1 + 0x208));
  }
  uVar2 = (**(code **)(**(int **)(this + 0x208) + 8))(*(undefined4 *)(this + 0x208),param_1);
  if (local_14 != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar2);
  }
  return;
}

// ---- DDTCallback::OnFileProgress  @ 0x4871b0
/* DDTCallback::OnFileProgress(RakNet::FileListTransferCBInterface::FileProgressStruct*) */

void __thiscall DDTCallback::OnFileProgress(DDTCallback *this,FileProgressStruct *param_1)

{
  size_t sVar1;
  uint uVar2;
  char local_414 [1024];
  int local_14;
  
  local_14 = __stack_chk_guard;
  if ((*(int *)param_1 == -4) ||
     (uVar2 = *(uint *)(this + 4), sVar1 = strlen((char *)(*(int *)param_1 + 4)), sVar1 <= uVar2)) {
    local_414[0] = '\0';
  }
  else {
    strcpy(local_414,(char *)(this + 8));
    strcat(local_414,(char *)(*(int *)(this + 4) + *(int *)param_1 + 4));
  }
  (**(code **)(**(int **)(this + 0x208) + 0xc))(*(undefined4 *)(this + 0x208),param_1);
  if (local_14 != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}

// ---- DDTCallback::OnDownloadComplete  @ 0x487264
/* DDTCallback::OnDownloadComplete(RakNet::FileListTransferCBInterface::DownloadCompleteStruct*) */

undefined4 __thiscall
DDTCallback::OnDownloadComplete(DDTCallback *this,DownloadCompleteStruct *param_1)

{
  undefined4 uVar1;
  
  uVar1 = (**(code **)(**(int **)(this + 0x208) + 0x14))(*(undefined4 *)(this + 0x208),param_1);
  return uVar1;
}
