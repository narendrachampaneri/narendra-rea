// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 1 functions

// ---- WorkerThread<RakNet::FileListTransfer::ThreadData,int>  @ 0x4905bc
/* void* WorkerThread<RakNet::FileListTransfer::ThreadData, int>(void*) */

void * WorkerThread<RakNet::FileListTransfer::ThreadData,int>(void *param_1)

{
  int iVar1;
  char local_5d;
  int local_5c;
  code *local_58;
  undefined4 local_54;
  SimpleMutex *local_50;
  undefined4 local_4c;
  undefined4 uStack_48;
  undefined4 uStack_44;
  undefined4 uStack_40;
  undefined4 local_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  ThreadData aTStack_30 [28];
  int local_14;
  
  local_14 = __stack_chk_guard;
  local_50 = param_1;
  RakNet::FileListTransfer::ThreadData::ThreadData((ThreadData *)&local_4c);
  local_58 = (code *)0x0;
  if (*(int *)(local_50 + 0x10) == 0) {
    if (*(int *)(local_50 + 0x48) == 0) {
      local_54 = 0;
    }
    else {
      local_54 = (**(code **)(**(int **)(local_50 + 0x48) + 8))
                           (*(undefined4 *)(local_50 + 0x48),*(undefined4 *)(local_50 + 0x4c));
    }
  }
  else {
    local_54 = (**(code **)(local_50 + 0x10))();
  }
  RakNet::SimpleMutex::Lock(local_50 + 0x5c);
  *(int *)(local_50 + 0x54) = *(int *)(local_50 + 0x54) + 1;
  RakNet::SimpleMutex::Unlock(local_50 + 0x5c);
  while( true ) {
    if (local_58 == (code *)0x0) {
      RakNet::SignaledEvent::WaitOnEvent((SignaledEvent *)(local_50 + 0x60),1000);
    }
    RakNet::SimpleMutex::Lock(local_50 + 0xc);
    if (local_50[0x50] != (SimpleMutex)0x1) break;
    RakNet::SimpleMutex::Unlock(local_50 + 0xc);
    RakNet::SimpleMutex::Lock(local_50 + 8);
    *(int *)(local_50 + 0x58) = *(int *)(local_50 + 0x58) + 1;
    RakNet::SimpleMutex::Unlock(local_50 + 8);
    local_58 = (code *)0x0;
    RakNet::SimpleMutex::Lock(local_50);
    iVar1 = DataStructures::Queue<int(*)(RakNet::FileListTransfer::ThreadData,bool*,void*)>::Size
                      ((Queue<int(*)(RakNet::FileListTransfer::ThreadData,bool*,void*)> *)
                       (local_50 + 0x18));
    if (iVar1 != 0) {
      local_58 = (code *)DataStructures::
                         Queue<int(*)(RakNet::FileListTransfer::ThreadData,bool*,void*)>::Pop
                                   ((Queue<int(*)(RakNet::FileListTransfer::ThreadData,bool*,void*)>
                                     *)(local_50 + 0x18));
      DataStructures::Queue<RakNet::FileListTransfer::ThreadData>::Pop();
      RakNet::FileListTransfer::ThreadData::operator=((ThreadData *)&local_4c,aTStack_30);
    }
    RakNet::SimpleMutex::Unlock(local_50);
    if ((local_58 != (code *)0x0) &&
       (local_5c = (*local_58)(local_4c,uStack_48,uStack_44,uStack_40,local_3c,uStack_38,uStack_34,
                               &local_5d,local_54), local_5d != '\0')) {
      RakNet::SimpleMutex::Lock(local_50 + 4);
      DataStructures::Queue<int>::Push
                ((Queue<int> *)(local_50 + 0x38),&local_5c,
                 "/Users/hunter/Appsomniacs/DoodleArmy2/cocos2d-x-2.2.5/projects/dam/proj.android-studio/dam/src/main/jni/../../../../../../../projects/dam/PlatformClasses/RakNet/Source/ThreadPool.h"
                 ,0x11c);
      RakNet::SimpleMutex::Unlock(local_50 + 4);
    }
    RakNet::SimpleMutex::Lock(local_50 + 8);
    *(int *)(local_50 + 0x58) = *(int *)(local_50 + 0x58) + -1;
    RakNet::SimpleMutex::Unlock(local_50 + 8);
  }
  RakNet::SimpleMutex::Unlock(local_50 + 0xc);
  RakNet::SimpleMutex::Lock(local_50 + 0x5c);
  *(int *)(local_50 + 0x54) = *(int *)(local_50 + 0x54) + -1;
  RakNet::SimpleMutex::Unlock(local_50 + 0x5c);
  if (*(int *)(local_50 + 0x14) == 0) {
    if (*(int *)(local_50 + 0x48) != 0) {
      (**(code **)(**(int **)(local_50 + 0x48) + 0xc))
                (*(undefined4 *)(local_50 + 0x48),local_54,*(undefined4 *)(local_50 + 0x4c));
    }
  }
  else {
    (**(code **)(local_50 + 0x14))(local_54);
  }
  if (local_14 == __stack_chk_guard) {
    return (void *)0x0;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}
